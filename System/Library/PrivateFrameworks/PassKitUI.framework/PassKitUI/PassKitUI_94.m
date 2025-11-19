uint64_t sub_1BDA3877C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v44 = a2;
  v3 = type metadata accessor for DeviceRowView();
  v38 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v39 = v5;
  v40 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5C5E0);
  MEMORY[0x1EEE9AC00](v43, v6);
  v41 = &v37 - v7;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5C5E8);
  MEMORY[0x1EEE9AC00](v42, v8);
  v10 = &v37 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF70);
  MEMORY[0x1EEE9AC00](v11 - 8, v12);
  v14 = &v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15, v16);
  v18 = &v37 - v17;
  v19 = sub_1BE04AA64();
  v20 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19, v21);
  v23 = &v37 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = type metadata accessor for DeviceViewModel(0);
  sub_1BD0DE19C(a1 + *(v24 + 24), v18, &unk_1EBD3CF70);
  if ((*(v20 + 48))(v18, 1, v19) == 1)
  {
    sub_1BD0DE53C(v18, &unk_1EBD3CF70);
    v25 = sub_1BDA38D34();
    sub_1BE051CD4();
    sub_1BE04E5E4();
    v26 = v45;
    v27 = BYTE8(v45);
    v28 = v46;
    v29 = BYTE8(v46);
    *v10 = v25;
    *(v10 + 1) = v26;
    v10[16] = v27;
    *(v10 + 3) = v28;
    v10[32] = v29;
    *(v10 + 40) = v47;
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3FC40);
    sub_1BDA3A738();
    sub_1BDA3AB70(&qword_1EBD36808, &unk_1EBD3FC40);
    return sub_1BE04F9A4();
  }

  else
  {
    (*(v20 + 32))(v23, v18, v19);
    (*(v20 + 16))(v14, v23, v19);
    (*(v20 + 56))(v14, 0, 1, v19);
    sub_1BE051D34();
    sub_1BE04E494();
    v31 = v40;
    sub_1BDA3A7F0(a1, v40, type metadata accessor for DeviceRowView);
    v32 = (*(v38 + 80) + 16) & ~*(v38 + 80);
    v33 = swift_allocObject();
    sub_1BDA3A858(v31, v33 + v32, type metadata accessor for DeviceRowView);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5C608);
    sub_1BDA3A940();
    v34 = v41;
    sub_1BE04E184();
    sub_1BE051CD4();
    sub_1BE04E5E4();
    v35 = (v34 + *(v43 + 36));
    v36 = v46;
    *v35 = v45;
    v35[1] = v36;
    v35[2] = v47;
    sub_1BD0DE19C(v34, v10, &qword_1EBD5C5E0);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3FC40);
    sub_1BDA3A738();
    sub_1BDA3AB70(&qword_1EBD36808, &unk_1EBD3FC40);
    sub_1BE04F9A4();
    sub_1BD0DE53C(v34, &qword_1EBD5C5E0);
    return (*(v20 + 8))(v23, v19);
  }
}

uint64_t sub_1BDA38D34()
{
  v1 = (v0 + *(type metadata accessor for DeviceViewModel(0) + 28));
  v2 = *v1;
  v3 = v1[1];
  v4 = *v1 == 5459817 && v3 == 0xE300000000000000;
  if (!v4 && (sub_1BE053B84() & 1) == 0)
  {
    v6 = v2 == 0x534F6863746177 && v3 == 0xE700000000000000;
    if (!v6 && (sub_1BE053B84() & 1) == 0)
    {
      v7 = v2 == 1397716596 && v3 == 0xE400000000000000;
      if (!v7 && (sub_1BE053B84() & 1) == 0)
      {
        v8 = v2 == 0x534F64615069 && v3 == 0xE600000000000000;
        if (!v8 && (sub_1BE053B84() & 1) == 0 && (v2 != 0x534F63616DLL || v3 != 0xE500000000000000) && (sub_1BE053B84() & 1) == 0 && (v2 != 0x534F6E6F69736976 || v3 != 0xE800000000000000))
        {
          sub_1BE053B84();
        }
      }
    }
  }

  return sub_1BE051574();
}

uint64_t sub_1BDA38F60@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 24);
  v83 = *(a1 + 16);
  v84 = v3;
  sub_1BD0DDEBC();
  sub_1BE048C84();
  v4 = sub_1BE0506C4();
  v6 = v5;
  v8 = v7;
  sub_1BE050324();
  v9 = sub_1BE0505F4();
  v11 = v10;
  v13 = v12;

  sub_1BD0DDF10(v4, v6, v8 & 1);

  LODWORD(v83) = sub_1BE04FC74();
  v14 = sub_1BE050574();
  v42 = v15;
  v43 = v14;
  v17 = v16;
  v44 = v18;
  sub_1BD0DDF10(v9, v11, v13 & 1);

  sub_1BE051CE4();
  sub_1BE04EE54();
  v19 = v17 & 1;
  v105 = v17 & 1;
  v20 = type metadata accessor for DeviceViewModel(0);
  v21 = (a1 + *(v20 + 36));
  if (v21[1])
  {
    v22 = *v21;
    v23 = v21[1];
  }

  else
  {
    v24 = (a1 + *(v20 + 32));
    v22 = *v24;
    v23 = v24[1];
    sub_1BE048C84();
  }

  HIDWORD(v83) = HIDWORD(v22);
  v84 = v23;
  sub_1BE048C84();
  v25 = sub_1BE0506C4();
  v27 = v26;
  v29 = v28;
  sub_1BE050454();
  v30 = sub_1BE0505F4();
  v32 = v31;
  v34 = v33;

  sub_1BD0DDF10(v25, v27, v29 & 1);

  LODWORD(v83) = sub_1BE04FC94();
  v35 = sub_1BE050574();
  v37 = v36;
  LOBYTE(v25) = v38;
  v40 = v39;
  sub_1BD0DDF10(v30, v32, v34 & 1);

  sub_1BE051CE4();
  sub_1BE04EE54();
  LOBYTE(v25) = v25 & 1;
  v96 = v25;
  *&v54 = v43;
  *(&v54 + 1) = v42;
  LOBYTE(v55) = v19;
  *(&v55 + 1) = *v104;
  DWORD1(v55) = *&v104[3];
  *(&v55 + 1) = v44;
  v60 = v101;
  v61 = v102;
  v62 = v103;
  v56 = v97;
  v57 = v98;
  v58 = v99;
  v59 = v100;
  __src[6] = v101;
  __src[7] = v102;
  __src[2] = v97;
  __src[3] = v98;
  __src[4] = v99;
  __src[5] = v100;
  __src[0] = v54;
  __src[1] = v55;
  *&v63 = v35;
  *(&v63 + 1) = v37;
  LOBYTE(v64) = v25;
  *(&v64 + 1) = *v95;
  DWORD1(v64) = *&v95[3];
  *(&v64 + 1) = v40;
  v69 = v51;
  v70 = v52;
  v71 = v53;
  v65 = v47;
  v66 = v48;
  v67 = v49;
  v68 = v50;
  __src[12] = v48;
  __src[13] = v49;
  __src[10] = v64;
  __src[11] = v47;
  __src[14] = v50;
  __src[15] = v51;
  __src[16] = v52;
  __src[17] = v53;
  __src[8] = v103;
  __src[9] = v63;
  memcpy(a2, __src, 0x120uLL);
  v72[0] = v35;
  v72[1] = v37;
  v73 = v25;
  *v74 = *v95;
  *&v74[3] = *&v95[3];
  v75 = v40;
  v80 = v51;
  v81 = v52;
  v82 = v53;
  v76 = v47;
  v77 = v48;
  v78 = v49;
  v79 = v50;
  sub_1BD0DE19C(&v54, &v83, &qword_1EBD3E090);
  sub_1BD0DE19C(&v63, &v83, &qword_1EBD3E090);
  sub_1BD0DE53C(v72, &qword_1EBD3E090);
  v83 = v43;
  v84 = v42;
  v85 = v19;
  *v86 = *v104;
  *&v86[3] = *&v104[3];
  v87 = v44;
  v91 = v100;
  v92 = v101;
  v93 = v102;
  v94 = v103;
  v88 = v97;
  v89 = v98;
  v90 = v99;
  return sub_1BD0DE53C(&v83, &qword_1EBD3E090);
}

uint64_t sub_1BDA3941C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  *&v38 = a2;
  v40 = a3;
  v4 = sub_1BE04F454();
  *&v39 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v5);
  v7 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v38 - v10;
  v12 = sub_1BE051584();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12, v14);
  v16 = &v38 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1BE04EB04();
  v18 = *(v17 - 8);
  v20 = MEMORY[0x1EEE9AC00](v17, v19);
  v22 = (&v38 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v18 + 16))(v22, a1, v17, v20);
  v23 = (*(v18 + 88))(v22, v17);
  if (v23 == *MEMORY[0x1E697C138])
  {
    (*(v18 + 96))(v22, v17);
    *&v38 = *v22;
    (*(v13 + 104))(v16, *MEMORY[0x1E6981630], v12);
    v24 = sub_1BE0515E4();
    (*(v13 + 8))(v16, v12);
    sub_1BE04F444();
    v25 = v39;
    (*(v39 + 16))(v7, v11, v4);
    sub_1BDA3ABE0(&unk_1EBD367A0, MEMORY[0x1E697F260]);
    v26 = sub_1BE04E644();
    (*(v25 + 8))(v11, v4);
    *v41 = v24;
    *&v41[8] = xmmword_1BE0CB9B0;
    *&v41[24] = v26;
    LOBYTE(v42) = 0;
    swift_retain_n();
    swift_retain_n();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD5C630);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3E280);
    sub_1BDA3AA98();
    sub_1BDA3AB70(&qword_1EBD3E278, &qword_1EBD3E280);
    sub_1BE04F9A4();
    v27 = v43;
    v28 = v44;
    v29 = v45;
    *v41 = v43;
    *&v41[16] = v44;
    v42 = v45;
    sub_1BDA3AC28(v43, *(&v43 + 1), v44, *(&v44 + 1), v45);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5C620);
    sub_1BDA3A9EC();
    sub_1BE04F9A4();

    sub_1BDA3AC64(v27, *(&v27 + 1), v28, *(&v28 + 1), v29);
  }

  else
  {
    if (v23 == *MEMORY[0x1E697C130])
    {
      (*(v18 + 8))(v22, v17);
    }

    else if (v23 != *MEMORY[0x1E697C118])
    {
      sub_1BDA38D34();
      (*(v13 + 104))(v16, *MEMORY[0x1E6981630], v12);
      v37 = sub_1BE0515E4();

      (*(v13 + 8))(v16, v12);
      *v41 = v37;
      *&v41[8] = xmmword_1BE0CB9B0;
      *&v41[24] = 0;
      v42 = 256;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5C620);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3E280);
      sub_1BDA3A9EC();
      sub_1BDA3AB70(&qword_1EBD3E278, &qword_1EBD3E280);
      sub_1BE04F9A4();
      v38 = v44;
      v39 = v43;
      v34 = v45;
      v35 = v46;
      result = (*(v18 + 8))(v22, v17);
      v33 = v38;
      v32 = v39;
      goto LABEL_8;
    }

    sub_1BDA38D34();
    (*(v13 + 104))(v16, *MEMORY[0x1E6981630], v12);
    v31 = sub_1BE0515E4();

    (*(v13 + 8))(v16, v12);
    *v41 = v31;
    *&v41[8] = xmmword_1BE0CB9B0;
    *&v41[24] = 0;
    LOBYTE(v42) = 1;
    sub_1BE048964();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD5C630);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3E280);
    sub_1BDA3AA98();
    sub_1BDA3AB70(&qword_1EBD3E278, &qword_1EBD3E280);
    sub_1BE04F9A4();
    *v41 = v43;
    *&v41[16] = v44;
    v42 = v45;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5C620);
    sub_1BDA3A9EC();
    sub_1BE04F9A4();
  }

  v32 = v43;
  v33 = v44;
  v34 = v45;
  v35 = v46;
LABEL_8:
  v36 = v40;
  *v40 = v32;
  v36[1] = v33;
  *(v36 + 32) = v34;
  *(v36 + 33) = v35;
  return result;
}

uint64_t sub_1BDA39BA4()
{
  v1 = sub_1BE04FF64();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1, v3);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5C5A8);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v12 - v8;
  *v9 = sub_1BE04F504();
  *(v9 + 1) = 0;
  v9[16] = 0;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5C5B0);
  sub_1BDA37F28(v0, &v9[*(v10 + 44)]);
  sub_1BE04FF44();
  sub_1BD0DE4F4(&qword_1EBD5C5B8, &qword_1EBD5C5A8);
  sub_1BE050D14();
  (*(v2 + 8))(v5, v1);
  return sub_1BD0DE53C(v9, &qword_1EBD5C5A8);
}

unint64_t sub_1BDA39DB4()
{
  result = qword_1EBD5C470;
  if (!qword_1EBD5C470)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD5C478);
    sub_1BD0DE4F4(&qword_1EBD5C480, &qword_1EBD5C488);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD5C470);
  }

  return result;
}

unint64_t sub_1BDA39E6C()
{
  result = qword_1EBD5C490;
  if (!qword_1EBD5C490)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD5C458);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD5C498);
    sub_1BDA39F2C();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD5C490);
  }

  return result;
}

unint64_t sub_1BDA39F2C()
{
  result = qword_1EBD5C4A0;
  if (!qword_1EBD5C4A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD5C498);
    sub_1BDA39FE4();
    sub_1BD0DE4F4(&unk_1EBD3FB20, &qword_1EBD5B6B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD5C4A0);
  }

  return result;
}

unint64_t sub_1BDA39FE4()
{
  result = qword_1EBD5C4A8;
  if (!qword_1EBD5C4A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD5C4B0);
    sub_1BDA3ABE0(&qword_1EBD5C4B8, type metadata accessor for DeviceRowView);
    sub_1BD0DE4F4(&qword_1EBD36710, &qword_1EBD491B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD5C4A8);
  }

  return result;
}

uint64_t type metadata accessor for DeviceRowView()
{
  result = qword_1EBD5C588;
  if (!qword_1EBD5C588)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1BDA3A118(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
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

unint64_t sub_1BDA3A194()
{
  result = qword_1EBD5C4C8;
  if (!qword_1EBD5C4C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD5C4D0);
    sub_1BD55ABC0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD5C4C8);
  }

  return result;
}

unint64_t sub_1BDA3A228()
{
  result = qword_1EBD5C4E0;
  if (!qword_1EBD5C4E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD5C4D8);
    sub_1BDA39F2C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD5C4E0);
  }

  return result;
}

uint64_t sub_1BDA3A2B4()
{
  if (*(v0 + 16) == 1)
  {
    return sub_1BD64A1D4();
  }

  else
  {
    return sub_1BD64A1CC();
  }
}

unint64_t sub_1BDA3A2F4()
{
  result = qword_1EBD5C550;
  if (!qword_1EBD5C550)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD5C548);
    sub_1BDA3A3AC();
    sub_1BD0DE4F4(&qword_1EBD366E0, &unk_1EBD491A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD5C550);
  }

  return result;
}

unint64_t sub_1BDA3A3AC()
{
  result = qword_1EBD5C558;
  if (!qword_1EBD5C558)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD5C560);
    sub_1BDA3A438();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD5C558);
  }

  return result;
}

unint64_t sub_1BDA3A438()
{
  result = qword_1EBD5C568;
  if (!qword_1EBD5C568)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD5C570);
    sub_1BD0DE43C();
    sub_1BD0DE4F4(&unk_1EBD36780, &unk_1EBD51F60);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD5C568);
  }

  return result;
}

uint64_t objectdestroy_12Tm_1()
{

  return swift_deallocObject();
}

void sub_1BDA3A540()
{
  v1 = type metadata accessor for DeviceViewModel(0);
  v2 = (v0 + ((*(*(v1 - 8) + 80) + 56) & ~*(*(v1 - 8) + 80)));
  sub_1BD64A328(v2, (*(v2 + *(v1 + 40)) & 1) == 0, 0);
}

void sub_1BDA3A5E0()
{
  type metadata accessor for DeviceViewModel(319);
  if (v0 <= 0x3F)
  {
    sub_1BD7DEDA8();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_1BDA3A664()
{
  result = qword_1EBD5C598;
  if (!qword_1EBD5C598)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD5C3B0);
    sub_1BD0DE4F4(&qword_1EBD5C5A0, &qword_1EBD5C3A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD5C598);
  }

  return result;
}

unint64_t sub_1BDA3A738()
{
  result = qword_1EBD5C5F0;
  if (!qword_1EBD5C5F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD5C5E0);
    sub_1BD0DE4F4(&qword_1EBD5C5F8, &qword_1EBD5C600);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD5C5F0);
  }

  return result;
}

uint64_t sub_1BDA3A7F0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1BDA3A858(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1BDA3A8C0@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = *(type metadata accessor for DeviceRowView() - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_1BDA3941C(a1, v6, a2);
}

unint64_t sub_1BDA3A940()
{
  result = qword_1EBD5C610;
  if (!qword_1EBD5C610)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD5C608);
    sub_1BDA3A9EC();
    sub_1BDA3AB70(&qword_1EBD3E278, &qword_1EBD3E280);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD5C610);
  }

  return result;
}

unint64_t sub_1BDA3A9EC()
{
  result = qword_1EBD5C618;
  if (!qword_1EBD5C618)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD5C620);
    sub_1BDA3AA98();
    sub_1BDA3AB70(&qword_1EBD3E278, &qword_1EBD3E280);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD5C618);
  }

  return result;
}

unint64_t sub_1BDA3AA98()
{
  result = qword_1EBD5C628;
  if (!qword_1EBD5C628)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EBD5C630);
    sub_1BDA3AB70(&qword_1EBD3E278, &qword_1EBD3E280);
    sub_1BD0DE4F4(&qword_1EBD36720, &qword_1EBD596F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD5C628);
  }

  return result;
}

uint64_t sub_1BDA3AB70(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1BDA3ABE0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1BDA3AC28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if ((a5 & 1) == 0)
  {
    sub_1BE048964();
    v5 = vars8;
  }

  return sub_1BE048964();
}

uint64_t sub_1BDA3AC64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{

  if ((a5 & 1) == 0)
  {
  }

  return result;
}

uint64_t sub_1BDA3ACB0()
{
  v1 = sub_1BE04F3D4();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1, v3);
  v5 = &v9[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = *(v0 + 264);
  v6 = *(v0 + 256);
  v10 = v6;
  if (v11 != 1)
  {
    sub_1BE048964();
    sub_1BE052C44();
    v7 = sub_1BE050174();
    sub_1BE04CF84();

    sub_1BE04F3C4();
    swift_getAtKeyPath();
    sub_1BD0DE53C(&v10, &qword_1EBD5C6E0);
    (*(v2 + 8))(v5, v1);
    LOBYTE(v6) = v9[15];
  }

  return v6 & 1;
}

id sub_1BDA3AE10(uint64_t a1)
{
  v2 = v1;
  v32 = a1;
  v3 = sub_1BE051F54();
  v36 = *(v3 - 8);
  v37 = v3;
  MEMORY[0x1EEE9AC00](v3, v4);
  v34 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = sub_1BE051FA4();
  v33 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35, v6);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v1 + 16);
  v38 = *v1;
  v39 = v9;
  v40 = *(v1 + 32);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD4EED0);
  sub_1BE051914();
  v38 = v42[0];
  v39 = v42[1];
  v40 = v43;
  MEMORY[0x1BFB3E970](aBlock, v10);
  v11 = sub_1BE053344();
  sub_1BD0DE53C(v42, &unk_1EBD4EED0);
  v12 = objc_allocWithZone(PKEnterCurrencyAmountView);
  v13 = sub_1BE052404();
  v14 = [v12 initWithCurrency:v13 amount:v11];

  if (!v14)
  {
    return [objc_allocWithZone(PKEnterCurrencyAmountView) init];
  }

  v15 = [v14 backgroundColor];
  [v14 setKeyboardColor_];

  [v14 setShowsDecimalPointButton_];
  if (sub_1BDA3ACB0())
  {
    v16 = 64.0;
  }

  else
  {
    v16 = 71.0;
  }

  if (sub_1BDA3ACB0())
  {
    v17 = 38.0;
  }

  else
  {
    v17 = 45.0;
  }

  v18 = *MEMORY[0x1E69DB980];
  v19 = PKRoundedSystemFontOfSizeAndWeight(v16, *MEMORY[0x1E69DB980]);
  v20 = PKRoundedSystemFontOfSizeAndWeight(v17, v18);
  v31 = v19;
  [v14 setAmountFont_];
  v30 = v20;
  [v14 setCurrencySymbolFont_];
  v21 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithDouble_];
  [v14 setKerning_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD5C6D0);
  sub_1BE04FF74();
  v22 = v38;
  [v14 setDelegate_];

  [v14 setEnableDoneButton_];
  if (*(v2 + 248))
  {
    [v14 showKeyboard];
  }

  sub_1BD0E5E8C(0, &qword_1EBD35E90);
  v23 = sub_1BE052D54();
  v24 = swift_allocObject();
  memcpy((v24 + 16), v2, 0x109uLL);
  aBlock[4] = sub_1BDA3D878;
  aBlock[5] = v24;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BD126964;
  aBlock[3] = &block_descriptor_32_5;
  v25 = _Block_copy(aBlock);
  sub_1BDA3D880(v2, &v38);

  sub_1BE051F74();
  *&v38 = MEMORY[0x1E69E7CC0];
  sub_1BD14EC84();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD387F0);
  sub_1BD14ECDC();
  v26 = v34;
  v27 = v37;
  sub_1BE053664();
  MEMORY[0x1BFB3FDF0](0, v8, v26, v25);
  _Block_release(v25);

  (*(v36 + 8))(v26, v27);
  (*(v33 + 8))(v8, v35);
  if (*(v2 + 224))
  {
    sub_1BD0E5E8C(0, &qword_1EBD4EF20);
    v28 = sub_1BE052724();
    [v14 setAmountSuggestions_];
  }

  return v14;
}

void sub_1BDA3B3C0(uint64_t a1)
{
  v2 = sub_1BE04BD74();
  v3 = *(v2 - 8);
  v5 = MEMORY[0x1EEE9AC00](v2, v4);
  v7 = v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a1 + 152) == 3)
  {
    (*(v3 + 104))(v7, *MEMORY[0x1E69B80E0], v2, v5);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF80);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_1BE0B69E0;
    v9 = sub_1BE053344();
    v10 = sub_1BE052404();
    v11 = PKCurrencyAmountMake();

    if (v11)
    {
      v12 = [v11 minimalFormattedStringValue];

      if (v12)
      {
        v13 = sub_1BE052434();
        v15 = v14;

        *(v8 + 56) = MEMORY[0x1E69E6158];
        *(v8 + 64) = sub_1BD110550();
        *(v8 + 32) = v13;
        *(v8 + 40) = v15;
        v16 = sub_1BE04B714();
        v18 = v17;

        (*(v3 + 8))(v7, v2);
        v19 = *(a1 + 56);
        v22 = *(a1 + 40);
        v23 = v19;
        v21[0] = v16;
        v21[1] = v18;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5C6C0);
        sub_1BE0518F4();
        v20 = sub_1BE051494();
        v22 = *(a1 + 72);
        *&v23 = *(a1 + 88);
        v21[0] = v20;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5C6C8);
        sub_1BE0518F4();
        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
  }
}

char *sub_1BDA3B638()
{
  v1 = v0;
  v2 = sub_1BE051F54();
  v69 = *(v2 - 8);
  v70 = v2;
  MEMORY[0x1EEE9AC00](v2, v3);
  v68 = &v50[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_1BE051FA4();
  v66 = *(v5 - 8);
  v67 = v5;
  MEMORY[0x1EEE9AC00](v5, v6);
  v65 = &v50[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v91 = *(v0 + 200);
  LOBYTE(v92) = *(v0 + 216);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD4DFE0);
  sub_1BE051914();
  v87 = *(&v108 + 1);
  v85 = v108;
  v62 = v109;
  v8 = v0[1];
  v91 = *v0;
  v92 = v8;
  LODWORD(v93) = *(v0 + 8);
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD4EED0);
  sub_1BE051914();
  v9 = *(v0 + 56);
  v91 = *(v0 + 40);
  v92 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5C6C0);
  sub_1BE051914();
  v89 = *(&v108 + 1);
  v90 = v108;
  v88 = *(&v109 + 1);
  v56 = v109;
  v91 = *(v0 + 72);
  *&v92 = *(v0 + 11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5C6C8);
  sub_1BE051914();
  v10 = v0[7];
  v105 = v0[6];
  v11 = v108;
  v83 = *(&v108 + 1);
  v86 = v108;
  v84 = v109;
  v103 = v10;
  v104 = *(v0 + 32);
  v101 = *(v0 + 132);
  v102 = *(v0 + 37);
  v12 = *(v0 + 40);
  v13 = *(v0 + 82);
  v60 = v13;
  v61 = v12;
  v81 = *(v0 + 84);
  v14 = *(v0 + 85);
  v58 = v14;
  v80 = *(v0 + 86);
  v82 = *(v0 + 88);
  v79 = *(v0 + 45);
  v78 = *(v0 + 92);
  v72 = *(v0 + 93);
  v77 = *(v0 + 94);
  v76 = *(v0 + 95);
  v75 = *(v0 + 96);
  v71 = *(v0 + 97);
  v15 = *(v0 + 98);
  v73 = *(v0 + 99);
  v74 = v15;
  v52 = *(v0 + 19);
  v53 = *(v0 + 249);
  v16 = *(v0 + 29);
  v54 = *(v0 + 30);
  v55 = v16;
  v17 = *(v0 + 83);
  v59 = v17;
  v18 = *(v0 + 87);
  v57 = v18;
  v51 = *(v1 + 89);
  v63 = type metadata accessor for EnterCurrencyAmountView.Coordinator();
  v19 = objc_allocWithZone(v63);
  *&v19[OBJC_IVAR____TtCV9PassKitUI23EnterCurrencyAmountView11Coordinator_view] = 0;
  v20 = &v19[OBJC_IVAR____TtCV9PassKitUI23EnterCurrencyAmountView11Coordinator__nextDisabled];
  v21 = v87;
  *v20 = v85;
  *(v20 + 1) = v21;
  v20[16] = v62;
  v22 = &v19[OBJC_IVAR____TtCV9PassKitUI23EnterCurrencyAmountView11Coordinator__amount];
  v24 = v106[0];
  v23 = v106[1];
  *(v22 + 8) = v107;
  *v22 = v24;
  *(v22 + 1) = v23;
  v25 = &v19[OBJC_IVAR____TtCV9PassKitUI23EnterCurrencyAmountView11Coordinator__amountGuide];
  v26 = v89;
  *v25 = v90;
  v25[1] = v26;
  v27 = v88;
  v25[2] = v56;
  v25[3] = v27;
  v28 = &v19[OBJC_IVAR____TtCV9PassKitUI23EnterCurrencyAmountView11Coordinator__amountGuideColor];
  *v28 = v11;
  *(v28 + 2) = v84;
  *&v19[OBJC_IVAR____TtCV9PassKitUI23EnterCurrencyAmountView11Coordinator_currencyCode] = v105;
  v29 = &v19[OBJC_IVAR____TtCV9PassKitUI23EnterCurrencyAmountView11Coordinator_currentBalance];
  *(v29 + 4) = v104;
  *v29 = v103;
  v30 = &v19[OBJC_IVAR____TtCV9PassKitUI23EnterCurrencyAmountView11Coordinator_availableBalance];
  *(v30 + 4) = v102;
  *v30 = v101;
  v31 = &v19[OBJC_IVAR____TtCV9PassKitUI23EnterCurrencyAmountView11Coordinator_minLoadAmount];
  *v31 = v12;
  *(v31 + 2) = v13;
  *(v31 + 3) = v17;
  LOWORD(v27) = v80;
  *(v31 + 4) = v81;
  *(v31 + 5) = v14;
  *(v31 + 6) = v27;
  *(v31 + 7) = v18;
  *(v31 + 8) = v82;
  v32 = v51;
  *(v31 + 9) = v51;
  v33 = &v19[OBJC_IVAR____TtCV9PassKitUI23EnterCurrencyAmountView11Coordinator_maxLoadAmount];
  *v33 = v79;
  *(v33 + 2) = v78;
  *(v33 + 3) = v72;
  *(v33 + 4) = v77;
  *(v33 + 5) = v76;
  *(v33 + 6) = v75;
  *(v33 + 7) = v71;
  *(v33 + 8) = v74;
  *(v33 + 9) = v73;
  *&v19[OBJC_IVAR____TtCV9PassKitUI23EnterCurrencyAmountView11Coordinator_transferType] = v52;
  v19[OBJC_IVAR____TtCV9PassKitUI23EnterCurrencyAmountView11Coordinator_shakeMode] = v53;
  v34 = &v19[OBJC_IVAR____TtCV9PassKitUI23EnterCurrencyAmountView11Coordinator_keypadSuggestionSelected];
  v36 = v54;
  v35 = v55;
  *v34 = v55;
  v34[1] = v36;
  sub_1BD206260(&v105, &v91);
  sub_1BE048964();
  sub_1BE048964();
  sub_1BD64475C(v106, &v91);
  sub_1BE048964();
  sub_1BE048964();
  sub_1BE048964();
  v37 = v64;
  sub_1BE048C84();
  sub_1BE048964();
  sub_1BE048964();
  sub_1BD0D44B8(v35);
  v100.receiver = v19;
  v100.super_class = v63;
  v38 = objc_msgSendSuper2(&v100, sel_init);
  v39 = &v38[OBJC_IVAR____TtCV9PassKitUI23EnterCurrencyAmountView11Coordinator__amount];
  v110 = *&v38[OBJC_IVAR____TtCV9PassKitUI23EnterCurrencyAmountView11Coordinator__amount + 32];
  v109 = *&v38[OBJC_IVAR____TtCV9PassKitUI23EnterCurrencyAmountView11Coordinator__amount + 16];
  v108 = *&v38[OBJC_IVAR____TtCV9PassKitUI23EnterCurrencyAmountView11Coordinator__amount];
  v91 = v108;
  v92 = v109;
  LODWORD(v93) = v110;
  v40 = v38;
  MEMORY[0x1BFB3E970](&v97, v37);
  if (MEMORY[0x1BFB403F0](v97, *(&v97 + 1), v98, v61 | (v60 << 32) | (v59 << 48), v81 | (v58 << 16) | (v80 << 32) | (v57 << 48), v82 | (v32 << 16)))
  {
    v41 = 1;
  }

  else
  {
    v91 = *v39;
    v92 = *(v39 + 1);
    LODWORD(v93) = *(v39 + 8);
    v97 = v91;
    v98 = v92;
    v99 = v93;
    MEMORY[0x1BFB3E970](v95, v37);
    v41 = MEMORY[0x1BFB403F0](v79 | (v78 << 32) | (v72 << 48), v77 | (v76 << 16) | (v75 << 32) | (v71 << 48), v74 | (v73 << 16), v95[0], v95[1], v96);
  }

  sub_1BD0E5E8C(0, &qword_1EBD35E90);
  v42 = sub_1BE052D54();
  v43 = swift_allocObject();
  *(v43 + 16) = v40;
  *(v43 + 24) = v41 & 1;
  v93 = sub_1BDA3D86C;
  v94 = v43;
  *&v91 = MEMORY[0x1E69E9820];
  *(&v91 + 1) = 1107296256;
  *&v92 = sub_1BD126964;
  *(&v92 + 1) = &block_descriptor_243;
  v44 = _Block_copy(&v91);
  v45 = v40;

  v46 = v65;
  sub_1BE051F74();
  *&v91 = MEMORY[0x1E69E7CC0];
  sub_1BD14EC84();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD387F0);
  sub_1BD14ECDC();
  v47 = v68;
  v48 = v70;
  sub_1BE053664();
  MEMORY[0x1BFB3FDF0](0, v46, v47, v44);
  _Block_release(v44);

  sub_1BD0DE53C(v106, &unk_1EBD4EED0);

  (*(v69 + 8))(v47, v48);
  (*(v66 + 8))(v46, v67);
  return v45;
}

uint64_t sub_1BDA3BE9C(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (!a3)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v4 = v3;
  v6 = result;
  v7 = sub_1BE0533F4();
  v9 = v8;
  v11 = v10;
  if (MEMORY[0x1BFB403F0]())
  {
    v12 = 1;
  }

  else
  {
    v12 = MEMORY[0x1BFB403F0](*(v3 + OBJC_IVAR____TtCV9PassKitUI23EnterCurrencyAmountView11Coordinator_maxLoadAmount), *(v3 + OBJC_IVAR____TtCV9PassKitUI23EnterCurrencyAmountView11Coordinator_maxLoadAmount + 8), *(v3 + OBJC_IVAR____TtCV9PassKitUI23EnterCurrencyAmountView11Coordinator_maxLoadAmount + 16), v7, v9, v11);
  }

  v13 = *(v3 + OBJC_IVAR____TtCV9PassKitUI23EnterCurrencyAmountView11Coordinator_transferType);
  if (v13 == 3)
  {
    v57 = v12;
    v14 = sub_1BE053394();
    v16 = v15;
    v18 = v17;
    v19 = MEMORY[0x1BFB403C0](0);
    v21 = v20;
    v22 = v18;
    v13 = 3;
    v24 = MEMORY[0x1BFB403F0](v14, v16, v22, v19, v23, v21);
    v12 = v57;
  }

  else
  {
    v24 = 0;
  }

  v25 = (v3 + OBJC_IVAR____TtCV9PassKitUI23EnterCurrencyAmountView11Coordinator__nextDisabled);
  v26 = *(v3 + OBJC_IVAR____TtCV9PassKitUI23EnterCurrencyAmountView11Coordinator__nextDisabled + 8);
  v27 = *(v3 + OBJC_IVAR____TtCV9PassKitUI23EnterCurrencyAmountView11Coordinator__nextDisabled + 16);
  v59 = *(v3 + OBJC_IVAR____TtCV9PassKitUI23EnterCurrencyAmountView11Coordinator__nextDisabled);
  v60 = v26;
  v61 = v27;
  v58 = (v12 | v24) & 1;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD4DFE0);
  result = sub_1BE0518F4();
  if (*(v3 + OBJC_IVAR____TtCV9PassKitUI23EnterCurrencyAmountView11Coordinator_shakeMode))
  {
    if (*(v3 + OBJC_IVAR____TtCV9PassKitUI23EnterCurrencyAmountView11Coordinator_shakeMode) != 1 || (v29 = v25[1], v30 = *(v25 + 16), v59 = *v25, v60 = v29, v61 = v30, result = MEMORY[0x1BFB3E970](&v58, v28), v58 != 1) || (result = MEMORY[0x1BFB403F0](*(v3 + OBJC_IVAR____TtCV9PassKitUI23EnterCurrencyAmountView11Coordinator_maxLoadAmount), *(v3 + OBJC_IVAR____TtCV9PassKitUI23EnterCurrencyAmountView11Coordinator_maxLoadAmount + 8), *(v3 + OBJC_IVAR____TtCV9PassKitUI23EnterCurrencyAmountView11Coordinator_maxLoadAmount + 16), v7, v9, v11), (result & 1) == 0))
    {
LABEL_16:
      if (a2)
      {
        v33 = sub_1BE0533F4();
        v35 = v34;
        v37 = v36;
        v38 = v4 + OBJC_IVAR____TtCV9PassKitUI23EnterCurrencyAmountView11Coordinator_maxLoadAmount;
        if (MEMORY[0x1BFB403F0](*(v4 + OBJC_IVAR____TtCV9PassKitUI23EnterCurrencyAmountView11Coordinator_maxLoadAmount), *(v4 + OBJC_IVAR____TtCV9PassKitUI23EnterCurrencyAmountView11Coordinator_maxLoadAmount + 8), *(v4 + OBJC_IVAR____TtCV9PassKitUI23EnterCurrencyAmountView11Coordinator_maxLoadAmount + 16), v7, v9, v11))
        {
          v39 = MEMORY[0x1BFB403F0](*v38, *(v38 + 8), *(v38 + 16), v33, v35, v37) ^ 1;
          if (v13 != 3)
          {
            return v39 & 1;
          }
        }

        else
        {
          v39 = 1;
          if (v13 != 3)
          {
            return v39 & 1;
          }
        }

        v40 = sub_1BE053394();
        v42 = v41;
        v44 = v43;
        v45 = MEMORY[0x1BFB403C0](0);
        if (MEMORY[0x1BFB403F0](v40, v42, v44, v45, v46, v47))
        {
          v48 = sub_1BE053394();
          v50 = v49;
          v52 = v51;
          v53 = MEMORY[0x1BFB403C0](0);
          v56 = MEMORY[0x1BFB403F0](v48, v50, v52, v53, v54, v55);
          if (v39)
          {
            v39 = v56 ^ 1;
            return v39 & 1;
          }
        }

        else if (v39)
        {
          v39 = 1;
          return v39 & 1;
        }

        v39 = 0;
        return v39 & 1;
      }

      goto LABEL_29;
    }
  }

  else
  {
    v31 = v25[1];
    v32 = *(v25 + 16);
    v59 = *v25;
    v60 = v31;
    v61 = v32;
    result = MEMORY[0x1BFB3E970](&v58, v28);
    if (v58 != 1)
    {
      goto LABEL_16;
    }
  }

  if (v6)
  {
    result = [v6 pkui:0 smallShakeWithCompletion:?];
    goto LABEL_16;
  }

LABEL_30:
  __break(1u);
  return result;
}

void sub_1BDA3C2CC(void *a1)
{
  v2 = v1;
  v4 = sub_1BE04BD74();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v82 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = &v82 - v11;
  v16 = MEMORY[0x1EEE9AC00](v13, v14);
  v18 = &v82 - v17;
  if (!a1)
  {
    __break(1u);
    goto LABEL_23;
  }

  v83 = v5;
  v84 = v15;
  v19 = [a1 currentAmount];
  if (!v19)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v20 = v19;
  v21 = sub_1BE0533F4();
  v23 = v22;
  v25 = v24;

  v26 = (v2 + OBJC_IVAR____TtCV9PassKitUI23EnterCurrencyAmountView11Coordinator__amount);
  v27 = *(v2 + OBJC_IVAR____TtCV9PassKitUI23EnterCurrencyAmountView11Coordinator__amount + 16);
  v91[0] = *(v2 + OBJC_IVAR____TtCV9PassKitUI23EnterCurrencyAmountView11Coordinator__amount);
  v91[1] = v27;
  v92 = *(v2 + OBJC_IVAR____TtCV9PassKitUI23EnterCurrencyAmountView11Coordinator__amount + 32);
  v28 = *(v2 + OBJC_IVAR____TtCV9PassKitUI23EnterCurrencyAmountView11Coordinator__amount + 16);
  v88 = *(v2 + OBJC_IVAR____TtCV9PassKitUI23EnterCurrencyAmountView11Coordinator__amount);
  v89 = v28;
  v90 = *(v2 + OBJC_IVAR____TtCV9PassKitUI23EnterCurrencyAmountView11Coordinator__amount + 32);
  v85 = v21;
  v86 = v23;
  v87 = v25;
  sub_1BD64475C(v91, v93);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD4EED0);
  sub_1BE0518F4();
  v93[0] = v88;
  v93[1] = v89;
  v94 = v90;
  sub_1BD0DE53C(v93, &unk_1EBD4EED0);
  v30 = v26[1];
  v88 = *v26;
  v89 = v30;
  v90 = *(v26 + 8);
  MEMORY[0x1BFB3E970](&v85, v29);
  if ((sub_1BE053444() & 1) == 0)
  {
    v31 = v26[1];
    v88 = *v26;
    v89 = v31;
    v90 = *(v26 + 8);
    MEMORY[0x1BFB3E970](&v85, v29);
    if ((sub_1BE053414() & 1) == 0)
    {
      v65 = *(v2 + OBJC_IVAR____TtCV9PassKitUI23EnterCurrencyAmountView11Coordinator__amountGuide + 8);
      *&v88 = *(v2 + OBJC_IVAR____TtCV9PassKitUI23EnterCurrencyAmountView11Coordinator__amountGuide);
      *(&v88 + 1) = v65;
      v89 = *(v2 + OBJC_IVAR____TtCV9PassKitUI23EnterCurrencyAmountView11Coordinator__amountGuide + 16);
      v85 = 0;
      v86 = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5C6C0);
      sub_1BE0518F4();
      v66 = *(v2 + OBJC_IVAR____TtCV9PassKitUI23EnterCurrencyAmountView11Coordinator__amountGuideColor + 16);
      v88 = *(v2 + OBJC_IVAR____TtCV9PassKitUI23EnterCurrencyAmountView11Coordinator__amountGuideColor);
      *&v89 = v66;
      v85 = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5C6C8);
LABEL_20:
      sub_1BE0518F4();
      return;
    }
  }

  v32 = sub_1BE051494();
  v33 = (v2 + OBJC_IVAR____TtCV9PassKitUI23EnterCurrencyAmountView11Coordinator__amountGuideColor);
  v34 = *(v2 + OBJC_IVAR____TtCV9PassKitUI23EnterCurrencyAmountView11Coordinator__amountGuideColor + 16);
  v88 = *(v2 + OBJC_IVAR____TtCV9PassKitUI23EnterCurrencyAmountView11Coordinator__amountGuideColor);
  *&v89 = v34;
  v85 = v32;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5C6C8);
  sub_1BE0518F4();
  v35 = v26[1];
  v88 = *v26;
  v89 = v35;
  v90 = *(v26 + 8);
  MEMORY[0x1BFB3E970](&v85, v29);
  if (MEMORY[0x1BFB403F0](v85, v86, v87, *(v2 + OBJC_IVAR____TtCV9PassKitUI23EnterCurrencyAmountView11Coordinator_minLoadAmount), *(v2 + OBJC_IVAR____TtCV9PassKitUI23EnterCurrencyAmountView11Coordinator_minLoadAmount + 8), *(v2 + OBJC_IVAR____TtCV9PassKitUI23EnterCurrencyAmountView11Coordinator_minLoadAmount + 16)))
  {
    v36 = v83;
    v37 = v84;
    (*(v83 + 104))(v18, *MEMORY[0x1E69B80E0], v84);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF80);
    v38 = swift_allocObject();
    *(v38 + 16) = xmmword_1BE0B69E0;
    v39 = sub_1BE053344();
    v40 = sub_1BE052404();
    v41 = PKCurrencyAmountMake();

    if (v41)
    {
      v42 = [v41 minimalFormattedStringValue];

      if (v42)
      {
        v43 = sub_1BE052434();
        v45 = v44;

        *(v38 + 56) = MEMORY[0x1E69E6158];
        *(v38 + 64) = sub_1BD110550();
        *(v38 + 32) = v43;
        *(v38 + 40) = v45;
        v46 = sub_1BE04B714();
        v48 = v47;

        (*(v36 + 8))(v18, v37);
        v49 = *(v2 + OBJC_IVAR____TtCV9PassKitUI23EnterCurrencyAmountView11Coordinator__amountGuide + 8);
        *&v88 = *(v2 + OBJC_IVAR____TtCV9PassKitUI23EnterCurrencyAmountView11Coordinator__amountGuide);
        *(&v88 + 1) = v49;
        v89 = *(v2 + OBJC_IVAR____TtCV9PassKitUI23EnterCurrencyAmountView11Coordinator__amountGuide + 16);
        v85 = v46;
        v86 = v48;
LABEL_19:
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5C6C0);
        goto LABEL_20;
      }

      goto LABEL_25;
    }

LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v50 = v26[1];
  v88 = *v26;
  v89 = v50;
  v90 = *(v26 + 8);
  MEMORY[0x1BFB3E970](&v85, v29);
  if (MEMORY[0x1BFB403F0](*(v2 + OBJC_IVAR____TtCV9PassKitUI23EnterCurrencyAmountView11Coordinator_maxLoadAmount), *(v2 + OBJC_IVAR____TtCV9PassKitUI23EnterCurrencyAmountView11Coordinator_maxLoadAmount + 8), *(v2 + OBJC_IVAR____TtCV9PassKitUI23EnterCurrencyAmountView11Coordinator_maxLoadAmount + 16), v85, v86, v87))
  {
    v51 = v83;
    v52 = v84;
    (*(v83 + 104))(v12, *MEMORY[0x1E69B80E0], v84);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF80);
    v53 = swift_allocObject();
    *(v53 + 16) = xmmword_1BE0B69E0;
    v54 = sub_1BE053344();
    v55 = sub_1BE052404();
    v56 = PKCurrencyAmountMake();

    if (!v56)
    {
LABEL_26:
      __break(1u);
      goto LABEL_27;
    }

    v57 = [v56 minimalFormattedStringValue];

    if (!v57)
    {
LABEL_27:
      __break(1u);
LABEL_28:
      __break(1u);
      goto LABEL_29;
    }

    v58 = sub_1BE052434();
    v60 = v59;

    *(v53 + 56) = MEMORY[0x1E69E6158];
    *(v53 + 64) = sub_1BD110550();
    *(v53 + 32) = v58;
    *(v53 + 40) = v60;
    v61 = sub_1BE04B714();
    v63 = v62;

    (*(v51 + 8))(v12, v52);
    v64 = *(v2 + OBJC_IVAR____TtCV9PassKitUI23EnterCurrencyAmountView11Coordinator__amountGuide + 8);
    *&v88 = *(v2 + OBJC_IVAR____TtCV9PassKitUI23EnterCurrencyAmountView11Coordinator__amountGuide);
    *(&v88 + 1) = v64;
    v89 = *(v2 + OBJC_IVAR____TtCV9PassKitUI23EnterCurrencyAmountView11Coordinator__amountGuide + 16);
    v85 = v61;
LABEL_18:
    v86 = v63;
    goto LABEL_19;
  }

  if (*(v2 + OBJC_IVAR____TtCV9PassKitUI23EnterCurrencyAmountView11Coordinator_transferType) != 3)
  {
    v80 = *(v2 + OBJC_IVAR____TtCV9PassKitUI23EnterCurrencyAmountView11Coordinator__amountGuide + 8);
    *&v88 = *(v2 + OBJC_IVAR____TtCV9PassKitUI23EnterCurrencyAmountView11Coordinator__amountGuide);
    *(&v88 + 1) = v80;
    v89 = *(v2 + OBJC_IVAR____TtCV9PassKitUI23EnterCurrencyAmountView11Coordinator__amountGuide + 16);
    v85 = 0;
    v86 = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5C6C0);
    sub_1BE0518F4();
    v81 = *(v33 + 2);
    v88 = *v33;
    *&v89 = v81;
    v85 = 0;
    goto LABEL_20;
  }

  v67 = v83;
  v68 = v84;
  (*(v83 + 104))(v8, *MEMORY[0x1E69B80E0], v84);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF80);
  v69 = swift_allocObject();
  *(v69 + 16) = xmmword_1BE0B69E0;
  v70 = sub_1BE053344();
  v71 = sub_1BE052404();
  v72 = PKCurrencyAmountMake();

  if (!v72)
  {
    goto LABEL_28;
  }

  v73 = [v72 minimalFormattedStringValue];

  if (v73)
  {
    v74 = sub_1BE052434();
    v76 = v75;

    *(v69 + 56) = MEMORY[0x1E69E6158];
    *(v69 + 64) = sub_1BD110550();
    *(v69 + 32) = v74;
    *(v69 + 40) = v76;
    v77 = sub_1BE04B714();
    v63 = v78;

    (*(v67 + 8))(v8, v68);
    v79 = *(v2 + OBJC_IVAR____TtCV9PassKitUI23EnterCurrencyAmountView11Coordinator__amountGuide + 8);
    *&v88 = *(v2 + OBJC_IVAR____TtCV9PassKitUI23EnterCurrencyAmountView11Coordinator__amountGuide);
    *(&v88 + 1) = v79;
    v89 = *(v2 + OBJC_IVAR____TtCV9PassKitUI23EnterCurrencyAmountView11Coordinator__amountGuide + 16);
    v85 = v77;
    goto LABEL_18;
  }

LABEL_29:
  __break(1u);
}

id sub_1BDA3CCE8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for EnterCurrencyAmountView.Coordinator();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t destroy for EnterCurrencyAmountView(uint64_t a1)
{

  if (*(a1 + 232))
  {
  }

  v2 = *(a1 + 256);
  v3 = *(a1 + 264);

  return sub_1BD0D4604(v2, v3);
}

uint64_t initializeWithCopy for EnterCurrencyAmountView(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v4;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  v5 = *(a2 + 48);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = v5;
  v6 = *(a2 + 64);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = v6;
  v7 = *(a2 + 80);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 80) = v7;
  v9 = *(a2 + 96);
  v8 = *(a2 + 104);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 96) = v9;
  *(a1 + 104) = v8;
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 132) = *(a2 + 132);
  *(a1 + 148) = *(a2 + 148);
  *(a1 + 152) = *(a2 + 152);
  v10 = *(a2 + 160);
  *(a1 + 176) = *(a2 + 176);
  *(a1 + 160) = v10;
  v11 = (a2 + 232);
  v17 = *(a2 + 232);
  *(a1 + 196) = *(a2 + 196);
  *(a1 + 180) = *(a2 + 180);
  v12 = *(a2 + 208);
  *(a1 + 200) = *(a2 + 200);
  *(a1 + 208) = v12;
  *(a1 + 216) = *(a2 + 216);
  *(a1 + 224) = *(a2 + 224);
  sub_1BE048964();
  sub_1BE048964();
  sub_1BE048964();
  sub_1BE048964();
  sub_1BE048C84();
  sub_1BE048964();
  sub_1BE048964();
  sub_1BE048964();
  sub_1BE048C84();
  sub_1BE048964();
  sub_1BE048964();
  sub_1BE048C84();
  if (v17)
  {
    v13 = *(a2 + 240);
    *(a1 + 232) = v17;
    *(a1 + 240) = v13;
    sub_1BE048964();
  }

  else
  {
    *(a1 + 232) = *v11;
  }

  *(a1 + 248) = *(a2 + 248);
  *(a1 + 249) = *(a2 + 249);
  v14 = *(a2 + 256);
  v15 = *(a2 + 264);
  sub_1BD619014(v14, v15);
  *(a1 + 256) = v14;
  *(a1 + 264) = v15;
  return a1;
}

uint64_t assignWithCopy for EnterCurrencyAmountView(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  sub_1BE048964();

  *(a1 + 8) = *(a2 + 8);
  sub_1BE048964();

  *(a1 + 16) = *(a2 + 16);
  *(a1 + 20) = *(a2 + 20);
  *(a1 + 22) = *(a2 + 22);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 26) = *(a2 + 26);
  *(a1 + 28) = *(a2 + 28);
  *(a1 + 30) = *(a2 + 30);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 34) = *(a2 + 34);
  *(a1 + 40) = *(a2 + 40);
  sub_1BE048964();

  *(a1 + 48) = *(a2 + 48);
  sub_1BE048964();

  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = *(a2 + 64);
  sub_1BE048C84();

  *(a1 + 72) = *(a2 + 72);
  sub_1BE048964();

  *(a1 + 80) = *(a2 + 80);
  sub_1BE048964();

  *(a1 + 88) = *(a2 + 88);
  sub_1BE048964();

  *(a1 + 96) = *(a2 + 96);
  *(a1 + 104) = *(a2 + 104);
  sub_1BE048C84();

  *(a1 + 112) = *(a2 + 112);
  *(a1 + 116) = *(a2 + 116);
  *(a1 + 118) = *(a2 + 118);
  *(a1 + 120) = *(a2 + 120);
  *(a1 + 122) = *(a2 + 122);
  *(a1 + 124) = *(a2 + 124);
  *(a1 + 126) = *(a2 + 126);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 130) = *(a2 + 130);
  *(a1 + 132) = *(a2 + 132);
  *(a1 + 136) = *(a2 + 136);
  *(a1 + 138) = *(a2 + 138);
  *(a1 + 140) = *(a2 + 140);
  *(a1 + 142) = *(a2 + 142);
  *(a1 + 144) = *(a2 + 144);
  *(a1 + 146) = *(a2 + 146);
  *(a1 + 148) = *(a2 + 148);
  *(a1 + 150) = *(a2 + 150);
  *(a1 + 152) = *(a2 + 152);
  *(a1 + 160) = *(a2 + 160);
  *(a1 + 164) = *(a2 + 164);
  *(a1 + 166) = *(a2 + 166);
  *(a1 + 168) = *(a2 + 168);
  *(a1 + 170) = *(a2 + 170);
  *(a1 + 172) = *(a2 + 172);
  *(a1 + 174) = *(a2 + 174);
  *(a1 + 176) = *(a2 + 176);
  *(a1 + 178) = *(a2 + 178);
  *(a1 + 180) = *(a2 + 180);
  *(a1 + 184) = *(a2 + 184);
  *(a1 + 186) = *(a2 + 186);
  *(a1 + 188) = *(a2 + 188);
  *(a1 + 190) = *(a2 + 190);
  *(a1 + 192) = *(a2 + 192);
  *(a1 + 194) = *(a2 + 194);
  *(a1 + 196) = *(a2 + 196);
  *(a1 + 198) = *(a2 + 198);
  *(a1 + 200) = *(a2 + 200);
  sub_1BE048964();

  *(a1 + 208) = *(a2 + 208);
  sub_1BE048964();

  *(a1 + 216) = *(a2 + 216);
  *(a1 + 224) = *(a2 + 224);
  sub_1BE048C84();

  v4 = *(a2 + 232);
  if (!*(a1 + 232))
  {
    if (v4)
    {
      v6 = *(a2 + 240);
      *(a1 + 232) = v4;
      *(a1 + 240) = v6;
      sub_1BE048964();
      goto LABEL_8;
    }

LABEL_7:
    *(a1 + 232) = *(a2 + 232);
    goto LABEL_8;
  }

  if (!v4)
  {

    goto LABEL_7;
  }

  v5 = *(a2 + 240);
  *(a1 + 232) = v4;
  *(a1 + 240) = v5;
  sub_1BE048964();

LABEL_8:
  *(a1 + 248) = *(a2 + 248);
  *(a1 + 249) = *(a2 + 249);
  *(a1 + 250) = *(a2 + 250);
  v7 = *(a2 + 256);
  v8 = *(a2 + 264);
  sub_1BD619014(v7, v8);
  v9 = *(a1 + 256);
  v10 = *(a1 + 264);
  *(a1 + 256) = v7;
  *(a1 + 264) = v8;
  sub_1BD0D4604(v9, v10);
  return a1;
}

uint64_t assignWithTake for EnterCurrencyAmountView(uint64_t a1, uint64_t a2)
{

  *a1 = *a2;

  *(a1 + 16) = *(a2 + 16);
  *(a1 + 20) = *(a2 + 20);

  *(a1 + 40) = *(a2 + 40);

  *(a1 + 56) = *(a2 + 56);

  *(a1 + 64) = *(a2 + 64);

  *(a1 + 80) = *(a2 + 80);

  v4 = *(a2 + 104);
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 104) = v4;

  *(a1 + 112) = *(a2 + 112);
  *(a1 + 116) = *(a2 + 116);
  *(a1 + 132) = *(a2 + 132);
  *(a1 + 136) = *(a2 + 136);
  *(a1 + 152) = *(a2 + 152);
  *(a1 + 160) = *(a2 + 160);
  *(a1 + 164) = *(a2 + 164);
  *(a1 + 180) = *(a2 + 180);
  *(a1 + 184) = *(a2 + 184);

  *(a1 + 200) = *(a2 + 200);

  *(a1 + 216) = *(a2 + 216);
  *(a1 + 224) = *(a2 + 224);

  v5 = *(a2 + 232);
  if (!*(a1 + 232))
  {
    if (v5)
    {
      v7 = *(a2 + 240);
      *(a1 + 232) = v5;
      *(a1 + 240) = v7;
      goto LABEL_8;
    }

LABEL_7:
    *(a1 + 232) = *(a2 + 232);
    goto LABEL_8;
  }

  if (!v5)
  {

    goto LABEL_7;
  }

  v6 = *(a2 + 240);
  *(a1 + 232) = v5;
  *(a1 + 240) = v6;

LABEL_8:
  *(a1 + 248) = *(a2 + 248);
  *(a1 + 249) = *(a2 + 249);
  *(a1 + 250) = *(a2 + 250);
  v8 = *(a2 + 264);
  v9 = *(a1 + 256);
  v10 = *(a1 + 264);
  *(a1 + 256) = *(a2 + 256);
  *(a1 + 264) = v8;
  sub_1BD0D4604(v9, v10);
  return a1;
}

uint64_t getEnumTagSinglePayload for EnterCurrencyAmountView(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 265))
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

uint64_t storeEnumTagSinglePayload for EnterCurrencyAmountView(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
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
    *(result + 264) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 265) = 1;
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

    *(result + 265) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1BDA3D6A4()
{
  result = qword_1EBD5C6B0;
  if (!qword_1EBD5C6B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD5C6B0);
  }

  return result;
}

char *sub_1BDA3D750@<X0>(char **a1@<X8>)
{
  result = sub_1BDA3B638();
  *a1 = result;
  return result;
}

uint64_t sub_1BDA3D778(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1BDA3D8B8();

  return MEMORY[0x1EEDDAA28](a1, a2, a3, v6);
}

uint64_t sub_1BDA3D7DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1BDA3D8B8();

  return MEMORY[0x1EEDDA9B8](a1, a2, a3, v6);
}

void sub_1BDA3D840()
{
  sub_1BDA3D8B8();
  sub_1BE04F964();
  __break(1u);
}

unint64_t sub_1BDA3D8B8()
{
  result = qword_1EBD5C6E8;
  if (!qword_1EBD5C6E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD5C6E8);
  }

  return result;
}

uint64_t sub_1BDA3D940@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1BE049A74();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1BDA3DA14@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1BE049144();
  *a1 = result;
  a1[1] = v3;
  return result;
}

void sub_1BDA3DAE8(void (*a1)(id *), uint64_t a2, unint64_t a3)
{
  v4 = v3;
  v22 = a1;
  v23 = a2;
  v6 = type metadata accessor for UnifiedMerchantTokenData.PreauthorizedPayment(0);
  v21 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a3 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1BE053704())
  {
    v25 = MEMORY[0x1E69E7CC0];
    sub_1BD53207C(0, i & ~(i >> 63), 0);
    if (i < 0)
    {
      __break(1u);
LABEL_20:

      __break(1u);
      return;
    }

    v11 = 0;
    v12 = v25;
    v19 = i;
    v20 = a3 & 0xC000000000000001;
    v18 = a3 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      v13 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      if (v20)
      {
        v14 = MEMORY[0x1BFB40900](v11, a3);
      }

      else
      {
        if (v11 >= *(v18 + 16))
        {
          goto LABEL_17;
        }

        v14 = *(a3 + 8 * v11 + 32);
      }

      i = v14;
      v24 = v14;
      v22(&v24);
      if (v4)
      {
        goto LABEL_20;
      }

      v4 = 0;

      v25 = v12;
      v16 = *(v12 + 16);
      v15 = *(v12 + 24);
      if (v16 >= v15 >> 1)
      {
        sub_1BD53207C(v15 > 1, v16 + 1, 1);
        v12 = v25;
      }

      *(v12 + 16) = v16 + 1;
      sub_1BDA4B210(v9, v12 + ((*(v21 + 80) + 32) & ~*(v21 + 80)) + *(v21 + 72) * v16, type metadata accessor for UnifiedMerchantTokenData.PreauthorizedPayment);
      ++v11;
      if (v13 == v19)
      {
        return;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }
}

uint64_t sub_1BDA3DD20(void (*a1)(uint64_t *__return_ptr, uint64_t *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = MEMORY[0x1E69E7CC0];
  if (!v4)
  {
    return v5;
  }

  v16 = MEMORY[0x1E69E7CC0];
  sub_1BD532148(0, v4, 0);
  v5 = v16;
  v8 = (a3 + 32);
  while (1)
  {
    v9 = *v8++;
    v14 = v9;
    a1(&v15, &v14);
    if (v3)
    {
      break;
    }

    v10 = v15;
    v16 = v5;
    v12 = *(v5 + 16);
    v11 = *(v5 + 24);
    if (v12 >= v11 >> 1)
    {
      sub_1BD532148((v11 > 1), v12 + 1, 1);
      v5 = v16;
    }

    *(v5 + 16) = v12 + 1;
    *(v5 + 8 * v12 + 32) = v10;
    if (!--v4)
    {
      return v5;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1BDA3DE98(void (*a1)(uint64_t), uint64_t a2, uint64_t a3, uint64_t (*a4)(void), void (*a5)(BOOL, unint64_t, uint64_t), uint64_t (*a6)(void), uint64_t (*a7)(void))
{
  v28 = a7;
  v29 = a1;
  v10 = v7;
  v30 = a2;
  v12 = a4(0);
  v13 = *(v12 - 8);
  v15 = MEMORY[0x1EEE9AC00](v12 - 8, v14);
  v17 = &v25 - v16;
  v18 = *(a3 + 16);
  v19 = MEMORY[0x1E69E7CC0];
  if (!v18)
  {
    return v19;
  }

  v31 = MEMORY[0x1E69E7CC0];
  v26 = a5;
  (a5)(0, v18, 0, v15);
  v19 = v31;
  v20 = *(a6(0) - 8);
  v21 = a3 + ((*(v20 + 80) + 32) & ~*(v20 + 80));
  v27 = *(v20 + 72);
  while (1)
  {
    v29(v21);
    if (v10)
    {
      break;
    }

    v10 = 0;
    v31 = v19;
    v23 = *(v19 + 16);
    v22 = *(v19 + 24);
    if (v23 >= v22 >> 1)
    {
      v26(v22 > 1, v23 + 1, 1);
      v19 = v31;
    }

    *(v19 + 16) = v23 + 1;
    sub_1BDA4B210(v17, v19 + ((*(v13 + 80) + 32) & ~*(v13 + 80)) + *(v13 + 72) * v23, v28);
    v21 += v27;
    if (!--v18)
    {
      return v19;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1BDA3E194(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(char *))
{
  v8 = a5(0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v14 - v10;
  (*(v12 + 16))(&v14 - v10, a1);
  return a6(v11);
}

uint64_t sub_1BDA3E264@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v129 = a1;
  v130 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5C750);
  v128 = *(v130 - 8);
  MEMORY[0x1EEE9AC00](v130, v3);
  v127 = &v108 - v4;
  v126 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5C758);
  v125 = *(v126 - 8);
  MEMORY[0x1EEE9AC00](v126, v5);
  v124 = &v108 - v6;
  v123 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5C760);
  MEMORY[0x1EEE9AC00](v123, v7);
  v122 = &v108 - v8;
  v121 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5C768);
  v120 = *(v121 - 8);
  MEMORY[0x1EEE9AC00](v121, v9);
  v119 = &v108 - v10;
  v118 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5C770);
  v117 = *(v118 - 8);
  MEMORY[0x1EEE9AC00](v118, v11);
  v116 = &v108 - v12;
  v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD37318);
  v114 = *(v115 - 8);
  MEMORY[0x1EEE9AC00](v115, v13);
  v131 = &v108 - v14;
  v132 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5C778);
  v113 = *(v132 - 1);
  MEMORY[0x1EEE9AC00](v132, v15);
  v110 = &v108 - v16;
  v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5C780);
  v112 = *(v111 - 8);
  MEMORY[0x1EEE9AC00](v111, v17);
  v109 = &v108 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5C788);
  MEMORY[0x1EEE9AC00](v19, v20);
  v22 = &v108 - v21;
  v135 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5C790);
  sub_1BD0DE4F4(&qword_1EBD5C798, &qword_1EBD5C790);
  sub_1BE0504E4();
  v23 = sub_1BE04F5B4();
  v24 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23, v25);
  v27 = &v108 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BE04F594();
  v28 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5C7A0) + 36);
  (*(v24 + 16))(&v22[v28], v27, v23);
  v29 = *(v24 + 56);
  v29(&v22[v28], 0, 1, v23);
  KeyPath = swift_getKeyPath();
  v31 = &v22[*(v19 + 36)];
  v32 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39580) + 28);
  (*(v24 + 32))(v31 + v32, v27, v23);
  v29(v31 + v32, 0, 1, v23);
  *v31 = KeyPath;
  v33 = sub_1BE04F434();
  v34 = *(v33 - 8);
  v36 = MEMORY[0x1EEE9AC00](v33, v35);
  v38 = &v108 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v34 + 104))(v38, *MEMORY[0x1E697C438], v33, v36);
  v39 = sub_1BDA4A584();
  v40 = v109;
  sub_1BE050E84();
  (*(v34 + 8))(v38, v33);
  sub_1BD0DE53C(v22, &qword_1EBD5C788);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38CD0);
  sub_1BE04EE44();
  v41 = swift_allocObject();
  *(v41 + 16) = xmmword_1BE0B69E0;
  sub_1BE04EE34();
  *&v137 = v19;
  *(&v137 + 1) = v39;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v43 = v110;
  v44 = v111;
  MEMORY[0x1BFB3DEF0](0, v41, v111, OpaqueTypeConformance2);

  (*(v112 + 8))(v40, v44);
  v45 = v133;
  v134 = v133;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49C88);
  *&v137 = v44;
  *(&v137 + 1) = OpaqueTypeConformance2;
  v47 = swift_getOpaqueTypeConformance2();
  v48 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD49C90);
  v49 = sub_1BD53E12C();
  *&v137 = v48;
  *(&v137 + 1) = v49;
  v50 = swift_getOpaqueTypeConformance2();
  v51 = v132;
  v112 = v47;
  v111 = v50;
  sub_1BE051024();
  (v113[1])(v43, v51);
  sub_1BE0528A4();
  v52 = v45;
  sub_1BD9852FC(v45, &v137);
  v53 = sub_1BE052894();
  v54 = swift_allocObject();
  v55 = MEMORY[0x1E69E85E0];
  *(v54 + 16) = v53;
  *(v54 + 24) = v55;
  v56 = v52[1];
  *(v54 + 32) = *v52;
  *(v54 + 48) = v56;
  v57 = v52[3];
  *(v54 + 64) = v52[2];
  *(v54 + 80) = v57;
  v58 = sub_1BE0528D4();
  v59 = *(v58 - 8);
  v60 = *(v59 + 64);
  MEMORY[0x1EEE9AC00](v58, v61);
  v62 = (v60 + 15) & 0xFFFFFFFFFFFFFFF0;
  v63 = &v108 - v62;
  sub_1BE0528B4();
  if (__isPlatformVersionAtLeast(2, 26, 4, 0))
  {
    v110 = sub_1BE04EAA4();
    v113 = &v108;
    v109 = *(v110 - 1);
    MEMORY[0x1EEE9AC00](v110, v64);
    v108 = &v108 - ((v65 + 15) & 0xFFFFFFFFFFFFFFF0);
    *&v137 = 0;
    *(&v137 + 1) = 0xE000000000000000;
    sub_1BE053834();

    *&v137 = 0xD000000000000042;
    *(&v137 + 1) = 0x80000001BE1489B0;
    v136 = 67;
    v66 = sub_1BE053B24();
    MEMORY[0x1BFB3F610](v66);

    v69 = MEMORY[0x1EEE9AC00](v67, v68);
    (*(v59 + 16))(&v108 - v62, &v108 - v62, v58, v69);
    v70 = v108;
    sub_1BE04EA94();
    (*(v59 + 8))(v63, v58);
    v71 = v116;
    v72 = v115;
    (*(v114 + 32))(v116, v131, v115);
    v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD37320);
    v74 = (*(v109 + 4))(&v71[*(v73 + 36)], v70, v110);
  }

  else
  {
    v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD37328);
    v71 = v116;
    v77 = &v116[*(v76 + 36)];
    v78 = sub_1BE04E7B4();
    (*(v59 + 32))(&v77[*(v78 + 20)], &v108 - v62, v58);
    *v77 = &unk_1BE10FE20;
    *(v77 + 1) = v54;
    v72 = v115;
    v74 = (*(v114 + 32))(v71, v131, v115);
  }

  MEMORY[0x1EEE9AC00](v74, v75);
  v79 = v133;
  sub_1BE04F7B4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3FA48);
  *&v137 = v132;
  *(&v137 + 1) = v46;
  v138 = v112;
  v139 = v111;
  v80 = swift_getOpaqueTypeConformance2();
  *&v137 = v72;
  *(&v137 + 1) = v80;
  swift_getOpaqueTypeConformance2();
  sub_1BD279F20();
  v81 = v119;
  v82 = v118;
  sub_1BE050954();
  (*(v117 + 8))(v71, v82);
  v83 = sub_1BE04EC54();
  v84 = sub_1BE050234();
  v85 = v122;
  (*(v120 + 32))(v122, v81, v121);
  v86 = v123;
  v87 = v85 + *(v123 + 36);
  *v87 = v83;
  *(v87 + 8) = v84;
  v88 = sub_1BE0501E4();
  v89 = sub_1BE04FC54();
  v132 = &v108;
  v90 = *(v89 - 8);
  MEMORY[0x1EEE9AC00](v89, v91);
  v93 = &v108 - ((v92 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BE04FC34();
  v94 = sub_1BDA4A7D4();
  v95 = v124;
  MEMORY[0x1BFB3DB30](v88, 0x406E000000000000, 0, v93, v86, v94);
  (*(v90 + 8))(v93, v89);
  sub_1BD0DE53C(v85, &qword_1EBD5C760);
  v96 = swift_allocObject();
  v97 = v79[1];
  v96[1] = *v79;
  v96[2] = v97;
  v98 = v79[3];
  v96[3] = v79[2];
  v96[4] = v98;
  sub_1BD9852FC(v79, &v137);
  *&v137 = v86;
  *(&v137 + 1) = v94;
  v99 = swift_getOpaqueTypeConformance2();
  v107 = sub_1BD0F9764();
  v100 = MEMORY[0x1E69E7DE0];
  v101 = v127;
  v102 = v126;
  sub_1BE050DC4();

  (*(v125 + 8))(v95, v102);
  v137 = v79[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54350);
  sub_1BE0516A4();
  LOBYTE(v93) = v136;
  v103 = sub_1BE0501E4();
  *&v137 = v102;
  *(&v137 + 1) = v100;
  v138 = v99;
  v139 = v107;
  v104 = swift_getOpaqueTypeConformance2();
  v105 = v130;
  MEMORY[0x1BFB3DE60]((v93 & 1) == 0, v103, v130, v104);
  return (*(v128 + 8))(v101, v105);
}

uint64_t sub_1BDA3F3C8@<X0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v61 = a2;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49D48);
  MEMORY[0x1EEE9AC00](v55, v3);
  v54 = &v52 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5C7D0);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = &v52 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F780);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v57 = &v52 - v11;
  v56 = type metadata accessor for FinanceKitTransactionHistoryView.ViewModel(0);
  v12 = *(v56 - 8);
  MEMORY[0x1EEE9AC00](v56, v13);
  v53 = &v52 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49D58);
  MEMORY[0x1EEE9AC00](v15 - 8, v16);
  v60 = &v52 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18, v19);
  v59 = &v52 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5C7E8);
  MEMORY[0x1EEE9AC00](v21, v22);
  v24 = &v52 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5C7F0);
  v26 = v25 - 8;
  MEMORY[0x1EEE9AC00](v25, v27);
  v58 = &v52 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29, v30);
  v32 = &v52 - v31;
  v62 = a1;
  *v24 = sub_1BE04F7C4();
  *(v24 + 1) = 0;
  v24[16] = 0;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5C7F8);
  sub_1BDA40088(a1, &v24[*(v33 + 44)]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5C800);
  sub_1BD0DE4F4(&qword_1EBD5C808, &qword_1EBD5C7E8);
  sub_1BDA4AB1C();
  sub_1BE051A24();
  v34 = &v32[*(v26 + 44)];
  *v34 = 0u;
  *(v34 + 1) = 0u;
  v34[32] = 1;
  v63 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5C7D8);
  sub_1BE0516A4();
  v35 = v64;
  swift_getKeyPath();
  *&v63 = v35;
  sub_1BDA4AA28(&qword_1EBD5C7E0, type metadata accessor for FinanceKitTransactionGroupHistoryView.ViewModel);
  sub_1BE04B594();

  v36 = OBJC_IVAR____TtCV9PassKitUI37FinanceKitTransactionGroupHistoryView9ViewModel__groupHistoryDetails;
  swift_beginAccess();
  sub_1BD0DE19C(v35 + v36, v8, &qword_1EBD5C7D0);

  v37 = type metadata accessor for FinanceKitTransactionGroupHistoryView.GroupHistoryViewModel(0);
  if ((*(*(v37 - 8) + 48))(v8, 1, v37))
  {
    sub_1BD0DE53C(v8, &qword_1EBD5C7D0);
    v38 = v57;
    (*(v12 + 56))(v57, 1, 1, v56);
  }

  else
  {
    v40 = v53;
    v39 = v54;
    v41 = &v8[*(v37 + 28)];
    v38 = v57;
    sub_1BD0DE19C(v41, v57, &qword_1EBD3F780);
    sub_1BD0DE53C(v8, &qword_1EBD5C7D0);
    if ((*(v12 + 48))(v38, 1, v56) != 1)
    {
      v49 = sub_1BDA4B210(v38, v40, type metadata accessor for FinanceKitTransactionHistoryView.ViewModel);
      MEMORY[0x1EEE9AC00](v49, v50);
      *(&v52 - 2) = v40;
      sub_1BDA40AB4(v39);
      type metadata accessor for FinanceKitTransactionHistoryView(0);
      sub_1BD53E7A4();
      sub_1BDA4AA28(&qword_1EBD49DB8, type metadata accessor for FinanceKitTransactionHistoryView);
      v43 = v59;
      sub_1BE051A24();
      v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49D50);
      (*(*(v51 - 8) + 56))(v43, 0, 1, v51);
      sub_1BDA4ABD8(v40, type metadata accessor for FinanceKitTransactionHistoryView.ViewModel);
      goto LABEL_5;
    }
  }

  sub_1BD0DE53C(v38, &qword_1EBD3F780);
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49D50);
  v43 = v59;
  (*(*(v42 - 8) + 56))(v59, 1, 1, v42);
LABEL_5:
  v44 = v58;
  sub_1BD0DE19C(v32, v58, &qword_1EBD5C7F0);
  v45 = v60;
  sub_1BD0DE19C(v43, v60, &qword_1EBD49D58);
  v46 = v61;
  sub_1BD0DE19C(v44, v61, &qword_1EBD5C7F0);
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5C818);
  sub_1BD0DE19C(v45, v46 + *(v47 + 48), &qword_1EBD49D58);
  sub_1BD0DE53C(v43, &qword_1EBD49D58);
  sub_1BD0DE53C(v32, &qword_1EBD5C7F0);
  sub_1BD0DE53C(v45, &qword_1EBD49D58);
  return sub_1BD0DE53C(v44, &qword_1EBD5C7F0);
}

uint64_t sub_1BDA3FBD8@<X0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v34 = a2;
  v33 = type metadata accessor for FinanceKitTransactionHistoryView(0);
  v3 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33, v4);
  v6 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5C7D0);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v10 = &v33 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F780);
  MEMORY[0x1EEE9AC00](v11 - 8, v12);
  v14 = &v33 - v13;
  v15 = type metadata accessor for FinanceKitTransactionHistoryView.ViewModel(0);
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15, v17);
  v19 = &v33 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5C7D8);
  sub_1BE0516A4();
  v20 = v36;
  swift_getKeyPath();
  *&v35 = v20;
  sub_1BDA4AA28(&qword_1EBD5C7E0, type metadata accessor for FinanceKitTransactionGroupHistoryView.ViewModel);
  sub_1BE04B594();

  v21 = OBJC_IVAR____TtCV9PassKitUI37FinanceKitTransactionGroupHistoryView9ViewModel__groupHistoryDetails;
  swift_beginAccess();
  sub_1BD0DE19C(v20 + v21, v10, &qword_1EBD5C7D0);

  v22 = type metadata accessor for FinanceKitTransactionGroupHistoryView.GroupHistoryViewModel(0);
  if ((*(*(v22 - 8) + 48))(v10, 1, v22))
  {
    sub_1BD0DE53C(v10, &qword_1EBD5C7D0);
    (*(v16 + 56))(v14, 1, 1, v15);
  }

  else
  {
    sub_1BD0DE19C(&v10[*(v22 + 24)], v14, &qword_1EBD3F780);
    sub_1BD0DE53C(v10, &qword_1EBD5C7D0);
    if ((*(v16 + 48))(v14, 1, v15) != 1)
    {
      sub_1BDA4B210(v14, v19, type metadata accessor for FinanceKitTransactionHistoryView.ViewModel);
      sub_1BDA4AC38(v19, v6, type metadata accessor for FinanceKitTransactionHistoryView.ViewModel);
      type metadata accessor for NavigationController();
      sub_1BDA4AA28(&qword_1EBD38DA8, type metadata accessor for NavigationController);
      v27 = sub_1BE04EEC4();
      v29 = v28;
      sub_1BDA4ABD8(v19, type metadata accessor for FinanceKitTransactionHistoryView.ViewModel);
      v30 = v33;
      v31 = &v6[*(v33 + 20)];
      *v31 = v27;
      v31[1] = v29;
      v32 = v34;
      sub_1BDA4B210(v6, v34, type metadata accessor for FinanceKitTransactionHistoryView);
      v25 = v30;
      v24 = v32;
      v23 = 0;
      return (*(v3 + 56))(v24, v23, 1, v25);
    }
  }

  sub_1BD0DE53C(v14, &qword_1EBD3F780);
  v23 = 1;
  v25 = v33;
  v24 = v34;
  return (*(v3 + 56))(v24, v23, 1, v25);
}

id sub_1BDA40088@<X0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v93 = a2;
  v3 = sub_1BE04BD74();
  v97 = *(v3 - 8);
  v98 = v3;
  MEMORY[0x1EEE9AC00](v3, v4);
  v96 = &v87 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD386A0);
  MEMORY[0x1EEE9AC00](v88, v6);
  v8 = &v87 - v7;
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49D48);
  MEMORY[0x1EEE9AC00](v90, v9);
  v92 = &v87 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11, v12);
  v89 = &v87 - v13;
  MEMORY[0x1EEE9AC00](v14, v15);
  v91 = &v87 - v16;
  v17 = type metadata accessor for FinanceKitMerchantHeaderView(0);
  v94 = *(v17 - 8);
  v95 = v17;
  MEMORY[0x1EEE9AC00](v17, v18);
  v20 = &v87 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5C7D0);
  MEMORY[0x1EEE9AC00](v21 - 8, v22);
  v24 = &v87 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49D40);
  MEMORY[0x1EEE9AC00](v25 - 8, v26);
  v28 = &v87 - v27;
  v29 = type metadata accessor for FinanceKitMerchantHeaderView.ViewModel(0);
  v30 = *(v29 - 8);
  MEMORY[0x1EEE9AC00](v29, v31);
  v33 = &v87 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5C820);
  MEMORY[0x1EEE9AC00](v34 - 8, v35);
  v87 = &v87 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v37, v38);
  v99 = &v87 - v39;
  v103 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5C7D8);
  sub_1BE0516A4();
  v40 = v101;
  swift_getKeyPath();
  *&v103 = v40;
  sub_1BDA4AA28(&qword_1EBD5C7E0, type metadata accessor for FinanceKitTransactionGroupHistoryView.ViewModel);
  sub_1BE04B594();

  v41 = OBJC_IVAR____TtCV9PassKitUI37FinanceKitTransactionGroupHistoryView9ViewModel__groupHistoryDetails;
  swift_beginAccess();
  sub_1BD0DE19C(v40 + v41, v24, &qword_1EBD5C7D0);

  v42 = type metadata accessor for FinanceKitTransactionGroupHistoryView.GroupHistoryViewModel(0);
  if ((*(*(v42 - 8) + 48))(v24, 1, v42))
  {
    sub_1BD0DE53C(v24, &qword_1EBD5C7D0);
    (*(v30 + 56))(v28, 1, 1, v29);
LABEL_4:
    sub_1BD0DE53C(v28, &qword_1EBD49D40);
    v43 = 1;
    v44 = v99;
    v46 = v96;
    v45 = v97;
    v47 = v95;
    goto LABEL_5;
  }

  sub_1BD0DE19C(v24, v28, &qword_1EBD49D40);
  sub_1BD0DE53C(v24, &qword_1EBD5C7D0);
  if ((*(v30 + 48))(v28, 1, v29) == 1)
  {
    goto LABEL_4;
  }

  sub_1BDA4B210(v28, v33, type metadata accessor for FinanceKitMerchantHeaderView.ViewModel);
  sub_1BDA4AC38(v33, v20, type metadata accessor for FinanceKitMerchantHeaderView.ViewModel);
  v80 = v95;
  v81 = &v20[*(v95 + 20)];
  v100 = 0;
  sub_1BE051694();
  v82 = v102;
  *v81 = v101;
  *(v81 + 1) = v82;
  v83 = &v20[*(v80 + 24)];
  v100 = 0;
  sub_1BE051694();
  sub_1BDA4ABD8(v33, type metadata accessor for FinanceKitMerchantHeaderView.ViewModel);
  v84 = v102;
  *v83 = v101;
  *(v83 + 1) = v84;
  v85 = v20;
  v86 = v99;
  sub_1BDA4B210(v85, v99, type metadata accessor for FinanceKitMerchantHeaderView);
  v44 = v86;
  v47 = v80;
  v43 = 0;
  v46 = v96;
  v45 = v97;
LABEL_5:
  (*(v94 + 56))(v44, v43, 1, v47);
  v48 = v98;
  (*(v45 + 104))(v46, *MEMORY[0x1E69B80D8], v98);
  result = PKPassKitBundle();
  if (result)
  {
    v50 = result;
    v51 = sub_1BE04B6F4();
    v53 = v52;

    (*(v45 + 8))(v46, v48);
    v101 = v51;
    v102 = v53;
    sub_1BD0DDEBC();
    v54 = sub_1BE0506C4();
    v56 = v55;
    LOBYTE(v53) = v57;
    sub_1BE0503D4();
    v58 = sub_1BE0505F4();
    v60 = v59;
    v62 = v61;

    sub_1BD0DDF10(v54, v56, v53 & 1);

    v63 = sub_1BE0505D4();
    v65 = v64;
    LOBYTE(v53) = v66;
    v68 = v67;
    sub_1BD0DDF10(v58, v60, v62 & 1);

    v69 = &v8[*(v88 + 36)];
    v70 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD386C0) + 28);
    v71 = sub_1BE0505C4();
    (*(*(v71 - 8) + 56))(v69 + v70, 1, 1, v71);
    *v69 = swift_getKeyPath();
    *v8 = v63;
    *(v8 + 1) = v65;
    v8[16] = v53 & 1;
    *(v8 + 3) = v68;
    v72 = sub_1BE051464();
    v73 = v89;
    sub_1BD0DE204(v8, v89, &qword_1EBD386A0);
    v74 = v91;
    *(v73 + *(v90 + 36)) = v72;
    sub_1BD0DE204(v73, v74, &qword_1EBD49D48);
    v75 = v99;
    v76 = v87;
    sub_1BD0DE19C(v99, v87, &qword_1EBD5C820);
    v77 = v92;
    sub_1BD0DE19C(v74, v92, &qword_1EBD49D48);
    v78 = v93;
    sub_1BD0DE19C(v76, v93, &qword_1EBD5C820);
    v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5C828);
    sub_1BD0DE19C(v77, v78 + *(v79 + 48), &qword_1EBD49D48);
    sub_1BD0DE53C(v74, &qword_1EBD49D48);
    sub_1BD0DE53C(v75, &qword_1EBD5C820);
    sub_1BD0DE53C(v77, &qword_1EBD49D48);
    return sub_1BD0DE53C(v76, &qword_1EBD5C820);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1BDA40A08@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1BDA4AC38(a1, a2, type metadata accessor for FinanceKitTransactionHistoryView.ViewModel);
  type metadata accessor for NavigationController();
  sub_1BDA4AA28(&qword_1EBD38DA8, type metadata accessor for NavigationController);
  v3 = sub_1BE04EEC4();
  v5 = v4;
  result = type metadata accessor for FinanceKitTransactionHistoryView(0);
  v7 = (a2 + *(result + 20));
  *v7 = v3;
  v7[1] = v5;
  return result;
}

int *sub_1BDA40AB4@<X0>(uint64_t a1@<X8>)
{
  v37 = a1;
  v1 = sub_1BE04BD74();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1, v3);
  v5 = &v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD386A0);
  v7 = MEMORY[0x1EEE9AC00](v36, v6);
  v9 = &v36 - v8;
  (*(v2 + 104))(v5, *MEMORY[0x1E69B80D8], v1, v7);
  result = PKPassKitBundle();
  if (result)
  {
    v11 = result;
    v12 = sub_1BE04B6F4();
    v14 = v13;

    (*(v2 + 8))(v5, v1);
    v38 = v12;
    v39 = v14;
    sub_1BD0DDEBC();
    v15 = sub_1BE0506C4();
    v17 = v16;
    LOBYTE(v11) = v18;
    sub_1BE0503D4();
    v19 = sub_1BE0505F4();
    v21 = v20;
    v23 = v22;

    sub_1BD0DDF10(v15, v17, v11 & 1);

    v24 = sub_1BE0505D4();
    v26 = v25;
    LOBYTE(v11) = v27;
    v29 = v28;
    sub_1BD0DDF10(v19, v21, v23 & 1);

    v30 = &v9[*(v36 + 36)];
    v31 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD386C0) + 28);
    v32 = sub_1BE0505C4();
    (*(*(v32 - 8) + 56))(v30 + v31, 1, 1, v32);
    *v30 = swift_getKeyPath();
    *v9 = v24;
    *(v9 + 1) = v26;
    v9[16] = v11 & 1;
    *(v9 + 3) = v29;
    v33 = sub_1BE051464();
    v34 = v9;
    v35 = v37;
    sub_1BD0DE204(v34, v37, &qword_1EBD386A0);
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49D48);
    *(v35 + result[9]) = v33;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1BDA40DCC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49C90);
  MEMORY[0x1EEE9AC00](v2, v3);
  v5 = &v10[-v4];
  v11 = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49CA8);
  v7 = sub_1BD0DE4F4(&qword_1EBD49CA0, &qword_1EBD49CA8);
  MEMORY[0x1BFB3E5A0](sub_1BDA4AAFC, v10, v6, v7);
  v8 = sub_1BD53E12C();
  MEMORY[0x1BFB3CC50](v5, v2, v8);
  return sub_1BD0DE53C(v5, &qword_1EBD49C90);
}

uint64_t sub_1BDA40F08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[5] = a3;
  sub_1BE0528A4();
  v3[6] = sub_1BE052894();
  v5 = sub_1BE052844();
  v3[7] = v5;
  v3[8] = v4;

  return MEMORY[0x1EEE6DFA0](sub_1BDA40FA0, v5, v4);
}

uint64_t sub_1BDA40FA0()
{
  *(v0 + 16) = **(v0 + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5C7D8);
  sub_1BE0516A4();
  *(v0 + 72) = *(v0 + 32);
  v1 = swift_task_alloc();
  *(v0 + 80) = v1;
  *v1 = v0;
  v1[1] = sub_1BD53C6FC;

  return sub_1BDA42A6C();
}

uint64_t sub_1BDA41060@<X0>(__int128 *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5C7D0);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v17 - v6;
  v17 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5C7D8);
  sub_1BE0516A4();
  v8 = v18;
  swift_getKeyPath();
  *&v17 = v8;
  sub_1BDA4AA28(&qword_1EBD5C7E0, type metadata accessor for FinanceKitTransactionGroupHistoryView.ViewModel);
  sub_1BE04B594();

  v9 = OBJC_IVAR____TtCV9PassKitUI37FinanceKitTransactionGroupHistoryView9ViewModel__groupHistoryDetails;
  swift_beginAccess();
  sub_1BD0DE19C(v8 + v9, v7, &qword_1EBD5C7D0);

  v10 = type metadata accessor for FinanceKitTransactionGroupHistoryView.GroupHistoryViewModel(0);
  if ((*(*(v10 - 8) + 48))(v7, 1, v10))
  {
    result = sub_1BD0DE53C(v7, &qword_1EBD5C7D0);
    v12 = 0;
    v13 = 0;
  }

  else
  {
    v16 = &v7[*(v10 + 32)];
    v12 = *v16;
    v13 = v16[1];
    v14 = v16[2];
    v15 = v16[3];
    sub_1BD2726F8(*v16, v13);
    result = sub_1BD0DE53C(v7, &qword_1EBD5C7D0);
    if (v13)
    {
      goto LABEL_5;
    }

    v12 = 0;
  }

  v14 = 0;
  v15 = 0;
LABEL_5:
  *a2 = v12;
  a2[1] = v13;
  a2[2] = v14;
  a2[3] = v15;
  return result;
}

uint64_t sub_1BDA41288@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X8>)
{
  v68 = a2;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49CD0);
  MEMORY[0x1EEE9AC00](v67, v3);
  v66 = &v55 - v4;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49CD8);
  v63 = *(v65 - 8);
  MEMORY[0x1EEE9AC00](v65, v5);
  v57 = &v55 - v6;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49CE0);
  v55 = *(v64 - 8);
  MEMORY[0x1EEE9AC00](v64, v7);
  v56 = &v55 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5C7D0);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v12 = &v55 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49CE8);
  MEMORY[0x1EEE9AC00](v13 - 8, v14);
  v16 = &v55 - v15;
  v59 = type metadata accessor for FinanceKitMerchantBrandViewButtons.ViewModel(0);
  v17 = *(v59 - 8);
  MEMORY[0x1EEE9AC00](v59, v18);
  v58 = &v55 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49CF0);
  MEMORY[0x1EEE9AC00](v20 - 8, v21);
  v23 = &v55 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24, v25);
  v62 = &v55 - v26;
  v27 = sub_1BE04FB44();
  MEMORY[0x1EEE9AC00](v27 - 8, v28);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49CF8);
  v60 = *(v29 - 8);
  v61 = v29;
  MEMORY[0x1EEE9AC00](v29, v30);
  v32 = &v55 - v31;
  sub_1BE04FB34();
  v69 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49D00);
  sub_1BD0DE4F4(&qword_1EBD49D08, &qword_1EBD49D00);
  sub_1BE04E424();
  v72 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5C7D8);
  sub_1BE0516A4();
  v33 = v70;
  swift_getKeyPath();
  *&v72 = v33;
  sub_1BDA4AA28(&qword_1EBD5C7E0, type metadata accessor for FinanceKitTransactionGroupHistoryView.ViewModel);
  sub_1BE04B594();

  v34 = OBJC_IVAR____TtCV9PassKitUI37FinanceKitTransactionGroupHistoryView9ViewModel__groupHistoryDetails;
  swift_beginAccess();
  sub_1BD0DE19C(v33 + v34, v12, &qword_1EBD5C7D0);

  v35 = type metadata accessor for FinanceKitTransactionGroupHistoryView.GroupHistoryViewModel(0);
  if ((*(*(v35 - 8) + 48))(v12, 1, v35))
  {
    sub_1BD0DE53C(v12, &qword_1EBD5C7D0);
    (*(v17 + 56))(v16, 1, 1, v59);
LABEL_4:
    sub_1BD0DE53C(v16, &qword_1EBD49CE8);
    goto LABEL_5;
  }

  v37 = v57;
  v36 = v58;
  v38 = v56;
  sub_1BD0DE19C(&v12[*(v35 + 20)], v16, &qword_1EBD49CE8);
  sub_1BD0DE53C(v12, &qword_1EBD5C7D0);
  if ((*(v17 + 48))(v16, 1, v59) == 1)
  {
    goto LABEL_4;
  }

  sub_1BDA4B210(v16, v36, type metadata accessor for FinanceKitMerchantBrandViewButtons.ViewModel);
  if (sub_1BD51FA14())
  {
    v48 = sub_1BE04FAE4();
    MEMORY[0x1EEE9AC00](v48, v49);
    *(&v55 - 2) = v36;
    type metadata accessor for FinanceKitMerchantBrandViewButtons(0);
    sub_1BDA4AA28(&qword_1EBD49D18, type metadata accessor for FinanceKitMerchantBrandViewButtons);
    sub_1BE04E424();
    v50 = sub_1BD0DE4F4(&qword_1EBD49D10, &qword_1EBD49CE0);
    v51 = v64;
    MEMORY[0x1BFB3CC50](v38, v64, v50);
    v52 = v63;
    v53 = v65;
    (*(v63 + 16))(v23, v37, v65);
    (*(v52 + 56))(v23, 0, 1, v53);
    v70 = v51;
    v71 = v50;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v39 = v62;
    MEMORY[0x1BFB3CC80](v23, v53, OpaqueTypeConformance2);
    sub_1BD0DE53C(v23, &qword_1EBD49CF0);
    (*(v52 + 8))(v37, v53);
    (*(v55 + 8))(v38, v51);
    sub_1BDA4ABD8(v58, type metadata accessor for FinanceKitMerchantBrandViewButtons.ViewModel);
    goto LABEL_6;
  }

  sub_1BDA4ABD8(v36, type metadata accessor for FinanceKitMerchantBrandViewButtons.ViewModel);
LABEL_5:
  v39 = v62;
  v40 = v65;
  (*(v63 + 56))(v23, 1, 1, v65);
  v41 = sub_1BD0DE4F4(&qword_1EBD49D10, &qword_1EBD49CE0);
  v70 = v64;
  v71 = v41;
  v42 = swift_getOpaqueTypeConformance2();
  MEMORY[0x1BFB3CC80](v23, v40, v42);
  sub_1BD0DE53C(v23, &qword_1EBD49CF0);
LABEL_6:
  v43 = v66;
  v44 = *(v67 + 48);
  v46 = v60;
  v45 = v61;
  (*(v60 + 16))(v66, v32, v61);
  sub_1BD0CF8D4(v39, &v43[v44]);
  sub_1BE04F854();
  sub_1BD0DE53C(v39, &qword_1EBD49CF0);
  return (*(v46 + 8))(v32, v45);
}

uint64_t sub_1BDA41C38@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = sub_1BE04F504();
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49D20);
  return sub_1BDA41C90(a1, a2 + *(v4 + 44));
}

uint64_t sub_1BDA41C90@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X8>)
{
  v65 = a2;
  v3 = type metadata accessor for FinanceKitTransactionIcon(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v61 = &v55 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49D28);
  MEMORY[0x1EEE9AC00](v57, v6);
  v60 = &v55 - v7;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49D30);
  MEMORY[0x1EEE9AC00](v58, v8);
  v59 = &v55 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49D38);
  v63 = *(v10 - 8);
  v64 = v10;
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = &v55 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = &v55 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5C7D0);
  MEMORY[0x1EEE9AC00](v18 - 8, v19);
  v21 = &v55 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49D40);
  MEMORY[0x1EEE9AC00](v22 - 8, v23);
  v25 = &v55 - v24;
  v26 = type metadata accessor for FinanceKitMerchantHeaderView.ViewModel(0);
  v27 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26, v28);
  v30 = &v55 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = a1;
  v68 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5C7D8);
  sub_1BE0516A4();
  v31 = v67;
  swift_getKeyPath();
  *&v68 = v31;
  sub_1BDA4AA28(&qword_1EBD5C7E0, type metadata accessor for FinanceKitTransactionGroupHistoryView.ViewModel);
  sub_1BE04B594();

  v32 = OBJC_IVAR____TtCV9PassKitUI37FinanceKitTransactionGroupHistoryView9ViewModel__groupHistoryDetails;
  swift_beginAccess();
  sub_1BD0DE19C(v31 + v32, v21, &qword_1EBD5C7D0);

  v33 = type metadata accessor for FinanceKitTransactionGroupHistoryView.GroupHistoryViewModel(0);
  if ((*(*(v33 - 8) + 48))(v21, 1, v33))
  {
    sub_1BD0DE53C(v21, &qword_1EBD5C7D0);
    (*(v27 + 56))(v25, 1, 1, v26);
LABEL_4:
    sub_1BD0DE53C(v25, &qword_1EBD49D40);
    v38 = 1;
    v40 = v64;
    v39 = v65;
    return (*(v63 + 56))(v39, v38, 1, v40);
  }

  v35 = v60;
  v34 = v61;
  v56 = v17;
  v36 = v59;
  v37 = v62;
  sub_1BD0DE19C(v21, v25, &qword_1EBD49D40);
  sub_1BD0DE53C(v21, &qword_1EBD5C7D0);
  if ((*(v27 + 48))(v25, 1, v26) == 1)
  {
    goto LABEL_4;
  }

  sub_1BDA4B210(v25, v30, type metadata accessor for FinanceKitMerchantHeaderView.ViewModel);
  v42 = *(v26 + 40);
  v43 = type metadata accessor for FinanceKitTransactionIcon.ViewModel(0);
  sub_1BD0DE19C(&v30[v42], &v34[*(v43 + 20)], &qword_1EBD45CC0);
  *v34 = 0;
  v67 = v37[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54350);
  sub_1BE0516A4();
  v44 = 0.0;
  if (v66)
  {
    v45 = 1.0;
  }

  else
  {
    v45 = 0.0;
  }

  sub_1BDA4B210(v34, v35, type metadata accessor for FinanceKitTransactionIcon);
  *(v35 + *(v57 + 36)) = v45;
  v67 = v37[2];
  sub_1BE0516A4();
  if (!v66)
  {
    v44 = 40.0;
  }

  v46 = sub_1BD0DE204(v35, v36, &qword_1EBD49D28);
  v47 = v36 + *(v58 + 36);
  *v47 = 0;
  *(v47 + 8) = v44;
  v48 = MEMORY[0x1BFB3EDF0](v46, 0.5, 1.0, 0.0);
  v67 = v37[2];
  sub_1BE0516A4();
  sub_1BDA4ABD8(v30, type metadata accessor for FinanceKitMerchantHeaderView.ViewModel);
  v49 = v66;
  sub_1BD0DE204(v36, v13, &qword_1EBD49D30);
  v50 = v64;
  v51 = &v13[*(v64 + 36)];
  *v51 = v48;
  v51[8] = v49;
  v52 = v56;
  sub_1BD0DE204(v13, v56, &qword_1EBD49D38);
  v53 = v52;
  v54 = v65;
  sub_1BD0DE204(v53, v65, &qword_1EBD49D38);
  v40 = v50;
  v39 = v54;
  v38 = 0;
  return (*(v63 + 56))(v39, v38, 1, v40);
}

uint64_t sub_1BDA42364@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1BDA4AC38(a1, a2, type metadata accessor for FinanceKitMerchantBrandViewButtons.ViewModel);
  type metadata accessor for NavigationController();
  sub_1BDA4AA28(&qword_1EBD38DA8, type metadata accessor for NavigationController);
  v3 = sub_1BE04EEC4();
  v5 = v4;
  v6 = type metadata accessor for FinanceKitMerchantBrandViewButtons(0);
  v7 = a2 + *(v6 + 20);
  result = sub_1BE051694();
  *v7 = v10;
  *(v7 + 8) = v11;
  v9 = (a2 + *(v6 + 24));
  *v9 = v3;
  v9[1] = v5;
  return result;
}

uint64_t sub_1BDA42490()
{
  swift_getKeyPath();
  sub_1BDA4AA28(&qword_1EBD5C7E0, type metadata accessor for FinanceKitTransactionGroupHistoryView.ViewModel);
  sub_1BE04B594();

  return *(v0 + OBJC_IVAR____TtCV9PassKitUI37FinanceKitTransactionGroupHistoryView9ViewModel__isLoading);
}

uint64_t sub_1BDA42538@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1BDA4AA28(&qword_1EBD5C7E0, type metadata accessor for FinanceKitTransactionGroupHistoryView.ViewModel);
  sub_1BE04B594();

  *a2 = *(v3 + OBJC_IVAR____TtCV9PassKitUI37FinanceKitTransactionGroupHistoryView9ViewModel__isLoading);
  return result;
}

uint64_t sub_1BDA425E8(uint64_t result)
{
  if (*(v1 + OBJC_IVAR____TtCV9PassKitUI37FinanceKitTransactionGroupHistoryView9ViewModel__isLoading) == (result & 1))
  {
    *(v1 + OBJC_IVAR____TtCV9PassKitUI37FinanceKitTransactionGroupHistoryView9ViewModel__isLoading) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath, v3);
    sub_1BDA4AA28(&qword_1EBD5C7E0, type metadata accessor for FinanceKitTransactionGroupHistoryView.ViewModel);
    sub_1BE04B584();
  }

  return result;
}

uint64_t sub_1BDA42700@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  v5 = v1;
  sub_1BDA4AA28(&qword_1EBD5C7E0, type metadata accessor for FinanceKitTransactionGroupHistoryView.ViewModel);
  sub_1BE04B594();

  v3 = OBJC_IVAR____TtCV9PassKitUI37FinanceKitTransactionGroupHistoryView9ViewModel__groupHistoryDetails;
  swift_beginAccess();
  return sub_1BD0DE19C(v5 + v3, a1, &qword_1EBD5C7D0);
}

uint64_t sub_1BDA427D8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1BDA4AA28(&qword_1EBD5C7E0, type metadata accessor for FinanceKitTransactionGroupHistoryView.ViewModel);
  sub_1BE04B594();

  v4 = OBJC_IVAR____TtCV9PassKitUI37FinanceKitTransactionGroupHistoryView9ViewModel__groupHistoryDetails;
  swift_beginAccess();
  return sub_1BD0DE19C(v3 + v4, a2, &qword_1EBD5C7D0);
}

uint64_t sub_1BDA428B0(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5C7D0);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v10[-v6];
  sub_1BD0DE19C(a1, &v10[-v6], &qword_1EBD5C7D0);
  v8 = *a2;
  swift_getKeyPath();
  v11 = v8;
  v12 = v7;
  v13 = v8;
  sub_1BDA4AA28(&qword_1EBD5C7E0, type metadata accessor for FinanceKitTransactionGroupHistoryView.ViewModel);
  sub_1BE04B584();

  return sub_1BD0DE53C(v7, &qword_1EBD5C7D0);
}

uint64_t sub_1BDA42A00(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtCV9PassKitUI37FinanceKitTransactionGroupHistoryView9ViewModel__groupHistoryDetails;
  swift_beginAccess();
  sub_1BDA4AA8C(a2, a1 + v4);
  return swift_endAccess();
}

uint64_t sub_1BDA42A6C()
{
  v1[24] = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F788);
  v1[25] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F780);
  v1[26] = swift_task_alloc();
  v1[27] = swift_task_alloc();
  v1[28] = swift_task_alloc();
  v2 = sub_1BE04AF64();
  v1[29] = v2;
  v1[30] = *(v2 - 8);
  v1[31] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38DD0);
  v1[32] = swift_task_alloc();
  v3 = sub_1BE0523F4();
  v1[33] = v3;
  v1[34] = *(v3 - 8);
  v1[35] = swift_task_alloc();
  v1[36] = swift_task_alloc();
  v4 = sub_1BE049B14();
  v1[37] = v4;
  v1[38] = *(v4 - 8);
  v1[39] = swift_task_alloc();
  v5 = sub_1BE049D74();
  v1[40] = v5;
  v1[41] = *(v5 - 8);
  v1[42] = swift_task_alloc();
  v6 = sub_1BE049B44();
  v1[43] = v6;
  v1[44] = *(v6 - 8);
  v1[45] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38DC0);
  v1[46] = swift_task_alloc();
  v7 = sub_1BE049CC4();
  v1[47] = v7;
  v1[48] = *(v7 - 8);
  v1[49] = swift_task_alloc();
  v8 = sub_1BE049D44();
  v1[50] = v8;
  v1[51] = *(v8 - 8);
  v1[52] = swift_task_alloc();
  v9 = sub_1BE049184();
  v1[53] = v9;
  v1[54] = *(v9 - 8);
  v1[55] = swift_task_alloc();
  v1[56] = swift_task_alloc();
  v10 = sub_1BE0495A4();
  v1[57] = v10;
  v1[58] = *(v10 - 8);
  v1[59] = swift_task_alloc();
  v1[60] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38DC8);
  v1[61] = swift_task_alloc();
  v11 = sub_1BE049B64();
  v1[62] = v11;
  v1[63] = *(v11 - 8);
  v1[64] = swift_task_alloc();
  v12 = sub_1BE049C24();
  v1[65] = v12;
  v1[66] = *(v12 - 8);
  v1[67] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5C7D0);
  v1[68] = swift_task_alloc();
  v13 = type metadata accessor for FinanceKitMerchantBrandViewButtons.ViewModel(0);
  v1[69] = v13;
  v1[70] = *(v13 - 8);
  v1[71] = swift_task_alloc();
  v14 = type metadata accessor for FinanceKitMerchantHeaderView.ViewModel(0);
  v1[72] = v14;
  v1[73] = *(v14 - 8);
  v1[74] = swift_task_alloc();
  v15 = sub_1BE04AFE4();
  v1[75] = v15;
  v1[76] = *(v15 - 8);
  v1[77] = swift_task_alloc();
  v1[78] = swift_task_alloc();
  v1[79] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F7C0);
  v1[80] = swift_task_alloc();
  v1[81] = swift_task_alloc();
  v16 = sub_1BE049A94();
  v1[82] = v16;
  v1[83] = *(v16 - 8);
  v1[84] = swift_task_alloc();
  v1[85] = swift_task_alloc();
  v1[86] = swift_task_alloc();
  v1[87] = swift_task_alloc();
  v1[88] = swift_task_alloc();
  sub_1BE0528A4();
  v1[89] = sub_1BE052894();
  v18 = sub_1BE052844();
  v1[90] = v18;
  v1[91] = v17;

  return MEMORY[0x1EEE6DFA0](sub_1BDA43284, v18, v17);
}

uint64_t sub_1BDA43284()
{
  v1 = v0[24];
  swift_getKeyPath();
  v0[7] = v1;
  v0[92] = OBJC_IVAR____TtCV9PassKitUI37FinanceKitTransactionGroupHistoryView9ViewModel___observationRegistrar;
  v0[93] = sub_1BDA4AA28(&qword_1EBD5C7E0, type metadata accessor for FinanceKitTransactionGroupHistoryView.ViewModel);
  sub_1BE04B594();

  v2 = OBJC_IVAR____TtCV9PassKitUI37FinanceKitTransactionGroupHistoryView9ViewModel__isLoading;
  v0[94] = OBJC_IVAR____TtCV9PassKitUI37FinanceKitTransactionGroupHistoryView9ViewModel__isLoading;
  if (*(v1 + v2))
  {

    v3 = v0[1];

    return v3();
  }

  else
  {
    v4 = v0[24];
    swift_getKeyPath();
    v5 = swift_task_alloc();
    *(v5 + 16) = v4;
    *(v5 + 24) = 1;
    v0[8] = v4;
    sub_1BE04B584();

    v0[95] = *(v4 + OBJC_IVAR____TtCV9PassKitUI37FinanceKitTransactionGroupHistoryView9ViewModel_store);
    v0[96] = OBJC_IVAR____TtCV9PassKitUI37FinanceKitTransactionGroupHistoryView9ViewModel_groupID;
    sub_1BE049074();
    sub_1BE049A14();
    v6 = swift_task_alloc();
    v0[97] = v6;
    *v6 = v0;
    v6[1] = sub_1BDA438E8;
    v7 = v0[81];
    v8 = v0[79];

    return sub_1BDA49B2C(v7, v8);
  }
}

uint64_t sub_1BDA438E8()
{
  v2 = *v1;
  v2[98] = v0;

  v3 = v2[79];
  v4 = v2[76];
  v5 = v2[75];
  v8 = *(v4 + 8);
  v6 = v4 + 8;
  v7 = v8;
  if (v0)
  {
    v7(v3, v5);
    v9 = v2[91];
    v10 = v2[90];
    v11 = sub_1BDA46554;
  }

  else
  {
    v2[99] = v7;
    v2[100] = v6 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v7(v3, v5);
    v9 = v2[91];
    v10 = v2[90];
    v11 = sub_1BDA43A74;
  }

  return MEMORY[0x1EEE6DFA0](v11, v10, v9);
}

uint64_t sub_1BDA43A74()
{
  v1 = v0[98];
  v0[101] = sub_1BD5812C8(v0[88], v0[81]);
  v0[102] = v1;
  if (v1)
  {
    v2 = v0[94];
    v3 = v0[88];
    v4 = v0[83];
    v5 = v0[82];
    v6 = v0[81];
    v7 = v0[24];

    sub_1BD0DE53C(v6, &qword_1EBD3F7C0);
    (*(v4 + 8))(v3, v5);
    if (*(v7 + v2) == 1)
    {
      v8 = v0[24];
      swift_getKeyPath();
      v9 = swift_task_alloc();
      *(v9 + 16) = v8;
      *(v9 + 24) = 0;
      v0[11] = v8;
      sub_1BE04B584();
    }

    else
    {
      *(v0[24] + v0[94]) = 0;
    }

    v15 = v0[1];

    return v15();
  }

  else
  {
    v10 = swift_task_alloc();
    v0[103] = v10;
    *v10 = v0;
    v10[1] = sub_1BDA43E38;
    v11 = v0[88];
    v12 = v0[81];
    v13 = v0[74];

    return sub_1BD4E0F68(v13, v11, v12);
  }
}

uint64_t sub_1BDA43E38()
{
  v1 = *v0;

  v2 = *(v1 + 728);
  v3 = *(v1 + 720);

  return MEMORY[0x1EEE6DFA0](sub_1BDA43F58, v3, v2);
}

uint64_t sub_1BDA43F58()
{
  v1 = v0[80];
  v2 = v0[76];
  v31 = v0[75];
  v32 = v0[78];
  v3 = v0[74];
  v4 = v0[73];
  v5 = v0[72];
  v6 = v0[71];
  v7 = v0[70];
  v30 = v0[69];
  v8 = v0[68];
  v34 = v0[61];
  v33 = v0[57];
  v9 = v0[24];
  sub_1BD0DE19C(v0[81], v1, &qword_1EBD3F7C0);
  sub_1BD51FF8C(v1, v6);
  sub_1BDA4AC38(v3, v8, type metadata accessor for FinanceKitMerchantHeaderView.ViewModel);
  v10 = *(v4 + 56);
  v0[104] = v10;
  v0[105] = (v4 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v10(v8, 0, 1, v5);
  v11 = type metadata accessor for FinanceKitTransactionGroupHistoryView.GroupHistoryViewModel(0);
  v0[106] = v11;
  v12 = v11[5];
  sub_1BDA4AC38(v6, v8 + v12, type metadata accessor for FinanceKitMerchantBrandViewButtons.ViewModel);
  v13 = *(v7 + 56);
  v0[107] = v13;
  v0[108] = (v7 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v13(v8 + v12, 0, 1, v30);
  v14 = v11[6];
  v15 = type metadata accessor for FinanceKitTransactionHistoryView.ViewModel(0);
  v0[109] = v15;
  v16 = *(v15 - 8);
  v17 = *(v16 + 56);
  v0[110] = v17;
  v0[111] = (v16 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v17(v8 + v14, 1, 1, v15);
  v17(v8 + v11[7], 1, 1, v15);
  v18 = (v8 + v11[8]);
  *v18 = 0u;
  v18[1] = 0u;
  v19 = *(v11 - 1);
  v20 = *(v19 + 56);
  v0[112] = v20;
  v0[113] = (v19 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v20(v8, 0, 1, v11);
  swift_getKeyPath();
  v21 = swift_task_alloc();
  *(v21 + 16) = v9;
  *(v21 + 24) = v8;
  v0[12] = v9;
  sub_1BE04B584();

  sub_1BD0DE53C(v8, &qword_1EBD5C7D0);
  v22 = OBJC_IVAR____TtCV9PassKitUI37FinanceKitTransactionGroupHistoryView9ViewModel_accountID;
  v23 = *(v2 + 16);
  v0[114] = v23;
  v0[115] = (v2 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v23(v32, v9 + v22, v31);
  v24 = swift_task_alloc();
  v0[116] = v24;
  *(v24 + 16) = v32;
  v0[13] = v33;
  sub_1BE04B444();
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38DF8);
  (*(*(v25 - 8) + 56))(v34, 0, 1, v25);
  sub_1BE049B54();
  v26 = swift_task_alloc();
  v0[117] = v26;
  *v26 = v0;
  v26[1] = sub_1BDA44390;
  v27 = v0[67];
  v28 = v0[64];

  return MEMORY[0x1EEDC14B8](v27, v28);
}

uint64_t sub_1BDA44390()
{
  v2 = *v1;
  *(*v1 + 944) = v0;

  (*(v2[63] + 8))(v2[64], v2[62]);
  v3 = v2[91];
  v4 = v2[90];
  if (v0)
  {
    v5 = sub_1BDA46854;
  }

  else
  {
    v5 = sub_1BDA44518;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, v3);
}

uint64_t sub_1BDA44518()
{
  v1 = sub_1BE049C14();
  if (*(v1 + 16))
  {
    v3 = v0[59];
    v2 = v0[60];
    v4 = v0[57];
    v5 = v0[58];
    v6 = v0[53];
    v7 = v0[46];
    (*(v5 + 16))(v3, v1 + ((*(v5 + 80) + 32) & ~*(v5 + 80)), v4);

    (*(v5 + 32))(v2, v3, v4);
    v8 = swift_task_alloc();
    v0[119] = v8;
    *(v8 + 16) = v2;
    v0[15] = v6;
    sub_1BE04B444();
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38E00);
    (*(*(v9 - 8) + 56))(v7, 0, 1, v9);
    sub_1BE049CB4();
    v10 = swift_task_alloc();
    v0[120] = v10;
    *v10 = v0;
    v10[1] = sub_1BDA44AA0;
    v11 = v0[52];
    v12 = v0[49];

    return MEMORY[0x1EEDC14C8](v11, v12);
  }

  else
  {
    v13 = v0[101];
    v30 = v0[99];
    v31 = v0[94];
    v27 = v0[88];
    v14 = v0[83];
    v26 = v0[82];
    v15 = v0[81];
    v28 = v0[75];
    v29 = v0[78];
    v16 = v0[74];
    v17 = v0[71];
    v18 = v0[67];
    v19 = v0[66];
    v20 = v0[65];
    v25 = v0[24];

    (*(v19 + 8))(v18, v20);
    sub_1BDA4ABD8(v17, type metadata accessor for FinanceKitMerchantBrandViewButtons.ViewModel);
    sub_1BDA4ABD8(v16, type metadata accessor for FinanceKitMerchantHeaderView.ViewModel);
    sub_1BD0DE53C(v15, &qword_1EBD3F7C0);
    (*(v14 + 8))(v27, v26);
    v30(v29, v28);
    if (*(v25 + v31) == 1)
    {
      v21 = v0[24];
      swift_getKeyPath();
      v22 = swift_task_alloc();
      *(v22 + 16) = v21;
      *(v22 + 24) = 0;
      v0[23] = v21;
      sub_1BE04B584();
    }

    else
    {
      *(v0[24] + v0[94]) = 0;
    }

    v23 = v0[1];

    return v23();
  }
}

uint64_t sub_1BDA44AA0()
{
  v2 = *v1;
  *(*v1 + 968) = v0;

  (*(v2[48] + 8))(v2[49], v2[47]);
  v3 = v2[91];
  v4 = v2[90];
  if (v0)
  {
    v5 = sub_1BDA46BFC;
  }

  else
  {
    v5 = sub_1BDA44C28;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, v3);
}

uint64_t sub_1BDA44C28()
{
  v2 = v0[51];
  v1 = v0[52];
  v3 = v0[50];
  v4 = sub_1BE049D34();
  (*(v2 + 8))(v1, v3);
  if (*(v4 + 16))
  {
    v35 = v0[114];
    v34 = v0[96];
    v50 = v0[78];
    v52 = v0[82];
    v33 = v0[75];
    v5 = v0[55];
    v6 = v0[56];
    v7 = v0[53];
    v8 = v0[54];
    v10 = v0[44];
    v9 = v0[45];
    v31 = v0[43];
    v11 = v0[38];
    v54 = v0[39];
    v32 = v0[37];
    v37 = v0[36];
    v39 = v0[34];
    v41 = v0[35];
    v43 = v0[33];
    v48 = v0[32];
    v12 = v0[24];
    (*(v8 + 16))(v5, v4 + ((*(v8 + 80) + 32) & ~*(v8 + 80)), v7);

    (*(v8 + 32))(v6, v5, v7);
    v45 = sub_1BE049AC4();
    (*(v10 + 104))(v9, *MEMORY[0x1E6967B10], v31);
    v35(v54, v12 + v34, v33);
    (*(v11 + 104))(v54, *MEMORY[0x1E6967B00], v32);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38DD8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38DE0);
    *(swift_allocObject() + 16) = xmmword_1BE0B98D0;
    swift_getKeyPath();
    v0[122] = sub_1BDA4AA28(&qword_1EBD525D0, MEMORY[0x1E6969530]);
    sub_1BE04A4F4();
    swift_getKeyPath();
    sub_1BE0523E4();
    (*(v39 + 16))(v41, v37, v43);
    sub_1BE04A4E4();
    (*(v39 + 8))(v37, v43);
    swift_getKeyPath();
    sub_1BDA4AA28(&qword_1EBD38DE8, MEMORY[0x1E69695A8]);
    sub_1BE04A4F4();
    v13 = swift_task_alloc();
    v0[123] = v13;
    v13[2] = v50;
    v13[3] = v9;
    v13[4] = v45;
    v0[17] = v52;
    sub_1BE04B444();

    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38DF0);
    (*(*(v14 - 8) + 56))(v48, 0, 1, v14);
    v15 = sub_1BE049B34();
    v16 = MEMORY[0x1E6967B08];
    v0[5] = v15;
    v0[6] = v16;
    __swift_allocate_boxed_opaque_existential_1(v0 + 2);
    sub_1BE049B24();
    v17 = swift_task_alloc();
    v0[124] = v17;
    *v17 = v0;
    v17[1] = sub_1BDA454A8;
    v18 = v0[42];

    return MEMORY[0x1EEDC14D8](v18, v0 + 2);
  }

  else
  {
    v19 = v0[101];
    v51 = v0[99];
    v53 = v0[94];
    v20 = v0[83];
    v42 = v0[82];
    v44 = v0[88];
    v36 = v0[81];
    v47 = v0[75];
    v49 = v0[78];
    v21 = v0[74];
    v22 = v0[71];
    v23 = v0[67];
    v24 = v0[66];
    v25 = v0[65];
    v26 = v0[58];
    v38 = v0[57];
    v40 = v0[60];
    v46 = v0[24];

    (*(v24 + 8))(v23, v25);
    sub_1BDA4ABD8(v22, type metadata accessor for FinanceKitMerchantBrandViewButtons.ViewModel);
    sub_1BDA4ABD8(v21, type metadata accessor for FinanceKitMerchantHeaderView.ViewModel);
    sub_1BD0DE53C(v36, &qword_1EBD3F7C0);
    (*(v20 + 8))(v44, v42);
    (*(v26 + 8))(v40, v38);
    v51(v49, v47);
    if (*(v46 + v53) == 1)
    {
      v27 = v0[24];
      swift_getKeyPath();
      v28 = swift_task_alloc();
      *(v28 + 16) = v27;
      *(v28 + 24) = 0;
      v0[22] = v27;
      sub_1BE04B584();
    }

    else
    {
      *(v0[24] + v0[94]) = 0;
    }

    v29 = v0[1];

    return v29();
  }
}

uint64_t sub_1BDA454A8()
{
  v2 = *v1;
  *(*v1 + 1000) = v0;

  if (v0)
  {
    v3 = *(v2 + 728);
    v4 = *(v2 + 720);
    v5 = sub_1BDA46FFC;
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_0(v2 + 16);
    v3 = *(v2 + 728);
    v4 = *(v2 + 720);
    v5 = sub_1BDA455CC;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, v3);
}

uint64_t sub_1BDA455CC()
{
  v2 = v0[41];
  v1 = v0[42];
  v3 = v0[40];
  v4 = sub_1BE049D54();
  v0[126] = v4;
  (*(v2 + 8))(v1, v3);
  v5 = *(v4 + 16);
  v6 = MEMORY[0x1E69E7CC0];
  if (v5)
  {
    v7 = v0[83];
    v8 = v0[76];
    v22 = MEMORY[0x1E69E7CC0];
    sub_1BD531F28(0, v5, 0);
    v6 = v22;
    v9 = *(v7 + 16);
    v7 += 16;
    v10 = v4 + ((*(v7 + 64) + 32) & ~*(v7 + 64));
    v20 = *(v7 + 56);
    v21 = v9;
    v11 = (v7 - 8);
    do
    {
      v12 = v0[87];
      v13 = v0[82];
      v21(v12, v10, v13);
      sub_1BE049A14();
      (*v11)(v12, v13);
      v15 = *(v22 + 16);
      v14 = *(v22 + 24);
      if (v15 >= v14 >> 1)
      {
        sub_1BD531F28(v14 > 1, v15 + 1, 1);
      }

      v16 = v0[77];
      v17 = v0[75];
      *(v22 + 16) = v15 + 1;
      (*(v8 + 32))(v22 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v15, v16, v17);
      v10 += v20;
      --v5;
    }

    while (v5);
  }

  v0[127] = v6;
  v18 = swift_task_alloc();
  v0[128] = v18;
  *v18 = v0;
  v18[1] = sub_1BDA457D4;

  return MEMORY[0x1EEDC1510](v6);
}

uint64_t sub_1BDA457D4(uint64_t a1)
{
  v3 = *v2;
  v3[129] = a1;
  v3[130] = v1;

  if (v1)
  {

    v4 = v3[91];
    v5 = v3[90];
    v6 = sub_1BDA47464;
  }

  else
  {
    v4 = v3[91];
    v5 = v3[90];
    v6 = sub_1BDA4592C;
  }

  return MEMORY[0x1EEE6DFA0](v6, v5, v4);
}

uint64_t sub_1BDA4592C()
{
  v1 = *(v0 + 1008);

  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = *(v0 + 664);
    v6 = *(v3 + 16);
    v4 = v3 + 16;
    v5 = v6;
    v86 = (*(v4 + 64) + 32) & ~*(v4 + 64);
    v7 = *(v0 + 1008) + v86;
    v81 = (*(v0 + 240) + 8);
    v83 = *(v4 + 56);
    v77 = MEMORY[0x1E69E7CC0];
    v93 = v6;
    v96 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      v5(*(v0 + 688), v7, *(v0 + 656));
      sub_1BE049974();
      if ((sub_1BE052314() & 1) == 0)
      {
        break;
      }

      v11 = *(v0 + 248);
      v12 = *(v0 + 232);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38DB8);
      v13 = sub_1BE0522F4();
      (*v81)(v11, v12);
      if ((v13 & 1) == 0)
      {
        goto LABEL_12;
      }

      v5(*(v0 + 680), *(v0 + 688), *(v0 + 656));
      v14 = v77;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v14 = sub_1BD1D825C(0, v77[2] + 1, 1, v77);
      }

      v16 = v14[2];
      v15 = v14[3];
      v17 = v16 + 1;
      if (v16 >= v15 >> 1)
      {
        v14 = sub_1BD1D825C(v15 > 1, v16 + 1, 1, v14);
        v8 = (v0 + 680);
        v77 = v14;
      }

      else
      {
        v77 = v14;
        v8 = (v0 + 680);
      }

LABEL_4:
      v9 = *v8;
      v10 = *(v0 + 656);
      (*(v4 - 8))(*(v0 + 688), v10);
      v14[2] = v17;
      (*(v4 + 16))(v14 + v86 + v16 * v83, v9, v10);
      v7 += v83;
      --v2;
      v5 = v93;
      if (!v2)
      {

        v19 = v77;
        v20 = v96;
        goto LABEL_19;
      }
    }

    (*v81)(*(v0 + 248), *(v0 + 232));
LABEL_12:
    v5(*(v0 + 672), *(v0 + 688), *(v0 + 656));
    v14 = v96;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v14 = sub_1BD1D825C(0, v96[2] + 1, 1, v96);
    }

    v16 = v14[2];
    v18 = v14[3];
    v17 = v16 + 1;
    if (v16 < v18 >> 1)
    {
      v96 = v14;
      v8 = (v0 + 672);
    }

    else
    {
      v14 = sub_1BD1D825C(v18 > 1, v16 + 1, 1, v14);
      v8 = (v0 + 672);
      v96 = v14;
    }

    goto LABEL_4;
  }

  v19 = MEMORY[0x1E69E7CC0];
  v20 = MEMORY[0x1E69E7CC0];
LABEL_19:
  (*(v0 + 880))(*(v0 + 224), 1, 1, *(v0 + 872));
  v78 = v19;
  if (*(v19 + 16))
  {
    v21 = *(v0 + 1032);
    v90 = *(v0 + 880);
    v22 = *(v0 + 480);
    v23 = *(v0 + 448);
    v24 = *(v0 + 216);
    v84 = *(v0 + 224);
    v87 = *(v0 + 872);
    v97 = v20;
    v25 = *(v0 + 200);
    v26 = swift_task_alloc();
    v26[2] = v21;
    v26[3] = v22;
    v26[4] = v23;
    v27 = sub_1BDA3DE98(sub_1BDA4ACD4, v26, v19, type metadata accessor for TransactionContext, sub_1BD531EE4, MEMORY[0x1E6967A40], type metadata accessor for TransactionContext);

    sub_1BE049C04();
    v28 = v25;
    v20 = v97;
    sub_1BD720F44(v27, v28, v24);
    sub_1BD0DE53C(v84, &qword_1EBD3F780);
    v90(v24, 0, 1, v87);
    sub_1BD0DE204(v24, v84, &qword_1EBD3F780);
  }

  (*(v0 + 880))(*(v0 + 208), 1, 1, *(v0 + 872));
  v29 = *(v0 + 1032);
  if (*(v20 + 16))
  {
    v94 = *(v0 + 880);
    v30 = *(v0 + 480);
    v31 = *(v0 + 448);
    v32 = *(v0 + 216);
    v88 = *(v0 + 208);
    v91 = *(v0 + 872);
    v33 = *(v0 + 200);
    v34 = swift_task_alloc();
    v34[2] = v29;
    v34[3] = v30;
    v34[4] = v31;
    v35 = sub_1BDA3DE98(sub_1BDA4B3A8, v34, v20, type metadata accessor for TransactionContext, sub_1BD531EE4, MEMORY[0x1E6967A40], type metadata accessor for TransactionContext);

    sub_1BE049C04();
    sub_1BD720F44(v35, v33, v32);
    sub_1BD0DE53C(v88, &qword_1EBD3F780);
    v94(v32, 0, 1, v91);
    sub_1BD0DE204(v32, v88, &qword_1EBD3F780);
  }

  else
  {
  }

  v61 = *(v0 + 896);
  v60 = *(v0 + 856);
  v36 = *(v0 + 848);
  v37 = *(v0 + 832);
  v67 = *(v0 + 808);
  v92 = *(v0 + 792);
  v95 = *(v0 + 752);
  v70 = *(v0 + 664);
  v73 = *(v0 + 656);
  v74 = *(v0 + 704);
  v68 = *(v0 + 648);
  v85 = *(v0 + 600);
  v89 = *(v0 + 624);
  v38 = *(v0 + 576);
  v39 = *(v0 + 568);
  v40 = *(v0 + 552);
  v41 = *(v0 + 544);
  v63 = *(v0 + 528);
  v64 = *(v0 + 592);
  v65 = *(v0 + 520);
  v66 = *(v0 + 536);
  v62 = *(v0 + 480);
  v80 = *(v0 + 464);
  v82 = *(v0 + 456);
  v79 = *(v0 + 448);
  v75 = *(v0 + 432);
  v76 = *(v0 + 424);
  v69 = *(v0 + 352);
  v71 = *(v0 + 344);
  v72 = *(v0 + 360);
  v42 = *(v0 + 224);
  v58 = *(v0 + 208);
  v59 = *(v0 + 192);
  sub_1BDA4AC38(v64, v41, type metadata accessor for FinanceKitMerchantHeaderView.ViewModel);
  v37(v41, 0, 1, v38);
  v43 = v36[5];
  sub_1BDA4AC38(v39, v41 + v43, type metadata accessor for FinanceKitMerchantBrandViewButtons.ViewModel);
  v60(v41 + v43, 0, 1, v40);
  sub_1BD0DE19C(v42, v41 + v36[6], &qword_1EBD3F780);
  sub_1BD0DE19C(v58, v41 + v36[7], &qword_1EBD3F780);
  sub_1BDA49634(v78);
  v45 = v44;
  v47 = v46;
  v49 = v48;
  v51 = v50;

  v52 = (v41 + v36[8]);
  *v52 = v45;
  v52[1] = v47;
  v52[2] = v49;
  v52[3] = v51;
  v61(v41, 0, 1, v36);
  swift_getKeyPath();
  v53 = swift_task_alloc();
  *(v53 + 16) = v59;
  *(v53 + 24) = v41;
  *(v0 + 160) = v59;
  sub_1BE04B584();

  sub_1BD0DE53C(v58, &qword_1EBD3F780);
  sub_1BD0DE53C(v42, &qword_1EBD3F780);
  (*(v63 + 8))(v66, v65);
  sub_1BDA4ABD8(v39, type metadata accessor for FinanceKitMerchantBrandViewButtons.ViewModel);
  sub_1BDA4ABD8(v64, type metadata accessor for FinanceKitMerchantHeaderView.ViewModel);
  sub_1BD0DE53C(v68, &qword_1EBD3F7C0);
  (*(v70 + 8))(v74, v73);

  sub_1BD0DE53C(v41, &qword_1EBD5C7D0);
  (*(v69 + 8))(v72, v71);
  (*(v75 + 8))(v79, v76);
  (*(v80 + 8))(v62, v82);
  v92(v89, v85);
  if (*(v59 + v95) == 1)
  {
    v54 = *(v0 + 192);
    swift_getKeyPath();
    v55 = swift_task_alloc();
    *(v55 + 16) = v54;
    *(v55 + 24) = 0;
    *(v0 + 168) = v54;
    sub_1BE04B584();
  }

  else
  {
    *(*(v0 + 192) + *(v0 + 752)) = 0;
  }

  v56 = *(v0 + 8);

  return v56();
}

uint64_t sub_1BDA46554()
{
  v1 = v0[94];
  v2 = v0[88];
  v3 = v0[83];
  v4 = v0[82];
  v5 = v0[24];

  (*(v3 + 8))(v2, v4);
  if (*(v5 + v1) == 1)
  {
    v6 = v0[24];
    swift_getKeyPath();
    v7 = swift_task_alloc();
    *(v7 + 16) = v6;
    *(v7 + 24) = 0;
    v0[10] = v6;
    sub_1BE04B584();
  }

  else
  {
    *(v0[24] + v0[94]) = 0;
  }

  v8 = v0[1];

  return v8();
}

uint64_t sub_1BDA46854()
{
  v1 = v0[101];
  v16 = v0[94];
  v2 = v0[88];
  v3 = v0[83];
  v4 = v0[82];
  v5 = v0[81];
  v6 = v0[78];
  v7 = v0[75];
  v8 = v0[74];
  v9 = v0[71];
  v14 = v0[24];
  v15 = v0[99];

  sub_1BDA4ABD8(v9, type metadata accessor for FinanceKitMerchantBrandViewButtons.ViewModel);
  sub_1BDA4ABD8(v8, type metadata accessor for FinanceKitMerchantHeaderView.ViewModel);
  sub_1BD0DE53C(v5, &qword_1EBD3F7C0);
  (*(v3 + 8))(v2, v4);
  v15(v6, v7);
  if (*(v14 + v16) == 1)
  {
    v10 = v0[24];
    swift_getKeyPath();
    v11 = swift_task_alloc();
    *(v11 + 16) = v10;
    *(v11 + 24) = 0;
    v0[14] = v10;
    sub_1BE04B584();
  }

  else
  {
    *(v0[24] + v0[94]) = 0;
  }

  v12 = v0[1];

  return v12();
}

uint64_t sub_1BDA46BFC()
{
  v1 = v0[101];
  v21 = v0[99];
  v22 = v0[94];
  v2 = v0[83];
  v16 = v0[82];
  v17 = v0[88];
  v3 = v0[81];
  v19 = v0[75];
  v20 = v0[78];
  v4 = v0[74];
  v5 = v0[71];
  v6 = v0[67];
  v7 = v0[66];
  v8 = v0[65];
  v9 = v0[58];
  v14 = v0[57];
  v15 = v0[60];
  v18 = v0[24];

  (*(v7 + 8))(v6, v8);
  sub_1BDA4ABD8(v5, type metadata accessor for FinanceKitMerchantBrandViewButtons.ViewModel);
  sub_1BDA4ABD8(v4, type metadata accessor for FinanceKitMerchantHeaderView.ViewModel);
  sub_1BD0DE53C(v3, &qword_1EBD3F7C0);
  (*(v2 + 8))(v17, v16);
  (*(v9 + 8))(v15, v14);
  v21(v20, v19);
  if (*(v18 + v22) == 1)
  {
    v10 = v0[24];
    swift_getKeyPath();
    v11 = swift_task_alloc();
    *(v11 + 16) = v10;
    *(v11 + 24) = 0;
    v0[16] = v10;
    sub_1BE04B584();
  }

  else
  {
    *(v0[24] + v0[94]) = 0;
  }

  v12 = v0[1];

  return v12();
}

uint64_t sub_1BDA46FFC()
{
  v1 = v0[101];
  v27 = v0[99];
  v28 = v0[94];
  v2 = v0[83];
  v18 = v0[82];
  v19 = v0[88];
  v15 = v0[81];
  v25 = v0[75];
  v26 = v0[78];
  v14 = v0[74];
  v3 = v0[71];
  v4 = v0[67];
  v5 = v0[66];
  v6 = v0[65];
  v24 = v0[60];
  v7 = v0[58];
  v21 = v0[56];
  v22 = v0[57];
  v8 = v0[54];
  v20 = v0[53];
  v9 = v0[44];
  v16 = v0[43];
  v17 = v0[45];
  v23 = v0[24];

  (*(v5 + 8))(v4, v6);
  sub_1BDA4ABD8(v3, type metadata accessor for FinanceKitMerchantBrandViewButtons.ViewModel);
  sub_1BDA4ABD8(v14, type metadata accessor for FinanceKitMerchantHeaderView.ViewModel);
  sub_1BD0DE53C(v15, &qword_1EBD3F7C0);
  (*(v2 + 8))(v19, v18);
  __swift_destroy_boxed_opaque_existential_0((v0 + 2));
  (*(v9 + 8))(v17, v16);
  (*(v8 + 8))(v21, v20);
  (*(v7 + 8))(v24, v22);
  v27(v26, v25);
  if (*(v23 + v28) == 1)
  {
    v10 = v0[24];
    swift_getKeyPath();
    v11 = swift_task_alloc();
    *(v11 + 16) = v10;
    *(v11 + 24) = 0;
    v0[18] = v10;
    sub_1BE04B584();
  }

  else
  {
    *(v0[24] + v0[94]) = 0;
  }

  v12 = v0[1];

  return v12();
}

uint64_t sub_1BDA47464()
{
  v1 = v0[101];
  v27 = v0[99];
  v28 = v0[94];
  v21 = v0[88];
  v2 = v0[83];
  v19 = v0[82];
  v16 = v0[81];
  v25 = v0[75];
  v26 = v0[78];
  v14 = v0[74];
  v3 = v0[71];
  v4 = v0[67];
  v5 = v0[66];
  v6 = v0[65];
  v24 = v0[60];
  v7 = v0[58];
  v20 = v0[56];
  v8 = v0[54];
  v9 = v0[44];
  v17 = v0[45];
  v18 = v0[53];
  v15 = v0[43];
  v22 = v0[57];
  v23 = v0[24];

  (*(v5 + 8))(v4, v6);
  sub_1BDA4ABD8(v3, type metadata accessor for FinanceKitMerchantBrandViewButtons.ViewModel);
  sub_1BDA4ABD8(v14, type metadata accessor for FinanceKitMerchantHeaderView.ViewModel);
  sub_1BD0DE53C(v16, &qword_1EBD3F7C0);
  (*(v2 + 8))(v21, v19);
  (*(v9 + 8))(v17, v15);
  (*(v8 + 8))(v20, v18);
  (*(v7 + 8))(v24, v22);
  v27(v26, v25);
  if (*(v23 + v28) == 1)
  {
    v10 = v0[24];
    swift_getKeyPath();
    v11 = swift_task_alloc();
    *(v11 + 16) = v10;
    *(v11 + 24) = 0;
    v0[19] = v10;
    sub_1BE04B584();
  }

  else
  {
    *(v0[24] + v0[94]) = 0;
  }

  v12 = v0[1];

  return v12();
}

uint64_t sub_1BDA478D4@<X0>(uint64_t a1@<X1>, uint64_t *a2@<X8>)
{
  v20[1] = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F828);
  v4 = *(v3 - 8);
  v21 = v3;
  v22 = v4;
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = v20 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38E70);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = v20 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38E78);
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13, v15);
  v17 = v20 - v16;
  sub_1BD0DE4F4(&qword_1EBD38E80, &qword_1EBD38E70);
  sub_1BE04A7C4();
  swift_getKeyPath();
  sub_1BE04A724();

  (*(v9 + 8))(v12, v8);
  sub_1BE04AFE4();
  sub_1BE04A7B4();
  a2[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4D830);
  a2[4] = sub_1BD62A9C0();
  __swift_allocate_boxed_opaque_existential_1(a2);
  sub_1BD0DE4F4(&qword_1EBD38ED0, &qword_1EBD38E78);
  sub_1BD0DE4F4(&qword_1EBD3F850, &qword_1EBD3F828);
  sub_1BDA4AA28(&unk_1EBD36A30, MEMORY[0x1E69695A8]);
  v18 = v21;
  sub_1BE04A714();
  (*(v22 + 8))(v7, v18);
  return (*(v14 + 8))(v17, v13);
}

uint64_t sub_1BDA47C70@<X0>(uint64_t a1@<X1>, uint64_t *a2@<X8>)
{
  v30 = a1;
  v39 = a2;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5C188);
  v34 = *(v32 - 8);
  MEMORY[0x1EEE9AC00](v32, v2);
  v4 = &v30 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5C890);
  v6 = *(v5 - 8);
  v35 = v5;
  v36 = v6;
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v30 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5C898);
  v11 = *(v10 - 8);
  v37 = v10;
  v38 = v11;
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = &v30 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38E10);
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15, v17);
  v19 = &v30 - v18;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38E18);
  v33 = *(v31 - 8);
  MEMORY[0x1EEE9AC00](v31, v20);
  v22 = &v30 - v21;
  sub_1BD0DE4F4(&qword_1EBD38E20, &qword_1EBD38E10);
  sub_1BE04A7C4();
  swift_getKeyPath();
  sub_1BE04A724();

  (*(v16 + 8))(v19, v15);
  sub_1BE0495A4();
  sub_1BE04A7B4();
  swift_getKeyPath();
  sub_1BD0DE4F4(&qword_1EBD5C1B8, &qword_1EBD5C188);
  v23 = v32;
  sub_1BE04A724();

  (*(v34 + 8))(v4, v23);
  swift_getKeyPath();
  sub_1BD0DE4F4(&qword_1EBD5C8A0, &qword_1EBD5C890);
  v24 = v35;
  sub_1BE04A724();

  (*(v36 + 8))(v9, v24);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5C8A8);
  v26 = v39;
  v39[3] = v25;
  v26[4] = sub_1BDA4B07C();
  __swift_allocate_boxed_opaque_existential_1(v26);
  sub_1BD0DE4F4(&qword_1EBD38E50, &qword_1EBD38E18);
  sub_1BD0DE4F4(&qword_1EBD5C8C8, &qword_1EBD5C898);
  v27 = v31;
  v28 = v37;
  sub_1BE04A714();
  (*(v38 + 8))(v14, v28);
  return (*(v33 + 8))(v22, v27);
}

uint64_t sub_1BDA481C4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v101 = a4;
  v99 = a3;
  v112 = a2;
  v110 = a5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4D648);
  v7 = *(v6 - 8);
  v106 = v6;
  v107 = v7;
  MEMORY[0x1EEE9AC00](v6, v8);
  v102 = v77 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4D650);
  v11 = *(v10 - 8);
  v104 = v10;
  v105 = v11;
  MEMORY[0x1EEE9AC00](v10, v12);
  v100 = v77 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4D658);
  v15 = *(v14 - 8);
  v108 = v14;
  v109 = v15;
  MEMORY[0x1EEE9AC00](v14, v16);
  v103 = v77 - v17;
  v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5C830);
  v98 = *(v96 - 8);
  MEMORY[0x1EEE9AC00](v96, v18);
  v90 = v77 - v19;
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4D660);
  v92 = *(v91 - 8);
  MEMORY[0x1EEE9AC00](v91, v20);
  v88 = v77 - v21;
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5C838);
  v95 = *(v94 - 8);
  MEMORY[0x1EEE9AC00](v94, v22);
  v89 = v77 - v23;
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38EE0);
  v85 = *(v84 - 8);
  MEMORY[0x1EEE9AC00](v84, v24);
  v83 = v77 - v25;
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F828);
  v81 = *(v79 - 8);
  MEMORY[0x1EEE9AC00](v79, v26);
  v28 = v77 - v27;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38EE8);
  v30 = *(v29 - 8);
  MEMORY[0x1EEE9AC00](v29, v31);
  v33 = v77 - v32;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38EF0);
  v78 = *(v34 - 8);
  MEMORY[0x1EEE9AC00](v34, v35);
  v37 = v77 - v36;
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F830);
  v82 = *(v80 - 8);
  MEMORY[0x1EEE9AC00](v80, v38);
  v40 = v77 - v39;
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5BE18);
  v87 = *(v86 - 8);
  MEMORY[0x1EEE9AC00](v86, v41);
  v116 = v77 - v42;
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5C840);
  v97 = *(v93 - 8);
  MEMORY[0x1EEE9AC00](v93, v43);
  v117 = v77 - v44;
  v114 = *a1;
  v45 = sub_1BD0DE4F4(&qword_1EBD38F10, &qword_1EBD38EE8);
  sub_1BE04A7C4();
  swift_getKeyPath();
  sub_1BE04A724();

  v46 = *(v30 + 8);
  v115 = v30 + 8;
  v113 = v46;
  v46(v33, v29);
  sub_1BE04AFE4();
  sub_1BE04A7B4();
  v112 = MEMORY[0x1E6968D58];
  sub_1BD0DE4F4(&qword_1EBD38F20, &qword_1EBD38EF0);
  v77[1] = MEMORY[0x1E6968D20];
  sub_1BD0DE4F4(&qword_1EBD3F850, &qword_1EBD3F828);
  sub_1BDA4AA28(&unk_1EBD36A30, MEMORY[0x1E69695A8]);
  v47 = v34;
  v48 = v79;
  sub_1BE04A714();
  (*(v81 + 8))(v28, v48);
  (*(v78 + 8))(v37, v47);
  v77[0] = v29;
  v111 = v45;
  sub_1BE04A7C4();
  swift_getKeyPath();
  v49 = v83;
  sub_1BE04A724();

  v50 = v113;
  v113(v33, v29);
  v81 = MEMORY[0x1E6968D08];
  sub_1BD0DE4F4(&qword_1EBD3F858, &qword_1EBD3F830);
  sub_1BD0DE4F4(qword_1EBD38F90, &qword_1EBD38EE0);
  v51 = v40;
  v52 = v80;
  v53 = v84;
  sub_1BE04A784();
  (*(v85 + 8))(v49, v53);
  (*(v82 + 8))(v51, v52);
  v54 = v77[0];
  sub_1BE04A7C4();
  swift_getKeyPath();
  v55 = v88;
  sub_1BE04A724();

  v50(v33, v54);
  sub_1BE049B44();
  v56 = v90;
  sub_1BE04A7B4();
  sub_1BD0DE4F4(&qword_1EBD4D6B0, &qword_1EBD4D660);
  sub_1BD0DE4F4(&qword_1EBD5C848, &qword_1EBD5C830);
  sub_1BDA4AA28(&qword_1EBD40690, MEMORY[0x1E6967B20]);
  v57 = v89;
  v58 = v55;
  v59 = v56;
  v60 = v91;
  v61 = v96;
  sub_1BE04A714();
  (*(v98 + 8))(v59, v61);
  (*(v92 + 8))(v58, v60);
  sub_1BD0DE4F4(&qword_1EBD5C850, &qword_1EBD5BE18);
  sub_1BD0DE4F4(&qword_1EBD5C858, &qword_1EBD5C838);
  v62 = v116;
  v63 = v86;
  v64 = v94;
  sub_1BE04A784();
  (*(v95 + 8))(v57, v64);
  (*(v87 + 8))(v62, v63);
  v118 = v101;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4D6C8);
  v65 = v100;
  sub_1BE04A7B4();
  sub_1BE04A7C4();
  swift_getKeyPath();
  v66 = v102;
  sub_1BE04A724();

  v113(v33, v54);
  sub_1BD0DE4F4(&qword_1EBD4D6D0, &qword_1EBD4D650);
  sub_1BD0DE4F4(&qword_1EBD4D6D8, &qword_1EBD4D648);
  sub_1BD0DE4F4(&qword_1EBD4D6E0, &qword_1EBD4D6C8);
  sub_1BDA4AA28(&qword_1EBD3A340, MEMORY[0x1E6967AD0]);
  v67 = v103;
  v68 = v65;
  v69 = v104;
  v70 = v106;
  sub_1BE04A754();
  (*(v107 + 8))(v66, v70);
  (*(v105 + 8))(v68, v69);
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5C860);
  v72 = v110;
  v110[3] = v71;
  v72[4] = sub_1BDA4ACF8();
  __swift_allocate_boxed_opaque_existential_1(v72);
  sub_1BD0DE4F4(&qword_1EBD5C888, &qword_1EBD5C840);
  sub_1BD0DE4F4(&qword_1EBD4D6F0, &qword_1EBD4D658);
  v73 = v117;
  v74 = v93;
  v75 = v108;
  sub_1BE04A784();
  (*(v109 + 8))(v67, v75);
  return (*(v97 + 8))(v73, v74);
}

uint64_t sub_1BDA49124@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v49 = a5;
  v45 = a3;
  v46 = a4;
  v43 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F7B8);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v48 = &v42 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F7C0);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v47 = &v42 - v11;
  v53 = sub_1BE049184();
  v44 = *(v53 - 8);
  MEMORY[0x1EEE9AC00](v53, v12);
  v52 = &v42 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = sub_1BE0495A4();
  v14 = *(v51 - 8);
  MEMORY[0x1EEE9AC00](v51, v15);
  v50 = &v42 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1BE049A94();
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17, v19);
  v21 = &v42 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_1BE04AFE4();
  v23 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22, v24);
  v26 = &v42 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = a1;
  sub_1BE049A14();
  v28 = v43;
  if (*(v43 + 16) && (v29 = sub_1BD14951C(v26), (v30 & 1) != 0))
  {
    v31 = *(*(v28 + 56) + 8 * v29);
    v32 = *(v23 + 8);
    sub_1BE048C84();
    v32(v26, v22);
  }

  else
  {
    (*(v23 + 8))(v26, v22);
    v31 = 0;
  }

  (*(v18 + 16))(v21, v27, v17);
  (*(v14 + 16))(v50, v45, v51);
  v33 = v44;
  (*(v44 + 16))(v52, v46, v53);
  v35 = v47;
  v34 = v48;
  if (v31)
  {
    v36 = sub_1BE048C84();
    sub_1BD735DE0(v36, v35);

    sub_1BD735E14(v31, v34);
  }

  else
  {
    v37 = sub_1BE0491B4();
    (*(*(v37 - 8) + 56))(v35, 1, 1, v37);
    v38 = sub_1BE049E04();
    (*(*(v38 - 8) + 56))(v34, 1, 1, v38);
  }

  v39 = v49;
  (*(v18 + 32))(v49, v21, v17);
  v40 = type metadata accessor for TransactionContext(0);
  (*(v14 + 32))(v39 + v40[5], v50, v51);
  (*(v33 + 32))(v39 + v40[6], v52, v53);
  sub_1BD0DE204(v35, v39 + v40[7], &qword_1EBD3F7C0);
  return sub_1BD0DE204(v34, v39 + v40[8], &qword_1EBD3F7B8);
}

void sub_1BDA49634(uint64_t a1)
{
  v2 = sub_1BE04B0F4();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v51 = &v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = sub_1BE0493F4();
  v49 = *(v56 - 8);
  MEMORY[0x1EEE9AC00](v56, v6);
  v8 = &v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9, v10);
  v50 = &v44 - v11;
  v12 = sub_1BE04AF64();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12, v14);
  v52 = &v44 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1BE049A94();
  MEMORY[0x1EEE9AC00](v16, v17);
  v20 = &v44 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = *(a1 + 16);
  if (v21)
  {
    v47 = v3;
    v48 = v2;
    v45 = v13;
    v46 = v12;
    v22 = v18;
    v57 = sub_1BE049594();
    v55 = v23;
    v58[0] = MEMORY[0x1BFB403C0](0);
    v58[1] = v24;
    v59 = v25;
    v26 = v22 + 16;
    v27 = *(v22 + 16);
    v28 = a1 + ((*(v22 + 80) + 32) & ~*(v22 + 80));
    v53 = *(v22 + 72);
    v54 = v27;
    v29 = (v49 + 8);
    v30 = (v22 + 8);
    while (1)
    {
      v35 = v26;
      v54(v20, v28, v16);
      sub_1BE0499A4();
      if (sub_1BE0493A4() == v57 && v36 == v55)
      {
      }

      else
      {
        v37 = sub_1BE053B84();

        if ((v37 & 1) == 0)
        {
          goto LABEL_5;
        }
      }

      v31 = sub_1BE0493C4();
      MEMORY[0x1BFB40450](v58, v31, v32, v33);
LABEL_5:
      v34 = *v29;
      (*v29)(v8, v56);
      (*v30)(v20, v16);
      v28 += v53;
      --v21;
      v26 = v35;
      if (!v21)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38DB8);
        v38 = v52;
        sub_1BE04ADD4();
        sub_1BE048C84();
        v39 = v50;
        sub_1BE049404();
        v40 = v51;
        sub_1BE04B054();
        sub_1BE0493E4();
        (*(v47 + 8))(v40, v48);
        v34(v39, v56);
        v41 = sub_1BE04AE64();
        v42 = sub_1BE04AE64();
        v43 = PKDateRangeStringFromDateToDate();

        if (v43)
        {

          sub_1BE052434();

          (*(v45 + 8))(v38, v46);
        }

        else
        {
          __break(1u);
        }

        return;
      }
    }
  }
}

uint64_t sub_1BDA49B2C(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = sub_1BE049204();
  v3[5] = v4;
  v3[6] = *(v4 - 8);
  v3[7] = swift_task_alloc();
  sub_1BE0528A4();
  v3[8] = sub_1BE052894();
  v6 = sub_1BE052844();
  v3[9] = v6;
  v3[10] = v5;

  return MEMORY[0x1EEE6DFA0](sub_1BDA49C24, v6, v5);
}

uint64_t sub_1BDA49C24()
{
  v1 = swift_task_alloc();
  *(v0 + 88) = v1;
  *v1 = v0;
  v1[1] = sub_1BDA49CCC;
  v2 = *(v0 + 24);

  return MEMORY[0x1EEDC1500](v2);
}

uint64_t sub_1BDA49CCC(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 96) = a1;
  *(v4 + 104) = v1;

  v5 = *(v3 + 80);
  v6 = *(v3 + 72);
  if (v1)
  {
    v7 = sub_1BDA4A048;
  }

  else
  {
    v7 = sub_1BDA49E10;
  }

  return MEMORY[0x1EEE6DFA0](v7, v6, v5);
}

uint64_t sub_1BDA49E10()
{
  v1 = v0[12];

  v17 = v1;
  v3 = *(v1 + 16);
  if (v3)
  {
    v4 = 0;
    v5 = v0[6];
    v6 = *MEMORY[0x1E69676F8];
    while (v4 < *(v17 + 16))
    {
      v7 = v0[7];
      v8 = v0[5];
      (*(v5 + 16))(v7, v0[12] + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v4, v8);
      if ((*(v5 + 88))(v7, v8) == v6)
      {
        v13 = v0[6];
        v12 = v0[7];
        v14 = v0[5];
        v15 = v0[2];

        (*(v13 + 96))(v12, v14);
        v9 = sub_1BE0491B4();
        v10 = *(v9 - 8);
        (*(v10 + 32))(v15, v12, v9);
        v11 = 0;
        goto LABEL_8;
      }

      ++v4;
      result = (*(v5 + 8))(v0[7], v0[5]);
      if (v3 == v4)
      {
        goto LABEL_6;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_6:

    v9 = sub_1BE0491B4();
    v10 = *(v9 - 8);
    v11 = 1;
LABEL_8:
    (*(v10 + 56))(v0[2], v11, 1, v9);

    v16 = v0[1];

    return v16();
  }

  return result;
}

uint64_t sub_1BDA4A048()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1BDA4A0B4()
{
  v1 = OBJC_IVAR____TtCV9PassKitUI37FinanceKitTransactionGroupHistoryView9ViewModel_accountID;
  v2 = sub_1BE04AFE4();
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);
  v3(v0 + OBJC_IVAR____TtCV9PassKitUI37FinanceKitTransactionGroupHistoryView9ViewModel_groupID, v2);
  sub_1BD0DE53C(v0 + OBJC_IVAR____TtCV9PassKitUI37FinanceKitTransactionGroupHistoryView9ViewModel_range, &qword_1EBD38DB8);

  sub_1BD0DE53C(v0 + OBJC_IVAR____TtCV9PassKitUI37FinanceKitTransactionGroupHistoryView9ViewModel__groupHistoryDetails, &qword_1EBD5C7D0);
  v4 = OBJC_IVAR____TtCV9PassKitUI37FinanceKitTransactionGroupHistoryView9ViewModel___observationRegistrar;
  v5 = sub_1BE04B5D4();
  (*(*(v5 - 8) + 8))(v0 + v4, v5);

  return swift_deallocClassInstance();
}

void sub_1BDA4A238()
{
  sub_1BE04AFE4();
  if (v0 <= 0x3F)
  {
    sub_1BD0F5C4C();
    if (v1 <= 0x3F)
    {
      sub_1BDA4A50C(319, &qword_1EBD5C738, type metadata accessor for FinanceKitTransactionGroupHistoryView.GroupHistoryViewModel);
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

void sub_1BDA4A404()
{
  sub_1BDA4A50C(319, &qword_1EBD4B1A8, type metadata accessor for FinanceKitMerchantHeaderView.ViewModel);
  if (v0 <= 0x3F)
  {
    sub_1BDA4A50C(319, &qword_1EBD4B1B0, type metadata accessor for FinanceKitMerchantBrandViewButtons.ViewModel);
    if (v1 <= 0x3F)
    {
      sub_1BDA4A50C(319, &qword_1EBD3F758, type metadata accessor for FinanceKitTransactionHistoryView.ViewModel);
      if (v2 <= 0x3F)
      {
        sub_1BD580CC8();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1BDA4A50C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

unint64_t sub_1BDA4A584()
{
  result = qword_1EBD5C7A8;
  if (!qword_1EBD5C7A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD5C788);
    sub_1BDA4A63C();
    sub_1BD0DE4F4(&qword_1EBD395B8, &qword_1EBD39580);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD5C7A8);
  }

  return result;
}

unint64_t sub_1BDA4A63C()
{
  result = qword_1EBD5C7B0;
  if (!qword_1EBD5C7B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD5C7A0);
    sub_1BD0DE4F4(&qword_1EBD5C7B8, &qword_1EBD5C7C0);
    sub_1BD0DE4F4(&qword_1EBD395A8, &qword_1EBD395B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD5C7B0);
  }

  return result;
}

uint64_t sub_1BDA4A728()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1BD0F985C;

  return sub_1BDA40F08(v2, v3, v0 + 32);
}

unint64_t sub_1BDA4A7D4()
{
  result = qword_1EBD5C7C8;
  if (!qword_1EBD5C7C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD5C760);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD5C770);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3FA48);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD37318);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD5C778);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD49C88);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD5C780);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD5C788);
    sub_1BDA4A584();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD49C90);
    sub_1BD53E12C();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_1BD279F20();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD5C7C8);
  }

  return result;
}

uint64_t sub_1BDA4AA28(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1BDA4AA8C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5C7D0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

unint64_t sub_1BDA4AB1C()
{
  result = qword_1EBD5C810;
  if (!qword_1EBD5C810)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD5C800);
    sub_1BDA4AA28(&qword_1EBD49DB8, type metadata accessor for FinanceKitTransactionHistoryView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD5C810);
  }

  return result;
}

uint64_t sub_1BDA4ABD8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1BDA4AC38(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_1BDA4ACF8()
{
  result = qword_1EBD5C868;
  if (!qword_1EBD5C868)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD5C860);
    sub_1BDA4AD84();
    sub_1BD629320();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD5C868);
  }

  return result;
}

unint64_t sub_1BDA4AD84()
{
  result = qword_1EBD5C870;
  if (!qword_1EBD5C870)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD5C840);
    sub_1BDA1471C();
    sub_1BDA4AE10();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD5C870);
  }

  return result;
}

unint64_t sub_1BDA4AE10()
{
  result = qword_1EBD5C878;
  if (!qword_1EBD5C878)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD5C838);
    sub_1BDA4AE9C();
    sub_1BDA4AF4C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD5C878);
  }

  return result;
}

unint64_t sub_1BDA4AE9C()
{
  result = qword_1EBD4D7A8;
  if (!qword_1EBD4D7A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4D660);
    sub_1BD0DE4F4(&qword_1EBD38F78, &qword_1EBD38EE8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4D7A8);
  }

  return result;
}

unint64_t sub_1BDA4AF4C()
{
  result = qword_1EBD5C880;
  if (!qword_1EBD5C880)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD5C830);
    v1 = MEMORY[0x1E6967B20];
    sub_1BDA4AA28(&qword_1EBD4D790, MEMORY[0x1E6967B20]);
    sub_1BDA4AA28(&qword_1EBD4D7A0, v1);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD5C880);
  }

  return result;
}

uint64_t keypath_set_67Tm(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  v6 = *a1;
  v7 = a1[1];
  sub_1BE048C84();
  return a5(v6, v7);
}

unint64_t sub_1BDA4B07C()
{
  result = qword_1EBD5C8B0;
  if (!qword_1EBD5C8B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD5C8A8);
    sub_1BD0F9D68();
    sub_1BDA4B108();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD5C8B0);
  }

  return result;
}

unint64_t sub_1BDA4B108()
{
  result = qword_1EBD5C8B8;
  if (!qword_1EBD5C8B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD5C898);
    sub_1BDA4B18C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD5C8B8);
  }

  return result;
}

unint64_t sub_1BDA4B18C()
{
  result = qword_1EBD5C8C0;
  if (!qword_1EBD5C8C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD5C890);
    sub_1BDA2F3A0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD5C8C0);
  }

  return result;
}

uint64_t sub_1BDA4B210(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1BDA4B278@<X0>(uint64_t a1@<X8>)
{
  sub_1BE051694();
  sub_1BE051694();
  type metadata accessor for NavigationController();
  sub_1BDA4AA28(&qword_1EBD38DA8, type metadata accessor for NavigationController);
  v2 = sub_1BE04EEC4();
  v4 = v3;
  type metadata accessor for FinanceKitTransactionGroupHistoryView.ViewModel(0);
  result = sub_1BE051694();
  *a1 = v6;
  *(a1 + 8) = v7;
  *(a1 + 16) = v6;
  *(a1 + 24) = v7;
  *(a1 + 32) = v6;
  *(a1 + 40) = v7;
  *(a1 + 48) = v2;
  *(a1 + 56) = v4;
  return result;
}

uint64_t sub_1BDA4B3D8(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1BE04D214();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 > 2)
  {
    switch(a1)
    {
      case 3:
        v10 = &off_1F3BCD4F8;
        v11 = &type metadata for DoubleClickHomeAnimationModel;
        goto LABEL_17;
      case 4:
        v10 = &off_1F3BCD538;
        v11 = &type metadata for ExpressTransitAnimationModel;
        goto LABEL_17;
      case 5:
        v10 = &off_1F3BCD578;
        v11 = &type metadata for ExpressTransitDynamicIslandAnimationModel;
        goto LABEL_17;
    }

    goto LABEL_11;
  }

  if (a1)
  {
    if (a1 == 1)
    {
      v10 = &off_1F3BCD478;
      v11 = &type metadata for DefaultCardAnimationModel;
      goto LABEL_17;
    }

    if (a1 == 2)
    {
      v10 = &off_1F3BCD4B8;
      v11 = &type metadata for DoubleClickSideAnimationModel;
LABEL_17:
      *(v2 + 16) = v11;
      *(v2 + 24) = v10;
      return v2;
    }

LABEL_11:
    v12 = v7;
    sub_1BE04D134();
    v13 = sub_1BE04D204();
    v14 = sub_1BE052C34();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v21 = a1;
      v22 = v16;
      *v15 = 136315138;
      type metadata accessor for PKEducationalAnimation(0);
      v17 = sub_1BE0524A4();
      v19 = sub_1BD123690(v17, v18, &v22);

      *(v15 + 4) = v19;
      _os_log_impl(&dword_1BD026000, v13, v14, "Unknown educational animation %s", v15, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v16);
      MEMORY[0x1BFB45F20](v16, -1, -1);
      MEMORY[0x1BFB45F20](v15, -1, -1);
    }

    (*(v5 + 8))(v9, v12);
  }

  type metadata accessor for EducationalAnimationFactory();
  swift_deallocPartialClassInstance();
  return 0;
}

void *sub_1BDA4B648()
{
  v1 = sub_1BE04D214();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1, v3);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF70);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v9 = &v24 - v8;
  v10 = sub_1BE04AA64();
  v11 = *(v10 - 8);
  v13 = MEMORY[0x1EEE9AC00](v10, v12);
  v15 = &v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(*(v0 + 24) + 56))(v13);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_1BD0DE53C(v9, &unk_1EBD3CF70);
  }

  else
  {
    (*(v11 + 32))(v15, v9, v10);
    v16 = sub_1BDA4B980(v15);
    if (v16)
    {
      v17 = v16;
      v18 = [v16 rootLayer];
      if (v18)
      {
        v19 = v18;
        [v18 setGeometryFlipped_];

        (*(v11 + 8))(v15, v10);
        return v17;
      }

      (*(v11 + 8))(v15, v10);
    }

    else
    {
      (*(v11 + 8))(v15, v10);
    }
  }

  sub_1BE04D134();
  v21 = sub_1BE04D204();
  v22 = sub_1BE052C34();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    *v23 = 0;
    _os_log_impl(&dword_1BD026000, v21, v22, "Failed to create educational animation", v23, 2u);
    MEMORY[0x1BFB45F20](v23, -1, -1);
  }

  (*(v2 + 8))(v5, v1);
  return 0;
}

id sub_1BDA4B980(uint64_t a1)
{
  v2 = sub_1BE04D214();
  MEMORY[0x1EEE9AC00](v2, v3);
  v4 = sub_1BE04AA64();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BD0E5E8C(0, &qword_1EBD5C958);
  (*(v5 + 16))(v8, a1, v4);
  v9 = sub_1BE052434();
  return sub_1BDA4BC34(v8, v9, v10, 0);
}

id sub_1BDA4BC34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v17[1] = *MEMORY[0x1E69E9840];
  v6 = sub_1BE04A9C4();
  v7 = sub_1BE052404();

  if (a4)
  {
    v8 = sub_1BE052224();
  }

  else
  {
    v8 = 0;
  }

  v17[0] = 0;
  v9 = [swift_getObjCClassFromMetadata() packageWithContentsOfURL:v6 type:v7 options:v8 error:v17];

  v10 = v17[0];
  if (v9)
  {
    v11 = sub_1BE04AA64();
    v12 = *(*(v11 - 8) + 8);
    v13 = v10;
    v12(a1, v11);
  }

  else
  {
    v14 = v17[0];
    sub_1BE04A854();

    swift_willThrow();
    v15 = sub_1BE04AA64();
    (*(*(v15 - 8) + 8))(a1, v15);
  }

  return v9;
}

uint64_t sub_1BDA4BDFC(void *a1)
{
  v3 = sub_1BE04D214();
  v4 = *(v3 - 8);
  v6 = MEMORY[0x1EEE9AC00](v3, v5);
  v8 = &v48 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v1 + 16);
  v9 = *(v1 + 24);
  v11 = *(v9 + 48);
  v12 = v11(v10, v9, v6);
  if (v12)
  {
    v13 = v12;
    v14 = (*(v9 + 8))(v10, v9);
    sub_1BDA4C468(v14, v13, a1, &selRef_setBackgroundColor_);

    v15 = (*(v9 + 16))(v10, v9);
    sub_1BDA4C468(v15, v13, a1, &selRef_setBorderColor_);

    v16 = (*(v9 + 24))(v10, v9);
    sub_1BDA4C80C(v16, v13, a1, &selRef_setFillColor_);

    v17 = (*(v9 + 32))(v10, v9);
    sub_1BDA4C80C(v17, v13, a1, &selRef_setStrokeColor_);

    result = (*(v9 + 40))(v10, v9);
    if (!result)
    {
      return result;
    }

    v19 = result;
    v20 = a1;
    v21 = (v11)(v10, v9);
    if (v21)
    {
      v22 = v21;
      v23 = *(v19 + 16);
      if (v23)
      {
        v50 = v19;
        v51 = a1;
        for (i = v19 + 32; ; i += 40)
        {
          v25 = *i;
          v26 = *(i + 1);
          v52 = *(i + 24);
          sub_1BE048C84();
          sub_1BE048C84();
          v27 = sub_1BE052404();
          v28 = [v20 publishedObjectWithName_];

          if (v28)
          {
            sub_1BE053624();
            swift_unknownObjectRelease();
          }

          else
          {
            v54 = 0u;
            v55 = 0u;
          }

          v56[0] = v54;
          v56[1] = v55;
          if (*(&v55 + 1))
          {
            sub_1BD0E5E8C(0, &qword_1EBD558E0);
            if (swift_dynamicCast())
            {
              v29 = v53;
              v30 = sub_1BE052404();
              v31 = [v29 animationForKey_];

              if (v31 && ([v31 copy], v31, sub_1BE053624(), swift_unknownObjectRelease(), sub_1BD0E5E8C(0, &qword_1EBD5C950), (swift_dynamicCast() & 1) != 0))
              {
                v32 = v54;
                v20 = v51;
                if (!*(v22 + 16) || (v33 = sub_1BD1495F0(v25), (v34 & 1) == 0) || !*(v22 + 16))
                {

                  goto LABEL_7;
                }

                v35 = *(*(v22 + 56) + 8 * v33);
                v36 = sub_1BD1495F0(v26);
                if (v37)
                {
                  v38 = *(*(v22 + 56) + 8 * v36);
                  v39 = v35;
                  v49 = v39;
                  v40 = v38;
                  v41 = [v39 CGColor];
                  [v32 setFromValue_];

                  v42 = [v40 CGColor];
                  [v32 setToValue_];

                  v43 = sub_1BE052404();
                  [v29 removeAnimationForKey_];

                  v44 = sub_1BE052404();

                  [v29 addAnimation:v32 forKey:v44];

LABEL_23:
                  v20 = v51;
                  goto LABEL_7;
                }
              }

              else
              {
              }

              goto LABEL_23;
            }
          }

          else
          {

            sub_1BD0DE53C(v56, &qword_1EBD3EC90);
          }

LABEL_7:
          if (!--v23)
          {
          }
        }
      }
    }
  }

  else
  {
    sub_1BE04D134();
    v45 = sub_1BE04D204();
    v46 = sub_1BE052C34();
    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      *v47 = 0;
      _os_log_impl(&dword_1BD026000, v45, v46, "Failed to read colors for educational animation", v47, 2u);
      MEMORY[0x1BFB45F20](v47, -1, -1);
    }

    return (*(v4 + 8))(v8, v3);
  }
}

void sub_1BDA4C468(uint64_t a1, uint64_t a2, void *a3, SEL *a4)
{
  v41 = a4;
  v38 = sub_1BE04D214();
  MEMORY[0x1EEE9AC00](v38, v7);
  v11 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v40 = *(a1 + 16);
    if (v40)
    {
      v12 = 0;
      v39 = a1 + 32;
      v37 = (v8 + 8);
      *&v10 = 136315138;
      v35 = v10;
      v36 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
      v34 = a2;
      do
      {
        v13 = v39 + 16 * v12;
        v14 = *v13;
        v15 = *(v13 + 8);
        if (*(a2 + 16) && (v16 = sub_1BD1495F0(v14), (v17 & 1) != 0))
        {
          v18 = *(v15 + 16);
          if (v18)
          {
            v19 = *(*(a2 + 56) + 8 * v16);
            sub_1BE048C84();
            v20 = v19;
            v21 = v15 + 40;
            do
            {
              sub_1BE048C84();
              v22 = sub_1BE052404();

              v23 = [a3 publishedObjectWithName_];

              if (v23)
              {
                sub_1BE053624();
                swift_unknownObjectRelease();
              }

              else
              {
                v43 = 0u;
                v44 = 0u;
              }

              v45[0] = v43;
              v45[1] = v44;
              if (*(&v44 + 1))
              {
                sub_1BD0E5E8C(0, &qword_1EBD558E0);
                if (swift_dynamicCast())
                {
                  v24 = v42;
                  v25 = [v20 CGColor];
                  [v24 *v41];
                }
              }

              else
              {
                sub_1BD0DE53C(v45, &qword_1EBD3EC90);
              }

              v21 += 16;
              --v18;
            }

            while (v18);

            a2 = v34;
            v11 = v36;
          }
        }

        else
        {
          sub_1BE048C84();
          sub_1BE04D134();
          v26 = sub_1BE04D204();
          v27 = sub_1BE052C34();

          if (os_log_type_enabled(v26, v27))
          {
            v28 = swift_slowAlloc();
            v29 = swift_slowAlloc();
            *&v45[0] = v29;
            *v28 = v35;
            LOBYTE(v43) = v14;
            v30 = sub_1BE0524A4();
            v32 = sub_1BD123690(v30, v31, v45);

            *(v28 + 4) = v32;
            v11 = v36;
            _os_log_impl(&dword_1BD026000, v26, v27, "Color not mapped for educational animation color group %s", v28, 0xCu);
            __swift_destroy_boxed_opaque_existential_0(v29);
            MEMORY[0x1BFB45F20](v29, -1, -1);
            MEMORY[0x1BFB45F20](v28, -1, -1);
          }

          (*v37)(v11, v38);
        }

        ++v12;
      }

      while (v12 != v40);
    }
  }
}

void sub_1BDA4C80C(uint64_t a1, uint64_t a2, void *a3, SEL *a4)
{
  v43 = a4;
  v39 = sub_1BE04D214();
  MEMORY[0x1EEE9AC00](v39, v7);
  v11 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v42 = *(a1 + 16);
    if (v42)
    {
      v12 = 0;
      v40 = a1 + 32;
      v38 = (v8 + 8);
      *&v10 = 136315138;
      v37 = v10;
      v13 = &selRef_playerItemWithAsset_;
      v41 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
      v36 = a2;
      do
      {
        v14 = v40 + 16 * v12;
        v15 = *v14;
        v16 = *(v14 + 8);
        if (*(a2 + 16) && (v17 = sub_1BD1495F0(v15), (v18 & 1) != 0))
        {
          v19 = *(v16 + 16);
          if (v19)
          {
            v20 = *(*(a2 + 56) + 8 * v17);
            sub_1BE048C84();
            v21 = v20;
            v22 = v16 + 40;
            do
            {
              sub_1BE048C84();
              v23 = sub_1BE052404();

              v24 = [a3 v13[404]];

              if (v24)
              {
                sub_1BE053624();
                swift_unknownObjectRelease();
              }

              else
              {
                v45 = 0u;
                v46 = 0u;
              }

              v47[0] = v45;
              v47[1] = v46;
              if (*(&v46 + 1))
              {
                sub_1BD0E5E8C(0, &qword_1EBD558E0);
                if (swift_dynamicCast())
                {
                  v25 = v44;
                  v26 = [v21 CGColor];
                  objc_opt_self();
                  v27 = swift_dynamicCastObjCClass();
                  if (v27)
                  {
                    [v27 *v43];
                  }

                  v13 = &selRef_playerItemWithAsset_;
                }
              }

              else
              {
                sub_1BD0DE53C(v47, &qword_1EBD3EC90);
              }

              v22 += 16;
              --v19;
            }

            while (v19);

            a2 = v36;
          }
        }

        else
        {
          sub_1BE048C84();
          sub_1BE04D134();
          v28 = sub_1BE04D204();
          v29 = sub_1BE052C34();

          if (os_log_type_enabled(v28, v29))
          {
            v30 = swift_slowAlloc();
            v31 = swift_slowAlloc();
            *&v47[0] = v31;
            *v30 = v37;
            LOBYTE(v45) = v15;
            v32 = sub_1BE0524A4();
            v34 = sub_1BD123690(v32, v33, v47);

            *(v30 + 4) = v34;
            _os_log_impl(&dword_1BD026000, v28, v29, "Color not mapped for educational animation color group %s", v30, 0xCu);
            __swift_destroy_boxed_opaque_existential_0(v31);
            MEMORY[0x1BFB45F20](v31, -1, -1);
            MEMORY[0x1BFB45F20](v30, -1, -1);
          }

          (*v38)(v11, v39);
          v13 = &selRef_playerItemWithAsset_;
        }

        ++v12;
        v11 = v41;
      }

      while (v12 != v42);
    }
  }
}

id sub_1BDA4CC58@<X0>(uint64_t a1@<X8>)
{
  result = PKPassKitUIBundle();
  if (result)
  {
    v3 = result;
    v4 = sub_1BE052404();
    v5 = sub_1BE052404();
    v6 = [v3 URLForResource:v4 withExtension:v5];

    if (v6)
    {
      sub_1BE04A9F4();

      v7 = 0;
    }

    else
    {
      v7 = 1;
    }

    v8 = sub_1BE04AA64();
    v9 = *(*(v8 - 8) + 56);

    return v9(a1, v7, 1, v8);
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1BDA4CDBC@<X0>(uint64_t a1@<X8>)
{
  result = PKPassKitUIBundle();
  if (result)
  {
    v3 = result;
    v4 = sub_1BE052404();
    v5 = sub_1BE052404();
    v6 = [v3 URLForResource:v4 withExtension:v5];

    if (v6)
    {
      sub_1BE04A9F4();

      v7 = 0;
    }

    else
    {
      v7 = 1;
    }

    v8 = sub_1BE04AA64();
    v9 = *(*(v8 - 8) + 56);

    return v9(a1, v7, 1, v8);
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1BDA4CEE8@<X0>(uint64_t a1@<X8>)
{
  result = PKPassKitUIBundle();
  if (result)
  {
    v3 = result;
    v4 = sub_1BE052404();
    v5 = sub_1BE052404();
    v6 = [v3 URLForResource:v4 withExtension:v5];

    if (v6)
    {
      sub_1BE04A9F4();

      v7 = 0;
    }

    else
    {
      v7 = 1;
    }

    v8 = sub_1BE04AA64();
    v9 = *(*(v8 - 8) + 56);

    return v9(a1, v7, 1, v8);
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1BDA4D044@<X0>(uint64_t a1@<X8>)
{
  result = PKPassKitUIBundle();
  if (result)
  {
    v3 = result;
    v4 = sub_1BE052404();
    v5 = sub_1BE052404();
    v6 = [v3 URLForResource:v4 withExtension:v5];

    if (v6)
    {
      sub_1BE04A9F4();

      v7 = 0;
    }

    else
    {
      v7 = 1;
    }

    v8 = sub_1BE04AA64();
    v9 = *(*(v8 - 8) + 56);

    return v9(a1, v7, 1, v8);
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1BDA4D194(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  sub_1BE048964();
  v4 = a2;
  v5 = v3();

  return v5;
}

id sub_1BDA4D1FC()
{
  result = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithWhite:1.0 alpha:1.0];
  qword_1EBD5C8D0 = result;
  return result;
}

id sub_1BDA4D238()
{
  result = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:0.898039216 green:0.898039216 blue:0.917647059 alpha:1.0];
  qword_1EBD5C8D8 = result;
  return result;
}

id sub_1BDA4D284()
{
  result = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:0.819607843 green:0.819607843 blue:0.839215686 alpha:1.0];
  qword_1EBD5C8E0 = result;
  return result;
}

id sub_1BDA4D2D0()
{
  result = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:0.780392157 green:0.780392157 blue:0.8 alpha:1.0];
  qword_1EBD5C8E8 = result;
  return result;
}

id sub_1BDA4D31C()
{
  result = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:0.709803922 green:0.705882353 blue:0.721568627 alpha:1.0];
  qword_1EBD5C8F0 = result;
  return result;
}

id sub_1BDA4D36C()
{
  result = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:0.682352941 green:0.682352941 blue:0.698039216 alpha:1.0];
  qword_1EBD5C8F8 = result;
  return result;
}

id sub_1BDA4D3B8()
{
  result = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:0.556862745 green:0.556862745 blue:0.576470588 alpha:1.0];
  qword_1EBD5C900 = result;
  return result;
}

id sub_1BDA4D404()
{
  result = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:0.525490196 green:0.525490196 blue:0.537254902 alpha:1.0];
  qword_1EBD5C908 = result;
  return result;
}

id sub_1BDA4D450()
{
  result = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:0.498039216 green:0.498039216 blue:0.525490196 alpha:1.0];
  qword_1EBD5C910 = result;
  return result;
}

id sub_1BDA4D4A0()
{
  result = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:0.388235294 green:0.388235294 blue:0.4 alpha:1.0];
  qword_1EBD5C918 = result;
  return result;
}

id sub_1BDA4D4EC()
{
  result = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:0.31372549 green:0.305882353 blue:0.321568627 alpha:1.0];
  qword_1EBD5C920 = result;
  return result;
}

id sub_1BDA4D53C()
{
  result = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:0.282352941 green:0.282352941 blue:0.290196078 alpha:1.0];
  qword_1EBD5C928 = result;
  return result;
}

id sub_1BDA4D588()
{
  result = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:0.250980392 green:0.243137255 blue:0.258823529 alpha:1.0];
  qword_1EBD5C930 = result;
  return result;
}

id sub_1BDA4D5E0()
{
  result = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:0.22745098 green:0.22745098 blue:0.235294118 alpha:1.0];
  qword_1EBD5C938 = result;
  return result;
}

id sub_1BDA4D630()
{
  result = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:0.17254902 green:0.17254902 blue:0.180392157 alpha:1.0];
  qword_1EBD5C940 = result;
  return result;
}

id sub_1BDA4D67C()
{
  result = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:0.109803922 green:0.109803922 blue:0.117647059 alpha:1.0];
  qword_1EBD5C948 = result;
  return result;
}

unint64_t sub_1BDA4D734()
{
  result = qword_1EBD5C960;
  if (!qword_1EBD5C960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD5C960);
  }

  return result;
}

unint64_t sub_1BDA4D788()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5C968);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BE0BA740;
  *(inited + 32) = 0;
  if (qword_1EBD37060 != -1)
  {
    swift_once();
  }

  v1 = qword_1EBD5C928;
  if (qword_1EBD37020 != -1)
  {
    swift_once();
  }

  v2 = qword_1EBD5C8E8;
  v3 = objc_allocWithZone(MEMORY[0x1E69DC888]);
  v4 = swift_allocObject();
  *(v4 + 16) = v1;
  *(v4 + 24) = v2;
  v49 = sub_1BDA4F960;
  v50 = v4;
  aBlock = MEMORY[0x1E69E9820];
  v46 = 1107296256;
  v47 = sub_1BDA4D194;
  v48 = &block_descriptor_194;
  v5 = _Block_copy(&aBlock);
  v6 = v1;
  v7 = v2;

  v8 = [v3 initWithDynamicProvider_];
  _Block_release(v5);
  *(inited + 40) = v8;
  *(inited + 48) = 1;
  if (qword_1EBD37078 != -1)
  {
    swift_once();
  }

  v9 = qword_1EBD5C940;
  v10 = objc_allocWithZone(MEMORY[0x1E69DC888]);
  v11 = swift_allocObject();
  *(v11 + 16) = v9;
  *(v11 + 24) = v6;
  v49 = sub_1BDA4F960;
  v50 = v11;
  aBlock = MEMORY[0x1E69E9820];
  v46 = 1107296256;
  v47 = sub_1BDA4D194;
  v48 = &block_descriptor_201;
  v12 = _Block_copy(&aBlock);
  v13 = v6;
  v14 = v9;

  v15 = [v10 initWithDynamicProvider_];
  _Block_release(v12);
  *(inited + 56) = v15;
  *(inited + 64) = 2;
  if (qword_1EBD37050 != -1)
  {
    swift_once();
  }

  v16 = qword_1EBD5C918;
  if (qword_1EBD37038 != -1)
  {
    swift_once();
  }

  v17 = qword_1EBD5C900;
  v18 = objc_allocWithZone(MEMORY[0x1E69DC888]);
  v19 = swift_allocObject();
  *(v19 + 16) = v16;
  *(v19 + 24) = v17;
  v49 = sub_1BDA4F960;
  v50 = v19;
  aBlock = MEMORY[0x1E69E9820];
  v46 = 1107296256;
  v47 = sub_1BDA4D194;
  v48 = &block_descriptor_208_0;
  v20 = _Block_copy(&aBlock);
  v21 = v16;
  v22 = v17;

  v23 = [v18 initWithDynamicProvider_];
  _Block_release(v20);
  *(inited + 72) = v23;
  *(inited + 80) = 3;
  v24 = objc_allocWithZone(MEMORY[0x1E69DC888]);
  v25 = swift_allocObject();
  *(v25 + 16) = v13;
  *(v25 + 24) = v22;
  v49 = sub_1BDA4F960;
  v50 = v25;
  aBlock = MEMORY[0x1E69E9820];
  v46 = 1107296256;
  v47 = sub_1BDA4D194;
  v48 = &block_descriptor_215_1;
  v26 = _Block_copy(&aBlock);
  v27 = v13;
  v28 = v22;

  v29 = [v24 initWithDynamicProvider_];
  _Block_release(v26);
  *(inited + 88) = v29;
  *(inited + 96) = 4;
  if (qword_1EBD37028 != -1)
  {
    swift_once();
  }

  v30 = qword_1EBD5C8F0;
  v31 = objc_allocWithZone(MEMORY[0x1E69DC888]);
  v32 = swift_allocObject();
  *(v32 + 16) = v27;
  *(v32 + 24) = v30;
  v49 = sub_1BDA4F960;
  v50 = v32;
  aBlock = MEMORY[0x1E69E9820];
  v46 = 1107296256;
  v47 = sub_1BDA4D194;
  v48 = &block_descriptor_222_0;
  v33 = _Block_copy(&aBlock);
  v34 = v27;
  v35 = v30;

  v36 = [v31 initWithDynamicProvider_];
  _Block_release(v33);
  *(inited + 104) = v36;
  *(inited + 112) = 5;
  if (qword_1EBD37008 != -1)
  {
    swift_once();
  }

  v37 = qword_1EBD5C8D0;
  v38 = objc_allocWithZone(MEMORY[0x1E69DC888]);
  v39 = swift_allocObject();
  *(v39 + 16) = v37;
  *(v39 + 24) = v37;
  v49 = sub_1BDA4F960;
  v50 = v39;
  aBlock = MEMORY[0x1E69E9820];
  v46 = 1107296256;
  v47 = sub_1BDA4D194;
  v48 = &block_descriptor_229;
  v40 = _Block_copy(&aBlock);
  v41 = v37;

  v42 = [v38 initWithDynamicProvider_];
  _Block_release(v40);
  *(inited + 120) = v42;
  v43 = sub_1BD1AC5F0(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5C970);
  swift_arrayDestroy();
  return v43;
}

unint64_t sub_1BDA4DE44()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5C968);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BE0BA740;
  *(inited + 32) = 0;
  if (qword_1EBD37070 != -1)
  {
    swift_once();
  }

  v1 = qword_1EBD5C938;
  if (qword_1EBD37030 != -1)
  {
    swift_once();
  }

  v2 = qword_1EBD5C8F8;
  v3 = objc_allocWithZone(MEMORY[0x1E69DC888]);
  v4 = swift_allocObject();
  *(v4 + 16) = v1;
  *(v4 + 24) = v2;
  v51 = sub_1BDA4F960;
  v52 = v4;
  aBlock = MEMORY[0x1E69E9820];
  v48 = 1107296256;
  v49 = sub_1BDA4D194;
  v50 = &block_descriptor_59_1;
  v5 = _Block_copy(&aBlock);
  v46 = v1;
  v6 = v2;

  v7 = [v3 initWithDynamicProvider_];
  _Block_release(v5);
  *(inited + 40) = v7;
  *(inited + 48) = 1;
  if (qword_1EBD37038 != -1)
  {
    swift_once();
  }

  v8 = qword_1EBD5C900;
  if (qword_1EBD37018 != -1)
  {
    swift_once();
  }

  v9 = qword_1EBD5C8E0;
  v10 = objc_allocWithZone(MEMORY[0x1E69DC888]);
  v11 = swift_allocObject();
  *(v11 + 16) = v8;
  *(v11 + 24) = v9;
  v51 = sub_1BDA4F960;
  v52 = v11;
  aBlock = MEMORY[0x1E69E9820];
  v48 = 1107296256;
  v49 = sub_1BDA4D194;
  v50 = &block_descriptor_66_2;
  v12 = _Block_copy(&aBlock);
  v13 = v8;
  v14 = v9;

  v15 = [v10 initWithDynamicProvider_];
  _Block_release(v12);
  *(inited + 56) = v15;
  *(inited + 64) = 2;
  v16 = objc_allocWithZone(MEMORY[0x1E69DC888]);
  v17 = swift_allocObject();
  *(v17 + 16) = v13;
  *(v17 + 24) = v6;
  v51 = sub_1BDA4F960;
  v52 = v17;
  aBlock = MEMORY[0x1E69E9820];
  v48 = 1107296256;
  v49 = sub_1BDA4D194;
  v50 = &block_descriptor_73_1;
  v18 = _Block_copy(&aBlock);
  v19 = v6;
  v20 = v13;

  v21 = [v16 initWithDynamicProvider_];
  _Block_release(v18);
  *(inited + 72) = v21;
  *(inited + 80) = 3;
  if (qword_1EBD37078 != -1)
  {
    swift_once();
  }

  v22 = qword_1EBD5C940;
  v23 = objc_allocWithZone(MEMORY[0x1E69DC888]);
  v24 = swift_allocObject();
  *(v24 + 16) = v22;
  *(v24 + 24) = v20;
  v51 = sub_1BDA4F960;
  v52 = v24;
  aBlock = MEMORY[0x1E69E9820];
  v48 = 1107296256;
  v49 = sub_1BDA4D194;
  v50 = &block_descriptor_80_1;
  v25 = _Block_copy(&aBlock);
  v26 = v20;
  v27 = v22;

  v28 = [v23 initWithDynamicProvider_];
  _Block_release(v25);
  *(inited + 88) = v28;
  *(inited + 96) = 4;
  if (qword_1EBD37080 != -1)
  {
    swift_once();
  }

  v29 = qword_1EBD5C948;
  v30 = objc_allocWithZone(MEMORY[0x1E69DC888]);
  v31 = swift_allocObject();
  *(v31 + 16) = v29;
  *(v31 + 24) = v46;
  v51 = sub_1BDA4F960;
  v52 = v31;
  aBlock = MEMORY[0x1E69E9820];
  v48 = 1107296256;
  v49 = sub_1BDA4D194;
  v50 = &block_descriptor_87_2;
  v32 = _Block_copy(&aBlock);
  v33 = v46;
  v34 = v29;

  v35 = [v30 initWithDynamicProvider_];
  _Block_release(v32);
  *(inited + 104) = v35;
  *(inited + 112) = 5;
  if (qword_1EBD37050 != -1)
  {
    swift_once();
  }

  v36 = qword_1EBD5C918;
  if (qword_1EBD37010 != -1)
  {
    swift_once();
  }

  v37 = qword_1EBD5C8D8;
  v38 = objc_allocWithZone(MEMORY[0x1E69DC888]);
  v39 = swift_allocObject();
  *(v39 + 16) = v36;
  *(v39 + 24) = v37;
  v51 = sub_1BDA4F960;
  v52 = v39;
  aBlock = MEMORY[0x1E69E9820];
  v48 = 1107296256;
  v49 = sub_1BDA4D194;
  v50 = &block_descriptor_94_2;
  v40 = _Block_copy(&aBlock);
  v41 = v36;
  v42 = v37;

  v43 = [v38 initWithDynamicProvider_];
  _Block_release(v40);
  *(inited + 120) = v43;
  v44 = sub_1BD1AC5F0(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5C970);
  swift_arrayDestroy();
  return v44;
}

unint64_t sub_1BDA4E544()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5C968);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BE0BA730;
  *(inited + 32) = 0;
  if (qword_1EBD37068 != -1)
  {
    swift_once();
  }

  v1 = qword_1EBD5C930;
  if (qword_1EBD37028 != -1)
  {
    swift_once();
  }

  v2 = qword_1EBD5C8F0;
  v3 = objc_allocWithZone(MEMORY[0x1E69DC888]);
  v4 = swift_allocObject();
  *(v4 + 16) = v1;
  *(v4 + 24) = v2;
  v45 = sub_1BDA4F960;
  v46 = v4;
  aBlock = MEMORY[0x1E69E9820];
  v42 = 1107296256;
  v43 = sub_1BDA4D194;
  v44 = &block_descriptor_111_2;
  v5 = _Block_copy(&aBlock);
  v6 = v1;
  v7 = v2;

  v8 = [v3 initWithDynamicProvider_];
  _Block_release(v5);
  *(inited + 40) = v8;
  *(inited + 48) = 1;
  if (qword_1EBD37040 != -1)
  {
    swift_once();
  }

  v9 = qword_1EBD5C908;
  if (qword_1EBD37038 != -1)
  {
    swift_once();
  }

  v10 = qword_1EBD5C900;
  v11 = objc_allocWithZone(MEMORY[0x1E69DC888]);
  v12 = swift_allocObject();
  *(v12 + 16) = v9;
  *(v12 + 24) = v10;
  v45 = sub_1BDA4F960;
  v46 = v12;
  aBlock = MEMORY[0x1E69E9820];
  v42 = 1107296256;
  v43 = sub_1BDA4D194;
  v44 = &block_descriptor_118_1;
  v13 = _Block_copy(&aBlock);
  v40 = v9;
  v14 = v10;

  v15 = [v11 initWithDynamicProvider_];
  _Block_release(v13);
  *(inited + 56) = v15;
  *(inited + 64) = 2;
  if (qword_1EBD37060 != -1)
  {
    swift_once();
  }

  v16 = qword_1EBD5C928;
  v17 = objc_allocWithZone(MEMORY[0x1E69DC888]);
  v18 = swift_allocObject();
  *(v18 + 16) = v16;
  *(v18 + 24) = v7;
  v45 = sub_1BDA4F960;
  v46 = v18;
  aBlock = MEMORY[0x1E69E9820];
  v42 = 1107296256;
  v43 = sub_1BDA4D194;
  v44 = &block_descriptor_125_3;
  v19 = _Block_copy(&aBlock);
  v20 = v7;
  v21 = v16;

  v22 = [v17 initWithDynamicProvider_];
  _Block_release(v19);
  *(inited + 72) = v22;
  *(inited + 80) = 3;
  if (qword_1EBD37070 != -1)
  {
    swift_once();
  }

  v23 = qword_1EBD5C938;
  if (qword_1EBD37030 != -1)
  {
    swift_once();
  }

  v24 = qword_1EBD5C8F8;
  v25 = objc_allocWithZone(MEMORY[0x1E69DC888]);
  v26 = swift_allocObject();
  *(v26 + 16) = v23;
  *(v26 + 24) = v24;
  v45 = sub_1BDA4F960;
  v46 = v26;
  aBlock = MEMORY[0x1E69E9820];
  v42 = 1107296256;
  v43 = sub_1BDA4D194;
  v44 = &block_descriptor_132_3;
  v27 = _Block_copy(&aBlock);
  v28 = v23;
  v29 = v24;

  v30 = [v25 initWithDynamicProvider_];
  _Block_release(v27);
  *(inited + 88) = v30;
  *(inited + 96) = 4;
  if (qword_1EBD37058 != -1)
  {
    swift_once();
  }

  v31 = qword_1EBD5C920;
  v32 = objc_allocWithZone(MEMORY[0x1E69DC888]);
  v33 = swift_allocObject();
  *(v33 + 16) = v31;
  *(v33 + 24) = v40;
  v45 = sub_1BDA4F960;
  v46 = v33;
  aBlock = MEMORY[0x1E69E9820];
  v42 = 1107296256;
  v43 = sub_1BDA4D194;
  v44 = &block_descriptor_139_1;
  v34 = _Block_copy(&aBlock);
  v35 = v40;
  v36 = v31;

  v37 = [v32 initWithDynamicProvider_];
  _Block_release(v34);
  *(inited + 104) = v37;
  v38 = sub_1BD1AC5F0(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5C970);
  swift_arrayDestroy();
  return v38;
}

unint64_t sub_1BDA4EB78()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5C968);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BE0BA730;
  *(inited + 32) = 0;
  if (qword_1EBD37050 != -1)
  {
    swift_once();
  }

  v1 = qword_1EBD5C918;
  if (qword_1EBD37020 != -1)
  {
    swift_once();
  }

  v2 = qword_1EBD5C8E8;
  v3 = objc_allocWithZone(MEMORY[0x1E69DC888]);
  v4 = swift_allocObject();
  *(v4 + 16) = v1;
  *(v4 + 24) = v2;
  v45 = sub_1BDA4F960;
  v46 = v4;
  aBlock = MEMORY[0x1E69E9820];
  v42 = 1107296256;
  v43 = sub_1BDA4D194;
  v44 = &block_descriptor_152_0;
  v5 = _Block_copy(&aBlock);
  v6 = v1;
  v7 = v2;

  v8 = [v3 initWithDynamicProvider_];
  _Block_release(v5);
  *(inited + 40) = v8;
  *(inited + 48) = 1;
  if (qword_1EBD37078 != -1)
  {
    swift_once();
  }

  v9 = qword_1EBD5C940;
  if (qword_1EBD37038 != -1)
  {
    swift_once();
  }

  v10 = qword_1EBD5C900;
  v11 = objc_allocWithZone(MEMORY[0x1E69DC888]);
  v12 = swift_allocObject();
  *(v12 + 16) = v9;
  *(v12 + 24) = v10;
  v45 = sub_1BDA4F960;
  v46 = v12;
  aBlock = MEMORY[0x1E69E9820];
  v42 = 1107296256;
  v43 = sub_1BDA4D194;
  v44 = &block_descriptor_159;
  v13 = _Block_copy(&aBlock);
  v14 = v9;
  v15 = v10;

  v16 = [v11 initWithDynamicProvider_];
  _Block_release(v13);
  *(inited + 56) = v16;
  *(inited + 64) = 2;
  if (qword_1EBD37060 != -1)
  {
    swift_once();
  }

  v17 = qword_1EBD5C928;
  if (qword_1EBD37028 != -1)
  {
    swift_once();
  }

  v18 = qword_1EBD5C8F0;
  v19 = objc_allocWithZone(MEMORY[0x1E69DC888]);
  v20 = swift_allocObject();
  *(v20 + 16) = v17;
  *(v20 + 24) = v18;
  v45 = sub_1BDA4F960;
  v46 = v20;
  aBlock = MEMORY[0x1E69E9820];
  v42 = 1107296256;
  v43 = sub_1BDA4D194;
  v44 = &block_descriptor_166_2;
  v21 = _Block_copy(&aBlock);
  v22 = v17;
  v23 = v18;

  v24 = [v19 initWithDynamicProvider_];
  _Block_release(v21);
  *(inited + 72) = v24;
  *(inited + 80) = 3;
  if (qword_1EBD37008 != -1)
  {
    swift_once();
  }

  v25 = qword_1EBD5C8D0;
  v26 = objc_allocWithZone(MEMORY[0x1E69DC888]);
  v27 = swift_allocObject();
  *(v27 + 16) = v25;
  *(v27 + 24) = v22;
  v45 = sub_1BDA4F960;
  v46 = v27;
  aBlock = MEMORY[0x1E69E9820];
  v42 = 1107296256;
  v43 = sub_1BDA4D194;
  v44 = &block_descriptor_173_1;
  v28 = _Block_copy(&aBlock);
  v29 = v22;
  v30 = v25;

  v31 = [v26 initWithDynamicProvider_];
  _Block_release(v28);
  *(inited + 88) = v31;
  *(inited + 96) = 4;
  if (qword_1EBD37048 != -1)
  {
    swift_once();
  }

  v32 = qword_1EBD5C910;
  v33 = objc_allocWithZone(MEMORY[0x1E69DC888]);
  v34 = swift_allocObject();
  *(v34 + 16) = v15;
  *(v34 + 24) = v32;
  v45 = sub_1BDA4F960;
  v46 = v34;
  aBlock = MEMORY[0x1E69E9820];
  v42 = 1107296256;
  v43 = sub_1BDA4D194;
  v44 = &block_descriptor_180;
  v35 = _Block_copy(&aBlock);
  v36 = v15;
  v37 = v32;

  v38 = [v33 initWithDynamicProvider_];
  _Block_release(v35);
  *(inited + 104) = v38;
  v39 = sub_1BD1AC5F0(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5C970);
  swift_arrayDestroy();
  return v39;
}

unint64_t sub_1BDA4F1B4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5C968);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BE0BA740;
  *(inited + 32) = 0;
  if (qword_1EBD37070 != -1)
  {
    swift_once();
  }

  v1 = qword_1EBD5C938;
  if (qword_1EBD37030 != -1)
  {
    swift_once();
  }

  v2 = qword_1EBD5C8F8;
  v3 = objc_allocWithZone(MEMORY[0x1E69DC888]);
  v4 = swift_allocObject();
  *(v4 + 16) = v1;
  *(v4 + 24) = v2;
  v51 = sub_1BDA4F8B0;
  v52 = v4;
  aBlock = MEMORY[0x1E69E9820];
  v48 = 1107296256;
  v49 = sub_1BDA4D194;
  v50 = &block_descriptor_244;
  v5 = _Block_copy(&aBlock);
  v46 = v1;
  v6 = v2;

  v7 = [v3 initWithDynamicProvider_];
  _Block_release(v5);
  *(inited + 40) = v7;
  *(inited + 48) = 1;
  if (qword_1EBD37038 != -1)
  {
    swift_once();
  }

  v8 = qword_1EBD5C900;
  if (qword_1EBD37018 != -1)
  {
    swift_once();
  }

  v9 = qword_1EBD5C8E0;
  v10 = objc_allocWithZone(MEMORY[0x1E69DC888]);
  v11 = swift_allocObject();
  *(v11 + 16) = v8;
  *(v11 + 24) = v9;
  v51 = sub_1BDA4F960;
  v52 = v11;
  aBlock = MEMORY[0x1E69E9820];
  v48 = 1107296256;
  v49 = sub_1BDA4D194;
  v50 = &block_descriptor_16_8;
  v12 = _Block_copy(&aBlock);
  v13 = v8;
  v14 = v9;

  v15 = [v10 initWithDynamicProvider_];
  _Block_release(v12);
  *(inited + 56) = v15;
  *(inited + 64) = 2;
  if (qword_1EBD37068 != -1)
  {
    swift_once();
  }

  v16 = qword_1EBD5C930;
  v17 = objc_allocWithZone(MEMORY[0x1E69DC888]);
  v18 = swift_allocObject();
  *(v18 + 16) = v16;
  *(v18 + 24) = v13;
  v51 = sub_1BDA4F960;
  v52 = v18;
  aBlock = MEMORY[0x1E69E9820];
  v48 = 1107296256;
  v49 = sub_1BDA4D194;
  v50 = &block_descriptor_23_9;
  v19 = _Block_copy(&aBlock);
  v20 = v13;
  v21 = v16;

  v22 = [v17 initWithDynamicProvider_];
  _Block_release(v19);
  *(inited + 72) = v22;
  *(inited + 80) = 3;
  if (qword_1EBD37080 != -1)
  {
    swift_once();
  }

  v23 = qword_1EBD5C948;
  v24 = objc_allocWithZone(MEMORY[0x1E69DC888]);
  v25 = swift_allocObject();
  *(v25 + 16) = v23;
  *(v25 + 24) = v46;
  v51 = sub_1BDA4F960;
  v52 = v25;
  aBlock = MEMORY[0x1E69E9820];
  v48 = 1107296256;
  v49 = sub_1BDA4D194;
  v50 = &block_descriptor_30_2;
  v26 = _Block_copy(&aBlock);
  v27 = v46;
  v28 = v23;

  v29 = [v24 &selRef:v26 initWithAccountEnhancedMerchant:? + 3];
  _Block_release(v26);
  *(inited + 88) = v29;
  *(inited + 96) = 4;
  v30 = objc_allocWithZone(MEMORY[0x1E69DC888]);
  v31 = swift_allocObject();
  *(v31 + 16) = v28;
  *(v31 + 24) = v27;
  v51 = sub_1BDA4F960;
  v52 = v31;
  aBlock = MEMORY[0x1E69E9820];
  v48 = 1107296256;
  v49 = sub_1BDA4D194;
  v50 = &block_descriptor_37_5;
  v32 = _Block_copy(&aBlock);
  v33 = v27;
  v34 = v28;

  v35 = [v30 &selRef:v32 initWithAccountEnhancedMerchant:? + 3];
  _Block_release(v32);
  *(inited + 104) = v35;
  *(inited + 112) = 5;
  if (qword_1EBD37050 != -1)
  {
    swift_once();
  }

  v36 = qword_1EBD5C918;
  if (qword_1EBD37010 != -1)
  {
    swift_once();
  }

  v37 = qword_1EBD5C8D8;
  v38 = objc_allocWithZone(MEMORY[0x1E69DC888]);
  v39 = swift_allocObject();
  *(v39 + 16) = v36;
  *(v39 + 24) = v37;
  v51 = sub_1BDA4F960;
  v52 = v39;
  aBlock = MEMORY[0x1E69E9820];
  v48 = 1107296256;
  v49 = sub_1BDA4D194;
  v50 = &block_descriptor_44_3;
  v40 = _Block_copy(&aBlock);
  v41 = v36;
  v42 = v37;

  v43 = [v38 &selRef:v40 initWithAccountEnhancedMerchant:? + 3];
  _Block_release(v40);
  *(inited + 120) = v43;
  v44 = sub_1BD1AC5F0(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5C970);
  swift_arrayDestroy();
  return v44;
}

id sub_1BDA4F8B0(void *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  if ([a1 userInterfaceStyle] == 2)
  {
    v4 = v2;
  }

  else
  {
    v4 = v3;
  }

  return v4;
}

uint64_t sub_1BDA4F9D0()
{
  sub_1BD0D4534(v0 + 16);
  sub_1BD0D4534(v0 + 24);

  return swift_deallocClassInstance();
}

id sub_1BDA4FA6C()
{
  v1 = v0;
  v2 = sub_1BE04D214();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BE04D084();
  v7 = sub_1BE04D204();
  v8 = sub_1BE052C54();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_1BD026000, v7, v8, "PaymentAuthorizationServiceDelegate - handleHostApplicationDidCancel", v9, 2u);
    MEMORY[0x1BFB45F20](v9, -1, -1);
  }

  (*(v3 + 8))(v6, v2);
  result = [*(v1 + OBJC_IVAR____TtC9PassKitUI35PaymentAuthorizationServiceDelegate_stateMachine) didCancel];
  v11 = *(v1 + OBJC_IVAR____TtC9PassKitUI35PaymentAuthorizationServiceDelegate_context);
  if (*(v11 + 32) == 1)
  {
    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      [result authorizationDidFinishWithError_];
      result = swift_unknownObjectRelease();
    }

    *(v11 + 32) = 0;
  }

  return result;
}

void sub_1BDA4FC50(void *a1, uint64_t a2)
{
  v4 = sub_1BE04D214();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = aBlock - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BE04D084();
  v9 = sub_1BE04D204();
  v10 = sub_1BE052C54();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&dword_1BD026000, v9, v10, "PaymentAuthorizationServiceDelegate - handleDismiss", v11, 2u);
    MEMORY[0x1BFB45F20](v11, -1, -1);
  }

  (*(v5 + 8))(v8, v4);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v13 = Strong;
    if (a1)
    {
      aBlock[4] = a1;
      aBlock[5] = a2;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1BD126964;
      aBlock[3] = &block_descriptor_245;
      a1 = _Block_copy(aBlock);
      sub_1BE048964();
    }

    [v13 dismissWithReason:2 completion:a1];
    swift_unknownObjectRelease();
    _Block_release(a1);
  }
}

void sub_1BDA4FF0C(uint64_t a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC9PassKitUI35PaymentAuthorizationServiceDelegate_stateMachine);
  v4 = [v3 model];
  if (!v4)
  {
    __break(1u);
    goto LABEL_11;
  }

  v5 = v4;
  v6 = [v4 mode];

  if (v6 != 2)
  {
    goto LABEL_6;
  }

  v7 = [v3 model];
  if (!v7)
  {
LABEL_11:
    __break(1u);
    return;
  }

  v8 = v7;
  v9 = [v7 remotePaymentInstrument];

  if (!v9)
  {
    return;
  }

LABEL_6:

  [v3 didReceiveMerchantSessionCompleteWithUpdate_];
}

char *sub_1BDA5006C(char *result, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    return [*&result[OBJC_IVAR____TtC9PassKitUI35PaymentAuthorizationServiceDelegate_stateMachine] didReceivePaymentAuthorizationResult_];
  }

  __break(1u);
  return result;
}

id sub_1BDA50270()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PaymentAuthorizationServiceDelegate();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1BDA50324()
{
  v0 = sub_1BE04B0F4();
  MEMORY[0x1EEE9AC00](v0 - 8, v1);
  v3 = &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BE04B0A4();
  type metadata accessor for AddressEditingModel();
  swift_allocObject();
  return sub_1BD840B14(v3);
}

uint64_t sub_1BDA503BC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 144))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 40);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1BDA50404(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
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
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 144) = 1;
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
      *(result + 40) = (a2 - 1);
      return result;
    }

    *(result + 144) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1BDA50494@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v39 = a1;
  v36 = sub_1BE04FE84();
  v37 = *(v36 - 8);
  MEMORY[0x1EEE9AC00](v36, v3);
  v5 = v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5C9F0);
  v35 = *(v34 - 8);
  MEMORY[0x1EEE9AC00](v34, v6);
  v8 = v33 - v7;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5C9F8);
  MEMORY[0x1EEE9AC00](v38, v9);
  v11 = v33 - v10;
  v40 = v2;
  v33[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5CA00);
  v12 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD5CA08);
  v13 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD5CA10);
  v14 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD5CA18);
  v15 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD5CA20);
  v16 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD5CA28);
  v17 = sub_1BDA5323C();
  v18 = sub_1BD643418();
  v41 = v16;
  v42 = &type metadata for ShippingAddressPicker;
  v43 = v17;
  v44 = v18;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v20 = sub_1BD0DDEBC();
  v41 = v15;
  v42 = MEMORY[0x1E69E6158];
  v43 = OpaqueTypeConformance2;
  v44 = v20;
  v21 = swift_getOpaqueTypeConformance2();
  v41 = v14;
  v42 = v21;
  v22 = swift_getOpaqueTypeConformance2();
  v23 = sub_1BD0DE4F4(&qword_1EBD5CA48, &qword_1EBD5CA10);
  v41 = v12;
  v42 = v13;
  v43 = v22;
  v44 = v23;
  swift_getOpaqueTypeConformance2();
  sub_1BE04E934();
  sub_1BE04FE74();
  sub_1BD0DE4F4(&qword_1EBD5CA50, &qword_1EBD5C9F0);
  sub_1BDA5386C(&qword_1EBD39E50, MEMORY[0x1E697C938]);
  v24 = v34;
  v25 = v36;
  sub_1BE0507D4();
  (*(v37 + 8))(v5, v25);
  (*(v35 + 8))(v8, v24);
  v26 = swift_allocObject();
  v27 = v2[7];
  *(v26 + 7) = v2[6];
  *(v26 + 8) = v27;
  *(v26 + 9) = v2[8];
  v28 = v2[3];
  *(v26 + 3) = v2[2];
  *(v26 + 4) = v28;
  v29 = v2[5];
  *(v26 + 5) = v2[4];
  *(v26 + 6) = v29;
  v30 = v2[1];
  *(v26 + 1) = *v2;
  *(v26 + 2) = v30;
  v31 = &v11[*(v38 + 36)];
  *v31 = sub_1BDA53364;
  v31[1] = v26;
  v31[2] = 0;
  v31[3] = 0;
  sub_1BE052434();
  sub_1BDA5336C(v2, &v41);
  sub_1BDA533A4();
  sub_1BE050DE4();

  return sub_1BD0DE53C(v11, &qword_1EBD5C9F8);
}

uint64_t sub_1BDA509A4@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X8>)
{
  v67 = a2;
  v66 = sub_1BE04F434();
  v65 = *(v66 - 8);
  MEMORY[0x1EEE9AC00](v66, v3);
  v64 = &v52 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = sub_1BE04FFF4();
  v5 = *(v54 - 8);
  MEMORY[0x1EEE9AC00](v54, v6);
  v8 = &v52 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5CA38);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = &v52 - v12;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5CA28);
  MEMORY[0x1EEE9AC00](v53, v14);
  v16 = &v52 - v15;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5CA20);
  v59 = *(v58 - 8);
  MEMORY[0x1EEE9AC00](v58, v17);
  v55 = &v52 - v18;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5CA18);
  v61 = *(v60 - 8);
  MEMORY[0x1EEE9AC00](v60, v19);
  v56 = &v52 - v20;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5CA08);
  v63 = *(v62 - 8);
  MEMORY[0x1EEE9AC00](v62, v21);
  v57 = &v52 - v22;
  v69 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5CA60);
  sub_1BD0DE4F4(&qword_1EBD5CA68, &qword_1EBD5CA60);
  sub_1BE0504A4();
  sub_1BE04FFE4();
  sub_1BD0DE4F4(&qword_1EBD5CA40, &qword_1EBD5CA38);
  sub_1BE050E04();
  (*(v5 + 8))(v8, v54);
  (*(v10 + 8))(v13, v9);
  v23 = sub_1BE051274();
  LOBYTE(v8) = sub_1BE0501D4();
  v24 = sub_1BE051CD4();
  v25 = v53;
  v26 = &v16[*(v53 + 36)];
  v27 = v16;
  *v26 = v23;
  v26[8] = v8;
  *(v26 + 2) = v24;
  *(v26 + 3) = v28;
  v74 = a1[8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54350);
  sub_1BE0516C4();
  v29 = swift_allocObject();
  v30 = a1[7];
  v29[7] = a1[6];
  v29[8] = v30;
  v29[9] = a1[8];
  v31 = a1[3];
  v29[3] = a1[2];
  v29[4] = v31;
  v32 = a1[5];
  v29[5] = a1[4];
  v29[6] = v32;
  v33 = a1[1];
  v29[1] = *a1;
  v29[2] = v33;
  sub_1BDA5336C(a1, &v70);
  v34 = sub_1BDA5323C();
  v51 = sub_1BD643418();
  v35 = v55;
  sub_1BE051114();

  sub_1BD0DE53C(v27, &qword_1EBD5CA28);
  *&v74 = sub_1BDA520B4();
  *(&v74 + 1) = v36;
  v70 = v25;
  v71 = &type metadata for ShippingAddressPicker;
  v72 = v34;
  v73 = v51;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v38 = sub_1BD0DDEBC();
  v39 = MEMORY[0x1E69E6158];
  v40 = v56;
  v41 = v58;
  sub_1BE050B74();

  v42 = v41;
  (*(v59 + 8))(v35, v41);
  v43 = v65;
  v44 = v64;
  v45 = v66;
  (*(v65 + 104))(v64, *MEMORY[0x1E697C438], v66);
  v70 = v42;
  v71 = v39;
  v72 = OpaqueTypeConformance2;
  v73 = v38;
  v46 = swift_getOpaqueTypeConformance2();
  v47 = v57;
  v48 = v60;
  sub_1BE050E84();
  (*(v43 + 8))(v44, v45);
  (*(v61 + 8))(v40, v48);
  v68 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5CA10);
  v70 = v48;
  v71 = v46;
  swift_getOpaqueTypeConformance2();
  sub_1BD0DE4F4(&qword_1EBD5CA48, &qword_1EBD5CA10);
  v49 = v62;
  sub_1BE051024();
  return (*(v63 + 8))(v47, v49);
}

uint64_t sub_1BDA5121C@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v53 = a2;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5CA78);
  v57 = *(v52 - 8);
  MEMORY[0x1EEE9AC00](v52, v3);
  v54 = &v42 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5, v6);
  v56 = &v42 - v7;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5CA80);
  v47 = *(v51 - 8);
  v8 = v47;
  MEMORY[0x1EEE9AC00](v51, v9);
  v55 = &v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v42 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5CA88);
  v50 = *(v15 - 8);
  v16 = v50;
  MEMORY[0x1EEE9AC00](v15, v17);
  v19 = &v42 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20, v21);
  v23 = &v42 - v22;
  v60 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5CA90);
  sub_1BDA53598();
  v49 = v23;
  sub_1BE051A44();
  v59 = a1;
  sub_1BDA536E0();
  v24 = v14;
  v46 = v14;
  sub_1BE051A44();
  v58 = a1;
  sub_1BDA5373C();
  v25 = v56;
  sub_1BE051A44();
  v26 = *(v16 + 16);
  v48 = v19;
  v45 = v15;
  v26(v19, v23, v15);
  v44 = *(v8 + 16);
  v27 = v55;
  v28 = v24;
  v29 = v51;
  v44(v55, v28, v51);
  v43 = *(v57 + 16);
  v30 = v25;
  v31 = v52;
  v43(v54, v30, v52);
  v32 = v53;
  v26(v53, v19, v15);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5CAC0);
  v44(&v32[*(v33 + 48)], v27, v29);
  v34 = v54;
  v43(&v32[*(v33 + 64)], v54, v31);
  v35 = *(v57 + 8);
  v36 = v31;
  v35(v56, v31);
  v37 = *(v47 + 8);
  v38 = v29;
  v37(v46, v29);
  v39 = *(v50 + 8);
  v40 = v45;
  v39(v49, v45);
  v35(v34, v36);
  v37(v55, v38);
  return (v39)(v48, v40);
}

uint64_t sub_1BDA516E0@<X0>(uint64_t a1@<X8>)
{
  sub_1BDA51764(a1);
  v2 = sub_1BE050234();
  sub_1BE04E1F4();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5CA90);
  v12 = a1 + *(result + 36);
  *v12 = v2;
  *(v12 + 8) = v4;
  *(v12 + 16) = v6;
  *(v12 + 24) = v8;
  *(v12 + 32) = v10;
  *(v12 + 40) = 0;
  return result;
}

uint64_t sub_1BDA51764@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for ShippingAddressRow();
  MEMORY[0x1EEE9AC00](v3, v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = *(v1 + 16);
  v8 = *(&v23 + 1);
  if (*(&v23 + 1) == 4)
  {
    v9 = *(v5 + 56);

    return v9(a1, 1, 1, v3);
  }

  else
  {
    v11 = v23;
    v21 = v5;
    sub_1BDA538B4(&v23, v22);
    v12 = sub_1BD50D2BC(v11, v8, 1);
    v14 = v13;
    v16 = v15;
    *v7 = sub_1BD55131C(v11, v8);
    *(v7 + 1) = v17;
    *(v7 + 2) = 0;
    *(v7 + 3) = 0;
    v7[32] = 0;
    *(v7 + 5) = v12;
    *(v7 + 6) = v14;
    *(v7 + 7) = v16;
    v7[64] = 0;
    v18 = v3[9];
    *&v7[v18] = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39CF8);
    swift_storeEnumTagMultiPayload();
    v19 = v3[10];
    *&v7[v19] = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD521C0);
    swift_storeEnumTagMultiPayload();
    *&v7[v3[11]] = 0x4028000000000000;
    sub_1BDA53924(v7, a1);
    return (*(v21 + 56))(a1, 0, 1, v3);
  }
}

double sub_1BDA51978@<D0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  type metadata accessor for AddressEditingModel();
  sub_1BDA5386C(&qword_1EBD40EB0, type metadata accessor for AddressEditingModel);
  sub_1BE04E3D4();
  swift_getKeyPath();
  sub_1BE04E974();

  *&v19[167] = v15;
  *&v19[183] = v16;
  *&v19[199] = v17;
  *&v19[215] = v18;
  *&v19[103] = v11;
  *&v19[119] = v12;
  *&v19[135] = v13;
  *&v19[151] = v14;
  *&v19[39] = v7;
  *&v19[55] = v8;
  *&v19[71] = v9;
  *&v19[87] = v10;
  *&v19[7] = v5;
  *&v19[23] = v6;
  *(a2 + 177) = *&v19[176];
  *(a2 + 193) = *&v19[192];
  *(a2 + 209) = *&v19[208];
  *(a2 + 113) = *&v19[112];
  *(a2 + 129) = *&v19[128];
  *(a2 + 145) = *&v19[144];
  *(a2 + 161) = *&v19[160];
  *(a2 + 49) = *&v19[48];
  *(a2 + 65) = *&v19[64];
  *(a2 + 81) = *&v19[80];
  *(a2 + 97) = *&v19[96];
  result = *v19;
  *(a2 + 1) = *v19;
  *(a2 + 17) = *&v19[16];
  *a2 = v3;
  *(a2 + 224) = *(&v18 + 1);
  *(a2 + 33) = *&v19[32];
  return result;
}

uint64_t sub_1BDA51B7C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  type metadata accessor for AddressEditingModel();
  sub_1BDA5386C(&qword_1EBD40EB0, type metadata accessor for AddressEditingModel);
  sub_1BE04E3C4();
  sub_1BE048964();

  v5 = swift_allocObject();
  v6 = *(a1 + 112);
  v5[7] = *(a1 + 96);
  v5[8] = v6;
  v5[9] = *(a1 + 128);
  v7 = *(a1 + 48);
  v5[3] = *(a1 + 32);
  v5[4] = v7;
  v8 = *(a1 + 80);
  v5[5] = *(a1 + 64);
  v5[6] = v8;
  v9 = *(a1 + 16);
  v5[1] = *a1;
  v5[2] = v9;
  sub_1BDA5336C(a1, &v12);
  type metadata accessor for PostalAddressEditingModel();
  sub_1BDA5386C(&qword_1EBD3DAB8, type metadata accessor for PostalAddressEditingModel);
  result = sub_1BE04E954();
  *a2 = v4;
  *(a2 + 8) = result;
  *(a2 + 16) = v11;
  *(a2 + 24) = sub_1BDA53814;
  *(a2 + 32) = v5;
  return result;
}

__n128 sub_1BDA51D00@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 48);
  v17 = *(a1 + 32);
  v18 = v4;
  v19 = *(a1 + 64);
  v5 = *(a1 + 16);
  v6 = *(a1 + 24);
  v7 = swift_allocObject();
  v8 = *(a1 + 112);
  v7[7] = *(a1 + 96);
  v7[8] = v8;
  v7[9] = *(a1 + 128);
  v9 = *(a1 + 48);
  v7[3] = *(a1 + 32);
  v7[4] = v9;
  v10 = *(a1 + 80);
  v7[5] = *(a1 + 64);
  v7[6] = v10;
  v11 = *(a1 + 16);
  v7[1] = *a1;
  v7[2] = v11;
  KeyPath = swift_getKeyPath();
  v16 = 1;
  sub_1BD10D494(&v17, v15);
  sub_1BD6434AC(v5, v6);
  sub_1BDA5336C(a1, v15);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4BBD0);
  sub_1BE051694();
  result = v15[0];
  v14 = v18;
  *a2 = v17;
  *(a2 + 16) = v14;
  *(a2 + 32) = v19;
  *(a2 + 40) = v5;
  *(a2 + 48) = v6;
  *(a2 + 56) = 1;
  *(a2 + 64) = MEMORY[0x1E69E7CC0];
  *(a2 + 72) = sub_1BDA53588;
  *(a2 + 80) = v7;
  *(a2 + 88) = KeyPath;
  *(a2 + 96) = 0;
  *(a2 + 104) = sub_1BD5AE8A8;
  *(a2 + 112) = 0;
  *(a2 + 120) = 0;
  *(a2 + 128) = result;
  return result;
}

uint64_t sub_1BDA51E5C(void *a1)
{
  if (!a1)
  {
    goto LABEL_17;
  }

  v2 = [a1 postalAddresses];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD58EB0);
  v3 = sub_1BE052744();

  if (!(v3 >> 62))
  {
    result = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_4;
    }

    goto LABEL_16;
  }

  result = sub_1BE053704();
  if (!result)
  {
LABEL_16:

LABEL_17:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54350);
    return sub_1BE0516B4();
  }

LABEL_4:
  if ((v3 & 0xC000000000000001) != 0)
  {
    v5 = MEMORY[0x1BFB40900](0, v3);
LABEL_7:
    v6 = v5;

    v7 = [v6 value];

    if (v7)
    {
      v8 = [a1 valueSource];
      if (v8)
      {
        v9 = v8;
        sub_1BE052434();
      }

      else
      {
        sub_1BE052434();
      }

      v10 = sub_1BD6B9D24();
      if (v10 == 10)
      {
        v11 = 0;
      }

      else
      {
        v11 = v10;
      }

      type metadata accessor for AddressEditingModel();
      sub_1BDA5386C(&qword_1EBD40EB0, type metadata accessor for AddressEditingModel);
      sub_1BE04E3C4();
      sub_1BE048964();

      sub_1BD208DB0(v7, v11, [a1 formattingConstrained]);
    }

    goto LABEL_17;
  }

  if (*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v5 = *(v3 + 32);
    goto LABEL_7;
  }

  __break(1u);
  return result;
}

id sub_1BDA520B4()
{
  v1 = sub_1BE04BD74();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1, v3);
  v5 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v32 - v8;
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = &v32 - v12;
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = &v32 - v16;
  v21 = MEMORY[0x1EEE9AC00](v18, v19);
  v22 = &v32 - v20;
  v23 = *(v0 + 24);
  if (v23 <= 1)
  {
    if (!v23)
    {
      (*(v2 + 104))(&v32 - v20, *MEMORY[0x1E69B8068], v1, v21);
      result = PKPassKitBundle();
      if (result)
      {
        v30 = result;
        v26 = sub_1BE04B6F4();

        (*(v2 + 8))(v22, v1);
        return v26;
      }

      goto LABEL_24;
    }

    if (v23 == 1)
    {
      (*(v2 + 104))(v17, *MEMORY[0x1E69B8068], v1, v21);
      result = PKPassKitBundle();
      if (result)
      {
        v27 = result;
        v26 = sub_1BE04B6F4();

        (*(v2 + 8))(v17, v1);
        return v26;
      }

      goto LABEL_25;
    }

    goto LABEL_18;
  }

  switch(v23)
  {
    case 2:
      (*(v2 + 104))(v13, *MEMORY[0x1E69B8068], v1, v21);
      result = PKPassKitBundle();
      if (result)
      {
        v28 = result;
        v26 = sub_1BE04B6F4();

        (*(v2 + 8))(v13, v1);
        return v26;
      }

      __break(1u);
      goto LABEL_22;
    case 3:
      (*(v2 + 104))(v9, *MEMORY[0x1E69B8068], v1, v21);
      result = PKPassKitBundle();
      if (result)
      {
        v29 = result;
        v26 = sub_1BE04B6F4();

        (*(v2 + 8))(v9, v1);
        return v26;
      }

LABEL_22:
      __break(1u);
LABEL_23:
      __break(1u);
LABEL_24:
      __break(1u);
LABEL_25:
      __break(1u);
      return result;
    case 4:
      (*(v2 + 104))(v5, *MEMORY[0x1E69B8068], v1, v21);
      result = PKPassKitBundle();
      if (result)
      {
        v25 = result;
        v26 = sub_1BE04B6F4();

        (*(v2 + 8))(v5, v1);
        return v26;
      }

      goto LABEL_23;
  }

LABEL_18:
  v31 = *(v0 + 16);

  return sub_1BD55131C(v31, v23);
}

uint64_t sub_1BDA524E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v24 = a2;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5CA70);
  MEMORY[0x1EEE9AC00](v23, v3);
  v21 = &v21 - v4;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4BB78);
  v5 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22, v6);
  v8 = &v21 - v7;
  v9 = sub_1BE04FB44();
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39430);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11, v13);
  v15 = &v21 - v14;
  sub_1BE04FB14();
  v26 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD394D8);
  sub_1BDA53988(&qword_1EBD394E0, &qword_1EBD394D8, &unk_1BE0D6B60, sub_1BD10DE58);
  sub_1BE04E424();
  sub_1BE04FB04();
  v25 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD467F8);
  sub_1BD4588AC();
  sub_1BE04E424();
  v16 = *(v23 + 48);
  v17 = v21;
  (*(v12 + 16))(v21, v15, v11);
  v18 = &v17[v16];
  v19 = v22;
  (*(v5 + 16))(v18, v8, v22);
  sub_1BE04F854();
  (*(v5 + 8))(v8, v19);
  return (*(v12 + 8))(v15, v11);
}

uint64_t sub_1BDA52834@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v27[1] = a2;
  v3 = sub_1BE04E1D4();
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39500);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = v27 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD394F0);
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = v27 - v14;
  sub_1BE04E1C4();
  v16 = swift_allocObject();
  v17 = *(a1 + 112);
  v16[7] = *(a1 + 96);
  v16[8] = v17;
  v16[9] = *(a1 + 128);
  v18 = *(a1 + 48);
  v16[3] = *(a1 + 32);
  v16[4] = v18;
  v19 = *(a1 + 80);
  v16[5] = *(a1 + 64);
  v16[6] = v19;
  v20 = *(a1 + 16);
  v16[1] = *a1;
  v16[2] = v20;
  sub_1BDA5336C(a1, v41);
  MEMORY[0x1BFB3E7A0](v6, sub_1BDA53518, v16);
  type metadata accessor for AddressEditingModel();
  sub_1BDA5386C(&qword_1EBD40EB0, type metadata accessor for AddressEditingModel);
  sub_1BE04E3C4();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();

  v41[10] = v38;
  v41[11] = v39;
  v41[12] = v40;
  v41[6] = v34;
  v41[7] = v35;
  v41[8] = v36;
  v41[9] = v37;
  v41[2] = v30;
  v41[3] = v31;
  v41[4] = v32;
  v41[5] = v33;
  v41[0] = v28;
  v41[1] = v29;
  LOBYTE(a1) = sub_1BD4F7DB0();
  sub_1BD4FBC18(v41);
  if ((a1 & 1) != 0 && sub_1BD20B8F0())
  {
    v21 = sub_1BD20BAFC();

    v22 = v21 ^ 1;
  }

  else
  {

    v22 = 1;
  }

  KeyPath = swift_getKeyPath();
  v24 = swift_allocObject();
  *(v24 + 16) = v22 & 1;
  (*(v8 + 32))(v15, v11, v7);
  v25 = &v15[*(v12 + 36)];
  *v25 = KeyPath;
  v25[1] = sub_1BD10DF54;
  v25[2] = v24;
  sub_1BE052434();
  sub_1BD10DE58();
  sub_1BE050DE4();

  return sub_1BDA53520(v15);
}

void sub_1BDA52C04(uint64_t a1)
{
  v1 = *(a1 + 88);
  type metadata accessor for AddressEditingModel();
  sub_1BDA5386C(&qword_1EBD40EB0, type metadata accessor for AddressEditingModel);
  sub_1BE04E3C4();
  v2 = sub_1BD841B64();

  v1(v2);
}

id sub_1BDA52CD4@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X8>)
{
  v25 = a2;
  v3 = sub_1BE04BD74();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = &v26[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD441C8);
  v9 = *(v8 - 8);
  v11 = MEMORY[0x1EEE9AC00](v8, v10);
  v13 = &v26[-v12 - 8];
  (*(v4 + 104))(v7, *MEMORY[0x1E69B8068], v3, v11);
  result = PKPassKitBundle();
  if (result)
  {
    v15 = result;
    v16 = sub_1BE04B6F4();
    v18 = v17;

    (*(v4 + 8))(v7, v3);
    v19 = swift_allocObject();
    v20 = a1[7];
    v19[7] = a1[6];
    v19[8] = v20;
    v19[9] = a1[8];
    v21 = a1[3];
    v19[3] = a1[2];
    v19[4] = v21;
    v22 = a1[5];
    v19[5] = a1[4];
    v19[6] = v22;
    v23 = a1[1];
    v19[1] = *a1;
    v19[2] = v23;
    v27[0] = v16;
    v27[1] = v18;
    MEMORY[0x1EEE9AC00](v19, v24);
    *(&v25 - 4) = v27;
    *(&v25 - 3) = 0x6B72616D78;
    *(&v25 - 2) = 0xE500000000000000;
    sub_1BDA5336C(a1, v26);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD37358);
    sub_1BD0DE4F4(&qword_1EBD4D3F0, &qword_1EBD37358);
    sub_1BE051704();

    sub_1BE052434();
    sub_1BD0DE4F4(&qword_1EBD441C0, &qword_1EBD441C8);
    sub_1BE050DE4();

    return (*(v9 + 8))(v13, v8);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1BDA5303C(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    type metadata accessor for AddressEditingModel();
    sub_1BDA5386C(&qword_1EBD40EB0, type metadata accessor for AddressEditingModel);
    v3 = v2;
    sub_1BE04E3C4();
    sub_1BD84367C(v3);
  }

  type metadata accessor for AddressEditingModel();
  sub_1BDA5386C(&qword_1EBD40EB0, type metadata accessor for AddressEditingModel);
  sub_1BE04E3C4();
  v4 = *(a1 + 48);
  v11[0] = *(a1 + 32);
  v11[1] = v4;
  v12 = *(a1 + 64);
  swift_getKeyPath();
  swift_getKeyPath();
  v5 = *(a1 + 48);
  v8 = *(a1 + 32);
  v9 = v5;
  v10 = *(a1 + 64);
  sub_1BE048964();
  sub_1BD10D494(v11, v7);
  sub_1BE04D8C4();
  sub_1BD841418();
}

unint64_t sub_1BDA5323C()
{
  result = qword_1EBD5CA30;
  if (!qword_1EBD5CA30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD5CA28);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD5CA38);
    sub_1BD0DE4F4(&qword_1EBD5CA40, &qword_1EBD5CA38);
    swift_getOpaqueTypeConformance2();
    sub_1BD0DE4F4(&qword_1EBD39E18, &qword_1EBD39E20);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD5CA30);
  }

  return result;
}

unint64_t sub_1BDA533A4()
{
  result = qword_1EBD5CA58;
  if (!qword_1EBD5CA58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD5C9F8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD5C9F0);
    sub_1BE04FE84();
    sub_1BD0DE4F4(&qword_1EBD5CA50, &qword_1EBD5C9F0);
    sub_1BDA5386C(&qword_1EBD39E50, MEMORY[0x1E697C938]);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD5CA58);
  }

  return result;
}

uint64_t sub_1BDA53520(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD394F0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1BDA53598()
{
  result = qword_1EBD5CA98;
  if (!qword_1EBD5CA98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD5CA90);
    sub_1BDA53624();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD5CA98);
  }

  return result;
}

unint64_t sub_1BDA53624()
{
  result = qword_1EBD5CAA0;
  if (!qword_1EBD5CAA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD5CAA8);
    sub_1BDA5386C(&qword_1EBD42A78, type metadata accessor for ShippingAddressRow);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD5CAA0);
  }

  return result;
}

unint64_t sub_1BDA536E0()
{
  result = qword_1EBD5CAB0;
  if (!qword_1EBD5CAB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD5CAB0);
  }

  return result;
}

unint64_t sub_1BDA5373C()
{
  result = qword_1EBD5CAB8;
  if (!qword_1EBD5CAB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD5CAB8);
  }

  return result;
}

uint64_t objectdestroyTm_124()
{
  if (*(v0 + 40) >= 5uLL)
  {
  }

  sub_1BD0D45CC();

  return swift_deallocObject();
}

uint64_t sub_1BDA5386C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1BDA538B4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4BBC8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BDA53924(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ShippingAddressRow();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BDA53988(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    a4();
    sub_1BDA5386C(&qword_1EBD52210, MEMORY[0x1E697CBE8]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

id sub_1BDA53A3C(void *a1)
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

void sub_1BDA53B10()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    MEMORY[0x1EEE9AC00](Strong, v1);
    v4[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5CAD8);
    v4[4] = sub_1BDA54258();
    __swift_allocate_boxed_opaque_existential_1(v4);
    v3 = v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5CAE8);
    sub_1BDA542BC();
    sub_1BE04FCE4();
    MEMORY[0x1BFB3FEF0](v4);
  }
}

__n128 sub_1BDA53C30@<Q0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for PKDashboardRewardsBalanceView();
  MEMORY[0x1EEE9AC00](v4, v5);
  v7 = &v25[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = a1;
  v9 = [v8 programName];
  v10 = sub_1BE052434();
  v12 = v11;

  v13 = [v8 formattedMonetaryValue];
  if (v13)
  {
    v14 = v13;
    v15 = sub_1BE052434();
    v17 = v16;
  }

  else
  {
    v15 = 0;
    v17 = 0;
  }

  v18 = [v8 lastFetchedAt];
  sub_1BE04AEE4();

  *v7 = v10;
  v7[1] = v12;
  v7[2] = v15;
  v7[3] = v17;
  v19 = v7 + *(v4 + 28);
  v25[15] = 0;
  sub_1BE051694();

  v20 = *(&v26 + 1);
  *v19 = v26;
  *(v19 + 1) = v20;
  sub_1BE051CE4();
  sub_1BE04EE54();
  sub_1BD2DB3D8(v7, a2);
  v21 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5CAE8) + 36);
  v22 = v31;
  *(v21 + 64) = v30;
  *(v21 + 80) = v22;
  *(v21 + 96) = v32;
  v23 = v27;
  *v21 = v26;
  *(v21 + 16) = v23;
  result = v29;
  *(v21 + 32) = v28;
  *(v21 + 48) = result;
  return result;
}

id PKDashboardRewardsBalanceCell.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id PKDashboardRewardsBalanceCell.init(frame:)(double a1, double a2, double a3, double a4)
{
  v10.receiver = v4;
  v10.super_class = type metadata accessor for PKDashboardRewardsBalanceCell();
  return objc_msgSendSuper2(&v10, sel_initWithFrame_, a1, a2, a3, a4);
}

id PKDashboardRewardsBalanceCell.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id PKDashboardRewardsBalanceCell.init(coder:)(void *a1)
{
  v5.receiver = v1;
  v5.super_class = type metadata accessor for PKDashboardRewardsBalanceCell();
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

id PKDashboardRewardsBalanceCell.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PKDashboardRewardsBalanceCell();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_1BDA54258()
{
  result = qword_1EBD5CAE0;
  if (!qword_1EBD5CAE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD5CAD8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD5CAE0);
  }

  return result;
}

unint64_t sub_1BDA542BC()
{
  result = qword_1EBD5CAF0;
  if (!qword_1EBD5CAF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD5CAE8);
    sub_1BDA54348();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD5CAF0);
  }

  return result;
}

unint64_t sub_1BDA54348()
{
  result = qword_1EBD5CAF8;
  if (!qword_1EBD5CAF8)
  {
    type metadata accessor for PKDashboardRewardsBalanceView();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD5CAF8);
  }

  return result;
}

uint64_t sub_1BDA543A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3E580);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v11 = v23 - v10;
  sub_1BDA56850(a3, v23 - v10);
  v12 = sub_1BE0528D4();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);
  sub_1BE048964();
  if (v14 == 1)
  {
    sub_1BDA568C0(v11);
  }

  else
  {
    sub_1BE0528C4();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_1BE052844();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_1BE0524D4() + 32;
      sub_1BE048964();
      if (v18 | v16)
      {
        v24[0] = 0;
        v24[1] = 0;
        v20 = v24;
        v24[2] = v16;
        v24[3] = v18;
      }

      else
      {
        v20 = 0;
      }

      v23[1] = 7;
      v23[2] = v20;
      v23[3] = v19;
      v21 = swift_task_create();

      sub_1BDA568C0(a3);

      return v21;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_1BDA568C0(a3);
  if (v18 | v16)
  {
    v24[4] = 0;
    v24[5] = 0;
    v24[6] = v16;
    v24[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_1BDA54628(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3E580);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v11 = v23 - v10;
  sub_1BDA56850(a3, v23 - v10);
  v12 = sub_1BE0528D4();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);
  sub_1BE048964();
  if (v14 == 1)
  {
    sub_1BDA568C0(v11);
  }

  else
  {
    sub_1BE0528C4();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_1BE052844();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_1BE0524D4() + 32;
      sub_1BE048964();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF70);
      v20 = (v18 | v16);
      if (v18 | v16)
      {
        v24[0] = 0;
        v24[1] = 0;
        v20 = v24;
        v24[2] = v16;
        v24[3] = v18;
      }

      v23[1] = 7;
      v23[2] = v20;
      v23[3] = v19;
      v21 = swift_task_create();

      sub_1BDA568C0(a3);

      return v21;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_1BDA568C0(a3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF70);
  if (v18 | v16)
  {
    v24[4] = 0;
    v24[5] = 0;
    v24[6] = v16;
    v24[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_1BDA548BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(void))
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3E580);
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v13 = v25 - v12;
  sub_1BDA56850(a3, v25 - v12);
  v14 = sub_1BE0528D4();
  v15 = *(v14 - 8);
  v16 = (*(v15 + 48))(v13, 1, v14);
  sub_1BE048964();
  if (v16 == 1)
  {
    sub_1BDA568C0(v13);
  }

  else
  {
    sub_1BE0528C4();
    (*(v15 + 8))(v13, v14);
  }

  v17 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = sub_1BE052844();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v25[0] = a2;
      v21 = sub_1BE0524D4() + 32;
      a6(0);
      sub_1BE048964();
      if (v20 | v18)
      {
        v26[0] = 0;
        v26[1] = 0;
        v22 = v26;
        v26[2] = v18;
        v26[3] = v20;
      }

      else
      {
        v22 = 0;
      }

      v25[1] = 7;
      v25[2] = v22;
      v25[3] = v21;
      v23 = swift_task_create();

      sub_1BDA568C0(a3);

      return v23;
    }
  }

  else
  {
    v18 = 0;
    v20 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_1BDA568C0(a3);
  a6(0);
  if (v20 | v18)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v18;
    v26[7] = v20;
  }

  return swift_task_create();
}

id sub_1BDA54B44(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  *&v2[OBJC_IVAR____TtC9PassKitUI29BankConnectEntryPointFlowItem_viewController] = 0;
  *&v2[OBJC_IVAR____TtC9PassKitUI29BankConnectEntryPointFlowItem__isCardsOnFileProvisioning] = &type metadata for IsCardsOnFileProvisioning;
  *&v2[OBJC_IVAR____TtC9PassKitUI29BankConnectEntryPointFlowItem__hasRemainingCredentialsToProvision] = &type metadata for HasRemainingCredentialsToProvision;
  *&v2[OBJC_IVAR____TtC9PassKitUI29BankConnectEntryPointFlowItem_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v2[OBJC_IVAR____TtC9PassKitUI29BankConnectEntryPointFlowItem_step] = 0;
  *&v2[OBJC_IVAR____TtC9PassKitUI29BankConnectEntryPointFlowItem_manager] = 0;
  v6 = &v2[OBJC_IVAR____TtC9PassKitUI29BankConnectEntryPointFlowItem_identifier];
  *v6 = 0xD00000000000001DLL;
  *(v6 + 1) = 0x80000001BE110870;
  *&v2[OBJC_IVAR____TtC9PassKitUI29BankConnectEntryPointFlowItem_context] = a1;
  *&v2[OBJC_IVAR____TtC9PassKitUI29BankConnectEntryPointFlowItem_provisionedPasses] = a2;
  v8.receiver = v2;
  v8.super_class = ObjectType;
  return objc_msgSendSuper2(&v8, sel_init);
}

void sub_1BDA54D34(void (*a1)(unint64_t, unint64_t, void, uint64_t), uint64_t a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3E580);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v9 = v27 - v8;
  if ((sub_1BDA5507C() & 1) == 0)
  {
    v14 = "BankConnectEntryPointFlowItem";
    v15 = 0xD000000000000028;
    goto LABEL_8;
  }

  if ((sub_1BDA551E0() & 1) == 0)
  {
    v14 = "side of Wallet / In-App.";
    v15 = 0xD000000000000020;
    goto LABEL_8;
  }

  KeyPath = swift_getKeyPath();
  v11 = sub_1BD1879F4(v2, KeyPath);

  if (v11)
  {
    v12 = swift_getKeyPath();
    v13 = sub_1BD187A20(v2, v12);

    if (v13)
    {
      v14 = " is not eligible";
      v15 = 0xD000000000000025;
LABEL_8:
      a1(v15, v14 | 0x8000000000000000, 0, 1);
      return;
    }
  }

  v16 = sub_1BE04BC84();
  v17 = [v16 passActivationState];
  v18 = [v16 paymentPass];
  if (v18)
  {
    v19 = v18;
    if ((v17 | 2) == 2)
    {
      v20 = sub_1BE0528D4();
      (*(*(v20 - 8) + 56))(v9, 1, 1, v20);
      sub_1BE0528A4();
      v21 = v16;
      sub_1BE048964();
      v22 = v3;
      v23 = v19;
      v24 = sub_1BE052894();
      v25 = swift_allocObject();
      v26 = MEMORY[0x1E69E85E0];
      v25[2] = v24;
      v25[3] = v26;
      v25[4] = v21;
      v25[5] = a1;
      v25[6] = a2;
      v25[7] = v22;
      v25[8] = v23;
      sub_1BDA543A4(0, 0, v9, &unk_1BE110900, v25);

      return;
    }
  }

  v28 = 0;
  v29 = 0xE000000000000000;
  sub_1BE053834();
  MEMORY[0x1BFB3F610](0x6174732073736150, 0xEB00000000206574);
  v27[1] = v17;
  type metadata accessor for PassActivationState(0);
  sub_1BE053974();
  MEMORY[0x1BFB3F610](0xD000000000000010, 0x80000001BE148C80);
  a1(v28, v29, 0, 1);
}

uint64_t sub_1BDA5507C()
{
  v0 = sub_1BE04BAC4();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = &v10[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v11 = &type metadata for BankConnectFeatureFlags;
  v12 = sub_1BD1671B0();
  v10[0] = 3;
  v5 = sub_1BE04C584();
  __swift_destroy_boxed_opaque_existential_0(v10);
  if (v5 & 1) != 0 && (sub_1BE04BC34(), v6 = sub_1BE04BA44(), (*(v1 + 8))(v4, v0), (v6))
  {
    v7 = 1;
  }

  else
  {
    sub_1BE04BC34();
    v7 = sub_1BE04BA74();
    (*(v1 + 8))(v4, v0);
  }

  return v7 & 1;
}

uint64_t sub_1BDA551E0()
{
  v0 = sub_1BE04BAC4();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = &v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1BE04B9C4();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = &v19 - v12;
  sub_1BE04BC34();
  sub_1BE04BAA4();
  (*(v1 + 8))(v4, v0);
  v14 = *(v6 + 104);
  v14(v9, *MEMORY[0x1E69B7FC0], v5);
  v15 = sub_1BE04B9B4();
  v16 = *(v6 + 8);
  v16(v9, v5);
  if (v15)
  {
    v17 = 1;
  }

  else
  {
    v14(v9, *MEMORY[0x1E69B7FB0], v5);
    v17 = sub_1BE04B9B4();
    v16(v9, v5);
  }

  v16(v13, v5);
  return v17 & 1;
}

uint64_t sub_1BDA55418(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[5] = a7;
  v8[6] = a8;
  v8[3] = a5;
  v8[4] = a6;
  v8[2] = a4;
  sub_1BE0528A4();
  v8[7] = sub_1BE052894();
  v10 = sub_1BE052844();
  v8[8] = v10;
  v8[9] = v9;

  return MEMORY[0x1EEE6DFA0](sub_1BDA554B8, v10, v9);
}

uint64_t sub_1BDA554B8()
{
  v1 = v0[2];
  sub_1BE049DD4();
  v2 = [v1 primaryAccountIdentifier];
  sub_1BE052434();

  v0[10] = sub_1BE049DB4();

  v5 = (*MEMORY[0x1E6967C10] + MEMORY[0x1E6967C10]);
  v3 = swift_task_alloc();
  v0[11] = v3;
  *v3 = v0;
  v3[1] = sub_1BDA555C0;

  return v5();
}

uint64_t sub_1BDA555C0(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 96) = a1;
  *(v4 + 104) = v1;

  v5 = *(v3 + 72);
  v6 = *(v3 + 64);
  if (v1)
  {
    v7 = sub_1BDA55888;
  }

  else
  {
    v7 = sub_1BDA55704;
  }

  return MEMORY[0x1EEE6DFA0](v7, v6, v5);
}

uint64_t sub_1BDA55704()
{
  v1 = *(v0 + 96);

  v2 = *(v0 + 80);
  if (v1)
  {
    v3 = *(v0 + 96);
    (*(v0 + 24))(0xD000000000000045, 0x80000001BE148CD0, 0, 1);

    v2 = v3;
  }

  else
  {
    v5 = *(v0 + 40);
    v4 = *(v0 + 48);
    v7 = *(v0 + 24);
    v6 = *(v0 + 32);
    v8 = *(v0 + 16);
    v9 = [objc_allocWithZone(sub_1BE049DF4()) init];
    sub_1BD0E5E8C(0, &qword_1EBD5CB48);
    v10 = sub_1BDA558F8(v8);
    v11 = swift_allocObject();
    v11[2] = v5;
    v11[3] = v7;
    v11[4] = v6;
    v11[5] = v4;
    v12 = v5;
    sub_1BE048964();
    v13 = v4;
    sub_1BE049DE4();
  }

  v14 = *(v0 + 8);

  return v14();
}

uint64_t sub_1BDA55888()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1BDA558F8(void *a1)
{
  v2 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v3 = a1;
  v4 = [v3 uniqueID];
  if (v4)
  {
    v5 = v4;
    sub_1BE052434();
  }

  v6 = sub_1BE052404();

  [v2 setUniqueID_];

  v7 = [v3 serialNumber];
  if (!v7)
  {
    sub_1BE052434();
    v7 = sub_1BE052404();
  }

  [v2 setSerialNumber_];

  v8 = [v3 passTypeIdentifier];
  if (!v8)
  {
    sub_1BE052434();
    v8 = sub_1BE052404();
  }

  [v2 setPassTypeIdentifier_];

  v9 = [v3 associatedApplicationIdentifiers];
  if (v9)
  {
    v10 = v9;
    v11 = sub_1BE052A34();
  }

  else
  {
    v11 = MEMORY[0x1E69E7CD0];
  }

  v12 = 1 << *(v11 + 32);
  v13 = -1;
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  v14 = v13 & *(v11 + 56);
  v15 = (v12 + 63) >> 6;
  result = sub_1BE048C84();
  v17 = 0;
  v18 = MEMORY[0x1E69E7CC0];
  while (v14)
  {
LABEL_18:
    v20 = __clz(__rbit64(v14));
    v14 &= v14 - 1;
    sub_1BD149C8C(*(v11 + 48) + 40 * (v20 | (v17 << 6)), &v42);
    result = swift_dynamicCast();
    if ((result & 1) != 0 && v41)
    {
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_1BD03B038(0, *(v18 + 16) + 1, 1, v18);
        v18 = result;
      }

      v22 = *(v18 + 16);
      v21 = *(v18 + 24);
      v23 = v22 + 1;
      if (v22 >= v21 >> 1)
      {
        v39 = v22 + 1;
        v25 = v18;
        v26 = *(v18 + 16);
        result = sub_1BD03B038((v21 > 1), v22 + 1, 1, v25);
        v22 = v26;
        v23 = v39;
        v18 = result;
      }

      *(v18 + 16) = v23;
      v24 = v18 + 16 * v22;
      *(v24 + 32) = v40;
      *(v24 + 40) = v41;
    }
  }

  while (1)
  {
    v19 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      __break(1u);
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

    if (v19 >= v15)
    {
      break;
    }

    v14 = *(v11 + 56 + 8 * v19);
    ++v17;
    if (v14)
    {
      v17 = v19;
      goto LABEL_18;
    }
  }

  sub_1BD537298(v18);

  v27 = sub_1BE052A24();

  [v2 setAssociatedApplicationIdentifiers_];

  v28 = [v3 storeIdentifiers];
  if (v28)
  {
    v29 = v28;
    sub_1BD0E5E8C(0, &qword_1EBD3D270);
    sub_1BE052744();
  }

  sub_1BD0E5E8C(0, &qword_1EBD3D270);
  v30 = sub_1BE052724();

  [v2 setAssociatedStoreIdentifiers_];

  v31 = [v3 issuerCountryCode];
  [v2 setIssuerCountryCode_];

  v32 = [v3 primaryAccountIdentifier];
  if (!v32)
  {
    sub_1BE052434();
    v32 = sub_1BE052404();
  }

  [v2 setPrimaryAccountIdentifier_];

  v33 = [v3 organizationName];
  if (!v33)
  {
    sub_1BE052434();
    v33 = sub_1BE052404();
  }

  [v2 setOrganizationName_];

  v34 = [v3 localizedDescription];
  if (!v34)
  {
    sub_1BE052434();
    v34 = sub_1BE052404();
  }

  [v2 setLocalizedDescription_];

  result = [v3 devicePrimaryPaymentApplication];
  if (!result)
  {
    goto LABEL_38;
  }

  v35 = result;
  [result paymentType];

  result = PKPaymentMethodTypeToString();
  if (!result)
  {
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  v36 = result;
  [v2 setPrimaryPaymentApplicationPaymentType_];

  result = [v3 devicePrimaryPaymentApplication];
  if (result)
  {
    v37 = result;

    v38 = [v37 displayName];

    [v2 setPrimaryPaymentApplicationDisplayName_];
    return v2;
  }

LABEL_40:
  __break(1u);
  return result;
}

uint64_t sub_1BDA55F18(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v24 = a3;
  v8 = sub_1BE051F54();
  v26 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_1BE051FA4();
  v12 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25, v13);
  v15 = &v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BD0E5E8C(0, &qword_1EBD35E90);
  v16 = sub_1BE052D54();
  v17 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v18 = swift_allocObject();
  v18[2] = v17;
  v18[3] = a1;
  v18[4] = v24;
  v18[5] = a4;
  v18[6] = a5;
  aBlock[4] = sub_1BDA56934;
  aBlock[5] = v18;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BD126964;
  aBlock[3] = &block_descriptor_246;
  v19 = _Block_copy(aBlock);
  v20 = a1;
  sub_1BE048964();
  v21 = a5;

  sub_1BE051F74();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1BD14EC84();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD387F0);
  sub_1BD14ECDC();
  sub_1BE053664();
  MEMORY[0x1BFB3FDF0](0, v15, v11, v19);
  _Block_release(v19);

  (*(v26 + 8))(v11, v8);
  return (*(v12 + 8))(v15, v25);
}

void sub_1BDA561FC(uint64_t a1, void *a2, void (*a3)(unint64_t, unint64_t, void, uint64_t), uint64_t a4, uint64_t a5)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v9 = Strong;
    if (a2)
    {
      v10 = objc_allocWithZone(PKBankConnectProvisioningFlowManager);
      v11 = a2;
      v12 = [v10 initWithPaymentPass:a5 institution:v11];
      v13 = *&v9[OBJC_IVAR____TtC9PassKitUI29BankConnectEntryPointFlowItem_manager];
      *&v9[OBJC_IVAR____TtC9PassKitUI29BankConnectEntryPointFlowItem_manager] = v12;
      v14 = v12;

      [v14 setDelegate_];
      a3(0, 0, 0, 0);

      return;
    }
  }

  a3(0xD000000000000036, 0x80000001BE148D20, 0, 1);
}

void sub_1BDA56320(void (*a1)(uint64_t))
{
  v3 = sub_1BE04D214();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v24 - v10;
  v12 = *(v1 + OBJC_IVAR____TtC9PassKitUI29BankConnectEntryPointFlowItem_manager);
  if (v12)
  {
    v13 = v12;
    v14 = [v13 rootStep];
    v15 = [v13 viewControllerForStep_];
    if (v15)
    {
      *(v1 + OBJC_IVAR____TtC9PassKitUI29BankConnectEntryPointFlowItem_step) = v14;
      v16 = *(v1 + OBJC_IVAR____TtC9PassKitUI29BankConnectEntryPointFlowItem_viewController);
      *(v1 + OBJC_IVAR____TtC9PassKitUI29BankConnectEntryPointFlowItem_viewController) = v15;
      v25 = v15;

      a1(1);
      v17 = v25;
    }

    else
    {
      sub_1BE04D0B4();
      v21 = sub_1BE04D204();
      v22 = sub_1BE052C34();
      if (os_log_type_enabled(v21, v22))
      {
        v23 = swift_slowAlloc();
        *v23 = 134217984;
        *(v23 + 4) = v14;
        _os_log_impl(&dword_1BD026000, v21, v22, "Failed to build a view controller for the root step %ld.", v23, 0xCu);
        MEMORY[0x1BFB45F20](v23, -1, -1);
      }

      (*(v4 + 8))(v11, v3);
      a1(0);
    }
  }

  else
  {
    sub_1BE04D0B4();
    v18 = sub_1BE04D204();
    v19 = sub_1BE052C34();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      MEMORY[0x1BFB45F20](v20, -1, -1);
    }

    (*(v4 + 8))(v7, v3);
    a1(0);
  }
}

uint64_t sub_1BDA56610()
{
  v1 = *(v0 + OBJC_IVAR____TtC9PassKitUI29BankConnectEntryPointFlowItem_identifier);
  sub_1BE048C84();
  return v1;
}

uint64_t sub_1BDA5664C(uint64_t a1, uint64_t a2)
{
  *(v2 + OBJC_IVAR____TtC9PassKitUI29BankConnectEntryPointFlowItem_delegate + 8) = a2;
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

void *sub_1BDA566A0()
{
  v1 = *(v0 + OBJC_IVAR____TtC9PassKitUI29BankConnectEntryPointFlowItem_viewController);
  v2 = v1;
  return v1;
}

uint64_t sub_1BDA56774(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_1BD0F985C;

  return sub_1BDA55418(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1BDA56850(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3E580);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BDA568C0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3E580);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1BDA56A38()
{
  v1 = v0;
  v2 = *&v0[OBJC_IVAR____TtC9PassKitUI42ProvisioningVerificationCardReaderFlowItem_verificationController];
  v3 = [v2 pass];
  if (!v3)
  {
    return 2;
  }

  v4 = v3;
  v5 = *&v1[OBJC_IVAR____TtC9PassKitUI42ProvisioningVerificationCardReaderFlowItem_context];
  v6 = objc_allocWithZone(MEMORY[0x1E69B8E38]);
  sub_1BE048964();
  v7 = v4;
  v8 = [v6 init];
  KeyPath = swift_getKeyPath();
  v10 = sub_1BD1877A4(v1, KeyPath);

  v11 = objc_allocWithZone(type metadata accessor for ProvisioningVerificationCardReaderViewController());
  *&v11[OBJC_IVAR____TtC9PassKitUI48ProvisioningVerificationCardReaderViewController_delegate + 8] = 0;
  v12 = swift_unknownObjectWeakInit();
  *&v11[OBJC_IVAR____TtC9PassKitUI48ProvisioningVerificationCardReaderViewController_coordinator] = 0;
  *&v11[OBJC_IVAR____TtC9PassKitUI48ProvisioningVerificationCardReaderViewController_pass] = v7;
  v11[OBJC_IVAR____TtC9PassKitUI48ProvisioningVerificationCardReaderViewController_showChangeMethodButton] = (v10 & 1) == 0;
  *(v12 + 8) = &off_1F3BCE230;
  swift_unknownObjectWeakAssign();
  sub_1BE052434();
  sub_1BE048964();
  v13 = v7;
  v14 = sub_1BE04BB74();

  sub_1BD376B24(v5, v8, v14);
  v16 = v15;

  v17 = *&v1[OBJC_IVAR____TtC9PassKitUI42ProvisioningVerificationCardReaderFlowItem_methodGroup];
  v18 = *&v1[OBJC_IVAR____TtC9PassKitUI42ProvisioningVerificationCardReaderFlowItem_methods];
  type metadata accessor for ProvisioningVerificationPerformController();
  v19 = swift_allocObject();
  *(v19 + 56) = 0;
  swift_unknownObjectWeakInit();
  *(v19 + 64) = 0;
  v20 = v2;
  v21 = v17;
  sub_1BE048C84();

  v22 = MEMORY[0x1E69E7CC0];
  *(v19 + 112) = 0;
  *(v19 + 72) = v22;
  *(v19 + 80) = 0;
  *(v19 + 88) = 0;
  *(v19 + 96) = 0;
  swift_unknownObjectWeakInit();
  *(v19 + 120) = 4;
  *(v19 + 16) = v5;
  *(v19 + 24) = v20;
  *(v19 + 32) = v21;
  *(v19 + 40) = v18;
  *(v19 + 56) = &off_1F3BCE220;
  swift_unknownObjectWeakAssign();
  *(v16 + OBJC_IVAR____TtC9PassKitUI48ProvisioningVerificationCardReaderViewController_coordinator) = v19;
  sub_1BE048964();

  *(v19 + 112) = &off_1F3BB3808;
  swift_unknownObjectWeakAssign();

  return v16;
}

uint64_t sub_1BDA56CC8()
{
  v1 = *(v0 + OBJC_IVAR____TtC9PassKitUI42ProvisioningVerificationCardReaderFlowItem_identifier);
  sub_1BE048C84();
  return v1;
}

uint64_t sub_1BDA56D04(uint64_t a1, uint64_t a2)
{
  *(v2 + OBJC_IVAR____TtC9PassKitUI42ProvisioningVerificationCardReaderFlowItem_delegate + 8) = a2;
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

uint64_t sub_1BDA56D50(uint64_t (*a1)(unint64_t, unint64_t, void, uint64_t))
{
  if (PKEnableGroupVerificationMethods())
  {
    v2 = 0;
    v3 = 0;
    v4 = 0;
  }

  else
  {
    v3 = 0x80000001BE148DE0;
    v2 = 0xD00000000000001BLL;
    v4 = 1;
  }

  return a1(v2, v3, 0, v4);
}

uint64_t type metadata accessor for BillingAddressEditor()
{
  result = qword_1EBD5CB98;
  if (!qword_1EBD5CB98)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1BDA56E40()
{
  sub_1BDA56FC4(319, &qword_1EBD365F8, type metadata accessor for AvailablePass);
  if (v0 <= 0x3F)
  {
    sub_1BD127BD0(319, &qword_1EBD4D0C8, &type metadata for BankAccount, MEMORY[0x1E69E6720]);
    if (v1 <= 0x3F)
    {
      sub_1BDA56FC4(319, &qword_1EBD4FCB8, sub_1BD0E8CBC);
      if (v2 <= 0x3F)
      {
        sub_1BD1030A8();
        if (v3 <= 0x3F)
        {
          sub_1BDA57018();
          if (v4 <= 0x3F)
          {
            sub_1BD127BD0(319, &qword_1EBD496E0, MEMORY[0x1E69E6370], MEMORY[0x1E6981790]);
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

void sub_1BDA56FC4(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

void sub_1BDA57018()
{
  if (!qword_1EBD5CBA8)
  {
    type metadata accessor for AddressEditingModel();
    sub_1BDA5AB04(&qword_1EBD40EB0, type metadata accessor for AddressEditingModel);
    v0 = sub_1BE04E3E4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBD5CBA8);
    }
  }
}

uint64_t sub_1BDA570C8()
{
  v0 = sub_1BE04B0F4();
  MEMORY[0x1EEE9AC00](v0 - 8, v1);
  v3 = &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BE04B0A4();
  type metadata accessor for AddressEditingModel();
  swift_allocObject();
  return sub_1BD840B14(v3);
}

uint64_t sub_1BDA57154@<X0>(uint64_t a1@<X8>)
{
  v57 = a1;
  v2 = type metadata accessor for BillingAddressEditor();
  v56 = *(v2 - 8);
  v55 = *(v56 + 64);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v54 = v43 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1BE04FE84();
  v6 = *(v5 - 8);
  v52 = v5;
  v53 = v6;
  MEMORY[0x1EEE9AC00](v5, v7);
  v51 = v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1BE04FFF4();
  v47 = *(v9 - 8);
  v48 = v9;
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5CBB0);
  v44 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13, v14);
  v16 = v43 - v15;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5CBB8);
  v49 = *(v46 - 8);
  MEMORY[0x1EEE9AC00](v46, v17);
  v19 = v43 - v18;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5CBC0);
  MEMORY[0x1EEE9AC00](v50, v20);
  v22 = v43 - v21;
  v58 = v1;
  v43[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5CBC8);
  v43[0] = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD5CBD0);
  v23 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD5CA10);
  v24 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD5CBD8);
  v25 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD5CBE0);
  v26 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD5CBE8);
  v27 = sub_1BDA59D68();
  v28 = sub_1BDA59E4C();
  v59 = v26;
  v60 = &type metadata for BillingAddressSearch;
  v61 = v27;
  v62 = v28;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v30 = sub_1BD0DDEBC();
  v59 = v25;
  v60 = MEMORY[0x1E69E6158];
  v61 = OpaqueTypeConformance2;
  v62 = v30;
  v31 = swift_getOpaqueTypeConformance2();
  v59 = v24;
  v60 = v31;
  v32 = swift_getOpaqueTypeConformance2();
  v33 = sub_1BD0DE4F4(&qword_1EBD5CA48, &qword_1EBD5CA10);
  v59 = v43[0];
  v60 = v23;
  v61 = v32;
  v62 = v33;
  swift_getOpaqueTypeConformance2();
  sub_1BE04E934();
  sub_1BE04FFE4();
  v34 = sub_1BD0DE4F4(&qword_1EBD5CC10, &qword_1EBD5CBB0);
  sub_1BE050E04();
  (*(v47 + 8))(v12, v48);
  (*(v44 + 8))(v16, v13);
  v35 = v51;
  sub_1BE04FE74();
  v59 = v13;
  v60 = v34;
  swift_getOpaqueTypeConformance2();
  sub_1BDA5AB04(&qword_1EBD39E50, MEMORY[0x1E697C938]);
  v36 = v46;
  v37 = v52;
  sub_1BE0507D4();
  (*(v53 + 8))(v35, v37);
  (*(v49 + 8))(v19, v36);
  v38 = v54;
  sub_1BDA5A424(v45, v54, type metadata accessor for BillingAddressEditor);
  v39 = (*(v56 + 80) + 16) & ~*(v56 + 80);
  v40 = swift_allocObject();
  sub_1BDA59EA0(v38, v40 + v39);
  v41 = &v22[*(v50 + 36)];
  *v41 = sub_1BDA59F04;
  v41[1] = v40;
  v41[2] = 0;
  v41[3] = 0;
  sub_1BE052434();
  sub_1BDA59F1C();
  sub_1BE050DE4();

  return sub_1BD0D0240(v22);
}

id sub_1BDA57834@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v72 = a2;
  v3 = sub_1BE04F434();
  v69 = *(v3 - 8);
  v70 = v3;
  MEMORY[0x1EEE9AC00](v3, v4);
  v68 = &v59 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = sub_1BE04BD74();
  v76 = *(v74 - 8);
  MEMORY[0x1EEE9AC00](v74, v6);
  v75 = &v59 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for BillingAddressEditor();
  v9 = v8 - 8;
  v73 = *(v8 - 8);
  v10 = *(v73 + 64);
  MEMORY[0x1EEE9AC00](v8, v11);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5CBE8);
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = &v59 - v14;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5CBE0);
  v60 = *(v62 - 8);
  MEMORY[0x1EEE9AC00](v62, v16);
  v18 = &v59 - v17;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5CBD8);
  v63 = *(v64 - 8);
  MEMORY[0x1EEE9AC00](v64, v19);
  v61 = &v59 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5CBD0);
  v66 = *(v21 - 8);
  v67 = v21;
  MEMORY[0x1EEE9AC00](v21, v22);
  v65 = &v59 - v23;
  v77 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5CC20);
  sub_1BD0DE4F4(&qword_1EBD5CC28, &qword_1EBD5CC20);
  sub_1BE0504A4();
  v24 = sub_1BE051274();
  v25 = sub_1BE0501D4();
  v26 = sub_1BE051CD4();
  v27 = &v15[*(v12 + 36)];
  *v27 = v24;
  v27[8] = v25;
  *(v27 + 2) = v26;
  *(v27 + 3) = v28;
  v29 = a1 + *(v9 + 52);
  v30 = *v29;
  v31 = *(v29 + 8);
  LOBYTE(v82) = v30;
  v83 = v31;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54350);
  sub_1BE0516C4();
  v71 = a1;
  sub_1BDA5A424(a1, &v59 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for BillingAddressEditor);
  v32 = (*(v73 + 80) + 16) & ~*(v73 + 80);
  v33 = swift_allocObject() + v32;
  v34 = v74;
  sub_1BDA59EA0(&v59 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v33);
  v35 = sub_1BDA59D68();
  v36 = sub_1BDA59E4C();
  sub_1BE051114();

  v37 = v75;

  v38 = v15;
  v39 = v76;
  sub_1BD0DE53C(v38, &qword_1EBD5CBE8);
  (*(v39 + 104))(v37, *MEMORY[0x1E69B8068], v34);
  result = PKPassKitBundle();
  if (result)
  {
    v41 = result;
    v42 = sub_1BE04B6F4();
    v44 = v43;

    (*(v39 + 8))(v37, v34);
    v82 = v42;
    v83 = v44;
    v78 = v12;
    v79 = &type metadata for BillingAddressSearch;
    v80 = v35;
    v81 = v36;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v46 = sub_1BD0DDEBC();
    v47 = MEMORY[0x1E69E6158];
    v48 = v61;
    v49 = v62;
    sub_1BE050B74();

    (*(v60 + 8))(v18, v49);
    v51 = v68;
    v50 = v69;
    v52 = v70;
    (*(v69 + 104))(v68, *MEMORY[0x1E697C438], v70);
    v78 = v49;
    v79 = v47;
    v80 = OpaqueTypeConformance2;
    v81 = v46;
    v53 = swift_getOpaqueTypeConformance2();
    v54 = v65;
    v55 = v64;
    sub_1BE050E84();
    (*(v50 + 8))(v51, v52);
    v56 = (*(v63 + 8))(v48, v55);
    MEMORY[0x1EEE9AC00](v56, v57);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5CA10);
    v78 = v55;
    v79 = v53;
    swift_getOpaqueTypeConformance2();
    sub_1BD0DE4F4(&qword_1EBD5CA48, &qword_1EBD5CA10);
    v58 = v67;
    sub_1BE051024();
    return (*(v66 + 8))(v54, v58);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1BDA5807C@<X0>(void (*a1)(char *, char *, uint64_t)@<X0>, uint64_t a2@<X8>)
{
  v66 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5CA78);
  v67 = *(v3 - 8);
  v68 = v3;
  MEMORY[0x1EEE9AC00](v3, v4);
  v73 = &v64 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v72 = &v64 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5CA80);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v11);
  v71 = &v64 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13, v14);
  v70 = &v64 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD520A0);
  MEMORY[0x1EEE9AC00](v16 - 8, v17);
  v19 = &v64 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD43B90);
  MEMORY[0x1EEE9AC00](v20 - 8, v21);
  v23 = &v64 - v22;
  v24 = type metadata accessor for PassHeaderView();
  MEMORY[0x1EEE9AC00](v24, v25);
  v69 = &v64 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27, v28);
  v30 = &v64 - v29;
  v31 = type metadata accessor for BillingAddressEditor();
  sub_1BD0DE19C(a1 + v31[5], v19, &qword_1EBD520A0);
  v32 = type metadata accessor for AvailablePass(0);
  if ((*(*(v32 - 8) + 48))(v19, 1, v32) == 1)
  {
    sub_1BD0DE53C(v19, &qword_1EBD520A0);
    v33 = 1;
  }

  else
  {
    sub_1BDA5A424(v19, v23, type metadata accessor for WrappedPass);
    sub_1BDA5A48C(v19, type metadata accessor for AvailablePass);
    v33 = 0;
  }

  v34 = type metadata accessor for WrappedPass(0);
  (*(*(v34 - 8) + 56))(v23, v33, 1, v34);
  v35 = a1 + v31[6];
  v37 = *v35;
  v36 = *(v35 + 1);
  v38 = *(a1 + v31[12]);
  sub_1BD0DE19C(v23, v30, &unk_1EBD43B90);
  v39 = &v30[v24[5]];
  *v39 = v37;
  *(v39 + 1) = v36;
  v40 = &v30[v24[6]];
  *v40 = 0;
  *(v40 + 1) = 0;
  v41 = &v30[v24[7]];
  *v41 = 0;
  *(v41 + 1) = 0;
  sub_1BD3EFCD8(v37, v36);
  v42 = sub_1BD0DE53C(v23, &unk_1EBD43B90);
  *&v30[v24[8]] = v38;
  v65 = v30;
  MEMORY[0x1EEE9AC00](v42, v43);
  *(&v64 - 2) = a1;
  sub_1BDA536E0();
  v44 = v70;
  v45 = sub_1BE051A44();
  MEMORY[0x1EEE9AC00](v45, v46);
  *(&v64 - 2) = a1;
  sub_1BDA5373C();
  v47 = v72;
  sub_1BE051A44();
  v48 = v30;
  v49 = v69;
  sub_1BDA5A424(v48, v69, type metadata accessor for PassHeaderView);
  v64 = *(v10 + 16);
  v50 = v71;
  v64(v71, v44, v9);
  v51 = v67;
  v52 = *(v67 + 16);
  v53 = v47;
  v54 = v68;
  v52(v73, v53, v68);
  v55 = v49;
  v56 = v9;
  v57 = v66;
  sub_1BDA5A424(v55, v66, type metadata accessor for PassHeaderView);
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5CC30);
  v64((v57 + *(v58 + 48)), v50, v56);
  v59 = v57 + *(v58 + 64);
  v60 = v73;
  v52(v59, v73, v54);
  v61 = *(v51 + 8);
  v61(v72, v54);
  v62 = *(v10 + 8);
  v62(v70, v56);
  sub_1BDA5A48C(v65, type metadata accessor for PassHeaderView);
  v61(v60, v54);
  v62(v71, v56);
  return sub_1BDA5A48C(v69, type metadata accessor for PassHeaderView);
}

double sub_1BDA586F0@<D0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  type metadata accessor for BillingAddressEditor();
  type metadata accessor for AddressEditingModel();
  sub_1BDA5AB04(&qword_1EBD40EB0, type metadata accessor for AddressEditingModel);
  sub_1BE04E3D4();
  swift_getKeyPath();
  sub_1BE04E974();

  *&v19[167] = v15;
  *&v19[183] = v16;
  *&v19[199] = v17;
  *&v19[215] = v18;
  *&v19[103] = v11;
  *&v19[119] = v12;
  *&v19[135] = v13;
  *&v19[151] = v14;
  *&v19[39] = v7;
  *&v19[55] = v8;
  *&v19[71] = v9;
  *&v19[87] = v10;
  *&v19[7] = v5;
  *&v19[23] = v6;
  *(a2 + 177) = *&v19[176];
  *(a2 + 193) = *&v19[192];
  *(a2 + 209) = *&v19[208];
  *(a2 + 113) = *&v19[112];
  *(a2 + 129) = *&v19[128];
  *(a2 + 145) = *&v19[144];
  *(a2 + 161) = *&v19[160];
  *(a2 + 49) = *&v19[48];
  *(a2 + 65) = *&v19[64];
  *(a2 + 81) = *&v19[80];
  *(a2 + 97) = *&v19[96];
  result = *v19;
  *(a2 + 1) = *v19;
  *(a2 + 17) = *&v19[16];
  *a2 = v3;
  *(a2 + 224) = *(&v18 + 1);
  *(a2 + 33) = *&v19[32];
  return result;
}