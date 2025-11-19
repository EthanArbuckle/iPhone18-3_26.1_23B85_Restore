uint64_t sub_1BD1C06D8()
{
  v0 = sub_1BE04EB24();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v1 + 104))(v4, *MEMORY[0x1E697E6E8], v0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3C378);
  sub_1BD1C07FC();
  sub_1BE050B24();
  return (*(v1 + 8))(v4, v0);
}

unint64_t sub_1BD1C07FC()
{
  result = qword_1EBD3C398;
  if (!qword_1EBD3C398)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3C378);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3C368);
    sub_1BD0DE4F4(&qword_1EBD3C388, &qword_1EBD3C368);
    swift_getOpaqueTypeConformance2();
    sub_1BD1C0928(&qword_1EBD52210, MEMORY[0x1E697CBE8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3C398);
  }

  return result;
}

uint64_t sub_1BD1C0928(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1BD1C0970(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3C3A8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

__n128 sub_1BD1C09F0@<Q0>(uint64_t a1@<X8>)
{
  v44 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3C418);
  v3 = v2 - 8;
  MEMORY[0x1EEE9AC00](v2, v4);
  v37 = &v37 - v5;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3C420) - 8;
  MEMORY[0x1EEE9AC00](v40, v6);
  v39 = &v37 - v7;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3C428);
  MEMORY[0x1EEE9AC00](v41, v8);
  v10 = &v37 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3C430);
  v42 = *(v11 - 8);
  v43 = v11;
  MEMORY[0x1EEE9AC00](v11, v12);
  v38 = &v37 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3C438);
  v15 = v14 - 8;
  MEMORY[0x1EEE9AC00](v14, v16);
  v18 = &v37 - v17;
  v45 = v1;
  sub_1BE048964();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3C440);
  sub_1BD0DE4F4(&qword_1EBD3C448, &qword_1EBD3C440);
  v19 = v37;
  sub_1BE051704();
  v20 = sub_1BE0501D4();
  v21 = &v19[*(v3 + 44)];
  *v21 = v20;
  *(v21 + 8) = 0u;
  *(v21 + 24) = 0u;
  v21[40] = 1;
  sub_1BE051CD4();
  sub_1BE04EE54();
  v22 = v19;
  v23 = v39;
  sub_1BD0DE204(v22, v39, &qword_1EBD3C418);
  v24 = (v23 + *(v40 + 44));
  v25 = v51;
  v24[4] = v50;
  v24[5] = v25;
  v24[6] = v52;
  v26 = v47;
  *v24 = v46;
  v24[1] = v26;
  v27 = v49;
  v24[2] = v48;
  v24[3] = v27;
  sub_1BD0DE204(v23, v10, &qword_1EBD3C420);
  v10[*(v41 + 36)] = 1;
  sub_1BD1C2EAC();
  v28 = v38;
  sub_1BE050714();
  sub_1BD053118(v10);
  v29 = sub_1BE051214();
  if (sub_1BE051C54())
  {
    v30 = 26.0;
  }

  else
  {
    v30 = 10.0;
  }

  (*(v42 + 32))(v18, v28, v43);
  v31 = &v18[*(v15 + 44)];
  *v31 = 0;
  *(v31 + 1) = v29;
  *(v31 + 2) = 0x3FF0000000000000;
  *(v31 + 3) = v30;
  sub_1BE051C54();
  sub_1BE051CD4();
  sub_1BE04EE54();
  v32 = v44;
  sub_1BD0DE204(v18, v44, &qword_1EBD3C438);
  v33 = v32 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3C478) + 36);
  v34 = v58;
  *(v33 + 64) = v57;
  *(v33 + 80) = v34;
  *(v33 + 96) = v59;
  v35 = v54;
  *v33 = v53;
  *(v33 + 16) = v35;
  result = v56;
  *(v33 + 32) = v55;
  *(v33 + 48) = result;
  return result;
}

uint64_t sub_1BD1C0F2C@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = sub_1BE04F504();
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3C480);
  return sub_1BD1C0F84(a1, a2 + *(v4 + 44));
}

uint64_t sub_1BD1C0F84@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X8>)
{
  v78 = a2;
  v3 = type metadata accessor for SheetButton();
  v68 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v71 = v5;
  v72 = &v57 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1BE04C894();
  v64 = *(v6 - 8);
  v65 = v6;
  MEMORY[0x1EEE9AC00](v6, v7);
  v63 = &v57 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = sub_1BE04C764();
  v70 = *(v73 - 8);
  MEMORY[0x1EEE9AC00](v73, v9);
  v66 = &v57 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3C488);
  v76 = *(v11 - 8);
  v77 = v11;
  v13 = MEMORY[0x1EEE9AC00](v11, v12);
  v75 = &v57 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13, v15);
  v69 = &v57 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3C490);
  v19 = MEMORY[0x1EEE9AC00](v17 - 8, v18);
  v67 = &v57 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19, v21);
  v79 = &v57 - v22;
  v74 = a1;
  v23 = *a1;
  v24 = sub_1BD1C16EC(*a1);
  v26 = v25;
  v60 = v24;
  *&v99[0] = v24;
  *(&v99[0] + 1) = v25;
  sub_1BD0DDEBC();
  v59 = v26;
  sub_1BE048C84();
  v27 = sub_1BE0506C4();
  v29 = v28;
  v31 = v30;
  v62 = v23;
  if ((v23 & 0xFE) == 4)
  {
    v61 = MEMORY[0x1E69BC9F8];
    sub_1BE051264();
  }

  else
  {
    v61 = MEMORY[0x1E69BCA00];
    sub_1BE051224();
  }

  v58 = sub_1BE050564();
  v33 = v32;
  v35 = v34;
  v37 = v36;

  sub_1BD0DDF10(v27, v29, v31 & 1);

  sub_1BE051CE4();
  sub_1BE04EE54();
  v101 = v35 & 1;
  KeyPath = swift_getKeyPath();
  v39 = sub_1BE051D44();
  *&v80 = v58;
  *(&v80 + 1) = v33;
  LOBYTE(v81) = v35 & 1;
  *(&v81 + 1) = v37;
  v86 = v96;
  v87 = v97;
  v88 = v98;
  v82 = v92;
  v83 = v93;
  v85 = v95;
  v84 = v94;
  *&v89 = KeyPath;
  BYTE8(v89) = 0;
  *&v90 = v39;
  *(&v90 + 1) = v60;
  v91 = v59;
  sub_1BE052434();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3C498);
  sub_1BD1C301C();
  v40 = v79;
  sub_1BE050DE4();

  v99[8] = v88;
  v99[9] = v89;
  v99[10] = v90;
  v100 = v91;
  v99[4] = v84;
  v99[5] = v85;
  v99[6] = v86;
  v99[7] = v87;
  v99[0] = v80;
  v99[1] = v81;
  v99[2] = v82;
  v99[3] = v83;
  sub_1BD0DE53C(v99, &qword_1EBD3C498);
  (*(v64 + 104))(v63, *v61, v65);
  v41 = v66;
  sub_1BE04C754();
  LOBYTE(v80) = v62;
  v42 = v72;
  sub_1BD1C318C(v74, v72, type metadata accessor for SheetButton);
  v43 = (*(v68 + 80) + 16) & ~*(v68 + 80);
  v44 = swift_allocObject();
  sub_1BD1C31F4(v42, v44 + v43, type metadata accessor for SheetButton);
  sub_1BD1C32BC();
  sub_1BD1C1E78();
  v45 = v69;
  v46 = v73;
  sub_1BE051074();

  (*(v70 + 8))(v41, v46);
  v47 = v67;
  sub_1BD0DE19C(v40, v67, &qword_1EBD3C490);
  v49 = v75;
  v48 = v76;
  v50 = *(v76 + 16);
  v51 = v77;
  v50(v75, v45, v77);
  v52 = v78;
  sub_1BD0DE19C(v47, v78, &qword_1EBD3C490);
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3C4C8);
  v54 = v52 + *(v53 + 48);
  *v54 = 0;
  *(v54 + 8) = 1;
  v50((v52 + *(v53 + 64)), v49, v51);
  v55 = *(v48 + 8);
  v55(v45, v51);
  sub_1BD0DE53C(v79, &qword_1EBD3C490);
  v55(v49, v51);
  return sub_1BD0DE53C(v47, &qword_1EBD3C490);
}

id sub_1BD1C16EC(unsigned __int8 a1)
{
  v2 = sub_1BE04BD74();
  v4 = MEMORY[0x1EEE9AC00](v2, v3);
  v6 = &v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v4, v7);
  v10 = &v43 - v9;
  v12 = MEMORY[0x1EEE9AC00](v8, v11);
  v14 = &v43 - v13;
  v16 = MEMORY[0x1EEE9AC00](v12, v15);
  v18 = &v43 - v17;
  v20 = MEMORY[0x1EEE9AC00](v16, v19);
  v22 = &v43 - v21;
  v24 = MEMORY[0x1EEE9AC00](v20, v23);
  v26 = &v43 - v25;
  v28 = MEMORY[0x1EEE9AC00](v24, v27);
  v30 = &v43 - v29;
  v32 = MEMORY[0x1EEE9AC00](v28, v31);
  v35 = &v43 - v33;
  v36 = *MEMORY[0x1E69B8068];
  v43 = v37;
  v44 = v32;
  v38 = *(v37 + 104);
  if (a1 <= 3u)
  {
    if (a1 > 1u)
    {
      if (a1 != 2)
      {
        v38(v22, v36, v34);
        result = PKPassKitBundle();
        if (result)
        {
          v40 = result;
          v41 = sub_1BE04B6F4();
          v35 = v22;
          goto LABEL_24;
        }

        goto LABEL_31;
      }

      v38(v26, v36, v34);
      result = PKPassKitBundle();
      if (result)
      {
        v42 = result;
        v41 = sub_1BE04B6F4();
        v35 = v26;
        v40 = v42;
        goto LABEL_24;
      }

      goto LABEL_27;
    }

    if (a1)
    {
      v38(v30, v36, v34);
      result = PKPassKitBundle();
      if (result)
      {
        v40 = result;
        v41 = sub_1BE04B6F4();
        v35 = v30;
        goto LABEL_24;
      }

      goto LABEL_29;
    }

    v38(&v43 - v33, v36, v34);
    result = PKPassKitBundle();
    if (result)
    {
      v40 = result;
      v41 = sub_1BE04B6F4();
LABEL_24:

      (*(v43 + 8))(v35, v44);
      return v41;
    }

    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  if (a1 <= 5u)
  {
    if (a1 != 4)
    {
      v38(v14, v36, v34);
      result = PKPassKitBundle();
      if (result)
      {
        v40 = result;
        v41 = sub_1BE04B6F4();
        v35 = v14;
        goto LABEL_24;
      }

      goto LABEL_30;
    }

    v38(v18, v36, v34);
    result = PKPassKitBundle();
    if (result)
    {
      v40 = result;
      v41 = sub_1BE04B6F4();
      v35 = v18;
      goto LABEL_24;
    }

    goto LABEL_26;
  }

  if (a1 == 6)
  {
    v38(v10, v36, v34);
    result = PKPassKitBundle();
    if (result)
    {
      v40 = result;
      v41 = sub_1BE04B6F4();
      v35 = v10;
      goto LABEL_24;
    }

    goto LABEL_28;
  }

  v38(v6, v36, v34);
  result = PKPassKitBundle();
  if (result)
  {
    v40 = result;
    v41 = sub_1BE04B6F4();
    v35 = v6;
    goto LABEL_24;
  }

LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_1BD1C1C20(uint64_t a1)
{
  v2 = type metadata accessor for Analytics.StateChange();
  MEMORY[0x1EEE9AC00](v2, v2);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  LOBYTE(v3) = *a1;
  v5 = *(a1 + 24);
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  v8 = *(a1 + 48);
  *v4 = v3;
  v4[1] = v5;
  *(v4 + 1) = v6;
  *(v4 + 2) = v7;
  *(v4 + 3) = v8;
  swift_storeEnumTagMultiPayload();
  v9 = v8;
  sub_1BE048C84();
  sub_1BD6B56B4(v4, 1);
  return sub_1BD1C3314(v4, type metadata accessor for Analytics.StateChange);
}

uint64_t sub_1BD1C1D24@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1BD1C2B68();
  *a1 = result;
  return result;
}

void sub_1BD1C1D54(unint64_t *a1@<X8>)
{
  v2 = *v1;
  if (v2 > 3)
  {
    v8 = 0x80000001BE117300;
    v9 = 0xD000000000000019;
    if (v2 != 6)
    {
      v9 = 0x797469746E656469;
      v8 = 0xE800000000000000;
    }

    v10 = 0xEA00000000006472;
    v11 = 0x614365676E616863;
    if (v2 != 4)
    {
      v11 = 0xD000000000000010;
      v10 = 0x80000001BE1172E0;
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
    v3 = 0xE700000000000000;
    v4 = 0x636972656E6567;
    v5 = 0x80000001BE117290;
    v6 = 0xD000000000000011;
    if (v2 != 2)
    {
      v6 = 0xD00000000000001CLL;
      v5 = 0x80000001BE1172B0;
    }

    if (*v1)
    {
      v4 = 0xD000000000000013;
      v3 = 0x80000001BE117270;
    }

    if (*v1 <= 1u)
    {
      v7 = v4;
    }

    else
    {
      v7 = v6;
    }

    if (*v1 > 1u)
    {
      v3 = v5;
    }

    *a1 = v7;
    a1[1] = v3;
  }
}

unint64_t sub_1BD1C1E78()
{
  result = qword_1EBD3C3F0;
  if (!qword_1EBD3C3F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3C3F0);
  }

  return result;
}

uint64_t sub_1BD1C1ECC()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();
}

uint64_t sub_1BD1C1F48(uint64_t a1)
{
  v2 = type metadata accessor for Passes(0);
  v4 = MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = &v11 - v8;
  sub_1BD1C318C(a1, &v11 - v8, type metadata accessor for Passes);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BD1C318C(v9, v6, type metadata accessor for Passes);
  sub_1BE048964();
  sub_1BE04D8C4();
  return sub_1BD1C3314(v9, type metadata accessor for Passes);
}

id sub_1BD1C2074(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3C3F8);
  v4 = MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v6 = &v65 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4, v7);
  v65 = &v65 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD520A0);
  v11 = MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v67 = &v65 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11, v13);
  v68 = &v65 - v14;
  v15 = type metadata accessor for Passes(0);
  v16 = *(v15 - 8);
  v18 = MEMORY[0x1EEE9AC00](v15, v17);
  v69 = &v65 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18, v20);
  v22 = &v65 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD43B40);
  v25 = MEMORY[0x1EEE9AC00](v23 - 8, v24);
  v72 = &v65 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = MEMORY[0x1EEE9AC00](v25, v27);
  v30 = &v65 - v29;
  MEMORY[0x1EEE9AC00](v28, v31);
  v33 = &v65 - v32;
  v35 = *(a1 + qword_1EBDAAD68 + 24);
  v34 = *(a1 + qword_1EBDAAD68 + 32);
  v36 = v35;
  v37 = v34;
  v73 = v36;
  v38 = v37;
  sub_1BD2B1238(v38, v35, &v78);
  type metadata accessor for PaymentAuthorizationModel(0);
  v39 = swift_dynamicCastClass();
  if (v39)
  {
    sub_1BE048964();
  }

  result = [v38 paymentRequest];
  if (result)
  {
    v41 = result;
    v71 = [result requestType];

    if (v39)
    {
      swift_getKeyPath();
      swift_getKeyPath();
      sub_1BE048964();
      sub_1BE04D8B4();

      (*(v16 + 56))(v33, 0, 1, v15);
    }

    else
    {
      (*(v16 + 56))(v33, 1, 1, v15);
    }

    v66 = v6;
    v42 = v79;
    if (v79)
    {
      v43 = v78;
      v44 = sub_1BD1C2B14();
      v45 = swift_allocObject();
      *(v45 + 16) = v43;
      *(v45 + 24) = v42;
      v46 = v81;
      *(v45 + 32) = v80;
      *(v45 + 48) = v46;
      v47 = &type metadata for AuthorizationError;
    }

    else
    {
      v45 = 0;
      v47 = 0;
      v44 = 0;
      v77[1] = 0;
      v77[2] = 0;
    }

    v77[0] = v45;
    v77[3] = v47;
    v77[4] = v44;
    sub_1BD0DE19C(&v78, v76, &qword_1EBD3C400);
    v70 = [v38 hasAnyPayLaterOptions];
    sub_1BD0DE19C(v33, v30, &unk_1EBD43B40);
    v48 = *(v16 + 48);
    if (v48(v30, 1, v15) == 1)
    {
      sub_1BD0DE53C(v30, &unk_1EBD43B40);
    }

    else
    {
      sub_1BD1C31F4(v30, v22, type metadata accessor for Passes);
      if ((v22[*(v15 + 24)] & 1) != 0 && (v49 = v68, sub_1BD0DE19C(v22, v68, &qword_1EBD520A0), v50 = type metadata accessor for AvailablePass(0), v51 = (*(*(v50 - 8) + 48))(v49, 1, v50), sub_1BD0DE53C(v49, &qword_1EBD520A0), v51 == 1) && !*(*&v22[*(v15 + 28)] + 16))
      {
        v59 = v66;
        sub_1BD4941F8(v66);
        v60 = type metadata accessor for UnavailablePass(0);
        v61 = (*(*(v60 - 8) + 48))(v59, 1, v60) == 1;
        sub_1BD0DE53C(v59, &qword_1EBD3C3F8);
        sub_1BD1C3314(v22, type metadata accessor for Passes);
        if ((v61 & v70) == 1)
        {
          sub_1BD0DE53C(&v78, &qword_1EBD3C400);

          sub_1BD0DE53C(v33, &unk_1EBD43B40);
          v52 = 6;
          goto LABEL_36;
        }
      }

      else
      {
        sub_1BD1C3314(v22, type metadata accessor for Passes);
      }
    }

    sub_1BD0DE19C(v77, &v74, &qword_1EBD51EC0);
    if (v75)
    {
      sub_1BD0EF554(&v74, v76);
      __swift_project_boxed_opaque_existential_1(v76, v76[3]);
      if (sub_1BE04C704())
      {
        sub_1BD0DE53C(&v78, &qword_1EBD3C400);

        sub_1BD0DE53C(v33, &unk_1EBD43B40);
        __swift_destroy_boxed_opaque_existential_0(v76);
        v52 = 5;
LABEL_36:
        sub_1BD0DE53C(v77, &qword_1EBD51EC0);
        return v52;
      }

      __swift_destroy_boxed_opaque_existential_0(v76);
    }

    else
    {
      sub_1BD0DE53C(&v74, &qword_1EBD51EC0);
    }

    v53 = v72;
    sub_1BD0DE19C(v33, v72, &unk_1EBD43B40);
    if (v48(v53, 1, v15) == 1)
    {
      sub_1BD0DE53C(&v78, &qword_1EBD3C400);

      sub_1BD0DE53C(v33, &unk_1EBD43B40);
      sub_1BD0DE53C(v53, &unk_1EBD43B40);
      goto LABEL_29;
    }

    v54 = v69;
    sub_1BD1C31F4(v53, v69, type metadata accessor for Passes);
    if (*(v54 + *(v15 + 24)))
    {
      v55 = v67;
      sub_1BD0DE19C(v54, v67, &qword_1EBD520A0);
      v56 = type metadata accessor for AvailablePass(0);
      if ((*(*(v56 - 8) + 48))(v55, 1, v56) != 1)
      {
        sub_1BD0DE53C(&v78, &qword_1EBD3C400);

        sub_1BD0DE53C(v33, &unk_1EBD43B40);
        v57 = &qword_1EBD520A0;
        v58 = v55;
        goto LABEL_28;
      }

      sub_1BD0DE53C(v55, &qword_1EBD520A0);
      if (!*(*(v54 + *(v15 + 28)) + 16))
      {
        v62 = v65;
        sub_1BD4941F8(v65);
        sub_1BD0DE53C(&v78, &qword_1EBD3C400);

        sub_1BD0DE53C(v33, &unk_1EBD43B40);
        v63 = type metadata accessor for UnavailablePass(0);
        v64 = (*(*(v63 - 8) + 48))(v62, 1, v63);
        sub_1BD0DE53C(v62, &qword_1EBD3C3F8);
        sub_1BD1C3314(v54, type metadata accessor for Passes);
        if (v64 != 1)
        {
          v52 = 4;
          goto LABEL_36;
        }

LABEL_29:
        if (v71 == 2)
        {
          v52 = 2;
        }

        else if (((v71 == 0) & v70) != 0)
        {
          v52 = 3;
        }

        else if (v71 == 13)
        {
          v52 = 7;
        }

        else
        {
          v52 = 0;
        }

        goto LABEL_36;
      }
    }

    sub_1BD0DE53C(&v78, &qword_1EBD3C400);

    v57 = &unk_1EBD43B40;
    v58 = v33;
LABEL_28:
    sub_1BD0DE53C(v58, v57);
    sub_1BD1C3314(v54, type metadata accessor for Passes);
    goto LABEL_29;
  }

  __break(1u);
  return result;
}

unint64_t sub_1BD1C2B14()
{
  result = qword_1EBD45BA0;
  if (!qword_1EBD45BA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD45BA0);
  }

  return result;
}

uint64_t sub_1BD1C2B68()
{
  v0 = sub_1BE053A44();

  if (v0 >= 8)
  {
    return 8;
  }

  else
  {
    return v0;
  }
}

uint64_t type metadata accessor for SheetButton()
{
  result = qword_1EBD3C408;
  if (!qword_1EBD3C408)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1BD1C2C28()
{
  sub_1BD1030A8();
  if (v0 <= 0x3F)
  {
    sub_1BD1C2DD8(319, &qword_1EBD4F750);
    if (v1 <= 0x3F)
    {
      sub_1BD1C2E24(319, &qword_1EBD39320, sub_1BD1C2D8C, MEMORY[0x1E69E6720]);
      if (v2 <= 0x3F)
      {
        sub_1BD1C2DD8(319, &qword_1EBD39308);
        if (v3 <= 0x3F)
        {
          sub_1BD1C2E24(319, &qword_1EBD393A8, MEMORY[0x1E697DBD0], MEMORY[0x1E697DCC0]);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

unint64_t sub_1BD1C2D8C()
{
  result = qword_1EBD496B0;
  if (!qword_1EBD496B0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EBD496B0);
  }

  return result;
}

void sub_1BD1C2DD8(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_1BE0534B4();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

void sub_1BD1C2E24(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_1BD1C2EAC()
{
  result = qword_1EBD3C450;
  if (!qword_1EBD3C450)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3C428);
    sub_1BD1C3374(&qword_1EBD3C458, &qword_1EBD3C420, &unk_1BE0BE760, sub_1BD1C2F64);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3C450);
  }

  return result;
}

unint64_t sub_1BD1C2F64()
{
  result = qword_1EBD3C460;
  if (!qword_1EBD3C460)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3C418);
    sub_1BD0DE4F4(&qword_1EBD3C468, &qword_1EBD3C470);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3C460);
  }

  return result;
}

unint64_t sub_1BD1C301C()
{
  result = qword_1EBD3C4A0;
  if (!qword_1EBD3C4A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3C498);
    sub_1BD1C30D4();
    sub_1BD0DE4F4(&qword_1EBD3C4B8, &qword_1EBD3C4C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3C4A0);
  }

  return result;
}

unint64_t sub_1BD1C30D4()
{
  result = qword_1EBD3C4A8;
  if (!qword_1EBD3C4A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3C4B0);
    sub_1BD19D16C();
    sub_1BD0DE4F4(&unk_1EBD51280, qword_1EBD3E2F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3C4A8);
  }

  return result;
}

uint64_t sub_1BD1C318C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1BD1C31F4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1BD1C325C()
{
  v1 = *(type metadata accessor for SheetButton() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_1BD1C1C20(v2);
}

unint64_t sub_1BD1C32BC()
{
  result = qword_1EBD39D60;
  if (!qword_1EBD39D60)
  {
    sub_1BE04C764();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD39D60);
  }

  return result;
}

uint64_t sub_1BD1C3314(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1BD1C3374(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1BD1C33F8()
{
  result = qword_1EBD3C4D8;
  if (!qword_1EBD3C4D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3C438);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3C428);
    sub_1BD1C2EAC();
    swift_getOpaqueTypeConformance2();
    sub_1BD0FEBBC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3C4D8);
  }

  return result;
}

unint64_t PKPassTileForeignViewAdaptorViewSizingMethod.init(rawValue:)(unint64_t result)
{
  if (result > 1)
  {
    return 0;
  }

  return result;
}

uint64_t *sub_1BD1C34D4@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result;
  v3 = *result > 1;
  if (*result > 1)
  {
    v2 = 0;
  }

  *a2 = v2;
  *(a2 + 8) = v3;
  return result;
}

uint64_t sub_1BD1C357C()
{
  v1 = (v0 + OBJC_IVAR____TtC9PassKitUI28PKPassTileForeignViewAdaptor_viewIdentifier);
  swift_beginAccess();
  v2 = *v1;
  sub_1BE048C84();
  return v2;
}

uint64_t sub_1BD1C3650(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC9PassKitUI28PKPassTileForeignViewAdaptor_viewIdentifier);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;
}

uint64_t sub_1BD1C36B0(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = (*a2 + OBJC_IVAR____TtC9PassKitUI28PKPassTileForeignViewAdaptor_viewIdentifier);
  swift_beginAccess();
  *v4 = v3;
  v4[1] = v2;
  sub_1BE048C84();
}

uint64_t sub_1BD1C37C4()
{
  v1 = OBJC_IVAR____TtC9PassKitUI28PKPassTileForeignViewAdaptor_viewPreferredSizing;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1BD1C385C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC9PassKitUI28PKPassTileForeignViewAdaptor_viewPreferredSizing;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

id PKPassTileForeignViewAdaptor.__allocating_init(view:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = &v3[OBJC_IVAR____TtC9PassKitUI28PKPassTileForeignViewAdaptor_viewIdentifier];
  *v4 = 0;
  *(v4 + 1) = 0;
  *&v3[OBJC_IVAR____TtC9PassKitUI28PKPassTileForeignViewAdaptor_viewPreferredSizing] = 0;
  *&v3[OBJC_IVAR____TtC9PassKitUI28PKPassTileForeignViewAdaptor_view] = a1;
  v6.receiver = v3;
  v6.super_class = v1;
  return objc_msgSendSuper2(&v6, sel_init);
}

id PKPassTileForeignViewAdaptor.init(view:)(uint64_t a1)
{
  v2 = &v1[OBJC_IVAR____TtC9PassKitUI28PKPassTileForeignViewAdaptor_viewIdentifier];
  *v2 = 0;
  *(v2 + 1) = 0;
  *&v1[OBJC_IVAR____TtC9PassKitUI28PKPassTileForeignViewAdaptor_viewPreferredSizing] = 0;
  *&v1[OBJC_IVAR____TtC9PassKitUI28PKPassTileForeignViewAdaptor_view] = a1;
  v4.receiver = v1;
  v4.super_class = type metadata accessor for PKPassTileForeignViewAdaptor();
  return objc_msgSendSuper2(&v4, sel_init);
}

uint64_t sub_1BD1C3A8C(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v4 = a1;
    v5 = (v2 + OBJC_IVAR____TtC9PassKitUI28PKPassTileForeignViewAdaptor_viewIdentifier);
    swift_beginAccess();
    v6 = v5[1];
    if (v6)
    {
      if (a2 && (v7 = *v5, v8 = (a2 + OBJC_IVAR____TtC9PassKitUI28PKPassTileForeignViewAdaptor_viewIdentifier), swift_beginAccess(), (v9 = v8[1]) != 0))
      {
        if (v7 == *v8 && v6 == v9)
        {
          LOBYTE(a1) = 1;
        }

        else
        {
          LOBYTE(a1) = sub_1BE053B84();
        }
      }

      else
      {
        LOBYTE(a1) = 0;
      }
    }

    else
    {
      LOBYTE(a1) = [*(v2 + OBJC_IVAR____TtC9PassKitUI28PKPassTileForeignViewAdaptor_view) isEqual_];
    }
  }

  return a1 & 1;
}

id PKPassTileForeignViewAdaptor.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id PKPassTileForeignViewAdaptor.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PKPassTileForeignViewAdaptor();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_1BD1C3CB4()
{
  result = qword_1EBD3C4F8[0];
  if (!qword_1EBD3C4F8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EBD3C4F8);
  }

  return result;
}

uint64_t sub_1BD1C3F48(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v55 = v3;
  v5 = *MEMORY[0x1E69E7D40] & *v3;
  v6 = *(v5 + qword_1EBDAAE38);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](a1, a2);
  v48 = &v47 - v8;
  v9 = sub_1BE0534B4();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v51 = *(TupleTypeMetadata2 - 8);
  v12 = MEMORY[0x1EEE9AC00](TupleTypeMetadata2, v11);
  v14 = &v47 - v13;
  v59 = *(v9 - 8);
  v16 = MEMORY[0x1EEE9AC00](v12, v15);
  v50 = &v47 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x1EEE9AC00](v16, v18);
  v21 = &v47 - v20;
  MEMORY[0x1EEE9AC00](v19, v22);
  v58 = &v47 - v23;
  sub_1BD1C4810(a1, v61);
  v49 = v5;
  v56 = v14;
  v57 = v21;
  v54 = v9;
  if (v62)
  {
    sub_1BE04EAF4();
    if (swift_dynamicCast())
    {
      v24 = v60;
      v25 = v58;
      sub_1BE04EAD4();

      v26 = 0;
      goto LABEL_6;
    }
  }

  else
  {
    sub_1BD14EC0C(v61);
  }

  v26 = 1;
  v25 = v58;
LABEL_6:
  v27 = v7;
  v28 = *(v7 + 56);
  v28(v25, v26, 1, v6);
  v29 = v57;
  sub_1BE04EAD4();
  v28(v29, 0, 1, v6);
  v52 = TupleTypeMetadata2;
  v30 = *(TupleTypeMetadata2 + 48);
  v31 = v59;
  v32 = *(v59 + 16);
  v33 = v56;
  v34 = v54;
  v32(v56, v25, v54);
  v55 = v30;
  v32(&v30[v33], v29, v34);
  v53 = v27;
  v35 = *(v27 + 48);
  if (v35(v33, 1, v6) != 1)
  {
    v38 = v50;
    v32(v50, v33, v34);
    v39 = v55;
    v40 = v34;
    if (v35(&v55[v33], 1, v6) != 1)
    {
      v42 = v53;
      v43 = v48;
      (*(v53 + 32))(v48, &v39[v33], v6);
      v37 = sub_1BE052334();
      v44 = *(v42 + 8);
      v44(v43, v6);
      v45 = *(v59 + 8);
      v45(v29, v40);
      v45(v58, v40);
      v44(v38, v6);
      v45(v33, v40);
      return v37 & 1;
    }

    v41 = *(v59 + 8);
    v41(v29, v40);
    v41(v58, v40);
    (*(v53 + 8))(v38, v6);
    goto LABEL_11;
  }

  v36 = *(v31 + 8);
  v36(v29, v34);
  v36(v25, v34);
  if (v35(&v55[v33], 1, v6) != 1)
  {
LABEL_11:
    (*(v51 + 8))(v33, v52);
    v37 = 0;
    return v37 & 1;
  }

  v36(v33, v34);
  v37 = 1;
  return v37 & 1;
}

uint64_t sub_1BD1C44C0(void *a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v4 = a1;
    swift_unknownObjectRetain();
    sub_1BE053624();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v9, 0, sizeof(v9));
    v6 = a1;
  }

  v7 = sub_1BD1C3F48(v9, v5);

  sub_1BD14EC0C(v9);
  return v7 & 1;
}

uint64_t sub_1BD1C4538(uint64_t a1)
{
  v2 = v1;
  v4 = objc_allocWithZone(v1);
  v5 = sub_1BD1C4728(a1);
  (*(*(*(v2 + qword_1EBDAAE38) - 8) + 8))(a1);
  return v5;
}

id sub_1BD1C45B8(void *a1)
{
  v5.receiver = v1;
  v5.super_class = type metadata accessor for PKEquatableHostingView();
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

id sub_1BD1C4690()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PKEquatableHostingView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1BD1C4728(uint64_t a1)
{
  MEMORY[0x1EEE9AC00](a1, a1);
  (*(v2 + 16))(&v4 - v1);
  return sub_1BE04EAC4();
}

uint64_t sub_1BD1C4810(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3EC90);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BD1C4880@<X0>(uint64_t a1@<X8>)
{
  v31 = a1;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3C5C8);
  v28 = *(v32 - 8);
  MEMORY[0x1EEE9AC00](v32, v1);
  v27 = &v27 - v2;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3C5D0);
  MEMORY[0x1EEE9AC00](v29, v3);
  v5 = &v27 - v4;
  v6 = sub_1BE04C894();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3C5A8);
  v11 = *(v30 - 8);
  MEMORY[0x1EEE9AC00](v30, v12);
  v14 = &v27 - v13;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();

  v15 = *(v33 + 16);

  if (v15)
  {
    MEMORY[0x1EEE9AC00](v16, v17);
    (*(v7 + 104))(v10, *MEMORY[0x1E69BC9F0], v6);
    sub_1BE04C784();
    sub_1BD1C7FB0(&qword_1EBD3C5D8, MEMORY[0x1E69BC970]);
    sub_1BE04C6B4();
    v18 = v30;
    (*(v11 + 16))(v5, v14, v30);
    swift_storeEnumTagMultiPayload();
    sub_1BD0DE4F4(&qword_1EBD3C5A0, &qword_1EBD3C5A8);
    v19 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3C5B0);
    v20 = sub_1BD0DE4F4(&qword_1EBD3C5B8, &qword_1EBD3C5B0);
    v33 = v19;
    v34 = MEMORY[0x1E69E6370];
    v35 = v20;
    v36 = MEMORY[0x1E69E6388];
    swift_getOpaqueTypeConformance2();
    sub_1BE04F9A4();
    return (*(v11 + 8))(v14, v18);
  }

  else
  {
    v22 = v27;
    sub_1BD1C4E10(v27);
    v23 = v28;
    v24 = v32;
    (*(v28 + 16))(v5, v22, v32);
    swift_storeEnumTagMultiPayload();
    sub_1BD0DE4F4(&qword_1EBD3C5A0, &qword_1EBD3C5A8);
    v25 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3C5B0);
    v26 = sub_1BD0DE4F4(&qword_1EBD3C5B8, &qword_1EBD3C5B0);
    v33 = v25;
    v34 = MEMORY[0x1E69E6370];
    v35 = v26;
    v36 = MEMORY[0x1E69E6388];
    swift_getOpaqueTypeConformance2();
    sub_1BE04F9A4();
    return (*(v23 + 8))(v22, v24);
  }
}

uint64_t sub_1BD1C4E10@<X0>(uint64_t a1@<X8>)
{
  v26 = a1;
  v2 = sub_1BE04C624();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v23 = v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1BE04C894();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3C5B0);
  v24 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25, v11);
  v13 = v22 - v12;
  v28 = v1;
  v14 = *(v1 + 16);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();

  v15 = MEMORY[0x1E69BCA00];
  if (!v29[0])
  {
    v15 = MEMORY[0x1E69BC9F8];
  }

  (*(v7 + 104))(v10, *v15, v6);
  v22[1] = v22;
  v27 = v1;
  (*(v3 + 104))(v23, *MEMORY[0x1E69BC908], v2);
  sub_1BE04C784();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3C5E0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3C5E8);
  sub_1BD1C7FB0(&qword_1EBD3C5D8, MEMORY[0x1E69BC970]);
  sub_1BD1C7C1C();
  sub_1BD1C7DB8();
  sub_1BE04C6C4();
  if (*(v14 + 40))
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_1BE04D8B4();

    v16 = v29[0];
  }

  else
  {
    v16 = 0;
  }

  v29[87] = v16;
  v17 = swift_allocObject();
  v18 = *(v1 + 48);
  v17[3] = *(v1 + 32);
  v17[4] = v18;
  v17[5] = *(v1 + 64);
  v19 = *(v1 + 16);
  v17[1] = *v1;
  v17[2] = v19;
  sub_1BD1C8050(v1, v29);
  sub_1BD0DE4F4(&qword_1EBD3C5B8, &qword_1EBD3C5B0);
  v20 = v25;
  sub_1BE051064();

  return (*(v24 + 8))(v13, v20);
}

uint64_t sub_1BD1C52C4()
{
  sub_1BE0512B4();

  return sub_1BE04C774();
}

id sub_1BD1C531C@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39C38);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = v36 - v6;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3C670);
  MEMORY[0x1EEE9AC00](v45, v8);
  v10 = v36 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3ACF0);
  MEMORY[0x1EEE9AC00](v11 - 8, v12);
  v38 = v36 - v13;
  v14 = sub_1BE04BD74();
  v43 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = v36 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3C610);
  v40 = *(v18 - 8);
  v41 = v18;
  MEMORY[0x1EEE9AC00](v18, v19);
  v39 = v36 - v20;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3C600);
  v22 = MEMORY[0x1EEE9AC00](v44, v21);
  v24 = v36 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22, v25);
  v42 = v36 - v26;
  v27 = *(*(v1 + 16) + 16);
  if (*(v27 + 16) == 1 && (sub_1BD6CC0DC(*MEMORY[0x1E69BB7B8], v27) & 1) != 0 && (swift_getKeyPath(), v36[1] = a1, swift_getKeyPath(), v37 = v3, sub_1BE04D8B4(), , v3 = v37, , v47 == 1))
  {
    v28 = v43;
    (*(v43 + 104))(v17, *MEMORY[0x1E69B8068], v14);
    result = PKPassKitBundle();
    if (result)
    {
      v30 = result;
      sub_1BE04B6F4();

      (*(v28 + 8))(v17, v14);
      sub_1BD1C5FBC(v38);
      v31 = v39;
      sub_1BE04C654();
      v47 = *(v1 + 64);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54350);
      sub_1BE0516A4();
      if (v46 == 1)
      {
        v32 = sub_1BE051D44();
      }

      else
      {
        v32 = 0;
      }

      v33 = &v24[*(v44 + 36)];
      v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3C620);
      sub_1BD1C5FBC(v33 + *(v34 + 36));
      *v33 = v32;
      (*(v40 + 32))(v24, v31, v41);
      v35 = v42;
      sub_1BD0DE204(v24, v42, &qword_1EBD3C600);
      sub_1BD0DE19C(v35, v10, &qword_1EBD3C600);
      swift_storeEnumTagMultiPayload();
      sub_1BD1C7CD4();
      sub_1BD0DE4F4(&qword_1EBD39C30, &qword_1EBD39C38);
      sub_1BE04F9A4();
      return sub_1BD0DE53C(v35, &qword_1EBD3C600);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    sub_1BD1C6A20();
    (*(v4 + 16))(v10, v7, v3);
    swift_storeEnumTagMultiPayload();
    sub_1BD1C7CD4();
    sub_1BD0DE4F4(&qword_1EBD39C30, &qword_1EBD39C38);
    sub_1BE04F9A4();
    return (*(v4 + 8))(v7, v3);
  }

  return result;
}

uint64_t sub_1BD1C5924@<X0>(uint64_t a1@<X8>)
{
  if (sub_1BD1C59BC())
  {
    sub_1BD1C5B30(a1);
    v2 = 0;
  }

  else
  {
    v2 = 1;
  }

  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3C5E8);
  v4 = *(*(v3 - 8) + 56);

  return v4(a1, v2, 1, v3);
}

uint64_t sub_1BD1C59BC()
{
  v1 = *(v0 + 16);
  if (!*(v1 + 40))
  {
    return 0;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE048964();
  sub_1BE04D8B4();

  if (v6 != 1 || (v2 = *(v1 + 16), *(v2 + 16) == 1) && (sub_1BD6CC0DC(*MEMORY[0x1E69BB7B8], v2) & 1) != 0)
  {

    return 0;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();

  if (v5)
  {

    return 1;
  }

  else
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_1BE04D8B4();

    return v4;
  }
}

uint64_t sub_1BD1C5B30@<X0>(uint64_t a1@<X8>)
{
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3C658);
  MEMORY[0x1EEE9AC00](v43, v3);
  v5 = (&v36 - v4);
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3C648);
  MEMORY[0x1EEE9AC00](v45, v6);
  v8 = &v36 - v7;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3C638);
  v9 = *(v46 - 8);
  MEMORY[0x1EEE9AC00](v46, v10);
  v44 = &v36 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3ACF0);
  MEMORY[0x1EEE9AC00](v12 - 8, v13);
  v15 = &v36 - v14;
  v16 = sub_1BE04A5B4();
  v17 = *(v16 - 8);
  v19 = MEMORY[0x1EEE9AC00](v16, v18);
  v21 = &v36 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19, v22);
  v24 = &v36 - v23;
  sub_1BD1C5FBC(v15);
  if ((*(v17 + 48))(v15, 1, v16) == 1)
  {
    sub_1BD0DE53C(v15, &qword_1EBD3ACF0);
    v25 = 1;
  }

  else
  {
    v42 = a1;
    (*(v17 + 32))(v24, v15, v16);
    v26 = *(v17 + 16);
    v26(v21, v24, v16);
    v27 = sub_1BE0506A4();
    v39 = v28;
    v40 = v27;
    v38 = v29;
    v41 = v30;
    KeyPath = swift_getKeyPath();
    v48 = *(v1 + 64);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54350);
    sub_1BE0516A4();
    if (v47 == 1)
    {
      v31 = sub_1BE051D44();
    }

    else
    {
      v31 = 0;
    }

    v26(v5 + *(v43 + 36), v24, v16);
    *v5 = v31;
    sub_1BD0DE19C(v5, &v8[*(v45 + 36)], &qword_1EBD3C658);
    v32 = v39;
    *v8 = v40;
    *(v8 + 1) = v32;
    v8[16] = v38 & 1;
    v33 = KeyPath;
    *(v8 + 3) = v41;
    *(v8 + 4) = v33;
    v8[40] = 0;
    sub_1BD0DE53C(v5, &qword_1EBD3C658);
    sub_1BE052434();
    sub_1BD1C7EF8();
    v34 = v44;
    sub_1BE050DE4();

    sub_1BD0DE53C(v8, &qword_1EBD3C648);
    (*(v17 + 8))(v24, v16);
    a1 = v42;
    sub_1BD0DE204(v34, v42, &qword_1EBD3C638);
    v25 = 0;
  }

  return (*(v9 + 56))(a1, v25, 1, v46);
}

id sub_1BD1C5FBC@<X0>(uint64_t a1@<X8>)
{
  v88 = a1;
  v2 = sub_1BE04A5B4();
  v91 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2, v3);
  v79 = &v75 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v4, v6);
  v9 = &v75 - v8;
  v11 = MEMORY[0x1EEE9AC00](v7, v10);
  v80 = &v75 - v12;
  MEMORY[0x1EEE9AC00](v11, v13);
  v83 = &v75 - v14;
  v15 = sub_1BE04A604();
  MEMORY[0x1EEE9AC00](v15 - 8, v16);
  v86 = &v75 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1BE04BD74();
  v19 = *(v18 - 8);
  v21 = MEMORY[0x1EEE9AC00](v18, v20);
  v81 = &v75 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21, v23);
  v25 = &v75 - v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3ACF0);
  v28 = MEMORY[0x1EEE9AC00](v26 - 8, v27);
  v82 = &v75 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = MEMORY[0x1EEE9AC00](v28, v30);
  v85 = &v75 - v32;
  v34 = MEMORY[0x1EEE9AC00](v31, v33);
  v87 = &v75 - v35;
  v37 = MEMORY[0x1EEE9AC00](v34, v36);
  v84 = &v75 - v38;
  v40 = MEMORY[0x1EEE9AC00](v37, v39);
  v42 = &v75 - v41;
  MEMORY[0x1EEE9AC00](v40, v43);
  v45 = &v75 - v44;
  v46 = *(*(v1 + 16) + 40);
  if (v46)
  {
    v77 = v9;
    v89 = v91[7];
    v90 = v91 + 7;
    v89(&v75 - v44, 1, 1, v2);
    swift_getKeyPath();
    swift_getKeyPath();
    sub_1BE048964();
    sub_1BE04D8B4();

    if (v92 != 1)
    {
      swift_getKeyPath();
      swift_getKeyPath();
      sub_1BE04D8B4();

      v51 = v92;
      if (!v92)
      {
        goto LABEL_11;
      }

      sub_1BD9DE0A8(v92);
      sub_1BE04A5F4();
      v42 = v84;
      sub_1BE04A5C4();

LABEL_10:
      v89(v42, 0, 1, v2);
      sub_1BD1C8088(v42, v45);
LABEL_11:
      v78 = v18;
      v52 = v91[6];
      if (!v52(v45, 1, v2))
      {
        v92 = sub_1BE051224();
        sub_1BD1C80F8();
        sub_1BE04A5D4();
      }

      v53 = v87;
      v89(v87, 1, 1, v2);
      swift_getKeyPath();
      swift_getKeyPath();
      sub_1BE04D8B4();

      if ((v92 & 1) != 0 || (swift_getKeyPath(), swift_getKeyPath(), sub_1BE04D8B4(), , , v92 == 1))
      {
        v54 = *(v46 + OBJC_IVAR____TtC9PassKitUI14EmailAddresses_forwardingEmailString + 8);
        if (v54)
        {
          v55 = *(v46 + OBJC_IVAR____TtC9PassKitUI14EmailAddresses_forwardingEmailString);
          v75 = "T@UIView,N,R,Vview";
          v56 = *MEMORY[0x1E69B8048];
          v57 = v19;
          v58 = *(v19 + 104);
          v76 = v52;
          v59 = v81;
          v60 = v78;
          v58(v81, v56, v78);
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF80);
          v61 = swift_allocObject();
          *(v61 + 16) = xmmword_1BE0B69E0;
          *(v61 + 56) = MEMORY[0x1E69E6158];
          *(v61 + 64) = sub_1BD110550();
          *(v61 + 32) = v55;
          *(v61 + 40) = v54;
          sub_1BE048C84();
          sub_1BE04B714();

          v62 = v59;
          v52 = v76;
          (*(v57 + 8))(v62, v60);
          sub_1BE04A5F4();
          v63 = v84;
          v53 = v87;
          sub_1BE04A5C4();
          v89(v63, 0, 1, v2);
          sub_1BD1C8088(v63, v53);
          if (!v52(v53, 1, v2))
          {
            v92 = sub_1BE050454();
            sub_1BD1C814C();
            sub_1BE04A5D4();
          }

          if (!v52(v53, 1, v2))
          {
            v92 = sub_1BE051234();
            sub_1BD1C80F8();
            sub_1BE04A5D4();
          }
        }
      }

      v64 = v85;
      sub_1BD0DE19C(v45, v85, &qword_1EBD3ACF0);
      if (v52(v64, 1, v2) != 1)
      {
        v65 = v91[4];
        v66 = v53;
        v67 = v83;
        v65(v83, v64, v2);
        v64 = v82;
        sub_1BD0DE19C(v66, v82, &qword_1EBD3ACF0);
        if (v52(v64, 1, v2) != 1)
        {
          v69 = v64;
          v70 = v80;
          v65(v80, v69, v2);
          v71 = v79;
          sub_1BE04A544();
          v72 = v77;
          sub_1BE04A554();
          v73 = v91[1];
          ++v91;
          v73(v71, v2);
          v74 = v88;
          sub_1BE04A554();

          v73(v72, v2);
          v73(v70, v2);
          v73(v67, v2);
          v89(v74, 0, 1, v2);
          v68 = v66;
          goto LABEL_25;
        }

        (v91[1])(v67, v2);
        v53 = v66;
      }

      sub_1BD0DE53C(v64, &qword_1EBD3ACF0);
      sub_1BD0DE19C(v45, v88, &qword_1EBD3ACF0);
      v68 = v53;
LABEL_25:
      sub_1BD0DE53C(v68, &qword_1EBD3ACF0);
      return sub_1BD0DE53C(v45, &qword_1EBD3ACF0);
    }

    (*(v19 + 104))(v25, *MEMORY[0x1E69B8048], v18);
    result = PKPassKitBundle();
    if (result)
    {
      v48 = result;
      sub_1BE04B6F4();

      (*(v19 + 8))(v25, v18);
      sub_1BE04A5F4();
      sub_1BE04A5C4();
      goto LABEL_10;
    }

    __break(1u);
  }

  else
  {
    v49 = v91[7];
    v50 = v88;

    return v49(v50, 1, 1, v2);
  }

  return result;
}

id sub_1BD1C6A20()
{
  v0 = sub_1BE04BD74();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v1 + 104))(v4, *MEMORY[0x1E69B8068], v0);
  result = PKPassKitBundle();
  if (result)
  {
    v6 = result;
    sub_1BE04B6F4();

    (*(v1 + 8))(v4, v0);
    swift_getKeyPath();
    swift_getKeyPath();
    sub_1BE04D8B4();

    if (v7 == 1)
    {
      swift_getKeyPath();
      swift_getKeyPath();
      sub_1BE04D8B4();
    }

    else
    {
      sub_1BD1C6C80();
    }

    swift_getKeyPath();
    swift_getKeyPath();
    sub_1BE04D8B4();

    if (v7 == 1)
    {
      sub_1BE051224();
    }

    else
    {
      sub_1BE051264();
    }

    return sub_1BE04C644();
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1BD1C6C80()
{
  v1 = sub_1BE04BD74();
  v2 = *(v1 - 8);
  v4 = MEMORY[0x1EEE9AC00](v1, v3);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = &v15 - v8;
  v10 = *MEMORY[0x1E69B8068];
  v11 = *(v2 + 104);
  if (*v0 == 10)
  {
    v11(&v15 - v8, v10, v1);
    result = PKPassKitBundle();
    if (result)
    {
      v13 = result;
      v14 = sub_1BE04B6F4();
LABEL_6:

      (*(v2 + 8))(v9, v1);
      return v14;
    }

    __break(1u);
  }

  else
  {
    v11(v6, v10, v1);
    result = PKPassKitBundle();
    if (result)
    {
      v13 = result;
      v14 = sub_1BE04B6F4();
      v9 = v6;
      goto LABEL_6;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1BD1C6E54()
{
  sub_1BE0511D4();

  return sub_1BE04C774();
}

uint64_t sub_1BD1C6EAC@<X0>(uint64_t a1@<X8>)
{
  sub_1BD1C6FD0();
  sub_1BD0DDEBC();
  v2 = sub_1BE0506C4();
  v4 = v3;
  v6 = v5;
  sub_1BE050324();
  v7 = sub_1BE0505F4();
  v9 = v8;
  v11 = v10;

  sub_1BD0DDF10(v2, v4, v6 & 1);

  sub_1BE0511F4();
  v12 = sub_1BE050564();
  v14 = v13;
  v16 = v15;
  v18 = v17;

  sub_1BD0DDF10(v7, v9, v11 & 1);

  *a1 = v12;
  *(a1 + 8) = v14;
  *(a1 + 16) = v16 & 1;
  *(a1 + 24) = v18;
  return result;
}

id sub_1BD1C6FD0()
{
  v0 = sub_1BE04BD74();
  v1 = *(v0 - 8);
  v3 = MEMORY[0x1EEE9AC00](v0, v2);
  v5 = &v52 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v3, v6);
  v52 = &v52 - v8;
  v10 = MEMORY[0x1EEE9AC00](v7, v9);
  v12 = &v52 - v11;
  v14 = MEMORY[0x1EEE9AC00](v10, v13);
  v16 = &v52 - v15;
  v18 = MEMORY[0x1EEE9AC00](v14, v17);
  v20 = &v52 - v19;
  MEMORY[0x1EEE9AC00](v18, v21);
  v23 = &v52 - v22;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();

  v24 = v53;
  v25 = sub_1BD960FA4(v53);
  if (!v25)
  {

LABEL_8:
    (*(v1 + 104))(v5, *MEMORY[0x1E69B8068], v0);
    result = PKPassKitBundle();
    if (result)
    {
      v33 = result;
      v34 = sub_1BE04B6F4();
      v23 = v5;
LABEL_15:

      (*(v1 + 8))(v23, v0);
      return v34;
    }

    __break(1u);
LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  v26 = v25;
  v27 = *(v24 + 16);

  if (v27 != 1)
  {

    goto LABEL_8;
  }

  v28 = sub_1BE052434();
  v30 = v29;
  if (v28 == sub_1BE052434() && v30 == v31)
  {

    goto LABEL_11;
  }

  v35 = sub_1BE053B84();

  if (v35)
  {
LABEL_11:
    (*(v1 + 104))(v23, *MEMORY[0x1E69B8068], v0);
    result = PKPassKitBundle();
    if (result)
    {
      v33 = result;
LABEL_13:
      v36 = sub_1BE04B6F4();
LABEL_14:
      v34 = v36;

      goto LABEL_15;
    }

    goto LABEL_37;
  }

  v37 = sub_1BE052434();
  v39 = v38;
  if (v37 == sub_1BE052434() && v39 == v40)
  {

    goto LABEL_20;
  }

  v41 = sub_1BE053B84();

  if (v41)
  {
LABEL_20:
    (*(v1 + 104))(v20, *MEMORY[0x1E69B8068], v0);
    result = PKPassKitBundle();
    if (result)
    {
      v33 = result;
      v34 = sub_1BE04B6F4();

      v23 = v20;
      goto LABEL_15;
    }

    goto LABEL_38;
  }

  v42 = sub_1BE052434();
  v44 = v43;
  if (v42 == sub_1BE052434() && v44 == v45)
  {

    goto LABEL_26;
  }

  v46 = sub_1BE053B84();

  if (v46)
  {
LABEL_26:
    (*(v1 + 104))(v16, *MEMORY[0x1E69B8068], v0);
    result = PKPassKitBundle();
    if (result)
    {
      v33 = result;
      v34 = sub_1BE04B6F4();

      v23 = v16;
      goto LABEL_15;
    }

    goto LABEL_39;
  }

  v47 = sub_1BE052434();
  v49 = v48;
  if (v47 == sub_1BE052434() && v49 == v50)
  {

    goto LABEL_32;
  }

  v51 = sub_1BE053B84();

  if (v51)
  {
LABEL_32:
    (*(v1 + 104))(v12, *MEMORY[0x1E69B8068], v0);
    result = PKPassKitBundle();
    if (result)
    {
      v33 = result;
      v36 = sub_1BE04B6F4();
      v23 = v12;
      goto LABEL_14;
    }

    goto LABEL_40;
  }

  v23 = v52;
  (*(v1 + 104))(v52, *MEMORY[0x1E69B8068], v0);
  result = PKPassKitBundle();
  if (result)
  {
    v33 = result;
    goto LABEL_13;
  }

LABEL_41:
  __break(1u);
  return result;
}

uint64_t sub_1BD1C7660()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3C588);
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1, v3);
  v5 = &v9[-v4];
  v6 = v0[3];
  v11[2] = v0[2];
  v11[3] = v6;
  v11[4] = v0[4];
  v7 = v0[1];
  v11[0] = *v0;
  v11[1] = v7;
  v10 = v11;
  sub_1BE048964();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3C590);
  sub_1BD1C7AB0();
  sub_1BE051704();
  sub_1BE052434();
  sub_1BD0DE4F4(&qword_1EBD3C5C0, &qword_1EBD3C588);
  sub_1BE050DE4();

  return (*(v2 + 8))(v5, v1);
}

uint64_t sub_1BD1C7824@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  sub_1BE051694();
  type metadata accessor for ShippingContact();
  sub_1BD1C7FB0(&qword_1EBD3C580, type metadata accessor for ShippingContact);
  sub_1BE048964();
  v10 = sub_1BE04E954();
  v12 = v11;
  if (*(a2 + 40))
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_1BE04D8B4();
  }

  result = sub_1BE051694();
  *a5 = a1;
  *(a5 + 8) = v10;
  *(a5 + 16) = v12;
  *(a5 + 24) = a3;
  *(a5 + 32) = a4;
  *(a5 + 40) = 0x4049000000000000;
  *(a5 + 48) = v14;
  *(a5 + 56) = v15;
  *(a5 + 64) = v14;
  *(a5 + 72) = v15;
  return result;
}

__n128 __swift_memcpy80_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = result;
  *(a1 + 32) = v3;
  return result;
}

uint64_t sub_1BD1C79E0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
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

uint64_t sub_1BD1C7A28(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
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

    *(result + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1BD1C7AB0()
{
  result = qword_1EBD3C598;
  if (!qword_1EBD3C598)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3C590);
    sub_1BD0DE4F4(&qword_1EBD3C5A0, &qword_1EBD3C5A8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3C5B0);
    sub_1BD0DE4F4(&qword_1EBD3C5B8, &qword_1EBD3C5B0);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3C598);
  }

  return result;
}

unint64_t sub_1BD1C7C1C()
{
  result = qword_1EBD3C5F0;
  if (!qword_1EBD3C5F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3C5E0);
    sub_1BD1C7CD4();
    sub_1BD0DE4F4(&qword_1EBD39C30, &qword_1EBD39C38);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3C5F0);
  }

  return result;
}

unint64_t sub_1BD1C7CD4()
{
  result = qword_1EBD3C5F8;
  if (!qword_1EBD3C5F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3C600);
    sub_1BD0DE4F4(&qword_1EBD3C608, &qword_1EBD3C610);
    sub_1BD0DE4F4(&qword_1EBD3C618, &qword_1EBD3C620);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3C5F8);
  }

  return result;
}

unint64_t sub_1BD1C7DB8()
{
  result = qword_1EBD3C628;
  if (!qword_1EBD3C628)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3C5E8);
    sub_1BD1C7E3C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3C628);
  }

  return result;
}

unint64_t sub_1BD1C7E3C()
{
  result = qword_1EBD3C630;
  if (!qword_1EBD3C630)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3C638);
    sub_1BD1C7EF8();
    sub_1BD1C7FB0(&qword_1EBD52210, MEMORY[0x1E697CBE8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3C630);
  }

  return result;
}

unint64_t sub_1BD1C7EF8()
{
  result = qword_1EBD3C640;
  if (!qword_1EBD3C640)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3C648);
    sub_1BD0FF49C();
    sub_1BD0DE4F4(&qword_1EBD3C650, &qword_1EBD3C658);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3C640);
  }

  return result;
}

uint64_t sub_1BD1C7FB0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1BD1C8088(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3ACF0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_1BD1C80F8()
{
  result = qword_1EBD3C660;
  if (!qword_1EBD3C660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3C660);
  }

  return result;
}

unint64_t sub_1BD1C814C()
{
  result = qword_1EBD3C668;
  if (!qword_1EBD3C668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3C668);
  }

  return result;
}

unint64_t sub_1BD1C81A0()
{
  result = qword_1EBD3C678;
  if (!qword_1EBD3C678)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3C680);
    sub_1BD0DE4F4(&qword_1EBD3C5C0, &qword_1EBD3C588);
    sub_1BD1C7FB0(&qword_1EBD52210, MEMORY[0x1E697CBE8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3C678);
  }

  return result;
}

void sub_1BD1C82F0()
{
  type metadata accessor for PKPaymentRequestType(319);
  if (v0 <= 0x3F)
  {
    sub_1BD0E5E8C(319, &qword_1EBD38840);
    if (v1 <= 0x3F)
    {
      sub_1BD10315C(319, &qword_1EBD3C698, &qword_1EBD38840);
      if (v2 <= 0x3F)
      {
        _s22SummaryItemPricingTypeOMa(319);
        if (v3 <= 0x3F)
        {
          type metadata accessor for PKPaymentAuthorizationFundingMode(319);
          if (v4 <= 0x3F)
          {
            sub_1BD10315C(319, &qword_1EBD39318, &unk_1EBD3E560);
            if (v5 <= 0x3F)
            {
              sub_1BD1C84B0(319, &qword_1EBD36458, type metadata accessor for PeerPaymentModel);
              if (v6 <= 0x3F)
              {
                sub_1BD1C84B0(319, &qword_1EBD3C6A0, type metadata accessor for Passes);
                if (v7 <= 0x3F)
                {
                  type metadata accessor for PKPaymentAuthorizationState(319);
                  if (v8 <= 0x3F)
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

void sub_1BD1C84B0(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1BE0534B4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1BD1C8504()
{
  result = _s22SummaryItemPricingTypeO13RecurringItemVMa(319);
  if (v1 <= 0x3F)
  {
    result = sub_1BE04AF64();
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

void sub_1BD1C85D8()
{
  type metadata accessor for Unit(319);
  if (v0 <= 0x3F)
  {
    sub_1BD1C84B0(319, &qword_1EBD36A40, MEMORY[0x1E6969530]);
    if (v1 <= 0x3F)
    {
      sub_1BD1C86BC();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1BD1C86BC()
{
  if (!qword_1EBD4F750)
  {
    v0 = sub_1BE0534B4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBD4F750);
    }
  }
}

uint64_t sub_1BD1C870C@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  objc_opt_self();
  v8 = swift_dynamicCastObjCClass();
  if (v8)
  {
    sub_1BD1CA51C(v8, a2, a3, a4);
    _s22SummaryItemPricingTypeOMa(0);
  }

  else
  {
    objc_opt_self();
    v9 = swift_dynamicCastObjCClass();
    if (v9)
    {
      v10 = v9;

      v11 = [v10 deferredDate];
      sub_1BE04AEE4();

      _s22SummaryItemPricingTypeOMa(0);
    }

    else
    {
      objc_opt_self();
      if (swift_dynamicCastObjCClass())
      {
        v12 = a1;
        v13 = sub_1BD59BFAC();
        v15 = v14;

        *a4 = v13;
        a4[1] = v15;
      }

      else
      {
      }

      _s22SummaryItemPricingTypeOMa(0);
    }
  }

  return swift_storeEnumTagMultiPayload();
}

id sub_1BD1C8894()
{
  v1 = sub_1BE04AF64();
  v92 = *(v1 - 8);
  v93 = v1;
  MEMORY[0x1EEE9AC00](v1, v2);
  v91 = &v89 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = _s22SummaryItemPricingTypeO13RecurringItemVMa(0);
  MEMORY[0x1EEE9AC00](v4, v5);
  v7 = &v89 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = _s22SummaryItemPricingTypeOMa(0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v89 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1BE04BD74();
  v13 = *(v12 - 8);
  v95 = v12;
  v96 = v13;
  v15 = MEMORY[0x1EEE9AC00](v12, v14);
  v94 = &v89 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1EEE9AC00](v15, v17);
  v20 = &v89 - v19;
  v22 = MEMORY[0x1EEE9AC00](v18, v21);
  v24 = &v89 - v23;
  MEMORY[0x1EEE9AC00](v22, v25);
  v27 = &v89 - v26;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD43B40);
  MEMORY[0x1EEE9AC00](v28 - 8, v29);
  v31 = &v89 - v30;
  v32 = _s11TotalAmountVMa(0);
  v33 = v32;
  if (*(v0 + *(v32 + 52)) != 2 || (v34 = *(v0 + *(v32 + 56))) == 0)
  {
LABEL_9:
    if (*(v0 + v33[12]) == 1)
    {
      v43 = v95;
      v42 = v96;
      (*(v96 + 104))(v20, *MEMORY[0x1E69B8068], v95);
      result = PKPassKitBundle();
      if (result)
      {
        v45 = result;
        v41 = sub_1BE04B6F4();

        (*(v42 + 8))(v20, v43);
        return v41;
      }

      __break(1u);
      goto LABEL_44;
    }

    v46 = *v0;
    if (*v0 <= 9 && ((1 << v46) & 0x20C) != 0 || *(v0 + v33[11]) == 1)
    {
      v41 = v0[5];
      sub_1BE048C84();
      return v41;
    }

    if (v46 == 10)
    {
      v47 = sub_1BD1C9A74();
      if (v48)
      {
        v49 = v47;
        v50 = v48;
        v52 = v95;
        v51 = v96;
        v53 = v94;
        (*(v96 + 104))(v94, *MEMORY[0x1E69B8070], v95);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF80);
        v54 = swift_allocObject();
        *(v54 + 16) = xmmword_1BE0B69E0;
        *(v54 + 56) = MEMORY[0x1E69E6158];
        *(v54 + 64) = sub_1BD110550();
        *(v54 + 32) = v49;
        *(v54 + 40) = v50;
        v41 = sub_1BE04B714();

        (*(v51 + 8))(v53, v52);
      }

      else
      {
        v71 = v95;
        v70 = v96;
        v72 = v94;
        (*(v96 + 104))(v94, *MEMORY[0x1E69B8070], v95);
        v41 = sub_1BE04B714();
        (*(v70 + 8))(v72, v71);
      }

      return v41;
    }

    sub_1BD1CBB88(v0 + v33[10], v11);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload > 1)
    {
      if (EnumCaseMultiPayload == 2)
      {
        sub_1BD1CBAC0(v11, _s22SummaryItemPricingTypeOMa);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF80);
        v59 = swift_allocObject();
        *(v59 + 16) = xmmword_1BE0B69E0;
        v61 = v0[5];
        v60 = v0[6];
        *(v59 + 56) = MEMORY[0x1E69E6158];
        *(v59 + 64) = sub_1BD110550();
        *(v59 + 32) = v61;
        *(v59 + 40) = v60;
        v63 = v95;
        v62 = v96;
        v64 = v94;
        (*(v96 + 104))(v94, *MEMORY[0x1E69B8068], v95);
        sub_1BE048C84();
LABEL_36:
        v41 = sub_1BE04B714();

        (*(v62 + 8))(v64, v63);
        return v41;
      }
    }

    else
    {
      if (EnumCaseMultiPayload)
      {
        v77 = v91;
        v76 = v92;
        v78 = v93;
        (*(v92 + 32))(v91, v11, v93);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF80);
        v79 = swift_allocObject();
        *(v79 + 16) = xmmword_1BE0B69E0;
        v80 = sub_1BD1C9C94(v77);
        v82 = v81;
        *(v79 + 56) = MEMORY[0x1E69E6158];
        *(v79 + 64) = sub_1BD110550();
        *(v79 + 32) = v80;
        *(v79 + 40) = v82;
        v84 = v95;
        v83 = v96;
        v85 = v94;
        (*(v96 + 104))(v94, *MEMORY[0x1E69B8068], v95);
        v41 = sub_1BE04B714();

        (*(v83 + 8))(v85, v84);
        (*(v76 + 8))(v77, v78);
        return v41;
      }

      sub_1BD1CBB20(v11, v7, _s22SummaryItemPricingTypeO13RecurringItemVMa);
      if (*(v0 + 56) != 1 || (v7[*(v4 + 32)] & 1) == 0)
      {
        v41 = *&v7[*(v4 + 40)];
        sub_1BE048C84();
        sub_1BD1CBAC0(v7, _s22SummaryItemPricingTypeO13RecurringItemVMa);
        return v41;
      }

      sub_1BD1CBAC0(v7, _s22SummaryItemPricingTypeO13RecurringItemVMa);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF80);
    v73 = swift_allocObject();
    *(v73 + 16) = xmmword_1BE0B69E0;
    v75 = v0[5];
    v74 = v0[6];
    *(v73 + 56) = MEMORY[0x1E69E6158];
    *(v73 + 64) = sub_1BD110550();
    *(v73 + 32) = v75;
    *(v73 + 40) = v74;
    v63 = v95;
    v62 = v96;
    v64 = v94;
    (*(v96 + 104))(v94, *MEMORY[0x1E69B8068], v95);
    sub_1BE048C84();
    goto LABEL_36;
  }

  v89 = v27;
  v90 = v24;
  v35 = v34;
  if ([v35 type] != 1 || (objc_opt_self(), (v36 = swift_dynamicCastObjCClass()) == 0) || (v37 = objc_msgSend(v36, sel_selectedInstallmentOffer)) == 0)
  {

    goto LABEL_9;
  }

  v38 = v37;
  v39 = PKPaymentOfferInstallmentAssessmentOffer.checkoutDueDateString.getter();
  if (v40)
  {
    v41 = v39;

    return v41;
  }

  sub_1BD0DE19C(v0 + v33[16], v31, &unk_1EBD43B40);
  v56 = type metadata accessor for Passes(0);
  if ((*(*(v56 - 8) + 48))(v31, 1, v56) == 1)
  {
    sub_1BD0DE53C(v31, &unk_1EBD43B40);
    v58 = v95;
    v57 = v96;
    goto LABEL_40;
  }

  v65 = *&v31[*(v56 + 20)];
  v66 = v65;
  sub_1BD1CBAC0(v31, type metadata accessor for Passes);
  v58 = v95;
  v57 = v96;
  if (!v65)
  {
LABEL_40:
    v86 = v90;
    (*(v57 + 104))(v90, *MEMORY[0x1E69B8078], v58);
    v87 = [v38 preferredLanguage];
    sub_1BE052434();

    result = PKPassKitBundle();
    if (result)
    {
      v88 = result;
      v41 = sub_1BE04B6E4();

      (*(v57 + 8))(v86, v58);
      return v41;
    }

LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  if ([v66 paymentType] != 2)
  {

    goto LABEL_40;
  }

  v67 = v89;
  (*(v57 + 104))(v89, *MEMORY[0x1E69B8078], v58);
  v68 = [v38 preferredLanguage];
  sub_1BE052434();

  result = PKPassKitBundle();
  if (result)
  {
    v69 = result;
    v41 = sub_1BE04B6E4();

    (*(v57 + 8))(v67, v58);
    return v41;
  }

LABEL_45:
  __break(1u);
  return result;
}

void sub_1BD1C93D0()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD45480);
  MEMORY[0x1EEE9AC00](v1 - 8, v2);
  v48 = &v46 - v3;
  v4 = _s22SummaryItemPricingTypeOMa(0);
  MEMORY[0x1EEE9AC00](v4, v5);
  v7 = &v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = _s22SummaryItemPricingTypeO13RecurringItemVMa(0);
  MEMORY[0x1EEE9AC00](v49, v8);
  v10 = &v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1BE04BD74();
  v12 = *(v11 - 8);
  v14 = MEMORY[0x1EEE9AC00](v11, v13);
  v16 = &v46 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14, v17);
  v19 = &v46 - v18;
  v20 = _s11TotalAmountVMa(0);
  v21 = v20;
  if (*(v0 + v20[13]) == 2)
  {
    v22 = *(v0 + v20[14]);
    if (v22)
    {
      if (*(v0 + v20[17]) == 18)
      {
        (*(v12 + 104))(v19, *MEMORY[0x1E69B8078], v11);
        v23 = v22;
        v24 = PKPassKitBundle();
        if (v24)
        {
          v25 = v24;
          sub_1BE04B6F4();

          (*(v12 + 8))(v19, v11);
          return;
        }

LABEL_30:
        __break(1u);
        goto LABEL_31;
      }

      v26 = v22;
      if ([v26 type] == 1)
      {
        objc_opt_self();
        v27 = swift_dynamicCastObjCClass();
        if (v27)
        {
          v28 = v27;
          v47 = v26;
          v29 = [v28 selectedInstallmentOffer];
          if (v29)
          {
            v30 = v29;
            PKPaymentOfferInstallmentAssessmentOffer.checkoutAmountString.getter();
            v31 = v47;

LABEL_26:
            return;
          }
        }
      }
    }
  }

  if (*(v0 + v21[12]) == 1)
  {
    (*(v12 + 104))(v16, *MEMORY[0x1E69B8068], v11);
    v32 = PKPassKitBundle();
    if (v32)
    {
      v33 = v32;
      sub_1BE04B6F4();

      (*(v12 + 8))(v16, v11);
      return;
    }

    __break(1u);
    goto LABEL_30;
  }

  sub_1BD1CBB88(v0 + v21[10], v7);
  if (!swift_getEnumCaseMultiPayload())
  {
LABEL_19:
    sub_1BD1CBB20(v7, v10, _s22SummaryItemPricingTypeO13RecurringItemVMa);
    sub_1BE048C84();
    sub_1BD1CBAC0(v10, _s22SummaryItemPricingTypeO13RecurringItemVMa);
    return;
  }

  sub_1BD1CBAC0(v7, _s22SummaryItemPricingTypeOMa);
  if (*v0 == 10)
  {
    v10 = *(v0 + 16);
    v34 = sub_1BE052404();
    v35 = PKFormattedCurrencyStringFromNumber();

    if (!v35)
    {
      __break(1u);
      goto LABEL_19;
    }

LABEL_28:
    sub_1BE052434();

    return;
  }

  v36 = v48;
  sub_1BD0DE19C(v0 + v21[15], v48, &qword_1EBD45480);
  v37 = type metadata accessor for PeerPaymentModel();
  if ((*(*(v37 - 8) + 48))(v36, 1, v37) == 1)
  {
    sub_1BD0DE53C(v36, &qword_1EBD45480);
    goto LABEL_27;
  }

  v38 = (v36 + *(v37 + 24));
  v39 = v38[3];
  v51[2] = v38[2];
  v51[3] = v39;
  v40 = v38[5];
  v51[4] = v38[4];
  v51[5] = v40;
  v41 = v38[1];
  v51[0] = *v38;
  v51[1] = v41;
  sub_1BD0DE19C(v51, v50, &unk_1EBD521D0);
  sub_1BD1CBAC0(v36, type metadata accessor for PeerPaymentModel);
  v42 = *&v51[0];
  if (*&v51[0] == 1 || (v31 = *&v51[0], sub_1BD0DE53C(v51, &unk_1EBD521D0), !v42))
  {
LABEL_27:
    v45 = sub_1BE052404();
    v35 = PKFormattedCurrencyStringFromNumber();

    if (!v35)
    {
LABEL_31:
      __break(1u);
      goto LABEL_32;
    }

    goto LABEL_28;
  }

  v43 = [v31 receiveAmount];
  v44 = [v31 receiveAmountCurrency];
  v30 = PKFormattedCurrencyStringFromNumber();

  if (v30)
  {
    sub_1BE052434();
    goto LABEL_26;
  }

LABEL_32:
  __break(1u);
}

uint64_t sub_1BD1C9A74()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD43B40);
  MEMORY[0x1EEE9AC00](v1 - 8, v2);
  v4 = &v16 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD520A0);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = &v16 - v7;
  v9 = _s11TotalAmountVMa(0);
  sub_1BD0DE19C(v0 + *(v9 + 64), v4, &unk_1EBD43B40);
  v10 = type metadata accessor for Passes(0);
  if ((*(*(v10 - 8) + 48))(v4, 1, v10) == 1)
  {
    v11 = &unk_1EBD43B40;
    v12 = v4;
LABEL_5:
    sub_1BD0DE53C(v12, v11);
    return 0;
  }

  sub_1BD0DE19C(v4, v8, &qword_1EBD520A0);
  sub_1BD1CBAC0(v4, type metadata accessor for Passes);
  v13 = type metadata accessor for AvailablePass(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    v11 = &qword_1EBD520A0;
    v12 = v8;
    goto LABEL_5;
  }

  v15 = sub_1BD49C818();
  sub_1BD1CBAC0(v8, type metadata accessor for AvailablePass);
  return v15;
}

uint64_t sub_1BD1C9C94(uint64_t a1)
{
  v39 = a1;
  v1 = sub_1BE04ACA4();
  v37 = *(v1 - 8);
  v38 = v1;
  MEMORY[0x1EEE9AC00](v1, v2);
  v36 = &v34 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1BE04ABD4();
  v34 = *(v4 - 8);
  v35 = v4;
  MEMORY[0x1EEE9AC00](v4, v5);
  v7 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1BE04AC64();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = &v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1BE04AD84();
  v14 = *(v13 - 8);
  v16 = MEMORY[0x1EEE9AC00](v13, v15);
  v18 = &v34 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x1EEE9AC00](v16, v19);
  v22 = &v34 - v21;
  v24 = MEMORY[0x1EEE9AC00](v20, v23);
  v26 = &v34 - v25;
  v28 = MEMORY[0x1EEE9AC00](v24, v27);
  v30 = &v34 - v29;
  MEMORY[0x1BFB371E0](v28);
  sub_1BE04AC44();
  sub_1BE04ABA4();
  (*(v9 + 8))(v12, v8);
  v31 = *(v14 + 8);
  v31(v18, v13);
  sub_1BE04ABC4();
  sub_1BE04AB64();
  (*(v34 + 8))(v7, v35);
  v31(v22, v13);
  v32 = v36;
  sub_1BE04AC24();
  sub_1BE04ABB4();
  (*(v37 + 8))(v32, v38);
  v31(v26, v13);
  sub_1BD1CBC5C(&qword_1EBD4E940, MEMORY[0x1E6969328]);
  sub_1BE04AF44();
  v31(v30, v13);
  return v40;
}

uint64_t sub_1BD1CA054()
{
  v1 = sub_1BE04BD74();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1, v3);
  v5 = &v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1BE04AF64();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = _s22SummaryItemPricingTypeO13RecurringItemVMa(0);
  MEMORY[0x1EEE9AC00](v11 - 8, v12);
  v14 = &v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = _s22SummaryItemPricingTypeOMa(0);
  MEMORY[0x1EEE9AC00](v15, v16);
  v18 = &v37 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = _s11TotalAmountVMa(0);
  result = 0;
  if ((*(v0 + *(v19 + 44)) & 1) == 0)
  {
    sub_1BD1CBB88(v0 + *(v19 + 40), v18);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload > 1)
    {
      if (EnumCaseMultiPayload == 2)
      {
        return *v18;
      }

      v27 = _s22SummaryItemPricingTypeOMa;
      v28 = v18;
      goto LABEL_10;
    }

    if (EnumCaseMultiPayload)
    {
      (*(v7 + 32))(v10, v18, v6);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF80);
      v29 = swift_allocObject();
      *(v29 + 16) = xmmword_1BE0B69E0;
      v30 = sub_1BD1C9C94(v10);
      v32 = v31;
      *(v29 + 56) = MEMORY[0x1E69E6158];
      *(v29 + 64) = sub_1BD110550();
      *(v29 + 32) = v30;
      *(v29 + 40) = v32;
      (*(v2 + 104))(v5, *MEMORY[0x1E69B8068], v1);
      v33 = sub_1BE04B714();

      (*(v2 + 8))(v5, v1);
      (*(v7 + 8))(v10, v6);
      return v33;
    }

    sub_1BD1CBB20(v18, v14, _s22SummaryItemPricingTypeO13RecurringItemVMa);
    v22 = *(v0 + 8);
    v23 = objc_opt_self();
    v24 = v22;
    v25 = [v23 zero];
    sub_1BD0E5E8C(0, &qword_1EBD38840);
    v26 = sub_1BE053074();

    if (v26)
    {
      v27 = _s22SummaryItemPricingTypeO13RecurringItemVMa;
      v28 = v14;
LABEL_10:
      sub_1BD1CBAC0(v28, v27);
      return 0;
    }

    v34 = PKLocalizedIntervalTermString();
    if (v34)
    {
      v35 = v34;
      v36 = sub_1BE052434();
    }

    else
    {
      v36 = 0;
    }

    sub_1BD1CBAC0(v14, _s22SummaryItemPricingTypeO13RecurringItemVMa);
    return v36;
  }

  return result;
}

uint64_t sub_1BD1CA4BC(void *a1, void *a2)
{
  v3 = a1[1];
  v4 = a2[1];
  if (v3)
  {
    if (v4)
    {
      v5 = *a1 == *a2 && v3 == v4;
      if (v5 || (sub_1BE053B84() & 1) != 0)
      {
        return 1;
      }
    }
  }

  else if (!v4)
  {
    return 1;
  }

  return 0;
}

uint64_t sub_1BD1CA51C@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD39970);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v11 = &v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v12, v13);
  v16 = &v44 - v15;
  v48 = [a1 intervalCount];
  v47 = [a1 intervalUnit];
  v17 = [a1 startDate];
  if (v17)
  {
    v18 = v17;
    sub_1BE04AEE4();

    v19 = sub_1BE04AF64();
    (*(*(v19 - 8) + 56))(v16, 0, 1, v19);
  }

  else
  {
    v20 = sub_1BE04AF64();
    (*(*(v20 - 8) + 56))(v16, 1, 1, v20);
  }

  v21 = [a1 endDate];
  v49 = v16;
  if (v21)
  {
    v22 = v21;
    sub_1BE04AEE4();

    v23 = 0;
  }

  else
  {
    v23 = 1;
  }

  v24 = sub_1BE04AF64();
  (*(*(v24 - 8) + 56))(v11, v23, 1, v24);
  v46 = sub_1BD7C4C88();
  v25 = sub_1BD7C4F84();
  v44 = v26;
  v45 = v25;
  v27 = sub_1BD7C51C0();
  v29 = v28;
  v30 = sub_1BD7C641C(0);
  v32 = v31;
  v33 = sub_1BD7C5CE0(a2, a3);
  v35 = v34;

  v36 = v47;
  *a4 = v48;
  a4[1] = v36;
  v37 = _s22SummaryItemPricingTypeO13RecurringItemVMa(0);
  sub_1BD1CBBEC(v49, a4 + v37[6]);
  result = sub_1BD1CBBEC(v11, a4 + v37[7]);
  *(a4 + v37[8]) = v46 & 1;
  v39 = (a4 + v37[9]);
  v40 = v44;
  *v39 = v45;
  v39[1] = v40;
  v41 = (a4 + v37[10]);
  *v41 = v27;
  v41[1] = v29;
  v42 = (a4 + v37[11]);
  *v42 = v30;
  v42[1] = v32;
  v43 = (a4 + v37[12]);
  *v43 = v33;
  v43[1] = v35;
  return result;
}

uint64_t sub_1BD1CA7EC(void *a1, void *a2)
{
  v4 = sub_1BE04AF64();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v64[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD39970);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v12 = &v64[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v13, v14);
  v16 = &v64[-v15];
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3A750);
  MEMORY[0x1EEE9AC00](v17, v18);
  v20 = &v64[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v21, v22);
  v24 = &v64[-v23];
  if (*a1 != *a2 || a1[1] != a2[1])
  {
    return 0;
  }

  v66 = v12;
  v25 = _s22SummaryItemPricingTypeO13RecurringItemVMa(0);
  v69 = v5;
  v70 = a2;
  v26 = *(v25 + 24);
  v27 = a1;
  v28 = *(v17 + 48);
  v67 = v25;
  v68 = v27;
  sub_1BD0DE19C(v27 + v26, v24, &unk_1EBD39970);
  v29 = v70 + v26;
  v30 = v69;
  sub_1BD0DE19C(v29, &v24[v28], &unk_1EBD39970);
  v31 = *(v30 + 48);
  if (v31(v24, 1, v4) == 1)
  {
    if (v31(&v24[v28], 1, v4) == 1)
    {
      sub_1BD0DE53C(v24, &unk_1EBD39970);
      goto LABEL_10;
    }

LABEL_8:
    v32 = v24;
LABEL_16:
    sub_1BD0DE53C(v32, &qword_1EBD3A750);
    return 0;
  }

  sub_1BD0DE19C(v24, v16, &unk_1EBD39970);
  if (v31(&v24[v28], 1, v4) == 1)
  {
    (*(v30 + 8))(v16, v4);
    goto LABEL_8;
  }

  (*(v30 + 32))(v8, &v24[v28], v4);
  sub_1BD1CBC5C(&qword_1EBD3E460, MEMORY[0x1E6969530]);
  v65 = sub_1BE052334();
  v33 = *(v30 + 8);
  v33(v8, v4);
  v33(v16, v4);
  sub_1BD0DE53C(v24, &unk_1EBD39970);
  if ((v65 & 1) == 0)
  {
    return 0;
  }

LABEL_10:
  v34 = v67;
  v35 = v67[7];
  v36 = *(v17 + 48);
  sub_1BD0DE19C(v68 + v35, v20, &unk_1EBD39970);
  v37 = v70 + v35;
  v38 = v70;
  sub_1BD0DE19C(v37, &v20[v36], &unk_1EBD39970);
  if (v31(v20, 1, v4) != 1)
  {
    v39 = v66;
    sub_1BD0DE19C(v20, v66, &unk_1EBD39970);
    if (v31(&v20[v36], 1, v4) != 1)
    {
      v41 = v69;
      (*(v69 + 32))(v8, &v20[v36], v4);
      sub_1BD1CBC5C(&qword_1EBD3E460, MEMORY[0x1E6969530]);
      v42 = sub_1BE052334();
      v43 = *(v41 + 8);
      v43(v8, v4);
      v43(v39, v4);
      sub_1BD0DE53C(v20, &unk_1EBD39970);
      if ((v42 & 1) == 0)
      {
        return 0;
      }

      goto LABEL_20;
    }

    (*(v69 + 8))(v39, v4);
    goto LABEL_15;
  }

  if (v31(&v20[v36], 1, v4) != 1)
  {
LABEL_15:
    v32 = v20;
    goto LABEL_16;
  }

  sub_1BD0DE53C(v20, &unk_1EBD39970);
LABEL_20:
  v44 = v68;
  if (*(v68 + v34[8]) == *(v38 + v34[8]))
  {
    v45 = v34[9];
    v46 = (v68 + v45);
    v47 = *(v68 + v45 + 8);
    v48 = (v38 + v45);
    v49 = v48[1];
    if (v47)
    {
      if (!v49 || (*v46 != *v48 || v47 != v49) && (sub_1BE053B84() & 1) == 0)
      {
        return 0;
      }
    }

    else if (v49)
    {
      return 0;
    }

    v50 = v34[10];
    v51 = *(v44 + v50);
    v52 = *(v44 + v50 + 8);
    v53 = (v38 + v50);
    if ((v51 != *v53 || v52 != v53[1]) && (sub_1BE053B84() & 1) == 0)
    {
      return 0;
    }

    v54 = v34[11];
    v55 = (v44 + v54);
    v56 = *(v44 + v54 + 8);
    v57 = (v38 + v54);
    v58 = v57[1];
    if (v56)
    {
      if (!v58 || (*v55 != *v57 || v56 != v58) && (sub_1BE053B84() & 1) == 0)
      {
        return 0;
      }
    }

    else if (v58)
    {
      return 0;
    }

    v59 = v34[12];
    v60 = (v44 + v59);
    v61 = *(v44 + v59 + 8);
    v62 = (v38 + v59);
    v63 = v62[1];
    if (v61)
    {
      if (v63 && (*v60 == *v62 && v61 == v63 || (sub_1BE053B84() & 1) != 0))
      {
        return 1;
      }
    }

    else if (!v63)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t sub_1BD1CAEA4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1BE04AF64();
  v41 = *(v4 - 8);
  v42 = v4;
  MEMORY[0x1EEE9AC00](v4, v5);
  v7 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = _s22SummaryItemPricingTypeO13RecurringItemVMa(0);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v11 = (&v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = _s22SummaryItemPricingTypeOMa(0);
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = (&v41 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v16, v17);
  v19 = &v41 - v18;
  MEMORY[0x1EEE9AC00](v20, v21);
  v23 = (&v41 - v22);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3C6D8);
  MEMORY[0x1EEE9AC00](v24 - 8, v25);
  v27 = &v41 - v26;
  v29 = (&v41 + *(v28 + 56) - v26);
  sub_1BD1CBB88(a1, &v41 - v26);
  sub_1BD1CBB88(a2, v29);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      sub_1BD1CBB88(v27, v19);
      if (swift_getEnumCaseMultiPayload() != 1)
      {
        (*(v41 + 8))(v19, v42);
        goto LABEL_21;
      }

      v37 = v41;
      v36 = v42;
      (*(v41 + 32))(v7, v29, v42);
      v38 = sub_1BE04AED4();
      v39 = *(v37 + 8);
      v39(v7, v36);
      v39(v19, v36);
    }

    else
    {
      sub_1BD1CBB88(v27, v23);
      if (swift_getEnumCaseMultiPayload())
      {
        sub_1BD1CBAC0(v23, _s22SummaryItemPricingTypeO13RecurringItemVMa);
LABEL_21:
        sub_1BD0DE53C(v27, &qword_1EBD3C6D8);
LABEL_22:
        v38 = 0;
        return v38 & 1;
      }

      sub_1BD1CBB20(v29, v11, _s22SummaryItemPricingTypeO13RecurringItemVMa);
      v38 = sub_1BD1CA7EC(v23, v11);
      sub_1BD1CBAC0(v11, _s22SummaryItemPricingTypeO13RecurringItemVMa);
      sub_1BD1CBAC0(v23, _s22SummaryItemPricingTypeO13RecurringItemVMa);
    }

    sub_1BD1CBAC0(v27, _s22SummaryItemPricingTypeOMa);
    return v38 & 1;
  }

  if (EnumCaseMultiPayload != 2)
  {
    if (swift_getEnumCaseMultiPayload() != 3)
    {
      goto LABEL_21;
    }

    goto LABEL_18;
  }

  sub_1BD1CBB88(v27, v15);
  v32 = *v15;
  v31 = v15[1];
  if (swift_getEnumCaseMultiPayload() != 2)
  {

    goto LABEL_21;
  }

  v33 = v29[1];
  if (!v31)
  {
    if (!v33)
    {
      goto LABEL_18;
    }

LABEL_27:

LABEL_28:
    sub_1BD1CBAC0(v27, _s22SummaryItemPricingTypeOMa);
    goto LABEL_22;
  }

  if (!v33)
  {
    goto LABEL_27;
  }

  if (v32 == *v29 && v31 == v33)
  {
  }

  else
  {
    v35 = sub_1BE053B84();

    if ((v35 & 1) == 0)
    {
      goto LABEL_28;
    }
  }

LABEL_18:
  sub_1BD1CBAC0(v27, _s22SummaryItemPricingTypeOMa);
  v38 = 1;
  return v38 & 1;
}

BOOL sub_1BD1CB32C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Passes(0);
  v62 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v5);
  v7 = &v56 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD43B40);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v60 = &v56 - v10;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3C6C8);
  MEMORY[0x1EEE9AC00](v61, v11);
  v13 = &v56 - v12;
  v14 = type metadata accessor for PeerPaymentModel();
  v63 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = &v56 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD45480);
  MEMORY[0x1EEE9AC00](v18 - 8, v19);
  v21 = &v56 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3C6D0);
  MEMORY[0x1EEE9AC00](v22, v23);
  v25 = &v56 - v24;
  if (*a1 != *a2)
  {
    return 0;
  }

  v59 = v4;
  sub_1BD0E5E8C(0, &qword_1EBD3E3F0);
  if ((sub_1BE053074() & 1) == 0)
  {
    return 0;
  }

  v57 = v7;
  v58 = v13;
  v26 = *(a1 + 16);
  v27 = *(a2 + 16);
  if (v26)
  {
    if (!v27)
    {
      return 0;
    }

    sub_1BD0E5E8C(0, &qword_1EBD38840);
    v28 = v27;
    v29 = v26;
    v30 = sub_1BE053074();

    if ((v30 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v27)
  {
    return 0;
  }

  if ((*(a1 + 24) != *(a2 + 24) || *(a1 + 32) != *(a2 + 32)) && (sub_1BE053B84() & 1) == 0)
  {
    return 0;
  }

  if ((*(a1 + 40) != *(a2 + 40) || *(a1 + 48) != *(a2 + 48)) && (sub_1BE053B84() & 1) == 0)
  {
    return 0;
  }

  if (*(a1 + 56) != *(a2 + 56))
  {
    return 0;
  }

  v31 = _s11TotalAmountVMa(0);
  if ((sub_1BD1CAEA4(a1 + v31[10], a2 + v31[10]) & 1) == 0 || *(a1 + v31[11]) != *(a2 + v31[11]) || *(a1 + v31[12]) != *(a2 + v31[12]) || *(a1 + v31[13]) != *(a2 + v31[13]))
  {
    return 0;
  }

  v32 = v31[14];
  v33 = *(a1 + v32);
  v34 = *(a2 + v32);
  if (v33)
  {
    if (!v34)
    {
      return 0;
    }

    v56 = v31;
    sub_1BD0E5E8C(0, &unk_1EBD3E560);
    v35 = v34;
    v36 = v33;
    v37 = sub_1BE053074();

    if ((v37 & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    v56 = v31;
    if (v34)
    {
      return 0;
    }
  }

  v38 = v56[15];
  v39 = *(v22 + 48);
  sub_1BD0DE19C(a1 + v38, v25, &qword_1EBD45480);
  sub_1BD0DE19C(a2 + v38, &v25[v39], &qword_1EBD45480);
  v40 = *(v63 + 48);
  if (v40(v25, 1, v14) != 1)
  {
    sub_1BD0DE19C(v25, v21, &qword_1EBD45480);
    v43 = v40(&v25[v39], 1, v14);
    v42 = v58;
    if (v43 != 1)
    {
      sub_1BD1CBB20(&v25[v39], v17, type metadata accessor for PeerPaymentModel);
      v46 = sub_1BD56F840(v21, v17);
      sub_1BD1CBAC0(v17, type metadata accessor for PeerPaymentModel);
      sub_1BD1CBAC0(v21, type metadata accessor for PeerPaymentModel);
      sub_1BD0DE53C(v25, &qword_1EBD45480);
      if ((v46 & 1) == 0)
      {
        return 0;
      }

      goto LABEL_31;
    }

    sub_1BD1CBAC0(v21, type metadata accessor for PeerPaymentModel);
LABEL_29:
    v44 = &qword_1EBD3C6D0;
    v45 = v25;
LABEL_37:
    sub_1BD0DE53C(v45, v44);
    return 0;
  }

  v41 = v40(&v25[v39], 1, v14);
  v42 = v58;
  if (v41 != 1)
  {
    goto LABEL_29;
  }

  sub_1BD0DE53C(v25, &qword_1EBD45480);
LABEL_31:
  v47 = v56[16];
  v48 = *(v61 + 48);
  sub_1BD0DE19C(a1 + v47, v42, &unk_1EBD43B40);
  sub_1BD0DE19C(a2 + v47, v42 + v48, &unk_1EBD43B40);
  v49 = *(v62 + 48);
  v50 = v59;
  if (v49(v42, 1, v59) == 1)
  {
    if (v49(v42 + v48, 1, v50) == 1)
    {
      sub_1BD0DE53C(v42, &unk_1EBD43B40);
      return *(a1 + v56[17]) == *(a2 + v56[17]);
    }

    goto LABEL_36;
  }

  v51 = v60;
  sub_1BD0DE19C(v42, v60, &unk_1EBD43B40);
  if (v49(v42 + v48, 1, v50) == 1)
  {
    sub_1BD1CBAC0(v51, type metadata accessor for Passes);
LABEL_36:
    v44 = &qword_1EBD3C6C8;
    v45 = v42;
    goto LABEL_37;
  }

  v53 = v42 + v48;
  v54 = v57;
  sub_1BD1CBB20(v53, v57, type metadata accessor for Passes);
  v55 = sub_1BD4985D4(v51, v54);
  sub_1BD1CBAC0(v54, type metadata accessor for Passes);
  sub_1BD1CBAC0(v51, type metadata accessor for Passes);
  sub_1BD0DE53C(v42, &unk_1EBD43B40);
  if (v55)
  {
    return *(a1 + v56[17]) == *(a2 + v56[17]);
  }

  return 0;
}

uint64_t sub_1BD1CBAC0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1BD1CBB20(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1BD1CBB88(uint64_t a1, uint64_t a2)
{
  v4 = _s22SummaryItemPricingTypeOMa(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BD1CBBEC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD39970);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BD1CBC5C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1BD1CBCA4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD528E0);
  MEMORY[0x1EEE9AC00](v0 - 8, v1);
  v3 = &v9 - v2;
  v4 = sub_1BE04A884();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v7 = sub_1BE048E94();
  __swift_allocate_value_buffer(v7, qword_1EBDAAE48);
  __swift_project_value_buffer(v7, qword_1EBDAAE48);
  sub_1BE04A864();
  (*(v5 + 56))(v3, 1, 1, v4);
  return sub_1BE048E84();
}

uint64_t sub_1BD1CBE08()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3C728);
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = &v9 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3C730);
  MEMORY[0x1EEE9AC00](v5, v6);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3C720);
  __swift_allocate_value_buffer(v7, qword_1EBDAAE60);
  __swift_project_value_buffer(v7, qword_1EBDAAE60);
  sub_1BD0304AC();
  sub_1BE048D54();
  sub_1BE048D44();
  (*(v1 + 104))(v4, *MEMORY[0x1E695A4D8], v0);
  sub_1BE048D34();
  (*(v1 + 8))(v4, v0);
  sub_1BE048D44();
  return sub_1BE048D64();
}

void sub_1BD1CC00C(uint64_t a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49E50);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = aBlock - v7;
  v9 = sub_1BE052724();
  (*(v5 + 16))(v8, a1, v4);
  v10 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v11 = swift_allocObject();
  (*(v5 + 32))(v11 + v10, v8, v4);
  aBlock[4] = sub_1BD1CD6F0;
  aBlock[5] = v11;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BD540F68;
  aBlock[3] = &block_descriptor_17;
  v12 = _Block_copy(aBlock);

  [a2 getPassesWithUniqueIdentifiers:v9 handler:v12];
  _Block_release(v12);
}

uint64_t sub_1BD1CC1DC()
{
  sub_1BE048C84();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49E50);
  return sub_1BE052864();
}

uint64_t sub_1BD1CC23C(uint64_t a1, const char *a2)
{
  v24 = a2;
  v2 = sub_1BE04CFF4();
  v23 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v3);
  v5 = &v21[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v25 = sub_1BE04CFC4();
  v6 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25, v7);
  v9 = &v21[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = sub_1BE04CFE4();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = &v21[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1BE04B684();
  v15 = sub_1BE04CFD4();
  sub_1BE04D004();
  v22 = sub_1BE052E24();
  if (sub_1BE053494())
  {
    sub_1BE048964();
    sub_1BE04D034();

    v16 = v23;
    if ((*(v23 + 88))(v5, v2) == *MEMORY[0x1E69E93E8])
    {
      v17 = "[Error] Interval already ended";
    }

    else
    {
      (*(v16 + 8))(v5, v2);
      v17 = "";
    }

    v18 = swift_slowAlloc();
    *v18 = 0;
    v19 = sub_1BE04CFA4();
    _os_signpost_emit_with_name_impl(&dword_1BD026000, v15, v22, v19, v24, v17, v18, 2u);
    MEMORY[0x1BFB45F20](v18, -1, -1);
  }

  (*(v6 + 8))(v9, v25);
  return (*(v11 + 8))(v14, v10);
}

uint64_t sub_1BD1CC528(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a1;
  v6 = swift_task_alloc();
  *(v3 + 24) = v6;
  *v6 = v3;
  v6[1] = sub_1BD041C28;

  return (sub_1BD1CD784)(a2, a3);
}

uint64_t sub_1BD1CC5E0(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1BD1CDC44;

  return sub_1BD1CCD3C(a1);
}

uint64_t sub_1BD1CC688(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1BD1CC748;

  return MEMORY[0x1EEDB2EC0](a1, a2, a3, a4);
}

uint64_t sub_1BD1CC748(uint64_t a1)
{
  v7 = *v2;

  v5 = *(v7 + 8);
  if (!v1)
  {
    v4 = a1;
  }

  return v5(v4);
}

uint64_t sub_1BD1CC848(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_1BD035D58();
  *v5 = v2;
  v5[1] = sub_1BD0F985C;

  return MEMORY[0x1EEDB2ED8](a1, a2, v6);
}

unint64_t sub_1BD1CC900()
{
  result = qword_1EBD3C700;
  if (!qword_1EBD3C700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3C700);
  }

  return result;
}

uint64_t sub_1BD1CC954@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EBD36B48 != -1)
  {
    swift_once();
  }

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3C720);
  v3 = __swift_project_value_buffer(v2, qword_1EBDAAE60);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_1BD1CCA08()
{
  sub_1BD1CCCE8();
  v1 = sub_1BE048D14();
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_1BD1CCA74@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EBD36B40 != -1)
  {
    swift_once();
  }

  v2 = sub_1BE048E94();
  v3 = __swift_project_value_buffer(v2, qword_1EBDAAE48);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

unint64_t sub_1BD1CCB20()
{
  result = qword_1EBD3C708;
  if (!qword_1EBD3C708)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3C710);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3C708);
  }

  return result;
}

uint64_t sub_1BD1CCB84(uint64_t a1)
{
  v2 = sub_1BD0304AC();

  return MEMORY[0x1EEDB2C58](a1, v2);
}

uint64_t sub_1BD1CCBD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1BD126968;

  return MEMORY[0x1EEDB3F60](a1, a2, a3, a4);
}

uint64_t sub_1BD1CCC94()
{
  sub_1BD0306C8();

  return sub_1BE048EF4();
}

unint64_t sub_1BD1CCCE8()
{
  result = qword_1EBD3C718;
  if (!qword_1EBD3C718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3C718);
  }

  return result;
}

uint64_t sub_1BD1CCD3C(uint64_t a1)
{
  v1[3] = a1;
  v2 = sub_1BE04CFC4();
  v1[4] = v2;
  v1[5] = *(v2 - 8);
  v1[6] = swift_task_alloc();
  v1[7] = swift_task_alloc();
  v3 = sub_1BE04CFE4();
  v1[8] = v3;
  v1[9] = *(v3 - 8);
  v1[10] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1BD1CCE64, 0, 0);
}

uint64_t sub_1BD1CCE64()
{
  sub_1BE04B684();
  sub_1BE04CFB4();
  v1 = sub_1BE04CFD4();
  v2 = sub_1BE052E34();
  if (sub_1BE053494())
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    v4 = sub_1BE04CFA4();
    _os_signpost_emit_with_name_impl(&dword_1BD026000, v1, v2, v4, "PassEntity:entitiesForIdentifiers", "", v3, 2u);
    MEMORY[0x1BFB45F20](v3, -1, -1);
  }

  v6 = v0[9];
  v5 = v0[10];
  v8 = v0[7];
  v7 = v0[8];
  v10 = v0[5];
  v9 = v0[6];
  v11 = v0[4];

  (*(v10 + 16))(v9, v8, v11);
  sub_1BE04D024();
  swift_allocObject();
  v12 = sub_1BE04D014();
  v0[11] = v12;
  (*(v10 + 8))(v8, v11);
  (*(v6 + 8))(v5, v7);
  v13 = [objc_opt_self() sharedInstance];
  v0[12] = v13;
  if (v13)
  {
    v14 = v13;
    v15 = v0[3];
    v16 = swift_task_alloc();
    v0[13] = v16;
    *(v16 + 16) = v14;
    *(v16 + 24) = v15;
    v17 = swift_task_alloc();
    v0[14] = v17;
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3C738);
    *v17 = v0;
    v17[1] = sub_1BD1CD18C;

    return MEMORY[0x1EEE6DDE0](v0 + 2, 0, 0, 0x7365697469746E65, 0xEE00293A726F6628, sub_1BD1CD6E8, v16, v18);
  }

  else
  {
    sub_1BE0484F4();
    sub_1BD1351C0();
    swift_allocError();
    sub_1BE0484E4();
    swift_willThrow();
    sub_1BD1CC23C(v12, "PassEntity:entitiesForIdentifiers");

    v19 = v0[1];

    return v19();
  }
}

uint64_t sub_1BD1CD18C()
{

  return MEMORY[0x1EEE6DFA0](sub_1BD1CD2A4, 0, 0);
}

uint64_t sub_1BD1CD2A4()
{
  v1 = v0[2];
  v0[15] = v1;
  v2 = swift_task_alloc();
  v0[16] = v2;
  *v2 = v0;
  v2[1] = sub_1BD1CD354;

  return sub_1BD0391EC(v1, 0);
}

uint64_t sub_1BD1CD354(uint64_t a1)
{
  *(*v1 + 136) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1BD1CD474, 0, 0);
}

uint64_t sub_1BD1CD474()
{
  v1 = *(v0 + 88);

  sub_1BD1CC23C(v1, "PassEntity:entitiesForIdentifiers");

  v2 = *(v0 + 8);
  v3 = *(v0 + 136);

  return v2(v3);
}

uint64_t sub_1BD1CD51C(uint64_t a1)
{
  *(*v1 + 240) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1BD1CD63C, 0, 0);
}

uint64_t sub_1BD1CD63C()
{
  v1 = v0[30];
  sub_1BD1CC23C(v0[26], "PassEntity:suggestedEntities");

  v2 = v0[1];

  return v2(v1);
}

uint64_t sub_1BD1CD6F0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49E50);

  return sub_1BD1CC1DC();
}

uint64_t sub_1BD1CD784(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = sub_1BE04CFC4();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();
  v2[7] = swift_task_alloc();
  v4 = sub_1BE04CFE4();
  v2[8] = v4;
  v2[9] = *(v4 - 8);
  v2[10] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1BD1CD8AC, 0, 0);
}

uint64_t sub_1BD1CD8AC()
{
  sub_1BE04B684();
  sub_1BE04CFB4();
  v1 = sub_1BE04CFD4();
  v2 = sub_1BE052E34();
  if (sub_1BE053494())
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    v4 = sub_1BE04CFA4();
    _os_signpost_emit_with_name_impl(&dword_1BD026000, v1, v2, v4, "PassEntity:entitiesMatchingString", "", v3, 2u);
    MEMORY[0x1BFB45F20](v3, -1, -1);
  }

  v6 = v0[9];
  v5 = v0[10];
  v8 = v0[7];
  v7 = v0[8];
  v10 = v0[5];
  v9 = v0[6];
  v11 = v0[4];

  (*(v10 + 16))(v9, v8, v11);
  sub_1BE04D024();
  swift_allocObject();
  v0[11] = sub_1BE04D014();
  (*(v10 + 8))(v8, v11);
  (*(v6 + 8))(v5, v7);
  v12 = swift_task_alloc();
  v0[12] = v12;
  *v12 = v0;
  v12[1] = sub_1BD1CDAA0;
  v14 = v0[2];
  v13 = v0[3];

  return (sub_1BD5426E8)(v14, v13, 50, 1, 0, 0);
}

uint64_t sub_1BD1CDAA0(uint64_t a1)
{
  *(*v1 + 104) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1BD1CDBA0, 0, 0);
}

uint64_t sub_1BD1CDBA0()
{
  sub_1BD1CC23C(v0[11], "PassEntity:entitiesMatchingString");

  v1 = v0[1];
  v2 = v0[13];

  return v1(v2);
}

id sub_1BD1CDC48(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  *&v2[OBJC_IVAR____TtC9PassKitUI29ProvisioningAppleCardFlowItem_accountFlowController] = 0;
  *&v2[OBJC_IVAR____TtC9PassKitUI29ProvisioningAppleCardFlowItem__hasRemainingCredentialsToProvision] = &type metadata for HasRemainingCredentialsToProvision;
  *&v2[OBJC_IVAR____TtC9PassKitUI29ProvisioningAppleCardFlowItem_provisionedPasses] = 0;
  *&v2[OBJC_IVAR____TtC9PassKitUI29ProvisioningAppleCardFlowItem_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v6 = &v2[OBJC_IVAR____TtC9PassKitUI29ProvisioningAppleCardFlowItem_identifier];
  *v6 = 0xD000000000000011;
  *(v6 + 1) = 0x80000001BE11CFE0;
  *&v2[OBJC_IVAR____TtC9PassKitUI29ProvisioningAppleCardFlowItem_context] = a1;
  *&v2[OBJC_IVAR____TtC9PassKitUI29ProvisioningAppleCardFlowItem_credential] = a2;
  v8.receiver = v2;
  v8.super_class = ObjectType;
  return objc_msgSendSuper2(&v8, sel_init);
}

void sub_1BD1CDE04()
{
  v1 = v0;
  v2 = sub_1BE04D214();
  v53 = *(v2 - 8);
  v54 = v2;
  MEMORY[0x1EEE9AC00](v2, v3);
  v5 = &v52 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1BE04BAC4();
  v55 = *(v6 - 8);
  v56 = v6;
  v8 = MEMORY[0x1EEE9AC00](v6, v7);
  v10 = &v52 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v11);
  v13 = &v52 - v12;
  v14 = sub_1BE04AF64();
  v52 = *(v14 - 8);
  v16 = MEMORY[0x1EEE9AC00](v14, v15);
  v18 = &v52 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16, v19);
  v21 = &v52 - v20;
  v57 = *&v0[OBJC_IVAR____TtC9PassKitUI29ProvisioningAppleCardFlowItem_credential];
  v22 = [v57 account];
  if (!v22)
  {
    __break(1u);
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v23 = v22;
  v24 = [v22 feature];

  if (v24 != 2)
  {
LABEL_10:
    v35 = 3;
    goto LABEL_14;
  }

  v25 = [v57 account];
  if (!v25)
  {
    goto LABEL_21;
  }

  v26 = v25;
  v27 = [v25 creditDetails];

  if (!v27)
  {
LABEL_22:
    __break(1u);
    return;
  }

  v28 = [v27 createdDate];

  if (!v28)
  {
    goto LABEL_10;
  }

  sub_1BE04AEE4();

  sub_1BE04BC34();
  v29 = sub_1BE04B964();
  (*(v55 + 8))(v13, v56);
  if (v29)
  {
    KeyPath = swift_getKeyPath();
    v31 = sub_1BD1872FC(v1, KeyPath);

    v32 = v52;
    if ((v31 & 1) != 0 || (sub_1BE04AF54(), sub_1BE04ADC4(), v34 = v33, (*(v32 + 8))(v18, v14), v34 >= 2592000.0))
    {
      v35 = 3;
    }

    else
    {
      v35 = 31;
    }
  }

  else
  {
    v35 = 3;
    v32 = v52;
  }

  (*(v32 + 8))(v21, v14);
LABEL_14:
  sub_1BE04D0E4();
  v36 = sub_1BE04D204();
  v37 = sub_1BE052C54();
  if (os_log_type_enabled(v36, v37))
  {
    v38 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    v58 = v35;
    v59 = v39;
    *v38 = 136315138;
    type metadata accessor for PKAccountFlowControllerOperation(0);
    v40 = sub_1BE0524A4();
    v42 = sub_1BD123690(v40, v41, &v59);

    *(v38 + 4) = v42;
    _os_log_impl(&dword_1BD026000, v36, v37, "Starting PKAccountFlowController with operations: %s", v38, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v39);
    MEMORY[0x1BFB45F20](v39, -1, -1);
    MEMORY[0x1BFB45F20](v38, -1, -1);
  }

  (*(v53 + 8))(v5, v54);
  v43 = v57;
  v44 = sub_1BE04BBD4();
  sub_1BE04BC34();
  v45 = sub_1BE04B9A4();
  (*(v55 + 8))(v10, v56);
  v46 = [objc_allocWithZone(PKAccountFlowController) initWithAccountCredential:v43 provisioningController:v44 setupDelegate:v1 context:v45 operations:v35];

  v47 = OBJC_IVAR____TtC9PassKitUI29ProvisioningAppleCardFlowItem_accountFlowController;
  v48 = *&v1[OBJC_IVAR____TtC9PassKitUI29ProvisioningAppleCardFlowItem_accountFlowController];
  *&v1[OBJC_IVAR____TtC9PassKitUI29ProvisioningAppleCardFlowItem_accountFlowController] = v46;

  v49 = *&v1[v47];
  if (v49)
  {
    [v49 setParentFlowController_];
    v50 = *&v1[v47];
    if (v50)
    {
      v51 = [v50 firstAccountViewController];
    }
  }
}

uint64_t sub_1BD1CE364()
{
  v1 = *(v0 + OBJC_IVAR____TtC9PassKitUI29ProvisioningAppleCardFlowItem_identifier);
  sub_1BE048C84();
  return v1;
}

uint64_t sub_1BD1CE3A0(uint64_t a1, uint64_t a2)
{
  *(v2 + OBJC_IVAR____TtC9PassKitUI29ProvisioningAppleCardFlowItem_delegate + 8) = a2;
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

void sub_1BD1CE3F0(void (*a1)(void, void))
{
  v3 = *(v1 + OBJC_IVAR____TtC9PassKitUI29ProvisioningAppleCardFlowItem_accountFlowController);
  if (!v3)
  {
    goto LABEL_14;
  }

  v4 = [v3 accountProvisioningController];
  if (!v4)
  {
    goto LABEL_14;
  }

  v5 = v4;
  if ([v4 provisionLocalPassState] != 3 || (v6 = *(v1 + OBJC_IVAR____TtC9PassKitUI29ProvisioningAppleCardFlowItem_credential), (v7 = objc_msgSend(v6, sel_paymentPass)) == 0))
  {
LABEL_13:

LABEL_14:
    if (a1)
    {
      a1(0, 0);
      return;
    }

    __break(1u);
    goto LABEL_17;
  }

  v8 = v7;
  v9 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD39F80);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1BE0B7020;
  *(v10 + 32) = v8;
  v11 = v8;
  v12 = [v6 state];
  if (!v12)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v13 = v12;
  sub_1BE04BD64();
  v14 = [v13 provisioningResponse];

  v15 = [v14 externalProvisioningOptions];
  sub_1BD1ABED0(MEMORY[0x1E69E7CC0]);
  v16 = sub_1BE04BC74();
  v17 = OBJC_IVAR____TtC9PassKitUI29ProvisioningAppleCardFlowItem_provisionedPasses;
  v18 = *(v9 + OBJC_IVAR____TtC9PassKitUI29ProvisioningAppleCardFlowItem_provisionedPasses);
  *(v9 + OBJC_IVAR____TtC9PassKitUI29ProvisioningAppleCardFlowItem_provisionedPasses) = v16;

  v19 = *(v9 + v17);
  if (!v19)
  {
LABEL_12:

    goto LABEL_13;
  }

  v20 = v19;
  v21 = [v6 state];
  if (v21)
  {
    v22 = v21;
    v23 = [v21 eligibilityResponse];

    if (v23)
    {
      v24 = [v23 identifier];

      if (v24)
      {
        sub_1BE052434();
      }
    }

    sub_1BE04BCC4();

    goto LABEL_12;
  }

LABEL_18:
  __break(1u);
}

void sub_1BD1CE7CC(uint64_t (*a1)(char *), uint64_t a2, uint64_t a3)
{
  v7 = type metadata accessor for AvailablePass(0);
  v26 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v25 = v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = v22 - v12;
  v24 = *(a3 + 16);
  if (v24)
  {
    v14 = 0;
    v15 = MEMORY[0x1E69E7CC0];
    v22[1] = a2;
    v23 = a3;
    v22[0] = a1;
    while (v14 < *(a3 + 16))
    {
      v16 = (*(v26 + 80) + 32) & ~*(v26 + 80);
      v17 = *(v26 + 72);
      sub_1BD1DEA70(a3 + v16 + v17 * v14, v13, type metadata accessor for AvailablePass);
      v18 = a1(v13);
      if (v3)
      {
        sub_1BD1DEAD8(v13, type metadata accessor for AvailablePass);

        goto LABEL_15;
      }

      if (v18)
      {
        sub_1BD1DEB38(v13, v25);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v27 = v15;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1BD531A40(0, *(v15 + 16) + 1, 1);
          v15 = v27;
        }

        v21 = *(v15 + 16);
        v20 = *(v15 + 24);
        if (v21 >= v20 >> 1)
        {
          sub_1BD531A40(v20 > 1, v21 + 1, 1);
          v15 = v27;
        }

        *(v15 + 16) = v21 + 1;
        sub_1BD1DEB38(v25, v15 + v16 + v21 * v17);
        a3 = v23;
        a1 = v22[0];
      }

      else
      {
        sub_1BD1DEAD8(v13, type metadata accessor for AvailablePass);
      }

      if (v24 == ++v14)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_15:
  }
}

uint64_t sub_1BD1CEA70(uint64_t (*a1)(void), uint64_t a2, uint64_t a3, uint64_t (*a4)(void), void (*a5)(BOOL, uint64_t, uint64_t))
{
  v32 = a5;
  v43 = a4(0);
  v10 = MEMORY[0x1EEE9AC00](v43, v9);
  v40 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x1EEE9AC00](v10, v12);
  v42 = &v32 - v15;
  v39 = *(a3 + 16);
  if (v39)
  {
    v16 = 0;
    v36 = (v14 + 8);
    v37 = (v14 + 32);
    v38 = v14 + 16;
    v41 = MEMORY[0x1E69E7CC0];
    v34 = a2;
    v35 = a3;
    v33 = a1;
    while (v16 < *(a3 + 16))
    {
      v17 = (*(v14 + 80) + 32) & ~*(v14 + 80);
      v18 = *(v14 + 72);
      v19 = a3;
      v20 = a3 + v17 + v18 * v16;
      v21 = v14;
      v22 = a1;
      v23 = v42;
      (*(v14 + 16))(v42, v20, v43);
      v24 = v23;
      a1 = v22;
      v25 = v22(v24);
      if (v5)
      {
        (*v36)(v42, v43);
        v31 = v41;

        return v31;
      }

      if (v25)
      {
        v26 = *v37;
        (*v37)(v40, v42, v43);
        v27 = v41;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v44 = v27;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v32(0, *(v27 + 16) + 1, 1);
          v27 = v44;
        }

        v30 = *(v27 + 16);
        v29 = *(v27 + 24);
        if (v30 >= v29 >> 1)
        {
          v32(v29 > 1, v30 + 1, 1);
          v27 = v44;
        }

        *(v27 + 16) = v30 + 1;
        v41 = v27;
        result = (v26)(v27 + v17 + v30 * v18, v40, v43);
        a3 = v35;
        a1 = v33;
      }

      else
      {
        result = (*v36)(v42, v43);
        a3 = v19;
      }

      ++v16;
      v14 = v21;
      if (v39 == v16)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {
    v41 = MEMORY[0x1E69E7CC0];
LABEL_14:

    return v41;
  }

  return result;
}

uint64_t sub_1BD1CEDB0@<X0>(uint64_t (*a1)(char *)@<X0>, uint64_t a2@<X2>, uint64_t (*a3)(void)@<X3>, uint64_t a4@<X8>)
{
  v25 = a1;
  v7 = a3(0);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = &v21 - v10;
  v12 = *(a2 + 16);
  if (v12)
  {
    v22 = v8;
    v23 = a4;
    v14 = *(v8 + 16);
    v13 = v8 + 16;
    v24 = v14;
    v15 = (v13 - 8);
    v16 = a2 + ((*(v13 + 64) + 32) & ~*(v13 + 64));
    v17 = *(v13 + 56);
    while (1)
    {
      v24(v11, v16, v7);
      v18 = v25(v11);
      if (v4)
      {
        return (*v15)(v11, v7);
      }

      if (v18)
      {
        break;
      }

      (*v15)(v11, v7);
      v16 += v17;
      if (!--v12)
      {
        v19 = 1;
        v8 = v22;
        a4 = v23;
        return (*(v8 + 56))(a4, v19, 1, v7);
      }
    }

    v8 = v22;
    a4 = v23;
    (*(v22 + 32))(v23, v11, v7);
    v19 = 0;
  }

  else
  {
    v19 = 1;
  }

  return (*(v8 + 56))(a4, v19, 1, v7);
}

uint64_t CredentialCenterPathIdentifier.credentialID.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for CredentialCenterPathIdentifier(0) + 20);

  return sub_1BD12651C(a1, v3);
}

uint64_t CredentialCenterPathIdentifier.sealedBoxType.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for CredentialCenterPathIdentifier(0);
  *a1 = *(v1 + *(result + 24));
  return result;
}

uint64_t CredentialCenterPathIdentifier.sealedBoxType.setter(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for CredentialCenterPathIdentifier(0);
  *(v1 + *(result + 24)) = v2;
  return result;
}

uint64_t sub_1BD1CF160()
{
  v1 = 0x69746E6564657263;
  if (*v0 != 1)
  {
    v1 = 0x6F4264656C616573;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x74616E6974736564;
  }
}

uint64_t sub_1BD1CF1D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1BD1DD3B8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1BD1CF218(uint64_t a1)
{
  v2 = sub_1BD1DCC1C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BD1CF254(uint64_t a1)
{
  v2 = sub_1BD1DCC1C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t CredentialCenterPathIdentifier.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3C850);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v12[-v8];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BD1DCC1C();
  sub_1BE053DA4();
  v12[15] = *v3;
  v12[14] = 0;
  sub_1BD1DCC70();
  sub_1BE053AF4();
  if (!v2)
  {
    v10 = type metadata accessor for CredentialCenterPathIdentifier(0);
    v12[13] = 1;
    sub_1BE04AFE4();
    sub_1BD1DCD18(&qword_1EBD38F68, MEMORY[0x1E69695A8]);
    sub_1BE053AD4();
    v12[12] = v3[*(v10 + 24)];
    v12[11] = 2;
    sub_1BD1DCCC4();
    sub_1BE053AD4();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t CredentialCenterPathIdentifier.hash(into:)()
{
  v1 = v0;
  v2 = sub_1BE04AFE4();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39980);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v10 = &v13 - v9;
  sub_1BE052524();

  v11 = type metadata accessor for CredentialCenterPathIdentifier(0);
  sub_1BD0DE19C(v1 + *(v11 + 20), v10, &qword_1EBD39980);
  if ((*(v3 + 48))(v10, 1, v2) == 1)
  {
    sub_1BE053D24();
  }

  else
  {
    (*(v3 + 32))(v6, v10, v2);
    sub_1BE053D24();
    sub_1BD1DCD18(&qword_1EBD3A360, MEMORY[0x1E69695A8]);
    sub_1BE052294();
    (*(v3 + 8))(v6, v2);
  }

  if (*(v1 + *(v11 + 24)) == 2)
  {
    return sub_1BE053D24();
  }

  sub_1BE053D24();
  sub_1BE052524();
}

uint64_t CredentialCenterPathIdentifier.hashValue.getter()
{
  v1 = v0;
  v2 = sub_1BE04AFE4();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39980);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v10 = &v13 - v9;
  sub_1BE053D04();
  sub_1BE052524();

  v11 = type metadata accessor for CredentialCenterPathIdentifier(0);
  sub_1BD0DE19C(v1 + *(v11 + 20), v10, &qword_1EBD39980);
  if ((*(v3 + 48))(v10, 1, v2) == 1)
  {
    sub_1BE053D24();
  }

  else
  {
    (*(v3 + 32))(v6, v10, v2);
    sub_1BE053D24();
    sub_1BD1DCD18(&qword_1EBD3A360, MEMORY[0x1E69695A8]);
    sub_1BE052294();
    (*(v3 + 8))(v6, v2);
  }

  if (*(v1 + *(v11 + 24)) == 2)
  {
    sub_1BE053D24();
  }

  else
  {
    sub_1BE053D24();
    sub_1BE052524();
  }

  return sub_1BE053D64();
}

uint64_t CredentialCenterPathIdentifier.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v25 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39980);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v26 = &v23 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3C870);
  v28 = *(v6 - 8);
  v29 = v6;
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v23 - v8;
  v10 = type metadata accessor for CredentialCenterPathIdentifier(0);
  v11 = v10 - 8;
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v11 + 28);
  v16 = sub_1BE04AFE4();
  (*(*(v16 - 8) + 56))(&v14[v15], 1, 1, v16);
  v17 = *(v11 + 32);
  v14[v17] = 2;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BD1DCC1C();
  v27 = v9;
  v18 = v30;
  sub_1BE053D94();
  if (v18)
  {
    __swift_destroy_boxed_opaque_existential_0(a1);
    return sub_1BD0DE53C(&v14[v15], &qword_1EBD39980);
  }

  else
  {
    v23 = v17;
    v24 = a1;
    v30 = v15;
    v19 = v26;
    v34 = 0;
    sub_1BD1DCD60();
    v20 = v29;
    v21 = v27;
    sub_1BE053AA4();
    *v14 = v35;
    v33 = 1;
    sub_1BD1DCD18(&qword_1EBD38F58, MEMORY[0x1E69695A8]);
    sub_1BE053A84();
    sub_1BD12651C(v19, &v14[v30]);
    v31 = 2;
    sub_1BD1DCDB4();
    sub_1BE053A84();
    (*(v28 + 8))(v21, v20);
    v14[v23] = v32;
    sub_1BD1DEA70(v14, v25, type metadata accessor for CredentialCenterPathIdentifier);
    __swift_destroy_boxed_opaque_existential_0(v24);
    return sub_1BD1DEAD8(v14, type metadata accessor for CredentialCenterPathIdentifier);
  }
}

uint64_t sub_1BD1CFDBC(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  v5 = sub_1BE04AFE4();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39980);
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v13 = &v15 - v12;
  sub_1BE053D04();
  sub_1BE052524();

  sub_1BD0DE19C(v4 + *(a2 + 20), v13, &qword_1EBD39980);
  if ((*(v6 + 48))(v13, 1, v5) == 1)
  {
    sub_1BE053D24();
  }

  else
  {
    (*(v6 + 32))(v9, v13, v5);
    sub_1BE053D24();
    sub_1BD1DCD18(&qword_1EBD3A360, MEMORY[0x1E69695A8]);
    sub_1BE052294();
    (*(v6 + 8))(v9, v5);
  }

  if (*(v4 + *(a2 + 24)) == 2)
  {
    sub_1BE053D24();
  }

  else
  {
    sub_1BE053D24();
    sub_1BE052524();
  }

  return sub_1BE053D64();
}

unint64_t CredentialCenterDestination.rawValue.getter()
{
  if (*v0)
  {
    return 0xD000000000000016;
  }

  else
  {
    return 0xD000000000000012;
  }
}

uint64_t sub_1BD1D00F0(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0xD000000000000016;
  }

  else
  {
    v3 = 0xD000000000000012;
  }

  if (v2)
  {
    v4 = "erOptions";
  }

  else
  {
    v4 = "addCredentialSheet";
  }

  v5 = v4 | 0x8000000000000000;
  if (*a2)
  {
    v6 = 0xD000000000000016;
  }

  else
  {
    v6 = 0xD000000000000012;
  }

  if (*a2)
  {
    v7 = "addCredentialSheet";
  }

  else
  {
    v7 = "erOptions";
  }

  if (v3 == v6 && v5 == (v7 | 0x8000000000000000))
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_1BE053B84();
  }

  return v9 & 1;
}

uint64_t sub_1BD1D019C()
{
  sub_1BE053D04();
  sub_1BE052524();

  return sub_1BE053D64();
}

uint64_t sub_1BD1D021C()
{
  sub_1BE052524();
}

uint64_t sub_1BD1D0288()
{
  sub_1BE053D04();
  sub_1BE052524();

  return sub_1BE053D64();
}

void sub_1BD1D0310(unint64_t *a1@<X8>)
{
  if (*v1)
  {
    v2 = 0xD000000000000016;
  }

  else
  {
    v2 = 0xD000000000000012;
  }

  if (*v1)
  {
    v3 = "addCredentialSheet";
  }

  else
  {
    v3 = "erOptions";
  }

  *a1 = v2;
  a1[1] = v3 | 0x8000000000000000;
}

uint64_t BankCredentialFieldType.hashValue.getter()
{
  v1 = *v0;
  sub_1BE053D04();
  MEMORY[0x1BFB40DA0](v1);
  return sub_1BE053D64();
}

uint64_t sub_1BD1D0498@<X0>(char *a1@<X8>)
{
  v2 = sub_1BE053A44();

  if (v2 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (!v2)
  {
    v4 = 0;
  }

  *a1 = v4;
  return result;
}

uint64_t SealedBoxType.rawValue.getter()
{
  if (*v0)
  {
    return 0x64657070617277;
  }

  else
  {
    return 1953722220;
  }
}

uint64_t sub_1BD1D052C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x64657070617277;
  }

  else
  {
    v3 = 1953722220;
  }

  if (v2)
  {
    v4 = 0xE400000000000000;
  }

  else
  {
    v4 = 0xE700000000000000;
  }

  if (*a2)
  {
    v5 = 0x64657070617277;
  }

  else
  {
    v5 = 1953722220;
  }

  if (*a2)
  {
    v6 = 0xE700000000000000;
  }

  else
  {
    v6 = 0xE400000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1BE053B84();
  }

  return v8 & 1;
}

uint64_t sub_1BD1D05CC()
{
  sub_1BE053D04();
  sub_1BE052524();

  return sub_1BE053D64();
}

uint64_t sub_1BD1D0648()
{
  sub_1BE052524();
}

uint64_t sub_1BD1D06B0()
{
  sub_1BE053D04();
  sub_1BE052524();

  return sub_1BE053D64();
}

uint64_t sub_1BD1D0734@<X0>(char *a1@<X8>)
{
  v2 = sub_1BE053A44();

  if (v2 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (!v2)
  {
    v4 = 0;
  }

  *a1 = v4;
  return result;
}

void sub_1BD1D0790(uint64_t *a1@<X8>)
{
  v2 = 1953722220;
  if (*v1)
  {
    v2 = 0x64657070617277;
  }

  v3 = 0xE400000000000000;
  if (*v1)
  {
    v3 = 0xE700000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t CredentialCenterError.hashValue.getter()
{
  sub_1BE053D04();
  MEMORY[0x1BFB40DA0](0);
  return sub_1BE053D64();
}

uint64_t (*CredentialCenterModel.navigationPath.modify(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_1BE04D8A4();
  return sub_1BD1DED80;
}

uint64_t sub_1BD1D09FC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3C898);
  v3 = *(v2 - 8);
  v5 = MEMORY[0x1EEE9AC00](v2, v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v13 - v9;
  v11 = *(v3 + 16);
  v11(&v13 - v9, a1, v2);
  v11(v7, v10, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3C890);
  sub_1BE04D894();
  swift_endAccess();
  return (*(v3 + 8))(v10, v2);
}

uint64_t CredentialCenterModel.$navigationPath.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3C898);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  (*(v3 + 16))(&v7 - v5, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3C890);
  sub_1BE04D894();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*CredentialCenterModel.$navigationPath.modify(uint64_t *a1))()
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3C898);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC9PassKitUI21CredentialCenterModel__navigationPath;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3C890);
  sub_1BE04D884();
  swift_endAccess();
  return sub_1BD1DED84;
}

uint64_t (*CredentialCenterModel.credentials.modify(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_1BE04D8A4();
  return sub_1BD1DED80;
}

uint64_t sub_1BD1D0F38(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3C8B0);
  v3 = *(v2 - 8);
  v5 = MEMORY[0x1EEE9AC00](v2, v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v13 - v9;
  v11 = *(v3 + 16);
  v11(&v13 - v9, a1, v2);
  v11(v7, v10, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3C8A8);
  sub_1BE04D894();
  swift_endAccess();
  return (*(v3 + 8))(v10, v2);
}

uint64_t CredentialCenterModel.$credentials.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3C8B0);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  (*(v3 + 16))(&v7 - v5, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3C8A8);
  sub_1BE04D894();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*CredentialCenterModel.$credentials.modify(uint64_t *a1))()
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3C8B0);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC9PassKitUI21CredentialCenterModel__credentials;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3C8A8);
  sub_1BE04D884();
  swift_endAccess();
  return sub_1BD1DED84;
}

uint64_t (*CredentialCenterModel.credentialsWithMissingKey.modify(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_1BE04D8A4();
  return sub_1BD1DED80;
}

uint64_t sub_1BD1D1474(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3C8C8);
  v3 = *(v2 - 8);
  v5 = MEMORY[0x1EEE9AC00](v2, v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v13 - v9;
  v11 = *(v3 + 16);
  v11(&v13 - v9, a1, v2);
  v11(v7, v10, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3C8C0);
  sub_1BE04D894();
  swift_endAccess();
  return (*(v3 + 8))(v10, v2);
}

uint64_t CredentialCenterModel.$credentialsWithMissingKey.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3C8C8);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  (*(v3 + 16))(&v7 - v5, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3C8C0);
  sub_1BE04D894();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*CredentialCenterModel.$credentialsWithMissingKey.modify(uint64_t *a1))()
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3C8C8);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC9PassKitUI21CredentialCenterModel__credentialsWithMissingKey;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3C8C0);
  sub_1BE04D884();
  swift_endAccess();
  return sub_1BD1DED84;
}

uint64_t sub_1BD1D18DC()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE048C84();
  sub_1BE048964();
  return sub_1BE04D8C4();
}

uint64_t sub_1BD1D1968()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE048964();
  return sub_1BE04D8C4();
}

uint64_t (*CredentialCenterModel.credentialsWithInvalidData.modify(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_1BE04D8A4();
  return sub_1BD1DED80;
}

uint64_t sub_1BD1D1A94(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3C8C8);
  v3 = *(v2 - 8);
  v5 = MEMORY[0x1EEE9AC00](v2, v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v13 - v9;
  v11 = *(v3 + 16);
  v11(&v13 - v9, a1, v2);
  v11(v7, v10, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3C8C0);
  sub_1BE04D894();
  swift_endAccess();
  return (*(v3 + 8))(v10, v2);
}

uint64_t CredentialCenterModel.$credentialsWithInvalidData.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3C8C8);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  (*(v3 + 16))(&v7 - v5, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3C8C0);
  sub_1BE04D894();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*CredentialCenterModel.$credentialsWithInvalidData.modify(uint64_t *a1))()
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3C8C8);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC9PassKitUI21CredentialCenterModel__credentialsWithInvalidData;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3C8C0);
  sub_1BE04D884();
  swift_endAccess();
  return sub_1BD1DED84;
}

uint64_t CredentialCenterModel.usersDefaultCredential.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();
}

uint64_t sub_1BD1D1F38()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();
}

uint64_t sub_1BD1D1FB4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD4D450);
  v4 = MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = &v11 - v8;
  sub_1BD0DE19C(a1, &v11 - v8, &unk_1EBD4D450);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BD0DE19C(v9, v6, &unk_1EBD4D450);
  sub_1BE048964();
  sub_1BE04D8C4();
  return sub_1BD0DE53C(v9, &unk_1EBD4D450);
}

uint64_t CredentialCenterModel.usersDefaultCredential.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD4D450);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v5 = &v7 - v4;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BD0DE19C(a1, v5, &unk_1EBD4D450);
  sub_1BE048964();
  sub_1BE04D8C4();
  return sub_1BD0DE53C(a1, &unk_1EBD4D450);
}

uint64_t (*CredentialCenterModel.usersDefaultCredential.modify(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_1BE04D8A4();
  return sub_1BD1D2278;
}

void sub_1BD1D227C(void *a1)
{
  v1 = *a1;
  (*(*a1 + 48))(*a1, 0);

  free(v1);
}

uint64_t sub_1BD1D2300(uint64_t a1, uint64_t *a2)
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  sub_1BE04D884();
  return swift_endAccess();
}

uint64_t sub_1BD1D2378(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(a5);
  sub_1BE04D884();
  return swift_endAccess();
}

uint64_t sub_1BD1D23F4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3C8E8);
  v3 = *(v2 - 8);
  v5 = MEMORY[0x1EEE9AC00](v2, v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v13 - v9;
  v11 = *(v3 + 16);
  v11(&v13 - v9, a1, v2);
  v11(v7, v10, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3C8E0);
  sub_1BE04D894();
  swift_endAccess();
  return (*(v3 + 8))(v10, v2);
}

uint64_t CredentialCenterModel.$usersDefaultCredential.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3C8E8);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  (*(v3 + 16))(&v7 - v5, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3C8E0);
  sub_1BE04D894();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*CredentialCenterModel.$usersDefaultCredential.modify(uint64_t *a1))()
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3C8E8);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC9PassKitUI21CredentialCenterModel__usersDefaultCredential;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3C8E0);
  sub_1BE04D884();
  swift_endAccess();
  return sub_1BD1D2820;
}

void sub_1BD1D2824(uint64_t a1, char a2)
{
  v3 = *a1;
  v4 = *(*(*a1 + 88) + 16);
  v4(*(*a1 + 104), v3[14], v3[10]);
  v5 = v3[13];
  v11 = v3[14];
  v7 = v3[11];
  v6 = v3[12];
  v8 = v3[10];
  if (a2)
  {
    v4(v3[12], v5, v3[10]);
    swift_beginAccess();
    sub_1BE04D894();
    swift_endAccess();
    v9 = *(v7 + 8);
    v9(v5, v8);
    v10 = v11;
    v9(v11, v8);
  }

  else
  {
    swift_beginAccess();
    sub_1BE04D894();
    swift_endAccess();
    v10 = v11;
    (*(v7 + 8))(v11, v8);
  }

  free(v10);
  free(v5);
  free(v6);

  free(v3);
}

uint64_t CredentialCenterModel.__allocating_init(userDefaultCredentialIdentifier:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  CredentialCenterModel.init(userDefaultCredentialIdentifier:)(a1, a2);
  return v4;
}

uint64_t CredentialCenterModel.init(userDefaultCredentialIdentifier:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v57 = a1;
  v58 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3E580);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v56 = &v48 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3C8E0);
  v54 = *(v7 - 8);
  v55 = v7;
  MEMORY[0x1EEE9AC00](v7, v8);
  v53 = &v48 - v9;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD4D450);
  v11 = MEMORY[0x1EEE9AC00](v52, v10);
  v51 = &v48 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11, v13);
  v50 = &v48 - v14;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3C8C0);
  v15 = *(v49 - 8);
  MEMORY[0x1EEE9AC00](v49, v16);
  v18 = &v48 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3C8A8);
  v20 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19, v21);
  v23 = &v48 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3C890);
  v25 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24, v26);
  v28 = &v48 - v27;
  v29 = OBJC_IVAR____TtC9PassKitUI21CredentialCenterModel__navigationPath;
  v59 = MEMORY[0x1E69E7CC0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3C8F0);
  sub_1BE04D874();
  (*(v25 + 32))(v3 + v29, v28, v24);
  v30 = OBJC_IVAR____TtC9PassKitUI21CredentialCenterModel_financeStore;
  sub_1BE0490F4();
  *(v3 + v30) = sub_1BE0490B4();
  v31 = OBJC_IVAR____TtC9PassKitUI21CredentialCenterModel__credentials;
  v32 = MEMORY[0x1E69E7CC0];
  v59 = MEMORY[0x1E69E7CC0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3C900);
  sub_1BE04D874();
  (*(v20 + 32))(v3 + v31, v23, v19);
  v33 = OBJC_IVAR____TtC9PassKitUI21CredentialCenterModel__credentialsWithMissingKey;
  v59 = v32;
  v34 = v32;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3C908);
  sub_1BE04D874();
  v35 = *(v15 + 32);
  v36 = v49;
  v35(v3 + v33, v18, v49);
  v37 = OBJC_IVAR____TtC9PassKitUI21CredentialCenterModel__credentialsWithInvalidData;
  v59 = v34;
  sub_1BE04D874();
  v35(v3 + v37, v18, v36);
  v38 = OBJC_IVAR____TtC9PassKitUI21CredentialCenterModel__usersDefaultCredential;
  v39 = sub_1BE049394();
  v40 = v50;
  (*(*(v39 - 8) + 56))(v50, 1, 1, v39);
  sub_1BD0DE19C(v40, v51, &unk_1EBD4D450);
  v41 = v53;
  sub_1BE04D874();
  sub_1BD0DE53C(v40, &unk_1EBD4D450);
  (*(v54 + 32))(v3 + v38, v41, v55);
  v42 = sub_1BE0528D4();
  v43 = v56;
  (*(*(v42 - 8) + 56))(v56, 1, 1, v42);
  v44 = swift_allocObject();
  v44[2] = 0;
  v44[3] = 0;
  v46 = v57;
  v45 = v58;
  v44[4] = v3;
  v44[5] = v46;
  v44[6] = v45;
  sub_1BE048964();
  sub_1BD122C00(0, 0, v43, &unk_1BE0BF5B0, v44);

  return v3;
}

uint64_t sub_1BD1D2F9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  v7 = sub_1BE04D214();
  v6[5] = v7;
  v6[6] = *(v7 - 8);
  v6[7] = swift_task_alloc();
  v8 = sub_1BE049444();
  v6[8] = v8;
  v6[9] = *(v8 - 8);
  v6[10] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1BD1D30BC, 0, 0);
}

uint64_t sub_1BD1D30BC()
{
  v1 = swift_task_alloc();
  *(v0 + 88) = v1;
  *v1 = v0;
  v1[1] = sub_1BD1D3164;
  v2 = *(v0 + 80);

  return MEMORY[0x1EEDC1498](v2);
}

uint64_t sub_1BD1D3164()
{
  *(*v1 + 96) = v0;

  if (v0)
  {
    v2 = sub_1BD1D3458;
  }

  else
  {
    v2 = sub_1BD1D3278;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1BD1D3278()
{
  sub_1BE0528A4();
  *(v0 + 104) = sub_1BE052894();
  v2 = sub_1BE052844();

  return MEMORY[0x1EEE6DFA0](sub_1BD1D330C, v2, v1);
}

void sub_1BD1D330C()
{
  v1 = v0[12];
  v2 = v0[10];
  v4 = v0[3];
  v3 = v0[4];
  v5 = v0[2];

  sub_1BD1D35F0(v2, v5, v4, v3);
  if (v1)
  {
  }

  else
  {

    MEMORY[0x1EEE6DFA0](sub_1BD1D33D4, 0, 0);
  }
}

uint64_t sub_1BD1D33D4()
{
  (*(v0[9] + 8))(v0[10], v0[8]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_1BD1D3458()
{
  v1 = v0[12];
  sub_1BE04D1E4();
  v2 = v1;
  v3 = sub_1BE04D204();
  v4 = sub_1BE052C34();

  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[12];
  if (v5)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    v9 = v6;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_1BD026000, v3, v4, "Failed to fetch credentials: %@", v7, 0xCu);
    sub_1BD0DE53C(v8, &unk_1EBD3E590);
    MEMORY[0x1BFB45F20](v8, -1, -1);
    MEMORY[0x1BFB45F20](v7, -1, -1);
  }

  else
  {
  }

  (*(v0[6] + 8))(v0[7], v0[5]);

  v11 = v0[1];

  return v11();
}

uint64_t sub_1BD1D35F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v38 = a4;
  v44 = a3;
  v42 = sub_1BE04AFE4();
  v35 = *(v42 - 8);
  MEMORY[0x1EEE9AC00](v42, v5);
  v41 = v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = sub_1BE049394();
  v7 = *(v43 - 8);
  MEMORY[0x1EEE9AC00](v43, v8);
  v45 = v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD4D450);
  v12 = MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v37 = v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12, v14);
  v36 = v34 - v15;
  v16 = sub_1BE049414();
  sub_1BD1D3B58(v16);
  v17 = sub_1BE049434();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();

  v18 = sub_1BD1D6938(v46, v17);

  swift_getKeyPath();
  swift_getKeyPath();
  v46 = v18;
  sub_1BE048964();
  sub_1BE04D8C4();
  v19 = sub_1BE049424();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();

  v20 = sub_1BD1D6938(v46, v19);

  swift_getKeyPath();
  swift_getKeyPath();
  v46 = v20;
  sub_1BE048964();
  sub_1BE04D8C4();
  if (!v38)
  {
  }

  v34[1] = a2;
  v21 = v43;
  result = v16;
  v39 = *(v16 + 16);
  if (v39)
  {
    v23 = v38;
    v24 = 0;
    v40 = v7 + 16;
    v25 = (v35 + 8);
    while (v24 < *(result + 16))
    {
      v26 = result;
      (*(v7 + 16))(v45, result + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v24, v21);
      v27 = v41;
      sub_1BE0492D4();
      v28 = sub_1BE04AF74();
      v30 = v29;
      (*v25)(v27, v42);
      if (v28 == v44 && v30 == v23)
      {

LABEL_12:

        v21 = v43;
        v33 = v36;
        (*(v7 + 32))(v36, v45, v43);
        v32 = 0;
        goto LABEL_13;
      }

      v31 = sub_1BE053B84();

      if (v31)
      {
        goto LABEL_12;
      }

      ++v24;
      v21 = v43;
      (*(v7 + 8))(v45, v43);
      result = v26;
      if (v39 == v24)
      {
        goto LABEL_9;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_9:

    v32 = 1;
    v33 = v36;
LABEL_13:
    (*(v7 + 56))(v33, v32, 1, v21);
    swift_getKeyPath();
    swift_getKeyPath();
    sub_1BD0DE19C(v33, v37, &unk_1EBD4D450);
    sub_1BE048964();
    sub_1BE04D8C4();
    return sub_1BD0DE53C(v33, &unk_1EBD4D450);
  }

  return result;
}

uint64_t sub_1BD1D3B58(uint64_t a1)
{
  v53 = sub_1BE04AFE4();
  v2 = *(v53 - 8);
  v4 = MEMORY[0x1EEE9AC00](v53, v3);
  v52 = &v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4, v6);
  v51 = &v42 - v7;
  v60 = sub_1BE049394();
  v8 = *(v60 - 8);
  v10 = MEMORY[0x1EEE9AC00](v60, v9);
  v45 = &v42 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v10, v12);
  v50 = &v42 - v14;
  MEMORY[0x1EEE9AC00](v13, v15);
  v59 = &v42 - v16;
  v44 = *(a1 + 16);
  if (v44)
  {
    v17 = 0;
    v19 = *(v8 + 16);
    v18 = v8 + 16;
    v56 = v19;
    v20 = (*(v18 + 64) + 32) & ~*(v18 + 64);
    v58 = *(v18 + 56);
    v47 = v20;
    v42 = a1 + v20;
    v49 = (v2 + 8);
    v54 = (v18 - 8);
    v43 = (v18 + 16);
    v46 = MEMORY[0x1E69E7CC0];
    v55 = v18;
    v22 = v50;
    v21 = v51;
LABEL_7:
    v48 = v17 + 1;
    v56(v59, v42 + v58 * v17, v60);
    swift_getKeyPath();
    swift_getKeyPath();
    sub_1BE04D8B4();

    v26 = v62;
    v27 = v62 + v47;
    v57 = -*(v62 + 16);
    v28 = -1;
    while (1)
    {
      if (v57 + v28 == -1)
      {

        v37 = *v43;
        (*v43)(v45, v59, v60);
        v38 = v46;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v40 = v38;
        v61[0] = v38;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1BD531C74(0, *(v38 + 16) + 1, 1);
          v40 = v61[0];
        }

        v17 = v48;
        v24 = *(v40 + 16);
        v23 = *(v40 + 24);
        if (v24 >= v23 >> 1)
        {
          sub_1BD531C74(v23 > 1, v24 + 1, 1);
          v40 = v61[0];
        }

        *(v40 + 16) = v24 + 1;
        v46 = v40;
        v37((v40 + v47 + v24 * v58), v45, v60);
LABEL_6:
        if (v17 == v44)
        {
          goto LABEL_15;
        }

        goto LABEL_7;
      }

      if (++v28 >= *(v26 + 16))
      {
        break;
      }

      v29 = v27 + v58;
      v30 = v60;
      (v56)(v22);
      sub_1BE0492D4();
      v31 = v52;
      sub_1BE0492D4();
      v32 = _s9PassKitUI28NearbyPeerPaymentButtonsViewC6ActionV2eeoiySbAE_AEtFZ_0();
      v33 = *v49;
      v34 = v31;
      v35 = v53;
      (*v49)(v34, v53);
      v33(v21, v35);
      v36 = *v54;
      result = (*v54)(v22, v30);
      v27 = v29;
      if (v32)
      {

        v36(v59, v60);
        v17 = v48;
        goto LABEL_6;
      }
    }

    __break(1u);
  }

  else
  {
    v46 = MEMORY[0x1E69E7CC0];
LABEL_15:
    swift_getKeyPath();
    swift_getKeyPath();
    v41 = sub_1BE04D8A4();
    sub_1BDA7A78C(v46);
    v41(v61, 0);
  }

  return result;
}

Swift::Void __swiftcall CredentialCenterModel.ingestNewSealedBoxes(newBoxes:type:)(Swift::OpaquePointer newBoxes, PassKitUI::SealedBoxType type)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();

  sub_1BD1D6938(v3, newBoxes._rawValue);

  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE048964();
  sub_1BE04D8C4();
}

uint64_t CredentialCenterModel.credentialsByType.getter()
{
  v0 = sub_1BE0492B4();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = &v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1BE0492A4();
  v6 = *(v5 + 16);
  if (v6)
  {
    v8 = *(v1 + 16);
    v7 = v1 + 16;
    v9 = *(v7 + 64);
    v19 = v5;
    v10 = v5 + ((v9 + 32) & ~v9);
    v20 = *(v7 + 56);
    v21 = v8;
    v22 = v7;
    v11 = (v7 - 8);
    v12 = MEMORY[0x1E69E7CC8];
    do
    {
      v21(v4, v10, v0);
      swift_getKeyPath();
      swift_getKeyPath();
      sub_1BE04D8B4();

      MEMORY[0x1EEE9AC00](v13, v14);
      *(&v19 - 2) = v4;
      v16 = sub_1BD1CEA70(sub_1BD1DCED0, (&v19 - 4), v15, MEMORY[0x1E6967788], sub_1BD531C74);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v23 = v12;
      sub_1BD1DB0FC(v16, v4, isUniquelyReferenced_nonNull_native);
      v12 = v23;
      (*v11)(v4, v0);
      v10 += v20;
      --v6;
    }

    while (v6);
  }

  else
  {

    return MEMORY[0x1E69E7CC8];
  }

  return v12;
}

BOOL sub_1BD1D4398()
{
  v0 = sub_1BE0492B4();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BE0492C4();
  sub_1BD1DCD18(&qword_1EBD3CBE8, MEMORY[0x1E6967728]);
  sub_1BE0526E4();
  sub_1BE0526E4();
  (*(v1 + 8))(v4, v0);
  return v8 == v7;
}

char *CredentialCenterModel.achCredentials.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4D1F0);
  MEMORY[0x1EEE9AC00](v0 - 8, v1);
  v3 = &v29 - v2;
  v4 = sub_1BE049364();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v43 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1BE049394();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13, v14);
  v42 = &v29 - v15;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();

  v16 = *(v44 + 16);
  if (v16)
  {
    v18 = *(v9 + 16);
    v17 = v9 + 16;
    v19 = (*(v17 + 64) + 32) & ~*(v17 + 64);
    v29 = v44;
    v20 = v44 + v19;
    v40 = *(v17 + 56);
    v41 = v18;
    v38 = (v17 + 72);
    v39 = (v17 + 16);
    v37 = *MEMORY[0x1E6967770];
    v30 = (v17 + 80);
    v31 = (v17 - 8);
    v21 = (v5 + 32);
    v33 = v5;
    v35 = (v5 + 48);
    v36 = (v5 + 56);
    v22 = MEMORY[0x1E69E7CC0];
    v34 = v3;
    v32 = v17;
    do
    {
      v23 = v42;
      v41(v42, v20, v8);
      (*v39)(v12, v23, v8);
      v24 = (*v38)(v12, v8);
      if (v24 == v37)
      {
        (*v30)(v12, v8);
        (*v21)(v3, v12, v4);
        (*v36)(v3, 0, 1, v4);
      }

      else
      {
        (*v36)(v3, 1, 1, v4);
        (*v31)(v12, v8);
      }

      if ((*v35)(v3, 1, v4) == 1)
      {
        sub_1BD0DE53C(v3, &qword_1EBD4D1F0);
      }

      else
      {
        v25 = *v21;
        (*v21)(v43, v3, v4);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v22 = sub_1BD1D7668(0, *(v22 + 2) + 1, 1, v22, &qword_1EBD3CBE0, &unk_1BE0BFE28, MEMORY[0x1E6967750]);
        }

        v27 = *(v22 + 2);
        v26 = *(v22 + 3);
        if (v27 >= v26 >> 1)
        {
          v22 = sub_1BD1D7668(v26 > 1, v27 + 1, 1, v22, &qword_1EBD3CBE0, &unk_1BE0BFE28, MEMORY[0x1E6967750]);
        }

        *(v22 + 2) = v27 + 1;
        v25(&v22[((*(v33 + 80) + 32) & ~*(v33 + 80)) + *(v33 + 72) * v27], v43, v4);
        v3 = v34;
      }

      v20 += v40;
      --v16;
    }

    while (v16);
  }

  else
  {

    return MEMORY[0x1E69E7CC0];
  }

  return v22;
}

uint64_t CredentialCenterModel.addCredential(bankCredential:)(uint64_t a1)
{
  v2[6] = a1;
  v2[7] = v1;
  v3 = sub_1BE049394();
  v2[8] = v3;
  v2[9] = *(v3 - 8);
  v2[10] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1BD1D4A88, 0, 0);
}

uint64_t sub_1BD1D4A88()
{
  v1 = swift_task_alloc();
  *(v0 + 88) = v1;
  *v1 = v0;
  v1[1] = sub_1BD1D4B30;
  v2 = *(v0 + 48);

  return MEMORY[0x1EEDC1528](v2);
}

uint64_t sub_1BD1D4B30()
{
  v2 = *v1;

  if (v0)
  {

    v3 = *(v2 + 8);

    return v3();
  }

  else
  {

    return MEMORY[0x1EEE6DFA0](sub_1BD1D4C7C, 0, 0);
  }
}

uint64_t sub_1BD1D4C7C()
{
  sub_1BE0528A4();
  *(v0 + 96) = sub_1BE052894();
  v2 = sub_1BE052844();

  return MEMORY[0x1EEE6DFA0](sub_1BD1D4D10, v2, v1);
}

uint64_t sub_1BD1D4D10()
{
  v2 = v0[9];
  v1 = v0[10];
  v3 = v0[8];
  v4 = v0[6];

  (*(v2 + 16))(v1, v4, v3);
  swift_getKeyPath();
  swift_getKeyPath();
  v5 = sub_1BE04D8A4();
  v7 = v6;
  v8 = *v6;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v7 = v8;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = sub_1BD1D7668(0, v8[2] + 1, 1, v8, &qword_1EBD3CBD8, &unk_1BE0BFE20, MEMORY[0x1E6967788]);
    *v7 = v8;
  }

  v11 = v8[2];
  v10 = v8[3];
  if (v11 >= v10 >> 1)
  {
    v8 = sub_1BD1D7668(v10 > 1, v11 + 1, 1, v8, &qword_1EBD3CBD8, &unk_1BE0BFE20, MEMORY[0x1E6967788]);
    *v7 = v8;
  }

  v12 = v0[9];
  v13 = v0[10];
  v14 = v0[8];
  v8[2] = v11 + 1;
  (*(v12 + 32))(v8 + ((*(v12 + 80) + 32) & ~*(v12 + 80)) + *(v12 + 72) * v11, v13, v14);
  v5(v0 + 2, 0);

  v15 = v0[1];

  return v15();
}

uint64_t CredentialCenterModel.deleteCredential(credentialID:sealedBoxType:)(uint64_t a1, _BYTE *a2)
{
  *(v3 + 16) = a1;
  *(v3 + 24) = v2;
  *(v3 + 72) = *a2;
  return MEMORY[0x1EEE6DFA0](sub_1BD1D4F34, 0, 0);
}

uint64_t sub_1BD1D4F34()
{
  v1 = v0[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3C910);
  v2 = sub_1BE04AFE4();
  v3 = *(v2 - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = swift_allocObject();
  v0[4] = v5;
  *(v5 + 16) = xmmword_1BE0B69E0;
  (*(v3 + 16))(v5 + v4, v1, v2);
  v6 = swift_task_alloc();
  v0[5] = v6;
  *v6 = v0;
  v6[1] = sub_1BD1D509C;

  return MEMORY[0x1EEDC14E8](v5);
}

uint64_t sub_1BD1D509C(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 48) = a1;
  *(v3 + 56) = v1;

  if (v1)
  {
    v4 = sub_1BD1D5310;
  }

  else
  {
    v4 = sub_1BD1D51B0;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1BD1D51B0()
{
  sub_1BE0528A4();
  *(v0 + 64) = sub_1BE052894();
  v2 = sub_1BE052844();

  return MEMORY[0x1EEE6DFA0](sub_1BD1D5244, v2, v1);
}

void sub_1BD1D5244()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 48);
  v3 = *(v0 + 24);
  v4 = *(v0 + 72);

  sub_1BD1D5708(v4, v2, v3);
  if (v1)
  {
  }

  else
  {

    MEMORY[0x1EEE6DFA0](sub_1BD1D5374, 0, 0);
  }
}

uint64_t sub_1BD1D5310()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t CredentialCenterModel.deleteCredentials(credentialIDs:sealedBoxType:)(uint64_t a1, _BYTE *a2)
{
  *(v3 + 16) = a1;
  *(v3 + 24) = v2;
  *(v3 + 64) = *a2;
  return MEMORY[0x1EEE6DFA0](sub_1BD1D53B8, 0, 0);
}

uint64_t sub_1BD1D53B8()
{
  v1 = swift_task_alloc();
  *(v0 + 32) = v1;
  *v1 = v0;
  v1[1] = sub_1BD1D5460;
  v2 = *(v0 + 16);

  return MEMORY[0x1EEDC14E8](v2);
}

uint64_t sub_1BD1D5460(uint64_t a1)
{
  v3 = *v2;
  v3[5] = a1;
  v3[6] = v1;

  if (v1)
  {
    v4 = v3[1];

    return v4();
  }

  else
  {

    return MEMORY[0x1EEE6DFA0](sub_1BD1D5594, 0, 0);
  }
}

uint64_t sub_1BD1D5594()
{
  sub_1BE0528A4();
  *(v0 + 56) = sub_1BE052894();
  v2 = sub_1BE052844();

  return MEMORY[0x1EEE6DFA0](sub_1BD1D5628, v2, v1);
}

void sub_1BD1D5628()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 40);
  v3 = *(v0 + 24);
  v4 = *(v0 + 64);

  sub_1BD1D5708(v4, v2, v3);
  if (v1)
  {
  }

  else
  {

    MEMORY[0x1EEE6DFA0](sub_1BD1D56EC, 0, 0);
  }
}

uint64_t sub_1BD1D5708(int a1, uint64_t a2, uint64_t a3)
{
  v71 = a3;
  LODWORD(v73) = a1;
  v5 = a1;
  v72 = sub_1BE04AFE4();
  v7 = MEMORY[0x1EEE9AC00](v72, v6);
  v9 = &v58 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x1EEE9AC00](v7, v10);
  v14 = &v58 - v13;
  v75 = v3;
  if (v5 == 2)
  {
    v15 = *(a2 + 16);
    if (v15)
    {
      v17 = *(v12 + 16);
      v16 = v12 + 16;
      v61 = v9;
      v62 = v17;
      v18 = a2 + ((*(v16 + 64) + 32) & ~*(v16 + 64));
      v19 = *(v16 + 56);
      v70 = v16;
      v59 = (v16 - 8);
      v60 = v19;
      for (i = v17(v9, v18, v72); ; i = v62(v9, v18, v23))
      {
        v69 = &v58;
        MEMORY[0x1EEE9AC00](i, v21);
        *(&v58 - 2) = v9;
        KeyPath = swift_getKeyPath();
        v25 = swift_getKeyPath();
        v68 = sub_1BE04D8A4();
        v27 = v26;
        v28 = v75;
        result = sub_1BD1DA97C(sub_1BD1DED44, (&v58 - 4));
        v73 = v27;
        v29 = *v27;
        v30 = *(*v27 + 16);
        v31 = v30 - result;
        if (v30 < result)
        {
          break;
        }

        v32 = result;
        if (result < 0)
        {
          goto LABEL_35;
        }

        v67 = v25;
        v33 = result;
        if (__OFADD__(v30, result - v30))
        {
          goto LABEL_36;
        }

        v63 = result - v30;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *v73 = v29;
        v75 = v28;
        v65 = v18;
        v66 = v15;
        v64 = KeyPath;
        if (!isUniquelyReferenced_nonNull_native || v33 > v29[3] >> 1)
        {
          if (v29[2] <= v33)
          {
            v35 = v30 - v31;
          }

          else
          {
            v35 = v29[2];
          }

          v29 = sub_1BD1D7668(isUniquelyReferenced_nonNull_native, v35, 1, v29, &qword_1EBD3CBD8, &unk_1BE0BFE20, MEMORY[0x1E6967788]);
          *v73 = v29;
        }

        v36 = *(sub_1BE049394() - 8);
        v37 = v29 + ((*(v36 + 80) + 32) & ~*(v36 + 80));
        v38 = *(v36 + 72);
        v39 = v38 * v32;
        result = swift_arrayDestroy();
        if (v30 != v32)
        {
          if (v39 < v38 * v30 || &v37[v38 * v32] >= &v37[v38 * v30 + (v29[2] - v30) * v38])
          {
            result = swift_arrayInitWithTakeFrontToBack();
          }

          else if (v39 != v38 * v30)
          {
            result = swift_arrayInitWithTakeBackToFront();
          }

          v41 = v29[2];
          v42 = __OFADD__(v41, v63);
          v43 = v41 + v63;
          if (v42)
          {
            goto LABEL_37;
          }

          v29[2] = v43;
        }

        v22 = v68;
        *v73 = v29;
        v22(v74, 0);

        v9 = v61;
        v23 = v72;
        result = (*v59)(v61, v72);
        v18 = v65 + v60;
        v15 = v66 - 1;
        if (v66 == 1)
        {
          return result;
        }
      }

      __break(1u);
LABEL_35:
      __break(1u);
LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
    }
  }

  else
  {
    v44 = *(a2 + 16);
    if (v44)
    {
      v69 = *(v12 + 16);
      v70 = v12 + 16;
      v45 = a2 + ((*(v12 + 80) + 32) & ~*(v12 + 80));
      v46 = (v12 + 8);
      v47 = *(v12 + 72);
      v68 = v12 + 8;
      (v69)(v14, v45, v72);
      while (1)
      {
        if (v73)
        {
          swift_getKeyPath();
          swift_getKeyPath();
          sub_1BE04D8B4();

          MEMORY[0x1EEE9AC00](v48, v49);
          *(&v58 - 2) = v14;
          v50 = v75;
          v52 = sub_1BD1CEA70(sub_1BD1DED04, (&v58 - 4), v51, MEMORY[0x1E6967780], sub_1BD531CB8);
          v75 = v50;
          v46 = v68;
        }

        else
        {
          swift_getKeyPath();
          swift_getKeyPath();
          sub_1BE04D8B4();

          MEMORY[0x1EEE9AC00](v54, v55);
          *(&v58 - 2) = v14;
          v56 = v75;
          v52 = sub_1BD1CEA70(sub_1BD1DED60, (&v58 - 4), v57, MEMORY[0x1E6967780], sub_1BD531CB8);
          v75 = v56;
        }

        swift_getKeyPath();
        swift_getKeyPath();
        v74[0] = v52;
        sub_1BE048964();
        sub_1BE04D8C4();
        v53 = v72;
        result = (*v46)(v14, v72);
        v45 += v47;
        if (!--v44)
        {
          break;
        }

        (v69)(v14, v45, v53);
      }
    }
  }

  return result;
}

uint64_t CredentialCenterModel.updateACHCredential(credential:routingNumber:accountNumber:nickname:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9[19] = a8;
  v9[20] = v8;
  v9[17] = a6;
  v9[18] = a7;
  v9[15] = a4;
  v9[16] = a5;
  v9[13] = a2;
  v9[14] = a3;
  v9[12] = a1;
  v10 = sub_1BE04AFE4();
  v9[21] = v10;
  v9[22] = *(v10 - 8);
  v9[23] = swift_task_alloc();
  v11 = sub_1BE049394();
  v9[24] = v11;
  v9[25] = *(v11 - 8);
  v9[26] = swift_task_alloc();
  v9[27] = swift_task_alloc();
  v9[28] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1BD1D5EA4, 0, 0);
}

uint64_t sub_1BD1D5EA4()
{
  v1 = v0[25];
  v12 = v0[28];
  v13 = v0[24];
  v14 = v0[27];
  v2 = v0[13];
  v3 = v0[12];
  v4 = sub_1BE049364();
  v0[29] = v4;
  v5 = *(v4 - 8);
  v0[30] = v5;
  v6 = *(v5 + 16);
  v6(v3, v2, v4);
  sub_1BE048C84();
  sub_1BE0492F4();
  sub_1BE048C84();
  sub_1BE049324();
  sub_1BE048C84();
  sub_1BE049354();
  v6(v12, v3, v4);
  v7 = *MEMORY[0x1E6967770];
  v8 = *(v1 + 104);
  v8(v12, v7, v13);
  v6(v14, v3, v4);
  v8(v14, v7, v13);
  v9 = swift_task_alloc();
  v0[31] = v9;
  *v9 = v0;
  v9[1] = sub_1BD1D60AC;
  v10 = v0[27];

  return MEMORY[0x1EEDC1528](v10);
}

uint64_t sub_1BD1D60AC()
{
  v2 = *v1;
  v3 = *(*v1 + 216);
  v4 = *(*v1 + 200);
  v5 = *(*v1 + 192);
  v2[32] = v0;

  v6 = *(v4 + 8);
  v2[33] = v6;
  v2[34] = (v4 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v6(v3, v5);
  if (v0)
  {
    v7 = sub_1BD1D66F8;
  }

  else
  {
    v7 = sub_1BD1D6230;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

uint64_t sub_1BD1D6230()
{
  sub_1BE0528A4();
  *(v0 + 280) = sub_1BE052894();
  v2 = sub_1BE052844();

  return MEMORY[0x1EEE6DFA0](sub_1BD1D62C4, v2, v1);
}

uint64_t sub_1BD1D62C4()
{
  v1 = v0[23];

  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();

  v2 = *(v0[10] + 16);

  sub_1BE0492D4();
  v3 = swift_task_alloc();
  v3[2] = v1;
  KeyPath = swift_getKeyPath();
  swift_getKeyPath();
  v5 = sub_1BE04D8A4();
  v7 = v6;
  v8 = sub_1BD1DA97C(sub_1BD1DCEF0, v3);
  v9 = *(*v7 + 16);
  if (v9 < v8)
  {
    __break(1u);
LABEL_11:
    v5 = sub_1BD1D7668(0, *(v5 + 2) + 1, 1, v5, &qword_1EBD3CBD8, &unk_1BE0BFE20, MEMORY[0x1E6967788]);
    *v3 = v5;
    goto LABEL_4;
  }

  v22 = v2;
  v10 = v0[22];
  v11 = v0[23];
  v12 = v0[21];
  sub_1BD1DD4E0(v8, v9);

  v5();

  (*(v10 + 8))(v11, v12);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();

  v13 = *(v0[11] + 16);

  if (v13 >= v22)
  {
    goto LABEL_7;
  }

  v7 = v0 + 6;
  (*(v0[25] + 16))(v0[26], v0[28], v0[24]);
  swift_getKeyPath();
  swift_getKeyPath();
  KeyPath = sub_1BE04D8A4();
  v3 = v14;
  v5 = *v14;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v3 = v5;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_4:
  v17 = *(v5 + 2);
  v16 = *(v5 + 3);
  if (v17 >= v16 >> 1)
  {
    v5 = sub_1BD1D7668(v16 > 1, v17 + 1, 1, v5, &qword_1EBD3CBD8, &unk_1BE0BFE20, MEMORY[0x1E6967788]);
    *v3 = v5;
  }

  v19 = v0[25];
  v18 = v0[26];
  v20 = v0[24];
  *(v5 + 2) = v17 + 1;
  (*(v19 + 32))(v5 + ((*(v19 + 80) + 32) & ~*(v19 + 80)) + *(v19 + 72) * v17, v18, v20);
  KeyPath(v7, 0);

LABEL_7:

  return MEMORY[0x1EEE6DFA0](sub_1BD1D665C, 0, 0);
}

uint64_t sub_1BD1D665C()
{
  (*(v0 + 264))(*(v0 + 224), *(v0 + 192));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1BD1D66F8()
{
  v1 = *(v0 + 232);
  v2 = *(v0 + 240);
  v3 = *(v0 + 96);
  (*(v0 + 264))(*(v0 + 224), *(v0 + 192));
  (*(v2 + 8))(v3, v1);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t CredentialCenterModel.sealedBox(with:sealedBoxType:)@<X0>(_BYTE *a1@<X1>, uint64_t a2@<X8>)
{
  if (*a1)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_1BE04D8B4();

    v4 = v10;
    MEMORY[0x1EEE9AC00](v3, v5);
    v6 = sub_1BD1DD5D8;
  }

  else
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_1BE04D8B4();

    v4 = v10;
    MEMORY[0x1EEE9AC00](v7, v8);
    v6 = sub_1BD1DED28;
  }

  sub_1BD1CEDB0(v6, v4, MEMORY[0x1E6967780], a2);
}

uint64_t sub_1BD1D6938(uint64_t a1, uint64_t a2)
{
  v53 = sub_1BE04AFE4();
  v4 = *(v53 - 8);
  v6 = MEMORY[0x1EEE9AC00](v53, v5);
  v8 = &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v9);
  v11 = &v43 - v10;
  v59 = sub_1BE049384();
  v13 = MEMORY[0x1EEE9AC00](v59, v12);
  v50 = &v43 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v13, v15);
  v18 = &v43 - v17;
  MEMORY[0x1EEE9AC00](v16, v19);
  v58 = &v43 - v21;
  v49 = *(a2 + 16);
  if (v49)
  {
    v22 = 0;
    v24 = *(v20 + 16);
    v23 = v20 + 16;
    v25 = (*(v23 + 64) + 32) & ~*(v23 + 64);
    v57 = *(v23 + 56);
    v44 = v25;
    v45 = a1 + v25;
    v46 = a2 + v25;
    v26 = (v4 + 8);
    v54 = (v23 - 8);
    v55 = v24;
    v48 = (v23 + 16);
    v51 = MEMORY[0x1E69E7CC0];
    v47 = a1;
    v56 = v23;
    v27 = v59;
    do
    {
      v52 = v22 + 1;
      v55(v58, v46 + v57 * v22, v59);
      v30 = *(a1 + 16) + 1;
      v31 = v45;
      while (--v30)
      {
        v32 = v31 + v57;
        v33 = (v55)(v18);
        v34 = MEMORY[0x1BFB36400](v33);
        MEMORY[0x1BFB36400](v34);
        v35 = _s9PassKitUI28NearbyPeerPaymentButtonsViewC6ActionV2eeoiySbAE_AEtFZ_0();
        v36 = *v26;
        v37 = v53;
        (*v26)(v8, v53);
        v36(v11, v37);
        v38 = *v54;
        (*v54)(v18, v27);
        v31 = v32;
        if (v35)
        {
          v38(v58, v59);
          goto LABEL_6;
        }
      }

      v39 = *v48;
      (*v48)(v50, v58, v59);
      v41 = v51;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v60 = v41;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1BD531CB8(0, *(v41 + 16) + 1, 1);
        v41 = v60;
      }

      v29 = *(v41 + 16);
      v28 = *(v41 + 24);
      if (v29 >= v28 >> 1)
      {
        sub_1BD531CB8(v28 > 1, v29 + 1, 1);
        v41 = v60;
      }

      *(v41 + 16) = v29 + 1;
      v51 = v41;
      v39((v41 + v44 + v29 * v57), v50, v59);
LABEL_6:
      v22 = v52;
      a1 = v47;
    }

    while (v52 != v49);
  }

  else
  {
    v51 = MEMORY[0x1E69E7CC0];
  }

  v60 = a1;
  sub_1BE048C84();
  sub_1BDA7A7B8(v51);
  return v60;
}

uint64_t sub_1BD1D6D58(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  v4 = sub_1BE04AFE4();
  v5 = *(v4 - 8);
  v7 = MEMORY[0x1EEE9AC00](v4, v6);
  v9 = &v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  a3(v7);
  LOBYTE(a3) = _s9PassKitUI28NearbyPeerPaymentButtonsViewC6ActionV2eeoiySbAE_AEtFZ_0();
  (*(v5 + 8))(v9, v4);
  return a3 & 1;
}

BOOL sub_1BD1D6E54()
{
  v0 = sub_1BE04AFE4();
  v1 = *(v0 - 8);
  v3 = MEMORY[0x1EEE9AC00](v0, v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1BFB36400](v3);
  sub_1BD1DCD18(&unk_1EBD36A30, MEMORY[0x1E69695A8]);
  v6 = sub_1BE052334();
  (*(v1 + 8))(v5, v0);
  return (v6 & 1) == 0;
}

uint64_t CredentialCenterModel.deinit()
{
  v1 = OBJC_IVAR____TtC9PassKitUI21CredentialCenterModel__navigationPath;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3C890);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  v3 = OBJC_IVAR____TtC9PassKitUI21CredentialCenterModel__credentials;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3C8A8);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = OBJC_IVAR____TtC9PassKitUI21CredentialCenterModel__credentialsWithMissingKey;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3C8C0);
  v7 = *(*(v6 - 8) + 8);
  v7(v0 + v5, v6);
  v7(v0 + OBJC_IVAR____TtC9PassKitUI21CredentialCenterModel__credentialsWithInvalidData, v6);
  v8 = OBJC_IVAR____TtC9PassKitUI21CredentialCenterModel__usersDefaultCredential;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3C8E0);
  (*(*(v9 - 8) + 8))(v0 + v8, v9);
  return v0;
}

uint64_t CredentialCenterModel.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC9PassKitUI21CredentialCenterModel__navigationPath;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3C890);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  v3 = OBJC_IVAR____TtC9PassKitUI21CredentialCenterModel__credentials;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3C8A8);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = OBJC_IVAR____TtC9PassKitUI21CredentialCenterModel__credentialsWithMissingKey;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3C8C0);
  v7 = *(*(v6 - 8) + 8);
  v7(v0 + v5, v6);
  v7(v0 + OBJC_IVAR____TtC9PassKitUI21CredentialCenterModel__credentialsWithInvalidData, v6);
  v8 = OBJC_IVAR____TtC9PassKitUI21CredentialCenterModel__usersDefaultCredential;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3C8E0);
  (*(*(v9 - 8) + 8))(v0 + v8, v9);

  return swift_deallocClassInstance();
}

uint64_t sub_1BD1D72E0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1BE04D814();
  *a1 = result;
  return result;
}

char *sub_1BD1D7368(char *result, int64_t a2, char a3, char *a4, uint64_t *a5)
{
  v6 = result;
  if (a3)
  {
    v7 = *(a4 + 3);
    v8 = v7 >> 1;
    if ((v7 >> 1) < a2)
    {
      if (v8 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v8 = v7 & 0xFFFFFFFFFFFFFFFELL;
      if ((v7 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v8 = a2;
      }
    }
  }

  else
  {
    v8 = a2;
  }

  v9 = *(a4 + 2);
  if (v8 <= v9)
  {
    v10 = *(a4 + 2);
  }

  else
  {
    v10 = v8;
  }

  if (v10)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5);
    v11 = swift_allocObject();
    v12 = _swift_stdlib_malloc_size(v11);
    *(v11 + 2) = v9;
    *(v11 + 3) = 2 * ((v12 - 32) / 24);
  }

  else
  {
    v11 = MEMORY[0x1E69E7CC0];
  }

  v13 = v11 + 32;
  v14 = a4 + 32;
  if (v6)
  {
    if (v11 != a4 || v13 >= &v14[24 * v9])
    {
      memmove(v13, v14, 24 * v9);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v11;
}

char *sub_1BD1D74C0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3C9B0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

size_t sub_1BD1D7668(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t a6, uint64_t (*a7)(void))
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
    v17 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5);
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

char *sub_1BD1D7844(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3CA10);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

void *sub_1BD1D7948(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3CAC8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3E5A0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1BD1D7A7C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3CAE8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1BD1D7D24(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3CC48);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1BD1D7E30(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3CB70);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

char *sub_1BD1D7F34(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3CB78);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[48 * v8])
    {
      memmove(v12, v13, 48 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1BD1D8054(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3CB68);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

char *sub_1BD1D8158(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3CAF0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 29;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 2);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[4 * v8])
    {
      memmove(v13, v14, 4 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 4 * v8);
  }

  return v10;
}

char *sub_1BD1D8324(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3CA98);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
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

char *sub_1BD1D8468(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3CB08);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 + 31;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 6);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[64 * v8])
    {
      memmove(v13, v14, v8 << 6);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1BD1D8574(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3CAF8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 136);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[136 * v8])
    {
      memmove(v12, v13, 136 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1BD1D8694(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3CB00);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 56);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[56 * v8])
    {
      memmove(v12, v13, 56 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1BD1D87E4(char *result, int64_t a2, char a3, char *a4, uint64_t *a5)
{
  v6 = result;
  if (a3)
  {
    v7 = *(a4 + 3);
    v8 = v7 >> 1;
    if ((v7 >> 1) < a2)
    {
      if (v8 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v8 = v7 & 0xFFFFFFFFFFFFFFFELL;
      if ((v7 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v8 = a2;
      }
    }
  }

  else
  {
    v8 = a2;
  }

  v9 = *(a4 + 2);
  if (v8 <= v9)
  {
    v10 = *(a4 + 2);
  }

  else
  {
    v10 = v8;
  }

  if (v10)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5);
    v11 = swift_allocObject();
    v12 = _swift_stdlib_malloc_size(v11);
    v13 = v12 - 32;
    if (v12 < 32)
    {
      v13 = v12 - 25;
    }

    *(v11 + 2) = v9;
    *(v11 + 3) = 2 * (v13 >> 3);
  }

  else
  {
    v11 = MEMORY[0x1E69E7CC0];
  }

  v14 = v11 + 32;
  v15 = a4 + 32;
  if (v6)
  {
    if (v11 != a4 || v14 >= &v15[8 * v9])
    {
      memmove(v14, v15, 8 * v9);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v14, v15, 8 * v9);
  }

  return v11;
}

void *sub_1BD1D8974(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t a6, uint64_t *a7)
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

  if (v13)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5);
    v14 = swift_allocObject();
    v15 = _swift_stdlib_malloc_size(v14);
    v16 = v15 - 32;
    if (v15 < 32)
    {
      v16 = v15 - 17;
    }

    v14[2] = v12;
    v14[3] = 2 * (v16 >> 4);
  }

  else
  {
    v14 = MEMORY[0x1E69E7CC0];
  }

  if (v9)
  {
    if (v14 != a4 || v14 + 4 >= &a4[2 * v12 + 4])
    {
      memmove(v14 + 4, a4 + 4, 16 * v12);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a7);
    swift_arrayInitWithCopy();
  }

  return v14;
}

char *sub_1BD1D8AA8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3CB60);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[48 * v8])
    {
      memmove(v12, v13, 48 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1BD1D8BF0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3C9F0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1BD1D8D50(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3CB90);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1BD1D8E78(char *result, int64_t a2, char a3, char *a4, uint64_t *a5)
{
  v6 = result;
  if (a3)
  {
    v7 = *(a4 + 3);
    v8 = v7 >> 1;
    if ((v7 >> 1) < a2)
    {
      if (v8 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v8 = v7 & 0xFFFFFFFFFFFFFFFELL;
      if ((v7 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v8 = a2;
      }
    }
  }

  else
  {
    v8 = a2;
  }

  v9 = *(a4 + 2);
  if (v8 <= v9)
  {
    v10 = *(a4 + 2);
  }

  else
  {
    v10 = v8;
  }

  if (v10)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5);
    v11 = swift_allocObject();
    v12 = _swift_stdlib_malloc_size(v11);
    v13 = v12 - 32;
    if (v12 < 32)
    {
      v13 = v12 - 17;
    }

    *(v11 + 2) = v9;
    *(v11 + 3) = 2 * (v13 >> 4);
  }

  else
  {
    v11 = MEMORY[0x1E69E7CC0];
  }

  v14 = v11 + 32;
  v15 = a4 + 32;
  if (v6)
  {
    if (v11 != a4 || v14 >= &v15[16 * v9])
    {
      memmove(v14, v15, 16 * v9);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v11;
}

char *sub_1BD1D8F84(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3BBA0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

char *sub_1BD1D913C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3CAD0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1BD1D925C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3CC30);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
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

void *sub_1BD1D9378(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3CC38);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[3 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 24 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD557F0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1BD1D94C0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3CC50);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1BD1D95CC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3CAA0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1BD1D96EC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3CC00);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1BD1D9898(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3CB58);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

void *sub_1BD1D9AB0(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t a6, uint64_t *a7)
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

  if (v13)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5);
    v14 = swift_allocObject();
    v15 = _swift_stdlib_malloc_size(v14);
    v16 = v15 - 32;
    if (v15 < 32)
    {
      v16 = v15 - 25;
    }

    v14[2] = v12;
    v14[3] = 2 * (v16 >> 3);
  }

  else
  {
    v14 = MEMORY[0x1E69E7CC0];
  }

  if (v9)
  {
    if (v14 != a4 || v14 + 4 >= &a4[v12 + 4])
    {
      memmove(v14 + 4, a4 + 4, 8 * v12);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a7);
    swift_arrayInitWithCopy();
  }

  return v14;
}