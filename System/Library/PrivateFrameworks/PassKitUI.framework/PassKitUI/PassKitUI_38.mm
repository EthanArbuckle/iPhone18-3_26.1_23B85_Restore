uint64_t sub_1BD436E38()
{
  swift_getKeyPath();
  sub_1BE048C84();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD45FF0);
  sub_1BD0DE4F4(&qword_1EBD460A8, &qword_1EBD45FF0);
  sub_1BD2D5FE4();
  sub_1BD43801C();
  return sub_1BE0519C4();
}

id sub_1BD436F28@<X0>(void **a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  *a2 = 2;
  *(a2 + 8) = v2;
  return v2;
}

id sub_1BD436F3C@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1;
  v4 = sub_1BE04BD74();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  LOBYTE(v40[0]) = 1;
  v9 = [objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD46040)) init];
  LOBYTE(v45) = 1;
  v39[0] = 1;
  v10 = &v9[qword_1EBD56240];
  v11 = *&v9[qword_1EBD56240];
  *v10 = 0;
  *(v10 + 1) = 0;
  sub_1BD0D4744(v11);
  v12 = &v9[qword_1EBD56248];
  v13 = *&v9[qword_1EBD56248];
  *v12 = 0;
  *(v12 + 1) = 0;
  sub_1BD0D4744(v13);
  HIDWORD(v36) = v45;
  v37 = LOBYTE(v40[0]);
  v38 = v39[0];
  (*(v5 + 104))(v8, *MEMORY[0x1E69B80D8], v4);
  result = PKPassKitBundle();
  if (result)
  {
    v15 = result;
    v16 = sub_1BE04B6F4();
    v18 = v17;

    (*(v5 + 8))(v8, v4);

    v45 = v2[2];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD46048);
    sub_1BE0516A4();
    if (v40[0] >> 62)
    {
      v19 = sub_1BE053704();
    }

    else
    {
      v19 = *((v40[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v19)
    {
      v45 = v2[3];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54350);
      sub_1BE0516A4();
      v20 = LOBYTE(v40[0]) ^ 1;
    }

    else
    {
      v20 = 0;
    }

    v21 = v20 & 1;
    v22 = swift_allocObject();
    v23 = v2[3];
    *(v22 + 3) = v2[2];
    *(v22 + 4) = v23;
    v24 = v2[1];
    *(v22 + 1) = *v2;
    *(v22 + 2) = v24;
    v25 = &v9[qword_1EBD56240];
    v26 = *&v9[qword_1EBD56240];
    *v25 = sub_1BD437F20;
    v25[1] = v22;
    sub_1BD300E80(v2, &v45);
    sub_1BD0D4744(v26);
    v45 = v2[3];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54350);
    sub_1BE0516A4();
    v27 = v40[0];
    v40[0] = v9;
    v40[1] = 0;
    v29 = BYTE4(v36);
    v28 = v37;
    LOBYTE(v41) = BYTE4(v36);
    BYTE1(v41) = v27;
    *(&v41 + 2) = v66;
    WORD3(v41) = v67;
    *(&v41 + 1) = v16;
    *&v42 = v18;
    BYTE8(v42) = v21;
    v30 = v65[0];
    *(&v42 + 9) = v65[0];
    HIDWORD(v42) = *(v65 + 3);
    v43 = 0uLL;
    *&v44[0] = 0;
    BYTE8(v44[0]) = v37;
    BYTE9(v44[0]) = 1;
    HIWORD(v44[0]) = v64;
    *(v44 + 10) = v63;
    *&v44[1] = 0;
    v31 = v38;
    BYTE8(v44[1]) = v38;
    v32 = v41;
    *a1 = v9;
    a1[1] = v32;
    v33 = v42;
    v34 = v43;
    v35 = v44[0];
    *(a1 + 73) = *(v44 + 9);
    a1[3] = v34;
    a1[4] = v35;
    a1[2] = v33;
    v45 = v9;
    v46 = v29;
    v47 = v27;
    v49 = v67;
    v48 = v66;
    v50 = v16;
    v51 = v18;
    v52 = v21;
    *&v53[3] = *(v65 + 3);
    *v53 = v30;
    v54 = 0;
    v55 = 0;
    v56 = 0;
    v57 = v28;
    v58 = 1;
    v60 = v64;
    v59 = v63;
    v61 = 0;
    v62 = v31;
    sub_1BD0DE19C(v40, v39, &qword_1EBD46038);
    return sub_1BD0DE53C(&v45, &qword_1EBD46038);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1BD437364(void *a1)
{
  v16 = a1;
  v1 = *a1;
  if (*a1)
  {
    v18 = MEMORY[0x1E69E7CC0];
    if (v1 >> 62)
    {
      goto LABEL_18;
    }

    for (i = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1BE053704())
    {
      v3 = 0;
      v15 = v1 & 0xC000000000000001;
      while (1)
      {
        if (v15)
        {
          v4 = MEMORY[0x1BFB40900](v3, v1);
        }

        else
        {
          if (v3 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_17;
          }

          v4 = *(v1 + 8 * v3 + 32);
        }

        v5 = v4;
        v6 = v3 + 1;
        if (__OFADD__(v3, 1))
        {
          break;
        }

        v19 = *(v16 + 2);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD46048);
        v7 = sub_1BE0516A4();
        v8 = v17;
        *&v19 = v5;
        MEMORY[0x1EEE9AC00](v7, v9);
        v14[2] = &v19;
        v10 = sub_1BD30114C(sub_1BD437F28, v14, v8);

        if (v10)
        {
          sub_1BE0538C4();
          sub_1BE0538F4();
          sub_1BE053904();
          sub_1BE0538D4();
        }

        else
        {
        }

        ++v3;
        if (v6 == i)
        {
          v11 = v18;
          goto LABEL_20;
        }
      }

      __break(1u);
LABEL_17:
      __break(1u);
LABEL_18:
      ;
    }

    v11 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    v11 = 0;
  }

LABEL_20:
  v12 = v16;
  v19 = *(v16 + 3);
  LOBYTE(v18) = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54350);
  sub_1BE0516B4();
  (v12[2])(v11);
}

uint64_t sub_1BD437574@<X0>(uint64_t a1@<X8>)
{
  v3 = v1[1];
  v11 = *v1;
  v12 = v3;
  v4 = v1[3];
  v13 = v1[2];
  v14 = v4;
  *a1 = sub_1BE04F7B4();
  *(a1 + 8) = 0x4030000000000000;
  *(a1 + 16) = 0;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD45FF8);
  sub_1BD4356B4(&v11, (a1 + *(v5 + 44)));
  v6 = [objc_opt_self() secondarySystemBackgroundColor];
  v7 = sub_1BE0511C4();
  v8 = sub_1BE0501D4();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD46000);
  v10 = a1 + *(result + 36);
  *v10 = v7;
  *(v10 + 8) = v8;
  return result;
}

id sub_1BD43763C@<X0>(int a1@<W0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v78 = a2;
  v3 = a1;
  v5 = a1;
  v77 = sub_1BE04F6E4();
  v76 = *(v77 - 8);
  MEMORY[0x1EEE9AC00](v77, v6);
  v75 = &v66[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = sub_1BE051584();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = &v66[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD460D8);
  MEMORY[0x1EEE9AC00](v13 - 8, v14);
  v74 = &v66[-v15];
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD460E0);
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16, v18);
  v73 = &v66[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v20, v21);
  v72 = &v66[-v22];
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD460E8);
  MEMORY[0x1EEE9AC00](v23 - 8, v24);
  v26 = &v66[-((v25 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v30 = MEMORY[0x1EEE9AC00](v27, v28);
  v31 = &v66[-v29];
  v79 = a3;
  if (v5 == 2)
  {
    v32 = v78;
    (*(v17 + 56))(&v66[-v29], 1, 1, v16, v30);
  }

  else
  {
    v69 = v17;
    v70 = v16;
    v71 = v3;
    v67 = v3 & 1;
    sub_1BE051574();
    (*(v9 + 104))(v12, *MEMORY[0x1E6981630], v8);
    v68 = sub_1BE0515E4();

    (*(v9 + 8))(v12, v8);
    sub_1BE051CD4();
    sub_1BE04E5E4();
    v33 = v90;
    v34 = v91;
    v35 = v92;
    v36 = v93;
    v37 = v94;
    v38 = v95;
    if (v67)
    {
      v39 = sub_1BE0511D4();
    }

    else
    {
      v39 = sub_1BE0513E4();
    }

    v40 = v39;
    KeyPath = swift_getKeyPath();
    v89 = v34;
    v88 = v36;
    v42 = sub_1BE051D84();
    *&v82 = v68;
    *(&v82 + 1) = v33;
    LOBYTE(v83) = v34;
    *(&v83 + 1) = v35;
    LOBYTE(v84) = v36;
    LOBYTE(v3) = v71;
    *(&v84 + 1) = v37;
    *&v85 = v38;
    *(&v85 + 1) = KeyPath;
    *&v86 = v40;
    *(&v86 + 1) = v42;
    v87 = v71 & 1;
    if (v71)
    {
      v43 = v75;
      sub_1BE04F6B4();
      v32 = v78;
      v44 = v77;
    }

    else
    {
      *&v80[0] = MEMORY[0x1E69E7CC0];
      sub_1BD438320();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3E640);
      sub_1BD0DE4F4(&qword_1EBD3E648, &qword_1EBD3E640);
      v43 = v75;
      v44 = v77;
      sub_1BE053664();
      v32 = v78;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD460F8);
    sub_1BD438378();
    v45 = v74;
    sub_1BE050DA4();
    (*(v76 + 8))(v43, v44);
    v80[2] = v84;
    v80[3] = v85;
    v80[4] = v86;
    v81 = v87;
    v80[0] = v82;
    v80[1] = v83;
    sub_1BD0DE53C(v80, &qword_1EBD460F8);
    v46 = sub_1BE0501C4();
    sub_1BE04E1F4();
    v48 = v47;
    v50 = v49;
    v52 = v51;
    v54 = v53;
    v55 = v45;
    v56 = v73;
    sub_1BD0DE204(v55, v73, &qword_1EBD460D8);
    v57 = v70;
    v58 = &v56[*(v70 + 36)];
    *v58 = v46;
    *(v58 + 1) = v48;
    *(v58 + 2) = v50;
    *(v58 + 3) = v52;
    *(v58 + 4) = v54;
    v58[40] = 0;
    v59 = v56;
    v60 = v72;
    sub_1BD0DE204(v59, v72, &qword_1EBD460E0);
    sub_1BD0DE204(v60, v31, &qword_1EBD460E0);
    (*(v69 + 56))(v31, 0, 1, v57);
  }

  result = [v32 descriptor];
  v62 = v79;
  if (result)
  {
    v63 = result;
    sub_1BD0DE19C(v31, v26, &qword_1EBD460E8);
    sub_1BD0DE19C(v26, v62, &qword_1EBD460E8);
    v64 = v62 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD460F0) + 48);
    *v64 = v63;
    *(v64 + 8) = v3 == 2;
    v65 = v63;
    sub_1BD0DE53C(v31, &qword_1EBD460E8);

    return sub_1BD0DE53C(v26, &qword_1EBD460E8);
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1BD437DF0@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 1);
  v4 = *v1;
  *a1 = sub_1BE04F504();
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD460D0);
  return sub_1BD43763C(v4, v3, a1 + *(v5 + 44));
}

uint64_t sub_1BD437E54@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  sub_1BE048C84();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD45FF0);
  sub_1BE051694();
  result = sub_1BE051694();
  *a5 = a1;
  *(a5 + 8) = a2;
  *(a5 + 16) = a3;
  *(a5 + 24) = a4;
  *(a5 + 32) = v11;
  *(a5 + 40) = v12;
  *(a5 + 48) = v11;
  *(a5 + 56) = v12;
  return result;
}

unint64_t sub_1BD437F44()
{
  result = qword_1EBD41880;
  if (!qword_1EBD41880)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EBD41880);
  }

  return result;
}

unint64_t sub_1BD437F98()
{
  result = qword_1EBD46080;
  if (!qword_1EBD46080)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD46078);
    sub_1BD43801C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD46080);
  }

  return result;
}

unint64_t sub_1BD43801C()
{
  result = qword_1EBD46088;
  if (!qword_1EBD46088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD46088);
  }

  return result;
}

unint64_t sub_1BD438078()
{
  result = qword_1EBD46098;
  if (!qword_1EBD46098)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD46090);
    sub_1BD43801C();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD46098);
  }

  return result;
}

uint64_t objectdestroyTm_41()
{

  return swift_deallocObject();
}

unint64_t sub_1BD438220()
{
  result = qword_1EBD460B8;
  if (!qword_1EBD460B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD46000);
    sub_1BD0DE4F4(&qword_1EBD460C0, &qword_1EBD460C8);
    sub_1BD0DE4F4(&qword_1EBD36710, &qword_1EBD491B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD460B8);
  }

  return result;
}

unint64_t sub_1BD438320()
{
  result = qword_1EBD3E638;
  if (!qword_1EBD3E638)
  {
    sub_1BE04F6E4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3E638);
  }

  return result;
}

unint64_t sub_1BD438378()
{
  result = qword_1EBD46100;
  if (!qword_1EBD46100)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD460F8);
    sub_1BD1A3358();
    sub_1BD0DE4F4(&unk_1EBD36780, &unk_1EBD51F60);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD46100);
  }

  return result;
}

void sub_1BD43844C(double a1, long double a2, long double a3, double a4)
{
  v8 = a3;
  if (a3 < a2)
  {
    v9 = log10(a2);
    v10 = __exp10(floor(v9));
    v8 = v10 * ceil(a2 / v10);
    if ((v8 - a1) / v8 < a4)
    {
      v8 = fmax(v10, 100.0) + v8;
    }
  }

  v11 = -a3;
  if (-a3 > a1)
  {
    v12 = fabs(a1);
    v13 = log10(v12);
    v14 = __exp10(floor(v13));
    v15 = v14 * ceil(v12 / v14);
    v11 = fmax(v14, 100.0) + v15;
    if ((v15 + a2) / v15 >= a4)
    {
      v11 = v15;
    }

    if (a1 < 0.0)
    {
      v11 = -v11;
      if (v8 <= 0.0)
      {
        goto LABEL_27;
      }

      goto LABEL_12;
    }

    goto LABEL_11;
  }

  if (a1 < 0.0)
  {
LABEL_11:
    if (v8 <= 0.0)
    {
      goto LABEL_27;
    }

LABEL_12:
    if (v11 < 0.0)
    {
      v16 = fabs(v11);
      if (v16 <= v8 / 3.0)
      {
        v11 = v8 / -3.0;
      }

      else if (v8 <= v16 / 3.0)
      {
        v8 = v16 / 3.0;
      }

      else if (v16 >= v8)
      {
        v8 = -v11;
      }

      else
      {
        v11 = -v8;
      }
    }

    goto LABEL_27;
  }

  v11 = 0.0;
  if (a3 >= a1)
  {
    goto LABEL_27;
  }

  v17 = log10(a2 - a1);
  v18 = fmax(__exp10(floor(v17)), 10.0);
  v8 = v18 * ceil(a2 / v18);
  v11 = v18 * ceil(a1 / v18) - v18;
  if (v11 < 0.0)
  {
    v11 = 0.0;
    goto LABEL_27;
  }

  if (v11 > a1)
  {
    v11 = 0.0;
  }

  if (v8 > 0.0)
  {
    goto LABEL_12;
  }

LABEL_27:
  if (v11 > v8)
  {
    __break(1u);
  }
}

char *sub_1BD43860C(uint64_t a1, double a2, long double a3)
{
  sub_1BD43844C(a2, a3, 10.0, 0.1);
  v9 = v8;
  v11 = v10;
  v12 = v10 - v8;
  if (v12 > 0.0)
  {
    v11 = v12 / a1;
  }

  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v6 = sub_1BD1D8F84(0, 1, 1, MEMORY[0x1E69E7CC0]);
    v4 = *(v6 + 2);
    v7 = *(v6 + 3);
    v3 = v4 + 1;
    if (v4 < v7 >> 1)
    {
      goto LABEL_5;
    }
  }

  v6 = sub_1BD1D8F84((v7 > 1), v3, 1, v6);
LABEL_5:
  *(v6 + 2) = v3;
  *&v6[8 * v4 + 32] = v9 + v11 * 0.0;
  if (a1)
  {
    v13 = v4 + 5;
    v14 = 1;
    do
    {
      v15 = *(v6 + 3);
      if (v13 - 4 >= v15 >> 1)
      {
        v6 = sub_1BD1D8F84((v15 > 1), v13 - 3, 1, v6);
      }

      *(v6 + 2) = v13 - 3;
      *&v6[8 * v13++] = v9 + v11 * v14++;
      --a1;
    }

    while (a1);
  }

  return v6;
}

BOOL sub_1BD438738(uint64_t a1, uint64_t a2)
{
  v2 = 0;
  v3 = *(a2 + 16);
  do
  {
    v4 = v2;
    if (v3 == v2)
    {
      break;
    }

    sub_1BE04AFE4();
    ++v2;
    sub_1BD441624(&unk_1EBD36A30, MEMORY[0x1E69695A8]);
  }

  while ((sub_1BE052334() & 1) == 0);
  return v3 != v4;
}

uint64_t sub_1BD438844@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  v5 = v1;
  sub_1BD441624(&qword_1EBD461C8, _s9ViewModelCMa_1);
  sub_1BE04B594();

  v3 = OBJC_IVAR____TtCV9PassKitUI31FinanceKitTransactionDetailView9ViewModel__transactionDetails;
  swift_beginAccess();
  return sub_1BD0DE19C(v5 + v3, a1, &qword_1EBD461C0);
}

uint64_t sub_1BD43891C(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtCV9PassKitUI31FinanceKitTransactionDetailView9ViewModel__transactionDetails;
  swift_beginAccess();
  sub_1BD442090(a2, a1 + v4);
  return swift_endAccess();
}

uint64_t sub_1BD438988()
{
  swift_getKeyPath();
  sub_1BD441624(&qword_1EBD461C8, _s9ViewModelCMa_1);
  sub_1BE04B594();

  return sub_1BE048964();
}

uint64_t sub_1BD438A34(uint64_t a1, uint64_t a2)
{
  *(a1 + OBJC_IVAR____TtCV9PassKitUI31FinanceKitTransactionDetailView9ViewModel__offersViewModel) = a2;
  sub_1BE048964();
}

uint64_t sub_1BD438A78()
{
  swift_getKeyPath();
  sub_1BD441624(&qword_1EBD461C8, _s9ViewModelCMa_1);
  sub_1BE04B594();

  v1 = *(v0 + OBJC_IVAR____TtCV9PassKitUI31FinanceKitTransactionDetailView9ViewModel__onTransactionDeleted);
  sub_1BD0D44B8(v1);
  return v1;
}

uint64_t sub_1BD438B38@<X0>(uint64_t *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1BD441624(&qword_1EBD461C8, _s9ViewModelCMa_1);
  sub_1BE04B594();

  v4 = *(v3 + OBJC_IVAR____TtCV9PassKitUI31FinanceKitTransactionDetailView9ViewModel__onTransactionDeleted);
  v5 = *(v3 + OBJC_IVAR____TtCV9PassKitUI31FinanceKitTransactionDetailView9ViewModel__onTransactionDeleted + 8);
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_1BD1839E8;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_1BD0D44B8(v4);
}

uint64_t sub_1BD438C30(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  if (*a1)
  {
    v3 = swift_allocObject();
    *(v3 + 16) = v1;
    *(v3 + 24) = v2;
    v4 = sub_1BD1839E0;
  }

  else
  {
    v4 = 0;
  }

  KeyPath = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](KeyPath, v6);
  sub_1BD0D44B8(v1);
  sub_1BD441624(&qword_1EBD461C8, _s9ViewModelCMa_1);
  sub_1BE04B584();
  sub_1BD0D4744(v4);
}

uint64_t sub_1BD438D8C()
{
  swift_getKeyPath();
  sub_1BD441624(&qword_1EBD461C8, _s9ViewModelCMa_1);
  sub_1BE04B594();

  return *(v0 + OBJC_IVAR____TtCV9PassKitUI31FinanceKitTransactionDetailView9ViewModel__actualExcludedFromSpendingSummaryValue);
}

uint64_t sub_1BD438E34(uint64_t result)
{
  v2 = *(v1 + OBJC_IVAR____TtCV9PassKitUI31FinanceKitTransactionDetailView9ViewModel__actualExcludedFromSpendingSummaryValue);
  if (v2 != 2)
  {
    if (result != 2 && ((v2 ^ result) & 1) == 0)
    {
      goto LABEL_7;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath, v4);
    sub_1BD441624(&qword_1EBD461C8, _s9ViewModelCMa_1);
    sub_1BE04B584();
  }

  if (result != 2)
  {
    goto LABEL_6;
  }

LABEL_7:
  *(v1 + OBJC_IVAR____TtCV9PassKitUI31FinanceKitTransactionDetailView9ViewModel__actualExcludedFromSpendingSummaryValue) = result;
  return result;
}

uint64_t sub_1BD438F70(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v31 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD46160);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v32 = &v29 - v7;
  v8 = type metadata accessor for TransactionContext(0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD461C0);
  MEMORY[0x1EEE9AC00](v13 - 8, v14);
  v16 = &v29 - v15;
  v17 = OBJC_IVAR____TtCV9PassKitUI31FinanceKitTransactionDetailView9ViewModel__transactionDetails;
  v18 = _s23TransactionDetailsModelVMa(0);
  v30 = *(*(v18 - 8) + 56);
  v30(v3 + v17, 1, 1, v18);
  *(v3 + OBJC_IVAR____TtCV9PassKitUI31FinanceKitTransactionDetailView9ViewModel__offersViewModel) = 0;
  v19 = (v3 + OBJC_IVAR____TtCV9PassKitUI31FinanceKitTransactionDetailView9ViewModel__onTransactionDeleted);
  *v19 = 0;
  v19[1] = 0;
  *(v3 + OBJC_IVAR____TtCV9PassKitUI31FinanceKitTransactionDetailView9ViewModel__actualExcludedFromSpendingSummaryValue) = 2;
  sub_1BE04B5C4();
  v20 = OBJC_IVAR____TtCV9PassKitUI31FinanceKitTransactionDetailView9ViewModel_transactionContext;
  sub_1BD442100(a1, v3 + OBJC_IVAR____TtCV9PassKitUI31FinanceKitTransactionDetailView9ViewModel_transactionContext);
  (*(v9 + 56))(v3 + v20, 0, 1, v8);
  v21 = OBJC_IVAR____TtCV9PassKitUI31FinanceKitTransactionDetailView9ViewModel_historyToken;
  v22 = sub_1BE048F54();
  v23 = *(v22 - 8);
  v24 = v31;
  (*(v23 + 16))(v3 + v21, v31, v22);
  (*(v23 + 56))(v3 + v21, 0, 1, v22);
  v25 = a1;
  sub_1BD442100(a1, v12);
  v26 = sub_1BE049D24();
  v27 = v32;
  (*(*(v26 - 8) + 56))(v32, 1, 1, v26);
  sub_1BD439370(v12, v27, v16);
  v30(v16, 0, 1, v18);
  swift_getKeyPath();
  v33 = v3;
  v34 = v16;
  v35 = v3;
  sub_1BD441624(&qword_1EBD461C8, _s9ViewModelCMa_1);
  sub_1BE04B584();

  (*(v23 + 8))(v24, v22);
  sub_1BD442180(v25);
  sub_1BD0DE53C(v16, &qword_1EBD461C0);
  return v3;
}

void sub_1BD439370(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v109 = a2;
  v5 = sub_1BE049B04();
  v107 = *(v5 - 8);
  v108 = v5;
  MEMORY[0x1EEE9AC00](v5, v6);
  v104 = &v88 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v103 = sub_1BE049904();
  v101 = *(v103 - 8);
  MEMORY[0x1EEE9AC00](v103, v8);
  v99 = &v88 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD46160);
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v111 = &v88 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F7C0);
  MEMORY[0x1EEE9AC00](v13 - 8, v14);
  v110 = &v88 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3BCA0);
  MEMORY[0x1EEE9AC00](v16 - 8, v17);
  v118 = &v88 - v18;
  v19 = sub_1BE049B44();
  v105 = *(v19 - 8);
  v106 = v19;
  MEMORY[0x1EEE9AC00](v19, v20);
  v121 = &v88 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v102 = sub_1BE04A974();
  v100 = *(v102 - 8);
  MEMORY[0x1EEE9AC00](v102, v22);
  v120 = &v88 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v98 = sub_1BE0493F4();
  v97 = *(v98 - 8);
  MEMORY[0x1EEE9AC00](v98, v24);
  v119 = &v88 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD461D0);
  MEMORY[0x1EEE9AC00](v26 - 8, v27);
  v117 = &v88 - v28;
  v29 = sub_1BE04AB24();
  v115 = *(v29 - 8);
  v116 = v29;
  MEMORY[0x1EEE9AC00](v29, v30);
  v32 = &v88 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = sub_1BE04AB54();
  v113 = *(v33 - 8);
  v114 = v33;
  MEMORY[0x1EEE9AC00](v33, v34);
  v36 = &v88 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v112 = sub_1BE04AF64();
  v37 = *(v112 - 8);
  MEMORY[0x1EEE9AC00](v112, v38);
  v40 = &v88 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = sub_1BE049A94();
  v43 = MEMORY[0x1EEE9AC00](v41, v42);
  v45 = &v88 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  v93 = v46;
  v47 = *(v46 + 16);
  v94 = v48;
  v47(v45, a1, v43);
  sub_1BE049974();
  sub_1BE04AB14();
  v49 = type metadata accessor for TransactionContext(0);
  v122 = a1;
  if (sub_1BE049164())
  {
    sub_1BE04AB14();
  }

  else
  {
    sub_1BE04AB04();
  }

  v96 = sub_1BE04AF24();
  v95 = v50;
  (*(v115 + 8))(v32, v116);
  (v113[1])(v36, v114);
  (*(v37 + 8))(v40, v112);
  v112 = v122 + *(v49 + 28);
  sub_1BD736290(v112);
  v51 = sub_1BE049174();
  v53 = v52;
  v54 = sub_1BE049574();
  v114 = v55;
  v115 = v54;
  v56 = v117;
  sub_1BE049A54();
  v57 = sub_1BE04A054();
  v58 = *(v57 - 8);
  v59 = (*(v58 + 48))(v56, 1, v57);
  v116 = v53;
  if (v59 == 1)
  {
    sub_1BD0DE53C(v56, &qword_1EBD461D0);
    v113 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    v113 = sub_1BD44166C(v51, v53);
    (*(v58 + 8))(v56, v57);
  }

  v117 = v51;
  sub_1BE0499A4();
  sub_1BD7271C4();
  sub_1BE0499E4();
  v60 = sub_1BE052404();
  v61 = PKMerchantFormattedDisplayName();

  if (v61)
  {

    v92 = sub_1BE052434();
    v91 = v62;

    v90 = sub_1BE049964();
    sub_1BE0499F4();
    v63 = _s23TransactionDetailsModelVMa(0);
    sub_1BE049A14();
    v64 = v110;
    sub_1BD0DE19C(v112, v110, &qword_1EBD3F7C0);
    v65 = v109;
    v66 = v111;
    sub_1BD0DE19C(v109, v111, &qword_1EBD46160);
    v67 = v99;
    sub_1BE049A34();
    v112 = sub_1BD441A80();
    v89 = v68;
    (*(v101 + 8))(v67, v103);
    v69 = v104;
    sub_1BE0499D4();
    sub_1BE049AB4();
    (*(v107 + 8))(v69, v108);
    v70 = v122;
    LODWORD(v108) = sub_1BD736680();
    sub_1BD0DE53C(v65, &qword_1EBD46160);
    sub_1BD442180(v70);
    (*(v93 + 8))(v45, v94);
    v72 = v63[11];
    v71 = v63[12];
    v73 = v97;
    v74 = v98;
    (*(v97 + 56))(&a3[v71], 1, 1, v98);
    v75 = v63[15];
    v76 = sub_1BE0491B4();
    (*(*(v76 - 8) + 56))(&a3[v75], 1, 1, v76);
    v77 = v63[19];
    v78 = sub_1BE049D24();
    (*(*(v78 - 8) + 56))(&a3[v77], 1, 1, v78);
    v79 = v114;
    *a3 = v115;
    *(a3 + 1) = v79;
    *(a3 + 2) = v113;
    (*(v73 + 32))(&a3[v63[6]], v119, v74);
    (*(v100 + 32))(&a3[v63[7]], v120, v102);
    (*(v105 + 32))(&a3[v63[8]], v121, v106);
    v80 = &a3[v63[10]];
    v81 = v95;
    *v80 = v96;
    v80[1] = v81;
    v82 = &a3[v63[9]];
    v83 = v91;
    *v82 = v92;
    v82[1] = v83;
    *&a3[v72] = v90;
    sub_1BD2C7C4C(v118, &a3[v71], &qword_1EBD3BCA0);
    v84 = &a3[v63[14]];
    v85 = v116;
    *v84 = v117;
    *(v84 + 1) = v85;
    sub_1BD2C7C4C(v64, &a3[v75], &qword_1EBD3F7C0);
    sub_1BD2C7C4C(v66, &a3[v77], &qword_1EBD46160);
    v86 = &a3[v63[16]];
    v87 = v89;
    *v86 = v112;
    *(v86 + 1) = v87;
    a3[v63[17]] = v108 & 1;
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1BD439EEC()
{
  v1[4] = v0;
  v2 = sub_1BE04D214();
  v1[5] = v2;
  v1[6] = *(v2 - 8);
  v1[7] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F790);
  v1[8] = swift_task_alloc();
  v3 = type metadata accessor for TransactionContext(0);
  v1[9] = v3;
  v1[10] = *(v3 - 8);
  v1[11] = swift_task_alloc();
  v1[12] = swift_task_alloc();
  sub_1BE0528A4();
  v1[13] = sub_1BE052894();
  v5 = sub_1BE052844();
  v1[14] = v5;
  v1[15] = v4;

  return MEMORY[0x1EEE6DFA0](sub_1BD43A080, v5, v4);
}

uint64_t sub_1BD43A080()
{
  v1 = v0[9];
  v2 = v0[10];
  v3 = v0[8];
  sub_1BD0DE19C(v0[4] + OBJC_IVAR____TtCV9PassKitUI31FinanceKitTransactionDetailView9ViewModel_transactionContext, v3, &qword_1EBD3F790);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    v4 = v0[8];

    sub_1BD0DE53C(v4, &qword_1EBD3F790);
    sub_1BE04D114();
    v5 = sub_1BE04D204();
    v6 = sub_1BE052C54();
    v7 = os_log_type_enabled(v5, v6);
    v9 = v0[6];
    v8 = v0[7];
    v10 = v0[5];
    if (v7)
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_1BD026000, v5, v6, "Missing properties, could not load transactions", v11, 2u);
      MEMORY[0x1BFB45F20](v11, -1, -1);
    }

    (*(v9 + 8))(v8, v10);

    v12 = v0[1];

    return v12();
  }

  else
  {
    v14 = v0[11];
    v15 = v0[12];
    v16 = v0[4];
    sub_1BD4423F4(v0[8], v15, type metadata accessor for TransactionContext);
    sub_1BD442100(v15, v14);
    type metadata accessor for FinanceKitTransactionOffersView.ViewModel();
    swift_allocObject();
    v17 = sub_1BD5C1270(v14);
    swift_getKeyPath();
    v18 = swift_task_alloc();
    *(v18 + 16) = v16;
    *(v18 + 24) = v17;
    v0[2] = v16;
    sub_1BD441624(&qword_1EBD461C8, _s9ViewModelCMa_1);
    sub_1BE04B584();

    swift_getKeyPath();
    v0[3] = v16;
    sub_1BE04B594();

    v19 = *(v16 + OBJC_IVAR____TtCV9PassKitUI31FinanceKitTransactionDetailView9ViewModel__offersViewModel);
    v0[16] = v19;
    if (v19)
    {
      sub_1BE048964();
      v20 = swift_task_alloc();
      v0[17] = v20;
      *v20 = v0;
      v20[1] = sub_1BD43A484;

      return sub_1BD5C136C();
    }

    else
    {
      v21 = swift_task_alloc();
      v0[19] = v21;
      *v21 = v0;
      v21[1] = sub_1BD43A5FC;

      return sub_1BD43A918();
    }
  }
}

uint64_t sub_1BD43A484()
{
  v2 = *v1;
  v2[18] = v0;

  if (v0)
  {

    v3 = v2[14];
    v4 = v2[15];

    return MEMORY[0x1EEE6DFA0](sub_1BD43A7D0, v3, v4);
  }

  else
  {

    v5 = swift_task_alloc();
    v2[19] = v5;
    *v5 = v2;
    v5[1] = sub_1BD43A5FC;

    return sub_1BD43A918();
  }
}

uint64_t sub_1BD43A5FC()
{
  v2 = *v1;
  *(*v1 + 160) = v0;

  v3 = *(v2 + 120);
  v4 = *(v2 + 112);
  if (v0)
  {
    v5 = sub_1BD43A874;
  }

  else
  {
    v5 = sub_1BD43A738;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, v3);
}

uint64_t sub_1BD43A738()
{
  v1 = *(v0 + 96);

  sub_1BD442180(v1);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1BD43A7D0()
{
  v1 = *(v0 + 96);

  sub_1BD442180(v1);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1BD43A874()
{
  v1 = *(v0 + 96);

  sub_1BD442180(v1);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1BD43A918()
{
  v1[5] = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD461E0);
  v1[6] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD46160);
  v1[7] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F7C0);
  v1[8] = swift_task_alloc();
  v2 = sub_1BE049184();
  v1[9] = v2;
  v1[10] = *(v2 - 8);
  v1[11] = swift_task_alloc();
  v3 = sub_1BE0495A4();
  v1[12] = v3;
  v1[13] = *(v3 - 8);
  v1[14] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD461C0);
  v1[15] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD461E8);
  v1[16] = swift_task_alloc();
  v1[17] = swift_task_alloc();
  v1[18] = swift_task_alloc();
  v1[19] = swift_task_alloc();
  v4 = sub_1BE049A94();
  v1[20] = v4;
  v1[21] = *(v4 - 8);
  v1[22] = swift_task_alloc();
  v1[23] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F7D8);
  v1[24] = swift_task_alloc();
  v1[25] = swift_task_alloc();
  v5 = sub_1BE04AFE4();
  v1[26] = v5;
  v1[27] = *(v5 - 8);
  v1[28] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F7B0);
  v1[29] = v6;
  v1[30] = *(v6 - 8);
  v1[31] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F7E0);
  v1[32] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39980);
  v1[33] = swift_task_alloc();
  v7 = sub_1BE049E74();
  v1[34] = v7;
  v1[35] = *(v7 - 8);
  v1[36] = swift_task_alloc();
  v8 = sub_1BE04D214();
  v1[37] = v8;
  v1[38] = *(v8 - 8);
  v1[39] = swift_task_alloc();
  v1[40] = swift_task_alloc();
  v1[41] = swift_task_alloc();
  v1[42] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F790);
  v1[43] = swift_task_alloc();
  v9 = type metadata accessor for TransactionContext(0);
  v1[44] = v9;
  v1[45] = *(v9 - 8);
  v1[46] = swift_task_alloc();
  v1[47] = swift_task_alloc();
  v1[48] = sub_1BE0528A4();
  v1[49] = sub_1BE052894();
  v11 = sub_1BE052844();
  v1[50] = v11;
  v1[51] = v10;

  return MEMORY[0x1EEE6DFA0](sub_1BD43AF04, v11, v10);
}

uint64_t sub_1BD43AF04()
{
  v1 = v0[44];
  v2 = v0[45];
  v3 = v0[43];
  sub_1BD0DE19C(v0[5] + OBJC_IVAR____TtCV9PassKitUI31FinanceKitTransactionDetailView9ViewModel_transactionContext, v3, &qword_1EBD3F790);
  v4 = (*(v2 + 48))(v3, 1, v1);
  v5 = v0[43];
  if (v4 == 1)
  {

    sub_1BD0DE53C(v5, &qword_1EBD3F790);
    sub_1BE04D114();
    v6 = sub_1BE04D204();
    v7 = sub_1BE052C54();
    v8 = os_log_type_enabled(v6, v7);
    v10 = v0[38];
    v9 = v0[39];
    v11 = v0[37];
    if (v8)
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_1BD026000, v6, v7, "Missing properties, could not observe transactions", v12, 2u);
      MEMORY[0x1BFB45F20](v12, -1, -1);
    }

    (*(v10 + 8))(v9, v11);

    v13 = v0[1];

    return v13();
  }

  else
  {
    sub_1BD4423F4(v0[43], v0[47], type metadata accessor for TransactionContext);
    v15 = swift_task_alloc();
    v0[52] = v15;
    *v15 = v0;
    v15[1] = sub_1BD43B264;
    v16 = v0[47];

    return sub_1BD43E308(v16);
  }
}

uint64_t sub_1BD43B264()
{
  v1 = *v0;

  v2 = *(v1 + 408);
  v3 = *(v1 + 400);

  return MEMORY[0x1EEE6DFA0](sub_1BD43B384, v3, v2);
}

uint64_t sub_1BD43B384()
{
  sub_1BD43D5E0();
  sub_1BE04D114();
  v1 = sub_1BE04D204();
  v2 = sub_1BE052C54();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_1BD026000, v1, v2, "Observing transactions", v3, 2u);
    MEMORY[0x1BFB45F20](v3, -1, -1);
  }

  v4 = *(v0 + 352);
  v5 = *(v0 + 336);
  v6 = *(v0 + 296);
  v7 = *(v0 + 304);
  v8 = *(v0 + 264);
  v9 = *(v0 + 208);
  v10 = *(v0 + 216);

  v11 = *(v7 + 8);
  *(v0 + 424) = v11;
  v11(v5, v6);
  sub_1BE0490F4();
  sub_1BE0490B4();
  *(v0 + 512) = *(v4 + 20);
  sub_1BE049584();
  (*(v10 + 56))(v8, 0, 1, v9);
  sub_1BE048FD4();
  sub_1BD0DE53C(*(v0 + 264), &qword_1EBD39980);

  sub_1BE049E64();

  v12 = OBJC_IVAR____TtCV9PassKitUI31FinanceKitTransactionDetailView9ViewModel__onTransactionDeleted;
  *(v0 + 432) = OBJC_IVAR____TtCV9PassKitUI31FinanceKitTransactionDetailView9ViewModel___observationRegistrar;
  *(v0 + 440) = v12;
  *(v0 + 448) = sub_1BE052894();
  v13 = sub_1BD441624(&qword_1EBD3F7E8, MEMORY[0x1E6967C80]);
  v14 = swift_task_alloc();
  *(v0 + 456) = v14;
  *v14 = v0;
  v14[1] = sub_1BD43B7B4;
  v15 = *(v0 + 272);
  v16 = *(v0 + 256);

  return MEMORY[0x1EEE6D8C8](v16, v15, v13);
}

uint64_t sub_1BD43B7B4()
{
  v2 = *v1;
  *(*v1 + 464) = v0;

  v3 = *(v2 + 448);
  if (v0)
  {
    if (v3)
    {
      swift_getObjectType();
      v4 = sub_1BE052844();
      v6 = v5;
    }

    else
    {
      v4 = 0;
      v6 = 0;
    }

    v7 = sub_1BD43C0A0;
  }

  else
  {
    if (v3)
    {
      swift_getObjectType();
      v4 = sub_1BE052844();
      v6 = v8;
    }

    else
    {
      v4 = 0;
      v6 = 0;
    }

    v7 = sub_1BD43B94C;
  }

  return MEMORY[0x1EEE6DFA0](v7, v4, v6);
}

uint64_t sub_1BD43B94C()
{

  v1 = *(v0 + 400);
  v2 = *(v0 + 408);

  return MEMORY[0x1EEE6DFA0](sub_1BD43B9B0, v1, v2);
}

uint64_t sub_1BD43B9B0()
{
  v1 = v0[32];
  v2 = v0[29];
  v3 = v0[30];
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    v4 = v0[47];
    (*(v0[35] + 8))(v0[36], v0[34]);

    sub_1BD442180(v4);

    v5 = v0[1];

    return v5();
  }

  else
  {
    v8 = v0[27];
    v7 = v0[28];
    v9 = v0[26];
    (*(v3 + 32))(v0[31], v1, v2);
    v10 = sub_1BE0490C4();
    sub_1BE049A14();
    v11 = sub_1BD438738(v7, v10);

    (*(v8 + 8))(v7, v9);
    if (v11)
    {
      sub_1BE04D114();
      v12 = sub_1BE04D204();
      v13 = sub_1BE052C54();
      if (os_log_type_enabled(v12, v13))
      {
        v14 = swift_slowAlloc();
        *v14 = 0;
        _os_log_impl(&dword_1BD026000, v12, v13, "Transaction deleted", v14, 2u);
        MEMORY[0x1BFB45F20](v14, -1, -1);
      }

      v15 = v0[55];
      v16 = v0[53];
      v17 = v0[41];
      v18 = v0[37];
      v19 = v0[5];

      v16(v17, v18);
      swift_getKeyPath();
      v0[4] = v19;
      sub_1BD441624(&qword_1EBD461C8, _s9ViewModelCMa_1);
      sub_1BE04B594();

      v20 = *(v19 + v15);
      if (v20)
      {
        v21 = sub_1BE048964();
        v20(v21);
        sub_1BD0D4744(v20);
      }
    }

    v22 = v0[47];
    v24 = v0[24];
    v23 = v0[25];
    v25 = v0[20];
    v26 = v0[21];
    v27 = sub_1BE0490D4();
    *(swift_task_alloc() + 16) = v22;
    sub_1BD1CED84(sub_1BD44245C, v27, v23);

    sub_1BD0DE19C(v23, v24, &qword_1EBD3F7D8);
    if ((*(v26 + 48))(v24, 1, v25) == 1)
    {
      v29 = v0[30];
      v28 = v0[31];
      v30 = v0[29];
      v31 = v0[24];
      sub_1BD0DE53C(v0[25], &qword_1EBD3F7D8);
      (*(v29 + 8))(v28, v30);
      sub_1BD0DE53C(v31, &qword_1EBD3F7D8);
      v0[56] = sub_1BE052894();
      v32 = sub_1BD441624(&qword_1EBD3F7E8, MEMORY[0x1E6967C80]);
      v33 = swift_task_alloc();
      v0[57] = v33;
      *v33 = v0;
      v33[1] = sub_1BD43B7B4;
      v34 = v0[34];
      v35 = v0[32];

      return MEMORY[0x1EEE6D8C8](v35, v34, v32);
    }

    else
    {
      v36 = v0[23];
      v37 = v0[24];
      v38 = v0[20];
      v39 = v0[21];
      v40 = *(v39 + 32);
      v0[59] = v40;
      v0[60] = (v39 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
      v40(v36, v37, v38);
      sub_1BE04D114();
      v41 = sub_1BE04D204();
      v42 = sub_1BE052C54();
      if (os_log_type_enabled(v41, v42))
      {
        v43 = swift_slowAlloc();
        *v43 = 0;
        _os_log_impl(&dword_1BD026000, v41, v42, "Transaction updated, updating view", v43, 2u);
        MEMORY[0x1BFB45F20](v43, -1, -1);
      }

      v44 = v0[53];
      v45 = v0[40];
      v46 = v0[37];
      v47 = v0[19];

      v44(v45, v46);
      v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD461F0);
      v0[61] = v48;
      v49 = *(v48 + 48);
      v50 = *(v48 + 64);
      v51 = swift_task_alloc();
      v0[62] = v51;
      *v51 = v0;
      v51[1] = sub_1BD43C324;
      v52 = v0[47];
      v53 = v0[19];

      return sub_1BD43ED44(v53, v47 + v49, v47 + v50, v52);
    }
  }
}

uint64_t sub_1BD43C0A0()
{
  v0[2] = v0[58];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3E5A0);
  swift_willThrowTypedImpl();

  v1 = v0[50];
  v2 = v0[51];

  return MEMORY[0x1EEE6DFA0](sub_1BD43C13C, v1, v2);
}

uint64_t sub_1BD43C13C()
{
  v2 = v0[35];
  v1 = v0[36];
  v3 = v0[34];

  (*(v2 + 8))(v1, v3);
  sub_1BD442180(v0[47]);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1BD43C324()
{
  v2 = *v1;
  *(*v1 + 504) = v0;

  if (v0)
  {

    v3 = *(v2 + 400);
    v4 = *(v2 + 408);
    v5 = sub_1BD43CC80;
  }

  else
  {
    v3 = *(v2 + 400);
    v4 = *(v2 + 408);
    v5 = sub_1BD43C44C;
  }

  return MEMORY[0x1EEE6DFA0](v5, v3, v4);
}

uint64_t sub_1BD43C44C()
{
  v1 = *(v0 + 488);
  v2 = *(v0 + 376);
  v74 = *(v0 + 352);
  v3 = *(v0 + 176);
  v4 = *(v0 + 160);
  v5 = *(v0 + 168);
  v6 = *(v0 + 152);
  v76 = *(v0 + 144);
  v7 = *(v0 + 104);
  v62 = *(v0 + 184);
  v64 = *(v0 + 96);
  v8 = *(v0 + 80);
  v70 = *(v0 + 88);
  v72 = *(v0 + 512);
  v66 = *(v0 + 112);
  v68 = *(v0 + 72);
  v9 = *(v1 - 8);
  (*(v9 + 56))(v6, 0, 1, v1);
  (*(v5 + 16))(v3, v62, v4);
  (*(v7 + 16))(v66, v2 + v72, v64);
  (*(v8 + 16))(v70, v2 + *(v74 + 24), v68);
  sub_1BD0DE19C(v6, v76, &qword_1EBD461E8);
  v75 = *(v9 + 48);
  if (v75(v76, 1, v1) == 1)
  {
    v10 = *(v0 + 64);
    sub_1BD0DE53C(*(v0 + 144), &qword_1EBD461E8);
    v11 = sub_1BE0491B4();
    (*(*(v11 - 8) + 56))(v10, 1, 1, v11);
  }

  else
  {
    v12 = *(v0 + 488);
    v13 = *(v0 + 144);
    v14 = *(v12 + 48);
    v15 = *(v12 + 64);
    sub_1BD0DE204(v13, *(v0 + 64), &qword_1EBD3F7C0);
    sub_1BD0DE53C(v13 + v15, &qword_1EBD46160);
    sub_1BD0DE53C(v13 + v14, &qword_1EBD461E0);
  }

  v61 = *(v0 + 472);
  v16 = *(v0 + 368);
  v17 = *(v0 + 352);
  v18 = *(v0 + 176);
  v19 = *(v0 + 160);
  v71 = *(v0 + 152);
  v73 = *(v0 + 488);
  v20 = *(v0 + 104);
  v21 = *(v0 + 112);
  v22 = *(v0 + 96);
  v23 = *(v0 + 80);
  v63 = *(v0 + 72);
  v65 = *(v0 + 88);
  v67 = *(v0 + 64);
  v69 = *(v0 + 136);
  v24 = v17[8];
  v25 = sub_1BE049E04();
  (*(*(v25 - 8) + 56))(v16 + v24, 1, 1, v25);
  v61(v16, v18, v19);
  (*(v20 + 32))(v16 + v17[5], v21, v22);
  (*(v23 + 32))(v16 + v17[6], v65, v63);
  sub_1BD0DE204(v67, v16 + v17[7], &qword_1EBD3F7C0);
  sub_1BD0DE19C(v71, v69, &qword_1EBD461E8);
  if (v75(v69, 1, v73) == 1)
  {
    v26 = *(v0 + 56);
    sub_1BD0DE53C(*(v0 + 136), &qword_1EBD461E8);
    v27 = sub_1BE049D24();
    (*(*(v27 - 8) + 56))(v26, 1, 1, v27);
  }

  else
  {
    v28 = *(v0 + 488);
    v29 = *(v0 + 136);
    v30 = *(v28 + 48);
    sub_1BD0DE204(v29 + *(v28 + 64), *(v0 + 56), &qword_1EBD46160);
    sub_1BD0DE53C(v29 + v30, &qword_1EBD461E0);
    sub_1BD0DE53C(v29, &qword_1EBD3F7C0);
  }

  v31 = *(v0 + 120);
  v32 = *(v0 + 40);
  sub_1BD439370(*(v0 + 368), *(v0 + 56), v31);
  v33 = _s23TransactionDetailsModelVMa(0);
  (*(*(v33 - 8) + 56))(v31, 0, 1, v33);
  swift_getKeyPath();
  v34 = swift_task_alloc();
  *(v34 + 16) = v32;
  *(v34 + 24) = v31;
  *(v0 + 24) = v32;
  sub_1BD441624(&qword_1EBD461C8, _s9ViewModelCMa_1);
  sub_1BE04B584();

  sub_1BD0DE53C(v31, &qword_1EBD461C0);
  if (sub_1BD43FB1C())
  {
    v35 = *(v0 + 488);
    v36 = *(v0 + 128);
    sub_1BD0DE19C(*(v0 + 152), v36, &qword_1EBD461E8);
    if (v75(v36, 1, v35) == 1)
    {
      v37 = *(v0 + 128);
      v38 = &qword_1EBD461E8;
    }

    else
    {
      v39 = *(v0 + 488);
      v40 = *(v0 + 128);
      v41 = *(v0 + 48);
      v42 = *(v39 + 64);
      sub_1BD0DE204(v40 + *(v39 + 48), v41, &qword_1EBD461E0);
      v43 = sub_1BE049C64();
      v44 = *(v43 - 8);
      v45 = (*(v44 + 48))(v41, 1, v43);
      v46 = *(v0 + 128);
      v47 = *(v0 + 48);
      if (v45 != 1)
      {
        v48 = sub_1BE049C54();
        (*(v44 + 8))(v47, v43);
        sub_1BD0DE53C(v40 + v42, &qword_1EBD46160);
        sub_1BD0DE53C(v46, &qword_1EBD3F7C0);
        goto LABEL_14;
      }

      sub_1BD0DE53C(v40 + v42, &qword_1EBD46160);
      sub_1BD0DE53C(v46, &qword_1EBD3F7C0);
      v38 = &qword_1EBD461E0;
      v37 = v47;
    }

    sub_1BD0DE53C(v37, v38);
    v48 = 0;
LABEL_14:
    sub_1BD438E34(v48 & 1);
  }

  v50 = *(v0 + 240);
  v49 = *(v0 + 248);
  v51 = *(v0 + 232);
  v52 = *(v0 + 200);
  v53 = *(v0 + 184);
  v54 = *(v0 + 160);
  v55 = *(v0 + 168);
  sub_1BD0DE53C(*(v0 + 152), &qword_1EBD461E8);
  (*(v55 + 8))(v53, v54);
  sub_1BD0DE53C(v52, &qword_1EBD3F7D8);
  (*(v50 + 8))(v49, v51);
  *(v0 + 448) = sub_1BE052894();
  v56 = sub_1BD441624(&qword_1EBD3F7E8, MEMORY[0x1E6967C80]);
  v57 = swift_task_alloc();
  *(v0 + 456) = v57;
  *v57 = v0;
  v57[1] = sub_1BD43B7B4;
  v58 = *(v0 + 272);
  v59 = *(v0 + 256);

  return MEMORY[0x1EEE6D8C8](v59, v58, v56);
}

uint64_t sub_1BD43CC80()
{
  v1 = *(v0 + 488);
  v2 = *(v0 + 376);
  v72 = *(v0 + 512);
  v74 = *(v0 + 352);
  v3 = *(v0 + 176);
  v4 = *(v0 + 160);
  v5 = *(v0 + 168);
  v6 = *(v0 + 152);
  v76 = *(v0 + 144);
  v7 = *(v0 + 104);
  v62 = *(v0 + 184);
  v64 = *(v0 + 96);
  v70 = *(v0 + 88);
  v8 = *(v0 + 80);
  v66 = *(v0 + 112);
  v68 = *(v0 + 72);
  v9 = *(v1 - 8);
  (*(v9 + 56))(v6, 1, 1, v1);
  (*(v5 + 16))(v3, v62, v4);
  (*(v7 + 16))(v66, v2 + v72, v64);
  (*(v8 + 16))(v70, v2 + *(v74 + 24), v68);
  sub_1BD0DE19C(v6, v76, &qword_1EBD461E8);
  v75 = *(v9 + 48);
  if (v75(v76, 1, v1) == 1)
  {
    v10 = *(v0 + 64);
    sub_1BD0DE53C(*(v0 + 144), &qword_1EBD461E8);
    v11 = sub_1BE0491B4();
    (*(*(v11 - 8) + 56))(v10, 1, 1, v11);
  }

  else
  {
    v12 = *(v0 + 488);
    v13 = *(v0 + 144);
    v14 = *(v12 + 48);
    v15 = *(v12 + 64);
    sub_1BD0DE204(v13, *(v0 + 64), &qword_1EBD3F7C0);
    sub_1BD0DE53C(v13 + v15, &qword_1EBD46160);
    sub_1BD0DE53C(v13 + v14, &qword_1EBD461E0);
  }

  v61 = *(v0 + 472);
  v16 = *(v0 + 368);
  v17 = *(v0 + 352);
  v18 = *(v0 + 176);
  v19 = *(v0 + 160);
  v71 = *(v0 + 152);
  v73 = *(v0 + 488);
  v20 = *(v0 + 104);
  v21 = *(v0 + 112);
  v22 = *(v0 + 96);
  v23 = *(v0 + 80);
  v63 = *(v0 + 72);
  v65 = *(v0 + 88);
  v67 = *(v0 + 64);
  v69 = *(v0 + 136);
  v24 = v17[8];
  v25 = sub_1BE049E04();
  (*(*(v25 - 8) + 56))(v16 + v24, 1, 1, v25);
  v61(v16, v18, v19);
  (*(v20 + 32))(v16 + v17[5], v21, v22);
  (*(v23 + 32))(v16 + v17[6], v65, v63);
  sub_1BD0DE204(v67, v16 + v17[7], &qword_1EBD3F7C0);
  sub_1BD0DE19C(v71, v69, &qword_1EBD461E8);
  if (v75(v69, 1, v73) == 1)
  {
    v26 = *(v0 + 56);
    sub_1BD0DE53C(*(v0 + 136), &qword_1EBD461E8);
    v27 = sub_1BE049D24();
    (*(*(v27 - 8) + 56))(v26, 1, 1, v27);
  }

  else
  {
    v28 = *(v0 + 488);
    v29 = *(v0 + 136);
    v30 = *(v28 + 48);
    sub_1BD0DE204(v29 + *(v28 + 64), *(v0 + 56), &qword_1EBD46160);
    sub_1BD0DE53C(v29 + v30, &qword_1EBD461E0);
    sub_1BD0DE53C(v29, &qword_1EBD3F7C0);
  }

  v31 = *(v0 + 120);
  v32 = *(v0 + 40);
  sub_1BD439370(*(v0 + 368), *(v0 + 56), v31);
  v33 = _s23TransactionDetailsModelVMa(0);
  (*(*(v33 - 8) + 56))(v31, 0, 1, v33);
  swift_getKeyPath();
  v34 = swift_task_alloc();
  *(v34 + 16) = v32;
  *(v34 + 24) = v31;
  *(v0 + 24) = v32;
  sub_1BD441624(&qword_1EBD461C8, _s9ViewModelCMa_1);
  sub_1BE04B584();

  sub_1BD0DE53C(v31, &qword_1EBD461C0);
  if (sub_1BD43FB1C())
  {
    v35 = *(v0 + 488);
    v36 = *(v0 + 128);
    sub_1BD0DE19C(*(v0 + 152), v36, &qword_1EBD461E8);
    if (v75(v36, 1, v35) == 1)
    {
      v37 = *(v0 + 128);
      v38 = &qword_1EBD461E8;
    }

    else
    {
      v39 = *(v0 + 488);
      v40 = *(v0 + 128);
      v41 = *(v0 + 48);
      v42 = *(v39 + 64);
      sub_1BD0DE204(v40 + *(v39 + 48), v41, &qword_1EBD461E0);
      v43 = sub_1BE049C64();
      v44 = *(v43 - 8);
      v45 = (*(v44 + 48))(v41, 1, v43);
      v46 = *(v0 + 128);
      v47 = *(v0 + 48);
      if (v45 != 1)
      {
        v48 = sub_1BE049C54();
        (*(v44 + 8))(v47, v43);
        sub_1BD0DE53C(v40 + v42, &qword_1EBD46160);
        sub_1BD0DE53C(v46, &qword_1EBD3F7C0);
        goto LABEL_14;
      }

      sub_1BD0DE53C(v40 + v42, &qword_1EBD46160);
      sub_1BD0DE53C(v46, &qword_1EBD3F7C0);
      v38 = &qword_1EBD461E0;
      v37 = v47;
    }

    sub_1BD0DE53C(v37, v38);
    v48 = 0;
LABEL_14:
    sub_1BD438E34(v48 & 1);
  }

  v50 = *(v0 + 240);
  v49 = *(v0 + 248);
  v51 = *(v0 + 232);
  v52 = *(v0 + 200);
  v53 = *(v0 + 184);
  v54 = *(v0 + 160);
  v55 = *(v0 + 168);
  sub_1BD0DE53C(*(v0 + 152), &qword_1EBD461E8);
  (*(v55 + 8))(v53, v54);
  sub_1BD0DE53C(v52, &qword_1EBD3F7D8);
  (*(v50 + 8))(v49, v51);
  *(v0 + 448) = sub_1BE052894();
  v56 = sub_1BD441624(&qword_1EBD3F7E8, MEMORY[0x1E6967C80]);
  v57 = swift_task_alloc();
  *(v0 + 456) = v57;
  *v57 = v0;
  v57[1] = sub_1BD43B7B4;
  v58 = *(v0 + 272);
  v59 = *(v0 + 256);

  return MEMORY[0x1EEE6D8C8](v59, v58, v56);
}

uint64_t sub_1BD43D4AC()
{
  v0 = sub_1BE04AFE4();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5, v6);
  v8 = v12 - v7;
  sub_1BE049A14();
  sub_1BE049A14();
  v9 = _s9PassKitUI28NearbyPeerPaymentButtonsViewC6ActionV2eeoiySbAE_AEtFZ_0();
  v10 = *(v1 + 8);
  v10(v4, v0);
  v10(v8, v0);
  return v9 & 1;
}

uint64_t sub_1BD43D5E0()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3E580);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v38 = &v35 - v4;
  v5 = sub_1BE049A94();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F790);
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v13 = &v35 - v12;
  v14 = sub_1BE04AFE4();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14, v17);
  v36 = &v35 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18, v19);
  v21 = &v35 - v20;
  MEMORY[0x1EEE9AC00](v22, v23);
  v25 = &v35 - v24;
  v37 = v1;
  sub_1BD0DE19C(v1 + OBJC_IVAR____TtCV9PassKitUI31FinanceKitTransactionDetailView9ViewModel_transactionContext, v13, &qword_1EBD3F790);
  v26 = type metadata accessor for TransactionContext(0);
  if ((*(*(v26 - 8) + 48))(v13, 1, v26) == 1)
  {
    return sub_1BD0DE53C(v13, &qword_1EBD3F790);
  }

  (*(v6 + 16))(v9, v13, v5);
  sub_1BD442180(v13);
  sub_1BE049A14();
  (*(v6 + 8))(v9, v5);
  v35 = *(v15 + 32);
  v35(v25, v21, v14);
  v28 = sub_1BE0528D4();
  (*(*(v28 - 8) + 56))(v38, 1, 1, v28);
  v29 = v36;
  (*(v15 + 16))(v36, v25, v14);
  sub_1BE0528A4();
  v30 = v37;
  sub_1BE048964();
  v31 = sub_1BE052894();
  v32 = (*(v15 + 80) + 32) & ~*(v15 + 80);
  v33 = swift_allocObject();
  v34 = MEMORY[0x1E69E85E0];
  *(v33 + 16) = v31;
  *(v33 + 24) = v34;
  v35((v33 + v32), v29, v14);
  *(v33 + ((v16 + v32 + 7) & 0xFFFFFFFFFFFFFFF8)) = v30;
  sub_1BDA543A4(0, 0, v38, &unk_1BE0D6748, v33);

  return (*(v15 + 8))(v25, v14);
}

uint64_t sub_1BD43DA10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F790);
  v5[4] = swift_task_alloc();
  v6 = type metadata accessor for TransactionContext(0);
  v5[5] = v6;
  v5[6] = *(v6 - 8);
  v5[7] = swift_task_alloc();
  v7 = sub_1BE049454();
  v5[8] = v7;
  v5[9] = *(v7 - 8);
  v5[10] = swift_task_alloc();
  sub_1BE0528A4();
  v5[11] = sub_1BE052894();
  v9 = sub_1BE052844();
  v5[12] = v9;
  v5[13] = v8;

  return MEMORY[0x1EEE6DFA0](sub_1BD43DB98, v9, v8);
}

uint64_t sub_1BD43DB98()
{
  v2 = v0[9];
  v1 = v0[10];
  v3 = v0[8];
  v4 = v0[2];
  sub_1BE0490F4();
  v0[14] = sub_1BE0490B4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3C910);
  v5 = sub_1BE04AFE4();
  v6 = *(v5 - 8);
  v7 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v8 = swift_allocObject();
  v0[15] = v8;
  *(v8 + 16) = xmmword_1BE0B69E0;
  (*(v6 + 16))(v8 + v7, v4, v5);
  (*(v2 + 104))(v1, *MEMORY[0x1E69677B8], v3);
  v9 = swift_task_alloc();
  v0[16] = v9;
  *v9 = v0;
  v9[1] = sub_1BD43DD4C;
  v10 = v0[10];

  return MEMORY[0x1EEDC1538](v8, v10);
}

uint64_t sub_1BD43DD4C(char a1)
{
  v4 = *v2;
  *(v4 + 136) = v1;

  v5 = *(v4 + 80);
  v6 = *(v4 + 72);
  v7 = *(v4 + 64);
  if (v1)
  {
    (*(v6 + 8))(v5, v7);

    v8 = *(v4 + 96);
    v9 = *(v4 + 104);
    v10 = sub_1BD43E27C;
  }

  else
  {
    *(v4 + 152) = a1 & 1;
    (*(v6 + 8))(v5, v7);

    v8 = *(v4 + 96);
    v9 = *(v4 + 104);
    v10 = sub_1BD43DF28;
  }

  return MEMORY[0x1EEE6DFA0](v10, v8, v9);
}

uint64_t sub_1BD43DF28()
{
  if (*(v0 + 152) != 1)
  {

    goto LABEL_5;
  }

  v1 = *(v0 + 40);
  v2 = *(v0 + 48);
  v3 = *(v0 + 32);
  sub_1BD0DE19C(*(v0 + 24) + OBJC_IVAR____TtCV9PassKitUI31FinanceKitTransactionDetailView9ViewModel_transactionContext, v3, &qword_1EBD3F790);
  v4 = (*(v2 + 48))(v3, 1, v1);
  v5 = *(v0 + 32);
  if (v4 == 1)
  {

    sub_1BD0DE53C(v5, &qword_1EBD3F790);
LABEL_5:

    v6 = *(v0 + 8);

    return v6();
  }

  sub_1BD4423F4(*(v0 + 32), *(v0 + 56), type metadata accessor for TransactionContext);
  v8 = swift_task_alloc();
  *(v0 + 144) = v8;
  *v8 = v0;
  v8[1] = sub_1BD43E0CC;
  v9 = *(v0 + 56);

  return sub_1BD43E308(v9);
}

uint64_t sub_1BD43E0CC()
{
  v1 = *v0;

  v2 = *(v1 + 104);
  v3 = *(v1 + 96);

  return MEMORY[0x1EEE6DFA0](sub_1BD43E1EC, v3, v2);
}

uint64_t sub_1BD43E1EC()
{
  v1 = *(v0 + 56);

  sub_1BD442180(v1);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1BD43E27C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1BD43E308(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD461E0);
  v2[5] = swift_task_alloc();
  v2[6] = type metadata accessor for TransactionContext(0);
  v2[7] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD461C0);
  v2[8] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD461E8);
  v4 = swift_task_alloc();
  v2[9] = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD461F0);
  v2[10] = v5;
  v2[11] = *(v5 - 8);
  v2[12] = swift_task_alloc();
  v2[13] = swift_task_alloc();
  v2[14] = swift_task_alloc();
  v2[15] = sub_1BE0528A4();
  v2[16] = sub_1BE052894();
  v6 = *(v5 + 48);
  v7 = *(v5 + 64);
  v8 = swift_task_alloc();
  v2[17] = v8;
  *v8 = v2;
  v8[1] = sub_1BD43E53C;

  return sub_1BD43ED44(v4, v4 + v6, v4 + v7, a1);
}

uint64_t sub_1BD43E53C()
{
  *(*v1 + 144) = v0;

  if (v0)
  {

    v2 = sub_1BE052844();
    v4 = v3;
    v5 = sub_1BD43EC4C;
  }

  else
  {
    v2 = sub_1BE052844();
    v4 = v6;
    v5 = sub_1BD43E6C0;
  }

  return MEMORY[0x1EEE6DFA0](v5, v2, v4);
}

uint64_t sub_1BD43E6C0()
{
  v1 = v0[13];
  v2 = v0[14];
  v3 = v0[10];
  v4 = v0[11];
  v5 = v0[9];
  v33 = v0[8];
  v6 = v0[6];
  v7 = v0[7];
  v8 = v0[3];
  v34 = v0[4];

  (*(v4 + 56))(v5, 0, 1, v3);
  sub_1BD0DE204(v5, v2, &unk_1EBD461F0);
  v9 = sub_1BE049A94();
  (*(*(v9 - 8) + 16))(v7, v8, v9);
  v10 = v6[5];
  v11 = sub_1BE0495A4();
  (*(*(v11 - 8) + 16))(v7 + v10, v8 + v10, v11);
  v12 = v6[6];
  v13 = sub_1BE049184();
  (*(*(v13 - 8) + 16))(v7 + v12, v8 + v12, v13);
  sub_1BD0DE19C(v2, v1, &unk_1EBD461F0);
  v14 = *(v3 + 48);
  v15 = *(v3 + 64);
  v16 = v6[8];
  v17 = sub_1BE049E04();
  (*(*(v17 - 8) + 56))(v7 + v16, 1, 1, v17);
  sub_1BD0DE204(v1, v7 + v6[7], &qword_1EBD3F7C0);
  sub_1BD0DE53C(v1 + v15, &qword_1EBD46160);
  sub_1BD0DE53C(v1 + v14, &qword_1EBD461E0);
  sub_1BD0DE19C(v2, v1, &unk_1EBD461F0);
  v18 = *(v3 + 48);
  sub_1BD439370(v7, v1 + *(v3 + 64), v33);
  sub_1BD0DE53C(v1 + v18, &qword_1EBD461E0);
  sub_1BD0DE53C(v1, &qword_1EBD3F7C0);
  v19 = _s23TransactionDetailsModelVMa(0);
  (*(*(v19 - 8) + 56))(v33, 0, 1, v19);
  swift_getKeyPath();
  v20 = swift_task_alloc();
  *(v20 + 16) = v34;
  *(v20 + 24) = v33;
  v0[2] = v34;
  sub_1BD441624(&qword_1EBD461C8, _s9ViewModelCMa_1);
  sub_1BE04B584();

  sub_1BD0DE53C(v33, &qword_1EBD461C0);
  if (sub_1BD43FB1C())
  {
    v21 = v0[12];
    v22 = v0[10];
    v23 = v0[5];
    sub_1BD0DE19C(v0[14], v21, &unk_1EBD461F0);
    v24 = *(v22 + 64);
    sub_1BD0DE204(v21 + *(v22 + 48), v23, &qword_1EBD461E0);
    v25 = sub_1BE049C64();
    v26 = *(v25 - 8);
    v27 = (*(v26 + 48))(v23, 1, v25);
    v28 = v0[12];
    v29 = v0[5];
    if (v27 == 1)
    {
      sub_1BD0DE53C(v21 + v24, &qword_1EBD46160);
      sub_1BD0DE53C(v28, &qword_1EBD3F7C0);
      sub_1BD0DE53C(v29, &qword_1EBD461E0);
      v30 = 0;
    }

    else
    {
      v30 = sub_1BE049C54();
      (*(v26 + 8))(v29, v25);
      sub_1BD0DE53C(v21 + v24, &qword_1EBD46160);
      sub_1BD0DE53C(v28, &qword_1EBD3F7C0);
    }

    sub_1BD438E34(v30 & 1);
  }

  sub_1BD0DE53C(v0[14], &unk_1EBD461F0);

  v31 = v0[1];

  return v31();
}

uint64_t sub_1BD43EC4C()
{
  v1 = v0[10];
  v2 = v0[11];
  v3 = v0[9];

  (*(v2 + 56))(v3, 1, 1, v1);
  sub_1BD0DE53C(v3, &qword_1EBD461E8);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1BD43ED44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD46160);
  v4[6] = swift_task_alloc();
  v5 = sub_1BE049D24();
  v4[7] = v5;
  v4[8] = *(v5 - 8);
  v4[9] = swift_task_alloc();
  v6 = sub_1BE049C64();
  v4[10] = v6;
  v4[11] = *(v6 - 8);
  v4[12] = swift_task_alloc();
  v7 = sub_1BE0491B4();
  v4[13] = v7;
  v4[14] = *(v7 - 8);
  v4[15] = swift_task_alloc();
  v8 = sub_1BE049204();
  v4[16] = v8;
  v4[17] = *(v8 - 8);
  v4[18] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD461E0);
  v4[19] = swift_task_alloc();
  v4[20] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F7C0);
  v4[21] = swift_task_alloc();
  v4[22] = swift_task_alloc();
  v9 = sub_1BE04AFE4();
  v4[23] = v9;
  v4[24] = *(v9 - 8);
  v4[25] = swift_task_alloc();
  sub_1BE0528A4();
  v4[26] = sub_1BE052894();
  v11 = sub_1BE052844();
  v4[27] = v11;
  v4[28] = v10;

  return MEMORY[0x1EEE6DFA0](sub_1BD43F06C, v11, v10);
}

uint64_t sub_1BD43F06C()
{
  sub_1BE0490F4();
  v0[29] = sub_1BE0490B4();
  sub_1BE049A14();
  v1 = swift_task_alloc();
  v0[30] = v1;
  *v1 = v0;
  v1[1] = sub_1BD43F13C;
  v2 = v0[25];

  return MEMORY[0x1EEDC1500](v2);
}

uint64_t sub_1BD43F13C(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 200);
  v6 = *(*v2 + 192);
  v7 = *(*v2 + 184);
  *(v4 + 248) = a1;
  *(v4 + 256) = v1;

  (*(v6 + 8))(v5, v7);

  v8 = *(v3 + 224);
  v9 = *(v3 + 216);
  if (v1)
  {
    v10 = sub_1BD43FA28;
  }

  else
  {
    v10 = sub_1BD43F300;
  }

  return MEMORY[0x1EEE6DFA0](v10, v9, v8);
}

uint64_t sub_1BD43F300()
{
  v84 = v0[31];
  v1 = v0[22];
  v2 = v0[20];
  v3 = v0[13];
  v4 = v0[14];
  v5 = v0[10];
  v6 = v0[11];
  v7 = v0[7];
  v8 = v0[8];
  v9 = v0[4];

  v71 = *(v4 + 56);
  v71(v1, 1, 1, v3);
  v67 = *(v6 + 56);
  v67(v2, 1, 1, v5);
  v63 = *(v8 + 56);
  v63(v9, 1, 1, v7);
  v10 = *(v84 + 16);
  if (v10)
  {
    v11 = v0[17];
    v12 = *(v11 + 16);
    v11 += 16;
    v83 = v12;
    v13 = v0[31] + ((*(v11 + 64) + 32) & ~*(v11 + 64));
    v79 = (v11 + 72);
    v66 = (v11 - 8);
    v78 = (v11 + 80);
    v14 = v0[8];
    v15 = (v14 + 32);
    v16 = v0[11];
    v65 = (v14 + 48);
    v62 = (v14 + 8);
    v76 = (v16 + 32);
    v70 = (v16 + 48);
    v17 = v0[14];
    v82 = *(v11 + 56);
    v81 = *MEMORY[0x1E69676F8];
    v75 = *MEMORY[0x1E6967700];
    v64 = (v16 + 8);
    v80 = (v17 + 32);
    v74 = (v17 + 48);
    v18 = &qword_1EBD3F7C0;
    v69 = (v17 + 8);
    v68 = *MEMORY[0x1E6967708];
    v77 = v15;
    do
    {
      v20 = v18;
      v21 = v0[18];
      v22 = v0[16];
      v83(v21, v13, v22);
      v23 = (*v79)(v21, v22);
      if (v23 == v81)
      {
        v25 = v0[21];
        v24 = v0[22];
        v26 = v0[18];
        v27 = v0[15];
        v28 = v0[13];
        (*v78)(v26, v0[16]);
        v29 = *v80;
        (*v80)(v27, v26, v28);
        v30 = v24;
        v18 = v20;
        sub_1BD0DE19C(v30, v25, v20);
        if ((*v74)(v25, 1, v28) == 1)
        {
          v32 = v0[21];
          v31 = v0[22];
          v33 = v0[15];
          v34 = v0[13];
          sub_1BD0DE53C(v31, v20);
          v35 = v32;
          v18 = v20;
          sub_1BD0DE53C(v35, v20);
          v29(v31, v33, v34);
          v71(v31, 0, 1, v34);
        }

        else
        {
          v45 = v0[21];
          (*v69)(v0[15], v0[13]);
          sub_1BD0DE53C(v45, v20);
        }

        v15 = v77;
        goto LABEL_6;
      }

      if (v23 == v75)
      {
        v37 = v0[19];
        v36 = v0[20];
        v38 = v0[18];
        v39 = v0[12];
        v40 = v0[10];
        (*v78)(v38, v0[16]);
        v72 = *v76;
        (*v76)(v39, v38, v40);
        sub_1BD0DE19C(v36, v37, &qword_1EBD461E0);
        if ((*v70)(v37, 1, v40) == 1)
        {
          v42 = v0[19];
          v41 = v0[20];
          v43 = v0[12];
          v44 = v0[10];
          sub_1BD0DE53C(v41, &qword_1EBD461E0);
          sub_1BD0DE53C(v42, &qword_1EBD461E0);
          v72(v41, v43, v44);
          v67(v41, 0, 1, v44);
        }

        else
        {
          v19 = v0[19];
          (*v64)(v0[12], v0[10]);
          sub_1BD0DE53C(v19, &qword_1EBD461E0);
        }

        v15 = v77;
      }

      else
      {
        v46 = v0[18];
        v47 = v0[16];
        if (v23 == v68)
        {
          v48 = v0[9];
          v49 = v15;
          v51 = v0[6];
          v50 = v0[7];
          v52 = v0[4];
          (*v78)(v0[18], v47);
          v73 = *v49;
          (*v49)(v48, v46, v50);
          sub_1BD0DE19C(v52, v51, &qword_1EBD46160);
          v53 = (*v65)(v51, 1, v50);
          v54 = v0[9];
          v55 = v0[6];
          v56 = v0[7];
          if (v53 == 1)
          {
            v57 = v0[4];
            sub_1BD0DE53C(v57, &qword_1EBD46160);
            sub_1BD0DE53C(v55, &qword_1EBD46160);
            v15 = v77;
            v73(v57, v54, v56);
            v63(v57, 0, 1, v56);
            v18 = v20;
          }

          else
          {
            (*v62)(v0[9], v0[7]);
            sub_1BD0DE53C(v55, &qword_1EBD46160);
            v18 = v20;
            v15 = v77;
          }

          goto LABEL_6;
        }

        (*v66)(v0[18], v47);
      }

      v18 = v20;
LABEL_6:
      v13 += v82;
      --v10;
    }

    while (v10);
  }

  v58 = v0[20];
  v59 = v0[3];
  sub_1BD0DE204(v0[22], v0[2], &qword_1EBD3F7C0);
  sub_1BD0DE204(v58, v59, &qword_1EBD461E0);

  v60 = v0[1];

  return v60();
}

uint64_t sub_1BD43FA28()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1BD43FB1C()
{
  v0 = sub_1BE049834();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = &v77 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5, v6);
  v8 = &v77 - v7;
  v9 = sub_1BE049904();
  v84 = *(v9 - 8);
  v85 = v9;
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = &v77 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13, v14);
  v83 = &v77 - v15;
  v16 = sub_1BE049B44();
  v88 = *(v16 - 8);
  v89 = v16;
  MEMORY[0x1EEE9AC00](v16, v17);
  v87 = &v77 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19, v20);
  v86 = &v77 - v21;
  v92 = sub_1BE049184();
  v90 = *(v92 - 8);
  MEMORY[0x1EEE9AC00](v92, v22);
  v24 = &v77 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25, v26);
  v91 = &v77 - v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F790);
  MEMORY[0x1EEE9AC00](v28 - 8, v29);
  v31 = &v77 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v32, v33);
  v35 = &v77 - v34;
  v36 = sub_1BE049A94();
  v94 = *(v36 - 8);
  MEMORY[0x1EEE9AC00](v36, v37);
  v39 = &v77 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v40, v41);
  v93 = &v77 - v42;
  result = PKBankConnectExcludeFromSpendingSummariesAndHighlights();
  if (result)
  {
    v79 = v8;
    v80 = v4;
    v81 = v1;
    v82 = v0;
    v44 = OBJC_IVAR____TtCV9PassKitUI31FinanceKitTransactionDetailView9ViewModel_transactionContext;
    sub_1BD0DE19C(v95 + OBJC_IVAR____TtCV9PassKitUI31FinanceKitTransactionDetailView9ViewModel_transactionContext, v35, &qword_1EBD3F790);
    v45 = type metadata accessor for TransactionContext(0);
    v46 = *(*(v45 - 8) + 48);
    if (v46(v35, 1, v45) == 1)
    {
      v47 = v35;
    }

    else
    {
      v78 = v12;
      v48 = v94;
      (*(v94 + 16))(v39, v35, v36);
      v49 = v35;
      v50 = v48;
      sub_1BD442180(v49);
      v51 = *(v48 + 32);
      v52 = v93;
      v53 = v39;
      v54 = v36;
      v51(v93, v53, v36);
      sub_1BD0DE19C(v95 + v44, v31, &qword_1EBD3F790);
      if (v46(v31, 1, v45) != 1)
      {
        v55 = v90;
        v56 = v92;
        (*(v90 + 16))(v24, &v31[*(v45 + 24)], v92);
        sub_1BD442180(v31);
        v57 = v91;
        (*(v55 + 32))(v91, v24, v56);
        if (sub_1BE049134())
        {
          v58 = v86;
          sub_1BE0499E4();
          v60 = v87;
          v59 = v88;
          v61 = v89;
          (*(v88 + 104))(v87, *MEMORY[0x1E6967B18], v89);
          sub_1BD441624(&qword_1EBD3F7A8, MEMORY[0x1E6967B20]);
          sub_1BE0526E4();
          sub_1BE0526E4();
          v62 = *(v59 + 8);
          v62(v60, v61);
          v62(v58, v61);
          if (v101 != v100)
          {
            v63 = v83;
            sub_1BE049A34();
            v65 = v84;
            v64 = v85;
            v66 = v78;
            (*(v84 + 104))(v78, *MEMORY[0x1E6967980], v85);
            sub_1BD441624(&qword_1EBD461D8, MEMORY[0x1E6967988]);
            sub_1BE0526E4();
            sub_1BE0526E4();
            v67 = *(v65 + 8);
            v67(v66, v64);
            v68 = v63;
            v52 = v93;
            v67(v68, v64);
            if (v99 != v98)
            {
              v69 = v54;
              v70 = v79;
              sub_1BE049984();
              v72 = v80;
              v71 = v81;
              v73 = v52;
              v74 = v55;
              v75 = v82;
              (*(v81 + 104))(v80, *MEMORY[0x1E69678D0], v82);
              sub_1BD441624(&qword_1EBD3F7C8, MEMORY[0x1E69678D8]);
              sub_1BE0526E4();
              sub_1BE0526E4();
              v76 = *(v71 + 8);
              v76(v72, v75);
              v76(v70, v75);
              (*(v74 + 8))(v91, v92);
              (*(v94 + 8))(v73, v69);
              return v97 != v96;
            }
          }

          (*(v55 + 8))(v91, v92);
          (*(v94 + 8))(v52, v54);
        }

        else
        {
          (*(v55 + 8))(v57, v56);
          (*(v50 + 8))(v52, v36);
        }

        return 0;
      }

      (*(v50 + 8))(v52, v36);
      v47 = v31;
    }

    sub_1BD0DE53C(v47, &qword_1EBD3F790);
    return 0;
  }

  return result;
}

void sub_1BD4403E4(int a1)
{
  v39 = a1;
  v2 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3E580);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v38 = &v36 - v5;
  v6 = sub_1BE049A94();
  v37 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F790);
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v13 = &v36 - v12;
  v14 = sub_1BE04AFE4();
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14, v16);
  v17 = &v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18, v19);
  v21 = &v36 - v20;
  MEMORY[0x1EEE9AC00](v22, v23);
  v26 = &v36 - v25;
  if (v2 != 2)
  {
    v36 = v24;
    sub_1BD0DE19C(v1 + OBJC_IVAR____TtCV9PassKitUI31FinanceKitTransactionDetailView9ViewModel_transactionContext, v13, &qword_1EBD3F790);
    v27 = type metadata accessor for TransactionContext(0);
    if ((*(*(v27 - 8) + 48))(v13, 1, v27) == 1)
    {
      sub_1BD0DE53C(v13, &qword_1EBD3F790);
    }

    else
    {
      v28 = v37;
      (*(v37 + 16))(v9, v13, v6);
      sub_1BD442180(v13);
      sub_1BE049A14();
      (*(v28 + 8))(v9, v6);
      v29 = v36;
      v37 = *(v36 + 32);
      (v37)(v26, v21, v14);
      v30 = sub_1BE0528D4();
      v31 = v38;
      (*(*(v30 - 8) + 56))(v38, 1, 1, v30);
      (*(v29 + 16))(v17, v26, v14);
      sub_1BE0528A4();
      v32 = sub_1BE052894();
      v33 = (*(v29 + 80) + 33) & ~*(v29 + 80);
      v34 = swift_allocObject();
      v35 = MEMORY[0x1E69E85E0];
      *(v34 + 16) = v32;
      *(v34 + 24) = v35;
      *(v34 + 32) = v39 & 1;
      (v37)(v34 + v33, v17, v14);
      sub_1BDA543A4(0, 0, v31, &unk_1BE0D6720, v34);

      (*(v29 + 8))(v26, v14);
    }
  }
}

uint64_t sub_1BD440818(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  *(v5 + 16) = a5;
  *(v5 + 72) = a4;
  sub_1BE0528A4();
  *(v5 + 24) = sub_1BE052894();
  v7 = sub_1BE052844();
  *(v5 + 32) = v7;
  *(v5 + 40) = v6;

  return MEMORY[0x1EEE6DFA0](sub_1BD4408B4, v7, v6);
}

uint64_t sub_1BD4408B4()
{
  sub_1BE0490F4();
  *(v0 + 48) = sub_1BE0490B4();
  v1 = swift_task_alloc();
  *(v0 + 56) = v1;
  *v1 = v0;
  v1[1] = sub_1BD440968;
  v2 = *(v0 + 16);
  v3 = *(v0 + 72);

  return MEMORY[0x1EEDC1550](v3, v2);
}

uint64_t sub_1BD440968()
{
  v2 = *v1;
  *(*v1 + 64) = v0;

  if (v0)
  {
    v3 = *(v2 + 32);
    v4 = *(v2 + 40);
    v5 = sub_1BD440AE8;
  }

  else
  {

    v3 = *(v2 + 32);
    v4 = *(v2 + 40);
    v5 = sub_1BD440A84;
  }

  return MEMORY[0x1EEE6DFA0](v5, v3, v4);
}

uint64_t sub_1BD440A84()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1BD440AE8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1BD440B58()
{
  sub_1BD0DE53C(v0 + OBJC_IVAR____TtCV9PassKitUI31FinanceKitTransactionDetailView9ViewModel__transactionDetails, &qword_1EBD461C0);

  sub_1BD0D4744(*(v0 + OBJC_IVAR____TtCV9PassKitUI31FinanceKitTransactionDetailView9ViewModel__onTransactionDeleted));
  sub_1BD0DE53C(v0 + OBJC_IVAR____TtCV9PassKitUI31FinanceKitTransactionDetailView9ViewModel_transactionContext, &qword_1EBD3F790);
  sub_1BD0DE53C(v0 + OBJC_IVAR____TtCV9PassKitUI31FinanceKitTransactionDetailView9ViewModel_historyToken, &qword_1EBD3F788);
  v1 = OBJC_IVAR____TtCV9PassKitUI31FinanceKitTransactionDetailView9ViewModel___observationRegistrar;
  v2 = sub_1BE04B5D4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

void sub_1BD440CA0()
{
  sub_1BD440EAC(319, &qword_1EBD46158, _s23TransactionDetailsModelVMa, MEMORY[0x1E69E6720]);
  if (v0 <= 0x3F)
  {
    sub_1BD440EAC(319, &qword_1EBD3F760, type metadata accessor for TransactionContext, MEMORY[0x1E69E6720]);
    if (v1 <= 0x3F)
    {
      sub_1BD440EAC(319, &qword_1EBD3F768, MEMORY[0x1E69675F8], MEMORY[0x1E69E6720]);
      if (v2 <= 0x3F)
      {
        sub_1BE04B5D4();
        if (v3 <= 0x3F)
        {
          swift_updateClassMetadata2();
        }
      }
    }
  }
}

void sub_1BD440EAC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1BD440F38()
{
  sub_1BD440EAC(319, &qword_1EBD46178, _s23TransactionDetailsModelV6ActionVMa, MEMORY[0x1E69E62F8]);
  if (v0 <= 0x3F)
  {
    sub_1BE0493F4();
    if (v1 <= 0x3F)
    {
      sub_1BE04A974();
      if (v2 <= 0x3F)
      {
        sub_1BE049B44();
        if (v3 <= 0x3F)
        {
          sub_1BD440EAC(319, &qword_1EBD46180, sub_1BD4411B4, MEMORY[0x1E69E6720]);
          if (v4 <= 0x3F)
          {
            sub_1BD440EAC(319, &qword_1EBD44DB8, MEMORY[0x1E6967790], MEMORY[0x1E69E6720]);
            if (v5 <= 0x3F)
            {
              sub_1BE04AFE4();
              if (v6 <= 0x3F)
              {
                sub_1BD440EAC(319, &qword_1EBD46190, MEMORY[0x1E69676D0], MEMORY[0x1E69E6720]);
                if (v7 <= 0x3F)
                {
                  sub_1BE049B04();
                  if (v8 <= 0x3F)
                  {
                    sub_1BD440EAC(319, &qword_1EBD46198, MEMORY[0x1E6967C00], MEMORY[0x1E69E6720]);
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

unint64_t sub_1BD4411B4()
{
  result = qword_1EBD46188;
  if (!qword_1EBD46188)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EBD46188);
  }

  return result;
}

uint64_t sub_1BD441228()
{
  result = sub_1BE04AA64();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_1BD4412C0()
{
  result = qword_1EBD461B0;
  if (!qword_1EBD461B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD461B0);
  }

  return result;
}

uint64_t sub_1BD441314()
{
  sub_1BE053D04();
  sub_1BE052524();
  sub_1BE04AA64();
  sub_1BD441624(&qword_1EBD44E50, MEMORY[0x1E6968FB0]);
  sub_1BE052294();
  MEMORY[0x1BFB40DA0](0);
  return sub_1BE053D64();
}

uint64_t sub_1BD4413C8()
{
  sub_1BE052524();
  sub_1BE04AA64();
  sub_1BD441624(&qword_1EBD44E50, MEMORY[0x1E6968FB0]);
  sub_1BE052294();
  return MEMORY[0x1BFB40DA0](0);
}

uint64_t sub_1BD441460()
{
  sub_1BE053D04();
  sub_1BE052524();
  sub_1BE04AA64();
  sub_1BD441624(&qword_1EBD44E50, MEMORY[0x1E6968FB0]);
  sub_1BE052294();
  MEMORY[0x1BFB40DA0](0);
  return sub_1BE053D64();
}

uint64_t sub_1BD441510(void *a1, void *a2)
{
  v2 = *a1 == *a2 && a1[1] == a2[1];
  if (!v2 && (sub_1BE053B84() & 1) == 0)
  {
    return 0;
  }

  return sub_1BE04A9E4();
}

uint64_t sub_1BD441624(unint64_t *a1, void (*a2)(uint64_t))
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

void *sub_1BD44166C(uint64_t a1, uint64_t a2)
{
  v30 = a1;
  v3 = sub_1BE04BD74();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = _s23TransactionDetailsModelV6ActionVMa(0);
  v31 = *(v29 - 8);
  MEMORY[0x1EEE9AC00](v29, v8);
  v10 = (&v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF70);
  MEMORY[0x1EEE9AC00](v11 - 8, v12);
  v14 = &v28 - v13;
  v15 = sub_1BE04AA64();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15, v17);
  v19 = &v28 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BE04A044();
  if ((*(v16 + 48))(v14, 1, v15) == 1)
  {
    sub_1BD0DE53C(v14, &unk_1EBD3CF70);
    return MEMORY[0x1E69E7CC0];
  }

  else
  {
    (*(v16 + 32))(v19, v14, v15);
    (*(v4 + 104))(v7, *MEMORY[0x1E69B80D8], v3);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF80);
    v21 = swift_allocObject();
    *(v21 + 16) = xmmword_1BE0B69E0;
    *(v21 + 56) = MEMORY[0x1E69E6158];
    *(v21 + 64) = sub_1BD110550();
    *(v21 + 32) = v30;
    *(v21 + 40) = a2;
    sub_1BE048C84();
    v22 = sub_1BE04B714();
    v24 = v23;

    (*(v4 + 8))(v7, v3);
    (*(v16 + 16))(v10 + *(v29 + 20), v19, v15);
    *v10 = v22;
    v10[1] = v24;
    v20 = sub_1BD1D9088(0, 1, 1, MEMORY[0x1E69E7CC0]);
    v26 = v20[2];
    v25 = v20[3];
    if (v26 >= v25 >> 1)
    {
      v20 = sub_1BD1D9088(v25 > 1, v26 + 1, 1, v20);
    }

    (*(v16 + 8))(v19, v15);
    v20[2] = v26 + 1;
    sub_1BD4423F4(v10, v20 + ((*(v31 + 80) + 32) & ~*(v31 + 80)) + *(v31 + 72) * v26, _s23TransactionDetailsModelV6ActionVMa);
  }

  return v20;
}

id sub_1BD441A80()
{
  v1 = v0;
  v2 = sub_1BE04BD74();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v46 = &v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v45 = &v45 - v8;
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = &v45 - v11;
  MEMORY[0x1EEE9AC00](v13, v14);
  v16 = &v45 - v15;
  MEMORY[0x1EEE9AC00](v17, v18);
  v20 = &v45 - v19;
  MEMORY[0x1EEE9AC00](v21, v22);
  v24 = &v45 - v23;
  v25 = sub_1BE049904();
  v26 = *(v25 - 8);
  v28 = MEMORY[0x1EEE9AC00](v25, v27);
  v30 = &v45 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v26 + 16))(v30, v1, v25, v28);
  v31 = (*(v26 + 88))(v30, v25);
  if (v31 == *MEMORY[0x1E6967960])
  {
    (*(v3 + 104))(v24, *MEMORY[0x1E69B8050], v2);
    result = PKPassKitBundle();
    if (result)
    {
      v33 = result;
      v34 = sub_1BE04B6F4();

      (*(v3 + 8))(v24, v2);
      return v34;
    }

    __break(1u);
    goto LABEL_22;
  }

  if (v31 == *MEMORY[0x1E6967968])
  {
    (*(v3 + 104))(v20, *MEMORY[0x1E69B8050], v2);
    result = PKPassKitBundle();
    if (!result)
    {
LABEL_22:
      __break(1u);
      goto LABEL_23;
    }

    v35 = result;
    v36 = v2;
    v34 = sub_1BE04B6F4();

    v37 = *(v3 + 8);
    v38 = v20;
LABEL_17:
    v37(v38, v36);
    return v34;
  }

  if (v31 == *MEMORY[0x1E6967978])
  {
    (*(v3 + 104))(v16, *MEMORY[0x1E69B8050], v2);
    result = PKPassKitBundle();
    if (!result)
    {
LABEL_23:
      __break(1u);
      goto LABEL_24;
    }

    v39 = result;
    v36 = v2;
    v34 = sub_1BE04B6F4();

    v37 = *(v3 + 8);
    v38 = v16;
    goto LABEL_17;
  }

  if (v31 == *MEMORY[0x1E6967970])
  {
    (*(v3 + 104))(v12, *MEMORY[0x1E69B8050], v2);
    result = PKPassKitBundle();
    if (!result)
    {
LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

    v40 = result;
    v36 = v2;
    goto LABEL_16;
  }

  v41 = *MEMORY[0x1E69B8050];
  v42 = *(v3 + 104);
  if (v31 == *MEMORY[0x1E6967980])
  {
    v12 = v45;
    v42(v45, v41, v2);
    result = PKPassKitBundle();
    if (!result)
    {
LABEL_25:
      __break(1u);
      goto LABEL_26;
    }

    v40 = result;
    v36 = v2;
LABEL_16:
    v34 = sub_1BE04B6F4();

    v37 = *(v3 + 8);
    v38 = v12;
    goto LABEL_17;
  }

  v43 = v46;
  v42(v46, v41, v2);
  result = PKPassKitBundle();
  if (result)
  {
    v44 = result;
    v34 = sub_1BE04B6F4();

    (*(v3 + 8))(v43, v2);
    (*(v26 + 8))(v30, v25);
    return v34;
  }

LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_1BD44201C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 52);
  v5 = sub_1BE04AFE4();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_1BD442090(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD461C0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BD442100(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TransactionContext(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BD442180(uint64_t a1)
{
  v2 = type metadata accessor for TransactionContext(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1BD4421DC(uint64_t a1)
{
  v4 = *(sub_1BE04AFE4() - 8);
  v5 = (*(v4 + 80) + 33) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + 32);
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1BD126968;

  return sub_1BD440818(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_1BD4422D4(uint64_t a1)
{
  v4 = *(sub_1BE04AFE4() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1BD0F985C;

  return sub_1BD43DA10(a1, v6, v7, v1 + v5, v8);
}

uint64_t sub_1BD4423F4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1BD44247C()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = (v0[2] + OBJC_IVAR____TtCV9PassKitUI31FinanceKitTransactionDetailView9ViewModel__onTransactionDeleted);
  v4 = *v3;
  *v3 = v1;
  v3[1] = v2;
  sub_1BD0D44B8(v1);
  return sub_1BD0D4744(v4);
}

uint64_t sub_1BD4424D4()
{
  *(*(v0 + 16) + OBJC_IVAR____TtCV9PassKitUI31FinanceKitTransactionDetailView9ViewModel__offersViewModel) = *(v0 + 24);
  sub_1BE048964();
}

uint64_t sub_1BD44261C(uint64_t (*a1)(uint64_t))
{
  v3 = sub_1BE04B944();
  v4 = *(v3 - 8);
  v6 = MEMORY[0x1EEE9AC00](v3, v5);
  v8 = aBlock - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = [*(v1 + OBJC_IVAR____TtC9PassKitUI36ProvisioningCarKeyInvitationFlowItem_credential) invitation];
  if (v9)
  {
    v10 = v9;
    objc_opt_self();
    v11 = swift_dynamicCastObjCClass();
    if (!v11)
    {
      goto LABEL_8;
    }

    v12 = [v11 partnerIdentifier];
    if (!v12)
    {
      sub_1BE052434();
      v12 = sub_1BE052404();
    }

    v13 = PKManufacturerIdentifierFromCredentialRoutingInformation();

    if (v13)
    {
      sub_1BE052434();

      sub_1BE04BB94();
      v14 = sub_1BE04B934();
      (*(v4 + 8))(v8, v3);
      if ([v14 respondsToSelector_])
      {
        v15 = sub_1BE052404();
        aBlock[4] = PKEdgeInsetsMake;
        aBlock[5] = 0;
        aBlock[0] = MEMORY[0x1E69E9820];
        aBlock[1] = 1107296256;
        aBlock[2] = sub_1BD03E30C;
        aBlock[3] = &block_descriptor_94;
        v16 = _Block_copy(aBlock);

        [v14 carKeyPreWarmForManufacturer:v15 completion:v16];
        _Block_release(v16);

        swift_unknownObjectRelease();
      }

      else
      {

        swift_unknownObjectRelease();
      }
    }

    else
    {
LABEL_8:
    }
  }

  return a1(1);
}

uint64_t sub_1BD4428BC()
{
  v38 = *MEMORY[0x1E69E9840];
  v1 = sub_1BE04BAC4();
  v2 = *(v1 - 8);
  v4 = MEMORY[0x1EEE9AC00](v1, v3);
  v6 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v0 + OBJC_IVAR____TtC9PassKitUI36ProvisioningCarKeyInvitationFlowItem_credential);
  v8 = [v7 invitation];
  if (v8)
  {
    v9 = v8;
    objc_opt_self();
    v10 = swift_dynamicCastObjCClass();
    if (v10)
    {
      v11 = v10;
      v12 = *(v0 + OBJC_IVAR____TtC9PassKitUI36ProvisioningCarKeyInvitationFlowItem_context);
      v13 = v0;
      sub_1BE04BC34();
      v14 = sub_1BE04B9A4();
      (*(v2 + 8))(v6, v1);
      v15 = [objc_allocWithZone(PKCarKeyInvitationViewController) initWithContext:v14 invitation:v11 delegate:v13];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD46290);
      v16 = sub_1BE04C384();
      v17 = *(v16 - 8);
      v18 = (*(v17 + 80) + 32) & ~*(v17 + 80);
      v19 = swift_allocObject();
      *(v19 + 16) = xmmword_1BE0B69E0;
      *(v19 + v18) = v7;
      (*(v17 + 104))(v19 + v18, *MEMORY[0x1E69B82A8], v16);
      sub_1BE04C3D4();
      swift_allocObject();
      v20 = v7;
      v21 = sub_1BE04C394();
      v22 = type metadata accessor for PKProvisioningFieldsUIRendererObjWrapper();
      v23 = objc_allocWithZone(v22);
      swift_unknownObjectWeakInit();
      v34 = v15;
      swift_unknownObjectWeakAssign();
      v36.receiver = v23;
      v36.super_class = v22;
      v24 = v15;
      v25 = objc_msgSendSuper2(&v36, sel_init);
      key[0] = 0;
      objc_setAssociatedObject(v24, key, v25, 1);
      v26 = type metadata accessor for CarKeyProvisioningUICoordinator();
      v27 = objc_allocWithZone(v26);
      *&v27[OBJC_IVAR____TtC9PassKitUI31CarKeyProvisioningUICoordinator_delegate + 8] = 0;
      swift_unknownObjectWeakInit();
      swift_unknownObjectWeakInit();
      v28 = &v27[OBJC_IVAR____TtC9PassKitUI31CarKeyProvisioningUICoordinator_renderer];
      *&v27[OBJC_IVAR____TtC9PassKitUI31CarKeyProvisioningUICoordinator_renderer + 8] = 0;
      swift_unknownObjectWeakInit();
      *&v27[OBJC_IVAR____TtC9PassKitUI31CarKeyProvisioningUICoordinator_credentialIndex] = 0;
      *&v27[OBJC_IVAR____TtC9PassKitUI31CarKeyProvisioningUICoordinator_composer] = 0;
      *&v27[OBJC_IVAR____TtC9PassKitUI31CarKeyProvisioningUICoordinator_fieldsModel] = 0;
      *&v27[OBJC_IVAR____TtC9PassKitUI31CarKeyProvisioningUICoordinator_provisioningError] = 0;
      *&v27[OBJC_IVAR____TtC9PassKitUI31CarKeyProvisioningUICoordinator_provisionedPasses] = 0;
      v27[OBJC_IVAR____TtC9PassKitUI31CarKeyProvisioningUICoordinator_queuedPendingProvisioning] = 0;
      *&v27[OBJC_IVAR____TtC9PassKitUI31CarKeyProvisioningUICoordinator_idleTimerAssertion] = 0;
      *&v27[OBJC_IVAR____TtC9PassKitUI31CarKeyProvisioningUICoordinator_context] = v12;
      *&v27[OBJC_IVAR____TtC9PassKitUI31CarKeyProvisioningUICoordinator_configuration] = v21;
      swift_beginAccess();
      swift_unknownObjectWeakAssign();
      swift_beginAccess();
      *(v28 + 1) = &off_1F3BC1D90;
      swift_unknownObjectWeakAssign();
      v35.receiver = v27;
      v35.super_class = v26;
      sub_1BE048964();
      sub_1BE048964();
      v29 = objc_msgSendSuper2(&v35, sel_init);

      v30 = &v29[OBJC_IVAR____TtC9PassKitUI31CarKeyProvisioningUICoordinator_delegate];
      swift_beginAccess();
      *(v30 + 1) = &off_1F3BA70C8;
      swift_unknownObjectWeakAssign();
      v31 = *(v13 + OBJC_IVAR____TtC9PassKitUI36ProvisioningCarKeyInvitationFlowItem_coordinator);
      *(v13 + OBJC_IVAR____TtC9PassKitUI36ProvisioningCarKeyInvitationFlowItem_coordinator) = v29;

      return v34;
    }
  }

  return 2;
}

uint64_t sub_1BD442D7C()
{
  v1 = *(v0 + OBJC_IVAR____TtC9PassKitUI36ProvisioningCarKeyInvitationFlowItem_identifier);
  sub_1BE048C84();
  return v1;
}

uint64_t sub_1BD442DB8(uint64_t a1, uint64_t a2)
{
  *(v2 + OBJC_IVAR____TtC9PassKitUI36ProvisioningCarKeyInvitationFlowItem_delegate + 8) = a2;
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

void sub_1BD442FB8(void *a1, char a2)
{
  v3 = v2;
  if (a2)
  {
    v5 = v3 + OBJC_IVAR____TtC9PassKitUI36ProvisioningCarKeyInvitationFlowItem_delegate;
    if (swift_unknownObjectWeakLoadStrong())
    {
      v6 = *(v5 + 8);
      ObjectType = swift_getObjectType();
      v28[0] = a1;
      v29 = 1;
      v8 = a1;
      sub_1BD865A00(v3, &off_1F3BA70D8, v28, ObjectType, v6);
      swift_unknownObjectRelease();
LABEL_8:
      sub_1BD12FF7C(v28);
      return;
    }

    return;
  }

  v9 = [*(v3 + OBJC_IVAR____TtC9PassKitUI36ProvisioningCarKeyInvitationFlowItem_credential) invitation];
  if (!v9)
  {
LABEL_12:
    sub_1BE053994();
    __break(1u);
    return;
  }

  v10 = v9;
  objc_opt_self();
  v11 = swift_dynamicCastObjCClass();
  if (!v11)
  {

    goto LABEL_12;
  }

  v12 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD38570);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1BE0B6CA0;
  v14 = *(v3 + OBJC_IVAR____TtC9PassKitUI36ProvisioningCarKeyInvitationFlowItem_context);
  v15 = type metadata accessor for ProvisioningCarInvitationActivationFlowItem();
  v16 = objc_allocWithZone(v15);
  *&v16[OBJC_IVAR____TtC9PassKitUI43ProvisioningCarInvitationActivationFlowItem_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v17 = &v16[OBJC_IVAR____TtC9PassKitUI43ProvisioningCarInvitationActivationFlowItem_identifier];
  *v17 = 0xD00000000000001FLL;
  *(v17 + 1) = 0x80000001BE129B30;
  *&v16[OBJC_IVAR____TtC9PassKitUI43ProvisioningCarInvitationActivationFlowItem_context] = v14;
  *&v16[OBJC_IVAR____TtC9PassKitUI43ProvisioningCarInvitationActivationFlowItem_provisionedPasses] = a1;
  *&v16[OBJC_IVAR____TtC9PassKitUI43ProvisioningCarInvitationActivationFlowItem_invitation] = v12;
  v27.receiver = v16;
  v27.super_class = v15;
  swift_retain_n();
  v18 = a1;
  v19 = v10;
  *(v13 + 32) = objc_msgSendSuper2(&v27, sel_init);
  *(v13 + 40) = &off_1F3B9FE30;
  objc_allocWithZone(type metadata accessor for ProvisioningPassIngestionSection());
  v20 = v18;
  v21 = sub_1BD989980(v14, v20);

  *(v13 + 48) = v21;
  *(v13 + 56) = &off_1F3BC8F80;
  type metadata accessor for UIStaticFlowSection();
  v22 = swift_allocObject();
  *(v22 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(v22 + 40) = 0xD000000000000013;
  *(v22 + 48) = 0x80000001BE11E190;
  *(v22 + 56) = v13;
  *(v22 + 32) = 514;
  v23 = v3 + OBJC_IVAR____TtC9PassKitUI36ProvisioningCarKeyInvitationFlowItem_delegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v24 = *(v23 + 8);
    v25 = swift_getObjectType();
    v26 = sub_1BE04BD44();
    v28[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40E70);
    v28[0] = v26;
    v29 = 0;
    (*(v24 + 8))(v3, &off_1F3BA70D8, v28, v22, &off_1F3B98C00, v25, v24);

    swift_unknownObjectRelease();

    goto LABEL_8;
  }
}

uint64_t sub_1BD443350(unint64_t a1)
{
  v1 = a1;
  v24 = MEMORY[0x1E69E7CC0];
  if (a1 >> 62)
  {
    goto LABEL_30;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1BE053704())
  {
    v3 = 0;
    v4 = v1 & 0xC000000000000001;
    v5 = v1 & 0xFFFFFFFFFFFFFF8;
    v6 = &selRef_recurringPaymentMemo;
    v23 = v1;
    while (1)
    {
      if (v4)
      {
        v7 = MEMORY[0x1BFB40900](v3, v1);
      }

      else
      {
        if (v3 >= *(v5 + 16))
        {
          goto LABEL_29;
        }

        v7 = *(v1 + 8 * v3 + 32);
      }

      v8 = v7;
      v9 = v3 + 1;
      if (__OFADD__(v3, 1))
      {
        break;
      }

      v10 = [v7 v6[161]];
      if (v10)
      {
        v11 = v10;
        v12 = [v10 status];

        if (v12 > 1)
        {
          if ((v12 - 4) < 2)
          {
            goto LABEL_23;
          }
        }

        else if (v12 == 1)
        {
          goto LABEL_23;
        }
      }

      else
      {
        v13 = [v8 purchasedProductCredential];
        if (!v13)
        {
          goto LABEL_23;
        }

        v14 = v13;
        v15 = [v13 purchase];
        if (!v15)
        {

          goto LABEL_7;
        }

        v16 = i;
        v17 = v5;
        v18 = v4;
        v19 = v6;
        v20 = v15;
        v21 = [v15 state];

        if (v21 > 1)
        {
          v6 = v19;
          if (v21 == 2)
          {
            goto LABEL_25;
          }

          v4 = v18;
          v5 = v17;
          i = v16;
          v1 = v23;
        }

        else
        {
          v6 = v19;
          if (!v21)
          {
LABEL_25:

            v4 = v18;
            v5 = v17;
            i = v16;
            v1 = v23;
            goto LABEL_7;
          }

          v4 = v18;
          v5 = v17;
          i = v16;
          v1 = v23;
          if (v21 == 1)
          {
LABEL_23:
            sub_1BE0538C4();
            sub_1BE0538F4();
            sub_1BE053904();
            sub_1BE0538D4();
            goto LABEL_7;
          }
        }
      }

LABEL_7:
      ++v3;
      if (v9 == i)
      {
        return v24;
      }
    }

    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    ;
  }

  return MEMORY[0x1E69E7CC0];
}

void sub_1BD4435E4(uint64_t a1, void *a2, uint64_t a3)
{
  v7 = sub_1BE04B944();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = &v73 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1BE04D214();
  v74 = *(v12 - 8);
  v75 = v12;
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = &v73 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16, v17);
  v19 = &v73 - v18;
  v78 = [objc_allocWithZone(sub_1BE04C114()) init];
  v79 = a3;
  v76 = a1;
  v77 = v3;
  if (!a2)
  {
    if (!a3)
    {
      v21 = MEMORY[0x1E69E7CC0];
      v39 = 1;
      goto LABEL_48;
    }

    v33 = sub_1BE048C84();
    v34 = sub_1BD443350(v33);

    if (v34 >> 62)
    {
      if (sub_1BE053704())
      {
        goto LABEL_7;
      }
    }

    else if (*((v34 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_7:
      sub_1BE04BB94();
      v35 = sub_1BE04B8E4();
      (*(v8 + 8))(v11, v7);
      v21 = sub_1BE04C0E4();

      sub_1BE048C84();
LABEL_17:
      v36 = v79;
      sub_1BE04D0F4();
      sub_1BE048C84();
      sub_1BE048C84();
      v40 = sub_1BE04D204();
      v41 = sub_1BE052C54();

      if (os_log_type_enabled(v40, v41))
      {
        v42 = v21;
        v43 = swift_slowAlloc();
        v44 = swift_slowAlloc();
        v80 = v44;
        *v43 = 134218242;
        if (v34 >> 62)
        {
          v45 = sub_1BE053704();
        }

        else
        {
          v45 = *((v34 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        *(v43 + 4) = v45;

        *(v43 + 12) = 2080;
        v46 = sub_1BE04BDF4();
        v47 = MEMORY[0x1BFB3F7F0](v42, v46);
        v49 = sub_1BD123690(v47, v48, &v80);

        *(v43 + 14) = v49;
        _os_log_impl(&dword_1BD026000, v40, v41, "Found requirements for %ld credentials: %s", v43, 0x16u);
        __swift_destroy_boxed_opaque_existential_0(v44);
        MEMORY[0x1BFB45F20](v44, -1, -1);
        v50 = v43;
        v21 = v42;
        MEMORY[0x1BFB45F20](v50, -1, -1);
      }

      else
      {

        swift_bridgeObjectRelease_n();
      }

      (v74[1])(v15, v75);
      goto LABEL_24;
    }

    v21 = MEMORY[0x1E69E7CC0];
    goto LABEL_17;
  }

  v20 = a2;
  v21 = sub_1BE04C0F4();
  sub_1BE048C84();
  sub_1BE04D0F4();
  v22 = v20;
  v23 = sub_1BE04D204();
  v24 = sub_1BE052C54();

  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v73 = swift_slowAlloc();
    v80 = v73;
    *v25 = 136315394;
    v27 = sub_1BE04BDF4();
    v28 = MEMORY[0x1BFB3F7F0](v21, v27);
    v30 = sub_1BD123690(v28, v29, &v80);

    *(v25 + 4) = v30;
    *(v25 + 12) = 2112;
    *(v25 + 14) = v22;
    *v26 = a2;
    v31 = v22;
    _os_log_impl(&dword_1BD026000, v23, v24, "Found requirements: %s \n\nfor product: %@", v25, 0x16u);
    sub_1BD1E236C(v26);
    MEMORY[0x1BFB45F20](v26, -1, -1);
    v32 = v73;
    __swift_destroy_boxed_opaque_existential_0(v73);
    MEMORY[0x1BFB45F20](v32, -1, -1);
    MEMORY[0x1BFB45F20](v25, -1, -1);
  }

  else
  {
  }

  (v74[1])(v19, v75);
  v36 = v79;
  sub_1BE048C84();
  v37 = [v22 configuration];
  if (v37)
  {
    v38 = v37;
    a3 = [v37 featureIdentifier];

    if (a3)
    {
      v39 = 0;
LABEL_47:

      goto LABEL_48;
    }

    if (!v36)
    {
      a3 = 0;
      v39 = 1;
LABEL_48:
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD38570);
      v62 = swift_allocObject();
      *(v62 + 16) = xmmword_1BE0B98D0;
      v63 = objc_allocWithZone(type metadata accessor for ProvisioningHSA2FlowItem());
      v64 = v76;
      sub_1BE048964();
      sub_1BE048C84();
      v65 = sub_1BD893F64(v64, v21, a3, v39);

      *(v62 + 32) = v65;
      *(v62 + 40) = &off_1F3BC20B8;
      v66 = objc_allocWithZone(type metadata accessor for ProvisioningPasscodeUpgradeFlowSection());
      v67 = sub_1BE048964();
      v68 = sub_1BD25D5A8(v67, v21, 0);

      *(v62 + 48) = v68;
      *(v62 + 56) = &off_1F3B99F60;
      v69 = objc_allocWithZone(type metadata accessor for ProvisioningManateeSetupFlowItem());
      v70 = sub_1BE048964();
      v71 = sub_1BD68F128(v70, v21, a3, v39);

      *(v62 + 64) = v71;
      *(v62 + 72) = &off_1F3BB44C8;
      v72 = v77;
      *(v77 + 24) = 0;
      swift_unknownObjectWeakInit();
      *(v72 + 32) = 514;

      *(v72 + 40) = 0xD000000000000017;
      *(v72 + 48) = 0x80000001BE129BC0;
      *(v72 + 56) = v62;
      *(v72 + 32) = 514;
      return;
    }

LABEL_24:
    if (v36 >> 62)
    {
      goto LABEL_45;
    }

    for (i = *((v36 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1BE053704())
    {
      v52 = v36 & 0xC000000000000001;
      v74 = v21;
      v75 = v36 & 0xFFFFFFFFFFFFFF8;
      sub_1BE048C84();
      v53 = 0;
      a3 = 0;
      v39 = 1;
      v21 = &selRef__updateDisplayForFieldTypeDate_;
      while (1)
      {
        if (v52)
        {
          v54 = MEMORY[0x1BFB40900](v53, v36);
        }

        else
        {
          if (v53 >= *(v75 + 16))
          {
            goto LABEL_44;
          }

          v54 = *(v36 + 8 * v53 + 32);
        }

        v55 = v54;
        v56 = v53 + 1;
        if (__OFADD__(v53, 1))
        {
          break;
        }

        v57 = [v54 accountCredential];
        if (v57)
        {
          v58 = v57;
          v59 = [v57 account];

          if (!v59)
          {
            __break(1u);
            goto LABEL_50;
          }

          v60 = [v59 feature];

          v36 = v79;
          if (v60)
          {

            v39 = 0;
            a3 = v60;
            goto LABEL_42;
          }
        }

        if ([v55 isAppleBalanceCredential])
        {

          v39 = 0;
          a3 = 4;
          goto LABEL_42;
        }

        v61 = [v55 isPeerPaymentCredential];

        if (v61)
        {
          a3 = 1;
        }

        v39 &= v61 ^ 1;
        ++v53;
        if (v56 == i)
        {

LABEL_42:
          v21 = v74;
          goto LABEL_47;
        }
      }

      __break(1u);
LABEL_44:
      __break(1u);
LABEL_45:
      ;
    }

    a3 = 0;
    v39 = 1;
    goto LABEL_47;
  }

LABEL_50:
  __break(1u);
}

char *sub_1BD443E20(double a1, double a2, double a3, double a4)
{
  v9 = OBJC_IVAR____TtC9PassKitUI50PKDashboardFinanceKitTransactionCollectionViewCell_transactionView;
  *&v4[v9] = [objc_allocWithZone(PKPaymentTransactionView) init];
  *&v4[OBJC_IVAR____TtC9PassKitUI50PKDashboardFinanceKitTransactionCollectionViewCell_iconTask] = 0;
  v10 = OBJC_IVAR____TtC9PassKitUI50PKDashboardFinanceKitTransactionCollectionViewCell_currentTransactionID;
  v11 = sub_1BE04AFE4();
  (*(*(v11 - 8) + 56))(&v4[v10], 1, 1, v11);
  v16.receiver = v4;
  v16.super_class = type metadata accessor for PKDashboardFinanceKitTransactionCollectionViewCell();
  v12 = objc_msgSendSuper2(&v16, sel_initWithFrame_, a1, a2, a3, a4);
  v13 = [v12 contentView];
  [v13 addSubview_];

  v14 = [v12 contentView];
  [v14 setClipsToBounds_];

  return v12;
}

uint64_t sub_1BD44408C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39980);
  MEMORY[0x1EEE9AC00](v1 - 8, v2);
  v4 = &v11 - v3;
  v5 = type metadata accessor for PKDashboardFinanceKitTransactionCollectionViewCell();
  v12.receiver = v0;
  v12.super_class = v5;
  objc_msgSendSuper2(&v12, sel_prepareForReuse);
  v6 = *&v0[OBJC_IVAR____TtC9PassKitUI50PKDashboardFinanceKitTransactionCollectionViewCell_transactionView];
  [v6 setPrimaryColor_];
  [v6 setSecondaryColor_];
  [v6 setPrimaryString_];
  [v6 setSecondaryString_];
  [v6 setTertiaryString_];
  [v6 setTransactionValueAttributedText_];
  [v6 setBadgeString_];
  [v6 setShowsAvatarView_];
  [v6 setShowsDisclosureView_];
  [v6 setPrimaryImage_];
  [v6 setSecondaryBadgeSymbol_];
  [v6 setSecondaryBadgeSymbolConfiguration_];
  v7 = OBJC_IVAR____TtC9PassKitUI50PKDashboardFinanceKitTransactionCollectionViewCell_iconTask;
  if (*&v0[OBJC_IVAR____TtC9PassKitUI50PKDashboardFinanceKitTransactionCollectionViewCell_iconTask])
  {
    sub_1BE048964();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3E5A0);
    sub_1BE052944();
  }

  *&v0[v7] = 0;

  v8 = sub_1BE04AFE4();
  (*(*(v8 - 8) + 56))(v4, 1, 1, v8);
  v9 = OBJC_IVAR____TtC9PassKitUI50PKDashboardFinanceKitTransactionCollectionViewCell_currentTransactionID;
  swift_beginAccess();
  sub_1BD12651C(v4, &v0[v9]);
  return swift_endAccess();
}

uint64_t type metadata accessor for PKDashboardFinanceKitTransactionCollectionViewCell()
{
  result = qword_1EBD462B0;
  if (!qword_1EBD462B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1BD444474(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3E580);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v34 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39980);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v11 = &v34 - v10;
  v12 = sub_1BE04AFE4();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12, v15);
  v36 = &v34 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16, v17);
  v19 = &v34 - v18;
  sub_1BD444834(a1 + OBJC_IVAR____TtC9PassKitUI36PKDashboardFinanceKitTransactionItem_transaction, a1 + OBJC_IVAR____TtC9PassKitUI36PKDashboardFinanceKitTransactionItem_institution);
  sub_1BE049A14();
  v20 = *(v13 + 16);
  v20(v11, v19, v12);
  (*(v13 + 56))(v11, 0, 1, v12);
  v21 = OBJC_IVAR____TtC9PassKitUI50PKDashboardFinanceKitTransactionCollectionViewCell_currentTransactionID;
  swift_beginAccess();
  sub_1BD12651C(v11, &v2[v21]);
  swift_endAccess();
  v22 = v2;
  v35 = OBJC_IVAR____TtC9PassKitUI50PKDashboardFinanceKitTransactionCollectionViewCell_iconTask;
  if (*&v2[OBJC_IVAR____TtC9PassKitUI50PKDashboardFinanceKitTransactionCollectionViewCell_iconTask])
  {
    sub_1BE048964();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3E5A0);
    sub_1BE052944();
  }

  v23 = sub_1BE0528D4();
  (*(*(v23 - 8) + 56))(v7, 1, 1, v23);
  v24 = v36;
  v20(v36, v19, v12);
  sub_1BE0528A4();
  v25 = v22;
  v26 = sub_1BE052894();
  v27 = (*(v13 + 80) + 32) & ~*(v13 + 80);
  v34 = v19;
  v28 = v7;
  v29 = (v14 + v27 + 7) & 0xFFFFFFFFFFFFFFF8;
  v30 = swift_allocObject();
  v31 = MEMORY[0x1E69E85E0];
  *(v30 + 16) = v26;
  *(v30 + 24) = v31;
  (*(v13 + 32))(v30 + v27, v24, v12);
  *(v30 + v29) = v25;
  v32 = sub_1BDA543A4(0, 0, v28, &unk_1BE0D68F0, v30);
  (*(v13 + 8))(v34, v12);
  *&v22[v35] = v32;
}

void sub_1BD444834(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v67 = a2;
  v59 = sub_1BE04BD74();
  v58 = *(v59 - 8);
  MEMORY[0x1EEE9AC00](v59, v5);
  v57 = &v56 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = sub_1BE04B2F4();
  v61 = *(v62 - 8);
  MEMORY[0x1EEE9AC00](v62, v7);
  v60 = &v56 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1BE04AF64();
  v65 = *(v9 - 8);
  v66 = v9;
  MEMORY[0x1EEE9AC00](v9, v10);
  v63 = &v56 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1BE04B0F4();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12, v14);
  v16 = &v56 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1BE0493F4();
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17, v19);
  v21 = &v56 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = a1;
  sub_1BE049A04();
  v22 = sub_1BE052404();

  [v3 setPrimaryString_];

  sub_1BE0499A4();
  sub_1BE04B054();
  sub_1BE0493E4();
  (*(v13 + 8))(v16, v12);
  (*(v18 + 8))(v21, v17);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD430F8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BE0B6CA0;
  v24 = *MEMORY[0x1E69DB650];
  *(inited + 32) = *MEMORY[0x1E69DB650];
  v25 = sub_1BD1F2290();
  v26 = v24;
  sub_1BE051464();
  v27 = sub_1BE052FE4();
  v28 = MEMORY[0x1E69DB600];
  *(inited + 40) = v27;
  v29 = *v28;
  *(inited + 64) = v25;
  *(inited + 72) = v29;
  v30 = objc_opt_self();
  v31 = v29;
  v32 = [v30 clearColor];
  *(inited + 104) = v25;
  *(inited + 80) = v32;
  sub_1BD1ACD28(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3BF68);
  swift_arrayDestroy();
  v33 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
  v34 = sub_1BE052404();

  type metadata accessor for Key(0);
  sub_1BD4469F8(&qword_1EBD37B80, type metadata accessor for Key);
  v35 = sub_1BE052224();

  v36 = [v33 initWithString:v34 attributes:v35];

  v68 = v3;
  [v3 setTransactionValueAttributedText_];
  sub_1BE0499C4();
  if (v37)
  {
    v38 = sub_1BE052404();
  }

  else
  {
    v38 = 0;
  }

  [v68 setSecondaryString_];

  v39 = v63;
  sub_1BE049974();
  v40 = sub_1BE04AE64();
  v41 = v66;
  v42 = *(v65 + 8);
  v42(v39, v66);
  v43 = PKRelativeDateStringWithFullDateForUnits();

  if (v43)
  {
    sub_1BE052434();
    v45 = v44;
  }

  else
  {
    v45 = 0;
  }

  if ((sub_1BE049164() & 1) != 0 || (v46 = v60, sub_1BE04B2A4(), sub_1BE049974(), v47 = sub_1BE04B164(), v42(v39, v41), (*(v61 + 8))(v46, v62), (v47 & 1) == 0))
  {
    if (!v45)
    {
      v54 = 0;
LABEL_15:
      v55 = v68;
      [v68 setTertiaryString_];

      [v55 setShowsDisclosureView_];
      return;
    }

LABEL_12:
    v53 = sub_1BE052404();

    v54 = [v53 pk_uppercaseFirstStringForPreferredLocale];

    if (v54)
    {
      sub_1BE052434();

      v54 = sub_1BE052404();
    }

    goto LABEL_15;
  }

  v48 = v58;
  v49 = v57;
  v50 = v59;
  (*(v58 + 104))(v57, *MEMORY[0x1E69B80D0], v59);
  v51 = PKPassKitBundle();
  if (v51)
  {
    v52 = v51;
    sub_1BE04B6F4();

    (*(v48 + 8))(v49, v50);
    goto LABEL_12;
  }

  __break(1u);
}

uint64_t sub_1BD444FB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v6 = sub_1BE04AFE4();
  v5[4] = v6;
  v7 = *(v6 - 8);
  v5[5] = v7;
  v5[6] = *(v7 + 64);
  v5[7] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3E580);
  v5[8] = swift_task_alloc();
  v8 = sub_1BE0491F4();
  v5[9] = v8;
  v9 = *(v8 - 8);
  v5[10] = v9;
  v5[11] = *(v9 + 64);
  v5[12] = swift_task_alloc();
  v5[13] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD45CC0);
  v5[14] = swift_task_alloc();
  v5[15] = swift_task_alloc();
  v5[16] = sub_1BE0528A4();
  v5[17] = sub_1BE052894();
  v11 = sub_1BE052844();
  v5[18] = v11;
  v5[19] = v10;

  return MEMORY[0x1EEE6DFA0](sub_1BD4451A0, v11, v10);
}

uint64_t sub_1BD4451A0()
{
  sub_1BE0490F4();
  v0[20] = sub_1BE0490B4();
  v1 = swift_task_alloc();
  v0[21] = v1;
  *v1 = v0;
  v1[1] = sub_1BD44525C;
  v2 = v0[15];
  v3 = v0[2];

  return MEMORY[0x1EEDC14C0](v2, v3, 1, 1);
}

uint64_t sub_1BD44525C()
{
  v2 = *v1;
  *(*v1 + 176) = v0;

  if (v0)
  {
    v3 = *(v2 + 144);
    v4 = *(v2 + 152);
    v5 = sub_1BD4458B4;
  }

  else
  {

    v3 = *(v2 + 144);
    v4 = *(v2 + 152);
    v5 = sub_1BD445378;
  }

  return MEMORY[0x1EEE6DFA0](v5, v3, v4);
}

uint64_t sub_1BD445378()
{
  v1 = v0[14];
  v2 = v0[15];
  v3 = v0[9];
  v4 = v0[10];

  v5 = PKUIScreenScale();
  sub_1BD0DE19C(v2, v1, &qword_1EBD45CC0);
  if ((*(v4 + 48))(v1, 1, v3) == 1)
  {
    sub_1BD0DE53C(v0[14], &qword_1EBD45CC0);
  }

  else
  {
    v6 = *(v0[10] + 32);
    v6(v0[13], v0[14], v0[9]);
    v7 = sub_1BE0491E4();
    v9 = v8;
    v10 = objc_allocWithZone(MEMORY[0x1E69DCAB8]);
    v11 = sub_1BE04AAB4();
    v12 = [v10 initWithData_];

    sub_1BD1245AC(v7, v9);
    if (v12)
    {
      v13 = v0[12];
      v14 = v0[13];
      v55 = v14;
      v56 = v0[11];
      v48 = v0[10];
      v16 = v0[8];
      v15 = v0[9];
      v51 = v15;
      v57 = v16;
      v17 = v0[7];
      v54 = v13;
      v52 = v0[6];
      v58 = v6;
      v18 = v0[4];
      v19 = v0[5];
      v53 = v18;
      v20 = v0[2];
      v49 = v0[3];
      v21 = sub_1BE0528D4();
      (*(*(v21 - 8) + 56))(v16, 1, 1, v21);
      (*(v19 + 16))(v17, v20, v18);
      (*(v48 + 16))(v13, v14, v15);
      v50 = v49;
      v22 = v12;
      v23 = sub_1BE052894();
      v24 = (*(v19 + 80) + 40) & ~*(v19 + 80);
      v25 = (v52 + v24 + 7) & 0xFFFFFFFFFFFFFFF8;
      v26 = (*(v48 + 80) + v25 + 8) & ~*(v48 + 80);
      v27 = swift_allocObject();
      v28 = MEMORY[0x1E69E85E0];
      *(v27 + 2) = v23;
      *(v27 + 3) = v28;
      *(v27 + 4) = v50;
      (*(v19 + 32))(&v27[v24], v17, v53);
      *&v27[v25] = v22;
      v58(&v27[v26], v54, v51);
      *&v27[(v56 + v26 + 7) & 0xFFFFFFFFFFFFFFF8] = v5;
      sub_1BD122C00(0, 0, v57, &unk_1BE0D6918, v27);

      (*(v48 + 8))(v55, v51);
      goto LABEL_8;
    }

    (*(v0[10] + 8))(v0[13], v0[9]);
  }

  v29 = PKMapsColorForMerchantCategory();
  v30 = PKIconForGenericBusiness();

  if (v30)
  {
    v32 = v0[7];
    v31 = v0[8];
    v59 = v31;
    v34 = v0[5];
    v33 = v0[6];
    v36 = v0[3];
    v35 = v0[4];
    v37 = v0[2];
    v38 = sub_1BE0528D4();
    (*(*(v38 - 8) + 56))(v31, 1, 1, v38);
    (*(v34 + 16))(v32, v37, v35);
    v39 = v36;
    v40 = v30;
    v41 = sub_1BE052894();
    v42 = (*(v34 + 80) + 40) & ~*(v34 + 80);
    v43 = (v33 + v42 + 7) & 0xFFFFFFFFFFFFFFF8;
    v44 = swift_allocObject();
    v45 = MEMORY[0x1E69E85E0];
    *(v44 + 2) = v41;
    *(v44 + 3) = v45;
    *(v44 + 4) = v39;
    (*(v34 + 32))(&v44[v42], v32, v35);
    *&v44[v43] = v40;
    *&v44[(v43 + 15) & 0xFFFFFFFFFFFFFFF8] = v5;
    sub_1BD122C00(0, 0, v59, &unk_1BE0D6908, v44);
  }

LABEL_8:
  sub_1BD0DE53C(v0[15], &qword_1EBD45CC0);

  v46 = v0[1];

  return v46();
}

uint64_t sub_1BD4458B4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1BD445978(double a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 72) = a1;
  *(v8 + 56) = a7;
  *(v8 + 64) = a8;
  *(v8 + 40) = a5;
  *(v8 + 48) = a6;
  v9 = sub_1BE04AFE4();
  *(v8 + 80) = v9;
  *(v8 + 88) = *(v9 - 8);
  *(v8 + 96) = swift_task_alloc();
  *(v8 + 104) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD39AD0);
  *(v8 + 112) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39980);
  *(v8 + 120) = swift_task_alloc();
  *(v8 + 128) = swift_task_alloc();
  sub_1BE0528A4();
  *(v8 + 136) = sub_1BE052894();
  v11 = sub_1BE052844();

  return MEMORY[0x1EEE6DFA0](sub_1BD445AF4, v11, v10);
}

id sub_1BD445AF4()
{
  v1 = *(v0 + 128);
  v3 = *(v0 + 104);
  v2 = *(v0 + 112);
  v4 = *(v0 + 80);
  v5 = *(v0 + 88);
  v7 = *(v0 + 40);
  v6 = *(v0 + 48);

  v8 = OBJC_IVAR____TtC9PassKitUI50PKDashboardFinanceKitTransactionCollectionViewCell_currentTransactionID;
  swift_beginAccess();
  (*(v5 + 16))(v1, v6, v4);
  (*(v5 + 56))(v1, 0, 1, v4);
  v9 = *(v3 + 48);
  sub_1BD0DE19C(v7 + v8, v2, &qword_1EBD39980);
  sub_1BD0DE19C(v1, v2 + v9, &qword_1EBD39980);
  v10 = *(v5 + 48);
  if (v10(v2, 1, v4) != 1)
  {
    v12 = *(v0 + 80);
    sub_1BD0DE19C(*(v0 + 112), *(v0 + 120), &qword_1EBD39980);
    v13 = v10(v2 + v9, 1, v12);
    v14 = *(v0 + 120);
    v15 = *(v0 + 128);
    if (v13 != 1)
    {
      v18 = *(v0 + 112);
      v20 = *(v0 + 88);
      v19 = *(v0 + 96);
      v21 = *(v0 + 80);
      (*(v20 + 32))(v19, v2 + v9, v21);
      sub_1BD4469F8(&unk_1EBD36A30, MEMORY[0x1E69695A8]);
      v22 = sub_1BE052334();
      v23 = *(v20 + 8);
      v23(v19, v21);
      sub_1BD0DE53C(v15, &qword_1EBD39980);
      v23(v14, v21);
      sub_1BD0DE53C(v18, &qword_1EBD39980);
      if ((v22 & 1) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_8;
    }

    v16 = *(v0 + 80);
    v17 = *(v0 + 88);
    sub_1BD0DE53C(*(v0 + 128), &qword_1EBD39980);
    (*(v17 + 8))(v14, v16);
LABEL_6:
    sub_1BD0DE53C(*(v0 + 112), &unk_1EBD39AD0);
    goto LABEL_13;
  }

  v11 = *(v0 + 80);
  sub_1BD0DE53C(*(v0 + 128), &qword_1EBD39980);
  if (v10(v2 + v9, 1, v11) != 1)
  {
    goto LABEL_6;
  }

  sub_1BD0DE53C(*(v0 + 112), &qword_1EBD39980);
LABEL_8:
  v24 = sub_1BE0491C4();
  if (v24)
  {
    v25 = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithCGColor_];

    v24 = v25;
    result = PKIconWithImageAndBackgroundColor();
    if (!result)
    {
      __break(1u);
      return result;
    }

    v27 = result;
  }

  else
  {
    v27 = *(v0 + 56);
  }

  [*(*(v0 + 40) + OBJC_IVAR____TtC9PassKitUI50PKDashboardFinanceKitTransactionCollectionViewCell_transactionView) setPrimaryImage:v27 animated:1];

LABEL_13:

  v28 = *(v0 + 8);

  return v28();
}

uint64_t sub_1BD445EE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[6] = a5;
  v6[7] = a6;
  v6[5] = a4;
  v7 = sub_1BE04AFE4();
  v6[8] = v7;
  v6[9] = *(v7 - 8);
  v6[10] = swift_task_alloc();
  v6[11] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD39AD0);
  v6[12] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39980);
  v6[13] = swift_task_alloc();
  v6[14] = swift_task_alloc();
  sub_1BE0528A4();
  v6[15] = sub_1BE052894();
  v9 = sub_1BE052844();

  return MEMORY[0x1EEE6DFA0](sub_1BD446060, v9, v8);
}

uint64_t sub_1BD446060()
{
  v1 = v0[14];
  v3 = v0[11];
  v2 = v0[12];
  v4 = v0[8];
  v5 = v0[9];
  v7 = v0[5];
  v6 = v0[6];

  v8 = OBJC_IVAR____TtC9PassKitUI50PKDashboardFinanceKitTransactionCollectionViewCell_currentTransactionID;
  swift_beginAccess();
  (*(v5 + 16))(v1, v6, v4);
  (*(v5 + 56))(v1, 0, 1, v4);
  v9 = *(v3 + 48);
  sub_1BD0DE19C(v7 + v8, v2, &qword_1EBD39980);
  sub_1BD0DE19C(v1, v2 + v9, &qword_1EBD39980);
  v10 = *(v5 + 48);
  if (v10(v2, 1, v4) != 1)
  {
    v12 = v0[8];
    sub_1BD0DE19C(v0[12], v0[13], &qword_1EBD39980);
    v13 = v10(v2 + v9, 1, v12);
    v14 = v0[13];
    v15 = v0[14];
    if (v13 != 1)
    {
      v18 = v0[12];
      v20 = v0[9];
      v19 = v0[10];
      v21 = v0[8];
      (*(v20 + 32))(v19, v2 + v9, v21);
      sub_1BD4469F8(&unk_1EBD36A30, MEMORY[0x1E69695A8]);
      v22 = sub_1BE052334();
      v23 = *(v20 + 8);
      v23(v19, v21);
      sub_1BD0DE53C(v15, &qword_1EBD39980);
      v23(v14, v21);
      sub_1BD0DE53C(v18, &qword_1EBD39980);
      if ((v22 & 1) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_8;
    }

    v16 = v0[8];
    v17 = v0[9];
    sub_1BD0DE53C(v0[14], &qword_1EBD39980);
    (*(v17 + 8))(v14, v16);
LABEL_6:
    sub_1BD0DE53C(v0[12], &unk_1EBD39AD0);
    goto LABEL_9;
  }

  v11 = v0[8];
  sub_1BD0DE53C(v0[14], &qword_1EBD39980);
  if (v10(v2 + v9, 1, v11) != 1)
  {
    goto LABEL_6;
  }

  sub_1BD0DE53C(v0[12], &qword_1EBD39980);
LABEL_8:
  [*(v0[5] + OBJC_IVAR____TtC9PassKitUI50PKDashboardFinanceKitTransactionCollectionViewCell_transactionView) setPrimaryImage:v0[7] animated:1];
LABEL_9:

  v24 = v0[1];

  return v24();
}

id PKDashboardFinanceKitTransactionCollectionViewCell.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PKDashboardFinanceKitTransactionCollectionViewCell();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_1BD446528()
{
  sub_1BD12513C();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_1BD4465E8(uint64_t a1)
{
  v4 = *(sub_1BE04AFE4() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1BD0F985C;

  return sub_1BD444FB4(a1, v6, v7, v1 + v5, v8);
}

uint64_t sub_1BD446708(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_1BE04AFE4() - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[4];
  v10 = *(v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = swift_task_alloc();
  *(v3 + 16) = v11;
  *v11 = v3;
  v11[1] = sub_1BD0F985C;

  return sub_1BD445EE8(a1, v7, v8, v9, v1 + v6, v10);
}

uint64_t sub_1BD44684C(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_1BE04AFE4() - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(sub_1BE0491F4() - 8);
  v9 = (v7 + *(v8 + 80) + 8) & ~*(v8 + 80);
  v10 = v1[2];
  v11 = v1[3];
  v12 = v1[4];
  v13 = *(v1 + v7);
  v14 = *(v1 + ((*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8));
  v15 = swift_task_alloc();
  *(v3 + 16) = v15;
  *v15 = v3;
  v15[1] = sub_1BD126968;

  return sub_1BD445978(v14, a1, v10, v11, v12, v1 + v6, v13, v1 + v9);
}

uint64_t sub_1BD4469F8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1BD446A6C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3DBE0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v10[-v7];
  v11 = a1;
  v12 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3DC00);
  sub_1BD0DE4F4(&qword_1EBD3DBF8, &qword_1EBD3DC00);
  sub_1BE051A44();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3DF80);
  sub_1BD210888();
  sub_1BD0DE4F4(&qword_1EBD3FBA0, &unk_1EBD3DF80);
  sub_1BE050AE4();
  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_1BD446C44@<X0>(uint64_t a1@<X8>)
{
  *a1 = sub_1BE04F7C4();
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3DC08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3B660);
  sub_1BD0DE4F4(&qword_1EBD3B668, &qword_1EBD3B660);
  return sub_1BE04E2B4();
}

id sub_1BD446D20@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v46 = a1;
  v47 = a2;
  v4 = sub_1BE04BD74();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v40[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = MEMORY[0x1EEE9AC00](v9, v10);
  v13 = &v40[-v12];
  v14 = *MEMORY[0x1E69B80F0];
  v45 = *(v5 + 104);
  v45(&v40[-v12], v14, v4, v11);
  result = PKPassKitBundle();
  if (result)
  {
    v16 = result;
    v17 = sub_1BE04B6F4();
    v19 = v18;

    v42 = *(v5 + 8);
    v42(v13, v4);
    v49 = v17;
    v50 = v19;
    sub_1BD0DDEBC();
    v20 = MEMORY[0x1E69E6158];
    v21 = sub_1BE0506C4();
    v43 = v22;
    v44 = v23;
    v41 = v24;
    (v45)(v8, v14, v4);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF80);
    v25 = swift_allocObject();
    *(v25 + 16) = xmmword_1BE0B69E0;
    *(v25 + 56) = v20;
    *(v25 + 64) = sub_1BD110550();
    v26 = v47;
    *(v25 + 32) = v46;
    *(v25 + 40) = v26;
    sub_1BE048C84();
    v27 = sub_1BE04B714();
    v29 = v28;

    v42(v8, v4);
    v49 = v27;
    v50 = v29;
    v30 = sub_1BE0506C4();
    v32 = v31;
    v33 = v41 & 1;
    v48 = v41 & 1;
    LOBYTE(v49) = v41 & 1;
    v35 = v34 & 1;
    v51 = v34 & 1;
    v36 = v43;
    v37 = v44;
    *a3 = v21;
    *(a3 + 8) = v36;
    *(a3 + 16) = v33;
    *(a3 + 24) = v37;
    *(a3 + 32) = v30;
    *(a3 + 40) = v32;
    *(a3 + 48) = v34 & 1;
    *(a3 + 56) = v38;
    v39 = v36;
    sub_1BD0D7F18(v21, v36, v33);
    sub_1BE048C84();
    sub_1BD0D7F18(v30, v32, v35);
    sub_1BE048C84();
    sub_1BD0DDF10(v30, v32, v35);

    sub_1BD0DDF10(v21, v39, v48);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1BD447078()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF70);
  MEMORY[0x1EEE9AC00](v0 - 8, v1);
  v3 = &v13 - v2;
  v4 = sub_1BE04AA64();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BE04AA54();
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    return sub_1BD226BBC(v3);
  }

  (*(v5 + 32))(v8, v3, v4);
  v10 = [objc_opt_self() sharedApplication];
  v11 = sub_1BE04A9C4();
  sub_1BD1ABAC0(MEMORY[0x1E69E7CC0]);
  type metadata accessor for OpenExternalURLOptionsKey(0);
  sub_1BD1BD0CC();
  v12 = sub_1BE052224();

  [v10 openURL:v11 options:v12 completionHandler:0];

  return (*(v5 + 8))(v8, v4);
}

id sub_1BD44729C@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1BE04BD74();
  v3 = *(v2 - 8);
  v5 = MEMORY[0x1EEE9AC00](v2, v4);
  v7 = v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 104))(v7, *MEMORY[0x1E69B80F0], v2, v5);
  result = PKPassKitBundle();
  if (result)
  {
    v9 = result;
    v10 = sub_1BE04B6F4();
    v12 = v11;

    (*(v3 + 8))(v7, v2);
    v16[0] = v10;
    v16[1] = v12;
    sub_1BD0DDEBC();
    result = sub_1BE0506C4();
    *a1 = result;
    *(a1 + 8) = v13;
    *(a1 + 16) = v14 & 1;
    *(a1 + 24) = v15;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1BD447408()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD462C0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3DBE0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EBD3DF80);
  sub_1BD210888();
  sub_1BD0DE4F4(&qword_1EBD3FBA0, &unk_1EBD3DF80);
  swift_getOpaqueTypeConformance2();
  return sub_1BE051A44();
}

unint64_t sub_1BD447538()
{
  result = qword_1EBD462C8;
  if (!qword_1EBD462C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD462D0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3DBE0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EBD3DF80);
    sub_1BD210888();
    sub_1BD0DE4F4(&qword_1EBD3FBA0, &unk_1EBD3DF80);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD462C8);
  }

  return result;
}

uint64_t sub_1BD447690@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v50 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD462D8);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v47 = &v40 - v7;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD462E0);
  v46 = *(v45 - 8);
  MEMORY[0x1EEE9AC00](v45, v8);
  v44 = &v40 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD462E8);
  v11 = *(v10 - 8);
  v48 = v10;
  v49 = v11;
  MEMORY[0x1EEE9AC00](v10, v12);
  v53 = &v40 - v13;
  v54 = a1;
  v55 = a2;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD462F0);
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD462F8);
  v14 = sub_1BD0DE4F4(&qword_1EBD46300, &qword_1EBD462F0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD46308);
  v16 = sub_1BD0DE4F4(&qword_1EBD46310, &qword_1EBD46308);
  v56 = v15;
  v57 = v16;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_1BE051024();
  v60 = a1;
  v61 = a2;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54210);
  sub_1BE0516C4();
  v18 = v56;
  v19 = v57;
  v20 = v58;
  swift_getKeyPath();
  v60 = v18;
  v61 = v19;
  v62 = v20;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD543A0);
  sub_1BE051904();

  v21 = swift_allocObject();
  *(v21 + 16) = a1;
  *(v21 + 24) = a2;
  v22 = swift_allocObject();
  *(v22 + 16) = a1;
  *(v22 + 24) = a2;
  v23 = a2;
  v41 = a2;
  swift_retain_n();
  swift_retain_n();
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD46318);
  v56 = v43;
  v57 = v42;
  v58 = v14;
  v59 = OpaqueTypeConformance2;
  v43 = swift_getOpaqueTypeConformance2();
  v39 = sub_1BD448A80();
  v24 = v45;
  v25 = v44;
  sub_1BE050F64();

  (*(v46 + 8))(v25, v24);
  v60 = a1;
  v61 = v23;
  sub_1BE0516C4();
  v26 = v56;
  v27 = v57;
  v28 = v58;
  swift_getKeyPath();
  v60 = v26;
  v61 = v27;
  v62 = v28;
  v29 = v47;
  sub_1BE051904();

  type metadata accessor for AccountAutomaticPaymentsModel.PaymentDueWarning(0);
  v56 = v24;
  v57 = v40;
  v58 = v43;
  v59 = v39;
  swift_getOpaqueTypeConformance2();
  sub_1BD4490D8(&qword_1EBD46328, type metadata accessor for AccountAutomaticPaymentsModel.PaymentDueWarning);
  v30 = v50;
  v31 = v48;
  v32 = v53;
  sub_1BE050EF4();
  sub_1BD0DE53C(v29, &qword_1EBD462D8);
  (*(v49 + 8))(v32, v31);
  v60 = a1;
  v61 = v41;
  sub_1BE0516C4();
  v33 = v56;
  v34 = v57;
  v35 = v58;
  swift_getKeyPath();
  v56 = v33;
  v57 = v34;
  v58 = v35;
  v36 = v30 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD46330) + 36);
  sub_1BE051904();

  result = type metadata accessor for ErrorAlertModifier(0);
  v38 = (v36 + *(result + 20));
  *v38 = 0;
  v38[1] = 0;
  return result;
}

uint64_t sub_1BD447D60(uint64_t a1, uint64_t a2)
{
  v4 = sub_1BE04FB44();
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD46308);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v13[-v9];
  sub_1BE04FB14();
  v14 = a1;
  v15 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD46340);
  sub_1BD448CA8();
  sub_1BE04E424();
  v11 = sub_1BD0DE4F4(&qword_1EBD46310, &qword_1EBD46308);
  MEMORY[0x1BFB3CC50](v10, v6, v11);
  return (*(v7 + 8))(v10, v6);
}

uint64_t sub_1BD447F24@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v39 = a3;
  v5 = sub_1BE04E1D4();
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v32 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD394F0);
  MEMORY[0x1EEE9AC00](v33, v8);
  v34 = &v31 - v9;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD394D8);
  MEMORY[0x1EEE9AC00](v38, v10);
  v35 = &v31 - v11;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD46350);
  MEMORY[0x1EEE9AC00](v36, v12);
  v14 = &v31 - v13;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD51330);
  v15 = *(v37 - 8);
  MEMORY[0x1EEE9AC00](v37, v16);
  v18 = &v31 - v17;
  v41 = a1;
  v42 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54210);
  sub_1BE0516A4();
  v19 = v40;
  swift_getKeyPath();
  v41 = v19;
  sub_1BD4490D8(&qword_1EBD54250, type metadata accessor for AccountAutomaticPaymentsModel);
  sub_1BE04B594();

  v20 = *(v19 + OBJC_IVAR____TtC9PassKitUI29AccountAutomaticPaymentsModel__loading);

  if (v20 == 1)
  {
    sub_1BE04E4F4();
    v21 = v37;
    (*(v15 + 16))(v14, v18, v37);
    swift_storeEnumTagMultiPayload();
    sub_1BD0DE4F4(&unk_1EBD49880, &unk_1EBD51330);
    sub_1BD448D60();
    sub_1BE04F9A4();
    return (*(v15 + 8))(v18, v21);
  }

  else
  {
    v23 = v32;
    sub_1BE04E1C4();
    v24 = swift_allocObject();
    *(v24 + 16) = a1;
    *(v24 + 24) = a2;
    sub_1BE048964();
    sub_1BE048964();
    v25 = v34;
    MEMORY[0x1BFB3E7A0](v23, sub_1BD448E1C, v24);
    v41 = a1;
    v42 = a2;
    sub_1BE0516A4();
    v26 = v40;
    swift_getKeyPath();
    v41 = v26;
    sub_1BE04B594();

    LOBYTE(v24) = *(v26 + OBJC_IVAR____TtC9PassKitUI29AccountAutomaticPaymentsModel__configurationValid);

    KeyPath = swift_getKeyPath();
    v28 = swift_allocObject();
    *(v28 + 16) = (v24 & 1) == 0;
    v29 = (v25 + *(v33 + 36));
    *v29 = KeyPath;
    v29[1] = sub_1BD10DF54;
    v29[2] = v28;
    sub_1BE052434();
    sub_1BD10DE58();
    v30 = v35;
    sub_1BE050DE4();

    sub_1BD0DE53C(v25, &qword_1EBD394F0);
    sub_1BD0DE19C(v30, v14, &qword_1EBD394D8);
    swift_storeEnumTagMultiPayload();
    sub_1BD0DE4F4(&unk_1EBD49880, &unk_1EBD51330);
    sub_1BD448D60();
    sub_1BE04F9A4();
    return sub_1BD0DE53C(v30, &qword_1EBD394D8);
  }
}

uint64_t sub_1BD4484A8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54210);
  sub_1BE0516A4();
  sub_1BDA1F184();
}

uint64_t sub_1BD44853C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54210);
  sub_1BE0516A4();
  v0 = [*(v5 + 48) fundingSources];
  if (v0)
  {
    v1 = v0;
    sub_1BD448C54();
    v2 = sub_1BE052744();
  }

  else
  {
    v2 = MEMORY[0x1E69E7CC0];
  }

  if (v2 >> 62)
  {
    v3 = sub_1BE053704();
  }

  else
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v3)
  {
    sub_1BE0516A4();
    sub_1BDA1F184();
  }

  return result;
}

uint64_t sub_1BD44864C@<X0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54210);
  sub_1BE0516A4();
  v2 = sub_1BE04EC54();
  result = sub_1BE0501F4();
  *a1 = v4;
  *(a1 + 8) = v2;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1BD4486DC(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD46338);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v10[-v6];
  sub_1BD0DE19C(a1, &v10[-v6], &qword_1EBD46338);
  v8 = *a2;
  swift_getKeyPath();
  v11 = v8;
  v12 = v7;
  v13 = v8;
  sub_1BD4490D8(&qword_1EBD54250, type metadata accessor for AccountAutomaticPaymentsModel);
  sub_1BE04B584();

  return sub_1BD0DE53C(v7, &qword_1EBD46338);
}

uint64_t sub_1BD44882C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(type metadata accessor for AccountAutomaticPaymentsModel.PaymentDueWarning(0) + 20);
  v5 = sub_1BE0511B4();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, a1 + v4, v5);
}

uint64_t sub_1BD4488D0@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X4>, uint64_t *a3@<X5>, uint64_t a4@<X8>)
{
  v7 = *a1;
  swift_getKeyPath();
  sub_1BD4490D8(&qword_1EBD54250, type metadata accessor for AccountAutomaticPaymentsModel);
  sub_1BE04B594();

  v8 = *a2;
  swift_beginAccess();
  return sub_1BD0DE19C(v7 + v8, a4, a3);
}

uint64_t sub_1BD4489B4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD416C0);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v5 = &v7 - v4;
  sub_1BD0DE19C(a1, &v7 - v4, &qword_1EBD416C0);
  return sub_1BDA1C534(v5);
}

unint64_t sub_1BD448A80()
{
  result = qword_1EBD46320;
  if (!qword_1EBD46320)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD46318);
    sub_1BD301ED8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD46320);
  }

  return result;
}

uint64_t sub_1BD448B20@<X0>(uint64_t *a1@<X0>, void *a2@<X4>, _BYTE *a3@<X8>)
{
  v5 = *a1;
  swift_getKeyPath();
  sub_1BD4490D8(&qword_1EBD54250, type metadata accessor for AccountAutomaticPaymentsModel);
  sub_1BE04B594();

  *a3 = *(v5 + *a2);
  return result;
}

unint64_t sub_1BD448C54()
{
  result = qword_1EBD4E090;
  if (!qword_1EBD4E090)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EBD4E090);
  }

  return result;
}

unint64_t sub_1BD448CA8()
{
  result = qword_1EBD46348;
  if (!qword_1EBD46348)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD46340);
    sub_1BD0DE4F4(&unk_1EBD49880, &unk_1EBD51330);
    sub_1BD448D60();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD46348);
  }

  return result;
}

unint64_t sub_1BD448D60()
{
  result = qword_1EBD394E0;
  if (!qword_1EBD394E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD394D8);
    sub_1BD10DE58();
    sub_1BD4490D8(&qword_1EBD52210, MEMORY[0x1E697CBE8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD394E0);
  }

  return result;
}

unint64_t sub_1BD448E24()
{
  result = qword_1EBD46358;
  if (!qword_1EBD46358)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD46330);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD462E8);
    type metadata accessor for AccountAutomaticPaymentsModel.PaymentDueWarning(255);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD462E0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD46318);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD462F0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD462F8);
    sub_1BD0DE4F4(&qword_1EBD46300, &qword_1EBD462F0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD46308);
    sub_1BD0DE4F4(&qword_1EBD46310, &qword_1EBD46308);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_1BD448A80();
    swift_getOpaqueTypeConformance2();
    sub_1BD4490D8(&qword_1EBD46328, type metadata accessor for AccountAutomaticPaymentsModel.PaymentDueWarning);
    swift_getOpaqueTypeConformance2();
    sub_1BD4490D8(&qword_1EBD3EA00, type metadata accessor for ErrorAlertModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD46358);
  }

  return result;
}

uint64_t sub_1BD4490D8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t static BankConnectBalanceDetailsViewControllerProvider.makeViewController(bankConnectItem:)(void *a1)
{
  v2 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD46360));
  v3 = a1;
  return sub_1BE04F894();
}

id BankConnectBalanceDetailsViewControllerProvider.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id BankConnectBalanceDetailsViewControllerProvider.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for BankConnectBalanceDetailsViewControllerProvider();
  return objc_msgSendSuper2(&v2, sel_init);
}

id BankConnectBalanceDetailsViewControllerProvider.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for BankConnectBalanceDetailsViewControllerProvider();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for PaymentSummaryTotalRow()
{
  result = qword_1EBD46368;
  if (!qword_1EBD46368)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1BD44934C()
{
  _s11TotalAmountVMa(319);
  if (v0 <= 0x3F)
  {
    sub_1BD238A58(319, &qword_1EBD4F750, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
    if (v1 <= 0x3F)
    {
      sub_1BD238A58(319, &qword_1EBD59660, MEMORY[0x1E69E6370], MEMORY[0x1E697DCC0]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_1BD44944C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v24[1] = a1;
  v3 = sub_1BE04FF64();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD46378);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = v24 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD46380);
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12, v14);
  v16 = v24 - v15;
  sub_1BD4496E4(v2, v11);
  LOBYTE(v2) = sub_1BE050234();
  sub_1BE04E1F4();
  v17 = &v11[*(v8 + 36)];
  *v17 = v2;
  *(v17 + 1) = v18;
  *(v17 + 2) = v19;
  *(v17 + 3) = v20;
  *(v17 + 4) = v21;
  v17[40] = 0;
  sub_1BE04FF44();
  v22 = sub_1BD44CB28();
  sub_1BE050D14();
  (*(v4 + 8))(v7, v3);
  sub_1BD0DE53C(v11, &qword_1EBD46378);
  sub_1BE052434();
  v24[2] = v8;
  v24[3] = v22;
  swift_getOpaqueTypeConformance2();
  sub_1BE050DE4();

  return (*(v13 + 8))(v16, v12);
}

uint64_t sub_1BD4496E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v76 = a2;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD463F8);
  MEMORY[0x1EEE9AC00](v71, v3);
  v64 = (&v60 - v4);
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD46400);
  MEMORY[0x1EEE9AC00](v67, v5);
  v70 = &v60 - v6;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD463E8);
  MEMORY[0x1EEE9AC00](v69, v7);
  v62 = (&v60 - v8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD39970);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v12 = &v60 - v11;
  v13 = _s22SummaryItemPricingTypeOMa(0);
  MEMORY[0x1EEE9AC00](v13, v14);
  v16 = &v60 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = _s22SummaryItemPricingTypeO13RecurringItemVMa(0);
  MEMORY[0x1EEE9AC00](v63, v17);
  v19 = &v60 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD463D8);
  MEMORY[0x1EEE9AC00](v75, v20);
  v68 = &v60 - v21;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD46408);
  MEMORY[0x1EEE9AC00](v73, v22);
  v74 = &v60 - v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD463C8);
  MEMORY[0x1EEE9AC00](v24 - 8, v25);
  v27 = &v60 - v26;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD463B8);
  MEMORY[0x1EEE9AC00](v72, v28);
  v30 = &v60 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v31, v32);
  v34 = &v60 - v33;
  v66 = sub_1BE04F3D4();
  v65 = *(v66 - 8);
  MEMORY[0x1EEE9AC00](v66, v35);
  v37 = &v60 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = a1 + *(type metadata accessor for PaymentSummaryTotalRow() + 24);
  v39 = *v38;
  if (*(v38 + 8) == 1)
  {
    if ((v39 & 1) == 0)
    {
      goto LABEL_3;
    }
  }

  else
  {
    sub_1BE048964();
    sub_1BE052C44();
    v60 = v27;
    v42 = sub_1BE050174();
    v61 = v16;
    v43 = v42;
    v27 = v60;
    sub_1BE04CF84();

    v16 = v61;
    sub_1BE04F3C4();
    swift_getAtKeyPath();
    sub_1BD0D4604(v39, 0);
    (*(v65 + 8))(v37, v66);
    if (v77 != 1)
    {
LABEL_3:
      v40 = _s11TotalAmountVMa(0);
      sub_1BD1CBB88(a1 + *(v40 + 40), v16);
      if (swift_getEnumCaseMultiPayload())
      {
        sub_1BD44CEC4(v16, _s22SummaryItemPricingTypeOMa);
        v41 = v68;
      }

      else
      {
        sub_1BD44CE60(v16, v19);
        sub_1BD0DE19C(&v19[*(v63 + 28)], v12, &unk_1EBD39970);
        v51 = sub_1BE04AF64();
        v52 = (*(*(v51 - 8) + 48))(v12, 1, v51);
        v41 = v68;
        if (v52 != 1)
        {
          sub_1BD0DE53C(v12, &unk_1EBD39970);
          v57 = sub_1BE04F7C4();
          v58 = v62;
          *v62 = v57;
          *(v58 + 8) = 0;
          *(v58 + 16) = 1;
          v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD46418);
          sub_1BD44BAE4(v58 + *(v59 + 44));
          sub_1BD0DE19C(v58, v70, &qword_1EBD463E8);
          swift_storeEnumTagMultiPayload();
          sub_1BD0DE4F4(&qword_1EBD463E0, &qword_1EBD463E8);
          sub_1BD0DE4F4(&qword_1EBD463F0, &qword_1EBD463F8);
          sub_1BE04F9A4();
          sub_1BD0DE53C(v58, &qword_1EBD463E8);
          sub_1BD44CEC4(v19, _s22SummaryItemPricingTypeO13RecurringItemVMa);
          goto LABEL_10;
        }

        sub_1BD44CEC4(v19, _s22SummaryItemPricingTypeO13RecurringItemVMa);
        sub_1BD0DE53C(v12, &unk_1EBD39970);
      }

      v53 = sub_1BE04F504();
      v54 = v64;
      *v64 = v53;
      *(v54 + 8) = 0;
      *(v54 + 16) = 1;
      v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD46410);
      sub_1BD44C134(v54 + *(v55 + 44));
      sub_1BD0DE19C(v54, v70, &qword_1EBD463F8);
      swift_storeEnumTagMultiPayload();
      sub_1BD0DE4F4(&qword_1EBD463E0, &qword_1EBD463E8);
      sub_1BD0DE4F4(&qword_1EBD463F0, &qword_1EBD463F8);
      sub_1BE04F9A4();
      sub_1BD0DE53C(v54, &qword_1EBD463F8);
LABEL_10:
      sub_1BD0DE19C(v41, v74, &qword_1EBD463D8);
      swift_storeEnumTagMultiPayload();
      sub_1BD44CCC4();
      sub_1BD44CD7C();
      sub_1BE04F9A4();
      v49 = v41;
      v50 = &qword_1EBD463D8;
      return sub_1BD0DE53C(v49, v50);
    }
  }

  *v27 = sub_1BE04F7C4();
  *(v27 + 1) = 0;
  v27[16] = 1;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD46420);
  sub_1BD44A13C(&v27[*(v44 + 44)]);
  sub_1BE051CE4();
  sub_1BE04EE54();
  sub_1BD0DE204(v27, v30, &qword_1EBD463C8);
  v45 = &v30[*(v72 + 36)];
  v46 = v82;
  *(v45 + 4) = v81;
  *(v45 + 5) = v46;
  *(v45 + 6) = v83;
  v47 = v78;
  *v45 = v77;
  *(v45 + 1) = v47;
  v48 = v80;
  *(v45 + 2) = v79;
  *(v45 + 3) = v48;
  sub_1BD0DE204(v30, v34, &qword_1EBD463B8);
  sub_1BD0DE19C(v34, v74, &qword_1EBD463B8);
  swift_storeEnumTagMultiPayload();
  sub_1BD44CCC4();
  sub_1BD44CD7C();
  sub_1BE04F9A4();
  v49 = v34;
  v50 = &qword_1EBD463B8;
  return sub_1BD0DE53C(v49, v50);
}

uint64_t sub_1BD44A13C@<X0>(uint64_t a1@<X8>)
{
  v41 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD46428);
  MEMORY[0x1EEE9AC00](v1 - 8, v2);
  v40 = &v36 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4, v5);
  v7 = &v36 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD46430);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v11 = &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = &v36 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD46438);
  MEMORY[0x1EEE9AC00](v16 - 8, v17);
  v19 = &v36 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20, v21);
  v23 = &v36 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD46440);
  MEMORY[0x1EEE9AC00](v24 - 8, v25);
  v27 = &v36 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28, v29);
  v31 = &v36 - v30;
  sub_1BD44A53C();
  sub_1BD44A738(v23);
  v38 = v15;
  sub_1BD44B1D4(v15);
  sub_1BD44B5E0(v7);
  v39 = v27;
  sub_1BD0DE19C(v31, v27, &qword_1EBD46440);
  v37 = v19;
  sub_1BD0DE19C(v23, v19, &qword_1EBD46438);
  v36 = v11;
  sub_1BD0DE19C(v15, v11, &qword_1EBD46430);
  v32 = v40;
  sub_1BD0DE19C(v7, v40, &qword_1EBD46428);
  v33 = v41;
  sub_1BD0DE19C(v27, v41, &qword_1EBD46440);
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD46448);
  sub_1BD0DE19C(v19, v33 + v34[12], &qword_1EBD46438);
  sub_1BD0DE19C(v11, v33 + v34[16], &qword_1EBD46430);
  sub_1BD0DE19C(v32, v33 + v34[20], &qword_1EBD46428);
  sub_1BD0DE53C(v7, &qword_1EBD46428);
  sub_1BD0DE53C(v38, &qword_1EBD46430);
  sub_1BD0DE53C(v23, &qword_1EBD46438);
  sub_1BD0DE53C(v31, &qword_1EBD46440);
  sub_1BD0DE53C(v32, &qword_1EBD46428);
  sub_1BD0DE53C(v36, &qword_1EBD46430);
  sub_1BD0DE53C(v37, &qword_1EBD46438);
  return sub_1BD0DE53C(v39, &qword_1EBD46440);
}

uint64_t sub_1BD44A53C()
{
  sub_1BD44C554();
  sub_1BD0DDEBC();
  sub_1BE048C84();
  v0 = sub_1BE0506C4();
  v2 = v1;
  v4 = v3;
  sub_1BE050324();
  v5 = sub_1BE0505F4();
  v7 = v6;
  v9 = v8;

  sub_1BD0DDF10(v0, v2, v4 & 1);

  sub_1BE050384();
  v10 = sub_1BE050544();
  v12 = v11;
  v14 = v13;
  sub_1BD0DDF10(v5, v7, v9 & 1);

  sub_1BE051224();
  v15 = sub_1BE050564();
  v17 = v16;
  LOBYTE(v5) = v18;

  sub_1BD0DDF10(v10, v12, v14 & 1);

  sub_1BE052434();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD46478);
  sub_1BD44CF24();
  sub_1BE050DE4();

  sub_1BD0DDF10(v15, v17, v5 & 1);
}

uint64_t sub_1BD44A738@<X0>(uint64_t a1@<X8>)
{
  v109 = a1;
  v98 = sub_1BE04BD74();
  v97 = *(v98 - 8);
  MEMORY[0x1EEE9AC00](v98, v1);
  v96 = &v86 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD46440);
  v107 = *(v3 - 8);
  v108 = v3;
  MEMORY[0x1EEE9AC00](v3, v4);
  v99 = &v86 - v5;
  v95 = sub_1BE04AC64();
  v94 = *(v95 - 8);
  MEMORY[0x1EEE9AC00](v95, v6);
  v92 = &v86 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v90 = sub_1BE04ABD4();
  v93 = *(v90 - 8);
  MEMORY[0x1EEE9AC00](v90, v8);
  v91 = &v86 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v101 = sub_1BE04ACA4();
  v89 = *(v101 - 1);
  MEMORY[0x1EEE9AC00](v101, v10);
  v100 = &v86 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1BE04AD84();
  v102 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = &v86 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16, v17);
  v19 = &v86 - v18;
  MEMORY[0x1EEE9AC00](v20, v21);
  v23 = &v86 - v22;
  MEMORY[0x1EEE9AC00](v24, v25);
  v27 = &v86 - v26;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD39970);
  MEMORY[0x1EEE9AC00](v28 - 8, v29);
  v31 = &v86 - v30;
  v105 = sub_1BE04AF64();
  v103 = *(v105 - 8);
  MEMORY[0x1EEE9AC00](v105, v32);
  v34 = &v86 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = _s22SummaryItemPricingTypeOMa(0);
  MEMORY[0x1EEE9AC00](v35, v36);
  v38 = &v86 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = _s22SummaryItemPricingTypeO13RecurringItemVMa(0);
  MEMORY[0x1EEE9AC00](v39, v40);
  v104 = &v86 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = _s11TotalAmountVMa(0);
  sub_1BD1CBB88(&v106[*(v42 + 40)], v38);
  if (swift_getEnumCaseMultiPayload())
  {
    sub_1BD44CEC4(v38, _s22SummaryItemPricingTypeOMa);
  }

  else
  {
    v106 = v23;
    v43 = v100;
    v44 = v101;
    v88 = v27;
    v45 = v102;
    v87 = v12;
    v46 = v38;
    v47 = v104;
    sub_1BD44CE60(v46, v104);
    sub_1BD0DE19C(v47 + *(v39 + 28), v31, &unk_1EBD39970);
    if ((*(v103 + 48))(v31, 1, v105) != 1)
    {
      v51 = *(v103 + 32);
      v86 = v34;
      v52 = v51(v34, v31, v105);
      MEMORY[0x1BFB376E0](v52);
      sub_1BE04AC24();
      v53 = v19;
      sub_1BE04ABB4();
      (*(v89 + 8))(v43, v44);
      v54 = v45 + 8;
      v55 = *(v45 + 8);
      v56 = v87;
      v55(v15, v87);
      v57 = v91;
      sub_1BE04ABC4();
      v58 = v106;
      sub_1BE04AB64();
      (*(v93 + 8))(v57, v90);
      v102 = v54;
      v55(v53, v56);
      v59 = v55;
      v101 = v55;
      v60 = v92;
      sub_1BE04AC44();
      sub_1BE04ABA4();
      (*(v94 + 8))(v60, v95);
      v59(v58, v56);
      sub_1BD44D0D4(&qword_1EBD4E940, MEMORY[0x1E6969328]);
      sub_1BE04AF44();
      v61 = v110;
      v62 = v111;
      v106 = v111;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF80);
      v63 = swift_allocObject();
      *(v63 + 16) = xmmword_1BE0B69E0;
      *(v63 + 56) = MEMORY[0x1E69E6158];
      *(v63 + 64) = sub_1BD110550();
      *(v63 + 32) = v61;
      *(v63 + 40) = v62;
      v64 = v97;
      v65 = v96;
      v66 = v98;
      (*(v97 + 104))(v96, *MEMORY[0x1E69B8068], v98);
      sub_1BE048C84();
      v67 = sub_1BE04B714();
      v69 = v68;

      (*(v64 + 8))(v65, v66);
      v110 = v67;
      v111 = v69;
      sub_1BD0DDEBC();
      v70 = sub_1BE0506C4();
      v72 = v71;
      LOBYTE(v67) = v73;
      sub_1BE0502E4();
      v74 = sub_1BE0505F4();
      v76 = v75;
      LOBYTE(v58) = v77;

      sub_1BD0DDF10(v70, v72, v67 & 1);

      sub_1BE051234();
      v78 = sub_1BE050564();
      v80 = v79;
      LOBYTE(v72) = v81;
      v83 = v82;

      sub_1BD0DDF10(v74, v76, v58 & 1);

      v110 = v78;
      v111 = v80;
      v112 = v72 & 1;
      v113 = v83;
      v114 = 0;
      v115 = v61;
      v116 = v106;
      sub_1BE052434();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD46478);
      sub_1BD44CF24();
      v84 = v99;
      sub_1BE050DE4();

      sub_1BD0DDF10(v78, v80, v72 & 1);

      (v101)(v88, v87);
      (*(v103 + 8))(v86, v105);
      sub_1BD44CEC4(v104, _s22SummaryItemPricingTypeO13RecurringItemVMa);
      v85 = v109;
      sub_1BD0DE204(v84, v109, &qword_1EBD46440);
      v49 = v85;
      v48 = 0;
      return (*(v107 + 56))(v49, v48, 1, v108);
    }

    sub_1BD44CEC4(v104, _s22SummaryItemPricingTypeO13RecurringItemVMa);
    sub_1BD0DE53C(v31, &unk_1EBD39970);
  }

  v48 = 1;
  v49 = v109;
  return (*(v107 + 56))(v49, v48, 1, v108);
}

id sub_1BD44B1D4@<X0>(uint64_t a1@<X8>)
{
  v37 = a1;
  v36 = sub_1BE04F454();
  v35 = *(v36 - 8);
  MEMORY[0x1EEE9AC00](v36, v1);
  v32 = &v31 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3, v4);
  v6 = &v31 - v5;
  sub_1BD44C858();
  v8 = v7;
  v33 = v9;
  *&v42[0] = v9;
  *(&v42[0] + 1) = v7;
  sub_1BD0DDEBC();
  v34 = v8;
  sub_1BE048C84();
  v10 = sub_1BE0506C4();
  v12 = v11;
  v14 = v13;
  result = PKFontForDesign(*MEMORY[0x1E69DB8D8], *MEMORY[0x1E69DDDB8], *MEMORY[0x1E69DDC90], *MEMORY[0x1E69DB980]);
  if (result)
  {
    sub_1BE050484();
    v16 = sub_1BE0505F4();
    v18 = v17;
    v20 = v19;

    sub_1BD0DDF10(v10, v12, v14 & 1);

    sub_1BE051224();
    v21 = sub_1BE050564();
    v23 = v22;
    v25 = v24;
    v31 = v26;

    sub_1BD0DDF10(v16, v18, v20 & 1);

    KeyPath = swift_getKeyPath();
    sub_1BE04F444();
    v28 = v35;
    v29 = v36;
    (*(v35 + 16))(v32, v6, v36);
    sub_1BD44D0D4(&unk_1EBD367A0, MEMORY[0x1E697F260]);
    v30 = sub_1BE04E644();
    (*(v28 + 8))(v6, v29);
    strcpy(v42, "total-amount");
    BYTE13(v42[0]) = 0;
    HIWORD(v42[0]) = -5120;
    MEMORY[0x1BFB3F610](v33, v34);

    v44 = v25 & 1;
    *&v38 = v21;
    *(&v38 + 1) = v23;
    LOBYTE(v39) = v25 & 1;
    *(&v39 + 1) = v31;
    *&v40 = KeyPath;
    BYTE8(v40) = 1;
    *&v41[0] = v30;
    *(v41 + 8) = v42[0];
    sub_1BE052434();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD46468);
    sub_1BD0DE4F4(&qword_1EBD46470, &qword_1EBD46468);
    sub_1BE050DE4();

    v42[2] = v40;
    v42[3] = v41[0];
    v43 = *&v41[1];
    v42[0] = v38;
    v42[1] = v39;
    return sub_1BD0DE53C(v42, &qword_1EBD46468);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1BD44B5E0@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1BE04F454();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = &v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v44 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD46450);
  v53 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = &v44 - v14;
  v16 = (v1 + *(type metadata accessor for PaymentSummaryTotalRow() + 20));
  v17 = v16[1];
  if (v17)
  {
    v49 = *v16;
    *&v59[0] = v49;
    *(&v59[0] + 1) = v17;
    v48 = v17;
    sub_1BD0DDEBC();
    v52 = a1;
    sub_1BE048C84();
    v18 = sub_1BE0506C4();
    v20 = v19;
    v51 = v12;
    v22 = v21;
    sub_1BE0502E4();
    v23 = sub_1BE0505F4();
    v50 = v15;
    v24 = v23;
    v44 = v11;
    v26 = v25;
    v45 = v7;
    v28 = v27;
    v46 = v3;

    sub_1BD0DDF10(v18, v20, v22 & 1);

    sub_1BE051234();
    v29 = sub_1BE050564();
    v31 = v30;
    v33 = v32;
    v47 = v34;

    sub_1BD0DDF10(v24, v26, v28 & 1);

    KeyPath = swift_getKeyPath();
    v36 = v44;
    sub_1BE04F444();
    v37 = v46;
    (*(v4 + 16))(v45, v36, v46);
    sub_1BD44D0D4(&unk_1EBD367A0, MEMORY[0x1E697F260]);
    v38 = v37;
    v39 = sub_1BE04E644();
    (*(v4 + 8))(v36, v38);
    *&v59[0] = 0xD000000000000014;
    *(&v59[0] + 1) = 0x80000001BE129DD0;
    MEMORY[0x1BFB3F610](v49, v48);
    v58 = v33 & 1;
    *&v54 = v29;
    *(&v54 + 1) = v31;
    LOBYTE(v55) = v33 & 1;
    *(&v55 + 1) = v47;
    *&v56 = KeyPath;
    BYTE8(v56) = 2;
    *&v57[0] = v39;
    *(v57 + 8) = v59[0];
    sub_1BE052434();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD46458);
    sub_1BD0DE4F4(&qword_1EBD46460, &qword_1EBD46458);
    v40 = v50;
    sub_1BE050DE4();

    v59[2] = v56;
    v59[3] = v57[0];
    v60 = *&v57[1];
    v59[0] = v54;
    v59[1] = v55;
    sub_1BD0DE53C(v59, &qword_1EBD46458);
    v41 = v52;
    sub_1BD0DE204(v40, v52, &qword_1EBD46450);
    return (*(v53 + 56))(v41, 0, 1, v51);
  }

  else
  {
    v43 = *(v53 + 56);

    return v43(a1, 1, 1, v12);
  }
}

uint64_t sub_1BD44BAE4@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD46488);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v22 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD46490);
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v13 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = &v22 - v16;
  *v17 = sub_1BE04F504();
  *(v17 + 1) = 0;
  v17[16] = 1;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD46498);
  sub_1BD44BD2C(&v17[*(v18 + 44)]);
  *v9 = sub_1BE04F504();
  *(v9 + 1) = 0;
  v9[16] = 1;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD464A0);
  sub_1BD44BF30(&v9[*(v19 + 44)]);
  sub_1BD0DE19C(v17, v13, &qword_1EBD46490);
  sub_1BD0DE19C(v9, v5, &qword_1EBD46488);
  sub_1BD0DE19C(v13, a1, &qword_1EBD46490);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD464A8);
  sub_1BD0DE19C(v5, a1 + *(v20 + 48), &qword_1EBD46488);
  sub_1BD0DE53C(v9, &qword_1EBD46488);
  sub_1BD0DE53C(v17, &qword_1EBD46490);
  sub_1BD0DE53C(v5, &qword_1EBD46488);
  return sub_1BD0DE53C(v13, &qword_1EBD46490);
}

uint64_t sub_1BD44BD2C@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD46430);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v21 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD46440);
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = &v21 - v16;
  sub_1BD44A53C();
  sub_1BD44B1D4(v9);
  sub_1BD0DE19C(v17, v13, &qword_1EBD46440);
  sub_1BD0DE19C(v9, v5, &qword_1EBD46430);
  sub_1BD0DE19C(v13, a1, &qword_1EBD46440);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD464B8);
  v19 = a1 + *(v18 + 48);
  *v19 = 0;
  *(v19 + 8) = 1;
  sub_1BD0DE19C(v5, a1 + *(v18 + 64), &qword_1EBD46430);
  sub_1BD0DE53C(v9, &qword_1EBD46430);
  sub_1BD0DE53C(v17, &qword_1EBD46440);
  sub_1BD0DE53C(v5, &qword_1EBD46430);
  return sub_1BD0DE53C(v13, &qword_1EBD46440);
}

uint64_t sub_1BD44BF30@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD46428);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v21 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD46438);
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = &v21 - v16;
  sub_1BD44A738(&v21 - v16);
  sub_1BD44B5E0(v9);
  sub_1BD0DE19C(v17, v13, &qword_1EBD46438);
  sub_1BD0DE19C(v9, v5, &qword_1EBD46428);
  sub_1BD0DE19C(v13, a1, &qword_1EBD46438);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD464B0);
  v19 = a1 + *(v18 + 48);
  *v19 = 0;
  *(v19 + 8) = 1;
  sub_1BD0DE19C(v5, a1 + *(v18 + 64), &qword_1EBD46428);
  sub_1BD0DE53C(v9, &qword_1EBD46428);
  sub_1BD0DE53C(v17, &qword_1EBD46438);
  sub_1BD0DE53C(v5, &qword_1EBD46428);
  return sub_1BD0DE53C(v13, &qword_1EBD46438);
}

uint64_t sub_1BD44C134@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD464C0);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v22 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD46440);
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v13 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = &v22 - v16;
  sub_1BD44A53C();
  *v9 = sub_1BE04F7D4();
  *(v9 + 1) = 0;
  v9[16] = 1;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD464C8);
  sub_1BD44C364(&v9[*(v18 + 44)]);
  sub_1BD0DE19C(v17, v13, &qword_1EBD46440);
  sub_1BD0DE19C(v9, v5, &qword_1EBD464C0);
  sub_1BD0DE19C(v13, a1, &qword_1EBD46440);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD464D0);
  v20 = a1 + *(v19 + 48);
  *v20 = 0;
  *(v20 + 8) = 1;
  sub_1BD0DE19C(v5, a1 + *(v19 + 64), &qword_1EBD464C0);
  sub_1BD0DE53C(v9, &qword_1EBD464C0);
  sub_1BD0DE53C(v17, &qword_1EBD46440);
  sub_1BD0DE53C(v5, &qword_1EBD464C0);
  return sub_1BD0DE53C(v13, &qword_1EBD46440);
}

uint64_t sub_1BD44C364@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD46428);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v20 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD46430);
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = &v20 - v16;
  sub_1BD44B1D4(&v20 - v16);
  sub_1BD44B5E0(v9);
  sub_1BD0DE19C(v17, v13, &qword_1EBD46430);
  sub_1BD0DE19C(v9, v5, &qword_1EBD46428);
  sub_1BD0DE19C(v13, a1, &qword_1EBD46430);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD464D8);
  sub_1BD0DE19C(v5, a1 + *(v18 + 48), &qword_1EBD46428);
  sub_1BD0DE53C(v9, &qword_1EBD46428);
  sub_1BD0DE53C(v17, &qword_1EBD46430);
  sub_1BD0DE53C(v5, &qword_1EBD46428);
  return sub_1BD0DE53C(v13, &qword_1EBD46430);
}

id sub_1BD44C554()
{
  v1 = sub_1BE04BD74();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1, v3);
  v5 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v26 - v8;
  v10 = _s22SummaryItemPricingTypeO13RecurringItemVMa(0);
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = _s22SummaryItemPricingTypeOMa(0);
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = &v26 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = _s11TotalAmountVMa(0);
  sub_1BD1CBB88(v0 + *(v18 + 40), v17);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
    (*(v2 + 104))(v9, *MEMORY[0x1E69B8068], v1);
    result = PKPassKitBundle();
    if (result)
    {
      v24 = result;
      v20 = sub_1BE04B6F4();

      (*(v2 + 8))(v9, v1);
LABEL_8:
      v21 = _s22SummaryItemPricingTypeOMa;
      v22 = v17;
      goto LABEL_9;
    }

    __break(1u);
  }

  else
  {
    if (!EnumCaseMultiPayload)
    {
      sub_1BD44CE60(v17, v13);
      v20 = *&v13[*(v10 + 40)];
      sub_1BE048C84();
      v21 = _s22SummaryItemPricingTypeO13RecurringItemVMa;
      v22 = v13;
LABEL_9:
      sub_1BD44CEC4(v22, v21);
      return v20;
    }

    (*(v2 + 104))(v5, *MEMORY[0x1E69B8068], v1);
    result = PKPassKitBundle();
    if (result)
    {
      v25 = result;
      v20 = sub_1BE04B6F4();

      (*(v2 + 8))(v5, v1);
      goto LABEL_8;
    }
  }

  __break(1u);
  return result;
}

void sub_1BD44C858()
{
  v1 = _s22SummaryItemPricingTypeOMa(0);
  MEMORY[0x1EEE9AC00](v1, v2);
  v4 = &v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = _s22SummaryItemPricingTypeO13RecurringItemVMa(0);
  MEMORY[0x1EEE9AC00](v5, v6);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1BE04BD74();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = _s11TotalAmountVMa(0);
  if (*(v0 + *(v14 + 44)) == 1)
  {
    (*(v10 + 104))(v13, *MEMORY[0x1E69B8068], v9);
    v15 = PKPassKitBundle();
    if (v15)
    {
      v16 = v15;
      sub_1BE04B6F4();

      (*(v10 + 8))(v13, v9);
      return;
    }

    __break(1u);
  }

  else
  {
    sub_1BD1CBB88(v0 + *(v14 + 40), v4);
    if (!swift_getEnumCaseMultiPayload())
    {
      sub_1BD44CE60(v4, v8);
      sub_1BE048C84();
      sub_1BD44CEC4(v8, _s22SummaryItemPricingTypeO13RecurringItemVMa);
      return;
    }

    sub_1BD44CEC4(v4, _s22SummaryItemPricingTypeOMa);
    v17 = sub_1BE052404();
    v18 = PKFormattedCurrencyStringFromNumber();

    if (v18)
    {
      sub_1BE052434();

      return;
    }
  }

  __break(1u);
}

unint64_t sub_1BD44CB28()
{
  result = qword_1EBD46388;
  if (!qword_1EBD46388)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD46378);
    sub_1BD44CBB4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD46388);
  }

  return result;
}

unint64_t sub_1BD44CBB4()
{
  result = qword_1EBD46390;
  if (!qword_1EBD46390)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD46398);
    sub_1BD44CC38();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD46390);
  }

  return result;
}

unint64_t sub_1BD44CC38()
{
  result = qword_1EBD463A0;
  if (!qword_1EBD463A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD463A8);
    sub_1BD44CCC4();
    sub_1BD44CD7C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD463A0);
  }

  return result;
}

unint64_t sub_1BD44CCC4()
{
  result = qword_1EBD463B0;
  if (!qword_1EBD463B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD463B8);
    sub_1BD0DE4F4(&qword_1EBD463C0, &qword_1EBD463C8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD463B0);
  }

  return result;
}

unint64_t sub_1BD44CD7C()
{
  result = qword_1EBD463D0;
  if (!qword_1EBD463D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD463D8);
    sub_1BD0DE4F4(&qword_1EBD463E0, &qword_1EBD463E8);
    sub_1BD0DE4F4(&qword_1EBD463F0, &qword_1EBD463F8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD463D0);
  }

  return result;
}

uint64_t sub_1BD44CE60(uint64_t a1, uint64_t a2)
{
  v4 = _s22SummaryItemPricingTypeO13RecurringItemVMa(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BD44CEC4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1BD44CF24()
{
  result = qword_1EBD46480;
  if (!qword_1EBD46480)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD46478);
    sub_1BD0DE4F4(&qword_1EBD3C4B8, &qword_1EBD3C4C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD46480);
  }

  return result;
}

unint64_t sub_1BD44CFDC()
{
  result = qword_1EBD464E0;
  if (!qword_1EBD464E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD464E8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD46378);
    sub_1BD44CB28();
    swift_getOpaqueTypeConformance2();
    sub_1BD44D0D4(&qword_1EBD52210, MEMORY[0x1E697CBE8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD464E0);
  }

  return result;
}

uint64_t sub_1BD44D0D4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1BD44D148()
{
  sub_1BE04F624();
  v0 = sub_1BE050694();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  sub_1BE051CD4();
  sub_1BE04EE54();
  *&v8 = v0;
  *(&v8 + 1) = v2;
  LOBYTE(v9) = v4 & 1;
  *(&v9 + 1) = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3E090);
  sub_1BD19D16C();
  sub_1BE050A24();
  v17[6] = v14;
  v17[7] = v15;
  v17[8] = v16;
  v17[2] = v10;
  v17[3] = v11;
  v17[4] = v12;
  v17[5] = v13;
  v17[0] = v8;
  v17[1] = v9;
  return sub_1BD44D284(v17);
}

uint64_t sub_1BD44D284(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3E090);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1BD44D2EC()
{
  result = qword_1EBD464F0;
  if (!qword_1EBD464F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3BC18);
    sub_1BD19D16C();
    sub_1BD0F15A0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD464F0);
  }

  return result;
}

char *sub_1BD44D378(uint64_t a1, void *a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  v7 = sub_1BE04BAC4();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v3[OBJC_IVAR____TtC9PassKitUI39ProvisioningCarAddToWatchViewController_reporter] = 0;
  *&v3[OBJC_IVAR____TtC9PassKitUI39ProvisioningCarAddToWatchViewController_coordinator] = 0;
  *&v3[OBJC_IVAR____TtC9PassKitUI39ProvisioningCarAddToWatchViewController_provisioningContext] = a1;
  *&v3[OBJC_IVAR____TtC9PassKitUI39ProvisioningCarAddToWatchViewController_credential] = a2;
  sub_1BE048964();
  v12 = a2;
  sub_1BE04BC34();
  v13 = sub_1BE04B9A4();
  (*(v8 + 8))(v11, v7);
  v18.receiver = v3;
  v18.super_class = ObjectType;
  result = objc_msgSendSuper2(&v18, sel_initWithContext_, v13);
  if (result)
  {
    v15 = result;
    [v15 setExplanationViewControllerDelegate_];
    sub_1BE052434();
    v16 = sub_1BE04BB74();

    v17 = *&v15[OBJC_IVAR____TtC9PassKitUI39ProvisioningCarAddToWatchViewController_reporter];
    *&v15[OBJC_IVAR____TtC9PassKitUI39ProvisioningCarAddToWatchViewController_reporter] = v16;

    return v15;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1BD44D540()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_1BE04BD74();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = &v76 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v81 = &v76 - v10;
  MEMORY[0x1EEE9AC00](v11, v12);
  v82 = &v76 - v13;
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = &v76 - v16;
  v18 = sub_1BE04BAC4();
  v19 = *(v18 - 8);
  v21 = MEMORY[0x1EEE9AC00](v18, v20);
  v23 = &v76 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v88.receiver = v1;
  v88.super_class = ObjectType;
  objc_msgSendSuper2(&v88, sel_loadView, v21);
  v24 = [*&v1[OBJC_IVAR____TtC9PassKitUI39ProvisioningCarAddToWatchViewController_credential] paymentPass];
  if (!v24)
  {
    __break(1u);
    goto LABEL_15;
  }

  v25 = v24;
  v76 = v7;
  v84 = v3;
  sub_1BE04BC34();
  v26 = sub_1BE04BAB4();
  (*(v19 + 8))(v23, v18);
  v27 = [v1 explanationView];
  if (!v27)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v28 = v27;
  v29 = [objc_opt_self() systemBackgroundColor];
  [v28 setTopBackgroundColor_];

  [v1 setShowDoneButton_];
  [v1 setShowCancelButton_];
  v79 = v1;
  v30 = [v1 navigationItem];
  v80 = v26;
  [v30 setHidesBackButton_];

  v31 = [objc_allocWithZone(PKHeroCardWatchExplainationHeaderView) init];
  [v28 setHeroView_];
  v32 = [objc_opt_self() sharedInstance];
  v86 = v28;
  if (!v32)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v33 = v32;
  v34 = v25;
  [v31 recommendedCardImageSize];
  v36 = v35;
  v38 = v37;
  v39 = swift_allocObject();
  *(v39 + 16) = v31;
  aBlock[4] = sub_1BD44ED6C;
  aBlock[5] = v39;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BD20815C;
  aBlock[3] = &block_descriptor_95;
  v40 = _Block_copy(aBlock);
  v77 = v31;

  [v33 snapshotWithPass:v34 size:v40 completion:{v36, v38}];
  _Block_release(v40);

  v85 = *MEMORY[0x1E69B8038];
  v41 = *(v4 + 104);
  v42 = v84;
  v41(v17);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF80);
  v43 = swift_allocObject();
  *(v43 + 16) = xmmword_1BE0B69E0;
  v44 = [v34 organizationName];
  v78 = v34;

  v45 = sub_1BE052434();
  v46 = v4;
  v48 = v47;

  *(v43 + 56) = MEMORY[0x1E69E6158];
  *(v43 + 64) = sub_1BD110550();
  *(v43 + 32) = v45;
  *(v43 + 40) = v48;
  sub_1BE04B714();

  v51 = *(v46 + 8);
  v50 = (v46 + 8);
  v49 = v51;
  v51(v17, v42);
  v52 = sub_1BE052404();

  v53 = v86;
  [v86 setTitleText_];

  v54 = v82;
  v83 = v41;
  (v41)(v82, v85, v42);
  v55 = PKPassKitBundle();
  if (!v55)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v56 = v55;
  sub_1BE04B6F4();

  v82 = v50;
  v49(v54, v42);
  v57 = sub_1BE052404();

  [v53 setBodyText_];

  v58 = [v53 dockView];
  if (!v58)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v59 = v58;
  v60 = [v58 footerView];
  v61 = v81;
  if (!v60)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v62 = v60;
  v63 = [v59 primaryButton];
  if (!v63)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v64 = v63;
  (v83)(v61, v85, v42);
  v65 = PKPassKitBundle();
  if (!v65)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v66 = v65;
  sub_1BE04B6F4();

  v49(v61, v42);
  v67 = sub_1BE052404();

  [v64 setTitle:v67 forStates:0];

  v68 = v86;
  if (v80)
  {
    goto LABEL_13;
  }

  [v86 setForceShowSetupLaterButton_];
  v69 = [v62 setUpLaterButton];
  if (!v69)
  {
    goto LABEL_13;
  }

  v70 = v69;
  v71 = v76;
  v72 = v84;
  (v83)(v76, *MEMORY[0x1E69B80D8], v84);
  v73 = PKPassKitBundle();
  if (v73)
  {
    v74 = v73;
    sub_1BE04B6F4();

    v49(v71, v72);
    v75 = sub_1BE052404();

    [v70 setTitle:v75 forState:0];

    v68 = v86;
LABEL_13:
    [v79 setPrivacyLinkController_];
    LOBYTE(aBlock[0]) = 4;
    sub_1BD44E078(aBlock, 0);

    return;
  }

LABEL_22:
  __break(1u);
}

uint64_t sub_1BD44DDDC(void *a1, void *a2)
{
  v4 = sub_1BE051F54();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_1BE051FA4();
  v9 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20, v10);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BD0E5E8C(0, &qword_1EBD35E90);
  v13 = sub_1BE052D54();
  v14 = swift_allocObject();
  *(v14 + 16) = a2;
  *(v14 + 24) = a1;
  aBlock[4] = sub_1BD2FF06C;
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BD126964;
  aBlock[3] = &block_descriptor_13_1;
  v15 = _Block_copy(aBlock);
  v16 = a1;
  v17 = a2;

  sub_1BE051F74();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1BD14EC84();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD387F0);
  sub_1BD14ECDC();
  sub_1BE053664();
  MEMORY[0x1BFB3FDF0](0, v12, v8, v15);
  _Block_release(v15);

  (*(v5 + 8))(v8, v4);
  return (*(v9 + 8))(v12, v20);
}

void sub_1BD44E078(unsigned __int8 *a1, unsigned __int8 a2)
{
  v4 = *a1;
  v5 = [v2 explanationView];
  if (!v5)
  {
    __break(1u);
    goto LABEL_10;
  }

  v6 = v5;
  [v5 setShowCheckmark_];

  v7 = [v2 explanationView];
  if (!v7)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v8 = v7;
  [v7 setShowSpinner_];

  v9 = [v2 explanationView];
  if (!v9)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v10 = v9;
  v11 = [v9 dockView];

  if (!v11)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v12 = a2 ^ 1;
  [v11 setButtonsEnabled_];

  v13 = [v2 navigationItem];
  v14 = [v13 leftBarButtonItem];

  [v14 setEnabled_];
  v15 = [v2 view];
  if (!v15)
  {
LABEL_13:
    __break(1u);
    return;
  }

  v16 = v15;
  [v15 setUserInteractionEnabled_];
}

void sub_1BD44E3B4(void *a1)
{
  v2 = v1;
  v4 = sub_1BE04B944();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1BE04BD74();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = &v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v14, v15);
  v18 = &v38 - v17;
  if ([a1 hasLocalizedTitleAndMessage])
  {
    goto LABEL_5;
  }

  v42 = v5;
  v43 = v4;
  v19 = *(v10 + 104);
  v40 = *MEMORY[0x1E69B8038];
  v41 = v10 + 104;
  v39 = v19;
  v19(v18);
  v20 = PKPassKitBundle();
  if (v20)
  {
    v21 = v20;
    sub_1BE04B6F4();

    v22 = *(v10 + 8);
    v38 = v10 + 8;
    v22(v18, v9);
    v23 = sub_1BE052404();

    [a1 setLocalizedTitle_];

    v24 = [*&v2[OBJC_IVAR____TtC9PassKitUI39ProvisioningCarAddToWatchViewController_credential] configuration];
    if (v24)
    {
      v25 = v24;
      v26 = [v24 issuerIdentifier];

      sub_1BE04BB94();
      v27 = sub_1BE04B8E4();
      (*(v42 + 8))(v8, v43);
      v28 = PKLocalizedCarIssuerNameFromIssuerIdentifier();

      v29 = sub_1BE052434();
      v31 = v30;

      v39(v13, v40, v9);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF80);
      v32 = swift_allocObject();
      *(v32 + 16) = xmmword_1BE0B69E0;
      *(v32 + 56) = MEMORY[0x1E69E6158];
      *(v32 + 64) = sub_1BD110550();
      *(v32 + 32) = v29;
      *(v32 + 40) = v31;
      sub_1BE04B714();

      v22(v13, v9);
      v33 = sub_1BE052404();

      [a1 setLocalizedMessage_];

LABEL_5:
      sub_1BD0E5E8C(0, &qword_1EBD3D280);
      v34 = swift_allocObject();
      *(v34 + 16) = v2;
      *(v34 + 24) = a1;
      v35 = swift_allocObject();
      *(v35 + 16) = v2;
      v36 = v2;
      v37 = static UIAlertController.alertForError(error:acknowledgeButtonText:exitButtonText:onAcknowledge:onExit:onTryAgain:)(a1, 0, 0, 0, 0, PKEdgeInsetsMake, 0, sub_1BD44EB80, v34, sub_1BD44EB88, v35);

      [v36 presentViewController:v37 animated:1 completion:0];

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_1BD44E884(uint64_t a1)
{
  v2 = *(a1 + OBJC_IVAR____TtC9PassKitUI39ProvisioningCarAddToWatchViewController_coordinator);
  if (v2)
  {
    v3 = v2;
    sub_1BD3188FC();
  }

  v4 = *(a1 + OBJC_IVAR____TtC9PassKitUI39ProvisioningCarAddToWatchViewController_reporter);
  if (v4)
  {
    v5 = v4;
    v6 = sub_1BE04A844();
    [v5 reportError:v6 context:0];
  }
}

void sub_1BD44E940(uint64_t a1)
{
  v1 = *(a1 + OBJC_IVAR____TtC9PassKitUI39ProvisioningCarAddToWatchViewController_coordinator);
  if (v1)
  {
    v2 = objc_allocWithZone(MEMORY[0x1E69B8E38]);
    v3 = v1;
    v4 = [v2 init];
    sub_1BD317B18(v4);
  }
}

void sub_1BD44EB90()
{
  v1 = *(v0 + OBJC_IVAR____TtC9PassKitUI39ProvisioningCarAddToWatchViewController_reporter);
  if (v1)
  {
    [v1 reportButtonPressed_];
  }

  v2 = *(v0 + OBJC_IVAR____TtC9PassKitUI39ProvisioningCarAddToWatchViewController_coordinator);
  if (v2)
  {
    v3 = objc_allocWithZone(MEMORY[0x1E69B8E38]);
    v4 = v2;
    v5 = [v3 init];
    sub_1BD317B18(v5);
  }
}

void sub_1BD44EC3C()
{
  v1 = *(v0 + OBJC_IVAR____TtC9PassKitUI39ProvisioningCarAddToWatchViewController_reporter);
  if (v1)
  {
    [v1 reportButtonPressed_];
  }

  v2 = *(v0 + OBJC_IVAR____TtC9PassKitUI39ProvisioningCarAddToWatchViewController_coordinator);
  if (v2)
  {
    v3 = v2;
    sub_1BD3188FC();
  }
}

void sub_1BD44ECC4()
{
  v1 = OBJC_IVAR____TtC9PassKitUI39ProvisioningCarAddToWatchViewController_reporter;
  v2 = *(v0 + OBJC_IVAR____TtC9PassKitUI39ProvisioningCarAddToWatchViewController_reporter);
  if (v2)
  {
    [v2 reportButtonPressed_];
    v3 = *(v0 + v1);
    if (v3)
    {
      [v3 reportButtonPressed_];
    }
  }

  v4 = *(v0 + OBJC_IVAR____TtC9PassKitUI39ProvisioningCarAddToWatchViewController_coordinator);
  if (v4)
  {
    v5 = v4;
    sub_1BD3188FC();
  }
}

void sub_1BD44EDC4()
{
  sub_1BD44EEE0();
  if (v0 <= 0x3F)
  {
    sub_1BD44EF30();
    if (v1 <= 0x3F)
    {
      sub_1BD44EFC4(319, &qword_1EBD3AB88, MEMORY[0x1E697BF90], MEMORY[0x1E697DCC0]);
      if (v2 <= 0x3F)
      {
        sub_1BD44EFC4(319, &qword_1EBD4D390, MEMORY[0x1E697D718], MEMORY[0x1E6981790]);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1BD44EEE0()
{
  if (!qword_1EBD46530)
  {
    v0 = sub_1BE0534B4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBD46530);
    }
  }
}

void sub_1BD44EF30()
{
  if (!qword_1EBD46538)
  {
    type metadata accessor for SEStorageCleanupController();
    sub_1BD4579A8(&qword_1EBD550E0, type metadata accessor for SEStorageCleanupController);
    v0 = sub_1BE04E984();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBD46538);
    }
  }
}

void sub_1BD44EFC4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1BD44F044@<X0>(uint64_t a1@<X8>)
{
  if (*(v1 + 9) == 1)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_1BE04D8B4();
  }

  else if ((v1[1] & 1) != 0 || (v4 = *v1, swift_getKeyPath(), swift_getKeyPath(), sub_1BE04D8B4(), , , v5 = *(v9 + 16), , v4 >= v5))
  {
    v8 = type metadata accessor for SEStorageUsageCategory(0);
    return (*(*(v8 - 8) + 56))(a1, 1, 1, v8);
  }

  else
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_1BE04D8B4();

    if ((v4 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v4 < *(v9 + 16))
    {
      v6 = type metadata accessor for SEStorageUsageCategory(0);
      v7 = *(v6 - 8);
      sub_1BD457848(v9 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v4, a1, type metadata accessor for SEStorageUsageCategory);

      return (*(v7 + 56))(a1, 0, 1, v6);
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1BD44F2A8@<X0>(uint64_t a1@<X8>)
{
  v40 = a1;
  v1 = type metadata accessor for SEStorageUsageCategory.SEStorageUsageCategoryType(0);
  MEMORY[0x1EEE9AC00](v1 - 8, v2);
  v36 = &v35 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4, v5);
  v7 = &v35 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD46540);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v11 = &v35 - v10;
  v12 = sub_1BE04FF64();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12, v14);
  v16 = &v35 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD46548);
  MEMORY[0x1EEE9AC00](v17, v18);
  v20 = &v35 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD46550);
  v38 = *(v21 - 8);
  v39 = v21;
  MEMORY[0x1EEE9AC00](v21, v22);
  v24 = &v35 - v23;
  sub_1BD44F76C(v20);
  sub_1BE04FF54();
  v25 = sub_1BD454008();
  v37 = v17;
  v26 = v25;
  sub_1BE050D14();
  (*(v13 + 8))(v16, v12);
  sub_1BD0DE53C(v20, &qword_1EBD46548);
  sub_1BD44F044(v11);
  v27 = type metadata accessor for SEStorageUsageCategory(0);
  if ((*(*(v27 - 8) + 48))(v11, 1, v27) != 1)
  {
    sub_1BD457848(v11, v7, type metadata accessor for SEStorageUsageCategory.SEStorageUsageCategoryType);
    sub_1BD457A80(v11, type metadata accessor for SEStorageUsageCategory);
    v28 = v36;
    sub_1BD457848(v7, v36, type metadata accessor for SEStorageUsageCategory.SEStorageUsageCategoryType);
    v29 = sub_1BE04C164();
    v30 = (*(*(v29 - 8) + 48))(v28, 3, v29);
    if (v30 > 1)
    {
      if (v30 == 2)
      {
        v32 = MEMORY[0x1E69B99C0];
      }

      else
      {
        v32 = MEMORY[0x1E69B9B28];
      }
    }

    else
    {
      if (!v30)
      {
        v31 = *MEMORY[0x1E69B9C88];
        sub_1BD457A80(v7, type metadata accessor for SEStorageUsageCategory.SEStorageUsageCategoryType);
        v7 = v28;
LABEL_11:
        sub_1BD457A80(v7, type metadata accessor for SEStorageUsageCategory.SEStorageUsageCategoryType);
        sub_1BE052434();

        goto LABEL_12;
      }

      v32 = MEMORY[0x1E69B9398];
    }

    v31 = *v32;
    goto LABEL_11;
  }

  sub_1BD0DE53C(v11, &qword_1EBD46540);
LABEL_12:
  v41 = v37;
  v42 = v26;
  swift_getOpaqueTypeConformance2();
  v33 = v39;
  sub_1BE050DE4();

  return (*(v38 + 8))(v24, v33);
}

uint64_t sub_1BD44F76C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v64 = a1;
  v3 = sub_1BE051AD4();
  v62 = *(v3 - 8);
  v63 = v3;
  MEMORY[0x1EEE9AC00](v3, v4);
  v61 = v54 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v60 = v54 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD46540);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v12 = v54 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD46578);
  MEMORY[0x1EEE9AC00](v13, v14);
  v16 = v54 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD46568);
  v56 = *(v17 - 8);
  v57 = v17;
  MEMORY[0x1EEE9AC00](v17, v18);
  v20 = v54 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD46560);
  v58 = *(v21 - 8);
  v59 = v21;
  MEMORY[0x1EEE9AC00](v21, v22);
  v55 = v54 - v23;
  *v16 = sub_1BE04F7B4();
  *(v16 + 1) = 0;
  v16[16] = 0;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD465B8);
  sub_1BD44FDD4(v1, &v16[*(v24 + 44)]);
  KeyPath = swift_getKeyPath();
  v26 = &v16[*(v13 + 36)];
  v27 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD4D410) + 28);
  v28 = *(type metadata accessor for SEStorageCleanupAppletTypeDetailView(0) + 32);
  v54[2] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD449B8);
  v54[3] = v28;
  sub_1BE0516C4();
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40520);
  (*(*(v29 - 8) + 56))(v26 + v27, 0, 1, v29);
  *v26 = KeyPath;
  v30 = v2;
  sub_1BD44F044(v12);
  v31 = type metadata accessor for SEStorageUsageCategory(0);
  if ((*(*(v31 - 8) + 48))(v12, 1, v31) == 1)
  {
    sub_1BD0DE53C(v12, &qword_1EBD46540);
    v32 = 0;
    v33 = 0xE000000000000000;
  }

  else
  {
    v32 = sub_1BD802010();
    v33 = v34;
    sub_1BD457A80(v12, type metadata accessor for SEStorageUsageCategory);
  }

  v65 = v32;
  v66 = v33;
  v35 = sub_1BD4541C4();
  v36 = sub_1BD0DDEBC();
  v37 = MEMORY[0x1E69E6158];
  v38 = v20;
  sub_1BE050B74();

  v39 = sub_1BD0DE53C(v16, &qword_1EBD46578);
  v54[1] = v54;
  MEMORY[0x1EEE9AC00](v39, v40);
  v54[-2] = v30;
  v54[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD46570);
  v65 = v13;
  v66 = v37;
  v67 = v35;
  v68 = v36;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v42 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD46598);
  v43 = sub_1BD4542A8();
  v65 = v42;
  v66 = v43;
  v44 = swift_getOpaqueTypeConformance2();
  v45 = v55;
  v46 = v57;
  sub_1BE051024();
  (*(v56 + 8))(v38, v46);
  v47 = v60;
  sub_1BE0516A4();
  v49 = v61;
  v48 = v62;
  v50 = v63;
  (*(v62 + 104))(v61, *MEMORY[0x1E697D708], v63);
  sub_1BE051AC4();
  v51 = *(v48 + 8);
  v51(v49, v50);
  v51(v47, v50);
  v65 = v46;
  v66 = v54[0];
  v67 = OpaqueTypeConformance2;
  v68 = v44;
  swift_getOpaqueTypeConformance2();
  v52 = v59;
  sub_1BE050E74();
  return (*(v58 + 8))(v45, v52);
}

uint64_t sub_1BD44FDD4@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v52 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD46610);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v51 = &v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v50 = &v43 - v8;
  v9 = sub_1BE04FB94();
  v10 = *(v9 - 8);
  v48 = v9;
  v49 = v10;
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = &v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD46618);
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14, v16);
  v18 = &v43 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD46620);
  v47 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19, v20);
  v22 = &v43 - v21;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD46628);
  v44 = *(v46 - 8);
  v23 = v44;
  MEMORY[0x1EEE9AC00](v46, v24);
  v45 = &v43 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26, v27);
  v29 = &v43 - v28;
  v53 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD46630);
  sub_1BD457B6C();
  sub_1BE0504E4();
  v30 = sub_1BD0DE4F4(&qword_1EBD46658, &qword_1EBD46618);
  sub_1BE050DF4();
  (*(v15 + 8))(v18, v14);
  sub_1BE04FB84();
  v54 = v14;
  v55 = v30;
  swift_getOpaqueTypeConformance2();
  v31 = v29;
  v32 = v48;
  sub_1BE051144();
  (*(v49 + 8))(v13, v32);
  (*(v47 + 8))(v22, v19);
  v33 = v50;
  sub_1BD450770(v50);
  v34 = *(v23 + 16);
  v35 = v45;
  v36 = v46;
  v37 = v31;
  v34(v45, v31, v46);
  v38 = v51;
  sub_1BD0DE19C(v33, v51, &qword_1EBD46610);
  v39 = v52;
  v34(v52, v35, v36);
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD46660);
  sub_1BD0DE19C(v38, &v39[*(v40 + 48)], &qword_1EBD46610);
  sub_1BD0DE53C(v33, &qword_1EBD46610);
  v41 = *(v44 + 8);
  v41(v37, v36);
  sub_1BD0DE53C(v38, &qword_1EBD46610);
  return (v41)(v35, v36);
}

uint64_t sub_1BD4502F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v31 = a2;
  v3 = type metadata accessor for SEStorageCleanupAppletTypeDetailView(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3 - 8, v6);
  v7 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD46540);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = &v30 - v14;
  sub_1BD44F044(&v30 - v14);
  v16 = type metadata accessor for SEStorageUsageCategory(0);
  v17 = *(*(v16 - 8) + 48);
  if (v17(v15, 1, v16) == 1)
  {
    sub_1BD0DE53C(v15, &qword_1EBD46540);
    v18 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    v18 = *&v15[*(v16 + 20)];
    sub_1BE048C84();
    sub_1BD457A80(v15, type metadata accessor for SEStorageUsageCategory);
  }

  v19 = *(v18 + 16);

  sub_1BD44F044(v11);
  if (v17(v11, 1, v16) == 1)
  {
    sub_1BD0DE53C(v11, &qword_1EBD46540);
    v20 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    v20 = *&v11[*(v16 + 20)];
    sub_1BE048C84();
    sub_1BD457A80(v11, type metadata accessor for SEStorageUsageCategory);
  }

  v33 = v20;
  sub_1BD457848(a1, &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for SEStorageCleanupAppletTypeDetailView);
  v21 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v22 = v21 + v5;
  v23 = swift_allocObject();
  sub_1BD458754(v7, v23 + v21, type metadata accessor for SEStorageCleanupAppletTypeDetailView);
  *(v23 + v22) = v19 > 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD466F0);
  type metadata accessor for SEStorageAppletUsageSection(0);
  sub_1BD0DE4F4(&qword_1EBD466F8, &qword_1EBD466F0);
  sub_1BD4579A8(&qword_1EBD46650, type metadata accessor for SEStorageAppletUsageSection);
  sub_1BD4579A8(&qword_1EBD46700, type metadata accessor for SEStorageUsageGroup);
  v24 = v31;
  sub_1BE0519D4();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();

  v25 = v32;
  KeyPath = swift_getKeyPath();
  v27 = swift_allocObject();
  *(v27 + 16) = v25;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD46630);
  v29 = (v24 + *(result + 36));
  *v29 = KeyPath;
  v29[1] = sub_1BD185ABC;
  v29[2] = v27;
  return result;
}

uint64_t sub_1BD450770@<X0>(uint64_t a1@<X8>)
{
  v60 = a1;
  v2 = sub_1BE04FF64();
  v58 = *(v2 - 8);
  v59 = v2;
  MEMORY[0x1EEE9AC00](v2, v3);
  v57 = &v50 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD46668);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = &v50 - v7;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD46670);
  MEMORY[0x1EEE9AC00](v51, v9);
  v11 = &v50 - v10;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD46678);
  MEMORY[0x1EEE9AC00](v54, v12);
  v14 = &v50 - v13;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD46680);
  v55 = *(v56 - 8);
  MEMORY[0x1EEE9AC00](v56, v15);
  v53 = &v50 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD46688);
  v61 = *(v17 - 8);
  v62 = v17;
  MEMORY[0x1EEE9AC00](v17, v18);
  v52 = &v50 - v19;
  v20 = sub_1BE051AD4();
  v21 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20, v22);
  v24 = &v50 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25, v26);
  v28 = &v50 - v27;
  type metadata accessor for SEStorageCleanupAppletTypeDetailView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD449B8);
  v29 = v1;
  sub_1BE0516A4();
  (*(v21 + 104))(v24, *MEMORY[0x1E697D708], v20);
  v30 = sub_1BE051AC4();
  v31 = *(v21 + 8);
  v31(v24, v20);
  v32 = v28;
  v33 = v60;
  v31(v32, v20);
  v34 = 1;
  if (v30)
  {
    *v8 = sub_1BE04F7B4();
    *(v8 + 1) = 0;
    v8[16] = 0;
    v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD46690);
    sub_1BD452AEC(v29, &v8[*(v35 + 44)]);
    sub_1BE051CD4();
    sub_1BE04EE54();
    sub_1BD0DE204(v8, v11, &qword_1EBD46668);
    v36 = &v11[*(v51 + 36)];
    v37 = v70;
    *(v36 + 4) = v69;
    *(v36 + 5) = v37;
    *(v36 + 6) = v71;
    v38 = v66;
    *v36 = v65;
    *(v36 + 1) = v38;
    v39 = v68;
    *(v36 + 2) = v67;
    *(v36 + 3) = v39;
    v40 = sub_1BE051324();
    v41 = sub_1BE0501D4();
    sub_1BD0DE204(v11, v14, &qword_1EBD46670);
    v42 = v54;
    v43 = &v14[*(v54 + 36)];
    *v43 = v40;
    v43[8] = v41;
    v44 = v57;
    sub_1BE04FF54();
    v45 = sub_1BD457CF8();
    v46 = v53;
    sub_1BE050D14();
    (*(v58 + 8))(v44, v59);
    sub_1BD0DE53C(v14, &qword_1EBD46678);
    sub_1BE052434();
    v63 = v42;
    v64 = v45;
    swift_getOpaqueTypeConformance2();
    v47 = v52;
    v48 = v56;
    sub_1BE050DE4();

    (*(v55 + 8))(v46, v48);
    sub_1BD0DE204(v47, v33, &qword_1EBD46688);
    v34 = 0;
  }

  return (*(v61 + 56))(v33, v34, 1, v62);
}

uint64_t sub_1BD450DC8@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v98 = a2;
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD465C0);
  MEMORY[0x1EEE9AC00](v92, v3);
  v90 = &v78 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD465B0);
  v94 = *(v5 - 8);
  v95 = v5;
  MEMORY[0x1EEE9AC00](v5, v6);
  v93 = &v78 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD465C8);
  v85 = *(v8 - 8);
  v86 = v8;
  MEMORY[0x1EEE9AC00](v8, v9);
  v78 = &v78 - v10;
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD465D0);
  v89 = *(v91 - 8);
  MEMORY[0x1EEE9AC00](v91, v11);
  v88 = &v78 - v12;
  v13 = sub_1BE051AD4();
  v82 = *(v13 - 8);
  v83 = v13;
  MEMORY[0x1EEE9AC00](v13, v14);
  v81 = &v78 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16, v17);
  v19 = &v78 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD465D8);
  MEMORY[0x1EEE9AC00](v20 - 8, v21);
  v84 = &v78 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23, v24);
  v87 = &v78 - v25;
  v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD465E0);
  v80 = *(v96 - 8);
  MEMORY[0x1EEE9AC00](v96, v26);
  v28 = &v78 - v27;
  v29 = sub_1BE04FB44();
  MEMORY[0x1EEE9AC00](v29 - 8, v30);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49810);
  v79 = *(v31 - 8);
  MEMORY[0x1EEE9AC00](v31, v32);
  v34 = &v78 - v33;
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD46598);
  MEMORY[0x1EEE9AC00](v97, v35);
  v37 = (&v78 - v36);
  v38 = a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();

  if (v99 == 1)
  {
    sub_1BE04FB14();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD51330);
    sub_1BD0DE4F4(&unk_1EBD49880, &unk_1EBD51330);
    sub_1BE04E424();
    v39 = sub_1BD0DE4F4(&unk_1EBD49870, &qword_1EBD49810);
    MEMORY[0x1BFB3CC50](v34, v31, v39);
    v99 = v31;
    v100 = v39;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v41 = sub_1BD0DE4F4(&qword_1EBD465A8, &qword_1EBD465B0);
    v42 = v96;
    MEMORY[0x1BFB3CC60](v28, v96, v95, OpaqueTypeConformance2, v41);
    v80[1](v28, v42);
    (*(v79 + 8))(v34, v31);
  }

  else
  {
    v79 = v31;
    v80 = v37;
    type metadata accessor for SEStorageCleanupAppletTypeDetailView(0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD449B8);
    sub_1BE0516A4();
    v44 = v81;
    v43 = v82;
    v45 = v83;
    (*(v82 + 104))(v81, *MEMORY[0x1E697D708], v83);
    v46 = sub_1BE051AC4();
    v47 = *(v43 + 8);
    v47(v44, v45);
    v47(v19, v45);
    v48 = v38;
    if (v46)
    {
      v49 = sub_1BE04FAD4();
      MEMORY[0x1EEE9AC00](v49, v50);
      *(&v78 - 2) = v38;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD465F0);
      sub_1BD4578C0();
      v51 = v88;
      sub_1BE04E424();
      v52 = sub_1BD0DE4F4(&qword_1EBD465E8, &qword_1EBD465D0);
      v53 = v78;
      v54 = v91;
      MEMORY[0x1BFB3CC50](v51, v91, v52);
      v56 = v84;
      v55 = v85;
      v57 = v86;
      (*(v85 + 16))(v84, v53, v86);
      (*(v55 + 56))(v56, 0, 1, v57);
      v99 = v54;
      v100 = v52;
      v58 = swift_getOpaqueTypeConformance2();
      v59 = v87;
      MEMORY[0x1BFB3CC80](v56, v57, v58);
      sub_1BD0DE53C(v56, &qword_1EBD465D8);
      v60 = v53;
      v48 = v38;
      (*(v55 + 8))(v60, v57);
      v61 = v89;
      (*(v89 + 8))(v51, v54);
      v62 = v95;
    }

    else
    {
      v63 = v84;
      v64 = v86;
      (*(v85 + 56))(v84, 1, 1, v86);
      v65 = sub_1BD0DE4F4(&qword_1EBD465E8, &qword_1EBD465D0);
      v54 = v91;
      v99 = v91;
      v100 = v65;
      v66 = swift_getOpaqueTypeConformance2();
      v59 = v87;
      MEMORY[0x1BFB3CC80](v63, v64, v66);
      sub_1BD0DE53C(v63, &qword_1EBD465D8);
      v62 = v95;
      v51 = v88;
      v61 = v89;
    }

    v67 = sub_1BE04FB14();
    MEMORY[0x1EEE9AC00](v67, v68);
    *(&v78 - 2) = v48;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD465F0);
    sub_1BD4578C0();
    sub_1BE04E424();
    v69 = v51;
    v70 = *(v92 + 48);
    v71 = v90;
    sub_1BD0DE19C(v59, v90, &qword_1EBD465D8);
    (*(v61 + 16))(v71 + v70, v51, v54);
    v72 = v93;
    sub_1BE04F854();
    v73 = sub_1BD0DE4F4(&unk_1EBD49870, &qword_1EBD49810);
    v99 = v79;
    v100 = v73;
    v74 = swift_getOpaqueTypeConformance2();
    v75 = sub_1BD0DE4F4(&qword_1EBD465A8, &qword_1EBD465B0);
    v37 = v80;
    MEMORY[0x1BFB3CC70](v72, v96, v62, v74, v75);
    (*(v94 + 8))(v72, v62);
    (*(v61 + 8))(v69, v54);
    sub_1BD0DE53C(v59, &qword_1EBD465D8);
  }

  v76 = sub_1BD4542A8();
  MEMORY[0x1BFB3CC50](v37, v97, v76);
  return sub_1BD0DE53C(v37, &qword_1EBD46598);
}

uint64_t sub_1BD4519A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v40 = a2;
  v3 = type metadata accessor for SEStorageCleanupAppletTypeDetailView(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3 - 8, v6);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD46608);
  v38 = *(v7 - 8);
  v39 = v7;
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v35 - v9;
  v11 = type metadata accessor for SEStorageUsageGroup(0);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11 - 8, v13);
  v15 = &v35 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD46540);
  MEMORY[0x1EEE9AC00](v16 - 8, v17);
  v19 = &v35 - v18;
  v20 = sub_1BD5DB9DC();
  if (v20 >> 62)
  {
    goto LABEL_14;
  }

  for (i = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_1BE053704())
  {

    sub_1BD44F044(v19);
    v22 = type metadata accessor for SEStorageUsageCategory(0);
    if ((*(*(v22 - 8) + 48))(v19, 1, v22) == 1)
    {
      sub_1BD0DE53C(v19, &qword_1EBD46540);
      v23 = 0;
      goto LABEL_12;
    }

    v36 = i;
    v37 = v4;
    v24 = *&v19[*(v22 + 20)];
    v25 = *(v24 + 16);
    if (!v25)
    {
      break;
    }

    v4 = 0;
    v26 = v24 + ((*(v12 + 80) + 32) & ~*(v12 + 80));
    v12 = *(v12 + 72);
    while (1)
    {
      sub_1BD457848(v26, v15, type metadata accessor for SEStorageUsageGroup);
      v27 = *(*v15 + 16);
      v28 = __OFADD__(v4, v27);
      v4 += v27;
      if (v28)
      {
        break;
      }

      sub_1BD457A80(v15, type metadata accessor for SEStorageUsageGroup);
      v26 += v12;
      if (!--v25)
      {
        goto LABEL_11;
      }
    }

    __break(1u);
LABEL_14:
    ;
  }

  v4 = 0;
LABEL_11:
  sub_1BD457A80(v19, type metadata accessor for SEStorageUsageCategory);
  v23 = v36 == v4;
  v4 = v37;
LABEL_12:
  sub_1BD457848(a1, &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for SEStorageCleanupAppletTypeDetailView);
  v29 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v30 = swift_allocObject();
  v31 = sub_1BD458754(&v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v30 + v29, type metadata accessor for SEStorageCleanupAppletTypeDetailView);
  *(v30 + v29 + v5) = v23;
  MEMORY[0x1EEE9AC00](v31, v32);
  *(&v35 - 16) = v23;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3ABA8);
  sub_1BD170E70();
  sub_1BE051704();
  sub_1BE052434();
  sub_1BD0DE4F4(&qword_1EBD46600, &qword_1EBD46608);
  v33 = v39;
  sub_1BE050DE4();

  return (*(v38 + 8))(v10, v33);
}

uint64_t sub_1BD451E90(uint64_t a1, char a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD46540);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = &v10 - v5;
  sub_1BD44F044(&v10 - v5);
  v7 = type metadata accessor for SEStorageUsageCategory(0);
  if ((*(*(v7 - 8) + 48))(v6, 1, v7) == 1)
  {
    sub_1BD0DE53C(v6, &qword_1EBD46540);
    v8 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    v8 = *&v6[*(v7 + 20)];
    sub_1BE048C84();
    sub_1BD457A80(v6, type metadata accessor for SEStorageUsageCategory);
  }

  sub_1BD5DBCC8(v8, (a2 & 1) == 0);
}

id sub_1BD451FD4@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v4 = sub_1BE04BD74();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v9, v10);
  v13 = &v33 - v11;
  v14 = *MEMORY[0x1E69B80D8];
  v15 = *(v5 + 104);
  if (a1)
  {
    v15(&v33 - v11, v14, v4, v12);
    result = PKPassKitBundle();
    if (result)
    {
      v17 = result;
      v18 = sub_1BE04B6F4();
      v20 = v19;

      (*(v5 + 8))(v13, v4);
      *&v39 = v18;
      *(&v39 + 1) = v20;
      sub_1BD0DDEBC();
      v34 = sub_1BE0506C4();
      v35 = v21;
      v36 = v22 & 1;
      v37 = v23;
      v38 = 0;
LABEL_6:
      result = sub_1BE04F9A4();
      v31 = v40;
      v32 = v41;
      *a2 = v39;
      *(a2 + 16) = v31;
      *(a2 + 32) = v32;
      return result;
    }

    __break(1u);
  }

  else
  {
    v15(v8, v14, v4, v12);
    result = PKPassKitBundle();
    if (result)
    {
      v24 = result;
      v25 = sub_1BE04B6F4();
      v27 = v26;

      (*(v5 + 8))(v8, v4);
      *&v39 = v25;
      *(&v39 + 1) = v27;
      sub_1BD0DDEBC();
      v34 = sub_1BE0506C4();
      v35 = v29;
      v36 = v28 & 1;
      v37 = v30;
      v38 = 1;
      goto LABEL_6;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1BD452248(uint64_t a1)
{
  v2 = type metadata accessor for SEStorageCleanupAppletTypeDetailView(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2 - 8, v5);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD46608);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v14[-v9];
  sub_1BD457848(a1, &v14[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)], type metadata accessor for SEStorageCleanupAppletTypeDetailView);
  v11 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v12 = swift_allocObject();
  sub_1BD458754(&v14[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)], v12 + v11, type metadata accessor for SEStorageCleanupAppletTypeDetailView);
  v15 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3ABA8);
  sub_1BD170E70();
  sub_1BE051704();
  sub_1BE052434();
  sub_1BD0DE4F4(&qword_1EBD46600, &qword_1EBD46608);
  sub_1BE050DE4();

  return (*(v7 + 8))(v10, v6);
}

uint64_t sub_1BD4524CC()
{
  sub_1BE051D94();
  sub_1BE04E7D4();
}

uint64_t sub_1BD452544(uint64_t a1)
{
  v18 = a1;
  v1 = sub_1BE051AD4();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1, v3);
  v5 = &v15[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v15[-v8];
  v19 = *(type metadata accessor for SEStorageCleanupAppletTypeDetailView(0) + 32);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD449B8);
  sub_1BE0516A4();
  v10 = *MEMORY[0x1E697D708];
  v11 = *(v2 + 104);
  v11(v5, *MEMORY[0x1E697D708], v1);
  v16 = sub_1BE051AC4();
  v12 = *(v2 + 8);
  v12(v5, v1);
  v12(v9, v1);
  if (v16)
  {
    v13 = *MEMORY[0x1E697D710];
  }

  else
  {
    v13 = v10;
  }

  v11(v9, v13, v1);
  (*(v2 + 16))(v5, v9, v1);
  sub_1BE0516B4();
  return (v12)(v9, v1);
}

id sub_1BD452740@<X0>(_OWORD *a1@<X8>)
{
  v40 = a1;
  v1 = sub_1BE04BD74();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1, v3);
  v5 = &v40 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v40 - v8;
  v10 = sub_1BE051AD4();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = &v40 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15, v16);
  v18 = &v40 - v17;
  type metadata accessor for SEStorageCleanupAppletTypeDetailView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD449B8);
  sub_1BE0516A4();
  (*(v11 + 104))(v14, *MEMORY[0x1E697D708], v10);
  v19 = sub_1BE051AC4();
  v20 = *(v11 + 8);
  v20(v14, v10);
  v20(v18, v10);
  v21 = *(v2 + 104);
  if (v19)
  {
    v21(v9, *MEMORY[0x1E69B80D0], v1);
    result = PKPassKitBundle();
    if (result)
    {
      v23 = result;
      v24 = sub_1BE04B6F4();
      v26 = v25;

      (*(v2 + 8))(v9, v1);
      *&v46 = v24;
      *(&v46 + 1) = v26;
      sub_1BD0DDEBC();
      v41 = sub_1BE0506C4();
      v42 = v27;
      v43 = v28 & 1;
      v44 = v29;
      v45 = 0;
LABEL_6:
      result = sub_1BE04F9A4();
      v37 = v47;
      v38 = v48;
      v39 = v40;
      *v40 = v46;
      v39[1] = v37;
      *(v39 + 32) = v38;
      return result;
    }

    __break(1u);
  }

  else
  {
    v21(v5, *MEMORY[0x1E69B80D8], v1);
    result = PKPassKitBundle();
    if (result)
    {
      v30 = result;
      v31 = sub_1BE04B6F4();
      v33 = v32;

      (*(v2 + 8))(v5, v1);
      *&v46 = v31;
      *(&v46 + 1) = v33;
      sub_1BD0DDEBC();
      v41 = sub_1BE0506C4();
      v42 = v35;
      v43 = v34 & 1;
      v44 = v36;
      v45 = 1;
      goto LABEL_6;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1BD452AEC@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD466B0);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v26 - v10;
  v12 = sub_1BE051994();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12, v14);
  v16 = &v26 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17, v18);
  v20 = &v26 - v19;
  sub_1BE051984();
  *v11 = sub_1BE04F504();
  *(v11 + 1) = 0;
  v11[16] = 0;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD466B8);
  sub_1BD452D50(a1, &v11[*(v21 + 44)]);
  v22 = *(v13 + 16);
  v22(v16, v20, v12);
  sub_1BD0DE19C(v11, v7, &qword_1EBD466B0);
  v22(a2, v16, v12);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD466C0);
  sub_1BD0DE19C(v7, &a2[*(v23 + 48)], &qword_1EBD466B0);
  sub_1BD0DE53C(v11, &qword_1EBD466B0);
  v24 = *(v13 + 8);
  v24(v20, v12);
  sub_1BD0DE53C(v7, &qword_1EBD466B0);
  return (v24)(v16, v12);
}

uint64_t sub_1BD452D50@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v58 = a2;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD466C8);
  MEMORY[0x1EEE9AC00](v53, v3);
  v57 = &v52 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5, v6);
  v8 = &v52 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40540);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v56 = &v52 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12, v13);
  v55 = &v52 - v14;
  v15 = sub_1BE04BD74();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15, v17);
  v19 = &v52 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = a1;
  v20 = sub_1BD5DB9DC();
  if (v20 >> 62)
  {
    v21 = sub_1BE053704();
  }

  else
  {
    v21 = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v52 = v21;
  (*(v16 + 104))(v19, *MEMORY[0x1E69B80D8], v15);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF80);
  v22 = swift_allocObject();
  v23 = MEMORY[0x1E69E6530];
  *(v22 + 16) = xmmword_1BE0B69E0;
  v24 = MEMORY[0x1E69E65A8];
  *(v22 + 56) = v23;
  *(v22 + 64) = v24;
  *(v22 + 32) = v21;
  v25 = sub_1BE04B714();
  v27 = v26;

  (*(v16 + 8))(v19, v15);
  *&v64[0] = v25;
  *(&v64[0] + 1) = v27;
  sub_1BD0DDEBC();
  v28 = sub_1BE0506C4();
  v30 = v29;
  v32 = v31;
  sub_1BE050464();
  v33 = sub_1BE0505F4();
  v35 = v34;
  v37 = v36;
  v39 = v38;

  sub_1BD0DDF10(v28, v30, v32 & 1);

  v40 = sub_1BE0501D4();
  v63 = v37 & 1;
  v62 = 1;
  *&v59 = v33;
  *(&v59 + 1) = v35;
  LOBYTE(v60) = v37 & 1;
  *(&v60 + 1) = v39;
  v61[0] = v40;
  memset(&v61[8], 0, 32);
  v61[40] = 1;
  sub_1BE052434();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3DF90);
  sub_1BD2A275C();
  v41 = v55;
  sub_1BE050DE4();

  v64[2] = *v61;
  v65[0] = *&v61[16];
  *(v65 + 9) = *&v61[25];
  v64[0] = v59;
  v64[1] = v60;
  sub_1BD0DE53C(v64, &unk_1EBD3DF90);
  v42 = sub_1BE051CF4();
  v44 = v43;
  v45 = &v8[*(v53 + 36)];
  sub_1BD453300(v54, v52);
  v46 = &v45[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD466D0) + 36)];
  *v46 = v42;
  v46[1] = v44;
  *v8 = 0;
  v8[8] = 1;
  v47 = v56;
  sub_1BD0DE19C(v41, v56, &qword_1EBD40540);
  v48 = v57;
  sub_1BD0DE19C(v8, v57, &qword_1EBD466C8);
  v49 = v58;
  *v58 = 0;
  *(v49 + 8) = 1;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD466D8);
  sub_1BD0DE19C(v47, v49 + *(v50 + 48), &qword_1EBD40540);
  sub_1BD0DE19C(v48, v49 + *(v50 + 64), &qword_1EBD466C8);
  sub_1BD0DE53C(v8, &qword_1EBD466C8);
  sub_1BD0DE53C(v41, &qword_1EBD40540);
  sub_1BD0DE53C(v48, &qword_1EBD466C8);
  return sub_1BD0DE53C(v47, &qword_1EBD40540);
}

uint64_t sub_1BD453300(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SEStorageCleanupAppletTypeDetailView(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4 - 8, v7);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD466E0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v20 - v10;
  sub_1BD457848(a1, &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for SEStorageCleanupAppletTypeDetailView);
  v12 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v13 = swift_allocObject();
  sub_1BD458754(&v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v13 + v12, type metadata accessor for SEStorageCleanupAppletTypeDetailView);
  sub_1BE051704();
  LOBYTE(v12) = a2 == 0;
  KeyPath = swift_getKeyPath();
  v15 = swift_allocObject();
  *(v15 + 16) = v12;
  v16 = &v11[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD44590) + 36)];
  *v16 = KeyPath;
  v16[1] = sub_1BD10DF54;
  v16[2] = v15;
  v17 = sub_1BE0501D4();
  v18 = &v11[*(v8 + 36)];
  *v18 = v17;
  *(v18 + 8) = 0u;
  *(v18 + 24) = 0u;
  v18[40] = 1;
  sub_1BE052434();
  sub_1BD457FF0();
  sub_1BE050DE4();

  return sub_1BD0DE53C(v11, &qword_1EBD466E0);
}

uint64_t sub_1BD4535A0()
{
  v1 = v0;
  v2 = type metadata accessor for SEStorageCleanupAppletTypeDetailView(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2 - 8, v5);
  v6 = type metadata accessor for SEStorageUsageGroup(0);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6 - 8, v8);
  v10 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD46540);
  MEMORY[0x1EEE9AC00](v11 - 8, v12);
  v14 = &v28 - v13;
  v15 = *(v0 + 24);
  v16 = sub_1BD5DB9DC();
  if (v16 >> 62)
  {
    goto LABEL_16;
  }

  for (i = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_1BE053704())
  {

    sub_1BD44F044(v14);
    v18 = type metadata accessor for SEStorageUsageCategory(0);
    if ((*(*(v18 - 8) + 48))(v14, 1, v18) == 1)
    {
      sub_1BD0DE53C(v14, &qword_1EBD46540);
      v19 = 0;
      goto LABEL_12;
    }

    v29 = i;
    v30 = v3;
    v20 = *&v14[*(v18 + 20)];
    v3 = *(v20 + 16);
    if (!v3)
    {
      break;
    }

    v21 = 0;
    v22 = v20 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
    v7 = *(v7 + 72);
    while (1)
    {
      sub_1BD457848(v22, v10, type metadata accessor for SEStorageUsageGroup);
      v23 = *(*v10 + 16);
      v24 = __OFADD__(v21, v23);
      v21 += v23;
      if (v24)
      {
        break;
      }

      sub_1BD457A80(v10, type metadata accessor for SEStorageUsageGroup);
      v22 += v7;
      if (!--v3)
      {
        goto LABEL_11;
      }
    }

    __break(1u);
LABEL_16:
    ;
  }

  v21 = 0;
LABEL_11:
  sub_1BD457A80(v14, type metadata accessor for SEStorageUsageCategory);
  v3 = v30;
  v19 = v29 == v21;
LABEL_12:
  sub_1BD457848(v1, &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for SEStorageCleanupAppletTypeDetailView);
  v25 = (*(v3 + 80) + 17) & ~*(v3 + 80);
  v26 = swift_allocObject();
  *(v26 + 16) = v19;
  sub_1BD458754(&v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v26 + v25, type metadata accessor for SEStorageCleanupAppletTypeDetailView);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();

  if ((v31 & 1) == 0)
  {
    sub_1BE048964();
    sub_1BE048964();
    sub_1BD5EE954(v15, v15, sub_1BD45807C, v26);
  }
}

id sub_1BD453984@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1BE04BD74();
  v3 = *(v2 - 8);
  v5 = MEMORY[0x1EEE9AC00](v2, v4);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 104))(v7, *MEMORY[0x1E69B80D8], v2, v5);
  result = PKPassKitBundle();
  if (result)
  {
    v9 = result;
    v10 = sub_1BE04B6F4();
    v12 = v11;

    (*(v3 + 8))(v7, v2);
    v25 = v10;
    v26 = v12;
    sub_1BD0DDEBC();
    v13 = sub_1BE0506C4();
    v15 = v14;
    LOBYTE(v9) = v16;
    v25 = sub_1BE0513B4();
    v17 = sub_1BE050574();
    v19 = v18;
    v21 = v20;
    v23 = v22;
    sub_1BD0DDF10(v13, v15, v9 & 1);

    *a1 = v17;
    *(a1 + 8) = v19;
    *(a1 + 16) = v21 & 1;
    *(a1 + 24) = v23;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1BD453B6C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v8 = type metadata accessor for SEStorageCleanupAppletTypeDetailView(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8 - 8, v11);
  sub_1BD457848(a1, a4, type metadata accessor for SEStorageUsageGroup);
  v12 = *(a2 + 24);
  sub_1BD457848(a2, &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for SEStorageCleanupAppletTypeDetailView);
  v13 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v14 = swift_allocObject();
  sub_1BD458754(&v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v14 + v13, type metadata accessor for SEStorageCleanupAppletTypeDetailView);
  KeyPath = swift_getKeyPath();
  v16 = type metadata accessor for SEStorageAppletUsageSection(0);
  *(a4 + v16[8]) = KeyPath;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39CF8);
  swift_storeEnumTagMultiPayload();
  *(a4 + v16[5]) = v12;
  *(a4 + v16[6]) = a3;
  v17 = (a4 + v16[7]);
  *v17 = sub_1BD45831C;
  v17[1] = v14;
  return sub_1BE048964();
}

void sub_1BD453D28(char a1, char a2)
{
  v4 = sub_1BE04E664();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v9 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2 & 1) != 0 && (a1)
  {
    type metadata accessor for SEStorageCleanupAppletTypeDetailView(0);
    sub_1BD70A050(v8);
    sub_1BE04E654();
    (*(v5 + 8))(v8, v4);
  }
}

uint64_t sub_1BD453E1C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1BE04F3D4();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39CF8);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v15 - v10;
  v12 = type metadata accessor for SEStorageAppletUsageSection(0);
  sub_1BD0DE19C(v1 + *(v12 + 32), v11, &qword_1EBD39CF8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_1BD0DE204(v11, a1, &qword_1EBD40450);
  }

  sub_1BE052C44();
  v14 = sub_1BE050174();
  sub_1BE04CF84();

  sub_1BE04F3C4();
  swift_getAtKeyPath();

  return (*(v4 + 8))(v7, v3);
}

unint64_t sub_1BD454008()
{
  result = qword_1EBD46558;
  if (!qword_1EBD46558)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD46548);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD46560);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD46568);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD46570);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD46578);
    sub_1BD4541C4();
    sub_1BD0DDEBC();
    swift_getOpaqueTypeConformance2();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD46598);
    sub_1BD4542A8();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD46558);
  }

  return result;
}

unint64_t sub_1BD4541C4()
{
  result = qword_1EBD46580;
  if (!qword_1EBD46580)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD46578);
    sub_1BD0DE4F4(&qword_1EBD46588, &qword_1EBD46590);
    sub_1BD0DE4F4(&qword_1EBD42A80, &unk_1EBD4D410);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD46580);
  }

  return result;
}

unint64_t sub_1BD4542A8()
{
  result = qword_1EBD465A0;
  if (!qword_1EBD465A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD46598);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD49810);
    sub_1BD0DE4F4(&unk_1EBD49870, &qword_1EBD49810);
    swift_getOpaqueTypeConformance2();
    sub_1BD0DE4F4(&qword_1EBD465A8, &qword_1EBD465B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD465A0);
  }

  return result;
}

uint64_t sub_1BD4543D0@<X0>(char *a1@<X8>)
{
  v48 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD46728);
  v45 = *(v2 - 8);
  v46 = v2;
  MEMORY[0x1EEE9AC00](v2, v3);
  v40 = &v39 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD46730);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v47 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v42 = &v39 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD46738);
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v39 - v13;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD46740);
  v41 = *(v43 - 8);
  MEMORY[0x1EEE9AC00](v43, v15);
  v44 = &v39 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17, v18);
  v20 = &v39 - v19;
  v49 = v1;
  sub_1BD456C88(v1, v14);
  sub_1BD457420(v1, v50);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD46748);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39E98);
  sub_1BD45857C();
  sub_1BD0DE4F4(&qword_1EBD46768, &qword_1EBD46748);
  sub_1BD12E194();
  v21 = v20;
  sub_1BE051A34();
  if (*(v1 + *(type metadata accessor for SEStorageAppletUsageSection(0) + 24)))
  {
    v22 = 1;
    v24 = v45;
    v23 = v46;
    v25 = v42;
  }

  else
  {
    v26 = v40;
    sub_1BD457618();
    v27 = v45;
    v25 = v42;
    v28 = v26;
    v29 = v46;
    (*(v45 + 32))(v42, v28, v46);
    v22 = 0;
    v23 = v29;
    v24 = v27;
  }

  (*(v24 + 56))(v25, v22, 1, v23);
  v30 = v41;
  v31 = *(v41 + 16);
  v32 = v43;
  v33 = v44;
  v31(v44, v21, v43);
  v34 = v47;
  sub_1BD0DE19C(v25, v47, &qword_1EBD46730);
  v35 = v48;
  v31(v48, v33, v32);
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD46770);
  sub_1BD0DE19C(v34, &v35[*(v36 + 48)], &qword_1EBD46730);
  sub_1BD0DE53C(v25, &qword_1EBD46730);
  v37 = *(v30 + 8);
  v37(v21, v32);
  sub_1BD0DE53C(v34, &qword_1EBD46730);
  return (v37)(v33, v32);
}

uint64_t sub_1BD454844@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v71 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD46778);
  v67 = *(v3 - 8);
  v68 = v3;
  MEMORY[0x1EEE9AC00](v3, v4);
  v55 = v53 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD467B8);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v70 = v53 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9, v10);
  v69 = v53 - v11;
  v64 = type metadata accessor for SEStorageAppletUsageSection(0);
  v12 = *(v64 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v64, v14);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD467C0);
  v62 = *(v15 - 8);
  v63 = v15;
  MEMORY[0x1EEE9AC00](v15, v16);
  v59 = v53 - v17;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD467C8);
  MEMORY[0x1EEE9AC00](v61, v18);
  v66 = v53 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20, v21);
  v60 = v53 - v22;
  MEMORY[0x1EEE9AC00](v23, v24);
  v65 = v53 - v25;
  v57 = a1;
  sub_1BD6C9F84(*a1);
  v76 = v26;
  KeyPath = swift_getKeyPath();
  sub_1BD457848(a1, v53 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for SEStorageAppletUsageSection);
  v27 = (*(v12 + 80) + 16) & ~*(v12 + 80);
  v53[1] = v13;
  v28 = swift_allocObject();
  v54 = v53 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BD458754(v54, v28 + v27, type metadata accessor for SEStorageAppletUsageSection);
  v29 = swift_allocObject();
  *(v29 + 16) = sub_1BD4587BC;
  *(v29 + 24) = v28;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD467D0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD467D8);
  sub_1BD0DE4F4(&qword_1EBD467E0, &qword_1EBD467D0);
  v30 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD467E8);
  v31 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD467F0);
  v32 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD467F8);
  v33 = sub_1BD0DE4F4(&qword_1EBD46800, &qword_1EBD467F0);
  v34 = sub_1BD4588AC();
  v72 = v31;
  v73 = v32;
  v35 = v59;
  v36 = v57;
  v74 = v33;
  v75 = v34;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v72 = v30;
  v73 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  sub_1BE0519C4();
  v38 = 0;
  v39 = 0;
  if ((sub_1BD4557C0() & 1) == 0)
  {
    v40 = v54;
    sub_1BD457848(v36, v54, type metadata accessor for SEStorageAppletUsageSection);
    v41 = swift_allocObject();
    sub_1BD458754(v40, v41 + v27, type metadata accessor for SEStorageAppletUsageSection);
    v39 = swift_allocObject();
    *(v39 + 16) = sub_1BD458B80;
    *(v39 + 24) = v41;
    v38 = sub_1BD458BE8;
  }

  v42 = v60;
  (*(v62 + 32))(v60, v35, v63);
  v43 = (v42 + *(v61 + 36));
  *v43 = v38;
  v43[1] = v39;
  v44 = v65;
  sub_1BD0DE204(v42, v65, &qword_1EBD467C8);
  if (*(v36 + *(v64 + 24)) == 1)
  {
    v45 = v55;
    sub_1BD456834(v55);
    v46 = v69;
    sub_1BD0DE204(v45, v69, &qword_1EBD46778);
    v47 = 0;
  }

  else
  {
    v47 = 1;
    v46 = v69;
  }

  (*(v67 + 56))(v46, v47, 1, v68);
  v48 = v66;
  sub_1BD0DE19C(v44, v66, &qword_1EBD467C8);
  v49 = v70;
  sub_1BD0DE19C(v46, v70, &qword_1EBD467B8);
  v50 = v71;
  sub_1BD0DE19C(v48, v71, &qword_1EBD467C8);
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD46810);
  sub_1BD0DE19C(v49, v50 + *(v51 + 48), &qword_1EBD467B8);
  sub_1BD0DE53C(v46, &qword_1EBD467B8);
  sub_1BD0DE53C(v44, &qword_1EBD467C8);
  sub_1BD0DE53C(v49, &qword_1EBD467B8);
  return sub_1BD0DE53C(v48, &qword_1EBD467C8);
}

void sub_1BD454FB0(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 uniqueID];
  if (v3)
  {
    v4 = v3;
    v5 = sub_1BE052434();
    v7 = v6;

    *a2 = v5;
    a2[1] = v7;
  }

  else
  {
    __break(1u);
  }
}

id sub_1BD455010@<X0>(uint64_t a1@<X0>, id *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v70 = a1;
  v79 = a4;
  v6 = type metadata accessor for SEStorageUsageGroup.PassEntry(0);
  v75 = *(v6 - 1);
  MEMORY[0x1EEE9AC00](v6, v7);
  v76 = v8;
  v78 = &v64 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = type metadata accessor for SEStorageAppletUsageSection(0);
  v72 = *(v82 - 8);
  MEMORY[0x1EEE9AC00](v82, v9);
  v73 = v10;
  v74 = &v64 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = type metadata accessor for WrappedPass(0);
  MEMORY[0x1EEE9AC00](v65, v11);
  v66 = (&v64 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v67 = type metadata accessor for PassImage(0);
  MEMORY[0x1EEE9AC00](v67, v13);
  v15 = &v64 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD39970);
  MEMORY[0x1EEE9AC00](v16 - 8, v17);
  v19 = &v64 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD467F0);
  MEMORY[0x1EEE9AC00](v20, v21);
  v23 = (&v64 - v22);
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD467E8);
  v69 = *(v71 - 8);
  MEMORY[0x1EEE9AC00](v71, v24);
  v68 = &v64 - v25;
  if (sub_1BD4557C0())
  {
    v26 = *(a2 + v6[8]);
  }

  else
  {
    v26 = 2;
  }

  LODWORD(v81) = v26;
  v27 = *a2;
  v28 = [*a2 localizedDescription];
  v29 = sub_1BE052434();
  v80 = v30;

  sub_1BD0DE19C(a2 + v6[6], v19, &unk_1EBD39970);
  v31 = *(v82 + 20);
  v82 = a3;
  v32 = *(a3 + v31);
  v33 = v6[7];
  v77 = a2;
  v34 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithDouble_];
  v35 = [*(v32 + OBJC_IVAR____TtC9PassKitUI26SEStorageCleanupController_numberFormatter) stringFromNumber_];
  if (v35)
  {
    v36 = v35;
    v37 = sub_1BE052434();
    v39 = v38;
  }

  else
  {

    v37 = 0;
    v39 = 0xE000000000000000;
  }

  v40 = v80;
  *v23 = v29;
  v23[1] = v40;
  v41 = v19;
  sub_1BD0DE19C(v19, v23 + v20[9], &unk_1EBD39970);
  *(v23 + v20[10]) = 0;
  v42 = (v23 + v20[11]);
  *v42 = v37;
  v42[1] = v39;
  *(v23 + v20[12]) = v81;
  *(v23 + v20[13]) = 0;
  result = [v27 paymentPass];
  v44 = v20;
  v45 = v82;
  if (result)
  {
    v46 = v44[14];
    v47 = v66;
    *v66 = result;
    v81 = v44;
    swift_storeEnumTagMultiPayload();
    PKPassFrontFaceContentSize();
    *(v15 + 3) = 0x4046000000000000;
    *(v15 + 4) = v49 / v48 * 44.0;
    v50 = v67;
    sub_1BD458754(v47, &v15[*(v67 + 6)], type metadata accessor for WrappedPass);
    *v15 = sub_1BD70C870;
    *(v15 + 1) = 0;
    v15[16] = 0;
    v15[*(v50 + 7)] = 1;
    *&v15[*(v50 + 8)] = 1911;
    sub_1BD458754(v15, v23 + v46, type metadata accessor for PassImage);
    v51 = sub_1BD0DE53C(v41, &unk_1EBD39970);
    v67 = &v64;
    MEMORY[0x1EEE9AC00](v51, v52);
    v53 = v70;
    *(&v64 - 2) = v45;
    *(&v64 - 1) = v53;
    v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD467F8);
    v54 = sub_1BD0DE4F4(&qword_1EBD46800, &qword_1EBD467F0);
    v55 = sub_1BD4588AC();
    v56 = v68;
    v57 = v81;
    sub_1BE0508B4();
    sub_1BD0DE53C(v23, &qword_1EBD467F0);
    v58 = v74;
    sub_1BD457848(v45, v74, type metadata accessor for SEStorageAppletUsageSection);
    v59 = v78;
    sub_1BD457848(v77, v78, type metadata accessor for SEStorageUsageGroup.PassEntry);
    v60 = (*(v72 + 80) + 16) & ~*(v72 + 80);
    v61 = (v73 + *(v75 + 80) + v60) & ~*(v75 + 80);
    v62 = swift_allocObject();
    sub_1BD458754(v58, v62 + v60, type metadata accessor for SEStorageAppletUsageSection);
    sub_1BD458754(v59, v62 + v61, type metadata accessor for SEStorageUsageGroup.PassEntry);
    v83 = v57;
    v84 = v80;
    v85 = v54;
    v86 = v55;
    swift_getOpaqueTypeConformance2();
    v63 = v71;
    sub_1BE0509D4();

    return (*(v69 + 8))(v56, v63);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1BD4557C0()
{
  v0 = sub_1BE051AD4();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v34 = &v33 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40528);
  MEMORY[0x1EEE9AC00](v4, v5);
  v7 = &v33 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40450);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v11 = &v33 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40530);
  MEMORY[0x1EEE9AC00](v12 - 8, v13);
  v15 = &v33 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16, v17);
  v19 = &v33 - v18;
  MEMORY[0x1EEE9AC00](v20, v21);
  v23 = &v33 - v22;
  sub_1BD453E1C(v11);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40520);
  if ((*(*(v24 - 8) + 48))(v11, 1, v24) == 1)
  {
    sub_1BD0DE53C(v11, &qword_1EBD40450);
    v25 = 1;
  }

  else
  {
    MEMORY[0x1BFB3E970](v24);
    sub_1BD0DE53C(v11, &qword_1EBD40520);
    v25 = 0;
  }

  v26 = *(v1 + 56);
  v26(v23, v25, 1, v0);
  (*(v1 + 104))(v19, *MEMORY[0x1E697D708], v0);
  v26(v19, 0, 1, v0);
  v27 = *(v4 + 48);
  sub_1BD0DE19C(v23, v7, &qword_1EBD40530);
  sub_1BD0DE19C(v19, &v7[v27], &qword_1EBD40530);
  v28 = *(v1 + 48);
  if (v28(v7, 1, v0) != 1)
  {
    sub_1BD0DE19C(v7, v15, &qword_1EBD40530);
    if (v28(&v7[v27], 1, v0) != 1)
    {
      v30 = v34;
      (*(v1 + 32))(v34, &v7[v27], v0);
      sub_1BD4579A8(&qword_1EBD40538, MEMORY[0x1E697D718]);
      v29 = sub_1BE052334();
      v31 = *(v1 + 8);
      v31(v30, v0);
      sub_1BD0DE53C(v19, &qword_1EBD40530);
      sub_1BD0DE53C(v23, &qword_1EBD40530);
      v31(v15, v0);
      sub_1BD0DE53C(v7, &qword_1EBD40530);
      return v29 & 1;
    }

    sub_1BD0DE53C(v19, &qword_1EBD40530);
    sub_1BD0DE53C(v23, &qword_1EBD40530);
    (*(v1 + 8))(v15, v0);
    goto LABEL_9;
  }

  sub_1BD0DE53C(v19, &qword_1EBD40530);
  sub_1BD0DE53C(v23, &qword_1EBD40530);
  if (v28(&v7[v27], 1, v0) != 1)
  {
LABEL_9:
    sub_1BD0DE53C(v7, &qword_1EBD40528);
    v29 = 0;
    return v29 & 1;
  }

  sub_1BD0DE53C(v7, &qword_1EBD40530);
  v29 = 1;
  return v29 & 1;
}

uint64_t sub_1BD455D08(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SEStorageAppletUsageSection(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4 - 8, v7);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD441C8);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = &v16 - v11;
  sub_1BD457848(a1, &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for SEStorageAppletUsageSection);
  v13 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v14 = swift_allocObject();
  sub_1BD458754(&v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v14 + v13, type metadata accessor for SEStorageAppletUsageSection);
  *(v14 + ((v6 + v13 + 7) & 0xFFFFFFFFFFFFFFF8)) = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD37358);
  sub_1BD0DE4F4(&qword_1EBD4D3F0, &qword_1EBD37358);
  sub_1BE051704();
  sub_1BE052434();
  sub_1BD0DE4F4(&qword_1EBD441C0, &qword_1EBD441C8);
  sub_1BE050DE4();

  return (*(v9 + 8))(v12, v8);
}

uint64_t sub_1BD455FC4(uint64_t *a1, uint64_t a2)
{
  v4 = sub_1BE04B344();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD46838);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1BE0B69E0;
  *(v9 + 32) = a2;
  v11[1] = v9;
  sub_1BD4579A8(&qword_1EBD46840, MEMORY[0x1E6969B50]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD46848);
  sub_1BD0DE4F4(&qword_1EBD46850, &qword_1EBD46848);
  sub_1BE053664();
  sub_1BD45617C(v8, a1);
  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_1BD45617C(uint64_t a1, uint64_t *a2)
{
  v25 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD46818);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v26 = &v25 - v4;
  v5 = sub_1BE04B304();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD46820);
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = &v25 - v12;
  v29 = MEMORY[0x1E69E7CD0];
  sub_1BE04B314();
  sub_1BE04B344();
  sub_1BD4579A8(&unk_1EBD4D4D0, MEMORY[0x1E6969B50]);
  while (1)
  {
    sub_1BE052B04();
    sub_1BD4579A8(&qword_1EBD46828, MEMORY[0x1E6969B18]);
    v14 = sub_1BE052334();
    (*(v6 + 8))(v9, v5);
    if (v14)
    {
      break;
    }

    v15 = sub_1BE052B34();
    v17 = *v16;
    v15(v28, 0);
    sub_1BE052B14();
    sub_1BD2A5FF0(v28, v17);
  }

  sub_1BD0DE53C(v13, &qword_1EBD46820);
  v18 = type metadata accessor for SEStorageAppletUsageSection(0);
  v19 = v27;
  v20 = type metadata accessor for SEStorageUsageGroup.PassEntry(0);
  v21 = v26;
  (*(*(v20 - 8) + 56))(v26, 1, 1, v20);
  v22 = v29;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();

  if (LOBYTE(v28[0]) == 1)
  {
  }

  else
  {
    sub_1BD5E2BC0(v25, v21, v22, 1);

    sub_1BD5E0C8C();
  }

  v23 = sub_1BD0DE53C(v21, &qword_1EBD46818);
  return (*(v19 + *(v18 + 28)))(v23);
}

id sub_1BD456544()
{
  v0 = sub_1BE04BD74();
  v1 = *(v0 - 8);
  v3 = MEMORY[0x1EEE9AC00](v0, v2);
  v5 = v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v1 + 104))(v5, *MEMORY[0x1E69B80F0], v0, v3);
  result = PKPassKitBundle();
  if (result)
  {
    v7 = result;
    v8 = sub_1BE04B6F4();
    v10 = v9;

    (*(v1 + 8))(v5, v0);
    v11[0] = v8;
    v11[1] = v10;
    sub_1BD0DDEBC();
    return sub_1BE051624();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1BD4566B4(uint64_t *a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD46818);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v11[-v6];
  type metadata accessor for SEStorageAppletUsageSection(0);
  sub_1BD457848(a2, v7, type metadata accessor for SEStorageUsageGroup.PassEntry);
  v8 = type metadata accessor for SEStorageUsageGroup.PassEntry(0);
  (*(*(v8 - 8) + 56))(v7, 0, 1, v8);
  v9 = *(a2 + *(v8 + 32));
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();

  if ((v11[15] & 1) == 0)
  {
    sub_1BD5E2BC0(a1, v7, 0, v9 ^ 1);
    sub_1BD5E0C8C();
  }

  return sub_1BD0DE53C(v7, &qword_1EBD46818);
}

int *sub_1BD456834@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1BE04BD74();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD46790);
  v10 = MEMORY[0x1EEE9AC00](v8, v9);
  v12 = (v44 - v11);
  (*(v4 + 104))(v7, *MEMORY[0x1E69B80D8], v3, v10);
  result = PKPassKitBundle();
  if (result)
  {
    v14 = result;
    v15 = sub_1BE04B6F4();
    v17 = v16;

    (*(v4 + 8))(v7, v3);
    v18 = *(v1 + *(type metadata accessor for SEStorageAppletUsageSection(0) + 20));
    v19 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithDouble_];
    v20 = [*(v18 + OBJC_IVAR____TtC9PassKitUI26SEStorageCleanupController_numberFormatter) stringFromNumber_];
    if (v20)
    {
      v21 = v20;
      v22 = sub_1BE052434();
      v24 = v23;
    }

    else
    {

      v22 = 0;
      v24 = 0xE000000000000000;
    }

    v25 = sub_1BD4557C0();
    *v12 = v15;
    v12[1] = v17;
    v26 = v8[9];
    v27 = sub_1BE04AF64();
    (*(*(v27 - 8) + 56))(v12 + v26, 1, 1, v27);
    *(v12 + v8[10]) = 1;
    v28 = (v12 + v8[11]);
    *v28 = v22;
    v28[1] = v24;
    *(v12 + v8[12]) = 2;
    *(v12 + v8[13]) = v25 & 1;
    v29 = v12 + v8[14];
    v30 = swift_allocObject();
    *(v30 + 16) = 0xD000000000000015;
    *(v30 + 24) = 0x80000001BE12A050;
    __asm { FMOV            V0.2D, #29.0 }

    v44[0] = _Q0;
    *(v30 + 32) = _Q0;
    v36 = &v29[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD46798) + 36)];
    v37 = *(sub_1BE04EDE4() + 20);
    v38 = *MEMORY[0x1E697F468];
    v39 = sub_1BE04F684();
    (*(*(v39 - 8) + 104))(&v36[v37], v38, v39);
    __asm { FMOV            V0.2D, #6.0 }

    *v36 = _Q0;
    *&v36[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3FC50) + 36)] = 256;
    *v29 = sub_1BD306C0C;
    *(v29 + 1) = v30;
    v29[16] = 0;
    *(v29 + 24) = v44[0];
    sub_1BE051CD4();
    sub_1BE04E5E4();
    v41 = &v29[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD467A0) + 36)];
    v42 = v44[2];
    *v41 = v44[1];
    *(v41 + 1) = v42;
    *(v41 + 2) = v44[3];
    if (sub_1BD4557C0())
    {
      v43 = 0.5;
    }

    else
    {
      v43 = 1.0;
    }

    sub_1BD0DE204(v12, a1, &qword_1EBD46790);
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD46778);
    *(a1 + result[9]) = v43;
  }

  else
  {
    __break(1u);
  }

  return result;
}

__n128 sub_1BD456C88@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v20 = a2;
  v3 = sub_1BE04FF64();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD467A8);
  v8 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19, v9);
  v11 = &v18 - v10;
  v12 = sub_1BE04F504();
  v23 = 1;
  sub_1BD456FC4(a1, v26);
  memcpy(v24, v26, sizeof(v24));
  memcpy(v25, v26, sizeof(v25));
  sub_1BD0DE19C(v24, v21, &qword_1EBD467B0);
  sub_1BD0DE53C(v25, &qword_1EBD467B0);
  memcpy(&v22[7], v24, 0x120uLL);
  *v21 = v12;
  *&v21[8] = 0;
  v21[16] = v23;
  memcpy(&v21[17], v22, 0x127uLL);
  sub_1BE04FF44();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD46758);
  sub_1BD0DE4F4(&qword_1EBD46760, &qword_1EBD46758);
  sub_1BE050D14();
  (*(v4 + 8))(v7, v3);
  memcpy(v26, v21, 0x138uLL);
  sub_1BD0DE53C(v26, &qword_1EBD46758);
  sub_1BE051CD4();
  sub_1BE04EE54();
  v13 = v20;
  (*(v8 + 32))(v20, v11, v19);
  v14 = v13 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD46738) + 36);
  v15 = *&v21[80];
  *(v14 + 64) = *&v21[64];
  *(v14 + 80) = v15;
  *(v14 + 96) = *&v21[96];
  v16 = *&v21[16];
  *v14 = *v21;
  *(v14 + 16) = v16;
  result = *&v21[48];
  *(v14 + 32) = *&v21[32];
  *(v14 + 48) = result;
  return result;
}

uint64_t sub_1BD456FC4@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = type metadata accessor for SEStorageUsageGroup(0);
  HIDWORD(v82) = sub_1BD802444() >> 32;
  v83 = v4;
  sub_1BD0DDEBC();
  v5 = sub_1BE0506C4();
  v7 = v6;
  v9 = v8;
  LODWORD(v82) = sub_1BE04FC74();
  v10 = sub_1BE050574();
  v41 = v11;
  v42 = v10;
  v13 = v12;
  v44 = v14;
  sub_1BD0DDF10(v5, v7, v9 & 1);

  v39 = sub_1BE051CE4();
  v40 = v15;
  LOBYTE(v38) = 1;
  LOBYTE(v37) = 1;
  sub_1BE04EE54();
  v16 = v13 & 1;
  v104 = v13 & 1;
  v17 = *(a1 + *(type metadata accessor for SEStorageAppletUsageSection(0) + 20));
  v18 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithDouble_];
  v19 = [*(v17 + OBJC_IVAR____TtC9PassKitUI26SEStorageCleanupController_numberFormatter) stringFromNumber_];
  if (v19)
  {
    v20 = v19;
    v21 = sub_1BE052434();
    v23 = v22;
  }

  else
  {

    HIDWORD(v21) = 0;
    v23 = 0xE000000000000000;
  }

  HIDWORD(v82) = HIDWORD(v21);
  v83 = v23;
  v24 = sub_1BE0506C4();
  v26 = v25;
  v28 = v27;
  LODWORD(v82) = sub_1BE04FC94();
  v29 = sub_1BE050574();
  v31 = v30;
  v33 = v32;
  v35 = v34;
  sub_1BD0DDF10(v24, v26, v28 & 1);

  sub_1BE051CF4();
  sub_1BE04EE54();
  v95 = v33 & 1;
  *&v53 = v42;
  *(&v53 + 1) = v41;
  LOBYTE(v54) = v16;
  *(&v54 + 1) = *v103;
  DWORD1(v54) = *&v103[3];
  *(&v54 + 1) = v44;
  v59 = v100;
  v60 = v101;
  v61 = v102;
  v55 = v96;
  v56 = v97;
  v57 = v98;
  v58 = v99;
  __src[6] = v100;
  __src[7] = v101;
  __src[2] = v96;
  __src[3] = v97;
  __src[4] = v98;
  __src[5] = v99;
  __src[0] = v53;
  __src[1] = v54;
  *&v62 = v29;
  *(&v62 + 1) = v31;
  LOBYTE(v63) = v33 & 1;
  *(&v63 + 1) = *v94;
  DWORD1(v63) = *&v94[3];
  *(&v63 + 1) = v35;
  v68 = v50;
  v69 = v51;
  v70 = v52;
  v64 = v46;
  v65 = v47;
  v66 = v48;
  v67 = v49;
  __src[12] = v47;
  __src[13] = v48;
  __src[10] = v63;
  __src[11] = v46;
  __src[14] = v49;
  __src[15] = v50;
  __src[16] = v51;
  __src[17] = v52;
  __src[8] = v102;
  __src[9] = v62;
  memcpy(a2, __src, 0x120uLL);
  v71[0] = v29;
  v71[1] = v31;
  v72 = v33 & 1;
  *v73 = *v94;
  *&v73[3] = *&v94[3];
  v74 = v35;
  v79 = v50;
  v80 = v51;
  v81 = v52;
  v75 = v46;
  v76 = v47;
  v77 = v48;
  v78 = v49;
  sub_1BD0DE19C(&v53, &v82, &qword_1EBD3E090);
  sub_1BD0DE19C(&v62, &v82, &qword_1EBD3E090);
  sub_1BD0DE53C(v71, &qword_1EBD3E090);
  v82 = v42;
  v83 = v41;
  v84 = v16;
  *v85 = *v103;
  *&v85[3] = *&v103[3];
  v86 = v44;
  v91 = v100;
  v92 = v101;
  v93 = v102;
  v87 = v96;
  v88 = v97;
  v89 = v98;
  v90 = v99;
  return sub_1BD0DE53C(&v82, &qword_1EBD3E090);
}

int *sub_1BD457420@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_1BE04BD74();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = type metadata accessor for SEStorageAppletUsageSection(0);
  v10 = 0;
  v11 = 0;
  v12 = 0;
  v13 = 0;
  if (*(a1 + result[6]) != 1)
  {
    goto LABEL_4;
  }

  (*(v5 + 104))(v8, *MEMORY[0x1E69B80D8], v4);
  result = PKPassKitBundle();
  if (result)
  {
    v14 = result;
    v15 = sub_1BE04B6F4();
    v17 = v16;

    (*(v5 + 8))(v8, v4);
    v27[2] = v15;
    v27[3] = v17;
    sub_1BD0DDEBC();
    v18 = sub_1BE0506C4();
    v20 = v19;
    v22 = v21;
    sub_1BE050454();
    v10 = sub_1BE0505F4();
    v11 = v23;
    v25 = v24;
    v13 = v26;

    sub_1BD0DDF10(v18, v20, v22 & 1);

    v12 = v25 & 1;
LABEL_4:
    *a2 = v10;
    a2[1] = v11;
    a2[2] = v12;
    a2[3] = v13;
    return result;
  }

  __break(1u);
  return result;
}

id sub_1BD457618()
{
  v1 = sub_1BE04BD74();
  v2 = *(v1 - 8);
  v4 = MEMORY[0x1EEE9AC00](v1, v3);
  v6 = &v23[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v24 = v0;
  (*(v2 + 104))(v6, *MEMORY[0x1E69B80D8], v1, v4);
  result = PKPassKitBundle();
  if (result)
  {
    v8 = result;
    v9 = sub_1BE04B6F4();
    v11 = v10;

    (*(v2 + 8))(v6, v1);
    v25 = v9;
    v26 = v11;
    sub_1BD0DDEBC();
    v12 = sub_1BE0506C4();
    v14 = v13;
    LOBYTE(v8) = v15;
    sub_1BE050454();
    v16 = sub_1BE0505F4();
    v18 = v17;
    v20 = v19;
    v22 = v21;

    sub_1BD0DDF10(v12, v14, v8 & 1);

    v25 = v16;
    v26 = v18;
    v27 = v20 & 1;
    v28 = v22;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD46778);
    sub_1BD45869C();
    return sub_1BE051A54();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1BD457848(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_1BD4578C0()
{
  result = qword_1EBD465F8;
  if (!qword_1EBD465F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD465F0);
    sub_1BD0DE4F4(&qword_1EBD46600, &qword_1EBD46608);
    sub_1BD4579A8(&qword_1EBD52210, MEMORY[0x1E697CBE8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD465F8);
  }

  return result;
}

uint64_t sub_1BD4579A8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1BD4579F8()
{
  v1 = *(type metadata accessor for SEStorageCleanupAppletTypeDetailView(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));
  v3 = *(v2 + *(v1 + 64));

  return sub_1BD451E90(v2, v3);
}

uint64_t sub_1BD457A80(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1BD457AE0()
{
  type metadata accessor for SEStorageCleanupAppletTypeDetailView(0);

  return sub_1BD4524CC();
}

unint64_t sub_1BD457B6C()
{
  result = qword_1EBD46638;
  if (!qword_1EBD46638)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD46630);
    sub_1BD457C24();
    sub_1BD0DE4F4(&unk_1EBD366D0, &unk_1EBD511D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD46638);
  }

  return result;
}

unint64_t sub_1BD457C24()
{
  result = qword_1EBD46640;
  if (!qword_1EBD46640)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD46648);
    sub_1BD4579A8(&qword_1EBD46650, type metadata accessor for SEStorageAppletUsageSection);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD46640);
  }

  return result;
}

unint64_t sub_1BD457CF8()
{
  result = qword_1EBD46698;
  if (!qword_1EBD46698)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD46678);
    sub_1BD457DB0();
    sub_1BD0DE4F4(&qword_1EBD36710, &qword_1EBD491B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD46698);
  }

  return result;
}

unint64_t sub_1BD457DB0()
{
  result = qword_1EBD466A0;
  if (!qword_1EBD466A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD46670);
    sub_1BD0DE4F4(&qword_1EBD466A8, &qword_1EBD46668);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD466A0);
  }

  return result;
}

uint64_t objectdestroy_26Tm()
{
  v1 = type metadata accessor for SEStorageCleanupAppletTypeDetailView(0);
  v2 = v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80));

  v3 = *(v1 + 28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3FA20);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = sub_1BE04E664();
    (*(*(v4 - 8) + 8))(v2 + v3, v4);
  }

  else
  {
  }

  v5 = v2 + *(v1 + 32);
  v6 = sub_1BE051AD4();
  (*(*(v6 - 8) + 8))(v5, v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD449B8);

  return swift_deallocObject();
}

unint64_t sub_1BD457FF0()
{
  result = qword_1EBD466E8;
  if (!qword_1EBD466E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD466E0);
    sub_1BD3BAA6C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD466E8);
  }

  return result;
}

void sub_1BD45807C(char a1)
{
  type metadata accessor for SEStorageCleanupAppletTypeDetailView(0);
  v3 = *(v1 + 16);

  sub_1BD453D28(a1, v3);
}

uint64_t objectdestroyTm_42()
{
  v1 = type metadata accessor for SEStorageCleanupAppletTypeDetailView(0);
  v2 = v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80));

  v3 = *(v1 + 28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3FA20);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = sub_1BE04E664();
    (*(*(v4 - 8) + 8))(v2 + v3, v4);
  }

  else
  {
  }

  v5 = v2 + *(v1 + 32);
  v6 = sub_1BE051AD4();
  (*(*(v6 - 8) + 8))(v5, v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD449B8);

  return swift_deallocObject();
}

uint64_t sub_1BD45827C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for SEStorageCleanupAppletTypeDetailView(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));
  v7 = *(v6 + *(v5 + 64));

  return sub_1BD453B6C(a1, v6, v7, a2);
}

void sub_1BD4583A4()
{
  type metadata accessor for SEStorageUsageGroup(319);
  if (v0 <= 0x3F)
  {
    type metadata accessor for SEStorageCleanupController();
    if (v1 <= 0x3F)
    {
      sub_1BD1030A8();
      if (v2 <= 0x3F)
      {
        sub_1BD2A1EF0();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

unint64_t sub_1BD458460()
{
  result = qword_1EBD46718;
  if (!qword_1EBD46718)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD46720);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD46548);
    sub_1BD454008();
    swift_getOpaqueTypeConformance2();
    sub_1BD4579A8(&qword_1EBD52210, MEMORY[0x1E697CBE8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD46718);
  }

  return result;
}