uint64_t CredentialCenterView.$model.getter()
{
  type metadata accessor for CredentialCenterModel(0);
  sub_1BD324AE4();

  return sub_1BE04E964();
}

uint64_t CredentialCenterView.showingFailureAlert.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54350);
  sub_1BE0516A4();
  return v1;
}

uint64_t sub_1BD9E37D8@<X0>(_BYTE *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54350);
  result = sub_1BE0516A4();
  *a1 = v3;
  return result;
}

void (*CredentialCenterView.showingFailureAlert.modify(uint64_t *a1))(uint64_t *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = *(v1 + 16);
  *(v3 + 50) = v5;
  v6 = *(v1 + 24);
  *(v4 + 32) = v6;
  *v4 = v5;
  *(v4 + 8) = v6;
  sub_1BE048964();
  *(v4 + 40) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54350);
  sub_1BE0516A4();
  return sub_1BD9E39A0;
}

void sub_1BD9E39A0(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 48);
  v3 = *(*a1 + 32);
  *(*a1 + 16) = *(*a1 + 50);
  *(v1 + 24) = v3;
  *(v1 + 49) = v2;
  sub_1BE0516B4();

  free(v1);
}

uint64_t CredentialCenterView.$showingFailureAlert.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54350);
  sub_1BE0516C4();
  return v1;
}

uint64_t CredentialCenterView.body.getter()
{
  sub_1BE048964();
  sub_1BE051694();
  sub_1BE051694();
  type metadata accessor for CredentialCenterModel(0);
  sub_1BD324AE4();
  sub_1BE04E954();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54350);
  sub_1BE0516C4();
  sub_1BD9E3CA8();
  sub_1BE050EE4();
}

uint64_t sub_1BD9E3BF0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = a2;
  *(v10 + 32) = a3;
  *(v10 + 40) = a4;
  sub_1BE048964();
  sub_1BE048964();
  static BankCredentialListView.genericErrorAlert(action:)(sub_1BD9E3DE0, a5);
}

unint64_t sub_1BD9E3CA8()
{
  result = qword_1EBD5B468;
  if (!qword_1EBD5B468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD5B468);
  }

  return result;
}

uint64_t sub_1BD9E3E4C(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  v7[0] = *a1;
  v7[1] = v2;
  v3 = a1[3];
  v7[2] = a1[2];
  v7[3] = v3;
  v4 = a2[1];
  v8[0] = *a2;
  v8[1] = v4;
  v5 = a2[3];
  v8[2] = a2[2];
  v8[3] = v5;
  return sub_1BD9E3E98(v7, v8) & 1;
}

uint64_t sub_1BD9E3E98(void *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_1BE053B84() & 1) == 0)
  {
    return 0;
  }

  v5 = a1[2] == a2[2] && a1[3] == a2[3];
  if (!v5 && (sub_1BE053B84() & 1) == 0)
  {
    return 0;
  }

  v6 = a1[5];
  v7 = a2[5];
  if (v6)
  {
    if (!v7 || (a1[4] != a2[4] || v6 != v7) && (sub_1BE053B84() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v7)
  {
    return 0;
  }

  sub_1BD0E5E8C(0, &qword_1EBD3E3F0);
  if (sub_1BE053074())
  {
    v8 = a1[7];
    v9 = a2[7];
    if (v8)
    {
      if (v9)
      {
        sub_1BD0E5E8C(0, &unk_1EBD5B470);
        v10 = v9;
        v11 = v8;
        v12 = sub_1BE053074();

        if (v12)
        {
          return 1;
        }
      }
    }

    else if (!v9)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t HowToUseWalletView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v46 = a1;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5B480);
  v39 = *(v37 - 8);
  MEMORY[0x1EEE9AC00](v37, v2);
  v4 = &v35 - v3;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5B488);
  v40 = *(v42 - 8);
  MEMORY[0x1EEE9AC00](v42, v5);
  v35 = &v35 - v6;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5B490) - 8;
  MEMORY[0x1EEE9AC00](v38, v7);
  v36 = &v35 - v8;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5B498) - 8;
  MEMORY[0x1EEE9AC00](v44, v9);
  v41 = &v35 - v10;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5B4A0) - 8;
  MEMORY[0x1EEE9AC00](v45, v11);
  v43 = &v35 - v12;
  v13 = v1[1];
  v57 = *v1;
  v58 = v13;
  v59 = *(v1 + 4);
  v47 = &v57;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5B4A8);
  sub_1BD9E4A64(&qword_1EBD5B4B0, &qword_1EBD5B4A8, &unk_1BE10C4B8, sub_1BD9E4858);
  sub_1BE0504E4();
  v48 = v57;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5B4F8);
  sub_1BE0516C4();
  v14 = v51;
  v48 = v50;
  v49 = v51;
  v15 = swift_allocObject();
  v16 = v58;
  *(v15 + 16) = v57;
  *(v15 + 32) = v16;
  *(v15 + 48) = v59;
  sub_1BD9E5554(&v57, &v50);
  sub_1BD0E5E8C(0, &qword_1EBD5B500);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5B508);
  sub_1BD0DE4F4(&qword_1EBD5B510, &qword_1EBD5B480);
  sub_1BD54BCFC(&qword_1EBD5B518, &qword_1EBD5B500);
  sub_1BD9E558C();
  v17 = v35;
  v18 = v37;
  sub_1BE050F74();

  (*(v39 + 8))(v4, v18);
  sub_1BE051CD4();
  sub_1BE04EE54();
  v19 = v36;
  (*(v40 + 32))(v36, v17, v42);
  v20 = &v19[*(v38 + 44)];
  v21 = v55;
  *(v20 + 4) = v54;
  *(v20 + 5) = v21;
  *(v20 + 6) = v56;
  v22 = v51;
  *v20 = v50;
  *(v20 + 1) = v22;
  v23 = v53;
  *(v20 + 2) = v52;
  *(v20 + 3) = v23;
  v24 = [objc_opt_self() systemGroupedBackgroundColor];
  v25 = sub_1BE0511C4();
  v26 = sub_1BE0501D4();
  v27 = v19;
  v28 = v41;
  sub_1BD0DE204(v27, v41, &qword_1EBD5B490);
  v29 = v28 + *(v44 + 44);
  *v29 = v25;
  *(v29 + 8) = v26;
  v30 = swift_allocObject();
  v31 = v58;
  *(v30 + 16) = v57;
  *(v30 + 32) = v31;
  *(v30 + 48) = v59;
  v32 = v43;
  sub_1BD0DE204(v28, v43, &qword_1EBD5B498);
  v33 = (v32 + *(v45 + 44));
  *v33 = sub_1BD9E578C;
  v33[1] = v30;
  v33[2] = 0;
  v33[3] = 0;
  sub_1BD0DE204(v32, v46, &qword_1EBD5B4A0);
  return sub_1BD9E5554(&v57, &v48);
}

uint64_t sub_1BD9E465C(uint64_t a1)
{
  v2 = [*(a1 + 16) sections];
  sub_1BD0E5E8C(0, &qword_1EBD5B620);
  v3 = sub_1BE052744();

  v4 = sub_1BD6CB840(v3);

  v10 = v4;
  swift_getKeyPath();
  v5 = swift_allocObject();
  v6 = *(a1 + 16);
  *(v5 + 16) = *a1;
  *(v5 + 32) = v6;
  *(v5 + 48) = *(a1 + 32);
  v7 = swift_allocObject();
  *(v7 + 16) = sub_1BD9E672C;
  *(v7 + 24) = v5;
  sub_1BD9E5554(a1, v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5B628);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5B4C0);
  sub_1BD0DE4F4(&qword_1EBD5B630, &qword_1EBD5B628);
  sub_1BD54BCFC(&qword_1EBD5B638, &qword_1EBD5B620);
  sub_1BD9E4858();
  return sub_1BE0519C4();
}

unint64_t sub_1BD9E4858()
{
  result = qword_1EBD5B4B8;
  if (!qword_1EBD5B4B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD5B4C0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD5B4C8);
    sub_1BD9E494C();
    swift_getOpaqueTypeConformance2();
    sub_1BD9E4A64(&qword_1EBD5B4E0, &qword_1EBD5B4E8, &unk_1BE10C4D0, sub_1BD9E4AE0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD5B4B8);
  }

  return result;
}

unint64_t sub_1BD9E494C()
{
  result = qword_1EBD5B4D0;
  if (!qword_1EBD5B4D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD5B4C8);
    sub_1BD9E4A10();
    sub_1BD9E4A64(&qword_1EBD5B4E0, &qword_1EBD5B4E8, &unk_1BE10C4D0, sub_1BD9E4AE0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD5B4D0);
  }

  return result;
}

unint64_t sub_1BD9E4A10()
{
  result = qword_1EBD5B4D8;
  if (!qword_1EBD5B4D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD5B4D8);
  }

  return result;
}

uint64_t sub_1BD9E4A64(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
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

unint64_t sub_1BD9E4AE0()
{
  result = qword_1EBD5B4F0;
  if (!qword_1EBD5B4F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD5B4F0);
  }

  return result;
}

uint64_t sub_1BD9E4B34@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5B4E8);
  v66 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v9);
  v65 = &v60 - v10;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5B640);
  MEMORY[0x1EEE9AC00](v69, v11);
  v13 = &v60 - v12;
  v14 = sub_1BE04E2E4();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14, v16);
  v18 = &v60 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5B4C8);
  v62 = *(v67 - 8);
  MEMORY[0x1EEE9AC00](v67, v19);
  v61 = &v60 - v20;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5B648);
  v64 = *(v68 - 8);
  v22 = MEMORY[0x1EEE9AC00](v68, v21);
  v63 = &v60 - v23;
  if (a1 && (v24 = [a2 titleKey]) != 0 && (v25 = v24, v26 = objc_msgSend(a2, sel_localizationBundle), v60 = a3, v27 = v18, v28 = a2, v29 = v15, v30 = v13, v31 = a4, v32 = v8, v33 = v26, v34 = PKLocalizedHowToUseWalletStringWithBundle(v25, v26), v25, v33, v8 = v32, v35 = v31, v13 = v30, v36 = v14, v37 = v29, a2 = v28, v38 = v27, a3 = v60, v34))
  {
    v39 = sub_1BE052434();
    v65 = v13;
    v40 = v39;
    v42 = v41;

    v66 = v35;
    v70 = v40;
    v71 = v42;
    MEMORY[0x1EEE9AC00](v43, v44);
    sub_1BD9E4A10();
    sub_1BD9E4A64(&qword_1EBD5B4E0, &qword_1EBD5B4E8, &unk_1BE10C4D0, sub_1BD9E4AE0);
    v45 = v61;
    sub_1BE051A24();
    (*(v37 + 104))(v38, *MEMORY[0x1E697DAD8], v36);
    v46 = sub_1BD9E494C();
    v47 = v63;
    v48 = v36;
    v49 = v67;
    sub_1BE050B84();
    (*(v37 + 8))(v38, v48);
    (*(v62 + 8))(v45, v49);
    v50 = v64;
    v51 = v68;
    (*(v64 + 16))(v65, v47, v68);
    swift_storeEnumTagMultiPayload();
    v70 = v49;
    v71 = v46;
    swift_getOpaqueTypeConformance2();
    sub_1BE04F9A4();
    return (*(v50 + 8))(v47, v51);
  }

  else
  {
    v53 = [a2 cards];
    sub_1BD0E5E8C(0, &qword_1EBD5B500);
    v54 = sub_1BE052744();

    v72 = v54;
    v55 = swift_allocObject();
    v56 = *(a3 + 16);
    *(v55 + 16) = *a3;
    *(v55 + 32) = v56;
    *(v55 + 48) = *(a3 + 32);
    sub_1BD9E5554(a3, &v70);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5B650);
    sub_1BD0DE4F4(&qword_1EBD5B658, &qword_1EBD5B650);
    sub_1BD9E4AE0();
    sub_1BD54BCFC(&qword_1EBD5B518, &qword_1EBD5B500);
    v57 = v65;
    sub_1BE0519D4();
    v58 = v66;
    (*(v66 + 16))(v13, v57, v8);
    swift_storeEnumTagMultiPayload();
    v59 = sub_1BD9E494C();
    v70 = v67;
    v71 = v59;
    swift_getOpaqueTypeConformance2();
    sub_1BD9E4A64(&qword_1EBD5B4E0, &qword_1EBD5B4E8, &unk_1BE10C4D0, sub_1BD9E4AE0);
    sub_1BE04F9A4();
    return (*(v58 + 8))(v57, v8);
  }
}

uint64_t sub_1BD9E527C(uint64_t a1, id a2)
{
  v3 = [a2 cards];
  sub_1BD0E5E8C(0, &qword_1EBD5B500);
  v4 = sub_1BE052744();

  v9 = v4;
  v5 = swift_allocObject();
  v6 = *(a1 + 16);
  *(v5 + 16) = *a1;
  *(v5 + 32) = v6;
  *(v5 + 48) = *(a1 + 32);
  sub_1BD9E5554(a1, v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5B650);
  sub_1BD0DE4F4(&qword_1EBD5B658, &qword_1EBD5B650);
  sub_1BD9E4AE0();
  sub_1BD54BCFC(&qword_1EBD5B518, &qword_1EBD5B500);
  return sub_1BE0519D4();
}

uint64_t sub_1BD9E5460@<X0>(void **a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39148);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BE0B6CA0;
  v5 = v3;
  v6 = sub_1BE0501E4();
  *(inited + 32) = v6;
  v7 = sub_1BE0501F4();
  *(inited + 33) = v7;
  v8 = sub_1BE050214();
  sub_1BE050214();
  if (sub_1BE050214() != v6)
  {
    v8 = sub_1BE050214();
  }

  sub_1BE050214();
  if (sub_1BE050214() != v7)
  {
    v8 = sub_1BE050214();
  }

  result = sub_1BE04EC54();
  *a2 = v5;
  *(a2 + 8) = result;
  *(a2 + 16) = v8;
  return result;
}

unint64_t sub_1BD9E558C()
{
  result = qword_1EBD5B520;
  if (!qword_1EBD5B520)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD5B508);
    sub_1BD9E5618();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD5B520);
  }

  return result;
}

unint64_t sub_1BD9E5618()
{
  result = qword_1EBD5B528;
  if (!qword_1EBD5B528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD5B528);
  }

  return result;
}

uint64_t sub_1BD9E566C(uint64_t a1)
{
  v1 = *(a1 + 24);
  v2 = *(a1 + 32);
  v6 = v1;
  v7 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5B4F8);
  result = sub_1BE0516A4();
  if (v9)
  {
    v4 = v9;
    sub_1BE0516B4();
    v8 = v1;
    v9 = v2;
    v6 = v1;
    v7 = v2;
    v5[1] = 0;
    sub_1BD0DE19C(&v8, v5, &qword_1EBD5B1D0);
    sub_1BD0DE19C(&v9, v5, &unk_1EBD5B610);
    sub_1BE0516B4();

    sub_1BD0DE53C(&v8, &qword_1EBD5B1D0);
    return sub_1BD0DE53C(&v9, &unk_1EBD5B610);
  }

  return result;
}

id sub_1BD9E5794@<X0>(id *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5B4F8);
  sub_1BE0516C4();
  *a2 = v5;
  *(a2 + 16) = v6;
  *(a2 + 24) = v4;

  return v4;
}

uint64_t sub_1BD9E5814@<X0>(uint64_t a1@<X8>)
{
  sub_1BD0DDEBC();
  sub_1BE048C84();
  v2 = sub_1BE0506C4();
  v4 = v3;
  v6 = v5;
  sub_1BE0503D4();
  v7 = sub_1BE0505F4();
  v9 = v8;
  v11 = v10;

  sub_1BD0DDF10(v2, v4, v6 & 1);

  sub_1BE050364();
  v12 = sub_1BE050544();
  v14 = v13;
  v16 = v15;
  v18 = v17;
  sub_1BD0DDF10(v7, v9, v11 & 1);

  LOBYTE(v7) = v16 & 1;
  v19 = sub_1BE0501C4();
  sub_1BE04E1F4();
  v21 = v20;
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v28 = sub_1BE0501F4();
  result = sub_1BE04E1F4();
  *a1 = v12;
  *(a1 + 8) = v14;
  *(a1 + 16) = v7;
  *(a1 + 24) = v18;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0;
  *(a1 + 72) = v19;
  *(a1 + 80) = v21;
  *(a1 + 88) = v23;
  *(a1 + 96) = v25;
  *(a1 + 104) = v27;
  *(a1 + 112) = 0;
  *(a1 + 120) = v28;
  *(a1 + 128) = v30;
  *(a1 + 136) = v31;
  *(a1 + 144) = v32;
  *(a1 + 152) = v33;
  *(a1 + 160) = 0;
  return result;
}

uint64_t sub_1BD9E59BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, void *a4@<X3>, uint64_t a5@<X8>)
{
  v43 = a5;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5B5C0);
  v41 = *(v9 - 8);
  v42 = v9;
  MEMORY[0x1EEE9AC00](v9, v10);
  v40 = &v39 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5B5C8);
  v13 = v12 - 8;
  MEMORY[0x1EEE9AC00](v12, v14);
  v16 = &v39 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5B5D0);
  v18 = v17 - 8;
  MEMORY[0x1EEE9AC00](v17, v19);
  v21 = &v39 - v20;
  v22 = swift_allocObject();
  v22[2] = a1;
  v22[3] = a2;
  v22[4] = a3;
  v22[5] = a4;
  v23 = a3;
  v24 = a4;
  sub_1BE048964();
  sub_1BE048964();
  sub_1BE051CD4();
  sub_1BE04EE54();
  *&v44 = v24;
  *(&v44 + 1) = sub_1BD9E6470;
  *&v45 = v22;
  sub_1BE04E554();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5B5D8);
  sub_1BD9E647C();
  v25 = v40;
  sub_1BE050BB4();
  v53[6] = v50;
  v53[7] = v51;
  v54 = v52;
  v53[2] = v46;
  v53[3] = v47;
  v53[4] = v48;
  v53[5] = v49;
  v53[0] = v44;
  v53[1] = v45;
  sub_1BD0DE53C(v53, &qword_1EBD5B5D8);
  *&v44 = sub_1BE051404();
  v26 = sub_1BE0518D4();
  (*(v41 + 32))(v16, v25, v42);
  *&v16[*(v13 + 44)] = v26;
  sub_1BD0DE204(v16, v21, &qword_1EBD5B5C8);
  v27 = &v21[*(v18 + 44)];
  v27[32] = 0;
  *v27 = 0u;
  *(v27 + 1) = 0u;
  LOBYTE(v26) = sub_1BE0501F4();
  sub_1BE04E1F4();
  v29 = v28;
  v31 = v30;
  v33 = v32;
  v35 = v34;
  v36 = v43;
  sub_1BD0DE204(v21, v43, &qword_1EBD5B5D0);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5B5F0);
  v38 = v36 + *(result + 36);
  *v38 = v26;
  *(v38 + 8) = v29;
  *(v38 + 16) = v31;
  *(v38 + 24) = v33;
  *(v38 + 32) = v35;
  *(v38 + 40) = 0;
  return result;
}

uint64_t sub_1BD9E5D70(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v4 = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5B5F8);
  return sub_1BE0518F4();
}

uint64_t PKHowToUseWalletCard.id.getter()
{
  v1 = [v0 identifier];
  v2 = sub_1BE052434();

  return v2;
}

id sub_1BD9E5E58(int a1, id a2)
{
  v3 = [a2 article];
  v4 = [objc_allocWithZone(PKDiscoveryArticleViewController) initWithArticleLayout:v3 referrerIdentifier:0 cardSize:{objc_msgSend(a2, sel_cardSizeType)}];

  if (v4)
  {
    v5 = [objc_allocWithZone(PKNavigationController) initWithRootViewController_];

    return v5;
  }

  else
  {
    v7 = objc_allocWithZone(MEMORY[0x1E69DD258]);

    return [v7 init];
  }
}

uint64_t sub_1BD9E5F38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1BD9E655C();

  return MEMORY[0x1EEDDB778](a1, a2, a3, v6);
}

uint64_t sub_1BD9E5F9C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1BD9E655C();

  return MEMORY[0x1EEDDB740](a1, a2, a3, v6);
}

void sub_1BD9E6000()
{
  sub_1BD9E655C();
  sub_1BE0500A4();
  __break(1u);
}

id sub_1BD9E60CC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DiscoveryCardView.Coordinator();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_1BD9E613C()
{
  result = qword_1EBD5B5A0;
  if (!qword_1EBD5B5A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD5B4A0);
    sub_1BD9E61C8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD5B5A0);
  }

  return result;
}

unint64_t sub_1BD9E61C8()
{
  result = qword_1EBD5B5A8;
  if (!qword_1EBD5B5A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD5B498);
    sub_1BD9E6280();
    sub_1BD0DE4F4(&qword_1EBD36710, &qword_1EBD491B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD5B5A8);
  }

  return result;
}

unint64_t sub_1BD9E6280()
{
  result = qword_1EBD5B5B0;
  if (!qword_1EBD5B5B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD5B490);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD5B480);
    sub_1BD0E5E8C(255, &qword_1EBD5B500);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD5B508);
    sub_1BD0DE4F4(&qword_1EBD5B510, &qword_1EBD5B480);
    sub_1BD54BCFC(&qword_1EBD5B518, &qword_1EBD5B500);
    sub_1BD9E558C();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD5B5B0);
  }

  return result;
}

unint64_t sub_1BD9E647C()
{
  result = qword_1EBD5B5E0;
  if (!qword_1EBD5B5E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD5B5D8);
    sub_1BD9E6508();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD5B5E0);
  }

  return result;
}

unint64_t sub_1BD9E6508()
{
  result = qword_1EBD5B5E8;
  if (!qword_1EBD5B5E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD5B5E8);
  }

  return result;
}

unint64_t sub_1BD9E655C()
{
  result = qword_1EBD5B600;
  if (!qword_1EBD5B600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD5B600);
  }

  return result;
}

id sub_1BD9E65B8@<X0>(void *a1@<X8>)
{
  v4 = *(v1 + 8);
  v3 = *(v1 + 16);
  v5 = type metadata accessor for DiscoveryCardView.Coordinator();
  v6 = objc_allocWithZone(v5);
  v7 = &v6[OBJC_IVAR____TtCV9PassKitUIP33_FFC9451F794D8546D0BF2DCB4E84C2B017DiscoveryCardView11Coordinator_cardTapped];
  *v7 = v4;
  v7[1] = v3;
  sub_1BD0D44B8(v4);
  v9.receiver = v6;
  v9.super_class = v5;
  result = objc_msgSendSuper2(&v9, sel_init);
  *a1 = result;
  return result;
}

uint64_t sub_1BD9E663C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1BD9E6BB8();

  return MEMORY[0x1EEDDAA28](a1, a2, a3, v6);
}

uint64_t sub_1BD9E66A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1BD9E6BB8();

  return MEMORY[0x1EEDDA9B8](a1, a2, a3, v6);
}

void sub_1BD9E6704()
{
  sub_1BD9E6BB8();
  sub_1BE04F964();
  __break(1u);
}

uint64_t objectdestroyTm_119()
{

  return swift_deallocObject();
}

unint64_t sub_1BD9E67AC()
{
  result = qword_1EBD5B660;
  if (!qword_1EBD5B660)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD5B668);
    sub_1BD9E6838();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD5B660);
  }

  return result;
}

unint64_t sub_1BD9E6838()
{
  result = qword_1EBD5B670;
  if (!qword_1EBD5B670)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD5B678);
    sub_1BD9E68C4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD5B670);
  }

  return result;
}

unint64_t sub_1BD9E68C4()
{
  result = qword_1EBD5B680;
  if (!qword_1EBD5B680)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD38D88);
    sub_1BD0DE4F4(&unk_1EBD3FB30, &qword_1EBD397A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD5B680);
  }

  return result;
}

unint64_t sub_1BD9E697C()
{
  result = qword_1EBD5B690;
  if (!qword_1EBD5B690)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD5B5F0);
    sub_1BD9E6A08();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD5B690);
  }

  return result;
}

unint64_t sub_1BD9E6A08()
{
  result = qword_1EBD5B698;
  if (!qword_1EBD5B698)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD5B5D0);
    sub_1BD9E6AC0();
    sub_1BD0DE4F4(&unk_1EBD3FB30, &qword_1EBD397A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD5B698);
  }

  return result;
}

unint64_t sub_1BD9E6AC0()
{
  result = qword_1EBD5B6A0;
  if (!qword_1EBD5B6A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD5B5C8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD5B5D8);
    sub_1BD9E647C();
    swift_getOpaqueTypeConformance2();
    sub_1BD0DE4F4(&unk_1EBD3FB20, &qword_1EBD5B6B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD5B6A0);
  }

  return result;
}

unint64_t sub_1BD9E6BB8()
{
  result = qword_1EBD5B6B8;
  if (!qword_1EBD5B6B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD5B6B8);
  }

  return result;
}

id sub_1BD9E6C0C(int a1, id a2)
{
  v3 = [a2 cardSizeType];
  v4 = [a2 article];
  if (v3 == 1)
  {
    v5 = [objc_allocWithZone(PKDiscoveryCardMiniView) initWithArticleLayout_];

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD5B6C0);
    sub_1BE04FF74();
    v4 = v8;
    [v5 setDelegate_];
  }

  else
  {
    v6 = [objc_allocWithZone(PKDiscoveryCardViewTemplateInformation) initWithCardSize:objc_msgSend(a2 displayType:{sel_cardSizeType), 0}];
    v5 = [objc_allocWithZone(PKDiscoveryCardView) initWithArticleLayout:v4 cardTemplateInformation:v6];
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD5B6C0);
    sub_1BE04FF74();
    [v5 setDelegate_];
  }

  return v5;
}

id sub_1BD9E6E80()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AddressEditorView.Coordinator();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1BD9E6F28(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_1BD9E6F70(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

id sub_1BD9E6FD4@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  v5 = *(v1 + 24);
  v4 = *(v1 + 32);
  v6 = type metadata accessor for AddressEditorView.Coordinator();
  v7 = objc_allocWithZone(v6);
  *&v7[OBJC_IVAR____TtCV9PassKitUI17AddressEditorView11Coordinator_address] = v3;
  v8 = &v7[OBJC_IVAR____TtCV9PassKitUI17AddressEditorView11Coordinator_dismiss];
  *v8 = v5;
  *(v8 + 1) = v4;
  v11.receiver = v7;
  v11.super_class = v6;
  v9 = v3;
  sub_1BE048964();
  result = objc_msgSendSuper2(&v11, sel_init);
  *a1 = result;
  return result;
}

uint64_t sub_1BD9E7088(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1BD9E7178();

  return MEMORY[0x1EEDDB778](a1, a2, a3, v6);
}

uint64_t sub_1BD9E70EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1BD9E7178();

  return MEMORY[0x1EEDDB740](a1, a2, a3, v6);
}

void sub_1BD9E7150()
{
  sub_1BD9E7178();
  sub_1BE0500A4();
  __break(1u);
}

unint64_t sub_1BD9E7178()
{
  result = qword_1EBD5B740;
  if (!qword_1EBD5B740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD5B740);
  }

  return result;
}

id sub_1BD9E71CC(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a3)
  {
    v6 = sub_1BE052724();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(PKAddressEditorViewController) initWithContact:a2 requiredKeys:v6 highlightedKeys:0 errors:0 style:1];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5B748);
  sub_1BE050154();
  [v7 setDelegate_];

  [v7 setCountryIsEditable_];
  v8 = [objc_allocWithZone(MEMORY[0x1E69DCCD8]) initWithRootViewController_];

  return v8;
}

void sub_1BD9E72CC()
{
  swift_checkMetadataState();
  if (v0 <= 0x3F)
  {
    sub_1BE0534B4();
    if (v1 <= 0x3F)
    {
      swift_checkMetadataState();
      if (v2 <= 0x3F)
      {
        sub_1BD9E7BCC(319, &qword_1EBD3D040, MEMORY[0x1E69815C0], MEMORY[0x1E69E6720]);
        if (v3 <= 0x3F)
        {
          type metadata accessor for AuthenticatorModel();
          if (v4 <= 0x3F)
          {
            sub_1BD9E7B68();
            if (v5 <= 0x3F)
            {
              sub_1BD1030A8();
              if (v6 <= 0x3F)
              {
                sub_1BD259880();
                if (v7 <= 0x3F)
                {
                  sub_1BD0EDFE4();
                  if (v8 <= 0x3F)
                  {
                    sub_1BD9E7BCC(319, &qword_1EBD496E0, MEMORY[0x1E69E6370], MEMORY[0x1E6981790]);
                    if (v9 <= 0x3F)
                    {
                      sub_1BD9E7BCC(319, &qword_1EBD59660, MEMORY[0x1E69E6370], MEMORY[0x1E697DCC0]);
                      if (v10 <= 0x3F)
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
}

uint64_t sub_1BD9E74B8(unsigned __int8 *a1, unsigned int a2, void *a3)
{
  v4 = *(a3[2] - 8);
  v5 = *(v4 + 84);
  v6 = *(a3[3] - 8);
  v7 = *(v6 + 84);
  if (v7)
  {
    v8 = v7 - 1;
  }

  else
  {
    v8 = 0;
  }

  if (v8 <= v5)
  {
    v9 = *(v4 + 84);
  }

  else
  {
    v9 = v8;
  }

  v10 = a3[4];
  v11 = *(v10 - 8);
  v12 = *(v11 + 84);
  v13 = *(v6 + 80);
  v14 = *(v11 + 80);
  if (v12 <= v9)
  {
    v15 = v9;
  }

  else
  {
    v15 = *(v11 + 84);
  }

  if (v15 <= 0x7FFFFFFF)
  {
    v15 = 0x7FFFFFFF;
  }

  if (v7)
  {
    v16 = *(*(a3[3] - 8) + 64);
  }

  else
  {
    v16 = *(*(a3[3] - 8) + 64) + 1;
  }

  if (!a2)
  {
    return 0;
  }

  v17 = *(*(a3[2] - 8) + 64) + v13;
  v18 = *(*(v10 - 8) + 64) + 23;
  if (v15 < a2)
  {
    v19 = ((((((((((((((v18 + ((v16 + v14 + (v17 & ~v13)) & ~v14)) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 49) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 9;
    v20 = (a2 - v15 + 255) >> 8;
    if (v19 <= 3)
    {
      v21 = v20 + 1;
    }

    else
    {
      v21 = 2;
    }

    if (v21 >= 0x10000)
    {
      v22 = 4;
    }

    else
    {
      v22 = 2;
    }

    if (v21 < 0x100)
    {
      v22 = 1;
    }

    if (v21 >= 2)
    {
      v23 = v22;
    }

    else
    {
      v23 = 0;
    }

    if (v23 > 1)
    {
      if (v23 == 2)
      {
        v24 = *&a1[v19];
        if (*&a1[v19])
        {
          goto LABEL_31;
        }
      }

      else
      {
        v24 = *&a1[v19];
        if (v24)
        {
          goto LABEL_31;
        }
      }
    }

    else if (v23)
    {
      v24 = a1[v19];
      if (a1[v19])
      {
LABEL_31:
        v25 = (v24 - 1) << (8 * v19);
        if (v19 <= 3)
        {
          v26 = *a1;
        }

        else
        {
          v25 = 0;
          v26 = *a1;
        }

        return v15 + (v26 | v25) + 1;
      }
    }
  }

  if (v5 == v15)
  {
    v27 = *(v4 + 48);
    v28 = *(v4 + 84);
    v29 = a3[2];

    return v27(a1, v28, v29);
  }

  v31 = &a1[v17] & ~v13;
  if (v8 == v15)
  {
    if (v7 >= 2)
    {
      v32 = (*(v6 + 48))(v31);
      if (v32 >= 2)
      {
        return v32 - 1;
      }

      else
      {
        return 0;
      }
    }

    return 0;
  }

  a1 = ((v31 + v16 + v14) & ~v14);
  if (v12 == v15)
  {
    v27 = *(v11 + 48);
    v28 = *(v11 + 84);
    v29 = a3[4];

    return v27(a1, v28, v29);
  }

  v33 = *(&a1[v18] & 0xFFFFFFFFFFFFFFF8);
  if (v33 >= 0xFFFFFFFF)
  {
    LODWORD(v33) = -1;
  }

  return (v33 + 1);
}

void sub_1BD9E77D8(_BYTE *a1, unsigned int a2, unsigned int a3, void *a4)
{
  v6 = 0;
  v7 = *(a4[2] - 8);
  v8 = *(v7 + 84);
  v9 = *(a4[3] - 8);
  v10 = *(v9 + 84);
  if (v10)
  {
    v11 = v10 - 1;
  }

  else
  {
    v11 = 0;
  }

  if (v11 <= v8)
  {
    v12 = *(v7 + 84);
  }

  else
  {
    v12 = v11;
  }

  v13 = a4[4];
  v14 = *(v13 - 8);
  v15 = *(v14 + 84);
  v16 = *(*(a4[2] - 8) + 64);
  v17 = *(v9 + 80);
  v18 = *(v14 + 80);
  if (v15 <= v12)
  {
    v19 = v12;
  }

  else
  {
    v19 = *(v14 + 84);
  }

  if (v19 <= 0x7FFFFFFF)
  {
    v19 = 0x7FFFFFFF;
  }

  if (v10)
  {
    v20 = *(*(a4[3] - 8) + 64);
  }

  else
  {
    v20 = *(*(a4[3] - 8) + 64) + 1;
  }

  v21 = *(*(v13 - 8) + 64) + 23;
  v22 = ((((((((((((((v21 + ((v20 + v18 + ((v16 + v17) & ~v17)) & ~v18)) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 49) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 9;
  if (v19 < a3)
  {
    v23 = (a3 - v19 + 255) >> 8;
    if (v22 <= 3)
    {
      v24 = v23 + 1;
    }

    else
    {
      v24 = 2;
    }

    if (v24 >= 0x10000)
    {
      v6 = 4;
    }

    else
    {
      v6 = 2;
    }

    if (v24 < 0x100)
    {
      v6 = 1;
    }

    if (v24 < 2)
    {
      v6 = 0;
    }
  }

  if (v19 >= a2)
  {
    if (v6 > 1)
    {
      if (v6 != 2)
      {
        *&a1[v22] = 0;
        if (!a2)
        {
          return;
        }

LABEL_44:
        if (v8 == v19)
        {
          v27 = *(v7 + 56);
          v28 = a1;
        }

        else
        {
          v29 = &a1[v16 + v17] & ~v17;
          if (v11 == v19)
          {
            v30 = *(v9 + 56);
            v31 = a2 + 1;

            v30(v29, v31, v10);
            return;
          }

          v28 = ((v29 + v20 + v18) & ~v18);
          if (v15 != v19)
          {
            if ((a2 & 0x80000000) != 0)
            {
              v32 = a2 & 0x7FFFFFFF;
            }

            else
            {
              v32 = a2 - 1;
            }

            *(&v28[v21] & 0xFFFFFFFFFFFFFFF8) = v32;
            return;
          }

          v27 = *(v14 + 56);
        }

        v27(v28);
        return;
      }

      *&a1[v22] = 0;
    }

    else if (v6)
    {
      a1[v22] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_44;
    }

    if (!a2)
    {
      return;
    }

    goto LABEL_44;
  }

  v25 = ~v19 + a2;
  bzero(a1, v22);
  if (v22 <= 3)
  {
    v26 = (v25 >> 8) + 1;
  }

  else
  {
    v26 = 1;
  }

  if (v22 <= 3)
  {
    *a1 = v25;
    if (v6 > 1)
    {
LABEL_32:
      if (v6 == 2)
      {
        *&a1[v22] = v26;
      }

      else
      {
        *&a1[v22] = v26;
      }

      return;
    }
  }

  else
  {
    *a1 = v25;
    if (v6 > 1)
    {
      goto LABEL_32;
    }
  }

  if (v6)
  {
    a1[v22] = v26;
  }
}

unint64_t sub_1BD9E7B68()
{
  result = qword_1EBD5B750;
  if (!qword_1EBD5B750)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EBD5B750);
  }

  return result;
}

void sub_1BD9E7BCC(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_1BD9E7C68@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X6>, char a8@<W7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, __int128 a15, uint64_t a16)
{
  v45 = a12;
  v46 = a13;
  v47 = a14;
  v48 = a15;
  v49 = a16;
  v19 = type metadata accessor for PaymentRequestView();
  v20 = (a9 + v19[26]);
  sub_1BD250AA8();
  sub_1BD9EBD2C(&qword_1EBD35E40, sub_1BD250AA8);
  *v20 = sub_1BE04EEC4();
  v20[1] = v21;
  v22 = (a9 + v19[27]);
  sub_1BE04CDA4();
  sub_1BD9EBD2C(&qword_1EBD369D0, MEMORY[0x1E69BCB10]);
  *v22 = sub_1BE04EEC4();
  v22[1] = v23;
  v24 = a9 + v19[28];
  LOBYTE(v44[0]) = 0;
  sub_1BE051694();
  v25 = v46;
  *v24 = v45;
  *(v24 + 8) = v25;
  v26 = a9 + v19[29];
  *v26 = swift_getKeyPath();
  *(v26 + 8) = 0;
  v27 = *(a12 - 8);
  v39 = a1;
  (*(v27 + 16))(a9, a1, a12);
  v28 = v19[17];
  v29 = sub_1BE0534B4();
  v30 = *(v29 - 8);
  (*(v30 + 16))(a9 + v28, a2, v29);
  v31 = *(a14 - 8);
  (*(v31 + 16))(a9 + v19[18], a3, a14);
  *(a9 + v19[19]) = a4;
  *(a9 + v19[20]) = a5;
  *(a9 + v19[21]) = a6;
  sub_1BD0EE8CC(a7, a9 + v19[22]);
  *(a9 + v19[23]) = a8;
  v32 = (a9 + v19[25]);
  *v32 = a10;
  v32[1] = a11;
  sub_1BD0EE8CC(a7, v44);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38998);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD51FF0);
  if (swift_dynamicCast())
  {
    sub_1BD0EF554(v42, &v45);
    v33 = v48;
    __swift_project_boxed_opaque_existential_1(&v45, v48);
    (*(*(&v33 + 1) + 56))(v44, v33, *(&v33 + 1));
    __swift_destroy_boxed_opaque_existential_0(a7);
    (*(v31 + 8))(a3, a14);
    (*(v30 + 8))(a2, v29);
    (*(v27 + 8))(v39, a12);
    *(a9 + v19[24]) = v44[0];
    return __swift_destroy_boxed_opaque_existential_0(&v45);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_0(a7);
    (*(v31 + 8))(a3, a14);
    (*(v30 + 8))(a2, v29);
    (*(v27 + 8))(v39, a12);
    v43 = 0;
    memset(v42, 0, sizeof(v42));
    result = sub_1BD0DE53C(v42, &qword_1EBD389A0);
    *(a9 + v19[24]) = 2;
  }

  return result;
}

uint64_t sub_1BD9E80CC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1BE04EFA4();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1BD9E8124@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v71 = a2;
  v5 = sub_1BE04FF64();
  v69 = *(v5 - 8);
  v70 = v5;
  MEMORY[0x1EEE9AC00](v5, v6);
  v68 = &v50 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = *(a1 - 8);
  v67 = *(v65 + 64);
  MEMORY[0x1EEE9AC00](v8, v9);
  v66 = &v50 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD55600);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD5B758);
  v72 = *(a1 + 16);
  v64 = *(a1 + 32);
  v12 = sub_1BE04EBD4();
  v13 = *(a1 + 48);
  v61 = *(a1 + 40);
  v14 = v61;
  v62 = v13;
  v63 = *(a1 + 56);
  v82 = v63;
  v83 = MEMORY[0x1E697E5D8];
  v60 = MEMORY[0x1E697E858];
  WitnessTable = swift_getWitnessTable();
  v77 = v72;
  v78 = v12;
  v79 = v14;
  v80 = v13;
  v81 = WitnessTable;
  type metadata accessor for PaymentSheetContentContainer();
  swift_getWitnessTable();
  type metadata accessor for AuthorizationSheet();
  sub_1BE04EBD4();
  sub_1BE04EBD4();
  swift_getTupleTypeMetadata2();
  sub_1BE051E34();
  swift_getWitnessTable();
  v16 = sub_1BE051874();
  v17 = sub_1BD0DE4F4(&qword_1EBD36950, &qword_1EBD55600);
  v18 = swift_getWitnessTable();
  *&v77 = v11;
  *(&v77 + 1) = v16;
  v78 = v17;
  v79 = v18;
  sub_1BE04EE14();
  v19 = sub_1BE04EBD4();
  v75 = swift_getWitnessTable();
  v76 = MEMORY[0x1E6980A30];
  v55 = v19;
  v54 = swift_getWitnessTable();
  v20 = type metadata accessor for PaymentRequestViewContainer();
  v58 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20, v21);
  v23 = (&v50 - v22);
  v51 = swift_getWitnessTable();
  *&v77 = v20;
  *(&v77 + 1) = v51;
  v56 = MEMORY[0x1E697D248];
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v57 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2, v24);
  v26 = &v50 - v25;
  sub_1BE0500D4();
  v27 = sub_1BE04EBD4();
  v59 = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v27, v28);
  v50 = &v50 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = MEMORY[0x1EEE9AC00](v30, v31);
  v53 = &v50 - v33;
  v34 = a1;
  v35 = v65;
  v36 = v66;
  (*(v65 + 16))(v66, v3, v34, v32);
  v37 = (*(v35 + 80) + 64) & ~*(v35 + 80);
  v38 = swift_allocObject();
  *&v39 = v64;
  *(&v39 + 1) = v61;
  *(v38 + 32) = v39;
  *(v38 + 16) = v72;
  v40 = v63;
  *(v38 + 48) = v62;
  *(v38 + 56) = v40;
  (*(v35 + 32))(v38 + v37, v36, v34);
  sub_1BE048964();
  sub_1BD9EA9D8(sub_1BD9EAB0C, v38, v23);
  v41 = v68;
  sub_1BE04FF54();
  v42 = v51;
  sub_1BE050D14();
  (*(v69 + 8))(v41, v70);
  (*(v58 + 8))(v23, v20);
  sub_1BE052434();
  *&v77 = v20;
  *(&v77 + 1) = v42;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v44 = v50;
  v45 = OpaqueTypeMetadata2;
  sub_1BE050DE4();

  (*(v57 + 8))(v26, v45);
  v46 = sub_1BD9EBD2C(&qword_1EBD52210, MEMORY[0x1E697CBE8]);
  v73 = OpaqueTypeConformance2;
  v74 = v46;
  swift_getWitnessTable();
  v47 = v53;
  sub_1BD147308(v44);
  v48 = *(v59 + 8);
  v48(v44, v27);
  sub_1BD147308(v47);
  return (v48)(v47, v27);
}

uint64_t sub_1BD9E8934@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v62 = a1;
  v68 = a8;
  v78 = a2;
  v79 = a3;
  v56 = a2;
  v80 = a4;
  v81 = a5;
  v59 = a4;
  v82 = a6;
  v83 = a7;
  v58 = a7;
  v63 = type metadata accessor for PaymentRequestView();
  v65 = *(v63 - 8);
  v66 = *(v65 + 64);
  MEMORY[0x1EEE9AC00](v63, v13);
  v64 = &v47 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD55600);
  v53 = v15;
  v67 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15, v16);
  v61 = &v47 - v17;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD5B758);
  v18 = sub_1BE04EBD4();
  v76 = a7;
  v77 = MEMORY[0x1E697E5D8];
  WitnessTable = swift_getWitnessTable();
  v78 = a2;
  v79 = a3;
  v48 = a3;
  v80 = v18;
  v81 = a5;
  v20 = a5;
  v47 = a5;
  v82 = a6;
  v83 = WitnessTable;
  v21 = a6;
  v49 = a6;
  type metadata accessor for PaymentSheetContentContainer();
  swift_getWitnessTable();
  type metadata accessor for AuthorizationSheet();
  sub_1BE04EBD4();
  sub_1BE04EBD4();
  swift_getTupleTypeMetadata2();
  sub_1BE051E34();
  swift_getWitnessTable();
  v22 = sub_1BE051874();
  v51 = v22;
  v60 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22, v23);
  v50 = &v47 - v24;
  v25 = sub_1BD0DE4F4(&qword_1EBD36950, &qword_1EBD55600);
  v54 = v25;
  v52 = swift_getWitnessTable();
  v78 = v15;
  v79 = v22;
  v80 = v25;
  v81 = v52;
  v55 = sub_1BE04EE14();
  v57 = *(v55 - 8);
  MEMORY[0x1EEE9AC00](v55, v26);
  v28 = &v47 - v27;
  sub_1BE051CC4();
  v29 = v56;
  v69 = v56;
  v70 = a3;
  v30 = v59;
  v71 = v59;
  v72 = v20;
  v31 = v58;
  v73 = v21;
  v74 = v58;
  v32 = v62;
  v75 = v62;
  sub_1BE051864();
  v33 = v63;
  v34 = v32;
  sub_1BD9EB594(v63);
  sub_1BE048964();
  v35 = v61;
  sub_1BE04CD04();

  v36 = v65;
  v37 = v64;
  (*(v65 + 16))(v64, v34, v33);
  v38 = (*(v36 + 80) + 64) & ~*(v36 + 80);
  v39 = swift_allocObject();
  v40 = v48;
  *(v39 + 2) = v29;
  *(v39 + 3) = v40;
  v41 = v47;
  *(v39 + 4) = v30;
  *(v39 + 5) = v41;
  *(v39 + 6) = v49;
  *(v39 + 7) = v31;
  (*(v36 + 32))(&v39[v38], v37, v33);
  v42 = v51;
  v43 = v53;
  v44 = v50;
  sub_1BE051154();

  (*(v67 + 8))(v35, v43);
  (*(v60 + 8))(v44, v42);
  sub_1BE04EC54();
  sub_1BE0501D4();
  v45 = v55;
  swift_getWitnessTable();
  sub_1BE050B64();
  return (*(v57 + 8))(v28, v45);
}

uint64_t sub_1BD9E8FB0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v155 = a8;
  v15 = sub_1BE04EBD4();
  v177 = a7;
  v178 = MEMORY[0x1E697E5D8];
  v171 = a2;
  v172 = a3;
  v173 = v15;
  v174 = a5;
  v175 = a6;
  WitnessTable = swift_getWitnessTable();
  v16 = type metadata accessor for PaymentSheetContentContainer();
  MEMORY[0x1EEE9AC00](v16, v17);
  v145 = (&v129 - v18);
  v19 = swift_getWitnessTable();
  v144 = v16;
  v143 = v19;
  v20 = type metadata accessor for AuthorizationSheet();
  v147 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20, v20);
  v146 = (&v129 - v21);
  v148 = v22;
  v23 = sub_1BE04EBD4();
  v149 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23, v23);
  v160 = &v129 - v24;
  v150 = v25;
  v154 = sub_1BE04EBD4();
  v151 = *(v154 - 8);
  MEMORY[0x1EEE9AC00](v154, v26);
  v153 = &v129 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28, v29);
  v152 = &v129 - v30;
  v164 = a2;
  v171 = a2;
  v172 = a3;
  v166 = a6;
  v167 = a4;
  v173 = a4;
  v174 = a5;
  v165 = a5;
  v175 = a6;
  WitnessTable = a7;
  v163 = a7;
  v31 = type metadata accessor for PaymentRequestView();
  v157 = *(v31 - 8);
  v162 = *(v157 + 64);
  MEMORY[0x1EEE9AC00](v31, v32);
  v156 = &v129 - v33;
  v137 = sub_1BE04F454();
  v134 = *(v137 - 8);
  MEMORY[0x1EEE9AC00](v137, v34);
  v131 = &v129 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v136 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5B760);
  v135 = *(v136 - 8);
  MEMORY[0x1EEE9AC00](v136, v36);
  v132 = &v129 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v38, v39);
  v133 = &v129 - v40;
  v139 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5B768);
  MEMORY[0x1EEE9AC00](v139, v41);
  v43 = &v129 - v42;
  v140 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5B770);
  v44 = *(v140 - 8);
  MEMORY[0x1EEE9AC00](v140, v45);
  v138 = &v129 - v46;
  v47 = sub_1BE04C884();
  v48 = *(v47 - 8);
  MEMORY[0x1EEE9AC00](v47, v49);
  v51 = &v129 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v52, v53);
  v55 = &v129 - v54;
  v141 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5B758);
  MEMORY[0x1EEE9AC00](v141, v56);
  v142 = &v129 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v58, v59);
  v161 = &v129 - v60;
  v61 = *(v31 + 112);
  v158 = a1;
  v62 = (a1 + v61);
  v63 = *v62;
  v64 = *(v62 + 1);
  LOBYTE(v171) = v63;
  v172 = v64;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54350);
  sub_1BE0516A4();
  v159 = a3;
  if (LOBYTE(v170[0]) == 1)
  {
    sub_1BE04C794();
    (*(v48 + 104))(v51, *MEMORY[0x1E69BC9B0], v47);
    sub_1BD9EBD2C(&qword_1EBD36A18, MEMORY[0x1E69BC9D0]);
    v65 = sub_1BE052334();
    v66 = *(v48 + 8);
    v66(v51, v47);
    v66(v55, v47);
    if ((v65 & 1) == 0)
    {
      sub_1BE051C64();
      sub_1BE051C74();
      v70 = v131;
      sub_1BE04F444();
      v130 = v43;
      v71 = v158;
      sub_1BD9EB594(v31);
      sub_1BE048964();
      sub_1BE04CD14();

      sub_1BE051D94();
      v72 = sub_1BD9EBD2C(&unk_1EBD367A0, MEMORY[0x1E697F260]);
      v73 = v133;
      v74 = v137;
      sub_1BE04E324();

      (*(v134 + 8))(v70, v74);
      v75 = v135;
      v76 = v136;
      (*(v135 + 16))(v132, v73, v136);
      v171 = v74;
      v172 = v72;
      swift_getOpaqueTypeConformance2();
      v77 = sub_1BE04E644();
      (*(v75 + 8))(v73, v76);
      v78 = v130;
      *&v130[*(v139 + 36)] = v77;
      v79 = v157;
      v80 = v156;
      (*(v157 + 16))(v156, v71, v31);
      v81 = (*(v79 + 80) + 64) & ~*(v79 + 80);
      v82 = swift_allocObject();
      v67 = v159;
      *(v82 + 2) = v164;
      *(v82 + 3) = v67;
      v83 = v165;
      v84 = v166;
      *(v82 + 4) = v167;
      *(v82 + 5) = v83;
      v85 = v163;
      *(v82 + 6) = v84;
      *(v82 + 7) = v85;
      (*(v79 + 32))(&v82[v81], v80, v31);
      sub_1BD9EB7F8();
      v86 = v138;
      sub_1BE0509D4();

      sub_1BD0DE53C(v78, &qword_1EBD5B768);
      v87 = v140;
      (*(v44 + 32))(v161, v86, v140);
      v69 = v87;
      v68 = 0;
      goto LABEL_7;
    }

    v67 = v159;
    v68 = 1;
  }

  else
  {
    v67 = a3;
    v68 = 1;
  }

  v69 = v140;
LABEL_7:
  (*(v44 + 56))(v161, v68, 1, v69);
  v88 = v31;
  v89 = v158;
  sub_1BE048964();
  v90 = v145;
  sub_1BD9EA15C(v88, v145);
  v91 = *(v89 + v88[23]);
  v92 = sub_1BD9EA5F4(v88);
  v94 = v93;
  v95 = v88[25];
  LOBYTE(v171) = *(v89 + v88[24]);
  v96 = *(v89 + v95);
  v97 = *(v89 + v95 + 8);
  sub_1BE048964();
  v98 = v144;
  v99 = sub_1BD9531F8();
  v128 = v98;
  v100 = v146;
  sub_1BD95326C(v99, v101, v90, v91, &v171, v96, v97, v146, v92, v94, v128);
  v102 = v157;
  v145 = *(v157 + 16);
  v103 = v156;
  (v145)(v156, v89, v88);
  v104 = (*(v102 + 80) + 64) & ~*(v102 + 80);
  v105 = swift_allocObject();
  v105[2] = v164;
  v105[3] = v67;
  v106 = v165;
  v107 = v166;
  v105[4] = v167;
  v105[5] = v106;
  v108 = v163;
  v105[6] = v107;
  v105[7] = v108;
  v157 = *(v102 + 32);
  (v157)(v105 + v104, v103, v88);
  v109 = v148;
  v144 = swift_getWitnessTable();
  sub_1BE051054();

  (*(v147 + 8))(v100, v109);
  (v145)(v103, v89, v88);
  v110 = swift_allocObject();
  v111 = v159;
  v110[2] = v164;
  v110[3] = v111;
  v112 = v165;
  v113 = v166;
  v110[4] = v167;
  v110[5] = v112;
  v114 = v163;
  v110[6] = v113;
  v110[7] = v114;
  (v157)(v110 + v104, v103, v88);
  v115 = MEMORY[0x1E69805D0];
  v170[4] = v144;
  v170[5] = MEMORY[0x1E69805D0];
  v116 = v150;
  v117 = swift_getWitnessTable();
  v118 = v153;
  v119 = v160;
  sub_1BE050914();

  (*(v149 + 8))(v119, v116);
  v170[2] = v117;
  v170[3] = v115;
  v120 = v154;
  v121 = swift_getWitnessTable();
  v122 = v152;
  sub_1BD147308(v118);
  v123 = v151;
  v124 = *(v151 + 8);
  v124(v118, v120);
  v125 = v161;
  v126 = v142;
  sub_1BD0CB964(v161, v142);
  v171 = v126;
  (*(v123 + 16))(v118, v122, v120);
  v172 = v118;
  v170[0] = v141;
  v170[1] = v120;
  v168 = sub_1BD9EB738();
  v169 = v121;
  sub_1BD13A4C4(&v171, 2uLL, v170);
  v124(v122, v120);
  sub_1BD0CB9D4(v125);
  v124(v118, v120);
  return sub_1BD0CB9D4(v126);
}

uint64_t sub_1BD9E9F68@<X0>(uint64_t *a1@<X8>)
{
  sub_1BE0513F4();
  v2 = sub_1BE051454();

  *a1 = v2;
  return result;
}

uint64_t sub_1BD9E9FB4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1BE051294();
  *a1 = result;
  return result;
}

uint64_t sub_1BD9E9FDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v14 = sub_1BE04C974();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14, v16);
  v18 = v22 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22[0] = a2;
  v22[1] = a3;
  v22[2] = a4;
  v22[3] = a5;
  v22[4] = a6;
  v22[5] = a7;
  v19 = type metadata accessor for PaymentRequestView();
  result = sub_1BE04CAE4();
  if ((result & 1) == 0)
  {
    __swift_project_boxed_opaque_existential_1((a1 + *(v19 + 88)), *(a1 + *(v19 + 88) + 24));
    (*(v15 + 104))(v18, *MEMORY[0x1E69BCA58], v14);
    sub_1BE04CC64();
    v21 = (*(v15 + 8))(v18, v14);
    return (*(a1 + *(v19 + 100)))(v21);
  }

  return result;
}

uint64_t sub_1BD9EA15C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v58 = a2;
  v53 = *(a1 + 24);
  v5 = v53;
  v6 = sub_1BE0534B4();
  v56 = *(v6 - 8);
  v57 = v6;
  MEMORY[0x1EEE9AC00](v6, v7);
  v55 = &v42 - v8;
  v9 = *(a1 + 16);
  v47 = *(*&v9 - 8);
  MEMORY[0x1EEE9AC00](v10, v11);
  v52 = &v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = *(a1 + 32);
  v13 = sub_1BE04EBD4();
  v14 = *(a1 + 40);
  v50 = *(a1 + 48);
  v15 = v50;
  v51 = v14;
  v65 = *(a1 + 56);
  v66 = MEMORY[0x1E697E5D8];
  WitnessTable = swift_getWitnessTable();
  v59 = v9;
  v60 = v5;
  v16 = v9;
  v61 = v13;
  v62 = v14;
  v43 = v13;
  v63 = v15;
  v64 = WitnessTable;
  v44 = type metadata accessor for PaymentSheetContentContainer();
  v54 = *(v44 - 8);
  MEMORY[0x1EEE9AC00](v44, v17);
  v45 = &v42 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19, v20);
  v48 = &v42 - v21;
  v22 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v23, v24);
  v26 = &v42 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27, v28);
  v30 = &v42 - v29;
  sub_1BE0501F4();
  sub_1BD9EA5F4(a1);
  sub_1BE051014();
  v31 = v52;
  v32 = v16;
  (*(v47 + 16))(v52, v3, COERCE_DOUBLE(*&v16));
  v33 = v55;
  (*(v56 + 16))(v55, v3 + *(a1 + 68), v57);
  v34 = v43;
  (*(v22 + 16))(v26, v30, v43);
  v35 = *(v3 + *(a1 + 76));
  LOBYTE(v3) = *(v3 + *(a1 + 80));
  sub_1BE048964();
  v36 = v45;
  v37 = sub_1BD56188C(v31, v33, v26, v35, v3, v32, v53, v34, v45);
  (*(v22 + 8))(v30, v34, v37);
  v38 = v44;
  swift_getWitnessTable();
  v39 = v48;
  sub_1BD147308(v36);
  v40 = *(v54 + 8);
  v40(v36, v38);
  sub_1BD147308(v39);
  return (v40)(v39, v38);
}

double sub_1BD9EA5F4(uint64_t a1)
{
  v3 = sub_1BE04F3D4();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = v1 + *(a1 + 116);
  v9 = *v8;
  if (*(v8 + 8) != 1)
  {
    sub_1BE048964();
    sub_1BE052C44();
    v10 = sub_1BE050174();
    sub_1BE04CF84();

    sub_1BE04F3C4();
    swift_getAtKeyPath();
    sub_1BD0D4604(v9, 0);
    (*(v4 + 8))(v7, v3);
  }

  _UISolariumFeatureFlagEnabled();
  return 0.0;
}

void sub_1BD9EA760(uint64_t a1)
{
  v2 = type metadata accessor for PaymentRequestView();
  v3 = *(*(a1 + *(v2 + 84)) + qword_1EBDAADA8 + 32);
  v4 = *(a1 + *(v2 + 104));
  if (v4)
  {
    v5 = v4;
    v6 = v3;
    sub_1BD6BA48C(v6);
  }

  else
  {
    sub_1BD250AA8();
    sub_1BD9EBD2C(&qword_1EBD35E40, sub_1BD250AA8);
    v7 = v3;
    sub_1BE04EEB4();
    __break(1u);
  }
}

void sub_1BD9EA858(uint64_t a1)
{
  v1 = *(*(a1 + *(type metadata accessor for PaymentRequestView() + 84)) + qword_1EBDAADA8 + 32);
  sub_1BD6BAE0C(v1);
}

uint64_t sub_1BD9EA8C4()
{
  sub_1BE051D74();
  sub_1BE04E7D4();
}

uint64_t sub_1BD9EA944()
{
  type metadata accessor for PaymentRequestView();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54350);
  return sub_1BE0516B4();
}

uint64_t sub_1BD9EA9D8@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  *a3 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3D540);
  swift_storeEnumTagMultiPayload();
  v6 = type metadata accessor for PaymentRequestViewContainer();
  v7 = (a3 + *(v6 + 36));
  sub_1BD9EBD2C(&qword_1EBD36450, type metadata accessor for AuthenticatorModel);
  result = sub_1BE04E954();
  *v7 = result;
  v7[1] = v9;
  v10 = (a3 + *(v6 + 40));
  *v10 = a1;
  v10[1] = a2;
  return result;
}

uint64_t sub_1BD9EAB0C@<X0>(uint64_t a1@<X8>)
{
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[4];
  v6 = v1[5];
  v7 = v1[6];
  v8 = v1[7];
  v9 = *(type metadata accessor for PaymentRequestView() - 8);
  v10 = v1 + ((*(v9 + 80) + 64) & ~*(v9 + 80));

  return sub_1BD9E8934(v10, v3, v4, v5, v6, v7, v8, a1);
}

uint64_t sub_1BD9EABE4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v78 = a2;
  v72 = a1;
  v3 = *(a1 + 16);
  v4 = sub_1BE04EBD4();
  v65 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v5);
  v64 = &v62 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v63 = &v62 - v9;
  v68 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v10, v11);
  v66 = &v62 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13, v14);
  v71 = &v62 - v15;
  v16 = sub_1BE04F9B4();
  v70 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16, v17);
  v69 = &v62 - v18;
  v19 = sub_1BE04C884();
  v20 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19, v21);
  v23 = &v62 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24, v25);
  v27 = &v62 - v26;
  v77 = v16;
  v73 = v4;
  v76 = sub_1BE04F9B4();
  v75 = *(v76 - 8);
  MEMORY[0x1EEE9AC00](v76, v28);
  v74 = &v62 - v29;
  v67 = v2;
  sub_1BD70A520(v27);
  v30 = *(v20 + 104);
  v30(v23, *MEMORY[0x1E69BC9B0], v19);
  sub_1BD9EBD2C(&qword_1EBD36A10, MEMORY[0x1E69BC9D0]);
  sub_1BE0526E4();
  sub_1BE0526E4();
  v31 = *(v20 + 8);
  v31(v23, v19);
  v32 = (v31)(v27, v19);
  if (v98 == v97)
  {
    v33 = *(v72 + 24);
    v34 = v69;
    v35 = MEMORY[0x1E6981E60];
    v36 = MEMORY[0x1E6980A30];
    sub_1BD13A700(v32, MEMORY[0x1E6981E70]);
    v81 = v35;
    v82 = v33;
    v37 = v77;
    swift_getWitnessTable();
    v79 = v33;
    v80 = v36;
    swift_getWitnessTable();
    v38 = v74;
    sub_1BD13A700(v34, v37);
    (*(v70 + 8))(v34, v37);
    v39 = v35;
  }

  else
  {
    v62 = v3;
    v40 = v67;
    sub_1BD70A520(v27);
    v30(v23, *MEMORY[0x1E69BC9B8], v19);
    sub_1BE0526E4();
    sub_1BE0526E4();
    v31(v23, v19);
    v31(v27, v19);
    if (v98 == v97 || (sub_1BE04CCA4() & 1) != 0)
    {
      v41 = v72;
      v42 = v66;
      (*(v40 + *(v72 + 40)))();
      v33 = *(v41 + 24);
      v43 = v71;
      v44 = v62;
      sub_1BD147308(v42);
      v72 = *(v68 + 8);
      (v72)(v42, v44);
      sub_1BD147308(v43);
      v45 = v69;
      v46 = MEMORY[0x1E6981E60];
      sub_1BD13A7F8(v42, MEMORY[0x1E6981E70], v44);
      v85 = v46;
      v86 = v33;
      v47 = v77;
      swift_getWitnessTable();
      v83 = v33;
      v36 = MEMORY[0x1E6980A30];
      v84 = MEMORY[0x1E6980A30];
      swift_getWitnessTable();
      v38 = v74;
      sub_1BD13A700(v45, v47);
      (*(v70 + 8))(v45, v47);
      v48 = v42;
      v49 = v72;
      (v72)(v48, v44);
      v49(v71, v44);
      v39 = MEMORY[0x1E6981E60];
    }

    else
    {
      v50 = v72;
      v51 = v71;
      (*(v40 + *(v72 + 40)))();
      sub_1BE04EC64();
      sub_1BE0501D4();
      v33 = *(v50 + 24);
      v52 = v64;
      v53 = v62;
      sub_1BE050B64();
      (*(v68 + 8))(v51, v53);
      v95 = v33;
      v36 = MEMORY[0x1E6980A30];
      v96 = MEMORY[0x1E6980A30];
      v54 = v73;
      swift_getWitnessTable();
      v55 = v63;
      sub_1BD147308(v52);
      v56 = *(v65 + 8);
      v56(v52, v54);
      sub_1BD147308(v55);
      v93 = MEMORY[0x1E6981E60];
      v94 = v33;
      v57 = v77;
      swift_getWitnessTable();
      v38 = v74;
      v39 = MEMORY[0x1E6981E60];
      sub_1BD13A7F8(v52, v57, v54);
      v56(v52, v54);
      v56(v55, v54);
    }
  }

  v91 = v39;
  v92 = v33;
  WitnessTable = swift_getWitnessTable();
  v89 = v33;
  v90 = v36;
  v59 = swift_getWitnessTable();
  v87 = WitnessTable;
  v88 = v59;
  v60 = v76;
  swift_getWitnessTable();
  sub_1BD147308(v38);
  return (*(v75 + 8))(v38, v60);
}

uint64_t sub_1BD9EB594(uint64_t a1)
{
  result = *(v1 + *(a1 + 108));
  if (!result)
  {
    sub_1BE04CDA4();
    sub_1BD9EBD2C(&qword_1EBD369D0, MEMORY[0x1E69BCB10]);
    result = sub_1BE04EEB4();
    __break(1u);
  }

  return result;
}

uint64_t sub_1BD9EB618()
{
  type metadata accessor for PaymentRequestView();

  return sub_1BD9EA8C4();
}

unint64_t sub_1BD9EB738()
{
  result = qword_1EBD5B778;
  if (!qword_1EBD5B778)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD5B758);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD5B768);
    sub_1BD9EB7F8();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD5B778);
  }

  return result;
}

unint64_t sub_1BD9EB7F8()
{
  result = qword_1EBD5B780;
  if (!qword_1EBD5B780)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD5B768);
    sub_1BD9EB8B0();
    sub_1BD0DE4F4(&qword_1EBD36720, &qword_1EBD596F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD5B780);
  }

  return result;
}

unint64_t sub_1BD9EB8B0()
{
  result = qword_1EBD5B788;
  if (!qword_1EBD5B788)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD5B790);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD5B788);
  }

  return result;
}

uint64_t objectdestroyTm_120()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v8 = *(v0 + 32);
  v3 = type metadata accessor for PaymentRequestView();
  v4 = v0 + ((*(*(v3 - 1) + 80) + 64) & ~*(*(v3 - 1) + 80));
  (*(*(v2 - 8) + 8))(v4, v2);
  v5 = v3[17];
  v6 = *(v1 - 8);
  if (!(*(v6 + 48))(v4 + v5, 1, v1))
  {
    (*(v6 + 8))(v4 + v5, v1);
  }

  (*(*(v8 - 8) + 8))(v4 + v3[18]);

  __swift_destroy_boxed_opaque_existential_0(v4 + v3[22]);

  sub_1BD0D4604(*(v4 + v3[29]), *(v4 + v3[29] + 8));
  return swift_deallocObject();
}

uint64_t sub_1BD9EBB5C(uint64_t (*a1)(char *, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[4];
  v5 = v1[5];
  v6 = v1[6];
  v7 = v1[7];
  v8 = *(type metadata accessor for PaymentRequestView() - 8);
  v9 = v1 + ((*(v8 + 80) + 64) & ~*(v8 + 80));

  return a1(v9, v2, v3, v4, v5, v6, v7);
}

void sub_1BD9EBC24()
{
  sub_1BD14639C();
  if (v0 <= 0x3F)
  {
    sub_1BD0EDF50();
    if (v1 <= 0x3F)
    {
      sub_1BD1030A8();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_1BD9EBD2C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1BD9EBD74(uint64_t a1, uint64_t a2)
{
  v4 = sub_1BE04BD74();
  v5 = *(v4 - 8);
  v7 = MEMORY[0x1EEE9AC00](v4, v6);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 104))(v9, *MEMORY[0x1E69B8100], v4, v7);
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF80);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_1BE0B69E0;
    *(v10 + 56) = MEMORY[0x1E69E6158];
    *(v10 + 64) = sub_1BD110550();
    *(v10 + 32) = a1;
    *(v10 + 40) = a2;
    sub_1BE048C84();
    v11 = sub_1BE04B714();
  }

  else
  {
    v11 = sub_1BE04B714();
  }

  (*(v5 + 8))(v9, v4);
  return v11;
}

void sub_1BD9EBF5C(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v129 = a1;
  v130 = a2;
  v122 = a3;
  v3 = sub_1BE04F734();
  v117 = *(v3 - 8);
  v118 = v3;
  MEMORY[0x1EEE9AC00](v3, v4);
  v116 = &v107[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD441C8);
  v111 = *(v6 - 8);
  v112 = v6;
  MEMORY[0x1EEE9AC00](v6, v7);
  v110 = &v107[-v8];
  v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD55728);
  MEMORY[0x1EEE9AC00](v109, v9);
  v113 = &v107[-v10];
  v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5B7C8);
  MEMORY[0x1EEE9AC00](v114, v11);
  v115 = &v107[-v12];
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5B7D0);
  v120 = *(v13 - 8);
  v121 = v13;
  MEMORY[0x1EEE9AC00](v13, v14);
  v119 = &v107[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v16, v17);
  v132 = &v107[-v18];
  v19 = sub_1BE050404();
  v125 = *(v19 - 8);
  *&v126 = v19;
  MEMORY[0x1EEE9AC00](v19, v20);
  v124 = &v107[-((v21 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v22 = sub_1BE04F6E4();
  KeyPath = *(v22 - 8);
  v128 = v22;
  MEMORY[0x1EEE9AC00](v22, v23);
  v25 = &v107[-((v24 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v26 = sub_1BE051584();
  v27 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26, v28);
  v30 = &v107[-((v29 + 15) & 0xFFFFFFFFFFFFFFF0)];
  *(&v126 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5B7D8);
  MEMORY[0x1EEE9AC00](*(&v126 + 1), v31);
  v131 = &v107[-((v32 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v33, v34);
  v36 = &v107[-v35];
  MEMORY[0x1EEE9AC00](v37, v38);
  v133 = &v107[-v39];
  v40 = sub_1BE052404();
  v41 = sub_1BE052404();
  v42 = PKUIDynamicImageNamed(v40, v41);

  if (v42)
  {
    sub_1BE051544();
    (*(v27 + 104))(v30, *MEMORY[0x1E6981630], v26);
    v43 = sub_1BE0515E4();

    (*(v27 + 8))(v30, v26);
    sub_1BE051CD4();
    sub_1BE04EE54();
    *&v158[54] = v163;
    *&v158[70] = v164;
    *&v158[86] = v165;
    *&v158[102] = v166;
    *&v158[6] = v160;
    *&v158[22] = v161;
    *&v158[38] = v162;
    *&v146[66] = *&v158[64];
    *&v146[82] = *&v158[80];
    *&v146[98] = *&v158[96];
    *&v146[18] = *&v158[16];
    *&v146[34] = *&v158[32];
    *&v146[50] = *&v158[48];
    v159 = 1;
    v145 = v43;
    *v146 = 1;
    *&v146[112] = *(&v166 + 1);
    *&v146[2] = *v158;
    sub_1BE04F6C4();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3E270);
    sub_1BD223BC4();
    sub_1BE050E34();
    (*(KeyPath + 8))(v25, v128);
    v156[6] = *&v146[80];
    v156[7] = *&v146[96];
    v157 = *&v146[112];
    v156[2] = *&v146[16];
    v156[3] = *&v146[32];
    v156[4] = *&v146[48];
    v156[5] = *&v146[64];
    v156[0] = v145;
    v156[1] = *v146;
    sub_1BD0DE53C(v156, &qword_1EBD3E270);
    sub_1BE04EBA4();
    sub_1BD0DE53C(v36, &qword_1EBD5B7D8);
    *&v145 = sub_1BD9EBD74(v129, v130);
    *(&v145 + 1) = v44;
    sub_1BD0DDEBC();
    v45 = sub_1BE0506C4();
    v128 = v46;
    v129 = v45;
    v48 = v47;
    v130 = v49;
    KeyPath = swift_getKeyPath();
    sub_1BE0502A4();
    v51 = v124;
    v50 = v125;
    v52 = v126;
    (*(v125 + 104))(v124, *MEMORY[0x1E6980EA8], v126);
    *(&v126 + 1) = sub_1BE050434();

    (*(v50 + 8))(v51, v52);
    *&v126 = swift_getKeyPath();
    v123 = v48 & 1;
    LOBYTE(v145) = v48 & 1;
    LODWORD(v125) = sub_1BE04FC94();
    LODWORD(v124) = sub_1BE0501E4();
    sub_1BE04E1F4();
    v54 = v53;
    v56 = v55;
    v58 = v57;
    v60 = v59;
    LOBYTE(v145) = 0;
    v108 = sub_1BE0501F4();
    sub_1BE04E1F4();
    v62 = v61;
    v64 = v63;
    v66 = v65;
    v68 = v67;
    v69 = sub_1BE052404();
    v70 = PKLocalizedTicketingString(v69);

    if (v70)
    {
      v71 = sub_1BE052434();
      v73 = v72;

      *&v145 = v71;
      *(&v145 + 1) = v73;
      MEMORY[0x1EEE9AC00](v74, v75);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD37358);
      sub_1BD0DE4F4(&qword_1EBD4D3F0, &qword_1EBD37358);
      v76 = v110;
      sub_1BE051704();

      v77 = sub_1BE0513C4();
      v78 = swift_getKeyPath();
      v79 = v113;
      (*(v111 + 32))(v113, v76, v112);
      v80 = (v79 + *(v109 + 36));
      *v80 = v78;
      v80[1] = v77;
      v81 = v115;
      v82 = &v115[*(v114 + 36)];
      v83 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3ABF0) + 28);
      v84 = *MEMORY[0x1E697DC10];
      v85 = sub_1BE04E364();
      (*(*(v85 - 8) + 104))(v82 + v83, v84, v85);
      *v82 = swift_getKeyPath();
      sub_1BD84552C(v79, v81);
      v86 = v116;
      sub_1BE04F724();
      sub_1BD9ED2D4();
      sub_1BD9ED470();
      v87 = v132;
      v88 = v118;
      sub_1BE050894();
      (*(v117 + 8))(v86, v88);
      sub_1BD0DE53C(v81, &qword_1EBD5B7C8);
      v89 = v131;
      sub_1BD0DE19C(v133, v131, &qword_1EBD5B7D8);
      v91 = v119;
      v90 = v120;
      v92 = *(v120 + 16);
      v93 = v87;
      v94 = v121;
      v92(v119, v93, v121);
      v95 = v89;
      v96 = v122;
      sub_1BD0DE19C(v95, v122, &qword_1EBD5B7D8);
      v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5B7F0);
      v98 = v96 + *(v97 + 48);
      *&v134 = v129;
      *(&v134 + 1) = v128;
      LOBYTE(v135) = v123;
      *(&v135 + 1) = *v152;
      DWORD1(v135) = *&v152[3];
      *(&v135 + 1) = v130;
      *&v136 = KeyPath;
      BYTE8(v136) = 1;
      *(&v136 + 9) = *v151;
      HIDWORD(v136) = *&v151[3];
      v137 = v126;
      LODWORD(v138) = v125;
      BYTE8(v138) = v124;
      *(&v138 + 9) = v153[0];
      HIDWORD(v138) = *(v153 + 3);
      *&v139 = v54;
      *(&v139 + 1) = v56;
      *&v140 = v58;
      *(&v140 + 1) = v60;
      LOBYTE(v141) = 0;
      *(&v141 + 1) = *v155;
      DWORD1(v141) = *&v155[3];
      LOBYTE(v84) = v108;
      BYTE8(v141) = v108;
      HIDWORD(v141) = *&v154[3];
      *(&v141 + 9) = *v154;
      *&v142 = v62;
      *(&v142 + 1) = v64;
      *&v143 = v66;
      *(&v143 + 1) = v68;
      v144 = 0;
      v99 = v142;
      v100 = v143;
      *(v98 + 160) = 0;
      *(v98 + 128) = v99;
      *(v98 + 144) = v100;
      v101 = v135;
      *v98 = v134;
      *(v98 + 16) = v101;
      v102 = v136;
      v103 = v137;
      v104 = v141;
      *(v98 + 96) = v140;
      *(v98 + 112) = v104;
      v105 = v139;
      *(v98 + 64) = v138;
      *(v98 + 80) = v105;
      *(v98 + 32) = v102;
      *(v98 + 48) = v103;
      v92((v96 + *(v97 + 64)), v91, v94);
      sub_1BD0DE19C(&v134, &v145, &qword_1EBD5B7F8);
      v106 = *(v90 + 8);
      v106(v132, v94);
      sub_1BD0DE53C(v133, &qword_1EBD5B7D8);
      v106(v91, v94);
      *&v145 = v129;
      *(&v145 + 1) = v128;
      v146[0] = v123;
      *&v146[1] = *v152;
      *&v146[4] = *&v152[3];
      *&v146[8] = v130;
      *&v146[16] = KeyPath;
      v146[24] = 1;
      *&v146[25] = *v151;
      *&v146[28] = *&v151[3];
      *&v146[32] = v126;
      *&v146[48] = v125;
      v146[56] = v124;
      *&v146[60] = *(v153 + 3);
      *&v146[57] = v153[0];
      *&v146[64] = v54;
      *&v146[72] = v56;
      *&v146[80] = v58;
      *&v146[88] = v60;
      v146[96] = 0;
      *&v146[97] = *v155;
      *&v146[100] = *&v155[3];
      v146[104] = v84;
      *&v146[105] = *v154;
      *&v146[108] = *&v154[3];
      *&v146[112] = v62;
      v147 = v64;
      v148 = v66;
      v149 = v68;
      v150 = 0;
      sub_1BD0DE53C(&v145, &qword_1EBD5B7F8);
      sub_1BD0DE53C(v131, &qword_1EBD5B7D8);
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_1BD9ECCE4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF70);
  MEMORY[0x1EEE9AC00](v0 - 8, v1);
  v3 = &v7 - v2;
  sub_1BE04AA54();
  v4 = sub_1BE04AA64();
  v5 = *(v4 - 8);
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    __break(1u);
  }

  else
  {
    v6 = sub_1BE04A9C4();
    (*(v5 + 8))(v3, v4);
    PKOpenURL();
  }
}

uint64_t sub_1BD9ECE0C()
{
  v1 = sub_1BE04FF64();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1, v3);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5B7A0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v19 - v8;
  v11 = *v0;
  v10 = v0[1];
  *v9 = sub_1BE04F7B4();
  *(v9 + 1) = 0;
  v9[16] = 1;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5B7A8);
  sub_1BD9EBF5C(v11, v10, &v9[*(v12 + 44)]);
  LOBYTE(v10) = sub_1BE0501D4();
  sub_1BE04E1F4();
  v13 = &v9[*(v6 + 36)];
  *v13 = v10;
  *(v13 + 1) = v14;
  *(v13 + 2) = v15;
  *(v13 + 3) = v16;
  *(v13 + 4) = v17;
  v13[40] = 0;
  sub_1BE04FF44();
  sub_1BD9ED21C();
  sub_1BE050D14();
  (*(v2 + 8))(v5, v1);
  return sub_1BD0CBFFC(v9);
}

uint64_t sub_1BD9ECFBC(void *a1, void *a2)
{
  v4 = a1[1];
  v5 = a2[1];
  result = (v4 | v5) == 0;
  if (v4)
  {
    v7 = v5 == 0;
  }

  else
  {
    v7 = 1;
  }

  if (!v7)
  {
    if (*a1 == *a2 && v4 == v5)
    {
      return 1;
    }

    else
    {
      return sub_1BE053B84();
    }
  }

  return result;
}

uint64_t static TileContextFindMyViewHost.create(eventName:)()
{
  objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5B798));
  sub_1BE048C84();
  return sub_1BE04EAC4();
}

id TileContextFindMyViewHost.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id TileContextFindMyViewHost.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TileContextFindMyViewHost();
  return objc_msgSendSuper2(&v2, sel_init);
}

id TileContextFindMyViewHost.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TileContextFindMyViewHost();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_1BD9ED21C()
{
  result = qword_1EBD5B7B0;
  if (!qword_1EBD5B7B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD5B7A0);
    sub_1BD0DE4F4(&qword_1EBD5B7B8, &qword_1EBD5B7C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD5B7B0);
  }

  return result;
}

unint64_t sub_1BD9ED2D4()
{
  result = qword_1EBD5B7E0;
  if (!qword_1EBD5B7E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD5B7C8);
    sub_1BD9ED38C();
    sub_1BD0DE4F4(&qword_1EBD3ABE8, &qword_1EBD3ABF0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD5B7E0);
  }

  return result;
}

unint64_t sub_1BD9ED38C()
{
  result = qword_1EBD5B7E8;
  if (!qword_1EBD5B7E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD55728);
    sub_1BD0DE4F4(&qword_1EBD441C0, &qword_1EBD441C8);
    sub_1BD0DE4F4(&qword_1EBD366E0, &unk_1EBD491A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD5B7E8);
  }

  return result;
}

unint64_t sub_1BD9ED470()
{
  result = qword_1EBD4C718;
  if (!qword_1EBD4C718)
  {
    sub_1BE04F734();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4C718);
  }

  return result;
}

char *sub_1BD9ED5AC(uint64_t a1)
{
  if (!a1)
  {
    return sub_1BD9ED6E8();
  }

  type metadata accessor for ProvisioningCredentialFlowItem();
  v2 = swift_dynamicCastClass();
  if (v2)
  {
    v3 = *(v2 + OBJC_IVAR____TtC9PassKitUI30ProvisioningCredentialFlowItem_provisionedPasses);
    if (v3)
    {
      v4 = *(v1 + OBJC_IVAR____TtC9PassKitUI33ProvisioningCredentialFlowSection_provisionedPasses);
      *(v1 + OBJC_IVAR____TtC9PassKitUI33ProvisioningCredentialFlowSection_provisionedPasses) = v3;
      v5 = v3;
      swift_unknownObjectRetain();
LABEL_8:

      v9 = objc_allocWithZone(type metadata accessor for ProvisioningPassIngestionSection());
      v10 = sub_1BE048964();
      v11 = sub_1BD989980(v10, v5);
      swift_unknownObjectRelease();

      return v11;
    }
  }

  type metadata accessor for ProvisioningCarKeyCredentialFlowItem();
  result = swift_dynamicCastClass();
  if (!result)
  {
    return result;
  }

  v7 = *&result[OBJC_IVAR____TtC9PassKitUI36ProvisioningCarKeyCredentialFlowItem_provisionedPasses];
  if (v7)
  {
    v4 = *(v1 + OBJC_IVAR____TtC9PassKitUI33ProvisioningCredentialFlowSection_provisionedPasses);
    *(v1 + OBJC_IVAR____TtC9PassKitUI33ProvisioningCredentialFlowSection_provisionedPasses) = v7;
    v8 = v7;
    swift_unknownObjectRetain();
    v5 = v8;
    goto LABEL_8;
  }

  return 0;
}

id sub_1BD9ED6E8()
{
  v1 = sub_1BE04BAC4();
  v2 = *(v1 - 8);
  v4 = MEMORY[0x1EEE9AC00](v1, v3);
  v6 = &v83 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v0 + OBJC_IVAR____TtC9PassKitUI33ProvisioningCredentialFlowSection_credential);
  v8 = [v7 remoteCredential];
  if (v8)
  {
    v9 = v8;
    v10 = v8;
    if ([v10 cardType] == 4)
    {
      v11 = *(v0 + OBJC_IVAR____TtC9PassKitUI33ProvisioningCredentialFlowSection_context);
      v12 = v10;
      sub_1BE048964();
      sub_1BD4B7714(v12);
      v14 = v13;
      type metadata accessor for PaymentSetupIdentityFlowSection();
      swift_allocObject();
      v15 = sub_1BD4B7FFC(v11, v14, 0, v9, 0, 0);

LABEL_4:
      type metadata accessor for UIFlowModifier();
      v16 = swift_allocObject();
      v17 = byte_1EBDAB281;
      *(v16 + 32) = byte_1EBDAB280;
      *(v16 + 33) = v17;
      *(v16 + 48) = 0;
      swift_unknownObjectWeakInit();

      result = v16;
      *(v16 + 16) = v15;
      *(v16 + 24) = &off_1F3B98C00;
      *(v16 + 33) = 1;
      return result;
    }
  }

  objc_opt_self();
  v19 = swift_dynamicCastObjCClass();
  if (v19)
  {
    v20 = v19;
    v21 = *(v0 + OBJC_IVAR____TtC9PassKitUI33ProvisioningCredentialFlowSection_context);
    v22 = type metadata accessor for ProvisioningPeerPaymentCredentialFlowItem();
    v23 = objc_allocWithZone(v22);
    *&v23[OBJC_IVAR____TtC9PassKitUI41ProvisioningPeerPaymentCredentialFlowItem_delegate + 8] = 0;
    swift_unknownObjectWeakInit();
    v24 = &v23[OBJC_IVAR____TtC9PassKitUI41ProvisioningPeerPaymentCredentialFlowItem_identifier];
    *v24 = 0xD00000000000001DLL;
    *(v24 + 1) = 0x80000001BE146C90;
    *&v23[OBJC_IVAR____TtC9PassKitUI41ProvisioningPeerPaymentCredentialFlowItem_context] = v21;
    *&v23[OBJC_IVAR____TtC9PassKitUI41ProvisioningPeerPaymentCredentialFlowItem_credential] = v20;
    v83.receiver = v23;
    v83.super_class = v22;
    v25 = v7;
    sub_1BE048964();
    return objc_msgSendSuper2(&v83, sel_init);
  }

  objc_opt_self();
  v26 = swift_dynamicCastObjCClass();
  if (v26)
  {
    v27 = v26;
    objc_allocWithZone(type metadata accessor for ProvisioningAppleCardFlowItem());
    v28 = v7;
    v29 = sub_1BE048964();
    return sub_1BD1CDC48(v29, v27);
  }

  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD46290);
    v30 = sub_1BE04C384();
    v31 = *(v30 - 8);
    v32 = (*(v31 + 80) + 32) & ~*(v31 + 80);
    v33 = swift_allocObject();
    *(v33 + 16) = xmmword_1BE0B69E0;
    *(v33 + v32) = v7;
    (*(v31 + 104))(v33 + v32, *MEMORY[0x1E69B82A8], v30);
    sub_1BE04C3D4();
    swift_allocObject();
    v34 = v7;
    v35 = v0;
    v36 = sub_1BE04C394();
    v37 = *(v35 + OBJC_IVAR____TtC9PassKitUI33ProvisioningCredentialFlowSection_context);
    type metadata accessor for ProvisioningCarPairingFlowSection();
    v38 = swift_allocObject();
    *(v38 + 48) = 0;
    swift_unknownObjectWeakInit();
    sub_1BE048964();

    result = v38;
    *(v38 + 56) = 0xD000000000000015;
    *(v38 + 64) = 0x80000001BE124930;
    *(v38 + 16) = v37;
    *(v38 + 24) = v36;
    *(v38 + 32) = 1;
    return result;
  }

  objc_opt_self();
  v39 = swift_dynamicCastObjCClass();
  if (v39)
  {
    v40 = v39;
    v41 = v7;
    if ([v40 transferType] == 2)
    {
LABEL_17:
      v45 = objc_allocWithZone(type metadata accessor for ProvisioningCarKeyCredentialFlowItem());
      v46 = sub_1BE048964();
      return sub_1BD99DF50(v46, v40);
    }
  }

  objc_opt_self();
  v42 = swift_dynamicCastObjCClass();
  if (v42)
  {
    v40 = v42;
    v43 = v7;
    sub_1BE04BC34();
    v44 = sub_1BE04BAB4();
    (*(v2 + 8))(v6, v1);
    if (v44)
    {
      goto LABEL_17;
    }

    v53 = objc_allocWithZone(type metadata accessor for ProvisioningCarAddToWatchFlowItem());
    v54 = sub_1BE048964();
    return sub_1BD6096B0(v54, v40, 0);
  }

  else
  {
    v47 = [v7 statefulTransferCredential];
    if (v47)
    {
      v48 = v47;
      v49 = *(v0 + OBJC_IVAR____TtC9PassKitUI33ProvisioningCredentialFlowSection_context);
      v50 = type metadata accessor for ProvisioningCarKeyInvitationFlowItem();
      v51 = objc_allocWithZone(v50);
      *&v51[OBJC_IVAR____TtC9PassKitUI36ProvisioningCarKeyInvitationFlowItem_coordinator] = 0;
      *&v51[OBJC_IVAR____TtC9PassKitUI36ProvisioningCarKeyInvitationFlowItem_delegate + 8] = 0;
      swift_unknownObjectWeakInit();
      v52 = &v51[OBJC_IVAR____TtC9PassKitUI36ProvisioningCarKeyInvitationFlowItem_identifier];
      *v52 = 0xD000000000000018;
      *(v52 + 1) = 0x80000001BE1248F0;
      *&v51[OBJC_IVAR____TtC9PassKitUI36ProvisioningCarKeyInvitationFlowItem_context] = v49;
      *&v51[OBJC_IVAR____TtC9PassKitUI36ProvisioningCarKeyInvitationFlowItem_credential] = v48;
      v84.receiver = v51;
      v84.super_class = v50;
      sub_1BE048964();
      return objc_msgSendSuper2(&v84, sel_init);
    }

    else
    {
      objc_opt_self();
      v55 = swift_dynamicCastObjCClass();
      if (v55)
      {
        v56 = v55;
        v57 = v7;
        v58 = [v56 paymentPass];
        if (v58)
        {
          v59 = v58;
          v60 = [v58 cardType];

          if (v60 == 4)
          {
            v61 = *(v0 + OBJC_IVAR____TtC9PassKitUI33ProvisioningCredentialFlowSection_context);
            v12 = v57;
            sub_1BE048964();
            sub_1BD4B799C(v56);
            v14 = v62;
            type metadata accessor for PaymentSetupIdentityFlowSection();
            swift_allocObject();
            v15 = sub_1BD4B7FFC(v61, v14, 0, v56, 0, 0);

            goto LABEL_4;
          }
        }
      }

      v63 = [v7 requiresVerificationCredential];
      if (v63)
      {
        v64 = v63;
        v65 = *(v0 + OBJC_IVAR____TtC9PassKitUI33ProvisioningCredentialFlowSection_context);
        sub_1BE048964();
        result = [v64 pass];
        if (result)
        {
          v66 = result;
          objc_opt_self();
          v67 = swift_dynamicCastObjCClass();
          if (v67)
          {
            v68 = v67;
            sub_1BE04BD64();
            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD39F80);
            v69 = swift_allocObject();
            *(v69 + 16) = xmmword_1BE0B7020;
            *(v69 + 32) = v68;
            v70 = v66;
            sub_1BD1ABED0(MEMORY[0x1E69E7CC0]);
            v71 = sub_1BE04BC64();
            sub_1BD29011C(v65, v71);
            v73 = v72;

            return v73;
          }

          else
          {

            return 0;
          }
        }

        else
        {
          __break(1u);
        }
      }

      else
      {
        if (*(v0 + OBJC_IVAR____TtC9PassKitUI33ProvisioningCredentialFlowSection_previouslyAcceptedTerms))
        {
          v74 = 1;
        }

        else
        {
          v74 = [v7 isPurchasedProductCredential];
        }

        v75 = *(v0 + OBJC_IVAR____TtC9PassKitUI33ProvisioningCredentialFlowSection_context);
        v76 = *(v0 + OBJC_IVAR____TtC9PassKitUI33ProvisioningCredentialFlowSection_product);
        v77 = *(v0 + OBJC_IVAR____TtC9PassKitUI33ProvisioningCredentialFlowSection_allowManualEntry);
        v78 = type metadata accessor for ProvisioningCredentialFlowItem();
        v79 = objc_allocWithZone(v78);
        *&v79[OBJC_IVAR____TtC9PassKitUI30ProvisioningCredentialFlowItem_viewController] = 0;
        v79[OBJC_IVAR____TtC9PassKitUI30ProvisioningCredentialFlowItem_isShowingViewController] = 0;
        *&v79[OBJC_IVAR____TtC9PassKitUI30ProvisioningCredentialFlowItem__hasRemainingCredentialsToProvision] = &type metadata for HasRemainingCredentialsToProvision;
        *&v79[OBJC_IVAR____TtC9PassKitUI30ProvisioningCredentialFlowItem__isCardsOnFileProvisioning] = &type metadata for IsCardsOnFileProvisioning;
        *&v79[OBJC_IVAR____TtC9PassKitUI30ProvisioningCredentialFlowItem_provisionedPasses] = 0;
        *&v79[OBJC_IVAR____TtC9PassKitUI30ProvisioningCredentialFlowItem_delegate + 8] = 0;
        swift_unknownObjectWeakInit();
        v80 = &v79[OBJC_IVAR____TtC9PassKitUI30ProvisioningCredentialFlowItem_identifier];
        *v80 = 0xD000000000000012;
        v80[1] = 0x80000001BE146C70;
        *&v79[OBJC_IVAR____TtC9PassKitUI30ProvisioningCredentialFlowItem_context] = v75;
        *&v79[OBJC_IVAR____TtC9PassKitUI30ProvisioningCredentialFlowItem_credential] = v7;
        *&v79[OBJC_IVAR____TtC9PassKitUI30ProvisioningCredentialFlowItem_product] = v76;
        v79[OBJC_IVAR____TtC9PassKitUI30ProvisioningCredentialFlowItem_allowManualEntry] = v77;
        v79[OBJC_IVAR____TtC9PassKitUI30ProvisioningCredentialFlowItem_previouslyAcceptedTerms] = v74;
        v85.receiver = v79;
        v85.super_class = v78;
        v81 = v7;
        sub_1BE048964();
        v82 = v76;
        return objc_msgSendSuper2(&v85, sel_init);
      }
    }
  }

  return result;
}

uint64_t sub_1BD9EE118()
{
  v1 = *(v0 + OBJC_IVAR____TtC9PassKitUI33ProvisioningCredentialFlowSection_identifier);
  sub_1BE048C84();
  return v1;
}

uint64_t sub_1BD9EE154(uint64_t a1, uint64_t a2)
{
  *(v2 + OBJC_IVAR____TtC9PassKitUI33ProvisioningCredentialFlowSection_delegate + 8) = a2;
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

uint64_t sub_1BD9EE1A0(uint64_t (*a1)(uint64_t))
{
  v2 = sub_1BE04BBD4();
  [v2 resetForNewProvisioningForce_];

  return a1(1);
}

char *DynamicPaymentButtonSlotView.__allocating_init(type:style:paymentRequest:buttonSize:interfaceStyle:action:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, double a7, double a8)
{
  v9 = v8;
  v52 = v9;
  v18 = objc_allocWithZone(v9);
  v19 = v18;
  v20 = &v18[OBJC_IVAR____TtC9PassKitUI28DynamicPaymentButtonSlotView_action];
  *v20 = 0;
  v20[1] = 0;
  v21 = OBJC_IVAR____TtC9PassKitUI28DynamicPaymentButtonSlotView_paymentRequest;
  *&v18[OBJC_IVAR____TtC9PassKitUI28DynamicPaymentButtonSlotView_paymentRequest] = 0;
  *&v18[OBJC_IVAR____TtC9PassKitUI28DynamicPaymentButtonSlotView_type] = a1;
  *&v18[OBJC_IVAR____TtC9PassKitUI28DynamicPaymentButtonSlotView_style] = a2;
  *&v18[v21] = a3;
  *v20 = a5;
  v20[1] = a6;
  v22 = a7 == 0.0;
  v23 = a8 == 0.0;
  v24 = &v18[OBJC_IVAR____TtC9PassKitUI28DynamicPaymentButtonSlotView_buttonSize];
  v25 = 150.0;
  if (!v22 || !v23)
  {
    v25 = a7;
  }

  v26 = 40.0;
  if (!v22 || !v23)
  {
    v26 = a8;
  }

  *v24 = v25;
  v24[1] = v26;
  *&v18[OBJC_IVAR____TtC9PassKitUI28DynamicPaymentButtonSlotView_interfaceStyle] = a4;
  v51 = a3;
  v53 = a5;
  sub_1BD0D44B8(a5);
  v50 = sub_1BD9EE8C0(a1);
  v28 = v27;
  v29 = [objc_opt_self() mainBundle];
  v30 = [v29 bundleIdentifier];

  if (v30)
  {
    v31 = sub_1BE052434();
    v33 = v32;
  }

  else
  {
    v31 = 0;
    v33 = 0;
  }

  v34 = [objc_allocWithZone(MEMORY[0x1E69DD730]) init];
  *&v19[OBJC_IVAR____TtC9PassKitUI28DynamicPaymentButtonSlotView_slotView] = v34;
  v35 = type metadata accessor for DynamicPaymentButtonSlotTag();
  v36 = objc_allocWithZone(v35);
  *&v36[OBJC_IVAR____TtC9PassKitUI27DynamicPaymentButtonSlotTag_type] = a1;
  *&v36[OBJC_IVAR____TtC9PassKitUI27DynamicPaymentButtonSlotTag_style] = a2;
  *&v36[OBJC_IVAR____TtC9PassKitUI27DynamicPaymentButtonSlotTag_paymentRequest] = a3;
  *&v36[OBJC_IVAR____TtC9PassKitUI27DynamicPaymentButtonSlotTag_interfaceStyle] = a4;
  v37 = &v36[OBJC_IVAR____TtC9PassKitUI27DynamicPaymentButtonSlotTag_localizedButtonLabel];
  *v37 = v50;
  v37[1] = v28;
  v38 = &v36[OBJC_IVAR____TtC9PassKitUI27DynamicPaymentButtonSlotTag_appBundleID];
  *v38 = v31;
  v38[1] = v33;
  *&v36[OBJC_IVAR____TtC9PassKitUI27DynamicPaymentButtonSlotTag_buttonWidth] = a7;
  *&v36[OBJC_IVAR____TtC9PassKitUI27DynamicPaymentButtonSlotTag_buttonHeight] = a8;
  v56.receiver = v36;
  v56.super_class = v35;
  v39 = v51;
  v40 = objc_msgSendSuper2(&v56, sel_init);
  v41 = type metadata accessor for DynamicPaymentButtonSlotDelegate();
  v42 = objc_allocWithZone(v41);
  *&v42[OBJC_IVAR____TtC9PassKitUI32DynamicPaymentButtonSlotDelegate____lazy_storage___connection] = 0;
  *&v42[OBJC_IVAR____TtC9PassKitUI32DynamicPaymentButtonSlotDelegate_tag] = v40;
  v55.receiver = v42;
  v55.super_class = v41;
  v43 = v40;
  *&v19[OBJC_IVAR____TtC9PassKitUI28DynamicPaymentButtonSlotView_slotDelegate] = objc_msgSendSuper2(&v55, sel_init);
  v54.receiver = v19;
  v54.super_class = v52;
  v44 = objc_msgSendSuper2(&v54, sel_initWithFrame_, 0.0, 0.0, a7, a8);
  v45 = OBJC_IVAR____TtC9PassKitUI28DynamicPaymentButtonSlotView_slotView;
  v46 = *&v44[OBJC_IVAR____TtC9PassKitUI28DynamicPaymentButtonSlotView_slotView];
  v47 = *&v44[OBJC_IVAR____TtC9PassKitUI28DynamicPaymentButtonSlotView_slotDelegate];
  v48 = v44;
  [v46 _setContentDelegate_];
  [*&v44[v45] setUserInteractionEnabled_];
  [v48 addSubview_];

  sub_1BD0D4744(v53);
  return v48;
}

char *DynamicPaymentButtonSlotView.init(type:style:paymentRequest:buttonSize:interfaceStyle:action:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, double a7, double a8)
{
  v16 = &v8[OBJC_IVAR____TtC9PassKitUI28DynamicPaymentButtonSlotView_action];
  *v16 = 0;
  v16[1] = 0;
  v17 = OBJC_IVAR____TtC9PassKitUI28DynamicPaymentButtonSlotView_paymentRequest;
  *&v8[OBJC_IVAR____TtC9PassKitUI28DynamicPaymentButtonSlotView_paymentRequest] = 0;
  *&v8[OBJC_IVAR____TtC9PassKitUI28DynamicPaymentButtonSlotView_type] = a1;
  *&v8[OBJC_IVAR____TtC9PassKitUI28DynamicPaymentButtonSlotView_style] = a2;
  *&v8[v17] = a3;
  *v16 = a5;
  v16[1] = a6;
  v18 = a7 == 0.0;
  v19 = a8 == 0.0;
  v20 = &v8[OBJC_IVAR____TtC9PassKitUI28DynamicPaymentButtonSlotView_buttonSize];
  v21 = 150.0;
  if (!v18 || !v19)
  {
    v21 = a7;
  }

  v22 = 40.0;
  if (!v18 || !v19)
  {
    v22 = a8;
  }

  *v20 = v21;
  v20[1] = v22;
  *&v8[OBJC_IVAR____TtC9PassKitUI28DynamicPaymentButtonSlotView_interfaceStyle] = a4;
  v47 = a3;
  v48 = a5;
  sub_1BD0D44B8(a5);
  v46 = sub_1BD9EE8C0(a1);
  v24 = v23;
  v25 = [objc_opt_self() mainBundle];
  v26 = [v25 bundleIdentifier];

  if (v26)
  {
    v27 = sub_1BE052434();
    v29 = v28;
  }

  else
  {
    v27 = 0;
    v29 = 0;
  }

  v30 = [objc_allocWithZone(MEMORY[0x1E69DD730]) init];
  *&v8[OBJC_IVAR____TtC9PassKitUI28DynamicPaymentButtonSlotView_slotView] = v30;
  v31 = type metadata accessor for DynamicPaymentButtonSlotTag();
  v32 = objc_allocWithZone(v31);
  *&v32[OBJC_IVAR____TtC9PassKitUI27DynamicPaymentButtonSlotTag_type] = a1;
  *&v32[OBJC_IVAR____TtC9PassKitUI27DynamicPaymentButtonSlotTag_style] = a2;
  *&v32[OBJC_IVAR____TtC9PassKitUI27DynamicPaymentButtonSlotTag_paymentRequest] = a3;
  *&v32[OBJC_IVAR____TtC9PassKitUI27DynamicPaymentButtonSlotTag_interfaceStyle] = a4;
  v33 = &v32[OBJC_IVAR____TtC9PassKitUI27DynamicPaymentButtonSlotTag_localizedButtonLabel];
  *v33 = v46;
  v33[1] = v24;
  v34 = &v32[OBJC_IVAR____TtC9PassKitUI27DynamicPaymentButtonSlotTag_appBundleID];
  *v34 = v27;
  v34[1] = v29;
  *&v32[OBJC_IVAR____TtC9PassKitUI27DynamicPaymentButtonSlotTag_buttonWidth] = a7;
  *&v32[OBJC_IVAR____TtC9PassKitUI27DynamicPaymentButtonSlotTag_buttonHeight] = a8;
  v51.receiver = v32;
  v51.super_class = v31;
  v35 = v47;
  v36 = objc_msgSendSuper2(&v51, sel_init);
  v37 = type metadata accessor for DynamicPaymentButtonSlotDelegate();
  v38 = objc_allocWithZone(v37);
  *&v38[OBJC_IVAR____TtC9PassKitUI32DynamicPaymentButtonSlotDelegate____lazy_storage___connection] = 0;
  *&v38[OBJC_IVAR____TtC9PassKitUI32DynamicPaymentButtonSlotDelegate_tag] = v36;
  v50.receiver = v38;
  v50.super_class = v37;
  v39 = v36;
  *&v8[OBJC_IVAR____TtC9PassKitUI28DynamicPaymentButtonSlotView_slotDelegate] = objc_msgSendSuper2(&v50, sel_init);
  v49.receiver = v8;
  v49.super_class = type metadata accessor for DynamicPaymentButtonSlotView();
  v40 = objc_msgSendSuper2(&v49, sel_initWithFrame_, 0.0, 0.0, a7, a8);
  v41 = OBJC_IVAR____TtC9PassKitUI28DynamicPaymentButtonSlotView_slotView;
  v42 = *&v40[OBJC_IVAR____TtC9PassKitUI28DynamicPaymentButtonSlotView_slotView];
  v43 = *&v40[OBJC_IVAR____TtC9PassKitUI28DynamicPaymentButtonSlotView_slotDelegate];
  v44 = v40;
  [v42 _setContentDelegate_];
  [*&v40[v41] setUserInteractionEnabled_];
  [v44 addSubview_];

  sub_1BD0D4744(v48);
  return v44;
}

uint64_t sub_1BD9EE8C0(uint64_t a1)
{
  if (a1 != 1 && a1 != 3)
  {
    return 0;
  }

  v1 = sub_1BE052404();

  v2 = PKLocalizedPaymentString(v1);

  if (!v2)
  {
    return 0;
  }

  v3 = sub_1BE052434();

  return v3;
}

id DynamicPaymentButtonSlotView.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id sub_1BD9EECE8()
{
  v1 = OBJC_IVAR____TtC9PassKitUI32DynamicPaymentButtonSlotDelegate____lazy_storage___connection;
  v2 = *(v0 + OBJC_IVAR____TtC9PassKitUI32DynamicPaymentButtonSlotDelegate____lazy_storage___connection);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC9PassKitUI32DynamicPaymentButtonSlotDelegate____lazy_storage___connection);
  }

  else
  {
    v4 = sub_1BD9EED48();
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_1BD9EED48()
{
  v0 = objc_allocWithZone(MEMORY[0x1E696B0B8]);
  v1 = sub_1BE052404();
  v2 = [v0 initWithServiceName_];

  v3 = UISSlotMachineInterface();
  [v2 setRemoteObjectInterface_];

  v11 = sub_1BD9EEEF4;
  v12 = 0;
  v7 = MEMORY[0x1E69E9820];
  v8 = 1107296256;
  v9 = sub_1BD126964;
  v10 = &block_descriptor_239;
  v4 = _Block_copy(&v7);
  [v2 setInterruptionHandler_];
  _Block_release(v4);
  v11 = sub_1BD9EEF00;
  v12 = 0;
  v7 = MEMORY[0x1E69E9820];
  v8 = 1107296256;
  v9 = sub_1BD126964;
  v10 = &block_descriptor_42_4;
  v5 = _Block_copy(&v7);
  [v2 setInvalidationHandler_];
  _Block_release(v5);
  [v2 resume];
  return v2;
}

uint64_t sub_1BD9EEF0C(const char *a1)
{
  v2 = sub_1BE04D214();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BE04D124();
  v7 = sub_1BE04D204();
  v8 = sub_1BE052C54();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_1BD026000, v7, v8, a1, v9, 2u);
    MEMORY[0x1BFB45F20](v9, -1, -1);
  }

  return (*(v3 + 8))(v6, v2);
}

uint64_t sub_1BD9EF074(void *a1)
{
  v2 = sub_1BE04D214();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BE04D124();
  v7 = a1;
  v8 = sub_1BE04D204();
  v9 = sub_1BE052C54();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v17 = a1;
    v18 = v11;
    *v10 = 136315138;
    v12 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3E5A0);
    v13 = sub_1BE0524A4();
    v15 = sub_1BD123690(v13, v14, &v18);

    *(v10 + 4) = v15;
    _os_log_impl(&dword_1BD026000, v8, v9, "#DynamicButton Error getting remote proxy (%s)", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v11);
    MEMORY[0x1BFB45F20](v11, -1, -1);
    MEMORY[0x1BFB45F20](v10, -1, -1);
  }

  return (*(v3 + 8))(v6, v2);
}

void sub_1BD9EF248(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  sub_1BE048964();
  v4 = a2;
  v3();
}

id sub_1BD9EF4D0(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_1BD9EF554(uint64_t a1)
{
  v2 = sub_1BE04D214();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    swift_unknownObjectRetain();
    sub_1BE04D124();
    v7 = sub_1BE04D204();
    v8 = sub_1BE052C54();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_1BD026000, v7, v8, "Produced final content successfully.", v9, 2u);
      MEMORY[0x1BFB45F20](v9, -1, -1);
    }

    (*(v3 + 8))(v6, v2);
  }

  return a1;
}

uint64_t sub_1BD9EF6A4(char a1)
{
  v2 = sub_1BE04D214();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v16 - v9;
  if (a1)
  {
    sub_1BE04D124();
    v11 = sub_1BE04D204();
    v12 = sub_1BE052C54();
    if (!os_log_type_enabled(v11, v12))
    {
      v6 = v10;
      goto LABEL_8;
    }

    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&dword_1BD026000, v11, v12, "Slot view has been set successfully.", v13, 2u);
    v6 = v10;
    goto LABEL_6;
  }

  sub_1BE04D124();
  v11 = sub_1BE04D204();
  v14 = sub_1BE052C54();
  if (os_log_type_enabled(v11, v14))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&dword_1BD026000, v11, v14, "Failed to set slot view content.", v13, 2u);
LABEL_6:
    MEMORY[0x1BFB45F20](v13, -1, -1);
  }

LABEL_8:

  return (*(v3 + 8))(v6, v2);
}

uint64_t type metadata accessor for SavingsFCCStepUpPresenter()
{
  result = qword_1EBD5B908;
  if (!qword_1EBD5B908)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1BD9EF8FC()
{
  sub_1BD957184();
  if (v0 <= 0x3F)
  {
    sub_1BD23BBFC();
    if (v1 <= 0x3F)
    {
      sub_1BD1030A8();
      if (v2 <= 0x3F)
      {
        sub_1BD243964();
        if (v3 <= 0x3F)
        {
          sub_1BD365CF8();
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t sub_1BD9EF9E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v48 = a1;
  v54 = a2;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD416C0);
  MEMORY[0x1EEE9AC00](v53, v3);
  v49 = &v43 - v4;
  v5 = type metadata accessor for SavingsFCCStepUpPresenter();
  v46 = *(v5 - 8);
  v6 = v5 - 8;
  v51 = v5 - 8;
  MEMORY[0x1EEE9AC00](v5 - 8, v7);
  v45 = v8;
  v9 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5B918);
  MEMORY[0x1EEE9AC00](v56, v10);
  v47 = &v43 - v11;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5B920);
  v52 = *(v50 - 8);
  MEMORY[0x1EEE9AC00](v50, v12);
  v62 = &v43 - v13;
  v14 = v2 + *(v6 + 40);
  v55 = v2;
  v15 = *v14;
  v60 = *(v14 + 8);
  v61 = v15;
  v59 = *(v14 + 16);
  v58 = type metadata accessor for ApplyControllerModel();
  v57 = sub_1BD9F1468(&qword_1EBD42D38, type metadata accessor for ApplyControllerModel);
  v16 = sub_1BE04E3D4();
  swift_getKeyPath();
  sub_1BE04E974();

  v17 = v65;
  v67[0] = v63;
  v67[1] = v64;
  v67[2] = v65;
  v44 = v9;
  sub_1BD9F0E1C(v2, v9);
  v46 = *(v46 + 80);
  v18 = (v46 + 16) & ~v46;
  v19 = swift_allocObject();
  sub_1BD9F0E80(v9, v19 + v18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5B928);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD42D68);
  sub_1BD0DE4F4(&qword_1EBD5B930, &qword_1EBD5B928);
  sub_1BD365E88();
  sub_1BD365EDC();
  v20 = v47;
  sub_1BE050F74();

  v21 = sub_1BE04E3C4();
  swift_beginAccess();
  v22 = v56;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD422A8);
  sub_1BE04D884();
  swift_endAccess();

  v23 = v55;
  v24 = v44;
  sub_1BD9F0E1C(v55, v44);
  v25 = swift_allocObject();
  sub_1BD9F0E80(v24, v25 + v18);
  v26 = (v20 + *(v22 + 56));
  *v26 = sub_1BD9F0EFC;
  v26[1] = v25;
  v27 = *(v23 + 16);
  v28 = *(v23 + 24);
  v63 = *(v23 + 8);
  v64 = v27;
  LOBYTE(v65) = v28;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD4DFE0);
  MEMORY[0x1BFB3E970](v67, v29);
  LOBYTE(v63) = v67[0];
  sub_1BD9F0E1C(v23, v24);
  v30 = swift_allocObject();
  sub_1BD9F0E80(v24, v30 + v18);
  v31 = sub_1BD0DE4F4(&qword_1EBD5B938, &qword_1EBD5B918);
  sub_1BE051064();

  sub_1BD0CC298(v20);
  v32 = sub_1BE04E3C4();
  swift_getKeyPath();
  swift_getKeyPath();
  v33 = v49;
  sub_1BE04D8B4();

  v34 = v55;
  sub_1BD9F0E1C(v55, v24);
  v35 = swift_allocObject();
  sub_1BD9F0E80(v24, v35 + v18);
  v63 = v56;
  v64 = MEMORY[0x1E69E6370];
  v65 = v31;
  v66 = MEMORY[0x1E69E6388];
  swift_getOpaqueTypeConformance2();
  sub_1BD2477C0();
  v36 = v54;
  v37 = v50;
  v38 = v62;
  sub_1BE051064();

  sub_1BD23C32C(v33);
  (*(v52 + 8))(v38, v37);
  v39 = v36 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5B940) + 36);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3E968);
  sub_1BE0516C4();
  sub_1BD9F0E1C(v34, v24);
  v40 = swift_allocObject();
  sub_1BD9F0E80(v24, v40 + v18);
  result = type metadata accessor for ErrorAlertModifier(0);
  v42 = (v39 + *(result + 20));
  *v42 = sub_1BD9F1240;
  v42[1] = v40;
  return result;
}

id sub_1BD9F01A8(id *a1)
{
  v2 = sub_1BE04D214();
  v24 = *(v2 - 8);
  v25 = v2;
  MEMORY[0x1EEE9AC00](v2, v3);
  v23 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD416C0);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = &v22 - v7;
  type metadata accessor for SavingsFCCStepUpPresenter();
  v26 = a1;
  type metadata accessor for ApplyControllerModel();
  sub_1BD9F1468(&qword_1EBD42D38, type metadata accessor for ApplyControllerModel);
  v9 = sub_1BE04E3C4();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();

  if (v29 == 2)
  {
    goto LABEL_8;
  }

  if ((v29 & 1) == 0)
  {
    goto LABEL_8;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3E968);
  sub_1BE0516A4();
  v10 = type metadata accessor for FeatureError(0);
  v11 = (*(*(v10 - 8) + 48))(v8, 1, v10);
  sub_1BD23C32C(v8);
  if (v11 != 1)
  {
    goto LABEL_8;
  }

  v12 = v23;
  sub_1BE04D1E4();
  v13 = sub_1BE04D204();
  v14 = sub_1BE052C54();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&dword_1BD026000, v13, v14, "FCC step up completed, sheet dismissing, updating account", v15, 2u);
    MEMORY[0x1BFB45F20](v15, -1, -1);
  }

  (*(v24 + 8))(v12, v25);
  result = [objc_opt_self() sharedInstance];
  if (result)
  {
    v17 = result;
    v18 = v26;
    v19 = [*v26 accountIdentifier];
    [v17 updateAccountWithIdentifier:v19 extended:0 completion:0];

    (v18[4])();
LABEL_8:
    v20 = sub_1BE04E3C4();
    swift_getKeyPath();
    swift_getKeyPath();
    v28 = 0;
    v21 = v20;
    sub_1BE04D8C4();
    swift_getKeyPath();
    swift_getKeyPath();
    v27 = 2;
    return sub_1BE04D8C4();
  }

  __break(1u);
  return result;
}

uint64_t sub_1BD9F05A8(uint64_t *a1, uint64_t a2)
{
  v4 = sub_1BE04D214();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v16[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = *a1;
  v10 = *(a2 + 16);
  v11 = *(a2 + 24);
  v17 = *(a2 + 8);
  v18 = v10;
  v19 = v11;
  v16[7] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD4DFE0);
  result = sub_1BE0518F4();
  if (v9)
  {
    sub_1BE04D1E4();
    v13 = sub_1BE04D204();
    v14 = sub_1BE052C54();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_1BD026000, v13, v14, "FCC step up finished loading, sheet will present", v15, 2u);
      MEMORY[0x1BFB45F20](v15, -1, -1);
    }

    return (*(v5 + 8))(v8, v4);
  }

  return result;
}

void sub_1BD9F072C(uint64_t a1, unsigned __int8 *a2, uint64_t a3)
{
  v5 = sub_1BE04D214();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *a2;
  sub_1BE04D1E4();
  v11 = sub_1BE04D204();
  v12 = sub_1BE052C54();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 67109120;
    *(v13 + 4) = v10;
    _os_log_impl(&dword_1BD026000, v11, v12, "FCC step up loading = %{BOOL}d", v13, 8u);
    MEMORY[0x1BFB45F20](v13, -1, -1);
  }

  (*(v6 + 8))(v9, v5);
  v14 = *(a3 + 16);
  v15 = *(a3 + 24);
  v18 = *(a3 + 8);
  v19 = v14;
  v20 = v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD4DFE0);
  MEMORY[0x1BFB3E970]((&v17 + 7), v16);
  if (HIBYTE(v17) == 1)
  {
    sub_1BD9F08C8();
  }
}

void sub_1BD9F08C8()
{
  type metadata accessor for SavingsFCCStepUpPresenter();
  type metadata accessor for ApplyControllerModel();
  sub_1BD9F1468(&qword_1EBD42D38, type metadata accessor for ApplyControllerModel);
  v1 = sub_1BE04E3C4();
  v2 = &v1[OBJC_IVAR____TtC9PassKitUI20ApplyControllerModel_applicationType];
  *v2 = 5;
  v2[8] = 0;

  v3 = sub_1BE04E3C4();
  v4 = *v0;
  v5 = *&v3[OBJC_IVAR____TtC9PassKitUI20ApplyControllerModel_account];
  *&v3[OBJC_IVAR____TtC9PassKitUI20ApplyControllerModel_account] = v4;
  v6 = v4;

  v7 = sub_1BE04E3C4();
  sub_1BD333918();
}

uint64_t sub_1BD9F0A10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD416C0);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = &v18[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = &v18[-v11];
  v13 = type metadata accessor for FeatureError(0);
  if ((*(*(v13 - 8) + 48))(a2, 1, v13) != 1)
  {
    type metadata accessor for SavingsFCCStepUpPresenter();
    type metadata accessor for ApplyControllerModel();
    sub_1BD9F1468(&qword_1EBD42D38, type metadata accessor for ApplyControllerModel);
    v14 = sub_1BE04E3C4();
    swift_getKeyPath();
    swift_getKeyPath();
    sub_1BE04D8B4();

    sub_1BD23C2BC(v12, v8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3E968);
    sub_1BE0516B4();
    sub_1BD23C32C(v12);
  }

  v15 = *(a3 + 16);
  v16 = *(a3 + 24);
  v19 = *(a3 + 8);
  v20 = v15;
  v21 = v16;
  v18[7] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD4DFE0);
  return sub_1BE0518F4();
}

uint64_t sub_1BD9F0C3C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD416C0);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v5 = &v14[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v14[-v8];
  v10 = *(a1 + 16);
  v11 = *(a1 + 24);
  v15 = *(a1 + 8);
  v16 = v10;
  v17 = v11;
  v14[7] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD4DFE0);
  sub_1BE0518F4();
  type metadata accessor for SavingsFCCStepUpPresenter();
  type metadata accessor for ApplyControllerModel();
  sub_1BD9F1468(&qword_1EBD42D38, type metadata accessor for ApplyControllerModel);
  sub_1BE04E3C4();
  v12 = type metadata accessor for FeatureError(0);
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BD23C2BC(v9, v5);
  sub_1BE04D8C4();
  return sub_1BD23C32C(v9);
}

uint64_t sub_1BD9F0E1C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SavingsFCCStepUpPresenter();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BD9F0E80(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SavingsFCCStepUpPresenter();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BD9F0EFC(uint64_t *a1)
{
  v3 = *(type metadata accessor for SavingsFCCStepUpPresenter() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_1BD9F05A8(a1, v4);
}

void sub_1BD9F0F6C(uint64_t a1, unsigned __int8 *a2)
{
  v5 = *(type metadata accessor for SavingsFCCStepUpPresenter() - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  sub_1BD9F072C(a1, a2, v6);
}

uint64_t sub_1BD9F0FEC(uint64_t a1, uint64_t a2)
{
  v5 = *(type metadata accessor for SavingsFCCStepUpPresenter() - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_1BD9F0A10(a1, a2, v6);
}

uint64_t objectdestroyTm_121()
{
  v1 = type metadata accessor for SavingsFCCStepUpPresenter();
  v2 = (v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)));

  v3 = (v2 + *(v1 + 28));
  v4 = type metadata accessor for FeatureError(0);
  if (!(*(*(v4 - 8) + 48))(v3, 1, v4))
  {

    v5 = *(v4 + 20);
    v6 = sub_1BE04B824();
    v7 = *(v6 - 8);
    if (!(*(v7 + 48))(v3 + v5, 1, v6))
    {
      (*(v7 + 8))(v3 + v5, v6);
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3E968);

  sub_1BD035CB4(*(v2 + *(v1 + 32)), *(v2 + *(v1 + 32) + 8), *(v2 + *(v1 + 32) + 16));

  return swift_deallocObject();
}

uint64_t sub_1BD9F1258(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for SavingsFCCStepUpPresenter() - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

unint64_t sub_1BD9F12CC()
{
  result = qword_1EBD5B948;
  if (!qword_1EBD5B948)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD5B940);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD5B920);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD416C0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD5B918);
    sub_1BD0DE4F4(&qword_1EBD5B938, &qword_1EBD5B918);
    swift_getOpaqueTypeConformance2();
    sub_1BD2477C0();
    swift_getOpaqueTypeConformance2();
    sub_1BD9F1468(&qword_1EBD3EA00, type metadata accessor for ErrorAlertModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD5B948);
  }

  return result;
}

uint64_t sub_1BD9F1468(unint64_t *a1, void (*a2)(uint64_t))
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

Swift::Void __swiftcall PKPaymentTransactionDetailTitleHeaderView.configure(title:)(Swift::String title)
{
  v2[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5B950);
  v2[4] = sub_1BD0DE4F4(&qword_1EBD5B958, &qword_1EBD5B950);
  __swift_allocate_boxed_opaque_existential_1(v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD386A0);
  sub_1BD0DE43C();
  sub_1BE04FCE4();
  MEMORY[0x1BFB3FC20](v2);
  [v1 setNeedsUpdateConfiguration];
}

uint64_t sub_1BD9F15F0@<X0>(uint64_t a1@<X8>)
{
  sub_1BD0DDEBC();
  sub_1BE048C84();
  v2 = sub_1BE0506C4();
  v4 = v3;
  v6 = v5;
  sub_1BE051464();
  v7 = sub_1BE050564();
  v9 = v8;
  v11 = v10;

  sub_1BD0DDF10(v2, v4, v6 & 1);

  sub_1BE0503E4();
  v12 = sub_1BE0505F4();
  v14 = v13;
  v16 = v15;

  sub_1BD0DDF10(v7, v9, v11 & 1);

  sub_1BE0503A4();
  v17 = sub_1BE050544();
  v19 = v18;
  v21 = v20;
  v23 = v22;
  sub_1BD0DDF10(v12, v14, v16 & 1);

  v24 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD386A0) + 36));
  v25 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD386C0) + 28);
  v26 = sub_1BE0505C4();
  (*(*(v26 - 8) + 56))(v24 + v25, 1, 1, v26);
  result = swift_getKeyPath();
  *v24 = result;
  *a1 = v17;
  *(a1 + 8) = v19;
  *(a1 + 16) = v21 & 1;
  *(a1 + 24) = v23;
  return result;
}

id PKPaymentTransactionDetailTitleHeaderView.__allocating_init(reuseIdentifier:)(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = sub_1BE052404();
  }

  else
  {
    v3 = 0;
  }

  v4 = [objc_allocWithZone(v2) initWithReuseIdentifier_];

  return v4;
}

id PKPaymentTransactionDetailTitleHeaderView.init(reuseIdentifier:)(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  if (a2)
  {
    v5 = sub_1BE052404();
  }

  else
  {
    v5 = 0;
  }

  v8.receiver = v2;
  v8.super_class = ObjectType;
  v6 = objc_msgSendSuper2(&v8, sel_initWithReuseIdentifier_, v5);

  return v6;
}

id PKPaymentTransactionDetailTitleHeaderView.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id PKPaymentTransactionDetailTitleHeaderView.init(coder:)(void *a1)
{
  v5.receiver = v1;
  v5.super_class = swift_getObjectType();
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

id PKPaymentTransactionDetailTitleHeaderView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1BD9F1BEC(char a1)
{
  result = 0x6573616863727570;
  switch(a1)
  {
    case 1:
      result = 0x646E75666572;
      break;
    case 2:
      result = 0x7469736E617274;
      break;
    case 3:
      v3 = 1919247728;
      goto LABEL_21;
    case 4:
      result = 6645094;
      break;
    case 5:
      result = 0x6172646874646977;
      break;
    case 6:
      result = 0x7055706F74;
      break;
    case 7:
      result = 0x656D7473756A6461;
      break;
    case 8:
      result = 0x6573727562736964;
      break;
    case 9:
      result = 0x73647261776572;
      break;
    case 10:
      v3 = 1819044194;
LABEL_21:
      result = v3 | 0x6D79615000000000;
      break;
    case 11:
      result = 0x7473657265746E69;
      break;
    case 12:
      result = 0x4173647261776572;
      break;
    case 13:
      result = 0xD000000000000012;
      break;
    case 14:
      result = 0x6D6C6C6174736E69;
      break;
    case 15:
      result = 0x646E656469766964;
      break;
    case 16:
      result = 1851879276;
      break;
    case 17:
      result = 0x676E69646E617473;
      break;
    case 18:
      result = 0x6544746365726964;
      break;
    case 19:
      result = 0x726566736E617274;
      break;
    case 20:
      result = 0x6B63656863;
      break;
    case 21:
      result = 0x6E776F6E6B6E75;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1BD9F1E38(char *a1, char *a2)
{
  v2 = *a2;
  v3 = sub_1BD9F1BEC(*a1);
  v5 = v4;
  if (v3 == sub_1BD9F1BEC(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1BE053B84();
  }

  return v8 & 1;
}

unint64_t sub_1BD9F1EC4()
{
  result = qword_1EBD5B960;
  if (!qword_1EBD5B960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD5B960);
  }

  return result;
}

uint64_t sub_1BD9F1F18()
{
  v1 = *v0;
  sub_1BE053D04();
  sub_1BD9F1BEC(v1);
  sub_1BE052524();

  return sub_1BE053D64();
}

uint64_t sub_1BD9F1F7C()
{
  sub_1BD9F1BEC(*v0);
  sub_1BE052524();
}

uint64_t sub_1BD9F1FD0()
{
  v1 = *v0;
  sub_1BE053D04();
  sub_1BD9F1BEC(v1);
  sub_1BE052524();

  return sub_1BE053D64();
}

uint64_t sub_1BD9F2030@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1BD9F4670();
  *a1 = result;
  return result;
}

uint64_t sub_1BD9F2060@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1BD9F1BEC(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_1BD9F2090()
{
  result = qword_1EBD5B968;
  if (!qword_1EBD5B968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD5B968);
  }

  return result;
}

unint64_t sub_1BD9F20E8()
{
  result = qword_1EBD5B970;
  if (!qword_1EBD5B970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD5B970);
  }

  return result;
}

unint64_t sub_1BD9F2140()
{
  result = qword_1EBD5B978;
  if (!qword_1EBD5B978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD5B978);
  }

  return result;
}

unint64_t sub_1BD9F2198()
{
  result = qword_1EBD5B980;
  if (!qword_1EBD5B980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD5B980);
  }

  return result;
}

unint64_t sub_1BD9F21EC()
{
  result = qword_1EBD5B988;
  if (!qword_1EBD5B988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD5B988);
  }

  return result;
}

unint64_t sub_1BD9F2240()
{
  result = qword_1EBD5B990;
  if (!qword_1EBD5B990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD5B990);
  }

  return result;
}

uint64_t sub_1BD9F2298()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD528E0);
  MEMORY[0x1EEE9AC00](v0 - 8, v1);
  v18[0] = v18 - v2;
  v3 = sub_1BE04B0F4();
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v5 = sub_1BE04A874();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1BE0523D4();
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v12 = sub_1BE04A884();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12, v14);
  v15 = sub_1BE048E94();
  __swift_allocate_value_buffer(v15, qword_1EBDAB8C0);
  __swift_project_value_buffer(v15, qword_1EBDAB8C0);
  sub_1BE052354();
  if (qword_1EBD36CF8 != -1)
  {
    swift_once();
  }

  v16 = __swift_project_value_buffer(v5, qword_1EBDAB400);
  (*(v6 + 16))(v9, v16, v5);
  sub_1BE04B0A4();
  sub_1BE04A894();
  (*(v13 + 56))(v18[0], 1, 1, v12);
  return sub_1BE048E84();
}

uint64_t sub_1BD9F25B0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38B88);
  MEMORY[0x1EEE9AC00](v0 - 8, v1);
  v3 = &v122 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD528E0);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v122 - v6;
  v8 = sub_1BE04B0F4();
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v11 = &v122 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1BE04A874();
  v145 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = &v122 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1BE0523D4();
  MEMORY[0x1EEE9AC00](v16 - 8, v17);
  v19 = &v122 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v143 = sub_1BE04A884();
  v141 = *(v143 - 8);
  MEMORY[0x1EEE9AC00](v143, v20);
  v22 = &v122 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5B9C0);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3BEC8);
  v24 = (*(*(v23 - 8) + 80) + 32) & ~*(*(v23 - 8) + 80);
  v139 = *(*(v23 - 8) + 72);
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_1BE10D230;
  v125 = v25;
  v142 = v23;
  v126 = *(v23 + 48);
  v138 = v25 + v24;
  *(v25 + v24) = 0;
  v26 = v19;
  sub_1BE052354();
  if (qword_1EBD36CF8 != -1)
  {
    swift_once();
  }

  v140 = __swift_project_value_buffer(v12, qword_1EBDAB400);
  v136 = *(v145 + 16);
  v145 += 16;
  v27 = v15;
  v136(v15, v140, v12);
  sub_1BE04B0A4();
  v28 = v22;
  v29 = v26;
  sub_1BE04A894();
  v30 = v141 + 56;
  v134 = *(v141 + 56);
  v134(v7, 1, 1, v143);
  v141 = v30;
  v132 = sub_1BE048BB4();
  v31 = *(v132 - 8);
  v135 = *(v31 + 56);
  v133 = v31 + 56;
  v135(v3, 1, 1, v132);
  v32 = v138;
  sub_1BE048BD4();
  v137 = v12;
  v126 = *(v142 + 48);
  *(v32 + v139) = 1;
  sub_1BE052354();
  v144 = v11;
  v129 = v29;
  v33 = v136;
  v136(v27, v140, v12);
  sub_1BE04B0A4();
  sub_1BE04A894();
  v130 = v7;
  v34 = v143;
  v134(v7, 1, 1, v143);
  v131 = v3;
  v35 = v132;
  v135(v3, 1, 1, v132);
  v36 = v28;
  sub_1BE048BD4();
  v126 = 2 * v139;
  v123 = (v138 + 2 * v139);
  v37 = v142;
  v124 = *(v142 + 48);
  *v123 = 2;
  sub_1BE052354();
  v33(v27, v140, v137);
  sub_1BE04B0A4();
  sub_1BE04A894();
  v38 = v130;
  v39 = v134;
  v134(v130, 1, 1, v34);
  v135(v131, 1, 1, v35);
  v40 = v38;
  sub_1BE048BD4();
  v41 = v138;
  v124 = v138 + v126 + v139;
  v126 = *(v37 + 48);
  *v124 = 3;
  sub_1BE052354();
  v136(v27, v140, v137);
  sub_1BE04B0A4();
  v42 = v36;
  sub_1BE04A894();
  v43 = v143;
  v39(v40, 1, 1, v143);
  v44 = v135;
  v135(v131, 1, 1, v132);
  sub_1BE048BD4();
  v45 = v139;
  v126 = 4 * v139;
  v123 = (v41 + 4 * v139);
  v46 = v142;
  v124 = *(v142 + 48);
  *v123 = 4;
  sub_1BE052354();
  v47 = v140;
  v136(v27, v140, v137);
  sub_1BE04B0A4();
  sub_1BE04A894();
  v134(v130, 1, 1, v43);
  v48 = v131;
  v49 = v132;
  v44(v131, 1, 1, v132);
  sub_1BE048BD4();
  v124 = v138 + v126 + v45;
  v126 = *(v46 + 48);
  *v124 = 5;
  sub_1BE052354();
  v128 = v27;
  v50 = v136;
  v136(v27, v47, v137);
  sub_1BE04B0A4();
  v127 = v42;
  sub_1BE04A894();
  v51 = v134;
  v134(v130, 1, 1, v143);
  v52 = v49;
  v53 = v135;
  v135(v48, 1, 1, v52);
  sub_1BE048BD4();
  v124 = v138 + 6 * v139;
  v126 = *(v142 + 48);
  *v124 = 6;
  sub_1BE052354();
  v54 = v128;
  v50(v128, v140, v137);
  sub_1BE04B0A4();
  sub_1BE04A894();
  v55 = v143;
  v51(v130, 1, 1, v143);
  v53(v48, 1, 1, v132);
  sub_1BE048BD4();
  v126 = 8 * v139;
  v123 = (v138 + 7 * v139);
  v124 = *(v142 + 48);
  *v123 = 7;
  sub_1BE052354();
  v56 = v136;
  v57 = v137;
  v136(v54, v140, v137);
  sub_1BE04B0A4();
  sub_1BE04A894();
  v58 = v55;
  v51(v130, 1, 1, v55);
  v59 = v132;
  v60 = v135;
  v135(v131, 1, 1, v132);
  sub_1BE048BD4();
  v123 = (v138 + v126);
  v124 = *(v142 + 48);
  *v123 = 8;
  sub_1BE052354();
  v61 = v128;
  v56(v128, v140, v57);
  sub_1BE04B0A4();
  sub_1BE04A894();
  v62 = v130;
  v134(v130, 1, 1, v58);
  v60(v131, 1, 1, v59);
  sub_1BE048BD4();
  v63 = v138;
  v124 = v138 + v126 + v139;
  v126 = *(v142 + 48);
  *v124 = 9;
  sub_1BE052354();
  v64 = v140;
  v65 = v136;
  v136(v61, v140, v137);
  sub_1BE04B0A4();
  sub_1BE04A894();
  v66 = v134;
  v134(v62, 1, 1, v143);
  v67 = v132;
  v135(v131, 1, 1, v132);
  sub_1BE048BD4();
  v124 = v63 + 10 * v139;
  v68 = v142;
  v126 = *(v142 + 48);
  *v124 = 10;
  sub_1BE052354();
  v69 = v137;
  v65(v61, v64, v137);
  sub_1BE04B0A4();
  sub_1BE04A894();
  v66(v62, 1, 1, v143);
  v70 = v135;
  v135(v131, 1, 1, v67);
  sub_1BE048BD4();
  v71 = v139;
  v124 = v138 + 11 * v139;
  v126 = *(v68 + 48);
  *v124 = 11;
  sub_1BE052354();
  v72 = v128;
  v73 = v136;
  v136(v128, v140, v69);
  sub_1BE04B0A4();
  sub_1BE04A894();
  v74 = v134;
  v134(v130, 1, 1, v143);
  v75 = v132;
  v70(v131, 1, 1, v132);
  sub_1BE048BD4();
  v76 = v138;
  v126 = *(v142 + 48);
  *(v138 + 12 * v71) = 12;
  sub_1BE052354();
  v73(v72, v140, v137);
  sub_1BE04B0A4();
  sub_1BE04A894();
  v74(v130, 1, 1, v143);
  v77 = v131;
  v135(v131, 1, 1, v75);
  sub_1BE048BD4();
  v78 = v139;
  v124 = v76 + 13 * v139;
  v79 = v142;
  v126 = *(v142 + 48);
  *v124 = 13;
  sub_1BE052354();
  v80 = v137;
  v136(v72, v140, v137);
  sub_1BE04B0A4();
  sub_1BE04A894();
  v134(v130, 1, 1, v143);
  v135(v77, 1, 1, v132);
  sub_1BE048BD4();
  v126 = *(v79 + 48);
  *(v138 + 14 * v78) = 14;
  sub_1BE052354();
  v81 = v72;
  v82 = v72;
  v83 = v140;
  v84 = v136;
  v136(v82, v140, v80);
  sub_1BE04B0A4();
  v85 = v81;
  sub_1BE04A894();
  v86 = v130;
  v87 = v134;
  v134(v130, 1, 1, v143);
  v88 = v77;
  v89 = v132;
  v135(v88, 1, 1, v132);
  sub_1BE048BD4();
  v126 = 16 * v139;
  v90 = v138;
  v123 = (v138 + 15 * v139);
  v124 = *(v142 + 48);
  *v123 = 15;
  sub_1BE052354();
  v91 = v85;
  v92 = v137;
  v84(v91, v83, v137);
  sub_1BE04B0A4();
  sub_1BE04A894();
  v93 = v143;
  v87(v86, 1, 1, v143);
  v94 = v131;
  v95 = v89;
  v96 = v135;
  v135(v131, 1, 1, v95);
  sub_1BE048BD4();
  v123 = (v90 + v126);
  v124 = *(v142 + 48);
  *v123 = 16;
  sub_1BE052354();
  v97 = v128;
  v98 = v140;
  v136(v128, v140, v92);
  sub_1BE04B0A4();
  v99 = v97;
  sub_1BE04A894();
  v100 = v130;
  v134(v130, 1, 1, v93);
  v101 = v132;
  v96(v94, 1, 1, v132);
  sub_1BE048BD4();
  v102 = v138;
  v124 = v138 + v126 + v139;
  v126 = *(v142 + 48);
  *v124 = 17;
  sub_1BE052354();
  v103 = v137;
  v136(v99, v98, v137);
  sub_1BE04B0A4();
  sub_1BE04A894();
  v104 = v134;
  v134(v100, 1, 1, v143);
  v105 = v101;
  v106 = v135;
  v135(v94, 1, 1, v105);
  sub_1BE048BD4();
  v107 = v142;
  v126 = *(v142 + 48);
  *(v102 + 18 * v139) = 18;
  sub_1BE052354();
  v136(v128, v140, v103);
  sub_1BE04B0A4();
  sub_1BE04A894();
  v108 = v130;
  v104(v130, 1, 1, v143);
  v109 = v132;
  v106(v131, 1, 1, v132);
  v110 = v108;
  sub_1BE048BD4();
  v112 = v138;
  v111 = v139;
  v124 = v138 + 19 * v139;
  v126 = *(v107 + 48);
  *v124 = 19;
  sub_1BE052354();
  v113 = v140;
  v136(v128, v140, v137);
  sub_1BE04B0A4();
  sub_1BE04A894();
  v114 = v143;
  v134(v110, 1, 1, v143);
  v115 = v109;
  v116 = v135;
  v135(v131, 1, 1, v115);
  sub_1BE048BD4();
  v126 = *(v142 + 48);
  *(v112 + 20 * v111) = 20;
  sub_1BE052354();
  v117 = v128;
  v136(v128, v113, v137);
  sub_1BE04B0A4();
  sub_1BE04A894();
  v118 = v130;
  v134(v130, 1, 1, v114);
  v119 = v131;
  v116(v131, 1, 1, v132);
  sub_1BE048BD4();
  *(v138 + 21 * v139) = 21;
  sub_1BE052354();
  v136(v117, v140, v137);
  sub_1BE04B0A4();
  sub_1BE04A894();
  v134(v118, 1, 1, v143);
  v135(v119, 1, 1, v132);
  sub_1BE048BD4();
  v120 = sub_1BD1AEB38(v125);
  swift_setDeallocating();
  swift_arrayDestroy();
  result = swift_deallocClassInstance();
  qword_1EBDAB8D8 = v120;
  return result;
}

uint64_t sub_1BD9F4194@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EBD36FF8 != -1)
  {
    swift_once();
  }

  v2 = sub_1BE048E94();
  v3 = __swift_project_value_buffer(v2, qword_1EBDAB8C0);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_1BD9F428C(uint64_t a1)
{
  v2 = sub_1BD51C94C();

  return MEMORY[0x1EEDB2C20](a1, v2);
}

unint64_t sub_1BD9F42DC()
{
  result = qword_1EBD5B998;
  if (!qword_1EBD5B998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD5B998);
  }

  return result;
}

unint64_t sub_1BD9F4334()
{
  result = qword_1EBD5B9A0;
  if (!qword_1EBD5B9A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD5B9A0);
  }

  return result;
}

unint64_t sub_1BD9F438C()
{
  result = qword_1EBD5B9A8;
  if (!qword_1EBD5B9A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD5B9A8);
  }

  return result;
}

uint64_t sub_1BD9F43E0()
{
  if (qword_1EBD37000 != -1)
  {
    swift_once();
  }

  return sub_1BE048C84();
}

uint64_t sub_1BD9F443C()
{
  sub_1BD51AC14();

  return sub_1BE048E14();
}

unint64_t sub_1BD9F448C()
{
  result = qword_1EBD5B9B0;
  if (!qword_1EBD5B9B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD5B9B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD5B9B0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for TransactionEntityType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xEB)
  {
    goto LABEL_17;
  }

  if (a2 + 21 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 21) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 21;
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

      return (*a1 | (v4 << 8)) - 21;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 21;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x16;
  v8 = v6 - 22;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for TransactionEntityType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 21 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 21) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xEB)
  {
    v4 = 0;
  }

  if (a2 > 0xEA)
  {
    v5 = ((a2 - 235) >> 8) + 1;
    *result = a2 + 21;
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
    *result = a2 + 21;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_1BD9F4650(unint64_t a1)
{
  if (a1 > 0x16)
  {
    return 21;
  }

  else
  {
    return byte_1BE10D50A[a1];
  }
}

uint64_t sub_1BD9F4670()
{
  v0 = sub_1BE053BC4();

  if (v0 >= 0x16)
  {
    return 22;
  }

  else
  {
    return v0;
  }
}

char *sub_1BD9F46CC(uint64_t a1, void *a2)
{
  v121 = sub_1BE04A264();
  v4 = *(v121 - 8);
  MEMORY[0x1EEE9AC00](v121, v5);
  v109 = &v98 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v123 = (&v98 - v9);
  v107 = sub_1BE04AF64();
  v10 = *(v107 - 8);
  MEMORY[0x1EEE9AC00](v107, v11);
  v106 = &v98 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13, v14);
  v105 = (&v98 - v15);
  v118 = sub_1BE04B104();
  v16 = *(v118 - 8);
  MEMORY[0x1EEE9AC00](v118, v17);
  v117 = &v98 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v116 = sub_1BE04B2F4();
  v19 = *(v116 - 8);
  MEMORY[0x1EEE9AC00](v116, v20);
  v115 = &v98 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v114 = sub_1BE04B0F4();
  v22 = *(v114 - 8);
  MEMORY[0x1EEE9AC00](v114, v23);
  v113 = &v98 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_1BD3FD30C(a1);
  v26 = MEMORY[0x1E69E7CC0];
  if (!v25)
  {
    return v26;
  }

  v138 = MEMORY[0x1E69E7CC0];
  v27 = v25 & 0xFFFFFFFFFFFFFF8;
  v126 = v25;
  if (v25 >> 62)
  {
LABEL_62:
    v28 = sub_1BE053704();
    if (v28)
    {
      goto LABEL_4;
    }

    goto LABEL_63;
  }

  v28 = *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v28)
  {
LABEL_63:

    v27 = MEMORY[0x1E69E7CC0];
LABEL_64:
    v26 = sub_1BD3F0588(v27);

    return v26;
  }

LABEL_4:
  v125 = v27;
  v29 = 0;
  v131 = v126 & 0xC000000000000001;
  v104 = v22 + 1;
  v103 = (v16 + 104);
  v102 = (v16 + 8);
  v16 = v126;
  v101 = v19 + 1;
  v99 = (v10 + 4);
  v98 = (v10 + 1);
  v119 = (v4 + 8);
  v130 = *MEMORY[0x1E6998FF0];
  v122 = *MEMORY[0x1E69BC1D0];
  v129 = *MEMORY[0x1E6998FF8];
  v110 = *MEMORY[0x1E69BC1B0];
  v100 = *MEMORY[0x1E6969868];
  v128 = *MEMORY[0x1E6999000];
  v27 = MEMORY[0x1E69E7CC0];
  v108 = *MEMORY[0x1E69BC220];
  v120 = a2;
  v127 = v28;
  while (1)
  {
    if (v131)
    {
      v31 = MEMORY[0x1BFB40900](v29, v16);
    }

    else
    {
      if (v29 >= *(v125 + 16))
      {
        goto LABEL_61;
      }

      v31 = *(v16 + 8 * v29 + 32);
    }

    v22 = v31;
    v32 = v29 + 1;
    if (__OFADD__(v29, 1))
    {
      __break(1u);
LABEL_61:
      __break(1u);
      goto LABEL_62;
    }

    v33 = [v31 type];
    if (!v33)
    {
      sub_1BE052434();
LABEL_22:

      sub_1BE052434();

      sub_1BE052434();

LABEL_23:
      v4 = v22;
      v10 = &v138;
      MEMORY[0x1BFB3F7A0]();
      if (*((v138 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v138 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1BE052774();
      }

      sub_1BE0527C4();

      v27 = v138;
      goto LABEL_6;
    }

    v34 = v33;
    v35 = sub_1BE052434();
    v4 = v36;

    v37 = sub_1BE052434();
    if (!v4)
    {
      v28 = v127;
      goto LABEL_22;
    }

    if (v35 == v37 && v4 == v38)
    {
    }

    else
    {
      v40 = sub_1BE053B84();

      if ((v40 & 1) == 0)
      {
        goto LABEL_30;
      }
    }

    v41 = [v22 stringValue];
    if (!v41)
    {
      goto LABEL_30;
    }

    v10 = v41;
    v42 = [a2 paymentSetupFieldWithIdentifier_];
    if (!v42)
    {
      break;
    }

    v30 = v42;

    [v30 setCurrentValue_];
    [v30 setOriginalCameraCaptureValue_];

    [v30 setSource_];
    v16 = v126;
    v28 = v127;
LABEL_6:
    ++v29;
    if (v32 == v28)
    {

      goto LABEL_64;
    }
  }

LABEL_30:
  v124 = v27;
  if (v35 == sub_1BE052434() && v4 == v43)
  {

    goto LABEL_34;
  }

  v44 = sub_1BE053B84();

  if (v44)
  {
LABEL_34:
    objc_opt_self();
    v45 = swift_dynamicCastObjCClass();
    if (v45)
    {
      v46 = v45;
      v47 = v22;
      v48 = [a2 paymentSetupFieldWithIdentifier_];
      if (v48)
      {
        v111 = v48;
        v112 = v47;
        v136 = 0;
        v137 = 0xE000000000000000;
        v134 = 0;
        v135 = 0xE000000000000000;
        v49 = [v46 dayValue];
        if (v49)
        {
          v50 = v49;
          MEMORY[0x1BFB3F610](3105892, 0xE300000000000000);
          v51 = [v50 description];
          v52 = sub_1BE052434();
          v54 = v53;

          v132 = v52;
          v133 = v54;
          a2 = v120;
          MEMORY[0x1BFB3F610](47, 0xE100000000000000);
          MEMORY[0x1BFB3F610](v132, v133);
        }

        v55 = [v46 monthValue];
        if (v55)
        {
          v56 = v55;
          MEMORY[0x1BFB3F610](3099981, 0xE300000000000000);
          v57 = [v56 description];
          v58 = sub_1BE052434();
          v60 = v59;

          v132 = v58;
          v133 = v60;
          a2 = v120;
          MEMORY[0x1BFB3F610](47, 0xE100000000000000);
          MEMORY[0x1BFB3F610](v132, v133);
        }

        v61 = [v46 yearValue];
        if (v61)
        {
          v62 = v61;
          MEMORY[0x1BFB3F610](31097, 0xE200000000000000);
          v63 = [v62 description];
          v64 = sub_1BE052434();
          v66 = v65;

          MEMORY[0x1BFB3F610](v64, v66);
        }

        v19 = [objc_allocWithZone(MEMORY[0x1E696AB78]) init];
        v67 = v113;
        sub_1BE04AFF4();
        v68 = sub_1BE04B044();
        (*v104)(v67, v114);
        [v19 setLocale_];

        v69 = v117;
        v70 = v118;
        (*v103)(v117, v100, v118);
        v71 = v115;
        sub_1BE04B114();
        (*v102)(v69, v70);
        v72 = sub_1BE04B1D4();
        (*v101)(v71, v116);
        [v19 setCalendar_];

        v73 = sub_1BE052404();

        [v19 setDateFormat_];

        v74 = sub_1BE052404();

        v75 = [v19 dateFromString_];

        if (v75)
        {

          v76 = v112;

          v77 = v106;
          sub_1BE04AEE4();

          v10 = v105;
          v78 = v107;
          (*v99)(v105, v77, v107);
          v79 = sub_1BE04AE64();
          v22 = v111;
          [v111 setCurrentValue_];

          v4 = sub_1BE04AE64();
          [v22 setOriginalCameraCaptureValue_];

          [v22 setSource_];
          (*v98)(v10, v78);
LABEL_58:
          v16 = v126;
          v28 = v127;
          v27 = v124;
          goto LABEL_6;
        }
      }

      else
      {
      }
    }
  }

  if (v35 == sub_1BE052434() && v4 == v80)
  {

    v19 = v123;
    v16 = v126;
    v28 = v127;
  }

  else
  {
    v81 = sub_1BE053B84();

    v19 = v123;
    v16 = v126;
    v28 = v127;
    if ((v81 & 1) == 0)
    {
      goto LABEL_23;
    }
  }

  v82 = [v22 stringValue];
  if (!v82)
  {
    goto LABEL_23;
  }

  v83 = v82;
  v84 = [a2 paymentSetupFieldWithIdentifier_];
  if (!v84)
  {

    goto LABEL_23;
  }

  v4 = v84;
  [v84 setCurrentValue_];
  [v4 setOriginalCameraCaptureValue_];

  [v4 setSource_];
  v85 = v109;
  sub_1BE04A214();
  sub_1BE04A244();
  v86 = *v119;
  (*v119)(v85, v121);
  result = [v22 formattedStringValue];
  if (result)
  {
    v88 = result;
    v89 = sub_1BE052434();
    v91 = v90;

    v136 = v89;
    v137 = v91;
    sub_1BD0DDEBC();
    v92 = sub_1BE053524();

    v136 = v92;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD45AA0);
    sub_1BD03B274();
    v93 = v19;
    v19 = sub_1BE0522E4();
    v10 = v94;

    v95 = [v4 textFieldObject];
    if (v95)
    {
      v96 = v95;
      v97 = sub_1BE052404();

      [v96 updateDisplayFormat_];

      v86(v93, v121);
    }

    else
    {
      v86(v93, v121);
    }

    a2 = v120;
    goto LABEL_58;
  }

  __break(1u);
  return result;
}

uint64_t sub_1BD9F550C(uint64_t a1)
{
  v2[10] = a1;
  v2[11] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD45CC0);
  v2[12] = swift_task_alloc();
  v3 = sub_1BE0498B4();
  v2[13] = v3;
  v2[14] = *(v3 - 8);
  v2[15] = swift_task_alloc();
  v2[16] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5B9D8);
  v2[17] = swift_task_alloc();
  v2[18] = swift_task_alloc();
  v4 = type metadata accessor for FinanceKitGroupMetadataDataProvider.Metadata();
  v2[19] = v4;
  v2[20] = *(v4 - 8);
  v2[21] = swift_task_alloc();
  v2[22] = swift_task_alloc();
  v2[23] = swift_task_alloc();
  v2[24] = swift_task_alloc();
  v2[25] = swift_task_alloc();
  v2[26] = swift_task_alloc();
  v5 = sub_1BE04AFE4();
  v2[27] = v5;
  v2[28] = *(v5 - 8);
  v2[29] = swift_task_alloc();
  v2[30] = swift_task_alloc();
  v2[31] = swift_task_alloc();
  v2[32] = swift_task_alloc();
  v2[33] = swift_task_alloc();
  v2[34] = swift_task_alloc();
  v2[35] = swift_task_alloc();
  v2[36] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1BD9F579C, v1, 0);
}

uint64_t sub_1BD9F579C()
{
  v1 = *(v0 + 80);
  v86 = sub_1BD1AC9E4(MEMORY[0x1E69E7CC0]);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = *(v0 + 224);
    v81 = *(v0 + 160);
    v4 = *(v0 + 88);
    v5 = (*(v3 + 80) + 32) & ~*(v3 + 80);
    v6 = *(v0 + 80) + v5;
    swift_beginAccess();
    v7 = *(v3 + 16);
    v3 += 16;
    v89 = v7;
    v85 = (v3 - 8);
    v83 = (v3 + 16);
    v87 = *(v3 + 56);
    v88 = MEMORY[0x1E69E7CC0];
    v79 = v5;
    v80 = v4;
    v7(*(v0 + 288), v6, *(v0 + 216));
    while (1)
    {
      v10 = *(v4 + 120);
      if (!*(v10 + 16))
      {
        goto LABEL_14;
      }

      v11 = *(v0 + 288);
      sub_1BE048C84();
      v12 = sub_1BD14951C(v11);
      if ((v13 & 1) == 0)
      {
        break;
      }

      v15 = *(v0 + 280);
      v14 = *(v0 + 288);
      v17 = *(v0 + 208);
      v16 = *(v0 + 216);
      v18 = *(v0 + 192);
      v19 = *(v0 + 200);
      v82 = *(v81 + 72);
      sub_1BD9F7240(*(v10 + 56) + v82 * v12, v19);

      sub_1BD9F72A4(v19, v17);
      v89(v15, v14, v16);
      sub_1BD9F7240(v17, v18);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v21 = sub_1BD14951C(v15);
      v25 = v86[2];
      v26 = (v22 & 1) == 0;
      v27 = __OFADD__(v25, v26);
      v28 = v25 + v26;
      if (v27)
      {
        __break(1u);
LABEL_45:
        __break(1u);
        return MEMORY[0x1EEDC14C0](v21, v22, v23, v24);
      }

      v29 = v86;
      v30 = v22;
      if (v86[3] >= v28)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v46 = v21;
          sub_1BD5089D0();
          v21 = v46;
          v29 = v86;
        }
      }

      else
      {
        v31 = *(v0 + 280);
        sub_1BD504A24(v28, isUniquelyReferenced_nonNull_native);
        v21 = sub_1BD14951C(v31);
        if ((v30 & 1) != (v32 & 1))
        {

          return sub_1BE053C14();
        }

        v29 = v86;
      }

      v38 = *(v0 + 280);
      v37 = *(v0 + 288);
      v40 = *(v0 + 208);
      v39 = *(v0 + 216);
      v41 = *(v0 + 192);
      v86 = v29;
      if (v30)
      {
        sub_1BD9F7308(v41, v29[7] + v21 * v82);
        v8 = *v85;
        (*v85)(v38, v39);
        sub_1BD9F717C(v40);
        v8(v37, v39);
      }

      else
      {
        v29[(v21 >> 6) + 8] |= 1 << v21;
        v42 = v21;
        v89(v29[6] + v21 * v87, v38, v39);
        sub_1BD9F72A4(v41, v86[7] + v42 * v82);
        v43 = *v85;
        (*v85)(v38, v39);
        sub_1BD9F717C(v40);
        v21 = (v43)(v37, v39);
        v44 = v86[2];
        v27 = __OFADD__(v44, 1);
        v45 = v44 + 1;
        if (v27)
        {
          goto LABEL_45;
        }

        v86[2] = v45;
      }

      v5 = v79;
      v4 = v80;
      v9 = v87;
LABEL_5:
      v6 += v9;
      if (!--v2)
      {

        goto LABEL_25;
      }

      v89(*(v0 + 288), v6, *(v0 + 216));
    }

LABEL_14:
    v89(*(v0 + 272), *(v0 + 288), *(v0 + 216));
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v88 = sub_1BD1D82D4(0, *(v88 + 2) + 1, 1, v88);
    }

    v34 = *(v88 + 2);
    v33 = *(v88 + 3);
    if (v34 >= v33 >> 1)
    {
      v88 = sub_1BD1D82D4(v33 > 1, v34 + 1, 1, v88);
    }

    v35 = *(v0 + 272);
    v36 = *(v0 + 216);
    (*v85)(*(v0 + 288), v36);
    *(v88 + 2) = v34 + 1;
    v9 = v87;
    (*v83)(&v88[v5 + v34 * v87], v35, v36);
    goto LABEL_5;
  }

LABEL_25:
  *(v0 + 296) = *(*(v0 + 88) + 112);
  v47 = sub_1BE048F94();
  *(v0 + 304) = v47;
  v48 = *(v0 + 224);
  v49 = *(v0 + 112);
  v50 = *(v47 + 32);
  *(v0 + 392) = v50;
  v51 = -1;
  v52 = -1 << v50;
  v53 = *(v47 + 64);
  if (-v52 < 64)
  {
    v51 = ~(-1 << -v52);
  }

  *(v0 + 312) = v86;
  *(v0 + 320) = v86;
  v54 = v51 & v53;
  if (v54)
  {
    v55 = 0;
LABEL_32:
    v58 = *(v0 + 264);
    v59 = *(v0 + 216);
    v61 = *(v0 + 128);
    v60 = *(v0 + 136);
    v84 = *(v0 + 104);
    v90 = (v54 - 1) & v54;
    v62 = __clz(__rbit64(v54)) | (v55 << 6);
    v63 = v47;
    (*(v48 + 16))(v58, *(v47 + 48) + *(v48 + 72) * v62, v59);
    (*(v49 + 16))(v61, *(v63 + 56) + *(v49 + 72) * v62, v84);
    v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD5B9E0);
    v65 = *(v64 + 48);
    (*(v48 + 32))(v60, v58, v59);
    (*(v49 + 32))(v60 + v65, v61, v84);
    (*(*(v64 - 8) + 56))(v60, 0, 1, v64);
    v66 = v90;
    v57 = v55;
  }

  else
  {
    v56 = 0;
    v57 = ((63 - v52) >> 6) - 1;
    while (v57 != v56)
    {
      v55 = v56 + 1;
      v54 = *(v47 + 72 + 8 * v56++);
      if (v54)
      {
        goto LABEL_32;
      }
    }

    v77 = *(v0 + 136);
    v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD5B9E0);
    (*(*(v78 - 8) + 56))(v77, 1, 1, v78);
    v66 = 0;
  }

  *(v0 + 328) = v66;
  *(v0 + 336) = v57;
  v67 = *(v0 + 144);
  sub_1BD9F709C(*(v0 + 136), v67);
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD5B9E0);
  if ((*(*(v68 - 8) + 48))(v67, 1, v68) == 1)
  {

    v69 = *(v0 + 8);

    return v69(v86);
  }

  else
  {
    v71 = *(v0 + 144);
    v73 = *(v0 + 112);
    v72 = *(v0 + 120);
    v74 = *(v0 + 104);
    v75 = *(v68 + 48);
    (*(*(v0 + 224) + 32))(*(v0 + 256), v71, *(v0 + 216));
    (*(v73 + 32))(v72, v71 + v75, v74);
    sub_1BE049884();
    v76 = swift_task_alloc();
    *(v0 + 344) = v76;
    *v76 = v0;
    v76[1] = sub_1BD9F6194;
    v22 = *(v0 + 248);
    v21 = *(v0 + 96);
    v23 = 0;
    v24 = 1;

    return MEMORY[0x1EEDC14C0](v21, v22, v23, v24);
  }
}

uint64_t sub_1BD9F6194()
{
  v2 = *v1;
  *(*v1 + 352) = v0;

  v3 = v2[31];
  v4 = v2[27];
  v5 = v2[28];
  if (v0)
  {
    v6 = v2[11];
    v7 = *(v5 + 8);
    v2[47] = v7;
    v2[48] = (v5 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v7(v3, v4);

    v8 = sub_1BD9F6D84;
    v9 = v6;
  }

  else
  {
    v10 = v2[11];
    v11 = *(v5 + 8);
    v2[45] = v11;
    v2[46] = (v5 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v11(v3, v4);
    v8 = sub_1BD9F6314;
    v9 = v10;
  }

  return MEMORY[0x1EEE6DFA0](v8, v9, 0);
}

uint64_t sub_1BD9F6314()
{
  v1 = *(v0 + 352);
  v2 = *(v0 + 184);
  v3 = *(v0 + 152);
  v4 = *(v0 + 96);
  v5 = sub_1BE049894();
  v7 = v6;
  sub_1BE049884();
  sub_1BD9F710C(v4, v2 + *(v3 + 24));
  sub_1BE0498A4();
  *v2 = v5;
  v2[1] = v7;
  sub_1BE052984();
  if (v1)
  {
    v8 = *(v0 + 360);
    v9 = *(v0 + 256);
    v10 = *(v0 + 216);
    v11 = *(v0 + 184);
    v12 = *(v0 + 112);
    v13 = *(v0 + 120);
    v15 = *(v0 + 96);
    v14 = *(v0 + 104);

    sub_1BD9F717C(v11);
    sub_1BD9F71D8(v15);
    (*(v12 + 8))(v13, v14);
    v8(v9, v10);

    v16 = *(v0 + 8);

    return v16();
  }

  v18 = *(v0 + 240);
  v20 = *(v0 + 176);
  v19 = *(v0 + 184);
  v21 = *(v0 + 88);
  v22 = *(*(v0 + 224) + 16);
  (v22)(v18, *(v0 + 256), *(v0 + 216));
  swift_beginAccess();
  sub_1BD9F7240(v19, v20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v24 = *(v21 + 120);
  *(v0 + 64) = v24;
  *(v21 + 120) = 0x8000000000000000;
  v25 = sub_1BD14951C(v18);
  v27 = *(v24 + 16);
  v28 = (v26 & 1) == 0;
  v29 = __OFADD__(v27, v28);
  v30 = v27 + v28;
  if (v29)
  {
    goto LABEL_45;
  }

  LOBYTE(v18) = v26;
  if (*(v24 + 24) >= v30)
  {
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      goto LABEL_47;
    }

    while (1)
    {
LABEL_10:
      v33 = *(v0 + 64);
      v34 = *(v0 + 360);
      v35 = *(v0 + 240);
      if (v18)
      {
        v36 = *(v0 + 216);
        v113 = *(*(v0 + 160) + 72);
        sub_1BD9F7308(*(v0 + 176), v33[7] + v113 * v25);
        v34(v35, v36);
      }

      else
      {
        v38 = *(v0 + 216);
        v37 = *(v0 + 224);
        v39 = *(v0 + 176);
        v40 = *(v0 + 160);
        v33[(v25 >> 6) + 8] |= 1 << v25;
        v41 = v22;
        v22 = v25;
        v115 = v41;
        v41(v33[6] + *(v37 + 72) * v25, v35, v38);
        v42 = *(v40 + 72);
        sub_1BD9F72A4(v39, v33[7] + v42 * v22);
        v25 = (v34)(v35, v38);
        v43 = v33[2];
        v29 = __OFADD__(v43, 1);
        v44 = v43 + 1;
        if (v29)
        {
          __break(1u);
LABEL_49:
          v107 = v25;
          sub_1BD5089D0();
          v25 = v107;
          goto LABEL_21;
        }

        v113 = v42;
        v33[2] = v44;
        v22 = v115;
      }

      v45 = *(v0 + 312);
      v18 = *(v0 + 256);
      v46 = *(v0 + 232);
      v47 = *(v0 + 216);
      v48 = *(v0 + 184);
      v49 = *(v0 + 168);
      *(*(v0 + 88) + 120) = v33;

      swift_endAccess();
      (v22)(v46, v18, v47);
      sub_1BD9F7240(v48, v49);
      LODWORD(v18) = swift_isUniquelyReferenced_nonNull_native();
      *(v0 + 72) = v45;
      v25 = sub_1BD14951C(v46);
      v51 = *(v45 + 16);
      v52 = (v50 & 1) == 0;
      v29 = __OFADD__(v51, v52);
      v53 = v51 + v52;
      if (v29)
      {
        goto LABEL_46;
      }

      LOBYTE(v39) = v50;
      if (*(*(v0 + 312) + 24) < v53)
      {
        v54 = *(v0 + 232);
        sub_1BD504A24(v53, v18);
        v25 = sub_1BD14951C(v54);
        if ((v39 & 1) != (v55 & 1))
        {
          goto LABEL_17;
        }

        goto LABEL_21;
      }

      if ((v18 & 1) == 0)
      {
        goto LABEL_49;
      }

LABEL_21:
      v56 = *(v0 + 72);
      v57 = *(v0 + 360);
      v18 = *(v0 + 368);
      v112 = *(v0 + 256);
      v58 = *(v0 + 232);
      v116 = v56;
      if (v39)
      {
        v59 = *(v0 + 216);
        v60 = *(v0 + 184);
        v62 = *(v0 + 112);
        v61 = *(v0 + 120);
        v22 = *(v0 + 96);
        v63 = *(v0 + 104);
        sub_1BD9F7308(*(v0 + 168), *(v56 + 56) + v25 * v113);
        v57(v58, v59);
        sub_1BD9F717C(v60);
        sub_1BD9F71D8(v22);
        (*(v62 + 8))(v61, v63);
        v25 = (v57)(v112, v59);
        v64 = v116;
      }

      else
      {
        v66 = *(v0 + 216);
        v65 = *(v0 + 224);
        v67 = *(v0 + 168);
        v110 = *(v0 + 120);
        v68 = v22;
        v69 = *(v0 + 112);
        v108 = *(v0 + 184);
        v109 = *(v0 + 104);
        v70 = *(v0 + 96);
        *(v56 + 8 * (v25 >> 6) + 64) |= 1 << v25;
        v71 = v25;
        v68(*(v56 + 48) + *(v65 + 72) * v25, v58, v66);
        sub_1BD9F72A4(v67, *(v116 + 56) + v71 * v113);
        v57(v58, v66);
        sub_1BD9F717C(v108);
        sub_1BD9F71D8(v70);
        v72 = *(v69 + 8);
        v22 = v69 + 8;
        v72(v110, v109);
        v25 = (v57)(v112, v66);
        v64 = v116;
        v76 = *(v116 + 16);
        v29 = __OFADD__(v76, 1);
        v77 = v76 + 1;
        if (v29)
        {
          __break(1u);
          return MEMORY[0x1EEDC14C0](v25, v73, v74, v75);
        }

        *(v116 + 16) = v77;
      }

      v78 = *(v0 + 328);
      v79 = *(v0 + 336);
      *(v0 + 312) = v64;
      *(v0 + 320) = v64;
      if (v78)
      {
        v80 = *(v0 + 304);
LABEL_35:
        v85 = *(v0 + 264);
        v86 = *(v0 + 216);
        v87 = *(v0 + 224);
        v89 = *(v0 + 128);
        v88 = *(v0 + 136);
        v90 = *(v0 + 112);
        v111 = *(v0 + 104);
        v114 = (v78 - 1) & v78;
        v91 = __clz(__rbit64(v78)) | (v79 << 6);
        (*(v87 + 16))(v85, *(v80 + 48) + *(v87 + 72) * v91, v86);
        (*(v90 + 16))(v89, *(v80 + 56) + *(v90 + 72) * v91, v111);
        v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD5B9E0);
        v93 = *(v92 + 48);
        (*(v87 + 32))(v88, v85, v86);
        (*(v90 + 32))(v88 + v93, v89, v111);
        (*(*(v92 - 8) + 56))(v88, 0, 1, v92);
        v94 = v114;
        v83 = v79;
LABEL_36:
        *(v0 + 328) = v94;
        *(v0 + 336) = v83;
        v95 = *(v0 + 144);
        sub_1BD9F709C(*(v0 + 136), v95);
        v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD5B9E0);
        if ((*(*(v96 - 8) + 48))(v95, 1, v96) == 1)
        {

          v97 = *(v0 + 8);

          return v97(v116);
        }

        v98 = *(v0 + 144);
        v100 = *(v0 + 112);
        v99 = *(v0 + 120);
        v101 = *(v0 + 104);
        v102 = *(v96 + 48);
        (*(*(v0 + 224) + 32))(*(v0 + 256), v98, *(v0 + 216));
        (*(v100 + 32))(v99, v98 + v102, v101);
        sub_1BE049884();
        v103 = swift_task_alloc();
        *(v0 + 344) = v103;
        *v103 = v0;
        v103[1] = sub_1BD9F6194;
        v73 = *(v0 + 248);
        v25 = *(v0 + 96);
        v74 = 0;
        v75 = 1;

        return MEMORY[0x1EEDC14C0](v25, v73, v74, v75);
      }

      v81 = ((1 << *(v0 + 392)) + 63) >> 6;
      if (v81 <= (v79 + 1))
      {
        v82 = v79 + 1;
      }

      else
      {
        v82 = ((1 << *(v0 + 392)) + 63) >> 6;
      }

      v83 = v82 - 1;
      while (1)
      {
        v84 = v79 + 1;
        if (__OFADD__(v79, 1))
        {
          break;
        }

        if (v84 >= v81)
        {
          v104 = *(v0 + 136);
          v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD5B9E0);
          (*(*(v105 - 8) + 56))(v104, 1, 1, v105);
          v94 = 0;
          goto LABEL_36;
        }

        v80 = *(v0 + 304);
        v78 = *(v80 + 8 * v84 + 64);
        ++v79;
        if (v78)
        {
          v79 = v84;
          goto LABEL_35;
        }
      }

      __break(1u);
LABEL_45:
      __break(1u);
LABEL_46:
      __break(1u);
LABEL_47:
      v106 = v25;
      sub_1BD5089D0();
      v25 = v106;
    }
  }

  v31 = *(v0 + 240);
  sub_1BD504A24(v30, isUniquelyReferenced_nonNull_native);
  v25 = sub_1BD14951C(v31);
  if ((v18 & 1) == (v32 & 1))
  {
    goto LABEL_10;
  }

LABEL_17:

  return sub_1BE053C14();
}

uint64_t sub_1BD9F6D84()
{
  v1 = v0[47];
  v2 = v0[32];
  v3 = v0[27];
  v5 = v0[14];
  v4 = v0[15];
  v6 = v0[13];

  (*(v5 + 8))(v4, v6);
  v1(v2, v3);

  v7 = v0[1];

  return v7();
}

uint64_t sub_1BD9F6F18()
{

  swift_defaultActor_destroy();

  return MEMORY[0x1EEE6DEF0](v0);
}

uint64_t type metadata accessor for FinanceKitGroupMetadataDataProvider.Metadata()
{
  result = qword_1EBD5B9C8;
  if (!qword_1EBD5B9C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1BD9F6FF0()
{
  sub_1BE04AFE4();
  if (v0 <= 0x3F)
  {
    sub_1BD41DE58();
    if (v1 <= 0x3F)
    {
      sub_1BE049B04();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_1BD9F709C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5B9D8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BD9F710C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD45CC0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BD9F717C(uint64_t a1)
{
  v2 = type metadata accessor for FinanceKitGroupMetadataDataProvider.Metadata();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1BD9F71D8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD45CC0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1BD9F7240(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FinanceKitGroupMetadataDataProvider.Metadata();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BD9F72A4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FinanceKitGroupMetadataDataProvider.Metadata();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BD9F7308(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FinanceKitGroupMetadataDataProvider.Metadata();
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BD9F7398(unint64_t a1, uint64_t (*a2)(uint64_t, void), void (*a3)(uint64_t, uint64_t, unint64_t))
{
  if (!(a1 >> 62))
  {
    return a1 & 0xFFFFFFFFFFFFFF8;
  }

  v7 = sub_1BE053704();
  if (!v7)
  {
LABEL_7:

    return MEMORY[0x1E69E7CC0];
  }

  v8 = v7;
  v9 = a2(v7, 0);
  a3(v9 + 32, v8, a1);
  v11 = v10;

  result = v9;
  if (v11 != v8)
  {
    __break(1u);
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_1BD9F743C()
{
  v1 = *(v0 + 8);
  v2 = *(v1 + 16);
  if (!v2)
  {
    return 0;
  }

  for (i = v1 + 56; ; i += 32)
  {
    v5 = *(i - 24);
    v4 = *(i - 16);
    v6 = v0[1];
    v12 = *v0;
    v13 = v6;
    sub_1BE048C84();
    sub_1BE048C84();
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD48B70);
    MEMORY[0x1BFB3E970](v11, v7);
    if (v5 == v11[0] && v4 == v11[1])
    {
      break;
    }

    v9 = sub_1BE053B84();

    if (v9)
    {
      return v5;
    }

    if (!--v2)
    {
      return 0;
    }
  }

  return v5;
}

uint64_t sub_1BD9F7554@<X0>(uint64_t a1@<X8>)
{
  v18[1] = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5BAF8);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = v18 - v5;
  v7 = swift_allocObject();
  v8 = v1[5];
  v7[5] = v1[4];
  v7[6] = v8;
  *(v7 + 105) = *(v1 + 89);
  v9 = v1[1];
  v7[1] = *v1;
  v7[2] = v9;
  v10 = v1[3];
  v7[3] = v1[2];
  v7[4] = v10;
  v19 = v1;
  sub_1BD9FA9D0(v1, v21);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5BB00);
  sub_1BD9FAA08();
  sub_1BE051704();
  v20 = v1[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54350);
  sub_1BE0516C4();
  v11 = swift_allocObject();
  v12 = v1[5];
  v11[5] = v1[4];
  v11[6] = v12;
  *(v11 + 105) = *(v1 + 89);
  v13 = v1[1];
  v11[1] = *v1;
  v11[2] = v13;
  v14 = v1[3];
  v11[3] = v1[2];
  v11[4] = v14;
  sub_1BD9FA9D0(v1, v21);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5BB20);
  sub_1BD0DE4F4(&qword_1EBD5BB28, &qword_1EBD5BAF8);
  v15 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD5BB30);
  v16 = sub_1BD9FAB0C();
  v21[0] = v15;
  v21[1] = MEMORY[0x1E69E6158];
  v21[2] = v16;
  v21[3] = MEMORY[0x1E69E6180];
  swift_getOpaqueTypeConformance2();
  sub_1BE050F64();

  return (*(v3 + 8))(v6, v2);
}

uint64_t sub_1BD9F785C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v22 = a2;
  v21 = sub_1BE04FF64();
  v3 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21, v4);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD5BB10);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v19 - v9;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD5BB50);
  v11 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20, v12);
  v14 = &v19 - v13;
  *v10 = sub_1BE04F504();
  *(v10 + 1) = 0;
  v10[16] = 1;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD549B0);
  sub_1BD9F7CD4(a1, &v10[*(v15 + 44)]);
  sub_1BE04FF44();
  v16 = sub_1BD0DE4F4(&qword_1EBD549A0, &unk_1EBD5BB10);
  sub_1BE050D14();
  (*(v3 + 8))(v6, v21);
  sub_1BD0DE53C(v10, &unk_1EBD5BB10);
  sub_1BE052434();
  v23 = v7;
  v24 = v16;
  swift_getOpaqueTypeConformance2();
  v17 = v20;
  sub_1BE050DE4();

  return (*(v11 + 8))(v14, v17);
}

uint64_t sub_1BD9F7B20(__int128 *a1)
{
  v12 = a1[4];
  *v13 = a1[5];
  *&v13[9] = *(a1 + 89);
  v8 = *a1;
  v9 = a1[1];
  v10 = a1[2];
  v11 = a1[3];
  *&v13[32] = sub_1BE04EC54();
  v13[40] = sub_1BE0501D4();
  sub_1BD9FA9D0(a1, v14);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD48B70);
  MEMORY[0x1BFB3E970](v14, v2);
  v3 = swift_allocObject();
  v4 = a1[5];
  v3[5] = a1[4];
  v3[6] = v4;
  *(v3 + 105) = *(a1 + 89);
  v5 = a1[1];
  v3[1] = *a1;
  v3[2] = v5;
  v6 = a1[3];
  v3[3] = a1[2];
  v3[4] = v6;
  sub_1BD9FA9D0(a1, v14);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5BB30);
  sub_1BD9FAB0C();
  sub_1BE051074();

  v14[4] = v12;
  v14[5] = *v13;
  v15[0] = *&v13[16];
  *(v15 + 9) = *&v13[25];
  v14[0] = v8;
  v14[1] = v9;
  v14[2] = v10;
  v14[3] = v11;
  return sub_1BD0DE53C(v14, &qword_1EBD5BB30);
}

id sub_1BD9F7CD4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v84 = a1;
  v94 = a2;
  v2 = sub_1BE04C894();
  v87 = *(v2 - 8);
  v88 = v2;
  MEMORY[0x1EEE9AC00](v2, v3);
  v86 = &v80 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1BE04C764();
  v92 = *(v5 - 8);
  v93 = v5;
  MEMORY[0x1EEE9AC00](v5, v6);
  v91 = &v80 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v89 = &v80 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD5BB60);
  MEMORY[0x1EEE9AC00](v11 - 8, v12);
  v90 = &v80 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14, v15);
  v95 = &v80 - v16;
  v17 = sub_1BE04BD74();
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17, v19);
  v21 = &v80 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD452C0);
  v82 = *(v22 - 8);
  v83 = v22;
  MEMORY[0x1EEE9AC00](v22, v23);
  v85 = &v80 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25, v26);
  v81 = &v80 - v27;
  v30 = MEMORY[0x1EEE9AC00](v28, v29);
  v96 = &v80 - v31;
  (*(v18 + 104))(v21, *MEMORY[0x1E69B8068], v17, v30);
  result = PKPassKitBundle();
  if (result)
  {
    v33 = result;
    v34 = sub_1BE04B6F4();
    v36 = v35;

    (*(v18 + 8))(v21, v17);
    v97 = v34;
    v98 = v36;
    sub_1BD0DDEBC();
    v37 = sub_1BE0506C4();
    v39 = v38;
    LOBYTE(v34) = v40;
    sub_1BE051464();
    v41 = sub_1BE050564();
    v43 = v42;
    v45 = v44;
    v47 = v46;

    sub_1BD0DDF10(v37, v39, v34 & 1);

    v97 = v41;
    v98 = v43;
    LOBYTE(v39) = v45 & 1;
    v99 = v45 & 1;
    v100 = v47;
    sub_1BE052434();
    v48 = v96;
    sub_1BE050DE4();

    sub_1BD0DDF10(v41, v43, v39);

    v49 = v84;
    sub_1BD9F743C();
    if (v52)
    {
      v97 = v50;
      v98 = v51;
      sub_1BE048C84();
      v53 = sub_1BE0506C4();
      v55 = v54;
      v57 = v56;

      if (*(v49 + 72))
      {
        sub_1BE051494();
      }

      else
      {
        sub_1BE051264();
      }

      v60 = sub_1BE050564();
      v62 = v61;
      v64 = v63;
      v66 = v65;

      sub_1BD0DDF10(v53, v55, v57 & 1);

      v97 = v60;
      v98 = v62;
      v99 = v64 & 1;
      v100 = v66;
      sub_1BE052434();
      v67 = v81;
      sub_1BE050DE4();

      sub_1BD0DDF10(v60, v62, v64 & 1);

      v59 = v95;
      sub_1BD133260(v67, v95);
      v58 = 0;
      v48 = v96;
    }

    else
    {
      v58 = 1;
      v59 = v95;
    }

    (*(v82 + 56))(v59, v58, 1, v83);
    (*(v87 + 104))(v86, *MEMORY[0x1E69BCA00], v88);
    v68 = v89;
    sub_1BE04C754();
    v69 = v85;
    sub_1BD0DE19C(v48, v85, &qword_1EBD452C0);
    LOBYTE(v97) = 1;
    v70 = v90;
    sub_1BD0DE19C(v59, v90, &unk_1EBD5BB60);
    v71 = v91;
    v72 = v92;
    v73 = *(v92 + 16);
    v74 = v93;
    v73(v91, v68, v93);
    v75 = v94;
    sub_1BD0DE19C(v69, v94, &qword_1EBD452C0);
    v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD549B8);
    v77 = v75 + v76[12];
    v78 = v97;
    *v77 = 0;
    *(v77 + 8) = v78;
    sub_1BD0DE19C(v70, v75 + v76[16], &unk_1EBD5BB60);
    v73((v75 + v76[20]), v71, v74);
    v79 = *(v72 + 8);
    v79(v68, v74);
    sub_1BD0DE53C(v95, &unk_1EBD5BB60);
    sub_1BD0DE53C(v96, &qword_1EBD452C0);
    v79(v71, v74);
    sub_1BD0DE53C(v70, &unk_1EBD5BB60);
    return sub_1BD0DE53C(v69, &qword_1EBD452C0);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1BD9F84C0(void *a1)
{
  v2 = [a1 viewControllers];
  sub_1BD0E5E8C(0, &qword_1EBD43450);
  v3 = sub_1BE052744();

  if (v3 >> 62)
  {
    if (sub_1BE053704())
    {
      goto LABEL_3;
    }

LABEL_15:

    return;
  }

  if (!*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_15;
  }

LABEL_3:
  if ((v3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x1BFB40900](0, v3);
  }

  else
  {
    if (!*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
LABEL_20:
      __break(1u);
      return;
    }

    v4 = *(v3 + 32);
  }

  v15 = v4;

  type metadata accessor for _CountryPickerViewController();
  v5 = swift_dynamicCastClass();
  if (v5)
  {
    v6 = v5;
    v7 = (v5 + OBJC_IVAR____TtC9PassKitUIP33_8AF49C9430B60B059CB9BE426A22509528_CountryPickerViewController_configuration);
    v9 = v7[1];
    v8 = v7[2];
    v17[0] = *v7;
    v17[1] = v9;
    v17[2] = v8;
    v11 = v7[4];
    v10 = v7[5];
    v12 = v7[3];
    *&v18[9] = *(v7 + 89);
    v17[4] = v11;
    *v18 = v10;
    v17[3] = v12;
    memmove(v7, v1, 0x69uLL);
    sub_1BD9FB138(v1, v16);
    sub_1BD9FB170(v17);
    if (![v6 isViewLoaded])
    {
LABEL_10:

      return;
    }

    sub_1BD9F8B18();
    v13 = [v6 tableView];
    if (v13)
    {
      v14 = v13;
      [v13 reloadData];

      goto LABEL_10;
    }

    goto LABEL_20;
  }
}

id sub_1BD9F86AC()
{
  v1 = v0[5];
  v9[4] = v0[4];
  v10[0] = v1;
  *(v10 + 9) = *(v0 + 89);
  v2 = v0[1];
  v9[0] = *v0;
  v9[1] = v2;
  v3 = v0[3];
  v9[2] = v0[2];
  v9[3] = v3;
  v4 = objc_allocWithZone(type metadata accessor for _CountryPickerViewController());
  sub_1BD9FA9D0(v9, &v8);
  v5 = sub_1BD9F895C(v9);
  v6 = [objc_allocWithZone(MEMORY[0x1E69DCCD8]) initWithRootViewController_];

  return v6;
}

uint64_t sub_1BD9F8794(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1BD9FB0E4();

  return MEMORY[0x1EEDDB778](a1, a2, a3, v6);
}

uint64_t sub_1BD9F87F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1BD9FB0E4();

  return MEMORY[0x1EEDDB740](a1, a2, a3, v6);
}

void sub_1BD9F885C()
{
  sub_1BD9FB0E4();
  sub_1BE0500A4();
  __break(1u);
}

id sub_1BD9F895C(_OWORD *a1)
{
  v1[OBJC_IVAR____TtC9PassKitUIP33_8AF49C9430B60B059CB9BE426A22509528_CountryPickerViewController_isFreshPresentation] = 1;
  *&v1[OBJC_IVAR____TtC9PassKitUIP33_8AF49C9430B60B059CB9BE426A22509528_CountryPickerViewController_sections] = MEMORY[0x1E69E7CC0];
  *&v1[OBJC_IVAR____TtC9PassKitUIP33_8AF49C9430B60B059CB9BE426A22509528_CountryPickerViewController_filteredSections] = 0;
  v3 = OBJC_IVAR____TtC9PassKitUIP33_8AF49C9430B60B059CB9BE426A22509528_CountryPickerViewController_resultsSearchController;
  *&v1[v3] = [objc_allocWithZone(MEMORY[0x1E69DCF10]) initWithSearchResultsController_];
  v4 = &v1[OBJC_IVAR____TtC9PassKitUIP33_8AF49C9430B60B059CB9BE426A22509528_CountryPickerViewController_configuration];
  v5 = a1[1];
  *v4 = *a1;
  v4[1] = v5;
  *(v4 + 89) = *(a1 + 89);
  v6 = a1[5];
  v4[4] = a1[4];
  v4[5] = v6;
  v7 = a1[3];
  v4[2] = a1[2];
  v4[3] = v7;
  v9.receiver = v1;
  v9.super_class = type metadata accessor for _CountryPickerViewController();
  return objc_msgSendSuper2(&v9, sel_initWithNibName_bundle_, 0, 0);
}

void sub_1BD9F8A34(void *a1)
{
  *(v1 + OBJC_IVAR____TtC9PassKitUIP33_8AF49C9430B60B059CB9BE426A22509528_CountryPickerViewController_isFreshPresentation) = 1;
  *(v1 + OBJC_IVAR____TtC9PassKitUIP33_8AF49C9430B60B059CB9BE426A22509528_CountryPickerViewController_sections) = MEMORY[0x1E69E7CC0];
  *(v1 + OBJC_IVAR____TtC9PassKitUIP33_8AF49C9430B60B059CB9BE426A22509528_CountryPickerViewController_filteredSections) = 0;
  v2 = OBJC_IVAR____TtC9PassKitUIP33_8AF49C9430B60B059CB9BE426A22509528_CountryPickerViewController_resultsSearchController;
  *(v1 + v2) = [objc_allocWithZone(MEMORY[0x1E69DCF10]) initWithSearchResultsController_];
  sub_1BE053994();
  __break(1u);
}

uint64_t sub_1BD9F8B18()
{
  v37 = v0;
  v38 = [objc_opt_self() currentCollation];
  v1 = *(v0 + OBJC_IVAR____TtC9PassKitUIP33_8AF49C9430B60B059CB9BE426A22509528_CountryPickerViewController_configuration + 64);
  v2 = *(v1 + 16);
  v3 = MEMORY[0x1E69E7CC0];
  if (v2)
  {
    v40 = MEMORY[0x1E69E7CC0];
    sub_1BE048C84();
    sub_1BE0538E4();
    v4 = type metadata accessor for _AllowedValue();
    v36 = v1;
    v5 = (v1 + 56);
    do
    {
      v7 = *(v5 - 3);
      v6 = *(v5 - 2);
      v8 = *(v5 - 1);
      v9 = *v5;
      v10 = objc_allocWithZone(v4);
      v11 = &v10[OBJC_IVAR____TtC9PassKitUIP33_8AF49C9430B60B059CB9BE426A22509513_AllowedValue_value];
      *v11 = v7;
      *(v11 + 1) = v6;
      v12 = &v10[OBJC_IVAR____TtC9PassKitUIP33_8AF49C9430B60B059CB9BE426A22509513_AllowedValue_localizedTitle];
      *v12 = v8;
      *(v12 + 1) = v9;
      v39.receiver = v10;
      v39.super_class = v4;
      sub_1BE048C84();
      sub_1BE048C84();
      objc_msgSendSuper2(&v39, sel_init);
      sub_1BE0538C4();
      sub_1BE0538F4();
      sub_1BE053904();
      sub_1BE0538D4();
      v5 += 4;
      --v2;
    }

    while (v2);

    v3 = v40;
  }

  v13 = [v38 sectionTitles];
  v14 = sub_1BE052744();

  v15 = *(v14 + 16);

  v16 = MEMORY[0x1E69E7CC0];
  v17 = sub_1BD9FAE8C(MEMORY[0x1E69E7CC0], v15);
  if (v3 >> 62)
  {
    goto LABEL_29;
  }

  v18 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v18)
  {
    while (v18 >= 1)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        goto LABEL_32;
      }

LABEL_9:
      v19 = 0;
      v16 = v3 & 0xC000000000000001;
      while (1)
      {
        v20 = v16 ? MEMORY[0x1BFB40900](v19, v3) : *(v3 + 8 * v19 + 32);
        v21 = v20;
        v22 = [v38 sectionForObject:v20 collationStringSelector:sel_localizedTitle];
        v23 = v21;
        if ((v22 & 0x8000000000000000) != 0)
        {
          break;
        }

        if (v22 >= v17[2])
        {
          goto LABEL_28;
        }

        v24 = v23;
        MEMORY[0x1BFB3F7A0]();
        if (*((v17[v22 + 4] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v17[v22 + 4] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1BE052774();
        }

        ++v19;
        sub_1BE0527C4();

        if (v18 == v19)
        {
          v16 = MEMORY[0x1E69E7CC0];
          goto LABEL_19;
        }
      }

      __break(1u);
LABEL_28:
      __break(1u);
LABEL_29:
      v18 = sub_1BE053704();
      if (!v18)
      {
        goto LABEL_19;
      }
    }

    __break(1u);
LABEL_32:
    v17 = sub_1BD5000A8(v17);
    goto LABEL_9;
  }

LABEL_19:

  v25 = v17[2];
  if (v25)
  {
    v40 = v16;
    sub_1BD532438(0, v25, 0);
    v26 = 32;
    v27 = v40;
    do
    {
      v28 = sub_1BE048C84();
      sub_1BD3F06F4(v28);
      v29 = sub_1BE052724();

      v30 = [v38 sortedArrayFromArray:v29 collationStringSelector:sel_localizedTitle];

      v31 = sub_1BE052744();

      v40 = v27;
      v33 = *(v27 + 16);
      v32 = *(v27 + 24);
      if (v33 >= v32 >> 1)
      {
        sub_1BD532438((v32 > 1), v33 + 1, 1);
        v27 = v40;
      }

      *(v27 + 16) = v33 + 1;
      *(v27 + 8 * v33 + 32) = v31;
      v26 += 8;
      --v25;
    }

    while (v25);
  }

  else
  {

    v27 = MEMORY[0x1E69E7CC0];
  }

  v34 = sub_1BD3F05C4(v27);

  *(v37 + OBJC_IVAR____TtC9PassKitUIP33_8AF49C9430B60B059CB9BE426A22509528_CountryPickerViewController_sections) = v34;
}

void sub_1BD9F8F34(void *a1)
{
  v2 = [a1 searchBar];
  v3 = [v2 text];
  if (v3)
  {
    v4 = v3;
    v5 = sub_1BE052434();
    v7 = v6;

    v8 = HIBYTE(v7) & 0xF;
    if ((v7 & 0x2000000000000000) == 0)
    {
      v8 = v5 & 0xFFFFFFFFFFFFLL;
    }

    if (v8)
    {
      v9 = sub_1BE048C84();
      v10 = sub_1BD9FACBC(v9);

      v3 = sub_1BD9F7398(v10, sub_1BD1DED88, sub_1BDA7E798);
    }

    else
    {

      v3 = 0;
    }
  }

  *&v1[OBJC_IVAR____TtC9PassKitUIP33_8AF49C9430B60B059CB9BE426A22509528_CountryPickerViewController_filteredSections] = v3;

  v11 = [v1 tableView];
  if (v11)
  {
    v12 = v11;
    [v11 reloadData];
  }

  else
  {
    __break(1u);
  }
}

id sub_1BD9F90F4()
{
  v1 = sub_1BE04BD74();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1, v3);
  v44 = v43 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5, v6);
  v46 = v43 - v7;
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = v43 - v10;
  v12 = type metadata accessor for _CountryPickerViewController();
  v50.receiver = v0;
  v50.super_class = v12;
  objc_msgSendSuper2(&v50, sel_viewDidLoad);
  v13 = OBJC_IVAR____TtC9PassKitUIP33_8AF49C9430B60B059CB9BE426A22509528_CountryPickerViewController_resultsSearchController;
  [*&v0[OBJC_IVAR____TtC9PassKitUIP33_8AF49C9430B60B059CB9BE426A22509528_CountryPickerViewController_resultsSearchController] setSearchResultsUpdater_];
  v14 = [*&v0[v13] searchBar];
  [v14 setSearchBarStyle_];

  v15 = [*&v0[v13] searchBar];
  v16 = v2;
  v17 = *(v2 + 104);
  v49 = *MEMORY[0x1E69B8068];
  v45 = v2 + 104;
  v48 = v17;
  v17(v11);
  result = PKPassKitBundle();
  if (!result)
  {
    __break(1u);
    goto LABEL_7;
  }

  v19 = result;
  sub_1BE04B6F4();

  v20 = *(v16 + 8);
  v43[1] = v16 + 8;
  v47 = v20;
  v20(v11, v1);
  v21 = sub_1BE052404();

  [v15 setPlaceholder_];

  v22 = [*&v0[v13] searchBar];
  [v22 sizeToFit];

  v23 = [*&v0[v13] searchBar];
  [v23 setTranslucent_];

  v24 = [*&v0[v13] searchBar];
  v25 = objc_opt_self();
  v26 = [v25 clearColor];
  [v24 setBarTintColor_];

  v27 = [*&v0[v13] searchBar];
  v28 = [v25 clearColor];
  [v27 setBackgroundColor_];

  v29 = [*&v0[v13] searchBar];
  [v29 setShowsCancelButton_];

  v30 = [*&v0[v13] searchBar];
  [v30 setDelegate_];

  [*&v0[v13] setHidesNavigationBarDuringPresentation_];
  [*&v0[v13] setObscuresBackgroundDuringPresentation_];
  [v0 setDefinesPresentationContext_];
  v31 = [v0 navigationItem];
  [v31 setHidesSearchBarWhenScrolling_];

  v32 = [v0 navigationItem];
  [v32 setSearchController_];

  v33 = [v0 navigationItem];
  v34 = v46;
  v48(v46, v49, v1);
  result = PKPassKitBundle();
  if (!result)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  v35 = result;
  sub_1BE04B6F4();

  v47(v34, v1);
  v36 = sub_1BE052404();

  [v33 setTitle_];

  v37 = v44;
  v48(v44, v49, v1);
  result = PKPassKitBundle();
  if (!result)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v38 = result;
  sub_1BE04B6F4();

  v47(v37, v1);
  v39 = sub_1BE052404();

  [v0 setTitle_];

  result = [v0 tableView];
  if (result)
  {
    v40 = result;
    sub_1BD0E5E8C(0, &qword_1EBD5BB80);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v42 = sub_1BE052404();
    [v40 registerClass:ObjCClassFromMetadata forCellReuseIdentifier:v42];

    return sub_1BD9F8B18();
  }

LABEL_9:
  __break(1u);
  return result;
}

void sub_1BD9F977C(int a1)
{
  v3 = sub_1BE04B414();
  v39 = *(v3 - 8);
  v40 = v3;
  MEMORY[0x1EEE9AC00](v3, v4);
  v37 = &v34[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v6, v7);
  v38 = &v34[-v8];
  v9 = type metadata accessor for _CountryPickerViewController();
  v48.receiver = v1;
  v48.super_class = v9;
  v35 = a1;
  objc_msgSendSuper2(&v48, sel_viewWillAppear_, a1 & 1);
  v10 = OBJC_IVAR____TtC9PassKitUIP33_8AF49C9430B60B059CB9BE426A22509528_CountryPickerViewController_sections;
  v41 = *(*&v1[OBJC_IVAR____TtC9PassKitUIP33_8AF49C9430B60B059CB9BE426A22509528_CountryPickerViewController_sections] + 16);
  if (v41)
  {
    v11 = 0;
    v12 = &v1[OBJC_IVAR____TtC9PassKitUIP33_8AF49C9430B60B059CB9BE426A22509528_CountryPickerViewController_configuration];
    v42 = v1;
    v36 = OBJC_IVAR____TtC9PassKitUIP33_8AF49C9430B60B059CB9BE426A22509528_CountryPickerViewController_sections;
    while (1)
    {
      v13 = *&v1[v10];
      if (v11 >= *(v13 + 16))
      {
LABEL_29:
        __break(1u);
LABEL_30:
        __break(1u);
LABEL_31:
        __break(1u);
        return;
      }

      v14 = *(v13 + 8 * v11 + 32);
      v43 = v11;
      if (v14 >> 62)
      {
        v26 = sub_1BE053704();
        if (v26 < 0)
        {
          goto LABEL_30;
        }

        v15 = v26;
      }

      else
      {
        v15 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      sub_1BE048C84();
      if (v15)
      {
        break;
      }

LABEL_3:
      v11 = v43 + 1;

      v1 = v42;
      v10 = v36;
      if (v11 == v41)
      {
        return;
      }
    }

    v16 = 0;
    while (1)
    {
      if ((v14 & 0xC000000000000001) != 0)
      {
        v17 = MEMORY[0x1BFB40900](v16, v14);
      }

      else
      {
        if (v16 >= *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_29;
        }

        v17 = *(v14 + 8 * v16 + 32);
      }

      v18 = v17;
      v19 = *&v17[OBJC_IVAR____TtC9PassKitUIP33_8AF49C9430B60B059CB9BE426A22509513_AllowedValue_value];
      v20 = *&v17[OBJC_IVAR____TtC9PassKitUIP33_8AF49C9430B60B059CB9BE426A22509513_AllowedValue_value + 8];
      v21 = *(v12 + 2);
      v22 = *(v12 + 3);
      v45 = *v12;
      v46 = v21;
      v47 = v22;
      sub_1BE048C84();
      v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD48B70);
      MEMORY[0x1BFB3E970](v44, v23);
      if (v19 == v44[0] && v20 == v44[1])
      {
        break;
      }

      v25 = sub_1BE053B84();

      if (v25)
      {
        goto LABEL_23;
      }

      ++v16;

      if (v15 == v16)
      {
        goto LABEL_3;
      }
    }

LABEL_23:

    v27 = v37;
    MEMORY[0x1BFB38470](v16, v43);

    v29 = v38;
    v28 = v39;
    v30 = v40;
    (*(v39 + 32))(v38, v27, v40);
    if (v42[OBJC_IVAR____TtC9PassKitUIP33_8AF49C9430B60B059CB9BE426A22509528_CountryPickerViewController_isFreshPresentation] == 1)
    {
      v31 = [v42 tableView];
      if (!v31)
      {
        goto LABEL_31;
      }

      v32 = v31;
      v33 = sub_1BE04B3C4();
      [v32 scrollToRowAtIndexPath:v33 atScrollPosition:2 animated:v35 & 1];
    }

    (*(v28 + 8))(v29, v30);
  }
}

void sub_1BD9F9B64(void *a1, uint64_t a2, uint64_t a3, const char **a4, char a5)
{
  v10.receiver = a1;
  v10.super_class = type metadata accessor for _CountryPickerViewController();
  v8 = *a4;
  v9 = v10.receiver;
  objc_msgSendSuper2(&v10, v8, a3);
  v9[OBJC_IVAR____TtC9PassKitUIP33_8AF49C9430B60B059CB9BE426A22509528_CountryPickerViewController_isFreshPresentation] = a5;
}

void sub_1BD9F9C58(uint64_t a1, unint64_t a2)
{
  if ([v2 tableView:a1 numberOfRowsInSection:a2] >= 1 && !*&v2[OBJC_IVAR____TtC9PassKitUIP33_8AF49C9430B60B059CB9BE426A22509528_CountryPickerViewController_filteredSections])
  {
    v4 = [objc_opt_self() currentCollation];
    v5 = [v4 sectionTitles];
    v6 = sub_1BE052744();

    if ((a2 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (*(v6 + 16) > a2)
    {
      sub_1BE048C84();

      return;
    }

    __break(1u);
  }
}

unint64_t sub_1BD9F9F28(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_1BE052404();
  v7 = sub_1BE04B3C4();
  v8 = [a1 dequeueReusableCellWithIdentifier:v6 forIndexPath:v7];

  v9 = *(v3 + OBJC_IVAR____TtC9PassKitUIP33_8AF49C9430B60B059CB9BE426A22509528_CountryPickerViewController_filteredSections);
  if (v9)
  {
    v10 = *(v3 + OBJC_IVAR____TtC9PassKitUIP33_8AF49C9430B60B059CB9BE426A22509528_CountryPickerViewController_resultsSearchController);
    sub_1BE048C84();
    if ([v10 isActive])
    {
      result = sub_1BE04B3F4();
      if ((v9 & 0xC000000000000001) == 0)
      {
        if ((result & 0x8000000000000000) != 0)
        {
          __break(1u);
        }

        else if (result < *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          v12 = *(v9 + 8 * result + 32);
LABEL_7:
          v13 = v12;

          v14 = v13;
          goto LABEL_15;
        }

        __break(1u);
LABEL_38:
        __break(1u);
        goto LABEL_39;
      }

LABEL_35:
      v12 = MEMORY[0x1BFB40900]();
      goto LABEL_7;
    }
  }

  v15 = sub_1BE04B404();
  v16 = sub_1BE04B3F4();
  if ((v15 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_31;
  }

  v17 = *(v3 + OBJC_IVAR____TtC9PassKitUIP33_8AF49C9430B60B059CB9BE426A22509528_CountryPickerViewController_sections);
  if (v15 >= *(v17 + 16))
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  a2 = *(v17 + 8 * v15 + 32);
  if ((a2 & 0xC000000000000001) == 0)
  {
    if ((v16 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v16 < *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v14 = *(a2 + 8 * v16 + 32);
      goto LABEL_15;
    }

    __break(1u);
    goto LABEL_35;
  }

LABEL_32:
  v34 = v16;
  sub_1BE048C84();
  v35 = MEMORY[0x1BFB40900](v34, a2);

  v14 = v35;
LABEL_15:
  v18 = *&v14[OBJC_IVAR____TtC9PassKitUIP33_8AF49C9430B60B059CB9BE426A22509513_AllowedValue_value];
  v19 = *&v14[OBJC_IVAR____TtC9PassKitUIP33_8AF49C9430B60B059CB9BE426A22509513_AllowedValue_value + 8];
  v20 = v3 + OBJC_IVAR____TtC9PassKitUIP33_8AF49C9430B60B059CB9BE426A22509528_CountryPickerViewController_configuration;
  v21 = *(v3 + OBJC_IVAR____TtC9PassKitUIP33_8AF49C9430B60B059CB9BE426A22509528_CountryPickerViewController_configuration + 16);
  v22 = *(v3 + OBJC_IVAR____TtC9PassKitUIP33_8AF49C9430B60B059CB9BE426A22509528_CountryPickerViewController_configuration + 24);
  v37 = *(v3 + OBJC_IVAR____TtC9PassKitUIP33_8AF49C9430B60B059CB9BE426A22509528_CountryPickerViewController_configuration);
  v38 = v21;
  v39 = v22;
  v23 = v14;
  sub_1BE048C84();
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD48B70);
  MEMORY[0x1BFB3E970](v36, v24);
  if (v18 == v36[0] && v19 == v36[1])
  {
    v26 = 1;
  }

  else
  {
    v26 = sub_1BE053B84();
  }

  v27 = *(v20 + 72);
  result = [v8 textLabel];
  if (!result)
  {
    goto LABEL_38;
  }

  v28 = result;
  sub_1BE048C84();

  v29 = sub_1BE052404();

  [v28 setText_];

  result = [v8 textLabel];
  if (!result)
  {
LABEL_39:
    __break(1u);
    return result;
  }

  v30 = result;
  if ((v27 | v26 ^ 1))
  {
    v31 = [objc_opt_self() labelColor];
  }

  else
  {
    sub_1BD0E5E8C(0, &qword_1EBD43100);
    sub_1BE051264();
    v31 = sub_1BE052FE4();
  }

  v32 = v31;
  [v30 setTextColor_];

  if (v26)
  {
    v33 = 3;
  }

  else
  {
    v33 = 0;
  }

  [v8 setAccessoryType_];

  return v8;
}

void sub_1BD9FA3CC(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = *(v2 + OBJC_IVAR____TtC9PassKitUIP33_8AF49C9430B60B059CB9BE426A22509528_CountryPickerViewController_filteredSections);
  if (!v6)
  {
LABEL_10:
    v11 = a2;
    v12 = sub_1BE04B404();
    v13 = sub_1BE04B3F4();
    if ((v12 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else
    {
      v14 = *(v3 + OBJC_IVAR____TtC9PassKitUIP33_8AF49C9430B60B059CB9BE426A22509528_CountryPickerViewController_sections);
      if (v12 < *(v14 + 16))
      {
        v11 = *(v14 + 8 * v12 + 32);
        if ((v11 & 0xC000000000000001) == 0)
        {
          if ((v13 & 0x8000000000000000) != 0)
          {
            __break(1u);
          }

          else if (v13 < *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            v10 = *(v11 + 8 * v13 + 32);
            goto LABEL_16;
          }

          __break(1u);
          goto LABEL_22;
        }

LABEL_19:
        v16 = v13;
        sub_1BE048C84();
        v10 = MEMORY[0x1BFB40900](v16, v11);
        goto LABEL_8;
      }
    }

    __break(1u);
    goto LABEL_19;
  }

  v7 = *(v2 + OBJC_IVAR____TtC9PassKitUIP33_8AF49C9430B60B059CB9BE426A22509528_CountryPickerViewController_resultsSearchController);
  sub_1BE048C84();
  if (![v7 isActive])
  {

    goto LABEL_10;
  }

  v8 = sub_1BE04B3F4();
  if ((v6 & 0xC000000000000001) != 0)
  {
LABEL_22:
    v9 = MEMORY[0x1BFB40900]();
    goto LABEL_7;
  }

  if ((v8 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v8 < *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v9 = *(v6 + 8 * v8 + 32);
LABEL_7:
    v10 = v9;
LABEL_8:

LABEL_16:
    v19 = *(v3 + OBJC_IVAR____TtC9PassKitUIP33_8AF49C9430B60B059CB9BE426A22509528_CountryPickerViewController_configuration);
    v20 = *(v3 + OBJC_IVAR____TtC9PassKitUIP33_8AF49C9430B60B059CB9BE426A22509528_CountryPickerViewController_configuration + 16);
    v21 = *(v3 + OBJC_IVAR____TtC9PassKitUIP33_8AF49C9430B60B059CB9BE426A22509528_CountryPickerViewController_configuration + 24);
    v17 = *&v10[OBJC_IVAR____TtC9PassKitUIP33_8AF49C9430B60B059CB9BE426A22509513_AllowedValue_value];
    v18 = *&v10[OBJC_IVAR____TtC9PassKitUIP33_8AF49C9430B60B059CB9BE426A22509513_AllowedValue_value + 8];
    sub_1BE048C84();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD48B70);
    sub_1BE0518F4();
    v15 = sub_1BE04B3C4();
    [a1 deselectRowAtIndexPath:v15 animated:{1, v17, v18, v19, v20, v21}];

    [a1 reloadData];
    return;
  }

  __break(1u);
}

id sub_1BD9FA824(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1(0);
  return objc_msgSendSuper2(&v3, sel_dealloc);
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

unint64_t sub_1BD9FAA08()
{
  result = qword_1EBD5BB08;
  if (!qword_1EBD5BB08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD5BB00);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EBD5BB10);
    sub_1BD0DE4F4(&qword_1EBD549A0, &unk_1EBD5BB10);
    swift_getOpaqueTypeConformance2();
    sub_1BD0F15A0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD5BB08);
  }

  return result;
}

unint64_t sub_1BD9FAB0C()
{
  result = qword_1EBD5BB38;
  if (!qword_1EBD5BB38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD5BB30);
    sub_1BD9FAB98();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD5BB38);
  }

  return result;
}

unint64_t sub_1BD9FAB98()
{
  result = qword_1EBD5BB40;
  if (!qword_1EBD5BB40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD5BB40);
  }

  return result;
}

uint64_t objectdestroyTm_122()
{

  sub_1BD0D4604(*(v0 + 112), *(v0 + 120));

  return swift_deallocObject();
}

char *sub_1BD9FACBC(char *result)
{
  v12 = 0;
  v13 = MEMORY[0x1E69E7CC0];
  v10 = result + 32;
  v11 = result;
  while (1)
  {
    v7 = *(v11 + 2);
    if (v12 == v7)
    {

      return v13;
    }

    if (v12 >= v7)
    {
      break;
    }

    v8 = *&v10[8 * v12];
    sub_1BE048C84();

    v9 = v8;
    ++v12;
    if (v8)
    {
      v1 = 0;
      v2 = v8 >> 62;
      if (v8 >> 62)
      {
LABEL_5:
        result = sub_1BE053704();
        goto LABEL_7;
      }

      while (1)
      {
        result = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_7:
        if (v1 == result)
        {
          break;
        }

        if ((v9 & 0xC000000000000001) != 0)
        {
          result = MEMORY[0x1BFB40900](v1, v9);
        }

        else
        {
          if (v1 >= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_22;
          }

          result = *(v9 + 8 * v1 + 32);
        }

        v3 = result;
        if (__OFADD__(v1, 1))
        {
          __break(1u);
LABEL_22:
          __break(1u);
          goto LABEL_23;
        }

        v4 = sub_1BE052404();
        v5 = sub_1BE052404();
        v6 = [v4 localizedStandardContainsString_];

        if (v6)
        {
          sub_1BE0538C4();
          sub_1BE0538F4();
          sub_1BE053904();
          sub_1BE0538D4();
          ++v1;
          if (v2)
          {
            goto LABEL_5;
          }
        }

        else
        {

          ++v1;
          if (v2)
          {
            goto LABEL_5;
          }
        }
      }
    }
  }

LABEL_23:
  __break(1u);
  return result;
}

uint64_t sub_1BD9FAE8C(uint64_t result, uint64_t a2)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (!a2)
    {
      return MEMORY[0x1E69E7CC0];
    }

    v3 = result;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD5BB70);
    v4 = sub_1BE0527B4();
    v5 = v4;
    *(v4 + 16) = a2;
    *(v4 + 32) = v3;
    v6 = a2 - 1;
    if (v6)
    {
      v7 = (v4 + 40);
      do
      {
        *v7++ = v3;
        sub_1BE048C84();
        --v6;
      }

      while (v6);
    }

    sub_1BE048C84();
    return v5;
  }

  return result;
}

uint64_t sub_1BD9FAF28(unint64_t a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC9PassKitUIP33_8AF49C9430B60B059CB9BE426A22509528_CountryPickerViewController_filteredSections);
  if (v3)
  {
    v4 = *(v1 + OBJC_IVAR____TtC9PassKitUIP33_8AF49C9430B60B059CB9BE426A22509528_CountryPickerViewController_resultsSearchController);
    sub_1BE048C84();
    if ([v4 isActive])
    {
      if (v3 >> 62)
      {
        v5 = sub_1BE053704();
      }

      else
      {
        v5 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      return v5;
    }
  }

  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v7 = *(v1 + OBJC_IVAR____TtC9PassKitUIP33_8AF49C9430B60B059CB9BE426A22509528_CountryPickerViewController_sections);
    if (*(v7 + 16) > a1)
    {
      v8 = *(v7 + 8 * a1 + 32);
      if (!(v8 >> 62))
      {
        return *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      goto LABEL_13;
    }
  }

  __break(1u);
LABEL_13:

  return sub_1BE053704();
}

uint64_t sub_1BD9FB02C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 105))
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

uint64_t sub_1BD9FB074(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

unint64_t sub_1BD9FB0E4()
{
  result = qword_1EBD5BB88;
  if (!qword_1EBD5BB88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD5BB88);
  }

  return result;
}

uint64_t static PassbookSettingsNavigationPathBuilder.appendAutofillViewNavigationPath(to:descriptors:authentication:settingsController:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v20 = a5;
  v8 = sub_1BE04CEB4();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1BE04CEE4();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13, v15);
  v17 = &v19 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BE052D94();
  v21 = a2;
  v22 = a3;
  v23 = a4;
  v24 = v20;
  type metadata accessor for AutoFillFPANCardsView(0);
  sub_1BD9FBA34(&qword_1EBD5BBF0, type metadata accessor for AutoFillFPANCardsView);
  sub_1BE04CEA4();
  sub_1BD9FBA34(&qword_1EBD5BBF8, MEMORY[0x1E69C59C0]);
  sub_1BE04CED4();
  (*(v9 + 8))(v12, v8);
  return (*(v14 + 8))(v17, v13);
}

uint64_t sub_1BD9FB3E4@<X0>(uint64_t a1@<X1>, unint64_t a2@<X2>, void *a3@<X3>, uint64_t a4@<X8>)
{
  v5 = a3;
  sub_1BE051694();
  *a4 = v22;
  *(a4 + 8) = v23;
  type metadata accessor for DescriptorsModel(0);
  swift_allocObject();
  sub_1BD8AA788();
  sub_1BD9FBA34(&qword_1EBD420B0, type metadata accessor for DescriptorsModel);
  v6 = sub_1BE04E954();
  v8 = v7;
  *(a4 + 16) = v6;
  *(a4 + 24) = v7;
  v9 = type metadata accessor for AutoFillFPANCardsView(0);
  v10 = v9[6];
  *(a4 + v10) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3FA20);
  swift_storeEnumTagMultiPayload();
  v11 = v9[7];
  sub_1BE052434();
  v12 = *MEMORY[0x1E69BC6D8];
  v13 = objc_allocWithZone(MEMORY[0x1E695E000]);
  sub_1BE048964();
  [v13 initWithSuiteName_];
  *(a4 + v11) = sub_1BE04E124();
  v14 = v9[8];
  sub_1BE052434();
  [objc_allocWithZone(MEMORY[0x1E695E000]) initWithSuiteName_];
  *(a4 + v14) = sub_1BE04E124();
  v15 = v9[10];
  *(a4 + v9[9]) = a3;
  *(a4 + v15) = 0;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE048C84();
  sub_1BE04D8C4();
  v16 = *(v8 + 24);
  v17 = *(v8 + 32);
  *(v8 + 24) = a1;
  *(v8 + 32) = a2;
  sub_1BD041A38(a1, a2);
  return sub_1BD030220(v16, v17);
}

id PassbookSettingsNavigationPathBuilder.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id PassbookSettingsNavigationPathBuilder.init()()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_init);
}

id PassbookSettingsNavigationPathBuilder.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_1BD9FB9E8()
{
  result = qword_1EBD420C0;
  if (!qword_1EBD420C0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EBD420C0);
  }

  return result;
}

uint64_t sub_1BD9FBA34(unint64_t *a1, void (*a2)(uint64_t))
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

id sub_1BD9FBA80()
{
  v1 = sub_1BE04D214();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1, v3);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = 45;
  v17 = 0xE100000000000000;
  v6 = sub_1BE04AF74();
  MEMORY[0x1BFB3F610](v6);

  v7 = v16;
  v8 = v17;
  v16 = 0xD000000000000027;
  v17 = 0x80000001BE1473D0;
  MEMORY[0x1BFB3F610](v7, v8);

  v9 = *(v0 + OBJC_IVAR____TtC9PassKitUI37FinanceKitSpendingSummaryDataProvider_userDefaults);
  v10 = sub_1BE052404();

  v11 = [v9 integerForKey_];

  if (v11 >= 3)
  {
    sub_1BE04D114();
    v12 = sub_1BE04D204();
    v13 = sub_1BE052C34();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 134217984;
      *(v14 + 4) = v11;
      _os_log_impl(&dword_1BD026000, v12, v13, "Unable to map rawValue: %ld to FinanceKitSpendingSummaryPeriod, return the default value (weekly).", v14, 0xCu);
      MEMORY[0x1BFB45F20](v14, -1, -1);
    }

    (*(v2 + 8))(v5, v1);
    return 0;
  }

  return v11;
}

uint64_t sub_1BD9FBC84(char a1)
{
  *(v2 + 40) = v1;
  *(v2 + 128) = a1;
  v3 = sub_1BE04D214();
  *(v2 + 48) = v3;
  *(v2 + 56) = *(v3 - 8);
  *(v2 + 64) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1BD9FBD48, v1, 0);
}

unint64_t sub_1BD9FBD48()
{
  v1 = *(v0 + 128);
  v2 = sub_1BE04AF74();
  MEMORY[0x1BFB3F610](v2);

  MEMORY[0x1BFB3F610](45, 0xE100000000000000);

  if (v1 == sub_1BD9FBA80())
  {
LABEL_11:

    goto LABEL_12;
  }

  v3 = *(v0 + 40);
  v4 = *(v3 + OBJC_IVAR____TtC9PassKitUI37FinanceKitSpendingSummaryDataProvider_userDefaults);
  v5 = sub_1BE052404();

  [v4 setInteger:v1 forKey:v5];

  v6 = OBJC_IVAR____TtC9PassKitUI37FinanceKitSpendingSummaryDataProvider_observers;
  swift_beginAccess();
  result = *(v3 + v6);
  *(v0 + 72) = result;
  if (!(result >> 62))
  {
    v8 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
    *(v0 + 80) = v8;
    if (v8)
    {
      goto LABEL_4;
    }

LABEL_12:

    v13 = *(v0 + 8);

    return v13();
  }

  v18 = result;
  v8 = sub_1BE053704();
  result = v18;
  *(v0 + 80) = v8;
  if (!v8)
  {
    goto LABEL_12;
  }

LABEL_4:
  if (v8 < 1)
  {
    __break(1u);
  }

  else
  {
    sub_1BE048C84();
    v9 = 0;
    while (1)
    {
      *(v0 + 88) = v9;
      v10 = *(v0 + 72);
      if ((v10 & 0xC000000000000001) != 0)
      {
        v11 = MEMORY[0x1BFB40900]();
      }

      else
      {
        v11 = *(v10 + 8 * v9 + 32);
        sub_1BE048964();
      }

      *(v0 + 96) = v11;
      Strong = swift_unknownObjectWeakLoadStrong();
      *(v0 + 104) = Strong;
      if (Strong)
      {
        break;
      }

      v9 = *(v0 + 88) + 1;
      if (v9 == *(v0 + 80))
      {
        goto LABEL_11;
      }
    }

    v14 = *(v11 + 24);
    ObjectType = swift_getObjectType();
    v19 = (*(v14 + 16) + **(v14 + 16));
    v16 = swift_task_alloc();
    *(v0 + 112) = v16;
    *v16 = v0;
    v16[1] = sub_1BD9FC05C;
    v17 = *(v0 + 128);

    return v19(v17, ObjectType, v14);
  }

  return result;
}

uint64_t sub_1BD9FC05C()
{
  v2 = *v1;
  *(*v1 + 120) = v0;

  if (v0)
  {
    v3 = *(v2 + 40);
    v4 = sub_1BD9FC350;
  }

  else
  {
    v5 = *(v2 + 40);
    swift_unknownObjectRelease();
    v4 = sub_1BD9FC184;
    v3 = v5;
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, 0);
}

uint64_t sub_1BD9FC184()
{
  while (1)
  {

    v1 = *(v0 + 88) + 1;
    if (v1 == *(v0 + 80))
    {
      break;
    }

    *(v0 + 88) = v1;
    v2 = *(v0 + 72);
    if ((v2 & 0xC000000000000001) != 0)
    {
      v3 = MEMORY[0x1BFB40900]();
    }

    else
    {
      v3 = *(v2 + 8 * v1 + 32);
      sub_1BE048964();
    }

    *(v0 + 96) = v3;
    Strong = swift_unknownObjectWeakLoadStrong();
    *(v0 + 104) = Strong;
    if (Strong)
    {
      v7 = *(v3 + 24);
      ObjectType = swift_getObjectType();
      v11 = (*(v7 + 16) + **(v7 + 16));
      v9 = swift_task_alloc();
      *(v0 + 112) = v9;
      *v9 = v0;
      v9[1] = sub_1BD9FC05C;
      v10 = *(v0 + 128);

      return v11(v10, ObjectType, v7);
    }
  }

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_1BD9FC350()
{
  v1 = *(v0 + 120);
  swift_unknownObjectRelease();
  sub_1BE04D114();
  v2 = v1;
  v3 = sub_1BE04D204();
  v4 = sub_1BE052C34();

  v5 = os_log_type_enabled(v3, v4);
  v6 = *(v0 + 120);
  if (v5)
  {
    v7 = *(v0 + 128);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 134218242;
    *(v8 + 4) = v7;
    *(v8 + 12) = 2112;
    v10 = v6;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 14) = v11;
    *v9 = v11;
    _os_log_impl(&dword_1BD026000, v3, v4, "Observer failed to update currently selected period to: %ld with error: %@.", v8, 0x16u);
    sub_1BD0DE53C(v9, &unk_1EBD3E590);
    MEMORY[0x1BFB45F20](v9, -1, -1);
    MEMORY[0x1BFB45F20](v8, -1, -1);
  }

  else
  {
  }

  (*(*(v0 + 56) + 8))(*(v0 + 64), *(v0 + 48));
  while (1)
  {
    v12 = *(v0 + 88) + 1;
    if (v12 == *(v0 + 80))
    {
      break;
    }

    *(v0 + 88) = v12;
    v13 = *(v0 + 72);
    if ((v13 & 0xC000000000000001) != 0)
    {
      v14 = MEMORY[0x1BFB40900]();
    }

    else
    {
      v14 = *(v13 + 8 * v12 + 32);
      sub_1BE048964();
    }

    *(v0 + 96) = v14;
    Strong = swift_unknownObjectWeakLoadStrong();
    *(v0 + 104) = Strong;
    if (Strong)
    {
      v18 = *(v14 + 24);
      ObjectType = swift_getObjectType();
      v22 = (*(v18 + 16) + **(v18 + 16));
      v20 = swift_task_alloc();
      *(v0 + 112) = v20;
      *v20 = v0;
      v20[1] = sub_1BD9FC05C;
      v21 = *(v0 + 128);

      return v22(v21, ObjectType, v18);
    }
  }

  v16 = *(v0 + 8);

  return v16();
}

uint64_t sub_1BD9FC674(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[14] = a4;
  v5[15] = v4;
  v5[12] = a2;
  v5[13] = a3;
  v5[11] = a1;
  v6 = sub_1BE04B2D4();
  v5[16] = v6;
  v7 = *(v6 - 8);
  v5[17] = v7;
  v5[18] = *(v7 + 64);
  v5[19] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3E580);
  v5[20] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38DB8);
  v5[21] = v8;
  v9 = *(v8 - 8);
  v5[22] = v9;
  v5[23] = *(v9 + 64);
  v5[24] = swift_task_alloc();
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD402D0) - 8);
  v5[25] = v10;
  v5[26] = *(v10 + 64);
  v5[27] = swift_task_alloc();
  v5[28] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1BD9FC864, v4, 0);
}

uint64_t sub_1BD9FC864()
{
  v1 = v0[28];
  v2 = v0[21];
  v3 = v0[22];
  v4 = v0[13];
  sub_1BE053D74();
  sub_1BE04AF64();
  sub_1BDA1396C(&qword_1EBD52550, MEMORY[0x1E6969530]);
  sub_1BE052294();
  sub_1BE052294();
  sub_1BD0DE19C(v4, v1, &qword_1EBD402D0);
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    sub_1BE053D24();
  }

  else
  {
    v5 = v0[24];
    sub_1BD0DE204(v0[28], v5, &qword_1EBD38DB8);
    sub_1BE053D24();
    sub_1BE052294();
    sub_1BE052294();
    sub_1BD0DE53C(v5, &qword_1EBD38DB8);
  }

  v6 = v0[15];
  sub_1BDA1396C(&qword_1EBD398C8, MEMORY[0x1E6969AD0]);
  sub_1BE052294();
  v7 = sub_1BE053D54();
  v8 = OBJC_IVAR____TtC9PassKitUI37FinanceKitSpendingSummaryDataProvider_cache;
  v0[29] = v7;
  v0[30] = v8;
  swift_beginAccess();
  v9 = *(v6 + v8);
  if (*(v9 + 16) && (v10 = sub_1BD149084(v7), (v11 & 1) != 0))
  {
    v12 = *(*(v9 + 56) + 8 * v10);
    v0[31] = v12;
    sub_1BE048964();
    v13 = swift_task_alloc();
    v0[32] = v13;
    v14 = type metadata accessor for FinanceKitSpendingSummaryDataProvider.Model(0);
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3E5A0);
    *v13 = v0;
    v13[1] = sub_1BD9FCDF8;
    v16 = v0[11];
    v17 = MEMORY[0x1E69E7288];
    v18 = v12;
    v19 = v14;
  }

  else
  {
    v20 = v0[27];
    v21 = v0[24];
    v44 = v0[25];
    v45 = v0[26];
    v38 = v20;
    v39 = v21;
    v42 = v0[22];
    v43 = v0[23];
    v22 = v0[19];
    v23 = v0[20];
    v24 = v0[17];
    v46 = v23;
    v41 = v0[16];
    v40 = v0[14];
    v37 = v0[13];
    v47 = v7;
    v25 = v0[12];
    v26 = sub_1BE0528D4();
    (*(*(v26 - 8) + 56))(v23, 1, 1, v26);
    v27 = swift_allocObject();
    swift_weakInit();
    sub_1BD0DE19C(v25, v21, &qword_1EBD38DB8);
    sub_1BD0DE19C(v37, v20, &qword_1EBD402D0);
    (*(v24 + 16))(v22, v40, v41);
    v28 = (*(v42 + 80) + 40) & ~*(v42 + 80);
    v29 = (v43 + *(v44 + 80) + v28) & ~*(v44 + 80);
    v30 = (v45 + *(v24 + 80) + v29) & ~*(v24 + 80);
    v31 = swift_allocObject();
    *(v31 + 2) = 0;
    *(v31 + 3) = 0;
    *(v31 + 4) = v27;
    sub_1BD0DE204(v39, &v31[v28], &qword_1EBD38DB8);
    sub_1BD0DE204(v38, &v31[v29], &qword_1EBD402D0);
    (*(v24 + 32))(&v31[v30], v22, v41);
    v32 = sub_1BDA54610(0, 0, v46, &unk_1BE10DE78, v31);
    v0[34] = v32;
    swift_beginAccess();
    sub_1BE048964();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v48 = *(v6 + v8);
    *(v6 + v8) = 0x8000000000000000;
    sub_1BD1DB458(v32, v47, isUniquelyReferenced_nonNull_native);
    *(v6 + v8) = v48;
    swift_endAccess();
    v34 = swift_task_alloc();
    v0[35] = v34;
    v35 = type metadata accessor for FinanceKitSpendingSummaryDataProvider.Model(0);
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3E5A0);
    *v34 = v0;
    v34[1] = sub_1BD9FCFCC;
    v16 = v0[11];
    v17 = MEMORY[0x1E69E7288];
    v18 = v32;
    v19 = v35;
  }

  return MEMORY[0x1EEE6DA10](v16, v18, v19, v15, v17);
}

uint64_t sub_1BD9FCDF8()
{
  v2 = *v1;
  *(*v1 + 264) = v0;

  v3 = *(v2 + 120);
  if (v0)
  {
    v4 = sub_1BD9FD1A0;
  }

  else
  {
    v4 = sub_1BD9FCF24;
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, 0);
}

uint64_t sub_1BD9FCF24()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1BD9FCFCC()
{
  v2 = *v1;
  *(*v1 + 288) = v0;

  v3 = *(v2 + 120);
  if (v0)
  {
    v4 = sub_1BD9FD248;
  }

  else
  {
    v4 = sub_1BD9FD0F8;
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, 0);
}

uint64_t sub_1BD9FD0F8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1BD9FD1A0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1BD9FD248()
{
  v1 = *(v0 + 232);
  swift_beginAccess();
  sub_1BD6B1EB4(v1);
  swift_endAccess();

  swift_willThrow();

  v2 = *(v0 + 8);

  return v2();
}

BOOL sub_1BD9FD33C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD507E8);
  MEMORY[0x1EEE9AC00](v1 - 8, v2);
  v4 = &v22 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD507F0);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = &v22 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD507F8);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v12 = &v22 - v11;
  v13 = type metadata accessor for FinanceKitSpendingSummaryDataProvider.Model(0);
  sub_1BD0DE19C(v0 + v13[9], v12, &qword_1EBD507F8);
  v14 = type metadata accessor for FinanceKitSpendingSummaryDataProvider.Model.IncomeBreakdown(0);
  v15 = 1;
  v16 = (*(*(v14 - 8) + 48))(v12, 1, v14);
  sub_1BD0DE53C(v12, &qword_1EBD507F8);
  if (v16 == 1)
  {
    sub_1BD0DE19C(v0 + v13[10], v8, &qword_1EBD507F0);
    v17 = type metadata accessor for FinanceKitSpendingSummaryDataProvider.Model.ReimbursementsBreakdown(0);
    v18 = (*(*(v17 - 8) + 48))(v8, 1, v17);
    sub_1BD0DE53C(v8, &qword_1EBD507F0);
    if (v18 == 1)
    {
      sub_1BD0DE19C(v0 + v13[11], v4, &qword_1EBD507E8);
      v19 = type metadata accessor for FinanceKitSpendingSummaryDataProvider.Model.ManuallyExcludedBreakdown(0);
      v20 = (*(*(v19 - 8) + 48))(v4, 1, v19);
      sub_1BD0DE53C(v4, &qword_1EBD507E8);
      if (v20 == 1)
      {
        return *(v0 + v13[12]) != 0;
      }
    }
  }

  return v15;
}

uint64_t sub_1BD9FD5FC(void **a1)
{
  v2 = *(sub_1BE049774() - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_1BD5ED808(v3);
  }

  v4 = v3[2];
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v4;
  result = sub_1BDA0DC70(v6, MEMORY[0x1E6967838], sub_1BDA0E9B0, sub_1BDA0DDC0);
  *a1 = v3;
  return result;
}

uint64_t sub_1BD9FD6E0(void **a1)
{
  v2 = *(sub_1BE0497B4() - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_1BD5ED81C(v3);
  }

  v4 = v3[2];
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v4;
  result = sub_1BDA0DC70(v6, MEMORY[0x1E6967840], sub_1BDA0FA04, sub_1BDA0E3A8);
  *a1 = v3;
  return result;
}

void sub_1BD9FD7C4(uint64_t a1)
{
  v2 = v1;
  v29 = a1;
  v3 = sub_1BE04AFE4();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v28 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_defaultActor_initialize();
  v7 = (v1 + OBJC_IVAR____TtC9PassKitUI37FinanceKitSpendingSummaryDataProvider_availableRanges);
  v7[1] = 0;
  v7[2] = 0;
  *v7 = 0;
  v8 = OBJC_IVAR____TtC9PassKitUI37FinanceKitSpendingSummaryDataProvider_store;
  sub_1BE0490F4();
  *(v1 + v8) = sub_1BE0490B4();
  sub_1BE052434();
  v9 = objc_allocWithZone(MEMORY[0x1E695E000]);
  v10 = sub_1BE052404();

  v11 = [v9 initWithSuiteName_];

  if (v11)
  {
    *(v1 + OBJC_IVAR____TtC9PassKitUI37FinanceKitSpendingSummaryDataProvider_userDefaults) = v11;
    v12 = OBJC_IVAR____TtC9PassKitUI37FinanceKitSpendingSummaryDataProvider_calendar;
    sub_1BE04B1E4();
    v13 = OBJC_IVAR____TtC9PassKitUI37FinanceKitSpendingSummaryDataProvider_metadataFetcher;
    v14 = sub_1BE0490B4();
    type metadata accessor for FinanceKitGroupMetadataDataProvider();
    v15 = swift_allocObject();
    swift_defaultActor_initialize();
    v16 = MEMORY[0x1E69E7CC0];
    v17 = sub_1BD1AC9E4(MEMORY[0x1E69E7CC0]);
    *(v15 + 112) = v14;
    *(v15 + 120) = v17;
    *(v1 + v13) = v15;
    *(v1 + OBJC_IVAR____TtC9PassKitUI37FinanceKitSpendingSummaryDataProvider_startUpTask) = 0;
    *(v1 + OBJC_IVAR____TtC9PassKitUI37FinanceKitSpendingSummaryDataProvider_transactionUpdatesTask) = 0;
    v18 = OBJC_IVAR____TtC9PassKitUI37FinanceKitSpendingSummaryDataProvider_cache;
    *(v1 + v18) = sub_1BD1ACC14(v16);
    *(v1 + OBJC_IVAR____TtC9PassKitUI37FinanceKitSpendingSummaryDataProvider_observers) = v16;
    v19 = *(v4 + 16);
    v20 = v29;
    v19(v1 + OBJC_IVAR____TtC9PassKitUI37FinanceKitSpendingSummaryDataProvider_accountID, v29, v3);
    v21 = OBJC_IVAR____TtC9PassKitUI37FinanceKitSpendingSummaryDataProvider_spendingAggregator;
    v22 = sub_1BE04B2F4();
    (*(*(v22 - 8) + 16))(v1 + v21, v1 + v12, v22);
    v23 = v28;
    v19(v28, v20, v3);
    v24 = sub_1BE0490B4();
    type metadata accessor for FinanceKitSpendingSummaryFetcher();
    v25 = swift_allocObject();
    swift_defaultActor_initialize();
    v26 = OBJC_IVAR____TtC9PassKitUI32FinanceKitSpendingSummaryFetcher_cache;
    v27 = sub_1BD1ACC00(v16);
    (*(v4 + 8))(v20, v3);
    *(v25 + v26) = v27;
    (*(v4 + 32))(v25 + OBJC_IVAR____TtC9PassKitUI32FinanceKitSpendingSummaryFetcher_accountID, v23, v3);
    *(v25 + OBJC_IVAR____TtC9PassKitUI32FinanceKitSpendingSummaryFetcher_store) = v24;
    *(v2 + OBJC_IVAR____TtC9PassKitUI37FinanceKitSpendingSummaryDataProvider_summaryFetcher) = v25;
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1BD9FDAE4()
{
  v1 = OBJC_IVAR____TtC9PassKitUI37FinanceKitSpendingSummaryDataProvider_transactionUpdatesTask;
  if (*(v0 + OBJC_IVAR____TtC9PassKitUI37FinanceKitSpendingSummaryDataProvider_transactionUpdatesTask))
  {
    sub_1BE048964();
    sub_1BE052944();
  }

  *(v0 + v1) = 0;

  v2 = OBJC_IVAR____TtC9PassKitUI37FinanceKitSpendingSummaryDataProvider_accountID;
  v3 = sub_1BE04AFE4();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);
  sub_1BDA13DC4(*(v0 + OBJC_IVAR____TtC9PassKitUI37FinanceKitSpendingSummaryDataProvider_availableRanges));

  v4 = OBJC_IVAR____TtC9PassKitUI37FinanceKitSpendingSummaryDataProvider_calendar;
  v5 = sub_1BE04B2F4();
  (*(*(v5 - 8) + 8))(v0 + v4, v5);
  sub_1BDA138A4(v0 + OBJC_IVAR____TtC9PassKitUI37FinanceKitSpendingSummaryDataProvider_spendingAggregator, type metadata accessor for FinanceKitDailyCategorySpendingAggregator);

  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_1BD9FDC9C()
{
  sub_1BD9FDAE4();

  return MEMORY[0x1EEE6DEF0](v0);
}

uint64_t sub_1BD9FDCF0()
{
  result = sub_1BE04AFE4();
  if (v1 <= 0x3F)
  {
    result = sub_1BE04B2F4();
    if (v2 <= 0x3F)
    {
      return swift_updateClassMetadata2();
    }
  }

  return result;
}

uint64_t sub_1BD9FDE08()
{
  *(v1 + 16) = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3E580);
  *(v1 + 24) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1BD9FDEA4, v0, 0);
}

uint64_t sub_1BD9FDEA4()
{
  v1 = v0[2];
  v2 = OBJC_IVAR____TtC9PassKitUI37FinanceKitSpendingSummaryDataProvider_startUpTask;
  v0[4] = OBJC_IVAR____TtC9PassKitUI37FinanceKitSpendingSummaryDataProvider_startUpTask;
  v3 = *(v1 + v2);
  v0[5] = v3;
  if (v3)
  {
    sub_1BE048964();
    v4 = swift_task_alloc();
    v0[6] = v4;
    v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3E5A0);
    *v4 = v0;
    v6 = sub_1BD9FE0E8;
  }

  else
  {
    v7 = v0[3];
    v8 = sub_1BE0528D4();
    (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
    v9 = sub_1BDA1396C(&qword_1EBD5BDC0, type metadata accessor for FinanceKitSpendingSummaryDataProvider);
    v10 = swift_allocObject();
    v10[2] = v1;
    v10[3] = v9;
    v10[4] = v1;
    swift_retain_n();
    v3 = sub_1BDA543A4(0, 0, v7, &unk_1BE10DED8, v10);
    v0[8] = v3;
    *(v1 + v2) = v3;
    sub_1BE048964();

    v4 = swift_task_alloc();
    v0[9] = v4;
    v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3E5A0);
    *v4 = v0;
    v6 = sub_1BD9FE280;
  }

  v4[1] = v6;
  v11 = MEMORY[0x1E69E7288];
  v12 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE6DA10](v5, v3, v12, v5, v11);
}

uint64_t sub_1BD9FE0E8()
{
  v2 = *v1;
  *(*v1 + 56) = v0;

  v3 = *(v2 + 16);
  if (v0)
  {
    v4 = sub_1BD9FE418;
  }

  else
  {
    v4 = sub_1BD9FE214;
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, 0);
}

uint64_t sub_1BD9FE214()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1BD9FE280()
{
  v2 = *v1;
  *(*v1 + 80) = v0;

  v3 = *(v2 + 16);
  if (v0)
  {
    v4 = sub_1BD9FE484;
  }

  else
  {
    v4 = sub_1BD9FE3AC;
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, 0);
}

uint64_t sub_1BD9FE3AC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1BD9FE418()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1BD9FE484()
{
  *(v0[2] + v0[4]) = 0;

  swift_willThrow();

  v1 = v0[1];

  return v1();
}

uint64_t sub_1BD9FE518(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3E580);
  v4[5] = swift_task_alloc();
  v4[6] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5BDC8);
  v4[7] = swift_task_alloc();
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5BDD0) - 8);
  v4[8] = v5;
  v4[9] = *(v5 + 64);
  v4[10] = swift_task_alloc();
  v4[11] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5BDD8);
  v4[12] = v6;
  v4[13] = *(v6 - 8);
  v4[14] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39980);
  v4[15] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5BDE0);
  v4[16] = v7;
  v4[17] = *(v7 - 8);
  v4[18] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F788);
  v8 = swift_task_alloc();
  v4[19] = v8;
  v9 = swift_task_alloc();
  v4[20] = v9;
  *v9 = v4;
  v9[1] = sub_1BD9FE7E4;

  return sub_1BD9FEFD8(v8);
}

uint64_t sub_1BD9FE7E4()
{
  v2 = *v1;
  *(*v1 + 168) = v0;

  v3 = *(v2 + 32);
  if (v0)
  {
    v4 = sub_1BD9FEF14;
  }

  else
  {
    v4 = sub_1BD9FE910;
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, 0);
}

uint64_t sub_1BD9FE910()
{
  v1 = v0[21];
  v2 = v0[15];
  v3 = v0[4];
  v4 = OBJC_IVAR____TtC9PassKitUI37FinanceKitSpendingSummaryDataProvider_accountID;
  v5 = sub_1BE04AFE4();
  v6 = *(v5 - 8);
  (*(v6 + 16))(v2, v3 + v4, v5);
  (*(v6 + 56))(v2, 0, 1, v5);
  v7 = sub_1BE048FD4();
  if (v1)
  {
    v8 = v0[19];
    sub_1BD0DE53C(v0[15], &qword_1EBD39980);
    sub_1BD0DE53C(v8, &qword_1EBD3F788);
  }

  else
  {
    v9 = v7;
    sub_1BD0DE53C(v0[15], &qword_1EBD39980);
    v0[2] = v9;
    sub_1BE049E84();
    sub_1BDA1396C(&qword_1EBD5BDE8, MEMORY[0x1E6967C90]);
    sub_1BE053984();
    v10 = sub_1BE048F64();
    v31 = v0[19];
    v30 = v0[17];
    v23 = v0[16];
    v24 = v0[18];
    v13 = v0[14];
    v14 = v0[11];
    v28 = v0[9];
    v29 = v0[13];
    v26 = v0[10];
    v27 = v0[8];
    v15 = v0[7];
    v21 = v0[5];
    v22 = v0[12];
    v25 = v0[4];
    v0[3] = v10;
    sub_1BE049CA4();
    sub_1BDA1396C(&qword_1EBD5BDF0, MEMORY[0x1E6967BB8]);
    sub_1BE053984();
    sub_1BD0DE4F4(&qword_1EBD5BDF8, &qword_1EBD5BDE0);
    sub_1BD0DE4F4(&qword_1EBD5BE00, &qword_1EBD5BDD8);
    sub_1BE04CF74();
    sub_1BD0DE4F4(&qword_1EBD5BE08, &qword_1EBD5BDC8);
    sub_1BE0529D4();
    sub_1BD0DE53C(v15, &qword_1EBD5BDC8);
    v16 = sub_1BE0528D4();
    (*(*(v16 - 8) + 56))(v21, 1, 1, v16);
    v17 = swift_allocObject();
    swift_weakInit();
    sub_1BD0DE19C(v14, v26, &qword_1EBD5BDD0);
    v18 = (*(v27 + 80) + 32) & ~*(v27 + 80);
    v19 = swift_allocObject();
    *(v19 + 16) = 0;
    *(v19 + 24) = 0;
    sub_1BD0DE204(v26, v19 + v18, &qword_1EBD5BDD0);
    *(v19 + ((v28 + v18 + 7) & 0xFFFFFFFFFFFFFFF8)) = v17;
    v20 = sub_1BD122C00(0, 0, v21, &unk_1BE10DF30, v19);
    sub_1BD0DE53C(v14, &qword_1EBD5BDD0);
    (*(v29 + 8))(v13, v22);
    (*(v30 + 8))(v24, v23);
    sub_1BD0DE53C(v31, &qword_1EBD3F788);
    *(v25 + OBJC_IVAR____TtC9PassKitUI37FinanceKitSpendingSummaryDataProvider_transactionUpdatesTask) = v20;
  }

  v11 = v0[1];

  return v11();
}

uint64_t sub_1BD9FEF14()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1BD9FEFD8(uint64_t a1)
{
  v2[179] = v1;
  v2[173] = a1;
  v3 = sub_1BE04B2D4();
  v2[185] = v3;
  v2[191] = *(v3 - 8);
  v2[197] = swift_task_alloc();
  v4 = sub_1BE049A94();
  v2[203] = v4;
  v2[209] = *(v4 - 8);
  v2[210] = swift_task_alloc();
  v2[211] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD39970);
  v2[212] = swift_task_alloc();
  v2[213] = swift_task_alloc();
  v5 = sub_1BE04AF64();
  v2[214] = v5;
  v2[215] = *(v5 - 8);
  v2[216] = swift_task_alloc();
  v2[217] = swift_task_alloc();
  v6 = sub_1BE049D74();
  v2[218] = v6;
  v2[219] = *(v6 - 8);
  v2[220] = swift_task_alloc();
  v2[221] = swift_task_alloc();
  v2[222] = swift_task_alloc();
  v2[223] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38DF0);
  v2[224] = v7;
  v8 = *(v7 - 8);
  v2[225] = v8;
  v2[226] = *(v8 + 64);
  v2[227] = swift_task_alloc();
  v2[228] = swift_task_alloc();
  v2[229] = swift_task_alloc();
  v9 = sub_1BE04AFE4();
  v2[230] = v9;
  v2[231] = *(v9 - 8);
  v2[232] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1BD9FF314, v1, 0);
}

uint64_t sub_1BD9FF314()
{
  v1 = v0[232];
  v2 = v0[229];
  v3 = v0[228];
  v4 = v0[225];
  v16 = v0[227];
  v15 = v0[224];
  v5 = v0[203];
  v6 = v0[179];
  (*(v0[231] + 16))(v1, v6 + OBJC_IVAR____TtC9PassKitUI37FinanceKitSpendingSummaryDataProvider_accountID, v0[230]);
  *(swift_task_alloc() + 16) = v1;
  v0[167] = v5;
  swift_allocateMetadataPack();
  v14 = v2;
  sub_1BE04B444();

  v13 = *(v4 + 16);
  v13(v3, v2, v15);
  v7 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v8 = swift_allocObject();
  v0[233] = v8;
  *(v8 + 16) = v6;
  v12 = *(v4 + 32);
  v12(v8 + v7, v3, v15);
  sub_1BE048964();
  swift_asyncLet_begin();
  v13(v16, v14, v15);
  v9 = swift_allocObject();
  v0[234] = v9;
  *(v9 + 16) = v6;
  v12(v9 + v7, v16, v15);
  sub_1BE048964();
  swift_asyncLet_begin();
  v10 = v0[223];

  return MEMORY[0x1EEE6DEC0](v0 + 2, v10, sub_1BD9FF590, v0 + 162);
}

uint64_t sub_1BD9FF590()
{
  v1[235] = v0;
  if (v0)
  {
    v2 = v1[179];

    return MEMORY[0x1EEE6DFA0](sub_1BD9FFD48, v2, 0);
  }

  else
  {
    v3 = v1[223];
    v4 = v1[221];
    v5 = v1[219];
    v6 = v1[218];
    v7 = *(v5 + 16);
    v1[236] = v7;
    v1[237] = (v5 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v7(v4, v3, v6);
    v8 = v1[222];

    return MEMORY[0x1EEE6DEC0](v1 + 82, v8, sub_1BD9FF664, v1 + 180);
  }
}

uint64_t sub_1BD9FF664()
{
  *(v1 + 1904) = v0;
  if (v0)
  {
    v2 = sub_1BD9FFF60;
  }

  else
  {
    v2 = sub_1BD9FF698;
  }

  return MEMORY[0x1EEE6DFA0](v2, *(v1 + 1432), 0);
}

uint64_t sub_1BD9FF698()
{
  (*(v0 + 1888))(*(v0 + 1760), *(v0 + 1776), *(v0 + 1744));
  v1 = sub_1BE049D54();
  v2 = *(v0 + 1736);
  v3 = *(v0 + 1720);
  v4 = *(v0 + 1712);
  v5 = *(v0 + 1704);
  if (*(v1 + 16))
  {
    v6 = *(v0 + 1688);
    v7 = *(v0 + 1672);
    v8 = *(v0 + 1624);
    (*(v7 + 16))(v6, v1 + ((*(v7 + 80) + 32) & ~*(v7 + 80)), v8);

    sub_1BE049974();
    (*(v7 + 8))(v6, v8);
    v9 = *(v3 + 56);
    v9(v5, 0, 1, v4);
    (*(v3 + 32))(v2, v5, v4);
  }

  else
  {

    v9 = *(v3 + 56);
    v9(v5, 1, 1, v4);
    sub_1BE04AEF4();
    if ((*(v3 + 48))(v5, 1, v4) != 1)
    {
      sub_1BD0DE53C(*(v0 + 1704), &unk_1EBD39970);
    }
  }

  v10 = sub_1BE049D54();
  v11 = *(v0 + 1728);
  v12 = *(v0 + 1720);
  v13 = *(v0 + 1712);
  v14 = *(v0 + 1696);
  if (*(v10 + 16))
  {
    v15 = *(v0 + 1680);
    v16 = *(v0 + 1672);
    v17 = *(v0 + 1624);
    (*(v16 + 16))(v15, v10 + ((*(v16 + 80) + 32) & ~*(v16 + 80)), v17);

    sub_1BE049974();
    (*(v16 + 8))(v15, v17);
    v9(v14, 0, 1, v13);
    (*(v12 + 32))(v11, v14, v13);
  }

  else
  {

    v9(v14, 1, 1, v13);
    sub_1BE04AEF4();
    if ((*(v12 + 48))(v14, 1, v13) != 1)
    {
      sub_1BD0DE53C(*(v0 + 1696), &unk_1EBD39970);
    }
  }

  v39 = *(v0 + 1744);
  v40 = *(v0 + 1768);
  v18 = *(v0 + 1736);
  v19 = *(v0 + 1728);
  v35 = *(v0 + 1720);
  v36 = *(v0 + 1760);
  v37 = *(v0 + 1712);
  v38 = *(v0 + 1752);
  v20 = *(v0 + 1576);
  v21 = *(v0 + 1528);
  v22 = *(v0 + 1480);
  v23 = *(v0 + 1432);
  v24 = *(v21 + 104);
  v24(v20, *MEMORY[0x1E6969A20], v22);
  v34 = sub_1BDA0C658(v20, v18, v19);
  v25 = *(v21 + 8);
  v25(v20, v22);
  v24(v20, *MEMORY[0x1E6969A78], v22);
  v33 = sub_1BDA0C658(v20, v18, v19);
  v25(v20, v22);
  v24(v20, *MEMORY[0x1E6969A68], v22);
  v26 = sub_1BDA0C658(v20, v18, v19);
  v25(v20, v22);
  v27 = (v23 + OBJC_IVAR____TtC9PassKitUI37FinanceKitSpendingSummaryDataProvider_availableRanges);
  v28 = *(v23 + OBJC_IVAR____TtC9PassKitUI37FinanceKitSpendingSummaryDataProvider_availableRanges);
  *v27 = v34;
  v27[1] = v33;
  v27[2] = v26;
  sub_1BDA13DC4(v28);
  sub_1BE049D64();
  v29 = *(v35 + 8);
  v29(v19, v37);
  v29(v18, v37);
  v30 = *(v38 + 8);
  v30(v36, v39);
  v30(v40, v39);
  v31 = *(v0 + 1776);

  return MEMORY[0x1EEE6DEB0](v0 + 656, v31, sub_1BD9FFB58, v0 + 1584);
}

uint64_t sub_1BD9FFBB0()
{
  v1 = v0[232];
  v2 = v0[231];
  v3 = v0[230];
  (*(v0[225] + 8))(v0[229], v0[224]);
  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1BD9FFDC0()
{
  v1 = v0[232];
  v2 = v0[231];
  v3 = v0[230];
  (*(v0[225] + 8))(v0[229], v0[224]);
  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1BD9FFF60()
{
  (*(v0[219] + 8))(v0[221], v0[218]);
  v1 = v0[222];

  return MEMORY[0x1EEE6DEB0](v0 + 82, v1, sub_1BD9FFFE0, v0 + 186);
}

uint64_t sub_1BDA00038()
{
  v1 = v0[232];
  v2 = v0[231];
  v3 = v0[230];
  (*(v0[225] + 8))(v0[229], v0[224]);
  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1BDA001D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[9] = a4;
  v5[10] = a5;
  v6 = sub_1BE04D214();
  v5[11] = v6;
  v5[12] = *(v6 - 8);
  v5[13] = swift_task_alloc();
  v5[14] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F788);
  v5[15] = swift_task_alloc();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5BE10);
  v5[17] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1BDA00318, 0, 0);
}

uint64_t sub_1BDA00318()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5BDD0);
  sub_1BE04CF54();
  swift_beginAccess();
  v1 = swift_task_alloc();
  *(v0 + 144) = v1;
  *v1 = v0;
  v1[1] = sub_1BDA003F4;
  v2 = *(v0 + 128);

  return MEMORY[0x1EEDEE7E8](v0 + 248, v2);
}

uint64_t sub_1BDA003F4()
{
  v2 = *v1;
  *(*v1 + 152) = v0;

  if (v0)
  {
    v3 = sub_1BDA00648;
  }

  else
  {
    *(v2 + 249) = *(v2 + 248);
    v3 = sub_1BDA00510;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1BDA00510()
{
  if ((*(v0 + 249) & 1) != 0 || (sub_1BE052974() & 1) != 0 || (Strong = swift_weakLoadStrong(), (*(v0 + 160) = Strong) == 0))
  {
    sub_1BD0DE53C(*(v0 + 136), &qword_1EBD5BE10);

    v5 = *(v0 + 8);

    return v5();
  }

  else
  {
    v2 = swift_task_alloc();
    *(v0 + 168) = v2;
    *v2 = v0;
    v2[1] = sub_1BDA00898;
    v3 = *(v0 + 120);

    return sub_1BD9FEFD8(v3);
  }
}

uint64_t sub_1BDA00648()
{
  *(v0 + 64) = *(v0 + 152);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3E5A0);
  swift_willThrowTypedImpl();

  return MEMORY[0x1EEE6DFA0](sub_1BDA006DC, 0, 0);
}

uint64_t sub_1BDA006DC()
{
  v1 = v0[19];
  sub_1BD0DE53C(v0[17], &qword_1EBD5BE10);
  sub_1BE04D114();
  v2 = v1;
  v3 = sub_1BE04D204();
  v4 = sub_1BE052C34();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138412290;
    v7 = v1;
    v8 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 4) = v8;
    *v6 = v8;
    _os_log_impl(&dword_1BD026000, v3, v4, "Failed to listen to transaction updates with error: %@.", v5, 0xCu);
    sub_1BD0DE53C(v6, &unk_1EBD3E590);
    MEMORY[0x1BFB45F20](v6, -1, -1);
    MEMORY[0x1BFB45F20](v5, -1, -1);
  }

  else
  {
  }

  (*(v0[12] + 8))(v0[14], v0[11]);

  v9 = v0[1];

  return v9();
}

uint64_t sub_1BDA00898()
{
  v2 = *v1;
  *(*v1 + 176) = v0;

  if (v0)
  {
    v3 = sub_1BDA01168;
  }

  else
  {
    sub_1BD0DE53C(*(v2 + 120), &qword_1EBD3F788);
    v3 = sub_1BDA009C4;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1BDA009C4()
{
  v1 = swift_task_alloc();
  *(v0 + 184) = v1;
  *v1 = v0;
  v1[1] = sub_1BDA00A54;

  return sub_1BDA01680();
}

uint64_t sub_1BDA00A54()
{
  v1 = *(*v0 + 160);

  return MEMORY[0x1EEE6DFA0](sub_1BDA00B64, v1, 0);
}

uint64_t sub_1BDA00B64()
{
  v1 = *(v0 + 160);
  v2 = OBJC_IVAR____TtC9PassKitUI37FinanceKitSpendingSummaryDataProvider_observers;
  swift_beginAccess();
  *(v0 + 192) = *(v1 + v2);
  sub_1BE048C84();

  return MEMORY[0x1EEE6DFA0](sub_1BDA00BF4, 0, 0);
}

uint64_t sub_1BDA00BF4(uint64_t a1, uint64_t a2)
{
  v3 = v2[24];
  if (!(v3 >> 62))
  {
    v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v2[25] = v4;
    if (v4)
    {
      goto LABEL_3;
    }

LABEL_10:

    v9 = swift_task_alloc();
    v2[18] = v9;
    *v9 = v2;
    v9[1] = sub_1BDA003F4;
    a2 = v2[16];
    v4 = (v2 + 31);

    return MEMORY[0x1EEDEE7E8](v4, a2);
  }

  v4 = sub_1BE053704();
  v2[25] = v4;
  if (!v4)
  {
    goto LABEL_10;
  }

LABEL_3:
  if (v4 < 1)
  {
    __break(1u);
    return MEMORY[0x1EEDEE7E8](v4, a2);
  }

  v5 = 0;
  while (1)
  {
    v2[26] = v5;
    v6 = v2[24];
    if ((v6 & 0xC000000000000001) != 0)
    {
      v7 = MEMORY[0x1BFB40900]();
    }

    else
    {
      v7 = *(v6 + 8 * v5 + 32);
      sub_1BE048964();
    }

    v2[27] = v7;
    Strong = swift_unknownObjectWeakLoadStrong();
    v2[28] = Strong;
    if (Strong)
    {
      break;
    }

    v5 = v2[26] + 1;
    if (v5 == v2[25])
    {
      goto LABEL_10;
    }
  }

  v10 = *(v7 + 24);
  ObjectType = swift_getObjectType();
  v14 = (*(v10 + 8) + **(v10 + 8));
  v12 = swift_task_alloc();
  v2[29] = v12;
  *v12 = v2;
  v12[1] = sub_1BDA00E40;

  return v14(ObjectType, v10);
}