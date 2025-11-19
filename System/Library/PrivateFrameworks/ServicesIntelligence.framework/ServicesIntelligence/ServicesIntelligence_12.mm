uint64_t sub_230DF33B4(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 12383 && a2 == 0xE200000000000000;
  if (v3 || (sub_230E698C0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 12639 && a2 == 0xE200000000000000 || (sub_230E698C0() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 12895 && a2 == 0xE200000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_230E698C0();

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

uint64_t sub_230DF34C8(void *a1)
{
  v2 = v1;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5D6C0, &qword_230E7E9A0);
  v39 = *(v41 - 8);
  v4 = *(v39 + 64);
  MEMORY[0x28223BE20](v41, v5);
  v7 = &v37 - v6;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5D6C8, &qword_230E7E9A8);
  v38 = *(v40 - 8);
  v8 = *(v38 + 64);
  MEMORY[0x28223BE20](v40, v9);
  v11 = &v37 - v10;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5D6D0, &unk_230E7E9B0);
  v12 = *(v42 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v42, v14);
  v16 = &v37 - v15;
  v17 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_230DFAA70();
  sub_230E69A50();
  v18 = v2[5];
  v50[4] = v2[4];
  v50[5] = v18;
  v51[0] = v2[6];
  *(v51 + 9) = *(v2 + 105);
  v19 = v2[1];
  v50[0] = *v2;
  v50[1] = v19;
  v20 = v2[3];
  v50[2] = v2[2];
  v50[3] = v20;
  LODWORD(a1) = sub_230DFABFC(v50);
  v21 = (v12 + 8);
  v22 = sub_230D0519C(v50);
  v23 = v22;
  if (a1 == 1)
  {
    v25 = *v22;
    v24 = *(v22 + 1);
    LOBYTE(v43) = 1;
    sub_230DFAAC4();
    v26 = v42;
    sub_230E697A0();
    v27 = v41;
    sub_230E69810();
    (*(v39 + 8))(v7, v27);
    return (*v21)(v16, v26);
  }

  else
  {
    LOBYTE(v43) = 0;
    sub_230DFAB38();
    v29 = v42;
    sub_230E697A0();
    v30 = *v23;
    v31 = v23[1];
    v32 = v23[3];
    v45 = v23[2];
    v46 = v32;
    v43 = v30;
    v44 = v31;
    v33 = v23[4];
    v34 = v23[5];
    v35 = v23[6];
    *(v49 + 9) = *(v23 + 105);
    v48 = v34;
    v49[0] = v35;
    v47 = v33;
    sub_230DFAC08();
    v36 = v40;
    sub_230E69850();
    (*(v38 + 8))(v11, v36);
    return (*v21)(v16, v29);
  }
}

uint64_t sub_230DF3864@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v52 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5D688, &qword_230E7E988);
  v4 = *(v3 - 8);
  v49 = v3;
  v50 = v4;
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3, v6);
  v8 = &v46 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5D690, &qword_230E7E990);
  v48 = *(v9 - 8);
  v10 = *(v48 + 8);
  MEMORY[0x28223BE20](v9, v11);
  v13 = &v46 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5D698, &qword_230E7E998);
  v51 = *(v14 - 8);
  v15 = *(v51 + 64);
  MEMORY[0x28223BE20](v14, v16);
  v18 = &v46 - v17;
  v19 = a1[3];
  v20 = a1[4];
  v79 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v19);
  sub_230DFAA70();
  v21 = v53;
  sub_230E69A30();
  if (!v21)
  {
    v47 = v9;
    v53 = 0;
    v22 = v8;
    v24 = v51;
    v23 = v52;
    v25 = v18;
    v26 = sub_230E69780();
    v27 = (2 * *(v26 + 16)) | 1;
    v75 = v26;
    v76 = v26 + 32;
    v77 = 0;
    v78 = v27;
    v28 = sub_230D089CC();
    if (v28 == 2 || v77 != v78 >> 1)
    {
      v34 = sub_230E69580();
      swift_allocError();
      v36 = v35;
      v37 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5A5D0, &qword_230E6A950) + 48);
      *v36 = &type metadata for ServicesIntelligenceXPCResult;
      sub_230E696A0();
      sub_230E69570();
      (*(*(v34 - 8) + 104))(v36, *MEMORY[0x277D84160], v34);
      swift_willThrow();
    }

    else if (v28)
    {
      LOBYTE(v61) = 1;
      sub_230DFAAC4();
      v29 = v53;
      sub_230E69690();
      if (!v29)
      {
        v30 = v23;
        v31 = v49;
        v48 = v22;
        v32 = sub_230E69720();
        v47 = v33;
        v53 = 0;
        v42 = v32;
        (*(v50 + 8))(v48, v31);
        (*(v24 + 8))(v18, v14);
        swift_unknownObjectRelease();
        *&v61 = v42;
        *(&v61 + 1) = v47;
        sub_230DFAB18(&v61);
        v72 = v65;
        v73 = v66;
        v74[0] = v67[0];
        *(v74 + 9) = *(v67 + 9);
        v68 = v61;
        v69 = v62;
        v70 = v63;
        v71 = v64;
LABEL_12:
        v43 = v73;
        v30[4] = v72;
        v30[5] = v43;
        v30[6] = v74[0];
        *(v30 + 105) = *(v74 + 9);
        v44 = v69;
        *v30 = v68;
        v30[1] = v44;
        v45 = v71;
        v30[2] = v70;
        v30[3] = v45;
        return __swift_destroy_boxed_opaque_existential_1(v79);
      }
    }

    else
    {
      LOBYTE(v61) = 0;
      sub_230DFAB38();
      v39 = v13;
      v40 = v53;
      sub_230E69690();
      if (!v40)
      {
        v30 = v23;
        sub_230DFAB8C();
        v41 = v47;
        sub_230E69760();
        (*(v48 + 1))(v39, v41);
        (*(v24 + 8))(v25, v14);
        swift_unknownObjectRelease();
        v58 = v65;
        v59 = v66;
        v60[0] = v67[0];
        *(v60 + 9) = *(v67 + 9);
        v54 = v61;
        v55 = v62;
        v56 = v63;
        v57 = v64;
        sub_230DFABE0(&v54);
        v72 = v58;
        v73 = v59;
        v74[0] = v60[0];
        *(v74 + 9) = *(v60 + 9);
        v68 = v54;
        v69 = v55;
        v70 = v56;
        v71 = v57;
        goto LABEL_12;
      }
    }

    (*(v24 + 8))(v25, v14);
    swift_unknownObjectRelease();
  }

  return __swift_destroy_boxed_opaque_existential_1(v79);
}

unint64_t sub_230DF3E68(char a1)
{
  result = 0x6F6C6C6568;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000014;
      break;
    case 2:
      result = 0x6E6F6973726576;
      break;
    case 3:
    case 14:
      result = 0xD000000000000011;
      break;
    case 4:
      result = 0x6572546863746566;
      break;
    case 5:
      result = 0x61436573556E7572;
      break;
    case 6:
      result = 0xD000000000000017;
      break;
    case 7:
      result = 0x74654D6873756C66;
      break;
    case 8:
      result = 0xD000000000000015;
      break;
    case 9:
      result = 0xD000000000000014;
      break;
    case 10:
    case 13:
      result = 0xD000000000000012;
      break;
    case 11:
    case 16:
    case 17:
      result = 0xD000000000000018;
      break;
    case 12:
      result = 0xD00000000000001ALL;
      break;
    case 15:
      result = 0x44564B6E49746573;
      break;
    case 18:
      result = 0xD000000000000014;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_230DF4070()
{
  if (*v0)
  {
    return 0x6572756C696166;
  }

  else
  {
    return 0x73736563637573;
  }
}

uint64_t sub_230DF40A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x73736563637573 && a2 == 0xE700000000000000;
  if (v6 || (sub_230E698C0() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6572756C696166 && a2 == 0xE700000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_230E698C0();

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

uint64_t sub_230DF4180(uint64_t a1)
{
  v2 = sub_230DFAA70();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_230DF41BC(uint64_t a1)
{
  v2 = sub_230DFAA70();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_230DF41F8(uint64_t a1)
{
  v2 = sub_230DFAAC4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_230DF4234(uint64_t a1)
{
  v2 = sub_230DFAAC4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_230DF4270(uint64_t a1)
{
  v2 = sub_230DFAB38();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_230DF42AC(uint64_t a1)
{
  v2 = sub_230DFAB38();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_230DF4320@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_230DFA484(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_230DF4348(uint64_t a1)
{
  v2 = sub_230DF610C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_230DF4384(uint64_t a1)
{
  v2 = sub_230DF610C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_230DF43C0(uint64_t a1)
{
  v2 = sub_230DF66C0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_230DF43FC(uint64_t a1)
{
  v2 = sub_230DF66C0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_230DF4438(uint64_t a1)
{
  v2 = sub_230DF62D0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_230DF4474(uint64_t a1)
{
  v2 = sub_230DF62D0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_230DF44B0(uint64_t a1)
{
  v2 = sub_230DF67BC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_230DF44EC(uint64_t a1)
{
  v2 = sub_230DF67BC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_230DF4528(uint64_t a1)
{
  v2 = sub_230DF6618();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_230DF4564(uint64_t a1)
{
  v2 = sub_230DF6618();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_230DF45A0(uint64_t a1)
{
  v2 = sub_230DF68B8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_230DF45DC(uint64_t a1)
{
  v2 = sub_230DF68B8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_230DF4618(uint64_t a1)
{
  v2 = sub_230DF6768();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_230DF4654(uint64_t a1)
{
  v2 = sub_230DF6768();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_230DF4690(uint64_t a1)
{
  v2 = sub_230DF6420();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_230DF46CC(uint64_t a1)
{
  v2 = sub_230DF6420();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_230DF4708(uint64_t a1)
{
  v2 = sub_230DF6A08();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_230DF4744(uint64_t a1)
{
  v2 = sub_230DF6A08();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_230DF4780(uint64_t a1)
{
  v2 = sub_230DF651C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_230DF47BC(uint64_t a1)
{
  v2 = sub_230DF651C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_230DF47F8(uint64_t a1)
{
  v2 = sub_230DF6228();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_230DF4834(uint64_t a1)
{
  v2 = sub_230DF6228();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_230DF4870(uint64_t a1)
{
  v2 = sub_230DF69B4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_230DF48AC(uint64_t a1)
{
  v2 = sub_230DF69B4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_230DF48E8(uint64_t a1)
{
  v2 = sub_230DF690C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_230DF4924(uint64_t a1)
{
  v2 = sub_230DF690C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_230DF4960(uint64_t a1)
{
  v2 = sub_230DF6864();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_230DF499C(uint64_t a1)
{
  v2 = sub_230DF6864();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_230DF49D8(uint64_t a1)
{
  v2 = sub_230DF6180();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_230DF4A14(uint64_t a1)
{
  v2 = sub_230DF6180();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_230DF4A50(uint64_t a1)
{
  v2 = sub_230DF6378();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_230DF4A8C(uint64_t a1)
{
  v2 = sub_230DF6378();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_230DF4AC8(uint64_t a1)
{
  v2 = sub_230DF64C8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_230DF4B04(uint64_t a1)
{
  v2 = sub_230DF64C8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_230DF4B40(uint64_t a1)
{
  v2 = sub_230DF6474();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_230DF4B7C(uint64_t a1)
{
  v2 = sub_230DF6474();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_230DF4BB8(uint64_t a1)
{
  v2 = sub_230DF6570();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_230DF4BF4(uint64_t a1)
{
  v2 = sub_230DF6570();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_230DF4C30(uint64_t a1)
{
  v2 = sub_230DF6960();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_230DF4C6C(uint64_t a1)
{
  v2 = sub_230DF6960();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ServicesIntelligenceXPCResponse.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5D230, &qword_230E7CC70);
  v187 = *(v4 - 8);
  *&v188 = v4;
  v5 = *(v187 + 64);
  MEMORY[0x28223BE20](v4, v6);
  v186 = &v134 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5D238, &qword_230E7CC78);
  v184 = *(v8 - 8);
  v185 = v8;
  v9 = *(v184 + 64);
  MEMORY[0x28223BE20](v8, v10);
  v183 = &v134 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5D240, &qword_230E7CC80);
  v181 = *(v12 - 8);
  v182 = v12;
  v13 = *(v181 + 64);
  MEMORY[0x28223BE20](v12, v14);
  v180 = &v134 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5D248, &qword_230E7CC88);
  v178 = *(v16 - 8);
  v179 = v16;
  v17 = *(v178 + 64);
  MEMORY[0x28223BE20](v16, v18);
  v176 = &v134 - v19;
  v177 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5D250, &qword_230E7CC90);
  v175 = *(v177 - 8);
  v20 = *(v175 + 64);
  MEMORY[0x28223BE20](v177, v21);
  v174 = &v134 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5D258, &qword_230E7CC98);
  v172 = *(v23 - 8);
  v173 = v23;
  v24 = *(v172 + 64);
  MEMORY[0x28223BE20](v23, v25);
  v171 = &v134 - v26;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5D260, &qword_230E7CCA0);
  v169 = *(v27 - 8);
  v170 = v27;
  v28 = *(v169 + 64);
  MEMORY[0x28223BE20](v27, v29);
  v168 = &v134 - v30;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5D268, &qword_230E7CCA8);
  v164 = *(v31 - 8);
  v165 = v31;
  v32 = *(v164 + 64);
  MEMORY[0x28223BE20](v31, v33);
  v162 = &v134 - v34;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5D270, &qword_230E7CCB0);
  v166 = *(v35 - 8);
  v167 = v35;
  v36 = *(v166 + 64);
  MEMORY[0x28223BE20](v35, v37);
  v163 = &v134 - v38;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5D278, &qword_230E7CCB8);
  v160 = *(v39 - 8);
  v161 = v39;
  v40 = *(v160 + 64);
  MEMORY[0x28223BE20](v39, v41);
  v159 = &v134 - v42;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5D280, &qword_230E7CCC0);
  v157 = *(v43 - 8);
  v158 = v43;
  v44 = *(v157 + 64);
  MEMORY[0x28223BE20](v43, v45);
  v156 = &v134 - v46;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5D288, &qword_230E7CCC8);
  v154 = *(v47 - 8);
  v155 = v47;
  v48 = *(v154 + 64);
  MEMORY[0x28223BE20](v47, v49);
  v152 = &v134 - v50;
  v153 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5D290, &qword_230E7CCD0);
  v151 = *(v153 - 8);
  v51 = *(v151 + 64);
  MEMORY[0x28223BE20](v153, v52);
  v149 = &v134 - v53;
  v150 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5D298, &qword_230E7CCD8);
  v148 = *(v150 - 8);
  v54 = *(v148 + 64);
  MEMORY[0x28223BE20](v150, v55);
  v147 = &v134 - v56;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5D2A0, &qword_230E7CCE0);
  v145 = *(v57 - 8);
  v146 = v57;
  v58 = *(v145 + 64);
  MEMORY[0x28223BE20](v57, v59);
  v144 = &v134 - v60;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5D2A8, &qword_230E7CCE8);
  v142 = *(v61 - 8);
  v143 = v61;
  v62 = *(v142 + 64);
  MEMORY[0x28223BE20](v61, v63);
  v141 = &v134 - v64;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5D2B0, &qword_230E7CCF0);
  v139 = *(v65 - 8);
  v140 = v65;
  v66 = *(v139 + 64);
  MEMORY[0x28223BE20](v65, v67);
  v138 = &v134 - v68;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5D2B8, &qword_230E7CCF8);
  v136 = *(v69 - 8);
  v137 = v69;
  v70 = *(v136 + 64);
  MEMORY[0x28223BE20](v69, v71);
  v73 = &v134 - v72;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5D2C0, &qword_230E7CD00);
  v135 = *(v74 - 8);
  v75 = *(v135 + 64);
  MEMORY[0x28223BE20](v74, v76);
  v78 = &v134 - v77;
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5D2C8, &qword_230E7CD08);
  v80 = *(v79 - 8);
  v190 = v79;
  v191 = v80;
  v81 = *(v80 + 64);
  MEMORY[0x28223BE20](v79, v82);
  v84 = &v134 - v83;
  v85 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_230DF610C();
  v189 = v84;
  sub_230E69A50();
  v86 = v2[5];
  v199[4] = v2[4];
  v199[5] = v86;
  v200[0] = v2[6];
  *(v200 + 9) = *(v2 + 105);
  v87 = v2[1];
  v199[0] = *v2;
  v199[1] = v87;
  v88 = v2[3];
  v199[2] = v2[2];
  v199[3] = v88;
  switch(sub_230DF6160(v199))
  {
    case 1u:
      v120 = *sub_230D04CA4(v199);
      LOBYTE(v192) = 1;
      sub_230DF69B4();
      v115 = v189;
      v114 = v190;
      sub_230E697A0();
      v121 = v137;
      sub_230E69820();
      (*(v136 + 8))(v73, v121);
      return (*(v191 + 8))(v115, v114);
    case 2u:
      v110 = sub_230D04CA4(v199);
      v111 = *v110;
      v112 = v110[1];
      LOBYTE(v192) = 2;
      sub_230DF6960();
      v113 = v138;
      v115 = v189;
      v114 = v190;
      sub_230E697A0();
      v116 = v140;
      sub_230E69810();
      (*(v139 + 8))(v113, v116);
      return (*(v191 + 8))(v115, v114);
    case 3u:
      v118 = *sub_230D04CA4(v199);
      LOBYTE(v192) = 3;
      sub_230DF690C();
      v101 = v141;
      v103 = v189;
      v102 = v190;
      sub_230E697A0();
      v104 = v143;
      sub_230E69820();
      v105 = v142;
      goto LABEL_23;
    case 4u:
      v107 = *sub_230D04CA4(v199);
      LOBYTE(v192) = 4;
      sub_230DF68B8();
      v101 = v144;
      v103 = v189;
      v102 = v190;
      sub_230E697A0();
      *&v192 = v107;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5D3A0, &qword_230E7CD18);
      sub_230DF8C80(&qword_281565F58, &qword_281566080);
      v104 = v146;
      sub_230E69850();
      v105 = v145;
      goto LABEL_23;
    case 5u:
      v122 = sub_230D04CA4(v199);
      LOBYTE(v192) = 5;
      sub_230DF6864();
      v101 = v147;
      v103 = v189;
      v102 = v190;
      sub_230E697A0();
      v123 = *v122;
      v124 = v122[1];
      v125 = v122[3];
      v194 = v122[2];
      v195 = v125;
      v192 = v123;
      v193 = v124;
      v126 = v122[4];
      v127 = v122[5];
      v128 = v122[6];
      *(v198 + 9) = *(v122 + 105);
      v197 = v127;
      v198[0] = v128;
      v196 = v126;
      sub_230DEA05C();
      v104 = v150;
      sub_230E69850();
      v105 = v148;
      goto LABEL_23;
    case 6u:
      v130 = sub_230D04CA4(v199);
      v188 = *v130;
      v131 = *(v130 + 16);
      LOBYTE(v192) = 6;
      sub_230DF67BC();
      v101 = v149;
      v103 = v189;
      v102 = v190;
      sub_230E697A0();
      v192 = v188;
      *&v193 = v131;
      sub_230DF6810();
      v104 = v153;
      sub_230E69850();
      v105 = v151;
      goto LABEL_23;
    case 7u:
      v119 = *sub_230D04CA4(v199);
      LOBYTE(v192) = 7;
      sub_230DF6768();
      v101 = v152;
      v103 = v189;
      v102 = v190;
      sub_230E697A0();
      v104 = v155;
      sub_230E69840();
      v105 = v154;
      goto LABEL_23;
    case 8u:
      v133 = *sub_230D04CA4(v199);
      LOBYTE(v192) = 8;
      sub_230DF66C0();
      v101 = v156;
      v103 = v189;
      v102 = v190;
      sub_230E697A0();
      *&v192 = v133;
      sub_230DF6714();
      v104 = v158;
      sub_230E69850();
      v105 = v157;
      goto LABEL_23;
    case 9u:
      v109 = *sub_230D04CA4(v199);
      LOBYTE(v192) = 9;
      sub_230DF6618();
      v101 = v159;
      v103 = v189;
      v102 = v190;
      sub_230E697A0();
      *&v192 = v109;
      sub_230DF666C();
      v104 = v161;
      sub_230E69850();
      v105 = v160;
      goto LABEL_23;
    case 0xAu:
      v132 = *sub_230D04CA4(v199);
      LOBYTE(v192) = 10;
      sub_230DF6570();
      v101 = v163;
      v103 = v189;
      v102 = v190;
      sub_230E697A0();
      *&v192 = v132;
      sub_230DF65C4();
      v104 = v167;
      sub_230E69850();
      v105 = v166;
      goto LABEL_23;
    case 0xBu:
      v106 = *sub_230D04CA4(v199);
      LOBYTE(v192) = 14;
      sub_230DF6420();
      v101 = v174;
      v103 = v189;
      v102 = v190;
      sub_230E697A0();
      *&v192 = v106;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5D320, &qword_230E7CD10);
      sub_230DF8974(&qword_27DB5D328);
      v104 = v177;
      sub_230E69850();
      v105 = v175;
      goto LABEL_23;
    case 0xCu:
      v108 = *sub_230D04CA4(v199);
      LOBYTE(v192) = 15;
      sub_230DF6378();
      v101 = v176;
      v103 = v189;
      v102 = v190;
      sub_230E697A0();
      *&v192 = v108;
      sub_230DF63CC();
      v104 = v179;
      sub_230E69850();
      v105 = v178;
      goto LABEL_23;
    case 0xDu:
      v129 = *sub_230D04CA4(v199);
      LOBYTE(v192) = 16;
      sub_230DF62D0();
      v101 = v180;
      v103 = v189;
      v102 = v190;
      sub_230E697A0();
      *&v192 = v129;
      sub_230DF6324();
      v104 = v182;
      sub_230E69850();
      v105 = v181;
      goto LABEL_23;
    case 0xEu:
      v100 = *sub_230D04CA4(v199);
      LOBYTE(v192) = 17;
      sub_230DF6228();
      v101 = v183;
      v103 = v189;
      v102 = v190;
      sub_230E697A0();
      *&v192 = v100;
      sub_230DF627C();
      v104 = v185;
      sub_230E69850();
      v105 = v184;
      goto LABEL_23;
    case 0xFu:
      v117 = *sub_230D04CA4(v199);
      LOBYTE(v192) = 18;
      sub_230DF6180();
      v101 = v186;
      v103 = v189;
      v102 = v190;
      sub_230E697A0();
      *&v192 = v117;
      sub_230DF61D4();
      v104 = v188;
      sub_230E69850();
      v105 = v187;
LABEL_23:
      (*(v105 + 8))(v101, v104);
      return (*(v191 + 8))(v103, v102);
    case 0x10u:
      LOBYTE(v192) = 11;
      sub_230DF651C();
      v95 = v162;
      v96 = v189;
      v97 = v190;
      sub_230E697A0();
      v99 = v164;
      v98 = v165;
      goto LABEL_20;
    case 0x11u:
      LOBYTE(v192) = 12;
      sub_230DF64C8();
      v95 = v168;
      v96 = v189;
      v97 = v190;
      sub_230E697A0();
      v99 = v169;
      v98 = v170;
      goto LABEL_20;
    case 0x12u:
      LOBYTE(v192) = 13;
      sub_230DF6474();
      v95 = v171;
      v96 = v189;
      v97 = v190;
      sub_230E697A0();
      v99 = v172;
      v98 = v173;
LABEL_20:
      (*(v99 + 8))(v95, v98);
      result = (*(v191 + 8))(v96, v97);
      break;
    default:
      v89 = sub_230D04CA4(v199);
      v90 = *v89;
      v91 = v89[1];
      LOBYTE(v192) = 0;
      sub_230DF6A08();
      v93 = v189;
      v92 = v190;
      sub_230E697A0();
      sub_230E69810();
      (*(v135 + 8))(v78, v74);
      result = (*(v191 + 8))(v93, v92);
      break;
  }

  return result;
}

unint64_t sub_230DF610C()
{
  result = qword_27DB5D2D0;
  if (!qword_27DB5D2D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5D2D0);
  }

  return result;
}

uint64_t sub_230DF6160(uint64_t a1)
{
  v1 = *(a1 + 120);
  v2 = v1;
  v3 = v1 >> 3;
  if (v2 >= 0)
  {
    return v3;
  }

  else
  {
    return (*a1 + 16);
  }
}

unint64_t sub_230DF6180()
{
  result = qword_27DB5D2D8;
  if (!qword_27DB5D2D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5D2D8);
  }

  return result;
}

unint64_t sub_230DF61D4()
{
  result = qword_27DB5D2E0;
  if (!qword_27DB5D2E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5D2E0);
  }

  return result;
}

unint64_t sub_230DF6228()
{
  result = qword_27DB5D2E8;
  if (!qword_27DB5D2E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5D2E8);
  }

  return result;
}

unint64_t sub_230DF627C()
{
  result = qword_27DB5D2F0;
  if (!qword_27DB5D2F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5D2F0);
  }

  return result;
}

unint64_t sub_230DF62D0()
{
  result = qword_27DB5D2F8;
  if (!qword_27DB5D2F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5D2F8);
  }

  return result;
}

unint64_t sub_230DF6324()
{
  result = qword_27DB5D300;
  if (!qword_27DB5D300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5D300);
  }

  return result;
}

unint64_t sub_230DF6378()
{
  result = qword_27DB5D308;
  if (!qword_27DB5D308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5D308);
  }

  return result;
}

unint64_t sub_230DF63CC()
{
  result = qword_27DB5D310;
  if (!qword_27DB5D310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5D310);
  }

  return result;
}

unint64_t sub_230DF6420()
{
  result = qword_27DB5D318;
  if (!qword_27DB5D318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5D318);
  }

  return result;
}

unint64_t sub_230DF6474()
{
  result = qword_27DB5D330;
  if (!qword_27DB5D330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5D330);
  }

  return result;
}

unint64_t sub_230DF64C8()
{
  result = qword_27DB5D338;
  if (!qword_27DB5D338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5D338);
  }

  return result;
}

unint64_t sub_230DF651C()
{
  result = qword_27DB5D340;
  if (!qword_27DB5D340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5D340);
  }

  return result;
}

unint64_t sub_230DF6570()
{
  result = qword_27DB5D348;
  if (!qword_27DB5D348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5D348);
  }

  return result;
}

unint64_t sub_230DF65C4()
{
  result = qword_27DB5D350;
  if (!qword_27DB5D350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5D350);
  }

  return result;
}

unint64_t sub_230DF6618()
{
  result = qword_27DB5D358;
  if (!qword_27DB5D358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5D358);
  }

  return result;
}

unint64_t sub_230DF666C()
{
  result = qword_27DB5D360;
  if (!qword_27DB5D360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5D360);
  }

  return result;
}

unint64_t sub_230DF66C0()
{
  result = qword_27DB5D368;
  if (!qword_27DB5D368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5D368);
  }

  return result;
}

unint64_t sub_230DF6714()
{
  result = qword_27DB5D370;
  if (!qword_27DB5D370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5D370);
  }

  return result;
}

unint64_t sub_230DF6768()
{
  result = qword_27DB5D378;
  if (!qword_27DB5D378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5D378);
  }

  return result;
}

unint64_t sub_230DF67BC()
{
  result = qword_27DB5D380;
  if (!qword_27DB5D380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5D380);
  }

  return result;
}

unint64_t sub_230DF6810()
{
  result = qword_27DB5D388;
  if (!qword_27DB5D388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5D388);
  }

  return result;
}

unint64_t sub_230DF6864()
{
  result = qword_27DB5D390;
  if (!qword_27DB5D390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5D390);
  }

  return result;
}

unint64_t sub_230DF68B8()
{
  result = qword_27DB5D398;
  if (!qword_27DB5D398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5D398);
  }

  return result;
}

unint64_t sub_230DF690C()
{
  result = qword_27DB5D3A8;
  if (!qword_27DB5D3A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5D3A8);
  }

  return result;
}

unint64_t sub_230DF6960()
{
  result = qword_27DB5D3B0;
  if (!qword_27DB5D3B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5D3B0);
  }

  return result;
}

unint64_t sub_230DF69B4()
{
  result = qword_27DB5D3B8;
  if (!qword_27DB5D3B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5D3B8);
  }

  return result;
}

unint64_t sub_230DF6A08()
{
  result = qword_27DB5D3C0;
  if (!qword_27DB5D3C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5D3C0);
  }

  return result;
}

uint64_t ServicesIntelligenceXPCResponse.init(from:)@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v244 = a2;
  v222 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5D3C8, &qword_230E7CD20);
  v224 = *(v222 - 8);
  v3 = *(v224 + 64);
  MEMORY[0x28223BE20](v222, v4);
  v238 = &v184 - v5;
  v223 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5D3D0, &qword_230E7CD28);
  v243 = *(v223 - 8);
  v6 = *(v243 + 64);
  MEMORY[0x28223BE20](v223, v7);
  v242 = &v184 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5D3D8, &qword_230E7CD30);
  v220 = *(v9 - 8);
  v221 = v9;
  v10 = *(v220 + 64);
  MEMORY[0x28223BE20](v9, v11);
  v237 = &v184 - v12;
  v219 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5D3E0, &qword_230E7CD38);
  v217 = *(v219 - 8);
  v13 = *(v217 + 64);
  MEMORY[0x28223BE20](v219, v14);
  v236 = &v184 - v15;
  v218 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5D3E8, &qword_230E7CD40);
  v216 = *(v218 - 8);
  v16 = *(v216 + 64);
  MEMORY[0x28223BE20](v218, v17);
  v235 = &v184 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5D3F0, &qword_230E7CD48);
  v214 = *(v19 - 8);
  v215 = v19;
  v20 = *(v214 + 64);
  MEMORY[0x28223BE20](v19, v21);
  v234 = &v184 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5D3F8, &qword_230E7CD50);
  v212 = *(v23 - 8);
  v213 = v23;
  v24 = *(v212 + 64);
  MEMORY[0x28223BE20](v23, v25);
  v233 = &v184 - v26;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5D400, &qword_230E7CD58);
  v209 = *(v27 - 8);
  v210 = v27;
  v28 = *(v209 + 64);
  MEMORY[0x28223BE20](v27, v29);
  v231 = &v184 - v30;
  v211 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5D408, &qword_230E7CD60);
  v208 = *(v211 - 8);
  v31 = *(v208 + 64);
  MEMORY[0x28223BE20](v211, v32);
  v232 = &v184 - v33;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5D410, &qword_230E7CD68);
  v206 = *(v34 - 8);
  v207 = v34;
  v35 = *(v206 + 64);
  MEMORY[0x28223BE20](v34, v36);
  v230 = &v184 - v37;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5D418, &qword_230E7CD70);
  v204 = *(v38 - 8);
  v205 = v38;
  v39 = *(v204 + 64);
  MEMORY[0x28223BE20](v38, v40);
  v229 = &v184 - v41;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5D420, &qword_230E7CD78);
  v202 = *(v42 - 8);
  v203 = v42;
  v43 = *(v202 + 64);
  MEMORY[0x28223BE20](v42, v44);
  v228 = &v184 - v45;
  v196 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5D428, &qword_230E7CD80);
  v201 = *(v196 - 8);
  v46 = *(v201 + 64);
  MEMORY[0x28223BE20](v196, v47);
  v225 = &v184 - v48;
  v200 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5D430, &qword_230E7CD88);
  v198 = *(v200 - 8);
  v49 = *(v198 + 64);
  MEMORY[0x28223BE20](v200, v50);
  v227 = &v184 - v51;
  v199 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5D438, &qword_230E7CD90);
  v197 = *(v199 - 8);
  v52 = *(v197 + 64);
  MEMORY[0x28223BE20](v199, v53);
  v226 = &v184 - v54;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5D440, &qword_230E7CD98);
  v194 = *(v55 - 8);
  v195 = v55;
  v56 = *(v194 + 64);
  MEMORY[0x28223BE20](v55, v57);
  v241 = &v184 - v58;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5D448, &qword_230E7CDA0);
  v192 = *(v59 - 8);
  v193 = v59;
  v60 = *(v192 + 64);
  MEMORY[0x28223BE20](v59, v61);
  v240 = &v184 - v62;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5D450, &qword_230E7CDA8);
  v190 = *(v63 - 8);
  v191 = v63;
  v64 = *(v190 + 64);
  MEMORY[0x28223BE20](v63, v65);
  v67 = &v184 - v66;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5D458, &qword_230E7CDB0);
  v189 = *(v68 - 8);
  v69 = *(v189 + 64);
  MEMORY[0x28223BE20](v68, v70);
  v72 = &v184 - v71;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5D460, &unk_230E7CDB8);
  v239 = *(v73 - 8);
  v74 = *(v239 + 64);
  MEMORY[0x28223BE20](v73, v75);
  v77 = &v184 - v76;
  v78 = a1[3];
  v79 = a1[4];
  v245 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v78);
  sub_230DF610C();
  v80 = v271;
  sub_230E69A30();
  v271 = v80;
  if (!v80)
  {
    v185 = v68;
    v186 = v72;
    v187 = v67;
    v188 = v73;
    v81 = v240;
    v82 = v241;
    v84 = v242;
    v83 = v243;
    v85 = v244;
    v86 = sub_230E69780();
    v87 = (2 * *(v86 + 16)) | 1;
    v267 = v86;
    v268 = v86 + 32;
    v269 = 0;
    v270 = v87;
    v88 = sub_230D089D0();
    if (v269 == v270 >> 1)
    {
      switch(v88)
      {
        case 0:
          LOBYTE(v253) = 0;
          sub_230DF6A08();
          v89 = v186;
          v90 = v77;
          v91 = v188;
          v92 = v271;
          sub_230E69690();
          v271 = v92;
          if (v92)
          {
            goto LABEL_7;
          }

          v93 = v90;
          v94 = v185;
          v95 = sub_230E69720();
          v96 = v239;
          v271 = 0;
          v177 = v95;
          v179 = v178;
          (*(v189 + 8))(v89, v94);
          (*(v96 + 8))(v93, v188);
          swift_unknownObjectRelease();
          *&v253 = v177;
          *(&v253 + 1) = v179;
          sub_230DF8DCC(&v253);
          goto LABEL_69;
        case 1:
          LOBYTE(v253) = 1;
          sub_230DF69B4();
          v137 = v187;
          v121 = v188;
          v138 = v271;
          sub_230E69690();
          v271 = v138;
          if (v138)
          {
            goto LABEL_48;
          }

          v139 = v191;
          v140 = sub_230E69730();
          v141 = (v239 + 8);
          v271 = 0;
          v180 = v140;
          (*(v190 + 8))(v137, v139);
          (*v141)(v77, v121);
          swift_unknownObjectRelease();
          LOBYTE(v253) = v180 & 1;
          sub_230DF8DAC(&v253);
          goto LABEL_69;
        case 2:
          LOBYTE(v253) = 2;
          sub_230DF6960();
          v121 = v188;
          v122 = v271;
          sub_230E69690();
          v271 = v122;
          if (v122)
          {
            goto LABEL_48;
          }

          v123 = v193;
          v124 = sub_230E69720();
          v125 = v239;
          v271 = 0;
          v172 = v124;
          v173 = v81;
          v175 = v174;
          (*(v192 + 8))(v173, v123);
          (*(v125 + 8))(v77, v121);
          swift_unknownObjectRelease();
          *&v253 = v172;
          *(&v253 + 1) = v175;
          sub_230DF8D8C(&v253);
          goto LABEL_69;
        case 3:
          LOBYTE(v253) = 3;
          sub_230DF690C();
          v128 = v82;
          v121 = v188;
          v129 = v271;
          sub_230E69690();
          v271 = v129;
          if (v129)
          {
            goto LABEL_48;
          }

          v130 = v195;
          v131 = sub_230E69730();
          v132 = (v239 + 8);
          v271 = 0;
          v133 = v131;
          (*(v194 + 8))(v128, v130);
          (*v132)(v77, v121);
          swift_unknownObjectRelease();
          LOBYTE(v253) = v133 & 1;
          sub_230DF8D6C(&v253);
          goto LABEL_69;
        case 4:
          LOBYTE(v253) = 4;
          sub_230DF68B8();
          v104 = v226;
          v105 = v188;
          v115 = v271;
          sub_230E69690();
          v271 = v115;
          if (v115)
          {
            goto LABEL_56;
          }

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5D3A0, &qword_230E7CD18);
          sub_230DF8C80(&qword_27DB5D4B0, &qword_27DB5D4B8);
          v107 = v199;
          v116 = v271;
          sub_230E69760();
          v109 = (v197 + 8);
          v110 = (v239 + 8);
          v271 = v116;
          if (v116)
          {
            goto LABEL_61;
          }

          (*v109)(v104, v107);
          (*v110)(v77, v105);
          swift_unknownObjectRelease();
          *&v253 = v246;
          sub_230DF8D4C(&v253);
          goto LABEL_69;
        case 5:
          LOBYTE(v253) = 5;
          sub_230DF6864();
          v104 = v227;
          v105 = v188;
          v148 = v271;
          sub_230E69690();
          v271 = v148;
          if (v148)
          {
            goto LABEL_56;
          }

          sub_230DE9E38();
          v107 = v200;
          v149 = v271;
          sub_230E69760();
          v109 = (v198 + 8);
          v110 = (v239 + 8);
          v271 = v149;
          if (v149)
          {
            goto LABEL_61;
          }

          (*v109)(v104, v107);
          (*v110)(v77, v105);
          swift_unknownObjectRelease();
          v250 = v257;
          v251 = v258;
          v252[0] = v259[0];
          *(v252 + 9) = *(v259 + 9);
          v246 = v253;
          v247 = v254;
          v248 = v255;
          v249 = v256;
          sub_230DF8C60(&v246);
          v264 = v250;
          v265 = v251;
          v266[0] = v252[0];
          *(v266 + 9) = *(v252 + 9);
          v260 = v246;
          v261 = v247;
          v150 = v248;
          v151 = v249;
          goto LABEL_70;
        case 6:
          LOBYTE(v253) = 6;
          sub_230DF67BC();
          v154 = v225;
          v121 = v188;
          v155 = v271;
          sub_230E69690();
          v271 = v155;
          if (v155)
          {
LABEL_48:
            (*(v239 + 8))(v77, v121);
            break;
          }

          sub_230DF8BEC();
          v167 = v196;
          v168 = v271;
          sub_230E69760();
          v169 = (v201 + 8);
          v170 = (v239 + 8);
          v271 = v168;
          if (v168)
          {
            (*v169)(v154, v167);
            (*v170)(v77, v121);
            break;
          }

          (*v169)(v154, v167);
          (*v170)(v77, v121);
          swift_unknownObjectRelease();
          v253 = v246;
          *&v254 = v247;
          sub_230DF8C40(&v253);
          goto LABEL_69;
        case 7:
          LOBYTE(v253) = 7;
          sub_230DF6768();
          v134 = v228;
          v135 = v188;
          v136 = v271;
          sub_230E69690();
          v271 = v136;
          if (v136)
          {
            (*(v239 + 8))(v77, v135);
            break;
          }

          v164 = v203;
          v165 = sub_230E69750();
          v166 = (v239 + 8);
          v271 = 0;
          v176 = v165;
          (*(v202 + 8))(v134, v164);
          (*v166)(v77, v135);
          swift_unknownObjectRelease();
          *&v253 = v176;
          sub_230DF8BCC(&v253);
          goto LABEL_69;
        case 8:
          LOBYTE(v253) = 8;
          sub_230DF66C0();
          v104 = v229;
          v105 = v188;
          v163 = v271;
          sub_230E69690();
          v271 = v163;
          if (v163)
          {
            goto LABEL_56;
          }

          sub_230DF8B58();
          v107 = v205;
          v171 = v271;
          sub_230E69760();
          v109 = (v204 + 8);
          v110 = (v239 + 8);
          v271 = v171;
          if (v171)
          {
            goto LABEL_61;
          }

          (*v109)(v104, v107);
          (*v110)(v77, v105);
          swift_unknownObjectRelease();
          *&v253 = v246;
          sub_230DF8BAC(&v253);
          goto LABEL_69;
        case 9:
          LOBYTE(v253) = 9;
          sub_230DF6618();
          v104 = v230;
          v105 = v188;
          v119 = v271;
          sub_230E69690();
          v271 = v119;
          if (v119)
          {
            goto LABEL_56;
          }

          sub_230DF8AE4();
          v107 = v207;
          v120 = v271;
          sub_230E69760();
          v109 = (v206 + 8);
          v110 = (v239 + 8);
          v271 = v120;
          if (v120)
          {
            goto LABEL_61;
          }

          (*v109)(v104, v107);
          (*v110)(v77, v105);
          swift_unknownObjectRelease();
          *&v253 = v246;
          sub_230DF8B38(&v253);
          goto LABEL_69;
        case 10:
          LOBYTE(v253) = 10;
          sub_230DF6570();
          v104 = v232;
          v105 = v188;
          v161 = v271;
          sub_230E69690();
          v271 = v161;
          if (v161)
          {
            goto LABEL_56;
          }

          sub_230DF8A70();
          v107 = v211;
          v162 = v271;
          sub_230E69760();
          v109 = (v208 + 8);
          v110 = (v239 + 8);
          v271 = v162;
          if (v162)
          {
            goto LABEL_61;
          }

          (*v109)(v104, v107);
          (*v110)(v77, v105);
          swift_unknownObjectRelease();
          *&v253 = v246;
          sub_230DF8AC4(&v253);
          goto LABEL_69;
        case 11:
          LOBYTE(v253) = 11;
          sub_230DF651C();
          v113 = v231;
          v105 = v188;
          v114 = v271;
          sub_230E69690();
          v271 = v114;
          if (v114)
          {
            goto LABEL_56;
          }

          (*(v209 + 8))(v113, v210);
          (*(v239 + 8))(v77, v105);
          swift_unknownObjectRelease();
          sub_230DF8A4C(&v260);
          goto LABEL_46;
        case 12:
          LOBYTE(v253) = 12;
          sub_230DF64C8();
          v117 = v233;
          v105 = v188;
          v118 = v271;
          sub_230E69690();
          v271 = v118;
          if (v118)
          {
            goto LABEL_56;
          }

          (*(v212 + 8))(v117, v213);
          (*(v239 + 8))(v77, v105);
          swift_unknownObjectRelease();
          sub_230DF8A18(&v260);
          goto LABEL_46;
        case 13:
          LOBYTE(v253) = 13;
          sub_230DF6474();
          v152 = v234;
          v105 = v188;
          v153 = v271;
          sub_230E69690();
          v271 = v153;
          if (v153)
          {
            goto LABEL_56;
          }

          (*(v214 + 8))(v152, v215);
          (*(v239 + 8))(v77, v105);
          swift_unknownObjectRelease();
          sub_230DF89E4(&v260);
LABEL_46:
          v102 = v245;
          goto LABEL_71;
        case 14:
          LOBYTE(v253) = 14;
          sub_230DF6420();
          v104 = v235;
          v105 = v188;
          v111 = v271;
          sub_230E69690();
          v271 = v111;
          if (v111)
          {
            goto LABEL_56;
          }

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5D320, &qword_230E7CD10);
          sub_230DF8974(&qword_27DB5D488);
          v107 = v218;
          v112 = v271;
          sub_230E69760();
          v109 = (v216 + 8);
          v110 = (v239 + 8);
          v271 = v112;
          if (v112)
          {
            goto LABEL_61;
          }

          (*v109)(v104, v107);
          (*v110)(v77, v105);
          swift_unknownObjectRelease();
          *&v253 = v246;
          sub_230DF89C4(&v253);
          goto LABEL_69;
        case 15:
          LOBYTE(v253) = 15;
          sub_230DF6378();
          v104 = v236;
          v105 = v188;
          v126 = v271;
          sub_230E69690();
          v271 = v126;
          if (v126)
          {
            goto LABEL_56;
          }

          sub_230DF8900();
          v107 = v219;
          v127 = v271;
          sub_230E69760();
          v109 = (v217 + 8);
          v110 = (v239 + 8);
          v271 = v127;
          if (v127)
          {
            goto LABEL_61;
          }

          (*v109)(v104, v107);
          (*v110)(v77, v105);
          swift_unknownObjectRelease();
          *&v253 = v246;
          sub_230DF8954(&v253);
          goto LABEL_69;
        case 16:
          LOBYTE(v253) = 16;
          sub_230DF62D0();
          v104 = v237;
          v105 = v188;
          v106 = v271;
          sub_230E69690();
          v271 = v106;
          if (v106)
          {
            goto LABEL_56;
          }

          sub_230DF888C();
          v107 = v221;
          v108 = v271;
          sub_230E69760();
          v109 = (v220 + 8);
          v110 = (v239 + 8);
          v271 = v108;
          if (!v108)
          {
            (*v109)(v104, v107);
            (*v110)(v77, v105);
            swift_unknownObjectRelease();
            *&v253 = v246;
            sub_230DF88E0(&v253);
            goto LABEL_69;
          }

LABEL_61:
          v146 = *v109;
          v147 = v104;
          goto LABEL_62;
        case 17:
          v142 = v83;
          LOBYTE(v253) = 17;
          sub_230DF6228();
          v105 = v188;
          v143 = v271;
          sub_230E69690();
          v271 = v143;
          if (v143)
          {
            goto LABEL_56;
          }

          sub_230DF8818();
          v107 = v223;
          v144 = v271;
          sub_230E69760();
          v145 = (v142 + 8);
          v110 = (v239 + 8);
          v271 = v144;
          if (!v144)
          {
            (*v145)(v84, v107);
            (*v110)(v77, v105);
            swift_unknownObjectRelease();
            *&v253 = v246;
            sub_230DF886C(&v253);
            goto LABEL_69;
          }

          v146 = *v145;
          v147 = v84;
LABEL_62:
          v146(v147, v107);
          goto LABEL_63;
        case 18:
          LOBYTE(v253) = 18;
          sub_230DF6180();
          v156 = v238;
          v105 = v188;
          v157 = v271;
          sub_230E69690();
          v271 = v157;
          if (v157)
          {
LABEL_56:
            (*(v239 + 8))(v77, v105);
            break;
          }

          sub_230DF87A4();
          v158 = v222;
          v159 = v271;
          sub_230E69760();
          v160 = (v224 + 8);
          v110 = (v239 + 8);
          v271 = v159;
          if (!v159)
          {
            (*v160)(v156, v158);
            (*v110)(v77, v105);
            swift_unknownObjectRelease();
            *&v253 = v246;
            sub_230DF87F8(&v253);
LABEL_69:
            v264 = v257;
            v265 = v258;
            v266[0] = v259[0];
            *(v266 + 9) = *(v259 + 9);
            v260 = v253;
            v261 = v254;
            v150 = v255;
            v151 = v256;
LABEL_70:
            v262 = v150;
            v263 = v151;
            v102 = v245;
LABEL_71:
            v181 = v265;
            v85[4] = v264;
            v85[5] = v181;
            v85[6] = v266[0];
            *(v85 + 105) = *(v266 + 9);
            v182 = v261;
            *v85 = v260;
            v85[1] = v182;
            v183 = v263;
            v85[2] = v262;
            v85[3] = v183;
            return __swift_destroy_boxed_opaque_existential_1(v102);
          }

          (*v160)(v156, v158);
LABEL_63:
          (*v110)(v77, v105);
          break;
        default:
          goto LABEL_6;
      }
    }

    else
    {
LABEL_6:
      v97 = sub_230E69580();
      v98 = swift_allocError();
      v100 = v99;
      v101 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5A5D0, &qword_230E6A950) + 48);
      *v100 = &type metadata for ServicesIntelligenceXPCResponse;
      v90 = v77;
      v91 = v188;
      sub_230E696A0();
      sub_230E69570();
      (*(*(v97 - 8) + 104))(v100, *MEMORY[0x277D84160], v97);
      v271 = v98;
      swift_willThrow();
LABEL_7:
      (*(v239 + 8))(v90, v91);
    }

    swift_unknownObjectRelease();
  }

  v102 = v245;
  return __swift_destroy_boxed_opaque_existential_1(v102);
}

unint64_t sub_230DF87A4()
{
  result = qword_27DB5D468;
  if (!qword_27DB5D468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5D468);
  }

  return result;
}

uint64_t sub_230DF87F8(uint64_t result)
{
  v1 = *(result + 120);
  *(result + 104) &= 1uLL;
  *(result + 120) = v1 & 1 | 0x78;
  return result;
}

unint64_t sub_230DF8818()
{
  result = qword_27DB5D470;
  if (!qword_27DB5D470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5D470);
  }

  return result;
}

uint64_t sub_230DF886C(uint64_t result)
{
  v1 = *(result + 120);
  *(result + 104) &= 1uLL;
  *(result + 120) = v1 & 1 | 0x70;
  return result;
}

unint64_t sub_230DF888C()
{
  result = qword_27DB5D478;
  if (!qword_27DB5D478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5D478);
  }

  return result;
}

uint64_t sub_230DF88E0(uint64_t result)
{
  v1 = *(result + 120);
  *(result + 104) &= 1uLL;
  *(result + 120) = v1 & 1 | 0x68;
  return result;
}

unint64_t sub_230DF8900()
{
  result = qword_27DB5D480;
  if (!qword_27DB5D480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5D480);
  }

  return result;
}

uint64_t sub_230DF8954(uint64_t result)
{
  v1 = *(result + 120);
  *(result + 104) &= 1uLL;
  *(result + 120) = v1 & 1 | 0x60;
  return result;
}

uint64_t sub_230DF8974(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DB5D320, &qword_230E7CD10);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_230DF89C4(uint64_t result)
{
  v1 = *(result + 120);
  *(result + 104) &= 1uLL;
  *(result + 120) = v1 & 1 | 0x58;
  return result;
}

double sub_230DF89E4(uint64_t a1)
{
  *a1 = 2;
  result = 0.0;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0x80;
  return result;
}

double sub_230DF8A18(uint64_t a1)
{
  *a1 = 1;
  result = 0.0;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0x80;
  return result;
}

double sub_230DF8A4C(uint64_t a1)
{
  *(a1 + 112) = 0;
  result = 0.0;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  *(a1 + 120) = 0x80;
  return result;
}

unint64_t sub_230DF8A70()
{
  result = qword_27DB5D490;
  if (!qword_27DB5D490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5D490);
  }

  return result;
}

uint64_t sub_230DF8AC4(uint64_t result)
{
  v1 = *(result + 120);
  *(result + 104) &= 1uLL;
  *(result + 120) = v1 & 1 | 0x50;
  return result;
}

unint64_t sub_230DF8AE4()
{
  result = qword_27DB5D498;
  if (!qword_27DB5D498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5D498);
  }

  return result;
}

uint64_t sub_230DF8B38(uint64_t result)
{
  v1 = *(result + 120);
  *(result + 104) &= 1uLL;
  *(result + 120) = v1 & 1 | 0x48;
  return result;
}

unint64_t sub_230DF8B58()
{
  result = qword_27DB5D4A0;
  if (!qword_27DB5D4A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5D4A0);
  }

  return result;
}

uint64_t sub_230DF8BAC(uint64_t result)
{
  v1 = *(result + 120);
  *(result + 104) &= 1uLL;
  *(result + 120) = v1 & 1 | 0x40;
  return result;
}

uint64_t sub_230DF8BCC(uint64_t result)
{
  v1 = *(result + 120);
  *(result + 104) &= 1uLL;
  *(result + 120) = v1 & 1 | 0x38;
  return result;
}

unint64_t sub_230DF8BEC()
{
  result = qword_27DB5D4A8;
  if (!qword_27DB5D4A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5D4A8);
  }

  return result;
}

uint64_t sub_230DF8C40(uint64_t result)
{
  v1 = *(result + 120);
  *(result + 104) &= 1uLL;
  *(result + 120) = v1 & 1 | 0x30;
  return result;
}

uint64_t sub_230DF8C60(uint64_t result)
{
  v1 = *(result + 120);
  *(result + 104) &= 1uLL;
  *(result + 120) = v1 & 1 | 0x28;
  return result;
}

uint64_t sub_230DF8C80(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DB5D3A0, &qword_230E7CD18);
    sub_230DF8D08(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_230DF8D08(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for Treatment();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_230DF8D4C(uint64_t result)
{
  v1 = *(result + 120);
  *(result + 104) &= 1uLL;
  *(result + 120) = v1 & 1 | 0x20;
  return result;
}

uint64_t sub_230DF8D6C(uint64_t result)
{
  v1 = *(result + 120);
  *(result + 104) &= 1uLL;
  *(result + 120) = v1 & 1 | 0x18;
  return result;
}

uint64_t sub_230DF8D8C(uint64_t result)
{
  v1 = *(result + 120);
  *(result + 104) &= 1uLL;
  *(result + 120) = v1 & 1 | 0x10;
  return result;
}

uint64_t sub_230DF8DAC(uint64_t result)
{
  v1 = *(result + 120);
  *(result + 104) &= 1uLL;
  *(result + 120) = v1 & 1 | 8;
  return result;
}

uint64_t sub_230DF8DCC(uint64_t result)
{
  v1 = *(result + 120) & 1;
  *(result + 104) &= 1uLL;
  *(result + 120) = v1;
  return result;
}

uint64_t get_enum_tag_for_layout_string_20ServicesIntelligence0aB11XPCResponseO(uint64_t a1)
{
  v1 = *(a1 + 120);
  v2 = v1;
  v3 = v1 >> 3;
  if (v2 >= 0)
  {
    return v3;
  }

  else
  {
    return (*a1 + 16);
  }
}

uint64_t sub_230DF8E38(uint64_t result, unsigned int a2)
{
  if (a2 < 0x10)
  {
    v2 = *(result + 120) & 1 | (8 * a2);
    *(result + 104) &= 1uLL;
    *(result + 120) = v2;
  }

  else
  {
    *result = a2 - 16;
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *(result + 40) = 0u;
    *(result + 56) = 0u;
    *(result + 72) = 0u;
    *(result + 88) = 0u;
    *(result + 104) = 0u;
    *(result + 120) = 0x80;
  }

  return result;
}

uint64_t sub_230DF8EAC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 121))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 104) >> 1;
  if (v2 > 0x80000000)
  {
    v3 = ~v2;
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

double sub_230DF8EFC(uint64_t a1, int a2, int a3)
{
  if (a2 < 0)
  {
    result = 0.0;
    *(a1 + 104) = 0u;
    *(a1 + 88) = 0u;
    *(a1 + 72) = 0u;
    *(a1 + 56) = 0u;
    *(a1 + 40) = 0u;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *(a1 + 120) = 0;
    *a1 = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(a1 + 121) = 1;
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
      result = 0.0;
      *(a1 + 64) = 0u;
      *(a1 + 80) = 0u;
      *(a1 + 32) = 0u;
      *(a1 + 48) = 0u;
      *a1 = 0u;
      *(a1 + 16) = 0u;
      *(a1 + 96) = 0;
      *(a1 + 104) = 2 * -a2;
      *(a1 + 112) = 0;
      *(a1 + 120) = 0;
      return result;
    }

    *(a1 + 121) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_230DF8F78(uint64_t result, char a2)
{
  v2 = *(result + 120) & 0xF9 | (4 * (a2 & 1));
  *(result + 104) &= 1uLL;
  *(result + 120) = v2;
  return result;
}

unint64_t sub_230DF90F0()
{
  result = qword_27DB5D4C0;
  if (!qword_27DB5D4C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5D4C0);
  }

  return result;
}

unint64_t sub_230DF9148()
{
  result = qword_27DB5D4C8;
  if (!qword_27DB5D4C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5D4C8);
  }

  return result;
}

unint64_t sub_230DF91A0()
{
  result = qword_27DB5D4D0;
  if (!qword_27DB5D4D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5D4D0);
  }

  return result;
}

unint64_t sub_230DF91F8()
{
  result = qword_27DB5D4D8;
  if (!qword_27DB5D4D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5D4D8);
  }

  return result;
}

unint64_t sub_230DF9250()
{
  result = qword_27DB5D4E0;
  if (!qword_27DB5D4E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5D4E0);
  }

  return result;
}

unint64_t sub_230DF92A8()
{
  result = qword_27DB5D4E8;
  if (!qword_27DB5D4E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5D4E8);
  }

  return result;
}

unint64_t sub_230DF9300()
{
  result = qword_27DB5D4F0;
  if (!qword_27DB5D4F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5D4F0);
  }

  return result;
}

unint64_t sub_230DF9358()
{
  result = qword_27DB5D4F8;
  if (!qword_27DB5D4F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5D4F8);
  }

  return result;
}

unint64_t sub_230DF93B0()
{
  result = qword_27DB5D500;
  if (!qword_27DB5D500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5D500);
  }

  return result;
}

unint64_t sub_230DF9408()
{
  result = qword_27DB5D508;
  if (!qword_27DB5D508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5D508);
  }

  return result;
}

unint64_t sub_230DF9460()
{
  result = qword_27DB5D510;
  if (!qword_27DB5D510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5D510);
  }

  return result;
}

unint64_t sub_230DF94B8()
{
  result = qword_27DB5D518;
  if (!qword_27DB5D518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5D518);
  }

  return result;
}

unint64_t sub_230DF9510()
{
  result = qword_27DB5D520;
  if (!qword_27DB5D520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5D520);
  }

  return result;
}

unint64_t sub_230DF9568()
{
  result = qword_27DB5D528;
  if (!qword_27DB5D528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5D528);
  }

  return result;
}

unint64_t sub_230DF95C0()
{
  result = qword_27DB5D530;
  if (!qword_27DB5D530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5D530);
  }

  return result;
}

unint64_t sub_230DF9618()
{
  result = qword_27DB5D538;
  if (!qword_27DB5D538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5D538);
  }

  return result;
}

unint64_t sub_230DF9670()
{
  result = qword_27DB5D540;
  if (!qword_27DB5D540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5D540);
  }

  return result;
}

unint64_t sub_230DF96C8()
{
  result = qword_27DB5D548;
  if (!qword_27DB5D548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5D548);
  }

  return result;
}

unint64_t sub_230DF9720()
{
  result = qword_27DB5D550;
  if (!qword_27DB5D550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5D550);
  }

  return result;
}

unint64_t sub_230DF9778()
{
  result = qword_27DB5D558;
  if (!qword_27DB5D558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5D558);
  }

  return result;
}

unint64_t sub_230DF97D0()
{
  result = qword_27DB5D560;
  if (!qword_27DB5D560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5D560);
  }

  return result;
}

unint64_t sub_230DF9828()
{
  result = qword_27DB5D568;
  if (!qword_27DB5D568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5D568);
  }

  return result;
}

unint64_t sub_230DF9880()
{
  result = qword_27DB5D570;
  if (!qword_27DB5D570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5D570);
  }

  return result;
}

unint64_t sub_230DF98D8()
{
  result = qword_27DB5D578;
  if (!qword_27DB5D578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5D578);
  }

  return result;
}

unint64_t sub_230DF9930()
{
  result = qword_27DB5D580;
  if (!qword_27DB5D580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5D580);
  }

  return result;
}

unint64_t sub_230DF9988()
{
  result = qword_27DB5D588;
  if (!qword_27DB5D588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5D588);
  }

  return result;
}

unint64_t sub_230DF99E0()
{
  result = qword_27DB5D590;
  if (!qword_27DB5D590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5D590);
  }

  return result;
}

unint64_t sub_230DF9A38()
{
  result = qword_27DB5D598;
  if (!qword_27DB5D598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5D598);
  }

  return result;
}

unint64_t sub_230DF9A90()
{
  result = qword_27DB5D5A0;
  if (!qword_27DB5D5A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5D5A0);
  }

  return result;
}

unint64_t sub_230DF9AE8()
{
  result = qword_27DB5D5A8;
  if (!qword_27DB5D5A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5D5A8);
  }

  return result;
}

unint64_t sub_230DF9B40()
{
  result = qword_27DB5D5B0;
  if (!qword_27DB5D5B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5D5B0);
  }

  return result;
}

unint64_t sub_230DF9B98()
{
  result = qword_27DB5D5B8;
  if (!qword_27DB5D5B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5D5B8);
  }

  return result;
}

unint64_t sub_230DF9BF0()
{
  result = qword_27DB5D5C0;
  if (!qword_27DB5D5C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5D5C0);
  }

  return result;
}

unint64_t sub_230DF9C48()
{
  result = qword_27DB5D5C8;
  if (!qword_27DB5D5C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5D5C8);
  }

  return result;
}

unint64_t sub_230DF9CA0()
{
  result = qword_27DB5D5D0;
  if (!qword_27DB5D5D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5D5D0);
  }

  return result;
}

unint64_t sub_230DF9CF8()
{
  result = qword_27DB5D5D8;
  if (!qword_27DB5D5D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5D5D8);
  }

  return result;
}

unint64_t sub_230DF9D50()
{
  result = qword_27DB5D5E0;
  if (!qword_27DB5D5E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5D5E0);
  }

  return result;
}

unint64_t sub_230DF9DA8()
{
  result = qword_27DB5D5E8;
  if (!qword_27DB5D5E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5D5E8);
  }

  return result;
}

unint64_t sub_230DF9E00()
{
  result = qword_27DB5D5F0;
  if (!qword_27DB5D5F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5D5F0);
  }

  return result;
}

unint64_t sub_230DF9E58()
{
  result = qword_27DB5D5F8;
  if (!qword_27DB5D5F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5D5F8);
  }

  return result;
}

unint64_t sub_230DF9EB0()
{
  result = qword_27DB5D600;
  if (!qword_27DB5D600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5D600);
  }

  return result;
}

unint64_t sub_230DF9F08()
{
  result = qword_27DB5D608;
  if (!qword_27DB5D608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5D608);
  }

  return result;
}

unint64_t sub_230DF9F60()
{
  result = qword_27DB5D610;
  if (!qword_27DB5D610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5D610);
  }

  return result;
}

unint64_t sub_230DF9FB8()
{
  result = qword_27DB5D618;
  if (!qword_27DB5D618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5D618);
  }

  return result;
}

unint64_t sub_230DFA010()
{
  result = qword_27DB5D620;
  if (!qword_27DB5D620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5D620);
  }

  return result;
}

unint64_t sub_230DFA068()
{
  result = qword_27DB5D628;
  if (!qword_27DB5D628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5D628);
  }

  return result;
}

unint64_t sub_230DFA0C0()
{
  result = qword_27DB5D630;
  if (!qword_27DB5D630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5D630);
  }

  return result;
}

unint64_t sub_230DFA118()
{
  result = qword_27DB5D638;
  if (!qword_27DB5D638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5D638);
  }

  return result;
}

unint64_t sub_230DFA170()
{
  result = qword_27DB5D640;
  if (!qword_27DB5D640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5D640);
  }

  return result;
}

unint64_t sub_230DFA1C8()
{
  result = qword_27DB5D648;
  if (!qword_27DB5D648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5D648);
  }

  return result;
}

unint64_t sub_230DFA220()
{
  result = qword_27DB5D650;
  if (!qword_27DB5D650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5D650);
  }

  return result;
}

unint64_t sub_230DFA278()
{
  result = qword_27DB5D658;
  if (!qword_27DB5D658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5D658);
  }

  return result;
}

unint64_t sub_230DFA2D0()
{
  result = qword_27DB5D660;
  if (!qword_27DB5D660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5D660);
  }

  return result;
}

unint64_t sub_230DFA328()
{
  result = qword_27DB5D668;
  if (!qword_27DB5D668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5D668);
  }

  return result;
}

unint64_t sub_230DFA380()
{
  result = qword_27DB5D670;
  if (!qword_27DB5D670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5D670);
  }

  return result;
}

unint64_t sub_230DFA3D8()
{
  result = qword_27DB5D678;
  if (!qword_27DB5D678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5D678);
  }

  return result;
}

unint64_t sub_230DFA430()
{
  result = qword_27DB5D680;
  if (!qword_27DB5D680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5D680);
  }

  return result;
}

uint64_t sub_230DFA484(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6F6C6C6568 && a2 == 0xE500000000000000;
  if (v4 || (sub_230E698C0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000014 && 0x8000000230E80650 == a2 || (sub_230E698C0() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6E6F6973726576 && a2 == 0xE700000000000000 || (sub_230E698C0() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000011 && 0x8000000230E80780 == a2 || (sub_230E698C0() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6572546863746566 && a2 == 0xEF73746E656D7461 || (sub_230E698C0() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x61436573556E7572 && a2 == 0xEA00000000006573 || (sub_230E698C0() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000017 && 0x8000000230E84450 == a2 || (sub_230E698C0() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x74654D6873756C66 && a2 == 0xEC00000073636972 || (sub_230E698C0() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD000000000000015 && 0x8000000230E80450 == a2 || (sub_230E698C0() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0xD000000000000014 && 0x8000000230E80470 == a2 || (sub_230E698C0() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0xD000000000000012 && 0x8000000230E84470 == a2 || (sub_230E698C0() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0xD000000000000018 && 0x8000000230E80870 == a2 || (sub_230E698C0() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0xD00000000000001ALL && 0x8000000230E80910 == a2 || (sub_230E698C0() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0xD000000000000012 && 0x8000000230E808F0 == a2 || (sub_230E698C0() & 1) != 0)
  {

    return 13;
  }

  else if (a1 == 0xD000000000000011 && 0x8000000230E80500 == a2 || (sub_230E698C0() & 1) != 0)
  {

    return 14;
  }

  else if (a1 == 0x44564B6E49746573 && a2 == 0xEF65736162617461 || (sub_230E698C0() & 1) != 0)
  {

    return 15;
  }

  else if (a1 == 0xD000000000000018 && 0x8000000230E80550 == a2 || (sub_230E698C0() & 1) != 0)
  {

    return 16;
  }

  else if (a1 == 0xD000000000000018 && 0x8000000230E80570 == a2 || (sub_230E698C0() & 1) != 0)
  {

    return 17;
  }

  else if (a1 == 0xD000000000000014 && 0x8000000230E80590 == a2)
  {

    return 18;
  }

  else
  {
    v6 = sub_230E698C0();

    if (v6)
    {
      return 18;
    }

    else
    {
      return 19;
    }
  }
}

unint64_t sub_230DFAA70()
{
  result = qword_27DB5D6A0;
  if (!qword_27DB5D6A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5D6A0);
  }

  return result;
}

unint64_t sub_230DFAAC4()
{
  result = qword_27DB5D6A8;
  if (!qword_27DB5D6A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5D6A8);
  }

  return result;
}

uint64_t sub_230DFAB18(uint64_t result)
{
  v1 = *(result + 120) & 0xF9 | 4;
  *(result + 104) &= 1uLL;
  *(result + 120) = v1;
  return result;
}

unint64_t sub_230DFAB38()
{
  result = qword_27DB5D6B0;
  if (!qword_27DB5D6B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5D6B0);
  }

  return result;
}

unint64_t sub_230DFAB8C()
{
  result = qword_27DB5D6B8;
  if (!qword_27DB5D6B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5D6B8);
  }

  return result;
}

uint64_t sub_230DFABE0(uint64_t result)
{
  v1 = *(result + 120) & 0xF9;
  *(result + 104) &= 1uLL;
  *(result + 120) = v1;
  return result;
}

unint64_t sub_230DFAC08()
{
  result = qword_27DB5D6D8;
  if (!qword_27DB5D6D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5D6D8);
  }

  return result;
}

unint64_t sub_230DFAC90()
{
  result = qword_27DB5D6E0;
  if (!qword_27DB5D6E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5D6E0);
  }

  return result;
}

unint64_t sub_230DFACE8()
{
  result = qword_27DB5D6E8;
  if (!qword_27DB5D6E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5D6E8);
  }

  return result;
}

unint64_t sub_230DFAD40()
{
  result = qword_27DB5D6F0;
  if (!qword_27DB5D6F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5D6F0);
  }

  return result;
}

unint64_t sub_230DFAD98()
{
  result = qword_27DB5D6F8;
  if (!qword_27DB5D6F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5D6F8);
  }

  return result;
}

unint64_t sub_230DFADF0()
{
  result = qword_27DB5D700;
  if (!qword_27DB5D700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5D700);
  }

  return result;
}

unint64_t sub_230DFAE48()
{
  result = qword_27DB5D708;
  if (!qword_27DB5D708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5D708);
  }

  return result;
}

unint64_t sub_230DFAEA0()
{
  result = qword_27DB5D710;
  if (!qword_27DB5D710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5D710);
  }

  return result;
}

unint64_t sub_230DFAEF8()
{
  result = qword_27DB5D718;
  if (!qword_27DB5D718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5D718);
  }

  return result;
}

unint64_t sub_230DFAF50()
{
  result = qword_27DB5D720;
  if (!qword_27DB5D720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5D720);
  }

  return result;
}

uint64_t ServicesIntelligenceXPC.Client.refreshConfiguration()()
{
  sub_230DF15CC(v0 + 16);
  v1 = *(v0 + 128);
  *(v0 + 256) = *(v0 + 112);
  *(v0 + 272) = v1;
  *(v0 + 281) = *(v0 + 137);
  v2 = *(v0 + 64);
  *(v0 + 192) = *(v0 + 48);
  *(v0 + 208) = v2;
  v3 = *(v0 + 96);
  *(v0 + 224) = *(v0 + 80);
  *(v0 + 240) = v3;
  v4 = *(v0 + 32);
  *(v0 + 160) = *(v0 + 16);
  *(v0 + 176) = v4;
  v5 = swift_task_alloc();
  *(v0 + 816) = v5;
  *v5 = v0;
  v5[1] = sub_230DFB078;

  return sub_230E01718(v0 + 304, (v0 + 160));
}

uint64_t sub_230DFB078()
{
  v2 = *(*v1 + 816);
  v5 = *v1;
  *(*v1 + 824) = v0;

  if (v0)
  {
    v3 = sub_230DFB330;
  }

  else
  {
    v3 = sub_230DFB18C;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_230DFB18C()
{
  v1 = *(v0 + 368);
  v2 = *(v0 + 384);
  *(v0 + 624) = v1;
  *(v0 + 640) = v2;
  v3 = *(v0 + 400);
  *(v0 + 656) = v3;
  v4 = *(v0 + 304);
  v5 = *(v0 + 320);
  *(v0 + 560) = v4;
  *(v0 + 576) = v5;
  v6 = *(v0 + 336);
  v7 = *(v0 + 352);
  *(v0 + 592) = v6;
  *(v0 + 608) = v7;
  v8 = *(v0 + 409);
  *(v0 + 665) = v8;
  *(v0 + 432) = v4;
  *(v0 + 448) = v5;
  *(v0 + 464) = v6;
  *(v0 + 480) = v7;
  *(v0 + 496) = v1;
  *(v0 + 512) = v2;
  *(v0 + 528) = v3;
  *(v0 + 537) = v8;
  if (sub_230DFABFC(v0 + 432) == 1)
  {
    v9 = sub_230D0519C(v0 + 432);
    v10 = *v9;
    v11 = v9[1];
    sub_230DFB34C();
    swift_allocError();
    *v12 = v10;
    v12[1] = v11;
    swift_willThrow();
  }

  else
  {
    v13 = sub_230D0519C(v0 + 432);
    v14 = v13[3];
    v16 = *v13;
    v15 = v13[1];
    *(v0 + 720) = v13[2];
    *(v0 + 736) = v14;
    *(v0 + 688) = v16;
    *(v0 + 704) = v15;
    v18 = v13[5];
    v17 = v13[6];
    v19 = v13[4];
    *(v0 + 793) = *(v13 + 105);
    *(v0 + 768) = v18;
    *(v0 + 784) = v17;
    *(v0 + 752) = v19;
    if (sub_230DF6160(v0 + 688) == 1)
    {
      v20 = *sub_230D04CA4(v0 + 688);
      sub_230DFB3A0(v0 + 560);
      v21 = *(v0 + 8);
      v22 = v20;
      goto LABEL_7;
    }

    sub_230DFB34C();
    swift_allocError();
    *v23 = xmmword_230E6E730;
    swift_willThrow();
    sub_230DFB3A0(v0 + 560);
  }

  v21 = *(v0 + 8);
  v22 = 0;
LABEL_7:

  return v21(v22);
}

unint64_t sub_230DFB34C()
{
  result = qword_27DB5D728;
  if (!qword_27DB5D728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5D728);
  }

  return result;
}

uint64_t ServicesIntelligenceXPC.Client.getFromKVDatabase<A>(domain:request:)(uint64_t a1, _BYTE *a2, _OWORD *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v7 + 1432) = v6;
  *(v7 + 1424) = a6;
  *(v7 + 1416) = a5;
  *(v7 + 1408) = a4;
  *(v7 + 1400) = a1;
  *(v7 + 153) = *a2;
  *(v7 + 1440) = *a3;

  return MEMORY[0x2822009F8](sub_230DFB484, 0, 0);
}

uint64_t sub_230DFB484()
{
  v1 = *(v0 + 1448);
  v2 = *(v0 + 1440);
  v3 = *(v0 + 1424);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5A6B0, &qword_230E72AC0);
  *(v0 + 1384) = v4;
  *(v0 + 1392) = sub_230D0ACD8();
  *(v0 + 1360) = v2;
  v5 = swift_task_alloc();
  *(v0 + 1456) = v5;
  *(v5 + 16) = *(v0 + 1408);
  *(v5 + 32) = v3;
  v6 = sub_230E68FA0();
  LOBYTE(v2) = *(v0 + 153);
  sub_230D0F12C(MEMORY[0x277D84F90]);
  v7 = __swift_project_boxed_opaque_existential_1((v0 + 1360), v4);
  v8 = *(v4 - 8);
  v9 = *(v8 + 64) + 15;
  v10 = swift_task_alloc();
  (*(v8 + 16))(v10, v7, v4);
  v11 = *v10;

  __swift_destroy_boxed_opaque_existential_1((v0 + 1360));

  *(v0 + 16) = v2;
  *(v0 + 24) = v11;
  *(v0 + 32) = v6;
  sub_230DF13A8(v0 + 16);
  v12 = *(v0 + 96);
  v13 = *(v0 + 128);
  *(v0 + 256) = *(v0 + 112);
  *(v0 + 272) = v13;
  *(v0 + 281) = *(v0 + 137);
  v14 = *(v0 + 32);
  v15 = *(v0 + 64);
  v16 = *(v0 + 80);
  *(v0 + 192) = *(v0 + 48);
  *(v0 + 208) = v15;
  *(v0 + 224) = v16;
  *(v0 + 240) = v12;
  *(v0 + 160) = *(v0 + 16);
  *(v0 + 176) = v14;
  v17 = swift_task_alloc();
  *(v0 + 1464) = v17;
  *v17 = v0;
  v17[1] = sub_230DFB73C;
  v18 = *(v0 + 1432);

  return sub_230E01718(v0 + 592, (v0 + 160));
}

uint64_t sub_230DFB73C()
{
  v2 = *v1;
  v3 = (*v1 + 160);
  v4 = *(*v1 + 1464);
  v19 = *v1;
  *(*v1 + 1472) = v0;

  if (v0)
  {
    v2[19] = *v3;
    v5 = v3[1];
    v6 = v3[2];
    v7 = v3[4];
    v2[22] = v3[3];
    v2[23] = v7;
    v2[20] = v5;
    v2[21] = v6;
    v8 = v3[5];
    v9 = v3[6];
    v10 = v3[7];
    *(v2 + 425) = *(v3 + 121);
    v2[25] = v9;
    v2[26] = v10;
    v2[24] = v8;
    sub_230DFC328((v2 + 19));
    v11 = sub_230DFBB78;
  }

  else
  {
    v2[28] = *v3;
    v12 = v3[1];
    v13 = v3[2];
    v14 = v3[4];
    v2[31] = v3[3];
    v2[32] = v14;
    v2[29] = v12;
    v2[30] = v13;
    v15 = v3[5];
    v16 = v3[6];
    v17 = v3[7];
    *(v2 + 569) = *(v3 + 121);
    v2[34] = v16;
    v2[35] = v17;
    v2[33] = v15;
    sub_230DFC328((v2 + 28));
    v11 = sub_230DFB8CC;
  }

  return MEMORY[0x2822009F8](v11, 0, 0);
}

uint64_t sub_230DFB8CC()
{
  v1 = *(v0 + 656);
  v2 = *(v0 + 672);
  *(v0 + 912) = v1;
  *(v0 + 928) = v2;
  v3 = *(v0 + 688);
  *(v0 + 944) = v3;
  v4 = *(v0 + 592);
  v5 = *(v0 + 608);
  *(v0 + 848) = v4;
  *(v0 + 864) = v5;
  v6 = *(v0 + 624);
  v7 = *(v0 + 640);
  *(v0 + 880) = v6;
  *(v0 + 896) = v7;
  v8 = *(v0 + 697);
  *(v0 + 953) = v8;
  *(v0 + 720) = v4;
  *(v0 + 736) = v5;
  *(v0 + 752) = v6;
  *(v0 + 768) = v7;
  *(v0 + 784) = v1;
  *(v0 + 800) = v2;
  *(v0 + 816) = v3;
  *(v0 + 825) = v8;
  if (sub_230DFABFC(v0 + 720) == 1)
  {
    v9 = *(v0 + 1456);
    v10 = sub_230D0519C(v0 + 720);
    v11 = *v10;
    v12 = v10[1];
    sub_230DFB34C();
    swift_allocError();
    *v13 = v11;
    v13[1] = v12;
    swift_willThrow();
  }

  else
  {
    v14 = sub_230D0519C(v0 + 720);
    v15 = v14[3];
    v17 = *v14;
    v16 = v14[1];
    *(v0 + 1008) = v14[2];
    *(v0 + 1024) = v15;
    *(v0 + 976) = v17;
    *(v0 + 992) = v16;
    v19 = v14[5];
    v18 = v14[6];
    v20 = v14[4];
    *(v0 + 1081) = *(v14 + 105);
    *(v0 + 1056) = v19;
    *(v0 + 1072) = v18;
    *(v0 + 1040) = v20;
    if (sub_230DF6160(v0 + 976) == 11)
    {
      v21 = *(v0 + 1472);
      v38 = *(v0 + 1456);
      v22 = *(v0 + 1424);
      v23 = *(v0 + 1416);
      v24 = *(v0 + 1408);
      v25 = *(v0 + 1400);
      v26 = *sub_230D04CA4(v0 + 976);
      v27 = swift_task_alloc();
      v27[2] = v24;
      v27[3] = v23;
      v27[4] = v22;
      v28 = *(v0 + 880);
      *(v0 + 1152) = *(v0 + 896);
      *(v0 + 1136) = v28;
      v29 = *(v0 + 848);
      *(v0 + 1120) = *(v0 + 864);
      *(v0 + 1104) = v29;
      *(v0 + 1209) = *(v0 + 953);
      v30 = *(v0 + 928);
      *(v0 + 1200) = *(v0 + 944);
      v31 = *(v0 + 912);
      *(v0 + 1184) = v30;
      *(v0 + 1168) = v31;
      v32 = sub_230D0519C(v0 + 1104);
      sub_230DFC39C(v32, v0 + 1232);
      v33 = sub_230E68F70();
      sub_230DFB3A0(v0 + 848);
      sub_230DFB3A0(v0 + 848);

      GetFromKVDatabaseResponse.init(records:)(v33, v25);

      v34 = *(v0 + 8);
      goto LABEL_7;
    }

    v35 = *(v0 + 1456);
    sub_230DFB34C();
    swift_allocError();
    *v36 = xmmword_230E6E730;
    swift_willThrow();
    sub_230DFB3A0(v0 + 848);
  }

  v34 = *(v0 + 8);
LABEL_7:

  return v34();
}

uint64_t sub_230DFBB78()
{
  v1 = v0[182];

  v2 = v0[184];
  v3 = v0[1];

  return v3();
}

uint64_t sub_230DFBBDC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *a1;
  v7 = a1[1];
  v8 = sub_230E686C0();
  v9 = *(v8 + 48);
  v10 = *(v8 + 52);
  swift_allocObject();
  sub_230E686B0();
  sub_230E686A0();
  if (v3)
  {
    MEMORY[0x23191E910](v3);
    v11 = 1;
  }

  else
  {
    v11 = 0;
  }

  return (*(*(a2 - 8) + 56))(a3, v11, 1, a2);
}

uint64_t ServicesIntelligenceXPC.Client.setInKVDatabase<A>(domain:request:)(uint64_t a1, _BYTE *a2, _OWORD *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v7 + 1136) = v6;
  *(v7 + 1128) = a6;
  *(v7 + 1120) = a5;
  *(v7 + 1112) = a4;
  *(v7 + 1104) = a1;
  *(v7 + 153) = *a2;
  *(v7 + 1144) = *a3;
  return MEMORY[0x2822009F8](sub_230DFBD0C, 0, 0);
}

uint64_t sub_230DFBD0C()
{
  v1 = *(v0 + 1144);
  v2 = *(v0 + 1128);
  v3 = swift_task_alloc();
  *(v0 + 1160) = v3;
  *(v3 + 16) = *(v0 + 1112);
  *(v3 + 32) = v2;
  v4 = sub_230E68FA0();
  v5 = *(v0 + 1152);
  v6 = *(v0 + 153);

  sub_230D0DA94(MEMORY[0x277D84F90]);

  *(v0 + 16) = v6;
  *(v0 + 24) = v4;
  *(v0 + 32) = v5;
  sub_230DF1394(v0 + 16);
  v7 = *(v0 + 96);
  v8 = *(v0 + 128);
  *(v0 + 256) = *(v0 + 112);
  *(v0 + 272) = v8;
  *(v0 + 281) = *(v0 + 137);
  v9 = *(v0 + 32);
  v10 = *(v0 + 64);
  v11 = *(v0 + 80);
  *(v0 + 192) = *(v0 + 48);
  *(v0 + 208) = v10;
  *(v0 + 224) = v11;
  *(v0 + 240) = v7;
  *(v0 + 160) = *(v0 + 16);
  *(v0 + 176) = v9;
  v12 = swift_task_alloc();
  *(v0 + 1168) = v12;
  *v12 = v0;
  v12[1] = sub_230DFBED0;
  v13 = *(v0 + 1136);

  return sub_230E01718(v0 + 592, (v0 + 160));
}

uint64_t sub_230DFBED0()
{
  v2 = *v1;
  v3 = (*v1 + 160);
  v4 = *(*v1 + 1168);
  v19 = *v1;
  *(*v1 + 1176) = v0;

  if (v0)
  {
    v2[19] = *v3;
    v5 = v3[1];
    v6 = v3[2];
    v7 = v3[4];
    v2[22] = v3[3];
    v2[23] = v7;
    v2[20] = v5;
    v2[21] = v6;
    v8 = v3[5];
    v9 = v3[6];
    v10 = v3[7];
    *(v2 + 425) = *(v3 + 121);
    v2[25] = v9;
    v2[26] = v10;
    v2[24] = v8;
    sub_230DFC328((v2 + 19));
    v11 = sub_230DFC224;
  }

  else
  {
    v2[28] = *v3;
    v12 = v3[1];
    v13 = v3[2];
    v14 = v3[4];
    v2[31] = v3[3];
    v2[32] = v14;
    v2[29] = v12;
    v2[30] = v13;
    v15 = v3[5];
    v16 = v3[6];
    v17 = v3[7];
    *(v2 + 569) = *(v3 + 121);
    v2[34] = v16;
    v2[35] = v17;
    v2[33] = v15;
    sub_230DFC328((v2 + 28));
    v11 = sub_230DFC060;
  }

  return MEMORY[0x2822009F8](v11, 0, 0);
}

uint64_t sub_230DFC060()
{
  v1 = *(v0 + 656);
  v2 = *(v0 + 672);
  *(v0 + 912) = v1;
  *(v0 + 928) = v2;
  v3 = *(v0 + 688);
  *(v0 + 944) = v3;
  v4 = *(v0 + 592);
  v5 = *(v0 + 608);
  *(v0 + 848) = v4;
  *(v0 + 864) = v5;
  v6 = *(v0 + 624);
  v7 = *(v0 + 640);
  *(v0 + 880) = v6;
  *(v0 + 896) = v7;
  v8 = *(v0 + 697);
  *(v0 + 953) = v8;
  *(v0 + 720) = v4;
  *(v0 + 736) = v5;
  *(v0 + 752) = v6;
  *(v0 + 768) = v7;
  *(v0 + 784) = v1;
  *(v0 + 800) = v2;
  *(v0 + 816) = v3;
  *(v0 + 825) = v8;
  if (sub_230DFABFC(v0 + 720) == 1)
  {
    v9 = *(v0 + 1160);
    v10 = sub_230D0519C(v0 + 720);
    v11 = *v10;
    v12 = v10[1];
    sub_230DFB34C();
    swift_allocError();
    *v13 = v11;
    v13[1] = v12;
    swift_willThrow();
  }

  else
  {
    v14 = sub_230D0519C(v0 + 720);
    v15 = v14[3];
    v17 = *v14;
    v16 = v14[1];
    *(v0 + 1008) = v14[2];
    *(v0 + 1024) = v15;
    *(v0 + 976) = v17;
    *(v0 + 992) = v16;
    v19 = v14[5];
    v18 = v14[6];
    v20 = v14[4];
    *(v0 + 1081) = *(v14 + 105);
    *(v0 + 1056) = v19;
    *(v0 + 1072) = v18;
    *(v0 + 1040) = v20;
    v21 = sub_230DF6160(v0 + 976);
    v22 = *(v0 + 1160);
    if (v21 == 12)
    {
      v23 = *(v0 + 1104);
      v24 = *sub_230D04CA4(v0 + 976);
      sub_230DFB3A0(v0 + 848);
      *v23 = v24;

      v25 = *(v0 + 8);
      goto LABEL_7;
    }

    sub_230DFB34C();
    swift_allocError();
    *v26 = xmmword_230E6E730;
    swift_willThrow();
    sub_230DFB3A0(v0 + 848);
  }

  v25 = *(v0 + 8);
LABEL_7:

  return v25();
}

uint64_t sub_230DFC224()
{
  v1 = v0[145];

  v2 = v0[147];
  v3 = v0[1];

  return v3();
}

uint64_t sub_230DFC288@<X0>(uint64_t *a1@<X8>)
{
  v3 = sub_230E686F0();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  sub_230E686E0();
  v6 = sub_230E686D0();
  v8 = v7;

  if (!v1)
  {
    *a1 = v6;
    a1[1] = v8;
  }

  return result;
}

uint64_t sub_230DFC37C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2[3];
  v4 = v2[4];
  return sub_230DFBBDC(a1, v2[2], a2);
}

uint64_t sub_230DFC3F8@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[4];
  return sub_230DFC288(a1);
}

uint64_t ServicesIntelligenceXPC.Client.enqueueOperationMetrics(_:)(uint64_t a1, void *a2)
{
  *(v2 + 1104) = a1;
  v3 = a2[1];
  v4 = a2[2];
  v5 = a2[3];
  *(v2 + 16) = *a2;
  v6 = a2[4];
  v7 = a2[5];
  *(v2 + 24) = v3;
  *(v2 + 32) = v4;
  *(v2 + 40) = v5;
  *(v2 + 48) = v6;
  *(v2 + 56) = v7;
  sub_230DF155C(v2 + 16);
  v8 = *(v2 + 96);
  v9 = *(v2 + 128);
  *(v2 + 256) = *(v2 + 112);
  *(v2 + 272) = v9;
  *(v2 + 281) = *(v2 + 137);
  v10 = *(v2 + 32);
  v11 = *(v2 + 64);
  v12 = *(v2 + 80);
  *(v2 + 192) = *(v2 + 48);
  *(v2 + 208) = v11;
  *(v2 + 224) = v12;
  *(v2 + 240) = v8;
  *(v2 + 160) = *(v2 + 16);
  *(v2 + 176) = v10;

  v13 = swift_task_alloc();
  *(v2 + 1112) = v13;
  *v13 = v2;
  v13[1] = sub_230DFC550;

  return sub_230E01718(v2 + 592, (v2 + 160));
}

uint64_t sub_230DFC550()
{
  v2 = *v1;
  v3 = (*v1 + 160);
  v4 = *(*v1 + 1112);
  v19 = *v1;
  *(*v1 + 1120) = v0;

  if (v0)
  {
    v2[19] = *v3;
    v5 = v3[1];
    v6 = v3[2];
    v7 = v3[4];
    v2[22] = v3[3];
    v2[23] = v7;
    v2[20] = v5;
    v2[21] = v6;
    v8 = v3[5];
    v9 = v3[6];
    v10 = v3[7];
    *(v2 + 425) = *(v3 + 121);
    v2[25] = v9;
    v2[26] = v10;
    v2[24] = v8;
    sub_230DFC328((v2 + 19));
    v11 = sub_230DFC884;
  }

  else
  {
    v2[28] = *v3;
    v12 = v3[1];
    v13 = v3[2];
    v14 = v3[4];
    v2[31] = v3[3];
    v2[32] = v14;
    v2[29] = v12;
    v2[30] = v13;
    v15 = v3[5];
    v16 = v3[6];
    v17 = v3[7];
    *(v2 + 569) = *(v3 + 121);
    v2[34] = v16;
    v2[35] = v17;
    v2[33] = v15;
    sub_230DFC328((v2 + 28));
    v11 = sub_230DFC6E0;
  }

  return MEMORY[0x2822009F8](v11, 0, 0);
}

uint64_t sub_230DFC6E0()
{
  v1 = *(v0 + 656);
  v2 = *(v0 + 672);
  *(v0 + 912) = v1;
  *(v0 + 928) = v2;
  v3 = *(v0 + 688);
  *(v0 + 944) = v3;
  v4 = *(v0 + 592);
  v5 = *(v0 + 608);
  *(v0 + 848) = v4;
  *(v0 + 864) = v5;
  v6 = *(v0 + 624);
  v7 = *(v0 + 640);
  *(v0 + 880) = v6;
  *(v0 + 896) = v7;
  v8 = *(v0 + 697);
  *(v0 + 953) = v8;
  *(v0 + 720) = v4;
  *(v0 + 736) = v5;
  *(v0 + 752) = v6;
  *(v0 + 768) = v7;
  *(v0 + 784) = v1;
  *(v0 + 800) = v2;
  *(v0 + 816) = v3;
  *(v0 + 825) = v8;
  if (sub_230DFABFC(v0 + 720) == 1)
  {
    v9 = sub_230D0519C(v0 + 720);
    v10 = *v9;
    v11 = v9[1];
    sub_230DFB34C();
    swift_allocError();
    *v12 = v10;
    v12[1] = v11;
    swift_willThrow();
  }

  else
  {
    v13 = sub_230D0519C(v0 + 720);
    v14 = v13[3];
    v16 = *v13;
    v15 = v13[1];
    *(v0 + 1008) = v13[2];
    *(v0 + 1024) = v14;
    *(v0 + 976) = v16;
    *(v0 + 992) = v15;
    v18 = v13[5];
    v17 = v13[6];
    v19 = v13[4];
    *(v0 + 1081) = *(v13 + 105);
    *(v0 + 1056) = v18;
    *(v0 + 1072) = v17;
    *(v0 + 1040) = v19;
    if (sub_230DF6160(v0 + 976) == 6)
    {
      v20 = *(v0 + 1104);
      v21 = sub_230D04CA4(v0 + 976);
      v22 = *(v21 + 16);
      *v20 = *v21;
      *(v20 + 16) = v22;
      v23 = *(v0 + 8);
      goto LABEL_7;
    }

    sub_230DFB34C();
    swift_allocError();
    *v24 = xmmword_230E6E730;
    swift_willThrow();
    sub_230DFB3A0(v0 + 848);
  }

  v23 = *(v0 + 8);
LABEL_7:

  return v23();
}

uint64_t ServicesIntelligenceXPC.Client.flushMetrics(_:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  sub_230DF14F4(v2 + 16);
  v3 = *(v2 + 96);
  v4 = *(v2 + 128);
  *(v2 + 256) = *(v2 + 112);
  *(v2 + 272) = v4;
  *(v2 + 281) = *(v2 + 137);
  v5 = *(v2 + 32);
  v6 = *(v2 + 64);
  v7 = *(v2 + 80);
  *(v2 + 192) = *(v2 + 48);
  *(v2 + 208) = v6;
  *(v2 + 224) = v7;
  *(v2 + 240) = v3;
  *(v2 + 160) = *(v2 + 16);
  *(v2 + 176) = v5;

  v8 = swift_task_alloc();
  *(v2 + 1104) = v8;
  *v8 = v2;
  v8[1] = sub_230DFC990;

  return sub_230E01718(v2 + 592, (v2 + 160));
}

uint64_t sub_230DFC990()
{
  v2 = *v1;
  v3 = (*v1 + 160);
  v4 = *(*v1 + 1104);
  v19 = *v1;
  *(*v1 + 1112) = v0;

  if (v0)
  {
    v2[19] = *v3;
    v5 = v3[1];
    v6 = v3[2];
    v7 = v3[4];
    v2[22] = v3[3];
    v2[23] = v7;
    v2[20] = v5;
    v2[21] = v6;
    v8 = v3[5];
    v9 = v3[6];
    v10 = v3[7];
    *(v2 + 425) = *(v3 + 121);
    v2[25] = v9;
    v2[26] = v10;
    v2[24] = v8;
    sub_230DFC328((v2 + 19));
    v11 = sub_230DFCCE8;
  }

  else
  {
    v2[28] = *v3;
    v12 = v3[1];
    v13 = v3[2];
    v14 = v3[4];
    v2[31] = v3[3];
    v2[32] = v14;
    v2[29] = v12;
    v2[30] = v13;
    v15 = v3[5];
    v16 = v3[6];
    v17 = v3[7];
    *(v2 + 569) = *(v3 + 121);
    v2[34] = v16;
    v2[35] = v17;
    v2[33] = v15;
    sub_230DFC328((v2 + 28));
    v11 = sub_230DFCB20;
  }

  return MEMORY[0x2822009F8](v11, 0, 0);
}

uint64_t sub_230DFCB20()
{
  v1 = *(v0 + 656);
  v2 = *(v0 + 672);
  *(v0 + 912) = v1;
  *(v0 + 928) = v2;
  v3 = *(v0 + 688);
  *(v0 + 944) = v3;
  v4 = *(v0 + 592);
  v5 = *(v0 + 608);
  *(v0 + 848) = v4;
  *(v0 + 864) = v5;
  v6 = *(v0 + 624);
  v7 = *(v0 + 640);
  *(v0 + 880) = v6;
  *(v0 + 896) = v7;
  v8 = *(v0 + 697);
  *(v0 + 953) = v8;
  *(v0 + 720) = v4;
  *(v0 + 736) = v5;
  *(v0 + 752) = v6;
  *(v0 + 768) = v7;
  *(v0 + 784) = v1;
  *(v0 + 800) = v2;
  *(v0 + 816) = v3;
  *(v0 + 825) = v8;
  if (sub_230DFABFC(v0 + 720) == 1)
  {
    v9 = sub_230D0519C(v0 + 720);
    v10 = *v9;
    v11 = v9[1];
    sub_230DFB34C();
    swift_allocError();
    *v12 = v10;
    v12[1] = v11;
    swift_willThrow();
LABEL_8:
    v24 = *(v0 + 8);

    return v24();
  }

  v13 = sub_230D0519C(v0 + 720);
  v14 = v13[3];
  v16 = *v13;
  v15 = v13[1];
  *(v0 + 1008) = v13[2];
  *(v0 + 1024) = v14;
  *(v0 + 976) = v16;
  *(v0 + 992) = v15;
  v18 = v13[5];
  v17 = v13[6];
  v19 = v13[4];
  *(v0 + 1081) = *(v13 + 105);
  *(v0 + 1056) = v18;
  *(v0 + 1072) = v17;
  *(v0 + 1040) = v19;
  if (sub_230DF6160(v0 + 976) != 7)
  {
    sub_230DFB34C();
    swift_allocError();
    *v23 = xmmword_230E6E730;
    swift_willThrow();
    sub_230DFB3A0(v0 + 848);
    goto LABEL_8;
  }

  v20 = *sub_230D04CA4(v0 + 976);
  sub_230DFB3A0(v0 + 848);
  v21 = *(v0 + 8);

  return v21(v20);
}

uint64_t sub_230DFCD00(uint64_t a1, uint64_t a2)
{
  *(v2 + 152) = a1;
  *(v2 + 160) = a2;
  return MEMORY[0x2822009F8](sub_230DFCD20, 0, 0);
}

uint64_t sub_230DFCD20()
{
  v2 = v0[19];
  v1 = v0[20];
  v3 = sub_230E69030();
  v4 = sub_230E69030();
  v5 = [objc_opt_self() bagForProfile:v3 profileVersion:v4];
  v0[21] = v5;

  v6 = objc_allocWithZone(MEMORY[0x277CEE598]);

  v7 = v5;
  v8 = sub_230E69030();

  v9 = [v6 initWithContainerID:v8 bag:v7];
  v0[22] = v9;

  v10 = [v9 flush];
  v0[23] = v10;
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_230DFCF34;
  v11 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5D730, &qword_230E7ED40);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_230DC1810;
  v0[13] = &block_descriptor_0;
  v0[14] = v11;
  [v10 resultWithCompletion_];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_230DFCF34()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 192) = v2;
  if (v2)
  {
    v3 = sub_230DFD0DC;
  }

  else
  {
    v3 = sub_230DFD044;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_230DFD044()
{
  v1 = *(v0 + 176);
  v2 = *(v0 + 168);
  v3 = *(v0 + 144);

  v4 = [v3 integerValue];
  v5 = *(v0 + 8);

  return v5(v4);
}

uint64_t sub_230DFD0DC()
{
  v1 = v0[23];
  v2 = v0[24];
  v4 = v0[21];
  v3 = v0[22];
  swift_willThrow();

  v5 = v0[1];
  v6 = v0[24];

  return v5();
}

uint64_t ServicesIntelligenceXPC.Client.fetchFromSQLDatabase(domain:databaseName:request:)(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, __int128 *a5)
{
  v6 = a5[3];
  *(v5 + 1168) = a5[4];
  v7 = a5[4];
  *(v5 + 1184) = a5[5];
  v8 = a5[5];
  *(v5 + 1200) = a5[6];
  v9 = a5[1];
  *(v5 + 1104) = *a5;
  v10 = *a5;
  v11 = a5[1];
  *(v5 + 1120) = v9;
  v12 = a5[3];
  *(v5 + 1136) = a5[2];
  v13 = a5[2];
  *(v5 + 1152) = v12;
  *(v5 + 88) = v6;
  *(v5 + 72) = v13;
  *(v5 + 56) = v11;
  *(v5 + 40) = v10;
  *(v5 + 136) = a5[6];
  *(v5 + 120) = v8;
  *(v5 + 1344) = a1;
  v14 = *a2;
  *(v5 + 1216) = *(a5 + 112);
  *(v5 + 152) = *(a5 + 112);
  *(v5 + 104) = v7;
  *(v5 + 16) = v14;
  *(v5 + 24) = a3;
  *(v5 + 32) = a4;
  sub_230DF1478(v5 + 16);
  v15 = *(v5 + 96);
  v16 = *(v5 + 128);
  *(v5 + 256) = *(v5 + 112);
  *(v5 + 272) = v16;
  *(v5 + 281) = *(v5 + 137);
  v17 = *(v5 + 32);
  v18 = *(v5 + 64);
  v19 = *(v5 + 80);
  *(v5 + 192) = *(v5 + 48);
  *(v5 + 208) = v18;
  *(v5 + 224) = v19;
  *(v5 + 240) = v15;
  *(v5 + 160) = *(v5 + 16);
  *(v5 + 176) = v17;

  sub_230D1D0EC(v5 + 1104, v5 + 1224);
  v20 = swift_task_alloc();
  *(v5 + 1352) = v20;
  *v20 = v5;
  v20[1] = sub_230DFD2E4;

  return sub_230E01718(v5 + 592, (v5 + 160));
}

uint64_t sub_230DFD2E4()
{
  v2 = *v1;
  v3 = (*v1 + 160);
  v4 = *(*v1 + 1352);
  v19 = *v1;
  *(*v1 + 1360) = v0;

  if (v0)
  {
    v2[19] = *v3;
    v5 = v3[1];
    v6 = v3[2];
    v7 = v3[4];
    v2[22] = v3[3];
    v2[23] = v7;
    v2[20] = v5;
    v2[21] = v6;
    v8 = v3[5];
    v9 = v3[6];
    v10 = v3[7];
    *(v2 + 425) = *(v3 + 121);
    v2[25] = v9;
    v2[26] = v10;
    v2[24] = v8;
    sub_230DFC328((v2 + 19));
    v11 = sub_230DFD610;
  }

  else
  {
    v2[28] = *v3;
    v12 = v3[1];
    v13 = v3[2];
    v14 = v3[4];
    v2[31] = v3[3];
    v2[32] = v14;
    v2[29] = v12;
    v2[30] = v13;
    v15 = v3[5];
    v16 = v3[6];
    v17 = v3[7];
    *(v2 + 569) = *(v3 + 121);
    v2[34] = v16;
    v2[35] = v17;
    v2[33] = v15;
    sub_230DFC328((v2 + 28));
    v11 = sub_230DFD474;
  }

  return MEMORY[0x2822009F8](v11, 0, 0);
}

uint64_t sub_230DFD474()
{
  v1 = *(v0 + 656);
  v2 = *(v0 + 672);
  *(v0 + 912) = v1;
  *(v0 + 928) = v2;
  v3 = *(v0 + 688);
  *(v0 + 944) = v3;
  v4 = *(v0 + 592);
  v5 = *(v0 + 608);
  *(v0 + 848) = v4;
  *(v0 + 864) = v5;
  v6 = *(v0 + 624);
  v7 = *(v0 + 640);
  *(v0 + 880) = v6;
  *(v0 + 896) = v7;
  v8 = *(v0 + 697);
  *(v0 + 953) = v8;
  *(v0 + 720) = v4;
  *(v0 + 736) = v5;
  *(v0 + 752) = v6;
  *(v0 + 768) = v7;
  *(v0 + 784) = v1;
  *(v0 + 800) = v2;
  *(v0 + 816) = v3;
  *(v0 + 825) = v8;
  if (sub_230DFABFC(v0 + 720) == 1)
  {
    v9 = sub_230D0519C(v0 + 720);
    v10 = *v9;
    v11 = v9[1];
    sub_230DFB34C();
    swift_allocError();
    *v12 = v10;
    v12[1] = v11;
    swift_willThrow();
  }

  else
  {
    v13 = sub_230D0519C(v0 + 720);
    v14 = v13[3];
    v16 = *v13;
    v15 = v13[1];
    *(v0 + 1008) = v13[2];
    *(v0 + 1024) = v14;
    *(v0 + 976) = v16;
    *(v0 + 992) = v15;
    v18 = v13[5];
    v17 = v13[6];
    v19 = v13[4];
    *(v0 + 1081) = *(v13 + 105);
    *(v0 + 1056) = v18;
    *(v0 + 1072) = v17;
    *(v0 + 1040) = v19;
    if (sub_230DF6160(v0 + 976) == 9)
    {
      v20 = *(v0 + 1344);
      *v20 = *sub_230D04CA4(v0 + 976);
      v21 = *(v0 + 8);
      goto LABEL_7;
    }

    sub_230DFB34C();
    swift_allocError();
    *v22 = xmmword_230E6E730;
    swift_willThrow();
    sub_230DFB3A0(v0 + 848);
  }

  v21 = *(v0 + 8);
LABEL_7:

  return v21();
}

uint64_t ServicesIntelligenceXPC.Client.fetchFromSQLDatabase(databaseName:request:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 80);
  *(v5 + 1168) = *(a4 + 64);
  *(v5 + 1184) = v6;
  *(v5 + 1200) = *(a4 + 96);
  v7 = *(a4 + 16);
  *(v5 + 1104) = *a4;
  *(v5 + 1120) = v7;
  v8 = *(a4 + 48);
  *(v5 + 1136) = *(a4 + 32);
  *(v5 + 1368) = v4;
  *(v5 + 1360) = a3;
  *(v5 + 1352) = a2;
  *(v5 + 1344) = a1;
  *(v5 + 1216) = *(a4 + 112);
  *(v5 + 1152) = v8;
  return MEMORY[0x2822009F8](sub_230DFD688, 0, 0);
}

uint64_t sub_230DFD688()
{
  sub_230DCB5D4((v0 + 153));
  v1 = *(v0 + 1184);
  *(v0 + 104) = *(v0 + 1168);
  *(v0 + 120) = v1;
  *(v0 + 136) = *(v0 + 1200);
  v2 = *(v0 + 1120);
  *(v0 + 40) = *(v0 + 1104);
  *(v0 + 56) = v2;
  v3 = *(v0 + 1152);
  *(v0 + 72) = *(v0 + 1136);
  v4 = *(v0 + 1360);
  v5 = *(v0 + 1352);
  v6 = *(v0 + 153);
  *(v0 + 152) = *(v0 + 1216);
  *(v0 + 88) = v3;
  *(v0 + 16) = v6;
  *(v0 + 24) = v5;
  *(v0 + 32) = v4;
  sub_230DF1478(v0 + 16);
  v7 = *(v0 + 96);
  v8 = *(v0 + 128);
  *(v0 + 256) = *(v0 + 112);
  *(v0 + 272) = v8;
  *(v0 + 281) = *(v0 + 137);
  v9 = *(v0 + 32);
  v10 = *(v0 + 64);
  v11 = *(v0 + 80);
  *(v0 + 192) = *(v0 + 48);
  *(v0 + 208) = v10;
  *(v0 + 224) = v11;
  *(v0 + 240) = v7;
  *(v0 + 160) = *(v0 + 16);
  *(v0 + 176) = v9;

  sub_230D1D0EC(v0 + 1104, v0 + 1224);
  v12 = swift_task_alloc();
  *(v0 + 1376) = v12;
  *v12 = v0;
  v12[1] = sub_230DFD81C;
  v13 = *(v0 + 1368);

  return sub_230E01718(v0 + 592, (v0 + 160));
}

uint64_t sub_230DFD81C()
{
  v2 = *v1;
  v3 = (*v1 + 160);
  v4 = *(*v1 + 1376);
  v19 = *v1;
  *(*v1 + 1384) = v0;

  if (v0)
  {
    v2[19] = *v3;
    v5 = v3[1];
    v6 = v3[2];
    v7 = v3[4];
    v2[22] = v3[3];
    v2[23] = v7;
    v2[20] = v5;
    v2[21] = v6;
    v8 = v3[5];
    v9 = v3[6];
    v10 = v3[7];
    *(v2 + 425) = *(v3 + 121);
    v2[25] = v9;
    v2[26] = v10;
    v2[24] = v8;
    sub_230DFC328((v2 + 19));
    v11 = sub_230DFD9AC;
  }

  else
  {
    v2[28] = *v3;
    v12 = v3[1];
    v13 = v3[2];
    v14 = v3[4];
    v2[31] = v3[3];
    v2[32] = v14;
    v2[29] = v12;
    v2[30] = v13;
    v15 = v3[5];
    v16 = v3[6];
    v17 = v3[7];
    *(v2 + 569) = *(v3 + 121);
    v2[34] = v16;
    v2[35] = v17;
    v2[33] = v15;
    sub_230DFC328((v2 + 28));
    v11 = sub_230DFD474;
  }

  return MEMORY[0x2822009F8](v11, 0, 0);
}

uint64_t ServicesIntelligenceXPC.Client.deleteFromSQLDatabase(domain:databaseName:request:)(uint64_t a1, _BYTE *a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  *(v5 + 1104) = a1;
  v6 = *a5;
  v7 = a5[1];
  v8 = a5[2];
  v9 = a5[3];
  *(v5 + 16) = *a2;
  *(v5 + 24) = a3;
  *(v5 + 32) = a4;
  *(v5 + 40) = v6;
  *(v5 + 48) = v7;
  *(v5 + 56) = v8;
  *(v5 + 64) = v9;
  sub_230DF14E0(v5 + 16);
  v10 = *(v5 + 96);
  v11 = *(v5 + 128);
  *(v5 + 256) = *(v5 + 112);
  *(v5 + 272) = v11;
  *(v5 + 281) = *(v5 + 137);
  v12 = *(v5 + 32);
  v13 = *(v5 + 64);
  v14 = *(v5 + 80);
  *(v5 + 192) = *(v5 + 48);
  *(v5 + 208) = v13;
  *(v5 + 224) = v14;
  *(v5 + 240) = v10;
  *(v5 + 160) = *(v5 + 16);
  *(v5 + 176) = v12;

  v15 = swift_task_alloc();
  *(v5 + 1112) = v15;
  *v15 = v5;
  v15[1] = sub_230DFDAE8;

  return sub_230E01718(v5 + 592, (v5 + 160));
}

uint64_t sub_230DFDAE8()
{
  v2 = *v1;
  v3 = (*v1 + 160);
  v4 = *(*v1 + 1112);
  v19 = *v1;
  *(*v1 + 1120) = v0;

  if (v0)
  {
    v2[19] = *v3;
    v5 = v3[1];
    v6 = v3[2];
    v7 = v3[4];
    v2[22] = v3[3];
    v2[23] = v7;
    v2[20] = v5;
    v2[21] = v6;
    v8 = v3[5];
    v9 = v3[6];
    v10 = v3[7];
    *(v2 + 425) = *(v3 + 121);
    v2[25] = v9;
    v2[26] = v10;
    v2[24] = v8;
    sub_230DFC328((v2 + 19));
    v11 = sub_230DFC884;
  }

  else
  {
    v2[28] = *v3;
    v12 = v3[1];
    v13 = v3[2];
    v14 = v3[4];
    v2[31] = v3[3];
    v2[32] = v14;
    v2[29] = v12;
    v2[30] = v13;
    v15 = v3[5];
    v16 = v3[6];
    v17 = v3[7];
    *(v2 + 569) = *(v3 + 121);
    v2[34] = v16;
    v2[35] = v17;
    v2[33] = v15;
    sub_230DFC328((v2 + 28));
    v11 = sub_230DFDC78;
  }

  return MEMORY[0x2822009F8](v11, 0, 0);
}

uint64_t sub_230DFDC78()
{
  v1 = *(v0 + 656);
  v2 = *(v0 + 672);
  *(v0 + 912) = v1;
  *(v0 + 928) = v2;
  v3 = *(v0 + 688);
  *(v0 + 944) = v3;
  v4 = *(v0 + 592);
  v5 = *(v0 + 608);
  *(v0 + 848) = v4;
  *(v0 + 864) = v5;
  v6 = *(v0 + 624);
  v7 = *(v0 + 640);
  *(v0 + 880) = v6;
  *(v0 + 896) = v7;
  v8 = *(v0 + 697);
  *(v0 + 953) = v8;
  *(v0 + 720) = v4;
  *(v0 + 736) = v5;
  *(v0 + 752) = v6;
  *(v0 + 768) = v7;
  *(v0 + 784) = v1;
  *(v0 + 800) = v2;
  *(v0 + 816) = v3;
  *(v0 + 825) = v8;
  if (sub_230DFABFC(v0 + 720) == 1)
  {
    v9 = sub_230D0519C(v0 + 720);
    v10 = *v9;
    v11 = v9[1];
    sub_230DFB34C();
    swift_allocError();
    *v12 = v10;
    v12[1] = v11;
    swift_willThrow();
  }

  else
  {
    v13 = sub_230D0519C(v0 + 720);
    v14 = v13[3];
    v16 = *v13;
    v15 = v13[1];
    *(v0 + 1008) = v13[2];
    *(v0 + 1024) = v14;
    *(v0 + 976) = v16;
    *(v0 + 992) = v15;
    v18 = v13[5];
    v17 = v13[6];
    v19 = v13[4];
    *(v0 + 1081) = *(v13 + 105);
    *(v0 + 1056) = v18;
    *(v0 + 1072) = v17;
    *(v0 + 1040) = v19;
    if (sub_230DF6160(v0 + 976) == 8)
    {
      v20 = *(v0 + 1104);
      v21 = *sub_230D04CA4(v0 + 976);
      sub_230DFB3A0(v0 + 848);
      *v20 = v21;
      v22 = *(v0 + 8);
      goto LABEL_7;
    }

    sub_230DFB34C();
    swift_allocError();
    *v23 = xmmword_230E6E730;
    swift_willThrow();
    sub_230DFB3A0(v0 + 848);
  }

  v22 = *(v0 + 8);
LABEL_7:

  return v22();
}

uint64_t ServicesIntelligenceXPC.Client.deleteFromSQLDatabase(databaseName:request:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v5 + 1128) = v4;
  *(v5 + 1120) = a3;
  *(v5 + 1112) = a2;
  *(v5 + 1104) = a1;
  v6 = *(a4 + 8);
  *(v5 + 1136) = *a4;
  *(v5 + 1144) = v6;
  *(v5 + 1152) = *(a4 + 16);
  return MEMORY[0x2822009F8](sub_230DFDE5C, 0, 0);
}

uint64_t sub_230DFDE5C()
{
  sub_230DCB5D4((v0 + 153));
  v1 = *(v0 + 1160);
  v2 = *(v0 + 1152);
  v3 = *(v0 + 1144);
  v4 = *(v0 + 1136);
  v5 = *(v0 + 1120);
  v6 = *(v0 + 1112);
  *(v0 + 16) = *(v0 + 153);
  *(v0 + 24) = v6;
  *(v0 + 32) = v5;
  *(v0 + 40) = v4;
  *(v0 + 48) = v3;
  *(v0 + 56) = v2;
  *(v0 + 64) = v1;
  sub_230DF14E0(v0 + 16);
  v7 = *(v0 + 96);
  v8 = *(v0 + 128);
  *(v0 + 256) = *(v0 + 112);
  *(v0 + 272) = v8;
  *(v0 + 281) = *(v0 + 137);
  v9 = *(v0 + 32);
  v10 = *(v0 + 64);
  v11 = *(v0 + 80);
  *(v0 + 192) = *(v0 + 48);
  *(v0 + 208) = v10;
  *(v0 + 224) = v11;
  *(v0 + 240) = v7;
  *(v0 + 160) = *(v0 + 16);
  *(v0 + 176) = v9;

  v12 = swift_task_alloc();
  *(v0 + 1168) = v12;
  *v12 = v0;
  v12[1] = sub_230DFDFE4;
  v13 = *(v0 + 1128);

  return sub_230E01718(v0 + 592, (v0 + 160));
}

uint64_t sub_230DFDFE4()
{
  v2 = *v1;
  v3 = (*v1 + 160);
  v4 = *(*v1 + 1168);
  v19 = *v1;
  *(*v1 + 1176) = v0;

  if (v0)
  {
    v2[19] = *v3;
    v5 = v3[1];
    v6 = v3[2];
    v7 = v3[4];
    v2[22] = v3[3];
    v2[23] = v7;
    v2[20] = v5;
    v2[21] = v6;
    v8 = v3[5];
    v9 = v3[6];
    v10 = v3[7];
    *(v2 + 425) = *(v3 + 121);
    v2[25] = v9;
    v2[26] = v10;
    v2[24] = v8;
    sub_230DFC328((v2 + 19));
    v11 = sub_230DFE174;
  }

  else
  {
    v2[28] = *v3;
    v12 = v3[1];
    v13 = v3[2];
    v14 = v3[4];
    v2[31] = v3[3];
    v2[32] = v14;
    v2[29] = v12;
    v2[30] = v13;
    v15 = v3[5];
    v16 = v3[6];
    v17 = v3[7];
    *(v2 + 569) = *(v3 + 121);
    v2[34] = v16;
    v2[35] = v17;
    v2[33] = v15;
    sub_230DFC328((v2 + 28));
    v11 = sub_230DFDC78;
  }

  return MEMORY[0x2822009F8](v11, 0, 0);
}

uint64_t ServicesIntelligenceXPC.Client.upsertIntoSQLDatabase(domain:databaseName:request:)(uint64_t a1, _BYTE *a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  *(v5 + 1104) = a1;
  v6 = *a5;
  v7 = a5[1];
  v8 = a5[2];
  v9 = a5[3];
  *(v5 + 16) = *a2;
  *(v5 + 24) = a3;
  *(v5 + 32) = a4;
  *(v5 + 40) = v6;
  *(v5 + 48) = v7;
  *(v5 + 56) = v8;
  *(v5 + 64) = v9;
  sub_230DF1410(v5 + 16);
  v10 = *(v5 + 96);
  v11 = *(v5 + 128);
  *(v5 + 256) = *(v5 + 112);
  *(v5 + 272) = v11;
  *(v5 + 281) = *(v5 + 137);
  v12 = *(v5 + 32);
  v13 = *(v5 + 64);
  v14 = *(v5 + 80);
  *(v5 + 192) = *(v5 + 48);
  *(v5 + 208) = v13;
  *(v5 + 224) = v14;
  *(v5 + 240) = v10;
  *(v5 + 160) = *(v5 + 16);
  *(v5 + 176) = v12;

  v15 = swift_task_alloc();
  *(v5 + 1112) = v15;
  *v15 = v5;
  v15[1] = sub_230DFE2C0;

  return sub_230E01718(v5 + 592, (v5 + 160));
}

uint64_t sub_230DFE2C0()
{
  v2 = *v1;
  v3 = (*v1 + 160);
  v4 = *(*v1 + 1112);
  v19 = *v1;
  *(*v1 + 1120) = v0;

  if (v0)
  {
    v2[19] = *v3;
    v5 = v3[1];
    v6 = v3[2];
    v7 = v3[4];
    v2[22] = v3[3];
    v2[23] = v7;
    v2[20] = v5;
    v2[21] = v6;
    v8 = v3[5];
    v9 = v3[6];
    v10 = v3[7];
    *(v2 + 425) = *(v3 + 121);
    v2[25] = v9;
    v2[26] = v10;
    v2[24] = v8;
    sub_230DFC328((v2 + 19));
    v11 = sub_230DFF3F8;
  }

  else
  {
    v2[28] = *v3;
    v12 = v3[1];
    v13 = v3[2];
    v14 = v3[4];
    v2[31] = v3[3];
    v2[32] = v14;
    v2[29] = v12;
    v2[30] = v13;
    v15 = v3[5];
    v16 = v3[6];
    v17 = v3[7];
    *(v2 + 569) = *(v3 + 121);
    v2[34] = v16;
    v2[35] = v17;
    v2[33] = v15;
    sub_230DFC328((v2 + 28));
    v11 = sub_230DFE450;
  }

  return MEMORY[0x2822009F8](v11, 0, 0);
}

uint64_t sub_230DFE450()
{
  v1 = *(v0 + 656);
  v2 = *(v0 + 672);
  *(v0 + 912) = v1;
  *(v0 + 928) = v2;
  v3 = *(v0 + 688);
  *(v0 + 944) = v3;
  v4 = *(v0 + 592);
  v5 = *(v0 + 608);
  *(v0 + 848) = v4;
  *(v0 + 864) = v5;
  v6 = *(v0 + 624);
  v7 = *(v0 + 640);
  *(v0 + 880) = v6;
  *(v0 + 896) = v7;
  v8 = *(v0 + 697);
  *(v0 + 953) = v8;
  *(v0 + 720) = v4;
  *(v0 + 736) = v5;
  *(v0 + 752) = v6;
  *(v0 + 768) = v7;
  *(v0 + 784) = v1;
  *(v0 + 800) = v2;
  *(v0 + 816) = v3;
  *(v0 + 825) = v8;
  if (sub_230DFABFC(v0 + 720) == 1)
  {
    v9 = sub_230D0519C(v0 + 720);
    v10 = *v9;
    v11 = v9[1];
    sub_230DFB34C();
    swift_allocError();
    *v12 = v10;
    v12[1] = v11;
    swift_willThrow();
  }

  else
  {
    v13 = sub_230D0519C(v0 + 720);
    v14 = v13[3];
    v16 = *v13;
    v15 = v13[1];
    *(v0 + 1008) = v13[2];
    *(v0 + 1024) = v14;
    *(v0 + 976) = v16;
    *(v0 + 992) = v15;
    v18 = v13[5];
    v17 = v13[6];
    v19 = v13[4];
    *(v0 + 1081) = *(v13 + 105);
    *(v0 + 1056) = v18;
    *(v0 + 1072) = v17;
    *(v0 + 1040) = v19;
    if (sub_230DF6160(v0 + 976) == 10)
    {
      v20 = *(v0 + 1104);
      v21 = *sub_230D04CA4(v0 + 976);
      sub_230DFB3A0(v0 + 848);
      *v20 = v21;
      v22 = *(v0 + 8);
      goto LABEL_7;
    }

    sub_230DFB34C();
    swift_allocError();
    *v23 = xmmword_230E6E730;
    swift_willThrow();
    sub_230DFB3A0(v0 + 848);
  }

  v22 = *(v0 + 8);
LABEL_7:

  return v22();
}

uint64_t ServicesIntelligenceXPC.Client.upsertIntoSQLDatabase(databaseName:request:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v5 + 1128) = v4;
  *(v5 + 1120) = a3;
  *(v5 + 1112) = a2;
  *(v5 + 1104) = a1;
  *(v5 + 1136) = *a4;
  *(v5 + 1144) = *(a4 + 8);
  *(v5 + 1160) = *(a4 + 24);
  return MEMORY[0x2822009F8](sub_230DFE63C, 0, 0);
}

uint64_t sub_230DFE63C()
{
  sub_230DCB5D4((v0 + 153));
  v1 = *(v0 + 1160);
  v2 = *(v0 + 1152);
  v3 = *(v0 + 1144);
  v4 = *(v0 + 1136);
  v5 = *(v0 + 1120);
  v6 = *(v0 + 1112);
  *(v0 + 16) = *(v0 + 153);
  *(v0 + 24) = v6;
  *(v0 + 32) = v5;
  *(v0 + 40) = v4;
  *(v0 + 48) = v3;
  *(v0 + 56) = v2;
  *(v0 + 64) = v1;
  sub_230DF1410(v0 + 16);
  v7 = *(v0 + 96);
  v8 = *(v0 + 128);
  *(v0 + 256) = *(v0 + 112);
  *(v0 + 272) = v8;
  *(v0 + 281) = *(v0 + 137);
  v9 = *(v0 + 32);
  v10 = *(v0 + 64);
  v11 = *(v0 + 80);
  *(v0 + 192) = *(v0 + 48);
  *(v0 + 208) = v10;
  *(v0 + 224) = v11;
  *(v0 + 240) = v7;
  *(v0 + 160) = *(v0 + 16);
  *(v0 + 176) = v9;

  v12 = swift_task_alloc();
  *(v0 + 1168) = v12;
  *v12 = v0;
  v12[1] = sub_230DFE7CC;
  v13 = *(v0 + 1128);

  return sub_230E01718(v0 + 592, (v0 + 160));
}

uint64_t sub_230DFE7CC()
{
  v2 = *v1;
  v3 = (*v1 + 160);
  v4 = *(*v1 + 1168);
  v19 = *v1;
  *(*v1 + 1176) = v0;

  if (v0)
  {
    v2[19] = *v3;
    v5 = v3[1];
    v6 = v3[2];
    v7 = v3[4];
    v2[22] = v3[3];
    v2[23] = v7;
    v2[20] = v5;
    v2[21] = v6;
    v8 = v3[5];
    v9 = v3[6];
    v10 = v3[7];
    *(v2 + 425) = *(v3 + 121);
    v2[25] = v9;
    v2[26] = v10;
    v2[24] = v8;
    sub_230DFC328((v2 + 19));
    v11 = sub_230DFF3F4;
  }

  else
  {
    v2[28] = *v3;
    v12 = v3[1];
    v13 = v3[2];
    v14 = v3[4];
    v2[31] = v3[3];
    v2[32] = v14;
    v2[29] = v12;
    v2[30] = v13;
    v15 = v3[5];
    v16 = v3[6];
    v17 = v3[7];
    *(v2 + 569) = *(v3 + 121);
    v2[34] = v16;
    v2[35] = v17;
    v2[33] = v15;
    sub_230DFC328((v2 + 28));
    v11 = sub_230DFE450;
  }

  return MEMORY[0x2822009F8](v11, 0, 0);
}

uint64_t ServicesIntelligenceXPC.Client.initializeSystemDatabase()()
{
  sub_230DF1224(v0 + 16);
  v1 = *(v0 + 128);
  *(v0 + 256) = *(v0 + 112);
  *(v0 + 272) = v1;
  *(v0 + 281) = *(v0 + 137);
  v2 = *(v0 + 64);
  *(v0 + 192) = *(v0 + 48);
  *(v0 + 208) = v2;
  v3 = *(v0 + 96);
  *(v0 + 224) = *(v0 + 80);
  *(v0 + 240) = v3;
  v4 = *(v0 + 32);
  *(v0 + 160) = *(v0 + 16);
  *(v0 + 176) = v4;
  v5 = swift_task_alloc();
  *(v0 + 816) = v5;
  *v5 = v0;
  v5[1] = sub_230DFEA28;

  return sub_230E01718(v0 + 304, (v0 + 160));
}

uint64_t sub_230DFEA28()
{
  v2 = *(*v1 + 816);
  v5 = *v1;
  *(*v1 + 824) = v0;

  if (v0)
  {
    v3 = sub_230DFF3F0;
  }

  else
  {
    v3 = sub_230DFEB3C;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_230DFEB3C()
{
  v1 = *(v0 + 368);
  v2 = *(v0 + 384);
  *(v0 + 624) = v1;
  *(v0 + 640) = v2;
  v3 = *(v0 + 400);
  *(v0 + 656) = v3;
  v4 = *(v0 + 304);
  v5 = *(v0 + 320);
  *(v0 + 560) = v4;
  *(v0 + 576) = v5;
  v6 = *(v0 + 336);
  v7 = *(v0 + 352);
  *(v0 + 592) = v6;
  *(v0 + 608) = v7;
  v8 = *(v0 + 409);
  *(v0 + 665) = v8;
  *(v0 + 432) = v4;
  *(v0 + 448) = v5;
  *(v0 + 464) = v6;
  *(v0 + 480) = v7;
  *(v0 + 496) = v1;
  *(v0 + 512) = v2;
  *(v0 + 528) = v3;
  *(v0 + 537) = v8;
  if (sub_230DFABFC(v0 + 432) == 1)
  {
    v9 = sub_230D0519C(v0 + 432);
    v10 = *v9;
    v11 = v9[1];
    sub_230DFB34C();
    swift_allocError();
    *v12 = v10;
    v12[1] = v11;
    swift_willThrow();
  }

  else
  {
    v13 = sub_230D0519C(v0 + 432);
    v14 = v13[3];
    v16 = *v13;
    v15 = v13[1];
    *(v0 + 720) = v13[2];
    *(v0 + 736) = v14;
    *(v0 + 688) = v16;
    *(v0 + 704) = v15;
    v18 = v13[5];
    v17 = v13[6];
    v19 = v13[4];
    *(v0 + 793) = *(v13 + 105);
    *(v0 + 768) = v18;
    *(v0 + 784) = v17;
    *(v0 + 752) = v19;
    if (sub_230DF6160(v0 + 688) == 16)
    {
      sub_230DFB3A0(v0 + 560);
      v20 = *(v0 + 8);
      goto LABEL_7;
    }

    sub_230DFB34C();
    swift_allocError();
    *v21 = xmmword_230E6E730;
    swift_willThrow();
    sub_230DFB3A0(v0 + 560);
  }

  v20 = *(v0 + 8);
LABEL_7:

  return v20();
}

uint64_t ServicesIntelligenceXPC.Client.updateConfigurationVersion(version:)(uint64_t a1)
{
  *(v1 + 16) = a1;
  sub_230DF1210(v1 + 16);
  v2 = *(v1 + 96);
  v3 = *(v1 + 128);
  *(v1 + 256) = *(v1 + 112);
  *(v1 + 272) = v3;
  *(v1 + 281) = *(v1 + 137);
  v4 = *(v1 + 32);
  v5 = *(v1 + 64);
  v6 = *(v1 + 80);
  *(v1 + 192) = *(v1 + 48);
  *(v1 + 208) = v5;
  *(v1 + 224) = v6;
  *(v1 + 240) = v2;
  *(v1 + 160) = *(v1 + 16);
  *(v1 + 176) = v4;
  v7 = swift_task_alloc();
  *(v1 + 816) = v7;
  *v7 = v1;
  v7[1] = sub_230DFEDAC;

  return sub_230E01718(v1 + 304, (v1 + 160));
}

uint64_t sub_230DFEDAC()
{
  v2 = *(*v1 + 816);
  v5 = *v1;
  *(*v1 + 824) = v0;

  if (v0)
  {
    v3 = sub_230DFF3F0;
  }

  else
  {
    v3 = sub_230DFEEC0;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_230DFEEC0()
{
  v1 = *(v0 + 368);
  v2 = *(v0 + 384);
  *(v0 + 624) = v1;
  *(v0 + 640) = v2;
  v3 = *(v0 + 400);
  *(v0 + 656) = v3;
  v4 = *(v0 + 304);
  v5 = *(v0 + 320);
  *(v0 + 560) = v4;
  *(v0 + 576) = v5;
  v6 = *(v0 + 336);
  v7 = *(v0 + 352);
  *(v0 + 592) = v6;
  *(v0 + 608) = v7;
  v8 = *(v0 + 409);
  *(v0 + 665) = v8;
  *(v0 + 432) = v4;
  *(v0 + 448) = v5;
  *(v0 + 464) = v6;
  *(v0 + 480) = v7;
  *(v0 + 496) = v1;
  *(v0 + 512) = v2;
  *(v0 + 528) = v3;
  *(v0 + 537) = v8;
  if (sub_230DFABFC(v0 + 432) == 1)
  {
    v9 = sub_230D0519C(v0 + 432);
    v10 = *v9;
    v11 = v9[1];
    sub_230DFB34C();
    swift_allocError();
    *v12 = v10;
    v12[1] = v11;
    swift_willThrow();
  }

  else
  {
    v13 = sub_230D0519C(v0 + 432);
    v14 = v13[3];
    v16 = *v13;
    v15 = v13[1];
    *(v0 + 720) = v13[2];
    *(v0 + 736) = v14;
    *(v0 + 688) = v16;
    *(v0 + 704) = v15;
    v18 = v13[5];
    v17 = v13[6];
    v19 = v13[4];
    *(v0 + 793) = *(v13 + 105);
    *(v0 + 768) = v18;
    *(v0 + 784) = v17;
    *(v0 + 752) = v19;
    if (sub_230DF6160(v0 + 688) == 17)
    {
      sub_230DFB3A0(v0 + 560);
      v20 = *(v0 + 8);
      goto LABEL_7;
    }

    sub_230DFB34C();
    swift_allocError();
    *v21 = xmmword_230E6E730;
    swift_willThrow();
    sub_230DFB3A0(v0 + 560);
  }

  v20 = *(v0 + 8);
LABEL_7:

  return v20();
}

uint64_t ServicesIntelligenceXPC.Client.updateSystemStatus(systemStatus:)(_BYTE *a1)
{
  *(v1 + 16) = *a1;
  sub_230DF11FC(v1 + 16);
  v2 = *(v1 + 96);
  v3 = *(v1 + 128);
  *(v1 + 256) = *(v1 + 112);
  *(v1 + 272) = v3;
  *(v1 + 281) = *(v1 + 137);
  v4 = *(v1 + 32);
  v5 = *(v1 + 64);
  v6 = *(v1 + 80);
  *(v1 + 192) = *(v1 + 48);
  *(v1 + 208) = v5;
  *(v1 + 224) = v6;
  *(v1 + 240) = v2;
  *(v1 + 160) = *(v1 + 16);
  *(v1 + 176) = v4;
  v7 = swift_task_alloc();
  *(v1 + 816) = v7;
  *v7 = v1;
  v7[1] = sub_230DFF134;

  return sub_230E01718(v1 + 304, (v1 + 160));
}

uint64_t sub_230DFF134()
{
  v2 = *(*v1 + 816);
  v5 = *v1;
  *(*v1 + 824) = v0;

  if (v0)
  {
    v3 = sub_230DFF3D8;
  }

  else
  {
    v3 = sub_230DFF248;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_230DFF248()
{
  v1 = *(v0 + 368);
  v2 = *(v0 + 384);
  *(v0 + 624) = v1;
  *(v0 + 640) = v2;
  v3 = *(v0 + 400);
  *(v0 + 656) = v3;
  v4 = *(v0 + 304);
  v5 = *(v0 + 320);
  *(v0 + 560) = v4;
  *(v0 + 576) = v5;
  v6 = *(v0 + 336);
  v7 = *(v0 + 352);
  *(v0 + 592) = v6;
  *(v0 + 608) = v7;
  v8 = *(v0 + 409);
  *(v0 + 665) = v8;
  *(v0 + 432) = v4;
  *(v0 + 448) = v5;
  *(v0 + 464) = v6;
  *(v0 + 480) = v7;
  *(v0 + 496) = v1;
  *(v0 + 512) = v2;
  *(v0 + 528) = v3;
  *(v0 + 537) = v8;
  if (sub_230DFABFC(v0 + 432) == 1)
  {
    v9 = sub_230D0519C(v0 + 432);
    v10 = *v9;
    v11 = v9[1];
    sub_230DFB34C();
    swift_allocError();
    *v12 = v10;
    v12[1] = v11;
    swift_willThrow();
  }

  else
  {
    v13 = sub_230D0519C(v0 + 432);
    v14 = v13[3];
    v16 = *v13;
    v15 = v13[1];
    *(v0 + 720) = v13[2];
    *(v0 + 736) = v14;
    *(v0 + 688) = v16;
    *(v0 + 704) = v15;
    v18 = v13[5];
    v17 = v13[6];
    v19 = v13[4];
    *(v0 + 793) = *(v13 + 105);
    *(v0 + 768) = v18;
    *(v0 + 784) = v17;
    *(v0 + 752) = v19;
    if (sub_230DF6160(v0 + 688) == 18)
    {
      sub_230DFB3A0(v0 + 560);
      v20 = *(v0 + 8);
      goto LABEL_7;
    }

    sub_230DFB34C();
    swift_allocError();
    *v21 = xmmword_230E6E730;
    swift_willThrow();
    sub_230DFB3A0(v0 + 560);
  }

  v20 = *(v0 + 8);
LABEL_7:

  return v20();
}

uint64_t ServicesIntelligenceXPC.Client.refreshTreatment()()
{
  sub_230DF1594(v0 + 16);
  v1 = *(v0 + 128);
  *(v0 + 256) = *(v0 + 112);
  *(v0 + 272) = v1;
  *(v0 + 281) = *(v0 + 137);
  v2 = *(v0 + 64);
  *(v0 + 192) = *(v0 + 48);
  *(v0 + 208) = v2;
  v3 = *(v0 + 96);
  *(v0 + 224) = *(v0 + 80);
  *(v0 + 240) = v3;
  v4 = *(v0 + 32);
  *(v0 + 160) = *(v0 + 16);
  *(v0 + 176) = v4;
  v5 = swift_task_alloc();
  *(v0 + 816) = v5;
  *v5 = v0;
  v5[1] = sub_230DFF4C8;

  return sub_230E01718(v0 + 304, (v0 + 160));
}

uint64_t sub_230DFF4C8()
{
  v2 = *(*v1 + 816);
  v5 = *v1;
  *(*v1 + 824) = v0;

  if (v0)
  {
    v3 = sub_230DFB330;
  }

  else
  {
    v3 = sub_230DFF5DC;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_230DFF5DC()
{
  v1 = *(v0 + 368);
  v2 = *(v0 + 384);
  *(v0 + 624) = v1;
  *(v0 + 640) = v2;
  v3 = *(v0 + 400);
  *(v0 + 656) = v3;
  v4 = *(v0 + 304);
  v5 = *(v0 + 320);
  *(v0 + 560) = v4;
  *(v0 + 576) = v5;
  v6 = *(v0 + 336);
  v7 = *(v0 + 352);
  *(v0 + 592) = v6;
  *(v0 + 608) = v7;
  v8 = *(v0 + 409);
  *(v0 + 665) = v8;
  *(v0 + 432) = v4;
  *(v0 + 448) = v5;
  *(v0 + 464) = v6;
  *(v0 + 480) = v7;
  *(v0 + 496) = v1;
  *(v0 + 512) = v2;
  *(v0 + 528) = v3;
  *(v0 + 537) = v8;
  if (sub_230DFABFC(v0 + 432) == 1)
  {
    v9 = sub_230D0519C(v0 + 432);
    v10 = *v9;
    v11 = v9[1];
    sub_230DFB34C();
    swift_allocError();
    *v12 = v10;
    v12[1] = v11;
    swift_willThrow();
  }

  else
  {
    v13 = sub_230D0519C(v0 + 432);
    v14 = v13[3];
    v16 = *v13;
    v15 = v13[1];
    *(v0 + 720) = v13[2];
    *(v0 + 736) = v14;
    *(v0 + 688) = v16;
    *(v0 + 704) = v15;
    v18 = v13[5];
    v17 = v13[6];
    v19 = v13[4];
    *(v0 + 793) = *(v13 + 105);
    *(v0 + 768) = v18;
    *(v0 + 784) = v17;
    *(v0 + 752) = v19;
    if (sub_230DF6160(v0 + 688) == 3)
    {
      v20 = *sub_230D04CA4(v0 + 688);
      sub_230DFB3A0(v0 + 560);
      v21 = *(v0 + 8);
      v22 = v20;
      goto LABEL_7;
    }

    sub_230DFB34C();
    swift_allocError();
    *v23 = xmmword_230E6E730;
    swift_willThrow();
    sub_230DFB3A0(v0 + 560);
  }

  v21 = *(v0 + 8);
  v22 = 0;
LABEL_7:

  return v21(v22);
}

uint64_t ServicesIntelligenceXPC.Client.fetchTreatments(_:)(_BYTE *a1)
{
  *(v1 + 16) = *a1;
  sub_230DF1584(v1 + 16);
  v2 = *(v1 + 96);
  v3 = *(v1 + 128);
  *(v1 + 256) = *(v1 + 112);
  *(v1 + 272) = v3;
  *(v1 + 281) = *(v1 + 137);
  v4 = *(v1 + 32);
  v5 = *(v1 + 64);
  v6 = *(v1 + 80);
  *(v1 + 192) = *(v1 + 48);
  *(v1 + 208) = v5;
  *(v1 + 224) = v6;
  *(v1 + 240) = v2;
  *(v1 + 160) = *(v1 + 16);
  *(v1 + 176) = v4;
  v7 = swift_task_alloc();
  *(v1 + 816) = v7;
  *v7 = v1;
  v7[1] = sub_230DFF864;

  return sub_230E01718(v1 + 304, (v1 + 160));
}

uint64_t sub_230DFF864()
{
  v2 = *(*v1 + 816);
  v5 = *v1;
  *(*v1 + 824) = v0;

  if (v0)
  {
    v3 = sub_230DFF3D8;
  }

  else
  {
    v3 = sub_230DFF978;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_230DFF978()
{
  v1 = *(v0 + 368);
  v2 = *(v0 + 384);
  *(v0 + 624) = v1;
  *(v0 + 640) = v2;
  v3 = *(v0 + 400);
  *(v0 + 656) = v3;
  v4 = *(v0 + 304);
  v5 = *(v0 + 320);
  *(v0 + 560) = v4;
  *(v0 + 576) = v5;
  v6 = *(v0 + 336);
  v7 = *(v0 + 352);
  *(v0 + 592) = v6;
  *(v0 + 608) = v7;
  v8 = *(v0 + 409);
  *(v0 + 665) = v8;
  *(v0 + 432) = v4;
  *(v0 + 448) = v5;
  *(v0 + 464) = v6;
  *(v0 + 480) = v7;
  *(v0 + 496) = v1;
  *(v0 + 512) = v2;
  *(v0 + 528) = v3;
  *(v0 + 537) = v8;
  if (sub_230DFABFC(v0 + 432) == 1)
  {
    v9 = sub_230D0519C(v0 + 432);
    v10 = *v9;
    v11 = v9[1];
    sub_230DFB34C();
    swift_allocError();
    *v12 = v10;
    v12[1] = v11;
    swift_willThrow();
LABEL_8:
    v24 = *(v0 + 8);

    return v24();
  }

  v13 = sub_230D0519C(v0 + 432);
  v14 = v13[3];
  v16 = *v13;
  v15 = v13[1];
  *(v0 + 720) = v13[2];
  *(v0 + 736) = v14;
  *(v0 + 688) = v16;
  *(v0 + 704) = v15;
  v18 = v13[5];
  v17 = v13[6];
  v19 = v13[4];
  *(v0 + 793) = *(v13 + 105);
  *(v0 + 768) = v18;
  *(v0 + 784) = v17;
  *(v0 + 752) = v19;
  if (sub_230DF6160(v0 + 688) != 4)
  {
    sub_230DFB34C();
    swift_allocError();
    *v23 = xmmword_230E6E730;
    swift_willThrow();
    sub_230DFB3A0(v0 + 560);
    goto LABEL_8;
  }

  v20 = *sub_230D04CA4(v0 + 688);
  v21 = *(v0 + 8);

  return v21(v20);
}

uint64_t ServicesIntelligenceXPC.Client.runUseCase(request:)(uint64_t a1, __int128 *a2)
{
  *(v2 + 1312) = a1;
  v4 = a2[2];
  v3 = a2[3];
  *(v2 + 1152) = v3;
  v5 = a2[4];
  v6 = a2[5];
  *(v2 + 1168) = v5;
  *(v2 + 1184) = v6;
  v7 = *(a2 + 96);
  *(v2 + 1200) = v7;
  v8 = *a2;
  v9 = a2[1];
  *(v2 + 1104) = *a2;
  *(v2 + 1120) = v9;
  *(v2 + 1136) = v4;
  *(v2 + 16) = v8;
  *(v2 + 32) = v9;
  *(v2 + 112) = v7;
  *(v2 + 48) = v4;
  *(v2 + 64) = v3;
  *(v2 + 80) = v5;
  *(v2 + 96) = v6;
  sub_230DF1570(v2 + 16);
  v10 = *(v2 + 128);
  *(v2 + 256) = *(v2 + 112);
  *(v2 + 272) = v10;
  *(v2 + 281) = *(v2 + 137);
  v11 = *(v2 + 64);
  *(v2 + 192) = *(v2 + 48);
  *(v2 + 208) = v11;
  v12 = *(v2 + 96);
  *(v2 + 224) = *(v2 + 80);
  *(v2 + 240) = v12;
  v13 = *(v2 + 32);
  *(v2 + 160) = *(v2 + 16);
  *(v2 + 176) = v13;
  sub_230DC7630(v2 + 1104, v2 + 1208);
  v14 = swift_task_alloc();
  *(v2 + 1320) = v14;
  *v14 = v2;
  v14[1] = sub_230DFFC4C;

  return sub_230E01718(v2 + 592, (v2 + 160));
}

uint64_t sub_230DFFC4C()
{
  v2 = *v1;
  v3 = (*v1 + 160);
  v4 = *(*v1 + 1320);
  v19 = *v1;
  *(*v1 + 1328) = v0;

  if (v0)
  {
    v2[19] = *v3;
    v5 = v3[1];
    v6 = v3[2];
    v7 = v3[4];
    v2[22] = v3[3];
    v2[23] = v7;
    v2[20] = v5;
    v2[21] = v6;
    v8 = v3[5];
    v9 = v3[6];
    v10 = v3[7];
    *(v2 + 425) = *(v3 + 121);
    v2[25] = v9;
    v2[26] = v10;
    v2[24] = v8;
    sub_230DFC328((v2 + 19));
    v11 = sub_230DFFF98;
  }

  else
  {
    v2[28] = *v3;
    v12 = v3[1];
    v13 = v3[2];
    v14 = v3[4];
    v2[31] = v3[3];
    v2[32] = v14;
    v2[29] = v12;
    v2[30] = v13;
    v15 = v3[5];
    v16 = v3[6];
    v17 = v3[7];
    *(v2 + 569) = *(v3 + 121);
    v2[34] = v16;
    v2[35] = v17;
    v2[33] = v15;
    sub_230DFC328((v2 + 28));
    v11 = sub_230DFFDDC;
  }

  return MEMORY[0x2822009F8](v11, 0, 0);
}

uint64_t sub_230DFFDDC()
{
  v1 = *(v0 + 656);
  v2 = *(v0 + 672);
  *(v0 + 912) = v1;
  *(v0 + 928) = v2;
  v3 = *(v0 + 688);
  *(v0 + 944) = v3;
  v4 = *(v0 + 592);
  v5 = *(v0 + 608);
  *(v0 + 848) = v4;
  *(v0 + 864) = v5;
  v6 = *(v0 + 624);
  v7 = *(v0 + 640);
  *(v0 + 880) = v6;
  *(v0 + 896) = v7;
  v8 = *(v0 + 697);
  *(v0 + 953) = v8;
  *(v0 + 720) = v4;
  *(v0 + 736) = v5;
  *(v0 + 752) = v6;
  *(v0 + 768) = v7;
  *(v0 + 784) = v1;
  *(v0 + 800) = v2;
  *(v0 + 816) = v3;
  *(v0 + 825) = v8;
  if (sub_230DFABFC(v0 + 720) == 1)
  {
    v9 = sub_230D0519C(v0 + 720);
    v10 = *v9;
    v11 = v9[1];
    sub_230DFB34C();
    swift_allocError();
    *v12 = v10;
    v12[1] = v11;
    swift_willThrow();
  }

  else
  {
    v13 = sub_230D0519C(v0 + 720);
    v14 = v13[3];
    v16 = *v13;
    v15 = v13[1];
    *(v0 + 1008) = v13[2];
    *(v0 + 1024) = v14;
    *(v0 + 976) = v16;
    *(v0 + 992) = v15;
    v18 = v13[5];
    v17 = v13[6];
    v19 = v13[4];
    *(v0 + 1081) = *(v13 + 105);
    *(v0 + 1056) = v18;
    *(v0 + 1072) = v17;
    *(v0 + 1040) = v19;
    if (sub_230DF6160(v0 + 976) == 5)
    {
      v20 = *(v0 + 1312);
      v21 = sub_230D04CA4(v0 + 976);
      v22 = v21[3];
      v24 = *v21;
      v23 = v21[1];
      v20[2] = v21[2];
      v20[3] = v22;
      *v20 = v24;
      v20[1] = v23;
      v26 = v21[5];
      v25 = v21[6];
      v27 = v21[4];
      *(v20 + 105) = *(v21 + 105);
      v20[5] = v26;
      v20[6] = v25;
      v20[4] = v27;
      v28 = *(v0 + 8);
      goto LABEL_7;
    }

    sub_230DFB34C();
    swift_allocError();
    *v29 = xmmword_230E6E730;
    swift_willThrow();
    sub_230DFB3A0(v0 + 848);
  }

  v28 = *(v0 + 8);
LABEL_7:

  return v28();
}

uint64_t ServicesIntelligenceXPC.Client.deleteFromVectorDatabase(domain:databaseName:request:)(uint64_t a1, _BYTE *a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  *(v5 + 1104) = a1;
  v6 = *a5;
  *(v5 + 16) = *a2;
  *(v5 + 24) = a3;
  *(v5 + 32) = a4;
  *(v5 + 40) = v6;
  sub_230DF1380(v5 + 16);
  v7 = *(v5 + 96);
  v8 = *(v5 + 128);
  *(v5 + 256) = *(v5 + 112);
  *(v5 + 272) = v8;
  *(v5 + 281) = *(v5 + 137);
  v9 = *(v5 + 32);
  v10 = *(v5 + 64);
  v11 = *(v5 + 80);
  *(v5 + 192) = *(v5 + 48);
  *(v5 + 208) = v10;
  *(v5 + 224) = v11;
  *(v5 + 240) = v7;
  *(v5 + 160) = *(v5 + 16);
  *(v5 + 176) = v9;

  v12 = swift_task_alloc();
  *(v5 + 1112) = v12;
  *v12 = v5;
  v12[1] = sub_230E000C4;

  return sub_230E01718(v5 + 592, (v5 + 160));
}

uint64_t sub_230E000C4()
{
  v2 = *v1;
  v3 = (*v1 + 160);
  v4 = *(*v1 + 1112);
  v19 = *v1;
  *(*v1 + 1120) = v0;

  if (v0)
  {
    v2[19] = *v3;
    v5 = v3[1];
    v6 = v3[2];
    v7 = v3[4];
    v2[22] = v3[3];
    v2[23] = v7;
    v2[20] = v5;
    v2[21] = v6;
    v8 = v3[5];
    v9 = v3[6];
    v10 = v3[7];
    *(v2 + 425) = *(v3 + 121);
    v2[25] = v9;
    v2[26] = v10;
    v2[24] = v8;
    sub_230DFC328((v2 + 19));
    v11 = sub_230DFF3F8;
  }

  else
  {
    v2[28] = *v3;
    v12 = v3[1];
    v13 = v3[2];
    v14 = v3[4];
    v2[31] = v3[3];
    v2[32] = v14;
    v2[29] = v12;
    v2[30] = v13;
    v15 = v3[5];
    v16 = v3[6];
    v17 = v3[7];
    *(v2 + 569) = *(v3 + 121);
    v2[34] = v16;
    v2[35] = v17;
    v2[33] = v15;
    sub_230DFC328((v2 + 28));
    v11 = sub_230E00254;
  }

  return MEMORY[0x2822009F8](v11, 0, 0);
}

uint64_t sub_230E00254()
{
  v1 = *(v0 + 656);
  v2 = *(v0 + 672);
  *(v0 + 912) = v1;
  *(v0 + 928) = v2;
  v3 = *(v0 + 688);
  *(v0 + 944) = v3;
  v4 = *(v0 + 592);
  v5 = *(v0 + 608);
  *(v0 + 848) = v4;
  *(v0 + 864) = v5;
  v6 = *(v0 + 624);
  v7 = *(v0 + 640);
  *(v0 + 880) = v6;
  *(v0 + 896) = v7;
  v8 = *(v0 + 697);
  *(v0 + 953) = v8;
  *(v0 + 720) = v4;
  *(v0 + 736) = v5;
  *(v0 + 752) = v6;
  *(v0 + 768) = v7;
  *(v0 + 784) = v1;
  *(v0 + 800) = v2;
  *(v0 + 816) = v3;
  *(v0 + 825) = v8;
  if (sub_230DFABFC(v0 + 720) == 1)
  {
    v9 = sub_230D0519C(v0 + 720);
    v10 = *v9;
    v11 = v9[1];
    sub_230DFB34C();
    swift_allocError();
    *v12 = v10;
    v12[1] = v11;
    swift_willThrow();
  }

  else
  {
    v13 = sub_230D0519C(v0 + 720);
    v14 = v13[3];
    v16 = *v13;
    v15 = v13[1];
    *(v0 + 1008) = v13[2];
    *(v0 + 1024) = v14;
    *(v0 + 976) = v16;
    *(v0 + 992) = v15;
    v18 = v13[5];
    v17 = v13[6];
    v19 = v13[4];
    *(v0 + 1081) = *(v13 + 105);
    *(v0 + 1056) = v18;
    *(v0 + 1072) = v17;
    *(v0 + 1040) = v19;
    if (sub_230DF6160(v0 + 976) == 13)
    {
      v20 = *(v0 + 1104);
      v21 = *sub_230D04CA4(v0 + 976);
      sub_230DFB3A0(v0 + 848);
      *v20 = v21;
      v22 = *(v0 + 8);
      goto LABEL_7;
    }

    sub_230DFB34C();
    swift_allocError();
    *v23 = xmmword_230E6E730;
    swift_willThrow();
    sub_230DFB3A0(v0 + 848);
  }

  v22 = *(v0 + 8);
LABEL_7:

  return v22();
}

uint64_t ServicesIntelligenceXPC.Client.deleteFromVectorDatabase(databaseName:request:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5[141] = v4;
  v5[140] = a3;
  v5[139] = a2;
  v5[138] = a1;
  v5[142] = *a4;
  return MEMORY[0x2822009F8](sub_230E0042C, 0, 0);
}

uint64_t sub_230E0042C()
{
  sub_230DCB5D4((v0 + 153));
  v1 = *(v0 + 1136);
  v2 = *(v0 + 1120);
  v3 = *(v0 + 1112);
  *(v0 + 16) = *(v0 + 153);
  *(v0 + 24) = v3;
  *(v0 + 32) = v2;
  *(v0 + 40) = v1;
  sub_230DF1380(v0 + 16);
  v4 = *(v0 + 96);
  v5 = *(v0 + 128);
  *(v0 + 256) = *(v0 + 112);
  *(v0 + 272) = v5;
  *(v0 + 281) = *(v0 + 137);
  v6 = *(v0 + 32);
  v7 = *(v0 + 64);
  v8 = *(v0 + 80);
  *(v0 + 192) = *(v0 + 48);
  *(v0 + 208) = v7;
  *(v0 + 224) = v8;
  *(v0 + 240) = v4;
  *(v0 + 160) = *(v0 + 16);
  *(v0 + 176) = v6;

  v9 = swift_task_alloc();
  *(v0 + 1144) = v9;
  *v9 = v0;
  v9[1] = sub_230E00590;
  v10 = *(v0 + 1128);

  return sub_230E01718(v0 + 592, (v0 + 160));
}

uint64_t sub_230E00590()
{
  v2 = *v1;
  v3 = (*v1 + 160);
  v4 = *(*v1 + 1144);
  v19 = *v1;
  *(*v1 + 1152) = v0;

  if (v0)
  {
    v2[19] = *v3;
    v5 = v3[1];
    v6 = v3[2];
    v7 = v3[4];
    v2[22] = v3[3];
    v2[23] = v7;
    v2[20] = v5;
    v2[21] = v6;
    v8 = v3[5];
    v9 = v3[6];
    v10 = v3[7];
    *(v2 + 425) = *(v3 + 121);
    v2[25] = v9;
    v2[26] = v10;
    v2[24] = v8;
    sub_230DFC328((v2 + 19));
    v11 = sub_230E00720;
  }

  else
  {
    v2[28] = *v3;
    v12 = v3[1];
    v13 = v3[2];
    v14 = v3[4];
    v2[31] = v3[3];
    v2[32] = v14;
    v2[29] = v12;
    v2[30] = v13;
    v15 = v3[5];
    v16 = v3[6];
    v17 = v3[7];
    *(v2 + 569) = *(v3 + 121);
    v2[34] = v16;
    v2[35] = v17;
    v2[33] = v15;
    sub_230DFC328((v2 + 28));
    v11 = sub_230E00254;
  }

  return MEMORY[0x2822009F8](v11, 0, 0);
}

uint64_t ServicesIntelligenceXPC.Client.insertIntoVectorDatabase(domain:databaseName:request:)(uint64_t a1, _BYTE *a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  *(v5 + 1104) = a1;
  v6 = *a5;
  *(v5 + 16) = *a2;
  *(v5 + 24) = a3;
  *(v5 + 32) = a4;
  *(v5 + 40) = v6;
  sub_230DF1318(v5 + 16);
  v7 = *(v5 + 96);
  v8 = *(v5 + 128);
  *(v5 + 256) = *(v5 + 112);
  *(v5 + 272) = v8;
  *(v5 + 281) = *(v5 + 137);
  v9 = *(v5 + 32);
  v10 = *(v5 + 64);
  v11 = *(v5 + 80);
  *(v5 + 192) = *(v5 + 48);
  *(v5 + 208) = v10;
  *(v5 + 224) = v11;
  *(v5 + 240) = v7;
  *(v5 + 160) = *(v5 + 16);
  *(v5 + 176) = v9;

  v12 = swift_task_alloc();
  *(v5 + 1112) = v12;
  *v12 = v5;
  v12[1] = sub_230E0084C;

  return sub_230E01718(v5 + 592, (v5 + 160));
}

uint64_t sub_230E0084C()
{
  v2 = *v1;
  v3 = (*v1 + 160);
  v4 = *(*v1 + 1112);
  v19 = *v1;
  *(*v1 + 1120) = v0;

  if (v0)
  {
    v2[19] = *v3;
    v5 = v3[1];
    v6 = v3[2];
    v7 = v3[4];
    v2[22] = v3[3];
    v2[23] = v7;
    v2[20] = v5;
    v2[21] = v6;
    v8 = v3[5];
    v9 = v3[6];
    v10 = v3[7];
    *(v2 + 425) = *(v3 + 121);
    v2[25] = v9;
    v2[26] = v10;
    v2[24] = v8;
    sub_230DFC328((v2 + 19));
    v11 = sub_230DFF3F8;
  }

  else
  {
    v2[28] = *v3;
    v12 = v3[1];
    v13 = v3[2];
    v14 = v3[4];
    v2[31] = v3[3];
    v2[32] = v14;
    v2[29] = v12;
    v2[30] = v13;
    v15 = v3[5];
    v16 = v3[6];
    v17 = v3[7];
    *(v2 + 569) = *(v3 + 121);
    v2[34] = v16;
    v2[35] = v17;
    v2[33] = v15;
    sub_230DFC328((v2 + 28));
    v11 = sub_230E009DC;
  }

  return MEMORY[0x2822009F8](v11, 0, 0);
}

uint64_t sub_230E009DC()
{
  v1 = *(v0 + 656);
  v2 = *(v0 + 672);
  *(v0 + 912) = v1;
  *(v0 + 928) = v2;
  v3 = *(v0 + 688);
  *(v0 + 944) = v3;
  v4 = *(v0 + 592);
  v5 = *(v0 + 608);
  *(v0 + 848) = v4;
  *(v0 + 864) = v5;
  v6 = *(v0 + 624);
  v7 = *(v0 + 640);
  *(v0 + 880) = v6;
  *(v0 + 896) = v7;
  v8 = *(v0 + 697);
  *(v0 + 953) = v8;
  *(v0 + 720) = v4;
  *(v0 + 736) = v5;
  *(v0 + 752) = v6;
  *(v0 + 768) = v7;
  *(v0 + 784) = v1;
  *(v0 + 800) = v2;
  *(v0 + 816) = v3;
  *(v0 + 825) = v8;
  if (sub_230DFABFC(v0 + 720) == 1)
  {
    v9 = sub_230D0519C(v0 + 720);
    v10 = *v9;
    v11 = v9[1];
    sub_230DFB34C();
    swift_allocError();
    *v12 = v10;
    v12[1] = v11;
    swift_willThrow();
  }

  else
  {
    v13 = sub_230D0519C(v0 + 720);
    v14 = v13[3];
    v16 = *v13;
    v15 = v13[1];
    *(v0 + 1008) = v13[2];
    *(v0 + 1024) = v14;
    *(v0 + 976) = v16;
    *(v0 + 992) = v15;
    v18 = v13[5];
    v17 = v13[6];
    v19 = v13[4];
    *(v0 + 1081) = *(v13 + 105);
    *(v0 + 1056) = v18;
    *(v0 + 1072) = v17;
    *(v0 + 1040) = v19;
    if (sub_230DF6160(v0 + 976) == 14)
    {
      v20 = *(v0 + 1104);
      v21 = *sub_230D04CA4(v0 + 976);
      sub_230DFB3A0(v0 + 848);
      *v20 = v21;
      v22 = *(v0 + 8);
      goto LABEL_7;
    }

    sub_230DFB34C();
    swift_allocError();
    *v23 = xmmword_230E6E730;
    swift_willThrow();
    sub_230DFB3A0(v0 + 848);
  }

  v22 = *(v0 + 8);
LABEL_7:

  return v22();
}

uint64_t ServicesIntelligenceXPC.Client.insertIntoVectorDatabase(databaseName:request:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5[141] = v4;
  v5[140] = a3;
  v5[139] = a2;
  v5[138] = a1;
  v5[142] = *a4;
  return MEMORY[0x2822009F8](sub_230E00BB4, 0, 0);
}

uint64_t sub_230E00BB4()
{
  sub_230DCB5D4((v0 + 153));
  v1 = *(v0 + 1136);
  v2 = *(v0 + 1120);
  v3 = *(v0 + 1112);
  *(v0 + 16) = *(v0 + 153);
  *(v0 + 24) = v3;
  *(v0 + 32) = v2;
  *(v0 + 40) = v1;
  sub_230DF1318(v0 + 16);
  v4 = *(v0 + 96);
  v5 = *(v0 + 128);
  *(v0 + 256) = *(v0 + 112);
  *(v0 + 272) = v5;
  *(v0 + 281) = *(v0 + 137);
  v6 = *(v0 + 32);
  v7 = *(v0 + 64);
  v8 = *(v0 + 80);
  *(v0 + 192) = *(v0 + 48);
  *(v0 + 208) = v7;
  *(v0 + 224) = v8;
  *(v0 + 240) = v4;
  *(v0 + 160) = *(v0 + 16);
  *(v0 + 176) = v6;

  v9 = swift_task_alloc();
  *(v0 + 1144) = v9;
  *v9 = v0;
  v9[1] = sub_230E00D18;
  v10 = *(v0 + 1128);

  return sub_230E01718(v0 + 592, (v0 + 160));
}

uint64_t sub_230E00D18()
{
  v2 = *v1;
  v3 = (*v1 + 160);
  v4 = *(*v1 + 1144);
  v19 = *v1;
  *(*v1 + 1152) = v0;

  if (v0)
  {
    v2[19] = *v3;
    v5 = v3[1];
    v6 = v3[2];
    v7 = v3[4];
    v2[22] = v3[3];
    v2[23] = v7;
    v2[20] = v5;
    v2[21] = v6;
    v8 = v3[5];
    v9 = v3[6];
    v10 = v3[7];
    *(v2 + 425) = *(v3 + 121);
    v2[25] = v9;
    v2[26] = v10;
    v2[24] = v8;
    sub_230DFC328((v2 + 19));
    v11 = sub_230E0166C;
  }

  else
  {
    v2[28] = *v3;
    v12 = v3[1];
    v13 = v3[2];
    v14 = v3[4];
    v2[31] = v3[3];
    v2[32] = v14;
    v2[29] = v12;
    v2[30] = v13;
    v15 = v3[5];
    v16 = v3[6];
    v17 = v3[7];
    *(v2 + 569) = *(v3 + 121);
    v2[34] = v16;
    v2[35] = v17;
    v2[33] = v15;
    sub_230DFC328((v2 + 28));
    v11 = sub_230E009DC;
  }

  return MEMORY[0x2822009F8](v11, 0, 0);
}

uint64_t ServicesIntelligenceXPC.Client.searchVectorDatabase(domain:databaseName:request:)(uint64_t a1, _BYTE *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 1104) = a1;
  v6 = *a5;
  v7 = *(a5 + 24);
  *(v5 + 16) = *a2;
  *(v5 + 24) = a3;
  *(v5 + 32) = a4;
  *(v5 + 40) = v6;
  v15 = *(a5 + 8);
  *(v5 + 48) = v15;
  *(v5 + 64) = v7;
  sub_230DF12B0(v5 + 16);
  v8 = *(v5 + 96);
  v9 = *(v5 + 128);
  *(v5 + 256) = *(v5 + 112);
  *(v5 + 272) = v9;
  *(v5 + 281) = *(v5 + 137);
  v10 = *(v5 + 32);
  v11 = *(v5 + 64);
  v12 = *(v5 + 80);
  *(v5 + 192) = *(v5 + 48);
  *(v5 + 208) = v11;
  *(v5 + 224) = v12;
  *(v5 + 240) = v8;
  *(v5 + 160) = *(v5 + 16);
  *(v5 + 176) = v10;

  sub_230D0DD0C(v6, v15);
  v13 = swift_task_alloc();
  *(v5 + 1112) = v13;
  *v13 = v5;
  v13[1] = sub_230E00FD4;

  return sub_230E01718(v5 + 592, (v5 + 160));
}

uint64_t sub_230E00FD4()
{
  v2 = *v1;
  v3 = (*v1 + 160);
  v4 = *(*v1 + 1112);
  v19 = *v1;
  *(*v1 + 1120) = v0;

  if (v0)
  {
    v2[19] = *v3;
    v5 = v3[1];
    v6 = v3[2];
    v7 = v3[4];
    v2[22] = v3[3];
    v2[23] = v7;
    v2[20] = v5;
    v2[21] = v6;
    v8 = v3[5];
    v9 = v3[6];
    v10 = v3[7];
    *(v2 + 425) = *(v3 + 121);
    v2[25] = v9;
    v2[26] = v10;
    v2[24] = v8;
    sub_230DFC328((v2 + 19));
    v11 = sub_230DFC884;
  }

  else
  {
    v2[28] = *v3;
    v12 = v3[1];
    v13 = v3[2];
    v14 = v3[4];
    v2[31] = v3[3];
    v2[32] = v14;
    v2[29] = v12;
    v2[30] = v13;
    v15 = v3[5];
    v16 = v3[6];
    v17 = v3[7];
    *(v2 + 569) = *(v3 + 121);
    v2[34] = v16;
    v2[35] = v17;
    v2[33] = v15;
    sub_230DFC328((v2 + 28));
    v11 = sub_230E01164;
  }

  return MEMORY[0x2822009F8](v11, 0, 0);
}

uint64_t sub_230E01164()
{
  v1 = *(v0 + 656);
  v2 = *(v0 + 672);
  *(v0 + 912) = v1;
  *(v0 + 928) = v2;
  v3 = *(v0 + 688);
  *(v0 + 944) = v3;
  v4 = *(v0 + 592);
  v5 = *(v0 + 608);
  *(v0 + 848) = v4;
  *(v0 + 864) = v5;
  v6 = *(v0 + 624);
  v7 = *(v0 + 640);
  *(v0 + 880) = v6;
  *(v0 + 896) = v7;
  v8 = *(v0 + 697);
  *(v0 + 953) = v8;
  *(v0 + 720) = v4;
  *(v0 + 736) = v5;
  *(v0 + 752) = v6;
  *(v0 + 768) = v7;
  *(v0 + 784) = v1;
  *(v0 + 800) = v2;
  *(v0 + 816) = v3;
  *(v0 + 825) = v8;
  if (sub_230DFABFC(v0 + 720) == 1)
  {
    v9 = sub_230D0519C(v0 + 720);
    v10 = *v9;
    v11 = v9[1];
    sub_230DFB34C();
    swift_allocError();
    *v12 = v10;
    v12[1] = v11;
    swift_willThrow();
  }

  else
  {
    v13 = sub_230D0519C(v0 + 720);
    v14 = v13[3];
    v16 = *v13;
    v15 = v13[1];
    *(v0 + 1008) = v13[2];
    *(v0 + 1024) = v14;
    *(v0 + 976) = v16;
    *(v0 + 992) = v15;
    v18 = v13[5];
    v17 = v13[6];
    v19 = v13[4];
    *(v0 + 1081) = *(v13 + 105);
    *(v0 + 1056) = v18;
    *(v0 + 1072) = v17;
    *(v0 + 1040) = v19;
    if (sub_230DF6160(v0 + 976) == 15)
    {
      v20 = *(v0 + 1104);
      *v20 = *sub_230D04CA4(v0 + 976);
      v21 = *(v0 + 8);
      goto LABEL_7;
    }

    sub_230DFB34C();
    swift_allocError();
    *v22 = xmmword_230E6E730;
    swift_willThrow();
    sub_230DFB3A0(v0 + 848);
  }

  v21 = *(v0 + 8);
LABEL_7:

  return v21();
}

uint64_t ServicesIntelligenceXPC.Client.searchVectorDatabase(databaseName:request:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v5 + 1128) = v4;
  *(v5 + 1120) = a3;
  *(v5 + 1112) = a2;
  *(v5 + 1104) = a1;
  *(v5 + 1136) = *a4;
  *(v5 + 1152) = *(a4 + 16);
  *(v5 + 154) = *(a4 + 24);
  return MEMORY[0x2822009F8](sub_230E01344, 0, 0);
}

uint64_t sub_230E01344()
{
  sub_230DCB5D4((v0 + 153));
  v1 = *(v0 + 154);
  v2 = *(v0 + 1136);
  v3 = *(v0 + 1120);
  v4 = *(v0 + 1112);
  *(v0 + 16) = *(v0 + 153);
  *(v0 + 24) = v4;
  *(v0 + 32) = v3;
  *(v0 + 40) = v2;
  v13 = *(v0 + 1144);
  *(v0 + 48) = v13;
  *(v0 + 64) = v1;
  sub_230DF12B0(v0 + 16);
  v5 = *(v0 + 96);
  v6 = *(v0 + 128);
  *(v0 + 256) = *(v0 + 112);
  *(v0 + 272) = v6;
  *(v0 + 281) = *(v0 + 137);
  v7 = *(v0 + 32);
  v8 = *(v0 + 64);
  v9 = *(v0 + 80);
  *(v0 + 192) = *(v0 + 48);
  *(v0 + 208) = v8;
  *(v0 + 224) = v9;
  *(v0 + 240) = v5;
  *(v0 + 160) = *(v0 + 16);
  *(v0 + 176) = v7;

  sub_230D0DD0C(v2, v13);
  v10 = swift_task_alloc();
  *(v0 + 1160) = v10;
  *v10 = v0;
  v10[1] = sub_230E014C4;
  v11 = *(v0 + 1128);

  return sub_230E01718(v0 + 592, (v0 + 160));
}

uint64_t sub_230E014C4()
{
  v2 = *v1;
  v3 = (*v1 + 160);
  v4 = *(*v1 + 1160);
  v19 = *v1;
  *(*v1 + 1168) = v0;

  if (v0)
  {
    v2[19] = *v3;
    v5 = v3[1];
    v6 = v3[2];
    v7 = v3[4];
    v2[22] = v3[3];
    v2[23] = v7;
    v2[20] = v5;
    v2[21] = v6;
    v8 = v3[5];
    v9 = v3[6];
    v10 = v3[7];
    *(v2 + 425) = *(v3 + 121);
    v2[25] = v9;
    v2[26] = v10;
    v2[24] = v8;
    sub_230DFC328((v2 + 19));
    v11 = sub_230E01654;
  }

  else
  {
    v2[28] = *v3;
    v12 = v3[1];
    v13 = v3[2];
    v14 = v3[4];
    v2[31] = v3[3];
    v2[32] = v14;
    v2[29] = v12;
    v2[30] = v13;
    v15 = v3[5];
    v16 = v3[6];
    v17 = v3[7];
    *(v2 + 569) = *(v3 + 121);
    v2[34] = v16;
    v2[35] = v17;
    v2[33] = v15;
    sub_230DFC328((v2 + 28));
    v11 = sub_230E01164;
  }

  return MEMORY[0x2822009F8](v11, 0, 0);
}

uint64_t static ServicesIntelligenceXPC.Client.shared.getter()
{
  type metadata accessor for ServicesIntelligenceXPC.Client();

  return swift_initStaticObject();
}

uint64_t sub_230E01718(uint64_t a1, _OWORD *a2)
{
  *(v2 + 160) = a1;
  v4 = *(*(sub_230E68DB0() - 8) + 64) + 15;
  *(v2 + 168) = swift_task_alloc();
  v5 = a2[7];
  *(v2 + 112) = a2[6];
  *(v2 + 128) = v5;
  *(v2 + 137) = *(a2 + 121);
  v6 = a2[3];
  *(v2 + 48) = a2[2];
  *(v2 + 64) = v6;
  v7 = a2[5];
  *(v2 + 80) = a2[4];
  *(v2 + 96) = v7;
  v8 = a2[1];
  *(v2 + 16) = *a2;
  *(v2 + 32) = v8;

  return MEMORY[0x2822009F8](sub_230E017D4, 0, 0);
}

uint64_t sub_230E017D4()
{
  v1 = v0[21];
  sub_230E68950();
  sub_230E68DE0();
  sub_230E68DA0();
  v2 = sub_230E68D90();
  v0[22] = v2;
  v3 = v2;
  sub_230E68950();
  v4 = swift_task_alloc();
  v0[23] = v4;
  *(v4 + 16) = v3;
  *(v4 + 24) = v0 + 2;
  v5 = *(MEMORY[0x277D85A40] + 4);
  v6 = swift_task_alloc();
  v0[24] = v6;
  *v6 = v0;
  v6[1] = sub_230E019C0;
  v7 = v0[20];

  return MEMORY[0x2822008A0](v7, 0, 0, 0x75716552646E6573, 0xEF293A5F28747365, sub_230E02AC8, v4, &type metadata for ServicesIntelligenceXPCResult);
}

uint64_t sub_230E019C0()
{
  v2 = *v1;
  v3 = *(*v1 + 192);
  v7 = *v1;
  *(*v1 + 200) = v0;

  if (v0)
  {
    v4 = sub_230E01B90;
  }

  else
  {
    v5 = *(v2 + 184);

    v4 = sub_230E01ADC;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_230E01ADC()
{
  v1 = v0[21];
  v2 = v0[22];
  sub_230E68950();
  sub_230E68DD0();

  v3 = v0[1];

  return v3();
}

uint64_t sub_230E01B90()
{
  v2 = v0[22];
  v1 = v0[23];

  sub_230E68950();
  sub_230E68DD0();

  v3 = v0[25];
  v4 = v0[21];

  v5 = v0[1];

  return v5();
}

uint64_t sub_230E01C48(uint64_t a1, uint64_t a2, _OWORD *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5D738, &qword_230E7EEE8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5, v8);
  v10 = v18 - v9;
  sub_230E68950();
  v11 = a3[7];
  v18[7] = a3[6];
  v19[0] = v11;
  *(v19 + 9) = *(a3 + 121);
  v12 = a3[3];
  v18[3] = a3[2];
  v18[4] = v12;
  v13 = a3[5];
  v18[5] = a3[4];
  v18[6] = v13;
  v14 = a3[1];
  v18[1] = *a3;
  v18[2] = v14;
  (*(v6 + 16))(v10, a1, v5);
  v15 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v16 = swift_allocObject();
  (*(v6 + 32))(v16 + v15, v10, v5);
  sub_230E02B4C();
  sub_230E02BA0();
  sub_230E68DC0();
}

uint64_t sub_230E01E50(_OWORD *a1)
{
  v2 = a1[5];
  v40[4] = a1[4];
  v40[5] = v2;
  v41[0] = a1[6];
  *(v41 + 10) = *(a1 + 106);
  v3 = a1[1];
  v40[0] = *a1;
  v40[1] = v3;
  v4 = a1[3];
  v40[2] = a1[2];
  v40[3] = v4;
  if (sub_230E02BF4(v40) == 1)
  {
    v8 = *nullsub_1(v40, v5, v6, v7);
    sub_230E68950();
    *&v31[0] = v8;
    v9 = a1[5];
    v37 = a1[4];
    v38 = v9;
    v39[0] = a1[6];
    *(v39 + 10) = *(a1 + 106);
    v10 = a1[1];
    v33 = *a1;
    v34 = v10;
    v11 = a1[3];
    v35 = a1[2];
    v36 = v11;
    v15 = *nullsub_1(&v33, v12, v13, v14);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5D738, &qword_230E7EEE8);
    return sub_230E692E0();
  }

  else
  {
    v17 = nullsub_1(v40, v5, v6, v7);
    v18 = a1[5];
    v37 = a1[4];
    v38 = v18;
    v39[0] = a1[6];
    *(v39 + 10) = *(a1 + 106);
    v19 = a1[1];
    v33 = *a1;
    v34 = v19;
    v20 = a1[3];
    v35 = a1[2];
    v36 = v20;
    v24 = nullsub_1(&v33, v21, v22, v23);
    sub_230E02BFC(v24, v31);
    sub_230E68950();
    v25 = *v17;
    v26 = v17[1];
    v27 = v17[3];
    v31[2] = v17[2];
    v31[3] = v27;
    v31[0] = v25;
    v31[1] = v26;
    v28 = v17[4];
    v29 = v17[5];
    v30 = v17[6];
    *&v32[9] = *(v17 + 105);
    v31[5] = v29;
    *v32 = v30;
    v31[4] = v28;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5D738, &qword_230E7EEE8);
    return sub_230E692F0();
  }
}

uint64_t sub_230E02008()
{
  sub_230DF163C(v0 + 16);
  v1 = *(v0 + 128);
  *(v0 + 256) = *(v0 + 112);
  *(v0 + 272) = v1;
  *(v0 + 281) = *(v0 + 137);
  v2 = *(v0 + 64);
  *(v0 + 192) = *(v0 + 48);
  *(v0 + 208) = v2;
  v3 = *(v0 + 96);
  *(v0 + 224) = *(v0 + 80);
  *(v0 + 240) = v3;
  v4 = *(v0 + 32);
  *(v0 + 160) = *(v0 + 16);
  *(v0 + 176) = v4;
  v5 = swift_task_alloc();
  *(v0 + 816) = v5;
  *v5 = v0;
  v5[1] = sub_230E020D4;

  return sub_230E01718(v0 + 304, (v0 + 160));
}

uint64_t sub_230E020D4()
{
  v2 = *(*v1 + 816);
  v5 = *v1;
  *(*v1 + 824) = v0;

  if (v0)
  {
    v3 = sub_230DFF3D8;
  }

  else
  {
    v3 = sub_230E021E8;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_230E021E8()
{
  v1 = *(v0 + 368);
  v2 = *(v0 + 384);
  *(v0 + 624) = v1;
  *(v0 + 640) = v2;
  v3 = *(v0 + 400);
  *(v0 + 656) = v3;
  v4 = *(v0 + 304);
  v5 = *(v0 + 320);
  *(v0 + 560) = v4;
  *(v0 + 576) = v5;
  v6 = *(v0 + 336);
  v7 = *(v0 + 352);
  *(v0 + 592) = v6;
  *(v0 + 608) = v7;
  v8 = *(v0 + 409);
  *(v0 + 665) = v8;
  *(v0 + 432) = v4;
  *(v0 + 448) = v5;
  *(v0 + 464) = v6;
  *(v0 + 480) = v7;
  *(v0 + 496) = v1;
  *(v0 + 512) = v2;
  *(v0 + 528) = v3;
  *(v0 + 537) = v8;
  if (sub_230DFABFC(v0 + 432) == 1)
  {
    v9 = sub_230D0519C(v0 + 432);
    v10 = *v9;
    v11 = v9[1];
    sub_230DFB34C();
    swift_allocError();
    *v12 = v10;
    v12[1] = v11;
    swift_willThrow();
LABEL_5:
    v21 = *(v0 + 8);

    return v21();
  }

  v13 = sub_230D0519C(v0 + 432);
  v14 = v13[3];
  v16 = *v13;
  v15 = v13[1];
  *(v0 + 720) = v13[2];
  *(v0 + 736) = v14;
  *(v0 + 688) = v16;
  *(v0 + 704) = v15;
  v18 = v13[5];
  v17 = v13[6];
  v19 = v13[4];
  *(v0 + 793) = *(v13 + 105);
  *(v0 + 768) = v18;
  *(v0 + 784) = v17;
  *(v0 + 752) = v19;
  if (sub_230DF6160(v0 + 688))
  {
    sub_230DFB34C();
    swift_allocError();
    *v20 = xmmword_230E6E730;
    swift_willThrow();
    sub_230DFB3A0(v0 + 560);
    goto LABEL_5;
  }

  v23 = sub_230D04CA4(v0 + 688);
  v24 = v23[1];
  v25 = *(v0 + 8);
  v26 = *v23;

  return v25(v26, v24);
}

uint64_t sub_230E023A4()
{
  sub_230DF1604(v0 + 16);
  v1 = *(v0 + 128);
  *(v0 + 256) = *(v0 + 112);
  *(v0 + 272) = v1;
  *(v0 + 281) = *(v0 + 137);
  v2 = *(v0 + 64);
  *(v0 + 192) = *(v0 + 48);
  *(v0 + 208) = v2;
  v3 = *(v0 + 96);
  *(v0 + 224) = *(v0 + 80);
  *(v0 + 240) = v3;
  v4 = *(v0 + 32);
  *(v0 + 160) = *(v0 + 16);
  *(v0 + 176) = v4;
  v5 = swift_task_alloc();
  *(v0 + 816) = v5;
  *v5 = v0;
  v5[1] = sub_230E02470;

  return sub_230E01718(v0 + 304, (v0 + 160));
}

uint64_t sub_230E02470()
{
  v2 = *(*v1 + 816);
  v5 = *v1;
  *(*v1 + 824) = v0;

  if (v0)
  {
    v3 = sub_230DFF3F0;
  }

  else
  {
    v3 = sub_230E02584;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_230E02584()
{
  v1 = *(v0 + 368);
  v2 = *(v0 + 384);
  *(v0 + 624) = v1;
  *(v0 + 640) = v2;
  v3 = *(v0 + 400);
  *(v0 + 656) = v3;
  v4 = *(v0 + 304);
  v5 = *(v0 + 320);
  *(v0 + 560) = v4;
  *(v0 + 576) = v5;
  v6 = *(v0 + 336);
  v7 = *(v0 + 352);
  *(v0 + 592) = v6;
  *(v0 + 608) = v7;
  v8 = *(v0 + 409);
  *(v0 + 665) = v8;
  *(v0 + 432) = v4;
  *(v0 + 448) = v5;
  *(v0 + 464) = v6;
  *(v0 + 480) = v7;
  *(v0 + 496) = v1;
  *(v0 + 512) = v2;
  *(v0 + 528) = v3;
  *(v0 + 537) = v8;
  if (sub_230DFABFC(v0 + 432) == 1)
  {
    v9 = sub_230D0519C(v0 + 432);
    v10 = *v9;
    v11 = v9[1];
    sub_230DFB34C();
    swift_allocError();
    *v12 = v10;
    v12[1] = v11;
    swift_willThrow();
LABEL_8:
    v26 = *(v0 + 8);

    return v26();
  }

  v13 = sub_230D0519C(v0 + 432);
  v14 = v13[3];
  v16 = *v13;
  v15 = v13[1];
  *(v0 + 720) = v13[2];
  *(v0 + 736) = v14;
  *(v0 + 688) = v16;
  *(v0 + 704) = v15;
  v18 = v13[5];
  v17 = v13[6];
  v19 = v13[4];
  *(v0 + 793) = *(v13 + 105);
  *(v0 + 768) = v18;
  *(v0 + 784) = v17;
  *(v0 + 752) = v19;
  if (sub_230DF6160(v0 + 688) != 2)
  {
    sub_230DFB34C();
    swift_allocError();
    *v25 = xmmword_230E6E730;
    swift_willThrow();
    sub_230DFB3A0(v0 + 560);
    goto LABEL_8;
  }

  v20 = sub_230D04CA4(v0 + 688);
  v21 = v20[1];
  v22 = *(v0 + 8);
  v23 = *v20;

  return v22(v23, v21);
}

uint64_t dispatch thunk of ServicesIntelligenceXPC.Client.hello()()
{
  v2 = *(*v0 + 88);
  v6 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_230E02884;

  return v6();
}

uint64_t sub_230E02884(uint64_t a1, uint64_t a2)
{
  v5 = *(*v2 + 16);
  v8 = *v2;

  v6 = *(v8 + 8);

  return v6(a1, a2);
}

uint64_t dispatch thunk of ServicesIntelligenceXPC.Client.version()()
{
  v2 = *(*v0 + 96);
  v6 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_230E02C58;

  return v6();
}

uint64_t get_enum_tag_for_layout_string_20ServicesIntelligence0aB3XPCC11ClientErrorO(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_230E02AD0(_OWORD *a1)
{
  v2 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5D738, &qword_230E7EEE8) - 8) + 80);

  return sub_230E01E50(a1);
}

unint64_t sub_230E02B4C()
{
  result = qword_27DB5D740;
  if (!qword_27DB5D740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5D740);
  }

  return result;
}

unint64_t sub_230E02BA0()
{
  result = qword_27DB5D748;
  if (!qword_27DB5D748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5D748);
  }

  return result;
}

uint64_t sub_230E02C5C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v11 = *MEMORY[0x277D85DE8];
  *(v4 + 208) = a3;
  *(v4 + 216) = v3;
  *(v4 + 192) = a1;
  *(v4 + 200) = a2;
  v5 = *(a3 + 16);
  *(v4 + 224) = *a3;
  *(v4 + 240) = v5;
  *(v4 + 256) = *(a3 + 32);
  v6 = sub_230E68D80();
  *(v4 + 264) = v6;
  v7 = *(v6 - 8);
  *(v4 + 272) = v7;
  v8 = *(v7 + 64) + 15;
  *(v4 + 280) = swift_task_alloc();
  v9 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_230E02D5C, v3, 0);
}

uint64_t sub_230E02D5C()
{
  v36 = v0;
  v35[1] = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 240);
  if (v1)
  {
    v3 = *(v0 + 248);
    v2 = *(v0 + 256);
    v4 = *(v0 + 224);
    v5 = *(v0 + 232);
    *(v0 + 296) = v1;
    *(v0 + 304) = v2;
    v6 = *(v0 + 280);
    v8 = *(v0 + 208);
    v7 = *(v0 + 216);
    v9 = *(v0 + 192);
    v10 = *(v0 + 200);
    *(v0 + 16) = v4;
    *(v0 + 24) = v5;
    *(v0 + 32) = v1;
    *(v0 + 40) = v3 & 1;
    *(v0 + 41) = BYTE1(v3);
    *(v0 + 48) = v2;

    sub_230D0FA64(v8, v0 + 96, &qword_27DB5B8B8, &qword_230E7ADD0);
    sub_230E68D70();

    v11 = sub_230E68D60();
    v12 = sub_230E693E0();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v35[0] = v14;
      *v13 = 136315650;
      *(v13 + 4) = sub_230D7E620(0x44564B6E49746573, 0xEF65736162617461, v35);
      *(v13 + 12) = 2080;
      *(v13 + 14) = sub_230D7E620(v5, v1, v35);
      *(v13 + 22) = 2080;
      v15 = RequestType.rawValue.getter();
      MEMORY[0x23191DA00](v15);

      v16 = sub_230D7E620(0x6C616E7265746E69, 0xE90000000000002ELL, v35);

      *(v13 + 24) = v16;
      _os_log_impl(&dword_230D02000, v11, v12, "[ServicesIntelligenceProvider][PerformanceTracking] Starting %s (correlationID: %s), originator: %s", v13, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x23191EAE0](v14, -1, -1);
      MEMORY[0x23191EAE0](v13, -1, -1);

      if ((v3 & 1) == 0)
      {
        goto LABEL_11;
      }
    }

    else
    {

      if ((v3 & 1) == 0)
      {
        goto LABEL_11;
      }
    }

    v20 = RequestType.rawValue.getter();
    v22 = v21;

    LOBYTE(v20) = sub_230D33FDC(v20, v22, v2);

    if ((v20 & 1) != 0 || BYTE1(v3) >= 2u)
    {
      sub_230E68950();
      *(v0 + 312) = CFAbsoluteTimeGetCurrent();
      *(v0 + 360) = 0u;
      *(v0 + 376) = 0u;
      *(v0 + 392) = 0u;
      *(v0 + 408) = 0u;
      *(v0 + 424) = 0u;
      *(v0 + 440) = 0u;
      *(v0 + 456) = 0u;
      *(v0 + 472) = 0u;
      *(v0 + 488) = 0u;
      *(v0 + 504) = 0u;
      *(v0 + 520) = 0u;
      *(v0 + 536) = 0u;
      *(v0 + 552) = 0u;
      *(v0 + 568) = 0u;
      *(v0 + 584) = 0u;
      *(v0 + 600) = 0u;
      *(v0 + 616) = 0u;
      *(v0 + 632) = 0u;
      *(v0 + 648) = 0u;
      *(v0 + 664) = 0u;
      *(v0 + 680) = 0u;
      *(v0 + 696) = 0u;
      *(v0 + 712) = 0u;
      *(v0 + 728) = 0;
      *(v0 + 732) = 93;
      v25 = task_info(*MEMORY[0x277D85F48], 0x16u, (v0 + 360), (v0 + 732));
      *(v0 + 736) = v25;
      v26 = 0.0;
      if (!v25)
      {
        v27 = *(v0 + 408);
        v28 = *(v0 + 480);
        v29 = __CFADD__(v27, v28);
        v30 = v27 + v28;
        if (v29)
        {
          __break(1u);
        }

        v26 = vcvtd_n_f64_u64(v30, 0x14uLL);
      }

      *(v0 + 336) = v26;
      *(v0 + 184) = 0;
      v23 = swift_task_alloc();
      *(v0 + 344) = v23;
      *v23 = v0;
      v24 = sub_230E039C4;
      goto LABEL_16;
    }

LABEL_11:
    v23 = swift_task_alloc();
    *(v0 + 320) = v23;
    *v23 = v0;
    v24 = sub_230E03864;
LABEL_16:
    v23[1] = v24;
    v31 = *(v0 + 216);
    v33 = *(v0 + 192);
    v32 = *(v0 + 200);
    v34 = *MEMORY[0x277D85DE8];

    return sub_230E046FC(v33, v32, v31, v0 + 16);
  }

  *(v0 + 740) = 9;
  v17 = swift_task_alloc();
  *(v0 + 288) = v17;
  *v17 = v0;
  v17[1] = sub_230E03298;
  v18 = *MEMORY[0x277D85DE8];

  return static RequestContext.from(_:correlationID:)(v0 + 56, (v0 + 740), 0, 0);
}

uint64_t sub_230E03298()
{
  v5 = *MEMORY[0x277D85DE8];
  v1 = *(*v0 + 288);
  v2 = *(*v0 + 216);
  v6 = *v0;

  v3 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_230E033D4, v2, 0);
}

uint64_t sub_230E033D4()
{
  v36 = v0;
  v35[1] = *MEMORY[0x277D85DE8];
  *(v0 + 16) = *(v0 + 56);
  v1 = *(v0 + 64);
  v2 = *(v0 + 72);
  v3 = *(v0 + 80);
  v4 = *(v0 + 81);
  v5 = *(v0 + 88);
  *(v0 + 296) = v2;
  *(v0 + 304) = v5;
  v6 = *(v0 + 280);
  v8 = *(v0 + 208);
  v7 = *(v0 + 216);
  v9 = *(v0 + 192);
  v10 = *(v0 + 200);
  *(v0 + 24) = v1;
  *(v0 + 32) = v2;
  v33 = v4;
  v34 = v3;
  *(v0 + 40) = v3;
  *(v0 + 41) = v4;
  *(v0 + 48) = v5;

  sub_230D0FA64(v8, v0 + 96, &qword_27DB5B8B8, &qword_230E7ADD0);
  sub_230E68D70();

  v11 = sub_230E68D60();
  v12 = sub_230E693E0();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v35[0] = v14;
    *v13 = 136315650;
    *(v13 + 4) = sub_230D7E620(0x44564B6E49746573, 0xEF65736162617461, v35);
    *(v13 + 12) = 2080;
    *(v13 + 14) = sub_230D7E620(v1, v2, v35);
    *(v13 + 22) = 2080;
    v15 = RequestType.rawValue.getter();
    MEMORY[0x23191DA00](v15);

    v16 = sub_230D7E620(0x6C616E7265746E69, 0xE90000000000002ELL, v35);

    *(v13 + 24) = v16;
    _os_log_impl(&dword_230D02000, v11, v12, "[ServicesIntelligenceProvider][PerformanceTracking] Starting %s (correlationID: %s), originator: %s", v13, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x23191EAE0](v14, -1, -1);
    MEMORY[0x23191EAE0](v13, -1, -1);

    if (!v34)
    {
      goto LABEL_7;
    }
  }

  else
  {

    if (!v34)
    {
LABEL_7:
      v20 = swift_task_alloc();
      *(v0 + 320) = v20;
      *v20 = v0;
      v21 = sub_230E03864;
      goto LABEL_12;
    }
  }

  v17 = RequestType.rawValue.getter();
  v19 = v18;

  LOBYTE(v17) = sub_230D33FDC(v17, v19, v5);

  if ((v17 & 1) == 0 && v33 < 2)
  {
    goto LABEL_7;
  }

  sub_230E68950();
  *(v0 + 312) = CFAbsoluteTimeGetCurrent();
  *(v0 + 360) = 0u;
  *(v0 + 376) = 0u;
  *(v0 + 392) = 0u;
  *(v0 + 408) = 0u;
  *(v0 + 424) = 0u;
  *(v0 + 440) = 0u;
  *(v0 + 456) = 0u;
  *(v0 + 472) = 0u;
  *(v0 + 488) = 0u;
  *(v0 + 504) = 0u;
  *(v0 + 520) = 0u;
  *(v0 + 536) = 0u;
  *(v0 + 552) = 0u;
  *(v0 + 568) = 0u;
  *(v0 + 584) = 0u;
  *(v0 + 600) = 0u;
  *(v0 + 616) = 0u;
  *(v0 + 632) = 0u;
  *(v0 + 648) = 0u;
  *(v0 + 664) = 0u;
  *(v0 + 680) = 0u;
  *(v0 + 696) = 0u;
  *(v0 + 712) = 0u;
  *(v0 + 728) = 0;
  *(v0 + 732) = 93;
  v22 = task_info(*MEMORY[0x277D85F48], 0x16u, (v0 + 360), (v0 + 732));
  *(v0 + 736) = v22;
  v23 = 0.0;
  if (!v22)
  {
    v24 = *(v0 + 408);
    v25 = *(v0 + 480);
    v26 = __CFADD__(v24, v25);
    v27 = v24 + v25;
    if (v26)
    {
      __break(1u);
    }

    v23 = vcvtd_n_f64_u64(v27, 0x14uLL);
  }

  *(v0 + 336) = v23;
  *(v0 + 184) = 0;
  v20 = swift_task_alloc();
  *(v0 + 344) = v20;
  *v20 = v0;
  v21 = sub_230E039C4;
LABEL_12:
  v20[1] = v21;
  v28 = *(v0 + 216);
  v30 = *(v0 + 192);
  v29 = *(v0 + 200);
  v31 = *MEMORY[0x277D85DE8];

  return sub_230E046FC(v30, v29, v28, v0 + 16);
}

uint64_t sub_230E03864(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = *v2;
  v4 = *v2;
  v4[17] = v2;
  v4[18] = a1;
  v4[19] = v1;
  v5 = v3[40];
  v6 = *v2;
  v4[41] = v1;

  v7 = v3[27];
  if (v1)
  {
    v8 = sub_230E03ED8;
  }

  else
  {
    v8 = sub_230E03DD0;
  }

  v9 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](v8, v7, 0);
}

uint64_t sub_230E039C4(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = *v2;
  v4 = *v2;
  v4[20] = v2;
  v4[21] = a1;
  v4[22] = v1;
  v5 = v3[43];
  v6 = *v2;
  v4[44] = v1;

  v7 = v3[27];
  if (v1)
  {
    v8 = sub_230E03C60;
  }

  else
  {
    v8 = sub_230E03B24;
  }

  v9 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](v8, v7, 0);
}

uint64_t sub_230E03B24()
{
  v16 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 296);
  v2 = *(v0 + 304);
  v4 = *(v0 + 272);
  v3 = *(v0 + 280);
  v5 = *(v0 + 264);
  v7 = *(v0 + 192);
  v6 = *(v0 + 200);
  sub_230D34F14(9, *(v0 + 336), *(v0 + 736) != 0, v0 + 16, (v0 + 184), *(v0 + 312));
  (*(v4 + 8))(v3, v5);

  v8 = *(v0 + 168);
  v10 = *(v0 + 296);
  v9 = *(v0 + 304);
  v11 = *(v0 + 280);
  v12 = *(v0 + 216);

  v13 = *(v0 + 8);
  v14 = *MEMORY[0x277D85DE8];

  return v13(v8);
}

uint64_t sub_230E03C60()
{
  v18 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 352);
  v2 = *(v0 + 336);
  v3 = *(v0 + 312);
  v5 = *(v0 + 272);
  v4 = *(v0 + 280);
  v6 = *(v0 + 264);
  v16 = *(v0 + 216);
  v17 = *(v0 + 304);
  v7 = *(v0 + 200);
  v15 = *(v0 + 296);
  v8 = *(v0 + 736) != 0;
  *(v0 + 184) = v1;
  swift_willThrow();
  v9 = v1;
  sub_230D34F14(9, v2, v8, v0 + 16, (v0 + 184), v3);
  MEMORY[0x23191E910](v1);
  (*(v5 + 8))(v4, v6);

  swift_bridgeObjectRelease_n();
  swift_bridgeObjectRelease_n();

  v10 = *(v0 + 352);
  v11 = *(v0 + 280);

  v12 = *(v0 + 8);
  v13 = *MEMORY[0x277D85DE8];

  return v12();
}

uint64_t sub_230E03DD0()
{
  v13 = *MEMORY[0x277D85DE8];
  v1 = v0[37];
  v2 = v0[38];
  v4 = v0[24];
  v3 = v0[25];
  (*(v0[34] + 8))(v0[35], v0[33]);

  v5 = v0[18];
  v7 = v0[37];
  v6 = v0[38];
  v8 = v0[35];
  v9 = v0[27];

  v10 = v0[1];
  v11 = *MEMORY[0x277D85DE8];

  return v10(v5);
}

uint64_t sub_230E03ED8()
{
  v11 = *MEMORY[0x277D85DE8];
  v1 = v0[37];
  v2 = v0[38];
  v3 = v0[27];
  v5 = v0[24];
  v4 = v0[25];
  (*(v0[34] + 8))(v0[35], v0[33]);

  swift_bridgeObjectRelease_n();
  swift_bridgeObjectRelease_n();

  v6 = v0[41];
  v7 = v0[35];

  v8 = v0[1];
  v9 = *MEMORY[0x277D85DE8];

  return v8();
}

uint64_t sub_230E03FCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[18] = a3;
  v4[19] = a4;
  v4[16] = a1;
  v4[17] = a2;
  v6 = sub_230E68910();
  v4[20] = v6;
  v7 = *(v6 - 8);
  v4[21] = v7;
  v8 = *(v7 + 64) + 15;
  v4[22] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_230E04094, a3, 0);
}

uint64_t sub_230E04094()
{
  v1 = v0[16];
  v2 = v0[22];
  if (*(v1 + 16))
  {
    v3 = v0[20];
    v4 = v0[21];
    v5 = v0[17];
    v6 = v0[22];
    sub_230E68900();
    sub_230E688D0();
    v8 = v7;
    (*(v4 + 8))(v2, v3);
    v9 = swift_task_alloc();
    *(v9 + 16) = v5;
    *(v9 + 24) = v8;
    v10 = sub_230E1CBD0(v1, sub_230E1E1A4);
    v0[23] = v10;

    v15 = v0[18];
    v14 = v0[19];
    sub_230E69540();

    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5AC20, &qword_230E6C230);
    v17 = MEMORY[0x23191DB10](v10, v16);
    MEMORY[0x23191DA00](v17);

    sub_230E68950();

    v0[24] = sub_230E1CA68(&unk_2845A4D30);
    swift_arrayDestroy();
    v18 = *(v15 + 112);
    v0[25] = v18;
    sub_230D1CDE0(v14, (v0 + 2));

    return MEMORY[0x2822009F8](sub_230E043A8, v18, 0);
  }

  else
  {
    v11 = v0[22];

    v12 = v0[1];

    return v12(0);
  }
}

void sub_230E043A8()
{
  v2 = v0[24];
  v1 = v0[25];
  v3 = v0[23];
  sub_230D1CDE0(v0[19], (v0 + 7));

  v4 = swift_task_alloc();
  v0[26] = v4;
  *v4 = v0;
  v4[1] = sub_230E044C0;
  v5 = v0[23];
  v6 = v0[19];
  v8 = v0[25];

  JUMPOUT(0x230D70398);
}

uint64_t sub_230E044C0()
{
  v2 = *v1;
  v3 = *(*v1 + 208);
  v4 = *v1;
  *(*v1 + 216) = v0;

  v5 = *(v2 + 200);
  sub_230D1CE3C(*(v2 + 152));
  if (v0)
  {
    v6 = sub_230E04694;
  }

  else
  {
    v6 = sub_230E04608;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_230E04608()
{
  v1 = v0[23];
  v2 = v0[24];
  v3 = v0[18];
  sub_230D1CE3C(v0[19]);

  return MEMORY[0x2822009F8](sub_230E1E2D0, v3, 0);
}

uint64_t sub_230E04694()
{
  v1 = *(v0 + 144);
  sub_230D1CE3C(*(v0 + 152));

  return MEMORY[0x2822009F8](sub_230E1E2C8, v1, 0);
}

uint64_t sub_230E046FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[18] = a3;
  v4[19] = a4;
  v4[16] = a1;
  v4[17] = a2;
  v6 = sub_230E68910();
  v4[20] = v6;
  v7 = *(v6 - 8);
  v4[21] = v7;
  v8 = *(v7 + 64) + 15;
  v4[22] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_230E047C4, a3, 0);
}

uint64_t sub_230E047C4()
{
  v1 = v0[16];
  v2 = v0[22];
  if (*(v1 + 16))
  {
    v3 = v0[20];
    v4 = v0[21];
    v5 = v0[17];
    v6 = v0[22];
    sub_230E68900();
    sub_230E688D0();
    v8 = v7;
    (*(v4 + 8))(v2, v3);
    v9 = swift_task_alloc();
    *(v9 + 16) = v5;
    *(v9 + 24) = v8;
    v10 = sub_230E1C768(v1, sub_230E1DF3C);
    v0[23] = v10;

    v15 = v0[18];
    v14 = v0[19];
    sub_230E69540();

    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5AC20, &qword_230E6C230);
    v17 = MEMORY[0x23191DB10](v10, v16);
    MEMORY[0x23191DA00](v17);

    sub_230E68950();

    v0[24] = sub_230E1CA68(&unk_2845A4CE0);
    swift_arrayDestroy();
    v18 = *(v15 + 112);
    v0[25] = v18;
    sub_230D1CDE0(v14, (v0 + 2));

    return MEMORY[0x2822009F8](sub_230E04AD8, v18, 0);
  }

  else
  {
    v11 = v0[22];

    v12 = v0[1];

    return v12(0);
  }
}

void sub_230E04AD8()
{
  v2 = v0[24];
  v1 = v0[25];
  v3 = v0[23];
  sub_230D1CDE0(v0[19], (v0 + 7));

  v4 = swift_task_alloc();
  v0[26] = v4;
  *v4 = v0;
  v4[1] = sub_230E04BF0;
  v5 = v0[23];
  v6 = v0[19];
  v8 = v0[25];

  JUMPOUT(0x230D70398);
}

uint64_t sub_230E04BF0()
{
  v2 = *v1;
  v3 = *(*v1 + 208);
  v4 = *v1;
  *(*v1 + 216) = v0;

  v5 = *(v2 + 200);
  sub_230D1CE3C(*(v2 + 152));
  if (v0)
  {
    v6 = sub_230E04E30;
  }

  else
  {
    v6 = sub_230E04D38;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_230E04D38()
{
  v1 = v0[23];
  v2 = v0[24];
  v3 = v0[18];
  sub_230D1CE3C(v0[19]);

  return MEMORY[0x2822009F8](sub_230E04DC4, v3, 0);
}

uint64_t sub_230E04DC4()
{
  v1 = v0[15];
  v2 = v0[22];

  v3 = v0[1];

  return v3(v1);
}

uint64_t sub_230E04E30()
{
  v1 = *(v0 + 144);
  sub_230D1CE3C(*(v0 + 152));

  return MEMORY[0x2822009F8](sub_230E04E98, v1, 0);
}

uint64_t sub_230E04E98()
{
  v1 = v0[23];
  v2 = v0[24];

  v3 = v0[27];
  v4 = v0[22];
  sub_230E69540();
  v0[12] = 0;
  v0[13] = 0xE000000000000000;
  MEMORY[0x23191DA00](0xD000000000000020, 0x8000000230E80EF0);
  v0[14] = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5D890, &qword_230E6C200);
  sub_230E695F0();
  v5 = v0[12];
  v6 = v0[13];
  sub_230E68950();

  swift_willThrow();

  v7 = v0[1];

  return v7();
}

uint64_t sub_230E04FD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[18] = a3;
  v4[19] = a4;
  v4[16] = a1;
  v4[17] = a2;
  v6 = sub_230E68910();
  v4[20] = v6;
  v7 = *(v6 - 8);
  v4[21] = v7;
  v8 = *(v7 + 64) + 15;
  v4[22] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_230E0509C, a3, 0);
}

uint64_t sub_230E0509C()
{
  v1 = v0[16];
  v2 = v0[22];
  if (*(v1 + 16))
  {
    v3 = v0[20];
    v4 = v0[21];
    v5 = v0[17];
    v6 = v0[22];
    sub_230E68900();
    sub_230E688D0();
    v8 = v7;
    (*(v4 + 8))(v2, v3);
    v9 = swift_task_alloc();
    *(v9 + 16) = v5;
    *(v9 + 24) = v8;
    v10 = sub_230E1D028(v1, sub_230E1DFC0);
    v0[23] = v10;

    v15 = v0[18];
    v14 = v0[19];
    sub_230E69540();

    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5AC20, &qword_230E6C230);
    v17 = MEMORY[0x23191DB10](v10, v16);
    MEMORY[0x23191DA00](v17);

    sub_230E68950();

    v0[24] = sub_230E1CA68(&unk_2845A4D80);
    swift_arrayDestroy();
    v18 = *(v15 + 112);
    v0[25] = v18;
    sub_230D1CDE0(v14, (v0 + 2));

    return MEMORY[0x2822009F8](sub_230E043A8, v18, 0);
  }

  else
  {
    v11 = v0[22];

    v12 = v0[1];

    return v12(0);
  }
}

uint64_t sub_230E053B0(uint64_t a1, unint64_t a2, __int128 *a3, uint64_t a4, double a5)
{
  v33 = a3[4];
  v34 = a3[5];
  *v35 = a3[6];
  *&v35[9] = *(a3 + 105);
  v29 = *a3;
  v30 = a3[1];
  v31 = a3[2];
  v32 = a3[3];
  v10 = sub_230E686F0();
  v11 = *(v10 + 48);
  v12 = *(v10 + 52);
  swift_allocObject();
  sub_230E686E0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5B8E0, &qword_230E71DD8);
  sub_230E1E1F8(&qword_27DB5D7C0, &qword_27DB5B8E0, &qword_230E71DD8, sub_230E1E274);
  v13 = sub_230E686D0();
  v15 = v14;

  if (v5)
  {
    return a2;
  }

  if (*(a4 + 16) && (v16 = sub_230DA41A0(a1, a2), (v17 & 1) != 0))
  {
    v18 = *(a4 + 56) + 32 * v16;
    v19 = *v18;
    v20 = *(v18 + 8);
    v21 = *(v18 + 16);
    v22 = *(v18 + 24);
    if (v22)
    {
      v23 = v19;
    }

    else
    {
      v23 = v21;
    }

    v24 = v22 & v20;
    if (v22)
    {
      v25 = v19 + a5;
      if ((v20 & 1) == 0)
      {
        v23 = v25;
        v24 = 0;
      }
    }
  }

  else
  {
    v23 = 0.0;
    v24 = 1;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB5D8B0, &qword_230E6C238);
  result = swift_initStackObject();
  *(result + 16) = xmmword_230E6B790;
  *(result + 32) = 7955819;
  *(result + 40) = 0xE300000000000000;
  *(result + 48) = a1;
  *(result + 56) = a2;
  *(result + 64) = 3;
  *(result + 72) = 0x65756C6176;
  *(result + 80) = 0xE500000000000000;
  *(result + 88) = v13;
  *(result + 96) = v15;
  *(result + 104) = 0;
  *(result + 112) = 0x5464657461647075;
  *(result + 120) = 0xEB00000000656D69;
  if ((*&a5 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_23;
  }

  if (a5 <= -9.22337204e18)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (a5 >= 9.22337204e18)
  {
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v27 = 0;
  *(result + 128) = a5;
  *(result + 136) = 0;
  *(result + 144) = 2;
  strcpy((result + 152), "expirationTime");
  *(result + 167) = -18;
  if (v24)
  {
LABEL_20:
    *(result + 168) = v27;
    *(result + 176) = v24;
    *(result + 184) = 2;
    v28 = result;

    a2 = sub_230D0DBB4(v28);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5AC28, &qword_230E6C240);
    swift_arrayDestroy();
    return a2;
  }

  if ((~*&v23 & 0x7FF0000000000000) == 0)
  {
    goto LABEL_25;
  }

  if (v23 <= -9.22337204e18)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  if (v23 < 9.22337204e18)
  {
    v27 = v23;
    goto LABEL_20;
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_230E056E0(uint64_t a1, unint64_t a2, double a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = sub_230E686F0();
  v12 = *(v11 + 48);
  v13 = *(v11 + 52);
  swift_allocObject();
  sub_230E686E0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5D768, &qword_230E7F060);
  sub_230E1E1F8(&qword_27DB5D770, &qword_27DB5D768, &qword_230E7F060, sub_230D2C474);
  v14 = sub_230E686D0();
  v16 = v15;

  if (v6)
  {
    return a2;
  }

  if (*(a6 + 16) && (v17 = sub_230DA41A0(a1, a2), (v18 & 1) != 0))
  {
    v19 = *(a6 + 56) + 32 * v17;
    v20 = *v19;
    v21 = *(v19 + 8);
    v22 = *(v19 + 16);
    v23 = *(v19 + 24);
    if (v23)
    {
      v24 = v20;
    }

    else
    {
      v24 = v22;
    }

    v25 = v23 & v21;
    if (v23)
    {
      v26 = v20 + a3;
      if ((v21 & 1) == 0)
      {
        v24 = v26;
        v25 = 0;
      }
    }
  }

  else
  {
    v24 = 0.0;
    v25 = 1;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB5D8B0, &qword_230E6C238);
  result = swift_initStackObject();
  *(result + 16) = xmmword_230E6B790;
  *(result + 32) = 7955819;
  *(result + 40) = 0xE300000000000000;
  *(result + 48) = a1;
  *(result + 56) = a2;
  *(result + 64) = 3;
  *(result + 72) = 0x65756C6176;
  *(result + 80) = 0xE500000000000000;
  *(result + 88) = v14;
  *(result + 96) = v16;
  *(result + 104) = 0;
  *(result + 112) = 0x5464657461647075;
  *(result + 120) = 0xEB00000000656D69;
  if ((*&a3 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_23;
  }

  if (a3 <= -9.22337204e18)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (a3 >= 9.22337204e18)
  {
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v28 = 0;
  *(result + 128) = a3;
  *(result + 136) = 0;
  *(result + 144) = 2;
  strcpy((result + 152), "expirationTime");
  *(result + 167) = -18;
  if (v25)
  {
LABEL_20:
    *(result + 168) = v28;
    *(result + 176) = v25;
    *(result + 184) = 2;
    v29 = result;

    a2 = sub_230D0DBB4(v29);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5AC28, &qword_230E6C240);
    swift_arrayDestroy();
    return a2;
  }

  if ((~*&v24 & 0x7FF0000000000000) == 0)
  {
    goto LABEL_25;
  }

  if (v24 <= -9.22337204e18)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  if (v24 < 9.22337204e18)
  {
    v28 = v24;
    goto LABEL_20;
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_230E059E8(uint64_t a1, unint64_t a2, __int128 *a3, uint64_t a4, double a5)
{
  v29 = *a3;
  v30 = a3[1];
  v31 = a3[2];
  v10 = sub_230E686F0();
  v11 = *(v10 + 48);
  v12 = *(v10 + 52);
  swift_allocObject();
  sub_230E686E0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5D798, &qword_230E7F090);
  sub_230E1E1F8(&qword_281566770, &qword_27DB5D798, &qword_230E7F090, sub_230E1DFFC);
  v13 = sub_230E686D0();
  v15 = v14;

  if (v5)
  {
    return a2;
  }

  if (*(a4 + 16) && (v16 = sub_230DA41A0(a1, a2), (v17 & 1) != 0))
  {
    v18 = *(a4 + 56) + 32 * v16;
    v19 = *v18;
    v20 = *(v18 + 8);
    v21 = *(v18 + 16);
    v22 = *(v18 + 24);
    if (v22)
    {
      v23 = v19;
    }

    else
    {
      v23 = v21;
    }

    v24 = v22 & v20;
    if (v22)
    {
      v25 = v19 + a5;
      if ((v20 & 1) == 0)
      {
        v23 = v25;
        v24 = 0;
      }
    }
  }

  else
  {
    v23 = 0.0;
    v24 = 1;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB5D8B0, &qword_230E6C238);
  result = swift_initStackObject();
  *(result + 16) = xmmword_230E6B790;
  *(result + 32) = 7955819;
  *(result + 40) = 0xE300000000000000;
  *(result + 48) = a1;
  *(result + 56) = a2;
  *(result + 64) = 3;
  *(result + 72) = 0x65756C6176;
  *(result + 80) = 0xE500000000000000;
  *(result + 88) = v13;
  *(result + 96) = v15;
  *(result + 104) = 0;
  *(result + 112) = 0x5464657461647075;
  *(result + 120) = 0xEB00000000656D69;
  if ((*&a5 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_23;
  }

  if (a5 <= -9.22337204e18)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (a5 >= 9.22337204e18)
  {
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v27 = 0;
  *(result + 128) = a5;
  *(result + 136) = 0;
  *(result + 144) = 2;
  strcpy((result + 152), "expirationTime");
  *(result + 167) = -18;
  if (v24)
  {
LABEL_20:
    *(result + 168) = v27;
    *(result + 176) = v24;
    *(result + 184) = 2;
    v28 = result;

    a2 = sub_230D0DBB4(v28);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5AC28, &qword_230E6C240);
    swift_arrayDestroy();
    return a2;
  }

  if ((~*&v23 & 0x7FF0000000000000) == 0)
  {
    goto LABEL_25;
  }

  if (v23 <= -9.22337204e18)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  if (v23 < 9.22337204e18)
  {
    v27 = v23;
    goto LABEL_20;
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_230E05CFC(void (*a1)(char *, char *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v39 = a8;
  v48 = a1;
  v49 = a2;
  v11 = *(a5 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](a1, a2);
  v50 = &v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v14 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v52 = *(AssociatedTypeWitness - 8);
  v16 = *(v52 + 64);
  v18 = MEMORY[0x28223BE20](AssociatedTypeWitness, v17);
  v20 = &v37 - v19;
  v21 = *(*(a4 - 8) + 64);
  MEMORY[0x28223BE20](v18, v22);
  v46 = &v37 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = swift_getAssociatedTypeWitness();
  v40 = *(v24 - 8);
  v41 = v24;
  v25 = *(v40 + 64);
  MEMORY[0x28223BE20](v24, v26);
  v28 = &v37 - v27;
  v29 = sub_230E69380();
  if (!v29)
  {
    return sub_230E69260();
  }

  v51 = v29;
  v55 = sub_230E695C0();
  v42 = sub_230E695D0();
  sub_230E695A0();
  result = sub_230E69370();
  if ((v51 & 0x8000000000000000) == 0)
  {
    v37 = v11;
    v38 = a5;
    v31 = 0;
    v43 = (v52 + 16);
    v44 = (v52 + 8);
    v45 = v8;
    while (!__OFADD__(v31, 1))
    {
      v52 = v31 + 1;
      v32 = sub_230E693B0();
      v33 = v20;
      v34 = v20;
      v35 = AssociatedTypeWitness;
      (*v43)(v33);
      v32(v54, 0);
      v36 = v53;
      v48(v34, v50);
      if (v36)
      {
        (*v44)(v34, v35);
        (*(v40 + 8))(v28, v41);

        return (*(v37 + 32))(v39, v50, v38);
      }

      v53 = 0;
      (*v44)(v34, v35);
      sub_230E695B0();
      result = sub_230E693A0();
      ++v31;
      v20 = v34;
      if (v52 == v51)
      {
        (*(v40 + 8))(v28, v41);
        return v55;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_230E0611C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[62] = a3;
  v4[63] = a4;
  v4[60] = a1;
  v4[61] = a2;
  v6 = sub_230E68910();
  v4[64] = v6;
  v7 = *(v6 - 8);
  v4[65] = v7;
  v8 = *(v7 + 64) + 15;
  v4[66] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_230E061E4, a2, 0);
}

uint64_t sub_230E061E4()
{
  v1 = *(v0 + 480);
  v2 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v1[3]);
  if (sub_230E69390())
  {
    v3 = sub_230D0DEAC(MEMORY[0x277D84F90]);
    v4 = *(v0 + 528);

    v5 = *(v0 + 8);

    return v5(v3);
  }

  else
  {
    v8 = *(v0 + 488);
    v7 = *(v0 + 496);
    v9 = v1[3];
    v10 = v1[4];
    v11 = __swift_project_boxed_opaque_existential_1(*(v0 + 480), v9);
    *(v0 + 456) = sub_230E05CFC(sub_230D1D2E0, 0, v9, MEMORY[0x277D837D0], MEMORY[0x277D84A98], v10, MEMORY[0x277D84AC0], v11);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB5D8F0, &unk_230E70E80);
    sub_230D1D1C4(&qword_281565F50, &unk_27DB5D8F0, &unk_230E70E80);
    v12 = sub_230E68FF0();
    v14 = v13;

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB5D9C0, &unk_230E6C220);
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_230E6C060;
    *(v15 + 32) = 7955819;
    *(v15 + 40) = 0xE300000000000000;
    *(v15 + 48) = 3;
    *(v15 + 56) = 0u;
    *(v15 + 72) = 0u;
    *(v15 + 88) = 0x65756C6176;
    *(v15 + 96) = 0xE500000000000000;
    *(v15 + 104) = 0;
    *(v15 + 112) = 0u;
    *(v15 + 128) = 0u;
    strcpy((v15 + 144), "expirationTime");
    *(v15 + 159) = -18;
    *(v15 + 160) = 2;
    *(v15 + 168) = 0u;
    *(v15 + 184) = 0u;
    MEMORY[0x23191DA00](v12, v14);

    MEMORY[0x23191DA00](41, 0xE100000000000000);
    *(v0 + 256) = 0u;
    *(v0 + 272) = 0u;
    *(v0 + 288) = 0u;
    *(v0 + 304) = 0u;
    *(v0 + 320) = 0u;
    *(v0 + 336) = 0u;
    *(v0 + 352) = 1;
    sub_230D1D098(v0 + 256);
    *(v0 + 16) = 0x65726F7473;
    *(v0 + 24) = 0xE500000000000000;
    *(v0 + 32) = v15;
    *(v0 + 40) = 0u;
    *(v0 + 56) = 0u;
    *(v0 + 72) = 0u;
    *(v0 + 88) = 0x28204E492079656BLL;
    *(v0 + 96) = 0xE800000000000000;
    *(v0 + 112) = 0;
    *(v0 + 120) = 0;
    *(v0 + 104) = 0;
    *(v0 + 128) = 1;
    v16 = *(v8 + 112);
    *(v0 + 536) = v16;
    sub_230D1CDE0(v7, v0 + 360);

    return MEMORY[0x2822009F8](sub_230E06508, v16, 0);
  }
}

uint64_t sub_230E06508()
{
  v1 = v0[67];
  sub_230D1CDE0(v0[62], (v0 + 50));
  sub_230D1D0EC((v0 + 2), (v0 + 17));

  v2 = swift_task_alloc();
  v0[68] = v2;
  *v2 = v0;
  v2[1] = sub_230E065F0;
  v3 = v0[67];
  v4 = v0[62];

  return (sub_230D70F74)(v0 + 58, 2, v4);
}

uint64_t sub_230E065F0()
{
  v2 = *v1;
  v3 = *(*v1 + 544);
  v4 = *v1;
  *(*v1 + 552) = v0;

  v5 = *(v2 + 536);
  sub_230D1CE3C(*(v2 + 496));
  if (v0)
  {
    v6 = sub_230E069EC;
  }

  else
  {
    v6 = sub_230E06738;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_230E06738()
{
  v1 = *(v0 + 488);
  sub_230D1CE3C(*(v0 + 496));
  sub_230D1D148(v0 + 16);

  return MEMORY[0x2822009F8](sub_230E067A8, v1, 0);
}

uint64_t sub_230E067A8()
{
  v26 = v0;
  v1 = v0[66];
  v2 = v0[65];
  v3 = v0[64];
  v4 = v0[58];
  sub_230E68900();
  sub_230E688D0();
  v6 = v5;
  (*(v2 + 8))(v1, v3);
  v7 = sub_230D0DEAC(MEMORY[0x277D84F90]);
  v24 = v7;
  v8 = v4[2];
  if (!v8)
  {
    v16 = v7;
LABEL_10:

    goto LABEL_11;
  }

  v9 = v0[69];
  v10 = v0[63];
  v11 = v4[4];

  sub_230E08024(&v24, v11, v10, v6);
  if (v9)
  {

    v24 = 0;
    v25 = 0xE000000000000000;
    sub_230E69540();
    v12 = v25;
    v0[55] = v24;
    v0[56] = v12;
    MEMORY[0x23191DA00](0xD000000000000020, 0x8000000230E80EC0);
    v0[59] = v9;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5D890, &qword_230E6C200);
    sub_230E695F0();
    v13 = v0[55];
    v14 = v0[56];
    v15 = MEMORY[0x277D84F90];
    sub_230E68950();

    MEMORY[0x23191E910](v9);
    v16 = sub_230D0DEAC(v15);
LABEL_11:
    v22 = v0[66];

    v23 = v0[1];

    return v23(v16);
  }

  if (v8 == 1)
  {
LABEL_9:
    v16 = v24;
    goto LABEL_10;
  }

  v18 = v4 + 5;
  v19 = 1;
  while (v19 < v4[2])
  {
    v20 = v0[63];
    v21 = *v18;

    sub_230E08024(&v24, v21, v20, v6);

    ++v19;
    ++v18;
    if (v8 == v19)
    {
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_230E069EC()
{
  v1 = *(v0 + 488);
  sub_230D1CE3C(*(v0 + 496));

  return MEMORY[0x2822009F8](sub_230E06A54, v1, 0);
}

uint64_t sub_230E06A54()
{
  sub_230D1D148((v0 + 2));
  v1 = v0[69];
  sub_230E69540();
  v0[55] = 0;
  v0[56] = 0xE000000000000000;
  MEMORY[0x23191DA00](0xD000000000000020, 0x8000000230E80EC0);
  v0[59] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5D890, &qword_230E6C200);
  sub_230E695F0();
  v2 = v0[55];
  v3 = v0[56];
  v4 = MEMORY[0x277D84F90];
  sub_230E68950();

  MEMORY[0x23191E910](v1);
  v5 = sub_230D0DEAC(v4);
  v6 = v0[66];

  v7 = v0[1];

  return v7(v5);
}

uint64_t sub_230E06B74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[62] = a3;
  v4[63] = a4;
  v4[60] = a1;
  v4[61] = a2;
  v6 = sub_230E68910();
  v4[64] = v6;
  v7 = *(v6 - 8);
  v4[65] = v7;
  v8 = *(v7 + 64) + 15;
  v4[66] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_230E06C3C, a2, 0);
}

uint64_t sub_230E06C3C()
{
  v1 = *(v0 + 480);
  v2 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v1[3]);
  if (sub_230E69390())
  {
    v3 = sub_230D0F12C(MEMORY[0x277D84F90]);
    v4 = *(v0 + 528);

    v5 = *(v0 + 8);

    return v5(v3);
  }

  else
  {
    v8 = *(v0 + 488);
    v7 = *(v0 + 496);
    v9 = v1[3];
    v10 = v1[4];
    v11 = __swift_project_boxed_opaque_existential_1(*(v0 + 480), v9);
    *(v0 + 456) = sub_230E05CFC(sub_230D1D2E0, 0, v9, MEMORY[0x277D837D0], MEMORY[0x277D84A98], v10, MEMORY[0x277D84AC0], v11);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB5D8F0, &unk_230E70E80);
    sub_230D1D1C4(&qword_281565F50, &unk_27DB5D8F0, &unk_230E70E80);
    v12 = sub_230E68FF0();
    v14 = v13;

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB5D9C0, &unk_230E6C220);
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_230E6C060;
    *(v15 + 32) = 7955819;
    *(v15 + 40) = 0xE300000000000000;
    *(v15 + 48) = 3;
    *(v15 + 56) = 0u;
    *(v15 + 72) = 0u;
    *(v15 + 88) = 0x65756C6176;
    *(v15 + 96) = 0xE500000000000000;
    *(v15 + 104) = 0;
    *(v15 + 112) = 0u;
    *(v15 + 128) = 0u;
    strcpy((v15 + 144), "expirationTime");
    *(v15 + 159) = -18;
    *(v15 + 160) = 2;
    *(v15 + 168) = 0u;
    *(v15 + 184) = 0u;
    MEMORY[0x23191DA00](v12, v14);

    MEMORY[0x23191DA00](41, 0xE100000000000000);
    *(v0 + 256) = 0u;
    *(v0 + 272) = 0u;
    *(v0 + 288) = 0u;
    *(v0 + 304) = 0u;
    *(v0 + 320) = 0u;
    *(v0 + 336) = 0u;
    *(v0 + 352) = 1;
    sub_230D1D098(v0 + 256);
    *(v0 + 16) = 0x65726F7473;
    *(v0 + 24) = 0xE500000000000000;
    *(v0 + 32) = v15;
    *(v0 + 40) = 0u;
    *(v0 + 56) = 0u;
    *(v0 + 72) = 0u;
    *(v0 + 88) = 0x28204E492079656BLL;
    *(v0 + 96) = 0xE800000000000000;
    *(v0 + 112) = 0;
    *(v0 + 120) = 0;
    *(v0 + 104) = 0;
    *(v0 + 128) = 1;
    v16 = *(v8 + 112);
    *(v0 + 536) = v16;
    sub_230D1CDE0(v7, v0 + 360);

    return MEMORY[0x2822009F8](sub_230E06F60, v16, 0);
  }
}

uint64_t sub_230E06F60()
{
  v1 = v0[67];
  sub_230D1CDE0(v0[62], (v0 + 50));
  sub_230D1D0EC((v0 + 2), (v0 + 17));

  v2 = swift_task_alloc();
  v0[68] = v2;
  *v2 = v0;
  v2[1] = sub_230E07048;
  v3 = v0[67];
  v4 = v0[62];

  return (sub_230D70F74)(v0 + 58, 2, v4);
}

uint64_t sub_230E07048()
{
  v2 = *v1;
  v3 = *(*v1 + 544);
  v4 = *v1;
  *(*v1 + 552) = v0;

  v5 = *(v2 + 536);
  sub_230D1CE3C(*(v2 + 496));
  if (v0)
  {
    v6 = sub_230E07444;
  }

  else
  {
    v6 = sub_230E07190;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_230E07190()
{
  v1 = *(v0 + 488);
  sub_230D1CE3C(*(v0 + 496));
  sub_230D1D148(v0 + 16);

  return MEMORY[0x2822009F8](sub_230E07200, v1, 0);
}

uint64_t sub_230E07200()
{
  v26 = v0;
  v1 = v0[66];
  v2 = v0[65];
  v3 = v0[64];
  v4 = v0[58];
  sub_230E68900();
  sub_230E688D0();
  v6 = v5;
  (*(v2 + 8))(v1, v3);
  v7 = sub_230D0F12C(MEMORY[0x277D84F90]);
  v24 = v7;
  v8 = v4[2];
  if (!v8)
  {
    v16 = v7;
LABEL_10:

    goto LABEL_11;
  }

  v9 = v0[69];
  v10 = v0[63];
  v11 = v4[4];

  sub_230E086A8(&v24, v11, v10, v6);
  if (v9)
  {

    v24 = 0;
    v25 = 0xE000000000000000;
    sub_230E69540();
    v12 = v25;
    v0[55] = v24;
    v0[56] = v12;
    MEMORY[0x23191DA00](0xD000000000000020, 0x8000000230E80EC0);
    v0[59] = v9;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5D890, &qword_230E6C200);
    sub_230E695F0();
    v13 = v0[55];
    v14 = v0[56];
    v15 = MEMORY[0x277D84F90];
    sub_230E68950();

    MEMORY[0x23191E910](v9);
    v16 = sub_230D0F12C(v15);
LABEL_11:
    v22 = v0[66];

    v23 = v0[1];

    return v23(v16);
  }

  if (v8 == 1)
  {
LABEL_9:
    v16 = v24;
    goto LABEL_10;
  }

  v18 = v4 + 5;
  v19 = 1;
  while (v19 < v4[2])
  {
    v20 = v0[63];
    v21 = *v18;

    sub_230E086A8(&v24, v21, v20, v6);

    ++v19;
    ++v18;
    if (v8 == v19)
    {
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_230E07444()
{
  v1 = *(v0 + 488);
  sub_230D1CE3C(*(v0 + 496));

  return MEMORY[0x2822009F8](sub_230E074AC, v1, 0);
}

uint64_t sub_230E074AC()
{
  sub_230D1D148((v0 + 2));
  v1 = v0[69];
  sub_230E69540();
  v0[55] = 0;
  v0[56] = 0xE000000000000000;
  MEMORY[0x23191DA00](0xD000000000000020, 0x8000000230E80EC0);
  v0[59] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5D890, &qword_230E6C200);
  sub_230E695F0();
  v2 = v0[55];
  v3 = v0[56];
  v4 = MEMORY[0x277D84F90];
  sub_230E68950();

  MEMORY[0x23191E910](v1);
  v5 = sub_230D0F12C(v4);
  v6 = v0[66];

  v7 = v0[1];

  return v7(v5);
}

uint64_t sub_230E075CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[62] = a3;
  v4[63] = a4;
  v4[60] = a1;
  v4[61] = a2;
  v6 = sub_230E68910();
  v4[64] = v6;
  v7 = *(v6 - 8);
  v4[65] = v7;
  v8 = *(v7 + 64) + 15;
  v4[66] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_230E07694, a2, 0);
}

uint64_t sub_230E07694()
{
  v1 = *(v0 + 480);
  v2 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v1[3]);
  if (sub_230E69390())
  {
    v3 = sub_230D0F908(MEMORY[0x277D84F90]);
    v4 = *(v0 + 528);

    v5 = *(v0 + 8);

    return v5(v3);
  }

  else
  {
    v8 = *(v0 + 488);
    v7 = *(v0 + 496);
    v9 = v1[3];
    v10 = v1[4];
    v11 = __swift_project_boxed_opaque_existential_1(*(v0 + 480), v9);
    *(v0 + 456) = sub_230E05CFC(sub_230D1D2E0, 0, v9, MEMORY[0x277D837D0], MEMORY[0x277D84A98], v10, MEMORY[0x277D84AC0], v11);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB5D8F0, &unk_230E70E80);
    sub_230D1D1C4(&qword_281565F50, &unk_27DB5D8F0, &unk_230E70E80);
    v12 = sub_230E68FF0();
    v14 = v13;

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB5D9C0, &unk_230E6C220);
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_230E6C060;
    *(v15 + 32) = 7955819;
    *(v15 + 40) = 0xE300000000000000;
    *(v15 + 48) = 3;
    *(v15 + 56) = 0u;
    *(v15 + 72) = 0u;
    *(v15 + 88) = 0x65756C6176;
    *(v15 + 96) = 0xE500000000000000;
    *(v15 + 104) = 0;
    *(v15 + 112) = 0u;
    *(v15 + 128) = 0u;
    strcpy((v15 + 144), "expirationTime");
    *(v15 + 159) = -18;
    *(v15 + 160) = 2;
    *(v15 + 168) = 0u;
    *(v15 + 184) = 0u;
    MEMORY[0x23191DA00](v12, v14);

    MEMORY[0x23191DA00](41, 0xE100000000000000);
    *(v0 + 256) = 0u;
    *(v0 + 272) = 0u;
    *(v0 + 288) = 0u;
    *(v0 + 304) = 0u;
    *(v0 + 320) = 0u;
    *(v0 + 336) = 0u;
    *(v0 + 352) = 1;
    sub_230D1D098(v0 + 256);
    *(v0 + 16) = 0x65726F7473;
    *(v0 + 24) = 0xE500000000000000;
    *(v0 + 32) = v15;
    *(v0 + 40) = 0u;
    *(v0 + 56) = 0u;
    *(v0 + 72) = 0u;
    *(v0 + 88) = 0x28204E492079656BLL;
    *(v0 + 96) = 0xE800000000000000;
    *(v0 + 112) = 0;
    *(v0 + 120) = 0;
    *(v0 + 104) = 0;
    *(v0 + 128) = 1;
    v16 = *(v8 + 112);
    *(v0 + 536) = v16;
    sub_230D1CDE0(v7, v0 + 360);

    return MEMORY[0x2822009F8](sub_230E079B8, v16, 0);
  }
}

uint64_t sub_230E079B8()
{
  v1 = v0[67];
  sub_230D1CDE0(v0[62], (v0 + 50));
  sub_230D1D0EC((v0 + 2), (v0 + 17));

  v2 = swift_task_alloc();
  v0[68] = v2;
  *v2 = v0;
  v2[1] = sub_230E07AA0;
  v3 = v0[67];
  v4 = v0[62];

  return (sub_230D70F74)(v0 + 58, 2, v4);
}

uint64_t sub_230E07AA0()
{
  v2 = *v1;
  v3 = *(*v1 + 544);
  v4 = *v1;
  *(*v1 + 552) = v0;

  v5 = *(v2 + 536);
  sub_230D1CE3C(*(v2 + 496));
  if (v0)
  {
    v6 = sub_230E07E9C;
  }

  else
  {
    v6 = sub_230E07BE8;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_230E07BE8()
{
  v1 = *(v0 + 488);
  sub_230D1CE3C(*(v0 + 496));
  sub_230D1D148(v0 + 16);

  return MEMORY[0x2822009F8](sub_230E07C58, v1, 0);
}

uint64_t sub_230E07C58()
{
  v26 = v0;
  v1 = v0[66];
  v2 = v0[65];
  v3 = v0[64];
  v4 = v0[58];
  sub_230E68900();
  sub_230E688D0();
  v6 = v5;
  (*(v2 + 8))(v1, v3);
  v7 = sub_230D0F908(MEMORY[0x277D84F90]);
  v24 = v7;
  v8 = v4[2];
  if (!v8)
  {
    v16 = v7;
LABEL_10:

    goto LABEL_11;
  }

  v9 = v0[69];
  v10 = v0[63];
  v11 = v4[4];

  sub_230E08C80(&v24, v11, v10, v6);
  if (v9)
  {

    v24 = 0;
    v25 = 0xE000000000000000;
    sub_230E69540();
    v12 = v25;
    v0[55] = v24;
    v0[56] = v12;
    MEMORY[0x23191DA00](0xD000000000000020, 0x8000000230E80EC0);
    v0[59] = v9;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5D890, &qword_230E6C200);
    sub_230E695F0();
    v13 = v0[55];
    v14 = v0[56];
    v15 = MEMORY[0x277D84F90];
    sub_230E68950();

    MEMORY[0x23191E910](v9);
    v16 = sub_230D0F908(v15);
LABEL_11:
    v22 = v0[66];

    v23 = v0[1];

    return v23(v16);
  }

  if (v8 == 1)
  {
LABEL_9:
    v16 = v24;
    goto LABEL_10;
  }

  v18 = v4 + 5;
  v19 = 1;
  while (v19 < v4[2])
  {
    v20 = v0[63];
    v21 = *v18;

    sub_230E08C80(&v24, v21, v20, v6);

    ++v19;
    ++v18;
    if (v8 == v19)
    {
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_230E07E9C()
{
  v1 = *(v0 + 488);
  sub_230D1CE3C(*(v0 + 496));

  return MEMORY[0x2822009F8](sub_230E07F04, v1, 0);
}

uint64_t sub_230E07F04()
{
  sub_230D1D148((v0 + 2));
  v1 = v0[69];
  sub_230E69540();
  v0[55] = 0;
  v0[56] = 0xE000000000000000;
  MEMORY[0x23191DA00](0xD000000000000020, 0x8000000230E80EC0);
  v0[59] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5D890, &qword_230E6C200);
  sub_230E695F0();
  v2 = v0[55];
  v3 = v0[56];
  v4 = MEMORY[0x277D84F90];
  sub_230E68950();

  MEMORY[0x23191E910](v1);
  v5 = sub_230D0F908(v4);
  v6 = v0[66];

  v7 = v0[1];

  return v7(v5);
}

uint64_t sub_230E08024(uint64_t *a1, uint64_t a2, uint64_t a3, double a4)
{
  if (!*(a2 + 16))
  {
    v17 = 0;
    v18 = 0;
    v15 = 0;
    v14 = 0;
    LOBYTE(v19) = -1;
    LOBYTE(v16) = -1;
LABEL_20:
    sub_230D0F460(v15, v14, v16);
    return sub_230D0F460(v18, v17, v19);
  }

  result = sub_230DA41A0(7955819, 0xE300000000000000);
  if (v8)
  {
    v9 = *(a2 + 56) + 24 * result;
    v10 = *(v9 + 16);
    v48 = *v9;
    v11 = *(v9 + 8);
    result = sub_230D0DCD8(*v9, v11, *(v9 + 16));
    if (*(a2 + 16))
    {
      goto LABEL_4;
    }

LABEL_9:
    v14 = 0;
    v15 = 0;
    v18 = 0;
    v17 = 0;
    v16 = 255;
    goto LABEL_18;
  }

  v48 = 0;
  v11 = 0;
  v10 = 255;
  if (!*(a2 + 16))
  {
    goto LABEL_9;
  }

LABEL_4:
  result = sub_230DA41A0(0x65756C6176, 0xE500000000000000);
  if (v12)
  {
    v13 = *(a2 + 56) + 24 * result;
    v15 = *v13;
    v14 = *(v13 + 8);
    v16 = *(v13 + 16);
    result = sub_230D0DCD8(*v13, v14, *(v13 + 16));
    if (!*(a2 + 16))
    {
      goto LABEL_17;
    }
  }

  else
  {
    v15 = 0;
    v14 = 0;
    v16 = 255;
    if (!*(a2 + 16))
    {
LABEL_17:
      v18 = 0;
      v17 = 0;
LABEL_18:
      v19 = 255;
      if (v10 != 3)
      {
        goto LABEL_19;
      }

      goto LABEL_13;
    }
  }

  result = sub_230DA41A0(0x6974617269707865, 0xEE00656D69546E6FLL);
  if ((v20 & 1) == 0)
  {
    goto LABEL_17;
  }

  v21 = *(a2 + 56) + 24 * result;
  v18 = *v21;
  v17 = *(v21 + 8);
  v19 = *(v21 + 16);
  result = sub_230D0DCD8(*v21, v17, *(v21 + 16));
  if (v10 != 3)
  {
LABEL_19:
    if (v10 == 255)
    {
      goto LABEL_20;
    }

    sub_230D0F460(v48, v11, v10);
    goto LABEL_22;
  }

LABEL_13:
  if (!v11)
  {
LABEL_22:
    sub_230D0F460(v15, v14, v16);
    v22 = v18;
    v23 = v17;
    v24 = v19;
    return sub_230D0F460(v22, v23, v24);
  }

  if (v16)
  {
    if (v16 != 255)
    {
      sub_230D0F460(v15, v14, v16);
    }

    goto LABEL_24;
  }

  if (v14 >> 60 == 15)
  {
LABEL_24:
    v25 = v18;
    v26 = v17;
    v27 = v19;
LABEL_25:
    sub_230D0F460(v25, v26, v27);
    v22 = v48;
LABEL_26:
    v23 = v11;
    v24 = 3;
    return sub_230D0F460(v22, v23, v24);
  }

  if (v19 != 2)
  {
    if (v19 != 255)
    {
      sub_230D0F460(v18, v17, v19);
    }

    goto LABEL_31;
  }

  if (v17)
  {
    goto LABEL_37;
  }

  if ((*&a4 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_47;
  }

  if (a4 <= -9.22337204e18)
  {
LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

  if (a4 >= 9.22337204e18)
  {
LABEL_48:
    __break(1u);
    return result;
  }

  if (v18 > a4)
  {
LABEL_37:
    v28 = sub_230E686C0();
    v29 = *(v28 + 48);
    v30 = *(v28 + 52);
    swift_allocObject();
    sub_230D1D20C(v48, v11, 3);
    sub_230D1D20C(v18, v17, 2);
    sub_230E686B0();
    sub_230D667B8();
    sub_230E686A0();
    if (v49)
    {
      sub_230D0F460(v48, v11, 3);
      sub_230D0F460(v18, v17, 2);
      sub_230D0F460(v15, v14, 0);
      sub_230D0F460(v48, v11, 3);
    }

    else
    {

      nullsub_1(&v63, v31, v32, v33);
      v58 = v67;
      v59 = v68;
      v60[0] = v69[0];
      *(v60 + 9) = *(v69 + 9);
      v54 = v63;
      v55 = v64;
      v56 = v65;
      v57 = v66;
      v61[0] = v63;
      v61[1] = v64;
      v61[2] = v65;
      v61[3] = v66;
      v61[4] = v67;
      v61[5] = v68;
      v62[0] = v69[0];
      *(v62 + 9) = *(v69 + 9);
      if (sub_230D666F8(v61) == 1)
      {
        sub_230E1A888(v48, v11, v50);
        sub_230D0F460(v48, v11, 3);
        v52[4] = v50[4];
        v52[5] = v50[5];
        v53[0] = v51[0];
        *(v53 + 9) = *(v51 + 9);
        v52[0] = v50[0];
        v52[1] = v50[1];
        v52[2] = v50[2];
        v52[3] = v50[3];
        sub_230D2D9F8(v52, &qword_27DB5B8E0, &qword_230E71DD8);
        sub_230D0F460(v48, v11, 3);
        sub_230D0F460(v18, v17, 2);
        v22 = v15;
        v23 = v14;
        v24 = 0;
        return sub_230D0F460(v22, v23, v24);
      }

      v70[4] = v58;
      v70[5] = v59;
      v71[0] = v60[0];
      *(v71 + 9) = *(v60 + 9);
      v70[0] = v54;
      v70[1] = v55;
      v70[2] = v56;
      v70[3] = v57;
      v45 = *a1;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v52[0] = *a1;
      sub_230E1BCE4(v70, v48, v11, isUniquelyReferenced_nonNull_native);
      sub_230D0F460(v48, v11, 3);
      sub_230D0F460(v48, v11, 3);
      sub_230D0F460(v18, v17, 2);
      result = sub_230D0F460(v15, v14, 0);
      *a1 = *&v52[0];
    }

    return result;
  }

  if (!*(a3 + 16))
  {
LABEL_31:
    v25 = v15;
    v26 = v14;
    v27 = 0;
    goto LABEL_25;
  }

  sub_230D1D20C(v48, v11, 3);
  sub_230D1D20C(v18, v17, 2);
  v34 = sub_230DA41A0(v48, v11);
  if ((v35 & 1) == 0)
  {
    sub_230D0F460(v48, v11, 3);
    sub_230D0F460(v18, v17, 2);
    sub_230D0F460(v15, v14, 0);
    v22 = v48;
    goto LABEL_26;
  }

  v36 = (*(a3 + 56) + (v34 << 7));
  v37 = v36[3];
  v39 = *v36;
  v38 = v36[1];
  v72[2] = v36[2];
  v72[3] = v37;
  v72[0] = v39;
  v72[1] = v38;
  v41 = v36[5];
  v40 = v36[6];
  v42 = v36[4];
  *(v73 + 9) = *(v36 + 105);
  v72[5] = v41;
  v73[0] = v40;
  v72[4] = v42;
  sub_230D5827C(v72, &v63);
  v43 = *a1;
  v44 = swift_isUniquelyReferenced_nonNull_native();
  *&v63 = *a1;
  sub_230E1BCE4(v72, v48, v11, v44);
  sub_230D0F460(v48, v11, 3);
  sub_230D0F460(v15, v14, 0);
  sub_230D0F460(v18, v17, 2);
  result = sub_230D0F460(v48, v11, 3);
  *a1 = v63;
  return result;
}