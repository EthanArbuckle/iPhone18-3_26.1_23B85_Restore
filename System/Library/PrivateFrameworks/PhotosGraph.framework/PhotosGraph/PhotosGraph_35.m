uint64_t Song.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v93 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0920, &qword_22F770B20);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v90 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0C90, &unk_22F785B70);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v90 - v9;
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB3E50, &qword_22F789368);
  v11 = *(v95 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v95);
  v14 = &v90 - v13;
  v15 = type metadata accessor for Song();
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15);
  v18 = &v90 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = a1[3];
  v19 = a1[4];
  v97 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v20);
  sub_22F399080();
  v94 = v14;
  v21 = v96;
  sub_22F742200();
  if (v21)
  {
    return __swift_destroy_boxed_opaque_existential_0(v97);
  }

  v22 = v10;
  v23 = v6;
  v25 = v93;
  v24 = v94;
  v92 = v15;
  v96 = v18;
  LOBYTE(v98) = 0;
  v26 = v95;
  v27 = sub_22F741EB0();
  v29 = v96;
  *v96 = v27;
  *(v29 + 1) = v30;
  LOBYTE(v98) = 1;
  *(v29 + 2) = sub_22F741E50();
  *(v29 + 3) = v31;
  LOBYTE(v98) = 2;
  *(v29 + 4) = sub_22F741E50();
  *(v29 + 5) = v32;
  LOBYTE(v98) = 3;
  v33 = sub_22F741E50();
  v91 = 0;
  *(v29 + 6) = v33;
  *(v29 + 7) = v34;
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0E90, &qword_22F7714A0);
  v103 = 4;
  sub_22F1BA494(&qword_2810A92D8);
  v35 = v91;
  sub_22F741EA0();
  if (v35)
  {
    v91 = v35;
    (*(v11 + 8))(v24, v26);
    v36 = 0;
    v37 = 0;
    v38 = 0;
    v39 = 0;
    v40 = 0;
    LODWORD(v94) = 0;
    LODWORD(v95) = 0;
  }

  else
  {
    *(v29 + 8) = v98;
    LOBYTE(v98) = 5;
    v29[72] = sub_22F741E60();
    LOBYTE(v98) = 6;
    *(v29 + 10) = sub_22F741E70();
    v29[88] = v41 & 1;
    LOBYTE(v98) = 7;
    v42 = sub_22F741E80();
    v54 = v96;
    *(v96 + 23) = v42;
    v54[96] = BYTE4(v42) & 1;
    LOBYTE(v98) = 8;
    v55 = sub_22F741E50();
    v91 = 0;
    v57 = v96;
    *(v96 + 13) = v55;
    *(v57 + 14) = v56;
    LOBYTE(v98) = 9;
    v58 = v91;
    v59 = sub_22F741E50();
    v91 = v58;
    if (v58)
    {
      (*(v11 + 8))(v94, v95);
      v38 = 0;
      v39 = 0;
      v40 = 0;
      LODWORD(v94) = 0;
      LODWORD(v95) = 0;
      v36 = 1;
      v37 = 1;
    }

    else
    {
      v61 = v96;
      *(v96 + 15) = v59;
      *(v61 + 16) = v60;
      LOBYTE(v98) = 10;
      v62 = v91;
      v63 = sub_22F741E50();
      v91 = v62;
      if (v62)
      {
        (*(v11 + 8))(v94, v95);
        v39 = 0;
        v40 = 0;
        LODWORD(v94) = 0;
        LODWORD(v95) = 0;
        v36 = 1;
        v37 = 1;
        v38 = 1;
      }

      else
      {
        v65 = v96;
        *(v96 + 17) = v63;
        *(v65 + 18) = v64;
        sub_22F73F7C0();
        LOBYTE(v98) = 11;
        sub_22F399350(&qword_27DAB3E58, MEMORY[0x277CC9788]);
        v66 = v91;
        sub_22F741EA0();
        v91 = v66;
        if (v66)
        {
          (*(v11 + 8))(v94, v95);
          v40 = 0;
          LODWORD(v94) = 0;
          LODWORD(v95) = 0;
          v36 = 1;
          v37 = 1;
          v38 = 1;
          v39 = 1;
        }

        else
        {
          sub_22F1207AC(v22, &v96[v92[15]], &qword_27DAB0C90, &unk_22F785B70);
          sub_22F73F690();
          LOBYTE(v98) = 12;
          sub_22F399350(&qword_27DAB1580, MEMORY[0x277CC9578]);
          v67 = v91;
          sub_22F741EA0();
          v91 = v67;
          if (v67)
          {
            (*(v11 + 8))(v94, v95);
            LODWORD(v94) = 0;
            LODWORD(v95) = 0;
            v36 = 1;
            v37 = 1;
            v38 = 1;
            v39 = 1;
            v40 = 1;
          }

          else
          {
            sub_22F1207AC(v23, &v96[v92[16]], &qword_27DAB0920, &qword_22F770B20);
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB3E40, &qword_22F789360);
            v103 = 13;
            sub_22F3991E8(&qword_27DAB3E60, sub_22F399260);
            v68 = v91;
            sub_22F741EA0();
            v91 = v68;
            if (!v68)
            {
              *&v96[v92[17]] = v98;
              LOBYTE(v98) = 14;
              v69 = sub_22F741E80();
              v91 = 0;
              v70 = &v96[v92[18]];
              *v70 = v69;
              v70[4] = BYTE4(v69) & 1;
              LOBYTE(v98) = 15;
              v71 = sub_22F741E80();
              v91 = 0;
              v72 = &v96[v92[19]];
              *v72 = v71;
              v72[4] = BYTE4(v71) & 1;
              LOBYTE(v98) = 16;
              v73 = sub_22F741E80();
              v91 = 0;
              v74 = &v96[v92[20]];
              *v74 = v73;
              v74[4] = BYTE4(v73) & 1;
              LOBYTE(v98) = 17;
              v75 = sub_22F741E80();
              v91 = 0;
              v76 = &v96[v92[21]];
              *v76 = v75;
              v76[4] = BYTE4(v75) & 1;
              LOBYTE(v98) = 18;
              v77 = sub_22F741E80();
              v91 = 0;
              v78 = &v96[v92[22]];
              *v78 = v77;
              v78[4] = BYTE4(v77) & 1;
              LOBYTE(v98) = 19;
              v79 = sub_22F741E80();
              v80 = &v96[v92[23]];
              *v80 = v79;
              v80[4] = BYTE4(v79) & 1;
              LOBYTE(v98) = 20;
              v96[v92[24]] = sub_22F741E60();
              LOBYTE(v98) = 21;
              v81 = sub_22F741E50();
              v82 = &v96[v92[25]];
              *v82 = v81;
              v82[1] = v83;
              v103 = 22;
              sub_22F3992B4();
              sub_22F741F10();
              (*(v11 + 8))(v94, v95);
              v84 = v100;
              v85 = v101;
              v86 = v102;
              v87 = v96;
              v88 = &v96[v92[26]];
              v89 = v99;
              *v88 = v98;
              *(v88 + 1) = v89;
              *(v88 + 4) = v84;
              v88[44] = v86;
              *(v88 + 10) = v85;
              sub_22F15CAA0(v87, v25);
              __swift_destroy_boxed_opaque_existential_0(v97);
              return sub_22F15CBD8(v87);
            }

            (*(v11 + 8))(v94, v95);
            LODWORD(v95) = 0;
            v36 = 1;
            v37 = 1;
            v38 = 1;
            v39 = 1;
            v40 = 1;
            LODWORD(v94) = 1;
          }
        }
      }
    }
  }

  __swift_destroy_boxed_opaque_existential_0(v97);
  v43 = v96;
  v44 = *(v96 + 1);

  v50 = v43[3];

  v45 = v43[5];

  v51 = v43[7];

  if (v36)
  {
    v46 = v43[8];

    v47 = v92;
    if (v37)
    {
      goto LABEL_18;
    }

LABEL_9:
    if (!v38)
    {
      goto LABEL_19;
    }

LABEL_10:
    v48 = v43[16];

    if (v39)
    {
      goto LABEL_20;
    }

LABEL_11:
    if (!v40)
    {
      goto LABEL_21;
    }

LABEL_12:
    result = sub_22F120ADC(v43 + v47[15], &qword_27DAB0C90, &unk_22F785B70);
    if (v94)
    {
      goto LABEL_22;
    }

LABEL_13:
    if (!v95)
    {
      return result;
    }

    goto LABEL_14;
  }

  v47 = v92;
  if (!v37)
  {
    goto LABEL_9;
  }

LABEL_18:
  v52 = v43[14];

  if (v38)
  {
    goto LABEL_10;
  }

LABEL_19:
  if (!v39)
  {
    goto LABEL_11;
  }

LABEL_20:
  v53 = v43[18];

  if (v40)
  {
    goto LABEL_12;
  }

LABEL_21:
  if (!v94)
  {
    goto LABEL_13;
  }

LABEL_22:
  result = sub_22F120ADC(v43 + v47[16], &qword_27DAB0920, &qword_22F770B20);
  if (v95)
  {
LABEL_14:
    v49 = *(v43 + v47[17]);
  }

  return result;
}

uint64_t sub_22F398E60@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22F7421F0();
  if (!v2)
  {
    __swift_project_boxed_opaque_existential_1(v12, v12[3]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB3E80, &qword_22F7896F0);
    sub_22F399FA0();
    sub_22F742050();
    __swift_destroy_boxed_opaque_existential_0(v12);
    *a2 = v7;
    *(a2 + 16) = v8;
    *(a2 + 32) = v9;
    *(a2 + 44) = v11;
    *(a2 + 40) = v10;
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t sub_22F398F90(uint64_t result)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    sub_22F740F30();

    return sub_22F741050();
  }

  return result;
}

unint64_t sub_22F39902C()
{
  result = qword_27DAB3E30;
  if (!qword_27DAB3E30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB3E30);
  }

  return result;
}

unint64_t sub_22F399080()
{
  result = qword_2810A99D0;
  if (!qword_2810A99D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810A99D0);
  }

  return result;
}

unint64_t sub_22F3990D4()
{
  result = qword_2810ABFD8[0];
  if (!qword_2810ABFD8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_2810ABFD8);
  }

  return result;
}

unint64_t sub_22F399128()
{
  result = qword_27DAB3E48;
  if (!qword_27DAB3E48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB3E48);
  }

  return result;
}

uint64_t sub_22F39917C(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result != 1)
  {

    sub_22F18B0F4(a3);
  }

  return result;
}

uint64_t sub_22F3991E8(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DAB3E40, &qword_22F789360);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_22F399260()
{
  result = qword_27DAB3E68;
  if (!qword_27DAB3E68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB3E68);
  }

  return result;
}

unint64_t sub_22F3992B4()
{
  result = qword_27DAB3E70;
  if (!qword_27DAB3E70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB3E70);
  }

  return result;
}

uint64_t sub_22F399350(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_22F3993C0()
{
  sub_22F168724(319, &qword_2810A9390);
  if (v0 <= 0x3F)
  {
    sub_22F399628(319, &qword_2810A92C8, &qword_27DAB0E90, &qword_22F7714A0);
    if (v1 <= 0x3F)
    {
      sub_22F168724(319, &qword_2810A9280);
      if (v2 <= 0x3F)
      {
        sub_22F168724(319, &qword_2810A9278);
        if (v3 <= 0x3F)
        {
          sub_22F168724(319, &qword_2810A9270);
          if (v4 <= 0x3F)
          {
            sub_22F3995D4(319, &qword_2810AC6D8, MEMORY[0x277CC9788]);
            if (v5 <= 0x3F)
            {
              sub_22F3995D4(319, &qword_2810AC6F0, MEMORY[0x277CC9578]);
              if (v6 <= 0x3F)
              {
                sub_22F399628(319, &qword_2810A9380, &qword_27DAB3E40, &qword_22F789360);
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

void sub_22F3995D4(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_22F741860();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_22F399628(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v5 = sub_22F741860();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t get_enum_tag_for_layout_string_11PhotosGraph14FlexMLAnalysisVSg(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_22F3996A0(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 > 0x7FFFFFFD && *(a1 + 45))
  {
    return (*a1 + 2147483646);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v5 = -1;
  }

  else
  {
    v5 = v4;
  }

  v6 = v5 - 1;
  if (v4 < 1)
  {
    v7 = -1;
  }

  else
  {
    v7 = v6;
  }

  return (v7 + 1);
}

uint64_t sub_22F399708(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 44) = 0;
    *(result + 40) = 0;
    *result = a2 - 2147483646;
    if (a3 > 0x7FFFFFFD)
    {
      *(result + 45) = 1;
    }
  }

  else
  {
    if (a3 > 0x7FFFFFFD)
    {
      *(result + 45) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

unint64_t sub_22F39978C()
{
  result = qword_27DAB3E78;
  if (!qword_27DAB3E78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB3E78);
  }

  return result;
}

unint64_t sub_22F3997E4()
{
  result = qword_2810A99C0;
  if (!qword_2810A99C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810A99C0);
  }

  return result;
}

unint64_t sub_22F39983C()
{
  result = qword_2810A99C8;
  if (!qword_2810A99C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810A99C8);
  }

  return result;
}

uint64_t sub_22F399890(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x44496D616461 && a2 == 0xE600000000000000;
  if (v4 || (sub_22F742040() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656C746974 && a2 == 0xE500000000000000 || (sub_22F742040() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x747369747261 && a2 == 0xE600000000000000 || (sub_22F742040() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6D75626C61 && a2 == 0xE500000000000000 || (sub_22F742040() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6D614E65726E6567 && a2 == 0xEA00000000007365 || (sub_22F742040() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x63696C7078457369 && a2 == 0xEA00000000007469 || (sub_22F742040() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x6E6F697461727564 && a2 == 0xE800000000000000 || (sub_22F742040() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x6E65726566657270 && a2 == 0xEF65726F63536563 || (sub_22F742040() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD000000000000010 && 0x800000022F79D340 == a2 || (sub_22F742040() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x504C5255676E6F73 && a2 == 0xEB00000000687461 || (sub_22F742040() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0xD000000000000010 && 0x800000022F79D360 == a2 || (sub_22F742040() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0x636F4C6F69647561 && a2 == 0xEB00000000656C61 || (sub_22F742040() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0xD000000000000016 && 0x800000022F790200 == a2 || (sub_22F742040() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0x6B63616279616C70 && a2 == 0xEC0000006F666E49 || (sub_22F742040() & 1) != 0)
  {

    return 13;
  }

  else if (a1 == 0x6C6173756F7261 && a2 == 0xE700000000000000 || (sub_22F742040() & 1) != 0)
  {

    return 14;
  }

  else if (a1 == 0x65636E656C6176 && a2 == 0xE700000000000000 || (sub_22F742040() & 1) != 0)
  {

    return 15;
  }

  else if (a1 == 0xD00000000000001CLL && 0x800000022F79BDC0 == a2 || (sub_22F742040() & 1) != 0)
  {

    return 16;
  }

  else if (a1 == 0xD00000000000001FLL && 0x800000022F79BDE0 == a2 || (sub_22F742040() & 1) != 0)
  {

    return 17;
  }

  else if (a1 == 0xD000000000000010 && 0x800000022F79D380 == a2 || (sub_22F742040() & 1) != 0)
  {

    return 18;
  }

  else if (a1 == 0xD000000000000011 && 0x800000022F79D3A0 == a2 || (sub_22F742040() & 1) != 0)
  {

    return 19;
  }

  else if (a1 == 0xD00000000000001ELL && 0x800000022F790010 == a2 || (sub_22F742040() & 1) != 0)
  {

    return 20;
  }

  else if (a1 == 0x50746E65746E6F63 && a2 == 0xEF72656469766F72 || (sub_22F742040() & 1) != 0)
  {

    return 21;
  }

  else if (a1 == 0xD000000000000015 && 0x800000022F79D3C0 == a2)
  {

    return 22;
  }

  else
  {
    v6 = sub_22F742040();

    if (v6)
    {
      return 22;
    }

    else
    {
      return 23;
    }
  }
}

unint64_t sub_22F399FA0()
{
  result = qword_27DAB3E88;
  if (!qword_27DAB3E88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DAB3E80, &qword_22F7896F0);
    sub_22F39A024();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB3E88);
  }

  return result;
}

unint64_t sub_22F39A024()
{
  result = qword_2810ABB88;
  if (!qword_2810ABB88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810ABB88);
  }

  return result;
}

void sub_22F39A080(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = v2;
  v63 = a2;
  v75 = sub_22F740270();
  v65 = *(v75 - 8);
  v5 = *(v65 + 64);
  MEMORY[0x28223BE20](v75);
  v74 = (v61 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v73 = sub_22F740160();
  v78 = *(v73 - 8);
  v7 = *(v78 + 64);
  MEMORY[0x28223BE20](v73);
  v62 = v61 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB3E90, &qword_22F7896F8);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v61 - v11;
  v13 = sub_22F740420();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x28223BE20](v13);
  v72 = v61 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v16);
  v71 = v61 - v19;
  v20 = MEMORY[0x28223BE20](v18);
  v82 = v61 - v21;
  MEMORY[0x28223BE20](v20);
  v66 = v61 - v22;
  v67 = sub_22F7403B0();
  v23 = *(v67 - 8);
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v67);
  v26 = v61 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = a1;
  v68 = sub_22F73FD40();
  v27 = *(v68 + 16);
  v79 = v13;
  v80 = v14;
  v77 = v27;
  if (v27)
  {
    v28 = 0;
    v76 = (v23 + 8);
    v69 = (v14 + 48);
    v70 = v23 + 16;
    v29 = (v14 + 32);
    v81 = MEMORY[0x277D84F90];
    v30 = v67;
    v31 = v68;
    while (1)
    {
      if (v28 >= *(v31 + 16))
      {
        __break(1u);
        goto LABEL_26;
      }

      (*(v23 + 16))(v26, v31 + ((*(v23 + 80) + 32) & ~*(v23 + 80)) + *(v23 + 72) * v28, v30);
      v32 = v3;
      sub_22F39A88C(v12);
      if (v3)
      {
        break;
      }

      (*v76)(v26, v30);
      if ((*v69)(v12, 1, v13) == 1)
      {
        sub_22F39B398(v12);
      }

      else
      {
        v33 = *v29;
        v34 = v66;
        (*v29)(v66, v12, v13);
        v33(v82, v34, v13);
        v35 = v81;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v35 = sub_22F140164(0, v35[2] + 1, 1, v35);
        }

        v37 = v35[2];
        v36 = v35[3];
        v81 = v35;
        if (v37 >= v36 >> 1)
        {
          v81 = sub_22F140164(v36 > 1, v37 + 1, 1, v81);
        }

        v38 = v80;
        v39 = v81;
        v81[2] = v37 + 1;
        v13 = v79;
        v33(&v39[((*(v38 + 80) + 32) & ~*(v38 + 80)) + *(v38 + 72) * v37], v82, v79);
        v3 = v32;
        v30 = v67;
        v31 = v68;
      }

      if (v77 == ++v28)
      {
        goto LABEL_14;
      }
    }

    (*v76)(v26, v30);

    __break(1u);
  }

  else
  {
    v81 = MEMORY[0x277D84F90];
LABEL_14:

    v40 = v81;
    v41 = v81[2];
    if (v41)
    {
      v61[1] = v3;
      v70 = sub_22F73FD50();
      v77 = v42;
      v76 = sub_22F73FD90();
      v83 = MEMORY[0x277D84F90];
      sub_22F146DBC(0, v41, 0);
      v43 = *(v80 + 16);
      v44 = v83;
      v45 = v40 + ((*(v80 + 80) + 32) & ~*(v80 + 80));
      v68 = *(v80 + 72);
      v69 = v43;
      LODWORD(v67) = *MEMORY[0x277D3C2B8];
      v46 = (v65 + 104);
      v65 = v80 + 8;
      v66 = v46;
      v64 = v78 + 32;
      v47 = v62;
      v80 += 16;
      do
      {
        v82 = v41;
        v48 = v71;
        v49 = v44;
        v50 = v69;
        v69(v71, v45, v13);
        v51 = v13;
        v53 = v74;
        v52 = v75;
        *v74 = 0;
        (*v66)(v53, v67, v52);
        v50(v72, v48, v51);
        v44 = v49;

        sub_22F740150();
        (*v65)(v48, v51);
        v83 = v49;
        v54 = v47;
        v56 = *(v49 + 16);
        v55 = *(v49 + 24);
        if (v56 >= v55 >> 1)
        {
          sub_22F146DBC(v55 > 1, v56 + 1, 1);
          v44 = v83;
        }

        *(v44 + 16) = v56 + 1;
        (*(v78 + 32))(v44 + ((*(v78 + 80) + 32) & ~*(v78 + 80)) + *(v78 + 72) * v56, v54, v73);
        v45 += v68;
        v41 = (v82 - 1);
        v47 = v54;
        v13 = v79;
      }

      while (v82 != 1);
    }

    else
    {

      if (qword_2810A9418 != -1)
      {
LABEL_26:
        swift_once();
      }

      v57 = sub_22F740B90();
      __swift_project_value_buffer(v57, qword_2810B4D00);
      v58 = sub_22F740B70();
      v59 = sub_22F7415E0();
      if (os_log_type_enabled(v58, v59))
      {
        v60 = swift_slowAlloc();
        *v60 = 0;
        _os_log_impl(&dword_22F0FC000, v58, v59, "Encountered a non personal/public event query token!", v60, 2u);
        MEMORY[0x2319033A0](v60, -1, -1);
      }

      v44 = 0;
    }

    *v63 = v44;
  }
}

uint64_t sub_22F39A88C@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_22F7404D0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v42 - v9;
  MEMORY[0x28223BE20](v8);
  v12 = &v42 - v11;
  sub_22F7403A0();
  v13 = (*(v3 + 88))(v12, v2);
  if (v13 != *MEMORY[0x277D3C4C0])
  {
    if (v13 != *MEMORY[0x277D3C4C8])
    {
      goto LABEL_23;
    }

    (*(v3 + 16))(v10, v12, v2);
    (*(v3 + 96))(v10, v2);
    v18 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB1E98, &qword_22F7776F8) + 48);
    v19 = sub_22F740A50();
    v20 = *(v19 - 8);
    if ((*(v20 + 48))(v10, 1, v19) != 1)
    {
      v26 = (*(v20 + 88))(v10, v19);
      if (v26 == *MEMORY[0x277D3CA70])
      {
        v27 = MEMORY[0x277D3C408];
      }

      else if (v26 == *MEMORY[0x277D3CA88])
      {
        v27 = MEMORY[0x277D3C428];
      }

      else
      {
        if (v26 != *MEMORY[0x277D3CA80])
        {
          (*(v20 + 8))(v10, v19);
          v36 = sub_22F740580();
          (*(*(v36 - 8) + 8))(&v10[v18], v36);
          goto LABEL_23;
        }

        v27 = MEMORY[0x277D3C420];
      }

      v31 = *v27;
      v32 = sub_22F740420();
      v33 = *(v32 - 8);
      v43 = v18;
      v34 = v33;
      (*(v33 + 104))(a1, v31, v32);
      (*(v34 + 56))(a1, 0, 1, v32);
      v35 = sub_22F740580();
      (*(*(v35 - 8) + 8))(&v10[v43], v35);
      return (*(v3 + 8))(v12, v2);
    }

    v21 = sub_22F740580();
    (*(*(v21 - 8) + 8))(&v10[v18], v21);
LABEL_8:
    (*(v3 + 8))(v12, v2);
    v22 = *MEMORY[0x277D3C418];
    v23 = sub_22F740420();
    v24 = *(v23 - 8);
    (*(v24 + 104))(a1, v22, v23);
    return (*(v24 + 56))(a1, 0, 1, v23);
  }

  (*(v3 + 16))(v7, v12, v2);
  (*(v3 + 96))(v7, v2);
  v14 = sub_22F740A30();
  v15 = *(v14 - 8);
  if ((*(v15 + 48))(v7, 1, v14) == 1)
  {
    goto LABEL_8;
  }

  v16 = (*(v15 + 88))(v7, v14);
  if (v16 != *MEMORY[0x277D3CA60])
  {
    if (v16 == *MEMORY[0x277D3CA58])
    {
      v17 = MEMORY[0x277D3C400];
      goto LABEL_15;
    }

    if (v16 == *MEMORY[0x277D3CA50])
    {
      v17 = MEMORY[0x277D3C3F8];
      goto LABEL_15;
    }

    (*(v15 + 8))(v7, v14);
LABEL_23:
    if (qword_2810A9418 != -1)
    {
      swift_once();
    }

    v37 = sub_22F740B90();
    __swift_project_value_buffer(v37, qword_2810B4D00);
    v38 = sub_22F740B70();
    v39 = sub_22F7415E0();
    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      *v40 = 0;
      _os_log_impl(&dword_22F0FC000, v38, v39, "Encountered non event extended token during event token generation!", v40, 2u);
      MEMORY[0x2319033A0](v40, -1, -1);
    }

    v41 = sub_22F740420();
    (*(*(v41 - 8) + 56))(a1, 1, 1, v41);
    return (*(v3 + 8))(v12, v2);
  }

  v17 = MEMORY[0x277D3C410];
LABEL_15:
  v28 = *v17;
  v29 = sub_22F740420();
  v30 = *(v29 - 8);
  (*(v30 + 104))(a1, v28, v29);
  (*(v30 + 56))(a1, 0, 1, v29);
  return (*(v3 + 8))(v12, v2);
}

void *_s11PhotosGraph32ExtendedTokenCollectionGeneratorC013generateEventC6Tokens3forSay0A12Intelligence0hcD0VGSayAF05QueryD0VG_tF_0(uint64_t a1)
{
  if (qword_2810A9418 != -1)
  {
LABEL_48:
    swift_once();
  }

  v2 = sub_22F740B90();
  __swift_project_value_buffer(v2, qword_2810B4D00);
  v3 = sub_22F740B70();
  v4 = sub_22F7415C0();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_22F0FC000, v3, v4, "generateEventExtendedTokens for query tokens has started.", v5, 2u);
    MEMORY[0x2319033A0](v5, -1, -1);
  }

  v6 = *(a1 + 16);
  if (v6)
  {
    v7 = 0;
    v8 = MEMORY[0x277D84F90];
    while (2)
    {
      v9 = v7;
      while (1)
      {
        if (v9 >= v6)
        {
          __break(1u);
LABEL_42:
          __break(1u);
LABEL_43:
          __break(1u);
LABEL_44:
          __break(1u);
LABEL_45:
          __break(1u);
LABEL_46:
          __break(1u);
LABEL_47:
          __break(1u);
          goto LABEL_48;
        }

        v10 = *(sub_22F73FDA0() - 8);
        v7 = v9 + 1;
        if (__OFADD__(v9, 1))
        {
          goto LABEL_42;
        }

        sub_22F39A080(a1 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(v10 + 72) * v9, &v34);
        v11 = v34;
        if (v34)
        {
          break;
        }

        ++v9;
        if (v7 == v6)
        {
          goto LABEL_19;
        }
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v8 = sub_22F13EB78(0, v8[2] + 1, 1, v8);
      }

      v13 = v8[2];
      v12 = v8[3];
      if (v13 >= v12 >> 1)
      {
        v8 = sub_22F13EB78((v12 > 1), v13 + 1, 1, v8);
      }

      v8[2] = v13 + 1;
      v8[v13 + 4] = v11;
      if (v7 != v6)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v8 = MEMORY[0x277D84F90];
  }

LABEL_19:
  v14 = v8[2];
  if (v14)
  {
    v15 = 0;
    v16 = MEMORY[0x277D84F90];
    while (1)
    {
      if (v15 >= v8[2])
      {
        goto LABEL_43;
      }

      v17 = v8[v15 + 4];
      a1 = *(v17 + 16);
      v18 = v16[2];
      v19 = v18 + a1;
      if (__OFADD__(v18, a1))
      {
        goto LABEL_44;
      }

      v20 = v8[v15 + 4];

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (isUniquelyReferenced_nonNull_native && v19 <= v16[3] >> 1)
      {
        if (!*(v17 + 16))
        {
          goto LABEL_21;
        }
      }

      else
      {
        if (v18 <= v19)
        {
          v22 = v18 + a1;
        }

        else
        {
          v22 = v18;
        }

        v16 = sub_22F13EB50(isUniquelyReferenced_nonNull_native, v22, 1, v16);
        if (!*(v17 + 16))
        {
LABEL_21:

          if (a1)
          {
            goto LABEL_45;
          }

          goto LABEL_22;
        }
      }

      v23 = (v16[3] >> 1) - v16[2];
      v24 = *(sub_22F740160() - 8);
      if (v23 < a1)
      {
        goto LABEL_46;
      }

      v25 = (*(v24 + 80) + 32) & ~*(v24 + 80);
      v26 = *(v24 + 72);
      swift_arrayInitWithCopy();

      if (a1)
      {
        v27 = v16[2];
        v28 = __OFADD__(v27, a1);
        v29 = v27 + a1;
        if (v28)
        {
          goto LABEL_47;
        }

        v16[2] = v29;
      }

LABEL_22:
      if (v14 == ++v15)
      {
        goto LABEL_38;
      }
    }
  }

  v16 = MEMORY[0x277D84F90];
LABEL_38:

  v30 = sub_22F740B70();
  v31 = sub_22F7415C0();
  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    *v32 = 0;
    _os_log_impl(&dword_22F0FC000, v30, v31, "generateEventExtendedTokens for query tokens complete.", v32, 2u);
    MEMORY[0x2319033A0](v32, -1, -1);
  }

  return v16;
}

uint64_t sub_22F39B398(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB3E90, &qword_22F7896F8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id DayOfWeekFeatureExtractor.__allocating_init()()
{
  v6[1] = *MEMORY[0x277D85DE8];
  v6[0] = 0;
  v1 = [objc_allocWithZone(v0) initWithError_];
  if (v1)
  {
    v2 = v6[0];
  }

  else
  {
    v3 = v6[0];
    sub_22F73F370();

    swift_willThrow();
  }

  v4 = *MEMORY[0x277D85DE8];
  return v1;
}

id DayOfWeekFeatureExtractor.init()()
{
  ObjectType = swift_getObjectType();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAB1110, &unk_22F771270);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_22F779720;
  *(v2 + 32) = sub_22F740E20();
  *(v2 + 40) = v3;
  *(v2 + 48) = sub_22F740E20();
  *(v2 + 56) = v4;
  *(v2 + 64) = sub_22F740E20();
  *(v2 + 72) = v5;
  *(v2 + 80) = sub_22F740E20();
  *(v2 + 88) = v6;
  *(v2 + 96) = sub_22F740E20();
  *(v2 + 104) = v7;
  *(v2 + 112) = sub_22F740E20();
  *(v2 + 120) = v8;
  *(v2 + 128) = sub_22F740E20();
  *(v2 + 136) = v9;
  v10 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB13D0, &qword_22F7717F0);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_22F771350;
  *(v11 + 32) = [objc_opt_self() dateOfMoment];
  *(v11 + 40) = [objc_opt_self() dayOfWeekOfDate];
  sub_22F39B760();
  v12 = sub_22F741160();

  v13 = [v10 chain_];

  v14 = @"DayOfWeek";
  v15 = sub_22F741160();

  aBlock[4] = sub_22F39B7AC;
  aBlock[5] = 0;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_22F2D83D0;
  aBlock[3] = &block_descriptor_48;
  v16 = _Block_copy(aBlock);
  v19.receiver = v0;
  v19.super_class = ObjectType;
  v17 = objc_msgSendSuper2(&v19, sel_initWithName_featureNames_relation_labelForTargetBlock_, v14, v15, v13, v16);

  _Block_release(v16);
  return v17;
}

unint64_t sub_22F39B760()
{
  result = qword_2810A9218;
  if (!qword_2810A9218)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2810A9218);
  }

  return result;
}

void *sub_22F39B7AC(void *a1, void *a2)
{
  objc_opt_self();
  v4 = swift_dynamicCastObjCClass();
  if (v4)
  {
    v5 = v4;
    v6 = a1;
    v7 = [v5 name];
    a2 = sub_22F740E20();
  }

  else if (a2)
  {
    sub_22F39BABC();
    v8 = swift_allocError();
    *a2 = sub_22F73F360();

    return 0;
  }

  return a2;
}

uint64_t block_copy_helper_48(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

id DayOfWeekFeatureExtractor.__allocating_init(name:featureNames:relation:labelForTargetBlock:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  if (a2)
  {
    v11 = sub_22F740DF0();
  }

  else
  {
    v11 = 0;
  }

  v12 = objc_allocWithZone(v7);
  v13 = sub_22F741160();

  v17[4] = a5;
  v17[5] = a6;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 1107296256;
  v17[2] = sub_22F2D83D0;
  v17[3] = &block_descriptor_3_0;
  v14 = _Block_copy(v17);
  v15 = [v12 initWithName:v11 featureNames:v13 relation:a4 labelForTargetBlock:v14];

  _Block_release(v14);

  return v15;
}

id DayOfWeekFeatureExtractor.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_22F39BABC()
{
  result = qword_27DAB3E98;
  if (!qword_27DAB3E98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB3E98);
  }

  return result;
}

unint64_t sub_22F39BB24()
{
  result = qword_27DAB3EA0;
  if (!qword_27DAB3EA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB3EA0);
  }

  return result;
}

uint64_t MagicSlotPeopleSource.__allocating_init(for:with:)(uint64_t *a1, uint64_t *a2)
{
  v4 = swift_allocObject();
  MagicSlotPeopleSource.init(for:with:)(a1, a2);
  return v4;
}

void sub_22F39BBD0(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  v4 = *(v3 + 16);
  *(v3 + 16) = v2;
  v5 = v2;
}

id sub_22F39BC28()
{
  swift_beginAccess();
  v1 = *(v0 + 16);

  return v1;
}

uint64_t sub_22F39BC6C(uint64_t a1, uint64_t *a2)
{
  sub_22F15C30C(a1, v5);
  v3 = *a2;
  swift_beginAccess();
  __swift_destroy_boxed_opaque_existential_0((v3 + 24));
  sub_22F100260(v5, v3 + 24);
  return swift_endAccess();
}

uint64_t sub_22F39BD18(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  v4 = *(v3 + 64);
  *(v3 + 64) = v2;
}

uint64_t sub_22F39BD78()
{
  swift_beginAccess();
  v1 = *(v0 + 64);
}

uint64_t sub_22F39BDB0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  v4 = *(v3 + 72);
  *(v3 + 72) = v2;
}

uint64_t sub_22F39BE10()
{
  swift_beginAccess();
  v1 = *(v0 + 72);
}

uint64_t sub_22F39BE48()
{
  v0 = sub_22F740B90();
  __swift_allocate_value_buffer(v0, qword_2810AB898);
  __swift_project_value_buffer(v0, qword_2810AB898);
  return sub_22F740B80();
}

uint64_t static CollectionSource.logger.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_2810AB890 != -1)
  {
    swift_once();
  }

  v2 = sub_22F740B90();
  v3 = __swift_project_value_buffer(v2, qword_2810AB898);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t *CollectionSource.__allocating_init(for:with:categories:)(uint64_t *a1, void *a2, uint64_t a3)
{
  swift_allocObject();
  v6 = sub_22F39EE44(a1, a2, a3);

  return v6;
}

uint64_t *CollectionSource.init(for:with:categories:)(uint64_t *a1, void *a2, uint64_t a3)
{
  v4 = sub_22F39EE44(a1, a2, a3);

  return v4;
}

uint64_t sub_22F39C020(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v5 = a3[4];
  __swift_project_boxed_opaque_existential_1(a3, a3[3]);
  v6 = sub_22F740720();
  v7 = sub_22F740440();
  v8 = _s11PhotosGraph16CollectionSourceC26fetchHistoricalCollections4type7subtype12photoLibrarySay0A12Intelligence09TriggeredC0VGSo16PHSuggestionTypeV_So0N7SubtypeVSo07PHPhotoK0CtFZ_0(v6, v7, a4);
  return sub_22F1459C0(v8);
}

uint64_t static CollectionSource.fetchSuggestions(for:type:subtype:photoLibrary:)(unsigned __int16 a1, unsigned __int16 a2, unsigned __int16 a3, id a4)
{
  v7 = [a4 librarySpecificFetchOptions];
  v8 = [objc_opt_self() fetchSuggestionsWithState:a1 ofType:a2 subtype:a3 withOptions:v7];
  v15 = MEMORY[0x277D84F90];
  result = [v8 count];
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v10 = result;
    if (result)
    {
      v11 = 0;
      do
      {
        v12 = [v8 objectAtIndexedSubscript_];
        MEMORY[0x231900D00]();
        if (*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v15 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v13 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
          sub_22F7411C0();
        }

        ++v11;
        sub_22F741220();
      }

      while (v10 != v11);
      v14 = v15;
    }

    else
    {
      v14 = MEMORY[0x277D84F90];
    }

    return v14;
  }

  return result;
}

id sub_22F39C210()
{
  v1 = *v0;
  swift_beginAccess();
  v2 = *(v1 + 16);

  return v2;
}

uint64_t sub_22F39C260()
{
  v1 = *v0;
  swift_beginAccess();
  v2 = *(v1 + 64);
}

uint64_t sub_22F39C2A4()
{
  v1 = *v0;
  swift_beginAccess();
  v2 = *(v1 + 72);
}

uint64_t sub_22F39C2E8@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  swift_beginAccess();
  return sub_22F15C30C(v3 + 24, a1);
}

uint64_t PeopleSource.__allocating_init(for:with:)(uint64_t *a1, uint64_t *a2)
{
  v4 = swift_allocObject();
  PeopleSource.init(for:with:)(a1, a2);
  return v4;
}

uint64_t _s11PhotosGraph10PetsSourceCfd_0()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 24));
  v1 = *(v0 + 64);

  v2 = *(v0 + 72);

  return v0;
}

uint64_t _s11PhotosGraph10PetsSourceCfD_0()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 24));
  v1 = *(v0 + 64);

  v2 = *(v0 + 72);

  return swift_deallocClassInstance();
}

uint64_t PetsSource.__allocating_init(for:with:)(uint64_t *a1, uint64_t *a2)
{
  v4 = swift_allocObject();
  PetsSource.init(for:with:)(a1, a2);
  return v4;
}

void *sub_22F39C4F8(uint64_t *a1, uint64_t *a2, unsigned int *a3, void (*a4)(uint64_t *, unint64_t), uint64_t (*a5)(uint64_t *))
{
  v42 = a5;
  v52 = a3;
  v6 = v5;
  v47 = *v6;
  v48 = a4;
  v9 = sub_22F740460();
  v10 = *(v9 - 8);
  v11 = v10;
  v12 = v10[8];
  MEMORY[0x28223BE20](v9);
  v46 = &v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = a1;
  sub_22F15C30C(a1, v57);
  v14 = a2[3];
  v15 = a2[4];
  v51 = a2;
  __swift_project_boxed_opaque_existential_1(a2, v14);
  v16 = (*(v15 + 24))(v14, v15);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB3EA8, &qword_22F789800);
  v17 = v10[9];
  v18 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v19 = swift_allocObject();
  v43 = xmmword_22F771340;
  *(v19 + 16) = xmmword_22F771340;
  v20 = v10[13];
  v45 = *v52;
  v52 = v9;
  v44 = v20;
  v20(v19 + v18);
  v41 = v6 + 3;
  v21 = v6;
  sub_22F15C30C(v57, (v6 + 3));
  v6[2] = v16;
  v22 = MEMORY[0x277D84F90];
  v6[8] = MEMORY[0x277D84F90];
  v50 = v6 + 8;
  v54 = v57;
  v55 = v16;
  v56 = v47;
  v23 = v16;
  v6[9] = sub_22F141B5C(v22, v48, v53, v19);
  __swift_destroy_boxed_opaque_existential_0(v57);
  swift_setDeallocating();
  (v11[1])(v19 + v18, v52);
  swift_deallocClassInstance();

  v24 = v49;
  v25 = v49[4];
  __swift_project_boxed_opaque_existential_1(v49, v49[3]);
  v26 = sub_22F740730();
  if (v27)
  {
    v28 = v26;
    v29 = v27;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB3EB0, &qword_22F789808);
    v30 = swift_allocObject();
    *(v30 + 16) = v43;
    v31 = v46;
    v44(v46, v45, v52);
    swift_beginAccess();
    v32 = v21[2];
    v33 = type metadata accessor for SingleCollection();
    swift_allocObject();

    v34 = SingleCollection.init(with:category:photoLibrary:)(v28, v29, v31, v32);
    *(v30 + 56) = v33;
    *(v30 + 64) = &protocol witness table for SingleCollection;
    *(v30 + 32) = v34;
    swift_beginAccess();
    v35 = v21[8];
    v21[8] = v30;

    v36 = v51;
  }

  else
  {
    v36 = v51;
    v37 = v42(v51);
    v38 = v50;
    swift_beginAccess();
    v39 = *v38;
    *v38 = v37;
  }

  __swift_destroy_boxed_opaque_existential_0(v36);
  __swift_destroy_boxed_opaque_existential_0(v24);
  return v21;
}

uint64_t TripsSource.__allocating_init(for:with:)(uint64_t *a1, uint64_t *a2)
{
  v4 = swift_allocObject();
  TripsSource.init(for:with:)(a1, a2);
  return v4;
}

uint64_t AlbumsSource.__allocating_init(for:with:)(uint64_t *a1, uint64_t *a2)
{
  v4 = swift_allocObject();
  AlbumsSource.init(for:with:)(a1, a2);
  return v4;
}

uint64_t *AlbumsSource.init(for:with:)(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  v36 = *v3;
  v6 = sub_22F740460();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v35 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22F15C30C(a1, v46);
  v10 = a2[3];
  v11 = a2[4];
  v40 = a2;
  __swift_project_boxed_opaque_existential_1(a2, v10);
  v12 = (*(v11 + 24))(v10, v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB3EA8, &qword_22F789800);
  v13 = *(v7 + 72);
  v14 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v15 = swift_allocObject();
  v37 = xmmword_22F771340;
  *(v15 + 16) = xmmword_22F771340;
  v16 = *(v7 + 104);
  v34 = *MEMORY[0x277D3C450];
  v41 = v6;
  v33 = v16;
  v16(v15 + v14);
  sub_22F15C30C(v46, (v3 + 3));
  v3[2] = v12;
  v38 = v3 + 2;
  v17 = MEMORY[0x277D84F90];
  v3[8] = MEMORY[0x277D84F90];
  v39 = v3 + 8;
  v43 = v46;
  v44 = v12;
  v45 = v36;
  v18 = v12;
  v3[9] = sub_22F141B5C(v17, sub_22F3A01E8, v42, v15);
  __swift_destroy_boxed_opaque_existential_0(v46);
  swift_setDeallocating();
  (*(v7 + 8))(v15 + v14, v41);
  swift_deallocClassInstance();

  v19 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v20 = sub_22F740730();
  if (v21)
  {
    v22 = v20;
    v23 = v21;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB3EB0, &qword_22F789808);
    v24 = swift_allocObject();
    *(v24 + 16) = v37;
    v25 = v35;
    v33(v35, v34, v41);
    swift_beginAccess();
    v26 = v3[2];
    v27 = type metadata accessor for SingleCollection();
    swift_allocObject();

    v28 = SingleCollection.init(with:category:photoLibrary:)(v22, v23, v25, v26);
    v29 = &protocol witness table for SingleCollection;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB3EB0, &qword_22F789808);
    v24 = swift_allocObject();
    *(v24 + 16) = v37;
    swift_beginAccess();
    v30 = v3[2];
    v27 = type metadata accessor for AlbumsRandom();
    swift_allocObject();

    v28 = sub_22F260DE8(v30);
    v29 = &protocol witness table for AlbumsRandom;
  }

  *(v24 + 56) = v27;
  *(v24 + 64) = v29;
  *(v24 + 32) = v28;
  swift_beginAccess();
  v31 = v3[8];
  v3[8] = v24;

  __swift_destroy_boxed_opaque_existential_0(v40);
  __swift_destroy_boxed_opaque_existential_0(a1);
  return v3;
}

uint64_t MediaTypesSource.__allocating_init(for:with:)(uint64_t *a1, uint64_t *a2)
{
  v4 = swift_allocObject();
  MediaTypesSource.init(for:with:)(a1, a2);
  return v4;
}

void *MediaTypesSource.init(for:with:)(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  v44 = v3;
  v6 = (v3 + 3);
  v45 = *v3;
  v7 = sub_22F740460();
  v8 = *(v7 - 8);
  v9 = v8;
  v10 = v8[8];
  MEMORY[0x28223BE20](v7);
  v43 = v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = a1;
  sub_22F15C30C(a1, v53);
  v12 = a2[3];
  v13 = a2[4];
  v47 = a2;
  __swift_project_boxed_opaque_existential_1(a2, v12);
  v14 = (*(v13 + 24))(v12, v13);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB3EA8, &qword_22F789800);
  v15 = v8[9];
  v16 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v17 = swift_allocObject();
  v41 = xmmword_22F771340;
  *(v17 + 16) = xmmword_22F771340;
  v18 = *MEMORY[0x277D3C450];
  v19 = v8[13];
  v48 = v7;
  v20 = v7;
  v21 = v44;
  v42 = v19;
  v19((v17 + v16), v18, v20);
  v40[1] = v6;
  sub_22F15C30C(v53, v6);
  v21[2] = v14;
  v22 = MEMORY[0x277D84F90];
  v21[8] = MEMORY[0x277D84F90];
  v50 = v53;
  v51 = v14;
  v52 = v45;
  v23 = v14;
  v21[9] = sub_22F141B5C(v22, sub_22F3A01E8, v49, v17);
  __swift_destroy_boxed_opaque_existential_0(v53);
  swift_setDeallocating();
  (v9[1])(v17 + v16, v48);
  swift_deallocClassInstance();

  v24 = v46;
  v25 = v46[4];
  __swift_project_boxed_opaque_existential_1(v46, v46[3]);
  v26 = sub_22F740730();
  if (v27)
  {
    v28 = v26;
    v29 = v27;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB3EB0, &qword_22F789808);
    v30 = swift_allocObject();
    v45 = v21 + 8;
    v31 = v30;
    *(v30 + 16) = v41;
    v32 = v43;
    v42(v43, *MEMORY[0x277D3C470], v48);
    swift_beginAccess();
    v33 = v24;
    v34 = v21[2];
    v35 = type metadata accessor for SingleCollection();
    swift_allocObject();

    v36 = v34;
    v24 = v33;
    v37 = SingleCollection.init(with:category:photoLibrary:)(v28, v29, v32, v36);
    v31[7] = v35;
    v31[8] = &protocol witness table for SingleCollection;
    v31[4] = v37;
    swift_beginAccess();
    v38 = v21[8];
    v21[8] = v31;
  }

  __swift_destroy_boxed_opaque_existential_0(v47);
  __swift_destroy_boxed_opaque_existential_0(v24);
  return v21;
}

uint64_t MemoriesSource.__allocating_init(for:with:)(uint64_t *a1, uint64_t *a2)
{
  v4 = swift_allocObject();
  MemoriesSource.init(for:with:)(a1, a2);
  return v4;
}

uint64_t *MemoriesSource.init(for:with:)(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  v36 = *v3;
  v6 = sub_22F740460();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v35 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22F15C30C(a1, v46);
  v10 = a2[3];
  v11 = a2[4];
  v40 = a2;
  __swift_project_boxed_opaque_existential_1(a2, v10);
  v12 = (*(v11 + 24))(v10, v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB3EA8, &qword_22F789800);
  v13 = *(v7 + 72);
  v14 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v15 = swift_allocObject();
  v37 = xmmword_22F771340;
  *(v15 + 16) = xmmword_22F771340;
  v16 = *(v7 + 104);
  v34 = *MEMORY[0x277D3C460];
  v41 = v6;
  v33 = v16;
  v16(v15 + v14);
  sub_22F15C30C(v46, (v3 + 3));
  v3[2] = v12;
  v38 = v3 + 2;
  v17 = MEMORY[0x277D84F90];
  v3[8] = MEMORY[0x277D84F90];
  v39 = v3 + 8;
  v43 = v46;
  v44 = v12;
  v45 = v36;
  v18 = v12;
  v3[9] = sub_22F141B5C(v17, sub_22F3A01E8, v42, v15);
  __swift_destroy_boxed_opaque_existential_0(v46);
  swift_setDeallocating();
  (*(v7 + 8))(v15 + v14, v41);
  swift_deallocClassInstance();

  v19 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v20 = sub_22F740730();
  if (v21)
  {
    v22 = v20;
    v23 = v21;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB3EB0, &qword_22F789808);
    v24 = swift_allocObject();
    *(v24 + 16) = v37;
    v25 = v35;
    v33(v35, v34, v41);
    swift_beginAccess();
    v26 = v3[2];
    v27 = type metadata accessor for SingleCollection();
    swift_allocObject();

    v28 = SingleCollection.init(with:category:photoLibrary:)(v22, v23, v25, v26);
    v29 = &protocol witness table for SingleCollection;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB3EB0, &qword_22F789808);
    v24 = swift_allocObject();
    *(v24 + 16) = v37;
    swift_beginAccess();
    v30 = v3[2];
    v27 = type metadata accessor for MemoriesRandom();
    swift_allocObject();

    v28 = sub_22F260F90(v30);
    v29 = &protocol witness table for MemoriesRandom;
  }

  *(v24 + 56) = v27;
  *(v24 + 64) = v29;
  *(v24 + 32) = v28;
  swift_beginAccess();
  v31 = v3[8];
  v3[8] = v24;

  __swift_destroy_boxed_opaque_existential_0(v40);
  __swift_destroy_boxed_opaque_existential_0(a1);
  return v3;
}

uint64_t EventsSource.__allocating_init(for:with:)(uint64_t *a1, uint64_t *a2)
{
  v4 = swift_allocObject();
  EventsSource.init(for:with:)(a1, a2);
  return v4;
}

uint64_t *EventsSource.init(for:with:)(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  v38 = *v3;
  v6 = sub_22F740460();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v37 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22F15C30C(a1, v48);
  v10 = a2[3];
  v11 = a2[4];
  v42 = a2;
  __swift_project_boxed_opaque_existential_1(a2, v10);
  v12 = (*(v11 + 24))(v10, v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB3EA8, &qword_22F789800);
  v13 = *(v7 + 72);
  v14 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v15 = swift_allocObject();
  v39 = xmmword_22F771340;
  *(v15 + 16) = xmmword_22F771340;
  v16 = *(v7 + 104);
  v36 = *MEMORY[0x277D3C458];
  v43 = v6;
  v35 = v16;
  v16(v15 + v14);
  sub_22F15C30C(v48, (v3 + 3));
  v3[2] = v12;
  v40 = v3 + 2;
  v17 = MEMORY[0x277D84F90];
  v3[8] = MEMORY[0x277D84F90];
  v41 = v3 + 8;
  v45 = v48;
  v46 = v12;
  v47 = v38;
  v18 = v12;
  v3[9] = sub_22F141B5C(v17, sub_22F3A01E8, v44, v15);
  __swift_destroy_boxed_opaque_existential_0(v48);
  swift_setDeallocating();
  (*(v7 + 8))(v15 + v14, v43);
  swift_deallocClassInstance();

  v19 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v20 = sub_22F740730();
  if (v21)
  {
    v22 = v20;
    v23 = v21;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB3EB0, &qword_22F789808);
    v24 = swift_allocObject();
    *(v24 + 16) = v39;
    v25 = v37;
    v35(v37, v36, v43);
    swift_beginAccess();
    v26 = v3[2];
    v27 = type metadata accessor for SingleCollection();
    swift_allocObject();

    v28 = SingleCollection.init(with:category:photoLibrary:)(v22, v23, v25, v26);
    *(v24 + 56) = v27;
    *(v24 + 64) = &protocol witness table for SingleCollection;
    *(v24 + 32) = v28;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB3EB0, &qword_22F789808);
    v24 = swift_allocObject();
    *(v24 + 16) = v39;
    swift_beginAccess();
    v29 = v3[2];
    v30 = type metadata accessor for EventsRandom();
    swift_allocObject();

    v31 = v29;
    v32 = sub_22F262220(v31);

    *(v24 + 56) = v30;
    *(v24 + 64) = &protocol witness table for EventsRandom;
    *(v24 + 32) = v32;
  }

  swift_beginAccess();
  v33 = v3[8];
  v3[8] = v24;

  __swift_destroy_boxed_opaque_existential_0(v42);
  __swift_destroy_boxed_opaque_existential_0(a1);
  return v3;
}

uint64_t SocialGroupsSource.__allocating_init(for:with:)(uint64_t *a1, uint64_t *a2)
{
  v4 = swift_allocObject();
  SocialGroupsSource.init(for:with:)(a1, a2);
  return v4;
}

uint64_t *SocialGroupsSource.init(for:with:)(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  v38 = *v3;
  v6 = sub_22F740460();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v37 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22F15C30C(a1, v48);
  v10 = a2[3];
  v11 = a2[4];
  v42 = a2;
  __swift_project_boxed_opaque_existential_1(a2, v10);
  v12 = (*(v11 + 24))(v10, v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB3EA8, &qword_22F789800);
  v13 = *(v7 + 72);
  v14 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v15 = swift_allocObject();
  v39 = xmmword_22F771340;
  *(v15 + 16) = xmmword_22F771340;
  v16 = *(v7 + 104);
  v36 = *MEMORY[0x277D3C438];
  v43 = v6;
  v35 = v16;
  v16(v15 + v14);
  sub_22F15C30C(v48, (v3 + 3));
  v3[2] = v12;
  v40 = v3 + 2;
  v17 = MEMORY[0x277D84F90];
  v3[8] = MEMORY[0x277D84F90];
  v41 = v3 + 8;
  v45 = v48;
  v46 = v12;
  v47 = v38;
  v18 = v12;
  v3[9] = sub_22F141B5C(v17, sub_22F3A01E8, v44, v15);
  __swift_destroy_boxed_opaque_existential_0(v48);
  swift_setDeallocating();
  (*(v7 + 8))(v15 + v14, v43);
  swift_deallocClassInstance();

  v19 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v20 = sub_22F740730();
  if (v21)
  {
    v22 = v20;
    v23 = v21;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB3EB0, &qword_22F789808);
    v24 = swift_allocObject();
    *(v24 + 16) = v39;
    v25 = v37;
    v35(v37, v36, v43);
    swift_beginAccess();
    v26 = v3[2];
    v27 = type metadata accessor for SingleCollection();
    swift_allocObject();

    v28 = SingleCollection.init(with:category:photoLibrary:)(v22, v23, v25, v26);
    *(v24 + 56) = v27;
    *(v24 + 64) = &protocol witness table for SingleCollection;
    *(v24 + 32) = v28;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB3EB0, &qword_22F789808);
    v24 = swift_allocObject();
    *(v24 + 16) = v39;
    swift_beginAccess();
    v29 = v3[2];
    v30 = type metadata accessor for SocialGroupsRandom();
    swift_allocObject();

    v31 = v29;
    v32 = sub_22F26225C(v31);

    *(v24 + 56) = v30;
    *(v24 + 64) = &protocol witness table for SocialGroupsRandom;
    *(v24 + 32) = v32;
  }

  swift_beginAccess();
  v33 = v3[8];
  v3[8] = v24;

  __swift_destroy_boxed_opaque_existential_0(v42);
  __swift_destroy_boxed_opaque_existential_0(a1);
  return v3;
}

void *MagicSlotPeopleSource.init(for:with:)(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  v86 = *v3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB2188, &qword_22F7789A0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v80 = &v79 - v8;
  v9 = sub_22F740460();
  v10 = *(v9 - 8);
  v11 = v10;
  v12 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v79 = &v79 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v81 = &v79 - v15;
  sub_22F15C30C(a1, v94);
  v16 = a2[3];
  v17 = a2[4];
  v85 = a2;
  __swift_project_boxed_opaque_existential_1(a2, v16);
  v18 = (*(v17 + 24))(v16, v17);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB3EA8, &qword_22F789800);
  v19 = *(v10 + 72);
  v20 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_22F770DF0;
  v22 = v21 + v20;
  v23 = *MEMORY[0x277D3C468];
  v82 = v11;
  v24 = *(v11 + 104);
  v24(v22, v23, v9);
  v24(v22 + v19, *MEMORY[0x277D3C438], v9);
  sub_22F15C30C(v94, (v3 + 3));
  v3[2] = v18;
  v25 = MEMORY[0x277D84F90];
  v3[8] = MEMORY[0x277D84F90];
  v84 = v3 + 8;
  v88 = v94;
  v89 = v18;
  v90 = v86;
  v26 = v18;
  v27 = sub_22F141B5C(v25, sub_22F3A01E8, v87, v21);
  v86 = v3;
  v3[9] = v27;
  __swift_destroy_boxed_opaque_existential_0(v94);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();

  v28 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v29 = sub_22F740730();
  v83 = a1;
  if (!v30)
  {
    goto LABEL_4;
  }

  v31 = v29;
  v32 = v30;
  v33 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v34 = v80;
  sub_22F740750();
  v35 = v82;
  if ((*(v82 + 48))(v34, 1, v9) == 1)
  {

    sub_22F120ADC(v34, &qword_27DAB2188, &qword_22F7789A0);
LABEL_4:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB3EB0, &qword_22F789808);
    v36 = swift_allocObject();
    *(v36 + 16) = xmmword_22F7707D0;
    v37 = v85;
    sub_22F15C30C(v85, v94);
    v38 = type metadata accessor for FallbackSocialGroups();
    v39 = *(v38 + 48);
    v40 = *(v38 + 52);
    swift_allocObject();
    v41 = v86;
    swift_retain_n();
    v42 = sub_22F15F1E0(v94);
    *(v36 + 56) = v38;
    *(v36 + 64) = &protocol witness table for FallbackSocialGroups;
    *(v36 + 32) = v42;
    v93[0] = 0;
    sub_22F15C30C(v37, v94);
    v43 = type metadata accessor for RecentSocialGroups();
    v44 = *(v43 + 48);
    v45 = *(v43 + 52);
    swift_allocObject();
    v46 = sub_22F2DC0F0(v93, v94);
    *(v36 + 96) = v43;
    *(v36 + 104) = &protocol witness table for RecentSocialGroups;
    *(v36 + 72) = v46;
    sub_22F15C30C(v37, v94);
    v47 = type metadata accessor for BirthdayPeople();
    v48 = *(v47 + 48);
    v49 = *(v47 + 52);
    swift_allocObject();
    v50 = sub_22F2A1198(v94);
    *(v36 + 136) = v47;
    *(v36 + 144) = &protocol witness table for BirthdayPeople;
    *(v36 + 112) = v50;
    goto LABEL_6;
  }

  v51 = v81;
  (*(v35 + 32))(v81, v34, v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB3EB0, &qword_22F789808);
  v36 = swift_allocObject();
  *(v36 + 16) = xmmword_22F771340;
  v52 = v79;
  (*(v35 + 16))(v79, v51, v9);
  swift_beginAccess();
  v80 = v31;
  v41 = v86;
  v53 = v86[2];
  v54 = type metadata accessor for SingleCollection();
  swift_allocObject();
  swift_retain_n();
  v55 = v53;
  v56 = SingleCollection.init(with:category:photoLibrary:)(v80, v32, v52, v55);
  *(v36 + 56) = v54;
  *(v36 + 64) = &protocol witness table for SingleCollection;
  *(v36 + 32) = v56;
  (*(v35 + 8))(v81, v9);
LABEL_6:
  swift_beginAccess();
  v57 = v41[8];
  v41[8] = v36;

  swift_beginAccess();
  v58 = v41[8];

  v59 = *(v58 + 16);
  if (v59)
  {
    v92 = MEMORY[0x277D84F90];
    sub_22F146A2C(0, v59, 0);
    v60 = 0;
    v61 = v92;
    v62 = v58 + 32;
    while (v60 < *(v58 + 16))
    {
      sub_22F15C30C(v62, v94);
      sub_22F39EBA0(v94, &v91);
      __swift_destroy_boxed_opaque_existential_0(v94);
      v63 = v91;
      v92 = v61;
      v65 = *(v61 + 16);
      v64 = *(v61 + 24);
      if (v65 >= v64 >> 1)
      {
        sub_22F146A2C((v64 > 1), v65 + 1, 1);
        v61 = v92;
      }

      ++v60;
      *(v61 + 16) = v65 + 1;
      *(v61 + 8 * v65 + 32) = v63;
      v62 += 40;
      if (v59 == v60)
      {

        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_20:
    swift_once();
    goto LABEL_15;
  }

  v61 = MEMORY[0x277D84F90];
LABEL_14:
  if (qword_2810AB890 != -1)
  {
    goto LABEL_20;
  }

LABEL_15:
  v66 = sub_22F740B90();
  __swift_project_value_buffer(v66, qword_2810AB898);

  v67 = sub_22F740B70();
  v68 = sub_22F7415D0();

  v69 = os_log_type_enabled(v67, v68);
  v70 = v86;
  if (v69)
  {
    v71 = swift_slowAlloc();
    v72 = swift_slowAlloc();
    v94[0] = v72;
    *v71 = 136315138;
    v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAB1070, &unk_22F7714B0);
    v74 = MEMORY[0x231900D40](v61, v73);
    v76 = v75;

    v77 = sub_22F145F20(v74, v76, v94);

    *(v71 + 4) = v77;
    _os_log_impl(&dword_22F0FC000, v67, v68, "MagicSlotPeopleSource triggers: %s", v71, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v72);
    MEMORY[0x2319033A0](v72, -1, -1);
    MEMORY[0x2319033A0](v71, -1, -1);
  }

  else
  {
  }

  __swift_destroy_boxed_opaque_existential_0(v85);
  __swift_destroy_boxed_opaque_existential_0(v83);
  return v70;
}

uint64_t sub_22F39EBA0@<X0>(void *a1@<X0>, unint64_t *a2@<X8>)
{
  v5 = type metadata accessor for TriggerResult();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v9 = v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB11D8, &qword_22F771608);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_22F771340;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  swift_getDynamicType();
  *(inited + 32) = sub_22F742240();
  v31 = inited + 32;
  v32 = inited;
  *(inited + 40) = v11;
  v12 = a1[3];
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v12);
  v14 = (*(v13 + 8))(v12, v13);
  v15 = *(v14 + 16);
  if (v15)
  {
    v29 = a2;
    v30 = v2;
    v34 = MEMORY[0x277D84F90];
    sub_22F146454(0, v15, 0);
    v16 = v34;
    v17 = *(v6 + 80);
    v28[1] = v14;
    v18 = v14 + ((v17 + 32) & ~v17);
    v33 = *(v6 + 72);
    do
    {
      sub_22F13C46C(v18, v9);
      v19 = sub_22F740330();
      v21 = v20;
      sub_22F13DBA0(v9);
      v34 = v16;
      v23 = *(v16 + 16);
      v22 = *(v16 + 24);
      if (v23 >= v22 >> 1)
      {
        sub_22F146454((v22 > 1), v23 + 1, 1);
        v16 = v34;
      }

      *(v16 + 16) = v23 + 1;
      v24 = v16 + 16 * v23;
      *(v24 + 32) = v19;
      *(v24 + 40) = v21;
      v18 += v33;
      --v15;
    }

    while (v15);

    a2 = v29;
  }

  else
  {

    v16 = MEMORY[0x277D84F90];
  }

  v25 = v32;
  *(v32 + 48) = v16;
  v26 = sub_22F14FCC8(v25);
  swift_setDeallocating();
  result = sub_22F120ADC(v31, &unk_27DAB11E0, &unk_22F771610);
  *a2 = v26;
  return result;
}

uint64_t *sub_22F39EE44(uint64_t *a1, void *a2, uint64_t a3)
{
  v7 = *v3;
  sub_22F15C30C(a1, (v3 + 3));
  v3[2] = a2;
  v8 = MEMORY[0x277D84F90];
  v3[8] = MEMORY[0x277D84F90];
  v11[2] = a1;
  v11[3] = a2;
  v11[4] = v7;
  v9 = a2;
  v3[9] = sub_22F141B5C(v8, sub_22F3A01E8, v11, a3);
  __swift_destroy_boxed_opaque_existential_0(a1);
  return v3;
}

uint64_t _s11PhotosGraph16CollectionSourceC26fetchHistoricalCollections4type7subtype12photoLibrarySay0A12Intelligence09TriggeredC0VGSo16PHSuggestionTypeV_So0N7SubtypeVSo07PHPhotoK0CtFZ_0(int a1, unsigned __int16 a2, void *a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB2198, &unk_22F7789B8);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = v63 - v9;
  v68 = sub_22F740390();
  v66 = *(v68 - 8);
  v11 = *(v66 + 64);
  MEMORY[0x28223BE20](v68);
  v71 = v63 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v14 = MEMORY[0x28223BE20](v13).n128_u64[0];
  v70 = v63 - v15;
  v16 = MEMORY[0x277D84F90];
  v74 = MEMORY[0x277D84F90];
  v17 = &selRef_invalidateCacheItemsBeforeDateWithTimestamp_;
  v18 = [a3 librarySpecificFetchOptions];
  v19 = objc_opt_self();
  LODWORD(v72) = a1;
  v20 = [v19 fetchSuggestionsWithState:1 ofType:a1 subtype:a2 withOptions:v18];
  v73 = v16;
  v21 = &selRef_assetIsSafeForWidgetDisplay_;
  v22 = [v20 count];
  if ((v22 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  v23 = v22;
  v69 = v18;
  v67 = v10;
  if (v22)
  {
    v24 = a3;
    v25 = 0;
    do
    {
      v26 = [v20 objectAtIndexedSubscript_];
      MEMORY[0x231900D00]();
      if (*((v73 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v73 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v27 = *((v73 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_22F7411C0();
      }

      ++v25;
      sub_22F741220();
    }

    while (v23 != v25);
    v28 = v73;
    a3 = v24;
    v17 = &selRef_invalidateCacheItemsBeforeDateWithTimestamp_;
    v21 = &selRef_assetIsSafeForWidgetDisplay_;
    v3 = MEMORY[0x277D84F90];
  }

  else
  {
    v28 = MEMORY[0x277D84F90];
    v3 = MEMORY[0x277D84F90];
  }

  sub_22F1459A8(v28);
  v29 = [a3 v17[317]];
  v30 = [v19 fetchSuggestionsWithState:0 ofType:v72 subtype:a2 withOptions:v29];
  v73 = v3;
  v31 = [v30 v21[487]];
  if ((v31 & 0x8000000000000000) != 0)
  {
    goto LABEL_40;
  }

  v32 = v31;
  if (v31)
  {
    v69 = v29;
    v33 = a3;
    v34 = 0;
    do
    {
      v35 = [v30 objectAtIndexedSubscript_];
      MEMORY[0x231900D00]();
      if (*((v73 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v73 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v36 = *((v73 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_22F7411C0();
      }

      ++v34;
      sub_22F741220();
    }

    while (v32 != v34);
    v37 = v73;
    a3 = v33;
    v17 = &selRef_invalidateCacheItemsBeforeDateWithTimestamp_;
    v21 = &selRef_assetIsSafeForWidgetDisplay_;
    v3 = MEMORY[0x277D84F90];
    v29 = v69;
  }

  else
  {
    v37 = MEMORY[0x277D84F90];
    v3 = MEMORY[0x277D84F90];
  }

  sub_22F1459A8(v37);
  v38 = [a3 v17[317]];
  v39 = [v19 fetchSuggestionsWithState:2 ofType:v72 subtype:a2 withOptions:v38];
  v73 = v3;
  v40 = [v39 v21[487]];
  if ((v40 & 0x8000000000000000) != 0)
  {
    goto LABEL_41;
  }

  v41 = v40;
  if (v40)
  {
    v42 = 0;
    do
    {
      v43 = [v39 objectAtIndexedSubscript_];
      MEMORY[0x231900D00]();
      if (*((v73 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v73 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v44 = *((v73 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_22F7411C0();
      }

      ++v42;
      sub_22F741220();
    }

    while (v41 != v42);
    v45 = v73;
  }

  else
  {
    v45 = MEMORY[0x277D84F90];
  }

  result = sub_22F1459A8(v45);
  v72 = v74;
  v3 = v68;
  if (!(v74 >> 62))
  {
    v47 = *((v72 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v48 = v67;
    if (v47)
    {
      goto LABEL_27;
    }

LABEL_43:

    return MEMORY[0x277D84F90];
  }

LABEL_42:
  result = sub_22F741A00();
  v47 = result;
  v48 = v67;
  if (!result)
  {
    goto LABEL_43;
  }

LABEL_27:
  if (v47 >= 1)
  {
    v49 = 0;
    v50 = v72 & 0xC000000000000001;
    v51 = (v66 + 56);
    v69 = (v66 + 32);
    v63[1] = v66 + 8;
    v64 = (v66 + 16);
    v52 = MEMORY[0x277D84F90];
    v65 = v72 & 0xC000000000000001;
    do
    {
      if (v50)
      {
        v53 = MEMORY[0x2319016F0](v49, v72);
      }

      else
      {
        v53 = *(v72 + 8 * v49 + 32);
      }

      v54 = v53;
      sub_22F740380();
      v55 = v47;
      (*v51)(v48, 0, 1, v3);
      v56 = v70;
      v57 = *v69;
      (*v69)(v70, v48, v3);
      (*v64)(v71, v56, v3);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v52 = sub_22F14018C(0, v52[2] + 1, 1, v52);
      }

      v59 = v52[2];
      v58 = v52[3];
      if (v59 >= v58 >> 1)
      {
        v52 = sub_22F14018C(v58 > 1, v59 + 1, 1, v52);
      }

      v60 = v66;
      v61 = v68;
      (*(v66 + 8))(v70, v68);
      v52[2] = v59 + 1;
      v62 = v52 + ((*(v60 + 80) + 32) & ~*(v60 + 80)) + *(v60 + 72) * v59;
      v3 = v61;
      v57(v62, v71, v61);
      v48 = v67;
      v47 = v55;
      v50 = v65;
      ++v49;
    }

    while (v47 != v49);

    return v52;
  }

  __break(1u);
  return result;
}

uint64_t _s11PhotosGraph12PeopleSourceC16featuredTriggers4withSayAA17CollectionTrigger_pGAA22CurationPlannerContext_p_tFZ_0(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB3EB0, &qword_22F789808);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_22F779720;
  sub_22F15C30C(a1, v30);
  v3 = type metadata accessor for PeopleRandom();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  v6 = sub_22F260604(v30);
  *(v2 + 56) = v3;
  *(v2 + 64) = &protocol witness table for PeopleRandom;
  *(v2 + 32) = v6;
  v29 = 0;
  sub_22F15C30C(a1, v30);
  v7 = type metadata accessor for RecentPeople(0);
  v8 = *(v7 + 48);
  v9 = *(v7 + 52);
  swift_allocObject();
  v10 = sub_22F2E7D14(&v29, v30);
  *(v2 + 96) = v7;
  *(v2 + 104) = &protocol witness table for RecentPeople;
  *(v2 + 72) = v10;
  v29 = 1;
  sub_22F15C30C(a1, v30);
  v11 = *(v7 + 48);
  v12 = *(v7 + 52);
  swift_allocObject();
  v13 = sub_22F2E7D14(&v29, v30);
  *(v2 + 136) = v7;
  *(v2 + 144) = &protocol witness table for RecentPeople;
  *(v2 + 112) = v13;
  v29 = 0;
  sub_22F15C30C(a1, v30);
  v14 = type metadata accessor for HistoricalPeople(0);
  v15 = *(v14 + 48);
  v16 = *(v14 + 52);
  swift_allocObject();
  v17 = sub_22F299A7C(&v29, v30);
  *(v2 + 176) = v14;
  *(v2 + 184) = &protocol witness table for HistoricalPeople;
  *(v2 + 152) = v17;
  v29 = 1;
  sub_22F15C30C(a1, v30);
  v18 = *(v14 + 48);
  v19 = *(v14 + 52);
  swift_allocObject();
  v20 = sub_22F299A7C(&v29, v30);
  *(v2 + 216) = v14;
  *(v2 + 224) = &protocol witness table for HistoricalPeople;
  *(v2 + 192) = v20;
  v29 = 2;
  sub_22F15C30C(a1, v30);
  v21 = *(v14 + 48);
  v22 = *(v14 + 52);
  swift_allocObject();
  v23 = sub_22F299A7C(&v29, v30);
  *(v2 + 256) = v14;
  *(v2 + 264) = &protocol witness table for HistoricalPeople;
  *(v2 + 232) = v23;
  sub_22F15C30C(a1, v30);
  v24 = type metadata accessor for BirthdayPeople();
  v25 = *(v24 + 48);
  v26 = *(v24 + 52);
  swift_allocObject();
  v27 = sub_22F2A1198(v30);
  *(v2 + 296) = v24;
  *(v2 + 304) = &protocol witness table for BirthdayPeople;
  *(v2 + 272) = v27;
  return v2;
}

uint64_t _s11PhotosGraph10PetsSourceC16featuredTriggers4withSayAA17CollectionTrigger_pGAA22CurationPlannerContext_p_tFZ_0(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB3EB0, &qword_22F789808);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_22F777170;
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  v5 = (*(v4 + 24))(v3, v4);
  v6 = type metadata accessor for PetsRandom();
  swift_allocObject();
  v7 = sub_22F260B48(v5);
  *(v2 + 56) = v6;
  *(v2 + 64) = &protocol witness table for PetsRandom;
  *(v2 + 32) = v7;
  v27 = 0;
  sub_22F15C30C(a1, v26);
  v8 = type metadata accessor for RecentPets(0);
  v9 = *(v8 + 48);
  v10 = *(v8 + 52);
  swift_allocObject();
  v11 = sub_22F2E8764(&v27, v26);
  *(v2 + 96) = v8;
  *(v2 + 104) = &protocol witness table for RecentPets;
  *(v2 + 72) = v11;
  v27 = 1;
  sub_22F15C30C(a1, v26);
  v12 = *(v8 + 48);
  v13 = *(v8 + 52);
  swift_allocObject();
  v14 = sub_22F2E8764(&v27, v26);
  *(v2 + 136) = v8;
  *(v2 + 144) = &protocol witness table for RecentPets;
  *(v2 + 112) = v14;
  v27 = 0;
  sub_22F15C30C(a1, v26);
  v15 = type metadata accessor for HistoricalPets(0);
  v16 = *(v15 + 48);
  v17 = *(v15 + 52);
  swift_allocObject();
  v18 = sub_22F29A6D4(&v27, v26);
  *(v2 + 176) = v15;
  *(v2 + 184) = &protocol witness table for HistoricalPets;
  *(v2 + 152) = v18;
  v27 = 1;
  sub_22F15C30C(a1, v26);
  v19 = *(v15 + 48);
  v20 = *(v15 + 52);
  swift_allocObject();
  v21 = sub_22F29A6D4(&v27, v26);
  *(v2 + 216) = v15;
  *(v2 + 224) = &protocol witness table for HistoricalPets;
  *(v2 + 192) = v21;
  v27 = 2;
  sub_22F15C30C(a1, v26);
  v22 = *(v15 + 48);
  v23 = *(v15 + 52);
  swift_allocObject();
  v24 = sub_22F29A6D4(&v27, v26);
  *(v2 + 256) = v15;
  *(v2 + 264) = &protocol witness table for HistoricalPets;
  *(v2 + 232) = v24;
  return v2;
}

uint64_t _s11PhotosGraph11TripsSourceC16featuredTriggers4withSayAA17CollectionTrigger_pGAA22CurationPlannerContext_p_tFZ_0(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB3EB0, &qword_22F789808);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_22F777170;
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  v5 = (*(v4 + 24))(v3, v4);
  v6 = type metadata accessor for TripsRandom();
  swift_allocObject();
  v7 = sub_22F2621E4(v5);

  *(v2 + 56) = v6;
  *(v2 + 64) = &protocol witness table for TripsRandom;
  *(v2 + 32) = v7;
  v27 = 0;
  sub_22F15C30C(a1, v26);
  v8 = type metadata accessor for RecentTrips();
  v9 = *(v8 + 48);
  v10 = *(v8 + 52);
  swift_allocObject();
  v11 = sub_22F35347C(&v27, v26);
  *(v2 + 96) = v8;
  *(v2 + 104) = &protocol witness table for RecentTrips;
  *(v2 + 72) = v11;
  v27 = 1;
  sub_22F15C30C(a1, v26);
  v12 = *(v8 + 48);
  v13 = *(v8 + 52);
  swift_allocObject();
  v14 = sub_22F35347C(&v27, v26);
  *(v2 + 136) = v8;
  *(v2 + 144) = &protocol witness table for RecentTrips;
  *(v2 + 112) = v14;
  v27 = 0;
  sub_22F15C30C(a1, v26);
  v15 = type metadata accessor for HistoricalTrips();
  v16 = *(v15 + 48);
  v17 = *(v15 + 52);
  swift_allocObject();
  v18 = sub_22F34750C(&v27, v26);
  *(v2 + 176) = v15;
  *(v2 + 184) = &protocol witness table for HistoricalTrips;
  *(v2 + 152) = v18;
  v27 = 1;
  sub_22F15C30C(a1, v26);
  v19 = *(v15 + 48);
  v20 = *(v15 + 52);
  swift_allocObject();
  v21 = sub_22F34750C(&v27, v26);
  *(v2 + 216) = v15;
  *(v2 + 224) = &protocol witness table for HistoricalTrips;
  *(v2 + 192) = v21;
  v27 = 2;
  sub_22F15C30C(a1, v26);
  v22 = *(v15 + 48);
  v23 = *(v15 + 52);
  swift_allocObject();
  v24 = sub_22F34750C(&v27, v26);
  *(v2 + 256) = v15;
  *(v2 + 264) = &protocol witness table for HistoricalTrips;
  *(v2 + 232) = v24;
  return v2;
}

uint64_t sub_22F3A0200(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for Song();
  v38 = *(v4 - 8);
  v5 = *(v38 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = (&v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v8);
  v37 = &v31 - v9;
  v10 = *(a1 + 16);
  v11 = MEMORY[0x277D84F90];
  if (!v10)
  {
    return v11;
  }

  v39 = MEMORY[0x277D84F90];
  sub_22F146514(0, v10, 0);
  v11 = v39;
  v12 = -1 << *(a1 + 32);
  v36 = a1 + 56;
  v13 = sub_22F741980();
  v14 = v13;
  v15 = 0;
  v31 = a1 + 64;
  v32 = v10;
  v33 = v7;
  v34 = a1;
  while ((v14 & 0x8000000000000000) == 0 && v14 < 1 << *(a1 + 32))
  {
    v17 = v14 >> 6;
    if ((*(v36 + 8 * (v14 >> 6)) & (1 << v14)) == 0)
    {
      goto LABEL_23;
    }

    v18 = *(a1 + 36);
    v19 = *(a1 + 48);
    v20 = *(v38 + 72);
    sub_22F15CAA0(v19 + v20 * v14, v7);
    sub_22F13B778(v7, v37);
    v35 = v2;
    v13 = v7;
    if (v2)
    {
      goto LABEL_27;
    }

    sub_22F15CBD8(v7);
    v39 = v11;
    v22 = *(v11 + 16);
    v21 = *(v11 + 24);
    if (v22 >= v21 >> 1)
    {
      sub_22F146514(v21 > 1, v22 + 1, 1);
      v11 = v39;
    }

    *(v11 + 16) = v22 + 1;
    v13 = sub_22F15CB04(v37, v11 + ((*(v38 + 80) + 32) & ~*(v38 + 80)) + v22 * v20);
    a1 = v34;
    v16 = 1 << *(v34 + 32);
    if (v14 >= v16)
    {
      goto LABEL_24;
    }

    v23 = *(v36 + 8 * v17);
    if ((v23 & (1 << v14)) == 0)
    {
      goto LABEL_25;
    }

    if (v18 != *(v34 + 36))
    {
      goto LABEL_26;
    }

    v24 = v23 & (-2 << (v14 & 0x3F));
    if (v24)
    {
      v16 = __clz(__rbit64(v24)) | v14 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v25 = v17 << 6;
      v26 = v17 + 1;
      v27 = (v31 + 8 * v17);
      while (v26 < (v16 + 63) >> 6)
      {
        v29 = *v27++;
        v28 = v29;
        v25 += 64;
        ++v26;
        if (v29)
        {
          v13 = sub_22F107D18(v14, v18, 0);
          v16 = __clz(__rbit64(v28)) + v25;
          goto LABEL_20;
        }
      }

      v13 = sub_22F107D18(v14, v18, 0);
LABEL_20:
      a1 = v34;
    }

    ++v15;
    v14 = v16;
    v7 = v33;
    v2 = v35;
    if (v15 == v32)
    {
      return v11;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  sub_22F15CBD8(v13);

  __break(1u);
  return result;
}

void *sub_22F3A050C(uint64_t (*a1)(uint64_t *), void *a2, unint64_t a3)
{
  v5 = a3;
  v22 = MEMORY[0x277D84F90];
  if (a3 >> 62)
  {
LABEL_18:
    v8 = sub_22F741A00();
    if (v8)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v8 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v8)
    {
LABEL_3:
      v9 = 0;
      v19 = v5 & 0xFFFFFFFFFFFFFF8;
      v20 = v5 & 0xC000000000000001;
      v18 = v5;
      while (1)
      {
        if (v20)
        {
          v10 = MEMORY[0x2319016F0](v9, v5);
          v11 = v9 + 1;
          if (__OFADD__(v9, 1))
          {
LABEL_14:
            __break(1u);
LABEL_15:

            return v3;
          }
        }

        else
        {
          if (v9 >= *(v19 + 16))
          {
            __break(1u);
            goto LABEL_18;
          }

          v10 = *(v5 + 8 * v9 + 32);

          v11 = v9 + 1;
          if (__OFADD__(v9, 1))
          {
            goto LABEL_14;
          }
        }

        v21 = v10;
        v3 = a2;
        v12 = a1(&v21);
        if (v4)
        {
          goto LABEL_15;
        }

        if (v12)
        {
          sub_22F741BA0();
          v13 = v8;
          v14 = a1;
          v15 = a2;
          v16 = v22[2];
          sub_22F741BE0();
          a2 = v15;
          a1 = v14;
          v8 = v13;
          v5 = v18;
          sub_22F741BF0();
          v3 = &v22;
          sub_22F741BB0();
        }

        else
        {
        }

        ++v9;
        if (v11 == v8)
        {
          v3 = v22;
          goto LABEL_20;
        }
      }
    }
  }

  v3 = MEMORY[0x277D84F90];
LABEL_20:

  return v3;
}

uint64_t sub_22F3A06C8(uint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a3;
  v17 = *(a3 + 16);
  if (v17)
  {
    v5 = result;
    v6 = 0;
    v7 = (a3 + 40);
    v8 = MEMORY[0x277D84F90];
    v15 = result;
    while (v6 < *(v4 + 16))
    {
      v10 = *(v7 - 1);
      v9 = *v7;
      v18[0] = v10;
      v18[1] = v9;

      v11 = v5(v18);
      if (v3)
      {

        goto LABEL_16;
      }

      if (v11)
      {
        result = swift_isUniquelyReferenced_nonNull_native();
        v19 = v8;
        if ((result & 1) == 0)
        {
          result = sub_22F146454(0, *(v8 + 16) + 1, 1);
          v8 = v19;
        }

        v13 = *(v8 + 16);
        v12 = *(v8 + 24);
        if (v13 >= v12 >> 1)
        {
          result = sub_22F146454((v12 > 1), v13 + 1, 1);
          v8 = v19;
        }

        *(v8 + 16) = v13 + 1;
        v14 = v8 + 16 * v13;
        *(v14 + 32) = v10;
        *(v14 + 40) = v9;
        v4 = a3;
        v5 = v15;
      }

      else
      {
      }

      ++v6;
      v7 += 2;
      if (v17 == v6)
      {
        goto LABEL_16;
      }
    }

    __break(1u);
  }

  else
  {
    v8 = MEMORY[0x277D84F90];
LABEL_16:

    return v8;
  }

  return result;
}

uint64_t static MusicCurator.inflateDisplayMetadata(for:inflationContext:curatorContext:progressReporter:completionHandler:)(void *a1, char *a2, uint64_t a3, void *a4, void (*a5)(id, void *), uint64_t a6)
{
  v160 = a4;
  v161 = a5;
  v139 = a2;
  v155 = sub_22F740AD0();
  v8 = *(v155 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v155);
  v154 = v129 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v163 = sub_22F73EEC0();
  v156 = *(v163 - 8);
  v11 = *(v156 + 8);
  MEMORY[0x28223BE20](v163);
  v153 = v129 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = v129 - v13;
  v15 = sub_22F73EEE0();
  v159 = *(v15 - 1);
  v16 = v159[8];
  MEMORY[0x28223BE20](v15);
  v158 = (v129 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = sub_22F740C00();
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18 - 8);
  v21 = (v129 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_2810A9BD0 != -1)
  {
LABEL_41:
    swift_once();
  }

  v22 = qword_2810B4E90;
  *&v23 = CACurrentMediaTime();
  sub_22F1B560C("Music Curation - inflateDisplayMetadataForMusicCuration", 55, 2u, v23, 0, v22, v177);
  v24 = sub_22F2E3C74();
  if (*(v24 + 16))
  {
    v145 = v15;
    v138 = a1;
    if (qword_2810A9460 != -1)
    {
      swift_once();
    }

    v149 = sub_22F740B90();
    __swift_project_value_buffer(v149, qword_2810B4D90);

    v25 = sub_22F740B70();
    v26 = sub_22F7415C0();
    v27 = os_log_type_enabled(v25, v26);
    v157 = v11;
    if (v27)
    {
      v28 = swift_slowAlloc();
      *v28 = 134217984;
      *(v28 + 4) = *(v24 + 16);

      _os_log_impl(&dword_22F0FC000, v25, v26, "[MemoriesMusic] Inflating curation for %ld adamIDs", v28, 0xCu);
      MEMORY[0x2319033A0](v28, -1, -1);
    }

    else
    {
    }

    v30 = v24;
    sub_22F740BF0();
    v31 = sub_22F22FB24(v21, 0);
    v144 = v8;
    v32 = *(v31 + 4);
    v148 = *(v31 + 3);
    v162 = v31;
    v134 = v32;
    v33 = v139;
    static MusicKitClient.FetchOptions.memoriesDisplay(musicKitSource:)(*&v139[OBJC_IVAR___PGMusicCurationInflationContext_actionSource], *&v139[OBJC_IVAR___PGMusicCurationInflationContext_actionSource + 8], &v183);
    v34 = *(&v178 + 1);
    v137 = v179;
    v35 = swift_allocObject();
    v36 = v177[1];
    *(v35 + 40) = v177[0];
    v37 = v33;
    v38 = v30;
    v39 = v138;
    *(v35 + 16) = v33;
    *(v35 + 24) = v39;
    v40 = v160;
    *(v35 + 32) = v160;
    *(v35 + 56) = v36;
    *(v35 + 72) = v178;
    v41 = v161;
    *(v35 + 88) = v179;
    *(v35 + 96) = v41;
    v135 = v38;
    v136 = a6;
    *(v35 + 104) = a6;
    v147 = v38[2];
    if (!v147)
    {
      swift_retain_n();
      swift_retain_n();
      v58 = v37;
      v59 = v39;
      v60 = v40;
      v61 = v136;
      swift_retain_n();
      v62 = v58;
      v63 = v59;
      v64 = v60;

      sub_22F3A6250(MEMORY[0x277D84F90], 0, v63, v64, v177, v161, v61);

LABEL_40:

      return sub_22F1D210C(&v183);
    }

    v133 = v35;
    v151 = v14;
    v42 = qword_2810A9B98;
    v129[1] = v34;
    swift_retain_n();
    swift_retain_n();
    v43 = v37;
    v44 = v39;
    v45 = v40;
    swift_retain_n();
    v46 = v43;
    v47 = v44;
    v160 = v45;

    v49 = v42 == -1;
    v50 = v48;
    if (!v49)
    {
      swift_once();
    }

    v51 = qword_2810B4E70;
    *&v52 = CACurrentMediaTime();
    sub_22F1B560C("MusicKitClient Fetch Songs By Ids", 33, 2u, v52, 0, v51, v180);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB2938, &qword_22F77BEE0);
    v53 = swift_allocObject();
    v54 = [objc_allocWithZone(MEMORY[0x277CCAAF8]) init];
    *(v53 + 16) = MEMORY[0x277D84F90];
    *(v53 + 24) = v54;
    v152 = v53;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB2940, &qword_22F77BEE8);
    v55 = swift_allocObject();
    *(v55 + 24) = [objc_allocWithZone(MEMORY[0x277CCAAF8]) init];
    v150 = v55;
    *(v55 + 16) = 0;
    v129[0] = v55 + 16;
    v11 = v162;
    if (*(v162 + 3) == v148 && *(v162 + 4) == v50 || (sub_22F742040() & 1) != 0)
    {
      v56 = *(v11 + 2);
      Batch = MusicBag.songQueryBatchSize()();
      LODWORD(v148) = 0;
    }

    else
    {
      v65 = *(v11 + 2);
      Batch = MusicBag.songEquivalentQueryBatchSize()();
      LODWORD(v148) = 1;
    }

    v66 = v135;
    v14 = v151;
    if (Batch)
    {

      v45 = sub_22F233C24(0, v147, Batch, v66, Batch);
      v161 = 0;

      if (qword_2810A9440 == -1)
      {
        goto LABEL_22;
      }
    }

    else
    {
      __break(1u);
    }

    swift_once();
LABEL_22:
    __swift_project_value_buffer(v149, qword_2810B4D48);

    v67 = sub_22F740B70();
    v68 = sub_22F7415C0();
    v69 = os_log_type_enabled(v67, v68);
    v70 = v133;
    v71 = v45;
    if (v69)
    {
      v72 = swift_slowAlloc();
      *v72 = 134218240;
      *(v72 + 4) = v147;

      *(v72 + 12) = 2048;
      *(v72 + 14) = v45[2];

      _os_log_impl(&dword_22F0FC000, v67, v68, "[MemoriesMusic] fetching metadata for %ld songs in %ld batches", v72, 0x16u);
      MEMORY[0x2319033A0](v72, -1, -1);
    }

    else
    {
    }

    v73 = v45[2];
    v131 = v182;
    v132 = *(&v181 + 1);
    v74 = swift_allocObject();
    v75 = v180[1];
    *(v74 + 16) = v180[0];
    *(v74 + 32) = v75;
    *(v74 + 48) = v181;
    v76 = v160;
    *(v74 + 64) = v182;
    *(v74 + 72) = v76;
    *(v74 + 80) = sub_22F3A51CC;
    *(v74 + 88) = v70;
    v77 = v150;
    v78 = v152;
    *(v74 + 96) = v150;
    *(v74 + 104) = v78;
    type metadata accessor for CompletionCounter();
    v79 = swift_allocObject();
    v130 = v71;
    v80 = v76;
    v81 = v79;
    *(v79 + 16) = sub_22F233FA4;
    *(v79 + 24) = v74;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB2290, &qword_22F779380);
    v82 = swift_allocObject();
    *(v82 + 32) = 0;
    *(v82 + 16) = 0;
    v143 = v73;
    *(v82 + 24) = v73;
    v149 = v81;
    *(v81 + 32) = v82;
    v83 = sub_22F73EF30();
    v84 = *(v83 + 48);
    v85 = *(v83 + 52);
    swift_allocObject();
    a6 = v77;
    v15 = v80;

    v8 = sub_22F73EF20();
    if (qword_2810A9168 != -1)
    {
      swift_once();
    }

    v86 = qword_2810A9170;
    v88 = v158;
    v87 = v159;
    v158->isa = qword_2810A9170;
    (v87[13])(v88, *MEMORY[0x277CC86D8], v145);
    v89 = v86;
    sub_22F73EF00();
    v90 = [v15 progressReportersForParallelOperationsWithCount_];
    sub_22F120634(0, &qword_2810A90B0, 0x277D22C80);
    v91 = sub_22F741180();

    v92 = (v144 + 8);
    v144 = (v156 + 16);
    v145 = v92;
    v142 = v156 + 32;
    v143 = v157 + 7;
    v172 = v91;
    v173 = 0;
    v140 = v156 + 8;
    v141 = &v168;
    v174 = v130;
    v175 = 0;
    v176 = 0;
    v146 = v8;
    v147 = v15;
    while (1)
    {
      v93 = sub_22F226D78();
      if (!v93)
      {

        goto LABEL_39;
      }

      v95 = v93;
      v96 = v94;
      v97 = *(v11 + 4);
      v98 = *(v11 + 5);
      v99 = *(v11 + 6);
      v100 = *(v11 + 7);
      v101 = *(v11 + 8);
      v166 = *(v11 + 3);
      v167 = v97;
      v168 = v98;
      v169 = v99;
      v170 = v100;
      v171 = v101;
      v164[0] = v183;
      v164[1] = v184;
      v164[2] = v185;
      v165 = v186;

      v102 = v161;
      MusicKitRequestFactory.requestForSongs(adamIDs:options:isCrossStorefrontRequest:)(v96, v164, v148, v14);
      if (v102)
      {
        break;
      }

      v160 = v95;
      v161 = 0;

      v103 = swift_allocObject();
      v104 = v152;
      v103[2] = v8;
      v103[3] = v104;
      v103[4] = v149;
      v103[5] = a6;
      v159 = v103;

      sub_22F741740();
      if (qword_2810A8E30 != -1)
      {
        swift_once();
      }

      v105 = v154;
      sub_22F740AC0();
      sub_22F740A90();
      (*v145)(v105, v155);
      v158 = *(v11 + 9);
      v21 = v156;
      v106 = v153;
      v107 = v163;
      (*(v156 + 2))(v153, v14, v163);
      v108 = (*(v21 + 80) + 16) & ~*(v21 + 80);
      v109 = (v143 + v108) & 0xFFFFFFFFFFFFFFF8;
      v110 = (v109 + 63) & 0xFFFFFFFFFFFFFFF8;
      v157 = (v110 + 15) & 0xFFFFFFFFFFFFFFF8;
      v111 = (v110 + 39) & 0xFFFFFFFFFFFFFFF8;
      v112 = swift_allocObject();
      v21[4](v112 + v108, v106, v107);
      v113 = v112 + v109;
      v114 = v184;
      *v113 = v183;
      *(v113 + 16) = v114;
      *(v113 + 32) = v185;
      *(v113 + 48) = v186;
      *(v112 + v110) = v162;
      v115 = v112 + v157;
      v11 = v162;
      *v115 = "MusicKitClient HTTP Request";
      *(v115 + 8) = 27;
      *(v115 + 16) = 2;
      v116 = v160;
      *(v112 + v111) = v160;
      v117 = (v112 + ((v111 + 15) & 0xFFFFFFFFFFFFFFF8));
      v118 = v159;
      *v117 = sub_22F233FA8;
      v117[1] = v118;
      a1 = swift_allocObject();
      a1[2] = sub_22F233FAC;
      a1[3] = v112;
      v170 = sub_22F2915BC;
      v171 = a1;
      v166 = MEMORY[0x277D85DD0];
      v167 = 1107296256;
      v168 = sub_22F2280B0;
      v169 = &block_descriptor_49;
      v119 = _Block_copy(&v166);
      sub_22F1D20B0(&v183, v164);

      v120 = v116;

      dispatch_sync(v158, v119);
      v121 = v119;
      v14 = v151;
      _Block_release(v121);

      (v21[1])(v14, v163);
      LOBYTE(v118) = swift_isEscapingClosureAtFileLocation();

      a6 = v150;
      v8 = v146;
      v15 = v147;
      if (v118)
      {
        __break(1u);
        goto LABEL_41;
      }
    }

    [*(a6 + 24) lock];
    swift_beginAccess();
    v122 = *(a6 + 16);
    *(a6 + 16) = v102;

    v123 = *(a6 + 24);
    v124 = v102;
    [v123 unlock];
    v125 = v149;
    v126 = *(v149 + 32);

    os_unfair_lock_lock((v126 + 32));
    if (*(v126 + 16))
    {
      os_unfair_lock_unlock((v126 + 32));
    }

    else
    {
      *(v126 + 16) = 1;
      os_unfair_lock_unlock((v126 + 32));

      v128 = *(v125 + 24);
      (*(v125 + 16))(v127);
    }

LABEL_39:
    v39 = v138;
    v37 = v139;
    goto LABEL_40;
  }

  sub_22F7416A0();
  sub_22F1B2BBC(0);
  v161(a1, 0);
}

void sub_22F3A1B38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v5 = sub_22F73F360();
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  (*(a3 + 16))(a3, a1);
}

uint64_t static MusicCurator.fetchSongJSON(for:inflationContext:progressReporter:completionHandler:)(void *a1, char *a2, char *a3, unint64_t a4, uint64_t a5)
{
  v10 = sub_22F14EA28(MEMORY[0x277D84F90]);
  _s11PhotosGraph12MusicCuratorC21fetchSongMetaDataJSON3for7options16inflationContext16progressReporter17completionHandlerySaySSG_SDySSypGAA0c17CurationInflationM0CSo010MAProgressO0CySSSg_s5Error_pSgtctFZ_0(a1, v10, a2, a3, a4, a5);
}

void _s11PhotosGraph12MusicCuratorC21fetchSongMetaDataJSON3for7options16inflationContext16progressReporter17completionHandlerySaySSG_SDySSypGAA0c17CurationInflationM0CSo010MAProgressO0CySSSg_s5Error_pSgtctFZ_0(void *a1, uint64_t a2, char *a3, char *a4, unint64_t a5, uint64_t a6)
{
  v12 = sub_22F73F690();
  v273 = *(v12 - 8);
  v274 = v12;
  v13 = *(v273 + 64);
  MEMORY[0x28223BE20](v12);
  v267 = (v260 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v283 = sub_22F740AD0();
  v272 = *(v283 - 8);
  v15 = *(v272 + 64);
  MEMORY[0x28223BE20](v283);
  v282 = v260 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v290 = sub_22F73EEC0();
  v284 = *(v290 - 8);
  v17 = *(v284 + 64);
  MEMORY[0x28223BE20](v290);
  v281 = v260 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v270 = v18;
  MEMORY[0x28223BE20](v19);
  v293 = v260 - v20;
  v275 = sub_22F73EEE0();
  v271 = *(v275 - 8);
  v21 = *(v271 + 64);
  MEMORY[0x28223BE20](v275);
  v269 = (v260 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  v23 = sub_22F740C00();
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x28223BE20](v23 - 8);
  v277 = v260 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = type metadata accessor for Song();
  v292 = *(v26 - 8);
  v27 = *(v292 + 8);
  MEMORY[0x28223BE20](v26 - 8);
  v29 = v260 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2810A9460 != -1)
  {
    goto LABEL_114;
  }

  while (1)
  {
    v268 = sub_22F740B90();
    v30 = __swift_project_value_buffer(v268, qword_2810B4D90);

    v287 = v30;
    v31 = sub_22F740B70();
    v32 = sub_22F7415C0();

    v33 = os_log_type_enabled(v31, v32);
    v278 = a6;
    v291 = a4;
    v285 = a2;
    if (v33)
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v286 = a5;
      v36 = a3;
      v37 = v35;
      *&v309 = v35;
      *v34 = 134218242;
      *(v34 + 4) = a1[2];

      *(v34 + 12) = 2080;
      v38 = sub_22F740CB0();
      v40 = sub_22F145F20(v38, v39, &v309);

      *(v34 + 14) = v40;
      _os_log_impl(&dword_22F0FC000, v31, v32, "[MemoriesMusic] fetchSongDisplayMetadataJSONForAdamIDs called for %ld adamIDs with  options: %s", v34, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v37);
      v41 = v37;
      a3 = v36;
      a5 = v286;
      MEMORY[0x2319033A0](v41, -1, -1);
      MEMORY[0x2319033A0](v34, -1, -1);
    }

    else
    {
    }

    if (qword_2810A9BD0 != -1)
    {
      swift_once();
    }

    v42 = qword_2810B4E90;
    *&v43 = CACurrentMediaTime();
    sub_22F1B560C("fetchSongDisplayMetadataJSONForAdamIDs", 38, 2u, v43, 0, v42, v313);
    v44 = sub_22F7416B0();
    v279 = v45;
    a2 = *&a3[OBJC_IVAR___PGMusicCurationInflationContext_cache];
    if (a3[OBJC_IVAR___PGMusicCurationInflationContext_shouldForceMetadataRefetch] == 1)
    {
      v266 = v44;
      if (a1[2])
      {
        v263 = a2;

        v288 = 0;
        v265 = MEMORY[0x277D84F90];
        goto LABEL_42;
      }

      v49 = 0;
      v50 = MEMORY[0x277D84F90];
      goto LABEL_54;
    }

    v262 = v42;
    v46 = v44;
    sub_22F120634(0, &qword_2810A91E0, 0x277CCAC30);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB11A0, &qword_22F772940);
    v47 = swift_allocObject();
    *(v47 + 16) = xmmword_22F770DF0;
    *(v47 + 56) = MEMORY[0x277D837D0];
    *(v47 + 64) = sub_22F153470();
    *(v47 + 32) = 0x44496D616461;
    *(v47 + 40) = 0xE600000000000000;
    *(v47 + 96) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0E90, &qword_22F7714A0);
    *(v47 + 104) = sub_22F25F050();
    *(v47 + 72) = a1;

    a6 = sub_22F741560();
    v48 = sub_22F2DA3D8(a6);
    v288 = 0;
    v286 = a5;
    v263 = a2;
    v264 = a3;
    v266 = v46;
    a4 = v48;

    v51 = *(a4 + 2);
    v52 = MEMORY[0x277D84F90];
    v265 = a4;
    if (v51)
    {
      v280 = a1;
      *&v309 = MEMORY[0x277D84F90];
      sub_22F146454(0, v51, 0);
      v52 = v309;
      a4 += (v292[80] + 32) & ~v292[80];
      v53 = *(v292 + 9);
      do
      {
        sub_22F15CAA0(a4, v29);
        v54 = *v29;
        a6 = *(v29 + 1);

        sub_22F15CBD8(v29);
        *&v309 = v52;
        v56 = *(v52 + 16);
        v55 = *(v52 + 24);
        a2 = v56 + 1;
        if (v56 >= v55 >> 1)
        {
          sub_22F146454((v55 > 1), v56 + 1, 1);
          v52 = v309;
        }

        *(v52 + 16) = a2;
        v57 = v52 + 16 * v56;
        *(v57 + 32) = v54;
        *(v57 + 40) = a6;
        a4 += v53;
        --v51;
      }

      while (v51);
      a1 = v280;
    }

    v58 = sub_22F1515F8(v52);

    v59 = a1[2];
    if (!v59)
    {
      break;
    }

    a5 = 0;
    v289 = (a1 + 4);
    a3 = (v58 + 56);
    a1 = MEMORY[0x277D84F90];
    v292 = v59;
    while (a5 < v59)
    {
      a2 = a5 + 1;
      if (__OFADD__(a5, 1))
      {
        goto LABEL_112;
      }

      v60 = &v289[16 * a5];
      v29 = *v60;
      a4 = *(v60 + 1);
      ++a5;
      if (!*(v58 + 16))
      {

        goto LABEL_32;
      }

      v61 = *(v58 + 40);
      sub_22F742170();

      sub_22F740D60();
      v62 = sub_22F7421D0();
      v63 = -1 << *(v58 + 32);
      v64 = v62 & ~v63;
      if ((*&a3[(v64 >> 3) & 0xFFFFFFFFFFFFFF8] >> v64))
      {
        a6 = ~v63;
        while (1)
        {
          v65 = (*(v58 + 48) + 16 * v64);
          v66 = *v65 == v29 && v65[1] == a4;
          if (v66 || (sub_22F742040() & 1) != 0)
          {
            break;
          }

          v64 = (v64 + 1) & a6;
          if (((*&a3[(v64 >> 3) & 0xFFFFFFFFFFFFFF8] >> v64) & 1) == 0)
          {
            goto LABEL_32;
          }
        }

        v59 = v292;
        if (a2 == v292)
        {
          goto LABEL_40;
        }
      }

      else
      {
LABEL_32:
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *&v319[0] = a1;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_22F146454(0, a1[2] + 1, 1);
          a1 = *&v319[0];
        }

        v68 = a1;
        v69 = a1[2];
        v70 = v68[3];
        a6 = v69 + 1;
        if (v69 >= v70 >> 1)
        {
          sub_22F146454((v70 > 1), v69 + 1, 1);
          v68 = *&v319[0];
        }

        v68[2] = a6;
        v71 = &v68[2 * v69];
        v71[4] = v29;
        v71[5] = a4;
        v59 = v292;
        a1 = v68;
        if (a2 == v292)
        {
          goto LABEL_40;
        }
      }
    }

    __break(1u);
LABEL_112:
    __break(1u);
LABEL_113:
    __break(1u);
LABEL_114:
    swift_once();
  }

  a1 = MEMORY[0x277D84F90];
LABEL_40:

  if (a1[2])
  {
    a3 = v264;
    a5 = v286;
    v42 = v262;
LABEL_42:

    v72 = sub_22F740B70();
    v73 = sub_22F7415C0();
    if (os_log_type_enabled(v72, v73))
    {
      v74 = swift_slowAlloc();
      v264 = a3;
      v75 = a5;
      v76 = v42;
      v77 = v74;
      v78 = swift_slowAlloc();
      *&v309 = v78;
      *v77 = 134218242;
      *(v77 + 4) = a1[2];

      *(v77 + 12) = 2080;
      v79 = MEMORY[0x231900D40](a1, MEMORY[0x277D837D0]);
      v81 = sub_22F145F20(v79, v80, &v309);

      *(v77 + 14) = v81;
      _os_log_impl(&dword_22F0FC000, v72, v73, "[MemoriesMusic] fetchSongDisplayMetadataJSONForAdamIDs will fetch metadata for %ld songs from server. adamIDsToFetch = %s", v77, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v78);
      MEMORY[0x2319033A0](v78, -1, -1);
      v82 = v77;
      v42 = v76;
      a5 = v75;
      a3 = v264;
      MEMORY[0x2319033A0](v82, -1, -1);
    }

    else
    {
    }

    v83 = v285;
    *&v84 = CACurrentMediaTime();
    sub_22F1B560C("fetchSongDisplayMetadataJSONForAdamIDs Uncached", 47, 2u, v84, 0, v42, v316);
    v85 = v277;
    sub_22F740BF0();
    v86 = v85;
    v87 = v288;
    v88 = sub_22F22FB24(v86, 0);
    v288 = v87;
    if (v87)
    {

      v89 = v288;
      goto LABEL_56;
    }

    v280 = a1;
    v90 = *(v88 + 4);
    v289 = *(v88 + 3);
    v292 = v88;
    v92 = *&a3[OBJC_IVAR___PGMusicCurationInflationContext_actionSource];
    v91 = *&a3[OBJC_IVAR___PGMusicCurationInflationContext_actionSource + 8];
    v93 = *MEMORY[0x277D3B000];
    v94 = sub_22F740E20();
    v96 = v95;
    v97 = *(v83 + 16);
    v262 = v90;
    if (v97)
    {
      v98 = v94;

      v99 = sub_22F1229E8(v98, v96);
      v101 = v100;

      if (v101)
      {
        sub_22F13A100(*(v83 + 56) + 32 * v99, &v309);
        if (swift_dynamicCast())
        {
          v102 = v319[0];
          v103 = *MEMORY[0x277D3B008];
          if (sub_22F740E20() == v102 && v104 == *(&v102 + 1))
          {

            goto LABEL_104;
          }

          v249 = sub_22F742040();

          if (v249)
          {
LABEL_104:
            v250 = sub_22F740B70();
            v251 = sub_22F7415C0();
            if (os_log_type_enabled(v250, v251))
            {
              v252 = swift_slowAlloc();
              *v252 = 0;
              _os_log_impl(&dword_22F0FC000, v250, v251, "[MemoriesMusic] fetchSongDisplayMetadataJSONForAdamIDs Requesting the augmented curation and display fetch option", v252, 2u);
              MEMORY[0x2319033A0](v252, -1, -1);
            }

            static MusicKitClient.FetchOptions.augmentedCurationAndDisplay(musicKitSource:)(v92, v91, v307);
LABEL_64:
            v309 = v307[0];
            v310 = v307[1];
            v311 = v307[2];
            v312 = v308;
            v125 = *(&v317 + 1);
            v126 = v318;
            v127 = *(&v314 + 1);
            v128 = v315;
            v129 = swift_allocObject();
            v130 = v263;
            *(v129 + 16) = a3;
            *(v129 + 24) = v130;
            v131 = v279;
            v132 = v265;
            *(v129 + 32) = v279;
            *(v129 + 40) = v132;
            v133 = v291;
            *(v129 + 48) = v276;
            *(v129 + 56) = v133;
            v134 = v316[1];
            *(v129 + 64) = v316[0];
            *(v129 + 80) = v134;
            *(v129 + 96) = v317;
            *(v129 + 112) = v318;
            v135 = v313[0];
            v136 = v313[1];
            v137 = v315;
            *(v129 + 152) = v314;
            *(v129 + 136) = v136;
            *(v129 + 120) = v135;
            *(v129 + 168) = v137;
            *(v129 + 176) = a5;
            v138 = a5;
            v139 = v278;
            v140 = v280;
            v260[6] = v126;
            v261 = v129;
            *(v129 + 184) = v278;
            *(v129 + 192) = v140;
            v286 = v140[2];
            v264 = a3;
            v260[4] = v127;
            v260[5] = v125;
            v260[3] = v128;
            if (v286)
            {
              v287 = qword_2810A9B98;
              v141 = v130;
              swift_retain_n();
              swift_retain_n();
              swift_retain_n();
              swift_retain_n();
              swift_bridgeObjectRetain_n();
              v142 = a3;
              v143 = v141;
              v144 = v131;
              swift_bridgeObjectRetain_n();
              v145 = v291;
              swift_retain_n();
              v146 = v143;
              v147 = v142;
              v148 = v144;
              v149 = v145;
              if (v287 != -1)
              {
                swift_once();
              }

              v150 = qword_2810B4E70;
              *&v151 = CACurrentMediaTime();
              sub_22F1B560C("MusicKitClient Fetch Songs By Ids", 33, 2u, v151, 0, v150, v319);
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB2938, &qword_22F77BEE0);
              v152 = swift_allocObject();
              v153 = &selRef_floatVector;
              v154 = [objc_allocWithZone(MEMORY[0x277CCAAF8]) init];
              *(v152 + 16) = MEMORY[0x277D84F90];
              *(v152 + 24) = v154;
              v277 = v152;
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB2940, &qword_22F77BEE8);
              a2 = swift_allocObject();
              *(a2 + 24) = [objc_allocWithZone(MEMORY[0x277CCAAF8]) init];
              *(a2 + 16) = 0;
              v29 = v292;
              if (*(v292 + 3) == v289 && *(v292 + 4) == v262 || (sub_22F742040() & 1) != 0)
              {
                v155 = *(v29 + 2);
                Batch = MusicBag.songQueryBatchSize()();
                LODWORD(v274) = 0;
                a3 = v291;
                if (Batch)
                {
LABEL_71:
                  v260[0] = a2 + 16;
                  v157 = v280;

                  v158 = v288;
                  v159 = sub_22F233C24(0, v286, Batch, v157, Batch);
                  v289 = v158;

                  if (qword_2810A9440 != -1)
                  {
                    swift_once();
                  }

                  v160 = v148;
                  __swift_project_value_buffer(v268, qword_2810B4D48);

                  v161 = sub_22F740B70();
                  v162 = sub_22F7415C0();
                  if (os_log_type_enabled(v161, v162))
                  {
                    v163 = swift_slowAlloc();
                    *v163 = 134218240;
                    *(v163 + 4) = v286;

                    *(v163 + 12) = 2048;
                    *(v163 + 14) = *(v159 + 16);

                    _os_log_impl(&dword_22F0FC000, v161, v162, "[MemoriesMusic] fetching metadata for %ld songs in %ld batches", v163, 0x16u);
                    MEMORY[0x2319033A0](v163, -1, -1);
                  }

                  else
                  {
                  }

                  v178 = *(v159 + 16);
                  v288 = v159;
                  v260[1] = v321;
                  v260[2] = *(&v320 + 1);
                  v179 = swift_allocObject();
                  v180 = v319[1];
                  *(v179 + 16) = v319[0];
                  *(v179 + 32) = v180;
                  *(v179 + 48) = v320;
                  *(v179 + 64) = v321;
                  *(v179 + 72) = v160;
                  v181 = v261;
                  *(v179 + 80) = sub_22F3AC390;
                  *(v179 + 88) = v181;
                  v182 = v277;
                  *(v179 + 96) = a2;
                  *(v179 + 104) = v182;
                  type metadata accessor for CompletionCounter();
                  v183 = swift_allocObject();
                  v183[2] = sub_22F3AC370;
                  v183[3] = v179;
                  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB2290, &qword_22F779380);
                  v184 = swift_allocObject();
                  *(v184 + 32) = 0;
                  *(v184 + 16) = 0;
                  v287 = v178;
                  *(v184 + 24) = v178;
                  v276 = v183;
                  v183[4] = v184;
                  v185 = sub_22F73EF30();
                  v186 = *(v185 + 48);
                  v187 = *(v185 + 52);
                  swift_allocObject();
                  v188 = v160;

                  v189 = sub_22F73EF20();
                  if (qword_2810A9168 != -1)
                  {
                    swift_once();
                  }

                  v190 = qword_2810A9170;
                  v191 = v269;
                  *v269 = qword_2810A9170;
                  (*(v271 + 104))(v191, *MEMORY[0x277CC86D8], v275);
                  v192 = v190;
                  v275 = v189;
                  sub_22F73EF00();
                  v193 = [v188 progressReportersForParallelOperationsWithCount_];
                  sub_22F120634(0, &qword_2810A90B0, 0x277D22C80);
                  v194 = sub_22F741180();

                  v271 = v284 + 16;
                  v272 += 8;
                  v269 = (v284 + 32);
                  v270 += 7;
                  v302 = v194;
                  v303 = 0;
                  v267 = (v284 + 8);
                  v268 = &v298;
                  v304 = v288;
                  v305 = 0;
                  v306 = 0;
                  v273 = a2;
                  while (1)
                  {
                    v195 = sub_22F226D78();
                    if (!v195)
                    {

                      goto LABEL_101;
                    }

                    v197 = v195;
                    v198 = v196;
                    v199 = *(v29 + 4);
                    v200 = *(v29 + 5);
                    v201 = *(v29 + 6);
                    v202 = *(v29 + 7);
                    v203 = *(v29 + 8);
                    v296 = *(v29 + 3);
                    v297 = v199;
                    v298 = v200;
                    v299 = v201;
                    v300 = v202;
                    v301 = v203;
                    v294[0] = v309;
                    v294[1] = v310;
                    v294[2] = v311;
                    v295 = v312;

                    v204 = v289;
                    MusicKitRequestFactory.requestForSongs(adamIDs:options:isCrossStorefrontRequest:)(v198, v294, v274, v293);
                    v289 = v204;
                    if (v204)
                    {
                      break;
                    }

                    v288 = v197;

                    v205 = swift_allocObject();
                    v206 = v276;
                    v207 = v277;
                    v205[2] = v275;
                    v205[3] = v207;
                    v205[4] = v206;
                    v205[5] = a2;
                    v287 = v205;

                    sub_22F741740();
                    if (qword_2810A8E30 != -1)
                    {
                      swift_once();
                    }

                    v208 = v282;
                    sub_22F740AC0();
                    sub_22F740A90();
                    (*v272)(v208, v283);
                    v286 = *(v29 + 9);
                    v209 = v284;
                    v210 = v281;
                    v211 = v290;
                    (*(v284 + 16))(v281, v293, v290);
                    v212 = (*(v209 + 80) + 16) & ~*(v209 + 80);
                    v213 = (v270 + v212) & 0xFFFFFFFFFFFFFFF8;
                    v214 = (v213 + 63) & 0xFFFFFFFFFFFFFFF8;
                    v285 = (v214 + 15) & 0xFFFFFFFFFFFFFFF8;
                    a4 = ((v214 + 39) & 0xFFFFFFFFFFFFFFF8);
                    a6 = swift_allocObject();
                    (*(v209 + 32))(a6 + v212, v210, v211);
                    v215 = a6 + v213;
                    v216 = v310;
                    *v215 = v309;
                    *(v215 + 16) = v216;
                    *(v215 + 32) = v311;
                    *(v215 + 48) = v312;
                    *(a6 + v214) = v292;
                    v217 = a6 + v285;
                    *v217 = "MusicKitClient HTTP Request";
                    *(v217 + 8) = 27;
                    *(v217 + 16) = 2;
                    v218 = v288;
                    *&a4[a6] = v288;
                    v219 = (a6 + ((a4 + 15) & 0xFFFFFFFFFFFFFFF8));
                    v220 = v287;
                    *v219 = sub_22F3AC36C;
                    v219[1] = v220;
                    a5 = swift_allocObject();
                    *(a5 + 16) = sub_22F294B80;
                    *(a5 + 24) = a6;
                    v300 = sub_22F294B84;
                    v301 = a5;
                    v296 = MEMORY[0x277D85DD0];
                    v297 = 1107296256;
                    v298 = sub_22F2280B0;
                    v299 = &block_descriptor_125;
                    v221 = _Block_copy(&v296);
                    sub_22F1D20B0(v307, v294);

                    v222 = v218;

                    v29 = v292;

                    dispatch_sync(v286, v221);
                    _Block_release(v221);

                    (*(v209 + 8))(v293, v290);
                    LOBYTE(v220) = swift_isEscapingClosureAtFileLocation();

                    a3 = v291;
                    a1 = v280;
                    a2 = v273;
                    if (v220)
                    {
                      goto LABEL_113;
                    }
                  }

                  [*(a2 + 24) lock];
                  LOBYTE(v153) = 1;
                  swift_beginAccess();
                  v223 = *(a2 + 16);
                  v224 = v289;
                  *(a2 + 16) = v289;

                  v225 = *(a2 + 24);
                  v226 = v224;
                  [v225 unlock];
                  v139 = v276;
                  Batch = v276[4];

                  os_unfair_lock_lock((Batch + 32));
                  if (*(Batch + 16))
                  {
                    os_unfair_lock_unlock((Batch + 32));

                    goto LABEL_96;
                  }

LABEL_95:
                  *(Batch + 16) = v153;
                  os_unfair_lock_unlock((Batch + 32));

                  v229 = v139[3];
                  (v139[2])(v228);

LABEL_96:

LABEL_101:

                  swift_bridgeObjectRelease_n();

                  v244 = v263;
                  v245 = v279;

                  swift_bridgeObjectRelease_n();

                  sub_22F1D210C(v307);
                  return;
                }
              }

              else
              {
                v227 = *(v29 + 2);
                Batch = MusicBag.songEquivalentQueryBatchSize()();
                LODWORD(v274) = 1;
                a3 = v291;
                if (Batch)
                {
                  goto LABEL_71;
                }
              }

              __break(1u);
              goto LABEL_95;
            }

            v286 = v138;
            v164 = v130;
            swift_retain_n();
            swift_retain_n();
            swift_retain_n();
            swift_retain_n();
            swift_bridgeObjectRetain_n();
            v165 = a3;
            v166 = v164;
            v167 = v131;
            swift_bridgeObjectRetain_n();
            v168 = v291;
            swift_retain_n();
            v169 = v166;
            v170 = v165;
            v171 = v167;
            v172 = v168;
            v173 = sub_22F151734(MEMORY[0x277D84F90]);
            if (*(v173 + 16))
            {
              v174 = v288;
              v175 = sub_22F3A0200(v173);

              v176 = v267;
              sub_22F73F680();
              MusicCache.writeMemoryDisplay(songs:date:progressReporter:)(v175, v176);
              v177 = v174;
              if (!v174)
              {
                v293 = v172;
                (*(v273 + 8))(v176, v274);
                v246 = v265;
                *&v319[0] = v265;

                sub_22F14585C(v247);
                v248 = sub_22F3A72B8(*&v319[0]);
                v254 = v253;
                v290 = v248;

                v255 = sub_22F740B70();
                v256 = sub_22F7415C0();
                if (os_log_type_enabled(v255, v256))
                {
                  v257 = swift_slowAlloc();
                  *v257 = 134218240;
                  v258 = v175[2];

                  *(v257 + 4) = v258;

                  *(v257 + 12) = 2048;
                  *(v257 + 14) = *(v246 + 2);

                  _os_log_impl(&dword_22F0FC000, v255, v256, "[MemoriesMusic] fetchSongDisplayMetadataJSONForAdamIDs succeeded fetching %ld songs, %ld songs already in cache.", v257, 0x16u);
                  MEMORY[0x2319033A0](v257, -1, -1);
                }

                else
                {

                  swift_bridgeObjectRelease_n();
                }

                sub_22F7416A0();
                v259 = v286;
                sub_22F1B2BBC(0);
                sub_22F1B2BBC(0);
                (v259)(v290, v254, 0);

                a3 = v291;
                goto LABEL_101;
              }

              (*(v273 + 8))(v176, v274);
            }

            else
            {

              sub_22F3A7F30();
              v177 = swift_allocError();
              *v230 = 1;
              swift_willThrow();
            }

            v231 = v177;
            v232 = sub_22F740B70();
            v233 = sub_22F7415E0();

            if (os_log_type_enabled(v232, v233))
            {
              v234 = swift_slowAlloc();
              v235 = swift_slowAlloc();
              *&v319[0] = v235;
              *v234 = 136315394;
              v236 = MEMORY[0x231900D40](v140, MEMORY[0x277D837D0]);
              v238 = sub_22F145F20(v236, v237, v319);

              *(v234 + 4) = v238;
              *(v234 + 12) = 2080;
              swift_getErrorValue();
              v239 = sub_22F7420F0();
              v241 = sub_22F145F20(v239, v240, v319);

              *(v234 + 14) = v241;
              _os_log_impl(&dword_22F0FC000, v232, v233, "[MemoriesMusic] fetchSongDisplayMetadataJSONForAdamIDs processing fetchSongs failed for adamIds %s with error: %s.", v234, 0x16u);
              swift_arrayDestroy();
              MEMORY[0x2319033A0](v235, -1, -1);
              MEMORY[0x2319033A0](v234, -1, -1);
            }

            a3 = v291;
            v242 = v286;
            sub_22F7416A0();
            sub_22F1B2BBC(1);
            sub_22F1B2BBC(1);
            v243 = v177;
            (v242)(0, 0, v177);

            goto LABEL_101;
          }
        }
      }
    }

    else
    {
    }

    static MusicKitClient.FetchOptions.memoriesDisplay(musicKitSource:)(v92, v91, v307);
    goto LABEL_64;
  }

  v50 = v265;
  a5 = v286;
  v49 = v288;
LABEL_54:
  v105 = sub_22F3A72B8(v50);
  v89 = v49;
  if (v49)
  {

LABEL_56:
    v107 = v89;
    v108 = sub_22F740B70();
    v109 = sub_22F7415E0();

    if (os_log_type_enabled(v108, v109))
    {
      v110 = swift_slowAlloc();
      v111 = swift_slowAlloc();
      v112 = v89;
      v113 = v111;
      *&v309 = v111;
      *v110 = 136315138;
      v114 = v112;
      swift_getErrorValue();
      v115 = sub_22F7420F0();
      v117 = sub_22F145F20(v115, v116, &v309);

      *(v110 + 4) = v117;
      _os_log_impl(&dword_22F0FC000, v108, v109, "[MemoriesMusic] fetchSongDisplayMetadataJSONForAdamIDs request setup failed: %s.", v110, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v113);
      MEMORY[0x2319033A0](v113, -1, -1);
      MEMORY[0x2319033A0](v110, -1, -1);
    }

    else
    {
      v114 = v89;
    }

    sub_22F7416A0();
    sub_22F1B2BBC(1);
    v118 = v114;
    (a5)(0, 0, v114);
  }

  else
  {
    v119 = v106;
    v120 = v105;

    v121 = sub_22F740B70();
    v122 = sub_22F7415C0();
    if (os_log_type_enabled(v121, v122))
    {
      v123 = swift_slowAlloc();
      *v123 = 134217984;
      v124 = *(v50 + 16);

      *(v123 + 4) = v124;

      _os_log_impl(&dword_22F0FC000, v121, v122, "[MemoriesMusic] fetchSongDisplayMetadataJSONForAdamIDs succeeded, all %ld songs already in cache.", v123, 0xCu);
      MEMORY[0x2319033A0](v123, -1, -1);
    }

    else
    {

      swift_bridgeObjectRelease_n();
    }

    sub_22F7416A0();
    sub_22F1B2BBC(0);
    (a5)(v120, v119, 0);
  }
}

void sub_22F3A3E44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    v6 = sub_22F740DF0();
    if (a3)
    {
LABEL_3:
      v7 = sub_22F73F360();
      goto LABEL_6;
    }
  }

  else
  {
    v6 = 0;
    if (a3)
    {
      goto LABEL_3;
    }
  }

  v7 = 0;
LABEL_6:
  v8 = v7;
  (*(a4 + 16))(a4, v6);
}

uint64_t static MusicCurator.fetchDisplayMetadata(for:inflationContext:progressReporter:completionHandler:)(void *a1, char *a2, void *a3, void (*a4)(uint64_t, void), uint64_t a5)
{
  v10 = sub_22F740C00();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2810A9460 != -1)
  {
    swift_once();
  }

  v14 = sub_22F740B90();
  __swift_project_value_buffer(v14, qword_2810B4D90);

  v15 = sub_22F740B70();
  v16 = sub_22F7415C0();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 134217984;
    *(v17 + 4) = a1[2];

    _os_log_impl(&dword_22F0FC000, v15, v16, "[MemoriesMusic] fetchDisplayMetadata called for %ld adamIDs", v17, 0xCu);
    MEMORY[0x2319033A0](v17, -1, -1);

    if (a1[2])
    {
LABEL_5:
      sub_22F740BF0();
      v18 = sub_22F22FB24(v13, 0);
      v19 = *(v18 + 3);
      v20 = *(v18 + 4);
      v21 = v18;
      static MusicKitClient.FetchOptions.memoriesDisplay(musicKitSource:)(*&a2[OBJC_IVAR___PGMusicCurationInflationContext_actionSource], *&a2[OBJC_IVAR___PGMusicCurationInflationContext_actionSource + 8], v26);
      v22 = a2;
      v23 = a3;

      sub_22F2340E0(a1, v26, v19, v20, v23, v21, v22, v23, a4, a5);

      v28[0] = v26[0];
      v28[1] = v26[1];
      v28[2] = v26[2];
      v29 = v27;
      return sub_22F1D210C(v28);
    }
  }

  else
  {

    if (a1[2])
    {
      goto LABEL_5;
    }
  }

  return (a4)(MEMORY[0x277D84F90], 0);
}

uint64_t static MusicCurator.fetchSongAdamIDs(forPurchasedSongID:inflationContext:progressReporter:completionHandler:)(uint64_t a1, unint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  v86 = a4;
  v87 = a5;
  v85 = a1;
  v82 = sub_22F740AD0();
  v80 = *(v82 - 8);
  isa = v80[8].isa;
  MEMORY[0x28223BE20](v82);
  v78 = &v72 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_22F73EEC0();
  v83 = *(v11 - 8);
  v84 = v11;
  v12 = *(v83 + 64);
  MEMORY[0x28223BE20](v11);
  v81 = &v72 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = v13;
  MEMORY[0x28223BE20](v14);
  v16 = &v72 - v15;
  v17 = sub_22F740C00();
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v20 = &v72 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2810A9460 != -1)
  {
    swift_once();
  }

  v21 = sub_22F740B90();
  __swift_project_value_buffer(v21, qword_2810B4D90);

  v22 = sub_22F740B70();
  v23 = sub_22F7415C0();

  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v77 = a3;
    v25 = v16;
    v26 = a6;
    v27 = v24;
    v28 = swift_slowAlloc();
    *&v102 = v28;
    *v27 = 136315138;
    *(v27 + 4) = sub_22F145F20(v85, a2, &v102);
    _os_log_impl(&dword_22F0FC000, v22, v23, "[MemoriesMusic] fetchSongAdamIDsForPurchasedSongID for purchased song ID %s", v27, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v28);
    MEMORY[0x2319033A0](v28, -1, -1);
    v29 = v27;
    a6 = v26;
    v16 = v25;
    a3 = v77;
    MEMORY[0x2319033A0](v29, -1, -1);
  }

  if (qword_2810A9BD0 != -1)
  {
    swift_once();
  }

  v30 = qword_2810B4E90;
  *&v31 = CACurrentMediaTime();
  sub_22F1B560C("fetchSongAdamIDsForPurchasedSongID", 34, 2u, v31, 0, v30, v96);
  sub_22F740BF0();
  v74 = sub_22F22FB24(v20, 0);
  static MusicKitClient.FetchOptions.identity(musicKitSource:)(*(a3 + OBJC_IVAR___PGMusicCurationInflationContext_actionSource), *(a3 + OBJC_IVAR___PGMusicCurationInflationContext_actionSource + 8), &v102);
  v33 = *(&v97 + 1);
  v32 = v98;
  v34 = swift_allocObject();
  v35 = v86;
  *(v34 + 16) = v86;
  v36 = v96[1];
  *(v34 + 24) = v96[0];
  *(v34 + 40) = v36;
  *(v34 + 56) = v97;
  v37 = v87;
  *(v34 + 72) = v98;
  *(v34 + 80) = v37;
  v76 = v33;
  v77 = v34;
  *(v34 + 88) = a6;
  v38 = qword_2810A9B98;
  swift_retain_n();
  v75 = v32;
  swift_retain_n();
  v39 = v35;
  swift_retain_n();
  v40 = v39;
  if (v38 != -1)
  {
    swift_once();
  }

  v41 = qword_2810B4E70;
  *&v42 = CACurrentMediaTime();
  sub_22F1B560C("MusicKitClient Fetch Songs By Purchased ID", 42, 2u, v42, 0, v41, v99);
  v43 = v74;
  v44 = *(v74 + 4);
  v45 = *(v74 + 5);
  v46 = *(v74 + 6);
  v47 = *(v74 + 7);
  v48 = *(v74 + 8);
  v90 = *(v74 + 3);
  v91 = v44;
  v92 = v45;
  v93 = v46;
  v94 = v47;
  v95 = v48;
  v88[0] = v102;
  v88[1] = v103;
  v88[2] = v104;
  v89 = v105;

  sub_22F3E3150(v85, a2, v88, v16);

  v73 = v40;
  v85 = a6;
  v49 = *(&v100 + 1);
  v50 = v101;
  v51 = swift_allocObject();
  v52 = v99[1];
  *(v51 + 16) = v99[0];
  *(v51 + 32) = v52;
  *(v51 + 48) = v100;
  *(v51 + 64) = v101;
  *(v51 + 72) = sub_22F3A7F18;
  v72 = v51;
  *(v51 + 80) = v77;
  v87 = v49;

  v86 = v50;

  sub_22F741740();
  if (qword_2810A8E30 != -1)
  {
    swift_once();
  }

  v53 = v78;
  sub_22F740AC0();
  sub_22F740A90();
  (v80[1].isa)(v53, v82);
  v80 = *(v43 + 9);
  v54 = v83;
  v55 = v84;
  v56 = v81;
  (*(v83 + 16))(v81, v16, v84);
  v57 = (*(v54 + 80) + 16) & ~*(v54 + 80);
  v58 = (v79 + v57 + 7) & 0xFFFFFFFFFFFFFFF8;
  v59 = (v58 + 63) & 0xFFFFFFFFFFFFFFF8;
  v82 = v16;
  v78 = ((v59 + 15) & 0xFFFFFFFFFFFFFFF8);
  v79 = (v59 + 39) & 0xFFFFFFFFFFFFFFF8;
  v60 = (v79 + 15) & 0xFFFFFFFFFFFFFFF8;
  v61 = swift_allocObject();
  (*(v54 + 32))(v61 + v57, v56, v55);
  v62 = v61 + v58;
  v63 = v103;
  *v62 = v102;
  *(v62 + 16) = v63;
  *(v62 + 32) = v104;
  *(v62 + 48) = v105;
  *(v61 + v59) = v43;
  v64 = &v78[v61];
  *v64 = "MusicKitClient HTTP Request";
  *(v64 + 1) = 27;
  v64[16] = 2;
  v65 = v72;
  v66 = v73;
  *(v61 + v79) = v73;
  v67 = (v61 + v60);
  *v67 = sub_22F2340A0;
  v67[1] = v65;
  v68 = swift_allocObject();
  *(v68 + 16) = sub_22F294B80;
  *(v68 + 24) = v61;
  v94 = sub_22F294B84;
  v95 = v68;
  v90 = MEMORY[0x277D85DD0];
  v91 = 1107296256;
  v92 = sub_22F2280B0;
  v93 = &block_descriptor_29_1;
  v69 = _Block_copy(&v90);
  v70 = v66;
  sub_22F1D20B0(&v102, v88);

  dispatch_sync(v80, v69);
  _Block_release(v69);

  (*(v83 + 8))(v82, v84);
  LOBYTE(v69) = swift_isEscapingClosureAtFileLocation();

  if (v69)
  {
    __break(1u);
  }

  else
  {

    return sub_22F1D210C(&v102);
  }

  return result;
}

uint64_t sub_22F3A4E24(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  v5 = a5;
  if (a2)
  {
    sub_22F1B2BBC(0);
    return v5(0, a1);
  }

  else
  {
    v8 = *(a1 + 16);
    v9 = MEMORY[0x277D84F90];
    if (v8)
    {
      v21 = MEMORY[0x277D84F90];
      sub_22F146454(0, v8, 0);
      v9 = v21;
      v10 = (a1 + 40);
      do
      {
        v11 = *(v10 - 1);
        v12 = *v10;
        v13 = *(v21 + 16);
        v14 = *(v21 + 24);

        if (v13 >= v14 >> 1)
        {
          sub_22F146454((v14 > 1), v13 + 1, 1);
        }

        *(v21 + 16) = v13 + 1;
        v15 = v21 + 16 * v13;
        *(v15 + 32) = v11;
        *(v15 + 40) = v12;
        v10 += 37;
        --v8;
      }

      while (v8);
      v5 = a5;
    }

    if (qword_2810A9460 != -1)
    {
      swift_once();
    }

    v16 = sub_22F740B90();
    __swift_project_value_buffer(v16, qword_2810B4D90);

    v17 = sub_22F740B70();
    v18 = sub_22F7415C0();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 134217984;
      *(v19 + 4) = *(v9 + 16);

      _os_log_impl(&dword_22F0FC000, v17, v18, "[MemoriesMusic] fetchSongAdamIDsForPurchasedSongID succeeded fetching %ld songs", v19, 0xCu);
      MEMORY[0x2319033A0](v19, -1, -1);
    }

    else
    {
    }

    sub_22F7416A0();
    sub_22F1B2BBC(0);
    v5(v9, 0);
  }
}

void sub_22F3A5134(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    v5 = sub_22F741160();
    if (a2)
    {
LABEL_3:
      v6 = sub_22F73F360();
      goto LABEL_6;
    }
  }

  else
  {
    v5 = 0;
    if (a2)
    {
      goto LABEL_3;
    }
  }

  v6 = 0;
LABEL_6:
  v7 = v6;
  (*(a3 + 16))(a3, v5);
}

void sub_22F3A51D0(char *a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t isUniquelyReferenced_nonNull_native)
{
  v166 = a4;
  v167 = a5;
  v168 = a3;
  v9 = type metadata accessor for Song();
  v10 = *(v9 - 8);
  v11 = *(v10 + 8);
  MEMORY[0x28223BE20](v9 - 8);
  v13 = &v163 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  MEMORY[0x28223BE20](v15);
  v169 = &v163 - v16;
  MEMORY[0x28223BE20](v17);
  v174 = &v163 - v18;
  MEMORY[0x28223BE20](v19);
  v170 = &v163 - v20;
  MEMORY[0x28223BE20](v21);
  v175 = &v163 - v22;
  MEMORY[0x28223BE20](v23);
  v171 = &v163 - v24;
  MEMORY[0x28223BE20](v25);
  v176 = &v163 - v26;
  MEMORY[0x28223BE20](v27);
  v172 = &v163 - v28;
  MEMORY[0x28223BE20](v29);
  v177 = &v163 - v30;
  MEMORY[0x28223BE20](v31);
  v173 = &v163 - v32;
  MEMORY[0x28223BE20](v33);
  v178 = &v163 - v34;
  MEMORY[0x28223BE20](v35);
  v185 = (&v163 - v36);
  MEMORY[0x28223BE20](v37);
  v39 = (&v163 - v38);
  MEMORY[0x28223BE20](v40);
  MEMORY[0x28223BE20](v41);
  v43 = (&v163 - v42);
  MEMORY[0x28223BE20](v44);
  MEMORY[0x28223BE20](v45);
  v187 = (&v163 - v49);
  if ((a2 & 1) == 0)
  {
    v183 = v46;
    v184 = v48;
    v182 = v47;
    v165 = isUniquelyReferenced_nonNull_native;
    isUniquelyReferenced_nonNull_native = *(a1 + 2);
    v51 = MEMORY[0x277D84F90];
    v188 = v39;
    if (isUniquelyReferenced_nonNull_native)
    {
      v193 = MEMORY[0x277D84F90];
      sub_22F146514(0, isUniquelyReferenced_nonNull_native, 0);
      v51 = v193;
      v52 = a1 + 32;
      do
      {
        memcpy(v192, v52, sizeof(v192));
        memcpy(v191, v52, sizeof(v191));
        sub_22F18C4EC(v192, &v190);
        Song.init(_:)(v191);
        v193 = v51;
        v54 = *(v51 + 16);
        v53 = *(v51 + 24);
        if (v54 >= v53 >> 1)
        {
          sub_22F146514(v53 > 1, v54 + 1, 1);
          v51 = v193;
        }

        *(v51 + 16) = v54 + 1;
        sub_22F15CB04(v13, v51 + ((v10[80] + 32) & ~v10[80]) + *(v10 + 9) * v54);
        v52 += 296;
        --isUniquelyReferenced_nonNull_native;
      }

      while (isUniquelyReferenced_nonNull_native);
      v39 = v188;
    }

    v55 = sub_22F151734(v51);

    if (!*(v55 + 16))
    {

      if (qword_2810A9460 != -1)
      {
        swift_once();
      }

      v78 = sub_22F740B90();
      __swift_project_value_buffer(v78, qword_2810B4D90);
      sub_22F1D2178(a1, 0);
      v79 = sub_22F740B70();
      v80 = sub_22F7415E0();
      sub_22F1D20A4(a1, 0);
      if (os_log_type_enabled(v79, v80))
      {
        v81 = swift_slowAlloc();
        v82 = swift_slowAlloc();
        v192[0] = v82;
        *v81 = 136315138;
        v83 = MEMORY[0x231900D40](a1, &type metadata for MusicKitCatalogSong);
        v85 = sub_22F145F20(v83, v84, v192);

        *(v81 + 4) = v85;
        _os_log_impl(&dword_22F0FC000, v79, v80, "[MemoriesMusic] inflateDisplayMetadata unable to inflate songs from %s. Throwing emptyMusicKitResponse error", v81, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v82);
        MEMORY[0x2319033A0](v82, -1, -1);
        MEMORY[0x2319033A0](v81, -1, -1);
      }

      isUniquelyReferenced_nonNull_native = v165;
      sub_22F3A7F30();
      a1 = swift_allocError();
      *v86 = 1;
      swift_willThrow();
      goto LABEL_31;
    }

    v56 = sub_22F3A0200(v55);
    v164 = 0;

    v57 = v56;
    v58 = *(v56 + 16);
    v186 = v43;
    v181 = v58;
    if (!v58)
    {
      v60 = MEMORY[0x277D84F98];
LABEL_38:

      v181 = *(v168 + OBJC_IVAR___PGMusicCuration_curatorVersion);
      v100 = *(v168 + OBJC_IVAR___PGMusicCuration_bestMusicSuggestions);
      v101 = *(v100 + 16);
      if (v101)
      {
        v184 = ((v10[80] + 32) & ~v10[80]);
        v102 = v184 + v100;
        v103 = *(v10 + 9);
        v187 = MEMORY[0x277D84F90];
        v104 = v185;
        do
        {
          v105 = v182;
          sub_22F15CAA0(v102, v182);
          if (v60[2] && (v106 = sub_22F1229E8(*v105, v105[1]), (v107 & 1) != 0))
          {
            v108 = v169;
            sub_22F15CAA0(v60[7] + v106 * v103, v169);
            sub_22F15CBD8(v105);
            sub_22F15CB04(v108, v174);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v187 = sub_22F13E558(0, v187[2] + 1, 1, v187);
            }

            v110 = v187[2];
            v109 = v187[3];
            if (v110 >= v109 >> 1)
            {
              v187 = sub_22F13E558(v109 > 1, v110 + 1, 1, v187);
            }

            v111 = v187;
            v187[2] = v110 + 1;
            sub_22F15CB04(v174, v184 + v111 + v110 * v103);
            v39 = v188;
            v43 = v186;
          }

          else
          {
            sub_22F15CBD8(v105);
          }

          v102 += v103;
          --v101;
        }

        while (v101);
      }

      else
      {
        v187 = MEMORY[0x277D84F90];
        v104 = v185;
      }

      v112 = *(v168 + OBJC_IVAR___PGMusicCuration_musicForYou);
      v113 = *(v112 + 16);
      if (v113)
      {
        v114 = (v10[80] + 32) & ~v10[80];
        v115 = v112 + v114;
        v116 = *(v10 + 9);
        v184 = MEMORY[0x277D84F90];
        do
        {
          sub_22F15CAA0(v115, v43);
          if (v60[2] && (v117 = sub_22F1229E8(*v43, v43[1]), (v118 & 1) != 0))
          {
            v119 = v170;
            sub_22F15CAA0(v60[7] + v117 * v116, v170);
            sub_22F15CBD8(v43);
            sub_22F15CB04(v119, v175);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v184 = sub_22F13E558(0, v184[2] + 1, 1, v184);
            }

            v121 = v184[2];
            v120 = v184[3];
            if (v121 >= v120 >> 1)
            {
              v184 = sub_22F13E558(v120 > 1, v121 + 1, 1, v184);
            }

            v122 = v184;
            v184[2] = v121 + 1;
            sub_22F15CB04(v175, v122 + v114 + v121 * v116);
            v39 = v188;
            v43 = v186;
          }

          else
          {
            sub_22F15CBD8(v43);
          }

          v115 += v116;
          --v113;
        }

        while (v113);
      }

      else
      {
        v184 = MEMORY[0x277D84F90];
      }

      v123 = *(v168 + OBJC_IVAR___PGMusicCuration_musicForLocation);
      v124 = *(v123 + 16);
      if (v124)
      {
        v186 = (v10[80] + 32) & ~v10[80];
        v125 = v123 + v186;
        v126 = *(v10 + 9);
        v127 = MEMORY[0x277D84F90];
        do
        {
          v128 = v183;
          sub_22F15CAA0(v125, v183);
          if (v60[2] && (v129 = sub_22F1229E8(*v128, v128[1]), (v130 & 1) != 0))
          {
            v131 = v171;
            sub_22F15CAA0(v60[7] + v129 * v126, v171);
            sub_22F15CBD8(v128);
            sub_22F15CB04(v131, v176);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v127 = sub_22F13E558(0, v127[2] + 1, 1, v127);
            }

            v133 = v127[2];
            v132 = v127[3];
            if (v133 >= v132 >> 1)
            {
              v127 = sub_22F13E558(v132 > 1, v133 + 1, 1, v127);
            }

            v127[2] = v133 + 1;
            sub_22F15CB04(v176, v127 + v186 + v133 * v126);
            v104 = v185;
            v39 = v188;
          }

          else
          {
            sub_22F15CBD8(v128);
          }

          v125 += v126;
          --v124;
        }

        while (v124);
      }

      else
      {
        v127 = MEMORY[0x277D84F90];
      }

      v134 = *(v168 + OBJC_IVAR___PGMusicCuration_musicForTime);
      v135 = *(v134 + 16);
      v136 = MEMORY[0x277D84F90];
      if (v135)
      {
        v186 = (v10[80] + 32) & ~v10[80];
        v137 = v134 + v186;
        v138 = *(v10 + 9);
        do
        {
          sub_22F15CAA0(v137, v39);
          if (v60[2] && (v139 = sub_22F1229E8(*v39, v39[1]), (v140 & 1) != 0))
          {
            v141 = v39;
            v142 = v172;
            sub_22F15CAA0(v60[7] + v139 * v138, v172);
            sub_22F15CBD8(v141);
            sub_22F15CB04(v142, v177);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v136 = sub_22F13E558(0, v136[2] + 1, 1, v136);
            }

            v144 = v136[2];
            v143 = v136[3];
            if (v144 >= v143 >> 1)
            {
              v136 = sub_22F13E558(v143 > 1, v144 + 1, 1, v136);
            }

            v136[2] = v144 + 1;
            sub_22F15CB04(v177, v136 + v186 + v144 * v138);
            v104 = v185;
            v39 = v188;
          }

          else
          {
            sub_22F15CBD8(v39);
          }

          v137 += v138;
          --v135;
        }

        while (v135);
      }

      v145 = *(v168 + OBJC_IVAR___PGMusicCuration_musicForPerformer);
      v146 = *(v145 + 16);
      if (v146)
      {
        v188 = (v10[80] + 32) & ~v10[80];
        v147 = v145 + v188;
        v148 = *(v10 + 9);
        v149 = MEMORY[0x277D84F90];
        do
        {
          sub_22F15CAA0(v147, v104);
          if (v60[2] && (v150 = sub_22F1229E8(*v104, v104[1]), (v151 & 1) != 0))
          {
            v152 = v173;
            sub_22F15CAA0(v60[7] + v150 * v148, v173);
            sub_22F15CBD8(v104);
            sub_22F15CB04(v152, v178);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v149 = sub_22F13E558(0, v149[2] + 1, 1, v149);
            }

            v154 = v149[2];
            v153 = v149[3];
            if (v154 >= v153 >> 1)
            {
              v149 = sub_22F13E558(v153 > 1, v154 + 1, 1, v149);
            }

            v149[2] = v154 + 1;
            sub_22F15CB04(v178, v149 + v188 + v154 * v148);
            v104 = v185;
          }

          else
          {
            sub_22F15CBD8(v104);
          }

          v147 += v148;
          --v146;
        }

        while (v146);
      }

      else
      {

        v149 = MEMORY[0x277D84F90];
      }

      v155 = *(v168 + OBJC_IVAR___PGMusicCuration_musicCurationInfo);
      v156 = *(v168 + OBJC_IVAR___PGMusicCuration_musicCurationInfo + 8);
      v157 = *(v168 + OBJC_IVAR___PGMusicCuration_musicCurationInfo + 16);
      v158 = type metadata accessor for MusicCuration();
      v159 = objc_allocWithZone(v158);
      *&v159[OBJC_IVAR___PGMusicCuration_curatorVersion] = v181;
      *&v159[OBJC_IVAR___PGMusicCuration_bestMusicSuggestions] = v187;
      *&v159[OBJC_IVAR___PGMusicCuration_musicForYou] = v184;
      *&v159[OBJC_IVAR___PGMusicCuration_musicForLocation] = v127;
      *&v159[OBJC_IVAR___PGMusicCuration_musicForTime] = v136;
      *&v159[OBJC_IVAR___PGMusicCuration_musicForPerformer] = v149;
      v160 = &v159[OBJC_IVAR___PGMusicCuration_musicCurationInfo];
      *v160 = v155;
      *(v160 + 1) = v156;
      *(v160 + 2) = v157;
      *&v159[OBJC_IVAR___PGMusicCuration_musicCurationDebugInfo] = MEMORY[0x277D84F90];
      v189.receiver = v159;
      v189.super_class = v158;

      v161 = objc_msgSendSuper2(&v189, sel_init);
      v162 = v164;
      sub_22F7416A0();
      if (v162)
      {
      }

      sub_22F1B2BBC(0);
      (v165)[2](v165, v161, 0);

      return;
    }

    v59 = 0;
    v180 = v56 + ((v10[80] + 32) & ~v10[80]);
    v60 = MEMORY[0x277D84F98];
    v61 = v184;
    v179 = v57;
    while (1)
    {
      if (v59 >= *(v57 + 16))
      {
        __break(1u);
LABEL_102:
        __break(1u);
LABEL_103:
        __break(1u);
        goto LABEL_104;
      }

      a1 = v10;
      v62 = *(v10 + 9);
      v63 = v187;
      sub_22F15CAA0(v180 + v62 * v59, v187);
      v65 = *v63;
      v64 = v63[1];
      sub_22F15CAA0(v63, v61);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v192[0] = v60;
      v67 = sub_22F1229E8(v65, v64);
      v68 = v60[2];
      v69 = (v66 & 1) == 0;
      v70 = v68 + v69;
      if (__OFADD__(v68, v69))
      {
        goto LABEL_102;
      }

      v71 = v66;
      if (v60[3] >= v70)
      {
        if (isUniquelyReferenced_nonNull_native)
        {
          v60 = v192[0];
          if (v66)
          {
            goto LABEL_12;
          }
        }

        else
        {
          sub_22F134A90();
          v60 = v192[0];
          if (v71)
          {
            goto LABEL_12;
          }
        }
      }

      else
      {
        sub_22F126640(v70, isUniquelyReferenced_nonNull_native);
        v72 = sub_22F1229E8(v65, v64);
        if ((v71 & 1) != (v73 & 1))
        {
          _Block_release(v165);
          sub_22F7420C0();
          __break(1u);
          return;
        }

        v67 = v72;
        v60 = v192[0];
        if (v71)
        {
LABEL_12:
          v61 = v184;
          sub_22F1A2A44(v184, v60[7] + v67 * v62);
          goto LABEL_13;
        }
      }

      v60[(v67 >> 6) + 8] |= 1 << v67;
      v74 = (v60[6] + 16 * v67);
      *v74 = v65;
      v74[1] = v64;
      v61 = v184;
      sub_22F15CB04(v184, v60[7] + v67 * v62);
      v75 = v60[2];
      v76 = __OFADD__(v75, 1);
      v77 = v75 + 1;
      if (v76)
      {
        goto LABEL_103;
      }

      v60[2] = v77;

LABEL_13:
      ++v59;
      sub_22F15CBD8(v187);
      v10 = a1;
      v39 = v188;
      v43 = v186;
      v57 = v179;
      if (v181 == v59)
      {
        goto LABEL_38;
      }
    }
  }

  v192[0] = a1;
  v50 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB1518, &qword_22F77A7E0);
  swift_willThrowTypedImpl();
LABEL_31:
  v59 = 0;
  if (qword_2810A9460 != -1)
  {
LABEL_104:
    swift_once();
  }

  v87 = sub_22F740B90();
  __swift_project_value_buffer(v87, qword_2810B4D90);
  v88 = a1;
  v89 = sub_22F740B70();
  v90 = sub_22F7415E0();

  if (os_log_type_enabled(v89, v90))
  {
    v91 = swift_slowAlloc();
    v92 = isUniquelyReferenced_nonNull_native;
    v93 = swift_slowAlloc();
    v192[0] = v93;
    *v91 = 136315138;
    swift_getErrorValue();
    v94 = sub_22F7420F0();
    v96 = sub_22F145F20(v94, v95, v192);

    *(v91 + 4) = v96;
    _os_log_impl(&dword_22F0FC000, v89, v90, "[MemoriesMusic] inflateDisplayMetadataForMusicCuration processing fetchSongs failed: %s.", v91, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v93);
    v97 = v93;
    isUniquelyReferenced_nonNull_native = v92;
    MEMORY[0x2319033A0](v97, -1, -1);
    MEMORY[0x2319033A0](v91, -1, -1);
  }

  sub_22F7416A0();
  if (v59)
  {
  }

  sub_22F1B2BBC(1);
  v98 = a1;
  v99 = sub_22F73F360();
  (*(isUniquelyReferenced_nonNull_native + 16))(isUniquelyReferenced_nonNull_native, 0, v99);
}

void sub_22F3A6250(unint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(id, void *), uint64_t a7)
{
  v167[3] = a7;
  v168 = a6;
  v167[1] = a4;
  v167[2] = a5;
  v169 = a3;
  v9 = type metadata accessor for Song();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v174 = v167 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v179 = v167 - v14;
  MEMORY[0x28223BE20](v15);
  v173 = v167 - v16;
  MEMORY[0x28223BE20](v17);
  v178 = v167 - v18;
  MEMORY[0x28223BE20](v19);
  v21 = (v167 - v20);
  MEMORY[0x28223BE20](v22);
  v172 = v167 - v23;
  MEMORY[0x28223BE20](v24);
  v177 = v167 - v25;
  MEMORY[0x28223BE20](v26);
  MEMORY[0x28223BE20](v27);
  v171 = v167 - v28;
  MEMORY[0x28223BE20](v29);
  v176 = v167 - v30;
  MEMORY[0x28223BE20](v31);
  MEMORY[0x28223BE20](v32);
  v170 = v167 - v33;
  MEMORY[0x28223BE20](v34);
  v175 = v167 - v35;
  MEMORY[0x28223BE20](v36);
  MEMORY[0x28223BE20](v37);
  v39 = (v167 - v38);
  MEMORY[0x28223BE20](v40);
  MEMORY[0x28223BE20](v167 - v41);
  v43 = (v167 - v42);
  MEMORY[0x28223BE20](v44);
  v50 = v167 - v49;
  if (a2)
  {
    v193[0] = a1;
    v51 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB1518, &qword_22F77A7E0);
    swift_willThrowTypedImpl();
LABEL_29:
    v62 = 0;
    if (qword_2810A9460 != -1)
    {
LABEL_103:
      swift_once();
    }

    v92 = sub_22F740B90();
    __swift_project_value_buffer(v92, qword_2810B4D90);
    v93 = a1;
    v94 = sub_22F740B70();
    v95 = sub_22F7415E0();

    if (os_log_type_enabled(v94, v95))
    {
      v96 = swift_slowAlloc();
      v97 = swift_slowAlloc();
      v193[0] = v97;
      *v96 = 136315138;
      v98 = a1;
      swift_getErrorValue();
      v99 = sub_22F7420F0();
      v101 = sub_22F145F20(v99, v100, v193);

      *(v96 + 4) = v101;
      _os_log_impl(&dword_22F0FC000, v94, v95, "[MemoriesMusic] inflateDisplayMetadataForMusicCuration processing fetchSongs failed: %s.", v96, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v97);
      MEMORY[0x2319033A0](v97, -1, -1);
      MEMORY[0x2319033A0](v96, -1, -1);
    }

    else
    {
      v98 = a1;
    }

    sub_22F7416A0();
    if (v62)
    {
    }

    sub_22F1B2BBC(1);
    v102 = v98;
    v168(0, v98);

    return;
  }

  v183 = v45;
  v184 = v48;
  v188 = v47;
  v189 = v46;
  v52 = a1;
  v53 = *(a1 + 16);
  v54 = MEMORY[0x277D84F90];
  v187 = v52;
  if (v53)
  {
    v186 = v39;
    v194 = MEMORY[0x277D84F90];
    sub_22F146514(0, v53, 0);
    v54 = v194;
    v55 = (v52 + 4);
    do
    {
      memcpy(v193, v55, sizeof(v193));
      memcpy(v192, v55, sizeof(v192));
      sub_22F18C4EC(v193, &v191);
      Song.init(_:)(v192);
      v194 = v54;
      v57 = *(v54 + 16);
      v56 = *(v54 + 24);
      if (v57 >= v56 >> 1)
      {
        sub_22F146514(v56 > 1, v57 + 1, 1);
        v54 = v194;
      }

      *(v54 + 16) = v57 + 1;
      sub_22F15CB04(v50, v54 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(v10 + 72) * v57);
      v55 += 296;
      --v53;
    }

    while (v53);
    v39 = v186;
  }

  v58 = sub_22F151734(v54);

  a1 = v189;
  if (!*(v58 + 16))
  {

    if (qword_2810A9460 != -1)
    {
      swift_once();
    }

    v82 = sub_22F740B90();
    __swift_project_value_buffer(v82, qword_2810B4D90);
    v83 = v187;
    sub_22F1D2178(v187, 0);
    v84 = sub_22F740B70();
    v85 = sub_22F7415E0();
    sub_22F1D20A4(v83, 0);
    if (os_log_type_enabled(v84, v85))
    {
      v86 = swift_slowAlloc();
      v87 = swift_slowAlloc();
      v193[0] = v87;
      *v86 = 136315138;
      v88 = MEMORY[0x231900D40](v83, &type metadata for MusicKitCatalogSong);
      v90 = sub_22F145F20(v88, v89, v193);

      *(v86 + 4) = v90;
      _os_log_impl(&dword_22F0FC000, v84, v85, "[MemoriesMusic] inflateDisplayMetadata unable to inflate songs from %s. Throwing emptyMusicKitResponse error", v86, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v87);
      MEMORY[0x2319033A0](v87, -1, -1);
      MEMORY[0x2319033A0](v86, -1, -1);
    }

    sub_22F3A7F30();
    a1 = swift_allocError();
    *v91 = 1;
    swift_willThrow();
    goto LABEL_29;
  }

  v59 = sub_22F3A0200(v58);
  v167[0] = 0;

  v60 = v59;
  v61 = *(v59 + 16);
  v185 = v10;
  v186 = v21;
  v182 = v61;
  if (v61)
  {
    v62 = 0;
    v181 = v59 + ((*(v10 + 80) + 32) & ~*(v10 + 80));
    v63 = MEMORY[0x277D84F98];
    v180 = v60;
    while (1)
    {
      if (v62 >= *(v60 + 16))
      {
        __break(1u);
LABEL_101:
        __break(1u);
LABEL_102:
        __break(1u);
        goto LABEL_103;
      }

      v187 = *(v10 + 72);
      sub_22F15CAA0(v181 + v187 * v62, v43);
      v65 = *v43;
      v66 = v43[1];
      v67 = v43;
      v68 = v43;
      v69 = v39;
      sub_22F15CAA0(v68, v39);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v193[0] = v63;
      a1 = sub_22F1229E8(v65, v66);
      v72 = v63[2];
      v73 = (v71 & 1) == 0;
      v74 = v72 + v73;
      if (__OFADD__(v72, v73))
      {
        goto LABEL_101;
      }

      v75 = v71;
      if (v63[3] >= v74)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_22F134A90();
        }
      }

      else
      {
        sub_22F126640(v74, isUniquelyReferenced_nonNull_native);
        v76 = sub_22F1229E8(v65, v66);
        if ((v75 & 1) != (v77 & 1))
        {
          sub_22F7420C0();
          __break(1u);
          return;
        }

        a1 = v76;
      }

      v39 = v69;
      v63 = v193[0];
      v43 = v67;
      if (v75)
      {
        sub_22F1A2A44(v39, *(v193[0] + 56) + a1 * v187);
      }

      else
      {
        *(v193[0] + 8 * (a1 >> 6) + 64) |= 1 << a1;
        v78 = (v63[6] + 16 * a1);
        *v78 = v65;
        v78[1] = v66;
        sub_22F15CB04(v39, v63[7] + a1 * v187);
        v79 = v63[2];
        v80 = __OFADD__(v79, 1);
        v81 = v79 + 1;
        if (v80)
        {
          goto LABEL_102;
        }

        v63[2] = v81;
      }

      ++v62;
      sub_22F15CBD8(v67);
      v10 = v185;
      v21 = v186;
      v64 = v188;
      a1 = v189;
      v60 = v180;
      if (v182 == v62)
      {
        goto LABEL_37;
      }
    }
  }

  v63 = MEMORY[0x277D84F98];
  v64 = v188;
LABEL_37:

  v181 = *(v169 + OBJC_IVAR___PGMusicCuration_curatorVersion);
  v103 = *(v169 + OBJC_IVAR___PGMusicCuration_bestMusicSuggestions);
  v104 = *(v103 + 16);
  if (v104)
  {
    v182 = (*(v10 + 80) + 32) & ~*(v10 + 80);
    v105 = v103 + v182;
    v106 = *(v10 + 72);
    v187 = MEMORY[0x277D84F90];
    do
    {
      v107 = v183;
      sub_22F15CAA0(v105, v183);
      if (v63[2] && (v108 = sub_22F1229E8(*v107, v107[1]), (v109 & 1) != 0))
      {
        v110 = v170;
        sub_22F15CAA0(v63[7] + v108 * v106, v170);
        sub_22F15CBD8(v107);
        sub_22F15CB04(v110, v175);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v187 = sub_22F13E558(0, *(v187 + 16) + 1, 1, v187);
        }

        v112 = *(v187 + 16);
        v111 = *(v187 + 24);
        if (v112 >= v111 >> 1)
        {
          v187 = sub_22F13E558(v111 > 1, v112 + 1, 1, v187);
        }

        v113 = v187;
        *(v187 + 16) = v112 + 1;
        sub_22F15CB04(v175, v113 + v182 + v112 * v106);
        v64 = v188;
        a1 = v189;
      }

      else
      {
        sub_22F15CBD8(v107);
      }

      v105 += v106;
      --v104;
    }

    while (v104);
  }

  else
  {
    v187 = MEMORY[0x277D84F90];
  }

  v114 = *(v169 + OBJC_IVAR___PGMusicCuration_musicForYou);
  v115 = *(v114 + 16);
  if (v115)
  {
    v182 = (*(v10 + 80) + 32) & ~*(v10 + 80);
    v116 = v114 + v182;
    v117 = *(v10 + 72);
    v183 = MEMORY[0x277D84F90];
    do
    {
      v118 = v184;
      sub_22F15CAA0(v116, v184);
      if (v63[2] && (v119 = sub_22F1229E8(*v118, v118[1]), (v120 & 1) != 0))
      {
        v121 = v171;
        sub_22F15CAA0(v63[7] + v119 * v117, v171);
        sub_22F15CBD8(v118);
        sub_22F15CB04(v121, v176);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v183 = sub_22F13E558(0, v183[2] + 1, 1, v183);
        }

        v123 = v183[2];
        v122 = v183[3];
        if (v123 >= v122 >> 1)
        {
          v183 = sub_22F13E558(v122 > 1, v123 + 1, 1, v183);
        }

        v125 = v182;
        v124 = v183;
        v183[2] = v123 + 1;
        sub_22F15CB04(v176, v124 + v125 + v123 * v117);
        v64 = v188;
        a1 = v189;
      }

      else
      {
        sub_22F15CBD8(v118);
      }

      v116 += v117;
      --v115;
    }

    while (v115);
  }

  else
  {
    v183 = MEMORY[0x277D84F90];
  }

  v126 = *(v169 + OBJC_IVAR___PGMusicCuration_musicForLocation);
  v127 = *(v126 + 16);
  if (v127)
  {
    v128 = (*(v10 + 80) + 32) & ~*(v10 + 80);
    v129 = v126 + v128;
    v130 = *(v10 + 72);
    v131 = MEMORY[0x277D84F90];
    do
    {
      sub_22F15CAA0(v129, v64);
      if (v63[2] && (v132 = sub_22F1229E8(*v64, v64[1]), (v133 & 1) != 0))
      {
        v134 = v64;
        v135 = v172;
        sub_22F15CAA0(v63[7] + v132 * v130, v172);
        sub_22F15CBD8(v134);
        sub_22F15CB04(v135, v177);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v131 = sub_22F13E558(0, v131[2] + 1, 1, v131);
        }

        v137 = v131[2];
        v136 = v131[3];
        if (v137 >= v136 >> 1)
        {
          v131 = sub_22F13E558(v136 > 1, v137 + 1, 1, v131);
        }

        v131[2] = v137 + 1;
        sub_22F15CB04(v177, v131 + v128 + v137 * v130);
        v64 = v188;
        a1 = v189;
      }

      else
      {
        sub_22F15CBD8(v64);
      }

      v129 += v130;
      --v127;
    }

    while (v127);
  }

  else
  {
    v131 = MEMORY[0x277D84F90];
  }

  v138 = *(v169 + OBJC_IVAR___PGMusicCuration_musicForTime);
  v139 = *(v138 + 16);
  v140 = MEMORY[0x277D84F90];
  if (v139)
  {
    v188 = (*(v185 + 80) + 32) & ~*(v185 + 80);
    v141 = v138 + v188;
    v142 = *(v185 + 72);
    do
    {
      sub_22F15CAA0(v141, a1);
      if (v63[2] && (v143 = sub_22F1229E8(*a1, *(a1 + 8)), (v144 & 1) != 0))
      {
        v145 = v173;
        sub_22F15CAA0(v63[7] + v143 * v142, v173);
        sub_22F15CBD8(a1);
        sub_22F15CB04(v145, v178);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v140 = sub_22F13E558(0, v140[2] + 1, 1, v140);
        }

        v147 = v140[2];
        v146 = v140[3];
        if (v147 >= v146 >> 1)
        {
          v140 = sub_22F13E558(v146 > 1, v147 + 1, 1, v140);
        }

        v140[2] = v147 + 1;
        sub_22F15CB04(v178, v140 + v188 + v147 * v142);
        a1 = v189;
      }

      else
      {
        sub_22F15CBD8(a1);
      }

      v141 += v142;
      --v139;
    }

    while (v139);
  }

  v148 = *(v169 + OBJC_IVAR___PGMusicCuration_musicForPerformer);
  v149 = *(v148 + 16);
  if (v149)
  {
    v189 = (*(v185 + 80) + 32) & ~*(v185 + 80);
    v150 = v148 + v189;
    v151 = *(v185 + 72);
    v152 = MEMORY[0x277D84F90];
    do
    {
      sub_22F15CAA0(v150, v21);
      if (v63[2] && (v153 = sub_22F1229E8(*v21, v21[1]), (v154 & 1) != 0))
      {
        v155 = v174;
        sub_22F15CAA0(v63[7] + v153 * v151, v174);
        sub_22F15CBD8(v21);
        sub_22F15CB04(v155, v179);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v152 = sub_22F13E558(0, v152[2] + 1, 1, v152);
        }

        v157 = v152[2];
        v156 = v152[3];
        if (v157 >= v156 >> 1)
        {
          v152 = sub_22F13E558(v156 > 1, v157 + 1, 1, v152);
        }

        v152[2] = v157 + 1;
        sub_22F15CB04(v179, v152 + v189 + v157 * v151);
        v21 = v186;
      }

      else
      {
        sub_22F15CBD8(v21);
      }

      v150 += v151;
      --v149;
    }

    while (v149);
  }

  else
  {

    v152 = MEMORY[0x277D84F90];
  }

  v158 = *(v169 + OBJC_IVAR___PGMusicCuration_musicCurationInfo);
  v159 = *(v169 + OBJC_IVAR___PGMusicCuration_musicCurationInfo + 8);
  v160 = *(v169 + OBJC_IVAR___PGMusicCuration_musicCurationInfo + 16);
  v161 = type metadata accessor for MusicCuration();
  v162 = objc_allocWithZone(v161);
  *&v162[OBJC_IVAR___PGMusicCuration_curatorVersion] = v181;
  *&v162[OBJC_IVAR___PGMusicCuration_bestMusicSuggestions] = v187;
  *&v162[OBJC_IVAR___PGMusicCuration_musicForYou] = v183;
  *&v162[OBJC_IVAR___PGMusicCuration_musicForLocation] = v131;
  *&v162[OBJC_IVAR___PGMusicCuration_musicForTime] = v140;
  *&v162[OBJC_IVAR___PGMusicCuration_musicForPerformer] = v152;
  v163 = &v162[OBJC_IVAR___PGMusicCuration_musicCurationInfo];
  *v163 = v158;
  *(v163 + 1) = v159;
  *(v163 + 2) = v160;
  *&v162[OBJC_IVAR___PGMusicCuration_musicCurationDebugInfo] = MEMORY[0x277D84F90];
  v190.receiver = v162;
  v190.super_class = v161;

  v164 = objc_msgSendSuper2(&v190, sel_init);
  v165 = v167[0];
  sub_22F7416A0();
  if (v165)
  {
  }

  sub_22F1B2BBC(0);
  v166 = v164;
  v168(v164, 0);
}

uint64_t block_copy_helper_49(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

char *sub_22F3A72B8(uint64_t a1)
{
  v3 = sub_22F740E80();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_22F73EFB0();
  v8 = *(v7 + 48);
  v9 = *(v7 + 52);
  swift_allocObject();
  sub_22F73EFA0();
  v17[1] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB33C8, &qword_22F783278);
  sub_22F3AC0AC();
  v10 = sub_22F73EF90();
  v12 = v11;

  if (!v1)
  {
    sub_22F740E70();
    v13 = sub_22F740E40();
    if (v14)
    {
      v6 = v13;
    }

    else
    {
      sub_22F3A7F30();
      swift_allocError();
      *v16 = a1;
      swift_willThrow();
    }

    sub_22F133BF0(v10, v12);
  }

  return v6;
}

void sub_22F3A742C(char *a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void (*a9)(char *, uint64_t, char *), uint64_t a10, uint64_t a11)
{
  v64 = a7;
  v65 = a8;
  v62 = a4;
  v63 = a6;
  v66 = a10;
  v67 = a9;
  v15 = sub_22F73F690();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v19 = (&v58 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v20 = type metadata accessor for Song();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v20 - 8);
  v24 = &v58 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v70[0] = a1;
    v25 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB1518, &qword_22F77A7E0);
    swift_willThrowTypedImpl();
LABEL_12:
    if (qword_2810A9460 != -1)
    {
      swift_once();
    }

    v36 = sub_22F740B90();
    __swift_project_value_buffer(v36, qword_2810B4D90);

    v37 = a1;
    v38 = sub_22F740B70();
    v39 = sub_22F7415E0();

    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      v70[0] = v41;
      *v40 = 136315394;
      v42 = MEMORY[0x231900D40](a11, MEMORY[0x277D837D0]);
      v44 = sub_22F145F20(v42, v43, v70);

      *(v40 + 4) = v44;
      *(v40 + 12) = 2080;
      swift_getErrorValue();
      v45 = sub_22F7420F0();
      v47 = sub_22F145F20(v45, v46, v70);

      *(v40 + 14) = v47;
      _os_log_impl(&dword_22F0FC000, v38, v39, "[MemoriesMusic] fetchSongDisplayMetadataJSONForAdamIDs processing fetchSongs failed for adamIds %s with error: %s.", v40, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x2319033A0](v41, -1, -1);
      MEMORY[0x2319033A0](v40, -1, -1);
    }

    sub_22F7416A0();
    sub_22F1B2BBC(1);
    sub_22F1B2BBC(1);
    v48 = a1;
    v67(0, 0, a1);

    return;
  }

  v61 = a3;
  v26 = *(a1 + 2);
  v27 = MEMORY[0x277D84F90];
  if (v26)
  {
    v59 = v16;
    v60 = a5;
    v71 = MEMORY[0x277D84F90];
    sub_22F146514(0, v26, 0);
    v27 = v71;
    v28 = a1 + 32;
    do
    {
      memcpy(v70, v28, sizeof(v70));
      memcpy(v69, v28, sizeof(v69));
      sub_22F18C4EC(v70, &v68);
      Song.init(_:)(v69);
      v71 = v27;
      v30 = *(v27 + 16);
      v29 = *(v27 + 24);
      if (v30 >= v29 >> 1)
      {
        sub_22F146514(v29 > 1, v30 + 1, 1);
        v27 = v71;
      }

      *(v27 + 16) = v30 + 1;
      sub_22F15CB04(v24, v27 + ((*(v21 + 80) + 32) & ~*(v21 + 80)) + *(v21 + 72) * v30);
      v28 += 296;
      --v26;
    }

    while (v26);
    v16 = v59;
    a5 = v60;
  }

  v31 = sub_22F151734(v27);

  if (!*(v31 + 16))
  {

    sub_22F3A7F30();
    a1 = swift_allocError();
    *v33 = 1;
    swift_willThrow();
    goto LABEL_12;
  }

  v32 = sub_22F3A0200(v31);

  sub_22F73F680();
  MusicCache.writeMemoryDisplay(songs:date:progressReporter:)(v32, v19);
  (*(v16 + 8))(v19, v15);
  v70[0] = a5;

  sub_22F14585C(v34);
  v35 = sub_22F3A72B8(v70[0]);
  v50 = v49;
  v51 = a5;
  v52 = v35;

  if (qword_2810A9460 != -1)
  {
    swift_once();
  }

  v53 = sub_22F740B90();
  __swift_project_value_buffer(v53, qword_2810B4D90);

  v54 = sub_22F740B70();
  v55 = sub_22F7415C0();
  if (os_log_type_enabled(v54, v55))
  {
    v56 = swift_slowAlloc();
    *v56 = 134218240;
    v57 = v32[2];

    *(v56 + 4) = v57;

    *(v56 + 12) = 2048;
    *(v56 + 14) = *(v51 + 16);

    _os_log_impl(&dword_22F0FC000, v54, v55, "[MemoriesMusic] fetchSongDisplayMetadataJSONForAdamIDs succeeded fetching %ld songs, %ld songs already in cache.", v56, 0x16u);
    MEMORY[0x2319033A0](v56, -1, -1);
  }

  else
  {

    swift_bridgeObjectRelease_n();
  }

  sub_22F7416A0();
  sub_22F1B2BBC(0);
  sub_22F1B2BBC(0);
  v67(v52, v50, 0);
}

void sub_22F3A7B14(char *a1, char a2, uint64_t a3, void (*a4)(uint64_t, void), uint64_t a5)
{
  v10 = type metadata accessor for Song();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v14 = &v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v40[0] = a1;
    v15 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB1518, &qword_22F77A7E0);
    swift_willThrowTypedImpl();
  }

  else
  {
    v16 = *(a1 + 2);
    v17 = MEMORY[0x277D84F90];
    if (v16)
    {
      v37 = a3;
      v41 = MEMORY[0x277D84F90];
      sub_22F146514(0, v16, 0);
      v17 = v41;
      v18 = a1 + 32;
      do
      {
        memcpy(v40, v18, sizeof(v40));
        memcpy(v39, v18, sizeof(v39));
        sub_22F18C4EC(v40, &v38);
        Song.init(_:)(v39);
        v41 = v17;
        v20 = *(v17 + 16);
        v19 = *(v17 + 24);
        if (v20 >= v19 >> 1)
        {
          sub_22F146514(v19 > 1, v20 + 1, 1);
          v17 = v41;
        }

        *(v17 + 16) = v20 + 1;
        sub_22F15CB04(v14, v17 + ((*(v11 + 80) + 32) & ~*(v11 + 80)) + *(v11 + 72) * v20);
        v18 += 296;
        --v16;
      }

      while (v16);
    }

    v21 = sub_22F151734(v17);

    if (*(v21 + 16))
    {
      v22 = sub_22F3A0200(v21);

      sub_22F7416A0();
      a4(v22, 0);

      return;
    }

    sub_22F3A7F30();
    a1 = swift_allocError();
    *v23 = 1;
    swift_willThrow();
  }

  if (qword_2810A9460 != -1)
  {
    swift_once();
  }

  v24 = sub_22F740B90();
  __swift_project_value_buffer(v24, qword_2810B4D90);
  v25 = a1;
  v26 = sub_22F740B70();
  v27 = sub_22F7415E0();

  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    v36 = a4;
    v37 = a5;
    v29 = v28;
    v30 = swift_slowAlloc();
    v40[0] = v30;
    *v29 = 136315138;
    swift_getErrorValue();
    v31 = sub_22F7420F0();
    v33 = sub_22F145F20(v31, v32, v40);

    *(v29 + 4) = v33;
    _os_log_impl(&dword_22F0FC000, v26, v27, "[MemoriesMusic] fetchDisplayMetadata processing fetchSongs failed: %s.", v29, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v30);
    MEMORY[0x2319033A0](v30, -1, -1);
    v34 = v29;
    a4 = v36;
    MEMORY[0x2319033A0](v34, -1, -1);
  }

  sub_22F7416A0();
  v35 = a1;
  a4(a1, 1);
}

unint64_t sub_22F3A7F30()
{
  result = qword_27DAB3EB8;
  if (!qword_27DAB3EB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB3EB8);
  }

  return result;
}

void sub_22F3A7F84(void *a1, void *a2, void *a3, void (**a4)(void, void, void))
{
  v148 = a2;
  v149 = a3;
  v150 = a1;
  v144 = sub_22F740AD0();
  v5 = *(v144 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v144);
  v143 = &v117 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v152 = sub_22F73EEC0();
  v145 = *(v152 - 1);
  v8 = *(v145 + 8);
  MEMORY[0x28223BE20](v152);
  v142 = &v117 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v117 - v10;
  v12 = sub_22F73EEE0();
  v147 = *(v12 - 8);
  isa = v147[8].isa;
  MEMORY[0x28223BE20](v12);
  v146 = (&v117 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = sub_22F740C00();
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v18 = &v117 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  _Block_copy(a4);
  if (qword_2810A9BD0 != -1)
  {
LABEL_42:
    swift_once();
  }

  v19 = qword_2810B4E90;
  *&v20 = CACurrentMediaTime();
  sub_22F1B560C("Music Curation - inflateDisplayMetadataForMusicCuration", 55, 2u, v20, 0, v19, v166);
  v21 = sub_22F2E3C74();
  if (v21[2])
  {
    v131 = v8;
    v141 = v11;
    if (qword_2810A9460 != -1)
    {
      swift_once();
    }

    v138 = sub_22F740B90();
    __swift_project_value_buffer(v138, qword_2810B4D90);

    v22 = sub_22F740B70();
    v23 = sub_22F7415C0();
    v24 = os_log_type_enabled(v22, v23);
    v133 = v12;
    if (v24)
    {
      v25 = a4;
      v26 = swift_slowAlloc();
      *v26 = 134217984;
      *(v26 + 4) = v21[2];

      _os_log_impl(&dword_22F0FC000, v22, v23, "[MemoriesMusic] Inflating curation for %ld adamIDs", v26, 0xCu);
      v27 = v26;
      a4 = v25;
      MEMORY[0x2319033A0](v27, -1, -1);
    }

    else
    {
    }

    sub_22F740BF0();
    v28 = sub_22F22FB24(v18, 0);
    v135 = 0;
    v132 = v5;
    v29 = *(v28 + 4);
    v137 = *(v28 + 3);
    v151 = v28;
    v127 = v29;
    v30 = v148;
    static MusicKitClient.FetchOptions.memoriesDisplay(musicKitSource:)(*(v148 + OBJC_IVAR___PGMusicCurationInflationContext_actionSource), *(v148 + OBJC_IVAR___PGMusicCurationInflationContext_actionSource + 8), &v172);
    v31 = *(&v167 + 1);
    v32 = v168;
    v33 = swift_allocObject();
    *(v33 + 16) = a4;
    v34 = swift_allocObject();
    v35 = v166[1];
    *(v34 + 40) = v166[0];
    v36 = v149;
    v37 = v150;
    *(v34 + 16) = v30;
    *(v34 + 24) = v37;
    *(v34 + 32) = v36;
    *(v34 + 56) = v35;
    *(v34 + 72) = v167;
    *(v34 + 88) = v168;
    *(v34 + 96) = sub_22F3AC130;
    v124 = v33;
    *(v34 + 104) = v33;
    v38 = v21[2];

    _Block_copy(a4);
    v125 = v31;

    v126 = v32;

    v39 = v30;
    v40 = a4;
    v41 = v39;
    v42 = v37;
    v43 = v36;
    _Block_copy(v40);
    v149 = v38;
    if (!v38)
    {

      v152 = v41;
      v63 = v42;
      v64 = v43;

      sub_22F3A51D0(MEMORY[0x277D84F90], 0, v63, v64, v166, v40);

      _Block_release(v40);

LABEL_41:

      sub_22F1D210C(&v172);
      _Block_release(v40);
      return;
    }

    v123 = v34;
    v120 = v40;
    v44 = qword_2810A9B98;

    v119 = v41;
    v118 = v42;
    v45 = v43;
    a4 = v127;

    if (v44 != -1)
    {
      swift_once();
    }

    v46 = qword_2810B4E70;
    *&v47 = CACurrentMediaTime();
    sub_22F1B560C("MusicKitClient Fetch Songs By Ids", 33, 2u, v47, 0, v46, v169);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB2938, &qword_22F77BEE0);
    v48 = swift_allocObject();
    v49 = &selRef_floatVector;
    v50 = [objc_allocWithZone(MEMORY[0x277CCAAF8]) init];
    *(v48 + 16) = MEMORY[0x277D84F90];
    *(v48 + 24) = v50;
    v139 = v48;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB2940, &qword_22F77BEE8);
    v51 = swift_allocObject();
    *(v51 + 24) = [objc_allocWithZone(MEMORY[0x277CCAAF8]) init];
    v140 = v51;
    *(v51 + 16) = 0;
    v52 = (v51 + 16);
    v8 = v151;
    if (*(v151 + 3) == v137 && *(v151 + 4) == a4 || (sub_22F742040() & 1) != 0)
    {
      v53 = *(v8 + 2);
      Batch = MusicBag.songQueryBatchSize()();
      LODWORD(v137) = 0;
      if (Batch)
      {
LABEL_18:
        v117 = v52;

        v55 = v135;
        v56 = sub_22F233C24(0, v149, Batch, v21, Batch);
        v150 = v55;

        if (qword_2810A9440 != -1)
        {
          swift_once();
        }

        __swift_project_value_buffer(v138, qword_2810B4D48);

        v57 = sub_22F740B70();
        v58 = sub_22F7415C0();
        v59 = os_log_type_enabled(v57, v58);
        v60 = v123;
        v61 = v45;
        if (v59)
        {
          v62 = swift_slowAlloc();
          *v62 = 134218240;
          *(v62 + 4) = v149;

          *(v62 + 12) = 2048;
          *(v62 + 14) = v56[2];

          _os_log_impl(&dword_22F0FC000, v57, v58, "[MemoriesMusic] fetching metadata for %ld songs in %ld batches", v62, 0x16u);
          MEMORY[0x2319033A0](v62, -1, -1);
        }

        else
        {
        }

        v11 = v141;
        v65 = v56[2];
        v121 = v171;
        v122 = *(&v170 + 1);
        v66 = swift_allocObject();
        v67 = v169[1];
        *(v66 + 16) = v169[0];
        *(v66 + 32) = v67;
        *(v66 + 48) = v170;
        *(v66 + 64) = v171;
        *(v66 + 72) = v61;
        v149 = v56;
        v68 = v61;
        *(v66 + 80) = sub_22F3AC38C;
        *(v66 + 88) = v60;
        v69 = v139;
        *(v66 + 96) = v140;
        *(v66 + 104) = v69;
        type metadata accessor for CompletionCounter();
        v70 = swift_allocObject();
        *(v70 + 2) = sub_22F3AC370;
        *(v70 + 3) = v66;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB2290, &qword_22F779380);
        v71 = swift_allocObject();
        *(v71 + 32) = 0;
        *(v71 + 16) = 0;
        v148 = v65;
        *(v71 + 24) = v65;
        v138 = v70;
        *(v70 + 4) = v71;
        v72 = sub_22F73EF30();
        v73 = *(v72 + 48);
        v74 = *(v72 + 52);
        swift_allocObject();
        v75 = v68;

        v12 = sub_22F73EF20();
        if (qword_2810A9168 != -1)
        {
          swift_once();
        }

        v76 = qword_2810A9170;
        v78 = v146;
        v77 = v147;
        *v146 = qword_2810A9170;
        (v77[13].isa)(v78, *MEMORY[0x277CC86D8], v133);
        v79 = v76;
        sub_22F73EF00();
        v80 = [v75 progressReportersForParallelOperationsWithCount_];
        sub_22F120634(0, &qword_2810A90B0, 0x277D22C80);
        v81 = sub_22F741180();

        v82 = (v132 + 8);
        v132 = (v145 + 16);
        v133 = v82;
        v130 = v145 + 32;
        v131 = (v131 + 7);
        v161 = v81;
        v162 = 0;
        v128 = v145 + 8;
        v129 = &v157;
        v163 = v149;
        v164 = 0;
        v165 = 0;
        a4 = v75;
        v135 = v75;
        v136 = v21;
        v134 = v12;
        while (1)
        {
          v83 = sub_22F226D78();
          if (!v83)
          {

            goto LABEL_40;
          }

          v85 = v84;
          v149 = v83;
          v86 = *(v8 + 4);
          v87 = *(v8 + 5);
          v88 = *(v8 + 6);
          v89 = *(v8 + 7);
          v90 = *(v8 + 8);
          v155 = *(v8 + 3);
          v156 = v86;
          v157 = v87;
          v158 = v88;
          v159 = v89;
          v160 = v90;
          v153[0] = v172;
          v153[1] = v173;
          v153[2] = v174;
          v154 = v175;

          v52 = v150;
          MusicKitRequestFactory.requestForSongs(adamIDs:options:isCrossStorefrontRequest:)(v85, v153, v137, v11);
          if (v52)
          {
            break;
          }

          v150 = 0;

          v91 = swift_allocObject();
          v93 = v138;
          v92 = v139;
          v91[2] = v12;
          v91[3] = v92;
          v91[4] = v93;
          v148 = v91;
          v91[5] = v140;

          sub_22F741740();
          if (qword_2810A8E30 != -1)
          {
            swift_once();
          }

          v94 = v143;
          sub_22F740AC0();
          sub_22F740A90();
          (*v133)(v94, v144);
          v147 = *(v8 + 9);
          v18 = v145;
          v95 = v142;
          v96 = v152;
          (*(v145 + 2))(v142, v11, v152);
          v97 = (v18[80] + 16) & ~v18[80];
          v98 = (v131 + v97) & 0xFFFFFFFFFFFFFFF8;
          v99 = (v98 + 63) & 0xFFFFFFFFFFFFFFF8;
          v146 = ((v99 + 15) & 0xFFFFFFFFFFFFFFF8);
          v100 = (v99 + 39) & 0xFFFFFFFFFFFFFFF8;
          v5 = swift_allocObject();
          (*(v18 + 4))(v5 + v97, v95, v96);
          v101 = v5 + v98;
          v102 = v173;
          *v101 = v172;
          *(v101 + 16) = v102;
          *(v101 + 32) = v174;
          *(v101 + 48) = v175;
          *(v5 + v99) = v151;
          v103 = v146 + v5;
          v8 = v151;
          *v103 = "MusicKitClient HTTP Request";
          *(v103 + 1) = 27;
          v103[16] = 2;
          v104 = v149;
          *(v5 + v100) = v149;
          v105 = (v5 + ((v100 + 15) & 0xFFFFFFFFFFFFFFF8));
          v106 = v148;
          *v105 = sub_22F3AC36C;
          v105[1] = v106;
          v107 = swift_allocObject();
          *(v107 + 16) = sub_22F294B80;
          *(v107 + 24) = v5;
          v159 = sub_22F294B84;
          v160 = v107;
          v155 = MEMORY[0x277D85DD0];
          v156 = 1107296256;
          v157 = sub_22F2280B0;
          v158 = &block_descriptor_102;
          v108 = _Block_copy(&v155);
          sub_22F1D20B0(&v172, v153);

          v109 = v104;

          v11 = v141;

          dispatch_sync(v147, v108);
          _Block_release(v108);

          (*(v18 + 1))(v11, v152);
          LOBYTE(v106) = swift_isEscapingClosureAtFileLocation();

          a4 = v135;
          v12 = v134;
          if (v106)
          {
            __break(1u);
            goto LABEL_42;
          }
        }

        v110 = v140;
        [*(v140 + 24) lock];
        LOBYTE(v49) = 1;
        swift_beginAccess();
        v111 = *(v110 + 16);
        *(v110 + 16) = v52;

        v112 = *(v110 + 24);
        v113 = v52;
        [v112 unlock];
        v8 = v138;
        Batch = *(v138 + 4);

        os_unfair_lock_lock((Batch + 32));
        if (*(Batch + 16))
        {
          os_unfair_lock_unlock((Batch + 32));

          goto LABEL_39;
        }

LABEL_38:
        *(Batch + 16) = v49;
        os_unfair_lock_unlock((Batch + 32));

        v116 = *(v8 + 3);
        (*(v8 + 2))(v115);

LABEL_39:

LABEL_40:
        v40 = v120;
        _Block_release(v120);

        goto LABEL_41;
      }
    }

    else
    {
      v114 = *(v8 + 2);
      Batch = MusicBag.songEquivalentQueryBatchSize()();
      LODWORD(v137) = 1;
      if (Batch)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
    goto LABEL_38;
  }

  sub_22F7416A0();
  sub_22F1B2BBC(0);
  (a4)[2](a4, v150, 0);

  _Block_release(a4);
}

void sub_22F3A9288(void *a1, char *a2, _BYTE *a3, NSObject *a4, Swift::Int *a5, unint64_t a6)
{
  v270 = a5;
  v281 = a3;
  v10 = type metadata accessor for Song();
  v285 = *(v10 - 8);
  v11 = *(v285 + 8);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = (v245 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v268 = sub_22F73F690();
  v262 = *(v268 - 8);
  v14 = v262[8];
  MEMORY[0x28223BE20](v268);
  v16 = v245 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v278 = sub_22F740AD0();
  v266 = *(v278 - 8);
  v17 = *(v266 + 64);
  MEMORY[0x28223BE20](v278);
  v277 = v245 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v286 = sub_22F73EEC0();
  v279 = *(v286 - 8);
  v19 = *(v279 + 64);
  MEMORY[0x28223BE20](v286);
  v276 = v245 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v264 = v20;
  MEMORY[0x28223BE20](v21);
  v287 = (v245 - v22);
  v269 = sub_22F73EEE0();
  v265 = *(v269 - 8);
  v23 = *(v265 + 64);
  MEMORY[0x28223BE20](v269);
  v263 = (v245 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  v25 = sub_22F740C00();
  v26 = *(*(v25 - 8) + 64);
  MEMORY[0x28223BE20](v25 - 8);
  v274 = v245 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  _Block_copy(a6);
  if (qword_2810A9460 != -1)
  {
    goto LABEL_121;
  }

  while (1)
  {
    v267 = sub_22F740B90();
    v28 = __swift_project_value_buffer(v267, qword_2810B4D90);

    v280 = v28;
    v29 = sub_22F740B70();
    v30 = sub_22F7415C0();

    v31 = os_log_type_enabled(v29, v30);
    v282 = a4;
    v261 = v16;
    v271 = a2;
    if (v31)
    {
      v32 = a1;
      v33 = a6;
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      *&v303 = v35;
      *v34 = 134218242;
      *(v34 + 4) = v32[2];

      *(v34 + 12) = 2080;
      v36 = sub_22F740CB0();
      v38 = sub_22F145F20(v36, v37, &v303);

      *(v34 + 14) = v38;
      _os_log_impl(&dword_22F0FC000, v29, v30, "[MemoriesMusic] fetchSongDisplayMetadataJSONForAdamIDs called for %ld adamIDs with  options: %s", v34, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v35);
      MEMORY[0x2319033A0](v35, -1, -1);
      v39 = v34;
      a6 = v33;
      a1 = v32;
      MEMORY[0x2319033A0](v39, -1, -1);
    }

    else
    {
    }

    if (qword_2810A9BD0 != -1)
    {
      swift_once();
    }

    v40 = qword_2810B4E90;
    *&v41 = CACurrentMediaTime();
    sub_22F1B560C("fetchSongDisplayMetadataJSONForAdamIDs", 38, 2u, v41, 0, v40, v307);
    v42 = sub_22F7416B0();
    v16 = v42;
    v275 = v43;
    a2 = *&v281[OBJC_IVAR___PGMusicCurationInflationContext_cache];
    if (v281[OBJC_IVAR___PGMusicCurationInflationContext_shouldForceMetadataRefetch] == 1)
    {
      v260 = v42;
      if (a1[2])
      {
        v272 = v40;
        v257 = a2;

        v44 = 0;
        v259 = MEMORY[0x277D84F90];
        goto LABEL_42;
      }

      v48 = 0;
      v49 = MEMORY[0x277D84F90];
LABEL_54:
      sub_22F3A72B8(v49);
      v283 = v48;
      if (v48)
      {

LABEL_56:
        v102 = v283;
        v103 = v283;
        v104 = sub_22F740B70();
        v105 = sub_22F7415E0();

        if (os_log_type_enabled(v104, v105))
        {
          v106 = swift_slowAlloc();
          v107 = swift_slowAlloc();
          *&v303 = v107;
          *v106 = 136315138;
          swift_getErrorValue();
          v108 = sub_22F7420F0();
          v110 = sub_22F145F20(v108, v109, &v303);

          *(v106 + 4) = v110;
          _os_log_impl(&dword_22F0FC000, v104, v105, "[MemoriesMusic] fetchSongDisplayMetadataJSONForAdamIDs request setup failed: %s.", v106, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v107);
          MEMORY[0x2319033A0](v107, -1, -1);
          MEMORY[0x2319033A0](v106, -1, -1);
        }

        sub_22F7416A0();
        sub_22F1B2BBC(1);
        v111 = v283;
        v112 = v283;
        v113 = sub_22F73F360();
        (*(a6 + 16))(a6, 0, v113);
      }

      else
      {

        v115 = sub_22F740B70();
        v116 = sub_22F7415C0();
        if (os_log_type_enabled(v115, v116))
        {
          v117 = swift_slowAlloc();
          *v117 = 134217984;
          v118 = a6;
          v119 = *(v49 + 16);

          *(v117 + 4) = v119;
          a6 = v118;

          _os_log_impl(&dword_22F0FC000, v115, v116, "[MemoriesMusic] fetchSongDisplayMetadataJSONForAdamIDs succeeded, all %ld songs already in cache.", v117, 0xCu);
          MEMORY[0x2319033A0](v117, -1, -1);
        }

        else
        {

          swift_bridgeObjectRelease_n();
        }

        v208 = v283;
        sub_22F7416A0();
        if (v208)
        {
        }

        sub_22F1B2BBC(0);
        v209 = sub_22F740DF0();
        (*(a6 + 16))(a6, v209, 0);
      }

      v114 = a6;
      goto LABEL_60;
    }

    v272 = v40;
    sub_22F120634(0, &qword_2810A91E0, 0x277CCAC30);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB11A0, &qword_22F772940);
    v45 = swift_allocObject();
    *(v45 + 16) = xmmword_22F770DF0;
    *(v45 + 56) = MEMORY[0x277D837D0];
    *(v45 + 64) = sub_22F153470();
    *(v45 + 32) = 0x44496D616461;
    *(v45 + 40) = 0xE600000000000000;
    *(v45 + 96) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0E90, &qword_22F7714A0);
    *(v45 + 104) = sub_22F25F050();
    *(v45 + 72) = a1;

    v46 = sub_22F741560();
    v47 = sub_22F2DA3D8(v46);
    v283 = 0;
    v257 = a2;
    v258 = a6;
    v260 = v16;
    v50 = v47;

    v51 = *(v50 + 16);
    v52 = MEMORY[0x277D84F90];
    v259 = v50;
    if (v51)
    {
      v273 = a1;
      *&v303 = MEMORY[0x277D84F90];
      sub_22F146454(0, v51, 0);
      v52 = v303;
      v53 = v50 + ((v285[80] + 32) & ~v285[80]);
      v54 = *(v285 + 9);
      do
      {
        sub_22F15CAA0(v53, v13);
        v55 = *v13;
        a2 = v13[1];

        sub_22F15CBD8(v13);
        *&v303 = v52;
        v57 = *(v52 + 16);
        v56 = *(v52 + 24);
        v16 = v57 + 1;
        if (v57 >= v56 >> 1)
        {
          sub_22F146454((v56 > 1), v57 + 1, 1);
          v52 = v303;
        }

        *(v52 + 16) = v16;
        v58 = v52 + 16 * v57;
        *(v58 + 32) = v55;
        *(v58 + 40) = a2;
        v53 += v54;
        --v51;
      }

      while (v51);
      a1 = v273;
    }

    v59 = sub_22F1515F8(v52);

    v60 = a1[2];
    if (!v60)
    {
      break;
    }

    a6 = 0;
    v284 = (a1 + 4);
    a4 = (v59 + 56);
    a1 = MEMORY[0x277D84F90];
    v285 = v60;
    while (a6 < v60)
    {
      a2 = (a6 + 1);
      if (__OFADD__(a6, 1))
      {
        goto LABEL_119;
      }

      v61 = &v284[16 * a6];
      v13 = *v61;
      v62 = *(v61 + 1);
      ++a6;
      if (!*(v59 + 16))
      {

        goto LABEL_32;
      }

      v63 = *(v59 + 40);
      sub_22F742170();

      sub_22F740D60();
      v64 = sub_22F7421D0();
      v65 = -1 << *(v59 + 32);
      v66 = v64 & ~v65;
      if ((*(&a4->isa + ((v66 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v66))
      {
        v16 = ~v65;
        while (1)
        {
          v67 = (*(v59 + 48) + 16 * v66);
          v68 = *v67 == v13 && v67[1] == v62;
          if (v68 || (sub_22F742040() & 1) != 0)
          {
            break;
          }

          v66 = (v66 + 1) & v16;
          if (((*(&a4->isa + ((v66 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v66) & 1) == 0)
          {
            goto LABEL_32;
          }
        }

        v60 = v285;
        if (a2 == v285)
        {
          goto LABEL_40;
        }
      }

      else
      {
LABEL_32:
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *&v313[0] = a1;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_22F146454(0, a1[2] + 1, 1);
          a1 = *&v313[0];
        }

        v70 = a1;
        v71 = a1[2];
        v72 = v70[3];
        v16 = v71 + 1;
        if (v71 >= v72 >> 1)
        {
          sub_22F146454((v72 > 1), v71 + 1, 1);
          v70 = *&v313[0];
        }

        v70[2] = v16;
        v73 = &v70[2 * v71];
        v73[4] = v13;
        v73[5] = v62;
        v60 = v285;
        a1 = v70;
        if (a2 == v285)
        {
          goto LABEL_40;
        }
      }
    }

    __break(1u);
LABEL_119:
    __break(1u);
LABEL_120:
    __break(1u);
LABEL_121:
    swift_once();
  }

  a1 = MEMORY[0x277D84F90];
LABEL_40:

  if (!a1[2])
  {

    a6 = v258;
    v49 = v259;
    v48 = v283;
    goto LABEL_54;
  }

  a6 = v258;
  v44 = v283;
LABEL_42:

  v74 = sub_22F740B70();
  v75 = sub_22F7415C0();
  if (os_log_type_enabled(v74, v75))
  {
    v76 = swift_slowAlloc();
    v283 = v44;
    v77 = v76;
    v78 = swift_slowAlloc();
    *&v303 = v78;
    *v77 = 134218242;
    *(v77 + 4) = a1[2];

    *(v77 + 12) = 2080;
    v79 = MEMORY[0x231900D40](a1, MEMORY[0x277D837D0]);
    v81 = sub_22F145F20(v79, v80, &v303);

    *(v77 + 14) = v81;
    _os_log_impl(&dword_22F0FC000, v74, v75, "[MemoriesMusic] fetchSongDisplayMetadataJSONForAdamIDs will fetch metadata for %ld songs from server. adamIDsToFetch = %s", v77, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v78);
    MEMORY[0x2319033A0](v78, -1, -1);
    v82 = v77;
    v44 = v283;
    MEMORY[0x2319033A0](v82, -1, -1);
  }

  else
  {
  }

  *&v83 = CACurrentMediaTime();
  sub_22F1B560C("fetchSongDisplayMetadataJSONForAdamIDs Uncached", 47, 2u, v83, 0, v272, v310);
  v84 = v274;
  sub_22F740BF0();
  v85 = sub_22F22FB24(v84, 0);
  v283 = v44;
  if (v44)
  {

    goto LABEL_56;
  }

  a2 = v85;
  v86 = *(v85 + 4);
  v250 = *(v85 + 3);
  v87 = *&v281[OBJC_IVAR___PGMusicCurationInflationContext_actionSource + 8];
  v285 = *&v281[OBJC_IVAR___PGMusicCurationInflationContext_actionSource];
  v88 = *MEMORY[0x277D3B000];
  v89 = sub_22F740E20();
  v91 = v90;
  v92 = v271;
  isa = v271[2].isa;
  v273 = a1;
  v254 = v86;
  if (!isa)
  {

LABEL_64:
    v120 = v285;
LABEL_65:
    static MusicKitClient.FetchOptions.memoriesDisplay(musicKitSource:)(v120, v87, v301);
    goto LABEL_66;
  }

  v94 = v89;

  v95 = sub_22F1229E8(v94, v91);
  v97 = v96;

  if ((v97 & 1) == 0)
  {
    goto LABEL_64;
  }

  sub_22F13A100(v92[7].isa + 32 * v95, &v303);
  if (!swift_dynamicCast())
  {
    goto LABEL_64;
  }

  v98 = v313[0];
  v99 = *MEMORY[0x277D3B008];
  if (sub_22F740E20() == v98 && v100 == *(&v98 + 1))
  {

    v101 = v285;
    goto LABEL_110;
  }

  v233 = sub_22F742040();
  a1 = v273;

  v101 = v285;
  if ((v233 & 1) == 0)
  {
    v120 = v285;
    goto LABEL_65;
  }

LABEL_110:
  v234 = sub_22F740B70();
  v235 = sub_22F7415C0();
  if (os_log_type_enabled(v234, v235))
  {
    v236 = swift_slowAlloc();
    *v236 = 0;
    _os_log_impl(&dword_22F0FC000, v234, v235, "[MemoriesMusic] fetchSongDisplayMetadataJSONForAdamIDs Requesting the augmented curation and display fetch option", v236, 2u);
    v237 = v236;
    a1 = v273;
    MEMORY[0x2319033A0](v237, -1, -1);
  }

  static MusicKitClient.FetchOptions.augmentedCurationAndDisplay(musicKitSource:)(v101, v87, v301);
LABEL_66:
  v303 = v301[0];
  v304 = v301[1];
  v305 = v301[2];
  v306 = v302;
  v121 = *(&v311 + 1);
  v274 = v312;
  v122 = *(&v308 + 1);
  v123 = v309;
  v124 = swift_allocObject();
  *(v124 + 16) = a6;
  v125 = swift_allocObject();
  v126 = v257;
  *(v125 + 16) = v281;
  *(v125 + 24) = v126;
  v127 = v259;
  *(v125 + 32) = v275;
  *(v125 + 40) = v127;
  v128 = v282;
  *(v125 + 48) = v270;
  *(v125 + 56) = v128;
  v129 = v310[1];
  *(v125 + 64) = v310[0];
  *(v125 + 80) = v129;
  *(v125 + 96) = v311;
  *(v125 + 112) = v312;
  v130 = v307[0];
  v131 = v307[1];
  v132 = v309;
  *(v125 + 152) = v308;
  *(v125 + 136) = v131;
  *(v125 + 120) = v130;
  *(v125 + 168) = v132;
  *(v125 + 176) = sub_22F3AC0A0;
  v255 = v124;
  *(v125 + 184) = v124;
  *(v125 + 192) = a1;
  v253 = v125;
  v284 = a1[2];
  v133 = v126;

  _Block_copy(a6);

  v134 = v133;

  v256 = v122;

  v257 = v123;

  v285 = v281;
  v135 = v275;

  v136 = v282;
  _Block_copy(a6);
  v271 = v121;
  v258 = a6;
  v251 = v135;
  v252 = v134;
  if (!v284)
  {
    v286 = a2;

    v151 = v134;

    v285 = v285;
    v152 = v135;

    v287 = v136;

    v153 = sub_22F151734(MEMORY[0x277D84F90]);
    v154 = *(v153 + 16);
    v284 = v151;
    v282 = v152;
    if (v154)
    {
      v155 = v283;
      v156 = sub_22F3A0200(v153);

      v157 = v261;
      sub_22F73F680();
      MusicCache.writeMemoryDisplay(songs:date:progressReporter:)(v156, v157);
      v158 = v155;
      if (!v155)
      {
        (v262[1])(v157, v268);
        v216 = v259;
        *&v313[0] = v259;

        sub_22F14585C(v217);
        v218 = sub_22F3A72B8(*&v313[0]);
        v281 = v238;
        v283 = v218;

        v239 = sub_22F740B70();
        v240 = sub_22F7415C0();
        if (os_log_type_enabled(v239, v240))
        {
          v241 = swift_slowAlloc();
          *v241 = 134218240;
          v242 = v156[2];

          *(v241 + 4) = v242;

          *(v241 + 12) = 2048;
          *(v241 + 14) = *(v216 + 16);

          _os_log_impl(&dword_22F0FC000, v239, v240, "[MemoriesMusic] fetchSongDisplayMetadataJSONForAdamIDs succeeded fetching %ld songs, %ld songs already in cache.", v241, 0x16u);
          MEMORY[0x2319033A0](v241, -1, -1);
        }

        else
        {

          swift_bridgeObjectRelease_n();
        }

        v243 = v282;
        sub_22F7416A0();
        sub_22F1B2BBC(0);
        sub_22F1B2BBC(0);
        v244 = sub_22F740DF0();
        v213 = v258;
        v258[2](v258, v244, 0);

LABEL_107:
        v214 = v260;
        goto LABEL_108;
      }

      (v262[1])(v157, v268);
    }

    else
    {

      sub_22F3A7F30();
      v158 = swift_allocError();
      *v215 = 1;
      swift_willThrow();
    }

    v219 = v158;
    v220 = sub_22F740B70();
    v221 = sub_22F7415E0();

    if (os_log_type_enabled(v220, v221))
    {
      v222 = swift_slowAlloc();
      v223 = swift_slowAlloc();
      *&v313[0] = v223;
      *v222 = 136315394;
      v224 = MEMORY[0x231900D40](a1, MEMORY[0x277D837D0]);
      v226 = sub_22F145F20(v224, v225, v313);

      *(v222 + 4) = v226;
      *(v222 + 12) = 2080;
      swift_getErrorValue();
      v227 = sub_22F7420F0();
      v229 = sub_22F145F20(v227, v228, v313);

      *(v222 + 14) = v229;
      _os_log_impl(&dword_22F0FC000, v220, v221, "[MemoriesMusic] fetchSongDisplayMetadataJSONForAdamIDs processing fetchSongs failed for adamIds %s with error: %s.", v222, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x2319033A0](v223, -1, -1);
      MEMORY[0x2319033A0](v222, -1, -1);
    }

    v230 = v282;
    sub_22F7416A0();
    sub_22F1B2BBC(1);
    sub_22F1B2BBC(1);
    v231 = v158;
    v232 = sub_22F73F360();
    v213 = v258;
    (v258)[2](v258, 0, v232);

    goto LABEL_107;
  }

  v137 = qword_2810A9B98;

  v248 = v134;

  v247 = v285;
  v282 = v135;

  v246 = v136;

  if (v137 != -1)
  {
    swift_once();
  }

  v138 = qword_2810B4E70;
  *&v139 = CACurrentMediaTime();
  sub_22F1B560C("MusicKitClient Fetch Songs By Ids", 33, 2u, v139, 0, v138, v313);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB2938, &qword_22F77BEE0);
  v140 = swift_allocObject();
  v141 = [objc_allocWithZone(MEMORY[0x277CCAAF8]) init];
  v140[2] = MEMORY[0x277D84F90];
  v140[3] = v141;
  v275 = v140;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB2940, &qword_22F77BEE8);
  v142 = swift_allocObject();
  *(v142 + 24) = [objc_allocWithZone(MEMORY[0x277CCAAF8]) init];
  v272 = v142;
  *(v142 + 16) = 0;
  v143 = v142 + 16;
  v144 = v283;
  if ((*(a2 + 3) != v250 || *(a2 + 4) != v254) && (sub_22F742040() & 1) == 0)
  {
    v210 = *(a2 + 2);
    Batch = MusicBag.songEquivalentQueryBatchSize()();
    LODWORD(v268) = 1;
    if (Batch)
    {
      goto LABEL_73;
    }

    goto LABEL_98;
  }

  v145 = *(a2 + 2);
  Batch = MusicBag.songQueryBatchSize()();
  LODWORD(v268) = 0;
  if (!Batch)
  {
LABEL_98:
    __break(1u);
LABEL_99:
    *(Batch + 16) = v143;
    os_unfair_lock_unlock((Batch + 32));

    v212 = v135[3];
    (v135[2])(v211);

    goto LABEL_100;
  }

LABEL_73:
  v245[1] = v143;

  v147 = sub_22F233C24(0, v284, Batch, a1, Batch);
  v285 = v144;

  if (qword_2810A9440 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v267, qword_2810B4D48);

  v148 = sub_22F740B70();
  v149 = sub_22F7415C0();
  if (os_log_type_enabled(v148, v149))
  {
    v150 = swift_slowAlloc();
    *v150 = 134218240;
    *(v150 + 4) = v284;

    *(v150 + 12) = 2048;
    *(v150 + 14) = *(v147 + 2);

    _os_log_impl(&dword_22F0FC000, v148, v149, "[MemoriesMusic] fetching metadata for %ld songs in %ld batches", v150, 0x16u);
    MEMORY[0x2319033A0](v150, -1, -1);
  }

  else
  {
  }

  v159 = *(v147 + 2);
  v249 = v315;
  v250 = *(&v314 + 1);
  v160 = swift_allocObject();
  v161 = v313[1];
  *(v160 + 16) = v313[0];
  *(v160 + 32) = v161;
  *(v160 + 48) = v314;
  v162 = v282;
  *(v160 + 64) = v315;
  *(v160 + 72) = v162;
  v284 = v147;
  v163 = v253;
  *(v160 + 80) = sub_22F3AC0A8;
  *(v160 + 88) = v163;
  v164 = v275;
  *(v160 + 96) = v272;
  *(v160 + 104) = v164;
  type metadata accessor for CompletionCounter();
  v165 = swift_allocObject();
  v165[2] = sub_22F3AC370;
  v165[3] = v160;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB2290, &qword_22F779380);
  v166 = swift_allocObject();
  *(v166 + 32) = 0;
  *(v166 + 16) = 0;
  v283 = v159;
  *(v166 + 24) = v159;
  v270 = v165;
  v165[4] = v166;
  v167 = sub_22F73EF30();
  v168 = *(v167 + 48);
  v169 = *(v167 + 52);
  swift_allocObject();
  v170 = v162;

  v171 = sub_22F73EF20();
  if (qword_2810A9168 != -1)
  {
    swift_once();
  }

  v172 = qword_2810A9170;
  v173 = v263;
  *v263 = qword_2810A9170;
  (*(v265 + 104))(v173, *MEMORY[0x277CC86D8], v269);
  v174 = v172;
  v269 = v171;
  sub_22F73EF00();
  v175 = [v170 progressReportersForParallelOperationsWithCount:v283];
  sub_22F120634(0, &qword_2810A90B0, 0x277D22C80);
  v176 = sub_22F741180();

  v265 = v279 + 16;
  v266 += 8;
  v263 = (v279 + 32);
  v264 += 7;
  v296 = v176;
  v297 = 0;
  v261 = (v279 + 8);
  v262 = &v292;
  v298 = v284;
  v299 = 0;
  v300 = 0;
  v267 = v170;
  while (1)
  {
    v177 = sub_22F226D78();
    if (!v177)
    {

      goto LABEL_101;
    }

    v179 = v178;
    v284 = v177;
    v180 = *(a2 + 4);
    v181 = *(a2 + 5);
    v182 = *(a2 + 6);
    v183 = *(a2 + 7);
    v184 = *(a2 + 8);
    v290 = *(a2 + 3);
    v291 = v180;
    v292 = v181;
    v293 = v182;
    v294 = v183;
    v295 = v184;
    v288[0] = v303;
    v288[1] = v304;
    v288[2] = v305;
    v289 = v306;

    v144 = v285;
    MusicKitRequestFactory.requestForSongs(adamIDs:options:isCrossStorefrontRequest:)(v179, v288, v268, v287);
    if (v144)
    {
      break;
    }

    v285 = 0;

    v185 = swift_allocObject();
    v186 = v270;
    v187 = v275;
    *(v185 + 2) = v269;
    *(v185 + 3) = v187;
    *(v185 + 4) = v186;
    v283 = v185;
    *(v185 + 5) = v272;

    sub_22F741740();
    if (qword_2810A8E30 != -1)
    {
      swift_once();
    }

    v188 = v277;
    sub_22F740AC0();
    sub_22F740A90();
    (*v266)(v188, v278);
    v282 = *(a2 + 9);
    v189 = v279;
    v190 = v276;
    v191 = v286;
    (*(v279 + 16))(v276, v287, v286);
    v192 = (*(v189 + 80) + 16) & ~*(v189 + 80);
    v193 = (v264 + v192) & 0xFFFFFFFFFFFFFFF8;
    v194 = (v193 + 63) & 0xFFFFFFFFFFFFFFF8;
    v280 = (v194 + 15) & 0xFFFFFFFFFFFFFFF8;
    v281 = ((v194 + 39) & 0xFFFFFFFFFFFFFFF8);
    v195 = (v281 + 15) & 0xFFFFFFFFFFFFFFF8;
    v16 = swift_allocObject();
    (*(v189 + 32))(v16 + v192, v190, v191);
    v196 = v16 + v193;
    v197 = v304;
    *v196 = v303;
    *(v196 + 16) = v197;
    *(v196 + 32) = v305;
    *(v196 + 48) = v306;
    *(v16 + v194) = a2;
    v198 = v16 + v280;
    *v198 = "MusicKitClient HTTP Request";
    *(v198 + 8) = 27;
    *(v198 + 16) = 2;
    v199 = v283;
    v200 = v284;
    *&v281[v16] = v284;
    v201 = (v16 + v195);
    *v201 = sub_22F3AC36C;
    v201[1] = v199;
    a6 = swift_allocObject();
    *(a6 + 16) = sub_22F294B80;
    *(a6 + 24) = v16;
    v294 = sub_22F294B84;
    v295 = a6;
    v290 = MEMORY[0x277D85DD0];
    v291 = 1107296256;
    v292 = sub_22F2280B0;
    v293 = &block_descriptor_76_0;
    v202 = _Block_copy(&v290);
    sub_22F1D20B0(v301, v288);

    v203 = v200;

    dispatch_sync(v282, v202);
    _Block_release(v202);

    (*(v189 + 8))(v287, v286);
    LOBYTE(v199) = swift_isEscapingClosureAtFileLocation();

    a1 = v273;
    v13 = v274;
    a4 = v271;
    v170 = v267;
    if (v199)
    {
      goto LABEL_120;
    }
  }

  v204 = v272;
  [*(v272 + 24) lock];
  LOBYTE(v143) = 1;
  swift_beginAccess();
  v205 = *(v204 + 16);
  *(v204 + 16) = v144;

  v206 = *(v204 + 24);
  v207 = v144;
  [v206 unlock];
  v135 = v270;
  Batch = v270[4];

  os_unfair_lock_lock((Batch + 32));
  if ((*(Batch + 16) & 1) == 0)
  {
    goto LABEL_99;
  }

  os_unfair_lock_unlock((Batch + 32));

LABEL_100:

LABEL_101:
  v213 = v258;
  v214 = v260;
LABEL_108:

  _Block_release(v213);

  swift_bridgeObjectRelease_n();

  sub_22F1D210C(v301);
  v114 = v213;
LABEL_60:
  _Block_release(v114);
}

void sub_22F3AB520(uint64_t a1, unint64_t a2, uint64_t a3, void *a4, const void *a5)
{
  v79 = a1;
  v80 = a4;
  v75 = sub_22F740AD0();
  isa = v75[-1].isa;
  v8 = *(isa + 64);
  MEMORY[0x28223BE20](v75);
  v71 = v67 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_22F73EEC0();
  v76 = *(v10 - 8);
  v77 = v10;
  v11 = *(v76 + 64);
  MEMORY[0x28223BE20](v10);
  v74 = v67 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = v12;
  MEMORY[0x28223BE20](v13);
  v78 = v67 - v14;
  v15 = sub_22F740C00();
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v18 = v67 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = a5;
  _Block_copy(a5);
  if (qword_2810A9460 != -1)
  {
    swift_once();
  }

  v19 = sub_22F740B90();
  __swift_project_value_buffer(v19, qword_2810B4D90);

  v20 = sub_22F740B70();
  v21 = sub_22F7415C0();

  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v23 = a3;
    v24 = swift_slowAlloc();
    *&v96 = v24;
    *v22 = 136315138;
    *(v22 + 4) = sub_22F145F20(v79, a2, &v96);
    _os_log_impl(&dword_22F0FC000, v20, v21, "[MemoriesMusic] fetchSongAdamIDsForPurchasedSongID for purchased song ID %s", v22, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v24);
    v25 = v24;
    a3 = v23;
    MEMORY[0x2319033A0](v25, -1, -1);
    MEMORY[0x2319033A0](v22, -1, -1);
  }

  if (qword_2810A9BD0 != -1)
  {
    swift_once();
  }

  v26 = qword_2810B4E90;
  *&v27 = CACurrentMediaTime();
  sub_22F1B560C("fetchSongAdamIDsForPurchasedSongID", 34, 2u, v27, 0, v26, v90);
  sub_22F740BF0();
  v70 = sub_22F22FB24(v18, 0);
  static MusicKitClient.FetchOptions.identity(musicKitSource:)(*(a3 + OBJC_IVAR___PGMusicCurationInflationContext_actionSource), *(a3 + OBJC_IVAR___PGMusicCurationInflationContext_actionSource + 8), &v96);
  v29 = *(&v91 + 1);
  v28 = v92;
  v30 = swift_allocObject();
  v31 = v81;
  *(v30 + 16) = v81;
  v32 = swift_allocObject();
  v33 = v80;
  *(v32 + 16) = v80;
  v34 = v90[1];
  *(v32 + 24) = v90[0];
  *(v32 + 40) = v34;
  *(v32 + 56) = v91;
  *(v32 + 72) = v92;
  *(v32 + 80) = sub_22F3AC048;
  *(v32 + 88) = v30;

  _Block_copy(v31);

  v35 = v33;
  _Block_copy(v31);
  v36 = qword_2810A9B98;

  v80 = v28;

  v68 = v35;
  v69 = v30;

  if (v36 != -1)
  {
    swift_once();
  }

  v37 = qword_2810B4E70;
  *&v38 = CACurrentMediaTime();
  sub_22F1B560C("MusicKitClient Fetch Songs By Purchased ID", 42, 2u, v38, 0, v37, v93);
  v39 = v70;
  v40 = *(v70 + 4);
  v41 = *(v70 + 5);
  v42 = *(v70 + 6);
  v43 = *(v70 + 7);
  v44 = *(v70 + 8);
  v84 = *(v70 + 3);
  v85 = v40;
  v86 = v41;
  v87 = v42;
  v88 = v43;
  v89 = v44;
  v82[0] = v96;
  v82[1] = v97;
  v82[2] = v98;
  v83 = v99;

  sub_22F3E3150(v79, a2, v82, v78);

  v67[2] = v29;
  v45 = *(&v94 + 1);
  v46 = v95;
  v47 = swift_allocObject();
  v48 = v93[1];
  *(v47 + 16) = v93[0];
  *(v47 + 32) = v48;
  *(v47 + 48) = v94;
  *(v47 + 64) = v95;
  *(v47 + 72) = sub_22F3AC374;
  v67[0] = v47;
  *(v47 + 80) = v32;
  v79 = v45;

  v67[3] = v46;

  sub_22F741740();
  v67[1] = v32;
  if (qword_2810A8E30 != -1)
  {
    swift_once();
  }

  v49 = v71;
  sub_22F740AC0();
  sub_22F740A90();
  (*(isa + 8))(v49, v75);
  v75 = *(v39 + 9);
  v50 = v76;
  v51 = v77;
  v52 = v74;
  (*(v76 + 16))(v74, v78, v77);
  v53 = (*(v50 + 80) + 16) & ~*(v50 + 80);
  v54 = (v72 + v53 + 7) & 0xFFFFFFFFFFFFFFF8;
  v55 = (v54 + 63) & 0xFFFFFFFFFFFFFFF8;
  v72 = (v55 + 15) & 0xFFFFFFFFFFFFFFF8;
  isa = (v55 + 39) & 0xFFFFFFFFFFFFFFF8;
  v56 = (isa + 15) & 0xFFFFFFFFFFFFFFF8;
  v57 = swift_allocObject();
  (*(v50 + 32))(v57 + v53, v52, v51);
  v58 = v57 + v54;
  v59 = v97;
  *v58 = v96;
  *(v58 + 16) = v59;
  *(v58 + 32) = v98;
  *(v58 + 48) = v99;
  *(v57 + v55) = v39;
  v60 = v57 + v72;
  *v60 = "MusicKitClient HTTP Request";
  *(v60 + 8) = 27;
  *(v60 + 16) = 2;
  v61 = v68;
  *(v57 + isa) = v68;
  v62 = (v57 + v56);
  v63 = v67[0];
  *v62 = sub_22F3AC368;
  v62[1] = v63;
  v64 = swift_allocObject();
  *(v64 + 16) = sub_22F294B80;
  *(v64 + 24) = v57;
  v88 = sub_22F294B84;
  v89 = v64;
  v84 = MEMORY[0x277D85DD0];
  v85 = 1107296256;
  v86 = sub_22F2280B0;
  v87 = &block_descriptor_51_0;
  v65 = _Block_copy(&v84);
  v66 = v61;
  sub_22F1D20B0(&v96, v82);

  dispatch_sync(v75, v65);
  _Block_release(v65);

  (*(v76 + 8))(v78, v77);
  LOBYTE(v50) = swift_isEscapingClosureAtFileLocation();

  _Block_release(v81);

  if (v50)
  {
    __break(1u);
  }

  else
  {

    sub_22F1D210C(&v96);
    _Block_release(v81);
  }
}

uint64_t objectdestroy_14Tm()
{
  v1 = *(v0 + 64);

  v2 = *(v0 + 72);

  v3 = *(v0 + 88);

  return MEMORY[0x2821FE8E8](v0, 96, 7);
}

unint64_t sub_22F3AC0AC()
{
  result = qword_2810A9300;
  if (!qword_2810A9300)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DAB33C8, &qword_22F783278);
    sub_22F1E15FC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810A9300);
  }

  return result;
}

uint64_t objectdestroyTm_7()
{
  v1 = *(v0 + 80);

  v2 = *(v0 + 88);

  v3 = *(v0 + 104);

  return MEMORY[0x2821FE8E8](v0, 112, 7);
}

uint64_t objectdestroy_56Tm()
{
  v1 = *(v0 + 40);

  v2 = *(v0 + 104);

  v3 = *(v0 + 112);

  v4 = *(v0 + 160);

  v5 = *(v0 + 168);

  v6 = *(v0 + 184);

  v7 = *(v0 + 192);

  return MEMORY[0x2821FE8E8](v0, 200, 7);
}

uint64_t get_enum_tag_for_layout_string_11PhotosGraph14InflationErrorO(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_22F3AC294(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 8))
  {
    return (*a1 + 2147483646);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 1;
  if (v4 >= 3)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_22F3AC2E8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *result = 0;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

void *static MusicForArtistCacher.cacheMusic(forMomentsInPhotoLibrary:graphManager:forceCaching:progressReporter:completionHandler:)(void *a1, void *a2, int a3, NSObject *a4, void (*a5)(uint64_t, void), uint64_t a6)
{
  v7 = v6;

  return sub_22F3AC4A4(a1, a2, a3, 50, a4, v7, a5, a6);
}

void *sub_22F3AC4A4(void *a1, void *a2, int a3, uint64_t a4, NSObject *a5, char *a6, void (*a7)(uint64_t, void), uint64_t a8)
{
  v9 = v8;
  v148 = a6;
  v157 = a5;
  v150 = a4;
  LODWORD(v155) = a3;
  v154 = a2;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0920, &qword_22F770B20);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v142 = v127 - v15;
  v141 = type metadata accessor for CacherStatus(0);
  v140 = *(v141 - 8);
  v16 = *(v140 + 64);
  MEMORY[0x28223BE20](v141);
  v145 = v127 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v144 = sub_22F73EEC0();
  v143 = *(v144 - 8);
  v18 = *(v143 + 64);
  MEMORY[0x28223BE20](v144);
  v138 = v127 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v151 = v127 - v20;
  v152 = sub_22F740AD0();
  v153 = *(v152 - 8);
  v21 = *(v153 + 64);
  MEMORY[0x28223BE20](v152);
  v149 = v127 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_22F740C00();
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x28223BE20](v23 - 8);
  v26 = v127 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB1DA0, &unk_22F7771B0);
  v146 = *(v27 - 8);
  v28 = *(v146 + 64);
  MEMORY[0x28223BE20](v27 - 8);
  v139 = v127 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v31 = v127 - v30;
  MEMORY[0x28223BE20](v32);
  v147 = (v127 - v33);
  MEMORY[0x28223BE20](v34);
  v156 = v127 - v35;
  v36 = swift_allocObject();
  *(v36 + 16) = a7;
  *(v36 + 24) = a8;
  v37 = qword_2810A9B20;
  v173 = a8;

  if (v37 != -1)
  {
    swift_once();
  }

  v38 = qword_2810B4E20;
  *&v39 = CACurrentMediaTime();
  sub_22F1B560C("Cache Music For Artist Elector", 30, 2u, v39, 0, v38, v166);
  v40 = sub_22F1A26E0(a1);
  if (v9)
  {

LABEL_6:
  }

  v135 = a1;
  v134 = v18;
  v136 = a7;
  v137 = v36;
  v41 = v40;
  v42 = objc_allocWithZone(type metadata accessor for MusicBag());
  v43 = v41;
  v44 = sub_22F1ED5B0(v41);

  sub_22F741690();
  v133 = v44;
  v131 = v31;
  v46 = sub_22F7416E0();
  v48 = v47;
  v132 = v49;
  v51 = v50;
  v52 = v156;
  MusicCache.readCacherStatus(category:)(0x726F46636973756DLL, 0xEE00747369747241, v156);
  v129 = v51;
  v130 = v43;
  v53 = sub_22F3B0CD4(v52, v133, v46);
  v128 = v46;
  if (((v53 | v155) & 1) == 0)
  {
    sub_22F7416A0();
    v56 = v136;
    v57 = v130;
    v58 = v129;
    sub_22F1B2BBC(1);
    v56(1, 0);

LABEL_11:

LABEL_12:
    sub_22F120ADC(v156, &qword_27DAB1DA0, &unk_22F7771B0);
    goto LABEL_6;
  }

  v54 = sub_22F3B11B8(v135, v154, v130);
  v55 = v136;
  v155 = v54;
  sub_22F740BD0();
  result = sub_22F22FB24(v26, 0);
  v59 = *(v155 + 16);
  if (!v59)
  {

    sub_22F1B2BBC(0);
    sub_22F7416A0();
    v55(1, 0);

    goto LABEL_11;
  }

  v154 = 0;
  v135 = result;
  if (v59 > v150)
  {
    if (v150 < 0)
    {
      __break(1u);
      return result;
    }

    sub_22F10AB90(v155, v155 + 32, 0, (2 * v150) | 1);
    v61 = v60;

    v155 = v61;
  }

  static MusicKitClient.FetchOptions.nonPersonalizedMemoriesCuration(musicKitSource:)(0x726F46636973756DLL, 0xEE00747369747241, &v169);
  v62 = v147;
  sub_22F13BA9C(v52, v147, &qword_27DAB1DA0, &unk_22F7771B0);
  v150 = *(&v167 + 1);
  v127[1] = v168;
  sub_22F13BA9C(v62, v131, &qword_27DAB1DA0, &unk_22F7771B0);
  v63 = (*(v146 + 80) + 24) & ~*(v146 + 80);
  v64 = (v28 + v63 + 7) & 0xFFFFFFFFFFFFFFF8;
  v65 = (v64 + 15) & 0xFFFFFFFFFFFFFFF8;
  v66 = (v65 + 15) & 0xFFFFFFFFFFFFFFF8;
  v67 = (v66 + 63) & 0xFFFFFFFFFFFFFFF8;
  v68 = (v67 + 23) & 0xFFFFFFFFFFFFFFF8;
  v69 = swift_allocObject();
  *(v69 + 16) = v148;
  sub_22F1207AC(v62, v69 + v63, &qword_27DAB1DA0, &unk_22F7771B0);
  v70 = v130;
  *(v69 + v64) = v130;
  v71 = v157;
  *(v69 + v65) = v157;
  v72 = v69 + v66;
  v73 = v166[1];
  *v72 = v166[0];
  *(v72 + 16) = v73;
  *(v72 + 32) = v167;
  *(v72 + 48) = v168;
  v74 = (v69 + v67);
  v75 = v137;
  *v74 = sub_22F3B1774;
  v74[1] = v75;
  v146 = v69;
  v76 = v129;
  *(v69 + v68) = v129;
  v148 = v70;

  v147 = v76;

  v129 = v71;
  sub_22F741740();
  if (qword_2810A8E30 != -1)
  {
    swift_once();
  }

  v77 = qword_2810A8E38;
  v78 = v149;
  sub_22F740AC0();
  v130 = v77;
  sub_22F740A90();
  v79 = v153 + 8;
  v80 = v152;
  v157 = *(v153 + 8);
  (v157)(v78, v152);
  v81 = v135;
  v82 = *(v135 + 4);
  v83 = *(v135 + 5);
  v84 = *(v135 + 6);
  v85 = *(v135 + 7);
  v86 = *(v135 + 8);
  aBlock = *(v135 + 3);
  v161 = v82;
  v162 = v83;
  v163 = v84;
  v164 = v85;
  v165 = v86;
  v158[0] = v169;
  v158[1] = v170;
  v158[2] = v171;
  v159 = v172;

  v87 = v151;
  v88 = v154;
  sub_22F3E21F0(v155, 0x14, v158, v151);
  v154 = v88;
  if (v88)
  {

    sub_22F741730();
    sub_22F740AC0();
    sub_22F740A90();
    (v157)(v78, v80);
    isEscapingClosureAtFileLocation = v139;
    sub_22F13BA9C(v131, v139, &qword_27DAB1DA0, &unk_22F7771B0);
    v90 = v141;
    v91 = (*(v140 + 48))(isEscapingClosureAtFileLocation, 1, v141);
    v153 = v79;
    v92 = v78;
    if (v91 == 1)
    {
      v93 = v154;
      sub_22F120ADC(isEscapingClosureAtFileLocation, &qword_27DAB1DA0, &unk_22F7771B0);
      v94 = sub_22F73F690();
      v95 = v142;
      (*(*(v94 - 8) + 56))(v142, 1, 1, v94);
LABEL_26:
      v114 = v145;
      v115 = v90[6];
      sub_22F73F680();
      v116 = sub_22F73F690();
      (*(*(v116 - 8) + 56))(&v114[v115], 0, 1, v116);
      *v114 = xmmword_22F789AD0;
      sub_22F1207AC(v95, &v114[v90[5]], &qword_27DAB0920, &qword_22F770B20);
      sub_22F741740();
      if (qword_2810A8E80 != -1)
      {
        swift_once();
      }

      sub_22F740AC0();
      sub_22F740A90();
      v117 = v152;
      v118 = v157;
      v119 = (v157)(v92, v152);
      v120 = v92;
      v121 = *&v148[OBJC_IVAR___PGMusicCache_managedObjectContext];
      MEMORY[0x28223BE20](v119);
      strcpy(&v127[-4], "musicForArtist");
      HIBYTE(v127[-3]) = -18;
      v127[-2] = v122;
      v127[-1] = v114;
      sub_22F7417A0();
      sub_22F741730();
      sub_22F740AC0();
      sub_22F740A90();
      (v118)(v120, v117);
      sub_22F7416A0();
      v123 = v132;
      v124 = v128;
      v125 = v133;
      sub_22F1B2BBC(1);
      v126 = v154;
      v136(0, v154);

      sub_22F1D210C(&v169);

      sub_22F2CE854(v145, type metadata accessor for CacherStatus);
      sub_22F120ADC(v131, &qword_27DAB1DA0, &unk_22F7771B0);
      goto LABEL_12;
    }

LABEL_25:
    v95 = v142;
    sub_22F13BA9C(isEscapingClosureAtFileLocation + v90[5], v142, &qword_27DAB0920, &qword_22F770B20);
    v113 = v154;
    sub_22F2CE854(isEscapingClosureAtFileLocation, type metadata accessor for CacherStatus);
    goto LABEL_26;
  }

  v96 = swift_allocObject();
  v155 = v96;
  *(v96 + 16) = "MusicKitClient Fetch Essentials Playlists For Artists";
  *(v96 + 24) = 53;
  *(v96 + 32) = 2;
  *(v96 + 40) = sub_22F3B1B54;
  *(v96 + 48) = v146;

  sub_22F741740();
  sub_22F740AC0();
  sub_22F740A90();
  (v157)(v78, v152);
  v157 = v81[9];
  v97 = v143;
  v98 = v138;
  v99 = v144;
  (*(v143 + 16))(v138, v87, v144);
  v100 = (*(v97 + 80) + 16) & ~*(v97 + 80);
  v101 = (v134 + v100 + 7) & 0xFFFFFFFFFFFFFFF8;
  v102 = (v101 + 63) & 0xFFFFFFFFFFFFFFF8;
  v152 = (v102 + 15) & 0xFFFFFFFFFFFFFFF8;
  v153 = (v102 + 39) & 0xFFFFFFFFFFFFFFF8;
  v103 = (v153 + 15) & 0xFFFFFFFFFFFFFFF8;
  v104 = swift_allocObject();
  (*(v97 + 32))(v104 + v100, v98, v99);
  v105 = v104 + v101;
  v106 = v170;
  *v105 = v169;
  *(v105 + 16) = v106;
  *(v105 + 32) = v171;
  *(v105 + 48) = v172;
  *(v104 + v102) = v135;
  v107 = v104 + v152;
  *v107 = "MusicKitClient HTTP Request";
  *(v107 + 8) = 27;
  *(v107 + 16) = 2;
  v108 = v132;
  *(v104 + v153) = v132;
  v109 = (v104 + v103);
  v92 = v104;
  v110 = v155;
  *v109 = sub_22F3B1B4C;
  v109[1] = v110;
  v111 = swift_allocObject();
  *(v111 + 16) = sub_22F294B80;
  *(v111 + 24) = v104;
  v164 = sub_22F294B84;
  v165 = v111;
  aBlock = MEMORY[0x277D85DD0];
  v161 = 1107296256;
  v162 = sub_22F2280B0;
  v163 = &block_descriptor_38_0;
  v90 = _Block_copy(&aBlock);
  sub_22F1D20B0(&v169, v158);

  v112 = v108;

  dispatch_sync(v157, v90);

  _Block_release(v90);

  sub_22F1D210C(&v169);

  (*(v143 + 8))(v151, v144);
  sub_22F120ADC(v131, &qword_27DAB1DA0, &unk_22F7771B0);
  sub_22F120ADC(v156, &qword_27DAB1DA0, &unk_22F7771B0);

  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
    goto LABEL_25;
  }

  return result;
}

void *static MusicForArtistCacher.cacheMusic(forMomentsInPhotoLibrary:graphManager:forceCaching:maximumNumberOfArtistIdentifiersToProcess:progressReporter:completionHandler:)(void *a1, void *a2, int a3, uint64_t a4, NSObject *a5, void (*a6)(void *), unint64_t a7)
{
  v140 = a7;
  v158 = a5;
  v137 = a4;
  LODWORD(v142) = a3;
  v141 = a2;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0920, &qword_22F770B20);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v128 = &v113 - v12;
  v127 = type metadata accessor for CacherStatus(0);
  v126 = *(v127 - 8);
  v13 = *(v126 + 64);
  MEMORY[0x28223BE20](v127);
  v131 = &v113 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v130 = sub_22F73EEC0();
  v129 = *(v130 - 8);
  v15 = *(v129 + 64);
  MEMORY[0x28223BE20](v130);
  v124 = &v113 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v138 = (&v113 - v17);
  v136 = sub_22F740AD0();
  v135 = *(v136 - 8);
  v18 = *(v135 + 64);
  MEMORY[0x28223BE20](v136);
  v134 = &v113 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_22F740C00();
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x28223BE20](v20 - 8);
  v23 = &v113 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB1DA0, &unk_22F7771B0);
  v132 = *(v24 - 8);
  v25 = *(v132 + 64);
  MEMORY[0x28223BE20](v24 - 8);
  v125 = &v113 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v139 = &v113 - v27;
  MEMORY[0x28223BE20](v28);
  v30 = &v113 - v29;
  MEMORY[0x28223BE20](v31);
  v33 = &v113 - v32;
  if (qword_2810A9B20 != -1)
  {
    swift_once();
  }

  v34 = qword_2810B4E20;
  *&v35 = CACurrentMediaTime();
  sub_22F1B560C("Cache Music For Artist Elector", 30, 2u, v35, 0, v34, v151);
  v36 = sub_22F1A26E0(a1);
  if (v7)
  {
  }

  v122 = a1;
  v120 = v15;
  v121 = a6;
  v123 = v33;
  v37 = v36;
  v38 = objc_allocWithZone(type metadata accessor for MusicBag());
  v39 = v37;
  v40 = sub_22F1ED5B0(v37);

  sub_22F741690();
  v119 = v40;
  v42 = sub_22F7416E0();
  v118 = v43;
  v45 = v44;
  v117 = v46;
  v47 = v123;
  MusicCache.readCacherStatus(category:)(0x726F46636973756DLL, 0xEE00747369747241, v123);
  v116 = v45;
  v48 = sub_22F3B0CD4(v47, v119, v42);
  v49 = v47;
  if (((v48 | v142) & 1) == 0)
  {
    sub_22F7416A0();
    v51 = v117;
    sub_22F1B2BBC(1);
    v121(0);

LABEL_10:

    return sub_22F120ADC(v49, &qword_27DAB1DA0, &unk_22F7771B0);
  }

  v50 = v118;
  v142 = sub_22F3B11B8(v122, v141, v39);
  sub_22F740BD0();
  result = sub_22F22FB24(v23, 0);
  v52 = *(v142 + 16);
  if (!v52)
  {

    sub_22F1B2BBC(0);
    sub_22F7416A0();
    v121(0);

    goto LABEL_10;
  }

  v141 = 0;
  v114 = v42;
  v122 = result;
  if (v52 > v137)
  {
    if (v137 < 0)
    {
      __break(1u);
      return result;
    }

    sub_22F10AB90(v142, v142 + 32, 0, (2 * v137) | 1);
    v54 = v53;

    v142 = v54;
  }

  static MusicKitClient.FetchOptions.nonPersonalizedMemoriesCuration(musicKitSource:)(0x726F46636973756DLL, 0xEE00747369747241, &v154);
  sub_22F13BA9C(v49, v30, &qword_27DAB1DA0, &unk_22F7771B0);
  v115 = *(&v152 + 1);
  v137 = v153;
  sub_22F13BA9C(v30, v139, &qword_27DAB1DA0, &unk_22F7771B0);
  v55 = (*(v132 + 80) + 24) & ~*(v132 + 80);
  v56 = (v25 + v55 + 7) & 0xFFFFFFFFFFFFFFF8;
  v57 = (v56 + 15) & 0xFFFFFFFFFFFFFFF8;
  v58 = (v57 + 15) & 0xFFFFFFFFFFFFFFF8;
  v59 = (v58 + 63) & 0xFFFFFFFFFFFFFFF8;
  v60 = (v59 + 23) & 0xFFFFFFFFFFFFFFF8;
  v61 = swift_allocObject();
  *(v61 + 16) = v133;
  sub_22F1207AC(v30, v61 + v55, &qword_27DAB1DA0, &unk_22F7771B0);
  *(v61 + v56) = v39;
  v62 = v158;
  *(v61 + v57) = v158;
  v63 = v61 + v58;
  v64 = v151[1];
  *v63 = v151[0];
  *(v63 + 16) = v64;
  *(v63 + 32) = v152;
  *(v63 + 48) = v153;
  v65 = (v61 + v59);
  v66 = v140;
  *v65 = v121;
  v65[1] = v66;
  v132 = v61;
  v67 = v117;
  *(v61 + v60) = v117;
  v133 = v39;

  v117 = v67;

  v68 = v62;
  sub_22F741740();
  if (qword_2810A8E30 != -1)
  {
    swift_once();
  }

  v69 = qword_2810A8E38;
  v70 = v134;
  sub_22F740AC0();
  v158 = v69;
  sub_22F740A90();
  v71 = *(v135 + 8);
  v72 = v136;
  v71(v70, v136);
  v73 = *(v122 + 4);
  v74 = *(v122 + 5);
  v75 = *(v122 + 6);
  v76 = *(v122 + 7);
  v77 = *(v122 + 8);
  aBlock = *(v122 + 3);
  v146 = v73;
  v147 = v74;
  v148 = v75;
  v149 = v76;
  v150 = v77;
  v143[0] = v154;
  v143[1] = v155;
  v143[2] = v156;
  v144 = v157;

  v78 = v141;
  sub_22F3E21F0(v142, 0x14, v143, v138);
  v141 = v78;
  if (v78)
  {
    v138 = v68;

    sub_22F741730();
    sub_22F740AC0();
    sub_22F740A90();
    v71(v70, v72);
    isEscapingClosureAtFileLocation = v125;
    sub_22F13BA9C(v139, v125, &qword_27DAB1DA0, &unk_22F7771B0);
    v80 = v127;
    v81 = v71;
    if ((*(v126 + 48))(isEscapingClosureAtFileLocation, 1, v127) == 1)
    {
      v82 = v141;
      sub_22F120ADC(isEscapingClosureAtFileLocation, &qword_27DAB1DA0, &unk_22F7771B0);
      v83 = sub_22F73F690();
      v84 = v128;
      (*(*(v83 - 8) + 56))(v128, 1, 1, v83);
LABEL_25:
      v103 = v80[6];
      v104 = v131;
      sub_22F73F680();
      v105 = sub_22F73F690();
      (*(*(v105 - 8) + 56))(&v104[v103], 0, 1, v105);
      *v104 = xmmword_22F789AD0;
      sub_22F1207AC(v84, &v104[v80[5]], &qword_27DAB0920, &qword_22F770B20);
      sub_22F741740();
      if (qword_2810A8E80 != -1)
      {
        swift_once();
      }

      sub_22F740AC0();
      sub_22F740A90();
      v106 = v81(v70, v72);
      v107 = *&v133[OBJC_IVAR___PGMusicCache_managedObjectContext];
      MEMORY[0x28223BE20](v106);
      strcpy(&v113 - 32, "musicForArtist");
      *(&v113 - 17) = -18;
      *(&v113 - 2) = v108;
      *(&v113 - 1) = v104;
      sub_22F7417A0();
      sub_22F741730();
      sub_22F740AC0();
      sub_22F740A90();
      v81(v70, v72);
      sub_22F7416A0();
      v109 = v141;
      v110 = v123;
      v111 = v118;
      v112 = v117;
      sub_22F1B2BBC(1);
      v121(v109);

      sub_22F1D210C(&v154);

      sub_22F2CE854(v131, type metadata accessor for CacherStatus);
      sub_22F120ADC(v139, &qword_27DAB1DA0, &unk_22F7771B0);
      v49 = v110;
      return sub_22F120ADC(v49, &qword_27DAB1DA0, &unk_22F7771B0);
    }

LABEL_24:
    v84 = v128;
    sub_22F13BA9C(isEscapingClosureAtFileLocation + v80[5], v128, &qword_27DAB0920, &qword_22F770B20);
    v102 = v141;
    sub_22F2CE854(isEscapingClosureAtFileLocation, type metadata accessor for CacherStatus);
    goto LABEL_25;
  }

  v85 = swift_allocObject();
  v142 = v85;
  *(v85 + 16) = "MusicKitClient Fetch Essentials Playlists For Artists";
  *(v85 + 24) = 53;
  *(v85 + 32) = 2;
  *(v85 + 40) = sub_22F3B1674;
  *(v85 + 48) = v132;

  sub_22F741740();
  sub_22F740AC0();
  sub_22F740A90();
  v71(v70, v72);
  v158 = *(v122 + 9);
  v86 = v129;
  v87 = v124;
  v88 = v130;
  (*(v129 + 16))(v124, v138, v130);
  v89 = (*(v86 + 80) + 16) & ~*(v86 + 80);
  v90 = (v120 + v89 + 7) & 0xFFFFFFFFFFFFFFF8;
  v91 = (v90 + 63) & 0xFFFFFFFFFFFFFFF8;
  v140 = (v91 + 15) & 0xFFFFFFFFFFFFFFF8;
  v92 = (v91 + 39) & 0xFFFFFFFFFFFFFFF8;
  v93 = swift_allocObject();
  (*(v86 + 32))(v93 + v89, v87, v88);
  v94 = v93 + v90;
  v95 = v155;
  *v94 = v154;
  *(v94 + 16) = v95;
  *(v94 + 32) = v156;
  *(v94 + 48) = v157;
  *(v93 + v91) = v122;
  v96 = v93 + v140;
  *v96 = "MusicKitClient HTTP Request";
  *(v96 + 8) = 27;
  *(v96 + 16) = 2;
  v97 = v116;
  *(v93 + v92) = v116;
  v98 = (v93 + ((v92 + 15) & 0xFFFFFFFFFFFFFFF8));
  v99 = v142;
  *v98 = sub_22F3B1678;
  v98[1] = v99;
  v100 = swift_allocObject();
  *(v100 + 16) = sub_22F233FAC;
  *(v100 + 24) = v93;
  v149 = sub_22F2915BC;
  v150 = v100;
  aBlock = MEMORY[0x277D85DD0];
  v146 = 1107296256;
  v147 = sub_22F2280B0;
  v148 = &block_descriptor_50;
  v81 = _Block_copy(&aBlock);
  v72 = v150;
  sub_22F1D20B0(&v154, v143);

  v101 = v97;

  dispatch_sync(v158, v81);

  _Block_release(v81);

  sub_22F1D210C(&v154);

  (*(v129 + 8))(v138, v130);
  v80 = &unk_22F7771B0;
  sub_22F120ADC(v139, &qword_27DAB1DA0, &unk_22F7771B0);
  sub_22F120ADC(v123, &qword_27DAB1DA0, &unk_22F7771B0);

  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  v70 = v141;
  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
    goto LABEL_24;
  }

  return result;
}

void sub_22F3AF418(void *a1, int a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, void (*a8)(void), uint64_t a9)
{
  v113 = a8;
  v114 = a1;
  v110 = a6;
  v111 = a7;
  v117 = a5;
  v121 = a4;
  LODWORD(v116) = a2;
  v112 = a9;
  v9 = type metadata accessor for Song();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v13 = &v103 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_22F740AD0();
  v119 = *(v14 - 8);
  v120 = v14;
  v15 = *(v119 + 64);
  MEMORY[0x28223BE20](v14);
  v118 = &v103 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB1DA0, &unk_22F7771B0);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v20 = &v103 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v23 = &v103 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0920, &qword_22F770B20);
  v25 = *(*(v24 - 8) + 64);
  MEMORY[0x28223BE20](v24 - 8);
  v27 = &v103 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v115 = &v103 - v29;
  MEMORY[0x28223BE20](v30);
  v32 = &v103 - v31;
  v33 = type metadata accessor for CacherStatus(0);
  v34 = *(v33 - 8);
  v35 = *(v34 + 64);
  MEMORY[0x28223BE20](v33);
  v37 = &v103 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v38);
  if (v116)
  {
    v40 = v117;
    sub_22F13BA9C(v121, v20, &qword_27DAB1DA0, &unk_22F7771B0);
    if ((*(v34 + 48))(v20, 1, v33) == 1)
    {
      sub_22F120ADC(v20, &qword_27DAB1DA0, &unk_22F7771B0);
      v41 = sub_22F73F690();
      (*(*(v41 - 8) + 56))(v27, 1, 1, v41);
    }

    else
    {
      sub_22F13BA9C(&v20[*(v33 + 20)], v27, &qword_27DAB0920, &qword_22F770B20);
      sub_22F2CE854(v20, type metadata accessor for CacherStatus);
    }

    v46 = *(v33 + 24);
    sub_22F73F680();
    v47 = sub_22F73F690();
    (*(*(v47 - 8) + 56))(&v37[v46], 0, 1, v47);
    *v37 = xmmword_22F789AD0;
    sub_22F1207AC(v27, &v37[*(v33 + 20)], &qword_27DAB0920, &qword_22F770B20);
    sub_22F741740();
    if (qword_2810A8E80 != -1)
    {
      swift_once();
    }

    v48 = qword_2810A8E88;
    v49 = v118;
    sub_22F740AC0();
    v121 = v48;
    sub_22F740A90();
    v50 = v120;
    v51 = *(v119 + 8);
    v52 = v51(v49, v120);
    v53 = *(v40 + OBJC_IVAR___PGMusicCache_managedObjectContext);
    MEMORY[0x28223BE20](v52);
    strcpy(&v103 - 32, "musicForArtist");
    *(&v103 - 17) = -18;
    *(&v103 - 2) = v40;
    *(&v103 - 1) = v37;
    sub_22F7417A0();
    sub_22F741730();
    sub_22F740AC0();
    sub_22F740A90();
    v51(v49, v50);
    sub_22F7416A0();
    sub_22F1B2BBC(1);
    (v113)(v114);
    v66 = v37;
    goto LABEL_31;
  }

  v105 = (&v103 - v39);
  sub_22F73F680();
  v42 = sub_22F73F690();
  v43 = *(*(v42 - 8) + 56);
  v43(v32, 0, 1, v42);
  sub_22F13BA9C(v121, v23, &qword_27DAB1DA0, &unk_22F7771B0);
  if ((*(v34 + 48))(v23, 1, v33) == 1)
  {
    sub_22F120ADC(v23, &qword_27DAB1DA0, &unk_22F7771B0);
    v44 = v43;
    v45 = v115;
    v44(v115, 1, 1, v42);
  }

  else
  {
    v45 = v115;
    sub_22F13BA9C(&v23[*(v33 + 24)], v115, &qword_27DAB0920, &qword_22F770B20);
    sub_22F2CE854(v23, type metadata accessor for CacherStatus);
  }

  v54 = v105;
  v106 = xmmword_22F789AD0;
  *v105 = xmmword_22F789AD0;
  sub_22F1207AC(v32, v54 + *(v33 + 20), &qword_27DAB0920, &qword_22F770B20);
  sub_22F1207AC(v45, v54 + *(v33 + 24), &qword_27DAB0920, &qword_22F770B20);
  sub_22F741740();
  v55 = v117;
  if (qword_2810A8E80 != -1)
  {
    swift_once();
  }

  v56 = qword_2810A8E88;
  v57 = v118;
  sub_22F740AC0();
  v115 = v56;
  sub_22F740A90();
  v58 = v119 + 8;
  v59 = *(v119 + 8);
  v60 = v59(v57, v120);
  v61 = *(v55 + OBJC_IVAR___PGMusicCache_managedObjectContext);
  MEMORY[0x28223BE20](v60);
  strcpy(&v103 - 32, "musicForArtist");
  *(&v103 - 17) = -18;
  *(&v103 - 2) = v55;
  *(&v103 - 1) = v54;
  v62 = 0;
  sub_22F7417A0();
  v104 = v61;
  sub_22F741730();
  sub_22F740AC0();
  sub_22F740A90();
  v59(v57, v120);
  v67 = v114;
  if (!v114[2])
  {
    sub_22F7416A0();
    sub_22F1B2BBC(1);
    sub_22F3B16B8();
    v101 = swift_allocError();
    *v102 = 1;
    v113();

    v66 = v105;
LABEL_31:
    sub_22F2CE854(v66, type metadata accessor for CacherStatus);
    return;
  }

  v68 = sub_22F741670();
  v126 = v67;
  v127 = 0;
  v128 = v68;
  v129 = 0;
  v130 = 0;

  sub_22F227010(v124);
  v116 = *&v124[8];
  if (*&v124[8])
  {
    v108 = v59;
    v109 = *v124;
    v70 = *&v124[24];
    v71 = *&v124[32];
    v72 = *&v124[40];
    *&v69 = 134218242;
    v103 = v69;
    v119 = v58;
    while (1)
    {
      v121 = v62;
      v73 = *(v71 + 16);
      v114 = v72;
      if (v73)
      {
        v107 = v70;
        v125 = MEMORY[0x277D84F90];
        sub_22F146514(0, v73, 0);
        v74 = v125;
        v75 = (v71 + 32);
        do
        {
          memcpy(v124, v75, sizeof(v124));
          memcpy(v123, v75, sizeof(v123));
          sub_22F18C4EC(v124, &v122);
          Song.init(_:)(v123);
          v125 = v74;
          v77 = *(v74 + 16);
          v76 = *(v74 + 24);
          if (v77 >= v76 >> 1)
          {
            sub_22F146514(v76 > 1, v77 + 1, 1);
            v74 = v125;
          }

          *(v74 + 16) = v77 + 1;
          sub_22F3B170C(v13, v74 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(v10 + 72) * v77, type metadata accessor for Song);
          v75 += 296;
          --v73;
        }

        while (v73);
        v72 = v114;
      }

      else
      {
        v74 = MEMORY[0x277D84F90];
      }

      sub_22F741740();
      v78 = v118;
      sub_22F740AC0();
      sub_22F740A90();
      v108(v78, v120);
      v79 = v121;
      sub_22F741690();
      if (v79)
      {
        break;
      }

      v80 = sub_22F7416E0();
      v82 = v81;
      v84 = v83;
      v86 = v85;
      MEMORY[0x28223BE20](v80);
      v88 = v116;
      v87 = v117;
      *(&v103 - 14) = v109;
      *(&v103 - 13) = v88;
      *(&v103 - 11) = 0;
      *(&v103 - 10) = 0;
      *(&v103 - 12) = v87;
      *(&v103 - 72) = v106;
      v107 = v89;
      *(&v103 - 7) = v89;
      *(&v103 - 6) = v74;
      *(&v103 - 10) = 16777472;
      *(&v103 - 4) = v82;
      *(&v103 - 3) = v90;
      *(&v103 - 2) = v91;
      sub_22F7417A0();
      v121 = 0;
      sub_22F741730();
      v92 = v118;
      sub_22F740AC0();
      sub_22F740A90();

      v108(v92, v120);
      if (qword_2810A9478 != -1)
      {
        swift_once();
      }

      v93 = sub_22F740B90();
      __swift_project_value_buffer(v93, qword_2810B4DC0);
      v94 = v116;

      v95 = sub_22F740B70();
      v96 = sub_22F7415C0();

      if (os_log_type_enabled(v95, v96))
      {
        v97 = swift_slowAlloc();
        v98 = swift_slowAlloc();
        *v124 = v98;
        *v97 = v103;
        v99 = *(v74 + 16);

        *(v97 + 4) = v99;

        *(v97 + 12) = 2080;
        v100 = sub_22F145F20(v109, v94, v124);

        *(v97 + 14) = v100;
        _os_log_impl(&dword_22F0FC000, v95, v96, "Saving %ld of type %s", v97, 0x16u);
        __swift_destroy_boxed_opaque_existential_0(v98);
        MEMORY[0x2319033A0](v98, -1, -1);
        MEMORY[0x2319033A0](v97, -1, -1);
      }

      else
      {

        swift_bridgeObjectRelease_n();
      }

      v62 = v121;
      sub_22F227010(v124);
      v109 = *v124;
      v70 = *&v124[24];
      v71 = *&v124[32];
      v72 = *&v124[40];
      v116 = *&v124[8];
      if (!*&v124[8])
      {
        goto LABEL_32;
      }
    }

    v121 = v79;

    sub_22F2CE854(v105, type metadata accessor for CacherStatus);
    v63 = v113;
    sub_22F7416A0();
    sub_22F1B2BBC(1);
    v64 = v121;
    v65 = v121;
    (v63)(v64);
  }

  else
  {
LABEL_32:

    sub_22F7416A0();
    if (v62)
    {
    }

    sub_22F1B2BBC(0);
    sub_22F2CE854(v105, type metadata accessor for CacherStatus);
    (v113)(0);
  }
}

id MusicForArtistCacher.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id MusicForArtistCacher.init()()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_init);
}

id MusicForArtistCacher.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_22F3B04D0(unint64_t a1, void *a2)
{
  v3 = v2;
  v5 = a1 & 0xFFFFFFFFFFFFFF8;
  if (!(a1 >> 62))
  {
    v6 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v6)
    {
      goto LABEL_3;
    }

LABEL_23:
    v31 = MEMORY[0x277D84F90];
    goto LABEL_24;
  }

LABEL_22:
  v6 = sub_22F741A00();
  if (!v6)
  {
    goto LABEL_23;
  }

LABEL_3:
  v7 = 0;
  v31 = MEMORY[0x277D84F90];
  do
  {
    v8 = v7;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v9 = MEMORY[0x2319016F0](v8, a1);
        v7 = v8 + 1;
        if (__OFADD__(v8, 1))
        {
          goto LABEL_20;
        }
      }

      else
      {
        if (v8 >= *(v5 + 16))
        {
          goto LABEL_21;
        }

        v9 = *(a1 + 8 * v8 + 32);
        v7 = v8 + 1;
        if (__OFADD__(v8, 1))
        {
LABEL_20:
          __break(1u);
LABEL_21:
          __break(1u);
          goto LABEL_22;
        }
      }

      v10 = v9;
      v11 = [v10 uuid];
      if (v11)
      {
        break;
      }

      ++v8;
      if (v7 == v6)
      {
        goto LABEL_24;
      }
    }

    v29 = v3;
    v12 = v11;
    v13 = sub_22F740E20();
    v28 = v14;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v31 = sub_22F13E1A8(0, *(v31 + 2) + 1, 1, v31);
    }

    v16 = *(v31 + 2);
    v15 = *(v31 + 3);
    if (v16 >= v15 >> 1)
    {
      v31 = sub_22F13E1A8((v15 > 1), v16 + 1, 1, v31);
    }

    *(v31 + 2) = v16 + 1;
    v17 = &v31[16 * v16];
    v3 = v29;
    *(v17 + 4) = v13;
    *(v17 + 5) = v28;
  }

  while (v7 != v6);
LABEL_24:
  if (*(v31 + 2))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAB1110, &unk_22F771270);
    v18 = swift_allocObject();
    *(v18 + 16) = xmmword_22F771340;
    v19 = [objc_opt_self() musicConcerts];
    v20 = sub_22F740E20();
    v22 = v21;

    *(v18 + 32) = v20;
    *(v18 + 40) = v22;
    v23 = sub_22F741160();

    v24 = sub_22F741160();

    v25 = [a2 performerIdentifiersForMomentUUIDs:v23 withCategoryNames:v24];

    v26 = sub_22F741180();
    return v26;
  }

  else
  {

    return MEMORY[0x277D84F90];
  }
}

uint64_t sub_22F3B078C(void *a1, void *a2, void *a3)
{
  v7 = type metadata accessor for SongSource();
  v52 = *(v7 - 8);
  v8 = v52[8];
  MEMORY[0x28223BE20](v7 - 8);
  v10 = (&v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_2810A9B20 != -1)
  {
    swift_once();
  }

  v11 = qword_2810B4E20;
  *&v12 = CACurrentMediaTime();
  sub_22F1B560C("MusicForArtistPruneSourcesPerformance", 37, 2u, v12, 0, v11, v51);
  v13 = sub_22F7416D0();
  v15 = v14;
  v17 = v16;
  v18 = [a1 fetchedObjects];
  if (v18)
  {
    v19 = v18;
    sub_22F120634(0, &unk_2810A90C0, 0x277CD97B8);
    v20 = sub_22F741180();
  }

  else
  {
    v20 = MEMORY[0x277D84F90];
  }

  v21 = sub_22F3B04D0(v20, a3);
  if (v3)
  {

LABEL_9:
  }

  v49 = v21;

  sub_22F7416A0();
  v23 = sub_22F1A26E0(a2);
  sub_22F120634(0, &qword_2810A91E0, 0x277CCAC30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB11A0, &qword_22F772940);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_22F770DF0;
  *(v24 + 56) = MEMORY[0x277D837D0];
  *(v24 + 64) = sub_22F153470();
  *(v24 + 32) = 0x79726F6765746163;
  *(v24 + 40) = 0xE800000000000000;
  *(v24 + 96) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0E90, &qword_22F7714A0);
  *(v24 + 104) = sub_22F25F050();
  *(v24 + 72) = &unk_2843DCC48;
  v25 = sub_22F741560();
  v26 = sub_22F1935BC();
  v46 = v23;
  v47 = v15;
  v27 = v26;

  v28 = *(v27 + 16);
  if (v28)
  {
    v44 = v27;
    v45 = v17;
    v29 = v27 + ((*(v52 + 80) + 32) & ~*(v52 + 80));
    v48 = v52[9];
    v30 = MEMORY[0x277D84F90];
    v52 = v13;
    do
    {
      sub_22F1684A8(v29, v10);
      v32 = *v10;
      v31 = v10[1];

      sub_22F2CE854(v10, type metadata accessor for SongSource);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v30 = sub_22F13E1A8(0, *(v30 + 2) + 1, 1, v30);
      }

      v34 = *(v30 + 2);
      v33 = *(v30 + 3);
      if (v34 >= v33 >> 1)
      {
        v30 = sub_22F13E1A8((v33 > 1), v34 + 1, 1, v30);
      }

      *(v30 + 2) = v34 + 1;
      v35 = &v30[16 * v34];
      *(v35 + 4) = v32;
      *(v35 + 5) = v31;
      v29 += v48;
      --v28;
      v13 = v52;
    }

    while (v28);

    v17 = v45;
  }

  else
  {

    v30 = MEMORY[0x277D84F90];
  }

  v36 = sub_22F1515F8(v30);

  v37 = sub_22F1E94F0(v49, v36);

  v38 = *(v37 + 16);
  v39 = v47;
  if (!v38)
  {

    sub_22F7416A0();
    v43 = v46;
    goto LABEL_24;
  }

  v40 = sub_22F10B348(*(v37 + 16), 0);
  v41 = sub_22F11A438(&v50, v40 + 4, v38, v37);
  result = sub_22F1534EC();
  v42 = v41 == v38;
  v43 = v46;
  if (v42)
  {
    MusicCache.removeSongSources(songSourceIdentifiers:progressReporter:)(v40);

LABEL_24:
    sub_22F1B2BBC(0);

    goto LABEL_9;
  }

  __break(1u);
  return result;
}