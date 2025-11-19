unint64_t sub_1BBB51DFC()
{
  result = qword_1ED6BE130;
  if (!qword_1ED6BE130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6BE130);
  }

  return result;
}

unint64_t sub_1BBB51E54()
{
  result = qword_1ED6BE148;
  if (!qword_1ED6BE148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6BE148);
  }

  return result;
}

unint64_t sub_1BBB51EAC()
{
  result = qword_1ED6BE150;
  if (!qword_1ED6BE150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6BE150);
  }

  return result;
}

unint64_t sub_1BBB51F04()
{
  result = qword_1ED6BE108;
  if (!qword_1ED6BE108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6BE108);
  }

  return result;
}

unint64_t sub_1BBB51F5C()
{
  result = qword_1ED6BE110;
  if (!qword_1ED6BE110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6BE110);
  }

  return result;
}

unint64_t sub_1BBB51FB4()
{
  result = qword_1ED6BE188;
  if (!qword_1ED6BE188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6BE188);
  }

  return result;
}

unint64_t sub_1BBB5200C()
{
  result = qword_1ED6BE190;
  if (!qword_1ED6BE190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6BE190);
  }

  return result;
}

unint64_t sub_1BBB52064()
{
  result = qword_1ED6BE1E8;
  if (!qword_1ED6BE1E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6BE1E8);
  }

  return result;
}

unint64_t sub_1BBB520BC()
{
  result = qword_1ED6BE1F0;
  if (!qword_1ED6BE1F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6BE1F0);
  }

  return result;
}

unint64_t sub_1BBB52114()
{
  result = qword_1ED6BE168;
  if (!qword_1ED6BE168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6BE168);
  }

  return result;
}

unint64_t sub_1BBB5216C()
{
  result = qword_1ED6BE170;
  if (!qword_1ED6BE170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6BE170);
  }

  return result;
}

unint64_t sub_1BBB521C4()
{
  result = qword_1ED6BE158;
  if (!qword_1ED6BE158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6BE158);
  }

  return result;
}

unint64_t sub_1BBB5221C()
{
  result = qword_1ED6BE160;
  if (!qword_1ED6BE160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6BE160);
  }

  return result;
}

unint64_t sub_1BBB52274()
{
  result = qword_1ED6BDB18;
  if (!qword_1ED6BDB18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6BDB18);
  }

  return result;
}

unint64_t sub_1BBB522CC()
{
  result = qword_1ED6BDB20;
  if (!qword_1ED6BDB20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6BDB20);
  }

  return result;
}

unint64_t sub_1BBB52324()
{
  result = qword_1ED6BE228;
  if (!qword_1ED6BE228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6BE228);
  }

  return result;
}

unint64_t sub_1BBB5237C()
{
  result = qword_1ED6BE230;
  if (!qword_1ED6BE230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6BE230);
  }

  return result;
}

uint64_t IntelligenceElement.Text.isTruncated.getter()
{
  v1 = *v0 + *(**v0 + 88);
  swift_beginAccess();
  return *(v1 + *(_s4TextV7StorageVMa() + 28));
}

uint64_t IntelligenceElement.Text.isWhitespaceTrimmed.getter()
{
  v1 = *v0 + *(**v0 + 88);
  swift_beginAccess();
  return *(v1 + *(_s4TextV7StorageVMa() + 32));
}

void *IntelligenceElement.Text.links.getter()
{
  v1 = *v0;
  v2 = sub_1BBB83148();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v73 = v4;
  v5 = &v63 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(*v1 + 88);
  swift_beginAccess();
  v7 = *(v3 + 16);
  v76 = v1;
  v72 = v6;
  v71 = v3 + 16;
  v70 = v7;
  (v7)(v5, v1 + v6, v2);
  v8 = sub_1BBB830D8();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v63 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BBB830F8();
  v12 = *(v3 + 8);
  v75 = v2;
  v74 = v3 + 8;
  v69 = v12;
  v12(v5, v2);
  KeyPath = swift_getKeyPath();
  swift_getKeyPath();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7D258);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v63 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BBB586AC();
  sub_1BBB830E8();

  (*(v9 + 8))(v11, v8);
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7D260);
  v64 = *(v85 - 8);
  MEMORY[0x1EEE9AC00](v85);
  v18 = &v63 - v17;
  v20 = MEMORY[0x1EEE9AC00](v19);
  v66 = v14;
  v21 = *(v14 + 16);
  v65 = v16;
  v21(v16, v16, v13, v20);
  sub_1BBAA6710(&qword_1EBC7D268, &qword_1EBC7D258);
  v84 = v18;
  v67 = v13;
  sub_1BBB83B98();
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7D270);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v24 = &v63 - v23;
  v83 = sub_1BBAA6710(&qword_1EBC7D278, &qword_1EBC7D260);
  v89 = MEMORY[0x1E69E7CC0];
  v68 = v24;
  while (1)
  {
    sub_1BBB83EB8();
    v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7D280);
    v26 = (*(*(v25 - 8) + 48))(v24, 1, v25);
    if (v26 == 1)
    {
      break;
    }

    v93 = &v63;
    MEMORY[0x1EEE9AC00](v26);
    v28 = &v63 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
    sub_1BBAA6758(v24, v28, &qword_1EBC7D280);
    v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7B5F0);
    v92 = &v63;
    v91 = *(v29 - 8);
    v88 = *(v91 + 64);
    MEMORY[0x1EEE9AC00](v29);
    v87 = &v63 - v30;
    v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7D288);
    v94 = &v63;
    MEMORY[0x1EEE9AC00](v31 - 8);
    v33 = (&v63 - v32);
    v86 = *(v25 + 48);
    v34 = sub_1BBB833F8();
    v90 = &v63;
    v35 = *(v34 - 8);
    MEMORY[0x1EEE9AC00](v34);
    v37 = &v63 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
    v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7BB98);
    MEMORY[0x1EEE9AC00](v38 - 8);
    v40 = &v63 - v39;
    sub_1BBB40EC4(v28, &v63 - v39);
    if ((*(v35 + 48))(v40, 1, v34) == 1)
    {
      sub_1BBA8BCC4(v40, &qword_1EBC7BB98);
      v41 = v91;
      (*(v91 + 56))(v33, 1, 1, v29);
    }

    else
    {
      v80 = *(v35 + 32);
      v81 = v37;
      v42 = v80(v37, v40, v34);
      v78 = &v63;
      v79 = *(v29 + 48);
      v43 = MEMORY[0x1EEE9AC00](v42);
      v45 = &v63 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
      v82 = v29;
      v46 = v75;
      v70(v45, v76 + v72, v75, v43);
      v47 = sub_1BBB82FF8();
      v77 = &v63;
      v48 = *(v47 - 8);
      MEMORY[0x1EEE9AC00](v47);
      v50 = &v63 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
      sub_1BBB82FD8();
      v69(v45, v46);
      v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7D290);
      MEMORY[0x1EEE9AC00](v51 - 8);
      sub_1BBB83008();
      (*(v48 + 8))(v50, v47);
      v29 = v82;
      v52 = sub_1BBB83A68();
      v24 = v68;
      *v33 = v52;
      v33[1] = v53;
      v80(v33 + v79, v81, v34);
      v41 = v91;
      (*(v91 + 56))(v33, 0, 1, v29);
    }

    sub_1BBA8BCC4(v28, &qword_1EBC7D280);
    if ((*(v41 + 48))(v33, 1, v29) == 1)
    {
      sub_1BBA8BCC4(v33, &qword_1EBC7D288);
    }

    else
    {
      v54 = v41;
      v55 = v87;
      v56 = sub_1BBAA6758(v33, v87, &qword_1EBC7B5F0);
      v94 = &v63;
      MEMORY[0x1EEE9AC00](v56);
      v58 = &v63 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0);
      sub_1BBAA6758(v55, v58, &qword_1EBC7B5F0);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v89 = sub_1BBABECAC(0, v89[2] + 1, 1, v89);
      }

      v60 = v89[2];
      v59 = v89[3];
      if (v60 >= v59 >> 1)
      {
        v89 = sub_1BBABECAC(v59 > 1, v60 + 1, 1, v89);
      }

      v61 = v89;
      v89[2] = v60 + 1;
      sub_1BBAA6758(v58, v61 + ((*(v54 + 80) + 32) & ~*(v54 + 80)) + *(v54 + 72) * v60, &qword_1EBC7B5F0);
    }
  }

  (*(v64 + 8))(v84, v85);
  (*(v66 + 8))(v65, v67);
  return v89;
}

BOOL IntelligenceElement.Text.hasLinks.getter()
{
  v1 = *v0;
  v2 = sub_1BBB83148();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(*v1 + 88);
  swift_beginAccess();
  (*(v3 + 16))(v5, v1 + v6, v2);
  v7 = sub_1BBB830D8();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  sub_1BBB830F8();
  (*(v3 + 8))(v5, v2);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7D298);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v34 - v11;
  v14 = MEMORY[0x1EEE9AC00](v13);
  v34 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = v8;
  (*(v8 + 16))(v34, v34, v7, v14);
  v15 = MEMORY[0x1EEE77FF8];
  sub_1BBA8BDFC(&qword_1EBC7B548, MEMORY[0x1EEE77FF8]);
  v44 = v7;
  sub_1BBB83B98();
  v40 = sub_1BBB830A8();
  v16 = *(v40 - 8);
  MEMORY[0x1EEE9AC00](v40);
  v39 = &v34 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = sub_1BBB830C8();
  v18 = *(v43 - 8);
  v42 = *(v18 + 64);
  v19 = sub_1BBA8BDFC(&qword_1EBC7B540, v15);
  v41 = (v18 + 8);
  v37 = (v16 + 8);
  v38 = (v16 + 16);
  while (1)
  {
    MEMORY[0x1EEE9AC00](v19);
    v21 = &v34 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
    v22 = v44;
    sub_1BBB83CF8();
    sub_1BBA8BDFC(&unk_1EBC7B550, MEMORY[0x1EEE77FE8]);
    v23 = v43;
    v24 = sub_1BBB83968();
    (*v41)(v21, v23);
    if (v24)
    {
      sub_1BBA8BCC4(v12, &qword_1EBC7D298);
      (*(v35 + 8))(v34, v22);
      return (v24 & 1) == 0;
    }

    v36 = v24;
    v25 = v12;
    v26 = sub_1BBB83D18();
    v27 = v39;
    v28 = v40;
    (*v38)(v39);
    v26(v45, 0);
    sub_1BBB83D08();
    v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7BB98);
    MEMORY[0x1EEE9AC00](v29 - 8);
    v31 = &v34 - v30;
    sub_1BBB586AC();
    sub_1BBB830B8();
    (*v37)(v27, v28);
    v32 = sub_1BBB833F8();
    if ((*(*(v32 - 8) + 48))(v31, 1, v32) != 1)
    {
      break;
    }

    v19 = sub_1BBA8BCC4(v31, &qword_1EBC7BB98);
    v12 = v25;
  }

  sub_1BBA8BCC4(v25, &qword_1EBC7D298);
  (*(v35 + 8))(v34, v44);
  sub_1BBA8BCC4(v31, &qword_1EBC7BB98);
  LOBYTE(v24) = v36;
  return (v24 & 1) == 0;
}

uint64_t IntelligenceElement.Text.averageFontSize.getter()
{
  v1 = *v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7D2C0);
  v58 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v43 - v3;
  v5 = sub_1BBB83148();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v54 = v7;
  v8 = &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(*v1 + 88);
  swift_beginAccess();
  v10 = *(v6 + 16);
  v57 = v1;
  v52 = v6 + 16;
  v53 = v9;
  v51 = v10;
  (v10)(v8, v1 + v9, v5);
  v11 = sub_1BBB830D8();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v43 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BBB830F8();
  v15 = *(v6 + 8);
  v55 = v6 + 8;
  v56 = v5;
  v50 = v15;
  v15(v8, v5);
  KeyPath = swift_getKeyPath();
  swift_getKeyPath();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7D2C8);
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v43 - v18;
  sub_1BBB5873C();
  sub_1BBB830E8();

  (*(v12 + 8))(v14, v11);
  sub_1BBB83088();
  (*(v17 + 8))(v19, v16);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7D2D0);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v22 = (&v43 - v21);
  v23 = 0.0;
  v24 = 0.0;
  while (1)
  {
    sub_1BBB83098();
    v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7D2D8);
    if ((*(*(v25 - 8) + 48))(v22, 1, v25) == 1)
    {
      break;
    }

    v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7B648);
    MEMORY[0x1EEE9AC00](v26);
    v28 = &v43 - v27;
    v29 = *v22;
    v30 = *(v22 + 8);
    sub_1BBAA6758(v22 + *(v25 + 48), &v43 - v27, &qword_1EBC7B648);
    if (v30 & 1) != 0 || (sub_1BBB83118(), sub_1BBA8BDFC(&qword_1EBC7AE68, MEMORY[0x1EEE78028]), v31 = sub_1BBB83968(), (v31))
    {
      sub_1BBA8BCC4(v28, &qword_1EBC7B648);
    }

    else
    {
      v48 = &v43;
      v32 = MEMORY[0x1EEE9AC00](v31);
      v34 = &v43 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
      v35 = v56;
      v51(v34, v57 + v53, v56, v32);
      v49 = sub_1BBB82FF8();
      v47 = &v43;
      v45 = *(v49 - 8);
      MEMORY[0x1EEE9AC00](v49);
      v44 = &v43 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
      sub_1BBB82FD8();
      v50(v34, v35);
      v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7D290);
      v46 = &v43;
      MEMORY[0x1EEE9AC00](v37);
      v39 = &v43 - v38;
      v40 = v44;
      sub_1BBB83008();
      (*(v45 + 8))(v40, v49);
      sub_1BBA8BDFC(&qword_1EBC7AE80, MEMORY[0x1EEE77F58]);
      v41 = sub_1BBB83CE8();
      sub_1BBA8BCC4(v39, &qword_1EBC7D290);
      sub_1BBA8BCC4(v28, &qword_1EBC7B648);
      v23 = v23 + v29 * v41;
      v24 = v24 + v41;
    }
  }

  (*(v58 + 8))(v4, v2);
  if (v24 > 0.0)
  {
    *&result = v23 / v24;
  }

  else
  {
    *&result = 0.0;
  }

  return result;
}

uint64_t IntelligenceElement.Text.Editable.label.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t IntelligenceElement.Text.Editable.label.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t IntelligenceElement.Text.Editable.prompt.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t IntelligenceElement.Text.Editable.prompt.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t IntelligenceElement.Text.Editable.contentType.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t IntelligenceElement.Text.Editable.contentType.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return result;
}

uint64_t IntelligenceElement.Text.Editable.init(label:prompt:contentType:isSecure:isFocused:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char a7@<W6>, char a8@<W7>, uint64_t a9@<X8>)
{
  *a9 = result;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  *(a9 + 40) = a6;
  *(a9 + 48) = a7;
  *(a9 + 49) = a8;
  return result;
}

uint64_t IntelligenceElement.Text.editable.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1 + *(**v1 + 88);
  swift_beginAccess();
  v4 = v3 + *(_s4TextV7StorageVMa() + 20);
  v5 = *v4;
  v6 = *(v4 + 8);
  v7 = *(v4 + 16);
  v8 = *(v4 + 24);
  v9 = *(v4 + 32);
  v10 = *(v4 + 40);
  *a1 = *v4;
  *(a1 + 8) = v6;
  *(a1 + 16) = v7;
  *(a1 + 24) = v8;
  *(a1 + 32) = v9;
  *(a1 + 40) = v10;
  *(a1 + 48) = *(v4 + 48);
  return sub_1BBB58790(v5, v6);
}

uint64_t sub_1BBB540EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1 + *(**a1 + 88);
  swift_beginAccess();
  v4 = v3 + *(_s4TextV7StorageVMa() + 20);
  v5 = *v4;
  v6 = *(v4 + 8);
  v7 = *(v4 + 16);
  v8 = *(v4 + 24);
  v9 = *(v4 + 32);
  v10 = *(v4 + 40);
  *a2 = *v4;
  *(a2 + 8) = v6;
  *(a2 + 16) = v7;
  *(a2 + 24) = v8;
  *(a2 + 32) = v9;
  *(a2 + 40) = v10;
  *(a2 + 48) = *(v4 + 48);
  return sub_1BBB58790(v5, v6);
}

uint64_t sub_1BBB54178(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  v8[0] = *a1;
  v8[1] = v1;
  v8[2] = v2;
  v8[3] = v3;
  v8[4] = v4;
  v8[5] = v5;
  v9 = v6;
  sub_1BBB58790(v8[0], v1);
  return IntelligenceElement.Text.editable.setter(v8);
}

uint64_t IntelligenceElement.Text.editable.setter(uint64_t a1)
{
  v3 = _s4TextV7StorageVMa();
  v4 = v3 - 8;
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v18[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = *(a1 + 32);
  v8 = *(a1 + 40);
  v9 = *(a1 + 48);
  v10 = *v1;
  v11 = *(**v1 + 88);
  swift_beginAccess();
  sub_1BBB587E4(v10 + v11, v6);
  v12 = &v6[*(v4 + 28)];
  sub_1BBB58848(*v12, *(v12 + 1));
  v13 = *(a1 + 16);
  *v12 = *a1;
  *(v12 + 1) = v13;
  *(v12 + 4) = v7;
  *(v12 + 5) = v8;
  *(v12 + 24) = v9;
  if (swift_isUniquelyReferenced_nonNull_native())
  {
    v14 = *v1;
    v15 = *(*v14 + 88);
    swift_beginAccess();
    sub_1BBB58900(v6, v14 + v15);
    return swift_endAccess();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7D2E0);
    v17 = swift_allocObject();
    sub_1BBB5889C(v6, v17 + *(*v17 + 88));

    *v1 = v17;
  }

  return result;
}

void (*IntelligenceElement.Text.editable.modify(uint64_t *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0xB0uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 128) = v1;
  v6 = _s4TextV7StorageVMa();
  *(v5 + 136) = v6;
  v7 = *(*(v6 - 8) + 64);
  if (v3)
  {
    *(v5 + 144) = swift_coroFrameAlloc();
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    *(v5 + 144) = malloc(*(*(v6 - 8) + 64));
    v8 = malloc(v7);
  }

  *(v5 + 152) = v8;
  v9 = *v1;
  *(v5 + 160) = *v1;
  v10 = *(*v9 + 88);
  *(v5 + 168) = v10;
  v11 = v9 + v10;
  swift_beginAccess();
  v12 = v11 + *(v6 + 20);
  v13 = *v12;
  v14 = *(v12 + 8);
  v15 = *(v12 + 16);
  v16 = *(v12 + 24);
  v17 = *(v12 + 32);
  v18 = *(v12 + 40);
  v19 = *(v12 + 48);
  *v5 = *v12;
  *(v5 + 8) = v14;
  *(v5 + 16) = v15;
  *(v5 + 24) = v16;
  *(v5 + 32) = v17;
  *(v5 + 40) = v18;
  *(v5 + 48) = v19;
  sub_1BBB58790(v13, v14);
  return sub_1BBB544A8;
}

void sub_1BBB544A8(uint64_t **a1, char a2)
{
  v2 = *a1;
  v4 = **a1;
  v3 = (*a1)[1];
  v6 = (*a1)[2];
  v5 = (*a1)[3];
  v8 = (*a1)[4];
  v7 = (*a1)[5];
  v9 = *(*a1 + 24);
  v11 = (*a1)[20];
  v10 = (*a1)[21];
  v12 = (*a1)[17];
  if (a2)
  {
    v13 = v2[18];
    sub_1BBB587E4(v11 + v10, v13);
    v14 = v13 + *(v12 + 20);
    LOWORD(v13) = v9;
    v15 = *(v14 + 8);
    v33 = *v14;
    sub_1BBB58790(v4, v3);
    sub_1BBB58848(v33, v15);
    *v14 = v4;
    *(v14 + 8) = v3;
    *(v14 + 16) = v6;
    *(v14 + 24) = v5;
    *(v14 + 32) = v8;
    *(v14 + 40) = v7;
    *(v14 + 48) = v13;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = v2[18];
    v18 = v2[16];
    if (isUniquelyReferenced_nonNull_native)
    {
      v19 = *v18;
      v20 = *(**v18 + 88);
      swift_beginAccess();
      sub_1BBB58900(v17, v19 + v20);
      swift_endAccess();
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7D2E0);
      v28 = swift_allocObject();
      sub_1BBB5889C(v17, v28 + *(*v28 + 88));

      *v18 = v28;
    }

    v29 = v2[18];
    v30 = v2[19];
    sub_1BBB58848(*v2, v2[1]);
    v31 = v30;
  }

  else
  {
    v21 = v2[19];
    sub_1BBB587E4(v11 + v10, v21);
    v22 = v21 + *(v12 + 20);
    sub_1BBB58848(*v22, *(v22 + 8));
    *v22 = v4;
    *(v22 + 8) = v3;
    *(v22 + 16) = v6;
    *(v22 + 24) = v5;
    *(v22 + 32) = v8;
    *(v22 + 40) = v7;
    *(v22 + 48) = v9;
    v23 = swift_isUniquelyReferenced_nonNull_native();
    v24 = v2[19];
    v25 = v2[16];
    if (v23)
    {
      v26 = *v25;
      v27 = *(**v25 + 88);
      swift_beginAccess();
      sub_1BBB58900(v24, v26 + v27);
      swift_endAccess();
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7D2E0);
      v32 = swift_allocObject();
      sub_1BBB5889C(v24, v32 + *(*v32 + 88));

      *v25 = v32;
    }

    v29 = v2[18];
    v31 = v2[19];
  }

  free(v31);
  free(v29);

  free(v2);
}

uint64_t sub_1BBB54784@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1BBB59350(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1BBB547AC(uint64_t a1)
{
  v2 = sub_1BBA90928();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BBB547E8(uint64_t a1)
{
  v2 = sub_1BBA90928();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1BBB54824(uint64_t a1)
{
  v2 = sub_1BBB58964();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BBB54860(uint64_t a1)
{
  v2 = sub_1BBB58964();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1BBB5489C(uint64_t a1)
{
  v2 = sub_1BBA9097C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BBB548D8(uint64_t a1)
{
  v2 = sub_1BBA9097C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1BBB54914(uint64_t a1)
{
  v2 = sub_1BBB589B8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BBB54950(uint64_t a1)
{
  v2 = sub_1BBB589B8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t IntelligenceElement.Text.LineLimit.hashValue.getter()
{
  v1 = *v0;
  sub_1BBB843D8();
  MEMORY[0x1BFB16A50](v1);
  return sub_1BBB84438();
}

uint64_t IntelligenceElement.Text.LineLimit.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v35 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7D310);
  v31 = *(v3 - 8);
  v32 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v34 = &v28 - v4;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7D318);
  v30 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33);
  v6 = &v28 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7D320);
  v29 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v28 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7D328);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v28 - v12;
  v14 = a1[3];
  v37 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v14);
  sub_1BBA90928();
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
      *v24 = &type metadata for IntelligenceElement.Text.LineLimit;
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
          sub_1BBA9097C();
          sub_1BBB84118();
          v21 = v36;
          (*(v30 + 8))(v6, v33);
          (*(v21 + 8))(v13, v10);
        }

        else
        {
          v43 = 2;
          sub_1BBB58964();
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
        sub_1BBB589B8();
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

uint64_t IntelligenceElement.Text.lineLimit.getter@<X0>(_BYTE *a1@<X8>)
{
  v3 = *v1 + *(**v1 + 88);
  swift_beginAccess();
  result = _s4TextV7StorageVMa();
  *a1 = *(v3 + *(result + 24));
  return result;
}

uint64_t sub_1BBB54FF4@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1 + *(**a1 + 88);
  swift_beginAccess();
  result = _s4TextV7StorageVMa();
  *a2 = *(v3 + *(result + 24));
  return result;
}

uint64_t IntelligenceElement.Text.lineLimit.setter(_BYTE *a1)
{
  v3 = _s4TextV7StorageVMa();
  v4 = v3 - 8;
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v13[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  LOBYTE(a1) = *a1;
  v7 = *v1;
  v8 = *(**v1 + 88);
  swift_beginAccess();
  sub_1BBB587E4(v7 + v8, v6);
  v6[*(v4 + 32)] = a1;
  if (swift_isUniquelyReferenced_nonNull_native())
  {
    v9 = *v1;
    v10 = *(*v9 + 88);
    swift_beginAccess();
    sub_1BBB58900(v6, v9 + v10);
    return swift_endAccess();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7D2E0);
    v12 = swift_allocObject();
    sub_1BBB5889C(v6, v12 + *(*v12 + 88));

    *v1 = v12;
  }

  return result;
}

void (*IntelligenceElement.Text.lineLimit.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x80uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = _s4TextV7StorageVMa();
  *(v5 + 80) = v6;
  v7 = *(*(v6 - 8) + 64);
  if (v3)
  {
    *(v5 + 88) = swift_coroFrameAlloc();
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    *(v5 + 88) = malloc(*(*(v6 - 8) + 64));
    v8 = malloc(v7);
  }

  *(v5 + 96) = v8;
  v9 = *v1;
  *(v5 + 104) = *v1;
  v10 = *(*v9 + 88);
  *(v5 + 112) = v10;
  v11 = v9 + v10;
  swift_beginAccess();
  *(v5 + 120) = *(v11 + *(v6 + 24));
  return sub_1BBB552E0;
}

void sub_1BBB552E0(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 120);
  v5 = *(*a1 + 104);
  v4 = *(*a1 + 112);
  v6 = *(*a1 + 80);
  if (a2)
  {
    v7 = v2[11];
    sub_1BBB587E4(v5 + v4, v7);
    *(v7 + *(v6 + 24)) = v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = v2[11];
    v10 = v2[9];
    if (isUniquelyReferenced_nonNull_native)
    {
LABEL_3:
      v11 = *v10;
      v12 = *(**v10 + 88);
      swift_beginAccess();
      sub_1BBB58900(v9, v11 + v12);
      swift_endAccess();
      goto LABEL_6;
    }
  }

  else
  {
    v13 = v2[12];
    sub_1BBB587E4(v5 + v4, v13);
    *(v13 + *(v6 + 24)) = v3;
    v14 = swift_isUniquelyReferenced_nonNull_native();
    v9 = v2[12];
    v10 = v2[9];
    if (v14)
    {
      goto LABEL_3;
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7D2E0);
  v15 = swift_allocObject();
  sub_1BBB5889C(v9, v15 + *(*v15 + 88));

  *v10 = v15;
LABEL_6:
  v16 = v2[11];
  free(v2[12]);
  free(v16);

  free(v2);
}

uint64_t IntelligenceElement.Text.init(text:editable:textOptions:)@<X0>(__int128 *a1@<X2>, uint64_t *a2@<X3>, uint64_t *a3@<X8>)
{
  v39 = a3;
  v5 = _s4TextV7StorageVMa();
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v31 - v9;
  v11 = *a1;
  v37 = a1[1];
  v38 = v11;
  v13 = *(a1 + 4);
  v12 = *(a1 + 5);
  v14 = *(a1 + 24);
  v15 = a2[1];
  v17 = a2[2];
  v16 = a2[3];
  v34 = *a2;
  v35 = v17;
  v32 = v16;
  v36 = a2[4];
  v33 = *(a2 + 20);
  v18 = sub_1BBB831F8();
  MEMORY[0x1EEE9AC00](v18 - 8);
  sub_1BBB831E8();
  sub_1BBB83158();
  if (qword_1ED6BDCE8 != -1)
  {
    swift_once();
  }

  v19 = &v10[v5[5]];
  v20 = v37;
  *v19 = v38;
  *(v19 + 1) = v20;
  *(v19 + 4) = v13;
  *(v19 + 5) = v12;
  *(v19 + 24) = v14;
  v10[v5[6]] = 0;
  v10[v5[7]] = 0;
  v10[v5[8]] = 0;
  v10[v5[9]] = 1;
  v21 = &v10[v5[10]];
  v22 = xmmword_1ED6BDD00;
  *v21 = xmmword_1ED6BDCF0;
  *(v21 + 1) = v22;
  *(v21 + 26) = *(&xmmword_1ED6BDD00 + 10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7D2E0);
  v23 = swift_allocObject();
  v24 = *(*v23 + 88);
  result = sub_1BBB5889C(v10, v23 + v24);
  if ((v15 & 0xFF00) != 0x200)
  {
    v42 = v15 & 1;
    v41 = v32 & 1;
    v26 = (v32 >> 8) & 1;
    v40 = v33 & 1;
    v27 = (v33 >> 8) & 1;
    swift_beginAccess();
    sub_1BBB587E4(v23 + v24, v7);
    v28 = &v7[v5[10]];
    *v28 = v34;
    v28[8] = v42;
    v28[9] = BYTE1(v15) & 1;
    *(v28 + 2) = v35;
    v28[24] = v41;
    v28[25] = v26;
    *(v28 + 4) = v36;
    v28[40] = v40;
    v28[41] = v27;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v29 = *(*v23 + 88);
      swift_beginAccess();
      sub_1BBB58900(v7, v23 + v29);
      result = swift_endAccess();
    }

    else
    {
      v30 = swift_allocObject();
      sub_1BBB5889C(v7, v30 + *(*v30 + 88));

      v23 = v30;
    }
  }

  *v39 = v23;
  return result;
}

uint64_t IntelligenceElement.Text.init(text:editable:)@<X0>(__int128 *a1@<X2>, uint64_t *a2@<X8>)
{
  v4 = _s4TextV7StorageVMa();
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *a1;
  v18 = a1[1];
  v19 = v7;
  v8 = *(a1 + 4);
  v9 = *(a1 + 5);
  v10 = *(a1 + 24);
  v11 = sub_1BBB831F8();
  MEMORY[0x1EEE9AC00](v11 - 8);
  sub_1BBB831E8();
  sub_1BBB83158();
  if (qword_1ED6BDCE8 != -1)
  {
    swift_once();
  }

  v12 = &v6[v4[5]];
  v13 = v18;
  *v12 = v19;
  *(v12 + 1) = v13;
  *(v12 + 4) = v8;
  *(v12 + 5) = v9;
  *(v12 + 24) = v10;
  v6[v4[6]] = 0;
  v6[v4[7]] = 0;
  v6[v4[8]] = 0;
  v6[v4[9]] = 1;
  v14 = &v6[v4[10]];
  v15 = xmmword_1ED6BDD00;
  *v14 = xmmword_1ED6BDCF0;
  *(v14 + 1) = v15;
  *(v14 + 26) = *(&xmmword_1ED6BDD00 + 10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7D2E0);
  v16 = swift_allocObject();
  result = sub_1BBB5889C(v6, v16 + *(*v16 + 88));
  *a2 = v16;
  return result;
}

uint64_t IntelligenceElement.Text.init(attributedText:editable:)@<X0>(uint64_t a1@<X0>, __int128 *a2@<X1>, uint64_t *a3@<X8>)
{
  v32 = a3;
  v5 = _s4TextV7StorageVMa();
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v26[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = *a2;
  v30 = a2[1];
  v31 = v8;
  v9 = *(a2 + 4);
  v28 = *(a2 + 5);
  v29 = v9;
  v27 = *(a2 + 24);
  v10 = sub_1BBB83148();
  v11 = *(v10 - 8);
  v12 = v11[8];
  v13 = MEMORY[0x1EEE9AC00](v10);
  v14 = &v26[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = v11[2];
  v16 = v15(v14, a1, v10, v13);
  v17 = MEMORY[0x1EEE9AC00](v16);
  v15(v14, v14, v10, v17);
  swift_getKeyPath();
  sub_1BBA90AD0();
  sub_1BBA8BDFC(&unk_1EBC7B388, MEMORY[0x1EEE78058]);
  sub_1BBB83168();
  if (qword_1ED6BDCE8 != -1)
  {
    swift_once();
  }

  v33 = xmmword_1ED6BDCF0;
  v34[0] = xmmword_1ED6BDD00;
  *(v34 + 10) = *(&xmmword_1ED6BDD00 + 10);
  v18 = v11[1];
  v18(a1, v10);
  v18(v14, v10);
  v19 = &v7[v5[5]];
  v20 = v30;
  *v19 = v31;
  *(v19 + 1) = v20;
  v21 = v28;
  *(v19 + 4) = v29;
  *(v19 + 5) = v21;
  *(v19 + 24) = v27;
  v7[v5[6]] = 0;
  v7[v5[7]] = 0;
  v7[v5[8]] = 0;
  v7[v5[9]] = 1;
  v22 = &v7[v5[10]];
  v23 = v34[0];
  *v22 = v33;
  v22[1] = v23;
  *(v22 + 26) = *(v34 + 10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7D2E0);
  v24 = swift_allocObject();
  result = sub_1BBB5889C(v7, v24 + *(*v24 + 88));
  *v32 = v24;
  return result;
}

uint64_t sub_1BBB55CC0()
{
  sub_1BBB843D8();
  sub_1BBB83AC8();

  return sub_1BBB84438();
}

uint64_t sub_1BBB55DB4()
{
  sub_1BBB83AC8();
}

uint64_t sub_1BBB55E94()
{
  sub_1BBB843D8();
  sub_1BBB83AC8();

  return sub_1BBB84438();
}

uint64_t sub_1BBB55F84@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1BBB59478();
  *a1 = result;
  return result;
}

void sub_1BBB55FB4(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0x676E696B636162;
  v5 = 0xE900000000000074;
  v6 = 0x696D694C656E696CLL;
  v7 = 0xEB00000000646574;
  v8 = 0x61636E7572547369;
  if (v2 != 3)
  {
    v8 = 0xD000000000000013;
    v7 = 0x80000001BBB9AC70;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 0x656C626174696465;
    v3 = 0xE800000000000000;
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

uint64_t sub_1BBB56064@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1BBB59478();
  *a1 = result;
  return result;
}

uint64_t sub_1BBB5608C(uint64_t a1)
{
  v2 = sub_1BBA8DD24();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BBB560C8(uint64_t a1)
{
  v2 = sub_1BBA8DD24();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1BBB56110()
{
  sub_1BBB843D8();
  sub_1BBB83AC8();

  return sub_1BBB84438();
}

uint64_t sub_1BBB561F8()
{
  sub_1BBB83AC8();
}

uint64_t sub_1BBB562CC()
{
  sub_1BBB843D8();
  sub_1BBB83AC8();

  return sub_1BBB84438();
}

uint64_t sub_1BBB563B0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1BBB594C4();
  *a1 = result;
  return result;
}

void sub_1BBB563E0(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE500000000000000;
  v4 = 0x6C6562616CLL;
  v5 = 0xEB00000000657079;
  v6 = 0x54746E65746E6F63;
  v7 = 0xE800000000000000;
  v8 = 0x6572756365537369;
  if (v2 != 3)
  {
    v8 = 0x657375636F467369;
    v7 = 0xE900000000000064;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 0x74706D6F7270;
    v3 = 0xE600000000000000;
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

uint64_t sub_1BBB56484()
{
  v1 = *v0;
  v2 = 0x6C6562616CLL;
  v3 = 0x54746E65746E6F63;
  v4 = 0x6572756365537369;
  if (v1 != 3)
  {
    v4 = 0x657375636F467369;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x74706D6F7270;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1BBB56524@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1BBB594C4();
  *a1 = result;
  return result;
}

uint64_t sub_1BBB5654C(uint64_t a1)
{
  v2 = sub_1BBB58B40();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BBB56588(uint64_t a1)
{
  v2 = sub_1BBB58B40();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t IntelligenceElement.Text.Editable.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7D340);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v13 - v5;
  v7 = *(v1 + 16);
  v17 = *(v1 + 24);
  v18 = v7;
  v8 = *(v1 + 32);
  v15 = *(v1 + 40);
  v16 = v8;
  LODWORD(v8) = *(v1 + 48);
  v13 = *(v1 + 49);
  v14 = v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BBB58B40();
  sub_1BBB84478();
  v24 = 0;
  v9 = v19;
  sub_1BBB84218();
  if (v9)
  {
    return (*(v4 + 8))(v6, v3);
  }

  v10 = v13;
  v11 = v14;
  v23 = 1;
  sub_1BBB84218();
  v22 = 2;
  sub_1BBB84218();
  if (v11)
  {
    v20 = 3;
    sub_1BBB84258();
  }

  if (!v10)
  {
    return (*(v4 + 8))(v6, v3);
  }

  v21 = 4;
  sub_1BBB84258();
  return (*(v4 + 8))(v6, v3);
}

uint64_t IntelligenceElement.Text.Editable.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7D348);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v24 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BBB58B40();
  sub_1BBB84458();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    LOBYTE(v33[0]) = 0;
    v9 = sub_1BBB84138();
    v11 = v10;
    v36 = v9;
    LOBYTE(v33[0]) = 1;
    v12 = sub_1BBB84138();
    v14 = v13;
    v28 = v12;
    LOBYTE(v33[0]) = 2;
    v15 = sub_1BBB84138();
    v17 = v16;
    v27 = v15;
    LOBYTE(v33[0]) = 3;
    v26 = sub_1BBB84148();
    LOBYTE(v33[0]) = 4;
    v25 = sub_1BBB84148();
    v26 &= 1u;
    (*(v6 + 8))(v8, v5);
    v18 = v25;
    v25 &= 1u;
    v19 = v36;
    *&v29 = v36;
    *(&v29 + 1) = v11;
    v20 = v27;
    v21 = v28;
    *&v30 = v28;
    *(&v30 + 1) = v14;
    *&v31 = v27;
    *(&v31 + 1) = v17;
    LOBYTE(v32) = v26;
    HIBYTE(v32) = v18 & 1;
    v22 = v30;
    *a2 = v29;
    *(a2 + 16) = v22;
    *(a2 + 32) = v31;
    *(a2 + 48) = v32;
    sub_1BBB58A0C(&v29, v33);
    __swift_destroy_boxed_opaque_existential_1(a1);
    v33[0] = v19;
    v33[1] = v11;
    v33[2] = v21;
    v33[3] = v14;
    v33[4] = v20;
    v33[5] = v17;
    v34 = v26;
    v35 = v25;
    return sub_1BBB58B94(v33);
  }
}

uint64_t IntelligenceElement.Text.description.getter()
{
  v1 = *v0;
  v2 = sub_1BBB83148();
  v3 = *(v2 - 8);
  v4 = v3[8];
  MEMORY[0x1EEE9AC00](v2);
  v169 = (v4 + 15) & 0xFFFFFFFFFFFFFFF0;
  v5 = v160 - v169;
  v6 = *(*v1 + 88);
  v168 = v1;
  v7 = &v1[v6];
  swift_beginAccess();
  v9 = v3 + 2;
  v8 = v3[2];
  v8(v5, v7, v2);
  v10 = sub_1BBB82FF8();
  v166 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v170 = v11;
  v167 = (v11 + 15) & 0xFFFFFFFFFFFFFFF0;
  sub_1BBB82FD8();
  v13 = v3[1];
  v12 = v3 + 1;
  v177 = v13;
  v13(v5, v2);
  sub_1BBA8BDFC(&qword_1EBC7AE88, MEMORY[0x1EEE77F58]);
  v171 = v10;
  v14 = sub_1BBB83B68();
  v16 = v15;

  v18 = HIBYTE(v16) & 0xF;
  if ((v16 & 0x2000000000000000) == 0)
  {
    v18 = v14 & 0xFFFFFFFFFFFFLL;
  }

  v173 = v9;
  v174 = v4;
  v172 = v8;
  v178 = v7;
  v176 = v2;
  if (v18)
  {
    strcpy(v181, "text: ");
    v181[1] = 0xE700000000000000;
    v19 = MEMORY[0x1EEE9AC00](v17);
    v20 = v160 - v169;
    v21 = (v8)(v160 - v169, v7, v2, v19);
    MEMORY[0x1EEE9AC00](v21);
    sub_1BBB82FD8();
    v177(v20, v2);
    v22 = sub_1BBB83B68();
    MEMORY[0x1BFB16150](v22);

    MEMORY[0x1BFB16150](34, 0xE100000000000000);
    v23 = v181[0];
    v24 = v181[1];
    v25 = sub_1BBA86A94(0, 1, 1, MEMORY[0x1E69E7CC0]);
    v27 = *(v25 + 2);
    v26 = *(v25 + 3);
    if (v27 >= v26 >> 1)
    {
      v25 = sub_1BBA86A94((v26 > 1), v27 + 1, 1, v25);
    }

    *(v25 + 2) = v27 + 1;
    v28 = &v25[16 * v27];
    *(v28 + 4) = v23;
    *(v28 + 5) = v24;
    v29 = v178;
  }

  else
  {
    v25 = MEMORY[0x1E69E7CC0];
    v29 = v7;
  }

  v30 = _s4TextV7StorageVMa();
  if (*(v29 + *(v30 + 24)))
  {
    v181[0] = 0;
    v181[1] = 0xE000000000000000;
    MEMORY[0x1BFB16150](0x696D694C656E696CLL, 0xEB00000000203A74);
    LOBYTE(v180) = *(v29 + *(v30 + 24));
    sub_1BBB84098();
    v31 = v181[0];
    v32 = v181[1];
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v25 = sub_1BBA86A94(0, *(v25 + 2) + 1, 1, v25);
    }

    v34 = *(v25 + 2);
    v33 = *(v25 + 3);
    if (v34 >= v33 >> 1)
    {
      v25 = sub_1BBA86A94((v33 > 1), v34 + 1, 1, v25);
    }

    *(v25 + 2) = v34 + 1;
    v35 = &v25[16 * v34];
    *(v35 + 4) = v31;
    *(v35 + 5) = v32;
  }

  v36 = *(v29 + *(v30 + 28)) == 1;
  v167 = v30;
  v175 = v12;
  if (v36)
  {
    strcpy(v181, "isTruncated: ");
    HIWORD(v181[1]) = -4864;
    MEMORY[0x1BFB16150](1702195828, 0xE400000000000000);
    v37 = v181[0];
    v38 = v181[1];
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v25 = sub_1BBA86A94(0, *(v25 + 2) + 1, 1, v25);
    }

    v40 = *(v25 + 2);
    v39 = *(v25 + 3);
    if (v40 >= v39 >> 1)
    {
      v25 = sub_1BBA86A94((v39 > 1), v40 + 1, 1, v25);
    }

    *(v25 + 2) = v40 + 1;
    v169 = v25;
    v41 = &v25[16 * v40];
    *(v41 + 4) = v37;
    *(v41 + 5) = v38;
  }

  else
  {
    v169 = v25;
  }

  v42 = v174;
  v43 = v172;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7D2C0);
  v165 = v160;
  v164 = *(v44 - 8);
  MEMORY[0x1EEE9AC00](v44);
  v46 = v160 - v45;
  v163 = v160;
  v48 = MEMORY[0x1EEE9AC00](v47);
  v49 = v160 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = v176;
  v43(v49, v178, v176, v48);
  v161 = sub_1BBB830D8();
  v162 = v160;
  v51 = *(v161 - 1);
  MEMORY[0x1EEE9AC00](v161);
  v53 = v160 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BBB830F8();
  v177(v49, v50);
  KeyPath = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](KeyPath);
  v160[-2] = v55;
  swift_getKeyPath();
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7D2C8);
  v57 = *(v56 - 8);
  MEMORY[0x1EEE9AC00](v56);
  v59 = v160 - v58;
  sub_1BBB5873C();
  sub_1BBB830E8();

  (*(v51 + 8))(v53, v161);
  sub_1BBB83088();
  (*(v57 + 8))(v59, v56);
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7D2D0);
  v163 = v160;
  MEMORY[0x1EEE9AC00](v60 - 8);
  v62 = (v160 - v61);
  ++v166;
  v63 = 0.0;
  v64 = 0.0;
  while (1)
  {
    sub_1BBB83098();
    v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7D2D8);
    if ((*(*(v65 - 8) + 48))(v62, 1, v65) == 1)
    {
      break;
    }

    v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7B648);
    MEMORY[0x1EEE9AC00](v66);
    v68 = v160 - v67;
    v69 = *v62;
    v70 = *(v62 + 8);
    sub_1BBAA6758(v62 + *(v65 + 48), v160 - v67, &qword_1EBC7B648);
    if (v70 & 1) != 0 || (sub_1BBB83118(), sub_1BBA8BDFC(&qword_1EBC7AE68, MEMORY[0x1EEE78028]), v71 = sub_1BBB83968(), (v71))
    {
      sub_1BBA8BCC4(v68, &qword_1EBC7B648);
    }

    else
    {
      v162 = v160;
      v72 = MEMORY[0x1EEE9AC00](v71);
      v74 = v160 - ((v73 + 15) & 0xFFFFFFFFFFFFFFF0);
      v75 = v176;
      v76 = (v172)(v74, v178, v176, v72);
      v161 = v160;
      MEMORY[0x1EEE9AC00](v76);
      v78 = v160 - ((v77 + 15) & 0xFFFFFFFFFFFFFFF0);
      sub_1BBB82FD8();
      v177(v74, v75);
      v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7D290);
      v160[1] = v160;
      v160[0] = v79 - 8;
      MEMORY[0x1EEE9AC00](v79 - 8);
      v81 = v160 - v80;
      sub_1BBB83008();
      (*v166)(v78, v171);
      v160[0] = *(v160[0] + 48);
      sub_1BBA8BDFC(&qword_1EBC7AE80, MEMORY[0x1EEE77F58]);
      v82 = sub_1BBB83CE8();
      sub_1BBA8BCC4(v81, &qword_1EBC7D290);
      sub_1BBA8BCC4(v68, &qword_1EBC7B648);
      v63 = v63 + v69 * v82;
      v64 = v64 + v82;
    }
  }

  (*(v164 + 8))(v46, v44);
  if (v64 <= 0.0)
  {
    v89 = v169;
    v91 = v178;
    v92 = v168;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7BC00);
    v83 = swift_allocObject();
    v84 = MEMORY[0x1E69E63B0];
    *(v83 + 16) = xmmword_1BBB85CE0;
    v85 = MEMORY[0x1E69E6438];
    *(v83 + 56) = v84;
    *(v83 + 64) = v85;
    *(v83 + 32) = v63 / v64;
    v86 = sub_1BBB83A28();
    v88 = v87;
    v89 = v169;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v91 = v178;
    v92 = v168;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v89 = sub_1BBA86A94(0, *(v89 + 2) + 1, 1, v89);
    }

    v94 = *(v89 + 2);
    v93 = *(v89 + 3);
    if (v94 >= v93 >> 1)
    {
      v89 = sub_1BBA86A94((v93 > 1), v94 + 1, 1, v89);
    }

    *(v89 + 2) = v94 + 1;
    v95 = &v89[16 * v94];
    *(v95 + 4) = v86;
    *(v95 + 5) = v88;
  }

  v181[0] = v92;
  if (IntelligenceElement.Text.hasLinks.getter())
  {
    v181[0] = 0;
    v181[1] = 0xE000000000000000;
    sub_1BBB84028();

    strcpy(v181, "contains ");
    WORD1(v181[1]) = 0;
    HIDWORD(v181[1]) = -385875968;
    v180 = v92;
    v96 = IntelligenceElement.Text.links.getter()[2];

    v179 = v96;
    v97 = sub_1BBB842D8();
    MEMORY[0x1BFB16150](v97);

    MEMORY[0x1BFB16150](0x6B6E696C20, 0xE500000000000000);
    v180 = v92;
    v98 = IntelligenceElement.Text.links.getter()[2];

    if (v98 == 1)
    {
      v99 = 0;
    }

    else
    {
      v99 = 115;
    }

    if (v98 == 1)
    {
      v100 = 0xE000000000000000;
    }

    else
    {
      v100 = 0xE100000000000000;
    }

    MEMORY[0x1BFB16150](v99, v100);

    v101 = v181[0];
    v102 = v181[1];
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v89 = sub_1BBA86A94(0, *(v89 + 2) + 1, 1, v89);
    }

    v104 = *(v89 + 2);
    v103 = *(v89 + 3);
    if (v104 >= v103 >> 1)
    {
      v89 = sub_1BBA86A94((v103 > 1), v104 + 1, 1, v89);
    }

    *(v89 + 2) = v104 + 1;
    v105 = &v89[16 * v104];
    *(v105 + 4) = v101;
    *(v105 + 5) = v102;
  }

  v181[0] = v92;
  if (IntelligenceElement.Text.hasSelections.getter())
  {
    strcpy(v181, "selections: ");
    BYTE5(v181[1]) = 0;
    HIWORD(v181[1]) = -5120;
    v180 = v92;
    IntelligenceElement.Text.selections.getter();
    v106 = MEMORY[0x1BFB16230]();
    v108 = v107;

    MEMORY[0x1BFB16150](v106, v108);

    v109 = v181[0];
    v110 = v181[1];
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v89 = sub_1BBA86A94(0, *(v89 + 2) + 1, 1, v89);
    }

    v112 = *(v89 + 2);
    v111 = *(v89 + 3);
    v113 = v167;
    if (v112 >= v111 >> 1)
    {
      v89 = sub_1BBA86A94((v111 > 1), v112 + 1, 1, v89);
    }

    *(v89 + 2) = v112 + 1;
    v114 = &v89[16 * v112];
    *(v114 + 4) = v109;
    *(v114 + 5) = v110;
  }

  else
  {
    v113 = v167;
  }

  v115 = v91 + *(v113 + 20);
  v116 = *(v115 + 8);
  if (v116 == 1)
  {
    v117 = 0xE400000000000000;
    v118 = 1954047316;
    goto LABEL_98;
  }

  v119 = *v115;
  v120 = *(v115 + 16);
  v121 = *(v115 + 24);
  v122 = *(v115 + 32);
  v123 = *(v115 + 40);
  v124 = *(v115 + 48);
  v178 = *v115;
  if (v116)
  {
    v125 = HIBYTE(v116) & 0xF;
    if ((v116 & 0x2000000000000000) == 0)
    {
      v125 = v119 & 0xFFFFFFFFFFFFLL;
    }

    if (v125)
    {
      strcpy(v181, "label: ");
      BYTE1(v181[1]) = 0;
      WORD1(v181[1]) = 0;
      HIDWORD(v181[1]) = -402653184;
      v177 = v120;
      sub_1BBB58790(v119, v116);

      MEMORY[0x1BFB16150](v119, v116);

      MEMORY[0x1BFB16150](34, 0xE100000000000000);
      v126 = v89;
      v127 = v181[0];
      v128 = v181[1];
      v129 = v126;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v129 = sub_1BBA86A94(0, *(v129 + 2) + 1, 1, v129);
      }

      v131 = *(v129 + 2);
      v130 = *(v129 + 3);
      if (v131 >= v130 >> 1)
      {
        v129 = sub_1BBA86A94((v130 > 1), v131 + 1, 1, v129);
      }

      *(v129 + 2) = v131 + 1;
      v132 = &v129[16 * v131];
      *(v132 + 4) = v127;
      *(v132 + 5) = v128;
      v89 = v129;
      v120 = v177;
      v119 = v178;
      if (!v121)
      {
        goto LABEL_76;
      }

      goto LABEL_68;
    }
  }

  if (v121)
  {
LABEL_68:
    v133 = HIBYTE(v121) & 0xF;
    if ((v121 & 0x2000000000000000) == 0)
    {
      v133 = v120 & 0xFFFFFFFFFFFFLL;
    }

    if (v133)
    {
      v177 = v122;
      strcpy(v181, "prompt: ");
      WORD1(v181[1]) = 0;
      HIDWORD(v181[1]) = -385875968;

      v134 = v120;
      MEMORY[0x1BFB16150](v120, v121);

      MEMORY[0x1BFB16150](34, 0xE100000000000000);
      v135 = v89;
      v136 = v181[0];
      v137 = v181[1];
      v138 = v135;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v138 = sub_1BBA86A94(0, *(v138 + 2) + 1, 1, v138);
      }

      v140 = *(v138 + 2);
      v139 = *(v138 + 3);
      if (v140 >= v139 >> 1)
      {
        v138 = sub_1BBA86A94((v139 > 1), v140 + 1, 1, v138);
      }

      *(v138 + 2) = v140 + 1;
      v141 = &v138[16 * v140];
      *(v141 + 4) = v136;
      *(v141 + 5) = v137;
      v89 = v138;
      v120 = v134;
      v122 = v177;
      v119 = v178;
    }
  }

LABEL_76:
  if (v123)
  {
    v142 = HIBYTE(v123) & 0xF;
    if ((v123 & 0x2000000000000000) == 0)
    {
      v142 = v122 & 0xFFFFFFFFFFFFLL;
    }

    if (v142)
    {
      v177 = v120;
      v181[0] = 0;
      v181[1] = 0xE000000000000000;

      sub_1BBB84028();

      strcpy(v181, "contentType: ");
      HIBYTE(v181[1]) = -18;
      MEMORY[0x1BFB16150](v122, v123);

      MEMORY[0x1BFB16150](34, 0xE100000000000000);
      v143 = v89;
      v144 = v181[0];
      v145 = v181[1];
      v146 = v143;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v146 = sub_1BBA86A94(0, *(v146 + 2) + 1, 1, v146);
      }

      v148 = *(v146 + 2);
      v147 = *(v146 + 3);
      if (v148 >= v147 >> 1)
      {
        v146 = sub_1BBA86A94((v147 > 1), v148 + 1, 1, v146);
      }

      *(v146 + 2) = v148 + 1;
      v149 = &v146[16 * v148];
      *(v149 + 4) = v144;
      *(v149 + 5) = v145;
      v89 = v146;
      v119 = v178;
    }
  }

  if (v124)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v89 = sub_1BBA86A94(0, *(v89 + 2) + 1, 1, v89);
    }

    v151 = *(v89 + 2);
    v150 = *(v89 + 3);
    if (v151 >= v150 >> 1)
    {
      v89 = sub_1BBA86A94((v150 > 1), v151 + 1, 1, v89);
    }

    *(v89 + 2) = v151 + 1;
    v152 = &v89[16 * v151];
    strcpy(v152 + 32, "isSecure: true");
    v152[47] = -18;
  }

  v117 = 0xEC00000074786554;
  sub_1BBB58848(v119, v116);
  if ((v124 & 0x100) != 0)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v89 = sub_1BBA86A94(0, *(v89 + 2) + 1, 1, v89);
    }

    v154 = *(v89 + 2);
    v153 = *(v89 + 3);
    if (v154 >= v153 >> 1)
    {
      v89 = sub_1BBA86A94((v153 > 1), v154 + 1, 1, v89);
    }

    *(v89 + 2) = v154 + 1;
    v155 = &v89[16 * v154];
    *(v155 + 4) = 0x657375636F467369;
    *(v155 + 5) = 0xEF65757274203A64;
  }

  v118 = 0x656C626174696445;
LABEL_98:
  v181[0] = v118;
  v181[1] = v117;
  MEMORY[0x1BFB16150](40, 0xE100000000000000);
  v180 = v89;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7B590);
  sub_1BBA86BA4();
  v156 = sub_1BBB83938();
  v158 = v157;

  MEMORY[0x1BFB16150](v156, v158);

  MEMORY[0x1BFB16150](41, 0xE100000000000000);
  return v181[0];
}

uint64_t _s21UIIntelligenceSupport19IntelligenceElementV4TextV8EditableV2eeoiySbAG_AGtFZ_0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v6 = *(a1 + 24);
  v5 = *(a1 + 32);
  v7 = *(a1 + 40);
  v8 = *(a1 + 48);
  v9 = *(a1 + 49);
  v10 = *(a2 + 8);
  v11 = *(a2 + 16);
  v13 = *(a2 + 24);
  v12 = *(a2 + 32);
  v14 = *(a2 + 40);
  v15 = *(a2 + 48);
  v16 = *(a2 + 49);
  if (v3)
  {
    if (!v10)
    {
      return 0;
    }

    if (*a1 != *a2 || v3 != v10)
    {
      v30 = *(a1 + 40);
      v31 = *(a2 + 40);
      v17 = *(a1 + 32);
      v18 = *(a2 + 48);
      v19 = *(a1 + 48);
      v20 = *(a2 + 49);
      v21 = *(a1 + 49);
      v22 = *(a2 + 32);
      v23 = sub_1BBB842F8();
      v12 = v22;
      v9 = v21;
      v16 = v20;
      v8 = v19;
      v15 = v18;
      v5 = v17;
      v7 = v30;
      v14 = v31;
      if ((v23 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v10)
  {
    return 0;
  }

  if (v6)
  {
    if (!v13)
    {
      return 0;
    }

    if (v4 != v11 || v6 != v13)
    {
      v24 = v9;
      v25 = v12;
      v26 = sub_1BBB842F8();
      v12 = v25;
      v9 = v24;
      if ((v26 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v13)
  {
    return 0;
  }

  if (!v7)
  {
    result = 0;
    if (!v14 && ((v8 ^ v15) & 1) == 0)
    {
      return v9 ^ v16 ^ 1u;
    }

    return result;
  }

  if (!v14)
  {
    return 0;
  }

  if (v5 == v12 && v7 == v14)
  {
    if (v8 != v15)
    {
      return 0;
    }

    return v9 ^ v16 ^ 1u;
  }

  v28 = v9;
  v29 = sub_1BBB842F8();
  result = 0;
  if (v29)
  {
    v9 = v28;
    if (((v8 ^ v15) & 1) == 0)
    {
      return v9 ^ v16 ^ 1u;
    }
  }

  return result;
}

BOOL _s21UIIntelligenceSupport19IntelligenceElementV4TextV2eeoiySbAE_AEtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = sub_1BBB83148();
  v5 = *(v4 - 8);
  v6 = v5[8];
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = v2 + *(*v2 + 88);
  swift_beginAccess();
  v9 = v5[2];
  v10 = v9(v7, v8, v4);
  MEMORY[0x1EEE9AC00](v10);
  v11 = v3 + *(*v3 + 88);
  swift_beginAccess();
  v9(v7, v11, v4);
  v12 = sub_1BBB83078();
  v13 = v5[1];
  v13(v7, v4);
  v13(v7, v4);
  if ((v12 & 1) == 0)
  {
    return 0;
  }

  v14 = _s4TextV7StorageVMa();
  v15 = *(v14 + 20);
  v17 = *(v8 + v15);
  v16 = *(v8 + v15 + 8);
  v19 = *(v8 + v15 + 16);
  v18 = *(v8 + v15 + 24);
  v21 = *(v8 + v15 + 32);
  v20 = *(v8 + v15 + 40);
  v22 = *(v8 + v15 + 48);
  v23 = v11 + v15;
  v25 = *v23;
  v24 = *(v23 + 8);
  v27 = *(v23 + 16);
  v26 = *(v23 + 24);
  v29 = *(v23 + 32);
  v28 = *(v23 + 40);
  v43 = v27;
  v44 = v28;
  v45 = *(v23 + 48);
  v46 = v26;
  v47 = v29;
  v42 = v25;
  if (v16 == 1)
  {
    v39 = 1;
    v40 = v14;
    v30 = v24;
    sub_1BBB58790(v17, 1);
    if (v30 == 1)
    {
      sub_1BBB58790(v42, 1);
      sub_1BBB58848(v17, 1);
      return *(v8 + *(v40 + 24)) == *(v11 + *(v40 + 24));
    }

    v41 = v30;
    sub_1BBB58790(v42, v30);
    v31 = v39;
    goto LABEL_8;
  }

  *&v58 = v17;
  *(&v58 + 1) = v16;
  *&v59 = v19;
  *(&v59 + 1) = v18;
  *&v60 = v21;
  *(&v60 + 1) = v20;
  v61 = v22;
  v41 = v24;
  if (v24 == 1)
  {
    v54 = v58;
    v55 = v59;
    v56 = v60;
    v57 = v61;
    v31 = v16;
    sub_1BBB58790(v17, v16);
    sub_1BBB58790(v25, 1);
    sub_1BBB58790(v17, v31);
    sub_1BBB58B94(&v54);
LABEL_8:
    sub_1BBB58848(v17, v31);
    sub_1BBB58848(v42, v41);
    return 0;
  }

  v40 = v14;
  *&v48 = v25;
  *(&v48 + 1) = v24;
  *&v49 = v27;
  *(&v49 + 1) = v26;
  *&v50 = v29;
  *(&v50 + 1) = v44;
  v51 = v45;
  v36 = v17;
  v37 = v20;
  v33 = v16;
  v38 = v22;
  LODWORD(v39) = _s21UIIntelligenceSupport19IntelligenceElementV4TextV8EditableV2eeoiySbAG_AGtFZ_0(&v58, &v48);
  v52[0] = v48;
  v52[1] = v49;
  v52[2] = v50;
  v53 = v51;
  v34 = v36;
  sub_1BBB58790(v36, v33);
  sub_1BBB58790(v42, v41);
  sub_1BBB58790(v34, v33);
  sub_1BBB58B94(v52);
  v54 = v58;
  v55 = v59;
  v56 = v60;
  v57 = v61;
  sub_1BBB58B94(&v54);
  sub_1BBB58848(v34, v33);
  if (v39)
  {
    return *(v8 + *(v40 + 24)) == *(v11 + *(v40 + 24));
  }

  return 0;
}

unint64_t sub_1BBB586AC()
{
  result = qword_1EBC7AE90;
  if (!qword_1EBC7AE90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7AE90);
  }

  return result;
}

unint64_t sub_1BBB5873C()
{
  result = qword_1EBC7B460;
  if (!qword_1EBC7B460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7B460);
  }

  return result;
}

uint64_t sub_1BBB58790(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

uint64_t sub_1BBB587E4(uint64_t a1, uint64_t a2)
{
  v4 = _s4TextV7StorageVMa();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BBB58848(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

uint64_t sub_1BBB5889C(uint64_t a1, uint64_t a2)
{
  v4 = _s4TextV7StorageVMa();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BBB58900(uint64_t a1, uint64_t a2)
{
  v4 = _s4TextV7StorageVMa();
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_1BBB58964()
{
  result = qword_1EBC7B260;
  if (!qword_1EBC7B260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7B260);
  }

  return result;
}

unint64_t sub_1BBB589B8()
{
  result = qword_1EBC7D308;
  if (!qword_1EBC7D308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7D308);
  }

  return result;
}

unint64_t sub_1BBB58A44()
{
  result = qword_1EBC7AD08;
  if (!qword_1EBC7AD08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7AD08);
  }

  return result;
}

unint64_t sub_1BBB58A98()
{
  result = qword_1EBC7ACF8;
  if (!qword_1EBC7ACF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7ACF8);
  }

  return result;
}

unint64_t sub_1BBB58AEC()
{
  result = qword_1EBC7AD00;
  if (!qword_1EBC7AD00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7AD00);
  }

  return result;
}

unint64_t sub_1BBB58B40()
{
  result = qword_1EBC7AD20;
  if (!qword_1EBC7AD20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7AD20);
  }

  return result;
}

unint64_t sub_1BBB58BC8()
{
  result = qword_1EBC7D350;
  if (!qword_1EBC7D350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7D350);
  }

  return result;
}

__n128 __swift_memcpy50_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

void sub_1BBB58D30()
{
  sub_1BBB83148();
  if (v0 <= 0x3F)
  {
    sub_1BBB58DD8();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1BBB58DD8()
{
  if (!qword_1EBC7B410)
  {
    v0 = sub_1BBB83E98();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBC7B410);
    }
  }
}

unint64_t sub_1BBB58E2C()
{
  result = qword_1EBC7D358;
  if (!qword_1EBC7D358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7D358);
  }

  return result;
}

unint64_t sub_1BBB58E84()
{
  result = qword_1EBC7D360;
  if (!qword_1EBC7D360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7D360);
  }

  return result;
}

unint64_t sub_1BBB58EDC()
{
  result = qword_1EBC7D368;
  if (!qword_1EBC7D368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7D368);
  }

  return result;
}

unint64_t sub_1BBB58F34()
{
  result = qword_1EBC7AD10;
  if (!qword_1EBC7AD10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7AD10);
  }

  return result;
}

unint64_t sub_1BBB58F8C()
{
  result = qword_1EBC7AD18;
  if (!qword_1EBC7AD18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7AD18);
  }

  return result;
}

unint64_t sub_1BBB58FE4()
{
  result = qword_1EBC7B428;
  if (!qword_1EBC7B428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7B428);
  }

  return result;
}

unint64_t sub_1BBB5903C()
{
  result = qword_1EBC7B430;
  if (!qword_1EBC7B430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7B430);
  }

  return result;
}

unint64_t sub_1BBB59094()
{
  result = qword_1EBC7B268;
  if (!qword_1EBC7B268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7B268);
  }

  return result;
}

unint64_t sub_1BBB590EC()
{
  result = qword_1EBC7B270;
  if (!qword_1EBC7B270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7B270);
  }

  return result;
}

unint64_t sub_1BBB59144()
{
  result = qword_1EBC7B290;
  if (!qword_1EBC7B290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7B290);
  }

  return result;
}

unint64_t sub_1BBB5919C()
{
  result = qword_1EBC7B298;
  if (!qword_1EBC7B298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7B298);
  }

  return result;
}

unint64_t sub_1BBB591F4()
{
  result = qword_1EBC7B250;
  if (!qword_1EBC7B250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7B250);
  }

  return result;
}

unint64_t sub_1BBB5924C()
{
  result = qword_1EBC7B258;
  if (!qword_1EBC7B258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7B258);
  }

  return result;
}

unint64_t sub_1BBB592A4()
{
  result = qword_1EBC7B278;
  if (!qword_1EBC7B278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7B278);
  }

  return result;
}

unint64_t sub_1BBB592FC()
{
  result = qword_1EBC7B280;
  if (!qword_1EBC7B280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7B280);
  }

  return result;
}

uint64_t sub_1BBB59350(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E776F6E6B6E75 && a2 == 0xE700000000000000;
  if (v4 || (sub_1BBB842F8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x694C656C676E6973 && a2 == 0xEA0000000000656ELL || (sub_1BBB842F8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x656C7069746C756DLL && a2 == 0xED000073656E694CLL)
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

uint64_t sub_1BBB59478()
{
  v0 = sub_1BBB84108();

  if (v0 >= 5)
  {
    return 5;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1BBB594C4()
{
  v0 = sub_1BBB84108();

  if (v0 >= 5)
  {
    return 5;
  }

  else
  {
    return v0;
  }
}

uint64_t IntelligenceAppIntentsPayload.init(data:debugDescription:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = result;
  a4[1] = a2;
  a4[2] = a3;
  return result;
}

uint64_t IntelligenceAppIntentsRequest.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1BBB838D8();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = 0;
  sub_1BBB83888();
  v6 = sub_1BBB838A8();
  result = (*(v3 + 8))(v5, v2);
  v8 = v10;
  *a1 = v6;
  *(a1 + 8) = 1;
  *(a1 + 9) = v8;
  return result;
}

uint64_t sub_1BBB59660(uint64_t a1, uint64_t *a2)
{
  v4 = sub_1BBB838D8();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v8, a1, v4, v6);
  v9 = sub_1BBB838A8();
  result = (*(v5 + 8))(v8, v4);
  *a2 = v9;
  return result;
}

uint64_t IntelligenceAppIntentsRequest.deadline.setter(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1BBB838A8();
  v5 = sub_1BBB838D8();
  result = (*(*(v5 - 8) + 8))(a1, v5);
  *v2 = v4;
  return result;
}

void (*IntelligenceAppIntentsRequest.deadline.modify(void *a1))(uint64_t ***a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x28uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = sub_1BBB838D8();
  v5[1] = v6;
  v7 = *(v6 - 8);
  v5[2] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[3] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[3] = malloc(*(v7 + 64));
    v9 = malloc(v8);
  }

  v5[4] = v9;
  sub_1BBB83898();
  return sub_1BBB598D4;
}

void sub_1BBB598D4(uint64_t ***a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[3];
  v4 = (*a1)[4];
  v5 = (*a1)[1];
  v6 = (*a1)[2];
  v7 = **a1;
  if (a2)
  {
    (v6[2])((*a1)[3], v4, v5);
    v8 = sub_1BBB838A8();
    v9 = v6[1];
    v9(v3, v5);
    *v7 = v8;
    v9(v4, v5);
  }

  else
  {
    v10 = sub_1BBB838A8();
    (v6[1])(v4, v5);
    *v7 = v10;
  }

  free(v4);
  free(v3);

  free(v2);
}

uint64_t sub_1BBB599DC(uint64_t a1)
{
  v2 = sub_1BBA95F6C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BBB59A18(uint64_t a1)
{
  v2 = sub_1BBA95F6C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1BBB59A54(uint64_t a1)
{
  v2 = sub_1BBB5DC4C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BBB59A90(uint64_t a1)
{
  v2 = sub_1BBB5DC4C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1BBB59ACC(uint64_t a1)
{
  v2 = sub_1BBA96104();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BBB59B08(uint64_t a1)
{
  v2 = sub_1BBA96104();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1BBB59B44(uint64_t a1)
{
  v2 = sub_1BBB5DCA0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BBB59B80(uint64_t a1)
{
  v2 = sub_1BBB5DCA0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t IntelligenceAppIntentsRequest.DisplayRepresentationOption.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7D388);
  v25 = *(v3 - 8);
  v26 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v24 = &v18 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7D390);
  v22 = *(v5 - 8);
  v23 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v21 = &v18 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7D398);
  v19 = *(v7 - 8);
  v20 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v18 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7D3A0);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v18 - v12;
  v14 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BBA95F6C();
  sub_1BBB84478();
  if (v14)
  {
    if (v14 == 1)
    {
      v28 = 1;
      sub_1BBB5DCA0();
      v9 = v21;
      sub_1BBB84208();
      v16 = v22;
      v15 = v23;
    }

    else
    {
      v29 = 2;
      sub_1BBB5DC4C();
      v9 = v24;
      sub_1BBB84208();
      v16 = v25;
      v15 = v26;
    }
  }

  else
  {
    v27 = 0;
    sub_1BBA96104();
    sub_1BBB84208();
    v16 = v19;
    v15 = v20;
  }

  (*(v16 + 8))(v9, v15);
  return (*(v11 + 8))(v13, v10);
}

uint64_t IntelligenceAppIntentsRequest.DisplayRepresentationOption.hashValue.getter()
{
  v1 = *v0;
  sub_1BBB843D8();
  MEMORY[0x1BFB16A50](v1);
  return sub_1BBB84438();
}

unint64_t IntelligenceAppIntentsRequest.description.getter()
{
  v1 = *(v0 + 9);
  if (*(v0 + 8) == 1)
  {
    v2 = MEMORY[0x1E69E7CC0];
    if (!*(v0 + 9))
    {
      goto LABEL_12;
    }

    goto LABEL_7;
  }

  sub_1BBB84028();
  MEMORY[0x1BFB16150](0xD000000000000018, 0x80000001BBB9D110);
  sub_1BBB84098();
  v2 = sub_1BBA86A94(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v4 = *(v2 + 2);
  v3 = *(v2 + 3);
  if (v4 >= v3 >> 1)
  {
    v2 = sub_1BBA86A94((v3 > 1), v4 + 1, 1, v2);
  }

  *(v2 + 2) = v4 + 1;
  v5 = &v2[16 * v4];
  *(v5 + 4) = 0;
  *(v5 + 5) = 0xE000000000000000;
  if (v1)
  {
LABEL_7:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v2 = sub_1BBA86A94(0, *(v2 + 2) + 1, 1, v2);
    }

    v7 = *(v2 + 2);
    v6 = *(v2 + 3);
    if (v7 >= v6 >> 1)
    {
      v2 = sub_1BBA86A94((v6 > 1), v7 + 1, 1, v2);
    }

    *(v2 + 2) = v7 + 1;
    v8 = &v2[16 * v7];
    *(v8 + 4) = 0xD00000000000001DLL;
    *(v8 + 5) = 0x80000001BBB9D150;
  }

LABEL_12:
  sub_1BBB84028();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7B590);
  sub_1BBA86BA4();
  v9 = sub_1BBB83938();
  v11 = v10;

  MEMORY[0x1BFB16150](v9, v11);

  MEMORY[0x1BFB16150](41, 0xE100000000000000);
  return 0xD000000000000012;
}

uint64_t IntelligenceAppIntentsRequest.hash(into:)()
{
  v1 = *(v0 + 8);
  MEMORY[0x1BFB16A80](*v0);
  MEMORY[0x1BFB16A50](v1);
  return sub_1BBB84408();
}

uint64_t IntelligenceAppIntentsRequest.hashValue.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  sub_1BBB843D8();
  MEMORY[0x1BFB16A80](v1);
  MEMORY[0x1BFB16A50](v2);
  sub_1BBB84408();
  return sub_1BBB84438();
}

uint64_t sub_1BBB5A358()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  sub_1BBB843D8();
  MEMORY[0x1BFB16A80](v1);
  MEMORY[0x1BFB16A50](v2);
  sub_1BBB84408();
  return sub_1BBB84438();
}

uint64_t sub_1BBB5A3C8()
{
  v1 = *(v0 + 8);
  MEMORY[0x1BFB16A80](*v0);
  MEMORY[0x1BFB16A50](v1);
  return sub_1BBB84408();
}

uint64_t sub_1BBB5A414()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  sub_1BBB843D8();
  MEMORY[0x1BFB16A80](v1);
  MEMORY[0x1BFB16A50](v2);
  sub_1BBB84408();
  return sub_1BBB84438();
}

uint64_t sub_1BBB5A4C0(_BYTE *a1, _BYTE *a2)
{
  v2 = 0xD000000000000016;
  v3 = *a1;
  v4 = 0x80000001BBB9ACB0;
  if (v3 == 1)
  {
    v5 = 0xD000000000000016;
  }

  else
  {
    v5 = 0xD000000000000017;
  }

  if (v3 == 1)
  {
    v6 = 0x80000001BBB9ACB0;
  }

  else
  {
    v6 = 0x80000001BBB9ACD0;
  }

  if (*a1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x656E696C64616564;
  }

  if (v3)
  {
    v8 = v6;
  }

  else
  {
    v8 = 0xE800000000000000;
  }

  if (*a2 != 1)
  {
    v2 = 0xD000000000000017;
    v4 = 0x80000001BBB9ACD0;
  }

  if (*a2)
  {
    v9 = v2;
  }

  else
  {
    v9 = 0x656E696C64616564;
  }

  if (*a2)
  {
    v10 = v4;
  }

  else
  {
    v10 = 0xE800000000000000;
  }

  if (v7 == v9 && v8 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1BBB842F8();
  }

  return v11 & 1;
}

uint64_t sub_1BBB5A59C()
{
  sub_1BBB843D8();
  sub_1BBB83AC8();

  return sub_1BBB84438();
}

uint64_t sub_1BBB5A644()
{
  sub_1BBB83AC8();
}

uint64_t sub_1BBB5A6D8()
{
  sub_1BBB843D8();
  sub_1BBB83AC8();

  return sub_1BBB84438();
}

uint64_t sub_1BBB5A77C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1BBB5DE4C();
  *a1 = result;
  return result;
}

void sub_1BBB5A7AC(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE800000000000000;
  v4 = 0xD000000000000016;
  v5 = 0x80000001BBB9ACB0;
  if (v2 != 1)
  {
    v4 = 0xD000000000000017;
    v5 = 0x80000001BBB9ACD0;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v4;
  }

  else
  {
    v7 = 0x656E696C64616564;
  }

  if (!v6)
  {
    v3 = v5;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_1BBB5A810@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1BBB5DE4C();
  *a1 = result;
  return result;
}

uint64_t sub_1BBB5A838(uint64_t a1)
{
  v2 = sub_1BBA91F14();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BBB5A874(uint64_t a1)
{
  v2 = sub_1BBA91F14();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t IntelligenceAppIntentsPayload.data.getter()
{
  v1 = *v0;
  sub_1BBAE58D8(*v0, *(v0 + 8));
  return v1;
}

uint64_t IntelligenceAppIntentsPayload.data.setter(uint64_t a1, uint64_t a2)
{
  result = sub_1BBA885E8(*v2, *(v2 + 8));
  *v2 = a1;
  *(v2 + 8) = a2;
  return result;
}

uint64_t IntelligenceAppIntentsPayload.debugDescription.setter(uint64_t a1)
{

  *(v1 + 16) = a1;
  return result;
}

uint64_t static IntelligenceAppIntentsPayload.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[2];
  v3 = a2[2];
  if ((sub_1BBB5D6B0(*a1, a1[1], *a2, a2[1]) & 1) == 0)
  {
    return 0;
  }

  return sub_1BBAFF548(v2, v3);
}

uint64_t sub_1BBB5A9F4(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[2];
  v3 = a2[2];
  if ((sub_1BBB5D6B0(*a1, a1[1], *a2, a2[1]) & 1) == 0)
  {
    return 0;
  }

  return sub_1BBAFF548(v2, v3);
}

uint64_t sub_1BBB5AA58(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0xD000000000000010;
  }

  else
  {
    v3 = 1635017060;
  }

  if (v2)
  {
    v4 = 0xE400000000000000;
  }

  else
  {
    v4 = 0x80000001BBB9ACF0;
  }

  if (*a2)
  {
    v5 = 0xD000000000000010;
  }

  else
  {
    v5 = 1635017060;
  }

  if (*a2)
  {
    v6 = 0x80000001BBB9ACF0;
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
    v8 = sub_1BBB842F8();
  }

  return v8 & 1;
}

uint64_t sub_1BBB5AAFC()
{
  sub_1BBB843D8();
  sub_1BBB83AC8();

  return sub_1BBB84438();
}

uint64_t sub_1BBB5AB7C()
{
  sub_1BBB83AC8();
}

uint64_t sub_1BBB5ABE8()
{
  sub_1BBB843D8();
  sub_1BBB83AC8();

  return sub_1BBB84438();
}

uint64_t sub_1BBB5AC64@<X0>(char *a1@<X8>)
{
  v2 = sub_1BBB84108();

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

void sub_1BBB5ACC4(unint64_t *a1@<X8>)
{
  v2 = 0x80000001BBB9ACF0;
  v3 = 1635017060;
  if (*v1)
  {
    v3 = 0xD000000000000010;
  }

  else
  {
    v2 = 0xE400000000000000;
  }

  *a1 = v3;
  a1[1] = v2;
}

uint64_t sub_1BBB5AD00()
{
  if (*v0)
  {
    return 0xD000000000000010;
  }

  else
  {
    return 1635017060;
  }
}

uint64_t sub_1BBB5AD38@<X0>(char *a1@<X8>)
{
  v2 = sub_1BBB84108();

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

uint64_t sub_1BBB5AD9C(uint64_t a1)
{
  v2 = sub_1BBB5DD48();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BBB5ADD8(uint64_t a1)
{
  v2 = sub_1BBB5DD48();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t IntelligenceAppIntentsPayload.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7D3E8);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v15 - v6;
  v8 = *v1;
  v9 = v1[1];
  v16 = v1[2];
  v10 = a1[3];
  v11 = a1;
  v13 = v12;
  __swift_project_boxed_opaque_existential_1(v11, v10);
  sub_1BBAE58D8(v8, v9);
  sub_1BBB5DD48();
  sub_1BBB84478();
  v17 = v8;
  v18 = v9;
  v19 = 0;
  sub_1BBA8845C();
  sub_1BBB84288();
  sub_1BBA885E8(v17, v18);
  if (!v2 && *(v16 + 16))
  {
    v17 = v16;
    v19 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7B590);
    sub_1BBAAE144(&qword_1ED6BDA78);
    sub_1BBB84288();
  }

  return (*(v5 + 8))(v7, v13);
}

uint64_t IntelligenceAppIntentsPayload.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7D3F0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v13 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BBB5DD48();
  sub_1BBB84458();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v14 = 0;
  sub_1BBAAB454();
  sub_1BBB841B8();
  v11 = v13[0];
  v10 = v13[1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7B590);
  v14 = 1;
  sub_1BBAAE144(&qword_1EBC7AB90);
  sub_1BBB84178();
  if (v13[0])
  {
    v12 = v13[0];
  }

  else
  {
    v12 = MEMORY[0x1E69E7CC0];
  }

  (*(v6 + 8))(v8, v5);
  *a2 = v11;
  a2[1] = v10;
  a2[2] = v12;
  sub_1BBAE58D8(v11, v10);

  __swift_destroy_boxed_opaque_existential_1(a1);
  sub_1BBA885E8(v11, v10);
}

uint64_t sub_1BBB5B2E8(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_1BBADAE68;

  return IntelligenceAppIntentsPayloadProviding.intelligenceFetchAppIntentsPayload(request:synchronousPayload:)(a1, a2, v10, a4, a5);
}

uint64_t IntelligenceAppIntentsPayloadProviding.intelligenceFetchAppIntentsPayload(request:synchronousPayload:)(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *a2;
  v10 = *(a2 + 8);
  v11 = *(a2 + 9);
  *(v5 + 32) = sub_1BBB83C58();
  *(v5 + 40) = sub_1BBB83C48();
  *(v5 + 16) = v9;
  *(v5 + 24) = v10;
  *(v5 + 25) = v11;
  v14 = (*(a5 + 40) + **(a5 + 40));
  v12 = swift_task_alloc();
  *(v5 + 48) = v12;
  *v12 = v5;
  v12[1] = sub_1BBB5B524;

  return v14(a1, v5 + 16, a4, a5);
}

uint64_t sub_1BBB5B524()
{
  *(*v1 + 56) = v0;

  v3 = sub_1BBB83C18();
  if (v0)
  {
    v4 = sub_1BBB5B6CC;
  }

  else
  {
    v4 = sub_1BBB5B668;
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, v2);
}

uint64_t sub_1BBB5B668()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1BBB5B6CC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1BBB5B730(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1BBADB440;

  return IntelligenceAppIntentsPayloadProviding.intelligenceFetchAppIntentsPayload(request:)(a1);
}

uint64_t IntelligenceAppIntentsPayloadProviding.intelligenceFetchAppIntentsPayload(request:)(uint64_t a1)
{
  *(v1 + 16) = a1;
  sub_1BBB83C58();
  *(v1 + 24) = sub_1BBB83C48();
  v3 = sub_1BBB83C18();

  return MEMORY[0x1EEE6DFA0](sub_1BBB5B860, v3, v2);
}

uint64_t sub_1BBB5B860()
{
  v1 = *(v0 + 16);

  *v1 = 0;
  v1[1] = 0;
  v1[2] = 0;
  v2 = *(v0 + 8);

  return v2();
}

uint64_t IntelligenceDataSourceItem.hash(into:)()
{
  v1 = type metadata accessor for IntelligenceDataSourceItem();
  MEMORY[0x1EEE9AC00](v1);
  v3 = (v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1BBB5DDE8(v0, v3);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      return MEMORY[0x1BFB16A50](*v3);
    }

    else
    {
      MEMORY[0x1BFB16A50](*v3);
      return sub_1BBA8BCC4((v3 + 1), &qword_1EBC7C230);
    }
  }

  else if (EnumCaseMultiPayload)
  {
    v11 = *(v3 + 1);
    v12[0] = *v3;
    v12[1] = v11;
    v13 = v3[4];
    sub_1BBB83FC8();
    return sub_1BBAE81B0(v12);
  }

  else
  {
    v5 = sub_1BBB83548();
    v6 = *(v5 - 8);
    v7 = MEMORY[0x1EEE9AC00](v5);
    v9 = v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v6 + 32))(v9, v3, v5, v7);
    sub_1BBAE8204();
    sub_1BBB83918();
    return (*(v6 + 8))(v9, v5);
  }
}

uint64_t IntelligenceDataSourceItem.hashValue.getter()
{
  sub_1BBB843D8();
  IntelligenceDataSourceItem.hash(into:)();
  return sub_1BBB84438();
}

uint64_t sub_1BBB5BAEC()
{
  sub_1BBB843D8();
  IntelligenceDataSourceItem.hash(into:)();
  return sub_1BBB84438();
}

uint64_t sub_1BBB5BB30()
{
  sub_1BBB843D8();
  IntelligenceDataSourceItem.hash(into:)();
  return sub_1BBB84438();
}

uint64_t IntelligenceDataSourceItemRequest.requestedItems.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t IntelligenceDataSourceItemRequest.visibleRequestedItems.setter(uint64_t a1)
{

  *(v1 + 8) = a1;
  return result;
}

UIIntelligenceSupport::IntelligenceDataSourceItemRequest __swiftcall IntelligenceDataSourceItemRequest.init(requestedItems:visibleRequestedItems:selectedRequestedItems:)(Swift::OpaquePointer requestedItems, Swift::OpaquePointer visibleRequestedItems, Swift::OpaquePointer selectedRequestedItems)
{
  v3->_rawValue = requestedItems._rawValue;
  v3[1]._rawValue = visibleRequestedItems._rawValue;
  v3[2]._rawValue = selectedRequestedItems._rawValue;
  result.selectedRequestedItems = selectedRequestedItems;
  result.visibleRequestedItems = visibleRequestedItems;
  result.requestedItems = requestedItems;
  return result;
}

uint64_t static IntelligenceDataSourceItemRequest.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = a1[2];
  v4 = a2[1];
  v5 = a2[2];
  if ((sub_1BBAFEEE8(*a1, *a2) & 1) == 0 || (sub_1BBAFEEE8(v2, v4) & 1) == 0)
  {
    return 0;
  }

  return sub_1BBAFEEE8(v3, v5);
}

uint64_t sub_1BBB5BCC4(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = a1[2];
  v4 = a2[1];
  v5 = a2[2];
  if ((sub_1BBAFEEE8(*a1, *a2) & 1) == 0 || (sub_1BBAFEEE8(v2, v4) & 1) == 0)
  {
    return 0;
  }

  return sub_1BBAFEEE8(v3, v5);
}

uint64_t sub_1BBB5BD64(__int128 *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_task_alloc();
  *(v5 + 16) = v10;
  *v10 = v5;
  v10[1] = sub_1BBB5BE34;

  return sub_1BBB5DE98(a1, a2, a4, a5);
}

uint64_t sub_1BBB5BE34(uint64_t a1)
{
  v7 = *v2;

  v5 = *(v7 + 8);
  if (!v1)
  {
    v4 = a1;
  }

  return v5(v4);
}

uint64_t IntelligenceAppIntentsDataSourcePayloadProviding.intelligenceFetchAppIntentsPayloads(for:request:synchronousPayloads:)(__int128 *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_task_alloc();
  *(v5 + 16) = v10;
  *v10 = v5;
  v10[1] = sub_1BBB5F42C;

  return sub_1BBB5DE98(a1, a2, a4, a5);
}

uint64_t sub_1BBB5C004()
{
  sub_1BBB83C58();
  *(v0 + 16) = sub_1BBB83C48();
  v2 = sub_1BBB83C18();

  return MEMORY[0x1EEE6DFA0](sub_1BBB5C098, v2, v1);
}

uint64_t sub_1BBB5C098()
{

  v1 = sub_1BBACB158(MEMORY[0x1E69E7CC0]);
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t IntelligenceAppIntentsDataSourcePayloadProviding.intelligenceFetchAppIntentsPayloads(for:request:)()
{
  sub_1BBB83C58();
  *(v0 + 16) = sub_1BBB83C48();
  v2 = sub_1BBB83C18();

  return MEMORY[0x1EEE6DFA0](sub_1BBB5F41C, v2, v1);
}

void IntelligenceAppIntentsDataSourceFetchContext.appIntentsRequest.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 9);
  *a1 = *v1;
  *(a1 + 8) = v2;
  *(a1 + 9) = v3;
}

uint64_t IntelligenceAppIntentsDataSourceFetchContext.appIntentsRequest.setter(uint64_t result)
{
  v2 = *(result + 8);
  v3 = *(result + 9);
  *v1 = *result;
  *(v1 + 8) = v2;
  *(v1 + 9) = v3;
  return result;
}

uint64_t IntelligenceAppIntentsDataSourceFetchContext.provider.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1(v1 + 16);

  return sub_1BBA97A80(a1, v1 + 16);
}

uint64_t IntelligenceAppIntentsDataSourceFetchContext.itemRequest.getter@<X0>(void *a1@<X8>)
{
  v2 = v1[7];
  v3 = v1[8];
  v4 = v1[9];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
}

__n128 IntelligenceAppIntentsDataSourceFetchContext.itemRequest.setter(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];

  result = *a1;
  *(v1 + 56) = *a1;
  *(v1 + 72) = v3;
  return result;
}

uint64_t IntelligenceAppIntentsDataSourceFetchContext.synchronousPayloads.setter(uint64_t a1)
{

  *(v1 + 80) = a1;
  return result;
}

__n128 IntelligenceAppIntentsDataSourceFetchContext.init(appIntentsRequest:provider:itemRequest:synchronousPayloads:)@<Q0>(uint64_t *a1@<X0>, __int128 *a2@<X1>, __n128 *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v8 = *a1;
  v9 = *(a1 + 8);
  v10 = *(a1 + 9);
  v11 = a3[1].n128_u64[0];
  *(a5 + 88) = MEMORY[0x1E69E7CC8];
  *(a5 + 96) = 0;
  *a5 = v8;
  *(a5 + 8) = v9;
  *(a5 + 9) = v10;
  sub_1BBA97A80(a2, a5 + 16);
  result = *a3;
  *(a5 + 56) = *a3;
  *(a5 + 72) = v11;
  *(a5 + 80) = a4;
  return result;
}

__n128 IntelligenceAppIntentsDataSourceFetchContext.init(appIntentsRequest:provider:itemRequest:)@<Q0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, __n128 *a3@<X2>, uint64_t a4@<X8>)
{
  v7 = *a1;
  v8 = *(a1 + 8);
  v9 = *(a1 + 9);
  v10 = a3[1].n128_u64[0];
  sub_1BBA98C94(a2, a4 + 16);
  v11 = sub_1BBACB158(MEMORY[0x1E69E7CC0]);
  __swift_destroy_boxed_opaque_existential_1(a2);
  v12 = MEMORY[0x1E69E7CC8];
  *(a4 + 80) = v11;
  *(a4 + 88) = v12;
  *(a4 + 96) = 0;
  *a4 = v7;
  *(a4 + 8) = v8;
  *(a4 + 9) = v9;
  result = *a3;
  *(a4 + 56) = *a3;
  *(a4 + 72) = v10;
  return result;
}

uint64_t IntelligenceAppIntentsDataSourceFetchContext.setAsyncPayloadValue(_:for:)(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for IntelligenceDataSourceItem();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v10[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  if (*(v2 + 96))
  {
    result = sub_1BBB840A8();
    __break(1u);
  }

  else
  {
    sub_1BBB5DDE8(a2, v7);
    sub_1BBA98C94(a1, v10);
    return sub_1BBADB444(v10, v7);
  }

  return result;
}

Swift::Void __swiftcall IntelligenceAppIntentsDataSourceFetchContext.performFetchUsingDetachedTask()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7BB78);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = v9 - v2;
  if (*(v0 + 96))
  {
    sub_1BBB840A8();
    __break(1u);
  }

  else
  {
    *(v0 + 96) = 1;
    if (*(*(v0 + 88) + 16))
    {
      sub_1BBB5E24C(v0, v11);
      sub_1BBB83C68();
      v4 = sub_1BBB83C88();
      (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
      sub_1BBB5E24C(v11, v9);
      v5 = swift_allocObject();
      *(v5 + 16) = 0;
      *(v5 + 24) = 0;
      v6 = v9[5];
      *(v5 + 96) = v9[4];
      *(v5 + 112) = v6;
      *(v5 + 128) = v10;
      v7 = v9[1];
      *(v5 + 32) = v9[0];
      *(v5 + 48) = v7;
      v8 = v9[3];
      *(v5 + 64) = v9[2];
      *(v5 + 80) = v8;
      sub_1BBAD9314(0, 0, v3, &unk_1BBB96000, v5);

      sub_1BBA8BCC4(v3, &qword_1EBC7BB78);
      sub_1BBB5E334(v11);
    }
  }
}

uint64_t sub_1BBB5C764()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1BBADAE68;

  return sub_1BBB5C7F4();
}

uint64_t sub_1BBB5C7F4()
{
  v1[20] = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7D428);
  v1[21] = v2;
  v1[22] = *(v2 - 8);
  v1[23] = swift_task_alloc();
  v1[24] = *(type metadata accessor for IntelligenceDataSourceItem() - 8);
  v1[25] = swift_task_alloc();
  v1[26] = swift_task_alloc();
  v1[27] = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7D430) - 8) + 64);
  v1[28] = swift_task_alloc();
  v1[29] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1BBB5C96C, 0, 0);
}

uint64_t sub_1BBB5C96C()
{
  v1 = *(v0 + 160);
  v2 = *(v1 + 40);
  v3 = *(v1 + 48);
  __swift_project_boxed_opaque_existential_1((v1 + 16), v2);
  v4 = *(v1 + 64);
  v5 = *(v1 + 72);
  *(v0 + 96) = *(v1 + 56);
  *(v0 + 104) = v4;
  *(v0 + 112) = v5;
  v6 = *(v1 + 8);
  v7 = *(v1 + 9);
  *(v0 + 144) = *v1;
  *(v0 + 152) = v6;
  *(v0 + 153) = v7;
  v8 = *(v1 + 80);
  v9 = *(v3 + 24);

  v12 = (v9 + *v9);
  v10 = swift_task_alloc();
  *(v0 + 240) = v10;
  *v10 = v0;
  v10[1] = sub_1BBB5CB04;

  return v12(v0 + 96, v0 + 144, v8, v2, v3);
}

uint64_t sub_1BBB5CB04(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 248) = a1;
  *(v3 + 256) = v1;

  if (v1)
  {
    v4 = sub_1BBB5D048;
  }

  else
  {
    v4 = sub_1BBB5CC68;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1BBB5CC68()
{
  v1 = *(v0 + 248);
  v45 = *(v0 + 192);
  v2 = *(v0 + 176);
  v50 = *(v0 + 168);
  v3 = *(*(v0 + 160) + 88);
  v6 = *(v3 + 64);
  v5 = v3 + 64;
  v4 = v6;
  v7 = -1;
  v8 = -1 << *(*(*(v0 + 160) + 88) + 32);
  if (-v8 < 64)
  {
    v7 = ~(-1 << -v8);
  }

  v9 = v7 & v4;
  v10 = (63 - v8) >> 6;
  v48 = (v2 + 56);
  v49 = (v2 + 48);
  v46 = *(*(v0 + 160) + 88);

  v12 = 0;
  v47 = v5;
  v44 = v1;
  while (v9)
  {
    v15 = v12;
LABEL_16:
    v18 = *(v0 + 224);
    v19 = *(v0 + 208);
    v20 = *(v0 + 168);
    v21 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
    v22 = v21 | (v15 << 6);
    sub_1BBB5DDE8(*(v46 + 48) + *(v45 + 72) * v22, v19);
    sub_1BBA98C94(*(v46 + 56) + 40 * v22, v0 + 16);
    v23 = *(v50 + 48);
    sub_1BBB5F3B4(v19, v18);
    sub_1BBA97A80((v0 + 16), v18 + v23);
    v24 = *v48;
    (*v48)(v18, 0, 1, v20);
LABEL_17:
    v25 = *(v0 + 224);
    v26 = *(v0 + 168);
    v27 = *v49;
    v28 = (*v49)(v25, 1, v26);
    v29 = *(v0 + 232);
    if (v28)
    {
      memcpy(*(v0 + 232), v25, *(v0 + 216));
    }

    else
    {
      sub_1BBB5F3B4(v25, *(v0 + 232));
      sub_1BBA97A80(&v25[*(v50 + 48)], v29 + *(v50 + 48));
      v24(v29, 0, 1, v26);
    }

    v30 = *(v0 + 232);
    if (v27(v30, 1, *(v0 + 168)) == 1)
    {

      v43 = *(v0 + 8);

      return v43();
    }

    v31 = *(v0 + 200);
    sub_1BBA97A80((v30 + *(v50 + 48)), v0 + 56);
    sub_1BBB5F3B4(v30, v31);
    if (*(v1 + 16) && (v32 = sub_1BBAE3710(*(v0 + 200)), (v33 & 1) != 0))
    {
      v34 = *(v0 + 200);
      v35 = (*(v1 + 56) + 24 * v32);
      v36 = *v35;
      v37 = v35[1];
      v38 = v35[2];
      sub_1BBAE58D8(*v35, v37);

      sub_1BBB5F358(v34);
      v39 = *(v0 + 80);
      v40 = *(v0 + 88);
      __swift_project_boxed_opaque_existential_1((v0 + 56), v39);
      *(v0 + 120) = v36;
      *(v0 + 128) = v37;
      *(v0 + 136) = v38;
      v41 = *(v40 + 16);
      v42 = v40;
      v1 = v44;
      v41(v0 + 120, v39, v42);
      sub_1BBAE584C(*(v0 + 120), *(v0 + 128), *(v0 + 136));
    }

    else
    {
      sub_1BBB5F358(*(v0 + 200));
      v13 = *(v0 + 80);
      v14 = *(v0 + 88);
      __swift_project_boxed_opaque_existential_1((v0 + 56), v13);
      (*(v14 + 24))(v13, v14);
    }

    result = __swift_destroy_boxed_opaque_existential_1(v0 + 56);
    v5 = v47;
  }

  if (v10 <= v12 + 1)
  {
    v16 = v12 + 1;
  }

  else
  {
    v16 = v10;
  }

  v17 = v16 - 1;
  while (1)
  {
    v15 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v15 >= v10)
    {
      v24 = *v48;
      (*v48)(*(v0 + 224), 1, 1, *(v0 + 168));
      v9 = 0;
      v12 = v17;
      goto LABEL_17;
    }

    v9 = *(v5 + 8 * v15);
    ++v12;
    if (v9)
    {
      v12 = v15;
      goto LABEL_16;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1BBB5D048()
{
  v1 = *(*(v0 + 160) + 88);
  v19 = *(v0 + 192);
  v2 = v1 + 64;
  v3 = -1;
  v4 = -1 << *(v1 + 32);
  if (-v4 < 64)
  {
    v3 = ~(-1 << -v4);
  }

  v5 = v3 & *(v1 + 64);
  v6 = (63 - v4) >> 6;
  v22 = v1;

  v8 = 0;
  if (v5)
  {
    while (1)
    {
      v9 = v8;
LABEL_9:
      v10 = *(v21 + 256);
      v11 = *(v21 + 184);
      v12 = __clz(__rbit64(v5));
      v5 &= v5 - 1;
      v13 = v12 | (v9 << 6);
      sub_1BBB5DDE8(*(v22 + 48) + *(v19 + 72) * v13, v11);
      v14 = *(v22 + 56) + 40 * v13;
      v15 = (v11 + *(v20 + 48));
      sub_1BBA98C94(v14, v15);
      v16 = v15[3];
      v17 = v15[4];
      __swift_project_boxed_opaque_existential_1(v15, v16);
      (*(v17 + 32))(v10, v16, v17);
      sub_1BBB5F358(v11);
      result = __swift_destroy_boxed_opaque_existential_1(v11 + *(v20 + 48));
      if (!v5)
      {
        goto LABEL_5;
      }
    }
  }

  while (1)
  {
LABEL_5:
    v9 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      __break(1u);
      return result;
    }

    if (v9 >= v6)
    {
      break;
    }

    v5 = *(v2 + 8 * v9);
    ++v8;
    if (v5)
    {
      v8 = v9;
      goto LABEL_9;
    }
  }

  v18 = *(v21 + 8);

  return v18();
}

uint64_t sub_1BBB5D238@<X0>(uint64_t result@<X0>, uint64_t a2@<X2>, unint64_t a3@<X3>, BOOL *a4@<X8>)
{
  v25 = *MEMORY[0x1E69E9840];
  v5 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    if (v5 != 2)
    {
      if (result)
      {
        v6 = 1;
        goto LABEL_30;
      }

LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

    v7 = result;
    v8 = *(a2 + 16);
    v9 = *(a2 + 24);
    v10 = sub_1BBB82F58();
    if (v10)
    {
      v11 = sub_1BBB82F88();
      if (__OFSUB__(v8, v11))
      {
LABEL_33:
        __break(1u);
        goto LABEL_34;
      }

      v10 += v8 - v11;
    }

    v12 = __OFSUB__(v9, v8);
    v13 = v9 - v8;
    if (!v12)
    {
      result = sub_1BBB82F78();
      if (result >= v13)
      {
        v14 = v13;
      }

      else
      {
        v14 = result;
      }

      if (!v7)
      {
        goto LABEL_37;
      }

      if (!v10)
      {
LABEL_39:
        __break(1u);
        goto LABEL_40;
      }

      result = v7;
      if (v10 == v7)
      {
LABEL_27:
        v6 = 1;
        goto LABEL_30;
      }

LABEL_16:
      result = memcmp(result, v10, v14);
      v6 = result == 0;
      goto LABEL_30;
    }

LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  if (!v5)
  {
    __s2 = a2;
    v20 = a3;
    v21 = BYTE2(a3);
    v22 = BYTE3(a3);
    v23 = BYTE4(a3);
    v24 = BYTE5(a3);
    if (result)
    {
      result = memcmp(result, &__s2, BYTE6(a3));
      v6 = result == 0;
LABEL_30:
      *a4 = v6;
      return result;
    }

    __break(1u);
    goto LABEL_36;
  }

  v15 = a2;
  v16 = (a2 >> 32) - a2;
  if (a2 >> 32 < a2)
  {
    __break(1u);
    goto LABEL_32;
  }

  v17 = result;
  v10 = sub_1BBB82F58();
  if (!v10)
  {
    goto LABEL_21;
  }

  v18 = sub_1BBB82F88();
  if (__OFSUB__(v15, v18))
  {
LABEL_34:
    __break(1u);
  }

  v10 += v15 - v18;
LABEL_21:
  result = sub_1BBB82F78();
  if (result >= v16)
  {
    v14 = v16;
  }

  else
  {
    v14 = result;
  }

  if (!v17)
  {
    goto LABEL_38;
  }

  if (v10)
  {
    result = v17;
    if (v10 == v17)
    {
      goto LABEL_27;
    }

    goto LABEL_16;
  }

LABEL_40:
  __break(1u);
  return result;
}

uint64_t sub_1BBB5D468(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v13[2] = *MEMORY[0x1E69E9840];
  v7 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v7)
    {
      v13[0] = a1;
      LOWORD(v13[1]) = a2;
      BYTE2(v13[1]) = BYTE2(a2);
      BYTE3(v13[1]) = BYTE3(a2);
      BYTE4(v13[1]) = BYTE4(a2);
      BYTE5(v13[1]) = BYTE5(a2);
      goto LABEL_9;
    }

    v8 = a1;
    v9 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

LABEL_7:
    v10 = sub_1BBB5D5F8(v8, v9, a2 & 0x3FFFFFFFFFFFFFFFLL, a3, a4);
    sub_1BBA885E8(a3, a4);
    return v10 & 1;
  }

  if (v7 == 2)
  {
    v8 = *(a1 + 16);
    v9 = *(a1 + 24);
    goto LABEL_7;
  }

  memset(v13, 0, 14);
LABEL_9:
  sub_1BBB5D238(v13, a3, a4, &v12);
  v10 = v4;
  sub_1BBA885E8(a3, a4);
  if (!v4)
  {
    v10 = v12;
  }

  return v10 & 1;
}

uint64_t sub_1BBB5D5F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  result = sub_1BBB82F58();
  v11 = result;
  if (result)
  {
    result = sub_1BBB82F88();
    if (__OFSUB__(a1, result))
    {
LABEL_9:
      __break(1u);
      return result;
    }

    v11 += a1 - result;
  }

  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_9;
  }

  sub_1BBB82F78();
  sub_1BBB5D238(v11, a4, a5, &v13);
  if (!v5)
  {
    return v13;
  }

  return v12;
}

uint64_t sub_1BBB5D6B0(uint64_t result, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a2 >> 62;
  v5 = a4 >> 62;
  if (a2 >> 62 == 3)
  {
    v6 = 0;
    if (!result && a2 == 0xC000000000000000 && a4 >> 62 == 3)
    {
      v6 = 0;
      if (!a3 && a4 == 0xC000000000000000)
      {
        return 1;
      }
    }

    goto LABEL_14;
  }

  if (!v4)
  {
    v6 = BYTE6(a2);
    goto LABEL_14;
  }

  if (v4 == 1)
  {
    LODWORD(v6) = HIDWORD(result) - result;
    if (__OFSUB__(HIDWORD(result), result))
    {
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    v6 = v6;
LABEL_14:
    if (v5 > 1)
    {
      if (v5 != 2)
      {
        return v6 == 0;
      }

      v11 = *(a3 + 16);
      v10 = *(a3 + 24);
      v9 = __OFSUB__(v10, v11);
      v12 = v10 - v11;
      if (!v9)
      {
        if (v6 != v12)
        {
          return 0;
        }

        goto LABEL_21;
      }

      __break(1u);
    }

    else
    {
      if (!v5)
      {
        if (v6 != BYTE6(a4))
        {
          return 0;
        }

LABEL_21:
        if (v6 >= 1)
        {
          v13 = result;
          sub_1BBAE58D8(a3, a4);
          return sub_1BBB5D468(v13, a2, a3, a4) & 1;
        }

        return 1;
      }

      if (!__OFSUB__(HIDWORD(a3), a3))
      {
        if (v6 != HIDWORD(a3) - a3)
        {
          return 0;
        }

        goto LABEL_21;
      }
    }

    __break(1u);
    goto LABEL_30;
  }

  v8 = *(result + 16);
  v7 = *(result + 24);
  v9 = __OFSUB__(v7, v8);
  v6 = v7 - v8;
  if (!v9)
  {
    goto LABEL_14;
  }

LABEL_31:
  __break(1u);
  return result;
}

uint64_t _s21UIIntelligenceSupport26IntelligenceDataSourceItemO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for IntelligenceDataSourceItem();
  MEMORY[0x1EEE9AC00](v4);
  v6 = (v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v7);
  v9 = (v38 - v8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = v38 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v15 = v38 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7BE38);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = v38 - v17;
  v20 = v38 + *(v19 + 56) - v17;
  sub_1BBB5DDE8(a1, v38 - v17);
  sub_1BBB5DDE8(a2, v20);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      sub_1BBB5DDE8(v18, v9);
      if (swift_getEnumCaseMultiPayload() != 2)
      {
        goto LABEL_14;
      }

      v27 = *v9 == *v20;
    }

    else
    {
      sub_1BBB5DDE8(v18, v6);
      if (swift_getEnumCaseMultiPayload() != 3)
      {
        sub_1BBA8BCC4((v6 + 1), &qword_1EBC7C230);
        goto LABEL_14;
      }

      v27 = *v6 == *v20;
      sub_1BBA8BCC4((v20 + 8), &qword_1EBC7C230);
      sub_1BBA8BCC4((v6 + 1), &qword_1EBC7C230);
    }

LABEL_16:
    sub_1BBB5F358(v18);
    return v27 & 1;
  }

  if (EnumCaseMultiPayload)
  {
    sub_1BBB5DDE8(v18, v12);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      sub_1BBAE81B0(v12);
      goto LABEL_14;
    }

    v28 = *(v12 + 1);
    v41[0] = *v12;
    v41[1] = v28;
    v42 = *(v12 + 4);
    v29 = *(v20 + 1);
    v39[0] = *v20;
    v39[1] = v29;
    v40 = *(v20 + 4);
    v27 = MEMORY[0x1BFB16610](v41, v39);
    sub_1BBAE81B0(v39);
    sub_1BBAE81B0(v41);
    goto LABEL_16;
  }

  sub_1BBB5DDE8(v18, v15);
  v22 = swift_getEnumCaseMultiPayload();
  v23 = sub_1BBB83548();
  v24 = v23;
  v25 = *(v23 - 8);
  v26 = v25;
  if (!v22)
  {
    v38[1] = v38;
    v30 = *(v25 + 64);
    v31 = MEMORY[0x1EEE9AC00](v23);
    v32 = (v30 + 15) & 0xFFFFFFFFFFFFFFF0;
    v33 = *(v26 + 32);
    v34 = v33(v38 - v32, v15, v24, v31);
    v38[0] = v38;
    v35 = MEMORY[0x1EEE9AC00](v34);
    v33(v38 - v32, v20, v24, v35);
    v27 = sub_1BBB83528();
    v36 = *(v26 + 8);
    v36(v38 - v32, v24);
    v36(v38 - v32, v24);
    goto LABEL_16;
  }

  (*(v25 + 8))(v15, v23);
LABEL_14:
  sub_1BBA8BCC4(v18, &qword_1EBC7BE38);
  v27 = 0;
  return v27 & 1;
}

unint64_t sub_1BBB5DC4C()
{
  result = qword_1EBC7D3A8;
  if (!qword_1EBC7D3A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7D3A8);
  }

  return result;
}

unint64_t sub_1BBB5DCA0()
{
  result = qword_1EBC7D3B0;
  if (!qword_1EBC7D3B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7D3B0);
  }

  return result;
}

unint64_t sub_1BBB5DCF4()
{
  result = qword_1ED6BDD30;
  if (!qword_1ED6BDD30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6BDD30);
  }

  return result;
}

unint64_t sub_1BBB5DD48()
{
  result = qword_1EBC7AEF0;
  if (!qword_1EBC7AEF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7AEF0);
  }

  return result;
}

uint64_t type metadata accessor for IntelligenceDataSourceItem()
{
  result = qword_1EBC7AEF8;
  if (!qword_1EBC7AEF8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1BBB5DDE8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for IntelligenceDataSourceItem();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BBB5DE4C()
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

uint64_t sub_1BBB5DE98(__int128 *a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v8 = *(a1 + 2);
  v9 = *a2;
  v10 = *(a2 + 8);
  v11 = *(a2 + 9);
  *(v4 + 56) = sub_1BBB83C58();
  v14 = *a1;
  *(v4 + 64) = sub_1BBB83C48();
  *(v4 + 16) = v14;
  *(v4 + 32) = v8;
  *(v4 + 40) = v9;
  *(v4 + 48) = v10;
  *(v4 + 49) = v11;
  v15 = (*(a4 + 32) + **(a4 + 32));
  v12 = swift_task_alloc();
  *(v4 + 72) = v12;
  *v12 = v4;
  v12[1] = sub_1BBB5E02C;

  return v15(v4 + 16, v4 + 40, a3, a4);
}

uint64_t sub_1BBB5E02C(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 80) = v1;

  if (v1)
  {
    v5 = sub_1BBB83C18();
    v7 = v6;
    v8 = sub_1BBB5E1E8;
  }

  else
  {
    *(v4 + 88) = a1;
    v5 = sub_1BBB83C18();
    v7 = v9;
    v8 = sub_1BBB5E180;
  }

  return MEMORY[0x1EEE6DFA0](v8, v5, v7);
}

uint64_t sub_1BBB5E180()
{

  v1 = *(v0 + 8);
  v2 = *(v0 + 88);

  return v1(v2);
}

uint64_t sub_1BBB5E1E8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1BBB5E284()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1BBADAE68;

  return sub_1BBB5C764();
}

unint64_t sub_1BBB5E368()
{
  result = qword_1EBC7D3F8;
  if (!qword_1EBC7D3F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7D3F8);
  }

  return result;
}

unint64_t sub_1BBB5E3C0()
{
  result = qword_1EBC7D400;
  if (!qword_1EBC7D400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7D400);
  }

  return result;
}

unint64_t sub_1BBB5E418()
{
  result = qword_1EBC7D408;
  if (!qword_1EBC7D408)
  {
    type metadata accessor for IntelligenceDataSourceItem();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7D408);
  }

  return result;
}

uint64_t dispatch thunk of IntelligenceAppIntentsPayloadProviding.intelligenceFetchAppIntentsPayload(request:synchronousPayload:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v13 = (*(a5 + 32) + **(a5 + 32));
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_1BBADAE68;

  return v13(a1, a2, a3, a4, a5);
}

uint64_t dispatch thunk of IntelligenceAppIntentsPayloadProviding.intelligenceFetchAppIntentsPayload(request:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 40) + **(a4 + 40));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1BBADB440;

  return v11(a1, a2, a3, a4);
}

void sub_1BBB5E790()
{
  sub_1BBB5E82C();
  if (v0 <= 0x3F)
  {
    sub_1BBB5E874();
    if (v1 <= 0x3F)
    {
      sub_1BBB5E8A4();
      if (v2 <= 0x3F)
      {
        sub_1BBB5E8D4();
        if (v3 <= 0x3F)
        {
          swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
        }
      }
    }
  }
}

void sub_1BBB5E82C()
{
  if (!qword_1EBC7B058)
  {
    v0 = sub_1BBB83548();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBC7B058);
    }
  }
}

uint64_t sub_1BBB5E874()
{
  result = qword_1EBC7AE98;
  if (!qword_1EBC7AE98)
  {
    result = MEMORY[0x1E69E69B8];
    atomic_store(MEMORY[0x1E69E69B8], &qword_1EBC7AE98);
  }

  return result;
}

uint64_t sub_1BBB5E8A4()
{
  result = qword_1EBC7AEB0;
  if (!qword_1EBC7AEB0)
  {
    result = MEMORY[0x1E69E6530];
    atomic_store(MEMORY[0x1E69E6530], &qword_1EBC7AEB0);
  }

  return result;
}

void sub_1BBB5E8D4()
{
  if (!qword_1EBC7AEA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBC7C230);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EBC7AEA8);
    }
  }
}

uint64_t dispatch thunk of IntelligenceAppIntentsDataSourcePayloadProviding.intelligenceFetchAppIntentsPayloads(for:request:synchronousPayloads:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v13 = (*(a5 + 24) + **(a5 + 24));
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_1BBB5EAC4;

  return v13(a1, a2, a3, a4, a5);
}

uint64_t sub_1BBB5EAC4(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t dispatch thunk of IntelligenceAppIntentsDataSourcePayloadProviding.intelligenceFetchAppIntentsPayloads(for:request:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 32) + **(a4 + 32));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1BBB5F418;

  return v11(a1, a2, a3, a4);
}

__n128 __swift_memcpy97_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_1BBB5ED1C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 97))
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

uint64_t sub_1BBB5ED64(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 96) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 97) = 1;
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

    *(result + 97) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1BBB5EE34()
{
  result = qword_1EBC7D410;
  if (!qword_1EBC7D410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7D410);
  }

  return result;
}

unint64_t sub_1BBB5EE8C()
{
  result = qword_1EBC7D418;
  if (!qword_1EBC7D418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7D418);
  }

  return result;
}

unint64_t sub_1BBB5EEE4()
{
  result = qword_1EBC7D420;
  if (!qword_1EBC7D420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7D420);
  }

  return result;
}

unint64_t sub_1BBB5EF3C()
{
  result = qword_1EBC7AEE0;
  if (!qword_1EBC7AEE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7AEE0);
  }

  return result;
}

unint64_t sub_1BBB5EF94()
{
  result = qword_1EBC7AEE8;
  if (!qword_1EBC7AEE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7AEE8);
  }

  return result;
}

unint64_t sub_1BBB5EFEC()
{
  result = qword_1ED6BEDB0;
  if (!qword_1ED6BEDB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6BEDB0);
  }

  return result;
}

unint64_t sub_1BBB5F044()
{
  result = qword_1ED6BEDB8;
  if (!qword_1ED6BEDB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6BEDB8);
  }

  return result;
}

unint64_t sub_1BBB5F09C()
{
  result = qword_1ED6BE5D8;
  if (!qword_1ED6BE5D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6BE5D8);
  }

  return result;
}

unint64_t sub_1BBB5F0F4()
{
  result = qword_1ED6BE5E0;
  if (!qword_1ED6BE5E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6BE5E0);
  }

  return result;
}

unint64_t sub_1BBB5F14C()
{
  result = qword_1ED6BE5C8;
  if (!qword_1ED6BE5C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6BE5C8);
  }

  return result;
}

unint64_t sub_1BBB5F1A4()
{
  result = qword_1ED6BE5D0;
  if (!qword_1ED6BE5D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6BE5D0);
  }

  return result;
}

unint64_t sub_1BBB5F1FC()
{
  result = qword_1ED6BE5F0;
  if (!qword_1ED6BE5F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6BE5F0);
  }

  return result;
}

unint64_t sub_1BBB5F254()
{
  result = qword_1ED6BE5F8;
  if (!qword_1ED6BE5F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6BE5F8);
  }

  return result;
}

unint64_t sub_1BBB5F2AC()
{
  result = qword_1ED6BE600;
  if (!qword_1ED6BE600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6BE600);
  }

  return result;
}

unint64_t sub_1BBB5F304()
{
  result = qword_1ED6BE608;
  if (!qword_1ED6BE608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6BE608);
  }

  return result;
}

uint64_t sub_1BBB5F358(uint64_t a1)
{
  v2 = type metadata accessor for IntelligenceDataSourceItem();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1BBB5F3B4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for IntelligenceDataSourceItem();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BBB5F528(uint64_t a1, uint64_t *a2, void *a3, uint64_t a4)
{
  v7 = sub_1BBB83758();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1BBB836E8();
  __swift_allocate_value_buffer(v11, a2);
  __swift_project_value_buffer(v11, a2);
  if (*a3 != -1)
  {
    swift_once();
  }

  v12 = __swift_project_value_buffer(v7, a4);
  (*(v8 + 16))(v10, v12, v7);
  return sub_1BBB836C8();
}

uint64_t sub_1BBB5F69C(uint64_t a1)
{
  v2 = sub_1BBAA7834();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BBB5F6D8(uint64_t a1)
{
  v2 = sub_1BBAA7834();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1BBB5F714(uint64_t a1)
{
  v2 = sub_1BBAAAC84();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BBB5F750(uint64_t a1)
{
  v2 = sub_1BBAAAC84();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1BBB5F78C(uint64_t a1)
{
  v2 = sub_1BBB637DC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BBB5F7C8(uint64_t a1)
{
  v2 = sub_1BBB637DC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t IntelligenceElement.Screen.DisplayType.hashValue.getter()
{
  v1 = *v0;
  sub_1BBB843D8();
  MEMORY[0x1BFB16A50](v1);
  return sub_1BBB84438();
}

uint64_t IntelligenceElement.Screen.type.getter@<X0>(_BYTE *a1@<X8>)
{
  v3 = *v1;
  v4 = *(*v3 + 88);
  result = swift_beginAccess();
  *a1 = *(v3 + v4);
  return result;
}

uint64_t IntelligenceElement.Screen.type.setter(_BYTE *a1)
{
  v3 = _s6ScreenV7StorageVMa();
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v12[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  LOBYTE(a1) = *a1;
  v6 = *v1;
  v7 = *(**v1 + 88);
  swift_beginAccess();
  sub_1BBAB4200(v6 + v7, v5);
  *v5 = a1;
  if (swift_isUniquelyReferenced_nonNull_native())
  {
    v8 = *v1;
    v9 = *(*v8 + 88);
    swift_beginAccess();
    sub_1BBAB4264(v5, v8 + v9);
    return swift_endAccess();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7D438);
    v11 = swift_allocObject();
    sub_1BBAAB49C(v5, v11 + *(*v11 + 88), _s6ScreenV7StorageVMa);

    *v1 = v11;
  }

  return result;
}

void (*IntelligenceElement.Screen.type.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x78uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = *(*(_s6ScreenV7StorageVMa() - 8) + 64);
  if (v3)
  {
    *(v5 + 80) = swift_coroFrameAlloc();
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    *(v5 + 80) = malloc(v6);
    v7 = malloc(v6);
  }

  *(v5 + 88) = v7;
  v8 = *v1;
  *(v5 + 96) = v8;
  v9 = *(*v8 + 88);
  *(v5 + 104) = v9;
  swift_beginAccess();
  *(v5 + 112) = *(v8 + v9);
  return sub_1BBB5FB54;
}

void sub_1BBB5FB54(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 112);
  v5 = *(*a1 + 96);
  v4 = *(*a1 + 104);
  if (a2)
  {
    v6 = v2[10];
    sub_1BBAB4200(v5 + v4, v6);
    *v6 = v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = v2[9];
    v8 = v2[10];
    if (isUniquelyReferenced_nonNull_native)
    {
LABEL_3:
      v10 = *v9;
      v11 = *(**v9 + 88);
      swift_beginAccess();
      sub_1BBAB4264(v8, v10 + v11);
      swift_endAccess();
      goto LABEL_6;
    }
  }

  else
  {
    v12 = v2[11];
    sub_1BBAB4200(v5 + v4, v12);
    *v12 = v3;
    v13 = swift_isUniquelyReferenced_nonNull_native();
    v8 = v2[11];
    v9 = v2[9];
    if (v13)
    {
      goto LABEL_3;
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7D438);
  v14 = swift_allocObject();
  sub_1BBAAB49C(v8, v14 + *(*v14 + 88), _s6ScreenV7StorageVMa);

  *v9 = v14;
LABEL_6:
  v15 = v2[10];
  free(v2[11]);
  free(v15);

  free(v2);
}

uint64_t sub_1BBB5FCFC(uint64_t a1)
{
  v2 = sub_1BBAAB33C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BBB5FD38(uint64_t a1)
{
  v2 = sub_1BBAAB33C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1BBB5FD74(uint64_t a1)
{
  v2 = sub_1BBB63734();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BBB5FDB0(uint64_t a1)
{
  v2 = sub_1BBB63734();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1BBB5FDEC(uint64_t a1)
{
  v2 = sub_1BBAAB3B8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BBB5FE28(uint64_t a1)
{
  v2 = sub_1BBAAB3B8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1BBB5FE64(uint64_t a1)
{
  v2 = sub_1BBB63788();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BBB5FEA0(uint64_t a1)
{
  v2 = sub_1BBB63788();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t IntelligenceElement.Screen.ConnectionType.hashValue.getter()
{
  v1 = *v0;
  sub_1BBB843D8();
  MEMORY[0x1BFB16A50](v1);
  return sub_1BBB84438();
}

uint64_t IntelligenceElement.Screen.connectionType.getter@<X0>(_BYTE *a1@<X8>)
{
  v3 = *v1 + *(**v1 + 88);
  result = swift_beginAccess();
  *a1 = *(v3 + 1);
  return result;
}

uint64_t IntelligenceElement.Screen.connectionType.setter(_BYTE *a1)
{
  v3 = _s6ScreenV7StorageVMa();
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v12[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  LOBYTE(a1) = *a1;
  v6 = *v1;
  v7 = *(**v1 + 88);
  swift_beginAccess();
  sub_1BBAB4200(v6 + v7, v5);
  v5[1] = a1;
  if (swift_isUniquelyReferenced_nonNull_native())
  {
    v8 = *v1;
    v9 = *(*v8 + 88);
    swift_beginAccess();
    sub_1BBAB4264(v5, v8 + v9);
    return swift_endAccess();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7D438);
    v11 = swift_allocObject();
    sub_1BBAAB49C(v5, v11 + *(*v11 + 88), _s6ScreenV7StorageVMa);

    *v1 = v11;
  }

  return result;
}

void (*IntelligenceElement.Screen.connectionType.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x78uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = *(*(_s6ScreenV7StorageVMa() - 8) + 64);
  if (v3)
  {
    *(v5 + 80) = swift_coroFrameAlloc();
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    *(v5 + 80) = malloc(v6);
    v7 = malloc(v6);
  }

  *(v5 + 88) = v7;
  v8 = *v1;
  *(v5 + 96) = *v1;
  v9 = *(*v8 + 88);
  *(v5 + 104) = v9;
  v10 = v8 + v9;
  swift_beginAccess();
  *(v5 + 112) = *(v10 + 1);
  return sub_1BBB6022C;
}

void sub_1BBB6022C(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 112);
  v5 = *(*a1 + 96);
  v4 = *(*a1 + 104);
  if (a2)
  {
    v6 = v2[10];
    sub_1BBAB4200(v5 + v4, v6);
    *(v6 + 1) = v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = v2[9];
    v8 = v2[10];
    if (isUniquelyReferenced_nonNull_native)
    {
LABEL_3:
      v10 = *v9;
      v11 = *(**v9 + 88);
      swift_beginAccess();
      sub_1BBAB4264(v8, v10 + v11);
      swift_endAccess();
      goto LABEL_6;
    }
  }

  else
  {
    v12 = v2[11];
    sub_1BBAB4200(v5 + v4, v12);
    *(v12 + 1) = v3;
    v13 = swift_isUniquelyReferenced_nonNull_native();
    v8 = v2[11];
    v9 = v2[9];
    if (v13)
    {
      goto LABEL_3;
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7D438);
  v14 = swift_allocObject();
  sub_1BBAAB49C(v8, v14 + *(*v14 + 88), _s6ScreenV7StorageVMa);

  *v9 = v14;
LABEL_6:
  v15 = v2[10];
  free(v2[11]);
  free(v15);

  free(v2);
}

uint64_t IntelligenceElement.Screen.identifier.getter()
{
  v1 = *v0 + *(**v0 + 88);
  swift_beginAccess();
  v2 = *(v1 + 8);

  return v2;
}

uint64_t sub_1BBB6042C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *a1 + *(**a1 + 88);
  swift_beginAccess();
  v4 = *(v3 + 16);
  *a2 = *(v3 + 8);
  a2[1] = v4;
}

uint64_t IntelligenceElement.Screen.identifier.setter(uint64_t a1, uint64_t a2)
{
  v5 = _s6ScreenV7StorageVMa();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v14[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = *v2;
  v9 = *(**v2 + 88);
  swift_beginAccess();
  sub_1BBAB4200(v8 + v9, v7);

  *(v7 + 1) = a1;
  *(v7 + 2) = a2;
  if (swift_isUniquelyReferenced_nonNull_native())
  {
    v10 = *v2;
    v11 = *(*v10 + 88);
    swift_beginAccess();
    sub_1BBAB4264(v7, v10 + v11);
    return swift_endAccess();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7D438);
    v13 = swift_allocObject();
    sub_1BBAAB49C(v7, v13 + *(*v13 + 88), _s6ScreenV7StorageVMa);

    *v2 = v13;
  }

  return result;
}

void (*IntelligenceElement.Screen.identifier.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  v5 = *v1 + *(**v1 + 88);
  swift_beginAccess();
  v6 = *(v5 + 16);
  *(v4 + 24) = *(v5 + 8);
  *(v4 + 32) = v6;

  return sub_1BBB606B8;
}

void sub_1BBB606B8(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 24);
  v4 = *(*a1 + 32);
  if (a2)
  {

    IntelligenceElement.Screen.identifier.setter(v3, v4);
  }

  else
  {
    IntelligenceElement.Screen.identifier.setter(*(*a1 + 24), v4);
  }

  free(v2);
}

__n128 IntelligenceElement.Screen.pixelBounds.getter@<Q0>(uint64_t a1@<X8>)
{
  v3 = *v1 + *(**v1 + 88);
  swift_beginAccess();
  v4 = *(v3 + 56);
  result = *(v3 + 24);
  v6 = *(v3 + 40);
  *a1 = result;
  *(a1 + 16) = v6;
  *(a1 + 32) = v4;
  return result;
}

__n128 sub_1BBB6079C@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1 + *(**a1 + 88);
  swift_beginAccess();
  v4 = *(v3 + 56);
  result = *(v3 + 24);
  v6 = *(v3 + 40);
  *a2 = result;
  *(a2 + 16) = v6;
  *(a2 + 32) = v4;
  return result;
}

uint64_t IntelligenceElement.Screen.pixelBounds.setter(uint64_t a1)
{
  v3 = _s6ScreenV7StorageVMa();
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v13[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = *v1;
  v7 = *(**v1 + 88);
  swift_beginAccess();
  sub_1BBAB4200(v6 + v7, v5);
  v8 = *(a1 + 16);
  *(v5 + 24) = *a1;
  *(v5 + 40) = v8;
  v5[56] = *(a1 + 32);
  if (swift_isUniquelyReferenced_nonNull_native())
  {
    v9 = *v1;
    v10 = *(*v9 + 88);
    swift_beginAccess();
    sub_1BBAB4264(v5, v9 + v10);
    return swift_endAccess();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7D438);
    v12 = swift_allocObject();
    sub_1BBAAB49C(v5, v12 + *(*v12 + 88), _s6ScreenV7StorageVMa);

    *v1 = v12;
  }

  return result;
}

void (*IntelligenceElement.Screen.pixelBounds.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x98uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 144) = v1;
  v5 = *v1 + *(**v1 + 88);
  swift_beginAccess();
  v6 = *(v5 + 56);
  v7 = *(v5 + 40);
  *(v4 + 80) = *(v5 + 24);
  *(v4 + 96) = v7;
  *(v4 + 112) = v6;
  return sub_1BBB60A38;
}

void sub_1BBB60A38(uint64_t *a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    v3 = *a1;
  }

  else
  {
    v3 = *a1 + 40;
  }

  v4 = *(v2 + 96);
  *v3 = *(v2 + 80);
  *(v3 + 16) = v4;
  *(v3 + 32) = *(v2 + 112);
  IntelligenceElement.Screen.pixelBounds.setter(v3);

  free(v2);
}

double IntelligenceElement.Screen.scale.getter()
{
  v1 = *v0 + *(**v0 + 88);
  swift_beginAccess();
  return *(v1 + 64);
}

uint64_t IntelligenceElement.Screen.scale.setter(double a1)
{
  v3 = _s6ScreenV7StorageVMa();
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v12[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = *v1;
  v7 = *(**v1 + 88);
  swift_beginAccess();
  sub_1BBAB4200(v6 + v7, v5);
  v5[8] = a1;
  if (swift_isUniquelyReferenced_nonNull_native())
  {
    v8 = *v1;
    v9 = *(*v8 + 88);
    swift_beginAccess();
    sub_1BBAB4264(v5, v8 + v9);
    return swift_endAccess();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7D438);
    v11 = swift_allocObject();
    sub_1BBAAB49C(v5, v11 + *(*v11 + 88), _s6ScreenV7StorageVMa);

    *v1 = v11;
  }

  return result;
}

void (*IntelligenceElement.Screen.scale.modify(uint64_t *a1))(uint64_t a1)
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
  v5 = *v1 + *(**v1 + 88);
  swift_beginAccess();
  *(v4 + 24) = *(v5 + 64);
  return sub_1BBB60CFC;
}

void sub_1BBB60CFC(uint64_t a1)
{
  v1 = *a1;
  IntelligenceElement.Screen.scale.setter(*(*a1 + 24));

  free(v1);
}

uint64_t IntelligenceElement.Screen.encodedFBSDisplayIdentity.getter()
{
  v1 = *v0 + *(**v0 + 88);
  swift_beginAccess();
  v2 = *(v1 + 72);
  sub_1BBAE593C(v2, *(v1 + 80));
  return v2;
}

uint64_t sub_1BBB60DA8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1 + *(**a1 + 88);
  swift_beginAccess();
  v4 = *(v3 + 72);
  v5 = *(v3 + 80);
  *a2 = v4;
  a2[1] = v5;
  return sub_1BBAE593C(v4, v5);
}

void (*IntelligenceElement.Screen.encodedFBSDisplayIdentity.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  v5 = *v1 + *(**v1 + 88);
  swift_beginAccess();
  v6 = *(v5 + 72);
  v7 = *(v5 + 80);
  *(v4 + 24) = v6;
  *(v4 + 32) = v7;
  sub_1BBAE593C(v6, v7);
  return sub_1BBB60EB8;
}

void sub_1BBB60EB8(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 24);
  v4 = *(*a1 + 32);
  if (a2)
  {
    sub_1BBAE593C(*(*a1 + 24), v4);
    IntelligenceElement.Screen.encodedFBSDisplayIdentity.setter(v3, v4);
    sub_1BBAB42C8(*(v2 + 24), *(v2 + 32));
  }

  else
  {
    IntelligenceElement.Screen.encodedFBSDisplayIdentity.setter(*(*a1 + 24), v4);
  }

  free(v2);
}

uint64_t sub_1BBB60F34@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = *a1 + *(**a1 + 88);
  swift_beginAccess();
  v4 = *(v3 + 88);
  v5 = *(v3 + 120);
  v25[1] = *(v3 + 104);
  v25[2] = v5;
  v25[0] = v4;
  v6 = *(v3 + 136);
  v7 = *(v3 + 152);
  v8 = *(v3 + 184);
  v25[5] = *(v3 + 168);
  v25[6] = v8;
  v25[3] = v6;
  v25[4] = v7;
  v9 = *(v3 + 200);
  v10 = *(v3 + 216);
  v11 = *(v3 + 248);
  v25[9] = *(v3 + 232);
  v25[10] = v11;
  v25[7] = v9;
  v25[8] = v10;
  v12 = *(v3 + 264);
  v13 = *(v3 + 280);
  v14 = *(v3 + 312);
  v25[13] = *(v3 + 296);
  v25[14] = v14;
  v25[11] = v12;
  v25[12] = v13;
  v15 = *(v3 + 264);
  v16 = *(v3 + 296);
  v17 = *(v3 + 312);
  a2[12] = *(v3 + 280);
  a2[13] = v16;
  a2[14] = v17;
  v18 = *(v3 + 200);
  v19 = *(v3 + 232);
  a2[8] = *(v3 + 216);
  a2[9] = v19;
  a2[10] = *(v3 + 248);
  a2[11] = v15;
  v20 = *(v3 + 136);
  v21 = *(v3 + 168);
  a2[4] = *(v3 + 152);
  a2[5] = v21;
  a2[6] = *(v3 + 184);
  a2[7] = v18;
  v22 = *(v3 + 104);
  *a2 = *(v3 + 88);
  a2[1] = v22;
  a2[2] = *(v3 + 120);
  a2[3] = v20;
  return sub_1BBA8BC5C(v25, v24, &qword_1EBC7D440);
}

uint64_t IntelligenceElement.Screen.snapshotConfiguration.setter(_OWORD *a1)
{
  v3 = _s6ScreenV7StorageVMa();
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0) + 32;
  v6 = *v1;
  v7 = *(**v1 + 88);
  swift_beginAccess();
  sub_1BBAB4200(v6 + v7, v5);
  v8 = *(v5 + 264);
  v9 = *(v5 + 296);
  v10 = *(v5 + 312);
  v30[12] = *(v5 + 280);
  v30[13] = v9;
  v30[14] = v10;
  v11 = *(v5 + 200);
  v12 = *(v5 + 232);
  v30[8] = *(v5 + 216);
  v30[9] = v12;
  v30[10] = *(v5 + 248);
  v30[11] = v8;
  v13 = *(v5 + 136);
  v14 = *(v5 + 168);
  v30[4] = *(v5 + 152);
  v30[5] = v14;
  v30[6] = *(v5 + 184);
  v30[7] = v11;
  v15 = *(v5 + 104);
  v30[0] = *(v5 + 88);
  v30[1] = v15;
  v30[2] = *(v5 + 120);
  v30[3] = v13;
  sub_1BBA8BCC4(v30, &qword_1EBC7D440);
  v16 = a1[12];
  v17 = a1[13];
  v18 = a1[10];
  *(v5 + 264) = a1[11];
  *(v5 + 280) = v16;
  v19 = a1[14];
  *(v5 + 296) = v17;
  *(v5 + 312) = v19;
  v20 = a1[6];
  *(v5 + 200) = a1[7];
  v21 = a1[9];
  *(v5 + 216) = a1[8];
  *(v5 + 232) = v21;
  *(v5 + 248) = v18;
  v22 = a1[2];
  *(v5 + 136) = a1[3];
  v23 = a1[5];
  *(v5 + 152) = a1[4];
  *(v5 + 168) = v23;
  *(v5 + 184) = v20;
  v24 = a1[1];
  *(v5 + 88) = *a1;
  *(v5 + 104) = v24;
  *(v5 + 120) = v22;
  if (swift_isUniquelyReferenced_nonNull_native())
  {
    v25 = *v1;
    v26 = *(*v25 + 88);
    swift_beginAccess();
    sub_1BBAB4264(v5, v25 + v26);
    return swift_endAccess();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7D438);
    v28 = swift_allocObject();
    sub_1BBAAB49C(v5, v28 + *(*v28 + 88), _s6ScreenV7StorageVMa);

    *v1 = v28;
  }

  return result;
}

void (*IntelligenceElement.Screen.snapshotConfiguration.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x7F0uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 1992) = v1;
  v6 = *(*(_s6ScreenV7StorageVMa() - 8) + 64);
  if (v3)
  {
    *(v5 + 2000) = swift_coroFrameAlloc();
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    *(v5 + 2000) = malloc(v6);
    v7 = malloc(v6);
  }

  *(v5 + 2008) = v7;
  v8 = *v1;
  *(v5 + 2016) = *v1;
  v9 = *(*v8 + 88);
  *(v5 + 2024) = v9;
  v10 = v8 + v9;
  swift_beginAccess();
  v11 = *(v10 + 88);
  v12 = *(v10 + 120);
  *(v5 + 16) = *(v10 + 104);
  *(v5 + 32) = v12;
  *v5 = v11;
  v13 = *(v10 + 136);
  v14 = *(v10 + 152);
  v15 = *(v10 + 184);
  *(v5 + 80) = *(v10 + 168);
  *(v5 + 96) = v15;
  *(v5 + 48) = v13;
  *(v5 + 64) = v14;
  v16 = *(v10 + 200);
  v17 = *(v10 + 216);
  v18 = *(v10 + 248);
  *(v5 + 144) = *(v10 + 232);
  *(v5 + 160) = v18;
  *(v5 + 112) = v16;
  *(v5 + 128) = v17;
  v19 = *(v10 + 264);
  v20 = *(v10 + 280);
  v21 = *(v10 + 312);
  *(v5 + 208) = *(v10 + 296);
  *(v5 + 224) = v21;
  *(v5 + 176) = v19;
  *(v5 + 192) = v20;
  memmove((v5 + 240), (v10 + 88), 0xF0uLL);
  sub_1BBA8BC5C(v5, v5 + 480, &qword_1EBC7D440);
  return sub_1BBB6141C;
}

void sub_1BBB6141C(uint64_t *a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    v3 = *(v2 + 2024);
    v4 = *(v2 + 2016);
    v5 = *(v2 + 2000);
    v6 = *(v2 + 448);
    *(v2 + 1152) = *(v2 + 432);
    *(v2 + 1168) = v6;
    *(v2 + 1184) = *(v2 + 464);
    v7 = *(v2 + 384);
    *(v2 + 1088) = *(v2 + 368);
    *(v2 + 1104) = v7;
    v8 = *(v2 + 416);
    *(v2 + 1120) = *(v2 + 400);
    *(v2 + 1136) = v8;
    v9 = *(v2 + 320);
    *(v2 + 1024) = *(v2 + 304);
    *(v2 + 1040) = v9;
    v10 = *(v2 + 352);
    *(v2 + 1056) = *(v2 + 336);
    *(v2 + 1072) = v10;
    v11 = *(v2 + 256);
    *(v2 + 960) = *(v2 + 240);
    *(v2 + 976) = v11;
    v12 = *(v2 + 288);
    *(v2 + 992) = *(v2 + 272);
    *(v2 + 1008) = v12;
    sub_1BBAB4200(v4 + v3, v5);
    v13 = *(v5 + 120);
    v14 = *(v5 + 104);
    *(v2 + 720) = *(v5 + 88);
    *(v2 + 736) = v14;
    *(v2 + 752) = v13;
    v15 = *(v5 + 152);
    v16 = *(v5 + 184);
    v17 = *(v5 + 136);
    *(v2 + 800) = *(v5 + 168);
    *(v2 + 816) = v16;
    *(v2 + 768) = v17;
    *(v2 + 784) = v15;
    v18 = *(v5 + 216);
    v19 = *(v5 + 248);
    v20 = *(v5 + 200);
    *(v2 + 864) = *(v5 + 232);
    *(v2 + 880) = v19;
    *(v2 + 832) = v20;
    *(v2 + 848) = v18;
    v21 = *(v5 + 312);
    v23 = *(v5 + 264);
    v22 = *(v5 + 280);
    *(v2 + 928) = *(v5 + 296);
    *(v2 + 944) = v21;
    *(v2 + 896) = v23;
    *(v2 + 912) = v22;
    sub_1BBA8BC5C(v2 + 960, v2 + 1200, &qword_1EBC7D440);
    sub_1BBA8BCC4(v2 + 720, &qword_1EBC7D440);
    v25 = *(v2 + 976);
    v24 = *(v2 + 992);
    *(v5 + 88) = *(v2 + 960);
    *(v5 + 104) = v25;
    *(v5 + 120) = v24;
    v26 = *(v2 + 1040);
    v27 = *(v2 + 1056);
    v28 = *(v2 + 1024);
    *(v5 + 136) = *(v2 + 1008);
    *(v5 + 184) = v27;
    *(v5 + 168) = v26;
    *(v5 + 152) = v28;
    v29 = *(v2 + 1104);
    v30 = *(v2 + 1120);
    v31 = *(v2 + 1088);
    *(v5 + 200) = *(v2 + 1072);
    *(v5 + 248) = v30;
    *(v5 + 232) = v29;
    *(v5 + 216) = v31;
    v32 = *(v2 + 1184);
    v34 = *(v2 + 1136);
    v33 = *(v2 + 1152);
    *(v5 + 296) = *(v2 + 1168);
    *(v5 + 312) = v32;
    *(v5 + 264) = v34;
    *(v5 + 280) = v33;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v36 = *(v2 + 2000);
    v37 = *(v2 + 1992);
    if (isUniquelyReferenced_nonNull_native)
    {
      v38 = *v37;
      v39 = *(**v37 + 88);
      swift_beginAccess();
      sub_1BBAB4264(v36, v38 + v39);
      swift_endAccess();
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7D438);
      v57 = swift_allocObject();
      sub_1BBAAB49C(v36, v57 + *(*v57 + 88), _s6ScreenV7StorageVMa);

      *v37 = v57;
    }

    v58 = *(v2 + 2008);
    v59 = *(v2 + 2000);
    v60 = *(v2 + 448);
    *(v2 + 1632) = *(v2 + 432);
    *(v2 + 1648) = v60;
    *(v2 + 1664) = *(v2 + 464);
    v61 = *(v2 + 384);
    *(v2 + 1568) = *(v2 + 368);
    *(v2 + 1584) = v61;
    v62 = *(v2 + 416);
    *(v2 + 1600) = *(v2 + 400);
    *(v2 + 1616) = v62;
    v63 = *(v2 + 320);
    *(v2 + 1504) = *(v2 + 304);
    *(v2 + 1520) = v63;
    v64 = *(v2 + 352);
    *(v2 + 1536) = *(v2 + 336);
    *(v2 + 1552) = v64;
    v65 = *(v2 + 256);
    *(v2 + 1440) = *(v2 + 240);
    *(v2 + 1456) = v65;
    v66 = *(v2 + 288);
    *(v2 + 1472) = *(v2 + 272);
    *(v2 + 1488) = v66;
    sub_1BBA8BCC4(v2 + 1440, &qword_1EBC7D440);
    v67 = v58;
  }

  else
  {
    v40 = *(v2 + 2008);
    v81 = *(v2 + 432);
    v82 = *(v2 + 448);
    v83 = *(v2 + 464);
    v77 = *(v2 + 368);
    v78 = *(v2 + 384);
    v79 = *(v2 + 400);
    v80 = *(v2 + 416);
    v73 = *(v2 + 304);
    v74 = *(v2 + 320);
    v75 = *(v2 + 336);
    v76 = *(v2 + 352);
    v69 = *(v2 + 240);
    v70 = *(v2 + 256);
    v71 = *(v2 + 272);
    v72 = *(v2 + 288);
    sub_1BBAB4200(*(v2 + 2016) + *(v2 + 2024), v40);
    v41 = *(v40 + 120);
    v42 = *(v40 + 104);
    *(v2 + 1680) = *(v40 + 88);
    *(v2 + 1696) = v42;
    *(v2 + 1712) = v41;
    v43 = *(v40 + 152);
    v44 = *(v40 + 184);
    v45 = *(v40 + 136);
    *(v2 + 1760) = *(v40 + 168);
    *(v2 + 1776) = v44;
    *(v2 + 1728) = v45;
    *(v2 + 1744) = v43;
    v46 = *(v40 + 216);
    v47 = *(v40 + 248);
    v48 = *(v40 + 200);
    *(v2 + 1824) = *(v40 + 232);
    *(v2 + 1840) = v47;
    *(v2 + 1792) = v48;
    *(v2 + 1808) = v46;
    v49 = *(v40 + 312);
    v51 = *(v40 + 264);
    v50 = *(v40 + 280);
    *(v2 + 1888) = *(v40 + 296);
    *(v2 + 1904) = v49;
    *(v2 + 1856) = v51;
    *(v2 + 1872) = v50;
    sub_1BBA8BCC4(v2 + 1680, &qword_1EBC7D440);
    *(v40 + 264) = v80;
    *(v40 + 280) = v81;
    *(v40 + 296) = v82;
    *(v40 + 312) = v83;
    *(v40 + 200) = v76;
    *(v40 + 216) = v77;
    *(v40 + 232) = v78;
    *(v40 + 248) = v79;
    *(v40 + 136) = v72;
    *(v40 + 152) = v73;
    *(v40 + 168) = v74;
    *(v40 + 184) = v75;
    *(v40 + 88) = v69;
    *(v40 + 104) = v70;
    *(v40 + 120) = v71;
    v52 = swift_isUniquelyReferenced_nonNull_native();
    v53 = *(v2 + 2008);
    v54 = *(v2 + 1992);
    if (v52)
    {
      v55 = *v54;
      v56 = *(**v54 + 88);
      swift_beginAccess();
      sub_1BBAB4264(v53, v55 + v56);
      swift_endAccess();
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7D438);
      v68 = swift_allocObject();
      sub_1BBAAB49C(v53, v68 + *(*v68 + 88), _s6ScreenV7StorageVMa);

      *v54 = v68;
    }

    v67 = *(v2 + 2008);
    v59 = *(v2 + 2000);
  }

  free(v67);
  free(v59);

  free(v2);
}

uint64_t IntelligenceElement.Screen.snapshotImage.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1 + *(**v1 + 88);
  swift_beginAccess();
  v4 = _s6ScreenV7StorageVMa();
  return sub_1BBA8BC5C(v3 + *(v4 + 44), a1, &qword_1EBC7B7F8);
}

uint64_t sub_1BBB61958@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1 + *(**a1 + 88);
  swift_beginAccess();
  v4 = _s6ScreenV7StorageVMa();
  return sub_1BBA8BC5C(v3 + *(v4 + 44), a2, &qword_1EBC7B7F8);
}

uint64_t sub_1BBB619D8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7B7F8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v6 - v3;
  sub_1BBA8BC5C(a1, &v6 - v3, &qword_1EBC7B7F8);
  return IntelligenceElement.Screen.snapshotImage.setter(v4);
}

uint64_t IntelligenceElement.Screen.snapshotImage.setter(uint64_t a1)
{
  v3 = _s6ScreenV7StorageVMa();
  v4 = v3 - 8;
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v13[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = *v1;
  v8 = *(**v1 + 88);
  swift_beginAccess();
  sub_1BBAB4200(v7 + v8, v6);
  sub_1BBB63554(a1, &v6[*(v4 + 52)]);
  if (swift_isUniquelyReferenced_nonNull_native())
  {
    v9 = *v1;
    v10 = *(*v9 + 88);
    swift_beginAccess();
    sub_1BBAB4264(v6, v9 + v10);
    return swift_endAccess();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7D438);
    v12 = swift_allocObject();
    sub_1BBAAB49C(v6, v12 + *(*v12 + 88), _s6ScreenV7StorageVMa);

    *v1 = v12;
  }

  return result;
}

void (*IntelligenceElement.Screen.snapshotImage.modify(uint64_t *a1))(uint64_t a1, char a2)
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7B7F8) - 8) + 64);
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
  v10 = _s6ScreenV7StorageVMa();
  sub_1BBA8BC5C(v9 + *(v10 + 44), v8, &qword_1EBC7B7F8);
  return sub_1BBB61D30;
}

void sub_1BBB61D30(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 32);
  v4 = *(*a1 + 40);
  if (a2)
  {
    sub_1BBA8BC5C(*(*a1 + 40), v3, &qword_1EBC7B7F8);
    IntelligenceElement.Screen.snapshotImage.setter(v3);
    sub_1BBA8BCC4(v4, &qword_1EBC7B7F8);
  }

  else
  {
    IntelligenceElement.Screen.snapshotImage.setter(*(*a1 + 40));
  }

  free(v4);
  free(v3);

  free(v2);
}

uint64_t IntelligenceElement.Screen.interactionToken.getter@<X0>(void *a1@<X8>)
{
  v3 = *v1 + *(**v1 + 88);
  swift_beginAccess();
  v4 = *(v3 + 16);
  *a1 = *(v3 + 8);
  a1[1] = v4;
}

uint64_t sub_1BBB61E68@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1BBB64274();
  *a1 = result;
  return result;
}

void sub_1BBB61E98(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE400000000000000;
  v4 = 1701869940;
  v5 = 0x80000001BBB9AD50;
  v6 = 0x746F687370616E73;
  if (v2 == 6)
  {
    v6 = 0xD000000000000015;
  }

  else
  {
    v5 = 0xED00006567616D49;
  }

  v7 = 0xE500000000000000;
  v8 = 0xD000000000000019;
  if (v2 == 4)
  {
    v8 = 0x656C616373;
  }

  else
  {
    v7 = 0x80000001BBB9AD30;
  }

  if (*v1 <= 5u)
  {
    v5 = v7;
  }

  else
  {
    v8 = v6;
  }

  v9 = 0xEA00000000007265;
  v10 = 0x696669746E656469;
  if (v2 != 2)
  {
    v10 = 0x756F426C65786970;
    v9 = 0xEB0000000073646ELL;
  }

  if (*v1)
  {
    v4 = 0x697463656E6E6F63;
    v3 = 0xEE00657079546E6FLL;
  }

  if (*v1 > 1u)
  {
    v4 = v10;
    v3 = v9;
  }

  if (*v1 <= 3u)
  {
    v11 = v4;
  }

  else
  {
    v11 = v8;
  }

  if (*v1 > 3u)
  {
    v3 = v5;
  }

  *a1 = v11;
  a1[1] = v3;
}

uint64_t sub_1BBB61FB4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1BBB64274();
  *a1 = result;
  return result;
}

uint64_t sub_1BBB61FE8(uint64_t a1)
{
  v2 = sub_1BBAAAA80();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BBB62024(uint64_t a1)
{
  v2 = sub_1BBAAAA80();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t IntelligenceElement.Screen.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7B7F8);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v34 = &v31 - v5;
  v35 = type metadata accessor for IntelligenceImage(0);
  v33 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35);
  v32 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7D448);
  v83 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v31 - v8;
  v10 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BBAAAA80();
  sub_1BBB84478();
  v11 = v10 + *(*v10 + 88);
  swift_beginAccess();
  if (*v11 != 1 || (LOBYTE(v68) = 1, LOBYTE(v53) = 0, sub_1BBB635C4(), sub_1BBB84288(), !v2))
  {
    if (!*(v11 + 1) || (LOBYTE(v68) = *(v11 + 1), LOBYTE(v53) = 1, sub_1BBB63618(), sub_1BBB84288(), !v2))
    {
      if (*(v11 + 16))
      {
        LOBYTE(v68) = 2;

        sub_1BBB84248();
        if (v2)
        {
          (*(v83 + 8))(v9, v7);
        }
      }

      if ((*(v11 + 56) & 1) != 0 || (v13 = *(v11 + 40), v68 = *(v11 + 24), v69 = v13, LOBYTE(v53) = 3, type metadata accessor for CGRect(0), sub_1BBAAB40C(&qword_1ED6BDCA8, type metadata accessor for CGRect), sub_1BBB84288(), !v2))
      {
        if (*(v11 + 64) == 1.0 || (*&v68 = *(v11 + 64), LOBYTE(v53) = 4, sub_1BBA9E98C(), sub_1BBB84288(), !v2))
        {
          v14 = *(v11 + 80);
          if (v14 >> 60 != 15)
          {
            v15 = *(v11 + 72);
            *&v68 = v15;
            *(&v68 + 1) = v14;
            LOBYTE(v53) = 5;
            sub_1BBAE58D8(v15, v14);
            sub_1BBA8845C();
            sub_1BBB84288();
            if (v2)
            {
              (*(v83 + 8))(v9, v7);
              return sub_1BBAB42C8(v15, v14);
            }

            sub_1BBAB42C8(v15, v14);
          }

          v16 = *(v11 + 88);
          v17 = *(v11 + 120);
          v54 = *(v11 + 104);
          v55 = v17;
          v53 = v16;
          v18 = *(v11 + 136);
          v19 = *(v11 + 152);
          v20 = *(v11 + 184);
          v58 = *(v11 + 168);
          v59 = v20;
          v56 = v18;
          v57 = v19;
          v21 = *(v11 + 200);
          v22 = *(v11 + 216);
          v23 = *(v11 + 248);
          v62 = *(v11 + 232);
          v63 = v23;
          v60 = v21;
          v61 = v22;
          v24 = *(v11 + 264);
          v25 = *(v11 + 280);
          v26 = *(v11 + 312);
          v66 = *(v11 + 296);
          v67 = v26;
          v64 = v24;
          v65 = v25;
          memmove(&v68, (v11 + 88), 0xF0uLL);
          if (sub_1BBB6366C(&v68) != 1)
          {
            v49 = v80;
            v50 = v81;
            v45 = v76;
            v46 = v77;
            v47 = v78;
            v48 = v79;
            v41 = v72;
            v42 = v73;
            v43 = v74;
            v44 = v75;
            v37 = v68;
            v38 = v69;
            v39 = v70;
            v40 = v71;
            v52[11] = v64;
            v52[12] = v65;
            v52[13] = v66;
            v52[14] = v67;
            v52[7] = v60;
            v52[8] = v61;
            v52[9] = v62;
            v52[10] = v63;
            v52[3] = v56;
            v52[4] = v57;
            v52[5] = v58;
            v52[6] = v59;
            v51 = v82;
            v52[0] = v53;
            v36[247] = 6;
            v52[1] = v54;
            v52[2] = v55;
            sub_1BBB2F050(v52, v36);
            sub_1BBB636E0();
            sub_1BBB84288();
            if (v2)
            {
              (*(v83 + 8))(v9, v7);
              return sub_1BBA8BCC4(&v53, &qword_1EBC7D440);
            }

            sub_1BBA8BCC4(&v53, &qword_1EBC7D440);
          }

          v27 = _s6ScreenV7StorageVMa();
          v28 = v34;
          sub_1BBA8BC5C(v11 + *(v27 + 44), v34, &qword_1EBC7B7F8);
          if ((*(v33 + 48))(v28, 1, v35) == 1)
          {
            (*(v83 + 8))(v9, v7);
            return sub_1BBA8BCC4(v28, &qword_1EBC7B7F8);
          }

          v29 = v28;
          v30 = v32;
          sub_1BBAAB49C(v29, v32, type metadata accessor for IntelligenceImage);
          LOBYTE(v52[0]) = 7;
          sub_1BBAAB40C(&qword_1ED6BE3A0, type metadata accessor for IntelligenceImage);
          sub_1BBB84288();
          sub_1BBB63684(v30);
        }
      }
    }
  }

  return (*(v83 + 8))(v9, v7);
}

uint64_t IntelligenceElement.Screen.ConnectionType.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7D460);
  v25 = *(v3 - 8);
  v26 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v24 = &v18 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7D468);
  v22 = *(v5 - 8);
  v23 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v21 = &v18 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7D470);
  v19 = *(v7 - 8);
  v20 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v18 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7D478);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v18 - v12;
  v14 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BBAAB33C();
  sub_1BBB84478();
  if (v14)
  {
    if (v14 == 1)
    {
      v28 = 1;
      sub_1BBB63734();
      v9 = v21;
      sub_1BBB84208();
      v16 = v22;
      v15 = v23;
    }

    else
    {
      v29 = 2;
      sub_1BBAAB3B8();
      v9 = v24;
      sub_1BBB84208();
      v16 = v25;
      v15 = v26;
    }
  }

  else
  {
    v27 = 0;
    sub_1BBB63788();
    sub_1BBB84208();
    v16 = v19;
    v15 = v20;
  }

  (*(v16 + 8))(v9, v15);
  return (*(v11 + 8))(v13, v10);
}

uint64_t IntelligenceElement.Screen.DisplayType.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7D4B0);
  v19 = *(v3 - 8);
  v20 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v18 = &v16 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7D4B8);
  v16 = *(v5 - 8);
  v17 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v16 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7D4C0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v16 - v10;
  v12 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BBAAAC84();
  sub_1BBB84478();
  v13 = (v9 + 8);
  if (v12)
  {
    v22 = 1;
    sub_1BBAA7834();
    v14 = v18;
    sub_1BBB84208();
    (*(v19 + 8))(v14, v20);
  }

  else
  {
    v21 = 0;
    sub_1BBB637DC();
    sub_1BBB84208();
    (*(v16 + 8))(v7, v17);
  }

  return (*v13)(v11, v8);
}

char *IntelligenceElement.Screen.description.getter()
{
  v1 = *v0 + *(**v0 + 88);
  swift_beginAccess();
  if (*v1 != 1)
  {
    v2 = MEMORY[0x1E69E7CC0];
    if (!*(v1 + 1))
    {
      goto LABEL_12;
    }

    goto LABEL_7;
  }

  v21[0] = 0;
  v21[1] = 0xE000000000000000;
  MEMORY[0x1BFB16150](0x203A65707974, 0xE600000000000000);
  sub_1BBB84098();
  v2 = sub_1BBA86A94(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v4 = *(v2 + 2);
  v3 = *(v2 + 3);
  if (v4 >= v3 >> 1)
  {
    v2 = sub_1BBA86A94((v3 > 1), v4 + 1, 1, v2);
  }

  *(v2 + 2) = v4 + 1;
  v5 = &v2[16 * v4];
  *(v5 + 4) = 0;
  *(v5 + 5) = 0xE000000000000000;
  if (*(v1 + 1))
  {
LABEL_7:
    v21[0] = 0;
    v21[1] = 0xE000000000000000;
    sub_1BBB84028();
    MEMORY[0x1BFB16150](0xD000000000000010, 0x80000001BBB9D290);
    sub_1BBB84098();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v2 = sub_1BBA86A94(0, *(v2 + 2) + 1, 1, v2);
    }

    v7 = *(v2 + 2);
    v6 = *(v2 + 3);
    if (v7 >= v6 >> 1)
    {
      v2 = sub_1BBA86A94((v6 > 1), v7 + 1, 1, v2);
    }

    *(v2 + 2) = v7 + 1;
    v8 = &v2[16 * v7];
    *(v8 + 4) = 0;
    *(v8 + 5) = 0xE000000000000000;
  }

LABEL_12:
  v9 = *(v1 + 16);
  if (v9)
  {
    v10 = *(v1 + 8);
    v11 = HIBYTE(v9) & 0xF;
    if ((v9 & 0x2000000000000000) == 0)
    {
      v11 = v10 & 0xFFFFFFFFFFFFLL;
    }

    if (v11)
    {

      sub_1BBB84028();

      strcpy(v21, "identifier: ");
      HIWORD(v21[1]) = -4864;
      MEMORY[0x1BFB16150](v10, v9);

      MEMORY[0x1BFB16150](34, 0xE100000000000000);
      v12 = v21[0];
      v13 = v21[1];
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v2 = sub_1BBA86A94(0, *(v2 + 2) + 1, 1, v2);
      }

      v15 = *(v2 + 2);
      v14 = *(v2 + 3);
      if (v15 >= v14 >> 1)
      {
        v2 = sub_1BBA86A94((v14 > 1), v15 + 1, 1, v2);
      }

      *(v2 + 2) = v15 + 1;
      v16 = &v2[16 * v15];
      *(v16 + 4) = v12;
      *(v16 + 5) = v13;
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7B590);
  sub_1BBA86BA4();
  v17 = sub_1BBB83938();
  v19 = v18;

  MEMORY[0x1BFB16150](v17, v19);

  MEMORY[0x1BFB16150](41, 0xE100000000000000);
  return strcpy(v21, "Screen(");
}

uint64_t IntelligenceElement.Screen.init(type:connectionType:identifier:)@<X0>(_BYTE *a1@<X0>, _BYTE *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v10 = _s6ScreenV7StorageVMa();
  v11 = v10 - 8;
  MEMORY[0x1EEE9AC00](v10);
  v13 = v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  LOBYTE(a1) = *a1;
  LOBYTE(a2) = *a2;
  sub_1BBAA8D28(v27);
  v14 = *(v11 + 52);
  v15 = type metadata accessor for IntelligenceImage(0);
  (*(*(v15 - 8) + 56))(&v13[v14], 1, 1, v15);
  v16 = v27[12];
  v17 = v27[13];
  v18 = v27[10];
  *(v13 + 264) = v27[11];
  *(v13 + 280) = v16;
  v19 = v27[14];
  *(v13 + 296) = v17;
  *(v13 + 312) = v19;
  *(v13 + 24) = 0u;
  *(v13 + 40) = 0u;
  *(v13 + 72) = xmmword_1BBB89870;
  v20 = v27[6];
  *(v13 + 200) = v27[7];
  v21 = v27[9];
  *(v13 + 216) = v27[8];
  *(v13 + 232) = v21;
  *(v13 + 248) = v18;
  v22 = v27[2];
  *(v13 + 136) = v27[3];
  v23 = v27[5];
  *(v13 + 152) = v27[4];
  *(v13 + 168) = v23;
  *(v13 + 184) = v20;
  v24 = v27[1];
  *(v13 + 88) = v27[0];
  *(v13 + 104) = v24;
  *v13 = a1;
  v13[1] = a2;
  *(v13 + 1) = a3;
  *(v13 + 2) = a4;
  v13[56] = 1;
  *(v13 + 8) = 0x3FF0000000000000;
  *(v13 + 120) = v22;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7D438);
  v25 = swift_allocObject();
  result = sub_1BBAAB49C(v13, v25 + *(*v25 + 88), _s6ScreenV7StorageVMa);
  *a5 = v25;
  return result;
}

uint64_t IntelligenceElement.Screen.init(type:identifier:)@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v8 = _s6ScreenV7StorageVMa();
  v9 = v8 - 8;
  MEMORY[0x1EEE9AC00](v8);
  v11 = v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  LOBYTE(a1) = *a1;
  sub_1BBAA8D28(v26);
  v12 = *(v9 + 52);
  v13 = type metadata accessor for IntelligenceImage(0);
  (*(*(v13 - 8) + 56))(&v11[v12], 1, 1, v13);
  v14 = v26[12];
  v15 = v26[13];
  v16 = v26[10];
  *(v11 + 264) = v26[11];
  *(v11 + 280) = v14;
  v17 = v26[14];
  *(v11 + 296) = v15;
  *(v11 + 312) = v17;
  *(v11 + 24) = 0u;
  *(v11 + 40) = 0u;
  *(v11 + 72) = xmmword_1BBB89870;
  v18 = v26[6];
  *(v11 + 200) = v26[7];
  v19 = v26[9];
  *(v11 + 216) = v26[8];
  *(v11 + 232) = v19;
  *(v11 + 248) = v16;
  v20 = v26[4];
  v21 = v26[2];
  *(v11 + 136) = v26[3];
  v22 = v26[5];
  *(v11 + 152) = v20;
  *(v11 + 168) = v22;
  *(v11 + 184) = v18;
  v23 = v26[1];
  *(v11 + 88) = v26[0];
  *(v11 + 104) = v23;
  *v11 = a1;
  v11[1] = 0;
  *(v11 + 1) = a2;
  *(v11 + 2) = a3;
  v11[56] = 1;
  *(v11 + 8) = 0x3FF0000000000000;
  *(v11 + 120) = v21;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7D438);
  v24 = swift_allocObject();
  result = sub_1BBAAB49C(v11, v24 + *(*v24 + 88), _s6ScreenV7StorageVMa);
  *a4 = v24;
  return result;
}

uint64_t sub_1BBB63554(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7B7F8);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_1BBB635C4()
{
  result = qword_1EBC7D450;
  if (!qword_1EBC7D450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7D450);
  }

  return result;
}

unint64_t sub_1BBB63618()
{
  result = qword_1ED6BDD98;
  if (!qword_1ED6BDD98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6BDD98);
  }

  return result;
}

uint64_t sub_1BBB6366C(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1BBB63684(uint64_t a1)
{
  v2 = type metadata accessor for IntelligenceImage(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1BBB636E0()
{
  result = qword_1ED6BDCC0;
  if (!qword_1ED6BDCC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6BDCC0);
  }

  return result;
}

unint64_t sub_1BBB63734()
{
  result = qword_1ED6BE338;
  if (!qword_1ED6BE338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6BE338);
  }

  return result;
}

unint64_t sub_1BBB63788()
{
  result = qword_1EBC7D488;
  if (!qword_1EBC7D488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7D488);
  }

  return result;
}

unint64_t sub_1BBB637DC()
{
  result = qword_1EBC7D4D8;
  if (!qword_1EBC7D4D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7D4D8);
  }

  return result;
}

unint64_t sub_1BBB63834()
{
  result = qword_1EBC7D4F8;
  if (!qword_1EBC7D4F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7D4F8);
  }

  return result;
}

unint64_t sub_1BBB6388C()
{
  result = qword_1EBC7D500;
  if (!qword_1EBC7D500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7D500);
  }

  return result;
}

void sub_1BBB639B8()
{
  sub_1BBB63B4C(319, &qword_1ED6BE480);
  if (v0 <= 0x3F)
  {
    sub_1BBB63B98(319, &qword_1EBC7B3A8, type metadata accessor for CGRect);
    if (v1 <= 0x3F)
    {
      sub_1BBB63AFC();
      if (v2 <= 0x3F)
      {
        sub_1BBB63B4C(319, &qword_1ED6BDCB8);
        if (v3 <= 0x3F)
        {
          sub_1BBB63B98(319, &qword_1ED6BDCA0, type metadata accessor for IntelligenceImage);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_1BBB63AFC()
{
  if (!qword_1EBC7B538)
  {
    v0 = sub_1BBB83E98();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBC7B538);
    }
  }
}

void sub_1BBB63B4C(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_1BBB83E98();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

void sub_1BBB63B98(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1BBB83E98();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_1BBB63BF0()
{
  result = qword_1EBC7D508;
  if (!qword_1EBC7D508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7D508);
  }

  return result;
}

unint64_t sub_1BBB63C48()
{
  result = qword_1EBC7D510;
  if (!qword_1EBC7D510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7D510);
  }

  return result;
}

unint64_t sub_1BBB63CA0()
{
  result = qword_1EBC7D518;
  if (!qword_1EBC7D518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7D518);
  }

  return result;
}

unint64_t sub_1BBB63CF8()
{
  result = qword_1EBC7D520;
  if (!qword_1EBC7D520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7D520);
  }

  return result;
}

unint64_t sub_1BBB63D50()
{
  result = qword_1EBC7D528;
  if (!qword_1EBC7D528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7D528);
  }

  return result;
}

unint64_t sub_1BBB63DA8()
{
  result = qword_1EBC7D530;
  if (!qword_1EBC7D530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7D530);
  }

  return result;
}

unint64_t sub_1BBB63E00()
{
  result = qword_1EBC7D538;
  if (!qword_1EBC7D538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7D538);
  }

  return result;
}

unint64_t sub_1BBB63E58()
{
  result = qword_1EBC7D540;
  if (!qword_1EBC7D540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7D540);
  }

  return result;
}

unint64_t sub_1BBB63EB0()
{
  result = qword_1EBC7D548;
  if (!qword_1EBC7D548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7D548);
  }

  return result;
}

unint64_t sub_1BBB63F08()
{
  result = qword_1ED6BE340;
  if (!qword_1ED6BE340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6BE340);
  }

  return result;
}

unint64_t sub_1BBB63F60()
{
  result = qword_1ED6BE348;
  if (!qword_1ED6BE348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6BE348);
  }

  return result;
}

unint64_t sub_1BBB63FB8()
{
  result = qword_1ED6BE328;
  if (!qword_1ED6BE328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6BE328);
  }

  return result;
}

unint64_t sub_1BBB64010()
{
  result = qword_1ED6BE330;
  if (!qword_1ED6BE330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6BE330);
  }

  return result;
}

unint64_t sub_1BBB64068()
{
  result = qword_1ED6BE318;
  if (!qword_1ED6BE318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6BE318);
  }

  return result;
}

unint64_t sub_1BBB640C0()
{
  result = qword_1ED6BE320;
  if (!qword_1ED6BE320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6BE320);
  }

  return result;
}

unint64_t sub_1BBB64118()
{
  result = qword_1ED6BE350;
  if (!qword_1ED6BE350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6BE350);
  }

  return result;
}

unint64_t sub_1BBB64170()
{
  result = qword_1ED6BE358;
  if (!qword_1ED6BE358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6BE358);
  }

  return result;
}

unint64_t sub_1BBB641C8()
{
  result = qword_1ED6BE368;
  if (!qword_1ED6BE368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6BE368);
  }

  return result;
}

unint64_t sub_1BBB64220()
{
  result = qword_1ED6BE370;
  if (!qword_1ED6BE370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6BE370);
  }

  return result;
}

uint64_t sub_1BBB64274()
{
  v0 = sub_1BBB84108();

  if (v0 >= 8)
  {
    return 8;
  }

  else
  {
    return v0;
  }
}

void IntelligenceElement.EdgeInsets.init(top:left:bottom:right:)(double *a1@<X8>, double a2@<D0>, double a3@<D1>, double a4@<D2>, double a5@<D3>)
{
  *a1 = a2;
  a1[1] = a3;
  a1[2] = a4;
  a1[3] = a5;
}

void IntelligenceElement.EdgeInsets.init(inset:)(double *a1@<X8>, double a2@<D0>)
{
  *a1 = a2;
  a1[1] = a2;
  a1[2] = a2;
  a1[3] = a2;
}

double sub_1BBB64398()
{
  result = 0.0;
  xmmword_1EBC7D550 = 0u;
  unk_1EBC7D560 = 0u;
  return result;
}

double static IntelligenceElement.EdgeInsets.zero.getter@<D0>(_OWORD *a1@<X8>)
{
  if (qword_1EBC7B568 != -1)
  {
    v3 = a1;
    swift_once();
    a1 = v3;
  }

  result = *&xmmword_1EBC7D550;
  v2 = unk_1EBC7D560;
  *a1 = xmmword_1EBC7D550;
  a1[1] = v2;
  return result;
}

uint64_t IntelligenceElement.EdgeInsets.description.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7BC00);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1BBB85CF0;
  v6 = MEMORY[0x1E69E7DE0];
  *(v5 + 56) = MEMORY[0x1E69E7DE0];
  v7 = sub_1BBAE6D98();
  *(v5 + 64) = v7;
  *(v5 + 32) = v1;
  *(v5 + 96) = v6;
  *(v5 + 104) = v7;
  *(v5 + 72) = v2;
  *(v5 + 136) = v6;
  *(v5 + 144) = v7;
  *(v5 + 112) = v3;
  *(v5 + 176) = v6;
  *(v5 + 184) = v7;
  *(v5 + 152) = v4;
  return sub_1BBB83A28();
}

uint64_t sub_1BBB644D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1BBB647DC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1BBB644FC(uint64_t a1)
{
  v2 = sub_1BBA9E938();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BBB64538(uint64_t a1)
{
  v2 = sub_1BBA9E938();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t IntelligenceElement.EdgeInsets.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  if (*v0 == 0.0)
  {
    v1 = 0.0;
  }

  MEMORY[0x1BFB16A80](*&v1);
  if (v2 == 0.0)
  {
    v5 = 0.0;
  }

  else
  {
    v5 = v2;
  }

  MEMORY[0x1BFB16A80](*&v5);
  if (v3 == 0.0)
  {
    v6 = 0.0;
  }

  else
  {
    v6 = v3;
  }

  MEMORY[0x1BFB16A80](*&v6);
  if (v4 == 0.0)
  {
    v7 = 0.0;
  }

  else
  {
    v7 = v4;
  }

  return MEMORY[0x1BFB16A80](*&v7);
}

uint64_t IntelligenceElement.EdgeInsets.hashValue.getter()
{
  sub_1BBB843D8();
  IntelligenceElement.EdgeInsets.hash(into:)();
  return sub_1BBB84438();
}

uint64_t sub_1BBB64640()
{
  sub_1BBB843D8();
  IntelligenceElement.EdgeInsets.hash(into:)();
  return sub_1BBB84438();
}

uint64_t sub_1BBB64690()
{
  sub_1BBB843D8();
  IntelligenceElement.EdgeInsets.hash(into:)();
  return sub_1BBB84438();
}

unint64_t sub_1BBB64720()
{
  result = qword_1EBC7D580;
  if (!qword_1EBC7D580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7D580);
  }

  return result;
}

unint64_t sub_1BBB64788()
{
  result = qword_1EBC7D588;
  if (!qword_1EBC7D588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7D588);
  }

  return result;
}

uint64_t sub_1BBB647DC(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 7368564 && a2 == 0xE300000000000000;
  if (v3 || (sub_1BBB842F8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1952867692 && a2 == 0xE400000000000000 || (sub_1BBB842F8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6D6F74746F62 && a2 == 0xE600000000000000 || (sub_1BBB842F8() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x7468676972 && a2 == 0xE500000000000000)
  {

    return 3;
  }

  else
  {
    v6 = sub_1BBB842F8();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_1BBB6493C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = 0;
    v5 = (a1 + 32);
    do
    {
      v7 = *v5++;
      v6 = v7;
      if ((v7 & ~v4) == 0)
      {
        v6 = 0;
      }

      v4 |= v6;
      --v3;
    }

    while (v3);
  }

  else
  {
    v4 = 0;
  }

  *a2 = v4;
  return result;
}

uint64_t IntelligenceCommand.title.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t IntelligenceCommand.title.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t IntelligenceCommand.standaloneTitle.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t IntelligenceCommand.standaloneTitle.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t IntelligenceCommand.menuHierarchyComponents.setter(uint64_t a1)
{

  *(v1 + 32) = a1;
  return result;
}

uint64_t sub_1BBB64C90(char a1)
{
  result = 0x776F7272417075;
  switch(a1)
  {
    case 1:
      v3 = 1853321060;
      goto LABEL_10;
    case 2:
      v3 = 1952867692;
LABEL_10:
      result = v3 | 0x6F72724100000000;
      break;
    case 3:
      result = 0x7272417468676972;
      break;
    case 4:
      result = 0x6574656C6564;
      break;
    case 5:
      result = 0x4464726177726F66;
      break;
    case 6:
      result = 0x7261656C63;
      break;
    case 7:
      result = 1701670760;
      break;
    case 8:
      result = 6581861;
      break;
    case 9:
      result = 0x705565676170;
      break;
    case 10:
      result = 0x6E776F4465676170;
      break;
    case 11:
      result = 6447476;
      break;
    case 12:
      result = 0x6563617073;
      break;
    case 13:
      result = 0x6E7275746572;
      break;
    case 14:
      result = 0x657061637365;
      break;
    case 15:
      result = 0x6E6F6974636E7566;
      break;
    case 16:
      result = 0x6D6F74737563;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1BBB64E20(uint64_t a1)
{
  v2 = sub_1BBB6B838();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BBB64E5C(uint64_t a1)
{
  v2 = sub_1BBB6B838();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1BBB64EA0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1BBB6DAD4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1BBB64ED4(uint64_t a1)
{
  v2 = sub_1BBB6B49C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BBB64F10(uint64_t a1)
{
  v2 = sub_1BBB6B49C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1BBB64F4C(uint64_t a1)
{
  v2 = sub_1BBB6B4F0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BBB64F88(uint64_t a1)
{
  v2 = sub_1BBB6B4F0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1BBB64FC4(uint64_t a1)
{
  v2 = sub_1BBB6B8E0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BBB65000(uint64_t a1)
{
  v2 = sub_1BBB6B8E0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1BBB6503C(uint64_t a1)
{
  v2 = sub_1BBB6B9DC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BBB65078(uint64_t a1)
{
  v2 = sub_1BBB6B9DC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1BBB650B4(uint64_t a1)
{
  v2 = sub_1BBB6B790();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BBB650F0(uint64_t a1)
{
  v2 = sub_1BBB6B790();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1BBB6512C(uint64_t a1)
{
  v2 = sub_1BBB6B598();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BBB65168(uint64_t a1)
{
  v2 = sub_1BBB6B598();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1BBB651A4(uint64_t a1)
{
  v2 = sub_1BBB6B88C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BBB651E0(uint64_t a1)
{
  v2 = sub_1BBB6B88C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1BBB6521C(uint64_t a1)
{
  v2 = sub_1BBB6B544();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BBB65258(uint64_t a1)
{
  v2 = sub_1BBB6B544();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1BBB65294(uint64_t a1)
{
  v2 = sub_1BBB6B7E4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BBB652D0(uint64_t a1)
{
  v2 = sub_1BBB6B7E4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1BBB6530C(uint64_t a1)
{
  v2 = sub_1BBB6B988();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BBB65348(uint64_t a1)
{
  v2 = sub_1BBB6B988();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1BBB65384(uint64_t a1)
{
  v2 = sub_1BBB6B6E8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BBB653C0(uint64_t a1)
{
  v2 = sub_1BBB6B6E8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1BBB653FC(uint64_t a1)
{
  v2 = sub_1BBB6B73C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BBB65438(uint64_t a1)
{
  v2 = sub_1BBB6B73C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1BBB65474(uint64_t a1)
{
  v2 = sub_1BBB6B5EC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BBB654B0(uint64_t a1)
{
  v2 = sub_1BBB6B5EC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1BBB654EC(uint64_t a1)
{
  v2 = sub_1BBB6B934();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BBB65528(uint64_t a1)
{
  v2 = sub_1BBB6B934();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1BBB65564(uint64_t a1)
{
  v2 = sub_1BBB6B640();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BBB655A0(uint64_t a1)
{
  v2 = sub_1BBB6B640();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1BBB655DC(uint64_t a1)
{
  v2 = sub_1BBB6B694();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BBB65618(uint64_t a1)
{
  v2 = sub_1BBB6B694();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1BBB65654(uint64_t a1)
{
  v2 = sub_1BBB6BA30();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BBB65690(uint64_t a1)
{
  v2 = sub_1BBB6BA30();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t IntelligenceCommand.KeyboardShortcut.KeyEquivalent.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7D598);
  v105 = *(v3 - 8);
  v106 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v104 = &v58 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7D5A0);
  v102 = *(v5 - 8);
  v103 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v101 = &v58 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7D5A8);
  v99 = *(v7 - 8);
  v100 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v98 = &v58 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7D5B0);
  v96 = *(v9 - 8);
  v97 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v95 = &v58 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7D5B8);
  v93 = *(v11 - 8);
  v94 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v92 = &v58 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7D5C0);
  v90 = *(v13 - 8);
  v91 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v89 = &v58 - v14;
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7D5C8);
  v87 = *(v88 - 8);
  MEMORY[0x1EEE9AC00](v88);
  v86 = &v58 - v15;
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7D5D0);
  v84 = *(v85 - 8);
  MEMORY[0x1EEE9AC00](v85);
  v83 = &v58 - v16;
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7D5D8);
  v81 = *(v82 - 8);
  MEMORY[0x1EEE9AC00](v82);
  v80 = &v58 - v17;
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7D5E0);
  v78 = *(v79 - 8);
  MEMORY[0x1EEE9AC00](v79);
  v77 = &v58 - v18;
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7D5E8);
  v75 = *(v76 - 8);
  MEMORY[0x1EEE9AC00](v76);
  v74 = &v58 - v19;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7D5F0);
  v72 = *(v73 - 8);
  MEMORY[0x1EEE9AC00](v73);
  v71 = &v58 - v20;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7D5F8);
  v69 = *(v70 - 8);
  MEMORY[0x1EEE9AC00](v70);
  v68 = &v58 - v21;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7D600);
  v66 = *(v67 - 8);
  MEMORY[0x1EEE9AC00](v67);
  v65 = &v58 - v22;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7D608);
  v63 = *(v64 - 8);
  MEMORY[0x1EEE9AC00](v64);
  v62 = &v58 - v23;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7D610);
  v60 = *(v61 - 8);
  MEMORY[0x1EEE9AC00](v61);
  v59 = &v58 - v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7D618);
  v58 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v58 - v26;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7D620);
  v29 = *(v28 - 8);
  v108 = v28;
  v109 = v29;
  MEMORY[0x1EEE9AC00](v28);
  v31 = &v58 - v30;
  v32 = *v1;
  v33 = *(v1 + 16);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BBB6B49C();
  v107 = v31;
  sub_1BBB84478();
  if (!v33)
  {
    v111 = 15;
    sub_1BBB6B544();
    v34 = v101;
    v36 = v107;
    v35 = v108;
    sub_1BBB84208();
    v37 = v103;
    sub_1BBB84278();
    v38 = v102;
    goto LABEL_5;
  }

  if (v33 == 1)
  {
    v111 = 16;
    sub_1BBB6B4F0();
    v34 = v104;
    v36 = v107;
    v35 = v108;
    sub_1BBB84208();
    v37 = v106;
    sub_1BBB84248();
    v38 = v105;
LABEL_5:
    (*(v38 + 8))(v34, v37);
    return (*(v109 + 8))(v36, v35);
  }

  switch(v32)
  {
    case 1:
      v111 = 1;
      sub_1BBB6B9DC();
      v53 = v59;
      v41 = v107;
      v40 = v108;
      sub_1BBB84208();
      v46 = *(v60 + 8);
      v47 = v53;
      v48 = &v93;
      goto LABEL_23;
    case 2:
      v111 = 2;
      sub_1BBB6B988();
      v50 = v62;
      v41 = v107;
      v40 = v108;
      sub_1BBB84208();
      v46 = *(v63 + 8);
      v47 = v50;
      v48 = &v96;
      goto LABEL_23;
    case 3:
      v111 = 3;
      sub_1BBB6B934();
      v51 = v65;
      v41 = v107;
      v40 = v108;
      sub_1BBB84208();
      v46 = *(v66 + 8);
      v47 = v51;
      v48 = &v99;
      goto LABEL_23;
    case 4:
      v111 = 4;
      sub_1BBB6B8E0();
      v45 = v68;
      v41 = v107;
      v40 = v108;
      sub_1BBB84208();
      v46 = *(v69 + 8);
      v47 = v45;
      v48 = &v102;
      goto LABEL_23;
    case 5:
      v111 = 5;
      sub_1BBB6B88C();
      v54 = v71;
      v41 = v107;
      v40 = v108;
      sub_1BBB84208();
      v46 = *(v72 + 8);
      v47 = v54;
      v48 = &v105;
      goto LABEL_23;
    case 6:
      v111 = 6;
      sub_1BBB6B838();
      v55 = v74;
      v41 = v107;
      v40 = v108;
      sub_1BBB84208();
      v46 = *(v75 + 8);
      v47 = v55;
      v48 = &v108;
      goto LABEL_23;
    case 7:
      v111 = 7;
      sub_1BBB6B7E4();
      v52 = v77;
      v41 = v107;
      v40 = v108;
      sub_1BBB84208();
      v46 = *(v78 + 8);
      v47 = v52;
      v48 = &v110;
      goto LABEL_23;
    case 8:
      v111 = 8;
      sub_1BBB6B790();
      v57 = v80;
      v41 = v107;
      v40 = v108;
      sub_1BBB84208();
      v46 = *(v81 + 8);
      v47 = v57;
      v48 = &v112;
      goto LABEL_23;
    case 9:
      v111 = 9;
      sub_1BBB6B73C();
      v49 = v83;
      v41 = v107;
      v40 = v108;
      sub_1BBB84208();
      v46 = *(v84 + 8);
      v47 = v49;
      v48 = &v113;
      goto LABEL_23;
    case 10:
      v111 = 10;
      sub_1BBB6B6E8();
      v56 = v86;
      v41 = v107;
      v40 = v108;
      sub_1BBB84208();
      v46 = *(v87 + 8);
      v47 = v56;
      v48 = &v114;
LABEL_23:
      v46(v47, *(v48 - 32));
      return (*(v109 + 8))(v41, v40);
    case 11:
      v111 = 11;
      sub_1BBB6B694();
      v42 = v89;
      v41 = v107;
      v40 = v108;
      sub_1BBB84208();
      v44 = v90;
      v43 = v91;
      goto LABEL_19;
    case 12:
      v111 = 12;
      sub_1BBB6B640();
      v42 = v92;
      v41 = v107;
      v40 = v108;
      sub_1BBB84208();
      v44 = v93;
      v43 = v94;
      goto LABEL_19;
    case 13:
      v111 = 13;
      sub_1BBB6B5EC();
      v42 = v95;
      v41 = v107;
      v40 = v108;
      sub_1BBB84208();
      v44 = v96;
      v43 = v97;
      goto LABEL_19;
    case 14:
      v111 = 14;
      sub_1BBB6B598();
      v42 = v98;
      v41 = v107;
      v40 = v108;
      sub_1BBB84208();
      v44 = v99;
      v43 = v100;
LABEL_19:
      (*(v44 + 8))(v42, v43);
      break;
    default:
      v111 = 0;
      sub_1BBB6BA30();
      v41 = v107;
      v40 = v108;
      sub_1BBB84208();
      (*(v58 + 8))(v27, v25);
      break;
  }

  return (*(v109 + 8))(v41, v40);
}

uint64_t IntelligenceCommand.KeyboardShortcut.KeyEquivalent.hash(into:)()
{
  v1 = *v0;
  if (!*(v0 + 16))
  {
    MEMORY[0x1BFB16A50](15);
    v3 = v1;
    return MEMORY[0x1BFB16A50](v3);
  }

  if (*(v0 + 16) != 1)
  {
    switch(v1)
    {
      case 1:
        v3 = 1;
        break;
      case 2:
        v3 = 2;
        break;
      case 3:
        v3 = 3;
        break;
      case 4:
        v3 = 4;
        break;
      case 5:
        v3 = 5;
        break;
      case 6:
        v3 = 6;
        break;
      case 7:
        v3 = 7;
        break;
      case 8:
        v3 = 8;
        break;
      case 9:
        v3 = 9;
        break;
      case 10:
        v3 = 10;
        break;
      case 11:
        v3 = 11;
        break;
      case 12:
        v3 = 12;
        break;
      case 13:
        v3 = 13;
        break;
      case 14:
        v3 = 14;
        break;
      default:
        v3 = 0;
        break;
    }

    return MEMORY[0x1BFB16A50](v3);
  }

  MEMORY[0x1BFB16A50](16);

  return sub_1BBB83AC8();
}

uint64_t IntelligenceCommand.KeyboardShortcut.KeyEquivalent.hashValue.getter()
{
  sub_1BBB843D8();
  IntelligenceCommand.KeyboardShortcut.KeyEquivalent.hash(into:)();
  return sub_1BBB84438();
}

uint64_t IntelligenceCommand.KeyboardShortcut.KeyEquivalent.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v136 = a2;
  v118 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7D6B8);
  v89 = *(v118 - 8);
  MEMORY[0x1EEE9AC00](v118);
  v131 = &v84 - v3;
  v119 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7D6C0);
  v88 = *(v119 - 8);
  MEMORY[0x1EEE9AC00](v119);
  v130 = &v84 - v4;
  v135 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7D6C8);
  v117 = *(v135 - 8);
  MEMORY[0x1EEE9AC00](v135);
  v129 = &v84 - v5;
  v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7D6D0);
  v115 = *(v116 - 8);
  MEMORY[0x1EEE9AC00](v116);
  v128 = &v84 - v6;
  v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7D6D8);
  v113 = *(v114 - 8);
  MEMORY[0x1EEE9AC00](v114);
  v127 = &v84 - v7;
  v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7D6E0);
  v111 = *(v112 - 8);
  MEMORY[0x1EEE9AC00](v112);
  v126 = &v84 - v8;
  v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7D6E8);
  v109 = *(v110 - 8);
  MEMORY[0x1EEE9AC00](v110);
  v125 = &v84 - v9;
  v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7D6F0);
  v107 = *(v108 - 8);
  MEMORY[0x1EEE9AC00](v108);
  v124 = &v84 - v10;
  v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7D6F8);
  v105 = *(v106 - 8);
  MEMORY[0x1EEE9AC00](v106);
  v123 = &v84 - v11;
  v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7D700);
  v103 = *(v104 - 8);
  MEMORY[0x1EEE9AC00](v104);
  v134 = &v84 - v12;
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7D708);
  v101 = *(v102 - 8);
  MEMORY[0x1EEE9AC00](v102);
  v133 = &v84 - v13;
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7D710);
  v99 = *(v100 - 8);
  MEMORY[0x1EEE9AC00](v100);
  v132 = &v84 - v14;
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7D718);
  v97 = *(v98 - 8);
  MEMORY[0x1EEE9AC00](v98);
  v122 = &v84 - v15;
  v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7D720);
  v95 = *(v96 - 8);
  MEMORY[0x1EEE9AC00](v96);
  v121 = &v84 - v16;
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7D728);
  v93 = *(v94 - 8);
  MEMORY[0x1EEE9AC00](v94);
  v120 = &v84 - v17;
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7D730);
  v91 = *(v92 - 8);
  MEMORY[0x1EEE9AC00](v92);
  v19 = &v84 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7D738);
  v90 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v84 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7D740);
  v24 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v26 = &v84 - v25;
  v27 = a1[3];
  v138 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v27);
  sub_1BBB6B49C();
  v28 = v137;
  sub_1BBB84458();
  if (v28)
  {
    goto LABEL_8;
  }

  v85 = v22;
  v84 = v20;
  v86 = v19;
  v29 = v132;
  v30 = v133;
  v31 = v134;
  v32 = v135;
  v87 = 0;
  v137 = v24;
  v33 = v136;
  v34 = sub_1BBB841F8();
  v35 = (2 * *(v34 + 16)) | 1;
  v139 = v34;
  v140 = v34 + 32;
  v141 = 0;
  v142 = v35;
  v36 = sub_1BBAD0CC4();
  if (v141 != v142 >> 1)
  {
LABEL_6:
    v41 = sub_1BBB84058();
    swift_allocError();
    v43 = v42;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7BB30);
    *v43 = &type metadata for IntelligenceCommand.KeyboardShortcut.KeyEquivalent;
    sub_1BBB84128();
    sub_1BBB84048();
    (*(*(v41 - 8) + 104))(v43, *MEMORY[0x1E69E6AF8], v41);
    swift_willThrow();
LABEL_7:
    (*(v137 + 8))(v26, v23);
    swift_unknownObjectRelease();
LABEL_8:
    v44 = v138;
    return __swift_destroy_boxed_opaque_existential_1(v44);
  }

  switch(v36)
  {
    case 0:
      v143 = 0;
      sub_1BBB6BA30();
      v37 = v85;
      v38 = v87;
      sub_1BBB84118();
      v39 = v38;
      if (v38)
      {
        goto LABEL_7;
      }

      (*(v90 + 8))(v37, v84);
      (*(v137 + 8))(v26, v23);
      swift_unknownObjectRelease();
      v40 = 0;
      goto LABEL_25;
    case 1:
      v143 = 1;
      sub_1BBB6B9DC();
      v71 = v86;
      v72 = v87;
      sub_1BBB84118();
      if (v72)
      {
        goto LABEL_7;
      }

      (*(v91 + 8))(v71, v92);
      (*(v137 + 8))(v26, v23);
      swift_unknownObjectRelease();
      v40 = 0;
      v50 = 2;
      v39 = 1;
      v51 = v138;
      goto LABEL_46;
    case 2:
      v143 = 2;
      sub_1BBB6B988();
      v60 = v120;
      v61 = v87;
      sub_1BBB84118();
      if (v61)
      {
        goto LABEL_7;
      }

      (*(v93 + 8))(v60, v94);
      (*(v137 + 8))(v26, v23);
      swift_unknownObjectRelease();
      v40 = 0;
      v39 = 2;
LABEL_25:
      v50 = 2;
      v51 = v138;
      goto LABEL_46;
    case 3:
      v143 = 3;
      sub_1BBB6B934();
      v68 = v121;
      v69 = v87;
      sub_1BBB84118();
      if (v69)
      {
        goto LABEL_7;
      }

      (*(v95 + 8))(v68, v96);
      (*(v137 + 8))(v26, v23);
      swift_unknownObjectRelease();
      v40 = 0;
      v50 = 2;
      v39 = 3;
      v51 = v138;
      goto LABEL_46;
    case 4:
      v143 = 4;
      sub_1BBB6B8E0();
      v54 = v122;
      v55 = v87;
      sub_1BBB84118();
      if (v55)
      {
        goto LABEL_7;
      }

      (*(v97 + 8))(v54, v98);
      (*(v137 + 8))(v26, v23);
      swift_unknownObjectRelease();
      v40 = 0;
      v50 = 2;
      v39 = 4;
      v51 = v138;
      goto LABEL_46;
    case 5:
      v143 = 5;
      sub_1BBB6B88C();
      v73 = v87;
      sub_1BBB84118();
      if (v73)
      {
        goto LABEL_7;
      }

      (*(v99 + 8))(v29, v100);
      (*(v137 + 8))(v26, v23);
      swift_unknownObjectRelease();
      v40 = 0;
      v50 = 2;
      v39 = 5;
      v51 = v138;
      goto LABEL_46;
    case 6:
      v143 = 6;
      sub_1BBB6B838();
      v76 = v87;
      sub_1BBB84118();
      if (v76)
      {
        goto LABEL_7;
      }

      (*(v101 + 8))(v30, v102);
      (*(v137 + 8))(v26, v23);
      swift_unknownObjectRelease();
      v40 = 0;
      v50 = 2;
      v39 = 6;
      v51 = v138;
      goto LABEL_46;
    case 7:
      v143 = 7;
      sub_1BBB6B7E4();
      v70 = v87;
      sub_1BBB84118();
      if (v70)
      {
        goto LABEL_7;
      }

      (*(v103 + 8))(v31, v104);
      (*(v137 + 8))(v26, v23);
      swift_unknownObjectRelease();
      v40 = 0;
      v50 = 2;
      v39 = 7;
      v51 = v138;
      goto LABEL_46;
    case 8:
      v143 = 8;
      sub_1BBB6B790();
      v79 = v123;
      v80 = v87;
      sub_1BBB84118();
      if (v80)
      {
        goto LABEL_7;
      }

      (*(v105 + 8))(v79, v106);
      (*(v137 + 8))(v26, v23);
      swift_unknownObjectRelease();
      v40 = 0;
      v50 = 2;
      v39 = 8;
      v51 = v138;
      goto LABEL_46;
    case 9:
      v143 = 9;
      sub_1BBB6B73C();
      v58 = v124;
      v59 = v87;
      sub_1BBB84118();
      if (v59)
      {
        goto LABEL_7;
      }

      (*(v107 + 8))(v58, v108);
      (*(v137 + 8))(v26, v23);
      swift_unknownObjectRelease();
      v40 = 0;
      v50 = 2;
      v39 = 9;
      v51 = v138;
      goto LABEL_46;
    case 10:
      v143 = 10;
      sub_1BBB6B6E8();
      v77 = v125;
      v78 = v87;
      sub_1BBB84118();
      if (v78)
      {
        goto LABEL_7;
      }

      (*(v109 + 8))(v77, v110);
      (*(v137 + 8))(v26, v23);
      swift_unknownObjectRelease();
      v40 = 0;
      v50 = 2;
      v39 = 10;
      v51 = v138;
      goto LABEL_46;
    case 11:
      v143 = 11;
      sub_1BBB6B694();
      v52 = v126;
      v53 = v87;
      sub_1BBB84118();
      if (v53)
      {
        goto LABEL_7;
      }

      (*(v111 + 8))(v52, v112);
      (*(v137 + 8))(v26, v23);
      swift_unknownObjectRelease();
      v40 = 0;
      v50 = 2;
      v39 = 11;
      v51 = v138;
      goto LABEL_46;
    case 12:
      v143 = 12;
      sub_1BBB6B640();
      v56 = v127;
      v57 = v87;
      sub_1BBB84118();
      if (v57)
      {
        goto LABEL_7;
      }

      (*(v113 + 8))(v56, v114);
      (*(v137 + 8))(v26, v23);
      swift_unknownObjectRelease();
      v40 = 0;
      v50 = 2;
      v39 = 12;
      v51 = v138;
      goto LABEL_46;
    case 13:
      v143 = 13;
      sub_1BBB6B5EC();
      v74 = v128;
      v75 = v87;
      sub_1BBB84118();
      if (v75)
      {
        goto LABEL_7;
      }

      (*(v115 + 8))(v74, v116);
      (*(v137 + 8))(v26, v23);
      swift_unknownObjectRelease();
      v40 = 0;
      v50 = 2;
      v39 = 13;
      v51 = v138;
      goto LABEL_46;
    case 14:
      v143 = 14;
      sub_1BBB6B598();
      v48 = v129;
      v49 = v87;
      sub_1BBB84118();
      if (v49)
      {
        goto LABEL_7;
      }

      (*(v117 + 8))(v48, v32);
      (*(v137 + 8))(v26, v23);
      swift_unknownObjectRelease();
      v40 = 0;
      v50 = 2;
      v39 = 14;
      v51 = v138;
      goto LABEL_46;
    case 15:
      v143 = 15;
      sub_1BBB6B544();
      v62 = v130;
      v63 = v87;
      sub_1BBB84118();
      if (v63)
      {
        goto LABEL_7;
      }

      v64 = v119;
      v65 = sub_1BBB841A8();
      v66 = v137;
      v67 = v138;
      v39 = v65;
      (*(v88 + 8))(v62, v64);
      (*(v66 + 8))(v26, v23);
      swift_unknownObjectRelease();
      v40 = 0;
      v50 = 0;
      goto LABEL_45;
    case 16:
      v143 = 16;
      sub_1BBB6B4F0();
      v46 = v131;
      v47 = v87;
      sub_1BBB84118();
      if (v47)
      {
        (*(v137 + 8))(v26, v23);
        swift_unknownObjectRelease();
        v44 = v138;
        return __swift_destroy_boxed_opaque_existential_1(v44);
      }

      v81 = v118;
      v82 = sub_1BBB84188();
      v67 = v138;
      v39 = v82;
      v40 = v83;
      (*(v89 + 8))(v46, v81);
      (*(v137 + 8))(v26, v23);
      swift_unknownObjectRelease();
      v50 = 1;
LABEL_45:
      v51 = v67;
LABEL_46:
      *v33 = v39;
      *(v33 + 8) = v40;
      *(v33 + 16) = v50;
      result = __swift_destroy_boxed_opaque_existential_1(v51);
      break;
    default:
      goto LABEL_6;
  }

  return result;
}

uint64_t sub_1BBB67FEC()
{
  sub_1BBB843D8();
  IntelligenceCommand.KeyboardShortcut.KeyEquivalent.hash(into:)();
  return sub_1BBB84438();
}

uint64_t sub_1BBB68044()
{
  sub_1BBB843D8();
  IntelligenceCommand.KeyboardShortcut.KeyEquivalent.hash(into:)();
  return sub_1BBB84438();
}

uint64_t IntelligenceCommand.KeyboardShortcut.keyEquivalent.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  *a1 = v2;
  *(a1 + 8) = v3;
  v4 = *(v1 + 24);
  *(a1 + 16) = v4;
  return sub_1BBB6BA84(v2, v3, v4);
}

uint64_t IntelligenceCommand.KeyboardShortcut.keyEquivalent.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(a1 + 16);
  result = sub_1BBB6BA9C(*(v1 + 8), *(v1 + 16), *(v1 + 24));
  *(v1 + 8) = v2;
  *(v1 + 16) = v3;
  *(v1 + 24) = v4;
  return result;
}

__n128 IntelligenceCommand.KeyboardShortcut.init(modifierKeys:keyEquivalent:)@<Q0>(void *a1@<X0>, __n128 *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = a2[1].n128_u8[0];
  *a3 = *a1;
  result = *a2;
  *(a3 + 8) = *a2;
  *(a3 + 24) = v3;
  return result;
}

uint64_t sub_1BBB6815C()
{
  if (*v0)
  {
    return 0x766975714579656BLL;
  }

  else
  {
    return 0x7265696669646F6DLL;
  }
}

uint64_t sub_1BBB681AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x7265696669646F6DLL && a2 == 0xEC0000007379654BLL;
  if (v6 || (sub_1BBB842F8() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x766975714579656BLL && a2 == 0xED0000746E656C61)
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

uint64_t sub_1BBB68294(uint64_t a1)
{
  v2 = sub_1BBB6BB60();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BBB682D0(uint64_t a1)
{
  v2 = sub_1BBB6BB60();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t IntelligenceCommand.KeyboardShortcut.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7D748);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v12 - v5;
  v8 = *v1;
  v7 = *(v1 + 8);
  v12 = *(v1 + 16);
  v13 = v7;
  v9 = *(v1 + 24);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BBB6BB60();
  sub_1BBB84478();
  v15 = v8;
  v18 = 0;
  sub_1BBB6BBB4();
  v10 = v14;
  sub_1BBB84288();
  if (!v10)
  {
    v15 = v13;
    v16 = v12;
    v17 = v9;
    v18 = 1;
    sub_1BBB6BA84(v13, v12, v9);
    sub_1BBB6BC08();
    sub_1BBB84288();
    sub_1BBB6BA9C(v15, v16, v17);
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t IntelligenceCommand.KeyboardShortcut.hashValue.getter()
{
  v1 = *v0;
  sub_1BBB843D8();
  MEMORY[0x1BFB16A50](v1);
  IntelligenceCommand.KeyboardShortcut.KeyEquivalent.hash(into:)();
  return sub_1BBB84438();
}

uint64_t IntelligenceCommand.KeyboardShortcut.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7D768);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v13 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BBB6BB60();
  sub_1BBB84458();
  if (!v2)
  {
    v15 = 0;
    sub_1BBB6BC5C();
    sub_1BBB841B8();
    v9 = v13;
    v15 = 1;
    sub_1BBB6BCB0();
    sub_1BBB841B8();
    (*(v6 + 8))(v8, v5);
    v10 = v14;
    v11 = v13;
    *a2 = v9;
    *(a2 + 8) = v11;
    *(a2 + 24) = v10;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1BBB6877C()
{
  v1 = *v0;
  sub_1BBB843D8();
  MEMORY[0x1BFB16A50](v1);
  IntelligenceCommand.KeyboardShortcut.KeyEquivalent.hash(into:)();
  return sub_1BBB84438();
}

uint64_t sub_1BBB68850()
{
  v1 = *v0;
  sub_1BBB843D8();
  MEMORY[0x1BFB16A50](v1);
  IntelligenceCommand.KeyboardShortcut.KeyEquivalent.hash(into:)();
  return sub_1BBB84438();
}

uint64_t IntelligenceCommand.keyboardShortcut.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 48);
  v3 = *(v1 + 56);
  v4 = *(v1 + 64);
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  v5 = *(v1 + 72);
  *(a1 + 24) = v5;
  return sub_1BBB6BD04(v2, v3, v4, v5);
}

__n128 IntelligenceCommand.keyboardShortcut.setter(__n128 *a1)
{
  v5 = *a1;
  v2 = a1[1].n128_u64[0];
  v3 = a1[1].n128_u8[8];
  sub_1BBB6BD24(*(v1 + 48), *(v1 + 56), *(v1 + 64), *(v1 + 72));
  result = v5;
  *(v1 + 48) = v5;
  *(v1 + 64) = v2;
  *(v1 + 72) = v3;
  return result;
}

uint64_t sub_1BBB689C8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7D998);
  result = swift_allocObject();
  *(result + 24) = 0;
  *(result + 16) = 0;
  off_1EBC7D590 = result;
  return result;
}

UIIntelligenceSupport::IntelligenceCommand::Identifier_optional __swiftcall IntelligenceCommand.Identifier.init(_:)(Swift::String a1)
{
  v2 = v1;
  v3 = HIBYTE(a1._object) & 0xF;
  v4 = a1._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
  if ((a1._object & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a1._object) & 0xF;
  }

  else
  {
    v5 = a1._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {

    goto LABEL_63;
  }

  if ((a1._object & 0x1000000000000000) != 0)
  {
    v7 = sub_1BBB109B8(a1._countAndFlagsBits, a1._object, 10);
    v28 = v27;

    if (v28)
    {
      goto LABEL_63;
    }

LABEL_66:
    v26 = 0;
    goto LABEL_67;
  }

  if ((a1._object & 0x2000000000000000) != 0)
  {
    v30[0] = a1._countAndFlagsBits;
    v30[1] = a1._object & 0xFFFFFFFFFFFFFFLL;
    if (LOBYTE(a1._countAndFlagsBits) == 43)
    {
      if ((HIBYTE(a1._object) & 0xF) != 0)
      {
        v4 = v3 - 1;
        if (v3 != 1)
        {
          v7 = 0;
          v17 = v30 + 1;
          while (1)
          {
            v18 = *v17 - 48;
            if (v18 > 9)
            {
              break;
            }

            v19 = 10 * v7;
            if ((v7 * 10) >> 64 != (10 * v7) >> 63)
            {
              break;
            }

            v7 = v19 + v18;
            if (__OFADD__(v19, v18))
            {
              break;
            }

            ++v17;
            if (!--v4)
            {
              goto LABEL_62;
            }
          }
        }

        goto LABEL_61;
      }

LABEL_72:
      __break(1u);
      return *&a1._countAndFlagsBits;
    }

    if (LOBYTE(a1._countAndFlagsBits) != 45)
    {
      if ((HIBYTE(a1._object) & 0xF) != 0)
      {
        v7 = 0;
        v22 = v30;
        while (1)
        {
          v23 = *v22 - 48;
          if (v23 > 9)
          {
            break;
          }

          v24 = 10 * v7;
          if ((v7 * 10) >> 64 != (10 * v7) >> 63)
          {
            break;
          }

          v7 = v24 + v23;
          if (__OFADD__(v24, v23))
          {
            break;
          }

          ++v22;
          if (!--v3)
          {
            goto LABEL_60;
          }
        }
      }

      goto LABEL_61;
    }

    if ((HIBYTE(a1._object) & 0xF) != 0)
    {
      v4 = v3 - 1;
      if (v3 != 1)
      {
        v7 = 0;
        v11 = v30 + 1;
        while (1)
        {
          v12 = *v11 - 48;
          if (v12 > 9)
          {
            break;
          }

          v13 = 10 * v7;
          if ((v7 * 10) >> 64 != (10 * v7) >> 63)
          {
            break;
          }

          v7 = v13 - v12;
          if (__OFSUB__(v13, v12))
          {
            break;
          }

          ++v11;
          if (!--v4)
          {
            goto LABEL_62;
          }
        }
      }

      goto LABEL_61;
    }

    goto LABEL_70;
  }

  if ((a1._countAndFlagsBits & 0x1000000000000000) != 0)
  {
    a1._countAndFlagsBits = (a1._object & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    object = a1._object;
    a1._countAndFlagsBits = sub_1BBB84088();
    v4 = a1._object;
    LOBYTE(a1._object) = object;
  }

  v6 = *a1._countAndFlagsBits;
  if (v6 == 43)
  {
    if (v4 >= 1)
    {
      if (--v4)
      {
        v7 = 0;
        if (a1._countAndFlagsBits)
        {
          v14 = (a1._countAndFlagsBits + 1);
          while (1)
          {
            v15 = *v14 - 48;
            if (v15 > 9)
            {
              goto LABEL_61;
            }

            v16 = 10 * v7;
            if ((v7 * 10) >> 64 != (10 * v7) >> 63)
            {
              goto LABEL_61;
            }

            v7 = v16 + v15;
            if (__OFADD__(v16, v15))
            {
              goto LABEL_61;
            }

            ++v14;
            if (!--v4)
            {
              goto LABEL_62;
            }
          }
        }

        goto LABEL_60;
      }

      goto LABEL_61;
    }

    goto LABEL_71;
  }

  if (v6 == 45)
  {
    if (v4 >= 1)
    {
      if (--v4)
      {
        v7 = 0;
        if (a1._countAndFlagsBits)
        {
          v8 = (a1._countAndFlagsBits + 1);
          while (1)
          {
            v9 = *v8 - 48;
            if (v9 > 9)
            {
              goto LABEL_61;
            }

            v10 = 10 * v7;
            if ((v7 * 10) >> 64 != (10 * v7) >> 63)
            {
              goto LABEL_61;
            }

            v7 = v10 - v9;
            if (__OFSUB__(v10, v9))
            {
              goto LABEL_61;
            }

            ++v8;
            if (!--v4)
            {
              goto LABEL_62;
            }
          }
        }

LABEL_60:
        LOBYTE(v4) = 0;
        goto LABEL_62;
      }

      goto LABEL_61;
    }

    __break(1u);
LABEL_70:
    __break(1u);
LABEL_71:
    __break(1u);
    goto LABEL_72;
  }

  if (v4)
  {
    v7 = 0;
    if (a1._countAndFlagsBits)
    {
      while (1)
      {
        v20 = *a1._countAndFlagsBits - 48;
        if (v20 > 9)
        {
          goto LABEL_61;
        }

        v21 = 10 * v7;
        if ((v7 * 10) >> 64 != (10 * v7) >> 63)
        {
          goto LABEL_61;
        }

        v7 = v21 + v20;
        if (__OFADD__(v21, v20))
        {
          goto LABEL_61;
        }

        ++a1._countAndFlagsBits;
        if (!--v4)
        {
          goto LABEL_62;
        }
      }
    }

    goto LABEL_60;
  }

LABEL_61:
  v7 = 0;
  LOBYTE(v4) = 1;
LABEL_62:
  v31 = v4;
  v25 = v4;

  if ((v25 & 1) == 0)
  {
    goto LABEL_66;
  }

LABEL_63:
  v7 = 0;
  v26 = 1;
LABEL_67:
  *v2 = v7;
  *(v2 + 8) = v26;
  return *&a1._countAndFlagsBits;
}