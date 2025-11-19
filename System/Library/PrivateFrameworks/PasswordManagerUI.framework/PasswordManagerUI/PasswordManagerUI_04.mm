uint64_t sub_21C75AA38()
{
  v1 = v0;
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = type metadata accessor for PMAccountsContextMenu();
  v5 = *(*(v4 - 1) + 80);
  v184 = *(*(v4 - 1) + 64);
  v6 = *(v1 + 32);

  v185 = (v5 + 40) & ~v5;
  v7 = v1 + v185;
  v8 = *(v1 + v185);

  v9 = *(v1 + v185 + 8);

  if (*(v1 + v185 + 16))
  {

    v10 = *(v7 + 24);
  }

  v11 = v7 + v4[9];
  v12 = type metadata accessor for PMAccount(0);
  v13 = *(*(v12 - 1) + 48);
  v186 = v4;
  v183 = v12;
  if (!v13(v11, 1, v12))
  {
    v14 = *(v11 + 8);

    v15 = (v11 + v12[5]);
    type metadata accessor for PMAccount.UniqueID(0);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v17 = *(v15 + 1);

    v18 = *(v15 + 3);

    v181 = v13;
    if (EnumCaseMultiPayload == 1)
    {
      v19 = *(v15 + 5);

      v20 = type metadata accessor for PMAccount.SIWAUniqueID(0);
      v21 = v20[7];
      v22 = sub_21CB85B74();
      (*(*(v22 - 8) + 8))(&v15[v21], v22);
      v23 = *&v15[v20[8] + 8];

      v24 = v20[9];
      v25 = sub_21CB85C44();
      v26 = *(v25 - 8);
      if ((*(v26 + 48))(&v15[v24], 1, v25))
      {
LABEL_7:
        v27 = v11 + v12[6];
        type metadata accessor for PMAccount.Storage(0);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          v28 = *(v27 + 8);

          v29 = *(v27 + 24);

          v30 = *(v27 + 40);

          v31 = *(v27 + 56);

          v32 = type metadata accessor for PMAccount.MockData(0);
          v33 = v32[8];
          v34 = sub_21CB80DD4();
          v35 = *(v34 - 8);
          v36 = *(v35 + 48);
          if (!v36(v27 + v33, 1, v34))
          {
            (*(v35 + 8))(v27 + v33, v34);
          }

          v37 = *(v27 + v32[9]);

          v38 = *(v27 + v32[10] + 8);

          v39 = *(v27 + v32[11] + 8);

          v40 = v32[12];
          if (!v36(v27 + v40, 1, v34))
          {
            (*(v35 + 8))(v27 + v40, v34);
          }

          v41 = v32[15];
          v42 = sub_21CB85BB4();
          v43 = *(v42 - 8);
          if (!(*(v43 + 48))(v27 + v41, 1, v42))
          {
            (*(v43 + 8))(v27 + v41, v42);
          }

          v44 = v32[16];
          v45 = sub_21CB85C04();
          v46 = *(v45 - 8);
          v12 = v183;
          if (!(*(v46 + 48))(v27 + v44, 1, v45))
          {
            (*(v46 + 8))(v27 + v44, v45);
          }

          v47 = *(v27 + v32[17] + 8);

          v48 = v32[18];
          v49 = sub_21CB85C44();
          v50 = *(v49 - 8);
          v13 = v181;
          if (!(*(v50 + 48))(v27 + v48, 1, v49))
          {
            (*(v50 + 8))(v27 + v48, v49);
          }
        }

        else
        {
        }

        v59 = v11 + v12[7];
        v4 = v186;
        if (*(v59 + 8))
        {
        }

        goto LABEL_27;
      }
    }

    else
    {
      v51 = *(v15 + 4);

      v52 = type metadata accessor for PMAccount.CombinedUniqueID(0);
      v53 = v52[7];
      v54 = sub_21CB85C04();
      v55 = *(v54 - 8);
      if (!(*(v55 + 48))(&v15[v53], 1, v54))
      {
        (*(v55 + 8))(&v15[v53], v54);
      }

      v56 = v52[8];
      v57 = sub_21CB85BB4();
      v58 = *(v57 - 8);
      if (!(*(v58 + 48))(&v15[v56], 1, v57))
      {
        (*(v58 + 8))(&v15[v56], v57);
      }

      v24 = v52[9];
      v25 = sub_21CB85C44();
      v26 = *(v25 - 8);
      v13 = v181;
      if ((*(v26 + 48))(&v15[v24], 1, v25))
      {
        goto LABEL_7;
      }
    }

    (*(v26 + 8))(&v15[v24], v25);
    goto LABEL_7;
  }

LABEL_27:
  v60 = *(v11 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC7B0, &unk_21CBC1F80) + 28));

  v61 = v7 + v4[10];
  v62 = type metadata accessor for PMMoveAccountToGroupAlert.Configuration(0);
  if ((*(*(v62 - 8) + 48))(v61, 1, v62))
  {
    goto LABEL_55;
  }

  v182 = v13;
  v63 = *(v61 + 8);

  v64 = (v61 + v12[5]);
  type metadata accessor for PMAccount.UniqueID(0);
  v65 = swift_getEnumCaseMultiPayload();
  v66 = *(v64 + 1);

  v67 = *(v64 + 3);

  if (v65 != 1)
  {
    v100 = *(v64 + 4);

    v101 = type metadata accessor for PMAccount.CombinedUniqueID(0);
    v102 = v101[7];
    v103 = sub_21CB85C04();
    v104 = *(v103 - 8);
    if (!(*(v104 + 48))(&v64[v102], 1, v103))
    {
      (*(v104 + 8))(&v64[v102], v103);
    }

    v105 = v101[8];
    v106 = sub_21CB85BB4();
    v107 = *(v106 - 8);
    if (!(*(v107 + 48))(&v64[v105], 1, v106))
    {
      (*(v107 + 8))(&v64[v105], v106);
    }

    v73 = v101[9];
    v74 = sub_21CB85C44();
    v75 = *(v74 - 8);
    v12 = v183;
    if ((*(v75 + 48))(&v64[v73], 1, v74))
    {
      goto LABEL_31;
    }

    goto LABEL_30;
  }

  v68 = *(v64 + 5);

  v69 = type metadata accessor for PMAccount.SIWAUniqueID(0);
  v70 = v69[7];
  v71 = sub_21CB85B74();
  (*(*(v71 - 8) + 8))(&v64[v70], v71);
  v72 = *&v64[v69[8] + 8];

  v73 = v69[9];
  v74 = sub_21CB85C44();
  v75 = *(v74 - 8);
  if (!(*(v75 + 48))(&v64[v73], 1, v74))
  {
LABEL_30:
    (*(v75 + 8))(&v64[v73], v74);
  }

LABEL_31:
  v76 = v61 + v12[6];
  type metadata accessor for PMAccount.Storage(0);
  v179 = v1;
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v77 = *(v76 + 8);

    v78 = *(v76 + 24);

    v79 = *(v76 + 40);

    v80 = *(v76 + 56);

    v81 = type metadata accessor for PMAccount.MockData(0);
    v82 = v81[8];
    v83 = sub_21CB80DD4();
    v84 = *(v83 - 8);
    v85 = *(v84 + 48);
    if (!v85(v76 + v82, 1, v83))
    {
      (*(v84 + 8))(v76 + v82, v83);
    }

    v86 = *(v76 + v81[9]);

    v87 = *(v76 + v81[10] + 8);

    v88 = *(v76 + v81[11] + 8);

    v89 = v81[12];
    if (!v85(v76 + v89, 1, v83))
    {
      (*(v84 + 8))(v76 + v89, v83);
    }

    v90 = v81[15];
    v91 = sub_21CB85BB4();
    v92 = *(v91 - 8);
    if (!(*(v92 + 48))(v76 + v90, 1, v91))
    {
      (*(v92 + 8))(v76 + v90, v91);
    }

    v93 = v81[16];
    v94 = sub_21CB85C04();
    v95 = *(v94 - 8);
    if (!(*(v95 + 48))(v76 + v93, 1, v94))
    {
      (*(v95 + 8))(v76 + v93, v94);
    }

    v96 = *(v76 + v81[17] + 8);

    v97 = v81[18];
    v98 = sub_21CB85C44();
    v99 = *(v98 - 8);
    v12 = v183;
    if (!(*(v99 + 48))(v76 + v97, 1, v98))
    {
      (*(v99 + 8))(v76 + v97, v98);
    }
  }

  else
  {
  }

  v108 = v12;
  v109 = v61 + v12[7];
  if (*(v109 + 8))
  {
  }

  v110 = v61 + *(v62 + 20);
  v111 = type metadata accessor for PMSharingGroup();
  v112 = *(*(v111 - 1) + 48);
  if (!v112(v110, 1, v111))
  {
    v113 = sub_21CB85C44();
    (*(*(v113 - 8) + 8))(v110, v113);
    v114 = *(v110 + v111[5] + 8);

    v115 = *(v110 + v111[6]);

    v116 = *(v110 + v111[7] + 8);
  }

  v117 = v61 + *(v62 + 24);
  v118 = v112(v117, 1, v111);
  v4 = v186;
  v12 = v108;
  v1 = v179;
  v13 = v182;
  if (!v118)
  {
    v119 = sub_21CB85C44();
    (*(*(v119 - 8) + 8))(v117, v119);
    v120 = *(v117 + v111[5] + 8);

    v121 = *(v117 + v111[6]);

    v122 = *(v117 + v111[7] + 8);
  }

LABEL_55:
  v123 = v61 + *(type metadata accessor for PMMoveAccountToGroupPicker.PresentationState(0) + 20);
  if (v13(v123, 1, v12))
  {
    goto LABEL_79;
  }

  v124 = *(v123 + 8);

  v125 = (v123 + v12[5]);
  type metadata accessor for PMAccount.UniqueID(0);
  v126 = swift_getEnumCaseMultiPayload();
  v127 = *(v125 + 1);

  v128 = *(v125 + 3);

  if (v126 != 1)
  {
    v161 = *(v125 + 4);

    v162 = type metadata accessor for PMAccount.CombinedUniqueID(0);
    v163 = v162[7];
    v164 = sub_21CB85C04();
    v165 = *(v164 - 8);
    if (!(*(v165 + 48))(&v125[v163], 1, v164))
    {
      (*(v165 + 8))(&v125[v163], v164);
    }

    v166 = v162[8];
    v167 = sub_21CB85BB4();
    v168 = *(v167 - 8);
    if (!(*(v168 + 48))(&v125[v166], 1, v167))
    {
      (*(v168 + 8))(&v125[v166], v167);
    }

    v134 = v162[9];
    v135 = sub_21CB85C44();
    v136 = *(v135 - 8);
    v12 = v183;
    if ((*(v136 + 48))(&v125[v134], 1, v135))
    {
      goto LABEL_59;
    }

    goto LABEL_58;
  }

  v129 = *(v125 + 5);

  v130 = type metadata accessor for PMAccount.SIWAUniqueID(0);
  v131 = v130[7];
  v132 = sub_21CB85B74();
  (*(*(v132 - 8) + 8))(&v125[v131], v132);
  v133 = *&v125[v130[8] + 8];

  v134 = v130[9];
  v135 = sub_21CB85C44();
  v136 = *(v135 - 8);
  if (!(*(v136 + 48))(&v125[v134], 1, v135))
  {
LABEL_58:
    (*(v136 + 8))(&v125[v134], v135);
  }

LABEL_59:
  v137 = v123 + v12[6];
  type metadata accessor for PMAccount.Storage(0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v178 = v5;
    v180 = v1;
    v138 = *(v137 + 8);

    v139 = *(v137 + 24);

    v140 = *(v137 + 40);

    v141 = *(v137 + 56);

    v142 = type metadata accessor for PMAccount.MockData(0);
    v143 = v142[8];
    v144 = sub_21CB80DD4();
    v145 = *(v144 - 8);
    v146 = *(v145 + 48);
    if (!v146(v137 + v143, 1, v144))
    {
      (*(v145 + 8))(v137 + v143, v144);
    }

    v147 = *(v137 + v142[9]);

    v148 = *(v137 + v142[10] + 8);

    v149 = *(v137 + v142[11] + 8);

    v150 = v142[12];
    if (!v146(v137 + v150, 1, v144))
    {
      (*(v145 + 8))(v137 + v150, v144);
    }

    v151 = v142[15];
    v152 = sub_21CB85BB4();
    v153 = *(v152 - 8);
    if (!(*(v153 + 48))(v137 + v151, 1, v152))
    {
      (*(v153 + 8))(v137 + v151, v152);
    }

    v154 = v142[16];
    v155 = sub_21CB85C04();
    v156 = *(v155 - 8);
    v5 = v178;
    v1 = v180;
    if (!(*(v156 + 48))(v137 + v154, 1, v155))
    {
      (*(v156 + 8))(v137 + v154, v155);
    }

    v157 = *(v137 + v142[17] + 8);

    v158 = v142[18];
    v159 = sub_21CB85C44();
    v160 = *(v159 - 8);
    v12 = v183;
    if (!(*(v160 + 48))(v137 + v158, 1, v159))
    {
      (*(v160 + 8))(v137 + v158, v159);
    }
  }

  else
  {
  }

  v169 = v123 + v12[7];
  v4 = v186;
  if (*(v169 + 8))
  {
  }

LABEL_79:
  v170 = *(v61 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB688, &unk_21CBA2410) + 28));

  v171 = *(v7 + v4[11] + 8);

  v172 = (v7 + v4[12]);
  if (*v172)
  {
    v173 = v172[1];
  }

  v174 = v4[13];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC0D0, &qword_21CBA3BF0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v175 = sub_21CB82A34();
    (*(*(v175 - 8) + 8))(v7 + v174, v175);
  }

  else
  {
    v176 = *(v7 + v174);
  }

  sub_21C7025C4(*(v7 + v4[14]), *(v7 + v4[14] + 8));

  return MEMORY[0x2821FE8E8](v1, v185 + v184, v5 | 7);
}

uint64_t sub_21C75BF24(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  type metadata accessor for PMAccountsContextMenu();
  swift_getWitnessTable();
  sub_21CB83744();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEC868, &qword_21CBA4AA0);
  swift_getWitnessTable();
  sub_21C6EADEC(&qword_27CDEC870, &qword_27CDEC868, &qword_21CBA4AA0);
  swift_getOpaqueTypeMetadata2();
  type metadata accessor for PMMoveAccountToGroupAlert(255);
  sub_21CB828F4();
  type metadata accessor for PMAccount(255);
  type metadata accessor for PMNewGroupFlow(255);
  swift_getOpaqueTypeConformance2();
  sub_21C80CD14(&qword_27CDEB768, type metadata accessor for PMMoveAccountToGroupAlert);
  swift_getWitnessTable();
  sub_21C80CD14(&qword_27CDEB2C8, type metadata accessor for PMAccount);
  sub_21C80CD14(&qword_27CDEB770, type metadata accessor for PMNewGroupFlow);
  swift_getOpaqueTypeMetadata2();
  type metadata accessor for PMAirDropView();
  swift_getOpaqueTypeConformance2();
  sub_21C80CD14(&qword_27CDEB788, type metadata accessor for PMAirDropView);
  return swift_getOpaqueTypeConformance2();
}

void sub_21C75C23C(void *a1)
{
  if (*a1)
  {

    v2 = a1[1];

    v3 = a1[2];
  }
}

__n128 sub_21C75C2C0(__n128 *a1, __n128 *a2)
{
  result = *a1;
  a2[1].n128_u64[0] = a1[1].n128_u64[0];
  *a2 = result;
  return result;
}

uint64_t sub_21C75C2D4()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  if (*(v0 + 32))
  {

    v3 = *(v0 + 40);
  }

  v4 = *(v0 + 64);

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t sub_21C75C340()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  if (*(v0 + 32))
  {

    v3 = *(v0 + 40);
  }

  v4 = *(v0 + 64);

  v5 = *(v0 + 72);

  v6 = *(v0 + 80);

  return MEMORY[0x2821FE8E8](v0, 96, 7);
}

uint64_t sub_21C75C3BC()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  v3 = *(v0 + 40);

  if (*(v0 + 48))
  {

    v4 = *(v0 + 56);
  }

  v5 = *(v0 + 80);

  v6 = *(v0 + 88);

  v7 = *(v0 + 96);

  return MEMORY[0x2821FE8E8](v0, 112, 7);
}

uint64_t sub_21C75C44C()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_21C75C48C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_21CB82CA4();
  *a1 = result;
  return result;
}

uint64_t sub_21C75C4B8(uint64_t *a1)
{
  v1 = *a1;

  return sub_21CB82CB4();
}

uint64_t sub_21C75C538(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC5A0, &unk_21CBA5080);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_21C75C5B0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC5A0, &unk_21CBA5080);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_21C75C630@<X0>(uint64_t *a1@<X8>)
{
  result = sub_21CB84BB4();
  *a1 = result;
  return result;
}

uint64_t sub_21C75C674@<X0>(_BYTE *a1@<X8>)
{
  sub_21C815960();
  result = sub_21CB82F94();
  *a1 = v3;
  return result;
}

uint64_t sub_21C75C6C4(char *a1)
{
  v2 = *a1;
  sub_21C815960();
  return sub_21CB82FA4();
}

uint64_t sub_21C75C71C()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDECB08, &qword_21CBA5200);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDECB68, &qword_21CBA5258);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDECB00, &qword_21CBA51F8);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDECB58, &qword_21CBA5250);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDECAF8, &qword_21CBA51F0);
  type metadata accessor for PMNewGroupFlow(255);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDECAF0, &qword_21CBA51E8);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEBDA8, &qword_21CBA36B0);
  type metadata accessor for PMAddAccountView();
  sub_21C815478();
  sub_21C6EADEC(&qword_27CDEBDC0, &qword_27CDEBDA8, &qword_21CBA36B0);
  sub_21C815A24(&qword_27CDEBDC8, type metadata accessor for PMAddAccountView);
  swift_getOpaqueTypeConformance2();
  sub_21C722D3C();
  sub_21C815A24(&qword_27CDEB770, type metadata accessor for PMNewGroupFlow);
  swift_getOpaqueTypeConformance2();
  sub_21C6EADEC(&qword_27CDECB60, &qword_27CDECB58, &qword_21CBA5250);
  swift_getOpaqueTypeConformance2();
  sub_21C81564C();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_21C75CA00(uint64_t a1, uint64_t a2)
{
  v4 = sub_21CB85C44();
  v5 = (*(*(v4 - 8) + 48))(a1, a2, v4);
  if (v5 >= 3)
  {
    return v5 - 2;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_21C75CA6C(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 2);
  }

  else
  {
    v5 = 0;
  }

  v6 = sub_21CB85C44();
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

uint64_t sub_21C75CAFC()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_21C75CB34()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_21C75CB98()
{
  v1 = sub_21CB85C44();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

id sub_21C75CCA0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  result = sub_21C95C934();
  *a2 = result;
  return result;
}

void sub_21C75CCCC(void **a1, uint64_t a2)
{
  v2 = *a1;
  v4 = *(*a2 + 32);
  *(*a2 + 32) = *a1;
  v3 = v2;
}

uint64_t sub_21C75CD14()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_21C75CD50(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return sub_21C81A948(v4);
}

uint64_t sub_21C75CD80(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;

  return PMPasswordOptionsDefaultAppsProvider.localizedTitle.setter(v2, v3);
}

uint64_t sub_21C75CDC4(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;

  return PMPasswordOptionsDefaultAppsProvider.localizedDetail.setter(v2, v3);
}

uint64_t sub_21C75CE7C(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  type metadata accessor for _PMAccountsListModelView();
  type metadata accessor for PMAccountsListModel.Configuration(255);
  swift_getWitnessTable();
  sub_21C81D554(&qword_27CDECF58, type metadata accessor for PMAccountsListModel.Configuration);
  sub_21CB84E24();
  return swift_getWitnessTable();
}

uint64_t sub_21C75CF48(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDED1C0, &qword_21CBA5BF8);
  sub_21CB828F4();
  sub_21C81D59C();
  return swift_getWitnessTable();
}

uint64_t sub_21C75CFEC(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDED038, &unk_21CBA6000);
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 28);

    return v10(v11, a2, v9);
  }
}

void *sub_21C75D0B4(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *result = a2;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDED038, &unk_21CBA6000);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_21C75D16C()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDED068, &unk_21CBA6080);
  type metadata accessor for PMGeneratedPasswordsLogView();
  sub_21C81F7E8();
  sub_21C713460(&qword_27CDEBDD8, type metadata accessor for PMGeneratedPasswordsLogView);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_21C75D230()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_21C75D274()
{
  v1 = sub_21CB82124();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_21C75D30C()
{
  v1 = sub_21CB82124();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 96) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);
  swift_unknownObjectRelease();
  v7 = *(v0 + 32);
  v8 = *(v0 + 40);
  v9 = *(v0 + 48);
  sub_21C70AC30();
  v10 = *(v0 + 56);
  swift_unknownObjectRelease();
  v11 = *(v0 + 88);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_21C75D3EC()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDED340, &qword_21CBA6688) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v16 = *(v1 + 64);
  v17 = sub_21CB820A4();
  v4 = *(v17 - 8);
  v5 = *(v4 + 80);
  v15 = *(v4 + 64);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDED348, &qword_21CBA6690);
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v14 = *(v7 + 64);
  v9 = sub_21CB82124();
  v10 = *(v9 - 8);
  if (!(*(v10 + 48))(v0 + v3, 1, v9))
  {
    (*(v10 + 8))(v0 + v3, v9);
  }

  v11 = (v3 + v16 + v5) & ~v5;
  v12 = (v11 + v15 + v8) & ~v8;
  (*(v4 + 8))(v0 + v11, v17);
  (*(v7 + 8))(v0 + v12, v6);

  return MEMORY[0x2821FE8E8](v0, v12 + v14, v2 | v5 | v8 | 7);
}

uint64_t sub_21C75D73C()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_21C75D778(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;

  return sub_21C82B64C(v2, v3);
}

void sub_21C75D7BC(id *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *a1;
  sub_21C82B3F0(v2);
}

uint64_t sub_21C75D7EC()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[7];

  v4 = v0[9];

  v5 = v0[11];

  v6 = v0[13];

  v7 = v0[15];

  v8 = v0[17];

  return MEMORY[0x2821FE8E8](v0, 144, 7);
}

uint64_t sub_21C75D874(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 32);
  sub_21CB82624();
  return swift_getWitnessTable();
}

uint64_t sub_21C75D8E0()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDED678, &qword_21CBA7288);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDED670, &qword_21CBA7280);
  sub_21C830DF8();
  sub_21C830E5C();
  swift_getOpaqueTypeConformance2();
  sub_21C830EB0();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_21C75DAD8()
{
  if (v0[2])
  {
    v1 = v0[3];
  }

  v2 = v0[4];

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_21C75DB24(__int128 *a1)
{
  v2 = *a1;
  if (__isPlatformVersionAtLeast(2, 26, 1, 0))
  {
    return swift_getOpaqueTypeMetadata2();
  }

  else
  {
    return v2;
  }
}

uint64_t sub_21C75DB98(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  if (__isPlatformVersionAtLeast(2, 26, 1, 0))
  {
    return swift_getOpaqueTypeConformance2();
  }

  return v1;
}

uint64_t sub_21C75DC1C@<X0>(_BYTE *a1@<X8>)
{
  sub_21C723244();
  result = sub_21CB82F94();
  *a1 = v3;
  return result;
}

uint64_t sub_21C75DC6C(char *a1)
{
  v2 = *a1;
  sub_21C723244();
  return sub_21CB82FA4();
}

uint64_t sub_21C75DD20@<X0>(void *a1@<X8>)
{
  result = sub_21CB82E24();
  *a1 = v3;
  return result;
}

uint64_t sub_21C75E044()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_21C75E07C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDED978, &qword_21CBA7DE8);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 40);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_21C75E138(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDED978, &qword_21CBA7DE8);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 40);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_21C75E1E8()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDED8C8, &qword_21CBA7C58);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDED8C0, &qword_21CBA7C50);
  _s19IdentifiableGroupIDVMa();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDED9E8, &qword_21CBA7FF8);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDED8B8, &qword_21CBA7C48);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDED8B0, &qword_21CBA7C40);
  sub_21C843FB4();
  sub_21C71F3FC();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  sub_21C705EB0(&qword_27CDED9F0, _s19IdentifiableGroupIDVMa);
  sub_21C844448();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_21C75E46C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for PMAccount(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 24) + 8);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

uint64_t sub_21C75E530(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for PMAccount(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 20);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 24) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_21C75E640()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[8];

  v3 = v0[10];

  v4 = v0[12];

  v5 = v0[14];

  v6 = v0[16];

  v7 = v0[17];

  return MEMORY[0x2821FE8E8](v0, 144, 7);
}

uint64_t sub_21C75E6B0(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v3 = a1[2];
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEAED8, &unk_21CBA0730);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEDCC8, &unk_21CBA87F0);
  sub_21CB828F4();
  sub_21C6EADEC(&unk_27CDEC2D0, &qword_27CDEAED8, &unk_21CBA0730);
  sub_21CB85004();
  sub_21C6EADEC(&qword_27CDEDCD0, &qword_27CDEDCC8, &unk_21CBA87F0);
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_21CB83F44();
  swift_getTupleTypeMetadata2();
  sub_21CB85354();
  sub_21CB84B94();
  sub_21CB828F4();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_21C72EC3C();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEDCD8, &unk_21CBB0390);
  sub_21CB828F4();
  sub_21CB828F4();
  swift_getOpaqueTypeConformance2();
  sub_21C6EADEC(&qword_27CDEDCE0, &qword_27CDEDCD8, &unk_21CBB0390);
  swift_getWitnessTable();
  sub_21C847DA4();
  return swift_getWitnessTable();
}

uint64_t sub_21C75E9E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF20B0, &unk_21CBA0090);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_21C75EAA0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF20B0, &unk_21CBA0090);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_21C75EB9C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;

  return sub_21C8493C8(v2, v3);
}

uint64_t sub_21C75EBDC()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_21C75EC58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for PMWiFiNetwork();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC5A0, &unk_21CBA5080);
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 28);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_21C75ED8C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for PMWiFiNetwork();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC5A0, &unk_21CBA5080);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 28);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t sub_21C75EEC8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEDDB8, &qword_21CBA8D58);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_21C75EF40()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEDDB8, &qword_21CBA8D58);
  sub_21C84BE30();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_21C75EFA4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF3010, &unk_21CBA8EB0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_21C75F060(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF3010, &unk_21CBA8EB0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_21C75F114(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEDEB8, &qword_21CBA8FA8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_21C75F18C()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_21C75F284()
{
  v1 = type metadata accessor for PMAddAccountView();
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = *(v0 + 16);
  swift_unknownObjectRelease();
  v6 = v0 + v3;
  v7 = *(v0 + v3 + 8);

  v8 = v1[6];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE480, &qword_21CBA13D0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = sub_21CB823B4();
    (*(*(v9 - 8) + 8))(v6 + v8, v9);
  }

  else
  {
    v10 = *(v6 + v8);
  }

  v11 = *(v6 + v1[7] + 8);

  v12 = *(v6 + v1[8] + 8);

  sub_21C7025C4(*(v6 + v1[9]), *(v6 + v1[9] + 8));

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_21C75F48C()
{
  if (*(v0 + 16))
  {
    v1 = *(v0 + 24);
  }

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_21C75F4E8(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for PMAccount(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_12:

    return v9(v10, a2, v8);
  }

  if (a2 == 0x7FFFFFFF)
  {
    v11 = *(a1 + a3[5] + 8);
    if (v11 >= 0xFFFFFFFF)
    {
      LODWORD(v11) = -1;
    }

    return (v11 + 1);
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF3010, &unk_21CBA8EB0);
  if (*(*(v13 - 8) + 84) == a2)
  {
    v8 = v13;
    v14 = *(v13 - 8);
    v15 = a3[8];
LABEL_11:
    v9 = *(v14 + 48);
    v10 = a1 + v15;
    goto LABEL_12;
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDEBD00, &unk_21CBA20F0);
  if (*(*(v16 - 8) + 84) == a2)
  {
    v8 = v16;
    v14 = *(v16 - 8);
    v15 = a3[9];
    goto LABEL_11;
  }

  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE0E0, &unk_21CBA9580);
  v18 = *(*(v17 - 8) + 48);
  v19 = a1 + a3[10];

  return v18(v19, a2, v17);
}

uint64_t sub_21C75F6CC(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = type metadata accessor for PMAccount(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_10:

    return v11(v12, a2, a2, v10);
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[5] + 8) = (a2 - 1);
    return result;
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF3010, &unk_21CBA8EB0);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v10 = v13;
    v14 = *(v13 - 8);
    v15 = a4[8];
LABEL_9:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_10;
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDEBD00, &unk_21CBA20F0);
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[9];
    goto LABEL_9;
  }

  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE0E0, &unk_21CBA9580);
  v18 = *(*(v17 - 8) + 56);
  v19 = a1 + a4[10];

  return v18(v19, a2, a2, v17);
}

uint64_t sub_21C75F8BC()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_21C75F960(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF3010, &unk_21CBA8EB0);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 20);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDEBD00, &unk_21CBA20F0);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 24);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_21C75FA9C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF3010, &unk_21CBA8EB0);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 20);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDEBD00, &unk_21CBA20F0);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 24);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

double sub_21C75FBDC@<D0>(_OWORD *a1@<X8>)
{
  sub_21C7ECAF4();
  sub_21CB82F94();
  result = *&v3;
  *a1 = v3;
  return result;
}

uint64_t sub_21C75FC38()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_21C75FC78()
{
  v1 = type metadata accessor for PMOnboardingRootView();
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = *(v0 + 16);
  swift_unknownObjectRelease();
  v6 = v0 + v3;
  v7 = *(v0 + v3 + 8);

  v8 = v1[5];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE480, &qword_21CBA13D0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = sub_21CB823B4();
    (*(*(v9 - 8) + 8))(v6 + v8, v9);
  }

  else
  {
    v10 = *(v6 + v8);
  }

  v11 = v1[6];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEBDA0, &qword_21CBA0550);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12 = sub_21CB82484();
    (*(*(v12 - 8) + 8))(v6 + v11, v12);
  }

  else
  {
    v13 = *(v6 + v11);
  }

  v14 = *(v6 + v1[7]);

  v15 = *(v6 + v1[8]);

  v16 = *(v6 + v1[9]);

  v17 = (v6 + v1[10]);
  v18 = *v17;

  v19 = v17[1];

  v20 = (v6 + v1[11]);
  v21 = *v20;

  v22 = v20[1];

  v23 = *(v6 + v1[12] + 8);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_21C75FE7C()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEE2D0, &qword_21CBA9990);
  sub_21C85B9F0();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_21C75FF00(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF44B0, &unk_21CBA9AC0);
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 28);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_21C75FFC8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 8) = a2;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF44B0, &unk_21CBA9AC0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_21C760078(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF3010, &unk_21CBA8EB0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

void *sub_21C760134(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF3010, &unk_21CBA8EB0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_21C7601E4()
{
  v1 = (type metadata accessor for PMAddGroupMembersView() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  v5 = v0 + v3;
  v6 = *(v0 + v3);

  v7 = *(v0 + v3 + 16);

  v8 = v1[8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE480, &qword_21CBA13D0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = sub_21CB823B4();
    (*(*(v9 - 8) + 8))(v5 + v8, v9);
  }

  else
  {
    v10 = *(v5 + v8);
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_21C760308(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC370, &unk_21CBA40B0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 48);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_21C7603C4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC370, &unk_21CBA40B0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 48);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_21C760480()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_21C7604FC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE5A0, &qword_21CBA9EF8);
  v5 = (*(*(v4 - 8) + 48))(a1, a2, v4);
  if (v5 >= 2)
  {
    return v5 - 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_21C760574(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 1);
  }

  else
  {
    v5 = 0;
  }

  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE5A0, &qword_21CBA9EF8);
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

uint64_t sub_21C760608@<X0>(_BYTE *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = byte_27CDEE5D8;
  return result;
}

uint64_t sub_21C760654(char *a1)
{
  v1 = *a1;
  result = swift_beginAccess();
  byte_27CDEE5D8 = v1;
  return result;
}

uint64_t sub_21C76069C@<X0>(_BYTE *a1@<X8>)
{
  sub_21C85FAE4();
  result = sub_21CB82F94();
  *a1 = v3;
  return result;
}

uint64_t sub_21C7606EC(char *a1)
{
  v2 = *a1;
  sub_21C85FAE4();
  return sub_21CB82FA4();
}

uint64_t sub_21C760780()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_21C7607D4()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_21C76086C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;

  return sub_21C8610D0(v2, v3);
}

uint64_t sub_21C760990()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v58 = type metadata accessor for PMAirDropAccountButton();
  v3 = *(*(v58 - 8) + 80);
  v57 = *(*(v58 - 8) + 64);
  v59 = (v3 + 32) & ~v3;
  v4 = v0 + v59;
  v5 = *(v0 + v59 + 8);

  v6 = type metadata accessor for PMAccount(0);
  v7 = (v0 + v59 + v6[5]);
  type metadata accessor for PMAccount.UniqueID(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v9 = *(v7 + 1);

  v10 = *(v7 + 3);

  if (EnumCaseMultiPayload == 1)
  {
    v11 = *(v7 + 5);

    v12 = type metadata accessor for PMAccount.SIWAUniqueID(0);
    v13 = v12[7];
    v14 = sub_21CB85B74();
    (*(*(v14 - 8) + 8))(&v7[v13], v14);
    v15 = *&v7[v12[8] + 8];

    v16 = v12[9];
    v17 = sub_21CB85C44();
    v18 = *(v17 - 8);
    if ((*(v18 + 48))(&v7[v16], 1, v17))
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v43 = *(v7 + 4);

  v44 = type metadata accessor for PMAccount.CombinedUniqueID(0);
  v45 = v44[7];
  v46 = sub_21CB85C04();
  v47 = *(v46 - 8);
  if (!(*(v47 + 48))(&v7[v45], 1, v46))
  {
    (*(v47 + 8))(&v7[v45], v46);
  }

  v48 = v44[8];
  v49 = sub_21CB85BB4();
  v50 = *(v49 - 8);
  if (!(*(v50 + 48))(&v7[v48], 1, v49))
  {
    (*(v50 + 8))(&v7[v48], v49);
  }

  v16 = v44[9];
  v17 = sub_21CB85C44();
  v18 = *(v17 - 8);
  if (!(*(v18 + 48))(&v7[v16], 1, v17))
  {
LABEL_3:
    (*(v18 + 8))(&v7[v16], v17);
  }

LABEL_4:
  v19 = v4 + v6[6];
  type metadata accessor for PMAccount.Storage(0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v56 = v2;
    v20 = *(v19 + 8);

    v21 = *(v19 + 24);

    v22 = *(v19 + 40);

    v23 = *(v19 + 56);

    v24 = type metadata accessor for PMAccount.MockData(0);
    v25 = v24[8];
    v26 = sub_21CB80DD4();
    v27 = *(v26 - 8);
    v28 = *(v27 + 48);
    if (!v28(v19 + v25, 1, v26))
    {
      (*(v27 + 8))(v19 + v25, v26);
    }

    v29 = *(v19 + v24[9]);

    v30 = *(v19 + v24[10] + 8);

    v31 = *(v19 + v24[11] + 8);

    v32 = v24[12];
    if (!v28(v19 + v32, 1, v26))
    {
      (*(v27 + 8))(v19 + v32, v26);
    }

    v33 = v24[15];
    v34 = sub_21CB85BB4();
    v35 = *(v34 - 8);
    v2 = v56;
    if (!(*(v35 + 48))(v19 + v33, 1, v34))
    {
      (*(v35 + 8))(v19 + v33, v34);
    }

    v36 = v24[16];
    v37 = sub_21CB85C04();
    v38 = *(v37 - 8);
    if (!(*(v38 + 48))(v19 + v36, 1, v37))
    {
      (*(v38 + 8))(v19 + v36, v37);
    }

    v39 = *(v19 + v24[17] + 8);

    v40 = v24[18];
    v41 = sub_21CB85C44();
    v42 = *(v41 - 8);
    if (!(*(v42 + 48))(v19 + v40, 1, v41))
    {
      (*(v42 + 8))(v19 + v40, v41);
    }
  }

  else
  {
  }

  v51 = v4 + v6[7];
  if (*(v51 + 8))
  {
  }

  v52 = (v4 + *(v58 + 36));
  v53 = *v52;

  v54 = v52[1];

  (*(*(v2 - 8) + 8))(v4 + *(v58 + 40), v2);

  return MEMORY[0x2821FE8E8](v0, v59 + v57, v3 | 7);
}

uint64_t sub_21C761050()
{
  v2 = v0[4];
  v1 = v0[5];
  v59 = type metadata accessor for PMAirDropAccountButton();
  v3 = *(*(v59 - 8) + 80);
  v58 = *(*(v59 - 8) + 64);
  v4 = v0[2];
  swift_unknownObjectRelease();
  v5 = v0 + ((v3 + 48) & ~v3);
  v6 = *(v5 + 1);

  v7 = type metadata accessor for PMAccount(0);
  v8 = &v5[v7[5]];
  type metadata accessor for PMAccount.UniqueID(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v10 = *(v8 + 1);

  v11 = *(v8 + 3);

  if (EnumCaseMultiPayload == 1)
  {
    v12 = *(v8 + 5);

    v13 = type metadata accessor for PMAccount.SIWAUniqueID(0);
    v14 = v13[7];
    v15 = sub_21CB85B74();
    (*(*(v15 - 8) + 8))(&v8[v14], v15);
    v16 = *&v8[v13[8] + 8];

    v17 = v13[9];
    v18 = sub_21CB85C44();
    v19 = *(v18 - 8);
    if ((*(v19 + 48))(&v8[v17], 1, v18))
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v44 = *(v8 + 4);

  v45 = type metadata accessor for PMAccount.CombinedUniqueID(0);
  v46 = v45[7];
  v47 = sub_21CB85C04();
  v48 = *(v47 - 8);
  if (!(*(v48 + 48))(&v8[v46], 1, v47))
  {
    (*(v48 + 8))(&v8[v46], v47);
  }

  v49 = v45[8];
  v50 = sub_21CB85BB4();
  v51 = *(v50 - 8);
  if (!(*(v51 + 48))(&v8[v49], 1, v50))
  {
    (*(v51 + 8))(&v8[v49], v50);
  }

  v17 = v45[9];
  v18 = sub_21CB85C44();
  v19 = *(v18 - 8);
  if (!(*(v19 + 48))(&v8[v17], 1, v18))
  {
LABEL_3:
    (*(v19 + 8))(&v8[v17], v18);
  }

LABEL_4:
  v20 = &v5[v7[6]];
  type metadata accessor for PMAccount.Storage(0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v57 = v2;
    v21 = *(v20 + 1);

    v22 = *(v20 + 3);

    v23 = *(v20 + 5);

    v24 = *(v20 + 7);

    v25 = type metadata accessor for PMAccount.MockData(0);
    v26 = v25[8];
    v27 = sub_21CB80DD4();
    v28 = *(v27 - 8);
    v29 = *(v28 + 48);
    if (!v29(&v20[v26], 1, v27))
    {
      (*(v28 + 8))(&v20[v26], v27);
    }

    v30 = *&v20[v25[9]];

    v31 = *&v20[v25[10] + 8];

    v32 = *&v20[v25[11] + 8];

    v33 = v25[12];
    if (!v29(&v20[v33], 1, v27))
    {
      (*(v28 + 8))(&v20[v33], v27);
    }

    v34 = v25[15];
    v35 = sub_21CB85BB4();
    v36 = *(v35 - 8);
    v2 = v57;
    if (!(*(v36 + 48))(&v20[v34], 1, v35))
    {
      (*(v36 + 8))(&v20[v34], v35);
    }

    v37 = v25[16];
    v38 = sub_21CB85C04();
    v39 = *(v38 - 8);
    if (!(*(v39 + 48))(&v20[v37], 1, v38))
    {
      (*(v39 + 8))(&v20[v37], v38);
    }

    v40 = *&v20[v25[17] + 8];

    v41 = v25[18];
    v42 = sub_21CB85C44();
    v43 = *(v42 - 8);
    if (!(*(v43 + 48))(&v20[v41], 1, v42))
    {
      (*(v43 + 8))(&v20[v41], v42);
    }
  }

  else
  {
  }

  v52 = &v5[v7[7]];
  if (*(v52 + 1))
  {
  }

  v53 = &v5[*(v59 + 36)];
  v54 = *v53;

  v55 = *(v53 + 1);

  (*(*(v2 - 8) + 8))(&v5[*(v59 + 40)], v2);

  return MEMORY[0x2821FE8E8](v0, ((v3 + 48) & ~v3) + v58, v3 | 7);
}

uint64_t sub_21C761718(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  sub_21CB84DF4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEBC88, &qword_21CBA3170);
  sub_21CB828F4();
  swift_getWitnessTable();
  sub_21C866BD4();
  return swift_getWitnessTable();
}

uint64_t sub_21C7617E0(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE7C8, &unk_21CBC5000);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_8:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC5A0, &unk_21CBA5080);
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[5];
LABEL_7:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_8;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CDEC7B8, &unk_21CBABBE0);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[6];
    goto LABEL_7;
  }

  if (a2 == 0x7FFFFFFF)
  {
    v16 = *(a1 + a3[7] + 8);
    if (v16 >= 0xFFFFFFFF)
    {
      LODWORD(v16) = -1;
    }

    return (v16 + 1);
  }

  else
  {
    v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC370, &unk_21CBA40B0);
    v18 = *(*(v17 - 8) + 48);
    v19 = a1 + a3[9];

    return v18(v19, a2, v17);
  }
}

uint64_t sub_21C7619D0(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE7C8, &unk_21CBC5000);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_8:

    return v11(v12, a2, a2, v10);
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC5A0, &unk_21CBA5080);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v10 = v13;
    v14 = *(v13 - 8);
    v15 = a4[5];
LABEL_7:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_8;
  }

  result = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CDEC7B8, &unk_21CBABBE0);
  if (*(*(result - 8) + 84) == a3)
  {
    v10 = result;
    v14 = *(result - 8);
    v15 = a4[6];
    goto LABEL_7;
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[7] + 8) = (a2 - 1);
  }

  else
  {
    v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC370, &unk_21CBA40B0);
    v18 = *(*(v17 - 8) + 56);
    v19 = a1 + a4[9];

    return v18(v19, a2, a2, v17);
  }

  return result;
}

uint64_t sub_21C761C0C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_21CB82E44();
  *a1 = result;
  return result;
}

unint64_t sub_21C761CA0(uint64_t a1, uint64_t a2, char *a3)
{
  v3 = *a3;
  v4 = *a1;
  v5 = *(a1 + 8);
  v6 = *(a1 + 16);
  sub_21C7FB8AC(*a1, v5, v6);
  return sub_21C87EC3C(v4, v5, v6, v3);
}

uint64_t sub_21C761D3C()
{
  v1 = (type metadata accessor for PMSharingGroup() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  v5 = type metadata accessor for PMAppAccountsList();
  v6 = *(*(v5 - 1) + 80);
  v7 = (v3 + v4 + v6) & ~v6;
  v8 = *(*(v5 - 1) + 64);
  v9 = v0 + v3;
  v10 = sub_21CB85C44();
  (*(*(v10 - 8) + 8))(v9, v10);
  v11 = *(v9 + v1[7] + 8);

  v12 = *(v9 + v1[8]);

  v13 = *(v9 + v1[9] + 8);

  v14 = v0 + v7;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE7C8, &unk_21CBC5000);
  (*(*(v15 - 8) + 8))(v0 + v7, v15);
  v16 = v5[5];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB998, &qword_21CBA2700);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v17 = sub_21CB82834();
    (*(*(v17 - 8) + 8))(v14 + v16, v17);
  }

  else
  {
    v18 = *(v14 + v16);
  }

  v19 = v5[6];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC0D0, &qword_21CBA3BF0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v20 = sub_21CB82A34();
    (*(*(v20 - 8) + 8))(v14 + v19, v20);
  }

  else
  {
    v21 = *(v14 + v19);
  }

  v22 = *(v14 + v5[7] + 8);

  v23 = *(v14 + v5[8] + 8);

  v24 = v5[9];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC000, &qword_21CBA27F0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v25 = sub_21CB83834();
    v26 = *(v25 - 8);
    if (!(*(v26 + 48))(v14 + v24, 1, v25))
    {
      (*(v26 + 8))(v14 + v24, v25);
    }
  }

  else
  {
    v27 = *(v14 + v24);
  }

  v28 = *(v14 + v5[10]);

  v29 = *(v14 + v5[11]);

  return MEMORY[0x2821FE8E8](v0, v7 + v8, v2 | v6 | 7);
}

uint64_t sub_21C7620F0()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  v3 = *(v0 + 40);

  v4 = *(v0 + 56);

  v5 = *(v0 + 72);

  v6 = *(v0 + 88);

  v7 = *(v0 + 104);

  v8 = *(v0 + 120);

  v9 = *(v0 + 144);

  return MEMORY[0x2821FE8E8](v0, 168, 7);
}

uint64_t sub_21C762170()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_21C7621CC()
{
  v1 = sub_21CB82964();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  v6 = type metadata accessor for PMAppAccountsList();
  v7 = *(*(v6 - 1) + 80);
  v8 = (v4 + v5 + v7) & ~v7;
  v9 = *(*(v6 - 1) + 64);
  (*(v2 + 8))(v0 + v4, v1);
  v10 = v0 + v8;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE7C8, &unk_21CBC5000);
  (*(*(v11 - 8) + 8))(v0 + v8, v11);
  v12 = v6[5];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB998, &qword_21CBA2700);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_21CB82834();
    (*(*(v13 - 8) + 8))(v10 + v12, v13);
  }

  else
  {
    v14 = *(v10 + v12);
  }

  v15 = v6[6];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC0D0, &qword_21CBA3BF0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v16 = sub_21CB82A34();
    (*(*(v16 - 8) + 8))(v10 + v15, v16);
  }

  else
  {
    v17 = *(v10 + v15);
  }

  v18 = *(v10 + v6[7] + 8);

  v19 = *(v10 + v6[8] + 8);

  v20 = v6[9];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC000, &qword_21CBA27F0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v21 = sub_21CB83834();
    v22 = *(v21 - 8);
    if (!(*(v22 + 48))(v10 + v20, 1, v21))
    {
      (*(v22 + 8))(v10 + v20, v21);
    }
  }

  else
  {
    v23 = *(v10 + v20);
  }

  v24 = *(v10 + v6[10]);

  v25 = *(v10 + v6[11]);

  return MEMORY[0x2821FE8E8](v0, v8 + v9, v3 | v7 | 7);
}

uint64_t sub_21C762520()
{
  v1 = sub_21CB82964();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_21C7625A8()
{
  v1 = sub_21CB82124();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  v6 = sub_21CB82964();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v4 + v5 + v8) & ~v8;
  v10 = *(v7 + 64);
  v11 = v3 | v8;
  (*(v2 + 8))(v0 + v4, v1);
  (*(v7 + 8))(v0 + v9, v6);

  return MEMORY[0x2821FE8E8](v0, v9 + v10, v11 | 7);
}

uint64_t sub_21C762718()
{
  v1 = v0[3];

  v2 = v0[6];

  v3 = v0[8];

  v4 = v0[10];

  v5 = v0[12];

  return MEMORY[0x2821FE8E8](v0, 104, 7);
}

uint64_t sub_21C7627DC(uint64_t a1, uint64_t a2)
{
  v4 = sub_21CB85C44();
  v5 = (*(*(v4 - 8) + 48))(a1, a2, v4);
  if (v5 >= 5)
  {
    return v5 - 4;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_21C762848(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 4);
  }

  else
  {
    v5 = 0;
  }

  v6 = sub_21CB85C44();
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

uint64_t sub_21C762918(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return sub_21C881498(v4);
}

uint64_t sub_21C762944()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_21C762988(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;

  return sub_21C884F9C(v2, v3);
}

uint64_t sub_21C762B54(uint64_t a1, uint64_t a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CDEB7F0, &unk_21CBA2600);
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[6];
LABEL_15:
    v16 = *(v10 + 48);

    return v16(a1 + v11, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEF168, &qword_21CBABBC0);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[7];
    goto LABEL_15;
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEF170, &qword_21CBABBC8);
  if (*(*(v13 - 8) + 84) == a2)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a3[8];
    goto LABEL_15;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEF178, &unk_21CBABBD0);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v9 = v14;
    v10 = *(v14 - 8);
    v11 = a3[9];
    goto LABEL_15;
  }

  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDEBD00, &unk_21CBA20F0);
  if (*(*(v15 - 8) + 84) == a2)
  {
    v9 = v15;
    v10 = *(v15 - 8);
    v11 = a3[10];
    goto LABEL_15;
  }

  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CDEC7B8, &unk_21CBABBE0);
  v18 = *(*(v17 - 8) + 48);
  v19 = a1 + a3[11];

  return v18(v19, a2, v17);
}

uint64_t sub_21C762DE0(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
    return result;
  }

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CDEB7F0, &unk_21CBA2600);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[6];
LABEL_13:
    v16 = *(v10 + 56);

    return v16(v5 + v11, a2, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEF168, &qword_21CBABBC0);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[7];
    goto LABEL_13;
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEF170, &qword_21CBABBC8);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a4[8];
    goto LABEL_13;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEF178, &unk_21CBABBD0);
  if (*(*(v14 - 8) + 84) == a3)
  {
    v9 = v14;
    v10 = *(v14 - 8);
    v11 = a4[9];
    goto LABEL_13;
  }

  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDEBD00, &unk_21CBA20F0);
  if (*(*(v15 - 8) + 84) == a3)
  {
    v9 = v15;
    v10 = *(v15 - 8);
    v11 = a4[10];
    goto LABEL_13;
  }

  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CDEC7B8, &unk_21CBABBE0);
  v18 = *(*(v17 - 8) + 56);
  v19 = v5 + a4[11];

  return v18(v19, a2, a2, v17);
}

uint64_t sub_21C76307C()
{
  v1 = type metadata accessor for PMAppCommands();
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = type metadata accessor for PMSharingGroup();
  v6 = *(*(v5 - 1) + 80);
  v7 = *(*(v5 - 1) + 64);
  v8 = v0 + v3;
  v9 = *(v0 + v3 + 8);

  v10 = *(v0 + v3 + 16);

  v11 = v1[6];
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CDEB7F0, &unk_21CBA2600);
  (*(*(v12 - 8) + 8))(v0 + v3 + v11, v12);
  v13 = v1[7];
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEF168, &qword_21CBABBC0);
  (*(*(v14 - 8) + 8))(v0 + v3 + v13, v14);
  v15 = v1[8];
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEF170, &qword_21CBABBC8);
  (*(*(v16 - 8) + 8))(v0 + v3 + v15, v16);
  v17 = v1[9];
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEF178, &unk_21CBABBD0);
  (*(*(v18 - 8) + 8))(v0 + v3 + v17, v18);
  v19 = v1[10];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEBDA0, &qword_21CBA0550);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v20 = sub_21CB82484();
    (*(*(v20 - 8) + 8))(v8 + v19, v20);
  }

  else
  {
    v21 = *(v8 + v19);
  }

  v22 = v1[11];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC0D0, &qword_21CBA3BF0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v23 = sub_21CB82A34();
    (*(*(v23 - 8) + 8))(v8 + v22, v23);
  }

  else
  {
    v24 = *(v8 + v22);
  }

  v25 = (v3 + v4 + v6) & ~v6;
  v26 = *(v8 + v1[12] + 8);

  v27 = *(v8 + v1[13] + 8);

  v28 = *(v8 + v1[14] + 8);

  v29 = *(v8 + v1[15] + 8);

  v30 = sub_21CB85C44();
  (*(*(v30 - 8) + 8))(v0 + v25, v30);
  v31 = *(v0 + v25 + v5[5] + 8);

  v32 = *(v0 + v25 + v5[6]);

  v33 = *(v0 + v25 + v5[7] + 8);

  return MEMORY[0x2821FE8E8](v0, v25 + v7, v2 | v6 | 7);
}

uint64_t sub_21C763468()
{
  v1 = type metadata accessor for PMAppCommands();
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = *(v0 + 16);
  swift_unknownObjectRelease();
  v6 = v0 + v3;
  v7 = *(v0 + v3 + 8);

  v8 = *(v0 + v3 + 16);

  v9 = v1[6];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CDEB7F0, &unk_21CBA2600);
  (*(*(v10 - 8) + 8))(v0 + v3 + v9, v10);
  v11 = v1[7];
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEF168, &qword_21CBABBC0);
  (*(*(v12 - 8) + 8))(v0 + v3 + v11, v12);
  v13 = v1[8];
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEF170, &qword_21CBABBC8);
  (*(*(v14 - 8) + 8))(v0 + v3 + v13, v14);
  v15 = v1[9];
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEF178, &unk_21CBABBD0);
  (*(*(v16 - 8) + 8))(v0 + v3 + v15, v16);
  v17 = v1[10];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEBDA0, &qword_21CBA0550);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v18 = sub_21CB82484();
    (*(*(v18 - 8) + 8))(v6 + v17, v18);
  }

  else
  {
    v19 = *(v6 + v17);
  }

  v20 = v1[11];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC0D0, &qword_21CBA3BF0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v21 = sub_21CB82A34();
    (*(*(v21 - 8) + 8))(v6 + v20, v21);
  }

  else
  {
    v22 = *(v6 + v20);
  }

  v23 = (v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v24 = *(v6 + v1[12] + 8);

  v25 = *(v6 + v1[13] + 8);

  v26 = *(v6 + v1[14] + 8);

  v27 = *(v6 + v1[15] + 8);

  v28 = *(v0 + v23);

  return MEMORY[0x2821FE8E8](v0, v23 + 8, v2 | 7);
}

uint64_t sub_21C7637C4(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEF380, &qword_21CBAC140);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 24);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEF388, &qword_21CBAC148);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 40);

      return v14(v15, a2, v13);
    }
  }
}

void *sub_21C763900(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEF380, &qword_21CBAC140);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 24);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEF388, &qword_21CBAC148);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 40);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_21C763A3C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_21CB82CE4();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_21C763A68(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return sub_21CB82CF4();
}

uint64_t sub_21C763ADC()
{
  v1 = type metadata accessor for PMPasskeyAccountRegistrationContentView(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = *(v0 + 16);
  swift_unknownObjectRelease();
  v6 = v0 + v3;

  v7 = v0 + v3 + v1[6];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEA518, &unk_21CBAC380);
  if (!(*(*(v8 - 8) + 48))(v7, 1, v8) && swift_getEnumCaseMultiPayload() <= 1)
  {
    v9 = sub_21CB80A84();
    (*(*(v9 - 8) + 8))(v7, v9);
  }

  v10 = *(v7 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEF380, &qword_21CBAC140) + 28));

  v11 = v6 + v1[7];
  v12 = *(v11 + 16);
  if (v12 != 255)
  {
    sub_21C8ADF28(*v11, *(v11 + 8), v12);
  }

  v13 = *(v11 + 24);

  v14 = v6 + v1[8];
  v15 = *(v14 + 8);
  if (v15 != 255)
  {
    sub_21C8ADF00(*v14, v15);
  }

  v16 = *(v14 + 16);

  v17 = v6 + v1[9];
  v18 = *(v17 + 8);

  v19 = *(v17 + 16);

  v20 = v6 + v1[10];
  v21 = sub_21CB81B84();
  v22 = *(v21 - 8);
  if (!(*(v22 + 48))(v20, 1, v21))
  {
    (*(v22 + 8))(v20, v21);
  }

  v23 = *(v20 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEF388, &qword_21CBAC148) + 28));

  v24 = *(v6 + v1[11] + 8);

  v25 = *(v6 + v1[12] + 8);

  v26 = *(v6 + v1[13] + 8);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_21C763D98(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEA5A0, &qword_21CB9E6A0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_21C763E08()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEF480, &qword_21CBAC390);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEF488, &unk_21CBAC398);
  sub_21C6EADEC(&qword_27CDEF490, &qword_27CDEF480, &qword_21CBAC390);
  sub_21C71F3FC();
  sub_21C6EADEC(&qword_27CDEF498, &qword_27CDEF488, &unk_21CBAC398);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_21C763F5C()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEA5A0, &qword_21CB9E6A0);
  sub_21C8AFA4C();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_21C764030(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;

  return sub_21C8AFCC4(v2, v3);
}

uint64_t sub_21C764080(uint64_t *a1)
{
  v1 = a1[1];
  v4 = *a1;
  v2 = a1[3];
  sub_21CB828F4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEF980, &qword_21CBAC950);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEF988, &unk_21CBAC958);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEDFC8, &qword_21CBAC3B0);
  sub_21C6EADEC(&qword_27CDEDFF8, &qword_27CDEDFC8, &qword_21CBAC3B0);
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEB8F8, &qword_21CBA26C0);
  sub_21CB828F4();
  sub_21CB828F4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEBC88, &qword_21CBA3170);
  sub_21CB828F4();
  swift_getTupleTypeMetadata2();
  sub_21CB85354();
  swift_getWitnessTable();
  sub_21CB84F04();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDED868, &unk_21CBA7B50);
  sub_21CB828F4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEB8B8, &qword_21CBA4300);
  sub_21CB828F4();
  swift_getWitnessTable();
  sub_21C6EADEC(&qword_27CDED860, &qword_27CDED868, &unk_21CBA7B50);
  swift_getWitnessTable();
  sub_21C6EADEC(&unk_27CDF4590, &qword_27CDEB8B8, &qword_21CBA4300);
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  sub_21CB83B74();
  sub_21CB828F4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEF990, &qword_21CBAC968);
  swift_getTupleTypeMetadata3();
  sub_21CB85354();
  swift_getWitnessTable();
  sub_21CB84EE4();
  sub_21CB828F4();
  sub_21CB828F4();
  sub_21CB828F4();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  sub_21CB828F4();
  sub_21CB828F4();
  sub_21CB828F4();
  sub_21CB828F4();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  sub_21CB828F4();
  swift_getTupleTypeMetadata2();
  sub_21CB85354();
  swift_getWitnessTable();
  sub_21CB84EE4();
  swift_getTupleTypeMetadata3();
  sub_21CB85354();
  swift_getWitnessTable();
  sub_21CB84E14();
  sub_21CB851C4();
  sub_21CB828F4();
  sub_21CB828F4();
  swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_21C6EADEC(&qword_27CDEB900, &qword_27CDEB8F8, &qword_21CBA26C0);
  return swift_getWitnessTable();
}

uint64_t sub_21C76475C()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_21C7647D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *(a1 + 16);
    if (v4 > 1)
    {
      return (v4 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF44B0, &unk_21CBA9AC0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_21C76488C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *(result + 16) = -a2;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF44B0, &unk_21CBA9AC0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_21C764938()
{
  type metadata accessor for PMOnboardingView(255);
  sub_21C8B6F98();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_21C764990(uint64_t a1, uint64_t a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF3010, &unk_21CBA8EB0);
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[6];
LABEL_9:
    v13 = *(v10 + 48);

    return v13(a1 + v11, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CDEC7B8, &unk_21CBABBE0);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[7];
    goto LABEL_9;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC370, &unk_21CBA40B0);
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + a3[8];

  return v15(v16, a2, v14);
}

uint64_t sub_21C764B20(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
    return result;
  }

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF3010, &unk_21CBA8EB0);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[6];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(v5 + v11, a2, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CDEC7B8, &unk_21CBABBE0);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[7];
    goto LABEL_7;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC370, &unk_21CBA40B0);
  v15 = *(*(v14 - 8) + 56);
  v16 = v5 + a4[8];

  return v15(v16, a2, a2, v14);
}

uint64_t sub_21C764D34()
{
  v1 = type metadata accessor for PMAppRecentlyDeletedAccountsView();
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = *(v0 + 16);

  v6 = v0 + v3;
  v7 = *(v0 + v3 + 8);

  v8 = *(v0 + v3 + 24);

  v9 = v1[6];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE480, &qword_21CBA13D0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v10 = sub_21CB823B4();
    (*(*(v10 - 8) + 8))(v6 + v9, v10);
  }

  else
  {
    v11 = *(v6 + v9);
  }

  v12 = v1[7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC0D0, &qword_21CBA3BF0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_21CB82A34();
    (*(*(v13 - 8) + 8))(v6 + v12, v13);
  }

  else
  {
    v14 = *(v6 + v12);
  }

  v15 = v1[8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC000, &qword_21CBA27F0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v16 = sub_21CB83834();
    v17 = *(v16 - 8);
    if (!(*(v17 + 48))(v6 + v15, 1, v16))
    {
      (*(v17 + 8))(v6 + v15, v16);
    }
  }

  else
  {
    v18 = *(v6 + v15);
  }

  sub_21C7025C4(*(v6 + v1[9]), *(v6 + v1[9] + 8));

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_21C764FC0()
{
  v1 = type metadata accessor for PMAppRecentlyDeletedAccountsView();
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = v0 + v3;
  v6 = *(v0 + v3 + 8);

  v7 = *(v0 + v3 + 24);

  v8 = v1[6];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE480, &qword_21CBA13D0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = sub_21CB823B4();
    (*(*(v9 - 8) + 8))(v5 + v8, v9);
  }

  else
  {
    v10 = *(v5 + v8);
  }

  v11 = v1[7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC0D0, &qword_21CBA3BF0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12 = sub_21CB82A34();
    (*(*(v12 - 8) + 8))(v5 + v11, v12);
  }

  else
  {
    v13 = *(v5 + v11);
  }

  v14 = v1[8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC000, &qword_21CBA27F0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v15 = sub_21CB83834();
    v16 = *(v15 - 8);
    if (!(*(v16 + 48))(v5 + v14, 1, v15))
    {
      (*(v16 + 8))(v5 + v14, v15);
    }
  }

  else
  {
    v17 = *(v5 + v14);
  }

  sub_21C7025C4(*(v5 + v1[9]), *(v5 + v1[9] + 8));

  return MEMORY[0x2821FE8E8](v0, v4 + v3 + 1, v2 | 7);
}

uint64_t sub_21C765240()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_21C7654B0()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_21C76564C()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEAC20, &qword_21CBAD710) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(v1 + 64);
  v5 = *(v0 + 16);

  v6 = type metadata accessor for PMAppSourceListModel.Source(0);
  if (!(*(*(v6 - 8) + 48))(v0 + v3, 1, v6) && swift_getEnumCaseMultiPayload() <= 1)
  {
    v7 = sub_21CB85C44();
    (*(*(v7 - 8) + 8))(v0 + v3, v7);
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_21C765868(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEFFA0, &qword_21CBAE130);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_8:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEFFA8, &qword_21CBAE138);
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[5];
LABEL_7:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_8;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC370, &unk_21CBA40B0);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[6];
    goto LABEL_7;
  }

  if (a2 == 0x7FFFFFFF)
  {
    v16 = *(a1 + a3[7]);
    if (v16 >= 0xFFFFFFFF)
    {
      LODWORD(v16) = -1;
    }

    return (v16 + 1);
  }

  else
  {
    v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEACB0, &qword_21CBA0360);
    v18 = *(*(v17 - 8) + 48);
    v19 = a1 + a3[8];

    return v18(v19, a2, v17);
  }
}

uint64_t sub_21C765A54(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEFFA0, &qword_21CBAE130);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_8:

    return v11(v12, a2, a2, v10);
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEFFA8, &qword_21CBAE138);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v10 = v13;
    v14 = *(v13 - 8);
    v15 = a4[5];
LABEL_7:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_8;
  }

  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC370, &unk_21CBA40B0);
  if (*(*(result - 8) + 84) == a3)
  {
    v10 = result;
    v14 = *(result - 8);
    v15 = a4[6];
    goto LABEL_7;
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[7]) = (a2 - 1);
  }

  else
  {
    v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEACB0, &qword_21CBA0360);
    v18 = *(*(v17 - 8) + 56);
    v19 = a1 + a4[8];

    return v18(v19, a2, a2, v17);
  }

  return result;
}

uint64_t sub_21C765C44()
{
  v1 = type metadata accessor for PMAppRootNavigationView();
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 40) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = *(v0 + 16);
  swift_unknownObjectRelease();

  v6 = v0 + v3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEFFA0, &qword_21CBAE130);
  (*(*(v7 - 8) + 8))(v0 + v3, v7);
  v8 = v0 + v3 + v1[5];
  v9 = *(v8 + 8);

  v10 = *(v8 + 24);

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEFFA8, &qword_21CBAE138);
  v12 = v11[8];
  v13 = sub_21CB83AD4();
  (*(*(v13 - 8) + 8))(v8 + v12, v13);
  v14 = *(v8 + v11[9]);

  v15 = *(v8 + v11[10]);

  v16 = v1[6];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC000, &qword_21CBA27F0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v17 = sub_21CB83834();
    v18 = *(v17 - 8);
    if (!(*(v18 + 48))(v6 + v16, 1, v17))
    {
      (*(v18 + 8))(v6 + v16, v17);
    }
  }

  else
  {
    v19 = *(v6 + v16);
  }

  v20 = *(v6 + v1[7]);

  v21 = v1[8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEADD0, &qword_21CBA6F70);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v22 = sub_21CB81FE4();
    (*(*(v22 - 8) + 8))(v6 + v21, v22);
  }

  else
  {
    v23 = *(v6 + v21);
  }

  v24 = *(v6 + v1[9] + 24);

  v25 = *(v6 + v1[10]);

  v26 = *(v6 + v1[11]);

  v27 = *(v6 + v1[12]);

  v28 = *(v6 + v1[13]);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_21C765F50()
{
  v1 = type metadata accessor for PMAppRootNavigationView();
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = *(v0 + 16);
  swift_unknownObjectRelease();
  v6 = v0 + v3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEFFA0, &qword_21CBAE130);
  (*(*(v7 - 8) + 8))(v0 + v3, v7);
  v8 = v0 + v3 + v1[5];
  v9 = *(v8 + 8);

  v10 = *(v8 + 24);

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEFFA8, &qword_21CBAE138);
  v12 = v11[8];
  v13 = sub_21CB83AD4();
  (*(*(v13 - 8) + 8))(v8 + v12, v13);
  v14 = *(v8 + v11[9]);

  v15 = *(v8 + v11[10]);

  v16 = v1[6];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC000, &qword_21CBA27F0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v17 = sub_21CB83834();
    v18 = *(v17 - 8);
    if (!(*(v18 + 48))(v6 + v16, 1, v17))
    {
      (*(v18 + 8))(v6 + v16, v17);
    }
  }

  else
  {
    v19 = *(v6 + v16);
  }

  v20 = *(v6 + v1[7]);

  v21 = v1[8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEADD0, &qword_21CBA6F70);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v22 = sub_21CB81FE4();
    (*(*(v22 - 8) + 8))(v6 + v21, v22);
  }

  else
  {
    v23 = *(v6 + v21);
  }

  v24 = (v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v25 = *(v6 + v1[9] + 24);

  v26 = *(v6 + v1[10]);

  v27 = *(v6 + v1[11]);

  v28 = *(v6 + v1[12]);

  v29 = *(v6 + v1[13]);

  v30 = *(v0 + v24);

  return MEMORY[0x2821FE8E8](v0, v24 + 8, v2 | 7);
}

uint64_t sub_21C7662C0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_21CB82E64();
  *a1 = result & 1;
  return result;
}

double sub_21C7662F0@<D0>(_OWORD *a1@<X8>)
{
  sub_21C726188();
  sub_21CB82F94();
  result = *&v3;
  *a1 = v3;
  return result;
}

uint64_t sub_21C766370()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[5];

  v4 = v0[6];

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_21C7663EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0358, &unk_21CBAEB00);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC370, &unk_21CBA40B0);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_21C7664F4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0358, &unk_21CBAEB00);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC370, &unk_21CBA40B0);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_21C766664(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return sub_21C902654(v4);
}

uint64_t sub_21C7666D4()
{
  v1 = (type metadata accessor for PMAppSecurityRecommendationsList() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*v1 + 64);
  v5 = *(v0 + 16);
  swift_unknownObjectRelease();
  v6 = v0 + v3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0358, &unk_21CBAEB00);
  (*(*(v7 - 8) + 8))(v0 + v3, v7);
  v8 = v1[7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC000, &qword_21CBA27F0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = sub_21CB83834();
    v10 = *(v9 - 8);
    if (!(*(v10 + 48))(v6 + v8, 1, v9))
    {
      (*(v10 + 8))(v6 + v8, v9);
    }
  }

  else
  {
    v11 = *(v6 + v8);
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_21C7668A0()
{
  v1 = (type metadata accessor for PMAppSecurityRecommendationsList() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*v1 + 64);
  v5 = *(v0 + 16);
  swift_unknownObjectRelease();
  v6 = v0 + v3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0358, &unk_21CBAEB00);
  (*(*(v7 - 8) + 8))(v0 + v3, v7);
  v8 = v1[7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC000, &qword_21CBA27F0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = sub_21CB83834();
    v10 = *(v9 - 8);
    if (!(*(v10 + 48))(v6 + v8, 1, v9))
    {
      (*(v10 + 8))(v6 + v8, v9);
    }
  }

  else
  {
    v11 = *(v6 + v8);
  }

  v12 = (v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v13 = *(v0 + v12);

  return MEMORY[0x2821FE8E8](v0, v12 + 8, v2 | 7);
}

uint64_t sub_21C766A78()
{
  v1 = (type metadata accessor for PMAppSecurityRecommendationsList() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*v1 + 64);
  v5 = *(v0 + 16);
  swift_unknownObjectRelease();
  v6 = v0 + v3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0358, &unk_21CBAEB00);
  (*(*(v7 - 8) + 8))(v0 + v3, v7);
  v8 = v1[7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC000, &qword_21CBA27F0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = sub_21CB83834();
    v10 = *(v9 - 8);
    if (!(*(v10 + 48))(v6 + v8, 1, v9))
    {
      (*(v10 + 8))(v6 + v8, v9);
    }
  }

  else
  {
    v11 = *(v6 + v8);
  }

  v12 = (v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v13 = *(v0 + v12 + 8);

  return MEMORY[0x2821FE8E8](v0, v12 + 32, v2 | 7);
}

uint64_t sub_21C766C58()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF0390, &qword_21CBAEBA8);
  type metadata accessor for PMAppSecurityRecommendationsModel();
  sub_21C8EFFC4();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_21C766D1C(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF44B0, &unk_21CBA9AC0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_21C766DD8(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF44B0, &unk_21CBA9AC0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_21C766E88(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF44B0, &unk_21CBA9AC0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 32);

    return v9(v10, a2, v8);
  }
}

void *sub_21C766F44(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF44B0, &unk_21CBA9AC0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 32);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_21C766FF8()
{
  v1 = v0[2];

  if (v0[6])
  {
    __swift_destroy_boxed_opaque_existential_0(v0 + 3);
  }

  v2 = v0[9];

  v3 = v0[11];

  return MEMORY[0x2821FE8E8](v0, 96, 7);
}

uint64_t sub_21C76712C()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_21C7672BC(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;

  return sub_21C9020E4(v2, v3);
}

uint64_t sub_21C767300(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return sub_21C905410(v4);
}

uint64_t sub_21C76732C()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_21C767364()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[5];

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_21C767400(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  type metadata accessor for PMImageBadgeModifier();
  swift_getWitnessTable();
  sub_21CB83744();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF0CD8, &qword_21CBB0020);
  sub_21CB828F4();
  sub_21CB828F4();
  sub_21CB828F4();
  sub_21CB828F4();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_21CB825B4();
  swift_getWitnessTable();
  sub_21CB82AD4();
  sub_21CB828F4();
  sub_21CB834A4();
  swift_getWitnessTable();
  sub_21C6EADEC(&qword_27CDF0CE0, &qword_27CDF0CD8, &qword_21CBB0020);
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_21C76768C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0DA0, &qword_21CBB01F8);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC370, &unk_21CBA40B0);
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 40);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_21C7677CC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0DA0, &qword_21CBB01F8);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC370, &unk_21CBA40B0);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 40);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t sub_21C767910@<X0>(uint64_t *a1@<X8>)
{
  result = sub_21CB82C34();
  *a1 = result;
  return result;
}

uint64_t sub_21C7679E0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return sub_21C880700(v4);
}

uint64_t sub_21C767AB0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1100, &qword_21CBB0A20);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_21C767B28()
{
  v1 = v0[3];

  v2 = v0[6];

  v3 = v0[8];

  v4 = v0[10];

  v5 = v0[12];

  return MEMORY[0x2821FE8E8](v0, 104, 7);
}

uint64_t sub_21C767BA8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEFEA0, &qword_21CBADCC8);
  v5 = (*(*(v4 - 8) + 48))(a1, a2, v4);
  if (v5 >= 2)
  {
    return v5 - 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_21C767C20(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 1);
  }

  else
  {
    v5 = 0;
  }

  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEFEA0, &qword_21CBADCC8);
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

uint64_t sub_21C767CEC()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[5];

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_21C767D34(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for PMAccount(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 28) + 8);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    v13 = v12 - 1;
    if (v13 < 0)
    {
      v13 = -1;
    }

    return (v13 + 1);
  }
}

uint64_t sub_21C767E04(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for PMAccount(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 20);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 28) + 8) = a2;
  }

  return result;
}

uint64_t sub_21C767ED0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1380, &unk_21CBB10F0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21C767F40(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1380, &unk_21CBB10F0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_21C767FD0@<X0>(void *a1@<X8>)
{
  sub_21C7D37FC();
  result = sub_21CB82F94();
  *a1 = v3;
  return result;
}

uint64_t sub_21C768024@<X0>(_BYTE *a1@<X8>)
{
  sub_21C7D38A8();
  result = sub_21CB82F94();
  *a1 = v3;
  return result;
}

uint64_t sub_21C768074(char *a1)
{
  v2 = *a1;
  sub_21C7D38A8();
  return sub_21CB82FA4();
}

uint64_t sub_21C7680E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC5A0, &unk_21CBA5080);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 40);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC370, &unk_21CBA40B0);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 48);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_21C76821C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC5A0, &unk_21CBA5080);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 40);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC370, &unk_21CBA40B0);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 48);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_21C768484()
{
  v1 = type metadata accessor for PMCombinedAccountDetailsView();
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = *(v0 + 16);
  swift_unknownObjectRelease();
  v6 = v0 + v3;
  v7 = *(v0 + v3 + 8);

  v8 = *(v0 + v3 + 24);

  v9 = *(v0 + v3 + 40);

  v10 = *(v0 + v3 + 48);
  v11 = *(v0 + v3 + 56);
  v12 = *(v0 + v3 + 64);
  sub_21C79C1F4();
  sub_21C940E04(*(v6 + 72), *(v6 + 80));
  sub_21C7025C4(*(v6 + 88), *(v6 + 96));
  v13 = v1[10];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB998, &qword_21CBA2700);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v14 = sub_21CB82834();
    (*(*(v14 - 8) + 8))(v6 + v13, v14);
  }

  else
  {
    v15 = *(v6 + v13);
  }

  sub_21C7025C4(*(v6 + v1[11]), *(v6 + v1[11] + 8));
  v16 = v1[12];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC000, &qword_21CBA27F0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v17 = sub_21CB83834();
    v18 = *(v17 - 8);
    if (!(*(v18 + 48))(v6 + v16, 1, v17))
    {
      (*(v18 + 8))(v6 + v16, v17);
    }
  }

  else
  {
    v19 = *(v6 + v16);
  }

  v20 = (v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v21 = (v20 + 15) & 0xFFFFFFFFFFFFFFF8;
  sub_21C7025C4(*(v6 + v1[13]), *(v6 + v1[13] + 8));
  v22 = *(v6 + v1[15] + 8);

  return MEMORY[0x2821FE8E8](v0, v21 + 8, v2 | 7);
}

unint64_t sub_21C7688E8(id *a1, uint64_t a2, uint64_t *a3)
{
  v3 = *a3;
  v4 = *a1;
  v5 = *a1;
  return sub_21C87ED30(v4, v3);
}

uint64_t sub_21C7689A4()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_21C7689DC()
{
  v1 = type metadata accessor for PMCombinedAccountDetailsView();
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(*(v1 - 1) + 64);

  v5 = v0 + v3;
  v6 = *(v0 + v3 + 8);

  v7 = *(v0 + v3 + 24);

  v8 = *(v0 + v3 + 40);

  v9 = *(v0 + v3 + 48);
  v10 = *(v0 + v3 + 56);
  v11 = *(v0 + v3 + 64);
  sub_21C79C1F4();
  sub_21C940E04(*(v5 + 72), *(v5 + 80));
  sub_21C7025C4(*(v5 + 88), *(v5 + 96));
  v12 = v1[10];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB998, &qword_21CBA2700);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_21CB82834();
    (*(*(v13 - 8) + 8))(v5 + v12, v13);
  }

  else
  {
    v14 = *(v5 + v12);
  }

  sub_21C7025C4(*(v5 + v1[11]), *(v5 + v1[11] + 8));
  v15 = v1[12];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC000, &qword_21CBA27F0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v16 = sub_21CB83834();
    v17 = *(v16 - 8);
    if (!(*(v17 + 48))(v5 + v15, 1, v16))
    {
      (*(v17 + 8))(v5 + v15, v16);
    }
  }

  else
  {
    v18 = *(v5 + v15);
  }

  sub_21C7025C4(*(v5 + v1[13]), *(v5 + v1[13] + 8));
  v19 = *(v5 + v1[15] + 8);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_21C768C40()
{
  v1 = type metadata accessor for PMCombinedAccountDetailsView();
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = *(v0 + 16);
  swift_unknownObjectRelease();
  v6 = v0 + v3;
  v7 = *(v0 + v3 + 8);

  v8 = *(v0 + v3 + 24);

  v9 = *(v0 + v3 + 40);

  v10 = *(v0 + v3 + 48);
  v11 = *(v0 + v3 + 56);
  v12 = *(v0 + v3 + 64);
  sub_21C79C1F4();
  sub_21C940E04(*(v6 + 72), *(v6 + 80));
  sub_21C7025C4(*(v6 + 88), *(v6 + 96));
  v13 = v1[10];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB998, &qword_21CBA2700);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v14 = sub_21CB82834();
    (*(*(v14 - 8) + 8))(v6 + v13, v14);
  }

  else
  {
    v15 = *(v6 + v13);
  }

  sub_21C7025C4(*(v6 + v1[11]), *(v6 + v1[11] + 8));
  v16 = v1[12];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC000, &qword_21CBA27F0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v17 = sub_21CB83834();
    v18 = *(v17 - 8);
    if (!(*(v18 + 48))(v6 + v16, 1, v17))
    {
      (*(v18 + 8))(v6 + v16, v17);
    }
  }

  else
  {
    v19 = *(v6 + v16);
  }

  sub_21C7025C4(*(v6 + v1[13]), *(v6 + v1[13] + 8));
  v20 = *(v6 + v1[15] + 8);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

id sub_21C768EE0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  result = sub_21C95C78C();
  *a2 = result;
  return result;
}

void sub_21C768F0C(void **a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(*a2 + 16);
  *(*a2 + 16) = *a1;
  v4 = v2;

  sub_21C942960(v3);
}

uint64_t sub_21C768F50@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = sub_21C95C884();
  *a2 = result;
  return result;
}

uint64_t sub_21C768F7C(void *a1, uint64_t a2)
{
  v2 = *(*a2 + 24);
  *(*a2 + 24) = *a1;
}

uint64_t sub_21C768FE4()
{
  v1 = type metadata accessor for PMCombinedAccountDetailsView();
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = v0 + v3;
  v6 = *(v0 + v3 + 8);

  v7 = *(v0 + v3 + 24);

  v8 = *(v0 + v3 + 40);

  v9 = *(v0 + v3 + 48);
  v10 = *(v0 + v3 + 56);
  v11 = *(v0 + v3 + 64);
  sub_21C79C1F4();
  sub_21C940E04(*(v5 + 72), *(v5 + 80));
  sub_21C7025C4(*(v5 + 88), *(v5 + 96));
  v12 = v1[10];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB998, &qword_21CBA2700);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_21CB82834();
    (*(*(v13 - 8) + 8))(v5 + v12, v13);
  }

  else
  {
    v14 = *(v5 + v12);
  }

  sub_21C7025C4(*(v5 + v1[11]), *(v5 + v1[11] + 8));
  v15 = v1[12];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC000, &qword_21CBA27F0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v16 = sub_21CB83834();
    v17 = *(v16 - 8);
    if (!(*(v17 + 48))(v5 + v15, 1, v16))
    {
      (*(v17 + 8))(v5 + v15, v16);
    }
  }

  else
  {
    v18 = *(v5 + v15);
  }

  v19 = (v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  sub_21C7025C4(*(v5 + v1[13]), *(v5 + v1[13] + 8));
  v20 = *(v5 + v1[15] + 8);

  return MEMORY[0x2821FE8E8](v0, v19 + 8, v2 | 7);
}

uint64_t sub_21C769264@<X0>(uint64_t *a1@<X8>)
{
  result = sub_21CB82E94();
  *a1 = result;
  return result;
}

uint64_t sub_21C769290(uint64_t *a1)
{
  v1 = *a1;

  return sub_21CB82EA4();
}

uint64_t sub_21C7693E4()
{
  v1 = (type metadata accessor for PMConfigureCredentialProviderExtensionView() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  v5 = v0 + v3;

  v6 = v1[7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE480, &qword_21CBA13D0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = sub_21CB823B4();
    (*(*(v7 - 8) + 8))(v5 + v6, v7);
  }

  else
  {
    v8 = *(v5 + v6);
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_21C769500()
{
  _Block_release(*(v0 + 24));

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_21C76954C(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF3010, &unk_21CBA8EB0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_21C769608(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF3010, &unk_21CBA8EB0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_21C7696BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC5A8, &qword_21CBA43E0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 > 1)
    {
      return (v10 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_21C769784(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC5A8, &qword_21CBA43E0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = -a2;
  }

  return result;
}

uint64_t sub_21C769858(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1EC8, &qword_21CBB2AB8);
  v5 = (*(*(v4 - 8) + 48))(a1, a2, v4);
  if (v5 >= 2)
  {
    return v5 - 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_21C7698D0(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 1);
  }

  else
  {
    v5 = 0;
  }

  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1EC8, &qword_21CBB2AB8);
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

uint64_t sub_21C769A38()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  v3 = *(v0 + 48);
  v4 = *(v0 + 56);
  v5 = *(v0 + 64);
  sub_21C70AC30();
  v6 = *(v0 + 80);

  return MEMORY[0x2821FE8E8](v0, 89, 7);
}

uint64_t sub_21C769AA4()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF1F10, &qword_21CBB2C48);
  sub_21C94B05C();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_21C769B68()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_21C769BB0(uint64_t a1, uint64_t a2)
{
  v4 = sub_21CB85C44();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_21C769C1C(uint64_t a1, uint64_t a2)
{
  v4 = sub_21CB85C44();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_21C769C8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for PMSharingGroup();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_21C769D54(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for PMSharingGroup();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2;
  }

  return result;
}

uint64_t sub_21C769E40()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  v2 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_21C769E9C(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC370, &unk_21CBA40B0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

void *sub_21C769F58(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC370, &unk_21CBA40B0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_21C76A010(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC370, &unk_21CBA40B0);
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 24);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_21C76A0D8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 8) = a2;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC370, &unk_21CBA40B0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_21C76A29C()
{
  v1 = (type metadata accessor for PMAppAccountDetailsWindowView() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  v5 = v0 + v3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF2538, &qword_21CBB40E8);
  (*(*(v6 - 8) + 8))(v0 + v3, v6);
  v7 = v1[7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF2518, &qword_21CBB40D0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = sub_21CB832B4();
    (*(*(v8 - 8) + 8))(v5 + v7, v8);
  }

  else
  {
    v9 = *(v5 + v7);
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_21C76A3FC@<X0>(_BYTE *a1@<X8>)
{
  sub_21C7D79CC();
  result = sub_21CB82F94();
  *a1 = v3;
  return result;
}

uint64_t sub_21C76A44C(char *a1)
{
  v2 = *a1;
  sub_21C7D79CC();
  return sub_21CB82FA4();
}

uint64_t sub_21C76A4A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF2538, &qword_21CBB40E8);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF2560, &unk_21CBC34F0);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_21C76A5A8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF2538, &qword_21CBB40E8);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF2560, &unk_21CBC34F0);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_21C76A6C0()
{
  v1 = *(v0 + 40);

  v2 = *(v0 + 56);

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_21C76A728(uint64_t *a1)
{
  v1 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF2618, &qword_21CBB4300);
  swift_getTupleTypeMetadata3();
  sub_21CB85354();
  swift_getWitnessTable();
  sub_21CB84E14();

  return swift_getWitnessTable();
}

void sub_21C76A7EC(unsigned __int8 *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  sub_21CAD044C();
}

uint64_t sub_21C76A8D8()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_21C76A928()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF2740, &qword_21CBB4848);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF2760, &qword_21CBB4858);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF2738, &qword_21CBB4840);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF2730, &qword_21CBB4838);
  sub_21CB829D4();
  sub_21C6EADEC(&qword_27CDF2758, &qword_27CDF2730, &qword_21CBB4838);
  sub_21C9630D4(&qword_27CDED1A0, MEMORY[0x277CDDAB8]);
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF2768, &qword_21CBB4860);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEDA80, &unk_21CBA81E0);
  sub_21C6EADEC(&qword_27CDF2770, &qword_27CDEDA80, &unk_21CBA81E0);
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_21C76AB54()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_21C76AB90()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_21C76ABD0()
{
  v1 = *(v0 + 16);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = v4 + *(v2 + 64);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(AssociatedTypeWitness - 8);
  v8 = *(v7 + 80);
  v9 = (v5 + v8) & ~v8;
  v10 = *(v7 + 64);
  v11 = v3 | v8;
  (*(v2 + 8))(v0 + v4, v1);
  (*(v7 + 8))(v0 + v9, AssociatedTypeWitness);

  return MEMORY[0x2821FE8E8](v0, v9 + v10, v11 | 7);
}

uint64_t sub_21C76AD3C()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = *(type metadata accessor for PMFocusedCopyMenu() - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 32) & ~v4;
  v6 = *(v3 + 64);
  (*(*(v2 - 8) + 8))(v0 + v5, v2);

  return MEMORY[0x2821FE8E8](v0, v5 + v6, v4 | 7);
}

uint64_t sub_21C76AE10(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  swift_getAssociatedTypeWitness();
  sub_21CB85864();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEEBA0, &qword_21CBABC80);
  swift_getWitnessTable();
  swift_getAssociatedConformanceWitness();
  sub_21CB85004();
  sub_21C735EA0();
  return swift_getWitnessTable();
}

uint64_t sub_21C76AF20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21CB823B4();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_21C76AFE8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_21CB823B4();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2;
  }

  return result;
}

uint64_t sub_21C76B0E4()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_21C76B11C()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_21C76B158(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return sub_21C96A0B8(v4);
}

uint64_t sub_21C76B198(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for PMSharingGroup();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_3:

    return v9(v10, a2, v8);
  }

  if (a2 == 0x7FFFFFFF)
  {
    v12 = *(a1 + a3[5]);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }

  else
  {
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF2A20, &unk_21CBB8EA0);
    v14 = *(v13 - 8);
    if (*(v14 + 84) == a2)
    {
      v8 = v13;
      v9 = *(v14 + 48);
      v10 = a1 + a3[7];
      goto LABEL_3;
    }

    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF3010, &unk_21CBA8EB0);
    v16 = *(*(v15 - 8) + 48);
    v17 = a1 + a3[8];

    return v16(v17, a2, v15);
  }
}

uint64_t sub_21C76B324(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = type metadata accessor for PMSharingGroup();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_3:

    return v11(v12, a2, a2, v10);
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[5]) = (a2 - 1);
    return result;
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF2A20, &unk_21CBB8EA0);
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + a4[7];
    goto LABEL_3;
  }

  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF3010, &unk_21CBA8EB0);
  v16 = *(*(v15 - 8) + 56);
  v17 = a1 + a4[8];

  return v16(v17, a2, a2, v15);
}

uint64_t sub_21C76B4BC()
{
  v1 = (type metadata accessor for PMSharingGroup() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  v5 = sub_21CB85C44();
  (*(*(v5 - 8) + 8))(v0 + v3, v5);
  v6 = *(v0 + v3 + v1[7] + 8);

  v7 = *(v0 + v3 + v1[8]);

  v8 = *(v0 + v3 + v1[9] + 8);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_21C76B5D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for PMSharingGroup();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC370, &unk_21CBA40B0);
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 36);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_21C76B704(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for PMSharingGroup();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC370, &unk_21CBA40B0);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 36);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t sub_21C76BBC4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1FA8, &unk_21CBB9290);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21C76BC40()
{
  v1 = (type metadata accessor for PMEditGroupView() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*v1 + 64);
  v5 = *(v0 + 16);
  swift_unknownObjectRelease();
  v6 = v0 + v3;
  v7 = sub_21CB85C44();
  (*(*(v7 - 8) + 8))(v0 + v3, v7);
  v8 = type metadata accessor for PMSharingGroup();
  v9 = *(v0 + v3 + v8[5] + 8);

  v10 = *(v0 + v3 + v8[6]);

  v11 = *(v0 + v3 + v8[7] + 8);

  v12 = *(v0 + v3 + v1[7] + 8);

  v13 = v0 + v3 + v1[8];
  v14 = *v13;
  v15 = *(v13 + 8);
  v16 = *(v13 + 16);
  sub_21C70AC30();

  v17 = *(v0 + v3 + v1[10] + 8);

  v18 = v1[11];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC000, &qword_21CBA27F0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v19 = sub_21CB83834();
    v20 = *(v19 - 8);
    if (!(*(v20 + 48))(v6 + v18, 1, v19))
    {
      (*(v20 + 8))(v6 + v18, v19);
    }
  }

  else
  {
    v21 = *(v6 + v18);
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_21C76BE64()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_21C76BEFC()
{
  v1 = (type metadata accessor for PMEditGroupView() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*v1 + 64);
  v5 = *(v0 + 16);
  swift_unknownObjectRelease();
  v6 = v0 + v3;
  v7 = sub_21CB85C44();
  (*(*(v7 - 8) + 8))(v0 + v3, v7);
  v8 = type metadata accessor for PMSharingGroup();
  v9 = *(v0 + v3 + v8[5] + 8);

  v10 = *(v0 + v3 + v8[6]);

  v11 = *(v0 + v3 + v8[7] + 8);

  v12 = *(v0 + v3 + v1[7] + 8);

  v13 = v0 + v3 + v1[8];
  v14 = *v13;
  v15 = *(v13 + 8);
  v16 = *(v13 + 16);
  sub_21C70AC30();

  v17 = *(v0 + v3 + v1[10] + 8);

  v18 = v1[11];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC000, &qword_21CBA27F0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v19 = sub_21CB83834();
    v20 = *(v19 - 8);
    if (!(*(v20 + 48))(v6 + v18, 1, v19))
    {
      (*(v20 + 8))(v6 + v18, v19);
    }
  }

  else
  {
    v21 = *(v6 + v18);
  }

  v22 = (v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v23 = *(v0 + v22 + 8);

  return MEMORY[0x2821FE8E8](v0, v22 + 17, v2 | 7);
}

uint64_t sub_21C76C138()
{
  v1 = (type metadata accessor for PMEditGroupView() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*v1 + 64);
  v5 = *(v0 + 16);
  swift_unknownObjectRelease();
  v6 = v0 + v3;
  v7 = sub_21CB85C44();
  (*(*(v7 - 8) + 8))(v0 + v3, v7);
  v8 = type metadata accessor for PMSharingGroup();
  v9 = *(v0 + v3 + v8[5] + 8);

  v10 = *(v0 + v3 + v8[6]);

  v11 = *(v0 + v3 + v8[7] + 8);

  v12 = *(v0 + v3 + v1[7] + 8);

  v13 = v0 + v3 + v1[8];
  v14 = *v13;
  v15 = *(v13 + 8);
  v16 = *(v13 + 16);
  sub_21C70AC30();

  v17 = *(v0 + v3 + v1[10] + 8);

  v18 = v1[11];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC000, &qword_21CBA27F0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v19 = sub_21CB83834();
    v20 = *(v19 - 8);
    if (!(*(v20 + 48))(v6 + v18, 1, v19))
    {
      (*(v20 + 8))(v6 + v18, v19);
    }
  }

  else
  {
    v21 = *(v6 + v18);
  }

  v22 = (v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v23 = *(v0 + v22 + 8);

  return MEMORY[0x2821FE8E8](v0, v22 + 16, v2 | 7);
}

uint64_t sub_21C76C374()
{
  v1 = (type metadata accessor for PMEditGroupView() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*v1 + 64);
  v5 = *(v0 + 16);
  swift_unknownObjectRelease();
  v6 = v0 + v3;
  v7 = sub_21CB85C44();
  (*(*(v7 - 8) + 8))(v0 + v3, v7);
  v8 = type metadata accessor for PMSharingGroup();
  v9 = *(v0 + v3 + v8[5] + 8);

  v10 = *(v0 + v3 + v8[6]);

  v11 = *(v0 + v3 + v8[7] + 8);

  v12 = *(v0 + v3 + v1[7] + 8);

  v13 = v0 + v3 + v1[8];
  v14 = *v13;
  v15 = *(v13 + 8);
  v16 = *(v13 + 16);
  sub_21C70AC30();

  v17 = *(v0 + v3 + v1[10] + 8);

  v18 = v1[11];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC000, &qword_21CBA27F0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v19 = sub_21CB83834();
    v20 = *(v19 - 8);
    if (!(*(v20 + 48))(v6 + v18, 1, v19))
    {
      (*(v20 + 8))(v6 + v18, v19);
    }
  }

  else
  {
    v21 = *(v6 + v18);
  }

  v22 = (v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v23 = *(v0 + v22);

  return MEMORY[0x2821FE8E8](v0, v22 + 8, v2 | 7);
}

uint64_t sub_21C76C5C4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_21CB82E74();
  *a1 = result & 1;
  return result;
}

uint64_t sub_21C76C5F4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_21CB82E84();
  *a1 = result & 1;
  return result;
}

uint64_t sub_21C76C668(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21CB81884();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_21C76C728(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_21CB81884();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_21C76C7F4(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF4600, &qword_21CBB5D00);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_12:

    return v9(v10, a2, v8);
  }

  v11 = sub_21CB817E4();
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[5];
LABEL_11:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_12;
  }

  v14 = sub_21CB81A04();
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[6];
    goto LABEL_11;
  }

  v15 = sub_21CB81744();
  if (*(*(v15 - 8) + 84) == a2)
  {
    v8 = v15;
    v12 = *(v15 - 8);
    v13 = a3[7];
    goto LABEL_11;
  }

  v16 = sub_21CB817C4();
  if (*(*(v16 - 8) + 84) == a2)
  {
    v8 = v16;
    v12 = *(v16 - 8);
    v13 = a3[8];
    goto LABEL_11;
  }

  v18 = *(a1 + a3[13]);
  if (v18 >= 0xFFFFFFFF)
  {
    LODWORD(v18) = -1;
  }

  return (v18 + 1);
}

uint64_t sub_21C76C9E4(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF4600, &qword_21CBB5D00);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    v13 = sub_21CB817E4();
    if (*(*(v13 - 8) + 84) == a3)
    {
      v10 = v13;
      v14 = *(v13 - 8);
      v15 = a4[5];
    }

    else
    {
      v16 = sub_21CB81A04();
      if (*(*(v16 - 8) + 84) == a3)
      {
        v10 = v16;
        v14 = *(v16 - 8);
        v15 = a4[6];
      }

      else
      {
        v17 = sub_21CB81744();
        if (*(*(v17 - 8) + 84) == a3)
        {
          v10 = v17;
          v14 = *(v17 - 8);
          v15 = a4[7];
        }

        else
        {
          result = sub_21CB817C4();
          if (*(*(result - 8) + 84) != a3)
          {
            *(a1 + a4[13]) = (a2 - 1);
            return result;
          }

          v10 = result;
          v14 = *(result - 8);
          v15 = a4[8];
        }
      }
    }

    v11 = *(v14 + 56);
    v12 = a1 + v15;
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_21C76CC18()
{
  v1 = type metadata accessor for PMCredentialPickerHeaderContentView(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = v0 + v3;
  v6 = sub_21CB81864();
  v7 = *(v6 - 8);
  if (!(*(v7 + 48))(v0 + v3, 1, v6))
  {
    (*(v7 + 8))(v0 + v3, v6);
  }

  v8 = v1[5];
  v9 = sub_21CB817E4();
  (*(*(v9 - 8) + 8))(v5 + v8, v9);
  v10 = v1[6];
  v11 = sub_21CB81A04();
  (*(*(v11 - 8) + 8))(v5 + v10, v11);
  v12 = v1[7];
  v13 = sub_21CB81744();
  (*(*(v13 - 8) + 8))(v5 + v12, v13);
  v14 = v1[8];
  v15 = sub_21CB817C4();
  (*(*(v15 - 8) + 8))(v5 + v14, v15);

  v16 = *(v5 + v1[13]);

  v17 = v5 + v1[14];
  v18 = *(v17 + 8);

  v19 = *(v17 + 16);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

double sub_21C76CF7C@<D0>(_OWORD *a1@<X8>)
{
  sub_21C72C1CC();
  sub_21CB82F94();
  result = *&v3;
  *a1 = v3;
  return result;
}

uint64_t sub_21C76CFE0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF2DD0, &qword_21CBB6438);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_21C76D058(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF2DD0, &qword_21CBB6438);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_21C76D100()
{
  v1 = (type metadata accessor for PMEditableWebsite() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  v5 = sub_21CB80E34();
  (*(*(v5 - 8) + 8))(v0 + v3, v5);
  v6 = *(v0 + v3 + v1[7] + 8);

  if (*(v0 + v3 + v1[8] + 8) >= 2uLL)
  {
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_21C76D20C()
{
  v1 = (type metadata accessor for PMEditableWebsite() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  v5 = sub_21CB80E34();
  (*(*(v5 - 8) + 8))(v0 + v3, v5);
  v6 = *(v0 + v3 + v1[7] + 8);

  if (*(v0 + v3 + v1[8] + 8) >= 2uLL)
  {
  }

  v7 = (v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v0 + v7 + 16);

  v9 = *(v0 + v7 + 32);

  v10 = *(v0 + v7 + 40);
  v11 = *(v0 + v7 + 48);
  v12 = *(v0 + v7 + 56);
  sub_21C79C1F4();

  return MEMORY[0x2821FE8E8](v0, v7 + 57, v2 | 7);
}

void sub_21C76D358()
{
  sub_21C8F0690();

  JUMPOUT(0x21CF131E0);
}

uint64_t sub_21C76D3B0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF2F58, &qword_21CBB6A68);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21C76D420(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF2F58, &qword_21CBB6A68);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_21C76D49C(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF3010, &unk_21CBA8EB0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_21C76D558(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF3010, &unk_21CBA8EB0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_21C76D608()
{
  v1 = (type metadata accessor for PMOtpauthQRCodeScannerView() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  v5 = v0 + v3;
  v6 = *(v0 + v3 + 8);

  v7 = v1[7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE480, &qword_21CBA13D0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = sub_21CB823B4();
    (*(*(v8 - 8) + 8))(v5 + v7, v8);
  }

  else
  {
    v9 = *(v5 + v7);
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_21C76D728()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  v3 = *(v0 + 56);

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_21C76D778()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_21C76D804()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF30E0, &qword_21CBB7128);
  sub_21C98FC48();
  sub_21C71F3FC();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_21C76D894(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21CB818C4();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 2)
    {
      return ((v10 + 2147483646) & 0x7FFFFFFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_21C76D9F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for PMSharingGroup();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_21C76DA9C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for PMSharingGroup();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_21C76DB40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF3178, &qword_21CBB7260);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF3180, &qword_21CBB7268);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_21C76DC48(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF3178, &qword_21CBB7260);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF3180, &qword_21CBB7268);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_21C76DD5C()
{
  v1 = type metadata accessor for PMRemoveGroupMemberConfirmationAlert.Parameters(0);
  v2 = *(v1 - 1);
  v55 = *(v2 + 80);
  v3 = (v55 + 16) & ~v55;
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v51 = type metadata accessor for PMRemoveGroupMemberConfirmationAlert(0);
  v53 = *(*(v51 - 8) + 80);
  v54 = *(*(v51 - 8) + 64);
  v52 = (v4 + v53 + 112) & ~v53;
  v5 = *(v0 + v3);

  v6 = *(v0 + v3 + 8);

  v7 = *(v0 + v3 + 24);

  v8 = *(v0 + v3 + 32);

  v9 = v0 + v3 + v1[6];
  v10 = sub_21CB85C44();
  v11 = *(*(v10 - 8) + 8);
  v11(v9, v10);
  v12 = type metadata accessor for PMSharingGroup();
  v13 = *(v9 + v12[5] + 8);

  v14 = *(v9 + v12[6]);

  v15 = *(v9 + v12[7] + 8);

  v16 = v0 + v3 + v1[7];
  if (*(v16 + 40))
  {
    v17 = *(v16 + 8);

    v18 = *(v16 + 24);

    v19 = *(v16 + 40);

    v20 = *(v16 + 56);

    v21 = *(v16 + 72);

    v22 = *(v16 + 96);
  }

  v23 = *(v0 + v3 + v1[8] + 8);

  v24 = *(v0 + v4 + 8);

  v25 = *(v0 + v4 + 24);

  v26 = *(v0 + v4 + 40);

  v27 = *(v0 + v4 + 56);

  v28 = *(v0 + v4 + 72);

  v29 = *(v0 + v4 + 96);

  v30 = (v0 + v52);
  if (!(*(v2 + 48))(v0 + v52, 1, v1))
  {
    v31 = *v30;

    v32 = *(v30 + 1);

    v33 = *(v30 + 3);

    v34 = *(v30 + 4);

    v35 = &v30[v1[6]];
    v11(v35, v10);
    v36 = *&v35[v12[5] + 8];

    v37 = *&v35[v12[6]];

    v38 = *&v35[v12[7] + 8];

    v39 = &v30[v1[7]];
    if (*(v39 + 5))
    {
      v40 = *(v39 + 1);

      v41 = *(v39 + 3);

      v42 = *(v39 + 5);

      v43 = *(v39 + 7);

      v44 = *(v39 + 9);

      v45 = *(v39 + 12);
    }

    v46 = *&v30[v1[8] + 8];
  }

  v47 = *(v51 + 20);
  v48 = sub_21CB823B4();
  v49 = *(v48 - 8);
  if (!(*(v49 + 48))(&v30[v47], 1, v48))
  {
    (*(v49 + 8))(&v30[v47], v48);
  }

  return MEMORY[0x2821FE8E8](v0, v52 + v54, v55 | v53 | 7);
}

uint64_t sub_21C76E148()
{
  v1 = type metadata accessor for PMRemoveGroupMemberConfirmationAlert.Parameters(0);
  v2 = *(v1 - 1);
  v57 = *(v2 + 80);
  v3 = (v57 + 32) & ~v57;
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v53 = type metadata accessor for PMRemoveGroupMemberConfirmationAlert(0);
  v5 = *(v53 - 8);
  v55 = (v4 + *(v5 + 80) + 112) & ~*(v5 + 80);
  v56 = *(v5 + 80);
  v54 = *(v5 + 64);
  v6 = *(v0 + 16);
  swift_unknownObjectRelease();
  v7 = *(v0 + v3);

  v8 = *(v0 + v3 + 8);

  v9 = *(v0 + v3 + 24);

  v10 = *(v0 + v3 + 32);

  v11 = v0 + v3 + v1[6];
  v12 = sub_21CB85C44();
  v13 = *(*(v12 - 8) + 8);
  v13(v11, v12);
  v14 = type metadata accessor for PMSharingGroup();
  v15 = *(v11 + v14[5] + 8);

  v16 = *(v11 + v14[6]);

  v17 = *(v11 + v14[7] + 8);

  v18 = v0 + v3 + v1[7];
  if (*(v18 + 40))
  {
    v19 = *(v18 + 8);

    v20 = *(v18 + 24);

    v21 = *(v18 + 40);

    v22 = *(v18 + 56);

    v23 = *(v18 + 72);

    v24 = *(v18 + 96);
  }

  v25 = *(v0 + v3 + v1[8] + 8);

  v26 = *(v0 + v4 + 8);

  v27 = *(v0 + v4 + 24);

  v28 = *(v0 + v4 + 40);

  v29 = *(v0 + v4 + 56);

  v30 = *(v0 + v4 + 72);

  v31 = *(v0 + v4 + 96);

  v32 = (v0 + v55);
  if (!(*(v2 + 48))(v0 + v55, 1, v1))
  {
    v33 = *v32;

    v34 = *(v32 + 1);

    v35 = *(v32 + 3);

    v36 = *(v32 + 4);

    v37 = &v32[v1[6]];
    v13(v37, v12);
    v38 = *&v37[v14[5] + 8];

    v39 = *&v37[v14[6]];

    v40 = *&v37[v14[7] + 8];

    v41 = &v32[v1[7]];
    if (*(v41 + 5))
    {
      v42 = *(v41 + 1);

      v43 = *(v41 + 3);

      v44 = *(v41 + 5);

      v45 = *(v41 + 7);

      v46 = *(v41 + 9);

      v47 = *(v41 + 12);
    }

    v48 = *&v32[v1[8] + 8];
  }

  v49 = *(v53 + 20);
  v50 = sub_21CB823B4();
  v51 = *(v50 - 8);
  if (!(*(v51 + 48))(&v32[v49], 1, v50))
  {
    (*(v51 + 8))(&v32[v49], v50);
  }

  return MEMORY[0x2821FE8E8](v0, v55 + v54, v57 | v56 | 7);
}

uint64_t sub_21C76E540(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for PMGeneratedPassword.ID(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = type metadata accessor for PMGeneratedPassword.Storage(0);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_21C76E630(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for PMGeneratedPassword.ID(0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = type metadata accessor for PMGeneratedPassword.Storage(0);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_21C76E72C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_21CB80DD4();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_21C76E7D8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_21CB80DD4();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_21C76E87C()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

void sub_21C76E8C8(id *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *a1;
  sub_21C995058(v2);
}

uint64_t sub_21C76E934()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_21C76E988(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDEBD00, &unk_21CBA20F0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_21C76EA54(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDEBD00, &unk_21CBA20F0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_21C76EB24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for PMGeneratedPassword(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_21C76EBE0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for PMGeneratedPassword(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_21C76EC98()
{
  v1 = type metadata accessor for PMGeneratedPasswordCell(0);
  v32 = *(*(v1 - 1) + 80);
  v2 = (v32 + 16) & ~v32;
  v3 = *(*(v1 - 1) + 64);
  v4 = type metadata accessor for PMGeneratedPassword(0);
  v30 = *(*(v4 - 8) + 80);
  v31 = *(*(v4 - 8) + 64);
  v29 = (v2 + v3 + v30) & ~v30;
  v33 = v0;
  v5 = v0 + v2;
  v6 = *(v0 + v2 + 8);

  v7 = *(v0 + v2 + 24);

  v8 = type metadata accessor for PMGeneratedPassword.ID(0);
  v9 = *(v8 + 24);
  v10 = sub_21CB80DD4();
  v11 = *(*(v10 - 8) + 8);
  v11(v5 + v9, v10);
  v12 = v5 + *(v4 + 20);
  type metadata accessor for PMGeneratedPassword.Storage(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();

  if (EnumCaseMultiPayload == 1)
  {
    v14 = *(v12 + 16);

    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB570, &qword_21CBA8A30);
    v11(v12 + *(v15 + 64), v10);
  }

  v16 = *(v5 + v1[5] + 8);

  v17 = *(v5 + v1[6] + 8);

  v18 = *(v5 + v1[7] + 8);

  v19 = *(v5 + v1[8] + 8);

  sub_21C7025C4(*(v5 + v1[9]), *(v5 + v1[9] + 8));
  v20 = *(v5 + v1[10] + 8);

  v21 = *(v5 + v1[11] + 8);

  v22 = *(v33 + v29 + 8);

  v23 = *(v33 + v29 + 24);

  v11(v33 + v29 + *(v8 + 24), v10);
  v24 = v33 + v29 + *(v4 + 20);
  v25 = swift_getEnumCaseMultiPayload();

  if (v25 == 1)
  {
    v26 = *(v24 + 16);

    v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB570, &qword_21CBA8A30);
    v11(v24 + *(v27 + 64), v10);
  }

  return MEMORY[0x2821FE8E8](v33, v29 + v31, v32 | v30 | 7);
}

uint64_t sub_21C76EFA8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PMGeneratedPassword(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_21C76F014(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PMGeneratedPassword(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_21C76F084()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF3398, &qword_21CBB7910);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF1748, &qword_21CBBDF70);
  type metadata accessor for PMGeneratedPassword(255);
  sub_21C99C624();
  sub_21C71F3FC();
  sub_21C6EADEC(&qword_27CDF1750, &qword_27CDF1748, &qword_21CBBDF70);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_21C76F188()
{
  v1 = *(type metadata accessor for PMGeneratedPasswordMenu(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  v5 = *(v0 + v3 + 8);

  v6 = *(v0 + v3 + 24);

  v7 = *(type metadata accessor for PMGeneratedPassword.ID(0) + 24);
  v8 = sub_21CB80DD4();
  v9 = *(*(v8 - 8) + 8);
  v9(v0 + v3 + v7, v8);
  v10 = v0 + v3 + *(type metadata accessor for PMGeneratedPassword(0) + 20);
  type metadata accessor for PMGeneratedPassword.Storage(0);
  LODWORD(v7) = swift_getEnumCaseMultiPayload();

  if (v7 == 1)
  {
    v11 = *(v10 + 16);

    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB570, &qword_21CBA8A30);
    v9(v10 + *(v12 + 64), v8);
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_21C76F358(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF3530, &qword_21CBB7C10);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF3538, &qword_21CBB7C18);
  v3 = *(*(*(v2 + 16) + 8) + 8);
  sub_21CB831E4();
  sub_21CB828F4();
  swift_getTupleTypeMetadata2();
  sub_21CB85354();
  swift_getWitnessTable();
  sub_21CB84F04();
  sub_21CB84B94();
  sub_21CB828F4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF3520, qword_21CBB7BA8);
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_21C99FB6C();
  swift_getOpaqueTypeMetadata2();
  sub_21CB82834();
  swift_getOpaqueTypeConformance2();
  sub_21C99FC44();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_21C76F57C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF3010, &unk_21CBA8EB0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 24) + 8);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

uint64_t sub_21C76F64C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF3010, &unk_21CBA8EB0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 20);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 24) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_21C76F7B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF3010, &unk_21CBA8EB0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_21C76F880(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF3010, &unk_21CBA8EB0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_21C76F948(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF3710, &qword_21CBB7F78);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21C76F9B8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF3710, &qword_21CBB7F78);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_21C76FA44(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC5A0, &unk_21CBA5080);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_21C76FB00(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC5A0, &unk_21CBA5080);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_21C76FBB4@<X0>(_BYTE *a1@<X8>)
{
  sub_21C741570();
  result = sub_21CB82F94();
  *a1 = v3;
  return result;
}

uint64_t sub_21C76FC04(char *a1)
{
  v2 = *a1;
  sub_21C741570();
  return sub_21CB82FA4();
}

uint64_t sub_21C76FC70()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF3888, &qword_21CBB82C8);
  sub_21C9A81F8();
  sub_21C9A825C();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_21C76FCE8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PMSharingGroup();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_21C76FD54(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PMSharingGroup();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_21C76FDC4()
{
  v1 = *(type metadata accessor for PMGroupAccountsView(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  v5 = sub_21CB85C44();
  (*(*(v5 - 8) + 8))(v0 + v3, v5);
  v6 = type metadata accessor for PMSharingGroup();
  v7 = *(v0 + v3 + v6[5] + 8);

  v8 = *(v0 + v3 + v6[6]);

  v9 = *(v0 + v3 + v6[7] + 8);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_21C76FEE4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for PMSharingGroup();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF3010, &unk_21CBA8EB0);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 28);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 32) + 8);
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

uint64_t sub_21C770000(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for PMSharingGroup();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF3010, &unk_21CBA8EB0);
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 32) + 8) = (a2 - 1);
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 28);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_21C770170(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF3908, &qword_21CBB8630);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_21C7701E0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF3910, &qword_21CBB8638);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_21C77029C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for PMAccount(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_21C770348(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for PMAccount(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_21C7703F4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF3A38, &qword_21CBB8A28);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21C770464(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF3A38, &qword_21CBB8A28);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_21C7704CC()
{
  v1 = v0;
  v2 = type metadata accessor for PMAppAccountDetailsCredentialSecurityView(0);
  v3 = *(*(v2 - 8) + 80);
  v63 = *(*(v2 - 8) + 64);
  v64 = (v3 + 16) & ~v3;
  v4 = v0 + v64;
  v5 = *(v0 + v64 + 8);

  v6 = *(v0 + v64 + 24);

  v62 = v2;
  v7 = v0 + v64 + *(v2 + 24);
  v8 = *(v7 + 8);

  v9 = type metadata accessor for PMAccount(0);
  v10 = (v7 + v9[5]);
  type metadata accessor for PMAccount.UniqueID(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v12 = *(v10 + 1);

  v13 = *(v10 + 3);

  if (EnumCaseMultiPayload == 1)
  {
    v14 = *(v10 + 5);

    v15 = type metadata accessor for PMAccount.SIWAUniqueID(0);
    v16 = v15[7];
    v17 = sub_21CB85B74();
    (*(*(v17 - 8) + 8))(&v10[v16], v17);
    v18 = *&v10[v15[8] + 8];

    v19 = v15[9];
    v20 = sub_21CB85C44();
    v21 = *(v20 - 8);
    if (!(*(v21 + 48))(&v10[v19], 1, v20))
    {
      (*(v21 + 8))(&v10[v19], v20);
    }
  }

  else
  {
    v22 = *(v10 + 4);

    v23 = type metadata accessor for PMAccount.CombinedUniqueID(0);
    v24 = v23[7];
    v25 = sub_21CB85C04();
    v26 = *(v25 - 8);
    if (!(*(v26 + 48))(&v10[v24], 1, v25))
    {
      (*(v26 + 8))(&v10[v24], v25);
    }

    v27 = v23[8];
    v28 = sub_21CB85BB4();
    v29 = *(v28 - 8);
    if (!(*(v29 + 48))(&v10[v27], 1, v28))
    {
      (*(v29 + 8))(&v10[v27], v28);
    }

    v30 = v23[9];
    v31 = sub_21CB85C44();
    v32 = *(v31 - 8);
    if (!(*(v32 + 48))(&v10[v30], 1, v31))
    {
      (*(v32 + 8))(&v10[v30], v31);
    }
  }

  v33 = v7 + v9[6];
  type metadata accessor for PMAccount.Storage(0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v60 = v3;
    v61 = v1;
    v34 = *(v33 + 8);

    v35 = *(v33 + 24);

    v36 = *(v33 + 40);

    v37 = *(v33 + 56);

    v38 = type metadata accessor for PMAccount.MockData(0);
    v39 = v38[8];
    v40 = sub_21CB80DD4();
    v41 = *(v40 - 8);
    v42 = *(v41 + 48);
    if (!v42(v33 + v39, 1, v40))
    {
      (*(v41 + 8))(v33 + v39, v40);
    }

    v43 = *(v33 + v38[9]);

    v44 = *(v33 + v38[10] + 8);

    v45 = *(v33 + v38[11] + 8);

    v46 = v38[12];
    if (!v42(v33 + v46, 1, v40))
    {
      (*(v41 + 8))(v33 + v46, v40);
    }

    v47 = v38[15];
    v48 = sub_21CB85BB4();
    v49 = *(v48 - 8);
    v1 = v61;
    if (!(*(v49 + 48))(v33 + v47, 1, v48))
    {
      (*(v49 + 8))(v33 + v47, v48);
    }

    v50 = v38[16];
    v51 = sub_21CB85C04();
    v52 = *(v51 - 8);
    v3 = v60;
    if (!(*(v52 + 48))(v33 + v50, 1, v51))
    {
      (*(v52 + 8))(v33 + v50, v51);
    }

    v53 = *(v33 + v38[17] + 8);

    v54 = v38[18];
    v55 = sub_21CB85C44();
    v56 = *(v55 - 8);
    if (!(*(v56 + 48))(v33 + v54, 1, v55))
    {
      (*(v56 + 8))(v33 + v54, v55);
    }
  }

  else
  {
  }

  v57 = v7 + v9[7];
  if (*(v57 + 8))
  {
  }

  v58 = v4 + *(v62 + 28);
  if (*(v58 + 8))
  {
  }

  return MEMORY[0x2821FE8E8](v1, v64 + v63, v3 | 7);
}

uint64_t sub_21C770BA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for PMAccount(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_21C770C68(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for PMAccount(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_21C770D70()
{
  v1 = v0;
  v61 = type metadata accessor for PMCredentialSecurityButton(0);
  v2 = *(*(v61 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v60 = *(*(v61 - 8) + 64);
  v4 = v0 + v3;
  v5 = *(v0 + v3 + 8);

  v6 = type metadata accessor for PMAccount(0);
  v7 = (v0 + v3 + v6[5]);
  type metadata accessor for PMAccount.UniqueID(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v9 = *(v7 + 1);

  v10 = *(v7 + 3);

  if (EnumCaseMultiPayload == 1)
  {
    v11 = *(v7 + 5);

    v12 = type metadata accessor for PMAccount.SIWAUniqueID(0);
    v13 = v12[7];
    v14 = sub_21CB85B74();
    (*(*(v14 - 8) + 8))(&v7[v13], v14);
    v15 = *&v7[v12[8] + 8];

    v16 = v12[9];
    v17 = sub_21CB85C44();
    v18 = *(v17 - 8);
    if (!(*(v18 + 48))(&v7[v16], 1, v17))
    {
      (*(v18 + 8))(&v7[v16], v17);
    }
  }

  else
  {
    v19 = *(v7 + 4);

    v20 = type metadata accessor for PMAccount.CombinedUniqueID(0);
    v21 = v20[7];
    v22 = sub_21CB85C04();
    v23 = *(v22 - 8);
    if (!(*(v23 + 48))(&v7[v21], 1, v22))
    {
      (*(v23 + 8))(&v7[v21], v22);
    }

    v24 = v20[8];
    v25 = sub_21CB85BB4();
    v26 = *(v25 - 8);
    if (!(*(v26 + 48))(&v7[v24], 1, v25))
    {
      (*(v26 + 8))(&v7[v24], v25);
    }

    v27 = v20[9];
    v28 = sub_21CB85C44();
    v29 = *(v28 - 8);
    if (!(*(v29 + 48))(&v7[v27], 1, v28))
    {
      (*(v29 + 8))(&v7[v27], v28);
    }
  }

  v30 = v4 + v6[6];
  type metadata accessor for PMAccount.Storage(0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v59 = v1;
    v31 = *(v30 + 8);

    v32 = *(v30 + 24);

    v33 = *(v30 + 40);

    v34 = *(v30 + 56);

    v35 = type metadata accessor for PMAccount.MockData(0);
    v36 = v35[8];
    v37 = sub_21CB80DD4();
    v38 = *(v37 - 8);
    v39 = *(v38 + 48);
    if (!v39(v30 + v36, 1, v37))
    {
      (*(v38 + 8))(v30 + v36, v37);
    }

    v40 = *(v30 + v35[9]);

    v41 = *(v30 + v35[10] + 8);

    v42 = *(v30 + v35[11] + 8);

    v43 = v35[12];
    if (!v39(v30 + v43, 1, v37))
    {
      (*(v38 + 8))(v30 + v43, v37);
    }

    v44 = v35[15];
    v45 = sub_21CB85BB4();
    v46 = *(v45 - 8);
    v3 = (v2 + 16) & ~v2;
    v1 = v59;
    if (!(*(v46 + 48))(v30 + v44, 1, v45))
    {
      (*(v46 + 8))(v30 + v44, v45);
    }

    v47 = v35[16];
    v48 = sub_21CB85C04();
    v49 = *(v48 - 8);
    if (!(*(v49 + 48))(v30 + v47, 1, v48))
    {
      (*(v49 + 8))(v30 + v47, v48);
    }

    v50 = *(v30 + v35[17] + 8);

    v51 = v35[18];
    v52 = sub_21CB85C44();
    v53 = *(v52 - 8);
    if (!(*(v53 + 48))(v30 + v51, 1, v52))
    {
      (*(v53 + 8))(v30 + v51, v52);
    }
  }

  else
  {
  }

  v54 = v4 + v6[7];
  if (*(v54 + 8))
  {
  }

  v55 = (v4 + *(v61 + 24));
  v56 = *v55;

  v57 = v55[1];

  return MEMORY[0x2821FE8E8](v1, v3 + v60, v2 | 7);
}

uint64_t sub_21C771418(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for PMSharingGroup();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_8:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF2A20, &unk_21CBB8EA0);
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[5];
LABEL_7:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_8;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF3010, &unk_21CBA8EB0);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[6];
    goto LABEL_7;
  }

  v16 = *(a1 + a3[7] + 8);
  if (v16 >= 0xFFFFFFFF)
  {
    LODWORD(v16) = -1;
  }

  return (v16 + 1);
}

uint64_t sub_21C771588(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = type metadata accessor for PMSharingGroup();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF2A20, &unk_21CBB8EA0);
    if (*(*(v13 - 8) + 84) == a3)
    {
      v10 = v13;
      v14 = *(v13 - 8);
      v15 = a4[5];
    }

    else
    {
      result = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF3010, &unk_21CBA8EB0);
      if (*(*(result - 8) + 84) != a3)
      {
        *(a1 + a4[7] + 8) = (a2 - 1);
        return result;
      }

      v10 = result;
      v14 = *(result - 8);
      v15 = a4[6];
    }

    v11 = *(v14 + 56);
    v12 = a1 + v15;
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_21C77172C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for PMSharingGroup();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v10 = *(a1 + *(a3 + 24) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF3010, &unk_21CBA8EB0);
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 28);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_21C771860(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for PMSharingGroup();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 24) + 8) = (a2 - 1);
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF3010, &unk_21CBA8EB0);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 28);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t sub_21C771A68(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for PMSharingGroup();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_21C771B24(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for PMSharingGroup();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_21C771BE8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF3DD8, &qword_21CBB9650);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_21C771C58(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1FA8, &unk_21CBB9290);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_21C771CD4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21CB85C44();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_21C771D90(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_21CB85C44();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_21C771E58(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF3E48, &unk_21CBB9800);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 24);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDED978, &qword_21CBA7DE8);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 28);

      return v14(v15, a2, v13);
    }
  }
}

void *sub_21C771F94(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF3E48, &unk_21CBB9800);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 24);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDED978, &qword_21CBA7DE8);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 28);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_21C7720E4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1870, &qword_21CBB21E0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_21C77215C()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_21C7721B4(uint64_t a1, uint64_t a2)
{
  v4 = sub_21CB85C44();
  v5 = (*(*(v4 - 8) + 48))(a1, a2, v4);
  if (v5 >= 2)
  {
    return v5 - 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_21C772220(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 1);
  }

  else
  {
    v5 = 0;
  }

  v6 = sub_21CB85C44();
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

uint64_t sub_21C7722FC()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_21C772334()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_21C77242C(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF3010, &unk_21CBA8EB0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

void *sub_21C7724E8(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF3010, &unk_21CBA8EB0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_21C7725E4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF40B0, &qword_21CBB9E00);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21C772658()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_21C77269C()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF4038, &qword_21CBB9D98);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF4078, &qword_21CBB9DD0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF4030, &qword_21CBB9D90);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF4028, &qword_21CBB9D88);
  sub_21C9CD690();
  sub_21C71F3FC();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF4080, &qword_21CBB9DD8);
  sub_21C6EADEC(&qword_27CDF4088, &qword_27CDF4080, &qword_21CBB9DD8);
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_21C772844(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for PMWiFiNetwork();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 254)
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 2)
    {
      return ((v10 + 2147483646) & 0x7FFFFFFF) + 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF44B0, &unk_21CBA9AC0);
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 24);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_21C772980(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for PMWiFiNetwork();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 254)
  {
    *(a1 + *(a4 + 20)) = a2 + 1;
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF44B0, &unk_21CBA9AC0);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 24);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t sub_21C772AC8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF41E8, &qword_21CBBA0D8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_21C772B60@<X0>(_BYTE *a1@<X8>)
{
  result = sub_21CB82DE4();
  *a1 = result & 1;
  return result;
}

uint64_t sub_21C772BB8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF41F0, &qword_21CBBA0E0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_21C772C24(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE678, &unk_21CBBA210);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + a3[5];

    return v9(v10, a2, v8);
  }

  else if (a2 == 254)
  {
    v12 = *(a1 + a3[6]);
    if (v12 >= 2)
    {
      return ((v12 + 2147483646) & 0x7FFFFFFF) + 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF44B0, &unk_21CBA9AC0);
    v14 = *(*(v13 - 8) + 48);
    v15 = a1 + a3[7];

    return v14(v15, a2, v13);
  }
}

uint64_t sub_21C772D70(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE678, &unk_21CBBA210);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + a4[5];

    return v11(v12, a2, a2, v10);
  }

  else if (a3 == 254)
  {
    *(a1 + a4[6]) = a2 + 1;
  }

  else
  {
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF44B0, &unk_21CBA9AC0);
    v14 = *(*(v13 - 8) + 56);
    v15 = a1 + a4[7];

    return v14(v15, a2, a2, v13);
  }

  return result;
}

uint64_t sub_21C772EC0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF4260, &qword_21CBBA3F0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_21C772F30(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF4260, &qword_21CBBA3F0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21C772FA0()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF4260, &qword_21CBBA3F0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF4288, &qword_21CBBA458);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF4290, &qword_21CBBA460);
  sub_21C9D12F4();
  sub_21C9D13BC();
  sub_21C830EB0();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_21C7730A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for PMSharingGroup();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_21C773160(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for PMSharingGroup();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_21C773330(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF4308, &qword_21CBBA538);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_21C7733A0()
{
  v1 = (type metadata accessor for PMGroupInvitationView() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*v1 + 64);
  v5 = *(v0 + 16);
  swift_unknownObjectRelease();
  v6 = sub_21CB85C44();
  (*(*(v6 - 8) + 8))(v0 + v3, v6);
  v7 = type metadata accessor for PMSharingGroup();
  v8 = *(v0 + v3 + v7[5] + 8);

  v9 = *(v0 + v3 + v7[6]);

  v10 = *(v0 + v3 + v7[7] + 8);

  v11 = (v0 + v3 + v1[7]);
  v12 = *v11;

  v13 = v11[1];

  v14 = *(v0 + v3 + v1[8]);

  v15 = *(v0 + v3 + v1[10] + 8);

  v16 = *(v0 + v3 + v1[11] + 8);

  sub_21C7025C4(*(v0 + v3 + v1[12]), *(v0 + v3 + v1[12] + 8));

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_21C773574()
{
  v1 = sub_21CB85C44();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 48) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 2);
  swift_unknownObjectRelease();
  v7 = *(v0 + 4);

  v8 = *(v0 + 5);

  (*(v2 + 8))(&v0[v4], v1);
  v9 = *&v0[v5];

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v3 | 7);
}

uint64_t sub_21C77365C()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  v2 = *(v0 + 56);

  v3 = *(v0 + 72);

  return MEMORY[0x2821FE8E8](v0, 80, 7);
}

uint64_t sub_21C7736B4()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_21C7736EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21CB81884();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF44B0, &unk_21CBA9AC0);
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 32);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_21C77381C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_21CB81884();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF44B0, &unk_21CBA9AC0);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 32);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t sub_21C773954(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF4500, &qword_21CBBACE8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_21C7739BC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_21CB82E94();
  *a1 = result;
  return result;
}

uint64_t sub_21C7739E8(uint64_t *a1)
{
  v1 = *a1;

  return sub_21CB82EA4();
}

uint64_t sub_21C773A18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF44B0, &unk_21CBA9AC0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_21C773AD4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF44B0, &unk_21CBA9AC0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_21C773B98(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for PMEmptyStateDetailView.Source(0);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 20);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF4658, &unk_21CBBAEF0);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 40);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_21C773CC8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = type metadata accessor for PMEmptyStateDetailView.Source(0);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 20);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF4658, &unk_21CBBAEF0);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 40);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_21C773DF8(uint64_t a1, uint64_t a2)
{
  v4 = sub_21CB85C44();
  v5 = (*(*(v4 - 8) + 48))(a1, a2, v4);
  if (v5 >= 7)
  {
    return v5 - 6;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_21C773E64(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 6);
  }

  else
  {
    v5 = 0;
  }

  v6 = sub_21CB85C44();
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

uint64_t sub_21C773EEC@<X0>(uint64_t a1@<X8>)
{
  result = sub_21CB82F34();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_21C773F20(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  return sub_21CB82F44();
}

uint64_t sub_21C773F50()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF4698, &qword_21CBBAF88);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF14D0, &qword_21CBB1720);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF4690, &qword_21CBBAF80);
  type metadata accessor for PMSharingGroup();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEE910, &qword_21CBAA7C8);
  sub_21C6EADEC(&qword_27CDF46B8, &qword_27CDF4690, &qword_21CBBAF80);
  sub_21C706530(&qword_27CDEDBC8, type metadata accessor for PMSharingGroup);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEE918, &qword_21CBAA7D0);
  sub_21CB83994();
  sub_21C6EADEC(&qword_27CDEE920, &qword_27CDEE918, &qword_21CBAA7D0);
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  sub_21C941AD8();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_21C774180@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, _BYTE *a3@<X8>)
{
  v4 = *a1;
  v5 = *a2;
  if (v5)
  {
    v6 = v4 == 0;
  }

  else
  {
    v6 = 1;
  }

  if (v6)
  {
    result = 0;
  }

  else
  {
    result = sub_21C9675F0(v4, v5);
  }

  *a3 = result & 1;
  return result;
}

uint64_t sub_21C7741D8(uint64_t *a1)
{
  result = *a1;
  if (result)
  {

    v3 = a1[2];
  }

  return result;
}

uint64_t sub_21C77424C(uint64_t *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *a1;
  if (v3)
  {
    if (v4 && (sub_21C9675F0(v3, v4) & 1) != 0)
    {
      return 1;
    }
  }

  else if (!v4)
  {
    return 1;
  }

  return 0;
}

__n128 sub_21C774294(__n128 *a1, __n128 *a2)
{
  result = *a1;
  a2[1].n128_u64[0] = a1[1].n128_u64[0];
  *a2 = result;
  return result;
}

uint64_t sub_21C7742C8()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF4718, &unk_21CBBB300);
  sub_21C9E68CC();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_21C77432C()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_21C774364()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_21C7743D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21CB80E34();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_21C774498(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_21CB80E34();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_21C7745A0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return sub_21C9E81F4(v4);
}

uint64_t sub_21C7745D0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;

  return sub_21C9E7EEC(v2, v3);
}

uint64_t sub_21C7746B0()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_21C7746EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 40);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF3178, &qword_21CBB7260);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 32);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF3010, &unk_21CBA8EB0);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 40);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_21C774828(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 40) = (a2 - 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF3178, &qword_21CBB7260);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 32);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF3010, &unk_21CBA8EB0);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 40);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_21C774964()
{
  v1 = type metadata accessor for PMGroupMemberDetailView();
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = v0 + v3;
  v6 = *(v0 + v3 + 8);

  v7 = *(v0 + v3 + 24);

  v8 = *(v0 + v3 + 40);

  v9 = *(v0 + v3 + 56);

  v10 = *(v0 + v3 + 72);

  v11 = *(v0 + v3 + 96);

  v12 = *(v0 + v3 + 128);

  v13 = (v0 + v3 + v1[8]);
  v14 = type metadata accessor for PMRemoveGroupMemberConfirmationAlert.Parameters(0);
  if (!(*(*(v14 - 1) + 48))(v13, 1, v14))
  {
    v15 = *v13;

    v16 = v13[1];

    v17 = v13[3];

    v18 = v13[4];

    v19 = v13 + v14[6];
    v20 = sub_21CB85C44();
    (*(*(v20 - 8) + 8))(v19, v20);
    v21 = type metadata accessor for PMSharingGroup();
    v22 = *&v19[v21[5] + 8];

    v23 = *&v19[v21[6]];

    v24 = *&v19[v21[7] + 8];

    v25 = v13 + v14[7];
    if (*(v25 + 5))
    {
      v26 = *(v25 + 1);

      v27 = *(v25 + 3);

      v28 = *(v25 + 5);

      v29 = *(v25 + 7);

      v30 = *(v25 + 9);

      v31 = *(v25 + 12);
    }

    v32 = *(v13 + v14[8] + 8);
  }

  v33 = v1[10];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE480, &qword_21CBA13D0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v34 = sub_21CB823B4();
    (*(*(v34 - 8) + 8))(v5 + v33, v34);
  }

  else
  {
    v35 = *(v5 + v33);
  }

  v36 = *(v5 + v1[11]);

  v37 = *(v5 + v1[12] + 8);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_21C774C24(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF4858, &qword_21CBBB950);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21C774C94()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF47D8, &qword_21CBBB8F0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF47D0, &qword_21CBBB8E8);
  sub_21C9F4E1C();
  sub_21C71F3FC();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_21C774DCC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF48F8, &qword_21CBBBC58);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_21C774E44(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF48F8, &qword_21CBBBC58);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_21C774EC4()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 64);

  v3 = *(v0 + 80);

  sub_21C7025C4(*(v0 + 88), *(v0 + 96));

  return MEMORY[0x2821FE8E8](v0, 97, 7);
}

uint64_t sub_21C774F60(uint64_t a1, uint64_t a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC370, &unk_21CBA40B0);
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[7];
LABEL_11:
    v14 = *(v10 + 48);

    return v14(a1 + v11, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF3010, &unk_21CBA8EB0);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[8];
    goto LABEL_11;
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF44B0, &unk_21CBA9AC0);
  if (*(*(v13 - 8) + 84) == a2)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a3[9];
    goto LABEL_11;
  }

  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF4A48, &qword_21CBBC058);
  v16 = *(*(v15 - 8) + 48);
  v17 = a1 + a3[10];

  return v16(v17, a2, v15);
}

uint64_t sub_21C775144(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
    return result;
  }

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC370, &unk_21CBA40B0);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[7];
LABEL_9:
    v14 = *(v10 + 56);

    return v14(v5 + v11, a2, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF3010, &unk_21CBA8EB0);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[8];
    goto LABEL_9;
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF44B0, &unk_21CBA9AC0);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a4[9];
    goto LABEL_9;
  }

  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF4A48, &qword_21CBBC058);
  v16 = *(*(v15 - 8) + 56);
  v17 = v5 + a4[10];

  return v16(v17, a2, a2, v15);
}

uint64_t sub_21C77534C()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF4A98, &qword_21CBBC130);
  type metadata accessor for PMGlobalAnimationNamespaceContainer();
  sub_21CA057DC();
  sub_21CA054BC(&qword_27CDEADC8, type metadata accessor for PMGlobalAnimationNamespaceContainer);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_21C77546C(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  sub_21CB828F4();
  sub_21CB828F4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF1180, &qword_21CBB0A70);
  sub_21CB828F4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF4C90, &unk_21CBBC650);
  sub_21CB828F4();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_21C6EADEC(&qword_27CDF1178, &qword_27CDF1180, &qword_21CBB0A70);
  swift_getWitnessTable();
  sub_21C6EADEC(&qword_27CDF4C98, &qword_27CDF4C90, &unk_21CBBC650);
  swift_getWitnessTable();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_21C775688()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_21C7756D4(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF3178, &qword_21CBB7260);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 76);

    return v9(v10, a2, v8);
  }
}

void *sub_21C775790(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF3178, &qword_21CBB7260);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 76);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_21C775844(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF4E70, &qword_21CBBCAB0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21C7758B4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF4E70, &qword_21CBBCAB0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_21C775924(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF4E50, &qword_21CBBCA98);
  sub_21CB85074();
  sub_21CB828F4();
  sub_21C6EADEC(&qword_27CDF4E58, &qword_27CDF4E50, &qword_21CBBCA98);
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_21C775A48(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC370, &unk_21CBA40B0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 36);

    return v9(v10, a2, v8);
  }
}

void *sub_21C775B04(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC370, &unk_21CBA40B0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 36);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_21C775BB8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_21C7C9AD8();
  *a1 = result;
  return result;
}

uint64_t sub_21C775C0C()
{
  v1 = v0;
  v2 = (type metadata accessor for PMAppAccountsCollectionView() - 8);
  v3 = *(*v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(*v2 + 64);
  v6 = type metadata accessor for PMAccount(0);
  v7 = *(*(v6 - 1) + 80);
  v71 = *(*(v6 - 1) + 64);
  v8 = (v4 + v5 + v7) & ~v7;
  v9 = v1 + v4;
  v10 = *(v1 + v4);

  v11 = *(v1 + v4 + 8);

  v12 = *(v1 + v4 + 24);

  v13 = *(v1 + v4 + 40);

  v14 = *(v1 + v4 + 56);

  v15 = v2[11];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC000, &qword_21CBA27F0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v16 = sub_21CB83834();
    v17 = *(v16 - 8);
    if (!(*(v17 + 48))(v9 + v15, 1, v16))
    {
      (*(v17 + 8))(v9 + v15, v16);
    }
  }

  else
  {
    v18 = *(v9 + v15);
  }

  v19 = v1 + v8;
  v20 = *(v1 + v8 + 8);

  v21 = (v1 + v8 + v6[5]);
  type metadata accessor for PMAccount.UniqueID(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v23 = *(v21 + 1);

  v24 = *(v21 + 3);

  if (EnumCaseMultiPayload == 1)
  {
    v25 = *(v21 + 5);

    v26 = type metadata accessor for PMAccount.SIWAUniqueID(0);
    v27 = v26[7];
    v28 = sub_21CB85B74();
    (*(*(v28 - 8) + 8))(&v21[v27], v28);
    v29 = *&v21[v26[8] + 8];

    v30 = v26[9];
    v31 = sub_21CB85C44();
    v32 = *(v31 - 8);
    if ((*(v32 + 48))(&v21[v30], 1, v31))
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  v70 = v7;
  v57 = v8;
  v58 = *(v21 + 4);

  v59 = type metadata accessor for PMAccount.CombinedUniqueID(0);
  v60 = v59[7];
  v61 = sub_21CB85C04();
  v62 = *(v61 - 8);
  if (!(*(v62 + 48))(&v21[v60], 1, v61))
  {
    (*(v62 + 8))(&v21[v60], v61);
  }

  v63 = v59[8];
  v64 = sub_21CB85BB4();
  v65 = *(v64 - 8);
  if (!(*(v65 + 48))(&v21[v63], 1, v64))
  {
    (*(v65 + 8))(&v21[v63], v64);
  }

  v30 = v59[9];
  v31 = sub_21CB85C44();
  v32 = *(v31 - 8);
  v8 = v57;
  v7 = v70;
  if (!(*(v32 + 48))(&v21[v30], 1, v31))
  {
LABEL_7:
    (*(v32 + 8))(&v21[v30], v31);
  }

LABEL_8:
  v33 = v19 + v6[6];
  type metadata accessor for PMAccount.Storage(0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v68 = v8;
    v69 = v3;
    v34 = *(v33 + 8);

    v35 = *(v33 + 24);

    v36 = *(v33 + 40);

    v37 = *(v33 + 56);

    v38 = type metadata accessor for PMAccount.MockData(0);
    v39 = v38[8];
    v40 = sub_21CB80DD4();
    v41 = *(v40 - 8);
    v42 = *(v41 + 48);
    if (!v42(v33 + v39, 1, v40))
    {
      (*(v41 + 8))(v33 + v39, v40);
    }

    v43 = *(v33 + v38[9]);

    v44 = *(v33 + v38[10] + 8);

    v45 = *(v33 + v38[11] + 8);

    v46 = v38[12];
    if (!v42(v33 + v46, 1, v40))
    {
      (*(v41 + 8))(v33 + v46, v40);
    }

    v47 = v38[15];
    v48 = sub_21CB85BB4();
    v49 = *(v48 - 8);
    if (!(*(v49 + 48))(v33 + v47, 1, v48))
    {
      (*(v49 + 8))(v33 + v47, v48);
    }

    v50 = v38[16];
    v51 = sub_21CB85C04();
    v52 = *(v51 - 8);
    v3 = v69;
    if (!(*(v52 + 48))(v33 + v50, 1, v51))
    {
      (*(v52 + 8))(v33 + v50, v51);
    }

    v53 = *(v33 + v38[17] + 8);

    v54 = v38[18];
    v55 = sub_21CB85C44();
    v56 = *(v55 - 8);
    v8 = v68;
    if (!(*(v56 + 48))(v33 + v54, 1, v55))
    {
      (*(v56 + 8))(v33 + v54, v55);
    }
  }

  else
  {
  }

  v66 = v19 + v6[7];
  if (*(v66 + 8))
  {
  }

  return MEMORY[0x2821FE8E8](v1, v8 + v71, v3 | v7 | 7);
}

uint64_t sub_21C7763DC(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF4F98, &unk_21CBBCE20);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CDEC7B8, &unk_21CBABBE0);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + a3[5];
    goto LABEL_5;
  }

  if (a2 == 254)
  {
    v14 = *(a1 + a3[6] + 8);
    if (v14 > 1)
    {
      return (v14 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC370, &unk_21CBA40B0);
    v16 = *(*(v15 - 8) + 48);
    v17 = a1 + a3[7];

    return v16(v17, a2, v15);
  }
}

uint64_t sub_21C776570(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF4F98, &unk_21CBBCE20);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    return v11(v12, a2, a2, v10);
  }

  result = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CDEC7B8, &unk_21CBABBE0);
  v14 = *(result - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + a4[5];
    goto LABEL_5;
  }

  if (a3 == 254)
  {
    *(a1 + a4[6] + 8) = -a2;
  }

  else
  {
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC370, &unk_21CBA40B0);
    v16 = *(*(v15 - 8) + 56);
    v17 = a1 + a4[7];

    return v16(v17, a2, a2, v15);
  }

  return result;
}

uint64_t sub_21C776758(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return sub_21C8619D8(v4);
}

unint64_t sub_21C77678C(uint64_t *a1, uint64_t a2, char *a3)
{
  v3 = *a3;
  v4 = *a1;
  v5 = a1[1];
  v6 = a1[2];
  sub_21C968B34(*a1);
  return sub_21C87EB50(v4, v5, v6, v3);
}

uint64_t sub_21C776830()
{
  v1 = type metadata accessor for PMWiFiList();
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = v0 + v3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF4F98, &unk_21CBBCE20);
  (*(*(v6 - 8) + 8))(v0 + v3, v6);
  v7 = v1[5];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC0D0, &qword_21CBA3BF0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = sub_21CB82A34();
    (*(*(v8 - 8) + 8))(v5 + v7, v8);
  }

  else
  {
    v9 = *(v5 + v7);
  }

  sub_21C7025C4(*(v5 + v1[6]), *(v5 + v1[6] + 8));
  v10 = v1[7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC000, &qword_21CBA27F0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_21CB83834();
    v12 = *(v11 - 8);
    if (!(*(v12 + 48))(v5 + v10, 1, v11))
    {
      (*(v12 + 8))(v5 + v10, v11);
    }
  }

  else
  {
    v13 = *(v5 + v10);
  }

  v14 = (v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v15 = *(v0 + v14);

  return MEMORY[0x2821FE8E8](v0, v14 + 8, v2 | 7);
}

uint64_t sub_21C776A7C()
{
  v1 = type metadata accessor for PMWiFiList();
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = *(v0 + 16);

  v6 = v0 + v3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF4F98, &unk_21CBBCE20);
  (*(*(v7 - 8) + 8))(v0 + v3, v7);
  v8 = v1[5];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC0D0, &qword_21CBA3BF0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = sub_21CB82A34();
    (*(*(v9 - 8) + 8))(v6 + v8, v9);
  }

  else
  {
    v10 = *(v6 + v8);
  }

  sub_21C7025C4(*(v6 + v1[6]), *(v6 + v1[6] + 8));
  v11 = v1[7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC000, &qword_21CBA27F0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12 = sub_21CB83834();
    v13 = *(v12 - 8);
    if (!(*(v13 + 48))(v6 + v11, 1, v12))
    {
      (*(v13 + 8))(v6 + v11, v12);
    }
  }

  else
  {
    v14 = *(v6 + v11);
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_21C776D00()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF51E0, &qword_21CBBD4B0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_21C776D98(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for PMSharingGroup();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_21C776E58(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for PMSharingGroup();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_21C776F1C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF5210, &unk_21CBBD520);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_21C776FA4()
{
  v1 = v0[2];

  v2 = v0[3];

  if (v0[6])
  {

    v3 = v0[8];
  }

  v4 = v0[10];

  v5 = v0[13];

  v6 = v0[15];

  return MEMORY[0x2821FE8E8](v0, 128, 7);
}

uint64_t sub_21C777010()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF5310, &unk_21CBBD9B0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEBE40, &unk_21CBA8200);
  sub_21C6EADEC(&qword_27CDF5318, &qword_27CDF5310, &unk_21CBBD9B0);
  sub_21C71F3FC();
  sub_21C6EADEC(&qword_27CDEBE50, &qword_27CDEBE40, &unk_21CBA8200);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_21C777138()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_21C777170()
{
  v1 = (type metadata accessor for PMInboundOTPAuthURLContext(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(*v1 + 64);
  v5 = *(v0 + 16);

  v6 = sub_21CB80BE4();
  v7 = *(v6 - 8);
  v8 = *(v7 + 8);
  v8(v0 + v3, v6);
  v9 = v1[7];
  if (!(*(v7 + 48))(v0 + v3 + v9, 1, v6))
  {
    v8(v0 + v3 + v9, v6);
  }

  v10 = (v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v11 = *(v0 + v10 + 8);

  return MEMORY[0x2821FE8E8](v0, v10 + 16, v2 | 7);
}

uint64_t sub_21C7772CC()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  v2 = *(v0 + 56);

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_21C777324(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF5390, &unk_21CBBDC30);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_21C7773EC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF5390, &unk_21CBBDC30);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_21C7774C0()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  if (*(v0 + 40))
  {
    v3 = *(v0 + 48);
  }

  v4 = *(v0 + 64);

  v5 = *(v0 + 80);

  return MEMORY[0x2821FE8E8](v0, 96, 7);
}

uint64_t sub_21C777540()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  v2 = *(v0 + 40);

  v3 = *(v0 + 48);

  if (*(v0 + 64))
  {
    v4 = *(v0 + 72);
  }

  v5 = *(v0 + 88);

  v6 = *(v0 + 104);

  return MEMORY[0x2821FE8E8](v0, 112, 7);
}

uint64_t sub_21C7775C8(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC5A0, &unk_21CBA5080);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_8:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF3010, &unk_21CBA8EB0);
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[5];
LABEL_7:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_8;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF5490, &unk_21CBBE090);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[6];
    goto LABEL_7;
  }

  v16 = *(a1 + a3[8] + 8);
  if (v16 >= 0xFFFFFFFF)
  {
    LODWORD(v16) = -1;
  }

  return (v16 + 1);
}

uint64_t sub_21C777744(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC5A0, &unk_21CBA5080);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF3010, &unk_21CBA8EB0);
    if (*(*(v13 - 8) + 84) == a3)
    {
      v10 = v13;
      v14 = *(v13 - 8);
      v15 = a4[5];
    }

    else
    {
      result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF5490, &unk_21CBBE090);
      if (*(*(result - 8) + 84) != a3)
      {
        *(a1 + a4[8] + 8) = (a2 - 1);
        return result;
      }

      v10 = result;
      v14 = *(result - 8);
      v15 = a4[6];
    }

    v11 = *(v14 + 56);
    v12 = a1 + v15;
  }

  return v11(v12, a2, a2, v10);
}