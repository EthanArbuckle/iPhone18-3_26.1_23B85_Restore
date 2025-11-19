unint64_t sub_2655F1478()
{
  v1 = v0;
  v2 = type metadata accessor for StreamBlock.EventBlock(0);
  v87 = *(v2 - 8);
  v3 = *(v87 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v93 = &v86 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for StreamBlock.PCMBlock(0);
  v86 = *(v5 - 8);
  v6 = *(v86 + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v86 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v90 = sub_2655FE33C();
  v92 = *(v90 - 8);
  v9 = *(v92 + 64);
  v10 = MEMORY[0x28223BE20](v90);
  v88 = &v86 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = &v86 - v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280018650, &qword_2655FEC20);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2655FEBE0;
  *(inited + 32) = 0x6F4D726F736E6573;
  v89 = inited + 32;
  *(inited + 40) = 0xEB000000006C6564;
  v15 = type metadata accessor for StreamBlock(0);
  v16 = (v1 + v15[7]);
  v17 = v16[1];
  if (v17)
  {
    v18 = *v16;
    v19 = v17;
  }

  else
  {
    v18 = 0;
    v19 = 0xE000000000000000;
  }

  v20 = MEMORY[0x277D837D0];
  *(inited + 48) = v18;
  *(inited + 56) = v19;
  *(inited + 72) = v20;
  *(inited + 80) = 0x4449726F736E6573;
  *(inited + 88) = 0xE800000000000000;
  v21 = v91;
  v22 = (v91 + v15[10]);
  v24 = *v22;
  v23 = v22[1];
  if (v23 >> 60 == 15)
  {
    v25 = 0;
  }

  else
  {
    v25 = *v22;
  }

  if (v23 >> 60 == 15)
  {
    v26 = 0xC000000000000000;
  }

  else
  {
    v26 = v22[1];
  }

  sub_2655F1D1C(v24, v23);
  sub_2655FD5C8(v25, v26);
  v27 = sub_2655FE31C();
  v29 = v28;
  v30 = *(v92 + 8);
  v92 += 8;
  v30(v13, v90);
  *(inited + 96) = v27;
  v31 = MEMORY[0x277D837D0];
  *(inited + 104) = v29;
  *(inited + 120) = v31;
  *(inited + 128) = 0x656E6F5A656D6974;
  *(inited + 136) = 0xE800000000000000;
  v32 = (v21 + v15[11]);
  v33 = v32[1];
  if (v33)
  {
    v34 = *v32;
    v35 = v33;
  }

  else
  {
    v34 = 0;
    v35 = 0xE000000000000000;
  }

  *(inited + 144) = v34;
  *(inited + 152) = v35;
  *(inited + 168) = v31;
  *(inited + 176) = 0x496E6F6973736573;
  *(inited + 184) = 0xE900000000000044;
  v36 = (v21 + v15[12]);
  v37 = *v36;
  v38 = v36[1];
  if (v38 >> 60 == 15)
  {
    v39 = 0;
  }

  else
  {
    v39 = *v36;
  }

  if (v38 >> 60 == 15)
  {
    v40 = 0xC000000000000000;
  }

  else
  {
    v40 = v36[1];
  }

  sub_2655F1D1C(v37, v38);
  v41 = v88;
  sub_2655FD5C8(v39, v40);
  v42 = sub_2655FE31C();
  v44 = v43;
  v30(v41, v90);
  *(inited + 192) = v42;
  *(inited + 200) = v44;
  v45 = MEMORY[0x277D837D0];
  *(inited + 216) = MEMORY[0x277D837D0];
  *(inited + 224) = 0xD000000000000010;
  *(inited + 232) = 0x80000002655FF870;
  v46 = (v21 + v15[13]);
  v47 = *v46;
  if (*(v46 + 8))
  {
    v47 = 0.0;
  }

  v48 = MEMORY[0x277D839F8];
  *(inited + 240) = v47;
  *(inited + 264) = v48;
  *(inited + 272) = 0xD000000000000010;
  *(inited + 280) = 0x80000002655FF890;
  v49 = (v21 + v15[14]);
  v50 = *v49;
  if (*(v49 + 8))
  {
    v50 = 0.0;
  }

  *(inited + 288) = v50;
  *(inited + 312) = v48;
  *(inited + 320) = 0x646E496B636F6C62;
  *(inited + 328) = 0xEA00000000007865;
  v51 = v21 + v15[15];
  if (v51[4])
  {
    v52 = 0;
  }

  else
  {
    v52 = *v51;
  }

  v53 = MEMORY[0x277D84CC0];
  *(inited + 336) = v52;
  *(inited + 360) = v53;
  *(inited + 368) = 0x6C427473614C7369;
  *(inited + 376) = 0xEB000000006B636FLL;
  v54 = *(v21 + v15[16]);
  *(inited + 408) = MEMORY[0x277D839B0];
  *(inited + 384) = v54 & 1;
  v55 = sub_2655F3A04(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280018658, &qword_2655FEC28);
  swift_arrayDestroy();
  v56 = (v21 + v15[8]);
  v57 = v56[1];
  if (v57)
  {
    v58 = *v56;
    v97 = v45;
    *&v96 = v58;
    *(&v96 + 1) = v57;
    sub_2655F3B14(&v96, v95);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v94 = v55;
    sub_2655F3368(v95, 0x6552726F736E6573, 0xEE006E6F69736976, isUniquelyReferenced_nonNull_native);
    v55 = v94;
  }

  v60 = (v21 + v15[9]);
  v61 = v60[1];
  if (v61)
  {
    v62 = *v60;
    v97 = v45;
    *&v96 = v62;
    *(&v96 + 1) = v61;
    sub_2655F3B14(&v96, v95);

    v63 = swift_isUniquelyReferenced_nonNull_native();
    v94 = v55;
    sub_2655F3368(v95, 0x614E726F736E6573, 0xEA0000000000656DLL, v63);
    v55 = v94;
  }

  v64 = *v21;
  v65 = *(v64 + 16);
  v66 = MEMORY[0x277D84F90];
  if (v65)
  {
    v92 = v55;
    *&v96 = MEMORY[0x277D84F90];
    sub_2655F3780(0, v65, 0);
    v66 = v96;
    v67 = v64 + ((*(v86 + 80) + 32) & ~*(v86 + 80));
    v68 = *(v86 + 72);
    do
    {
      sub_2655F3B24(v67, v8, type metadata accessor for StreamBlock.PCMBlock);
      v69 = sub_2655F1D84();
      sub_2655F3B8C(v8, type metadata accessor for StreamBlock.PCMBlock);
      *&v96 = v66;
      v71 = *(v66 + 16);
      v70 = *(v66 + 24);
      if (v71 >= v70 >> 1)
      {
        sub_2655F3780((v70 > 1), v71 + 1, 1);
        v66 = v96;
      }

      *(v66 + 16) = v71 + 1;
      *(v66 + 8 * v71 + 32) = v69;
      v67 += v68;
      --v65;
    }

    while (v65);
    v55 = v92;
  }

  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280018660, &qword_2655FEC30);
  v97 = v72;
  *&v96 = v66;
  sub_2655F3B14(&v96, v95);
  v73 = swift_isUniquelyReferenced_nonNull_native();
  v94 = v55;
  sub_2655F3368(v95, 0x6B636F6C426D6370, 0xE900000000000073, v73);
  v74 = v94;
  v75 = v91[1];
  v76 = *(v75 + 16);
  v77 = MEMORY[0x277D84F90];
  if (v76)
  {
    v92 = v72;
    *&v96 = MEMORY[0x277D84F90];
    sub_2655F3780(0, v76, 0);
    v77 = v96;
    v78 = v75 + ((*(v87 + 80) + 32) & ~*(v87 + 80));
    v79 = *(v87 + 72);
    do
    {
      v80 = v93;
      sub_2655F3B24(v78, v93, type metadata accessor for StreamBlock.EventBlock);
      v81 = sub_2655F2560();
      sub_2655F3B8C(v80, type metadata accessor for StreamBlock.EventBlock);
      *&v96 = v77;
      v83 = *(v77 + 16);
      v82 = *(v77 + 24);
      if (v83 >= v82 >> 1)
      {
        sub_2655F3780((v82 > 1), v83 + 1, 1);
        v77 = v96;
      }

      *(v77 + 16) = v83 + 1;
      *(v77 + 8 * v83 + 32) = v81;
      v78 += v79;
      --v76;
    }

    while (v76);
    v72 = v92;
  }

  v97 = v72;
  *&v96 = v77;
  sub_2655F3B14(&v96, v95);
  v84 = swift_isUniquelyReferenced_nonNull_native();
  v94 = v74;
  sub_2655F3368(v95, 0x6F6C42746E657665, 0xEB00000000736B63, v84);
  return v94;
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

uint64_t sub_2655F1D1C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_2655F1D30(a1, a2);
  }

  return a1;
}

uint64_t sub_2655F1D30(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

unint64_t sub_2655F1D84()
{
  v1 = v0;
  v2 = sub_2655FE58C();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v50[1] = v50 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_2655FE30C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v50 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280018618 != -1)
  {
    swift_once();
  }

  v10 = qword_280018620;
  v11 = type metadata accessor for StreamBlock.PCMBlock(0);
  v12 = v1 + v11[10];
  v13 = *v12;
  v12[8];
  v14 = v10;
  sub_2655FE2EC();
  v15 = sub_2655FE2FC();
  (*(v6 + 8))(v9, v5);
  v16 = [v14 stringFromDate_];

  v17 = sub_2655FE55C();
  v19 = v18;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280018650, &qword_2655FEC20);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2655FEBF0;
  strcpy((inited + 32), "channelNames");
  *(inited + 45) = 0;
  *(inited + 46) = -5120;
  v21 = *v1;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280018668, &qword_2655FEC38);
  *(inited + 48) = v21;
  *(inited + 72) = v22;
  strcpy((inited + 80), "bitsPerChannel");
  *(inited + 95) = -18;
  v23 = v1 + v11[6];
  if (v23[4])
  {
    v24 = 0;
  }

  else
  {
    v24 = *v23;
  }

  v25 = MEMORY[0x277D84CC0];
  *(inited + 96) = v24;
  *(inited + 120) = v25;
  strcpy((inited + 128), "bytesPerFrame");
  *(inited + 142) = -4864;
  v26 = v1 + v11[7];
  if (v26[4])
  {
    v27 = 0;
  }

  else
  {
    v27 = *v26;
  }

  *(inited + 144) = v27;
  *(inited + 168) = v25;
  *(inited + 176) = 0x6C4674616D726F66;
  *(inited + 184) = 0xEB00000000736761;
  v28 = (v1 + v11[8]);
  if (*(v28 + 4))
  {
    v29 = 0;
  }

  else
  {
    v29 = *v28;
  }

  *(inited + 192) = v29;
  *(inited + 216) = v25;
  *(inited + 224) = 0xD000000000000011;
  *(inited + 232) = 0x80000002655FF8F0;
  v30 = (v1 + v11[9]);
  v31 = *v30;
  if (*(v30 + 8))
  {
    v31 = 0.0;
  }

  v32 = MEMORY[0x277D839F8];
  *(inited + 240) = v31;
  *(inited + 264) = v32;
  *(inited + 272) = 0x7461447472617473;
  v33 = MEMORY[0x277D837D0];
  *(inited + 280) = 0xE900000000000065;
  *(inited + 288) = v17;
  *(inited + 296) = v19;
  *(inited + 312) = v33;
  *(inited + 320) = 0x6D69547472617473;
  *(inited + 328) = 0xE900000000000065;
  v34 = (v1 + v11[11]);
  v35 = *v34;
  if (*(v34 + 8))
  {
    v35 = 0.0;
  }

  *(inited + 336) = v35;
  *(inited + 360) = v32;
  *(inited + 368) = 0x656D6954646E65;
  *(inited + 376) = 0xE700000000000000;
  v36 = (v1 + v11[12]);
  v37 = *v36;
  if (*(v36 + 8))
  {
    v37 = 0.0;
  }

  *(inited + 384) = v37;
  *(inited + 408) = v32;
  *(inited + 416) = 0x646E49656D617266;
  *(inited + 424) = 0xEA00000000007865;
  v38 = v1 + v11[13];
  if (v38[4])
  {
    v39 = 0;
  }

  else
  {
    v39 = *v38;
  }

  *(inited + 432) = v39;
  *(inited + 456) = v25;
  *(inited + 464) = 0x756F43656D617266;
  *(inited + 472) = 0xEA0000000000746ELL;
  v40 = v1 + v11[14];
  if (v40[4])
  {
    v41 = 0;
  }

  else
  {
    v41 = *v40;
  }

  *(inited + 504) = v25;
  *(inited + 480) = v41;

  v42 = sub_2655F3A04(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280018658, &qword_2655FEC28);
  swift_arrayDestroy();
  v55 = v42;
  v43 = (v1 + v11[15]);
  v44 = v43[1];
  if (v44 >> 60 == 15)
  {
    v45 = 0;
  }

  else
  {
    v45 = *v43;
  }

  if (v44 >> 60 == 15)
  {
    v46 = 0xC000000000000000;
  }

  else
  {
    v46 = v43[1];
  }

  sub_2655F1D1C(*v43, v44);
  v47 = sub_2655FA808(v24, v29, v45, v46);
  sub_2655F3C6C(v45, v46);
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280018678, &qword_2655FEC48);
  *&v53 = v47;
  sub_2655F3B14(&v53, v52);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v51 = v42;
  sub_2655F3368(v52, 0x73656D617266, 0xE600000000000000, isUniquelyReferenced_nonNull_native);
  return v51;
}

uint64_t sub_2655F2400(void (*a1)(uint64_t *__return_ptr, uint64_t), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = MEMORY[0x277D84F90];
  if (!v4)
  {
    return v5;
  }

  v16 = MEMORY[0x277D84F90];
  sub_2655F3780(0, v4, 0);
  v5 = v16;
  v8 = *(type metadata accessor for StreamBlock.Event(0) - 8);
  v9 = a3 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
  v10 = *(v8 + 72);
  while (1)
  {
    a1(&v15, v9);
    if (v3)
    {
      break;
    }

    v11 = v15;
    v16 = v5;
    v13 = *(v5 + 16);
    v12 = *(v5 + 24);
    if (v13 >= v12 >> 1)
    {
      sub_2655F3780((v12 > 1), v13 + 1, 1);
      v5 = v16;
    }

    *(v5 + 16) = v13 + 1;
    *(v5 + 8 * v13 + 32) = v11;
    v9 += v10;
    if (!--v4)
    {
      return v5;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_2655F2560()
{
  v1 = sub_2655FE58C();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v32[1] = v32 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280018650, &qword_2655FEC20);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2655FEC00;
  strcpy((inited + 32), "channelNames");
  *(inited + 45) = 0;
  *(inited + 46) = -5120;
  v5 = *v0;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280018668, &qword_2655FEC38);
  *(inited + 48) = v5;
  *(inited + 72) = v6;
  strcpy((inited + 80), "bitsPerChannel");
  *(inited + 95) = -18;
  v7 = type metadata accessor for StreamBlock.EventBlock(0);
  v8 = v7;
  v9 = v0 + v7[7];
  if (v9[4])
  {
    v10 = 0;
  }

  else
  {
    v10 = *v9;
  }

  v11 = MEMORY[0x277D84CC0];
  *(inited + 96) = v10;
  *(inited + 120) = v11;
  *(inited + 128) = 0x7265507365747962;
  *(inited + 136) = 0xEF64616F6C796150;
  v12 = v0 + v7[8];
  if (v12[4])
  {
    v13 = 0;
  }

  else
  {
    v13 = *v12;
  }

  *(inited + 144) = v13;
  *(inited + 168) = v11;
  *(inited + 176) = 0x6C4674616D726F66;
  *(inited + 184) = 0xEB00000000736761;
  v14 = (v0 + v7[9]);
  if (*(v14 + 4))
  {
    v15 = 0;
  }

  else
  {
    v15 = *v14;
  }

  *(inited + 192) = v15;
  *(inited + 216) = v11;
  *(inited + 224) = 0x646E49746E657665;
  *(inited + 232) = 0xEA00000000007865;
  v16 = v0 + v7[10];
  if (v16[4])
  {
    v17 = 0;
  }

  else
  {
    v17 = *v16;
  }

  *(inited + 240) = v17;
  *(inited + 264) = v11;
  *(inited + 272) = 0x6E65736572706572;
  *(inited + 280) = 0xEF65746174537374;
  v18 = *(v0 + v7[11]);
  *(inited + 312) = MEMORY[0x277D839B0];
  *(inited + 288) = v18 & 1;

  v19 = sub_2655F3A04(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280018658, &qword_2655FEC28);
  v20 = swift_arrayDestroy();
  v37 = v19;
  if (v18 != 2 && (v18 & 1) != 0)
  {
    v21 = (v0 + v8[12]);
    v22 = v21[1];
    if (v22 >> 60 == 15)
    {
      v23 = 0;
    }

    else
    {
      v23 = *v21;
    }

    if (v22 >> 60 == 15)
    {
      v24 = 0xC000000000000000;
    }

    else
    {
      v24 = v21[1];
    }

    sub_2655F1D1C(*v21, v22);
    v25 = sub_2655FA808(v10, v15, v23, v24);
    sub_2655F3C6C(v23, v24);
    v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280018678, &qword_2655FEC48);
    *&v35 = v25;
    sub_2655F3B14(&v35, v34);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v33 = v19;
    v20 = sub_2655F3368(v34, 0xD000000000000015, 0x80000002655FF8D0, isUniquelyReferenced_nonNull_native);
    v19 = v33;
    v37 = v33;
  }

  v27 = v0[1];
  MEMORY[0x28223BE20](v20);
  v32[-2] = v0;
  v29 = sub_2655F2400(sub_2655F3BEC, &v32[-4], v28);
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280018660, &qword_2655FEC30);
  *&v35 = v29;
  sub_2655F3B14(&v35, v34);
  v30 = swift_isUniquelyReferenced_nonNull_native();
  v33 = v19;
  sub_2655F3368(v34, 0x73746E657665, 0xE600000000000000, v30);
  return v33;
}

id sub_2655F2A94()
{
  v0 = [objc_allocWithZone(MEMORY[0x277CCAA68]) init];
  result = [v0 setFormatOptions_];
  qword_280018620 = v0;
  return result;
}

unint64_t sub_2655F2AE4(int a1, uint64_t a2)
{
  v5 = sub_2655FE58C();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280018650, &qword_2655FEC20);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2655FEC10;
  *(inited + 32) = 0x6D6954746E657665;
  *(inited + 40) = 0xE900000000000065;
  v8 = type metadata accessor for StreamBlock.Event(0);
  v9 = v2 + *(v8 + 20);
  v10 = *v9;
  if (*(v9 + 8))
  {
    v10 = 0.0;
  }

  *(inited + 72) = MEMORY[0x277D839F8];
  *(inited + 48) = v10;
  v11 = sub_2655F3A04(inited);
  swift_setDeallocating();
  sub_2655F3D20(inited + 32, &qword_280018658, &qword_2655FEC28);
  v22 = v11;
  v12 = (v2 + *(v8 + 24));
  v13 = v12[1];
  if (v13 >> 60 == 15)
  {
    v14 = 0;
  }

  else
  {
    v14 = *v12;
  }

  if (v13 >> 60 == 15)
  {
    v15 = 0xC000000000000000;
  }

  else
  {
    v15 = v12[1];
  }

  sub_2655F1D1C(*v12, v13);
  v16 = sub_2655FA808(a1, a2, v14, v15);
  sub_2655F3C6C(v14, v15);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280018678, &qword_2655FEC48);
  *&v20 = v16;
  sub_2655F3B14(&v20, v19);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_2655F3368(v19, 0x736C656E6E616863, 0xE800000000000000, isUniquelyReferenced_nonNull_native);
  return v11;
}

unint64_t sub_2655F2DE4(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_2655FE66C();
  sub_2655FE59C();
  v6 = sub_2655FE68C();

  return sub_2655F3524(a1, a2, v6);
}

double sub_2655F2E5C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v4 = v3;
  v6 = *v3;
  v7 = sub_2655F2DE4(a1, a2);
  if (v8)
  {
    v9 = v7;
    v10 = *v4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v4;
    v15 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_2655F35DC();
      v12 = v15;
    }

    v13 = *(*(v12 + 48) + 16 * v9 + 8);

    sub_2655F3B14((*(v12 + 56) + 32 * v9), a3);
    sub_2655F31B8(v9, v12);
    *v4 = v12;
  }

  else
  {
    result = 0.0;
    *a3 = 0u;
    a3[1] = 0u;
  }

  return result;
}

uint64_t sub_2655F2F00(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280018680, &qword_2655FEC50);
  v36 = a2;
  result = sub_2655FE5EC();
  v8 = result;
  if (*(v5 + 16))
  {
    v35 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = (*(v5 + 56) + 32 * v21);
      if (v36)
      {
        sub_2655F3B14(v25, v37);
      }

      else
      {
        sub_2655F3CC0(v25, v37);
      }

      v26 = *(v8 + 40);
      sub_2655FE66C();
      sub_2655FE59C();
      result = sub_2655FE68C();
      v27 = -1 << *(v8 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v15 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v15 + 8 * v29);
          if (v33 != -1)
          {
            v16 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v28) & ~*(v15 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      result = sub_2655F3B14(v37, (*(v8 + 56) + 32 * v16));
      ++*(v8 + 16);
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if ((v36 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_36;
    }

    v34 = 1 << *(v5 + 32);
    v3 = v35;
    if (v34 >= 64)
    {
      bzero((v5 + 64), ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v34;
    }

    *(v5 + 16) = 0;
  }

LABEL_36:
  *v3 = v8;
  return result;
}

uint64_t sub_2655F31B8(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_2655FE5CC() + 1) & ~v5;
    do
    {
      v10 = *(a2 + 40);
      v11 = (*(a2 + 48) + 16 * v6);
      v12 = *v11;
      v13 = v11[1];
      sub_2655FE66C();

      sub_2655FE59C();
      v14 = sub_2655FE68C();

      v15 = v14 & v7;
      if (v3 >= v8)
      {
        if (v15 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v15 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v15)
      {
LABEL_10:
        v16 = *(a2 + 48);
        v17 = (v16 + 16 * v3);
        v18 = (v16 + 16 * v6);
        if (v3 != v6 || v17 >= v18 + 1)
        {
          *v17 = *v18;
        }

        v19 = *(a2 + 56);
        v20 = (v19 + 32 * v3);
        v21 = (v19 + 32 * v6);
        if (v3 != v6 || v20 >= v21 + 2)
        {
          v9 = v21[1];
          *v20 = *v21;
          v20[1] = v9;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v22 = *(a2 + 16);
  v23 = __OFSUB__(v22, 1);
  v24 = v22 - 1;
  if (v23)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v24;
    ++*(a2 + 36);
  }

  return result;
}

_OWORD *sub_2655F3368(_OWORD *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_2655F2DE4(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_2655F35DC();
      v11 = v19;
      goto LABEL_8;
    }

    sub_2655F2F00(v16, a4 & 1);
    v20 = *v5;
    v11 = sub_2655F2DE4(a2, a3);
    if ((v17 & 1) != (v21 & 1))
    {
LABEL_16:
      result = sub_2655FE61C();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v22 = *v5;
  if (v17)
  {
    v23 = (v22[7] + 32 * v11);
    __swift_destroy_boxed_opaque_existential_0(v23);

    return sub_2655F3B14(a1, v23);
  }

  else
  {
    sub_2655F34B8(v11, a2, a3, a1, v22);
  }
}

_OWORD *sub_2655F34B8(unint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_2655F3B14(a4, (a5[7] + 32 * a1));
  v8 = a5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v10;
  }

  return result;
}

unint64_t sub_2655F3524(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_2655FE60C())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

void *sub_2655F35DC()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280018680, &qword_2655FEC50);
  v2 = *v0;
  v3 = sub_2655FE5DC();
  v4 = v3;
  if (*(v2 + 16))
  {
    v24 = v1;
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v22 = 32 * v17;
        sub_2655F3CC0(*(v2 + 56) + 32 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_2655F3B14(v25, (*(v4 + 56) + v22));
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {

        v1 = v24;
        goto LABEL_21;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v1 = v4;
  }

  return result;
}

void *sub_2655F3780(void *a1, int64_t a2, char a3)
{
  result = sub_2655F37C0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_2655F37A0(char *a1, int64_t a2, char a3)
{
  result = sub_2655F38F4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_2655F37C0(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280018690, &qword_2655FEC60);
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
    v10 = MEMORY[0x277D84F90];
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280018698, &qword_2655FEC68);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_2655F38F4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280018688, &qword_2655FEC58);
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
    v10 = MEMORY[0x277D84F90];
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

unint64_t sub_2655F3A04(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280018680, &qword_2655FEC50);
    v3 = sub_2655FE5FC();
    v4 = a1 + 32;

    while (1)
    {
      sub_2655F3DCC(v4, &v13);
      v5 = v13;
      v6 = v14;
      result = sub_2655F2DE4(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_2655F3B14(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

_OWORD *sub_2655F3B14(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_2655F3B24(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2655F3B8C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_2655F3BEC@<X0>(unint64_t *a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = type metadata accessor for StreamBlock.EventBlock(0);
  v5 = v3 + *(v4 + 28);
  if (*(v5 + 4))
  {
    v6 = 0;
  }

  else
  {
    v6 = *v5;
  }

  v7 = (v3 + *(v4 + 36));
  if (*(v7 + 4))
  {
    v8 = 0;
  }

  else
  {
    v8 = *v7;
  }

  result = sub_2655F2AE4(v6, v8);
  *a1 = result;
  return result;
}

uint64_t sub_2655F3C6C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_2655F3CC0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_2655F3D20(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t __swift_destroy_boxed_opaque_existential_0(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_2655F3DCC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280018658, &qword_2655FEC28);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_2655F3E8C()
{
  sub_2655F40C0(319, &qword_2800186B0, type metadata accessor for StreamBlock.PCMBlock);
  if (v0 <= 0x3F)
  {
    sub_2655F40C0(319, &qword_2800186B8, type metadata accessor for StreamBlock.EventBlock);
    if (v1 <= 0x3F)
    {
      sub_2655FE36C();
      if (v2 <= 0x3F)
      {
        sub_2655F4440(319, &qword_2800186C0, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
        if (v3 <= 0x3F)
        {
          sub_2655F4440(319, &qword_2800186C8, MEMORY[0x277CC9318], MEMORY[0x277D83D88]);
          if (v4 <= 0x3F)
          {
            sub_2655F4440(319, &qword_2800186D0, MEMORY[0x277D839F8], MEMORY[0x277D83D88]);
            if (v5 <= 0x3F)
            {
              sub_2655F4440(319, &qword_2800186D8, MEMORY[0x277D84CC0], MEMORY[0x277D83D88]);
              if (v6 <= 0x3F)
              {
                sub_2655F4440(319, &qword_2800186E0, MEMORY[0x277D839B0], MEMORY[0x277D83D88]);
                if (v7 <= 0x3F)
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

void sub_2655F40C0(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_2655FE5BC();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t __swift_get_extra_inhabitant_indexTm(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_2655FE36C();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

void *__swift_store_extra_inhabitant_indexTm(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_2655FE36C();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_2655F42AC()
{
  sub_2655F4440(319, &qword_2800186F8, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
  if (v0 <= 0x3F)
  {
    sub_2655F40C0(319, &qword_280018700, type metadata accessor for StreamBlock.Event);
    if (v1 <= 0x3F)
    {
      sub_2655FE36C();
      if (v2 <= 0x3F)
      {
        sub_2655F4440(319, &qword_2800186D8, MEMORY[0x277D84CC0], MEMORY[0x277D83D88]);
        if (v3 <= 0x3F)
        {
          sub_2655F4440(319, &qword_2800186E0, MEMORY[0x277D839B0], MEMORY[0x277D83D88]);
          if (v4 <= 0x3F)
          {
            sub_2655F4440(319, &qword_2800186C8, MEMORY[0x277CC9318], MEMORY[0x277D83D88]);
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

void sub_2655F4440(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_2655F44B0(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2655F44FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2655FE36C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24) + 8) >> 60;
    v11 = ((4 * v10) & 0xC) == 0;
    v12 = ((4 * v10) & 0xC | (v10 >> 2)) ^ 0xF;
    if (v11)
    {
      return 0;
    }

    else
    {
      return v12;
    }
  }
}

uint64_t sub_2655F45D8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_2655FE36C();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    v11 = (a1 + *(a4 + 24));
    *v11 = 0;
    v11[1] = ((~a2 >> 2) & 3 | (4 * ~a2)) << 60;
  }

  return result;
}

void sub_2655F46A0()
{
  sub_2655FE36C();
  if (v0 <= 0x3F)
  {
    sub_2655F4440(319, &qword_2800186D0, MEMORY[0x277D839F8], MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      sub_2655F4440(319, &qword_2800186C8, MEMORY[0x277CC9318], MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_2655F4798(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_2655FE36C();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_2655F4858(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_2655FE36C();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_2655F48FC()
{
  sub_2655F4440(319, &qword_2800186F8, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
  if (v0 <= 0x3F)
  {
    sub_2655FE36C();
    if (v1 <= 0x3F)
    {
      sub_2655F4440(319, &qword_2800186D8, MEMORY[0x277D84CC0], MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        sub_2655F4440(319, &qword_2800186D0, MEMORY[0x277D839F8], MEMORY[0x277D83D88]);
        if (v3 <= 0x3F)
        {
          sub_2655F4440(319, &qword_2800186C8, MEMORY[0x277CC9318], MEMORY[0x277D83D88]);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t sub_2655F4A94()
{
  v2 = *v0;
  sub_2655FE66C();
  sub_2655FE53C();
  return sub_2655FE68C();
}

uint64_t sub_2655F4AF8(uint64_t a1, uint64_t a2)
{
  v4 = sub_2655FA21C();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t sub_2655F4B44()
{
  v2 = *v0;
  sub_2655FE66C();
  sub_2655FE53C();
  return sub_2655FE68C();
}

uint64_t sub_2655F4BAC@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_2655F8F30(a1);
  *a2 = result;
  return result;
}

uint64_t sub_2655F4BE8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_2655F8F30(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_2655F4C3C()
{
  v0 = sub_2655FE51C();
  __swift_allocate_value_buffer(v0, qword_280018A00);
  __swift_project_value_buffer(v0, qword_280018A00);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800187C0, &qword_2655FF300);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800187C8, &qword_2655FF308) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v30 = swift_allocObject();
  *(v30 + 16) = xmmword_2655FEC70;
  v4 = v30 + v3;
  v5 = v30 + v3 + v1[14];
  *(v30 + v3) = 1;
  *v5 = "sensorModel";
  *(v5 + 8) = 11;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x277D21870];
  v7 = sub_2655FE4FC();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "sensorRevision";
  *(v9 + 8) = 14;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "sensorName";
  *(v11 + 1) = 10;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "sensorID";
  *(v13 + 1) = 8;
  v13[16] = 2;
  v8();
  v14 = (v4 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 5;
  *v15 = "timeZone";
  *(v15 + 1) = 8;
  v15[16] = 2;
  v8();
  v16 = (v4 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 6;
  *v17 = "sessionID";
  *(v17 + 1) = 9;
  v17[16] = 2;
  v8();
  v18 = (v4 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 7;
  *v19 = "sessionStartDate";
  *(v19 + 1) = 16;
  v19[16] = 2;
  v8();
  v20 = (v4 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 8;
  *v21 = "sessionStartTime";
  *(v21 + 1) = 16;
  v21[16] = 2;
  v8();
  v22 = v4 + 8 * v2 + v1[14];
  *(v4 + 8 * v2) = 9;
  *v22 = "blockIndex";
  *(v22 + 8) = 10;
  *(v22 + 16) = 2;
  v8();
  v23 = (v4 + 9 * v2);
  v24 = v23 + v1[14];
  *v23 = 10;
  *v24 = "isLastBlock";
  *(v24 + 1) = 11;
  v24[16] = 2;
  v8();
  v25 = (v4 + 10 * v2);
  v26 = v25 + v1[14];
  *v25 = 11;
  *v26 = "pcmBlocks";
  *(v26 + 1) = 9;
  v26[16] = 2;
  v8();
  v27 = (v4 + 11 * v2);
  v28 = v27 + v1[14];
  *v27 = 12;
  *v28 = "eventBlocks";
  *(v28 + 1) = 11;
  v28[16] = 2;
  v8();
  return sub_2655FE50C();
}

uint64_t sub_2655F5070()
{
  result = sub_2655FE3CC();
  if (!v0)
  {
    while (1)
    {
      if (v2)
      {
        return result;
      }

      if (result > 6)
      {
        if (result > 9)
        {
          if (result == 10)
          {
            v13 = *(type metadata accessor for StreamBlock(0) + 64);
            sub_2655FE3DC();
          }

          else
          {
            if (result == 11)
            {
              v9 = v0;
              type metadata accessor for StreamBlock.PCMBlock(0);
              sub_2655F7C90(&qword_280018770, type metadata accessor for StreamBlock.PCMBlock);
            }

            else
            {
              if (result != 12)
              {
                goto LABEL_6;
              }

              v9 = v0;
              type metadata accessor for StreamBlock.EventBlock(0);
              sub_2655F7C90(&qword_280018730, type metadata accessor for StreamBlock.EventBlock);
            }

            v0 = v9;
            sub_2655FE43C();
          }
        }

        else
        {
          if (result == 7)
          {
            v10 = v0;
            v11 = *(type metadata accessor for StreamBlock(0) + 52);
          }

          else
          {
            if (result != 8)
            {
              v6 = *(type metadata accessor for StreamBlock(0) + 60);
              sub_2655FE42C();
              goto LABEL_6;
            }

            v10 = v0;
            v15 = *(type metadata accessor for StreamBlock(0) + 56);
          }

          v0 = v10;
          sub_2655FE40C();
        }
      }

      else if (result > 3)
      {
        if (result == 4)
        {
          v7 = v0;
          v12 = *(type metadata accessor for StreamBlock(0) + 40);
        }

        else
        {
          if (result == 5)
          {
            v3 = v0;
            v16 = *(type metadata accessor for StreamBlock(0) + 44);
            goto LABEL_5;
          }

          v7 = v0;
          v8 = *(type metadata accessor for StreamBlock(0) + 48);
        }

        v0 = v7;
        sub_2655FE3EC();
      }

      else
      {
        switch(result)
        {
          case 1:
            v3 = v0;
            v4 = *(type metadata accessor for StreamBlock(0) + 28);
LABEL_5:
            v0 = v3;
            sub_2655FE41C();
            break;
          case 2:
            v3 = v0;
            v14 = *(type metadata accessor for StreamBlock(0) + 32);
            goto LABEL_5;
          case 3:
            v3 = v0;
            v5 = *(type metadata accessor for StreamBlock(0) + 36);
            goto LABEL_5;
        }
      }

LABEL_6:
      result = sub_2655FE3CC();
    }
  }

  return result;
}

uint64_t sub_2655F5350()
{
  v2 = type metadata accessor for StreamBlock(0);
  v3 = (v0 + v2[7]);
  if (!v3[1] || (v4 = *v3, result = sub_2655FE4CC(), !v1))
  {
    v6 = (v0 + v2[8]);
    if (!v6[1] || (v7 = *v6, result = sub_2655FE4CC(), !v1))
    {
      v8 = (v0 + v2[9]);
      if (!v8[1] || (v9 = *v8, result = sub_2655FE4CC(), !v1))
      {
        v10 = v0 + v2[10];
        v11 = *(v10 + 1);
        if (v11 >> 60 == 15 || (v12 = *v10, sub_2655F1D30(*v10, *(v10 + 1)), sub_2655FE49C(), result = sub_2655F8178(v12, v11), !v1))
        {
          v13 = (v0 + v2[11]);
          if (!v13[1] || (v14 = *v13, result = sub_2655FE4CC(), !v1))
          {
            v15 = v0 + v2[12];
            v16 = *(v15 + 1);
            if (v16 >> 60 == 15 || (v17 = *v15, sub_2655F1D30(*v15, *(v15 + 1)), sub_2655FE49C(), result = sub_2655F8178(v17, v16), !v1))
            {
              v18 = v0 + v2[13];
              if ((v18[8] & 1) != 0 || (v19 = *v18, result = sub_2655FE4BC(), !v1))
              {
                v20 = v0 + v2[14];
                if ((v20[8] & 1) != 0 || (v21 = *v20, result = sub_2655FE4BC(), !v1))
                {
                  v22 = (v0 + v2[15]);
                  if ((v22[1] & 1) != 0 || (v23 = *v22, result = sub_2655FE4DC(), !v1))
                  {
                    if (*(v0 + v2[16]) == 2 || (result = sub_2655FE48C(), !v1))
                    {
                      if (!*(*v0 + 16) || (type metadata accessor for StreamBlock.PCMBlock(0), sub_2655F7C90(&qword_280018770, type metadata accessor for StreamBlock.PCMBlock), result = sub_2655FE4EC(), !v1))
                      {
                        if (!*(v0[1] + 16) || (type metadata accessor for StreamBlock.EventBlock(0), sub_2655F7C90(&qword_280018730, type metadata accessor for StreamBlock.EventBlock), result = sub_2655FE4EC(), !v1))
                        {
                          v24 = v0 + v2[6];
                          return sub_2655FE34C();
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

  return result;
}

double sub_2655F5700@<D0>(int *a1@<X0>, void *a2@<X8>)
{
  v4 = MEMORY[0x277D84F90];
  *a2 = MEMORY[0x277D84F90];
  a2[1] = v4;
  v5 = a2 + a1[6];
  sub_2655FE35C();
  v6 = a1[8];
  v7 = (a2 + a1[7]);
  *v7 = 0;
  v7[1] = 0;
  v8 = (a2 + v6);
  *v8 = 0;
  v8[1] = 0;
  v9 = a1[10];
  v10 = (a2 + a1[9]);
  *v10 = 0;
  v10[1] = 0;
  result = 0.0;
  *(a2 + v9) = xmmword_2655FEC80;
  v12 = a1[12];
  v13 = (a2 + a1[11]);
  *v13 = 0;
  v13[1] = 0;
  *(a2 + v12) = xmmword_2655FEC80;
  v14 = a1[14];
  v15 = a2 + a1[13];
  *v15 = 0;
  v15[8] = 1;
  v16 = a2 + v14;
  *v16 = 0;
  v16[8] = 1;
  v17 = a1[16];
  v18 = a2 + a1[15];
  v18[4] = 1;
  *v18 = 0;
  *(a2 + v17) = 2;
  return result;
}

uint64_t (*sub_2655F57D4(uint64_t a1, uint64_t a2))()
{
  result = nullsub_1;
  v4 = v2 + *(a2 + 24);
  return result;
}

uint64_t sub_2655F5830(uint64_t a1, uint64_t a2)
{
  v4 = sub_2655F7C90(&qword_2800187B8, type metadata accessor for StreamBlock);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_2655F58D4(uint64_t a1)
{
  v2 = sub_2655F7C90(&qword_280018790, type metadata accessor for StreamBlock);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_2655F5940()
{
  sub_2655F7C90(&qword_280018790, type metadata accessor for StreamBlock);

  return sub_2655FE47C();
}

uint64_t sub_2655F59C0()
{
  v0 = sub_2655FE51C();
  __swift_allocate_value_buffer(v0, qword_280018A18);
  __swift_project_value_buffer(v0, qword_280018A18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800187C0, &qword_2655FF300);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800187C8, &qword_2655FF308) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_2655FEC90;
  v4 = v20 + v3 + v1[14];
  *(v20 + v3) = 1;
  *v4 = "FormatFlagIsFloat";
  *(v4 + 8) = 17;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x277D21870];
  v6 = sub_2655FE4FC();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v20 + v3 + v2 + v1[14];
  *(v20 + v3 + v2) = 2;
  *v8 = "FormatFlagIsBigEndian";
  *(v8 + 8) = 21;
  *(v8 + 16) = 2;
  v7();
  v9 = (v20 + v3 + 2 * v2);
  v10 = v9 + v1[14];
  *v9 = 4;
  *v10 = "FormatFlagIsSignedInteger";
  *(v10 + 1) = 25;
  v10[16] = 2;
  v7();
  v11 = (v20 + v3 + 3 * v2);
  v12 = v11 + v1[14];
  *v11 = 8;
  *v12 = "FormatFlagIsPacked";
  *(v12 + 1) = 18;
  v12[16] = 2;
  v7();
  v13 = (v20 + v3 + 4 * v2);
  v14 = v13 + v1[14];
  *v13 = 16;
  *v14 = "FormatFlagIsAlignedHigh";
  *(v14 + 1) = 23;
  v14[16] = 2;
  v7();
  v15 = (v20 + v3 + 5 * v2);
  v16 = v15 + v1[14];
  *v15 = 256;
  *v16 = "FormatFlagVarint";
  *(v16 + 1) = 16;
  v16[16] = 2;
  v7();
  v17 = (v20 + v3 + 6 * v2);
  v18 = v17 + v1[14];
  *v17 = 512;
  *v18 = "FormatFlagALAC";
  *(v18 + 1) = 14;
  v18[16] = 2;
  v7();
  return sub_2655FE50C();
}

uint64_t sub_2655F5CE8()
{
  v0 = sub_2655FE51C();
  __swift_allocate_value_buffer(v0, qword_280018A30);
  __swift_project_value_buffer(v0, qword_280018A30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800187C0, &qword_2655FF300);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800187C8, &qword_2655FF308) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_2655FECA0;
  v4 = v28 + v3;
  v5 = v28 + v3 + v1[14];
  *(v28 + v3) = 1;
  *v5 = "channelNames";
  *(v5 + 8) = 12;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x277D21870];
  v7 = sub_2655FE4FC();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "bitsPerChannel";
  *(v9 + 8) = 14;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "bytesPerFrame";
  *(v11 + 1) = 13;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "formatFlags";
  *(v13 + 1) = 11;
  v13[16] = 2;
  v8();
  v14 = (v4 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 5;
  *v15 = "nominalSampleRate";
  *(v15 + 1) = 17;
  v15[16] = 2;
  v8();
  v16 = (v4 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 6;
  *v17 = "startDate";
  *(v17 + 1) = 9;
  v17[16] = 2;
  v8();
  v18 = (v4 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 7;
  *v19 = "startTime";
  *(v19 + 1) = 9;
  v19[16] = 2;
  v8();
  v20 = (v4 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 8;
  *v21 = "endTime";
  *(v21 + 1) = 7;
  v21[16] = 2;
  v8();
  v22 = v4 + 8 * v2 + v1[14];
  *(v4 + 8 * v2) = 9;
  *v22 = "frameIndex";
  *(v22 + 8) = 10;
  *(v22 + 16) = 2;
  v8();
  v23 = (v4 + 9 * v2);
  v24 = v23 + v1[14];
  *v23 = 10;
  *v24 = "frameCount";
  *(v24 + 1) = 10;
  v24[16] = 2;
  v8();
  v25 = (v4 + 10 * v2);
  v26 = v25 + v1[14];
  *v25 = 11;
  *v26 = "frameData";
  *(v26 + 1) = 9;
  v26[16] = 2;
  v8();
  return sub_2655FE50C();
}

uint64_t sub_2655F60DC()
{
  while (1)
  {
    result = sub_2655FE3CC();
    if (v0 || (v3 & 1) != 0)
    {
      return result;
    }

    if (result <= 5)
    {
      if (result <= 2)
      {
        if (result == 1)
        {
          sub_2655FE3FC();
        }

        else if (result == 2)
        {
          v7 = *(type metadata accessor for StreamBlock.PCMBlock(0) + 24);
          goto LABEL_3;
        }
      }

      else
      {
        if (result == 3)
        {
          v10 = *(type metadata accessor for StreamBlock.PCMBlock(0) + 28);
        }

        else
        {
          if (result != 4)
          {
            v5 = *(type metadata accessor for StreamBlock.PCMBlock(0) + 36);
            goto LABEL_27;
          }

          v1 = *(type metadata accessor for StreamBlock.PCMBlock(0) + 32);
        }

LABEL_3:
        v0 = 0;
        sub_2655FE42C();
      }
    }

    else if (result > 8)
    {
      switch(result)
      {
        case 9:
          v12 = *(type metadata accessor for StreamBlock.PCMBlock(0) + 52);
          goto LABEL_3;
        case 10:
          v9 = *(type metadata accessor for StreamBlock.PCMBlock(0) + 56);
          goto LABEL_3;
        case 11:
          v6 = *(type metadata accessor for StreamBlock.PCMBlock(0) + 60);
          sub_2655FE3EC();
          break;
      }
    }

    else
    {
      if (result == 6)
      {
        v11 = *(type metadata accessor for StreamBlock.PCMBlock(0) + 40);
      }

      else if (result == 7)
      {
        v8 = *(type metadata accessor for StreamBlock.PCMBlock(0) + 44);
      }

      else
      {
        v4 = *(type metadata accessor for StreamBlock.PCMBlock(0) + 48);
      }

LABEL_27:
      v0 = 0;
      sub_2655FE40C();
    }
  }
}

uint64_t sub_2655F62CC()
{
  if (!*(*v0 + 16) || (result = sub_2655FE4AC(), !v1))
  {
    v3 = type metadata accessor for StreamBlock.PCMBlock(0);
    v4 = (v0 + v3[6]);
    if ((v4[1] & 1) != 0 || (v5 = *v4, result = sub_2655FE4DC(), !v1))
    {
      v6 = (v0 + v3[7]);
      if ((v6[1] & 1) != 0 || (v7 = *v6, result = sub_2655FE4DC(), !v1))
      {
        v8 = (v0 + v3[8]);
        if ((v8[1] & 1) != 0 || (v9 = *v8, result = sub_2655FE4DC(), !v1))
        {
          v10 = (v0 + v3[9]);
          if ((v10[1] & 1) != 0 || (v11 = *v10, result = sub_2655FE4BC(), !v1))
          {
            v12 = (v0 + v3[10]);
            if ((v12[1] & 1) != 0 || (v13 = *v12, result = sub_2655FE4BC(), !v1))
            {
              v14 = (v0 + v3[11]);
              if ((v14[1] & 1) != 0 || (v15 = *v14, result = sub_2655FE4BC(), !v1))
              {
                v16 = (v0 + v3[12]);
                if ((v16[1] & 1) != 0 || (v17 = *v16, result = sub_2655FE4BC(), !v1))
                {
                  v18 = (v0 + v3[13]);
                  if ((v18[1] & 1) != 0 || (v19 = *v18, result = sub_2655FE4DC(), !v1))
                  {
                    v20 = (v0 + v3[14]);
                    if ((v20[1] & 1) != 0 || (v21 = *v20, result = sub_2655FE4DC(), !v1))
                    {
                      v22 = v0 + v3[15];
                      v23 = *(v22 + 8);
                      if (v23 >> 60 == 15 || (v24 = *v22, sub_2655F1D30(*v22, *(v22 + 8)), sub_2655FE49C(), result = sub_2655F8178(v24, v23), !v1))
                      {
                        v25 = v0 + v3[5];
                        return sub_2655FE34C();
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

  return result;
}

double sub_2655F6560@<D0>(int *a1@<X0>, void *a2@<X8>)
{
  *a2 = MEMORY[0x277D84F90];
  v4 = a2 + a1[5];
  sub_2655FE35C();
  v5 = a1[7];
  v6 = a2 + a1[6];
  *v6 = 0;
  v6[4] = 1;
  v7 = a2 + v5;
  *v7 = 0;
  v7[4] = 1;
  v8 = a1[9];
  v9 = a2 + a1[8];
  *v9 = 0;
  v9[4] = 1;
  v10 = a2 + v8;
  *v10 = 0;
  v10[8] = 1;
  v11 = a1[11];
  v12 = a2 + a1[10];
  *v12 = 0;
  v12[8] = 1;
  v13 = a2 + v11;
  *v13 = 0;
  v13[8] = 1;
  v14 = a1[13];
  v15 = a2 + a1[12];
  *v15 = 0;
  v15[8] = 1;
  v16 = a2 + v14;
  *v16 = 0;
  v16[4] = 1;
  v17 = a1[15];
  v18 = a2 + a1[14];
  *v18 = 0;
  v18[4] = 1;
  result = 0.0;
  *(a2 + v17) = xmmword_2655FEC80;
  return result;
}

uint64_t sub_2655F6648@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 20);
  v5 = sub_2655FE36C();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_2655F66BC(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 20);
  v5 = sub_2655FE36C();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t (*sub_2655F6730(uint64_t a1, uint64_t a2))()
{
  result = nullsub_1;
  v4 = v2 + *(a2 + 20);
  return result;
}

uint64_t sub_2655F6784(uint64_t a1, uint64_t a2)
{
  v4 = sub_2655F7C90(&qword_2800187D8, type metadata accessor for StreamBlock.PCMBlock);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_2655F6824(uint64_t a1)
{
  v2 = sub_2655F7C90(&qword_280018770, type metadata accessor for StreamBlock.PCMBlock);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_2655F6894()
{
  sub_2655F7C90(&qword_280018770, type metadata accessor for StreamBlock.PCMBlock);

  return sub_2655FE47C();
}

uint64_t sub_2655F6918()
{
  v0 = sub_2655FE51C();
  __swift_allocate_value_buffer(v0, qword_280018A48);
  __swift_project_value_buffer(v0, qword_280018A48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800187C0, &qword_2655FF300);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800187C8, &qword_2655FF308) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_2655FECB0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "eventTime";
  *(v6 + 8) = 9;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_2655FE4FC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "payload";
  *(v10 + 1) = 7;
  v10[16] = 2;
  v9();
  return sub_2655FE50C();
}

uint64_t sub_2655F6AE0()
{
  while (1)
  {
    result = sub_2655FE3CC();
    if (v0 || (v3 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      v1 = *(type metadata accessor for StreamBlock.Event(0) + 20);
      sub_2655FE40C();
    }

    else if (result == 2)
    {
      v4 = *(type metadata accessor for StreamBlock.Event(0) + 24);
      sub_2655FE3EC();
    }
  }

  return result;
}

uint64_t sub_2655F6B9C()
{
  v2 = type metadata accessor for StreamBlock.Event(0);
  v3 = (v0 + *(v2 + 20));
  if ((v3[1] & 1) == 0)
  {
    v4 = v2;
    v5 = *v3;
    result = sub_2655FE4BC();
    if (v1)
    {
      return result;
    }

    v2 = v4;
  }

  v7 = v0 + *(v2 + 24);
  v8 = *(v7 + 8);
  if (v8 >> 60 == 15)
  {
    return sub_2655FE34C();
  }

  v9 = *v7;
  sub_2655F1D30(*v7, *(v7 + 8));
  sub_2655FE49C();
  result = sub_2655F8178(v9, v8);
  if (!v1)
  {
    return sub_2655FE34C();
  }

  return result;
}

double sub_2655F6C9C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_2655FE35C();
  v4 = *(a1 + 24);
  v5 = a2 + *(a1 + 20);
  *v5 = 0;
  *(v5 + 8) = 1;
  result = 0.0;
  *(a2 + v4) = xmmword_2655FEC80;
  return result;
}

uint64_t sub_2655F6D00@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_2655FE36C();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t sub_2655F6D68(uint64_t a1)
{
  v3 = sub_2655FE36C();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t sub_2655F6E20(uint64_t a1, uint64_t a2)
{
  v4 = sub_2655F7C90(&qword_2800187E0, type metadata accessor for StreamBlock.Event);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_2655F6EC0(uint64_t a1)
{
  v2 = sub_2655F7C90(&qword_280018750, type metadata accessor for StreamBlock.Event);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_2655F6F2C()
{
  sub_2655F7C90(&qword_280018750, type metadata accessor for StreamBlock.Event);

  return sub_2655FE47C();
}

uint64_t sub_2655F6FAC()
{
  v0 = sub_2655FE51C();
  __swift_allocate_value_buffer(v0, qword_280018A60);
  __swift_project_value_buffer(v0, qword_280018A60);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800187C0, &qword_2655FF300);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800187C8, &qword_2655FF308) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_2655FEBE0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "channelNames";
  *(v6 + 8) = 12;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_2655FE4FC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "bitsPerChannel";
  *(v10 + 8) = 14;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "bytesPerPayload";
  *(v12 + 1) = 15;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "formatFlags";
  *(v14 + 1) = 11;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "eventIndex";
  *(v16 + 1) = 10;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 6;
  *v18 = "representsState";
  *(v18 + 1) = 15;
  v18[16] = 2;
  v9();
  v19 = (v5 + 6 * v2);
  v20 = v19 + v1[14];
  *v19 = 7;
  *v20 = "startingStatePayload";
  *(v20 + 1) = 20;
  v20[16] = 2;
  v9();
  v21 = (v5 + 7 * v2);
  v22 = v21 + v1[14];
  *v21 = 8;
  *v22 = "events";
  *(v22 + 1) = 6;
  v22[16] = 2;
  v9();
  return sub_2655FE50C();
}

uint64_t sub_2655F72F8()
{
  result = sub_2655FE3CC();
  if (!v0)
  {
    while (1)
    {
      if (v2)
      {
        return result;
      }

      if (result > 4)
      {
        if (result > 6)
        {
          if (result == 7)
          {
            v9 = *(type metadata accessor for StreamBlock.EventBlock(0) + 48);
            sub_2655FE3EC();
          }

          else if (result == 8)
          {
            type metadata accessor for StreamBlock.Event(0);
            sub_2655F7C90(&qword_280018750, type metadata accessor for StreamBlock.Event);
            sub_2655FE43C();
          }
        }

        else
        {
          if (result == 5)
          {
            v3 = v0;
            v4 = *(type metadata accessor for StreamBlock.EventBlock(0) + 40);
LABEL_5:
            v0 = v3;
            sub_2655FE42C();
            goto LABEL_6;
          }

          v6 = *(type metadata accessor for StreamBlock.EventBlock(0) + 44);
          sub_2655FE3DC();
        }
      }

      else
      {
        if (result > 2)
        {
          v3 = v0;
          if (result == 3)
          {
            v8 = *(type metadata accessor for StreamBlock.EventBlock(0) + 32);
          }

          else
          {
            v7 = *(type metadata accessor for StreamBlock.EventBlock(0) + 36);
          }

          goto LABEL_5;
        }

        if (result == 1)
        {
          sub_2655FE3FC();
        }

        else if (result == 2)
        {
          v3 = v0;
          v5 = *(type metadata accessor for StreamBlock.EventBlock(0) + 28);
          goto LABEL_5;
        }
      }

LABEL_6:
      result = sub_2655FE3CC();
    }
  }

  return result;
}

uint64_t sub_2655F74FC()
{
  if (!*(*v0 + 16) || (result = sub_2655FE4AC(), !v1))
  {
    v3 = type metadata accessor for StreamBlock.EventBlock(0);
    v4 = (v0 + v3[7]);
    if ((v4[1] & 1) != 0 || (v5 = *v4, result = sub_2655FE4DC(), !v1))
    {
      v6 = (v0 + v3[8]);
      if ((v6[1] & 1) != 0 || (v7 = *v6, result = sub_2655FE4DC(), !v1))
      {
        v8 = (v0 + v3[9]);
        if ((v8[1] & 1) != 0 || (v9 = *v8, result = sub_2655FE4DC(), !v1))
        {
          v10 = (v0 + v3[10]);
          if ((v10[1] & 1) != 0 || (v11 = *v10, result = sub_2655FE4DC(), !v1))
          {
            if (*(v0 + v3[11]) == 2 || (result = sub_2655FE48C(), !v1))
            {
              v12 = v0 + v3[12];
              v13 = *(v12 + 1);
              if (v13 >> 60 == 15 || (v14 = *v12, sub_2655F1D30(*v12, *(v12 + 1)), sub_2655FE49C(), result = sub_2655F8178(v14, v13), !v1))
              {
                if (!*(v0[1] + 16) || (type metadata accessor for StreamBlock.Event(0), sub_2655F7C90(&qword_280018750, type metadata accessor for StreamBlock.Event), result = sub_2655FE4EC(), !v1))
                {
                  v15 = v0 + v3[6];
                  return sub_2655FE34C();
                }
              }
            }
          }
        }
      }
    }
  }

  return result;
}

double sub_2655F7760@<D0>(int *a1@<X0>, void *a2@<X8>)
{
  v4 = MEMORY[0x277D84F90];
  *a2 = MEMORY[0x277D84F90];
  a2[1] = v4;
  v5 = a2 + a1[6];
  sub_2655FE35C();
  v6 = a1[8];
  v7 = a2 + a1[7];
  *v7 = 0;
  v7[4] = 1;
  v8 = a2 + v6;
  *v8 = 0;
  v8[4] = 1;
  v9 = a1[10];
  v10 = a2 + a1[9];
  *v10 = 0;
  v10[4] = 1;
  v11 = a2 + v9;
  *v11 = 0;
  v11[4] = 1;
  v12 = a1[12];
  *(a2 + a1[11]) = 2;
  result = 0.0;
  *(a2 + v12) = xmmword_2655FEC80;
  return result;
}

uint64_t sub_2655F7810@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 24);
  v5 = sub_2655FE36C();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_2655F7888(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 24);
  v5 = sub_2655FE36C();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t sub_2655F792C(uint64_t a1, uint64_t a2)
{
  v4 = sub_2655F7C90(&qword_2800187E8, type metadata accessor for StreamBlock.EventBlock);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_2655F79CC@<X0>(void *a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = sub_2655FE51C();
  v6 = __swift_project_value_buffer(v5, a2);
  v7 = *(*(v5 - 8) + 16);

  return v7(a3, v6, v5);
}

uint64_t sub_2655F7A68(uint64_t a1)
{
  v2 = sub_2655F7C90(&qword_280018730, type metadata accessor for StreamBlock.EventBlock);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_2655F7AD4()
{
  sub_2655FE66C();
  sub_2655FE53C();
  return sub_2655FE68C();
}

uint64_t sub_2655F7B2C()
{
  sub_2655F7C90(&qword_280018730, type metadata accessor for StreamBlock.EventBlock);

  return sub_2655FE47C();
}

uint64_t sub_2655F7BA8()
{
  sub_2655FE66C();
  sub_2655FE53C();
  return sub_2655FE68C();
}

uint64_t sub_2655F7C90(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_2655F8084()
{
  result = qword_2800187A0;
  if (!qword_2800187A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2800187A8, qword_2655FF248);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800187A0);
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_2655F8178(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_2655F3C6C(a1, a2);
  }

  return a1;
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 - 8);
  if ((*(v3 + 80) & 0x20000) != 0)
  {
    v4 = *(v3 + 64);
    v5 = *(v3 + 80);
    v6 = swift_slowAlloc();
    *a2 = v6;
    return v6;
  }

  return a2;
}

uint64_t sub_2655F8228(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(void), uint64_t (*a5)(char *, char *))
{
  v9 = *(*(a3(0) - 8) + 64);
  v10 = (MEMORY[0x28223BE20])();
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v15 = &v23 - v14;
  v16 = *(a1 + 16);
  if (v16 == *(a2 + 16))
  {
    if (!v16 || a1 == a2)
    {
      v21 = 1;
    }

    else
    {
      v17 = (*(v13 + 80) + 32) & ~*(v13 + 80);
      v18 = a1 + v17;
      v19 = a2 + v17;
      v20 = *(v13 + 72);
      do
      {
        sub_2655F9EDC(v18, v15, a4);
        sub_2655F9EDC(v19, v12, a4);
        v21 = a5(v15, v12);
        sub_2655F9F44(v12, a4);
        sub_2655F9F44(v15, a4);
        if ((v21 & 1) == 0)
        {
          break;
        }

        v19 += v20;
        v18 += v20;
        --v16;
      }

      while (v16);
    }
  }

  else
  {
    v21 = 0;
  }

  return v21 & 1;
}

uint64_t sub_2655F83C4(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 40);
    for (i = (a2 + 40); ; i += 2)
    {
      v5 = *(v3 - 1) == *(i - 1) && *v3 == *i;
      if (!v5 && (sub_2655FE60C() & 1) == 0)
      {
        break;
      }

      v3 += 2;
      if (!--v2)
      {
        return 1;
      }
    }

    return 0;
  }

  return 1;
}

uint64_t sub_2655F8454(uint64_t a1, uint64_t a2)
{
  v67[3] = *MEMORY[0x277D85DE8];
  v4 = type metadata accessor for StreamBlock.Event(0);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v59 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v11 = &v59 - v10;
  v12 = *(a1 + 16);
  if (v12 != *(a2 + 16))
  {
    goto LABEL_82;
  }

  if (!v12 || a1 == a2)
  {
    v41 = 1;
    goto LABEL_83;
  }

  v13 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v14 = a1 + v13;
  v15 = a2 + v13;
  v16 = *(v9 + 72);
  v63 = 0;
  v64 = v16;
  v65 = v4;
  while (1)
  {
    sub_2655F9EDC(v14, v11, type metadata accessor for StreamBlock.Event);
    sub_2655F9EDC(v15, v8, type metadata accessor for StreamBlock.Event);
    v17 = *(v4 + 20);
    v18 = &v11[v17];
    v19 = v11[v17 + 8];
    v20 = &v8[v17];
    v21 = v8[v17 + 8];
    if (v19)
    {
      if (!v21)
      {
        goto LABEL_81;
      }
    }

    else
    {
      if (*v18 != *v20)
      {
        LOBYTE(v21) = 1;
      }

      if (v21)
      {
        goto LABEL_81;
      }
    }

    v22 = *(v4 + 24);
    v23 = *&v11[v22];
    v24 = *&v11[v22 + 8];
    v25 = &v8[v22];
    v26 = *v25;
    v27 = v25[1];
    if (v24 >> 60 == 15)
    {
      if (v27 >> 60 != 15)
      {
        goto LABEL_78;
      }

      sub_2655F1D1C(v23, v24);
      sub_2655F1D1C(v26, v27);
      goto LABEL_49;
    }

    if (v27 >> 60 == 15)
    {
LABEL_78:
      sub_2655F1D1C(v23, v24);
      sub_2655F1D1C(v26, v27);
      sub_2655F8178(v23, v24);
      v55 = v26;
      v56 = v27;
      goto LABEL_80;
    }

    v28 = v24 >> 62;
    v29 = v27 >> 62;
    if (v24 >> 62 != 3)
    {
      break;
    }

    if (v23)
    {
      v30 = 0;
    }

    else
    {
      v30 = v24 == 0xC000000000000000;
    }

    v31 = 0;
    v32 = v30 && v27 >> 62 == 3;
    if (!v32 || v26 || v27 != 0xC000000000000000)
    {
      goto LABEL_36;
    }

    sub_2655F1D1C(0, 0xC000000000000000);
    sub_2655F1D1C(0, 0xC000000000000000);
    sub_2655F8178(0, 0xC000000000000000);
    v33 = 0;
    v34 = 0xC000000000000000;
LABEL_50:
    sub_2655F8178(v33, v34);
    v4 = v65;
LABEL_51:
    sub_2655FE36C();
    sub_2655F7C90(&qword_2800187D0, MEMORY[0x277D216C8]);
    v41 = sub_2655FE54C();
    sub_2655F9F44(v8, type metadata accessor for StreamBlock.Event);
    sub_2655F9F44(v11, type metadata accessor for StreamBlock.Event);
    if (v41)
    {
      v15 += v64;
      v14 += v64;
      if (--v12)
      {
        continue;
      }
    }

    goto LABEL_83;
  }

  if (v28 > 1)
  {
    if (v28 == 2)
    {
      v40 = *(v23 + 16);
      v39 = *(v23 + 24);
      v37 = __OFSUB__(v39, v40);
      v31 = v39 - v40;
      if (v37)
      {
        goto LABEL_86;
      }

LABEL_36:
      if (v29 <= 1)
      {
        goto LABEL_37;
      }
    }

    else
    {
      v31 = 0;
      if (v29 <= 1)
      {
        goto LABEL_37;
      }
    }

LABEL_30:
    if (v29 == 2)
    {
      v36 = *(v26 + 16);
      v35 = *(v26 + 24);
      v37 = __OFSUB__(v35, v36);
      v38 = v35 - v36;
      if (v37)
      {
        goto LABEL_85;
      }

      goto LABEL_43;
    }

    if (v31)
    {
      goto LABEL_79;
    }

LABEL_48:
    sub_2655F1D1C(v23, v24);
    sub_2655F1D1C(v26, v27);
    sub_2655F8178(v26, v27);
LABEL_49:
    v33 = v23;
    v34 = v24;
    goto LABEL_50;
  }

  if (v28)
  {
    LODWORD(v31) = HIDWORD(v23) - v23;
    if (__OFSUB__(HIDWORD(v23), v23))
    {
      goto LABEL_87;
    }

    v31 = v31;
    if (v29 <= 1)
    {
      goto LABEL_37;
    }

    goto LABEL_30;
  }

  v31 = BYTE6(v24);
  if (v29 > 1)
  {
    goto LABEL_30;
  }

LABEL_37:
  if (v29)
  {
    LODWORD(v38) = HIDWORD(v26) - v26;
    if (__OFSUB__(HIDWORD(v26), v26))
    {
      __break(1u);
LABEL_85:
      __break(1u);
LABEL_86:
      __break(1u);
LABEL_87:
      __break(1u);
LABEL_88:
      __break(1u);
LABEL_89:
      __break(1u);
LABEL_90:
      __break(1u);
LABEL_91:
      __break(1u);
    }

    v38 = v38;
  }

  else
  {
    v38 = BYTE6(v27);
  }

LABEL_43:
  if (v31 == v38)
  {
    if (v31 >= 1)
    {
      if (v28 > 1)
      {
        if (v28 == 2)
        {
          v42 = *(v23 + 16);
          v60 = *(v23 + 24);
          v61 = v42;
          sub_2655F1D1C(v23, v24);
          v62 = v26;
          sub_2655F1D1C(v26, v27);
          v43 = sub_2655FE26C();
          if (v43)
          {
            v44 = v43;
            v45 = sub_2655FE28C();
            v46 = v61;
            if (__OFSUB__(v61, v45))
            {
              goto LABEL_90;
            }

            v59 = v61 - v45 + v44;
          }

          else
          {
            v59 = 0;
            v46 = v61;
          }

          if (__OFSUB__(v60, v46))
          {
            goto LABEL_89;
          }

          sub_2655FE27C();
          v52 = v59;
          goto LABEL_74;
        }

        memset(v67, 0, 14);
        sub_2655F1D1C(v23, v24);
        sub_2655F1D1C(v26, v27);
LABEL_68:
        v50 = v63;
        sub_2655F8B70(v67, v26, v27, &v66);
        v63 = v50;
        sub_2655F8178(v26, v27);
        v51 = v66;
      }

      else
      {
        if (!v28)
        {
          v67[0] = v23;
          LOWORD(v67[1]) = v24;
          BYTE2(v67[1]) = BYTE2(v24);
          BYTE3(v67[1]) = BYTE3(v24);
          BYTE4(v67[1]) = BYTE4(v24);
          BYTE5(v67[1]) = BYTE5(v24);
          sub_2655F1D1C(v23, v24);
          sub_2655F1D1C(v26, v27);
          goto LABEL_68;
        }

        v61 = (v23 >> 32) - v23;
        if (v23 >> 32 < v23)
        {
          goto LABEL_88;
        }

        sub_2655F1D1C(v23, v24);
        v62 = v26;
        sub_2655F1D1C(v26, v27);
        v47 = sub_2655FE26C();
        if (v47)
        {
          v60 = v47;
          v48 = sub_2655FE28C();
          if (__OFSUB__(v23, v48))
          {
            goto LABEL_91;
          }

          v49 = v23 - v48 + v60;
        }

        else
        {
          v49 = 0;
        }

        sub_2655FE27C();
        v52 = v49;
LABEL_74:
        v53 = v62;
        v54 = v63;
        sub_2655F8B70(v52, v62, v27, v67);
        v63 = v54;
        sub_2655F8178(v53, v27);
        v51 = v67[0];
      }

      sub_2655F8178(v23, v24);
      v4 = v65;
      if ((v51 & 1) == 0)
      {
        goto LABEL_81;
      }

      goto LABEL_51;
    }

    goto LABEL_48;
  }

LABEL_79:
  sub_2655F1D1C(v23, v24);
  sub_2655F1D1C(v26, v27);
  sub_2655F8178(v26, v27);
  v55 = v23;
  v56 = v24;
LABEL_80:
  sub_2655F8178(v55, v56);
LABEL_81:
  sub_2655F9F44(v8, type metadata accessor for StreamBlock.Event);
  sub_2655F9F44(v11, type metadata accessor for StreamBlock.Event);
LABEL_82:
  v41 = 0;
LABEL_83:
  v57 = *MEMORY[0x277D85DE8];
  return v41 & 1;
}

uint64_t sub_2655F8B70@<X0>(uint64_t result@<X0>, uint64_t a2@<X2>, unint64_t a3@<X3>, BOOL *a4@<X8>)
{
  v26 = *MEMORY[0x277D85DE8];
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
    v10 = sub_2655FE26C();
    if (v10)
    {
      v11 = sub_2655FE28C();
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
      result = sub_2655FE27C();
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
    v21 = a3;
    v22 = BYTE2(a3);
    v23 = BYTE3(a3);
    v24 = BYTE4(a3);
    v25 = BYTE5(a3);
    if (result)
    {
      result = memcmp(result, &__s2, BYTE6(a3));
      v6 = result == 0;
LABEL_30:
      *a4 = v6;
      v19 = *MEMORY[0x277D85DE8];
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
  v10 = sub_2655FE26C();
  if (!v10)
  {
    goto LABEL_21;
  }

  v18 = sub_2655FE28C();
  if (__OFSUB__(v15, v18))
  {
LABEL_34:
    __break(1u);
  }

  v10 += v15 - v18;
LABEL_21:
  result = sub_2655FE27C();
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

uint64_t sub_2655F8DA0(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v14[2] = *MEMORY[0x277D85DE8];
  v7 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v7)
    {
      v14[0] = a1;
      LOWORD(v14[1]) = a2;
      BYTE2(v14[1]) = BYTE2(a2);
      BYTE3(v14[1]) = BYTE3(a2);
      BYTE4(v14[1]) = BYTE4(a2);
      BYTE5(v14[1]) = BYTE5(a2);
      goto LABEL_9;
    }

    v8 = a1;
    v9 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

LABEL_7:
    v10 = sub_2655F8FB8(v8, v9, a2 & 0x3FFFFFFFFFFFFFFFLL, a3, a4);
    sub_2655F3C6C(a3, a4);
    goto LABEL_11;
  }

  if (v7 == 2)
  {
    v8 = *(a1 + 16);
    v9 = *(a1 + 24);
    goto LABEL_7;
  }

  memset(v14, 0, 14);
LABEL_9:
  sub_2655F8B70(v14, a3, a4, &v13);
  v10 = v4;
  sub_2655F3C6C(a3, a4);
  if (!v4)
  {
    v10 = v13;
  }

LABEL_11:
  v11 = *MEMORY[0x277D85DE8];
  return v10 & 1;
}

uint64_t sub_2655F8F30(uint64_t a1)
{
  if (a1 <= 7)
  {
    if (a1 == 1)
    {
      return 0;
    }

    if (a1 != 2)
    {
      if (a1 == 4)
      {
        return 2;
      }

      return 7;
    }

    return 1;
  }

  else if (a1 > 255)
  {
    if (a1 != 256)
    {
      if (a1 == 512)
      {
        return 6;
      }

      return 7;
    }

    return 5;
  }

  else
  {
    if (a1 != 8)
    {
      if (a1 == 16)
      {
        return 4;
      }

      return 7;
    }

    return 3;
  }
}

uint64_t sub_2655F8FB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  result = sub_2655FE26C();
  v11 = result;
  if (result)
  {
    result = sub_2655FE28C();
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

  sub_2655FE27C();
  sub_2655F8B70(v11, a4, a5, &v13);
  if (!v5)
  {
    return v13;
  }

  return v12;
}

uint64_t sub_2655F9070(uint64_t result, unint64_t a2, uint64_t a3, unint64_t a4)
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
          sub_2655F1D30(a3, a4);
          return sub_2655F8DA0(v13, a2, a3, a4) & 1;
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

uint64_t sub_2655F91D8(uint64_t *a1, uint64_t *a2)
{
  v4 = type metadata accessor for StreamBlock(0);
  v5 = v4[7];
  v6 = (a1 + v5);
  v7 = *(a1 + v5 + 8);
  v8 = (a2 + v5);
  v9 = v8[1];
  if (v7)
  {
    if (!v9)
    {
      return 0;
    }

    if (*v6 != *v8 || v7 != v9)
    {
      v11 = v4;
      v12 = sub_2655FE60C();
      v4 = v11;
      if ((v12 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v9)
  {
    return 0;
  }

  v13 = v4[8];
  v14 = (a1 + v13);
  v15 = *(a1 + v13 + 8);
  v16 = (a2 + v13);
  v17 = v16[1];
  if (v15)
  {
    if (!v17)
    {
      return 0;
    }

    if (*v14 != *v16 || v15 != v17)
    {
      v19 = v4;
      v20 = sub_2655FE60C();
      v4 = v19;
      if ((v20 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v17)
  {
    return 0;
  }

  v21 = v4[9];
  v22 = (a1 + v21);
  v23 = *(a1 + v21 + 8);
  v24 = (a2 + v21);
  v25 = v24[1];
  if (v23)
  {
    if (!v25)
    {
      return 0;
    }

    if (*v22 != *v24 || v23 != v25)
    {
      v27 = v4;
      v28 = sub_2655FE60C();
      v4 = v27;
      if ((v28 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v25)
  {
    return 0;
  }

  v29 = v4[10];
  v31 = *(a1 + v29);
  v30 = *(a1 + v29 + 8);
  v32 = (a2 + v29);
  v34 = *v32;
  v33 = v32[1];
  if (v30 >> 60 == 15)
  {
    if (v33 >> 60 != 15)
    {
      goto LABEL_32;
    }

    v35 = v4;
    sub_2655F1D1C(v31, v30);
    sub_2655F1D1C(v34, v33);
    sub_2655F8178(v31, v30);
    v36 = v35;
  }

  else
  {
    if (v33 >> 60 == 15)
    {
      goto LABEL_32;
    }

    v38 = v4;
    sub_2655F1D1C(v31, v30);
    sub_2655F1D1C(v34, v33);
    v39 = sub_2655F9070(v31, v30, v34, v33);
    sub_2655F8178(v34, v33);
    sub_2655F8178(v31, v30);
    v36 = v38;
    if ((v39 & 1) == 0)
    {
      return 0;
    }
  }

  v40 = v36[11];
  v41 = (a1 + v40);
  v42 = *(a1 + v40 + 8);
  v43 = (a2 + v40);
  v44 = v43[1];
  if (v42)
  {
    if (!v44)
    {
      return 0;
    }

    if (*v41 != *v43 || v42 != v44)
    {
      v45 = v36;
      v46 = sub_2655FE60C();
      v36 = v45;
      if ((v46 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v44)
  {
    return 0;
  }

  v47 = v36[12];
  v31 = *(a1 + v47);
  v30 = *(a1 + v47 + 8);
  v48 = (a2 + v47);
  v34 = *v48;
  v33 = v48[1];
  if (v30 >> 60 == 15)
  {
    if (v33 >> 60 == 15)
    {
      v49 = v36;
      sub_2655F1D1C(v31, v30);
      sub_2655F1D1C(v34, v33);
      sub_2655F8178(v31, v30);
      v50 = v49;
      goto LABEL_47;
    }

LABEL_32:
    sub_2655F1D1C(v31, v30);
    sub_2655F1D1C(v34, v33);
    sub_2655F8178(v31, v30);
    sub_2655F8178(v34, v33);
    return 0;
  }

  if (v33 >> 60 == 15)
  {
    goto LABEL_32;
  }

  v51 = v36;
  sub_2655F1D1C(v31, v30);
  sub_2655F1D1C(v34, v33);
  v52 = sub_2655F9070(v31, v30, v34, v33);
  sub_2655F8178(v34, v33);
  sub_2655F8178(v31, v30);
  v50 = v51;
  if ((v52 & 1) == 0)
  {
    return 0;
  }

LABEL_47:
  v53 = v50[13];
  v54 = (a1 + v53);
  v55 = *(a1 + v53 + 8);
  v56 = (a2 + v53);
  v57 = *(a2 + v53 + 8);
  if (v55)
  {
    if (!v57)
    {
      return 0;
    }
  }

  else
  {
    if (*v54 != *v56)
    {
      LOBYTE(v57) = 1;
    }

    if (v57)
    {
      return 0;
    }
  }

  v58 = v50[14];
  v59 = (a1 + v58);
  v60 = *(a1 + v58 + 8);
  v61 = (a2 + v58);
  v62 = *(a2 + v58 + 8);
  if (v60)
  {
    if (!v62)
    {
      return 0;
    }
  }

  else
  {
    if (*v59 != *v61)
    {
      LOBYTE(v62) = 1;
    }

    if (v62)
    {
      return 0;
    }
  }

  v63 = v50[15];
  v64 = (a1 + v63);
  v65 = *(a1 + v63 + 4);
  v66 = (a2 + v63);
  v67 = *(a2 + v63 + 4);
  if (v65)
  {
    if (!v67)
    {
      return 0;
    }
  }

  else
  {
    if (*v64 != *v66)
    {
      LOBYTE(v67) = 1;
    }

    if (v67)
    {
      return 0;
    }
  }

  v68 = v50[16];
  v69 = *(a1 + v68);
  v70 = *(a2 + v68);
  if (v69 == 2)
  {
    if (v70 == 2)
    {
      goto LABEL_70;
    }

    return 0;
  }

  if (v70 == 2 || ((v69 ^ v70) & 1) != 0)
  {
    return 0;
  }

LABEL_70:
  v71 = v50;
  if ((sub_2655F8228(*a1, *a2, type metadata accessor for StreamBlock.PCMBlock, type metadata accessor for StreamBlock.PCMBlock, sub_2655F96E0) & 1) == 0 || (sub_2655F8228(a1[1], a2[1], type metadata accessor for StreamBlock.EventBlock, type metadata accessor for StreamBlock.EventBlock, sub_2655F9C24) & 1) == 0)
  {
    return 0;
  }

  v72 = v71[6];
  sub_2655FE36C();
  sub_2655F7C90(&qword_2800187D0, MEMORY[0x277D216C8]);
  return sub_2655FE54C() & 1;
}

uint64_t sub_2655F96E0(uint64_t *a1, uint64_t *a2)
{
  if ((sub_2655F83C4(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for StreamBlock.PCMBlock(0);
  v5 = v4[6];
  v6 = (a1 + v5);
  v7 = *(a1 + v5 + 4);
  v8 = (a2 + v5);
  v9 = *(a2 + v5 + 4);
  if (v7)
  {
    if (!v9)
    {
      return 0;
    }
  }

  else
  {
    if (*v6 != *v8)
    {
      LOBYTE(v9) = 1;
    }

    if (v9)
    {
      return 0;
    }
  }

  v10 = v4[7];
  v11 = (a1 + v10);
  v12 = *(a1 + v10 + 4);
  v13 = (a2 + v10);
  v14 = *(a2 + v10 + 4);
  if (v12)
  {
    if (!v14)
    {
      return 0;
    }
  }

  else
  {
    if (*v11 != *v13)
    {
      LOBYTE(v14) = 1;
    }

    if (v14)
    {
      return 0;
    }
  }

  v15 = v4[8];
  v16 = (a1 + v15);
  v17 = *(a1 + v15 + 4);
  v18 = (a2 + v15);
  v19 = *(a2 + v15 + 4);
  if (v17)
  {
    if (!v19)
    {
      return 0;
    }
  }

  else
  {
    if (*v16 != *v18)
    {
      LOBYTE(v19) = 1;
    }

    if (v19)
    {
      return 0;
    }
  }

  v20 = v4[9];
  v21 = (a1 + v20);
  v22 = *(a1 + v20 + 8);
  v23 = (a2 + v20);
  v24 = *(a2 + v20 + 8);
  if (v22)
  {
    if (!v24)
    {
      return 0;
    }
  }

  else
  {
    if (*v21 != *v23)
    {
      LOBYTE(v24) = 1;
    }

    if (v24)
    {
      return 0;
    }
  }

  v25 = v4[10];
  v26 = (a1 + v25);
  v27 = *(a1 + v25 + 8);
  v28 = (a2 + v25);
  v29 = *(a2 + v25 + 8);
  if (v27)
  {
    if (!v29)
    {
      return 0;
    }
  }

  else
  {
    if (*v26 != *v28)
    {
      LOBYTE(v29) = 1;
    }

    if (v29)
    {
      return 0;
    }
  }

  v30 = v4[11];
  v31 = (a1 + v30);
  v32 = *(a1 + v30 + 8);
  v33 = (a2 + v30);
  v34 = *(a2 + v30 + 8);
  if (v32)
  {
    if (!v34)
    {
      return 0;
    }
  }

  else
  {
    if (*v31 != *v33)
    {
      LOBYTE(v34) = 1;
    }

    if (v34)
    {
      return 0;
    }
  }

  v35 = v4[12];
  v36 = (a1 + v35);
  v37 = *(a1 + v35 + 8);
  v38 = (a2 + v35);
  v39 = *(a2 + v35 + 8);
  if (v37)
  {
    if (!v39)
    {
      return 0;
    }
  }

  else
  {
    if (*v36 != *v38)
    {
      LOBYTE(v39) = 1;
    }

    if (v39)
    {
      return 0;
    }
  }

  v40 = v4[13];
  v41 = (a1 + v40);
  v42 = *(a1 + v40 + 4);
  v43 = (a2 + v40);
  v44 = *(a2 + v40 + 4);
  if (v42)
  {
    if (!v44)
    {
      return 0;
    }
  }

  else
  {
    if (*v41 != *v43)
    {
      LOBYTE(v44) = 1;
    }

    if (v44)
    {
      return 0;
    }
  }

  v45 = v4[14];
  v46 = (a1 + v45);
  v47 = *(a1 + v45 + 4);
  v48 = (a2 + v45);
  v49 = *(a2 + v45 + 4);
  if (v47)
  {
    if (!v49)
    {
      return 0;
    }
  }

  else
  {
    if (*v46 != *v48)
    {
      LOBYTE(v49) = 1;
    }

    if (v49)
    {
      return 0;
    }
  }

  v50 = v4[15];
  v52 = *(a1 + v50);
  v51 = *(a1 + v50 + 8);
  v53 = (a2 + v50);
  v55 = *v53;
  v54 = v53[1];
  if (v51 >> 60 != 15)
  {
    if (v54 >> 60 == 15)
    {
      goto LABEL_60;
    }

    v61 = v4;
    sub_2655F1D1C(v52, v51);
    sub_2655F1D1C(v55, v54);
    v59 = sub_2655F9070(v52, v51, v55, v54);
    sub_2655F8178(v55, v54);
    sub_2655F8178(v52, v51);
    v57 = v61;
    if (v59)
    {
      goto LABEL_63;
    }

    return 0;
  }

  if (v54 >> 60 != 15)
  {
LABEL_60:
    sub_2655F1D1C(v52, v51);
    sub_2655F1D1C(v55, v54);
    sub_2655F8178(v52, v51);
    sub_2655F8178(v55, v54);
    return 0;
  }

  v56 = v4;
  sub_2655F1D1C(v52, v51);
  sub_2655F1D1C(v55, v54);
  sub_2655F8178(v52, v51);
  v57 = v56;
LABEL_63:
  v60 = v57[5];
  sub_2655FE36C();
  sub_2655F7C90(&qword_2800187D0, MEMORY[0x277D216C8]);
  return sub_2655FE54C() & 1;
}

uint64_t sub_2655F9A64(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StreamBlock.Event(0);
  v5 = *(v4 + 20);
  v6 = (a1 + v5);
  v7 = *(a1 + v5 + 8);
  v8 = (a2 + v5);
  v9 = *(a2 + v5 + 8);
  if (v7)
  {
    if (!v9)
    {
      return 0;
    }
  }

  else
  {
    if (*v6 != *v8)
    {
      LOBYTE(v9) = 1;
    }

    if (v9)
    {
      return 0;
    }
  }

  v11 = *(v4 + 24);
  v13 = *(a1 + v11);
  v12 = *(a1 + v11 + 8);
  v14 = (a2 + v11);
  v16 = *v14;
  v15 = v14[1];
  if (v12 >> 60 != 15)
  {
    if (v15 >> 60 == 15)
    {
      goto LABEL_12;
    }

    sub_2655F1D1C(v13, v12);
    sub_2655F1D1C(v16, v15);
    v17 = sub_2655F9070(v13, v12, v16, v15);
    sub_2655F8178(v16, v15);
    sub_2655F8178(v13, v12);
    if (v17)
    {
      goto LABEL_14;
    }

    return 0;
  }

  if (v15 >> 60 != 15)
  {
LABEL_12:
    sub_2655F1D1C(v13, v12);
    sub_2655F1D1C(v16, v15);
    sub_2655F8178(v13, v12);
    sub_2655F8178(v16, v15);
    return 0;
  }

  sub_2655F1D1C(v13, v12);
  sub_2655F1D1C(v16, v15);
  sub_2655F8178(v13, v12);
LABEL_14:
  sub_2655FE36C();
  sub_2655F7C90(&qword_2800187D0, MEMORY[0x277D216C8]);
  return sub_2655FE54C() & 1;
}

uint64_t sub_2655F9C24(uint64_t *a1, uint64_t *a2)
{
  if ((sub_2655F83C4(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for StreamBlock.EventBlock(0);
  v5 = v4[7];
  v6 = (a1 + v5);
  v7 = *(a1 + v5 + 4);
  v8 = (a2 + v5);
  v9 = *(a2 + v5 + 4);
  if (v7)
  {
    if (!v9)
    {
      return 0;
    }
  }

  else
  {
    if (*v6 != *v8)
    {
      LOBYTE(v9) = 1;
    }

    if (v9)
    {
      return 0;
    }
  }

  v10 = v4[8];
  v11 = (a1 + v10);
  v12 = *(a1 + v10 + 4);
  v13 = (a2 + v10);
  v14 = *(a2 + v10 + 4);
  if (v12)
  {
    if (!v14)
    {
      return 0;
    }
  }

  else
  {
    if (*v11 != *v13)
    {
      LOBYTE(v14) = 1;
    }

    if (v14)
    {
      return 0;
    }
  }

  v15 = v4[9];
  v16 = (a1 + v15);
  v17 = *(a1 + v15 + 4);
  v18 = (a2 + v15);
  v19 = *(a2 + v15 + 4);
  if (v17)
  {
    if (!v19)
    {
      return 0;
    }
  }

  else
  {
    if (*v16 != *v18)
    {
      LOBYTE(v19) = 1;
    }

    if (v19)
    {
      return 0;
    }
  }

  v20 = v4[10];
  v21 = (a1 + v20);
  v22 = *(a1 + v20 + 4);
  v23 = (a2 + v20);
  v24 = *(a2 + v20 + 4);
  if (v22)
  {
    if (!v24)
    {
      return 0;
    }
  }

  else
  {
    if (*v21 != *v23)
    {
      LOBYTE(v24) = 1;
    }

    if (v24)
    {
      return 0;
    }
  }

  v25 = v4[11];
  v26 = *(a1 + v25);
  v27 = *(a2 + v25);
  if (v26 == 2)
  {
    if (v27 != 2)
    {
      return 0;
    }
  }

  else if (v27 == 2 || ((v26 ^ v27) & 1) != 0)
  {
    return 0;
  }

  v28 = v4[12];
  v30 = *(a1 + v28);
  v29 = *(a1 + v28 + 8);
  v31 = (a2 + v28);
  v33 = *v31;
  v32 = v31[1];
  if (v29 >> 60 != 15)
  {
    if (v32 >> 60 != 15)
    {
      v35 = v4;
      sub_2655F1D1C(v30, v29);
      sub_2655F1D1C(v33, v32);
      v36 = sub_2655F9070(v30, v29, v33, v32);
      sub_2655F8178(v33, v32);
      sub_2655F8178(v30, v29);
      if ((v36 & 1) == 0)
      {
        return 0;
      }

      goto LABEL_37;
    }

LABEL_35:
    sub_2655F1D1C(v30, v29);
    sub_2655F1D1C(v33, v32);
    sub_2655F8178(v30, v29);
    sub_2655F8178(v33, v32);
    return 0;
  }

  if (v32 >> 60 != 15)
  {
    goto LABEL_35;
  }

  v34 = v4;
  sub_2655F1D1C(v30, v29);
  sub_2655F1D1C(v33, v32);
  sub_2655F8178(v30, v29);
  v35 = v34;
LABEL_37:
  if (sub_2655F8454(a1[1], a2[1]))
  {
    v37 = v35[6];
    sub_2655FE36C();
    sub_2655F7C90(&qword_2800187D0, MEMORY[0x277D216C8]);
    return sub_2655FE54C() & 1;
  }

  return 0;
}

uint64_t sub_2655F9EDC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2655F9F44(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t getEnumTagSinglePayload for StreamBlock.FormatFlag(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFA)
  {
    goto LABEL_17;
  }

  if (a2 + 6 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 6) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 6;
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

      return (*a1 | (v4 << 8)) - 6;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 6;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v8 = v6 - 7;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for StreamBlock.FormatFlag(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFA)
  {
    v4 = 0;
  }

  if (a2 > 0xF9)
  {
    v5 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
    *result = a2 + 6;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_2655FA118()
{
  result = qword_2800187F0;
  if (!qword_2800187F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800187F0);
  }

  return result;
}

unint64_t sub_2655FA170()
{
  result = qword_2800187F8;
  if (!qword_2800187F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800187F8);
  }

  return result;
}

unint64_t sub_2655FA1C8()
{
  result = qword_280018800;
  if (!qword_280018800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280018800);
  }

  return result;
}

unint64_t sub_2655FA21C()
{
  result = qword_280018808;
  if (!qword_280018808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280018808);
  }

  return result;
}

uint64_t sub_2655FA2AC()
{
  v1 = *v0;
  sub_2655FE66C();
  MEMORY[0x266759F50](v1);
  return sub_2655FE68C();
}

uint64_t sub_2655FA320()
{
  v1 = *v0;
  sub_2655FE66C();
  MEMORY[0x266759F50](v1);
  return sub_2655FE68C();
}

uint64_t sub_2655FA374(uint64_t a1, unint64_t a2, unint64_t a3)
{
  v3 = a3;
  v5 = 0;
  v6 = 0;
  v7 = a3 >> 62;
  v33 = BYTE6(a3);
  v34 = a2;
  v31 = a2 >> 8;
  v32 = a2 >> 32;
  v30 = a2 >> 16;
  v37 = *MEMORY[0x277D85DE8];
  v8 = 1;
  v28 = HIDWORD(a2);
  v29 = a2 >> 24;
  v26 = HIWORD(a2);
  v27 = a2 >> 40;
  v24 = a3 >> 8;
  v25 = HIBYTE(a2);
  v22 = a3 >> 24;
  v23 = a3 >> 16;
  v20 = a3 >> 40;
  v21 = HIDWORD(a3);
  do
  {
    v9 = a1 + v8 - 1;
    if (__OFADD__(a1, v8 - 1))
    {
      __break(1u);
LABEL_24:
      __break(1u);
LABEL_25:
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
LABEL_32:
      __break(1u);
    }

    if (v7 > 1)
    {
      if (v7 != 2)
      {
        goto LABEL_30;
      }

      if (v9 < *(a2 + 16))
      {
        goto LABEL_25;
      }

      if (v9 >= *(a2 + 24))
      {
        goto LABEL_27;
      }

      v11 = sub_2655FE26C();
      if (!v11)
      {
        goto LABEL_32;
      }

      v12 = v11;
      v13 = sub_2655FE28C();
      v14 = v9 - v13;
      if (__OFSUB__(v9, v13))
      {
        goto LABEL_29;
      }

      goto LABEL_18;
    }

    if (v7)
    {
      if (v9 < v34 || v9 >= v32)
      {
        goto LABEL_26;
      }

      v15 = sub_2655FE26C();
      if (!v15)
      {
        goto LABEL_31;
      }

      v12 = v15;
      v16 = sub_2655FE28C();
      v14 = v9 - v16;
      if (__OFSUB__(v9, v16))
      {
        goto LABEL_28;
      }

LABEL_18:
      v10 = *(v12 + v14);
      goto LABEL_19;
    }

    if (v9 >= v33)
    {
      goto LABEL_24;
    }

    v36[0] = v34;
    v36[1] = v31;
    v36[2] = v30;
    v36[3] = v29;
    v36[4] = v28;
    v36[5] = v27;
    v36[6] = v26;
    v36[7] = v25;
    v36[8] = v3;
    v36[9] = v24;
    v36[10] = v23;
    v36[11] = v22;
    v36[12] = v21;
    v36[13] = v20;
    v10 = v36[v9];
LABEL_19:
    v5 |= (v10 & 0x7F) << v6;
    if ((v10 & 0x80) == 0)
    {
      goto LABEL_22;
    }

    v6 += 7;
    ++v8;
  }

  while (v8 != 11);
  sub_2655FA600();
  swift_allocError();
  *v17 = 1;
  swift_willThrow();
LABEL_22:
  v18 = *MEMORY[0x277D85DE8];
  return v5;
}

unint64_t sub_2655FA600()
{
  result = qword_280018810;
  if (!qword_280018810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280018810);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for VarIntError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for VarIntError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_2655FA7B4()
{
  result = qword_280018818;
  if (!qword_280018818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280018818);
  }

  return result;
}

uint64_t sub_2655FA808(int a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a2)
  {
    switch(a1)
    {
      case 64:
        v14 = sub_2655FBF7C(a2, 0, 1, a3, a4);
        if (v5)
        {
          return v4;
        }

        v10 = sub_2655FCB7C(v14);
        break;
      case 32:
        v12 = sub_2655FBD98(a2, 0, 1, a3, a4);
        if (v5)
        {
          return v4;
        }

        v10 = sub_2655FCA80(v12);
        break;
      case 16:
        v9 = sub_2655FBBBC(a2, 0, 1, a3, a4);
        if (v5)
        {
          return v4;
        }

        v10 = sub_2655FC984(v9);
        break;
      default:
        goto LABEL_31;
    }

    v15 = v10;

    return v15;
  }

  HIDWORD(v7) = a1 - 8;
  LODWORD(v7) = a1 - 8;
  v6 = v7 >> 3;
  if ((a2 & 4) == 0)
  {
    if (v6 <= 2)
    {
      if (v6)
      {
        if (v6 == 1)
        {
          v8 = sub_2655FC35C(a2, 0, 1, a3, a4, sub_2655FAFD0);
          if (!v5)
          {
            goto LABEL_17;
          }

          return v4;
        }

LABEL_31:
        sub_2655FAB78();
        v4 = swift_allocError();
        *v17 = 1;
        swift_willThrow();
        return v4;
      }

      v18 = sub_2655FC160(a2, 0, 1, a3, a4, sub_2655FB1D4);
      if (v5)
      {
        return v4;
      }

LABEL_36:
      v11 = sub_2655FCC78(v18);
      goto LABEL_41;
    }

    if (v6 != 3)
    {
      if (v6 != 7)
      {
        goto LABEL_31;
      }

      v13 = sub_2655FC774(a2, 0, 1, a3, a4, sub_2655FABCC);
      if (v5)
      {
        return v4;
      }

LABEL_30:
      v11 = sub_2655FCF54(v13);
      goto LABEL_41;
    }

    v19 = sub_2655FC564(a2, 0, 1, a3, a4, sub_2655FADCC);
    if (v5)
    {
      return v4;
    }

    goto LABEL_40;
  }

  if (v6 > 2)
  {
    if (v6 != 3)
    {
      if (v6 != 7)
      {
        goto LABEL_31;
      }

      v13 = sub_2655FC774(a2, 0, 1, a3, a4, sub_2655FB3D8);
      if (v5)
      {
        return v4;
      }

      goto LABEL_30;
    }

    v19 = sub_2655FC564(a2, 0, 1, a3, a4, sub_2655FB59C);
    if (v5)
    {
      return v4;
    }

LABEL_40:
    v11 = sub_2655FCE60(v19);
    goto LABEL_41;
  }

  if (!v6)
  {
    v18 = sub_2655FC160(a2, 0, 1, a3, a4, sub_2655FB9A4);
    if (v5)
    {
      return v4;
    }

    goto LABEL_36;
  }

  if (v6 != 1)
  {
    goto LABEL_31;
  }

  v8 = sub_2655FC35C(a2, 0, 1, a3, a4, sub_2655FB7A0);
  if (!v5)
  {
LABEL_17:
    v11 = sub_2655FCD6C(v8);
LABEL_41:
    v4 = v11;
  }

  return v4;
}

unint64_t sub_2655FAB78()
{
  result = qword_280018820;
  if (!qword_280018820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280018820);
  }

  return result;
}

unint64_t sub_2655FABCC(unint64_t result, char a2, unint64_t a3, unint64_t a4)
{
  v6 = 0;
  v7 = 0;
  v8 = a4 >> 62;
  v9 = __OFSUB__(HIDWORD(a3), a3);
  v25 = v9;
  v21 = HIDWORD(a3) - a3;
  v22 = result;
  v23 = BYTE6(a4);
  v10 = MEMORY[0x277D84F90];
  while (1)
  {
    if (v8 <= 1)
    {
      v11 = v23;
      if (v8)
      {
        v11 = v21;
        if (v25)
        {
          goto LABEL_32;
        }
      }

      goto LABEL_11;
    }

    if (v8 == 2)
    {
      v13 = *(a3 + 16);
      v12 = *(a3 + 24);
      v14 = __OFSUB__(v12, v13);
      v11 = v12 - v13;
      if (v14)
      {
        goto LABEL_31;
      }

LABEL_11:
      if (v7 >= v11)
      {
        return v10;
      }

      goto LABEL_14;
    }

    if ((v7 & 0x8000000000000000) == 0)
    {
      return v10;
    }

LABEL_14:
    if ((a2 & 1) == 0 && *(v10 + 16) == v22)
    {
      return v10;
    }

    result = sub_2655FA374(v7, a3, a4);
    if (v4)
    {

      return v10;
    }

    v16 = -(result & 1) ^ (result >> 1);
    v14 = __OFADD__(v16, v6);
    v6 += v16;
    if (v14)
    {
      break;
    }

    if (v6 < 0)
    {

      sub_2655FA600();
      swift_allocError();
      *v20 = 0;
      swift_willThrow();
      return v10;
    }

    v17 = v15;
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_2655FD048(0, *(v10 + 16) + 1, 1, v10, &qword_280018860, &qword_2655FF538);
      v10 = result;
    }

    v19 = *(v10 + 16);
    v18 = *(v10 + 24);
    if (v19 >= v18 >> 1)
    {
      result = sub_2655FD048((v18 > 1), v19 + 1, 1, v10, &qword_280018860, &qword_2655FF538);
      v10 = result;
    }

    *(v10 + 16) = v19 + 1;
    *(v10 + 8 * v19 + 32) = v6;
    v14 = __OFADD__(v7, v17);
    v7 += v17;
    if (v14)
    {
      goto LABEL_30;
    }
  }

  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

unint64_t sub_2655FADCC(unint64_t result, char a2, unint64_t a3, unint64_t a4)
{
  v6 = 0;
  v7 = 0;
  v8 = a4 >> 62;
  v9 = __OFSUB__(HIDWORD(a3), a3);
  v25 = v9;
  v21 = HIDWORD(a3) - a3;
  v22 = result;
  v23 = BYTE6(a4);
  v10 = MEMORY[0x277D84F90];
  while (1)
  {
    if (v8 <= 1)
    {
      v11 = v23;
      if (v8)
      {
        v11 = v21;
        if (v25)
        {
          goto LABEL_32;
        }
      }

      goto LABEL_11;
    }

    if (v8 == 2)
    {
      v13 = *(a3 + 16);
      v12 = *(a3 + 24);
      v14 = __OFSUB__(v12, v13);
      v11 = v12 - v13;
      if (v14)
      {
        goto LABEL_31;
      }

LABEL_11:
      if (v7 >= v11)
      {
        return v10;
      }

      goto LABEL_14;
    }

    if ((v7 & 0x8000000000000000) == 0)
    {
      return v10;
    }

LABEL_14:
    if ((a2 & 1) == 0 && *(v10 + 16) == v22)
    {
      return v10;
    }

    result = sub_2655FA374(v7, a3, a4);
    if (v4)
    {

      return v10;
    }

    v16 = -(result & 1) ^ (result >> 1);
    v14 = __OFADD__(v16, v6);
    v6 += v16;
    if (v14)
    {
      break;
    }

    if (HIDWORD(v6))
    {

      sub_2655FA600();
      swift_allocError();
      *v20 = 0;
      swift_willThrow();
      return v10;
    }

    v17 = v15;
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_2655FD144(0, *(v10 + 16) + 1, 1, v10, &qword_280018858, &qword_2655FF530);
      v10 = result;
    }

    v19 = *(v10 + 16);
    v18 = *(v10 + 24);
    if (v19 >= v18 >> 1)
    {
      result = sub_2655FD144((v18 > 1), v19 + 1, 1, v10, &qword_280018858, &qword_2655FF530);
      v10 = result;
    }

    *(v10 + 16) = v19 + 1;
    *(v10 + 4 * v19 + 32) = v6;
    v14 = __OFADD__(v7, v17);
    v7 += v17;
    if (v14)
    {
      goto LABEL_30;
    }
  }

  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

unint64_t sub_2655FAFD0(unint64_t result, char a2, unint64_t a3, unint64_t a4)
{
  v6 = 0;
  v7 = 0;
  v8 = a4 >> 62;
  v9 = __OFSUB__(HIDWORD(a3), a3);
  v25 = v9;
  v21 = HIDWORD(a3) - a3;
  v22 = result;
  v23 = BYTE6(a4);
  v10 = MEMORY[0x277D84F90];
  while (1)
  {
    if (v8 <= 1)
    {
      v11 = v23;
      if (v8)
      {
        v11 = v21;
        if (v25)
        {
          goto LABEL_32;
        }
      }

      goto LABEL_11;
    }

    if (v8 == 2)
    {
      v13 = *(a3 + 16);
      v12 = *(a3 + 24);
      v14 = __OFSUB__(v12, v13);
      v11 = v12 - v13;
      if (v14)
      {
        goto LABEL_31;
      }

LABEL_11:
      if (v7 >= v11)
      {
        return v10;
      }

      goto LABEL_14;
    }

    if ((v7 & 0x8000000000000000) == 0)
    {
      return v10;
    }

LABEL_14:
    if ((a2 & 1) == 0 && *(v10 + 16) == v22)
    {
      return v10;
    }

    result = sub_2655FA374(v7, a3, a4);
    if (v4)
    {

      return v10;
    }

    v16 = -(result & 1) ^ (result >> 1);
    v14 = __OFADD__(v16, v6);
    v6 += v16;
    if (v14)
    {
      break;
    }

    if (v6 >> 16)
    {

      sub_2655FA600();
      swift_allocError();
      *v20 = 0;
      swift_willThrow();
      return v10;
    }

    v17 = v15;
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_2655FD240(0, *(v10 + 16) + 1, 1, v10, &qword_280018850, &qword_2655FF528);
      v10 = result;
    }

    v19 = *(v10 + 16);
    v18 = *(v10 + 24);
    if (v19 >= v18 >> 1)
    {
      result = sub_2655FD240((v18 > 1), v19 + 1, 1, v10, &qword_280018850, &qword_2655FF528);
      v10 = result;
    }

    *(v10 + 16) = v19 + 1;
    *(v10 + 2 * v19 + 32) = v6;
    v14 = __OFADD__(v7, v17);
    v7 += v17;
    if (v14)
    {
      goto LABEL_30;
    }
  }

  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

unint64_t sub_2655FB1D4(unint64_t result, char a2, unint64_t a3, unint64_t a4)
{
  v6 = 0;
  v7 = 0;
  v8 = a4 >> 62;
  v9 = __OFSUB__(HIDWORD(a3), a3);
  v25 = v9;
  v21 = HIDWORD(a3) - a3;
  v22 = result;
  v23 = BYTE6(a4);
  v10 = MEMORY[0x277D84F90];
  while (1)
  {
    if (v8 <= 1)
    {
      v11 = v23;
      if (v8)
      {
        v11 = v21;
        if (v25)
        {
          goto LABEL_32;
        }
      }

      goto LABEL_11;
    }

    if (v8 == 2)
    {
      v13 = *(a3 + 16);
      v12 = *(a3 + 24);
      v14 = __OFSUB__(v12, v13);
      v11 = v12 - v13;
      if (v14)
      {
        goto LABEL_31;
      }

LABEL_11:
      if (v7 >= v11)
      {
        return v10;
      }

      goto LABEL_14;
    }

    if ((v7 & 0x8000000000000000) == 0)
    {
      return v10;
    }

LABEL_14:
    if ((a2 & 1) == 0 && *(v10 + 16) == v22)
    {
      return v10;
    }

    result = sub_2655FA374(v7, a3, a4);
    if (v4)
    {

      return v10;
    }

    v16 = -(result & 1) ^ (result >> 1);
    v14 = __OFADD__(v16, v6);
    v6 += v16;
    if (v14)
    {
      break;
    }

    if (v6 > 0xFF)
    {

      sub_2655FA600();
      swift_allocError();
      *v20 = 0;
      swift_willThrow();
      return v10;
    }

    v17 = v15;
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_2655FD334(0, *(v10 + 16) + 1, 1, v10, &qword_280018848, &qword_2655FF520);
      v10 = result;
    }

    v19 = *(v10 + 16);
    v18 = *(v10 + 24);
    if (v19 >= v18 >> 1)
    {
      result = sub_2655FD334((v18 > 1), v19 + 1, 1, v10, &qword_280018848, &qword_2655FF520);
      v10 = result;
    }

    *(v10 + 16) = v19 + 1;
    *(v10 + v19 + 32) = v6;
    v14 = __OFADD__(v7, v17);
    v7 += v17;
    if (v14)
    {
      goto LABEL_30;
    }
  }

  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

unint64_t sub_2655FB3D8(unint64_t result, char a2, unint64_t a3, unint64_t a4)
{
  v6 = 0;
  v7 = 0;
  v8 = a4 >> 62;
  v9 = __OFSUB__(HIDWORD(a3), a3);
  v24 = v9;
  v20 = HIDWORD(a3) - a3;
  v21 = result;
  v22 = BYTE6(a4);
  v10 = MEMORY[0x277D84F90];
  while (1)
  {
    if (v8 <= 1)
    {
      v11 = v22;
      if (v8)
      {
        v11 = v20;
        if (v24)
        {
          goto LABEL_30;
        }
      }

      goto LABEL_11;
    }

    if (v8 == 2)
    {
      v13 = *(a3 + 16);
      v12 = *(a3 + 24);
      v14 = __OFSUB__(v12, v13);
      v11 = v12 - v13;
      if (v14)
      {
        goto LABEL_29;
      }

LABEL_11:
      if (v7 >= v11)
      {
        return v10;
      }

      goto LABEL_14;
    }

    if ((v7 & 0x8000000000000000) == 0)
    {
      return v10;
    }

LABEL_14:
    if ((a2 & 1) == 0 && *(v10 + 16) == v21)
    {
      return v10;
    }

    result = sub_2655FA374(v7, a3, a4);
    if (v4)
    {

      return v10;
    }

    v16 = -(result & 1) ^ (result >> 1);
    v14 = __OFADD__(v16, v6);
    v6 += v16;
    if (v14)
    {
      break;
    }

    v17 = v15;
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_2655FD048(0, *(v10 + 16) + 1, 1, v10, &qword_280018840, &qword_2655FF518);
      v10 = result;
    }

    v19 = *(v10 + 16);
    v18 = *(v10 + 24);
    if (v19 >= v18 >> 1)
    {
      result = sub_2655FD048((v18 > 1), v19 + 1, 1, v10, &qword_280018840, &qword_2655FF518);
      v10 = result;
    }

    *(v10 + 16) = v19 + 1;
    *(v10 + 8 * v19 + 32) = v6;
    v14 = __OFADD__(v7, v17);
    v7 += v17;
    if (v14)
    {
      goto LABEL_28;
    }
  }

  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
  return result;
}

unint64_t sub_2655FB59C(unint64_t result, char a2, unint64_t a3, unint64_t a4)
{
  v6 = 0;
  v7 = 0;
  v8 = a4 >> 62;
  v9 = __OFSUB__(HIDWORD(a3), a3);
  v25 = v9;
  v21 = HIDWORD(a3) - a3;
  v22 = result;
  v23 = BYTE6(a4);
  v10 = MEMORY[0x277D84F90];
  while (1)
  {
    if (v8 <= 1)
    {
      v11 = v23;
      if (v8)
      {
        v11 = v21;
        if (v25)
        {
          goto LABEL_32;
        }
      }

      goto LABEL_11;
    }

    if (v8 == 2)
    {
      v13 = *(a3 + 16);
      v12 = *(a3 + 24);
      v14 = __OFSUB__(v12, v13);
      v11 = v12 - v13;
      if (v14)
      {
        goto LABEL_31;
      }

LABEL_11:
      if (v7 >= v11)
      {
        return v10;
      }

      goto LABEL_14;
    }

    if ((v7 & 0x8000000000000000) == 0)
    {
      return v10;
    }

LABEL_14:
    if ((a2 & 1) == 0 && *(v10 + 16) == v22)
    {
      return v10;
    }

    result = sub_2655FA374(v7, a3, a4);
    if (v4)
    {

      return v10;
    }

    v16 = -(result & 1) ^ (result >> 1);
    v14 = __OFADD__(v16, v6);
    v6 += v16;
    if (v14)
    {
      break;
    }

    if (v6 != v6)
    {

      sub_2655FA600();
      swift_allocError();
      *v20 = 0;
      swift_willThrow();
      return v10;
    }

    v17 = v15;
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_2655FD144(0, *(v10 + 16) + 1, 1, v10, &qword_280018838, &qword_2655FF510);
      v10 = result;
    }

    v19 = *(v10 + 16);
    v18 = *(v10 + 24);
    if (v19 >= v18 >> 1)
    {
      result = sub_2655FD144((v18 > 1), v19 + 1, 1, v10, &qword_280018838, &qword_2655FF510);
      v10 = result;
    }

    *(v10 + 16) = v19 + 1;
    *(v10 + 4 * v19 + 32) = v6;
    v14 = __OFADD__(v7, v17);
    v7 += v17;
    if (v14)
    {
      goto LABEL_30;
    }
  }

  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

unint64_t sub_2655FB7A0(unint64_t result, char a2, unint64_t a3, unint64_t a4)
{
  v6 = 0;
  v7 = 0;
  v8 = a4 >> 62;
  v9 = __OFSUB__(HIDWORD(a3), a3);
  v25 = v9;
  v21 = HIDWORD(a3) - a3;
  v22 = result;
  v23 = BYTE6(a4);
  v10 = MEMORY[0x277D84F90];
  while (1)
  {
    if (v8 <= 1)
    {
      v11 = v23;
      if (v8)
      {
        v11 = v21;
        if (v25)
        {
          goto LABEL_32;
        }
      }

      goto LABEL_11;
    }

    if (v8 == 2)
    {
      v13 = *(a3 + 16);
      v12 = *(a3 + 24);
      v14 = __OFSUB__(v12, v13);
      v11 = v12 - v13;
      if (v14)
      {
        goto LABEL_31;
      }

LABEL_11:
      if (v7 >= v11)
      {
        return v10;
      }

      goto LABEL_14;
    }

    if ((v7 & 0x8000000000000000) == 0)
    {
      return v10;
    }

LABEL_14:
    if ((a2 & 1) == 0 && *(v10 + 16) == v22)
    {
      return v10;
    }

    result = sub_2655FA374(v7, a3, a4);
    if (v4)
    {

      return v10;
    }

    v16 = -(result & 1) ^ (result >> 1);
    v14 = __OFADD__(v16, v6);
    v6 += v16;
    if (v14)
    {
      break;
    }

    if (v6 != v6)
    {

      sub_2655FA600();
      swift_allocError();
      *v20 = 0;
      swift_willThrow();
      return v10;
    }

    v17 = v15;
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_2655FD240(0, *(v10 + 16) + 1, 1, v10, &qword_280018830, &qword_2655FF508);
      v10 = result;
    }

    v19 = *(v10 + 16);
    v18 = *(v10 + 24);
    if (v19 >= v18 >> 1)
    {
      result = sub_2655FD240((v18 > 1), v19 + 1, 1, v10, &qword_280018830, &qword_2655FF508);
      v10 = result;
    }

    *(v10 + 16) = v19 + 1;
    *(v10 + 2 * v19 + 32) = v6;
    v14 = __OFADD__(v7, v17);
    v7 += v17;
    if (v14)
    {
      goto LABEL_30;
    }
  }

  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

unint64_t sub_2655FB9A4(unint64_t result, char a2, unint64_t a3, unint64_t a4)
{
  v6 = 0;
  v7 = 0;
  v8 = a4 >> 62;
  v9 = __OFSUB__(HIDWORD(a3), a3);
  v25 = v9;
  v21 = HIDWORD(a3) - a3;
  v22 = result;
  v23 = BYTE6(a4);
  v10 = MEMORY[0x277D84F90];
  while (1)
  {
    if (v8 <= 1)
    {
      v11 = v23;
      if (v8)
      {
        v11 = v21;
        if (v25)
        {
          goto LABEL_32;
        }
      }

      goto LABEL_11;
    }

    if (v8 == 2)
    {
      v13 = *(a3 + 16);
      v12 = *(a3 + 24);
      v14 = __OFSUB__(v12, v13);
      v11 = v12 - v13;
      if (v14)
      {
        goto LABEL_31;
      }

LABEL_11:
      if (v7 >= v11)
      {
        return v10;
      }

      goto LABEL_14;
    }

    if ((v7 & 0x8000000000000000) == 0)
    {
      return v10;
    }

LABEL_14:
    if ((a2 & 1) == 0 && *(v10 + 16) == v22)
    {
      return v10;
    }

    result = sub_2655FA374(v7, a3, a4);
    if (v4)
    {

      return v10;
    }

    v16 = -(result & 1) ^ (result >> 1);
    v14 = __OFADD__(v16, v6);
    v6 += v16;
    if (v14)
    {
      break;
    }

    if (v6 != v6)
    {

      sub_2655FA600();
      swift_allocError();
      *v20 = 0;
      swift_willThrow();
      return v10;
    }

    v17 = v15;
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_2655FD334(0, *(v10 + 16) + 1, 1, v10, &qword_280018828, &qword_2655FF500);
      v10 = result;
    }

    v19 = *(v10 + 16);
    v18 = *(v10 + 24);
    if (v19 >= v18 >> 1)
    {
      result = sub_2655FD334((v18 > 1), v19 + 1, 1, v10, &qword_280018828, &qword_2655FF500);
      v10 = result;
    }

    *(v10 + 16) = v19 + 1;
    *(v10 + v19 + 32) = v6;
    v14 = __OFADD__(v7, v17);
    v7 += v17;
    if (v14)
    {
      goto LABEL_30;
    }
  }

  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_2655FBBBC(uint64_t result, uint64_t a2, char a3, uint64_t a4, unint64_t a5)
{
  v5 = BYTE6(a5);
  v7 = result;
  v8 = a5 >> 62;
  if ((a5 >> 62) <= 1)
  {
    if (!v8)
    {
      v9 = BYTE6(a5);
      goto LABEL_11;
    }

    goto LABEL_8;
  }

  if (v8 != 2)
  {
    v9 = 0;
    goto LABEL_11;
  }

  v11 = *(a4 + 16);
  v10 = *(a4 + 24);
  v12 = __OFSUB__(v10, v11);
  v9 = v10 - v11;
  if (v12)
  {
    __break(1u);
LABEL_8:
    LODWORD(v9) = HIDWORD(a4) - a4;
    if (__OFSUB__(HIDWORD(a4), a4))
    {
LABEL_46:
      __break(1u);
      goto LABEL_47;
    }

    v9 = v9;
  }

LABEL_11:
  v13 = v9 / 2;
  if (v13 >= a2)
  {
    v14 = a2;
  }

  else
  {
    v14 = v13;
  }

  if (a3)
  {
    v15 = v13;
  }

  else
  {
    v15 = v14;
  }

  if (v15 < 0)
  {
    __break(1u);
    goto LABEL_46;
  }

  if (v15)
  {
    result = sub_2655FE5AC();
    v16 = result;
    *(result + 16) = v15;
    if ((v7 & 2) == 0)
    {
      goto LABEL_20;
    }

LABEL_25:
    sub_2655FAB78();
    swift_allocError();
    *v18 = 0;
    swift_willThrow();
    *(v16 + 16) = 0;

    return v16;
  }

  v16 = MEMORY[0x277D84F90];
  if ((result & 2) != 0)
  {
    goto LABEL_25;
  }

LABEL_20:
  if (v8 > 1)
  {
    if (v8 == 2)
    {
      v20 = *(a4 + 16);
      v19 = *(a4 + 24);
      v12 = __OFSUB__(v19, v20);
      v17 = v19 - v20;
      if (v12)
      {
LABEL_49:
        __break(1u);
        goto LABEL_50;
      }

      if (v17 < 1)
      {
        goto LABEL_43;
      }

LABEL_32:
      if (v8)
      {
        if (v8 == 2)
        {
          v21 = *(a4 + 16);
        }

        else
        {
          v21 = a4;
        }
      }

      else
      {
        v21 = 0;
      }

      if (v17 >= (2 * v15))
      {
        v17 = 2 * v15;
      }

      v22 = v21 + v17;
      if (!__OFADD__(v21, v17))
      {
        if (v22 >= v21)
        {
          if (v21 != v22)
          {
            sub_2655FE2CC();
          }

          goto LABEL_43;
        }

        goto LABEL_48;
      }

LABEL_47:
      __break(1u);
LABEL_48:
      __break(1u);
      goto LABEL_49;
    }

LABEL_43:
    *(v16 + 16) = v15;
    return v16;
  }

  if (!v8)
  {
    v17 = v5;
    if (!v5)
    {
      goto LABEL_43;
    }

    goto LABEL_32;
  }

  LODWORD(v17) = HIDWORD(a4) - a4;
  if (!__OFSUB__(HIDWORD(a4), a4))
  {
    v17 = v17;
    if (v17 >= 1)
    {
      goto LABEL_32;
    }

    goto LABEL_43;
  }

LABEL_50:
  __break(1u);
  return result;
}

uint64_t sub_2655FBD98(uint64_t result, uint64_t a2, char a3, uint64_t a4, unint64_t a5)
{
  v5 = BYTE6(a5);
  v7 = result;
  v8 = a5 >> 62;
  if ((a5 >> 62) <= 1)
  {
    if (!v8)
    {
      v9 = BYTE6(a5);
      goto LABEL_11;
    }

    goto LABEL_8;
  }

  if (v8 != 2)
  {
    v9 = 0;
    goto LABEL_11;
  }

  v11 = *(a4 + 16);
  v10 = *(a4 + 24);
  v12 = __OFSUB__(v10, v11);
  v9 = v10 - v11;
  if (v12)
  {
    __break(1u);
LABEL_8:
    LODWORD(v9) = HIDWORD(a4) - a4;
    if (__OFSUB__(HIDWORD(a4), a4))
    {
LABEL_46:
      __break(1u);
      goto LABEL_47;
    }

    v9 = v9;
  }

LABEL_11:
  v13 = v9 / 4;
  if (v13 >= a2)
  {
    v14 = a2;
  }

  else
  {
    v14 = v13;
  }

  if (a3)
  {
    v15 = v13;
  }

  else
  {
    v15 = v14;
  }

  if (v15 < 0)
  {
    __break(1u);
    goto LABEL_46;
  }

  if (v15)
  {
    result = sub_2655FE5AC();
    v16 = result;
    *(result + 16) = v15;
    if ((v7 & 2) == 0)
    {
      goto LABEL_20;
    }

LABEL_25:
    sub_2655FAB78();
    swift_allocError();
    *v18 = 0;
    swift_willThrow();
    *(v16 + 16) = 0;

    return v16;
  }

  v16 = MEMORY[0x277D84F90];
  if ((result & 2) != 0)
  {
    goto LABEL_25;
  }

LABEL_20:
  if (v8 > 1)
  {
    if (v8 == 2)
    {
      v20 = *(a4 + 16);
      v19 = *(a4 + 24);
      v12 = __OFSUB__(v19, v20);
      v17 = v19 - v20;
      if (v12)
      {
LABEL_49:
        __break(1u);
        goto LABEL_50;
      }

      if (v17 < 1)
      {
        goto LABEL_43;
      }

LABEL_32:
      if (v8)
      {
        if (v8 == 2)
        {
          v21 = *(a4 + 16);
        }

        else
        {
          v21 = a4;
        }
      }

      else
      {
        v21 = 0;
      }

      if (v17 >= (4 * v15))
      {
        v17 = 4 * v15;
      }

      v22 = v21 + v17;
      if (!__OFADD__(v21, v17))
      {
        if (v22 >= v21)
        {
          if (v21 != v22)
          {
            sub_2655FE2CC();
          }

          goto LABEL_43;
        }

        goto LABEL_48;
      }

LABEL_47:
      __break(1u);
LABEL_48:
      __break(1u);
      goto LABEL_49;
    }

LABEL_43:
    *(v16 + 16) = v15;
    return v16;
  }

  if (!v8)
  {
    v17 = v5;
    if (!v5)
    {
      goto LABEL_43;
    }

    goto LABEL_32;
  }

  LODWORD(v17) = HIDWORD(a4) - a4;
  if (!__OFSUB__(HIDWORD(a4), a4))
  {
    v17 = v17;
    if (v17 >= 1)
    {
      goto LABEL_32;
    }

    goto LABEL_43;
  }

LABEL_50:
  __break(1u);
  return result;
}

uint64_t sub_2655FBF7C(uint64_t result, uint64_t a2, char a3, uint64_t a4, unint64_t a5)
{
  v5 = BYTE6(a5);
  v7 = result;
  v8 = a5 >> 62;
  if ((a5 >> 62) <= 1)
  {
    if (!v8)
    {
      v9 = BYTE6(a5);
      goto LABEL_11;
    }

    goto LABEL_8;
  }

  if (v8 != 2)
  {
    v9 = 0;
    goto LABEL_11;
  }

  v11 = *(a4 + 16);
  v10 = *(a4 + 24);
  v12 = __OFSUB__(v10, v11);
  v9 = v10 - v11;
  if (v12)
  {
    __break(1u);
LABEL_8:
    LODWORD(v9) = HIDWORD(a4) - a4;
    if (__OFSUB__(HIDWORD(a4), a4))
    {
LABEL_46:
      __break(1u);
      goto LABEL_47;
    }

    v9 = v9;
  }

LABEL_11:
  v13 = v9 / 8;
  if (v13 >= a2)
  {
    v14 = a2;
  }

  else
  {
    v14 = v13;
  }

  if (a3)
  {
    v15 = v13;
  }

  else
  {
    v15 = v14;
  }

  if (v15 < 0)
  {
    __break(1u);
    goto LABEL_46;
  }

  if (v15)
  {
    result = sub_2655FE5AC();
    v16 = result;
    *(result + 16) = v15;
    if ((v7 & 2) == 0)
    {
      goto LABEL_20;
    }

LABEL_25:
    sub_2655FAB78();
    swift_allocError();
    *v18 = 0;
    swift_willThrow();
    *(v16 + 16) = 0;

    return v16;
  }

  v16 = MEMORY[0x277D84F90];
  if ((result & 2) != 0)
  {
    goto LABEL_25;
  }

LABEL_20:
  if (v8 > 1)
  {
    if (v8 == 2)
    {
      v20 = *(a4 + 16);
      v19 = *(a4 + 24);
      v12 = __OFSUB__(v19, v20);
      v17 = v19 - v20;
      if (v12)
      {
LABEL_49:
        __break(1u);
        goto LABEL_50;
      }

      if (v17 < 1)
      {
        goto LABEL_43;
      }

LABEL_32:
      if (v8)
      {
        if (v8 == 2)
        {
          v21 = *(a4 + 16);
        }

        else
        {
          v21 = a4;
        }
      }

      else
      {
        v21 = 0;
      }

      if (v17 >= (8 * v15))
      {
        v17 = 8 * v15;
      }

      v22 = v21 + v17;
      if (!__OFADD__(v21, v17))
      {
        if (v22 >= v21)
        {
          if (v21 != v22)
          {
            sub_2655FE2CC();
          }

          goto LABEL_43;
        }

        goto LABEL_48;
      }

LABEL_47:
      __break(1u);
LABEL_48:
      __break(1u);
      goto LABEL_49;
    }

LABEL_43:
    *(v16 + 16) = v15;
    return v16;
  }

  if (!v8)
  {
    v17 = v5;
    if (!v5)
    {
      goto LABEL_43;
    }

    goto LABEL_32;
  }

  LODWORD(v17) = HIDWORD(a4) - a4;
  if (!__OFSUB__(HIDWORD(a4), a4))
  {
    v17 = v17;
    if (v17 >= 1)
    {
      goto LABEL_32;
    }

    goto LABEL_43;
  }

LABEL_50:
  __break(1u);
  return result;
}

uint64_t sub_2655FC160(uint64_t result, int64_t a2, char a3, uint64_t a4, unint64_t a5, uint64_t (*a6)(int64_t, void, uint64_t, unint64_t))
{
  v6 = a2;
  if ((result & 0x100) != 0)
  {
    return a6(a2, a3 & 1, a4, a5);
  }

  v7 = result;
  v8 = a5 >> 62;
  if ((a5 >> 62) <= 1)
  {
    if (!v8)
    {
      v9 = BYTE6(a5);
      goto LABEL_13;
    }

    goto LABEL_10;
  }

  if (v8 != 2)
  {
    v9 = 0;
    goto LABEL_13;
  }

  v11 = *(a4 + 16);
  v10 = *(a4 + 24);
  v12 = __OFSUB__(v10, v11);
  v9 = v10 - v11;
  if (v12)
  {
    __break(1u);
LABEL_10:
    LODWORD(v9) = HIDWORD(a4) - a4;
    if (__OFSUB__(HIDWORD(a4), a4))
    {
LABEL_46:
      __break(1u);
      goto LABEL_47;
    }

    v9 = v9;
  }

LABEL_13:
  if (v9 < a2)
  {
    v6 = v9;
  }

  if (a3)
  {
    v13 = v9;
  }

  else
  {
    v13 = v6;
  }

  if ((v13 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_46;
  }

  if (v13)
  {
    v14 = BYTE6(a5);
    v15 = a4;
    result = sub_2655FE5AC();
    a4 = v15;
    BYTE6(a5) = v14;
    *(result + 16) = v13;
    if ((v7 & 2) == 0)
    {
      goto LABEL_21;
    }

LABEL_26:
    v17 = result;
    sub_2655FAB78();
    swift_allocError();
    *v18 = 0;
    swift_willThrow();
    *(v17 + 16) = 0;
  }

  result = MEMORY[0x277D84F90];
  if ((v7 & 2) != 0)
  {
    goto LABEL_26;
  }

LABEL_21:
  if (v8 > 1)
  {
    if (v8 == 2)
    {
      v20 = *(a4 + 16);
      v19 = *(a4 + 24);
      v12 = __OFSUB__(v19, v20);
      v16 = v19 - v20;
      if (v12)
      {
LABEL_49:
        __break(1u);
        goto LABEL_50;
      }

      if (v16 < 1)
      {
        goto LABEL_44;
      }

LABEL_33:
      if (v8)
      {
        if (v8 == 2)
        {
          v21 = *(a4 + 16);
        }

        else
        {
          v21 = a4;
        }
      }

      else
      {
        v21 = 0;
      }

      if (v16 >= v13)
      {
        v16 = v13;
      }

      v22 = v21 + v16;
      if (!__OFADD__(v21, v16))
      {
        if (v22 >= v21)
        {
          if (v21 != v22)
          {
            v23 = result;
            sub_2655FE2CC();
            result = v23;
          }

          goto LABEL_44;
        }

        goto LABEL_48;
      }

LABEL_47:
      __break(1u);
LABEL_48:
      __break(1u);
      goto LABEL_49;
    }

LABEL_44:
    *(result + 16) = v13;
    return result;
  }

  if (!v8)
  {
    v16 = BYTE6(a5);
    if (!BYTE6(a5))
    {
      goto LABEL_44;
    }

    goto LABEL_33;
  }

  LODWORD(v16) = HIDWORD(a4) - a4;
  if (!__OFSUB__(HIDWORD(a4), a4))
  {
    v16 = v16;
    if (v16 >= 1)
    {
      goto LABEL_33;
    }

    goto LABEL_44;
  }

LABEL_50:
  __break(1u);
  return result;
}

uint64_t sub_2655FC35C(uint64_t result, uint64_t a2, char a3, uint64_t a4, unint64_t a5, uint64_t (*a6)(uint64_t, void, uint64_t, unint64_t))
{
  v6 = a2;
  if ((result & 0x100) != 0)
  {
    return a6(a2, a3 & 1, a4, a5);
  }

  v7 = result;
  v8 = a5 >> 62;
  if ((a5 >> 62) <= 1)
  {
    if (!v8)
    {
      v9 = BYTE6(a5);
      goto LABEL_13;
    }

    goto LABEL_10;
  }

  if (v8 != 2)
  {
    v9 = 0;
    goto LABEL_13;
  }

  v11 = *(a4 + 16);
  v10 = *(a4 + 24);
  v12 = __OFSUB__(v10, v11);
  v9 = v10 - v11;
  if (v12)
  {
    __break(1u);
LABEL_10:
    LODWORD(v9) = HIDWORD(a4) - a4;
    if (__OFSUB__(HIDWORD(a4), a4))
    {
LABEL_46:
      __break(1u);
      goto LABEL_47;
    }

    v9 = v9;
  }

LABEL_13:
  v13 = v9 / 2;
  if (v13 < a2)
  {
    v6 = v13;
  }

  if (a3)
  {
    v14 = v13;
  }

  else
  {
    v14 = v6;
  }

  if (v14 < 0)
  {
    __break(1u);
    goto LABEL_46;
  }

  if (v14)
  {
    v15 = BYTE6(a5);
    v16 = a4;
    result = sub_2655FE5AC();
    a4 = v16;
    BYTE6(a5) = v15;
    *(result + 16) = v14;
    if ((v7 & 2) == 0)
    {
      goto LABEL_21;
    }

LABEL_26:
    v18 = result;
    sub_2655FAB78();
    swift_allocError();
    *v19 = 0;
    swift_willThrow();
    *(v18 + 16) = 0;
  }

  result = MEMORY[0x277D84F90];
  if ((v7 & 2) != 0)
  {
    goto LABEL_26;
  }

LABEL_21:
  if (v8 > 1)
  {
    if (v8 == 2)
    {
      v21 = *(a4 + 16);
      v20 = *(a4 + 24);
      v12 = __OFSUB__(v20, v21);
      v17 = v20 - v21;
      if (v12)
      {
LABEL_49:
        __break(1u);
        goto LABEL_50;
      }

      if (v17 < 1)
      {
        goto LABEL_44;
      }

LABEL_33:
      if (v8)
      {
        if (v8 == 2)
        {
          v22 = *(a4 + 16);
        }

        else
        {
          v22 = a4;
        }
      }

      else
      {
        v22 = 0;
      }

      if (v17 >= (2 * v14))
      {
        v17 = 2 * v14;
      }

      v23 = v22 + v17;
      if (!__OFADD__(v22, v17))
      {
        if (v23 >= v22)
        {
          if (v22 != v23)
          {
            v24 = result;
            sub_2655FE2CC();
            result = v24;
          }

          goto LABEL_44;
        }

        goto LABEL_48;
      }

LABEL_47:
      __break(1u);
LABEL_48:
      __break(1u);
      goto LABEL_49;
    }

LABEL_44:
    *(result + 16) = v14;
    return result;
  }

  if (!v8)
  {
    v17 = BYTE6(a5);
    if (!BYTE6(a5))
    {
      goto LABEL_44;
    }

    goto LABEL_33;
  }

  LODWORD(v17) = HIDWORD(a4) - a4;
  if (!__OFSUB__(HIDWORD(a4), a4))
  {
    v17 = v17;
    if (v17 >= 1)
    {
      goto LABEL_33;
    }

    goto LABEL_44;
  }

LABEL_50:
  __break(1u);
  return result;
}

uint64_t sub_2655FC564(uint64_t result, uint64_t a2, char a3, uint64_t a4, unint64_t a5, uint64_t (*a6)(uint64_t, void, uint64_t, unint64_t))
{
  v6 = a2;
  if ((result & 0x100) != 0)
  {
    return a6(a2, a3 & 1, a4, a5);
  }

  v7 = result;
  v8 = a5 >> 62;
  if ((a5 >> 62) <= 1)
  {
    if (!v8)
    {
      v9 = BYTE6(a5);
      goto LABEL_13;
    }

    goto LABEL_10;
  }

  if (v8 != 2)
  {
    v9 = 0;
    goto LABEL_13;
  }

  v11 = *(a4 + 16);
  v10 = *(a4 + 24);
  v12 = __OFSUB__(v10, v11);
  v9 = v10 - v11;
  if (v12)
  {
    __break(1u);
LABEL_10:
    LODWORD(v9) = HIDWORD(a4) - a4;
    if (__OFSUB__(HIDWORD(a4), a4))
    {
LABEL_46:
      __break(1u);
      goto LABEL_47;
    }

    v9 = v9;
  }

LABEL_13:
  v13 = v9 / 4;
  if (v13 < a2)
  {
    v6 = v13;
  }

  if (a3)
  {
    v14 = v13;
  }

  else
  {
    v14 = v6;
  }

  if (v14 < 0)
  {
    __break(1u);
    goto LABEL_46;
  }

  if (v14)
  {
    v15 = BYTE6(a5);
    v16 = a4;
    result = sub_2655FE5AC();
    a4 = v16;
    BYTE6(a5) = v15;
    *(result + 16) = v14;
    if ((v7 & 2) == 0)
    {
      goto LABEL_21;
    }

LABEL_26:
    v18 = result;
    sub_2655FAB78();
    swift_allocError();
    *v19 = 0;
    swift_willThrow();
    *(v18 + 16) = 0;
  }

  result = MEMORY[0x277D84F90];
  if ((v7 & 2) != 0)
  {
    goto LABEL_26;
  }

LABEL_21:
  if (v8 > 1)
  {
    if (v8 == 2)
    {
      v21 = *(a4 + 16);
      v20 = *(a4 + 24);
      v12 = __OFSUB__(v20, v21);
      v17 = v20 - v21;
      if (v12)
      {
LABEL_49:
        __break(1u);
        goto LABEL_50;
      }

      if (v17 < 1)
      {
        goto LABEL_44;
      }

LABEL_33:
      if (v8)
      {
        if (v8 == 2)
        {
          v22 = *(a4 + 16);
        }

        else
        {
          v22 = a4;
        }
      }

      else
      {
        v22 = 0;
      }

      if (v17 >= (4 * v14))
      {
        v17 = 4 * v14;
      }

      v23 = v22 + v17;
      if (!__OFADD__(v22, v17))
      {
        if (v23 >= v22)
        {
          if (v22 != v23)
          {
            v24 = result;
            sub_2655FE2CC();
            result = v24;
          }

          goto LABEL_44;
        }

        goto LABEL_48;
      }

LABEL_47:
      __break(1u);
LABEL_48:
      __break(1u);
      goto LABEL_49;
    }

LABEL_44:
    *(result + 16) = v14;
    return result;
  }

  if (!v8)
  {
    v17 = BYTE6(a5);
    if (!BYTE6(a5))
    {
      goto LABEL_44;
    }

    goto LABEL_33;
  }

  LODWORD(v17) = HIDWORD(a4) - a4;
  if (!__OFSUB__(HIDWORD(a4), a4))
  {
    v17 = v17;
    if (v17 >= 1)
    {
      goto LABEL_33;
    }

    goto LABEL_44;
  }

LABEL_50:
  __break(1u);
  return result;
}

uint64_t sub_2655FC774(uint64_t result, uint64_t a2, char a3, uint64_t a4, unint64_t a5, uint64_t (*a6)(uint64_t, void, uint64_t, unint64_t))
{
  v6 = a2;
  if ((result & 0x100) != 0)
  {
    return a6(a2, a3 & 1, a4, a5);
  }

  v7 = result;
  v8 = a5 >> 62;
  if ((a5 >> 62) <= 1)
  {
    if (!v8)
    {
      v9 = BYTE6(a5);
      goto LABEL_13;
    }

    goto LABEL_10;
  }

  if (v8 != 2)
  {
    v9 = 0;
    goto LABEL_13;
  }

  v11 = *(a4 + 16);
  v10 = *(a4 + 24);
  v12 = __OFSUB__(v10, v11);
  v9 = v10 - v11;
  if (v12)
  {
    __break(1u);
LABEL_10:
    LODWORD(v9) = HIDWORD(a4) - a4;
    if (__OFSUB__(HIDWORD(a4), a4))
    {
LABEL_46:
      __break(1u);
      goto LABEL_47;
    }

    v9 = v9;
  }

LABEL_13:
  v13 = v9 / 8;
  if (v13 < a2)
  {
    v6 = v13;
  }

  if (a3)
  {
    v14 = v13;
  }

  else
  {
    v14 = v6;
  }

  if (v14 < 0)
  {
    __break(1u);
    goto LABEL_46;
  }

  if (v14)
  {
    v15 = BYTE6(a5);
    v16 = a4;
    result = sub_2655FE5AC();
    a4 = v16;
    BYTE6(a5) = v15;
    *(result + 16) = v14;
    if ((v7 & 2) == 0)
    {
      goto LABEL_21;
    }

LABEL_26:
    v18 = result;
    sub_2655FAB78();
    swift_allocError();
    *v19 = 0;
    swift_willThrow();
    *(v18 + 16) = 0;
  }

  result = MEMORY[0x277D84F90];
  if ((v7 & 2) != 0)
  {
    goto LABEL_26;
  }

LABEL_21:
  if (v8 > 1)
  {
    if (v8 == 2)
    {
      v21 = *(a4 + 16);
      v20 = *(a4 + 24);
      v12 = __OFSUB__(v20, v21);
      v17 = v20 - v21;
      if (v12)
      {
LABEL_49:
        __break(1u);
        goto LABEL_50;
      }

      if (v17 < 1)
      {
        goto LABEL_44;
      }

LABEL_33:
      if (v8)
      {
        if (v8 == 2)
        {
          v22 = *(a4 + 16);
        }

        else
        {
          v22 = a4;
        }
      }

      else
      {
        v22 = 0;
      }

      if (v17 >= (8 * v14))
      {
        v17 = 8 * v14;
      }

      v23 = v22 + v17;
      if (!__OFADD__(v22, v17))
      {
        if (v23 >= v22)
        {
          if (v22 != v23)
          {
            v24 = result;
            sub_2655FE2CC();
            result = v24;
          }

          goto LABEL_44;
        }

        goto LABEL_48;
      }

LABEL_47:
      __break(1u);
LABEL_48:
      __break(1u);
      goto LABEL_49;
    }

LABEL_44:
    *(result + 16) = v14;
    return result;
  }

  if (!v8)
  {
    v17 = BYTE6(a5);
    if (!BYTE6(a5))
    {
      goto LABEL_44;
    }

    goto LABEL_33;
  }

  LODWORD(v17) = HIDWORD(a4) - a4;
  if (!__OFSUB__(HIDWORD(a4), a4))
  {
    v17 = v17;
    if (v17 >= 1)
    {
      goto LABEL_33;
    }

    goto LABEL_44;
  }

LABEL_50:
  __break(1u);
  return result;
}

uint64_t sub_2655FC984(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v10 = MEMORY[0x277D84F90];
    sub_2655F37A0(0, v1, 0);
    v2 = v10;
    v4 = (a1 + 32);
    do
    {
      v8 = *v4;
      swift_dynamicCast();
      v10 = v2;
      v6 = *(v2 + 16);
      v5 = *(v2 + 24);
      if (v6 >= v5 >> 1)
      {
        sub_2655F37A0((v5 > 1), v6 + 1, 1);
        v2 = v10;
      }

      *(v2 + 16) = v6 + 1;
      sub_2655F3B14(&v9, (v2 + 32 * v6 + 32));
      ++v4;
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t sub_2655FCA80(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v10 = MEMORY[0x277D84F90];
    sub_2655F37A0(0, v1, 0);
    v2 = v10;
    v4 = (a1 + 32);
    do
    {
      v8 = *v4;
      swift_dynamicCast();
      v10 = v2;
      v6 = *(v2 + 16);
      v5 = *(v2 + 24);
      if (v6 >= v5 >> 1)
      {
        sub_2655F37A0((v5 > 1), v6 + 1, 1);
        v2 = v10;
      }

      *(v2 + 16) = v6 + 1;
      sub_2655F3B14(&v9, (v2 + 32 * v6 + 32));
      ++v4;
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t sub_2655FCB7C(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v10 = MEMORY[0x277D84F90];
    sub_2655F37A0(0, v1, 0);
    v2 = v10;
    v4 = (a1 + 32);
    do
    {
      v8 = *v4;
      swift_dynamicCast();
      v10 = v2;
      v6 = *(v2 + 16);
      v5 = *(v2 + 24);
      if (v6 >= v5 >> 1)
      {
        sub_2655F37A0((v5 > 1), v6 + 1, 1);
        v2 = v10;
      }

      *(v2 + 16) = v6 + 1;
      sub_2655F3B14(&v9, (v2 + 32 * v6 + 32));
      ++v4;
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t sub_2655FCC78(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v10 = MEMORY[0x277D84F90];
    sub_2655F37A0(0, v1, 0);
    v2 = v10;
    v4 = (a1 + 32);
    do
    {
      v5 = *v4++;
      swift_dynamicCast();
      v10 = v2;
      v7 = *(v2 + 16);
      v6 = *(v2 + 24);
      if (v7 >= v6 >> 1)
      {
        sub_2655F37A0((v6 > 1), v7 + 1, 1);
        v2 = v10;
      }

      *(v2 + 16) = v7 + 1;
      sub_2655F3B14(&v9, (v2 + 32 * v7 + 32));
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t sub_2655FCD6C(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v10 = MEMORY[0x277D84F90];
    sub_2655F37A0(0, v1, 0);
    v2 = v10;
    v4 = (a1 + 32);
    do
    {
      v5 = *v4++;
      swift_dynamicCast();
      v10 = v2;
      v7 = *(v2 + 16);
      v6 = *(v2 + 24);
      if (v7 >= v6 >> 1)
      {
        sub_2655F37A0((v6 > 1), v7 + 1, 1);
        v2 = v10;
      }

      *(v2 + 16) = v7 + 1;
      sub_2655F3B14(&v9, (v2 + 32 * v7 + 32));
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t sub_2655FCE60(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v10 = MEMORY[0x277D84F90];
    sub_2655F37A0(0, v1, 0);
    v2 = v10;
    v4 = (a1 + 32);
    do
    {
      v5 = *v4++;
      swift_dynamicCast();
      v10 = v2;
      v7 = *(v2 + 16);
      v6 = *(v2 + 24);
      if (v7 >= v6 >> 1)
      {
        sub_2655F37A0((v6 > 1), v7 + 1, 1);
        v2 = v10;
      }

      *(v2 + 16) = v7 + 1;
      sub_2655F3B14(&v9, (v2 + 32 * v7 + 32));
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t sub_2655FCF54(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v10 = MEMORY[0x277D84F90];
    sub_2655F37A0(0, v1, 0);
    v2 = v10;
    v4 = (a1 + 32);
    do
    {
      v5 = *v4++;
      swift_dynamicCast();
      v10 = v2;
      v7 = *(v2 + 16);
      v6 = *(v2 + 24);
      if (v7 >= v6 >> 1)
      {
        sub_2655F37A0((v6 > 1), v7 + 1, 1);
        v2 = v10;
      }

      *(v2 + 16) = v7 + 1;
      sub_2655F3B14(&v9, (v2 + 32 * v7 + 32));
      --v1;
    }

    while (v1);
  }

  return v2;
}

char *sub_2655FD048(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6)
{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 3);
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = *(a4 + 2);
  if (v9 <= v10)
  {
    v11 = *(a4 + 2);
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v12 = swift_allocObject();
    v13 = _swift_stdlib_malloc_size(v12);
    v14 = v13 - 32;
    if (v13 < 32)
    {
      v14 = v13 - 25;
    }

    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * (v14 >> 3);
  }

  else
  {
    v12 = MEMORY[0x277D84F90];
  }

  v15 = v12 + 32;
  v16 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v15 >= &v16[8 * v10])
    {
      memmove(v15, v16, 8 * v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v15, v16, 8 * v10);
  }

  return v12;
}

char *sub_2655FD144(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6)
{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 3);
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = *(a4 + 2);
  if (v9 <= v10)
  {
    v11 = *(a4 + 2);
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v12 = swift_allocObject();
    v13 = _swift_stdlib_malloc_size(v12);
    v14 = v13 - 32;
    if (v13 < 32)
    {
      v14 = v13 - 29;
    }

    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * (v14 >> 2);
  }

  else
  {
    v12 = MEMORY[0x277D84F90];
  }

  v15 = v12 + 32;
  v16 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v15 >= &v16[4 * v10])
    {
      memmove(v15, v16, 4 * v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v15, v16, 4 * v10);
  }

  return v12;
}

char *sub_2655FD240(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6)
{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 3);
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = *(a4 + 2);
  if (v9 <= v10)
  {
    v11 = *(a4 + 2);
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v12 = swift_allocObject();
    v13 = _swift_stdlib_malloc_size(v12);
    *(v12 + 2) = v10;
    *(v12 + 3) = (v13 - 32 + ((v13 - 32) >> 63)) & 0xFFFFFFFFFFFFFFFELL;
  }

  else
  {
    v12 = MEMORY[0x277D84F90];
  }

  v14 = v12 + 32;
  v15 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v14 >= &v15[2 * v10])
    {
      memmove(v14, v15, 2 * v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v14, v15, 2 * v10);
  }

  return v12;
}

char *sub_2655FD334(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6)
{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 3);
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = *(a4 + 2);
  if (v9 <= v10)
  {
    v11 = *(a4 + 2);
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v12 = swift_allocObject();
    v13 = _swift_stdlib_malloc_size(v12);
    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * v13 - 64;
  }

  else
  {
    v12 = MEMORY[0x277D84F90];
  }

  v14 = v12 + 32;
  v15 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v14 >= &v15[v10])
    {
      memmove(v14, v15, v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v14, v15, v10);
  }

  return v12;
}

uint64_t getEnumTagSinglePayload for FormatError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for FormatError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_2655FD574()
{
  result = qword_280018868;
  if (!qword_280018868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280018868);
  }

  return result;
}

uint64_t sub_2655FD5C8(uint64_t result, unint64_t a2)
{
  v3 = result;
  v4 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v4)
    {
      v5 = BYTE6(a2);
      goto LABEL_10;
    }

    goto LABEL_8;
  }

  if (v4 != 2)
  {
LABEL_15:
    __break(1u);
    return result;
  }

  v6 = *(result + 16);
  v7 = *(result + 24);
  v8 = __OFSUB__(v7, v6);
  v5 = v7 - v6;
  if (v8)
  {
    __break(1u);
LABEL_8:
    LODWORD(v5) = HIDWORD(result) - result;
    if (__OFSUB__(HIDWORD(result), result))
    {
      __break(1u);
      goto LABEL_15;
    }

    v5 = v5;
  }

LABEL_10:
  if (v5 != 16)
  {
    goto LABEL_15;
  }

  sub_2655FE2BC();
  sub_2655FE2BC();
  sub_2655FE2BC();
  sub_2655FE2BC();
  sub_2655FE2BC();
  sub_2655FE2BC();
  sub_2655FE2BC();
  sub_2655FE2BC();
  sub_2655FE2BC();
  sub_2655FE2BC();
  sub_2655FE2BC();
  sub_2655FE2BC();
  sub_2655FE2BC();
  sub_2655FE2BC();
  sub_2655FE2BC();
  sub_2655FE2BC();
  sub_2655FE32C();

  return sub_2655F3C6C(v3, a2);
}

uint64_t SRStreamBlock.init(binaryRep:)(uint64_t a1, unint64_t a2)
{
  v5 = sub_2655FE38C();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = type metadata accessor for StreamBlock(0);
  v8 = *(*(v7 - 8) + 64);
  result = MEMORY[0x28223BE20](v7);
  v11 = &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v12 != 2)
    {
      goto LABEL_30;
    }

    v14 = *(a1 + 16);
    v13 = *(a1 + 24);
    v15 = __OFSUB__(v13, v14);
    v16 = v13 - v14;
    if (v15)
    {
      goto LABEL_38;
    }

    if (v16 <= 3)
    {
      goto LABEL_30;
    }
  }

  else if (v12)
  {
    if (__OFSUB__(HIDWORD(a1), a1))
    {
LABEL_39:
      __break(1u);
      goto LABEL_40;
    }

    if (HIDWORD(a1) - a1 <= 3)
    {
      goto LABEL_30;
    }
  }

  else if (BYTE6(a2) <= 3uLL)
  {
    goto LABEL_30;
  }

  if (v12 == 2)
  {
    v23 = *(a1 + 16);
    v24 = sub_2655FE26C();
    if (!v24)
    {
LABEL_45:
      sub_2655FE27C();
      goto LABEL_46;
    }

    v25 = v24;
    v26 = sub_2655FE28C();
    if (__OFSUB__(v23, v26))
    {
      goto LABEL_41;
    }

    v27 = (v23 - v26 + v25);
    result = sub_2655FE27C();
    if (!v27)
    {
LABEL_46:
      __break(1u);
      goto LABEL_47;
    }

    v29 = *(a1 + 16);
    v28 = *(a1 + 24);
    v15 = __OFSUB__(v28, v29);
    v21 = v28 - v29;
    if (v15)
    {
      goto LABEL_43;
    }

    v22 = *v27;
  }

  else if (v12 == 1)
  {
    if (a1 > a1 >> 32)
    {
LABEL_40:
      __break(1u);
LABEL_41:
      __break(1u);
LABEL_42:
      __break(1u);
LABEL_43:
      __break(1u);
LABEL_44:
      __break(1u);
      goto LABEL_45;
    }

    v17 = sub_2655FE26C();
    if (!v17)
    {
LABEL_47:
      result = sub_2655FE27C();
      goto LABEL_48;
    }

    v18 = v17;
    v19 = sub_2655FE28C();
    if (__OFSUB__(a1, v19))
    {
      goto LABEL_42;
    }

    v20 = (a1 - v19 + v18);
    result = sub_2655FE27C();
    if (!v20)
    {
LABEL_48:
      __break(1u);
LABEL_49:
      __break(1u);
      return result;
    }

    LODWORD(v21) = HIDWORD(a1) - a1;
    if (__OFSUB__(HIDWORD(a1), a1))
    {
      goto LABEL_44;
    }

    v22 = *v20;
    v21 = v21;
  }

  else
  {
    v21 = BYTE6(a2);
    v22 = a1;
  }

  v30 = __CFADD__(v22, 4);
  v31 = v22 + 4;
  if (v30)
  {
    __break(1u);
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  if (v21 == v31)
  {
    if (v12 == 2)
    {
      v32 = *(a1 + 16);
      v33 = *(a1 + 24);
    }

    else if (v12 == 1)
    {
      v32 = a1;
      v33 = a1 >> 32;
    }

    else
    {
      v32 = 0;
      v33 = BYTE6(a2);
    }

    if (v33 >= 4 && v33 >= v32)
    {
      sub_2655FE2AC();
      v42 = 0;
      v40 = 0u;
      v41 = 0u;
      sub_2655FE37C();
      sub_2655FDE34();
      sub_2655FE45C();
      sub_2655FDE8C(v11, v2 + OBJC_IVAR____TtC16SensorKitSupport13SRStreamBlock_streamBlock);
      v36 = type metadata accessor for SRStreamBlock();
      v39.receiver = v2;
      v39.super_class = v36;
      v37 = objc_msgSendSuper2(&v39, sel_init);
      sub_2655F3C6C(a1, a2);
      return v37;
    }

    goto LABEL_49;
  }

LABEL_30:
  sub_2655F3C6C(a1, a2);
  type metadata accessor for SRStreamBlock();
  v34 = *((*MEMORY[0x277D85000] & *v2) + 0x30);
  v35 = *((*MEMORY[0x277D85000] & *v2) + 0x34);
  swift_deallocPartialClassInstance();
  return 0;
}

uint64_t type metadata accessor for SRStreamBlock()
{
  result = qword_280018870;
  if (!qword_280018870)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2655FDCF8()
{
  sub_2655F1478();
  v0 = sub_2655FE52C();

  return v0;
}

id SRStreamBlock.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id SRStreamBlock.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SRStreamBlock();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_2655FDE34()
{
  result = qword_280018790;
  if (!qword_280018790)
  {
    type metadata accessor for StreamBlock(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280018790);
  }

  return result;
}

uint64_t sub_2655FDE8C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StreamBlock(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2655FDEF8()
{
  result = type metadata accessor for StreamBlock(319);
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_2655FDFE8(uint64_t a1)
{
  v2 = type metadata accessor for StreamBlock(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}