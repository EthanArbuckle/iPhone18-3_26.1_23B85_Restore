uint64_t sub_2202C932C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 1701147238;
  if (v2 != 1)
  {
    v3 = 1684627824;
  }

  if (*a1)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0x6E776F6E6B6E75;
  }

  if (v2)
  {
    v5 = 0xE400000000000000;
  }

  else
  {
    v5 = 0xE700000000000000;
  }

  v6 = 1701147238;
  if (*a2 != 1)
  {
    v6 = 1684627824;
  }

  if (*a2)
  {
    v7 = v6;
  }

  else
  {
    v7 = 0x6E776F6E6B6E75;
  }

  if (*a2)
  {
    v8 = 0xE400000000000000;
  }

  else
  {
    v8 = 0xE700000000000000;
  }

  if (v4 == v7 && v5 == v8)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_220370048();
  }

  return v9 & 1;
}

unint64_t sub_2202C9414()
{
  result = qword_27CF27CB8;
  if (!qword_27CF27CB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF27CB8);
  }

  return result;
}

uint64_t sub_2202C9468()
{
  v1 = *v0;
  sub_220370108();
  sub_22036FB08();

  return sub_220370128();
}

uint64_t sub_2202C94FC()
{
  *v0;
  *v0;
  sub_22036FB08();
}

uint64_t sub_2202C957C()
{
  v1 = *v0;
  sub_220370108();
  sub_22036FB08();

  return sub_220370128();
}

void sub_2202C9618(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 1701147238;
  if (v2 != 1)
  {
    v4 = 1684627824;
  }

  v5 = v2 == 0;
  if (*v1)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0x6E776F6E6B6E75;
  }

  if (!v5)
  {
    v3 = 0xE400000000000000;
  }

  *a1 = v6;
  a1[1] = v3;
}

unint64_t sub_2202C9728()
{
  result = qword_281264E50;
  if (!qword_281264E50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281264E50);
  }

  return result;
}

StocksAnalytics::SubscribeButtonLocation_optional __swiftcall SubscribeButtonLocation.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_22036FE78();

  v5 = 4;
  if (v3 < 4)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t SubscribeButtonLocation.rawValue.getter()
{
  v1 = 0x6E776F6E6B6E75;
  v2 = 1684366694;
  if (*v0 != 2)
  {
    v2 = 0x50676E69646E616CLL;
  }

  if (*v0)
  {
    v1 = 0x656C6369747261;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_2202C9864()
{
  result = qword_27CF27CC0;
  if (!qword_27CF27CC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF27CC0);
  }

  return result;
}

uint64_t sub_2202C98B8()
{
  v1 = *v0;
  sub_220370108();
  sub_22036FB08();

  return sub_220370128();
}

uint64_t sub_2202C997C()
{
  *v0;
  *v0;
  *v0;
  sub_22036FB08();
}

uint64_t sub_2202C9A2C()
{
  v1 = *v0;
  sub_220370108();
  sub_22036FB08();

  return sub_220370128();
}

void sub_2202C9AF8(uint64_t *a1@<X8>)
{
  v2 = 0xE700000000000000;
  v3 = 0x6E776F6E6B6E75;
  v4 = 0xE400000000000000;
  v5 = 1684366694;
  if (*v1 != 2)
  {
    v5 = 0x50676E69646E616CLL;
    v4 = 0xEB00000000656761;
  }

  if (*v1)
  {
    v3 = 0x656C6369747261;
    v2 = 0xE700000000000000;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

unint64_t sub_2202C9C38()
{
  result = qword_27CF27CC8;
  if (!qword_27CF27CC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF27CC8);
  }

  return result;
}

uint64_t ExternalAnalyticsURLProvider.__allocating_init(queryItemsGenerators:)(uint64_t a1)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  return result;
}

uint64_t ExternalAnalyticsURLProvider.generateURL<A>(from:configuration:sessionID:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char *a7@<X8>)
{
  v49 = a6;
  v13 = sub_22036E508();
  v47 = *(v13 - 8);
  v48 = v13;
  v14 = *(v47 + 64);
  MEMORY[0x28223BE20](v13);
  v45 = &v43 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2202CB678(0, &qword_281266AE0, MEMORY[0x277CC9260], MEMORY[0x277D83D88]);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16 - 8);
  v20 = &v43 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v43 - v21;
  v46 = a2;
  v23 = sub_22036E968();
  if (v24)
  {
    v44 = a7;
    sub_2202CA180(v54, a1, v23, v24, a3, a4, a5, v49, v51);

    *&v53[64] = v51[4];
    *&v53[80] = v51[5];
    *&v53[96] = v51[6];
    *v53 = v51[0];
    *&v53[16] = v51[1];
    *&v53[112] = v52;
    *&v53[32] = v51[2];
    *&v53[48] = v51[3];
    v25 = *&v51[0];
    if (*&v51[0])
    {
      sub_2202CA328(v53, &v50);

      v26 = *&v53[104];
      v27 = *&v53[112];

      sub_2202CA428(&v53[8]);

      sub_2202CA47C(v46, v25, v26, v27, v22);

      sub_2202CB190(v22, v20);
      v29 = v47;
      v28 = v48;
      if ((*(v47 + 48))(v20, 1, v48) == 1)
      {
        sub_2202CB224(v51, &qword_281267080, sub_2202CA38C);
        v30 = MEMORY[0x277CC9260];
        sub_2202CB224(v20, &qword_281266AE0, MEMORY[0x277CC9260]);
        sub_2202CA12C();
        swift_allocError();
        *v31 = 2;
        swift_willThrow();
        return sub_2202CB224(v22, &qword_281266AE0, v30);
      }

      else
      {
        sub_2202CB224(v22, &qword_281266AE0, MEMORY[0x277CC9260]);
        v35 = *(v29 + 32);
        v36 = v45;
        v35(v45, v20, v28);
        v37 = v44;
        v35(v44, v36, v28);

        v38 = type metadata accessor for ExternalURLData();
        v39 = &v37[*(v38 + 20)];
        v40 = *&v53[88];
        *(v39 + 4) = *&v53[72];
        *(v39 + 5) = v40;
        *(v39 + 6) = *&v53[104];
        v41 = *&v53[24];
        *v39 = *&v53[8];
        *(v39 + 1) = v41;
        v42 = *&v53[56];
        *(v39 + 2) = *&v53[40];
        *(v39 + 3) = v42;
        return (*(*(v38 - 8) + 56))(v37, 0, 1, v38);
      }
    }

    else
    {
      v34 = type metadata accessor for ExternalURLData();
      return (*(*(v34 - 8) + 56))(v44, 1, 1, v34);
    }
  }

  else
  {
    sub_2202CA12C();
    swift_allocError();
    *v33 = 0;
    return swift_willThrow();
  }
}

unint64_t sub_2202CA12C()
{
  result = qword_27CF27CD0;
  if (!qword_27CF27CD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF27CD0);
  }

  return result;
}

uint64_t sub_2202CA180@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v9 = *(result + 16);
  if (*(v9 + 16))
  {
    sub_2201F5DF4(v9 + 32, v25);
    v12 = v26;
    v13 = v27;
    __swift_project_boxed_opaque_existential_1(v25, v26);
    (*(v13 + 8))(v23, a2, a3, a4, a5, a6, a7, a8, v12, v13);
    result = __swift_destroy_boxed_opaque_existential_1(v25);
    v14 = v23[5];
    *(a9 + 64) = v23[4];
    *(a9 + 80) = v14;
    *(a9 + 96) = v23[6];
    *(a9 + 112) = v24;
    v15 = v23[1];
    *a9 = v23[0];
    *(a9 + 16) = v15;
    v16 = v23[3];
    *(a9 + 32) = v23[2];
    *(a9 + 48) = v16;
  }

  else
  {
    *(a9 + 112) = 0;
    *(a9 + 80) = 0u;
    *(a9 + 96) = 0u;
    *(a9 + 48) = 0u;
    *(a9 + 64) = 0u;
    *(a9 + 16) = 0u;
    *(a9 + 32) = 0u;
    *a9 = 0u;
  }

  return result;
}

uint64_t type metadata accessor for ExternalURLData()
{
  result = qword_281265600;
  if (!qword_281265600)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2202CA328(uint64_t a1, uint64_t a2)
{
  sub_2202CA38C();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_2202CA38C()
{
  if (!qword_281267070)
  {
    sub_2202CB678(255, &qword_281267078, MEMORY[0x277CC8918], MEMORY[0x277D83940]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_281267070);
    }
  }
}

uint64_t sub_2202CA47C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v104 = a4;
  v9 = MEMORY[0x277D83D88];
  sub_2202CB678(0, &qword_281266AE0, MEMORY[0x277CC9260], MEMORY[0x277D83D88]);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v110 = v89 - v12;
  v13 = sub_22036E508();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v103 = v89 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_22036E468();
  v120 = *(v17 - 8);
  v18 = *(v120 + 64);
  v19 = MEMORY[0x28223BE20](v17);
  v124 = v89 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v19);
  v123 = v89 - v22;
  v23 = MEMORY[0x28223BE20](v21);
  v102 = v89 - v24;
  v25 = MEMORY[0x28223BE20](v23);
  v101 = v89 - v26;
  v27 = MEMORY[0x28223BE20](v25);
  v107 = v89 - v28;
  MEMORY[0x28223BE20](v27);
  v106 = v89 - v29;
  v30 = sub_22036EA08();
  v31 = *(v30 - 8);
  v121 = v30;
  v122 = v31;
  v32 = *(v31 + 64);
  MEMORY[0x28223BE20](v30);
  v127 = v89 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2202CB678(0, qword_281267088, MEMORY[0x277CC8958], v9);
  v35 = *(*(v34 - 8) + 64);
  v36 = MEMORY[0x28223BE20](v34 - 8);
  v126 = v89 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v36);
  v39 = v89 - v38;
  v40 = sub_22036E4A8();
  v41 = *(v40 - 8);
  v42 = v41[8];
  v43 = MEMORY[0x28223BE20](v40);
  v100 = v89 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v43);
  v99 = v89 - v45;
  v116 = a1;
  sub_22036E998();
  if (!v46)
  {
    return (*(v14 + 56))(a5, 1, 1, v13);
  }

  v98 = a3;
  v47 = a2;
  sub_22036E498();

  v49 = v41 + 6;
  v48 = v41[6];
  if (v48(v39, 1, v40) == 1)
  {
    sub_2202CB224(v39, qword_281267088, MEMORY[0x277CC8958]);
    return (*(v14 + 56))(a5, 1, 1, v13);
  }

  v109 = v48;
  v92 = v41;
  v51 = v41[4];
  v52 = v99;
  v111 = v40;
  v51(v99, v39, v40);
  v53 = *(sub_22036E9B8() + 16);

  if (v53)
  {
    v105 = v13;
    v96 = v47;
    v54 = sub_22036E9B8();
    v55 = *(v54 + 16);
    if (v55)
    {
      v89[1] = a5;
      v119 = *(v122 + 16);
      v56 = (*(v122 + 80) + 32) & ~*(v122 + 80);
      v89[0] = v54;
      v57 = v54 + v56;
      v58 = *(v122 + 72);
      v114 = (v120 + 16);
      v112 = v120 + 32;
      v113 = v120 + 8;
      v122 += 16;
      v117 = (v122 - 8);
      v118 = v58;
      v97 = (v14 + 56);
      v95 = (v92 + 2);
      v94 = (v92 + 1);
      v93 = (v14 + 48);
      v91 = (v14 + 32);
      v59 = MEMORY[0x277D84F90];
      v90 = (v14 + 8);
      v108 = v17;
      v60 = v121;
      v115 = v49;
      while (1)
      {
        v119(v127, v57, v60);
        v62 = sub_22036E9C8();
        if (!v63)
        {
          goto LABEL_28;
        }

        v64 = v63;
        v125 = v62;
        if (sub_22036E9E8() == v62 && v64 == v65)
        {
        }

        else
        {
          v66 = sub_220370048();

          if ((v66 & 1) == 0)
          {

LABEL_28:
            sub_22036E9E8();
            sub_22036E9F8();
            v80 = v123;
            sub_22036E458();

            (*v114)(v124, v80, v17);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v59 = sub_220287E28(0, v59[2] + 1, 1, v59);
            }

            v82 = v59[2];
            v81 = v59[3];
            v60 = v121;
            if (v82 >= v81 >> 1)
            {
              v59 = sub_220287E28(v81 > 1, v82 + 1, 1, v59);
            }

            v83 = v120;
            (*(v120 + 8))(v123, v17);
            (*v117)(v127, v60);
            v59[2] = v82 + 1;
            (*(v83 + 32))(v59 + ((*(v83 + 80) + 32) & ~*(v83 + 80)) + *(v83 + 72) * v82, v124, v17);
            goto LABEL_11;
          }
        }

        v67 = v17;
        sub_22036E9F8();
        v68 = v126;
        sub_22036E498();

        v69 = v111;
        v70 = v109;
        if (!v109(v68, 1, v111))
        {
          v128 = MEMORY[0x277D84F90];

          sub_2202A5E38(v71);
          v72 = v106;
          sub_22036E458();
          (*v114)(v107, v72, v67);
          v73 = v128;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v73 = sub_220287E28(0, v73[2] + 1, 1, v73);
          }

          v75 = v73[2];
          v74 = v73[3];
          if (v75 >= v74 >> 1)
          {
            v73 = sub_220287E28(v74 > 1, v75 + 1, 1, v73);
          }

          v76 = v120;
          v77 = v108;
          (*(v120 + 8))(v106, v108);
          v73[2] = v75 + 1;
          (*(v76 + 32))(v73 + ((*(v76 + 80) + 32) & ~*(v76 + 80)) + *(v76 + 72) * v75, v107, v77);
          v68 = v126;
          sub_22036E478();
          v60 = v121;
          v69 = v111;
          v70 = v109;
        }

        if (v70(v68, 1, v69))
        {
          (*v117)(v127, v60);

          v61 = v110;
          (*v97)(v110, 1, 1, v105);
        }

        else
        {
          v78 = v100;
          (*v95)(v100, v68, v69);
          v61 = v110;
          sub_22036E488();
          (*v94)(v78, v69);
          v79 = v105;
          if ((*v93)(v61, 1, v105) != 1)
          {
            (*v91)(v103, v61, v79);
            sub_22036E4D8();
            v84 = v101;
            sub_22036E458();

            v17 = v108;
            (*v114)(v102, v84, v108);
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              v59 = sub_220287E28(0, v59[2] + 1, 1, v59);
            }

            v87 = v59[2];
            v86 = v59[3];
            v60 = v121;
            if (v87 >= v86 >> 1)
            {
              v59 = sub_220287E28(v86 > 1, v87 + 1, 1, v59);
            }

            v88 = v120;
            (*(v120 + 8))(v101, v17);
            (*v90)(v103, v105);
            (*v117)(v127, v60);
            v59[2] = v87 + 1;
            (*(v88 + 32))(v59 + ((*(v88 + 80) + 32) & ~*(v88 + 80)) + *(v88 + 72) * v87, v102, v17);
            goto LABEL_10;
          }

          (*v117)(v127, v60);
        }

        sub_2202CB224(v61, &qword_281266AE0, MEMORY[0x277CC9260]);
        v17 = v108;
LABEL_10:
        sub_2202CB224(v126, qword_281267088, MEMORY[0x277CC8958]);
LABEL_11:
        v57 += v118;
        if (!--v55)
        {

          v52 = v99;
          goto LABEL_41;
        }
      }
    }
  }

  else
  {
    sub_2202CB294();
  }

LABEL_41:
  sub_22036E478();
  sub_22036E488();
  return (v92[1])(v52, v111);
}

uint64_t sub_2202CB190(uint64_t a1, uint64_t a2)
{
  sub_2202CB678(0, &qword_281266AE0, MEMORY[0x277CC9260], MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2202CB224(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_2202CB678(0, a2, a3, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void *sub_2202CB294()
{
  v0 = sub_22036E468();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = MEMORY[0x28223BE20](v0);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v13 - v6;
  v14 = MEMORY[0x277D84F90];

  sub_2202A5E38(v8);
  sub_22036E458();
  (*(v1 + 16))(v5, v7, v0);
  v9 = v14;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v9 = sub_220287E28(0, v9[2] + 1, 1, v9);
  }

  v11 = v9[2];
  v10 = v9[3];
  if (v11 >= v10 >> 1)
  {
    v9 = sub_220287E28(v10 > 1, v11 + 1, 1, v9);
  }

  (*(v1 + 8))(v7, v0);
  v9[2] = v11 + 1;
  (*(v1 + 32))(v9 + ((*(v1 + 80) + 32) & ~*(v1 + 80)) + *(v1 + 72) * v11, v5, v0);
  return v9;
}

uint64_t ExternalAnalyticsURLProvider.deinit()
{
  v1 = *(v0 + 16);

  return v0;
}

uint64_t ExternalAnalyticsURLProvider.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8D8](v0, 24, 7);
}

uint64_t sub_2202CB524()
{
  result = sub_22036E508();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_2202CB624()
{
  result = qword_27CF27CD8;
  if (!qword_27CF27CD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF27CD8);
  }

  return result;
}

void sub_2202CB678(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_2202CB7A4()
{
  v0 = sub_22036F118();
  __swift_allocate_value_buffer(v0, qword_27CF27CE0);
  __swift_project_value_buffer(v0, qword_27CF27CE0);
  return sub_22036F108();
}

uint64_t UserSegmentationSegmentSetIDsChangeEvent.eventData.setter(uint64_t a1)
{
  sub_220230578();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t UserSegmentationSegmentSetIDsChangeEvent.userSegmentationSegmentSetData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for UserSegmentationSegmentSetIDsChangeEvent(0) + 20);
  sub_2202CB964();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

void sub_2202CB964()
{
  if (!qword_281266740)
  {
    sub_2202CB9CC();
    sub_2202CBA20();
    v0 = sub_22036EE38();
    if (!v1)
    {
      atomic_store(v0, &qword_281266740);
    }
  }
}

unint64_t sub_2202CB9CC()
{
  result = qword_2812628A8;
  if (!qword_2812628A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812628A8);
  }

  return result;
}

unint64_t sub_2202CBA20()
{
  result = qword_2812628B0;
  if (!qword_2812628B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812628B0);
  }

  return result;
}

uint64_t UserSegmentationSegmentSetIDsChangeEvent.userSegmentationSegmentSetData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for UserSegmentationSegmentSetIDsChangeEvent(0) + 20);
  sub_2202CB964();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t UserSegmentationSegmentSetIDsChangeEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277CEACF8];
  sub_220230578();
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  v4 = *(type metadata accessor for UserSegmentationSegmentSetIDsChangeEvent(0) + 20);
  sub_2202CB964();
  v6 = *(*(v5 - 8) + 104);

  return v6(a1 + v4, v2, v5);
}

uint64_t UserSegmentationSegmentSetIDsChangeEvent.Model.userSegmentationSegmentSetData.getter@<X0>(void *a1@<X8>)
{
  *a1 = *(v1 + *(type metadata accessor for UserSegmentationSegmentSetIDsChangeEvent.Model(0) + 20));
}

uint64_t UserSegmentationSegmentSetIDsChangeEvent.Model.init(eventData:userSegmentationSegmentSetData:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a2;
  v6 = sub_22036F388();
  (*(*(v6 - 8) + 32))(a3, a1, v6);
  result = type metadata accessor for UserSegmentationSegmentSetIDsChangeEvent.Model(0);
  *(a3 + *(result + 20)) = v5;
  return result;
}

unint64_t sub_2202CBCF4()
{
  if (*v0)
  {
    result = 0xD00000000000001ELL;
  }

  else
  {
    result = 0x746144746E657665;
  }

  *v0;
  return result;
}

uint64_t sub_2202CBD38@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x746144746E657665 && a2 == 0xE900000000000061;
  if (v6 || (sub_220370048() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD00000000000001ELL && 0x8000000220391300 == a2)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_220370048();

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

uint64_t sub_2202CBE24(uint64_t a1)
{
  v2 = sub_2202CC07C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2202CBE60(uint64_t a1)
{
  v2 = sub_2202CC07C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t UserSegmentationSegmentSetIDsChangeEvent.Model.encode(to:)(void *a1)
{
  v3 = v1;
  sub_2202CC428(0, &qword_27CF27CF8, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v10 = &v13[-v9];
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2202CC07C();
  sub_220370168();
  v15 = 0;
  sub_22036F388();
  sub_2202366E0(&qword_2812666A8);
  sub_22036FFF8();
  if (!v2)
  {
    v14 = *(v3 + *(type metadata accessor for UserSegmentationSegmentSetIDsChangeEvent.Model(0) + 20));
    v13[15] = 1;
    sub_2202CBA20();

    sub_22036FFF8();
  }

  return (*(v7 + 8))(v10, v6);
}

unint64_t sub_2202CC07C()
{
  result = qword_27CF27D00;
  if (!qword_27CF27D00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF27D00);
  }

  return result;
}

uint64_t UserSegmentationSegmentSetIDsChangeEvent.Model.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v24 = a2;
  v28 = sub_22036F388();
  v25 = *(v28 - 8);
  v4 = *(v25 + 64);
  MEMORY[0x28223BE20](v28);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2202CC428(0, &qword_27CF27D08, MEMORY[0x277D844C8]);
  v8 = *(v7 - 8);
  v26 = v7;
  v27 = v8;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v22 - v10;
  v12 = type metadata accessor for UserSegmentationSegmentSetIDsChangeEvent.Model(0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2202CC07C();
  sub_220370148();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v22 = v12;
  v23 = v15;
  v17 = v25;
  v31 = 0;
  sub_2202366E0(&qword_2812666A0);
  v18 = v28;
  v19 = v26;
  sub_22036FF28();
  v20 = v23;
  (*(v17 + 32))(v23, v6, v18);
  v30 = 1;
  sub_2202CB9CC();
  sub_22036FF28();
  (*(v27 + 8))(v11, v19);
  *(v20 + *(v22 + 20)) = v29;
  sub_2202CC48C(v20, v24);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_2202CC4F0(v20);
}

void sub_2202CC428(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_2202CC07C();
    v7 = a3(a1, &type metadata for UserSegmentationSegmentSetIDsChangeEvent.Model.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_2202CC48C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UserSegmentationSegmentSetIDsChangeEvent.Model(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2202CC4F0(uint64_t a1)
{
  v2 = type metadata accessor for UserSegmentationSegmentSetIDsChangeEvent.Model(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2202CC624@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *MEMORY[0x277CEACF8];
  sub_220230578();
  (*(*(v5 - 8) + 104))(a2, v4, v5);
  v6 = *(a1 + 20);
  sub_2202CB964();
  v8 = *(*(v7 - 8) + 104);

  return v8(a2 + v6, v4, v7);
}

void sub_2202CC70C()
{
  sub_220230578();
  if (v0 <= 0x3F)
  {
    sub_2202CB964();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_2202CC7B8()
{
  result = sub_22036F388();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_2202CC840()
{
  result = qword_27CF27D20;
  if (!qword_27CF27D20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF27D20);
  }

  return result;
}

unint64_t sub_2202CC898()
{
  result = qword_27CF27D28;
  if (!qword_27CF27D28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF27D28);
  }

  return result;
}

unint64_t sub_2202CC8F0()
{
  result = qword_27CF27D30;
  if (!qword_27CF27D30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF27D30);
  }

  return result;
}

uint64_t sub_2202CCA0C()
{
  v0 = sub_22036F118();
  __swift_allocate_value_buffer(v0, qword_27CF27D68);
  __swift_project_value_buffer(v0, qword_27CF27D68);
  return sub_22036F108();
}

uint64_t ExternalAnalyticsEvent.eventData.setter(uint64_t a1)
{
  sub_220230578();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t ExternalAnalyticsEvent.externalAnalyticsData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ExternalAnalyticsEvent(0) + 20);
  sub_2202CD114(0, &qword_27CF27D80, sub_2202ACC18, sub_2202ACC70);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ExternalAnalyticsEvent.externalAnalyticsData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ExternalAnalyticsEvent(0) + 20);
  sub_2202CD114(0, &qword_27CF27D80, sub_2202ACC18, sub_2202ACC70);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ExternalAnalyticsEvent.resultData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ExternalAnalyticsEvent(0) + 24);
  sub_2202CD114(0, &qword_27CF27348, sub_220297B38, sub_220297B8C);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ExternalAnalyticsEvent.resultData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ExternalAnalyticsEvent(0) + 24);
  sub_2202CD114(0, &qword_27CF27348, sub_220297B38, sub_220297B8C);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ExternalAnalyticsEvent.newsArticleData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ExternalAnalyticsEvent(0) + 28);
  sub_2202CD114(0, &qword_2812667E0, sub_22022ED48, sub_22022EDA0);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ExternalAnalyticsEvent.newsArticleData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ExternalAnalyticsEvent(0) + 28);
  sub_2202CD114(0, &qword_2812667E0, sub_22022ED48, sub_22022EDA0);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ExternalAnalyticsEvent.channelData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ExternalAnalyticsEvent(0) + 32);
  sub_2202CD114(0, &qword_281266858, sub_220236A30, sub_220236A84);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

void sub_2202CD114(uint64_t a1, unint64_t *a2, void (*a3)(void), void (*a4)(void))
{
  if (!*a2)
  {
    a3();
    a4();
    v6 = sub_22036EE38();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t ExternalAnalyticsEvent.channelData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ExternalAnalyticsEvent(0) + 32);
  sub_2202CD114(0, &qword_281266858, sub_220236A30, sub_220236A84);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ExternalAnalyticsEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277CEACF8];
  sub_220230578();
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  v4 = type metadata accessor for ExternalAnalyticsEvent(0);
  v5 = v4[5];
  sub_2202CD114(0, &qword_27CF27D80, sub_2202ACC18, sub_2202ACC70);
  (*(*(v6 - 8) + 104))(a1 + v5, v2, v6);
  v7 = v4[6];
  sub_2202CD114(0, &qword_27CF27348, sub_220297B38, sub_220297B8C);
  (*(*(v8 - 8) + 104))(a1 + v7, v2, v8);
  v9 = v4[7];
  v10 = *MEMORY[0x277CEACF0];
  sub_2202CD114(0, &qword_2812667E0, sub_22022ED48, sub_22022EDA0);
  (*(*(v11 - 8) + 104))(a1 + v9, v10, v11);
  v12 = v4[8];
  sub_2202CD114(0, &qword_281266858, sub_220236A30, sub_220236A84);
  v14 = *(*(v13 - 8) + 104);

  return v14(a1 + v12, v2, v13);
}

uint64_t ExternalAnalyticsEvent.Model.externalAnalyticsData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for ExternalAnalyticsEvent.Model(0) + 20);
  v5 = *(v3 + 8);
  v4 = *(v3 + 16);
  v6 = *(v3 + 24);
  v7 = *(v3 + 32);
  *a1 = *v3;
  *(a1 + 8) = v5;
  *(a1 + 16) = v4;
  *(a1 + 24) = v6;
  *(a1 + 32) = v7;
}

uint64_t ExternalAnalyticsEvent.Model.resultData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for ExternalAnalyticsEvent.Model(0) + 24);
  v5 = *(v3 + 8);
  v4 = *(v3 + 16);
  *a1 = *v3;
  *(a1 + 8) = v5;
  *(a1 + 16) = v4;
}

uint64_t ExternalAnalyticsEvent.Model.newsArticleData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for ExternalAnalyticsEvent.Model(0) + 28);
  v4 = *(v3 + 48);
  v11 = *(v3 + 32);
  v12 = v4;
  v13 = *(v3 + 64);
  v5 = v13;
  v6 = *(v3 + 16);
  v10[0] = *v3;
  v7 = v10[0];
  v10[1] = v6;
  *(a1 + 32) = v11;
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *a1 = v7;
  *(a1 + 16) = v6;
  return sub_2202CE428(v10, v9, sub_2202CD66C);
}

void sub_2202CD66C()
{
  if (!qword_27CF26930)
  {
    v0 = sub_22036FCC8();
    if (!v1)
    {
      atomic_store(v0, &qword_27CF26930);
    }
  }
}

uint64_t ExternalAnalyticsEvent.Model.channelData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for ExternalAnalyticsEvent.Model(0) + 32));
  v5 = *v3;
  v4 = v3[1];
  v6 = v3[2];
  v7 = v3[3];
  v8 = *(v3 + 32);
  LOBYTE(v3) = *(v3 + 33);
  *a1 = v5;
  *(a1 + 8) = v4;
  *(a1 + 16) = v6;
  *(a1 + 24) = v7;
  *(a1 + 32) = v8;
  *(a1 + 33) = v3;
}

__n128 ExternalAnalyticsEvent.Model.init(eventData:externalAnalyticsData:resultData:newsArticleData:channelData:)@<Q0>(uint64_t a1@<X0>, char *a2@<X1>, char *a3@<X2>, uint64_t a4@<X3>, __n128 *a5@<X4>, uint64_t a6@<X8>)
{
  v9 = *a2;
  v25 = *(a2 + 8);
  v10 = *(a2 + 3);
  v11 = *(a2 + 4);
  v12 = *a3;
  v13 = *(a3 + 1);
  v14 = *(a3 + 2);
  v29 = *a5;
  v15 = a5[1].n128_u64[0];
  v28 = a5[1].n128_u64[1];
  v26 = a5[2].n128_u8[1];
  v27 = a5[2].n128_u8[0];
  v16 = sub_22036F388();
  (*(*(v16 - 8) + 32))(a6, a1, v16);
  v17 = type metadata accessor for ExternalAnalyticsEvent.Model(0);
  v18 = a6 + v17[5];
  *v18 = v9;
  *(v18 + 8) = v25;
  *(v18 + 24) = v10;
  *(v18 + 32) = v11;
  v19 = a6 + v17[6];
  *v19 = v12;
  *(v19 + 8) = v13;
  *(v19 + 16) = v14;
  v20 = a6 + v17[7];
  v21 = *(a4 + 48);
  *(v20 + 32) = *(a4 + 32);
  *(v20 + 48) = v21;
  *(v20 + 64) = *(a4 + 64);
  v22 = *(a4 + 16);
  *v20 = *a4;
  *(v20 + 16) = v22;
  v23 = (a6 + v17[8]);
  result = v29;
  *v23 = v29;
  v23[1].n128_u64[0] = v15;
  v23[1].n128_u64[1] = v28;
  v23[2].n128_u8[0] = v27;
  v23[2].n128_u8[1] = v26;
  return result;
}

unint64_t sub_2202CD858()
{
  v1 = *v0;
  v2 = 0x746144746E657665;
  v3 = 0x6144746C75736572;
  v4 = 0x697472417377656ELL;
  if (v1 != 3)
  {
    v4 = 0x446C656E6E616863;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0xD000000000000015;
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

uint64_t sub_2202CD914@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2202CEBF4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2202CD93C(uint64_t a1)
{
  v2 = sub_2202CDDE4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2202CD978(uint64_t a1)
{
  v2 = sub_2202CDDE4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ExternalAnalyticsEvent.Model.encode(to:)(void *a1)
{
  v3 = v1;
  sub_2202CE3C4(0, &qword_27CF27D88, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v10 = &v32[-v9];
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2202CDDE4();
  sub_220370168();
  LOBYTE(v47) = 0;
  sub_22036F388();
  sub_2202366E0(&qword_2812666A8);
  sub_22036FFF8();
  if (!v2)
  {
    v56 = type metadata accessor for ExternalAnalyticsEvent.Model(0);
    v12 = v3 + *(v56 + 20);
    v13 = *(v12 + 8);
    v14 = *(v12 + 16);
    v15 = *(v12 + 24);
    v16 = *(v12 + 32);
    LOBYTE(v47) = *v12;
    *(&v47 + 1) = v13;
    *&v48 = v14;
    *(&v48 + 1) = v15;
    *&v49 = v16;
    LOBYTE(v42) = 1;
    sub_2202ACC70();

    sub_22036FFF8();

    v17 = v56;
    v18 = (v3 + *(v56 + 24));
    v19 = *(v18 + 1);
    v20 = *(v18 + 2);
    v53 = *v18;
    v54 = v19;
    v55 = v20;
    v52 = 2;
    sub_220297B8C();

    sub_22036FFF8();

    v21 = (v3 + *(v17 + 28));
    v22 = v21[1];
    v23 = v21[3];
    v49 = v21[2];
    v50 = v23;
    v24 = v21[1];
    v47 = *v21;
    v48 = v24;
    v43 = v22;
    v44 = v49;
    v45 = v21[3];
    v51 = *(v21 + 16);
    v46 = *(v21 + 16);
    v42 = v47;
    v41 = 3;
    sub_2202CE428(&v47, v39, sub_2202CD66C);
    sub_22022EDA0();
    sub_22036FF88();
    v39[2] = v44;
    v39[3] = v45;
    v40 = v46;
    v39[0] = v42;
    v39[1] = v43;
    sub_2202CE490(v39, sub_2202CD66C);
    v26 = (v3 + *(v17 + 32));
    v27 = *v26;
    v28 = v26[1];
    v29 = v26[2];
    v30 = v26[3];
    v31 = *(v26 + 32);
    LOBYTE(v26) = *(v26 + 33);
    v33 = v27;
    v34 = v28;
    v35 = v29;
    v36 = v30;
    v37 = v31;
    v38 = v26;
    v32[7] = 4;
    sub_220236A84();

    sub_22036FFF8();
  }

  return (*(v7 + 8))(v10, v6);
}

unint64_t sub_2202CDDE4()
{
  result = qword_27CF27D90;
  if (!qword_27CF27D90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF27D90);
  }

  return result;
}

uint64_t ExternalAnalyticsEvent.Model.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v33 = a2;
  v4 = sub_22036F388();
  v34 = *(v4 - 8);
  v5 = *(v34 + 64);
  MEMORY[0x28223BE20](v4);
  v35 = (&v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_2202CE3C4(0, &qword_27CF27D98, MEMORY[0x277D844C8]);
  v38 = v7;
  v36 = *(v7 - 8);
  v8 = *(v36 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v32 - v9;
  v11 = type metadata accessor for ExternalAnalyticsEvent.Model(0);
  v12 = *(*(v11 - 1) + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2202CDDE4();
  v37 = v10;
  sub_220370148();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v16 = v34;
  v44[0] = 0;
  sub_2202366E0(&qword_2812666A0);
  v17 = v35;
  sub_22036FF28();
  (*(v16 + 32))(v14, v17, v4);
  LOBYTE(v39) = 1;
  sub_2202ACC18();
  sub_22036FF28();
  v18 = *&v44[8];
  v19 = *&v44[24];
  v20 = v45;
  v21 = &v14[v11[5]];
  *v21 = v44[0];
  *(v21 + 8) = v18;
  *(v21 + 3) = v19;
  *(v21 + 4) = v20;
  LOBYTE(v39) = 2;
  sub_220297B38();
  sub_22036FF28();
  v35 = a1;
  v22 = &v14[v11[6]];
  *v22 = v44[0];
  *(v22 + 8) = *&v44[8];
  v49 = 3;
  sub_22022ED48();
  sub_22036FEB8();
  v23 = &v14[v11[7]];
  v24 = v46;
  *(v23 + 2) = v45;
  *(v23 + 3) = v24;
  *(v23 + 16) = v47;
  v25 = *&v44[16];
  *v23 = *v44;
  *(v23 + 1) = v25;
  v48 = 4;
  sub_220236A30();
  sub_22036FF28();
  (*(v36 + 8))(v37, v38);
  v27 = v40;
  v28 = v41;
  v29 = v42;
  v30 = v43;
  v31 = &v14[v11[8]];
  *v31 = v39;
  *(v31 + 2) = v27;
  *(v31 + 3) = v28;
  v31[32] = v29;
  v31[33] = v30;
  sub_2202CE428(v14, v33, type metadata accessor for ExternalAnalyticsEvent.Model);
  __swift_destroy_boxed_opaque_existential_1(v35);
  return sub_2202CE490(v14, type metadata accessor for ExternalAnalyticsEvent.Model);
}

void sub_2202CE3C4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_2202CDDE4();
    v7 = a3(a1, &type metadata for ExternalAnalyticsEvent.Model.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_2202CE428(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2202CE490(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2202CE5C8@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *MEMORY[0x277CEACF8];
  sub_220230578();
  (*(*(v5 - 8) + 104))(a2, v4, v5);
  v6 = a1[5];
  sub_2202CD114(0, &qword_27CF27D80, sub_2202ACC18, sub_2202ACC70);
  (*(*(v7 - 8) + 104))(a2 + v6, v4, v7);
  v8 = a1[6];
  sub_2202CD114(0, &qword_27CF27348, sub_220297B38, sub_220297B8C);
  (*(*(v9 - 8) + 104))(a2 + v8, v4, v9);
  v10 = a1[7];
  v11 = *MEMORY[0x277CEACF0];
  sub_2202CD114(0, &qword_2812667E0, sub_22022ED48, sub_22022EDA0);
  (*(*(v12 - 8) + 104))(a2 + v10, v11, v12);
  v13 = a1[8];
  sub_2202CD114(0, &qword_281266858, sub_220236A30, sub_220236A84);
  v15 = *(*(v14 - 8) + 104);

  return v15(a2 + v13, v4, v14);
}

void sub_2202CE864()
{
  sub_220230578();
  if (v0 <= 0x3F)
  {
    sub_2202CD114(319, &qword_27CF27D80, sub_2202ACC18, sub_2202ACC70);
    if (v1 <= 0x3F)
    {
      sub_2202CD114(319, &qword_27CF27348, sub_220297B38, sub_220297B8C);
      if (v2 <= 0x3F)
      {
        sub_2202CD114(319, &qword_2812667E0, sub_22022ED48, sub_22022EDA0);
        if (v3 <= 0x3F)
        {
          sub_2202CD114(319, &qword_281266858, sub_220236A30, sub_220236A84);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_2202CEA38()
{
  sub_22036F388();
  if (v0 <= 0x3F)
  {
    sub_2202CD66C();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_2202CEAF0()
{
  result = qword_27CF27DC0;
  if (!qword_27CF27DC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF27DC0);
  }

  return result;
}

unint64_t sub_2202CEB48()
{
  result = qword_27CF27DC8;
  if (!qword_27CF27DC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF27DC8);
  }

  return result;
}

unint64_t sub_2202CEBA0()
{
  result = qword_27CF27DD0;
  if (!qword_27CF27DD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF27DD0);
  }

  return result;
}

uint64_t sub_2202CEBF4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x746144746E657665 && a2 == 0xE900000000000061;
  if (v4 || (sub_220370048() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000015 && 0x8000000220391320 == a2 || (sub_220370048() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6144746C75736572 && a2 == 0xEA00000000006174 || (sub_220370048() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x697472417377656ELL && a2 == 0xEF61746144656C63 || (sub_220370048() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x446C656E6E616863 && a2 == 0xEB00000000617461)
  {

    return 4;
  }

  else
  {
    v6 = sub_220370048();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t sub_2202CEE90()
{
  v0 = sub_22036F118();
  __swift_allocate_value_buffer(v0, qword_281262E08);
  __swift_project_value_buffer(v0, qword_281262E08);
  return sub_22036F108();
}

uint64_t NewsArticleViewResignEvent.eventData.setter(uint64_t a1)
{
  sub_220230578();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t NewsArticleViewResignEvent.viewData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for NewsArticleViewResignEvent(0) + 20);
  sub_2202CF598(0, &qword_281266728, sub_2202020B8, sub_220202110);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t NewsArticleViewResignEvent.viewData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for NewsArticleViewResignEvent(0) + 20);
  sub_2202CF598(0, &qword_281266728, sub_2202020B8, sub_220202110);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t NewsArticleViewResignEvent.newsArticleData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for NewsArticleViewResignEvent(0) + 24);
  sub_2202CF598(0, &qword_2812667E0, sub_22022ED48, sub_22022EDA0);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t NewsArticleViewResignEvent.newsArticleData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for NewsArticleViewResignEvent(0) + 24);
  sub_2202CF598(0, &qword_2812667E0, sub_22022ED48, sub_22022EDA0);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t NewsArticleViewResignEvent.orientationData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for NewsArticleViewResignEvent(0) + 28);
  sub_2202CF598(0, &qword_2812667D8, sub_2201F8808, sub_2201F8860);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t NewsArticleViewResignEvent.orientationData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for NewsArticleViewResignEvent(0) + 28);
  sub_2202CF598(0, &qword_2812667D8, sub_2201F8808, sub_2201F8860);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t NewsArticleViewResignEvent.channelData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for NewsArticleViewResignEvent(0) + 32);
  sub_2202CF598(0, &qword_281266858, sub_220236A30, sub_220236A84);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

void sub_2202CF598(uint64_t a1, unint64_t *a2, void (*a3)(void), void (*a4)(void))
{
  if (!*a2)
  {
    a3();
    a4();
    v6 = sub_22036EE38();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t NewsArticleViewResignEvent.channelData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for NewsArticleViewResignEvent(0) + 32);
  sub_2202CF598(0, &qword_281266858, sub_220236A30, sub_220236A84);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t NewsArticleViewResignEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277CEACF8];
  sub_220230578();
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  v4 = type metadata accessor for NewsArticleViewResignEvent(0);
  v5 = v4[5];
  sub_2202CF598(0, &qword_281266728, sub_2202020B8, sub_220202110);
  (*(*(v6 - 8) + 104))(a1 + v5, v2, v6);
  v7 = v4[6];
  sub_2202CF598(0, &qword_2812667E0, sub_22022ED48, sub_22022EDA0);
  (*(*(v8 - 8) + 104))(a1 + v7, v2, v8);
  v9 = v4[7];
  sub_2202CF598(0, &qword_2812667D8, sub_2201F8808, sub_2201F8860);
  (*(*(v10 - 8) + 104))(a1 + v9, v2, v10);
  v11 = v4[8];
  sub_2202CF598(0, &qword_281266858, sub_220236A30, sub_220236A84);
  v13 = *(*(v12 - 8) + 104);

  return v13(a1 + v11, v2, v12);
}

uint64_t NewsArticleViewResignEvent.Model.viewData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for NewsArticleViewResignEvent.Model(0) + 20));
  v5 = *v3;
  v4 = v3[1];
  LOWORD(v3) = *(v3 + 8);
  *a1 = v5;
  *(a1 + 8) = v4;
  *(a1 + 16) = v3;
}

uint64_t NewsArticleViewResignEvent.Model.newsArticleData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for NewsArticleViewResignEvent.Model(0) + 24);
  v4 = *(v3 + 48);
  v11 = *(v3 + 32);
  v12 = v4;
  v13 = *(v3 + 64);
  v5 = v13;
  v6 = *(v3 + 16);
  v10[0] = *v3;
  v7 = v10[0];
  v10[1] = v6;
  *(a1 + 32) = v11;
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *a1 = v7;
  *(a1 + 16) = v6;
  return sub_22022ECDC(v10, v9);
}

uint64_t NewsArticleViewResignEvent.Model.orientationData.getter@<X0>(_WORD *a1@<X8>)
{
  result = type metadata accessor for NewsArticleViewResignEvent.Model(0);
  *a1 = *(v1 + *(result + 28));
  return result;
}

uint64_t NewsArticleViewResignEvent.Model.channelData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for NewsArticleViewResignEvent.Model(0) + 32));
  v5 = *v3;
  v4 = v3[1];
  v6 = v3[2];
  v7 = v3[3];
  v8 = *(v3 + 32);
  LOBYTE(v3) = *(v3 + 33);
  *a1 = v5;
  *(a1 + 8) = v4;
  *(a1 + 16) = v6;
  *(a1 + 24) = v7;
  *(a1 + 32) = v8;
  *(a1 + 33) = v3;
}

__n128 NewsArticleViewResignEvent.Model.init(eventData:viewData:newsArticleData:orientationData:channelData:)@<Q0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, __int16 *a4@<X3>, __n128 *a5@<X4>, uint64_t a6@<X8>)
{
  v9 = *a2;
  v10 = a2[1];
  v11 = *(a2 + 8);
  v12 = *a4;
  v25 = *a5;
  v13 = a5[1].n128_u64[0];
  v14 = a5[1].n128_u64[1];
  v15 = a5[2].n128_u8[0];
  v24 = a5[2].n128_u8[1];
  v16 = sub_22036F388();
  (*(*(v16 - 8) + 32))(a6, a1, v16);
  v17 = type metadata accessor for NewsArticleViewResignEvent.Model(0);
  v18 = a6 + v17[5];
  *v18 = v9;
  *(v18 + 8) = v10;
  *(v18 + 16) = v11;
  v19 = a6 + v17[6];
  v20 = *(a3 + 48);
  *(v19 + 32) = *(a3 + 32);
  *(v19 + 48) = v20;
  *(v19 + 64) = *(a3 + 64);
  v21 = *(a3 + 16);
  *v19 = *a3;
  *(v19 + 16) = v21;
  *(a6 + v17[7]) = v12;
  v22 = (a6 + v17[8]);
  result = v25;
  *v22 = v25;
  v22[1].n128_u64[0] = v13;
  v22[1].n128_u64[1] = v14;
  v22[2].n128_u8[0] = v15;
  v22[2].n128_u8[1] = v24;
  return result;
}

uint64_t sub_2202CFC14()
{
  v1 = *v0;
  v2 = 0x746144746E657665;
  v3 = 0x697472417377656ELL;
  v4 = 0x7461746E6569726FLL;
  if (v1 != 3)
  {
    v4 = 0x446C656E6E616863;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x6174614477656976;
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

uint64_t sub_2202CFCD4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2202D0E68(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2202CFCFC(uint64_t a1)
{
  v2 = sub_2202D011C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2202CFD38(uint64_t a1)
{
  v2 = sub_2202D011C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t NewsArticleViewResignEvent.Model.encode(to:)(void *a1)
{
  v3 = v1;
  sub_2202D0660(0, &qword_27CF27DD8, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v10 = &v27 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2202D011C();
  sub_220370168();
  LOBYTE(v43[0]) = 0;
  sub_22036F388();
  sub_2202366E0(&qword_2812666A8);
  sub_22036FFF8();
  if (!v2)
  {
    v12 = type metadata accessor for NewsArticleViewResignEvent.Model(0);
    v13 = (v3 + v12[5]);
    v14 = *v13;
    v15 = v13[1];
    LOWORD(v13) = *(v13 + 8);
    v48 = v14;
    v49 = v15;
    v50 = v13;
    v47 = 1;
    sub_220202110();

    sub_22036FFF8();

    v16 = v3 + v12[6];
    v17 = *(v16 + 16);
    v18 = *(v16 + 48);
    v44 = *(v16 + 32);
    v45 = v18;
    v19 = *(v16 + 16);
    v43[0] = *v16;
    v43[1] = v19;
    v39 = v17;
    v40 = v44;
    v41 = *(v16 + 48);
    v46 = *(v16 + 64);
    v42 = *(v16 + 64);
    v38 = v43[0];
    v37 = 2;
    sub_22022ECDC(v43, v35);
    sub_22022EDA0();
    sub_22036FFF8();
    v35[2] = v40;
    v35[3] = v41;
    v36 = v42;
    v35[0] = v38;
    v35[1] = v39;
    sub_22022ED14(v35);
    LOWORD(v28) = *(v3 + v12[7]);
    v34 = 3;
    sub_2201F8860();
    sub_22036FFF8();
    v21 = (v3 + v12[8]);
    v22 = *v21;
    v23 = v21[1];
    v24 = v21[2];
    v25 = v21[3];
    v26 = *(v21 + 32);
    LOBYTE(v21) = *(v21 + 33);
    v28 = v22;
    v29 = v23;
    v30 = v24;
    v31 = v25;
    v32 = v26;
    v33 = v21;
    v34 = 4;
    sub_220236A84();

    sub_22036FFF8();
  }

  return (*(v7 + 8))(v10, v6);
}

unint64_t sub_2202D011C()
{
  result = qword_27CF27DE0;
  if (!qword_27CF27DE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF27DE0);
  }

  return result;
}

uint64_t NewsArticleViewResignEvent.Model.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v32 = a2;
  v4 = sub_22036F388();
  v33 = *(v4 - 8);
  v5 = *(v33 + 64);
  MEMORY[0x28223BE20](v4);
  v34 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2202D0660(0, &qword_27CF27DE8, MEMORY[0x277D844C8]);
  v35 = *(v7 - 8);
  v36 = v7;
  v8 = *(v35 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v31 - v9;
  v11 = type metadata accessor for NewsArticleViewResignEvent.Model(0);
  v12 = *(*(v11 - 1) + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2202D011C();
  v37 = v10;
  sub_220370148();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v16 = v33;
  LOBYTE(v43) = 0;
  sub_2202366E0(&qword_2812666A0);
  v17 = v34;
  sub_22036FF28();
  (*(v16 + 32))(v14, v17, v4);
  LOBYTE(v38) = 1;
  sub_2202020B8();
  sub_22036FF28();
  v18 = *(&v43 + 1);
  v19 = v44;
  v20 = &v14[v11[5]];
  *v20 = v43;
  *(v20 + 1) = v18;
  *(v20 + 8) = v19;
  v49 = 2;
  sub_22022ED48();
  sub_22036FF28();
  v21 = v35;
  v22 = &v14[v11[6]];
  v23 = v46;
  *(v22 + 2) = v45;
  *(v22 + 3) = v23;
  *(v22 + 16) = v47;
  v24 = v44;
  *v22 = v43;
  *(v22 + 1) = v24;
  v48 = 3;
  sub_2201F8808();
  sub_22036FF28();
  *&v14[v11[7]] = v38;
  v48 = 4;
  sub_220236A30();
  sub_22036FF28();
  (*(v21 + 8))(v37, v36);
  v25 = v39;
  v26 = v40;
  v27 = v41;
  v28 = v42;
  v29 = &v14[v11[8]];
  *v29 = v38;
  *(v29 + 2) = v25;
  *(v29 + 3) = v26;
  v29[32] = v27;
  v29[33] = v28;
  sub_2202D06C4(v14, v32);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_2202D0728(v14);
}

void sub_2202D0660(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_2202D011C();
    v7 = a3(a1, &type metadata for NewsArticleViewResignEvent.Model.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_2202D06C4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NewsArticleViewResignEvent.Model(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2202D0728(uint64_t a1)
{
  v2 = type metadata accessor for NewsArticleViewResignEvent.Model(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2202D085C@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *MEMORY[0x277CEACF8];
  sub_220230578();
  (*(*(v5 - 8) + 104))(a2, v4, v5);
  v6 = a1[5];
  sub_2202CF598(0, &qword_281266728, sub_2202020B8, sub_220202110);
  (*(*(v7 - 8) + 104))(a2 + v6, v4, v7);
  v8 = a1[6];
  sub_2202CF598(0, &qword_2812667E0, sub_22022ED48, sub_22022EDA0);
  (*(*(v9 - 8) + 104))(a2 + v8, v4, v9);
  v10 = a1[7];
  sub_2202CF598(0, &qword_2812667D8, sub_2201F8808, sub_2201F8860);
  (*(*(v11 - 8) + 104))(a2 + v10, v4, v11);
  v12 = a1[8];
  sub_2202CF598(0, &qword_281266858, sub_220236A30, sub_220236A84);
  v14 = *(*(v13 - 8) + 104);

  return v14(a2 + v12, v4, v13);
}

void sub_2202D0AE4()
{
  sub_220230578();
  if (v0 <= 0x3F)
  {
    sub_2202CF598(319, &qword_281266728, sub_2202020B8, sub_220202110);
    if (v1 <= 0x3F)
    {
      sub_2202CF598(319, &qword_2812667E0, sub_22022ED48, sub_22022EDA0);
      if (v2 <= 0x3F)
      {
        sub_2202CF598(319, &qword_2812667D8, sub_2201F8808, sub_2201F8860);
        if (v3 <= 0x3F)
        {
          sub_2202CF598(319, &qword_281266858, sub_220236A30, sub_220236A84);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t sub_2202D0CB8()
{
  result = sub_22036F388();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_2202D0D64()
{
  result = qword_27CF27DF0;
  if (!qword_27CF27DF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF27DF0);
  }

  return result;
}

unint64_t sub_2202D0DBC()
{
  result = qword_27CF27DF8;
  if (!qword_27CF27DF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF27DF8);
  }

  return result;
}

unint64_t sub_2202D0E14()
{
  result = qword_27CF27E00;
  if (!qword_27CF27E00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF27E00);
  }

  return result;
}

uint64_t sub_2202D0E68(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x746144746E657665 && a2 == 0xE900000000000061;
  if (v4 || (sub_220370048() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6174614477656976 && a2 == 0xE800000000000000 || (sub_220370048() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x697472417377656ELL && a2 == 0xEF61746144656C63 || (sub_220370048() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x7461746E6569726FLL && a2 == 0xEF617461446E6F69 || (sub_220370048() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x446C656E6E616863 && a2 == 0xEB00000000617461)
  {

    return 4;
  }

  else
  {
    v6 = sub_220370048();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t sub_2202D10FC()
{
  v0 = sub_22036F118();
  __swift_allocate_value_buffer(v0, qword_2812648D0);
  __swift_project_value_buffer(v0, qword_2812648D0);
  return sub_22036F108();
}

uint64_t MediaExposureEvent.eventData.setter(uint64_t a1)
{
  sub_220230578();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t MediaExposureEvent.timedData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for MediaExposureEvent(0) + 20);
  sub_220230718();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t MediaExposureEvent.newsArticleData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for MediaExposureEvent(0) + 24);
  sub_2202D2314(0, &qword_2812667E0, sub_22022ED48, sub_22022EDA0);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t MediaExposureEvent.newsArticleData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for MediaExposureEvent(0) + 24);
  sub_2202D2314(0, &qword_2812667E0, sub_22022ED48, sub_22022EDA0);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t MediaExposureEvent.groupData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for MediaExposureEvent(0) + 28);
  sub_2202D2314(0, &qword_281266718, sub_220236C88, sub_220236CDC);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t MediaExposureEvent.groupData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for MediaExposureEvent(0) + 28);
  sub_2202D2314(0, &qword_281266718, sub_220236C88, sub_220236CDC);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t MediaExposureEvent.feedData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for MediaExposureEvent(0) + 32);
  sub_2202D2314(0, &qword_281266730, sub_2201FBCC4, sub_2201FBD1C);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t MediaExposureEvent.feedData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for MediaExposureEvent(0) + 32);
  sub_2202D2314(0, &qword_281266730, sub_2201FBCC4, sub_2201FBD1C);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t MediaExposureEvent.mediaData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for MediaExposureEvent(0) + 36);
  sub_2202D2314(0, &qword_281266708, sub_22027B158, sub_22027B1AC);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t MediaExposureEvent.mediaData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for MediaExposureEvent(0) + 36);
  sub_2202D2314(0, &qword_281266708, sub_22027B158, sub_22027B1AC);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t MediaExposureEvent.viewData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for MediaExposureEvent(0) + 40);
  sub_2202D2314(0, &qword_281266728, sub_2202020B8, sub_220202110);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t MediaExposureEvent.viewData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for MediaExposureEvent(0) + 40);
  sub_2202D2314(0, &qword_281266728, sub_2202020B8, sub_220202110);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t MediaExposureEvent.anfComponentData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for MediaExposureEvent(0) + 44);
  sub_2202D2314(0, &qword_2812667C8, sub_22024ED64, sub_22024EDBC);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t MediaExposureEvent.anfComponentData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for MediaExposureEvent(0) + 44);
  sub_2202D2314(0, &qword_2812667C8, sub_22024ED64, sub_22024EDBC);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t MediaExposureEvent.galleryData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for MediaExposureEvent(0) + 48);
  sub_2202D2314(0, &qword_281266850, sub_220254714, sub_22025476C);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t MediaExposureEvent.galleryData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for MediaExposureEvent(0) + 48);
  sub_2202D2314(0, &qword_281266850, sub_220254714, sub_22025476C);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t MediaExposureEvent.issueData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for MediaExposureEvent(0) + 52);
  sub_2202D2314(0, &qword_281266710, sub_2202376F0, sub_220237744);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t MediaExposureEvent.issueData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for MediaExposureEvent(0) + 52);
  sub_2202D2314(0, &qword_281266710, sub_2202376F0, sub_220237744);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t MediaExposureEvent.channelData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for MediaExposureEvent(0) + 56);
  sub_2202D2314(0, &qword_281266858, sub_220236A30, sub_220236A84);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t MediaExposureEvent.channelData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for MediaExposureEvent(0) + 56);
  sub_2202D2314(0, &qword_281266858, sub_220236A30, sub_220236A84);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t MediaExposureEvent.activeWatchlistData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for MediaExposureEvent(0) + 60);
  sub_2202D2314(0, &qword_281266810, sub_220237C1C, sub_220237C70);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

void sub_2202D2314(uint64_t a1, unint64_t *a2, void (*a3)(void), void (*a4)(void))
{
  if (!*a2)
  {
    a3();
    a4();
    v6 = sub_22036EE38();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t MediaExposureEvent.activeWatchlistData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for MediaExposureEvent(0) + 60);
  sub_2202D2314(0, &qword_281266810, sub_220237C1C, sub_220237C70);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t MediaExposureEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277CEACF8];
  sub_220230578();
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  v4 = type metadata accessor for MediaExposureEvent(0);
  v5 = v4[5];
  sub_220230718();
  (*(*(v6 - 8) + 104))(a1 + v5, v2, v6);
  v7 = v4[6];
  sub_2202D2314(0, &qword_2812667E0, sub_22022ED48, sub_22022EDA0);
  (*(*(v8 - 8) + 104))(a1 + v7, v2, v8);
  v9 = v4[7];
  v10 = *MEMORY[0x277CEACF0];
  sub_2202D2314(0, &qword_281266718, sub_220236C88, sub_220236CDC);
  (*(*(v11 - 8) + 104))(a1 + v9, v10, v11);
  v12 = v4[8];
  sub_2202D2314(0, &qword_281266730, sub_2201FBCC4, sub_2201FBD1C);
  (*(*(v13 - 8) + 104))(a1 + v12, v10, v13);
  v14 = v4[9];
  sub_2202D2314(0, &qword_281266708, sub_22027B158, sub_22027B1AC);
  (*(*(v15 - 8) + 104))(a1 + v14, v2, v15);
  v16 = v4[10];
  sub_2202D2314(0, &qword_281266728, sub_2202020B8, sub_220202110);
  (*(*(v17 - 8) + 104))(a1 + v16, v2, v17);
  v18 = v4[11];
  sub_2202D2314(0, &qword_2812667C8, sub_22024ED64, sub_22024EDBC);
  (*(*(v19 - 8) + 104))(a1 + v18, v10, v19);
  v20 = v4[12];
  sub_2202D2314(0, &qword_281266850, sub_220254714, sub_22025476C);
  (*(*(v21 - 8) + 104))(a1 + v20, v10, v21);
  v22 = v4[13];
  sub_2202D2314(0, &qword_281266710, sub_2202376F0, sub_220237744);
  (*(*(v23 - 8) + 104))(a1 + v22, v10, v23);
  v24 = v4[14];
  sub_2202D2314(0, &qword_281266858, sub_220236A30, sub_220236A84);
  (*(*(v25 - 8) + 104))(a1 + v24, v2, v25);
  v26 = v4[15];
  sub_2202D2314(0, &qword_281266810, sub_220237C1C, sub_220237C70);
  v28 = *(*(v27 - 8) + 104);

  return v28(a1 + v26, v10, v27);
}

uint64_t sub_2202D2A5C@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  v6 = *(a1(0) + 20);
  v7 = a2(0);
  v8 = *(*(v7 - 8) + 16);

  return v8(a3, v3 + v6, v7);
}

uint64_t MediaExposureEvent.Model.newsArticleData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for MediaExposureEvent.Model(0) + 24);
  v4 = *(v3 + 48);
  v11 = *(v3 + 32);
  v12 = v4;
  v13 = *(v3 + 64);
  v5 = v13;
  v6 = *(v3 + 16);
  v10[0] = *v3;
  v7 = v10[0];
  v10[1] = v6;
  *(a1 + 32) = v11;
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *a1 = v7;
  *(a1 + 16) = v6;
  return sub_22022ECDC(v10, v9);
}

uint64_t MediaExposureEvent.Model.groupData.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for MediaExposureEvent.Model(0) + 28));
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[2];
  v7 = v3[3];
  v8 = v3[4];
  v9 = v3[5];
  *a1 = *v3;
  a1[1] = v5;
  a1[2] = v6;
  a1[3] = v7;
  a1[4] = v8;
  a1[5] = v9;

  return sub_22023846C(v4, v5, v6);
}

uint64_t MediaExposureEvent.Model.feedData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for MediaExposureEvent.Model(0) + 32);
  v4 = *(v3 + 16);
  *a1 = *v3;
  *(a1 + 16) = v4;
}

uint64_t MediaExposureEvent.Model.mediaData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for MediaExposureEvent.Model(0) + 36));
  v4 = *v3;
  v6 = *(v3 + 1);
  v5 = *(v3 + 2);
  v7 = *(v3 + 6);
  LOBYTE(v3) = v3[28];
  *a1 = v4;
  *(a1 + 8) = v6;
  *(a1 + 16) = v5;
  *(a1 + 24) = v7;
  *(a1 + 28) = v3;
}

uint64_t MediaExposureEvent.Model.viewData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for MediaExposureEvent.Model(0) + 40));
  v5 = *v3;
  v4 = v3[1];
  LOWORD(v3) = *(v3 + 8);
  *a1 = v5;
  *(a1 + 8) = v4;
  *(a1 + 16) = v3;
}

uint64_t MediaExposureEvent.Model.anfComponentData.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for MediaExposureEvent.Model(0) + 44));
  v4 = *v3;
  v5 = v3[1];
  *a1 = *v3;
  a1[1] = v5;

  return sub_22027C714(v4, v5);
}

uint64_t MediaExposureEvent.Model.galleryData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for MediaExposureEvent.Model(0) + 48);
  v4 = *(v3 + 16);
  v5 = *(v3 + 24);
  *a1 = *v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
}

uint64_t MediaExposureEvent.Model.issueData.getter@<X0>(void *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for MediaExposureEvent.Model(0) + 52));
  v4 = v3[1];
  *a1 = *v3;
  a1[1] = v4;
}

uint64_t MediaExposureEvent.Model.channelData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for MediaExposureEvent.Model(0) + 56));
  v5 = *v3;
  v4 = v3[1];
  v6 = v3[2];
  v7 = v3[3];
  v8 = *(v3 + 32);
  LOBYTE(v3) = *(v3 + 33);
  *a1 = v5;
  *(a1 + 8) = v4;
  *(a1 + 16) = v6;
  *(a1 + 24) = v7;
  *(a1 + 32) = v8;
  *(a1 + 33) = v3;
}

uint64_t MediaExposureEvent.Model.activeWatchlistData.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for MediaExposureEvent.Model(0);
  *a1 = *(v1 + *(result + 60));
  return result;
}

__n128 MediaExposureEvent.Model.init(eventData:timedData:newsArticleData:groupData:feedData:mediaData:viewData:anfComponentData:galleryData:issueData:channelData:activeWatchlistData:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, __int128 *a4@<X3>, __int128 *a5@<X4>, char *a6@<X5>, uint64_t *a7@<X6>, uint64_t *a8@<X7>, uint64_t a9@<X8>, __int128 *a10, uint64_t *a11, __n128 *a12, char *a13)
{
  v18 = *(a4 + 4);
  v19 = *(a4 + 5);
  v41 = *a5;
  v20 = *(a5 + 2);
  v21 = *(a6 + 1);
  v43 = *(a6 + 2);
  v42 = *(a6 + 6);
  v22 = a6[28];
  v46 = a7[1];
  v47 = *a7;
  v44 = *a6;
  v45 = *(a7 + 8);
  v48 = a8[1];
  v49 = *a8;
  v52 = *a10;
  v51 = *(a10 + 2);
  v50 = *(a10 + 6);
  v54 = *a11;
  v53 = a11[1];
  v59 = *a12;
  v57 = a12[1].n128_u64[1];
  v58 = a12[1].n128_u64[0];
  v55 = a12[2].n128_u8[1];
  v56 = a12[2].n128_u8[0];
  v60 = *a13;
  v23 = sub_22036F388();
  v39 = a4[1];
  v40 = *a4;
  (*(*(v23 - 8) + 32))(a9, a1, v23);
  v24 = type metadata accessor for MediaExposureEvent.Model(0);
  v25 = v24[5];
  v26 = sub_22036F3C8();
  (*(*(v26 - 8) + 32))(a9 + v25, a2, v26);
  v27 = a9 + v24[6];
  v28 = *(a3 + 48);
  *(v27 + 32) = *(a3 + 32);
  *(v27 + 48) = v28;
  *(v27 + 64) = *(a3 + 64);
  v29 = *(a3 + 16);
  *v27 = *a3;
  *(v27 + 16) = v29;
  v30 = a9 + v24[7];
  *v30 = v40;
  *(v30 + 16) = v39;
  *(v30 + 32) = v18;
  *(v30 + 40) = v19;
  v31 = a9 + v24[8];
  *v31 = v41;
  *(v31 + 16) = v20;
  v32 = a9 + v24[9];
  *v32 = v44;
  *(v32 + 8) = v21;
  *(v32 + 16) = v43;
  *(v32 + 24) = v42;
  *(v32 + 28) = v22;
  v33 = a9 + v24[10];
  *v33 = v47;
  *(v33 + 8) = v46;
  *(v33 + 16) = v45;
  v34 = (a9 + v24[11]);
  *v34 = v49;
  v34[1] = v48;
  v35 = a9 + v24[12];
  *v35 = v52;
  *(v35 + 16) = v51;
  *(v35 + 24) = v50;
  v36 = (a9 + v24[13]);
  *v36 = v54;
  v36[1] = v53;
  v37 = (a9 + v24[14]);
  result = v59;
  *v37 = v59;
  v37[1].n128_u64[0] = v58;
  v37[1].n128_u64[1] = v57;
  v37[2].n128_u8[0] = v56;
  v37[2].n128_u8[1] = v55;
  *(a9 + v24[15]) = v60;
  return result;
}

uint64_t sub_2202D30BC(unsigned __int8 a1)
{
  if (a1 > 5u)
  {
    v6 = 0x7461446575737369;
    v7 = 0x446C656E6E616863;
    if (a1 != 10)
    {
      v7 = 0xD000000000000013;
    }

    if (a1 != 9)
    {
      v6 = v7;
    }

    v8 = 0x6174614477656976;
    v9 = 0xD000000000000010;
    if (a1 != 7)
    {
      v9 = 0x447972656C6C6167;
    }

    if (a1 != 6)
    {
      v8 = v9;
    }

    if (a1 <= 8u)
    {
      return v8;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v1 = 0x746144746E657665;
    v2 = 0x74614470756F7267;
    v3 = 0x6174614464656566;
    if (a1 != 4)
    {
      v3 = 0x746144616964656DLL;
    }

    if (a1 != 3)
    {
      v2 = v3;
    }

    v4 = 0x74614464656D6974;
    if (a1 != 1)
    {
      v4 = 0x697472417377656ELL;
    }

    if (a1)
    {
      v1 = v4;
    }

    if (a1 <= 2u)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_2202D325C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2202D5480(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2202D3284(uint64_t a1)
{
  v2 = sub_2202D39BC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2202D32C0(uint64_t a1)
{
  v2 = sub_2202D39BC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MediaExposureEvent.Model.encode(to:)(void *a1)
{
  v3 = v1;
  sub_2202D4658(0, &qword_27CF27E08, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v10 = &v49 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2202D39BC();
  sub_220370168();
  LOBYTE(v64[0]) = 0;
  sub_22036F388();
  sub_2202307E4(&qword_2812666A8, MEMORY[0x277CEAEB0]);
  sub_22036FFF8();
  if (!v2)
  {
    v12 = type metadata accessor for MediaExposureEvent.Model(0);
    v13 = v12[5];
    v68 = 1;
    sub_22036F3C8();
    sub_2202307E4(&qword_281266690, MEMORY[0x277CEAED0]);
    sub_22036FFF8();
    v14 = v3 + v12[6];
    v15 = *(v14 + 16);
    v16 = *(v14 + 48);
    v65 = *(v14 + 32);
    v66 = v16;
    v17 = *(v14 + 16);
    v64[0] = *v14;
    v64[1] = v17;
    v18 = *(v14 + 48);
    v61 = v65;
    v62 = v18;
    v67 = *(v14 + 64);
    v63 = *(v14 + 64);
    v59 = v64[0];
    v60 = v15;
    v58 = 2;
    sub_22022ECDC(v64, v56);
    sub_22022EDA0();
    sub_22036FFF8();
    v56[2] = v61;
    v56[3] = v62;
    v57 = v63;
    v56[0] = v59;
    v56[1] = v60;
    sub_22022ED14(v56);
    v19 = (v3 + v12[7]);
    v20 = v19[1];
    v21 = v19[2];
    v22 = v19[3];
    v23 = v19[4];
    v24 = v19[5];
    *&v51 = *v19;
    *(&v51 + 1) = v20;
    v52 = v21;
    v53 = v22;
    v54 = v23;
    v55 = v24;
    v50 = 3;
    sub_22023846C(v51, v20, v21);
    sub_220236CDC();
    sub_22036FF88();
    sub_2202391D8(v51, *(&v51 + 1), v52);
    v25 = (v3 + v12[8]);
    v26 = *(v25 + 2);
    v51 = *v25;
    v52 = v26;
    v50 = 4;
    sub_2201FBD1C();

    sub_22036FF88();

    v27 = (v3 + v12[9]);
    v28 = *v27;
    v29 = *(v27 + 1);
    v30 = *(v27 + 2);
    v31 = *(v27 + 6);
    LOBYTE(v27) = v27[28];
    LOBYTE(v51) = v28;
    *(&v51 + 1) = v29;
    v52 = v30;
    LODWORD(v53) = v31;
    BYTE4(v53) = v27;
    v50 = 5;
    sub_22027B1AC();

    sub_22036FFF8();

    v33 = (v3 + v12[10]);
    v34 = *v33;
    v35 = v33[1];
    LOWORD(v33) = *(v33 + 8);
    *&v51 = v34;
    *(&v51 + 1) = v35;
    LOWORD(v52) = v33;
    v50 = 6;
    sub_220202110();

    sub_22036FFF8();

    v36 = (v3 + v12[11]);
    v37 = v36[1];
    *&v51 = *v36;
    *(&v51 + 1) = v37;
    v50 = 7;
    sub_22027C714(v51, v37);
    sub_22024EDBC();
    sub_22036FF88();
    sub_22027D3B4(v51, *(&v51 + 1));
    v38 = (v3 + v12[12]);
    v39 = *(v38 + 2);
    v40 = *(v38 + 6);
    v51 = *v38;
    v52 = v39;
    LODWORD(v53) = v40;
    v50 = 8;
    sub_22025476C();

    sub_22036FF88();

    v41 = (v3 + v12[13]);
    v42 = v41[1];
    *&v51 = *v41;
    *(&v51 + 1) = v42;
    v50 = 9;
    sub_220237744();

    sub_22036FF88();

    v43 = (v3 + v12[14]);
    v44 = *v43;
    v45 = v43[1];
    v46 = v43[2];
    v47 = v43[3];
    v48 = *(v43 + 32);
    LOBYTE(v43) = *(v43 + 33);
    *&v51 = v44;
    *(&v51 + 1) = v45;
    v52 = v46;
    v53 = v47;
    LOBYTE(v54) = v48;
    BYTE1(v54) = v43;
    v50 = 10;
    sub_220236A84();

    sub_22036FFF8();

    LOBYTE(v51) = *(v3 + v12[15]);
    v50 = 11;
    sub_220237C70();
    sub_22036FF88();
  }

  return (*(v7 + 8))(v10, v6);
}

unint64_t sub_2202D39BC()
{
  result = qword_27CF27E10;
  if (!qword_27CF27E10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF27E10);
  }

  return result;
}

uint64_t MediaExposureEvent.Model.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v50 = a2;
  v52 = sub_22036F3C8();
  v51 = *(v52 - 8);
  v3 = *(v51 + 64);
  MEMORY[0x28223BE20](v52);
  v5 = &v47 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_22036F388();
  v53 = *(v6 - 8);
  v7 = *(v53 + 64);
  MEMORY[0x28223BE20](v6);
  v54 = &v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2202D4658(0, &qword_27CF27E18, MEMORY[0x277D844C8]);
  v57 = v9;
  v55 = *(v9 - 8);
  v10 = *(v55 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v47 - v11;
  v13 = type metadata accessor for MediaExposureEvent.Model(0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v47 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2202D39BC();
  v56 = v12;
  v18 = v68;
  sub_220370148();
  if (v18)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v49 = a1;
  v48 = v13;
  v68 = v16;
  LOBYTE(v63) = 0;
  sub_2202307E4(&qword_2812666A0, MEMORY[0x277CEAEB0]);
  v19 = v54;
  sub_22036FF28();
  v20 = v68;
  (*(v53 + 32))(v68, v19, v6);
  LOBYTE(v63) = 1;
  sub_2202307E4(&qword_281266688, MEMORY[0x277CEAED0]);
  v21 = v52;
  sub_22036FF28();
  v47 = v6;
  v54 = 0;
  v22 = v48;
  (*(v51 + 32))(&v20[v48[5]], v5, v21);
  v62 = 2;
  sub_22022ED48();
  sub_22036FF28();
  v23 = &v20[v22[6]];
  v24 = v66;
  *(v23 + 2) = v65;
  *(v23 + 3) = v24;
  *(v23 + 16) = v67;
  v25 = v64;
  *v23 = v63;
  *(v23 + 1) = v25;
  v58 = 3;
  sub_220236C88();
  sub_22036FEB8();
  v26 = &v20[v22[7]];
  v27 = v60;
  *v26 = v59;
  *(v26 + 1) = v27;
  *(v26 + 2) = v61;
  v58 = 4;
  sub_2201FBCC4();
  sub_22036FEB8();
  v28 = v60;
  v29 = &v20[v22[8]];
  *v29 = v59;
  *(v29 + 2) = v28;
  v58 = 5;
  sub_22027B158();
  sub_22036FF28();
  v30 = *(&v59 + 1);
  v31 = v60;
  v32 = DWORD2(v60);
  v33 = BYTE12(v60);
  v34 = &v20[v22[9]];
  *v34 = v59;
  *(v34 + 1) = v30;
  *(v34 + 2) = v31;
  *(v34 + 6) = v32;
  v34[28] = v33;
  v58 = 6;
  sub_2202020B8();
  sub_22036FF28();
  v35 = *(&v59 + 1);
  v36 = v60;
  v37 = &v20[v22[10]];
  *v37 = v59;
  *(v37 + 1) = v35;
  *(v37 + 8) = v36;
  v58 = 7;
  sub_22024ED64();
  sub_22036FEB8();
  *&v68[v48[11]] = v59;
  v58 = 8;
  sub_220254714();
  sub_22036FEB8();
  v38 = v60;
  v39 = DWORD2(v60);
  v40 = &v68[v48[12]];
  *v40 = v59;
  *(v40 + 2) = v38;
  *(v40 + 6) = v39;
  v58 = 9;
  sub_2202376F0();
  sub_22036FEB8();
  *&v68[v48[13]] = v59;
  v58 = 10;
  sub_220236A30();
  sub_22036FF28();
  v41 = v60;
  v42 = v61;
  v43 = BYTE1(v61);
  v44 = &v68[v48[14]];
  *v44 = v59;
  *(v44 + 1) = v41;
  v44[32] = v42;
  v44[33] = v43;
  v58 = 11;
  sub_220237C1C();
  sub_22036FEB8();
  (*(v55 + 8))(v56, v57);
  v45 = v68;
  v68[v48[15]] = v59;
  sub_2202D46BC(v45, v50);
  __swift_destroy_boxed_opaque_existential_1(v49);
  return sub_2202D4720(v45);
}

void sub_2202D4658(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_2202D39BC();
    v7 = a3(a1, &type metadata for MediaExposureEvent.Model.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_2202D46BC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MediaExposureEvent.Model(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2202D4720(uint64_t a1)
{
  v2 = type metadata accessor for MediaExposureEvent.Model(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2202D4854@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *MEMORY[0x277CEACF8];
  sub_220230578();
  (*(*(v5 - 8) + 104))(a2, v4, v5);
  v6 = a1[5];
  sub_220230718();
  (*(*(v7 - 8) + 104))(a2 + v6, v4, v7);
  v8 = a1[6];
  sub_2202D2314(0, &qword_2812667E0, sub_22022ED48, sub_22022EDA0);
  (*(*(v9 - 8) + 104))(a2 + v8, v4, v9);
  v10 = a1[7];
  v11 = *MEMORY[0x277CEACF0];
  sub_2202D2314(0, &qword_281266718, sub_220236C88, sub_220236CDC);
  (*(*(v12 - 8) + 104))(a2 + v10, v11, v12);
  v13 = a1[8];
  sub_2202D2314(0, &qword_281266730, sub_2201FBCC4, sub_2201FBD1C);
  (*(*(v14 - 8) + 104))(a2 + v13, v11, v14);
  v15 = a1[9];
  sub_2202D2314(0, &qword_281266708, sub_22027B158, sub_22027B1AC);
  (*(*(v16 - 8) + 104))(a2 + v15, v4, v16);
  v17 = a1[10];
  sub_2202D2314(0, &qword_281266728, sub_2202020B8, sub_220202110);
  (*(*(v18 - 8) + 104))(a2 + v17, v4, v18);
  v19 = a1[11];
  sub_2202D2314(0, &qword_2812667C8, sub_22024ED64, sub_22024EDBC);
  (*(*(v20 - 8) + 104))(a2 + v19, v11, v20);
  v21 = a1[12];
  sub_2202D2314(0, &qword_281266850, sub_220254714, sub_22025476C);
  (*(*(v22 - 8) + 104))(a2 + v21, v11, v22);
  v23 = a1[13];
  sub_2202D2314(0, &qword_281266710, sub_2202376F0, sub_220237744);
  (*(*(v24 - 8) + 104))(a2 + v23, v11, v24);
  v25 = a1[14];
  sub_2202D2314(0, &qword_281266858, sub_220236A30, sub_220236A84);
  (*(*(v26 - 8) + 104))(a2 + v25, v4, v26);
  v27 = a1[15];
  sub_2202D2314(0, &qword_281266810, sub_220237C1C, sub_220237C70);
  v29 = *(*(v28 - 8) + 104);

  return v29(a2 + v27, v11, v28);
}

void sub_2202D4E00()
{
  sub_220230578();
  if (v0 <= 0x3F)
  {
    sub_220230718();
    if (v1 <= 0x3F)
    {
      sub_2202D2314(319, &qword_2812667E0, sub_22022ED48, sub_22022EDA0);
      if (v2 <= 0x3F)
      {
        sub_2202D2314(319, &qword_281266718, sub_220236C88, sub_220236CDC);
        if (v3 <= 0x3F)
        {
          sub_2202D2314(319, &qword_281266730, sub_2201FBCC4, sub_2201FBD1C);
          if (v4 <= 0x3F)
          {
            sub_2202D2314(319, &qword_281266708, sub_22027B158, sub_22027B1AC);
            if (v5 <= 0x3F)
            {
              sub_2202D2314(319, &qword_281266728, sub_2202020B8, sub_220202110);
              if (v6 <= 0x3F)
              {
                sub_2202D2314(319, &qword_2812667C8, sub_22024ED64, sub_22024EDBC);
                if (v7 <= 0x3F)
                {
                  sub_2202D2314(319, &qword_281266850, sub_220254714, sub_22025476C);
                  if (v8 <= 0x3F)
                  {
                    sub_2202D2314(319, &qword_281266710, sub_2202376F0, sub_220237744);
                    if (v9 <= 0x3F)
                    {
                      sub_2202D2314(319, &qword_281266858, sub_220236A30, sub_220236A84);
                      if (v10 <= 0x3F)
                      {
                        sub_2202D2314(319, &qword_281266810, sub_220237C1C, sub_220237C70);
                        if (v11 <= 0x3F)
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
}

void sub_2202D51CC()
{
  sub_22036F388();
  if (v0 <= 0x3F)
  {
    sub_22036F3C8();
    if (v1 <= 0x3F)
    {
      sub_22023A8F4(319, &qword_281262048);
      if (v2 <= 0x3F)
      {
        sub_22023A8F4(319, &qword_281262190);
        if (v3 <= 0x3F)
        {
          sub_22023A8F4(319, &qword_27CF26C70);
          if (v4 <= 0x3F)
          {
            sub_22023A8F4(319, &qword_27CF27E20);
            if (v5 <= 0x3F)
            {
              sub_22023A8F4(319, &qword_281262008);
              if (v6 <= 0x3F)
              {
                sub_22023A8F4(319, &qword_281265970);
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

unint64_t sub_2202D537C()
{
  result = qword_27CF27E28;
  if (!qword_27CF27E28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF27E28);
  }

  return result;
}

unint64_t sub_2202D53D4()
{
  result = qword_27CF27E30;
  if (!qword_27CF27E30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF27E30);
  }

  return result;
}

unint64_t sub_2202D542C()
{
  result = qword_27CF27E38;
  if (!qword_27CF27E38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF27E38);
  }

  return result;
}

uint64_t sub_2202D5480(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x746144746E657665 && a2 == 0xE900000000000061;
  if (v4 || (sub_220370048() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x74614464656D6974 && a2 == 0xE900000000000061 || (sub_220370048() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x697472417377656ELL && a2 == 0xEF61746144656C63 || (sub_220370048() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x74614470756F7267 && a2 == 0xE900000000000061 || (sub_220370048() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6174614464656566 && a2 == 0xE800000000000000 || (sub_220370048() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x746144616964656DLL && a2 == 0xE900000000000061 || (sub_220370048() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x6174614477656976 && a2 == 0xE800000000000000 || (sub_220370048() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000220390B70 == a2 || (sub_220370048() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x447972656C6C6167 && a2 == 0xEB00000000617461 || (sub_220370048() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x7461446575737369 && a2 == 0xE900000000000061 || (sub_220370048() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0x446C656E6E616863 && a2 == 0xEB00000000617461 || (sub_220370048() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0xD000000000000013 && 0x8000000220390390 == a2)
  {

    return 11;
  }

  else
  {
    v6 = sub_220370048();

    if (v6)
    {
      return 11;
    }

    else
    {
      return 12;
    }
  }
}

StocksAnalytics::ViewAction_optional __swiftcall ViewAction.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_22036FE78();

  v5 = 9;
  if (v3 < 9)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t ViewAction.rawValue.getter()
{
  v1 = *v0;
  if (v1 <= 3)
  {
    v6 = 0x6E776F6E6B6E75;
    v7 = 0x6570697773;
    if (v1 != 2)
    {
      v7 = 0x656E696C64616568;
    }

    if (*v0)
    {
      v6 = 0x636E75614C707061;
    }

    if (*v0 <= 1u)
    {
      return v6;
    }

    else
    {
      return v7;
    }
  }

  else
  {
    v2 = 0xD000000000000011;
    v3 = 0x6976614E72657375;
    if (v1 != 7)
    {
      v3 = 0xD000000000000011;
    }

    if (v1 != 6)
    {
      v2 = v3;
    }

    v4 = 0x6B6E696C70656564;
    if (v1 != 4)
    {
      v4 = 0x6E6164726F666661;
    }

    if (*v0 <= 5u)
    {
      return v4;
    }

    else
    {
      return v2;
    }
  }
}

unint64_t sub_2202D5A1C()
{
  result = qword_27CF27E40;
  if (!qword_27CF27E40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF27E40);
  }

  return result;
}

uint64_t sub_2202D5A70()
{
  v1 = *v0;
  sub_220370108();
  sub_22032CB38();
  return sub_220370128();
}

uint64_t sub_2202D5AC0()
{
  v1 = *v0;
  sub_220370108();
  sub_22032CB38();
  return sub_220370128();
}

unint64_t sub_2202D5B10@<X0>(unint64_t *a1@<X8>)
{
  result = ViewAction.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_2202D5BE8()
{
  result = qword_2812660C8;
  if (!qword_2812660C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812660C8);
  }

  return result;
}

uint64_t DeviceData.deviceModel.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t DeviceData.deviceModel.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t DeviceData.devicePlatform.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t DeviceData.devicePlatform.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 24);

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t DeviceData.osVersion.getter()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);

  return v1;
}

uint64_t DeviceData.osVersion.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 48);

  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
  return result;
}

uint64_t DeviceData.osBundleVersion.getter()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 64);

  return v1;
}

uint64_t DeviceData.osBundleVersion.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 64);

  *(v2 + 56) = a1;
  *(v2 + 64) = a2;
  return result;
}

uint64_t sub_2202D5EBC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2202D64E4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2202D5EE4(uint64_t a1)
{
  v2 = sub_220204314();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2202D5F20(uint64_t a1)
{
  v2 = sub_220204314();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t DeviceData.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_2202042B0(0, &qword_281261E20, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v10 = &v27 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220204314();
  sub_220370148();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  LOBYTE(v38[0]) = 0;
  v12 = sub_22036FEE8();
  v47 = v13;
  LOBYTE(v38[0]) = 1;
  v14 = sub_22036FEE8();
  v32 = v15;
  v30 = v14;
  LOBYTE(v33) = 2;
  sub_2202D6300();
  sub_22036FF28();
  v29 = LOBYTE(v38[0]);
  LOBYTE(v38[0]) = 3;
  v28 = sub_22036FEE8();
  v31 = v16;
  v45 = 4;
  v17 = sub_22036FEE8();
  v19 = v18;
  v20 = v17;
  (*(v7 + 8))(v10, v6);
  v21 = v47;
  *&v33 = v12;
  *(&v33 + 1) = v47;
  v23 = v31;
  v22 = v32;
  *&v34 = v30;
  *(&v34 + 1) = v32;
  LOBYTE(v35) = v29;
  *(&v35 + 1) = v46[0];
  DWORD1(v35) = *(v46 + 3);
  *(&v35 + 1) = v28;
  *&v36 = v31;
  *(&v36 + 1) = v20;
  v37 = v19;
  *(a2 + 64) = v19;
  v24 = v34;
  *a2 = v33;
  *(a2 + 16) = v24;
  v25 = v36;
  *(a2 + 32) = v35;
  *(a2 + 48) = v25;
  sub_2202D6354(&v33, v38);
  __swift_destroy_boxed_opaque_existential_1(a1);
  v38[0] = v12;
  v38[1] = v21;
  v38[2] = v30;
  v38[3] = v22;
  v39 = v29;
  *v40 = v46[0];
  *&v40[3] = *(v46 + 3);
  v41 = v28;
  v42 = v23;
  v43 = v20;
  v44 = v19;
  return sub_2202D638C(v38);
}

unint64_t sub_2202D6300()
{
  result = qword_2812650C8;
  if (!qword_2812650C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812650C8);
  }

  return result;
}

uint64_t sub_2202D63D4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 72))
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

uint64_t sub_2202D641C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 72) = 1;
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

    *(result + 72) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_2202D6490()
{
  result = qword_27CF27E48;
  if (!qword_27CF27E48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF27E48);
  }

  return result;
}

uint64_t sub_2202D64E4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6F4D656369766564 && a2 == 0xEB000000006C6564;
  if (v4 || (sub_220370048() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6C50656369766564 && a2 == 0xEE006D726F667461 || (sub_220370048() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000220391340 == a2 || (sub_220370048() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6F6973726556736FLL && a2 == 0xE90000000000006ELL || (sub_220370048() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x656C646E7542736FLL && a2 == 0xEF6E6F6973726556)
  {

    return 4;
  }

  else
  {
    v6 = sub_220370048();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t sub_2202D6780()
{
  v0 = sub_22036F118();
  __swift_allocate_value_buffer(v0, qword_281262CF8);
  __swift_project_value_buffer(v0, qword_281262CF8);
  return sub_22036F108();
}

uint64_t NewsArticleViewResumeEvent.eventData.setter(uint64_t a1)
{
  sub_220230578();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t NewsArticleViewResumeEvent.viewData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for NewsArticleViewResumeEvent(0) + 20);
  sub_2202CF598(0, &qword_281266728, sub_2202020B8, sub_220202110);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t NewsArticleViewResumeEvent.viewData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for NewsArticleViewResumeEvent(0) + 20);
  sub_2202CF598(0, &qword_281266728, sub_2202020B8, sub_220202110);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t NewsArticleViewResumeEvent.newsArticleData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for NewsArticleViewResumeEvent(0) + 24);
  sub_2202CF598(0, &qword_2812667E0, sub_22022ED48, sub_22022EDA0);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t NewsArticleViewResumeEvent.newsArticleData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for NewsArticleViewResumeEvent(0) + 24);
  sub_2202CF598(0, &qword_2812667E0, sub_22022ED48, sub_22022EDA0);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t NewsArticleViewResumeEvent.orientationData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for NewsArticleViewResumeEvent(0) + 28);
  sub_2202CF598(0, &qword_2812667D8, sub_2201F8808, sub_2201F8860);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t NewsArticleViewResumeEvent.orientationData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for NewsArticleViewResumeEvent(0) + 28);
  sub_2202CF598(0, &qword_2812667D8, sub_2201F8808, sub_2201F8860);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t NewsArticleViewResumeEvent.channelData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for NewsArticleViewResumeEvent(0) + 32);
  sub_2202CF598(0, &qword_281266858, sub_220236A30, sub_220236A84);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t NewsArticleViewResumeEvent.channelData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for NewsArticleViewResumeEvent(0) + 32);
  sub_2202CF598(0, &qword_281266858, sub_220236A30, sub_220236A84);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t NewsArticleViewResumeEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277CEACF8];
  sub_220230578();
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  v4 = type metadata accessor for NewsArticleViewResumeEvent(0);
  v5 = v4[5];
  sub_2202CF598(0, &qword_281266728, sub_2202020B8, sub_220202110);
  (*(*(v6 - 8) + 104))(a1 + v5, v2, v6);
  v7 = v4[6];
  sub_2202CF598(0, &qword_2812667E0, sub_22022ED48, sub_22022EDA0);
  (*(*(v8 - 8) + 104))(a1 + v7, v2, v8);
  v9 = v4[7];
  sub_2202CF598(0, &qword_2812667D8, sub_2201F8808, sub_2201F8860);
  (*(*(v10 - 8) + 104))(a1 + v9, v2, v10);
  v11 = v4[8];
  sub_2202CF598(0, &qword_281266858, sub_220236A30, sub_220236A84);
  v13 = *(*(v12 - 8) + 104);

  return v13(a1 + v11, v2, v12);
}

uint64_t NewsArticleViewResumeEvent.Model.viewData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for NewsArticleViewResumeEvent.Model(0) + 20));
  v5 = *v3;
  v4 = v3[1];
  LOWORD(v3) = *(v3 + 8);
  *a1 = v5;
  *(a1 + 8) = v4;
  *(a1 + 16) = v3;
}

uint64_t NewsArticleViewResumeEvent.Model.newsArticleData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for NewsArticleViewResumeEvent.Model(0) + 24);
  v4 = *(v3 + 48);
  v11 = *(v3 + 32);
  v12 = v4;
  v13 = *(v3 + 64);
  v5 = v13;
  v6 = *(v3 + 16);
  v10[0] = *v3;
  v7 = v10[0];
  v10[1] = v6;
  *(a1 + 32) = v11;
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *a1 = v7;
  *(a1 + 16) = v6;
  return sub_22022ECDC(v10, v9);
}

uint64_t NewsArticleViewResumeEvent.Model.orientationData.getter@<X0>(_WORD *a1@<X8>)
{
  result = type metadata accessor for NewsArticleViewResumeEvent.Model(0);
  *a1 = *(v1 + *(result + 28));
  return result;
}

uint64_t NewsArticleViewResumeEvent.Model.channelData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for NewsArticleViewResumeEvent.Model(0) + 32));
  v5 = *v3;
  v4 = v3[1];
  v6 = v3[2];
  v7 = v3[3];
  v8 = *(v3 + 32);
  LOBYTE(v3) = *(v3 + 33);
  *a1 = v5;
  *(a1 + 8) = v4;
  *(a1 + 16) = v6;
  *(a1 + 24) = v7;
  *(a1 + 32) = v8;
  *(a1 + 33) = v3;
}

__n128 NewsArticleViewResumeEvent.Model.init(eventData:viewData:newsArticleData:orientationData:channelData:)@<Q0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, __int16 *a4@<X3>, __n128 *a5@<X4>, uint64_t a6@<X8>)
{
  v9 = *a2;
  v10 = a2[1];
  v11 = *(a2 + 8);
  v12 = *a4;
  v25 = *a5;
  v13 = a5[1].n128_u64[0];
  v14 = a5[1].n128_u64[1];
  v15 = a5[2].n128_u8[0];
  v24 = a5[2].n128_u8[1];
  v16 = sub_22036F388();
  (*(*(v16 - 8) + 32))(a6, a1, v16);
  v17 = type metadata accessor for NewsArticleViewResumeEvent.Model(0);
  v18 = a6 + v17[5];
  *v18 = v9;
  *(v18 + 8) = v10;
  *(v18 + 16) = v11;
  v19 = a6 + v17[6];
  v20 = *(a3 + 48);
  *(v19 + 32) = *(a3 + 32);
  *(v19 + 48) = v20;
  *(v19 + 64) = *(a3 + 64);
  v21 = *(a3 + 16);
  *v19 = *a3;
  *(v19 + 16) = v21;
  *(a6 + v17[7]) = v12;
  v22 = (a6 + v17[8]);
  result = v25;
  *v22 = v25;
  v22[1].n128_u64[0] = v13;
  v22[1].n128_u64[1] = v14;
  v22[2].n128_u8[0] = v15;
  v22[2].n128_u8[1] = v24;
  return result;
}

uint64_t sub_2202D7488(uint64_t a1)
{
  v2 = sub_2202D78A8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2202D74C4(uint64_t a1)
{
  v2 = sub_2202D78A8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t NewsArticleViewResumeEvent.Model.encode(to:)(void *a1)
{
  v3 = v1;
  sub_2202D7DEC(0, &qword_27CF27E50, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v10 = &v27 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2202D78A8();
  sub_220370168();
  LOBYTE(v43[0]) = 0;
  sub_22036F388();
  sub_2202366E0(&qword_2812666A8);
  sub_22036FFF8();
  if (!v2)
  {
    v12 = type metadata accessor for NewsArticleViewResumeEvent.Model(0);
    v13 = (v3 + v12[5]);
    v14 = *v13;
    v15 = v13[1];
    LOWORD(v13) = *(v13 + 8);
    v48 = v14;
    v49 = v15;
    v50 = v13;
    v47 = 1;
    sub_220202110();

    sub_22036FFF8();

    v16 = v3 + v12[6];
    v17 = *(v16 + 16);
    v18 = *(v16 + 48);
    v44 = *(v16 + 32);
    v45 = v18;
    v19 = *(v16 + 16);
    v43[0] = *v16;
    v43[1] = v19;
    v39 = v17;
    v40 = v44;
    v41 = *(v16 + 48);
    v46 = *(v16 + 64);
    v42 = *(v16 + 64);
    v38 = v43[0];
    v37 = 2;
    sub_22022ECDC(v43, v35);
    sub_22022EDA0();
    sub_22036FFF8();
    v35[2] = v40;
    v35[3] = v41;
    v36 = v42;
    v35[0] = v38;
    v35[1] = v39;
    sub_22022ED14(v35);
    LOWORD(v28) = *(v3 + v12[7]);
    v34 = 3;
    sub_2201F8860();
    sub_22036FFF8();
    v21 = (v3 + v12[8]);
    v22 = *v21;
    v23 = v21[1];
    v24 = v21[2];
    v25 = v21[3];
    v26 = *(v21 + 32);
    LOBYTE(v21) = *(v21 + 33);
    v28 = v22;
    v29 = v23;
    v30 = v24;
    v31 = v25;
    v32 = v26;
    v33 = v21;
    v34 = 4;
    sub_220236A84();

    sub_22036FFF8();
  }

  return (*(v7 + 8))(v10, v6);
}

unint64_t sub_2202D78A8()
{
  result = qword_27CF27E58;
  if (!qword_27CF27E58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF27E58);
  }

  return result;
}

uint64_t NewsArticleViewResumeEvent.Model.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v32 = a2;
  v4 = sub_22036F388();
  v33 = *(v4 - 8);
  v5 = *(v33 + 64);
  MEMORY[0x28223BE20](v4);
  v34 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2202D7DEC(0, &qword_27CF27E60, MEMORY[0x277D844C8]);
  v35 = *(v7 - 8);
  v36 = v7;
  v8 = *(v35 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v31 - v9;
  v11 = type metadata accessor for NewsArticleViewResumeEvent.Model(0);
  v12 = *(*(v11 - 1) + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2202D78A8();
  v37 = v10;
  sub_220370148();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v16 = v33;
  LOBYTE(v43) = 0;
  sub_2202366E0(&qword_2812666A0);
  v17 = v34;
  sub_22036FF28();
  (*(v16 + 32))(v14, v17, v4);
  LOBYTE(v38) = 1;
  sub_2202020B8();
  sub_22036FF28();
  v18 = *(&v43 + 1);
  v19 = v44;
  v20 = &v14[v11[5]];
  *v20 = v43;
  *(v20 + 1) = v18;
  *(v20 + 8) = v19;
  v49 = 2;
  sub_22022ED48();
  sub_22036FF28();
  v21 = v35;
  v22 = &v14[v11[6]];
  v23 = v46;
  *(v22 + 2) = v45;
  *(v22 + 3) = v23;
  *(v22 + 16) = v47;
  v24 = v44;
  *v22 = v43;
  *(v22 + 1) = v24;
  v48 = 3;
  sub_2201F8808();
  sub_22036FF28();
  *&v14[v11[7]] = v38;
  v48 = 4;
  sub_220236A30();
  sub_22036FF28();
  (*(v21 + 8))(v37, v36);
  v25 = v39;
  v26 = v40;
  v27 = v41;
  v28 = v42;
  v29 = &v14[v11[8]];
  *v29 = v38;
  *(v29 + 2) = v25;
  *(v29 + 3) = v26;
  v29[32] = v27;
  v29[33] = v28;
  sub_2202D7E50(v14, v32);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_2202D7EB4(v14);
}

void sub_2202D7DEC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_2202D78A8();
    v7 = a3(a1, &type metadata for NewsArticleViewResumeEvent.Model.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_2202D7E50(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NewsArticleViewResumeEvent.Model(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2202D7EB4(uint64_t a1)
{
  v2 = type metadata accessor for NewsArticleViewResumeEvent.Model(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_2202D804C()
{
  result = qword_27CF27E68;
  if (!qword_27CF27E68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF27E68);
  }

  return result;
}

unint64_t sub_2202D80A4()
{
  result = qword_27CF27E70;
  if (!qword_27CF27E70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF27E70);
  }

  return result;
}

unint64_t sub_2202D80FC()
{
  result = qword_27CF27E78;
  if (!qword_27CF27E78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF27E78);
  }

  return result;
}

StocksAnalytics::GalleryType_optional __swiftcall GalleryType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_22036FE78();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t GalleryType.rawValue.getter()
{
  v1 = 0x636961736F6DLL;
  if (*v0 != 1)
  {
    v1 = 0x7069727473;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6E776F6E6B6E75;
  }
}

uint64_t sub_2202D8200(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE600000000000000;
  v4 = 0x636961736F6DLL;
  if (v2 != 1)
  {
    v4 = 0x7069727473;
    v3 = 0xE500000000000000;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0x6E776F6E6B6E75;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE700000000000000;
  }

  v7 = 0xE600000000000000;
  v8 = 0x636961736F6DLL;
  if (*a2 != 1)
  {
    v8 = 0x7069727473;
    v7 = 0xE500000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x6E776F6E6B6E75;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE700000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_220370048();
  }

  return v11 & 1;
}

unint64_t sub_2202D82F8()
{
  result = qword_27CF27E80;
  if (!qword_27CF27E80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF27E80);
  }

  return result;
}

uint64_t sub_2202D834C()
{
  v1 = *v0;
  sub_220370108();
  sub_22036FB08();

  return sub_220370128();
}

uint64_t sub_2202D83E8()
{
  *v0;
  *v0;
  sub_22036FB08();
}

uint64_t sub_2202D8470()
{
  v1 = *v0;
  sub_220370108();
  sub_22036FB08();

  return sub_220370128();
}

void sub_2202D8514(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0xE600000000000000;
  v5 = 0x636961736F6DLL;
  if (v2 != 1)
  {
    v5 = 0x7069727473;
    v4 = 0xE500000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x6E776F6E6B6E75;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

unint64_t sub_2202D862C()
{
  result = qword_27CF27E88;
  if (!qword_27CF27E88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF27E88);
  }

  return result;
}

uint64_t sub_2202D8748()
{
  v0 = sub_22036F118();
  __swift_allocate_value_buffer(v0, qword_27CF27EC0);
  __swift_project_value_buffer(v0, qword_27CF27EC0);
  return sub_22036F108();
}

uint64_t OnboardingScreenViewEvent.eventData.setter(uint64_t a1)
{
  sub_220230578();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t OnboardingScreenViewEvent.timedData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for OnboardingScreenViewEvent(0) + 20);
  sub_220230718();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t OnboardingScreenViewEvent.onboardingScreenData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for OnboardingScreenViewEvent(0) + 24);
  sub_22028098C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t OnboardingScreenViewEvent.onboardingScreenData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for OnboardingScreenViewEvent(0) + 24);
  sub_22028098C();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t OnboardingScreenViewEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277CEACF8];
  sub_220230578();
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  v4 = type metadata accessor for OnboardingScreenViewEvent(0);
  v5 = *(v4 + 20);
  sub_220230718();
  (*(*(v6 - 8) + 104))(a1 + v5, v2, v6);
  v7 = *(v4 + 24);
  sub_22028098C();
  v9 = *(*(v8 - 8) + 104);

  return v9(a1 + v7, v2, v8);
}

uint64_t sub_2202D8C08@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  v6 = *(a1(0) + 20);
  v7 = a2(0);
  v8 = *(*(v7 - 8) + 16);

  return v8(a3, v3 + v6, v7);
}

uint64_t OnboardingScreenViewEvent.Model.onboardingScreenData.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for OnboardingScreenViewEvent.Model(0);
  *a1 = *(v1 + *(result + 24));
  return result;
}

uint64_t OnboardingScreenViewEvent.Model.init(eventData:timedData:onboardingScreenData:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t a4@<X8>)
{
  v7 = *a3;
  v8 = sub_22036F388();
  (*(*(v8 - 8) + 32))(a4, a1, v8);
  v9 = type metadata accessor for OnboardingScreenViewEvent.Model(0);
  v10 = *(v9 + 20);
  v11 = sub_22036F3C8();
  result = (*(*(v11 - 8) + 32))(a4 + v10, a2, v11);
  *(a4 + *(v9 + 24)) = v7;
  return result;
}

uint64_t sub_2202D8DB4()
{
  v1 = 0x74614464656D6974;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000014;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x746144746E657665;
  }
}

uint64_t sub_2202D8E14@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2202D9BB8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2202D8E3C(uint64_t a1)
{
  v2 = sub_2202D910C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2202D8E78(uint64_t a1)
{
  v2 = sub_2202D910C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t OnboardingScreenViewEvent.Model.encode(to:)(void *a1)
{
  v3 = v1;
  sub_2202D962C(0, &qword_27CF27ED8, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v10 = &v15[-v9];
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2202D910C();
  sub_220370168();
  v15[15] = 0;
  sub_22036F388();
  sub_2202307E4(&qword_2812666A8, MEMORY[0x277CEAEB0]);
  sub_22036FFF8();
  if (!v2)
  {
    v12 = type metadata accessor for OnboardingScreenViewEvent.Model(0);
    v13 = *(v12 + 20);
    v15[14] = 1;
    sub_22036F3C8();
    sub_2202307E4(&qword_281266690, MEMORY[0x277CEAED0]);
    sub_22036FFF8();
    v15[13] = *(v3 + *(v12 + 24));
    v15[12] = 2;
    sub_220280A48();
    sub_22036FFF8();
  }

  return (*(v7 + 8))(v10, v6);
}

unint64_t sub_2202D910C()
{
  result = qword_27CF27EE0;
  if (!qword_27CF27EE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF27EE0);
  }

  return result;
}

uint64_t OnboardingScreenViewEvent.Model.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v27 = a2;
  v4 = sub_22036F3C8();
  v30 = *(v4 - 8);
  v31 = v4;
  v5 = *(v30 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_22036F388();
  v28 = *(v34 - 8);
  v8 = *(v28 + 64);
  MEMORY[0x28223BE20](v34);
  v32 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2202D962C(0, &qword_27CF27EE8, MEMORY[0x277D844C8]);
  v33 = v10;
  v29 = *(v10 - 8);
  v11 = *(v29 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v25 - v12;
  v14 = type metadata accessor for OnboardingScreenViewEvent.Model(0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14);
  v17 = &v25 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2202D910C();
  sub_220370148();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v25 = v14;
  v26 = a1;
  v19 = v17;
  v21 = v29;
  v20 = v30;
  v22 = v31;
  v38 = 0;
  sub_2202307E4(&qword_2812666A0, MEMORY[0x277CEAEB0]);
  sub_22036FF28();
  (*(v28 + 32))(v19, v32, v34);
  v37 = 1;
  sub_2202307E4(&qword_281266688, MEMORY[0x277CEAED0]);
  sub_22036FF28();
  (*(v20 + 32))(v19 + *(v25 + 20), v7, v22);
  v35 = 2;
  sub_2202809F4();
  sub_22036FF28();
  v23 = v26;
  (*(v21 + 8))(v13, v33);
  *(v19 + *(v25 + 24)) = v36;
  sub_2202D9690(v19, v27);
  __swift_destroy_boxed_opaque_existential_1(v23);
  return sub_2202D96F4(v19);
}

void sub_2202D962C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_2202D910C();
    v7 = a3(a1, &type metadata for OnboardingScreenViewEvent.Model.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_2202D9690(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for OnboardingScreenViewEvent.Model(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2202D96F4(uint64_t a1)
{
  v2 = type metadata accessor for OnboardingScreenViewEvent.Model(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2202D9828@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *MEMORY[0x277CEACF8];
  sub_220230578();
  (*(*(v5 - 8) + 104))(a2, v4, v5);
  v6 = *(a1 + 20);
  sub_220230718();
  (*(*(v7 - 8) + 104))(a2 + v6, v4, v7);
  v8 = *(a1 + 24);
  sub_22028098C();
  v10 = *(*(v9 - 8) + 104);

  return v10(a2 + v8, v4, v9);
}

void sub_2202D9950()
{
  sub_220230578();
  if (v0 <= 0x3F)
  {
    sub_220230718();
    if (v1 <= 0x3F)
    {
      sub_22028098C();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_2202D9A14()
{
  result = sub_22036F388();
  if (v1 <= 0x3F)
  {
    result = sub_22036F3C8();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_2202D9AB4()
{
  result = qword_27CF27F10;
  if (!qword_27CF27F10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF27F10);
  }

  return result;
}

unint64_t sub_2202D9B0C()
{
  result = qword_27CF27F18;
  if (!qword_27CF27F18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF27F18);
  }

  return result;
}

unint64_t sub_2202D9B64()
{
  result = qword_27CF27F20;
  if (!qword_27CF27F20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF27F20);
  }

  return result;
}

uint64_t sub_2202D9BB8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x746144746E657665 && a2 == 0xE900000000000061;
  if (v4 || (sub_220370048() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x74614464656D6974 && a2 == 0xE900000000000061 || (sub_220370048() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000014 && 0x8000000220390B90 == a2)
  {

    return 2;
  }

  else
  {
    v6 = sub_220370048();

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

StocksAnalytics::BundleSubscriptionStatus_optional __swiftcall BundleSubscriptionStatus.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_22036FE78();

  v5 = 4;
  if (v3 < 4)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t BundleSubscriptionStatus.rawValue.getter()
{
  v1 = 0x6E776F6E6B6E75;
  v2 = 0x6269726373627573;
  if (*v0 != 2)
  {
    v2 = 0x6373627553746F6ELL;
  }

  if (*v0)
  {
    v1 = 0x6C61697274;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_2202D9DDC()
{
  result = qword_27CF27F28;
  if (!qword_27CF27F28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF27F28);
  }

  return result;
}

uint64_t sub_2202D9E30()
{
  v1 = *v0;
  sub_220370108();
  sub_22036FB08();

  return sub_220370128();
}

uint64_t sub_2202D9F00()
{
  *v0;
  *v0;
  *v0;
  sub_22036FB08();
}

uint64_t sub_2202D9FBC()
{
  v1 = *v0;
  sub_220370108();
  sub_22036FB08();

  return sub_220370128();
}

void sub_2202DA094(uint64_t *a1@<X8>)
{
  v2 = 0xE700000000000000;
  v3 = 0x6E776F6E6B6E75;
  v4 = 0xEA00000000006465;
  v5 = 0x6269726373627573;
  if (*v1 != 2)
  {
    v5 = 0x6373627553746F6ELL;
    v4 = 0xED00006465626972;
  }

  if (*v1)
  {
    v3 = 0x6C61697274;
    v2 = 0xE500000000000000;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

unint64_t sub_2202DA1E0()
{
  result = qword_281263288;
  if (!qword_281263288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281263288);
  }

  return result;
}

uint64_t Assembly.__allocating_init()()
{
  v0 = swift_allocObject();
  Assembly.init()();
  return v0;
}

uint64_t Assembly.deinit()
{
  v1 = *(v0 + 16);

  return v0;
}

uint64_t Assembly.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8D8](v0, 24, 7);
}

uint64_t AdPlacementData.placementID.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t AdPlacementData.placementID.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t sub_2202DA3B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6E656D6563616C70 && a2 == 0xEB00000000444974)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_220370048();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_2202DA43C(uint64_t a1)
{
  v2 = sub_2202DA600();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2202DA478(uint64_t a1)
{
  v2 = sub_2202DA600();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t AdPlacementData.encode(to:)(void *a1)
{
  sub_2202DA7D8(0, &qword_281261C98, MEMORY[0x277D84538]);
  v4 = v3;
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3);
  v8 = &v13 - v7;
  v9 = *v1;
  v10 = v1[1];
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2202DA600();
  sub_220370168();
  sub_22036FFB8();
  return (*(v5 + 8))(v8, v4);
}

unint64_t sub_2202DA600()
{
  result = qword_2812656F8[0];
  if (!qword_2812656F8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_2812656F8);
  }

  return result;
}

uint64_t AdPlacementData.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_2202DA7D8(0, &qword_27CF27F30, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v10 = &v16 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2202DA600();
  sub_220370148();
  if (!v2)
  {
    v12 = sub_22036FEE8();
    v14 = v13;
    (*(v7 + 8))(v10, v6);
    *a2 = v12;
    a2[1] = v14;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_2202DA7D8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_2202DA600();
    v7 = a3(a1, &type metadata for AdPlacementData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_2202DA85C(void *a1)
{
  sub_2202DA7D8(0, &qword_281261C98, MEMORY[0x277D84538]);
  v4 = v3;
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3);
  v8 = &v13 - v7;
  v9 = *v1;
  v10 = v1[1];
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2202DA600();
  sub_220370168();
  sub_22036FFB8();
  return (*(v5 + 8))(v8, v4);
}

unint64_t sub_2202DA9CC()
{
  result = qword_27CF27F38;
  if (!qword_27CF27F38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF27F38);
  }

  return result;
}

unint64_t sub_2202DAA24()
{
  result = qword_2812656E8;
  if (!qword_2812656E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812656E8);
  }

  return result;
}

unint64_t sub_2202DAA7C()
{
  result = qword_2812656F0;
  if (!qword_2812656F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812656F0);
  }

  return result;
}

unint64_t sub_2202DAB5C()
{
  if (*v0)
  {
    result = 0xD000000000000023;
  }

  else
  {
    result = 0xD000000000000021;
  }

  *v0;
  return result;
}

uint64_t sub_2202DAB98@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (a1 == 0xD000000000000021 && 0x8000000220391390 == a2 || (sub_220370048() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0xD000000000000023 && 0x80000002203913C0 == a2)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_220370048();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *a3 = v7;
  return result;
}

uint64_t sub_2202DAC7C(uint64_t a1)
{
  v2 = sub_2202DAEA0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2202DACB8(uint64_t a1)
{
  v2 = sub_2202DAEA0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t UserArticleContextData.encode(to:)(void *a1)
{
  sub_2202DB180(0, &qword_281261BE8, MEMORY[0x277D84538]);
  v5 = v4;
  v6 = *(v4 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v4);
  v9 = &v13 - v8;
  v10 = *v1;
  v14 = v1[1];
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2202DAEA0();
  sub_220370168();
  v18 = v10;
  v17 = 0;
  sub_2202DAEF4();
  sub_22036FFF8();
  if (!v2)
  {
    v16 = v14;
    v15 = 1;
    sub_2202DAF48();
    sub_22036FF88();
  }

  return (*(v6 + 8))(v9, v5);
}

unint64_t sub_2202DAEA0()
{
  result = qword_281263560;
  if (!qword_281263560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281263560);
  }

  return result;
}

unint64_t sub_2202DAEF4()
{
  result = qword_281262878;
  if (!qword_281262878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281262878);
  }

  return result;
}

unint64_t sub_2202DAF48()
{
  result = qword_2812626F0;
  if (!qword_2812626F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812626F0);
  }

  return result;
}

uint64_t UserArticleContextData.init(from:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  sub_2202DB180(0, &qword_281261D78, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v10 = &v15 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2202DAEA0();
  sub_220370148();
  if (!v2)
  {
    v18 = 0;
    sub_2202DB1E4();
    sub_22036FF28();
    v12 = v19;
    v16 = 1;
    sub_2202DB238();
    sub_22036FEB8();
    (*(v7 + 8))(v10, v6);
    v14 = v17;
    *a2 = v12;
    a2[1] = v14;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_2202DB180(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_2202DAEA0();
    v7 = a3(a1, &type metadata for UserArticleContextData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_2202DB1E4()
{
  result = qword_281262868;
  if (!qword_281262868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281262868);
  }

  return result;
}

unint64_t sub_2202DB238()
{
  result = qword_2812626E0;
  if (!qword_2812626E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812626E0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for UserArticleContextData(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 65283 <= 0xFFFEFFFF)
  {
    v2 = 2;
  }

  else
  {
    v2 = 4;
  }

  if (a2 + 65283 < 0xFF0000)
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
      return (*a1 | (v4 << 16)) - 65283;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 16)) - 65283;
    }

    v4 = *(a1 + 2);
    if (*(a1 + 2))
    {
      return (*a1 | (v4 << 16)) - 65283;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

_WORD *storeEnumTagSinglePayload for UserArticleContextData(_WORD *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 65283 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (a3 + 65283 < 0xFF0000)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 16) + 1;
    *result = a2 - 253;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        result[1] = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 2) = v5;
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

    result[1] = 0;
  }

  else if (v4)
  {
    *(result + 2) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_2202DB42C()
{
  result = qword_27CF27F40;
  if (!qword_27CF27F40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF27F40);
  }

  return result;
}

unint64_t sub_2202DB484()
{
  result = qword_281263550;
  if (!qword_281263550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281263550);
  }

  return result;
}

unint64_t sub_2202DB4DC()
{
  result = qword_281263558;
  if (!qword_281263558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281263558);
  }

  return result;
}

StocksAnalytics::SubscriptionResultType_optional __swiftcall SubscriptionResultType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_22036FE78();

  v5 = 5;
  if (v3 < 5)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t SubscriptionResultType.rawValue.getter()
{
  v1 = *v0;
  v2 = 0x6E776F6E6B6E75;
  v3 = 1818845542;
  v4 = 0x6C65636E6163;
  if (v1 != 3)
  {
    v4 = 0xD000000000000015;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x73736563637573;
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

unint64_t sub_2202DB630()
{
  result = qword_27CF27F48;
  if (!qword_27CF27F48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF27F48);
  }

  return result;
}

uint64_t sub_2202DB684()
{
  v1 = *v0;
  sub_220370108();
  sub_22036FB08();

  return sub_220370128();
}

uint64_t sub_2202DB760()
{
  *v0;
  *v0;
  *v0;
  sub_22036FB08();
}

uint64_t sub_2202DB828()
{
  v1 = *v0;
  sub_220370108();
  sub_22036FB08();

  return sub_220370128();
}

void sub_2202DB90C(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0x6E776F6E6B6E75;
  v5 = 0xE400000000000000;
  v6 = 1818845542;
  v7 = 0xE600000000000000;
  v8 = 0x6C65636E6163;
  if (v2 != 3)
  {
    v8 = 0xD000000000000015;
    v7 = 0x800000022038FCE0;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 0x73736563637573;
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

unint64_t sub_2202DBA64()
{
  result = qword_27CF27F50;
  if (!qword_27CF27F50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF27F50);
  }

  return result;
}

uint64_t ReferringArticleData.articleID.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t ReferringArticleData.articleID.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t ReferringArticleData.init(articleID:publisherArticleVersion:role:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X3>, uint64_t a5@<X8>)
{
  v5 = *a4;
  *a5 = result;
  *(a5 + 8) = a2;
  *(a5 + 16) = a3;
  *(a5 + 24) = v5;
  return result;
}

uint64_t sub_2202DBBC4()
{
  v1 = 0xD000000000000017;
  if (*v0 != 1)
  {
    v1 = 1701605234;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x49656C6369747261;
  }
}

uint64_t sub_2202DBC20@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2202DC42C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2202DBC48(uint64_t a1)
{
  v2 = sub_2202DBE94();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2202DBC84(uint64_t a1)
{
  v2 = sub_2202DBE94();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ReferringArticleData.encode(to:)(void *a1)
{
  sub_2202DC120(0, &qword_27CF27F58, MEMORY[0x277D84538]);
  v4 = v3;
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3);
  v8 = v15 - v7;
  v9 = *v1;
  v10 = v1[1];
  v15[0] = v1[2];
  v16 = *(v1 + 24);
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2202DBE94();
  sub_220370168();
  v20 = 0;
  v12 = v15[1];
  sub_22036FFB8();
  if (!v12)
  {
    v13 = v16;
    v19 = 1;
    sub_220370018();
    v18 = v13;
    v17 = 2;
    sub_22022E5F0();
    sub_22036FFF8();
  }

  return (*(v5 + 8))(v8, v4);
}

unint64_t sub_2202DBE94()
{
  result = qword_27CF27F60;
  if (!qword_27CF27F60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF27F60);
  }

  return result;
}

uint64_t ReferringArticleData.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_2202DC120(0, &qword_27CF27F68, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v10 = &v18 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2202DBE94();
  sub_220370148();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v23 = 0;
  v12 = sub_22036FEE8();
  v14 = v13;
  v15 = v12;
  v22 = 1;
  v19 = sub_22036FF48();
  v20 = 2;
  sub_22022EC88();
  sub_22036FF28();
  (*(v7 + 8))(v10, v6);
  v17 = v21;
  *a2 = v15;
  *(a2 + 8) = v14;
  *(a2 + 16) = v19;
  *(a2 + 24) = v17;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_2202DC120(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_2202DBE94();
    v7 = a3(a1, &type metadata for ReferringArticleData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_2202DC188()
{
  result = qword_281263CA8;
  if (!qword_281263CA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281263CA8);
  }

  return result;
}

unint64_t sub_2202DC1E0()
{
  result = qword_281263CB0[0];
  if (!qword_281263CB0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_281263CB0);
  }

  return result;
}

__n128 __swift_memcpy25_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t sub_2202DC278(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 25))
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

uint64_t sub_2202DC2C0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 25) = 1;
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

    *(result + 25) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_2202DC328()
{
  result = qword_27CF27F70;
  if (!qword_27CF27F70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF27F70);
  }

  return result;
}

unint64_t sub_2202DC380()
{
  result = qword_27CF27F78;
  if (!qword_27CF27F78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF27F78);
  }

  return result;
}

unint64_t sub_2202DC3D8()
{
  result = qword_27CF27F80;
  if (!qword_27CF27F80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF27F80);
  }

  return result;
}

uint64_t sub_2202DC42C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x49656C6369747261 && a2 == 0xE900000000000044;
  if (v4 || (sub_220370048() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000017 && 0x80000002203900A0 == a2 || (sub_220370048() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 1701605234 && a2 == 0xE400000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_220370048();

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

uint64_t sub_2202DC594(uint64_t a1)
{
  v2 = sub_2202DC754();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2202DC5D0(uint64_t a1)
{
  v2 = sub_2202DC754();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t AdPositionData.encode(to:)(void *a1)
{
  sub_2202DC928(0, &qword_281261CB0, MEMORY[0x277D84538]);
  v4 = v3;
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3);
  v8 = &v12 - v7;
  v9 = *v1;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2202DC754();
  sub_220370168();
  sub_220370008();
  return (*(v5 + 8))(v8, v4);
}

unint64_t sub_2202DC754()
{
  result = qword_281265918;
  if (!qword_281265918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281265918);
  }

  return result;
}

uint64_t AdPositionData.init(from:)@<X0>(uint64_t *a1@<X0>, _DWORD *a2@<X8>)
{
  sub_2202DC928(0, &qword_27CF27F88, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v10 = &v14 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2202DC754();
  sub_220370148();
  if (!v2)
  {
    v12 = sub_22036FF38();
    (*(v7 + 8))(v10, v6);
    *a2 = v12;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_2202DC928(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_2202DC754();
    v7 = a3(a1, &type metadata for AdPositionData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_2202DC9AC(void *a1)
{
  sub_2202DC928(0, &qword_281261CB0, MEMORY[0x277D84538]);
  v4 = v3;
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3);
  v8 = &v12 - v7;
  v9 = *v1;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2202DC754();
  sub_220370168();
  sub_220370008();
  return (*(v5 + 8))(v8, v4);
}

unint64_t sub_2202DCB18()
{
  result = qword_27CF27F90;
  if (!qword_27CF27F90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF27F90);
  }

  return result;
}

unint64_t sub_2202DCB70()
{
  result = qword_281265908;
  if (!qword_281265908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281265908);
  }

  return result;
}

unint64_t sub_2202DCBC8()
{
  result = qword_281265910;
  if (!qword_281265910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281265910);
  }

  return result;
}

StocksAnalytics::SelectedResultActionType_optional __swiftcall SelectedResultActionType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_22036FE78();

  v5 = 4;
  if (v3 < 4)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t SelectedResultActionType.rawValue.getter()
{
  v1 = 0x6E776F6E6B6E75;
  v2 = 0x68637461776E75;
  if (*v0 != 2)
  {
    v2 = 0x626D795377656976;
  }

  if (*v0)
  {
    v1 = 0x6863746177;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_2202DCD0C()
{
  result = qword_27CF27F98;
  if (!qword_27CF27F98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF27F98);
  }

  return result;
}

uint64_t sub_2202DCD60()
{
  v1 = *v0;
  sub_220370108();
  sub_22036FB08();

  return sub_220370128();
}

uint64_t sub_2202DCE2C()
{
  *v0;
  *v0;
  *v0;
  sub_22036FB08();
}

uint64_t sub_2202DCEE4()
{
  v1 = *v0;
  sub_220370108();
  sub_22036FB08();

  return sub_220370128();
}

void sub_2202DCFB8(uint64_t *a1@<X8>)
{
  v2 = 0xE700000000000000;
  v3 = 0x6E776F6E6B6E75;
  v4 = 0xE700000000000000;
  v5 = 0x68637461776E75;
  if (*v1 != 2)
  {
    v5 = 0x626D795377656976;
    v4 = 0xEE00646565466C6FLL;
  }

  if (*v1)
  {
    v3 = 0x6863746177;
    v2 = 0xE500000000000000;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

unint64_t sub_2202DD100()
{
  result = qword_27CF27FA0;
  if (!qword_27CF27FA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF27FA0);
  }

  return result;
}

uint64_t sub_2202DD21C()
{
  v0 = sub_22036F118();
  __swift_allocate_value_buffer(v0, qword_27CF27FD8);
  __swift_project_value_buffer(v0, qword_27CF27FD8);
  return sub_22036F108();
}

uint64_t AdInterstitialEngagementEvent.eventData.setter(uint64_t a1)
{
  sub_220230578();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t AdInterstitialEngagementEvent.adData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AdInterstitialEngagementEvent(0) + 20);
  sub_2202DD81C(0, &qword_27CF26E30, sub_220281CF8, sub_220281D4C);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t AdInterstitialEngagementEvent.adData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for AdInterstitialEngagementEvent(0) + 20);
  sub_2202DD81C(0, &qword_27CF26E30, sub_220281CF8, sub_220281D4C);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t AdInterstitialEngagementEvent.adEngagementData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AdInterstitialEngagementEvent(0) + 24);
  sub_2202DD81C(0, &qword_27CF27FF0, sub_2202DD5C4, sub_2202DD618);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

unint64_t sub_2202DD5C4()
{
  result = qword_27CF27FF8;
  if (!qword_27CF27FF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF27FF8);
  }

  return result;
}

unint64_t sub_2202DD618()
{
  result = qword_27CF28000;
  if (!qword_27CF28000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF28000);
  }

  return result;
}

uint64_t AdInterstitialEngagementEvent.adEngagementData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for AdInterstitialEngagementEvent(0) + 24);
  sub_2202DD81C(0, &qword_27CF27FF0, sub_2202DD5C4, sub_2202DD618);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t AdInterstitialEngagementEvent.feedData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AdInterstitialEngagementEvent(0) + 28);
  sub_2202DD81C(0, &qword_281266730, sub_2201FBCC4, sub_2201FBD1C);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

void sub_2202DD81C(uint64_t a1, unint64_t *a2, void (*a3)(void), void (*a4)(void))
{
  if (!*a2)
  {
    a3();
    a4();
    v6 = sub_22036EE38();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t AdInterstitialEngagementEvent.feedData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for AdInterstitialEngagementEvent(0) + 28);
  sub_2202DD81C(0, &qword_281266730, sub_2201FBCC4, sub_2201FBD1C);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t AdInterstitialEngagementEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277CEACF8];
  sub_220230578();
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  v4 = type metadata accessor for AdInterstitialEngagementEvent(0);
  v5 = v4[5];
  sub_2202DD81C(0, &qword_27CF26E30, sub_220281CF8, sub_220281D4C);
  (*(*(v6 - 8) + 104))(a1 + v5, v2, v6);
  v7 = v4[6];
  sub_2202DD81C(0, &qword_27CF27FF0, sub_2202DD5C4, sub_2202DD618);
  (*(*(v8 - 8) + 104))(a1 + v7, v2, v8);
  v9 = v4[7];
  sub_2202DD81C(0, &qword_281266730, sub_2201FBCC4, sub_2201FBD1C);
  v11 = *(*(v10 - 8) + 104);

  return v11(a1 + v9, v2, v10);
}

uint64_t AdInterstitialEngagementEvent.Model.adData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for AdInterstitialEngagementEvent.Model(0) + 20);
  v4 = *(v3 + 48);
  v11 = *(v3 + 32);
  v12 = v4;
  v13 = *(v3 + 64);
  v5 = v13;
  v6 = *(v3 + 16);
  v10[0] = *v3;
  v7 = v10[0];
  v10[1] = v6;
  *(a1 + 32) = v11;
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *a1 = v7;
  *(a1 + 16) = v6;
  return sub_2202823D8(v10, v9);
}

uint64_t AdInterstitialEngagementEvent.Model.adEngagementData.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for AdInterstitialEngagementEvent.Model(0);
  *a1 = *(v1 + *(result + 24));
  return result;
}

uint64_t AdInterstitialEngagementEvent.Model.feedData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for AdInterstitialEngagementEvent.Model(0) + 28);
  v5 = *(v3 + 8);
  v4 = *(v3 + 16);
  *a1 = *v3;
  *(a1 + 8) = v5;
  *(a1 + 16) = v4;
}

__n128 AdInterstitialEngagementEvent.Model.init(eventData:adData:adEngagementData:feedData:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, char *a4@<X3>, uint64_t a5@<X8>)
{
  v8 = *a3;
  v9 = *a4;
  v10 = *(a4 + 1);
  v11 = *(a4 + 2);
  v12 = sub_22036F388();
  (*(*(v12 - 8) + 32))(a5, a1, v12);
  v13 = type metadata accessor for AdInterstitialEngagementEvent.Model(0);
  v14 = a5 + v13[5];
  v15 = *(a2 + 48);
  *(v14 + 32) = *(a2 + 32);
  *(v14 + 48) = v15;
  *(v14 + 64) = *(a2 + 64);
  result = *(a2 + 16);
  *v14 = *a2;
  *(v14 + 16) = result;
  *(a5 + v13[6]) = v8;
  v17 = a5 + v13[7];
  *v17 = v9;
  *(v17 + 8) = v10;
  *(v17 + 16) = v11;
  return result;
}

unint64_t sub_2202DDD70()
{
  v1 = 0x746144746E657665;
  v2 = 0xD000000000000010;
  if (*v0 != 2)
  {
    v2 = 0x6174614464656566;
  }

  if (*v0)
  {
    v1 = 0x617461446461;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_2202DDDF0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2202DED70(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2202DDE18(uint64_t a1)
{
  v2 = sub_2202DE194();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2202DDE54(uint64_t a1)
{
  v2 = sub_2202DE194();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t AdInterstitialEngagementEvent.Model.encode(to:)(void *a1)
{
  v3 = v1;
  sub_2202DE640(0, &qword_27CF28008, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v10 = &v22 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2202DE194();
  sub_220370168();
  v39 = 0;
  sub_22036F388();
  sub_2202366E0(&qword_2812666A8);
  sub_22036FFF8();
  if (!v2)
  {
    v12 = type metadata accessor for AdInterstitialEngagementEvent.Model(0);
    v13 = v3 + v12[5];
    v14 = *(v13 + 16);
    v15 = *(v13 + 48);
    v34 = *(v13 + 32);
    v35 = v15;
    v16 = *(v13 + 16);
    v33[0] = *v13;
    v33[1] = v16;
    v17 = *(v13 + 48);
    v30 = v34;
    v31 = v17;
    v36 = *(v13 + 64);
    v32 = *(v13 + 64);
    v28 = v33[0];
    v29 = v14;
    v38 = 1;
    sub_2202823D8(v33, v26);
    sub_220281D4C();
    sub_22036FFF8();
    v26[2] = v30;
    v26[3] = v31;
    v27 = v32;
    v26[0] = v28;
    v26[1] = v29;
    sub_220282A40(v26);
    v23 = *(v3 + v12[6]);
    v37 = 2;
    sub_2202DD618();
    sub_22036FFF8();
    v18 = (v3 + v12[7]);
    v19 = *(v18 + 1);
    v20 = *(v18 + 2);
    v23 = *v18;
    v24 = v19;
    v25 = v20;
    v37 = 3;
    sub_2201FBD1C();

    sub_22036FFF8();
  }

  return (*(v7 + 8))(v10, v6);
}

unint64_t sub_2202DE194()
{
  result = qword_27CF28010;
  if (!qword_27CF28010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF28010);
  }

  return result;
}

uint64_t AdInterstitialEngagementEvent.Model.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v28 = a2;
  v4 = sub_22036F388();
  v29 = *(v4 - 8);
  v5 = *(v29 + 64);
  MEMORY[0x28223BE20](v4);
  v30 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2202DE640(0, &qword_27CF28018, MEMORY[0x277D844C8]);
  v31 = *(v7 - 8);
  v32 = v7;
  v8 = *(v31 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v27 - v9;
  v11 = type metadata accessor for AdInterstitialEngagementEvent.Model(0);
  v12 = *(*(v11 - 1) + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2202DE194();
  v33 = v10;
  sub_220370148();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v27 = a1;
  v16 = v14;
  v17 = v29;
  LOBYTE(v37) = 0;
  sub_2202366E0(&qword_2812666A0);
  v18 = v30;
  v19 = v32;
  sub_22036FF28();
  (*(v17 + 32))(v16, v18, v4);
  v43 = 1;
  sub_220281CF8();
  sub_22036FF28();
  v20 = v16 + v11[5];
  v21 = v40;
  *(v20 + 32) = v39;
  *(v20 + 48) = v21;
  *(v20 + 64) = v41;
  v22 = v38;
  *v20 = v37;
  *(v20 + 16) = v22;
  v42 = 2;
  sub_2202DD5C4();
  sub_22036FF28();
  *(v16 + v11[6]) = v34;
  v42 = 3;
  sub_2201FBCC4();
  sub_22036FF28();
  (*(v31 + 8))(v33, v19);
  v23 = v35;
  v24 = v36;
  v25 = v16 + v11[7];
  *v25 = v34;
  *(v25 + 8) = v23;
  *(v25 + 16) = v24;
  sub_2202DE6A4(v16, v28);
  __swift_destroy_boxed_opaque_existential_1(v27);
  return sub_2202DE708(v16);
}

void sub_2202DE640(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_2202DE194();
    v7 = a3(a1, &type metadata for AdInterstitialEngagementEvent.Model.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_2202DE6A4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AdInterstitialEngagementEvent.Model(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2202DE708(uint64_t a1)
{
  v2 = type metadata accessor for AdInterstitialEngagementEvent.Model(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2202DE83C@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *MEMORY[0x277CEACF8];
  sub_220230578();
  (*(*(v5 - 8) + 104))(a2, v4, v5);
  v6 = a1[5];
  sub_2202DD81C(0, &qword_27CF26E30, sub_220281CF8, sub_220281D4C);
  (*(*(v7 - 8) + 104))(a2 + v6, v4, v7);
  v8 = a1[6];
  sub_2202DD81C(0, &qword_27CF27FF0, sub_2202DD5C4, sub_2202DD618);
  (*(*(v9 - 8) + 104))(a2 + v8, v4, v9);
  v10 = a1[7];
  sub_2202DD81C(0, &qword_281266730, sub_2201FBCC4, sub_2201FBD1C);
  v12 = *(*(v11 - 8) + 104);

  return v12(a2 + v10, v4, v11);
}

void sub_2202DEA4C()
{
  sub_220230578();
  if (v0 <= 0x3F)
  {
    sub_2202DD81C(319, &qword_27CF26E30, sub_220281CF8, sub_220281D4C);
    if (v1 <= 0x3F)
    {
      sub_2202DD81C(319, &qword_27CF27FF0, sub_2202DD5C4, sub_2202DD618);
      if (v2 <= 0x3F)
      {
        sub_2202DD81C(319, &qword_281266730, sub_2201FBCC4, sub_2201FBD1C);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_2202DEBD0()
{
  result = sub_22036F388();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_2202DEC6C()
{
  result = qword_27CF28040;
  if (!qword_27CF28040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF28040);
  }

  return result;
}

unint64_t sub_2202DECC4()
{
  result = qword_27CF28048;
  if (!qword_27CF28048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF28048);
  }

  return result;
}

unint64_t sub_2202DED1C()
{
  result = qword_27CF28050;
  if (!qword_27CF28050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF28050);
  }

  return result;
}

uint64_t sub_2202DED70(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x746144746E657665 && a2 == 0xE900000000000061;
  if (v4 || (sub_220370048() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x617461446461 && a2 == 0xE600000000000000 || (sub_220370048() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000010 && 0x80000002203913F0 == a2 || (sub_220370048() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6174614464656566 && a2 == 0xE800000000000000)
  {

    return 3;
  }

  else
  {
    v6 = sub_220370048();

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

uint64_t sub_2202DEEE0()
{
  v0 = sub_22036ED68();
  __swift_allocate_value_buffer(v0, qword_281264630);
  v1 = __swift_project_value_buffer(v0, qword_281264630);
  *v1 = 0x7364612E6D6F63;
  *(v1 + 8) = 0xE700000000000000;
  *(v1 + 16) = 3;
  *(v1 + 24) = 0;
  v2 = *MEMORY[0x277CEACB0];
  v3 = *(*(v0 - 8) + 104);

  return v3();
}

uint64_t sub_2202DEFCC()
{
  v0 = sub_22036F048();
  __swift_allocate_value_buffer(v0, qword_281264608);
  v1 = __swift_project_value_buffer(v0, qword_281264608);
  v2 = *MEMORY[0x277CEADA8];
  v3 = *(*(v0 - 8) + 104);

  return v3(v1, v2, v0);
}

uint64_t sub_2202DF08C()
{
  v0 = sub_22036F118();
  __swift_allocate_value_buffer(v0, qword_2812645E0);
  __swift_project_value_buffer(v0, qword_2812645E0);
  return sub_22036F108();
}

uint64_t AdJournalEntryEvent.eventData.setter(uint64_t a1)
{
  sub_220230578();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t AdJournalEntryEvent.adUserData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AdJournalEntryEvent(0) + 20);
  sub_2202E00AC(0, &qword_281266880, sub_2201F93C8, sub_2201F9420);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t AdJournalEntryEvent.adUserData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for AdJournalEntryEvent(0) + 20);
  sub_2202E00AC(0, &qword_281266880, sub_2201F93C8, sub_2201F9420);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t AdJournalEntryEvent.channelData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AdJournalEntryEvent(0) + 24);
  sub_2202E00AC(0, &qword_281266858, sub_220236A30, sub_220236A84);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t AdJournalEntryEvent.channelData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for AdJournalEntryEvent(0) + 24);
  sub_2202E00AC(0, &qword_281266858, sub_220236A30, sub_220236A84);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t AdJournalEntryEvent.adCreativeData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AdJournalEntryEvent(0) + 28);
  sub_2202E00AC(0, &qword_281266808, sub_22028BAC0, sub_22028BB18);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t AdJournalEntryEvent.adCreativeData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for AdJournalEntryEvent(0) + 28);
  sub_2202E00AC(0, &qword_281266808, sub_22028BAC0, sub_22028BB18);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t AdJournalEntryEvent.adPlacementData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AdJournalEntryEvent(0) + 32);
  sub_2202E00AC(0, &qword_2812667F0, sub_220242CD4, sub_220242D28);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t AdJournalEntryEvent.adPlacementData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for AdJournalEntryEvent(0) + 32);
  sub_2202E00AC(0, &qword_2812667F0, sub_220242CD4, sub_220242D28);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t AdJournalEntryEvent.adJournalEntryData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AdJournalEntryEvent(0) + 36);
  sub_2202E00AC(0, &qword_2812667A8, sub_2202DF944, sub_2202DF998);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

unint64_t sub_2202DF944()
{
  result = qword_281264C90;
  if (!qword_281264C90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281264C90);
  }

  return result;
}

unint64_t sub_2202DF998()
{
  result = qword_281264C98;
  if (!qword_281264C98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281264C98);
  }

  return result;
}

uint64_t AdJournalEntryEvent.adJournalEntryData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for AdJournalEntryEvent(0) + 36);
  sub_2202E00AC(0, &qword_2812667A8, sub_2202DF944, sub_2202DF998);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t AdJournalEntryEvent.adSizeData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AdJournalEntryEvent(0) + 40);
  sub_2202E00AC(0, &qword_281266888, sub_220242F2C, sub_220242F80);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t AdJournalEntryEvent.adSizeData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for AdJournalEntryEvent(0) + 40);
  sub_2202E00AC(0, &qword_281266888, sub_220242F2C, sub_220242F80);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t AdJournalEntryEvent.adPositionData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AdJournalEntryEvent(0) + 44);
  sub_2202E00AC(0, &qword_281266800, sub_220243184, sub_2202431D8);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t AdJournalEntryEvent.adPositionData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for AdJournalEntryEvent(0) + 44);
  sub_2202E00AC(0, &qword_281266800, sub_220243184, sub_2202431D8);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t AdJournalEntryEvent.adFeedData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AdJournalEntryEvent(0) + 48);
  sub_2202E00AC(0, &qword_281266890, sub_220202B10, sub_220202B7C);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t AdJournalEntryEvent.adFeedData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for AdJournalEntryEvent(0) + 48);
  sub_2202E00AC(0, &qword_281266890, sub_220202B10, sub_220202B7C);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t AdJournalEntryEvent.adGroupData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AdJournalEntryEvent(0) + 52);
  sub_2202E00AC(0, &qword_281266868, sub_220243860, sub_2202438B4);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

void sub_2202E00AC(uint64_t a1, unint64_t *a2, void (*a3)(void), void (*a4)(void))
{
  if (!*a2)
  {
    a3();
    a4();
    v6 = sub_22036EE38();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t AdJournalEntryEvent.adGroupData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for AdJournalEntryEvent(0) + 52);
  sub_2202E00AC(0, &qword_281266868, sub_220243860, sub_2202438B4);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t AdJournalEntryEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277CEACF8];
  sub_220230578();
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  v4 = type metadata accessor for AdJournalEntryEvent(0);
  v5 = v4[5];
  sub_2202E00AC(0, &qword_281266880, sub_2201F93C8, sub_2201F9420);
  (*(*(v6 - 8) + 104))(a1 + v5, v2, v6);
  v7 = v4[6];
  v8 = *MEMORY[0x277CEACF0];
  sub_2202E00AC(0, &qword_281266858, sub_220236A30, sub_220236A84);
  (*(*(v9 - 8) + 104))(a1 + v7, v8, v9);
  v10 = v4[7];
  sub_2202E00AC(0, &qword_281266808, sub_22028BAC0, sub_22028BB18);
  (*(*(v11 - 8) + 104))(a1 + v10, v2, v11);
  v12 = v4[8];
  sub_2202E00AC(0, &qword_2812667F0, sub_220242CD4, sub_220242D28);
  (*(*(v13 - 8) + 104))(a1 + v12, v2, v13);
  v14 = v4[9];
  sub_2202E00AC(0, &qword_2812667A8, sub_2202DF944, sub_2202DF998);
  (*(*(v15 - 8) + 104))(a1 + v14, v2, v15);
  v16 = v4[10];
  sub_2202E00AC(0, &qword_281266888, sub_220242F2C, sub_220242F80);
  (*(*(v17 - 8) + 104))(a1 + v16, v8, v17);
  v18 = v4[11];
  sub_2202E00AC(0, &qword_281266800, sub_220243184, sub_2202431D8);
  (*(*(v19 - 8) + 104))(a1 + v18, v8, v19);
  v20 = v4[12];
  sub_2202E00AC(0, &qword_281266890, sub_220202B10, sub_220202B7C);
  (*(*(v21 - 8) + 104))(a1 + v20, v8, v21);
  v22 = v4[13];
  sub_2202E00AC(0, &qword_281266868, sub_220243860, sub_2202438B4);
  v24 = *(*(v23 - 8) + 104);

  return v24(a1 + v22, v8, v23);
}

uint64_t AdJournalEntryEvent.Model.adUserData.getter@<X0>(void *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for AdJournalEntryEvent.Model(0) + 20));
  v4 = v3[1];
  *a1 = *v3;
  a1[1] = v4;
}

uint64_t AdJournalEntryEvent.Model.channelData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for AdJournalEntryEvent.Model(0) + 24);
  v4 = *v3;
  v5 = *(v3 + 8);
  v6 = *(v3 + 16);
  v7 = *(v3 + 24);
  *a1 = *v3;
  *(a1 + 8) = v5;
  *(a1 + 16) = v6;
  *(a1 + 24) = v7;
  *(a1 + 32) = *(v3 + 32);

  return sub_2202440A8(v4, v5);
}

uint64_t AdJournalEntryEvent.Model.adCreativeData.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for AdJournalEntryEvent.Model(0);
  *a1 = *(v1 + *(result + 28));
  return result;
}

uint64_t AdJournalEntryEvent.Model.adPlacementData.getter@<X0>(void *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for AdJournalEntryEvent.Model(0) + 32));
  v4 = v3[1];
  *a1 = *v3;
  a1[1] = v4;
}

uint64_t AdJournalEntryEvent.Model.adJournalEntryData.getter@<X0>(_WORD *a1@<X8>)
{
  result = type metadata accessor for AdJournalEntryEvent.Model(0);
  *a1 = *(v1 + *(result + 36));
  return result;
}

uint64_t AdJournalEntryEvent.Model.adSizeData.getter@<X0>(uint64_t a1@<X8>)
{
  result = type metadata accessor for AdJournalEntryEvent.Model(0);
  v4 = (v1 + *(result + 40));
  v5 = *v4;
  LOBYTE(v4) = *(v4 + 8);
  *a1 = v5;
  *(a1 + 8) = v4;
  return result;
}

uint64_t AdJournalEntryEvent.Model.adPositionData.getter@<X0>(uint64_t a1@<X8>)
{
  result = type metadata accessor for AdJournalEntryEvent.Model(0);
  v4 = (v1 + *(result + 44));
  v5 = *v4;
  LOBYTE(v4) = *(v4 + 4);
  *a1 = v5;
  *(a1 + 4) = v4;
  return result;
}

uint64_t AdJournalEntryEvent.Model.adFeedData.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for AdJournalEntryEvent.Model(0);
  *a1 = *(v1 + *(result + 48));
  return result;
}

uint64_t AdJournalEntryEvent.Model.adGroupData.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for AdJournalEntryEvent.Model(0);
  *a1 = *(v1 + *(result + 52));
  return result;
}

__n128 AdJournalEntryEvent.Model.init(eventData:adUserData:channelData:adCreativeData:adPlacementData:adJournalEntryData:adSizeData:adPositionData:adFeedData:adGroupData:)@<Q0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, char *a4@<X3>, uint64_t *a5@<X4>, __int16 *a6@<X5>, uint64_t *a7@<X6>, int *a8@<X7>, uint64_t a9@<X8>, char *a10, char *a11)
{
  v14 = *a2;
  v15 = a2[1];
  v16 = *(a3 + 32);
  v17 = *a4;
  v18 = *a5;
  v19 = a5[1];
  v20 = *a6;
  v32 = *a7;
  v31 = *(a7 + 8);
  v33 = *(a8 + 4);
  v34 = *a8;
  v35 = *a10;
  v36 = *a11;
  v21 = sub_22036F388();
  v29 = *(a3 + 16);
  v30 = *a3;
  (*(*(v21 - 8) + 32))(a9, a1, v21);
  v22 = type metadata accessor for AdJournalEntryEvent.Model(0);
  v23 = (a9 + v22[5]);
  *v23 = v14;
  v23[1] = v15;
  v24 = a9 + v22[6];
  result = v30;
  *v24 = v30;
  *(v24 + 16) = v29;
  *(v24 + 32) = v16;
  *(a9 + v22[7]) = v17;
  v26 = (a9 + v22[8]);
  *v26 = v18;
  v26[1] = v19;
  *(a9 + v22[9]) = v20;
  v27 = a9 + v22[10];
  *v27 = v32;
  *(v27 + 8) = v31;
  v28 = a9 + v22[11];
  *v28 = v34;
  *(v28 + 4) = v33;
  *(a9 + v22[12]) = v35;
  *(a9 + v22[13]) = v36;
  return result;
}

unint64_t sub_2202E0AC0(unsigned __int8 a1)
{
  if (a1 > 4u)
  {
    v5 = 0x697469736F506461;
    v6 = 0x6144646565466461;
    if (a1 != 8)
    {
      v6 = 0x4470756F72476461;
    }

    if (a1 != 7)
    {
      v5 = v6;
    }

    v7 = 0xD000000000000012;
    if (a1 != 5)
    {
      v7 = 0x6144657A69536461;
    }

    if (a1 <= 6u)
    {
      return v7;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v1 = 0x746144746E657665;
    v2 = 0x446C656E6E616863;
    v3 = 0x6974616572436461;
    if (a1 != 3)
    {
      v3 = 0x6D6563616C506461;
    }

    if (a1 != 2)
    {
      v2 = v3;
    }

    if (a1)
    {
      v1 = 0x6144726573556461;
    }

    if (a1 <= 1u)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_2202E0C50@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2202E2544(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2202E0C78(uint64_t a1)
{
  v2 = sub_2202E1174();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2202E0CB4(uint64_t a1)
{
  v2 = sub_2202E1174();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t AdJournalEntryEvent.Model.encode(to:)(void *a1)
{
  v3 = v1;
  sub_2202E1880(0, &qword_27CF28058, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v10 = &v27 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2202E1174();
  sub_220370168();
  LOBYTE(v28) = 0;
  sub_22036F388();
  sub_2202366E0(&qword_2812666A8);
  sub_22036FFF8();
  if (!v2)
  {
    v12 = type metadata accessor for AdJournalEntryEvent.Model(0);
    v13 = (v3 + v12[5]);
    v14 = v13[1];
    v28 = *v13;
    v29 = v14;
    v33 = 1;
    sub_2201F9420();

    sub_22036FFF8();

    v15 = v3 + v12[6];
    v16 = *(v15 + 8);
    v17 = *(v15 + 16);
    v18 = *(v15 + 24);
    v19 = *(v15 + 32);
    v28 = *v15;
    v29 = v16;
    v30 = v17;
    v31 = v18;
    v32 = v19;
    v33 = 2;
    sub_2202440A8(v28, v16);
    sub_220236A84();
    sub_22036FF88();
    sub_220244C08(v28, v29);
    LOBYTE(v28) = *(v3 + v12[7]);
    v33 = 3;
    sub_22028BB18();
    sub_22036FFF8();
    v21 = (v3 + v12[8]);
    v22 = v21[1];
    v28 = *v21;
    v29 = v22;
    v33 = 4;
    sub_220242D28();

    sub_22036FFF8();

    LOWORD(v28) = *(v3 + v12[9]);
    v33 = 5;
    sub_2202DF998();
    sub_22036FFF8();
    v23 = v3 + v12[10];
    v24 = *v23;
    LOBYTE(v23) = *(v23 + 8);
    v28 = v24;
    LOBYTE(v29) = v23;
    v33 = 6;
    sub_220242F80();
    sub_22036FF88();
    v25 = (v3 + v12[11]);
    v26 = *v25;
    LOBYTE(v25) = *(v25 + 4);
    LODWORD(v28) = v26;
    BYTE4(v28) = v25;
    v33 = 7;
    sub_2202431D8();
    sub_22036FF88();
    LOBYTE(v28) = *(v3 + v12[12]);
    v33 = 8;
    sub_220202B7C();
    sub_22036FF88();
    LOBYTE(v28) = *(v3 + v12[13]);
    v33 = 9;
    sub_2202438B4();
    sub_22036FF88();
  }

  return (*(v7 + 8))(v10, v6);
}

unint64_t sub_2202E1174()
{
  result = qword_27CF28060;
  if (!qword_27CF28060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF28060);
  }

  return result;
}

uint64_t AdJournalEntryEvent.Model.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v37 = a2;
  v4 = sub_22036F388();
  v38 = *(v4 - 8);
  v5 = *(v38 + 64);
  MEMORY[0x28223BE20](v4);
  v40 = v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2202E1880(0, &qword_27CF28068, MEMORY[0x277D844C8]);
  v41 = v7;
  v39 = *(v7 - 8);
  v8 = *(v39 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = v34 - v9;
  v11 = type metadata accessor for AdJournalEntryEvent.Model(0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11);
  v14 = v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2202E1174();
  v42 = v10;
  sub_220370148();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v16 = v39;
  v35 = v11;
  v36 = v14;
  v17 = a1;
  LOBYTE(v43) = 0;
  sub_2202366E0(&qword_2812666A0);
  v18 = v40;
  sub_22036FF28();
  v19 = v36;
  (*(v38 + 32))(v36, v18, v4);
  v46 = 1;
  sub_2201F93C8();
  sub_22036FF28();
  v20 = *(&v43 + 1);
  v21 = v35;
  v22 = &v19[v35[5]];
  *v22 = v43;
  *(v22 + 1) = v20;
  v46 = 2;
  sub_220236A30();
  v40 = 0;
  sub_22036FEB8();
  v34[1] = v17;
  v23 = v45;
  v24 = &v19[v21[6]];
  v25 = v44;
  *v24 = v43;
  *(v24 + 1) = v25;
  *(v24 + 16) = v23;
  v46 = 3;
  sub_22028BAC0();
  sub_22036FF28();
  v19[v21[7]] = v43;
  v46 = 4;
  sub_220242CD4();
  sub_22036FF28();
  v26 = *(&v43 + 1);
  v27 = &v19[v21[8]];
  *v27 = v43;
  *(v27 + 1) = v26;
  v46 = 5;
  sub_2202DF944();
  sub_22036FF28();
  *&v19[v21[9]] = v43;
  v46 = 6;
  sub_220242F2C();
  sub_22036FEB8();
  v28 = BYTE8(v43);
  v29 = &v19[v21[10]];
  *v29 = v43;
  v29[8] = v28;
  v46 = 7;
  sub_220243184();
  sub_22036FEB8();
  v30 = BYTE4(v43);
  v31 = &v19[v21[11]];
  *v31 = v43;
  v31[4] = v30;
  v46 = 8;
  sub_220202B10();
  sub_22036FEB8();
  v19[v21[12]] = v43;
  v46 = 9;
  sub_220243860();
  sub_22036FEB8();
  (*(v16 + 8))(v42, v41);
  v32 = v36;
  v36[v35[13]] = v43;
  sub_2202E18E4(v32, v37);
  __swift_destroy_boxed_opaque_existential_1(v17);
  return sub_2202E1948(v32);
}

void sub_2202E1880(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_2202E1174();
    v7 = a3(a1, &type metadata for AdJournalEntryEvent.Model.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_2202E18E4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AdJournalEntryEvent.Model(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2202E1948(uint64_t a1)
{
  v2 = type metadata accessor for AdJournalEntryEvent.Model(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2202E1A7C@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *MEMORY[0x277CEACF8];
  sub_220230578();
  (*(*(v5 - 8) + 104))(a2, v4, v5);
  v6 = a1[5];
  sub_2202E00AC(0, &qword_281266880, sub_2201F93C8, sub_2201F9420);
  (*(*(v7 - 8) + 104))(a2 + v6, v4, v7);
  v8 = a1[6];
  v9 = *MEMORY[0x277CEACF0];
  sub_2202E00AC(0, &qword_281266858, sub_220236A30, sub_220236A84);
  (*(*(v10 - 8) + 104))(a2 + v8, v9, v10);
  v11 = a1[7];
  sub_2202E00AC(0, &qword_281266808, sub_22028BAC0, sub_22028BB18);
  (*(*(v12 - 8) + 104))(a2 + v11, v4, v12);
  v13 = a1[8];
  sub_2202E00AC(0, &qword_2812667F0, sub_220242CD4, sub_220242D28);
  (*(*(v14 - 8) + 104))(a2 + v13, v4, v14);
  v15 = a1[9];
  sub_2202E00AC(0, &qword_2812667A8, sub_2202DF944, sub_2202DF998);
  (*(*(v16 - 8) + 104))(a2 + v15, v4, v16);
  v17 = a1[10];
  sub_2202E00AC(0, &qword_281266888, sub_220242F2C, sub_220242F80);
  (*(*(v18 - 8) + 104))(a2 + v17, v9, v18);
  v19 = a1[11];
  sub_2202E00AC(0, &qword_281266800, sub_220243184, sub_2202431D8);
  (*(*(v20 - 8) + 104))(a2 + v19, v9, v20);
  v21 = a1[12];
  sub_2202E00AC(0, &qword_281266890, sub_220202B10, sub_220202B7C);
  (*(*(v22 - 8) + 104))(a2 + v21, v9, v22);
  v23 = a1[13];
  sub_2202E00AC(0, &qword_281266868, sub_220243860, sub_2202438B4);
  v25 = *(*(v24 - 8) + 104);

  return v25(a2 + v23, v9, v24);
}

void sub_2202E1F70()
{
  sub_220230578();
  if (v0 <= 0x3F)
  {
    sub_2202E00AC(319, &qword_281266880, sub_2201F93C8, sub_2201F9420);
    if (v1 <= 0x3F)
    {
      sub_2202E00AC(319, &qword_281266858, sub_220236A30, sub_220236A84);
      if (v2 <= 0x3F)
      {
        sub_2202E00AC(319, &qword_281266808, sub_22028BAC0, sub_22028BB18);
        if (v3 <= 0x3F)
        {
          sub_2202E00AC(319, &qword_2812667F0, sub_220242CD4, sub_220242D28);
          if (v4 <= 0x3F)
          {
            sub_2202E00AC(319, &qword_2812667A8, sub_2202DF944, sub_2202DF998);
            if (v5 <= 0x3F)
            {
              sub_2202E00AC(319, &qword_281266888, sub_220242F2C, sub_220242F80);
              if (v6 <= 0x3F)
              {
                sub_2202E00AC(319, &qword_281266800, sub_220243184, sub_2202431D8);
                if (v7 <= 0x3F)
                {
                  sub_2202E00AC(319, &qword_281266890, sub_220202B10, sub_220202B7C);
                  if (v8 <= 0x3F)
                  {
                    sub_2202E00AC(319, &qword_281266868, sub_220243860, sub_2202438B4);
                    if (v9 <= 0x3F)
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

void sub_2202E22D4()
{
  sub_22036F388();
  if (v0 <= 0x3F)
  {
    sub_22023A8F4(319, &qword_27CF26288);
    if (v1 <= 0x3F)
    {
      sub_22023A8F4(319, &qword_27CF28080);
      if (v2 <= 0x3F)
      {
        sub_22023A8F4(319, &qword_27CF26290);
        if (v3 <= 0x3F)
        {
          sub_22023A8F4(319, &qword_27CF26298);
          if (v4 <= 0x3F)
          {
            sub_22023A8F4(319, &qword_27CF262A0);
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

unint64_t sub_2202E2440()
{
  result = qword_27CF28088;
  if (!qword_27CF28088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF28088);
  }

  return result;
}

unint64_t sub_2202E2498()
{
  result = qword_27CF28090;
  if (!qword_27CF28090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF28090);
  }

  return result;
}

unint64_t sub_2202E24F0()
{
  result = qword_27CF28098;
  if (!qword_27CF28098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF28098);
  }

  return result;
}

uint64_t sub_2202E2544(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x746144746E657665 && a2 == 0xE900000000000061;
  if (v4 || (sub_220370048() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6144726573556461 && a2 == 0xEA00000000006174 || (sub_220370048() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x446C656E6E616863 && a2 == 0xEB00000000617461 || (sub_220370048() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6974616572436461 && a2 == 0xEE00617461446576 || (sub_220370048() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6D6563616C506461 && a2 == 0xEF61746144746E65 || (sub_220370048() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000012 && 0x8000000220391410 == a2 || (sub_220370048() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x6144657A69536461 && a2 == 0xEA00000000006174 || (sub_220370048() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x697469736F506461 && a2 == 0xEE00617461446E6FLL || (sub_220370048() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x6144646565466461 && a2 == 0xEA00000000006174 || (sub_220370048() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x4470756F72476461 && a2 == 0xEB00000000617461)
  {

    return 9;
  }

  else
  {
    v6 = sub_220370048();

    if (v6)
    {
      return 9;
    }

    else
    {
      return 10;
    }
  }
}

uint64_t sub_2202E2974()
{
  v0 = sub_22036F118();
  __swift_allocate_value_buffer(v0, qword_281263218);
  __swift_project_value_buffer(v0, qword_281263218);
  return sub_22036F108();
}

uint64_t EarningsBarExposureEvent.eventData.setter(uint64_t a1)
{
  sub_220230578();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t EarningsBarExposureEvent.timedData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for EarningsBarExposureEvent(0) + 20);
  sub_220230718();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t EarningsBarExposureEvent.feedData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for EarningsBarExposureEvent(0) + 24);
  sub_2202E316C(0, &qword_281266730, sub_2201FBCC4, sub_2201FBD1C);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t EarningsBarExposureEvent.feedData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for EarningsBarExposureEvent(0) + 24);
  sub_2202E316C(0, &qword_281266730, sub_2201FBCC4, sub_2201FBD1C);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t EarningsBarExposureEvent.viewData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for EarningsBarExposureEvent(0) + 28);
  sub_2202E316C(0, &qword_281266728, sub_2202020B8, sub_220202110);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t EarningsBarExposureEvent.viewData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for EarningsBarExposureEvent(0) + 28);
  sub_2202E316C(0, &qword_281266728, sub_2202020B8, sub_220202110);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t EarningsBarExposureEvent.symbolData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for EarningsBarExposureEvent(0) + 32);
  sub_2202E316C(0, &qword_281266870, sub_220230BFC, sub_220230C50);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t EarningsBarExposureEvent.symbolData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for EarningsBarExposureEvent(0) + 32);
  sub_2202E316C(0, &qword_281266870, sub_220230BFC, sub_220230C50);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t EarningsBarExposureEvent.earningsData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for EarningsBarExposureEvent(0) + 36);
  sub_2202E316C(0, &qword_281266828, sub_2202E31E8, sub_2202E323C);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

void sub_2202E316C(uint64_t a1, unint64_t *a2, void (*a3)(void), void (*a4)(void))
{
  if (!*a2)
  {
    a3();
    a4();
    v6 = sub_22036EE38();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

unint64_t sub_2202E31E8()
{
  result = qword_281265D78;
  if (!qword_281265D78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281265D78);
  }

  return result;
}

unint64_t sub_2202E323C()
{
  result = qword_281265D80;
  if (!qword_281265D80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281265D80);
  }

  return result;
}

uint64_t EarningsBarExposureEvent.earningsData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for EarningsBarExposureEvent(0) + 36);
  sub_2202E316C(0, &qword_281266828, sub_2202E31E8, sub_2202E323C);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t EarningsBarExposureEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277CEACF8];
  sub_220230578();
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  v4 = type metadata accessor for EarningsBarExposureEvent(0);
  v5 = v4[5];
  sub_220230718();
  (*(*(v6 - 8) + 104))(a1 + v5, v2, v6);
  v7 = v4[6];
  sub_2202E316C(0, &qword_281266730, sub_2201FBCC4, sub_2201FBD1C);
  (*(*(v8 - 8) + 104))(a1 + v7, v2, v8);
  v9 = v4[7];
  sub_2202E316C(0, &qword_281266728, sub_2202020B8, sub_220202110);
  (*(*(v10 - 8) + 104))(a1 + v9, v2, v10);
  v11 = v4[8];
  sub_2202E316C(0, &qword_281266870, sub_220230BFC, sub_220230C50);
  (*(*(v12 - 8) + 104))(a1 + v11, v2, v12);
  v13 = v4[9];
  sub_2202E316C(0, &qword_281266828, sub_2202E31E8, sub_2202E323C);
  v15 = *(*(v14 - 8) + 104);

  return v15(a1 + v13, v2, v14);
}

uint64_t sub_2202E3678@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  v6 = *(a1(0) + 20);
  v7 = a2(0);
  v8 = *(*(v7 - 8) + 16);

  return v8(a3, v3 + v6, v7);
}

uint64_t EarningsBarExposureEvent.Model.feedData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for EarningsBarExposureEvent.Model(0) + 24);
  v5 = *(v3 + 8);
  v4 = *(v3 + 16);
  *a1 = *v3;
  *(a1 + 8) = v5;
  *(a1 + 16) = v4;
}

uint64_t EarningsBarExposureEvent.Model.viewData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for EarningsBarExposureEvent.Model(0) + 28));
  v5 = *v3;
  v4 = v3[1];
  LOWORD(v3) = *(v3 + 8);
  *a1 = v5;
  *(a1 + 8) = v4;
  *(a1 + 16) = v3;
}

uint64_t EarningsBarExposureEvent.Model.symbolData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for EarningsBarExposureEvent.Model(0) + 32);
  v4 = *(v3 + 8);
  v5 = *(v3 + 16);
  v6 = *(v3 + 24);
  v7 = *(v3 + 32);
  *a1 = *v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 24) = v6;
  *(a1 + 32) = v7;
}

uint64_t EarningsBarExposureEvent.Model.earningsData.getter@<X0>(_DWORD *a1@<X8>)
{
  result = type metadata accessor for EarningsBarExposureEvent.Model(0);
  *a1 = *(v1 + *(result + 36));
  return result;
}

uint64_t EarningsBarExposureEvent.Model.init(eventData:timedData:feedData:viewData:symbolData:earningsData:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t *a4@<X3>, uint64_t *a5@<X4>, int *a6@<X5>, uint64_t a7@<X8>)
{
  v10 = *a3;
  v11 = *(a3 + 1);
  v12 = *(a3 + 2);
  v13 = *a4;
  v14 = a4[1];
  v15 = *(a4 + 8);
  v27 = a5[1];
  v28 = *a5;
  v26 = *(a5 + 16);
  v24 = a5[4];
  v25 = a5[3];
  v29 = *a6;
  v16 = sub_22036F388();
  (*(*(v16 - 8) + 32))(a7, a1, v16);
  v17 = type metadata accessor for EarningsBarExposureEvent.Model(0);
  v18 = v17[5];
  v19 = sub_22036F3C8();
  result = (*(*(v19 - 8) + 32))(a7 + v18, a2, v19);
  v21 = a7 + v17[6];
  *v21 = v10;
  *(v21 + 8) = v11;
  *(v21 + 16) = v12;
  v22 = a7 + v17[7];
  *v22 = v13;
  *(v22 + 8) = v14;
  *(v22 + 16) = v15;
  v23 = a7 + v17[8];
  *v23 = v28;
  *(v23 + 8) = v27;
  *(v23 + 16) = v26;
  *(v23 + 24) = v25;
  *(v23 + 32) = v24;
  *(a7 + v17[9]) = v29;
  return result;
}

uint64_t sub_2202E39AC()
{
  v1 = *v0;
  v2 = 0x746144746E657665;
  v3 = 0x6174614477656976;
  v4 = 0x61446C6F626D7973;
  if (v1 != 4)
  {
    v4 = 0x73676E696E726165;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x74614464656D6974;
  if (v1 != 1)
  {
    v5 = 0x6174614464656566;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_2202E3A74@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2202E4E40(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2202E3A9C(uint64_t a1)
{
  v2 = sub_2202E3EE4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2202E3AD8(uint64_t a1)
{
  v2 = sub_2202E3EE4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t EarningsBarExposureEvent.Model.encode(to:)(void *a1)
{
  v3 = v1;
  sub_2202E45C8(0, &qword_27CF280A0, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v10 = &v26 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2202E3EE4();
  sub_220370168();
  LOBYTE(v26) = 0;
  sub_22036F388();
  sub_2202307E4(&qword_2812666A8, MEMORY[0x277CEAEB0]);
  sub_22036FFF8();
  if (!v2)
  {
    v12 = type metadata accessor for EarningsBarExposureEvent.Model(0);
    v13 = v12[5];
    LOBYTE(v26) = 1;
    sub_22036F3C8();
    sub_2202307E4(&qword_281266690, MEMORY[0x277CEAED0]);
    sub_22036FFF8();
    v14 = v3 + v12[6];
    v15 = *(v14 + 8);
    v16 = *(v14 + 16);
    LOBYTE(v26) = *v14;
    v27 = v15;
    v28 = v16;
    v31 = 2;
    sub_2201FBD1C();

    sub_22036FFF8();

    v17 = (v3 + v12[7]);
    v18 = *v17;
    v19 = v17[1];
    LOWORD(v17) = *(v17 + 8);
    v26 = v18;
    v27 = v19;
    LOWORD(v28) = v17;
    v31 = 3;
    sub_220202110();

    sub_22036FFF8();

    v20 = (v3 + v12[8]);
    v21 = v20[1];
    v22 = *(v20 + 16);
    v23 = v20[3];
    v24 = v20[4];
    v26 = *v20;
    v27 = v21;
    LOBYTE(v28) = v22;
    v29 = v23;
    v30 = v24;
    v31 = 4;
    sub_220230C50();

    sub_22036FFF8();

    LODWORD(v26) = *(v3 + v12[9]);
    v31 = 5;
    sub_2202E323C();
    sub_22036FFF8();
  }

  return (*(v7 + 8))(v10, v6);
}

unint64_t sub_2202E3EE4()
{
  result = qword_27CF280A8;
  if (!qword_27CF280A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF280A8);
  }

  return result;
}

uint64_t EarningsBarExposureEvent.Model.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v35 = a2;
  v39 = sub_22036F3C8();
  v36 = *(v39 - 8);
  v3 = *(v36 + 64);
  MEMORY[0x28223BE20](v39);
  v5 = &v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_22036F388();
  v37 = *(v6 - 8);
  v7 = *(v37 + 64);
  MEMORY[0x28223BE20](v6);
  v40 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2202E45C8(0, &qword_27CF280B0, MEMORY[0x277D844C8]);
  v42 = v9;
  v38 = *(v9 - 8);
  v10 = *(v38 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v35 - v11;
  v13 = type metadata accessor for EarningsBarExposureEvent.Model(0);
  v14 = *(*(v13 - 1) + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v35 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2202E3EE4();
  v41 = v12;
  v18 = v43;
  sub_220370148();
  if (v18)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v19 = v5;
  v20 = v38;
  v21 = v39;
  LOBYTE(v44) = 0;
  sub_2202307E4(&qword_2812666A0, MEMORY[0x277CEAEB0]);
  sub_22036FF28();
  v22 = *(v37 + 32);
  v43 = v6;
  v22(v16, v40, v6);
  LOBYTE(v44) = 1;
  sub_2202307E4(&qword_281266688, MEMORY[0x277CEAED0]);
  sub_22036FF28();
  (*(v36 + 32))(&v16[v13[5]], v19, v21);
  v49 = 2;
  sub_2201FBCC4();
  v40 = 0;
  sub_22036FF28();
  v23 = v45;
  v24 = v46;
  v25 = &v16[v13[6]];
  *v25 = v44;
  *(v25 + 1) = v23;
  *(v25 + 2) = v24;
  v49 = 3;
  sub_2202020B8();
  sub_22036FF28();
  v26 = v45;
  v27 = v46;
  v28 = &v16[v13[7]];
  *v28 = v44;
  *(v28 + 1) = v26;
  *(v28 + 8) = v27;
  v49 = 4;
  sub_220230BFC();
  sub_22036FF28();
  v29 = v45;
  v30 = v46;
  v31 = v47;
  v32 = v48;
  v33 = &v16[v13[8]];
  *v33 = v44;
  *(v33 + 1) = v29;
  v33[16] = v30;
  *(v33 + 3) = v31;
  *(v33 + 4) = v32;
  v49 = 5;
  sub_2202E31E8();
  sub_22036FF28();
  (*(v20 + 8))(v41, v42);
  *&v16[v13[9]] = v44;
  sub_2202E462C(v16, v35);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_2202E4690(v16);
}

void sub_2202E45C8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_2202E3EE4();
    v7 = a3(a1, &type metadata for EarningsBarExposureEvent.Model.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_2202E462C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EarningsBarExposureEvent.Model(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2202E4690(uint64_t a1)
{
  v2 = type metadata accessor for EarningsBarExposureEvent.Model(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2202E47C4@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *MEMORY[0x277CEACF8];
  sub_220230578();
  (*(*(v5 - 8) + 104))(a2, v4, v5);
  v6 = a1[5];
  sub_220230718();
  (*(*(v7 - 8) + 104))(a2 + v6, v4, v7);
  v8 = a1[6];
  sub_2202E316C(0, &qword_281266730, sub_2201FBCC4, sub_2201FBD1C);
  (*(*(v9 - 8) + 104))(a2 + v8, v4, v9);
  v10 = a1[7];
  sub_2202E316C(0, &qword_281266728, sub_2202020B8, sub_220202110);
  (*(*(v11 - 8) + 104))(a2 + v10, v4, v11);
  v12 = a1[8];
  sub_2202E316C(0, &qword_281266870, sub_220230BFC, sub_220230C50);
  (*(*(v13 - 8) + 104))(a2 + v12, v4, v13);
  v14 = a1[9];
  sub_2202E316C(0, &qword_281266828, sub_2202E31E8, sub_2202E323C);
  v16 = *(*(v15 - 8) + 104);

  return v16(a2 + v14, v4, v15);
}

void sub_2202E4A8C()
{
  sub_220230578();
  if (v0 <= 0x3F)
  {
    sub_220230718();
    if (v1 <= 0x3F)
    {
      sub_2202E316C(319, &qword_281266730, sub_2201FBCC4, sub_2201FBD1C);
      if (v2 <= 0x3F)
      {
        sub_2202E316C(319, &qword_281266728, sub_2202020B8, sub_220202110);
        if (v3 <= 0x3F)
        {
          sub_2202E316C(319, &qword_281266870, sub_220230BFC, sub_220230C50);
          if (v4 <= 0x3F)
          {
            sub_2202E316C(319, &qword_281266828, sub_2202E31E8, sub_2202E323C);
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

uint64_t sub_2202E4C78()
{
  result = sub_22036F388();
  if (v1 <= 0x3F)
  {
    result = sub_22036F3C8();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_2202E4D3C()
{
  result = qword_27CF280C8;
  if (!qword_27CF280C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF280C8);
  }

  return result;
}

unint64_t sub_2202E4D94()
{
  result = qword_27CF280D0;
  if (!qword_27CF280D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF280D0);
  }

  return result;
}

unint64_t sub_2202E4DEC()
{
  result = qword_27CF280D8;
  if (!qword_27CF280D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF280D8);
  }

  return result;
}

uint64_t sub_2202E4E40(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x746144746E657665 && a2 == 0xE900000000000061;
  if (v4 || (sub_220370048() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x74614464656D6974 && a2 == 0xE900000000000061 || (sub_220370048() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6174614464656566 && a2 == 0xE800000000000000 || (sub_220370048() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6174614477656976 && a2 == 0xE800000000000000 || (sub_220370048() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x61446C6F626D7973 && a2 == 0xEA00000000006174 || (sub_220370048() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x73676E696E726165 && a2 == 0xEC00000061746144)
  {

    return 5;
  }

  else
  {
    v6 = sub_220370048();

    if (v6)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

uint64_t sub_2202E5058()
{
  v1 = v0;
  v2 = sub_22036E868();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v29[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = sub_22036F758();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v29[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_22036F668();
  v12 = sub_22036F748();
  v14 = v13;
  (*(v8 + 8))(v11, v7);
  if (v14)
  {
    v15 = MEMORY[0x277D837D0];
  }

  else
  {
    v12 = 0;
    v15 = 0;
    v35[2] = 0;
  }

  v35[0] = v12;
  v35[1] = v14;
  v35[3] = v15;
  sub_2202E540C(v35, v33);
  v16 = MEMORY[0x277D84F70];
  if (v34)
  {
    if (swift_dynamicCast())
    {
      if (v31 == 0xD000000000000017 && 0x80000002203902C0 == v32)
      {

LABEL_12:
        v17 = 1;
        goto LABEL_13;
      }

      v18 = sub_220370048();

      if (v18)
      {
        goto LABEL_12;
      }
    }
  }

  else
  {
    sub_2201FB320(v33, &qword_281261AD8, MEMORY[0x277D84F70] + 8, MEMORY[0x277D83D88], sub_2201F7120);
  }

  v17 = 2;
LABEL_13:
  v30 = v17;
  sub_2201FB320(v35, &qword_281261AD8, v16 + 8, MEMORY[0x277D83D88], sub_2201F7120);
  v19 = &v1[OBJC_IVAR____TtC15StocksAnalytics15SessionObserver_appConfigurationManager];
  v20 = *&v1[OBJC_IVAR____TtC15StocksAnalytics15SessionObserver_appConfigurationManager + 32];
  __swift_project_boxed_opaque_existential_1(&v1[OBJC_IVAR____TtC15StocksAnalytics15SessionObserver_appConfigurationManager], *&v1[OBJC_IVAR____TtC15StocksAnalytics15SessionObserver_appConfigurationManager + 24]);
  sub_22036E958();
  v21 = sub_22036E798();
  v22 = *(v3 + 8);
  v22(v6, v2);
  v23 = *(v19 + 4);
  __swift_project_boxed_opaque_existential_1(v19, *(v19 + 3));
  sub_22036E958();
  v24 = sub_22036E7A8();
  v22(v6, v2);
  v25 = *&v1[OBJC_IVAR____TtC15StocksAnalytics15SessionObserver_sessionManager];
  v26 = swift_allocObject();
  *(v26 + 16) = v1;
  *(v26 + 24) = v30;
  *(v26 + 32) = v21;
  *(v26 + 40) = v24;
  *(v26 + 48) = 5;
  v27 = v1;
  sub_22036EE98();
}

uint64_t sub_2202E540C(uint64_t a1, uint64_t a2)
{
  sub_2201F7120(0, &qword_281261AD8, MEMORY[0x277D84F70] + 8, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2202E5498()
{
  v0 = sub_22036ED68();
  __swift_allocate_value_buffer(v0, qword_27CF280E0);
  v1 = __swift_project_value_buffer(v0, qword_27CF280E0);
  *v1 = 0x7364612E6D6F63;
  *(v1 + 8) = 0xE700000000000000;
  *(v1 + 16) = 3;
  *(v1 + 24) = 0;
  v2 = *MEMORY[0x277CEACB0];
  v3 = *(*(v0 - 8) + 104);

  return v3();
}

uint64_t sub_2202E5584()
{
  v0 = sub_22036F048();
  __swift_allocate_value_buffer(v0, qword_27CF280F8);
  v1 = __swift_project_value_buffer(v0, qword_27CF280F8);
  v2 = *MEMORY[0x277CEADA8];
  v3 = *(*(v0 - 8) + 104);

  return v3(v1, v2, v0);
}

uint64_t sub_2202E5644()
{
  v0 = sub_22036F118();
  __swift_allocate_value_buffer(v0, qword_27CF28110);
  __swift_project_value_buffer(v0, qword_27CF28110);
  return sub_22036F108();
}

uint64_t NativeAdImpressionEvent.eventData.setter(uint64_t a1)
{
  sub_220230578();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t NativeAdImpressionEvent.timedData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for NativeAdImpressionEvent(0) + 20);
  sub_220230718();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t NativeAdImpressionEvent.adUserData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for NativeAdImpressionEvent(0) + 24);
  sub_2202E619C(0, &qword_281266880, sub_2201F93C8, sub_2201F9420);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t NativeAdImpressionEvent.adUserData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for NativeAdImpressionEvent(0) + 24);
  sub_2202E619C(0, &qword_281266880, sub_2201F93C8, sub_2201F9420);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t NativeAdImpressionEvent.channelData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for NativeAdImpressionEvent(0) + 28);
  sub_2202E619C(0, &qword_281266858, sub_220236A30, sub_220236A84);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t NativeAdImpressionEvent.channelData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for NativeAdImpressionEvent(0) + 28);
  sub_2202E619C(0, &qword_281266858, sub_220236A30, sub_220236A84);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t NativeAdImpressionEvent.adPlacementData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for NativeAdImpressionEvent(0) + 32);
  sub_2202E619C(0, &qword_2812667F0, sub_220242CD4, sub_220242D28);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t NativeAdImpressionEvent.adPlacementData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for NativeAdImpressionEvent(0) + 32);
  sub_2202E619C(0, &qword_2812667F0, sub_220242CD4, sub_220242D28);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t NativeAdImpressionEvent.adPositionData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for NativeAdImpressionEvent(0) + 36);
  sub_2202E619C(0, &qword_281266800, sub_220243184, sub_2202431D8);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t NativeAdImpressionEvent.adPositionData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for NativeAdImpressionEvent(0) + 36);
  sub_2202E619C(0, &qword_281266800, sub_220243184, sub_2202431D8);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t NativeAdImpressionEvent.adFeedData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for NativeAdImpressionEvent(0) + 40);
  sub_2202E619C(0, &qword_281266890, sub_220202B10, sub_220202B7C);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t NativeAdImpressionEvent.adFeedData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for NativeAdImpressionEvent(0) + 40);
  sub_2202E619C(0, &qword_281266890, sub_220202B10, sub_220202B7C);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t NativeAdImpressionEvent.adGroupData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for NativeAdImpressionEvent(0) + 44);
  sub_2202E619C(0, &qword_281266868, sub_220243860, sub_2202438B4);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

void sub_2202E619C(uint64_t a1, unint64_t *a2, void (*a3)(void), void (*a4)(void))
{
  if (!*a2)
  {
    a3();
    a4();
    v6 = sub_22036EE38();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t NativeAdImpressionEvent.adGroupData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for NativeAdImpressionEvent(0) + 44);
  sub_2202E619C(0, &qword_281266868, sub_220243860, sub_2202438B4);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t NativeAdImpressionEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277CEACF8];
  sub_220230578();
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  v4 = type metadata accessor for NativeAdImpressionEvent(0);
  v5 = v4[5];
  sub_220230718();
  (*(*(v6 - 8) + 104))(a1 + v5, v2, v6);
  v7 = v4[6];
  sub_2202E619C(0, &qword_281266880, sub_2201F93C8, sub_2201F9420);
  (*(*(v8 - 8) + 104))(a1 + v7, v2, v8);
  v9 = v4[7];
  v10 = *MEMORY[0x277CEACF0];
  sub_2202E619C(0, &qword_281266858, sub_220236A30, sub_220236A84);
  (*(*(v11 - 8) + 104))(a1 + v9, v10, v11);
  v12 = v4[8];
  sub_2202E619C(0, &qword_2812667F0, sub_220242CD4, sub_220242D28);
  (*(*(v13 - 8) + 104))(a1 + v12, v2, v13);
  v14 = v4[9];
  sub_2202E619C(0, &qword_281266800, sub_220243184, sub_2202431D8);
  (*(*(v15 - 8) + 104))(a1 + v14, v10, v15);
  v16 = v4[10];
  sub_2202E619C(0, &qword_281266890, sub_220202B10, sub_220202B7C);
  (*(*(v17 - 8) + 104))(a1 + v16, v10, v17);
  v18 = v4[11];
  sub_2202E619C(0, &qword_281266868, sub_220243860, sub_2202438B4);
  v20 = *(*(v19 - 8) + 104);

  return v20(a1 + v18, v10, v19);
}

uint64_t sub_2202E6704@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  v6 = *(a1(0) + 20);
  v7 = a2(0);
  v8 = *(*(v7 - 8) + 16);

  return v8(a3, v3 + v6, v7);
}

uint64_t NativeAdImpressionEvent.Model.adUserData.getter@<X0>(void *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for NativeAdImpressionEvent.Model(0) + 24));
  v4 = v3[1];
  *a1 = *v3;
  a1[1] = v4;
}

uint64_t NativeAdImpressionEvent.Model.channelData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for NativeAdImpressionEvent.Model(0) + 28);
  v4 = *v3;
  v5 = *(v3 + 8);
  v6 = *(v3 + 16);
  v7 = *(v3 + 24);
  *a1 = *v3;
  *(a1 + 8) = v5;
  *(a1 + 16) = v6;
  *(a1 + 24) = v7;
  *(a1 + 32) = *(v3 + 32);

  return sub_2202440A8(v4, v5);
}

uint64_t NativeAdImpressionEvent.Model.adPlacementData.getter@<X0>(void *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for NativeAdImpressionEvent.Model(0) + 32));
  v4 = v3[1];
  *a1 = *v3;
  a1[1] = v4;
}

uint64_t NativeAdImpressionEvent.Model.adPositionData.getter@<X0>(uint64_t a1@<X8>)
{
  result = type metadata accessor for NativeAdImpressionEvent.Model(0);
  v4 = (v1 + *(result + 36));
  v5 = *v4;
  LOBYTE(v4) = *(v4 + 4);
  *a1 = v5;
  *(a1 + 4) = v4;
  return result;
}

uint64_t NativeAdImpressionEvent.Model.adFeedData.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for NativeAdImpressionEvent.Model(0);
  *a1 = *(v1 + *(result + 40));
  return result;
}

uint64_t NativeAdImpressionEvent.Model.adGroupData.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for NativeAdImpressionEvent.Model(0);
  *a1 = *(v1 + *(result + 44));
  return result;
}

__n128 NativeAdImpressionEvent.Model.init(eventData:timedData:adUserData:channelData:adPlacementData:adPositionData:adFeedData:adGroupData:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X4>, int *a6@<X5>, char *a7@<X6>, char *a8@<X7>, uint64_t a9@<X8>)
{
  v13 = *a3;
  v14 = a3[1];
  v15 = *(a4 + 32);
  v16 = *a5;
  v17 = a5[1];
  v18 = *(a6 + 4);
  v30 = *a6;
  v31 = *a7;
  v32 = *a8;
  v19 = sub_22036F388();
  v28 = *(a4 + 16);
  v29 = *a4;
  (*(*(v19 - 8) + 32))(a9, a1, v19);
  v20 = type metadata accessor for NativeAdImpressionEvent.Model(0);
  v21 = v20[5];
  v22 = sub_22036F3C8();
  (*(*(v22 - 8) + 32))(a9 + v21, a2, v22);
  v23 = (a9 + v20[6]);
  *v23 = v13;
  v23[1] = v14;
  v24 = a9 + v20[7];
  result = v29;
  *v24 = v29;
  *(v24 + 16) = v28;
  *(v24 + 32) = v15;
  v26 = (a9 + v20[8]);
  *v26 = v16;
  v26[1] = v17;
  v27 = a9 + v20[9];
  *v27 = v30;
  *(v27 + 4) = v18;
  *(a9 + v20[10]) = v31;
  *(a9 + v20[11]) = v32;
  return result;
}

uint64_t sub_2202E6A9C()
{
  v1 = *v0;
  v2 = 0x746144746E657665;
  v3 = 0x6144646565466461;
  if (v1 != 6)
  {
    v3 = 0x4470756F72476461;
  }

  v4 = 0x6D6563616C506461;
  if (v1 != 4)
  {
    v4 = 0x697469736F506461;
  }

  if (*v0 <= 5u)
  {
    v3 = v4;
  }

  v5 = 0x6144726573556461;
  if (v1 != 2)
  {
    v5 = 0x446C656E6E616863;
  }

  if (*v0)
  {
    v2 = 0x74614464656D6974;
  }

  if (*v0 > 1u)
  {
    v2 = v5;
  }

  if (*v0 <= 3u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_2202E6BC8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2202E8290(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2202E6BF0(uint64_t a1)
{
  v2 = sub_2202E7098();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2202E6C2C(uint64_t a1)
{
  v2 = sub_2202E7098();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t NativeAdImpressionEvent.Model.encode(to:)(void *a1)
{
  v3 = v1;
  sub_2202E77F0(0, &qword_27CF28128, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v10 = &v26 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2202E7098();
  sub_220370168();
  LOBYTE(v27) = 0;
  sub_22036F388();
  sub_2202307E4(&qword_2812666A8, MEMORY[0x277CEAEB0]);
  sub_22036FFF8();
  if (!v2)
  {
    v12 = type metadata accessor for NativeAdImpressionEvent.Model(0);
    v13 = v12[5];
    LOBYTE(v27) = 1;
    sub_22036F3C8();
    sub_2202307E4(&qword_281266690, MEMORY[0x277CEAED0]);
    sub_22036FFF8();
    v14 = (v3 + v12[6]);
    v15 = v14[1];
    v27 = *v14;
    v28 = v15;
    v32 = 2;
    sub_2201F9420();

    sub_22036FFF8();

    v16 = v3 + v12[7];
    v17 = *(v16 + 8);
    v18 = *(v16 + 16);
    v19 = *(v16 + 24);
    v20 = *(v16 + 32);
    v27 = *v16;
    v28 = v17;
    v29 = v18;
    v30 = v19;
    v31 = v20;
    v32 = 3;
    sub_2202440A8(v27, v17);
    sub_220236A84();
    sub_22036FF88();
    sub_220244C08(v27, v28);
    v22 = (v3 + v12[8]);
    v23 = v22[1];
    v27 = *v22;
    v28 = v23;
    v32 = 4;
    sub_220242D28();

    sub_22036FFF8();

    v24 = (v3 + v12[9]);
    v25 = *v24;
    LOBYTE(v24) = *(v24 + 4);
    LODWORD(v27) = v25;
    BYTE4(v27) = v24;
    v32 = 5;
    sub_2202431D8();
    sub_22036FF88();
    LOBYTE(v27) = *(v3 + v12[10]);
    v32 = 6;
    sub_220202B7C();
    sub_22036FF88();
    LOBYTE(v27) = *(v3 + v12[11]);
    v32 = 7;
    sub_2202438B4();
    sub_22036FF88();
  }

  return (*(v7 + 8))(v10, v6);
}

unint64_t sub_2202E7098()
{
  result = qword_27CF28130;
  if (!qword_27CF28130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF28130);
  }

  return result;
}

uint64_t NativeAdImpressionEvent.Model.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v36 = a2;
  v3 = sub_22036F3C8();
  v39 = *(v3 - 8);
  v40 = v3;
  v4 = *(v39 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_22036F388();
  v37 = *(v7 - 8);
  v8 = *(v37 + 64);
  MEMORY[0x28223BE20](v7);
  v41 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2202E77F0(0, &qword_27CF28138, MEMORY[0x277D844C8]);
  v43 = v10;
  v38 = *(v10 - 8);
  v11 = *(v38 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v35 - v12;
  v14 = type metadata accessor for NativeAdImpressionEvent.Model(0);
  v15 = *(*(v14 - 1) + 64);
  MEMORY[0x28223BE20](v14);
  v17 = &v35 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2202E7098();
  v42 = v13;
  v19 = v44;
  sub_220370148();
  if (v19)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v20 = v6;
  v21 = v17;
  v22 = v39;
  v23 = v40;
  LOBYTE(v45) = 0;
  sub_2202307E4(&qword_2812666A0, MEMORY[0x277CEAEB0]);
  sub_22036FF28();
  (*(v37 + 32))(v21, v41, v7);
  LOBYTE(v45) = 1;
  sub_2202307E4(&qword_281266688, MEMORY[0x277CEAED0]);
  sub_22036FF28();
  v35 = v7;
  (*(v22 + 32))(v21 + v14[5], v20, v23);
  v48 = 2;
  sub_2201F93C8();
  v44 = 0;
  sub_22036FF28();
  v24 = v38;
  v25 = *(&v45 + 1);
  v26 = (v21 + v14[6]);
  *v26 = v45;
  v26[1] = v25;
  v48 = 3;
  sub_220236A30();
  sub_22036FEB8();
  v27 = v47;
  v28 = v21 + v14[7];
  v29 = v46;
  *v28 = v45;
  *(v28 + 16) = v29;
  *(v28 + 32) = v27;
  v48 = 4;
  sub_220242CD4();
  sub_22036FF28();
  v30 = *(&v45 + 1);
  v31 = (v21 + v14[8]);
  *v31 = v45;
  v31[1] = v30;
  v48 = 5;
  sub_220243184();
  sub_22036FEB8();
  v32 = BYTE4(v45);
  v33 = v21 + v14[9];
  *v33 = v45;
  *(v33 + 4) = v32;
  v48 = 6;
  sub_220202B10();
  sub_22036FEB8();
  *(v21 + v14[10]) = v45;
  v48 = 7;
  sub_220243860();
  sub_22036FEB8();
  (*(v24 + 8))(v42, v43);
  *(v21 + v14[11]) = v45;
  sub_2202E7854(v21, v36);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_2202E78B8(v21);
}

void sub_2202E77F0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_2202E7098();
    v7 = a3(a1, &type metadata for NativeAdImpressionEvent.Model.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_2202E7854(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NativeAdImpressionEvent.Model(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2202E78B8(uint64_t a1)
{
  v2 = type metadata accessor for NativeAdImpressionEvent.Model(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2202E79EC@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *MEMORY[0x277CEACF8];
  sub_220230578();
  (*(*(v5 - 8) + 104))(a2, v4, v5);
  v6 = a1[5];
  sub_220230718();
  (*(*(v7 - 8) + 104))(a2 + v6, v4, v7);
  v8 = a1[6];
  sub_2202E619C(0, &qword_281266880, sub_2201F93C8, sub_2201F9420);
  (*(*(v9 - 8) + 104))(a2 + v8, v4, v9);
  v10 = a1[7];
  v11 = *MEMORY[0x277CEACF0];
  sub_2202E619C(0, &qword_281266858, sub_220236A30, sub_220236A84);
  (*(*(v12 - 8) + 104))(a2 + v10, v11, v12);
  v13 = a1[8];
  sub_2202E619C(0, &qword_2812667F0, sub_220242CD4, sub_220242D28);
  (*(*(v14 - 8) + 104))(a2 + v13, v4, v14);
  v15 = a1[9];
  sub_2202E619C(0, &qword_281266800, sub_220243184, sub_2202431D8);
  (*(*(v16 - 8) + 104))(a2 + v15, v11, v16);
  v17 = a1[10];
  sub_2202E619C(0, &qword_281266890, sub_220202B10, sub_220202B7C);
  (*(*(v18 - 8) + 104))(a2 + v17, v11, v18);
  v19 = a1[11];
  sub_2202E619C(0, &qword_281266868, sub_220243860, sub_2202438B4);
  v21 = *(*(v20 - 8) + 104);

  return v21(a2 + v19, v11, v20);
}

void sub_2202E7DB8()
{
  sub_220230578();
  if (v0 <= 0x3F)
  {
    sub_220230718();
    if (v1 <= 0x3F)
    {
      sub_2202E619C(319, &qword_281266880, sub_2201F93C8, sub_2201F9420);
      if (v2 <= 0x3F)
      {
        sub_2202E619C(319, &qword_281266858, sub_220236A30, sub_220236A84);
        if (v3 <= 0x3F)
        {
          sub_2202E619C(319, &qword_2812667F0, sub_220242CD4, sub_220242D28);
          if (v4 <= 0x3F)
          {
            sub_2202E619C(319, &qword_281266800, sub_220243184, sub_2202431D8);
            if (v5 <= 0x3F)
            {
              sub_2202E619C(319, &qword_281266890, sub_220202B10, sub_220202B7C);
              if (v6 <= 0x3F)
              {
                sub_2202E619C(319, &qword_281266868, sub_220243860, sub_2202438B4);
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

void sub_2202E8044()
{
  sub_22036F388();
  if (v0 <= 0x3F)
  {
    sub_22036F3C8();
    if (v1 <= 0x3F)
    {
      sub_22023A8F4(319, &qword_27CF26288);
      if (v2 <= 0x3F)
      {
        sub_22023A8F4(319, &qword_27CF26290);
        if (v3 <= 0x3F)
        {
          sub_22023A8F4(319, &qword_27CF26298);
          if (v4 <= 0x3F)
          {
            sub_22023A8F4(319, &qword_27CF262A0);
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

unint64_t sub_2202E818C()
{
  result = qword_27CF28160;
  if (!qword_27CF28160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF28160);
  }

  return result;
}

unint64_t sub_2202E81E4()
{
  result = qword_27CF28168;
  if (!qword_27CF28168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF28168);
  }

  return result;
}

unint64_t sub_2202E823C()
{
  result = qword_27CF28170;
  if (!qword_27CF28170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF28170);
  }

  return result;
}

uint64_t sub_2202E8290(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x746144746E657665 && a2 == 0xE900000000000061;
  if (v4 || (sub_220370048() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x74614464656D6974 && a2 == 0xE900000000000061 || (sub_220370048() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6144726573556461 && a2 == 0xEA00000000006174 || (sub_220370048() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x446C656E6E616863 && a2 == 0xEB00000000617461 || (sub_220370048() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6D6563616C506461 && a2 == 0xEF61746144746E65 || (sub_220370048() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x697469736F506461 && a2 == 0xEE00617461446E6FLL || (sub_220370048() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x6144646565466461 && a2 == 0xEA00000000006174 || (sub_220370048() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x4470756F72476461 && a2 == 0xEB00000000617461)
  {

    return 7;
  }

  else
  {
    v6 = sub_220370048();

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

uint64_t sub_2202E8550()
{
  v0 = sub_22036F138();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  sub_22036EBE8();
  sub_22036EF68();
  sub_22036EF58();
  sub_22036EDE8();
  sub_22036EDD8();
  sub_22036F128();
  return sub_22036EBD8();
}

uint64_t sub_2202E8680@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6570795464656566 && a2 == 0xE800000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_220370048();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_2202E8708(uint64_t a1)
{
  v2 = sub_2202E88DC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2202E8744(uint64_t a1)
{
  v2 = sub_2202E88DC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t AdFeedData.encode(to:)(void *a1)
{
  sub_2202E8AC8(0, &qword_281261D40, MEMORY[0x277D84538]);
  v4 = v3;
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3);
  v8 = &v12 - v7;
  v9 = *v1;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2202E88DC();
  sub_220370168();
  v13 = v9;
  sub_22024E278();
  sub_22036FFF8();
  return (*(v5 + 8))(v8, v4);
}

unint64_t sub_2202E88DC()
{
  result = qword_2812661F0[0];
  if (!qword_2812661F0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_2812661F0);
  }

  return result;
}

uint64_t AdFeedData.init(from:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  sub_2202E8AC8(0, &qword_27CF28178, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v10 = &v13 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2202E88DC();
  sub_220370148();
  if (!v2)
  {
    sub_22024E500();
    sub_22036FF28();
    (*(v7 + 8))(v10, v6);
    *a2 = v14;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_2202E8AC8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_2202E88DC();
    v7 = a3(a1, &type metadata for AdFeedData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_2202E8B70()
{
  result = qword_27CF28180;
  if (!qword_27CF28180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF28180);
  }

  return result;
}

unint64_t sub_2202E8BC8()
{
  result = qword_2812661E0;
  if (!qword_2812661E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812661E0);
  }

  return result;
}

unint64_t sub_2202E8C20()
{
  result = qword_2812661E8;
  if (!qword_2812661E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812661E8);
  }

  return result;
}

StocksAnalytics::ContentEnvironment_optional __swiftcall ContentEnvironment.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_22036FE78();

  v5 = 4;
  if (v3 < 4)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t ContentEnvironment.rawValue.getter()
{
  v1 = 0x6E776F6E6B6E75;
  v2 = 0x676E6967617473;
  if (*v0 != 2)
  {
    v2 = 1685025392;
  }

  if (*v0)
  {
    v1 = 24945;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_2202E8D48()
{
  result = qword_27CF28188;
  if (!qword_27CF28188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF28188);
  }

  return result;
}

uint64_t sub_2202E8D9C()
{
  v1 = *v0;
  sub_220370108();
  sub_22036FB08();

  return sub_220370128();
}

uint64_t sub_2202E8E4C()
{
  *v0;
  *v0;
  *v0;
  sub_22036FB08();
}

uint64_t sub_2202E8EE8()
{
  v1 = *v0;
  sub_220370108();
  sub_22036FB08();

  return sub_220370128();
}

StocksAnalytics::ScrollEndData __swiftcall ScrollEndData.init(scrollYPosition:scrollVelocity:)(Swift::Float scrollYPosition, Swift::Float scrollVelocity)
{
  *v2 = scrollYPosition;
  v2[1] = scrollVelocity;
  result.scrollVelocity = scrollVelocity;
  result.scrollYPosition = scrollYPosition;
  return result;
}