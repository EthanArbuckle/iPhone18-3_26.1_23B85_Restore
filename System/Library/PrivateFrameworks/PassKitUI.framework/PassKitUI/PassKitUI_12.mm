double sub_1BD18C19C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X3>, uint64_t a4@<X8>)
{
  v8 = sub_1BE04F7C4();
  v28 = 1;
  sub_1BD18C328(a1, a2, a3, &v17);
  v35 = v23;
  v36 = v24;
  v37 = v25;
  v38 = v26;
  v31 = v19;
  v32 = v20;
  v33 = v21;
  v34 = v22;
  v29 = v17;
  v30 = v18;
  v39[6] = v23;
  v39[7] = v24;
  v39[8] = v25;
  v39[9] = v26;
  v39[2] = v19;
  v39[3] = v20;
  v39[4] = v21;
  v39[5] = v22;
  v39[0] = v17;
  v39[1] = v18;
  sub_1BD0DE19C(&v29, &v16, &qword_1EBD3B858);
  sub_1BD0DE53C(v39, &qword_1EBD3B858);
  *&v27[55] = v32;
  *&v27[39] = v31;
  *&v27[103] = v35;
  *&v27[119] = v36;
  *&v27[135] = v37;
  *&v27[151] = v38;
  *&v27[71] = v33;
  *&v27[87] = v34;
  *&v27[7] = v29;
  *&v27[23] = v30;
  v9 = *&v27[96];
  *(a4 + 129) = *&v27[112];
  v10 = *&v27[144];
  *(a4 + 145) = *&v27[128];
  *(a4 + 161) = v10;
  v11 = *&v27[32];
  *(a4 + 65) = *&v27[48];
  v12 = *&v27[80];
  *(a4 + 81) = *&v27[64];
  *(a4 + 97) = v12;
  *(a4 + 113) = v9;
  result = *v27;
  v14 = *&v27[16];
  *(a4 + 17) = *v27;
  *(a4 + 33) = v14;
  v15 = v28;
  *a4 = v8;
  *(a4 + 8) = 0;
  *(a4 + 16) = v15;
  *(a4 + 176) = *&v27[159];
  *(a4 + 49) = v11;
  return result;
}

uint64_t sub_1BD18C328@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X3>, uint64_t a4@<X8>)
{
  type metadata accessor for AccountDebugTransactionGroup(0);
  sub_1BE048C84();
  v35 = sub_1BE053314();
  v6 = v5;
  v37 = sub_1BE053314();
  v8 = v7;
  v9 = sub_1BE053314();
  v11 = v10;
  v38 = sub_1BE053314();
  v13 = v12;
  v14 = sub_1BE053314();
  v40 = v15;
  v41 = v14;
  v39 = sub_1BE053314();
  v17 = v16;
  strcpy(v56, "Daily Cash: $");
  HIWORD(v56[1]) = -4864;
  MEMORY[0x1BFB3F610](v9, v11);

  v18 = v56[1];
  v36 = v56[0];
  v56[0] = 0;
  v56[1] = 0xE000000000000000;
  sub_1BE053834();
  v20 = a3[2];
  v19 = a3[3];
  sub_1BE048C84();

  v56[0] = v20;
  v56[1] = v19;
  MEMORY[0x1BFB3F610](9248, 0xE200000000000000);
  MEMORY[0x1BFB3F610](v35, v6);

  MEMORY[0x1BFB3F610](2128928, 0xE300000000000000);
  MEMORY[0x1BFB3F610](a3[4], a3[5]);
  MEMORY[0x1BFB3F610](9248, 0xE200000000000000);
  MEMORY[0x1BFB3F610](v37, v8);

  MEMORY[0x1BFB3F610](2128928, 0xE300000000000000);
  MEMORY[0x1BFB3F610](a3[6], a3[7]);
  MEMORY[0x1BFB3F610](9248, 0xE200000000000000);
  MEMORY[0x1BFB3F610](v38, v13);

  MEMORY[0x1BFB3F610](2128928, 0xE300000000000000);
  MEMORY[0x1BFB3F610](v36, v18);

  v21 = v19;
  sub_1BE053834();

  MEMORY[0x1BFB3F610](v39, v17);

  sub_1BE053834();

  MEMORY[0x1BFB3F610](v41, v40);

  v44[152] = 0;
  v44[144] = 0;
  v44[136] = 0;
  sub_1BD0D7F18(v20, v19, 0);
  v22 = MEMORY[0x1E69E7CC0];
  sub_1BE048C84();
  sub_1BD0D7F18(0xD000000000000014, 0x80000001BE11BDE0, 0);
  sub_1BE048C84();
  sub_1BD0D7F18(0xD000000000000015, 0x80000001BE11BE00, 0);
  sub_1BE048C84();
  sub_1BD0DDF10(0xD000000000000015, 0x80000001BE11BE00, 0);

  sub_1BD0DDF10(0xD000000000000014, 0x80000001BE11BDE0, 0);

  sub_1BD0DDF10(v20, v21, 0);

  v23 = sub_1BE050454();
  KeyPath = swift_getKeyPath();
  v25 = sub_1BE051494();
  v26 = swift_getKeyPath();
  v44[128] = 0;
  *&v48 = v20;
  *(&v48 + 1) = v21;
  LOBYTE(v49) = 0;
  *(&v49 + 1) = *v47;
  DWORD1(v49) = *&v47[3];
  *(&v49 + 1) = v22;
  *&v50 = 0xD000000000000014;
  *(&v50 + 1) = 0x80000001BE11BDE0;
  LOBYTE(v51) = 0;
  *(&v51 + 1) = *v46;
  DWORD1(v51) = *&v46[3];
  *(&v51 + 1) = v22;
  *&v52 = 0xD000000000000015;
  *(&v52 + 1) = 0x80000001BE11BE00;
  LOBYTE(v53) = 0;
  *(&v53 + 1) = *v45;
  DWORD1(v53) = *&v45[3];
  *(&v53 + 1) = v22;
  *&v54 = KeyPath;
  *(&v54 + 1) = v23;
  *&v55 = v26;
  *(&v55 + 1) = v25;
  *a4 = a1;
  *(a4 + 8) = a2;
  *(a4 + 16) = 0;
  *(a4 + 24) = v22;
  v27 = v48;
  v28 = v49;
  v29 = v51;
  *(a4 + 64) = v50;
  *(a4 + 80) = v29;
  *(a4 + 32) = v27;
  *(a4 + 48) = v28;
  v30 = v52;
  v31 = v53;
  v32 = v55;
  *(a4 + 128) = v54;
  *(a4 + 144) = v32;
  *(a4 + 96) = v30;
  *(a4 + 112) = v31;
  v56[0] = v20;
  v56[1] = v21;
  v57 = 0;
  *&v58[3] = *&v47[3];
  *v58 = *v47;
  v59 = v22;
  v60 = 0xD000000000000014;
  v61 = 0x80000001BE11BDE0;
  v62 = 0;
  *&v63[3] = *&v46[3];
  *v63 = *v46;
  v64 = v22;
  v65 = 0xD000000000000015;
  v66 = 0x80000001BE11BE00;
  v67 = 0;
  *&v68[3] = *&v45[3];
  *v68 = *v45;
  v69 = v22;
  v70 = KeyPath;
  v71 = v23;
  v72 = v26;
  v73 = v25;
  sub_1BD0D7F18(a1, a2, 0);
  sub_1BE048C84();
  sub_1BD0DE19C(&v48, v44, &qword_1EBD3B860);
  sub_1BD0DE53C(v56, &qword_1EBD3B860);
  sub_1BD0DDF10(a1, a2, 0);
}

uint64_t sub_1BD18C880()
{
  sub_1BE048C84();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3B7C0);
  sub_1BD0DE4F4(&qword_1EBD3B7C8, &qword_1EBD3B7C0);
  sub_1BD196AE0();
  return sub_1BE0519D4();
}

void sub_1BD18C950(id *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = [*a1 description];
  v4 = sub_1BE052434();
  v6 = v5;

  *a2 = v4;
  *(a2 + 8) = v6;
  *(a2 + 16) = 0;
  *(a2 + 24) = MEMORY[0x1E69E7CC0];
}

uint64_t sub_1BD18C9B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v36 = a3;
  v34 = sub_1BE04F434();
  v32 = *(v34 - 8);
  MEMORY[0x1EEE9AC00](v34, v5);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3B850);
  v8 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35, v9);
  v33 = &v31 - v10;
  v11 = [objc_allocWithZone(MEMORY[0x1E69B9300]) initWithTransactionSource_];
  v12 = *(a1 + OBJC_IVAR____TtC9PassKitUI23TransactionPresentation_transaction);
  swift_getKeyPath();
  swift_getKeyPath();
  v13 = v12;
  sub_1BE04D8B4();

  v15 = *&v46[0];
  if (*&v46[0])
  {
    v16 = [objc_allocWithZone(MEMORY[0x1E69B8BD8]) init];
    v17 = objc_allocWithZone(PKPaymentTransactionDetailViewController);
    v18 = v11;
    LOBYTE(v30) = 1;
    v19 = [v17 initWithTransaction:v13 transactionSourceCollection:v18 familyCollection:0 account:v15 accountUserCollection:0 bankConnectInstitution:0 physicalCards:0 contactResolver:0 peerPaymentWebService:0 paymentServiceDataProvider:v16 detailViewStyle:0 allowTransactionLinks:v30];

    if (v19)
    {
      v20 = sub_1BE04F7B4();
      v21 = v19;
      sub_1BE051CD4();
      sub_1BE04EE54();
      LOBYTE(v46[0]) = 1;
      v22 = sub_1BE04EC54();
      v23 = sub_1BE0501D4();
      v37 = v20;
      LOBYTE(v38) = 1;
      *(&v38 + 1) = v21;
      v43 = v45[6];
      v44 = v45[7];
      v45[0] = v45[8];
      v39 = v45[2];
      v40 = v45[3];
      v41 = v45[4];
      v42 = v45[5];
      *&v45[1] = v22;
      BYTE8(v45[1]) = v23;
      v24 = v32;
      v25 = v34;
      (*(v32 + 104))(v7, *MEMORY[0x1E697C438], v34);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3B810);
      sub_1BD196C48();
      v26 = v33;
      sub_1BE050E84();

      (*(v24 + 8))(v7, v25);
      v46[6] = v43;
      v46[7] = v44;
      v47[0] = v45[0];
      *(v47 + 9) = *(v45 + 9);
      v46[2] = v39;
      v46[3] = v40;
      v46[4] = v41;
      v46[5] = v42;
      v46[0] = v37;
      v46[1] = v38;
      sub_1BD0DE53C(v46, &qword_1EBD3B810);
      v27 = v36;
      v28 = v26;
      v29 = v35;
      (*(v8 + 32))(v36, v28, v35);
      return (*(v8 + 56))(v27, 0, 1, v29);
    }

    else
    {

      return (*(v8 + 56))(v36, 1, 1, v35);
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1BD18CDF4(uint64_t a1, uint64_t a2)
{
  v8 = a1;
  v3 = swift_allocObject();
  v4 = *(a2 + 48);
  *(v3 + 48) = *(a2 + 32);
  *(v3 + 64) = v4;
  *(v3 + 80) = *(a2 + 64);
  v5 = *(a2 + 16);
  *(v3 + 16) = *a2;
  *(v3 + 32) = v5;
  sub_1BE048C84();
  sub_1BD1967C8(a2, v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3B7D8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3B760);
  sub_1BD0DE4F4(&qword_1EBD3B7E0, &qword_1EBD3B7D8);
  sub_1BD1968C8();
  sub_1BD196B34();
  return sub_1BE0519D4();
}

int *sub_1BD18CF2C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v36 = a3;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3B7F0);
  MEMORY[0x1EEE9AC00](v35, v5);
  v7 = v34 - v6;
  v34[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3B7F8);
  v9 = MEMORY[0x1EEE9AC00](v34[0], v8);
  v11 = v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9, v12);
  v14 = v34 - v13;
  v16 = *a1;
  v15 = *(a1 + 8);
  v17 = objc_opt_self();
  v18 = v16;
  result = [v17 presentationInformationForTransaction:v18 transactionSource:v15 secondaryTransactionSource:0 familyMember:0 account:0 deviceName:0 context:0];
  v34[1] = a2;
  v20 = *(a2 + 64);
  if (v20)
  {
    v21 = result;
    type metadata accessor for TransactionPresentation();
    swift_allocObject();
    v22 = v20;
    v23 = v21;
    v24 = sub_1BD6AF5A8(v18, v23, v20);

    v25 = sub_1BE051CD4();
    v26 = v36;
    *v36 = v25;
    v26[1] = v27;
    v28 = v26 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3B800) + 44);
    sub_1BD18C9B8(v24, v15, v7);
    sub_1BD196B88();
    sub_1BE04E8B4();
    *&v14[*(v34[0] + 36)] = 0;
    sub_1BD19717C(&qword_1EBD3B840, type metadata accessor for TransactionPresentation);
    sub_1BE048964();
    v29 = sub_1BE04E954();
    v31 = v30;
    sub_1BD6AE91C();
    sub_1BD0DE19C(v14, v11, &qword_1EBD3B7F8);
    sub_1BD0DE19C(v11, v28, &qword_1EBD3B7F8);
    v32 = (v28 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3B848) + 48));
    *v32 = v29;
    v32[1] = v31;
    sub_1BE048964();
    sub_1BD0DE53C(v14, &qword_1EBD3B7F8);

    sub_1BD0DE53C(v11, &qword_1EBD3B7F8);

    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3B760);
    v33 = v26 + result[9];
    v33[32] = 0;
    *v33 = 0u;
    *(v33 + 1) = 0u;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1BD18D2A0@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  sub_1BE053B24();
  MEMORY[0x1BFB3F610](32, 0xE100000000000000);
  MEMORY[0x1BFB3F610](a1, a2);
  sub_1BE050454();
  v6 = sub_1BE0505F4();
  v8 = v7;
  v10 = v9;

  sub_1BE051494();
  v11 = sub_1BE050564();
  v13 = v12;
  v15 = v14;
  v17 = v16;

  sub_1BD0DDF10(v6, v8, v10 & 1);

  *a3 = v11;
  *(a3 + 8) = v13;
  *(a3 + 16) = v15 & 1;
  *(a3 + 24) = v17;
  return result;
}

uint64_t sub_1BD18D3D4(uint64_t a1)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();

  v6[9] = v6[0];
  v2 = swift_allocObject();
  v3 = *(a1 + 48);
  *(v2 + 48) = *(a1 + 32);
  *(v2 + 64) = v3;
  *(v2 + 80) = *(a1 + 64);
  v4 = *(a1 + 16);
  *(v2 + 16) = *a1;
  *(v2 + 32) = v4;
  sub_1BD1967C8(a1, v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD524A0);
  sub_1BE04AF64();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3B6C0);
  sub_1BD0DE4F4(&qword_1EBD3B868, &qword_1EBD524A0);
  sub_1BD0DE4F4(&qword_1EBD3B6B8, &qword_1EBD3B6C0);
  sub_1BD19717C(&qword_1EBD3B870, type metadata accessor for AccountDebugSavingsStatement);
  return sub_1BE0519D4();
}

uint64_t sub_1BD18D5C0@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v57 = a3;
  v52 = sub_1BE04FB94();
  v55 = *(v52 - 8);
  MEMORY[0x1EEE9AC00](v52, v5);
  v48 = &v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3B728);
  v50 = *(v49 - 8);
  MEMORY[0x1EEE9AC00](v49, v7);
  v9 = &v44 - v8;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3B730);
  v53 = *(v51 - 8);
  MEMORY[0x1EEE9AC00](v51, v10);
  v12 = &v44 - v11;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3B738);
  MEMORY[0x1EEE9AC00](v56, v13);
  v47 = &v44 - v14;
  v15 = type metadata accessor for AccountDebugTransactionGroup(0);
  v16 = v15 - 8;
  MEMORY[0x1EEE9AC00](v15, v17);
  v19 = &v44 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = *a1;
  v20 = *(type metadata accessor for AccountDebugSavingsStatement(0) + 20);
  v54 = type metadata accessor for AccountDebugTransactionGroup;
  sub_1BD197294(a1 + v20, v19, type metadata accessor for AccountDebugTransactionGroup);
  v21 = sub_1BD188458();
  v22 = sub_1BE04AE64();
  v23 = [v21 stringFromDate_];

  v24 = sub_1BE052434();
  v26 = v25;

  v66 = 0;
  v67 = 0xE000000000000000;
  sub_1BE053834();

  v66 = v24;
  v67 = v26;
  MEMORY[0x1BFB3F610](10272, 0xE200000000000000);
  v27 = *(v16 + 28);
  v28 = v19;
  v46 = v19;
  v70 = *&v19[v27];
  v29 = sub_1BE053B24();
  MEMORY[0x1BFB3F610](v29);

  MEMORY[0x1BFB3F610](0x6361736E61727420, 0xEE0029736E6F6974);
  v31 = v66;
  v30 = v67;
  v60 = v66;
  v61 = v67;
  v62 = v28;
  v63 = v45;
  v64 = a2;
  v65 = a1;
  v58 = a1;
  v59 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3B748);
  sub_1BD196844();
  sub_1BE0504E4();
  v32 = v48;
  sub_1BE04FB84();
  v33 = sub_1BD0DE4F4(&qword_1EBD3B778, &qword_1EBD3B728);
  v34 = MEMORY[0x1E697C750];
  v35 = v12;
  v36 = v32;
  v37 = v49;
  v38 = v52;
  sub_1BE051144();
  (*(v55 + 8))(v36, v38);
  (*(v50 + 8))(v9, v37);
  v70 = v31;
  v71 = v30;
  v66 = v37;
  v67 = v38;
  v68 = v33;
  v69 = v34;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v40 = sub_1BD0DDEBC();
  v41 = MEMORY[0x1E69E6158];
  v42 = v51;
  sub_1BE050B74();
  (*(v53 + 8))(v35, v42);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3B878);
  sub_1BD0DE4F4(&qword_1EBD3B880, &qword_1EBD3B878);
  v66 = v42;
  v67 = v41;
  v68 = OpaqueTypeConformance2;
  v69 = v40;
  swift_getOpaqueTypeConformance2();
  sub_1BE04E8B4();

  return sub_1BD197364(v46, v54);
}

uint64_t sub_1BD18DBF4(uint64_t a1, uint64_t a2)
{
  v3 = a1 + *(type metadata accessor for AccountDebugSavingsStatement(0) + 20);
  v9 = *(v3 + *(type metadata accessor for AccountDebugTransactionGroup(0) + 76));
  v4 = swift_allocObject();
  v5 = *(a2 + 48);
  *(v4 + 48) = *(a2 + 32);
  *(v4 + 64) = v5;
  *(v4 + 80) = *(a2 + 64);
  v6 = *(a2 + 16);
  *(v4 + 16) = *a2;
  *(v4 + 32) = v6;
  sub_1BE048C84();
  sub_1BD1967C8(a2, v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3B7D8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3B760);
  sub_1BD0DE4F4(&qword_1EBD3B7E0, &qword_1EBD3B7D8);
  sub_1BD1968C8();
  sub_1BD196B34();
  return sub_1BE0519D4();
}

double sub_1BD18DD4C@<D0>(void *a1@<X3>, void *a2@<X4>, uint64_t a3@<X5>, uint64_t a4@<X8>)
{
  v8 = sub_1BE04F7C4();
  v22 = 1;
  sub_1BD18DE94(a1, a2, a3, &v15);
  v25 = v17;
  v26 = v18;
  v27 = v19;
  v28 = v20;
  v23 = v15;
  v24 = v16;
  v29[2] = v17;
  v29[3] = v18;
  v29[4] = v19;
  v29[5] = v20;
  v29[0] = v15;
  v29[1] = v16;
  sub_1BD0DE19C(&v23, &v14, &qword_1EBD3B888);
  sub_1BD0DE53C(v29, &qword_1EBD3B888);
  *&v21[39] = v25;
  *&v21[55] = v26;
  *&v21[71] = v27;
  *&v21[87] = v28;
  *&v21[7] = v23;
  *&v21[23] = v24;
  v9 = *&v21[32];
  *(a4 + 65) = *&v21[48];
  v10 = *&v21[80];
  *(a4 + 81) = *&v21[64];
  *(a4 + 97) = v10;
  v12 = *v21;
  result = *&v21[16];
  *(a4 + 33) = *&v21[16];
  *(a4 + 49) = v9;
  v13 = v22;
  *a4 = v8;
  *(a4 + 8) = 0;
  *(a4 + 16) = v13;
  *(a4 + 112) = *&v21[95];
  *(a4 + 17) = v12;
  return result;
}

uint64_t sub_1BD18DE94@<X0>(void *a1@<X3>, void *a2@<X4>, uint64_t a3@<X5>, uint64_t a4@<X8>)
{
  sub_1BE048C84();
  sub_1BE050414();
  v7 = sub_1BE0505F4();
  v64 = v8;
  v65 = v7;
  v62 = v9;
  v63 = v10;

  type metadata accessor for AccountDebugTransactionGroup(0);
  v50 = sub_1BE053314();
  v12 = v11;
  v51 = sub_1BE053314();
  v14 = v13;
  v15 = sub_1BE053314();
  v57 = v16;
  v58 = v15;
  v17 = sub_1BE053314();
  v55 = v18;
  v56 = v17;
  sub_1BE053834();

  v19 = [a1 openingBalance];
  v20 = [v19 description];
  v21 = sub_1BE052434();
  v23 = v22;

  MEMORY[0x1BFB3F610](v21, v23);

  MEMORY[0x1BFB3F610](0x6E69736F6C63202CLL, 0xEB00000000203A67);
  v24 = [a1 closingBalance];
  v25 = [v24 description];
  v26 = sub_1BE052434();
  v28 = v27;

  MEMORY[0x1BFB3F610](v26, v28);

  sub_1BE050454();
  v29 = sub_1BE0505F4();
  v31 = v30;
  LOBYTE(v23) = v32;

  sub_1BE051494();
  v33 = sub_1BE050564();
  v52 = v34;
  v53 = v33;
  v49 = v35;
  v54 = v36;

  sub_1BD0DDF10(v29, v31, v23 & 1);

  sub_1BE053834();
  sub_1BE048C84();

  MEMORY[0x1BFB3F610](9248, 0xE200000000000000);
  MEMORY[0x1BFB3F610](v50, v12);

  MEMORY[0x1BFB3F610](2128928, 0xE300000000000000);
  MEMORY[0x1BFB3F610](a2[4], a2[5]);
  MEMORY[0x1BFB3F610](9248, 0xE200000000000000);
  MEMORY[0x1BFB3F610](v51, v14);

  MEMORY[0x1BFB3F610](2128928, 0xE300000000000000);
  MEMORY[0x1BFB3F610](a2[6], a2[7]);
  MEMORY[0x1BFB3F610](9248, 0xE200000000000000);
  MEMORY[0x1BFB3F610](v56, v55);

  MEMORY[0x1BFB3F610](0xD000000000000010, 0x80000001BE11BE40);
  MEMORY[0x1BFB3F610](v58, v57);

  sub_1BE050454();
  v37 = sub_1BE0505F4();
  v39 = v38;
  v41 = v40;

  if (*(a3 + *(type metadata accessor for AccountDebugSavingsStatement(0) + 24)) == 1)
  {
    sub_1BE051494();
  }

  else
  {
    sub_1BE0513B4();
  }

  v42 = sub_1BE050564();
  v59 = v43;
  v61 = v42;
  v45 = v44;
  v47 = v46;

  sub_1BD0DDF10(v37, v39, v41 & 1);

  *a4 = v65;
  *(a4 + 8) = v64;
  *(a4 + 16) = v62 & 1;
  *(a4 + 24) = v63;
  *(a4 + 32) = v53;
  *(a4 + 40) = v52;
  *(a4 + 48) = v49 & 1;
  *(a4 + 56) = v54;
  *(a4 + 64) = v61;
  *(a4 + 72) = v59;
  *(a4 + 80) = v45 & 1;
  *(a4 + 88) = v47;
  sub_1BD0D7F18(v65, v64, v62 & 1);
  sub_1BE048C84();
  sub_1BD0D7F18(v53, v52, v49 & 1);
  sub_1BE048C84();
  sub_1BD0D7F18(v61, v59, v45 & 1);
  sub_1BE048C84();
  sub_1BD0DDF10(v61, v59, v45 & 1);

  sub_1BD0DDF10(v53, v52, v49 & 1);

  sub_1BD0DDF10(v65, v64, v62 & 1);
}

uint64_t sub_1BD18E3F4(uint64_t a1)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();

  v6[9] = v6[0];
  v2 = swift_allocObject();
  v3 = *(a1 + 48);
  *(v2 + 48) = *(a1 + 32);
  *(v2 + 64) = v3;
  *(v2 + 80) = *(a1 + 64);
  v4 = *(a1 + 16);
  *(v2 + 16) = *a1;
  *(v2 + 32) = v4;
  sub_1BD1967C8(a1, v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3B6E8);
  sub_1BE04AF64();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3B6A0);
  sub_1BD0DE4F4(&qword_1EBD3B6F0, &qword_1EBD3B6E8);
  sub_1BD0DE4F4(&qword_1EBD3B698, &qword_1EBD3B6A0);
  sub_1BD19717C(&qword_1EBD3B6F8, type metadata accessor for AccountDebugTransactionGroup);
  return sub_1BE0519D4();
}

uint64_t sub_1BD18E5E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v73 = a2;
  v83 = a3;
  v79 = sub_1BE04FB94();
  v81 = *(v79 - 8);
  MEMORY[0x1EEE9AC00](v79, v4);
  v75 = &v58 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3B728);
  v77 = *(v76 - 8);
  MEMORY[0x1EEE9AC00](v76, v6);
  v72 = &v58 - v7;
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3B730);
  v80 = *(v78 - 8);
  MEMORY[0x1EEE9AC00](v78, v8);
  v71 = &v58 - v9;
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3B738);
  MEMORY[0x1EEE9AC00](v82, v10);
  v74 = &v58 - v11;
  v70 = sub_1BE04AC64();
  v69 = *(v70 - 8);
  MEMORY[0x1EEE9AC00](v70, v12);
  v68 = &v58 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = sub_1BE04ACA4();
  v65 = *(v66 - 8);
  MEMORY[0x1EEE9AC00](v66, v14);
  v16 = &v58 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = sub_1BE04ABD4();
  v61 = *(v63 - 8);
  MEMORY[0x1EEE9AC00](v63, v17);
  v19 = &v58 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_1BE04AD84();
  v21 = *(v20 - 8);
  v23 = MEMORY[0x1EEE9AC00](v20, v22);
  v25 = &v58 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x1EEE9AC00](v23, v26);
  v29 = &v58 - v28;
  v31 = MEMORY[0x1EEE9AC00](v27, v30);
  v33 = &v58 - v32;
  MEMORY[0x1EEE9AC00](v31, v34);
  v36 = &v58 - v35;
  type metadata accessor for AccountDebugTransactionGroup(0);
  v64 = sub_1BE053314();
  v85 = v37;
  v59 = a1;
  v62 = sub_1BE053314();
  v84 = v38;
  v60 = sub_1BE053314();
  v40 = v39;
  v67 = v39;
  MEMORY[0x1BFB371E0]();
  sub_1BE04ABC4();
  sub_1BE04AB64();
  (*(v61 + 8))(v19, v63);
  v41 = *(v21 + 8);
  v41(v25, v20);
  sub_1BE04AC24();
  sub_1BE04ABB4();
  (*(v65 + 8))(v16, v66);
  v41(v29, v20);
  v42 = v68;
  sub_1BE04AC44();
  sub_1BE04ABA4();
  (*(v69 + 8))(v42, v70);
  v41(v33, v20);
  sub_1BD19717C(&qword_1EBD4E940, MEMORY[0x1E6969328]);
  v43 = v59;
  sub_1BE04AF44();
  v41(v36, v20);
  v45 = v97;
  v44 = v98;
  v88 = v97;
  v89 = v98;
  v90 = v60;
  v91 = v40;
  v92 = v73;
  v93 = v64;
  v94 = v85;
  v95 = v62;
  v96 = v84;
  v86 = v43;
  v87 = v73;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3B748);
  sub_1BD196844();
  v46 = v72;
  sub_1BE0504E4();
  v47 = v75;
  sub_1BE04FB84();
  v48 = sub_1BD0DE4F4(&qword_1EBD3B778, &qword_1EBD3B728);
  v49 = MEMORY[0x1E697C750];
  v50 = v71;
  v51 = v76;
  v52 = v79;
  sub_1BE051144();
  (*(v81 + 8))(v47, v52);
  (*(v77 + 8))(v46, v51);
  v101 = v45;
  v102 = v44;
  v97 = v51;
  v98 = v52;
  v99 = v48;
  v100 = v49;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v54 = sub_1BD0DDEBC();
  v55 = MEMORY[0x1E69E6158];
  v56 = v78;
  sub_1BE050B74();
  (*(v80 + 8))(v50, v56);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3B890);
  sub_1BD0DE4F4(&unk_1EBD3E160, &qword_1EBD3B890);
  v97 = v56;
  v98 = v55;
  v99 = OpaqueTypeConformance2;
  v100 = v54;
  swift_getOpaqueTypeConformance2();
  sub_1BE04E8B4();
}

uint64_t sub_1BD18EF54(uint64_t a1, uint64_t a2)
{
  v8 = *(a1 + *(type metadata accessor for AccountDebugTransactionGroup(0) + 76));
  v3 = swift_allocObject();
  v4 = *(a2 + 48);
  *(v3 + 48) = *(a2 + 32);
  *(v3 + 64) = v4;
  *(v3 + 80) = *(a2 + 64);
  v5 = *(a2 + 16);
  *(v3 + 16) = *a2;
  *(v3 + 32) = v5;
  sub_1BE048C84();
  sub_1BD1967C8(a2, v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3B7D8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3B760);
  sub_1BD0DE4F4(&qword_1EBD3B7E0, &qword_1EBD3B7D8);
  sub_1BD1968C8();
  sub_1BD196B34();
  return sub_1BE0519D4();
}

uint64_t sub_1BD18F098@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v31 = sub_1BE04F7C4();
  sub_1BE048C84();
  sub_1BE053834();

  MEMORY[0x1BFB3F610](a3, a4);
  MEMORY[0x1BFB3F610](0xD000000000000011, 0x80000001BE11BE60);
  MEMORY[0x1BFB3F610](a5[2], a5[3]);
  MEMORY[0x1BFB3F610](9248, 0xE200000000000000);
  MEMORY[0x1BFB3F610](a6, a7);
  MEMORY[0x1BFB3F610](2128928, 0xE300000000000000);
  MEMORY[0x1BFB3F610](a5[4], a5[5]);
  MEMORY[0x1BFB3F610](9248, 0xE200000000000000);
  MEMORY[0x1BFB3F610](a8, a10);
  sub_1BE050454();
  v17 = sub_1BE0505F4();
  v19 = v18;
  LOBYTE(a6) = v20;

  sub_1BE051494();
  v21 = sub_1BE050564();
  v23 = v22;
  LOBYTE(a8) = v24;
  v26 = v25;

  sub_1BD0DDF10(v17, v19, a6 & 1);

  sub_1BD0D7F18(a1, a2, 0);
  v27 = MEMORY[0x1E69E7CC0];
  sub_1BE048C84();
  sub_1BD0D7F18(v21, v23, a8 & 1);
  sub_1BE048C84();
  sub_1BD0DDF10(v21, v23, a8 & 1);

  sub_1BD0DDF10(a1, a2, 0);

  *a9 = v31;
  *(a9 + 8) = 0;
  *(a9 + 16) = 1;
  *(a9 + 24) = a1;
  *(a9 + 32) = a2;
  *(a9 + 40) = 0;
  *(a9 + 48) = v27;
  *(a9 + 56) = v21;
  *(a9 + 64) = v23;
  *(a9 + 72) = a8 & 1;
  *(a9 + 80) = v26;
  return result;
}

uint64_t sub_1BD18F328@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v106 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3B898);
  v4 = *(v3 - 8);
  v122 = v3;
  v123 = v4;
  v6 = MEMORY[0x1EEE9AC00](v3, v5);
  v121 = v87 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v8);
  v120 = v87 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3B8A0);
  v11 = *(v10 - 8);
  v100 = v10;
  v101 = v11;
  MEMORY[0x1EEE9AC00](v10, v12);
  v97 = v87 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3B8A8);
  v15 = *(v14 - 8);
  v102 = v14;
  v103 = v15;
  MEMORY[0x1EEE9AC00](v14, v16);
  v96 = v87 - v17;
  v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3B8B0);
  MEMORY[0x1EEE9AC00](v104, v18);
  v98 = v87 - v19;
  v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3B8B8);
  v119 = *(v105 - 8);
  v21 = MEMORY[0x1EEE9AC00](v105, v20);
  v126 = v87 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21, v23);
  v117 = v87 - v24;
  v25 = sub_1BE04FB94();
  v26 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25, v27);
  v29 = v87 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3B8C0);
  v31 = *(v30 - 8);
  MEMORY[0x1EEE9AC00](v30, v32);
  v34 = v87 - v33;
  v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3B8C8);
  v124 = *(v112 - 8);
  MEMORY[0x1EEE9AC00](v112, v35);
  v111 = v87 - v36;
  v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3B8D0);
  MEMORY[0x1EEE9AC00](v116, v37);
  v110 = v87 - v38;
  v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3B8D8);
  v118 = *(v99 - 8);
  v40 = MEMORY[0x1EEE9AC00](v99, v39);
  v115 = v87 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v40, v42);
  v125 = v87 - v43;
  v109 = a1;
  v136 = a1;
  v137 = 0xD00000000000001BLL;
  v138 = 0x80000001BE11BE80;
  v135 = a1;
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3B8E0);
  v94 = sub_1BD196F04();
  v88 = v34;
  sub_1BE0504E4();
  sub_1BE04FB84();
  v87[4] = MEMORY[0x1E697CD20];
  v44 = sub_1BD0DE4F4(&qword_1EBD3B900, &qword_1EBD3B8C0);
  v108 = v29;
  v91 = v44;
  v45 = MEMORY[0x1E697C750];
  sub_1BE051144();
  v46 = *(v26 + 8);
  v113 = v26 + 8;
  v114 = v46;
  v87[0] = v25;
  v46(v29, v25);
  v47 = *(v31 + 8);
  v92 = v31 + 8;
  v93 = v47;
  v90 = v30;
  v47(v34, v30);
  v143 = 0xD00000000000001BLL;
  v144 = 0x80000001BE11BE80;
  v139 = v30;
  v140 = v25;
  v141 = v44;
  v142 = v45;
  v87[3] = MEMORY[0x1E697D600];
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v49 = sub_1BD0DDEBC();
  v50 = v112;
  v51 = MEMORY[0x1E69E6158];
  v52 = OpaqueTypeConformance2;
  v87[6] = OpaqueTypeConformance2;
  v53 = v49;
  v107 = v49;
  v54 = v111;
  sub_1BE050B74();
  v55 = *(v124 + 8);
  v124 += 8;
  v89 = v55;
  v55(v54, v50);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3B908);
  v87[2] = MEMORY[0x1E6981870];
  sub_1BD0DE4F4(&qword_1EBD3B910, &qword_1EBD3B908);
  v139 = v50;
  v140 = v51;
  v141 = v52;
  v142 = v53;
  v87[1] = MEMORY[0x1E697CFD8];
  v87[5] = swift_getOpaqueTypeConformance2();
  sub_1BE04E8B4();
  v132 = v109;
  v133 = 0x2073647261776552;
  v134 = 0xEF7364726F636552;
  v131 = v109;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3B918);
  sub_1BD196FC8();
  v56 = v97;
  sub_1BE0504E4();
  v57 = v108;
  sub_1BE04FB84();
  v58 = sub_1BD0DE4F4(&qword_1EBD3B938, &qword_1EBD3B8A0);
  v59 = v96;
  v60 = v100;
  v61 = v87[0];
  v62 = MEMORY[0x1E697C750];
  sub_1BE051144();
  v114(v57, v61);
  (*(v101 + 8))(v56, v60);
  v143 = 0x2073647261776552;
  v144 = 0xEF7364726F636552;
  v139 = v60;
  v140 = v61;
  v141 = v58;
  v142 = v62;
  v63 = swift_getOpaqueTypeConformance2();
  v64 = v102;
  v65 = MEMORY[0x1E69E6158];
  v66 = v107;
  sub_1BE050B74();
  (*(v103 + 8))(v59, v64);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3B940);
  sub_1BD0DE4F4(&qword_1EBD3B948, &qword_1EBD3B940);
  v139 = v64;
  v140 = v65;
  v141 = v63;
  v142 = v66;
  swift_getOpaqueTypeConformance2();
  v67 = v117;
  sub_1BE04E8B4();
  v128 = v109;
  v129 = 0xD00000000000001ELL;
  v130 = 0x80000001BE11BEA0;
  v127 = v109;
  v68 = v88;
  sub_1BE0504E4();
  v69 = v108;
  sub_1BE04FB84();
  v70 = v111;
  v71 = v90;
  sub_1BE051144();
  v114(v69, v61);
  v93(v68, v71);
  v139 = 0xD00000000000001ELL;
  v140 = 0x80000001BE11BEA0;
  v72 = v112;
  sub_1BE050B74();
  v89(v70, v72);
  v73 = v120;
  sub_1BE04E8B4();
  v116 = *(v118 + 16);
  v74 = v115;
  v75 = v99;
  v116(v115, v125, v99);
  v124 = *(v119 + 16);
  v76 = v105;
  (v124)(v126, v67, v105);
  v77 = *(v123 + 16);
  v78 = v121;
  v77(v121, v73, v122);
  v79 = v106;
  v116(v106, v74, v75);
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3B950);
  (v124)(&v79[*(v80 + 48)], v126, v76);
  v81 = v122;
  v77(&v79[*(v80 + 64)], v78, v122);
  v82 = *(v123 + 8);
  v83 = v81;
  v82(v120, v81);
  v84 = *(v119 + 8);
  v84(v117, v76);
  v85 = *(v118 + 8);
  v85(v125, v75);
  v82(v121, v83);
  v84(v126, v76);
  return (v85)(v115, v75);
}

uint64_t sub_1BD190004@<X0>(char *a1@<X0>, char *a2@<X8>)
{
  v137 = a1;
  v136 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3B968);
  v4 = MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v135 = &v98 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4, v6);
  v134 = &v98 - v7;
  v127 = sub_1BE04FB94();
  v129 = *(v127 - 8);
  MEMORY[0x1EEE9AC00](v127, v8);
  v123 = &v98 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v124 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3B970);
  v125 = *(v124 - 8);
  MEMORY[0x1EEE9AC00](v124, v10);
  v121 = &v98 - v11;
  v126 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3B978);
  v128 = *(v126 - 8);
  MEMORY[0x1EEE9AC00](v126, v12);
  v120 = &v98 - v13;
  v133 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3B980);
  MEMORY[0x1EEE9AC00](v133, v14);
  v122 = &v98 - v15;
  v132 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3B988);
  v131 = *(v132 - 8);
  v17 = MEMORY[0x1EEE9AC00](v132, v16);
  v130 = &v98 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17, v19);
  v139 = &v98 - v20;
  v119 = sub_1BE04ACE4();
  v118 = *(v119 - 8);
  MEMORY[0x1EEE9AC00](v119, v21);
  v117 = &v98 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v116 = sub_1BE04ACC4();
  v115 = *(v116 - 8);
  MEMORY[0x1EEE9AC00](v116, v23);
  v114 = &v98 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v113 = sub_1BE04AC04();
  v112 = *(v113 - 8);
  MEMORY[0x1EEE9AC00](v113, v25);
  v109 = &v98 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v111 = sub_1BE04AC14();
  v110 = *(v111 - 8);
  MEMORY[0x1EEE9AC00](v111, v27);
  v108 = &v98 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v107 = sub_1BE04AC64();
  v106 = *(v107 - 8);
  MEMORY[0x1EEE9AC00](v107, v29);
  v104 = &v98 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v103 = sub_1BE04ACA4();
  v102 = *(v103 - 8);
  MEMORY[0x1EEE9AC00](v103, v31);
  v33 = &v98 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v99 = sub_1BE04ABD4();
  v34 = *(v99 - 8);
  MEMORY[0x1EEE9AC00](v99, v35);
  v37 = &v98 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = sub_1BE04AD84();
  v39 = *(v38 - 8);
  v41 = MEMORY[0x1EEE9AC00](v38, v40);
  v43 = &v98 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = MEMORY[0x1EEE9AC00](v41, v44);
  v47 = &v98 - v46;
  v49 = MEMORY[0x1EEE9AC00](v45, v48);
  v51 = &v98 - v50;
  v53 = MEMORY[0x1EEE9AC00](v49, v52);
  v55 = &v98 - v54;
  v57 = MEMORY[0x1EEE9AC00](v53, v56);
  v59 = &v98 - v58;
  v61 = MEMORY[0x1EEE9AC00](v57, v60);
  v100 = &v98 - v62;
  MEMORY[0x1EEE9AC00](v61, v63);
  v101 = &v98 - v64;
  v105 = *(type metadata accessor for AccountDebugCKTransaction(0) + 32);
  MEMORY[0x1BFB371E0]();
  sub_1BE04ABC4();
  sub_1BE04AB64();
  (*(v34 + 8))(v37, v99);
  v65 = *(v39 + 8);
  v65(v43, v38);
  sub_1BE04AC24();
  sub_1BE04ABB4();
  (*(v102 + 8))(v33, v103);
  v65(v47, v38);
  v66 = v104;
  sub_1BE04AC44();
  sub_1BE04ABA4();
  (*(v106 + 8))(v66, v107);
  v65(v51, v38);
  v67 = v109;
  sub_1BE04ABF4();
  v68 = v108;
  sub_1BE04ABE4();
  (*(v112 + 8))(v67, v113);
  sub_1BE04AB84();
  (*(v110 + 8))(v68, v111);
  v65(v55, v38);
  v69 = v114;
  sub_1BE04ACB4();
  v70 = v100;
  sub_1BE04AD44();
  (*(v115 + 8))(v69, v116);
  v65(v59, v38);
  v71 = v117;
  sub_1BE04ACB4();
  v72 = v101;
  sub_1BE04AD54();
  (*(v118 + 8))(v71, v119);
  v65(v70, v38);
  sub_1BD19717C(&qword_1EBD4E940, MEMORY[0x1E6969328]);
  v73 = v137;
  sub_1BE04AF44();
  v65(v72, v38);
  v75 = v145;
  v74 = v146;
  v142 = v73;
  v143 = v145;
  v144 = v146;
  v140 = v73;
  v141 = v138;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3B990);
  sub_1BD0DE4F4(&qword_1EBD3B998, &qword_1EBD3B990);
  v76 = v121;
  sub_1BE0504E4();
  v77 = v123;
  sub_1BE04FB84();
  v78 = sub_1BD0DE4F4(&qword_1EBD3B9A0, &qword_1EBD3B970);
  v79 = MEMORY[0x1E697C750];
  v80 = v120;
  v81 = v124;
  v82 = v127;
  sub_1BE051144();
  (*(v129 + 8))(v77, v82);
  (*(v125 + 8))(v76, v81);
  v149 = v75;
  v150 = v74;
  v145 = v81;
  v146 = v82;
  v147 = v78;
  v148 = v79;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v84 = sub_1BD0DDEBC();
  v85 = MEMORY[0x1E69E6158];
  v86 = v126;
  sub_1BE050B74();
  (*(v128 + 8))(v80, v86);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3B9A8);
  sub_1BD0DE4F4(&qword_1EBD3B9B0, &qword_1EBD3B9A8);
  v145 = v86;
  v146 = v85;
  v147 = OpaqueTypeConformance2;
  v148 = v84;
  swift_getOpaqueTypeConformance2();
  v87 = v139;
  sub_1BE04E8B4();

  v88 = v134;
  sub_1BD1920E0(v137, v134);
  v89 = v131;
  v90 = *(v131 + 16);
  v91 = v130;
  v92 = v132;
  v90(v130, v87, v132);
  v93 = v135;
  sub_1BD0DE19C(v88, v135, &qword_1EBD3B968);
  v94 = v136;
  v90(v136, v91, v92);
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3B9B8);
  sub_1BD0DE19C(v93, &v94[*(v95 + 48)], &qword_1EBD3B968);
  sub_1BD0DE53C(v88, &qword_1EBD3B968);
  v96 = *(v89 + 8);
  v96(v139, v92);
  sub_1BD0DE53C(v93, &qword_1EBD3B968);
  return (v96)(v91, v92);
}

id sub_1BD190EE0@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v87 = a2;
  v90 = a3;
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3B7F0);
  MEMORY[0x1EEE9AC00](v85, v4);
  v84 = &v74 - v5;
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3B7F8);
  v7 = MEMORY[0x1EEE9AC00](v83, v6);
  v9 = &v74 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v10);
  v86 = &v74 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3B760);
  v14 = MEMORY[0x1EEE9AC00](v12, v13);
  v16 = (&v74 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v14, v17);
  v19 = &v74 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3B9C0);
  MEMORY[0x1EEE9AC00](v20, v21);
  v23 = &v74 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3B9C8);
  v26 = MEMORY[0x1EEE9AC00](v24 - 8, v25);
  v89 = &v74 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26, v28);
  v30 = &v74 - v29;
  v31 = a1 + *(type metadata accessor for AccountDebugCKTransaction(0) + 36);
  v32 = *v31;
  v88 = v12;
  if (!v32)
  {
    sub_1BE0513B4();
    v55 = sub_1BE050564();
    v57 = v56;
    v58 = v30;
    v60 = v59;
    v62 = v61;

    *v23 = v55;
    *(v23 + 1) = v57;
    v63 = v60 & 1;
    v54 = v58;
    v23[16] = v63;
    *(v23 + 3) = v62;
    swift_storeEnumTagMultiPayload();
    sub_1BD1968C8();
    sub_1BE04F9A4();
    goto LABEL_5;
  }

  v77 = v23;
  v78 = v9;
  v79 = v20;
  v80 = v19;
  v81 = v30;
  v82 = a1;
  v33 = *(v31 + 8);
  v34 = objc_opt_self();
  v35 = v32;
  sub_1BD1703C4(v32, v33);
  result = [v34 presentationInformationForTransaction:v35 transactionSource:v33 secondaryTransactionSource:0 familyMember:0 account:0 deviceName:0 context:0];
  v37 = v87[8];
  if (v37)
  {
    v38 = result;
    type metadata accessor for TransactionPresentation();
    swift_allocObject();
    v39 = v37;
    v40 = v38;
    v75 = v40;
    v41 = sub_1BD6AF5A8(v35, v40, v37);

    v42 = sub_1BE051CD4();
    v76 = v35;
    v43 = v16;
    *v16 = v42;
    v16[1] = v44;
    v45 = v16 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3B800) + 44);
    sub_1BD18C9B8(v41, v33, v84);
    sub_1BD196B88();
    v46 = v86;
    sub_1BE04E8B4();
    *(v46 + *(v83 + 36)) = 0;
    sub_1BD19717C(&qword_1EBD3B840, type metadata accessor for TransactionPresentation);
    sub_1BE048964();
    v47 = sub_1BE04E954();
    v49 = v48;
    sub_1BD6AE91C();
    v87 = v33;
    v50 = v78;
    sub_1BD0DE19C(v46, v78, &qword_1EBD3B7F8);
    sub_1BD0DE19C(v50, v45, &qword_1EBD3B7F8);
    v51 = (v45 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3B848) + 48));
    *v51 = v47;
    v51[1] = v49;
    sub_1BE048964();
    sub_1BD0DE53C(v46, &qword_1EBD3B7F8);

    sub_1BD0DE53C(v50, &qword_1EBD3B7F8);

    v52 = v43 + *(v88 + 36);
    *(v52 + 32) = 0;
    *v52 = 0u;
    *(v52 + 16) = 0u;
    v53 = v80;
    sub_1BD0DE204(v43, v80, &qword_1EBD3B760);
    sub_1BD0DE19C(v53, v77, &qword_1EBD3B760);
    swift_storeEnumTagMultiPayload();
    sub_1BD1968C8();
    v54 = v81;
    sub_1BE04F9A4();

    sub_1BD0DE53C(v53, &qword_1EBD3B760);
    a1 = v82;
LABEL_5:
    v64 = sub_1BE04F7C4();
    LOBYTE(v95[0]) = 1;
    sub_1BD19168C(a1, v92);
    *&v91[7] = v92[0];
    *&v91[23] = v92[1];
    *&v91[39] = v92[2];
    *&v91[55] = v92[3];
    v65 = v95[0];
    v66 = v89;
    sub_1BD0DE19C(v54, v89, &qword_1EBD3B9C8);
    v67 = v90;
    sub_1BD0DE19C(v66, v90, &qword_1EBD3B9C8);
    v68 = v67 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3B9D0) + 48);
    v93 = v64;
    v94[0] = v65;
    *&v94[1] = *v91;
    *&v94[17] = *&v91[16];
    *&v94[33] = *&v91[32];
    *&v94[49] = *&v91[48];
    v69 = *&v91[63];
    *&v94[64] = *&v91[63];
    v70 = *v94;
    *v68 = v64;
    *(v68 + 16) = v70;
    v71 = *&v94[16];
    v72 = *&v94[32];
    v73 = *&v94[48];
    *(v68 + 80) = v69;
    *(v68 + 48) = v72;
    *(v68 + 64) = v73;
    *(v68 + 32) = v71;
    sub_1BD0DE19C(&v93, v95, &qword_1EBD3B890);
    sub_1BD0DE53C(v54, &qword_1EBD3B9C8);
    v95[0] = v64;
    v95[1] = 0;
    v96 = v65;
    v98 = *&v91[16];
    v99 = *&v91[32];
    *v100 = *&v91[48];
    *&v100[15] = *&v91[63];
    v97 = *v91;
    sub_1BD0DE53C(v95, &qword_1EBD3B890);
    return sub_1BD0DE53C(v66, &qword_1EBD3B9C8);
  }

  __break(1u);
  return result;
}

uint64_t sub_1BD19168C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = [*(a1 + *(type metadata accessor for AccountDebugCKTransaction(0) + 48)) debugDescription];
  v4 = sub_1BE052434();
  v6 = v5;

  *a2 = xmmword_1BE0BC6D0;
  v7 = MEMORY[0x1E69E7CC0];
  *(a2 + 16) = 0;
  *(a2 + 24) = v7;
  *(a2 + 32) = v4;
  *(a2 + 40) = v6;
  *(a2 + 48) = 0;
  *(a2 + 56) = v7;
  sub_1BD0D7F18(0x3A64726F636552, 0xE700000000000000, 0);
  sub_1BE048C84();
  sub_1BD0D7F18(v4, v6, 0);
  sub_1BE048C84();
  sub_1BD0DDF10(v4, v6, 0);

  sub_1BD0DDF10(0x3A64726F636552, 0xE700000000000000, 0);
}

double sub_1BD1917A4@<D0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = sub_1BE04F7C4();
  v29 = 1;
  sub_1BD191990(a1, a2, a3, &v17);
  v38 = v25;
  v39 = v26;
  v34 = v21;
  v35 = v22;
  v36 = v23;
  v37 = v24;
  v30 = v17;
  v31 = v18;
  v32 = v19;
  v33 = v20;
  v41[8] = v25;
  v41[9] = v26;
  v41[4] = v21;
  v41[5] = v22;
  v41[6] = v23;
  v41[7] = v24;
  v41[0] = v17;
  v41[1] = v18;
  v40 = v27;
  v42 = v27;
  v41[2] = v19;
  v41[3] = v20;
  sub_1BD0DE19C(&v30, v16, &qword_1EBD3B9D8);
  sub_1BD0DE53C(v41, &qword_1EBD3B9D8);
  *(&v28[7] + 7) = v37;
  *(&v28[8] + 7) = v38;
  *(&v28[9] + 7) = v39;
  *(&v28[10] + 7) = v40;
  *(&v28[3] + 7) = v33;
  *(&v28[4] + 7) = v34;
  *(&v28[5] + 7) = v35;
  *(&v28[6] + 7) = v36;
  *(v28 + 7) = v30;
  *(&v28[1] + 7) = v31;
  *(&v28[2] + 7) = v32;
  v9 = v28[6];
  *(a4 + 129) = v28[7];
  v10 = v28[9];
  *(a4 + 145) = v28[8];
  *(a4 + 161) = v10;
  *(a4 + 176) = *(&v28[9] + 15);
  v11 = v28[2];
  *(a4 + 65) = v28[3];
  v12 = v28[5];
  *(a4 + 81) = v28[4];
  *(a4 + 97) = v12;
  *(a4 + 113) = v9;
  result = *v28;
  v14 = v28[1];
  *(a4 + 17) = v28[0];
  *(a4 + 33) = v14;
  v15 = v29;
  *a4 = v8;
  *(a4 + 8) = 0;
  *(a4 + 16) = v15;
  *(a4 + 49) = v11;
  return result;
}

uint64_t sub_1BD191990@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v7 = type metadata accessor for AccountDebugCKTransaction(0);
  if (*(a1 + *(v7 + 44)))
  {
    v8 = 7562585;
  }

  else
  {
    v8 = 28494;
  }

  if (*(a1 + *(v7 + 44)))
  {
    v9 = 0xE300000000000000;
  }

  else
  {
    v9 = 0xE200000000000000;
  }

  if (a1[5])
  {
    v59 = a1[5];
    v61 = a1[4];
    v10 = a1[7];
    if (v10)
    {
LABEL_9:
      v11 = a1[6];
      v12 = v10;
      goto LABEL_12;
    }
  }

  else
  {
    v59 = 0xE000000000000000;
    v61 = 0;
    v10 = a1[7];
    if (v10)
    {
      goto LABEL_9;
    }
  }

  v11 = 0;
  v12 = 0xE000000000000000;
LABEL_12:
  v56 = a1;
  v13 = *(a1 + *(v7 + 36));
  sub_1BE048C84();
  sub_1BE048C84();
  sub_1BE048C84();
  if (v13)
  {
    v67 = 0;
    v68 = 0;
    v65 = 0;
    v66 = 0;
  }

  else
  {
    sub_1BE0513B4();
    v63 = v9;
    v14 = v8;
    v15 = sub_1BE050564();
    v17 = v16;
    v19 = v18;
    v21 = v20;

    v67 = v17;
    v68 = v15;
    v22 = v15;
    v8 = v14;
    v9 = v63;
    v65 = v19 & 1;
    sub_1BD0D7F18(v22, v17, v19 & 1);
    v66 = v21;
    sub_1BE048C84();
  }

  if (v11 == 0x6573727562736964 && v12 == 0xEC000000746E656DLL || (sub_1BE053B84() & 1) != 0)
  {
    sub_1BE053834();

    *&v69 = 0x203A65707954;
    *(&v69 + 1) = 0xE600000000000000;
    MEMORY[0x1BFB3F610](v11, v12);

    MEMORY[0x1BFB3F610](0x657270707573202CLL, 0xEE00203A64657373);
    MEMORY[0x1BFB3F610](v8, v9);

    sub_1BE050454();
    v23 = sub_1BE0505F4();
    v25 = v24;
    v27 = v26;

    sub_1BE051494();
    sub_1BE050564();

    sub_1BD0DDF10(v23, v25, v27 & 1);
  }

  else
  {

    *&v69 = 0x203A65707954;
    *(&v69 + 1) = 0xE600000000000000;
    MEMORY[0x1BFB3F610](v11, v12);

    sub_1BE050454();
    v28 = sub_1BE0505F4();
    v30 = v29;
    v32 = v31;

    sub_1BE051494();
    sub_1BE050564();

    sub_1BD0DDF10(v28, v30, v32 & 1);
  }

  sub_1BE04F9A4();
  sub_1BD1970E0(0x203A65707954, 0xE600000000000000, v70);
  MEMORY[0x1BFB3F610](v61, v59);

  sub_1BE050454();
  v33 = MEMORY[0x1E69E7CC0];
  v34 = sub_1BE0505F4();
  v36 = v35;
  v38 = v37;

  sub_1BE051494();
  v39 = sub_1BE050564();
  v60 = v40;
  v62 = v39;
  v55 = v41;
  v58 = v42;

  sub_1BD0DDF10(v34, v36, v38 & 1);

  MEMORY[0x1BFB3F610](*v56, v56[1]);
  sub_1BE050454();
  v43 = v33;
  v44 = sub_1BE0505F4();
  v46 = v45;
  v48 = v47;

  sub_1BE051494();
  v53 = sub_1BE050564();
  v54 = v49;
  LOBYTE(v33) = v50;
  v57 = v51;

  sub_1BD0DDF10(v44, v46, v48 & 1);

  *a4 = a2;
  *(a4 + 8) = a3;
  *(a4 + 16) = 0;
  *(a4 + 24) = v43;
  *(a4 + 32) = v68;
  *(a4 + 40) = v67;
  *(a4 + 48) = v65;
  *(a4 + 56) = v66;
  *(a4 + 64) = v69;
  *(a4 + 80) = v70;
  *(a4 + 96) = v71;
  *(a4 + 104) = v62;
  *(a4 + 112) = v60;
  *(a4 + 120) = v55 & 1;
  *(a4 + 128) = v58;
  *(a4 + 136) = v53;
  *(a4 + 144) = v54;
  *(a4 + 152) = v33 & 1;
  *(a4 + 160) = v57;
  sub_1BD0D7F18(a2, a3, 0);
  sub_1BE048C84();
  sub_1BD1969AC(v68, v67, v65, v66);
  sub_1BD1970E0(0x203A65707954, 0xE600000000000000, v70);
  sub_1BD0D7F18(v62, v60, v55 & 1);
  sub_1BE048C84();
  LOBYTE(v33) = v33 & 1;
  sub_1BD0D7F18(v53, v54, v33);
  sub_1BE048C84();
  sub_1BD19711C(0x203A65707954, 0xE600000000000000, v70);
  sub_1BD1969F0(v68, v67, v65, v66);
  sub_1BD0DDF10(v53, v54, v33);

  sub_1BD0DDF10(v62, v60, v55 & 1);

  sub_1BD19711C(0x203A65707954, 0xE600000000000000, v70);
  sub_1BD1969F0(v68, v67, v65, v66);
  sub_1BD0DDF10(a2, a3, 0);
}

id sub_1BD1920E0@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v84 = a2;
  v85 = a1;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3B9C0);
  MEMORY[0x1EEE9AC00](v81, v2);
  v82 = &v69 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3B7F0);
  MEMORY[0x1EEE9AC00](v4, v5);
  v7 = &v69 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3B7F8);
  v10 = MEMORY[0x1EEE9AC00](v8, v9);
  v12 = &v69 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10, v13);
  v15 = &v69 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3B760);
  v18 = MEMORY[0x1EEE9AC00](v16, v17);
  v20 = (&v69 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v18, v21);
  v23 = &v69 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3B9C8);
  v83 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24, v25);
  v27 = &v69 - v26;
  v28 = type metadata accessor for AccountDebugCKTransaction(0);
  if (!*&v85[*(v28 + 36)])
  {
    v70 = v8;
    v71 = v7;
    v72 = v4;
    v73 = v20;
    v74 = v15;
    v75 = v12;
    v76 = v23;
    v77 = v27;
    v78 = v16;
    v79 = v24;
    v32 = &v85[*(v28 + 40)];
    v33 = *v32;
    if (*v32)
    {
      v34 = *(v32 + 1);
      v35 = objc_opt_self();
      v36 = v33;
      sub_1BD1703C4(v33, v34);
      result = [v35 presentationInformationForTransaction:v36 transactionSource:v34 secondaryTransactionSource:0 familyMember:0 account:0 deviceName:0 context:0];
      v37 = *(v80 + 64);
      if (!v37)
      {
        __break(1u);
        return result;
      }

      v38 = result;
      type metadata accessor for TransactionPresentation();
      swift_allocObject();
      v39 = v37;
      v40 = v38;
      v41 = sub_1BD6AF5A8(v36, v40, v37);

      v42 = sub_1BE051CD4();
      v43 = v73;
      *v73 = v42;
      *(v43 + 8) = v44;
      v45 = v43 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3B800) + 44);
      v69 = v36;
      sub_1BD18C9B8(v41, v34, v71);
      sub_1BD196B88();
      v46 = v74;
      sub_1BE04E8B4();
      *(v46 + *(v70 + 36)) = 0;
      sub_1BD19717C(&qword_1EBD3B840, type metadata accessor for TransactionPresentation);
      sub_1BE048964();
      v47 = sub_1BE04E954();
      v49 = v48;
      sub_1BD6AE91C();
      v85 = v34;
      v50 = v75;
      sub_1BD0DE19C(v46, v75, &qword_1EBD3B7F8);
      sub_1BD0DE19C(v50, v45, &qword_1EBD3B7F8);
      v51 = (v45 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3B848) + 48));
      *v51 = v47;
      v51[1] = v49;
      sub_1BE048964();
      sub_1BD0DE53C(v46, &qword_1EBD3B7F8);

      sub_1BD0DE53C(v50, &qword_1EBD3B7F8);

      v52 = v43 + *(v78 + 36);
      *(v52 + 32) = 0;
      *v52 = 0u;
      *(v52 + 16) = 0u;
      v53 = v76;
      sub_1BD0DE204(v43, v76, &qword_1EBD3B760);
      sub_1BD0DE19C(v53, v82, &qword_1EBD3B760);
      swift_storeEnumTagMultiPayload();
      sub_1BD1968C8();
      v54 = v77;
      sub_1BE04F9A4();

      sub_1BD0DE53C(v53, &qword_1EBD3B760);
    }

    else
    {
      sub_1BE050454();
      v55 = sub_1BE0505F4();
      v57 = v56;
      v59 = v58;
      v60 = v82;

      sub_1BE0513B4();
      v61 = sub_1BE050564();
      v63 = v62;
      v65 = v64;
      v67 = v66;

      sub_1BD0DDF10(v55, v57, v59 & 1);

      *v60 = v61;
      *(v60 + 8) = v63;
      *(v60 + 16) = v65 & 1;
      *(v60 + 24) = v67;
      swift_storeEnumTagMultiPayload();
      sub_1BD1968C8();
      v54 = v77;
      sub_1BE04F9A4();
    }

    v68 = v84;
    sub_1BD0DE204(v54, v84, &qword_1EBD3B9C8);
    return (*(v83 + 56))(v68, 0, 1, v79);
  }

  v29 = v84;
  v30 = *(v83 + 56);

  return v30(v29, 1, 1, v24);
}

uint64_t sub_1BD1927FC@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();

  v8 = sub_1BE053B24();
  v9 = v6;
  MEMORY[0x1BFB3F610](32, 0xE100000000000000);
  result = MEMORY[0x1BFB3F610](a1, a2);
  *a3 = v8;
  *(a3 + 8) = v9;
  *(a3 + 16) = 0;
  *(a3 + 24) = MEMORY[0x1E69E7CC0];
  return result;
}

uint64_t sub_1BD1928E8(uint64_t a1)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();

  v6[9] = v6[0];
  v2 = swift_allocObject();
  v3 = *(a1 + 48);
  *(v2 + 48) = *(a1 + 32);
  *(v2 + 64) = v3;
  *(v2 + 80) = *(a1 + 64);
  v4 = *(a1 + 16);
  *(v2 + 16) = *a1;
  *(v2 + 32) = v4;
  sub_1BD1967C8(a1, v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD524B0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3B8F8);
  sub_1BD0DE4F4(&qword_1EBD3B958, &qword_1EBD524B0);
  sub_1BD0DE4F4(&qword_1EBD3B8F0, &qword_1EBD3B8F8);
  sub_1BD19717C(&qword_1EBD3B960, type metadata accessor for AccountDebugCKTransaction);
  return sub_1BE0519D4();
}

double sub_1BD192ABC@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = sub_1BE04F7C4();
  v34 = 1;
  sub_1BD192C9C(a1, a2, a3, &v19);
  v45 = v29;
  v46 = v30;
  v47 = v31;
  v48 = v32;
  v41 = v25;
  v42 = v26;
  v43 = v27;
  v44 = v28;
  v37 = v21;
  v38 = v22;
  v39 = v23;
  v40 = v24;
  v35 = v19;
  v36 = v20;
  v49[10] = v29;
  v49[11] = v30;
  v49[12] = v31;
  v49[13] = v32;
  v49[6] = v25;
  v49[7] = v26;
  v49[8] = v27;
  v49[9] = v28;
  v49[2] = v21;
  v49[3] = v22;
  v49[4] = v23;
  v49[5] = v24;
  v49[0] = v19;
  v49[1] = v20;
  sub_1BD0DE19C(&v35, &v18, &qword_1EBD3BA30);
  sub_1BD0DE53C(v49, &qword_1EBD3BA30);
  *&v33[167] = v45;
  *&v33[183] = v46;
  *&v33[199] = v47;
  *&v33[215] = v48;
  *&v33[103] = v41;
  *&v33[119] = v42;
  *&v33[135] = v43;
  *&v33[151] = v44;
  *&v33[39] = v37;
  *&v33[55] = v38;
  *&v33[71] = v39;
  *&v33[87] = v40;
  *&v33[7] = v35;
  *&v33[23] = v36;
  v9 = *&v33[160];
  *(a4 + 193) = *&v33[176];
  v10 = *&v33[208];
  *(a4 + 209) = *&v33[192];
  *(a4 + 225) = v10;
  v11 = *&v33[96];
  *(a4 + 129) = *&v33[112];
  v12 = *&v33[144];
  *(a4 + 145) = *&v33[128];
  *(a4 + 161) = v12;
  *(a4 + 177) = v9;
  v13 = *&v33[32];
  *(a4 + 65) = *&v33[48];
  v14 = *&v33[80];
  *(a4 + 81) = *&v33[64];
  *(a4 + 97) = v14;
  *(a4 + 113) = v11;
  result = *v33;
  v16 = *&v33[16];
  *(a4 + 17) = *v33;
  *(a4 + 33) = v16;
  v17 = v34;
  *a4 = v8;
  *(a4 + 8) = 0;
  *(a4 + 16) = v17;
  *(a4 + 240) = *&v33[223];
  *(a4 + 49) = v13;
  return result;
}

uint64_t sub_1BD192C9C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v131 = a4;
  v7 = type metadata accessor for AccountDebugCKTransaction(0);
  v8 = *(v7 - 8);
  v10 = MEMORY[0x1EEE9AC00](v7, v9);
  v139 = &v128 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v10, v12);
  v135 = &v128 - v14;
  v16 = MEMORY[0x1EEE9AC00](v13, v15);
  v140 = &v128 - v17;
  v19 = MEMORY[0x1EEE9AC00](v16, v18);
  v136 = &v128 - v20;
  v22 = MEMORY[0x1EEE9AC00](v19, v21);
  v141 = &v128 - v23;
  v25 = MEMORY[0x1EEE9AC00](v22, v24);
  v143 = &v128 - v26;
  v28 = MEMORY[0x1EEE9AC00](v25, v27);
  v142 = &v128 - v29;
  v31 = MEMORY[0x1EEE9AC00](v28, v30);
  v137 = &v128 - v32;
  v34 = MEMORY[0x1EEE9AC00](v31, v33);
  v138 = &v128 - v35;
  MEMORY[0x1EEE9AC00](v34, v36);
  v38 = &v128 - v37;
  v39 = *(a1 + 8);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();

  v40 = *(*&v163[0] + 16);

  *&v153 = v40;
  *&v163[0] = sub_1BE053B24();
  *(&v163[0] + 1) = v41;
  MEMORY[0x1BFB3F610](32, 0xE100000000000000);
  MEMORY[0x1BFB3F610](a2, a3);
  v129 = *(&v163[0] + 1);
  v130 = *&v163[0];
  swift_getKeyPath();
  swift_getKeyPath();
  v132 = v39;
  sub_1BE04D8B4();

  v43 = *&v163[0];
  v44 = *(*&v163[0] + 16);
  if (v44)
  {
    v45 = 0;
    v46 = MEMORY[0x1E69E7CC0];
    v133 = *(*&v163[0] + 16);
    v134 = v7;
    while (v45 < *(v43 + 16))
    {
      v47 = (*(v8 + 80) + 32) & ~*(v8 + 80);
      v48 = *(v8 + 72);
      sub_1BD197294(v43 + v47 + v48 * v45, v38, type metadata accessor for AccountDebugCKTransaction);
      if (*&v38[*(v7 + 36)])
      {
        result = sub_1BD197364(v38, type metadata accessor for AccountDebugCKTransaction);
      }

      else
      {
        sub_1BD1972FC(v38, v138, type metadata accessor for AccountDebugCKTransaction);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *&v163[0] = v46;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1BD531BAC(0, *(v46 + 16) + 1, 1);
          v46 = *&v163[0];
        }

        v51 = *(v46 + 16);
        v50 = *(v46 + 24);
        if (v51 >= v50 >> 1)
        {
          sub_1BD531BAC(v50 > 1, v51 + 1, 1);
          v46 = *&v163[0];
        }

        *(v46 + 16) = v51 + 1;
        result = sub_1BD1972FC(v138, v46 + v47 + v51 * v48, type metadata accessor for AccountDebugCKTransaction);
        v44 = v133;
        v7 = v134;
      }

      if (v44 == ++v45)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
    goto LABEL_85;
  }

  v46 = MEMORY[0x1E69E7CC0];
LABEL_13:

  v52 = *(v46 + 16);

  if (v52)
  {
    *&v163[0] = 0;
    *(&v163[0] + 1) = 0xE000000000000000;
    sub_1BE053834();
    *&v153 = v52;
    v53 = sub_1BE053B24();
    v55 = v54;

    *&v163[0] = v53;
    *(&v163[0] + 1) = v55;
    MEMORY[0x1BFB3F610](0xD000000000000015, 0x80000001BE11BF90);
    sub_1BE0513B4();
    v56 = sub_1BE050564();
    v58 = v57;
    LOBYTE(v53) = v59;
    v61 = v60;

    v138 = v56;
    v134 = v58;
    v128 = v53 & 1;
    sub_1BD0D7F18(v56, v58, v53 & 1);
    v133 = v61;
    sub_1BE048C84();
  }

  else
  {
    v138 = 0;
    v133 = 0;
    v134 = 0;
    v128 = 0;
  }

  v62 = v143;
  v63 = v137;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();

  v64 = *&v163[0];
  v65 = *(*&v163[0] + 16);
  if (v65)
  {
    v66 = 0;
    v67 = MEMORY[0x1E69E7CC0];
    while (v66 < *(v64 + 16))
    {
      v68 = (*(v8 + 80) + 32) & ~*(v8 + 80);
      v69 = *(v8 + 72);
      sub_1BD197294(v64 + v68 + v69 * v66, v63, type metadata accessor for AccountDebugCKTransaction);
      v70 = *(v63 + 56);
      if (v70 && (*(v63 + 48) == 0x7761726468746977 ? (v71 = v70 == 0xEA00000000006C61) : (v71 = 0), v71 || (sub_1BE053B84() & 1) != 0))
      {
        sub_1BD1972FC(v63, v142, type metadata accessor for AccountDebugCKTransaction);
        v72 = swift_isUniquelyReferenced_nonNull_native();
        *&v163[0] = v67;
        if ((v72 & 1) == 0)
        {
          sub_1BD531BAC(0, *(v67 + 16) + 1, 1);
          v67 = *&v163[0];
        }

        v74 = *(v67 + 16);
        v73 = *(v67 + 24);
        if (v74 >= v73 >> 1)
        {
          sub_1BD531BAC(v73 > 1, v74 + 1, 1);
          v67 = *&v163[0];
        }

        *(v67 + 16) = v74 + 1;
        result = sub_1BD1972FC(v142, v67 + v68 + v74 * v69, type metadata accessor for AccountDebugCKTransaction);
        v62 = v143;
        v63 = v137;
      }

      else
      {
        result = sub_1BD197364(v63, type metadata accessor for AccountDebugCKTransaction);
      }

      if (v65 == ++v66)
      {
        goto LABEL_33;
      }
    }

LABEL_85:
    __break(1u);
LABEL_86:
    __break(1u);
LABEL_87:
    __break(1u);
    goto LABEL_88;
  }

  v67 = MEMORY[0x1E69E7CC0];
LABEL_33:

  v142 = *(v67 + 16);

  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();

  v75 = *&v163[0];
  v76 = *(*&v163[0] + 16);
  if (v76)
  {
    v77 = 0;
    v78 = MEMORY[0x1E69E7CC0];
    while (v77 < *(v75 + 16))
    {
      v79 = (*(v8 + 80) + 32) & ~*(v8 + 80);
      v80 = *(v8 + 72);
      sub_1BD197294(v75 + v79 + v80 * v77, v62, type metadata accessor for AccountDebugCKTransaction);
      v81 = *(v62 + 56);
      if (v81 && (*(v62 + 48) == 0x6573727562736964 ? (v82 = v81 == 0xEC000000746E656DLL) : (v82 = 0), v82 || (sub_1BE053B84() & 1) != 0))
      {
        sub_1BD1972FC(v62, v141, type metadata accessor for AccountDebugCKTransaction);
        v83 = swift_isUniquelyReferenced_nonNull_native();
        *&v163[0] = v78;
        if ((v83 & 1) == 0)
        {
          sub_1BD531BAC(0, *(v78 + 16) + 1, 1);
          v78 = *&v163[0];
        }

        v85 = *(v78 + 16);
        v84 = *(v78 + 24);
        if (v85 >= v84 >> 1)
        {
          sub_1BD531BAC(v84 > 1, v85 + 1, 1);
          v78 = *&v163[0];
        }

        *(v78 + 16) = v85 + 1;
        result = sub_1BD1972FC(v141, v78 + v79 + v85 * v80, type metadata accessor for AccountDebugCKTransaction);
        v62 = v143;
      }

      else
      {
        result = sub_1BD197364(v62, type metadata accessor for AccountDebugCKTransaction);
      }

      if (v76 == ++v77)
      {
        goto LABEL_50;
      }
    }

    goto LABEL_86;
  }

  v78 = MEMORY[0x1E69E7CC0];
LABEL_50:

  v143 = *(v78 + 16);

  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();

  v86 = *&v163[0];
  v87 = *(*&v163[0] + 16);
  if (v87)
  {
    v88 = 0;
    v89 = MEMORY[0x1E69E7CC0];
    v90 = v136;
    while (v88 < *(v86 + 16))
    {
      v91 = (*(v8 + 80) + 32) & ~*(v8 + 80);
      v92 = *(v8 + 72);
      sub_1BD197294(v86 + v91 + v92 * v88, v90, type metadata accessor for AccountDebugCKTransaction);
      v93 = *(v90 + 56);
      if (v93 && (*(v90 + 48) == 0x7055706F74 ? (v94 = v93 == 0xE500000000000000) : (v94 = 0), v94 || (sub_1BE053B84() & 1) != 0))
      {
        sub_1BD1972FC(v90, v140, type metadata accessor for AccountDebugCKTransaction);
        v95 = swift_isUniquelyReferenced_nonNull_native();
        *&v163[0] = v89;
        if ((v95 & 1) == 0)
        {
          sub_1BD531BAC(0, *(v89 + 16) + 1, 1);
          v89 = *&v163[0];
        }

        v97 = *(v89 + 16);
        v96 = *(v89 + 24);
        if (v97 >= v96 >> 1)
        {
          sub_1BD531BAC(v96 > 1, v97 + 1, 1);
          v89 = *&v163[0];
        }

        *(v89 + 16) = v97 + 1;
        result = sub_1BD1972FC(v140, v89 + v91 + v97 * v92, type metadata accessor for AccountDebugCKTransaction);
        v90 = v136;
      }

      else
      {
        result = sub_1BD197364(v90, type metadata accessor for AccountDebugCKTransaction);
      }

      if (v87 == ++v88)
      {
        goto LABEL_67;
      }
    }

    goto LABEL_87;
  }

  v89 = MEMORY[0x1E69E7CC0];
LABEL_67:

  v141 = *(v89 + 16);

  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();

  v98 = *&v163[0];
  v99 = *(*&v163[0] + 16);
  v100 = MEMORY[0x1E69E7CC0];
  if (!v99)
  {
LABEL_83:

    sub_1BD193B2C(&v145);
    v110 = sub_1BE050454();
    v143 = v110;
    KeyPath = swift_getKeyPath();
    v142 = KeyPath;
    v112 = sub_1BE051494();
    v113 = swift_getKeyPath();
    v144 = 0;
    v157 = v149;
    v158 = v150;
    v159 = v151;
    v160 = v152;
    v153 = v145;
    v154 = v146;
    v155 = v147;
    v156 = v148;
    *&v161 = KeyPath;
    *(&v161 + 1) = v110;
    *&v162 = v113;
    *(&v162 + 1) = v112;
    v115 = v129;
    v114 = v130;
    sub_1BD0D7F18(v130, v129, 0);
    v116 = MEMORY[0x1E69E7CC0];
    sub_1BE048C84();
    v117 = v138;
    v119 = v133;
    v118 = v134;
    v120 = v128;
    sub_1BD1969AC(v138, v134, v128, v133);
    sub_1BD0DE19C(&v153, v163, &qword_1EBD3BA38);
    sub_1BD1969F0(v117, v118, v120, v119);
    v121 = v144;
    v122 = v131;
    *v131 = v114;
    v122[1] = v115;
    *(v122 + 16) = v121;
    v122[3] = v116;
    v122[4] = v117;
    v122[5] = v118;
    v122[6] = v120;
    v122[7] = v119;
    v123 = v160;
    *(v122 + 10) = v159;
    *(v122 + 11) = v123;
    v124 = v162;
    *(v122 + 12) = v161;
    *(v122 + 13) = v124;
    v125 = v156;
    *(v122 + 6) = v155;
    *(v122 + 7) = v125;
    v126 = v158;
    *(v122 + 8) = v157;
    *(v122 + 9) = v126;
    v127 = v154;
    *(v122 + 4) = v153;
    *(v122 + 5) = v127;
    v163[4] = v149;
    v163[5] = v150;
    v163[6] = v151;
    v163[7] = v152;
    v163[0] = v145;
    v163[1] = v146;
    v163[2] = v147;
    v163[3] = v148;
    v164 = v142;
    v165 = v143;
    v166 = v113;
    v167 = v112;
    sub_1BD0DE53C(v163, &qword_1EBD3BA38);
    sub_1BD1969F0(v117, v118, v120, v119);
    sub_1BD0DDF10(v114, v115, 0);
  }

  v101 = 0;
  v102 = v135;
  while (v101 < *(v98 + 16))
  {
    v103 = (*(v8 + 80) + 32) & ~*(v8 + 80);
    v104 = *(v8 + 72);
    sub_1BD197294(v98 + v103 + v104 * v101, v102, type metadata accessor for AccountDebugCKTransaction);
    v105 = *(v102 + 56);
    if (v105 && (*(v102 + 48) == 0x7473657265746E69 ? (v106 = v105 == 0xE800000000000000) : (v106 = 0), v106 || (sub_1BE053B84() & 1) != 0))
    {
      sub_1BD1972FC(v102, v139, type metadata accessor for AccountDebugCKTransaction);
      v107 = swift_isUniquelyReferenced_nonNull_native();
      v168 = v100;
      if ((v107 & 1) == 0)
      {
        sub_1BD531BAC(0, *(v100 + 16) + 1, 1);
        v100 = v168;
      }

      v109 = *(v100 + 16);
      v108 = *(v100 + 24);
      if (v109 >= v108 >> 1)
      {
        sub_1BD531BAC(v108 > 1, v109 + 1, 1);
        v100 = v168;
      }

      *(v100 + 16) = v109 + 1;
      result = sub_1BD1972FC(v139, v100 + v103 + v109 * v104, type metadata accessor for AccountDebugCKTransaction);
      v102 = v135;
    }

    else
    {
      result = sub_1BD197364(v102, type metadata accessor for AccountDebugCKTransaction);
    }

    if (v99 == ++v101)
    {
      goto LABEL_83;
    }
  }

LABEL_88:
  __break(1u);
  return result;
}

uint64_t sub_1BD193B2C@<X0>(uint64_t a1@<X8>)
{
  v19 = sub_1BE053B24();
  v20 = v2;
  MEMORY[0x1BFB3F610](0x7469736F70656420, 0xEB00000000297328);
  v3 = v20;
  sub_1BE053834();
  v4 = sub_1BE053B24();
  v6 = v5;

  v21 = v6;
  MEMORY[0x1BFB3F610](0x6172646874697720, 0xEE002973286C6177);
  v7 = v4;
  v8 = v21;
  sub_1BE053834();
  v9 = sub_1BE053B24();
  v11 = v10;

  MEMORY[0x1BFB3F610](0xD00000000000001BLL, 0x80000001BE11BFB0);
  v12 = v9;
  sub_1BE053834();
  v13 = sub_1BE053B24();
  v15 = v14;

  v22 = v15;
  MEMORY[0x1BFB3F610](0xD000000000000018, 0x80000001BE11BFD0);
  v16 = v13;
  *a1 = v19;
  *(a1 + 8) = v3;
  *(a1 + 16) = 0;
  v17 = MEMORY[0x1E69E7CC0];
  *(a1 + 24) = MEMORY[0x1E69E7CC0];
  *(a1 + 32) = v7;
  *(a1 + 40) = v8;
  *(a1 + 48) = 0;
  *(a1 + 56) = v17;
  *(a1 + 64) = v12;
  *(a1 + 72) = v11;
  *(a1 + 80) = 0;
  *(a1 + 88) = v17;
  *(a1 + 96) = v16;
  *(a1 + 104) = v22;
  *(a1 + 112) = 0;
  *(a1 + 120) = v17;
  sub_1BD0D7F18(v19, v3, 0);
  sub_1BE048C84();
  sub_1BD0D7F18(v7, v8, 0);
  sub_1BE048C84();
  sub_1BD0D7F18(v12, v11, 0);
  sub_1BE048C84();
  sub_1BD0D7F18(v16, v22, 0);
  sub_1BE048C84();
  sub_1BD0DDF10(v16, v22, 0);

  sub_1BD0DDF10(v12, v11, 0);

  sub_1BD0DDF10(v7, v8, 0);

  sub_1BD0DDF10(v19, v3, 0);
}

uint64_t sub_1BD193E20(uint64_t a1)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();

  v6[9] = v6[0];
  v2 = swift_allocObject();
  v3 = *(a1 + 48);
  *(v2 + 48) = *(a1 + 32);
  *(v2 + 64) = v3;
  *(v2 + 80) = *(a1 + 64);
  v4 = *(a1 + 16);
  *(v2 + 16) = *a1;
  *(v2 + 32) = v4;
  sub_1BD1967C8(a1, v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD524C0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3B930);
  sub_1BD0DE4F4(&qword_1EBD3B9E0, &unk_1EBD524C0);
  sub_1BD0DE4F4(&qword_1EBD3B928, &qword_1EBD3B930);
  sub_1BD19717C(&qword_1EBD3B9E8, type metadata accessor for AccountDebugCKReward);
  return sub_1BE0519D4();
}

uint64_t sub_1BD193FFC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v139 = a2;
  v136 = sub_1BE04FB94();
  v134 = *(v136 - 8);
  MEMORY[0x1EEE9AC00](v136, v3);
  v131 = v97 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v132 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3B9F0);
  v129 = *(v132 - 8);
  MEMORY[0x1EEE9AC00](v132, v5);
  v128 = v97 - v6;
  v138 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3B9F8);
  v133 = *(v138 - 8);
  MEMORY[0x1EEE9AC00](v138, v7);
  v130 = v97 - v8;
  v137 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3BA00);
  MEMORY[0x1EEE9AC00](v137, v9);
  v135 = v97 - v10;
  v127 = sub_1BE04ACE4();
  v126 = *(v127 - 1);
  MEMORY[0x1EEE9AC00](v127, v11);
  v125 = v97 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v124 = sub_1BE04ACC4();
  v123 = *(v124 - 8);
  MEMORY[0x1EEE9AC00](v124, v13);
  v122 = v97 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v121 = sub_1BE04AC04();
  v120 = *(v121 - 8);
  MEMORY[0x1EEE9AC00](v121, v15);
  v117 = v97 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v119 = sub_1BE04AC14();
  v118 = *(v119 - 8);
  MEMORY[0x1EEE9AC00](v119, v17);
  v116 = v97 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v115 = sub_1BE04AC64();
  v113 = *(v115 - 8);
  MEMORY[0x1EEE9AC00](v115, v19);
  v111 = v97 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v108 = sub_1BE04ACA4();
  v107 = *(v108 - 8);
  MEMORY[0x1EEE9AC00](v108, v21);
  v104 = v97 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v102 = sub_1BE04ABD4();
  v100 = *(v102 - 8);
  MEMORY[0x1EEE9AC00](v102, v23);
  v25 = v97 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_1BE04AD84();
  v27 = *(v26 - 8);
  v29 = MEMORY[0x1EEE9AC00](v26, v28);
  v31 = v97 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = MEMORY[0x1EEE9AC00](v29, v32);
  v35 = v97 - v34;
  v37 = MEMORY[0x1EEE9AC00](v33, v36);
  v101 = v97 - v38;
  v40 = MEMORY[0x1EEE9AC00](v37, v39);
  v103 = v97 - v41;
  v43 = MEMORY[0x1EEE9AC00](v40, v42);
  v105 = v97 - v44;
  v46 = MEMORY[0x1EEE9AC00](v43, v45);
  v109 = v97 - v47;
  MEMORY[0x1EEE9AC00](v46, v48);
  v112 = v97 - v49;
  v50 = *(a1 + 24);
  if (v50)
  {
    v114 = *(a1 + 16);
    v142 = v50;
  }

  else
  {
    v114 = 0;
    v142 = 0xE000000000000000;
  }

  v51 = type metadata accessor for AccountDebugCKReward(0);
  v52 = (a1 + v51[7]);
  v53 = v52[1];
  if (v53)
  {
    v110 = *v52;
    v141 = v53;
  }

  else
  {
    v110 = 0;
    v141 = 0xE000000000000000;
  }

  v54 = v51[8];
  v143 = a1;
  v55 = (a1 + v54);
  if (v55[1])
  {
    v56 = *v55;
    v57 = v55[1];
  }

  else
  {
    v56 = 0;
    v57 = 0xE000000000000000;
  }

  sub_1BE048C84();
  sub_1BE048C84();
  sub_1BE048C84();
  v58 = sub_1BE052534();
  v59 = (v143 + v51[9]);
  v60 = v59[1];
  v140 = v57;
  v106 = v56;
  if (v60)
  {
    v61 = *v59;
    v62 = v60;
  }

  else
  {
    v61 = 0;
    v62 = 0xE000000000000000;
  }

  v99 = v58 > 0;
  sub_1BE048C84();
  v98 = sub_1BE052534() > 0;
  MEMORY[0x1BFB371E0]();
  sub_1BE04ABC4();
  sub_1BE04AB64();
  (*(v100 + 8))(v25, v102);
  v63 = *(v27 + 8);
  v63(v31, v26);
  v64 = v104;
  sub_1BE04AC24();
  v65 = v101;
  sub_1BE04ABB4();
  (*(v107 + 8))(v64, v108);
  v63(v35, v26);
  v66 = v111;
  sub_1BE04AC44();
  v67 = v103;
  sub_1BE04ABA4();
  (*(v113 + 8))(v66, v115);
  v63(v65, v26);
  v68 = v117;
  sub_1BE04ABF4();
  v69 = v116;
  sub_1BE04ABE4();
  (*(v120 + 8))(v68, v121);
  v70 = v105;
  sub_1BE04AB84();
  (*(v118 + 8))(v69, v119);
  v63(v67, v26);
  v71 = v122;
  sub_1BE04ACB4();
  v72 = v109;
  sub_1BE04AD44();
  (*(v123 + 8))(v71, v124);
  v63(v70, v26);
  v73 = v125;
  sub_1BE04ACB4();
  v74 = v112;
  sub_1BE04AD54();
  (v126[1])(v73, v127);
  v63(v72, v26);
  sub_1BD19717C(&qword_1EBD4E940, MEMORY[0x1E6969328]);
  v75 = v143;
  sub_1BE04AF44();
  v76 = (v63)(v74, v26);
  v127 = v97;
  v78 = v144;
  v77 = v145;
  v80 = MEMORY[0x1EEE9AC00](v76, v79);
  v126 = &v97[-16];
  v97[1] = v62;
  v97[-14] = v78;
  v97[-13] = v77;
  v81 = v114;
  v97[-12] = v75;
  v97[-11] = v81;
  v82 = v110;
  v97[-10] = v142;
  v97[-9] = v82;
  v97[-8] = v141;
  LOBYTE(v97[-7]) = v99;
  v83 = v140;
  v97[-6] = v106;
  v97[-5] = v83;
  LOBYTE(v97[-4]) = v98;
  v97[-3] = v61;
  v97[-2] = v62;
  MEMORY[0x1EEE9AC00](v80, v84);
  v97[-2] = v75;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3BA08);
  sub_1BD0DE4F4(&qword_1EBD3BA10, &qword_1EBD3BA08);
  v85 = v128;
  sub_1BE0504E4();
  v86 = v131;
  sub_1BE04FB84();
  v87 = sub_1BD0DE4F4(&qword_1EBD3BA18, &qword_1EBD3B9F0);
  v88 = MEMORY[0x1E697C750];
  v89 = v130;
  v90 = v132;
  v91 = v136;
  sub_1BE051144();
  (*(v134 + 8))(v86, v91);
  (*(v129 + 8))(v85, v90);
  v148 = v78;
  v149 = v77;
  v144 = v90;
  v145 = v91;
  v146 = v87;
  v147 = v88;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v93 = sub_1BD0DDEBC();
  v94 = MEMORY[0x1E69E6158];
  v95 = v138;
  sub_1BE050B74();
  (*(v133 + 8))(v89, v95);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3BA20);
  sub_1BD0DE4F4(&qword_1EBD3BA28, &qword_1EBD3BA20);
  v144 = v95;
  v145 = v94;
  v146 = OpaqueTypeConformance2;
  v147 = v93;
  swift_getOpaqueTypeConformance2();
  sub_1BE04E8B4();
}

__n128 sub_1BD194E7C@<Q0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v6 = sub_1BE04F7C4();
  sub_1BD194F28(a1, a2, v9);
  *&v8[55] = v9[3];
  *&v8[39] = v9[2];
  *&v8[23] = v9[1];
  *&v8[7] = v9[0];
  *(a3 + 33) = *&v8[16];
  result = *&v8[32];
  *(a3 + 49) = *&v8[32];
  *(a3 + 65) = *&v8[48];
  *a3 = v6;
  *(a3 + 8) = 0;
  *(a3 + 16) = 1;
  *(a3 + 80) = *&v8[63];
  *(a3 + 17) = *v8;
  return result;
}

uint64_t sub_1BD194F28@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  v49 = a3;
  v51 = type metadata accessor for AccountDebugCKReward(0);
  v5 = *(v51 - 8);
  v7 = MEMORY[0x1EEE9AC00](v51, v6);
  v9 = &v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v10);
  v12 = &v47 - v11;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();

  v13 = *(v53 + 16);

  v52 = v13;
  v53 = sub_1BE053B24();
  v54 = v14;
  MEMORY[0x1BFB3F610](32, 0xE100000000000000);
  MEMORY[0x1BFB3F610](a1, a2);
  v47 = v54;
  v48 = v53;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();

  v16 = v53;
  v17 = *(v53 + 16);
  v18 = MEMORY[0x1E69E7CC0];
  if (v17)
  {
    v19 = 0;
    v50 = v9;
    while (v19 < *(v16 + 16))
    {
      v20 = (*(v5 + 80) + 32) & ~*(v5 + 80);
      v21 = *(v5 + 72);
      sub_1BD197294(v16 + v20 + v21 * v19, v12, type metadata accessor for AccountDebugCKReward);
      if (*&v12[*(v51 + 32) + 8] && sub_1BE052534())
      {
        result = sub_1BD197364(v12, type metadata accessor for AccountDebugCKReward);
      }

      else
      {
        sub_1BD1972FC(v12, v9, type metadata accessor for AccountDebugCKReward);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v53 = v18;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1BD531BF0(0, *(v18 + 16) + 1, 1);
          v18 = v53;
        }

        v24 = *(v18 + 16);
        v23 = *(v18 + 24);
        if (v24 >= v23 >> 1)
        {
          sub_1BD531BF0(v23 > 1, v24 + 1, 1);
          v18 = v53;
        }

        *(v18 + 16) = v24 + 1;
        v25 = v18 + v20 + v24 * v21;
        v9 = v50;
        result = sub_1BD1972FC(v50, v25, type metadata accessor for AccountDebugCKReward);
      }

      if (v17 == ++v19)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_13:

    v26 = *(v18 + 16);

    if (v26)
    {
      v53 = 0;
      v54 = 0xE000000000000000;
      sub_1BE053834();
      v52 = v26;
      v27 = sub_1BE053B24();
      v29 = v28;

      v53 = v27;
      v54 = v29;
      MEMORY[0x1BFB3F610](0xD000000000000021, 0x80000001BE11BF60);
      sub_1BE050454();
      v30 = sub_1BE0505F4();
      v32 = v31;
      v34 = v33;

      sub_1BE051494();
      v35 = sub_1BE050564();
      v37 = v36;
      v39 = v38;
      v41 = v40;

      sub_1BD0DDF10(v30, v32, v34 & 1);

      v42 = v39 & 1;
      sub_1BD0D7F18(v35, v37, v39 & 1);
      sub_1BE048C84();
    }

    else
    {
      v35 = 0;
      v37 = 0;
      v42 = 0;
      v41 = 0;
    }

    v44 = v47;
    v43 = v48;
    sub_1BD0D7F18(v48, v47, 0);
    v45 = MEMORY[0x1E69E7CC0];
    sub_1BE048C84();
    sub_1BD1969AC(v35, v37, v42, v41);
    sub_1BD1969F0(v35, v37, v42, v41);
    LOBYTE(v53) = 0;
    v46 = v49;
    *v49 = v43;
    v46[1] = v44;
    *(v46 + 16) = 0;
    v46[3] = v45;
    v46[4] = v35;
    v46[5] = v37;
    v46[6] = v42;
    v46[7] = v41;
    sub_1BD1969F0(v35, v37, v42, v41);
    sub_1BD0DDF10(v43, v44, 0);
  }

  return result;
}

uint64_t sub_1BD19541C@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v4 = sub_1BE04F7C4();
  LOBYTE(v29[0]) = 1;
  sub_1BD195660(a1, v16);
  *&v15[7] = v16[0];
  *&v15[23] = v16[1];
  *&v15[39] = v16[2];
  *&v15[55] = v16[3];
  v5 = v29[0];
  v6 = sub_1BE04F7C4();
  LOBYTE(v29[0]) = 1;
  sub_1BD1957B8(a1, v17);
  *&v14[7] = v17[0];
  *&v14[23] = v17[1];
  *&v14[39] = v17[2];
  *&v14[55] = v18;
  v7 = v29[0];
  v19 = v4;
  v20[0] = v5;
  *&v20[1] = *v15;
  *&v20[33] = *&v15[32];
  *&v20[17] = *&v15[16];
  *&v20[49] = *&v15[48];
  *&v20[64] = *&v15[63];
  *v13 = *&v15[63];
  v11 = *&v20[32];
  v12 = *&v20[48];
  v10 = *&v20[16];
  v21[0] = v6;
  v21[1] = 0;
  v22[0] = v29[0];
  *&v22[1] = *v14;
  *&v22[64] = *(&v18 + 1);
  *&v22[49] = *&v14[48];
  *&v22[33] = *&v14[32];
  *&v22[17] = *&v14[16];
  *&v13[24] = *v22;
  *&v13[8] = v6;
  *&v13[72] = *&v22[48];
  *&v13[88] = *&v22[64];
  *&v13[56] = *&v22[32];
  *&v13[40] = *&v22[16];
  v8 = *v20;
  *a2 = v4;
  a2[1] = v8;
  a2[4] = v12;
  a2[5] = *v13;
  a2[2] = v10;
  a2[3] = v11;
  a2[9] = *&v13[64];
  a2[10] = *&v13[80];
  a2[7] = *&v13[32];
  a2[8] = *&v13[48];
  a2[6] = *&v13[16];
  v23[0] = v6;
  v23[1] = 0;
  v24 = v7;
  v26 = *&v14[16];
  v27 = *&v14[32];
  *v28 = *&v14[48];
  *&v28[15] = *&v14[63];
  v25 = *v14;
  sub_1BD0DE19C(&v19, v29, &qword_1EBD3B890);
  sub_1BD0DE19C(v21, v29, &qword_1EBD3B890);
  sub_1BD0DE53C(v23, &qword_1EBD3B890);
  v29[0] = v4;
  v29[1] = 0;
  v30 = v5;
  v32 = *&v15[16];
  v33 = *&v15[32];
  *v34 = *&v15[48];
  *&v34[15] = *&v15[63];
  v31 = *v15;
  return sub_1BD0DE53C(v29, &qword_1EBD3B890);
}

uint64_t sub_1BD195660@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + *(type metadata accessor for AccountDebugCKReward(0) + 48));
  if (v3)
  {
    v4 = [v3 debugDescription];
    v5 = sub_1BE052434();
    v7 = v6;
  }

  else
  {
    v7 = 0xEF746E6576652074;
    v5 = 0x6E65726170206F4ELL;
  }

  *a2 = xmmword_1BE0BC6E0;
  v8 = MEMORY[0x1E69E7CC0];
  *(a2 + 16) = 0;
  *(a2 + 24) = v8;
  *(a2 + 32) = v5;
  *(a2 + 40) = v7;
  *(a2 + 48) = 0;
  *(a2 + 56) = v8;
  sub_1BD0D7F18(0x45746E756F636341, 0xED00003A746E6576, 0);
  sub_1BE048C84();
  sub_1BD0D7F18(v5, v7, 0);
  sub_1BE048C84();
  sub_1BD0DDF10(v5, v7, 0);

  sub_1BD0DDF10(0x45746E756F636341, 0xED00003A746E6576, 0);
}

uint64_t sub_1BD1957B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = [*(a1 + *(type metadata accessor for AccountDebugCKReward(0) + 44)) debugDescription];
  v4 = sub_1BE052434();
  v6 = v5;

  *a2 = xmmword_1BE0BC6F0;
  v7 = MEMORY[0x1E69E7CC0];
  *(a2 + 16) = 0;
  *(a2 + 24) = v7;
  *(a2 + 32) = v4;
  *(a2 + 40) = v6;
  *(a2 + 48) = 0;
  *(a2 + 56) = v7;
  sub_1BD0D7F18(0x3A73647261776552, 0xE800000000000000, 0);
  sub_1BE048C84();
  sub_1BD0D7F18(v4, v6, 0);
  sub_1BE048C84();
  sub_1BD0DDF10(v4, v6, 0);

  sub_1BD0DDF10(0x3A73647261776552, 0xE800000000000000, 0);
}

__n128 sub_1BD1958D0@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, char a8@<W7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14)
{
  v67 = sub_1BE04F7C4();
  v19 = *a3;
  v20 = a3[1];
  v76 = a2;
  sub_1BE048C84();
  MEMORY[0x1BFB3F610](v19, v20);
  sub_1BE050454();
  v21 = sub_1BE0505F4();
  v23 = v22;
  v25 = v24;

  sub_1BE051494();
  v26 = sub_1BE050564();
  v73 = v27;
  v74 = v26;
  v68 = v28;
  v72 = v29;

  sub_1BD0DDF10(v21, v23, v25 & 1);

  sub_1BE053834();

  v79.n128_u64[0] = 0x203A746E756F6D41;
  v79.n128_u64[1] = 0xE900000000000024;
  MEMORY[0x1BFB3F610](a4, a5);
  MEMORY[0x1BFB3F610](0xD000000000000010, 0x80000001BE11BF10);
  MEMORY[0x1BFB3F610](a6, a7);
  sub_1BE050454();
  v30 = sub_1BE0505F4();
  v32 = v31;
  LOBYTE(a5) = v33;

  sub_1BE051494();
  v34 = sub_1BE050564();
  v70 = v35;
  v71 = v34;
  v78 = v36;
  v65 = v37;

  sub_1BD0DDF10(v30, v32, a5 & 1);

  if (a8)
  {
    v79.n128_u64[0] = 0x203A734449207254;
    v79.n128_u64[1] = 0xE800000000000000;
    MEMORY[0x1BFB3F610](a10, a11);
    sub_1BE050454();
    v38 = sub_1BE0505F4();
    v40 = v39;
    v42 = v41;

    sub_1BE051494();
    sub_1BE050564();

    sub_1BD0DDF10(v38, v40, v42 & 1);
  }

  else
  {
    sub_1BE050454();
    v43 = sub_1BE0505F4();
    v45 = v44;
    v47 = v46;

    sub_1BE051434();
    sub_1BE050564();

    sub_1BD0DDF10(v43, v45, v47 & 1);
  }

  sub_1BE04F9A4();
  sub_1BD1970E0(v79.n128_i64[0], v79.n128_i64[1], v80);
  if (a12)
  {
    MEMORY[0x1BFB3F610](a13, a14);
    sub_1BE050454();
    v48 = sub_1BE0505F4();
    v50 = v49;
    v52 = v51;

    sub_1BE051494();
    v53 = sub_1BE050564();
    v55 = v54;
    v57 = v56;
    v59 = v58;

    sub_1BD0DDF10(v48, v50, v52 & 1);

    v60 = v53;
    v66 = v55;
    v61 = v57 & 1;
    sub_1BD0D7F18(v53, v55, v57 & 1);
    v63 = v59;
    sub_1BE048C84();
  }

  else
  {
    v60 = 0;
    v66 = 0;
    v61 = 0;
    v63 = 0;
  }

  sub_1BD0D7F18(a1, v76, 0);
  sub_1BE048C84();
  sub_1BD0D7F18(v74, v73, v68 & 1);
  sub_1BE048C84();
  sub_1BD0D7F18(v71, v78, v65 & 1);
  sub_1BE048C84();
  sub_1BD1970E0(v79.n128_i64[0], v79.n128_i64[1], v80);
  sub_1BD1969AC(v60, v66, v61, v63);
  sub_1BD19711C(v79.n128_i64[0], v79.n128_i64[1], v80);
  sub_1BD1969F0(v60, v66, v61, v63);
  sub_1BD1969F0(v60, v66, v61, v63);
  sub_1BD19711C(v79.n128_i64[0], v79.n128_i64[1], v80);
  sub_1BD0DDF10(v71, v78, v65 & 1);

  sub_1BD0DDF10(v74, v73, v68 & 1);

  sub_1BD0DDF10(a1, v76, 0);

  *a9 = v67;
  *(a9 + 8) = 0;
  *(a9 + 16) = 1;
  *(a9 + 24) = a1;
  *(a9 + 32) = v76;
  *(a9 + 40) = 0;
  *(a9 + 48) = MEMORY[0x1E69E7CC0];
  *(a9 + 56) = v74;
  *(a9 + 64) = v73;
  *(a9 + 72) = v68 & 1;
  *(a9 + 80) = v72;
  *(a9 + 88) = v71;
  *(a9 + 96) = v78;
  *(a9 + 104) = v65 & 1;
  *(a9 + 112) = v70;
  result = v79;
  *(a9 + 136) = v80;
  *(a9 + 120) = v79;
  *(a9 + 152) = v81;
  *(a9 + 160) = v60;
  *(a9 + 168) = v66;
  *(a9 + 176) = v61;
  *(a9 + 184) = v63;
  return result;
}

uint64_t sub_1BD196014@<X0>(void *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();

  *a1 = v3;
  return result;
}

uint64_t sub_1BD196094(void **a1, void **a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v4 = v2;
  v5 = v3;
  return sub_1BE04D8C4();
}

uint64_t sub_1BD196108@<X0>(_BYTE *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();

  *a1 = v3;
  return result;
}

uint64_t sub_1BD196188(uint64_t a1, void **a2)
{
  v2 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v3 = v2;
  return sub_1BE04D8C4();
}

uint64_t sub_1BD196200@<X0>(void *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();

  *a1 = v3;
  a1[1] = v4;
  return result;
}

uint64_t sub_1BD196280(uint64_t a1, void **a2)
{
  v2 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE048C84();
  v3 = v2;
  return sub_1BE04D8C4();
}

double sub_1BD196328@<D0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();

  result = *&v3;
  *a1 = v3;
  *(a1 + 16) = v4;
  return result;
}

uint64_t sub_1BD1963B8(uint64_t a1, void **a2)
{
  v2 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v3 = v2;
  return sub_1BE04D8C4();
}

uint64_t sub_1BD1964F8(uint64_t a1, void **a2)
{
  v2 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE048C84();
  v3 = v2;
  return sub_1BE04D8C4();
}

unint64_t sub_1BD196584()
{
  result = qword_1EBD3B690;
  if (!qword_1EBD3B690)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3B688);
    sub_1BD0DE4F4(&qword_1EBD3B698, &qword_1EBD3B6A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3B690);
  }

  return result;
}

unint64_t sub_1BD19663C()
{
  result = qword_1EBD3B6B0;
  if (!qword_1EBD3B6B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3B6A8);
    sub_1BD0DE4F4(&qword_1EBD3B6B8, &qword_1EBD3B6C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3B6B0);
  }

  return result;
}

unint64_t sub_1BD1966F4()
{
  result = qword_1EBD3B6D0;
  if (!qword_1EBD3B6D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3B6C8);
    sub_1BD0DE4F4(&qword_1EBD3B6D8, &qword_1EBD3B6E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3B6D0);
  }

  return result;
}

unint64_t sub_1BD196844()
{
  result = qword_1EBD3B750;
  if (!qword_1EBD3B750)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3B748);
    sub_1BD1968C8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3B750);
  }

  return result;
}

unint64_t sub_1BD1968C8()
{
  result = qword_1EBD3B758;
  if (!qword_1EBD3B758)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3B760);
    sub_1BD0DE4F4(&qword_1EBD3B768, &qword_1EBD3B770);
    sub_1BD0DE4F4(&unk_1EBD3FB30, &qword_1EBD397A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3B758);
  }

  return result;
}

uint64_t sub_1BD1969AC(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_1BD0D7F18(result, a2, a3 & 1);

    return sub_1BE048C84();
  }

  return result;
}

uint64_t sub_1BD1969F0(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_1BD0DDF10(result, a2, a3 & 1);
  }

  return result;
}

unint64_t sub_1BD196A64()
{
  result = qword_1EBD3B7B0;
  if (!qword_1EBD3B7B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3B7A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3B7B0);
  }

  return result;
}

unint64_t sub_1BD196AE0()
{
  result = qword_1EBD3B7D0;
  if (!qword_1EBD3B7D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3B7D0);
  }

  return result;
}

unint64_t sub_1BD196B34()
{
  result = qword_1EBD3B7E8;
  if (!qword_1EBD3B7E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3B7E8);
  }

  return result;
}

unint64_t sub_1BD196B88()
{
  result = qword_1EBD3B808;
  if (!qword_1EBD3B808)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3B7F0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3B810);
    sub_1BD196C48();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3B808);
  }

  return result;
}

unint64_t sub_1BD196C48()
{
  result = qword_1EBD3B818;
  if (!qword_1EBD3B818)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3B810);
    sub_1BD196CD4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3B818);
  }

  return result;
}

unint64_t sub_1BD196CD4()
{
  result = qword_1EBD3B820;
  if (!qword_1EBD3B820)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3B828);
    sub_1BD0DE4F4(&qword_1EBD3B830, &qword_1EBD3B838);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3B820);
  }

  return result;
}

uint64_t sub_1BD196DA8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3D260);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1BD196F04()
{
  result = qword_1EBD3B8E8;
  if (!qword_1EBD3B8E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3B8E0);
    sub_1BD0DE4F4(&qword_1EBD3B8F0, &qword_1EBD3B8F8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3B8E8);
  }

  return result;
}

unint64_t sub_1BD196FC8()
{
  result = qword_1EBD3B920;
  if (!qword_1EBD3B920)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3B918);
    sub_1BD0DE4F4(&qword_1EBD3B928, &qword_1EBD3B930);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3B920);
  }

  return result;
}

uint64_t sub_1BD1970E0(uint64_t a1, uint64_t a2, char a3)
{
  sub_1BD0D7F18(a1, a2, a3 & 1);

  return sub_1BE048C84();
}

uint64_t sub_1BD19711C(uint64_t a1, uint64_t a2, char a3)
{
  sub_1BD0DDF10(a1, a2, a3 & 1);
}

uint64_t sub_1BD19717C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t objectdestroyTm_7()
{

  return swift_deallocObject();
}

uint64_t sub_1BD197294(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1BD1972FC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1BD197364(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1BD1973C4()
{
  result = qword_1EBD38840;
  if (!qword_1EBD38840)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EBD38840);
  }

  return result;
}

unint64_t sub_1BD197410()
{
  result = qword_1EBD3BA40;
  if (!qword_1EBD3BA40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3BA48);
    sub_1BD0DE4F4(&qword_1EBD3B600, &qword_1EBD3B5E0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3B5C8);
    sub_1BE04FB94();
    sub_1BD0DE4F4(&qword_1EBD3B5F8, &qword_1EBD3B5C8);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3BA40);
  }

  return result;
}

void FKAmount.negate()()
{
  v1 = [v0 decimal];
  v2 = [v1 pk_negativeValue];

  if (v2)
  {
    v3 = [v0 currency];
    if (!v3)
    {
      sub_1BE052434();
      v3 = sub_1BE052404();
    }

    [objc_allocWithZone(MEMORY[0x1E6967D90]) initWithDecimalNumber:v2 currency:v3];
  }

  else
  {
    __break(1u);
  }
}

id sub_1BD197638(void *a1)
{
  v1 = a1;
  FKAmount.negate()();
  v3 = v2;

  return v3;
}

Swift::String __swiftcall FKAmount.formatted()()
{
  v1 = v0;
  v20 = sub_1BE04B0F4();
  v2 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20, v3);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_1BE0493F4();
  v6 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19, v7);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = [v1 decimal];
  [v10 decimalValue];

  v11 = [v1 currency];
  sub_1BE052434();

  sub_1BE049404();
  sub_1BE04B054();
  v12 = sub_1BE0493E4();
  v14 = v13;
  (*(v2 + 8))(v5, v20);
  (*(v6 + 8))(v9, v19);
  v15 = v12;
  v16 = v14;
  result._object = v16;
  result._countAndFlagsBits = v15;
  return result;
}

id sub_1BD197888(void *a1)
{
  v2 = sub_1BE04B0F4();
  v16 = *(v2 - 8);
  v17 = v2;
  MEMORY[0x1EEE9AC00](v2, v3);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1BE0493F4();
  v6 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15, v7);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = a1;
  v11 = [v10 decimal];
  [v11 decimalValue];

  v12 = [v10 currency];
  sub_1BE052434();

  sub_1BE049404();
  sub_1BE04B054();
  sub_1BE0493E4();

  (*(v16 + 8))(v5, v17);
  (*(v6 + 8))(v9, v15);
  v13 = sub_1BE052404();

  return v13;
}

uint64_t sub_1BD197ABC(void *a1)
{
  v1 = a1;
  v2 = [v1 decimal];
  [v2 decimalValue];

  v3 = MEMORY[0x1BFB403C0](0);
  LOBYTE(v2) = MEMORY[0x1BFB403F0](v3);

  return v2 & 1;
}

void FKAmount.isAboveZero.getter()
{
  v1 = [v0 decimal];
  [v1 decimalValue];

  MEMORY[0x1BFB403C0](0);

  JUMPOUT(0x1BFB403F0);
}

uint64_t sub_1BD197BE0@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3BA78);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v27 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3BA80);
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = (&v27 - v11);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3BA88);
  v30 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13, v14);
  v16 = &v27 - v15;
  sub_1BD19804C();
  if (v17)
  {
    v18 = v17;
    if ((sub_1BE051C54() & 1) != 0 || (v19 = [v18 buttonTitle]) == 0)
    {
      *v12 = v18;
      swift_storeEnumTagMultiPayload();
      sub_1BD199474();
      sub_1BD0DE4F4(&qword_1EBD3BA98, &qword_1EBD3BA78);
      sub_1BE04F9A4();
    }

    else
    {

      v20 = swift_allocObject();
      v28 = v5;
      v27 = &v27;
      v21 = a1[1];
      v20[1] = *a1;
      v20[2] = v21;
      v22 = a1[3];
      v20[3] = a1[2];
      v20[4] = v22;
      MEMORY[0x1EEE9AC00](v20, v23);
      v29 = a2;
      *(&v27 - 2) = v18;
      sub_1BD1993E8(a1, v31);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3BAA0);
      sub_1BD0DE4F4(&qword_1EBD3BAA8, &qword_1EBD3BAA0);
      sub_1BE051704();
      v24 = v28;
      (*(v28 + 16))(v12, v8, v4);
      swift_storeEnumTagMultiPayload();
      sub_1BD199474();
      sub_1BD0DE4F4(&qword_1EBD3BA98, &qword_1EBD3BA78);
      a2 = v29;
      sub_1BE04F9A4();

      (*(v24 + 8))(v8, v4);
    }

    sub_1BD1994C8(v16, a2);
    return (*(v30 + 56))(a2, 0, 1, v13);
  }

  else
  {
    v26 = *(v30 + 56);

    return v26(a2, 1, 1, v13);
  }
}

void sub_1BD19804C()
{
  v1 = *(v0 + 8);
  if (v1)
  {
    v2 = [*(v0 + 8) title];
    if (v2)
    {
      v3 = v2;
      v4 = [objc_allocWithZone(PKDashboardPassMessage) init];
      [v4 setTitle_];

      v5 = [v1 body];
      [v4 setMessage_];

      [v4 setParseEmphasisInMessage_];
      v6 = [*(v0 + 16) iconImage];
      v7 = [objc_opt_self() imageWithPKImage_];

      if (v7)
      {
        [v4 setImage_];

        v8 = [v1 primaryActionTitle];
        if (v8)
        {
          v9 = v8;
          [v4 setButtonTitle_];

          v10 = swift_allocObject();
          v11 = *(v0 + 16);
          v10[1] = *v0;
          v10[2] = v11;
          v12 = *(v0 + 48);
          v10[3] = *(v0 + 32);
          v10[4] = v12;
          aBlock[4] = sub_1BD199538;
          aBlock[5] = v10;
          aBlock[0] = MEMORY[0x1E69E9820];
          aBlock[1] = 1107296256;
          aBlock[2] = sub_1BD198918;
          aBlock[3] = &block_descriptor_13;
          v13 = _Block_copy(aBlock);
          sub_1BD1993E8(v0, v14);

          [v4 setActionOnButtonPress_];
          _Block_release(v13);
        }

        v14[0] = *(v0 + 48);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54350);
        sub_1BE0516A4();
        [v4 setShowSpinner_];
      }

      else
      {
        __break(1u);
      }
    }
  }
}

uint64_t sub_1BD1982C4()
{
  v8 = *(v0 + 48);
  v9 = *(&v8 + 1);
  v6[0] = *(v0 + 48);
  v7[15] = 1;
  sub_1BD0DE19C(&v9, v7, &unk_1EBD4EF10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54350);
  sub_1BE0516B4();
  v1 = *(v0 + 24);
  if (v1)
  {
    sub_1BE048964();
    sub_1BD0DE53C(&v8, &qword_1EBD54350);
    v2 = swift_allocObject();
    v3 = *(v0 + 16);
    v2[1] = *v0;
    v2[2] = v3;
    v4 = *(v0 + 48);
    v2[3] = *(v0 + 32);
    v2[4] = v4;
    sub_1BD1993E8(v0, v6);
    v1(sub_1BD199420, v2);

    return sub_1BD0D4744(v1);
  }

  else
  {
    v7[0] = 0;
    sub_1BE0516B4();
    return sub_1BD0DE53C(&v8, &qword_1EBD54350);
  }
}

double sub_1BD198424@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1BE04F7C4();
  v31 = 0;
  sub_1BD198610(a1, &v15);
  v44 = v27;
  v45 = v28;
  v46 = v29;
  v40 = v23;
  v41 = v24;
  v42 = v25;
  v43 = v26;
  v36 = v19;
  v37 = v20;
  v38 = v21;
  v39 = v22;
  v32 = v15;
  v33 = v16;
  v34 = v17;
  v35 = v18;
  v47[12] = v27;
  v47[13] = v28;
  v47[14] = v29;
  v47[8] = v23;
  v47[9] = v24;
  v47[11] = v26;
  v47[10] = v25;
  v47[4] = v19;
  v47[5] = v20;
  v47[7] = v22;
  v47[6] = v21;
  v47[0] = v15;
  v47[1] = v16;
  v47[2] = v17;
  v47[3] = v18;
  sub_1BD0DE19C(&v32, &v14, &qword_1EBD3BAB0);
  sub_1BD0DE53C(v47, &qword_1EBD3BAB0);
  *&v30[183] = v43;
  *&v30[199] = v44;
  *&v30[215] = v45;
  *&v30[231] = v46;
  *&v30[119] = v39;
  *&v30[135] = v40;
  *&v30[151] = v41;
  *&v30[167] = v42;
  *&v30[55] = v35;
  *&v30[71] = v36;
  *&v30[87] = v37;
  *&v30[103] = v38;
  *&v30[7] = v32;
  *&v30[23] = v33;
  *&v30[39] = v34;
  v5 = *&v30[208];
  *(a2 + 209) = *&v30[192];
  *(a2 + 225) = v5;
  *(a2 + 241) = *&v30[224];
  v6 = *&v30[144];
  *(a2 + 145) = *&v30[128];
  *(a2 + 161) = v6;
  v7 = *&v30[176];
  *(a2 + 177) = *&v30[160];
  *(a2 + 193) = v7;
  v8 = *&v30[80];
  *(a2 + 81) = *&v30[64];
  *(a2 + 97) = v8;
  v9 = *&v30[112];
  *(a2 + 113) = *&v30[96];
  *(a2 + 129) = v9;
  v10 = *&v30[16];
  *(a2 + 17) = *v30;
  *(a2 + 33) = v10;
  result = *&v30[32];
  v12 = *&v30[48];
  *(a2 + 49) = *&v30[32];
  v13 = v31;
  *a2 = v4;
  *(a2 + 8) = 0;
  *(a2 + 16) = v13;
  *(a2 + 256) = *&v30[239];
  *(a2 + 65) = v12;
  return result;
}

void sub_1BD198610(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1;
  v4 = sub_1BE0513E4();
  PKUIPixelLength();
  sub_1BE051CD4();
  sub_1BE04E5E4();
  *&v60[6] = v62;
  *&v60[22] = v63;
  *&v60[38] = v64;
  sub_1BE051CD4();
  sub_1BE04EE54();
  v5 = sub_1BE050204();
  sub_1BE04E1F4();
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v61 = 0;
  *v32 = v4;
  *&v32[8] = 256;
  *&v32[10] = *v60;
  *&v32[26] = *&v60[16];
  *&v32[42] = *&v60[32];
  *&v32[56] = *(&v64 + 1);
  v34 = v26;
  v33 = v25;
  v39 = v31;
  v38 = v30;
  v37 = v29;
  v35 = v27;
  v36 = v28;
  LOBYTE(v40) = v5;
  *(&v40 + 1) = v6;
  *v41 = v8;
  *&v41[8] = v10;
  *&v41[16] = v12;
  v41[24] = 0;
  *a2 = v3;
  v14 = *v32;
  *(a2 + 24) = *&v32[16];
  *(a2 + 8) = v14;
  v15 = *&v32[32];
  v16 = *&v32[48];
  v17 = v33;
  *(a2 + 88) = v34;
  *(a2 + 72) = v17;
  *(a2 + 56) = v16;
  *(a2 + 40) = v15;
  v18 = v35;
  v19 = v36;
  v20 = v37;
  *(a2 + 152) = v38;
  *(a2 + 136) = v20;
  *(a2 + 120) = v19;
  *(a2 + 104) = v18;
  v21 = v39;
  v22 = v40;
  v23 = *v41;
  *(a2 + 209) = *&v41[9];
  *(a2 + 200) = v23;
  *(a2 + 184) = v22;
  *(a2 + 168) = v21;
  *(a2 + 232) = v3;
  v24 = v3;
  sub_1BD0DE19C(v32, &v42, &qword_1EBD3BAB8);
  v42 = v4;
  v43 = 256;
  v44 = *v60;
  v45 = *&v60[16];
  *v46 = *&v60[32];
  *&v46[14] = *&v60[46];
  v51 = v29;
  v52 = v30;
  v53 = v31;
  v47 = v25;
  v48 = v26;
  v50 = v28;
  v49 = v27;
  v54 = v5;
  v55 = v7;
  v56 = v9;
  v57 = v11;
  v58 = v13;
  v59 = 0;
  sub_1BD0DE53C(&v42, &qword_1EBD3BAB8);
}

void sub_1BD198918(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  sub_1BE048964();
  v4 = a2;
  v3();
}

uint64_t sub_1BD198980@<X0>(uint64_t a1@<X8>)
{
  v3 = v1[1];
  v12 = *v1;
  v13 = v3;
  v4 = v1[3];
  v14 = v1[2];
  v15 = v4;
  *a1 = sub_1BE04F7C4();
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3BA68);
  sub_1BD197BE0(&v12, a1 + *(v5 + 44));
  v6 = swift_allocObject();
  v7 = v13;
  *(v6 + 1) = v12;
  *(v6 + 2) = v7;
  v8 = v15;
  *(v6 + 3) = v14;
  *(v6 + 4) = v8;
  v9 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3BA70) + 36));
  *v9 = sub_1BD1993BC;
  v9[1] = v6;
  v9[2] = 0;
  v9[3] = 0;
  return sub_1BD1993E8(&v12, &v11);
}

uint64_t PKPaymentOfferConfirmationRecordFollowUpCell.configure(withConfirmationRecord:paymentPass:presentPaymentOfferInstallmentSelection:shouldTapButtonOnAppear:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3BA50);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = v16 - v13;
  v16[4] = a1;
  v16[5] = a2;
  v16[6] = a3;
  v16[7] = a4;
  v17 = a5;
  sub_1BD198CAC();
  sub_1BE04FCE4();
  sub_1BE0501D4();
  v18[3] = v10;
  v18[4] = sub_1BD0DE4F4(&qword_1EBD3BA60, &qword_1EBD3BA50);
  __swift_allocate_boxed_opaque_existential_1(v18);
  sub_1BE04FCD4();
  (*(v11 + 8))(v14, v10);
  return MEMORY[0x1BFB3FD10](v18);
}

id sub_1BD198BE8@<X0>(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X8>)
{
  v11 = [a1 transactionDetailMessageTileDynamicContent];
  sub_1BE048964();
  sub_1BE051694();
  *a6 = a1;
  *(a6 + 8) = v11;
  *(a6 + 16) = a2;
  *(a6 + 24) = a3;
  *(a6 + 32) = a4;
  *(a6 + 40) = a5;
  *(a6 + 48) = v15;
  *(a6 + 56) = v16;
  v12 = a1;

  return a2;
}

unint64_t sub_1BD198CAC()
{
  result = qword_1EBD3BA58;
  if (!qword_1EBD3BA58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3BA58);
  }

  return result;
}

uint64_t sub_1BD198EFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7[4] = a1;
  v7[5] = a2;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 1107296256;
  v7[2] = sub_1BD126964;
  v7[3] = &block_descriptor_16;
  v4 = _Block_copy(v7);
  v5 = *(a3 + 16);
  sub_1BE048964();
  v5(a3, v4);
  _Block_release(v4);
}

id PKPaymentOfferConfirmationRecordFollowUpCell.__allocating_init(style:reuseIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (a3)
  {
    v6 = sub_1BE052404();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithStyle:a1 reuseIdentifier:v6];

  return v7;
}

id PKPaymentOfferConfirmationRecordFollowUpCell.init(style:reuseIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  ObjectType = swift_getObjectType();
  if (a3)
  {
    v7 = sub_1BE052404();
  }

  else
  {
    v7 = 0;
  }

  v10.receiver = v3;
  v10.super_class = ObjectType;
  v8 = objc_msgSendSuper2(&v10, sel_initWithStyle_reuseIdentifier_, a1, v7);

  return v8;
}

id PKPaymentOfferConfirmationRecordFollowUpCell.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id PKPaymentOfferConfirmationRecordFollowUpCell.init(coder:)(void *a1)
{
  v5.receiver = v1;
  v5.super_class = swift_getObjectType();
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

id PKPaymentOfferConfirmationRecordFollowUpCell.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t get_enum_tag_for_layout_string_Ieg_Iegg_Sg(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t getEnumTagSinglePayload for Beneficiary(uint64_t *a1, int a2)
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

uint64_t storeEnumTagSinglePayload for Beneficiary(uint64_t result, int a2, int a3)
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

uint64_t sub_1BD1993BC()
{
  if (*(v0 + 56))
  {
    return sub_1BD1982C4();
  }

  return result;
}

unint64_t sub_1BD199474()
{
  result = qword_1EBD3BA90;
  if (!qword_1EBD3BA90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3BA90);
  }

  return result;
}

uint64_t sub_1BD1994C8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3BA88);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t objectdestroyTm_8()
{
  if (*(v0 + 40))
  {
  }

  return swift_deallocObject();
}

unint64_t sub_1BD1995DC()
{
  result = qword_1EBD3BAC0;
  if (!qword_1EBD3BAC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3BA70);
    sub_1BD0DE4F4(&qword_1EBD3BAC8, &qword_1EBD3BAD0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3BAC0);
  }

  return result;
}

uint64_t sub_1BD1996A0(uint64_t a1, int a2)
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

uint64_t sub_1BD1996E8(uint64_t result, int a2, int a3)
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

uint64_t sub_1BD199750@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1BE04AFE4();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t sub_1BD1997B8@<X0>(double a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v22[1] = a3;
  v5 = sub_1BE04FF64();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3BAD8);
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = v22 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3BAE0);
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14, v16);
  v18 = v22 - v17;
  *v13 = sub_1BE04F7B4();
  *(v13 + 1) = 0;
  v13[16] = 1;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3BAE8);
  sub_1BD199A78(a1, a2, &v13[*(v19 + 44)]);
  sub_1BE04FF54();
  v20 = sub_1BD0DE4F4(&qword_1EBD3BAF0, &qword_1EBD3BAD8);
  sub_1BE050D14();
  (*(v6 + 8))(v9, v5);
  sub_1BD051BD4(v13);
  sub_1BE052434();
  v22[2] = v10;
  v22[3] = v20;
  swift_getOpaqueTypeConformance2();
  sub_1BE050DE4();

  return (*(v15 + 8))(v18, v14);
}

uint64_t sub_1BD199A78@<X0>(double a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v45 = a3;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3BAF8);
  v5 = *(v44 - 8);
  v7 = MEMORY[0x1EEE9AC00](v44, v6);
  v9 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v10);
  v12 = &v42 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3BB00);
  v14 = v13 - 8;
  v16 = MEMORY[0x1EEE9AC00](v13, v15);
  v18 = &v42 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16, v19);
  v21 = &v42 - v20;
  *v21 = sub_1BE04F504();
  *(v21 + 1) = 0;
  v21[16] = 1;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3BB08);
  sub_1BD199D48(a2, &v21[*(v22 + 44)]);
  v23 = sub_1BE0501C4();
  sub_1BE04E1F4();
  v24 = &v21[*(v14 + 44)];
  *v24 = v23;
  *(v24 + 1) = v25;
  *(v24 + 2) = v26;
  *(v24 + 3) = v27;
  *(v24 + 4) = v28;
  v24[40] = 0;
  sub_1BD19A45C(a1, a2, v12);
  v29 = v18;
  v43 = v18;
  sub_1BD0DE19C(v21, v18, &qword_1EBD3BB00);
  v30 = v5;
  v31 = *(v5 + 16);
  v32 = v9;
  v33 = v9;
  v34 = v12;
  v35 = v12;
  v36 = v44;
  v31(v33, v34, v44);
  v37 = v29;
  v38 = v45;
  sub_1BD0DE19C(v37, v45, &qword_1EBD3BB00);
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3BB10);
  v31((v38 + *(v39 + 48)), v32, v36);
  v40 = *(v30 + 8);
  v40(v35, v36);
  sub_1BD0DE53C(v21, &qword_1EBD3BB00);
  v40(v32, v36);
  return sub_1BD0DE53C(v43, &qword_1EBD3BB00);
}

id sub_1BD199D48@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v73 = a1;
  v77 = a2;
  v2 = sub_1BE04BD74();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v70 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3BC18);
  v9 = MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v76 = &v70 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v9, v11);
  v75 = &v70 - v13;
  v15 = MEMORY[0x1EEE9AC00](v12, v14);
  v74 = &v70 - v16;
  MEMORY[0x1EEE9AC00](v15, v17);
  v78 = &v70 - v18;
  (*(v3 + 104))(v6, *MEMORY[0x1E69B80D8], v2);
  result = PKPassKitBundle();
  if (result)
  {
    v20 = result;
    v21 = sub_1BE04B6F4();
    v23 = v22;

    (*(v3 + 8))(v6, v2);
    *&v98[0] = v21;
    *(&v98[0] + 1) = v23;
    v72 = sub_1BD0DDEBC();
    v24 = sub_1BE0506C4();
    v26 = v25;
    LOBYTE(v20) = v27;
    sub_1BE050324();
    v28 = sub_1BE0505F4();
    v30 = v29;
    v32 = v31;
    v70 = v33;

    sub_1BD0DDF10(v24, v26, v20 & 1);

    sub_1BE051464();
    v71 = sub_1BE050564();
    v35 = v34;
    LOBYTE(v21) = v36;
    v38 = v37;

    sub_1BD0DDF10(v28, v30, v32 & 1);

    sub_1BE051CE4();
    sub_1BE04EE54();
    v99 = v21 & 1;
    *&v89 = v71;
    *(&v89 + 1) = v35;
    LOBYTE(v90) = v21 & 1;
    *(&v90 + 1) = v38;
    sub_1BE052434();
    v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3E090);
    v70 = sub_1BD19D16C();
    v71 = v39;
    sub_1BE050DE4();

    v98[6] = v95;
    v98[7] = v96;
    v98[8] = v97;
    v98[2] = v91;
    v98[3] = v92;
    v98[4] = v93;
    v98[5] = v94;
    v98[0] = v89;
    v98[1] = v90;
    sub_1BD0DE53C(v98, &qword_1EBD3E090);
    swift_getKeyPath();
    swift_getKeyPath();
    v40 = v73;
    sub_1BE04D8B4();

    v41 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithDouble_];
    v42 = [*(v40 + OBJC_IVAR____TtC9PassKitUI26SEStorageCleanupController_numberFormatter) stringFromNumber_];
    if (v42)
    {
      v43 = v42;
      v44 = sub_1BE052434();
      v46 = v45;
    }

    else
    {

      v44 = 0;
      v46 = 0xE000000000000000;
    }

    *&v89 = v44;
    *(&v89 + 1) = v46;
    v47 = sub_1BE0506C4();
    v49 = v48;
    v51 = v50;
    sub_1BE050324();
    v52 = sub_1BE0505F4();
    v54 = v53;
    v56 = v55;

    sub_1BD0DDF10(v47, v49, v51 & 1);

    sub_1BE051494();
    v57 = sub_1BE050564();
    v59 = v58;
    v61 = v60;
    v63 = v62;

    sub_1BD0DDF10(v52, v54, v56 & 1);

    sub_1BE051CF4();
    sub_1BE04EE54();
    v88 = v61 & 1;
    *&v79 = v57;
    *(&v79 + 1) = v59;
    LOBYTE(v80) = v61 & 1;
    *(&v80 + 1) = v63;
    sub_1BE052434();
    v64 = v74;
    sub_1BE050DE4();

    v95 = v85;
    v96 = v86;
    v97 = v87;
    v91 = v81;
    v92 = v82;
    v93 = v83;
    v94 = v84;
    v89 = v79;
    v90 = v80;
    sub_1BD0DE53C(&v89, &qword_1EBD3E090);
    v65 = v78;
    v66 = v75;
    sub_1BD0DE19C(v78, v75, &qword_1EBD3BC18);
    v67 = v76;
    sub_1BD0DE19C(v64, v76, &qword_1EBD3BC18);
    v68 = v77;
    sub_1BD0DE19C(v66, v77, &qword_1EBD3BC18);
    v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3BC20);
    sub_1BD0DE19C(v67, v68 + *(v69 + 48), &qword_1EBD3BC18);
    sub_1BD0DE53C(v64, &qword_1EBD3BC18);
    sub_1BD0DE53C(v65, &qword_1EBD3BC18);
    sub_1BD0DE53C(v67, &qword_1EBD3BC18);
    return sub_1BD0DE53C(v66, &qword_1EBD3BC18);
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1BD19A45C@<X0>(double a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v117 = a3;
  v132 = type metadata accessor for SEStorageUsageGroup(0);
  v131 = *(v132 - 8);
  MEMORY[0x1EEE9AC00](v132, v5);
  v7 = &v106 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v147 = sub_1BE04C164();
  v8 = *(v147 - 1);
  MEMORY[0x1EEE9AC00](v147, v9);
  v130 = &v106 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v136 = sub_1BE04BD74();
  v11 = *(v136 - 8);
  v13 = MEMORY[0x1EEE9AC00](v136, v12);
  v129 = &v106 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v13, v15);
  v128 = &v106 - v17;
  MEMORY[0x1EEE9AC00](v16, v18);
  v127 = &v106 - v19;
  v20 = type metadata accessor for SEStorageUsageCategory.SEStorageUsageCategoryType(0);
  MEMORY[0x1EEE9AC00](v20 - 8, v21);
  v146 = &v106 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for SEStorageCleanupSummaryHeaderView.Bar();
  v144 = *(v23 - 8);
  v145 = v23;
  v25 = MEMORY[0x1EEE9AC00](v23, v24);
  v143 = &v106 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25, v27);
  v29 = &v106 - v28;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3BB18);
  MEMORY[0x1EEE9AC00](v30 - 8, v31);
  v115 = &v106 - v32;
  v116 = sub_1BE04D634();
  v113 = *(v116 - 8);
  MEMORY[0x1EEE9AC00](v116, v33);
  v111 = &v106 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v120 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3BB20);
  v119 = *(v120 - 8);
  MEMORY[0x1EEE9AC00](v120, v35);
  v118 = &v106 - v36;
  *&v109 = COERCE_DOUBLE(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3BB28));
  v108 = *(v109 - 8);
  MEMORY[0x1EEE9AC00](v109, v37);
  v121 = &v106 - v38;
  v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3BB30);
  v112 = *(v114 - 8);
  MEMORY[0x1EEE9AC00](v114, v39);
  v110 = &v106 - v40;
  v142 = type metadata accessor for SEStorageUsageCategory(0);
  v41 = *(v142 - 8);
  MEMORY[0x1EEE9AC00](v142, v42);
  v148 = (&v106 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();

  v44 = v151;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();

  v46 = v151;
  v141 = *(*&v151 + 16);
  if (v141)
  {
    v106 = a1;
    v107 = a2;
    v47 = 0;
    v140 = *&v151 + ((*(v41 + 80) + 32) & ~*(v41 + 80));
    v139 = (v8 + 48);
    v135 = *MEMORY[0x1E69B80D8];
    v134 = (v11 + 104);
    v124 = "v16@?0@UIView8";
    v133 = (v11 + 8);
    v123 = "SE_STORAGE_RECOMMENDED_TITLE";
    v122 = "T_CATEGORY_OTHER";
    v126 = (v8 + 32);
    v125 = (v8 + 8);
    v48 = MEMORY[0x1E69E7CC0];
    v138 = v41;
    v137 = v151;
    while (1)
    {
      if (v47 >= *(*&v46 + 16))
      {
        __break(1u);
        goto LABEL_30;
      }

      v49 = v148;
      sub_1BD19CC88(v140 + *(v41 + 72) * v47, v148, type metadata accessor for SEStorageUsageCategory);
      v50 = v49;
      v51 = v146;
      sub_1BD19CC88(v50, v146, type metadata accessor for SEStorageUsageCategory.SEStorageUsageCategoryType);
      v52 = (*v139)(v51, 3, v147);
      if (v52 > 1)
      {
        break;
      }

      if (v52)
      {
        v59 = v127;
        v58 = v136;
        (*v134)(v127, v135, v136);
        result = PKPassKitBundle();
        if (!result)
        {
          goto LABEL_33;
        }

        v60 = result;
LABEL_14:
        v55 = sub_1BE04B6F4();
        v57 = v61;

        (*v133)(v59, v58);
        goto LABEL_15;
      }

      v53 = v130;
      v54 = v147;
      (*v126)(v130, v146, v147);
      v55 = sub_1BD802444();
      v57 = v56;
      (*v125)(v53, v54);
LABEL_15:
      v62 = v29;
      v63 = *(v148 + *(v142 + 20));
      v64 = *(v63 + 16);
      if (v64)
      {
        v65 = *(v132 + 28);
        v66 = v63 + ((*(v131 + 80) + 32) & ~*(v131 + 80));
        v67 = *(v131 + 72);
        v68 = 0.0;
        do
        {
          sub_1BD19CC88(v66, v7, type metadata accessor for SEStorageUsageGroup);
          v69 = *&v7[v65];
          sub_1BD19D104(v7, type metadata accessor for SEStorageUsageGroup);
          v68 = v68 + v69;
          v66 += v67;
          --v64;
        }

        while (v64);
      }

      else
      {
        v68 = 0.0;
      }

      v70 = v143;
      sub_1BE04AFD4();
      sub_1BD19D104(v148, type metadata accessor for SEStorageUsageCategory);
      v71 = v145;
      v72 = (v70 + *(v145 + 20));
      *v72 = v55;
      v72[1] = v57;
      *(v70 + *(v71 + 24)) = v68;
      v29 = v62;
      sub_1BD19CCF0(v70, v62);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v48 = sub_1BD1D7BD4(0, v48[2] + 1, 1, v48);
      }

      v41 = v138;
      v46 = v137;
      v74 = v48[2];
      v73 = v48[3];
      if (v74 >= v73 >> 1)
      {
        v48 = sub_1BD1D7BD4(v73 > 1, v74 + 1, 1, v48);
      }

      ++v47;
      v48[2] = v74 + 1;
      result = sub_1BD19CCF0(v29, v48 + ((*(v144 + 80) + 32) & ~*(v144 + 80)) + *(v144 + 72) * v74);
      if (v47 == v141)
      {

        a2 = v107;
        a1 = v106;
        goto LABEL_27;
      }
    }

    v58 = v136;
    if (v52 == 2)
    {
      v59 = v128;
      (*v134)(v128, v135, v136);
      result = PKPassKitBundle();
      if (!result)
      {
        goto LABEL_32;
      }

      v60 = result;
    }

    else
    {
      v59 = v129;
      (*v134)(v129, v135, v136);
      result = PKPassKitBundle();
      if (!result)
      {
        goto LABEL_31;
      }

      v60 = result;
    }

    goto LABEL_14;
  }

  v48 = MEMORY[0x1E69E7CC0];
LABEL_27:
  MEMORY[0x1EEE9AC00](v75, v76);
  *(&v106 - 4) = v44;
  *(&v106 - 3) = v48;
  v104 = a1;
  v105 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3BB38);
  *&v77 = COERCE_DOUBLE(__swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3BB40));
  v78 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3BB48);
  v79 = sub_1BD0DE4F4(&qword_1EBD3BB50, &qword_1EBD3BB40);
  *&v80 = COERCE_DOUBLE(sub_1BE04D554());
  v81 = sub_1BE04EDE4();
  v82 = sub_1BD19D410(&qword_1EBD3BB58, MEMORY[0x1E697EAF0]);
  v151 = *&v80;
  v152 = v81;
  v153 = MEMORY[0x1E695B140];
  v154 = v82;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v151 = *&v77;
  v152 = v78;
  v153 = v79;
  v154 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  v84 = v118;
  sub_1BE04D694();

  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3BB60);
  v86 = sub_1BD0DE4F4(&qword_1EBD3BB68, &qword_1EBD3BB20);
  v87 = sub_1BD19CD64();
  v88 = v121;
  v89 = v120;
  sub_1BE0507B4();
  result = (*(v119 + 8))(v84, v89);
  if (v44 < 0.0)
  {
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
  }

  else
  {
    v149 = 0;
    v150 = v44;
    v90 = v111;
    sub_1BE04D624();
    v91 = sub_1BE04D794();
    v92 = *&v89;
    v93 = v115;
    (*(*(v91 - 8) + 56))(v115, 1, 1, v91);
    v94 = v88;
    v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3BB80);
    v151 = v92;
    v152 = v85;
    v153 = v86;
    v154 = v87;
    v96 = swift_getOpaqueTypeConformance2();
    v97 = sub_1BD19CE20();
    v104 = MEMORY[0x1E695B1F0];
    v98 = v110;
    v99 = v109;
    v148 = &v106;
    v100 = v116;
    sub_1BE050784();
    sub_1BD0DE53C(v93, &qword_1EBD3BB18);
    (*(v113 + 8))(v90, v100);
    v101 = (*(v108 + 8))(v94, v99);
    v147 = &v106;
    MEMORY[0x1EEE9AC00](v101, v102);
    v104 = v44;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3BB90);
    v151 = *&v99;
    v152 = v95;
    v153 = v100;
    v154 = v96;
    v155 = v97;
    v156 = MEMORY[0x1E695B1F0];
    swift_getOpaqueTypeConformance2();
    sub_1BD0DE4F4(&qword_1EBD3BB98, &qword_1EBD3BB90);
    v103 = v114;
    sub_1BE050734();
    return (*(v112 + 8))(v98, v103);
  }

  return result;
}

uint64_t sub_1BD19B4C4(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3BB40);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = &v17[-v11];
  v19 = a4;
  v20 = a1;
  v21 = a2;
  v22 = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3BBA8);
  sub_1BD19CEB4();
  sub_1BE04D684();
  v18 = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3BB48);
  sub_1BD0DE4F4(&qword_1EBD3BB50, &qword_1EBD3BB40);
  v13 = sub_1BE04D554();
  v14 = sub_1BE04EDE4();
  v15 = sub_1BD19D410(&qword_1EBD3BB58, MEMORY[0x1E697EAF0]);
  v23 = v13;
  v24 = v14;
  v25 = MEMORY[0x1E695B140];
  v26 = v15;
  swift_getOpaqueTypeConformance2();
  sub_1BE04D4D4();
  return (*(v9 + 8))(v12, v8);
}

id sub_1BD19B70C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>, uint64_t a5@<D0>)
{
  v72 = a3;
  v70 = a2;
  v71 = a1;
  v80 = a4;
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3BBE0);
  MEMORY[0x1EEE9AC00](v78, v6);
  v76 = &v67 - v7;
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3BBC8);
  v77 = *(v79 - 8);
  v9 = MEMORY[0x1EEE9AC00](v79, v8);
  v75 = &v67 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9, v11);
  v87 = &v67 - v12;
  v13 = sub_1BE04BD74();
  v14 = *(v13 - 8);
  v83 = v13;
  v84 = v14;
  MEMORY[0x1EEE9AC00](v13, v15);
  v81 = &v67 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3BBD8);
  v19 = MEMORY[0x1EEE9AC00](v17 - 8, v18);
  MEMORY[0x1EEE9AC00](v19, v20);
  v21 = sub_1BE04D554();
  v82 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21, v22);
  v24 = &v67 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3BBB8);
  v68 = *(v69 - 8);
  MEMORY[0x1EEE9AC00](v69, v25);
  v27 = &v67 - v26;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3BBE8);
  v73 = *(v74 - 8);
  v29 = MEMORY[0x1EEE9AC00](v74, v28);
  v86 = &v67 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29, v31);
  v85 = &v67 - v32;
  sub_1BE04F624();
  v88 = 0;
  sub_1BE04D5C4();

  v33 = v81;

  sub_1BE04F624();
  v88 = a5;
  sub_1BE04D5C4();

  v34 = v83;
  sub_1BE04D544();
  v88 = sub_1BE051424();
  v35 = MEMORY[0x1E695B140];
  v36 = v27;
  sub_1BE04D4B4();

  (*(v82 + 8))(v24, v21);
  v37 = v84;
  (*(v84 + 104))(v33, *MEMORY[0x1E69B80D8], v34);
  result = PKPassKitBundle();
  if (result)
  {
    v39 = result;
    v40 = sub_1BE04B6F4();
    v42 = v41;

    (*(v37 + 8))(v33, v34);
    v92 = v40;
    v93 = v42;
    v88 = v21;
    v89 = MEMORY[0x1E69815C0];
    v90 = v35;
    v91 = MEMORY[0x1E6981568];
    swift_getOpaqueTypeConformance2();
    v43 = sub_1BD0DDEBC();
    v44 = MEMORY[0x1E69E6158];
    v45 = v85;
    v46 = v69;
    sub_1BE04D4C4();

    (*(v68 + 8))(v36, v46);
    v92 = v71;
    v47 = swift_allocObject();
    v48 = v72;
    *(v47 + 16) = v70;
    *(v47 + 24) = v48;
    sub_1BE048C84();
    sub_1BE048964();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3BBF0);
    sub_1BE04AFE4();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3BBF8);
    sub_1BD0DE4F4(&qword_1EBD3BC00, &qword_1EBD3BBF0);
    v49 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3BBD0);
    v88 = sub_1BE04D6C4();
    v89 = v44;
    v90 = MEMORY[0x1E695B228];
    v91 = MEMORY[0x1E695B438];
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v88 = v49;
    v89 = v44;
    v90 = OpaqueTypeConformance2;
    v91 = v43;
    swift_getOpaqueTypeConformance2();
    sub_1BD19D410(&qword_1EBD3BC08, type metadata accessor for SEStorageCleanupSummaryHeaderView.Bar);
    v51 = v87;
    sub_1BE0519A4();
    v52 = v73;
    v53 = *(v73 + 16);
    v54 = v86;
    v55 = v45;
    v56 = v74;
    v53(v86, v55, v74);
    v57 = v77;
    v84 = *(v77 + 16);
    v58 = v75;
    v59 = v51;
    v60 = v79;
    (v84)(v75, v59, v79);
    v61 = v76;
    v53(v76, v54, v56);
    sub_1BD19CFE4();
    v62 = v78;
    v63 = *(v78 + 48);
    (v84)(&v61[v63], v58, v60);
    v64 = v80;
    (*(v52 + 32))(v80, v61, v56);
    (*(v57 + 32))(v64 + *(v62 + 48), &v61[v63], v60);
    v65 = *(v57 + 8);
    v65(v87, v60);
    v66 = *(v52 + 8);
    v66(v85, v56);
    v65(v58, v60);
    return (v66)(v86, v56);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1BD19C078@<X0>(char *a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v50 = a1;
  v51 = a2;
  v54 = a3;
  v4 = sub_1BE04BD74();
  v48 = *(v4 - 8);
  v49 = v4;
  MEMORY[0x1EEE9AC00](v4, v5);
  v56 = &v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3BC10);
  v46 = *(v7 - 8);
  v47 = v7;
  MEMORY[0x1EEE9AC00](v7, v8);
  v44 = &v44 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3BBD8);
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  *&v55 = COERCE_DOUBLE(sub_1BE04D6C4());
  v45 = *(v55 - 8);
  MEMORY[0x1EEE9AC00](v55, v12);
  v14 = &v44 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3BBD0);
  v52 = *(v15 - 8);
  v53 = v15;
  MEMORY[0x1EEE9AC00](v15, v16);
  v18 = &v44 - v17;
  sub_1BE04F624();
  v19 = type metadata accessor for SEStorageCleanupSummaryHeaderView.Bar();
  v57 = *&a1[*(v19 + 24)];
  v20 = v57;
  sub_1BE04D5C4();

  sub_1BE04D6B4();
  sub_1BE04F624();
  v21 = &v50[*(v19 + 20)];
  v22 = *(v21 + 1);
  v57 = *v21;
  v23 = v57;
  v58 = v22;
  swift_bridgeObjectRetain_n();
  v24 = MEMORY[0x1E69E6158];
  v25 = v44;
  sub_1BE04D5C4();

  v26 = v48;

  v27 = v49;

  v50 = v18;
  v28 = v55;
  sub_1BE04D4A4();
  (*(v46 + 8))(v25, v47);
  (*(v45 + 8))(v14, v28);
  (*(v26 + 104))(v56, *MEMORY[0x1E69B80D8], v27);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF80);
  v29 = swift_allocObject();
  *(v29 + 16) = xmmword_1BE0B6CA0;
  *(v29 + 56) = v24;
  v30 = sub_1BD110550();
  *(v29 + 64) = v30;
  *(v29 + 32) = v23;
  *(v29 + 40) = v22;
  v31 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithDouble_];
  v32 = [*(v51 + OBJC_IVAR____TtC9PassKitUI26SEStorageCleanupController_numberFormatter) stringFromNumber_];
  if (v32)
  {
    v33 = v32;
    v34 = sub_1BE052434();
    v36 = v35;
  }

  else
  {

    v34 = 0;
    v36 = 0xE000000000000000;
  }

  *(v29 + 96) = v24;
  *(v29 + 104) = v30;
  *(v29 + 72) = v34;
  *(v29 + 80) = v36;
  v37 = v56;
  v38 = sub_1BE04B714();
  v40 = v39;

  (*(v26 + 8))(v37, v27);
  v61 = v38;
  v62 = v40;
  v57 = *&v55;
  v58 = v24;
  v59 = MEMORY[0x1E695B228];
  v60 = MEMORY[0x1E695B438];
  swift_getOpaqueTypeConformance2();
  sub_1BD0DDEBC();
  v41 = v53;
  v42 = v50;
  sub_1BE04D4C4();

  return (*(v52 + 8))(v42, v41);
}

uint64_t sub_1BD19C678@<X0>(uint64_t a1@<X8>, double a2@<D0>)
{
  v26 = a1;
  v25 = sub_1BE04EDE4();
  MEMORY[0x1EEE9AC00](v25, v3);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3BBD8);
  v8 = MEMORY[0x1EEE9AC00](v6 - 8, v7);
  MEMORY[0x1EEE9AC00](v8, v9);
  v24 = sub_1BE04D554();
  v10 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24, v11);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BE04F624();
  v27 = 0.0;
  sub_1BE04D5C4();

  sub_1BE04F624();
  v27 = a2;
  sub_1BE04D5C4();

  sub_1BE04D544();
  v14 = *(v25 + 20);
  v15 = *MEMORY[0x1E697F468];
  v16 = sub_1BE04F684();
  (*(*(v16 - 8) + 104))(&v5[v14], v15, v16);
  __asm { FMOV            V0.2D, #5.0 }

  *v5 = _Q0;
  sub_1BD19D410(&qword_1EBD3BB58, MEMORY[0x1E697EAF0]);
  v22 = v24;
  sub_1BE04D4F4();
  sub_1BD19D104(v5, MEMORY[0x1E697EAF0]);
  return (*(v10 + 8))(v13, v22);
}

double sub_1BD19C9B0@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1BE051CD4();
  sub_1BE04E5E4();
  v4 = sub_1BE04D614();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  v5 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3BB60) + 36));
  *v5 = v7;
  v5[1] = v8;
  result = *&v9;
  v5[2] = v9;
  return result;
}

uint64_t sub_1BD19CA68(double a1)
{
  v2 = sub_1BE04D604();
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v4 = sub_1BE04D574();
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3BBA0);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1BE0B6CA0;
  *(v6 + 32) = 0;
  *(v6 + 40) = a1;
  sub_1BE04D564();
  sub_1BE04D5F4();
  sub_1BE04D494();
  return sub_1BE04D774();
}

uint64_t type metadata accessor for SEStorageCleanupSummaryHeaderView.Bar()
{
  result = qword_1EBD3BC28;
  if (!qword_1EBD3BC28)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1BD19CC88(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1BD19CCF0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SEStorageCleanupSummaryHeaderView.Bar();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1BD19CD64()
{
  result = qword_1EBD3BB70;
  if (!qword_1EBD3BB70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3BB60);
    sub_1BD19D410(&qword_1EBD3BB78, MEMORY[0x1E695B190]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3BB70);
  }

  return result;
}

unint64_t sub_1BD19CE20()
{
  result = qword_1EBD3BB88;
  if (!qword_1EBD3BB88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3BB80);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3BB88);
  }

  return result;
}

unint64_t sub_1BD19CEB4()
{
  result = qword_1EBD3BBB0;
  if (!qword_1EBD3BBB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3BBA8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3BBB8);
    sub_1BE04D554();
    swift_getOpaqueTypeConformance2();
    sub_1BD0DDEBC();
    swift_getOpaqueTypeConformance2();
    sub_1BD19CFE4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3BBB0);
  }

  return result;
}

unint64_t sub_1BD19CFE4()
{
  result = qword_1EBD3BBC0;
  if (!qword_1EBD3BBC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3BBC8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3BBD0);
    sub_1BE04D6C4();
    swift_getOpaqueTypeConformance2();
    sub_1BD0DDEBC();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3BBC0);
  }

  return result;
}

uint64_t sub_1BD19D104(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1BD19D16C()
{
  result = qword_1EBD4E8F0;
  if (!qword_1EBD4E8F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3E090);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4E8F0);
  }

  return result;
}

uint64_t sub_1BD19D218()
{
  result = sub_1BE04AFE4();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_1BD19D29C()
{
  result = qword_1EBD3BC38;
  if (!qword_1EBD3BC38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3BC40);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3BAD8);
    sub_1BD0DE4F4(&qword_1EBD3BAF0, &qword_1EBD3BAD8);
    swift_getOpaqueTypeConformance2();
    sub_1BD19D410(&qword_1EBD52210, MEMORY[0x1E697CBE8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3BC38);
  }

  return result;
}

uint64_t sub_1BD19D410(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1BD19D458()
{

  sub_1BD0D4534(v0 + 40);

  return swift_deallocClassInstance();
}

id sub_1BD19D4D4(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_1BE04D214();
  v7 = *(v6 - 8);
  v9 = MEMORY[0x1EEE9AC00](v6, v8);
  v11 = &v72 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v9, v12);
  v15 = &v72 - v14;
  v17 = MEMORY[0x1EEE9AC00](v13, v16);
  v19 = &v72 - v18;
  v21 = MEMORY[0x1EEE9AC00](v17, v20);
  v23 = MEMORY[0x1EEE9AC00](v21, v22);
  v25 = &v72 - v24;
  MEMORY[0x1EEE9AC00](v23, v26);
  v29 = &v72 - v28;
  if (a1)
  {
    v72 = v27;
    v73 = a2;
    type metadata accessor for BankConnectEntryPointFlowItem();
    v30 = swift_dynamicCastClass();
    if (v30)
    {
      v31 = *(v30 + OBJC_IVAR____TtC9PassKitUI29BankConnectEntryPointFlowItem_manager);
      v32 = a1;
      v33 = v6;
      v34 = v7;
      v35 = v3[4];
      v3[4] = v31;
      v36 = v32;
      swift_unknownObjectRetain();
      v37 = v31;

      v7 = v34;
      v6 = v33;
      v38 = v3[4];
      if (v38)
      {
        goto LABEL_4;
      }
    }

    else
    {
      v36 = a1;
      swift_unknownObjectRetain();
      v38 = v3[4];
      if (v38)
      {
LABEL_4:
        Class = object_getClass(v36);
        v40 = v38;
        v41 = v40;
        if (Class == _TtC9PassKitUIP33_A697725AEF8635EEA64B06DA8686449513AlertFlowItem)
        {
          sub_1BE04D0B4();
          v56 = sub_1BE04D204();
          v57 = sub_1BE052C54();
          if (os_log_type_enabled(v56, v57))
          {
            v58 = swift_slowAlloc();
            *v58 = 0;
            _os_log_impl(&dword_1BD026000, v56, v57, "Bank Connect error alert was dismissed, completing authorization flow.", v58, 2u);
            MEMORY[0x1BFB45F20](v58, -1, -1);
            swift_unknownObjectRelease();
          }

          else
          {

            swift_unknownObjectRelease();
          }

          (*(v7 + 8))(v29, v6);
        }

        else
        {
          if ([v40 hasErrorAlertToDisplay])
          {
            sub_1BE04D0B4();
            v42 = sub_1BE04D204();
            v43 = sub_1BE052C24();
            if (os_log_type_enabled(v42, v43))
            {
              v44 = swift_slowAlloc();
              *v44 = 0;
              _os_log_impl(&dword_1BD026000, v42, v43, "Going to display a Bank Connect error alert.", v44, 2u);
              MEMORY[0x1BFB45F20](v44, -1, -1);
            }

            (*(v7 + 8))(v25, v6);
            type metadata accessor for AlertFlowItem();
            v45 = swift_allocObject();
            v45[4] = 0;
            swift_unknownObjectWeakInit();
            swift_unknownObjectRelease();
            result = v45;
            v45[5] = 0xD000000000000018;
            v45[6] = 0x80000001BE11C280;
            v45[2] = v41;
            return result;
          }

          v76 = v36;
          v77 = v73;
          swift_unknownObjectRetain();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3BC48);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3BC50);
          if (swift_dynamicCast())
          {
            sub_1BD043990(v74, v78);
            v59 = v79;
            v60 = v80;
            __swift_project_boxed_opaque_existential_1(v78, v79);
            v61 = [v41 nextStepAfterStep_];
            if (v61)
            {
              v62 = v61;
              v63 = objc_allocWithZone(type metadata accessor for BankConnectAuthorizationStepFlowItem());
              v64 = sub_1BD1E5C80(v41, v62);
              swift_unknownObjectRelease();

              __swift_destroy_boxed_opaque_existential_0(v78);
              return v64;
            }

            v68 = v72;
            sub_1BE04D0B4();
            v69 = sub_1BE04D204();
            v70 = sub_1BE052C34();
            if (os_log_type_enabled(v69, v70))
            {
              v71 = swift_slowAlloc();
              *v71 = 0;
              _os_log_impl(&dword_1BD026000, v69, v70, "The next step could not be determined, completing the authorization flow.", v71, 2u);
              MEMORY[0x1BFB45F20](v71, -1, -1);
              swift_unknownObjectRelease();
            }

            else
            {

              swift_unknownObjectRelease();
            }

            (*(v7 + 8))(v68, v6);
            __swift_destroy_boxed_opaque_existential_0(v78);
          }

          else
          {
            v75 = 0;
            memset(v74, 0, sizeof(v74));
            sub_1BD19E050(v74);
            sub_1BE04D0B4();
            v65 = sub_1BE04D204();
            v66 = sub_1BE052C34();
            if (os_log_type_enabled(v65, v66))
            {
              v67 = swift_slowAlloc();
              *v67 = 0;
              _os_log_impl(&dword_1BD026000, v65, v66, "Unrecognized flow item detected in the Bank Connect flow section.", v67, 2u);
              MEMORY[0x1BFB45F20](v67, -1, -1);
              swift_unknownObjectRelease();
            }

            else
            {

              swift_unknownObjectRelease();
            }

            (*(v7 + 8))(v19, v6);
          }
        }

        return 0;
      }
    }

    sub_1BE04D0B4();
    v53 = sub_1BE04D204();
    v54 = sub_1BE052C34();
    if (os_log_type_enabled(v53, v54))
    {
      v55 = swift_slowAlloc();
      *v55 = 0;
      MEMORY[0x1BFB45F20](v55, -1, -1);
      swift_unknownObjectRelease();
    }

    else
    {

      swift_unknownObjectRelease();
    }

    (*(v7 + 8))(v15, v6);
    return 0;
  }

  sub_1BE04D0B4();
  v47 = sub_1BE04D204();
  v48 = sub_1BE052C24();
  if (os_log_type_enabled(v47, v48))
  {
    v49 = swift_slowAlloc();
    *v49 = 0;
    _os_log_impl(&dword_1BD026000, v47, v48, "Attempting to display a Bank Connect entry point flow item.", v49, 2u);
    MEMORY[0x1BFB45F20](v49, -1, -1);
  }

  (*(v7 + 8))(v11, v6);
  v50 = v3[2];
  v51 = v3[3];
  v52 = objc_allocWithZone(type metadata accessor for BankConnectEntryPointFlowItem());
  sub_1BE048964();
  return sub_1BDA54B44(v50, v51);
}

uint64_t sub_1BD19DC7C()
{
  v1 = *(v0 + 56);
  sub_1BE048C84();
  return v1;
}

uint64_t sub_1BD19DCAC(uint64_t a1, uint64_t a2)
{
  *(v2 + 48) = a2;
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

void sub_1BD19DCF0(void (*a1)(void), uint64_t a2)
{
  v5 = sub_1BE04D214();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = aBlock - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v2 + 16);
  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  *(v11 + 24) = a2;
  aBlock[4] = sub_1BD19E0B8;
  aBlock[5] = v11;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BD126964;
  aBlock[3] = &block_descriptor_14;
  v12 = _Block_copy(aBlock);
  sub_1BE048964();

  v13 = [v10 errorAlertWithCompletion_];
  _Block_release(v12);
  if (v13)
  {
    if (swift_unknownObjectWeakLoadStrong())
    {
      v14 = *(v2 + 32);
      ObjectType = swift_getObjectType();
      (*(v14 + 24))(v13, ObjectType, v14);

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }

  else
  {
    sub_1BE04D0B4();
    v16 = sub_1BE04D204();
    v17 = sub_1BE052C34();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_1BD026000, v16, v17, "Failed to create an error alert.", v18, 2u);
      MEMORY[0x1BFB45F20](v18, -1, -1);
    }

    (*(v6 + 8))(v9, v5);
    a1(0);
  }
}

uint64_t sub_1BD19DF64()
{
  sub_1BD0D4534(v0 + 24);

  return swift_deallocClassInstance();
}

uint64_t sub_1BD19DFD0()
{
  v1 = *(v0 + 40);
  sub_1BE048C84();
  return v1;
}

uint64_t sub_1BD19E000(uint64_t a1, uint64_t a2)
{
  *(v2 + 32) = a2;
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

uint64_t sub_1BD19E050(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3BC58);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1BD19E12C()
{
  result = sub_1BE04B2F4();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_1BD19E1E0()
{
  sub_1BD0F5C4C();
  if (v0 <= 0x3F)
  {
    sub_1BE0493F4();
    if (v1 <= 0x3F)
    {
      sub_1BD19E27C();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1BD19E27C()
{
  if (!qword_1EBD3BC80)
  {
    sub_1BE049B04();
    sub_1BE0493F4();
    sub_1BD1A0300(&qword_1EBD3A338, MEMORY[0x1E6967AD0]);
    v0 = sub_1BE052274();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBD3BC80);
    }
  }
}

uint64_t sub_1BD19E328@<X0>(uint64_t *a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38DB8);
  v3 = sub_1BD1A0300(&qword_1EBD52550, MEMORY[0x1E6969530]);
  result = MEMORY[0x1BFB3FC10](v2, v3);
  *a1 = result;
  return result;
}

uint64_t sub_1BD19E3AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1BE04AF64();
  sub_1BD1A0300(&qword_1EBD3E460, MEMORY[0x1E6969530]);
  if ((sub_1BE052334() & 1) == 0)
  {
    return 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38DB8);
  if ((sub_1BE052334() & 1) == 0 || (sub_1BE0493B4() & 1) == 0)
  {
    return 0;
  }

  v6 = *(a3 + 24);
  v7 = *(a1 + v6);
  v8 = *(a2 + v6);

  return sub_1BD40B494(v7, v8);
}

uint64_t sub_1BD19E4C4(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v178 = a5;
  v181 = a4;
  v8 = sub_1BE049734();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = &v134 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13, v14);
  v182 = &v134 - v15;
  v180 = sub_1BE0493F4();
  v162 = *(v180 - 8);
  MEMORY[0x1EEE9AC00](v180, v16);
  v137 = &v134 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18, v19);
  v170 = &v134 - v20;
  v158 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38DB8);
  MEMORY[0x1EEE9AC00](v158, v21);
  v173 = &v134 - v22;
  v148 = type metadata accessor for FinanceKitDailyCategorySpendingAggregator.PerCalendarUnitCategorySpending(0);
  v147 = *(v148 - 8);
  MEMORY[0x1EEE9AC00](v148, v23);
  v172 = &v134 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v174 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3BC88);
  v138 = *(v174 - 8);
  MEMORY[0x1EEE9AC00](v174, v25);
  v176 = &v134 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27, v28);
  v153 = &v134 - v29;
  v177 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3BC90);
  MEMORY[0x1EEE9AC00](v177, v30);
  v155 = &v134 - v31;
  v32 = sub_1BE04B2F4();
  MEMORY[0x1EEE9AC00](v32 - 8, v33);
  v175 = &v134 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v169 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD38810);
  MEMORY[0x1EEE9AC00](v169, v35);
  v157 = &v134 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v37, v38);
  v156 = &v134 - v39;
  v40 = sub_1BE04AF64();
  v165 = *(v40 - 1);
  MEMORY[0x1EEE9AC00](v40, v41);
  v152 = &v134 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v43, v44);
  v159 = &v134 - v45;
  v171 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD387B0);
  MEMORY[0x1EEE9AC00](v171, v46);
  v179 = (&v134 - v47);
  v48 = sub_1BE04B2D4();
  v49 = *(v48 - 8);
  MEMORY[0x1EEE9AC00](v48, v50);
  v52 = (&v134 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0));
  v161 = sub_1BE04D734();
  v160 = *(v161 - 8);
  v54 = MEMORY[0x1EEE9AC00](v161, v53);
  v135 = &v134 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0);
  v187 = a1;
  v56 = *(v49 + 16);
  v167 = v52;
  v56(v52, v178, v48, v54);
  v154 = a1;
  sub_1BE048C84();
  v57 = v181;
  v58 = v159;
  sub_1BE04ADD4();
  v151 = sub_1BD1A0300(&qword_1EBD525D0, MEMORY[0x1E6969530]);
  if (sub_1BE052314())
  {
    v59 = v165;
    v60 = v156;
    (*(v165 + 16))(v156, v181, v40);
    v61 = *(v169 + 48);
    v164 = *(v59 + 32);
    v164(v60 + v61, v58, v40);
    v62 = v157;
    sub_1BD1A0290(v60, v157);
    v181 = *(v169 + 48);
    v164(v179, v62, v40);
    v163 = *(v59 + 8);
    v163(v181 + v62, v40);
    sub_1BD0DE204(v60, v62, &unk_1EBD38810);
    v63 = v179 + *(v171 + 9);
    v64 = v62 + *(v169 + 48);
    v149 = v59 + 32;
    v164(v63, v64, v40);
    v150 = v40;
    v165 = v59 + 8;
    v163(v62, v40);
    sub_1BE04B1E4();
    v65 = v135;
    sub_1BE04D724();
    v66 = v155;
    (*(v160 + 16))(v155, v65, v161);
    v67 = *(v177 + 36);
    v68 = sub_1BD1A0300(&qword_1EBD3BC98, MEMORY[0x1E695B288]);
    sub_1BE052AD4();
    v69 = v66;
    sub_1BE052B04();
    v70 = v67;
    v71 = *&v66[v67];
    v175 = MEMORY[0x1E69E7CC0];
    v72 = v174;
    v73 = v68;
    v74 = v161;
    v75 = v160;
    if (v71 == v185[0])
    {
LABEL_4:
      v76 = v75;
      sub_1BD0DE53C(v69, &qword_1EBD3BC90);
      (*(v76 + 8))(v135, v74);

      return v175;
    }

    v177 = 0;
    v146 = (v138 + 2);
    v145 = (v138 + 4);
    v166 = v9 + 16;
    v136 = (v162 + 8);
    v167 = (v9 + 8);
    v139 = (v162 + 32);
    ++v138;
    v175 = MEMORY[0x1E69E7CC0];
    v168 = v9;
    v144 = a3;
    v143 = a2;
    v142 = v12;
    v141 = v70;
    v140 = v73;
    while (1)
    {
      v78 = sub_1BE052B34();
      v79 = v153;
      (*v146)(v153);
      v78(v185, 0);
      sub_1BE052B14();
      v80 = v176;
      v81 = (*v145)(v176, v79, v72);
      MEMORY[0x1EEE9AC00](v81, v82);
      *(&v134 - 2) = v80;
      v184 = MEMORY[0x1E69E7CC0];
      v57 = v177;
      v83 = sub_1BD1A0558(&v187, sub_1BD1A0348, (&v134 - 4), &v184);
      v177 = v57;
      v40 = v187;
      v84 = v187[2];
      if (v83 > v84)
      {
        break;
      }

      v85 = v83;
      if (v83 < 0)
      {
        goto LABEL_36;
      }

      v86 = v83;
      if (__OFADD__(v84, v83 - v84))
      {
        goto LABEL_37;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (isUniquelyReferenced_nonNull_native && v86 <= (v40[3] >> 1))
      {
        v88 = v40;
      }

      else
      {
        if (v84 <= v86)
        {
          v89 = v86;
        }

        else
        {
          v89 = v84;
        }

        v88 = sub_1BD1D7BFC(isUniquelyReferenced_nonNull_native, v89, 1, v40);
        v187 = v88;
      }

      sub_1BD1DD3A0(v85, v84, 0);
      v154 = v88;
      v187 = v88;
      v181 = v184;
      v90 = v159;
      sub_1BE04D514();
      v91 = v152;
      v92 = v90;
      sub_1BE04D524();
      v40 = v150;
      if ((sub_1BE052314() & 1) == 0)
      {
        goto LABEL_38;
      }

      v171 = &v134;
      v93 = v156;
      v94 = v164;
      v164(v156, v92, v40);
      v95 = v169;
      v94(v93 + *(v169 + 48), v91, v40);
      v96 = v157;
      sub_1BD1A0290(v93, v157);
      v97 = *(v95 + 48);
      v98 = v173;
      v94(v173, v96, v40);
      v99 = v163;
      v163((v96 + v97), v40);
      sub_1BD0DE204(v93, v96, &unk_1EBD38810);
      v94(v98 + *(v158 + 36), (v96 + *(v95 + 48)), v40);
      v99(v96, v40);
      v185[0] = MEMORY[0x1BFB403C0](0);
      v185[1] = v100;
      v186 = v101;
      v102 = v181[2];
      if (v102)
      {
        v103 = v181 + ((*(v168 + 80) + 32) & ~*(v168 + 80));
        v104 = *(v168 + 16);
        v178 = *(v168 + 72);
        v179 = v104;
        v162 = v102;
        v105 = v102;
        v106 = v182;
        v107 = v137;
        v108 = v167;
        v109 = v136;
        do
        {
          v179(v106, v103, v8);
          sub_1BE049704();
          v110 = sub_1BE0493C4();
          v112 = v111;
          v113 = v8;
          v115 = v114;
          (*v109)(v107, v180);
          v116 = v110;
          v106 = v182;
          v117 = v115;
          v8 = v113;
          MEMORY[0x1BFB40450](v185, v116, v112, v117);
          (*v108)(v106, v113);
          v103 += v178;
          --v105;
        }

        while (v105);
        v118 = v144;
        v119 = v143;
        v12 = v142;
        v102 = v162;
      }

      else
      {
        v119 = v143;
        v118 = v144;
        v12 = v142;
      }

      sub_1BE048C84();
      v120 = v170;
      sub_1BE049404();
      v121 = sub_1BD1AB8A0(MEMORY[0x1E69E7CC0]);
      v183 = v121;
      if (v102)
      {
        v122 = v102;
        v123 = 0;
        v124 = v168;
        v57 = v177;
        v40 = v167;
        v125 = v181;
        while (v123 < v125[2])
        {
          (*(v124 + 16))(v12, v125 + ((*(v124 + 80) + 32) & ~*(v124 + 80)) + *(v124 + 72) * v123, v8);
          sub_1BD19F718(&v183, v12, v119, v118);
          if (v57)
          {
            goto LABEL_40;
          }

          ++v123;
          (*v40)(v12, v8);
          v125 = v181;
          if (v122 == v123)
          {
            v177 = 0;
            v126 = v183;
            v120 = v170;
            goto LABEL_28;
          }
        }

        __break(1u);
        break;
      }

      v126 = v121;
LABEL_28:

      v127 = v172;
      sub_1BD0DE204(v173, v172, &qword_1EBD38DB8);
      v128 = v148;
      (*v139)(v127 + *(v148 + 20), v120, v180);
      *(v127 + *(v128 + 24)) = v126;
      v129 = v175;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v129 = sub_1BD1D7C24(0, *(v129 + 2) + 1, 1, v129);
      }

      v130 = v176;
      v69 = v155;
      v132 = *(v129 + 2);
      v131 = *(v129 + 3);
      if (v132 >= v131 >> 1)
      {
        v129 = sub_1BD1D7C24(v131 > 1, v132 + 1, 1, v129);
      }

      *(v129 + 2) = v132 + 1;
      v133 = (*(v147 + 80) + 32) & ~*(v147 + 80);
      v175 = v129;
      sub_1BD1A09C4(v172, &v129[v133 + *(v147 + 72) * v132]);
      v72 = v174;
      (*v138)(v130, v174);
      v74 = v161;
      sub_1BE052B04();
      v75 = v160;
      if (*(v69 + v141) == v185[0])
      {
        goto LABEL_4;
      }
    }

    __break(1u);
LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
  }

  __break(1u);
LABEL_40:

  (*v40)(v12, v8);

  __break(1u);
  return result;
}

uint64_t sub_1BD19F61C()
{
  v0 = sub_1BE04AF64();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BE049724();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3BC88);
  v5 = sub_1BE04D534();
  (*(v1 + 8))(v4, v0);
  return v5 & 1;
}

uint64_t sub_1BD19F718(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v134 = a4;
  v133 = a3;
  v149 = a1;
  v4 = sub_1BE0493F4();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v145 = v117 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v132 = v117 - v10;
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = v117 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3BCA0);
  MEMORY[0x1EEE9AC00](v15 - 8, v16);
  v18 = v117 - v17;
  v136 = sub_1BE0497B4();
  v19 = *(v136 - 8);
  MEMORY[0x1EEE9AC00](v136, v20);
  v150 = v117 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22, v23);
  v120 = v117 - v24;
  v151 = sub_1BE049B04();
  v25 = *(v151 - 8);
  MEMORY[0x1EEE9AC00](v151, v26);
  v148 = v117 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28, v29);
  v146 = v117 - v30;
  MEMORY[0x1EEE9AC00](v31, v32);
  v141 = v117 - v33;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3BCA8);
  MEMORY[0x1EEE9AC00](v34 - 8, v35);
  v137 = v117 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v37, v38);
  v135 = v117 - v39;
  v40 = sub_1BE049714();
  v41 = 0;
  v43 = v40 + 64;
  v42 = *(v40 + 64);
  v122 = v40;
  v44 = 1 << *(v40 + 32);
  v45 = -1;
  if (v44 < 64)
  {
    v45 = ~(-1 << v44);
  }

  v46 = v45 & v42;
  v47 = (v44 + 63) >> 6;
  v147 = (v25 + 16);
  v119 = v19 + 16;
  v143 = (v19 + 32);
  v144 = (v25 + 32);
  v129 = (v5 + 56);
  v118 = (v5 + 16);
  v128 = (v5 + 48);
  v127 = (v5 + 8);
  v139 = v25;
  v140 = (v5 + 32);
  v126 = (v25 + 8);
  v121 = v19;
  v125 = (v19 + 8);
  v138 = v5;
  v117[1] = v5 + 40;
  v130 = v18;
  v48 = v136;
  v124 = v40 + 64;
  v123 = v47;
  v131 = v14;
  v142 = v4;
  while (v46)
  {
    v51 = v41;
LABEL_16:
    v56 = __clz(__rbit64(v46));
    v46 &= v46 - 1;
    v57 = v56 | (v51 << 6);
    v58 = v122;
    v59 = v139;
    v60 = v151;
    (*(v139 + 16))(v141, *(v122 + 48) + *(v139 + 72) * v57, v151);
    v61 = v121;
    v62 = v120;
    (*(v121 + 16))(v120, *(v58 + 56) + *(v121 + 72) * v57, v48);
    v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3BCB0);
    v64 = *(v63 + 48);
    v65 = *(v59 + 32);
    v66 = v137;
    v65(v137, v141, v60);
    v67 = &v66[v64];
    v55 = v66;
    (*(v61 + 32))(v67, v62, v48);
    (*(*(v63 - 8) + 56))(v66, 0, 1, v63);
    v54 = v146;
    v4 = v142;
LABEL_17:
    v68 = v55;
    v69 = v135;
    sub_1BD0DE204(v68, v135, &qword_1EBD3BCA8);
    v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3BCB0);
    if ((*(*(v70 - 8) + 48))(v69, 1, v70) == 1)
    {
    }

    v71 = *(v70 + 48);
    (*v144)(v54, v69, v151);
    (*v143)(v150, v69 + v71, v48);
    v72 = *v149;
    if (*(*v149 + 16))
    {
      v73 = sub_1BD148E9C(v54);
      v74 = v127;
      v75 = v131;
      v76 = v130;
      if (v77)
      {
        (*(v138 + 16))(v130, *(v72 + 56) + *(v138 + 72) * v73, v4);
        v78 = 0;
      }

      else
      {
        v78 = 1;
      }
    }

    else
    {
      v78 = 1;
      v74 = v127;
      v75 = v131;
      v76 = v130;
    }

    (*v129)(v76, v78, 1, v4);
    if ((*v128)(v76, 1, v4))
    {
      sub_1BD0DE53C(v76, &qword_1EBD3BCA0);
      v79 = MEMORY[0x1BFB403C0](0);
      v81 = v80;
      v83 = v82;
    }

    else
    {
      (*v118)(v75, v76, v4);
      sub_1BD0DE53C(v76, &qword_1EBD3BCA0);
      v79 = sub_1BE0493C4();
      v81 = v84;
      v83 = v85;
      (*v74)(v75, v4);
    }

    v152[0] = v79;
    v152[1] = v81;
    v153 = v83;
    sub_1BE049784();
    v86 = sub_1BE0493C4();
    v88 = v87;
    v90 = v89;
    (*v74)(v75, v4);
    MEMORY[0x1BFB40450](v152, v86, v88, v90);
    v91 = v4;
    v92 = v148;
    v93 = *v147;
    (*v147)(v148, v54, v151);
    sub_1BE048C84();
    v94 = v132;
    sub_1BE049404();
    v95 = *v140;
    (*v140)(v145, v94, v91);
    v96 = v149;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v154 = *v96;
    v98 = v154;
    v100 = sub_1BD148E9C(v92);
    v101 = v98[2];
    v102 = (v99 & 1) == 0;
    v103 = v101 + v102;
    if (__OFADD__(v101, v102))
    {
      goto LABEL_40;
    }

    v104 = v99;
    if (v98[3] >= v103)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        v107 = v154;
        if (v99)
        {
          goto LABEL_4;
        }
      }

      else
      {
        sub_1BD5066F0();
        v107 = v154;
        if (v104)
        {
          goto LABEL_4;
        }
      }
    }

    else
    {
      sub_1BD500BC4(v103, isUniquelyReferenced_nonNull_native);
      v105 = sub_1BD148E9C(v148);
      if ((v104 & 1) != (v106 & 1))
      {
        goto LABEL_42;
      }

      v100 = v105;
      v107 = v154;
      if (v104)
      {
LABEL_4:
        v4 = v142;
        (*(v138 + 40))(v107[7] + *(v138 + 72) * v100, v145, v142);
        v49 = *v126;
        v50 = v151;
        (*v126)(v148, v151);
        v48 = v136;
        (*v125)(v150, v136);
        v49(v146, v50);
        goto LABEL_5;
      }
    }

    v107[(v100 >> 6) + 8] |= 1 << v100;
    v108 = v139;
    v109 = v148;
    v110 = v151;
    v93(v107[6] + *(v139 + 72) * v100, v148, v151);
    v4 = v142;
    v95((v107[7] + *(v138 + 72) * v100), v145, v142);
    v111 = *(v108 + 8);
    v111(v109, v110);
    v48 = v136;
    (*v125)(v150, v136);
    v111(v146, v110);
    v112 = v107[2];
    v113 = __OFADD__(v112, 1);
    v114 = v112 + 1;
    if (v113)
    {
      goto LABEL_41;
    }

    v107[2] = v114;
LABEL_5:
    *v149 = v107;
    v43 = v124;
    v47 = v123;
  }

  if (v47 <= v41 + 1)
  {
    v52 = v41 + 1;
  }

  else
  {
    v52 = v47;
  }

  v53 = v52 - 1;
  v54 = v146;
  v55 = v137;
  while (1)
  {
    v51 = v41 + 1;
    if (__OFADD__(v41, 1))
    {
      break;
    }

    if (v51 >= v47)
    {
      v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3BCB0);
      (*(*(v115 - 8) + 56))(v55, 1, 1, v115);
      v46 = 0;
      v41 = v53;
      goto LABEL_17;
    }

    v46 = *(v43 + 8 * v51);
    ++v41;
    if (v46)
    {
      v41 = v51;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  result = sub_1BE053C14();
  __break(1u);
  return result;
}

uint64_t sub_1BD1A0290(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD38810);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BD1A0300(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1BD1A0350(uint64_t a1, uint64_t (*a2)(uint64_t, __n128), uint64_t a3, void **a4)
{
  v29 = sub_1BE049734();
  v8 = *(v29 - 8);
  v10.n128_f64[0] = MEMORY[0x1EEE9AC00](v29, v9);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(a1 + 16);
  if (!v13)
  {
    return 0;
  }

  v27 = a4;
  v28 = v4;
  v14 = 0;
  v26 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v15 = a1 + v26;
  v16 = *(v8 + 72);
  while ((a2(v15, v10) & 1) == 0)
  {
    ++v14;
    v15 += v16;
    if (v13 == v14)
    {
      return 0;
    }
  }

  v17 = v15;
  v18 = v29;
  (*(v8 + 16))(v12, v17, v29);
  v19 = v27;
  v20 = *v27;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v19 = v20;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v20 = sub_1BD1D7BFC(0, v20[2] + 1, 1, v20);
    *v27 = v20;
  }

  v23 = v20[2];
  v22 = v20[3];
  if (v23 >= v22 >> 1)
  {
    v20 = sub_1BD1D7BFC(v22 > 1, v23 + 1, 1, v20);
    *v27 = v20;
  }

  v20[2] = v23 + 1;
  (*(v8 + 32))(v20 + v26 + v23 * v16, v12, v18);
  return v14;
}

uint64_t sub_1BD1A0558(uint64_t *a1, uint64_t (*a2)(char *), uint64_t a3, void **a4)
{
  v8 = sub_1BE049734();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v10);
  v56 = &v50 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = &v50 - v14;
  MEMORY[0x1EEE9AC00](v16, v17);
  v19 = &v50 - v18;
  MEMORY[0x1EEE9AC00](v20, v21);
  v23 = &v50 - v22;
  v55 = a1;
  v24 = *a1;
  v63 = a2;
  v25 = a2;
  v26 = a4;
  v27 = v68;
  result = sub_1BD1A0350(v24, v25, a3, a4);
  if (!v27)
  {
    v66 = v23;
    v61 = v19;
    v50 = 0;
    if (v29)
    {
      return *(v24 + 16);
    }

    v53 = v15;
    v65 = result;
    v30 = result + 1;
    if (!__OFADD__(result, 1))
    {
      v31 = v24;
      v33 = (v24 + 16);
      v32 = *(v24 + 16);
      v54 = v26;
      if (v30 == v32)
      {
        return v65;
      }

      v59 = v8;
      v60 = (v9 + 8);
      v51 = (v9 + 40);
      v52 = (v9 + 32);
      v62 = v9 + 16;
      v57 = v9;
      v58 = a3;
      while (v30 < v32)
      {
        v34 = *(v9 + 80);
        v68 = v31;
        v67 = (v34 + 32) & ~v34;
        v35 = v31 + v67;
        v36 = *(v9 + 72);
        v37 = *(v9 + 16);
        v64 = v36 * v30;
        v38 = v31 + v67 + v36 * v30;
        v39 = v66;
        v37(v66, v38, v8);
        if (v63(v39))
        {
          v37(v61, v39, v8);
          v40 = v54;
          v41 = *v54;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *v40 = v41;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v41 = sub_1BD1D7BFC(0, v41[2] + 1, 1, v41);
            *v54 = v41;
          }

          v9 = v57;
          v31 = v68;
          v44 = v41[2];
          v43 = v41[3];
          if (v44 >= v43 >> 1)
          {
            v41 = sub_1BD1D7BFC(v43 > 1, v44 + 1, 1, v41);
            *v54 = v41;
          }

          v41[2] = v44 + 1;
          v8 = v59;
          (*v52)(v41 + v67 + v44 * v36, v61, v59);
          result = (*v60)(v66, v8);
        }

        else
        {
          result = (*v60)(v39, v8);
          v45 = v65;
          if (v30 == v65)
          {
            v8 = v59;
            v9 = v57;
            v31 = v68;
          }

          else
          {
            if ((v65 & 0x8000000000000000) != 0)
            {
              goto LABEL_28;
            }

            v46 = *v33;
            if (v65 >= *v33)
            {
              goto LABEL_29;
            }

            v47 = v36 * v65;
            v8 = v59;
            result = (v37)(v53, &v35[v36 * v65], v59);
            if (v30 >= v46)
            {
              goto LABEL_30;
            }

            v37(v56, &v35[v64], v8);
            v31 = v68;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v31 = sub_1BD4FFF18(v31);
            }

            v9 = v57;
            v48 = v31 + v67;
            v49 = *v51;
            result = (*v51)(v31 + v67 + v47, v56, v8);
            if (v30 >= v31[2])
            {
              goto LABEL_31;
            }

            result = v49(&v48[v64], v53, v8);
            *v55 = v31;
            v45 = v65;
          }

          v65 = v45 + 1;
        }

        ++v30;
        v33 = v31 + 2;
        v32 = v31[2];
        if (v30 == v32)
        {
          return v65;
        }
      }

      __break(1u);
LABEL_28:
      __break(1u);
LABEL_29:
      __break(1u);
LABEL_30:
      __break(1u);
LABEL_31:
      __break(1u);
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1BD1A09C4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FinanceKitDailyCategorySpendingAggregator.PerCalendarUnitCategorySpending(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BD1A0A28()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t get_enum_tag_for_layout_string_xRi_zRi0_zlyxIsegr_Sg(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 __swift_memcpy104_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  *(a1 + 96) = *(a2 + 12);
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_1BD1A0AB4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 104))
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

uint64_t sub_1BD1A0AFC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 88) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 104) = 1;
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

    *(result + 104) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

double sub_1BD1A0BB0@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char a7@<W6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v19 = sub_1BE051C54();
  v20 = 18.0;
  if (v19)
  {
    v20 = 10.0;
  }

  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  *(a9 + 40) = a6;
  *(a9 + 48) = a7;
  *(a9 + 56) = a8;
  *(a9 + 64) = a10;
  *(a9 + 72) = 0x4032000000000000;
  *(a9 + 80) = v20;
  result = 68.0;
  *(a9 + 88) = xmmword_1BE0B7110;
  return result;
}

uint64_t sub_1BD1A0C54@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v104 = a1;
  v111 = a2;
  v110 = sub_1BE04FF64();
  v109 = *(v110 - 8);
  MEMORY[0x1EEE9AC00](v110, v2);
  v108 = &v69 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v107 = sub_1BE04F6E4();
  v106 = *(v107 - 8);
  MEMORY[0x1EEE9AC00](v107, v4);
  v105 = &v69 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BE04F9B4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3BCB8);
  sub_1BE04F9B4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3BCC0);
  swift_getTupleTypeMetadata3();
  sub_1BE051E34();
  swift_getWitnessTable();
  v6 = sub_1BE051774();
  WitnessTable = swift_getWitnessTable();
  v127 = v6;
  v128 = WitnessTable;
  swift_getOpaqueTypeMetadata2();
  v8 = sub_1BE04EBD4();
  v127 = v6;
  v128 = WitnessTable;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v134 = MEMORY[0x1E697E5D8];
  v112 = MEMORY[0x1E697E858];
  v9 = swift_getWitnessTable();
  v10 = MEMORY[0x1E6981CD8];
  v127 = v6;
  v128 = MEMORY[0x1E6981CD8];
  v129 = v8;
  v130 = WitnessTable;
  v11 = MEMORY[0x1E6981CD0];
  v131 = MEMORY[0x1E6981CD0];
  v132 = v9;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v102 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2, v12);
  v99 = &v69 - v13;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EBD491A0);
  v14 = sub_1BE04EBD4();
  v101 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14, v15);
  v96 = &v69 - v16;
  v127 = v6;
  v128 = v10;
  v129 = v8;
  v130 = WitnessTable;
  v131 = v11;
  v132 = v9;
  v17 = swift_getOpaqueTypeConformance2();
  v90 = v17;
  v18 = sub_1BD0DE4F4(&qword_1EBD366E0, &unk_1EBD491A0);
  v125 = v17;
  v126 = v18;
  v19 = swift_getWitnessTable();
  v127 = v14;
  v128 = v19;
  v73 = v14;
  v20 = v19;
  v74 = v19;
  v86 = swift_getOpaqueTypeMetadata2();
  v94 = *(v86 - 8);
  MEMORY[0x1EEE9AC00](v86, v21);
  v82 = &v69 - v22;
  sub_1BE0500D4();
  v23 = sub_1BE04EBD4();
  v93 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23, v24);
  v79 = &v69 - v25;
  v127 = v14;
  v128 = v20;
  v26 = swift_getOpaqueTypeConformance2();
  v72 = v26;
  v103 = sub_1BD1A36A0(&qword_1EBD52210, MEMORY[0x1E697CBE8]);
  v123 = v26;
  v124 = v103;
  v76 = swift_getWitnessTable();
  v127 = v23;
  v128 = v76;
  v83 = MEMORY[0x1E697D248];
  v78 = swift_getOpaqueTypeMetadata2();
  v85 = *(v78 - 8);
  MEMORY[0x1EEE9AC00](v78, v78);
  v70 = &v69 - v27;
  v28 = sub_1BE04EBD4();
  v88 = *(v28 - 8);
  MEMORY[0x1EEE9AC00](v28, v29);
  v71 = &v69 - v30;
  v80 = sub_1BE04EBD4();
  v89 = *(v80 - 8);
  MEMORY[0x1EEE9AC00](v80, v80);
  v75 = &v69 - v31;
  v84 = sub_1BE04EBD4();
  v95 = *(v84 - 8);
  MEMORY[0x1EEE9AC00](v84, v84);
  v77 = &v69 - v32;
  v91 = sub_1BE04EBD4();
  v97 = *(v91 - 8);
  MEMORY[0x1EEE9AC00](v91, v91);
  v81 = &v69 - v33;
  v34 = sub_1BE04EBD4();
  v98 = *(v34 - 8);
  v36 = MEMORY[0x1EEE9AC00](v34, v35);
  v87 = &v69 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v36, v38);
  v92 = &v69 - v39;
  v40 = v99;
  sub_1BD1A1B64(v104);
  sub_1BE051224();
  v41 = v96;
  v42 = OpaqueTypeMetadata2;
  sub_1BE050B44();

  (*(v102 + 8))(v40, v42);
  v43 = v82;
  v44 = v73;
  sub_1BE050EA4();
  (*(v101 + 8))(v41, v44);
  v45 = v105;
  sub_1BE04F6D4();
  v46 = v79;
  v47 = v86;
  sub_1BE050DA4();
  (*(v106 + 8))(v45, v107);
  (*(v94 + 8))(v43, v47);
  v48 = v108;
  sub_1BE04FF54();
  v49 = v70;
  v50 = v76;
  sub_1BE050D14();
  (*(v109 + 8))(v48, v110);
  (*(v93 + 8))(v46, v23);
  sub_1BE0501C4();
  sub_1BE04C7D4();
  v127 = v23;
  v128 = v50;
  v51 = swift_getOpaqueTypeConformance2();
  v52 = v71;
  v53 = v78;
  sub_1BE051014();
  (*(v85 + 8))(v49, v53);
  sub_1BE0501E4();
  v121 = v51;
  v54 = MEMORY[0x1E697E5D8];
  v122 = MEMORY[0x1E697E5D8];
  v55 = swift_getWitnessTable();
  v56 = v75;
  sub_1BE051014();
  (*(v88 + 8))(v52, v28);
  sub_1BE0501F4();
  v119 = v55;
  v120 = v54;
  v57 = v80;
  v58 = swift_getWitnessTable();
  v59 = v77;
  sub_1BE051014();
  (*(v89 + 8))(v56, v57);
  sub_1BE051CD4();
  v117 = v58;
  v118 = v54;
  v67 = v84;
  v68 = swift_getWitnessTable();
  v60 = v81;
  sub_1BE050F54();
  (*(v95 + 8))(v59, v67);
  sub_1BE052434();
  v115 = v68;
  v116 = MEMORY[0x1E697EBF8];
  v61 = v91;
  v62 = swift_getWitnessTable();
  v63 = v87;
  sub_1BE050DE4();

  (*(v97 + 8))(v60, v61);
  v113 = v62;
  v114 = v103;
  swift_getWitnessTable();
  v64 = v92;
  sub_1BD147308(v63);
  v65 = *(v98 + 8);
  v65(v63, v34);
  sub_1BD147308(v64);
  return (v65)(v64, v34);
}

uint64_t sub_1BD1A1B64(uint64_t a1)
{
  v3 = *(a1 + 16);
  sub_1BE04F9B4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3BCB8);
  sub_1BE04F9B4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3BCC0);
  swift_getTupleTypeMetadata3();
  sub_1BE051E34();
  swift_getWitnessTable();
  v4 = sub_1BE051774();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v12[-v7];
  v9 = *(a1 + 24);
  v15 = v3;
  v16 = v9;
  v17 = v1;
  sub_1BE04F504();
  sub_1BE051764();
  sub_1BE051C64();
  v13 = v3;
  v14 = v9;
  WitnessTable = swift_getWitnessTable();
  v20 = v4;
  v21 = WitnessTable;
  swift_getOpaqueTypeMetadata2();
  sub_1BE04EBD4();
  v20 = v4;
  v21 = WitnessTable;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v19 = MEMORY[0x1E697E5D8];
  swift_getWitnessTable();
  sub_1BE0510C4();
  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_1BD1A1E20@<X0>(uint64_t a1@<X2>, uint64_t a2@<X8>)
{
  v27 = a2;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3BCC0);
  v4 = MEMORY[0x1EEE9AC00](v26, v3);
  v25 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v25 - v7;
  sub_1BE04F9B4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3BCB8);
  v9 = sub_1BE04F9B4();
  v10 = *(v9 - 8);
  v12 = MEMORY[0x1EEE9AC00](v9, v11);
  v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12, v15);
  v17 = &v25 - v16;
  v18 = type metadata accessor for PaymentSheetHeader();
  sub_1BD1A2190(v18, v14);
  v34[5] = a1;
  v34[6] = MEMORY[0x1E6981138];
  WitnessTable = swift_getWitnessTable();
  v20 = sub_1BD1A3504(&qword_1EBD367B8, &qword_1EBD3BCB8, &unk_1BE0BD500, sub_1BD1A3358);
  v34[3] = WitnessTable;
  v34[4] = v20;
  v21 = swift_getWitnessTable();
  sub_1BD147308(v14);
  v22 = *(v10 + 8);
  v22(v14, v9);
  sub_1BD1A2D44();
  (*(v10 + 16))(v14, v17, v9);
  v32 = 0;
  v33 = 1;
  v34[0] = v14;
  v34[1] = &v32;
  v23 = v25;
  sub_1BD1A3494(v8, v25);
  v34[2] = v23;
  v31[0] = v9;
  v31[1] = MEMORY[0x1E6981840];
  v31[2] = v26;
  v28 = v21;
  v29 = MEMORY[0x1E6981838];
  v30 = sub_1BD1A3504(&qword_1EBD3BCD0, &qword_1EBD3BCC0, &unk_1BE0BD508, sub_1BD1A35B8);
  sub_1BD13A4C4(v34, 3uLL, v31);
  sub_1BD0DE53C(v8, &qword_1EBD3BCC0);
  v22(v17, v9);
  sub_1BD0DE53C(v23, &qword_1EBD3BCC0);
  return (v22)(v14, v9);
}

id sub_1BD1A2190@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v120 = a2;
  v4 = sub_1BE04F6E4();
  v107 = *(v4 - 8);
  v108 = v4;
  MEMORY[0x1EEE9AC00](v4, v5);
  v106 = &v101 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1BE04BD74();
  v110 = *(v7 - 8);
  v111 = v7;
  MEMORY[0x1EEE9AC00](v7, v8);
  v109 = &v101 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3BCE0);
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v113 = &v101 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3BCB8);
  v15 = MEMORY[0x1EEE9AC00](v13, v14);
  v104 = &v101 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1EEE9AC00](v15, v17);
  v105 = &v101 - v19;
  MEMORY[0x1EEE9AC00](v18, v20);
  v22 = &v101 - v21;
  v116 = a1;
  v23 = *(a1 + 16);
  v24 = sub_1BE04F9B4();
  v115 = *(v24 - 8);
  v26 = MEMORY[0x1EEE9AC00](v24, v25);
  v114 = &v101 - v27;
  v28 = *(v23 - 8);
  v30 = MEMORY[0x1EEE9AC00](v26, v29);
  v32 = &v101 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30, v33);
  v35 = &v101 - v34;
  v117 = v13;
  v36 = sub_1BE04F9B4();
  v118 = *(v36 - 8);
  v119 = v36;
  MEMORY[0x1EEE9AC00](v36, v37);
  v39 = &v101 - v38;
  v40 = v2[7];
  if (v40)
  {
    v113 = v2[8];
    v41 = MEMORY[0x1E6981138];
    v42 = sub_1BE048964();
    v40(v42);
    v43 = *(v116 + 24);
    v112 = v35;
    sub_1BD147308(v32);
    v116 = *(v28 + 8);
    (v116)(v32, v23);
    sub_1BD147308(v35);
    v44 = v114;
    sub_1BD13A700(v32, v23);
    v121 = v43;
    v122 = v41;
    swift_getWitnessTable();
    sub_1BD1A3504(&qword_1EBD367B8, &qword_1EBD3BCB8, &unk_1BE0BD500, sub_1BD1A3358);
    sub_1BD13A700(v44, v24);
    sub_1BD0D4744(v40);
    v115[1](v44, v24);
    v45 = v116;
    (v116)(v32, v23);
    v45(v112, v23);
    v46 = MEMORY[0x1E6981138];
LABEL_10:
    v127 = v43;
    v128 = v46;
    WitnessTable = swift_getWitnessTable();
    v99 = sub_1BD1A3504(&qword_1EBD367B8, &qword_1EBD3BCB8, &unk_1BE0BD500, sub_1BD1A3358);
    v125 = WitnessTable;
    v126 = v99;
    v100 = v119;
    swift_getWitnessTable();
    sub_1BD147308(v39);
    return (*(v118 + 8))(v39, v100);
  }

  v47 = v113;
  v101 = v23;
  v102 = v22;
  v103 = &v101 - v38;
  v112 = v24;
  v48 = v2[1];
  if (v48)
  {
    v49 = *v2;
    v50 = HIBYTE(v48) & 0xF;
    if ((v48 & 0x2000000000000000) == 0)
    {
      v50 = *v2 & 0xFFFFFFFFFFFFLL;
    }

    if (v50)
    {
      *&v133 = *v2;
      *(&v133 + 1) = v48;
      sub_1BD0DDEBC();
      sub_1BE048C84();
      v51 = sub_1BE0506C4();
      v53 = v52;
      v55 = v54;
      *&v133 = v49;
      *(&v133 + 1) = v48;
      v56 = sub_1BE050594();
      v58 = v57;
      v60 = v59;
      v62 = v61;
      sub_1BD0DDF10(v51, v53, v55 & 1);

      *&v133 = v56;
      *(&v133 + 1) = v58;
      v113 = v58;
      LOBYTE(v51) = v60 & 1;
      LOBYTE(v134) = v60 & 1;
      *(&v134 + 1) = v62;
      sub_1BD0D7F18(v56, v58, v60 & 1);
      v63 = *(v116 + 24);
      sub_1BE048C84();
      v64 = v114;
      v46 = MEMORY[0x1E6981138];
      sub_1BD13A7F8(&v133, v101, MEMORY[0x1E6981148]);
      v123 = v63;
      v124 = v46;
      v65 = v112;
      swift_getWitnessTable();
      sub_1BD1A3504(&qword_1EBD367B8, &qword_1EBD3BCB8, &unk_1BE0BD500, sub_1BD1A3358);
      v39 = v103;
      sub_1BD13A700(v64, v65);
      v66 = v113;
      sub_1BD0DDF10(v56, v113, v51);

      sub_1BD0DDF10(v56, v66, v51);

      v67 = v64;
      v43 = v63;
      v115[1](v67, v65);
      goto LABEL_10;
    }
  }

  v68 = PKPassKitUIBundle();
  sub_1BE048C84();
  v115 = v68;
  sub_1BE0515F4();
  v69 = *MEMORY[0x1E6981698];
  v70 = sub_1BE0515C4();
  v71 = *(v70 - 8);
  (*(v71 + 104))(v47, v69, v70);
  (*(v71 + 56))(v47, 0, 1, v70);
  v72 = sub_1BE051594();

  sub_1BD0DE53C(v47, &qword_1EBD3BCE0);
  sub_1BE051CD4();
  sub_1BE04E5E4();
  v73 = v140;
  LOBYTE(v68) = v141;
  v74 = v142;
  LOBYTE(v70) = v143;
  v75 = v144;
  v76 = v145;
  v77 = sub_1BE051204();
  KeyPath = swift_getKeyPath();
  v139 = v68;
  v138 = v70;
  *&v133 = v72;
  *(&v133 + 1) = v73;
  LOBYTE(v134) = v68;
  *(&v134 + 1) = v74;
  LOBYTE(v135) = v70;
  *(&v135 + 1) = v75;
  *&v136 = v76;
  *(&v136 + 1) = KeyPath;
  v137 = v77;
  v80 = v109;
  v79 = v110;
  v81 = v111;
  (*(v110 + 104))(v109, *MEMORY[0x1E69B8068], v111);
  result = PKPassKitBundle();
  if (result)
  {
    v83 = result;
    v84 = sub_1BE04B6F4();
    v86 = v85;

    (*(v79 + 8))(v80, v81);
    *&v131[0] = v84;
    *(&v131[0] + 1) = v86;
    sub_1BD0DDEBC();
    v87 = sub_1BE0506C4();
    v89 = v88;
    v91 = v90;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3BCC8);
    sub_1BD1A3358();
    v92 = v104;
    sub_1BE050C24();
    sub_1BD0DDF10(v87, v89, v91 & 1);

    v131[2] = v135;
    v131[3] = v136;
    v132 = v137;
    v131[0] = v133;
    v131[1] = v134;
    sub_1BD0DE53C(v131, &qword_1EBD3BCC8);
    v93 = v106;
    sub_1BE04F6C4();
    v94 = v105;
    v95 = v117;
    sub_1BE04EBC4();
    (*(v107 + 8))(v93, v108);
    sub_1BD0DE53C(v92, &qword_1EBD3BCB8);
    sub_1BE052434();
    v96 = v102;
    sub_1BE04EBB4();

    sub_1BD0DE53C(v94, &qword_1EBD3BCB8);
    v43 = *(v116 + 24);
    v129 = v43;
    v46 = MEMORY[0x1E6981138];
    v130 = MEMORY[0x1E6981138];
    v97 = v112;
    swift_getWitnessTable();
    sub_1BD1A3504(&qword_1EBD367B8, &qword_1EBD3BCB8, &unk_1BE0BD500, sub_1BD1A3358);
    v39 = v103;
    sub_1BD13A7F8(v96, v97, v95);

    sub_1BD0DE53C(v96, &qword_1EBD3BCB8);
    goto LABEL_10;
  }

  __break(1u);
  return result;
}

uint64_t sub_1BD1A2D44()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3BCD8);
  MEMORY[0x1EEE9AC00](v1, v2);
  v4 = (&v11 - v3);
  v5 = *(v0 + 40);
  *v4 = *(v0 + 32);
  v4[1] = v5;
  v6 = *(type metadata accessor for CloseButton(0) + 20);
  *(v4 + v6) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4E5B0);
  swift_storeEnumTagMultiPayload();
  LOBYTE(v6) = *(v0 + 48);
  KeyPath = swift_getKeyPath();
  v8 = swift_allocObject();
  *(v8 + 16) = v6;
  v9 = (v4 + *(v1 + 36));
  *v9 = KeyPath;
  v9[1] = sub_1BD10DF54;
  v9[2] = v8;
  sub_1BE052434();
  sub_1BD1A35B8();
  sub_1BE048964();
  sub_1BE050DE4();

  return sub_1BD0DE53C(v4, &qword_1EBD3BCD8);
}

uint64_t sub_1BD1A2ED4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v27 = a1;
  v28 = a2;
  v2 = sub_1BE04EB24();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BE04F9B4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3BCB8);
  sub_1BE04F9B4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3BCC0);
  swift_getTupleTypeMetadata3();
  sub_1BE051E34();
  swift_getWitnessTable();
  v7 = sub_1BE051774();
  WitnessTable = swift_getWitnessTable();
  v31 = v7;
  v32 = WitnessTable;
  v24[1] = MEMORY[0x1E69812B8];
  v24[0] = swift_getOpaqueTypeMetadata2();
  v25 = *(v24[0] - 8);
  MEMORY[0x1EEE9AC00](v24[0], v24[0]);
  v10 = v24 - v9;
  v11 = sub_1BE04EBD4();
  v26 = *(v11 - 8);
  v13 = MEMORY[0x1EEE9AC00](v11, v12);
  v15 = v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13, v16);
  v18 = v24 - v17;
  (*(v3 + 104))(v6, *MEMORY[0x1E697E6E8], v2);
  v19 = swift_checkMetadataState();
  sub_1BE050B24();
  (*(v3 + 8))(v6, v2);
  sub_1BE050204();
  v31 = v19;
  v32 = WitnessTable;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v21 = v24[0];
  sub_1BE051014();
  (*(v25 + 8))(v10, v21);
  v29 = OpaqueTypeConformance2;
  v30 = MEMORY[0x1E697E5D8];
  swift_getWitnessTable();
  sub_1BD147308(v15);
  v22 = *(v26 + 8);
  v22(v15, v11);
  sub_1BD147308(v18);
  return (v22)(v18, v11);
}

unint64_t sub_1BD1A3358()
{
  result = qword_1EBD367D8;
  if (!qword_1EBD367D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3BCC8);
    sub_1BD1A3410();
    sub_1BD0DE4F4(&qword_1EBD366E0, &unk_1EBD491A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD367D8);
  }

  return result;
}

unint64_t sub_1BD1A3410()
{
  result = qword_1EBD36808;
  if (!qword_1EBD36808)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EBD3FC40);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD36808);
  }

  return result;
}

uint64_t sub_1BD1A3494(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3BCC0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BD1A3504(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    a4();
    sub_1BD1A36A0(&qword_1EBD52210, MEMORY[0x1E697CBE8]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1BD1A35B8()
{
  result = qword_1EBD36870;
  if (!qword_1EBD36870)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3BCD8);
    sub_1BD1A36A0(&qword_1EBD365D8, type metadata accessor for CloseButton);
    sub_1BD0DE4F4(&unk_1EBD366D0, &unk_1EBD511D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD36870);
  }

  return result;
}

uint64_t sub_1BD1A36A0(unint64_t *a1, void (*a2)(uint64_t))
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

id sub_1BD1A36E8(uint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v7 = [objc_allocWithZone(PKDashboardMessagesView) init];
  v13[1] = a2;
  v13[2] = a3;
  v13[3] = a4;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3BD28);
  MEMORY[0x1BFB3E970](v13, v8);
  sub_1BD3F0560(v13[0]);

  v9 = objc_allocWithZone(MEMORY[0x1E695DFB8]);
  v10 = sub_1BE052724();

  v11 = [v9 initWithArray_];

  [v7 updateWithMessages:v11 currentIndex:0];
  return v7;
}

void sub_1BD1A37F4(void *a1)
{
  v7[1] = *v1;
  v8 = *(v1 + 8);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3BD28);
  MEMORY[0x1BFB3E970](v7, v3);
  sub_1BD3F0560(v7[0]);

  v4 = objc_allocWithZone(MEMORY[0x1E695DFB8]);
  v5 = sub_1BE052724();

  v6 = [v4 initWithArray_];

  [a1 updateWithMessages:v6 currentIndex:0];
}

double sub_1BD1A38D4(uint64_t a1, char a2, uint64_t a3, char a4, id a5)
{
  if ((a2 & 1) == 0)
  {
    if (a4)
    {
      *&a3 = INFINITY;
    }

    [a5 sizeThatFits_];
  }

  return result;
}

uint64_t sub_1BD1A3938(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1BD1A46B8();

  return MEMORY[0x1EEDDAA28](a1, a2, a3, v6);
}

uint64_t sub_1BD1A399C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1BD1A46B8();

  return MEMORY[0x1EEDDA9B8](a1, a2, a3, v6);
}

void sub_1BD1A3A00()
{
  sub_1BD1A46B8();
  sub_1BE04F964();
  __break(1u);
}

__n128 sub_1BD1A3A28@<Q0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3BD00);
  sub_1BE0516C4();
  result = v4;
  *a1 = v3;
  *(a1 + 8) = v4;
  return result;
}

double static DashboardMessageView_Previews.previews.getter@<D0>(uint64_t a1@<X8>)
{
  v2 = sub_1BE051CD4();
  v4 = v3;
  sub_1BD1A3AF0(&v9);
  v5 = v10;
  result = v11;
  v7 = v12;
  v8 = v9;
  *a1 = v2;
  *(a1 + 8) = v4;
  *(a1 + 16) = v8;
  *(a1 + 32) = v5;
  *(a1 + 40) = result;
  *(a1 + 48) = v7;
  return result;
}

double sub_1BD1A3AF0@<D0>(uint64_t *a1@<X8>)
{
  v2 = sub_1BE0513C4();
  sub_1BD1A3E7C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3BD10);
  sub_1BE051694();
  sub_1BE051694();
  result = v4;
  *a1 = v2;
  *(a1 + 1) = v4;
  a1[2] = v5;
  *(a1 + 3) = v4;
  a1[4] = v5;
  return result;
}

unint64_t sub_1BD1A3B8C()
{
  result = qword_1EBD3BCE8;
  if (!qword_1EBD3BCE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3BCE8);
  }

  return result;
}

double sub_1BD1A3BFC@<D0>(uint64_t a1@<X8>)
{
  v2 = sub_1BE051CD4();
  v4 = v3;
  sub_1BD1A3AF0(&v9);
  v5 = v10;
  result = v11;
  v7 = v12;
  v8 = v9;
  *a1 = v2;
  *(a1 + 8) = v4;
  *(a1 + 16) = v8;
  *(a1 + 32) = v5;
  *(a1 + 40) = result;
  *(a1 + 48) = v7;
  return result;
}

uint64_t sub_1BD1A3C68(uint64_t a1)
{
  v2 = sub_1BD1A3E28();

  return MEMORY[0x1EEDD9FE8](a1, v2);
}

uint64_t sub_1BD1A3CB4(uint64_t a1)
{
  v2 = sub_1BD1A3E28();

  return MEMORY[0x1EEDD9FE0](a1, v2);
}

unint64_t sub_1BD1A3D10()
{
  result = qword_1EBD3BCF0;
  if (!qword_1EBD3BCF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3BCF8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3BCF0);
  }

  return result;
}

uint64_t sub_1BD1A3D74(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_1BD1A3DBC(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

unint64_t sub_1BD1A3E28()
{
  result = qword_1EBD3BD08;
  if (!qword_1EBD3BD08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3BD08);
  }

  return result;
}

void sub_1BD1A3E7C()
{
  v54 = sub_1BE04AA64();
  v0 = *(v54 - 8);
  MEMORY[0x1EEE9AC00](v54, v1);
  v53 = &v51 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1BE04BD74();
  v4 = *(v3 - 8);
  v6 = MEMORY[0x1EEE9AC00](v3, v5);
  v8 = &v51 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v6, v9);
  v62 = &v51 - v11;
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = &v51 - v13;
  v66 = sub_1BE04AFE4();
  MEMORY[0x1EEE9AC00](v66, v15);
  v65 = &v51 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = (v17 + 8);
  v18 = (v4 + 104);
  v71 = MEMORY[0x1E69E7CC0];
  v61 = "BankConnectAlertFlowItem";
  v63 = *MEMORY[0x1E69B80E0];
  v57 = "CTED_GENERIC_MESSAGE";
  v58 = "DASHBOARD_RESTRICTED_TITLE";
  v52 = (v0 + 8);
  v55 = v70;
  v19 = 2;
  v59 = v8;
  v60 = (v4 + 8);
  v56 = v14;
  while (1)
  {
    v67 = v19;
    v20 = [objc_allocWithZone(PKDashboardPassMessage) init];
    v21 = v65;
    sub_1BE04AFD4();
    sub_1BE04AF74();
    (*v64)(v21, v66);
    v22 = sub_1BE052404();

    v68 = v20;
    [v20 setIdentifier_];

    v23 = *v18;
    v24 = v63;
    (*v18)(v14, v63, v3);
    v25 = PKPassKitBundle();
    if (!v25)
    {
      break;
    }

    v26 = v25;
    sub_1BE04B6F4();

    v27 = v14;
    v28 = *v60;
    (*v60)(v27, v3);
    v29 = sub_1BE052404();

    [v68 setTitle_];

    v30 = v62;
    v23(v62, v24, v3);
    v31 = PKPassKitBundle();
    if (!v31)
    {
      goto LABEL_18;
    }

    v32 = v31;
    sub_1BE04B6F4();

    v28(v30, v3);
    v33 = sub_1BE052404();

    [v68 setMessage_];

    v34 = v59;
    v23(v59, v24, v3);
    v35 = PKPassKitBundle();
    if (!v35)
    {
      goto LABEL_15;
    }

    v36 = v35;
    sub_1BE04B6F4();

    v28(v34, v3);
    v37 = sub_1BE052404();

    v38 = v68;
    [v68 setButtonTitle_];

    v39 = PKPassKitUIBundle();
    if (!v39)
    {
      goto LABEL_16;
    }

    v40 = v39;
    v41 = sub_1BE052404();
    v42 = sub_1BE052404();
    v43 = [v40 URLForResource:v41 withExtension:v42];

    v14 = v56;
    if (v43)
    {
      v44 = v53;
      sub_1BE04A9F4();

      v45 = sub_1BE04A9C4();
      (*v52)(v44, v54);
    }

    else
    {
      v45 = 0;
    }

    v46 = PKUIScreenScale();
    v47 = PKUIImageFromPDF(v45, 45.0, 45.0, v46);

    if (!v47)
    {
      __break(1u);
LABEL_15:
      __break(1u);
LABEL_16:
      __break(1u);
      break;
    }

    [v38 setImage_];

    [v38 setShowDisclosure_];
    v70[2] = PKEdgeInsetsMake;
    v70[3] = 0;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    v70[0] = sub_1BD198918;
    v70[1] = &block_descriptor_15;
    v48 = _Block_copy(aBlock);
    [v38 setActionOnButtonPress_];
    _Block_release(v48);
    v49 = v38;
    MEMORY[0x1BFB3F7A0]();
    v50 = v67;
    if (*((v71 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v71 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1BE052774();
    }

    sub_1BE0527C4();

    v19 = v50 - 1;
    if (!v19)
    {
      return;
    }
  }

  __break(1u);
LABEL_18:
  __break(1u);
}

uint64_t sub_1BD1A45BC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_1BD1A4604(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1BD1A4654()
{
  result = qword_1EBD3BD18;
  if (!qword_1EBD3BD18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3BD18);
  }

  return result;
}

unint64_t sub_1BD1A46B8()
{
  result = qword_1EBD3BD20;
  if (!qword_1EBD3BD20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3BD20);
  }

  return result;
}

char *AccountSavingsViewController.init(withConfiguration:)(NSObject *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3BD30);
  v6 = MEMORY[0x1EEE9AC00](v4, v5);
  v8 = &v90 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v9);
  v100 = &v90 - v10;
  v11 = type metadata accessor for SavingsView(0);
  v13 = MEMORY[0x1EEE9AC00](v11, v12);
  v99 = &v90 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v13, v15);
  v18 = &v90 - v17;
  MEMORY[0x1EEE9AC00](v16, v19);
  v101 = &v90 - v20;
  v21 = sub_1BE04D214();
  v22 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21, v23);
  v25 = &v90 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = [a1 account];
  if (!v26)
  {
    sub_1BE04D1E4();
    v86 = sub_1BE04D204();
    v87 = sub_1BE052C34();
    if (os_log_type_enabled(v86, v87))
    {
      v88 = swift_slowAlloc();
      *v88 = 0;
      _os_log_impl(&dword_1BD026000, v86, v87, "Could not create account view because there is no account", v88, 2u);
      MEMORY[0x1BFB45F20](v88, -1, -1);
      v89 = a1;
    }

    else
    {
      v89 = v86;
      v86 = a1;
    }

    (*(v22 + 8))(v25, v21);
    type metadata accessor for AccountSavingsViewController();
    swift_deallocPartialClassInstance();
    return 0;
  }

  v27 = v26;
  v97 = v4;
  v98 = v2;
  v94 = v8;
  *&v2[OBJC_IVAR____PKAccountSavingsViewController_configuration] = a1;
  v28 = a1;
  v29 = v27;
  v30 = [v28 cashbackPass];
  v31 = objc_allocWithZone(type metadata accessor for TransactionList());
  sub_1BD56A4DC(v29, v30);
  v33 = v32;

  v34 = objc_allocWithZone(type metadata accessor for AccountBalanceHistory(0));
  v35 = v29;
  sub_1BD0DEFEC(v35);
  v37 = v36;
  v38 = objc_allocWithZone(type metadata accessor for AccountDailyCash());
  v39 = v35;
  sub_1BD5997BC(v39);
  v41 = v40;
  v42 = v39;
  v43 = [v28 isNewAccount];
  v44 = objc_allocWithZone(type metadata accessor for AccountModel());
  v95 = v42;
  v45 = sub_1BD1DF0D8(v42, v43);
  v46 = [v28 destination];
  v47 = 0;
  v91 = v46 & 0xFFFFFFFFFFFFFFFELL;
  if ((v46 & 0xFFFFFFFFFFFFFFFELL) == 2)
  {
    v47 = [v28 destination];
  }

  v92 = v47;
  v96 = v28;
  v106 = 0;
  v48 = v45;
  v103 = v33;
  v102 = v37;
  v49 = v41;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3BD40);
  sub_1BE051694();
  *(v18 + 3) = v105;
  v50 = v11[9];
  *&v18[v50] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3BD48);
  swift_storeEnumTagMultiPayload();
  v51 = &v18[v11[10]];
  v52 = type metadata accessor for ObservableHostingController();
  sub_1BD1B6BA4(&qword_1EBD3B1A0, type metadata accessor for ObservableHostingController);
  v90 = v52;
  *v51 = sub_1BE04EEC4();
  v51[1] = v53;
  v54 = &v18[v11[14]];
  *v54 = sub_1BD4726B0;
  *(v54 + 1) = 0;
  v54[16] = 0;
  v55 = v11[16];
  *&v18[v55] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38880);
  swift_storeEnumTagMultiPayload();
  v56 = &v18[v11[17]];
  type metadata accessor for FCCStepUpModel(0);
  *v56 = 0;
  *(v56 + 1) = 0;
  swift_allocObject();
  v57 = sub_1BD9D07E8();
  v58 = &v18[v11[15]];
  *v58 = sub_1BD1AEEEC;
  *(v58 + 1) = v57;
  v58[16] = 0;
  sub_1BD1B6BA4(&qword_1EBD3AE50, type metadata accessor for AccountModel);
  v59 = v48;
  sub_1BE048964();
  *v18 = sub_1BE04E954();
  *(v18 + 1) = v60;
  objc_allocWithZone(type metadata accessor for SavingsDashboardMessageSource(0));
  v61 = v59;
  sub_1BE048964();
  sub_1BD9C18D0(v61, v57);
  sub_1BD1B6BA4(&qword_1EBD3BD50, type metadata accessor for SavingsDashboardMessageSource);
  *(v18 + 2) = sub_1BE04E954();
  *(v18 + 3) = v62;
  type metadata accessor for AccountScheduleTransferModel();
  v63 = swift_allocObject();
  v64 = objc_opt_self();
  v65 = v61;
  v66 = [v64 sharedService];
  v63[5] = 0;
  v63[6] = 0;
  v63[4] = v66;
  swift_beginAccess();
  v67 = v65;
  v63[2] = sub_1BE04E954();
  v63[3] = v68;
  swift_endAccess();

  *(v18 + 4) = v63;
  v69 = v102;
  *&v18[v11[11]] = v103;
  *&v18[v11[12]] = v69;
  v70 = v11[13];
  v93 = v49;
  *&v18[v70] = v49;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();

  result = [v64 sharedService];
  if (result)
  {
    v72 = v91 != 2;
    v73 = objc_allocWithZone(sub_1BE04BF14());
    v74 = sub_1BE04BF04();

    *(v18 + 5) = v74;
    v75 = &v18[v11[18]];
    *v75 = v92;
    v75[8] = v72;
    v76 = v18;
    v77 = v101;
    sub_1BD1B61AC(v76, v101, type metadata accessor for SavingsView);
    v92 = v67;
    v78 = v99;
    sub_1BD1B5DC0(v77, v99, type metadata accessor for SavingsView);
    v79 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3BD58));
    v80 = swift_allocObject();
    swift_unknownObjectWeakInit();
    *(v79 + *((*MEMORY[0x1E69E7D40] & *v79) + class metadata base offset for WrapperHostingController + 16)) = v80;
    v81 = v100;
    sub_1BD1B5DC0(v78, v100, type metadata accessor for SavingsView);
    *(v81 + *(v97 + 36)) = v80;
    sub_1BD0DE19C(v81, v94, &qword_1EBD3BD30);
    sub_1BE048964();
    v82 = sub_1BE04F894();
    sub_1BD0DE53C(v81, &qword_1EBD3BD30);
    sub_1BD1B5E28(v78, type metadata accessor for SavingsView);
    swift_beginAccess();
    swift_unknownObjectWeakAssign();
    v83 = v98;
    *&v98[OBJC_IVAR____PKAccountSavingsViewController_accountHostingVC] = v82;
    v84 = type metadata accessor for AccountSavingsViewController();
    v104.receiver = v83;
    v104.super_class = v84;
    v85 = [&v104 initWithNibName:0 bundle:0];
    [v85 addChildViewController_];

    sub_1BD1B5E28(v77, type metadata accessor for SavingsView);
    return v85;
  }

  __break(1u);
  return result;
}

void sub_1BD1A51D0()
{
  v1 = v0;
  v17.receiver = v0;
  v17.super_class = type metadata accessor for AccountSavingsViewController();
  objc_msgSendSuper2(&v17, sel_loadView);
  v2 = [v0 view];
  if (!v2)
  {
    __break(1u);
    goto LABEL_6;
  }

  v3 = v2;
  v4 = OBJC_IVAR____PKAccountSavingsViewController_accountHostingVC;
  v5 = [*&v1[OBJC_IVAR____PKAccountSavingsViewController_accountHostingVC] view];
  if (!v5)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v6 = v5;
  [v3 addSubview_];

  [*&v1[v4] didMoveToParentViewController_];
  v7 = *&v1[v4];
  v8 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v9 = v7;
  sub_1BE048964();
  v10 = sub_1BE04F8A4();
  v12 = (v11 + *(type metadata accessor for SavingsView(0) + 68));
  v13 = *v12;
  *v12 = sub_1BD1AEEF4;
  v12[1] = v8;
  sub_1BD0D4744(v13);
  v10(&v16, 0);

  v14 = [v1 view];
  if (v14)
  {
    v15 = v14;
    [v14 setAccessibilityIdentifier_];

    return;
  }

LABEL_7:
  __break(1u);
}

void sub_1BD1A5378(void *a1, void *a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = *(Strong + OBJC_IVAR____PKAccountSavingsViewController_configuration);
    *(Strong + OBJC_IVAR____PKAccountSavingsViewController_configuration) = a1;
    v6 = Strong;
    v7 = a1;
  }

  swift_beginAccess();
  v8 = swift_unknownObjectWeakLoadStrong();
  if (v8)
  {
    v9 = v8;
    v10 = [a1 destination];
    v11 = a1;
    sub_1BE048964();
    sub_1BD1AF078(v10, v9, a2, v11);
  }
}

void sub_1BD1A5458(void *a1, uint64_t a2, void *a3)
{
  if (a1)
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v6 = Strong;
      v7 = a1;
      sub_1BD1A55A4([a3 destination], v7);
    }
  }
}

void sub_1BD1A55A4(unint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = [v3 navigationController];
  if (v6)
  {
    v7 = v6;
    if (a1 <= 0xD && ((0x1800u >> a1) & 1) != 0)
    {
      [v6 presentViewController:a2 animated:1 completion:0];
    }

    else if ([v6 _pk_settings_useStateDrivenNavigation])
    {
      [v7 _pk_settings_pushViewController_];
    }

    else
    {
      [v7 pushViewController:a2 animated:1];
    }
  }
}

char *AccountSavingsDetailsViewController.init(withConfiguration:setNavigationIconVisible:)(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_1BE04D214();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = [a1 account];
  v42 = v3;
  if (v12)
  {
    v13 = v12;
    v14 = a2;
    v15 = a3;
    *&v3[OBJC_IVAR____PKAccountSavingsDetailsViewController_configuration] = a1;
    v16 = a1;
    v17 = v13;
    v18 = [v16 isNewAccount];
    v19 = objc_allocWithZone(type metadata accessor for AccountModel());
    v41 = v17;
    v20 = sub_1BD1DF0D8(v17, v18);
    v21 = 0;
    v22 = [v16 destination] & 0xFFFFFFFFFFFFFFFELL;
    if (v22 == 2)
    {
      v21 = [v16 destination];
    }

    v23 = v22 != 2;
    v24 = v20;
    v40 = v24;
    v25 = [v16 viewStyle];
    v26 = v14;
    sub_1BD0D44B8(v14);
    sub_1BD184364(v24, v25, v14, v15, v21, v23, v49);
    v27 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3BD70));
    type metadata accessor for ObservableHostingController();
    v28 = swift_allocObject();
    swift_unknownObjectWeakInit();
    *(v27 + *((*MEMORY[0x1E69E7D40] & *v27) + class metadata base offset for WrapperHostingController + 16)) = v28;
    memcpy(v45, v49, sizeof(v45));
    memcpy(v46, v49, 0x178uLL);
    v46[47] = v28;
    memcpy(v44, v46, sizeof(v44));
    sub_1BD18288C(v49, v47);
    sub_1BE048964();
    sub_1BD0DE19C(v46, v47, &qword_1EBD3BD78);
    v29 = sub_1BE04F894();
    memcpy(v47, v45, sizeof(v47));
    v48 = v28;
    sub_1BD0DE53C(v47, &qword_1EBD3BD78);
    swift_beginAccess();
    swift_unknownObjectWeakAssign();
    v30 = v42;
    *&v42[OBJC_IVAR____PKAccountSavingsDetailsViewController_detailsHostingVC] = v29;
    v31 = type metadata accessor for AccountSavingsDetailsViewController();
    v43.receiver = v30;
    v43.super_class = v31;
    v32 = objc_msgSendSuper2(&v43, sel_initWithNibName_bundle_, 0, 0);
    v33 = *&v32[OBJC_IVAR____PKAccountSavingsDetailsViewController_detailsHostingVC];
    v34 = v32;
    [v34 addChildViewController_];
    sub_1BD185210(v49);

    sub_1BD0D4744(v26);
  }

  else
  {
    sub_1BE04D1E4();
    v35 = sub_1BE04D204();
    v36 = sub_1BE052C34();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = a2;
      v38 = swift_slowAlloc();
      *v38 = 0;
      _os_log_impl(&dword_1BD026000, v35, v36, "Could not create account details view because there is no account", v38, 2u);
      MEMORY[0x1BFB45F20](v38, -1, -1);

      sub_1BD0D4744(v37);
    }

    else
    {
      sub_1BD0D4744(a2);
    }

    (*(v8 + 8))(v11, v7);
    type metadata accessor for AccountSavingsDetailsViewController();
    swift_deallocPartialClassInstance();
    return 0;
  }

  return v34;
}

void sub_1BD1A5D34()
{
  v1 = v0;
  v16.receiver = v0;
  v16.super_class = type metadata accessor for AccountSavingsDetailsViewController();
  objc_msgSendSuper2(&v16, sel_loadView);
  v2 = [v0 view];
  if (!v2)
  {
    __break(1u);
    goto LABEL_6;
  }

  v3 = v2;
  v4 = OBJC_IVAR____PKAccountSavingsDetailsViewController_detailsHostingVC;
  v5 = [*&v1[OBJC_IVAR____PKAccountSavingsDetailsViewController_detailsHostingVC] view];
  if (!v5)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v6 = v5;
  [v3 addSubview_];

  [*&v1[v4] didMoveToParentViewController_];
  v7 = *&v1[v4];
  v8 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v9 = v7;
  sub_1BE048964();
  v10 = sub_1BE04F8A4();
  v12 = *(v11 + 264);
  *(v11 + 264) = sub_1BD1B1AB8;
  *(v11 + 272) = v8;
  sub_1BD0D4744(v12);
  v10(&v15, 0);

  v13 = [v1 view];
  if (v13)
  {
    v14 = v13;
    [v13 setAccessibilityIdentifier_];

    return;
  }

LABEL_7:
  __break(1u);
}

uint64_t sub_1BD1A5EC4(unint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v5 = result;
    sub_1BE048964();
    sub_1BD1B1AC0(a1, v5, a2, a1);
  }

  return result;
}

void sub_1BD1A5F44(void *a1, uint64_t a2, unint64_t a3)
{
  if (a1)
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v6 = Strong;
      v7 = a1;
      sub_1BD1A6550(a3, v7);
    }
  }
}

uint64_t sub_1BD1A6030(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v33 = a4;
  v11 = sub_1BE051F54();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11, v13);
  v15 = &v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1BE051FA4();
  result = MEMORY[0x1EEE9AC00](v16, v17);
  v21 = &v28 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v31 = v19;
    v32 = result;
    sub_1BD0E5E8C(0, &qword_1EBD35E90);
    v29 = a7;
    v30 = v12;
    v22 = a1;
    v23 = sub_1BE052D54();
    v24 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v25 = swift_allocObject();
    v25[2] = v24;
    v25[3] = a3;
    v25[4] = v22;
    aBlock[4] = a6;
    aBlock[5] = v25;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1BD126964;
    aBlock[3] = v29;
    v26 = _Block_copy(aBlock);
    v27 = v22;

    sub_1BE051F74();
    aBlock[0] = MEMORY[0x1E69E7CC0];
    sub_1BD1B6BA4(&qword_1EBD366B0, MEMORY[0x1E69E7F60]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD387F0);
    sub_1BD14ECDC();
    sub_1BE053664();
    MEMORY[0x1BFB3FDF0](0, v21, v15, v26);
    _Block_release(v26);

    (*(v30 + 8))(v15, v11);
    return (*(v31 + 8))(v21, v32);
  }

  return result;
}

void sub_1BD1A6338(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    a4(a2, a3);
  }
}

void sub_1BD1A63E4(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), void *a5, void (*a6)(id, char *, char *, id))
{
  v12.receiver = a1;
  v12.super_class = a4();
  v9 = v12.receiver;
  objc_msgSendSuper2(&v12, sel_viewDidAppear_, a3);
  v10 = [*&v9[*a5] destination];
  v11 = v9;
  a6(v10, v11, v11, v10);
}

void sub_1BD1A64B8(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), void *a5, uint64_t a6)
{
  v11.receiver = a1;
  v11.super_class = a4();
  v9 = v11.receiver;
  objc_msgSendSuper2(&v11, sel_viewDidDisappear_, a3);
  v10 = *&v9[*a5];
  [v10 setDestination_];
}

void sub_1BD1A6550(unint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = [v3 navigationController];
  if (v6)
  {
    v7 = v6;
    if (a1 <= 0xD && ((0x1880u >> a1) & 1) != 0)
    {
      [v6 presentViewController:a2 animated:1 completion:0];
    }

    else if ([v6 _pk_settings_useStateDrivenNavigation])
    {
      [v7 _pk_settings_pushViewController_];
    }

    else
    {
      [v7 pushViewController:a2 animated:1];
    }
  }
}

uint64_t sub_1BD1A6668(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    v8 = [Strong pkui_userInterfaceIdiomSupportsLargeLayouts];

    if (v8)
    {
      v9 = a1 == 0;
    }

    else
    {
      v9 = 1;
    }

    if (!v9)
    {
      [a1 setModalPresentationStyle_];
    }
  }

  return a4(a1);
}

char *AccountDocumentsViewController.init(withConfiguration:)(void *a1)
{
  v2 = v1;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD416C0);
  v5 = MEMORY[0x1EEE9AC00](v54, v4);
  v7 = v51 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = v51 - v9;
  v11 = type metadata accessor for DocumentsView();
  v13 = MEMORY[0x1EEE9AC00](v11, v12);
  v55 = v51 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13, v15);
  v17 = v51 - v16;
  v18 = sub_1BE04D214();
  v19 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18, v20);
  v22 = v51 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = [a1 accounts];
  if (v23)
  {
    v24 = v23;
    sub_1BD0E5E8C(0, &qword_1EBD3CCE0);
    v25 = sub_1BE052744();

    v26 = objc_allocWithZone(type metadata accessor for SavingsStatementsModel(0));
    v27 = sub_1BE048C84();
    v28 = sub_1BD2F1B14(v27);
    v29 = type metadata accessor for TaxFormsModel(0);
    v53 = a1;
    v51[1] = v29;
    v30 = objc_allocWithZone(v29);
    v31 = sub_1BD6CF9F8(v25);
    *(v17 + 4) = sub_1BD172644;
    *(v17 + 5) = 0;
    v17[48] = 0;
    v52 = v2;
    v32 = type metadata accessor for FeatureError(0);
    (*(*(v32 - 8) + 56))(v10, 1, 1, v32);
    sub_1BD0DE19C(v10, v7, &qword_1EBD416C0);
    v33 = v28;
    v34 = v31;
    sub_1BE051694();
    sub_1BD0DE53C(v10, &qword_1EBD416C0);
    sub_1BD1B6BA4(&qword_1EBD3B318, type metadata accessor for SavingsStatementsModel);
    v35 = v33;
    *v17 = sub_1BE04E954();
    *(v17 + 1) = v36;
    sub_1BD1B6BA4(&qword_1EBD3B320, type metadata accessor for TaxFormsModel);
    v37 = sub_1BE04E954();
    v39 = v38;

    *(v17 + 2) = v37;
    *(v17 + 3) = v39;
    sub_1BD1B5DC0(v17, v55, type metadata accessor for DocumentsView);
    v40 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3BD88));
    v41 = sub_1BE04F894();
    v42 = v52;
    *&v52[OBJC_IVAR____PKAccountDocumentsViewController_documentsHostingVC] = v41;
    v43 = type metadata accessor for AccountDocumentsViewController();
    v56.receiver = v42;
    v56.super_class = v43;
    v44 = objc_msgSendSuper2(&v56, sel_initWithNibName_bundle_, 0, 0);
    v45 = *&v44[OBJC_IVAR____PKAccountDocumentsViewController_documentsHostingVC];
    v46 = v44;
    [v46 addChildViewController_];

    sub_1BD1B5E28(v17, type metadata accessor for DocumentsView);
  }

  else
  {
    sub_1BE04D1E4();
    v47 = sub_1BE04D204();
    v48 = sub_1BE052C34();
    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      *v49 = 0;
      _os_log_impl(&dword_1BD026000, v47, v48, "Could not create account documents view because there is no account", v49, 2u);
      MEMORY[0x1BFB45F20](v49, -1, -1);
    }

    (*(v19 + 8))(v22, v18);
    type metadata accessor for AccountDocumentsViewController();
    swift_deallocPartialClassInstance();
    return 0;
  }

  return v46;
}

char *AccountNumbersViewController.init(withConfiguration:)(void *a1)
{
  v2 = v1;
  v4 = sub_1BE04D214();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1BE04BD74();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = &v41 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = [a1 account];
  if (v14)
  {
    v15 = v14;
    v16 = [v14 savingsDetails];
    if (v16)
    {
      v17 = v16;
      v18 = [v16 routingNumber];
      if (v18)
      {
        v43 = v10;
        v19 = v18;
        v42 = sub_1BE052434();
        v44 = v20;

        v21 = [v17 accountNumber];
        if (v21)
        {
          v22 = v21;
          v23 = sub_1BE052434();
          v25 = v24;

          v46 = v42;
          v47 = v44;
          v48 = v23;
          v49 = v25;
          v26 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3BD98));
          *&v2[OBJC_IVAR____TtC9PassKitUI28AccountNumbersViewController_accountNumbersVC] = sub_1BE04F894();
          v27 = type metadata accessor for AccountNumbersViewController();
          v45.receiver = v2;
          v45.super_class = v27;
          v28 = objc_msgSendSuper2(&v45, sel_initWithNibName_bundle_, 0, 0);
          v29 = *&v28[OBJC_IVAR____TtC9PassKitUI28AccountNumbersViewController_accountNumbersVC];
          v30 = v28;
          [v30 addChildViewController_];
          v44 = v30;
          v31 = [v30 navigationItem];
          v32 = v43;
          (*(v43 + 104))(v13, *MEMORY[0x1E69B80E0], v9);
          result = PKPassKitBundle();
          if (result)
          {
            v34 = result;
            sub_1BE04B6F4();

            (*(v32 + 8))(v13, v9);
            v35 = sub_1BE052404();

            [v31 setTitle_];

            v36 = v44;
            v37 = [v44 navigationItem];

            [v37 setLargeTitleDisplayMode_];
            return v36;
          }

          else
          {
            __break(1u);
          }

          return result;
        }
      }

      else
      {
      }
    }

    else
    {
    }
  }

  sub_1BE04D1E4();
  v38 = sub_1BE04D204();
  v39 = sub_1BE052C34();
  if (os_log_type_enabled(v38, v39))
  {
    v40 = swift_slowAlloc();
    *v40 = 0;
    _os_log_impl(&dword_1BD026000, v38, v39, "Could not create account numbers view because there is no account", v40, 2u);
    MEMORY[0x1BFB45F20](v40, -1, -1);
  }

  (*(v5 + 8))(v8, v4);
  type metadata accessor for AccountNumbersViewController();
  swift_deallocPartialClassInstance();
  return 0;
}

char *AccountManageNotificationsViewController.init(withConfiguration:)(void *a1)
{
  v2 = v1;
  v4 = sub_1BE04D214();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = [a1 account];
  if (v9)
  {
    v10 = v9;
    v11 = [a1 isNewAccount];
    v12 = objc_allocWithZone(type metadata accessor for AccountModel());
    v13 = sub_1BD1DF0D8(v10, v11);
    v37 = 0;
    v38 = 1;
    v14 = v13;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3BDA8);
    sub_1BE051694();
    v15 = v32;
    v16 = v33;
    v17 = v34;
    sub_1BD1B6BA4(&qword_1EBD3AE50, type metadata accessor for AccountModel);
    v18 = sub_1BE04E954();
    v20 = v19;
    v32 = v18;
    v33 = v19;
    v34 = v15;
    v35 = v16;
    v36 = v17;
    objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3BDB0));
    sub_1BE048964();
    v21 = v20;
    *&v2[OBJC_IVAR____PKAccountManageNotificationsViewController_hostingVC] = sub_1BE04F894();
    v22 = type metadata accessor for AccountManageNotificationsViewController();
    v31.receiver = v2;
    v31.super_class = v22;
    v23 = objc_msgSendSuper2(&v31, sel_initWithNibName_bundle_, 0, 0);
    v24 = *&v23[OBJC_IVAR____PKAccountManageNotificationsViewController_hostingVC];
    v25 = v23;
    [v25 addChildViewController_];
  }

  else
  {
    sub_1BE04D1E4();
    v26 = sub_1BE04D204();
    v27 = sub_1BE052C34();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&dword_1BD026000, v26, v27, "Could not create account details view because there is no account", v28, 2u);
      MEMORY[0x1BFB45F20](v28, -1, -1);
    }

    (*(v5 + 8))(v8, v4);
    type metadata accessor for AccountManageNotificationsViewController();
    swift_deallocPartialClassInstance();
    return 0;
  }

  return v25;
}

char *AccountDebugViewController.init(withConfiguration:)(void *a1)
{
  v2 = v1;
  v4 = sub_1BE04D214();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = [a1 account];
  if (v9)
  {
    v10 = v9;
    v11 = objc_allocWithZone(type metadata accessor for AccountDebugModel(0));
    v12 = v10;
    sub_1BD765E64(v12);
    v14 = v13;
    *&v2[OBJC_IVAR____PKAccountDebugViewController_debugModel] = v13;
    sub_1BD1B6BA4(&qword_1EBD3BDC8, type metadata accessor for AccountDebugModel);
    v15 = v14;
    v16 = sub_1BE04E954();
    v18 = v17;
    v19 = [objc_allocWithZone(PKPaymentTransactionIconGenerator) initWithCache:1 scale:PKUIScreenScale()];
    *&v37 = v16;
    *(&v37 + 1) = v18;
    *&v38 = 9537250;
    *(&v38 + 1) = 0xA300000000000000;
    *&v39 = 9668322;
    *(&v39 + 1) = 0xA300000000000000;
    *&v40 = 37;
    *(&v40 + 1) = 0xE100000000000000;
    v41 = v19;
    v34 = v39;
    v35 = v40;
    v36 = v19;
    v32 = v37;
    v33 = v38;
    v20 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3BDD0));
    sub_1BD1967C8(&v37, v31);
    *&v2[OBJC_IVAR____PKAccountDebugViewController_hostingVC] = sub_1BE04F894();
    v21 = type metadata accessor for AccountDebugViewController();
    v30.receiver = v2;
    v30.super_class = v21;
    v22 = objc_msgSendSuper2(&v30, sel_initWithNibName_bundle_, 0, 0);
    v23 = *&v22[OBJC_IVAR____PKAccountDebugViewController_hostingVC];
    v24 = v22;
    [v24 addChildViewController_];
    sub_1BD1B5EF4(&v37);
  }

  else
  {
    sub_1BE04D1E4();
    v25 = sub_1BE04D204();
    v26 = sub_1BE052C34();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&dword_1BD026000, v25, v26, "Could not create account debug view because there is no account", v27, 2u);
      MEMORY[0x1BFB45F20](v27, -1, -1);
    }

    (*(v5 + 8))(v8, v4);
    type metadata accessor for AccountDebugViewController();
    swift_deallocPartialClassInstance();
    return 0;
  }

  return v24;
}

void sub_1BD1A7D7C(uint64_t (*a1)(void), uint64_t *a2, void *a3)
{
  v13.receiver = v3;
  v13.super_class = a1();
  objc_msgSendSuper2(&v13, sel_loadView);
  v6 = [v3 view];
  if (!v6)
  {
    __break(1u);
    goto LABEL_6;
  }

  v7 = v6;
  v8 = *a2;
  v9 = [*&v3[*a2] view];
  if (!v9)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v10 = v9;
  [v7 addSubview_];

  [*&v3[v8] didMoveToParentViewController_];
  v11 = [v3 view];
  if (v11)
  {
    v12 = v11;
    [v11 setAccessibilityIdentifier_];

    return;
  }

LABEL_7:
  __break(1u);
}

id sub_1BD1A7F10()
{
  v1 = *(v0 + OBJC_IVAR____PKAccountDebugViewController_debugModel);
  v2 = sub_1BD763778();

  sub_1BD1A8284(v2);

  v3 = objc_allocWithZone(MEMORY[0x1E695DF20]);
  v4 = sub_1BE052224();

  v5 = [v3 initWithDictionary:v4 copyItems:0];

  return v5;
}

uint64_t sub_1BD1A7FCC(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3BE10);
    v2 = sub_1BE053A04();
  }

  else
  {
    v2 = MEMORY[0x1E69E7CC8];
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = v2 + 64;
  sub_1BE048964();
  result = sub_1BE048C84();
  v9 = 0;
  while (v5)
  {
LABEL_15:
    v13 = __clz(__rbit64(v5)) | (v9 << 6);
    v14 = *(*(a1 + 48) + 8 * v13);
    sub_1BD038CD0(*(a1 + 56) + 32 * v13, v33 + 8);
    *&v33[0] = v14;
    v31[0] = v33[0];
    v31[1] = v33[1];
    v32 = v34;
    *&v30[0] = v14;
    swift_dynamicCast();
    sub_1BD1B6140((v31 + 8), v25);
    v26 = v22;
    v27 = v23;
    v28 = v24;
    sub_1BD1B6140(v25, v29);
    v22 = v26;
    v23 = v27;
    v24 = v28;
    sub_1BD1B6140(v29, v30);
    result = sub_1BE0537A4();
    v15 = -1 << *(v2 + 32);
    v16 = result & ~v15;
    v17 = v16 >> 6;
    if (((-1 << v16) & ~*(v7 + 8 * (v16 >> 6))) == 0)
    {
      v18 = 0;
      v19 = (63 - v15) >> 6;
      while (++v17 != v19 || (v18 & 1) == 0)
      {
        v20 = v17 == v19;
        if (v17 == v19)
        {
          v17 = 0;
        }

        v18 |= v20;
        v21 = *(v7 + 8 * v17);
        if (v21 != -1)
        {
          v10 = __clz(__rbit64(~v21)) + (v17 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v16) & ~*(v7 + 8 * (v16 >> 6)))) | v16 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *(v7 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
    v11 = *(v2 + 48) + 40 * v10;
    *v11 = v22;
    *(v11 + 16) = v23;
    *(v11 + 32) = v24;
    result = sub_1BD1B6140(v30, (*(v2 + 56) + 32 * v10));
    ++*(v2 + 16);
  }

  while (1)
  {
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v9;
    if (v5)
    {
      v9 = v12;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_1BD1A8284(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3BE10);
    v2 = sub_1BE053A04();
  }

  else
  {
    v2 = MEMORY[0x1E69E7CC8];
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = v2 + 64;
  sub_1BE048964();
  result = sub_1BE048C84();
  v9 = 0;
  while (v5)
  {
LABEL_15:
    v13 = __clz(__rbit64(v5)) | (v9 << 6);
    v14 = (*(a1 + 48) + 16 * v13);
    v16 = *v14;
    v15 = v14[1];
    sub_1BD038CD0(*(a1 + 56) + 32 * v13, v35);
    *&v34 = v16;
    *(&v34 + 1) = v15;
    v32[2] = v34;
    v33[0] = v35[0];
    v33[1] = v35[1];
    v32[0] = v34;
    sub_1BE048C84();
    swift_dynamicCast();
    sub_1BD1B6140(v33, v27);
    v28 = v24;
    v29 = v25;
    v30 = v26;
    sub_1BD1B6140(v27, v31);
    v24 = v28;
    v25 = v29;
    v26 = v30;
    sub_1BD1B6140(v31, v32);
    result = sub_1BE0537A4();
    v17 = -1 << *(v2 + 32);
    v18 = result & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*(v7 + 8 * (v18 >> 6))) == 0)
    {
      v20 = 0;
      v21 = (63 - v17) >> 6;
      while (++v19 != v21 || (v20 & 1) == 0)
      {
        v22 = v19 == v21;
        if (v19 == v21)
        {
          v19 = 0;
        }

        v20 |= v22;
        v23 = *(v7 + 8 * v19);
        if (v23 != -1)
        {
          v10 = __clz(__rbit64(~v23)) + (v19 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v18) & ~*(v7 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *(v7 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
    v11 = *(v2 + 48) + 40 * v10;
    *v11 = v24;
    *(v11 + 16) = v25;
    *(v11 + 32) = v26;
    result = sub_1BD1B6140(v32, (*(v2 + 56) + 32 * v10));
    ++*(v2 + 16);
  }

  while (1)
  {
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v9;
    if (v5)
    {
      v9 = v12;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_1BD1A854C(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3BE10);
    v2 = sub_1BE053A04();
  }

  else
  {
    v2 = MEMORY[0x1E69E7CC8];
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = v2 + 64;
  sub_1BE048964();
  result = sub_1BE048C84();
  v9 = 0;
  while (v5)
  {
LABEL_15:
    v13 = (*(a1 + 56) + 16 * (__clz(__rbit64(v5)) | (v9 << 6)));
    v15 = *v13;
    v14 = v13[1];
    sub_1BE048C84();
    swift_dynamicCast();
    *&v31[0] = v15;
    *(&v31[0] + 1) = v14;
    swift_dynamicCast();
    v27 = v23;
    v28 = v24;
    v29 = v25;
    sub_1BD1B6140(&v26, v30);
    v23 = v27;
    v24 = v28;
    v25 = v29;
    sub_1BD1B6140(v30, v31);
    result = sub_1BE0537A4();
    v16 = -1 << *(v2 + 32);
    v17 = result & ~v16;
    v18 = v17 >> 6;
    if (((-1 << v17) & ~*(v7 + 8 * (v17 >> 6))) == 0)
    {
      v19 = 0;
      v20 = (63 - v16) >> 6;
      while (++v18 != v20 || (v19 & 1) == 0)
      {
        v21 = v18 == v20;
        if (v18 == v20)
        {
          v18 = 0;
        }

        v19 |= v21;
        v22 = *(v7 + 8 * v18);
        if (v22 != -1)
        {
          v10 = __clz(__rbit64(~v22)) + (v18 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v17) & ~*(v7 + 8 * (v17 >> 6)))) | v17 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *(v7 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
    v11 = *(v2 + 48) + 40 * v10;
    *v11 = v23;
    *(v11 + 16) = v24;
    *(v11 + 32) = v25;
    result = sub_1BD1B6140(v31, (*(v2 + 56) + 32 * v10));
    ++*(v2 + 16);
  }

  while (1)
  {
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v9;
    if (v5)
    {
      v9 = v12;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

unint64_t sub_1BD1A8804(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3BEA8);
    v2 = sub_1BE053A04();
  }

  else
  {
    v2 = MEMORY[0x1E69E7CC8];
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  sub_1BE048964();
  result = sub_1BE048C84();
  v8 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v11 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v11 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v11);
    ++v8;
    if (v5)
    {
      while (1)
      {
        v12 = __clz(__rbit64(v5));
        v5 &= v5 - 1;
        v13 = v12 | (v11 << 6);
        v14 = (*(a1 + 48) + 16 * v13);
        v16 = *v14;
        v15 = v14[1];
        v17 = *(*(a1 + 56) + 8 * v13);
        sub_1BE048C84();
        v18 = v17;
        result = sub_1BD148F70(v16, v15);
        if (v19)
        {
          v9 = (v2[6] + 16 * result);
          *v9 = v16;
          v9[1] = v15;
          v10 = result;

          *(v2[7] + 8 * v10) = v18;
          result = swift_unknownObjectRelease();
          v8 = v11;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_20;
          }

          *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
          v20 = (v2[6] + 16 * result);
          *v20 = v16;
          v20[1] = v15;
          *(v2[7] + 8 * result) = v18;
          v21 = v2[2];
          v22 = __OFADD__(v21, 1);
          v23 = v21 + 1;
          if (v22)
          {
            goto LABEL_21;
          }

          v2[2] = v23;
          v8 = v11;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v11 = v8;
      }
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

unint64_t sub_1BD1A89E4(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD48E80);
    v2 = sub_1BE053A04();
  }

  else
  {
    v2 = MEMORY[0x1E69E7CC8];
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  sub_1BE048964();
  result = sub_1BE048C84();
  v8 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v12 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v8;
    if (v5)
    {
      while (1)
      {
        v13 = __clz(__rbit64(v5));
        v5 &= v5 - 1;
        v14 = (*(a1 + 48) + 16 * (v13 | (v12 << 6)));
        v16 = *v14;
        v15 = v14[1];
        sub_1BE048C84();
        sub_1BE048C84();
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD52590);
        swift_dynamicCast();
        sub_1BD1B6140(&v22, v24);
        sub_1BD1B6140(v24, v25);
        sub_1BD1B6140(v25, &v23);
        result = sub_1BD148F70(v16, v15);
        if (v17)
        {
          v9 = (v2[6] + 16 * result);
          *v9 = v16;
          v9[1] = v15;
          v10 = result;

          v11 = (v2[7] + 32 * v10);
          __swift_destroy_boxed_opaque_existential_0(v11);
          result = sub_1BD1B6140(&v23, v11);
          v8 = v12;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_20;
          }

          *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
          v18 = (v2[6] + 16 * result);
          *v18 = v16;
          v18[1] = v15;
          result = sub_1BD1B6140(&v23, (v2[7] + 32 * result));
          v19 = v2[2];
          v20 = __OFADD__(v19, 1);
          v21 = v19 + 1;
          if (v20)
          {
            goto LABEL_21;
          }

          v2[2] = v21;
          v8 = v12;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v12 = v8;
      }
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

uint64_t sub_1BD1A8C44(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3BE10);
    v1 = sub_1BE053A04();
  }

  else
  {
    v1 = MEMORY[0x1E69E7CC8];
  }

  v2 = 1 << *(a1 + 32);
  if (v2 < 64)
  {
    v3 = ~(-1 << v2);
  }

  else
  {
    v3 = -1;
  }

  v4 = v3 & *(a1 + 64);
  v5 = (v2 + 63) >> 6;
  v6 = v1 + 64;
  sub_1BE048964();
  result = sub_1BE048C84();
  v8 = 0;
  while (v4)
  {
LABEL_15:
    v12 = __clz(__rbit64(v4)) | (v8 << 6);
    v13 = *(*(a1 + 48) + 8 * v12);
    v14 = (*(a1 + 56) + 16 * v12);
    v15 = *v14;
    v16 = v14[1];
    type metadata accessor for PKAnalyticsKey(0);
    v17 = v13;
    sub_1BE048C84();
    swift_dynamicCast();
    *&v34[0] = v15;
    *(&v34[0] + 1) = v16;
    swift_dynamicCast();
    v30 = v26;
    v31 = v27;
    v32 = v28;
    sub_1BD1B6140(&v29, v33);
    v26 = v30;
    v27 = v31;
    v28 = v32;
    sub_1BD1B6140(v33, v34);
    result = sub_1BE0537A4();
    v18 = -1 << *(v1 + 32);
    v19 = result & ~v18;
    v20 = v19 >> 6;
    if (((-1 << v19) & ~*(v6 + 8 * (v19 >> 6))) == 0)
    {
      v21 = 0;
      v22 = (63 - v18) >> 6;
      while (++v20 != v22 || (v21 & 1) == 0)
      {
        v23 = v20 == v22;
        if (v20 == v22)
        {
          v20 = 0;
        }

        v21 |= v23;
        v24 = *(v6 + 8 * v20);
        if (v24 != -1)
        {
          v9 = __clz(__rbit64(~v24)) + (v20 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v9 = __clz(__rbit64((-1 << v19) & ~*(v6 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v4 &= v4 - 1;
    *(v6 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v9;
    v10 = *(v1 + 48) + 40 * v9;
    *v10 = v26;
    *(v10 + 16) = v27;
    *(v10 + 32) = v28;
    result = sub_1BD1B6140(v34, (*(v1 + 56) + 32 * v9));
    ++*(v1 + 16);
  }

  while (1)
  {
    v11 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v11 >= v5)
    {

      return v1;
    }

    v4 = *(a1 + 64 + 8 * v11);
    ++v8;
    if (v4)
    {
      v8 = v11;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_1BD1A8F14(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3BE10);
    v2 = sub_1BE053A04();
  }

  else
  {
    v2 = MEMORY[0x1E69E7CC8];
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = v2 + 64;
  sub_1BE048964();
  result = sub_1BE048C84();
  v9 = 0;
  while (v5)
  {
LABEL_15:
    v13 = (*(a1 + 48) + ((v9 << 10) | (16 * __clz(__rbit64(v5)))));
    v14 = v13[1];
    *&v30[0] = *v13;
    *(&v30[0] + 1) = v14;
    sub_1BE048C84();
    sub_1BE048C84();
    swift_dynamicCast();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3A5C8);
    swift_dynamicCast();
    v26 = v22;
    v27 = v23;
    v28 = v24;
    sub_1BD1B6140(&v25, v29);
    v22 = v26;
    v23 = v27;
    v24 = v28;
    sub_1BD1B6140(v29, v30);
    result = sub_1BE0537A4();
    v15 = -1 << *(v2 + 32);
    v16 = result & ~v15;
    v17 = v16 >> 6;
    if (((-1 << v16) & ~*(v7 + 8 * (v16 >> 6))) == 0)
    {
      v18 = 0;
      v19 = (63 - v15) >> 6;
      while (++v17 != v19 || (v18 & 1) == 0)
      {
        v20 = v17 == v19;
        if (v17 == v19)
        {
          v17 = 0;
        }

        v18 |= v20;
        v21 = *(v7 + 8 * v17);
        if (v21 != -1)
        {
          v10 = __clz(__rbit64(~v21)) + (v17 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v16) & ~*(v7 + 8 * (v16 >> 6)))) | v16 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *(v7 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
    v11 = *(v2 + 48) + 40 * v10;
    *v11 = v22;
    *(v11 + 16) = v23;
    *(v11 + 32) = v24;
    result = sub_1BD1B6140(v30, (*(v2 + 56) + 32 * v10));
    ++*(v2 + 16);
  }

  while (1)
  {
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v9;
    if (v5)
    {
      v9 = v12;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}