unint64_t sub_1BD70B22C(unint64_t result, uint64_t a2, void *a3)
{
  if (result != 3)
  {
    return sub_1BD70B23C(result, a2, a3);
  }

  return result;
}

unint64_t sub_1BD70B23C(unint64_t result, uint64_t a2, void *a3)
{
  if (result >= 3)
  {
    v4 = a3;

    return sub_1BE048964();
  }

  return result;
}

uint64_t sub_1BD70B2E4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1BD70B34C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1BD70B408@<X0>(_BYTE *a1@<X8>)
{
  v3 = *(type metadata accessor for PaymentOfferSelectorOverlay() - 8);
  v4 = (v1 + ((*(v3 + 64) + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_1BD7060A4(v4, a1);
}

uint64_t objectdestroy_74Tm()
{
  v1 = type metadata accessor for PaymentOfferSelectorOverlay();
  v2 = (*(*(v1 - 1) + 80) + 32) & ~*(*(v1 - 1) + 80);
  v3 = *(*(v1 - 1) + 64) + v2;
  swift_unknownObjectRelease();
  v4 = v0 + v2;

  v5 = v1[7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3FA20);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_1BE04E664();
    (*(*(v6 - 8) + 8))(v4 + v5, v6);
  }

  else
  {
  }

  v7 = v3 + 7;

  v8 = v4 + v1[9];
  if (*v8 >= 4uLL)
  {
  }

  v9 = v7 & 0xFFFFFFFFFFFFFFF8;

  v10 = (v4 + v1[10]);
  v11 = type metadata accessor for MultiHyperLinkDetailSheet();
  if (!(*(*(v11 - 8) + 48))(v10, 1, v11))
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v12 = sub_1BE04AA64();
      (*(*(v12 - 8) + 8))(v10, v12);
    }

    else
    {
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD45120);

  if (*(v0 + v9 + 112))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1BD70B788()
{
  type metadata accessor for PaymentOfferSelectorOverlay();

  return sub_1BD7061BC();
}

void sub_1BD70B828(unsigned __int8 a1)
{
  type metadata accessor for PaymentOfferSelectorOverlay();

  sub_1BD7062E4(a1);
}

uint64_t objectdestroyTm_81()
{
  v1 = type metadata accessor for PaymentOfferSelectorOverlay();
  v2 = (v0 + ((*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80)));

  v3 = v1[7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3FA20);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = sub_1BE04E664();
    (*(*(v4 - 8) + 8))(v2 + v3, v4);
  }

  else
  {
  }

  v5 = (v2 + v1[9]);
  if (*v5 >= 4)
  {
  }

  v6 = (v2 + v1[10]);
  v7 = type metadata accessor for MultiHyperLinkDetailSheet();
  if (!(*(*(v7 - 8) + 48))(v6, 1, v7))
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v8 = sub_1BE04AA64();
      (*(*(v8 - 8) + 8))(v6, v8);
    }

    else
    {
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD45120);

  return swift_deallocObject();
}

uint64_t sub_1BD70BBD0(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for PaymentOfferSelectorOverlay() - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

unint64_t sub_1BD70BC44()
{
  result = qword_1EBD50F18;
  if (!qword_1EBD50F18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD50F10);
    sub_1BD70BCFC(&qword_1EBD50F20, &qword_1EBD4C118, &unk_1BE0E57B0, sub_1BD70BD78);
    sub_1BD10EBB8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD50F18);
  }

  return result;
}

uint64_t sub_1BD70BCFC(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
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

unint64_t sub_1BD70BD78()
{
  result = qword_1EBD50F28;
  if (!qword_1EBD50F28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4C1E0);
    sub_1BD5C3678();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD50F28);
  }

  return result;
}

unint64_t sub_1BD70BE08()
{
  result = qword_1EBD50F38;
  if (!qword_1EBD50F38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD37270);
    sub_1BD70BE94();
    sub_1BD10EC0C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD50F38);
  }

  return result;
}

unint64_t sub_1BD70BE94()
{
  result = qword_1EBD50F40;
  if (!qword_1EBD50F40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD50F48);
    sub_1BD708D94();
    sub_1BD708E20();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD50F40);
  }

  return result;
}

uint64_t sub_1BD70BF20(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_1BD70BF88()
{
  result = qword_1EBD50F60;
  if (!qword_1EBD50F60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD50F58);
    sub_1BD70C044(&qword_1EBD57B20, type metadata accessor for PaymentOfferActionExplanationView);
    sub_1BD10EBB8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD50F60);
  }

  return result;
}

uint64_t sub_1BD70C044(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1BD70C0FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v32 = a1;
  v35 = a2;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD50F70);
  MEMORY[0x1EEE9AC00](v33, v2);
  v4 = &v29 - v3;
  v5 = sub_1BE04F424();
  v29 = *(v5 - 8);
  v30 = v5;
  MEMORY[0x1EEE9AC00](v5, v6);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD50F78);
  v31 = *(v34 - 8);
  MEMORY[0x1EEE9AC00](v34, v9);
  v11 = &v29 - v10;
  v12 = sub_1BE04C884();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12, v14);
  v16 = &v29 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17, v18);
  v20 = &v29 - v19;
  sub_1BE04C794();
  (*(v13 + 104))(v16, *MEMORY[0x1E69BC9C8], v12);
  sub_1BD70C564();
  sub_1BE0526E4();
  sub_1BE0526E4();
  v21 = *(v13 + 8);
  v21(v16, v12);
  if (v36 == v38)
  {
    sub_1BE0501C4();
    sub_1BE04F404();
    v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD50F80);
    v23 = sub_1BD70C5BC();
    sub_1BE0508F4();
    (*(v29 + 8))(v8, v30);
    v24 = v31;
    v25 = v34;
    (*(v31 + 16))(v4, v11, v34);
    swift_storeEnumTagMultiPayload();
    v36 = v22;
    v37 = v23;
    swift_getOpaqueTypeConformance2();
    sub_1BE04F9A4();
    (*(v24 + 8))(v11, v25);
  }

  else
  {
    v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD50F80);
    (*(*(v26 - 8) + 16))(v4, v32, v26);
    swift_storeEnumTagMultiPayload();
    v27 = sub_1BD70C5BC();
    v36 = v26;
    v37 = v27;
    swift_getOpaqueTypeConformance2();
    sub_1BE04F9A4();
  }

  return (v21)(v20, v12);
}

unint64_t sub_1BD70C564()
{
  result = qword_1EBD36A10;
  if (!qword_1EBD36A10)
  {
    sub_1BE04C884();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD36A10);
  }

  return result;
}

unint64_t sub_1BD70C5BC()
{
  result = qword_1EBD50F88;
  if (!qword_1EBD50F88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD50F80);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD50F88);
  }

  return result;
}

unint64_t sub_1BD70C620()
{
  result = qword_1EBD50F90;
  if (!qword_1EBD50F90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD50F98);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD50F80);
    sub_1BD70C5BC();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD50F90);
  }

  return result;
}

uint64_t PassImage.init(wrappedPass:width:includeShadow:suppressedContent:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>, double a5@<D0>)
{
  PKPassFrontFaceContentSize();
  *(a4 + 24) = a5;
  *(a4 + 32) = v11 / v10 * a5;
  v12 = type metadata accessor for PassImage(0);
  result = sub_1BD70D22C(a1, a4 + v12[6], type metadata accessor for WrappedPass);
  *a4 = sub_1BD70C870;
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  *(a4 + v12[7]) = a2;
  *(a4 + v12[8]) = a3;
  return result;
}

double PassImage.init(pass:width:includeShadow:suppressedContent:)@<D0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>, double a5@<D0>)
{
  v10 = type metadata accessor for PassImage(0);
  *(a4 + v10[6]) = a1;
  type metadata accessor for WrappedPass(0);
  swift_storeEnumTagMultiPayload();
  PKPassFrontFaceContentSize();
  result = v12 / v11 * a5;
  *(a4 + 24) = a5;
  *(a4 + 32) = result;
  *a4 = sub_1BD70C870;
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  *(a4 + v10[7]) = a2;
  *(a4 + v10[8]) = a3;
  return result;
}

uint64_t sub_1BD70C870()
{
  type metadata accessor for PassImage.Loader(0);
  v0 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD4AB00);
  sub_1BE04D874();
  *(v0 + OBJC_IVAR____TtCV9PassKitUI9PassImageP33_A9E82E34821618C1D5CE6A59E077FD6D6Loader_cachedPass) = 0;
  v1 = v0 + OBJC_IVAR____TtCV9PassKitUI9PassImageP33_A9E82E34821618C1D5CE6A59E077FD6D6Loader_cachedSize;
  *v1 = 0;
  *(v1 + 8) = 0;
  *(v1 + 16) = 1;
  return v0;
}

void PassImage.body.getter(uint64_t *a1@<X8>)
{
  v51 = a1;
  v2 = sub_1BE04CF34();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v48 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for PlaceholderPass(0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v48 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for WrappedPass(0);
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = (&v48 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = type metadata accessor for PassImage(0);
  sub_1BD0E8EA0(v1 + v15[6], v14);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    v24 = *v14;
    type metadata accessor for PassImage.Loader(0);
    sub_1BD70E2DC(&qword_1EBD50FE8, type metadata accessor for PassImage.Loader);
    sub_1BE04E3C4();
    v26 = v1[3];
    v25 = v1[4];
    v27 = v15[8];
    v50 = v1;
    sub_1BD70D640(v24, *(v1 + v27), v26, v25);

    sub_1BE04E3C4();
    swift_getKeyPath();
    swift_getKeyPath();
    sub_1BE04D8B4();

    if (v52)
    {
      v49 = v24;
      v28 = v52;
      v29 = sub_1BE051544();
      sub_1BE051CD4();
      sub_1BE04E5E4();
      v30 = v80;
      v31 = v82;
      v33 = v84;
      v32 = v85;
      v79 = v81;
      v78 = v83;
      if (*(v50 + v15[7]) == 1)
      {
        sub_1BE0513F4();
        v34 = sub_1BE051454();

        v50 = v28;
        v35 = v79;
        v36 = v78;
        sub_1BE048964();
        sub_1BE0513F4();
        v48 = sub_1BE051454();

        *&v59 = v29;
        *(&v59 + 1) = v30;
        LOBYTE(v60) = v35;
        *(&v60 + 1) = v31;
        LOBYTE(v61[0]) = v36;
        *(&v61[0] + 1) = v33;
        *&v61[1] = v32;
        BYTE8(v61[1]) = 1;
        *(v62 + 8) = xmmword_1BE0CACB0;
        *&v62[0] = v34;
        *(&v62[1] + 1) = 0x3FF0000000000000;
        v63 = v29;
        v74 = v61[0];
        v75 = v61[1];
        v76 = v62[0];
        v77 = v62[1];
        v72 = v59;
        v73 = v60;
        v64 = v30;
        LOBYTE(v65) = v35;
        v66 = v31;
        LOBYTE(v67) = v36;
        *&v68 = v33;
        *(&v68 + 1) = v32;
        LOBYTE(v69) = 1;
        *&v70[8] = xmmword_1BE0CACB0;
        *v70 = v34;
        v71 = 0x3FF0000000000000;
        sub_1BD0DE19C(&v59, &v52, &qword_1EBD51018);
        sub_1BD0DE53C(&v63, &qword_1EBD51018);
        v54 = v74;
        v55 = v75;
        v56[0] = v76;
        v56[1] = v77;
        v52 = v72;
        v53 = v73;
        *v57 = v48;
        *&v57[8] = xmmword_1BE0CC060;
        v58 = 0x4000000000000000;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD51020);
        sub_1BD70DF74();
        v23 = sub_1BE0518D4();
      }

      else
      {
        *&v52 = v29;
        *(&v52 + 1) = v80;
        LOBYTE(v53) = v79;
        *(&v53 + 1) = v82;
        LOBYTE(v54) = v78;
        *(&v54 + 1) = v84;
        *&v55 = v85;
        BYTE8(v55) = 1;
        sub_1BE048964();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD51008);
        sub_1BD70DEE8();
        v23 = sub_1BE0518D4();
      }

      goto LABEL_14;
    }

    v46 = sub_1BE051404();
    KeyPath = swift_getKeyPath();
    sub_1BE051CD4();
    sub_1BE04E5E4();
    *&v52 = KeyPath;
    *(&v52 + 1) = v46;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD50FF8);
    sub_1BD70DE5C();
    v45 = sub_1BE0518D4();

LABEL_12:
    *v51 = v45;
    return;
  }

  if (EnumCaseMultiPayload != 1)
  {
    sub_1BD70D22C(v14, v10, type metadata accessor for PlaceholderPass);
    (*(v3 + 16))(v6, &v10[*(v7 + 28)], v2);
    v37 = sub_1BE051604();
    sub_1BE051CD4();
    sub_1BE04E5E4();
    v38 = v80;
    v39 = v81;
    v40 = v82;
    v41 = v83;
    v42 = v84;
    if (*(v1 + v15[7]) == 1)
    {
      v50 = v85;
      sub_1BE0513F4();
      v43 = sub_1BE051454();

      v79 = v39;
      v78 = v41;
      sub_1BE048964();
      sub_1BE0513F4();
      v44 = sub_1BE051454();

      *&v59 = v37;
      *(&v59 + 1) = v38;
      LOBYTE(v60) = v79;
      *(&v60 + 1) = v40;
      LOBYTE(v61[0]) = v78;
      *(&v61[0] + 1) = v42;
      *&v61[1] = v50;
      *(&v61[1] + 1) = v43;
      v62[0] = xmmword_1BE0CACB0;
      *&v62[1] = 0x3FF0000000000000;
      *&v77 = 0x3FF0000000000000;
      v75 = v61[1];
      v76 = xmmword_1BE0CACB0;
      v73 = v60;
      v74 = v61[0];
      v72 = v59;
      v63 = v37;
      v64 = v38;
      LOBYTE(v65) = v79;
      v66 = v40;
      LOBYTE(v67) = v78;
      *&v68 = v42;
      *(&v68 + 1) = v50;
      v69 = v43;
      *v70 = xmmword_1BE0CACB0;
      *&v70[16] = 0x3FF0000000000000;
      sub_1BD0DE19C(&v59, &v52, &qword_1EBD50FA0);
      sub_1BD0DE53C(&v63, &qword_1EBD50FA0);
      v54 = v74;
      v55 = v75;
      v56[0] = v76;
      v52 = v72;
      v53 = v73;
      *&v56[1] = v77;
      *(&v56[1] + 1) = v44;
      *v57 = xmmword_1BE0CC060;
      *&v57[16] = 0x4000000000000000;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4D138);
      sub_1BD70D2F0();
      v45 = sub_1BE0518D4();
    }

    else
    {
      *&v52 = v37;
      *(&v52 + 1) = v80;
      LOBYTE(v53) = v81;
      *(&v53 + 1) = v82;
      LOBYTE(v54) = v83;
      *(&v54 + 1) = v84;
      *&v55 = v85;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3FC40);
      sub_1BD1A3410();
      v45 = sub_1BE0518D4();
    }

    sub_1BD70D294(v10);
    goto LABEL_12;
  }

  v17 = *(v1 + 3);
  v18 = *(v1 + 4);
  v19 = *v14;
  sub_1BE0513F4();
  v20 = sub_1BE051454();

  v21 = v19;
  sub_1BE0513F4();
  v22 = sub_1BE051454();

  *&v59 = v21;
  *(&v59 + 1) = v17;
  *&v60 = v18;
  WORD4(v60) = 257;
  *(v61 + 8) = xmmword_1BE0CACB0;
  *&v61[0] = v20;
  *(&v61[1] + 1) = 0x3FF0000000000000;
  v72 = v59;
  v73 = v60;
  v74 = v61[0];
  v75 = v61[1];
  v63 = v21;
  v64 = v17;
  v65 = v18;
  LOWORD(v66) = 257;
  v68 = xmmword_1BE0CACB0;
  v67 = v20;
  v69 = 0x3FF0000000000000;
  sub_1BD0DE19C(&v59, &v52, &qword_1EBD50FB8);
  sub_1BD0DE53C(&v63, &qword_1EBD50FB8);
  v52 = v72;
  v53 = v73;
  v54 = v74;
  v55 = v75;
  *&v56[0] = v22;
  *(v56 + 8) = xmmword_1BE0CC060;
  *(&v56[1] + 1) = 0x4000000000000000;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD50FC0);
  sub_1BD70D408();
  v23 = sub_1BE0518D4();

LABEL_14:
  *v51 = v23;
}

uint64_t sub_1BD70D22C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1BD70D294(uint64_t a1)
{
  v2 = type metadata accessor for PlaceholderPass(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1BD70D2F0()
{
  result = qword_1EBD50FA8;
  if (!qword_1EBD50FA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4D138);
    sub_1BD70D37C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD50FA8);
  }

  return result;
}

unint64_t sub_1BD70D37C()
{
  result = qword_1EBD50FB0;
  if (!qword_1EBD50FB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD50FA0);
    sub_1BD1A3410();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD50FB0);
  }

  return result;
}

unint64_t sub_1BD70D408()
{
  result = qword_1EBD50FC8;
  if (!qword_1EBD50FC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD50FC0);
    sub_1BD70D494();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD50FC8);
  }

  return result;
}

unint64_t sub_1BD70D494()
{
  result = qword_1EBD50FD0;
  if (!qword_1EBD50FD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD50FB8);
    sub_1BD70D520();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD50FD0);
  }

  return result;
}

unint64_t sub_1BD70D520()
{
  result = qword_1EBD50FD8;
  if (!qword_1EBD50FD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD50FE0);
    sub_1BD208348();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD50FD8);
  }

  return result;
}

uint64_t sub_1BD70D5CC()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();

  return v1;
}

void sub_1BD70D640(void *a1, uint64_t a2, double a3, double a4)
{
  v9 = [a1 uniqueID];
  if (v9)
  {
    v10 = v9;
    v11 = sub_1BE052434();
    v13 = v12;
  }

  else
  {
    v11 = 0;
    v13 = 0;
  }

  v14 = OBJC_IVAR____TtCV9PassKitUI9PassImageP33_A9E82E34821618C1D5CE6A59E077FD6D6Loader_cachedPass;
  v15 = *(v4 + OBJC_IVAR____TtCV9PassKitUI9PassImageP33_A9E82E34821618C1D5CE6A59E077FD6D6Loader_cachedPass);
  if (v15 && (v16 = [v15 uniqueID]) != 0)
  {
    v17 = v16;
    v18 = sub_1BE052434();
    v20 = v19;

    v21 = &qword_1EBD51000;
    if (!v13)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v18 = 0;
    v20 = 0;
    v21 = &qword_1EBD51000;
    if (!v13)
    {
LABEL_7:
      if (v20)
      {
        goto LABEL_14;
      }

      goto LABEL_16;
    }
  }

  if (!v20)
  {
LABEL_14:

    goto LABEL_21;
  }

  if (v11 == v18 && v13 == v20)
  {
  }

  else
  {
    v22 = sub_1BE053B84();

    if ((v22 & 1) == 0)
    {
LABEL_21:
      v25 = *(v4 + v14);
      *(v4 + v14) = a1;
      v26 = a1;

      v27 = v4 + v21[11];
      *v27 = a3;
      *(v27 + 8) = a4;
      *(v27 + 16) = 0;
      v28 = [objc_opt_self() sharedInstance];
      if (v28)
      {
        v29 = v28;
        v31[4] = sub_1BD70E2CC;
        v31[5] = v4;
        v31[0] = MEMORY[0x1E69E9820];
        v31[1] = 1107296256;
        v31[2] = sub_1BD20815C;
        v31[3] = &block_descriptor_166;
        v30 = _Block_copy(v31);
        sub_1BE048964();

        [v29 snapshotWithPass:v26 size:a2 suppressedContent:v30 completion:{a3, a4}];
        _Block_release(v30);
      }

      return;
    }
  }

LABEL_16:
  v23 = v4 + v21[11];
  if (*(v23 + 16))
  {
    goto LABEL_21;
  }

  if (*v23 != a3 || *(v23 + 8) != a4)
  {
    goto LABEL_21;
  }
}

uint64_t sub_1BD70D8A8(void *a1, uint64_t a2)
{
  v4 = sub_1BE051F54();
  v18 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v5);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1BE051FA4();
  v8 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17, v9);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BD14BE3C();
  v12 = sub_1BE052D54();
  v13 = swift_allocObject();
  *(v13 + 16) = a2;
  *(v13 + 24) = a1;
  aBlock[4] = sub_1BD70E2D4;
  aBlock[5] = v13;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BD126964;
  aBlock[3] = &block_descriptor_24_2;
  v14 = _Block_copy(aBlock);
  v15 = a1;
  sub_1BE048964();

  sub_1BE051F74();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1BD70E2DC(&qword_1EBD366B0, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD387F0);
  sub_1BD0DE4F4(&qword_1EBD35F20, &unk_1EBD387F0);
  sub_1BE053664();
  MEMORY[0x1BFB3FDF0](0, v11, v7, v14);
  _Block_release(v14);

  (*(v18 + 8))(v7, v4);
  return (*(v8 + 8))(v11, v17);
}

uint64_t sub_1BD70DB98(uint64_t a1, void *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();
  v3 = a2;
  sub_1BE048964();
  return sub_1BE04D8C4();
}

uint64_t sub_1BD70DC10()
{
  v1 = OBJC_IVAR____TtCV9PassKitUI9PassImageP33_A9E82E34821618C1D5CE6A59E077FD6D6Loader__image;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4F770);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_1BD70DCC8@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for PassImage.Loader(0);
  result = sub_1BE04D814();
  *a1 = result;
  return result;
}

uint64_t sub_1BD70DD0C@<X0>(void *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();

  *a1 = v3;
  return result;
}

uint64_t sub_1BD70DD8C(void **a1)
{
  v1 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  v2 = v1;
  sub_1BE048964();
  return sub_1BE04D8C4();
}

uint64_t sub_1BD70DE04@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1BE04F0A4();
  *a1 = result;
  return result;
}

unint64_t sub_1BD70DE5C()
{
  result = qword_1EBD51000;
  if (!qword_1EBD51000)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD50FF8);
    sub_1BD306A90();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD51000);
  }

  return result;
}

unint64_t sub_1BD70DEE8()
{
  result = qword_1EBD51010;
  if (!qword_1EBD51010)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD51008);
    sub_1BD1A3410();
    sub_1BD389FD8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD51010);
  }

  return result;
}

unint64_t sub_1BD70DF74()
{
  result = qword_1EBD51028;
  if (!qword_1EBD51028)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD51020);
    sub_1BD70E000();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD51028);
  }

  return result;
}

unint64_t sub_1BD70E000()
{
  result = qword_1EBD51030;
  if (!qword_1EBD51030)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD51018);
    sub_1BD70DEE8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD51030);
  }

  return result;
}

void sub_1BD70E0D0()
{
  sub_1BD70E18C();
  if (v0 <= 0x3F)
  {
    type metadata accessor for CGSize(319);
    if (v1 <= 0x3F)
    {
      type metadata accessor for WrappedPass(319);
      if (v2 <= 0x3F)
      {
        type metadata accessor for PKPassSuppressedContent(319);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1BD70E18C()
{
  if (!qword_1EBD51048)
  {
    type metadata accessor for PassImage.Loader(255);
    sub_1BD70E2DC(&qword_1EBD50FE8, type metadata accessor for PassImage.Loader);
    v0 = sub_1BE04E3E4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBD51048);
    }
  }
}

void sub_1BD70E228()
{
  sub_1BD2B01E4();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_1BD70E2DC(unint64_t *a1, void (*a2)(uint64_t))
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

id AppleBalanceAddMoneyUIManager.__allocating_init(account:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  *&v3[OBJC_IVAR____PKAppleBalanceAddMoneyUIManager_activeViewController] = 0;
  *&v3[OBJC_IVAR____PKAppleBalanceAddMoneyUIManager_dtuModel] = 0;
  *&v3[OBJC_IVAR____PKAppleBalanceAddMoneyUIManager_account] = a1;
  v5.receiver = v3;
  v5.super_class = v1;
  return objc_msgSendSuper2(&v5, sel_init);
}

id AppleBalanceAddMoneyUIManager.init(account:)(uint64_t a1)
{
  *&v1[OBJC_IVAR____PKAppleBalanceAddMoneyUIManager_activeViewController] = 0;
  *&v1[OBJC_IVAR____PKAppleBalanceAddMoneyUIManager_dtuModel] = 0;
  *&v1[OBJC_IVAR____PKAppleBalanceAddMoneyUIManager_account] = a1;
  v3.receiver = v1;
  v3.super_class = type metadata accessor for AppleBalanceAddMoneyUIManager();
  return objc_msgSendSuper2(&v3, sel_init);
}

void sub_1BD70E480(void *a1, void *a2, void *a3)
{
  v7 = sub_1BE04D214();
  v8 = *(v7 - 8);
  v10 = MEMORY[0x1EEE9AC00](v7, v9);
  v12 = aBlock - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *&v3[OBJC_IVAR____PKAppleBalanceAddMoneyUIManager_account];
  if ([v13 supportsInStoreTopUp])
  {

    sub_1BD70EA58(a1, a2, a3);
    return;
  }

  if ([v13 supportsTopUp])
  {
    v14 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v15 = swift_allocObject();
    v15[2] = v14;
    v15[3] = 0;
    v15[4] = 0;
    v15[5] = 1;
    v15[6] = a1;
    v16 = OBJC_IVAR____PKAppleBalanceAddMoneyUIManager_dtuModel;
    if (*&v3[OBJC_IVAR____PKAppleBalanceAddMoneyUIManager_dtuModel])
    {
      sub_1BE048964();
      v17 = a1;
      if (PKAppleBalanceDemoAccountEnabled())
      {
LABEL_8:
        sub_1BD70F0F4(v14, 0, 0, 1, a1);

LABEL_19:

        return;
      }
    }

    else
    {
      objc_allocWithZone(type metadata accessor for DirectTopUpModel());
      v24 = a2;
      sub_1BE048964();
      v25 = a1;
      v26 = v3;
      v27 = sub_1BD7B27BC(a2, 0, v3);

      v28 = *&v3[v16];
      *&v3[v16] = v27;

      if (PKAppleBalanceDemoAccountEnabled())
      {
        goto LABEL_8;
      }
    }

    v29 = *&v3[v16];
    if (v29)
    {
      v30 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v31 = swift_allocObject();
      v31[2] = v30;
      v31[3] = a1;
      v31[4] = 0;
      v31[5] = 0;
      v31[6] = 1;
      v31[7] = sub_1BD713C4C;
      v31[8] = v15;
      v32 = *&v29[OBJC_IVAR____TtC9PassKitUI16DirectTopUpModel_amsController];
      aBlock[4] = sub_1BD713DBC;
      aBlock[5] = v31;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1BD3F08C0;
      aBlock[3] = &block_descriptor_167;
      v33 = _Block_copy(aBlock);
      v34 = a1;
      v35 = v29;
      sub_1BE048964();
      sub_1BE048964();
      sub_1BE048964();

      [v32 requestDTUAvailable_];
      _Block_release(v33);

      return;
    }

    goto LABEL_19;
  }

  if ([v13 supportsAMPTopUp])
  {

    sub_1BD710144(0, a1, 1uLL, 0, 0, 0, 0);
  }

  else
  {
    sub_1BE04D194();
    v18 = a1;
    v19 = sub_1BE04D204();
    v20 = sub_1BE052C34();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      *v21 = 138412290;
      *(v21 + 4) = v18;
      *v22 = v18;
      v23 = v18;
      _os_log_impl(&dword_1BD026000, v19, v20, "Error: tried to present direct top up without either supporting feature from presenting controller %@", v21, 0xCu);
      sub_1BD0DE53C(v22, &unk_1EBD3E590);
      MEMORY[0x1BFB45F20](v22, -1, -1);
      MEMORY[0x1BFB45F20](v21, -1, -1);
    }

    (*(v8 + 8))(v12, v7);
  }
}

void sub_1BD70EA58(void *a1, void *a2, void *a3)
{
  v7 = *&v3[OBJC_IVAR____PKAppleBalanceAddMoneyUIManager_account];
  v8 = objc_allocWithZone(type metadata accessor for AppleBalanceAddMoneyViewController());
  v9 = a3;
  v10 = v7;
  v11 = v3;
  v12 = a2;
  v13 = sub_1BD290D88(v10, v11, a2, a3);
  v14 = *&v11[OBJC_IVAR____PKAppleBalanceAddMoneyUIManager_activeViewController];
  *&v11[OBJC_IVAR____PKAppleBalanceAddMoneyUIManager_activeViewController] = v13;
  v15 = v13;

  v16 = [objc_allocWithZone(MEMORY[0x1E69DCCD8]) initWithRootViewController_];
  [a1 presentViewController:v16 animated:1 completion:0];
}

void sub_1BD70EBFC(void *a1, unint64_t a2, void *a3, void *a4, void (*a5)(void), uint64_t a6)
{
  v47 = a4;
  v12 = sub_1BE04D214();
  v13 = *(v12 - 8);
  v15 = MEMORY[0x1EEE9AC00](v12, v14);
  v17 = &v42 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *&v6[OBJC_IVAR____PKAppleBalanceAddMoneyUIManager_account];
  if ([v18 supportsTopUp])
  {
    v19 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v20 = swift_allocObject();
    v20[2] = v19;
    v20[3] = a5;
    v20[4] = a6;
    v20[5] = a2;
    v20[6] = a1;
    v21 = OBJC_IVAR____PKAppleBalanceAddMoneyUIManager_dtuModel;
    if (*&v6[OBJC_IVAR____PKAppleBalanceAddMoneyUIManager_dtuModel])
    {
      sub_1BE048964();
      v22 = a1;
      sub_1BD0D44B8(a5);
      if (PKAppleBalanceDemoAccountEnabled())
      {
LABEL_4:
        sub_1BD70F0F4(v19, a5, a6, a2, a1);

LABEL_15:

        return;
      }
    }

    else
    {
      v45 = objc_allocWithZone(type metadata accessor for DirectTopUpModel());
      sub_1BE048964();
      v29 = a1;
      sub_1BD0D44B8(a5);
      v46 = a1;
      v30 = v47;
      v44 = v47;
      v43 = v6;
      v31 = a3;
      v32 = v30;
      a1 = v46;
      v33 = sub_1BD7B27BC(a3, v32, v6);

      v34 = *&v6[v21];
      *&v6[v21] = v33;

      if (PKAppleBalanceDemoAccountEnabled())
      {
        goto LABEL_4;
      }
    }

    v35 = *&v6[v21];
    if (v35)
    {
      v36 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v37 = swift_allocObject();
      v37[2] = v36;
      v37[3] = a1;
      v37[4] = a5;
      v37[5] = a6;
      v37[6] = a2;
      v37[7] = sub_1BD715110;
      v37[8] = v20;
      v38 = *&v35[OBJC_IVAR____TtC9PassKitUI16DirectTopUpModel_amsController];
      aBlock[4] = sub_1BD71516C;
      aBlock[5] = v37;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1BD3F08C0;
      aBlock[3] = &block_descriptor_20_1;
      v39 = _Block_copy(aBlock);
      v40 = a1;
      sub_1BD0D44B8(a5);
      v41 = v35;
      sub_1BE048964();
      sub_1BE048964();
      sub_1BE048964();

      [v38 requestDTUAvailable_];
      _Block_release(v39);

      return;
    }

    goto LABEL_15;
  }

  if ([v18 supportsAMPTopUp])
  {

    sub_1BD710144(0, a1, a2, 0, 0, a5, a6);
  }

  else
  {
    sub_1BE04D194();
    v23 = a1;
    v24 = sub_1BE04D204();
    v25 = sub_1BE052C34();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      *v26 = 138412290;
      *(v26 + 4) = v23;
      *v27 = v23;
      v28 = v23;
      _os_log_impl(&dword_1BD026000, v24, v25, "Error: tried to present direct top up without either supporting feature from presenting controller %@", v26, 0xCu);
      sub_1BD0DE53C(v27, &unk_1EBD3E590);
      MEMORY[0x1BFB45F20](v27, -1, -1);
      MEMORY[0x1BFB45F20](v26, -1, -1);
    }

    (*(v13 + 8))(v17, v12);
  }
}

void sub_1BD70F0F4(uint64_t a1, void (*a2)(void), uint64_t a3, uint64_t a4, void *a5)
{
  v31 = a5;
  v8 = sub_1BE051F54();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1BE051FA4();
  v32 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13, v14);
  v16 = &v28 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v18 = Strong;
    v30 = v9;
    v19 = *&Strong[OBJC_IVAR____PKAppleBalanceAddMoneyUIManager_dtuModel];
    if (v19)
    {
      sub_1BD14BE3C();
      v20 = v19;
      v28 = sub_1BE052D54();
      v21 = swift_allocObject();
      v21[2] = v18;
      v21[3] = a4;
      v29 = v13;
      v22 = v31;
      v21[4] = v20;
      v21[5] = v22;
      v21[6] = a2;
      v21[7] = a3;
      aBlock[4] = sub_1BD71504C;
      aBlock[5] = v21;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1BD126964;
      aBlock[3] = &block_descriptor_132_2;
      v23 = _Block_copy(aBlock);
      v24 = v20;
      v25 = v18;
      v26 = v22;
      sub_1BD0D44B8(a2);

      sub_1BE051F74();
      aBlock[0] = MEMORY[0x1E69E7CC0];
      sub_1BD715004(&qword_1EBD366B0, MEMORY[0x1E69E7F60]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD387F0);
      sub_1BD14ECDC();
      sub_1BE053664();
      v27 = v28;
      MEMORY[0x1BFB3FDF0](0, v16, v12, v23);
      _Block_release(v23);

      (*(v30 + 8))(v12, v8);
      (*(v32 + 8))(v16, v29);
      return;
    }
  }

  if (a2)
  {
    sub_1BE048964();
    a2(0);
    sub_1BD1107D8(a2);
  }
}

void sub_1BD70F464(char *a1, uint64_t a2, void *a3, void *a4, void (*a5)(uint64_t), uint64_t a6)
{
  v12 = *&a1[OBJC_IVAR____PKAppleBalanceAddMoneyUIManager_account];
  v13 = objc_allocWithZone(type metadata accessor for AppleBalanceDirectTopUpViewController());
  v14 = v12;
  v15 = a1;
  v16 = a3;
  v17 = sub_1BD242814(v14, a2, v15, v16, 0);

  v18 = *&v15[OBJC_IVAR____PKAppleBalanceAddMoneyUIManager_activeViewController];
  *&v15[OBJC_IVAR____PKAppleBalanceAddMoneyUIManager_activeViewController] = v17;
  v28 = v17;

  if (a2 > 1)
  {
    if (a2 != 2)
    {
      goto LABEL_13;
    }

    v27 = [a4 navigationController];
    if (v27)
    {
      [v27 pushViewController:v28 animated:1];
    }

    if (!a5)
    {

      v25 = v27;
      goto LABEL_23;
    }

    sub_1BE048964();
    a5(1);

    v23 = v27;
  }

  else
  {
    if (!a2)
    {

      v19 = [a4 navigationController];
      if (v19)
      {
        v20 = v19;
        if (a5)
        {
          aBlock[4] = a5;
          aBlock[5] = a6;
          aBlock[0] = MEMORY[0x1E69E9820];
          aBlock[1] = 1107296256;
          aBlock[2] = sub_1BD3F08C0;
          aBlock[3] = &block_descriptor_135_0;
          v21 = _Block_copy(aBlock);
          v22 = v20;
          sub_1BD0D44B8(a5);
        }

        else
        {
          v26 = v19;
          v21 = 0;
        }

        [v20 pk:v28 presentPaymentSetupViewController:1 animated:v21 completion:?];

        _Block_release(v21);
        return;
      }

      goto LABEL_21;
    }

    if (a2 != 1)
    {
      do
      {
        sub_1BE053994();
        __break(1u);
LABEL_13:
        ;
      }

      while (a2 != 3);
    }

    v24 = [objc_allocWithZone(MEMORY[0x1E69DCCD8]) initWithRootViewController_];
    [a4 presentViewController:v24 animated:1 completion:0];
    if (!a5)
    {

LABEL_21:
      v25 = v28;
LABEL_23:

      return;
    }

    sub_1BE048964();
    a5(1);

    v23 = v28;
  }

  sub_1BD1107D8(a5);
}

void sub_1BD70F808(char a1, uint64_t a2, void *a3, void (*a4)(void), uint64_t a5, uint64_t a6, void (*a7)(uint64_t), uint64_t a8)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v16 = Strong;
    if (a1)
    {
      v17 = *(Strong + OBJC_IVAR____PKAppleBalanceAddMoneyUIManager_dtuModel);
      if (v17)
      {
        v26 = OBJC_IVAR____PKAppleBalanceAddMoneyUIManager_dtuModel;
        v27 = a5;
        swift_getKeyPath();
        sub_1BD715004(&unk_1EBD3EC80, type metadata accessor for DirectTopUpModel);
        v18 = v17;
        sub_1BE04B594();

        if (*&v18[OBJC_IVAR____TtC9PassKitUI16DirectTopUpModel__configuration])
        {
        }

        else
        {
          swift_getKeyPath();
          sub_1BE04B594();

          v19 = v18[OBJC_IVAR____TtC9PassKitUI16DirectTopUpModel__loadingConfiguration];

          if ((v19 & 1) == 0 && (a6 | 2) == 2)
          {
            v20 = *&v16[OBJC_IVAR____PKAppleBalanceAddMoneyUIManager_activeViewController];
            *&v16[OBJC_IVAR____PKAppleBalanceAddMoneyUIManager_activeViewController] = a3;
            v21 = a3;

            v22 = *&v16[v26];
            if (v22)
            {
              v23 = swift_allocObject();
              swift_unknownObjectWeakInit();
              v24 = v21;
              sub_1BE048964();
              sub_1BE048964();
              sub_1BD0D44B8(a4);
              v25 = v22;
              sub_1BD7B2948(v25, a7, a8, v23, v24, a4, v27);

              sub_1BD1107D8(a4);

              return;
            }

            goto LABEL_13;
          }
        }
      }

      (a7)();
    }

    else
    {
      sub_1BD7120DC(a3);
      if (a4)
      {
        a4(0);
      }
    }

LABEL_13:
  }
}

uint64_t sub_1BD70FA9C(char a1, void *a2, uint64_t (*a3)(double), uint64_t a4, uint64_t a5, void *a6, void (*a7)(void), uint64_t a8)
{
  v32[1] = a8;
  v13 = sub_1BE04D214();
  v14 = *(v13 - 8);
  v16 = MEMORY[0x1EEE9AC00](v13, v15);
  v18 = v32 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    return a3(v16);
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v21 = *&Strong[OBJC_IVAR____PKAppleBalanceAddMoneyUIManager_activeViewController];
    *&Strong[OBJC_IVAR____PKAppleBalanceAddMoneyUIManager_activeViewController] = 0;
  }

  swift_beginAccess();
  v22 = swift_unknownObjectWeakLoadStrong();
  if (v22)
  {
    v23 = v22;
    sub_1BD713E68(0, a6);
  }

  sub_1BE04D194();
  v24 = a2;
  v25 = sub_1BE04D204();
  v26 = sub_1BE052C34();

  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    *v27 = 138412290;
    if (a2)
    {
      v29 = a2;
      v30 = _swift_stdlib_bridgeErrorToNSError();
      v31 = v30;
    }

    else
    {
      v30 = 0;
      v31 = 0;
    }

    *(v27 + 4) = v30;
    *v28 = v31;
    _os_log_impl(&dword_1BD026000, v25, v26, "Failed to load Apple Account Add Money UI with error: %@", v27, 0xCu);
    sub_1BD0DE53C(v28, &unk_1EBD3E590);
    MEMORY[0x1BFB45F20](v28, -1, -1);
    MEMORY[0x1BFB45F20](v27, -1, -1);
  }

  result = (*(v14 + 8))(v18, v13);
  if (a7)
  {
    sub_1BE048964();
    a7(0);
    return sub_1BD1107D8(a7);
  }

  return result;
}

uint64_t sub_1BD70FFF4(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1BD1A8284(a2);
  sub_1BD710144(2u, a1, 2uLL, v5, a3, 0, 0);
}

void sub_1BD710144(unsigned __int8 a1, void *a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v101 = a7;
  v105 = a6;
  v98 = a4;
  v99 = a2;
  aBlock[6] = *MEMORY[0x1E69E9840];
  v11 = sub_1BE04D214();
  v96 = *(v11 - 8);
  v97 = v11;
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v89 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15, v16);
  v18 = &v89 - v17;
  v19 = sub_1BE04AA64();
  v100 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19, v20);
  v22 = &v89 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = [objc_opt_self() mainBundle];
  v24 = [v23 bundleIdentifier];

  if (v24)
  {
    v92 = a3;
    v93 = a5;
    v94 = v7;
    v95 = v19;
    v25 = [objc_opt_self() bagForProfile:*MEMORY[0x1E69B9378] profileVersion:*MEMORY[0x1E69B9380]];
    v26 = [objc_opt_self() ams_sharedAccountStore];
    v103 = [v26 ams_activeiTunesAccount];

    v102 = [objc_allocWithZone(MEMORY[0x1E698CAC8]) initWithBundleIdentifier_];
    v27 = sub_1BE052404();

    v104 = v25;
    v28 = [v25 URLForKey_];

    aBlock[0] = 0;
    v29 = [v28 valueWithError_];

    v30 = aBlock[0];
    if (v29)
    {
      sub_1BE04A9F4();
      v31 = v30;

      v32 = a1;
      v91 = v18;
      if (a1)
      {
        v33 = v92;
        v34 = sub_1BE053B84();

        v35 = 0;
        if ((v34 & 1) == 0)
        {
          v36 = a1;
          if (!a1)
          {
            goto LABEL_18;
          }

          goto LABEL_6;
        }
      }

      else
      {

        v33 = v92;
      }

      v35 = v33 == 2;
      v36 = a1;
      if (!a1)
      {
        goto LABEL_18;
      }

LABEL_6:
      if (v36 != 1)
      {
        v47 = 1;
LABEL_20:

        v48 = objc_allocWithZone(type metadata accessor for PKAMSUIWebViewController());
        v49 = [v48 initWithBag:v104 account:v103 clientInfo:v102];
        [v49 setDelegate_];
        v90 = "contentBonusOfferRedemptionUrl";
        v92 = 0x80000001BE136C60;
        if (v98)
        {
          v50 = sub_1BE052224();
        }

        else
        {
          v50 = 0;
        }

        [v49 setClientOptions_];

        v51 = sub_1BE04A9C4();
        v52 = [v49 loadURL_];

        v53 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v54 = swift_allocObject();
        v98 = v53;
        *(v54 + 16) = v53;
        v55 = v99;
        *(v54 + 24) = v99;
        *(v54 + 32) = v47 & 1;
        *(v54 + 40) = v49;
        *(v54 + 48) = a1;
        v56 = v105;
        v57 = v22;
        v58 = v101;
        *(v54 + 56) = v105;
        *(v54 + 64) = v58;
        if (v35)
        {
          v59 = swift_allocObject();
          v59[2] = sub_1BD71505C;
          v59[3] = v54;
          aBlock[4] = sub_1BD715094;
          aBlock[5] = v59;
          aBlock[0] = MEMORY[0x1E69E9820];
          aBlock[1] = 1107296256;
          aBlock[2] = sub_1BD3CC8C0;
          aBlock[3] = &block_descriptor_145_1;
          v60 = v55;
          v61 = _Block_copy(aBlock);
          v62 = v49;
          sub_1BD0D44B8(v56);
          v63 = v60;
          sub_1BE048964();

          [v52 addFinishBlock_];
          _Block_release(v61);

          (*(v100 + 8))(v57, v95);
          return;
        }

        v94 = v52;
        if (v47)
        {
          v64 = v49;
          sub_1BD0D44B8(v105);
          v65 = v55;
          sub_1BE048964();
          v66 = [v65 navigationController];
          v67 = v57;
          if (v66)
          {
            v68 = v66;
            v69 = [v64 navigationItem];
            [v69 setHidesBackButton_];

            [v68 pushViewController:v64 animated:1];
            v70 = v104;
            v71 = v105;
            v72 = v95;
            if (!v105)
            {
              goto LABEL_44;
            }
          }

          else
          {
            v81 = v91;
            sub_1BE04D194();
            v82 = sub_1BE04D204();
            v83 = sub_1BE052C34();
            if (os_log_type_enabled(v82, v83))
            {
              v84 = swift_slowAlloc();
              v99 = swift_slowAlloc();
              aBlock[0] = v99;
              *v84 = 136315138;
              if (v32)
              {
                if (v32 == 1)
                {
                  v85 = v90 | 0x8000000000000000;
                  v86 = 0xD000000000000011;
                  v70 = v104;
                }

                else
                {
                  v86 = 0xD00000000000001ELL;
                  v70 = v104;
                  v85 = v92;
                }
              }

              else
              {
                v85 = 0xEB000000006C7255;
                v70 = v104;
                v86 = 0x73646E7546646441;
              }

              v87 = sub_1BD123690(v86, v85, aBlock);

              *(v84 + 4) = v87;
              _os_log_impl(&dword_1BD026000, v82, v83, "Tried to push AMS web view for key %s without navigation controller", v84, 0xCu);
              v88 = v99;
              __swift_destroy_boxed_opaque_existential_0(v99);
              MEMORY[0x1BFB45F20](v88, -1, -1);
              MEMORY[0x1BFB45F20](v84, -1, -1);

              (*(v96 + 8))(v81, v97);
            }

            else
            {

              (*(v96 + 8))(v81, v97);
              v70 = v104;
            }

            v71 = v105;
            v72 = v95;
            if (!v105)
            {
              goto LABEL_44;
            }
          }
        }

        else
        {
          v73 = v55;
          v74 = objc_allocWithZone(MEMORY[0x1E69DCCD8]);
          v75 = v49;
          v71 = v105;
          sub_1BD0D44B8(v105);
          v76 = v73;
          sub_1BE048964();
          v77 = [v74 initWithRootViewController_];
          [v76 presentViewController:v77 animated:1 completion:0];

          v70 = v104;
          v67 = v57;
          v72 = v95;
          if (!v71)
          {
LABEL_44:

            v49 = v70;
            goto LABEL_45;
          }
        }

        sub_1BE048964();
        v71(1);

        sub_1BD1107D8(v71);

LABEL_45:

        (*(v100 + 8))(v67, v72);

        return;
      }

LABEL_18:
      v47 = sub_1BE053B84();
      goto LABEL_20;
    }

    v37 = aBlock[0];
    v38 = sub_1BE04A854();

    swift_willThrow();
    sub_1BE04D194();
    v39 = v38;
    v40 = sub_1BE04D204();
    v41 = sub_1BE052C34();

    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      aBlock[0] = v44;
      *v42 = 136315394;
      if (a1)
      {
        if (a1 == 1)
        {
          v45 = 0xD000000000000011;
        }

        else
        {
          v45 = 0xD00000000000001ELL;
        }

        if (a1 == 1)
        {
          v46 = 0x80000001BE136C80;
        }

        else
        {
          v46 = 0x80000001BE136C60;
        }
      }

      else
      {
        v45 = 0x73646E7546646441;
        v46 = 0xEB000000006C7255;
      }

      v78 = sub_1BD123690(v45, v46, aBlock);

      *(v42 + 4) = v78;
      *(v42 + 12) = 2112;
      v79 = v38;
      v80 = _swift_stdlib_bridgeErrorToNSError();
      *(v42 + 14) = v80;
      *v43 = v80;
      _os_log_impl(&dword_1BD026000, v40, v41, "Failed to retrieve url from AMSBag for key %s with error %@", v42, 0x16u);
      sub_1BD0DE53C(v43, &unk_1EBD3E590);
      MEMORY[0x1BFB45F20](v43, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v44);
      MEMORY[0x1BFB45F20](v44, -1, -1);
      MEMORY[0x1BFB45F20](v42, -1, -1);
    }

    else
    {
    }

    (*(v96 + 8))(v14, v97);
  }
}

void sub_1BD710D98(int a1, void *a2, uint64_t a3, void *a4, char a5, void *a6, char a7, void (*a8)(void))
{
  v45 = a8;
  v44 = a1;
  v13 = sub_1BE04D214();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13, v15);
  v17 = &v43[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v20 = MEMORY[0x1EEE9AC00](v18, v19);
  v22 = &v43[-v21];
  if (a2)
  {
    sub_1BE04D194();
    v23 = a2;
    v24 = sub_1BE04D204();
    v25 = sub_1BE052C34();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      *v26 = 138412290;
      v28 = a2;
      v29 = _swift_stdlib_bridgeErrorToNSError();
      *(v26 + 4) = v29;
      *v27 = v29;
      _os_log_impl(&dword_1BD026000, v24, v25, "Error loading AMS web page before presentation: %@", v26, 0xCu);
      sub_1BD0DE53C(v27, &unk_1EBD3E590);
      MEMORY[0x1BFB45F20](v27, -1, -1);
      MEMORY[0x1BFB45F20](v26, -1, -1);
    }

    (*(v14 + 8))(v22, v13);
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (!Strong)
    {
LABEL_12:
      v35 = v45;
      if (!v45)
      {
        return;
      }

      goto LABEL_13;
    }

    v31 = Strong;
    sub_1BD713E68(0, a4);
LABEL_11:

    goto LABEL_12;
  }

  if ((a5 & 1) == 0)
  {
    v31 = [objc_allocWithZone(MEMORY[0x1E69DCCD8]) initWithRootViewController_];
    [a4 presentViewController:v31 animated:1 completion:0];
    goto LABEL_11;
  }

  v32 = [a4 navigationController];
  if (v32)
  {
    v33 = v32;
    v34 = [a6 navigationItem];
    [v34 setHidesBackButton_];

    [v33 pushViewController:a6 animated:1];
    v35 = v45;
    if (!v45)
    {
      return;
    }

    goto LABEL_13;
  }

  sub_1BE04D194();
  v36 = sub_1BE04D204();
  v37 = sub_1BE052C34();
  if (os_log_type_enabled(v36, v37))
  {
    v38 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    v46[0] = v39;
    *v38 = 136315138;
    if (a7)
    {
      if (a7 == 1)
      {
        v40 = 0xD000000000000011;
      }

      else
      {
        v40 = 0xD00000000000001ELL;
      }

      if (a7 == 1)
      {
        v41 = 0x80000001BE136C80;
      }

      else
      {
        v41 = 0x80000001BE136C60;
      }
    }

    else
    {
      v41 = 0xEB000000006C7255;
      v40 = 0x73646E7546646441;
    }

    v42 = sub_1BD123690(v40, v41, v46);

    *(v38 + 4) = v42;
    _os_log_impl(&dword_1BD026000, v36, v37, "Tried to push AMS web view for key %s without navigation controller", v38, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v39);
    MEMORY[0x1BFB45F20](v39, -1, -1);
    MEMORY[0x1BFB45F20](v38, -1, -1);
  }

  (*(v14 + 8))(v17, v13);
  v35 = v45;
  if (v45)
  {
LABEL_13:
    sub_1BE048964();
    v35(v44 & 1);
    sub_1BD1107D8(v35);
  }
}

void sub_1BD7111F8(void *a1, uint64_t a2, void *a3)
{
  v4 = v3;
  v8 = *(v4 + OBJC_IVAR____PKAppleBalanceAddMoneyUIManager_account);
  v9 = objc_allocWithZone(type metadata accessor for InStoreTopUpTokenModel());
  v10 = a3;
  v11 = sub_1BD85BDFC(v8, a3);
  sub_1BD711364(a1, a2, v11);
}

void sub_1BD711364(void *a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a1)
  {
    v18 = a1;
  }

  else
  {
    v8 = *(v4 + OBJC_IVAR____PKAppleBalanceAddMoneyUIManager_activeViewController);
    if (!v8)
    {
      return;
    }

    v18 = v8;
  }

  v9 = *(v4 + OBJC_IVAR____PKAppleBalanceAddMoneyUIManager_account);
  objc_allocWithZone(type metadata accessor for AppleBalanceInStoreTopUpViewController());
  v10 = v9;
  v11 = a3;
  v12 = a1;
  v13 = sub_1BD465998(v10, a2, v11);
  v14 = *(v4 + OBJC_IVAR____PKAppleBalanceAddMoneyUIManager_activeViewController);
  *(v4 + OBJC_IVAR____PKAppleBalanceAddMoneyUIManager_activeViewController) = v13;
  v15 = v13;

  if (a2 != 1)
  {
    if (a2)
    {
      sub_1BE053994();
      __break(1u);
      return;
    }

    v17 = [objc_allocWithZone(MEMORY[0x1E69DCCD8]) initWithRootViewController_];

    [v18 presentViewController:v17 animated:1 completion:0];
    goto LABEL_10;
  }

  v16 = [v18 navigationController];
  if (v16)
  {
    v17 = v16;
    [v16 pushViewController:v15 animated:1];
LABEL_10:
  }
}

void sub_1BD711544(uint64_t a1, void *a2)
{
  v37 = sub_1BE04BD74();
  v4 = *(v37 - 8);
  MEMORY[0x1EEE9AC00](v37, v5);
  v7 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD416C0);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v11 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = &v34 - v14;
  sub_1BD23C2BC(a1, &v34 - v14);
  v16 = type metadata accessor for FeatureError(0);
  v17 = *(*(v16 - 8) + 48);
  if (v17(v15, 1, v16) == 1)
  {
    sub_1BD0DE53C(v15, &qword_1EBD416C0);
    v36 = 0;
    v18 = 0;
  }

  else
  {
    v35 = a2;
    v19 = sub_1BE04A844();
    v20 = PKTitleForDisplayableError();

    if (v20)
    {
      v36 = sub_1BE052434();
      v18 = v21;
    }

    else
    {
      v36 = 0;
      v18 = 0;
    }

    sub_1BD230994(v15);
    a2 = v35;
  }

  sub_1BD23C2BC(a1, v11);
  if (v17(v11, 1, v16) == 1)
  {
    sub_1BD0DE53C(v11, &qword_1EBD416C0);
    v22 = 0;
    v23 = v37;
    if (v18)
    {
      goto LABEL_9;
    }

LABEL_15:
    v24 = 0;
    if (v22)
    {
      goto LABEL_10;
    }

    goto LABEL_16;
  }

  v26 = sub_1BE04A844();
  v27 = MEMORY[0x1BFB42D10]();

  v23 = v37;
  if (v27)
  {
    sub_1BE052434();
    v22 = v28;
  }

  else
  {
    v22 = 0;
  }

  sub_1BD230994(v11);
  if (!v18)
  {
    goto LABEL_15;
  }

LABEL_9:
  v24 = sub_1BE052404();

  if (v22)
  {
LABEL_10:
    v25 = sub_1BE052404();

    goto LABEL_17;
  }

LABEL_16:
  v25 = 0;
LABEL_17:
  v29 = [objc_opt_self() alertControllerWithTitle:v24 message:v25 preferredStyle:1];

  (*(v4 + 104))(v7, *MEMORY[0x1E69B8060], v23);
  v30 = PKPassKitBundle();
  if (v30)
  {
    v31 = v30;
    sub_1BE04B6F4();

    (*(v4 + 8))(v7, v23);
    v32 = sub_1BE052404();

    v33 = [objc_opt_self() actionWithTitle:v32 style:1 handler:0];

    [v29 addAction_];
    PKApplyDefaultIconToAlertController(v29);
    [a2 presentViewController:v29 animated:1 completion:0];
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1BD711988(void *a1, uint64_t a2, void *a3, void *a4)
{
  v7 = sub_1BE051F54();
  v23 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_1BE051FA4();
  v11 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22, v12);
  v14 = &v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BD14BE3C();
  v15 = sub_1BE052D54();
  v16 = swift_allocObject();
  v16[2] = a1;
  v16[3] = a3;
  v16[4] = a4;
  aBlock[4] = sub_1BD714EF0;
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BD126964;
  aBlock[3] = &block_descriptor_115;
  v17 = _Block_copy(aBlock);
  v18 = a1;
  v19 = a3;
  v20 = a4;

  sub_1BE051F74();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1BD715004(&qword_1EBD366B0, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD387F0);
  sub_1BD14ECDC();
  sub_1BE053664();
  MEMORY[0x1BFB3FDF0](0, v14, v10, v17);
  _Block_release(v17);

  (*(v23 + 8))(v10, v7);
  return (*(v11 + 8))(v14, v22);
}

uint64_t sub_1BD711C58(uint64_t a1, void *a2, uint64_t a3)
{
  v37 = a3;
  v5 = sub_1BE04D214();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF70);
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v13 = &v36 - v12;
  v14 = sub_1BE04AA64();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14, v16);
  v18 = &v36 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x1EEE9AC00](v19, v20);
  v23 = &v36 - v22;
  if (a1 && ((*(v15 + 56))(v13, 1, 1, v14, v21), sub_1BD715004(&qword_1EBD51090, MEMORY[0x1E6968FB0]), sub_1BE053A34(), (*(v15 + 48))(v13, 1, v14) != 1))
  {
    v32 = *(v15 + 32);
    v32(v18, v13, v14);
    v32(v23, v18, v14);
    v33 = objc_opt_self();
    v34 = sub_1BE04A9C4();

    return (*(v15 + 8))(v23, v14);
  }

  else
  {
    sub_1BE04D194();
    v24 = a2;
    v25 = sub_1BE04D204();
    v26 = sub_1BE052C34();

    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      *v27 = 138412290;
      if (a2)
      {
        v29 = a2;
        v30 = _swift_stdlib_bridgeErrorToNSError();
        v31 = v30;
      }

      else
      {
        v30 = 0;
        v31 = 0;
      }

      *(v27 + 4) = v30;
      *v28 = v31;
      _os_log_impl(&dword_1BD026000, v25, v26, "AppleBalanceAddMoneyUIManager: AMSBag failed to fetch addFunds URL: %@", v27, 0xCu);
      sub_1BD0DE53C(v28, &unk_1EBD3E590);
      MEMORY[0x1BFB45F20](v28, -1, -1);
      MEMORY[0x1BFB45F20](v27, -1, -1);
    }

    return (*(v6 + 8))(v9, v5);
  }
}

void sub_1BD712048(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v7 = *(a1 + 32);
  sub_1BE048964();
  v9 = a2;
  v8 = a4;
  v7(a2, a3, a4);
}

uint64_t sub_1BD7120DC(void *a1)
{
  v3 = sub_1BE051F54();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_1BE051FA4();
  v8 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19, v9);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BD14BE3C();
  v12 = sub_1BE052D54();
  v13 = swift_allocObject();
  *(v13 + 16) = v1;
  *(v13 + 24) = a1;
  aBlock[4] = sub_1BD714590;
  aBlock[5] = v13;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BD126964;
  aBlock[3] = &block_descriptor_53_1;
  v14 = _Block_copy(aBlock);
  v15 = v1;
  v16 = a1;

  sub_1BE051F74();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1BD715004(&qword_1EBD366B0, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD387F0);
  sub_1BD14ECDC();
  sub_1BE053664();
  MEMORY[0x1BFB3FDF0](0, v11, v7, v14);
  _Block_release(v14);

  (*(v4 + 8))(v7, v3);
  return (*(v8 + 8))(v11, v19);
}

void sub_1BD712398(uint64_t a1, void *a2)
{
  v3 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v6[4] = sub_1BD714598;
  v6[5] = v3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 1107296256;
  v6[2] = sub_1BD126964;
  v6[3] = &block_descriptor_57_4;
  v4 = _Block_copy(v6);

  v5 = PKCreateAlertControllerForAppleAccountTopUpUnavailable(v4, 0);
  _Block_release(v4);
  [a2 presentViewController:v5 animated:1 completion:0];
}

void sub_1BD71249C()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_1BD713C50();
  }
}

void sub_1BD7124F0(uint64_t a1, uint64_t a2, void *a3, void (*a4)(void, void), uint64_t a5)
{
  v9 = sub_1BE04D214();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = aBlock - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(v5 + OBJC_IVAR____PKAppleBalanceAddMoneyUIManager_activeViewController);
  if (v14)
  {
    v15 = objc_allocWithZone(MEMORY[0x1E698CC50]);
    v16 = v14;
    v17 = [v15 initWithRequest:a3 presentingViewController:v16];
    v18 = [v17 present];
    aBlock[4] = a4;
    aBlock[5] = a5;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1BD715170;
    aBlock[3] = &block_descriptor_23_7;
    v19 = _Block_copy(aBlock);
    sub_1BE048964();

    [v18 addFinishBlock_];
    _Block_release(v19);
  }

  else
  {
    sub_1BE04D194();
    v20 = a3;
    v21 = sub_1BE04D204();
    v22 = sub_1BE052C34();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      *v23 = 138412290;
      *(v23 + 4) = v20;
      *v24 = v20;
      v25 = v20;
      _os_log_impl(&dword_1BD026000, v21, v22, "AppleBalanceAddMoneyUIManager: AMSURLSession attempted to present dialog request %@, but active controller was nil", v23, 0xCu);
      sub_1BD0DE53C(v24, &unk_1EBD3E590);
      MEMORY[0x1BFB45F20](v24, -1, -1);
      MEMORY[0x1BFB45F20](v23, -1, -1);
    }

    (*(v10 + 8))(v13, v9);
    a4(0, 0);
  }
}

void sub_1BD712884(uint64_t a1, uint64_t a2, void *a3, void (*a4)(void, void), uint64_t a5)
{
  v9 = sub_1BE04D214();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = aBlock - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(v5 + OBJC_IVAR____PKAppleBalanceAddMoneyUIManager_activeViewController);
  if (v14)
  {
    v15 = objc_allocWithZone(MEMORY[0x1E698CC58]);
    v16 = v14;
    v17 = [v15 initWithRequest:a3 presentingViewController:v16];
    v18 = [v17 performAuthentication];
    aBlock[4] = a4;
    aBlock[5] = a5;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1BD715170;
    aBlock[3] = &block_descriptor_26_0;
    v19 = _Block_copy(aBlock);
    sub_1BE048964();

    [v18 addFinishBlock_];
    _Block_release(v19);
  }

  else
  {
    sub_1BE04D194();
    v20 = a3;
    v21 = sub_1BE04D204();
    v22 = sub_1BE052C34();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      *v23 = 138412290;
      *(v23 + 4) = v20;
      *v24 = v20;
      v25 = v20;
      _os_log_impl(&dword_1BD026000, v21, v22, "AppleBalanceAddMoneyUIManager: AMSURLSession attempted to present authenticate request %@, but active controller was nil", v23, 0xCu);
      sub_1BD0DE53C(v24, &unk_1EBD3E590);
      MEMORY[0x1BFB45F20](v24, -1, -1);
      MEMORY[0x1BFB45F20](v23, -1, -1);
    }

    (*(v10 + 8))(v13, v9);
    a4(0, 0);
  }
}

void sub_1BD712C18(uint64_t a1, uint64_t a2, void *a3, void (*a4)(void, void), uint64_t a5)
{
  v9 = sub_1BE04D214();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = aBlock - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(v5 + OBJC_IVAR____PKAppleBalanceAddMoneyUIManager_activeViewController);
  if (v14)
  {
    v15 = *MEMORY[0x1E69B9378];
    v16 = *MEMORY[0x1E69B9380];
    v17 = objc_opt_self();
    v18 = v14;
    v19 = [v17 bagForProfile:v15 profileVersion:v16];
    v20 = [objc_allocWithZone(MEMORY[0x1E698CCD0]) initWithRequest:a3 bag:v19 presentingViewController:v18];
    v21 = [v20 presentEngagement];
    aBlock[4] = a4;
    aBlock[5] = a5;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1BD715170;
    aBlock[3] = &block_descriptor_29_6;
    v22 = _Block_copy(aBlock);
    sub_1BE048964();

    [v21 addFinishBlock_];
    _Block_release(v22);
  }

  else
  {
    sub_1BE04D194();
    v23 = a3;
    v24 = sub_1BE04D204();
    v25 = sub_1BE052C34();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      *v26 = 138412290;
      *(v26 + 4) = v23;
      *v27 = v23;
      v28 = v23;
      _os_log_impl(&dword_1BD026000, v24, v25, "AppleBalanceAddMoneyUIManager: AMSURLSession attempted to present engagement request %@, but active controller was nil", v26, 0xCu);
      sub_1BD0DE53C(v27, &unk_1EBD3E590);
      MEMORY[0x1BFB45F20](v27, -1, -1);
      MEMORY[0x1BFB45F20](v26, -1, -1);
    }

    (*(v10 + 8))(v13, v9);
    a4(0, 0);
  }
}

void sub_1BD712FF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v5 = sub_1BE04A844();
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  (*(a3 + 16))(a3, a1);
}

void sub_1BD713068(uint64_t a1, void *a2, void (*a3)(void, void), uint64_t a4)
{
  v8 = sub_1BE04D214();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = aBlock - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(v4 + OBJC_IVAR____PKAppleBalanceAddMoneyUIManager_activeViewController);
  if (v13)
  {
    v14 = objc_allocWithZone(MEMORY[0x1E698CC50]);
    v15 = v13;
    v16 = [v14 initWithRequest:a2 presentingViewController:v15];
    v17 = [v16 present];
    aBlock[4] = a3;
    aBlock[5] = a4;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1BD715170;
    aBlock[3] = &block_descriptor_32_2;
    v18 = _Block_copy(aBlock);
    sub_1BE048964();

    [v17 addFinishBlock_];
    _Block_release(v18);
  }

  else
  {
    sub_1BE04D194();
    v19 = a2;
    v20 = sub_1BE04D204();
    v21 = sub_1BE052C34();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      *v22 = 138412290;
      *(v22 + 4) = v19;
      *v23 = v19;
      v24 = v19;
      _os_log_impl(&dword_1BD026000, v20, v21, "AppleBalanceAddMoneyUIManager: AMSPurchase attempted to present dialog request %@, but active controller was nil", v22, 0xCu);
      sub_1BD0DE53C(v23, &unk_1EBD3E590);
      MEMORY[0x1BFB45F20](v23, -1, -1);
      MEMORY[0x1BFB45F20](v22, -1, -1);
    }

    (*(v9 + 8))(v12, v8);
    a3(0, 0);
  }
}

void sub_1BD7133E4(uint64_t a1, void *a2, void (*a3)(void, void), uint64_t a4)
{
  v8 = sub_1BE04D214();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = aBlock - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(v4 + OBJC_IVAR____PKAppleBalanceAddMoneyUIManager_activeViewController);
  if (v13)
  {
    v14 = objc_allocWithZone(MEMORY[0x1E698CC58]);
    v15 = v13;
    v16 = [v14 initWithRequest:a2 presentingViewController:v15];
    v17 = [v16 performAuthentication];
    aBlock[4] = a3;
    aBlock[5] = a4;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1BD715170;
    aBlock[3] = &block_descriptor_35_4;
    v18 = _Block_copy(aBlock);
    sub_1BE048964();

    [v17 addFinishBlock_];
    _Block_release(v18);
  }

  else
  {
    sub_1BE04D194();
    v19 = a2;
    v20 = sub_1BE04D204();
    v21 = sub_1BE052C34();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      *v22 = 138412290;
      *(v22 + 4) = v19;
      *v23 = v19;
      v24 = v19;
      _os_log_impl(&dword_1BD026000, v20, v21, "AppleBalanceAddMoneyUIManager: AMSPurchase attempted to present authenticate request %@, but active controller was nil", v22, 0xCu);
      sub_1BD0DE53C(v23, &unk_1EBD3E590);
      MEMORY[0x1BFB45F20](v23, -1, -1);
      MEMORY[0x1BFB45F20](v22, -1, -1);
    }

    (*(v9 + 8))(v12, v8);
    a3(0, 0);
  }
}

void sub_1BD713760(uint64_t a1, void *a2, void (*a3)(void, void), uint64_t a4)
{
  v8 = sub_1BE04D214();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = aBlock - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(v4 + OBJC_IVAR____PKAppleBalanceAddMoneyUIManager_activeViewController);
  if (v13)
  {
    v14 = *MEMORY[0x1E69B9378];
    v15 = *MEMORY[0x1E69B9380];
    v16 = objc_opt_self();
    v17 = v13;
    v18 = [v16 bagForProfile:v14 profileVersion:v15];
    v19 = [objc_allocWithZone(MEMORY[0x1E698CCD0]) initWithRequest:a2 bag:v18 presentingViewController:v17];
    v20 = [v19 presentEngagement];
    aBlock[4] = a3;
    aBlock[5] = a4;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1BD715170;
    aBlock[3] = &block_descriptor_38_2;
    v21 = _Block_copy(aBlock);
    sub_1BE048964();

    [v20 addFinishBlock_];
    _Block_release(v21);
  }

  else
  {
    sub_1BE04D194();
    v22 = a2;
    v23 = sub_1BE04D204();
    v24 = sub_1BE052C34();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      *v25 = 138412290;
      *(v25 + 4) = v22;
      *v26 = v22;
      v27 = v22;
      _os_log_impl(&dword_1BD026000, v23, v24, "AppleBalanceAddMoneyUIManager: AMSPurchase attempted to present engagement request %@, but active controller was nil", v25, 0xCu);
      sub_1BD0DE53C(v26, &unk_1EBD3E590);
      MEMORY[0x1BFB45F20](v26, -1, -1);
      MEMORY[0x1BFB45F20](v25, -1, -1);
    }

    (*(v9 + 8))(v12, v8);
    a3(0, 0);
  }
}

id AppleBalanceAddMoneyUIManager.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id AppleBalanceAddMoneyUIManager.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AppleBalanceAddMoneyUIManager();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_1BD713C50()
{
  v0 = [objc_opt_self() bagForProfile:*MEMORY[0x1E69B9378] profileVersion:*MEMORY[0x1E69B9380]];
  v1 = sub_1BE052404();
  v2 = [v0 URLForKey_];

  v3 = swift_allocObject();
  *(v3 + 16) = v0;
  v6[4] = sub_1BD714EE8;
  v6[5] = v3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 1107296256;
  v6[2] = sub_1BD712048;
  v6[3] = &block_descriptor_109_0;
  v4 = _Block_copy(v6);
  v5 = v0;

  [v2 valueWithCompletion_];
  _Block_release(v4);
}

uint64_t objectdestroy_2Tm_2()
{

  if (*(v0 + 24))
  {
  }

  return swift_deallocObject();
}

uint64_t objectdestroy_6Tm()
{

  if (*(v0 + 32))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1BD713E68(void *a1, void *a2)
{
  v29 = a2;
  v3 = sub_1BE051F54();
  v31 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v4);
  v6 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_1BE051FA4();
  v7 = *(v30 - 8);
  MEMORY[0x1EEE9AC00](v30, v8);
  v10 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD416C0);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11 - 8, v14);
  v15 = &v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16, v17);
  v19 = &v28 - v18;
  v20 = a1;
  FeatureError.init(feature:error:)(4, a1, v19);
  sub_1BD14BE3C();
  v21 = sub_1BE052D54();
  sub_1BD23C2BC(v19, v15);
  v22 = (*(v12 + 80) + 16) & ~*(v12 + 80);
  v23 = swift_allocObject();
  sub_1BD714EFC(v15, v23 + v22);
  v24 = v29;
  *(v23 + ((v13 + v22 + 7) & 0xFFFFFFFFFFFFFFF8)) = v29;
  aBlock[4] = sub_1BD714F6C;
  aBlock[5] = v23;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BD126964;
  aBlock[3] = &block_descriptor_121_0;
  v25 = _Block_copy(aBlock);
  v26 = v24;

  sub_1BE051F74();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1BD715004(&qword_1EBD366B0, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD387F0);
  sub_1BD14ECDC();
  sub_1BE053664();
  MEMORY[0x1BFB3FDF0](0, v10, v6, v25);
  _Block_release(v25);

  (*(v31 + 8))(v6, v3);
  (*(v7 + 8))(v10, v30);
  return sub_1BD0DE53C(v19, &qword_1EBD416C0);
}

uint64_t dispatch thunk of AppleBalanceAddMoneyUIManager.amsurlSession(_:task:handle:completion:)()
{
  return (*((*MEMORY[0x1E69E7D40] & *v0) + 0x108))();
}

{
  return (*((*MEMORY[0x1E69E7D40] & *v0) + 0x110))();
}

{
  return (*((*MEMORY[0x1E69E7D40] & *v0) + 0x118))();
}

uint64_t dispatch thunk of AppleBalanceAddMoneyUIManager.purchase(_:handle:completion:)()
{
  return (*((*MEMORY[0x1E69E7D40] & *v0) + 0x120))();
}

{
  return (*((*MEMORY[0x1E69E7D40] & *v0) + 0x128))();
}

{
  return (*((*MEMORY[0x1E69E7D40] & *v0) + 0x130))();
}

void sub_1BD7145A0(void *a1, uint64_t a2, void (**a3)(void, void, void), uint64_t a4, uint64_t a5, uint64_t a6, const char *a7)
{
  v13 = sub_1BE04D214();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13, v15);
  v17 = &v32 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = swift_allocObject();
  *(v18 + 16) = a3;
  v19 = *(a2 + OBJC_IVAR____PKAppleBalanceAddMoneyUIManager_activeViewController);
  if (v19)
  {
    v20 = objc_allocWithZone(MEMORY[0x1E698CC50]);
    _Block_copy(a3);
    v21 = v19;
    v22 = [v20 initWithRequest:a1 presentingViewController:v21];
    v23 = [v22 present];
    aBlock[4] = a5;
    aBlock[5] = v18;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1BD715170;
    aBlock[3] = a6;
    v24 = _Block_copy(aBlock);
    sub_1BE048964();

    [v23 addFinishBlock_];
    _Block_release(v24);
  }

  else
  {
    _Block_copy(a3);
    sub_1BE04D194();
    v25 = a1;
    v26 = sub_1BE04D204();
    v27 = sub_1BE052C34();

    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v33 = a7;
      v30 = v29;
      *v28 = 138412290;
      *(v28 + 4) = v25;
      *v29 = v25;
      v31 = v25;
      _os_log_impl(&dword_1BD026000, v26, v27, v33, v28, 0xCu);
      sub_1BD0DE53C(v30, &unk_1EBD3E590);
      MEMORY[0x1BFB45F20](v30, -1, -1);
      MEMORY[0x1BFB45F20](v28, -1, -1);
    }

    (*(v14 + 8))(v17, v13);
    a3[2](a3, 0, 0);
  }
}

void sub_1BD714894(void *a1, uint64_t a2, void (**a3)(void, void, void), uint64_t a4, uint64_t a5, uint64_t a6, const char *a7)
{
  v13 = sub_1BE04D214();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13, v15);
  v17 = &v32 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = swift_allocObject();
  *(v18 + 16) = a3;
  v19 = *(a2 + OBJC_IVAR____PKAppleBalanceAddMoneyUIManager_activeViewController);
  if (v19)
  {
    v20 = objc_allocWithZone(MEMORY[0x1E698CC58]);
    _Block_copy(a3);
    v21 = v19;
    v22 = [v20 initWithRequest:a1 presentingViewController:v21];
    v23 = [v22 performAuthentication];
    aBlock[4] = a5;
    aBlock[5] = v18;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1BD715170;
    aBlock[3] = a6;
    v24 = _Block_copy(aBlock);
    sub_1BE048964();

    [v23 addFinishBlock_];
    _Block_release(v24);
  }

  else
  {
    _Block_copy(a3);
    sub_1BE04D194();
    v25 = a1;
    v26 = sub_1BE04D204();
    v27 = sub_1BE052C34();

    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v33 = a7;
      v30 = v29;
      *v28 = 138412290;
      *(v28 + 4) = v25;
      *v29 = v25;
      v31 = v25;
      _os_log_impl(&dword_1BD026000, v26, v27, v33, v28, 0xCu);
      sub_1BD0DE53C(v30, &unk_1EBD3E590);
      MEMORY[0x1BFB45F20](v30, -1, -1);
      MEMORY[0x1BFB45F20](v28, -1, -1);
    }

    (*(v14 + 8))(v17, v13);
    a3[2](a3, 0, 0);
  }
}

void sub_1BD714B88(void *a1, uint64_t a2, void (**a3)(void, void, void), uint64_t a4, uint64_t a5, uint64_t a6, const char *a7)
{
  v13 = sub_1BE04D214();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13, v15);
  v17 = &v35 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = swift_allocObject();
  *(v18 + 16) = a3;
  v19 = *(a2 + OBJC_IVAR____PKAppleBalanceAddMoneyUIManager_activeViewController);
  if (v19)
  {
    v20 = *MEMORY[0x1E69B9378];
    v21 = *MEMORY[0x1E69B9380];
    v22 = objc_opt_self();
    _Block_copy(a3);
    v23 = v19;
    v24 = [v22 bagForProfile:v20 profileVersion:v21];
    v25 = [objc_allocWithZone(MEMORY[0x1E698CCD0]) initWithRequest:a1 bag:v24 presentingViewController:v23];
    v26 = [v25 presentEngagement];
    aBlock[4] = a5;
    aBlock[5] = v18;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1BD715170;
    aBlock[3] = a6;
    v27 = _Block_copy(aBlock);
    sub_1BE048964();

    [v26 addFinishBlock_];
    _Block_release(v27);
  }

  else
  {
    _Block_copy(a3);
    sub_1BE04D194();
    v28 = a1;
    v29 = sub_1BE04D204();
    v30 = sub_1BE052C34();

    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v36 = a7;
      v33 = v32;
      *v31 = 138412290;
      *(v31 + 4) = v28;
      *v32 = v28;
      v34 = v28;
      _os_log_impl(&dword_1BD026000, v29, v30, v36, v31, 0xCu);
      sub_1BD0DE53C(v33, &unk_1EBD3E590);
      MEMORY[0x1BFB45F20](v33, -1, -1);
      MEMORY[0x1BFB45F20](v31, -1, -1);
    }

    (*(v14 + 8))(v17, v13);
    a3[2](a3, 0, 0);
  }
}

uint64_t sub_1BD714EFC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD416C0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_1BD714F6C()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD416C0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));

  sub_1BD711544(v0 + v2, v3);
}

uint64_t sub_1BD715004(unint64_t *a1, void (*a2)(uint64_t))
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

BOOL sub_1BD715184(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  if (!v2)
  {
    if (!v3)
    {
      goto LABEL_5;
    }

    goto LABEL_3;
  }

  v4 = [v2 issuerName];
  sub_1BE052434();

  if (v3)
  {
LABEL_3:
    v5 = [v3 issuerName];
    sub_1BE052434();
  }

LABEL_5:
  sub_1BD0DDEBC();
  v6 = sub_1BE0535A4();

  return v6 == -1;
}

uint64_t sub_1BD715280()
{
  sub_1BE053D04();
  sub_1BE052524();
  return sub_1BE053D64();
}

uint64_t sub_1BD7152F4()
{
  sub_1BE053D04();
  sub_1BE052524();
  return sub_1BE053D64();
}

uint64_t sub_1BD715348@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_1BE053A44();

  *a1 = v2 != 0;
  return result;
}

uint64_t sub_1BD7153C8()
{
  sub_1BE053D04();
  sub_1BE052524();

  return sub_1BE053D64();
}

uint64_t sub_1BD7154B0()
{
  sub_1BE052524();
}

uint64_t sub_1BD715584()
{
  sub_1BE053D04();
  sub_1BE052524();

  return sub_1BE053D64();
}

uint64_t sub_1BD715668@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1BD715CB8();
  *a1 = result;
  return result;
}

void sub_1BD715698(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE400000000000000;
  v4 = 1701736302;
  v5 = 0xEC000000726F7272;
  v6 = 0x45676E6964616F6CLL;
  v7 = 0xEA0000000000656CLL;
  v8 = 0x626967696C656E69;
  if (v2 != 3)
  {
    v8 = 0x656C626967696C65;
    v7 = 0xE800000000000000;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 0x676E6964616F6CLL;
    v3 = 0xE700000000000000;
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

unint64_t sub_1BD715760()
{
  result = qword_1EBD51098;
  if (!qword_1EBD51098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD51098);
  }

  return result;
}

unint64_t sub_1BD7157B8()
{
  result = qword_1EBD510A0;
  if (!qword_1EBD510A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD510A0);
  }

  return result;
}

void sub_1BD71580C(void *a1)
{
  if (!PKOslo2024UIUpdatesEnabled() || !a1)
  {
    return;
  }

  v2 = a1;
  v3 = [v2 paymentOfferInstallmentCriteriaRequiringSetup];
  if (!v3)
  {

    return;
  }

  v4 = v3;
  sub_1BD715C6C();
  v5 = sub_1BE052744();

  v6 = [v2 eligiblePaymentOfferInstallmentCriteriaRequiringSetup];
  if (v6)
  {
    v7 = v6;
    v44 = sub_1BE052744();

    if (!(v5 >> 62))
    {
      goto LABEL_6;
    }

LABEL_55:
    v8 = sub_1BE053704();
    if (v8)
    {
      goto LABEL_7;
    }

LABEL_56:

    return;
  }

  v44 = 0;
  if (v5 >> 62)
  {
    goto LABEL_55;
  }

LABEL_6:
  v8 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v8)
  {
    goto LABEL_56;
  }

LABEL_7:
  v9 = 0;
  v42 = v5 & 0xC000000000000001;
  v36 = v5 + 32;
  v37 = v5 & 0xFFFFFFFFFFFFFF8;
  v10 = MEMORY[0x1E69E7CC0];
  v40 = v2;
  v38 = v8;
  v39 = v5;
  while (1)
  {
    if (v42)
    {
      v11 = MEMORY[0x1BFB40900](v9, v5);
    }

    else
    {
      if (v9 >= *(v37 + 16))
      {
        goto LABEL_62;
      }

      v11 = *(v36 + 8 * v9);
    }

    v12 = v11;
    if (__OFADD__(v9++, 1))
    {
      goto LABEL_60;
    }

    if (!v44)
    {
      v30 = 3;
      goto LABEL_44;
    }

    v45 = MEMORY[0x1E69E7CC0];
    v14 = v44 >> 62 ? sub_1BE053704() : *((v44 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v43 = v9;
    sub_1BE048C84();
    if (v14)
    {
      break;
    }

    v29 = MEMORY[0x1E69E7CC0];
LABEL_35:

    if (v29 < 0 || (v29 & 0x4000000000000000) != 0)
    {
      v31 = sub_1BE053704();
    }

    else
    {
      v31 = *(v29 + 16);
    }

    v5 = v39;
    v2 = v40;
    v9 = v43;
    if (v31)
    {
      if ((v29 & 0xC000000000000001) == 0)
      {
        v32 = *(v29 + 16);

        if (!v32)
        {
          goto LABEL_61;
        }

        v30 = 4;
        goto LABEL_44;
      }

      MEMORY[0x1BFB40900](0, v29);
      swift_unknownObjectRelease();
      v30 = 4;
    }

    else
    {
      v30 = 3;
    }

LABEL_44:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v10 = sub_1BD1D7D24(0, *(v10 + 2) + 1, 1, v10);
    }

    v34 = *(v10 + 2);
    v33 = *(v10 + 3);
    if (v34 >= v33 >> 1)
    {
      v10 = sub_1BD1D7D24((v33 > 1), v34 + 1, 1, v10);
    }

    *(v10 + 2) = v34 + 1;
    v35 = &v10[16 * v34];
    v35[32] = v30;
    *(v35 + 5) = v12;
    if (v9 == v8)
    {

      return;
    }
  }

  v41 = v10;
  v15 = 0;
  while (1)
  {
    if ((v44 & 0xC000000000000001) != 0)
    {
      v16 = MEMORY[0x1BFB40900](v15, v44);
    }

    else
    {
      if (v15 >= *((v44 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_59;
      }

      v16 = *(v44 + 8 * v15 + 32);
    }

    v17 = v16;
    v18 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    v19 = [v16 identifier];
    v20 = sub_1BE052434();
    v22 = v21;

    v23 = [v12 identifier];
    v24 = sub_1BE052434();
    v26 = v25;

    if (v20 == v24 && v22 == v26)
    {
    }

    else
    {
      v28 = sub_1BE053B84();

      if ((v28 & 1) == 0)
      {

        goto LABEL_20;
      }
    }

    sub_1BE0538C4();
    sub_1BE0538F4();
    sub_1BE053904();
    sub_1BE0538D4();
LABEL_20:
    ++v15;
    if (v18 == v14)
    {
      v29 = v45;
      v8 = v38;
      v10 = v41;
      goto LABEL_35;
    }
  }

  __break(1u);
LABEL_59:
  __break(1u);
LABEL_60:
  __break(1u);
LABEL_61:
  __break(1u);
LABEL_62:
  __break(1u);
}

unint64_t sub_1BD715C6C()
{
  result = qword_1EBD39D98;
  if (!qword_1EBD39D98)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EBD39D98);
  }

  return result;
}

uint64_t sub_1BD715CB8()
{
  v0 = sub_1BE053A44();

  if (v0 >= 5)
  {
    return 5;
  }

  else
  {
    return v0;
  }
}

PKWalletAppShortcutProviderWrapper __swiftcall PKWalletAppShortcutProviderWrapper.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

unint64_t type metadata accessor for PKWalletAppShortcutProviderWrapper()
{
  result = qword_1EBD510A8;
  if (!qword_1EBD510A8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EBD510A8);
  }

  return result;
}

uint64_t type metadata accessor for SelectedPaymentOfferActionView()
{
  result = qword_1EBD510B0;
  if (!qword_1EBD510B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1BD715E6C()
{
  sub_1BD0E5E8C(319, &qword_1EBD456C0);
  if (v0 <= 0x3F)
  {
    sub_1BD0E5E8C(319, &qword_1EBD496B0);
    if (v1 <= 0x3F)
    {
      sub_1BD10315C(319, &qword_1EBD510C0, &qword_1EBD3DC40);
      if (v2 <= 0x3F)
      {
        sub_1BD0E5E8C(319, &qword_1EBD39D98);
        if (v3 <= 0x3F)
        {
          sub_1BD1030A8();
          if (v4 <= 0x3F)
          {
            sub_1BD33A100(319, &qword_1EBD39020, &qword_1EBD579E0, "0^\r", MEMORY[0x1E69E6720]);
            if (v5 <= 0x3F)
            {
              sub_1BD10315C(319, &qword_1EBD510C8, &qword_1EBD57A10);
              if (v6 <= 0x3F)
              {
                sub_1BD7160E0(319, &qword_1EBD39DB0, type metadata accessor for PresentationContext, MEMORY[0x1E69E6720]);
                if (v7 <= 0x3F)
                {
                  sub_1BD10EE48();
                  if (v8 <= 0x3F)
                  {
                    sub_1BD33A100(319, &qword_1EBD3F248, &unk_1EBD43B50, &unk_1BE102360, MEMORY[0x1E6981790]);
                    if (v9 <= 0x3F)
                    {
                      sub_1BD7160E0(319, &qword_1EBD393A8, MEMORY[0x1E697DBD0], MEMORY[0x1E697DCC0]);
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

void sub_1BD7160E0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1BD716160@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_1BE04FF64();
  v99 = *(v4 - 8);
  v100 = v4;
  MEMORY[0x1EEE9AC00](v4, v5);
  v98 = &v74 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD45160);
  MEMORY[0x1EEE9AC00](v90, v7);
  v91 = &v74 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = &v74 - v11;
  v13 = type metadata accessor for SelectedPaymentOfferActionView();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13 - 8, v16);
  v17 = &v74 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for PaymentOfferActionExplanationView();
  MEMORY[0x1EEE9AC00](v18, v19);
  v21 = &v74 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22, v23);
  v92 = &v74 - v24;
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD510D0);
  MEMORY[0x1EEE9AC00](v95, v25);
  v93 = &v74 - v26;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD510D8);
  v96 = *(v27 - 8);
  v97 = v27;
  MEMORY[0x1EEE9AC00](v27, v28);
  v94 = &v74 - v29;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD510E0);
  v34.n128_f64[0] = MEMORY[0x1EEE9AC00](v30, v31);
  v36 = &v74 - v35;
  v37 = *(v2 + 64);
  if (v37)
  {
    v86 = v36;
    v87 = v33;
    v88 = v32;
    v89 = a1;
    v38 = *(v2 + 24);
    v39 = *v2;
    v78 = *(v2 + 8);
    v76 = v39;
    sub_1BD716FEC(v2, &v74 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
    v40 = (*(v14 + 80) + 16) & ~*(v14 + 80);
    v41 = swift_allocObject();
    sub_1BD717358(v17, v41 + v40, type metadata accessor for SelectedPaymentOfferActionView);
    v74 = v37;
    v42 = v38;
    v43 = v39;
    v77 = sub_1BD716CA0();
    v75 = sub_1BD716DA8();
    v44 = *(v2 + 88);
    LOBYTE(v104) = *(v2 + 80);
    *(&v104 + 1) = v44;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54350);
    sub_1BE0516C4();
    v85 = v101;
    v84 = v102;
    v83 = v103;
    v82 = sub_1BE052434();
    v81 = v45;
    v80 = sub_1BE052434();
    v79 = v46;
    v105 = 0;
    v47 = type metadata accessor for MultiHyperLinkDetailSheet();
    (*(*(v47 - 8) + 56))(v12, 1, 1, v47);
    sub_1BD0DE19C(v12, v91, &unk_1EBD45160);
    v48 = v74;
    sub_1BE051694();
    sub_1BD0DE53C(v12, &unk_1EBD45160);
    v49 = &v21[*(v18 + 68)];
    *v49 = swift_getKeyPath();
    v49[8] = 0;
    v50 = v78;
    *v21 = v78;
    *(v21 + 1) = v42;
    *(v21 + 2) = v48;
    *(v21 + 3) = 0;
    *(v21 + 4) = 0xE000000000000000;
    *(v21 + 11) = 0;
    *(v21 + 72) = 0u;
    *(v21 + 56) = 0u;
    *(v21 + 40) = 0u;
    v21[96] = 0;
    *(v21 + 13) = v76;
    *(v21 + 16) = sub_1BD717050;
    *(v21 + 17) = v41;
    v21[144] = v77;
    v21[145] = v75;
    v51 = v50;
    v52 = [v42 identifier];
    if (!v52)
    {
      sub_1BE052434();
      v52 = sub_1BE052404();
    }

    v53 = [v51 preferredLocalizationLanguageForCriteriaIdentifier_];

    v54 = sub_1BE052434();
    v56 = v55;

    *(v21 + 14) = v54;
    *(v21 + 15) = v56;
    v57 = &v21[*(v18 + 64)];
    v58 = v84;
    *v57 = v85;
    *(v57 + 1) = v58;
    v57[16] = v83;
    v59 = v81;
    *(v21 + 19) = v82;
    *(v21 + 20) = v59;
    v60 = v79;
    *(v21 + 21) = v80;
    *(v21 + 22) = v60;
    v21[184] = 1;
    *(v21 + 24) = 0;
    *(v21 + 25) = 0;
    v61 = v21;
    v62 = v92;
    sub_1BD717358(v61, v92, type metadata accessor for PaymentOfferActionExplanationView);
    v104 = *(v2 + 96);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F390);
    sub_1BE0516C4();
    v63 = v103;
    v64 = v93;
    sub_1BD6FCEC8(v101, v102, v103);

    sub_1BD7173C0(v62, type metadata accessor for PaymentOfferActionExplanationView);
    v65 = v98;
    sub_1BE04FF54();
    v66 = sub_1BD7170B4();
    v68 = v94;
    v67 = v95;
    sub_1BE050D14();
    (*(v99 + 8))(v65, v100);
    sub_1BD0DE53C(v64, &qword_1EBD510D0);
    sub_1BE052434();
    v101 = v67;
    v102 = v66;
    swift_getOpaqueTypeConformance2();
    v69 = v86;
    v70 = v97;
    sub_1BE050DE4();

    (*(v96 + 8))(v68, v70);
    v71 = v89;
    sub_1BD0A6D20(v69, v89);
    return (*(v87 + 56))(v71, 0, 1, v88);
  }

  else
  {
    v73 = *(v33 + 56);

    return v73(a1, 1, 1, v34);
  }
}

void sub_1BD716A0C(unsigned __int8 a1)
{
  v2 = a1;
  v3 = type metadata accessor for SelectedPaymentOfferActionView();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v7 = MEMORY[0x1EEE9AC00](v3 - 8, v6);
  v8 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v2 == 6)
  {
    v9 = *(v1 + 48);
    if (v9)
    {
      v10 = sub_1BE048964();
      v9(v10);

      sub_1BD0D4744(v9);
    }

    else
    {
      v11 = *(v1 + 88);
      LOBYTE(v28) = *(v1 + 80);
      v29 = v11;
      LOBYTE(v27) = 1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54350);
      v12 = v1;
      sub_1BE0516B4();
      v14 = *v1;
      v13 = *(v1 + 8);
      v28 = *v12;
      LOBYTE(v29) = 64;
      v15 = v12[3];
      objc_allocWithZone(type metadata accessor for PaymentOfferInstallmentPlanSelectionModel(0));
      v16 = v14;
      v17 = v13;
      v18 = v15;
      v19 = sub_1BD8D1EE0(&v28, v13, v15);

      v21 = v12[13];
      v28 = v12[12];
      v20 = v28;
      v29 = v21;
      v27 = v19;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F390);
      sub_1BE0516B4();
      v28 = v20;
      v29 = v21;
      sub_1BE0516A4();
      v22 = v27;
      if (v27)
      {
        v23 = v12[9];
        sub_1BD716FEC(v12, &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
        v24 = (*(v4 + 80) + 16) & ~*(v4 + 80);
        v25 = swift_allocObject();
        sub_1BD717358(v8, v25 + v24, type metadata accessor for SelectedPaymentOfferActionView);
        sub_1BD8C1B80(v23, 1, sub_1BD7172E8, v25);
      }
    }
  }

  else
  {
    (*(v1 + 32))(0, v7);
  }
}

uint64_t sub_1BD716CA0()
{
  v1 = *(v0 + 16);
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = [v2 offers];
  if (v3)
  {
    v4 = v3;
    sub_1BD0E5E8C(0, &qword_1EBD39018);
    v5 = sub_1BE052744();
  }

  else
  {
    v5 = MEMORY[0x1E69E7CC0];
  }

  v7 = [v2 action];
  if (v7)
  {
    v8 = v7;

    return 6;
  }

  else
  {
    if (v5 >> 62)
    {
      v9 = sub_1BE053704();
    }

    else
    {
      v9 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v9)
    {
      return 6;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t sub_1BD716DA8()
{
  if (sub_1BD716CA0() != 6)
  {
    return 7;
  }

  v1 = [*(v0 + 24) suppressPayInFull];
  result = 7;
  if ((v1 & 1) == 0)
  {
    v3 = [*(v0 + 8) configuration];
    v4 = [v3 context];

    if (v4 == 3)
    {
      return 7;
    }

    else
    {
      return 5;
    }
  }

  return result;
}

void *sub_1BD716E38(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PaymentOfferInstallmentPlanSelectionModel.SelectionResult(0);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v14[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD57C50);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v14[-v10];
  v12 = *(a2 + 88);
  v14[16] = *(a2 + 80);
  v15 = v12;
  v14[15] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54350);
  sub_1BE0516B4();
  sub_1BD0DE19C(a1, v11, &unk_1EBD57C50);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    result = *v11;
    if (*v11)
    {

      return (*(a2 + 32))(0);
    }
  }

  else
  {
    sub_1BD717358(v11, v7, type metadata accessor for PaymentOfferInstallmentPlanSelectionModel.SelectionResult);
    (*(a2 + 32))(*(v7 + 1));
    return sub_1BD7173C0(v7, type metadata accessor for PaymentOfferInstallmentPlanSelectionModel.SelectionResult);
  }

  return result;
}

uint64_t sub_1BD716FEC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SelectedPaymentOfferActionView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1BD7170B4()
{
  result = qword_1EBD510E8;
  if (!qword_1EBD510E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD510D0);
    sub_1BD70BF88();
    sub_1BD71759C(&qword_1EBD57B20, type metadata accessor for PaymentOfferActionExplanationView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD510E8);
  }

  return result;
}

uint64_t objectdestroyTm_82()
{
  v1 = type metadata accessor for SelectedPaymentOfferActionView();
  v2 = v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80));

  if (*(v2 + 48))
  {
  }

  v3 = *(v1 + 56);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4E5B0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = sub_1BE04E354();
    (*(*(v4 - 8) + 8))(v2 + v3, v4);
  }

  else
  {
  }

  return swift_deallocObject();
}

void *sub_1BD7172E8(uint64_t a1)
{
  v3 = *(type metadata accessor for SelectedPaymentOfferActionView() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_1BD716E38(a1, v4);
}

uint64_t sub_1BD717358(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1BD7173C0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1BD717420()
{
  result = qword_1EBD510F0;
  if (!qword_1EBD510F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD510F8);
    sub_1BD7174A4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD510F0);
  }

  return result;
}

unint64_t sub_1BD7174A4()
{
  result = qword_1EBD51100;
  if (!qword_1EBD51100)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD510E0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD510D0);
    sub_1BD7170B4();
    swift_getOpaqueTypeConformance2();
    sub_1BD71759C(&qword_1EBD52210, MEMORY[0x1E697CBE8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD51100);
  }

  return result;
}

uint64_t sub_1BD71759C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1BD7175E4@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1BE04F3D4();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3FA20);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v16 - v10;
  v12 = type metadata accessor for PeerPaymentGroupRecipientPickerView();
  sub_1BD0DE19C(v1 + *(v12 + 20), v11, &qword_1EBD3FA20);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_1BE04E664();
    return (*(*(v13 - 8) + 32))(a1, v11, v13);
  }

  else
  {
    sub_1BE052C44();
    v15 = sub_1BE050174();
    sub_1BE04CF84();

    sub_1BE04F3C4();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v7, v3);
  }
}

uint64_t PeerPaymentGroupRecipientPickerView.init(model:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = *(type metadata accessor for PeerPaymentGroupRecipientPickerView() + 20);
  *(a2 + v4) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3FA20);
  result = swift_storeEnumTagMultiPayload();
  *a2 = a1;
  return result;
}

uint64_t type metadata accessor for PeerPaymentGroupRecipientPickerView()
{
  result = qword_1EBD51168;
  if (!qword_1EBD51168)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t PeerPaymentGroupRecipientPickerView.body.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD51108);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD51110);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD51118);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD51120);
  sub_1BD71AD00();
  sub_1BD0DE4F4(&qword_1EBD51160, &qword_1EBD51120);
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  return sub_1BE04EC04();
}

id sub_1BD7179F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v45 = a2;
  v46 = sub_1BE04F434();
  v44 = *(v46 - 8);
  MEMORY[0x1EEE9AC00](v46, v3);
  v5 = &v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD51148);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v9 = (&v41 - v8);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD51138);
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = &v41 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD51118);
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = &v41 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD51110);
  v41 = *(v18 - 8);
  v42 = v18;
  MEMORY[0x1EEE9AC00](v18, v19);
  v21 = &v41 - v20;
  *v9 = sub_1BE051CD4();
  v9[1] = v22;
  v23 = v9 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD51188) + 44);
  v43 = a1;
  sub_1BD718E64(a1, v23);
  v24 = [objc_opt_self() clearColor];
  result = [objc_opt_self() backgroundColor];
  if (result)
  {

    v26 = sub_1BE0511C4();
    v27 = sub_1BE0501D4();
    sub_1BD0DE204(v9, v13, &qword_1EBD51148);
    v28 = &v13[*(v10 + 36)];
    *v28 = v26;
    v28[8] = v27;
    v29 = *(v14 + 36);
    v30 = *MEMORY[0x1E697DBA8];
    v31 = sub_1BE04E354();
    v32 = *(v31 - 8);
    (*(v32 + 104))(&v17[v29], v30, v31);
    (*(v32 + 56))(&v17[v29], 0, 1, v31);
    v33 = sub_1BD0DE204(v13, v17, &qword_1EBD51138);
    MEMORY[0x1EEE9AC00](v33, v34);
    *(&v41 - 2) = v43;
    v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD51120);
    v36 = sub_1BD71AD00();
    v37 = sub_1BD0DE4F4(&qword_1EBD51160, &qword_1EBD51120);
    sub_1BE051024();
    sub_1BD0A6F4C(v17);
    v38 = v44;
    v39 = v46;
    (*(v44 + 104))(v5, *MEMORY[0x1E697C438], v46);
    v47 = v14;
    v48 = v35;
    v49 = v36;
    v50 = v37;
    swift_getOpaqueTypeConformance2();
    v40 = v42;
    sub_1BE050E84();
    (*(v38 + 8))(v5, v39);
    return (*(v41 + 8))(v21, v40);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1BD717EF8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v20[1] = a2;
  v20[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD51190);
  MEMORY[0x1EEE9AC00](v20[0], v3);
  v5 = v20 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD51198);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = v20 - v9;
  v11 = sub_1BE04FB44();
  MEMORY[0x1EEE9AC00](v11 - 8, v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD511A0);
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13, v15);
  v17 = v20 - v16;
  sub_1BE04FAD4();
  v20[8] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD511A8);
  sub_1BD71AF74();
  sub_1BE04E424();
  sub_1BE04FB34();
  v20[4] = a1;
  sub_1BE04E424();
  v18 = *(v20[0] + 48);
  (*(v14 + 16))(v5, v17, v13);
  (*(v7 + 16))(&v5[v18], v10, v6);
  sub_1BE04F854();
  (*(v7 + 8))(v10, v6);
  return (*(v14 + 8))(v17, v13);
}

uint64_t sub_1BD7181F8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for PeerPaymentGroupRecipientPickerView();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4 - 8, v7);
  sub_1BD71B060(a1, &v17[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)]);
  v8 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v9 = swift_allocObject();
  sub_1BD71B0C4(&v17[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)], v9 + v8);
  v18 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD511E0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD511E8);
  v11 = sub_1BD71B190();
  v19 = v10;
  v20 = v11;
  swift_getOpaqueTypeConformance2();
  sub_1BE051704();
  v12 = *a1;
  swift_getKeyPath();
  v19 = v12;
  sub_1BD71C9A4(&qword_1EBD55900, type metadata accessor for PeerPaymentGroupRecipientPickerModel);
  sub_1BE04B594();

  LOBYTE(v12) = *(v12 + 40);
  KeyPath = swift_getKeyPath();
  v14 = swift_allocObject();
  *(v14 + 16) = v12;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD511A8);
  v16 = (a2 + *(result + 36));
  *v16 = KeyPath;
  v16[1] = sub_1BD10DF54;
  v16[2] = v14;
  return result;
}

void sub_1BD718450()
{
  v0 = sub_1BE04E664();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = &v5 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BD7175E4(v4);
  sub_1BE04E654();
  (*(v1 + 8))(v4, v0);
  sub_1BD718530();
}

void sub_1BD718530()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD51220);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BE0B98D0;
  *(inited + 32) = sub_1BE052434();
  *(inited + 40) = v1;
  *(inited + 48) = sub_1BE052434();
  *(inited + 56) = v2;
  *(inited + 64) = sub_1BE052434();
  *(inited + 72) = v3;
  swift_getKeyPath();
  sub_1BD71C9A4(&qword_1EBD55900, type metadata accessor for PeerPaymentGroupRecipientPickerModel);
  sub_1BE04B594();

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = [Strong conversationSize];
    swift_unknownObjectRelease();
  }

  else
  {
    v5 = 0;
  }

  v6 = objc_opt_self();
  v7 = [v6 bucketValueForGroupSize_];
  if (v7)
  {
    v8 = v7;
    v9 = sub_1BE052434();
    v11 = v10;
  }

  else
  {
    v9 = 0;
    v11 = 0xE000000000000000;
  }

  *(inited + 80) = v9;
  *(inited + 88) = v11;
  *(inited + 96) = sub_1BE052434();
  *(inited + 104) = v12;
  swift_getKeyPath();
  sub_1BE04B594();

  v13 = swift_unknownObjectWeakLoadStrong();
  if (v13)
  {
    v14 = [v13 ineligibleCount];
    swift_unknownObjectRelease();
  }

  else
  {
    v14 = 0;
  }

  v15 = [v6 bucketValueForIneligibleCount_];
  if (v15)
  {
    v16 = v15;
    v17 = sub_1BE052434();
    v19 = v18;
  }

  else
  {
    v17 = 0;
    v19 = 0;
  }

  *(inited + 112) = v17;
  *(inited + 120) = v19;
  v20 = sub_1BD1AE170(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD51228);
  swift_arrayDestroy();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3D1E0);
  v21 = swift_initStackObject();
  *(v21 + 16) = xmmword_1BE0BA730;
  v22 = *MEMORY[0x1E69BA850];
  *(v21 + 32) = *MEMORY[0x1E69BA850];
  v23 = sub_1BE052434();
  v24 = MEMORY[0x1E69BABE8];
  *(v21 + 40) = v23;
  *(v21 + 48) = v25;
  v26 = *v24;
  *(v21 + 56) = *v24;
  v27 = sub_1BE052434();
  v28 = MEMORY[0x1E69BA680];
  *(v21 + 64) = v27;
  *(v21 + 72) = v29;
  v30 = *v28;
  *(v21 + 80) = *v28;
  v31 = sub_1BE052434();
  v32 = MEMORY[0x1E69BA440];
  *(v21 + 88) = v31;
  *(v21 + 96) = v33;
  v34 = *v32;
  *(v21 + 104) = *v32;
  v35 = sub_1BE052434();
  v36 = MEMORY[0x1E69BAFB0];
  *(v21 + 112) = v35;
  *(v21 + 120) = v37;
  v38 = *v36;
  *(v21 + 128) = *v36;
  *(v21 + 136) = sub_1BE052434();
  *(v21 + 144) = v39;
  v40 = v22;
  v41 = v26;
  v42 = v30;
  v43 = v34;
  v44 = v38;
  v45 = sub_1BD1AAF50(v21);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F590);
  swift_arrayDestroy();
  sub_1BD1A8C44(v45);

  v46 = sub_1BE052224();

  sub_1BD1A8F14(v20);

  v47 = sub_1BE052224();

  [v6 reportAppleCashEvent:v46 withMessagesContext:v47];
}

id sub_1BD718998()
{
  sub_1BE051574();
  v0 = [objc_opt_self() clearColor];
  result = [objc_opt_self() primaryTextColor];
  if (result)
  {

    sub_1BE0511C4();
    swift_getKeyPath();
    sub_1BD71C9A4(&qword_1EBD55900, type metadata accessor for PeerPaymentGroupRecipientPickerModel);
    sub_1BE04B594();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD511E8);
    sub_1BD71B190();
    sub_1BE050EA4();
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1BD718B30@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1BE04BD74();
  v5 = *(v4 - 8);
  v7 = MEMORY[0x1EEE9AC00](v4, v6);
  v9 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 104))(v9, *MEMORY[0x1E69B8050], v4, v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF80);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1BE0B69E0;
  result = [*(*a1 + 32) minimalFormattedStringValue];
  if (result)
  {
    v12 = result;
    v13 = sub_1BE052434();
    v15 = v14;

    *(v10 + 56) = MEMORY[0x1E69E6158];
    *(v10 + 64) = sub_1BD110550();
    *(v10 + 32) = v13;
    *(v10 + 40) = v15;
    v16 = sub_1BE04B714();
    v18 = v17;

    (*(v5 + 8))(v9, v4);
    v42 = v16;
    v43 = v18;
    sub_1BD0DDEBC();
    v19 = sub_1BE0506C4();
    v21 = v20;
    v23 = v22;
    v24 = [objc_opt_self() clearColor];
    result = [objc_opt_self() primaryTextColor];
    if (result)
    {

      v42 = sub_1BE0511C4();
      v25 = sub_1BE050574();
      v27 = v26;
      v29 = v28;
      sub_1BD0DDF10(v19, v21, v23 & 1);

      sub_1BE0503E4();
      v30 = sub_1BE0505F4();
      v32 = v31;
      v34 = v33;

      sub_1BD0DDF10(v25, v27, v29 & 1);

      v35 = sub_1BE0505D4();
      v37 = v36;
      LOBYTE(v27) = v38;
      v40 = v39;
      sub_1BD0DDF10(v30, v32, v34 & 1);

      *a2 = v35;
      *(a2 + 8) = v37;
      *(a2 + 16) = v27 & 1;
      *(a2 + 24) = v40;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

id sub_1BD718E64@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD51230);
  v30 = *(v4 - 8);
  v31 = v4;
  MEMORY[0x1EEE9AC00](v4, v5);
  v7 = &v27[-v6];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD51238);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = &v27[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v13, v14);
  v16 = &v27[-v15];
  v17 = [objc_opt_self() clearColor];
  result = [objc_opt_self() backgroundColor];
  if (result)
  {

    v19 = sub_1BE0511C4();
    v29 = sub_1BE04EC54();
    v20 = sub_1BE0501D4();
    v28 = v20;
    MEMORY[0x1EEE9AC00](v20, v21);
    *&v27[-16] = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD51240);
    sub_1BD71C478();
    sub_1BE0504E4();
    sub_1BD0DE4F4(&qword_1EBD512F0, &qword_1EBD51230);
    v22 = v31;
    sub_1BE050DF4();
    (*(v30 + 8))(v7, v22);
    v23 = *(v9 + 16);
    v23(v12, v16, v8);
    v24 = v29;
    *a2 = v19;
    *(a2 + 8) = v24;
    *(a2 + 16) = v28;
    v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD512F8);
    v23((a2 + *(v25 + 48)), v12, v8);
    v26 = *(v9 + 8);
    sub_1BE048964();
    v26(v16, v8);
    v26(v12, v8);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1BD7191B0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD51258);
  MEMORY[0x1EEE9AC00](v2, v3);
  v13 = a1;
  sub_1BD71977C(&v12[-v4]);
  v5 = sub_1BD719A68();
  if (v6)
  {
    v14 = v5;
    v15 = v6;
    sub_1BD0DDEBC();
    v7 = sub_1BE0506C4();
    v10 = v9 & 1;
  }

  else
  {
    v7 = 0;
    v10 = 0;
    v8 = 0;
  }

  v14 = v7;
  v15 = v6;
  v16 = v10;
  v17 = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD512A8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39E98);
  sub_1BD71C518();
  sub_1BD71C65C();
  sub_1BD12E194();
  return sub_1BE051A34();
}

uint64_t sub_1BD719318(uint64_t a1)
{
  v2 = type metadata accessor for PeerPaymentGroupRecipientPickerView();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2 - 8, v5);
  v6 = *(*a1 + 16);
  swift_bridgeObjectRetain_n();
  v12[0] = sub_1BD6D3E64(v6);
  sub_1BD71AC7C(v12);

  v12[2] = v12[0];
  sub_1BD71B060(a1, v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v8 = swift_allocObject();
  sub_1BD71B0C4(v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v8 + v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD51308);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD51310);
  sub_1BD0DE4F4(&qword_1EBD51318, &qword_1EBD51308);
  v9 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD512B0);
  v10 = sub_1BD71C71C();
  v12[0] = v9;
  v12[1] = v10;
  swift_getOpaqueTypeConformance2();
  sub_1BD71C9A4(&qword_1EBD51320, type metadata accessor for PeerPaymentGroupRecipient);
  return sub_1BE0519D4();
}

uint64_t sub_1BD71957C(void **a1, uint64_t *a2)
{
  v4 = type metadata accessor for PeerPaymentGroupRecipientPickerView();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4 - 8, v7);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD512B0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v17 - v10;
  v12 = *a1;
  *v11 = sub_1BE04F504();
  *(v11 + 1) = 0;
  v11[16] = 1;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD51328);
  sub_1BD71A0F0(v12, a2, &v11[*(v13 + 44)]);
  v11[*(v8 + 36)] = 0;
  sub_1BD71B060(a2, &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v15 = swift_allocObject();
  sub_1BD71B0C4(&v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v15 + v14);
  *(v15 + ((v6 + v14 + 7) & 0xFFFFFFFFFFFFFFF8)) = v12;
  sub_1BD71C71C();
  sub_1BE048964();
  sub_1BE0509D4();

  return sub_1BD0DE53C(v11, &qword_1EBD512B0);
}

int *sub_1BD71977C@<X0>(uint64_t a1@<X8>)
{
  v33 = a1;
  v1 = sub_1BE04BD74();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1, v3);
  v5 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD51268);
  v7 = MEMORY[0x1EEE9AC00](v32, v6);
  v9 = &v31 - v8;
  (*(v2 + 104))(v5, *MEMORY[0x1E69B8050], v1, v7);
  result = PKPassKitBundle();
  if (result)
  {
    v11 = result;
    v12 = sub_1BE04B6F4();
    v14 = v13;

    (*(v2 + 8))(v5, v1);
    v34 = v12;
    v35 = v14;
    sub_1BD0DDEBC();
    v15 = sub_1BE0506C4();
    v17 = v16;
    v19 = v18;
    sub_1BE050464();
    v20 = sub_1BE0505F4();
    v22 = v21;
    LOBYTE(v12) = v23;
    v25 = v24;

    sub_1BD0DDF10(v15, v17, v19 & 1);

    KeyPath = swift_getKeyPath();
    v27 = &v9[*(v32 + 36)];
    v28 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD386C0) + 28);
    v29 = sub_1BE0505C4();
    (*(*(v29 - 8) + 56))(v27 + v28, 1, 1, v29);
    *v27 = swift_getKeyPath();
    *v9 = v20;
    *(v9 + 1) = v22;
    v9[16] = v12 & 1;
    *(v9 + 3) = v25;
    *(v9 + 4) = KeyPath;
    v9[40] = 0;
    v30 = v33;
    sub_1BD0DE204(v9, v33, &qword_1EBD51268);
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD51258);
    *(v30 + result[9]) = 256;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1BD719A68()
{
  v1 = sub_1BE04BD74();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1, v3);
  v5 = &v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(*v0 + 24);
  swift_bridgeObjectRetain_n();
  v36 = sub_1BD6D3E64(v6);
  v7 = 0;
  sub_1BD71AC7C(&v36);

  v8 = v36;
  if ((v36 & 0x8000000000000000) == 0 && (v36 & 0x4000000000000000) == 0)
  {
    v9 = *(v36 + 16);
    if (v9)
    {
      goto LABEL_4;
    }

LABEL_22:

    return 0;
  }

  v9 = sub_1BE053704();
  if (!v9)
  {
    goto LABEL_22;
  }

LABEL_4:
  if (v9 == 1)
  {
    if ((v8 & 0xC000000000000001) != 0)
    {
      v20 = MEMORY[0x1BFB40900](0, v8);
    }

    else
    {
      if (!*(v8 + 16))
      {
LABEL_28:
        __break(1u);
LABEL_29:
        __break(1u);
        goto LABEL_30;
      }

      v20 = *(v8 + 32);
      sub_1BE048964();
    }

    (*(v2 + 104))(v5, *MEMORY[0x1E69B8050], v1);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF80);
    v21 = swift_allocObject();
    *(v21 + 16) = xmmword_1BE0B69E0;
    swift_getKeyPath();
    v36 = v20;
    sub_1BD71C9A4(&qword_1EBD51300, type metadata accessor for PeerPaymentGroupRecipient);
    sub_1BE04B594();

    v23 = *(v20 + 32);
    v22 = *(v20 + 40);
    *(v21 + 56) = MEMORY[0x1E69E6158];
    *(v21 + 64) = sub_1BD110550();
    *(v21 + 32) = v23;
    *(v21 + 40) = v22;
    sub_1BE048C84();
    v19 = sub_1BE04B714();

    (*(v2 + 8))(v5, v1);
    return v19;
  }

  if (v9 != 2)
  {
    if ((v8 & 0xC000000000000001) != 0)
    {
      v7 = MEMORY[0x1BFB40900](0, v8);
    }

    else
    {
      if (!*(v8 + 16))
      {
LABEL_30:
        __break(1u);
        goto LABEL_31;
      }

      v7 = *(v8 + 32);
      sub_1BE048964();
    }

    v24 = v9 - 1;
    if (!__OFSUB__(v9, 1))
    {
      v35 = "PIENT_PICKER_SEND_TITLE";
      (*(v2 + 104))(v5, *MEMORY[0x1E69B8050], v1);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF80);
      v25 = swift_allocObject();
      *(v25 + 16) = xmmword_1BE0B6CA0;
      swift_getKeyPath();
      v26 = v1;
      v36 = v7;
      sub_1BD71C9A4(&qword_1EBD51300, type metadata accessor for PeerPaymentGroupRecipient);
      sub_1BE04B594();

      v27 = v7[4];
      v28 = v7[5];
      v29 = MEMORY[0x1E69E6158];
      *(v25 + 56) = MEMORY[0x1E69E6158];
      v30 = sub_1BD110550();
      *(v25 + 64) = v30;
      *(v25 + 32) = v27;
      *(v25 + 40) = v28;
      v36 = v24;
      sub_1BE048C84();
      v31 = sub_1BE053B24();
      *(v25 + 96) = v29;
      *(v25 + 104) = v30;
      *(v25 + 72) = v31;
      *(v25 + 80) = v32;
      v19 = sub_1BE04B714();

      (*(v2 + 8))(v5, v26);
      return v19;
    }

    __break(1u);
    goto LABEL_28;
  }

  if ((v8 & 0xC000000000000001) != 0)
  {
    v11 = MEMORY[0x1BFB40900](0, v8);
    v12 = MEMORY[0x1BFB40900](1, v8);
    goto LABEL_10;
  }

  v10 = *(v8 + 16);
  if (!v10)
  {
    goto LABEL_29;
  }

  if (v10 != 1)
  {
    v11 = *(v8 + 32);
    v12 = *(v8 + 40);
    sub_1BE048964();
    sub_1BE048964();
LABEL_10:

    v35 = "ALID_FOOTER_MULTIPLE_RECIPIENTS";
    (*(v2 + 104))(v5, *MEMORY[0x1E69B8050], v1);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF80);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_1BE0B6CA0;
    swift_getKeyPath();
    v36 = v11;
    sub_1BD71C9A4(&qword_1EBD51300, type metadata accessor for PeerPaymentGroupRecipient);
    sub_1BE04B594();

    v15 = *(v11 + 32);
    v14 = *(v11 + 40);
    *(v13 + 56) = MEMORY[0x1E69E6158];
    v16 = sub_1BD110550();
    *(v13 + 64) = v16;
    *(v13 + 32) = v15;
    *(v13 + 40) = v14;
    swift_getKeyPath();
    v34 = v1;
    v36 = v12;
    sub_1BE048C84();
    sub_1BE04B594();

    v18 = *(v12 + 32);
    v17 = *(v12 + 40);
    *(v13 + 96) = MEMORY[0x1E69E6158];
    *(v13 + 104) = v16;
    *(v13 + 72) = v18;
    *(v13 + 80) = v17;
    sub_1BE048C84();
    v19 = sub_1BE04B714();

    (*(v2 + 8))(v5, v34);
    return v19;
  }

LABEL_31:
  __break(1u);

  __break(1u);
  return result;
}

void sub_1BD71A0F0(void *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v78 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD51330);
  v58 = *(v5 - 8);
  v59 = v5;
  MEMORY[0x1EEE9AC00](v5, v6);
  v62 = &v57 - v7;
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD424B8);
  v76 = *(v79 - 1);
  MEMORY[0x1EEE9AC00](v79, v8);
  v57 = &v57 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD51340);
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v77 = &v57 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13, v14);
  v80 = &v57 - v15;
  swift_getKeyPath();
  v16 = OBJC_IVAR____TtC9PassKitUI25PeerPaymentGroupRecipient___observationRegistrar;
  v85 = a1;
  sub_1BD71C9A4(&qword_1EBD51300, type metadata accessor for PeerPaymentGroupRecipient);
  sub_1BE04B594();

  v74 = a1[6];
  v75 = v74;
  sub_1BE051CD4();
  sub_1BE04E5E4();
  v73 = v99;
  v72 = v100;
  v71 = v101;
  v70 = v102;
  v68 = v104;
  v69 = v103;
  swift_getKeyPath();
  v85 = a1;
  v63 = v16;
  sub_1BE04B594();

  v17 = a1[5];
  v85 = a1[4];
  v86 = v17;
  sub_1BD0DDEBC();
  sub_1BE048C84();
  v18 = sub_1BE0506C4();
  v20 = v19;
  v22 = v21;
  v61 = objc_opt_self();
  v23 = [v61 clearColor];
  v60 = objc_opt_self();
  if (![v60 primaryTextColor])
  {
    __break(1u);
    goto LABEL_13;
  }

  v85 = sub_1BE0511C4();
  v24 = sub_1BE050574();
  v65 = v25;
  v66 = v24;
  v27 = v26;
  v67 = v28;
  sub_1BD0DDF10(v18, v20, v22 & 1);

  v64 = sub_1BE050204();
  v29 = v27 & 1;
  v98 = v27 & 1;
  v95 = 1;
  v30 = *v78;
  swift_getKeyPath();
  v85 = v30;
  sub_1BD71C9A4(&qword_1EBD55900, type metadata accessor for PeerPaymentGroupRecipientPickerModel);
  sub_1BE04B594();

  v31 = *(v30 + 40);
  v32 = 1;
  v81 = v29;
  if (v31 != 1)
  {
LABEL_11:
    v45 = v80;
    (*(v76 + 56))(v80, v32, 1, v79);
    v46 = v77;
    sub_1BD0DE19C(v45, v77, &qword_1EBD51340);
    v47 = v73;
    *a3 = v74;
    *(a3 + 8) = v47;
    *(a3 + 16) = v72;
    *(a3 + 24) = v71;
    *(a3 + 32) = v70;
    v48 = v68;
    *(a3 + 40) = v69;
    *(a3 + 48) = v48;
    v50 = v65;
    v49 = v66;
    *&v82 = v66;
    *(&v82 + 1) = v65;
    LOBYTE(v83) = v29;
    *(&v83 + 1) = *v97;
    DWORD1(v83) = *&v97[3];
    v51 = v67;
    *(&v83 + 1) = v67;
    v52 = v64;
    LOBYTE(v84[0]) = v64;
    DWORD1(v84[0]) = *&v96[3];
    *(v84 + 1) = *v96;
    *(&v84[1] + 8) = 0u;
    *(v84 + 8) = 0u;
    BYTE8(v84[2]) = 1;
    v53 = v83;
    *(a3 + 56) = v82;
    v54 = v84[0];
    v55 = v84[1];
    *(a3 + 113) = *(&v84[1] + 9);
    *(a3 + 104) = v55;
    *(a3 + 88) = v54;
    *(a3 + 72) = v53;
    *(a3 + 136) = 0;
    *(a3 + 144) = 1;
    v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD51348);
    sub_1BD0DE19C(v46, a3 + *(v56 + 80), &qword_1EBD51340);
    v79 = v75;
    sub_1BD0DE19C(&v82, &v85, &unk_1EBD3DF90);
    sub_1BD0DE53C(v45, &qword_1EBD51340);
    sub_1BD0DE53C(v46, &qword_1EBD51340);
    v85 = v49;
    v86 = v50;
    v87 = v81;
    *v88 = *v97;
    *&v88[3] = *&v97[3];
    v89 = v51;
    v90 = v52;
    *v91 = *v96;
    *&v91[3] = *&v96[3];
    v92 = 0u;
    v93 = 0u;
    v94 = 1;
    sub_1BD0DE53C(&v85, &unk_1EBD3DF90);

    return;
  }

  swift_getKeyPath();
  v85 = v30;
  sub_1BE04B594();

  v33 = *(v30 + 64);
  if (!v33)
  {
    goto LABEL_10;
  }

  swift_getKeyPath();
  v85 = v33;
  sub_1BE048964();
  sub_1BE04B594();

  swift_beginAccess();
  v35 = *(v33 + 16);
  v34 = *(v33 + 24);
  swift_getKeyPath();
  v85 = a1;
  sub_1BE048C84();
  sub_1BE04B594();

  swift_beginAccess();
  if (v35 == a1[2] && v34 == a1[3])
  {

    LOBYTE(v29) = v81;
    goto LABEL_8;
  }

  v36 = sub_1BE053B84();

  LOBYTE(v29) = v81;
  if ((v36 & 1) == 0)
  {
LABEL_10:
    v32 = 1;
    goto LABEL_11;
  }

LABEL_8:
  v37 = v62;
  sub_1BE04E4F4();
  v38 = [v61 clearColor];
  if ([v60 secondaryTextColor])
  {

    v39 = sub_1BE0511C4();
    KeyPath = swift_getKeyPath();
    v85 = v39;
    v41 = sub_1BE04E5F4();
    v42 = v57;
    (*(v58 + 32))(v57, v37, v59);
    v43 = v80;
    v44 = (v42 + v79[9]);
    *v44 = KeyPath;
    v44[1] = v41;
    sub_1BD0DE204(v42, v43, &qword_1EBD424B8);
    v32 = 0;
    goto LABEL_11;
  }

LABEL_13:
  __break(1u);
}

BOOL sub_1BD71A96C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  sub_1BD71C9A4(&qword_1EBD51300, type metadata accessor for PeerPaymentGroupRecipient);
  sub_1BE04B594();

  v4 = *(v2 + 64);
  swift_getKeyPath();
  sub_1BE04B594();

  v5 = *(v3 + 64);
  if (v4 != v5)
  {
    return v4 < v5;
  }

  swift_getKeyPath();
  sub_1BE04B594();

  swift_getKeyPath();
  sub_1BE048C84();
  sub_1BE04B594();

  sub_1BD0DDEBC();
  v6 = sub_1BE0535C4();

  return v6 == -1;
}

uint64_t sub_1BD71AB2C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD51108);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD51110);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD51118);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD51120);
  sub_1BD71AD00();
  sub_1BD0DE4F4(&qword_1EBD51160, &qword_1EBD51120);
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  return sub_1BE04EC04();
}

uint64_t sub_1BD71AC7C(uint64_t *a1)
{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_1BD5F0648(v2);
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  sub_1BD71B21C(v6);
  return sub_1BE0538D4();
}

unint64_t sub_1BD71AD00()
{
  result = qword_1EBD51128;
  if (!qword_1EBD51128)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD51118);
    sub_1BD71ADB8();
    sub_1BD0DE4F4(&unk_1EBD51150, &qword_1EBD50BF8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD51128);
  }

  return result;
}

unint64_t sub_1BD71ADB8()
{
  result = qword_1EBD51130;
  if (!qword_1EBD51130)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD51138);
    sub_1BD0DE4F4(&qword_1EBD51140, &qword_1EBD51148);
    sub_1BD0DE4F4(&qword_1EBD36710, &qword_1EBD491B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD51130);
  }

  return result;
}

void sub_1BD71AEE0()
{
  type metadata accessor for PeerPaymentGroupRecipientPickerModel(319);
  if (v0 <= 0x3F)
  {
    sub_1BD170C00();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_1BD71AF74()
{
  result = qword_1EBD511B0;
  if (!qword_1EBD511B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD511A8);
    sub_1BD0DE4F4(&qword_1EBD511B8, &unk_1EBD511C0);
    sub_1BD0DE4F4(&unk_1EBD366D0, &unk_1EBD511D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD511B0);
  }

  return result;
}

uint64_t sub_1BD71B060(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PeerPaymentGroupRecipientPickerView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BD71B0C4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PeerPaymentGroupRecipientPickerView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_1BD71B128()
{
  type metadata accessor for PeerPaymentGroupRecipientPickerView();

  sub_1BD718450();
}

unint64_t sub_1BD71B190()
{
  result = qword_1EBD511F0;
  if (!qword_1EBD511F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD511E8);
    sub_1BD4E79F0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD511F0);
  }

  return result;
}

uint64_t sub_1BD71B21C(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_1BE053B14();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        type metadata accessor for PeerPaymentGroupRecipient(0);
        v6 = sub_1BE0527B4();
        *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) = v5;
      }

      v26 = (v6 & 0xFFFFFFFFFFFFFF8) + 32;
      v27 = v5;
      sub_1BD71B530(&v26, v25, a1, v4);
      *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) = 0;
    }

    __break(1u);
    goto LABEL_22;
  }

  if (v2 < 0)
  {
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
    return result;
  }

  if (v2 >= 2)
  {
    v20 = v2;
    v7 = *a1;
    v8 = -1;
    v9 = 1;
    v24 = *a1;
    do
    {
      v22 = v9;
      v23 = v8;
      v10 = *(v24 + 8 * v9);
      v21 = v7;
      do
      {
        v11 = *v7;
        swift_getKeyPath();
        v12 = OBJC_IVAR____TtC9PassKitUI25PeerPaymentGroupRecipient___observationRegistrar;
        v26 = v10;
        sub_1BD71C9A4(&qword_1EBD51300, type metadata accessor for PeerPaymentGroupRecipient);
        sub_1BE048964();
        sub_1BE048964();
        v28 = v12;
        sub_1BE04B594();

        v13 = *(v10 + 64);
        swift_getKeyPath();
        v26 = v11;
        sub_1BE04B594();

        v14 = *(v11 + 64);
        if (v13 == v14)
        {
          swift_getKeyPath();
          v26 = v10;
          sub_1BE04B594();

          v15 = *(v10 + 40);
          v26 = *(v10 + 32);
          v27 = v15;
          swift_getKeyPath();
          v25[0] = v11;
          sub_1BE048C84();
          sub_1BE04B594();

          v16 = *(v11 + 40);
          v25[0] = *(v11 + 32);
          v25[1] = v16;
          sub_1BD0DDEBC();
          v17 = sub_1BE0535C4();

          if (v17 != -1)
          {
            break;
          }
        }

        else
        {

          if (v13 >= v14)
          {
            break;
          }
        }

        if (!v24)
        {
          goto LABEL_23;
        }

        v18 = *v7;
        v10 = v7[1];
        *v7 = v10;
        v7[1] = v18;
        --v7;
      }

      while (!__CFADD__(v8++, 1));
      v9 = v22 + 1;
      v7 = v21 + 1;
      v8 = v23 - 1;
    }

    while (v22 + 1 != v20);
  }

  return result;
}

uint64_t sub_1BD71B530(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v6 = v4;
  v7 = a3;
  v92 = result;
  v8 = a3[1];
  if (v8 < 1)
  {
    v10 = MEMORY[0x1E69E7CC0];
LABEL_97:
    v5 = *v92;
    if (!*v92)
    {
      goto LABEL_136;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
LABEL_99:
      v108 = v10;
      v87 = *(v10 + 2);
      if (v87 >= 2)
      {
        while (*v7)
        {
          v88 = *&v10[16 * v87];
          v89 = *&v10[16 * v87 + 24];
          sub_1BD71BEC0((*v7 + 8 * v88), (*v7 + 8 * *&v10[16 * v87 + 16]), (*v7 + 8 * v89), v5);
          if (v6)
          {
          }

          if (v89 < v88)
          {
            goto LABEL_123;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v10 = sub_1BD5ED6C8(v10);
          }

          if (v87 - 2 >= *(v10 + 2))
          {
            goto LABEL_124;
          }

          v90 = &v10[16 * v87];
          *v90 = v88;
          *(v90 + 1) = v89;
          v108 = v10;
          result = sub_1BD5ED63C(v87 - 1);
          v10 = v108;
          v87 = *(v108 + 2);
          if (v87 <= 1)
          {
          }
        }

        goto LABEL_134;
      }
    }

LABEL_130:
    result = sub_1BD5ED6C8(v10);
    v10 = result;
    goto LABEL_99;
  }

  v9 = 0;
  v10 = MEMORY[0x1E69E7CC0];
LABEL_4:
  v11 = v9++;
  v93 = v11;
  if (v9 < v8)
  {
    v12 = v11;
    v13 = *v7;
    v5 = *(*v7 + 8 * v9);
    v106 = v5;
    v104 = *(v13 + 8 * v11);
    sub_1BE048964();
    sub_1BE048964();
    v14 = v6;
    v103 = sub_1BD71A96C(&v106, &v104);
    if (v6)
    {
    }

    v9 = v12 + 2;
    if (v12 + 2 < v8)
    {
      v15 = (v13 + 8 * v12 + 16);
      v101 = v8;
      do
      {
        v99 = v9;
        v5 = *(v15 - 1);
        v20 = *v15;
        swift_getKeyPath();
        v106 = v20;
        sub_1BD71C9A4(&qword_1EBD51300, type metadata accessor for PeerPaymentGroupRecipient);
        sub_1BE048964();
        sub_1BE048964();
        sub_1BE04B594();

        v21 = *(v20 + 64);
        swift_getKeyPath();
        v106 = v5;
        sub_1BE04B594();

        v22 = *(v5 + 64);
        if (v21 == v22)
        {
          swift_getKeyPath();
          v106 = v20;
          sub_1BE04B594();

          v16 = *(v20 + 40);
          v106 = *(v20 + 32);
          v107 = v16;
          swift_getKeyPath();
          v104 = v5;
          sub_1BE048C84();
          sub_1BE04B594();

          v17 = *(v5 + 40);
          v104 = *(v5 + 32);
          v105 = v17;
          sub_1BD0DDEBC();
          v18 = sub_1BE0535C4();

          v7 = a3;
          v6 = v14;
          v9 = v99;
          v19 = v101;
          if (((v103 ^ (v18 != -1)) & 1) == 0)
          {
            goto LABEL_17;
          }
        }

        else
        {

          if (v21 >= v22)
          {
            v7 = a3;
            v6 = v14;
            v19 = v101;
            if (v103)
            {
              v11 = v93;
              goto LABEL_18;
            }
          }

          else
          {
            v7 = a3;
            v6 = v14;
            v19 = v101;
            if (!v103)
            {
              v11 = v93;
              goto LABEL_26;
            }
          }
        }

        ++v9;
        ++v15;
      }

      while (v19 != v9);
      v9 = v19;
    }

LABEL_17:
    v11 = v93;
    if (!v103)
    {
      goto LABEL_26;
    }

LABEL_18:
    if (v9 < v11)
    {
      goto LABEL_129;
    }

    if (v11 < v9)
    {
      v23 = 8 * v9 - 8;
      v24 = 8 * v11;
      v25 = v9;
      v26 = v11;
      do
      {
        if (v26 != --v25)
        {
          v28 = *v7;
          if (!*v7)
          {
            goto LABEL_133;
          }

          v27 = *(v28 + v24);
          *(v28 + v24) = *(v28 + v23);
          *(v28 + v23) = v27;
        }

        ++v26;
        v23 -= 8;
        v24 += 8;
      }

      while (v26 < v25);
    }
  }

LABEL_26:
  v29 = v7[1];
  if (v9 >= v29)
  {
    goto LABEL_46;
  }

  if (__OFSUB__(v9, v11))
  {
    goto LABEL_126;
  }

  if (v9 - v11 >= a4)
  {
    goto LABEL_46;
  }

  v30 = v11 + a4;
  if (__OFADD__(v11, a4))
  {
    goto LABEL_127;
  }

  if (v30 >= v29)
  {
    v30 = v7[1];
  }

  if (v30 < v11)
  {
LABEL_128:
    __break(1u);
LABEL_129:
    __break(1u);
    goto LABEL_130;
  }

  if (v9 == v30)
  {
    goto LABEL_46;
  }

  v96 = v6;
  v102 = *v7;
  v31 = (*v7 + 8 * v9 - 8);
  v32 = v11 - v9;
  v94 = v30;
LABEL_36:
  v98 = v31;
  v100 = v9;
  v5 = *(v102 + 8 * v9);
  v97 = v32;
  while (1)
  {
    v33 = *v31;
    swift_getKeyPath();
    v106 = v5;
    sub_1BD71C9A4(&qword_1EBD51300, type metadata accessor for PeerPaymentGroupRecipient);
    sub_1BE048964();
    sub_1BE048964();
    sub_1BE04B594();

    v34 = *(v5 + 64);
    swift_getKeyPath();
    v106 = v33;
    sub_1BE04B594();

    v35 = *(v33 + 64);
    if (v34 == v35)
    {
      swift_getKeyPath();
      v106 = v5;
      sub_1BE04B594();

      v36 = *(v5 + 40);
      v106 = *(v5 + 32);
      v107 = v36;
      swift_getKeyPath();
      v104 = v33;
      sub_1BE048C84();
      sub_1BE04B594();

      v37 = *(v33 + 40);
      v104 = *(v33 + 32);
      v105 = v37;
      sub_1BD0DDEBC();
      v38 = sub_1BE0535C4();

      if (v38 != -1)
      {
        goto LABEL_35;
      }
    }

    else
    {

      if (v34 >= v35)
      {
        goto LABEL_35;
      }
    }

    if (!v102)
    {
      break;
    }

    v39 = *v31;
    v5 = v31[1];
    *v31 = v5;
    v31[1] = v39;
    --v31;
    if (__CFADD__(v32++, 1))
    {
LABEL_35:
      v9 = v100 + 1;
      v31 = v98 + 1;
      v32 = v97 - 1;
      if (v100 + 1 != v94)
      {
        goto LABEL_36;
      }

      v9 = v94;
      v7 = a3;
      v6 = v96;
      v11 = v93;
LABEL_46:
      if (v9 < v11)
      {
        goto LABEL_125;
      }

      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_1BD1D7844(0, *(v10 + 2) + 1, 1, v10);
        v10 = result;
      }

      v42 = *(v10 + 2);
      v41 = *(v10 + 3);
      v43 = v42 + 1;
      if (v42 >= v41 >> 1)
      {
        result = sub_1BD1D7844((v41 > 1), v42 + 1, 1, v10);
        v10 = result;
      }

      *(v10 + 2) = v43;
      v44 = &v10[16 * v42];
      *(v44 + 4) = v93;
      *(v44 + 5) = v9;
      v45 = *v92;
      if (!*v92)
      {
        goto LABEL_135;
      }

      if (v42)
      {
        while (1)
        {
          v5 = v43 - 1;
          if (v43 >= 4)
          {
            break;
          }

          if (v43 == 3)
          {
            v46 = *(v10 + 4);
            v47 = *(v10 + 5);
            v56 = __OFSUB__(v47, v46);
            v48 = v47 - v46;
            v49 = v56;
LABEL_66:
            if (v49)
            {
              goto LABEL_114;
            }

            v62 = &v10[16 * v43];
            v64 = *v62;
            v63 = *(v62 + 1);
            v65 = __OFSUB__(v63, v64);
            v66 = v63 - v64;
            v67 = v65;
            if (v65)
            {
              goto LABEL_117;
            }

            v68 = &v10[16 * v5 + 32];
            v70 = *v68;
            v69 = *(v68 + 1);
            v56 = __OFSUB__(v69, v70);
            v71 = v69 - v70;
            if (v56)
            {
              goto LABEL_120;
            }

            if (__OFADD__(v66, v71))
            {
              goto LABEL_121;
            }

            if (v66 + v71 >= v48)
            {
              if (v48 < v71)
              {
                v5 = v43 - 2;
              }

              goto LABEL_87;
            }

            goto LABEL_80;
          }

          v72 = &v10[16 * v43];
          v74 = *v72;
          v73 = *(v72 + 1);
          v56 = __OFSUB__(v73, v74);
          v66 = v73 - v74;
          v67 = v56;
LABEL_80:
          if (v67)
          {
            goto LABEL_116;
          }

          v75 = &v10[16 * v5];
          v77 = *(v75 + 4);
          v76 = *(v75 + 5);
          v56 = __OFSUB__(v76, v77);
          v78 = v76 - v77;
          if (v56)
          {
            goto LABEL_119;
          }

          if (v78 < v66)
          {
            goto LABEL_3;
          }

LABEL_87:
          v83 = v5 - 1;
          if (v5 - 1 >= v43)
          {
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
LABEL_125:
            __break(1u);
LABEL_126:
            __break(1u);
LABEL_127:
            __break(1u);
            goto LABEL_128;
          }

          if (!*v7)
          {
            goto LABEL_132;
          }

          v84 = *&v10[16 * v83 + 32];
          v85 = *&v10[16 * v5 + 40];
          sub_1BD71BEC0((*v7 + 8 * v84), (*v7 + 8 * *&v10[16 * v5 + 32]), (*v7 + 8 * v85), v45);
          if (v6)
          {
          }

          if (v85 < v84)
          {
            goto LABEL_110;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v10 = sub_1BD5ED6C8(v10);
          }

          if (v83 >= *(v10 + 2))
          {
            goto LABEL_111;
          }

          v86 = &v10[16 * v83];
          *(v86 + 4) = v84;
          *(v86 + 5) = v85;
          v108 = v10;
          result = sub_1BD5ED63C(v5);
          v10 = v108;
          v43 = *(v108 + 2);
          if (v43 <= 1)
          {
            goto LABEL_3;
          }
        }

        v50 = &v10[16 * v43 + 32];
        v51 = *(v50 - 64);
        v52 = *(v50 - 56);
        v56 = __OFSUB__(v52, v51);
        v53 = v52 - v51;
        if (v56)
        {
          goto LABEL_112;
        }

        v55 = *(v50 - 48);
        v54 = *(v50 - 40);
        v56 = __OFSUB__(v54, v55);
        v48 = v54 - v55;
        v49 = v56;
        if (v56)
        {
          goto LABEL_113;
        }

        v57 = &v10[16 * v43];
        v59 = *v57;
        v58 = *(v57 + 1);
        v56 = __OFSUB__(v58, v59);
        v60 = v58 - v59;
        if (v56)
        {
          goto LABEL_115;
        }

        v56 = __OFADD__(v48, v60);
        v61 = v48 + v60;
        if (v56)
        {
          goto LABEL_118;
        }

        if (v61 >= v53)
        {
          v79 = &v10[16 * v5 + 32];
          v81 = *v79;
          v80 = *(v79 + 1);
          v56 = __OFSUB__(v80, v81);
          v82 = v80 - v81;
          if (v56)
          {
            goto LABEL_122;
          }

          if (v48 < v82)
          {
            v5 = v43 - 2;
          }

          goto LABEL_87;
        }

        goto LABEL_66;
      }

LABEL_3:
      v8 = v7[1];
      if (v9 >= v8)
      {
        goto LABEL_97;
      }

      goto LABEL_4;
    }
  }

  __break(1u);
LABEL_132:
  __break(1u);
LABEL_133:
  __break(1u);
LABEL_134:
  __break(1u);
LABEL_135:
  __break(1u);
LABEL_136:
  __break(1u);
  return result;
}

uint64_t sub_1BD71BEC0(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __dst;
  v7 = __src - __dst;
  v8 = __src - __dst + 7;
  if (__src - __dst >= 0)
  {
    v8 = __src - __dst;
  }

  v9 = v8 >> 3;
  v10 = a3 - __src;
  v11 = a3 - __src + 7;
  if (a3 - __src >= 0)
  {
    v11 = a3 - __src;
  }

  v12 = v11 >> 3;
  if (v9 >= v11 >> 3)
  {
    v6 = __src;
    if (a4 != __src || &__src[8 * v12] <= a4)
    {
      memmove(a4, __src, 8 * v12);
    }

    v37 = &v4[8 * v12];
    if (v10 >= 8 && v6 > __dst)
    {
      v36 = v4;
LABEL_28:
      v22 = (v6 - 8);
      v5 -= 8;
      v23 = v37;
      v30 = v6 - 8;
      do
      {
        v24 = *(v23 - 1);
        v31 = v23 - 8;
        v25 = *v22;
        swift_getKeyPath();
        sub_1BD71C9A4(&qword_1EBD51300, type metadata accessor for PeerPaymentGroupRecipient);
        sub_1BE048964();
        sub_1BE048964();
        sub_1BE04B594();

        v26 = *(v24 + 64);
        swift_getKeyPath();
        sub_1BE04B594();

        v27 = *(v25 + 64);
        if (v26 == v27)
        {
          swift_getKeyPath();
          sub_1BE04B594();

          swift_getKeyPath();
          sub_1BE048C84();
          sub_1BE04B594();

          sub_1BD0DDEBC();
          v28 = sub_1BE0535C4();

          if (v28 == -1)
          {
            goto LABEL_36;
          }
        }

        else
        {

          if (v26 < v27)
          {
LABEL_36:
            v4 = v36;
            if (v5 + 8 != v6)
            {
              *v5 = *v30;
            }

            if (v37 <= v36 || (v6 -= 8, v30 <= __dst))
            {
              v6 = v30;
              goto LABEL_42;
            }

            goto LABEL_28;
          }
        }

        v4 = v36;
        v23 = v31;
        if (v5 + 8 != v37)
        {
          *v5 = *v31;
        }

        v5 -= 8;
        v37 = v31;
        v22 = (v6 - 8);
      }

      while (v31 > v36);
      v37 = v31;
    }
  }

  else
  {
    if (a4 != __dst || &__dst[8 * v9] <= a4)
    {
      memmove(a4, __dst, 8 * v9);
    }

    v37 = &v4[8 * v9];
    if (v7 >= 8 && __src < v5)
    {
      v14 = __src;
      v34 = v5;
      do
      {
        v32 = v14;
        v15 = *v14;
        v35 = v4;
        v16 = *v4;
        swift_getKeyPath();
        sub_1BD71C9A4(&qword_1EBD51300, type metadata accessor for PeerPaymentGroupRecipient);
        sub_1BE048964();
        sub_1BE048964();
        sub_1BE04B594();

        v17 = *(v15 + 64);
        swift_getKeyPath();
        sub_1BE04B594();

        v18 = *(v16 + 64);
        if (v17 == v18)
        {
          swift_getKeyPath();
          sub_1BE04B594();

          swift_getKeyPath();
          sub_1BE048C84();
          sub_1BE04B594();

          sub_1BD0DDEBC();
          v19 = sub_1BE0535C4();

          if (v19 != -1)
          {
            goto LABEL_14;
          }
        }

        else
        {

          if (v17 >= v18)
          {
LABEL_14:
            v20 = v34;
            v21 = v4;
            v4 += 8;
            v14 = v32;
            if (v6 == v35)
            {
              goto LABEL_16;
            }

LABEL_15:
            *v6 = *v21;
            goto LABEL_16;
          }
        }

        v21 = v32;
        v14 = v32 + 8;
        v20 = v34;
        if (v6 != v32)
        {
          goto LABEL_15;
        }

LABEL_16:
        v6 += 8;
      }

      while (v4 < v37 && v14 < v20);
    }
  }

LABEL_42:
  if (v6 != v4 || v6 >= &v4[(v37 - v4 + (v37 - v4 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8])
  {
    memmove(v6, v4, 8 * ((v37 - v4) / 8));
  }

  return 1;
}

unint64_t sub_1BD71C478()
{
  result = qword_1EBD51248;
  if (!qword_1EBD51248)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD51240);
    sub_1BD71C518();
    sub_1BD71C65C();
    sub_1BD12E194();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD51248);
  }

  return result;
}

unint64_t sub_1BD71C518()
{
  result = qword_1EBD51250;
  if (!qword_1EBD51250)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD51258);
    sub_1BD71C5A4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD51250);
  }

  return result;
}

unint64_t sub_1BD71C5A4()
{
  result = qword_1EBD51260;
  if (!qword_1EBD51260)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD51268);
    sub_1BD0FF49C();
    sub_1BD0DE4F4(&unk_1EBD51290, &qword_1EBD386C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD51260);
  }

  return result;
}

unint64_t sub_1BD71C65C()
{
  result = qword_1EBD512A0;
  if (!qword_1EBD512A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD512A8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD512B0);
    sub_1BD71C71C();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD512A0);
  }

  return result;
}

unint64_t sub_1BD71C71C()
{
  result = qword_1EBD512B8;
  if (!qword_1EBD512B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD512B0);
    sub_1BD0DE4F4(&qword_1EBD512C0, &qword_1EBD512C8);
    sub_1BD0DE4F4(&unk_1EBD512D0, &qword_1EBD486C8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD512B8);
  }

  return result;
}

uint64_t objectdestroyTm_83()
{
  v1 = (type metadata accessor for PeerPaymentGroupRecipientPickerView() - 8);
  v2 = v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80));

  v3 = v1[7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3FA20);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = sub_1BE04E664();
    (*(*(v4 - 8) + 8))(v2 + v3, v4);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1BD71C924(void **a1)
{
  v3 = *(type metadata accessor for PeerPaymentGroupRecipientPickerView() - 8);
  v4 = (v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80)));

  return sub_1BD71957C(a1, v4);
}

uint64_t sub_1BD71C9A4(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1BD71C9EC()
{
  v1 = *(type metadata accessor for PeerPaymentGroupRecipientPickerView() - 8);
  v2 = *(v0 + ((*(v1 + 64) + ((*(v1 + 80) + 16) & ~*(v1 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8));
  if ([*(v2 + 56) status] == 1)
  {
    sub_1BD91FB38(v2);
  }
}

id sub_1BD71CA9C(uint64_t a1, char a2, char a3)
{
  ObjectType = swift_getObjectType();
  *&v3[OBJC_IVAR____TtC9PassKitUI37ProvisioningSetupAssistantFlowSection_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v8 = &v3[OBJC_IVAR____TtC9PassKitUI37ProvisioningSetupAssistantFlowSection_identifier];
  *v8 = 0xD000000000000019;
  v8[1] = 0x80000001BE136F50;
  *&v3[OBJC_IVAR____TtC9PassKitUI37ProvisioningSetupAssistantFlowSection__hasSeenHeroScreen] = &type metadata for HasSeenHeroScreenKey;
  *&v3[OBJC_IVAR____TtC9PassKitUI37ProvisioningSetupAssistantFlowSection__privacyDisclosures] = &type metadata for PrivacyDisclosures;
  *&v3[OBJC_IVAR____TtC9PassKitUI37ProvisioningSetupAssistantFlowSection_context] = a1;
  v3[OBJC_IVAR____TtC9PassKitUI37ProvisioningSetupAssistantFlowSection_allowManualEntry] = a2;
  v3[OBJC_IVAR____TtC9PassKitUI37ProvisioningSetupAssistantFlowSection_didSeeHeroScreen] = a3;
  v10.receiver = v3;
  v10.super_class = ObjectType;
  return objc_msgSendSuper2(&v10, sel_init);
}

void sub_1BD71CC3C(void (*a1)(uint64_t, unint64_t, unint64_t, uint64_t))
{
  v2 = v1;
  v3 = a1;
  if (v1[OBJC_IVAR____TtC9PassKitUI37ProvisioningSetupAssistantFlowSection_didSeeHeroScreen] == 1)
  {
    KeyPath = swift_getKeyPath();
    v25 = v2;
    v5 = v2;
    sub_1BD12F850(1, v5, KeyPath);

    v24 = swift_getKeyPath();
    v22 = sub_1BD188258(v5, v24);
    v23 = v6;
    v8 = v7;
    sub_1BE053D04();
    sub_1BE052524();
    v9 = sub_1BE053D64();
    v10 = -1 << *(v8 + 32);
    v11 = v9 & ~v10;
    if ((*(v8 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
    {
      v12 = ~v10;
      while (1)
      {
        v13 = *(*(v8 + 48) + v11);
        if (v13 != 1 && v13 != 2)
        {
          break;
        }

        v14 = sub_1BE053B84();

        if (v14)
        {
          goto LABEL_9;
        }

        v11 = (v11 + 1) & v12;
        if (((*(v8 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
        {
          goto LABEL_8;
        }
      }
    }

    else
    {
LABEL_8:
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      sub_1BD2A9690(0, v11, isUniquelyReferenced_nonNull_native);
    }

LABEL_9:
    v16 = v5;
    sub_1BD12F87C(v22 & 1, v23, v8, v16, v24);

    v3 = a1;
    v2 = v25;
  }

  v17 = sub_1BE04BBD4();
  v18 = [v17 associatedCredentials];

  if (v18)
  {
    sub_1BD71D990();
    v19 = sub_1BE052744();

    if (v19 >> 62)
    {
      v20 = sub_1BE053704();
    }

    else
    {
      v20 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v20)
    {
      v21 = 1;
    }

    else
    {
      v21 = v2[OBJC_IVAR____TtC9PassKitUI37ProvisioningSetupAssistantFlowSection_allowManualEntry];
    }

    v3(v21, 0xD00000000000002DLL, 0x80000001BE136EF0, 2);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1BD71CF48(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD51388);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = &v51 - v5;
  v7 = sub_1BE04BAC4();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = &v51 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1BE04B9E4();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12, v14);
  v16 = &v51 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17, v18);
  v20 = &v51 - v19;
  v53 = v1;
  v54 = *(v1 + OBJC_IVAR____TtC9PassKitUI37ProvisioningSetupAssistantFlowSection_context);
  sub_1BE04BC34();
  sub_1BE04B984();
  (*(v8 + 8))(v11, v7);
  if ((*(v13 + 48))(v6, 1, v12) == 1)
  {
    sub_1BD71D928(v6);
    return 0;
  }

  (*(v13 + 32))(v20, v6, v12);
  if (a1)
  {
LABEL_4:
    (*(v13 + 8))(v20, v12);
    return 0;
  }

  v22 = sub_1BE04BBD4();
  v23 = [v22 associatedCredentials];

  if (v23)
  {
    sub_1BD71D990();
    v24 = sub_1BE052744();
  }

  else
  {
    v24 = MEMORY[0x1E69E7CC0];
  }

  (*(v13 + 16))(v16, v20, v12);
  v25 = (*(v13 + 88))(v16, v12);
  v26 = v24 >> 62;
  if (v25 == *MEMORY[0x1E69B8000])
  {
    goto LABEL_15;
  }

  if (v25 == *MEMORY[0x1E69B7FF8])
  {
    if (v26)
    {
      if (sub_1BE053704())
      {
        goto LABEL_13;
      }
    }

    else if (*((v24 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_13:
      v27 = *(v53 + OBJC_IVAR____TtC9PassKitUI37ProvisioningSetupAssistantFlowSection_allowManualEntry);
      v28 = type metadata accessor for PaymentSetupCredentialsFlowItem();
      v29 = objc_allocWithZone(v28);
      *&v29[OBJC_IVAR____TtC9PassKitUI31PaymentSetupCredentialsFlowItem__privacyDisclosures] = &type metadata for PrivacyDisclosures;
      *&v29[OBJC_IVAR____TtC9PassKitUI31PaymentSetupCredentialsFlowItem_delegate + 8] = 0;
      swift_unknownObjectWeakInit();
      v30 = &v29[OBJC_IVAR____TtC9PassKitUI31PaymentSetupCredentialsFlowItem_identifier];
      *v30 = 0xD00000000000001FLL;
      v30[1] = 0x80000001BE1229B0;
      *&v29[OBJC_IVAR____TtC9PassKitUI31PaymentSetupCredentialsFlowItem_context] = v54;
      *&v29[OBJC_IVAR____TtC9PassKitUI31PaymentSetupCredentialsFlowItem_credentials] = v24;
      v29[OBJC_IVAR____TtC9PassKitUI31PaymentSetupCredentialsFlowItem_allowManualEntry] = v27;
      *&v29[OBJC_IVAR____TtC9PassKitUI31PaymentSetupCredentialsFlowItem_product] = 0;
      v55.receiver = v29;
      v55.super_class = v28;
      sub_1BE048964();
      v31 = objc_msgSendSuper2(&v55, sel_init);
      (*(v13 + 8))(v20, v12);
      return v31;
    }

LABEL_15:
    if (v26)
    {
      if (sub_1BE053704())
      {
        goto LABEL_17;
      }
    }

    else if (*((v24 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_17:
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD38570);
      v32 = swift_allocObject();
      *(v32 + 16) = xmmword_1BE0B6CA0;
      v33 = type metadata accessor for ProvisioningHeroFlowItem();
      v34 = objc_allocWithZone(v33);
      *&v34[OBJC_IVAR____TtC9PassKitUI24ProvisioningHeroFlowItem__hasSeenHeroScreen] = &type metadata for HasSeenHeroScreenKey;
      v52 = v20;
      *&v34[OBJC_IVAR____TtC9PassKitUI24ProvisioningHeroFlowItem__privacyDisclosures] = &type metadata for PrivacyDisclosures;
      *&v34[OBJC_IVAR____TtC9PassKitUI24ProvisioningHeroFlowItem__hasSelectedMethod] = &type metadata for HasSelectedMethodKey;
      v35 = OBJC_IVAR____TtC9PassKitUI24ProvisioningHeroFlowItem_selectedMethod;
      *&v34[OBJC_IVAR____TtC9PassKitUI24ProvisioningHeroFlowItem_selectedMethod] = 0;
      *&v34[OBJC_IVAR____TtC9PassKitUI24ProvisioningHeroFlowItem_delegate + 8] = 0;
      swift_unknownObjectWeakInit();
      v36 = &v34[OBJC_IVAR____TtC9PassKitUI24ProvisioningHeroFlowItem_identifier];
      strcpy(&v34[OBJC_IVAR____TtC9PassKitUI24ProvisioningHeroFlowItem_identifier], "HeroFlowItem");
      v36[13] = 0;
      *(v36 + 7) = -5120;
      v37 = v54;
      *&v34[OBJC_IVAR____TtC9PassKitUI24ProvisioningHeroFlowItem_context] = v54;
      v34[OBJC_IVAR____TtC9PassKitUI24ProvisioningHeroFlowItem_style] = 0;
      *&v34[OBJC_IVAR____TtC9PassKitUI24ProvisioningHeroFlowItem_product] = 0;
      v38 = *&v34[v35];
      *&v34[v35] = 0;
      sub_1BE048964();

      v34[OBJC_IVAR____TtC9PassKitUI24ProvisioningHeroFlowItem_allowSecondaryManualEntry] = 0;
      v58.receiver = v34;
      v58.super_class = v33;
      *(v32 + 32) = objc_msgSendSuper2(&v58, sel_init);
      *(v32 + 40) = &off_1F3BA7D00;
      LOBYTE(v38) = *(v53 + OBJC_IVAR____TtC9PassKitUI37ProvisioningSetupAssistantFlowSection_allowManualEntry);
      v39 = type metadata accessor for PaymentSetupCredentialsFlowItem();
      v40 = objc_allocWithZone(v39);
      *&v40[OBJC_IVAR____TtC9PassKitUI31PaymentSetupCredentialsFlowItem__privacyDisclosures] = &type metadata for PrivacyDisclosures;
      *&v40[OBJC_IVAR____TtC9PassKitUI31PaymentSetupCredentialsFlowItem_delegate + 8] = 0;
      swift_unknownObjectWeakInit();
      v41 = &v40[OBJC_IVAR____TtC9PassKitUI31PaymentSetupCredentialsFlowItem_identifier];
      *v41 = 0xD00000000000001FLL;
      v41[1] = 0x80000001BE1229B0;
      *&v40[OBJC_IVAR____TtC9PassKitUI31PaymentSetupCredentialsFlowItem_context] = v37;
      *&v40[OBJC_IVAR____TtC9PassKitUI31PaymentSetupCredentialsFlowItem_credentials] = v24;
      v40[OBJC_IVAR____TtC9PassKitUI31PaymentSetupCredentialsFlowItem_allowManualEntry] = v38;
      *&v40[OBJC_IVAR____TtC9PassKitUI31PaymentSetupCredentialsFlowItem_product] = 0;
      v57.receiver = v40;
      v57.super_class = v39;
      sub_1BE048964();
      *(v32 + 48) = objc_msgSendSuper2(&v57, sel_init);
      *(v32 + 56) = &off_1F3BCA500;
      type metadata accessor for UIStaticFlowSection();
      v42 = swift_allocObject();
      *(v42 + 24) = 0;
      swift_unknownObjectWeakInit();
      *(v42 + 32) = 514;
      (*(v13 + 8))(v52, v12);
      result = v42;
      *(v42 + 40) = 0xD000000000000013;
      *(v42 + 48) = 0x80000001BE11E190;
      *(v42 + 56) = v32;
LABEL_21:
      *(v42 + 32) = 514;
      return result;
    }

    if (*(v53 + OBJC_IVAR____TtC9PassKitUI37ProvisioningSetupAssistantFlowSection_allowManualEntry) != 1)
    {
      goto LABEL_4;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD38570);
    v43 = swift_allocObject();
    *(v43 + 16) = xmmword_1BE0B6CA0;
    v44 = type metadata accessor for ProvisioningHeroFlowItem();
    v45 = objc_allocWithZone(v44);
    *&v45[OBJC_IVAR____TtC9PassKitUI24ProvisioningHeroFlowItem__hasSeenHeroScreen] = &type metadata for HasSeenHeroScreenKey;
    *&v45[OBJC_IVAR____TtC9PassKitUI24ProvisioningHeroFlowItem__privacyDisclosures] = &type metadata for PrivacyDisclosures;
    *&v45[OBJC_IVAR____TtC9PassKitUI24ProvisioningHeroFlowItem__hasSelectedMethod] = &type metadata for HasSelectedMethodKey;
    v46 = OBJC_IVAR____TtC9PassKitUI24ProvisioningHeroFlowItem_selectedMethod;
    *&v45[OBJC_IVAR____TtC9PassKitUI24ProvisioningHeroFlowItem_selectedMethod] = 0;
    *&v45[OBJC_IVAR____TtC9PassKitUI24ProvisioningHeroFlowItem_delegate + 8] = 0;
    swift_unknownObjectWeakInit();
    v47 = &v45[OBJC_IVAR____TtC9PassKitUI24ProvisioningHeroFlowItem_identifier];
    strcpy(&v45[OBJC_IVAR____TtC9PassKitUI24ProvisioningHeroFlowItem_identifier], "HeroFlowItem");
    v47[13] = 0;
    *(v47 + 7) = -5120;
    *&v45[OBJC_IVAR____TtC9PassKitUI24ProvisioningHeroFlowItem_context] = v54;
    v45[OBJC_IVAR____TtC9PassKitUI24ProvisioningHeroFlowItem_style] = 0;
    *&v45[OBJC_IVAR____TtC9PassKitUI24ProvisioningHeroFlowItem_product] = 0;
    v48 = *&v45[v46];
    *&v45[v46] = 0;
    sub_1BE048964();

    v45[OBJC_IVAR____TtC9PassKitUI24ProvisioningHeroFlowItem_allowSecondaryManualEntry] = 0;
    v56.receiver = v45;
    v56.super_class = v44;
    *(v43 + 32) = objc_msgSendSuper2(&v56, sel_init);
    *(v43 + 40) = &off_1F3BA7D00;
    v49 = objc_allocWithZone(type metadata accessor for ProvisioningManualEntryFlowSection());
    v50 = sub_1BE048964();
    *(v43 + 48) = sub_1BD87126C(v50, 0, 0);
    *(v43 + 56) = &off_1F3BC0AB0;
    type metadata accessor for UIStaticFlowSection();
    v42 = swift_allocObject();
    *(v42 + 24) = 0;
    swift_unknownObjectWeakInit();
    *(v42 + 32) = 514;
    (*(v13 + 8))(v20, v12);
    result = v42;
    *(v42 + 40) = 0xD000000000000013;
    *(v42 + 48) = 0x80000001BE11E190;
    *(v42 + 56) = v43;
    goto LABEL_21;
  }

  if (v25 == *MEMORY[0x1E69B8008])
  {
    goto LABEL_15;
  }

  result = sub_1BE053994();
  __break(1u);
  return result;
}

uint64_t sub_1BD71D89C()
{
  v1 = *(v0 + OBJC_IVAR____TtC9PassKitUI37ProvisioningSetupAssistantFlowSection_identifier);
  sub_1BE048C84();
  return v1;
}

uint64_t sub_1BD71D8D8(uint64_t a1, uint64_t a2)
{
  *(v2 + OBJC_IVAR____TtC9PassKitUI37ProvisioningSetupAssistantFlowSection_delegate + 8) = a2;
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

uint64_t sub_1BD71D928(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD51388);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1BD71D990()
{
  result = qword_1EBD444C0;
  if (!qword_1EBD444C0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EBD444C0);
  }

  return result;
}

id sub_1BD71D9DC(void *a1)
{
  [v1 setDirectionalLayoutMargins_];
  v3 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v4 = swift_allocObject();
  *(v4 + 16) = v3;
  *(v4 + 24) = a1;
  sub_1BE048964();
  v5 = a1;
  sub_1BE052E74();

  return [v1 setNeedsUpdateConfiguration];
}

void sub_1BD71DAB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD513A0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = v20 - v12;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v15 = Strong;
    v16 = PKAccessibilityIDSet(Strong, *MEMORY[0x1E69B9500]);
    MEMORY[0x1EEE9AC00](v16, v17);
    v20[-2] = a4;
    v18 = v15;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD513A8);
    sub_1BD71EA04();
    sub_1BE04FCE4();
    sub_1BE050234();
    sub_1BE04FCD4();
    v19 = *(v6 + 8);
    v19(v9, v5);
    sub_1BE0501C4();
    v20[3] = v5;
    v20[4] = sub_1BD0DE4F4(&qword_1EBD513F8, &qword_1EBD513A0);
    __swift_allocate_boxed_opaque_existential_1(v20);
    sub_1BE04FCD4();
    v19(v13, v5);
    MEMORY[0x1BFB3FEF0](v20);
  }
}

uint64_t sub_1BD71DD1C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v75 = a2;
  v3 = type metadata accessor for AccountBalanceCreditCell();
  MEMORY[0x1EEE9AC00](v3, v4);
  v6 = (&v62 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v7, v8);
  v70 = &v62 - v9;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD51400);
  MEMORY[0x1EEE9AC00](v74, v10);
  v12 = &v62 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD51408);
  MEMORY[0x1EEE9AC00](v13, v14);
  v16 = &v62 - v15;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD513D0);
  MEMORY[0x1EEE9AC00](v73, v17);
  v19 = &v62 - v18;
  v69 = type metadata accessor for PKBankConnectAccountDetailsView();
  MEMORY[0x1EEE9AC00](v69, v20);
  v22 = (&v62 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD513E0);
  MEMORY[0x1EEE9AC00](v23, v24);
  v71 = &v62 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = MEMORY[0x1EEE9AC00](v26, v27);
  v72 = &v62 - v29;
  v30 = a1;
  v31 = [a1 accountType];
  if (v31 == 1)
  {
    v32 = _UISolariumFeatureFlagEnabled();
    v33 = 12.0;
    if (v32)
    {
      v33 = 15.0;
    }

    *v6 = v33;
    v34 = *(v3 + 20);
    *(v6 + v34) = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38880);
    swift_storeEnumTagMultiPayload();
    *(v6 + *(v3 + 24)) = v30;
    v35 = v6;
    v36 = v70;
    sub_1BD7207BC(v35, v70, type metadata accessor for AccountBalanceCreditCell);
    sub_1BD71ED20(v36, v16);
    swift_storeEnumTagMultiPayload();
    sub_1BD71EBD0();
    sub_1BD71EC8C(&qword_1EBD513F0, type metadata accessor for AccountBalanceCreditCell);
    v37 = v30;
    sub_1BE04F9A4();
    sub_1BD0DE19C(v19, v12, &qword_1EBD513D0);
    swift_storeEnumTagMultiPayload();
    sub_1BD71EB14();
    sub_1BE04F9A4();
    sub_1BD0DE53C(v19, &qword_1EBD513D0);
    return sub_1BD71ED84(v36);
  }

  else
  {
    v67 = v23;
    v68 = v13;
    v70 = v16;
    if (v31)
    {
      *&v77 = 0;
      *(&v77 + 1) = 0xE000000000000000;
      sub_1BE053834();
      MEMORY[0x1BFB3F610](0xD00000000000001BLL, 0x80000001BE11ADE0);
      v76 = [a1 accountType];
      type metadata accessor for FKAccountType(0);
      sub_1BE053974();
      result = sub_1BE053994();
      __break(1u);
    }

    else
    {
      v39 = [a1 balanceTitle];
      v66 = sub_1BE052434();
      v65 = v40;

      v41 = [a1 displayedBalance];
      v64 = sub_1BE052434();
      v63 = v42;

      v43 = [a1 balanceSubtitle];
      v44 = v67;
      if (v43)
      {
        v45 = v43;
        v46 = sub_1BE052434();
        v48 = v47;
      }

      else
      {
        v46 = 0;
        v48 = [a1 isPersonalizedInsightsEnabled] ^ 1;
      }

      v49 = sub_1BE051464();
      *v22 = swift_getKeyPath();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD521C0);
      swift_storeEnumTagMultiPayload();
      v50 = v69;
      v51 = *(v69 + 20);
      *(v22 + v51) = swift_getKeyPath();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38880);
      swift_storeEnumTagMultiPayload();
      v52 = *(v50 + 24);
      *(v22 + v52) = swift_getKeyPath();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD51410);
      swift_storeEnumTagMultiPayload();
      v53 = (v22 + *(v50 + 28));
      v54 = v65;
      *v53 = v66;
      v53[1] = v54;
      v55 = v63;
      v53[2] = v64;
      v53[3] = v55;
      v53[4] = v46;
      v53[5] = v48;
      v53[6] = v49;
      sub_1BE051CE4();
      sub_1BE04EE54();
      v56 = v71;
      sub_1BD7207BC(v22, v71, type metadata accessor for PKBankConnectAccountDetailsView);
      v57 = (v56 + *(v44 + 36));
      v58 = v82;
      v57[4] = v81;
      v57[5] = v58;
      v57[6] = v83;
      v59 = v78;
      *v57 = v77;
      v57[1] = v59;
      v60 = v80;
      v57[2] = v79;
      v57[3] = v60;
      v61 = v72;
      sub_1BD720824(v56, v72);
      sub_1BD0DE19C(v61, v70, &qword_1EBD513E0);
      swift_storeEnumTagMultiPayload();
      sub_1BD71EBD0();
      sub_1BD71EC8C(&qword_1EBD513F0, type metadata accessor for AccountBalanceCreditCell);
      sub_1BE04F9A4();
      sub_1BD0DE19C(v19, v12, &qword_1EBD513D0);
      swift_storeEnumTagMultiPayload();
      sub_1BD71EB14();
      sub_1BE04F9A4();
      sub_1BD0DE53C(v19, &qword_1EBD513D0);
      return sub_1BD0DE53C(v61, &qword_1EBD513E0);
    }
  }

  return result;
}

id PKDashboardBankConnectBalanceCell.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id PKDashboardBankConnectBalanceCell.init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = _UISolariumFeatureFlagEnabled();
  v10 = 8.0;
  if (v9)
  {
    v10 = 11.0;
  }

  *&v4[OBJC_IVAR____TtC9PassKitUI33PKDashboardBankConnectBalanceCell_verticalPadding] = v10;
  v11 = _UISolariumFeatureFlagEnabled();
  v12 = 12.0;
  if (v11)
  {
    v12 = 15.0;
  }

  *&v4[OBJC_IVAR____TtC9PassKitUI33PKDashboardBankConnectBalanceCell_horizontalPadding] = v12;
  v14.receiver = v4;
  v14.super_class = type metadata accessor for PKDashboardBankConnectBalanceCell();
  return objc_msgSendSuper2(&v14, sel_initWithFrame_, a1, a2, a3, a4);
}

id PKDashboardBankConnectBalanceCell.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id PKDashboardBankConnectBalanceCell.init(coder:)(void *a1)
{
  v3 = _UISolariumFeatureFlagEnabled();
  v4 = 8.0;
  if (v3)
  {
    v4 = 11.0;
  }

  *&v1[OBJC_IVAR____TtC9PassKitUI33PKDashboardBankConnectBalanceCell_verticalPadding] = v4;
  v5 = _UISolariumFeatureFlagEnabled();
  v6 = 12.0;
  if (v5)
  {
    v6 = 15.0;
  }

  *&v1[OBJC_IVAR____TtC9PassKitUI33PKDashboardBankConnectBalanceCell_horizontalPadding] = v6;
  v9.receiver = v1;
  v9.super_class = type metadata accessor for PKDashboardBankConnectBalanceCell();
  v7 = objc_msgSendSuper2(&v9, sel_initWithCoder_, a1);

  if (v7)
  {
  }

  return v7;
}

id PKDashboardBankConnectBalanceCell.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PKDashboardBankConnectBalanceCell();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_1BD71EA04()
{
  result = qword_1EBD513B0;
  if (!qword_1EBD513B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD513A8);
    sub_1BD71EA88();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD513B0);
  }

  return result;
}

unint64_t sub_1BD71EA88()
{
  result = qword_1EBD513B8;
  if (!qword_1EBD513B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD513C0);
    sub_1BD71EB14();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD513B8);
  }

  return result;
}

unint64_t sub_1BD71EB14()
{
  result = qword_1EBD513C8;
  if (!qword_1EBD513C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD513D0);
    sub_1BD71EBD0();
    sub_1BD71EC8C(&qword_1EBD513F0, type metadata accessor for AccountBalanceCreditCell);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD513C8);
  }

  return result;
}

unint64_t sub_1BD71EBD0()
{
  result = qword_1EBD513D8;
  if (!qword_1EBD513D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD513E0);
    sub_1BD71EC8C(&qword_1EBD513E8, type metadata accessor for PKBankConnectAccountDetailsView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD513D8);
  }

  return result;
}

uint64_t sub_1BD71EC8C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t type metadata accessor for AccountBalanceCreditCell()
{
  result = qword_1EBD51418;
  if (!qword_1EBD51418)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1BD71ED20(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AccountBalanceCreditCell();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BD71ED84(uint64_t a1)
{
  v2 = type metadata accessor for AccountBalanceCreditCell();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1BD71EDE0@<X0>(uint64_t a1@<X8>)
{
  v53 = a1;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD51430);
  v2 = *(v54 - 8);
  MEMORY[0x1EEE9AC00](v54, v3);
  v5 = &v42 - v4;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD51438);
  MEMORY[0x1EEE9AC00](v51, v6);
  v52 = &v42 - v7;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD51440);
  MEMORY[0x1EEE9AC00](v49, v8);
  v43 = (&v42 - v9);
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD51448);
  MEMORY[0x1EEE9AC00](v45, v10);
  v47 = &v42 - v11;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD51450);
  MEMORY[0x1EEE9AC00](v46, v12);
  v14 = &v42 - v13;
  v15 = sub_1BE04EB24();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15, v17);
  v19 = &v42 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD51458);
  MEMORY[0x1EEE9AC00](v50, v20);
  v48 = &v42 - v21;
  v22 = *(v1 + *(type metadata accessor for AccountBalanceCreditCell() + 24));
  if ([(NSString *)v22 isPaymentOverdue])
  {
    v22 = sub_1BE052404();
    v23 = PKLocalizedBankConnectString(v22);

    if (v23)
    {
LABEL_6:
      v44 = sub_1BE052434();
      v26 = v25;

      goto LABEL_7;
    }

    __break(1u);
  }

  v24 = [(NSString *)v22 paymentDueDate];
  if (v24)
  {
    v23 = v24;
    goto LABEL_6;
  }

  v44 = 0;
  v26 = 0;
LABEL_7:
  v57 = &type metadata for BankConnectFeatureFlags;
  v58 = sub_1BD1671B0();
  LOBYTE(v55) = 0;
  v27 = sub_1BE04C584();
  __swift_destroy_boxed_opaque_existential_0(&v55);
  if ((v27 & 1) == 0)
  {

    goto LABEL_12;
  }

  if (!v26)
  {
LABEL_12:
    sub_1BD71F55C(v5);
    v33 = v54;
    (*(v2 + 16))(v52, v5, v54);
    swift_storeEnumTagMultiPayload();
    sub_1BD7209B8();
    v34 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD513E0);
    v35 = sub_1BD71EBD0();
    v55 = v34;
    v56 = v35;
    swift_getOpaqueTypeConformance2();
    sub_1BE04F9A4();
    return (*(v2 + 8))(v5, v33);
  }

  sub_1BD70A2A0(v19);
  v28 = sub_1BE04EB14();
  (*(v16 + 8))(v19, v15);
  if (v28)
  {
    *v14 = sub_1BE04F7B4();
    *(v14 + 1) = 0;
    v14[16] = 1;
    v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD51480);
    sub_1BD720168(v44, v26, &v14[*(v29 + 44)]);

    v30 = &qword_1EBD51450;
    sub_1BD0DE19C(v14, v47, &qword_1EBD51450);
    swift_storeEnumTagMultiPayload();
    sub_1BD0DE4F4(&qword_1EBD51468, &qword_1EBD51450);
    sub_1BD0DE4F4(&qword_1EBD51470, &qword_1EBD51440);
    v31 = v48;
    sub_1BE04F9A4();
    v32 = v14;
  }

  else
  {
    v37 = sub_1BE04F504();
    v38 = v43;
    *v43 = v37;
    *(v38 + 8) = 0;
    *(v38 + 16) = 1;
    v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD51478);
    sub_1BD71F930(v44, v26, (v38 + *(v39 + 44)));

    v30 = &qword_1EBD51440;
    sub_1BD0DE19C(v38, v47, &qword_1EBD51440);
    swift_storeEnumTagMultiPayload();
    sub_1BD0DE4F4(&qword_1EBD51468, &qword_1EBD51450);
    sub_1BD0DE4F4(&qword_1EBD51470, &qword_1EBD51440);
    v31 = v48;
    sub_1BE04F9A4();
    v32 = v38;
  }

  sub_1BD0DE53C(v32, v30);
  sub_1BD0DE19C(v31, v52, &qword_1EBD51458);
  swift_storeEnumTagMultiPayload();
  sub_1BD7209B8();
  v40 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD513E0);
  v41 = sub_1BD71EBD0();
  v55 = v40;
  v56 = v41;
  swift_getOpaqueTypeConformance2();
  sub_1BE04F9A4();
  return sub_1BD0DE53C(v31, &qword_1EBD51458);
}

uint64_t sub_1BD71F55C@<X0>(uint64_t a1@<X8>)
{
  v42 = a1;
  v43 = sub_1BE04FF64();
  v41 = *(v43 - 8);
  MEMORY[0x1EEE9AC00](v43, v2);
  v4 = &v37 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for PKBankConnectAccountDetailsView();
  MEMORY[0x1EEE9AC00](v5, v6);
  v8 = (&v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD513E0);
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = &v37 - v11;
  v13 = *(v1 + *(type metadata accessor for AccountBalanceCreditCell() + 24));
  v14 = [v13 balanceTitle];
  v15 = sub_1BE052434();
  v39 = v16;
  v40 = v15;

  v17 = [v13 displayedBalance];
  v18 = sub_1BE052434();
  v38 = v19;

  v20 = [v13 balanceSubtitle];
  if (v20)
  {
    v21 = v20;
    v22 = sub_1BE052434();
    v24 = v23;
  }

  else
  {
    v25 = [v13 isPersonalizedInsightsEnabled];
    v22 = 0;
    v24 = v25 ^ 1;
  }

  v26 = sub_1BE051464();
  *v8 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD521C0);
  swift_storeEnumTagMultiPayload();
  v27 = v5[5];
  *(v8 + v27) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38880);
  swift_storeEnumTagMultiPayload();
  v28 = v5[6];
  *(v8 + v28) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD51410);
  swift_storeEnumTagMultiPayload();
  v29 = (v8 + v5[7]);
  v30 = v39;
  *v29 = v40;
  v29[1] = v30;
  v31 = v38;
  v29[2] = v18;
  v29[3] = v31;
  v29[4] = v22;
  v29[5] = v24;
  v29[6] = v26;
  sub_1BE051CE4();
  sub_1BE04EE54();
  sub_1BD7207BC(v8, v12, type metadata accessor for PKBankConnectAccountDetailsView);
  v32 = &v12[*(v9 + 36)];
  v33 = v49;
  *(v32 + 4) = v48;
  *(v32 + 5) = v33;
  *(v32 + 6) = v50;
  v34 = v45;
  *v32 = v44;
  *(v32 + 1) = v34;
  v35 = v47;
  *(v32 + 2) = v46;
  *(v32 + 3) = v35;
  sub_1BE04FF44();
  sub_1BD71EBD0();
  sub_1BE050D14();
  (*(v41 + 8))(v4, v43);
  return sub_1BD0DE53C(v12, &qword_1EBD513E0);
}

uint64_t sub_1BD71F930@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, char *a3@<X8>)
{
  v53 = a1;
  v54 = a2;
  v56 = a3;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD51498);
  v4 = v3 - 8;
  MEMORY[0x1EEE9AC00](v3, v5);
  v55 = &v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v47 - v9;
  v57 = sub_1BE051994();
  v49 = *(v57 - 8);
  v11 = v49;
  MEMORY[0x1EEE9AC00](v57, v12);
  v58 = &v47 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = &v47 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD51430);
  v51 = *(v18 - 8);
  v19 = v51;
  v52 = v18;
  MEMORY[0x1EEE9AC00](v18, v20);
  v22 = &v47 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23, v24);
  v26 = &v47 - v25;
  v50 = &v47 - v25;
  sub_1BD71F55C(&v47 - v25);
  v48 = v17;
  sub_1BE051984();
  sub_1BD71FCEC(v53, v54, v10);
  v27 = sub_1BE050204();
  sub_1BE04E1F4();
  v28 = &v10[*(v4 + 44)];
  *v28 = v27;
  *(v28 + 1) = v29;
  *(v28 + 2) = v30;
  *(v28 + 3) = v31;
  *(v28 + 4) = v32;
  v28[40] = 0;
  v33 = *(v19 + 16);
  v34 = v52;
  v33(v22, v26, v52);
  v35 = *(v11 + 16);
  v36 = v58;
  v35(v58, v17, v57);
  v37 = v10;
  v38 = v10;
  v39 = v55;
  sub_1BD0DE19C(v37, v55, &qword_1EBD51498);
  v40 = v56;
  v33(v56, v22, v34);
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD514A0);
  v42 = v36;
  v43 = v57;
  v35(&v40[*(v41 + 48)], v42, v57);
  sub_1BD0DE19C(v39, &v40[*(v41 + 64)], &qword_1EBD51498);
  sub_1BD0DE53C(v38, &qword_1EBD51498);
  v44 = *(v49 + 8);
  v44(v48, v43);
  v45 = *(v51 + 8);
  v45(v50, v34);
  sub_1BD0DE53C(v39, &qword_1EBD51498);
  v44(v58, v43);
  return (v45)(v22, v34);
}

uint64_t sub_1BD71FCEC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v46 = a1;
  v47 = a2;
  v50 = a3;
  v4 = sub_1BE04FF64();
  v48 = *(v4 - 8);
  v49 = v4;
  MEMORY[0x1EEE9AC00](v4, v5);
  v7 = &v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for PKBankConnectAccountDetailsView();
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = (&v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD513E0);
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = &v42 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD51430);
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16, v18);
  v20 = &v42 - v19;
  *(&v52 + 1) = &type metadata for BankConnectFeatureFlags;
  *&v53 = sub_1BD1671B0();
  LOBYTE(v51) = 0;
  v21 = sub_1BE04C584();
  __swift_destroy_boxed_opaque_existential_0(&v51);
  if (v21)
  {
    v22 = *(v3 + *(type metadata accessor for AccountBalanceCreditCell() + 24));
    sub_1BD7203BC();
    v44 = v24;
    v45 = v23;
    sub_1BD72048C();
    v43 = v25;
    v42 = v26;
    if ([v22 isPaymentOverdue])
    {
      v27 = sub_1BE0513B4();
    }

    else
    {
      v27 = sub_1BE051464();
    }

    v30 = v27;
    *v11 = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD521C0);
    swift_storeEnumTagMultiPayload();
    v31 = v8[5];
    *(v11 + v31) = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38880);
    swift_storeEnumTagMultiPayload();
    v32 = v8[6];
    *(v11 + v32) = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD51410);
    swift_storeEnumTagMultiPayload();
    v33 = (v11 + v8[7]);
    v34 = v44;
    *v33 = v45;
    v33[1] = v34;
    v35 = v47;
    v33[2] = v46;
    v33[3] = v35;
    v36 = v42;
    v33[4] = v43;
    v33[5] = v36;
    v33[6] = v30;
    sub_1BE048C84();
    sub_1BE051CE4();
    sub_1BE04EE54();
    sub_1BD7207BC(v11, v15, type metadata accessor for PKBankConnectAccountDetailsView);
    v37 = &v15[*(v12 + 36)];
    v38 = v56;
    *(v37 + 4) = v55;
    *(v37 + 5) = v38;
    *(v37 + 6) = v57;
    v39 = v52;
    *v37 = v51;
    *(v37 + 1) = v39;
    v40 = v54;
    *(v37 + 2) = v53;
    *(v37 + 3) = v40;
    sub_1BE04FF44();
    sub_1BD71EBD0();
    sub_1BE050D14();
    (*(v48 + 8))(v7, v49);
    sub_1BD0DE53C(v15, &qword_1EBD513E0);
    v29 = v50;
    (*(v17 + 32))(v50, v20, v16);
    v28 = 0;
  }

  else
  {
    v28 = 1;
    v29 = v50;
  }

  return (*(v17 + 56))(v29, v28, 1, v16);
}

uint64_t sub_1BD720168@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, char *a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD51488);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = &v27 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD51430);
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14, v16);
  v18 = &v27 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19, v20);
  v22 = &v27 - v21;
  sub_1BD71F55C(&v27 - v21);
  sub_1BD71FCEC(a1, a2, v13);
  v23 = *(v15 + 16);
  v23(v18, v22, v14);
  sub_1BD0DE19C(v13, v9, &qword_1EBD51488);
  v23(a3, v18, v14);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD51490);
  sub_1BD0DE19C(v9, &a3[*(v24 + 48)], &qword_1EBD51488);
  sub_1BD0DE53C(v13, &qword_1EBD51488);
  v25 = *(v15 + 8);
  v25(v22, v14);
  sub_1BD0DE53C(v9, &qword_1EBD51488);
  return (v25)(v18, v14);
}

void sub_1BD7203BC()
{
  if ([v0 isPaymentOverdue])
  {
    v1 = sub_1BE052404();
    v2 = PKLocalizedBankConnectString(v1);

    if (v2)
    {
LABEL_5:
      sub_1BE052434();

      return;
    }

    __break(1u);
  }

  v3 = sub_1BE052404();
  v2 = PKLocalizedBankConnectString(v3);

  if (v2)
  {
    goto LABEL_5;
  }

  __break(1u);
}

void sub_1BD72048C()
{
  if (sub_1BD720638())
  {
    if ([v0 isPaymentOverdue])
    {
      v1 = sub_1BE052404();
      v2 = PKLocalizedBankConnectString(v1);

      if (v2)
      {
        sub_1BE052434();

        return;
      }

      __break(1u);
LABEL_11:
      __break(1u);
      return;
    }

    v3 = [v0 minimumCreditPayment];
    if (v3)
    {
      v4 = v3;
      v5 = sub_1BE052434();
      v7 = v6;

      v8 = sub_1BE052404();
      v9 = PKLocalizedBankConnectString(v8);

      if (v9)
      {
        sub_1BE052434();

        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF80);
        v10 = swift_allocObject();
        *(v10 + 16) = xmmword_1BE0B69E0;
        *(v10 + 56) = MEMORY[0x1E69E6158];
        *(v10 + 64) = sub_1BD110550();
        *(v10 + 32) = v5;
        *(v10 + 40) = v7;
        sub_1BE052454();

        return;
      }

      goto LABEL_11;
    }
  }
}

uint64_t sub_1BD720638()
{
  v1 = [v0 bookedBalance];
  if (v1 && (v1, (v2 = [v0 availableBalance]) != 0))
  {

    v3 = 0;
  }

  else
  {
    v3 = 1;
  }

  v4 = [v0 minimumCreditPayment];
  if (v4 && (v4, (v5 = [v0 paymentDueDate]) != 0))
  {

    if ((v3 & [v0 isPaymentOverdue] & 1) == 0)
    {
      return 1;
    }
  }

  else if (!v3)
  {
    return 1;
  }

  return [v0 isPersonalizedInsightsEnabled];
}

uint64_t sub_1BD720714(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD42350);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  sub_1BD0DE19C(a1, &v6 - v4, &qword_1EBD42350);
  return sub_1BE04F144();
}

uint64_t sub_1BD7207BC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1BD720824(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD513E0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_1BD7208BC()
{
  sub_1BD25EFF4();
  if (v0 <= 0x3F)
  {
    sub_1BD720950();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_1BD720950()
{
  result = qword_1EBD51428;
  if (!qword_1EBD51428)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EBD51428);
  }

  return result;
}

unint64_t sub_1BD7209B8()
{
  result = qword_1EBD51460;
  if (!qword_1EBD51460)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD51458);
    sub_1BD0DE4F4(&qword_1EBD51468, &qword_1EBD51450);
    sub_1BD0DE4F4(&qword_1EBD51470, &qword_1EBD51440);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD51460);
  }

  return result;
}

unint64_t sub_1BD720A9C()
{
  result = qword_1EBD514A8;
  if (!qword_1EBD514A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD514B0);
    sub_1BD7209B8();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD513E0);
    sub_1BD71EBD0();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD514A8);
  }

  return result;
}

void sub_1BD720BB8()
{
  sub_1BD720CBC(319, &qword_1EBD514C8, type metadata accessor for FinanceKitTransactionHistoryView.ViewModel.Transaction, MEMORY[0x1E69E62F8]);
  if (v0 <= 0x3F)
  {
    sub_1BD720CBC(319, &qword_1EBD3F768, MEMORY[0x1E69675F8], MEMORY[0x1E69E6720]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1BD720CBC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1BD720D48()
{
  sub_1BD1C86BC();
  if (v0 <= 0x3F)
  {
    sub_1BE0493F4();
    if (v1 <= 0x3F)
    {
      sub_1BE04A974();
      if (v2 <= 0x3F)
      {
        sub_1BE04AFE4();
        if (v3 <= 0x3F)
        {
          sub_1BD720CBC(319, &qword_1EBD3F760, type metadata accessor for TransactionContext, MEMORY[0x1E69E6720]);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_1BD720EA4()
{
  type metadata accessor for FinanceKitTransactionHistoryView.ViewModel(319);
  if (v0 <= 0x3F)
  {
    sub_1BD49DA08();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1BD720F44@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = type metadata accessor for TransactionContext(0);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6 - 8, v8);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v30 - v13;
  v15 = type metadata accessor for FinanceKitTransactionHistoryView.ViewModel.Transaction(0);
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15 - 8, v17);
  v19 = (&v30 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v20 = *(type metadata accessor for FinanceKitTransactionHistoryView.ViewModel(0) + 20);
  v21 = sub_1BE048F54();
  v22 = *(*(v21 - 8) + 56);
  v33 = v20;
  v22(&a3[v20], 1, 1, v21);
  v23 = *(a1 + 16);
  if (v23)
  {
    v31 = a3;
    v32 = a2;
    v35 = MEMORY[0x1E69E7CC0];
    sub_1BD531EA0(0, v23, 0);
    v24 = v35;
    v25 = *(v7 + 80);
    v30 = a1;
    v26 = a1 + ((v25 + 32) & ~v25);
    v34 = *(v7 + 72);
    do
    {
      sub_1BD722400(v26, v14, type metadata accessor for TransactionContext);
      sub_1BD722400(v14, v10, type metadata accessor for TransactionContext);
      sub_1BD721A24(v10, v19);
      sub_1BD72259C(v14, type metadata accessor for TransactionContext);
      v35 = v24;
      v28 = *(v24 + 16);
      v27 = *(v24 + 24);
      if (v28 >= v27 >> 1)
      {
        sub_1BD531EA0(v27 > 1, v28 + 1, 1);
        v24 = v35;
      }

      *(v24 + 16) = v28 + 1;
      sub_1BD722468(v19, v24 + ((*(v16 + 80) + 32) & ~*(v16 + 80)) + *(v16 + 72) * v28, type metadata accessor for FinanceKitTransactionHistoryView.ViewModel.Transaction);
      v26 += v34;
      --v23;
    }

    while (v23);

    a3 = v31;
    a2 = v32;
  }

  else
  {

    v24 = MEMORY[0x1E69E7CC0];
  }

  *a3 = v24;
  return sub_1BD273C60(a2, &a3[v33]);
}

uint64_t sub_1BD721240@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v41 = a2;
  v5 = type metadata accessor for FinanceKitTransactionHistoryView(0);
  v39 = *(v5 - 8);
  v40 = *(v39 + 64);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v38 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for FinanceKitTransactionHistoryView.ViewModel.Transaction(0);
  v9 = v8 - 8;
  v37 = *(v8 - 8);
  v10 = *(v37 + 64);
  MEMORY[0x1EEE9AC00](v8, v11);
  v31 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1BE04B0F4();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12, v14);
  v16 = &v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *a1;
  v18 = a1[1];
  v19 = a1[3];
  v35 = a1[2];
  v36 = v17;
  v33 = v18;
  v34 = v19;
  sub_1BE048C84();
  sub_1BE048C84();
  sub_1BE04B054();
  v20 = sub_1BE0493D4();
  v32 = v21;
  (*(v13 + 8))(v16, v12);
  LOBYTE(v13) = *(a1 + *(v9 + 40));
  v22 = v31;
  sub_1BD722400(a1, v31, type metadata accessor for FinanceKitTransactionHistoryView.ViewModel.Transaction);
  v23 = v38;
  sub_1BD722400(v41, v38, type metadata accessor for FinanceKitTransactionHistoryView);
  v24 = (*(v37 + 80) + 16) & ~*(v37 + 80);
  v25 = (v10 + *(v39 + 80) + v24) & ~*(v39 + 80);
  v26 = swift_allocObject();
  sub_1BD722468(v22, v26 + v24, type metadata accessor for FinanceKitTransactionHistoryView.ViewModel.Transaction);
  result = sub_1BD722468(v23, v26 + v25, type metadata accessor for FinanceKitTransactionHistoryView);
  v28 = v33;
  *a3 = v36;
  *(a3 + 8) = v28;
  v29 = v34;
  *(a3 + 16) = v35;
  *(a3 + 24) = v29;
  v30 = v32;
  *(a3 + 32) = v20;
  *(a3 + 40) = v30;
  *(a3 + 48) = v13;
  *(a3 + 49) = *v42;
  *(a3 + 52) = *&v42[3];
  *(a3 + 56) = sub_1BD7224D0;
  *(a3 + 64) = v26;
  return result;
}

uint64_t sub_1BD721550(uint64_t a1, uint64_t a2)
{
  v41 = a2;
  v3 = type metadata accessor for FinanceKitTransactionDetailView();
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v40 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F788);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v9 = &v37 - v8;
  v10 = sub_1BE048F54();
  v42 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v11);
  v38 = &v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13, v14);
  v39 = &v37 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F790);
  MEMORY[0x1EEE9AC00](v16 - 8, v17);
  v19 = &v37 - v18;
  v20 = type metadata accessor for TransactionContext(0);
  v21 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20, v22);
  v24 = &v37 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25, v26);
  v28 = &v37 - v27;
  v29 = type metadata accessor for FinanceKitTransactionHistoryView.ViewModel.Transaction(0);
  sub_1BD0DE19C(a1 + *(v29 + 40), v19, &qword_1EBD3F790);
  if ((*(v21 + 48))(v19, 1, v20) == 1)
  {
    return sub_1BD0DE53C(v19, &qword_1EBD3F790);
  }

  sub_1BD722468(v19, v28, type metadata accessor for TransactionContext);
  v31 = type metadata accessor for FinanceKitTransactionHistoryView.ViewModel(0);
  v32 = v41;
  sub_1BD0DE19C(v41 + *(v31 + 20), v9, &qword_1EBD3F788);
  v33 = v42;
  if ((*(v42 + 48))(v9, 1, v10) == 1)
  {
    sub_1BD72259C(v28, type metadata accessor for TransactionContext);
    return sub_1BD0DE53C(v9, &qword_1EBD3F788);
  }

  else
  {
    v34 = v39;
    (*(v33 + 32))(v39, v9, v10);
    if (*(v32 + *(type metadata accessor for FinanceKitTransactionHistoryView(0) + 20)))
    {
      sub_1BD722400(v28, v24, type metadata accessor for TransactionContext);
      v35 = v38;
      (*(v33 + 16))(v38, v34, v10);
      sub_1BE048964();
      v36 = v40;
      sub_1BD80B518(v24, v35, v40);
      sub_1BD982324(v36);

      sub_1BD72259C(v36, type metadata accessor for FinanceKitTransactionDetailView);
      (*(v33 + 8))(v34, v10);
      return sub_1BD72259C(v28, type metadata accessor for TransactionContext);
    }

    else
    {
      type metadata accessor for NavigationController();
      sub_1BD722280(&qword_1EBD38DA8, type metadata accessor for NavigationController);
      result = sub_1BE04EEB4();
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_1BD721A24@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_1BE049904();
  v60 = *(v4 - 8);
  v61 = v4;
  MEMORY[0x1EEE9AC00](v4, v5);
  v59 = &v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v58 = &v47 - v9;
  v55 = sub_1BE04AB24();
  v53 = *(v55 - 8);
  MEMORY[0x1EEE9AC00](v55, v10);
  v12 = &v47 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = sub_1BE04AB54();
  v13 = *(v50 - 8);
  MEMORY[0x1EEE9AC00](v50, v14);
  v16 = &v47 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = sub_1BE04AF64();
  v17 = *(v49 - 8);
  MEMORY[0x1EEE9AC00](v49, v18);
  v20 = &v47 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F7C0);
  MEMORY[0x1EEE9AC00](v21 - 8, v22);
  v24 = &v47 - v23;
  v56 = sub_1BE049A94();
  v25 = *(v56 - 8);
  v27 = MEMORY[0x1EEE9AC00](v56, v26);
  v29 = &v47 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = *(v25 + 16);
  v57 = a1;
  v30(v29, a1, v27);
  v54 = type metadata accessor for TransactionContext(0);
  v31 = a1 + *(v54 + 28);
  v48 = v24;
  sub_1BD0DE19C(v31, v24, &qword_1EBD3F7C0);
  sub_1BE049974();
  sub_1BE04AB14();
  sub_1BE04AB04();
  v32 = sub_1BE04AF24();
  v51 = v33;
  v52 = v32;
  (*(v53 + 8))(v12, v55);
  (*(v13 + 8))(v16, v50);
  (*(v17 + 8))(v20, v49);
  v55 = sub_1BD736290(v24);
  v53 = v34;
  v35 = type metadata accessor for FinanceKitTransactionHistoryView.ViewModel.Transaction(0);
  sub_1BE0499A4();
  sub_1BD7271C4();
  v36 = v58;
  sub_1BE049A34();
  v38 = v59;
  v37 = v60;
  v39 = v61;
  (*(v60 + 104))(v59, *MEMORY[0x1E6967980], v61);
  sub_1BD722280(&qword_1EBD461D8, MEMORY[0x1E6967988]);
  sub_1BE0526E4();
  sub_1BE0526E4();
  v40 = *(v37 + 8);
  v40(v38, v39);
  v40(v36, v39);
  LOBYTE(v39) = v63 == v62;
  sub_1BE049A14();
  sub_1BD0DE53C(v48, &qword_1EBD3F7C0);
  (*(v25 + 8))(v29, v56);
  v41 = *(v35 + 40);
  v42 = v54;
  v43 = *(*(v54 - 8) + 56);
  v43(a2 + v41, 1, 1, v54);
  v44 = v51;
  *a2 = v52;
  a2[1] = v44;
  v45 = v53;
  a2[2] = v55;
  a2[3] = v45;
  *(a2 + *(v35 + 32)) = v39;
  sub_1BD0DE53C(a2 + v41, &qword_1EBD3F790);
  sub_1BD722468(v57, a2 + v41, type metadata accessor for TransactionContext);
  return (v43)(a2 + v41, 0, 1, v42);
}

uint64_t sub_1BD722008@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 36);
  v5 = sub_1BE04AFE4();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_1BD72207C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](a1 - 8, a2);
  v8[1] = *v2;
  sub_1BD722400(v2, v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for FinanceKitTransactionHistoryView);
  v5 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v6 = swift_allocObject();
  sub_1BD722468(v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v6 + v5, type metadata accessor for FinanceKitTransactionHistoryView);
  sub_1BE048C84();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD514F0);
  sub_1BE04AFE4();
  sub_1BD722348();
  sub_1BD7223AC();
  sub_1BD722280(&qword_1EBD51508, type metadata accessor for FinanceKitTransactionHistoryView.ViewModel.Transaction);
  return sub_1BE0519D4();
}

uint64_t sub_1BD722280(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1BD7222C8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for FinanceKitTransactionHistoryView(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_1BD721240(a1, v6, a2);
}

unint64_t sub_1BD722348()
{
  result = qword_1EBD514F8;
  if (!qword_1EBD514F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD514F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD514F8);
  }

  return result;
}

unint64_t sub_1BD7223AC()
{
  result = qword_1EBD51500;
  if (!qword_1EBD51500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD51500);
  }

  return result;
}

uint64_t sub_1BD722400(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1BD722468(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1BD7224D0()
{
  v1 = *(type metadata accessor for FinanceKitTransactionHistoryView.ViewModel.Transaction(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = *(type metadata accessor for FinanceKitTransactionHistoryView(0) - 8);
  v5 = v0 + ((v2 + v3 + *(v4 + 80)) & ~*(v4 + 80));

  return sub_1BD721550(v0 + v2, v5);
}

uint64_t sub_1BD72259C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1BD7225FC()
{
  result = qword_1EBD51510;
  if (!qword_1EBD51510)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD51518);
    sub_1BD7223AC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD51510);
  }

  return result;
}

uint64_t sub_1BD722680(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a2 + 16);
  sub_1BD0E5E8C(0, &qword_1EBD3E3F0);
  if ((sub_1BE053074() & 1) == 0 || (sub_1BE053074() & 1) == 0)
  {
    return 0;
  }

  return sub_1BD3FDC00(v2, v3);
}

uint64_t sub_1BD722838(void (*a1)(uint64_t, unint64_t, void, uint64_t), uint64_t a2)
{
  v55 = a1;
  v56 = a2;
  v3 = sub_1BE04BA14();
  v51 = *(v3 - 8);
  v52 = v3;
  MEMORY[0x1EEE9AC00](v3, v4);
  v50 = &v47 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v49 = &v47 - v8;
  v9 = sub_1BE04B9C4();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = &v47 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = &v47 - v16;
  v18 = sub_1BE04BAC4();
  v53 = v18;
  v19 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18, v20);
  v22 = &v47 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23, v24);
  v48 = v2;
  v54 = &v47 - v25;
  sub_1BE04BC34();
  sub_1BE04BC34();
  sub_1BE04BAA4();
  v26 = *(v19 + 8);
  v26(v22, v18);
  (*(v10 + 104))(v13, *MEMORY[0x1E69B7FB0], v9);
  v27 = sub_1BE04B9B4();
  v28 = *(v10 + 8);
  v28(v13, v9);
  v28(v17, v9);
  v29 = v53;
  if (v27 & 1) != 0 || (sub_1BE04BC34(), v30 = v49, sub_1BE04BA24(), v26(v22, v29), v31 = *MEMORY[0x1E69B7FE0], v32 = sub_1BE04B9D4(), v33 = v50, (*(*(v32 - 8) + 104))(v50, v31, v32), v35 = v51, v34 = v52, (*(v51 + 104))(v33, *MEMORY[0x1E69B8020], v52), LOBYTE(v31) = MEMORY[0x1BFB38A90](v30, v33), v36 = *(v35 + 8), v36(v33, v34), v36(v30, v34), (v31))
  {
    v55(0xD000000000000013, 0x80000001BE137390, 0, 0);
    v37 = v54;
  }

  else
  {
    v37 = v54;
    if (sub_1BE04BA54())
    {
      v39 = sub_1BE04BAB4();
      v40 = v48;
      if ((v39 & 1) != 0 && [*(v48 + OBJC_IVAR____TtC9PassKitUI42ProvisioningPerformVerificationFlowSection_methodGroup) isSMSOTP])
      {
        v55(0x5320656764697262, 0xEE0050544F20534DLL, 0, 0);
      }

      else
      {
        sub_1BD722DA4();
        v46 = v56;
        sub_1BE048964();
        sub_1BD7263DC(v40, v55, v46);
      }
    }

    else
    {
      v41 = *(v48 + OBJC_IVAR____TtC9PassKitUI42ProvisioningPerformVerificationFlowSection_verificationController);
      v42 = *(v48 + OBJC_IVAR____TtC9PassKitUI42ProvisioningPerformVerificationFlowSection_methodGroup);
      v43 = swift_allocObject();
      v44 = v56;
      *(v43 + 16) = v55;
      *(v43 + 24) = v44;
      aBlock[4] = sub_1BD726394;
      aBlock[5] = v43;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1BD3F08C0;
      aBlock[3] = &block_descriptor_168;
      v45 = _Block_copy(aBlock);
      sub_1BE048964();

      [v41 canPerformVerificationInlineForMethodGroup:v42 completion:v45];
      _Block_release(v45);
    }
  }

  return (v26)(v37, v29);
}

void sub_1BD722DA4()
{
  v1 = sub_1BE04D214();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1, v3);
  v5 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1BE04B944();
  v7 = *(v6 - 8);
  v9 = MEMORY[0x1EEE9AC00](v6, v8);
  v11 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(v0 + OBJC_IVAR____TtC9PassKitUI42ProvisioningPerformVerificationFlowSection_methodGroup);
  if (![v12 isSMSOTP])
  {
    return;
  }

  v13 = [v12 onlyMethod];
  if (!v13)
  {
    return;
  }

  v32 = v13;
  objc_opt_self();
  v14 = swift_dynamicCastObjCClass();
  if (!v14)
  {
    goto LABEL_7;
  }

  v15 = v14;
  if ([v14 channel] != 1)
  {
    goto LABEL_7;
  }

  v32 = v32;
  if ([v15 requiresUserInteraction])
  {

LABEL_7:
    v16 = v32;

    return;
  }

  v17 = PKDevicePhoneNumber();
  if (v17)
  {

    v18 = v0;
    v19 = sub_1BE04BC84();
    v20 = [v19 paymentPass];

    if (v20)
    {
      v21 = [v15 legacyChannelRepresentation];
      sub_1BE04BB94();
      v22 = sub_1BE04B934();
      (*(v7 + 8))(v11, v6);
      if ([v22 respondsToSelector_])
      {
        v23 = v20;
        [v22 startBackgroundVerificationObserverForPass:v23 verificationMethod:v21];
      }

      swift_unknownObjectRelease();
      v24 = [objc_allocWithZone(MEMORY[0x1E69B8EF0]) init];
      [v24 setPass_];
      [v24 setMethod_];

      [v24 setMethodGroup_];
      v25 = *(v18 + OBJC_IVAR____TtC9PassKitUI42ProvisioningPerformVerificationFlowSection_verificationController);
      aBlock[4] = sub_1BD723BF4;
      aBlock[5] = 0;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1BD28F728;
      aBlock[3] = &block_descriptor_25_1;
      v26 = _Block_copy(aBlock);
      v27 = v24;
      [v25 performVerificationUpdateRequest:v27 completion:v26];
      _Block_release(v26);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {

    sub_1BE04D0C4();
    v28 = sub_1BE04D204();
    v29 = sub_1BE052C14();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      *v30 = 0;
      _os_log_impl(&dword_1BD026000, v28, v29, "Skipping silent verification because no device phone number", v30, 2u);
      MEMORY[0x1BFB45F20](v30, -1, -1);
    }

    else
    {
    }

    (*(v2 + 8))(v5, v1);
  }
}

void sub_1BD723250(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1BE04D214();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v9 = &v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v45 = v7;
    type metadata accessor for ProvisioningPerformVerificationFlowSection.PerformVerificationMethodSetFlowItem();
    v10 = swift_dynamicCastClass();
    if (v10)
    {
      v44 = v5;
      v11 = *(v1 + OBJC_IVAR____TtC9PassKitUI42ProvisioningPerformVerificationFlowSection_methodsToPerformTogether);
      v12 = *(v10 + OBJC_IVAR____TtCC9PassKitUI42ProvisioningPerformVerificationFlowSectionP33_1C14A3D2168F27576646641497AEDFBF36PerformVerificationMethodSetFlowItem_performSet + 8);
      v13 = *(v10 + OBJC_IVAR____TtCC9PassKitUI42ProvisioningPerformVerificationFlowSectionP33_1C14A3D2168F27576646641497AEDFBF36PerformVerificationMethodSetFlowItem_performSet + 16);
      v14 = *(v10 + OBJC_IVAR____TtCC9PassKitUI42ProvisioningPerformVerificationFlowSectionP33_1C14A3D2168F27576646641497AEDFBF36PerformVerificationMethodSetFlowItem_performSet);
      v15 = v12;
      sub_1BE048C84();
      swift_unknownObjectRetain();
      v16 = sub_1BD224188(v14, v15, v13, v11);
      LOBYTE(v12) = v17;

      if (v12)
      {
LABEL_4:
        swift_unknownObjectRelease();
        return;
      }

      if (sub_1BD723628())
      {
        v30 = v16 + 1;
        if (__OFADD__(v16, 1))
        {
          __break(1u);
        }

        else
        {
          if (v30 >= *(v11 + 16))
          {
            goto LABEL_4;
          }

          if ((v30 & 0x8000000000000000) == 0)
          {
            v31 = v11 + 24 * v30;
            v32 = *(v31 + 32);
            v33 = *(v31 + 40);
            v34 = v31 + 32;
            v35 = *(v34 + 16);
            v36 = v32;
            v37 = v33;
            sub_1BE048C84();
            v23 = sub_1BD725364(v37, v35);
            v25 = v38;

            if (v30 < *(v11 + 16))
            {
              v39 = *v34;
              v40 = *(v34 + 8);
              v20 = *(v34 + 16);
              swift_unknownObjectRetain();
              v21 = v39;
              v22 = v40;
              sub_1BE048C84();
              swift_unknownObjectRelease();
              if (!v23)
              {
                goto LABEL_14;
              }

              goto LABEL_7;
            }

            goto LABEL_22;
          }
        }

        __break(1u);
LABEL_22:
        __break(1u);
        return;
      }

      sub_1BE04D0C4();
      v41 = sub_1BE04D204();
      v42 = sub_1BE052C54();
      if (os_log_type_enabled(v41, v42))
      {
        v43 = swift_slowAlloc();
        *v43 = 0;
        _os_log_impl(&dword_1BD026000, v41, v42, "Skipping next verification method because previous not complete", v43, 2u);
        MEMORY[0x1BFB45F20](v43, -1, -1);
        swift_unknownObjectRelease();
      }

      else
      {

        swift_unknownObjectRelease();
      }

      (*(v44 + 8))(v9, v45);
    }
  }

  else
  {
    v18 = *(v1 + OBJC_IVAR____TtC9PassKitUI42ProvisioningPerformVerificationFlowSection_methodsToPerformTogether);
    if (*(v18 + 16))
    {
      v19 = *(v18 + 40);
      v20 = *(v18 + 48);
      v21 = *(v18 + 32);
      v22 = v19;
      sub_1BE048C84();
      v23 = sub_1BD725364(v22, v20);
      v25 = v24;
      swift_unknownObjectRetain();
      if (!v23)
      {
LABEL_14:
        sub_1BD726008(v21, v22);
        return;
      }

LABEL_7:
      v26 = *(v2 + OBJC_IVAR____TtC9PassKitUI42ProvisioningPerformVerificationFlowSection_context);
      v27 = *(v2 + OBJC_IVAR____TtC9PassKitUI42ProvisioningPerformVerificationFlowSection_verificationController);
      v28 = objc_allocWithZone(type metadata accessor for ProvisioningPerformVerificationFlowSection.PerformVerificationMethodSetFlowItem());
      sub_1BE048964();
      v29 = v27;
      sub_1BD726050(v26, v29, v21, v22, v20, v23, v25);

      swift_unknownObjectRelease_n();
    }
  }
}

BOOL sub_1BD723628()
{
  v1 = [*(v0 + OBJC_IVAR____TtCC9PassKitUI42ProvisioningPerformVerificationFlowSectionP33_1C14A3D2168F27576646641497AEDFBF36PerformVerificationMethodSetFlowItem_verificationController) verificationRecord];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = *(v0 + OBJC_IVAR____TtCC9PassKitUI42ProvisioningPerformVerificationFlowSectionP33_1C14A3D2168F27576646641497AEDFBF36PerformVerificationMethodSetFlowItem_performSet + 16);
  if (v3 >> 62)
  {
LABEL_18:
    v4 = sub_1BE053704();
  }

  else
  {
    v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v5 = 0;
  do
  {
    v6 = v4 != v5;
    if (v4 == v5)
    {
      break;
    }

    if ((v3 & 0xC000000000000001) != 0)
    {
      v7 = MEMORY[0x1BFB40900](v5, v3);
    }

    else
    {
      if (v5 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_17;
      }

      v7 = *(v3 + 8 * v5 + 32);
    }

    v8 = v7;
    if (__OFADD__(v5, 1))
    {
      __break(1u);
LABEL_17:
      __break(1u);
      goto LABEL_18;
    }

    v9 = [v2 hasCompletedMethod_];

    ++v5;
  }

  while ((v9 & 1) != 0);

  return v6;
}

void sub_1BD72374C(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v49 = a2;
  v7 = sub_1BE04BD74();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = &v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = &v44 - v14;
  v18 = MEMORY[0x1EEE9AC00](v16, v17);
  v20 = &v44 - v19;
  if ([a1 hasLocalizedTitleAndMessage])
  {
    (*(v8 + 104))(v11, *MEMORY[0x1E69B80D0], v7);
  }

  else
  {
    v45 = a3;
    v46 = v4;
    v48 = a1;
    v21 = *(v8 + 104);
    LODWORD(v47) = *MEMORY[0x1E69B80D8];
    v21(v20);
    v22 = PKPassKitBundle();
    if (!v22)
    {
LABEL_11:
      __break(1u);
      goto LABEL_12;
    }

    v23 = v22;
    sub_1BE04B6F4();

    v44 = *(v8 + 8);
    v44(v20, v7);
    v24 = sub_1BE052404();

    v25 = v48;
    [v48 setLocalizedTitle_];

    v26 = v47;
    v47 = v21;
    (v21)(v15, v26, v7);
    v27 = PKPassKitBundle();
    if (!v27)
    {
LABEL_12:
      __break(1u);
      return;
    }

    v28 = v27;
    sub_1BE04B6F4();

    v44(v15, v7);
    v29 = sub_1BE052404();

    [v25 setLocalizedMessage_];

    a3 = v45;
    v4 = v46;
    a1 = v25;
    (v47)(v11, *MEMORY[0x1E69B80D0], v7);
  }

  v30 = PKPassKitBundle();
  if (!v30)
  {
    __break(1u);
    goto LABEL_11;
  }

  v31 = v30;
  v32 = sub_1BE04B6F4();
  v34 = v33;

  (*(v8 + 8))(v11, v7);
  sub_1BD0E5E8C(0, &qword_1EBD3D280);
  v35 = swift_allocObject();
  v36 = v49;
  *(v35 + 16) = v49;
  *(v35 + 24) = a3;
  v37 = a3;
  v38 = swift_allocObject();
  *(v38 + 16) = v36;
  *(v38 + 24) = v37;
  v39 = swift_allocObject();
  *(v39 + 16) = v36;
  *(v39 + 24) = v37;
  swift_retain_n();
  v40 = static UIAlertController.alertForError(error:acknowledgeButtonText:exitButtonText:onAcknowledge:onExit:onTryAgain:)(a1, 0, 0, v32, v34, sub_1BD267328, v35, sub_1BD267328, v38, sub_1BD267328, v39);

  PKApplyDefaultIconToAlertController(v40);
  v41 = v4 + OBJC_IVAR____TtC9PassKitUI42ProvisioningPerformVerificationFlowSection_delegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v42 = *(v41 + 8);
    ObjectType = swift_getObjectType();
    (*(v42 + 24))(v40, ObjectType, v42);
    swift_unknownObjectRelease();
  }
}

void sub_1BD723BF4(uint64_t a1, void *a2)
{
  v4 = sub_1BE04D214();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 != 1)
  {
    sub_1BE04D0C4();
    v9 = a2;
    v10 = sub_1BE04D204();
    v11 = sub_1BE052C34();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      *v12 = 138412290;
      if (a2)
      {
        v14 = a2;
        v15 = _swift_stdlib_bridgeErrorToNSError();
        v16 = v15;
      }

      else
      {
        v15 = 0;
        v16 = 0;
      }

      *(v12 + 4) = v15;
      *v13 = v16;
      _os_log_impl(&dword_1BD026000, v10, v11, "Failed to request background OTP code with error: %@", v12, 0xCu);
      sub_1BD1E236C(v13);
      MEMORY[0x1BFB45F20](v13, -1, -1);
      MEMORY[0x1BFB45F20](v12, -1, -1);
    }

    (*(v5 + 8))(v8, v4);
  }
}

uint64_t sub_1BD723DB0()
{
  v1 = *(v0 + OBJC_IVAR____TtC9PassKitUI42ProvisioningPerformVerificationFlowSection_identifier);
  sub_1BE048C84();
  return v1;
}

void sub_1BD723DFC(void (*a1)(uint64_t), uint64_t a2)
{
  v5 = sub_1BE04D214();
  v24 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v6);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = [objc_allocWithZone(MEMORY[0x1E69B8EF0]) init];
  v10 = *(v2 + OBJC_IVAR____TtCC9PassKitUI42ProvisioningPerformVerificationFlowSectionP33_1C14A3D2168F27576646641497AEDFBF36PerformVerificationMethodSetFlowItem_verificationController);
  v11 = [v10 pass];
  [v9 setPass_];

  v12 = (v2 + OBJC_IVAR____TtCC9PassKitUI42ProvisioningPerformVerificationFlowSectionP33_1C14A3D2168F27576646641497AEDFBF36PerformVerificationMethodSetFlowItem_performSet);
  v13 = *(v2 + OBJC_IVAR____TtCC9PassKitUI42ProvisioningPerformVerificationFlowSectionP33_1C14A3D2168F27576646641497AEDFBF36PerformVerificationMethodSetFlowItem_performSet + 8);
  [v9 setMethod_];
  [v9 setMethodGroup_];
  v14 = [v10 verificationRecord];
  v15 = v14;
  if (!v14)
  {
    goto LABEL_5;
  }

  v16 = v14;
  if (![v16 isMethodInProgress_] || (objc_msgSend(v16, sel_isMethodInProgressMethodExpired) & 1) != 0)
  {

LABEL_5:
    v17 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v18 = swift_allocObject();
    v18[2] = v17;
    v18[3] = a1;
    v18[4] = a2;
    aBlock[4] = sub_1BD72718C;
    aBlock[5] = v18;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1BD28F728;
    aBlock[3] = &block_descriptor_34_1;
    v19 = _Block_copy(aBlock);
    v16 = v9;
    sub_1BE048964();

    [v10 performVerificationUpdateRequest:v16 completion:v19];
    _Block_release(v19);
    v9 = v15;
    goto LABEL_6;
  }

  sub_1BE04D0C4();
  v20 = sub_1BE04D204();
  v21 = sub_1BE052C54();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    *v22 = 0;
    _os_log_impl(&dword_1BD026000, v20, v21, "Not starting verification method because it has already started", v22, 2u);
    MEMORY[0x1BFB45F20](v22, -1, -1);
  }

  (*(v24 + 8))(v8, v5);
  a1(1);
LABEL_6:
}

uint64_t sub_1BD724140(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v24 = a4;
  v8 = sub_1BE051F54();
  v26 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_1BE051FA4();
  v12 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25, v13);
  v15 = &v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BD0E5E8C(0, &qword_1EBD35E90);
  v16 = sub_1BE052D54();
  v17 = swift_allocObject();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakInit();

  v19 = swift_allocObject();
  v19[2] = v17;
  v19[3] = a1;
  v20 = v24;
  v19[4] = a2;
  v19[5] = v20;
  v19[6] = a5;
  aBlock[4] = sub_1BD727198;
  aBlock[5] = v19;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BD126964;
  aBlock[3] = &block_descriptor_41_0;
  v21 = _Block_copy(aBlock);
  v22 = a2;
  sub_1BE048964();

  sub_1BE051F74();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1BD14EC84();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD387F0);
  sub_1BD0DE4F4(&qword_1EBD35F20, &unk_1EBD387F0);
  sub_1BE053664();
  MEMORY[0x1BFB3FDF0](0, v15, v11, v21);
  _Block_release(v21);

  (*(v26 + 8))(v11, v8);
  return (*(v12 + 8))(v15, v25);
}

void sub_1BD724474(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t), uint64_t a5)
{
  v9 = sub_1BE04D214();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = &v33 - v16;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v19 = Strong;
    if (a2 == 1)
    {
      v20 = [*(Strong + OBJC_IVAR____TtCC9PassKitUI42ProvisioningPerformVerificationFlowSectionP33_1C14A3D2168F27576646641497AEDFBF36PerformVerificationMethodSetFlowItem_verificationController) verificationRecord];
      if (v20)
      {
        v21 = v20;
        v22 = [v20 verificationStatus];
        if (v22 == 3 || v22 == 4000)
        {
          v23 = 1;
        }

        else
        {
          sub_1BE04D0C4();
          v30 = sub_1BE04D204();
          v31 = sub_1BE052C54();
          if (os_log_type_enabled(v30, v31))
          {
            v32 = swift_slowAlloc();
            *v32 = 0;
            _os_log_impl(&dword_1BD026000, v30, v31, "Record status type is unexpected", v32, 2u);
            MEMORY[0x1BFB45F20](v32, -1, -1);
          }

          (*(v10 + 8))(v13, v9);
          v23 = 0;
        }

        a4(v23);
      }

      else
      {
        sub_1BE04D0C4();
        v25 = sub_1BE04D204();
        v26 = sub_1BE052C54();
        if (os_log_type_enabled(v25, v26))
        {
          v27 = swift_slowAlloc();
          *v27 = 0;
          _os_log_impl(&dword_1BD026000, v25, v26, "Failed to find record for performed method group", v27, 2u);
          MEMORY[0x1BFB45F20](v27, -1, -1);
        }

        (*(v10 + 8))(v17, v9);
        a4(0);
      }
    }

    else
    {
      if (a3)
      {
        v24 = sub_1BE04A844();
      }

      else
      {
        v24 = 0;
      }

      v28 = [objc_opt_self() errorWithUnderlyingError:v24 defaultSeverity:6];

      v29 = swift_allocObject();
      *(v29 + 16) = a4;
      *(v29 + 24) = a5;
      sub_1BE048964();
      sub_1BD7247CC(v28, sub_1BD1B5F6C, v29);
    }
  }
}

void sub_1BD7247CC(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v49 = a2;
  v7 = sub_1BE04BD74();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = &v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = &v44 - v14;
  v18 = MEMORY[0x1EEE9AC00](v16, v17);
  v20 = &v44 - v19;
  if ([a1 hasLocalizedTitleAndMessage])
  {
    (*(v8 + 104))(v11, *MEMORY[0x1E69B80D0], v7);
  }

  else
  {
    v45 = a3;
    v46 = v4;
    v48 = a1;
    v21 = *(v8 + 104);
    LODWORD(v47) = *MEMORY[0x1E69B80D8];
    v21(v20);
    v22 = PKPassKitBundle();
    if (!v22)
    {
LABEL_11:
      __break(1u);
      goto LABEL_12;
    }

    v23 = v22;
    sub_1BE04B6F4();

    v44 = *(v8 + 8);
    v44(v20, v7);
    v24 = sub_1BE052404();

    v25 = v48;
    [v48 setLocalizedTitle_];

    v26 = v47;
    v47 = v21;
    (v21)(v15, v26, v7);
    v27 = PKPassKitBundle();
    if (!v27)
    {
LABEL_12:
      __break(1u);
      return;
    }

    v28 = v27;
    sub_1BE04B6F4();

    v44(v15, v7);
    v29 = sub_1BE052404();

    [v25 setLocalizedMessage_];

    a3 = v45;
    v4 = v46;
    a1 = v25;
    (v47)(v11, *MEMORY[0x1E69B80D0], v7);
  }

  v30 = PKPassKitBundle();
  if (!v30)
  {
    __break(1u);
    goto LABEL_11;
  }

  v31 = v30;
  v32 = sub_1BE04B6F4();
  v34 = v33;

  (*(v8 + 8))(v11, v7);
  sub_1BD0E5E8C(0, &qword_1EBD3D280);
  v35 = swift_allocObject();
  v36 = v49;
  *(v35 + 16) = v49;
  *(v35 + 24) = a3;
  v37 = a3;
  v38 = swift_allocObject();
  *(v38 + 16) = v36;
  *(v38 + 24) = v37;
  v39 = swift_allocObject();
  *(v39 + 16) = v36;
  *(v39 + 24) = v37;
  swift_retain_n();
  v40 = static UIAlertController.alertForError(error:acknowledgeButtonText:exitButtonText:onAcknowledge:onExit:onTryAgain:)(a1, 0, 0, v32, v34, sub_1BD267328, v35, sub_1BD214190, v38, sub_1BD267328, v39);

  PKApplyDefaultIconToAlertController(v40);
  v41 = v4 + OBJC_IVAR____TtCC9PassKitUI42ProvisioningPerformVerificationFlowSectionP33_1C14A3D2168F27576646641497AEDFBF36PerformVerificationMethodSetFlowItem_delegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v42 = *(v41 + 8);
    ObjectType = swift_getObjectType();
    (*(v42 + 24))(v40, ObjectType, v42);
    swift_unknownObjectRelease();
  }
}

uint64_t sub_1BD724D80(uint64_t a1)
{
  if (a1)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

uint64_t sub_1BD724DC4()
{
  v1 = *(v0 + OBJC_IVAR____TtCC9PassKitUI42ProvisioningPerformVerificationFlowSectionP33_1C14A3D2168F27576646641497AEDFBF36PerformVerificationMethodSetFlowItem_identifier);
  sub_1BE048C84();
  return v1;
}

uint64_t sub_1BD724E0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  *(v5 + *a5 + 8) = a2;
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

id sub_1BD724E68(uint64_t a1, void *a2, void *a3, void *a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  *&v4[OBJC_IVAR____TtC9PassKitUI42ProvisioningPerformVerificationFlowSection_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v4[OBJC_IVAR____TtC9PassKitUI42ProvisioningPerformVerificationFlowSection_context] = a1;
  *&v4[OBJC_IVAR____TtC9PassKitUI42ProvisioningPerformVerificationFlowSection_provisionedPasses] = a2;
  *&v4[OBJC_IVAR____TtC9PassKitUI42ProvisioningPerformVerificationFlowSection_methodGroup] = a3;
  *&v4[OBJC_IVAR____TtC9PassKitUI42ProvisioningPerformVerificationFlowSection_verificationController] = a4;
  swift_unknownObjectUnownedInit();
  v46 = 0;
  v47 = 0xE000000000000000;
  sub_1BE048964();
  v11 = a2;
  v12 = a3;
  v13 = a4;
  v14 = &v46;
  sub_1BE053834();

  v46 = 0xD00000000000001FLL;
  v47 = 0x80000001BE137250;
  v15 = [v12 identifier];
  v16 = sub_1BE052434();
  v18 = v17;

  MEMORY[0x1BFB3F610](v16, v18);

  MEMORY[0x1BFB3F610](62, 0xE100000000000000);
  v19 = v47;
  v20 = &v5[OBJC_IVAR____TtC9PassKitUI42ProvisioningPerformVerificationFlowSection_identifier];
  *v20 = v46;
  v20[1] = v19;
  v21 = [v12 methods];
  sub_1BD0E5E8C(0, &qword_1EBD45968);
  v22 = sub_1BE052744();

  if (v22 >> 62)
  {
    v23 = sub_1BE053704();
    v43 = ObjectType;
    if (v23)
    {
      goto LABEL_3;
    }

LABEL_28:

    v21 = 0;
    ObjectType = MEMORY[0x1E69E7CC0];
    goto LABEL_29;
  }

  v23 = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v43 = ObjectType;
  if (!v23)
  {
    goto LABEL_28;
  }

LABEL_3:
  if (v23 >= 1)
  {
    v42 = v5;
    v21 = 0;
    v14 = 0;
    v24 = 0;
    ObjectType = MEMORY[0x1E69E7CC0];
    v25 = &selRef_thumbnailWidth;
    v44 = v12;
    while (1)
    {
      if ((v22 & 0xC000000000000001) != 0)
      {
        v27 = MEMORY[0x1BFB40900](v24, v22);
        if (!v21)
        {
          goto LABEL_5;
        }
      }

      else
      {
        v27 = *(v22 + 8 * v24 + 32);
        if (!v21)
        {
LABEL_5:
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD39F80);
          v14 = swift_allocObject();
          *(v14 + 1) = xmmword_1BE0B7020;
          v14[4] = v27;
          v26 = v27;
          v21 = v27;
          goto LABEL_6;
        }
      }

      v28 = [v21 v25[254]];
      if (v28 < 6)
      {
        goto LABEL_12;
      }

      if (v28 != 6)
      {
        if (v28 == 7)
        {
LABEL_12:
          [v27 v25[254]];
        }

LABEL_13:
        v29 = v12;
        v30 = v21;
        sub_1BE048C84();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          ObjectType = sub_1BD1D74C0(0, *(ObjectType + 16) + 1, 1, ObjectType);
        }

        v32 = *(ObjectType + 16);
        v31 = *(ObjectType + 24);
        if (v32 >= v31 >> 1)
        {
          ObjectType = sub_1BD1D74C0((v31 > 1), v32 + 1, 1, ObjectType);
        }

        *(ObjectType + 16) = v32 + 1;
        v33 = (ObjectType + 24 * v32);
        v12 = v44;
        v33[4] = v44;
        v33[5] = v21;
        v33[6] = v14;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD39F80);
        v34 = swift_allocObject();
        *(v34 + 16) = xmmword_1BE0B7020;
        *(v34 + 32) = v27;
        v35 = v27;

        v21 = v35;
        v14 = v34;
        v25 = &selRef_thumbnailWidth;
        goto LABEL_6;
      }

      if ([v27 v25[254]] != 7)
      {
        goto LABEL_13;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD39F80);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1BE0B7020;
      *(inited + 32) = v27;
      v46 = v14;
      sub_1BDA7A27C(inited);
      v14 = v46;
LABEL_6:
      if (v23 == ++v24)
      {

        v16 = v12;
        sub_1BD0D4770(v21);
        v12 = v21;
        sub_1BE048C84();
        if (swift_isUniquelyReferenced_nonNull_native())
        {
          goto LABEL_24;
        }

        goto LABEL_31;
      }
    }
  }

  __break(1u);
LABEL_31:
  ObjectType = sub_1BD1D74C0(0, *(ObjectType + 16) + 1, 1, ObjectType);
LABEL_24:
  v5 = v42;
  v38 = *(ObjectType + 16);
  v37 = *(ObjectType + 24);
  if (v38 >= v37 >> 1)
  {
    ObjectType = sub_1BD1D74C0((v37 > 1), v38 + 1, 1, ObjectType);
  }

  *(ObjectType + 16) = v38 + 1;
  v39 = (ObjectType + 24 * v38);
  v39[4] = v16;
  v39[5] = v12;
  v39[6] = v14;
LABEL_29:
  *&v5[OBJC_IVAR____TtC9PassKitUI42ProvisioningPerformVerificationFlowSection_methodsToPerformTogether] = ObjectType;
  v45.receiver = v5;
  v45.super_class = v43;
  v40 = objc_msgSendSuper2(&v45, sel_init);
  sub_1BD0D468C(v21);
  return v40;
}

id sub_1BD725364(void *a1, objc_class *a2)
{
  v99 = a2;
  v4 = sub_1BE04AA64();
  v97 = *(v4 - 8);
  v98 = v4;
  MEMORY[0x1EEE9AC00](v4, v5);
  v7 = &v96 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1BE04B9C4();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = &v96 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13, v14);
  v16 = &v96 - v15;
  v17 = sub_1BE04BAC4();
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17, v19);
  v21 = &v96 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = a1;
  v23 = [v22 type];
  if (v23 > 3)
  {
    if (v23 > 5)
    {
      if (v23 == 6)
      {

        v61 = *(v2 + OBJC_IVAR____TtC9PassKitUI42ProvisioningPerformVerificationFlowSection_context);
        v62 = *(v2 + OBJC_IVAR____TtC9PassKitUI42ProvisioningPerformVerificationFlowSection_methodGroup);
        v63 = *(v2 + OBJC_IVAR____TtC9PassKitUI42ProvisioningPerformVerificationFlowSection_verificationController);
        v64 = type metadata accessor for ProvisioningVerificationCardReaderFlowItem();
        v65 = objc_allocWithZone(v64);
        swift_unknownObjectWeakInit();
        *&v65[OBJC_IVAR____TtC9PassKitUI42ProvisioningVerificationCardReaderFlowItem_delegate + 8] = 0;
        swift_unknownObjectWeakInit();
        v66 = &v65[OBJC_IVAR____TtC9PassKitUI42ProvisioningVerificationCardReaderFlowItem_identifier];
        *v66 = 0xD00000000000001ELL;
        v66[1] = 0x80000001BE137300;
        v65[OBJC_IVAR____TtC9PassKitUI42ProvisioningVerificationCardReaderFlowItem_presentationConfiguration] = 1;
        *&v65[OBJC_IVAR____TtC9PassKitUI42ProvisioningVerificationCardReaderFlowItem__hasSeenMethodsScreen] = &type metadata for ProvisioningVerificationHasSeenMethodsScreenKey;
        *&v65[OBJC_IVAR____TtC9PassKitUI42ProvisioningVerificationCardReaderFlowItem_context] = v61;
        *&v65[OBJC_IVAR____TtC9PassKitUI42ProvisioningVerificationCardReaderFlowItem_methodGroup] = v62;
        *&v65[OBJC_IVAR____TtC9PassKitUI42ProvisioningVerificationCardReaderFlowItem_methods] = v99;
        *&v65[OBJC_IVAR____TtC9PassKitUI42ProvisioningVerificationCardReaderFlowItem_verificationController] = v63;
        swift_unknownObjectWeakAssign();
        v105.receiver = v65;
        v105.super_class = v64;
        sub_1BE048C84();
        sub_1BE048964();
        v67 = v62;
        v68 = v63;
        v69 = objc_msgSendSuper2(&v105, sel_init);

        return v69;
      }

      if (v23 != 7)
      {
        goto LABEL_23;
      }

      goto LABEL_20;
    }

    if (v23 == 4)
    {
      objc_opt_self();
      v35 = swift_dynamicCastObjCClass();
      if (v35)
      {
        v36 = *(v2 + OBJC_IVAR____TtC9PassKitUI42ProvisioningPerformVerificationFlowSection_context);
        v37 = *(v2 + OBJC_IVAR____TtC9PassKitUI42ProvisioningPerformVerificationFlowSection_methodGroup);
        v38 = [v35 url];
        sub_1BE04A9F4();

        v39 = *(v2 + OBJC_IVAR____TtC9PassKitUI42ProvisioningPerformVerificationFlowSection_verificationController);
        v99 = type metadata accessor for ProvisioningVerificationAppClipFlowItem();
        v40 = objc_allocWithZone(v99);
        swift_unknownObjectWeakInit();
        *&v40[OBJC_IVAR____TtC9PassKitUI39ProvisioningVerificationAppClipFlowItem_delegate + 8] = 0;
        swift_unknownObjectWeakInit();
        v41 = &v40[OBJC_IVAR____TtC9PassKitUI39ProvisioningVerificationAppClipFlowItem_identifier];
        *v41 = 0xD00000000000001BLL;
        *(v41 + 1) = 0x80000001BE11DD40;
        *&v40[OBJC_IVAR____TtC9PassKitUI39ProvisioningVerificationAppClipFlowItem_context] = v36;
        *&v40[OBJC_IVAR____TtC9PassKitUI39ProvisioningVerificationAppClipFlowItem_methodGroup] = v37;
        v42 = v37;
        *&v40[OBJC_IVAR____TtC9PassKitUI39ProvisioningVerificationAppClipFlowItem_method] = v22;
        v43 = v97;
        v44 = v98;
        (*(v97 + 16))(&v40[OBJC_IVAR____TtC9PassKitUI39ProvisioningVerificationAppClipFlowItem_url], v7, v98);
        *&v40[OBJC_IVAR____TtC9PassKitUI39ProvisioningVerificationAppClipFlowItem_verificationController] = v39;
        swift_unknownObjectWeakAssign();
        sub_1BE052434();
        sub_1BE048964();
        v45 = v42;
        v46 = v39;
        v47 = sub_1BE04BB74();

        *&v40[OBJC_IVAR____TtC9PassKitUI39ProvisioningVerificationAppClipFlowItem_reporter] = v47;
        v103.receiver = v40;
        v103.super_class = v99;
        v48 = objc_msgSendSuper2(&v103, sel_init);

        (*(v43 + 8))(v7, v44);
        return v48;
      }
    }

    else
    {

      objc_opt_self();
      v70 = swift_dynamicCastObjCClass();
      if (v70)
      {
        v71 = v70;
        v72 = *(v2 + OBJC_IVAR____TtC9PassKitUI42ProvisioningPerformVerificationFlowSection_context);
        v73 = *(v2 + OBJC_IVAR____TtC9PassKitUI42ProvisioningPerformVerificationFlowSection_methodGroup);
        v74 = *(v2 + OBJC_IVAR____TtC9PassKitUI42ProvisioningPerformVerificationFlowSection_verificationController);
        v75 = type metadata accessor for ProvisioningVerificationUniversalURLFlowSection();
        v76 = objc_allocWithZone(v75);
        swift_unknownObjectWeakInit();
        *&v76[OBJC_IVAR____TtC9PassKitUI47ProvisioningVerificationUniversalURLFlowSection_delegate + 8] = 0;
        swift_unknownObjectWeakInit();
        v77 = &v76[OBJC_IVAR____TtC9PassKitUI47ProvisioningVerificationUniversalURLFlowSection_identifier];
        *v77 = 0xD000000000000023;
        v77[1] = 0x80000001BE137320;
        v76[OBJC_IVAR____TtC9PassKitUI47ProvisioningVerificationUniversalURLFlowSection_destination] = 4;
        *&v76[OBJC_IVAR____TtC9PassKitUI47ProvisioningVerificationUniversalURLFlowSection_context] = v72;
        *&v76[OBJC_IVAR____TtC9PassKitUI47ProvisioningVerificationUniversalURLFlowSection_methodGroup] = v73;
        *&v76[OBJC_IVAR____TtC9PassKitUI47ProvisioningVerificationUniversalURLFlowSection_method] = v71;
        *&v76[OBJC_IVAR____TtC9PassKitUI47ProvisioningVerificationUniversalURLFlowSection_verificationController] = v74;
        swift_unknownObjectWeakAssign();
        v104.receiver = v76;
        v104.super_class = v75;
        sub_1BE048964();
        v78 = v73;
        v79 = v74;
        return objc_msgSendSuper2(&v104, sel_init);
      }
    }

    return 0;
  }

  else
  {
    if (v23 <= 1)
    {
      if (v23)
      {
        if (v23 == 1)
        {

          v99 = *(v2 + OBJC_IVAR____TtC9PassKitUI42ProvisioningPerformVerificationFlowSection_context);
          v24 = v2;
          sub_1BE04BC34();
          sub_1BE04BAA4();
          (*(v18 + 8))(v21, v17);
          (*(v9 + 104))(v12, *MEMORY[0x1E69B7FB0], v8);
          v25 = sub_1BE04B9B4();
          v26 = *(v9 + 8);
          v26(v12, v8);
          v26(v16, v8);
          v27 = *(v24 + OBJC_IVAR____TtC9PassKitUI42ProvisioningPerformVerificationFlowSection_methodGroup);
          v28 = *(v24 + OBJC_IVAR____TtC9PassKitUI42ProvisioningPerformVerificationFlowSection_verificationController);
          v29 = type metadata accessor for ProvisioningVerificationCompletionFlowItem();
          v30 = objc_allocWithZone(v29);
          swift_unknownObjectWeakInit();
          *&v30[OBJC_IVAR____TtC9PassKitUI42ProvisioningVerificationCompletionFlowItem_delegate + 8] = 0;
          swift_unknownObjectWeakInit();
          v31 = &v30[OBJC_IVAR____TtC9PassKitUI42ProvisioningVerificationCompletionFlowItem_identifier];
          *v31 = 0xD00000000000001ELL;
          v31[1] = 0x80000001BE137370;
          *&v30[OBJC_IVAR____TtC9PassKitUI42ProvisioningVerificationCompletionFlowItem__hasSeenMethodsScreen] = &type metadata for ProvisioningVerificationHasSeenMethodsScreenKey;
          *&v30[OBJC_IVAR____TtC9PassKitUI42ProvisioningVerificationCompletionFlowItem_context] = v99;
          *&v30[OBJC_IVAR____TtC9PassKitUI42ProvisioningVerificationCompletionFlowItem_methodGroup] = v27;
          *&v30[OBJC_IVAR____TtC9PassKitUI42ProvisioningVerificationCompletionFlowItem_method] = v22;
          *&v30[OBJC_IVAR____TtC9PassKitUI42ProvisioningVerificationCompletionFlowItem_verificationController] = v28;
          v30[OBJC_IVAR____TtC9PassKitUI42ProvisioningVerificationCompletionFlowItem_allowVerificationMethodSelection] = v25 & 1;
          swift_unknownObjectWeakAssign();
          v100.receiver = v30;
          v100.super_class = v29;
          sub_1BE048964();
          v32 = v27;
          v33 = v28;
          return objc_msgSendSuper2(&v100, sel_init);
        }

LABEL_23:
        result = sub_1BE053994();
        __break(1u);
        return result;
      }

LABEL_20:

      v90 = *(v2 + OBJC_IVAR____TtC9PassKitUI42ProvisioningPerformVerificationFlowSection_context);
      v91 = *(v2 + OBJC_IVAR____TtC9PassKitUI42ProvisioningPerformVerificationFlowSection_verificationController);
      Strong = swift_unknownObjectUnownedLoadStrong();
      v93 = objc_allocWithZone(type metadata accessor for ProvisioningVerificationMethodsFlowItem());
      sub_1BE048964();
      v94 = v91;
      v95 = sub_1BD5537A8(v90, v94);

      return v95;
    }

    if (v23 == 2 && (objc_opt_self(), (v49 = swift_dynamicCastObjCClass()) != 0) && [v49 direction] == 2)
    {
      v99 = *(v2 + OBJC_IVAR____TtC9PassKitUI42ProvisioningPerformVerificationFlowSection_context);
      v50 = v2;
      sub_1BE04BC34();
      sub_1BE04BAA4();
      (*(v18 + 8))(v21, v17);
      (*(v9 + 104))(v12, *MEMORY[0x1E69B7FB0], v8);
      v51 = sub_1BE04B9B4();
      v52 = *(v9 + 8);
      v52(v12, v8);
      v52(v16, v8);
      v53 = *(v50 + OBJC_IVAR____TtC9PassKitUI42ProvisioningPerformVerificationFlowSection_methodGroup);
      v54 = *(v50 + OBJC_IVAR____TtC9PassKitUI42ProvisioningPerformVerificationFlowSection_verificationController);
      v55 = type metadata accessor for ProvisioningVerificationCompletionFlowItem();
      v56 = objc_allocWithZone(v55);
      swift_unknownObjectWeakInit();
      *&v56[OBJC_IVAR____TtC9PassKitUI42ProvisioningVerificationCompletionFlowItem_delegate + 8] = 0;
      swift_unknownObjectWeakInit();
      v57 = &v56[OBJC_IVAR____TtC9PassKitUI42ProvisioningVerificationCompletionFlowItem_identifier];
      *v57 = 0xD00000000000001ELL;
      v57[1] = 0x80000001BE137370;
      *&v56[OBJC_IVAR____TtC9PassKitUI42ProvisioningVerificationCompletionFlowItem__hasSeenMethodsScreen] = &type metadata for ProvisioningVerificationHasSeenMethodsScreenKey;
      *&v56[OBJC_IVAR____TtC9PassKitUI42ProvisioningVerificationCompletionFlowItem_context] = v99;
      *&v56[OBJC_IVAR____TtC9PassKitUI42ProvisioningVerificationCompletionFlowItem_methodGroup] = v53;
      *&v56[OBJC_IVAR____TtC9PassKitUI42ProvisioningVerificationCompletionFlowItem_method] = v22;
      *&v56[OBJC_IVAR____TtC9PassKitUI42ProvisioningVerificationCompletionFlowItem_verificationController] = v54;
      v56[OBJC_IVAR____TtC9PassKitUI42ProvisioningVerificationCompletionFlowItem_allowVerificationMethodSelection] = v51 & 1;
      swift_unknownObjectWeakAssign();
      v101.receiver = v56;
      v101.super_class = v55;
      sub_1BE048964();
      v58 = v53;
      v59 = v54;
      v60 = objc_msgSendSuper2(&v101, sel_init);

      return v60;
    }

    else
    {
      v80 = *(v2 + OBJC_IVAR____TtC9PassKitUI42ProvisioningPerformVerificationFlowSection_context);
      v81 = *(v2 + OBJC_IVAR____TtC9PassKitUI42ProvisioningPerformVerificationFlowSection_methodGroup);
      v82 = *(v2 + OBJC_IVAR____TtC9PassKitUI42ProvisioningPerformVerificationFlowSection_verificationController);
      v83 = type metadata accessor for ProvisioningExternalVerificationFlowItem();
      v84 = objc_allocWithZone(v83);
      swift_unknownObjectWeakInit();
      *&v84[OBJC_IVAR____TtC9PassKitUI40ProvisioningExternalVerificationFlowItem_delegate + 8] = 0;
      swift_unknownObjectWeakInit();
      v85 = &v84[OBJC_IVAR____TtC9PassKitUI40ProvisioningExternalVerificationFlowItem_identifier];
      *v85 = 0xD00000000000001CLL;
      *(v85 + 1) = 0x80000001BE137350;
      *&v84[OBJC_IVAR____TtC9PassKitUI40ProvisioningExternalVerificationFlowItem_context] = v80;
      *&v84[OBJC_IVAR____TtC9PassKitUI40ProvisioningExternalVerificationFlowItem_methodGroup] = v81;
      *&v84[OBJC_IVAR____TtC9PassKitUI40ProvisioningExternalVerificationFlowItem_method] = v22;
      *&v84[OBJC_IVAR____TtC9PassKitUI40ProvisioningExternalVerificationFlowItem_verificationController] = v82;
      swift_unknownObjectWeakAssign();
      sub_1BE052434();
      sub_1BE048964();
      v86 = v81;
      v87 = v82;
      v88 = sub_1BE04BB74();

      *&v84[OBJC_IVAR____TtC9PassKitUI40ProvisioningExternalVerificationFlowItem_reporter] = v88;
      v102.receiver = v84;
      v102.super_class = v83;
      v89 = objc_msgSendSuper2(&v102, sel_init);

      return v89;
    }
  }
}

void *sub_1BD726008(void *result, void *a2)
{
  if (result)
  {
  }

  return result;
}

char *sub_1BD726050(uint64_t a1, void *a2, void *a3, void *a4, unint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = v7;
  ObjectType = swift_getObjectType();
  *&v8[OBJC_IVAR____TtCC9PassKitUI42ProvisioningPerformVerificationFlowSectionP33_1C14A3D2168F27576646641497AEDFBF36PerformVerificationMethodSetFlowItem_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v8[OBJC_IVAR____TtCC9PassKitUI42ProvisioningPerformVerificationFlowSectionP33_1C14A3D2168F27576646641497AEDFBF36PerformVerificationMethodSetFlowItem_dismissalConfiguration] = 1;
  *&v8[OBJC_IVAR____TtCC9PassKitUI42ProvisioningPerformVerificationFlowSectionP33_1C14A3D2168F27576646641497AEDFBF36PerformVerificationMethodSetFlowItem_context] = a1;
  *&v8[OBJC_IVAR____TtCC9PassKitUI42ProvisioningPerformVerificationFlowSectionP33_1C14A3D2168F27576646641497AEDFBF36PerformVerificationMethodSetFlowItem_verificationController] = a2;
  v16 = &v8[OBJC_IVAR____TtCC9PassKitUI42ProvisioningPerformVerificationFlowSectionP33_1C14A3D2168F27576646641497AEDFBF36PerformVerificationMethodSetFlowItem_performSet];
  *v16 = a3;
  v16[1] = a4;
  v16[2] = a5;
  v17 = &v8[OBJC_IVAR____TtCC9PassKitUI42ProvisioningPerformVerificationFlowSectionP33_1C14A3D2168F27576646641497AEDFBF36PerformVerificationMethodSetFlowItem_wrapped];
  *v17 = a6;
  v17[1] = a7;
  if (!(a5 >> 62))
  {
    v18 = *((a5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v18)
    {
      goto LABEL_3;
    }

LABEL_13:
    sub_1BE048964();
    v34 = a2;
    v35 = a3;
    v36 = a4;
    sub_1BE048C84();
    swift_unknownObjectRetain();
LABEL_14:
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD45AA0);
    sub_1BD0DE4F4(&qword_1EBD55120, &unk_1EBD45AA0);
    v37 = sub_1BE0522E4();
    v39 = v38;

    sub_1BE053834();

    v43 = 0xD000000000000025;
    v44 = 0x80000001BE137270;
    MEMORY[0x1BFB3F610](v37, v39);

    MEMORY[0x1BFB3F610](62, 0xE100000000000000);
    v40 = &v8[OBJC_IVAR____TtCC9PassKitUI42ProvisioningPerformVerificationFlowSectionP33_1C14A3D2168F27576646641497AEDFBF36PerformVerificationMethodSetFlowItem_identifier];
    *v40 = 0xD000000000000025;
    v40[1] = 0x80000001BE137270;
    v42.receiver = v8;
    v42.super_class = ObjectType;
    return objc_msgSendSuper2(&v42, sel_init);
  }

  v18 = sub_1BE053704();
  if (!v18)
  {
    goto LABEL_13;
  }

LABEL_3:
  v43 = MEMORY[0x1E69E7CC0];
  sub_1BE048964();
  v19 = a2;
  v20 = a3;
  v21 = a4;
  sub_1BE048C84();
  swift_unknownObjectRetain();
  result = sub_1BD03B254(0, v18 & ~(v18 >> 63), 0);
  if ((v18 & 0x8000000000000000) == 0)
  {
    v23 = 0;
    v24 = v43;
    do
    {
      if ((a5 & 0xC000000000000001) != 0)
      {
        v25 = MEMORY[0x1BFB40900](v23, a5);
      }

      else
      {
        v25 = *(a5 + 8 * v23 + 32);
      }

      v26 = v25;
      v27 = [v26 identifier];
      v28 = sub_1BE052434();
      v30 = v29;

      v43 = v24;
      v32 = *(v24 + 16);
      v31 = *(v24 + 24);
      if (v32 >= v31 >> 1)
      {
        sub_1BD03B254((v31 > 1), v32 + 1, 1);
        v24 = v43;
      }

      ++v23;
      *(v24 + 16) = v32 + 1;
      v33 = v24 + 16 * v32;
      *(v33 + 32) = v28;
      *(v33 + 40) = v30;
    }

    while (v18 != v23);
    goto LABEL_14;
  }

  __break(1u);
  return result;
}