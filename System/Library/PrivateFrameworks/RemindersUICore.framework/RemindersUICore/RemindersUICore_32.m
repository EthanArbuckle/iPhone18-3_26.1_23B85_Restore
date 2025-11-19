double sub_21D3C385C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5BBE0);
  v5 = v4 - 8;
  MEMORY[0x28223BE20](v4);
  v7 = &v31[-v6];
  v8 = sub_21DBF9A0C();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v31[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5BBE8);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_21DC08D20;
  v13 = *MEMORY[0x277CE0EE0];
  v14 = *(v9 + 104);
  v14(v11, v13, v8);
  *(v12 + 32) = sub_21DBF9AAC();
  v14(v11, v13, v8);
  *(v12 + 40) = sub_21DBF9AAC();
  MEMORY[0x223D42410](v12);
  sub_21DBF9CBC();
  sub_21DBF9CCC();
  sub_21DBF952C();
  sub_21DBF991C();
  *&v32[8] = v33;
  *&v32[24] = v34;
  *&v32[40] = v35;
  v15 = *(v5 + 44);
  v16 = *MEMORY[0x277CE13E0];
  v17 = sub_21DBF9CAC();
  (*(*(v17 - 8) + 104))(&v7[v15], v16, v17);
  v18 = *&v32[16];
  *(v7 + 2) = *v32;
  *(v7 + 3) = v18;
  *(v7 + 4) = *&v32[32];
  v19 = *&v31[24];
  *v7 = *&v31[8];
  *(v7 + 1) = v19;
  *(v7 + 40) = 256;
  sub_21DBF991C();

  v20 = sub_21DBF9C8C();
  v22 = v21;
  v23 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5BBF0) + 36);
  sub_21D0D3954(v7, v23, &qword_27CE5BBE0);
  v24 = (v23 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5BBF8) + 36));
  *v24 = v20;
  v24[1] = v22;
  v25 = v41;
  v26 = v40;
  *a2 = v39;
  *(a2 + 16) = v26;
  *(a2 + 32) = v25;
  *(a2 + 40) = a1;
  *(a2 + 48) = 256;
  sub_21DBF9C8C();
  sub_21DBF94FC();
  sub_21D0CF7E0(v7, &qword_27CE5BBE0);
  v27 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5BC00) + 36));
  result = *&v36;
  v29 = v37;
  v30 = v38;
  *v27 = v36;
  v27[1] = v29;
  v27[2] = v30;
  return result;
}

uint64_t sub_21D3C3C20@<X0>(uint64_t *a1@<X8>)
{
  *a1 = sub_21DBF9C8C();
  a1[1] = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5BA38);
  return sub_21D3C1F10(v1, a1 + *(v4 + 44));
}

uint64_t sub_21D3C3C6C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v100 = a1;
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5B968);
  MEMORY[0x28223BE20](v102);
  v91 = &v78 - v3;
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5B970);
  MEMORY[0x28223BE20](v98);
  v99 = &v78 - v4;
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5B978);
  MEMORY[0x28223BE20](v92);
  v94 = &v78 - v5;
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5B980);
  MEMORY[0x28223BE20](v97);
  v93 = &v78 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v95 = &v78 - v8;
  v9 = sub_21DBF958C();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v78 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v78 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5EA20);
  MEMORY[0x28223BE20](v16 - 8);
  v101 = &v78 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v96 = &v78 - v19;
  MEMORY[0x28223BE20](v20);
  v22 = &v78 - v21;
  v23 = sub_21DBF54CC();
  v24 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v26 = &v78 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = type metadata accessor for ImageAttachmentsView(0);
  sub_21D0D3954(&v2[*(v27 + 20)], v22, &qword_27CE5EA20);
  if ((*(v24 + 48))(v22, 1, v23) == 1)
  {
    sub_21D0CF7E0(v22, &qword_27CE5EA20);
    v28 = v96;
    (*(v24 + 16))(v96, v2, v23);
    (*(v24 + 56))(v28, 0, 1, v23);
    sub_21D0D3954(v28, v101, &qword_27CE5EA20);
    v29 = swift_allocObject();
    v29[2] = sub_21D3D270C;
    v29[3] = 0;
    v29[4] = nullsub_1;
    v29[5] = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5B988);
    sub_21D3D08F8();
    v30 = v91;
    sub_21DBF948C();
    sub_21D0CF7E0(v28, &qword_27CE5EA20);
    sub_21DBF9C8C();
    sub_21DBF94FC();
    v31 = (v30 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5B9B0) + 36));
    v32 = v107;
    *v31 = v106;
    v31[1] = v32;
    v31[2] = v108;
    v33 = (v30 + *(v102 + 36));
    v34 = *(sub_21DBF95BC() + 20);
    v35 = *MEMORY[0x277CE0118];
    v36 = sub_21DBF979C();
    (*(*(v36 - 8) + 104))(&v33[v34], v35, v36);
    __asm { FMOV            V0.2D, #10.0 }

    *v33 = _Q0;
    *&v33[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5B678) + 36)] = 256;
    sub_21D0D3954(v30, v99, &qword_27CE5B968);
    swift_storeEnumTagMultiPayload();
    sub_21D3D0A5C();
    sub_21D3D0C58();
    sub_21DBF97FC();
    return sub_21D0CF7E0(v30, &qword_27CE5B968);
  }

  else
  {
    v42 = *(v24 + 32);
    v90 = v26;
    v42(v26, v22, v23);
    v43 = v24;
    v88 = v2;
    sub_21D3BA58C(v15);
    (*(v10 + 104))(v12, *MEMORY[0x277CDFA90], v9);
    LODWORD(v91) = sub_21DBF957C();
    v44 = *(v10 + 8);
    v44(v12, v9);
    v44(v15, v9);
    v89 = v43;
    v87 = *(v43 + 16);
    v45 = v96;
    v87(v96, v26, v23);
    v85 = v23;
    v86 = *(v43 + 56);
    v86(v45, 0, 1, v23);
    sub_21D0D3954(v45, v101, &qword_27CE5EA20);
    v46 = swift_allocObject();
    v46[2] = sub_21D3D270C;
    v46[3] = 0;
    v46[4] = nullsub_1;
    v46[5] = 0;
    v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5B988);
    v83 = sub_21D3D08F8();
    v47 = v94;
    sub_21DBF948C();
    sub_21D0CF7E0(v45, &qword_27CE5EA20);
    sub_21DBF9C8C();
    sub_21DBF94FC();
    v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5B9B0);
    v48 = (v47 + *(v82 + 36));
    v49 = v104;
    *v48 = v103;
    v48[1] = v49;
    v48[2] = v105;
    v50 = (v47 + *(v102 + 36));
    v81 = sub_21DBF95BC();
    v51 = *(v81 + 20);
    v79 = *MEMORY[0x277CE0118];
    v52 = v79;
    v53 = sub_21DBF979C();
    v54 = *(v53 - 8);
    v55 = *(v54 + 104);
    v80 = v54 + 104;
    v55(&v50[v51], v52, v53);
    __asm { FMOV            V0.2D, #8.0 }

    v78 = _Q0;
    *v50 = _Q0;
    v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5B678);
    *&v50[*(v57 + 36)] = 256;
    v58 = v47 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5B9D0) + 36);
    *v58 = vdupq_n_s64(0x404E000000000000uLL);
    *(v58 + 16) = vdupq_n_s64(0x4046000000000000uLL);
    *(v58 + 32) = xmmword_21DC133C0;
    *(v58 + 48) = 0x4010000000000000;
    v59 = *(type metadata accessor for ImageAttachmentsView.CornerMask(0) + 36);
    *(v58 + v59) = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5B6C0);
    swift_storeEnumTagMultiPayload();
    v60 = v85;
    v87(v45, v88, v85);
    v86(v45, 0, 1, v60);
    sub_21D0D3954(v45, v101, &qword_27CE5EA20);
    v61 = swift_allocObject();
    v61[2] = sub_21D3D270C;
    v61[3] = 0;
    v61[4] = nullsub_1;
    v61[5] = 0;
    v62 = v47 + *(v92 + 36);
    sub_21DBF948C();
    sub_21D0CF7E0(v45, &qword_27CE5EA20);
    sub_21DBF9C8C();
    sub_21DBF94FC();
    v63 = (v62 + *(v82 + 36));
    v64 = v107;
    *v63 = v106;
    v63[1] = v64;
    v63[2] = v108;
    v65 = (v62 + *(v102 + 36));
    v55(&v65[*(v81 + 20)], v79, v53);
    *v65 = v78;
    *&v65[*(v57 + 36)] = 256;
    v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5BA18);
    _ZF = (v91 & 1) == 0;
    v68 = 16.0;
    if ((v91 & 1) == 0)
    {
      v68 = -16.0;
    }

    v69 = v62 + *(v66 + 36);
    *v69 = v68;
    *(v69 + 8) = 0x4030000000000000;
    if (_ZF)
    {
      v70 = 0.0;
    }

    else
    {
      v70 = -16.0;
    }

    v71 = sub_21DBF9C8C();
    v73 = v72;
    v74 = (v62 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5BA10) + 36));
    *v74 = v71;
    v74[1] = v73;
    v75 = v93;
    sub_21D0D523C(v47, v93, &qword_27CE5B978);
    v76 = v75 + *(v97 + 36);
    *v76 = v70;
    *(v76 + 8) = 0xC01C000000000000;
    v77 = v95;
    sub_21D0D523C(v75, v95, &qword_27CE5B980);
    sub_21D0D3954(v77, v99, &qword_27CE5B980);
    swift_storeEnumTagMultiPayload();
    sub_21D3D0A5C();
    sub_21D3D0C58();
    sub_21DBF97FC();
    sub_21D0CF7E0(v77, &qword_27CE5B980);
    return (*(v89 + 8))(v90, v60);
  }
}

uint64_t sub_21D3C4960@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_21DBF9AEC();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 104))(v6, *MEMORY[0x277CE0FE0], v2, v4);
  v7 = sub_21DBF9B2C();
  result = (*(v3 + 8))(v6, v2);
  *a1 = v7;
  *(a1 + 8) = 0;
  *(a1 + 16) = 257;
  return result;
}

__n128 sub_21D3C4A7C@<Q0>(uint64_t a1@<X8>)
{
  v32 = sub_21DBF979C();
  v3 = *(v32 - 8);
  MEMORY[0x28223BE20](v32);
  v5 = v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_21DBF958C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = v31 - v11;
  type metadata accessor for ImageAttachmentsView.CornerMask(0);
  sub_21D3BA58C(v12);
  (*(v7 + 104))(v9, *MEMORY[0x277CDFA90], v6);
  v31[1] = sub_21DBF957C();
  v13 = *(v7 + 8);
  v13(v9, v6);
  v13(v12, v6);
  v81.origin.x = 0.0;
  v81.origin.y = 0.0;
  v81.size.width = v1[2];
  v81.size.height = v1[3];
  CGRectInset(v81, -(*v1 - v81.size.width), -(v1[1] - v81.size.height));
  sub_21DBF992C();
  v14 = sub_21DBF9A2C();
  v73 = v66;
  v74 = v67;
  *&v75 = v68;
  *(&v75 + 1) = v14;
  v76 = 256;
  v15 = *MEMORY[0x277CE0118];
  v16 = *(v3 + 104);
  v17 = v32;
  v16(v5, v15, v32);
  sub_21DBF990C();
  v18 = sub_21DBF9A4C();
  v77 = v66;
  v78 = v67;
  *&v79 = v68;
  *(&v79 + 1) = v18;
  v80 = 256;
  v16(v5, v15, v17);
  sub_21DBF98FC();
  v19 = sub_21DBF9A2C();
  v20 = sub_21DBF9C8C();
  LOWORD(v64) = v80;
  v61 = v77;
  v62 = v78;
  v63 = v79;
  v54[0] = v77;
  v54[1] = v78;
  v54[2] = v79;
  LOWORD(v40[0]) = v76;
  *&v55 = v64;
  *(&v55 + 1) = v20;
  v56 = v21;
  v38 = v74;
  v39 = v75;
  v37 = v73;
  *(v40 + 8) = v77;
  *(&v40[4] + 1) = v21;
  *(&v40[3] + 8) = v55;
  *(&v40[2] + 8) = v79;
  *(&v40[1] + 8) = v78;
  v57[1] = v78;
  v57[2] = v79;
  v57[0] = v77;
  v58 = v64;
  v59 = v20;
  v60 = v21;
  sub_21D0D3954(&v77, &v66, &qword_27CE5BAE8);
  sub_21D0D3954(&v73, &v66, &qword_27CE5BAE8);
  sub_21D0D3954(v54, &v66, &qword_27CE5BAF0);
  sub_21D0CF7E0(v57, &qword_27CE5BAF0);
  v22 = sub_21DBF9C8C();
  v24 = v23;
  sub_21D0CF7E0(&v73, &qword_27CE5BAE8);
  sub_21D0CF7E0(&v77, &qword_27CE5BAE8);
  v61 = v34;
  v62 = v35;
  *&v63 = v36;
  *(&v63 + 1) = v19;
  LOWORD(v64) = 256;
  *(&v64 + 1) = v22;
  v45 = v40[1];
  v46 = v40[2];
  v47 = v40[3];
  v48 = v40[4];
  v41 = v37;
  v42 = v38;
  v43 = v39;
  v44 = v40[0];
  v51 = v63;
  v52 = v64;
  v49 = v34;
  v50 = v35;
  v65 = v24;
  v53 = v24;
  v66 = v34;
  v67 = v35;
  v68 = v36;
  v69 = v19;
  v70 = 256;
  v71 = v22;
  v72 = v24;
  sub_21D0D3954(&v61, &v33, &qword_27CE5BAF0);
  sub_21D0CF7E0(&v66, &qword_27CE5BAF0);
  v25 = v52;
  *(a1 + 160) = v51;
  *(a1 + 176) = v25;
  *(a1 + 192) = v53;
  v26 = v48;
  *(a1 + 96) = v47;
  *(a1 + 112) = v26;
  v27 = v50;
  *(a1 + 128) = v49;
  *(a1 + 144) = v27;
  v28 = v44;
  *(a1 + 32) = v43;
  *(a1 + 48) = v28;
  v29 = v46;
  *(a1 + 64) = v45;
  *(a1 + 80) = v29;
  result = v42;
  *a1 = v41;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_21D3C4FB8()
{
  result = sub_21DBF9A7C();
  qword_27CE5B430 = result;
  return result;
}

uint64_t sub_21D3C4FFC()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5B958);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v13 - v1;
  v3 = sub_21DBF98DC();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 104))(v7, *MEMORY[0x277CE0A68], v3, v5);
  v8 = *MEMORY[0x277CE09A0];
  v9 = sub_21DBF988C();
  v10 = *(v9 - 8);
  (*(v10 + 104))(v2, v8, v9);
  (*(v10 + 56))(v2, 0, 1, v9);
  sub_21DBF989C();
  v11 = sub_21DBF98CC();
  sub_21D0CF7E0(v2, &qword_27CE5B958);
  result = (*(v4 + 8))(v7, v3);
  qword_27CE5B438 = v11;
  return result;
}

uint64_t sub_21D3C5220()
{
  result = sub_21DBF9A8C();
  qword_27CE5B440 = result;
  return result;
}

uint64_t sub_21D3C5264()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5B958);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v13 - v1;
  v3 = sub_21DBF98DC();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 104))(v7, *MEMORY[0x277CE0A58], v3, v5);
  v8 = *MEMORY[0x277CE09A0];
  v9 = sub_21DBF988C();
  v10 = *(v9 - 8);
  (*(v10 + 104))(v2, v8, v9);
  (*(v10 + 56))(v2, 0, 1, v9);
  v11 = sub_21DBF98CC();
  sub_21D0CF7E0(v2, &qword_27CE5B958);
  result = (*(v4 + 8))(v7, v3);
  qword_27CE5B448 = v11;
  return result;
}

uint64_t sub_21D3C5484@<X0>(void *a1@<X2>, void *a2@<X3>, void *a3@<X8>)
{
  if (*a1 != -1)
  {
    v5 = a2;
    v6 = a3;
    swift_once();
    a3 = v6;
    a2 = v5;
  }

  *a3 = *a2;
}

unint64_t sub_21D3C54F0()
{
  result = qword_27CE5B460;
  if (!qword_27CE5B460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE5B460);
  }

  return result;
}

uint64_t sub_21D3C5544(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_21D3C558C()
{
  result = qword_27CE5B480;
  if (!qword_27CE5B480)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CE588A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE5B480);
  }

  return result;
}

unint64_t sub_21D3C5608()
{
  result = qword_27CE5B490;
  if (!qword_27CE5B490)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CE5B488);
    sub_21D3C56B0(&qword_27CE5B498);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE5B490);
  }

  return result;
}

uint64_t sub_21D3C56B0(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_27CE61630);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_21D3C571C()
{
  result = qword_27CE5B4A0;
  if (!qword_27CE5B4A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CE5B450);
    sub_21D3C5544(&qword_27CE5B4A8, MEMORY[0x277D455F0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE5B4A0);
  }

  return result;
}

unint64_t sub_21D3C57D0()
{
  result = qword_27CE5B4B0;
  if (!qword_27CE5B4B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CE58370);
    sub_21D3C5544(&qword_27CE5B4B8, MEMORY[0x277CC95F0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE5B4B0);
  }

  return result;
}

uint64_t keypath_get_6Tm_0@<X0>(void (*a1)(void)@<X3>, void *a2@<X8>)
{
  a1();
  result = sub_21DBF96DC();
  *a2 = v4;
  return result;
}

double keypath_get_2Tm@<D0>(void (*a1)(void)@<X3>, double *a2@<X8>)
{
  a1();
  sub_21DBF96DC();
  result = v4;
  *a2 = v4;
  return result;
}

unint64_t sub_21D3C59CC()
{
  result = qword_27CE5B4E0;
  if (!qword_27CE5B4E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE5B4E0);
  }

  return result;
}

uint64_t sub_21D3C5A20(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_21D3C5A88(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_21D3C5B28()
{
  result = qword_27CE5B520;
  if (!qword_27CE5B520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE5B520);
  }

  return result;
}

char *initializeBufferWithCopyOfBuffer for TTRSpotlightReminderView(char *a1, char **a2, uint64_t a3)
{
  v5 = *(*(a3 - 8) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v15 = *a2;
    *a1 = *a2;
    a1 = &v15[(v5 + 16) & ~v5];
  }

  else
  {
    v7 = *a2;
    v8 = *(a2 + 8);
    sub_21D3C5F6C(*a2, v8);
    *a1 = v7;
    a1[8] = v8;
    *(a1 + 2) = a2[2];
    *(a1 + 12) = *(a2 + 12);
    v9 = a2[5];
    *(a1 + 4) = a2[4];
    *(a1 + 5) = v9;
    *(a1 + 6) = a2[6];
    v10 = *(a3 + 40);
    v11 = sub_21DBF774C();
    v12 = *(v11 - 8);
    v13 = *(v12 + 48);
    sub_21DBF8E0C();
    sub_21DBF8E0C();
    if (v13(a2 + v10, 1, v11))
    {
      v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5B450);
      memcpy(&a1[v10], a2 + v10, *(*(v14 - 8) + 64));
    }

    else
    {
      (*(v12 + 16))(&a1[v10], a2 + v10, v11);
      (*(v12 + 56))(&a1[v10], 0, 1, v11);
    }

    v16 = *(a3 + 44);
    v17 = sub_21DBF56BC();
    v18 = *(v17 - 8);
    if ((*(v18 + 48))(a2 + v16, 1, v17))
    {
      v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58370);
      memcpy(&a1[v16], a2 + v16, *(*(v19 - 8) + 64));
    }

    else
    {
      (*(v18 + 16))(&a1[v16], a2 + v16, v17);
      (*(v18 + 56))(&a1[v16], 0, 1, v17);
    }
  }

  return a1;
}

id sub_21D3C5F6C(id a1, char a2)
{
  if (a2)
  {
    return a1;
  }

  else
  {
  }
}

uint64_t destroy for TTRSpotlightReminderView(uint64_t a1, uint64_t a2)
{
  sub_21D3C60F8(*a1, *(a1 + 8));

  v4 = *(a2 + 40);
  v5 = sub_21DBF774C();
  v6 = *(v5 - 8);
  if (!(*(v6 + 48))(a1 + v4, 1, v5))
  {
    (*(v6 + 8))(a1 + v4, v5);
  }

  v7 = *(a2 + 44);
  v8 = sub_21DBF56BC();
  v11 = *(v8 - 8);
  result = (*(v11 + 48))(a1 + v7, 1, v8);
  if (!result)
  {
    v10 = *(v11 + 8);

    return v10(a1 + v7, v8);
  }

  return result;
}

void sub_21D3C60F8(id a1, char a2)
{
  if (a2)
  {
  }

  else
  {
  }
}

uint64_t initializeWithCopy for TTRSpotlightReminderView(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *a2;
  v7 = *(a2 + 8);
  sub_21D3C5F6C(*a2, v7);
  *a1 = v6;
  *(a1 + 8) = v7;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  v8 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v8;
  *(a1 + 48) = *(a2 + 48);
  v9 = *(a3 + 40);
  v10 = sub_21DBF774C();
  v11 = *(v10 - 8);
  v12 = *(v11 + 48);
  sub_21DBF8E0C();
  sub_21DBF8E0C();
  if (v12(a2 + v9, 1, v10))
  {
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5B450);
    memcpy((a1 + v9), (a2 + v9), *(*(v13 - 8) + 64));
  }

  else
  {
    (*(v11 + 16))(a1 + v9, a2 + v9, v10);
    (*(v11 + 56))(a1 + v9, 0, 1, v10);
  }

  v14 = *(a3 + 44);
  v15 = sub_21DBF56BC();
  v16 = *(v15 - 8);
  if ((*(v16 + 48))(a2 + v14, 1, v15))
  {
    v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58370);
    memcpy((a1 + v14), (a2 + v14), *(*(v17 - 8) + 64));
  }

  else
  {
    (*(v16 + 16))(a1 + v14, a2 + v14, v15);
    (*(v16 + 56))(a1 + v14, 0, 1, v15);
  }

  return a1;
}

uint64_t assignWithCopy for TTRSpotlightReminderView(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *a2;
  v7 = *(a2 + 8);
  sub_21D3C5F6C(*a2, v7);
  v8 = *a1;
  v9 = *(a1 + 8);
  *a1 = v6;
  *(a1 + 8) = v7;
  sub_21D3C60F8(v8, v9);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 25) = *(a2 + 25);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  sub_21DBF8E0C();

  *(a1 + 48) = *(a2 + 48);
  sub_21DBF8E0C();

  v10 = *(a3 + 40);
  v11 = sub_21DBF774C();
  v12 = *(v11 - 8);
  v13 = *(v12 + 48);
  v14 = v13(a1 + v10, 1, v11);
  v15 = v13(a2 + v10, 1, v11);
  if (v14)
  {
    if (!v15)
    {
      (*(v12 + 16))(a1 + v10, a2 + v10, v11);
      (*(v12 + 56))(a1 + v10, 0, 1, v11);
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  if (v15)
  {
    (*(v12 + 8))(a1 + v10, v11);
LABEL_6:
    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5B450);
    memcpy((a1 + v10), (a2 + v10), *(*(v16 - 8) + 64));
    goto LABEL_7;
  }

  (*(v12 + 24))(a1 + v10, a2 + v10, v11);
LABEL_7:
  v17 = *(a3 + 44);
  v18 = sub_21DBF56BC();
  v19 = *(v18 - 8);
  v20 = *(v19 + 48);
  v21 = v20(a1 + v17, 1, v18);
  v22 = v20(a2 + v17, 1, v18);
  if (!v21)
  {
    if (!v22)
    {
      (*(v19 + 24))(a1 + v17, a2 + v17, v18);
      return a1;
    }

    (*(v19 + 8))(a1 + v17, v18);
    goto LABEL_12;
  }

  if (v22)
  {
LABEL_12:
    v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58370);
    memcpy((a1 + v17), (a2 + v17), *(*(v23 - 8) + 64));
    return a1;
  }

  (*(v19 + 16))(a1 + v17, a2 + v17, v18);
  (*(v19 + 56))(a1 + v17, 0, 1, v18);
  return a1;
}

uint64_t initializeWithTake for TTRSpotlightReminderView(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  v6 = *(a3 + 40);
  v7 = sub_21DBF774C();
  v8 = *(v7 - 8);
  if ((*(v8 + 48))(a2 + v6, 1, v7))
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5B450);
    memcpy((a1 + v6), (a2 + v6), *(*(v9 - 8) + 64));
  }

  else
  {
    (*(v8 + 32))(a1 + v6, a2 + v6, v7);
    (*(v8 + 56))(a1 + v6, 0, 1, v7);
  }

  v10 = *(a3 + 44);
  v11 = sub_21DBF56BC();
  v12 = *(v11 - 8);
  if ((*(v12 + 48))(a2 + v10, 1, v11))
  {
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58370);
    memcpy((a1 + v10), (a2 + v10), *(*(v13 - 8) + 64));
  }

  else
  {
    (*(v12 + 32))(a1 + v10, a2 + v10, v11);
    (*(v12 + 56))(a1 + v10, 0, 1, v11);
  }

  return a1;
}

uint64_t assignWithTake for TTRSpotlightReminderView(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v6 = *a2;
  v7 = *(a2 + 8);
  v8 = *a1;
  v9 = *(a1 + 8);
  *a1 = v6;
  *(a1 + 8) = v7;
  sub_21D3C60F8(v8, v9);
  *(a1 + 16) = a2[2];
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 25) = *(a2 + 25);
  v10 = a2[5];
  *(a1 + 32) = a2[4];
  *(a1 + 40) = v10;

  *(a1 + 48) = a2[6];

  v11 = *(a3 + 40);
  v12 = sub_21DBF774C();
  v13 = *(v12 - 8);
  v14 = *(v13 + 48);
  v15 = v14(a1 + v11, 1, v12);
  v16 = v14(a2 + v11, 1, v12);
  if (v15)
  {
    if (!v16)
    {
      (*(v13 + 32))(a1 + v11, a2 + v11, v12);
      (*(v13 + 56))(a1 + v11, 0, 1, v12);
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  if (v16)
  {
    (*(v13 + 8))(a1 + v11, v12);
LABEL_6:
    v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5B450);
    memcpy((a1 + v11), a2 + v11, *(*(v17 - 8) + 64));
    goto LABEL_7;
  }

  (*(v13 + 40))(a1 + v11, a2 + v11, v12);
LABEL_7:
  v18 = *(a3 + 44);
  v19 = sub_21DBF56BC();
  v20 = *(v19 - 8);
  v21 = *(v20 + 48);
  v22 = v21(a1 + v18, 1, v19);
  v23 = v21(a2 + v18, 1, v19);
  if (!v22)
  {
    if (!v23)
    {
      (*(v20 + 40))(a1 + v18, a2 + v18, v19);
      return a1;
    }

    (*(v20 + 8))(a1 + v18, v19);
    goto LABEL_12;
  }

  if (v23)
  {
LABEL_12:
    v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58370);
    memcpy((a1 + v18), a2 + v18, *(*(v24 - 8) + 64));
    return a1;
  }

  (*(v20 + 32))(a1 + v18, a2 + v18, v19);
  (*(v20 + 56))(a1 + v18, 0, 1, v19);
  return a1;
}

void sub_21D3C6C04()
{
  sub_21D3D014C(319, &qword_27CE5B588, MEMORY[0x277D455F0], MEMORY[0x277D83D88]);
  if (v0 <= 0x3F)
  {
    sub_21D3D014C(319, &qword_27CE5B590, MEMORY[0x277CC95F0], MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      swift_initStructMetadata();
    }
  }
}

char *initializeBufferWithCopyOfBuffer for TTRSpotlightListView(char *a1, char **a2, int *a3)
{
  v5 = *(*(a3 - 1) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v16 = *a2;
    *a1 = *a2;
    a1 = &v16[(v5 + 16) & ~v5];
  }

  else
  {
    v7 = *a2;
    v8 = *(a2 + 8);
    sub_21D3C5F6C(*a2, v8);
    *a1 = v7;
    a1[8] = v8;
    v9 = a3[5];
    v10 = sub_21DBF65CC();
    (*(*(v10 - 8) + 16))(&a1[v9], a2 + v9, v10);
    v11 = a3[7];
    *&a1[a3[6]] = *(a2 + a3[6]);
    v12 = sub_21DBF56BC();
    v13 = *(v12 - 8);
    v14 = *(v13 + 48);

    if (v14(a2 + v11, 1, v12))
    {
      v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58370);
      memcpy(&a1[v11], a2 + v11, *(*(v15 - 8) + 64));
    }

    else
    {
      (*(v13 + 16))(&a1[v11], a2 + v11, v12);
      (*(v13 + 56))(&a1[v11], 0, 1, v12);
    }
  }

  return a1;
}

uint64_t destroy for TTRSpotlightListView(uint64_t a1, uint64_t a2)
{
  sub_21D3C60F8(*a1, *(a1 + 8));
  v4 = *(a2 + 20);
  v5 = sub_21DBF65CC();
  (*(*(v5 - 8) + 8))(a1 + v4, v5);

  v6 = *(a2 + 28);
  v7 = sub_21DBF56BC();
  v10 = *(v7 - 8);
  result = (*(v10 + 48))(a1 + v6, 1, v7);
  if (!result)
  {
    v9 = *(v10 + 8);

    return v9(a1 + v6, v7);
  }

  return result;
}

uint64_t initializeWithCopy for TTRSpotlightListView(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = *a2;
  v7 = *(a2 + 8);
  sub_21D3C5F6C(*a2, v7);
  *a1 = v6;
  *(a1 + 8) = v7;
  v8 = a3[5];
  v9 = sub_21DBF65CC();
  (*(*(v9 - 8) + 16))(a1 + v8, a2 + v8, v9);
  v10 = a3[7];
  *(a1 + a3[6]) = *(a2 + a3[6]);
  v11 = sub_21DBF56BC();
  v12 = *(v11 - 8);
  v13 = *(v12 + 48);

  if (v13(a2 + v10, 1, v11))
  {
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58370);
    memcpy((a1 + v10), (a2 + v10), *(*(v14 - 8) + 64));
  }

  else
  {
    (*(v12 + 16))(a1 + v10, a2 + v10, v11);
    (*(v12 + 56))(a1 + v10, 0, 1, v11);
  }

  return a1;
}

uint64_t assignWithCopy for TTRSpotlightListView(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = *a2;
  v7 = *(a2 + 8);
  sub_21D3C5F6C(*a2, v7);
  v8 = *a1;
  v9 = *(a1 + 8);
  *a1 = v6;
  *(a1 + 8) = v7;
  sub_21D3C60F8(v8, v9);
  v10 = a3[5];
  v11 = sub_21DBF65CC();
  (*(*(v11 - 8) + 24))(a1 + v10, a2 + v10, v11);
  *(a1 + a3[6]) = *(a2 + a3[6]);

  v12 = a3[7];
  v13 = sub_21DBF56BC();
  v14 = *(v13 - 8);
  v15 = *(v14 + 48);
  LODWORD(v10) = v15(a1 + v12, 1, v13);
  v16 = v15(a2 + v12, 1, v13);
  if (!v10)
  {
    if (!v16)
    {
      (*(v14 + 24))(a1 + v12, a2 + v12, v13);
      return a1;
    }

    (*(v14 + 8))(a1 + v12, v13);
    goto LABEL_6;
  }

  if (v16)
  {
LABEL_6:
    v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58370);
    memcpy((a1 + v12), (a2 + v12), *(*(v17 - 8) + 64));
    return a1;
  }

  (*(v14 + 16))(a1 + v12, a2 + v12, v13);
  (*(v14 + 56))(a1 + v12, 0, 1, v13);
  return a1;
}

uint64_t initializeWithTake for TTRSpotlightListView(uint64_t a1, uint64_t a2, int *a3)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  v6 = a3[5];
  v7 = sub_21DBF65CC();
  (*(*(v7 - 8) + 32))(a1 + v6, a2 + v6, v7);
  v8 = a3[7];
  *(a1 + a3[6]) = *(a2 + a3[6]);
  v9 = sub_21DBF56BC();
  v10 = *(v9 - 8);
  if ((*(v10 + 48))(a2 + v8, 1, v9))
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58370);
    memcpy((a1 + v8), (a2 + v8), *(*(v11 - 8) + 64));
  }

  else
  {
    (*(v10 + 32))(a1 + v8, a2 + v8, v9);
    (*(v10 + 56))(a1 + v8, 0, 1, v9);
  }

  return a1;
}

uint64_t assignWithTake for TTRSpotlightListView(uint64_t a1, uint64_t *a2, int *a3)
{
  v6 = *a2;
  v7 = *(a2 + 8);
  v8 = *a1;
  v9 = *(a1 + 8);
  *a1 = v6;
  *(a1 + 8) = v7;
  sub_21D3C60F8(v8, v9);
  v10 = a3[5];
  v11 = sub_21DBF65CC();
  (*(*(v11 - 8) + 40))(a1 + v10, a2 + v10, v11);
  *(a1 + a3[6]) = *(a2 + a3[6]);

  v12 = a3[7];
  v13 = sub_21DBF56BC();
  v14 = *(v13 - 8);
  v15 = *(v14 + 48);
  LODWORD(v10) = v15(a1 + v12, 1, v13);
  v16 = v15(a2 + v12, 1, v13);
  if (!v10)
  {
    if (!v16)
    {
      (*(v14 + 40))(a1 + v12, a2 + v12, v13);
      return a1;
    }

    (*(v14 + 8))(a1 + v12, v13);
    goto LABEL_6;
  }

  if (v16)
  {
LABEL_6:
    v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58370);
    memcpy((a1 + v12), a2 + v12, *(*(v17 - 8) + 64));
    return a1;
  }

  (*(v14 + 32))(a1 + v12, a2 + v12, v13);
  (*(v14 + 56))(a1 + v12, 0, 1, v13);
  return a1;
}

void sub_21D3C7744()
{
  sub_21DBF65CC();
  if (v0 <= 0x3F)
  {
    sub_21D3D014C(319, &qword_27CE5B590, MEMORY[0x277CC95F0], MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      swift_initStructMetadata();
    }
  }
}

char *initializeBufferWithCopyOfBuffer for TTRSpotlightSectionView(char *a1, char **a2, int *a3)
{
  v5 = *(*(a3 - 1) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v16 = *a2;
    *a1 = *a2;
    a1 = &v16[(v5 + 16) & ~v5];
  }

  else
  {
    v7 = *a2;
    v8 = *(a2 + 8);
    sub_21D3C5F6C(*a2, v8);
    *a1 = v7;
    a1[8] = v8;
    v9 = a3[5];
    v10 = sub_21DBF65CC();
    (*(*(v10 - 8) + 16))(&a1[v9], a2 + v9, v10);
    v11 = a3[7];
    *&a1[a3[6]] = *(a2 + a3[6]);
    v12 = sub_21DBF56BC();
    v13 = *(v12 - 8);
    v14 = *(v13 + 48);

    if (v14(a2 + v11, 1, v12))
    {
      v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58370);
      memcpy(&a1[v11], a2 + v11, *(*(v15 - 8) + 64));
    }

    else
    {
      (*(v13 + 16))(&a1[v11], a2 + v11, v12);
      (*(v13 + 56))(&a1[v11], 0, 1, v12);
    }

    v17 = a3[8];
    v18 = &a1[v17];
    v19 = (a2 + v17);
    v20 = v19[1];
    *v18 = *v19;
    *(v18 + 1) = v20;
    sub_21DBF8E0C();
  }

  return a1;
}

uint64_t destroy for TTRSpotlightSectionView(uint64_t a1, uint64_t a2)
{
  sub_21D3C60F8(*a1, *(a1 + 8));
  v4 = *(a2 + 20);
  v5 = sub_21DBF65CC();
  (*(*(v5 - 8) + 8))(a1 + v4, v5);

  v6 = *(a2 + 28);
  v7 = sub_21DBF56BC();
  v8 = *(v7 - 8);
  if (!(*(v8 + 48))(a1 + v6, 1, v7))
  {
    (*(v8 + 8))(a1 + v6, v7);
  }
}

uint64_t initializeWithCopy for TTRSpotlightSectionView(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = *a2;
  v7 = *(a2 + 8);
  sub_21D3C5F6C(*a2, v7);
  *a1 = v6;
  *(a1 + 8) = v7;
  v8 = a3[5];
  v9 = sub_21DBF65CC();
  (*(*(v9 - 8) + 16))(a1 + v8, a2 + v8, v9);
  v10 = a3[7];
  *(a1 + a3[6]) = *(a2 + a3[6]);
  v11 = sub_21DBF56BC();
  v12 = *(v11 - 8);
  v13 = *(v12 + 48);

  if (v13(a2 + v10, 1, v11))
  {
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58370);
    memcpy((a1 + v10), (a2 + v10), *(*(v14 - 8) + 64));
  }

  else
  {
    (*(v12 + 16))(a1 + v10, a2 + v10, v11);
    (*(v12 + 56))(a1 + v10, 0, 1, v11);
  }

  v15 = a3[8];
  v16 = (a1 + v15);
  v17 = (a2 + v15);
  v18 = v17[1];
  *v16 = *v17;
  v16[1] = v18;
  sub_21DBF8E0C();
  return a1;
}

uint64_t assignWithCopy for TTRSpotlightSectionView(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = *a2;
  v7 = *(a2 + 8);
  sub_21D3C5F6C(*a2, v7);
  v8 = *a1;
  v9 = *(a1 + 8);
  *a1 = v6;
  *(a1 + 8) = v7;
  sub_21D3C60F8(v8, v9);
  v10 = a3[5];
  v11 = sub_21DBF65CC();
  (*(*(v11 - 8) + 24))(a1 + v10, a2 + v10, v11);
  *(a1 + a3[6]) = *(a2 + a3[6]);

  v12 = a3[7];
  v13 = sub_21DBF56BC();
  v14 = *(v13 - 8);
  v15 = *(v14 + 48);
  v16 = v15(a1 + v12, 1, v13);
  v17 = v15(a2 + v12, 1, v13);
  if (!v16)
  {
    if (!v17)
    {
      (*(v14 + 24))(a1 + v12, a2 + v12, v13);
      goto LABEL_7;
    }

    (*(v14 + 8))(a1 + v12, v13);
    goto LABEL_6;
  }

  if (v17)
  {
LABEL_6:
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58370);
    memcpy((a1 + v12), (a2 + v12), *(*(v18 - 8) + 64));
    goto LABEL_7;
  }

  (*(v14 + 16))(a1 + v12, a2 + v12, v13);
  (*(v14 + 56))(a1 + v12, 0, 1, v13);
LABEL_7:
  v19 = a3[8];
  v20 = (a1 + v19);
  v21 = (a2 + v19);
  *v20 = *v21;
  v20[1] = v21[1];
  sub_21DBF8E0C();

  return a1;
}

uint64_t initializeWithTake for TTRSpotlightSectionView(uint64_t a1, uint64_t a2, int *a3)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  v6 = a3[5];
  v7 = sub_21DBF65CC();
  (*(*(v7 - 8) + 32))(a1 + v6, a2 + v6, v7);
  v8 = a3[7];
  *(a1 + a3[6]) = *(a2 + a3[6]);
  v9 = sub_21DBF56BC();
  v10 = *(v9 - 8);
  if ((*(v10 + 48))(a2 + v8, 1, v9))
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58370);
    memcpy((a1 + v8), (a2 + v8), *(*(v11 - 8) + 64));
  }

  else
  {
    (*(v10 + 32))(a1 + v8, a2 + v8, v9);
    (*(v10 + 56))(a1 + v8, 0, 1, v9);
  }

  *(a1 + a3[8]) = *(a2 + a3[8]);
  return a1;
}

uint64_t assignWithTake for TTRSpotlightSectionView(uint64_t a1, uint64_t *a2, int *a3)
{
  v6 = *a2;
  v7 = *(a2 + 8);
  v8 = *a1;
  v9 = *(a1 + 8);
  *a1 = v6;
  *(a1 + 8) = v7;
  sub_21D3C60F8(v8, v9);
  v10 = a3[5];
  v11 = sub_21DBF65CC();
  (*(*(v11 - 8) + 40))(a1 + v10, a2 + v10, v11);
  *(a1 + a3[6]) = *(a2 + a3[6]);

  v12 = a3[7];
  v13 = sub_21DBF56BC();
  v14 = *(v13 - 8);
  v15 = *(v14 + 48);
  v16 = v15(a1 + v12, 1, v13);
  v17 = v15(a2 + v12, 1, v13);
  if (!v16)
  {
    if (!v17)
    {
      (*(v14 + 40))(a1 + v12, a2 + v12, v13);
      goto LABEL_7;
    }

    (*(v14 + 8))(a1 + v12, v13);
    goto LABEL_6;
  }

  if (v17)
  {
LABEL_6:
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58370);
    memcpy((a1 + v12), a2 + v12, *(*(v18 - 8) + 64));
    goto LABEL_7;
  }

  (*(v14 + 32))(a1 + v12, a2 + v12, v13);
  (*(v14 + 56))(a1 + v12, 0, 1, v13);
LABEL_7:
  v19 = a3[8];
  v20 = (a1 + v19);
  v21 = (a2 + v19);
  v23 = *v21;
  v22 = v21[1];
  *v20 = v23;
  v20[1] = v22;

  return a1;
}

uint64_t __swift_get_extra_inhabitant_index_26Tm(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_21DBF65CC();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + a3[5];

    return v9(v10, a2, v8);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v12 = *(a1 + a3[6]);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }

  else
  {
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58370);
    v14 = *(*(v13 - 8) + 48);
    v15 = a1 + a3[7];

    return v14(v15, a2, v13);
  }
}

uint64_t __swift_store_extra_inhabitant_index_27Tm(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = sub_21DBF65CC();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + a4[5];

    return v11(v12, a2, a2, v10);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[6]) = (a2 - 1);
  }

  else
  {
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58370);
    v14 = *(*(v13 - 8) + 56);
    v15 = a1 + a4[7];

    return v14(v15, a2, a2, v13);
  }

  return result;
}

void sub_21D3C8538()
{
  sub_21DBF65CC();
  if (v0 <= 0x3F)
  {
    sub_21D3D014C(319, &qword_27CE5B590, MEMORY[0x277CC95F0], MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      swift_initStructMetadata();
    }
  }
}

char *sub_21D3C8650(char *a1, char *a2, int *a3)
{
  v5 = *(*(a3 - 1) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v13 = *a2;
    *a1 = *a2;
    a1 = (v13 + ((v5 + 16) & ~v5));
  }

  else
  {
    v7 = sub_21DBF65CC();
    (*(*(v7 - 8) + 16))(a1, a2, v7);
    v8 = a3[6];
    *&a1[a3[5]] = *&a2[a3[5]];
    v9 = sub_21DBF56BC();
    v10 = *(v9 - 8);
    v11 = *(v10 + 48);

    if (v11(&a2[v8], 1, v9))
    {
      v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58370);
      memcpy(&a1[v8], &a2[v8], *(*(v12 - 8) + 64));
    }

    else
    {
      (*(v10 + 16))(&a1[v8], &a2[v8], v9);
      (*(v10 + 56))(&a1[v8], 0, 1, v9);
    }

    v14 = a3[7];
    v15 = a3[8];
    v16 = &a1[v14];
    v17 = &a2[v14];
    v18 = *(v17 + 1);
    *v16 = *v17;
    *(v16 + 1) = v18;
    v19 = &a1[v15];
    v20 = &a2[v15];
    v21 = *(v20 + 1);
    *v19 = *v20;
    *(v19 + 1) = v21;
    v22 = a3[9];
    v23 = &a1[v22];
    v24 = &a2[v22];
    v25 = *v24;
    v26 = v24[8];
    sub_21DBF8E0C();
    sub_21DBF8E0C();
    sub_21D3C890C(v25, v26);
    *v23 = v25;
    v23[8] = v26;
    v27 = a3[10];
    v28 = a3[11];
    v29 = &a1[v27];
    v30 = &a2[v27];
    v31 = *v30;
    LOBYTE(v30) = v30[8];
    *v29 = v31;
    v29[8] = v30;
    v32 = &a1[v28];
    v33 = &a2[v28];
    v34 = *v33;
    LOBYTE(v33) = v33[8];
    *v32 = v34;
    v32[8] = v33;
    v35 = a3[12];
    v36 = a3[13];
    v37 = &a1[v35];
    v38 = &a2[v35];
    v39 = *v38;
    LOBYTE(v38) = v38[8];
    *v37 = v39;
    v37[8] = v38;
    v40 = &a1[v36];
    v41 = &a2[v36];
    v42 = *v41;
    LOBYTE(v41) = v41[8];
    *v40 = v42;
    v40[8] = v41;
    v43 = a3[14];
    v44 = &a1[v43];
    v45 = &a2[v43];
    v46 = *v45;
    v47 = v45[8];

    sub_21D3C890C(v46, v47);
    *v44 = v46;
    v44[8] = v47;
  }

  return a1;
}

uint64_t sub_21D3C890C(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
  }

  return result;
}

uint64_t sub_21D3C8918(uint64_t a1, int *a2)
{
  v4 = sub_21DBF65CC();
  (*(*(v4 - 8) + 8))(a1, v4);

  v5 = a2[6];
  v6 = sub_21DBF56BC();
  v7 = *(v6 - 8);
  if (!(*(v7 + 48))(a1 + v5, 1, v6))
  {
    (*(v7 + 8))(a1 + v5, v6);
  }

  sub_21D3C8A88(*(a1 + a2[9]), *(a1 + a2[9] + 8));

  v8 = a1 + a2[14];
  v9 = *v8;
  v10 = *(v8 + 8);

  return sub_21D3C8A88(v9, v10);
}

uint64_t sub_21D3C8A88(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
  }

  return result;
}

uint64_t sub_21D3C8A94(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_21DBF65CC();
  (*(*(v6 - 8) + 16))(a1, a2, v6);
  v7 = a3[6];
  *(a1 + a3[5]) = *(a2 + a3[5]);
  v8 = sub_21DBF56BC();
  v9 = *(v8 - 8);
  v10 = *(v9 + 48);

  if (v10(a2 + v7, 1, v8))
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58370);
    memcpy((a1 + v7), (a2 + v7), *(*(v11 - 8) + 64));
  }

  else
  {
    (*(v9 + 16))(a1 + v7, a2 + v7, v8);
    (*(v9 + 56))(a1 + v7, 0, 1, v8);
  }

  v12 = a3[7];
  v13 = a3[8];
  v14 = (a1 + v12);
  v15 = (a2 + v12);
  v16 = v15[1];
  *v14 = *v15;
  v14[1] = v16;
  v17 = (a1 + v13);
  v18 = (a2 + v13);
  v19 = v18[1];
  *v17 = *v18;
  v17[1] = v19;
  v20 = a3[9];
  v21 = a1 + v20;
  v22 = a2 + v20;
  v23 = *v22;
  v24 = *(v22 + 8);
  sub_21DBF8E0C();
  sub_21DBF8E0C();
  sub_21D3C890C(v23, v24);
  *v21 = v23;
  *(v21 + 8) = v24;
  v25 = a3[10];
  v26 = a3[11];
  v27 = a1 + v25;
  v28 = (a2 + v25);
  v29 = *v28;
  LOBYTE(v28) = *(v28 + 8);
  *v27 = v29;
  *(v27 + 8) = v28;
  v30 = a1 + v26;
  v31 = (a2 + v26);
  v32 = *v31;
  LOBYTE(v31) = *(v31 + 8);
  *v30 = v32;
  *(v30 + 8) = v31;
  v33 = a3[12];
  v34 = a3[13];
  v35 = a1 + v33;
  v36 = (a2 + v33);
  v37 = *v36;
  LOBYTE(v36) = *(v36 + 8);
  *v35 = v37;
  *(v35 + 8) = v36;
  v38 = a1 + v34;
  v39 = (a2 + v34);
  v40 = *v39;
  LOBYTE(v39) = *(v39 + 8);
  *v38 = v40;
  *(v38 + 8) = v39;
  v41 = a3[14];
  v42 = a1 + v41;
  v43 = a2 + v41;
  v44 = *v43;
  v45 = *(v43 + 8);

  sub_21D3C890C(v44, v45);
  *v42 = v44;
  *(v42 + 8) = v45;
  return a1;
}

uint64_t sub_21D3C8D04(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_21DBF65CC();
  (*(*(v6 - 8) + 24))(a1, a2, v6);
  *(a1 + a3[5]) = *(a2 + a3[5]);

  v7 = a3[6];
  v8 = sub_21DBF56BC();
  v9 = *(v8 - 8);
  v10 = *(v9 + 48);
  v11 = v10(a1 + v7, 1, v8);
  v12 = v10(a2 + v7, 1, v8);
  if (!v11)
  {
    if (!v12)
    {
      (*(v9 + 24))(a1 + v7, a2 + v7, v8);
      goto LABEL_7;
    }

    (*(v9 + 8))(a1 + v7, v8);
    goto LABEL_6;
  }

  if (v12)
  {
LABEL_6:
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58370);
    memcpy((a1 + v7), (a2 + v7), *(*(v13 - 8) + 64));
    goto LABEL_7;
  }

  (*(v9 + 16))(a1 + v7, a2 + v7, v8);
  (*(v9 + 56))(a1 + v7, 0, 1, v8);
LABEL_7:
  v14 = a3[7];
  v15 = (a1 + v14);
  v16 = (a2 + v14);
  *v15 = *v16;
  v15[1] = v16[1];
  sub_21DBF8E0C();

  v17 = a3[8];
  v18 = (a1 + v17);
  v19 = (a2 + v17);
  *v18 = *v19;
  v18[1] = v19[1];
  sub_21DBF8E0C();

  v20 = a3[9];
  v21 = a1 + v20;
  v22 = a2 + v20;
  v23 = *v22;
  v24 = *(v22 + 8);
  sub_21D3C890C(*v22, v24);
  v25 = *v21;
  v26 = *(v21 + 8);
  *v21 = v23;
  *(v21 + 8) = v24;
  sub_21D3C8A88(v25, v26);
  v27 = a3[10];
  v28 = a1 + v27;
  v29 = (a2 + v27);
  v30 = *v29;
  LOBYTE(v29) = *(v29 + 8);
  *v28 = v30;
  *(v28 + 8) = v29;

  v31 = a3[11];
  v32 = a1 + v31;
  v33 = (a2 + v31);
  v34 = *v33;
  LOBYTE(v33) = *(v33 + 8);
  *v32 = v34;
  *(v32 + 8) = v33;

  v35 = a3[12];
  v36 = a1 + v35;
  v37 = (a2 + v35);
  v38 = *v37;
  LOBYTE(v37) = *(v37 + 8);
  *v36 = v38;
  *(v36 + 8) = v37;

  v39 = a3[13];
  v40 = a1 + v39;
  v41 = (a2 + v39);
  v42 = *v41;
  LOBYTE(v41) = *(v41 + 8);
  *v40 = v42;
  *(v40 + 8) = v41;

  v43 = a3[14];
  v44 = a1 + v43;
  v45 = a2 + v43;
  v46 = *v45;
  v47 = *(v45 + 8);
  sub_21D3C890C(*v45, v47);
  v48 = *v44;
  v49 = *(v44 + 8);
  *v44 = v46;
  *(v44 + 8) = v47;
  sub_21D3C8A88(v48, v49);
  return a1;
}

uint64_t sub_21D3C9048(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_21DBF65CC();
  (*(*(v6 - 8) + 32))(a1, a2, v6);
  v7 = a3[6];
  *(a1 + a3[5]) = *(a2 + a3[5]);
  v8 = sub_21DBF56BC();
  v9 = *(v8 - 8);
  if ((*(v9 + 48))(a2 + v7, 1, v8))
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58370);
    memcpy((a1 + v7), (a2 + v7), *(*(v10 - 8) + 64));
  }

  else
  {
    (*(v9 + 32))(a1 + v7, a2 + v7, v8);
    (*(v9 + 56))(a1 + v7, 0, 1, v8);
  }

  v11 = a3[8];
  *(a1 + a3[7]) = *(a2 + a3[7]);
  *(a1 + v11) = *(a2 + v11);
  v12 = a3[9];
  v13 = a3[10];
  v14 = a1 + v12;
  v15 = a2 + v12;
  *v14 = *v15;
  *(v14 + 8) = *(v15 + 8);
  v16 = a1 + v13;
  v17 = a2 + v13;
  *v16 = *v17;
  *(v16 + 8) = *(v17 + 8);
  v18 = a3[11];
  v19 = a3[12];
  v20 = a1 + v18;
  v21 = a2 + v18;
  *v20 = *v21;
  *(v20 + 8) = *(v21 + 8);
  v22 = a1 + v19;
  v23 = (a2 + v19);
  v24 = *v23;
  *(v22 + 8) = *(v23 + 8);
  *v22 = v24;
  v25 = a3[13];
  v26 = a3[14];
  v27 = a1 + v25;
  v28 = a2 + v25;
  *(v27 + 8) = *(v28 + 8);
  *v27 = *v28;
  v29 = a1 + v26;
  v30 = a2 + v26;
  *(v29 + 8) = *(v30 + 8);
  *v29 = *v30;
  return a1;
}

uint64_t sub_21D3C924C(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_21DBF65CC();
  (*(*(v6 - 8) + 40))(a1, a2, v6);
  *(a1 + a3[5]) = *(a2 + a3[5]);

  v7 = a3[6];
  v8 = sub_21DBF56BC();
  v9 = *(v8 - 8);
  v10 = *(v9 + 48);
  v11 = v10(a1 + v7, 1, v8);
  v12 = v10(a2 + v7, 1, v8);
  if (!v11)
  {
    if (!v12)
    {
      (*(v9 + 40))(a1 + v7, a2 + v7, v8);
      goto LABEL_7;
    }

    (*(v9 + 8))(a1 + v7, v8);
    goto LABEL_6;
  }

  if (v12)
  {
LABEL_6:
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58370);
    memcpy((a1 + v7), (a2 + v7), *(*(v13 - 8) + 64));
    goto LABEL_7;
  }

  (*(v9 + 32))(a1 + v7, a2 + v7, v8);
  (*(v9 + 56))(a1 + v7, 0, 1, v8);
LABEL_7:
  v14 = a3[7];
  v15 = (a1 + v14);
  v16 = (a2 + v14);
  v18 = *v16;
  v17 = v16[1];
  *v15 = v18;
  v15[1] = v17;

  v19 = a3[8];
  v20 = (a1 + v19);
  v21 = (a2 + v19);
  v23 = *v21;
  v22 = v21[1];
  *v20 = v23;
  v20[1] = v22;

  v24 = a3[9];
  v25 = a1 + v24;
  v26 = (a2 + v24);
  v27 = *v26;
  LOBYTE(v26) = *(v26 + 8);
  v28 = *v25;
  v29 = *(v25 + 8);
  *v25 = v27;
  *(v25 + 8) = v26;
  sub_21D3C8A88(v28, v29);
  v30 = a3[10];
  v31 = a1 + v30;
  v32 = (a2 + v30);
  v33 = *v32;
  LOBYTE(v32) = *(v32 + 8);
  *v31 = v33;
  *(v31 + 8) = v32;

  v34 = a3[11];
  v35 = a1 + v34;
  v36 = (a2 + v34);
  v37 = *v36;
  LOBYTE(v36) = *(v36 + 8);
  *v35 = v37;
  *(v35 + 8) = v36;

  v38 = a3[12];
  v39 = a1 + v38;
  v40 = (a2 + v38);
  v41 = *v40;
  LOBYTE(v40) = *(v40 + 8);
  *v39 = v41;
  *(v39 + 8) = v40;

  v42 = a3[13];
  v43 = a1 + v42;
  v44 = (a2 + v42);
  v45 = *v44;
  LOBYTE(v44) = *(v44 + 8);
  *v43 = v45;
  *(v43 + 8) = v44;

  v46 = a3[14];
  v47 = a1 + v46;
  v48 = (a2 + v46);
  v49 = *v48;
  LOBYTE(v48) = *(v48 + 8);
  v50 = *v47;
  v51 = *(v47 + 8);
  *v47 = v49;
  *(v47 + 8) = v48;
  sub_21D3C8A88(v50, v51);
  return a1;
}

void sub_21D3C9558()
{
  sub_21DBF65CC();
  if (v0 <= 0x3F)
  {
    sub_21D3D014C(319, &qword_27CE5B590, MEMORY[0x277CC95F0], MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      swift_initStructMetadata();
    }
  }
}

char *sub_21D3C968C(uint64_t a1, uint64_t *a2, int *a3)
{
  v4 = a1;
  v5 = *(*(a3 - 1) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v17 = *a2;
    *v4 = *a2;
    v4 = (v17 + ((v5 + 16) & ~v5));
  }

  else
  {
    v7 = a2[1];
    *a1 = *a2;
    *(a1 + 8) = v7;
    v8 = a2[3];
    *(a1 + 16) = a2[2];
    *(a1 + 24) = v8;
    *(a1 + 32) = *(a2 + 32);
    *(a1 + 40) = a2[5];
    v9 = a3[6];
    v10 = sub_21DBF65CC();
    v11 = *(*(v10 - 8) + 16);
    sub_21DBF8E0C();

    v11(&v4[v9], a2 + v9, v10);
    v12 = a3[8];
    *&v4[a3[7]] = *(a2 + a3[7]);
    v13 = sub_21DBF56BC();
    v14 = *(v13 - 8);
    v15 = *(v14 + 48);

    if (v15(a2 + v12, 1, v13))
    {
      v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58370);
      memcpy(&v4[v12], a2 + v12, *(*(v16 - 8) + 64));
    }

    else
    {
      (*(v14 + 16))(&v4[v12], a2 + v12, v13);
      (*(v14 + 56))(&v4[v12], 0, 1, v13);
    }

    v18 = a3[9];
    v19 = a3[10];
    v20 = &v4[v18];
    v21 = (a2 + v18);
    v22 = v21[1];
    *v20 = *v21;
    *(v20 + 1) = v22;
    v23 = &v4[v19];
    v24 = *(a2 + v19);
    v25 = *(a2 + v19 + 8);
    sub_21DBF8E0C();
    sub_21D3C890C(v24, v25);
    *v23 = v24;
    v23[8] = v25;
    v26 = a3[11];
    v27 = a3[12];
    v28 = &v4[v26];
    v29 = (a2 + v26);
    v30 = *v29;
    LOBYTE(v29) = *(v29 + 8);
    *v28 = v30;
    v28[8] = v29;
    v31 = &v4[v27];
    v32 = (a2 + v27);
    v33 = *v32;
    LOBYTE(v32) = *(v32 + 8);
    *v31 = v33;
    v31[8] = v32;
    v34 = a3[13];
    v35 = a3[14];
    v36 = &v4[v34];
    v37 = (a2 + v34);
    v38 = *v37;
    LOBYTE(v37) = *(v37 + 8);
    *v36 = v38;
    v36[8] = v37;
    v39 = &v4[v35];
    v40 = (a2 + v35);
    v41 = *v40;
    LOBYTE(v40) = *(v40 + 8);
    *v39 = v41;
    v39[8] = v40;
    v42 = a3[15];
    v43 = &v4[v42];
    v44 = a2 + v42;
    v45 = *v44;
    v46 = *(v44 + 8);

    sub_21D3C890C(v45, v46);
    *v43 = v45;
    v43[8] = v46;
  }

  return v4;
}

uint64_t sub_21D3C996C(uint64_t a1, int *a2)
{

  v4 = a2[6];
  v5 = sub_21DBF65CC();
  (*(*(v5 - 8) + 8))(a1 + v4, v5);

  v6 = a2[8];
  v7 = sub_21DBF56BC();
  v8 = *(v7 - 8);
  if (!(*(v8 + 48))(a1 + v6, 1, v7))
  {
    (*(v8 + 8))(a1 + v6, v7);
  }

  sub_21D3C8A88(*(a1 + a2[10]), *(a1 + a2[10] + 8));

  v9 = a1 + a2[15];
  v10 = *v9;
  v11 = *(v9 + 8);

  return sub_21D3C8A88(v10, v11);
}

uint64_t sub_21D3C9AE8(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v6;
  v7 = *(a2 + 24);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = v7;
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  v8 = a3[6];
  v9 = sub_21DBF65CC();
  v10 = *(*(v9 - 8) + 16);
  sub_21DBF8E0C();

  v10(a1 + v8, a2 + v8, v9);
  v11 = a3[8];
  *(a1 + a3[7]) = *(a2 + a3[7]);
  v12 = sub_21DBF56BC();
  v13 = *(v12 - 8);
  v14 = *(v13 + 48);

  if (v14(a2 + v11, 1, v12))
  {
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58370);
    memcpy((a1 + v11), (a2 + v11), *(*(v15 - 8) + 64));
  }

  else
  {
    (*(v13 + 16))(a1 + v11, a2 + v11, v12);
    (*(v13 + 56))(a1 + v11, 0, 1, v12);
  }

  v16 = a3[9];
  v17 = a3[10];
  v18 = (a1 + v16);
  v19 = (a2 + v16);
  v20 = v19[1];
  *v18 = *v19;
  v18[1] = v20;
  v21 = a1 + v17;
  v22 = *(a2 + v17);
  v23 = *(a2 + v17 + 8);
  sub_21DBF8E0C();
  sub_21D3C890C(v22, v23);
  *v21 = v22;
  *(v21 + 8) = v23;
  v24 = a3[11];
  v25 = a3[12];
  v26 = a1 + v24;
  v27 = (a2 + v24);
  v28 = *v27;
  LOBYTE(v27) = *(v27 + 8);
  *v26 = v28;
  *(v26 + 8) = v27;
  v29 = a1 + v25;
  v30 = (a2 + v25);
  v31 = *v30;
  LOBYTE(v30) = *(v30 + 8);
  *v29 = v31;
  *(v29 + 8) = v30;
  v32 = a3[13];
  v33 = a3[14];
  v34 = a1 + v32;
  v35 = (a2 + v32);
  v36 = *v35;
  LOBYTE(v35) = *(v35 + 8);
  *v34 = v36;
  *(v34 + 8) = v35;
  v37 = a1 + v33;
  v38 = (a2 + v33);
  v39 = *v38;
  LOBYTE(v38) = *(v38 + 8);
  *v37 = v39;
  *(v37 + 8) = v38;
  v40 = a3[15];
  v41 = a1 + v40;
  v42 = a2 + v40;
  v43 = *v42;
  v44 = *(v42 + 8);

  sub_21D3C890C(v43, v44);
  *v41 = v43;
  *(v41 + 8) = v44;
  return a1;
}

uint64_t sub_21D3C9D7C(uint64_t a1, uint64_t a2, int *a3)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  sub_21DBF8E0C();

  *(a1 + 16) = *(a2 + 16);

  v6 = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 24) = v6;
  *(a1 + 40) = *(a2 + 40);

  v7 = a3[6];
  v8 = sub_21DBF65CC();
  (*(*(v8 - 8) + 24))(a1 + v7, a2 + v7, v8);
  *(a1 + a3[7]) = *(a2 + a3[7]);

  v9 = a3[8];
  v10 = sub_21DBF56BC();
  v11 = *(v10 - 8);
  v12 = *(v11 + 48);
  v13 = v12(a1 + v9, 1, v10);
  v14 = v12(a2 + v9, 1, v10);
  if (!v13)
  {
    if (!v14)
    {
      (*(v11 + 24))(a1 + v9, a2 + v9, v10);
      goto LABEL_7;
    }

    (*(v11 + 8))(a1 + v9, v10);
    goto LABEL_6;
  }

  if (v14)
  {
LABEL_6:
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58370);
    memcpy((a1 + v9), (a2 + v9), *(*(v15 - 8) + 64));
    goto LABEL_7;
  }

  (*(v11 + 16))(a1 + v9, a2 + v9, v10);
  (*(v11 + 56))(a1 + v9, 0, 1, v10);
LABEL_7:
  v16 = a3[9];
  v17 = (a1 + v16);
  v18 = (a2 + v16);
  *v17 = *v18;
  v17[1] = v18[1];
  sub_21DBF8E0C();

  v19 = a3[10];
  v20 = a1 + v19;
  v21 = a2 + v19;
  v22 = *v21;
  v23 = *(v21 + 8);
  sub_21D3C890C(*v21, v23);
  v24 = *v20;
  v25 = *(v20 + 8);
  *v20 = v22;
  *(v20 + 8) = v23;
  sub_21D3C8A88(v24, v25);
  v26 = a3[11];
  v27 = a1 + v26;
  v28 = (a2 + v26);
  v29 = *v28;
  LOBYTE(v28) = *(v28 + 8);
  *v27 = v29;
  *(v27 + 8) = v28;

  v30 = a3[12];
  v31 = a1 + v30;
  v32 = (a2 + v30);
  v33 = *v32;
  LOBYTE(v32) = *(v32 + 8);
  *v31 = v33;
  *(v31 + 8) = v32;

  v34 = a3[13];
  v35 = a1 + v34;
  v36 = (a2 + v34);
  v37 = *v36;
  LOBYTE(v36) = *(v36 + 8);
  *v35 = v37;
  *(v35 + 8) = v36;

  v38 = a3[14];
  v39 = a1 + v38;
  v40 = (a2 + v38);
  v41 = *v40;
  LOBYTE(v40) = *(v40 + 8);
  *v39 = v41;
  *(v39 + 8) = v40;

  v42 = a3[15];
  v43 = a1 + v42;
  v44 = a2 + v42;
  v45 = *v44;
  v46 = *(v44 + 8);
  sub_21D3C890C(*v44, v46);
  v47 = *v43;
  v48 = *(v43 + 8);
  *v43 = v45;
  *(v43 + 8) = v46;
  sub_21D3C8A88(v47, v48);
  return a1;
}

uint64_t sub_21D3CA0F8(uint64_t a1, uint64_t a2, int *a3)
{
  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 40) = *(a2 + 40);
  v6 = a3[6];
  v7 = sub_21DBF65CC();
  (*(*(v7 - 8) + 32))(a1 + v6, a2 + v6, v7);
  v8 = a3[8];
  *(a1 + a3[7]) = *(a2 + a3[7]);
  v9 = sub_21DBF56BC();
  v10 = *(v9 - 8);
  if ((*(v10 + 48))(a2 + v8, 1, v9))
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58370);
    memcpy((a1 + v8), (a2 + v8), *(*(v11 - 8) + 64));
  }

  else
  {
    (*(v10 + 32))(a1 + v8, a2 + v8, v9);
    (*(v10 + 56))(a1 + v8, 0, 1, v9);
  }

  v12 = a3[10];
  *(a1 + a3[9]) = *(a2 + a3[9]);
  v13 = a1 + v12;
  v14 = a2 + v12;
  *(v13 + 8) = *(v14 + 8);
  *v13 = *v14;
  v15 = a3[11];
  v16 = a3[12];
  v17 = a1 + v15;
  v18 = a2 + v15;
  *(v17 + 8) = *(v18 + 8);
  *v17 = *v18;
  v19 = a1 + v16;
  v20 = a2 + v16;
  *v19 = *v20;
  *(v19 + 8) = *(v20 + 8);
  v21 = a3[13];
  v22 = a3[14];
  v23 = a1 + v21;
  v24 = a2 + v21;
  *(v23 + 8) = *(v24 + 8);
  *v23 = *v24;
  v25 = a1 + v22;
  v26 = a2 + v22;
  *(v25 + 8) = *(v26 + 8);
  *v25 = *v26;
  v27 = a3[15];
  v28 = a1 + v27;
  v29 = a2 + v27;
  *(v28 + 8) = *(v29 + 8);
  *v28 = *v29;
  return a1;
}

uint64_t sub_21D3CA318(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v6;

  *(a1 + 16) = *(a2 + 16);

  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);

  v7 = a3[6];
  v8 = sub_21DBF65CC();
  (*(*(v8 - 8) + 40))(a1 + v7, a2 + v7, v8);
  *(a1 + a3[7]) = *(a2 + a3[7]);

  v9 = a3[8];
  v10 = sub_21DBF56BC();
  v11 = *(v10 - 8);
  v12 = *(v11 + 48);
  v13 = v12(a1 + v9, 1, v10);
  v14 = v12(a2 + v9, 1, v10);
  if (!v13)
  {
    if (!v14)
    {
      (*(v11 + 40))(a1 + v9, a2 + v9, v10);
      goto LABEL_7;
    }

    (*(v11 + 8))(a1 + v9, v10);
    goto LABEL_6;
  }

  if (v14)
  {
LABEL_6:
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58370);
    memcpy((a1 + v9), (a2 + v9), *(*(v15 - 8) + 64));
    goto LABEL_7;
  }

  (*(v11 + 32))(a1 + v9, a2 + v9, v10);
  (*(v11 + 56))(a1 + v9, 0, 1, v10);
LABEL_7:
  v16 = a3[9];
  v17 = (a1 + v16);
  v18 = (a2 + v16);
  v20 = *v18;
  v19 = v18[1];
  *v17 = v20;
  v17[1] = v19;

  v21 = a3[10];
  v22 = a1 + v21;
  v23 = (a2 + v21);
  v24 = *v23;
  LOBYTE(v23) = *(v23 + 8);
  v25 = *v22;
  v26 = *(v22 + 8);
  *v22 = v24;
  *(v22 + 8) = v23;
  sub_21D3C8A88(v25, v26);
  v27 = a3[11];
  v28 = a1 + v27;
  v29 = (a2 + v27);
  v30 = *v29;
  LOBYTE(v29) = *(v29 + 8);
  *v28 = v30;
  *(v28 + 8) = v29;

  v31 = a3[12];
  v32 = a1 + v31;
  v33 = (a2 + v31);
  v34 = *v33;
  LOBYTE(v33) = *(v33 + 8);
  *v32 = v34;
  *(v32 + 8) = v33;

  v35 = a3[13];
  v36 = a1 + v35;
  v37 = (a2 + v35);
  v38 = *v37;
  LOBYTE(v37) = *(v37 + 8);
  *v36 = v38;
  *(v36 + 8) = v37;

  v39 = a3[14];
  v40 = a1 + v39;
  v41 = (a2 + v39);
  v42 = *v41;
  LOBYTE(v41) = *(v41 + 8);
  *v40 = v42;
  *(v40 + 8) = v41;

  v43 = a3[15];
  v44 = a1 + v43;
  v45 = (a2 + v43);
  v46 = *v45;
  LOBYTE(v45) = *(v45 + 8);
  v47 = *v44;
  v48 = *(v44 + 8);
  *v44 = v46;
  *(v44 + 8) = v45;
  sub_21D3C8A88(v47, v48);
  return a1;
}

void sub_21D3CA64C()
{
  sub_21DBF65CC();
  if (v0 <= 0x3F)
  {
    sub_21D3D014C(319, &qword_27CE5B590, MEMORY[0x277CC95F0], MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      swift_initStructMetadata();
    }
  }
}

uint64_t *sub_21D3CA788(uint64_t *a1, uint64_t *a2, int *a3)
{
  v5 = *(*(a3 - 1) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v10 = *a2;
    *a1 = *a2;
    a1 = (v10 + ((v5 + 16) & ~v5));
  }

  else
  {
    v7 = sub_21DBF65CC();
    v8 = *(v7 - 8);
    if ((*(v8 + 48))(a2, 1, v7))
    {
      v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5B4C0);
      memcpy(a1, a2, *(*(v9 - 8) + 64));
    }

    else
    {
      (*(v8 + 16))(a1, a2, v7);
      (*(v8 + 56))(a1, 0, 1, v7);
    }

    v11 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5B5F0) + 28);
    *(a1 + v11) = *(a2 + v11);
    v12 = a3[5];
    v13 = a3[6];
    v14 = (a1 + v12);
    v15 = (a2 + v12);
    v72 = v15[1];
    *v14 = *v15;
    v14[1] = v72;
    v16 = (a1 + v13);
    v17 = (a2 + v13);
    v73 = v17[1];
    *v16 = *v17;
    v16[1] = v73;
    v18 = a3[8];
    *(a1 + a3[7]) = *(a2 + a3[7]);
    *(a1 + v18) = *(a2 + v18);
    v19 = a3[10];
    *(a1 + a3[9]) = *(a2 + a3[9]);
    v20 = (a1 + v19);
    v21 = (a2 + v19);
    v22 = v21[1];
    *v20 = *v21;
    v20[1] = v22;
    v23 = a3[12];
    *(a1 + a3[11]) = *(a2 + a3[11]);
    v24 = sub_21DBF774C();
    v25 = *(v24 - 8);
    v71 = *(v25 + 48);

    sub_21DBF8E0C();

    sub_21DBF8E0C();
    sub_21DBF8E0C();
    if (v71(a2 + v23, 1, v24))
    {
      v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5B450);
      memcpy(a1 + v23, a2 + v23, *(*(v26 - 8) + 64));
    }

    else
    {
      (*(v25 + 16))(a1 + v23, a2 + v23, v24);
      (*(v25 + 56))(a1 + v23, 0, 1, v24);
    }

    v27 = a3[13];
    v28 = sub_21DBF56BC();
    v29 = *(v28 - 8);
    if ((*(v29 + 48))(a2 + v27, 1, v28))
    {
      v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58370);
      memcpy(a1 + v27, a2 + v27, *(*(v30 - 8) + 64));
    }

    else
    {
      (*(v29 + 16))(a1 + v27, a2 + v27, v28);
      (*(v29 + 56))(a1 + v27, 0, 1, v28);
    }

    v31 = a3[14];
    v32 = a3[15];
    v33 = (a1 + v31);
    v34 = (a2 + v31);
    v35 = v34[1];
    *v33 = *v34;
    v33[1] = v35;
    v36 = sub_21DBF563C();
    v37 = *(v36 - 8);
    v38 = *(v37 + 48);
    sub_21DBF8E0C();
    if (v38(a2 + v32, 1, v36))
    {
      v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58D68);
      memcpy(a1 + v32, a2 + v32, *(*(v39 - 8) + 64));
    }

    else
    {
      (*(v37 + 16))(a1 + v32, a2 + v32, v36);
      (*(v37 + 56))(a1 + v32, 0, 1, v36);
    }

    v40 = a3[16];
    if (v38(a2 + v40, 1, v36))
    {
      v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58D68);
      memcpy(a1 + v40, a2 + v40, *(*(v41 - 8) + 64));
    }

    else
    {
      (*(v37 + 16))(a1 + v40, a2 + v40, v36);
      (*(v37 + 56))(a1 + v40, 0, 1, v36);
    }

    v42 = a3[17];
    v43 = a3[18];
    v44 = *(a2 + v42);
    *(a1 + v42) = v44;
    v45 = a1 + v43;
    v46 = *(a2 + v43);
    v47 = *(a2 + v43 + 8);
    v48 = v44;
    sub_21D3C890C(v46, v47);
    *v45 = v46;
    v45[8] = v47;
    v49 = a3[19];
    v50 = a3[20];
    v51 = a1 + v49;
    v52 = a2 + v49;
    v53 = *v52;
    LOBYTE(v52) = v52[8];
    *v51 = v53;
    v51[8] = v52;
    v54 = a1 + v50;
    v55 = a2 + v50;
    v56 = *v55;
    LOBYTE(v55) = v55[8];
    *v54 = v56;
    v54[8] = v55;
    v57 = a3[21];
    v58 = a3[22];
    v59 = a1 + v57;
    v60 = a2 + v57;
    v61 = *v60;
    LOBYTE(v60) = v60[8];
    *v59 = v61;
    v59[8] = v60;
    v62 = a1 + v58;
    v63 = a2 + v58;
    v64 = *v63;
    LOBYTE(v63) = v63[8];
    *v62 = v64;
    v62[8] = v63;
    v65 = a3[23];
    v66 = a1 + v65;
    v67 = a2 + v65;
    v68 = *v67;
    v69 = v67[8];

    sub_21D3C890C(v68, v69);
    *v66 = v68;
    v66[8] = v69;
  }

  return a1;
}

uint64_t sub_21D3CAE04(uint64_t a1, int *a2)
{
  v4 = sub_21DBF65CC();
  v5 = *(v4 - 8);
  if (!(*(v5 + 48))(a1, 1, v4))
  {
    (*(v5 + 8))(a1, v4);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5B5F0);

  v6 = a2[12];
  v7 = sub_21DBF774C();
  v8 = *(v7 - 8);
  if (!(*(v8 + 48))(a1 + v6, 1, v7))
  {
    (*(v8 + 8))(a1 + v6, v7);
  }

  v9 = a2[13];
  v10 = sub_21DBF56BC();
  v11 = *(v10 - 8);
  if (!(*(v11 + 48))(a1 + v9, 1, v10))
  {
    (*(v11 + 8))(a1 + v9, v10);
  }

  v12 = a2[15];
  v13 = sub_21DBF563C();
  v14 = *(v13 - 8);
  v15 = *(v14 + 48);
  if (!v15(a1 + v12, 1, v13))
  {
    (*(v14 + 8))(a1 + v12, v13);
  }

  v16 = a2[16];
  if (!v15(a1 + v16, 1, v13))
  {
    (*(v14 + 8))(a1 + v16, v13);
  }

  sub_21D3C8A88(*(a1 + a2[18]), *(a1 + a2[18] + 8));

  v17 = a1 + a2[23];
  v18 = *v17;
  v19 = *(v17 + 8);

  return sub_21D3C8A88(v18, v19);
}

char *sub_21D3CB164(char *a1, char *a2, int *a3)
{
  v6 = sub_21DBF65CC();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a2, 1, v6))
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5B4C0);
    memcpy(a1, a2, *(*(v8 - 8) + 64));
  }

  else
  {
    (*(v7 + 16))(a1, a2, v6);
    (*(v7 + 56))(a1, 0, 1, v6);
  }

  v9 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5B5F0) + 28);
  *&a1[v9] = *&a2[v9];
  v10 = a3[5];
  v11 = a3[6];
  v12 = &a1[v10];
  v13 = &a2[v10];
  v70 = *(v13 + 1);
  *v12 = *v13;
  *(v12 + 1) = v70;
  v14 = &a1[v11];
  v15 = &a2[v11];
  v71 = *(v15 + 1);
  *v14 = *v15;
  *(v14 + 1) = v71;
  v16 = a3[8];
  *&a1[a3[7]] = *&a2[a3[7]];
  a1[v16] = a2[v16];
  v17 = a3[10];
  a1[a3[9]] = a2[a3[9]];
  v18 = &a1[v17];
  v19 = &a2[v17];
  v20 = *(v19 + 1);
  *v18 = *v19;
  *(v18 + 1) = v20;
  v21 = a3[12];
  *&a1[a3[11]] = *&a2[a3[11]];
  v22 = sub_21DBF774C();
  v23 = *(v22 - 8);
  v69 = *(v23 + 48);

  sub_21DBF8E0C();

  sub_21DBF8E0C();
  sub_21DBF8E0C();
  if (v69(&a2[v21], 1, v22))
  {
    v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5B450);
    memcpy(&a1[v21], &a2[v21], *(*(v24 - 8) + 64));
  }

  else
  {
    (*(v23 + 16))(&a1[v21], &a2[v21], v22);
    (*(v23 + 56))(&a1[v21], 0, 1, v22);
  }

  v25 = a3[13];
  v26 = sub_21DBF56BC();
  v27 = *(v26 - 8);
  if ((*(v27 + 48))(&a2[v25], 1, v26))
  {
    v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58370);
    memcpy(&a1[v25], &a2[v25], *(*(v28 - 8) + 64));
  }

  else
  {
    (*(v27 + 16))(&a1[v25], &a2[v25], v26);
    (*(v27 + 56))(&a1[v25], 0, 1, v26);
  }

  v29 = a3[14];
  v30 = a3[15];
  v31 = &a1[v29];
  v32 = &a2[v29];
  v33 = *(v32 + 1);
  *v31 = *v32;
  *(v31 + 1) = v33;
  v34 = sub_21DBF563C();
  v35 = *(v34 - 8);
  v36 = *(v35 + 48);
  sub_21DBF8E0C();
  if (v36(&a2[v30], 1, v34))
  {
    v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58D68);
    memcpy(&a1[v30], &a2[v30], *(*(v37 - 8) + 64));
  }

  else
  {
    (*(v35 + 16))(&a1[v30], &a2[v30], v34);
    (*(v35 + 56))(&a1[v30], 0, 1, v34);
  }

  v38 = a3[16];
  if (v36(&a2[v38], 1, v34))
  {
    v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58D68);
    memcpy(&a1[v38], &a2[v38], *(*(v39 - 8) + 64));
  }

  else
  {
    (*(v35 + 16))(&a1[v38], &a2[v38], v34);
    (*(v35 + 56))(&a1[v38], 0, 1, v34);
  }

  v40 = a3[17];
  v41 = a3[18];
  v42 = *&a2[v40];
  *&a1[v40] = v42;
  v43 = &a1[v41];
  v44 = *&a2[v41];
  v45 = a2[v41 + 8];
  v46 = v42;
  sub_21D3C890C(v44, v45);
  *v43 = v44;
  v43[8] = v45;
  v47 = a3[19];
  v48 = a3[20];
  v49 = &a1[v47];
  v50 = &a2[v47];
  v51 = *v50;
  LOBYTE(v50) = v50[8];
  *v49 = v51;
  v49[8] = v50;
  v52 = &a1[v48];
  v53 = &a2[v48];
  v54 = *v53;
  LOBYTE(v53) = v53[8];
  *v52 = v54;
  v52[8] = v53;
  v55 = a3[21];
  v56 = a3[22];
  v57 = &a1[v55];
  v58 = &a2[v55];
  v59 = *v58;
  LOBYTE(v58) = v58[8];
  *v57 = v59;
  v57[8] = v58;
  v60 = &a1[v56];
  v61 = &a2[v56];
  v62 = *v61;
  LOBYTE(v61) = v61[8];
  *v60 = v62;
  v60[8] = v61;
  v63 = a3[23];
  v64 = &a1[v63];
  v65 = &a2[v63];
  v66 = *v65;
  v67 = v65[8];

  sub_21D3C890C(v66, v67);
  *v64 = v66;
  v64[8] = v67;
  return a1;
}

char *sub_21D3CB794(char *a1, char *a2, int *a3)
{
  v6 = sub_21DBF65CC();
  v7 = *(v6 - 8);
  v8 = *(v7 + 48);
  v9 = v8(a1, 1, v6);
  v10 = v8(a2, 1, v6);
  if (v9)
  {
    if (!v10)
    {
      (*(v7 + 16))(a1, a2, v6);
      (*(v7 + 56))(a1, 0, 1, v6);
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  if (v10)
  {
    (*(v7 + 8))(a1, v6);
LABEL_6:
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5B4C0);
    memcpy(a1, a2, *(*(v11 - 8) + 64));
    goto LABEL_7;
  }

  (*(v7 + 24))(a1, a2, v6);
LABEL_7:
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5B5F0);
  *&a1[*(v12 + 28)] = *&a2[*(v12 + 28)];

  v13 = a3[5];
  v14 = &a1[v13];
  v15 = &a2[v13];
  *&a1[v13] = *&a2[v13];

  *(v14 + 1) = *(v15 + 1);

  v16 = a3[6];
  v17 = &a1[v16];
  v18 = &a2[v16];
  *&a1[v16] = *&a2[v16];
  sub_21DBF8E0C();

  *(v17 + 1) = *(v18 + 1);

  *&a1[a3[7]] = *&a2[a3[7]];
  a1[a3[8]] = a2[a3[8]];
  a1[a3[9]] = a2[a3[9]];
  v19 = a3[10];
  v20 = &a1[v19];
  v21 = &a2[v19];
  *v20 = *v21;
  *(v20 + 1) = *(v21 + 1);
  sub_21DBF8E0C();

  *&a1[a3[11]] = *&a2[a3[11]];
  sub_21DBF8E0C();

  v22 = a3[12];
  v23 = sub_21DBF774C();
  v24 = *(v23 - 8);
  v25 = *(v24 + 48);
  LODWORD(v17) = v25(&a1[v22], 1, v23);
  v26 = v25(&a2[v22], 1, v23);
  if (v17)
  {
    if (!v26)
    {
      (*(v24 + 16))(&a1[v22], &a2[v22], v23);
      (*(v24 + 56))(&a1[v22], 0, 1, v23);
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  if (v26)
  {
    (*(v24 + 8))(&a1[v22], v23);
LABEL_12:
    v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5B450);
    memcpy(&a1[v22], &a2[v22], *(*(v27 - 8) + 64));
    goto LABEL_13;
  }

  (*(v24 + 24))(&a1[v22], &a2[v22], v23);
LABEL_13:
  v28 = a3[13];
  v29 = sub_21DBF56BC();
  v30 = *(v29 - 8);
  v31 = *(v30 + 48);
  v32 = v31(&a1[v28], 1, v29);
  v33 = v31(&a2[v28], 1, v29);
  if (v32)
  {
    if (!v33)
    {
      (*(v30 + 16))(&a1[v28], &a2[v28], v29);
      (*(v30 + 56))(&a1[v28], 0, 1, v29);
      goto LABEL_19;
    }

    goto LABEL_18;
  }

  if (v33)
  {
    (*(v30 + 8))(&a1[v28], v29);
LABEL_18:
    v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58370);
    memcpy(&a1[v28], &a2[v28], *(*(v34 - 8) + 64));
    goto LABEL_19;
  }

  (*(v30 + 24))(&a1[v28], &a2[v28], v29);
LABEL_19:
  v35 = a3[14];
  v36 = &a1[v35];
  v37 = &a2[v35];
  *v36 = *v37;
  *(v36 + 1) = *(v37 + 1);
  sub_21DBF8E0C();

  v38 = a3[15];
  v39 = sub_21DBF563C();
  v40 = *(v39 - 8);
  v41 = *(v40 + 48);
  v42 = v41(&a1[v38], 1, v39);
  v43 = v41(&a2[v38], 1, v39);
  if (v42)
  {
    if (!v43)
    {
      (*(v40 + 16))(&a1[v38], &a2[v38], v39);
      (*(v40 + 56))(&a1[v38], 0, 1, v39);
      goto LABEL_25;
    }

    goto LABEL_24;
  }

  if (v43)
  {
    (*(v40 + 8))(&a1[v38], v39);
LABEL_24:
    v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58D68);
    memcpy(&a1[v38], &a2[v38], *(*(v44 - 8) + 64));
    goto LABEL_25;
  }

  (*(v40 + 24))(&a1[v38], &a2[v38], v39);
LABEL_25:
  v45 = a3[16];
  v46 = v41(&a1[v45], 1, v39);
  v47 = v41(&a2[v45], 1, v39);
  if (!v46)
  {
    if (!v47)
    {
      (*(v40 + 24))(&a1[v45], &a2[v45], v39);
      goto LABEL_31;
    }

    (*(v40 + 8))(&a1[v45], v39);
    goto LABEL_30;
  }

  if (v47)
  {
LABEL_30:
    v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58D68);
    memcpy(&a1[v45], &a2[v45], *(*(v48 - 8) + 64));
    goto LABEL_31;
  }

  (*(v40 + 16))(&a1[v45], &a2[v45], v39);
  (*(v40 + 56))(&a1[v45], 0, 1, v39);
LABEL_31:
  v49 = a3[17];
  v50 = *&a1[v49];
  v51 = *&a2[v49];
  *&a1[v49] = v51;
  v52 = v51;

  v53 = a3[18];
  v54 = &a1[v53];
  v55 = &a2[v53];
  v56 = *v55;
  v57 = v55[8];
  sub_21D3C890C(*v55, v57);
  v58 = *v54;
  v59 = v54[8];
  *v54 = v56;
  v54[8] = v57;
  sub_21D3C8A88(v58, v59);
  v60 = a3[19];
  v61 = &a1[v60];
  v62 = &a2[v60];
  v63 = *v62;
  LOBYTE(v62) = v62[8];
  *v61 = v63;
  v61[8] = v62;

  v64 = a3[20];
  v65 = &a1[v64];
  v66 = &a2[v64];
  v67 = *v66;
  LOBYTE(v66) = v66[8];
  *v65 = v67;
  v65[8] = v66;

  v68 = a3[21];
  v69 = &a1[v68];
  v70 = &a2[v68];
  v71 = *v70;
  LOBYTE(v70) = v70[8];
  *v69 = v71;
  v69[8] = v70;

  v72 = a3[22];
  v73 = &a1[v72];
  v74 = &a2[v72];
  v75 = *v74;
  LOBYTE(v74) = v74[8];
  *v73 = v75;
  v73[8] = v74;

  v76 = a3[23];
  v77 = &a1[v76];
  v78 = &a2[v76];
  v79 = *v78;
  v80 = v78[8];
  sub_21D3C890C(*v78, v80);
  v81 = *v77;
  v82 = v77[8];
  *v77 = v79;
  v77[8] = v80;
  sub_21D3C8A88(v81, v82);
  return a1;
}

char *sub_21D3CC038(char *a1, char *a2, int *a3)
{
  v6 = sub_21DBF65CC();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a2, 1, v6))
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5B4C0);
    memcpy(a1, a2, *(*(v8 - 8) + 64));
  }

  else
  {
    (*(v7 + 32))(a1, a2, v6);
    (*(v7 + 56))(a1, 0, 1, v6);
  }

  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5B5F0);
  *&a1[*(v9 + 28)] = *&a2[*(v9 + 28)];
  v10 = a3[6];
  *&a1[a3[5]] = *&a2[a3[5]];
  *&a1[v10] = *&a2[v10];
  v11 = a3[8];
  *&a1[a3[7]] = *&a2[a3[7]];
  a1[v11] = a2[v11];
  v12 = a3[10];
  a1[a3[9]] = a2[a3[9]];
  *&a1[v12] = *&a2[v12];
  v13 = a3[12];
  *&a1[a3[11]] = *&a2[a3[11]];
  v14 = sub_21DBF774C();
  v15 = *(v14 - 8);
  if ((*(v15 + 48))(&a2[v13], 1, v14))
  {
    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5B450);
    memcpy(&a1[v13], &a2[v13], *(*(v16 - 8) + 64));
  }

  else
  {
    (*(v15 + 32))(&a1[v13], &a2[v13], v14);
    (*(v15 + 56))(&a1[v13], 0, 1, v14);
  }

  v17 = a3[13];
  v18 = sub_21DBF56BC();
  v19 = *(v18 - 8);
  if ((*(v19 + 48))(&a2[v17], 1, v18))
  {
    v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58370);
    memcpy(&a1[v17], &a2[v17], *(*(v20 - 8) + 64));
  }

  else
  {
    (*(v19 + 32))(&a1[v17], &a2[v17], v18);
    (*(v19 + 56))(&a1[v17], 0, 1, v18);
  }

  v21 = a3[15];
  *&a1[a3[14]] = *&a2[a3[14]];
  v22 = sub_21DBF563C();
  v23 = *(v22 - 8);
  v24 = *(v23 + 48);
  if (v24(&a2[v21], 1, v22))
  {
    v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58D68);
    memcpy(&a1[v21], &a2[v21], *(*(v25 - 8) + 64));
  }

  else
  {
    (*(v23 + 32))(&a1[v21], &a2[v21], v22);
    (*(v23 + 56))(&a1[v21], 0, 1, v22);
  }

  v26 = a3[16];
  if (v24(&a2[v26], 1, v22))
  {
    v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58D68);
    memcpy(&a1[v26], &a2[v26], *(*(v27 - 8) + 64));
  }

  else
  {
    (*(v23 + 32))(&a1[v26], &a2[v26], v22);
    (*(v23 + 56))(&a1[v26], 0, 1, v22);
  }

  v28 = a3[18];
  *&a1[a3[17]] = *&a2[a3[17]];
  v29 = &a1[v28];
  v30 = &a2[v28];
  v29[8] = v30[8];
  *v29 = *v30;
  v31 = a3[19];
  v32 = a3[20];
  v33 = &a1[v31];
  v34 = &a2[v31];
  v33[8] = v34[8];
  *v33 = *v34;
  v35 = &a1[v32];
  v36 = &a2[v32];
  *v35 = *v36;
  v35[8] = v36[8];
  v37 = a3[21];
  v38 = a3[22];
  v39 = &a1[v37];
  v40 = &a2[v37];
  *v39 = *v40;
  v39[8] = v40[8];
  v41 = &a1[v38];
  v42 = &a2[v38];
  v43 = *v42;
  v41[8] = v42[8];
  *v41 = v43;
  v44 = a3[23];
  v45 = &a1[v44];
  v46 = &a2[v44];
  v45[8] = v46[8];
  *v45 = *v46;
  return a1;
}

char *sub_21D3CC5A8(char *a1, char *a2, int *a3)
{
  v6 = sub_21DBF65CC();
  v7 = *(v6 - 8);
  v8 = *(v7 + 48);
  v9 = v8(a1, 1, v6);
  v10 = v8(a2, 1, v6);
  if (v9)
  {
    if (!v10)
    {
      (*(v7 + 32))(a1, a2, v6);
      (*(v7 + 56))(a1, 0, 1, v6);
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  if (v10)
  {
    (*(v7 + 8))(a1, v6);
LABEL_6:
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5B4C0);
    memcpy(a1, a2, *(*(v11 - 8) + 64));
    goto LABEL_7;
  }

  (*(v7 + 40))(a1, a2, v6);
LABEL_7:
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5B5F0);
  *&a1[*(v12 + 28)] = *&a2[*(v12 + 28)];

  v13 = a3[5];
  v14 = &a1[v13];
  v15 = &a2[v13];
  *&a1[v13] = *&a2[v13];

  *(v14 + 1) = *(v15 + 1);

  v16 = a3[6];
  v17 = &a1[v16];
  v18 = &a2[v16];
  *&a1[v16] = *&a2[v16];

  *(v17 + 1) = *(v18 + 1);

  v19 = a3[8];
  *&a1[a3[7]] = *&a2[a3[7]];
  a1[v19] = a2[v19];
  v20 = a3[10];
  a1[a3[9]] = a2[a3[9]];
  v21 = &a1[v20];
  v22 = &a2[v20];
  v24 = *v22;
  v23 = *(v22 + 1);
  *v21 = v24;
  *(v21 + 1) = v23;

  *&a1[a3[11]] = *&a2[a3[11]];

  v25 = a3[12];
  v26 = sub_21DBF774C();
  v27 = *(v26 - 8);
  v28 = *(v27 + 48);
  LODWORD(v18) = v28(&a1[v25], 1, v26);
  v29 = v28(&a2[v25], 1, v26);
  if (v18)
  {
    if (!v29)
    {
      (*(v27 + 32))(&a1[v25], &a2[v25], v26);
      (*(v27 + 56))(&a1[v25], 0, 1, v26);
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  if (v29)
  {
    (*(v27 + 8))(&a1[v25], v26);
LABEL_12:
    v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5B450);
    memcpy(&a1[v25], &a2[v25], *(*(v30 - 8) + 64));
    goto LABEL_13;
  }

  (*(v27 + 40))(&a1[v25], &a2[v25], v26);
LABEL_13:
  v31 = a3[13];
  v32 = sub_21DBF56BC();
  v33 = *(v32 - 8);
  v34 = *(v33 + 48);
  v35 = v34(&a1[v31], 1, v32);
  v36 = v34(&a2[v31], 1, v32);
  if (v35)
  {
    if (!v36)
    {
      (*(v33 + 32))(&a1[v31], &a2[v31], v32);
      (*(v33 + 56))(&a1[v31], 0, 1, v32);
      goto LABEL_19;
    }

    goto LABEL_18;
  }

  if (v36)
  {
    (*(v33 + 8))(&a1[v31], v32);
LABEL_18:
    v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58370);
    memcpy(&a1[v31], &a2[v31], *(*(v37 - 8) + 64));
    goto LABEL_19;
  }

  (*(v33 + 40))(&a1[v31], &a2[v31], v32);
LABEL_19:
  v38 = a3[14];
  v39 = &a1[v38];
  v40 = &a2[v38];
  v42 = *v40;
  v41 = *(v40 + 1);
  *v39 = v42;
  *(v39 + 1) = v41;

  v43 = a3[15];
  v44 = sub_21DBF563C();
  v45 = *(v44 - 8);
  v46 = *(v45 + 48);
  v47 = v46(&a1[v43], 1, v44);
  v48 = v46(&a2[v43], 1, v44);
  if (v47)
  {
    if (!v48)
    {
      (*(v45 + 32))(&a1[v43], &a2[v43], v44);
      (*(v45 + 56))(&a1[v43], 0, 1, v44);
      goto LABEL_25;
    }

    goto LABEL_24;
  }

  if (v48)
  {
    (*(v45 + 8))(&a1[v43], v44);
LABEL_24:
    v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58D68);
    memcpy(&a1[v43], &a2[v43], *(*(v49 - 8) + 64));
    goto LABEL_25;
  }

  (*(v45 + 40))(&a1[v43], &a2[v43], v44);
LABEL_25:
  v50 = a3[16];
  v51 = v46(&a1[v50], 1, v44);
  v52 = v46(&a2[v50], 1, v44);
  if (!v51)
  {
    if (!v52)
    {
      (*(v45 + 40))(&a1[v50], &a2[v50], v44);
      goto LABEL_31;
    }

    (*(v45 + 8))(&a1[v50], v44);
    goto LABEL_30;
  }

  if (v52)
  {
LABEL_30:
    v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58D68);
    memcpy(&a1[v50], &a2[v50], *(*(v53 - 8) + 64));
    goto LABEL_31;
  }

  (*(v45 + 32))(&a1[v50], &a2[v50], v44);
  (*(v45 + 56))(&a1[v50], 0, 1, v44);
LABEL_31:
  v54 = a3[17];
  v55 = *&a1[v54];
  *&a1[v54] = *&a2[v54];

  v56 = a3[18];
  v57 = &a1[v56];
  v58 = &a2[v56];
  v59 = *v58;
  LOBYTE(v58) = v58[8];
  v60 = *v57;
  v61 = v57[8];
  *v57 = v59;
  v57[8] = v58;
  sub_21D3C8A88(v60, v61);
  v62 = a3[19];
  v63 = &a1[v62];
  v64 = &a2[v62];
  v65 = *v64;
  LOBYTE(v64) = v64[8];
  *v63 = v65;
  v63[8] = v64;

  v66 = a3[20];
  v67 = &a1[v66];
  v68 = &a2[v66];
  v69 = *v68;
  LOBYTE(v68) = v68[8];
  *v67 = v69;
  v67[8] = v68;

  v70 = a3[21];
  v71 = &a1[v70];
  v72 = &a2[v70];
  v73 = *v72;
  LOBYTE(v72) = v72[8];
  *v71 = v73;
  v71[8] = v72;

  v74 = a3[22];
  v75 = &a1[v74];
  v76 = &a2[v74];
  v77 = *v76;
  LOBYTE(v76) = v76[8];
  *v75 = v77;
  v75[8] = v76;

  v78 = a3[23];
  v79 = &a1[v78];
  v80 = &a2[v78];
  v81 = *v80;
  LOBYTE(v80) = v80[8];
  v82 = *v79;
  v83 = v79[8];
  *v79 = v81;
  v79[8] = v80;
  sub_21D3C8A88(v82, v83);
  return a1;
}

void sub_21D3CCDE0()
{
  sub_21D3CD000();
  if (v0 <= 0x3F)
  {
    sub_21D3D014C(319, &qword_27CE5B588, MEMORY[0x277D455F0], MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      sub_21D3D014C(319, &qword_27CE5B590, MEMORY[0x277CC95F0], MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        sub_21D3D014C(319, &qword_280D1B858, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
        if (v3 <= 0x3F)
        {
          swift_initStructMetadata();
        }
      }
    }
  }
}

void sub_21D3CD000()
{
  if (!qword_27CE5B608)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CE5B4C0);
    v0 = sub_21DBF9B7C();
    if (!v1)
    {
      atomic_store(v0, &qword_27CE5B608);
    }
  }
}

unint64_t sub_21D3CD078()
{
  result = qword_27CE5B610;
  if (!qword_27CE5B610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE5B610);
  }

  return result;
}

unint64_t sub_21D3CD0D0()
{
  result = qword_27CE5B618;
  if (!qword_27CE5B618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE5B618);
  }

  return result;
}

unint64_t sub_21D3CD128()
{
  result = qword_27CE5B620;
  if (!qword_27CE5B620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE5B620);
  }

  return result;
}

unint64_t sub_21D3CD1D4()
{
  result = qword_27CE5B628;
  if (!qword_27CE5B628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE5B628);
  }

  return result;
}

unint64_t sub_21D3CD22C()
{
  result = qword_27CE5B630;
  if (!qword_27CE5B630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE5B630);
  }

  return result;
}

unint64_t sub_21D3CD284()
{
  result = qword_27CE5B638;
  if (!qword_27CE5B638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE5B638);
  }

  return result;
}

unint64_t sub_21D3CD2DC()
{
  result = qword_27CE5B640;
  if (!qword_27CE5B640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE5B640);
  }

  return result;
}

unint64_t sub_21D3CD334()
{
  result = qword_27CE5B648;
  if (!qword_27CE5B648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE5B648);
  }

  return result;
}

unint64_t sub_21D3CD38C()
{
  result = qword_27CE5B650;
  if (!qword_27CE5B650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE5B650);
  }

  return result;
}

uint64_t sub_21D3CD3E0(uint64_t a1, void (*a2)(uint64_t *__return_ptr), uint64_t a3, void (*a4)(void))
{
  if (sub_21DBF953C())
  {
    a2(&v7);
    swift_retain_n();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5B9A0);
    sub_21D3D0984();
    sub_21D3D0A08();
    sub_21DBF97FC();
  }

  else
  {
    a4();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5B9A0);
    sub_21D3D0984();
    sub_21D3D0A08();
    sub_21DBF97FC();
  }

  return v7;
}

uint64_t sub_21D3CD594(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(char *))
{
  v8 = a5(0);
  MEMORY[0x28223BE20](v8);
  v10 = &v13 - v9;
  (*(v11 + 16))(&v13 - v9, a1);
  return a6(v10);
}

uint64_t sub_21D3CD664@<X0>(uint64_t a1@<X8>)
{
  result = sub_21DBF969C();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_21D3CD6C8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x797469726F697270 && a2 == 0xE800000000000000;
  if (v4 || (sub_21DBFC64C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x64656767616C66 && a2 == 0xE700000000000000 || (sub_21DBFC64C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6361747441736168 && a2 == 0xED0000746E656D68 || (sub_21DBFC64C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x7365746F6ELL && a2 == 0xE500000000000000 || (sub_21DBFC64C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x7367617468736168 && a2 == 0xE800000000000000 || (sub_21DBFC64C() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6E6F697461636F6CLL && a2 == 0xEC00000065707954 || (sub_21DBFC64C() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x7265646E696D6572 && a2 == 0xEA00000000004449)
  {

    return 6;
  }

  else
  {
    v6 = sub_21DBFC64C();

    if (v6)
    {
      return 6;
    }

    else
    {
      return 7;
    }
  }
}

uint64_t sub_21D3CD920(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x726F6C6F63 && a2 == 0xE500000000000000;
  if (v4 || (sub_21DBFC64C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7079546567646162 && a2 == 0xE900000000000065 || (sub_21DBFC64C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x44497473696CLL && a2 == 0xE600000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_21DBFC64C();

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

uint64_t sub_21D3CDA38(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x726F6C6F63 && a2 == 0xE500000000000000;
  if (v4 || (sub_21DBFC64C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7079546567646162 && a2 == 0xE900000000000065 || (sub_21DBFC64C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x496E6F6974636573 && a2 == 0xE900000000000044 || (sub_21DBFC64C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x707369447473696CLL && a2 == 0xEF656D614E79616CLL)
  {

    return 3;
  }

  else
  {
    v6 = sub_21DBFC64C();

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

uint64_t sub_21D3CDBF4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_21D3CDCA8(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_21DBF56BC() - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(type metadata accessor for TTRSpotlightReminderView.ReminderView(0) - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = *(v1 + 16);
  v11 = *(v1 + 24);
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_21D0F00D0;

  return sub_21D3BAA90(a1, v10, v11, v1 + v6, v1 + v9);
}

uint64_t sub_21D3CDE24(uint64_t (*a1)(void), uint64_t (*a2)(uint64_t))
{
  v3 = *(a1(0) - 8);
  v4 = v2 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return a2(v4);
}

uint64_t sub_21D3CDEA0(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_21DBF56BC() - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(type metadata accessor for TTRSpotlightListView.ListView(0) - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = *(v1 + 16);
  v11 = *(v1 + 24);
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_21D1B795C;

  return sub_21D3BF0F4(a1, v10, v11, v1 + v6, v1 + v9);
}

uint64_t sub_21D3CDFF0(uint64_t a1)
{
  v4 = *(type metadata accessor for TTRSpotlightListView.ListView(0) - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_21D1B795C;

  return sub_21D3BF6D4(a1, v6, v7, v8, v1 + v5, v9);
}

uint64_t sub_21D3CE120(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

unint64_t sub_21D3CE130()
{
  result = qword_27CE5B7C8;
  if (!qword_27CE5B7C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CE5B748);
    sub_21D3CE1E8();
    sub_21D0D0F1C(&qword_27CE5B800, &qword_27CE5B808);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE5B7C8);
  }

  return result;
}

unint64_t sub_21D3CE1E8()
{
  result = qword_27CE5B7D0;
  if (!qword_27CE5B7D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CE5B7D8);
    sub_21D3CE2A0();
    sub_21D0D0F1C(&qword_27CE5A248, &qword_27CE5A250);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE5B7D0);
  }

  return result;
}

unint64_t sub_21D3CE2A0()
{
  result = qword_27CE5B7E0;
  if (!qword_27CE5B7E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CE5B7E8);
    sub_21D0D0F1C(&qword_27CE5B7F0, &qword_27CE5B7F8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE5B7E0);
  }

  return result;
}

unint64_t sub_21D3CE358()
{
  result = qword_27CE5B850;
  if (!qword_27CE5B850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE5B850);
  }

  return result;
}

unint64_t sub_21D3CE3AC()
{
  result = qword_27CE5B858;
  if (!qword_27CE5B858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE5B858);
  }

  return result;
}

unint64_t sub_21D3CE400()
{
  result = qword_27CE5B860;
  if (!qword_27CE5B860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE5B860);
  }

  return result;
}

unint64_t sub_21D3CE454()
{
  result = qword_27CE5B868;
  if (!qword_27CE5B868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE5B868);
  }

  return result;
}

unint64_t sub_21D3CE4A8()
{
  result = qword_27CE5B870;
  if (!qword_27CE5B870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE5B870);
  }

  return result;
}

unint64_t sub_21D3CE4FC()
{
  result = qword_27CE5B878;
  if (!qword_27CE5B878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE5B878);
  }

  return result;
}

char *sub_21D3CE5B0(char *a1, char *a2, uint64_t a3)
{
  v5 = *(*(a3 - 8) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v12 = *a2;
    *a1 = *a2;
    a1 = (v12 + ((v5 + 16) & ~v5));
  }

  else
  {
    v7 = sub_21DBF54CC();
    v8 = *(v7 - 8);
    v9 = *(v8 + 16);
    v9(a1, a2, v7);
    v10 = *(a3 + 20);
    if ((*(v8 + 48))(&a2[v10], 1, v7))
    {
      v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5EA20);
      memcpy(&a1[v10], &a2[v10], *(*(v11 - 8) + 64));
    }

    else
    {
      v9(&a1[v10], &a2[v10], v7);
      (*(v8 + 56))(&a1[v10], 0, 1, v7);
    }

    v13 = *(a3 + 24);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5B6C0);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v14 = sub_21DBF958C();
      (*(*(v14 - 8) + 16))(&a1[v13], &a2[v13], v14);
    }

    else
    {
      *&a1[v13] = *&a2[v13];
    }

    swift_storeEnumTagMultiPayload();
  }

  return a1;
}

uint64_t sub_21D3CE7DC(uint64_t a1, uint64_t a2)
{
  v4 = sub_21DBF54CC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 8);
  v6(a1, v4);
  v7 = *(a2 + 20);
  if (!(*(v5 + 48))(a1 + v7, 1, v4))
  {
    v6(a1 + v7, v4);
  }

  v8 = *(a2 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5B6C0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = sub_21DBF958C();
    v10 = *(*(v9 - 8) + 8);

    return v10(a1 + v8, v9);
  }

  else
  {
  }
}

uint64_t sub_21D3CE954(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21DBF54CC();
  v7 = *(v6 - 8);
  v8 = *(v7 + 16);
  v8(a1, a2, v6);
  v9 = *(a3 + 20);
  if ((*(v7 + 48))(a2 + v9, 1, v6))
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5EA20);
    memcpy((a1 + v9), (a2 + v9), *(*(v10 - 8) + 64));
  }

  else
  {
    v8(a1 + v9, a2 + v9, v6);
    (*(v7 + 56))(a1 + v9, 0, 1, v6);
  }

  v11 = *(a3 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5B6C0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12 = sub_21DBF958C();
    (*(*(v12 - 8) + 16))(a1 + v11, a2 + v11, v12);
  }

  else
  {
    *(a1 + v11) = *(a2 + v11);
  }

  swift_storeEnumTagMultiPayload();
  return a1;
}

uint64_t sub_21D3CEB34(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21DBF54CC();
  v7 = *(v6 - 8);
  v8 = *(v7 + 24);
  v8(a1, a2, v6);
  v17 = a3;
  v9 = *(a3 + 20);
  v10 = *(v7 + 48);
  v11 = v10(a1 + v9, 1, v6);
  v12 = v10(a2 + v9, 1, v6);
  if (v11)
  {
    if (!v12)
    {
      (*(v7 + 16))(a1 + v9, a2 + v9, v6);
      (*(v7 + 56))(a1 + v9, 0, 1, v6);
      if (a1 == a2)
      {
        return a1;
      }

      goto LABEL_8;
    }

LABEL_7:
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5EA20);
    memcpy((a1 + v9), (a2 + v9), *(*(v13 - 8) + 64));
    if (a1 == a2)
    {
      return a1;
    }

    goto LABEL_8;
  }

  if (v12)
  {
    (*(v7 + 8))(a1 + v9, v6);
    goto LABEL_7;
  }

  v8(a1 + v9, a2 + v9, v6);
  if (a1 == a2)
  {
    return a1;
  }

LABEL_8:
  v14 = *(v17 + 24);
  sub_21D0CF7E0(a1 + v14, &qword_27CE5B6C0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5B6C0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v15 = sub_21DBF958C();
    (*(*(v15 - 8) + 16))(a1 + v14, a2 + v14, v15);
  }

  else
  {
    *(a1 + v14) = *(a2 + v14);
  }

  swift_storeEnumTagMultiPayload();
  return a1;
}

uint64_t sub_21D3CEDBC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21DBF54CC();
  v7 = *(v6 - 8);
  v8 = *(v7 + 32);
  v8(a1, a2, v6);
  v9 = *(a3 + 20);
  if ((*(v7 + 48))(a2 + v9, 1, v6))
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5EA20);
    memcpy((a1 + v9), (a2 + v9), *(*(v10 - 8) + 64));
  }

  else
  {
    v8(a1 + v9, a2 + v9, v6);
    (*(v7 + 56))(a1 + v9, 0, 1, v6);
  }

  v11 = *(a3 + 24);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5B6C0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_21DBF958C();
    (*(*(v13 - 8) + 32))(a1 + v11, a2 + v11, v13);
    swift_storeEnumTagMultiPayload();
  }

  else
  {
    memcpy((a1 + v11), (a2 + v11), *(*(v12 - 8) + 64));
  }

  return a1;
}

uint64_t sub_21D3CEFA4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21DBF54CC();
  v7 = *(v6 - 8);
  v8 = *(v7 + 40);
  v8(a1, a2, v6);
  v18 = a3;
  v9 = *(a3 + 20);
  v10 = *(v7 + 48);
  v11 = v10(a1 + v9, 1, v6);
  v12 = v10(a2 + v9, 1, v6);
  if (v11)
  {
    if (!v12)
    {
      (*(v7 + 32))(a1 + v9, a2 + v9, v6);
      (*(v7 + 56))(a1 + v9, 0, 1, v6);
      if (a1 == a2)
      {
        return a1;
      }

      goto LABEL_8;
    }

LABEL_7:
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5EA20);
    memcpy((a1 + v9), (a2 + v9), *(*(v13 - 8) + 64));
    if (a1 == a2)
    {
      return a1;
    }

    goto LABEL_8;
  }

  if (v12)
  {
    (*(v7 + 8))(a1 + v9, v6);
    goto LABEL_7;
  }

  v8(a1 + v9, a2 + v9, v6);
  if (a1 == a2)
  {
    return a1;
  }

LABEL_8:
  v14 = *(v18 + 24);
  sub_21D0CF7E0(a1 + v14, &qword_27CE5B6C0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5B6C0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v16 = sub_21DBF958C();
    (*(*(v16 - 8) + 32))(a1 + v14, a2 + v14, v16);
    swift_storeEnumTagMultiPayload();
  }

  else
  {
    memcpy((a1 + v14), (a2 + v14), *(*(v15 - 8) + 64));
  }

  return a1;
}

void sub_21D3CF25C()
{
  sub_21DBF54CC();
  if (v0 <= 0x3F)
  {
    sub_21D3D014C(319, &qword_280D1B888, MEMORY[0x277CC9260], MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      sub_21D3D014C(319, &qword_27CE5B898, MEMORY[0x277CDFAA0], MEMORY[0x277CDF458]);
      if (v2 <= 0x3F)
      {
        swift_initStructMetadata();
      }
    }
  }
}

void *sub_21D3CF3C0(void *a1, void *a2, int *a3)
{
  v4 = a1;
  v5 = *(*(a3 - 1) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v9 = *a2;
    *a1 = *a2;
    v4 = (v9 + ((v5 + 16) & ~v5));
  }

  else
  {
    v7 = sub_21DBF774C();
    (*(*(v7 - 8) + 16))(v4, a2, v7);
    v8 = a3[6];
    *(v4 + a3[5]) = *(a2 + a3[5]);
    *(v4 + v8) = *(a2 + v8);
    *(v4 + a3[7]) = *(a2 + a3[7]);
  }

  return v4;
}

uint64_t sub_21D3CF4A4(uint64_t a1)
{
  v2 = sub_21DBF774C();
  (*(*(v2 - 8) + 8))(a1, v2);
}

uint64_t sub_21D3CF524(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_21DBF774C();
  (*(*(v6 - 8) + 16))(a1, a2, v6);
  v7 = a3[6];
  *(a1 + a3[5]) = *(a2 + a3[5]);
  *(a1 + v7) = *(a2 + v7);
  *(a1 + a3[7]) = *(a2 + a3[7]);

  return a1;
}

uint64_t sub_21D3CF5C0(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_21DBF774C();
  (*(*(v6 - 8) + 24))(a1, a2, v6);
  *(a1 + a3[5]) = *(a2 + a3[5]);

  *(a1 + a3[6]) = *(a2 + a3[6]);

  *(a1 + a3[7]) = *(a2 + a3[7]);
  return a1;
}

uint64_t sub_21D3CF674(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_21DBF774C();
  (*(*(v6 - 8) + 32))(a1, a2, v6);
  v7 = a3[6];
  *(a1 + a3[5]) = *(a2 + a3[5]);
  *(a1 + v7) = *(a2 + v7);
  *(a1 + a3[7]) = *(a2 + a3[7]);
  return a1;
}

uint64_t sub_21D3CF704(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_21DBF774C();
  (*(*(v6 - 8) + 40))(a1, a2, v6);
  *(a1 + a3[5]) = *(a2 + a3[5]);

  *(a1 + a3[6]) = *(a2 + a3[6]);

  *(a1 + a3[7]) = *(a2 + a3[7]);
  return a1;
}

uint64_t sub_21D3CF7D0()
{
  result = sub_21DBF774C();
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t *sub_21D3CF874(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v5 = *(*(a3 - 8) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v10 = *a2;
    *a1 = *a2;
    a1 = (v10 + ((v5 + 16) & ~v5));
  }

  else
  {
    v7 = sub_21DBF65CC();
    v8 = *(v7 - 8);
    if ((*(v8 + 48))(a2, 1, v7))
    {
      v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5B4C0);
      memcpy(a1, a2, *(*(v9 - 8) + 64));
    }

    else
    {
      (*(v8 + 16))(a1, a2, v7);
      (*(v8 + 56))(a1, 0, 1, v7);
    }

    *(a1 + *(a3 + 20)) = *(a2 + *(a3 + 20));
  }

  return a1;
}

uint64_t sub_21D3CF9F0(uint64_t a1)
{
  v2 = sub_21DBF65CC();
  v3 = *(v2 - 8);
  if (!(*(v3 + 48))(a1, 1, v2))
  {
    (*(v3 + 8))(a1, v2);
  }
}

char *sub_21D3CFABC(char *a1, char *a2, uint64_t a3)
{
  v6 = sub_21DBF65CC();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a2, 1, v6))
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5B4C0);
    memcpy(a1, a2, *(*(v8 - 8) + 64));
  }

  else
  {
    (*(v7 + 16))(a1, a2, v6);
    (*(v7 + 56))(a1, 0, 1, v6);
  }

  *&a1[*(a3 + 20)] = *&a2[*(a3 + 20)];

  return a1;
}

char *sub_21D3CFBF0(char *a1, char *a2, uint64_t a3)
{
  v6 = sub_21DBF65CC();
  v7 = *(v6 - 8);
  v8 = *(v7 + 48);
  v9 = v8(a1, 1, v6);
  v10 = v8(a2, 1, v6);
  if (!v9)
  {
    if (!v10)
    {
      (*(v7 + 24))(a1, a2, v6);
      goto LABEL_7;
    }

    (*(v7 + 8))(a1, v6);
    goto LABEL_6;
  }

  if (v10)
  {
LABEL_6:
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5B4C0);
    memcpy(a1, a2, *(*(v11 - 8) + 64));
    goto LABEL_7;
  }

  (*(v7 + 16))(a1, a2, v6);
  (*(v7 + 56))(a1, 0, 1, v6);
LABEL_7:
  *&a1[*(a3 + 20)] = *&a2[*(a3 + 20)];

  return a1;
}

char *sub_21D3CFD94(char *a1, char *a2, uint64_t a3)
{
  v6 = sub_21DBF65CC();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a2, 1, v6))
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5B4C0);
    memcpy(a1, a2, *(*(v8 - 8) + 64));
  }

  else
  {
    (*(v7 + 32))(a1, a2, v6);
    (*(v7 + 56))(a1, 0, 1, v6);
  }

  *&a1[*(a3 + 20)] = *&a2[*(a3 + 20)];
  return a1;
}

char *sub_21D3CFEC4(char *a1, char *a2, uint64_t a3)
{
  v6 = sub_21DBF65CC();
  v7 = *(v6 - 8);
  v8 = *(v7 + 48);
  v9 = v8(a1, 1, v6);
  v10 = v8(a2, 1, v6);
  if (!v9)
  {
    if (!v10)
    {
      (*(v7 + 40))(a1, a2, v6);
      goto LABEL_7;
    }

    (*(v7 + 8))(a1, v6);
    goto LABEL_6;
  }

  if (v10)
  {
LABEL_6:
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5B4C0);
    memcpy(a1, a2, *(*(v11 - 8) + 64));
    goto LABEL_7;
  }

  (*(v7 + 32))(a1, a2, v6);
  (*(v7 + 56))(a1, 0, 1, v6);
LABEL_7:
  *&a1[*(a3 + 20)] = *&a2[*(a3 + 20)];

  return a1;
}

void sub_21D3D0088()
{
  sub_21D3D014C(319, &qword_27CE5B8C0, MEMORY[0x277D45078], MEMORY[0x277D83D88]);
  if (v0 <= 0x3F)
  {
    swift_initStructMetadata();
  }
}

void sub_21D3D014C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_21D3D01B0()
{
  result = qword_27CE5B8C8;
  if (!qword_27CE5B8C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CE5B670);
    sub_21D3D0268();
    sub_21D0D0F1C(&qword_27CE5B8F0, &qword_27CE5B678);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE5B8C8);
  }

  return result;
}

unint64_t sub_21D3D0268()
{
  result = qword_27CE5B8D0;
  if (!qword_27CE5B8D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CE5B668);
    sub_21D3D02F4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE5B8D0);
  }

  return result;
}

unint64_t sub_21D3D02F4()
{
  result = qword_27CE5B8D8;
  if (!qword_27CE5B8D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CE5B660);
    sub_21D0D0F1C(&qword_27CE5B8E0, &qword_27CE5B8E8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE5B8D8);
  }

  return result;
}

unint64_t sub_21D3D03AC()
{
  result = qword_27CE5B8F8;
  if (!qword_27CE5B8F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CE5B788);
    sub_21D3D0464();
    sub_21D0D0F1C(&qword_27CE5B8F0, &qword_27CE5B678);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE5B8F8);
  }

  return result;
}

unint64_t sub_21D3D0464()
{
  result = qword_27CE5B900;
  if (!qword_27CE5B900)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CE5B780);
    sub_21D3D04F0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE5B900);
  }

  return result;
}

unint64_t sub_21D3D04F0()
{
  result = qword_27CE5B908;
  if (!qword_27CE5B908)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CE5B778);
    sub_21D0D0F1C(&qword_27CE5B910, &qword_27CE5B918);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE5B908);
  }

  return result;
}

unint64_t sub_21D3D05A8()
{
  result = qword_27CE5B920;
  if (!qword_27CE5B920)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CE5B830);
    sub_21D3D0660();
    sub_21D0D0F1C(&qword_27CE5B8F0, &qword_27CE5B678);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE5B920);
  }

  return result;
}

unint64_t sub_21D3D0660()
{
  result = qword_27CE5B928;
  if (!qword_27CE5B928)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CE5B828);
    sub_21D3D06EC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE5B928);
  }

  return result;
}

unint64_t sub_21D3D06EC()
{
  result = qword_27CE5B930;
  if (!qword_27CE5B930)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CE5B820);
    sub_21D0D0F1C(&qword_27CE5B938, &qword_27CE5B940);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE5B930);
  }

  return result;
}

unint64_t sub_21D3D07F8()
{
  result = qword_27CE5B948;
  if (!qword_27CE5B948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE5B948);
  }

  return result;
}

unint64_t sub_21D3D084C()
{
  result = qword_27CE5B950;
  if (!qword_27CE5B950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE5B950);
  }

  return result;
}

unint64_t sub_21D3D08A0()
{
  result = qword_27CE5B960;
  if (!qword_27CE5B960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE5B960);
  }

  return result;
}

unint64_t sub_21D3D08F8()
{
  result = qword_27CE5B990;
  if (!qword_27CE5B990)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CE5B988);
    sub_21D3D0984();
    sub_21D3D0A08();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE5B990);
  }

  return result;
}

unint64_t sub_21D3D0984()
{
  result = qword_27CE5B998;
  if (!qword_27CE5B998)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CE5B9A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE5B998);
  }

  return result;
}

unint64_t sub_21D3D0A08()
{
  result = qword_27CE5B9A8;
  if (!qword_27CE5B9A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE5B9A8);
  }

  return result;
}

unint64_t sub_21D3D0A5C()
{
  result = qword_27CE5B9B8;
  if (!qword_27CE5B9B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CE5B980);
    sub_21D3D0AE8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE5B9B8);
  }

  return result;
}

unint64_t sub_21D3D0AE8()
{
  result = qword_27CE5B9C0;
  if (!qword_27CE5B9C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CE5B978);
    sub_21D3D0BA0();
    sub_21D0D0F1C(&qword_27CE5BA08, &qword_27CE5BA10);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE5B9C0);
  }

  return result;
}

unint64_t sub_21D3D0BA0()
{
  result = qword_27CE5B9C8;
  if (!qword_27CE5B9C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CE5B9D0);
    sub_21D3D0C58();
    sub_21D0D0F1C(&qword_27CE5B9F8, &qword_27CE5BA00);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE5B9C8);
  }

  return result;
}

unint64_t sub_21D3D0C58()
{
  result = qword_27CE5B9D8;
  if (!qword_27CE5B9D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CE5B968);
    sub_21D3D0D10();
    sub_21D0D0F1C(&qword_27CE5B8F0, &qword_27CE5B678);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE5B9D8);
  }

  return result;
}

unint64_t sub_21D3D0D10()
{
  result = qword_27CE5B9E0;
  if (!qword_27CE5B9E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CE5B9B0);
    sub_21D0D0F1C(&qword_27CE5B9E8, &qword_27CE5B9F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE5B9E0);
  }

  return result;
}

uint64_t objectdestroy_114Tm()
{

  return swift_deallocObject();
}

uint64_t sub_21D3D0E28@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_21D3CD3E0(a1, *(v2 + 16), *(v2 + 24), *(v2 + 32));
  *a2 = result;
  *(a2 + 8) = v5;
  *(a2 + 16) = v6;
  *(a2 + 18) = v7 & 1;
  return result;
}

uint64_t sub_21D3D0E64(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_21D3D0EA8(result, a2, a3 & 1);

    return sub_21DBF8E0C();
  }

  return result;
}

uint64_t sub_21D3D0EA8(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
    return sub_21DBF8E0C();
  }
}

uint64_t sub_21D3D0EB8(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_21D3CE120(result, a2, a3 & 1);
  }

  return result;
}

unint64_t sub_21D3D0F1C()
{
  result = qword_27CE5BA70;
  if (!qword_27CE5BA70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CE5BA60);
    sub_21D0D0F1C(&qword_27CE5BA78, &qword_27CE5BA80);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE5BA70);
  }

  return result;
}

char *sub_21D3D0FD4(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v4 = a1;
  v5 = *(*(a3 - 8) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v9 = *a2;
    *v4 = *a2;
    v4 = (v9 + ((v5 + 16) & ~v5));
  }

  else
  {
    v6 = *(a2 + 1);
    *a1 = *a2;
    *(a1 + 16) = v6;
    *(a1 + 32) = *(a2 + 2);
    *(a1 + 48) = a2[6];
    v7 = *(a3 + 36);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5B6C0);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v8 = sub_21DBF958C();
      (*(*(v8 - 8) + 16))(&v4[v7], a2 + v7, v8);
    }

    else
    {
      *&v4[v7] = *(a2 + v7);
    }

    swift_storeEnumTagMultiPayload();
  }

  return v4;
}

uint64_t sub_21D3D1100(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 36);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5B6C0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = sub_21DBF958C();
    v5 = *(*(v4 - 8) + 8);

    return v5(a1 + v3, v4);
  }

  else
  {
  }
}

uint64_t sub_21D3D11B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v5;
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  v6 = *(a3 + 36);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5B6C0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = sub_21DBF958C();
    (*(*(v7 - 8) + 16))(a1 + v6, a2 + v6, v7);
  }

  else
  {
    *(a1 + v6) = *(a2 + v6);
  }

  swift_storeEnumTagMultiPayload();
  return a1;
}

char *sub_21D3D1288(char *a1, char *a2, uint64_t a3)
{
  *a1 = *a2;
  *(a1 + 1) = *(a2 + 1);
  *(a1 + 2) = *(a2 + 2);
  *(a1 + 3) = *(a2 + 3);
  *(a1 + 4) = *(a2 + 4);
  *(a1 + 5) = *(a2 + 5);
  *(a1 + 6) = *(a2 + 6);
  if (a1 != a2)
  {
    v5 = *(a3 + 36);
    sub_21D0CF7E0(&a1[v5], &qword_27CE5B6C0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5B6C0);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v6 = sub_21DBF958C();
      (*(*(v6 - 8) + 16))(&a1[v5], &a2[v5], v6);
    }

    else
    {
      *&a1[v5] = *&a2[v5];
    }

    swift_storeEnumTagMultiPayload();
  }

  return a1;
}

uint64_t sub_21D3D13A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v5;
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  v6 = *(a3 + 36);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5B6C0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = sub_21DBF958C();
    (*(*(v8 - 8) + 32))(a1 + v6, a2 + v6, v8);
    swift_storeEnumTagMultiPayload();
  }

  else
  {
    memcpy((a1 + v6), (a2 + v6), *(*(v7 - 8) + 64));
  }

  return a1;
}

uint64_t sub_21D3D1490(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v4;
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  if (a1 != a2)
  {
    v6 = *(a3 + 36);
    sub_21D0CF7E0(a1 + v6, &qword_27CE5B6C0);
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5B6C0);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v8 = sub_21DBF958C();
      (*(*(v8 - 8) + 32))(a1 + v6, a2 + v6, v8);
      swift_storeEnumTagMultiPayload();
    }

    else
    {
      memcpy((a1 + v6), (a2 + v6), *(*(v7 - 8) + 64));
    }
  }

  return a1;
}

void sub_21D3D15C8()
{
  sub_21D3D014C(319, &qword_27CE5B898, MEMORY[0x277CDFAA0], MEMORY[0x277CDF458]);
  if (v0 <= 0x3F)
  {
    swift_initStructMetadata();
  }
}

uint64_t *sub_21D3D16A4(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v5 = *(*(a3 - 8) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v8 = *a2;
    *a1 = *a2;
    a1 = (v8 + ((v5 + 16) & ~v5));
  }

  else
  {
    v7 = sub_21DBF65CC();
    (*(*(v7 - 8) + 16))(a1, a2, v7);
    *(a1 + *(a3 + 20)) = *(a2 + *(a3 + 20));
  }

  return a1;
}

uint64_t sub_21D3D176C(uint64_t a1)
{
  v2 = sub_21DBF65CC();
  (*(*(v2 - 8) + 8))(a1, v2);
}

uint64_t sub_21D3D17E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21DBF65CC();
  (*(*(v6 - 8) + 16))(a1, a2, v6);
  *(a1 + *(a3 + 20)) = *(a2 + *(a3 + 20));

  return a1;
}

uint64_t sub_21D3D1860(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21DBF65CC();
  (*(*(v6 - 8) + 24))(a1, a2, v6);
  *(a1 + *(a3 + 20)) = *(a2 + *(a3 + 20));

  return a1;
}

uint64_t sub_21D3D18EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21DBF65CC();
  (*(*(v6 - 8) + 32))(a1, a2, v6);
  *(a1 + *(a3 + 20)) = *(a2 + *(a3 + 20));
  return a1;
}

uint64_t sub_21D3D1968(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21DBF65CC();
  (*(*(v6 - 8) + 40))(a1, a2, v6);
  *(a1 + *(a3 + 20)) = *(a2 + *(a3 + 20));

  return a1;
}

uint64_t __swift_get_extra_inhabitant_index_104Tm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v7 = a4(0);
  v8 = *(v7 - 8);
  if (*(v8 + 84) == a2)
  {
    v9 = *(v8 + 48);

    return v9(a1, a2, v7);
  }

  else
  {
    v11 = *(a1 + *(a3 + 20));
    if (v11 >= 0xFFFFFFFF)
    {
      LODWORD(v11) = -1;
    }

    return (v11 + 1);
  }
}

uint64_t __swift_store_extra_inhabitant_index_105Tm(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t (*a5)(void))
{
  result = a5(0);
  v10 = *(result - 8);
  if (*(v10 + 84) == a3)
  {
    v11 = *(v10 + 56);

    return v11(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_21D3D1B90()
{
  result = sub_21DBF65CC();
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

unint64_t sub_21D3D1C28()
{
  result = qword_27CE5BAB8;
  if (!qword_27CE5BAB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CE5BAC0);
    sub_21D3D0A5C();
    sub_21D3D0C58();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE5BAB8);
  }

  return result;
}

unint64_t sub_21D3D1CEC()
{
  result = qword_27CE5BB00;
  if (!qword_27CE5BB00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CE5BAF8);
    sub_21D3D1D78();
    sub_21D3D1E84();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE5BB00);
  }

  return result;
}

unint64_t sub_21D3D1D78()
{
  result = qword_27CE5BB08;
  if (!qword_27CE5BB08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CE5BB10);
    sub_21D3D1E30();
    sub_21D0D0F1C(&qword_27CE5BB20, &qword_27CE5BB28);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE5BB08);
  }

  return result;
}

unint64_t sub_21D3D1E30()
{
  result = qword_27CE5BB18;
  if (!qword_27CE5BB18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE5BB18);
  }

  return result;
}

unint64_t sub_21D3D1E84()
{
  result = qword_27CE5BB30;
  if (!qword_27CE5BB30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CE5BB38);
    sub_21D3D1F10();
    sub_21D3D1FC8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE5BB30);
  }

  return result;
}

unint64_t sub_21D3D1F10()
{
  result = qword_27CE5BB40;
  if (!qword_27CE5BB40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CE5BB48);
    sub_21D3D1FC8();
    sub_21D0D0F1C(&qword_27CE5BB58, &qword_27CE5BB60);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE5BB40);
  }

  return result;
}

unint64_t sub_21D3D1FC8()
{
  result = qword_27CE5BB50;
  if (!qword_27CE5BB50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE5BB50);
  }

  return result;
}

void *assignWithCopy for ListBadge.IconBackground(void *a1, void *a2)
{
  *a1 = *a2;

  a1[1] = a2[1];
  a1[2] = a2[2];
  return a1;
}

uint64_t assignWithTake for ListBadge.IconBackground(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;

  *(a1 + 8) = *(a2 + 8);
  return a1;
}

unint64_t sub_21D3D20D4()
{
  result = qword_27CE5BB70;
  if (!qword_27CE5BB70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CE5BB78);
    sub_21D3D2160();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE5BB70);
  }

  return result;
}

unint64_t sub_21D3D2160()
{
  result = qword_27CE5BB80;
  if (!qword_27CE5BB80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CE5BB88);
    sub_21D3D21EC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE5BB80);
  }

  return result;
}

unint64_t sub_21D3D21EC()
{
  result = qword_27CE5BB90;
  if (!qword_27CE5BB90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CE5BB98);
    sub_21D3D22A4();
    sub_21D0D0F1C(&qword_27CE5BBB8, &qword_27CE5BAF0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE5BB90);
  }

  return result;
}

unint64_t sub_21D3D22A4()
{
  result = qword_27CE5BBA0;
  if (!qword_27CE5BBA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CE5BBA8);
    sub_21D0D0F1C(&qword_27CE5BBB0, &qword_27CE5BAE8);
    sub_21D0D0F1C(&qword_27CE5BBB8, &qword_27CE5BAF0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE5BBA0);
  }

  return result;
}

unint64_t sub_21D3D2388()
{
  result = qword_27CE5BBC0;
  if (!qword_27CE5BBC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CE5BBC8);
    sub_21D3D240C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE5BBC0);
  }

  return result;
}

unint64_t sub_21D3D240C()
{
  result = qword_27CE5BBD0;
  if (!qword_27CE5BBD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CE5BBD8);
    sub_21D3D1CEC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE5BBD0);
  }

  return result;
}

unint64_t sub_21D3D24D0()
{
  result = qword_27CE5BC08;
  if (!qword_27CE5BC08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CE5BC00);
    sub_21D3D255C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE5BC08);
  }

  return result;
}

unint64_t sub_21D3D255C()
{
  result = qword_27CE5BC10;
  if (!qword_27CE5BC10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CE5BBF0);
    sub_21D0D0F1C(&qword_27CE5BBB0, &qword_27CE5BAE8);
    sub_21D0D0F1C(&qword_27CE5BC18, &qword_27CE5BBF8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE5BC10);
  }

  return result;
}

unint64_t sub_21D3D2640()
{
  result = qword_27CE5BC20;
  if (!qword_27CE5BC20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CE5BC28);
    sub_21D0D0F1C(&qword_27CE5BBB0, &qword_27CE5BAE8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE5BC20);
  }

  return result;
}

uint64_t sub_21D3D273C()
{
  v0 = sub_21DBF84BC();
  __swift_allocate_value_buffer(v0, qword_27CE5BC30);
  v1 = __swift_project_value_buffer(v0, qword_27CE5BC30);
  if (qword_280D1B930 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280D21CC8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

id TTRReminderLocationPickerLocalSearchResultItemProvider.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

char *TTRReminderLocationPickerLocalSearchResultItemProvider.init()()
{
  ObjectType = swift_getObjectType();
  *&v0[OBJC_IVAR____TtC15RemindersUICore54TTRReminderLocationPickerLocalSearchResultItemProvider_currentFetchPromise] = 0;
  v2 = &v0[OBJC_IVAR____TtC15RemindersUICore54TTRReminderLocationPickerLocalSearchResultItemProvider_currentSearchText];
  *v2 = 0;
  *(v2 + 1) = 0xE000000000000000;
  *&v0[OBJC_IVAR____TtC15RemindersUICore54TTRReminderLocationPickerLocalSearchResultItemProvider_currentSearchLocation] = *MEMORY[0x277CE4278];
  v3 = [objc_allocWithZone(MEMORY[0x277CD4E28]) init];
  *&v0[OBJC_IVAR____TtC15RemindersUICore54TTRReminderLocationPickerLocalSearchResultItemProvider_localSearchCompleter] = v3;
  v10.receiver = v0;
  v10.super_class = ObjectType;
  v4 = objc_msgSendSuper2(&v10, sel_init);
  v5 = OBJC_IVAR____TtC15RemindersUICore54TTRReminderLocationPickerLocalSearchResultItemProvider_localSearchCompleter;
  v6 = *&v4[OBJC_IVAR____TtC15RemindersUICore54TTRReminderLocationPickerLocalSearchResultItemProvider_localSearchCompleter];
  v7 = v4;
  [v6 setDelegate_];
  v8 = *&v4[v5];
  [v8 setResultTypes_];

  return v7;
}

uint64_t sub_21D3D2950()
{
  [*(v0 + OBJC_IVAR____TtC15RemindersUICore54TTRReminderLocationPickerLocalSearchResultItemProvider_localSearchCompleter) cancel];
  v1 = OBJC_IVAR____TtC15RemindersUICore54TTRReminderLocationPickerLocalSearchResultItemProvider_currentFetchPromise;
  if (*(v0 + OBJC_IVAR____TtC15RemindersUICore54TTRReminderLocationPickerLocalSearchResultItemProvider_currentFetchPromise))
  {
    v2 = sub_21DBF5F5C();
    sub_21D31A8A0();
    v3 = swift_allocError();
    (*(*(v2 - 8) + 104))(v4, *MEMORY[0x277D44D50], v2);

    sub_21DBF5FAC();
  }

  *(v0 + v1) = 0;
}

id TTRReminderLocationPickerLocalSearchResultItemProvider.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t TTRReminderLocationPickerLocalSearchResultItemProvider.items(matching:location:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_21DBF9D8C();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = (v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = *a3;
  v14 = *(a3 + 16);
  v13 = *(a3 + 24);
  sub_21D0D8CF0(0, &qword_280D1B900);
  *v11 = sub_21DBFB12C();
  (*(v9 + 104))(v11, *MEMORY[0x277D85200], v8);
  LOBYTE(a3) = sub_21DBF9DAC();
  result = (*(v9 + 8))(v11, v8);
  if ((a3 & 1) == 0)
  {
    __break(1u);
    goto LABEL_32;
  }

  if (v14 >> 2 == 0xFFFFFFFF && (v13 & 0xF000000000000007) == 0)
  {
    goto LABEL_4;
  }

  v18 = v13 >> 61;
  if ((v13 >> 61) <= 1)
  {
    if (!v18)
    {
      goto LABEL_10;
    }
  }

  else
  {
    if (v18 == 2)
    {
      v21 = [v12 location];
      if (v21)
      {
        v22 = v21;
        [v21 coordinate];
        v16 = v23;
        v17 = v24;

        goto LABEL_13;
      }

      goto LABEL_4;
    }

    if (v18 == 3)
    {
LABEL_10:
      [v12 coordinate];
      v16 = v19;
      v17 = v20;
      goto LABEL_13;
    }
  }

LABEL_4:
  v16 = *MEMORY[0x277CE4278];
  v17 = *(MEMORY[0x277CE4278] + 8);
LABEL_13:
  v25 = (v4 + OBJC_IVAR____TtC15RemindersUICore54TTRReminderLocationPickerLocalSearchResultItemProvider_currentSearchText);
  v26 = *(v4 + OBJC_IVAR____TtC15RemindersUICore54TTRReminderLocationPickerLocalSearchResultItemProvider_currentSearchText) == a1 && *(v4 + OBJC_IVAR____TtC15RemindersUICore54TTRReminderLocationPickerLocalSearchResultItemProvider_currentSearchText + 8) == a2;
  if (v26 || (sub_21DBFC64C() & 1) != 0)
  {
    v27 = *(v4 + OBJC_IVAR____TtC15RemindersUICore54TTRReminderLocationPickerLocalSearchResultItemProvider_currentSearchLocation);
    v28 = *(v4 + OBJC_IVAR____TtC15RemindersUICore54TTRReminderLocationPickerLocalSearchResultItemProvider_currentSearchLocation + 8);
    v36.latitude = v27;
    v36.longitude = v28;
    if (CLLocationCoordinate2DIsValid(v36))
    {
      v37.latitude = v16;
      v37.longitude = v17;
      if (CLLocationCoordinate2DIsValid(v37) && hypot(v27 - v16, v28 - v17) < 0.001 && *(v4 + OBJC_IVAR____TtC15RemindersUICore54TTRReminderLocationPickerLocalSearchResultItemProvider_currentFetchPromise))
      {

        result = sub_21DBF5FBC();
        if (result)
        {
LABEL_29:
          v34 = result;

          return v34;
        }

        __break(1u);
      }
    }
  }

  sub_21D3D2950();
  *v25 = a1;
  v25[1] = a2;
  sub_21DBF8E0C();

  v29 = (v4 + OBJC_IVAR____TtC15RemindersUICore54TTRReminderLocationPickerLocalSearchResultItemProvider_currentSearchLocation);
  *v29 = v16;
  v29[1] = v17;
  v30 = v25[1];
  if ((v30 & 0x2000000000000000) != 0)
  {
    v31 = HIBYTE(v30) & 0xF;
  }

  else
  {
    v31 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v31)
  {
    v35[1] = MEMORY[0x277D84F90];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE644A0);
    swift_allocObject();
    return sub_21DBF824C();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5BC70);
  swift_allocObject();
  *(v4 + OBJC_IVAR____TtC15RemindersUICore54TTRReminderLocationPickerLocalSearchResultItemProvider_currentFetchPromise) = sub_21DBF5FDC();

  v32 = *(v4 + OBJC_IVAR____TtC15RemindersUICore54TTRReminderLocationPickerLocalSearchResultItemProvider_localSearchCompleter);
  v33 = sub_21DBFA12C();
  [v32 setQueryFragment_];

  result = sub_21DBF5FBC();
  if (result)
  {
    goto LABEL_29;
  }

LABEL_32:
  __break(1u);
  return result;
}

Swift::Void __swiftcall TTRReminderLocationPickerLocalSearchResultItemProvider.completerDidUpdateResults(_:)(MKLocalSearchCompleter a1)
{
  if (*(v1 + OBJC_IVAR____TtC15RemindersUICore54TTRReminderLocationPickerLocalSearchResultItemProvider_currentFetchPromise))
  {
    *(v1 + OBJC_IVAR____TtC15RemindersUICore54TTRReminderLocationPickerLocalSearchResultItemProvider_currentFetchPromise) = 0;
    v2 = [(objc_class *)a1.super.isa results];
    sub_21D0D8CF0(0, &unk_27CE5BC80);
    v3 = sub_21DBFA5EC();

    if (v3 >> 62)
    {
      goto LABEL_18;
    }

    for (i = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_21DBFBD7C())
    {
      v5 = 0;
      v6 = MEMORY[0x277D84F90];
      while (1)
      {
        if ((v3 & 0xC000000000000001) != 0)
        {
          v7 = MEMORY[0x223D44740](v5, v3);
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
        v9 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          break;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v6 = sub_21D212DD4(0, *(v6 + 2) + 1, 1, v6);
        }

        v11 = *(v6 + 2);
        v10 = *(v6 + 3);
        if (v11 >= v10 >> 1)
        {
          v6 = sub_21D212DD4((v10 > 1), v11 + 1, 1, v6);
        }

        *(v6 + 2) = v11 + 1;
        v12 = &v6[56 * v11];
        *(v12 + 4) = v8;
        *(v12 + 40) = 0u;
        *(v12 + 56) = 0u;
        *(v12 + 9) = 0;
        v12[80] = 0x80;
        ++v5;
        if (v9 == i)
        {
          goto LABEL_19;
        }
      }

      __break(1u);
LABEL_17:
      __break(1u);
LABEL_18:
      ;
    }

LABEL_19:

    sub_21DBF5FCC();
  }
}

uint64_t sub_21D3D3188(uint64_t result)
{
  if (*(v1 + OBJC_IVAR____TtC15RemindersUICore54TTRReminderLocationPickerLocalSearchResultItemProvider_currentFetchPromise))
  {
    v2 = result;
    *(v1 + OBJC_IVAR____TtC15RemindersUICore54TTRReminderLocationPickerLocalSearchResultItemProvider_currentFetchPromise) = 0;
    if (qword_27CE566F0 != -1)
    {
      swift_once();
    }

    v3 = sub_21DBF84BC();
    __swift_project_value_buffer(v3, qword_27CE5BC30);
    v4 = v2;
    v5 = sub_21DBF84AC();
    v6 = sub_21DBFAEBC();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v12 = v8;
      *v7 = 136315138;
      swift_getErrorValue();
      v9 = sub_21DBFC74C();
      v11 = sub_21D0CDFB4(v9, v10, &v12);

      *(v7 + 4) = v11;
      _os_log_impl(&dword_21D0C9000, v5, v6, "LocalSearchResultItemProvider got error from MKLocalSearchCompleter {error: %s}", v7, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v8);
      MEMORY[0x223D46520](v8, -1, -1);
      MEMORY[0x223D46520](v7, -1, -1);
    }

    sub_21DBF5FAC();
  }

  return result;
}

uint64_t sub_21D3D337C(uint64_t a1)
{
  v1 = a1;
  v39 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v2 = sub_21DBFBD7C();
  }

  else
  {
    v2 = *(a1 + 16);
  }

  result = MEMORY[0x277D84F90];
  if (v2)
  {
    v47 = MEMORY[0x277D84F90];
    sub_21D18E678(0, v2 & ~(v2 >> 63), 0);
    v41 = v47;
    if (v39)
    {
      result = sub_21DBFBD0C();
    }

    else
    {
      result = sub_21DBFBCCC();
      v4 = *(v1 + 36);
    }

    v44 = result;
    v45 = v4;
    v46 = v39 != 0;
    if ((v2 & 0x8000000000000000) == 0)
    {
      v5 = 0;
      v36 = v1 + 56;
      v35 = v1 + 64;
      v37 = v2;
      v38 = v1;
      while (v5 < v2)
      {
        if (__OFADD__(v5++, 1))
        {
          goto LABEL_35;
        }

        v8 = v44;
        v9 = v46;
        v40 = v45;
        sub_21D3656F4(v44, v45, v46, v1);
        v11 = v10;
        v12 = sub_21DBFA23C();
        v14 = v13;
        v15 = [v11 name];
        v16 = sub_21DBFA16C();
        v18 = v17;

        v42 = v12;
        v43 = v14;
        sub_21DBF8E0C();
        MEMORY[0x223D42AA0](v16, v18);

        v19 = v42;
        v20 = v43;
        v21 = v41;
        v47 = v41;
        v23 = *(v41 + 16);
        v22 = *(v41 + 24);
        if (v23 >= v22 >> 1)
        {
          result = sub_21D18E678((v22 > 1), v23 + 1, 1);
          v21 = v47;
        }

        *(v21 + 16) = v23 + 1;
        v24 = v21 + 16 * v23;
        *(v24 + 32) = v19;
        *(v24 + 40) = v20;
        v41 = v21;
        if (v39)
        {
          v1 = v38;
          if (!v9)
          {
            goto LABEL_40;
          }

          if (sub_21DBFBD2C())
          {
            swift_isUniquelyReferenced_nonNull_native();
          }

          v2 = v37;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5AE58);
          v6 = sub_21DBFAAEC();
          sub_21DBFBDEC();
          result = v6(&v42, 0);
          if (v5 == v37)
          {
LABEL_32:
            sub_21D15746C(v44, v45, v46);
            return v41;
          }
        }

        else
        {
          v1 = v38;
          if (v9)
          {
            goto LABEL_41;
          }

          if ((v8 & 0x8000000000000000) != 0)
          {
            goto LABEL_36;
          }

          v25 = 1 << *(v38 + 32);
          if (v8 >= v25)
          {
            goto LABEL_36;
          }

          v26 = v8 >> 6;
          v27 = *(v36 + 8 * (v8 >> 6));
          if (((v27 >> v8) & 1) == 0)
          {
            goto LABEL_37;
          }

          if (*(v38 + 36) != v40)
          {
            goto LABEL_38;
          }

          v28 = v27 & (-2 << (v8 & 0x3F));
          if (v28)
          {
            v25 = __clz(__rbit64(v28)) | v8 & 0x7FFFFFFFFFFFFFC0;
            v2 = v37;
          }

          else
          {
            v29 = v26 << 6;
            v30 = v26 + 1;
            v31 = (v35 + 8 * v26);
            v2 = v37;
            while (v30 < (v25 + 63) >> 6)
            {
              v33 = *v31++;
              v32 = v33;
              v29 += 64;
              ++v30;
              if (v33)
              {
                result = sub_21D15746C(v8, v40, 0);
                v25 = __clz(__rbit64(v32)) + v29;
                goto LABEL_31;
              }
            }

            result = sub_21D15746C(v8, v40, 0);
          }

LABEL_31:
          v34 = *(v38 + 36);
          v44 = v25;
          v45 = v34;
          v46 = 0;
          if (v5 == v2)
          {
            goto LABEL_32;
          }
        }
      }

      __break(1u);
LABEL_35:
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
    __break(1u);
LABEL_41:
    __break(1u);
  }

  return result;
}

BOOL static TTRRemindersPrintingViewModel.ParentChildState.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v2 == 2)
  {
    return v3 == 2;
  }

  if (v3 == 2)
  {
    return 0;
  }

  return (v3 ^ v2 ^ 1) & 1;
}

uint64_t sub_21D3D3764(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = v2 == 2;
  v4 = *a2;
  if (v4 != 2)
  {
    v3 = 0;
  }

  v5 = v2 == 2 || v4 == 2;
  v6 = v4 ^ v2 ^ 1;
  if (v5)
  {
    v6 = v3;
  }

  return v6 & 1;
}

uint64_t TTRRemindersPrintingViewModel.Reminder.DisplayDate.string.getter()
{
  v1 = *v0;
  sub_21DBF8E0C();
  return v1;
}

uint64_t TTRRemindersPrintingViewModel.Reminder.ImageAttachment.url.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_21DBF54CC();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t TTRRemindersPrintingViewModel.Reminder.Assignment.text.getter()
{
  v1 = *(v0 + *(type metadata accessor for TTRRemindersPrintingViewModel.Reminder.Assignment(0) + 20));
  sub_21DBF8E0C();
  return v1;
}

uint64_t TTRRemindersPrintingViewModel.Reminder.title.getter()
{
  v1 = *(v0 + 24);
  sub_21DBF8E0C();
  return v1;
}

uint64_t TTRRemindersPrintingViewModel.Reminder.title.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
  return result;
}

uint64_t TTRRemindersPrintingViewModel.Reminder.notes.getter()
{
  v1 = *(v0 + 40);
  sub_21DBF8E0C();
  return v1;
}

uint64_t TTRRemindersPrintingViewModel.Reminder.notes.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
  return result;
}

uint64_t TTRRemindersPrintingViewModel.Reminder.hashtags.getter()
{
  v1 = *(v0 + 56);
  sub_21DBF8E0C();
  return v1;
}

uint64_t TTRRemindersPrintingViewModel.Reminder.hashtags.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 56) = a1;
  *(v2 + 64) = a2;
  return result;
}

uint64_t TTRRemindersPrintingViewModel.Reminder.displayDate.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 80);
  v3 = *(v1 + 88);
  *a1 = *(v1 + 72);
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  return sub_21DBF8E0C();
}

uint64_t TTRRemindersPrintingViewModel.Reminder.displayDate.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(a1 + 16);

  *(v1 + 72) = v2;
  *(v1 + 80) = v3;
  *(v1 + 88) = v4;
  return result;
}

uint64_t TTRRemindersPrintingViewModel.Reminder.recurrenceDescription.getter()
{
  v1 = *(v0 + 96);
  sub_21DBF8E0C();
  return v1;
}

uint64_t TTRRemindersPrintingViewModel.Reminder.recurrenceDescription.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 96) = a1;
  *(v2 + 104) = a2;
  return result;
}

uint64_t TTRRemindersPrintingViewModel.Reminder.assignment.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for TTRRemindersPrintingViewModel.Reminder(0) + 48);

  return sub_21D3D3D0C(a1, v3);
}

uint64_t sub_21D3D3D0C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58330);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t TTRRemindersPrintingViewModel.Reminder.flagged.setter(char a1)
{
  result = type metadata accessor for TTRRemindersPrintingViewModel.Reminder(0);
  *(v1 + *(result + 52)) = a1;
  return result;
}

uint64_t TTRRemindersPrintingViewModel.Reminder.imageAttachments.getter()
{
  type metadata accessor for TTRRemindersPrintingViewModel.Reminder(0);

  return sub_21DBF8E0C();
}

uint64_t TTRRemindersPrintingViewModel.Reminder.imageAttachments.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for TTRRemindersPrintingViewModel.Reminder(0) + 56);

  *(v1 + v3) = a1;
  return result;
}

uint64_t TTRRemindersPrintingViewModel.ReminderColorSource.hashValue.getter()
{
  v1 = *v0;
  sub_21DBFC7DC();
  MEMORY[0x223D44FA0](v1);
  return sub_21DBFC82C();
}

uint64_t TTRRemindersPrintingViewModel.listName.getter()
{
  v1 = *v0;
  sub_21DBF8E0C();
  return v1;
}

uint64_t TTRRemindersPrintingViewModel.listName.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t TTRRemindersPrintingViewModel.count.setter(uint64_t result, char a2)
{
  *(v2 + 24) = result;
  *(v2 + 32) = a2 & 1;
  return result;
}

uint64_t TTRRemindersPrintingViewModel.items.setter(uint64_t a1)
{

  *(v1 + 40) = a1;
  return result;
}

uint64_t TTRRemindersPrintingViewModel.resourceDirectory.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for TTRRemindersPrintingViewModel(0) + 32);
  v4 = sub_21DBF54CC();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t TTRRemindersPrintingViewModel.resourceDirectory.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for TTRRemindersPrintingViewModel(0) + 32);
  v4 = sub_21DBF54CC();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t TTRRemindersPrintingViewModel.reminderColorSource.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for TTRRemindersPrintingViewModel(0);
  *a1 = *(v1 + *(result + 36));
  return result;
}

uint64_t TTRRemindersPrintingViewModel.reminderColorSource.setter(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for TTRRemindersPrintingViewModel(0);
  *(v1 + *(result + 36)) = v2;
  return result;
}

uint64_t TTRRemindersPrintingListTree.listName.getter()
{
  v1 = *v0;
  sub_21DBF8E0C();
  return v1;
}

uint64_t TTRRemindersPrintingListTree.listName.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t TTRRemindersPrintingListTree.count.setter(uint64_t result, char a2)
{
  *(v2 + 24) = result;
  *(v2 + 32) = a2 & 1;
  return result;
}

uint64_t TTRRemindersPrintingListTree.sections.setter(uint64_t a1)
{

  *(v1 + 40) = a1;
  return result;
}

uint64_t TTRRemindersPrintingHTMLResult.html.getter()
{
  v1 = *(v0 + 16);
  sub_21DBF8E0C();
  return v1;
}

uint64_t TTRRemindersPrintingHTMLFileResult.htmlURL.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for TTRRemindersPrintingHTMLFileResult(0) + 20);
  v4 = sub_21DBF54CC();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_21D3D45F8@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1(0) + 24);
  v5 = sub_21DBF54CC();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_21D3D4694(uint64_t (*a1)(void))
{
  v2 = *(v1 + *(a1(0) + 28));
  sub_21DBF8E0C();
  return v2;
}

unint64_t sub_21D3D46E0()
{
  result = qword_27CE5BCF0;
  if (!qword_27CE5BCF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE5BCF0);
  }

  return result;
}

char *initializeBufferWithCopyOfBuffer for TTRRemindersPrintingViewModel(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(*(a3 - 8) + 80);
  if ((v4 & 0x20000) != 0)
  {
    v14 = *a2;
    *v3 = *a2;
    v3 = (v14 + ((v4 + 16) & ~v4));
  }

  else
  {
    v5 = a2[1];
    *a1 = *a2;
    *(a1 + 8) = v5;
    v7 = a2[2];
    v6 = a2[3];
    *(a1 + 16) = v7;
    *(a1 + 24) = v6;
    *(a1 + 32) = *(a2 + 32);
    *(a1 + 40) = a2[5];
    v8 = *(a3 + 32);
    v11 = sub_21DBF54CC();
    v12 = *(*(v11 - 8) + 16);
    sub_21DBF8E0C();
    v13 = v7;
    sub_21DBF8E0C();
    v12(&v3[v8], a2 + v8, v11);
    v3[*(a3 + 36)] = *(a2 + *(a3 + 36));
  }

  return v3;
}

uint64_t destroy for TTRRemindersPrintingViewModel(uint64_t a1, uint64_t a2)
{

  v4 = *(a2 + 32);
  v5 = sub_21DBF54CC();
  v6 = *(*(v5 - 8) + 8);

  return v6(a1 + v4, v5);
}

uint64_t initializeWithCopy for TTRRemindersPrintingViewModel(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v6;
  v8 = *(a2 + 16);
  v7 = *(a2 + 24);
  *(a1 + 16) = v8;
  *(a1 + 24) = v7;
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  v9 = *(a3 + 32);
  v10 = sub_21DBF54CC();
  v11 = *(*(v10 - 8) + 16);
  sub_21DBF8E0C();
  v12 = v8;
  sub_21DBF8E0C();
  v11(a1 + v9, a2 + v9, v10);
  *(a1 + *(a3 + 36)) = *(a2 + *(a3 + 36));
  return a1;
}

uint64_t assignWithCopy for TTRRemindersPrintingViewModel(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  sub_21DBF8E0C();

  v6 = *(a2 + 16);
  v7 = *(a1 + 16);
  *(a1 + 16) = v6;
  v8 = v6;

  v9 = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 24) = v9;
  *(a1 + 40) = *(a2 + 40);
  sub_21DBF8E0C();

  v10 = *(a3 + 32);
  v11 = sub_21DBF54CC();
  (*(*(v11 - 8) + 24))(a1 + v10, a2 + v10, v11);
  *(a1 + *(a3 + 36)) = *(a2 + *(a3 + 36));
  return a1;
}

uint64_t initializeWithTake for TTRRemindersPrintingViewModel(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = *a2;
  v6 = *(a2 + 24);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = v6;
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  v7 = *(a3 + 32);
  v8 = sub_21DBF54CC();
  (*(*(v8 - 8) + 32))(a1 + v7, a2 + v7, v8);
  *(a1 + *(a3 + 36)) = *(a2 + *(a3 + 36));
  return a1;
}

uint64_t assignWithTake for TTRRemindersPrintingViewModel(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v6;

  v7 = *(a1 + 16);
  *(a1 + 16) = *(a2 + 16);

  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);

  v8 = *(a3 + 32);
  v9 = sub_21DBF54CC();
  (*(*(v9 - 8) + 40))(a1 + v8, a2 + v8, v9);
  *(a1 + *(a3 + 36)) = *(a2 + *(a3 + 36));
  return a1;
}

uint64_t sub_21D3D4C08()
{
  result = sub_21DBF54CC();
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

void *initializeBufferWithCopyOfBuffer for TTRRemindersPrintingViewModel.Reminder(uint64_t a1, uint64_t *a2, int *a3)
{
  v4 = a1;
  v5 = *(*(a3 - 1) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v16 = *a2;
    *v4 = *a2;
    v4 = (v16 + ((v5 + 16) & ~v5));
  }

  else
  {
    *a1 = *a2;
    v29 = a2[1];
    *(a1 + 8) = v29;
    *(a1 + 16) = *(a2 + 16);
    v6 = a2[4];
    *(a1 + 24) = a2[3];
    *(a1 + 32) = v6;
    v7 = a2[6];
    *(a1 + 40) = a2[5];
    *(a1 + 48) = v7;
    v8 = a2[8];
    *(a1 + 56) = a2[7];
    *(a1 + 64) = v8;
    v9 = a2[10];
    *(a1 + 72) = a2[9];
    *(a1 + 80) = v9;
    *(a1 + 88) = *(a2 + 88);
    v10 = a2[13];
    v11 = a3[12];
    __dst = (a1 + v11);
    v27 = a2 + v11;
    *(a1 + 96) = a2[12];
    *(a1 + 104) = v10;
    v12 = type metadata accessor for TTRRemindersPrintingViewModel.Reminder.Assignment(0);
    v13 = *(v12 - 8);
    v28 = *(v13 + 48);
    v14 = v29;
    sub_21DBF8E0C();
    sub_21DBF8E0C();
    sub_21DBF8E0C();
    sub_21DBF8E0C();
    sub_21DBF8E0C();
    if (v28(v27, 1, v12))
    {
      v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58330);
      memcpy(__dst, v27, *(*(v15 - 8) + 64));
    }

    else
    {
      v17 = sub_21DBF54CC();
      v18 = *(v17 - 8);
      if ((*(v18 + 48))(v27, 1, v17))
      {
        v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5EA20);
        memcpy(__dst, v27, *(*(v19 - 8) + 64));
      }

      else
      {
        (*(v18 + 16))(__dst, v27, v17);
        (*(v18 + 56))(__dst, 0, 1, v17);
      }

      v20 = *(v12 + 20);
      v21 = &__dst[v20];
      v22 = &v27[v20];
      v23 = *(v22 + 1);
      *v21 = *v22;
      *(v21 + 1) = v23;
      v24 = *(v13 + 56);
      sub_21DBF8E0C();
      v24(__dst, 0, 1, v12);
    }

    v25 = a3[14];
    *(v4 + a3[13]) = *(a2 + a3[13]);
    *(v4 + v25) = *(a2 + v25);
    sub_21DBF8E0C();
  }

  return v4;
}

uint64_t destroy for TTRRemindersPrintingViewModel.Reminder(uint64_t a1, uint64_t a2)
{

  v4 = a1 + *(a2 + 48);
  v5 = type metadata accessor for TTRRemindersPrintingViewModel.Reminder.Assignment(0);
  if (!(*(*(v5 - 8) + 48))(v4, 1, v5))
  {
    v6 = sub_21DBF54CC();
    v7 = *(v6 - 8);
    if (!(*(v7 + 48))(v4, 1, v6))
    {
      (*(v7 + 8))(v4, v6);
    }
  }
}

uint64_t initializeWithCopy for TTRRemindersPrintingViewModel.Reminder(uint64_t a1, uint64_t a2, int *a3)
{
  *a1 = *a2;
  v28 = *(a2 + 8);
  *(a1 + 8) = v28;
  *(a1 + 16) = *(a2 + 16);
  v5 = *(a2 + 32);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = v5;
  v6 = *(a2 + 48);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = v6;
  v7 = *(a2 + 64);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = v7;
  v8 = *(a2 + 80);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 80) = v8;
  *(a1 + 88) = *(a2 + 88);
  v9 = *(a2 + 104);
  v10 = a3[12];
  __dst = (a1 + v10);
  v26 = (a2 + v10);
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 104) = v9;
  v11 = type metadata accessor for TTRRemindersPrintingViewModel.Reminder.Assignment(0);
  v12 = *(v11 - 8);
  v27 = *(v12 + 48);
  v13 = v28;
  sub_21DBF8E0C();
  sub_21DBF8E0C();
  sub_21DBF8E0C();
  sub_21DBF8E0C();
  sub_21DBF8E0C();
  if (v27(v26, 1, v11))
  {
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58330);
    memcpy(__dst, v26, *(*(v14 - 8) + 64));
  }

  else
  {
    v15 = v12;
    v16 = sub_21DBF54CC();
    v17 = *(v16 - 8);
    if ((*(v17 + 48))(v26, 1, v16))
    {
      v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5EA20);
      memcpy(__dst, v26, *(*(v18 - 8) + 64));
    }

    else
    {
      (*(v17 + 16))(__dst, v26, v16);
      (*(v17 + 56))(__dst, 0, 1, v16);
    }

    v19 = *(v11 + 20);
    v20 = &__dst[v19];
    v21 = &v26[v19];
    v22 = *(v21 + 1);
    *v20 = *v21;
    *(v20 + 1) = v22;
    v23 = *(v15 + 56);
    sub_21DBF8E0C();
    v23(__dst, 0, 1, v11);
  }

  v24 = a3[14];
  *(a1 + a3[13]) = *(a2 + a3[13]);
  *(a1 + v24) = *(a2 + v24);
  sub_21DBF8E0C();
  return a1;
}

uint64_t assignWithCopy for TTRRemindersPrintingViewModel.Reminder(uint64_t a1, uint64_t a2, int *a3)
{
  *a1 = *a2;
  v6 = *(a2 + 8);
  v7 = *(a1 + 8);
  *(a1 + 8) = v6;
  v8 = v6;

  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);
  sub_21DBF8E0C();

  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = *(a2 + 48);
  sub_21DBF8E0C();

  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = *(a2 + 64);
  sub_21DBF8E0C();

  *(a1 + 72) = *(a2 + 72);
  *(a1 + 80) = *(a2 + 80);
  sub_21DBF8E0C();

  *(a1 + 88) = *(a2 + 88);
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 104) = *(a2 + 104);
  sub_21DBF8E0C();

  v9 = a3[12];
  v10 = (a1 + v9);
  v11 = (a2 + v9);
  v12 = type metadata accessor for TTRRemindersPrintingViewModel.Reminder.Assignment(0);
  v13 = *(v12 - 8);
  v14 = *(v13 + 48);
  v15 = v14(v10, 1, v12);
  v16 = v14(v11, 1, v12);
  if (!v15)
  {
    if (v16)
    {
      sub_21D3D7E34(v10, type metadata accessor for TTRRemindersPrintingViewModel.Reminder.Assignment);
      goto LABEL_7;
    }

    v21 = sub_21DBF54CC();
    v34 = *(v21 - 8);
    v22 = *(v34 + 48);
    v23 = v22(v10, 1, v21);
    v24 = v22(v11, 1, v21);
    if (v23)
    {
      if (!v24)
      {
        (*(v34 + 16))(v10, v11, v21);
        (*(v34 + 56))(v10, 0, 1, v21);
LABEL_16:
        v30 = *(v12 + 20);
        v31 = &v10[v30];
        v32 = &v11[v30];
        *v31 = *v32;
        *(v31 + 1) = *(v32 + 1);
        sub_21DBF8E0C();

        goto LABEL_17;
      }
    }

    else
    {
      if (!v24)
      {
        (*(v34 + 24))(v10, v11, v21);
        goto LABEL_16;
      }

      (*(v34 + 8))(v10, v21);
    }

    v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5EA20);
    memcpy(v10, v11, *(*(v29 - 8) + 64));
    goto LABEL_16;
  }

  if (v16)
  {
LABEL_7:
    v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58330);
    memcpy(v10, v11, *(*(v20 - 8) + 64));
    goto LABEL_17;
  }

  v17 = sub_21DBF54CC();
  v18 = *(v17 - 8);
  if ((*(v18 + 48))(v11, 1, v17))
  {
    v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5EA20);
    memcpy(v10, v11, *(*(v19 - 8) + 64));
  }

  else
  {
    (*(v18 + 16))(v10, v11, v17);
    (*(v18 + 56))(v10, 0, 1, v17);
  }

  v25 = *(v12 + 20);
  v26 = &v10[v25];
  v27 = &v11[v25];
  *v26 = *v27;
  *(v26 + 1) = *(v27 + 1);
  v28 = *(v13 + 56);
  sub_21DBF8E0C();
  v28(v10, 0, 1, v12);
LABEL_17:
  *(a1 + a3[13]) = *(a2 + a3[13]);
  *(a1 + a3[14]) = *(a2 + a3[14]);
  sub_21DBF8E0C();

  return a1;
}

uint64_t initializeWithTake for TTRRemindersPrintingViewModel.Reminder(uint64_t a1, uint64_t a2, int *a3)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 88) = *(a2 + 88);
  v6 = a3[12];
  v7 = (a1 + v6);
  v8 = (a2 + v6);
  *(a1 + 96) = *(a2 + 96);
  v9 = type metadata accessor for TTRRemindersPrintingViewModel.Reminder.Assignment(0);
  v10 = *(v9 - 8);
  if ((*(v10 + 48))(v8, 1, v9))
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58330);
    memcpy(v7, v8, *(*(v11 - 8) + 64));
  }

  else
  {
    v12 = sub_21DBF54CC();
    v13 = *(v12 - 8);
    if ((*(v13 + 48))(v8, 1, v12))
    {
      v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5EA20);
      memcpy(v7, v8, *(*(v14 - 8) + 64));
    }

    else
    {
      (*(v13 + 32))(v7, v8, v12);
      (*(v13 + 56))(v7, 0, 1, v12);
    }

    *&v7[*(v9 + 20)] = *&v8[*(v9 + 20)];
    (*(v10 + 56))(v7, 0, 1, v9);
  }

  v15 = a3[14];
  *(a1 + a3[13]) = *(a2 + a3[13]);
  *(a1 + v15) = *(a2 + v15);
  return a1;
}

uint64_t assignWithTake for TTRRemindersPrintingViewModel.Reminder(uint64_t a1, uint64_t a2, int *a3)
{
  *a1 = *a2;
  v6 = *(a1 + 8);
  *(a1 + 8) = *(a2 + 8);

  *(a1 + 16) = *(a2 + 16);
  v7 = *(a2 + 32);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = v7;

  v8 = *(a2 + 48);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = v8;

  v9 = *(a2 + 64);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = v9;

  v10 = *(a2 + 80);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 80) = v10;

  *(a1 + 88) = *(a2 + 88);
  v11 = *(a2 + 104);
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 104) = v11;

  v12 = a3[12];
  v13 = (a1 + v12);
  v14 = (a2 + v12);
  v15 = type metadata accessor for TTRRemindersPrintingViewModel.Reminder.Assignment(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 48);
  v18 = v17(v13, 1, v15);
  v19 = v17(v14, 1, v15);
  if (!v18)
  {
    if (v19)
    {
      sub_21D3D7E34(v13, type metadata accessor for TTRRemindersPrintingViewModel.Reminder.Assignment);
      goto LABEL_7;
    }

    v24 = sub_21DBF54CC();
    v36 = *(v24 - 8);
    v25 = *(v36 + 48);
    v26 = v25(v13, 1, v24);
    v27 = v25(v14, 1, v24);
    if (v26)
    {
      if (!v27)
      {
        (*(v36 + 32))(v13, v14, v24);
        (*(v36 + 56))(v13, 0, 1, v24);
LABEL_16:
        v29 = *(v15 + 20);
        v30 = &v13[v29];
        v31 = &v14[v29];
        v33 = *v31;
        v32 = *(v31 + 1);
        *v30 = v33;
        *(v30 + 1) = v32;

        goto LABEL_17;
      }
    }

    else
    {
      if (!v27)
      {
        (*(v36 + 40))(v13, v14, v24);
        goto LABEL_16;
      }

      (*(v36 + 8))(v13, v24);
    }

    v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5EA20);
    memcpy(v13, v14, *(*(v28 - 8) + 64));
    goto LABEL_16;
  }

  if (v19)
  {
LABEL_7:
    v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58330);
    memcpy(v13, v14, *(*(v23 - 8) + 64));
    goto LABEL_17;
  }

  v20 = sub_21DBF54CC();
  v21 = *(v20 - 8);
  if ((*(v21 + 48))(v14, 1, v20))
  {
    v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5EA20);
    memcpy(v13, v14, *(*(v22 - 8) + 64));
  }

  else
  {
    (*(v21 + 32))(v13, v14, v20);
    (*(v21 + 56))(v13, 0, 1, v20);
  }

  *&v13[*(v15 + 20)] = *&v14[*(v15 + 20)];
  (*(v16 + 56))(v13, 0, 1, v15);
LABEL_17:
  v34 = a3[14];
  *(a1 + a3[13]) = *(a2 + a3[13]);
  *(a1 + v34) = *(a2 + v34);

  return a1;
}

void sub_21D3D5FA0()
{
  sub_21D3D6EE0(319, &qword_27CE5BD18, type metadata accessor for TTRRemindersPrintingViewModel.Reminder.Assignment);
  if (v0 <= 0x3F)
  {
    swift_initStructMetadata();
  }
}

uint64_t sub_21D3D609C(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v3;
  *(a1 + 16) = *(a2 + 16);
  sub_21DBF8E0C();
  return a1;
}

uint64_t assignWithCopy for TTRRemindersListViewModel.ListNameData(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  sub_21DBF8E0C();

  *(a1 + 16) = *(a2 + 16);
  return a1;
}

uint64_t assignWithTake for TTRRemindersListViewModel.ListNameData(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v4;

  *(a1 + 16) = *(a2 + 16);
  return a1;
}

uint64_t getEnumTagSinglePayload for TTRRemindersListViewModel.ListNameData(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 17))
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

uint64_t storeEnumTagSinglePayload for TTRRemindersListViewModel.ListNameData(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 17) = 1;
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

    *(result + 17) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t *initializeBufferWithCopyOfBuffer for TTRRemindersPrintingViewModel.Reminder.ImageAttachment(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v5 = *(*(a3 - 8) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v8 = *a2;
    *a1 = *a2;
    a1 = (v8 + ((v5 + 16) & ~v5));
  }

  else
  {
    v7 = sub_21DBF54CC();
    (*(*(v7 - 8) + 16))(a1, a2, v7);
    *(a1 + *(a3 + 20)) = *(a2 + *(a3 + 20));
  }

  return a1;
}

uint64_t destroy for TTRRemindersPrintingViewModel.Reminder.ImageAttachment(uint64_t a1)
{
  v2 = sub_21DBF54CC();
  v3 = *(*(v2 - 8) + 8);

  return v3(a1, v2);
}

uint64_t initializeWithCopy for TTRRemindersPrintingViewModel.Reminder.ImageAttachment(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21DBF54CC();
  (*(*(v6 - 8) + 16))(a1, a2, v6);
  *(a1 + *(a3 + 20)) = *(a2 + *(a3 + 20));
  return a1;
}

uint64_t assignWithCopy for TTRRemindersPrintingViewModel.Reminder.ImageAttachment(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21DBF54CC();
  (*(*(v6 - 8) + 24))(a1, a2, v6);
  v7 = *(a3 + 20);
  v8 = (a1 + v7);
  v9 = (a2 + v7);
  *v8 = *v9;
  v8[1] = v9[1];
  return a1;
}

uint64_t initializeWithTake for TTRRemindersPrintingViewModel.Reminder.ImageAttachment(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21DBF54CC();
  (*(*(v6 - 8) + 32))(a1, a2, v6);
  *(a1 + *(a3 + 20)) = *(a2 + *(a3 + 20));
  return a1;
}

uint64_t assignWithTake for TTRRemindersPrintingViewModel.Reminder.ImageAttachment(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21DBF54CC();
  (*(*(v6 - 8) + 40))(a1, a2, v6);
  *(a1 + *(a3 + 20)) = *(a2 + *(a3 + 20));
  return a1;
}

uint64_t sub_21D3D6558()
{
  result = sub_21DBF54CC();
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t *initializeBufferWithCopyOfBuffer for TTRRemindersPrintingViewModel.Reminder.Assignment(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v5 = *(*(a3 - 8) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v10 = *a2;
    *a1 = *a2;
    a1 = (v10 + ((v5 + 16) & ~v5));
  }

  else
  {
    v7 = sub_21DBF54CC();
    v8 = *(v7 - 8);
    if ((*(v8 + 48))(a2, 1, v7))
    {
      v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5EA20);
      memcpy(a1, a2, *(*(v9 - 8) + 64));
    }

    else
    {
      (*(v8 + 16))(a1, a2, v7);
      (*(v8 + 56))(a1, 0, 1, v7);
    }

    v11 = *(a3 + 20);
    v12 = (a1 + v11);
    v13 = (a2 + v11);
    v14 = v13[1];
    *v12 = *v13;
    v12[1] = v14;
    sub_21DBF8E0C();
  }

  return a1;
}

uint64_t destroy for TTRRemindersPrintingViewModel.Reminder.Assignment(uint64_t a1)
{
  v2 = sub_21DBF54CC();
  v3 = *(v2 - 8);
  if (!(*(v3 + 48))(a1, 1, v2))
  {
    (*(v3 + 8))(a1, v2);
  }
}

char *initializeWithCopy for TTRRemindersPrintingViewModel.Reminder.Assignment(char *a1, char *a2, uint64_t a3)
{
  v6 = sub_21DBF54CC();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a2, 1, v6))
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5EA20);
    memcpy(a1, a2, *(*(v8 - 8) + 64));
  }

  else
  {
    (*(v7 + 16))(a1, a2, v6);
    (*(v7 + 56))(a1, 0, 1, v6);
  }

  v9 = *(a3 + 20);
  v10 = &a1[v9];
  v11 = &a2[v9];
  v12 = *(v11 + 1);
  *v10 = *v11;
  *(v10 + 1) = v12;
  sub_21DBF8E0C();
  return a1;
}

char *assignWithCopy for TTRRemindersPrintingViewModel.Reminder.Assignment(char *a1, char *a2, uint64_t a3)
{
  v6 = sub_21DBF54CC();
  v7 = *(v6 - 8);
  v8 = *(v7 + 48);
  v9 = v8(a1, 1, v6);
  v10 = v8(a2, 1, v6);
  if (!v9)
  {
    if (!v10)
    {
      (*(v7 + 24))(a1, a2, v6);
      goto LABEL_7;
    }

    (*(v7 + 8))(a1, v6);
    goto LABEL_6;
  }

  if (v10)
  {
LABEL_6:
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5EA20);
    memcpy(a1, a2, *(*(v11 - 8) + 64));
    goto LABEL_7;
  }

  (*(v7 + 16))(a1, a2, v6);
  (*(v7 + 56))(a1, 0, 1, v6);
LABEL_7:
  v12 = *(a3 + 20);
  v13 = &a1[v12];
  v14 = &a2[v12];
  *v13 = *v14;
  *(v13 + 1) = *(v14 + 1);
  sub_21DBF8E0C();

  return a1;
}

char *initializeWithTake for TTRRemindersPrintingViewModel.Reminder.Assignment(char *a1, char *a2, uint64_t a3)
{
  v6 = sub_21DBF54CC();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a2, 1, v6))
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5EA20);
    memcpy(a1, a2, *(*(v8 - 8) + 64));
  }

  else
  {
    (*(v7 + 32))(a1, a2, v6);
    (*(v7 + 56))(a1, 0, 1, v6);
  }

  *&a1[*(a3 + 20)] = *&a2[*(a3 + 20)];
  return a1;
}

char *assignWithTake for TTRRemindersPrintingViewModel.Reminder.Assignment(char *a1, char *a2, uint64_t a3)
{
  v6 = sub_21DBF54CC();
  v7 = *(v6 - 8);
  v8 = *(v7 + 48);
  v9 = v8(a1, 1, v6);
  v10 = v8(a2, 1, v6);
  if (!v9)
  {
    if (!v10)
    {
      (*(v7 + 40))(a1, a2, v6);
      goto LABEL_7;
    }

    (*(v7 + 8))(a1, v6);
    goto LABEL_6;
  }

  if (v10)
  {
LABEL_6:
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5EA20);
    memcpy(a1, a2, *(*(v11 - 8) + 64));
    goto LABEL_7;
  }

  (*(v7 + 32))(a1, a2, v6);
  (*(v7 + 56))(a1, 0, 1, v6);
LABEL_7:
  v12 = *(a3 + 20);
  v13 = &a1[v12];
  v14 = &a2[v12];
  v16 = *v14;
  v15 = *(v14 + 1);
  *v13 = v16;
  *(v13 + 1) = v15;

  return a1;
}

void sub_21D3D6E30()
{
  sub_21D3D6EE0(319, &qword_280D1B888, MEMORY[0x277CC9260]);
  if (v0 <= 0x3F)
  {
    swift_initStructMetadata();
  }
}

void sub_21D3D6EE0(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_21DBFBA8C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

char *initializeBufferWithCopyOfBuffer for TTRRemindersPrintingViewModel.Item(char *a1, char *a2, uint64_t a3)
{
  v5 = *(*(a3 - 8) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v24 = *a2;
    *a1 = *a2;
    a1 = (v24 + ((v5 + 16) & ~v5));

    return a1;
  }

  v6 = *(a3 - 8);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
    *a1 = *a2;
    v49 = *(a2 + 1);
    *(a1 + 1) = v49;
    a1[16] = a2[16];
    v25 = *(a2 + 4);
    *(a1 + 3) = *(a2 + 3);
    *(a1 + 4) = v25;
    v26 = *(a2 + 6);
    *(a1 + 5) = *(a2 + 5);
    *(a1 + 6) = v26;
    v27 = *(a2 + 8);
    *(a1 + 7) = *(a2 + 7);
    *(a1 + 8) = v27;
    v28 = *(a2 + 10);
    *(a1 + 9) = *(a2 + 9);
    *(a1 + 10) = v28;
    a1[88] = a2[88];
    v29 = *(a2 + 13);
    *(a1 + 12) = *(a2 + 12);
    *(a1 + 13) = v29;
    v30 = type metadata accessor for TTRRemindersPrintingViewModel.Reminder(0);
    v31 = *(v30 + 48);
    __dst = &a1[v31];
    v51 = v30;
    v32 = &a2[v31];
    v33 = type metadata accessor for TTRRemindersPrintingViewModel.Reminder.Assignment(0);
    v34 = *(v33 - 8);
    v48 = *(v34 + 48);
    v35 = v49;
    sub_21DBF8E0C();
    sub_21DBF8E0C();
    sub_21DBF8E0C();
    sub_21DBF8E0C();
    sub_21DBF8E0C();
    if (v48(v32, 1, v33))
    {
      v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58330);
      memcpy(__dst, v32, *(*(v36 - 8) + 64));
    }

    else
    {
      v39 = v34;
      v40 = sub_21DBF54CC();
      v41 = *(v40 - 8);
      if ((*(v41 + 48))(v32, 1, v40))
      {
        v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5EA20);
        memcpy(__dst, v32, *(*(v42 - 8) + 64));
      }

      else
      {
        (*(v41 + 16))(__dst, v32, v40);
        (*(v41 + 56))(__dst, 0, 1, v40);
      }

      v43 = *(v33 + 20);
      v44 = &__dst[v43];
      v45 = &v32[v43];
      v46 = *(v45 + 1);
      *v44 = *v45;
      *(v44 + 1) = v46;
      v47 = *(v39 + 56);
      sub_21DBF8E0C();
      v47(__dst, 0, 1, v33);
    }

    a1[*(v51 + 52)] = a2[*(v51 + 52)];
    *&a1[*(v51 + 56)] = *&a2[*(v51 + 56)];
    sub_21DBF8E0C();
    goto LABEL_19;
  }

  if (!EnumCaseMultiPayload)
  {
    v8 = *(a2 + 1);
    *a1 = *a2;
    *(a1 + 1) = v8;
    v9 = *(a2 + 2);
    v10 = *(a2 + 3);
    v11 = *(a2 + 4);
    v12 = *(a2 + 5);
    v13 = *(a2 + 6);
    v14 = *(a2 + 7);
    v15 = a2[64];
    sub_21DBF8E0C();
    sub_21D2A7DB4(v9, v10, v11, v12, v13, v14, v15);
    *(a1 + 2) = v9;
    *(a1 + 3) = v10;
    *(a1 + 4) = v11;
    *(a1 + 5) = v12;
    *(a1 + 6) = v13;
    *(a1 + 7) = v14;
    a1[64] = v15;
    *(a1 + 65) = *(a2 + 65);
    v16 = a2[120];
    if (v16 == 255)
    {
      *(a1 + 72) = *(a2 + 72);
      *(a1 + 88) = *(a2 + 88);
      *(a1 + 104) = *(a2 + 104);
      a1[120] = a2[120];
    }

    else
    {
      v17 = *(a2 + 9);
      v18 = *(a2 + 10);
      v19 = *(a2 + 11);
      v20 = *(a2 + 12);
      v21 = *(a2 + 13);
      v22 = *(a2 + 14);
      v23 = v16 & 1;
      sub_21D0FB960(v17, v18, v19, v20, v21, v22, v16 & 1);
      *(a1 + 9) = v17;
      *(a1 + 10) = v18;
      *(a1 + 11) = v19;
      *(a1 + 12) = v20;
      *(a1 + 13) = v21;
      *(a1 + 14) = v22;
      a1[120] = v23;
    }

    a1[121] = a2[121];
LABEL_19:
    swift_storeEnumTagMultiPayload();
    return a1;
  }

  v37 = *(v6 + 64);

  return memcpy(a1, a2, v37);
}

void destroy for TTRRemindersPrintingViewModel.Item(uint64_t a1)
{
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {

    v10 = a1 + *(type metadata accessor for TTRRemindersPrintingViewModel.Reminder(0) + 48);
    v11 = type metadata accessor for TTRRemindersPrintingViewModel.Reminder.Assignment(0);
    if (!(*(*(v11 - 8) + 48))(v10, 1, v11))
    {
      v12 = sub_21DBF54CC();
      v13 = *(v12 - 8);
      if (!(*(v13 + 48))(v10, 1, v12))
      {
        (*(v13 + 8))(v10, v12);
      }
    }
  }

  else if (!EnumCaseMultiPayload)
  {

    sub_21D179EF0(*(a1 + 16), *(a1 + 24), *(a1 + 32), *(a1 + 40), *(a1 + 48), *(a1 + 56), *(a1 + 64));
    v3 = *(a1 + 120);
    if (v3 != 255)
    {
      v4 = *(a1 + 72);
      v5 = *(a1 + 80);
      v6 = *(a1 + 88);
      v7 = *(a1 + 96);
      v8 = *(a1 + 104);
      v9 = *(a1 + 112);

      sub_21D1078C0(v4, v5, v6, v7, v8, v9, v3 & 1);
    }
  }
}

char *initializeWithCopy for TTRRemindersPrintingViewModel.Item(char *a1, char *a2, uint64_t a3)
{
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
    *a1 = *a2;
    v47 = *(a2 + 1);
    *(a1 + 1) = v47;
    a1[16] = a2[16];
    v23 = *(a2 + 4);
    *(a1 + 3) = *(a2 + 3);
    *(a1 + 4) = v23;
    v24 = *(a2 + 6);
    *(a1 + 5) = *(a2 + 5);
    *(a1 + 6) = v24;
    v25 = *(a2 + 8);
    *(a1 + 7) = *(a2 + 7);
    *(a1 + 8) = v25;
    v26 = *(a2 + 10);
    *(a1 + 9) = *(a2 + 9);
    *(a1 + 10) = v26;
    a1[88] = a2[88];
    v27 = *(a2 + 13);
    *(a1 + 12) = *(a2 + 12);
    *(a1 + 13) = v27;
    v28 = type metadata accessor for TTRRemindersPrintingViewModel.Reminder(0);
    v29 = *(v28 + 48);
    __dst = &a1[v29];
    v49 = v28;
    v30 = &a2[v29];
    v31 = type metadata accessor for TTRRemindersPrintingViewModel.Reminder.Assignment(0);
    v32 = *(v31 - 8);
    v46 = *(v32 + 48);
    v33 = v47;
    sub_21DBF8E0C();
    sub_21DBF8E0C();
    sub_21DBF8E0C();
    sub_21DBF8E0C();
    sub_21DBF8E0C();
    if (v46(v30, 1, v31))
    {
      v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58330);
      memcpy(__dst, v30, *(*(v34 - 8) + 64));
    }

    else
    {
      v37 = v32;
      v38 = sub_21DBF54CC();
      v39 = *(v38 - 8);
      if ((*(v39 + 48))(v30, 1, v38))
      {
        v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5EA20);
        memcpy(__dst, v30, *(*(v40 - 8) + 64));
      }

      else
      {
        (*(v39 + 16))(__dst, v30, v38);
        (*(v39 + 56))(__dst, 0, 1, v38);
      }

      v41 = *(v31 + 20);
      v42 = &__dst[v41];
      v43 = &v30[v41];
      v44 = *(v43 + 1);
      *v42 = *v43;
      *(v42 + 1) = v44;
      v45 = *(v37 + 56);
      sub_21DBF8E0C();
      v45(__dst, 0, 1, v31);
    }

    a1[*(v49 + 52)] = a2[*(v49 + 52)];
    *&a1[*(v49 + 56)] = *&a2[*(v49 + 56)];
    sub_21DBF8E0C();
    goto LABEL_17;
  }

  if (!EnumCaseMultiPayload)
  {
    v7 = *(a2 + 1);
    *a1 = *a2;
    *(a1 + 1) = v7;
    v8 = *(a2 + 2);
    v9 = *(a2 + 3);
    v10 = *(a2 + 4);
    v11 = *(a2 + 5);
    v12 = *(a2 + 6);
    v13 = *(a2 + 7);
    v14 = a2[64];
    sub_21DBF8E0C();
    sub_21D2A7DB4(v8, v9, v10, v11, v12, v13, v14);
    *(a1 + 2) = v8;
    *(a1 + 3) = v9;
    *(a1 + 4) = v10;
    *(a1 + 5) = v11;
    *(a1 + 6) = v12;
    *(a1 + 7) = v13;
    a1[64] = v14;
    *(a1 + 65) = *(a2 + 65);
    v15 = a2[120];
    if (v15 == 255)
    {
      *(a1 + 72) = *(a2 + 72);
      *(a1 + 88) = *(a2 + 88);
      *(a1 + 104) = *(a2 + 104);
      a1[120] = a2[120];
    }

    else
    {
      v16 = *(a2 + 9);
      v17 = *(a2 + 10);
      v18 = *(a2 + 11);
      v19 = *(a2 + 12);
      v20 = *(a2 + 13);
      v21 = *(a2 + 14);
      v22 = v15 & 1;
      sub_21D0FB960(v16, v17, v18, v19, v20, v21, v15 & 1);
      *(a1 + 9) = v16;
      *(a1 + 10) = v17;
      *(a1 + 11) = v18;
      *(a1 + 12) = v19;
      *(a1 + 13) = v20;
      *(a1 + 14) = v21;
      a1[120] = v22;
    }

    a1[121] = a2[121];
LABEL_17:
    swift_storeEnumTagMultiPayload();
    return a1;
  }

  v35 = *(*(a3 - 8) + 64);

  return memcpy(a1, a2, v35);
}

char *assignWithCopy for TTRRemindersPrintingViewModel.Item(char *a1, char *a2, uint64_t a3)
{
  if (a1 == a2)
  {
    return a1;
  }

  sub_21D3D7E34(a1, type metadata accessor for TTRRemindersPrintingViewModel.Item);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
    *a1 = *a2;
    v42 = *(a2 + 1);
    *(a1 + 1) = v42;
    a1[16] = a2[16];
    *(a1 + 3) = *(a2 + 3);
    *(a1 + 4) = *(a2 + 4);
    *(a1 + 5) = *(a2 + 5);
    *(a1 + 6) = *(a2 + 6);
    *(a1 + 7) = *(a2 + 7);
    *(a1 + 8) = *(a2 + 8);
    *(a1 + 9) = *(a2 + 9);
    *(a1 + 10) = *(a2 + 10);
    a1[88] = a2[88];
    *(a1 + 12) = *(a2 + 12);
    *(a1 + 13) = *(a2 + 13);
    v43 = type metadata accessor for TTRRemindersPrintingViewModel.Reminder(0);
    v22 = v43[12];
    __dst = &a1[v22];
    v23 = &a2[v22];
    v24 = type metadata accessor for TTRRemindersPrintingViewModel.Reminder.Assignment(0);
    v39 = *(v24 - 8);
    v41 = *(v39 + 48);
    v25 = v42;
    sub_21DBF8E0C();
    sub_21DBF8E0C();
    sub_21DBF8E0C();
    sub_21DBF8E0C();
    sub_21DBF8E0C();
    if (v41(v23, 1, v24))
    {
      v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58330);
      memcpy(__dst, v23, *(*(v26 - 8) + 64));
    }

    else
    {
      v32 = sub_21DBF54CC();
      v33 = *(v32 - 8);
      if ((*(v33 + 48))(v23, 1, v32))
      {
        v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5EA20);
        memcpy(__dst, v23, *(*(v34 - 8) + 64));
      }

      else
      {
        (*(v33 + 16))(__dst, v23, v32);
        (*(v33 + 56))(__dst, 0, 1, v32);
      }

      v35 = *(v24 + 20);
      v36 = &__dst[v35];
      v37 = &v23[v35];
      *v36 = *v37;
      *(v36 + 1) = *(v37 + 1);
      v38 = *(v39 + 56);
      sub_21DBF8E0C();
      v38(__dst, 0, 1, v24);
    }

    a1[v43[13]] = a2[v43[13]];
    *&a1[v43[14]] = *&a2[v43[14]];
    sub_21DBF8E0C();
    goto LABEL_18;
  }

  if (!EnumCaseMultiPayload)
  {
    *a1 = *a2;
    *(a1 + 1) = *(a2 + 1);
    v7 = *(a2 + 2);
    v8 = *(a2 + 3);
    v9 = *(a2 + 4);
    v10 = *(a2 + 5);
    v11 = *(a2 + 6);
    v12 = *(a2 + 7);
    v13 = a2[64];
    sub_21DBF8E0C();
    sub_21D2A7DB4(v7, v8, v9, v10, v11, v12, v13);
    *(a1 + 2) = v7;
    *(a1 + 3) = v8;
    *(a1 + 4) = v9;
    *(a1 + 5) = v10;
    *(a1 + 6) = v11;
    *(a1 + 7) = v12;
    a1[64] = v13;
    a1[65] = a2[65];
    a1[66] = a2[66];
    a1[67] = a2[67];
    a1[68] = a2[68];
    v14 = a2[120];
    if (v14 == 255)
    {
      v29 = *(a2 + 72);
      v30 = *(a2 + 88);
      v31 = *(a2 + 104);
      a1[120] = a2[120];
      *(a1 + 104) = v31;
      *(a1 + 88) = v30;
      *(a1 + 72) = v29;
    }

    else
    {
      v15 = *(a2 + 9);
      v16 = *(a2 + 10);
      v17 = *(a2 + 11);
      v18 = *(a2 + 12);
      v19 = *(a2 + 13);
      v20 = *(a2 + 14);
      v21 = v14 & 1;
      sub_21D0FB960(v15, v16, v17, v18, v19, v20, v14 & 1);
      *(a1 + 9) = v15;
      *(a1 + 10) = v16;
      *(a1 + 11) = v17;
      *(a1 + 12) = v18;
      *(a1 + 13) = v19;
      *(a1 + 14) = v20;
      a1[120] = v21;
    }

    a1[121] = a2[121];
LABEL_18:
    swift_storeEnumTagMultiPayload();
    return a1;
  }

  v27 = *(*(a3 - 8) + 64);

  return memcpy(a1, a2, v27);
}

uint64_t sub_21D3D7E34(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

char *initializeWithTake for TTRRemindersPrintingViewModel.Item(char *a1, char *a2, uint64_t a3)
{
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    *a1 = *a2;
    *(a1 + 1) = *(a2 + 1);
    a1[16] = a2[16];
    *(a1 + 24) = *(a2 + 24);
    *(a1 + 40) = *(a2 + 40);
    *(a1 + 56) = *(a2 + 56);
    *(a1 + 72) = *(a2 + 72);
    a1[88] = a2[88];
    *(a1 + 6) = *(a2 + 6);
    v6 = type metadata accessor for TTRRemindersPrintingViewModel.Reminder(0);
    v7 = v6[12];
    v8 = &a1[v7];
    v9 = &a2[v7];
    v10 = type metadata accessor for TTRRemindersPrintingViewModel.Reminder.Assignment(0);
    v11 = *(v10 - 8);
    if ((*(v11 + 48))(v9, 1, v10))
    {
      v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58330);
      memcpy(v8, v9, *(*(v12 - 8) + 64));
    }

    else
    {
      v15 = sub_21DBF54CC();
      v16 = *(v15 - 8);
      if ((*(v16 + 48))(v9, 1, v15))
      {
        v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5EA20);
        memcpy(v8, v9, *(*(v17 - 8) + 64));
      }

      else
      {
        (*(v16 + 32))(v8, v9, v15);
        (*(v16 + 56))(v8, 0, 1, v15);
      }

      *&v8[*(v10 + 20)] = *&v9[*(v10 + 20)];
      (*(v11 + 56))(v8, 0, 1, v10);
    }

    a1[v6[13]] = a2[v6[13]];
    *&a1[v6[14]] = *&a2[v6[14]];
    swift_storeEnumTagMultiPayload();
    return a1;
  }

  else
  {
    v13 = *(*(a3 - 8) + 64);

    return memcpy(a1, a2, v13);
  }
}

char *assignWithTake for TTRRemindersPrintingViewModel.Item(char *a1, char *a2, uint64_t a3)
{
  if (a1 == a2)
  {
    return a1;
  }

  sub_21D3D7E34(a1, type metadata accessor for TTRRemindersPrintingViewModel.Item);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    *a1 = *a2;
    *(a1 + 1) = *(a2 + 1);
    a1[16] = a2[16];
    *(a1 + 24) = *(a2 + 24);
    *(a1 + 40) = *(a2 + 40);
    *(a1 + 56) = *(a2 + 56);
    *(a1 + 72) = *(a2 + 72);
    a1[88] = a2[88];
    *(a1 + 6) = *(a2 + 6);
    v6 = type metadata accessor for TTRRemindersPrintingViewModel.Reminder(0);
    v7 = v6[12];
    v8 = &a1[v7];
    v9 = &a2[v7];
    v10 = type metadata accessor for TTRRemindersPrintingViewModel.Reminder.Assignment(0);
    v11 = *(v10 - 8);
    if ((*(v11 + 48))(v9, 1, v10))
    {
      v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58330);
      memcpy(v8, v9, *(*(v12 - 8) + 64));
    }

    else
    {
      v15 = sub_21DBF54CC();
      v16 = *(v15 - 8);
      if ((*(v16 + 48))(v9, 1, v15))
      {
        v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5EA20);
        memcpy(v8, v9, *(*(v17 - 8) + 64));
      }

      else
      {
        (*(v16 + 32))(v8, v9, v15);
        (*(v16 + 56))(v8, 0, 1, v15);
      }

      *&v8[*(v10 + 20)] = *&v9[*(v10 + 20)];
      (*(v11 + 56))(v8, 0, 1, v10);
    }

    a1[v6[13]] = a2[v6[13]];
    *&a1[v6[14]] = *&a2[v6[14]];
    swift_storeEnumTagMultiPayload();
    return a1;
  }

  v13 = *(*(a3 - 8) + 64);

  return memcpy(a1, a2, v13);
}

uint64_t sub_21D3D8480()
{
  result = type metadata accessor for TTRRemindersPrintingViewModel.Reminder(319);
  if (v1 <= 0x3F)
  {
    swift_initEnumMetadataMultiPayload();
    return 0;
  }

  return result;
}

uint64_t destroy for TTRRemindersPrintingListTree(uint64_t a1)
{
}

uint64_t initializeWithCopy for TTRRemindersPrintingListTree(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v3;
  v5 = *(a2 + 16);
  v4 = *(a2 + 24);
  *(a1 + 16) = v5;
  *(a1 + 24) = v4;
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = *(a2 + 48);
  sub_21DBF8E0C();
  v6 = v5;
  sub_21DBF8E0C();
  return a1;
}

uint64_t assignWithCopy for TTRRemindersPrintingListTree(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  sub_21DBF8E0C();

  v4 = *(a2 + 16);
  v5 = *(a1 + 16);
  *(a1 + 16) = v4;
  v6 = v4;

  v7 = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 24) = v7;
  *(a1 + 40) = *(a2 + 40);
  sub_21DBF8E0C();

  *(a1 + 48) = *(a2 + 48);
  return a1;
}

__n128 __swift_memcpy49_8(uint64_t a1, uint64_t a2)
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

uint64_t assignWithTake for TTRRemindersPrintingListTree(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;

  v4 = *(a1 + 16);
  *(a1 + 8) = *(a2 + 8);

  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);

  *(a1 + 48) = *(a2 + 48);
  return a1;
}

uint64_t getEnumTagSinglePayload for TTRRemindersPrintingListTree(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 49))
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

uint64_t storeEnumTagSinglePayload for TTRRemindersPrintingListTree(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 49) = 1;
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

    *(result + 49) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t destroy for TTRRemindersPrintingListTree.Section(uint64_t a1)
{
  if (*(a1 + 8))
  {

    sub_21D179EF0(*(a1 + 16), *(a1 + 24), *(a1 + 32), *(a1 + 40), *(a1 + 48), *(a1 + 56), *(a1 + 64));
    v2 = *(a1 + 120);
    if (v2 != 255)
    {
      sub_21D1078C0(*(a1 + 72), *(a1 + 80), *(a1 + 88), *(a1 + 96), *(a1 + 104), *(a1 + 112), v2 & 1);
    }
  }
}

uint64_t initializeWithCopy for TTRRemindersPrintingListTree.Section(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  if (v4)
  {
    *a1 = *a2;
    *(a1 + 8) = v4;
    v5 = *(a2 + 16);
    v6 = *(a2 + 24);
    v7 = *(a2 + 32);
    v8 = *(a2 + 40);
    v9 = *(a2 + 48);
    v10 = *(a2 + 56);
    v11 = *(a2 + 64);
    sub_21DBF8E0C();
    sub_21D2A7DB4(v5, v6, v7, v8, v9, v10, v11);
    *(a1 + 16) = v5;
    *(a1 + 24) = v6;
    *(a1 + 32) = v7;
    *(a1 + 40) = v8;
    *(a1 + 48) = v9;
    *(a1 + 56) = v10;
    *(a1 + 64) = v11;
    *(a1 + 65) = *(a2 + 65);
    v12 = *(a2 + 120);
    if (v12 == 255)
    {
      *(a1 + 72) = *(a2 + 72);
      *(a1 + 88) = *(a2 + 88);
      *(a1 + 104) = *(a2 + 104);
      *(a1 + 120) = *(a2 + 120);
    }

    else
    {
      v13 = *(a2 + 72);
      v14 = *(a2 + 80);
      v15 = *(a2 + 88);
      v16 = *(a2 + 96);
      v17 = *(a2 + 104);
      v18 = *(a2 + 112);
      v19 = v12 & 1;
      sub_21D0FB960(v13, v14, v15, v16, v17, v18, v12 & 1);
      *(a1 + 72) = v13;
      *(a1 + 80) = v14;
      *(a1 + 88) = v15;
      *(a1 + 96) = v16;
      *(a1 + 104) = v17;
      *(a1 + 112) = v18;
      *(a1 + 120) = v19;
    }

    *(a1 + 121) = *(a2 + 121);
  }

  else
  {
    v20 = *(a2 + 80);
    *(a1 + 64) = *(a2 + 64);
    *(a1 + 80) = v20;
    *(a1 + 96) = *(a2 + 96);
    *(a1 + 106) = *(a2 + 106);
    v21 = *(a2 + 16);
    *a1 = *a2;
    *(a1 + 16) = v21;
    v22 = *(a2 + 48);
    *(a1 + 32) = *(a2 + 32);
    *(a1 + 48) = v22;
  }

  *(a1 + 128) = *(a2 + 128);
  sub_21DBF8E0C();
  return a1;
}

uint64_t assignWithCopy for TTRRemindersPrintingListTree.Section(uint64_t a1, __int128 *a2)
{
  v4 = *(a2 + 1);
  if (*(a1 + 8))
  {
    if (v4)
    {
      *a1 = *a2;
      *(a1 + 8) = *(a2 + 1);
      sub_21DBF8E0C();

      v5 = *(a2 + 2);
      v6 = *(a2 + 3);
      v7 = *(a2 + 4);
      v8 = *(a2 + 5);
      v9 = *(a2 + 6);
      v10 = *(a2 + 7);
      v11 = *(a2 + 64);
      sub_21D2A7DB4(v5, v6, v7, v8, v9, v10, v11);
      v12 = *(a1 + 16);
      v13 = *(a1 + 24);
      v14 = *(a1 + 32);
      v15 = *(a1 + 40);
      v16 = *(a1 + 48);
      v17 = *(a1 + 56);
      *(a1 + 16) = v5;
      *(a1 + 24) = v6;
      *(a1 + 32) = v7;
      *(a1 + 40) = v8;
      *(a1 + 48) = v9;
      *(a1 + 56) = v10;
      v18 = *(a1 + 64);
      *(a1 + 64) = v11;
      sub_21D179EF0(v12, v13, v14, v15, v16, v17, v18);
      *(a1 + 65) = *(a2 + 65);
      *(a1 + 66) = *(a2 + 66);
      *(a1 + 67) = *(a2 + 67);
      *(a1 + 68) = *(a2 + 68);
      v19 = *(a2 + 120);
      if (*(a1 + 120) != 255)
      {
        if (v19 == 255)
        {
          sub_21D2E979C(a1 + 72);
          v63 = *(a2 + 88);
          v64 = *(a2 + 104);
          v65 = *(a2 + 120);
          *(a1 + 72) = *(a2 + 72);
          *(a1 + 120) = v65;
          *(a1 + 104) = v64;
          *(a1 + 88) = v63;
        }

        else
        {
          v20 = *(a2 + 9);
          v21 = *(a2 + 10);
          v22 = *(a2 + 11);
          v23 = *(a2 + 12);
          v24 = *(a2 + 13);
          v25 = *(a2 + 14);
          v26 = v19 & 1;
          sub_21D0FB960(v20, v21, v22, v23, v24, v25, v19 & 1);
          v27 = *(a1 + 72);
          v28 = *(a1 + 80);
          v29 = *(a1 + 88);
          v30 = *(a1 + 96);
          v31 = *(a1 + 104);
          v32 = *(a1 + 112);
          v33 = *(a1 + 120);
          *(a1 + 72) = v20;
          *(a1 + 80) = v21;
          *(a1 + 88) = v22;
          *(a1 + 96) = v23;
          *(a1 + 104) = v24;
          *(a1 + 112) = v25;
          *(a1 + 120) = v26;
          sub_21D1078C0(v27, v28, v29, v30, v31, v32, v33);
        }

LABEL_14:
        *(a1 + 121) = *(a2 + 121);
        goto LABEL_15;
      }

LABEL_8:
      if (v19 == 255)
      {
        v54 = *(a2 + 72);
        v55 = *(a2 + 88);
        v56 = *(a2 + 104);
        *(a1 + 120) = *(a2 + 120);
        *(a1 + 104) = v56;
        *(a1 + 88) = v55;
        *(a1 + 72) = v54;
      }

      else
      {
        v41 = *(a2 + 9);
        v42 = *(a2 + 10);
        v43 = *(a2 + 11);
        v44 = *(a2 + 12);
        v45 = *(a2 + 13);
        v46 = *(a2 + 14);
        v47 = v19 & 1;
        sub_21D0FB960(v41, v42, v43, v44, v45, v46, v19 & 1);
        *(a1 + 72) = v41;
        *(a1 + 80) = v42;
        *(a1 + 88) = v43;
        *(a1 + 96) = v44;
        *(a1 + 104) = v45;
        *(a1 + 112) = v46;
        *(a1 + 120) = v47;
      }

      goto LABEL_14;
    }

    sub_21D179E9C(a1);
    v48 = a2[3];
    v50 = *a2;
    v49 = a2[1];
    *(a1 + 32) = a2[2];
    *(a1 + 48) = v48;
    *a1 = v50;
    *(a1 + 16) = v49;
    v52 = a2[5];
    v51 = a2[6];
    v53 = a2[4];
    *(a1 + 106) = *(a2 + 106);
    *(a1 + 80) = v52;
    *(a1 + 96) = v51;
    *(a1 + 64) = v53;
  }

  else
  {
    if (v4)
    {
      *a1 = *a2;
      *(a1 + 8) = *(a2 + 1);
      v34 = *(a2 + 2);
      v35 = *(a2 + 3);
      v36 = *(a2 + 4);
      v37 = *(a2 + 5);
      v38 = *(a2 + 6);
      v39 = *(a2 + 7);
      v40 = *(a2 + 64);
      sub_21DBF8E0C();
      sub_21D2A7DB4(v34, v35, v36, v37, v38, v39, v40);
      *(a1 + 16) = v34;
      *(a1 + 24) = v35;
      *(a1 + 32) = v36;
      *(a1 + 40) = v37;
      *(a1 + 48) = v38;
      *(a1 + 56) = v39;
      *(a1 + 64) = v40;
      *(a1 + 65) = *(a2 + 65);
      *(a1 + 66) = *(a2 + 66);
      *(a1 + 67) = *(a2 + 67);
      *(a1 + 68) = *(a2 + 68);
      v19 = *(a2 + 120);
      goto LABEL_8;
    }

    v57 = *a2;
    v58 = a2[1];
    v59 = a2[3];
    *(a1 + 32) = a2[2];
    *(a1 + 48) = v59;
    *a1 = v57;
    *(a1 + 16) = v58;
    v60 = a2[4];
    v61 = a2[5];
    v62 = a2[6];
    *(a1 + 106) = *(a2 + 106);
    *(a1 + 80) = v61;
    *(a1 + 96) = v62;
    *(a1 + 64) = v60;
  }

LABEL_15:
  *(a1 + 128) = *(a2 + 16);
  sub_21DBF8E0C();

  return a1;
}

__n128 __swift_memcpy136_8(uint64_t a1, uint64_t a2)
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
  v7 = *(a2 + 112);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 96) = v6;
  *(a1 + 112) = v7;
  *(a1 + 80) = result;
  return result;
}

uint64_t assignWithTake for TTRRemindersPrintingListTree.Section(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8))
  {
    v4 = *(a2 + 8);
    if (v4)
    {
      *a1 = *a2;
      *(a1 + 8) = v4;

      v5 = *(a2 + 64);
      v6 = *(a1 + 16);
      v7 = *(a1 + 24);
      v8 = *(a1 + 32);
      v9 = *(a1 + 40);
      v10 = *(a1 + 48);
      v11 = *(a1 + 56);
      v12 = *(a2 + 32);
      *(a1 + 16) = *(a2 + 16);
      *(a1 + 32) = v12;
      *(a1 + 48) = *(a2 + 48);
      v13 = *(a1 + 64);
      *(a1 + 64) = v5;
      sub_21D179EF0(v6, v7, v8, v9, v10, v11, v13);
      *(a1 + 65) = *(a2 + 65);
      *(a1 + 67) = *(a2 + 67);
      *(a1 + 68) = *(a2 + 68);
      v14 = *(a1 + 120);
      if (v14 != 255)
      {
        v15 = *(a2 + 120);
        if (v15 != 255)
        {
          v16 = *(a1 + 72);
          v17 = *(a1 + 80);
          v18 = *(a1 + 88);
          v19 = *(a1 + 96);
          v20 = *(a1 + 104);
          v21 = *(a1 + 112);
          *(a1 + 72) = *(a2 + 72);
          *(a1 + 88) = *(a2 + 88);
          *(a1 + 104) = *(a2 + 104);
          *(a1 + 120) = v15 & 1;
          sub_21D1078C0(v16, v17, v18, v19, v20, v21, v14 & 1);
LABEL_10:
          *(a1 + 121) = *(a2 + 121);
          goto LABEL_11;
        }

        sub_21D2E979C(a1 + 72);
      }

      *(a1 + 72) = *(a2 + 72);
      *(a1 + 88) = *(a2 + 88);
      *(a1 + 104) = *(a2 + 104);
      *(a1 + 120) = *(a2 + 120);
      goto LABEL_10;
    }

    sub_21D179E9C(a1);
  }

  v22 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v22;
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 106) = *(a2 + 106);
  v23 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v23;
  v24 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v24;
LABEL_11:
  *(a1 + 128) = *(a2 + 128);

  return a1;
}

uint64_t getEnumTagSinglePayload for TTRRemindersPrintingListTree.Section(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 136))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 128);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for TTRRemindersPrintingListTree.Section(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 120) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 136) = 1;
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
      *(result + 128) = (a2 - 1);
      return result;
    }

    *(result + 136) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

char *initializeBufferWithCopyOfBuffer for TTRRemindersPrintingHTMLResult(char *a1, char *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(*(a3 - 8) + 80);
  if ((v4 & 0x20000) != 0)
  {
    v16 = *a2;
    *v3 = *a2;
    v3 = (v16 + ((v4 + 16) & ~v4));
  }

  else
  {
    v5 = *(a2 + 1);
    *a1 = *a2;
    *(a1 + 1) = v5;
    v6 = *(a2 + 3);
    *(a1 + 2) = *(a2 + 2);
    *(a1 + 3) = v6;
    v7 = *(a3 + 24);
    v10 = sub_21DBF54CC();
    v11 = *(*(v10 - 8) + 16);
    sub_21DBF8E0C();
    sub_21DBF8E0C();
    v11(&v3[v7], &a2[v7], v10);
    v12 = *(a3 + 28);
    v13 = &v3[v12];
    v14 = &a2[v12];
    v15 = *(v14 + 1);
    *v13 = *v14;
    *(v13 + 1) = v15;
    sub_21DBF8E0C();
  }

  return v3;
}

uint64_t destroy for TTRRemindersPrintingHTMLResult(uint64_t a1, uint64_t a2)
{

  v4 = *(a2 + 24);
  v5 = sub_21DBF54CC();
  (*(*(v5 - 8) + 8))(a1 + v4, v5);
}

char *initializeWithCopy for TTRRemindersPrintingHTMLResult(char *a1, char *a2, uint64_t a3)
{
  v6 = *(a2 + 1);
  *a1 = *a2;
  *(a1 + 1) = v6;
  v7 = *(a2 + 3);
  *(a1 + 2) = *(a2 + 2);
  *(a1 + 3) = v7;
  v8 = *(a3 + 24);
  v9 = sub_21DBF54CC();
  v10 = *(*(v9 - 8) + 16);
  sub_21DBF8E0C();
  sub_21DBF8E0C();
  v10(&a1[v8], &a2[v8], v9);
  v11 = *(a3 + 28);
  v12 = &a1[v11];
  v13 = &a2[v11];
  v14 = *(v13 + 1);
  *v12 = *v13;
  *(v12 + 1) = v14;
  sub_21DBF8E0C();
  return a1;
}

char *assignWithCopy for TTRRemindersPrintingHTMLResult(char *a1, char *a2, uint64_t a3)
{
  *a1 = *a2;
  *(a1 + 1) = *(a2 + 1);
  sub_21DBF8E0C();

  *(a1 + 2) = *(a2 + 2);
  *(a1 + 3) = *(a2 + 3);
  sub_21DBF8E0C();

  v6 = *(a3 + 24);
  v7 = sub_21DBF54CC();
  (*(*(v7 - 8) + 24))(&a1[v6], &a2[v6], v7);
  v8 = *(a3 + 28);
  v9 = &a1[v8];
  v10 = &a2[v8];
  *v9 = *v10;
  *(v9 + 1) = *(v10 + 1);
  sub_21DBF8E0C();

  return a1;
}

char *initializeWithTake for TTRRemindersPrintingHTMLResult(char *a1, char *a2, uint64_t a3)
{
  v6 = *(a2 + 1);
  *a1 = *a2;
  *(a1 + 1) = v6;
  v7 = *(a3 + 24);
  v8 = sub_21DBF54CC();
  (*(*(v8 - 8) + 32))(&a1[v7], &a2[v7], v8);
  *&a1[*(a3 + 28)] = *&a2[*(a3 + 28)];
  return a1;
}

char *assignWithTake for TTRRemindersPrintingHTMLResult(char *a1, char *a2, uint64_t a3)
{
  v6 = *(a2 + 1);
  *a1 = *a2;
  *(a1 + 1) = v6;

  v7 = *(a2 + 3);
  *(a1 + 2) = *(a2 + 2);
  *(a1 + 3) = v7;

  v8 = *(a3 + 24);
  v9 = sub_21DBF54CC();
  (*(*(v9 - 8) + 40))(&a1[v8], &a2[v8], v9);
  v10 = *(a3 + 28);
  v11 = &a1[v10];
  v12 = &a2[v10];
  v14 = *v12;
  v13 = *(v12 + 1);
  *v11 = v14;
  *(v11 + 1) = v13;

  return a1;
}

uint64_t sub_21D3D9330()
{
  result = sub_21DBF54CC();
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

char *initializeBufferWithCopyOfBuffer for TTRRemindersPrintingHTMLFileResult(char *a1, char *a2, int *a3)
{
  v3 = a1;
  v4 = *(*(a3 - 1) + 80);
  if ((v4 & 0x20000) != 0)
  {
    v15 = *a2;
    *v3 = *a2;
    v3 = (v15 + ((v4 + 16) & ~v4));
  }

  else
  {
    v5 = *(a2 + 1);
    *a1 = *a2;
    *(a1 + 1) = v5;
    v6 = a3[5];
    v9 = sub_21DBF54CC();
    v10 = *(*(v9 - 8) + 16);
    sub_21DBF8E0C();
    v10(&v3[v6], &a2[v6], v9);
    v10(&v3[a3[6]], &a2[a3[6]], v9);
    v11 = a3[7];
    v12 = &v3[v11];
    v13 = &a2[v11];
    v14 = *(v13 + 1);
    *v12 = *v13;
    *(v12 + 1) = v14;
    sub_21DBF8E0C();
  }

  return v3;
}

uint64_t destroy for TTRRemindersPrintingHTMLFileResult(uint64_t a1, uint64_t a2)
{

  v4 = *(a2 + 20);
  v5 = sub_21DBF54CC();
  v6 = *(*(v5 - 8) + 8);
  v6(a1 + v4, v5);
  v6(a1 + *(a2 + 24), v5);
}

char *initializeWithCopy for TTRRemindersPrintingHTMLFileResult(char *a1, char *a2, int *a3)
{
  v6 = *(a2 + 1);
  *a1 = *a2;
  *(a1 + 1) = v6;
  v7 = a3[5];
  v8 = sub_21DBF54CC();
  v9 = *(*(v8 - 8) + 16);
  sub_21DBF8E0C();
  v9(&a1[v7], &a2[v7], v8);
  v9(&a1[a3[6]], &a2[a3[6]], v8);
  v10 = a3[7];
  v11 = &a1[v10];
  v12 = &a2[v10];
  v13 = *(v12 + 1);
  *v11 = *v12;
  *(v11 + 1) = v13;
  sub_21DBF8E0C();
  return a1;
}

char *assignWithCopy for TTRRemindersPrintingHTMLFileResult(char *a1, char *a2, int *a3)
{
  *a1 = *a2;
  *(a1 + 1) = *(a2 + 1);
  sub_21DBF8E0C();

  v6 = a3[5];
  v7 = sub_21DBF54CC();
  v8 = *(*(v7 - 8) + 24);
  v8(&a1[v6], &a2[v6], v7);
  v8(&a1[a3[6]], &a2[a3[6]], v7);
  v9 = a3[7];
  v10 = &a1[v9];
  v11 = &a2[v9];
  *v10 = *v11;
  *(v10 + 1) = *(v11 + 1);
  sub_21DBF8E0C();

  return a1;
}

char *initializeWithTake for TTRRemindersPrintingHTMLFileResult(char *a1, char *a2, int *a3)
{
  *a1 = *a2;
  v6 = a3[5];
  v7 = sub_21DBF54CC();
  v8 = *(*(v7 - 8) + 32);
  v8(&a1[v6], &a2[v6], v7);
  v8(&a1[a3[6]], &a2[a3[6]], v7);
  *&a1[a3[7]] = *&a2[a3[7]];
  return a1;
}

char *assignWithTake for TTRRemindersPrintingHTMLFileResult(char *a1, char *a2, int *a3)
{
  v6 = *(a2 + 1);
  *a1 = *a2;
  *(a1 + 1) = v6;

  v7 = a3[5];
  v8 = sub_21DBF54CC();
  v9 = *(*(v8 - 8) + 40);
  v9(&a1[v7], &a2[v7], v8);
  v9(&a1[a3[6]], &a2[a3[6]], v8);
  v10 = a3[7];
  v11 = &a1[v10];
  v12 = &a2[v10];
  v14 = *v12;
  v13 = v12[1];
  *v11 = v14;
  *(v11 + 1) = v13;

  return a1;
}

uint64_t sub_21D3D98FC()
{
  result = sub_21DBF54CC();
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t sub_21D3D9998@<X0>(void *a1@<X0>, id a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58330);
  MEMORY[0x28223BE20](v6 - 8);
  v92 = &v78 - v7;
  v8 = type metadata accessor for TTRRemindersListViewModel.DisplayDate(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v79 = (&v78 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58D68);
  MEMORY[0x28223BE20](v11 - 8);
  v93 = &v78 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5F2B0);
  MEMORY[0x28223BE20](v13 - 8);
  v87 = &v78 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v78 - v16;
  MEMORY[0x28223BE20](v18);
  v20 = &v78 - v19;
  v89 = v8;
  v90 = &v78 - v19;
  if (a2)
  {
    v88 = a2;
  }

  else
  {
    type metadata accessor for TTRListColors();
    v86 = 0;
    v21 = [a1 list];
    v95 = sub_21D0D8CF0(0, &qword_280D17690);
    v96 = &protocol witness table for REMList;
    v94[0] = v21;
    static TTRListColors.color(for:)(v94, &v99);
    sub_21D0CF7E0(v94, &qword_27CE59DC0);
    v85 = a1;
    v23 = v99;
    v22 = v100;
    v25 = v101;
    v24 = v102;
    v27 = v103;
    v26 = v104;
    v91 = v9;
    v28 = v105;
    v94[0] = v99;
    v94[1] = v100;
    v94[2] = v101;
    v95 = v102;
    v96 = v103;
    v97 = v104;
    v98 = v105;
    v29 = TTRListColors.Color.nativeColor.getter();
    a2 = v86;
    v88 = v29;
    v30 = v23;
    v31 = v22;
    a1 = v85;
    v32 = v24;
    v8 = v89;
    v20 = v90;
    v33 = v28;
    v9 = v91;
    sub_21D1078C0(v30, v31, v25, v32, v27, v26, v33);
  }

  v102 = sub_21D0D8CF0(0, &qword_280D17860);
  v103 = &protocol witness table for REMReminder;
  v99 = a1;
  v34 = a1;
  v86 = a2;
  static TTRRemindersListViewModel.Reminder.displayDate(from:dateHidden:)(&v99, 0, v20);
  __swift_destroy_boxed_opaque_existential_0(&v99);
  v35 = [v34 recurrenceRules];
  if (v35)
  {
    v36 = v35;
    sub_21D0D8CF0(0, &qword_280D177E8);
    v37 = sub_21DBFA5EC();
  }

  else
  {
    v37 = 0;
  }

  sub_21D0D3954(v20, v17, &unk_27CE5F2B0);
  v38 = *(v9 + 48);
  v39 = v38(v17, 1, v8);
  v91 = v9 + 48;
  if (v39 == 1)
  {
    sub_21D0CF7E0(v17, &unk_27CE5F2B0);
    v40 = sub_21DBF563C();
    (*(*(v40 - 8) + 56))(v93, 1, 1, v40);
  }

  else
  {
    v41 = *(v8 + 24);
    v42 = sub_21DBF563C();
    v43 = *(v42 - 8);
    v44 = &v17[v41];
    v45 = v93;
    (*(v43 + 16))(v93, v44, v42);
    sub_21D3D7E34(v17, type metadata accessor for TTRRemindersListViewModel.DisplayDate);
    (*(v43 + 56))(v45, 0, 1, v42);
  }

  v46 = v93;
  v85 = _s15RemindersUICore25TTRRemindersListViewModelC8ReminderV21recurrenceDescription4from11displayDateSSSgSaySo17REMRecurrenceRuleCGSg_10Foundation0L0VSgtFZ_0(v37, v93);
  v84 = v47;

  sub_21D0CF7E0(v46, &qword_27CE58D68);
  v48 = [v34 parentReminder];
  if (v48)
  {

    LODWORD(v93) = 2;
  }

  else
  {
    LODWORD(v93) = 0;
  }

  v83 = [v34 isCompleted];
  v49 = [v34 titleAsString];
  if (v49)
  {
    v50 = v49;
    v82 = sub_21DBFA16C();
    v81 = v51;
  }

  else
  {
    v82 = 0;
    v81 = 0xE000000000000000;
  }

  v52 = [v34 notesAsString];
  if (v52)
  {
    v53 = v52;
    v80 = sub_21DBFA16C();
    v55 = v54;
  }

  else
  {
    v80 = 0;
    v55 = 0;
  }

  v56 = [v34 hashtags];
  sub_21D0D8CF0(0, &qword_280D0C348);
  sub_21D365CC4();
  v57 = sub_21DBFAAAC();

  v58 = sub_21D3D337C(v57);

  v99 = v58;
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CE61630);
  sub_21D1ADAA8();
  v59 = sub_21DBFA07C();
  v61 = v60;

  v62 = v87;
  sub_21D0D3954(v20, v87, &unk_27CE5F2B0);
  v63 = v89;
  if (v38(v62, 1, v89) == 1)
  {
    v64 = 0;
    v65 = 0;
    v66 = 0;
  }

  else
  {
    v67 = v62;
    v68 = v79;
    sub_21D3DA2C4(v67, v79);
    if (v68[1])
    {
      v64 = *v68;
      v65 = v68[1];
    }

    else
    {
      v64 = 0;
      v65 = 0xE000000000000000;
    }

    v66 = *(v68 + *(v63 + 36));
    sub_21DBF8E0C();
    sub_21D3D7E34(v68, type metadata accessor for TTRRemindersListViewModel.DisplayDate);
  }

  v69 = type metadata accessor for TTRRemindersPrintingViewModel.Reminder.Assignment(0);
  (*(*(v69 - 8) + 56))(v92, 1, 1, v69);
  v70 = [v34 flaggedContext];
  if (v70)
  {
    v71 = v70;
    v72 = [v70 flagged];

    v73 = v72 != 0;
  }

  else
  {
    v73 = 0;
  }

  sub_21D0CF7E0(v90, &unk_27CE5F2B0);
  *a3 = v93;
  *(a3 + 8) = v88;
  *(a3 + 16) = v83;
  v74 = v81;
  *(a3 + 24) = v82;
  *(a3 + 32) = v74;
  *(a3 + 40) = v80;
  *(a3 + 48) = v55;
  *(a3 + 56) = v59;
  *(a3 + 64) = v61;
  *(a3 + 72) = v64;
  *(a3 + 80) = v65;
  *(a3 + 88) = v66;
  v75 = v84;
  *(a3 + 96) = v85;
  *(a3 + 104) = v75;
  v76 = type metadata accessor for TTRRemindersPrintingViewModel.Reminder(0);
  result = sub_21D3DA254(v92, a3 + v76[12]);
  *(a3 + v76[13]) = v73;
  *(a3 + v76[14]) = MEMORY[0x277D84F90];
  return result;
}

uint64_t sub_21D3DA254(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58330);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_21D3DA2C4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TTRRemindersListViewModel.DisplayDate(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t TTRBoardColumnItemLayoutAttributes.backgroundRoundedCorners.getter@<X0>(void *a1@<X8>)
{
  v3 = OBJC_IVAR____TtC15RemindersUICore34TTRBoardColumnItemLayoutAttributes_backgroundRoundedCorners;
  result = swift_beginAccess();
  *a1 = *(v1 + v3);
  return result;
}

uint64_t TTRBoardColumnItemLayoutAttributes.backgroundRoundedCorners.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = OBJC_IVAR____TtC15RemindersUICore34TTRBoardColumnItemLayoutAttributes_backgroundRoundedCorners;
  result = swift_beginAccess();
  *(v1 + v3) = v2;
  return result;
}

id TTRBoardColumnItemLayoutAttributes.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id TTRBoardColumnItemLayoutAttributes.init()()
{
  ObjectType = swift_getObjectType();
  *&v0[OBJC_IVAR____TtC15RemindersUICore34TTRBoardColumnItemLayoutAttributes_backgroundRoundedCorners] = 15;
  v3.receiver = v0;
  v3.super_class = ObjectType;
  return objc_msgSendSuper2(&v3, sel_init);
}

void TTRBoardColumnItemLayoutAttributes.copy(with:)(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v10.receiver = v2;
  v10.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v10, sel_copyWithZone_, a1);
  sub_21DBFBC1C();
  swift_unknownObjectRelease();
  sub_21D0CEB98(a2, v9);
  if (swift_dynamicCast())
  {
    v5 = OBJC_IVAR____TtC15RemindersUICore34TTRBoardColumnItemLayoutAttributes_backgroundRoundedCorners;
    swift_beginAccess();
    v6 = *&v2[v5];
    v7 = OBJC_IVAR____TtC15RemindersUICore34TTRBoardColumnItemLayoutAttributes_backgroundRoundedCorners;
    swift_beginAccess();
    *&v8[v7] = v6;
  }
}

BOOL TTRBoardColumnItemLayoutAttributes.isEqual(_:)(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  sub_21D0DB414(a1, v11);
  if (v12)
  {
    if (swift_dynamicCast())
    {
      v10.receiver = v1;
      v10.super_class = ObjectType;
      if (objc_msgSendSuper2(&v10, sel_isEqual_))
      {
        v4 = OBJC_IVAR____TtC15RemindersUICore34TTRBoardColumnItemLayoutAttributes_backgroundRoundedCorners;
        swift_beginAccess();
        v5 = *&v1[v4];
        v6 = OBJC_IVAR____TtC15RemindersUICore34TTRBoardColumnItemLayoutAttributes_backgroundRoundedCorners;
        swift_beginAccess();
        v7 = *&v9[v6];

        return v5 == v7;
      }
    }
  }

  else
  {
    sub_21D1A8418(v11);
  }

  return 0;
}

id TTRBoardColumnItemLayoutAttributes.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t TTRSECreateRemindersDebugMenuFormView.init()@<X0>(uint64_t *a1@<X8>)
{
  result = sub_21DBF946C();
  *a1 = result;
  return result;
}

uint64_t TTRSECreateRemindersDebugMenuFormView.body.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5BD78);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CE5BD80);
  sub_21DBF970C();
  sub_21D0D0F1C(&qword_27CE5BD88, &qword_27CE5BD80);
  swift_getOpaqueTypeConformance2();
  return sub_21DBF98EC();
}

uint64_t sub_21D3DA980@<X0>(uint64_t a1@<X8>)
{
  v14 = a1;
  v1 = sub_21DBF970C();
  v2 = *(v1 - 8);
  v12 = v1;
  v13 = v2;
  MEMORY[0x28223BE20](v1);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5BD80);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v11 - v7;
  sub_21DBF977C();
  sub_21DBF947C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5BDA0);
  sub_21D3DAF94();
  sub_21DBF9BBC();
  sub_21DBF96FC();
  sub_21D0D0F1C(&qword_27CE5BD88, &qword_27CE5BD80);
  v9 = v12;
  sub_21DBF99BC();
  (*(v13 + 8))(v4, v9);
  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_21D3DAC14()
{
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5BDB0);
  sub_21D0D0F1C(&qword_27CE5BDB8, &qword_27CE5BDB0);
  return sub_21DBF9BEC();
}

uint64_t sub_21D3DAD20@<X0>(uint64_t a1@<X8>)
{
  sub_21D176F0C();
  result = sub_21DBF996C();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  *(a1 + 24) = v5;
  return result;
}

uint64_t sub_21D3DADD4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5BD78);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CE5BD80);
  sub_21DBF970C();
  sub_21D0D0F1C(&qword_27CE5BD88, &qword_27CE5BD80);
  swift_getOpaqueTypeConformance2();
  return sub_21DBF98EC();
}

void *__swift_initWithCopy_strong(void *a1, void *a2)
{
  *a1 = *a2;

  return a1;
}

void *__swift_assignWithCopy_strong(void *a1, void *a2)
{
  *a1 = *a2;

  return a1;
}

void *__swift_assignWithTake_strong(void *a1, void *a2)
{
  *a1 = *a2;

  return a1;
}

unint64_t sub_21D3DAF94()
{
  result = qword_27CE5BDA8;
  if (!qword_27CE5BDA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CE5BDA0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE5BDA8);
  }

  return result;
}

uint64_t TTRMainActorDeferredAction.delegate.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 24) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*TTRMainActorDeferredAction.delegate.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x277D84FD8])
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
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v6 = *(v1 + 24);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v6;
  return sub_21D24989C;
}

void *TTRMainActorDeferredAction.__allocating_init()()
{
  v0 = sub_21DBF5EDC();
  MEMORY[0x28223BE20](v0);
  v1 = swift_allocObject();
  v1[3] = 0;
  swift_unknownObjectWeakInit();
  v2 = MEMORY[0x277D84F90];
  sub_21D0DD20C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD90);
  sub_21D0D0F1C(&qword_280D0C3D0, &unk_27CE5CD90);
  sub_21DBFBCBC();
  sub_21DBF5EFC();
  swift_allocObject();
  v1[4] = sub_21DBF5EEC();
  v1[5] = v2;
  return v1;
}

void *TTRMainActorDeferredAction.init()()
{
  v1 = sub_21DBF5EDC();
  MEMORY[0x28223BE20](v1);
  v0[3] = 0;
  swift_unknownObjectWeakInit();
  v2 = MEMORY[0x277D84F90];
  sub_21D0DD20C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD90);
  sub_21D0D0F1C(&qword_280D0C3D0, &unk_27CE5CD90);
  sub_21DBFBCBC();
  sub_21DBF5EFC();
  swift_allocObject();
  v0[4] = sub_21DBF5EEC();
  v0[5] = v2;
  return v0;
}

Swift::Void __swiftcall TTRMainActorDeferredAction.scheduleNextRunLoop(reason:)(Swift::String reason)
{
  v2 = v1;
  object = reason._object;
  countAndFlagsBits = reason._countAndFlagsBits;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5F150);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v12[-v6];
  v16 = *(v2 + 32);
  v13 = v2;
  v14 = countAndFlagsBits;
  v15 = object;
  sub_21DBF5EFC();

  sub_21DBF814C();

  if (v17 == 1)
  {
    v8 = sub_21DBFA89C();
    (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
    sub_21DBFA84C();

    v9 = sub_21DBFA83C();
    v10 = swift_allocObject();
    v11 = MEMORY[0x277D85700];
    v10[2] = v9;
    v10[3] = v11;
    v10[4] = v2;
    sub_21D1B5178(0, 0, v7, &unk_21DC14D38, v10);
  }
}

uint64_t sub_21D3DB578@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, BOOL *a4@<X8>)
{
  swift_beginAccess();
  v8 = *(a1 + 40);
  v9 = *(v8 + 2);
  swift_beginAccess();
  sub_21DBF8E0C();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(a1 + 40) = v8;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = sub_21D210A84(0, v9 + 1, 1, v8);
    *(a1 + 40) = v8;
  }

  v12 = *(v8 + 2);
  v11 = *(v8 + 3);
  if (v12 >= v11 >> 1)
  {
    v8 = sub_21D210A84((v11 > 1), v12 + 1, 1, v8);
  }

  *(v8 + 2) = v12 + 1;
  v13 = &v8[16 * v12];
  *(v13 + 4) = a2;
  *(v13 + 5) = a3;
  *(a1 + 40) = v8;
  result = swift_endAccess();
  *a4 = v9 == 0;
  return result;
}

uint64_t sub_21D3DB68C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 48) = a4;
  sub_21DBFA84C();
  *(v4 + 56) = sub_21DBFA83C();
  v6 = sub_21DBFA7CC();

  return MEMORY[0x2822009F8](sub_21D3DB724, v6, v5);
}

uint64_t sub_21D3DB724()
{
  v1 = v0[6];

  v0[5] = *(v1 + 32);
  sub_21DBF5EFC();

  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CE61630);
  sub_21DBF814C();

  v2 = v0[2];
  if (*(v2 + 16))
  {
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v3 = v0[6];
      v4 = *(v3 + 24);
      ObjectType = swift_getObjectType();
      v0[5] = v2;
      sub_21D0D0F1C(&qword_280D178D0, qword_27CE61630);
      v6 = sub_21DBFA07C();
      v8 = v7;

      (*(v4 + 8))(v3, v6, v8, ObjectType, v4);
      swift_unknownObjectRelease();
    }
  }

  v9 = v0[1];

  return v9();
}

uint64_t sub_21D3DB8F0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_21D1B795C;

  return sub_21D3DB68C(a1, v4, v5, v6);
}

Swift::Void __swiftcall TTRMainActorDeferredAction.drain(reason:)(Swift::String reason)
{
  v2 = v1;
  sub_21DBF5EFC();

  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CE61630);
  sub_21DBF814C();

  if (*(v8 + 16) && (swift_beginAccess(), swift_unknownObjectWeakLoadStrong()))
  {
    v3 = *(v1 + 24);
    ObjectType = swift_getObjectType();
    sub_21D0D0F1C(&qword_280D178D0, qword_27CE61630);
    v5 = sub_21DBFA07C();
    v7 = v6;

    (*(v3 + 8))(v2, v5, v7, ObjectType, v3);

    swift_unknownObjectRelease();
  }

  else
  {
  }
}

uint64_t TTRMainActorDeferredAction.deinit()
{
  sub_21D157444(v0 + 16);

  return v0;
}

uint64_t TTRMainActorDeferredAction.__deallocating_deinit()
{
  sub_21D157444(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t sub_21D3DBC10@<X0>(void *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = *(v1 + 40);
  *(v1 + 40) = MEMORY[0x277D84F90];
  return result;
}

uint64_t sub_21D3DBCAC@<X0>(unint64_t a1@<X0>, unint64_t *a2@<X1>, uint64_t *a3@<X3>, void *a4@<X8>)
{
  if (!(a1 >> 62))
  {
    v7 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v7)
    {
      goto LABEL_3;
    }

LABEL_16:

    v9 = MEMORY[0x277D84F90];
LABEL_17:
    *a4 = v9;
    return result;
  }

  v7 = sub_21DBFBD7C();
  if (!v7)
  {
    goto LABEL_16;
  }

LABEL_3:
  v32 = MEMORY[0x277D84F90];
  result = sub_21D18E980(0, v7 & ~(v7 >> 63), 0);
  if ((v7 & 0x8000000000000000) == 0)
  {
    v27 = a4;
    v9 = v32;
    v10 = sub_21D0D8CF0(0, a2);
    if ((a1 & 0xC000000000000001) != 0)
    {
      v11 = 0;
      do
      {
        v12 = MEMORY[0x223D44740](v11, a1);
        v13 = sub_21D0D8CF0(0, &qword_280D17880);
        v14 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
        v16 = *(v32 + 16);
        v15 = *(v32 + 24);
        if (v16 >= v15 >> 1)
        {
          sub_21D18E980((v15 > 1), v16 + 1, 1);
        }

        ++v11;
        *(v32 + 16) = v16 + 1;
        v17 = v32 + (v16 << 6);
        *(v17 + 32) = v12;
        *(v17 + 40) = v31;
        *(v17 + 56) = v13;
        *(v17 + 64) = v10;
        *(v17 + 72) = v30;
        *(v17 + 88) = v14;
      }

      while (v7 != v11);
    }

    else
    {
      v28 = sub_21D0D8CF0(0, &qword_280D17880);
      v18 = 32;
      do
      {
        v19 = *(a1 + v18);
        v20 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
        v22 = *(v32 + 16);
        v21 = *(v32 + 24);
        v23 = v19;
        if (v22 >= v21 >> 1)
        {
          v25 = v21 > 1;
          v26 = v23;
          sub_21D18E980(v25, v22 + 1, 1);
          v23 = v26;
        }

        *(v32 + 16) = v22 + 1;
        v24 = v32 + (v22 << 6);
        *(v24 + 32) = v23;
        *(v24 + 40) = v31;
        *(v24 + 56) = v28;
        *(v24 + 64) = v10;
        *(v24 + 72) = v30;
        *(v24 + 88) = v20;
        v18 += 8;
        --v7;
      }

      while (v7);
    }

    a4 = v27;
    goto LABEL_17;
  }

  __break(1u);
  return result;
}

uint64_t static TTRUndoContext<>.basic(with:)(void *a1)
{
  if (a1)
  {
    v2 = swift_allocObject();
    *(v2 + 16) = a1;
  }

  else
  {
    v2 = 0;
  }

  v3 = a1;
  return v2;
}

{
  v2 = swift_allocObject();
  *(v2 + 16) = a1;
  v3 = a1;
  return v2;
}

uint64_t TTRUndoNavigationEditingTarget.init(id:itemType:)@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X1>, uint64_t *a3@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE60DC0);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_21DC08D00;
  sub_21D0CEB98(a1, v6 + 32);
  sub_21D0CF2E8(a2, (v6 + 64));
  result = __swift_destroy_boxed_opaque_existential_0(a1);
  *a3 = v6;
  return result;
}

uint64_t TTRUndoContext.registerUndo(forEditing:action:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *&v14[0] = *a1;
  (*(a5 + 16))(v15, v14);
  v7 = *(a5 + 8);
  v8 = v7(a4, a5);
  v9 = v7(a4, a5);
  sub_21D3DD574(v15, v14);
  v10 = swift_allocObject();
  v11 = v14[1];
  v10[1] = v14[0];
  v10[2] = v11;
  v12 = v14[3];
  v10[3] = v14[2];
  v10[4] = v12;
  sub_21D0D8CF0(0, &unk_280D17840);
  sub_21DBFAE8C();

  return sub_21D3DD5B4(v15);
}

_OWORD *TTRUndoNavigationEditingTarget.ItemID.init(id:itemType:)@<X0>(_OWORD *a1@<X0>, _OWORD *a2@<X1>, _OWORD *a3@<X8>)
{
  sub_21D0CF2E8(a1, a3);

  return sub_21D0CF2E8(a2, a3 + 2);
}

uint64_t TTRUndoNavigationEditingTarget.itemIDs.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t TTRUndoNavigationEditingTarget.description.getter()
{
  v1 = *v0;
  v2 = *(*v0 + 16);
  v3 = MEMORY[0x277D84F90];
  if (v2)
  {
    v13 = MEMORY[0x277D84F90];
    sub_21D18E678(0, v2, 0);
    v3 = v13;
    v4 = v1 + 32;
    do
    {
      sub_21D22BFF0(v4, v12);
      sub_21DBFC14C();
      sub_21D22C04C(v12);
      v13 = v3;
      v6 = *(v3 + 16);
      v5 = *(v3 + 24);
      if (v6 >= v5 >> 1)
      {
        sub_21D18E678((v5 > 1), v6 + 1, 1);
        v3 = v13;
      }

      *(v3 + 16) = v6 + 1;
      v7 = v3 + 16 * v6;
      *(v7 + 32) = 0;
      *(v7 + 40) = 0xE000000000000000;
      v4 += 64;
      --v2;
    }

    while (v2);
  }

  v12[0] = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CE61630);
  sub_21D0D0F1C(&qword_280D178D0, qword_27CE61630);
  v8 = sub_21DBFA07C();
  v10 = v9;

  v12[0] = 91;
  v12[1] = 0xE100000000000000;
  MEMORY[0x223D42AA0](v8, v10);

  MEMORY[0x223D42AA0](93, 0xE100000000000000);
  return v12[0];
}

unint64_t TTRUndoActionNotification.description.getter()
{
  sub_21D3DD5E4(v0 + 8, &v15);
  if (v16)
  {
    sub_21D0D0FD0(&v15, &v17);
    *&v15 = 0;
    *(&v15 + 1) = 0xE000000000000000;
    sub_21DBFBEEC();
    MEMORY[0x223D42AA0](0xD000000000000013, 0x800000021DC5A990);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5BDD8);
    sub_21DBFC14C();
    v1 = v15;
    v2 = sub_21D210A84(0, 1, 1, MEMORY[0x277D84F90]);
    v4 = *(v2 + 2);
    v3 = *(v2 + 3);
    if (v4 >= v3 >> 1)
    {
      v2 = sub_21D210A84((v3 > 1), v4 + 1, 1, v2);
    }

    __swift_destroy_boxed_opaque_existential_0(&v17);
    *(v2 + 2) = v4 + 1;
    *&v2[16 * v4 + 32] = v1;
  }

  else
  {
    sub_21D0CF7E0(&v15, &qword_27CE5BDD0);
    v2 = MEMORY[0x277D84F90];
  }

  if (*(*(v0 + 48) + 16))
  {
    v17 = 0;
    v18 = 0xE000000000000000;
    sub_21DBFBEEC();

    v17 = 0xD000000000000010;
    v18 = 0x800000021DC5A930;
    *&v15 = *(v0 + 48);
    v5 = TTRUndoNavigationEditingTarget.description.getter();
    MEMORY[0x223D42AA0](v5);

    MEMORY[0x223D42AA0](93, 0xE100000000000000);
    v6 = v17;
    v7 = v18;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v2 = sub_21D210A84(0, *(v2 + 2) + 1, 1, v2);
    }

    v9 = *(v2 + 2);
    v8 = *(v2 + 3);
    if (v9 >= v8 >> 1)
    {
      v2 = sub_21D210A84((v8 > 1), v9 + 1, 1, v2);
    }

    *(v2 + 2) = v9 + 1;
    v10 = &v2[16 * v9];
    *(v10 + 4) = v6;
    *(v10 + 5) = v7;
  }

  else if (!*(v2 + 2))
  {

    v13 = 0x800000021DC5A970;
    v11 = 0xD000000000000014;
    goto LABEL_14;
  }

  v17 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CE61630);
  sub_21D0D0F1C(&qword_280D178D0, qword_27CE61630);
  v11 = sub_21DBFA07C();
  v13 = v12;

LABEL_14:
  v17 = 0xD00000000000001ALL;
  v18 = 0x800000021DC5A950;
  MEMORY[0x223D42AA0](v11, v13);

  MEMORY[0x223D42AA0](41, 0xE100000000000000);
  return v17;
}

uint64_t TTRUndoRegistration.editingTarget.setter(uint64_t *a1)
{
  v2 = *a1;

  *(v1 + 40) = v2;
  return result;
}

uint64_t TTRUndoRegistration.action.getter()
{
  v1 = *(v0 + 48);

  return v1;
}

uint64_t TTRUndoRegistration.init(navigationContext:editingTarget:action:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v8 = *a2;
  *a5 = 0u;
  *(a5 + 16) = 0u;
  v9 = MEMORY[0x277D84F90];
  *(a5 + 32) = 0;
  *(a5 + 40) = v9;
  sub_21D3DD654(a1, a5);

  *(a5 + 40) = v8;
  *(a5 + 48) = a3;
  *(a5 + 56) = a4;
  return result;
}

uint64_t sub_21D3DC818(void *a1, uint64_t a2)
{
  sub_21D3DD5E4(a2, v8);
  type metadata accessor for FrozenUndoContext();
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  v5 = v8[1];
  *(v4 + 24) = v8[0];
  *(v4 + 40) = v5;
  *(v4 + 56) = v9;
  v6 = a1;
  sub_21D3DC8A4(a2);
}

uint64_t sub_21D3DC8A4(uint64_t a1)
{
  v3 = *(a1 + 48);
  v10[2] = *v1;
  v10[3] = &off_282EB6E90;
  v9 = v1;

  v3(&v9);
  __swift_destroy_boxed_opaque_existential_0(&v9);
  v4 = v1[2];
  sub_21D3DD5E4(a1, v10);
  v5 = *(a1 + 40);
  v6 = v4;
  sub_21DBF8E0C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE59260);
  sub_21D0D0F1C(&qword_27CE5A7E8, &qword_27CE59260);
  v7 = sub_21DBF920C();
  v9 = v6;
  v10[5] = v5;
  v10[6] = v7;
  NSUndoManager.undoActionNotificationSubject.getter();
  sub_21DBF906C();

  return sub_21D3DDF7C(&v9);
}