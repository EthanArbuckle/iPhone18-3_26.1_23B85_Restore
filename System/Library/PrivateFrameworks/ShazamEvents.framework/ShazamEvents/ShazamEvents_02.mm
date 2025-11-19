uint64_t Theater.hashValue.getter()
{
  sub_1E10AE9CC();
  Theater.hash(into:)(v1);
  return sub_1E10AEA0C();
}

uint64_t Theater.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v53 = a2;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE88C80, &qword_1E10AF9D0) - 8) + 64);
  MEMORY[0x1EEE9AC00](v4, v5);
  v54 = v51 - v6;
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE88C70, &qword_1E10AF9C8) - 8) + 64);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = v51 - v10;
  v12 = type metadata accessor for Time();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = v51 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE89680, &qword_1E10B2BE8);
  v55 = *(v56 - 8);
  v18 = *(v55 + 64);
  MEMORY[0x1EEE9AC00](v19, v20);
  v22 = v51 - v21;
  v23 = type metadata accessor for Theater();
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x1EEE9AC00](v25, v26);
  v28 = (v51 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0));
  v30 = a1[3];
  v29 = a1[4];
  v72 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v30);
  sub_1E100E8E4();
  v57 = v22;
  v31 = v58;
  sub_1E10AEA3C();
  if (v31)
  {
    return __swift_destroy_boxed_opaque_existential_1(v72);
  }

  v51[1] = v12;
  v52 = v17;
  v32 = v55;
  v58 = v23;
  LOBYTE(v60) = 0;
  sub_1E0FEDD04();
  v33 = v56;
  sub_1E10AE7FC();
  v34 = *(&v62 + 1);
  v35 = v28;
  *v28 = v62;
  v28[1] = v34;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE89670, &qword_1E10B2BE0);
  LOBYTE(v60) = 1;
  sub_1E100E938(&qword_1ECE89688);
  sub_1E10AE7FC();
  v36 = v32;
  v37 = *(&v62 + 1);
  *(v35 + 16) = v62;
  *(v35 + 24) = v37;
  *(v35 + 32) = v63;
  LOBYTE(v62) = 2;
  *(v35 + 48) = sub_1E10AE7BC();
  *(v35 + 56) = v38;
  LOBYTE(v62) = 3;
  sub_1E100ECA8(&qword_1EE17EE88, type metadata accessor for Time);
  v39 = v52;
  sub_1E10AE7FC();
  v40 = v58;
  sub_1E0FEDD58(v39, v35 + v58[7], type metadata accessor for Time);
  v61 = 4;
  sub_1E0FEDDC0();
  sub_1E10AE7FC();
  LODWORD(v52) = 1;
  v41 = (v35 + v40[8]);
  v42 = v69;
  v43 = v70;
  v41[6] = v68;
  v41[7] = v42;
  v44 = v71;
  v41[8] = v43;
  v41[9] = v44;
  v45 = v65;
  v41[2] = v64;
  v41[3] = v45;
  v46 = v67;
  v41[4] = v66;
  v41[5] = v46;
  v47 = v63;
  *v41 = v62;
  v41[1] = v47;
  type metadata accessor for EventAttribution();
  LOBYTE(v60) = 5;
  sub_1E100ECA8(&qword_1ECE88D30, type metadata accessor for EventAttribution);
  sub_1E10AE7AC();
  sub_1E0FEDEF4(v11, v35 + v40[9], &qword_1ECE88C70, &qword_1E10AF9C8);
  type metadata accessor for TicketAttribution();
  LOBYTE(v60) = 6;
  sub_1E100ECA8(&qword_1ECE88D50, type metadata accessor for TicketAttribution);
  v48 = v54;
  sub_1E10AE7AC();
  sub_1E0FEDEF4(v48, v35 + v40[10], &qword_1ECE88C80, &qword_1E10AF9D0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE88CF0, &qword_1E10AF9F8);
  v59 = 7;
  sub_1E100E988(&qword_1ECE88D58, &qword_1ECE88D60);
  v49 = v57;
  sub_1E10AE7FC();
  (*(v36 + 8))(v49, v33);
  *(v35 + v40[11]) = v60;
  sub_1E100EA24(v35, v53, type metadata accessor for Theater);
  __swift_destroy_boxed_opaque_existential_1(v72);
  return sub_1E100EA8C(v35, type metadata accessor for Theater);
}

uint64_t sub_1E100DDF0()
{
  sub_1E10AE9CC();
  Theater.hash(into:)(v1);
  return sub_1E10AEA0C();
}

uint64_t sub_1E100DE34()
{
  sub_1E10AE9CC();
  Theater.hash(into:)(v1);
  return sub_1E10AEA0C();
}

unint64_t static EventCategory<>.children.getter()
{
  return 0xD000000000000010;
}

{
  return 0xD000000000000017;
}

unint64_t static EventCategory<>.contemporary.getter()
{
  return 0xD000000000000013;
}

{
  return 0xD000000000000011;
}

unint64_t static EventCategory<>.performingArts.getter()
{
  return 0xD000000000000015;
}

{
  return 0xD000000000000014;
}

uint64_t _s12ShazamEvents7TheaterV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  v4 = type metadata accessor for TicketAttribution();
  v93 = *(v4 - 8);
  v5 = *(v93 + 64);
  MEMORY[0x1EEE9AC00](v6, v7);
  v90 = (&v87 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE88C80, &qword_1E10AF9D0) - 8) + 64);
  MEMORY[0x1EEE9AC00](v10, v11);
  v91 = (&v87 - v12);
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE88F40, &qword_1E10B0600);
  v13 = *(*(v92 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = &v87 - v16;
  v18 = type metadata accessor for EventAttribution();
  v94 = *(v18 - 8);
  v19 = *(v94 + 64);
  MEMORY[0x1EEE9AC00](v20, v21);
  v23 = (&v87 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  v24 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE88C70, &qword_1E10AF9C8) - 8) + 64);
  MEMORY[0x1EEE9AC00](v25, v26);
  v28 = (&v87 - v27);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE88F50, &qword_1E10B0610);
  v30 = *(*(v29 - 8) + 64);
  MEMORY[0x1EEE9AC00](v31, v32);
  v34 = &v87 - v33;
  if ((*a1 != *a2 || a1[1] != a2[1]) && (sub_1E10AE8FC() & 1) == 0)
  {
    goto LABEL_32;
  }

  if ((a1[2] != a2[2] || a1[3] != a2[3]) && (sub_1E10AE8FC() & 1) == 0)
  {
    goto LABEL_32;
  }

  if ((a1[6] != a2[6] || a1[7] != a2[7]) && (sub_1E10AE8FC() & 1) == 0)
  {
    goto LABEL_32;
  }

  v87 = v4;
  v88 = v17;
  v89 = type metadata accessor for Theater();
  v35 = v89[7];
  v36 = a1 + v35;
  v37 = a2 + v35;
  if ((sub_1E10ADA7C() & 1) == 0)
  {
    goto LABEL_32;
  }

  v38 = type metadata accessor for Time();
  if ((MEMORY[0x1E12ED5E0](&v36[*(v38 + 20)], &v37[*(v38 + 20)]) & 1) == 0)
  {
    goto LABEL_32;
  }

  v39 = v89;
  v40 = (a1 + v89[8]);
  v41 = v40[5];
  v42 = v40[7];
  v121 = v40[6];
  v122 = v42;
  v43 = v40[9];
  v44 = v40[7];
  v123 = v40[8];
  v124 = v43;
  v45 = v40[3];
  v46 = v40[1];
  v117 = v40[2];
  v118 = v45;
  v47 = v40[5];
  v48 = v40[3];
  v119 = v40[4];
  v120 = v47;
  v49 = v40[1];
  v116[0] = *v40;
  v116[1] = v49;
  v110 = v119;
  v111 = v41;
  v108 = v117;
  v109 = v48;
  v50 = v40[9];
  v114 = v123;
  v115 = v50;
  v112 = v121;
  v113 = v44;
  v106 = v116[0];
  v107 = v46;
  v51 = (a2 + v89[8]);
  v52 = v51[7];
  v53 = v51[5];
  v130 = v51[6];
  v131 = v52;
  v54 = v51[7];
  v55 = v51[9];
  v132 = v51[8];
  v133 = v55;
  v56 = v51[3];
  v57 = v51[1];
  v126 = v51[2];
  v127 = v56;
  v58 = v51[3];
  v59 = v51[5];
  v128 = v51[4];
  v129 = v59;
  v60 = v51[1];
  v125[0] = *v51;
  v125[1] = v60;
  v102 = v130;
  v103 = v54;
  v61 = v51[9];
  v104 = v132;
  v105 = v61;
  v98 = v126;
  v99 = v58;
  v100 = v128;
  v101 = v53;
  v96 = v125[0];
  v97 = v57;
  sub_1E0FE6720(v116, v95);
  sub_1E0FE6720(v125, v95);
  v62 = _s12ShazamEvents5VenueV2eeoiySbAC_ACtFZ_0(&v106, &v96);
  v134[6] = v102;
  v134[7] = v103;
  v134[8] = v104;
  v134[9] = v105;
  v134[2] = v98;
  v134[3] = v99;
  v134[4] = v100;
  v134[5] = v101;
  v134[0] = v96;
  v134[1] = v97;
  sub_1E0FEDAB8(v134);
  v135[6] = v112;
  v135[7] = v113;
  v135[8] = v114;
  v135[9] = v115;
  v135[2] = v108;
  v135[3] = v109;
  v135[4] = v110;
  v135[5] = v111;
  v135[0] = v106;
  v135[1] = v107;
  sub_1E0FEDAB8(v135);
  if (!v62)
  {
    goto LABEL_32;
  }

  v63 = v39[9];
  v64 = *(v29 + 48);
  sub_1E0FEDC50(a1 + v63, v34, &qword_1ECE88C70, &qword_1E10AF9C8);
  v65 = a2 + v63;
  v66 = v64;
  sub_1E0FEDC50(v65, &v34[v64], &qword_1ECE88C70, &qword_1E10AF9C8);
  v67 = *(v94 + 48);
  if (v67(v34, 1, v18) != 1)
  {
    sub_1E0FEDC50(v34, v28, &qword_1ECE88C70, &qword_1E10AF9C8);
    v94 = v66;
    v70 = v67(&v34[v66], 1, v18);
    v69 = v88;
    if (v70 != 1)
    {
      sub_1E0FEDD58(&v34[v94], v23, type metadata accessor for EventAttribution);
      if (*v28 == *v23 && v28[1] == v23[1] || (sub_1E10AE8FC() & 1) != 0)
      {
        v74 = *(v18 + 20);
        v75 = sub_1E10ADB8C();
        sub_1E100EA8C(v23, type metadata accessor for EventAttribution);
        sub_1E100EA8C(v28, type metadata accessor for EventAttribution);
        sub_1E0FF0440(v34, &qword_1ECE88C70, &qword_1E10AF9C8);
        if ((v75 & 1) == 0)
        {
          goto LABEL_32;
        }

        goto LABEL_24;
      }

      sub_1E100EA8C(v23, type metadata accessor for EventAttribution);
      sub_1E100EA8C(v28, type metadata accessor for EventAttribution);
      v71 = &qword_1ECE88C70;
      v72 = &qword_1E10AF9C8;
LABEL_19:
      v73 = v34;
LABEL_31:
      sub_1E0FF0440(v73, v71, v72);
      goto LABEL_32;
    }

    sub_1E100EA8C(v28, type metadata accessor for EventAttribution);
LABEL_18:
    v71 = &qword_1ECE88F50;
    v72 = &qword_1E10B0610;
    goto LABEL_19;
  }

  v68 = v67(&v34[v66], 1, v18);
  v69 = v88;
  if (v68 != 1)
  {
    goto LABEL_18;
  }

  sub_1E0FF0440(v34, &qword_1ECE88C70, &qword_1E10AF9C8);
LABEL_24:
  v76 = v89[10];
  v77 = *(v92 + 48);
  sub_1E0FEDC50(a1 + v76, v69, &qword_1ECE88C80, &qword_1E10AF9D0);
  sub_1E0FEDC50(a2 + v76, v69 + v77, &qword_1ECE88C80, &qword_1E10AF9D0);
  v78 = *(v93 + 48);
  v79 = v87;
  if (v78(v69, 1, v87) == 1)
  {
    if (v78(v69 + v77, 1, v79) == 1)
    {
      sub_1E0FF0440(v69, &qword_1ECE88C80, &qword_1E10AF9D0);
LABEL_38:
      v81 = sub_1E0FFE0A4(*(a1 + v89[11]), *(a2 + v89[11]));
      return v81 & 1;
    }

    goto LABEL_29;
  }

  v80 = v91;
  sub_1E0FEDC50(v69, v91, &qword_1ECE88C80, &qword_1E10AF9D0);
  if (v78(v69 + v77, 1, v79) == 1)
  {
    sub_1E100EA8C(v80, type metadata accessor for TicketAttribution);
LABEL_29:
    v71 = &qword_1ECE88F40;
    v72 = &qword_1E10B0600;
LABEL_30:
    v73 = v69;
    goto LABEL_31;
  }

  v83 = v69 + v77;
  v84 = v90;
  sub_1E0FEDD58(v83, v90, type metadata accessor for TicketAttribution);
  if ((*v80 != *v84 || v80[1] != v84[1]) && (sub_1E10AE8FC() & 1) == 0)
  {
    sub_1E100EA8C(v84, type metadata accessor for TicketAttribution);
    sub_1E100EA8C(v80, type metadata accessor for TicketAttribution);
    v71 = &qword_1ECE88C80;
    v72 = &qword_1E10AF9D0;
    goto LABEL_30;
  }

  v85 = *(v87 + 20);
  v86 = sub_1E10ADB8C();
  sub_1E100EA8C(v84, type metadata accessor for TicketAttribution);
  sub_1E100EA8C(v80, type metadata accessor for TicketAttribution);
  sub_1E0FF0440(v69, &qword_1ECE88C80, &qword_1E10AF9D0);
  if (v86)
  {
    goto LABEL_38;
  }

LABEL_32:
  v81 = 0;
  return v81 & 1;
}

unint64_t sub_1E100E8E4()
{
  result = qword_1ECE89668;
  if (!qword_1ECE89668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE89668);
  }

  return result;
}

uint64_t sub_1E100E938(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECE89670, &qword_1E10B2BE0);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1E100E988(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECE88CF0, &qword_1E10AF9F8);
    sub_1E100ECA8(a2, type metadata accessor for Ticket);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1E100EA24(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1E100EA8C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1E100EAEC(uint64_t a1)
{
  result = sub_1E100ECA8(&qword_1EE17E758, type metadata accessor for Theater);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1E100EB8C(void *a1)
{
  a1[1] = sub_1E100ECA8(&qword_1EE17E770, type metadata accessor for Theater);
  a1[2] = sub_1E100ECA8(qword_1EE17E788, type metadata accessor for Theater);
  a1[3] = sub_1E100ECA8(&qword_1EE17E780, type metadata accessor for Theater);
  result = sub_1E100ECA8(&qword_1EE17E768, type metadata accessor for Theater);
  a1[4] = result;
  return result;
}

uint64_t sub_1E100ECA8(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1E100ED18()
{
  sub_1E100EE94();
  if (v0 <= 0x3F)
  {
    type metadata accessor for Time();
    if (v1 <= 0x3F)
    {
      sub_1E100EF28(319, &qword_1ECE88DE0, type metadata accessor for EventAttribution, MEMORY[0x1E69E6720]);
      if (v2 <= 0x3F)
      {
        sub_1E100EF28(319, qword_1ECE88DE8, type metadata accessor for TicketAttribution, MEMORY[0x1E69E6720]);
        if (v3 <= 0x3F)
        {
          sub_1E100EF28(319, &qword_1EE17E428, type metadata accessor for Ticket, MEMORY[0x1E69E62F8]);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_1E100EE94()
{
  if (!qword_1ECE89690)
  {
    type metadata accessor for Theater();
    sub_1E100ECA8(&qword_1EE17E760, type metadata accessor for Theater);
    v0 = type metadata accessor for EventCategory();
    if (!v1)
    {
      atomic_store(v0, &qword_1ECE89690);
    }
  }
}

void sub_1E100EF28(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t getEnumTagSinglePayload for Theater.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF9)
  {
    goto LABEL_17;
  }

  if (a2 + 7 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 7) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 7;
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

      return (*a1 | (v4 << 8)) - 7;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 7;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 8;
  v8 = v6 - 8;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for Theater.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 7) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF9)
  {
    v4 = 0;
  }

  if (a2 > 0xF8)
  {
    v5 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
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
    *result = a2 + 7;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1E100F0E0()
{
  result = qword_1ECE89698;
  if (!qword_1ECE89698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE89698);
  }

  return result;
}

unint64_t sub_1E100F138()
{
  result = qword_1ECE896A0;
  if (!qword_1ECE896A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE896A0);
  }

  return result;
}

unint64_t sub_1E100F190()
{
  result = qword_1ECE896A8;
  if (!qword_1ECE896A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE896A8);
  }

  return result;
}

uint64_t sub_1E100F1E4(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_1E10AE8FC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x79726F6765746163 && a2 == 0xE800000000000000 || (sub_1E10AE8FC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 1701667182 && a2 == 0xE400000000000000 || (sub_1E10AE8FC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 1701669236 && a2 == 0xE400000000000000 || (sub_1E10AE8FC() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x65756E6576 && a2 == 0xE500000000000000 || (sub_1E10AE8FC() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001E10BF480 == a2 || (sub_1E10AE8FC() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001E10BF4A0 == a2 || (sub_1E10AE8FC() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x7374656B636974 && a2 == 0xE700000000000000)
  {

    return 7;
  }

  else
  {
    v6 = sub_1E10AE8FC();

    if (v6)
    {
      return 7;
    }

    else
    {
      return 8;
    }
  }
}

uint64_t sub_1E100F46C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x636973756DLL;
  v3 = a1;
  if (a1 > 3u)
  {
    v9 = 0xD000000000000011;
    v10 = 0x80000001E10BF070;
    if (a1 != 6)
    {
      v9 = 0x66696C746867696ELL;
      v10 = 0xE900000000000065;
    }

    v11 = 0xE700000000000000;
    v12 = 0x72657461656874;
    if (a1 != 4)
    {
      v12 = 0x657665656C707061;
      v11 = 0xEA0000000000746ELL;
    }

    if (a1 <= 5u)
    {
      v7 = v12;
    }

    else
    {
      v7 = v9;
    }

    if (v3 <= 5)
    {
      v8 = v11;
    }

    else
    {
      v8 = v10;
    }
  }

  else
  {
    v4 = 0x6D646E6173747261;
    v5 = 0xEE00736D75657375;
    if (a1 != 2)
    {
      v4 = 0x65636E6164;
      v5 = 0xE500000000000000;
    }

    v6 = 0x74726F7073;
    if (!a1)
    {
      v6 = 0x636973756DLL;
    }

    if (a1 <= 1u)
    {
      v7 = v6;
    }

    else
    {
      v7 = v4;
    }

    if (v3 <= 1)
    {
      v8 = 0xE500000000000000;
    }

    else
    {
      v8 = v5;
    }
  }

  if (a2 > 3u)
  {
    if (a2 > 5u)
    {
      if (a2 == 6)
      {
        v13 = 0x80000001E10BF070;
        if (v7 != 0xD000000000000011)
        {
          goto LABEL_44;
        }
      }

      else
      {
        v13 = 0xE900000000000065;
        if (v7 != 0x66696C746867696ELL)
        {
          goto LABEL_44;
        }
      }
    }

    else if (a2 == 4)
    {
      v13 = 0xE700000000000000;
      if (v7 != 0x72657461656874)
      {
        goto LABEL_44;
      }
    }

    else
    {
      v13 = 0xEA0000000000746ELL;
      if (v7 != 0x657665656C707061)
      {
        goto LABEL_44;
      }
    }
  }

  else
  {
    if (a2 > 1u)
    {
      if (a2 == 2)
      {
        v13 = 0xEE00736D75657375;
        if (v7 != 0x6D646E6173747261)
        {
          goto LABEL_44;
        }

        goto LABEL_41;
      }

      v13 = 0xE500000000000000;
      v2 = 0x65636E6164;
    }

    else
    {
      v13 = 0xE500000000000000;
      if (a2)
      {
        if (v7 != 0x74726F7073)
        {
          goto LABEL_44;
        }

        goto LABEL_41;
      }
    }

    if (v7 != v2)
    {
LABEL_44:
      v14 = sub_1E10AE8FC();
      goto LABEL_45;
    }
  }

LABEL_41:
  if (v8 != v13)
  {
    goto LABEL_44;
  }

  v14 = 1;
LABEL_45:

  return v14 & 1;
}

uint64_t EventService.init()@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for ShazamEventsServiceConnection();
  v3 = swift_allocObject();
  *(v3 + 16) = 0;
  v19[3] = v2;
  v19[4] = &off_1F5BEF708;
  v19[0] = v3;
  type metadata accessor for EventConnection();
  v4 = swift_allocObject();
  __swift_mutable_project_boxed_opaque_existential_1(v19, v2);
  v5 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = (v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0) + 16);
  (*(v10 + 16))(v9);
  v11 = *v9;
  v18[3] = v2;
  v18[4] = &off_1F5BEF708;
  v18[0] = v11;
  sub_1E0FF48BC(v18, v4 + 16);
  swift_beginAccess();
  v12 = *(v4 + 40);
  v13 = *(v4 + 48);
  __swift_mutable_project_boxed_opaque_existential_1(v4 + 16, v12);
  v14 = *(v13 + 16);

  v14(v15, v12, v13);
  swift_endAccess();
  __swift_destroy_boxed_opaque_existential_1(v18);
  result = __swift_destroy_boxed_opaque_existential_1(v19);
  *a1 = v4;
  return result;
}

uint64_t __swift_mutable_project_boxed_opaque_existential_1(uint64_t a1, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return result;
}

uint64_t EventService.currentVersion.getter(uint64_t a1)
{
  v3 = *v1;
  *(v2 + 16) = a1;
  *(v2 + 24) = v3;
  return MEMORY[0x1EEE6DFA0](sub_1E100F8F4, 0, 0);
}

uint64_t sub_1E100F8F4()
{
  v1 = *(MEMORY[0x1E69E8920] + 4);
  v2 = swift_task_alloc();
  v0[4] = v2;
  v3 = type metadata accessor for EventService.Version();
  *v2 = v0;
  v2[1] = sub_1E100F9CC;
  v4 = v0[2];
  v5 = v0[3];

  return MEMORY[0x1EEE6DE38](v4, 0, 0, 0xD000000000000010, 0x80000001E10BFB20, sub_1E1014014, v5, v3);
}

uint64_t sub_1E100F9CC()
{
  v2 = *(*v1 + 32);
  v3 = *v1;
  *(v3 + 40) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1E100FB00, 0, 0);
  }

  else
  {
    v4 = *(v3 + 8);

    return v4();
  }
}

uint64_t EventService.event<A, B>(identifier:ofType:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v9 + 152) = v14;
  *(v9 + 136) = a7;
  *(v9 + 144) = a8;
  *(v9 + 120) = a4;
  *(v9 + 128) = a6;
  *(v9 + 104) = a2;
  *(v9 + 112) = a3;
  *(v9 + 96) = a1;
  v10 = *a5;
  v11 = a5[1];
  *(v9 + 168) = v15;
  *(v9 + 176) = v10;
  *(v9 + 232) = *(a5 + 16);
  v12 = *v8;
  *(v9 + 184) = v11;
  *(v9 + 192) = v12;
  return MEMORY[0x1EEE6DFA0](sub_1E100FB6C, 0, 0);
}

uint64_t sub_1E100FB6C()
{
  v1 = *(v0 + 232);
  v3 = *(v0 + 176);
  v2 = *(v0 + 184);
  v4 = *(v0 + 136);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE896B0, &unk_1E10BB510);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1E10B2E70;
  *(inited + 32) = v3;
  *(inited + 40) = v2;
  *(inited + 48) = v1;

  v6 = sub_1E1017314(inited);
  swift_setDeallocating();
  sub_1E1017410(inited + 32);
  if (v4)
  {
    v7 = 0;
    while (1)
    {
      v9 = *(*(v0 + 128) + 8 * v7);
      v11 = *v9;
      v10 = *(v9 + 8);
      v12 = *(v9 + 16);

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v14 = sub_1E1014178(v11, v10);
      v22 = v6[2];
      v23 = (v15 & 1) == 0;
      v24 = __OFADD__(v22, v23);
      v25 = v22 + v23;
      if (v24)
      {
        __break(1u);
LABEL_22:
        __break(1u);
        return MEMORY[0x1EEE6DE38](v14, v15, v16, v17, v18, v19, v20, v21);
      }

      v26 = v15;
      if (v6[3] < v25)
      {
        break;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_10;
      }

      v30 = v14;
      sub_1E10164B8();
      v14 = v30;
      if (v26)
      {
LABEL_3:
        v8 = v14;

        *(v6[7] + v8) = v12;
        goto LABEL_4;
      }

LABEL_11:
      v6[(v14 >> 6) + 8] |= 1 << v14;
      v27 = (v6[6] + 16 * v14);
      *v27 = v11;
      v27[1] = v10;
      *(v6[7] + v14) = v12;
      v28 = v6[2];
      v24 = __OFADD__(v28, 1);
      v29 = v28 + 1;
      if (v24)
      {
        goto LABEL_22;
      }

      v6[2] = v29;
LABEL_4:
      if (++v7 == *(v0 + 136))
      {
        goto LABEL_15;
      }
    }

    sub_1E1014C70(v25, isUniquelyReferenced_nonNull_native);
    v14 = sub_1E1014178(v11, v10);
    if ((v26 & 1) != (v15 & 1))
    {

      return sub_1E10AE94C();
    }

LABEL_10:
    if (v26)
    {
      goto LABEL_3;
    }

    goto LABEL_11;
  }

LABEL_15:
  *(v0 + 200) = v6;
  v31 = *(v0 + 192);
  v33 = *(v0 + 112);
  v32 = *(v0 + 120);
  v34 = swift_task_alloc();
  *(v0 + 208) = v34;
  v34[2] = v31;
  v34[3] = v33;
  v34[4] = v32;
  v34[5] = v6;
  v35 = *(MEMORY[0x1E69E8920] + 4);
  v36 = swift_task_alloc();
  *(v0 + 216) = v36;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE893C0, qword_1E10B23B0);
  *v36 = v0;
  v36[1] = sub_1E100FE6C;
  v19 = sub_1E1017478;
  v14 = v0 + 72;
  v18 = 0x80000001E10BFB40;
  v15 = 0;
  v16 = 0;
  v17 = 0xD00000000000001FLL;
  v20 = v34;

  return MEMORY[0x1EEE6DE38](v14, v15, v16, v17, v18, v19, v20, v21);
}

uint64_t sub_1E100FE6C()
{
  v2 = *v1;
  v3 = *(*v1 + 216);
  v8 = *v1;
  *(*v1 + 224) = v0;

  if (v0)
  {
    v4 = sub_1E1010170;
  }

  else
  {
    v5 = *(v2 + 200);
    v6 = *(v2 + 208);

    v4 = sub_1E100FF90;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1E100FF90()
{
  v26 = v0;
  v1 = *(v0 + 184);
  v2 = *(v0 + 232);
  v3 = *(v0 + 160);
  v4 = *(v0 + 136);
  v5 = *(v0 + 144);
  v6 = *(v0 + 96);
  v7 = *(v0 + 72);
  v21 = *(v0 + 192);
  v23 = *(v0 + 176);
  v24 = v1;
  v25 = v2;
  *(v0 + 80) = sub_1E109B324(&v23, v7);
  sub_1E10AE20C();
  swift_getWitnessTable();
  sub_1E10AE40C();

  if (v4)
  {
    v8 = 0;
    v9 = *(v0 + 152) & 0xFFFFFFFFFFFFFFFELL;
    v10 = *(v0 + 168) & 0xFFFFFFFFFFFFFFFELL;
    do
    {
      v11 = *(v0 + 136);
      v12 = *(v9 + 8 * v8);
      v13 = *(v10 + 8 * v8);
      v14 = *(*(v0 + 104) + 8 * v8);
      v15 = *(*(v0 + 128) + 8 * v8);
      v17 = *v15;
      v16 = *(v15 + 8);
      LOBYTE(v15) = *(v15 + 16);
      v22 = *(v0 + 192);
      v23 = v17;
      v24 = v16;
      v25 = v15;

      v18 = sub_1E109B324(&v23, v7);

      *(v0 + 88) = v18;
      sub_1E10AE20C();
      swift_getWitnessTable();
      sub_1E10AE40C();

      ++v8;
    }

    while (v8 != v11);
  }

  v19 = *(v0 + 8);

  return v19();
}

uint64_t sub_1E1010170()
{
  v1 = v0[25];
  v2 = v0[26];

  v3 = v0[1];
  v4 = v0[28];

  return v3();
}

uint64_t EventService.schedule<A, B>(venueIdentifier:ofType:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v9 + 632) = v28;
  *(v9 + 624) = v27;
  *(v9 + 616) = a8;
  *(v9 + 608) = a7;
  *(v9 + 600) = a6;
  *(v9 + 592) = a5;
  *(v9 + 584) = a3;
  *(v9 + 576) = a2;
  *(v9 + 568) = a1;
  if (a6 == 1)
  {
    v12 = *(a8 & 0xFFFFFFFFFFFFFFFELL);
    TupleTypeMetadata = sub_1E10AE20C();
  }

  else
  {
    v15 = swift_task_alloc();
    if (a6)
    {
      v16 = (a8 & 0xFFFFFFFFFFFFFFFELL);
      v17 = v15;
      v18 = a6;
      do
      {
        v19 = *v16++;
        *v17++ = sub_1E10AE20C();
        --v18;
      }

      while (v18);
    }

    TupleTypeMetadata = swift_getTupleTypeMetadata();
  }

  *(v9 + 640) = TupleTypeMetadata;
  v20 = *(*(TupleTypeMetadata - 8) + 64) + 15;
  *(v9 + 648) = swift_task_alloc();
  v21 = sub_1E10ADCBC();
  *(v9 + 656) = v21;
  v22 = *(v21 - 8);
  *(v9 + 664) = v22;
  v23 = *(v22 + 64) + 15;
  *(v9 + 672) = swift_task_alloc();
  v24 = *(a4 + 8);
  *(v9 + 680) = *a4;
  *(v9 + 688) = v24;
  *(v9 + 736) = *(a4 + 16);
  *(v9 + 696) = *v8;

  return MEMORY[0x1EEE6DFA0](sub_1E10103AC, 0, 0);
}

uint64_t sub_1E10103AC()
{
  v1 = *(v0 + 736);
  v2 = *(v0 + 688);
  v3 = *(v0 + 680);
  v4 = *(v0 + 600);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE896B0, &unk_1E10BB510);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1E10B2E70;
  *(inited + 32) = v3;
  *(inited + 40) = v2;
  *(inited + 48) = v1;

  v6 = sub_1E1017314(inited);
  swift_setDeallocating();
  sub_1E1017410(inited + 32);
  if (v4)
  {
    v7 = 0;
    while (1)
    {
      v9 = *(*(v0 + 592) + 8 * v7);
      v11 = *v9;
      v10 = *(v9 + 8);
      v12 = *(v9 + 16);

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v14 = sub_1E1014178(v11, v10);
      v22 = v6[2];
      v23 = (v15 & 1) == 0;
      v24 = __OFADD__(v22, v23);
      v25 = v22 + v23;
      if (v24)
      {
        __break(1u);
LABEL_22:
        __break(1u);
        return MEMORY[0x1EEE6DE38](v14, v15, v16, v17, v18, v19, v20, v21);
      }

      v26 = v15;
      if (v6[3] < v25)
      {
        break;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_10;
      }

      v30 = v14;
      sub_1E10164B8();
      v14 = v30;
      if (v26)
      {
LABEL_3:
        v8 = v14;

        *(v6[7] + v8) = v12;
        goto LABEL_4;
      }

LABEL_11:
      v6[(v14 >> 6) + 8] |= 1 << v14;
      v27 = (v6[6] + 16 * v14);
      *v27 = v11;
      v27[1] = v10;
      *(v6[7] + v14) = v12;
      v28 = v6[2];
      v24 = __OFADD__(v28, 1);
      v29 = v28 + 1;
      if (v24)
      {
        goto LABEL_22;
      }

      v6[2] = v29;
LABEL_4:
      if (++v7 == *(v0 + 600))
      {
        goto LABEL_15;
      }
    }

    sub_1E1014C70(v25, isUniquelyReferenced_nonNull_native);
    v14 = sub_1E1014178(v11, v10);
    if ((v26 & 1) != (v15 & 1))
    {

      return sub_1E10AE94C();
    }

LABEL_10:
    if (v26)
    {
      goto LABEL_3;
    }

    goto LABEL_11;
  }

LABEL_15:
  *(v0 + 704) = v6;
  v31 = *(v0 + 696);
  v32 = *(v0 + 672);
  v33 = *(v0 + 584);
  v34 = *(v0 + 576);
  sub_1E10ADC9C();
  v35 = swift_task_alloc();
  *(v0 + 712) = v35;
  v35[2] = v31;
  v35[3] = v34;
  v35[4] = v33;
  v35[5] = v6;
  v35[6] = v32;
  v36 = *(MEMORY[0x1E69E8920] + 4);
  v37 = swift_task_alloc();
  *(v0 + 720) = v37;
  *v37 = v0;
  v37[1] = sub_1E10106B4;
  v21 = &type metadata for VenueScheduleXPCValueContainer.VenueResult;
  v19 = sub_1E1017484;
  v14 = v0 + 16;
  v18 = 0x80000001E10BFB60;
  v15 = 0;
  v16 = 0;
  v17 = 0xD000000000000031;
  v20 = v35;

  return MEMORY[0x1EEE6DE38](v14, v15, v16, v17, v18, v19, v20, v21);
}

uint64_t sub_1E10106B4()
{
  v2 = *v1;
  v3 = *(*v1 + 720);
  v10 = *v1;
  *(*v1 + 728) = v0;

  if (v0)
  {
    v4 = sub_1E1010A60;
  }

  else
  {
    v5 = v2[88];
    v6 = v2[84];
    v7 = v2[83];
    v8 = v2[82];

    (*(v7 + 8))(v6, v8);
    v4 = sub_1E10107FC;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1E10107FC()
{
  v52 = v0;
  v1 = *(v0 + 112);
  v3 = *(v0 + 128);
  v2 = *(v0 + 144);
  *(v0 + 296) = v3;
  *(v0 + 312) = v2;
  v4 = *(v0 + 144);
  *(v0 + 328) = *(v0 + 160);
  v5 = *(v0 + 48);
  *(v0 + 232) = *(v0 + 64);
  v6 = *(v0 + 64);
  *(v0 + 248) = *(v0 + 80);
  v7 = *(v0 + 80);
  v9 = *(v0 + 96);
  v8 = *(v0 + 112);
  *(v0 + 264) = v9;
  *(v0 + 280) = v8;
  v10 = *(v0 + 32);
  *(v0 + 184) = *(v0 + 16);
  v11 = *(v0 + 16);
  v12 = *(v0 + 32);
  *(v0 + 200) = v10;
  *(v0 + 216) = *(v0 + 48);
  v47[6] = v1;
  v47[7] = v3;
  v13 = *(v0 + 160);
  v47[8] = v4;
  v47[9] = v13;
  v47[2] = v5;
  v47[3] = v6;
  v47[4] = v7;
  v47[5] = v9;
  v14 = *(v0 + 696);
  v15 = *(v0 + 736);
  v16 = *(v0 + 688);
  v17 = *(v0 + 680);
  v18 = *(v0 + 624);
  v19 = *(v0 + 608);
  v20 = *(v0 + 600);
  v21 = *(v0 + 176);
  *(v0 + 344) = v21;
  v47[0] = v11;
  v47[1] = v12;
  v48 = v14;
  v49 = v17;
  v50 = v16;
  v51 = v15;
  v22 = v21;
  sub_1E0FE6720(v0 + 184, v0 + 352);
  v45 = v22;
  v44 = sub_1E109B324(&v49, v22);
  v46 = swift_task_alloc();
  if (v20)
  {
    v25 = 0;
    v26 = *(v0 + 616) & 0xFFFFFFFFFFFFFFFELL;
    v27 = *(v0 + 632) & 0xFFFFFFFFFFFFFFFELL;
    v28 = 32;
    do
    {
      v38 = *(v0 + 600);
      if (v38 == 1)
      {
        v29 = 0;
      }

      else
      {
        v29 = *(*(v0 + 640) + v28);
      }

      v30 = *(v26 + 8 * v25);
      v31 = *(v27 + 8 * v25);
      v32 = *(v0 + 592);
      v33 = (*(v0 + 648) + v29);
      v48 = *(v0 + 696);
      v34 = *(v32 + 8 * v25);
      v36 = *v34;
      v35 = *(v34 + 8);
      LOBYTE(v34) = *(v34 + 16);
      v49 = v36;
      v50 = v35;
      v51 = v34;

      v37 = sub_1E109B324(&v49, v45);

      *v33 = v37;
      v46[v25++] = v33;
      v28 += 16;
    }

    while (v25 != v38);
  }

  v39 = *(v0 + 712);
  v40 = *(v0 + 672);
  v41 = *(v0 + 648);
  sub_1E0FF5548(v47, v44, v46, *(v0 + 600), *(v0 + 608), *(v0 + 616), *(v0 + 624), *(v0 + 632), *(v0 + 568), v23, v24);
  sub_1E100A3C4(v0 + 184);

  v42 = *(v0 + 8);

  return v42();
}

uint64_t sub_1E1010A60()
{
  v1 = v0[89];
  v2 = v0[88];
  v3 = v0[84];
  v4 = v0[83];
  v5 = v0[82];
  v6 = v0[81];

  (*(v4 + 8))(v3, v5);

  v7 = v0[1];
  v8 = v0[91];

  return v7();
}

uint64_t EventService.schedule<A>(participantIdentifier:ofType:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t a6)
{
  *(v7 + 104) = a5;
  *(v7 + 112) = a6;
  *(v7 + 88) = a2;
  *(v7 + 96) = a3;
  *(v7 + 80) = a1;
  v9 = sub_1E10ADCBC();
  *(v7 + 120) = v9;
  v10 = *(v9 - 8);
  *(v7 + 128) = v10;
  v11 = *(v10 + 64) + 15;
  v12 = swift_task_alloc();
  v13 = *a4;
  v14 = a4[1];
  *(v7 + 136) = v12;
  *(v7 + 144) = v13;
  *(v7 + 200) = *(a4 + 16);
  v15 = *v6;
  *(v7 + 152) = v14;
  *(v7 + 160) = v15;

  return MEMORY[0x1EEE6DFA0](sub_1E1010BF8, 0, 0);
}

uint64_t sub_1E1010BF8()
{
  v1 = *(v0 + 200);
  v2 = *(v0 + 152);
  v3 = *(v0 + 160);
  v4 = *(v0 + 136);
  v5 = *(v0 + 144);
  v7 = *(v0 + 88);
  v6 = *(v0 + 96);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE896B0, &unk_1E10BB510);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1E10B2E70;
  *(inited + 32) = v5;
  *(inited + 40) = v2;
  *(inited + 48) = v1;

  v9 = sub_1E1017314(inited);
  *(v0 + 168) = v9;
  swift_setDeallocating();
  sub_1E1017410(inited + 32);
  sub_1E10ADC9C();
  v10 = swift_task_alloc();
  *(v0 + 176) = v10;
  v10[2] = v3;
  v10[3] = v7;
  v10[4] = v6;
  v10[5] = v9;
  v10[6] = v4;
  v11 = *(MEMORY[0x1E69E8920] + 4);
  v12 = swift_task_alloc();
  *(v0 + 184) = v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE89410, qword_1E10B2400);
  *v12 = v0;
  v12[1] = sub_1E1010D98;

  return MEMORY[0x1EEE6DE38](v0 + 72, 0, 0, 0xD000000000000037, 0x80000001E10BFBA0, sub_1E101749C, v10, v13);
}

uint64_t sub_1E1010D98()
{
  v2 = *v1;
  v3 = *(*v1 + 184);
  v8 = *v1;
  *(*v1 + 192) = v0;

  if (v0)
  {
    v4 = sub_1E1010FC8;
  }

  else
  {
    v5 = *(v2 + 168);
    v6 = *(v2 + 176);

    v4 = sub_1E1010EBC;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1E1010EBC()
{
  v16 = v0;
  v1 = *(v0 + 192);
  v2 = *(v0 + 200);
  v4 = *(v0 + 152);
  v3 = *(v0 + 160);
  v5 = *(v0 + 144);
  v7 = *(v0 + 104);
  v6 = *(v0 + 112);
  v8 = *(v0 + 72);
  v9 = *(v0 + 80);
  (*(*(v0 + 128) + 8))(*(v0 + 136), *(v0 + 120));
  v14[0] = v5;
  v14[1] = v4;
  v15 = v2;
  sub_1E109B560(v14, v8, v7, v6, v9);
  if (v1)
  {

    v10 = *(v0 + 136);
  }

  else
  {
    v12 = *(v0 + 136);
  }

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_1E1010FC8()
{
  v1 = v0[21];
  v2 = v0[22];
  v4 = v0[16];
  v3 = v0[17];
  v5 = v0[15];

  (*(v4 + 8))(v3, v5);
  v6 = v0[24];
  v7 = v0[17];

  v8 = v0[1];

  return v8();
}

uint64_t EventService.perform<A, B, C>(requests:batchSize:ofType:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t *a4@<X3>, uint64_t **a5@<X4>, char *a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v109 = a7;
  v14 = a6;
  LODWORD(v106) = a3;
  v114 = a2;
  v115 = a1;
  v121 = a6;
  v122 = a8;
  v123 = a10;
  v124 = a12;
  v125 = a13;
  v18 = type metadata accessor for EventService.PartialEventResult();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECE88F88, &qword_1E10B07B0);
  v120 = v18;
  v19 = *(*(sub_1E10AE32C() - 8) + 64);
  MEMORY[0x1EEE9AC00](v20, v21);
  v108 = &v94[-v24];
  v118 = a12;
  v119 = a8;
  v112 = a10;
  v113 = a13;
  v110 = a9;
  if (v14 == 1)
  {
    v25 = *(a10 & 0xFFFFFFFFFFFFFFFELL);
    v26 = *(a13 & 0xFFFFFFFFFFFFFFFELL);
    TupleTypeMetadata = type metadata accessor for EventService.RequestType();
  }

  else
  {
    MEMORY[0x1EEE9AC00](v22, v23);
    v31 = v14;
    if (v14)
    {
      v32 = (v112 & 0xFFFFFFFFFFFFFFFELL);
      v33 = (v113 & 0xFFFFFFFFFFFFFFFELL);
      v34 = &v94[-((v30 + 15) & 0xFFFFFFFFFFFFFFF0)];
      v35 = v31;
      do
      {
        v36 = *v32++;
        v37 = *v33++;
        *v34++ = type metadata accessor for EventService.RequestType();
        --v35;
      }

      while (v35);
    }

    v14 = v31;
    TupleTypeMetadata = swift_getTupleTypeMetadata();
  }

  v107 = v94;
  v116 = TupleTypeMetadata;
  v102 = *(TupleTypeMetadata - 8);
  v38 = *(v102 + 64);
  MEMORY[0x1EEE9AC00](v28, v29);
  v100 = &v94[-((v39 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v40 = sub_1E10AE3BC();
  v105 = v94;
  v104 = v40;
  v103 = *(v40 - 8);
  v41 = *(v103 + 64);
  MEMORY[0x1EEE9AC00](v42, v43);
  v98 = &v94[-((v44 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v101 = v94;
  MEMORY[0x1EEE9AC00](v45, v46);
  v99 = &v94[-v47];
  v48 = *a4;
  v49 = a4[1];
  v50 = *(a4 + 16);
  v117 = *v117;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE896B0, &unk_1E10BB510);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1E10B2E70;
  v97 = v48;
  *(inited + 32) = v48;
  *(inited + 40) = v49;
  v95 = v50;
  *(inited + 48) = v50;
  v96 = v49;

  v52 = sub_1E1017314(inited);
  swift_setDeallocating();
  sub_1E1017410(inited + 32);
  v111 = v14;
  if (!v14)
  {
LABEL_22:

    v73 = v109;
    if (v106)
    {
      v114 = sub_1E10AE1EC();
    }

    v74 = v111;
    v75 = v118;
    v76 = v100;
    if (v111)
    {
      v77 = (v116 + 32);
      v78 = v111;
      do
      {
        if (v74 == 1)
        {
          v79 = 0;
        }

        else
        {
          v79 = *v77;
        }

        v80 = *a5++;
        v81 = &v76[v79];
        v82 = *(v80 + 8);
        v83 = *(v80 + 16);
        *v81 = *v80;
        *(v81 + 1) = v82;
        v81[16] = v83;

        v77 += 4;
        --v78;
      }

      while (v78);
    }

    v106 = v94;
    MEMORY[0x1EEE9AC00](v71, v72);
    *&v94[-128] = v74;
    *&v94[-120] = v73;
    v84 = v112;
    *&v94[-112] = v119;
    *&v94[-104] = v84;
    *&v94[-96] = a11;
    *&v94[-88] = v75;
    v85 = v114;
    v86 = v115;
    *&v94[-80] = v113;
    *&v94[-72] = v86;
    v87 = v117;
    *&v94[-64] = v117;
    *&v94[-56] = v87;
    *&v94[-48] = v52;
    *&v94[-40] = v85;
    v88 = v96;
    *&v94[-32] = v97;
    *&v94[-24] = v88;
    v94[-16] = v95;
    *&v94[-8] = v76;
    sub_1E1012C20(v108);
    v89 = v99;
    sub_1E10AE3CC();
    (*(v102 + 8))(v76, v116);
    v90 = v103;
    v91 = v98;
    v92 = v104;
    (*(v103 + 16))(v98, v89, v104);
    sub_1E100BA00(v91);

    return (*(v90 + 8))(v89, v92);
  }

  v53 = a5;
  v54 = v14;
  while (1)
  {
    v56 = **v53;
    v55 = (*v53)[1];
    v57 = *(*v53 + 16);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v121 = v52;
    v60 = sub_1E1014178(v56, v55);
    v61 = v52[2];
    v62 = (v59 & 1) == 0;
    v63 = v61 + v62;
    if (__OFADD__(v61, v62))
    {
      break;
    }

    v64 = v59;
    if (v52[3] >= v63)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        if (v59)
        {
          goto LABEL_9;
        }
      }

      else
      {
        sub_1E10164B8();
        if (v64)
        {
          goto LABEL_9;
        }
      }
    }

    else
    {
      sub_1E1014C70(v63, isUniquelyReferenced_nonNull_native);
      v65 = sub_1E1014178(v56, v55);
      if ((v64 & 1) != (v66 & 1))
      {
        goto LABEL_33;
      }

      v60 = v65;
      if (v64)
      {
LABEL_9:

        v52 = v121;
        *(*(v121 + 7) + v60) = v57;
        goto LABEL_10;
      }
    }

    v52 = v121;
    *&v121[8 * (v60 >> 6) + 64] |= 1 << v60;
    v67 = (v52[6] + 16 * v60);
    *v67 = v56;
    v67[1] = v55;
    *(v52[7] + v60) = v57;
    v68 = v52[2];
    v69 = __OFADD__(v68, 1);
    v70 = v68 + 1;
    if (v69)
    {
      goto LABEL_32;
    }

    v52[2] = v70;
LABEL_10:
    ++v53;
    if (!--v54)
    {
      goto LABEL_22;
    }
  }

  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  result = sub_1E10AE94C();
  __break(1u);
  return result;
}

uint64_t sub_1E1011784(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __n128 a9, __n128 a10, unsigned __int8 a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  v99 = a7;
  v100 = a8;
  v98 = a6;
  v101 = a4;
  v102 = a5;
  v103 = a3;
  v104 = a2;
  v19 = a18;
  v20 = a15;
  v21 = 8 * a13;
  v105 = a1;
  v112 = a15;
  v113 = a18;
  if (a13 == 1)
  {
    v22 = a1;
    v23 = *(a16 & 0xFFFFFFFFFFFFFFFELL);
    v24 = *(a19 & 0xFFFFFFFFFFFFFFFELL);
    TupleTypeMetadata = type metadata accessor for EventService.RequestType();
  }

  else
  {
    MEMORY[0x1EEE9AC00](a9, a10);
    if (a13)
    {
      v28 = (a16 & 0xFFFFFFFFFFFFFFFELL);
      v29 = (a19 & 0xFFFFFFFFFFFFFFFELL);
      v30 = (&v88 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
      v31 = a13;
      do
      {
        v32 = *v28++;
        v33 = *v29++;
        *v30++ = type metadata accessor for EventService.RequestType();
        --v31;
      }

      while (v31);
    }

    TupleTypeMetadata = swift_getTupleTypeMetadata();
    v20 = v112;
    v19 = v113;
    v22 = v105;
  }

  v96 = *(TupleTypeMetadata - 8);
  v34 = *(v96 + 64);
  MEMORY[0x1EEE9AC00](v26, v27);
  v93 = v35;
  v36 = &v88 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v114 = a13;
  v115 = v20;
  v110 = a16;
  v116 = a16;
  v117 = v19;
  v118 = a19;
  type metadata accessor for EventService.PartialEventResult();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECE88F88, &qword_1E10B07B0);
  v37 = sub_1E10AE36C();
  v97 = &v88;
  v38 = *(v37 - 8);
  v39 = *(v38 + 64);
  MEMORY[0x1EEE9AC00](v40, v41);
  v108 = &v88 - v42;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECE88C00, &unk_1E10B94F0);
  v95 = &v88;
  v44 = (*(*(v43 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v45, v46);
  v48 = &v88 - v47;
  v94 = &v88;
  MEMORY[0x1EEE9AC00](v49, v50);
  v51 = (&v88 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (a13)
  {
    v52 = (TupleTypeMetadata + 32);
    v53 = v51;
    v54 = a13;
    do
    {
      if (a13 == 1)
      {
        v55 = 0;
      }

      else
      {
        v55 = *v52;
      }

      *v53++ = a12 + v55;
      v52 += 4;
      --v54;
    }

    while (v54);
  }

  v111 = a19;
  v106 = a14;
  v107 = a17;
  v91 = a11;
  v56 = sub_1E10AE29C();
  v57 = *(*(v56 - 8) + 56);
  v92 = v48;
  v57(v48, 1, 1, v56);
  v58 = *(v38 + 16);
  v109 = v37;
  v58(v108, v22, v37);
  if (a13)
  {
    v59 = (TupleTypeMetadata + 32);
    v60 = a13;
    do
    {
      if (a13 == 1)
      {
        v61 = 0;
      }

      else
      {
        v61 = *v59;
      }

      v62 = *v51++;
      v63 = &v36[v61];
      v64 = *(v62 + 8);
      v65 = *(v62 + 16);
      *v63 = *v62;
      *(v63 + 1) = v64;
      v63[16] = v65;

      v59 += 4;
      --v60;
    }

    while (v60);
  }

  v66 = (*(v38 + 80) + 88) & ~*(v38 + 80);
  v67 = (v39 + v66 + 7) & 0xFFFFFFFFFFFFFFF8;
  v68 = (v67 + 15) & 0xFFFFFFFFFFFFFFF8;
  v69 = (v68 + 15) & 0xFFFFFFFFFFFFFFF8;
  v90 = TupleTypeMetadata;
  v70 = (v69 + 31) & 0xFFFFFFFFFFFFFFF8;
  v71 = v96;
  v89 = (*(v96 + 80) + v70 + 17) & ~*(v96 + 80);
  v72 = swift_allocObject();
  *(v72 + 2) = 0;
  *(v72 + 3) = 0;
  v73 = v106;
  *(v72 + 4) = a13;
  *(v72 + 5) = v73;
  *(v72 + 6) = v112;
  MetadataPack = swift_allocateMetadataPack();
  v75 = v107;
  *(v72 + 7) = MetadataPack;
  *(v72 + 8) = v75;
  *(v72 + 9) = v113;
  *(v72 + 10) = swift_allocateWitnessTablePack();
  (*(v38 + 32))(&v72[v66], v108, v109);
  v76 = v103;
  *&v72[v67] = v104;
  *&v72[v68] = v76;
  v77 = &v72[v69];
  v78 = v102;
  *v77 = v101;
  *(v77 + 1) = v78;
  v79 = v99;
  *(v77 + 2) = v98;
  v80 = &v72[v70];
  v81 = v100;
  *v80 = v79;
  *(v80 + 1) = v81;
  v80[16] = v91;
  (*(v71 + 32))(&v72[v89], v36, v90);

  v82 = sub_1E0FE579C(0, 0, v92, &unk_1E10B31F8, v72);
  v83 = swift_allocObject();
  v84 = v106;
  v83[2] = a13;
  v83[3] = v84;
  v83[4] = v112;
  v85 = swift_allocateMetadataPack();
  v86 = v107;
  v83[5] = v85;
  v83[6] = v86;
  v83[7] = v113;
  v83[8] = swift_allocateWitnessTablePack();
  v83[9] = v82;
  return sub_1E10AE31C();
}

uint64_t sub_1E1011DAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 16) = v51;
  *(v8 + 272) = v56;
  *(v8 + 280) = v57;
  *(v8 + 256) = v54;
  *(v8 + 264) = v55;
  *(v8 + 240) = v52;
  *(v8 + 248) = v53;
  *(v8 + 113) = v49;
  *(v8 + 224) = v48;
  *(v8 + 232) = v51;
  *(v8 + 208) = v47;
  *(v8 + 192) = a7;
  *(v8 + 200) = a8;
  *(v8 + 176) = a5;
  *(v8 + 184) = a6;
  *(v8 + 168) = a4;
  *(v8 + 24) = v53;
  *(v8 + 32) = v54;
  *(v8 + 40) = v56;
  *(v8 + 48) = v57;
  v9 = type metadata accessor for EventService.PartialEventResult();
  *(v8 + 288) = v9;
  *(v8 + 296) = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECE88F88, &qword_1E10B07B0);
  v10 = sub_1E10AEA1C();
  *(v8 + 304) = v10;
  v11 = *(v10 - 8);
  *(v8 + 312) = v11;
  v12 = *(v11 + 64) + 15;
  *(v8 + 320) = swift_task_alloc();
  if (v51 == 1)
  {
    v13 = *(v54 & 0xFFFFFFFFFFFFFFFELL);
    v14 = *(v57 & 0xFFFFFFFFFFFFFFFELL);
    type metadata accessor for PartialEvent();
    TupleTypeMetadata = sub_1E10AE20C();
    v16 = 16;
  }

  else
  {
    v16 = (8 * v51 + 15) & 0xFFFFFFFFFFFFFFF0;
    v17 = swift_task_alloc();
    if (v51)
    {
      v18 = (v54 & 0xFFFFFFFFFFFFFFFELL);
      v19 = (v57 & 0xFFFFFFFFFFFFFFFELL);
      v20 = v17;
      v21 = v51;
      do
      {
        v22 = *v18++;
        v23 = *v19++;
        type metadata accessor for PartialEvent();
        *v20++ = sub_1E10AE20C();
        --v21;
      }

      while (v21);
    }

    TupleTypeMetadata = swift_getTupleTypeMetadata();
  }

  *(v8 + 328) = v16;
  *(v8 + 336) = TupleTypeMetadata;
  v24 = *(*(TupleTypeMetadata - 8) + 64) + 15;
  *(v8 + 344) = swift_task_alloc();
  v25 = *(*(v9 - 8) + 64) + 15;
  *(v8 + 352) = swift_task_alloc();
  v26 = sub_1E10AE30C();
  *(v8 + 360) = v26;
  v27 = *(v26 - 8);
  *(v8 + 368) = v27;
  v28 = *(v27 + 64) + 15;
  *(v8 + 376) = swift_task_alloc();
  *(v8 + 384) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECE89740, &unk_1E10BCCC0);
  *(v8 + 392) = swift_getTupleTypeMetadata2();
  v29 = *(*(sub_1E10AE4EC() - 8) + 64) + 15;
  *(v8 + 400) = swift_task_alloc();
  v30 = sub_1E10AE3BC();
  *(v8 + 408) = v30;
  v31 = *(v30 - 8);
  *(v8 + 416) = v31;
  v32 = *(v31 + 64) + 15;
  *(v8 + 424) = swift_task_alloc();
  v33 = sub_1E10AE3AC();
  *(v8 + 432) = v33;
  v34 = *(v33 - 8);
  *(v8 + 440) = v34;
  v35 = *(v34 + 64) + 15;
  *(v8 + 448) = swift_task_alloc();
  v36 = swift_task_alloc();
  *(v8 + 456) = v36;
  if (v51)
  {
    v37 = v36;
    for (i = 0; i != v51; ++i)
    {
      if (v51 == 1)
      {
        v39 = 0;
      }

      else
      {
        v40 = swift_task_alloc();
        for (j = 0; j != v51; ++j)
        {
          v42 = *((v54 & 0xFFFFFFFFFFFFFFFELL) + 8 * j);
          v43 = *((v57 & 0xFFFFFFFFFFFFFFFELL) + 8 * j);
          *(v40 + 8 * j) = type metadata accessor for EventService.RequestType();
        }

        v44 = swift_getTupleTypeMetadata();

        v39 = *(v44 + 16 * i + 32);
      }

      *(v37 + 8 * i) = v50 + v39;
    }
  }

  return MEMORY[0x1EEE6DFA0](sub_1E10122A0, 0, 0);
}

uint64_t sub_1E10122A0()
{
  v0[18] = v0[22];
  v1 = v0[30];
  sub_1E10AE20C();
  swift_getWitnessTable();
  if (sub_1E10AE41C())
  {
    v2 = v0[56];
    v3 = v0[57];
    v4 = v0[53];
    v5 = v0[50];
    v7 = v0[47];
    v6 = v0[48];
    v9 = v0[43];
    v8 = v0[44];
    v10 = v0[40];
    v11 = v0[34];
    v12 = v0[35];
    v13 = v0[32];
    v14 = v0[33];
    v15 = v0[30];
    v16 = v0[31];
    v17 = v0[29];
    v18 = v0[21];
    sub_1E1012BA0();

    v19 = v0[1];

    return v19();
  }

  else
  {
    v30 = v0[23];
    sub_1E109BA18(v0[22], v0[24], v0[25], v0[26], v0[30], v0[33], v0[53]);
    v21 = v0[56];
    v23 = v0[52];
    v22 = v0[53];
    v24 = v0[51];
    sub_1E10AE37C();
    (*(v23 + 8))(v22, v24);
    v25 = *(MEMORY[0x1E69E87A8] + 4);
    v26 = swift_task_alloc();
    v0[58] = v26;
    *v26 = v0;
    v26[1] = sub_1E1012544;
    v27 = v0[56];
    v28 = v0[54];
    v29 = v0[50];

    return MEMORY[0x1EEE6DB90](v29, 0, 0, v28, v0 + 19);
  }
}

uint64_t sub_1E1012544()
{
  v2 = *(*v1 + 464);
  v5 = *v1;

  if (v0)
  {
    v3 = sub_1E1012A14;
  }

  else
  {
    v3 = sub_1E1012654;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1E1012654()
{
  v1 = *(v0 + 392);
  v2 = *(v0 + 400);
  if ((*(*(v1 - 8) + 48))(v2, 1, v1) == 1)
  {
    (*(*(v0 + 440) + 8))(*(v0 + 448), *(v0 + 432));
    v3 = *(v0 + 448);
    v4 = *(v0 + 456);
    v5 = *(v0 + 424);
    v6 = *(v0 + 400);
    v8 = *(v0 + 376);
    v7 = *(v0 + 384);
    v10 = *(v0 + 344);
    v9 = *(v0 + 352);
    v11 = *(v0 + 320);
    v12 = *(v0 + 272);
    v13 = *(v0 + 280);
    v14 = *(v0 + 256);
    v15 = *(v0 + 264);
    v16 = *(v0 + 240);
    v17 = *(v0 + 248);
    v18 = *(v0 + 232);
    v19 = *(v0 + 168);
    sub_1E1012BA0();

    v20 = *(v0 + 8);

    return v20();
  }

  else
  {
    v22 = *(v0 + 264);
    v59 = *(v0 + 272);
    v24 = *(v0 + 240);
    v23 = *(v0 + 248);
    v25 = *(v0 + 224);
    v60 = *(v0 + 232);
    v61 = *(v0 + 328);
    v26 = *(v0 + 113);
    v27 = *(v0 + 216);
    v28 = *(v0 + 184);
    v29 = *(v2 + *(v1 + 48));
    *(v0 + 80) = v24;
    *(v0 + 88) = v22;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 56));
    (*(*(v24 - 8) + 32))(boxed_opaque_existential_1, v2, v24);
    *(v0 + 96) = v27;
    *(v0 + 104) = v25;
    *(v0 + 112) = v26;
    v31 = sub_1E109C148((v0 + 96), v29);
    v32 = swift_task_alloc();
    if (v60)
    {
      v62 = v31;
      v33 = 0;
      for (i = 32; ; i += 16)
      {
        v35 = *(v0 + 232);
        v36 = v35 == 1 ? 0 : *(*(v0 + 336) + i);
        v37 = *((*(v0 + 256) & 0xFFFFFFFFFFFFFFFELL) + 8 * v33);
        v38 = *((*(v0 + 280) & 0xFFFFFFFFFFFFFFFELL) + 8 * v33);
        v39 = *(v0 + 456);
        v40 = (*(v0 + 344) + v36);
        *(v0 + 160) = *(v0 + 184);
        v41 = *(v39 + 8 * v33);
        v43 = *v41;
        v42 = v41[1];
        LOBYTE(v41) = *(v41 + 16);
        *(v0 + 120) = v43;
        *(v0 + 128) = v42;
        *(v0 + 136) = v41;

        v44 = sub_1E109C148((v0 + 120), v29);
        v45 = *(v0 + 128);

        *v40 = v44;
        v32[v33++] = v40;
        if (v33 == v35)
        {
          break;
        }
      }

      v31 = v62;
    }

    else
    {
    }

    v48 = *(v0 + 384);
    v50 = *(v0 + 360);
    v49 = *(v0 + 368);
    v52 = *(v0 + 288);
    v51 = *(v0 + 296);
    v53 = *(v0 + 168);
    sub_1E100B584((v0 + 56), v31, v32, *(v0 + 232), *(v0 + 248), *(v0 + 256), *(v0 + 272), *(v0 + 280), *(v0 + 352), v46, v47);
    sub_1E10AE36C();
    sub_1E10AE34C();
    (*(v49 + 8))(v48, v50);

    v54 = *(MEMORY[0x1E69E87A8] + 4);
    v55 = swift_task_alloc();
    *(v0 + 464) = v55;
    *v55 = v0;
    v55[1] = sub_1E1012544;
    v56 = *(v0 + 448);
    v57 = *(v0 + 432);
    v58 = *(v0 + 400);

    return MEMORY[0x1EEE6DB90](v58, 0, 0, v57, v0 + 152);
  }
}

uint64_t sub_1E1012A14()
{
  (*(v0[55] + 8))(v0[56], v0[54]);
  v1 = v0[47];
  v3 = v0[39];
  v2 = v0[40];
  v5 = v0[37];
  v4 = v0[38];
  v6 = v0[36];
  v7 = v0[21];
  *v2 = v0[19];
  swift_storeEnumTagMultiPayload();
  sub_1E10AE36C();
  sub_1E10AE33C();
  (*(v3 + 8))(v2, v4);
  (*(v0[46] + 8))(v0[47], v0[45]);
  v8 = v0[56];
  v9 = v0[57];
  v10 = v0[53];
  v11 = v0[50];
  v13 = v0[47];
  v12 = v0[48];
  v15 = v0[43];
  v14 = v0[44];
  v16 = v0[40];
  v17 = v0[34];
  v18 = v0[35];
  v19 = v0[32];
  v20 = v0[33];
  v21 = v0[30];
  v22 = v0[31];
  v23 = v0[29];
  v24 = v0[21];
  sub_1E1012BA0();

  v25 = v0[1];

  return v25();
}

uint64_t sub_1E1012BA0()
{
  type metadata accessor for EventService.PartialEventResult();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECE88F88, &qword_1E10B07B0);
  sub_1E10AE36C();
  return sub_1E10AE35C();
}

uint64_t sub_1E1012C20@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x1E69E8790];
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECE88F88, &qword_1E10B07B0);
  v3 = sub_1E10AE32C();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t EventService.perform<A, B, C>(requests:ofType:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, char *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, __n128 a10@<Q0>, __n128 a11@<Q1>, uint64_t a12, uint64_t a13)
{
  v51 = a8;
  v52 = a6;
  v57 = a1;
  v50 = a9;
  v17 = 8 * a4;
  v54 = a7;
  v55 = a5;
  v53 = a13;
  if (a4 == 1)
  {
    v18 = *(a7 & 0xFFFFFFFFFFFFFFFELL);
    v19 = *(a13 & 0xFFFFFFFFFFFFFFFELL);
    TupleTypeMetadata = type metadata accessor for EventService.RequestType();
  }

  else
  {
    v56 = v49;
    MEMORY[0x1EEE9AC00](a10, a11);
    if (a4)
    {
      v23 = (v54 & 0xFFFFFFFFFFFFFFFELL);
      v24 = (v53 & 0xFFFFFFFFFFFFFFFELL);
      v25 = (v49 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
      v26 = a4;
      do
      {
        v27 = *v23++;
        v28 = *v24++;
        *v25++ = type metadata accessor for EventService.RequestType();
        --v26;
      }

      while (v26);
    }

    TupleTypeMetadata = swift_getTupleTypeMetadata();
  }

  v49[0] = a12;
  v56 = TupleTypeMetadata;
  v29 = *(TupleTypeMetadata - 8);
  v30 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v21, v22);
  v32 = v49 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = *a2;
  v34 = *(a2 + 8);
  v35 = *(a2 + 16);
  v60 = *v13;
  v36 = sub_1E10AE1EC();
  v49[1] = v49;
  v58[0] = v33;
  v58[1] = v34;
  v59 = v35;
  MEMORY[0x1EEE9AC00](v37, v38);
  v39 = (v49 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (a4)
  {
    v40 = (v56 + 4);
    v41 = v39;
    v42 = a4;
    do
    {
      if (a4 == 1)
      {
        v43 = 0;
      }

      else
      {
        v43 = *v40;
      }

      v44 = &v32[v43];
      v45 = *a3++;
      v46 = *(v45 + 8);
      v47 = *(v45 + 16);
      *v44 = *v45;
      *(v44 + 1) = v46;
      v44[16] = v47;
      *v41++ = v44;

      v40 += 4;
      --v42;
    }

    while (v42);
  }

  EventService.perform<A, B, C>(requests:batchSize:ofType:_:)(v57, v36, 0, v58, v39, a4, v55, v52, v50, v54, v51, v49[0], v53);
  return (*(v29 + 8))(v32, v56);
}

Swift::Void __swiftcall EventService.invalidate()()
{
  v1 = *v0;
  swift_beginAccess();
  v2 = *__swift_project_boxed_opaque_existential_1((v1 + 16), *(v1 + 40));
  sub_1E102E438();
}

uint64_t EventService.Version.lastUpdated.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1E10ADCBC();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t EventService.Version.value.getter()
{
  v1 = (v0 + *(type metadata accessor for EventService.Version() + 20));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t sub_1E1013070()
{
  if (*v0)
  {
    result = 0x65756C6176;
  }

  else
  {
    result = 0x616470557473616CLL;
  }

  *v0;
  return result;
}

uint64_t sub_1E10130B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x616470557473616CLL && a2 == 0xEB00000000646574;
  if (v6 || (sub_1E10AE8FC() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x65756C6176 && a2 == 0xE500000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1E10AE8FC();

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

uint64_t sub_1E101318C(uint64_t a1)
{
  v2 = sub_1E101753C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E10131C8(uint64_t a1)
{
  v2 = sub_1E101753C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E1013244@<X0>(char a1@<W2>, uint64_t a2@<X8>)
{
  v4 = sub_1E10ADCFC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E10ADCEC();
  v11 = sub_1E10ADCDC();
  v13 = v12;
  result = (*(v5 + 8))(v10, v4);
  *a2 = v11;
  *(a2 + 8) = v13;
  *(a2 + 16) = a1;
  return result;
}

uint64_t static EventService.RequestType.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a2 + 16);
  v4 = *a1 == *a2 && *(a1 + 8) == *(a2 + 8);
  if (!v4 && (sub_1E10AE8FC() & 1) == 0)
  {
    return 0;
  }

  return sub_1E100F46C(v2, v3);
}

uint64_t EventService.RequestType.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  _s12ShazamEvents13EventCategoryV4hash4intoys6HasherVz_tF_0();
  _s12ShazamEvents13EventCategoryV4hash4intoys6HasherVz_tF_0();
}

uint64_t EventService.RequestType.hashValue.getter()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = *(v0 + 16);
  sub_1E10AE9CC();
  EventService.RequestType.hash(into:)();
  return sub_1E10AEA0C();
}

uint64_t sub_1E101354C()
{
  sub_1E10AE9CC();
  EventService.RequestType.hash(into:)();
  return sub_1E10AEA0C();
}

uint64_t static EventService.Version.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if ((sub_1E10ADC7C() & 1) == 0)
  {
    return 0;
  }

  v4 = *(type metadata accessor for EventService.Version() + 20);
  v5 = *(a1 + v4);
  v6 = *(a1 + v4 + 8);
  v7 = (a2 + v4);
  if (v5 == *v7 && v6 == v7[1])
  {
    return 1;
  }

  return sub_1E10AE8FC();
}

uint64_t EventService.Version.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE896C0, &qword_1E10B2EA8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v17[-v10];
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E101753C();
  sub_1E10AEA5C();
  v17[15] = 0;
  sub_1E10ADCBC();
  sub_1E1017C48(&qword_1EE17FF68, MEMORY[0x1E6969530]);
  sub_1E10AE8AC();
  if (!v2)
  {
    v13 = (v3 + *(type metadata accessor for EventService.Version() + 20));
    v14 = *v13;
    v15 = v13[1];
    v17[14] = 1;
    sub_1E10AE86C();
  }

  return (*(v6 + 8))(v11, v5);
}

uint64_t EventService.Version.hash(into:)()
{
  sub_1E10ADCBC();
  sub_1E1017C48(&qword_1ECE896C8, MEMORY[0x1E6969530]);
  sub_1E10ADFFC();
  v1 = (v0 + *(type metadata accessor for EventService.Version() + 20));
  v2 = *v1;
  v3 = v1[1];

  return _s12ShazamEvents13EventCategoryV4hash4intoys6HasherVz_tF_0();
}

uint64_t EventService.Version.hashValue.getter()
{
  sub_1E10AE9CC();
  sub_1E10ADCBC();
  sub_1E1017C48(&qword_1ECE896C8, MEMORY[0x1E6969530]);
  sub_1E10ADFFC();
  v1 = (v0 + *(type metadata accessor for EventService.Version() + 20));
  v2 = *v1;
  v3 = v1[1];
  _s12ShazamEvents13EventCategoryV4hash4intoys6HasherVz_tF_0();
  return sub_1E10AEA0C();
}

uint64_t EventService.Version.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v33 = a2;
  v4 = sub_1E10ADCBC();
  v35 = *(v4 - 8);
  v36 = v4;
  v5 = *(v35 + 64);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE896D0, &qword_1E10B2EB0);
  v34 = *(v37 - 8);
  v10 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v32 - v13;
  v15 = type metadata accessor for EventService.Version();
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17, v18);
  v20 = &v32 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E101753C();
  sub_1E10AEA3C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v32 = v20;
  v22 = v34;
  v23 = v35;
  v39 = 0;
  sub_1E1017C48(&qword_1EE180178, MEMORY[0x1E6969530]);
  v24 = v36;
  sub_1E10AE7FC();
  (*(v23 + 32))(v32, v9, v24);
  v38 = 1;
  v25 = sub_1E10AE7BC();
  v27 = v26;
  (*(v22 + 8))(v14, v37);
  v29 = v32;
  v28 = v33;
  v30 = &v32[*(v15 + 20)];
  *v30 = v25;
  v30[1] = v27;
  sub_1E1017590(v29, v28);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_1E10175F4(v29);
}

uint64_t sub_1E1013C3C(uint64_t a1)
{
  sub_1E10AE9CC();
  sub_1E10ADCBC();
  sub_1E1017C48(&qword_1ECE896C8, MEMORY[0x1E6969530]);
  sub_1E10ADFFC();
  v3 = (v1 + *(a1 + 20));
  v4 = *v3;
  v5 = v3[1];
  _s12ShazamEvents13EventCategoryV4hash4intoys6HasherVz_tF_0();
  return sub_1E10AEA0C();
}

uint64_t sub_1E1013CE4(uint64_t a1, uint64_t a2)
{
  sub_1E10ADCBC();
  sub_1E1017C48(&qword_1ECE896C8, MEMORY[0x1E6969530]);
  sub_1E10ADFFC();
  v4 = (v2 + *(a2 + 20));
  v5 = *v4;
  v6 = v4[1];

  return _s12ShazamEvents13EventCategoryV4hash4intoys6HasherVz_tF_0();
}

uint64_t sub_1E1013D80(uint64_t a1, uint64_t a2)
{
  sub_1E10AE9CC();
  sub_1E10ADCBC();
  sub_1E1017C48(&qword_1ECE896C8, MEMORY[0x1E6969530]);
  sub_1E10ADFFC();
  v4 = (v2 + *(a2 + 20));
  v5 = *v4;
  v6 = v4[1];
  _s12ShazamEvents13EventCategoryV4hash4intoys6HasherVz_tF_0();
  return sub_1E10AEA0C();
}

uint64_t sub_1E1013E54(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((sub_1E10ADC7C() & 1) == 0)
  {
    return 0;
  }

  v6 = *(a3 + 20);
  v7 = *(a1 + v6);
  v8 = *(a1 + v6 + 8);
  v9 = (a2 + v6);
  if (v7 == *v9 && v8 == v9[1])
  {
    return 1;
  }

  return sub_1E10AE8FC();
}

uint64_t sub_1E1013EDC()
{
  _s12ShazamEvents13EventCategoryV4hash4intoys6HasherVz_tF_0();
}

uint64_t type metadata accessor for EventService.Version()
{
  result = qword_1EE180098;
  if (!qword_1EE180098)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1E1014068(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  sub_1E10ADCFC();
  sub_1E1017C48(&qword_1EE17FF60, MEMORY[0x1E69695A8]);
  v5 = sub_1E10ADFEC();

  return sub_1E101427C(a1, v5);
}

unint64_t sub_1E1014100(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_1E10AE9CC();
  _s12ShazamEvents13EventCategoryV4hash4intoys6HasherVz_tF_0();
  v6 = sub_1E10AEA0C();

  return sub_1E101443C(a1, a2, v6);
}

unint64_t sub_1E1014178(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_1E10AE9CC();
  _s12ShazamEvents13EventCategoryV4hash4intoys6HasherVz_tF_0();
  v6 = sub_1E10AEA0C();
  return sub_1E101443C(a1, a2, v6);
}

unint64_t sub_1E10141EC(void *a1)
{
  v3 = *(v1 + 40);
  v4 = a1[2];
  v5 = a1[3];
  v6 = a1[4];
  v7 = a1[5];
  sub_1E10AE9CC();
  _s12ShazamEvents13EventCategoryV4hash4intoys6HasherVz_tF_0();
  _s12ShazamEvents13EventCategoryV4hash4intoys6HasherVz_tF_0();
  v8 = sub_1E10AEA0C();

  return sub_1E10144F4(a1, v8);
}

unint64_t sub_1E101427C(uint64_t a1, uint64_t a2)
{
  v22 = a1;
  v4 = sub_1E10ADCFC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = v2;
  v11 = -1 << *(v2 + 32);
  v12 = a2 & ~v11;
  v21 = v2 + 64;
  if ((*(v2 + 64 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12))
  {
    v13 = ~v11;
    v16 = *(v5 + 16);
    v15 = v5 + 16;
    v14 = v16;
    v17 = *(v15 + 56);
    do
    {
      v14(v10, *(v23 + 48) + v17 * v12, v4);
      sub_1E1017C48(&qword_1EE17FF58, MEMORY[0x1E69695A8]);
      v18 = sub_1E10AE03C();
      (*(v15 - 8))(v10, v4);
      if (v18)
      {
        break;
      }

      v12 = (v12 + 1) & v13;
    }

    while (((*(v21 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) != 0);
  }

  return v12;
}

unint64_t sub_1E101443C(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_1E10AE8FC())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_1E10144F4(void *a1, uint64_t a2)
{
  v3 = v2 + 64;
  v4 = -1 << *(v2 + 32);
  v5 = a2 & ~v4;
  if ((*(v2 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v6 = ~v4;
    v8 = a1[2];
    v7 = a1[3];
    v9 = a1[4];
    v10 = a1[5];
    v11 = *(v2 + 48);
    do
    {
      v12 = (v11 + 48 * v5);
      v13 = v12[4];
      v14 = v12[5];
      v15 = v12[2] == v8 && v12[3] == v7;
      if (v15 || (sub_1E10AE8FC() & 1) != 0)
      {
        v16 = v13 == v9 && v14 == v10;
        if (v16 || (sub_1E10AE8FC() & 1) != 0)
        {
          break;
        }
      }

      v5 = (v5 + 1) & v6;
    }

    while (((*(v3 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

uint64_t sub_1E10145F0(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = sub_1E10ADCFC();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = &v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v14 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE89730, &qword_1E10B31E0);
  v45 = a2;
  result = sub_1E10AE72C();
  v16 = result;
  if (*(v13 + 16))
  {
    v49 = v12;
    v41 = v3;
    v17 = 0;
    v18 = (v13 + 64);
    v19 = 1 << *(v13 + 32);
    if (v19 < 64)
    {
      v20 = ~(-1 << v19);
    }

    else
    {
      v20 = -1;
    }

    v21 = v20 & *(v13 + 64);
    v22 = (v19 + 63) >> 6;
    v42 = (v7 + 16);
    v43 = v13;
    v44 = v7;
    v46 = (v7 + 32);
    v23 = result + 64;
    while (v21)
    {
      v25 = __clz(__rbit64(v21));
      v21 &= v21 - 1;
LABEL_17:
      v28 = v25 | (v17 << 6);
      v29 = *(v13 + 48);
      v48 = *(v44 + 72);
      v30 = v29 + v48 * v28;
      if (v45)
      {
        (*v46)(v49, v30, v6);
        v47 = *(*(v13 + 56) + 8 * v28);
      }

      else
      {
        (*v42)(v49, v30, v6);
        v47 = *(*(v13 + 56) + 8 * v28);
      }

      v31 = *(v16 + 40);
      sub_1E1017C48(&qword_1EE17FF60, MEMORY[0x1E69695A8]);
      result = sub_1E10ADFEC();
      v32 = -1 << *(v16 + 32);
      v33 = result & ~v32;
      v34 = v33 >> 6;
      if (((-1 << v33) & ~*(v23 + 8 * (v33 >> 6))) == 0)
      {
        v35 = 0;
        v36 = (63 - v32) >> 6;
        while (++v34 != v36 || (v35 & 1) == 0)
        {
          v37 = v34 == v36;
          if (v34 == v36)
          {
            v34 = 0;
          }

          v35 |= v37;
          v38 = *(v23 + 8 * v34);
          if (v38 != -1)
          {
            v24 = __clz(__rbit64(~v38)) + (v34 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v24 = __clz(__rbit64((-1 << v33) & ~*(v23 + 8 * (v33 >> 6)))) | v33 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v23 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
      result = (*v46)(*(v16 + 48) + v48 * v24, v49, v6);
      *(*(v16 + 56) + 8 * v24) = v47;
      ++*(v16 + 16);
      v13 = v43;
    }

    v26 = v17;
    while (1)
    {
      v17 = v26 + 1;
      if (__OFADD__(v26, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v17 >= v22)
      {
        break;
      }

      v27 = v18[v17];
      ++v26;
      if (v27)
      {
        v25 = __clz(__rbit64(v27));
        v21 = (v27 - 1) & v27;
        goto LABEL_17;
      }
    }

    if ((v45 & 1) == 0)
    {

      v3 = v41;
      goto LABEL_36;
    }

    v39 = 1 << *(v13 + 32);
    v3 = v41;
    if (v39 >= 64)
    {
      bzero(v18, ((v39 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v18 = -1 << v39;
    }

    *(v13 + 16) = 0;
  }

LABEL_36:
  *v3 = v16;
  return result;
}

uint64_t sub_1E10149CC(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE896E8, &qword_1E10B3198);
  v39 = a2;
  result = sub_1E10AE72C();
  v8 = result;
  if (*(v5 + 16))
  {
    v37 = v3;
    v38 = v5;
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
      v25 = *(*(v5 + 56) + 8 * v21);
      if ((v39 & 1) == 0)
      {
        v26 = v22[1];

        v27 = v25;
      }

      v28 = *(v8 + 40);
      sub_1E10AE9CC();
      _s12ShazamEvents13EventCategoryV4hash4intoys6HasherVz_tF_0();
      result = sub_1E10AEA0C();
      v29 = -1 << *(v8 + 32);
      v30 = result & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v15 + 8 * (v30 >> 6))) == 0)
      {
        v32 = 0;
        v33 = (63 - v29) >> 6;
        while (++v31 != v33 || (v32 & 1) == 0)
        {
          v34 = v31 == v33;
          if (v31 == v33)
          {
            v31 = 0;
          }

          v32 |= v34;
          v35 = *(v15 + 8 * v31);
          if (v35 != -1)
          {
            v16 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v30) & ~*(v15 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v8 + 56) + 8 * v16) = v25;
      ++*(v8 + 16);
      v5 = v38;
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_37;
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

    if ((v39 & 1) == 0)
    {

      v3 = v37;
      goto LABEL_35;
    }

    v36 = 1 << *(v5 + 32);
    v3 = v37;
    if (v36 >= 64)
    {
      bzero(v10, ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v36;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_1E1014C70(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE89750, &qword_1E10B3208);
  v38 = a2;
  result = sub_1E10AE72C();
  v8 = result;
  if (*(v5 + 16))
  {
    v36 = v3;
    v37 = v5;
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
      v25 = *(*(v5 + 56) + v21);
      if ((v38 & 1) == 0)
      {
        v26 = v22[1];
      }

      v27 = *(v8 + 40);
      sub_1E10AE9CC();
      _s12ShazamEvents13EventCategoryV4hash4intoys6HasherVz_tF_0();
      result = sub_1E10AEA0C();
      v28 = -1 << *(v8 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v15 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v15 + 8 * v30);
          if (v34 != -1)
          {
            v16 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v29) & ~*(v15 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v8 + 56) + v16) = v25;
      ++*(v8 + 16);
      v5 = v37;
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_37;
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

    if ((v38 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_35;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v36;
    if (v35 >= 64)
    {
      bzero(v10, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_1E1014F10(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE89718, &qword_1E10B31C8);
  v39 = a2;
  result = sub_1E10AE72C();
  v8 = result;
  if (*(v5 + 16))
  {
    v37 = v2;
    v38 = v5;
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
      v40 = (v13 - 1) & v13;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = *(v5 + 56);
      v23 = (*(v5 + 48) + 48 * v21);
      v24 = v23[1];
      v41 = *v23;
      v25 = v23[3];
      v43 = v23[2];
      v26 = v23[5];
      v42 = v23[4];
      v27 = *(v22 + 8 * v21);
      if ((v39 & 1) == 0)
      {
      }

      v28 = *(v8 + 40);
      sub_1E10AE9CC();
      _s12ShazamEvents13EventCategoryV4hash4intoys6HasherVz_tF_0();
      _s12ShazamEvents13EventCategoryV4hash4intoys6HasherVz_tF_0();
      result = sub_1E10AEA0C();
      v29 = -1 << *(v8 + 32);
      v30 = result & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v15 + 8 * (v30 >> 6))) == 0)
      {
        v32 = 0;
        v33 = (63 - v29) >> 6;
        while (++v31 != v33 || (v32 & 1) == 0)
        {
          v34 = v31 == v33;
          if (v31 == v33)
          {
            v31 = 0;
          }

          v32 |= v34;
          v35 = *(v15 + 8 * v31);
          if (v35 != -1)
          {
            v16 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v30) & ~*(v15 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 48 * v16);
      *v17 = v41;
      v17[1] = v24;
      v17[2] = v43;
      v17[3] = v25;
      v17[4] = v42;
      v17[5] = v26;
      *(*(v8 + 56) + 8 * v16) = v27;
      ++*(v8 + 16);
      v5 = v38;
      v13 = v40;
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_37;
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
        v40 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if ((v39 & 1) == 0)
    {

      v3 = v37;
      goto LABEL_35;
    }

    v36 = 1 << *(v5 + 32);
    v3 = v37;
    if (v36 >= 64)
    {
      bzero(v10, ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v36;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_1E1015214(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE89720, &qword_1E10B31D0);
  v40 = a2;
  result = sub_1E10AE72C();
  v8 = result;
  if (*(v5 + 16))
  {
    v38 = v3;
    v39 = v5;
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
      v20 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v23 = 16 * (v20 | (v9 << 6));
      v24 = (*(v5 + 48) + v23);
      v25 = *v24;
      v26 = v24[1];
      v27 = (*(v5 + 56) + v23);
      v28 = v27[1];
      v41 = *v27;
      if ((v40 & 1) == 0)
      {
      }

      v29 = *(v8 + 40);
      sub_1E10AE9CC();
      _s12ShazamEvents13EventCategoryV4hash4intoys6HasherVz_tF_0();
      result = sub_1E10AEA0C();
      v30 = -1 << *(v8 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v15 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v15 + 8 * v32);
          if (v36 != -1)
          {
            v16 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v31) & ~*(v15 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = 16 * v16;
      v18 = (*(v8 + 48) + v17);
      *v18 = v25;
      v18[1] = v26;
      v19 = (*(v8 + 56) + v17);
      *v19 = v41;
      v19[1] = v28;
      ++*(v8 + 16);
      v5 = v39;
    }

    v21 = v9;
    while (1)
    {
      v9 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v22 = v10[v9];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v13 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    if ((v40 & 1) == 0)
    {

      v3 = v38;
      goto LABEL_35;
    }

    v37 = 1 << *(v5 + 32);
    v3 = v38;
    if (v37 >= 64)
    {
      bzero(v10, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v37;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_1E10154D4(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE89710, &qword_1E10B31C0);
  v38 = a2;
  result = sub_1E10AE72C();
  v8 = result;
  if (*(v5 + 16))
  {
    v36 = v3;
    v37 = v5;
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
      v25 = *(*(v5 + 56) + 8 * v21);
      if ((v38 & 1) == 0)
      {
        v26 = v22[1];
      }

      v27 = *(v8 + 40);
      sub_1E10AE9CC();
      _s12ShazamEvents13EventCategoryV4hash4intoys6HasherVz_tF_0();
      result = sub_1E10AEA0C();
      v28 = -1 << *(v8 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v15 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v15 + 8 * v30);
          if (v34 != -1)
          {
            v16 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v29) & ~*(v15 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v8 + 56) + 8 * v16) = v25;
      ++*(v8 + 16);
      v5 = v37;
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_37;
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

    if ((v38 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_35;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v36;
    if (v35 >= 64)
    {
      bzero(v10, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_1E101577C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE896F0, &qword_1E10B31A0);
  v40 = a2;
  result = sub_1E10AE72C();
  v8 = result;
  if (*(v5 + 16))
  {
    v38 = v3;
    v39 = v5;
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
      v20 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v23 = 16 * (v20 | (v9 << 6));
      v24 = (*(v5 + 48) + v23);
      v25 = *v24;
      v26 = v24[1];
      v27 = (*(v5 + 56) + v23);
      v28 = v27[1];
      v41 = *v27;
      if ((v40 & 1) == 0)
      {
      }

      v29 = *(v8 + 40);
      sub_1E10AE9CC();
      _s12ShazamEvents13EventCategoryV4hash4intoys6HasherVz_tF_0();
      result = sub_1E10AEA0C();
      v30 = -1 << *(v8 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v15 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v15 + 8 * v32);
          if (v36 != -1)
          {
            v16 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v31) & ~*(v15 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = 16 * v16;
      v18 = (*(v8 + 48) + v17);
      *v18 = v25;
      v18[1] = v26;
      v19 = (*(v8 + 56) + v17);
      *v19 = v41;
      v19[1] = v28;
      ++*(v8 + 16);
      v5 = v39;
    }

    v21 = v9;
    while (1)
    {
      v9 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v22 = v10[v9];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v13 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    if ((v40 & 1) == 0)
    {

      v3 = v38;
      goto LABEL_35;
    }

    v37 = 1 << *(v5 + 32);
    v3 = v38;
    if (v37 >= 64)
    {
      bzero(v10, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v37;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_1E1015A3C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE89738, &qword_1E10B31E8);
  v38 = a2;
  result = sub_1E10AE72C();
  v8 = result;
  if (*(v5 + 16))
  {
    v36 = v3;
    v37 = v5;
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
      v25 = *(*(v5 + 56) + 8 * v21);
      if ((v38 & 1) == 0)
      {
        v26 = v22[1];
      }

      v27 = *(v8 + 40);
      sub_1E10AE9CC();
      _s12ShazamEvents13EventCategoryV4hash4intoys6HasherVz_tF_0();
      result = sub_1E10AEA0C();
      v28 = -1 << *(v8 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v15 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v15 + 8 * v30);
          if (v34 != -1)
          {
            v16 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v29) & ~*(v15 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v8 + 56) + 8 * v16) = v25;
      ++*(v8 + 16);
      v5 = v37;
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_37;
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

    if ((v38 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_35;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v36;
    if (v35 >= 64)
    {
      bzero(v10, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_1E1015CE4(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = sub_1E10ADCFC();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = &v46 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v14 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE89748, &qword_1E10B3200);
  v50 = a2;
  result = sub_1E10AE72C();
  v16 = result;
  if (*(v13 + 16))
  {
    v55 = v12;
    v46 = v3;
    v17 = 0;
    v18 = (v13 + 64);
    v19 = 1 << *(v13 + 32);
    if (v19 < 64)
    {
      v20 = ~(-1 << v19);
    }

    else
    {
      v20 = -1;
    }

    v21 = v20 & *(v13 + 64);
    v22 = (v19 + 63) >> 6;
    v47 = (v7 + 16);
    v48 = v13;
    v49 = v7;
    v51 = (v7 + 32);
    v23 = result + 64;
    while (v21)
    {
      v27 = __clz(__rbit64(v21));
      v21 &= v21 - 1;
LABEL_17:
      v30 = v27 | (v17 << 6);
      v31 = *(v13 + 48);
      v54 = *(v49 + 72);
      v32 = v31 + v54 * v30;
      if (v50)
      {
        (*v51)(v55, v32, v6);
        v33 = (*(v13 + 56) + 16 * v30);
        v34 = *v33;
        v52 = v33[1];
        v53 = v34;
      }

      else
      {
        (*v47)(v55, v32, v6);
        v35 = (*(v13 + 56) + 16 * v30);
        v36 = *v35;
        v52 = v35[1];
        v53 = v36;
      }

      v37 = *(v16 + 40);
      sub_1E1017C48(&qword_1EE17FF60, MEMORY[0x1E69695A8]);
      result = sub_1E10ADFEC();
      v38 = -1 << *(v16 + 32);
      v39 = result & ~v38;
      v40 = v39 >> 6;
      if (((-1 << v39) & ~*(v23 + 8 * (v39 >> 6))) == 0)
      {
        v41 = 0;
        v42 = (63 - v38) >> 6;
        while (++v40 != v42 || (v41 & 1) == 0)
        {
          v43 = v40 == v42;
          if (v40 == v42)
          {
            v40 = 0;
          }

          v41 |= v43;
          v44 = *(v23 + 8 * v40);
          if (v44 != -1)
          {
            v24 = __clz(__rbit64(~v44)) + (v40 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v24 = __clz(__rbit64((-1 << v39) & ~*(v23 + 8 * (v39 >> 6)))) | v39 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v23 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
      result = (*v51)(*(v16 + 48) + v54 * v24, v55, v6);
      v25 = (*(v16 + 56) + 16 * v24);
      v26 = v52;
      *v25 = v53;
      v25[1] = v26;
      ++*(v16 + 16);
      v13 = v48;
    }

    v28 = v17;
    while (1)
    {
      v17 = v28 + 1;
      if (__OFADD__(v28, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v17 >= v22)
      {
        break;
      }

      v29 = v18[v17];
      ++v28;
      if (v29)
      {
        v27 = __clz(__rbit64(v29));
        v21 = (v29 - 1) & v29;
        goto LABEL_17;
      }
    }

    if ((v50 & 1) == 0)
    {

      v3 = v46;
      goto LABEL_36;
    }

    v45 = 1 << *(v13 + 32);
    v3 = v46;
    if (v45 >= 64)
    {
      bzero(v18, ((v45 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v18 = -1 << v45;
    }

    *(v13 + 16) = 0;
  }

LABEL_36:
  *v3 = v16;
  return result;
}

char *sub_1E10160CC()
{
  v1 = v0;
  v36 = sub_1E10ADCFC();
  v38 = *(v36 - 8);
  v2 = *(v38 + 64);
  MEMORY[0x1EEE9AC00](v3, v4);
  v35 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE89730, &qword_1E10B31E0);
  v6 = *v0;
  v7 = sub_1E10AE71C();
  v8 = v7;
  if (*(v6 + 16))
  {
    result = (v7 + 64);
    v10 = (v6 + 64);
    v11 = ((1 << *(v8 + 32)) + 63) >> 6;
    v31 = v1;
    v32 = v6 + 64;
    if (v8 != v6 || result >= &v10[8 * v11])
    {
      result = memmove(result, v10, 8 * v11);
    }

    v12 = 0;
    v13 = *(v6 + 16);
    v37 = v8;
    *(v8 + 16) = v13;
    v14 = 1 << *(v6 + 32);
    v15 = -1;
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    v16 = v15 & *(v6 + 64);
    v17 = (v14 + 63) >> 6;
    v33 = v38 + 32;
    v34 = v38 + 16;
    if (v16)
    {
      do
      {
        v18 = __clz(__rbit64(v16));
        v39 = (v16 - 1) & v16;
LABEL_14:
        v21 = v18 | (v12 << 6);
        v22 = v38;
        v23 = *(v38 + 72) * v21;
        v25 = v35;
        v24 = v36;
        (*(v38 + 16))(v35, *(v6 + 48) + v23, v36);
        v26 = *(*(v6 + 56) + 8 * v21);
        v27 = v6;
        v28 = v37;
        (*(v22 + 32))(*(v37 + 48) + v23, v25, v24);
        v29 = *(v28 + 56);
        v6 = v27;
        *(v29 + 8 * v21) = v26;

        v16 = v39;
      }

      while (v39);
    }

    v19 = v12;
    while (1)
    {
      v12 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v12 >= v17)
      {

        v1 = v31;
        v8 = v37;
        goto LABEL_18;
      }

      v20 = *(v32 + 8 * v12);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v39 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v8;
  }

  return result;
}

id sub_1E101634C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE896E8, &qword_1E10B3198);
  v2 = *v0;
  v3 = sub_1E10AE71C();
  v4 = v3;
  if (*(v2 + 16))
  {
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
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;

        result = v20;
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
        goto LABEL_19;
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
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_1E10164B8()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE89750, &qword_1E10B3208);
  v2 = *v0;
  v3 = sub_1E10AE71C();
  v4 = v3;
  if (*(v2 + 16))
  {
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
        v18 = (*(v2 + 48) + 16 * v17);
        v20 = *v18;
        v19 = v18[1];
        LOBYTE(v18) = *(*(v2 + 56) + v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = v20;
        v21[1] = v19;
        *(*(v4 + 56) + v17) = v18;
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
        goto LABEL_19;
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
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_1E1016620()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE89718, &qword_1E10B31C8);
  v2 = *v0;
  v3 = sub_1E10AE71C();
  v4 = v3;
  if (*(v2 + 16))
  {
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
        v18 = (*(v2 + 48) + 48 * v17);
        v19 = v18[1];
        v20 = v18[2];
        v21 = v18[3];
        v22 = *(*(v2 + 56) + 8 * v17);
        v23 = v18[4];
        v24 = v18[5];
        v25 = (*(v4 + 48) + 48 * v17);
        *v25 = *v18;
        v25[1] = v19;
        v25[2] = v20;
        v25[3] = v21;
        v25[4] = v23;
        v25[5] = v24;
        *(*(v4 + 56) + 8 * v17) = v22;
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
        goto LABEL_19;
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
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_1E10167BC()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE89720, &qword_1E10B31D0);
  v2 = *v0;
  v3 = sub_1E10AE71C();
  v4 = v3;
  if (*(v2 + 16))
  {
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
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v20 = *v18;
        v19 = v18[1];
        v21 = (*(v2 + 56) + v17);
        v22 = *v21;
        v23 = v21[1];
        v24 = (*(v4 + 48) + v17);
        *v24 = v20;
        v24[1] = v19;
        v25 = (*(v4 + 56) + v17);
        *v25 = v22;
        v25[1] = v23;
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
        goto LABEL_19;
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
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_1E1016934()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE89710, &qword_1E10B31C0);
  v2 = *v0;
  v3 = sub_1E10AE71C();
  v4 = v3;
  if (*(v2 + 16))
  {
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
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;
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
        goto LABEL_19;
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
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_1E1016AA4()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE896F0, &qword_1E10B31A0);
  v2 = *v0;
  v3 = sub_1E10AE71C();
  v4 = v3;
  if (*(v2 + 16))
  {
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
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v20 = *v18;
        v19 = v18[1];
        v21 = (*(v2 + 56) + v17);
        v22 = *v21;
        v23 = v21[1];
        v24 = (*(v4 + 48) + v17);
        *v24 = v20;
        v24[1] = v19;
        v25 = (*(v4 + 56) + v17);
        *v25 = v22;
        v25[1] = v23;
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
        goto LABEL_19;
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
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_1E1016C1C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE89738, &qword_1E10B31E8);
  v2 = *v0;
  v3 = sub_1E10AE71C();
  v4 = v3;
  if (*(v2 + 16))
  {
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
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;
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
        goto LABEL_19;
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
LABEL_19:

    *v1 = v4;
  }

  return result;
}

char *sub_1E1016D8C()
{
  v1 = v0;
  v38 = sub_1E10ADCFC();
  v40 = *(v38 - 8);
  v2 = *(v40 + 64);
  MEMORY[0x1EEE9AC00](v3, v4);
  v37 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE89748, &qword_1E10B3200);
  v6 = *v0;
  v7 = sub_1E10AE71C();
  v8 = v7;
  if (*(v6 + 16))
  {
    result = (v7 + 64);
    v10 = (v6 + 64);
    v11 = ((1 << *(v8 + 32)) + 63) >> 6;
    v32 = v1;
    v33 = v6 + 64;
    if (v8 != v6 || result >= &v10[8 * v11])
    {
      result = memmove(result, v10, 8 * v11);
    }

    v12 = 0;
    v13 = *(v6 + 16);
    v39 = v8;
    *(v8 + 16) = v13;
    v14 = 1 << *(v6 + 32);
    v15 = -1;
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    v16 = v15 & *(v6 + 64);
    v17 = (v14 + 63) >> 6;
    v34 = v40 + 32;
    v35 = v40 + 16;
    v36 = v6;
    if (v16)
    {
      do
      {
        v18 = __clz(__rbit64(v16));
        v41 = (v16 - 1) & v16;
LABEL_14:
        v21 = v18 | (v12 << 6);
        v22 = v40;
        v23 = *(v40 + 72) * v21;
        v24 = v37;
        v25 = v38;
        (*(v40 + 16))(v37, *(v6 + 48) + v23, v38);
        v26 = 16 * v21;
        v27 = (*(v6 + 56) + 16 * v21);
        v28 = *v27;
        v29 = v27[1];
        v30 = v39;
        (*(v22 + 32))(*(v39 + 48) + v23, v24, v25);
        v31 = (*(v30 + 56) + v26);
        *v31 = v28;
        v31[1] = v29;
        v6 = v36;

        v16 = v41;
      }

      while (v41);
    }

    v19 = v12;
    while (1)
    {
      v12 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v12 >= v17)
      {

        v1 = v32;
        v8 = v39;
        goto LABEL_18;
      }

      v20 = *(v33 + 8 * v12);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v41 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v8;
  }

  return result;
}

unint64_t sub_1E1017018(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE89728, &qword_1E10B31D8);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v5, v6);
  v8 = &v22 - v7;
  v9 = *(a1 + 16);
  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE89730, &qword_1E10B31E0);
    v10 = sub_1E10AE73C();
    v11 = *(v2 + 48);
    v12 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v13 = *(v3 + 72);

    while (1)
    {
      sub_1E0FEDC50(v12, v8, &qword_1ECE89728, &qword_1E10B31D8);
      result = sub_1E1014068(v8);
      if (v15)
      {
        break;
      }

      v16 = result;
      *(v10 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v17 = v10[6];
      v18 = sub_1E10ADCFC();
      result = (*(*(v18 - 8) + 32))(v17 + *(*(v18 - 8) + 72) * v16, v8, v18);
      *(v10[7] + 8 * v16) = *&v8[v11];
      v19 = v10[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_10;
      }

      v10[2] = v21;
      v12 += v13;
      if (!--v9)
      {

        return v10;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1E1017200(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE896F0, &qword_1E10B31A0);
    v3 = sub_1E10AE73C();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = sub_1E1014178(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = (v3[7] + 16 * result);
      *v12 = v8;
      v12[1] = v7;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1E1017314(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE89750, &qword_1E10B3208);
    v3 = sub_1E10AE73C();

    for (i = (a1 + 48); ; i += 24)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_1E1014178(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

uint64_t sub_1E1017410(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE896B8, &qword_1E10B2E90);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1E101753C()
{
  result = qword_1EE1800C8;
  if (!qword_1EE1800C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1800C8);
  }

  return result;
}

uint64_t sub_1E1017590(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EventService.Version();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E10175F4(uint64_t a1)
{
  v2 = type metadata accessor for EventService.Version();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void *__swift_initWithCopy_strong(void *a1, void *a2)
{
  *a1 = *a2;

  return a1;
}

uint64_t *__swift_assignWithCopy_strong(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  *a1 = *a2;

  return a1;
}

uint64_t *__swift_assignWithTake_strong(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  *a1 = *a2;

  return a1;
}

uint64_t sub_1E1017794()
{
  result = sub_1E10ADCBC();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1E1017808()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_1E1017858(uint64_t a1, int a2)
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

uint64_t sub_1E10178A0(uint64_t result, int a2, int a3)
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

unint64_t sub_1E10178F4()
{
  result = qword_1ECE896E0;
  if (!qword_1ECE896E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE896E0);
  }

  return result;
}

unint64_t sub_1E101794C()
{
  result = qword_1EE1800B8;
  if (!qword_1EE1800B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1800B8);
  }

  return result;
}

unint64_t sub_1E10179A4()
{
  result = qword_1EE1800C0;
  if (!qword_1EE1800C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1800C0);
  }

  return result;
}

unint64_t sub_1E10179F8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE896F8, &qword_1E10B31A8);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v5, v6);
  v8 = (&v25 - v7);
  v9 = *(a1 + 16);
  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE89700, &qword_1E10B31B0);
    v10 = sub_1E10AE73C();
    v11 = *(v2 + 48);
    v12 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v13 = *(v3 + 72);

    while (1)
    {
      sub_1E0FEDC50(v12, v8, &qword_1ECE896F8, &qword_1E10B31A8);
      v15 = *v8;
      v14 = v8[1];
      result = sub_1E1014100(*v8, v14);
      if (v17)
      {
        break;
      }

      v18 = result;
      *(v10 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v19 = (v10[6] + 16 * result);
      *v19 = v15;
      v19[1] = v14;
      v20 = v10[7];
      v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE89708, &qword_1E10B31B8);
      result = sub_1E1017BD8(v8 + v11, v20 + *(*(v21 - 8) + 72) * v18);
      v22 = v10[2];
      v23 = __OFADD__(v22, 1);
      v24 = v22 + 1;
      if (v23)
      {
        goto LABEL_10;
      }

      v10[2] = v24;
      v12 += v13;
      if (!--v9)
      {

        return v10;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

uint64_t sub_1E1017BD8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE89708, &qword_1E10B31B8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E1017C48(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1E1017C90(uint64_t a1)
{
  v3 = *(v1 + 32);
  v40 = *(v1 + 40);
  v4 = *(v1 + 48);
  v39 = *(v1 + 64);
  v5 = *(v1 + 72);
  *(v2 + 16) = v3;
  v42 = *(&v5 + 1);
  v43 = *(&v4 + 1);
  *(v2 + 40) = v5;
  *(v2 + 24) = v4;
  type metadata accessor for EventService.PartialEventResult();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECE88F88, &qword_1E10B07B0);
  v6 = *(sub_1E10AE36C() - 8);
  v7 = *(v6 + 80);
  v8 = *(v6 + 64);
  if (v3 == 1)
  {
    v9 = *(v43 & 0xFFFFFFFFFFFFFFFELL);
    v10 = *(v42 & 0xFFFFFFFFFFFFFFFELL);
    TupleTypeMetadata = type metadata accessor for EventService.RequestType();
  }

  else
  {
    v12 = swift_task_alloc();
    if (v3)
    {
      v13 = (v43 & 0xFFFFFFFFFFFFFFFELL);
      v14 = (v42 & 0xFFFFFFFFFFFFFFFELL);
      v15 = v12;
      v16 = v3;
      do
      {
        v17 = *v13++;
        v18 = *v14++;
        *v15++ = type metadata accessor for EventService.RequestType();
        --v16;
      }

      while (v16);
    }

    TupleTypeMetadata = swift_getTupleTypeMetadata();
  }

  v19 = (v7 + 88) & ~v7;
  v20 = (v8 + v19 + 7) & 0xFFFFFFFFFFFFFFF8;
  v21 = (v20 + 15) & 0xFFFFFFFFFFFFFFF8;
  v22 = (v21 + 15) & 0xFFFFFFFFFFFFFFF8;
  v23 = *(TupleTypeMetadata - 8);
  v37 = *(v1 + v20);
  v36 = *(v1 + v21);
  v24 = *(v1 + 16);
  v25 = *(v1 + 24);
  v35 = *(v1 + v22);
  v26 = *(v1 + v22 + 16);
  v34 = *(v1 + v22 + 8);
  v27 = (v1 + ((v22 + 31) & 0xFFFFFFFFFFFFFFF8));
  v28 = *v27;
  v29 = v27[1];
  v30 = *(v27 + 16);
  v31 = v1 + ((((v22 + 31) & 0xFFFFFFFFFFFFFFF8) + *(v23 + 80) + 17) & ~*(v23 + 80));
  v32 = swift_task_alloc();
  *(v38 + 56) = v32;
  *v32 = v38;
  v32[1] = sub_1E100B8D8;

  return sub_1E1011DAC(a1, v24, v25, v1 + v19, v37, v36, v35, v34);
}

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

unint64_t sub_1E1017FF8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE89758, &unk_1E10B3210);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v5, v6);
  v8 = &v24 - v7;
  v9 = *(a1 + 16);
  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE89748, &qword_1E10B3200);
    v10 = sub_1E10AE73C();
    v11 = &v8[*(v2 + 48)];
    v12 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v13 = *(v3 + 72);

    while (1)
    {
      sub_1E0FEDC50(v12, v8, &qword_1ECE89758, &unk_1E10B3210);
      result = sub_1E1014068(v8);
      if (v15)
      {
        break;
      }

      v16 = result;
      *(v10 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v17 = v10[6];
      v18 = sub_1E10ADCFC();
      result = (*(*(v18 - 8) + 32))(v17 + *(*(v18 - 8) + 72) * v16, v8, v18);
      v19 = (v10[7] + 16 * v16);
      v20 = *(v11 + 1);
      *v19 = *v11;
      v19[1] = v20;
      v21 = v10[2];
      v22 = __OFADD__(v21, 1);
      v23 = v21 + 1;
      if (v22)
      {
        goto LABEL_10;
      }

      v10[2] = v23;
      v12 += v13;
      if (!--v9)
      {

        return v10;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

uint64_t sub_1E10181EC(unint64_t a1)
{
  v2 = v1;
  v73 = sub_1E10ADCFC();
  v4 = *(v73 - 8);
  v5 = *(v4 + 8);
  MEMORY[0x1EEE9AC00](v6, v7);
  v72 = &v62 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 >> 62)
  {
    goto LABEL_44;
  }

  result = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (result)
  {
    v11 = 0;
    v67 = v8 & 0xC000000000000001;
    v64 = v8 & 0xFFFFFFFFFFFFFF8;
    v63 = v8 + 32;
    v70 = v2;
    v71 = (v4 + 1);
    v66 = v8;
    v65 = result;
    while (1)
    {
      if (v67)
      {
        v12 = MEMORY[0x1E12EDD80](v11);
      }

      else
      {
        if (v11 >= *(v64 + 16))
        {
          goto LABEL_43;
        }

        v12 = *(v63 + 8 * v11);
      }

      v13 = v12;
      v14 = __OFADD__(v11, 1);
      v15 = v11 + 1;
      if (v14)
      {
        break;
      }

      v16 = sub_1E108EDC0();
      v17 = *(v16 + 16);
      v75 = v13;
      v69 = v15;
      if (v17)
      {
        v78 = MEMORY[0x1E69E7CC0];
        sub_1E1059CEC(0, v17, 0);
        v4 = v78;
        v74 = &v13[OBJC_IVAR____TtC12ShazamEvents22GeoXPCRequestContainer_payload];
        v68 = v16;
        v18 = (v16 + 40);
        do
        {
          v19 = *v18;
          v76 = *(v18 - 1);

          v20 = sub_1E10AD2C4();
          v21 = v4;
          v22 = sub_1E10AC868(4, v20, *v74, v74[1]);
          v24 = v23;

          v25 = v72;
          sub_1E10ADCEC();
          v26 = sub_1E10ADCDC();
          v28 = v27;
          v29 = v25;
          v4 = v21;
          (*v71)(v29, v73);
          v78 = v21;
          v30 = *(v21 + 2);
          v31 = *(v4 + 3);
          if (v30 >= v31 >> 1)
          {
            sub_1E1059CEC((v31 > 1), v30 + 1, 1);
            v4 = v78;
          }

          *(v4 + 2) = v30 + 1;
          v32 = &v4[6 * v30];
          *(v32 + 4) = v26;
          *(v32 + 5) = v28;
          *(v32 + 6) = v22;
          *(v32 + 7) = v24;
          *(v32 + 8) = v76;
          *(v32 + 9) = v19;
          v18 += 2;
          --v17;
        }

        while (v17);

        v2 = v70;
        v13 = v75;
      }

      else
      {

        v4 = MEMORY[0x1E69E7CC0];
      }

      v76 = *(v4 + 2);
      if (v76)
      {
        swift_beginAccess();
        v33 = 0;
        v34 = (v4 + 9);
        v74 = v4;
        do
        {
          if (v33 >= *(v4 + 2))
          {
            __break(1u);
LABEL_40:
            __break(1u);
LABEL_41:
            __break(1u);
            goto LABEL_42;
          }

          v37 = *(v34 - 4);
          v38 = *(v34 - 3);
          v39 = *(v34 - 2);
          v40 = *(v34 - 1);
          v41 = *v34;
          *&v80 = *(v34 - 5);
          *(&v80 + 1) = v37;
          *&v81 = v38;
          *(&v81 + 1) = v39;
          *&v82 = v40;
          *(&v82 + 1) = v41;
          v42 = *(v2 + 112);
          v43 = *(v42 + 16);

          if (v43 && (v44 = sub_1E10141EC(&v80), (v45 & 1) != 0))
          {
            v46 = *(*(v42 + 56) + 8 * v44);
          }

          else
          {
            v46 = MEMORY[0x1E69E7CC0];
          }

          v79 = v46;
          v47 = v13;
          MEMORY[0x1E12ED900]();
          if (*((v79 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v79 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            v60 = *((v79 & 0xFFFFFFFFFFFFFF8) + 0x10);
            sub_1E10AE1AC();
            v2 = v70;
          }

          sub_1E10AE1DC();
          v48 = v79;
          swift_beginAccess();
          v49 = *(v2 + 112);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v77 = *(v2 + 112);
          v4 = v77;
          *(v2 + 112) = 0x8000000000000000;
          v2 = sub_1E10141EC(&v80);
          v51 = *(v4 + 2);
          v52 = (v8 & 1) == 0;
          v53 = v51 + v52;
          if (__OFADD__(v51, v52))
          {
            goto LABEL_40;
          }

          v54 = v8;
          if (*(v4 + 3) >= v53)
          {
            if (isUniquelyReferenced_nonNull_native)
            {
              if (v8)
              {
                goto LABEL_19;
              }
            }

            else
            {
              sub_1E1016620();
              if (v54)
              {
                goto LABEL_19;
              }
            }
          }

          else
          {
            sub_1E1014F10(v53, isUniquelyReferenced_nonNull_native);
            v55 = sub_1E10141EC(&v80);
            if ((v54 & 1) != (v8 & 1))
            {
              result = sub_1E10AE94C();
              __break(1u);
              return result;
            }

            v2 = v55;
            if (v54)
            {
LABEL_19:

              v4 = v77;
              v35 = *(v77 + 7);
              v36 = *(v35 + 8 * v2);
              *(v35 + 8 * v2) = v48;

              goto LABEL_20;
            }
          }

          v4 = v77;
          *&v77[(v2 >> 6) + 8] |= 1 << v2;
          v56 = (*(v4 + 6) + 48 * v2);
          v57 = v81;
          *v56 = v80;
          v56[1] = v57;
          v56[2] = v82;
          *(*(v4 + 7) + 8 * v2) = v48;
          v58 = *(v4 + 2);
          v14 = __OFADD__(v58, 1);
          v59 = v58 + 1;
          if (v14)
          {
            goto LABEL_41;
          }

          *(v4 + 2) = v59;
LABEL_20:
          ++v33;
          v2 = v70;
          *(v70 + 112) = v4;
          swift_endAccess();
          v34 += 6;
          v13 = v75;
          v4 = v74;
        }

        while (v76 != v33);
      }

      v11 = v69;
      v8 = v66;
      if (v69 == v65)
      {
        return result;
      }
    }

LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    v61 = v8;
    result = sub_1E10AE70C();
    v8 = v61;
  }

  return result;
}

uint64_t sub_1E1018794(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = *(a2 + OBJC_IVAR____TtC12ShazamEvents22GeoXPCRequestContainer_id);
  v4 = *(a2 + OBJC_IVAR____TtC12ShazamEvents22GeoXPCRequestContainer_id + 8);
  swift_beginAccess();
  v6 = *(v2 + 120);
  v7 = *(v6 + 16);

  if (v7 && (v8 = sub_1E10181E8(v5, v4), (v9 & 1) != 0))
  {
    v10 = *(*(v6 + 56) + 8 * v8);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v11 = sub_1E1027140(v10);

  v13 = sub_1E1027140(v12);

  v14 = sub_1E10189AC(v13, v11);
  v15 = v14[2];
  if (!v15)
  {

    v16 = MEMORY[0x1E69E7CC0];
LABEL_9:
    swift_beginAccess();
    v20 = *(v3 + 120);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v22 = *(v3 + 120);
    *(v3 + 120) = 0x8000000000000000;
    sub_1E1079940(v16, v5, v4, isUniquelyReferenced_nonNull_native);

    *(v3 + 120) = v22;
    return swift_endAccess();
  }

  v16 = sub_1E1018DD8(v15, 0);
  v17 = *(type metadata accessor for PartialEventResource(0) - 8);
  v18 = sub_1E1018ED4(&v23, v16 + ((*(v17 + 80) + 32) & ~*(v17 + 80)), v15, v14);

  result = sub_1E1019254();
  if (v18 == v15)
  {
    goto LABEL_9;
  }

  __break(1u);
  return result;
}

uint64_t sub_1E10189AC(uint64_t a1, uint64_t a2)
{
  v4 = *(type metadata accessor for PartialEventResource(0) - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = (&v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = &v26 - v12;
  result = MEMORY[0x1EEE9AC00](v14, v15);
  v18 = &v26 - v17;
  v19 = 0;
  v27 = a2;
  v20 = 1 << *(a1 + 32);
  v21 = -1;
  if (v20 < 64)
  {
    v21 = ~(-1 << v20);
  }

  v22 = v21 & *(a1 + 56);
  for (i = (v20 + 63) >> 6; v22; result = sub_1E1019328(v13))
  {
    v24 = v19;
LABEL_9:
    v25 = __clz(__rbit64(v22));
    v22 &= v22 - 1;
    sub_1E101925C(*(a1 + 48) + *(v4 + 72) * (v25 | (v24 << 6)), v18);
    sub_1E10192C0(v18, v9);
    sub_1E10244C0(v13, v9);
  }

  while (1)
  {
    v24 = v19 + 1;
    if (__OFADD__(v19, 1))
    {
      break;
    }

    if (v24 >= i)
    {

      return v27;
    }

    v22 = *(a1 + 56 + 8 * v24);
    ++v19;
    if (v22)
    {
      v19 = v24;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1E1018B70(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 112);
  v6 = v5 + 64;
  v7 = 1 << *(v5 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(v5 + 64);
  v10 = (v7 + 63) >> 6;
  v21 = v5;
  result = swift_bridgeObjectRetain_n();
  v12 = 0;
  while (v9)
  {
LABEL_9:
    v14 = __clz(__rbit64(v9)) | (v12 << 6);
    v15 = (*(v21 + 48) + 48 * v14);
    v16 = v15[3];
    v17 = v15[5];
    v18 = *(*(v21 + 56) + 8 * v14);
    if (*v15 != a1 || v15[1] != a2)
    {
      v9 &= v9 - 1;
      v20 = v15[1];
      result = sub_1E10AE8FC();
      if ((result & 1) == 0)
      {
        continue;
      }
    }

LABEL_16:

    return v18;
  }

  while (1)
  {
    v13 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v13 >= v10)
    {
      v18 = MEMORY[0x1E69E7CC0];
      goto LABEL_16;
    }

    v9 = *(v6 + 8 * v13);
    ++v12;
    if (v9)
    {
      v12 = v13;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1E1018CF0()
{
  v1 = *(v0 + 112);

  v2 = *(v0 + 120);

  swift_defaultActor_destroy();

  return MEMORY[0x1EEE6DEF0](v0);
}

void *sub_1E1018D54(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE89768, &qword_1E10B3278);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 17;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 4);
  return result;
}

size_t sub_1E1018DD8(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE89760, &qword_1E10B3270);
  v4 = *(type metadata accessor for PartialEventResource(0) - 8);
  v5 = *(v4 + 72);
  v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v7 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v7);
  if (v5)
  {
    if (result - v6 != 0x8000000000000000 || v5 != -1)
    {
      v7[2] = a1;
      v7[3] = 2 * ((result - v6) / v5);
      return v7;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1E1018ED4(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v35 = *(type metadata accessor for PartialEventResource(0) - 8);
  v8 = *(v35 + 64);
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x1EEE9AC00](v13, v14);
  v17 = &v32 - v16;
  v18 = a4 + 7;
  v19 = -1 << *(a4 + 32);
  if (-v19 < 64)
  {
    v20 = ~(-1 << -v19);
  }

  else
  {
    v20 = -1;
  }

  v21 = v20 & a4[7];
  if (!a2)
  {
LABEL_18:
    v22 = 0;
    a3 = 0;
LABEL_25:
    *a1 = a4;
    a1[1] = v18;
    a1[2] = ~v19;
    a1[3] = v22;
    a1[4] = v21;
    return a3;
  }

  if (!a3)
  {
    v22 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v33 = a1;
    v34 = a3;
    result = 0;
    v22 = 0;
    v32 = v19;
    v23 = (63 - v19) >> 6;
    v24 = 1;
    while (v21)
    {
LABEL_14:
      v27 = __clz(__rbit64(v21));
      v21 &= v21 - 1;
      a1 = a4;
      v28 = a4[6];
      v29 = *(v35 + 72);
      sub_1E101925C(v28 + v29 * (v27 | (v22 << 6)), v12);
      sub_1E10192C0(v12, v17);
      sub_1E10192C0(v17, a2);
      if (v24 == v34)
      {
        a4 = a1;
        a1 = v33;
        a3 = v34;
        goto LABEL_23;
      }

      a2 += v29;
      result = v24;
      v30 = __OFADD__(v24++, 1);
      a4 = a1;
      if (v30)
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v25 = v22;
    while (1)
    {
      v26 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v26 >= v23)
      {
        break;
      }

      v21 = v18[v26];
      ++v25;
      if (v21)
      {
        v22 = v26;
        goto LABEL_14;
      }
    }

    v21 = 0;
    if (v23 <= v22 + 1)
    {
      v31 = v22 + 1;
    }

    else
    {
      v31 = v23;
    }

    v22 = v31 - 1;
    a3 = result;
    a1 = v33;
LABEL_23:
    v19 = v32;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
  return result;
}

void *sub_1E10190FC(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = (*(a4 + 56) + ((v12 << 10) | (16 * __clz(__rbit64(v9)))));
      v18 = v17[1];
      v9 &= v9 - 1;
      *v11 = *v17;
      v11[1] = v18;
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      v11 += 2;

      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v20 = v12 + 1;
    }

    else
    {
      v20 = (63 - v7) >> 6;
    }

    v12 = v20 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_1E101925C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PartialEventResource(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E10192C0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PartialEventResource(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E1019328(uint64_t a1)
{
  v2 = type metadata accessor for PartialEventResource(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t EventService.Error.debugDescription.getter()
{
  v1 = v0[1];
  if (v1 > 1)
  {
    if (v1 != 2)
    {
      if (v1 == 3)
      {
        return 0xD00000000000001ALL;
      }

      goto LABEL_8;
    }

    return 0xD000000000000064;
  }

  else
  {
    if (v1)
    {
      if (v1 == 1)
      {
        return 0xD000000000000042;
      }

LABEL_8:
      v3 = *v0;
      sub_1E10AE5EC();
      MEMORY[0x1E12ED840](0x2074736575716552, 0xE900000000000028);
      sub_1E10AE6EC();
      MEMORY[0x1E12ED840](0xD000000000000021, 0x80000001E10BFCE0);
      return 0;
    }

    return 0xD0000000000000A3;
  }
}

unint64_t sub_1E10194E4()
{
  v1 = *v0;
  v2 = 0x6E776F6E6B6E75;
  if (v1 == 3)
  {
    v2 = 0xD000000000000013;
  }

  if (v1 == 2)
  {
    v2 = 0xD000000000000019;
  }

  v3 = 0xD000000000000012;
  if (*v0)
  {
    v3 = 0xD000000000000014;
  }

  if (*v0 <= 1u)
  {
    return v3;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1E101958C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1E101B538(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1E10195C0(uint64_t a1)
{
  v2 = sub_1E101ACC0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E10195FC(uint64_t a1)
{
  v2 = sub_1E101ACC0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E1019638(uint64_t a1)
{
  v2 = sub_1E101AE64();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E1019674(uint64_t a1)
{
  v2 = sub_1E101AE64();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E10196CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x696669746E656469 && a2 == 0xEA00000000007265)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1E10AE8FC();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1E101975C(uint64_t a1)
{
  v2 = sub_1E101ADBC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E1019798(uint64_t a1)
{
  v2 = sub_1E101ADBC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E10197D4(uint64_t a1)
{
  v2 = sub_1E101AD68();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E1019810(uint64_t a1)
{
  v2 = sub_1E101AD68();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E101984C(uint64_t a1)
{
  v2 = sub_1E101AD14();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E1019888(uint64_t a1)
{
  v2 = sub_1E101AD14();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E10198C4(uint64_t a1)
{
  v2 = sub_1E101AE10();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E1019900(uint64_t a1)
{
  v2 = sub_1E101AE10();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t EventService.Error.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE89770, &qword_1E10B3290);
  v53 = *(v4 - 8);
  v54 = v4;
  v5 = *(v53 + 64);
  MEMORY[0x1EEE9AC00](v6, v7);
  v52 = &v42 - v8;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE89778, &qword_1E10B3298);
  v48 = *(v50 - 8);
  v9 = *(v48 + 64);
  MEMORY[0x1EEE9AC00](v10, v11);
  v46 = &v42 - v12;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE89780, &qword_1E10B32A0);
  v49 = *(v51 - 8);
  v13 = *(v49 + 64);
  MEMORY[0x1EEE9AC00](v14, v15);
  v47 = &v42 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE89788, &qword_1E10B32A8);
  v44 = *(v17 - 8);
  v45 = v17;
  v18 = *(v44 + 64);
  MEMORY[0x1EEE9AC00](v19, v20);
  v22 = &v42 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE89790, &qword_1E10B32B0);
  v43 = *(v23 - 8);
  v24 = *(v43 + 64);
  MEMORY[0x1EEE9AC00](v25, v26);
  v28 = &v42 - v27;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE89798, &qword_1E10B32B8);
  v55 = *(v29 - 8);
  v30 = *(v55 + 64);
  MEMORY[0x1EEE9AC00](v31, v32);
  v34 = &v42 - v33;
  v35 = v2[1];
  v42 = *v2;
  v36 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E101ACC0();
  sub_1E10AEA5C();
  if (v35 > 1)
  {
    if (v35 == 2)
    {
      LOBYTE(v56) = 3;
      sub_1E101AD68();
      v41 = v46;
      sub_1E10AE82C();
      (*(v48 + 8))(v41, v50);
      return (*(v55 + 8))(v34, v29);
    }

    if (v35 == 3)
    {
      LOBYTE(v56) = 4;
      sub_1E101AD14();
      v37 = v52;
      sub_1E10AE82C();
      (*(v53 + 8))(v37, v54);
      return (*(v55 + 8))(v34, v29);
    }

LABEL_8:
    LOBYTE(v56) = 2;
    sub_1E101ADBC();
    v38 = v47;
    sub_1E10AE82C();
    v56 = v42;
    v57 = v35;
    sub_1E0FED9C8();
    v39 = v51;
    sub_1E10AE8AC();
    (*(v49 + 8))(v38, v39);
    return (*(v55 + 8))(v34, v29);
  }

  if (!v35)
  {
    LOBYTE(v56) = 0;
    sub_1E101AE64();
    sub_1E10AE82C();
    (*(v43 + 8))(v28, v23);
    return (*(v55 + 8))(v34, v29);
  }

  if (v35 != 1)
  {
    goto LABEL_8;
  }

  LOBYTE(v56) = 1;
  sub_1E101AE10();
  sub_1E10AE82C();
  (*(v44 + 8))(v22, v45);
  return (*(v55 + 8))(v34, v29);
}

uint64_t EventService.Error.hash(into:)()
{
  v1 = v0[1];
  if (v1 > 1)
  {
    if (v1 == 2)
    {
      v2 = 3;
      return MEMORY[0x1E12EE160](v2);
    }

    if (v1 == 3)
    {
      v2 = 4;
      return MEMORY[0x1E12EE160](v2);
    }
  }

  else
  {
    if (!v1)
    {
      v2 = 0;
      return MEMORY[0x1E12EE160](v2);
    }

    if (v1 == 1)
    {
      v2 = 1;
      return MEMORY[0x1E12EE160](v2);
    }
  }

  v3 = *v0;
  MEMORY[0x1E12EE160](2);

  return _s12ShazamEvents13EventCategoryV4hash4intoys6HasherVz_tF_0();
}

uint64_t EventService.Error.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1E10AE9CC();
  if (v2 > 1)
  {
    if (v2 == 2)
    {
      v3 = 3;
      goto LABEL_11;
    }

    if (v2 == 3)
    {
      v3 = 4;
      goto LABEL_11;
    }
  }

  else
  {
    if (!v2)
    {
      v3 = 0;
      goto LABEL_11;
    }

    if (v2 == 1)
    {
      v3 = 1;
LABEL_11:
      MEMORY[0x1E12EE160](v3);
      return sub_1E10AEA0C();
    }
  }

  MEMORY[0x1E12EE160](2);
  _s12ShazamEvents13EventCategoryV4hash4intoys6HasherVz_tF_0();
  return sub_1E10AEA0C();
}

uint64_t EventService.Error.init(from:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v68 = a2;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE897D0, &qword_1E10B32C0);
  v62 = *(v66 - 8);
  v3 = *(v62 + 64);
  MEMORY[0x1EEE9AC00](v4, v5);
  v70 = &v56 - v6;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE897D8, &qword_1E10B32C8);
  v59 = *(v65 - 8);
  v7 = *(v59 + 64);
  MEMORY[0x1EEE9AC00](v8, v9);
  v67 = &v56 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE897E0, &qword_1E10B32D0);
  v63 = *(v11 - 8);
  v64 = v11;
  v12 = *(v63 + 64);
  MEMORY[0x1EEE9AC00](v13, v14);
  v69 = &v56 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE897E8, &qword_1E10B32D8);
  v60 = *(v16 - 8);
  v61 = v16;
  v17 = *(v60 + 64);
  MEMORY[0x1EEE9AC00](v18, v19);
  v21 = &v56 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE897F0, &qword_1E10B32E0);
  v58 = *(v22 - 8);
  v23 = *(v58 + 64);
  MEMORY[0x1EEE9AC00](v24, v25);
  v27 = &v56 - v26;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE897F8, &qword_1E10B32E8);
  v29 = *(v28 - 8);
  v30 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v31, v32);
  v34 = &v56 - v33;
  v35 = a1[3];
  v36 = a1[4];
  v74 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v35);
  sub_1E101ACC0();
  v37 = v71;
  sub_1E10AEA3C();
  if (!v37)
  {
    v38 = v27;
    v57 = v22;
    v39 = v69;
    v40 = v70;
    v71 = v29;
    v41 = sub_1E10AE80C();
    v42 = *(v41 + 16);
    if (!v42 || ((v43 = *(v41 + 32), v42 == 1) ? (v44 = v43 == 5) : (v44 = 1), v44))
    {
      v45 = sub_1E10AE62C();
      swift_allocError();
      v47 = v46;
      v48 = *(__swift_instantiateConcreteTypeFromMangledNameV2(qword_1ECE899E0, &qword_1E10B32F0) + 48);
      *v47 = &type metadata for EventService.Error;
      sub_1E10AE77C();
      sub_1E10AE61C();
      (*(*(v45 - 8) + 104))(v47, *MEMORY[0x1E69E6AF8], v45);
      swift_willThrow();
      (*(v71 + 8))(v34, v28);
      swift_unknownObjectRelease();
    }

    else
    {
      if (*(v41 + 32) <= 1u)
      {
        if (*(v41 + 32))
        {
          LOBYTE(v72) = 1;
          sub_1E101AE10();
          sub_1E10AE76C();
          (*(v60 + 8))(v21, v61);
          (*(v71 + 8))(v34, v28);
          swift_unknownObjectRelease();
          v51 = 0;
          v52 = 1;
        }

        else
        {
          LOBYTE(v72) = 0;
          sub_1E101AE64();
          sub_1E10AE76C();
          (*(v58 + 8))(v38, v57);
          (*(v71 + 8))(v34, v28);
          swift_unknownObjectRelease();
          v51 = 0;
          v52 = 0;
        }

        v49 = v68;
      }

      else if (v43 == 2)
      {
        LOBYTE(v72) = 2;
        sub_1E101ADBC();
        v53 = v39;
        sub_1E10AE76C();
        v49 = v68;
        sub_1E0FEDD04();
        v54 = v64;
        sub_1E10AE7FC();
        (*(v63 + 8))(v53, v54);
        (*(v71 + 8))(v34, v28);
        swift_unknownObjectRelease();
        v51 = v72;
        v52 = v73;
      }

      else
      {
        v49 = v68;
        if (v43 == 3)
        {
          LOBYTE(v72) = 3;
          sub_1E101AD68();
          v50 = v67;
          sub_1E10AE76C();
          (*(v59 + 8))(v50, v65);
          (*(v71 + 8))(v34, v28);
          swift_unknownObjectRelease();
          v51 = 0;
          v52 = 2;
        }

        else
        {
          LOBYTE(v72) = 4;
          sub_1E101AD14();
          sub_1E10AE76C();
          (*(v62 + 8))(v40, v66);
          (*(v71 + 8))(v34, v28);
          swift_unknownObjectRelease();
          v51 = 0;
          v52 = 3;
        }
      }

      *v49 = v51;
      v49[1] = v52;
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(v74);
}

BOOL sub_1E101A824()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24) >> 1;
  if (v1 != v2)
  {
    if (v1 >= v2)
    {
      __break(1u);
      return result;
    }

    *(v0 + 16) = v1 + 1;
  }

  return v1 == v2;
}

uint64_t sub_1E101A850()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 2;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1E101A884()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 8;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1E101A8E8()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1E10AE9CC();
  if (v2 > 1)
  {
    if (v2 == 2)
    {
      v3 = 3;
      goto LABEL_11;
    }

    if (v2 == 3)
    {
      v3 = 4;
      goto LABEL_11;
    }
  }

  else
  {
    if (!v2)
    {
      v3 = 0;
      goto LABEL_11;
    }

    if (v2 == 1)
    {
      v3 = 1;
LABEL_11:
      MEMORY[0x1E12EE160](v3);
      return sub_1E10AEA0C();
    }
  }

  MEMORY[0x1E12EE160](2);
  _s12ShazamEvents13EventCategoryV4hash4intoys6HasherVz_tF_0();
  return sub_1E10AEA0C();
}

uint64_t sub_1E101A9A0()
{
  v1 = v0[1];
  if (v1 > 1)
  {
    if (v1 == 2)
    {
      v2 = 3;
      return MEMORY[0x1E12EE160](v2);
    }

    if (v1 == 3)
    {
      v2 = 4;
      return MEMORY[0x1E12EE160](v2);
    }
  }

  else
  {
    if (!v1)
    {
      v2 = 0;
      return MEMORY[0x1E12EE160](v2);
    }

    if (v1 == 1)
    {
      v2 = 1;
      return MEMORY[0x1E12EE160](v2);
    }
  }

  v3 = *v0;
  MEMORY[0x1E12EE160](2);

  return _s12ShazamEvents13EventCategoryV4hash4intoys6HasherVz_tF_0();
}

uint64_t sub_1E101AA50()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1E10AE9CC();
  if (v2 > 1)
  {
    if (v2 == 2)
    {
      v3 = 3;
      goto LABEL_11;
    }

    if (v2 == 3)
    {
      v3 = 4;
      goto LABEL_11;
    }
  }

  else
  {
    if (!v2)
    {
      v3 = 0;
      goto LABEL_11;
    }

    if (v2 == 1)
    {
      v3 = 1;
LABEL_11:
      MEMORY[0x1E12EE160](v3);
      return sub_1E10AEA0C();
    }
  }

  MEMORY[0x1E12EE160](2);
  _s12ShazamEvents13EventCategoryV4hash4intoys6HasherVz_tF_0();
  return sub_1E10AEA0C();
}

uint64_t _s12ShazamEvents12EventServiceV5ErrorO2eeoiySbAE_AEtFZ_0(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  v5 = *(a2 + 8);
  if (v3 > 1)
  {
    if (v3 == 2)
    {
      if (v5 != 2)
      {
        goto LABEL_19;
      }

      sub_1E100A3F4(*a1, 2uLL);
      v7 = v4;
      v8 = 2;
    }

    else
    {
      if (v3 != 3)
      {
        goto LABEL_10;
      }

      if (v5 != 3)
      {
        goto LABEL_19;
      }

      sub_1E100A3F4(*a1, 3uLL);
      v7 = v4;
      v8 = 3;
    }

LABEL_18:
    sub_1E100A3F4(v7, v8);
    return 1;
  }

  if (!v3)
  {
    if (v5)
    {
      goto LABEL_19;
    }

    sub_1E100A3F4(*a1, 0);
    v7 = v4;
    v8 = 0;
    goto LABEL_18;
  }

  if (v3 == 1)
  {
    if (v5 == 1)
    {
      v6 = 1;
      sub_1E100A3F4(*a1, 1uLL);
      sub_1E100A3F4(v4, 1uLL);
      return v6;
    }

LABEL_19:
    sub_1E100A414(*a2, *(a2 + 8));
    sub_1E100A414(v2, v3);
    sub_1E100A3F4(v2, v3);
    sub_1E100A3F4(v4, v5);
    return 0;
  }

LABEL_10:
  if (v5 < 4)
  {
    goto LABEL_19;
  }

  if (v2 == v4 && v3 == v5)
  {
    sub_1E100A414(*a1, v3);
    sub_1E100A414(v2, v3);
    sub_1E100A3F4(v2, v3);
    v7 = v2;
    v8 = v3;
    goto LABEL_18;
  }

  v10 = *a1;
  v11 = sub_1E10AE8FC();
  sub_1E100A414(v4, v5);
  sub_1E100A414(v2, v3);
  sub_1E100A3F4(v2, v3);
  sub_1E100A3F4(v4, v5);
  return v11 & 1;
}

unint64_t sub_1E101ACC0()
{
  result = qword_1ECE897A0;
  if (!qword_1ECE897A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE897A0);
  }

  return result;
}

unint64_t sub_1E101AD14()
{
  result = qword_1ECE897A8;
  if (!qword_1ECE897A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE897A8);
  }

  return result;
}

unint64_t sub_1E101AD68()
{
  result = qword_1ECE897B0;
  if (!qword_1ECE897B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE897B0);
  }

  return result;
}

unint64_t sub_1E101ADBC()
{
  result = qword_1ECE897B8;
  if (!qword_1ECE897B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE897B8);
  }

  return result;
}

unint64_t sub_1E101AE10()
{
  result = qword_1ECE897C0;
  if (!qword_1ECE897C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE897C0);
  }

  return result;
}

unint64_t sub_1E101AE64()
{
  result = qword_1ECE897C8;
  if (!qword_1ECE897C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE897C8);
  }

  return result;
}

unint64_t sub_1E101AEBC()
{
  result = qword_1ECE89800;
  if (!qword_1ECE89800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE89800);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_12ShazamEvents12EventServiceV5ErrorO(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1E101AF28(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFC && *(a1 + 16))
  {
    return (*a1 + 2147483644);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 3;
  if (v4 >= 5)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1E101AF7C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFB)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483644;
    if (a3 >= 0x7FFFFFFC)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFC)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 3;
    }
  }

  return result;
}

void *sub_1E101AFD8(void *result, int a2)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    result[1] = 0;
  }

  else if (a2)
  {
    result[1] = (a2 - 1);
  }

  return result;
}

unint64_t sub_1E101B06C()
{
  result = qword_1ECE89808;
  if (!qword_1ECE89808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE89808);
  }

  return result;
}

unint64_t sub_1E101B0C4()
{
  result = qword_1ECE89810;
  if (!qword_1ECE89810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE89810);
  }

  return result;
}

unint64_t sub_1E101B11C()
{
  result = qword_1ECE89818;
  if (!qword_1ECE89818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE89818);
  }

  return result;
}

unint64_t sub_1E101B174()
{
  result = qword_1ECE89820;
  if (!qword_1ECE89820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE89820);
  }

  return result;
}

unint64_t sub_1E101B1CC()
{
  result = qword_1ECE89828;
  if (!qword_1ECE89828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE89828);
  }

  return result;
}

unint64_t sub_1E101B224()
{
  result = qword_1ECE89830;
  if (!qword_1ECE89830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE89830);
  }

  return result;
}

unint64_t sub_1E101B27C()
{
  result = qword_1ECE89838;
  if (!qword_1ECE89838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE89838);
  }

  return result;
}

unint64_t sub_1E101B2D4()
{
  result = qword_1ECE89840;
  if (!qword_1ECE89840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE89840);
  }

  return result;
}

unint64_t sub_1E101B32C()
{
  result = qword_1ECE89848;
  if (!qword_1ECE89848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE89848);
  }

  return result;
}

unint64_t sub_1E101B384()
{
  result = qword_1ECE89850;
  if (!qword_1ECE89850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE89850);
  }

  return result;
}

unint64_t sub_1E101B3DC()
{
  result = qword_1ECE89858;
  if (!qword_1ECE89858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE89858);
  }

  return result;
}

unint64_t sub_1E101B434()
{
  result = qword_1ECE89860;
  if (!qword_1ECE89860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE89860);
  }

  return result;
}

unint64_t sub_1E101B48C()
{
  result = qword_1ECE89868;
  if (!qword_1ECE89868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE89868);
  }

  return result;
}

unint64_t sub_1E101B4E4()
{
  result = qword_1ECE89870;
  if (!qword_1ECE89870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE89870);
  }

  return result;
}

uint64_t sub_1E101B538(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000012 && 0x80000001E10BFE40 == a2 || (sub_1E10AE8FC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001E10BFE60 == a2 || (sub_1E10AE8FC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000019 && 0x80000001E10BFE80 == a2 || (sub_1E10AE8FC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001E10BFEA0 == a2 || (sub_1E10AE8FC() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6E776F6E6B6E75 && a2 == 0xE700000000000000)
  {

    return 4;
  }

  else
  {
    v5 = sub_1E10AE8FC();

    if (v5)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t sub_1E101B6FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[30] = a3;
  v4[31] = v3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE89878, &unk_1E10B6A20);
  v4[32] = v7;
  v8 = *(*(v7 - 8) + 64) + 15;
  v4[33] = swift_task_alloc();
  v4[34] = swift_task_alloc();
  v4[35] = swift_task_alloc();
  v9 = sub_1E10ADBBC();
  v4[36] = v9;
  v10 = *(v9 - 8);
  v4[37] = v10;
  v11 = *(v10 + 64) + 15;
  v12 = swift_task_alloc();
  v4[38] = v12;
  v13 = swift_task_alloc();
  v4[39] = v13;
  *v13 = v4;
  v13[1] = sub_1E101B864;

  return sub_1E105E9AC(v12, a1, a2);
}

uint64_t sub_1E101B864()
{
  v2 = *(*v1 + 312);
  v3 = *v1;
  v3[40] = v0;

  if (v0)
  {
    v4 = v3[31];

    return MEMORY[0x1EEE6DFA0](sub_1E101C830, v4, 0);
  }

  else
  {
    v5 = swift_task_alloc();
    v3[41] = v5;
    *v5 = v3;
    v5[1] = sub_1E101B9DC;
    v6 = v3[38];
    v7 = v3[31];

    return sub_1E101C960((v3 + 16), v6);
  }
}

uint64_t sub_1E101B9DC()
{
  v2 = *v1;
  v3 = *(*v1 + 328);
  v4 = *v1;
  *(*v1 + 336) = v0;

  v5 = *(v2 + 248);
  if (v0)
  {
    v6 = sub_1E101C8BC;
  }

  else
  {
    v6 = sub_1E101BB08;
  }

  return MEMORY[0x1EEE6DFA0](v6, v5, 0);
}

uint64_t sub_1E101BB08()
{
  v1 = *(v0 + 336);
  v2 = *(v0 + 208);
  *(v0 + 80) = *(v0 + 192);
  *(v0 + 96) = v2;
  *(v0 + 112) = *(v0 + 224);
  v3 = *(v0 + 144);
  *(v0 + 16) = *(v0 + 128);
  *(v0 + 32) = v3;
  v4 = *(v0 + 176);
  *(v0 + 48) = *(v0 + 160);
  *(v0 + 64) = v4;
  v5 = sub_1E1034E50();
  if (v1)
  {
    (*(*(v0 + 296) + 8))(*(v0 + 304), *(v0 + 288));
    sub_1E0FF0440(v0 + 16, &qword_1ECE89880, &qword_1E10B39F8);
    v6 = *(v0 + 304);
    v7 = *(v0 + 272);
    v8 = *(v0 + 280);
    v9 = *(v0 + 264);

    v10 = *(v0 + 8);

    return v10();
  }

  v12 = v5;
  v13 = *(v0 + 264);
  v65 = *(v0 + 256);
  v14 = *(v0 + 240);
  sub_1E0FF0440(v0 + 16, &qword_1ECE89880, &qword_1E10B39F8);
  v15 = v14 + 64;
  v16 = -1;
  v17 = -1 << *(v14 + 32);
  if (-v17 < 64)
  {
    v16 = ~(-1 << -v17);
  }

  v18 = v16 & *(v14 + 64);
  v19 = (63 - v17) >> 6;
  v57 = v13 + 8;
  v64 = v14;

  v20 = 0;
  v58 = (v12 + 40);
  v61 = MEMORY[0x1E69E7CC0];
  v62 = v14 + 64;
  v66 = v12;
  v63 = v19;
  if (v18)
  {
    while (1)
    {
LABEL_15:
      v23 = *(v0 + 272);
      v22 = *(v0 + 280);
      v24 = __clz(__rbit64(v18));
      v18 &= v18 - 1;
      v25 = v24 | (v20 << 6);
      v26 = *(v64 + 48);
      v27 = sub_1E10ADCFC();
      v28 = v26 + *(*(v27 - 8) + 72) * v25;
      v29 = *(v27 - 8);
      (*(v29 + 16))(v22, v28, v27);
      v30 = (*(v64 + 56) + 16 * v25);
      v31 = *v30;
      v32 = v30[1];
      v33 = (v22 + *(v65 + 48));
      *v33 = v31;
      v33[1] = v32;
      sub_1E101D5B8(v22, v23);
      v34 = (v23 + *(v65 + 48));
      v35 = *v34;
      v36 = v34[1];

      v37 = sub_1E10AE74C();

      if (v37 >= 8)
      {
        (*(v29 + 8))(*(v0 + 272), v27);
      }

      else
      {
        v60 = v27;
        v59 = *(v29 + 8);
        result = v59(*(v0 + 272), v27);
        v67 = *(v12 + 16);
        if (v67)
        {
          v38 = 0;
          v39 = v58;
          while (v38 < *(v12 + 16))
          {
            v40 = *(v39 - 1);
            v41 = *v39;
            if (v41 > 3)
            {
              if (*v39 > 5u)
              {
                if (v41 == 6)
                {
                  if (v37 > 3u && v37 > 5u && v37 != 7)
                  {
                    goto LABEL_76;
                  }
                }

                else if (v37 > 3u && v37 > 5u && v37 != 6)
                {
LABEL_76:
                  v43 = *(v39 - 1);

LABEL_77:
                  v44 = *(v0 + 280);
                  v45 = *(v0 + 264);
                  sub_1E101D5B8(v44, v45);
                  v46 = *(v57 + *(v65 + 48));

                  v68 = sub_1E10ADCDC();
                  v48 = v47;
                  sub_1E0FF0440(v44, &qword_1ECE89878, &unk_1E10B6A20);
                  v59(v45, v60);
                  result = swift_isUniquelyReferenced_nonNull_native();
                  if ((result & 1) == 0)
                  {
                    result = sub_1E1058CB8(0, *(v61 + 16) + 1, 1, v61);
                    v61 = result;
                  }

                  v19 = v63;
                  v50 = *(v61 + 16);
                  v49 = *(v61 + 24);
                  v12 = v66;
                  if (v50 >= v49 >> 1)
                  {
                    result = sub_1E1058CB8((v49 > 1), v50 + 1, 1, v61);
                    v61 = result;
                  }

                  *(v61 + 16) = v50 + 1;
                  v51 = v61 + 32 * v50;
                  *(v51 + 32) = v68;
                  *(v51 + 40) = v48;
                  *(v51 + 48) = v40;
                  *(v51 + 56) = v41;
                  v15 = v62;
                  if (v18)
                  {
                    goto LABEL_15;
                  }

                  goto LABEL_11;
                }
              }

              else if (v41 == 4)
              {
                if (v37 > 3u && v37 <= 5u && v37 != 5)
                {
                  goto LABEL_76;
                }
              }

              else if (v37 > 3u && v37 <= 5u && v37 != 4)
              {
                goto LABEL_76;
              }
            }

            else if (*v39 > 1u)
            {
              if (v41 == 2)
              {
                if (v37 <= 3u && v37 > 1u && v37 != 3)
                {
                  goto LABEL_76;
                }
              }

              else if (v37 <= 3u && v37 > 1u && v37 != 2)
              {
                goto LABEL_76;
              }
            }

            else if (*v39)
            {
              if (v37 <= 3u && v37 <= 1u && v37)
              {
                goto LABEL_76;
              }
            }

            else if (v37 <= 3u && v37 <= 1u && v37 != 1)
            {
              goto LABEL_76;
            }

            v42 = sub_1E10AE8FC();

            if (v42)
            {
              goto LABEL_77;
            }

            ++v38;

            v39 += 16;
            v12 = v66;
            if (v67 == v38)
            {
              goto LABEL_10;
            }
          }

LABEL_87:
          __break(1u);
          return result;
        }
      }

LABEL_10:
      result = sub_1E0FF0440(*(v0 + 280), &qword_1ECE89878, &unk_1E10B6A20);
      v15 = v62;
      v19 = v63;
      if (!v18)
      {
        goto LABEL_11;
      }
    }
  }

  while (1)
  {
LABEL_11:
    v21 = v20 + 1;
    if (__OFADD__(v20, 1))
    {
      __break(1u);
      goto LABEL_87;
    }

    if (v21 >= v19)
    {
      break;
    }

    v18 = *(v15 + 8 * v21);
    ++v20;
    if (v18)
    {
      v20 = v21;
      goto LABEL_15;
    }
  }

  v52 = *(v0 + 280);
  v54 = *(v0 + 264);
  v53 = *(v0 + 272);
  v55 = *(v0 + 240);
  (*(*(v0 + 296) + 8))(*(v0 + 304), *(v0 + 288));

  v56 = *(v0 + 8);

  return v56(v61);
}

uint64_t sub_1E101C830()
{
  v1 = v0[40];
  v2 = v0[38];
  v4 = v0[34];
  v3 = v0[35];
  v5 = v0[33];

  v6 = v0[1];

  return v6();
}

uint64_t sub_1E101C8BC()
{
  (*(v0[37] + 8))(v0[38], v0[36]);
  v1 = v0[42];
  v2 = v0[38];
  v4 = v0[34];
  v3 = v0[35];
  v5 = v0[33];

  v6 = v0[1];

  return v6();
}

uint64_t sub_1E101C960(uint64_t a1, uint64_t a2)
{
  v3[17] = a2;
  v3[18] = v2;
  v3[16] = a1;
  v4 = sub_1E10AD9CC();
  v3[19] = v4;
  v5 = *(v4 - 8);
  v3[20] = v5;
  v6 = *(v5 + 64) + 15;
  v3[21] = swift_task_alloc();
  v7 = sub_1E10ADBBC();
  v3[22] = v7;
  v8 = *(v7 - 8);
  v3[23] = v8;
  v9 = *(v8 + 64) + 15;
  v3[24] = swift_task_alloc();
  v10 = sub_1E10AD9AC();
  v3[25] = v10;
  v11 = *(v10 - 8);
  v3[26] = v11;
  v12 = *(v11 + 64) + 15;
  v3[27] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E101CADC, v2, 0);
}

uint64_t sub_1E101CADC()
{
  v1 = v0[27];
  v2 = *(v0[18] + 152);
  (*(v0[23] + 16))(v0[24], v0[17], v0[22]);
  sub_1E10AD97C();
  v3 = swift_task_alloc();
  v0[28] = v3;
  *v3 = v0;
  v3[1] = sub_1E101CBB8;
  v4 = v0[27];

  return sub_1E107A5C4(v4);
}

uint64_t sub_1E101CBB8(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = *v4;
  v7 = *v4;
  v8 = *(*v4 + 224);
  v9 = *(*v4 + 208);
  v10 = *v4;
  v7[29] = a1;
  v7[30] = a2;
  v7[31] = v3;

  v11 = v6[27];
  v12 = v6[25];
  v13 = v6[18];
  (*(v9 + 8))(v11, v12);
  if (v3)
  {
    v14 = sub_1E101D67C;
  }

  else
  {

    v14 = sub_1E101CD50;
  }

  return MEMORY[0x1EEE6DFA0](v14, v13, 0);
}

uint64_t sub_1E101CD50()
{
  v1 = *(v0 + 240);
  v2 = *(v0 + 248);
  v3 = *(v0 + 232);
  v5 = *(v0 + 160);
  v4 = *(v0 + 168);
  v6 = *(v0 + 152);
  v7 = sub_1E10ADA0C();
  v8 = *(v7 + 48);
  v9 = *(v7 + 52);
  swift_allocObject();
  sub_1E10AD9FC();
  (*(v5 + 104))(v4, *MEMORY[0x1E6967F30], v6);
  sub_1E10AD9DC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE89880, &qword_1E10B39F8);
  sub_1E101D628(&qword_1ECE89888, &qword_1ECE89880, &qword_1E10B39F8);
  sub_1E10AD9EC();
  v11 = *(v0 + 232);
  v10 = *(v0 + 240);
  if (v2)
  {

    sub_1E0FFDAC0(v11, v10);
    v12 = *(v0 + 216);
    v13 = *(v0 + 192);
    v14 = *(v0 + 168);
  }

  else
  {
    v16 = *(v0 + 216);
    v17 = *(v0 + 192);
    v18 = *(v0 + 168);
    v19 = *(v0 + 128);

    sub_1E0FFDAC0(v11, v10);
    v20 = *(v0 + 16);
    v21 = *(v0 + 48);
    v19[1] = *(v0 + 32);
    v19[2] = v21;
    *v19 = v20;
    v22 = *(v0 + 64);
    v23 = *(v0 + 80);
    v24 = *(v0 + 112);
    v19[5] = *(v0 + 96);
    v19[6] = v24;
    v19[3] = v22;
    v19[4] = v23;
  }

  v15 = *(v0 + 8);

  return v15();
}

uint64_t sub_1E101CF18(uint64_t a1, uint64_t a2)
{
  v3[17] = a2;
  v3[18] = v2;
  v3[16] = a1;
  v4 = sub_1E10AD9CC();
  v3[19] = v4;
  v5 = *(v4 - 8);
  v3[20] = v5;
  v6 = *(v5 + 64) + 15;
  v3[21] = swift_task_alloc();
  v7 = sub_1E10ADBBC();
  v3[22] = v7;
  v8 = *(v7 - 8);
  v3[23] = v8;
  v9 = *(v8 + 64) + 15;
  v3[24] = swift_task_alloc();
  v10 = sub_1E10AD9AC();
  v3[25] = v10;
  v11 = *(v10 - 8);
  v3[26] = v11;
  v12 = *(v11 + 64) + 15;
  v3[27] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E101D094, v2, 0);
}

uint64_t sub_1E101D094()
{
  v1 = v0[27];
  v2 = *(v0[18] + 152);
  (*(v0[23] + 16))(v0[24], v0[17], v0[22]);
  sub_1E10AD97C();
  v3 = swift_task_alloc();
  v0[28] = v3;
  *v3 = v0;
  v3[1] = sub_1E101D170;
  v4 = v0[27];

  return sub_1E107A5C4(v4);
}

uint64_t sub_1E101D170(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = *v4;
  v7 = *v4;
  v8 = *(*v4 + 224);
  v9 = *(*v4 + 208);
  v10 = *v4;
  v7[29] = a1;
  v7[30] = a2;
  v7[31] = v3;

  v11 = v6[27];
  v12 = v6[25];
  v13 = v6[18];
  (*(v9 + 8))(v11, v12);
  if (v3)
  {
    v14 = sub_1E101D4D0;
  }

  else
  {

    v14 = sub_1E101D308;
  }

  return MEMORY[0x1EEE6DFA0](v14, v13, 0);
}

uint64_t sub_1E101D308()
{
  v1 = *(v0 + 240);
  v2 = *(v0 + 248);
  v3 = *(v0 + 232);
  v5 = *(v0 + 160);
  v4 = *(v0 + 168);
  v6 = *(v0 + 152);
  v7 = sub_1E10ADA0C();
  v8 = *(v7 + 48);
  v9 = *(v7 + 52);
  swift_allocObject();
  sub_1E10AD9FC();
  (*(v5 + 104))(v4, *MEMORY[0x1E6967F30], v6);
  sub_1E10AD9DC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8B280, &qword_1E10BA7B0);
  sub_1E101D628(&qword_1ECE89890, &qword_1ECE8B280, &qword_1E10BA7B0);
  sub_1E10AD9EC();
  v11 = *(v0 + 232);
  v10 = *(v0 + 240);
  if (v2)
  {

    sub_1E0FFDAC0(v11, v10);
    v12 = *(v0 + 216);
    v13 = *(v0 + 192);
    v14 = *(v0 + 168);
  }

  else
  {
    v16 = *(v0 + 216);
    v17 = *(v0 + 192);
    v18 = *(v0 + 168);
    v19 = *(v0 + 128);

    sub_1E0FFDAC0(v11, v10);
    v20 = *(v0 + 16);
    v21 = *(v0 + 48);
    v19[1] = *(v0 + 32);
    v19[2] = v21;
    *v19 = v20;
    v22 = *(v0 + 64);
    v23 = *(v0 + 80);
    v24 = *(v0 + 112);
    v19[5] = *(v0 + 96);
    v19[6] = v24;
    v19[3] = v22;
    v19[4] = v23;
  }

  v15 = *(v0 + 8);

  return v15();
}

uint64_t sub_1E101D4D0()
{
  v1 = v0[31];
  v2 = v0[27];
  v3 = v0[24];
  v4 = v0[21];

  v5 = v0[1];

  return v5();
}

uint64_t sub_1E101D554()
{
  sub_1E0FF3C74(v0 + 112);
  v1 = *(v0 + 152);

  swift_defaultActor_destroy();

  return MEMORY[0x1EEE6DEF0](v0);
}

uint64_t sub_1E101D5B8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE89878, &unk_1E10B6A20);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E101D628(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1E101D680(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = sub_1E1028044();
  result = MEMORY[0x1E12EDB70](v2, &type metadata for GeoNetworkRequest, v3);
  v5 = 0;
  v6 = *(a1 + 64);
  v17 = result;
  v7 = 1 << *(a1 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & v6;
  v10 = (v7 + 63) >> 6;
  if ((v8 & v6) != 0)
  {
    do
    {
      v11 = v5;
LABEL_9:
      v12 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      v13 = (*(a1 + 48) + 48 * (v12 | (v11 << 6)));
      v14 = v13[1];
      v18[0] = *v13;
      v18[1] = v14;
      v20[0] = v18[0];
      v15 = v13[1];
      v19 = v13[2];
      v20[2] = v19;
      v20[1] = v15;
      v21 = v19;
      v22 = v15;
      sub_1E1027C5C(v20, &v16);
      sub_1E1027CB8(&v22, &v16);
      sub_1E1027CB8(&v21, &v16);
      sub_1E10242B8(&v16, v18);
    }

    while (v9);
  }

  while (1)
  {
    v11 = v5 + 1;
    if (__OFADD__(v5, 1))
    {
      break;
    }

    if (v11 >= v10)
    {

      return v17;
    }

    v9 = *(a1 + 64 + 8 * v11);
    ++v5;
    if (v9)
    {
      v5 = v11;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1E101D7F4(uint64_t a1, uint64_t a2)
{
  v3[13] = a2;
  v3[14] = v2;
  v3[12] = a1;
  v4 = type metadata accessor for PartialEventResource.Version(0);
  v3[15] = v4;
  v5 = *(*(v4 - 8) + 64) + 15;
  v3[16] = swift_task_alloc();
  v6 = sub_1E10AD9CC();
  v3[17] = v6;
  v7 = *(v6 - 8);
  v3[18] = v7;
  v8 = *(v7 + 64) + 15;
  v3[19] = swift_task_alloc();
  v9 = sub_1E10AD9AC();
  v3[20] = v9;
  v10 = *(v9 - 8);
  v3[21] = v10;
  v11 = *(v10 + 64) + 15;
  v3[22] = swift_task_alloc();
  v12 = *(*(type metadata accessor for AccessTokenResource() - 8) + 64) + 15;
  v3[23] = swift_task_alloc();
  v13 = sub_1E10ADBBC();
  v3[24] = v13;
  v14 = *(v13 - 8);
  v3[25] = v14;
  v15 = *(v14 + 64) + 15;
  v3[26] = swift_task_alloc();
  v3[27] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E101D9D8, v2, 0);
}

uint64_t sub_1E101D9D8()
{
  if (*(v0 + 104))
  {
    v1 = *(v0 + 104);
  }

  else
  {
    v2 = sub_1E1062474();
    v3 = [objc_opt_self() standardUserDefaults];
    type metadata accessor for AccessTokenProvider();
    v1 = swift_allocObject();
    swift_defaultActor_initialize();
    v1[14] = v2;
    v1[17] = &type metadata for EventsRemoteConfiguration;
    v1[18] = &off_1F5BF1318;
    v1[19] = v3;
    v1[20] = 0;
  }

  *(v0 + 224) = v1;

  return MEMORY[0x1EEE6DFA0](sub_1E101DAC4, v1, 0);
}

uint64_t sub_1E101DAC4()
{
  sub_1E0FF33C0(v0[28] + 112, (v0 + 2));
  v1 = swift_task_alloc();
  v0[29] = v1;
  *v1 = v0;
  v1[1] = sub_1E101DB6C;
  v2 = v0[28];
  v3 = v0[23];

  return sub_1E0FFBA58(v3);
}

uint64_t sub_1E101DB6C()
{
  v2 = *(*v1 + 232);
  v3 = *v1;
  v3[30] = v0;

  if (v0)
  {
    v4 = v3[14];
    sub_1E0FF3C74((v3 + 2));

    return MEMORY[0x1EEE6DFA0](sub_1E101E65C, v4, 0);
  }

  else
  {
    v5 = swift_task_alloc();
    v3[31] = v5;
    *v5 = v3;
    v5[1] = sub_1E101DCF0;
    v6 = v3[27];
    v7 = v3[23];

    return sub_1E105F41C(v6, v7);
  }
}

uint64_t sub_1E101DCF0()
{
  v2 = *v1;
  v3 = *(*v1 + 248);
  v4 = *v1;
  v2[32] = v0;

  v5 = v2[14];
  sub_1E1028100(v2[23], type metadata accessor for AccessTokenResource);
  sub_1E0FF3C74((v2 + 2));
  if (v0)
  {
    v6 = sub_1E101E878;
  }

  else
  {
    v6 = sub_1E101DE54;
  }

  return MEMORY[0x1EEE6DFA0](v6, v5, 0);
}

uint64_t sub_1E101DE54()
{
  v1 = *(v0 + 208);
  v2 = *(v0 + 216);
  v3 = *(v0 + 192);
  v4 = *(v0 + 200);
  v5 = *(v0 + 176);
  type metadata accessor for NetworkRunner();
  v6 = swift_allocObject();
  *(v0 + 264) = v6;
  swift_defaultActor_initialize();
  v7 = [objc_opt_self() defaultSessionConfiguration];
  v8 = [objc_opt_self() sessionWithConfiguration_];
  *(v0 + 80) = &type metadata for DefaultNetworkSession;
  *(v0 + 88) = &off_1F5BF3208;

  *(v0 + 56) = v8;
  sub_1E100C5C4((v0 + 56), v6 + 112);
  (*(v4 + 16))(v1, v2, v3);
  sub_1E10AD97C();
  v9 = swift_task_alloc();
  *(v0 + 272) = v9;
  *v9 = v0;
  v9[1] = sub_1E101DFD4;
  v10 = *(v0 + 176);

  return sub_1E107A5C4(v10);
}

uint64_t sub_1E101DFD4(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = *v4;
  v7 = *v4;
  v8 = *(*v4 + 272);
  v9 = *(*v4 + 168);
  v10 = *v4;
  v7[35] = a1;
  v7[36] = a2;
  v7[37] = v3;

  v11 = v6[22];
  v12 = v6[20];
  v13 = v6[14];
  (*(v9 + 8))(v11, v12);
  if (v3)
  {
    v14 = sub_1E101EA94;
  }

  else
  {

    v14 = sub_1E101E16C;
  }

  return MEMORY[0x1EEE6DFA0](v14, v13, 0);
}

uint64_t sub_1E101E16C()
{
  v1 = v0[36];
  v55 = v0[37];
  v2 = v0[35];
  v3 = v0[18];
  v4 = v0[19];
  v5 = v0[16];
  v6 = v0[17];
  v7 = v0[15];
  v8 = sub_1E10ADA0C();
  v9 = *(v8 + 48);
  v10 = *(v8 + 52);
  swift_allocObject();
  sub_1E10AD9FC();
  (*(v3 + 104))(v4, *MEMORY[0x1E6967F30], v6);
  sub_1E10AD9DC();
  sub_1E10281C8(&qword_1EE17F3C0, 255, type metadata accessor for PartialEventResource.Version);
  sub_1E10AD9EC();
  if (v55)
  {
    v12 = v0[35];
    v11 = v0[36];
    v13 = v0[33];
    v14 = v0[28];
    (*(v0[25] + 8))(v0[27], v0[24]);

    sub_1E0FFDAC0(v12, v11);

    if (qword_1EE180170 != -1)
    {
      swift_once();
    }

    v15 = sub_1E10ADF9C();
    __swift_project_value_buffer(v15, qword_1EE185540);
    v16 = v55;
    v17 = sub_1E10ADF7C();
    v18 = sub_1E10AE44C();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      *v19 = 138412290;
      v21 = v55;
      v22 = _swift_stdlib_bridgeErrorToNSError();
      *(v19 + 4) = v22;
      *v20 = v22;
      _os_log_impl(&dword_1E0FDF000, v17, v18, "Failed to fetch event service version: %@", v19, 0xCu);
      sub_1E0FF0440(v20, &qword_1ECE89170, &qword_1E10B15D0);
      MEMORY[0x1E12EE9E0](v20, -1, -1);
      MEMORY[0x1E12EE9E0](v19, -1, -1);
    }

    v24 = v0[26];
    v23 = v0[27];
    v26 = v0[22];
    v25 = v0[23];
    v27 = v0[19];
    v28 = v0[16];

    sub_1E10095EC();
    swift_allocError();
    *v29 = xmmword_1E10B3A30;
    swift_willThrow();

    v30 = v0[1];
  }

  else
  {
    if (qword_1EE180170 != -1)
    {
      swift_once();
    }

    v31 = sub_1E10ADF9C();
    __swift_project_value_buffer(v31, qword_1EE185540);
    v32 = sub_1E10ADF7C();
    v33 = sub_1E10AE45C();
    v34 = os_log_type_enabled(v32, v33);
    v36 = v0[35];
    v35 = v0[36];
    v37 = v0[28];
    if (v34)
    {
      v38 = swift_slowAlloc();
      *v38 = 0;
      _os_log_impl(&dword_1E0FDF000, v32, v33, "Fetched event service level version", v38, 2u);
      MEMORY[0x1E12EE9E0](v38, -1, -1);

      sub_1E0FFDAC0(v36, v35);
    }

    else
    {

      sub_1E0FFDAC0(v36, v35);
    }

    v39 = v0[33];
    v41 = v0[26];
    v40 = v0[27];
    v42 = v0[24];
    v43 = v0[25];
    v44 = v0[22];
    v45 = v0[23];
    v56 = v0[19];
    v46 = v0[15];
    v47 = v0[16];
    v48 = v0[12];

    (*(v43 + 8))(v40, v42);
    v49 = sub_1E10ADCBC();
    (*(*(v49 - 8) + 32))(v48, v47, v49);
    v50 = (v47 + *(v46 + 20));
    v51 = *v50;
    v52 = v50[1];
    v53 = (v48 + *(type metadata accessor for EventService.Version() + 20));
    *v53 = v51;
    v53[1] = v52;

    v30 = v0[1];
  }

  return v30();
}

uint64_t sub_1E101E65C()
{
  v1 = v0[28];

  v2 = v0[30];
  if (qword_1EE180170 != -1)
  {
    swift_once();
  }

  v3 = sub_1E10ADF9C();
  __swift_project_value_buffer(v3, qword_1EE185540);
  v4 = v2;
  v5 = sub_1E10ADF7C();
  v6 = sub_1E10AE44C();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    v9 = v2;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_1E0FDF000, v5, v6, "Failed to fetch event service version: %@", v7, 0xCu);
    sub_1E0FF0440(v8, &qword_1ECE89170, &qword_1E10B15D0);
    MEMORY[0x1E12EE9E0](v8, -1, -1);
    MEMORY[0x1E12EE9E0](v7, -1, -1);
  }

  v12 = v0[26];
  v11 = v0[27];
  v14 = v0[22];
  v13 = v0[23];
  v15 = v0[19];
  v16 = v0[16];

  sub_1E10095EC();
  swift_allocError();
  *v17 = xmmword_1E10B3A30;
  swift_willThrow();

  v18 = v0[1];

  return v18();
}

uint64_t sub_1E101E878()
{
  v1 = v0[28];

  v2 = v0[32];
  if (qword_1EE180170 != -1)
  {
    swift_once();
  }

  v3 = sub_1E10ADF9C();
  __swift_project_value_buffer(v3, qword_1EE185540);
  v4 = v2;
  v5 = sub_1E10ADF7C();
  v6 = sub_1E10AE44C();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    v9 = v2;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_1E0FDF000, v5, v6, "Failed to fetch event service version: %@", v7, 0xCu);
    sub_1E0FF0440(v8, &qword_1ECE89170, &qword_1E10B15D0);
    MEMORY[0x1E12EE9E0](v8, -1, -1);
    MEMORY[0x1E12EE9E0](v7, -1, -1);
  }

  v12 = v0[26];
  v11 = v0[27];
  v14 = v0[22];
  v13 = v0[23];
  v15 = v0[19];
  v16 = v0[16];

  sub_1E10095EC();
  swift_allocError();
  *v17 = xmmword_1E10B3A30;
  swift_willThrow();

  v18 = v0[1];

  return v18();
}

uint64_t sub_1E101EA94()
{
  v1 = v0[33];
  v2 = v0[27];
  v3 = v0[28];
  v4 = v0[24];
  v5 = v0[25];

  (*(v5 + 8))(v2, v4);
  v6 = v0[37];
  if (qword_1EE180170 != -1)
  {
    swift_once();
  }

  v7 = sub_1E10ADF9C();
  __swift_project_value_buffer(v7, qword_1EE185540);
  v8 = v6;
  v9 = sub_1E10ADF7C();
  v10 = sub_1E10AE44C();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    *v11 = 138412290;
    v13 = v6;
    v14 = _swift_stdlib_bridgeErrorToNSError();
    *(v11 + 4) = v14;
    *v12 = v14;
    _os_log_impl(&dword_1E0FDF000, v9, v10, "Failed to fetch event service version: %@", v11, 0xCu);
    sub_1E0FF0440(v12, &qword_1ECE89170, &qword_1E10B15D0);
    MEMORY[0x1E12EE9E0](v12, -1, -1);
    MEMORY[0x1E12EE9E0](v11, -1, -1);
  }

  v16 = v0[26];
  v15 = v0[27];
  v18 = v0[22];
  v17 = v0[23];
  v19 = v0[19];
  v20 = v0[16];

  sub_1E10095EC();
  swift_allocError();
  *v21 = xmmword_1E10B3A30;
  swift_willThrow();

  v22 = v0[1];

  return v22();
}

uint64_t sub_1E101ECD8(uint64_t a1, uint64_t a2)
{
  v3[13] = a2;
  v3[14] = v2;
  v3[12] = a1;
  v4 = sub_1E10ADEEC();
  v3[15] = v4;
  v5 = *(v4 - 8);
  v3[16] = v5;
  v6 = *(v5 + 64) + 15;
  v3[17] = swift_task_alloc();
  v3[18] = swift_task_alloc();
  v7 = sub_1E10ADF9C();
  v3[19] = v7;
  v8 = *(v7 - 8);
  v3[20] = v8;
  v9 = *(v8 + 64) + 15;
  v3[21] = swift_task_alloc();
  v10 = sub_1E10ADF1C();
  v3[22] = v10;
  v11 = *(v10 - 8);
  v3[23] = v11;
  v12 = *(v11 + 64) + 15;
  v3[24] = swift_task_alloc();
  v13 = sub_1E10AE6BC();
  v3[25] = v13;
  v14 = *(v13 - 8);
  v3[26] = v14;
  v15 = *(v14 + 64) + 15;
  v3[27] = swift_task_alloc();
  v3[28] = swift_task_alloc();
  v16 = type metadata accessor for PartialEventConfiguration(0);
  v3[29] = v16;
  v17 = *(*(v16 - 8) + 64) + 15;
  v3[30] = swift_task_alloc();
  v3[31] = swift_task_alloc();
  v3[32] = swift_task_alloc();
  v3[33] = swift_task_alloc();
  v3[34] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E101EF28, v2, 0);
}

uint64_t sub_1E101EF28()
{
  sub_1E10AE2EC();
  v1 = *(v0[14] + 120);
  v2 = swift_task_alloc();
  v0[35] = v2;
  *v2 = v0;
  v2[1] = sub_1E101F0A8;
  v3 = v0[34];

  return sub_1E0FF0548(v3);
}

uint64_t sub_1E101F0A8()
{
  v2 = *v1;
  v3 = *(*v1 + 280);
  v4 = *v1;
  *(*v1 + 288) = v0;

  v5 = *(v2 + 112);
  if (v0)
  {
    v6 = sub_1E1020678;
  }

  else
  {
    v6 = sub_1E101F1D4;
  }

  return MEMORY[0x1EEE6DFA0](v6, v5, 0);
}

uint64_t sub_1E101F1D4()
{
  v1 = v0[34];
  v2 = v0[29];
  if (*(v1 + *(v2 + 36)) <= 0.0)
  {
    type metadata accessor for GeoNetworkRequestBatch();
    v10 = swift_allocObject();
    v0[39] = v10;
    swift_defaultActor_initialize();
    v11 = MEMORY[0x1E69E7CC8];
    *(v10 + 112) = MEMORY[0x1E69E7CC8];
    *(v10 + 120) = v11;

    return MEMORY[0x1EEE6DFA0](sub_1E101F794, v10, 0);
  }

  else
  {
    if (qword_1EE180170 != -1)
    {
      swift_once();
      v1 = v0[34];
    }

    v3 = v0[33];
    __swift_project_value_buffer(v0[19], qword_1EE185540);
    sub_1E1028098(v1, v3, type metadata accessor for PartialEventConfiguration);
    v4 = sub_1E10ADF7C();
    v5 = sub_1E10AE45C();
    v6 = os_log_type_enabled(v4, v5);
    v7 = v0[33];
    if (v6)
    {
      v8 = swift_slowAlloc();
      *v8 = 134217984;
      v9 = *(v7 + *(v2 + 36));
      sub_1E1028100(v7, type metadata accessor for PartialEventConfiguration);
      *(v8 + 4) = v9;
      _os_log_impl(&dword_1E0FDF000, v4, v5, "Throttling next batch of requests with a delay of %f seconds", v8, 0xCu);
      MEMORY[0x1E12EE9E0](v8, -1, -1);
    }

    else
    {

      sub_1E1028100(v7, type metadata accessor for PartialEventConfiguration);
    }

    v12 = v0[28];
    v13 = sub_1E10AEABC();
    v15 = v14;
    sub_1E10AE97C();
    v16 = swift_task_alloc();
    v0[37] = v16;
    *v16 = v0;
    v16[1] = sub_1E101F47C;
    v17 = v0[28];

    return sub_1E1078844(v13, v15, 0, 0, 1);
  }
}

uint64_t sub_1E101F47C()
{
  v2 = *v1;
  v3 = *(*v1 + 296);
  v4 = *v1;
  *(*v1 + 304) = v0;

  v5 = v2[28];
  v6 = v2[26];
  v7 = v2[25];
  v8 = v2[14];
  (*(v6 + 8))(v5, v7);
  if (v0)
  {
    v9 = sub_1E101F684;
  }

  else
  {
    v9 = sub_1E101F5F8;
  }

  return MEMORY[0x1EEE6DFA0](v9, v8, 0);
}

uint64_t sub_1E101F5F8()
{
  type metadata accessor for GeoNetworkRequestBatch();
  v1 = swift_allocObject();
  *(v0 + 312) = v1;
  swift_defaultActor_initialize();
  v2 = MEMORY[0x1E69E7CC8];
  *(v1 + 112) = MEMORY[0x1E69E7CC8];
  *(v1 + 120) = v2;

  return MEMORY[0x1EEE6DFA0](sub_1E101F794, v1, 0);
}

uint64_t sub_1E101F684()
{
  sub_1E1028100(v0[34], type metadata accessor for PartialEventConfiguration);
  v2 = v0[33];
  v1 = v0[34];
  v4 = v0[31];
  v3 = v0[32];
  v5 = v0[30];
  v7 = v0[27];
  v6 = v0[28];
  v8 = v0[24];
  v9 = v0[21];
  v10 = v0[18];
  v13 = v0[17];
  v14 = v0[38];

  v11 = v0[1];

  return v11();
}

uint64_t sub_1E101F794()
{
  v1 = v0[39];
  v2 = v0[14];
  sub_1E10181EC(v0[12]);
  swift_beginAccess();
  v3 = *(v1 + 112);

  v0[40] = sub_1E101D680(v4);

  return MEMORY[0x1EEE6DFA0](sub_1E101F828, v2, 0);
}

uint64_t sub_1E101F828()
{
  v42 = *(*(v0 + 320) + 16);
  *(v0 + 328) = v42;

  if (qword_1EE180170 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 272);
  v3 = *(v0 + 248);
  v2 = *(v0 + 256);
  v4 = *(v0 + 240);
  v5 = __swift_project_value_buffer(*(v0 + 152), qword_1EE185540);
  *(v0 + 336) = v5;
  sub_1E1028098(v1, v2, type metadata accessor for PartialEventConfiguration);
  sub_1E1028098(v1, v3, type metadata accessor for PartialEventConfiguration);
  sub_1E1028098(v1, v4, type metadata accessor for PartialEventConfiguration);
  v6 = sub_1E10ADF7C();
  v7 = sub_1E10AE45C();
  v8 = os_log_type_enabled(v6, v7);
  v9 = *(v0 + 248);
  v10 = *(v0 + 256);
  v11 = *(v0 + 240);
  if (v8)
  {
    v12 = *(v0 + 232);
    v40 = v5;
    v13 = swift_slowAlloc();
    *v13 = 134218752;
    *(v13 + 4) = v42;
    *(v13 + 12) = 2048;
    v14 = *(v10 + v12[8]);
    sub_1E1028100(v10, type metadata accessor for PartialEventConfiguration);
    *(v13 + 14) = v14;
    *(v13 + 22) = 2048;
    v15 = *(v9 + v12[6]);
    sub_1E1028100(v9, type metadata accessor for PartialEventConfiguration);
    *(v13 + 24) = v15;
    *(v13 + 32) = 2048;
    v16 = *(v11 + v12[7]);
    sub_1E1028100(v11, type metadata accessor for PartialEventConfiguration);
    *(v13 + 34) = v16;
    _os_log_impl(&dword_1E0FDF000, v6, v7, "Fetch a total of %ld requests, maximum %ld at a time, retry count: %ld, retry delay: %f", v13, 0x2Au);
    v5 = v40;
    MEMORY[0x1E12EE9E0](v13, -1, -1);
  }

  else
  {
    sub_1E1028100(*(v0 + 248), type metadata accessor for PartialEventConfiguration);
    sub_1E1028100(v10, type metadata accessor for PartialEventConfiguration);

    sub_1E1028100(v11, type metadata accessor for PartialEventConfiguration);
  }

  v17 = *(v0 + 192);
  v18 = *(v0 + 144);
  (*(*(v0 + 160) + 16))(*(v0 + 168), v5, *(v0 + 152));
  sub_1E10ADEFC();
  sub_1E10ADEDC();
  v19 = sub_1E10ADF0C();
  v20 = sub_1E10AE47C();
  if (sub_1E10AE4DC())
  {
    v21 = *(v0 + 144);
    v22 = swift_slowAlloc();
    *v22 = 134217984;
    *(v22 + 4) = v42;
    v23 = sub_1E10ADECC();
    _os_signpost_emit_with_name_impl(&dword_1E0FDF000, v19, v20, v23, "PartialEventFetcher.partialEvents", "%ld", v22, 0xCu);
    MEMORY[0x1E12EE9E0](v22, -1, -1);
  }

  v24 = *(v0 + 312);
  v25 = *(v0 + 272);
  v26 = *(v0 + 216);
  v27 = *(v0 + 136);
  v28 = *(v0 + 144);
  v29 = *(v0 + 120);
  v30 = *(v0 + 128);
  v31 = *(v0 + 112);
  v41 = *(v0 + 96);

  (*(v30 + 16))(v27, v28, v29);
  v32 = sub_1E10ADF5C();
  v33 = *(v32 + 48);
  v34 = *(v32 + 52);
  swift_allocObject();
  *(v0 + 344) = sub_1E10ADF4C();
  (*(v30 + 8))(v28, v29);
  sub_1E10AE6AC();
  *(v0 + 352) = sub_1E10281C8(&qword_1ECE89898, v35, type metadata accessor for PartialEventFetcher);
  v36 = swift_task_alloc();
  *(v0 + 360) = v36;
  v36[1].i64[0] = v24;
  v36[1].i64[1] = v25;
  v36[2].i64[0] = v42;
  v36[2].i64[1] = v31;
  v36[3] = vextq_s8(v41, v41, 8uLL);
  swift_getObjectType();
  v38 = sub_1E10AE23C();
  *(v0 + 368) = v38;
  *(v0 + 376) = v37;

  return MEMORY[0x1EEE6DFA0](sub_1E101FC70, v38, v37);
}

uint64_t sub_1E101FC70()
{
  v1 = v0[44];
  v0[10] = 0;
  v2 = v0[14];
  v3 = swift_task_alloc();
  v0[48] = v3;
  *v3 = v0;
  v3[1] = sub_1E101FD50;
  v4 = v0[45];
  v5 = v0[27];

  return sub_1E10273E0(v2, v1, v5, (v0 + 10), &unk_1E10B3AB8, v4);
}

uint64_t sub_1E101FD50(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v5 = *v3;
  v6 = *(*v3 + 384);
  v7 = *v3;
  v5[49] = a1;
  v5[50] = a2;
  v5[51] = v2;

  v8 = v4[47];
  v9 = v4[46];
  if (v2)
  {
    v10 = sub_1E101FFA4;
  }

  else
  {
    v10 = sub_1E101FE98;
  }

  return MEMORY[0x1EEE6DFA0](v10, v9, v8);
}

uint64_t sub_1E101FE98()
{
  v1 = v0[10];
  v0[52] = v1;
  if (v1)
  {
    v2 = v0[45];
    v3 = v0[14];
    (*(v0[26] + 8))(v0[27], v0[25]);

    v4 = sub_1E102003C;
  }

  else
  {
    sub_1E10279E4();
    v5 = swift_allocError();
    swift_willThrow();
    v0[53] = v5;
    v6 = v0[45];
    v3 = v0[14];
    (*(v0[26] + 8))(v0[27], v0[25]);
    v7 = v0[10];

    v4 = sub_1E1020234;
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, 0);
}

uint64_t sub_1E101FFA4()
{
  v0[53] = v0[51];
  v1 = v0[45];
  v2 = v0[14];
  (*(v0[26] + 8))(v0[27], v0[25]);
  v3 = v0[10];

  return MEMORY[0x1EEE6DFA0](sub_1E1020234, v2, 0);
}

uint64_t sub_1E102003C()
{
  v1 = v0[49];
  v2 = v0[50];
  v3 = sub_1E10AEA6C();
  sub_1E10AEA6C();
  v5 = v4 * 1.0e-18 + v3;
  if (v5 > 0.0)
  {
    v6 = v0[41] / v5;
    sub_1E1027A38();
    v7 = sub_1E10AE49C();
    v8 = [v7 integerValue];

    sub_1E0FF4488(v8, 1);
  }

  v26 = v0[52];
  v9 = v0[43];
  v10 = v0[39];
  v12 = v0[33];
  v11 = v0[34];
  v14 = v0[31];
  v13 = v0[32];
  v20 = v0[30];
  v21 = v0[28];
  v16 = v0[23];
  v15 = v0[24];
  v17 = v0[22];
  v22 = v0[27];
  v23 = v0[21];
  v24 = v0[18];
  v25 = v0[17];
  sub_1E1021064(v15, "PartialEventFetcher.partialEvents", 33, 2);

  (*(v16 + 8))(v15, v17);
  sub_1E1028100(v11, type metadata accessor for PartialEventConfiguration);

  v18 = v0[1];

  return v18(v26);
}

uint64_t sub_1E1020234()
{
  v1 = *(v0 + 424);
  v2 = *(v0 + 336);
  v3 = v1;
  v4 = sub_1E10ADF7C();
  v5 = sub_1E10AE44C();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 424);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    v9 = v6;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_1E0FDF000, v4, v5, "Failed to retrieve partial events: %@", v7, 0xCu);
    sub_1E0FF0440(v8, &qword_1ECE89170, &qword_1E10B15D0);
    MEMORY[0x1E12EE9E0](v8, -1, -1);
    MEMORY[0x1E12EE9E0](v7, -1, -1);
  }

  v11 = *(v0 + 424);

  *(v0 + 88) = v11;
  v12 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE88F88, &qword_1E10B07B0);
  if (swift_dynamicCast())
  {
    v13 = *(v0 + 32);
    *(v0 + 432) = *(v0 + 16);
    *(v0 + 448) = v13;
    if (!*(v0 + 48))
    {
      v14 = *(v0 + 312);
      v15 = sub_1E102076C;
      goto LABEL_9;
    }

    if (*(v0 + 48) == 1)
    {
      v14 = *(v0 + 312);
      v15 = sub_1E1020BE8;
LABEL_9:

      return MEMORY[0x1EEE6DFA0](v15, v14, 0);
    }

    v23 = *(v0 + 336);
    v24 = sub_1E10ADF7C();
    v25 = sub_1E10AE44C();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&dword_1E0FDF000, v24, v25, "Reached the maximum number of allowed errors, retry requests later", v26, 2u);
      MEMORY[0x1E12EE9E0](v26, -1, -1);
    }

    v27 = *(v0 + 424);
    v28 = *(v0 + 344);
    v29 = *(v0 + 312);
    v30 = *(v0 + 272);
    v32 = *(v0 + 184);
    v31 = *(v0 + 192);
    v33 = *(v0 + 176);

    sub_1E10095EC();
    swift_allocError();
    *v34 = xmmword_1E10B3A40;
    swift_willThrow();

    sub_1E1021064(v31, "PartialEventFetcher.partialEvents", 33, 2);

    (*(v32 + 8))(v31, v33);
    sub_1E1028100(v30, type metadata accessor for PartialEventConfiguration);
  }

  else
  {
    v16 = *(v0 + 424);
    v17 = *(v0 + 344);
    v18 = *(v0 + 312);
    v19 = *(v0 + 272);
    v21 = *(v0 + 184);
    v20 = *(v0 + 192);
    v22 = *(v0 + 176);

    swift_willThrow();
    sub_1E1021064(v20, "PartialEventFetcher.partialEvents", 33, 2);

    (*(v21 + 8))(v20, v22);
    sub_1E1028100(v19, type metadata accessor for PartialEventConfiguration);
    v48 = *(v0 + 424);
  }

  v36 = *(v0 + 264);
  v35 = *(v0 + 272);
  v38 = *(v0 + 248);
  v37 = *(v0 + 256);
  v39 = *(v0 + 240);
  v41 = *(v0 + 216);
  v40 = *(v0 + 224);
  v42 = *(v0 + 192);
  v43 = *(v0 + 168);
  v44 = *(v0 + 144);
  v47 = *(v0 + 136);

  v45 = *(v0 + 8);

  return v45();
}

uint64_t sub_1E1020678()
{
  v2 = v0[33];
  v1 = v0[34];
  v4 = v0[31];
  v3 = v0[32];
  v5 = v0[30];
  v7 = v0[27];
  v6 = v0[28];
  v8 = v0[24];
  v9 = v0[21];
  v10 = v0[18];
  v13 = v0[17];
  v14 = v0[36];

  v11 = v0[1];

  return v11();
}

uint64_t sub_1E102076C()
{
  v1 = v0[39];
  v2 = v0[14];
  v0[58] = sub_1E1018B70(v0[54], v0[55]);

  return MEMORY[0x1EEE6DFA0](sub_1E10207E0, v2, 0);
}

uint64_t sub_1E10207E0()
{
  v53 = v0;
  v1 = *(v0 + 464);
  if (v1 >> 62)
  {
    if (v1 < 0)
    {
      v12 = *(v0 + 464);
    }

    if (sub_1E10AE70C())
    {
      goto LABEL_3;
    }

LABEL_10:
    v14 = *(v0 + 456);
    v13 = *(v0 + 464);
    v16 = *(v0 + 440);
    v15 = *(v0 + 448);
    v17 = *(v0 + 432);
    v18 = *(v0 + 336);

    v19 = sub_1E10ADF7C();
    v20 = sub_1E10AE44C();
    sub_1E10279CC(v17, v16, v15, v14, 0);
    v21 = os_log_type_enabled(v19, v20);
    v23 = *(v0 + 448);
    v22 = *(v0 + 456);
    v25 = *(v0 + 432);
    v24 = *(v0 + 440);
    if (v21)
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v52 = v27;
      *v26 = 136315138;
      v28 = sub_1E1078CFC(v25, v24, &v52);
      sub_1E10279CC(v25, v24, v23, v22, 0);
      *(v26 + 4) = v28;
      _os_log_impl(&dword_1E0FDF000, v19, v20, "No matching geo request for network request <%s>", v26, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v27);
      MEMORY[0x1E12EE9E0](v27, -1, -1);
      MEMORY[0x1E12EE9E0](v26, -1, -1);
    }

    else
    {

      sub_1E10279CC(v25, v24, v23, v22, 0);
    }

    v29 = *(v0 + 424);
    v30 = *(v0 + 344);
    v31 = *(v0 + 312);
    v32 = *(v0 + 272);
    v34 = *(v0 + 184);
    v33 = *(v0 + 192);
    v35 = *(v0 + 176);
    swift_willThrow();

    sub_1E1021064(v33, "PartialEventFetcher.partialEvents", 33, 2);

    (*(v34 + 8))(v33, v35);
    sub_1E1028100(v32, type metadata accessor for PartialEventConfiguration);
    v51 = *(v0 + 424);
    goto LABEL_14;
  }

  if (!*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_10;
  }

LABEL_3:
  result = sub_1E10279CC(*(v0 + 432), *(v0 + 440), *(v0 + 448), *(v0 + 456), 0);
  if ((v1 & 0xC000000000000001) != 0)
  {
    v3 = MEMORY[0x1E12EDD80](0, *(v0 + 464));
    v47 = *(v0 + 464);
  }

  else
  {
    if (!*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v3 = *(*(v0 + 464) + 32);
  }

  v4 = *(v0 + 424);
  v5 = *(v0 + 344);
  v6 = *(v0 + 312);
  v8 = *(v0 + 184);
  v7 = *(v0 + 192);
  v48 = *(v0 + 176);
  v49 = *(v0 + 272);

  v10 = *&v3[OBJC_IVAR____TtC12ShazamEvents22GeoXPCRequestContainer_id];
  v9 = *&v3[OBJC_IVAR____TtC12ShazamEvents22GeoXPCRequestContainer_id + 8];
  sub_1E10095EC();
  swift_allocError();
  *v11 = v10;
  v11[1] = v9;
  swift_willThrow();

  sub_1E1021064(v7, "PartialEventFetcher.partialEvents", 33, 2);

  (*(v8 + 8))(v7, v48);
  sub_1E1028100(v49, type metadata accessor for PartialEventConfiguration);
LABEL_14:
  v37 = *(v0 + 264);
  v36 = *(v0 + 272);
  v39 = *(v0 + 248);
  v38 = *(v0 + 256);
  v40 = *(v0 + 240);
  v42 = *(v0 + 216);
  v41 = *(v0 + 224);
  v43 = *(v0 + 192);
  v44 = *(v0 + 168);
  v45 = *(v0 + 144);
  v50 = *(v0 + 136);

  v46 = *(v0 + 8);

  return v46();
}