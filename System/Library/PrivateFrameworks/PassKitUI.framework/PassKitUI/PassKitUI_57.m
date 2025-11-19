uint64_t sub_1BD6393AC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1BD0F985C;

  return sub_1BD638568();
}

unint64_t sub_1BD63945C()
{
  result = qword_1EBD3D270;
  if (!qword_1EBD3D270)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EBD3D270);
  }

  return result;
}

unint64_t sub_1BD6394A8()
{
  result = qword_1EBD4DC60;
  if (!qword_1EBD4DC60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4DC68);
    sub_1BD638FE4();
    sub_1BD639564(&qword_1EBD52210, MEMORY[0x1E697CBE8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4DC60);
  }

  return result;
}

uint64_t sub_1BD639564(unint64_t *a1, void (*a2)(uint64_t))
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

id sub_1BD6395BC(void *a1)
{
  v2 = sub_1BE04A264();
  v3 = *(v2 - 8);
  v5 = MEMORY[0x1EEE9AC00](v2, v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = [a1 paymentRequest];
  if (!result)
  {
    __break(1u);
LABEL_14:
    __break(1u);
    return result;
  }

  v9 = result;
  v10 = [result requestType];

  if (v10 != 5)
  {
    return 0;
  }

  result = [a1 paymentSummaryItems];
  if (!result)
  {
    goto LABEL_14;
  }

  v11 = result;
  v12 = sub_1BE052744();

  if (!*(v12 + 16))
  {
LABEL_10:

    return 0;
  }

  sub_1BD038CD0(v12 + 32, v22);

  sub_1BD639828();
  if (swift_dynamicCast())
  {
    v13 = v21;
    v14 = [v21 label];
    v15 = sub_1BE052434();
    v17 = v16;

    v22[0] = v15;
    v22[1] = v17;
    sub_1BE04A254();
    sub_1BD0DDEBC();
    v18 = sub_1BE053524();
    (*(v3 + 8))(v7, v2);

    if (*(v18 + 16))
    {
      v19 = *(v18 + 32);
      sub_1BE048C84();
      sub_1BE048C84();

      return v19;
    }

    goto LABEL_10;
  }

  return 0;
}

unint64_t sub_1BD639828()
{
  result = qword_1EBD3D4A0;
  if (!qword_1EBD3D4A0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EBD3D4A0);
  }

  return result;
}

uint64_t sub_1BD639874(uint64_t *a1)
{
  v2 = sub_1BE04C744();
  v4 = MEMORY[0x1EEE9AC00](v2, v3);
  v9 = *a1;
  (*(v6 + 104))(&v8[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)], *MEMORY[0x1E69BC940], v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4DC90);
  sub_1BD0DE4F4(&qword_1EBD4DC98, &qword_1EBD4DC90);
  return sub_1BE04C6A4();
}

uint64_t sub_1BD6399F0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = sub_1BE04F504();
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4DCA0);
  return sub_1BD639A48(a1, a2 + *(v4 + 44));
}

uint64_t sub_1BD639A48@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39C38);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v26[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = MEMORY[0x1EEE9AC00](v9, v10);
  v13 = &v26[-v12];
  v27 = [a1 isCentered];
  v14 = [a1 title];
  if (v14)
  {
    v15 = v14;
    v16 = [v14 string];

    sub_1BE052434();
  }

  v17 = [a1 label];
  if (v17)
  {
    v18 = v17;
    v19 = [v17 string];

    sub_1BE052434();
  }

  sub_1BE051224();
  sub_1BE04C644();
  v20 = *(v5 + 16);
  v20(v8, v13, v4);
  *a2 = 0;
  v21 = v27;
  *(a2 + 8) = v27;
  *(a2 + 9) = v21 ^ 1;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4DCA8);
  v20((a2 + *(v22 + 48)), v8, v4);
  v23 = a2 + *(v22 + 64);
  *v23 = 0;
  *(v23 + 8) = 1;
  v24 = *(v5 + 8);
  v24(v13, v4);
  return (v24)(v8, v4);
}

uint64_t sub_1BD639CC8()
{
  swift_getKeyPath();
  sub_1BE048C84();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54D80);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4DC70);
  sub_1BD0DE4F4(&qword_1EBD4DC78, &qword_1EBD54D80);
  sub_1BD63A040();
  sub_1BD0DE4F4(&qword_1EBD4DC88, &qword_1EBD4DC70);
  return sub_1BE0519C4();
}

uint64_t sub_1BD639E00@<X0>(void *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();

  *a1 = v3;
  return result;
}

uint64_t sub_1BD639E80()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE048C84();
  sub_1BE048964();
  return sub_1BE04D8C4();
}

unint64_t sub_1BD639EFC()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();

  if (v2 >> 62)
  {
    v0 = sub_1BE053704();
  }

  else
  {
    v0 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v0 < 1)
  {

    return 0;
  }

  else
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_1BE04D8B4();

    return v2;
  }
}

unint64_t sub_1BD63A040()
{
  result = qword_1EBD4DC80;
  if (!qword_1EBD4DC80)
  {
    sub_1BD63A098();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4DC80);
  }

  return result;
}

unint64_t sub_1BD63A098()
{
  result = qword_1EBD54DB0;
  if (!qword_1EBD54DB0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EBD54DB0);
  }

  return result;
}

unint64_t sub_1BD63A0EC()
{
  result = qword_1EBD4DCB0;
  if (!qword_1EBD4DCB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4DCB8);
    sub_1BD0DE4F4(&qword_1EBD4DC88, &qword_1EBD4DC70);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4DCB0);
  }

  return result;
}

id sub_1BD63A19C()
{
  v1 = sub_1BE04BD74();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1, v3);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v6, v7);
  v10 = &v18 - v9;
  result = [*(*(v0 + 48) + *((*MEMORY[0x1E69E7D40] & **(v0 + 48)) + 0xD0)) paymentRequest];
  if (!result)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v12 = result;
  v13 = [result requestType];

  v14 = *MEMORY[0x1E69B8058];
  v15 = *(v2 + 104);
  if (v13 == 14)
  {
    v15(v10, v14, v1);
    result = PKPassKitBundle();
    if (result)
    {
      v16 = result;
      v17 = sub_1BE04B6F4();
LABEL_7:

      (*(v2 + 8))(v10, v1);
      return v17;
    }

    goto LABEL_9;
  }

  v15(v5, v14, v1);
  result = PKPassKitBundle();
  if (result)
  {
    v16 = result;
    v17 = sub_1BE04B6F4();
    v10 = v5;
    goto LABEL_7;
  }

LABEL_10:
  __break(1u);
  return result;
}

double sub_1BD63A3D4@<D0>(uint64_t a1@<X8>)
{
  v2 = sub_1BE04F504();
  v24 = 1;
  sub_1BD63AAC8(&v11);
  v33 = v19;
  v34 = v20;
  v35 = v21;
  v29 = v15;
  v30 = v16;
  v31 = v17;
  v32 = v18;
  v25 = v11;
  v26 = v12;
  v27 = v13;
  v28 = v14;
  v37[8] = v19;
  v37[9] = v20;
  v37[10] = v21;
  v37[4] = v15;
  v37[5] = v16;
  v37[6] = v17;
  v37[7] = v18;
  v37[0] = v11;
  v37[1] = v12;
  v36 = v22;
  v38 = v22;
  v37[2] = v13;
  v37[3] = v14;
  sub_1BD0DE19C(&v25, &v10, &qword_1EBD4DCD0);
  sub_1BD0DE53C(v37, &qword_1EBD4DCD0);
  *&v23[135] = v33;
  *&v23[151] = v34;
  *&v23[167] = v35;
  *&v23[71] = v29;
  *&v23[87] = v30;
  *&v23[103] = v31;
  *&v23[119] = v32;
  *&v23[7] = v25;
  *&v23[23] = v26;
  *&v23[39] = v27;
  *&v23[55] = v28;
  v3 = *&v23[144];
  *(a1 + 145) = *&v23[128];
  *(a1 + 161) = v3;
  *(a1 + 177) = *&v23[160];
  v4 = *&v23[80];
  *(a1 + 81) = *&v23[64];
  *(a1 + 97) = v4;
  v5 = *&v23[112];
  *(a1 + 113) = *&v23[96];
  *(a1 + 129) = v5;
  v6 = *&v23[16];
  *(a1 + 17) = *v23;
  *(a1 + 33) = v6;
  result = *&v23[32];
  v8 = *&v23[48];
  *(a1 + 49) = *&v23[32];
  v23[183] = v36;
  v9 = v24;
  *a1 = v2;
  *(a1 + 8) = 0;
  *(a1 + 16) = v9;
  *(a1 + 193) = *&v23[176];
  *(a1 + 65) = v8;
  return result;
}

uint64_t sub_1BD63A57C@<X0>(uint64_t *a1@<X8>)
{
  v1 = a1;
  *a1 = sub_1BE04F7B4();
  v1[1] = 0;
  *(v1 + 16) = 0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4DCC0);
  sub_1BD63A618(v1 + *(v2 + 44));
  v3 = v1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4DCC8) + 36);
  sub_1BE051BD4();
  LOBYTE(v1) = sub_1BE0501D4();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD596C0);
  v3[*(result + 36)] = v1;
  return result;
}

uint64_t sub_1BD63A618@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD42B98);
  v3 = v2 - 8;
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v37 - v9;
  sub_1BE051984();
  *&v10[*(v3 + 44)] = 0x3FE0000000000000;
  v38 = sub_1BE04F504();
  v53 = 1;
  sub_1BD63AAC8(&v43);
  v62 = *&v44[112];
  v63 = *&v44[128];
  v64 = *&v44[144];
  v58 = *&v44[48];
  v59 = *&v44[64];
  v60 = *&v44[80];
  v61 = *&v44[96];
  v54 = v43;
  v55 = *v44;
  v56 = *&v44[16];
  v57 = *&v44[32];
  v66[8] = *&v44[112];
  v66[9] = *&v44[128];
  v66[10] = *&v44[144];
  v66[4] = *&v44[48];
  v66[5] = *&v44[64];
  v66[6] = *&v44[80];
  v66[7] = *&v44[96];
  v66[0] = v43;
  v66[1] = *v44;
  v65 = v44[160];
  v67 = v44[160];
  v66[2] = *&v44[16];
  v66[3] = *&v44[32];
  sub_1BD0DE19C(&v54, &v39, &qword_1EBD4DCD0);
  sub_1BD0DE53C(v66, &qword_1EBD4DCD0);
  *&v52[135] = v62;
  *&v52[151] = v63;
  *&v52[167] = v64;
  *&v52[71] = v58;
  *&v52[87] = v59;
  *&v52[103] = v60;
  *&v52[119] = v61;
  *&v52[7] = v54;
  *&v52[23] = v55;
  *&v52[39] = v56;
  v52[183] = v65;
  *&v52[55] = v57;
  v11 = v53;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39148);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1BE0B6CA0;
  v13 = sub_1BE0501E4();
  *(v12 + 32) = v13;
  v14 = sub_1BE0501F4();
  *(v12 + 33) = v14;
  v15 = sub_1BE050214();
  sub_1BE050214();
  if (sub_1BE050214() != v13)
  {
    v15 = sub_1BE050214();
  }

  sub_1BE050214();
  if (sub_1BE050214() != v14)
  {
    v15 = sub_1BE050214();
  }

  sub_1BE04E1F4();
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v53 = 0;
  sub_1BD0DE19C(v10, v6, &qword_1EBD42B98);
  sub_1BD0DE19C(v6, a1, &qword_1EBD42B98);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4DCD8);
  v25 = a1 + v24[12];
  *v25 = 0;
  *(v25 + 8) = 1;
  v26 = (a1 + v24[16]);
  v37 = v6;
  v27 = v38;
  v39 = v38;
  LOBYTE(v40[0]) = v11;
  *(&v40[1] + 1) = *&v52[16];
  *(v40 + 1) = *v52;
  *(&v40[8] + 1) = *&v52[128];
  *(&v40[9] + 1) = *&v52[144];
  *(&v40[10] + 1) = *&v52[160];
  *(&v40[11] + 1) = *&v52[176];
  *(&v40[4] + 1) = *&v52[64];
  *(&v40[5] + 1) = *&v52[80];
  *(&v40[6] + 1) = *&v52[96];
  *(&v40[7] + 1) = *&v52[112];
  *(&v40[2] + 1) = *&v52[32];
  *(&v40[3] + 1) = *&v52[48];
  LOBYTE(v41) = v15;
  *(&v41 + 1) = v17;
  *&v42[0] = v19;
  *(&v42[0] + 1) = v21;
  *&v42[1] = v23;
  BYTE8(v42[1]) = 0;
  v28 = v40[8];
  v26[8] = v40[7];
  v26[9] = v28;
  v29 = v40[10];
  v26[10] = v40[9];
  v26[11] = v29;
  v30 = v40[4];
  v26[4] = v40[3];
  v26[5] = v30;
  v31 = v40[6];
  v26[6] = v40[5];
  v26[7] = v31;
  v32 = v40[0];
  *v26 = v39;
  v26[1] = v32;
  v33 = v40[2];
  v26[2] = v40[1];
  v26[3] = v33;
  v34 = v41;
  v26[12] = v40[11];
  v26[13] = v34;
  v26[14] = v42[0];
  *(v26 + 233) = *(v42 + 9);
  v35 = a1 + v24[20];
  *v35 = 0;
  *(v35 + 8) = 1;
  sub_1BD0DE19C(&v39, &v43, &qword_1EBD4DCE0);
  sub_1BD0DE53C(v10, &qword_1EBD42B98);
  *&v44[129] = *&v52[128];
  *&v44[145] = *&v52[144];
  *&v44[161] = *&v52[160];
  *&v44[65] = *&v52[64];
  *&v44[81] = *&v52[80];
  *&v44[97] = *&v52[96];
  *&v44[113] = *&v52[112];
  *&v44[1] = *v52;
  *&v44[17] = *&v52[16];
  *&v44[33] = *&v52[32];
  v43 = v27;
  v44[0] = v11;
  v45 = *&v52[176];
  *&v44[49] = *&v52[48];
  v46 = v15;
  v47 = v17;
  v48 = v19;
  v49 = v21;
  v50 = v23;
  v51 = 0;
  sub_1BD0DE53C(&v43, &qword_1EBD4DCE0);
  return sub_1BD0DE53C(v37, &qword_1EBD42B98);
}

uint64_t sub_1BD63AAC8@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1BE04F7C4();
  v50 = 0;
  sub_1BD63ADEC(&v25);
  v54 = v27;
  v55 = v28;
  v56[0] = v29[0];
  *(v56 + 9) = *(v29 + 9);
  v52 = v25;
  v53 = v26;
  *(v58 + 9) = *(v29 + 9);
  v57[2] = v27;
  v57[3] = v28;
  v58[0] = v29[0];
  v57[0] = v25;
  v57[1] = v26;
  sub_1BD0DE19C(&v52, v35, &qword_1EBD4DCE8);
  sub_1BD0DE53C(v57, &qword_1EBD4DCE8);
  *(&v49[2] + 7) = v54;
  *(&v49[3] + 7) = v55;
  *(&v49[4] + 7) = v56[0];
  v49[5] = *(v56 + 9);
  *(v49 + 7) = v52;
  *(&v49[1] + 7) = v53;
  v3 = v50;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39148);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1BE0B6CA0;
  v5 = sub_1BE050204();
  *(v4 + 32) = v5;
  v6 = sub_1BE050224();
  *(v4 + 33) = v6;
  v7 = sub_1BE050214();
  sub_1BE050214();
  if (sub_1BE050214() != v5)
  {
    v7 = sub_1BE050214();
  }

  sub_1BE050214();
  if (sub_1BE050214() != v6)
  {
    v7 = sub_1BE050214();
  }

  sub_1BE04E1F4();
  v51 = 0;
  *&v20 = v2;
  *(&v20 + 1) = 0x4000000000000000;
  v21[0] = v3;
  *&v21[33] = v49[2];
  *&v21[49] = v49[3];
  *&v21[65] = v49[4];
  *&v21[81] = v49[5];
  *&v21[1] = v49[0];
  *&v21[17] = v49[1];
  v21[104] = v7;
  *&v22 = v8;
  *(&v22 + 1) = v9;
  *&v23 = v10;
  *(&v23 + 1) = v11;
  v24 = 0;
  LOBYTE(v34) = 0;
  v32 = v22;
  v33 = v23;
  v25 = v20;
  v26 = *v21;
  v30 = *&v21[80];
  v31 = *&v21[96];
  v29[0] = *&v21[48];
  v29[1] = *&v21[64];
  v27 = *&v21[16];
  v28 = *&v21[32];
  v19[168] = 1;
  v12 = v23;
  *(a1 + 128) = v22;
  *(a1 + 144) = v12;
  v13 = v34;
  v14 = v29[1];
  *(a1 + 64) = v29[0];
  *(a1 + 80) = v14;
  v15 = v31;
  *(a1 + 96) = v30;
  *(a1 + 112) = v15;
  v16 = v26;
  *a1 = v25;
  *(a1 + 16) = v16;
  v17 = v28;
  *(a1 + 32) = v27;
  *(a1 + 48) = v17;
  *(a1 + 160) = v13;
  *(a1 + 168) = 0;
  *(a1 + 176) = 1;
  v35[0] = v2;
  v35[1] = 0x4000000000000000;
  v36 = v3;
  v39 = v49[2];
  v40 = v49[3];
  v41 = v49[4];
  v42 = v49[5];
  v37 = v49[0];
  v38 = v49[1];
  v43 = v7;
  v44 = v8;
  v45 = v9;
  v46 = v10;
  v47 = v11;
  v48 = 0;
  sub_1BD0DE19C(&v20, v19, &qword_1EBD4DCF0);
  return sub_1BD0DE53C(v35, &qword_1EBD4DCF0);
}

id sub_1BD63ADEC@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1BE04BD74();
  v3 = *(v2 - 8);
  v66 = v2;
  v67 = v3;
  MEMORY[0x1EEE9AC00](v2, v4);
  v65 = &v58 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = sub_1BD63A19C();
  v71 = v6;
  v64 = sub_1BD0DDEBC();
  v7 = sub_1BE0506C4();
  v9 = v8;
  v11 = v10;
  sub_1BE0502C4();
  v12 = sub_1BE0505F4();
  v14 = v13;
  v16 = v15;

  sub_1BD0DDF10(v7, v9, v11 & 1);

  sub_1BE051234();
  v63 = sub_1BE050564();
  v18 = v17;
  v20 = v19;
  v22 = v21;

  v23 = v14;
  v24 = v66;
  sub_1BD0DDF10(v12, v23, v16 & 1);

  KeyPath = swift_getKeyPath();
  v26 = v67;
  v27 = v65;
  (*(v67 + 104))();
  result = PKPassKitBundle();
  if (result)
  {
    v29 = result;
    v59 = v20;
    v60 = KeyPath;
    v61 = v18;
    v62 = v22;
    v30 = v27;
    v31 = sub_1BE04B6F4();
    v33 = v32;

    (*(v26 + 8))(v30, v24);
    v70 = v31;
    v71 = v33;
    v34 = sub_1BE0506C4();
    v36 = v35;
    v38 = v37;
    result = PKFontForDesign(*MEMORY[0x1E69DB8D8], *MEMORY[0x1E69DDDB8], *MEMORY[0x1E69DDC90], 2, 0);
    if (result)
    {
      sub_1BE050484();
      v39 = sub_1BE0505F4();
      v41 = v40;
      v43 = v42;

      sub_1BD0DDF10(v34, v36, v38 & 1);

      sub_1BE0503A4();
      v44 = sub_1BE050544();
      v46 = v45;
      v48 = v47;
      v50 = v49;
      sub_1BD0DDF10(v39, v41, v43 & 1);

      v51 = swift_getKeyPath();
      v52 = v59 & 1;
      LOBYTE(v70) = v59 & 1;
      v69 = v59 & 1;
      LOBYTE(v41) = v48 & 1;
      v68 = v48 & 1;
      v53 = v48 & 1;
      v54 = v62;
      v55 = v63;
      v57 = v60;
      v56 = v61;
      *a1 = v63;
      *(a1 + 8) = v56;
      *(a1 + 16) = v52;
      *(a1 + 24) = v54;
      *(a1 + 32) = v57;
      *(a1 + 40) = 0;
      *(a1 + 48) = v44;
      *(a1 + 56) = v46;
      *(a1 + 64) = v53;
      *(a1 + 72) = v50;
      *(a1 + 80) = v51;
      *(a1 + 88) = 0;
      sub_1BD0D7F18(v55, v56, v52);
      sub_1BE048C84();
      sub_1BE048964();
      sub_1BD0D7F18(v44, v46, v41);
      sub_1BE048C84();
      sub_1BE048964();
      sub_1BD0DDF10(v44, v46, v41);

      sub_1BD0DDF10(v55, v56, v70);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1BD63B1FC(_BYTE *a1, _BYTE *a2)
{
  v2 = 0xEE00746E656D7961;
  v3 = 0x506D756D696E696DLL;
  v4 = *a1;
  v5 = 0x796150726568746FLL;
  v6 = 0xEC000000746E656DLL;
  if (v4 == 1)
  {
    v5 = 0x506D756D696E696DLL;
    v6 = 0xEE00746E656D7961;
  }

  if (*a1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0xD000000000000013;
  }

  if (v4)
  {
    v8 = v6;
  }

  else
  {
    v8 = 0x80000001BE117CF0;
  }

  if (*a2 != 1)
  {
    v3 = 0x796150726568746FLL;
    v2 = 0xEC000000746E656DLL;
  }

  if (*a2)
  {
    v9 = v3;
  }

  else
  {
    v9 = 0xD000000000000013;
  }

  if (*a2)
  {
    v10 = v2;
  }

  else
  {
    v10 = 0x80000001BE117CF0;
  }

  if (v7 == v9 && v8 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1BE053B84();
  }

  return v11 & 1;
}

unint64_t sub_1BD63B314()
{
  result = qword_1EBD4DCF8;
  if (!qword_1EBD4DCF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4DCF8);
  }

  return result;
}

uint64_t sub_1BD63B368()
{
  sub_1BE053D04();
  sub_1BE052524();

  return sub_1BE053D64();
}

uint64_t sub_1BD63B424()
{
  sub_1BE052524();
}

uint64_t sub_1BD63B4CC()
{
  sub_1BE053D04();
  sub_1BE052524();

  return sub_1BE053D64();
}

uint64_t sub_1BD63B584@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1BD63C450();
  *a1 = result;
  return result;
}

void sub_1BD63B5B4(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEE00746E656D7961;
  v4 = 0x506D756D696E696DLL;
  if (v2 != 1)
  {
    v4 = 0x796150726568746FLL;
    v3 = 0xEC000000746E656DLL;
  }

  v5 = v2 == 0;
  if (*v1)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xD000000000000013;
  }

  if (v5)
  {
    v3 = 0x80000001BE117CF0;
  }

  *a1 = v6;
  a1[1] = v3;
}

unint64_t sub_1BD63B630()
{
  result = qword_1EBD4DD00;
  if (!qword_1EBD4DD00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4DD00);
  }

  return result;
}

unint64_t sub_1BD63B688()
{
  result = qword_1EBD4DD08;
  if (!qword_1EBD4DD08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4DD08);
  }

  return result;
}

unint64_t sub_1BD63B6E0()
{
  result = qword_1EBD4DD10;
  if (!qword_1EBD4DD10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4DD10);
  }

  return result;
}

unint64_t sub_1BD63B738()
{
  result = qword_1EBD4DD18;
  if (!qword_1EBD4DD18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4DD18);
  }

  return result;
}

unint64_t sub_1BD63B78C()
{
  result = qword_1EBD4DD20;
  if (!qword_1EBD4DD20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4DD20);
  }

  return result;
}

unint64_t sub_1BD63B7E0()
{
  result = qword_1EBD4DD28;
  if (!qword_1EBD4DD28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4DD28);
  }

  return result;
}

unint64_t sub_1BD63B838()
{
  result = qword_1EBD4DD30;
  if (!qword_1EBD4DD30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4DD30);
  }

  return result;
}

uint64_t sub_1BD63B88C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD528E0);
  MEMORY[0x1EEE9AC00](v0 - 8, v1);
  v3 = &v9 - v2;
  v4 = sub_1BE04A884();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v7 = sub_1BE048E94();
  __swift_allocate_value_buffer(v7, qword_1EBDAB360);
  __swift_project_value_buffer(v7, qword_1EBDAB360);
  sub_1BE04A864();
  (*(v5 + 56))(v3, 1, 1, v4);
  return sub_1BE048E84();
}

uint64_t sub_1BD63BA04()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38B88);
  MEMORY[0x1EEE9AC00](v0 - 8, v1);
  v37 = v26 - v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD528E0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = v26 - v5;
  v7 = sub_1BE04B0F4();
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v9 = sub_1BE04A874();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1BE0523D4();
  MEMORY[0x1EEE9AC00](v14 - 8, v15);
  v39 = sub_1BE04A884();
  v34 = *(v39 - 8);
  MEMORY[0x1EEE9AC00](v39, v16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4DD68);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3BF08);
  v18 = (*(*(v17 - 8) + 80) + 32) & ~*(*(v17 - 8) + 80);
  v28 = *(*(v17 - 8) + 72);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_1BE0B98D0;
  v29 = v19;
  v36 = v17;
  v38 = v19 + v18;
  *(v19 + v18) = 0;
  sub_1BE052354();
  if (qword_1EBD36CF8 != -1)
  {
    swift_once();
  }

  v30 = __swift_project_value_buffer(v9, qword_1EBDAB400);
  v35 = *(v10 + 16);
  v35(v13, v30, v9);
  sub_1BE04B0A4();
  sub_1BE04A894();
  v34 = *(v34 + 56);
  (v34)(v6, 1, 1, v39);
  v32 = sub_1BE048BB4();
  v20 = *(v32 - 8);
  v31 = *(v20 + 56);
  v27 = v9;
  v33 = v20 + 56;
  v31(v37, 1, 1, v32);
  v21 = v38;
  sub_1BE048BE4();
  v22 = v28;
  v26[1] = *(v36 + 48);
  *(v21 + v28) = 1;
  sub_1BE052354();
  v35(v13, v30, v9);
  sub_1BE04B0A4();
  sub_1BE04A894();
  (v34)(v6, 1, 1, v39);
  v23 = v37;
  v31(v37, 1, 1, v32);
  sub_1BE048BE4();
  v28 = *(v36 + 48);
  *(v38 + 2 * v22) = 2;
  sub_1BE052354();
  v35(v13, v30, v27);
  sub_1BE04B0A4();
  sub_1BE04A894();
  (v34)(v6, 1, 1, v39);
  v31(v23, 1, 1, v32);
  sub_1BE048BE4();
  v24 = sub_1BD1ADD40(v29);
  swift_setDeallocating();
  swift_arrayDestroy();
  result = swift_deallocClassInstance();
  qword_1EBDAB378 = v24;
  return result;
}

uint64_t sub_1BD63C080@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EBD36CD0 != -1)
  {
    swift_once();
  }

  v2 = sub_1BE048E94();
  v3 = __swift_project_value_buffer(v2, qword_1EBDAB360);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

unint64_t sub_1BD63C178()
{
  result = qword_1EBD4DD38;
  if (!qword_1EBD4DD38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4DD38);
  }

  return result;
}

uint64_t sub_1BD63C1CC(uint64_t a1)
{
  v2 = sub_1BD63C178();

  return MEMORY[0x1EEDB2C20](a1, v2);
}

unint64_t sub_1BD63C21C()
{
  result = qword_1EBD4DD40;
  if (!qword_1EBD4DD40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4DD40);
  }

  return result;
}

unint64_t sub_1BD63C274()
{
  result = qword_1EBD4DD48;
  if (!qword_1EBD4DD48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4DD48);
  }

  return result;
}

unint64_t sub_1BD63C2CC()
{
  result = qword_1EBD4DD50;
  if (!qword_1EBD4DD50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4DD50);
  }

  return result;
}

uint64_t sub_1BD63C320()
{
  if (qword_1EBD36CD8 != -1)
  {
    swift_once();
  }

  return sub_1BE048C84();
}

uint64_t sub_1BD63C37C()
{
  sub_1BD63B838();

  return sub_1BE048E14();
}

unint64_t sub_1BD63C3CC()
{
  result = qword_1EBD4DD58;
  if (!qword_1EBD4DD58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4DD60);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4DD58);
  }

  return result;
}

uint64_t sub_1BD63C450()
{
  v0 = sub_1BE053A44();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1BD63C4A4@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1BE04F3D4();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3FA20);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v16 - v10;
  v12 = type metadata accessor for AccountAutomaticPaymentsHeroView();
  sub_1BD0DE19C(v1 + *(v12 + 24), v11, &qword_1EBD3FA20);
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

void AccountAutomaticPaymentsHeroView.init(model:showSetupPrompt:dismissAction:)(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  sub_1BE051694();
  *(a5 + 16) = v22;
  *(a5 + 24) = v23;
  v10 = type metadata accessor for AccountAutomaticPaymentsHeroView();
  v11 = v10[6];
  *(a5 + v11) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3FA20);
  swift_storeEnumTagMultiPayload();
  type metadata accessor for AccountAutomaticPaymentsModel(0);
  sub_1BE048964();
  sub_1BE051694();
  *a5 = v22;
  *(a5 + 8) = v23;
  *(a5 + v10[8]) = a2;
  v12 = (a5 + v10[9]);
  *v12 = a3;
  v12[1] = a4;
  sub_1BDA1BD2C();
  v14 = v13;
  if (!v13)
  {

    goto LABEL_6;
  }

  v15 = [*(a1 + 48) account];
  if (v15)
  {
    v16 = v15;
    v17 = [objc_opt_self() sharedService];
    if (v17)
    {
      v18 = v17;
      v19 = [*(a1 + 48) paymentSetupContext];
      v20 = objc_allocWithZone(PKAccountTermsAndConditionsController);
      v21 = sub_1BE052404();

      v14 = [v20 initWithAccount:v16 webService:v18 context:v19 termsIdentifier:v21];

LABEL_6:
      *(a5 + v10[7]) = v14;
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t type metadata accessor for AccountAutomaticPaymentsHeroView()
{
  result = qword_1EBD4DE50;
  if (!qword_1EBD4DE50)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t AccountAutomaticPaymentsHeroView.body.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54210);
  sub_1BE0516C4();
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD543A0);
  sub_1BE051904();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4DD70);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4DD78);
  sub_1BD0DE4F4(&qword_1EBD4DD80, &qword_1EBD4DD70);
  sub_1BD0DE4F4(&qword_1EBD4DD88, &qword_1EBD4DD70);
  sub_1BD0DE4F4(&qword_1EBD4DD90, &qword_1EBD4DD70);
  sub_1BD63FC68();
  sub_1BD6400F8();
  return sub_1BE04EBF4();
}

uint64_t sub_1BD63CAD8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1BD640A40(&qword_1EBD54250, type metadata accessor for AccountAutomaticPaymentsModel);
  sub_1BE04B594();

  v4 = OBJC_IVAR____TtC9PassKitUI29AccountAutomaticPaymentsModel__navigationPath;
  swift_beginAccess();
  *a2 = *(v3 + v4);
  return sub_1BE048C84();
}

uint64_t sub_1BD63CBCC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v67 = a2;
  v3 = type metadata accessor for AccountAutomaticPaymentsHeroView();
  v61 = *(v3 - 8);
  v71 = *(v61 + 8);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v60 = &v56 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4DDE0);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v56 - v9;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4DDD8);
  v59 = *(v58 - 8);
  MEMORY[0x1EEE9AC00](v58, v11);
  v13 = &v56 - v12;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4DDC0);
  MEMORY[0x1EEE9AC00](v69, v14);
  v57 = &v56 - v15;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4DDB0);
  v64 = *(v63 - 8);
  MEMORY[0x1EEE9AC00](v63, v16);
  v70 = &v56 - v17;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4DE80);
  v66 = *(v65 - 8);
  MEMORY[0x1EEE9AC00](v65, v18);
  v62 = &v56 - v19;
  v74 = a1;
  sub_1BE0501B4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4DE88);
  sub_1BD640754();
  sub_1BE04E304();
  v73 = a1;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3E9E8);
  v21 = sub_1BD0DE4F4(&qword_1EBD4DDE8, &qword_1EBD4DDE0);
  v22 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3E9F0);
  v23 = sub_1BD0DE4F4(&qword_1EBD3E9F8, &qword_1EBD3E9F0);
  v75 = v22;
  v76 = v23;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_1BE051024();
  (*(v7 + 8))(v10, v6);
  v25 = a1;
  v68 = a1;
  v72 = a1;
  sub_1BE04F7B4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3C160);
  v75 = v6;
  v76 = v20;
  v77 = v21;
  v78 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  v26 = sub_1BD1BC1B0();
  v75 = &type metadata for SetupFooterView;
  v76 = v26;
  swift_getOpaqueTypeConformance2();
  v27 = v57;
  v28 = v58;
  sub_1BE050954();
  (*(v59 + 8))(v13, v28);
  v29 = sub_1BE04EC54();
  v30 = sub_1BE0501F4();
  v31 = v27 + *(v69 + 36);
  *v31 = v29;
  *(v31 + 8) = v30;
  v32 = v60;
  sub_1BD64081C(v25, v60);
  v33 = (*(v61 + 80) + 16) & ~*(v61 + 80);
  v34 = swift_allocObject();
  v61 = type metadata accessor for AccountAutomaticPaymentsHeroView;
  sub_1BD640970(v32, v34 + v33, type metadata accessor for AccountAutomaticPaymentsHeroView);
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4DDC8);
  v35 = sub_1BD63FECC();
  v36 = sub_1BD6400F8();
  v37 = sub_1BD64014C();
  sub_1BE050D64();

  sub_1BD0DE53C(v27, &qword_1EBD4DDC0);
  v38 = v68;
  v39 = *(v68 + 24);
  LOBYTE(v81) = *(v68 + 16);
  v82 = v39;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54350);
  sub_1BE0516C4();
  sub_1BD64081C(v38, v32);
  v40 = swift_allocObject();
  sub_1BD640970(v32, v40 + v33, v61);
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4DDB8);
  v75 = v69;
  v76 = &type metadata for AccountAutomaticPayments.Step;
  v77 = v59;
  v78 = v35;
  v79 = v36;
  v80 = v37;
  v54 = swift_getOpaqueTypeConformance2();
  v55 = sub_1BD640440();
  v42 = v62;
  v43 = v63;
  v44 = v70;
  sub_1BE050F64();

  (*(v64 + 8))(v44, v43);
  sub_1BE052434();
  v75 = v43;
  v76 = v41;
  v77 = v54;
  v78 = v55;
  swift_getOpaqueTypeConformance2();
  v45 = v67;
  v46 = v65;
  sub_1BE050DE4();

  (*(v66 + 8))(v42, v46);
  v47 = *(v68 + 8);
  v81 = *v68;
  v82 = v47;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54210);
  sub_1BE0516C4();
  v48 = v75;
  v49 = v76;
  v50 = v77;
  swift_getKeyPath();
  v75 = v48;
  v76 = v49;
  v77 = v50;
  v51 = v45 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4DD78) + 36);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD543A0);
  sub_1BE051904();

  result = type metadata accessor for ErrorAlertModifier(0);
  v53 = (v51 + *(result + 20));
  *v53 = 0;
  v53[1] = 0;
  return result;
}

uint64_t sub_1BD63D588@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = sub_1BE04F7B4();
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4DEA8);
  sub_1BD63D638(a1, (a2 + *(v4 + 44)));
  LOBYTE(a1) = sub_1BE0501C4();
  PKSetupViewConstantsViewMargin();
  sub_1BE04E1F4();
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4DE88);
  v14 = a2 + *(result + 36);
  *v14 = a1;
  *(v14 + 8) = v6;
  *(v14 + 16) = v8;
  *(v14 + 24) = v10;
  *(v14 + 32) = v12;
  *(v14 + 40) = 0;
  return result;
}

uint64_t sub_1BD63D638@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4DEB0);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v31 - v10;
  v12 = sub_1BE051574();
  v13 = a1[1];
  v32 = *a1;
  v33 = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54210);
  sub_1BE0516A4();
  [*(v36 + 48) featureIdentifier];

  v32 = sub_1BE04C124();
  v33 = v14;
  sub_1BD0DDEBC();
  v15 = sub_1BE0506C4();
  v17 = v16;
  v32 = v15;
  v33 = v16;
  v19 = v18 & 1;
  v34 = v18 & 1;
  v35 = v20;
  sub_1BE050BF4();
  sub_1BD0DDF10(v15, v17, v19);

  v21 = sub_1BD63D8CC();
  v23 = v22;
  v25 = v24;
  v27 = v26;
  sub_1BD090A44(v11, v7);
  *a2 = v12;
  a2[1] = 0;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4DEB8);
  sub_1BD090A44(v7, a2 + *(v28 + 48));
  v29 = a2 + *(v28 + 64);
  *v29 = v21;
  *(v29 + 1) = v23;
  v25 &= 1u;
  v29[16] = v25;
  *(v29 + 3) = v27;
  sub_1BE048964();
  sub_1BD0D7F18(v21, v23, v25);
  sub_1BE048C84();
  sub_1BD0DE53C(v11, &qword_1EBD4DEB0);
  sub_1BD0DDF10(v21, v23, v25);

  sub_1BD0DE53C(v7, &qword_1EBD4DEB0);
}

uint64_t sub_1BD63D8CC()
{
  v1 = sub_1BE04F614();
  MEMORY[0x1EEE9AC00](v1 - 8, v2);
  v4 = &v38 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD450F0);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = &v38 - v7;
  v9 = *v0;
  v10 = v0[1];
  v44 = *v0;
  v45 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54210);
  sub_1BE0516A4();
  [*(v42 + 48) featureIdentifier];

  v11 = sub_1BE04C124();
  v13 = v12;
  if (*(v0 + *(type metadata accessor for AccountAutomaticPaymentsHeroView() + 32)) == 1 && PKIsPhone())
  {
    v41 = v4;
    v44 = v9;
    v45 = v10;
    sub_1BE0516A4();
    [*(v42 + 48) featureIdentifier];

    v14 = sub_1BE04C124();
    v16 = v15;
    v44 = v14;
    v45 = v15;
    v42 = 16421;
    v43 = 0xE200000000000000;
    v17 = sub_1BE04B0F4();
    v18 = *(*(v17 - 8) + 56);
    v18(v8, 1, 1, v17);
    sub_1BD0DDEBC();
    v40 = sub_1BE0535D4();
    v20 = v19;
    sub_1BD0DE53C(v8, &qword_1EBD450F0);
    if ((v20 & 1) == 0)
    {
      v44 = v14;
      v45 = v16;
      v42 = 16421;
      v43 = 0xE200000000000000;
      v18(v8, 1, 1, v17);
      sub_1BE0535D4();
      v22 = v21;
      v24 = v23;
      sub_1BD0DE53C(v8, &qword_1EBD450F0);
      if ((v24 & 1) == 0)
      {
        v26 = sub_1BE052654();
        v28 = v27;
        v30 = v29;
        v32 = v31;
        v33 = sub_1BD65CBE4(v22, v14, v16);
        v39 = v34;
        v40 = v33;
        v38 = v35;
        v37 = v36;

        sub_1BE04F604();
        sub_1BE04F5F4();
        sub_1BE04F5E4();

        sub_1BE04F5F4();
        MEMORY[0x1BFB3F570](v26, v28, v30, v32);

        sub_1BE04F5E4();

        sub_1BE04F5F4();
        sub_1BE051574();
        sub_1BE04F5D4();

        sub_1BE04F5F4();
        MEMORY[0x1BFB3F570](v40, v39, v38, v37);

        sub_1BE04F5E4();

        sub_1BE04F5F4();
        sub_1BE04F634();
        return sub_1BE050694();
      }
    }
  }

  v44 = v11;
  v45 = v13;
  sub_1BD0DDEBC();
  return sub_1BE0506C4();
}

uint64_t sub_1BD63DD80(uint64_t a1)
{
  v2 = sub_1BE04FB44();
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3E9F0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v11[-v7];
  sub_1BE04FB04();
  v12 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39500);
  sub_1BD0DE4F4(&qword_1EBD394F8, &qword_1EBD39500);
  sub_1BE04E424();
  v9 = sub_1BD0DE4F4(&qword_1EBD3E9F8, &qword_1EBD3E9F0);
  MEMORY[0x1BFB3CC50](v8, v4, v9);
  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_1BD63DF6C(uint64_t a1)
{
  v2 = type metadata accessor for AccountAutomaticPaymentsHeroView();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2 - 8, v5);
  v6 = sub_1BE04E1D4();
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BE04E1A4();
  sub_1BD64081C(a1, &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v11 = swift_allocObject();
  sub_1BD640970(&v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v11 + v10, type metadata accessor for AccountAutomaticPaymentsHeroView);
  return MEMORY[0x1BFB3E7A0](v9, sub_1BD640D74, v11);
}

id sub_1BD63E0D4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v48 = a2;
  v49 = sub_1BE04F714();
  v47 = *(v49 - 8);
  MEMORY[0x1EEE9AC00](v49, v3);
  v46 = &v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for AccountAutomaticPaymentsHeroView();
  v45 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v50 = v7;
  v51 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1BE04BD74();
  v9 = *(v8 - 8);
  v11 = MEMORY[0x1EEE9AC00](v8, v10);
  v13 = &v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 104))(v13, *MEMORY[0x1E69B80D8], v8, v11);
  result = PKPassKitBundle();
  if (result)
  {
    v15 = result;
    v16 = sub_1BE04B6F4();
    v43 = v17;
    v44 = v16;

    (*(v9 + 8))(v13, v8);
    v19 = a1[1];
    *&v58[0] = *a1;
    v18 = *&v58[0];
    *(&v58[0] + 1) = v19;
    v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54210);
    sub_1BE0516A4();
    v21 = v52;
    swift_getKeyPath();
    *&v58[0] = v21;
    sub_1BD640A40(&qword_1EBD54250, type metadata accessor for AccountAutomaticPaymentsModel);
    sub_1BE04B594();

    v40 = *(v21 + OBJC_IVAR____TtC9PassKitUI29AccountAutomaticPaymentsModel__loading);

    v41 = v20;
    v42 = v18;
    *&v58[0] = v18;
    *(&v58[0] + 1) = v19;
    sub_1BE0516A4();
    v22 = v52;
    swift_getKeyPath();
    *&v58[0] = v22;
    v23 = a1;
    sub_1BE04B594();

    v39 = *(v22 + OBJC_IVAR____TtC9PassKitUI29AccountAutomaticPaymentsModel__loading);

    v24 = v51;
    sub_1BD64081C(a1, v51);
    v25 = (*(v45 + 80) + 16) & ~*(v45 + 80);
    v45 = swift_allocObject();
    sub_1BD640970(v24, v45 + v25, type metadata accessor for AccountAutomaticPaymentsHeroView);
    if (qword_1EBD36ED8 != -1)
    {
      swift_once();
    }

    v26 = qword_1EBDAB648;
    v27 = qword_1EBD36EE0;
    sub_1BE048964();
    if (v27 != -1)
    {
      swift_once();
    }

    v28 = qword_1EBDAB650;
    sub_1BE048964();
    sub_1BD63E6F0(v59);
    v38 = v59[2];
    v29 = v60;
    *&v58[0] = v42;
    *(&v58[0] + 1) = v19;
    sub_1BE0516A4();
    v30 = sub_1BDA1C820();
    v31 = v23;
    v33 = v32;

    if (!v33)
    {
      v30 = 0;
      v33 = 0xE000000000000000;
    }

    v34 = v31;
    v35 = v51;
    sub_1BD64081C(v34, v51);
    v36 = swift_allocObject();
    sub_1BD640970(v35, v36 + v25, type metadata accessor for AccountAutomaticPaymentsHeroView);
    *&v52 = v44;
    *(&v52 + 1) = v43;
    *&v53 = v26;
    *(&v53 + 1) = v28;
    LOBYTE(v54) = v40;
    BYTE1(v54) = v39;
    *(&v54 + 1) = sub_1BD640A88;
    *&v55[0] = v45;
    *(&v55[1] + 8) = v59[1];
    *(v55 + 8) = v59[0];
    *(&v55[2] + 8) = v38;
    *(&v55[3] + 1) = v29;
    *&v56 = v30;
    *(&v56 + 1) = v33;
    *&v57 = sub_1BD640AE8;
    *(&v57 + 1) = v36;
    v37 = v46;
    sub_1BE04F704();
    sub_1BD1BC1B0();
    sub_1BE050CB4();
    (*(v47 + 8))(v37, v49);
    v58[6] = v55[3];
    v58[7] = v56;
    v58[8] = v57;
    v58[2] = v54;
    v58[3] = v55[0];
    v58[4] = v55[1];
    v58[5] = v55[2];
    v58[0] = v52;
    v58[1] = v53;
    return sub_1BD1BC4CC(v58);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1BD63E694()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54210);
  sub_1BE0516A4();
  sub_1BDA21F78();
}

double sub_1BD63E6F0@<D0>(uint64_t *a1@<X8>)
{
  v3 = type metadata accessor for AccountAutomaticPaymentsHeroView();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3 - 8, v6);
  if (*(v1 + *(v7 + 40)) == 1)
  {
    v8 = v1[1];
    v22 = *v1;
    v23 = v8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54210);
    v20 = v1;
    sub_1BE0516A4();
    [*(v21 + 48) featureIdentifier];

    v9 = sub_1BE04C124();
    v11 = v10;
    v23 = v8;
    sub_1BE0516A4();
    swift_getKeyPath();
    v22 = v21;
    sub_1BD640A40(&qword_1EBD54250, type metadata accessor for AccountAutomaticPaymentsModel);
    sub_1BE04B594();

    v12 = *(v21 + OBJC_IVAR____TtC9PassKitUI29AccountAutomaticPaymentsModel__loading);

    sub_1BD64081C(v1, &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
    v13 = (*(v4 + 80) + 16) & ~*(v4 + 80);
    v14 = swift_allocObject();
    sub_1BD640970(&v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v14 + v13, type metadata accessor for AccountAutomaticPaymentsHeroView);
    if (qword_1EBD36EE8 != -1)
    {
      swift_once();
    }

    v15 = qword_1EBDAB658;
    v16 = qword_1EBD36EF0;
    sub_1BE048964();
    if (v16 != -1)
    {
      swift_once();
    }

    v17 = qword_1EBDAB660;
    v18 = 256;
    if (!v12)
    {
      v18 = 0;
    }

    *a1 = v9;
    a1[1] = v11;
    a1[2] = v15;
    a1[3] = v17;
    a1[4] = v18;
    a1[5] = sub_1BD640BB8;
    a1[6] = v14;
    sub_1BE048964();
  }

  else
  {
    a1[6] = 0;
    result = 0.0;
    *(a1 + 1) = 0u;
    *(a1 + 2) = 0u;
    *a1 = 0u;
  }

  return result;
}

uint64_t sub_1BD63E9D4@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD416C0);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = v31 - v6;
  v8 = type metadata accessor for AccountAutomaticPaymentsHeroView();
  v9 = v8 - 8;
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = (v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = sub_1BE04D214();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13, v15);
  v17 = v31 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v1 + *(v9 + 36)))
  {
    v19 = *(v1 + 24);
    LOBYTE(v36) = *(v1 + 16);
    v18 = v36;
    v37 = v19;
    sub_1BE048964();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54350);
    sub_1BE0516A4();
    LOBYTE(v33) = v18;
    v34 = v19;
    v32 = (v35 & 1) == 0;
    sub_1BE0516B4();
  }

  else
  {
    v31[1] = a1;
    sub_1BE04D194();
    sub_1BD64081C(v1, v12);
    v20 = sub_1BE04D204();
    v21 = sub_1BE052C34();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v31[0] = swift_slowAlloc();
      *v22 = 138412290;
      v23 = v12[1];
      v36 = *v12;
      v37 = v23;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54210);
      sub_1BE0516A4();
      v24 = v33;
      sub_1BD640B5C(v12);
      v25 = *(v24 + 48);

      *(v22 + 4) = v25;
      v26 = v31[0];
      *v31[0] = v25;
      _os_log_impl(&dword_1BD026000, v20, v21, "AccountAutomaticPayments: Unable to load terms and conditions, terms controller was nil, automaticPaymentsController: %@", v22, 0xCu);
      sub_1BD0DE53C(v26, &unk_1EBD3E590);
      MEMORY[0x1BFB45F20](v26, -1, -1);
      MEMORY[0x1BFB45F20](v22, -1, -1);

      (*(v14 + 8))(v17, v13);
    }

    else
    {

      (*(v14 + 8))(v17, v13);
      sub_1BD640B5C(v12);
    }

    v28 = v2[1];
    v36 = *v2;
    v27 = v36;
    v37 = v28;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54210);
    sub_1BE0516A4();
    v36 = v27;
    v37 = v28;
    sub_1BE0516A4();
    v29 = [*(v33 + 48) featureIdentifier];

    FeatureError.init(feature:error:)(v29, 0, v7);
    sub_1BDA1C534(v7);
  }

  return sub_1BE04E744();
}

__n128 sub_1BD63ED94@<Q0>(_BYTE *a1@<X0>, void *a2@<X1>, _OWORD *a3@<X8>)
{
  v6 = type metadata accessor for AccountAutomaticPaymentsHeroView();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6, v9);
  if (*a1 > 1u)
  {
    if (*a1 == 2)
    {
      *v50 = *a2;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54210);
      sub_1BE0516A4();
      sub_1BE051694();
      LOBYTE(v44) = v50[0];
      sub_1BE051694();
      LOBYTE(v37) = v50[0];
      type metadata accessor for AccountAutomaticPaymentsModel(0);
      sub_1BE051694();
      v41 = 0;
      sub_1BD640398();
      sub_1BD6403EC();
      sub_1BE048964();
      sub_1BE048964();
      sub_1BE048964();
      sub_1BE048964();
      sub_1BE04F9A4();
      *v50 = v44;
      *&v50[16] = v45;
      *&v50[32] = v46[0];
      *&v50[41] = *(v46 + 9);
      v43 = 1;
      v50[57] = 1;
    }

    else
    {
      v17 = a2[1];
      *v50 = *a2;
      *&v50[8] = v17;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54210);
      sub_1BE0516A4();
      v18 = v47;
      v19 = (a2 + *(v6 + 36));
      v20 = *v19;
      v21 = v19[1];
      if (*v19)
      {
        v22 = swift_allocObject();
        *(v22 + 16) = v20;
        *(v22 + 24) = v21;
        v23 = sub_1BD1839E8;
      }

      else
      {
        sub_1BD64081C(a2, &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
        v27 = (*(v7 + 80) + 16) & ~*(v7 + 80);
        v22 = swift_allocObject();
        sub_1BD640970(&v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v22 + v27, type metadata accessor for AccountAutomaticPaymentsHeroView);
        v23 = sub_1BD6409D8;
      }

      v28 = v23;
      v29 = swift_allocObject();
      *(v29 + 16) = v28;
      *(v29 + 24) = v22;
      LOBYTE(v47) = 1;
      sub_1BD0D44B8(v20);
      sub_1BE051694();
      v30 = v50[0];
      v31 = *&v50[8];
      LOBYTE(v47) = 0;
      sub_1BE051694();
      v32 = v50[0];
      v33 = *&v50[8];
      v42 = 1;
      v50[0] = v30;
      *&v50[8] = v31;
      v50[16] = v32;
      *&v50[24] = v33;
      *&v50[32] = v18;
      *&v50[40] = sub_1BD1839E0;
      *&v50[48] = v29;
      v50[56] = 1;
      sub_1BD640398();
      sub_1BD6403EC();
      sub_1BE048964();
      sub_1BE048964();
      sub_1BE048964();
      sub_1BE048964();
      sub_1BE04F9A4();
      *v50 = v44;
      *&v50[16] = v45;
      *&v50[32] = v46[0];
      *&v50[41] = *(v46 + 9);
      LOBYTE(v37) = 1;
      v50[57] = 1;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4DE08);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4DE28);
    sub_1BD6401D8();
    sub_1BD64030C();
    sub_1BE04F9A4();
  }

  else
  {
    if (*a1)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54210);
      sub_1BE0516A4();
      type metadata accessor for AccountAutomaticPaymentsModel(0);
      sub_1BE051694();
      sub_1BD640264();
      sub_1BD6402B8();
      sub_1BE048964();
      sub_1BE048964();
      sub_1BE04F9A4();
      LOBYTE(v37) = v46[1];
      v42 = 0;
      *v50 = v44;
      *&v50[16] = v45;
      *&v50[32] = v46[0];
      v50[48] = v46[1];
      v50[57] = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4DE08);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4DE28);
      sub_1BD6401D8();
      sub_1BD64030C();
      sub_1BE04F9A4();
    }

    else
    {
      v10 = a2[1];
      *v50 = *a2;
      *&v50[8] = v10;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54210);
      sub_1BE0516A4();
      v11 = v47;
      v12 = (a2 + *(v6 + 36));
      v13 = *v12;
      v14 = v12[1];
      if (*v12)
      {
        v15 = swift_allocObject();
        *(v15 + 16) = v13;
        *(v15 + 24) = v14;
        v16 = sub_1BD640D80;
      }

      else
      {
        sub_1BD64081C(a2, &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
        v24 = (*(v7 + 80) + 16) & ~*(v7 + 80);
        v15 = swift_allocObject();
        sub_1BD640970(&v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v15 + v24, type metadata accessor for AccountAutomaticPaymentsHeroView);
        v16 = sub_1BD640D7C;
      }

      v25 = v16;
      v26 = swift_allocObject();
      *(v26 + 16) = v25;
      *(v26 + 24) = v15;
      sub_1BD0D44B8(v13);
      AccountAutomaticPaymentsAmountView.init(model:dismissAction:)(v11, sub_1BD640D78, v26, &v37);
      *&v50[8] = v38;
      v36 = v39;
      *&v50[24] = v39;
      *v50 = v37;
      *&v50[40] = v40;
      v50[48] = 0;
      sub_1BD640264();
      sub_1BD6402B8();
      sub_1BE048964();
      sub_1BE048964();
      sub_1BE048C84();
      sub_1BE048964();
      sub_1BE04F9A4();
      v42 = v46[1];
      v43 = 0;
      *v50 = v44;
      *&v50[16] = v45;
      *&v50[32] = v46[0];
      v50[48] = v46[1];
      v50[57] = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4DE08);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4DE28);
      sub_1BD6401D8();
      sub_1BD64030C();
      sub_1BE04F9A4();
    }
  }

  *&v50[32] = v49[0];
  *&v50[42] = *(v49 + 10);
  v34 = v48;
  *a3 = v47;
  a3[1] = v34;
  a3[2] = *&v50[32];
  result = *&v50[42];
  *(a3 + 42) = *&v50[42];
  return result;
}

uint64_t sub_1BD63F5BC(uint64_t a1)
{
  v19 = sub_1BE04F3D4();
  v2 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19, v3);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3FA20);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v18 - v8;
  v10 = sub_1BE04E664();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = &v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for AccountAutomaticPaymentsHeroView();
  sub_1BD0DE19C(a1 + *(v15 + 24), v9, &qword_1EBD3FA20);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v11 + 32))(v14, v9, v10);
  }

  else
  {
    sub_1BE052C44();
    v16 = sub_1BE050174();
    sub_1BE04CF84();

    sub_1BE04F3C4();
    swift_getAtKeyPath();

    (*(v2 + 8))(v5, v19);
  }

  sub_1BE04E654();
  return (*(v11 + 8))(v14, v10);
}

uint64_t sub_1BD63F844@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD416C0);
  MEMORY[0x1EEE9AC00](v4, v5);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v24 - v10;
  v12 = type metadata accessor for AccountTermsView();
  v25 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = &v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(a1 + *(type metadata accessor for AccountAutomaticPaymentsHeroView() + 28));
  if (v16)
  {
    v17 = *(a1 + 24);
    LOBYTE(v28) = *(a1 + 16);
    v29 = v17;
    v18 = v16;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54350);
    sub_1BE0516C4();
    v19 = v26;
    v20 = v27;
    *v15 = v18;
    *(v15 + 8) = v19;
    v15[24] = v20;
    v28 = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3E9A8);
    sub_1BE051694();
    *(v15 + 2) = v26;
    v21 = type metadata accessor for FeatureError(0);
    (*(*(v21 - 8) + 56))(v11, 1, 1, v21);
    sub_1BD0DE19C(v11, v7, &qword_1EBD416C0);
    sub_1BE051694();
    sub_1BD0DE53C(v11, &qword_1EBD416C0);
    sub_1BD640970(v15, a2, type metadata accessor for AccountTermsView);
    return (*(v25 + 56))(a2, 0, 1, v12);
  }

  else
  {
    v23 = *(v25 + 56);

    return v23(a2, 1, 1, v12);
  }
}

uint64_t sub_1BD63FB2C(uint64_t a1)
{
  v2 = sub_1BE04E664();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + *(type metadata accessor for AccountAutomaticPaymentsHeroView() + 36));
  if (v7)
  {
    v8 = sub_1BE048964();
    v7(v8);

    return sub_1BD0D4744(v7);
  }

  else
  {
    sub_1BD63C4A4(v6);
    sub_1BE04E654();
    return (*(v3 + 8))(v6, v2);
  }
}

unint64_t sub_1BD63FC68()
{
  result = qword_1EBD4DD98;
  if (!qword_1EBD4DD98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4DD78);
    sub_1BD63FD24();
    sub_1BD640A40(&qword_1EBD3EA00, type metadata accessor for ErrorAlertModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4DD98);
  }

  return result;
}

unint64_t sub_1BD63FD24()
{
  result = qword_1EBD4DDA0;
  if (!qword_1EBD4DDA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4DDA8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4DDB0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4DDB8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4DDC0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4DDC8);
    sub_1BD63FECC();
    sub_1BD6400F8();
    sub_1BD64014C();
    swift_getOpaqueTypeConformance2();
    sub_1BD640440();
    swift_getOpaqueTypeConformance2();
    sub_1BD640A40(&qword_1EBD52210, MEMORY[0x1E697CBE8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4DDA0);
  }

  return result;
}

unint64_t sub_1BD63FECC()
{
  result = qword_1EBD4DDD0;
  if (!qword_1EBD4DDD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4DDC0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4DDD8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3C160);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4DDE0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3E9E8);
    sub_1BD0DE4F4(&qword_1EBD4DDE8, &qword_1EBD4DDE0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3E9F0);
    sub_1BD0DE4F4(&qword_1EBD3E9F8, &qword_1EBD3E9F0);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_1BD1BC1B0();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4DDD0);
  }

  return result;
}

unint64_t sub_1BD6400F8()
{
  result = qword_1EBD4DDF0;
  if (!qword_1EBD4DDF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4DDF0);
  }

  return result;
}

unint64_t sub_1BD64014C()
{
  result = qword_1EBD4DDF8;
  if (!qword_1EBD4DDF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4DDC8);
    sub_1BD6401D8();
    sub_1BD64030C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4DDF8);
  }

  return result;
}

unint64_t sub_1BD6401D8()
{
  result = qword_1EBD4DE00;
  if (!qword_1EBD4DE00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4DE08);
    sub_1BD640264();
    sub_1BD6402B8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4DE00);
  }

  return result;
}

unint64_t sub_1BD640264()
{
  result = qword_1EBD4DE10;
  if (!qword_1EBD4DE10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4DE10);
  }

  return result;
}

unint64_t sub_1BD6402B8()
{
  result = qword_1EBD4DE18;
  if (!qword_1EBD4DE18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4DE18);
  }

  return result;
}

unint64_t sub_1BD64030C()
{
  result = qword_1EBD4DE20;
  if (!qword_1EBD4DE20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4DE28);
    sub_1BD640398();
    sub_1BD6403EC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4DE20);
  }

  return result;
}

unint64_t sub_1BD640398()
{
  result = qword_1EBD4DE30;
  if (!qword_1EBD4DE30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4DE30);
  }

  return result;
}

unint64_t sub_1BD6403EC()
{
  result = qword_1EBD4DE38;
  if (!qword_1EBD4DE38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4DE38);
  }

  return result;
}

unint64_t sub_1BD640440()
{
  result = qword_1EBD4DE40;
  if (!qword_1EBD4DE40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4DDB8);
    sub_1BD640A40(&qword_1EBD4DE48, type metadata accessor for AccountTermsView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4DE40);
  }

  return result;
}

void sub_1BD640538()
{
  sub_1BD64069C(319, &qword_1EBD4DE60, type metadata accessor for AccountAutomaticPaymentsModel, MEMORY[0x1E6981790]);
  if (v0 <= 0x3F)
  {
    sub_1BD10EE48();
    if (v1 <= 0x3F)
    {
      sub_1BD64069C(319, &qword_1EBD3AB88, MEMORY[0x1E697BF90], MEMORY[0x1E697DCC0]);
      if (v2 <= 0x3F)
      {
        sub_1BD64069C(319, &qword_1EBD4DE68, sub_1BD640700, MEMORY[0x1E69E6720]);
        if (v3 <= 0x3F)
        {
          sub_1BD0FA9D0();
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_1BD64069C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_1BD640700()
{
  result = qword_1EBD3E990;
  if (!qword_1EBD3E990)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EBD3E990);
  }

  return result;
}

unint64_t sub_1BD640754()
{
  result = qword_1EBD4DE90;
  if (!qword_1EBD4DE90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4DE88);
    sub_1BD0DE4F4(&qword_1EBD4DE98, &qword_1EBD4DEA0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4DE90);
  }

  return result;
}

uint64_t sub_1BD64081C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AccountAutomaticPaymentsHeroView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

double sub_1BD640880@<D0>(_BYTE *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = *(type metadata accessor for AccountAutomaticPaymentsHeroView() - 8);
  v6 = (v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80)));

  *&result = sub_1BD63ED94(a1, v6, a2).n128_u64[0];
  return result;
}

uint64_t sub_1BD640900@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AccountAutomaticPaymentsHeroView() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_1BD63F844(v4, a1);
}

uint64_t sub_1BD640970(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1BD640A40(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1BD640A88()
{
  type metadata accessor for AccountAutomaticPaymentsHeroView();

  return sub_1BD63E694();
}

uint64_t sub_1BD640B5C(uint64_t a1)
{
  v2 = type metadata accessor for AccountAutomaticPaymentsHeroView();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t objectdestroyTm_71()
{
  v1 = type metadata accessor for AccountAutomaticPaymentsHeroView();
  v2 = v0 + ((*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80));

  v3 = v1[6];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3FA20);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = sub_1BE04E664();
    (*(*(v4 - 8) + 8))(v2 + v3, v4);
  }

  else
  {
  }

  if (*(v2 + v1[9]))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1BD640D84@<X0>(void *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();

  *a1 = v3;
  return result;
}

uint64_t sub_1BD640E04(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE048964();
  result = sub_1BE04D8C4();
  v4 = *(v2 + OBJC_IVAR____TtC9PassKitUI23FrequencySelectionModel_onFrequencyChange);
  if (v4)
  {
    v5 = sub_1BE048964();
    v4(v5);
    return sub_1BD0D4744(v4);
  }

  return result;
}

uint64_t sub_1BD640EAC()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();

  return v1;
}

uint64_t sub_1BD640F20()
{
  v1 = OBJC_IVAR____TtC9PassKitUI23FrequencySelectionModel__selectedFrequency;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4DEE0);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  sub_1BD0D4744(*(v0 + OBJC_IVAR____TtC9PassKitUI23FrequencySelectionModel_onFrequencyChange));

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for FrequencySelectionModel()
{
  result = qword_1EBD4DEC8;
  if (!qword_1EBD4DEC8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1BD641040()
{
  sub_1BD6410E8();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_1BD6410E8()
{
  if (!qword_1EBD4DED8)
  {
    v0 = sub_1BE04D8D4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBD4DED8);
    }
  }
}

uint64_t sub_1BD641138@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for FrequencySelectionModel();
  result = sub_1BE04D814();
  *a1 = result;
  return result;
}

uint64_t sub_1BD641184(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();

  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();

  v4 = PKPeerPaymentRecurringPaymentFrequencyToString();
  v5 = sub_1BE052434();
  v7 = v6;

  v8 = PKPeerPaymentRecurringPaymentFrequencyToString();
  v9 = sub_1BE052434();
  v11 = v10;

  if (v5 == v9 && v7 == v11)
  {

LABEL_5:
    v14 = *(a1 + OBJC_IVAR____TtC9PassKitUI23FrequencySelectionModel_options);
    v15 = *(a2 + OBJC_IVAR____TtC9PassKitUI23FrequencySelectionModel_options);
    sub_1BE048C84();
    sub_1BE048C84();
    v13 = sub_1BD3FF37C(v14, v15);

    return v13 & 1;
  }

  v12 = sub_1BE053B84();

  v13 = 0;
  if (v12)
  {
    goto LABEL_5;
  }

  return v13 & 1;
}

uint64_t sub_1BD64134C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v2;
  v5[2] = *(a1 + 32);
  v6 = *(a1 + 48);
  v3 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v3;
  v7[2] = *(a2 + 32);
  v8 = *(a2 + 48);
  return sub_1BD6413A8(v5, v7) & 1;
}

uint64_t sub_1BD6413A8(void *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (v4 || (sub_1BE053B84() & 1) != 0)
  {
    v5 = a1[2] == a2[2] && a1[3] == a2[3];
    if (v5 || (sub_1BE053B84() & 1) != 0)
    {
      v6 = a1[5];
      v7 = a2[5];
      if (v6)
      {
        if (v7 && (a1[4] == a2[4] && v6 == v7 || (sub_1BE053B84() & 1) != 0))
        {
          goto LABEL_16;
        }
      }

      else if (!v7)
      {
LABEL_16:
        sub_1BD22F42C();
        return sub_1BE053074() & 1;
      }
    }
  }

  return 0;
}

uint64_t sub_1BD641470@<X0>(uint64_t a1@<X8>)
{
  v66 = a1;
  v2 = sub_1BE051AD4();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v60 = v54 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = v54 - v8;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4DEE8);
  MEMORY[0x1EEE9AC00](v67, v10);
  v12 = v54 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4DEF0);
  v14 = *(v13 - 8);
  v62 = v13;
  v63 = v14;
  MEMORY[0x1EEE9AC00](v13, v15);
  v68 = v54 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4DEF8);
  v18 = *(v17 - 8);
  v64 = v17;
  v65 = v18;
  v20 = MEMORY[0x1EEE9AC00](v17, v19);
  v61 = v54 - v21;
  v22 = v1[15];
  v23 = v1[24];
  v24 = v1[25];
  v58 = v1[14];
  v59 = v23;
  (*(v3 + 104))(v9, *MEMORY[0x1E697D710], v2, v20);
  (*(v3 + 16))(v60, v9, v2);
  sub_1BE048C84();
  sub_1BE051694();
  (*(v3 + 8))(v9, v2);
  v25 = v67;
  v26 = &v12[*(v67 + 36)];
  v27 = v59;
  *v26 = v58;
  *(v26 + 1) = v22;
  v12[*(v25 + 40)] = 1;
  v28 = &v12[*(v25 + 44)];
  *v28 = v27;
  *(v28 + 1) = v24;
  v69 = v1;
  v29 = v1;
  sub_1BE048964();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4DF00);
  sub_1BD0DE4F4(&qword_1EBD4DF08, &qword_1EBD4DF00);
  sub_1BE0504A4();
  sub_1BE051CD4();
  sub_1BE04EE54();
  v30 = &v12[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4DF10) + 36)];
  v31 = v83;
  *(v30 + 4) = v82;
  *(v30 + 5) = v31;
  *(v30 + 6) = v84;
  v32 = v79;
  *v30 = v78;
  *(v30 + 1) = v32;
  v33 = v81;
  *(v30 + 2) = v80;
  *(v30 + 3) = v33;
  v34 = sub_1BE051274();
  LOBYTE(v2) = sub_1BE0501D4();
  v35 = sub_1BE051CD4();
  v37 = v36;
  v38 = &v12[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4DF18) + 36)];
  *v38 = v34;
  v38[8] = v2;
  *(v38 + 2) = v35;
  *(v38 + 3) = v37;
  v54[0] = v29;
  v39 = *(v29 + 35);
  v70 = *(v29 + 33);
  v71 = v39;
  v72 = *(v29 + 37);
  v73 = v29[39];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4DF20);
  sub_1BE051914();
  v70 = v74;
  v71 = v75;
  v72 = v76;
  v73 = v77;
  v60 = sub_1BD0DE4F4(&qword_1EBD4DF28, &qword_1EBD4DEE8);
  v59 = sub_1BD64323C();
  sub_1BE050EF4();
  v40 = v71;
  v41 = v72;

  sub_1BD5D69A8(v40, *(&v40 + 1), v41);
  sub_1BD0DE53C(v12, &qword_1EBD4DEE8);
  v42 = v54[0];
  v43 = *(v54[0] + 240);
  v74 = *(v54[0] + 224);
  v75 = v43;
  *&v76 = *(v54[0] + 256);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4DF38);
  sub_1BE0516C4();
  v54[1] = v70;
  v57 = *(&v71 + 1);
  v58 = v71;
  v56 = v72;
  v55 = BYTE8(v72);
  v74 = v70;
  v75 = v71;
  *&v76 = v72;
  BYTE8(v76) = BYTE8(v72);
  v44 = swift_allocObject();
  memcpy((v44 + 16), v42, 0x140uLL);
  sub_1BD2EAD80(v42, &v70);
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4DF40);
  *&v70 = v67;
  *(&v70 + 1) = &_s26ShippingUnserviceableErrorVN;
  *&v71 = v60;
  *(&v71 + 1) = v59;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v47 = sub_1BD643338();
  v53 = sub_1BD64338C();
  v49 = v61;
  v48 = v62;
  v50 = v68;
  sub_1BE051124();

  sub_1BD64346C(v58, v57, v56, v55);
  (*(v63 + 8))(v50, v48);
  sub_1BE052434();
  *&v70 = v48;
  *(&v70 + 1) = &type metadata for AddressManagementSheet;
  *&v71 = v45;
  *(&v71 + 1) = OpaqueTypeConformance2;
  *&v72 = v47;
  *(&v72 + 1) = v53;
  swift_getOpaqueTypeConformance2();
  v51 = v64;
  sub_1BE050DE4();

  return (*(v65 + 8))(v49, v51);
}

id sub_1BD641C00@<X0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v61 = a2;
  v3 = sub_1BE04BD74();
  v63 = *(v3 - 8);
  v64 = v3;
  MEMORY[0x1EEE9AC00](v3, v4);
  v62 = &v59 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for NonMeCardAddressSection();
  v7 = v6 - 8;
  MEMORY[0x1EEE9AC00](v6, v8);
  v66 = &v59 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = &v59 - v12;
  v14 = type metadata accessor for MeCardAddressSection();
  v15 = v14 - 8;
  MEMORY[0x1EEE9AC00](v14, v16);
  v65 = &v59 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18, v19);
  v21 = &v59 - v20;
  v22 = a1[2];
  v86 = a1[3];
  v23 = a1[5];
  v87 = a1[4];
  v88 = v23;
  v89 = a1[6];
  v24 = a1[1];
  v83 = *a1;
  v84 = v24;
  v85 = v22;
  v68 = a1[8];
  v25 = swift_allocObject();
  memcpy((v25 + 16), a1, 0x140uLL);
  v26 = *(a1 + 27);
  *&v67 = *(a1 + 26);
  v82 = v26;
  v27 = *(v15 + 44);
  *&v21[v27] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39CF8);
  swift_storeEnumTagMultiPayload();
  v28 = *(v15 + 48);
  *&v70 = 0;
  sub_1BE048964();
  sub_1BD35F3B4(&v83, &v74);
  sub_1BE048964();
  sub_1BD35F3B4(&v83, &v74);
  sub_1BD2EAD80(a1, &v74);
  sub_1BD0DE19C(&v82, &v74, &qword_1EBD4C870);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD393C8);
  sub_1BE051694();
  *&v21[v28] = v74;
  v29 = v86;
  v30 = v88;
  *(v21 + 4) = v87;
  *(v21 + 5) = v30;
  v31 = v84;
  *v21 = v83;
  *(v21 + 1) = v31;
  *(v21 + 2) = v85;
  *(v21 + 3) = v29;
  v32 = v68;
  *(v21 + 6) = v89;
  *(v21 + 7) = v32;
  *(v21 + 16) = sub_1BD643C4C;
  *(v21 + 17) = v25;
  v33 = v82;
  *(v21 + 18) = v67;
  *(v21 + 19) = v33;
  v67 = a1[11];
  v34 = swift_allocObject();
  memcpy((v34 + 16), a1, 0x140uLL);
  v35 = v86;
  v36 = v88;
  *(v13 + 4) = v87;
  *(v13 + 5) = v36;
  *(v13 + 2) = v85;
  *(v13 + 3) = v35;
  v37 = v84;
  *v13 = v83;
  *(v13 + 1) = v37;
  v38 = v62;
  v39 = v67;
  *(v13 + 6) = v89;
  *(v13 + 7) = v68;
  *(v13 + 8) = v39;
  *(v13 + 18) = sub_1BD6438A4;
  *(v13 + 19) = v34;
  v40 = *(v7 + 40);
  *&v13[v40] = swift_getKeyPath();
  v41 = v63;
  swift_storeEnumTagMultiPayload();
  v42 = *(v7 + 44);
  *&v70 = 0;
  sub_1BD2EAD80(a1, &v74);
  sub_1BE048964();
  v43 = v64;
  sub_1BE051694();
  *&v13[v42] = v74;
  (*(v41 + 104))(v38, *MEMORY[0x1E69B8068], v43);
  result = PKPassKitBundle();
  if (result)
  {
    v45 = result;
    v60 = sub_1BE04B6F4();
    *&v67 = v46;

    (*(v41 + 8))(v38, v43);
    v64 = swift_allocObject();
    memcpy((v64 + 16), a1, 0x140uLL);
    LOBYTE(v70) = 0;
    sub_1BD2EAD80(a1, &v74);
    sub_1BE051944();
    v63 = *(&v74 + 1);
    v47 = v74;
    v48 = v75;
    *&v68 = sub_1BE0511D4();
    v49 = v65;
    sub_1BD6439F8(v21, v65, type metadata accessor for MeCardAddressSection);
    v50 = v66;
    sub_1BD6439F8(v13, v66, type metadata accessor for NonMeCardAddressSection);
    v51 = v61;
    sub_1BD6439F8(v49, v61, type metadata accessor for MeCardAddressSection);
    v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4DF78);
    sub_1BD6439F8(v50, v51 + *(v52 + 48), type metadata accessor for NonMeCardAddressSection);
    v53 = (v51 + *(v52 + 64));
    v54 = v60;
    *&v70 = v60;
    *(&v70 + 1) = v67;
    v55 = v63;
    v56 = v64;
    *&v71 = sub_1BD6439C4;
    *(&v71 + 1) = v64;
    *&v72 = v47;
    *(&v72 + 1) = v63;
    LOBYTE(v73) = v48;
    *(&v73 + 1) = *v69;
    DWORD1(v73) = *&v69[3];
    *(&v73 + 1) = v68;
    v57 = v71;
    *v53 = v70;
    v53[1] = v57;
    v58 = v73;
    v53[2] = v72;
    v53[3] = v58;
    sub_1BD619524(&v70, &v74);
    sub_1BD643A60(v13, type metadata accessor for NonMeCardAddressSection);
    sub_1BD643A60(v21, type metadata accessor for MeCardAddressSection);
    *&v74 = v54;
    *(&v74 + 1) = v67;
    v75 = sub_1BD6439C4;
    v76 = v56;
    v77 = v47;
    v78 = v55;
    v79 = v48;
    *v80 = *v69;
    *&v80[3] = *&v69[3];
    v81 = v68;
    sub_1BD4623B4(&v74);
    sub_1BD643A60(v66, type metadata accessor for NonMeCardAddressSection);
    return sub_1BD643A60(v65, type metadata accessor for MeCardAddressSection);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1BD64227C(void *a1, uint64_t a2, unint64_t a3, char a4)
{
  v5 = v4;
  v10 = *(v4 + 256);
  v11 = *(v4 + 240);
  *v25 = *(v4 + 224);
  *&v25[9] = *(v4 + 233);
  v23 = v10;
  v24 = v10;
  v21 = *(v4 + 224);
  v22 = v11;
  sub_1BD0DE19C(v25, &v17, &qword_1EBD41360);
  sub_1BD0DE19C(&v24, &v17, &qword_1EBD4DF80);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4DF38);
  sub_1BE0516A4();
  v12 = v20;
  if (v20 == 255)
  {
    v16 = *(v5 + 240);
    v21 = *(v5 + 224);
    v22 = v16;
    v23 = v10;
    v17 = a1;
    v18 = a2;
    v19 = a3;
    v20 = a4 & 1;
    sub_1BD643498(a1, a2, a3, a4 & 1);
    sub_1BE0516B4();
    sub_1BD0DE53C(v25, &qword_1EBD41360);
    sub_1BD0DE53C(&v24, &qword_1EBD4DF80);
  }

  else
  {
    v13 = v17;
    v14 = v18;
    v15 = v19;
    sub_1BD0DE53C(v25, &qword_1EBD41360);
    sub_1BD0DE53C(&v24, &qword_1EBD4DF80);
    sub_1BD64346C(v13, v14, v15, v12);
  }
}

id sub_1BD642410@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v37 = a2;
  v3 = sub_1BE04BD74();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD440B8);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v11 = v32 - v10;
  v12 = a1[1];
  v13 = a1[2];
  v15 = a1[3];
  v14 = a1[4];
  v38 = v12;
  v39 = v13;
  sub_1BD0DDEBC();
  sub_1BE048C84();
  sub_1BE048C84();
  v16 = sub_1BE0506C4();
  v35 = v17;
  v36 = v16;
  v33 = v18;
  v34 = v19;
  v38 = v15;
  v39 = v14;
  v20 = sub_1BE0506C4();
  v32[1] = v21;
  v32[2] = v20;
  (*(v4 + 104))(v7, *MEMORY[0x1E69B8068], v3);
  result = PKPassKitBundle();
  if (result)
  {
    v23 = result;
    v24 = sub_1BE04B6F4();
    v26 = v25;

    (*(v4 + 8))(v7, v3);
    v38 = v24;
    v39 = v26;
    v27 = sub_1BE0506C4();
    v29 = v28;
    LOBYTE(v23) = v30;
    sub_1BE051194();
    sub_1BD0DDF10(v27, v29, v23 & 1);

    v31 = sub_1BE0511A4();
    (*(*(v31 - 8) + 56))(v11, 0, 1, v31);
    return sub_1BE051174();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1BD6426DC@<X0>(id a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X8>)
{
  v6 = v5;
  if ((a4 & 1) == 0)
  {
    v23 = *(v5 + 64);
    v24 = *(v5 + 65);
    v25 = *(v5 + 66);
    v26 = *(v5 + 72);
    v27 = *(v6 + 80);
    v63 = v27;
    v70 = v23 & 1;
    v68 = v24 & 1;
    v66 = v25 & 1;
    v28 = objc_opt_self();
    sub_1BD643498(a1, a2, a3, 0);
    v29 = v27;
    sub_1BE048C84();
    v30 = [v28 sharedInstance];
    v31 = [v30 entries];

    sub_1BD0E5E8C(0, &qword_1EBD4DF60);
    v32 = sub_1BE052744();

    v33 = [objc_allocWithZone(MEMORY[0x1E695CE18]) init];
    *&v71[0] = MEMORY[0x1E69E7CD0];
    v34 = sub_1BD8875B0(v32, v33);

    v35 = swift_allocObject();
    memcpy(v35 + 2, v6, 0x140uLL);
    v35[42] = a1;
    v35[43] = a2;
    v35[44] = a3;
    KeyPath = swift_getKeyPath();
    v73 = 1;
    sub_1BD643498(a1, a2, a3, 0);
    sub_1BD2EAD80(v6, v71);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4BBD0);
    sub_1BE051694();
    LOBYTE(v92) = 0;
    LOBYTE(v95) = 0;
    LOWORD(v73) = 0;
    v74 = MEMORY[0x1E69E7CD0];
    LOBYTE(v75) = v70;
    BYTE1(v75) = v68;
    BYTE2(v75) = v66;
    v76 = v26;
    v77 = v63;
    v78 = a2;
    v79 = a3;
    LOBYTE(v80) = 0;
    v81 = v34;
    v82 = sub_1BD6434C8;
    v83 = v35;
    v84 = KeyPath;
    LOBYTE(v85) = 0;
    v86 = sub_1BD5AE8A8;
    v87 = 0;
    v88 = 0;
    v89 = v71[0];
    sub_1BD6434D8(&v73);
LABEL_21:
    sub_1BD643418();
    sub_1BD5B3224();
    result = sub_1BE04F9A4();
    v53 = v71[7];
    *(a5 + 96) = v71[6];
    *(a5 + 112) = v53;
    *(a5 + 128) = v71[8];
    *(a5 + 144) = v72;
    v54 = v71[3];
    *(a5 + 32) = v71[2];
    *(a5 + 48) = v54;
    v55 = v71[5];
    *(a5 + 64) = v71[4];
    *(a5 + 80) = v55;
    v56 = v71[1];
    *a5 = v71[0];
    *(a5 + 16) = v56;
    return result;
  }

  v11 = [a1 contactSource];
  v12 = [a1 postalAddresses];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD58EB0);
  v13 = sub_1BE052744();

  if (!(v13 >> 62))
  {
    result = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_4;
    }

LABEL_12:

    goto LABEL_13;
  }

  result = sub_1BE053704();
  if (!result)
  {
    goto LABEL_12;
  }

LABEL_4:
  if ((v13 & 0xC000000000000001) != 0)
  {
    v15 = MEMORY[0x1BFB40900](0, v13);
LABEL_7:
    v16 = v15;

    v17 = [v16 label];

    if (v17)
    {
      v18 = sub_1BE052434();
      v20 = v19;

      v21 = sub_1BD551B1C(v18, v20);
      if (v11 != 1)
      {
LABEL_9:
        sub_1BD6432A4(v21, v22);
        v65 = 4;
        v67 = 0;
        goto LABEL_15;
      }

LABEL_14:
      v65 = v22;
      v67 = v21;
LABEL_15:
      v37 = *(v6 + 8);
      v38 = *(v6 + 32);
      v92 = *(v6 + 16);
      v93 = v38;
      v94 = *(v6 + 48);
      v39 = *(v6 + 64);
      v58 = *(v6 + 66);
      v59 = *(v6 + 65);
      v90 = *(v6 + 67);
      v91 = *(v6 + 71);
      v40 = *(v6 + 72);
      v41 = *(v6 + 80);
      v62 = a3;
      if (v37)
      {
        sub_1BD0E5E8C(0, &qword_1EBD406E0);
        sub_1BD643498(a1, a2, a3, 1);
        v42 = v37;
        v43 = sub_1BE053074();

        if (v43)
        {
          v95 = v94;
          v96 = v39;
          v45 = v58;
          v44 = v59;
          v97 = v59;
          v98 = v58;
          v99 = v90;
          v100 = v91;
          v101 = v40;
          v102 = v41;
          v64 = *(&v94 + 1);
          v61 = BYTE1(v94);
          v57 = v94;
          sub_1BD10D494(&v95, v71);
LABEL_20:
          v48 = v39 & 1;
          v49 = v44 & 1;
          v60 = v48;
          v50 = swift_allocObject();
          memcpy((v50 + 16), v6, 0x140uLL);
          v51 = swift_allocObject();
          memcpy((v51 + 16), v6, 0x140uLL);
          *(v51 + 336) = a1;
          LOBYTE(v73) = 0;
          sub_1BD2EAD80(v6, v71);
          sub_1BD643498(a1, a2, v62, 1);
          sub_1BD2EAD80(v6, v71);
          sub_1BE051694();
          v52 = v73;
          LOBYTE(v73) = 1;
          v74 = a1;
          v75 = v67;
          v76 = v65;
          LOBYTE(v77) = v57;
          BYTE1(v77) = v61;
          v78 = v64;
          LOBYTE(v79) = v60;
          BYTE1(v79) = v49;
          BYTE2(v79) = v45 & 1;
          v80 = v40;
          v81 = v41;
          v82 = sub_1BD643484;
          v83 = v50;
          v84 = sub_1BD64348C;
          v85 = v51;
          v86 = sub_1BDA50324;
          v87 = 0;
          v88 = v52;
          LOBYTE(v89) = v71[0];
          *(&v89 + 1) = *(&v71[0] + 1);
          sub_1BD6434BC(&v73);
          goto LABEL_21;
        }
      }

      else
      {
        v46 = a1;
      }

      v47 = v41;
      sub_1BE048C84();
      v57 = 0;
      v61 = 0;
      v64 = MEMORY[0x1E69E7CD0];
      v45 = v58;
      v44 = v59;
      goto LABEL_20;
    }

LABEL_13:
    v21 = 0;
    v22 = 4;
    if (v11 != 1)
    {
      goto LABEL_9;
    }

    goto LABEL_14;
  }

  if (*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v15 = *(v13 + 32);
    goto LABEL_7;
  }

  __break(1u);
  return result;
}

uint64_t sub_1BD642DB4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, int64_t a5)
{
  if (a1)
  {
    v9 = a1;
    v10 = sub_1BD6434E0(a3, a4, a5, v9);
    MEMORY[0x1BFB41980](*MEMORY[0x1E69B9F78], 0);
    (*(a2 + 144))(v10);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4DF38);
  return sub_1BE0516B4();
}

uint64_t sub_1BD642EF4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  (*(a2 + 160))(a3, a1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4DF38);
  return sub_1BE0516B4();
}

void sub_1BD642FC0(uint64_t *a1@<X8>)
{
  if (*(v1 + 24) == 1)
  {
    v3 = [*v1 identifier];
    v4 = sub_1BE052434();
    v6 = v5;
  }

  else
  {
    v6 = 0x80000001BE132400;
    v4 = 0xD00000000000001ALL;
  }

  *a1 = v4;
  a1[1] = v6;
}

uint64_t sub_1BD64304C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 25))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 24);
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

uint64_t sub_1BD643094(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *(result + 24) = -a2;
    }
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_9PassKitUI22AddressManagementSheetOSg(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 > 1)
  {
    return (v1 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t get_enum_tag_for_layout_string_9PassKitUI25PaymentAuthorizationModelC8ShippingV0G18UnserviceableErrorVSg(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1BD64312C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 320))
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

uint64_t sub_1BD643174(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 312) = 0;
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
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 320) = 1;
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

    *(result + 320) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1BD64323C()
{
  result = qword_1EBD4DF30;
  if (!qword_1EBD4DF30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4DF30);
  }

  return result;
}

void sub_1BD643290(void *a1, uint64_t a2, unint64_t a3, char a4)
{
  if (a4)
  {
  }

  else
  {
    sub_1BD6432A4(a2, a3);
  }
}

uint64_t sub_1BD6432A4(uint64_t a1, unint64_t a2)
{
  if (a2 != 4)
  {
    return sub_1BD35D778(a1, a2);
  }

  return a1;
}

double sub_1BD6432B4@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1BD6426DC(*a1, *(a1 + 8), *(a1 + 16), *(a1 + 24), v8);
  v3 = v8[7];
  *(a2 + 96) = v8[6];
  *(a2 + 112) = v3;
  *(a2 + 128) = v8[8];
  *(a2 + 144) = v9;
  v4 = v8[3];
  *(a2 + 32) = v8[2];
  *(a2 + 48) = v4;
  v5 = v8[5];
  *(a2 + 64) = v8[4];
  *(a2 + 80) = v5;
  result = *v8;
  v7 = v8[1];
  *a2 = v8[0];
  *(a2 + 16) = v7;
  return result;
}

unint64_t sub_1BD643338()
{
  result = qword_1EBD4DF48;
  if (!qword_1EBD4DF48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4DF48);
  }

  return result;
}

unint64_t sub_1BD64338C()
{
  result = qword_1EBD4DF50;
  if (!qword_1EBD4DF50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4DF40);
    sub_1BD643418();
    sub_1BD5B3224();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4DF50);
  }

  return result;
}

unint64_t sub_1BD643418()
{
  result = qword_1EBD4DF58;
  if (!qword_1EBD4DF58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4DF58);
  }

  return result;
}

void sub_1BD64346C(void *a1, uint64_t a2, unint64_t a3, char a4)
{
  if (a4 != -1)
  {
    sub_1BD643290(a1, a2, a3, a4 & 1);
  }
}

id sub_1BD643498(void *a1, uint64_t a2, unint64_t a3, char a4)
{
  if (a4)
  {
    return a1;
  }

  else
  {
    return sub_1BD6434AC(a2, a3);
  }
}

uint64_t sub_1BD6434AC(uint64_t a1, unint64_t a2)
{
  if (a2 != 4)
  {
    return sub_1BD14ED40(a1, a2);
  }

  return a1;
}

uint64_t sub_1BD6434E0(uint64_t a1, uint64_t a2, int64_t a3, id a4)
{
  v8 = *MEMORY[0x1E695C360];
  if ([a4 valueForKey_])
  {
    sub_1BE053624();
    swift_unknownObjectRelease();
  }

  else
  {
    v23 = 0u;
    v24 = 0u;
  }

  v25[0] = v23;
  v25[1] = v24;
  if (!*(&v24 + 1))
  {
    sub_1BD0DE53C(v25, &qword_1EBD3EC90);
    goto LABEL_17;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4DF68);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_17:
    v12 = a4;
LABEL_18:
    v13 = v12;
    [v13 setContactSource_];
    v14 = [a4 valueSource];
    [v13 setValueSource_];

    return v13;
  }

  v9 = v22;
  if (v22 >> 62)
  {
    result = sub_1BE053704();
    if (!result)
    {
      goto LABEL_15;
    }
  }

  else
  {
    result = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!result)
    {
LABEL_15:

      goto LABEL_17;
    }
  }

  if ((v22 & 0xC000000000000001) != 0)
  {
    sub_1BE048C84();
    v15 = MEMORY[0x1BFB40900](0);

    v11 = v15;
    if (a3 > 1)
    {
      goto LABEL_11;
    }
  }

  else
  {
    if (!*((v22 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_38;
    }

    v11 = *(v22 + 32);
    if (a3 > 1)
    {
LABEL_11:
      switch(a3)
      {
        case 2:
          v21 = v11;
          break;
        case 3:
          v21 = v11;
          break;
        case 4:

          goto LABEL_15;
        default:
          goto LABEL_36;
      }

      goto LABEL_28;
    }
  }

  if (a3)
  {
    if (a3 != 1)
    {
LABEL_36:
      v21 = v11;
      goto LABEL_29;
    }

    v21 = v11;
  }

  else
  {
    v21 = v11;
  }

LABEL_28:
  sub_1BE052434();
LABEL_29:
  sub_1BD14ED40(a2, a3);
  [a4 mutableCopy];
  sub_1BE053624();
  swift_unknownObjectRelease();
  sub_1BD0E5E8C(0, &qword_1EBD4DF70);
  if ((swift_dynamicCast() & 1) == 0)
  {

    goto LABEL_17;
  }

  v16 = sub_1BE052404();

  v17 = [v21 labeledValueBySettingLabel_];

  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  if (v22 >> 62 || (result & 1) == 0)
  {
    result = sub_1BD509758();
    v9 = result;
  }

  if (*((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v18 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x20);
    *((v9 & 0xFFFFFFFFFFFFFF8) + 0x20) = v17;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD58EB0);
    v19 = sub_1BE052724();

    v20 = v8;
    [v23 setValue:v19 forKey:v20];

    v12 = v23;
    goto LABEL_18;
  }

LABEL_38:
  __break(1u);
  return result;
}

uint64_t objectdestroyTm_72()
{

  sub_1BD35D02C(*(v0 + 40), *(v0 + 48), *(v0 + 56));

  v1 = *(v0 + 264);
  if (v1 != 255)
  {
    sub_1BD643290(*(v0 + 240), *(v0 + 248), *(v0 + 256), v1 & 1);
  }

  if (*(v0 + 312))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1BD6439F8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1BD643A60(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1BD643AC0()
{
  result = qword_1EBD4DF88;
  if (!qword_1EBD4DF88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EBD4DF90);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4DEF0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4DF40);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4DEE8);
    sub_1BD0DE4F4(&qword_1EBD4DF28, &qword_1EBD4DEE8);
    sub_1BD64323C();
    swift_getOpaqueTypeConformance2();
    sub_1BD643338();
    sub_1BD64338C();
    swift_getOpaqueTypeConformance2();
    sub_1BD0F15A0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4DF88);
  }

  return result;
}

uint64_t sub_1BD643C50(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_16;
  }

  v5 = a5 >> 1;
  v6 = (a5 >> 1) - a4;
  if (__OFSUB__(a5 >> 1, a4))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v7 = v6 - result;
  if (__OFSUB__(v6, result))
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (v7 < 1)
  {
    v7 = 0;
  }

  else if ((v6 & 0x8000000000000000) == 0)
  {
    v8 = a5 >> 1;
    if (v6 < v7)
    {
LABEL_10:
      if (v8 >= a4)
      {
        if (v5 >= a4)
        {
          if (v5 >= v8)
          {
            if ((v8 & 0x8000000000000000) == 0)
            {
              return a2;
            }

            goto LABEL_21;
          }

LABEL_20:
          __break(1u);
LABEL_21:
          __break(1u);
          goto LABEL_22;
        }

LABEL_19:
        __break(1u);
        goto LABEL_20;
      }

LABEL_18:
      __break(1u);
      goto LABEL_19;
    }
  }

  v8 = a4 + v7;
  if (!__OFADD__(a4, v7))
  {
    goto LABEL_10;
  }

LABEL_22:
  __break(1u);
  return result;
}

void sub_1BD643E74()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD450F0);
  v3 = MEMORY[0x1EEE9AC00](v1 - 8, v2);
  v5 = &v18 - v4;
  v6 = [v0 text];
  if (v6)
  {
    v7 = v6;
    sub_1BE052434();
  }

  sub_1BD3EBC7C();

  v8 = sub_1BE04B0F4();
  (*(*(v8 - 8) + 56))(v5, 1, 1, v8);
  sub_1BE053434();
  v10 = v9;

  sub_1BD0DE53C(v5, &qword_1EBD450F0);
  if ((v10 & 0x100000000) != 0)
  {
    MEMORY[0x1BFB403C0](0);
  }

  MEMORY[0x1BFB403C0](10);
  v11 = *&v0[OBJC_IVAR____TtC9PassKitUI19CurrencyUITextField_formatter];
  [v11 maximumFractionDigits];
  sub_1BE04AA74();
  sub_1BE053354();
  v12 = sub_1BE053344();
  v13 = [v11 stringForObjectValue_];

  if (v13)
  {
    sub_1BE052434();
  }

  v14 = sub_1BE052404();

  [v0 setText_];

  v15 = [v0 endOfDocument];
  v16 = [v0 endOfDocument];
  v17 = [v0 textRangeFromPosition:v15 toPosition:v16];

  [v0 setSelectedTextRange_];
}

uint64_t sub_1BD644240(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD450F0);
  v11 = MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v13 = v41 - v12;
  result = [a1 text];
  if (result)
  {
    v41[0] = a4;
    v15 = result;
    sub_1BE052434();

    v16 = sub_1BE052B64();
    v18 = v17;
    LOBYTE(v15) = v19;

    if (v15)
    {
      return 0;
    }

    result = [a1 text];
    if (!result)
    {
      return result;
    }

    v20 = result;
    v21 = sub_1BE052434();
    v23 = v22;

    sub_1BD65C8D0(v16, v18, v41[0], a5, v21, v23);

    sub_1BD3EBC7C();

    v24 = sub_1BE04B0F4();
    (*(*(v24 - 8) + 56))(v13, 1, 1, v24);
    sub_1BE053434();
    v26 = v25;

    sub_1BD0DE53C(v13, &qword_1EBD450F0);
    if ((v26 & 0x100000000) != 0)
    {
      MEMORY[0x1BFB403C0](0);
    }

    MEMORY[0x1BFB403C0](10);
    v27 = *(v5 + OBJC_IVAR____TtC9PassKitUI19CurrencyUITextField_formatter);
    [v27 maximumFractionDigits];
    sub_1BE04AA74();
    v28 = sub_1BE053354();
    v30 = v29;
    v32 = v31;
    v33 = MEMORY[0x1BFB403C0](0);
    if (MEMORY[0x1BFB403F0](v28, v30, v32, v33, v34, v35))
    {
      return 0;
    }

    result = [v27 maximum];
    if (!result)
    {
      return result;
    }

    v36 = result;
    [result decimalValue];
    v37 = v49;
    v38 = v48;

    if ((MEMORY[0x1BFB403F0](v28, v30, v32, v38, *(&v38 + 1), v37) & 1) == 0)
    {
      return 0;
    }

    else
    {
      v39 = *(v5 + OBJC_IVAR____TtC9PassKitUI19CurrencyUITextField__amount + 16);
      v46[0] = *(v5 + OBJC_IVAR____TtC9PassKitUI19CurrencyUITextField__amount);
      v46[1] = v39;
      v47 = *(v5 + OBJC_IVAR____TtC9PassKitUI19CurrencyUITextField__amount + 32);
      v40 = *(v5 + OBJC_IVAR____TtC9PassKitUI19CurrencyUITextField__amount + 16);
      v43 = *(v5 + OBJC_IVAR____TtC9PassKitUI19CurrencyUITextField__amount);
      v44 = v40;
      v45 = *(v5 + OBJC_IVAR____TtC9PassKitUI19CurrencyUITextField__amount + 32);
      v41[1] = v28;
      v41[2] = v30;
      v42 = v32;
      sub_1BD64475C(v46, &v48);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD4EED0);
      sub_1BE0518F4();
      v48 = v43;
      v49 = v44;
      v50 = v45;
      sub_1BD0DE53C(&v48, &unk_1EBD4EED0);
      return 1;
    }
  }

  return result;
}

id sub_1BD6446AC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CurrencyUITextField();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1BD64475C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD4EED0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BD6447CC(uint64_t result)
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_7;
  }

  v1 = result;
  result = sub_1BE052534();
  if (__OFSUB__(result, v1))
  {
LABEL_7:
    __break(1u);
    return result;
  }

  sub_1BE052544();

  return sub_1BE052654();
}

uint64_t sub_1BD644898(uint64_t result, unint64_t a2)
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_13;
  }

  v2 = a2;
  v3 = a2 >> 62;
  if (a2 >> 62)
  {
LABEL_13:
    v8 = result;
    result = sub_1BE053704();
    v9 = result - v8;
    if (__OFSUB__(result, v8))
    {
LABEL_26:
      __break(1u);
      goto LABEL_27;
    }

    v10 = sub_1BE053704();
    result = sub_1BE053704();
    if (result < 0)
    {
LABEL_27:
      __break(1u);
      return result;
    }

    if (v9 <= v10)
    {
      v11 = v9 & ~(v9 >> 63);
    }

    else
    {
      v11 = v10;
    }

    if (v10 < 0 || v9 < 1)
    {
      v5 = v9 & ~(v9 >> 63);
    }

    else
    {
      v5 = v11;
    }

    result = sub_1BE053704();
    if (result >= v5)
    {
      goto LABEL_4;
    }

LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v4 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v5 = (v4 - result) & ~((v4 - result) >> 63);
  if (v4 < v5)
  {
    goto LABEL_25;
  }

LABEL_4:
  if ((v2 & 0xC000000000000001) != 0 && v5)
  {
    sub_1BD6449E4();
    sub_1BE048C84();
    v6 = 0;
    do
    {
      v7 = v6 + 1;
      sub_1BE053864();
      v6 = v7;
    }

    while (v5 != v7);
    if (!v3)
    {
      return v2 & 0xFFFFFFFFFFFFFF8;
    }
  }

  else
  {
    sub_1BE048C84();
    if (!v3)
    {
      return v2 & 0xFFFFFFFFFFFFFF8;
    }
  }

  return sub_1BE0539D4();
}

unint64_t sub_1BD6449E4()
{
  result = qword_1EBD4DFC0;
  if (!qword_1EBD4DFC0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EBD4DFC0);
  }

  return result;
}

uint64_t sub_1BD644A30(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  sub_1BE048964();
  sub_1BE048964();
  sub_1BE048964();
  sub_1BD645624(a1, a2, a3, a4, a5, sub_1BD644BF8, 0, v17);
  v15 = type metadata accessor for SecondarySheet();
  MEMORY[0x1BFB3E0D0](v17, a6, v15, a8);
  v19[2] = v17[2];
  v19[3] = v17[3];
  v20[0] = v18[0];
  *(v20 + 9) = *(v18 + 9);
  v19[0] = v17[0];
  v19[1] = v17[1];
  return (*(*(v15 - 8) + 8))(v19, v15);
}

uint64_t sub_1BD644B68()
{
  sub_1BE04CDA4();
  sub_1BD6459A0(&qword_1EBD369D0, MEMORY[0x1E69BCB10]);

  return sub_1BE04E3C4();
}

uint64_t sub_1BD644BF8()
{
  sub_1BE04CDA4();
  swift_allocObject();
  return sub_1BE04CD94();
}

uint64_t sub_1BD644C30()
{
  if (*(v0 + 56))
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_1BE048964();
    sub_1BE04D8B4();

    return v2;
  }

  else
  {
    type metadata accessor for PresentationContext();
    sub_1BD6459A0(&unk_1EBD361B0, type metadata accessor for PresentationContext);
    result = sub_1BE04EEB4();
    __break(1u);
  }

  return result;
}

uint64_t sub_1BD644D14@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v25 = a1;
  v28 = a3;
  swift_getWitnessTable();
  sub_1BE04FC14();
  v5 = sub_1BE04EBD4();
  v6 = *(v5 - 8);
  v26 = v5;
  v27 = v6;
  MEMORY[0x1EEE9AC00](v5, v7);
  v24 = &v23 - v8;
  v9 = swift_allocObject();
  v10 = *(a2 + 16);
  v11 = *(a2 + 24);
  *(v9 + 16) = v10;
  *(v9 + 24) = v11;
  v12 = v3[3];
  *(v9 + 64) = v3[2];
  *(v9 + 80) = v12;
  *(v9 + 96) = v3[4];
  *(v9 + 105) = *(v3 + 73);
  v13 = v3[1];
  *(v9 + 32) = *v3;
  *(v9 + 48) = v13;
  v14 = *(*(a2 - 8) + 16);
  v14(&v31, v3, a2);
  WitnessTable = swift_getWitnessTable();
  sub_1BE051054();

  v31 = *v3;
  v32 = *(v3 + 16);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD4DFE0);
  MEMORY[0x1BFB3E970](&v33, v16);
  v17 = swift_allocObject();
  *(v17 + 16) = v10;
  *(v17 + 24) = v11;
  v18 = v3[3];
  *(v17 + 64) = v3[2];
  *(v17 + 80) = v18;
  *(v17 + 96) = v3[4];
  *(v17 + 105) = *(v3 + 73);
  v19 = v3[1];
  *(v17 + 32) = *v3;
  *(v17 + 48) = v19;
  v14(&v31, v3, a2);
  v29 = WitnessTable;
  v30 = MEMORY[0x1E69805D0];
  v20 = v26;
  swift_getWitnessTable();
  v21 = v24;
  sub_1BE051074();

  return (*(v27 + 8))(v21, v20);
}

void sub_1BD645000(__int128 *a1)
{
  v4 = *a1;
  v5 = *(a1 + 16);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD4DFE0);
  MEMORY[0x1BFB3E970](&v3, v1);
  if (v3 == 1)
  {
    v2 = type metadata accessor for SecondarySheet();
    sub_1BD64508C(v2);
  }
}

void sub_1BD64508C(uint64_t a1)
{
  v3 = sub_1BD644C30();
  if (v3)
  {
    v4 = v3;
    if ([v3 supportsSecondaryViewController])
    {
      v9 = *v1;
      v10 = *(v1 + 16);
      v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD4DFE0);
      MEMORY[0x1BFB3E970](&v8, v5);
      if (v8 == 1)
      {
        v7 = sub_1BD64519C(a1, v6);
        [v4 presentSecondaryViewController:v7 animated:1 completion:0];
        swift_unknownObjectRelease();
      }

      else
      {
        [v4 dismissSecondaryViewControllerAnimated:1 completion:0];
        swift_unknownObjectRelease();
      }
    }

    else
    {

      swift_unknownObjectRelease();
    }
  }
}

uint64_t sub_1BD64519C(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  v29 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](a1, a2);
  v6 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3A0B8);
  v7 = sub_1BE04EBD4();
  v30 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v28 - v9;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EBD4DFD0);
  v11 = sub_1BE04EBD4();
  v32 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11, v12);
  v31 = &v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v14, v15);
  v18 = &v28 - v17;
  (*(v2 + 24))(v16);
  v33 = v2;
  v19 = *(v2 + 40);
  sub_1BD250AA8();
  if (v19)
  {
    v20 = *(a1 + 24);
    sub_1BD6459A0(&qword_1EBD35E40, sub_1BD250AA8);
    v21 = v19;
    sub_1BE050BE4();

    (*(v29 + 8))(v6, v4);
    sub_1BD644B68();
    sub_1BE04CDA4();
    v22 = sub_1BD3E0B1C(&qword_1EBD3A0D0, &qword_1EBD3A0B8);
    v36 = v20;
    v37 = v22;
    WitnessTable = swift_getWitnessTable();
    sub_1BD6459A0(&qword_1EBD369D0, MEMORY[0x1E69BCB10]);
    sub_1BE050BE4();

    (*(v30 + 8))(v10, v7);
    v24 = sub_1BD3E0B1C(&qword_1EBD3A0D8, &unk_1EBD4DFD0);
    v34 = WitnessTable;
    v35 = v24;
    swift_getWitnessTable();
    sub_1BE04CCD4();
    v25 = v32;
    (*(v32 + 16))(v31, v18, v11);
    sub_1BD644B68();
    v26 = sub_1BE04CCB4();
    (*(v25 + 8))(v18, v11);
    return v26;
  }

  else
  {
    sub_1BD6459A0(&qword_1EBD35E40, sub_1BD250AA8);
    result = sub_1BE04EEB4();
    __break(1u);
  }

  return result;
}

uint64_t sub_1BD645624@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  sub_1BD250AA8();
  sub_1BD6459A0(&qword_1EBD35E40, sub_1BD250AA8);
  v15 = sub_1BE04EEC4();
  v17 = v16;
  type metadata accessor for PresentationContext();
  sub_1BD6459A0(&unk_1EBD361B0, type metadata accessor for PresentationContext);
  result = sub_1BE04EEC4();
  *a8 = a1;
  *(a8 + 8) = a2;
  *(a8 + 16) = a3;
  *(a8 + 24) = a4;
  *(a8 + 32) = a5;
  *(a8 + 40) = v15;
  *(a8 + 48) = v17;
  *(a8 + 56) = result;
  *(a8 + 64) = v19;
  *(a8 + 72) = a6;
  *(a8 + 80) = a7;
  *(a8 + 88) = 0;
  return result;
}

uint64_t sub_1BD645764()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 __swift_memcpy89_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 73) = *(a2 + 73);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_1BD6457D0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 89))
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

uint64_t sub_1BD645818(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 88) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 89) = 1;
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

    *(result + 89) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t objectdestroyTm_73()
{

  sub_1BD0D45CC();

  return swift_deallocObject();
}

uint64_t sub_1BD6459A0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1BD645AC4()
{
  v1 = (v0 + OBJC_IVAR___PKAppleCardFeaturesAndBenefitsSectionController_selectionHandler);
  swift_beginAccess();
  v2 = *v1;
  sub_1BD0D44B8(*v1);
  return v2;
}

uint64_t sub_1BD645B20(uint64_t a1)
{
  v2 = sub_1BE04B414();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 32);
  sub_1BE04B3D4();
  sub_1BE048964();
  v7(v6);

  return (*(v3 + 8))(v6, v2);
}

uint64_t sub_1BD645CD4(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR___PKAppleCardFeaturesAndBenefitsSectionController_selectionHandler);
  swift_beginAccess();
  v6 = *v5;
  *v5 = a1;
  v5[1] = a2;
  return sub_1BD0D4744(v6);
}

uint64_t sub_1BD645D34@<X0>(void *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = (*a1 + OBJC_IVAR___PKAppleCardFeaturesAndBenefitsSectionController_selectionHandler);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_1BD619664;
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

uint64_t sub_1BD645DD4(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_1BD646778;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = (*a2 + OBJC_IVAR___PKAppleCardFeaturesAndBenefitsSectionController_selectionHandler);
  swift_beginAccess();
  v8 = *v7;
  *v7 = v6;
  v7[1] = v5;
  sub_1BD0D44B8(v3);
  return sub_1BD0D4744(v8);
}

uint64_t sub_1BD6460E8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v8 = *(v5 + OBJC_IVAR___PKAppleCardFeaturesAndBenefitsSectionController_exploreFeaturesAndBenefitsSectionID) == a3 && *(v5 + OBJC_IVAR___PKAppleCardFeaturesAndBenefitsSectionController_exploreFeaturesAndBenefitsSectionID + 8) == a4;
  if (v8 || (result = sub_1BE053B84(), (result & 1) != 0))
  {
    result = sub_1BE04B3F4();
    if (!result)
    {
      v10 = sub_1BE04B3C4();
      [a1 deselectRowAtIndexPath:v10 animated:1];

      v11 = (v5 + OBJC_IVAR___PKAppleCardFeaturesAndBenefitsSectionController_selectionHandler);
      result = swift_beginAccess();
      v12 = *v11;
      if (*v11)
      {
        sub_1BE048964();
        v12(a2);
        return sub_1BD0D4744(v12);
      }
    }
  }

  return result;
}

id AppleCardFeaturesAndBenefitsSectionController.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id AppleCardFeaturesAndBenefitsSectionController.init()()
{
  v1 = &v0[OBJC_IVAR___PKAppleCardFeaturesAndBenefitsSectionController_exploreFeaturesAndBenefitsSectionID];
  *v1 = 0xD000000000000023;
  *(v1 + 1) = 0x80000001BE1324E0;
  v2 = &v0[OBJC_IVAR___PKAppleCardFeaturesAndBenefitsSectionController_selectionHandler];
  v3 = type metadata accessor for AppleCardFeaturesAndBenefitsSectionController();
  *v2 = 0;
  *(v2 + 1) = 0;
  v5.receiver = v0;
  v5.super_class = v3;
  return objc_msgSendSuper2(&v5, sel_init);
}

id AppleCardFeaturesAndBenefitsSectionController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AppleCardFeaturesAndBenefitsSectionController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_1BD6464A8(uint64_t a1)
{
  v3 = sub_1BE04BD74();
  v4 = *(v3 - 8);
  v6 = MEMORY[0x1EEE9AC00](v3, v5);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 104))(v8, *MEMORY[0x1E69B80B0], v3, v6);
  result = PKPassKitBundle();
  if (result)
  {
    v10 = result;
    sub_1BE04B6F4();

    (*(v4 + 8))(v8, v3);
    v11 = sub_1BE052404();

    v12 = [v1 infoCellWithPrimaryText:v11 detailText:0 cellStyle:0 forTableView:a1];

    [v12 setAccessoryType_];
    return v12;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1BD64671C()
{
  v1 = *(v0 + 16);
  v2 = sub_1BE04B3C4();
  (*(v1 + 16))(v1, v2);
}

uint64_t (*sub_1BD6467C8(uint64_t *a1))()
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
  return sub_1BD540F60;
}

uint64_t (*sub_1BD646880(uint64_t *a1))()
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

uint64_t sub_1BD64694C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();
}

char *sub_1BD6469C4()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD416E0);
  v40 = *(v1 - 8);
  v41 = v1;
  MEMORY[0x1EEE9AC00](v1, v2);
  v39 = &v35 - v3;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD416C0);
  MEMORY[0x1EEE9AC00](v38, v4);
  v37 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v36 = &v35 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CD60);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = &v35 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4E098);
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14, v16);
  v18 = &v35 - v17;
  v19 = OBJC_IVAR____TtC9PassKitUI19FundingSourcesModel__fetchedSources;
  v43 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4AE98);
  sub_1BE04D874();
  v20 = *(v15 + 32);
  v20(&v0[v19], v18, v14);
  v21 = OBJC_IVAR____TtC9PassKitUI19FundingSourcesModel__availableSources;
  v43 = 0;
  sub_1BE04D874();
  v20(&v0[v21], v18, v14);
  v22 = OBJC_IVAR____TtC9PassKitUI19FundingSourcesModel__unavailableSources;
  v43 = 0;
  sub_1BE04D874();
  v20(&v0[v22], v18, v14);
  v23 = OBJC_IVAR____TtC9PassKitUI19FundingSourcesModel__loadingSources;
  LOBYTE(v43) = 0;
  sub_1BE04D874();
  v24 = *(v10 + 32);
  v24(&v0[v23], v13, v9);
  v25 = OBJC_IVAR____TtC9PassKitUI19FundingSourcesModel__loaded;
  LOBYTE(v43) = 0;
  sub_1BE04D874();
  v24(&v0[v25], v13, v9);
  v26 = OBJC_IVAR____TtC9PassKitUI19FundingSourcesModel__error;
  v27 = type metadata accessor for FeatureError(0);
  v28 = v36;
  (*(*(v27 - 8) + 56))(v36, 1, 1, v27);
  sub_1BD23C2BC(v28, v37);
  v29 = v39;
  sub_1BE04D874();
  sub_1BD23C32C(v28);
  (*(v40 + 32))(&v0[v26], v29, v41);
  *&v0[OBJC_IVAR____TtC9PassKitUI19FundingSourcesModel_account] = 0;
  v30 = OBJC_IVAR____TtC9PassKitUI19FundingSourcesModel_accountService;
  *&v0[v30] = [objc_opt_self() sharedInstance];
  v31 = type metadata accessor for FundingSourcesModel(0);
  v42.receiver = v0;
  v42.super_class = v31;
  v32 = objc_msgSendSuper2(&v42, sel_init);
  v33 = *&v32[OBJC_IVAR____TtC9PassKitUI19FundingSourcesModel_accountService];
  if (v33)
  {
    [v33 registerObserver_];
  }

  return v32;
}

id sub_1BD646E60()
{
  v1 = *&v0[OBJC_IVAR____TtC9PassKitUI19FundingSourcesModel_accountService];
  if (v1)
  {
    [v1 unregisterObserver_];
  }

  v3.receiver = v0;
  v3.super_class = type metadata accessor for FundingSourcesModel(0);
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

void sub_1BD6470F0()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();

  if ((v8[0] & 1) == 0)
  {
    v1 = *&v0[OBJC_IVAR____TtC9PassKitUI19FundingSourcesModel_account];
    if (v1)
    {
      swift_getKeyPath();
      swift_getKeyPath();
      LOBYTE(v8[0]) = 1;
      v2 = v0;
      v3 = v1;
      sub_1BE04D8C4();
      v4 = *&v2[OBJC_IVAR____TtC9PassKitUI19FundingSourcesModel_accountService];
      if (v4)
      {
        v5 = [v3 accountIdentifier];
        v6 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v8[4] = sub_1BD649740;
        v8[5] = v6;
        v8[0] = MEMORY[0x1E69E9820];
        v8[1] = 1107296256;
        v8[2] = sub_1BD64778C;
        v8[3] = &block_descriptor_179_1;
        v7 = _Block_copy(v8);

        [v4 updatePaymentFundingSourcesForAccountIdentifier:v5 force:1 completion:v7];

        _Block_release(v7);
        v3 = v5;
      }
    }
  }
}

uint64_t sub_1BD6472B8(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = sub_1BE051F54();
  v20 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_1BE051FA4();
  v10 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19, v11);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BD0E5E8C(0, &qword_1EBD35E90);
  v14 = sub_1BE052D54();
  v15 = swift_allocObject();
  v15[2] = a2;
  v15[3] = a3;
  v15[4] = a1;
  aBlock[4] = sub_1BD649748;
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BD126964;
  aBlock[3] = &block_descriptor_185;
  v16 = _Block_copy(aBlock);
  v17 = a2;
  sub_1BE048C84();
  sub_1BE048964();

  sub_1BE051F74();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1BD14EC84();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD387F0);
  sub_1BD14ECDC();
  sub_1BE053664();
  MEMORY[0x1BFB3FDF0](0, v13, v9, v16);
  _Block_release(v16);

  (*(v20 + 8))(v9, v6);
  return (*(v10 + 8))(v13, v19);
}

uint64_t sub_1BD647570(void *a1, uint64_t a2, unint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD416C0);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = &v17[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = &v17[-v11];
  if (a1)
  {
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v13 = a1;
      FeatureError.init(feature:error:)(5, a1, v12);
      swift_getKeyPath();
      swift_getKeyPath();
      sub_1BD23C2BC(v12, v8);
      sub_1BE04D8C4();
      sub_1BD23C32C(v12);
    }
  }

  else
  {
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      swift_getKeyPath();
      swift_getKeyPath();
      v17[32] = 1;
      sub_1BE04D8C4();
    }
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v15 = Strong;
    sub_1BD647ED4(a3);
  }

  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v17[7] = 0;
    return sub_1BE04D8C4();
  }

  return result;
}

uint64_t sub_1BD64778C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a2;
  v5 = *(a1 + 32);
  if (a2)
  {
    sub_1BD0E5E8C(0, &qword_1EBD4E090);
    v4 = sub_1BE052744();
  }

  sub_1BE048964();
  v6 = a3;
  v5(v4, a3);
}

uint64_t sub_1BD647830(void *a1)
{
  v2 = v1;
  v4 = [a1 bankAccountRepresentation];
  if (v4)
  {
    v5 = v4;
    if ([v4 status] == 2)
    {
      swift_getKeyPath();
      swift_getKeyPath();
      sub_1BE04D8B4();

      if (v25[0])
      {

        v7 = sub_1BD646880(v25);
        if (*v6)
        {
          v8 = v6;
          v9 = a1;
          MEMORY[0x1BFB3F7A0]();
          if (*((*v8 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v8 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_1BE052774();
          }

          sub_1BE0527C4();
          (v7)(v25, 0);
        }

        else
        {
          (v7)(v25, 0);
        }
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD39F80);
        v17 = swift_allocObject();
        *(v17 + 16) = xmmword_1BE0B7020;
        *(v17 + 32) = a1;
        swift_getKeyPath();
        swift_getKeyPath();
        v25[0] = v17;
        v18 = a1;
        v19 = v2;
        sub_1BE04D8C4();
      }

      goto LABEL_19;
    }
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();

  if (v25[0])
  {

    v11 = sub_1BD6467C8(v25);
    if (*v10)
    {
      v12 = v10;
      v13 = a1;
      MEMORY[0x1BFB3F7A0]();
      if (*((*v12 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v12 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1BE052774();
      }

      sub_1BE0527C4();
      (v11)(v25, 0);
    }

    else
    {
      (v11)(v25, 0);
    }
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD39F80);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_1BE0B7020;
    *(v14 + 32) = a1;
    swift_getKeyPath();
    swift_getKeyPath();
    v25[0] = v14;
    v15 = a1;
    v16 = v2;
    sub_1BE04D8C4();
  }

LABEL_19:
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();

  v20 = v25[0];
  if (!v25[0])
  {
    v20 = MEMORY[0x1E69E7CC0];
  }

  v25[0] = v20;
  v21 = a1;
  MEMORY[0x1BFB3F7A0]();
  if (*((v25[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v25[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1BE052774();
  }

  sub_1BE0527C4();
  v22 = v25[0];
  swift_getKeyPath();
  swift_getKeyPath();
  v25[4] = v22;
  v23 = v2;
  return sub_1BE04D8C4();
}

uint64_t sub_1BD647C64()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD416C0);
  MEMORY[0x1EEE9AC00](v1 - 8, v2);
  v4 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5, v6);
  v8 = &v17 - v7;
  swift_getKeyPath();
  swift_getKeyPath();
  v18 = 0;
  v9 = v0;
  sub_1BE04D8C4();
  swift_getKeyPath();
  swift_getKeyPath();
  v18 = 0;
  v10 = v9;
  sub_1BE04D8C4();
  swift_getKeyPath();
  swift_getKeyPath();
  v18 = 0;
  v11 = v10;
  sub_1BE04D8C4();
  v12 = type metadata accessor for FeatureError(0);
  (*(*(v12 - 8) + 56))(v8, 1, 1, v12);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BD23C2BC(v8, v4);
  v13 = v11;
  sub_1BE04D8C4();
  sub_1BD23C32C(v8);
  swift_getKeyPath();
  swift_getKeyPath();
  LOBYTE(v18) = 0;
  v14 = v13;
  sub_1BE04D8C4();
  swift_getKeyPath();
  swift_getKeyPath();
  LOBYTE(v18) = 0;
  v15 = v14;
  return sub_1BE04D8C4();
}

uint64_t sub_1BD647ED4(unint64_t a1)
{
  if (!a1)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v13 = v1;
    sub_1BE04D8C4();
    swift_getKeyPath();
    swift_getKeyPath();
    v14 = v13;
    sub_1BE04D8C4();
    swift_getKeyPath();
    swift_getKeyPath();
    v15 = v14;
    return sub_1BE04D8C4();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE048C84();
  v3 = v1;
  result = sub_1BE04D8C4();
  v19 = MEMORY[0x1E69E7CC0];
  v20 = MEMORY[0x1E69E7CC0];
  if (a1 >> 62)
  {
    result = sub_1BE053704();
    v5 = result;
    v18 = v3;
    if (result)
    {
      goto LABEL_4;
    }

    goto LABEL_21;
  }

  v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v18 = v3;
  if (!v5)
  {
LABEL_21:
    swift_getKeyPath();
    swift_getKeyPath();
    v16 = v18;
    sub_1BE04D8C4();
    swift_getKeyPath();
    swift_getKeyPath();
    v17 = v16;
    return sub_1BE04D8C4();
  }

LABEL_4:
  if (v5 >= 1)
  {
    v6 = 0;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v8 = MEMORY[0x1BFB40900](v6, a1);
      }

      else
      {
        v8 = *(a1 + 8 * v6 + 32);
      }

      v9 = v8;
      v10 = [v8 bankAccountRepresentation];
      if (!v10)
      {
        goto LABEL_7;
      }

      v11 = v10;
      if ([v10 status] != 2)
      {
        break;
      }

      v12 = v9;
      MEMORY[0x1BFB3F7A0]();
      if (*((v19 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v19 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1BE052774();
      }

      sub_1BE0527C4();

LABEL_10:
      if (v5 == ++v6)
      {
        goto LABEL_21;
      }
    }

LABEL_7:
    v7 = v9;
    MEMORY[0x1BFB3F7A0]();
    if (*((v20 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v20 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1BE052774();
    }

    sub_1BE0527C4();

    goto LABEL_10;
  }

  __break(1u);
  return result;
}

id sub_1BD648238(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v34 = a1;
  v7 = sub_1BE051F54();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1BE051FA4();
  v13 = *(v12 - 8);
  v15 = MEMORY[0x1EEE9AC00](v12, v14);
  v17 = &v31 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = *(v4 + OBJC_IVAR____TtC9PassKitUI19FundingSourcesModel_account);
  if (!result || (result = [result accountIdentifier]) == 0)
  {
    if (a3)
    {
      return result;
    }

    goto LABEL_16;
  }

  v19 = result;
  v32 = v13;
  v33 = v12;
  v20 = v8;
  v21 = sub_1BE052434();
  v23 = v22;

  if (a3)
  {
    if (v21 == a2 && v23 == a3)
    {

      v8 = v20;
      v13 = v32;
      v12 = v33;
    }

    else
    {
      v25 = sub_1BE053B84();

      v8 = v20;
      v13 = v32;
      v12 = v33;
      if ((v25 & 1) == 0)
      {
        return result;
      }
    }

LABEL_16:
    sub_1BD0E5E8C(0, &qword_1EBD35E90);
    v26 = sub_1BE052D54();
    v27 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v28 = swift_allocObject();
    v29 = v34;
    *(v28 + 16) = v27;
    *(v28 + 24) = v29;
    aBlock[4] = sub_1BD649738;
    aBlock[5] = v28;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1BD126964;
    aBlock[3] = &block_descriptor_175_0;
    v30 = _Block_copy(aBlock);
    sub_1BE048C84();

    sub_1BE051F74();
    aBlock[0] = MEMORY[0x1E69E7CC0];
    sub_1BD14EC84();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD387F0);
    sub_1BD14ECDC();
    sub_1BE053664();
    MEMORY[0x1BFB3FDF0](0, v17, v11, v30);
    _Block_release(v30);

    (*(v8 + 8))(v11, v7);
    return (*(v13 + 8))(v17, v12);
  }
}

void sub_1BD6485D8(uint64_t a1, unint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    sub_1BD647ED4(a2);
  }
}

void sub_1BD6486E8()
{
  sub_1BD0E4578(319, &unk_1EBD4E050, &qword_1EBD4AE98);
  if (v0 <= 0x3F)
  {
    sub_1BD1E1120();
    if (v1 <= 0x3F)
    {
      sub_1BD0E4578(319, &qword_1EBD416B8, &qword_1EBD416C0);
      if (v2 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

uint64_t sub_1BD64882C@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for FundingSourcesModel(0);
  result = sub_1BE04D814();
  *a1 = result;
  return result;
}

void sub_1BD648894(void *a1)
{
  v2 = [objc_allocWithZone(MEMORY[0x1E69B83A8]) initWithType_];
  if (v2)
  {
    v3 = v2;
    v4 = objc_allocWithZone(MEMORY[0x1E696AFB0]);
    v5 = v3;
    v6 = [v4 init];
    v7 = [v6 UUIDString];

    if (!v7)
    {
      sub_1BE052434();
      v7 = sub_1BE052404();
    }

    [v5 setIdentifier_];

    v8 = sub_1BE052404();
    [v5 setAccountSuffix_];

    v9 = [objc_allocWithZone(MEMORY[0x1E69B83A0]) init];
    v10 = sub_1BE052404();
    [v9 setName_];

    [v9 setStatus_];
    [v5 setFundingDetails_];
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD39F80);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_1BE0B7020;
    *(v11 + 32) = v5;
    swift_getKeyPath();
    swift_getKeyPath();
    v12 = a1;
    v13 = v5;
    sub_1BE048C84();
    sub_1BE04D8C4();
    swift_getKeyPath();
    swift_getKeyPath();
    v14 = v12;
    sub_1BE04D8C4();
  }

  else
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v15 = a1;
    sub_1BE04D8C4();
    swift_getKeyPath();
    swift_getKeyPath();
    v16 = v15;
    sub_1BE04D8C4();
    swift_getKeyPath();
    swift_getKeyPath();
    v17 = v16;
    sub_1BE04D8C4();
    swift_getKeyPath();
    swift_getKeyPath();
    v18 = v17;
    sub_1BE04D8C4();
    swift_getKeyPath();
    swift_getKeyPath();
    v19 = v18;
    sub_1BE04D8C4();
  }
}

uint64_t sub_1BD648CA4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v39 = a3;
  v36 = a1;
  v37 = a2;
  v4 = sub_1BE051F54();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v43 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = sub_1BE051FA4();
  v42 = *(v44 - 8);
  MEMORY[0x1EEE9AC00](v44, v8);
  v41 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1BE051F44();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = (&v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v40 = sub_1BE051FC4();
  v38 = *(v40 - 8);
  MEMORY[0x1EEE9AC00](v40, v15);
  v17 = &v33 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18, v19);
  v21 = &v33 - v20;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();

  if ((aBlock[0] & 1) == 0)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v34 = v4;
    v35 = v5;
    LOBYTE(aBlock[0]) = 1;
    v23 = v3;
    sub_1BE04D8C4();
    sub_1BD0E5E8C(0, &qword_1EBD35E90);
    v33 = sub_1BE052D54();
    sub_1BE051FB4();
    *v14 = 1;
    (*(v11 + 104))(v14, *MEMORY[0x1E69E7F48], v10);
    MEMORY[0x1BFB3F070](v17, v14);
    (*(v11 + 8))(v14, v10);
    v24 = *(v38 + 8);
    v25 = v40;
    v24(v17, v40);
    v26 = swift_allocObject();
    *(v26 + 16) = v23;
    aBlock[4] = v37;
    aBlock[5] = v26;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1BD126964;
    aBlock[3] = v39;
    v27 = _Block_copy(aBlock);
    v28 = v23;

    v29 = v41;
    sub_1BE051F74();
    aBlock[0] = MEMORY[0x1E69E7CC0];
    sub_1BD14EC84();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD387F0);
    sub_1BD14ECDC();
    v30 = v43;
    v31 = v34;
    sub_1BE053664();
    v32 = v33;
    MEMORY[0x1BFB3FD90](v21, v29, v30, v27);
    _Block_release(v27);

    (*(v35 + 8))(v30, v31);
    (*(v42 + 8))(v29, v44);
    return (v24)(v21, v25);
  }

  return result;
}

uint64_t sub_1BD649178(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD416C0);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v17 - v8;
  swift_getKeyPath();
  swift_getKeyPath();
  v18 = 0;
  v10 = a1;
  sub_1BE04D8C4();
  swift_getKeyPath();
  swift_getKeyPath();
  v18 = 0;
  v11 = v10;
  sub_1BE04D8C4();
  swift_getKeyPath();
  swift_getKeyPath();
  v18 = 0;
  v12 = v11;
  sub_1BE04D8C4();
  FeatureError.init(feature:error:)(5, [objc_allocWithZone(MEMORY[0x1E696ABC0]) initWithDomain:*MEMORY[0x1E69BC300] code:500 userInfo:0], v9);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BD23C2BC(v9, v5);
  v13 = v12;
  sub_1BE04D8C4();
  sub_1BD23C32C(v9);
  swift_getKeyPath();
  swift_getKeyPath();
  LOBYTE(v18) = 0;
  v14 = v13;
  sub_1BE04D8C4();
  swift_getKeyPath();
  swift_getKeyPath();
  LOBYTE(v18) = 1;
  v15 = v14;
  return sub_1BE04D8C4();
}

id sub_1BD649408(void *a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4.receiver = a1;
  v4.super_class = a3(0);
  return objc_msgSendSuper2(&v4, sel_init);
}

id sub_1BD649468(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1(0);
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_1BD649508()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();
}

uint64_t sub_1BD649584(uint64_t a1, void **a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD416C0);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v15 - v10;
  sub_1BD23C2BC(a1, &v15 - v10);
  v12 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BD23C2BC(v11, v7);
  v13 = v12;
  sub_1BE04D8C4();
  return sub_1BD23C32C(v11);
}

uint64_t sub_1BD649778()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD528E0);
  MEMORY[0x1EEE9AC00](v0 - 8, v1);
  v3 = &v9 - v2;
  v4 = sub_1BE04A884();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v7 = sub_1BE048E94();
  __swift_allocate_value_buffer(v7, qword_1EBDAB398);
  __swift_project_value_buffer(v7, qword_1EBDAB398);
  sub_1BE04A864();
  (*(v5 + 56))(v3, 1, 1, v4);
  return sub_1BE048E84();
}

uint64_t sub_1BD6498E8()
{
  v1 = *v0;
  sub_1BE053D04();
  sub_1BD03F124(v1);
  sub_1BE052524();

  return sub_1BE053D64();
}

uint64_t sub_1BD64994C()
{
  sub_1BD03F124(*v0);
  sub_1BE052524();
}

uint64_t sub_1BD6499A0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1BD649BD8();
  *a1 = result;
  return result;
}

uint64_t sub_1BD6499D0@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EBD36CE0 != -1)
  {
    swift_once();
  }

  v2 = sub_1BE048E94();
  v3 = __swift_project_value_buffer(v2, qword_1EBDAB398);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_1BD649AC8(uint64_t a1)
{
  v2 = sub_1BD02FDFC();

  return MEMORY[0x1EEDB2C20](a1, v2);
}

uint64_t sub_1BD649B14()
{
  sub_1BD030018();

  return sub_1BE048E14();
}

unint64_t sub_1BD649B64()
{
  result = qword_1EBD4E0A0;
  if (!qword_1EBD4E0A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4E0A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4E0A0);
  }

  return result;
}

uint64_t sub_1BD649BD8()
{
  v0 = sub_1BE053BC4();

  if (v0 >= 0x13)
  {
    return 19;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1BD649C54()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();

  return v1;
}

uint64_t sub_1BD649CC8(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_1BE053B84();
  }
}

uint64_t sub_1BD649CF8()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();

  return v1;
}

uint64_t sub_1BD649D6C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();

  return v1;
}

uint64_t sub_1BD649DE0()
{
  v24 = type metadata accessor for DeviceViewModel(0);
  v1 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24, v2);
  v4 = &v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5, v6);
  v8 = &v22 - v7;
  swift_getKeyPath();
  swift_getKeyPath();
  LOBYTE(v27) = 1;
  sub_1BE048964();
  sub_1BE04D8C4();
  swift_getKeyPath();
  swift_getKeyPath();
  v23 = v0;
  sub_1BE04D8B4();

  v10 = v27;
  v11 = *(v27 + 16);
  if (v11)
  {
    v12 = 0;
    v13 = MEMORY[0x1E69E7CC0];
    v14 = v24;
    v25 = *(v27 + 16);
    v26 = v4;
    while (v12 < *(v10 + 16))
    {
      v15 = (*(v1 + 80) + 32) & ~*(v1 + 80);
      v16 = *(v1 + 72);
      sub_1BD59FD04(v10 + v15 + v16 * v12, v8);
      if (v8[*(v14 + 40)] == 1)
      {
        sub_1BD59FCA0(v8, v4);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v27 = v13;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1BD531FB0(0, *(v13 + 16) + 1, 1);
          v14 = v24;
          v13 = v27;
        }

        v19 = *(v13 + 16);
        v18 = *(v13 + 24);
        if (v19 >= v18 >> 1)
        {
          sub_1BD531FB0(v18 > 1, v19 + 1, 1);
          v14 = v24;
          v13 = v27;
        }

        *(v13 + 16) = v19 + 1;
        v4 = v26;
        result = sub_1BD59FCA0(v26, v13 + v15 + v19 * v16);
        v11 = v25;
      }

      else
      {
        result = sub_1BD59FD68(v8);
      }

      if (v11 == ++v12)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
  }

  else
  {
    v13 = MEMORY[0x1E69E7CC0];
LABEL_13:

    v20 = v23;
    v21 = *(v23 + OBJC_IVAR____TtC9PassKitUI22DevicePickerController_onSelection);
    sub_1BE048964();
    v21(v13, sub_1BD64B4F4, v20);
  }

  return result;
}

void sub_1BD64A0B0(void *a1, uint64_t a2)
{
  if (a1)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v3 = a1;
    sub_1BE048964();
    sub_1BE04D8C4();
    swift_getKeyPath();
    swift_getKeyPath();
    sub_1BE048964();
    sub_1BE04D8C4();
  }

  else
  {
    v4 = *(a2 + OBJC_IVAR____TtC9PassKitUI22DevicePickerController_onCompletion);
    if (v4)
    {
      v5 = sub_1BE048964();
      v4(v5);

      sub_1BD0D4744(v4);
    }
  }
}

uint64_t sub_1BD64A1DC(char a1)
{
  v2 = type metadata accessor for DeviceViewModel(0);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2 - 8, v4);
  v6 = (&v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();

  v7 = *(v12 + 16);
  if (v7)
  {
    v8 = v12 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v9 = *(v3 + 72);
    do
    {
      sub_1BD59FD04(v8, v6);
      sub_1BD64A328(v6, a1 & 1, 1);
      sub_1BD59FD68(v6);
      v8 += v9;
      --v7;
    }

    while (v7);
  }
}

void sub_1BD64A328(void *a1, char a2, char a3)
{
  v4 = v3;
  KeyPath = a2;
  v8 = a2 & 1;
  v9 = type metadata accessor for DeviceViewModel(0);
  v10 = *(a1 + *(v9 + 40));
  if (v10 == v8)
  {
    return;
  }

  v11 = v9;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();

  v12 = sub_1BD2243C0(a1, v61[0]);
  v14 = v13;

  if (v14)
  {
    return;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  v61[0] = 0;
  sub_1BE048964();
  sub_1BE04D8C4();
  v15 = *(v4 + OBJC_IVAR____TtC9PassKitUI22DevicePickerController_policy);
  if (!v15)
  {
    goto LABEL_10;
  }

  v58 = a3;
  v59 = v12;
  v60 = v15;
  v16 = [v60 type];
  v17 = sub_1BE052434();
  v19 = v18;

  if (v17 == 0x746E756F63 && v19 == 0xE500000000000000)
  {
  }

  else
  {
    v21 = sub_1BE053B84();

    if ((v21 & 1) == 0)
    {

      v12 = v59;
LABEL_10:
      swift_getKeyPath();
      swift_getKeyPath();
      v22 = sub_1BE04D8A4();
      v24 = v23;
      v25 = *v23;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *v24 = v25;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        goto LABEL_42;
      }

      if ((v12 & 0x8000000000000000) != 0)
      {
        goto LABEL_43;
      }

LABEL_12:
      if (v12 < *(v25 + 16))
      {
        *(v25 + ((*(*(v11 - 8) + 80) + 32) & ~*(*(v11 - 8) + 80)) + *(*(v11 - 8) + 72) * v12 + *(v11 + 40)) = KeyPath & 1;
        (v22)(v61, 0);
        goto LABEL_35;
      }

      while (1)
      {
        __break(1u);
LABEL_45:
        v12 = sub_1BD4FFF68(v12);
        *v24 = v12;
        if ((v22 & 0x8000000000000000) != 0)
        {
          goto LABEL_46;
        }

LABEL_33:
        if (v22 >= *(v12 + 16))
        {
          goto LABEL_47;
        }

        *(v12 + ((*(*(v11 - 8) + 80) + 32) & ~*(*(v11 - 8) + 80)) + *(*(v11 - 8) + 72) * v22 + *(v11 + 40)) = KeyPath & 1;
        (v25)(v61, 0);

LABEL_35:

        if (KeyPath)
        {
          v11 = 1;
        }

        else
        {
          v11 = -1;
        }

        KeyPath = swift_getKeyPath();
        v24 = swift_getKeyPath();
        v55 = sub_1BE04D8A4();
        if (!__OFADD__(*v56, v11))
        {
          *v56 += v11;
          v55(v61, 0);

          return;
        }

        __break(1u);
LABEL_42:
        v25 = sub_1BD4FFF68(v25);
        *v24 = v25;
        if ((v12 & 0x8000000000000000) == 0)
        {
          goto LABEL_12;
        }

LABEL_43:
        __break(1u);
      }
    }
  }

  v27 = (a1 + *(v11 + 28));
  v28 = *v27;
  v29 = v27[1];
  v30 = [v60 deviceLimits];
  sub_1BD63945C();
  v31 = sub_1BE052244();

  if (*(v31 + 16))
  {
    v32 = sub_1BD148F70(v28, v29);
    if (v33)
    {
      v34 = *(*(v31 + 56) + 8 * v32);

      v57 = [v34 integerValue];

      swift_getKeyPath();
      swift_getKeyPath();
      sub_1BE04D8B4();

      MEMORY[0x1EEE9AC00](v35, v36);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4B7F8);
      sub_1BD64B470();
      v37 = v57;
      v38 = sub_1BE052694();

      goto LABEL_21;
    }
  }

  v39 = sub_1BE052434();
  v41 = v40;
  v42 = [v60 deviceLimits];
  v43 = sub_1BE052244();

  if (*(v43 + 16))
  {
    v44 = sub_1BD148F70(v39, v41);
    v46 = v45;

    if (v46)
    {
      v47 = *(*(v43 + 56) + 8 * v44);

      v37 = [v47 integerValue];

      swift_getKeyPath();
      swift_getKeyPath();
      sub_1BE04D8B4();

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4B7F8);
      sub_1BD64B470();
      v38 = sub_1BE052694();

LABEL_21:
      v22 = v59;
      if (v38 < v37)
      {
        v48 = 1;
      }

      else
      {
        v48 = v10;
      }

      if ((v48 & 1) == 0)
      {
        if ((v58 & 1) == 0)
        {
          v49 = sub_1BE052404();
          v50 = sub_1BE052404();
          v51 = [objc_opt_self() errorWithTitleKey:v49 messageKey:v50 severity:2];

          swift_getKeyPath();
          swift_getKeyPath();
          v61[0] = v51;
          sub_1BE048964();
          v52 = v51;
          sub_1BE04D8C4();
        }

        return;
      }

      goto LABEL_31;
    }
  }

  else
  {
  }

  v22 = v59;
LABEL_31:
  swift_getKeyPath();
  swift_getKeyPath();
  v25 = sub_1BE04D8A4();
  v24 = v53;
  v12 = *v53;
  v54 = swift_isUniquelyReferenced_nonNull_native();
  *v24 = v12;
  if ((v54 & 1) == 0)
  {
    goto LABEL_45;
  }

  if ((v22 & 0x8000000000000000) == 0)
  {
    goto LABEL_33;
  }

LABEL_46:
  __break(1u);
LABEL_47:
  __break(1u);
}

uint64_t sub_1BD64AB4C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for DeviceViewModel(0);
  if (*(a1 + *(v6 + 40)) != 1)
  {
    return 0;
  }

  v7 = (a1 + *(v6 + 28));
  if (*v7 == a2 && v7[1] == a3)
  {
    return 1;
  }

  else
  {
    return sub_1BE053B84() & 1;
  }
}

uint64_t sub_1BD64AC10()
{
  v1 = OBJC_IVAR____TtC9PassKitUI22DevicePickerController__availableDevices;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4E130);
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);
  v3(v0 + OBJC_IVAR____TtC9PassKitUI22DevicePickerController__unavailableDevices, v2);
  v4 = OBJC_IVAR____TtC9PassKitUI22DevicePickerController__selectionCount;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4B7E8);
  (*(*(v5 - 8) + 8))(v0 + v4, v5);
  v6 = OBJC_IVAR____TtC9PassKitUI22DevicePickerController__loading;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CD60);
  (*(*(v7 - 8) + 8))(v0 + v6, v7);
  v8 = OBJC_IVAR____TtC9PassKitUI22DevicePickerController__error;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4B7E0);
  (*(*(v9 - 8) + 8))(v0 + v8, v9);

  sub_1BD0D4744(*(v0 + OBJC_IVAR____TtC9PassKitUI22DevicePickerController_onCompletion));

  return v0;
}

uint64_t sub_1BD64ADD8()
{
  sub_1BD64AC10();

  return swift_deallocClassInstance();
}

void sub_1BD64AE58()
{
  sub_1BD0E4578(319, &qword_1EBD4E100, &qword_1EBD4B7F8);
  if (v0 <= 0x3F)
  {
    sub_1BD540F14(319, &qword_1EBD4E108);
    if (v1 <= 0x3F)
    {
      sub_1BD540F14(319, &qword_1EBD368F0);
      if (v2 <= 0x3F)
      {
        sub_1BD0E4578(319, &qword_1EBD4E110, &qword_1EBD4B7F0);
        if (v3 <= 0x3F)
        {
          swift_updateClassMetadata2();
        }
      }
    }
  }
}

void sub_1BD64B068()
{
  sub_1BD3F7300();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t sub_1BD64B100@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for DevicePickerController(0);
  result = sub_1BE04D814();
  *a1 = result;
  return result;
}

uint64_t sub_1BD64B140@<X0>(void *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();

  *a1 = v3;
  return result;
}

uint64_t sub_1BD64B1C0(void **a1)
{
  v1 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  v2 = v1;
  sub_1BE048964();
  return sub_1BE04D8C4();
}

uint64_t sub_1BD64B288@<X0>(void *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();

  *a1 = v3;
  return result;
}

uint64_t sub_1BD64B308()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE048964();
  return sub_1BE04D8C4();
}

uint64_t sub_1BD64B37C@<X0>(_BYTE *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();

  *a1 = v3;
  return result;
}

uint64_t sub_1BD64B3FC()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE048964();
  return sub_1BE04D8C4();
}

unint64_t sub_1BD64B470()
{
  result = qword_1EBD4E128;
  if (!qword_1EBD4E128)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4B7F8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4E128);
  }

  return result;
}

id sub_1BD64B528()
{
  result = PKFontForDesign(*MEMORY[0x1E69DB8D8], *MEMORY[0x1E69DDD58], *MEMORY[0x1E69DDC90], 2, 0, *MEMORY[0x1E69DB980]);
  if (result)
  {
    v1 = result;
    v2 = [result fontWithSize_];

    result = sub_1BE050484();
    qword_1EBD4E138 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1BD64B5C8@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for Passes(0);
  MEMORY[0x1EEE9AC00](v2, v3);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();

  if ((v10 == 2 || !v10) && (swift_getKeyPath(), swift_getKeyPath(), sub_1BE04D8B4(), , , v6 = v5[*(v2 + 24)], sub_1BD650228(v5, type metadata accessor for Passes), v6 == 1))
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_1BE04D8B4();

    sub_1BD0DE19C(v5, a1, &qword_1EBD520A0);
    return sub_1BD650228(v5, type metadata accessor for Passes);
  }

  else
  {
    v8 = type metadata accessor for AvailablePass(0);
    return (*(*(v8 - 8) + 56))(a1, 1, 1, v8);
  }
}

uint64_t sub_1BD64B7D4@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4E140);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v73 = (&v66 - v6);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4E148);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v72 = &v66 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10, v11);
  v70 = &v66 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4E150);
  MEMORY[0x1EEE9AC00](v13 - 8, v14);
  v68 = (&v66 - v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4E158);
  MEMORY[0x1EEE9AC00](v16 - 8, v17);
  v67 = &v66 - v18;
  v104[0] = *(v1 + 3);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();

  v19 = 0x796150656C707041;
  if (LOBYTE(v98[0]))
  {
    v19 = 0x736143656C707041;
  }

  v66 = v19;
  if (LOBYTE(v98[0]))
  {
    v20 = 0xED00006F676F4C68;
  }

  else
  {
    v20 = 0xEC0000006F676F4CLL;
  }

  v102 = *v1;
  v103 = *(v1 + 8);
  v100 = v1[2];
  v101 = *(v1 + 24);
  v99 = *(v1 + 2);
  v21 = *(&v99 + 1);
  v22 = swift_allocObject();
  v23 = *(v1 + 1);
  v22[1] = *v1;
  v22[2] = v23;
  v24 = *(v1 + 3);
  v22[3] = *(v1 + 2);
  v22[4] = v24;
  v25 = type metadata accessor for PaymentAuthorizationModel(0);
  v77 = v25;
  v71 = v25;
  swift_getKeyPath();
  v76 = v25;
  swift_getKeyPath();
  v69 = v21;
  sub_1BD0DE19C(&v99, v98, &qword_1EBD4E160);
  sub_1BD0DE19C(&v102, v98, &qword_1EBD5C6E0);
  sub_1BD0DE19C(&v100, v98, &qword_1EBD4E168);
  sub_1BD0DE19C(v104, v98, &qword_1EBD4E170);
  sub_1BE04D8B4();

  v26 = sub_1BE04CAE4();

  v27 = sub_1BE051C54();
  v28 = 18.0;
  v85 = 0uLL;
  if (v27)
  {
    v28 = 10.0;
  }

  *&v86 = v66;
  *(&v86 + 1) = v20;
  *&v87 = sub_1BD65081C;
  *(&v87 + 1) = v22;
  LOBYTE(v88) = v26 & 1;
  *(&v88 + 1) = 0;
  *&v89 = 0;
  *(&v89 + 1) = 0x4032000000000000;
  *v90 = v28;
  *&v90[8] = xmmword_1BE0B7110;
  v91[0] = 0;
  v91[1] = 0;
  v91[2] = v66;
  v91[3] = v20;
  v91[4] = sub_1BD65081C;
  v91[5] = v22;
  v92 = v26 & 1;
  v93 = 0;
  v94 = 0;
  v95 = 0x4032000000000000;
  v96 = v28;
  v97 = xmmword_1BE0B7110;
  sub_1BD0DE19C(&v85, v98, &qword_1EBD38AC8);
  sub_1BD0DE53C(v91, &qword_1EBD38AC8);
  v29 = sub_1BE04F7B4();
  v30 = v68;
  *v68 = v29;
  *(v30 + 8) = 0;
  *(v30 + 16) = 0;
  v31 = v30 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4E178) + 44);
  v32 = v70;
  sub_1BD64C270(v70);
  v33 = v72;
  sub_1BD0DE19C(v32, v72, &qword_1EBD4E148);
  *v31 = 0;
  *(v31 + 8) = 1;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4E180);
  sub_1BD0DE19C(v33, v31 + *(v34 + 48), &qword_1EBD4E148);
  v35 = v31 + *(v34 + 64);
  *v35 = 0;
  *(v35 + 8) = 1;
  sub_1BD0DE53C(v32, &qword_1EBD4E148);
  sub_1BD0DE53C(v33, &qword_1EBD4E148);
  sub_1BE051CD4();
  sub_1BE04EE54();
  v36 = v67;
  sub_1BD0DE204(v30, v67, &qword_1EBD4E150);
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4E188);
  v38 = (v36 + *(v37 + 36));
  v39 = v98[5];
  v38[4] = v98[4];
  v38[5] = v39;
  v38[6] = v98[6];
  v40 = v98[1];
  *v38 = v98[0];
  v38[1] = v40;
  v41 = v98[3];
  v38[2] = v98[2];
  v38[3] = v41;
  (*(*(v37 - 8) + 56))(v36, 0, 1, v37);
  v42 = sub_1BE04F7B4();
  v43 = v73;
  *v73 = v42;
  *(v43 + 8) = 0;
  *(v43 + 16) = 0;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4E190);
  sub_1BD64C60C(v2, v43 + *(v44 + 44));
  v45 = v71;
  v75 = v71;
  swift_getKeyPath();
  v74 = v45;
  swift_getKeyPath();
  v46 = v69;
  sub_1BE04D8B4();

  v47 = v84[0];
  v84[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3D4D0);
  v84[4] = sub_1BD0DE4F4(&qword_1EBD3F338, &qword_1EBD3D4D0);
  v84[0] = v46;
  v48 = swift_allocObject();
  v49 = *(v2 + 1);
  *(v48 + 1) = *v2;
  *(v48 + 2) = v49;
  v50 = *(v2 + 3);
  *(v48 + 3) = *(v2 + 2);
  *(v48 + 4) = v50;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4E198);
  v52 = (a1 + v51[26]);
  sub_1BD0DE19C(&v99, v81, &qword_1EBD4E160);
  sub_1BD0DE19C(&v102, v81, &qword_1EBD5C6E0);
  sub_1BD0DE19C(&v100, v81, &qword_1EBD4E168);
  sub_1BD0DE19C(v104, v81, &qword_1EBD4E170);
  sub_1BD0E5E8C(0, &qword_1EBD35E30);
  sub_1BD0EE33C();
  *v52 = sub_1BE04EEC4();
  v52[1] = v53;
  v54 = (a1 + v51[27]);
  sub_1BE04CDA4();
  sub_1BD650154(&qword_1EBD369D0, MEMORY[0x1E69BCB10]);
  *v54 = sub_1BE04EEC4();
  v54[1] = v55;
  v56 = a1 + v51[28];
  LOBYTE(v80[0]) = 0;
  sub_1BE051694();
  v57 = v81[1];
  *v56 = v81[0];
  *(v56 + 8) = v57;
  v58 = a1 + v51[29];
  *v58 = swift_getKeyPath();
  *(v58 + 8) = 0;
  v59 = v86;
  *a1 = v85;
  *(a1 + 16) = v59;
  *(a1 + 96) = *&v90[16];
  v60 = *v90;
  *(a1 + 64) = v89;
  *(a1 + 80) = v60;
  v61 = v88;
  *(a1 + 32) = v87;
  *(a1 + 48) = v61;
  sub_1BD0DE19C(v36, a1 + v51[17], &qword_1EBD4E158);
  sub_1BD0DE19C(v43, a1 + v51[18], &qword_1EBD4E140);
  *(a1 + v51[19]) = 0;
  *(a1 + v51[20]) = 1;
  *(a1 + v51[21]) = v47;
  sub_1BD0EE8CC(v84, a1 + v51[22]);
  *(a1 + v51[23]) = 1;
  v62 = (a1 + v51[25]);
  *v62 = sub_1BD650120;
  v62[1] = v48;
  sub_1BD0EE8CC(v84, v80);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38998);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD51FF0);
  if (swift_dynamicCast())
  {
    sub_1BD0EF554(v78, v81);
    v63 = v82;
    v64 = v83;
    __swift_project_boxed_opaque_existential_1(v81, v82);
    (*(v64 + 56))(v80, v63, v64);
    sub_1BD0DE53C(v43, &qword_1EBD4E140);
    sub_1BD0DE53C(v36, &qword_1EBD4E158);
    __swift_destroy_boxed_opaque_existential_0(v84);
    *(a1 + v51[24]) = v80[0];
    return __swift_destroy_boxed_opaque_existential_0(v81);
  }

  else
  {
    sub_1BD0DE53C(v43, &qword_1EBD4E140);
    sub_1BD0DE53C(v36, &qword_1EBD4E158);
    __swift_destroy_boxed_opaque_existential_0(v84);
    v79 = 0;
    memset(v78, 0, sizeof(v78));
    result = sub_1BD0DE53C(v78, &qword_1EBD389A0);
    *(a1 + v51[24]) = 2;
  }

  return result;
}

double sub_1BD64C270@<D0>(uint64_t a1@<X8>)
{
  v44 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4E208);
  MEMORY[0x1EEE9AC00](v1 - 8, v2);
  v4 = &v43 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4E210);
  MEMORY[0x1EEE9AC00](v5, v6);
  v8 = &v43 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4E218);
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = &v43 - v11;
  *v4 = sub_1BE04F7B4();
  *(v4 + 1) = 0x4018000000000000;
  v4[16] = 0;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4E220);
  sub_1BD64D5EC(&v4[*(v13 + 44)]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39148);
  inited = swift_initStackObject();
  v43 = xmmword_1BE0B6CA0;
  *(inited + 16) = xmmword_1BE0B6CA0;
  v15 = sub_1BE050204();
  *(inited + 32) = v15;
  v16 = sub_1BE050224();
  *(inited + 33) = v16;
  v17 = sub_1BE050214();
  sub_1BE050214();
  if (sub_1BE050214() != v15)
  {
    v17 = sub_1BE050214();
  }

  sub_1BE050214();
  if (sub_1BE050214() != v16)
  {
    v17 = sub_1BE050214();
  }

  sub_1BE04E1F4();
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v25 = v24;
  sub_1BD0DE204(v4, v8, &qword_1EBD4E208);
  v26 = &v8[*(v5 + 36)];
  *v26 = v17;
  *(v26 + 1) = v19;
  *(v26 + 2) = v21;
  *(v26 + 3) = v23;
  *(v26 + 4) = v25;
  v26[40] = 0;
  v27 = swift_initStackObject();
  *(v27 + 16) = v43;
  v28 = sub_1BE0501E4();
  *(v27 + 32) = v28;
  v29 = sub_1BE0501F4();
  *(v27 + 33) = v29;
  v30 = sub_1BE050214();
  sub_1BE050214();
  if (sub_1BE050214() != v28)
  {
    v30 = sub_1BE050214();
  }

  sub_1BE050214();
  if (sub_1BE050214() != v29)
  {
    v30 = sub_1BE050214();
  }

  sub_1BE04E1F4();
  v32 = v31;
  v34 = v33;
  v36 = v35;
  v38 = v37;
  sub_1BD0DE204(v8, v12, &qword_1EBD4E210);
  v39 = &v12[*(v9 + 36)];
  *v39 = v30;
  *(v39 + 1) = v32;
  *(v39 + 2) = v34;
  *(v39 + 3) = v36;
  *(v39 + 4) = v38;
  v39[40] = 0;
  v40 = v44;
  sub_1BD0DE204(v12, v44, &qword_1EBD4E218);
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4E148);
  result = 0.0;
  *(v40 + *(v41 + 36)) = xmmword_1BE0B6A60;
  return result;
}

uint64_t sub_1BD64C60C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v92 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4E1A0);
  v90 = *(v3 - 8);
  v91 = v3;
  MEMORY[0x1EEE9AC00](v3, v4);
  v89 = &v85 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4E1A8);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v88 = &v85 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9, v10);
  v87 = &v85 - v11;
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD52030);
  MEMORY[0x1EEE9AC00](v95, v12);
  v94 = &v85 - v13;
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38A48);
  v99 = *(v93 - 8);
  MEMORY[0x1EEE9AC00](v93, v14);
  v16 = &v85 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17, v18);
  v20 = &v85 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD520A0);
  MEMORY[0x1EEE9AC00](v21 - 8, v22);
  v24 = &v85 - v23;
  v25 = type metadata accessor for AvailablePass(0);
  v26 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25, v27);
  v29 = &v85 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4E1B0);
  MEMORY[0x1EEE9AC00](v30 - 8, v31);
  v98 = &v85 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v33, v34);
  v96 = &v85 - v35;
  sub_1BD64B5C8(v24);
  v36 = (*(v26 + 48))(v24, 1, v25);
  v37 = MEMORY[0x1E6981CD0];
  v38 = MEMORY[0x1E6981CD8];
  v97 = v16;
  v100 = v20;
  if (v36 == 1)
  {
    sub_1BD0DE53C(v24, &qword_1EBD520A0);
    v39 = 1;
    v40 = v96;
  }

  else
  {
    v41 = v24;
    v42 = v29;
    v86 = v29;
    sub_1BD1DEB38(v41, v29);
    sub_1BE051C64();
    sub_1BE04F694();
    v112 = MEMORY[0x1E6981CD8];
    v113 = v37;
    swift_getOpaqueTypeConformance2();
    sub_1BD0EEEE0();
    sub_1BE051C84();
    v43 = v87;
    sub_1BD64D0F8(v42, v87);
    v44 = v99;
    v45 = *(v99 + 16);
    v46 = v16;
    v47 = v16;
    v48 = v93;
    v45(v47, v100, v93);
    v49 = v88;
    sub_1BD0DE19C(v43, v88, &qword_1EBD4E1A8);
    v50 = v89;
    v45(v89, v46, v48);
    v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4E1C0);
    sub_1BD0DE19C(v49, &v50[*(v51 + 48)], &qword_1EBD4E1A8);
    sub_1BD0DE53C(v43, &qword_1EBD4E1A8);
    v52 = *(v44 + 8);
    v52(v100, v48);
    sub_1BD650228(v86, type metadata accessor for AvailablePass);
    sub_1BD0DE53C(v49, &qword_1EBD4E1A8);
    v52(v46, v48);
    v53 = v50;
    v38 = MEMORY[0x1E6981CD8];
    v40 = v96;
    sub_1BD091358(v53, v96);
    v39 = 0;
    v37 = MEMORY[0x1E6981CD0];
  }

  (*(v90 + 56))(v40, v39, 1, v91);
  sub_1BE051C64();
  sub_1BE04F694();
  v112 = v38;
  v113 = v37;
  swift_getOpaqueTypeConformance2();
  sub_1BD0EEEE0();
  v54 = sub_1BE051C84();
  v133 = *(a1 + 2);
  MEMORY[0x1EEE9AC00](v54, v55);
  v56 = type metadata accessor for PaymentAuthorizationModel(0);
  *(&v85 - 2) = v56;
  KeyPath = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](KeyPath, v58);
  *(&v85 - 2) = v56;
  swift_getKeyPath();
  sub_1BE04D8B4();

  v131 = *a1;
  v132 = *(a1 + 8);
  v129 = a1[2];
  v130 = *(a1 + 24);
  v128 = *(a1 + 3);
  v59 = swift_allocObject();
  v91 = v59;
  v60 = *(a1 + 1);
  v59[1] = *a1;
  v59[2] = v60;
  v61 = *(a1 + 3);
  v59[3] = *(a1 + 2);
  v59[4] = v61;
  LOBYTE(v104) = 0;
  v90 = swift_getKeyPath();
  v102 = 0;
  sub_1BD0DE19C(&v131, &v112, &qword_1EBD5C6E0);
  sub_1BD0DE19C(&v129, &v112, &qword_1EBD4E168);
  sub_1BD0DE19C(&v133, &v112, &qword_1EBD4E160);
  sub_1BD0DE19C(&v128, &v112, &qword_1EBD4E170);
  sub_1BE04CDA4();
  sub_1BD650154(&qword_1EBD369D0, MEMORY[0x1E69BCB10]);
  v89 = sub_1BE04EEC4();
  v95 = v62;
  type metadata accessor for AuthenticatorModel();
  sub_1BD650154(&qword_1EBD36450, type metadata accessor for AuthenticatorModel);
  v63 = sub_1BE04E954();
  v87 = v64;
  v88 = v63;
  v65 = v64;
  v66 = v104;
  LODWORD(v86) = v104;
  LODWORD(v94) = v102;
  v67 = v40;
  v68 = v98;
  sub_1BD0DE19C(v67, v98, &qword_1EBD4E1B0);
  v69 = *(v99 + 16);
  v70 = v97;
  v71 = v93;
  v69(v97, v100, v93);
  v72 = v68;
  v73 = v92;
  sub_1BD0DE19C(v72, v92, &qword_1EBD4E1B0);
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4E1B8);
  v69((v73 + *(v74 + 48)), v70, v71);
  v75 = (v73 + *(v74 + 64));
  *&v104 = v63;
  *(&v104 + 1) = v65;
  v105 = sub_1BD31FF5C;
  v106 = 0;
  LOBYTE(v107) = v66;
  *(&v107 + 1) = *v103;
  DWORD1(v107) = *&v103[3];
  v76 = v89;
  v77 = v90;
  *(&v107 + 1) = v90;
  LOBYTE(v108) = v94;
  *(&v108 + 1) = *v101;
  DWORD1(v108) = *&v101[3];
  *(&v108 + 1) = v89;
  *&v109 = v95;
  v78 = v91;
  *(&v109 + 1) = sub_1BD65019C;
  v110 = v91;
  *&v111 = 0;
  *(&v111 + 1) = 0x4014000000000000;
  *v75 = v104;
  v75[1] = sub_1BD31FF5C;
  v79 = v107;
  v80 = v108;
  v81 = v111;
  v75[5] = v110;
  v75[6] = v81;
  v82 = v109;
  v75[3] = v80;
  v75[4] = v82;
  v75[2] = v79;
  sub_1BD0EEF94(&v104, &v112);
  v83 = *(v99 + 8);
  v83(v100, v71);
  sub_1BD0DE53C(v96, &qword_1EBD4E1B0);
  v112 = v88;
  v113 = v87;
  v114 = sub_1BD31FF5C;
  v115 = 0;
  v116 = v86;
  *v117 = *v103;
  *&v117[3] = *&v103[3];
  v118 = v77;
  v119 = v94;
  *v120 = *v101;
  *&v120[3] = *&v101[3];
  v121 = v76;
  v122 = v95;
  v123 = sub_1BD65019C;
  v124 = v78;
  v125 = 0;
  v126 = 0;
  v127 = 0x4014000000000000;
  sub_1BD0EEFF0(&v112);
  v83(v97, v71);
  return sub_1BD0DE53C(v98, &qword_1EBD4E1B0);
}

uint64_t sub_1BD64D0F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v50 = a2;
  v3 = sub_1BE04F3D4();
  v48 = *(v3 - 8);
  v49 = v3;
  MEMORY[0x1EEE9AC00](v3, v4);
  v47 = &v46 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4E1C8);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v9 = &v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = &v46 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4E1D0);
  MEMORY[0x1EEE9AC00](v14 - 8, v15);
  v17 = &v46 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4E1D8);
  v19 = v18 - 8;
  MEMORY[0x1EEE9AC00](v18, v20);
  v22 = &v46 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4E1E0);
  v24 = v23 - 8;
  MEMORY[0x1EEE9AC00](v23, v25);
  v27 = &v46 - v26;
  *v17 = sub_1BE04F504();
  *(v17 + 1) = 0;
  v17[16] = 0;
  v28 = &v17[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4E1E8) + 44)];
  *v13 = sub_1BE04F504();
  *(v13 + 1) = 0x402C000000000000;
  v13[16] = 0;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4E1F0);
  sub_1BD64F338(a1, &v13[*(v29 + 44)]);
  sub_1BD0DE19C(v13, v9, &qword_1EBD4E1C8);
  sub_1BD0DE19C(v9, v28, &qword_1EBD4E1C8);
  v30 = v28 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4E1F8) + 48);
  *v30 = 0;
  *(v30 + 8) = 1;
  sub_1BD0DE53C(v13, &qword_1EBD4E1C8);
  sub_1BD0DE53C(v9, &qword_1EBD4E1C8);
  sub_1BE051CD4();
  v31 = v27;
  sub_1BE04EE54();
  sub_1BD0DE204(v17, v22, &qword_1EBD4E1D0);
  v32 = &v22[*(v19 + 44)];
  v33 = v58;
  *(v32 + 4) = v57;
  *(v32 + 5) = v33;
  *(v32 + 6) = v59;
  v34 = v54;
  *v32 = v53;
  *(v32 + 1) = v34;
  v35 = v56;
  *(v32 + 2) = v55;
  *(v32 + 3) = v35;
  sub_1BD0DE204(v22, v27, &qword_1EBD4E1D8);
  *&v27[*(v24 + 44)] = 256;
  v61 = *(v51 + 8);
  v36 = *v51;
  v60 = *v51;
  if (v61 != 1)
  {
    sub_1BE048964();
    sub_1BE052C44();
    v37 = sub_1BE050174();
    sub_1BE04CF84();

    v38 = v47;
    sub_1BE04F3C4();
    swift_getAtKeyPath();
    sub_1BD0DE53C(&v60, &qword_1EBD5C6E0);
    (*(v48 + 8))(v38, v49);
    LOBYTE(v36) = v52;
  }

  if (v36)
  {
    v39 = 0x4030000000000000;
  }

  else
  {
    v39 = 0x4028000000000000;
  }

  if (v36)
  {
    v40 = 0x4038000000000000;
  }

  else
  {
    v40 = 0x4030000000000000;
  }

  v41 = sub_1BE0501D4();
  v42 = v31;
  v43 = v50;
  sub_1BD0DE204(v42, v50, &qword_1EBD4E1E0);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4E1A8);
  v45 = v43 + *(result + 36);
  *v45 = v41;
  *(v45 + 8) = v39;
  *(v45 + 16) = v40;
  *(v45 + 24) = v39;
  *(v45 + 32) = v40;
  *(v45 + 40) = 0;
  return result;
}

uint64_t sub_1BD64D5EC@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4E228);
  v3 = v2 - 8;
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v40 - v9;
  sub_1BD64E028(&v40 - v9);
  sub_1BE051CD4();
  sub_1BE04E5E4();
  v11 = &v10[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4E230) + 36)];
  v12 = v51;
  *v11 = v50;
  *(v11 + 1) = v12;
  *(v11 + 2) = v52;
  v13 = &v10[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4E238) + 36)];
  v14 = *(sub_1BE04EDE4() + 20);
  v15 = *MEMORY[0x1E697F468];
  v16 = sub_1BE04F684();
  (*(*(v16 - 8) + 104))(&v13[v14], v15, v16);
  __asm { FMOV            V0.2D, #8.0 }

  *v13 = _Q0;
  *&v13[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3FC50) + 36)] = 256;
  LOBYTE(v15) = sub_1BE0501F4();
  sub_1BE04E1F4();
  v22 = &v10[*(v3 + 44)];
  *v22 = v15;
  *(v22 + 1) = v23;
  *(v22 + 2) = v24;
  *(v22 + 3) = v25;
  *(v22 + 4) = v26;
  v22[40] = 0;
  sub_1BD64D998(v53);
  sub_1BD64DC2C(v55);
  sub_1BD0DE19C(v10, v6, &qword_1EBD4E228);
  v47 = v53[2];
  v48 = v53[3];
  v49 = v54;
  v45 = v53[0];
  v46 = v53[1];
  v42 = v55[2];
  v43 = v55[3];
  v44[0] = v56[0];
  *(v44 + 9) = *(v56 + 9);
  v40 = v55[0];
  v41 = v55[1];
  sub_1BD0DE19C(v6, a1, &qword_1EBD4E228);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4E240);
  v28 = a1 + *(v27 + 48);
  v29 = v49;
  v58 = v49;
  v30 = v48;
  v57[2] = v47;
  v57[3] = v48;
  v32 = v45;
  v31 = v46;
  v57[0] = v45;
  v57[1] = v46;
  *(v28 + 32) = v47;
  *(v28 + 48) = v30;
  *(v28 + 64) = v29;
  *v28 = v32;
  *(v28 + 16) = v31;
  v33 = *(v27 + 64);
  *(v60 + 9) = *(v44 + 9);
  v35 = v43;
  v34 = v44[0];
  v59[3] = v43;
  v60[0] = v44[0];
  v36 = v41;
  v59[0] = v40;
  v59[1] = v41;
  v37 = v42;
  v59[2] = v42;
  v38 = (a1 + v33);
  *v38 = v40;
  v38[1] = v36;
  *(v38 + 73) = *(v44 + 9);
  v38[3] = v35;
  v38[4] = v34;
  v38[2] = v37;
  sub_1BD0DE19C(v57, v61, &qword_1EBD391B8);
  sub_1BD0DE19C(v59, v61, &qword_1EBD4E248);
  sub_1BD0DE53C(v10, &qword_1EBD4E228);
  v61[2] = v42;
  v61[3] = v43;
  v62[0] = v44[0];
  *(v62 + 9) = *(v44 + 9);
  v61[0] = v40;
  v61[1] = v41;
  sub_1BD0DE53C(v61, &qword_1EBD4E248);
  v63[2] = v47;
  v63[3] = v48;
  v64 = v49;
  v63[0] = v45;
  v63[1] = v46;
  sub_1BD0DE53C(v63, &qword_1EBD391B8);
  return sub_1BD0DE53C(v6, &qword_1EBD4E228);
}

uint64_t sub_1BD64D998@<X0>(uint64_t a1@<X8>)
{
  v2 = _s11TotalAmountVMa(0);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v5 = &v30[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = _s14PaymentSummaryVMa();
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v9 = &v30[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();

  sub_1BD6501C0(v9, v5, _s11TotalAmountVMa);
  sub_1BD650228(v9, _s14PaymentSummaryVMa);
  v10 = sub_1BD1C8894();
  v12 = v11;
  sub_1BD650228(v5, _s11TotalAmountVMa);
  v31 = v10;
  v32 = v12;
  sub_1BD0DDEBC();
  v13 = sub_1BE0506C4();
  v15 = v14;
  LOBYTE(v12) = v16;
  sub_1BE050324();
  v17 = sub_1BE0505F4();
  v19 = v18;
  v21 = v20;

  sub_1BD0DDF10(v13, v15, v12 & 1);

  LODWORD(v31) = sub_1BE04FC74();
  v22 = sub_1BE050574();
  v24 = v23;
  LOBYTE(v12) = v25;
  v27 = v26;
  sub_1BD0DDF10(v17, v19, v21 & 1);

  KeyPath = swift_getKeyPath();
  result = swift_getKeyPath();
  *a1 = v22;
  *(a1 + 8) = v24;
  *(a1 + 16) = v12 & 1;
  *(a1 + 24) = v27;
  *(a1 + 32) = KeyPath;
  *(a1 + 40) = 0;
  *(a1 + 48) = result;
  *(a1 + 56) = 2;
  *(a1 + 64) = 0;
  return result;
}

uint64_t sub_1BD64DC2C@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1BE04F454();
  v45 = *(v2 - 8);
  v46 = v2;
  MEMORY[0x1EEE9AC00](v2, v3);
  v44 = &v44 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5, v6);
  v8 = &v44 - v7;
  v9 = _s11TotalAmountVMa(0);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v12 = &v44 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = _s14PaymentSummaryVMa();
  MEMORY[0x1EEE9AC00](v13 - 8, v14);
  v16 = &v44 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();

  sub_1BD6501C0(v16, v12, _s11TotalAmountVMa);
  sub_1BD650228(v16, _s14PaymentSummaryVMa);
  sub_1BD1C93D0();
  v18 = v17;
  v20 = v19;
  sub_1BD650228(v12, _s11TotalAmountVMa);
  v47 = v18;
  v48 = v20;
  sub_1BD0DDEBC();
  v21 = sub_1BE0506C4();
  v23 = v22;
  v25 = v24;
  if (qword_1EBD36CE8 != -1)
  {
    swift_once();
  }

  v26 = sub_1BE0505F4();
  v28 = v27;
  v30 = v29;
  sub_1BD0DDF10(v21, v23, v25 & 1);

  LODWORD(v47) = sub_1BE04FC74();
  v31 = sub_1BE050574();
  v33 = v32;
  v35 = v34;
  v37 = v36;
  sub_1BD0DDF10(v26, v28, v30 & 1);

  KeyPath = swift_getKeyPath();
  sub_1BE04F444();
  v39 = v45;
  v40 = v46;
  (*(v45 + 16))(v44, v8, v46);
  sub_1BD650154(&unk_1EBD367A0, MEMORY[0x1E697F260]);
  v41 = sub_1BE04E644();
  (*(v39 + 8))(v8, v40);
  v42 = swift_getKeyPath();
  LOBYTE(v47) = v35 & 1;
  result = swift_getKeyPath();
  *a1 = v31;
  *(a1 + 8) = v33;
  *(a1 + 16) = v35 & 1;
  *(a1 + 24) = v37;
  *(a1 + 32) = KeyPath;
  *(a1 + 40) = 0;
  *(a1 + 48) = v41;
  *(a1 + 56) = v42;
  *(a1 + 64) = 0x3FE0000000000000;
  *(a1 + 72) = result;
  *(a1 + 80) = 2;
  *(a1 + 88) = 0;
  return result;
}

void sub_1BD64E028(uint64_t a1@<X8>)
{
  v136 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4E250);
  MEMORY[0x1EEE9AC00](v2, v3);
  v135 = (&v120 - v4);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD45720);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v132 = &v120 - v7;
  v134 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4E258);
  MEMORY[0x1EEE9AC00](v134, v8);
  v10 = &v120 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11, v12);
  v128 = &v120 - v13;
  v14 = sub_1BE04F3D4();
  v123 = *(v14 - 8);
  v124 = v14;
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = &v120 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF70);
  MEMORY[0x1EEE9AC00](v18 - 8, v19);
  v130 = &v120 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21, v22);
  v137 = &v120 - v23;
  MEMORY[0x1EEE9AC00](v24, v25);
  v27 = &v120 - v26;
  v28 = sub_1BE04AA64();
  v29 = *(v28 - 8);
  MEMORY[0x1EEE9AC00](v28, v30);
  v122 = &v120 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v32, v33);
  v131 = &v120 - v34;
  MEMORY[0x1EEE9AC00](v35, v36);
  v121 = &v120 - v37;
  MEMORY[0x1EEE9AC00](v38, v39);
  v125 = &v120 - v40;
  MEMORY[0x1EEE9AC00](v41, v42);
  v126 = &v120 - v43;
  MEMORY[0x1EEE9AC00](v44, v45);
  v47 = &v120 - v46;
  sub_1BD64F78C(v27);
  v129 = *(v29 + 48);
  v48 = v129(v27, 1, v28);
  v133 = v2;
  v138 = v29;
  if (v48 == 1)
  {
    v49 = v28;
    sub_1BD0DE53C(v27, &unk_1EBD3CF70);
    v50 = *(*(v1 + 5) + *((*MEMORY[0x1E69E7D40] & **(v1 + 5)) + 0xD0));
    v51 = [v50 paymentRequest];
    if (v51)
    {
      v52 = v51;
      v53 = [v51 isPeerPaymentRequest];

      if (!v53)
      {
        sub_1BD64FDC4(&v140);
        v164 = v146;
        v165 = v147;
        v166[0] = v148[0];
        *(v166 + 9) = *(v148 + 9);
        v160 = v142;
        v161 = v143;
        v162 = v144;
        v163 = v145;
        v158 = v140;
        v159 = v141;
        sub_1BD3241DC(&v158);
        v155 = v164;
        v156 = v165;
        v157[0] = v166[0];
        *(v157 + 11) = *(v166 + 11);
        v151 = v160;
        v152 = v161;
        v153 = v162;
        v154 = v163;
        v149 = v158;
        v150 = v159;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4E260);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4E268);
        sub_1BD650288();
        sub_1BD650344();
        sub_1BE04F9A4();
LABEL_30:
        v104 = v174;
        v105 = v135;
        v135[6] = v173;
        v105[7] = v104;
        v105[8] = v175[0];
        *(v105 + 139) = *(v175 + 11);
        v106 = v170;
        v105[2] = v169;
        v105[3] = v106;
        v107 = v172;
        v105[4] = v171;
        v105[5] = v107;
        v108 = v168;
        *v105 = v167;
        v105[1] = v108;
        swift_storeEnumTagMultiPayload();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4E2A0);
        sub_1BD0DE4F4(&qword_1EBD4E2A8, &qword_1EBD4E258);
        sub_1BD650480(&qword_1EBD4E2B0, &qword_1EBD4E2A0, &unk_1BE0EB4A0, sub_1BD650288);
        sub_1BE04F9A4();
        return;
      }

      v54 = [v50 paymentRequest];
      if (v54)
      {
        v55 = v54;
        v56 = [v54 peerPaymentRequest];

        if (!v56)
        {
          sub_1BD64FDC4(&v149);
          v173 = v155;
          v174 = v156;
          v175[0] = v157[0];
          *(v175 + 9) = *(v157 + 9);
          v169 = v151;
          v170 = v152;
          v171 = v153;
          v172 = v154;
          v167 = v149;
          v168 = v150;
          sub_1BD091408(&v167);
          v164 = v173;
          v165 = v174;
          v166[0] = v175[0];
          *(v166 + 10) = *(v175 + 10);
          v160 = v169;
          v161 = v170;
          v162 = v171;
          v163 = v172;
          v158 = v167;
          v159 = v168;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4E280);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4E268);
          sub_1BD6502B8();
          sub_1BD650344();
          sub_1BE04F9A4();
LABEL_29:
          v164 = v146;
          v165 = v147;
          v166[0] = v148[0];
          *(v166 + 10) = *(v148 + 10);
          v160 = v142;
          v161 = v143;
          v162 = v144;
          v163 = v145;
          v158 = v140;
          v159 = v141;
          sub_1BD0D4684(&v158);
          v155 = v164;
          v156 = v165;
          v157[0] = v166[0];
          *(v157 + 11) = *(v166 + 11);
          v151 = v160;
          v152 = v161;
          v153 = v162;
          v154 = v163;
          v149 = v158;
          v150 = v159;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4E260);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4E268);
          sub_1BD650288();
          sub_1BD650344();
          sub_1BE04F9A4();
          goto LABEL_30;
        }

        v57 = [v56 peerPaymentType];
        if (v57 >= 5 && v57 != 6)
        {
          if (v57 != 5)
          {
            v109 = PKPassKitUIBundle();
            if (v109)
            {
              v110 = v109;
              v111 = sub_1BE052404();
              v112 = sub_1BE052404();
              v113 = [v110 URLForResource:v111 withExtension:v112];

              if (v113)
              {
                v114 = v122;
                sub_1BE04A9F4();

                v115 = sub_1BE04A9C4();
                (*(v138 + 8))(v114, v49);
              }

              else
              {
                v115 = 0;
              }

              v118 = PKUIScreenScale();
              v119 = PKUIImageFromPDF(v115, 64.0, 64.0, v118);

              if (v119)
              {
                *&v158 = sub_1BE051544();
                WORD4(v158) = 256;
                __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49090);
                sub_1BD50CBB4();
                sub_1BE04F9A4();
                goto LABEL_28;
              }

              goto LABEL_47;
            }

            goto LABEL_45;
          }

          v95 = PKPassKitUIBundle();
          if (v95)
          {
            v96 = v95;
            v97 = sub_1BE052404();
            v98 = sub_1BE052404();
            v99 = [v96 URLForResource:v97 withExtension:v98];

            if (v99)
            {
              v100 = v121;
              sub_1BE04A9F4();

              v101 = sub_1BE04A9C4();
              (*(v138 + 8))(v100, v49);
            }

            else
            {
              v101 = 0;
            }

            v116 = PKUIScreenScale();
            v117 = PKUIImageFromPDF(v101, 64.0, 64.0, v116);

            if (v117)
            {
              *&v158 = sub_1BE051544();
              BYTE8(v158) = 0;
              goto LABEL_27;
            }

            goto LABEL_46;
          }

LABEL_44:
          __break(1u);
LABEL_45:
          __break(1u);
LABEL_46:
          __break(1u);
LABEL_47:
          __break(1u);
          return;
        }

        v58 = PKPassKitUIBundle();
        if (v58)
        {
          v59 = v58;
          v60 = sub_1BE052404();
          v61 = sub_1BE052404();
          v62 = [v59 URLForResource:v60 withExtension:v61];

          if (v62)
          {
            v63 = v131;
            sub_1BE04A9F4();

            v64 = sub_1BE04A9C4();
            (*(v138 + 8))(v63, v49);
          }

          else
          {
            v64 = 0;
          }

          v102 = PKUIScreenScale();
          v103 = PKUIImageFromPDF(v64, 64.0, 64.0, v102);

          if (v103)
          {
            *&v158 = sub_1BE051544();
            BYTE8(v158) = 1;
LABEL_27:
            sub_1BE048964();
            sub_1BE04F9A4();
            *&v158 = v167;
            WORD4(v158) = BYTE8(v167);
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49090);
            sub_1BD50CBB4();
            sub_1BE04F9A4();

LABEL_28:
            sub_1BD091414(&v167);
            v155 = v173;
            v156 = v174;
            v157[0] = v175[0];
            *(v157 + 10) = *(v175 + 10);
            v151 = v169;
            v152 = v170;
            v153 = v171;
            v154 = v172;
            v149 = v167;
            v150 = v168;
            sub_1BD650504();
            sub_1BD650504();
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4E280);
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4E268);
            sub_1BD6502B8();
            sub_1BD650344();
            sub_1BE04F9A4();

            j__swift_release();
            j__swift_release();
            v146 = v164;
            v147 = v165;
            v148[0] = v166[0];
            *(v148 + 10) = *(v166 + 10);
            v142 = v160;
            v143 = v161;
            v144 = v162;
            v145 = v163;
            v140 = v158;
            v141 = v159;
            goto LABEL_29;
          }

          goto LABEL_43;
        }

LABEL_42:
        __break(1u);
LABEL_43:
        __break(1u);
        goto LABEL_44;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_42;
  }

  v65 = *(v29 + 32);
  v131 = v47;
  v121 = (v29 + 32);
  v122 = v10;
  v120 = v65;
  v65(v47, v27, v28);
  v66 = v1[2];
  *&v140 = v66;
  BYTE8(v140) = *(v1 + 24);
  v127 = v28;
  if (BYTE8(v140) == 1)
  {
    v67 = v28;
    v68 = v66;
    v69 = v66;
  }

  else
  {
    sub_1BE048964();
    sub_1BE052C44();
    v70 = sub_1BE050174();
    sub_1BE04CF84();

    sub_1BE04F3C4();
    swift_getAtKeyPath();
    sub_1BD0DE53C(&v140, &qword_1EBD4E168);
    v71 = v124;
    v72 = *(v123 + 8);
    v72(v17, v124);
    v69 = *&v167;
    sub_1BE048964();
    sub_1BE052C44();
    v73 = sub_1BE050174();
    sub_1BE04CF84();

    v67 = v127;
    sub_1BE04F3C4();
    swift_getAtKeyPath();
    sub_1BD0DE53C(&v140, &qword_1EBD4E168);
    v72(v17, v71);
    v68 = *&v167;
  }

  v74 = v128;
  v75 = v69 * 64.0;
  v76 = v68 * 64.0;
  v78 = v137;
  v77 = v138;
  v79 = *(v138 + 16);
  v79(v137, v131, v67);
  (*(v77 + 56))(v78, 0, 1, v67);
  v176 = *v1;
  v177 = *(v1 + 8);
  v80 = *(v1 + 3);
  v167 = *(v1 + 2);
  v158 = v80;
  v81 = swift_allocObject();
  v82 = *(v1 + 1);
  v81[1] = *v1;
  v81[2] = v82;
  v83 = *(v1 + 3);
  v81[3] = *(v1 + 2);
  v81[4] = v83;
  v84 = objc_opt_self();
  sub_1BD0DE19C(&v140, &v149, &qword_1EBD4E168);
  sub_1BD0DE19C(&v176, &v149, &qword_1EBD5C6E0);
  sub_1BD0DE19C(&v167, &v149, &qword_1EBD4E160);
  sub_1BD0DE19C(&v158, &v149, &qword_1EBD4E170);
  v85 = [v84 sharedURLCache];
  v86 = v78;
  v87 = v130;
  sub_1BD0DE19C(v86, v130, &unk_1EBD3CF70);
  if (v129(v87, 1, v67) == 1)
  {
    sub_1BD0DE53C(v87, &unk_1EBD3CF70);
    v88 = 1;
    v89 = v132;
  }

  else
  {
    v90 = v126;
    v120(v126, v87, v67);
    v79(v125, v90, v67);
    v89 = v132;
    sub_1BE04A114();
    (*(v77 + 8))(v90, v67);
    v88 = 0;
  }

  v91 = sub_1BE04A134();
  (*(*(v91 - 8) + 56))(v89, v88, 1, v91);
  v92 = v134;
  v93 = v122;
  sub_1BD0DE204(v89, &v122[*(v134 + 40)], &qword_1EBD45720);
  *(v93 + 16) = sub_1BD650564;
  *(v93 + 24) = v81;
  *(v93 + v92[12]) = 0;
  v94 = v93 + v92[13];
  *v94 = v75;
  *(v94 + 8) = v76;
  *(v94 + 16) = 0x200000;
  *(v94 + 24) = 0;
  *(v93 + v92[11]) = v85;
  v139 = 0x8000000000000000;
  sub_1BE051694();
  sub_1BD0DE53C(v137, &unk_1EBD3CF70);
  *v93 = v149;
  sub_1BD0DE204(v93, v74, &qword_1EBD4E258);
  sub_1BD0DE19C(v74, v135, &qword_1EBD4E258);
  swift_storeEnumTagMultiPayload();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4E2A0);
  sub_1BD0DE4F4(&qword_1EBD4E2A8, &qword_1EBD4E258);
  sub_1BD650480(&qword_1EBD4E2B0, &qword_1EBD4E2A0, &unk_1BE0EB4A0, sub_1BD650288);
  sub_1BE04F9A4();
  sub_1BD0DE53C(v74, &qword_1EBD4E258);
  (*(v138 + 8))(v131, v127);
}

uint64_t sub_1BD64F338@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v42 = a2;
  v3 = type metadata accessor for Passes(0);
  v4 = v3 - 8;
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for PassDetails();
  v9 = (v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = &v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13, v14);
  v16 = &v41 - v15;
  v17 = type metadata accessor for PassImage(0);
  v18 = (v17 - 8);
  MEMORY[0x1EEE9AC00](v17, v19);
  v21 = &v41 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22, v23);
  v25 = &v41 - v24;
  sub_1BD6501C0(a1, &v41 + v18[8] - v24, type metadata accessor for WrappedPass);
  PKPassFrontFaceContentSize();
  *(v25 + 3) = 0x4044000000000000;
  *(v25 + 4) = v27 / v26 * 40.0;
  *v25 = sub_1BD70C870;
  *(v25 + 1) = 0;
  v25[16] = 0;
  v25[v18[9]] = 1;
  *&v25[v18[10]] = 1911;
  sub_1BD6501C0(a1, v16, type metadata accessor for AvailablePass);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();

  v28 = *&v7[*(v4 + 28)];
  v29 = v28;
  sub_1BD650228(v7, type metadata accessor for Passes);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();

  v50 = v45;
  v51 = v46;
  v52 = v47;
  v48 = v43;
  v49 = v44;
  sub_1BE04C8E4();
  *&v16[v9[7]] = v28;
  v30 = &v16[v9[8]];
  v31 = v51;
  *(v30 + 2) = v50;
  *(v30 + 3) = v31;
  *(v30 + 4) = v52;
  v32 = v49;
  *v30 = v48;
  *(v30 + 1) = v32;
  v33 = v9[10];
  *&v16[v33] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD521C0);
  swift_storeEnumTagMultiPayload();
  v34 = &v16[v9[11]];
  *v34 = 0;
  v34[8] = 1;
  v35 = &v16[v9[12]];
  v36 = sub_1BE051234();
  v37 = MEMORY[0x1E6981568];
  v35[3] = MEMORY[0x1E69815C0];
  v35[4] = v37;
  *v35 = v36;
  sub_1BD6501C0(v25, v21, type metadata accessor for PassImage);
  sub_1BD6501C0(v16, v12, type metadata accessor for PassDetails);
  v38 = v42;
  sub_1BD6501C0(v21, v42, type metadata accessor for PassImage);
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4E200);
  sub_1BD6501C0(v12, v38 + *(v39 + 48), type metadata accessor for PassDetails);
  sub_1BD650228(v16, type metadata accessor for PassDetails);
  sub_1BD650228(v25, type metadata accessor for PassImage);
  sub_1BD650228(v12, type metadata accessor for PassDetails);
  return sub_1BD650228(v21, type metadata accessor for PassImage);
}

id sub_1BD64F78C@<X0>(uint64_t a1@<X8>)
{
  result = [*(*(v1 + 40) + *((*MEMORY[0x1E69E7D40] & **(v1 + 40)) + 0xD0)) paymentRequest];
  if (result)
  {
    v4 = result;
    v5 = [result thumbnailURLs];

    if (v5)
    {
      v6 = sub_1BE04AA64();
      v7 = sub_1BE052744();

      if (*(v7 + 16))
      {
        v13 = *(v6 - 8);
        (*(v13 + 16))(a1, v7 + ((*(v13 + 80) + 32) & ~*(v13 + 80)), v6);

        v8 = *(v13 + 56);
        v9 = a1;
        v10 = 0;
      }

      else
      {

        v8 = *(*(v6 - 8) + 56);
        v9 = a1;
        v10 = 1;
      }

      v12 = v6;
    }

    else
    {
      v11 = sub_1BE04AA64();
      v8 = *(*(v11 - 8) + 56);
      v12 = v11;
      v9 = a1;
      v10 = 1;
    }

    return v8(v9, v10, 1, v12);
  }

  else
  {
    __break(1u);
  }

  return result;
}

double sub_1BD64F95C@<D0>(unint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v4 = sub_1BE051584();
  v5 = *(v4 - 8);
  v7 = MEMORY[0x1EEE9AC00](v4, v6);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 >> 62)
  {
    sub_1BD64FDC4(v26);
    v34 = v26[6];
    v35 = v26[7];
    v36[0] = v27[0];
    *(v36 + 9) = *(v27 + 9);
    v30 = v26[2];
    v31 = v26[3];
    v32 = v26[4];
    v33 = v26[5];
    v28 = v26[0];
    v29 = v26[1];
    sub_1BD091408(&v28);
    v52 = v34;
    v53 = v35;
    v54[0] = v36[0];
    *(v54 + 10) = *(v36 + 10);
    v48 = v30;
    v49 = v31;
    v50 = v32;
    v51 = v33;
    v46 = v28;
    v47 = v29;
    sub_1BD0DE19C(v26, &v37, &qword_1EBD4E268);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4E268);
    sub_1BD650344();
    sub_1BE04F9A4();
    v43 = v22;
    v44 = v23;
    v45[0] = v24[0];
    *(v45 + 10) = *(v24 + 10);
    v39 = v18;
    v40 = v19;
    v41 = v20;
    v42 = v21;
    v37 = v16;
    v38 = v17;
    sub_1BD0D4684(&v37);
    v52 = v43;
    v53 = v44;
    v54[0] = v45[0];
    *(v54 + 11) = *(v45 + 11);
    v48 = v39;
    v49 = v40;
    v50 = v41;
    v51 = v42;
    v46 = v37;
    v47 = v38;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4E2B8);
    sub_1BD65056C();
    sub_1BE04F9A4();
    sub_1BD0DE53C(v26, &qword_1EBD4E268);
  }

  else
  {
    (*(v5 + 104))(v9, *MEMORY[0x1E6981630], v4, v7);
    v10 = sub_1BE0515E4();
    (*(v5 + 8))(v9, v4);
    *&v28 = v10;
    sub_1BD091414(&v28);
    v52 = v34;
    v53 = v35;
    v54[0] = v36[0];
    *(v54 + 10) = *(v36 + 10);
    v48 = v30;
    v49 = v31;
    v50 = v32;
    v51 = v33;
    v46 = v28;
    v47 = v29;
    sub_1BE048964();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4E268);
    sub_1BD650344();
    sub_1BE04F9A4();
    v43 = v22;
    v44 = v23;
    v45[0] = v24[0];
    *(v45 + 10) = *(v24 + 10);
    v39 = v18;
    v40 = v19;
    v41 = v20;
    v42 = v21;
    v37 = v16;
    v38 = v17;
    sub_1BD0D4684(&v37);
    v52 = v43;
    v53 = v44;
    v54[0] = v45[0];
    *(v54 + 11) = *(v45 + 11);
    v48 = v39;
    v49 = v40;
    v50 = v41;
    v51 = v42;
    v46 = v37;
    v47 = v38;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4E2B8);
    sub_1BD65056C();
    sub_1BE04F9A4();
  }

  v54[0] = v25[0];
  *(v54 + 11) = *(v25 + 11);
  v48 = v24[4];
  v49 = v24[5];
  v50 = v24[6];
  v51 = v24[7];
  v46 = v24[2];
  v47 = v24[3];
  v11 = v24[9];
  a2[6] = v24[8];
  a2[7] = v11;
  a2[8] = v54[0];
  *(a2 + 139) = *(v54 + 11);
  v12 = v49;
  a2[2] = v48;
  a2[3] = v12;
  v13 = v51;
  a2[4] = v50;
  a2[5] = v13;
  result = *&v46;
  v15 = v47;
  *a2 = v46;
  a2[1] = v15;
  return result;
}

double sub_1BD64FDC4@<D0>(_OWORD *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49130);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = v36 - v5;
  v7 = sub_1BD6505F8(*(v1 + 40));
  if (v8)
  {
    *&v56 = v7;
    *(&v56 + 1) = v8;
    sub_1BD0DDEBC();
    v9 = sub_1BE0506C4();
    v11 = v10;
    v13 = v12;
    v14 = sub_1BE050354();
    (*(*(v14 - 8) + 56))(v6, 1, 1, v14);
    sub_1BE0503B4();
    sub_1BD0DE53C(v6, &qword_1EBD49130);
    v15 = sub_1BE0505F4();
    v36[1] = v16;
    v37 = v15;
    v18 = v17;
    v20 = v19;

    sub_1BD0DDF10(v9, v11, v13 & 1);

    sub_1BE051354();
    v21 = v37;
    *&v38 = sub_1BE050564();
    *(&v38 + 1) = v22;
    v24 = v23;
    v26 = v25;

    sub_1BD0DDF10(v21, v18, v20 & 1);

    sub_1BE051CD4();
    sub_1BE04EE54();
    v27 = v24 & 1;
    v55 = v24 & 1;
    v28 = sub_1BE051344();
    v29 = sub_1BE0501D4();
    v46 = v38;
    LOBYTE(v47) = v27;
    *(&v47 + 1) = v26;
    v52 = v43;
    v53 = v44;
    v54[0] = v45;
    v48 = v39;
    v49 = v40;
    v51 = v42;
    v50 = v41;
    *&v54[1] = v28;
    BYTE8(v54[1]) = v29;
    PKEdgeInsetsMake(&v46, v30);
    v62 = v52;
    v63 = v53;
    v64[0] = v54[0];
    *(v64 + 9) = *(v54 + 9);
    v58 = v48;
    v59 = v49;
    v60 = v50;
    v61 = v51;
    v56 = v46;
    v57 = v47;
  }

  else
  {
    sub_1BD6507F8(&v56);
  }

  v31 = v63;
  a1[6] = v62;
  a1[7] = v31;
  a1[8] = v64[0];
  *(a1 + 137) = *(v64 + 9);
  v32 = v59;
  a1[2] = v58;
  a1[3] = v32;
  v33 = v61;
  a1[4] = v60;
  a1[5] = v33;
  result = *&v56;
  v35 = v57;
  *a1 = v56;
  a1[1] = v35;
  return result;
}

uint64_t sub_1BD650154(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1BD6501C0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1BD650228(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1BD6502B8()
{
  result = qword_1EBD4E278;
  if (!qword_1EBD4E278)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4E280);
    sub_1BD50CBB4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4E278);
  }

  return result;
}

unint64_t sub_1BD650344()
{
  result = qword_1EBD4E288;
  if (!qword_1EBD4E288)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4E268);
    sub_1BD6503C8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4E288);
  }

  return result;
}

unint64_t sub_1BD6503C8()
{
  result = qword_1EBD4E290;
  if (!qword_1EBD4E290)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4E298);
    sub_1BD19D16C();
    sub_1BD0DE4F4(&qword_1EBD36710, &qword_1EBD491B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4E290);
  }

  return result;
}

uint64_t sub_1BD650480(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    a4();
    sub_1BD650344();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t objectdestroyTm_74()
{
  sub_1BD0D4604(*(v0 + 16), *(v0 + 24));
  sub_1BD0D4604(*(v0 + 32), *(v0 + 40));

  return swift_deallocObject();
}

unint64_t sub_1BD65056C()
{
  result = qword_1EBD4E2C0;
  if (!qword_1EBD4E2C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4E2B8);
    sub_1BD650344();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4E2C0);
  }

  return result;
}

unint64_t sub_1BD6505F8(void *a1)
{
  result = [*(a1 + *((*MEMORY[0x1E69E7D40] & *a1) + 0xD0)) paymentRequest];
  if (!result)
  {
    goto LABEL_19;
  }

  v2 = result;
  v3 = [result paymentSummaryItems];

  sub_1BD0E5E8C(0, &qword_1EBD3D4A0);
  v4 = sub_1BE052744();

  if (!(v4 >> 62))
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5)
    {
      goto LABEL_4;
    }

LABEL_14:

    return 0;
  }

  v5 = sub_1BE053704();
  if (!v5)
  {
    goto LABEL_14;
  }

LABEL_4:
  v6 = __OFSUB__(v5, 1);
  result = v5 - 1;
  if (v6)
  {
    __break(1u);
    goto LABEL_16;
  }

  if ((v4 & 0xC000000000000001) != 0)
  {
LABEL_16:
    v7 = MEMORY[0x1BFB40900](result, v4);
LABEL_9:
    v8 = v7;

    v9 = [v8 label];

    v10 = sub_1BE052434();
    v12 = v11;

    v13 = HIBYTE(v12) & 0xF;
    if ((v12 & 0x2000000000000000) == 0)
    {
      v13 = v10 & 0xFFFFFFFFFFFFLL;
    }

    if (v13)
    {
      sub_1BE052554();
      v14 = sub_1BE052654();
      v16 = v15;
      v18 = v17;
      v20 = v19;

      v21 = MEMORY[0x1BFB3F570](v14, v16, v18, v20);

      return v21;
    }

    goto LABEL_14;
  }

  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (result < *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v7 = *(v4 + 8 * result + 32);
    goto LABEL_9;
  }

  __break(1u);
LABEL_19:
  __break(1u);
  return result;
}

double sub_1BD6507F8(_OWORD *a1)
{
  result = 0.0;
  *(a1 + 137) = 0u;
  a1[7] = 0u;
  a1[8] = 0u;
  a1[5] = 0u;
  a1[6] = 0u;
  a1[3] = 0u;
  a1[4] = 0u;
  a1[1] = 0u;
  a1[2] = 0u;
  *a1 = 0u;
  return result;
}

char *AppProtectionShieldViewController.init(configuration:)(void *a1)
{
  v2 = v1;
  v4 = swift_allocObject();
  v5 = [a1 delegate];
  swift_unknownObjectWeakInit();
  swift_unknownObjectRelease();
  if (a1)
  {
    if ([a1 showDismiss])
    {
      sub_1BE048964();
      v6 = sub_1BD65432C;
      v7 = v4;
    }

    else
    {
      v6 = 0;
      v7 = 0;
    }

    v8 = [a1 application];
    v9 = [a1 shieldType];
    v10 = [a1 showAuthOnAppear];
  }

  else
  {
    v7 = 0;
    v6 = 0;
    v8 = 0;
    v9 = 0;
    v10 = 1;
  }

  LOBYTE(v20[0]) = 1;
  objc_allocWithZone(type metadata accessor for ShieldModel());
  v11 = v8;
  sub_1BD0D44B8(v6);
  v12 = sub_1BD653D84(v8, v20);

  v20[0] = v12;
  v20[1] = v6;
  v20[2] = v7;
  v21 = v10;
  v22 = 0;
  v23 = 0;
  v24 = v9;
  objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4E330));
  v13 = v12;
  sub_1BD0D44B8(v6);
  sub_1BD0D44B8(0);
  *&v2[OBJC_IVAR____PKAppProtectionShieldViewController_appProtectionShieldVC] = sub_1BE04F894();
  v19.receiver = v2;
  v19.super_class = type metadata accessor for AppProtectionShieldViewController();
  v14 = objc_msgSendSuper2(&v19, sel_initWithNibName_bundle_, 0, 0);
  v15 = *&v14[OBJC_IVAR____PKAppProtectionShieldViewController_appProtectionShieldVC];
  v16 = v14;
  v17 = v15;
  [v16 addChildViewController_];
  sub_1BD0D4744(v6);

  sub_1BD0D4744(v6);
  sub_1BD0D4744(0);

  return v16;
}

uint64_t type metadata accessor for ShieldModel()
{
  result = qword_1EBD4E4F8;
  if (!qword_1EBD4E4F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void *sub_1BD650B10()
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    [result appProtectionShieldRequestsDismiss];
    return swift_unknownObjectRelease();
  }

  return result;
}

id sub_1BD650BFC()
{
  v10.receiver = v0;
  v10.super_class = type metadata accessor for AppProtectionShieldViewController();
  objc_msgSendSuper2(&v10, sel_loadView);
  result = [v0 view];
  if (!result)
  {
    __break(1u);
    goto LABEL_7;
  }

  v2 = result;
  v3 = objc_opt_self();
  v4 = [v3 clearColor];
  [v2 setBackgroundColor_];

  v5 = *&v0[OBJC_IVAR____PKAppProtectionShieldViewController_appProtectionShieldVC];
  result = [v5 view];
  if (!result)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  v6 = result;
  v7 = [v3 clearColor];
  [v6 setBackgroundColor_];

  result = [v0 view];
  if (!result)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v8 = result;
  result = [v5 view];
  if (result)
  {
    v9 = result;
    [v8 addSubview_];

    return [v5 didMoveToParentViewController_];
  }

LABEL_9:
  __break(1u);
  return result;
}

id AppProtectionShieldViewController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_1BE052404();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithNibName:v6 bundle:a3];

  return v7;
}

double AppProtectionShieldView.init(forceShieldState:shieldType:dismissAction:showAuthOnAppear:content:)@<D0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v12 = *a1;
  AppProtectionShieldView.init(application:forceShieldState:shieldType:dismissAction:showAuthOnAppear:content:)(0, &v12, a2, a3, a4, a5, a6, a7, &v13);
  v9 = v15;
  v10 = v17;
  *a8 = v13;
  *(a8 + 8) = v14;
  *(a8 + 24) = v9;
  result = *&v16;
  *(a8 + 32) = v16;
  *(a8 + 48) = v10;
  return result;
}

void AppProtectionShieldView.init(application:forceShieldState:shieldType:dismissAction:showAuthOnAppear:content:)(void *a1@<X0>, unsigned __int8 *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char a6@<W5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v19 = *a2;
  v17 = objc_allocWithZone(type metadata accessor for ShieldModel());
  v18 = sub_1BD653D84(a1, &v19);

  *(a9 + 40) = a8;
  *(a9 + 48) = a3;
  *a9 = v18;
  *(a9 + 8) = a4;
  *(a9 + 16) = a5;
  *(a9 + 24) = a6;
  *(a9 + 32) = a7;
}

uint64_t AppProtectionShieldView.body.getter(uint64_t a1)
{
  v3 = *(a1 + 16);
  sub_1BE04EBD4();
  sub_1BE0500D4();
  sub_1BE04EBD4();
  sub_1BE0534B4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4E340);
  swift_getTupleTypeMetadata2();
  sub_1BE051E34();
  swift_getWitnessTable();
  v4 = sub_1BE051874();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v17[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = &v17[-v11];
  v13 = *(v1 + 16);
  v21[0] = *v1;
  v21[1] = v13;
  v21[2] = *(v1 + 32);
  v22 = *(v1 + 48);
  v14 = *(a1 + 24);
  v18 = v3;
  v19 = v14;
  v20 = v21;
  sub_1BE051CD4();
  sub_1BE051864();
  swift_getWitnessTable();
  sub_1BD147308(v8);
  v15 = *(v5 + 8);
  v15(v8, v4);
  sub_1BD147308(v12);
  return (v15)(v12, v4);
}

uint64_t sub_1BD65133C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v108 = a4;
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4E540);
  MEMORY[0x1EEE9AC00](v98, v7);
  v93 = &v87[-v8];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4E548);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v92 = &v87[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v12, v13);
  v96 = &v87[-v14];
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4E550);
  MEMORY[0x1EEE9AC00](v103, v15);
  v104 = &v87[-v16];
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4E558);
  MEMORY[0x1EEE9AC00](v94, v17);
  v95 = &v87[-v18];
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD4E560);
  MEMORY[0x1EEE9AC00](v102, v19);
  v97 = &v87[-v20];
  v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4E340);
  MEMORY[0x1EEE9AC00](v105, v21);
  v107 = &v87[-((v22 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v23, v24);
  v106 = &v87[-v25];
  v26 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](v27, v28);
  v30 = &v87[-((v29 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v31 = sub_1BE04EBD4();
  v32 = *(v31 - 8);
  MEMORY[0x1EEE9AC00](v31, v33);
  v35 = &v87[-v34];
  sub_1BE0500D4();
  v36 = sub_1BE04EBD4();
  v109 = sub_1BE0534B4();
  v110 = *(v109 - 8);
  MEMORY[0x1EEE9AC00](v109, v37);
  v101 = &v87[-((v38 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v39, v40);
  v42 = &v87[-v41];
  v46 = MEMORY[0x1EEE9AC00](v43, v44);
  v111 = &v87[-v47];
  v48 = *(a1 + 32);
  v49 = MEMORY[0x1E697EBF8];
  v91 = a2;
  if (v48)
  {
    v100 = v32;
    v50 = v45;
    v48(v46);
    sub_1BE051CD4();
    sub_1BE050F54();
    (*(v26 + 8))(v30, a2);
    v51 = *v50;
    swift_getKeyPath();
    *&v116 = v51;
    sub_1BD654B68(&qword_1EBD4E530, type metadata accessor for ShieldModel);
    sub_1BE04B594();

    v112 = a3;
    v52 = MEMORY[0x1E697EBF8];
    v113 = MEMORY[0x1E697EBF8];
    swift_getWitnessTable();
    sub_1BE050A24();
    (*(v100 + 8))(v35, v31);
    v53 = v50;
    (*(*(v36 - 8) + 56))(v42, 0, 1, v36);
    v54 = v52;
  }

  else
  {
    v53 = v45;
    (*(*(v36 - 8) + 56))(v42, 1, 1, v36, v46);
    v54 = v49;
  }

  v125 = a3;
  v126 = v54;
  WitnessTable = swift_getWitnessTable();
  v56 = sub_1BD654B68(&qword_1EBD52210, MEMORY[0x1E697CBE8]);
  v123 = WitnessTable;
  v124 = v56;
  v122 = swift_getWitnessTable();
  v57 = v109;
  v58 = swift_getWitnessTable();
  v59 = v111;
  v99 = v58;
  sub_1BD147308(v42);
  v60 = v110;
  v100 = *(v110 + 8);
  (v100)(v42, v57);
  v61 = *v53;
  swift_getKeyPath();
  *&v116 = v61;
  sub_1BD654B68(&qword_1EBD4E530, type metadata accessor for ShieldModel);
  sub_1BE04B594();

  if (*(v61 + OBJC_IVAR____TtC9PassKitUIP33_81D0147D6FAEBFC2E9CB6EB898C8034D11ShieldModel__shieldState))
  {
    if (*(v61 + OBJC_IVAR____TtC9PassKitUIP33_81D0147D6FAEBFC2E9CB6EB898C8034D11ShieldModel__shieldState) == 1)
    {
      v62 = *(v53 + 1);
      v116 = *v53;
      v117 = v62;
      v118 = *(v53 + 2);
      v119 = v53[6];
      v63 = v91;
      v64 = type metadata accessor for AppProtectionShieldView();
      sub_1BD652244(&v114);
      v65 = v114;
      v66 = BYTE1(v115);
      v67 = v115;
      v89 = sub_1BE04EC54();
      v88 = sub_1BE0501D4();
      v68 = swift_allocObject();
      v69 = *(v53 + 1);
      *(v68 + 32) = *v53;
      *(v68 + 48) = v69;
      v71 = *v53;
      v70 = *(v53 + 1);
      *(v68 + 64) = *(v53 + 2);
      *(v68 + 16) = v63;
      *(v68 + 24) = a3;
      v57 = v109;
      *(v68 + 80) = v53[6];
      LOBYTE(v120) = v66;
      v90 = v66;
      v116 = v71;
      v117 = v70;
      v118 = *(v53 + 2);
      v119 = v53[6];
      (*(*(v64 - 8) + 16))(&v114, v53, v64);
      v72 = v96;
      sub_1BD65239C(v96);
      v73 = v120;
      v74 = v92;
      sub_1BD0DE19C(v72, v92, &qword_1EBD4E548);
      v75 = v93;
      *v93 = v65;
      *(v75 + 8) = v67;
      *(v75 + 9) = v73;
      *(v75 + 16) = v89;
      *(v75 + 24) = v88;
      *(v75 + 32) = sub_1BD654D2C;
      *(v75 + 40) = v68;
      *(v75 + 48) = 0;
      *(v75 + 56) = 0;
      v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4E588);
      sub_1BD0DE19C(v74, v75 + *(v76 + 48), &qword_1EBD4E548);
      sub_1BD654D64(v65, v67, v66);
      sub_1BE048964();
      sub_1BD654D64(v65, v67, v73 & 1);
      sub_1BD0D44B8(sub_1BD654D2C);
      sub_1BD0D44B8(0);
      sub_1BD0DE53C(v74, &qword_1EBD4E548);
      sub_1BD654D70(v65, v67, v73 & 1);
      sub_1BD0D4744(sub_1BD654D2C);
      sub_1BD0D4744(0);
      sub_1BD0DE19C(v75, v95, &qword_1EBD4E540);
      swift_storeEnumTagMultiPayload();
      sub_1BD654C3C();
      v77 = v97;
      sub_1BE04F9A4();
      sub_1BD0DE19C(v77, v104, &unk_1EBD4E560);
      swift_storeEnumTagMultiPayload();
      sub_1BD654BB0();
      v78 = v106;
      sub_1BE04F9A4();
      v79 = v65;
      v59 = v111;
      sub_1BD654D70(v79, v67, v90);

      sub_1BD0DE53C(v77, &unk_1EBD4E560);
      v80 = v75;
      v60 = v110;
      sub_1BD0DE53C(v80, &qword_1EBD4E540);
      sub_1BD0DE53C(v96, &qword_1EBD4E548);
    }

    else
    {
      swift_storeEnumTagMultiPayload();
      sub_1BD654BB0();
      v78 = v106;
      sub_1BE04F9A4();
    }
  }

  else
  {
    v81 = [objc_opt_self() systemBackgroundColor];
    *v95 = sub_1BE0511C4();
    swift_storeEnumTagMultiPayload();
    sub_1BD654C3C();
    sub_1BE048964();
    v82 = v97;
    sub_1BE04F9A4();
    sub_1BD0DE19C(v82, v104, &unk_1EBD4E560);
    swift_storeEnumTagMultiPayload();
    sub_1BD654BB0();
    v78 = v106;
    sub_1BE04F9A4();

    sub_1BD0DE53C(v82, &unk_1EBD4E560);
  }

  v83 = v107;
  v84 = v101;
  (*(v60 + 16))(v101, v59, v57);
  *&v116 = v84;
  sub_1BD0DE19C(v78, v83, &qword_1EBD4E340);
  *(&v116 + 1) = v83;
  v114 = v57;
  v115 = v105;
  v120 = v99;
  v121 = sub_1BD654CA0();
  sub_1BD13A4C4(&v116, 2uLL, &v114);
  sub_1BD0DE53C(v78, &qword_1EBD4E340);
  v85 = v100;
  (v100)(v59, v57);
  sub_1BD0DE53C(v83, &qword_1EBD4E340);
  return v85(v84, v57);
}

uint64_t sub_1BD652180@<X0>(_BYTE *a1@<X8>)
{
  swift_getKeyPath();
  sub_1BD654B68(&qword_1EBD4E530, type metadata accessor for ShieldModel);
  sub_1BE04B594();

  *a1 = *(v1 + OBJC_IVAR____TtC9PassKitUIP33_81D0147D6FAEBFC2E9CB6EB898C8034D11ShieldModel__shieldState);
  return result;
}

void sub_1BD652244(uint64_t a1@<X8>)
{
  v3 = *v1;
  if (*(v1 + 48) > 1uLL)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4E5D0);
    sub_1BD654DEC();
    sub_1BE04F9A4();
  }

  else
  {
    sub_1BD6545B4();
    sub_1BD65460C();
    v4 = v3;
    sub_1BE04F9A4();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4E5D0);
    sub_1BD654DEC();
    sub_1BE04F9A4();
  }

  *a1 = v5;
  *(a1 + 8) = v6;
  *(a1 + 9) = v7;
}

uint64_t sub_1BD65239C@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for CloseButton(0);
  MEMORY[0x1EEE9AC00](v3, v4);
  v6 = &v56 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = (&v56 - v9);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4E590);
  MEMORY[0x1EEE9AC00](v11 - 8, v12);
  v14 = &v56 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15, v16);
  v18 = &v56 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4E598);
  v23.n128_f64[0] = MEMORY[0x1EEE9AC00](v19, v20);
  v25 = &v56 - v24;
  v26 = *(v1 + 8);
  if (v26)
  {
    v27 = *(v1 + 16);
    v58 = v21;
    v59 = v22;
    sub_1BE048964();
    *v25 = sub_1BE04F7B4();
    *(v25 + 1) = 0;
    v25[16] = 1;
    v28 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4E5A0) + 44);
    v57 = a1;
    v29 = &v25[v28];
    *v18 = sub_1BE04F504();
    *(v18 + 1) = 0;
    v18[16] = 1;
    v30 = &v18[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4E5A8) + 44)];
    *v10 = v26;
    v10[1] = v27;
    v31 = *(v3 + 20);
    *(v10 + v31) = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4E5B0);
    swift_storeEnumTagMultiPayload();
    sub_1BD2498A0(v10, v6);
    *v30 = 0;
    v30[8] = 1;
    v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4E5B8);
    sub_1BD2498A0(v6, &v30[*(v32 + 48)]);
    sub_1BE048964();
    sub_1BD5D1760(v10);
    sub_1BD5D1760(v6);
    sub_1BD0DE19C(v18, v14, &qword_1EBD4E590);
    sub_1BD0DE19C(v14, v29, &qword_1EBD4E590);
    v33 = v29 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4E5C0) + 48);
    *v33 = 0;
    *(v33 + 8) = 1;
    sub_1BD0DE53C(v18, &qword_1EBD4E590);
    sub_1BD0DE53C(v14, &qword_1EBD4E590);
    LOBYTE(v29) = sub_1BE0501C4();
    sub_1BE04E1F4();
    v35 = v34;
    v37 = v36;
    v39 = v38;
    v41 = v40;
    v42 = &v25[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4E5C8) + 36)];
    *v42 = v29;
    *(v42 + 1) = v35;
    *(v42 + 2) = v37;
    *(v42 + 3) = v39;
    *(v42 + 4) = v41;
    v42[40] = 0;
    LOBYTE(v29) = sub_1BE050234();
    sub_1BE04E1F4();
    v44 = v43;
    v46 = v45;
    v48 = v47;
    v50 = v49;
    sub_1BD0D4744(v26);
    v51 = v58;
    v52 = &v25[*(v58 + 36)];
    *v52 = v29;
    *(v52 + 1) = v44;
    *(v52 + 2) = v46;
    *(v52 + 3) = v48;
    *(v52 + 4) = v50;
    v52[40] = 0;
    v53 = v57;
    sub_1BD654D7C(v25, v57);
    return (*(v59 + 56))(v53, 0, 1, v51);
  }

  else
  {
    v55 = *(v22 + 56);

    return v55(a1, 1, 1, v23);
  }
}

id sub_1BD6527EC()
{
  v0 = objc_opt_self();
  v1 = sub_1BE052404();
  v2 = [v0 applicationWithBundleIdentifier_];

  v3 = [objc_allocWithZone(MEMORY[0x1E698B108]) initWithApplication_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4E528);
  sub_1BE04FF74();
  [v3 setDelegate_];

  sub_1BE04FF74();
  v4 = *&v7[OBJC_IVAR____TtCV9PassKitUIP33_81D0147D6FAEBFC2E9CB6EB898C8034D11_ShieldView11Coordinator_shieldModel];

  swift_getKeyPath();
  sub_1BD654B68(&qword_1EBD4E530, type metadata accessor for ShieldModel);
  sub_1BE04B594();

  v5 = *&v4[OBJC_IVAR____TtC9PassKitUIP33_81D0147D6FAEBFC2E9CB6EB898C8034D11ShieldModel__shieldStyle];

  [v3 setShieldStyle_];
  return v3;
}

uint64_t sub_1BD652990()
{
  swift_getKeyPath();
  sub_1BD654B68(&qword_1EBD4E530, type metadata accessor for ShieldModel);
  sub_1BE04B594();

  return *(v0 + OBJC_IVAR____TtC9PassKitUIP33_81D0147D6FAEBFC2E9CB6EB898C8034D11ShieldModel__shieldStyle);
}

uint64_t sub_1BD652AEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1BD6547F0();

  return MEMORY[0x1EEDDAA28](a1, a2, a3, v6);
}

uint64_t sub_1BD652B50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1BD6547F0();

  return MEMORY[0x1EEDDA9B8](a1, a2, a3, v6);
}

void sub_1BD652BB4()
{
  sub_1BD6547F0();
  sub_1BE04F964();
  __break(1u);
}

id sub_1BD652BDC()
{
  v0 = [objc_opt_self() mainScreen];
  [v0 scale];
  v2 = v1;

  v3 = objc_allocWithZone(MEMORY[0x1E69A8A00]);
  v4 = sub_1BE052404();
  v5 = [v3 initWithBundleIdentifier_];

  v6 = [objc_allocWithZone(MEMORY[0x1E69A8A30]) initWithSize:64.0 scale:{64.0, v2}];
  v7 = [v5 prepareImageForDescriptor_];
  v8 = [objc_allocWithZone(MEMORY[0x1E69DCAB8]) init];
  if (v7)
  {
    v9 = [v7 CGImage];
    if (v9)
    {
      v10 = v9;
      v11 = [objc_allocWithZone(MEMORY[0x1E69DCAB8]) initWithCGImage:v9 scale:0 orientation:v2];

      v8 = v11;
    }
  }

  v12 = objc_allocWithZone(MEMORY[0x1E698B100]);
  sub_1BE048C84();
  v13 = v8;
  v14 = sub_1BE052404();

  v15 = [v12 initWithLocalizedApplicationName:v14 iconImage:v13];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4E518);
  sub_1BE04FF74();
  [v15 setDelegate_];

  return v15;
}

id sub_1BD652EB8(uint64_t a1, uint64_t (*a2)(void))
{
  v4.receiver = v2;
  v4.super_class = a2();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

void sub_1BD652F08(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4E518);
  sub_1BE04FF74();
  [a1 setDelegate_];
}

id sub_1BD652F8C@<X0>(uint64_t (*a1)(void)@<X2>, void *a2@<X3>, void *a3@<X8>)
{
  v6 = *v3;
  v7 = a1(0);
  v8 = objc_allocWithZone(v7);
  *&v8[*a2] = v6;
  v11.receiver = v8;
  v11.super_class = v7;
  v9 = v6;
  result = objc_msgSendSuper2(&v11, sel_init);
  *a3 = result;
  return result;
}

uint64_t sub_1BD653000(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1BD654660();

  return MEMORY[0x1EEDDAA28](a1, a2, a3, v6);
}

uint64_t sub_1BD653064(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1BD654660();

  return MEMORY[0x1EEDDA9B8](a1, a2, a3, v6);
}

void sub_1BD6530C8()
{
  sub_1BD654660();
  sub_1BE04F964();
  __break(1u);
}

uint64_t sub_1BD6530F0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1BD654B68(&qword_1EBD4E530, type metadata accessor for ShieldModel);
  sub_1BE04B594();

  *a2 = *(v3 + OBJC_IVAR____TtC9PassKitUIP33_81D0147D6FAEBFC2E9CB6EB898C8034D11ShieldModel__shieldState);
  return result;
}

unsigned __int8 *sub_1BD6531A0(unsigned __int8 *result)
{
  if (*(v1 + OBJC_IVAR____TtC9PassKitUIP33_81D0147D6FAEBFC2E9CB6EB898C8034D11ShieldModel__shieldState) != *result)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath, v3);
    sub_1BD654B68(&qword_1EBD4E530, type metadata accessor for ShieldModel);
    sub_1BE04B584();
  }

  return result;
}

uint64_t sub_1BD6532B0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1BD654B68(&qword_1EBD4E530, type metadata accessor for ShieldModel);
  sub_1BE04B594();

  *a2 = *(v3 + OBJC_IVAR____TtC9PassKitUIP33_81D0147D6FAEBFC2E9CB6EB898C8034D11ShieldModel__shieldStyle);
  return result;
}

uint64_t sub_1BD653360(uint64_t result)
{
  if (*(v1 + OBJC_IVAR____TtC9PassKitUIP33_81D0147D6FAEBFC2E9CB6EB898C8034D11ShieldModel__shieldStyle) != result)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath, v3);
    sub_1BD654B68(&qword_1EBD4E530, type metadata accessor for ShieldModel);
    sub_1BE04B584();
  }

  return result;
}

uint64_t sub_1BD65346C()
{
  swift_getKeyPath();
  sub_1BD654B68(&qword_1EBD4E530, type metadata accessor for ShieldModel);
  sub_1BE04B594();

  return *(v0 + OBJC_IVAR____TtC9PassKitUIP33_81D0147D6FAEBFC2E9CB6EB898C8034D11ShieldModel__didForceShieldState);
}

uint64_t sub_1BD653514@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1BD654B68(&qword_1EBD4E530, type metadata accessor for ShieldModel);
  sub_1BE04B594();

  *a2 = *(v3 + OBJC_IVAR____TtC9PassKitUIP33_81D0147D6FAEBFC2E9CB6EB898C8034D11ShieldModel__didForceShieldState);
  return result;
}

uint64_t sub_1BD6535C4(uint64_t result)
{
  if (*(v1 + OBJC_IVAR____TtC9PassKitUIP33_81D0147D6FAEBFC2E9CB6EB898C8034D11ShieldModel__didForceShieldState) == (result & 1))
  {
    *(v1 + OBJC_IVAR____TtC9PassKitUIP33_81D0147D6FAEBFC2E9CB6EB898C8034D11ShieldModel__didForceShieldState) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath, v3);
    sub_1BD654B68(&qword_1EBD4E530, type metadata accessor for ShieldModel);
    sub_1BE04B584();
  }

  return result;
}

uint64_t sub_1BD6536DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[3] = a4;
  sub_1BE0528A4();
  v4[4] = sub_1BE052894();
  v6 = sub_1BE052844();
  v4[5] = v6;
  v4[6] = v5;

  return MEMORY[0x1EEE6DFA0](sub_1BD653774, v6, v5);
}

uint64_t sub_1BD653774()
{
  v1 = swift_task_alloc();
  *(v0 + 56) = v1;
  *v1 = v0;
  v1[1] = sub_1BD653814;

  return MEMORY[0x1EEE23E78]();
}

uint64_t sub_1BD653814(char a1)
{
  v2 = *v1;
  *(*v1 + 64) = a1;

  v3 = *(v2 + 48);
  v4 = *(v2 + 40);

  return MEMORY[0x1EEE6DFA0](sub_1BD65393C, v4, v3);
}

uint64_t sub_1BD65393C()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 24);

  if (v1)
  {
    v3 = 1;
  }

  else
  {
    v3 = 2;
  }

  if (*(v2 + OBJC_IVAR____TtC9PassKitUIP33_81D0147D6FAEBFC2E9CB6EB898C8034D11ShieldModel__shieldState) != v3)
  {
    v4 = *(v0 + 24);
    swift_getKeyPath();
    v5 = swift_task_alloc();
    *(v5 + 16) = v4;
    *(v5 + 24) = v3;
    *(v0 + 16) = v4;
    sub_1BD654B68(&qword_1EBD4E530, type metadata accessor for ShieldModel);
    sub_1BE04B584();
  }

  v6 = *(v0 + 8);

  return v6();
}

id sub_1BD653A88()
{
  ObjectType = swift_getObjectType();
  v2 = *&v0[OBJC_IVAR____TtC9PassKitUIP33_81D0147D6FAEBFC2E9CB6EB898C8034D11ShieldModel_coordinator];
  v3 = v0;
  sub_1BE04BE44();

  v5.receiver = v3;
  v5.super_class = ObjectType;
  return objc_msgSendSuper2(&v5, sel_dealloc);
}

uint64_t AppProtectionShieldState.hashValue.getter()
{
  v1 = *v0;
  sub_1BE053D04();
  MEMORY[0x1BFB40DA0](v1);
  return sub_1BE053D64();
}

char *sub_1BD653D84(void *a1, unsigned __int8 *a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3E580);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v10 = &v50 - v9;
  v11 = sub_1BE04BD74();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11, v13);
  v15 = &v50 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *a2;
  v3[OBJC_IVAR____TtC9PassKitUIP33_81D0147D6FAEBFC2E9CB6EB898C8034D11ShieldModel__shieldState] = 0;
  *&v3[OBJC_IVAR____TtC9PassKitUIP33_81D0147D6FAEBFC2E9CB6EB898C8034D11ShieldModel__shieldStyle] = 0;
  v3[OBJC_IVAR____TtC9PassKitUIP33_81D0147D6FAEBFC2E9CB6EB898C8034D11ShieldModel__didForceShieldState] = 0;
  sub_1BE04B5C4();
  v17 = &OBJC_IVAR____TtC9PassKitUI19FundingSourcesModel__fetchedSources;
  if (a1)
  {
    sub_1BE04BE74();
    v18 = a1;
    *&v3[OBJC_IVAR____TtC9PassKitUIP33_81D0147D6FAEBFC2E9CB6EB898C8034D11ShieldModel_coordinator] = sub_1BE04BE14();
    v19 = [v18 bundleIdentifier];
    v20 = sub_1BE052434();
    v22 = v21;

    v23 = &v3[OBJC_IVAR____TtC9PassKitUIP33_81D0147D6FAEBFC2E9CB6EB898C8034D11ShieldModel_bundleIdentifier];
    *v23 = v20;
    v23[1] = v22;
    v24 = [v18 localizedName];
    if (v24)
    {
      v25 = v24;
      v26 = sub_1BE052434();
      v28 = v27;
    }

    else
    {

      v26 = 0;
      v28 = 0;
    }
  }

  else
  {
    sub_1BE04BE74();
    *&v3[OBJC_IVAR____TtC9PassKitUIP33_81D0147D6FAEBFC2E9CB6EB898C8034D11ShieldModel_coordinator] = MEMORY[0x1BFB38EF0]();
    v29 = sub_1BE052434();
    v30 = &v3[OBJC_IVAR____TtC9PassKitUIP33_81D0147D6FAEBFC2E9CB6EB898C8034D11ShieldModel_bundleIdentifier];
    *v30 = v29;
    v30[1] = v31;
    (*(v12 + 104))(v15, *MEMORY[0x1E69B8068], v11);
    result = PKPassKitBundle();
    if (!result)
    {
      __break(1u);
      return result;
    }

    v33 = result;
    v26 = sub_1BE04B6F4();
    v28 = v34;

    (*(v12 + 8))(v15, v11);
    v17 = &OBJC_IVAR____TtC9PassKitUI19FundingSourcesModel__fetchedSources;
  }

  v35 = &v3[OBJC_IVAR____TtC9PassKitUIP33_81D0147D6FAEBFC2E9CB6EB898C8034D11ShieldModel_localizedAppName];
  *v35 = v26;
  v35[1] = v28;
  v52.receiver = v3;
  v52.super_class = ObjectType;
  v36 = objc_msgSendSuper2(&v52, sel_init);
  v37 = v36;
  if (v16 == 3)
  {
    v38 = sub_1BE0528D4();
    (*(*(v38 - 8) + 56))(v10, 1, 1, v38);
    sub_1BE0528A4();
    v39 = v37;
    v40 = sub_1BE052894();
    v41 = swift_allocObject();
    v42 = MEMORY[0x1E69E85E0];
    v41[2] = v40;
    v41[3] = v42;
    v41[4] = v39;
    sub_1BD122C00(0, 0, v10, &unk_1BE0EBA90, v41);
  }

  else
  {
    if (v36[OBJC_IVAR____TtC9PassKitUIP33_81D0147D6FAEBFC2E9CB6EB898C8034D11ShieldModel__shieldState] != v16)
    {
      KeyPath = swift_getKeyPath();
      MEMORY[0x1EEE9AC00](KeyPath, v44);
      *(&v50 - 2) = v37;
      *(&v50 - 8) = v16;
      v51 = v37;
      sub_1BD654B68(&qword_1EBD4E530, type metadata accessor for ShieldModel);
      sub_1BE04B584();
    }

    if (v37[OBJC_IVAR____TtC9PassKitUIP33_81D0147D6FAEBFC2E9CB6EB898C8034D11ShieldModel__didForceShieldState] == 1)
    {
      v37[OBJC_IVAR____TtC9PassKitUIP33_81D0147D6FAEBFC2E9CB6EB898C8034D11ShieldModel__didForceShieldState] = 1;
    }

    else
    {
      v45 = swift_getKeyPath();
      MEMORY[0x1EEE9AC00](v45, v46);
      *(&v50 - 2) = v37;
      *(&v50 - 8) = 1;
      v51 = v37;
      sub_1BD654B68(&qword_1EBD4E530, type metadata accessor for ShieldModel);
      sub_1BE04B584();
    }
  }

  v47 = *&v37[v17[151]];
  v48 = v37;
  v49 = v47;
  sub_1BE04BE34();

  return v48;
}

unint64_t sub_1BD654388()
{
  result = qword_1EBD4E348[0];
  if (!qword_1EBD4E348[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EBD4E348);
  }

  return result;
}

uint64_t sub_1BD654408()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1BD6544AC()
{
  result = sub_1BE04B5D4();
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

unint64_t sub_1BD6545B4()
{
  result = qword_1EBD4E508;
  if (!qword_1EBD4E508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4E508);
  }

  return result;
}

unint64_t sub_1BD65460C()
{
  result = qword_1EBD4E510;
  if (!qword_1EBD4E510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4E510);
  }

  return result;
}

unint64_t sub_1BD654660()
{
  result = qword_1EBD4E520;
  if (!qword_1EBD4E520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4E520);
  }

  return result;
}

id sub_1BD6546B4(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4E528);
  sub_1BE04FF74();
  [a1 setDelegate_];

  sub_1BE04FF74();
  v2 = *&v5[OBJC_IVAR____TtCV9PassKitUIP33_81D0147D6FAEBFC2E9CB6EB898C8034D11_ShieldView11Coordinator_shieldModel];

  swift_getKeyPath();
  sub_1BD654B68(&qword_1EBD4E530, type metadata accessor for ShieldModel);
  sub_1BE04B594();

  v3 = *&v2[OBJC_IVAR____TtC9PassKitUIP33_81D0147D6FAEBFC2E9CB6EB898C8034D11ShieldModel__shieldStyle];

  return [a1 setShieldStyle_];
}

unint64_t sub_1BD6547F0()
{
  result = qword_1EBD4E538;
  if (!qword_1EBD4E538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4E538);
  }

  return result;
}

uint64_t sub_1BD654844()
{
  swift_getKeyPath();
  sub_1BD654B68(&qword_1EBD4E530, type metadata accessor for ShieldModel);
  sub_1BE04B594();

  if ((*(v0 + OBJC_IVAR____TtC9PassKitUIP33_81D0147D6FAEBFC2E9CB6EB898C8034D11ShieldModel__didForceShieldState) & 1) == 0 && *(v0 + OBJC_IVAR____TtC9PassKitUIP33_81D0147D6FAEBFC2E9CB6EB898C8034D11ShieldModel__shieldState) != 2)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath, v3);
    sub_1BE04B584();
  }

  if (*(v0 + OBJC_IVAR____TtC9PassKitUIP33_81D0147D6FAEBFC2E9CB6EB898C8034D11ShieldModel__shieldStyle))
  {
    v4 = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](v4, v5);
    sub_1BE04B584();
  }

  return result;
}

void sub_1BD654A2C()
{
  if (*(v0 + OBJC_IVAR____TtC9PassKitUIP33_81D0147D6FAEBFC2E9CB6EB898C8034D11ShieldModel__shieldStyle) != 1)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath, v2);
    sub_1BD654B68(&qword_1EBD4E530, type metadata accessor for ShieldModel);
    sub_1BE04B584();
  }
}

uint64_t sub_1BD654B68(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1BD654BB0()
{
  result = qword_1EBD4E570;
  if (!qword_1EBD4E570)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EBD4E560);
    sub_1BD654C3C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4E570);
  }

  return result;
}

unint64_t sub_1BD654C3C()
{
  result = qword_1EBD4E578;
  if (!qword_1EBD4E578)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4E540);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4E578);
  }

  return result;
}

unint64_t sub_1BD654CA0()
{
  result = qword_1EBD4E580;
  if (!qword_1EBD4E580)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4E340);
    sub_1BD654BB0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4E580);
  }

  return result;
}

uint64_t sub_1BD654D2C()
{
  if (*(v0 + 56))
  {
    return sub_1BE04BE04();
  }

  return result;
}

id sub_1BD654D64(id result, uint64_t a2, char a3)
{
  if ((a3 & 1) == 0)
  {
    return result;
  }

  return result;
}

void sub_1BD654D70(id a1, uint64_t a2, char a3)
{
  if ((a3 & 1) == 0)
  {
  }
}

uint64_t sub_1BD654D7C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4E598);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1BD654DEC()
{
  result = qword_1EBD4E5D8;
  if (!qword_1EBD4E5D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4E5D0);
    sub_1BD6545B4();
    sub_1BD65460C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4E5D8);
  }

  return result;
}

uint64_t sub_1BD654E78(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1BD0F985C;

  return sub_1BD6536DC(a1, v4, v5, v6);
}

uint64_t type metadata accessor for TaxFormCell()
{
  result = qword_1EBD4E5E0;
  if (!qword_1EBD4E5E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1BD654FF4()
{
  sub_1BD0E5E8C(319, &qword_1EBD43FC8);
  if (v0 <= 0x3F)
  {
    sub_1BD23BC4C(319, &qword_1EBD44528, &unk_1EBD3CF70);
    if (v1 <= 0x3F)
    {
      sub_1BD10EE48();
      if (v2 <= 0x3F)
      {
        sub_1BD655120();
        if (v3 <= 0x3F)
        {
          sub_1BD3B7EC4();
          if (v4 <= 0x3F)
          {
            sub_1BD23BC4C(319, &qword_1EBD47B10, &qword_1EBD3A5C8);
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

void sub_1BD655120()
{
  if (!qword_1EBD4E5F0)
  {
    type metadata accessor for TaxFormsModel(255);
    sub_1BD657610(&qword_1EBD3B320, type metadata accessor for TaxFormsModel);
    v0 = sub_1BE04EED4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBD4E5F0);
    }
  }
}