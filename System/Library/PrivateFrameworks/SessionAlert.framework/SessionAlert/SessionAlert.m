uint64_t static Logger.alert.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_2814476D8 != -1)
  {
    swift_once();
  }

  v2 = sub_265779DEC();
  v3 = __swift_project_value_buffer(v2, qword_2814476E0);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_26575F368(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_26575F3B4()
{
  v1 = *(v0 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28001D620, &qword_26577C140);
  return sub_265779EEC();
}

uint64_t sub_26575F444(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_265779C1C();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_26575F520(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  sub_26575F5D4(a1 + 96, v9);
  v6 = v10;
  v7 = v11;
  __swift_project_boxed_opaque_existential_1(v9, v10);
  (*(v7 + 16))(a2, a3, v6, v7);
  return __swift_destroy_boxed_opaque_existential_1(v9);
}

uint64_t sub_26575F5D4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t InMemoryAlertStore.alert(identifier:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *v3;
  if (*(v5 + 16) && (v6 = sub_26576435C(a1, a2), (v7 & 1) != 0))
  {
    v8 = v6;
    v9 = *(v5 + 56);
    v10 = type metadata accessor for Alert(0);
    v17 = *(v10 - 8);
    sub_265763F98(v9 + *(v17 + 72) * v8, a3);
    v11 = *(v17 + 56);
    v12 = a3;
    v13 = 0;
    v14 = v10;
  }

  else
  {
    v15 = type metadata accessor for Alert(0);
    v11 = *(*(v15 - 8) + 56);
    v14 = v15;
    v12 = a3;
    v13 = 1;
  }

  return v11(v12, v13, 1, v14);
}

uint64_t __swift_destroy_boxed_opaque_existential_1(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_26575F7F0(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_265779C1C();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_26575F8A0(uint64_t result, int a2)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 1;
  }

  else
  {
    *(result + 8) = 0;
  }

  return result;
}

uint64_t AlertCenter.presentAlert(identifier:payload:coordinated:dismissOption:breaksThroughFocus:)(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, char a5, uint64_t *a6, int a7)
{
  v8 = v7;
  v67 = a7;
  v75 = a3;
  v76 = a4;
  v68 = a2;
  v65 = a1;
  v72 = sub_265779C1C();
  v70 = *(v72 - 8);
  v11 = *(v70 + 64);
  MEMORY[0x28223BE20](v72);
  v13 = &v61 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = type metadata accessor for Alert(0);
  v69 = *(v66 - 8);
  v14 = *(v69 + 64);
  v15 = MEMORY[0x28223BE20](v66);
  v73 = &v61 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v15);
  v19 = &v61 - v18;
  v71 = v20;
  MEMORY[0x28223BE20](v17);
  v74 = &v61 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28001D628, &qword_26577AC10);
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x28223BE20](v22 - 8);
  v25 = &v61 - v24;
  v63 = *a6;
  v64 = *(a6 + 8);
  if (a5)
  {
    v26 = v8[8];
    __swift_project_boxed_opaque_existential_1(v8 + 4, v8[7]);
    sub_265779CFC();
    v27 = sub_265779D3C();
    LODWORD(v77) = (*(*(v27 - 8) + 48))(v25, 1, v27) == 1;
    sub_26575FF24(v25, &qword_28001D628, &qword_26577AC10);
  }

  else
  {
    LODWORD(v77) = 1;
  }

  sub_265779BFC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28001D630, &qword_26577AC18);
  v28 = (type metadata accessor for Alert.HistoryItem(0) - 8);
  v29 = *(*v28 + 72);
  v30 = (*(*v28 + 80) + 32) & ~*(*v28 + 80);
  v31 = swift_allocObject();
  *(v31 + 16) = xmmword_26577ABF0;
  v32 = v31 + v30;
  v33 = v8[8];
  __swift_project_boxed_opaque_existential_1(v8 + 4, v8[7]);
  v34 = sub_265779D0C();
  v36 = v35;
  v37 = v8;
  v38 = v8[7];
  v39 = v37[8];
  v62 = v37;
  __swift_project_boxed_opaque_existential_1(v37 + 4, v38);
  v40 = sub_265779D0C();
  v42 = v41;
  v43 = v32 + v28[10];
  result = sub_265779BFC();
  *v32 = v77;
  *(v32 + 8) = v34;
  *(v32 + 16) = v36;
  *(v32 + 24) = v40;
  *(v32 + 32) = v42;
  *(v32 + 40) = 0;
  if (!*(v31 + 16))
  {
    __break(1u);
    goto LABEL_8;
  }

  v45 = v66;
  v46 = v68;
  *v19 = v65;
  *(v19 + 1) = v46;
  v47 = v70;
  v48 = v72;
  (*(v70 + 16))(&v19[v45[5]], v13, v72);
  v49 = &v19[v45[7]];
  *v49 = v63;
  v49[8] = v64;
  v19[v45[8]] = v67 & 1;
  v50 = v45[6];

  sub_265779BAC();
  (*(v47 + 8))(v13, v48);
  v51 = &v19[v45[9]];
  v53 = v75;
  v52 = v76;
  *v51 = v75;
  v51[1] = v52;
  *&v19[v45[10]] = v31;
  v54 = v74;
  sub_26575FFA4(v19, v74, type metadata accessor for Alert);
  v55 = v62;
  v77 = v62[2];
  v56 = v73;
  sub_26576000C(v54, v73, type metadata accessor for Alert);
  v57 = (*(v69 + 80) + 24) & ~*(v69 + 80);
  v58 = swift_allocObject();
  *(v58 + 16) = v55;
  sub_26575FFA4(v56, v58 + v57, type metadata accessor for Alert);
  v59 = swift_allocObject();
  *(v59 + 16) = sub_2657618B4;
  *(v59 + 24) = v58;
  aBlock[4] = sub_2657618F4;
  aBlock[5] = v59;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2657600DC;
  aBlock[3] = &block_descriptor_37;
  v60 = _Block_copy(aBlock);
  sub_265760088(v53, v52);

  dispatch_sync(v77, v60);
  _Block_release(v60);
  sub_2657622E0(v54, type metadata accessor for Alert);
  LOBYTE(v57) = swift_isEscapingClosureAtFileLocation();

  if (v57)
  {
LABEL_8:
    __break(1u);
  }

  return result;
}

uint64_t sub_26575FF24(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_26575FFA4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_26576000C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_265760088(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

void sub_265760104(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28001D628, &qword_26577AC10);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v204 = &v202 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v9 = &v202 - v8;
  v213 = type metadata accessor for Alert(0);
  v10 = *(*(v213 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v213);
  v214 = (&v202 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = MEMORY[0x28223BE20](v11);
  v208 = (&v202 - v14);
  v15 = MEMORY[0x28223BE20](v13);
  v203 = (&v202 - v16);
  v17 = MEMORY[0x28223BE20](v15);
  v19 = (&v202 - v18);
  v20 = MEMORY[0x28223BE20](v17);
  v207 = (&v202 - v21);
  v22 = MEMORY[0x28223BE20](v20);
  v24 = (&v202 - v23);
  v25 = MEMORY[0x28223BE20](v22);
  v210 = (&v202 - v26);
  v27 = MEMORY[0x28223BE20](v25);
  v211 = (&v202 - v28);
  v29 = MEMORY[0x28223BE20](v27);
  v205 = (&v202 - v30);
  MEMORY[0x28223BE20](v29);
  v32 = &v202 - v31;
  v33 = sub_265779E3C();
  v34 = *(v33 - 8);
  v35 = *(v34 + 64);
  MEMORY[0x28223BE20](v33);
  v37 = (&v202 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0));
  v38 = v2[2];
  *v37 = v38;
  (*(v34 + 104))(v37, *MEMORY[0x277D85200], v33);
  v39 = v38;
  LOBYTE(v38) = sub_265779E4C();
  (*(v34 + 8))(v37, v33);
  if (v38)
  {
    v209 = v9;
    sub_2657618F8(*a1, *(a1 + 8));
    if (qword_2814476D8 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v40 = sub_265779DEC();
  v41 = __swift_project_value_buffer(v40, qword_2814476E0);
  sub_26576000C(a1, v32, type metadata accessor for Alert);

  v42 = sub_265779DDC();
  v43 = sub_265779EBC();

  v44 = os_log_type_enabled(v42, v43);
  v202 = v19;
  v206 = v24;
  if (v44)
  {
    v45 = swift_slowAlloc();
    v212 = v41;
    v46 = v45;
    v47 = swift_slowAlloc();
    v215 = v47;
    *v46 = 136380931;
    v48 = v2[8];
    __swift_project_boxed_opaque_existential_1(v2 + 4, v2[7]);
    v49 = sub_265779D0C();
    v51 = sub_265761C38(v49, v50, &v215);

    *(v46 + 4) = v51;
    *(v46 + 12) = 2082;
    v52 = Alert.description.getter();
    v54 = v53;
    sub_2657622E0(v32, type metadata accessor for Alert);
    v55 = sub_265761C38(v52, v54, &v215);

    *(v46 + 14) = v55;
    _os_log_impl(&dword_26575E000, v42, v43, "(%{private}s): Advancing alert to next state: %{public}s", v46, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x26675E650](v47, -1, -1);
    v56 = v46;
    v41 = v212;
    MEMORY[0x26675E650](v56, -1, -1);
  }

  else
  {

    sub_2657622E0(v32, type metadata accessor for Alert);
  }

  if (sub_265762340(a1))
  {
    v57 = v214;
    sub_26576000C(a1, v214, type metadata accessor for Alert);

    v58 = sub_265779DDC();
    v59 = sub_265779EBC();

    if (os_log_type_enabled(v58, v59))
    {
      v60 = swift_slowAlloc();
      v61 = swift_slowAlloc();
      v215 = v61;
      *v60 = 136380931;
      v62 = v2[8];
      __swift_project_boxed_opaque_existential_1(v2 + 4, v2[7]);
      v63 = sub_265779D0C();
      v65 = sub_265761C38(v63, v64, &v215);

      *(v60 + 4) = v65;
      *(v60 + 12) = 2082;
      v66 = *v57;
      v67 = v57[1];

      sub_2657622E0(v57, type metadata accessor for Alert);
      v68 = sub_265761C38(v66, v67, &v215);

      *(v60 + 14) = v68;
      v69 = "(%{private}s): Current state is obsolete; abandoning further action: %{public}s";
LABEL_9:
      _os_log_impl(&dword_26575E000, v58, v59, v69, v60, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x26675E650](v61, -1, -1);
      MEMORY[0x26675E650](v60, -1, -1);

      return;
    }

    goto LABEL_57;
  }

  v70 = *(a1 + *(v213 + 40));
  v71 = *(v70 + 16);
  if (!v71)
  {
    __break(1u);
LABEL_71:
    __break(1u);
    goto LABEL_72;
  }

  v72 = v71 - 1;
  v73 = *(type metadata accessor for Alert.HistoryItem(0) - 8);
  v74 = v70 + ((*(v73 + 80) + 32) & ~*(v73 + 80));
  v75 = *(v73 + 72);
  v76 = v74 + v75 * v72;
  v77 = *(v76 + 40);
  if (!(v77 >> 6))
  {
    if (v77)
    {
      v57 = v211;
      sub_26576000C(a1, v211, type metadata accessor for Alert);

      v58 = sub_265779DDC();
      v59 = sub_265779EBC();

      if (os_log_type_enabled(v58, v59))
      {
        v60 = swift_slowAlloc();
        v61 = swift_slowAlloc();
        v215 = v61;
        *v60 = 136380931;
        v82 = v2[8];
        __swift_project_boxed_opaque_existential_1(v2 + 4, v2[7]);
        v83 = sub_265779D0C();
        v85 = sub_265761C38(v83, v84, &v215);

        *(v60 + 4) = v85;
        *(v60 + 12) = 2082;
        v86 = *v57;
        v87 = v57[1];

        sub_2657622E0(v57, type metadata accessor for Alert);
        v88 = sub_265761C38(v86, v87, &v215);

        *(v60 + 14) = v88;
        v69 = "(%{private}s): Ignoring alert that is waiting to be presented: %{public}s";
        goto LABEL_9;
      }

      goto LABEL_57;
    }

    v109 = *(v76 + 24);
    v108 = *(v76 + 32);
    v110 = v2[8];
    __swift_project_boxed_opaque_existential_1(v2 + 4, v2[7]);

    if (v109 == sub_265779D0C() && v108 == v111)
    {
    }

    else
    {
      v128 = sub_26577A0BC();

      if ((v128 & 1) == 0)
      {
        v57 = v205;
        sub_26576000C(a1, v205, type metadata accessor for Alert);

        v58 = sub_265779DDC();
        v59 = sub_265779EBC();

        if (os_log_type_enabled(v58, v59))
        {
          v60 = swift_slowAlloc();
          v61 = swift_slowAlloc();
          v215 = v61;
          *v60 = 136380931;
          v166 = v2[8];
          __swift_project_boxed_opaque_existential_1(v2 + 4, v2[7]);
          v167 = sub_265779D0C();
          v169 = sub_265761C38(v167, v168, &v215);

          *(v60 + 4) = v169;
          *(v60 + 12) = 2082;
          v170 = *v57;
          v171 = v57[1];

          sub_2657622E0(v57, type metadata accessor for Alert);
          v172 = sub_265761C38(v170, v171, &v215);

          *(v60 + 14) = v172;
          v69 = "(%{private}s): Ignoring alert request not intended for this device: %{public}s";
          goto LABEL_9;
        }

        goto LABEL_57;
      }
    }

    sub_2657626C0(a1);
    return;
  }

  if (v77 >> 6 != 1)
  {
    v90 = *(v76 + 24);
    v89 = *(v76 + 32);
    v91 = v2[8];
    __swift_project_boxed_opaque_existential_1(v2 + 4, v2[7]);

    if (v90 == sub_265779D0C() && v89 == v92)
    {
    }

    else
    {
      v112 = sub_26577A0BC();

      if ((v112 & 1) == 0)
      {
        v113 = v2[8];
        __swift_project_boxed_opaque_existential_1(v2 + 4, v2[7]);
        v114 = sub_265779D0C();
        v116 = sub_26576EFDC(v114, v115);

        if ((v116 & 1) == 0)
        {
          sub_26576F174(a1);
        }
      }
    }

    sub_265766ADC(a1);
    return;
  }

  v212 = v41;
  v79 = *(v76 + 8);
  v78 = *(v76 + 16);
  v80 = v2[8];
  __swift_project_boxed_opaque_existential_1(v2 + 4, v2[7]);

  if (v79 == sub_265779D0C() && v78 == v81)
  {
  }

  else
  {
    v93 = sub_26577A0BC();

    if ((v93 & 1) == 0)
    {
      v57 = v208;
      sub_26576000C(a1, v208, type metadata accessor for Alert);

      v58 = sub_265779DDC();
      v59 = sub_265779EBC();

      if (os_log_type_enabled(v58, v59))
      {
        v60 = swift_slowAlloc();
        v61 = swift_slowAlloc();
        v215 = v61;
        *v60 = 136380931;
        v121 = v2[8];
        __swift_project_boxed_opaque_existential_1(v2 + 4, v2[7]);
        v122 = sub_265779D0C();
        v124 = sub_265761C38(v122, v123, &v215);

        *(v60 + 4) = v124;
        *(v60 + 12) = 2082;
        v125 = *v57;
        v126 = v57[1];

        sub_2657622E0(v57, type metadata accessor for Alert);
        v127 = sub_265761C38(v125, v126, &v215);

        *(v60 + 14) = v127;
        v69 = "(%{private}s): Ignoring failing alert that originated on another device: %{public}s";
        goto LABEL_9;
      }

      goto LABEL_57;
    }
  }

  v94 = *(v70 + 16);
  if (!v94)
  {
    goto LABEL_71;
  }

  v95 = v74 + (v94 - 1) * v75;
  if (*v95 == 1)
  {
    v96 = v210;
    sub_26576000C(a1, v210, type metadata accessor for Alert);

    v97 = sub_265779DDC();
    v98 = sub_265779EAC();

    if (os_log_type_enabled(v97, v98))
    {
      v99 = swift_slowAlloc();
      v100 = swift_slowAlloc();
      v215 = v100;
      *v99 = 136315394;
      v101 = v2[8];
      __swift_project_boxed_opaque_existential_1(v2 + 4, v2[7]);
      v102 = sub_265779D0C();
      v104 = sub_265761C38(v102, v103, &v215);

      *(v99 + 4) = v104;
      *(v99 + 12) = 2082;
      v105 = *v96;
      v106 = v96[1];

      sub_2657622E0(v96, type metadata accessor for Alert);
      v107 = sub_265761C38(v105, v106, &v215);

      *(v99 + 14) = v107;
      _os_log_impl(&dword_26575E000, v97, v98, "(%s): Mandatory alert failed to be displayed: %{public}s", v99, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x26675E650](v100, -1, -1);
      MEMORY[0x26675E650](v99, -1, -1);
    }

    else
    {

      sub_2657622E0(v96, type metadata accessor for Alert);
    }

    sub_265765264(a1);
    return;
  }

  v118 = *(v95 + 24);
  v117 = *(v95 + 32);
  v119 = v2[8];
  __swift_project_boxed_opaque_existential_1(v2 + 4, v2[7]);

  if (v118 != sub_265779D0C() || v117 != v120)
  {
    v129 = sub_26577A0BC();

    if (v129)
    {
      goto LABEL_42;
    }

    v173 = *(v70 + 16);
    if (v173)
    {
      v174 = v74 + (v173 - 1) * v75;
      v176 = *(v174 + 24);
      v175 = *(v174 + 32);
      v177 = v2[8];
      __swift_project_boxed_opaque_existential_1(v2 + 4, v2[7]);

      v178 = v204;
      sub_265779CFC();
      v179 = sub_265779D3C();
      v180 = *(v179 - 8);
      if ((*(v180 + 48))(v178, 1, v179) == 1)
      {
        sub_26575FF24(v178, &qword_28001D628, &qword_26577AC10);

        goto LABEL_55;
      }

      v188 = sub_265779D2C();
      v190 = v189;
      (*(v180 + 8))(v178, v179);
      if (v176 == v188 && v175 == v190)
      {

        v134 = v202;
      }

      else
      {
        v191 = sub_26577A0BC();

        v134 = v202;
        if ((v191 & 1) == 0)
        {
LABEL_55:
          v57 = v203;
          sub_26576000C(a1, v203, type metadata accessor for Alert);

          v58 = sub_265779DDC();
          v59 = sub_265779EAC();

          if (os_log_type_enabled(v58, v59))
          {
            v60 = swift_slowAlloc();
            v61 = swift_slowAlloc();
            v215 = v61;
            *v60 = 136380931;
            v181 = v2[8];
            __swift_project_boxed_opaque_existential_1(v2 + 4, v2[7]);
            v182 = sub_265779D0C();
            v184 = sub_265761C38(v182, v183, &v215);

            *(v60 + 4) = v184;
            *(v60 + 12) = 2082;
            v185 = *v57;
            v186 = v57[1];

            sub_2657622E0(v57, type metadata accessor for Alert);
            v187 = sub_265761C38(v185, v186, &v215);

            *(v60 + 14) = v187;
            v69 = "(%{private}s): Ignoring alert from unexpected device: %{public}s";
            goto LABEL_9;
          }

LABEL_57:

          sub_2657622E0(v57, type metadata accessor for Alert);
          return;
        }
      }

      sub_26576000C(a1, v134, type metadata accessor for Alert);

      v135 = sub_265779DDC();
      v136 = sub_265779EBC();

      if (os_log_type_enabled(v135, v136))
      {
        v137 = swift_slowAlloc();
        v138 = swift_slowAlloc();
        v215 = v138;
        *v137 = 136380931;
        v192 = v2[8];
        __swift_project_boxed_opaque_existential_1(v2 + 4, v2[7]);
        v193 = sub_265779D0C();
        v195 = sub_265761C38(v193, v194, &v215);

        *(v137 + 4) = v195;
        *(v137 + 12) = 2082;
        v196 = *v134;
        v197 = v134[1];

        sub_2657622E0(v134, type metadata accessor for Alert);
        v198 = sub_265761C38(v196, v197, &v215);

        *(v137 + 14) = v198;
        v146 = "(%{private}s): Remote device failed to show optional alert; retrying as mandatory alert: %{public}s";
        goto LABEL_45;
      }

LABEL_66:

      sub_2657622E0(v134, type metadata accessor for Alert);
      goto LABEL_67;
    }

LABEL_72:
    __break(1u);
    return;
  }

LABEL_42:
  v130 = v2[8];
  __swift_project_boxed_opaque_existential_1(v2 + 4, v2[7]);
  v131 = v209;
  sub_265779CFC();
  v132 = sub_265779D3C();
  v133 = *(v132 - 8);
  if ((*(v133 + 48))(v131, 1, v132) == 1)
  {
    sub_26575FF24(v131, &qword_28001D628, &qword_26577AC10);
    v134 = v207;
    sub_26576000C(a1, v207, type metadata accessor for Alert);

    v135 = sub_265779DDC();
    v136 = sub_265779EBC();

    if (os_log_type_enabled(v135, v136))
    {
      v137 = swift_slowAlloc();
      v138 = swift_slowAlloc();
      v215 = v138;
      *v137 = 136380931;
      v139 = v2[8];
      __swift_project_boxed_opaque_existential_1(v2 + 4, v2[7]);
      v140 = sub_265779D0C();
      v142 = sub_265761C38(v140, v141, &v215);

      *(v137 + 4) = v142;
      *(v137 + 12) = 2082;
      v143 = *v134;
      v144 = v134[1];

      sub_2657622E0(v134, type metadata accessor for Alert);
      v145 = sub_265761C38(v143, v144, &v215);

      *(v137 + 14) = v145;
      v146 = "(%{private}s): Optional alert failed; retrying as mandatory alert: %{public}s";
LABEL_45:
      _os_log_impl(&dword_26575E000, v135, v136, v146, v137, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x26675E650](v138, -1, -1);
      MEMORY[0x26675E650](v137, -1, -1);

LABEL_67:
      v199 = v2[8];
      __swift_project_boxed_opaque_existential_1(v2 + 4, v2[7]);
      v200 = sub_265779D0C();
      LOBYTE(v215) = 1;
      sub_26576DC94(a1, v200, v201, &v215);

      return;
    }

    goto LABEL_66;
  }

  v147 = sub_265779D2C();
  v149 = v148;
  (*(v133 + 8))(v131, v132);
  v150 = v206;
  sub_26576000C(a1, v206, type metadata accessor for Alert);

  v151 = sub_265779DDC();
  v152 = sub_265779EBC();

  if (os_log_type_enabled(v151, v152))
  {
    v153 = swift_slowAlloc();
    v214 = swift_slowAlloc();
    v215 = v214;
    *v153 = 136380931;
    v154 = v149;
    v155 = a1;
    v156 = v2;
    v157 = v2[7];
    v158 = v2[8];
    __swift_project_boxed_opaque_existential_1(v156 + 4, v157);
    LODWORD(v213) = v152;
    a1 = v155;
    v149 = v154;
    v159 = sub_265779D0C();
    v161 = sub_265761C38(v159, v160, &v215);

    *(v153 + 4) = v161;
    *(v153 + 12) = 2082;
    v162 = *v150;
    v163 = v150[1];

    sub_2657622E0(v150, type metadata accessor for Alert);
    v164 = sub_265761C38(v162, v163, &v215);

    *(v153 + 14) = v164;
    _os_log_impl(&dword_26575E000, v151, v213, "(%{private}s): Sending failed optional alert to remote device: %{public}s", v153, 0x16u);
    v165 = v214;
    swift_arrayDestroy();
    MEMORY[0x26675E650](v165, -1, -1);
    MEMORY[0x26675E650](v153, -1, -1);
  }

  else
  {

    sub_2657622E0(v150, type metadata accessor for Alert);
  }

  LOBYTE(v215) = 0;
  sub_26576DC94(a1, v147, v149, &v215);
}

uint64_t sub_265761848(uint64_t (*a1)(unint64_t))
{
  v3 = *(type metadata accessor for Alert(0) - 8);
  v4 = *(v1 + 16);
  return a1(v1 + ((*(v3 + 80) + 24) & ~*(v3 + 80)));
}

uint64_t sub_2657618CC()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_2657618F8(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v6 = sub_265779E3C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20]();
  v10 = (v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = v3[2];
  *v10 = v11;
  (*(v7 + 104))(v10, *MEMORY[0x277D85200], v6);
  v12 = v11;
  LOBYTE(v11) = sub_265779E4C();
  (*(v7 + 8))(v10, v6);
  if ((v11 & 1) == 0)
  {
    __break(1u);
LABEL_11:
    swift_once();
    goto LABEL_5;
  }

  result = swift_beginAccess();
  v14 = v3[17];
  if (!*(v14 + 16))
  {
    return result;
  }

  v15 = v3[17];

  v16 = sub_26576435C(a1, a2);
  if ((v17 & 1) == 0)
  {
  }

  v10 = *(*(v14 + 56) + 8 * v16);

  if (qword_2814476D8 != -1)
  {
    goto LABEL_11;
  }

LABEL_5:
  v18 = sub_265779DEC();
  __swift_project_value_buffer(v18, qword_2814476E0);

  v19 = sub_265779DDC();
  v20 = sub_265779EBC();

  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    *v21 = 136380931;
    v27[1] = v10;
    v28[0] = v22;
    v23 = v3[8];
    __swift_project_boxed_opaque_existential_1(v3 + 4, v3[7]);
    v24 = sub_265779D0C();
    v26 = sub_265761C38(v24, v25, v28);

    *(v21 + 4) = v26;
    *(v21 + 12) = 2082;
    *(v21 + 14) = sub_265761C38(a1, a2, v28);
    _os_log_impl(&dword_26575E000, v19, v20, "(%{private}s): Watchdog cancelled for: %{public}s", v21, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x26675E650](v22, -1, -1);
    MEMORY[0x26675E650](v21, -1, -1);
  }

  sub_265779C3C();
  swift_beginAccess();

  sub_265778BC0(0, a1, a2);
  swift_endAccess();
}

uint64_t sub_265761C38(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_265761D04(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x277D840A0];
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_265761E10(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_1(v11);
  return v7;
}

unint64_t sub_265761D04(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_26576FDF8(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = sub_265779F8C();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

uint64_t sub_265761E10(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t Alert.description.getter()
{
  v1 = v0;
  v2 = *(type metadata accessor for Alert.HistoryItem(0) - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20]();
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = 0;
  v23 = 0xE000000000000000;
  sub_265779F5C();
  MEMORY[0x26675DF80](0x696669746E656469, 0xEC000000203A7265);
  MEMORY[0x26675DF80](*v1, v1[1]);
  MEMORY[0x26675DF80](0xD000000000000010, 0x800000026577C3C0);
  v6 = type metadata accessor for Alert(0);
  v7 = v6[5];
  sub_265779C1C();
  sub_265762188(&qword_2814476B8, MEMORY[0x277CC9578]);
  v8 = sub_26577A0AC();
  MEMORY[0x26675DF80](v8);

  MEMORY[0x26675DF80](0x73696D736964203BLL, 0xEF203A6574614473);
  v9 = v1 + v6[6];
  v10 = sub_26577A0AC();
  MEMORY[0x26675DF80](v10);

  MEMORY[0x26675DF80](0xD000000000000011, 0x800000026577C3E0);
  v11 = v1 + v6[7];
  v12 = *v11;
  LOBYTE(v11) = v11[8];
  v20 = v12;
  v21 = v11;
  v13 = sub_265779E5C();
  MEMORY[0x26675DF80](v13);

  MEMORY[0x26675DF80](0xD000000000000016, 0x800000026577C400);
  if (*(v1 + v6[8]))
  {
    v14 = 1702195828;
  }

  else
  {
    v14 = 0x65736C6166;
  }

  if (*(v1 + v6[8]))
  {
    v15 = 0xE400000000000000;
  }

  else
  {
    v15 = 0xE500000000000000;
  }

  MEMORY[0x26675DF80](v14, v15);

  result = MEMORY[0x26675DF80](0xD000000000000010, 0x800000026577C420);
  v17 = *(v1 + v6[10]);
  v18 = *(v17 + 16);
  if (v18)
  {
    sub_265762204(v17 + ((*(v2 + 80) + 32) & ~*(v2 + 80)) + *(v2 + 72) * (v18 - 1), v5, type metadata accessor for Alert.HistoryItem);
    v19 = sub_265779E5C();
    MEMORY[0x26675DF80](v19);

    return v22;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_265762188(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t sub_2657621E4(uint64_t a1)
{
  if (*(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_265762204(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2657622A4(_BYTE *a1)
{
  v1 = *a1;
  if (v1 >= 0)
  {
    return *a1 >> 6;
  }

  else
  {
    return v1 & 1 | 2u;
  }
}

uint64_t sub_2657622E0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_265762340(uint64_t a1)
{
  v2 = v1;
  v4 = sub_265779C1C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = (MEMORY[0x28223BE20])();
  v9 = &v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v49 = &v46 - v10;
  result = type metadata accessor for Alert(0);
  v12 = *(a1 + *(result + 40));
  v13 = *(v12 + 16);
  if (!v13)
  {
    __break(1u);
    goto LABEL_25;
  }

  v46 = v9;
  v47 = v5;
  v48 = v4;
  v14 = v13 - 1;
  v15 = type metadata accessor for Alert.HistoryItem(0);
  v16 = v12 + ((*(*(v15 - 8) + 80) + 32) & ~*(*(v15 - 8) + 80));
  v17 = *(*(v15 - 8) + 72);
  v18 = v16 + v17 * v14;
  v20 = *(v18 + 8);
  v19 = *(v18 + 16);
  v21 = v2[8];
  __swift_project_boxed_opaque_existential_1(v2 + 4, v2[7]);

  if (v20 == sub_265779D0C() && v19 == v22)
  {

    goto LABEL_15;
  }

  v24 = sub_26577A0BC();

  if (v24)
  {
LABEL_15:
    v33 = 0;
    return v33 & 1;
  }

  v25 = *(v12 + 16);
  if (!v25)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v26 = v16 + (v25 - 1) * v17;
  v28 = *(v26 + 24);
  v27 = *(v26 + 32);
  v29 = v2[8];
  __swift_project_boxed_opaque_existential_1(v2 + 4, v2[7]);

  if (v28 == sub_265779D0C() && v27 == v30)
  {

    goto LABEL_18;
  }

  v32 = sub_26577A0BC();

  if ((v32 & 1) == 0)
  {
    goto LABEL_15;
  }

LABEL_18:
  v34 = *(v12 + 16);
  if (!v34)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v35 = *(v16 + (v34 - 1) * v17 + 40);
  if (v35 > 0x3F)
  {
    goto LABEL_15;
  }

  v36 = v2[11];
  if (!*(v36 + 16))
  {
    goto LABEL_15;
  }

  result = sub_265764524(v35);
  if ((v37 & 1) == 0)
  {
    goto LABEL_15;
  }

  v38 = *(v12 + 16);
  if (v38)
  {
    v39 = *(*(v36 + 56) + 8 * result);
    v40 = v16 + (v38 - 1) * v17;
    v42 = v46;
    v41 = v47;
    v43 = v48;
    (*(v47 + 16))(v46, v40 + *(v15 + 32), v48);
    v44 = v49;
    sub_265779BAC();
    v45 = *(v41 + 8);
    v45(v42, v43);
    sub_265779BFC();
    v33 = sub_265779BBC();
    v45(v42, v43);
    v45(v44, v43);
    return v33 & 1;
  }

LABEL_27:
  __break(1u);
  return result;
}

void sub_2657626C0(uint64_t a1)
{
  v3 = type metadata accessor for Alert.HistoryItem(0);
  v73 = *(v3 - 8);
  v74 = v3;
  v4 = *(v73 + 64);
  v5 = MEMORY[0x28223BE20](v3);
  v75 = &v66 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = (&v66 - v8);
  MEMORY[0x28223BE20](v7);
  v11 = &v66 - v10;
  v78 = type metadata accessor for Alert(0);
  v72 = *(v78 - 1);
  v12 = *(v72 + 64);
  v13 = MEMORY[0x28223BE20](v78);
  v14 = &v66 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v13);
  v76 = &v66 - v16;
  MEMORY[0x28223BE20](v15);
  v18 = (&v66 - v17);
  v19 = sub_265779E3C();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19);
  v23 = (&v66 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  v77 = v1;
  v24 = v1[2];
  *v23 = v24;
  (*(v20 + 104))(v23, *MEMORY[0x277D85200], v19);
  v71 = v24;
  LOBYTE(v24) = sub_265779E4C();
  (*(v20 + 8))(v23, v19);
  if (v24)
  {
    v25 = *(a1 + *(v78 + 10));
    v26 = *(v25 + 16);
    if (v26)
    {
      v27 = a1;
      v69 = (*(v73 + 80) + 32) & ~*(v73 + 80);
      v70 = v12;
      v28 = *(v73 + 72);
      v67 = &v66 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
      v68 = v28;
      sub_26576000C(v25 + v69 + v28 * (v26 - 1), v9, type metadata accessor for Alert.HistoryItem);
      v29 = *v9;
      v30 = v18;
      v31 = v9[1];
      v32 = v9[2];
      v34 = v9[3];
      v33 = v9[4];
      v73 = v27;
      v35 = *(v74 + 32);

      sub_265779BFC();
      sub_2657622E0(v9, type metadata accessor for Alert.HistoryItem);
      *v11 = v29;
      *(v11 + 1) = v31;
      *(v11 + 2) = v32;
      v18 = v30;
      *(v11 + 3) = v34;
      *(v11 + 4) = v33;
      v23 = v73;
      v11[40] = 1;
      sub_26576000C(v23, v30, type metadata accessor for Alert);
      v19 = v75;
      sub_26576000C(v11, v75, type metadata accessor for Alert.HistoryItem);
      v14 = *(v78 + 10);
      v9 = *&v14[v18];
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        goto LABEL_4;
      }

      goto LABEL_20;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
LABEL_20:
  v9 = sub_265763004(0, v9[2] + 1, 1, v9);
LABEL_4:
  v36 = v76;
  v38 = v9[2];
  v37 = v9[3];
  if (v38 >= v37 >> 1)
  {
    v9 = sub_265763004(v37 > 1, v38 + 1, 1, v9);
  }

  sub_2657622E0(v11, type metadata accessor for Alert.HistoryItem);
  v9[2] = v38 + 1;
  sub_26575FFA4(v19, v9 + v69 + v38 * v68, type metadata accessor for Alert.HistoryItem);
  *&v14[v18] = v9;
  v39 = v77;
  sub_2657631E0(v18);
  if (qword_2814476D8 != -1)
  {
    swift_once();
  }

  v40 = sub_265779DEC();
  __swift_project_value_buffer(v40, qword_2814476E0);
  sub_26576000C(v23, v36, type metadata accessor for Alert);

  v41 = sub_265779DDC();
  v42 = sub_265779EBC();

  if (os_log_type_enabled(v41, v42))
  {
    v43 = swift_slowAlloc();
    v44 = swift_slowAlloc();
    v79 = v44;
    *v43 = 136380931;
    v45 = v39[8];
    __swift_project_boxed_opaque_existential_1(v39 + 4, v39[7]);
    v46 = sub_265779D0C();
    v48 = sub_265761C38(v46, v47, &v79);

    *(v43 + 4) = v48;
    *(v43 + 12) = 2082;
    v49 = Alert.description.getter();
    v51 = v50;
    sub_2657622E0(v36, type metadata accessor for Alert);
    v52 = sub_265761C38(v49, v51, &v79);

    *(v43 + 14) = v52;
    _os_log_impl(&dword_26575E000, v41, v42, "(%{private}s): Attempting to present alert on local device: %{public}s", v43, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x26675E650](v44, -1, -1);
    MEMORY[0x26675E650](v43, -1, -1);
  }

  else
  {

    sub_2657622E0(v36, type metadata accessor for Alert);
  }

  v53 = v70;
  v54 = v39[11];
  if (v54[2])
  {
    v55 = sub_265764524(1u);
    if (v56)
    {
      goto LABEL_17;
    }
  }

  if (qword_281447838 != -1)
  {
    swift_once();
  }

  v54 = off_281447840;
  if (*(off_281447840 + 2))
  {
    v55 = sub_265764524(1u);
    if (v57)
    {
LABEL_17:
      v58 = *(v54[7] + 8 * v55);
      sub_265779CDC();
      v59 = sub_265779CAC();
      v60 = sub_265779C8C();
      v78 = &v66;
      MEMORY[0x28223BE20](v60);
      *(&v66 - 4) = v39;
      *(&v66 - 3) = v18;
      *(&v66 - 2) = v59;
      v61 = v67;
      sub_26576000C(v18, v67, type metadata accessor for Alert);
      v62 = v18;
      v63 = (*(v72 + 80) + 24) & ~*(v72 + 80);
      v64 = (v53 + v63 + 7) & 0xFFFFFFFFFFFFFFF8;
      v65 = swift_allocObject();
      *(v65 + 16) = v39;
      sub_26575FFA4(v61, v65 + v63, type metadata accessor for Alert);
      *(v65 + v64) = v59;

      sub_265779C5C();

      sub_2657622E0(v62, type metadata accessor for Alert);
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_265762EB8()
{
  v1 = (type metadata accessor for Alert(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = (*(*v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(v0 + 16);

  v6 = v0 + v3;
  v7 = *(v0 + v3 + 8);

  v8 = v1[7];
  v9 = sub_265779C1C();
  v10 = *(*(v9 - 8) + 8);
  v10(v6 + v8, v9);
  v10(v6 + v1[8], v9);
  sub_265764C28(*(v6 + v1[11]), *(v6 + v1[11] + 8));
  v11 = *(v6 + v1[12]);

  v12 = *(v0 + v4);

  return MEMORY[0x2821FE8E8](v0, v4 + 8, v2 | 7);
}

size_t sub_265763004(size_t result, int64_t a2, char a3, void *a4)
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
LABEL_30:
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

  if (!v9)
  {
    v13 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28001D630, &qword_26577AC18);
  v10 = *(type metadata accessor for Alert.HistoryItem(0) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(type metadata accessor for Alert.HistoryItem(0) - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

uint64_t sub_2657631E0(uint64_t *a1)
{
  v2 = v1;
  v102 = a1;
  v101 = type metadata accessor for Alert(0);
  v3 = *(v101 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v101);
  v99 = &v93 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v5);
  v98 = &v93 - v8;
  v9 = MEMORY[0x28223BE20](v7);
  v97 = &v93 - v10;
  MEMORY[0x28223BE20](v9);
  v94 = (&v93 - v11);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28001D670, &qword_26577AD60);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v93 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28001D620, &qword_26577C140);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16 - 8);
  v100 = &v93 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v18);
  v22 = &v93 - v21;
  MEMORY[0x28223BE20](v20);
  v24 = (&v93 - v23);
  v25 = sub_265779E3C();
  v26 = *(v25 - 8);
  v27 = *(v26 + 64);
  MEMORY[0x28223BE20](v25);
  v29 = (&v93 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0));
  v30 = *(v2 + 16);
  *v29 = v30;
  (*(v26 + 104))(v29, *MEMORY[0x277D85200], v25);
  v31 = v30;
  LOBYTE(v30) = sub_265779E4C();
  (*(v26 + 8))(v29, v25);
  if ((v30 & 1) == 0)
  {
    __break(1u);
LABEL_27:
    swift_once();
LABEL_19:
    v78 = sub_265779DEC();
    __swift_project_value_buffer(v78, qword_2814476E0);
    v79 = v2;
    v45 = v99;
    sub_26576000C(v79, v99, type metadata accessor for Alert);

    v46 = sub_265779DDC();
    v47 = sub_265779EBC();

    if (os_log_type_enabled(v46, v47))
    {
      v48 = swift_slowAlloc();
      v49 = swift_slowAlloc();
      v103[0] = v49;
      *v48 = 136380931;
      v80 = v24[8];
      __swift_project_boxed_opaque_existential_1(v24 + 4, v24[7]);
      v81 = sub_265779D0C();
      v83 = sub_265761C38(v81, v82, v103);

      *(v48 + 4) = v83;
      *(v48 + 12) = 2082;
      v84 = Alert.description.getter();
      v86 = v85;
      sub_2657622E0(v45, type metadata accessor for Alert);
      v87 = sub_265761C38(v84, v86, v103);

      *(v48 + 14) = v87;
      v58 = "(%{private}s): Not syncing unchanged alert: %{public}s";
      goto LABEL_21;
    }

    goto LABEL_22;
  }

  swift_beginAccess();
  v32 = v2;
  sub_26575F5D4(v2 + 96, v103);
  v33 = v103[4];
  __swift_project_boxed_opaque_existential_1(v103, v103[3]);
  v2 = v102;
  v34 = *v102;
  v35 = *(v33 + 16);
  v95 = v102[1];
  v96 = v34;
  v35();
  __swift_destroy_boxed_opaque_existential_1(v103);
  sub_26576000C(v2, v22, type metadata accessor for Alert);
  v36 = v101;
  (*(v3 + 56))(v22, 0, 1, v101);
  v37 = *(v12 + 48);
  sub_265763DF8(v24, v15, &qword_28001D620, &qword_26577C140);
  sub_265763DF8(v22, &v15[v37], &qword_28001D620, &qword_26577C140);
  v38 = *(v3 + 48);
  v29 = v24;
  if (v38(v15, 1, v36) == 1)
  {
    sub_26575FF24(v22, &qword_28001D620, &qword_26577C140);
    v24 = v32;
    if (v38(&v15[v37], 1, v36) == 1)
    {
      sub_26575FF24(v15, &qword_28001D620, &qword_26577C140);
      goto LABEL_18;
    }

    goto LABEL_7;
  }

  v39 = v100;
  sub_265763DF8(v15, v100, &qword_28001D620, &qword_26577C140);
  if (v38(&v15[v37], 1, v36) == 1)
  {
    sub_26575FF24(v22, &qword_28001D620, &qword_26577C140);
    sub_2657622E0(v39, type metadata accessor for Alert);
    v24 = v32;
LABEL_7:
    v40 = v36;
    sub_26575FF24(v15, &qword_28001D670, &qword_26577AD60);
    goto LABEL_8;
  }

  v40 = v36;
  v74 = &v15[v37];
  v75 = v39;
  v76 = v94;
  sub_26575FFA4(v74, v94, type metadata accessor for Alert);
  v77 = _s12SessionAlert0B0V2eeoiySbAC_ACtFZ_0(v75, v76);
  sub_2657622E0(v76, type metadata accessor for Alert);
  sub_26575FF24(v22, &qword_28001D620, &qword_26577C140);
  sub_2657622E0(v75, type metadata accessor for Alert);
  sub_26575FF24(v15, &qword_28001D620, &qword_26577C140);
  v24 = v32;
  if (v77)
  {
LABEL_18:
    if (qword_2814476D8 == -1)
    {
      goto LABEL_19;
    }

    goto LABEL_27;
  }

LABEL_8:
  swift_beginAccess();
  v41 = v24[15];
  v42 = v24[16];
  __swift_mutable_project_boxed_opaque_existential_1((v24 + 12), v41);
  (*(v42 + 24))(v2, v41, v42);
  swift_endAccess();
  if (*(v2 + *(v40 + 32)))
  {
    if (qword_2814476D8 != -1)
    {
      swift_once();
    }

    v43 = sub_265779DEC();
    __swift_project_value_buffer(v43, qword_2814476E0);
    v44 = v2;
    v45 = v98;
    sub_26576000C(v44, v98, type metadata accessor for Alert);

    v46 = sub_265779DDC();
    v47 = sub_265779EBC();

    if (os_log_type_enabled(v46, v47))
    {
      v48 = swift_slowAlloc();
      v49 = swift_slowAlloc();
      v103[0] = v49;
      *v48 = 136380931;
      v50 = v24[8];
      __swift_project_boxed_opaque_existential_1(v24 + 4, v24[7]);
      v51 = sub_265779D0C();
      v53 = sub_265761C38(v51, v52, v103);

      *(v48 + 4) = v53;
      *(v48 + 12) = 2082;
      v54 = Alert.description.getter();
      v56 = v55;
      sub_2657622E0(v45, type metadata accessor for Alert);
      v57 = sub_265761C38(v54, v56, v103);

      *(v48 + 14) = v57;
      v58 = "(%{private}s): Not syncing breaksThroughFocus alert: %{public}s";
LABEL_21:
      _os_log_impl(&dword_26575E000, v46, v47, v58, v48, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x26675E650](v49, -1, -1);
      MEMORY[0x26675E650](v48, -1, -1);

      return sub_26575FF24(v29, &qword_28001D620, &qword_26577C140);
    }

LABEL_22:

    sub_2657622E0(v45, type metadata accessor for Alert);
    return sub_26575FF24(v29, &qword_28001D620, &qword_26577C140);
  }

  if (qword_2814476D8 != -1)
  {
    swift_once();
  }

  v59 = sub_265779DEC();
  __swift_project_value_buffer(v59, qword_2814476E0);
  v60 = v2;
  v61 = v97;
  sub_26576000C(v60, v97, type metadata accessor for Alert);

  v62 = sub_265779DDC();
  v63 = sub_265779EBC();

  if (os_log_type_enabled(v62, v63))
  {
    v64 = swift_slowAlloc();
    v65 = swift_slowAlloc();
    v103[0] = v65;
    *v64 = 136380931;
    v66 = v24[8];
    __swift_project_boxed_opaque_existential_1(v24 + 4, v24[7]);
    v67 = sub_265779D0C();
    v69 = sub_265761C38(v67, v68, v103);

    *(v64 + 4) = v69;
    *(v64 + 12) = 2082;
    v70 = Alert.description.getter();
    v72 = v71;
    sub_2657622E0(v61, type metadata accessor for Alert);
    v73 = sub_265761C38(v70, v72, v103);

    *(v64 + 14) = v73;
    _os_log_impl(&dword_26575E000, v62, v63, "(%{private}s): Syncing alert: %{public}s", v64, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x26675E650](v65, -1, -1);
    MEMORY[0x26675E650](v64, -1, -1);
  }

  else
  {

    sub_2657622E0(v61, type metadata accessor for Alert);
  }

  v88 = v24[8];
  __swift_project_boxed_opaque_existential_1(v24 + 4, v24[7]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28001D668, &qword_26577AD58);
  v89 = *(sub_265779DBC() - 8);
  v90 = *(v89 + 72);
  v91 = (*(v89 + 80) + 32) & ~*(v89 + 80);
  *(swift_allocObject() + 16) = xmmword_26577ABF0;

  sub_265779D9C();
  sub_265779CEC();

  return sub_26575FF24(v29, &qword_28001D620, &qword_26577C140);
}

uint64_t sub_265763DF8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
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

uint64_t sub_265763EB0(uint64_t *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28001D620, &qword_26577C140);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v10 - v4;
  v6 = *a1;
  v7 = a1[1];
  sub_265763F98(a1, &v10 - v4);
  v8 = type metadata accessor for Alert(0);
  (*(*(v8 - 8) + 56))(v5, 0, 1, v8);

  return sub_265763FFC(v5, v6, v7);
}

uint64_t sub_265763F98(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Alert(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_265763FFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28001D620, &qword_26577C140);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v19 - v9;
  v11 = type metadata accessor for Alert(0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v15 + 48))(a1, 1) == 1)
  {
    sub_26576594C(a1);
    sub_2657659B4(a2, a3, v10);

    return sub_26576594C(v10);
  }

  else
  {
    sub_265764194(a1, v14);
    v17 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v3;
    sub_2657641F8(v14, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v20;
  }

  return result;
}

uint64_t sub_265764194(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Alert(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2657641F8(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v12 = sub_26576435C(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v11 & 1) == 0;
  v15 = v13 + v14;
  if (__OFADD__(v13, v14))
  {
    __break(1u);
    goto LABEL_17;
  }

  v16 = v11;
  v17 = *(v10 + 24);
  if (v17 < v15 || (a4 & 1) == 0)
  {
    if (v17 >= v15 && (a4 & 1) == 0)
    {
      sub_265779838();
      goto LABEL_7;
    }

    sub_2657791DC(v15, a4 & 1);
    v22 = *v5;
    v23 = sub_26576435C(a2, a3);
    if ((v16 & 1) == (v24 & 1))
    {
      v12 = v23;
      v18 = *v5;
      if (v16)
      {
        goto LABEL_8;
      }

      goto LABEL_13;
    }

LABEL_17:
    result = sub_26577A0CC();
    __break(1u);
    return result;
  }

LABEL_7:
  v18 = *v5;
  if (v16)
  {
LABEL_8:
    v19 = v18[7];
    v20 = v19 + *(*(type metadata accessor for Alert(0) - 8) + 72) * v12;

    return sub_265779A68(a1, v20);
  }

LABEL_13:
  sub_2657643D4(v12, a2, a3, a1, v18);
}

unint64_t sub_26576435C(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_26577A0DC();
  sub_265779E6C();
  v6 = sub_26577A10C();

  return sub_26576446C(a1, a2, v6);
}

uint64_t sub_2657643D4(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v8 = (a5[6] + 16 * a1);
  *v8 = a2;
  v8[1] = a3;
  v9 = a5[7];
  v10 = type metadata accessor for Alert(0);
  result = sub_265764194(a4, v9 + *(*(v10 - 8) + 72) * a1);
  v12 = a5[2];
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v14;
  }

  return result;
}

unint64_t sub_26576446C(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_26577A0BC())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_265764524(unsigned __int8 a1)
{
  v3 = *(v1 + 40);
  sub_26577A0DC();
  v4 = a1 >> 6;
  if (!(a1 >> 6) || v4 == 1)
  {
    MEMORY[0x26675E1F0]();
    v4 = a1 & 1;
  }

  MEMORY[0x26675E1F0](v4);
  v5 = sub_26577A10C();

  return sub_2657645AC(a1, v5);
}

unint64_t sub_2657645AC(unsigned __int8 a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    while (1)
    {
      v7 = *(*(v2 + 48) + result);
      if (!(v7 >> 6))
      {
        break;
      }

      if (v7 >> 6 != 1)
      {
        if (a1 == 128)
        {
          return result;
        }

        goto LABEL_4;
      }

      if ((a1 & 0xC0) == 0x40)
      {
        goto LABEL_10;
      }

LABEL_4:
      result = (result + 1) & v6;
      if (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) == 0)
      {
        return result;
      }
    }

    if (a1 > 0x3Fu)
    {
      goto LABEL_4;
    }

LABEL_10:
    if (((v7 ^ a1) & 1) == 0)
    {
      return result;
    }

    goto LABEL_4;
  }

  return result;
}

uint64_t sub_265764650(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v18 = a4;
  v7 = type metadata accessor for Alert(0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v11 = *(a2 + 72);
  v10 = *(a2 + 80);
  ObjectType = swift_getObjectType();
  v12 = swift_allocObject();
  swift_weakInit();
  sub_26576000C(a3, &ObjectType - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for Alert);
  v13 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = v12;
  *(v14 + 24) = a1;
  sub_26575FFA4(&ObjectType - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v14 + v13, type metadata accessor for Alert);
  *(v14 + ((v9 + v13 + 7) & 0xFFFFFFFFFFFFFFF8)) = v18;
  v15 = *(v10 + 32);

  v15(a3, 1, sub_265765D04, v14, ObjectType, v10);
}

uint64_t sub_265764820()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_265764858()
{
  v1 = (type metadata accessor for Alert(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = (*(*v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(v0 + 16);

  v6 = *(v0 + 24);

  v7 = v0 + v3;
  v8 = *(v0 + v3 + 8);

  v9 = v1[7];
  v10 = sub_265779C1C();
  v11 = *(*(v10 - 8) + 8);
  v11(v7 + v9, v10);
  v11(v7 + v1[8], v10);
  sub_265764C28(*(v7 + v1[11]), *(v7 + v1[11] + 8));
  v12 = *(v7 + v1[12]);

  v13 = *(v0 + v4);

  return MEMORY[0x2821FE8E8](v0, v4 + 8, v2 | 7);
}

uint64_t Alert.payload.getter()
{
  v1 = v0 + *(type metadata accessor for Alert(0) + 36);
  v2 = *v1;
  sub_265760088(*v1, *(v1 + 8));
  return v2;
}

uint64_t Alert.currentState.getter@<X0>(uint64_t a1@<X8>)
{
  result = type metadata accessor for Alert(0);
  v4 = *(v1 + *(result + 40));
  v5 = *(v4 + 16);
  if (v5)
  {
    v6 = v5 - 1;
    v7 = *(type metadata accessor for Alert.HistoryItem(0) - 8);
    return sub_265762204(v4 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v6, a1, type metadata accessor for Alert.HistoryItem);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t objectdestroy_29Tm()
{
  v1 = (type metadata accessor for Alert(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(*v1 + 64);
  v5 = *(v0 + 16);

  v6 = *(v0 + v3 + 8);

  v7 = v1[7];
  v8 = sub_265779C1C();
  v9 = *(*(v8 - 8) + 8);
  v9(v0 + v3 + v7, v8);
  v9(v0 + v3 + v1[8], v8);
  sub_265764C28(*(v0 + v3 + v1[11]), *(v0 + v3 + v1[11] + 8));
  v10 = *(v0 + v3 + v1[12]);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_265764C28(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

Swift::Void __swiftcall AlertCenter.dismissAlert(identifier:)(Swift::String identifier)
{
  v2 = v1;
  object = identifier._object;
  countAndFlagsBits = identifier._countAndFlagsBits;
  v5 = *(v1 + 16);
  v6 = swift_allocObject();
  v6[2] = v2;
  v6[3] = countAndFlagsBits;
  v6[4] = object;
  v7 = swift_allocObject();
  *(v7 + 16) = sub_265765258;
  *(v7 + 24) = v6;
  v9[4] = sub_2657618F4;
  v9[5] = v7;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 1107296256;
  v9[2] = sub_2657600DC;
  v9[3] = &block_descriptor_47;
  v8 = _Block_copy(v9);

  dispatch_sync(v5, v8);
  _Block_release(v8);
  LOBYTE(v5) = swift_isEscapingClosureAtFileLocation();

  if (v5)
  {
    __break(1u);
  }
}

uint64_t sub_265764E0C()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_265764E50(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28001D620, &qword_26577C140);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v34[-v8];
  v10 = type metadata accessor for Alert(0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v34[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v13);
  v17 = &v34[-v16];
  swift_beginAccess();
  sub_26575F5D4((a1 + 12), v35);
  v18 = v36;
  v19 = v37;
  __swift_project_boxed_opaque_existential_1(v35, v36);
  (*(v19 + 16))(a2, a3, v18, v19);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_26575FF24(v9, &qword_28001D620, &qword_26577C140);
    return __swift_destroy_boxed_opaque_existential_1(v35);
  }

  else
  {
    sub_26575FFA4(v9, v17, type metadata accessor for Alert);
    __swift_destroy_boxed_opaque_existential_1(v35);
    if (qword_2814476D8 != -1)
    {
      swift_once();
    }

    v21 = sub_265779DEC();
    __swift_project_value_buffer(v21, qword_2814476E0);
    sub_26576000C(v17, v15, type metadata accessor for Alert);

    v22 = sub_265779DDC();
    v23 = sub_265779EBC();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v35[0] = v25;
      *v24 = 136380931;
      v26 = a1[8];
      __swift_project_boxed_opaque_existential_1(a1 + 4, a1[7]);
      v27 = sub_265779D0C();
      v29 = sub_265761C38(v27, v28, v35);

      *(v24 + 4) = v29;
      *(v24 + 12) = 2082;
      v30 = Alert.description.getter();
      v32 = v31;
      sub_2657622E0(v15, type metadata accessor for Alert);
      v33 = sub_265761C38(v30, v32, v35);

      *(v24 + 14) = v33;
      _os_log_impl(&dword_26575E000, v22, v23, "(%{private}s): Dismissing alert: %{public}s", v24, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x26675E650](v25, -1, -1);
      MEMORY[0x26675E650](v24, -1, -1);
    }

    else
    {

      sub_2657622E0(v15, type metadata accessor for Alert);
    }

    sub_265765264(v17);
    return sub_2657622E0(v17, type metadata accessor for Alert);
  }
}

uint64_t sub_265765264(uint64_t *a1)
{
  v2 = v1;
  v4 = type metadata accessor for Alert(0);
  v54 = *(v4 - 8);
  v5 = *(v54 + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v7 = &v50 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v9 = &v50 - v8;
  v10 = sub_265779E3C();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = (&v50 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = v2[2];
  *v14 = v15;
  (*(v11 + 104))(v14, *MEMORY[0x277D85200], v10);
  v16 = v15;
  v17 = sub_265779E4C();
  (*(v11 + 8))(v14, v10);
  if (v17)
  {
    v53 = v5;
    if (qword_2814476D8 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v18 = sub_265779DEC();
  __swift_project_value_buffer(v18, qword_2814476E0);
  sub_26576000C(a1, v9, type metadata accessor for Alert);

  v19 = sub_265779DDC();
  v20 = sub_265779EBC();

  v21 = os_log_type_enabled(v19, v20);
  v52 = v16;
  if (v21)
  {
    v22 = swift_slowAlloc();
    v51 = v7;
    v23 = v22;
    v24 = swift_slowAlloc();
    v55[0] = v24;
    *v23 = 136380931;
    v25 = v2[8];
    __swift_project_boxed_opaque_existential_1(v2 + 4, v2[7]);
    v26 = sub_265779D0C();
    v28 = sub_265761C38(v26, v27, v55);

    *(v23 + 4) = v28;
    *(v23 + 12) = 2082;
    v29 = Alert.description.getter();
    v31 = v30;
    sub_2657622E0(v9, type metadata accessor for Alert);
    v32 = sub_265761C38(v29, v31, v55);

    *(v23 + 14) = v32;
    _os_log_impl(&dword_26575E000, v19, v20, "(%{private}s): Deleting alert: %{public}s", v23, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x26675E650](v24, -1, -1);
    v33 = v23;
    v7 = v51;
    MEMORY[0x26675E650](v33, -1, -1);
  }

  else
  {

    sub_2657622E0(v9, type metadata accessor for Alert);
  }

  v34 = *a1;
  v35 = a1[1];
  swift_beginAccess();
  v36 = v2[15];
  v37 = v2[16];
  __swift_mutable_project_boxed_opaque_existential_1((v2 + 12), v36);
  (*(v37 + 32))(v34, v35, v36, v37);
  swift_endAccess();
  v38 = v2[8];
  __swift_project_boxed_opaque_existential_1(v2 + 4, v2[7]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28001D668, &qword_26577AD58);
  v39 = *(sub_265779DBC() - 8);
  v40 = *(v39 + 72);
  v41 = (*(v39 + 80) + 32) & ~*(v39 + 80);
  *(swift_allocObject() + 16) = xmmword_26577ABF0;

  sub_265779D9C();
  sub_265779CEC();

  v42 = v2[9];
  v43 = v2[10];
  ObjectType = swift_getObjectType();
  (*(v43 + 40))(a1, ObjectType, v43);
  sub_2657618F8(v34, v35);
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v46 = result;
    v47 = v2[19];
    sub_265779CDC();
    sub_26576000C(a1, v7, type metadata accessor for Alert);
    v48 = (*(v54 + 80) + 40) & ~*(v54 + 80);
    v49 = swift_allocObject();
    v49[2] = v46;
    v49[3] = v47;
    v49[4] = v2;
    sub_26575FFA4(v7, v49 + v48, type metadata accessor for Alert);

    swift_unknownObjectRetain();
    sub_265779CCC();
    sub_265779CBC();

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_265765878(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28001D620, &qword_26577C140);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v10 - v6;
  v8 = type metadata accessor for Alert(0);
  (*(*(v8 - 8) + 56))(v7, 1, 1, v8);

  return sub_265763FFC(v7, a1, a2);
}

uint64_t sub_26576594C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28001D620, &qword_26577C140);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2657659B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v6 = *v3;
  v7 = sub_26576435C(a1, a2);
  if (v8)
  {
    v9 = v7;
    v10 = *v4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v4;
    v23 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_265779838();
      v12 = v23;
    }

    v13 = *(*(v12 + 48) + 16 * v9 + 8);

    v14 = *(v12 + 56);
    v15 = type metadata accessor for Alert(0);
    v22 = *(v15 - 8);
    sub_265764194(v14 + *(v22 + 72) * v9, a3);
    sub_265765B0C(v9, v12);
    *v4 = v12;
    v16 = *(v22 + 56);
    v17 = a3;
    v18 = 0;
    v19 = v15;
  }

  else
  {
    v20 = type metadata accessor for Alert(0);
    v16 = *(*(v20 - 8) + 56);
    v19 = v20;
    v17 = a3;
    v18 = 1;
  }

  return v16(v17, v18, 1, v19);
}

unint64_t sub_265765B0C(unint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_265779F3C() + 1) & ~v5;
    while (1)
    {
      v9 = *(a2 + 40);
      v10 = (*(a2 + 48) + 16 * v6);
      v11 = *v10;
      v12 = v10[1];
      sub_26577A0DC();

      sub_265779E6C();
      v13 = sub_26577A10C();

      v14 = v13 & v7;
      if (v3 >= v8)
      {
        break;
      }

      if (v14 < v8)
      {
        goto LABEL_10;
      }

LABEL_11:
      v15 = *(a2 + 48);
      v16 = (v15 + 16 * v3);
      v17 = (v15 + 16 * v6);
      if (v3 != v6 || v16 >= v17 + 1)
      {
        *v16 = *v17;
      }

      v18 = *(a2 + 56);
      v19 = *(*(type metadata accessor for Alert(0) - 8) + 72);
      v20 = v19 * v3;
      result = v18 + v19 * v3;
      v21 = v19 * v6;
      v22 = v18 + v19 * v6 + v19;
      if (v20 < v21 || result >= v22)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v3 = v6;
        if (v20 == v21)
        {
          goto LABEL_5;
        }

        result = swift_arrayInitWithTakeBackToFront();
      }

      v3 = v6;
LABEL_5:
      v6 = (v6 + 1) & v7;
      if (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    if (v14 < v8)
    {
      goto LABEL_5;
    }

LABEL_10:
    if (v3 < v14)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_20:
  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v24 = *(a2 + 16);
  v25 = __OFSUB__(v24, 1);
  v26 = v24 - 1;
  if (v25)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v26;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_265765D04(char *a1)
{
  v3 = *(type metadata accessor for Alert(0) - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);

  return sub_265765DA4(a1, v6, v7, v1 + v4, v5);
}

uint64_t sub_265765DA4(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v29 = a3;
  v30 = a5;
  v28 = sub_265779DFC();
  v33 = *(v28 - 8);
  v7 = *(v33 + 64);
  MEMORY[0x28223BE20](v28);
  v9 = v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_265779E2C();
  v31 = *(v10 - 8);
  v32 = v10;
  v11 = *(v31 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Alert(0);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v17 = v27 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v27[1] = *(result + 16);
    v20 = result;
    sub_26576000C(a4, v27 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for Alert);
    v21 = (*(v15 + 80) + 32) & ~*(v15 + 80);
    v22 = v21 + v16;
    v23 = swift_allocObject();
    v27[0] = v13;
    *(v23 + 16) = v29;
    *(v23 + 24) = v20;
    sub_26575FFA4(v17, v23 + v21, type metadata accessor for Alert);
    *(v23 + v22) = v18;
    *(v23 + (v22 & 0xFFFFFFFFFFFFFFF8) + 8) = v30;
    aBlock[4] = sub_2657663C4;
    aBlock[5] = v23;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_265766380;
    aBlock[3] = &block_descriptor_94;
    v24 = _Block_copy(aBlock);

    v25 = v27[0];
    sub_265779E0C();
    v34 = MEMORY[0x277D84F90];
    sub_2657662E4(qword_2814475D0, 255, MEMORY[0x277D85198]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28001D678, &qword_26577AD68);
    sub_26576632C(&qword_2814475C0, &qword_28001D678, &qword_26577AD68);
    v26 = v28;
    sub_265779F1C();
    MEMORY[0x26675E000](0, v25, v9, v24);
    _Block_release(v24);
    (*(v33 + 8))(v9, v26);
    (*(v31 + 8))(v25, v32);
  }

  return result;
}

uint64_t sub_26576618C()
{
  v1 = (type metadata accessor for Alert(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = (v3 + *(*v1 + 64)) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(v0 + 16);

  v6 = *(v0 + 24);

  v7 = v0 + v3;
  v8 = *(v0 + v3 + 8);

  v9 = v1[7];
  v10 = sub_265779C1C();
  v11 = *(*(v10 - 8) + 8);
  v11(v7 + v9, v10);
  v11(v7 + v1[8], v10);
  sub_265764C28(*(v7 + v1[11]), *(v7 + v1[11] + 8));
  v12 = *(v7 + v1[12]);

  v13 = *(v0 + v4 + 8);

  return MEMORY[0x2821FE8E8](v0, v4 + 16, v2 | 7);
}

uint64_t sub_2657662E4(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_26576632C(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t sub_265766380(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

uint64_t sub_2657663C4()
{
  v1 = *(type metadata accessor for Alert(0) - 8);
  v2 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v3 = v2 + *(v1 + 64);
  v4 = *(v0 + 16);
  v5 = *(v0 + 24);
  v6 = *(v0 + v3);
  v7 = *(v0 + (v3 & 0xFFFFFFFFFFFFFFF8) + 8);

  return sub_265766458(v4, v5, v0 + v2, v6);
}

uint64_t sub_265766458(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 a4)
{
  if ((sub_265779C6C() & 1) == 0)
  {
    sub_265779C3C();
    v7 = a4;
    sub_2657664C8(a3, &v7);
  }

  return sub_265779C9C();
}

uint64_t sub_2657664C8(uint64_t a1, unsigned __int8 *a2)
{
  v60 = type metadata accessor for Alert.HistoryItem(0);
  v5 = *(v60 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v60);
  v61 = &v55[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v55[-v10];
  MEMORY[0x28223BE20](v9);
  v13 = &v55[-v12];
  v64 = type metadata accessor for Alert(0);
  v14 = *(*(v64 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v64);
  v62 = &v55[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v15);
  v63 = &v55[-v17];
  v18 = sub_265779E3C();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  v22 = &v55[-((v21 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v23 = *a2;
  v24 = *(v2 + 2);
  *v22 = v24;
  (*(v19 + 104))(v22, *MEMORY[0x277D85200], v18);
  v25 = v24;
  v26 = sub_265779E4C();
  (*(v19 + 8))(v22, v18);
  if ((v26 & 1) == 0)
  {
    __break(1u);
    goto LABEL_15;
  }

  v27 = *(a1 + *(v64 + 40));
  v28 = *(v27 + 16);
  if (!v28)
  {
LABEL_15:
    __break(1u);
LABEL_16:
    v26 = sub_265763004(0, *(v26 + 16) + 1, 1, v26);
    goto LABEL_6;
  }

  v29 = v23 & 1 | 0x40;
  if (v23 == 2)
  {
    v29 = 128;
  }

  v56 = v29;
  v58 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v59 = v2;
  v57 = *(v5 + 72);
  sub_26576000C(v27 + v58 + v57 * (v28 - 1), v11, type metadata accessor for Alert.HistoryItem);
  v30 = *v11;
  v31 = v11[1];
  v32 = v11[2];
  v34 = v11[3];
  v33 = v11[4];
  v35 = a1;
  v36 = *(v60 + 32);

  sub_265779BFC();
  sub_2657622E0(v11, type metadata accessor for Alert.HistoryItem);
  *v13 = v30;
  *(v13 + 1) = v31;
  *(v13 + 2) = v32;
  *(v13 + 3) = v34;
  *(v13 + 4) = v33;
  v13[40] = v56;
  v11 = v63;
  sub_26576000C(v35, v63, type metadata accessor for Alert);
  v2 = v61;
  sub_26576000C(v13, v61, type metadata accessor for Alert.HistoryItem);
  a1 = *(v64 + 40);
  v26 = *(v11 + a1);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    goto LABEL_16;
  }

LABEL_6:
  v37 = v62;
  v39 = *(v26 + 16);
  v38 = *(v26 + 24);
  v40 = v59;
  if (v39 >= v38 >> 1)
  {
    v26 = sub_265763004(v38 > 1, v39 + 1, 1, v26);
  }

  sub_2657622E0(v13, type metadata accessor for Alert.HistoryItem);
  *(v26 + 16) = v39 + 1;
  sub_26575FFA4(v2, v26 + v58 + v39 * v57, type metadata accessor for Alert.HistoryItem);
  *(v11 + a1) = v26;
  sub_2657631E0(v11);
  if (qword_2814476D8 != -1)
  {
    swift_once();
  }

  v41 = sub_265779DEC();
  __swift_project_value_buffer(v41, qword_2814476E0);
  sub_26576000C(v11, v37, type metadata accessor for Alert);

  v42 = sub_265779DDC();
  v43 = sub_265779EBC();

  if (os_log_type_enabled(v42, v43))
  {
    v44 = swift_slowAlloc();
    v45 = swift_slowAlloc();
    v65 = v45;
    *v44 = 136380931;
    v46 = v40[8];
    __swift_project_boxed_opaque_existential_1(v40 + 4, v40[7]);
    v47 = sub_265779D0C();
    v49 = sub_265761C38(v47, v48, &v65);

    *(v44 + 4) = v49;
    *(v44 + 12) = 2082;
    v50 = Alert.description.getter();
    v52 = v51;
    sub_2657622E0(v37, type metadata accessor for Alert);
    v53 = sub_265761C38(v50, v52, &v65);

    *(v44 + 14) = v53;
    _os_log_impl(&dword_26575E000, v42, v43, "(%{private}s): Received presentation response for alert: %{public}s", v44, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x26675E650](v45, -1, -1);
    MEMORY[0x26675E650](v44, -1, -1);
  }

  else
  {

    sub_2657622E0(v37, type metadata accessor for Alert);
  }

  sub_265760104(v11);
  return sub_2657622E0(v11, type metadata accessor for Alert);
}

uint64_t *sub_265766ADC(uint64_t a1)
{
  v3 = sub_265779E3C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = (&v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = *(type metadata accessor for Alert(0) - 8);
  v9 = *(v8 + 64);
  result = MEMORY[0x28223BE20](a1);
  v11 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = a1 + *(v12 + 36);
  if ((*(v13 + 8) & 1) == 0)
  {
    if (*v13 <= 0.0)
    {

      return sub_265765264(result);
    }

    else
    {
      v15 = *result;
      v14 = result[1];
      sub_26576000C(result, &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for Alert);
      v16 = (*(v8 + 80) + 24) & ~*(v8 + 80);
      v17 = swift_allocObject();
      *(v17 + 16) = v1;
      sub_26575FFA4(v11, v17 + v16, type metadata accessor for Alert);
      v18 = *(v1 + 16);
      *v7 = v18;
      (*(v4 + 104))(v7, *MEMORY[0x277D85200], v3);

      v19 = v18;
      LOBYTE(v16) = sub_265779E4C();
      result = (*(v4 + 8))(v7, v3);
      if (v16)
      {
        swift_beginAccess();
        v20 = v1;
        v21 = *(v1 + 136);
        if (*(v21 + 16))
        {

          v22 = sub_26576435C(v15, v14);
          if (v23)
          {
            v24 = *(*(v21 + 56) + 8 * v22);

            sub_265779C3C();
            swift_beginAccess();

            sub_265778BC0(0, v15, v14);
            swift_endAccess();
          }

          else
          {
          }
        }

        sub_265779C8C();
        v25 = sub_265779C7C();
        MEMORY[0x28223BE20](v25);
        *(&v29 - 4) = v20;
        *(&v29 - 3) = v15;
        *(&v29 - 2) = v14;
        v26 = swift_allocObject();
        v26[2] = v20;
        v26[3] = v15;
        v26[4] = v14;
        v26[5] = sub_265771100;
        v26[6] = v17;

        sub_265779C4C();

        swift_beginAccess();

        v27 = *(v20 + 136);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v30 = *(v20 + 136);
        *(v20 + 136) = 0x8000000000000000;
        sub_265767118(v25, v15, v14, isUniquelyReferenced_nonNull_native);

        *(v20 + 136) = v30;
        swift_endAccess();
      }

      else
      {
        __break(1u);
      }
    }
  }

  return result;
}

void sub_265766F48(uint64_t a1, void *a2, uint64_t a3, unint64_t a4)
{
  if (qword_2814476D8 != -1)
  {
    swift_once();
  }

  v7 = sub_265779DEC();
  __swift_project_value_buffer(v7, qword_2814476E0);

  oslog = sub_265779DDC();
  v8 = sub_265779EBC();

  if (os_log_type_enabled(oslog, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v16 = v10;
    *v9 = 136380931;
    v11 = a2[8];
    __swift_project_boxed_opaque_existential_1(a2 + 4, a2[7]);
    v12 = sub_265779D0C();
    v14 = sub_265761C38(v12, v13, &v16);

    *(v9 + 4) = v14;
    *(v9 + 12) = 2082;
    *(v9 + 14) = sub_265761C38(a3, a4, &v16);
    _os_log_impl(&dword_26575E000, oslog, v8, "(%{private}s): Configured watchdog for: %{public}s", v9, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x26675E650](v10, -1, -1);
    MEMORY[0x26675E650](v9, -1, -1);
  }
}

uint64_t sub_265767118(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_26576435C(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_265778F34(v16, a4 & 1);
      v20 = *v5;
      v11 = sub_26576435C(a2, a3);
      if ((v17 & 1) != (v21 & 1))
      {
LABEL_18:
        result = sub_26577A0CC();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = v11;
      sub_2657796C8();
      v11 = v19;
    }
  }

  v22 = *v5;
  if (v17)
  {
    v23 = v22[7];
    v24 = *(v23 + 8 * v11);
    *(v23 + 8 * v11) = a1;
  }

  v22[(v11 >> 6) + 8] |= 1 << v11;
  v26 = (v22[6] + 16 * v11);
  *v26 = a2;
  v26[1] = a3;
  *(v22[7] + 8 * v11) = a1;
  v27 = v22[2];
  v15 = __OFADD__(v27, 1);
  v28 = v27 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v22[2] = v28;
}

uint64_t sub_2657672A4@<X0>(_BYTE *a1@<X8>)
{

  *a1 = 1;
  return result;
}

uint64_t sub_2657672E4(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  v5 = swift_unknownObjectRetain();
  return sub_2657693AC(v5, v3);
}

uint64_t sub_265767320()
{
  v1 = (type metadata accessor for Alert(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v18 = *(*v1 + 64);
  v4 = (v3 + v18) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 23) & 0xFFFFFFFFFFFFFFF8;
  v6 = v0 + v3;
  v7 = *(v0 + v3 + 8);

  v8 = v1[7];
  v9 = sub_265779C1C();
  v10 = *(*(v9 - 8) + 8);
  v10(v6 + v8, v9);
  v10(v6 + v1[8], v9);
  sub_265764C28(*(v6 + v1[11]), *(v6 + v1[11] + 8));
  v11 = *(v6 + v1[12]);

  v12 = *(v0 + v4 + 8);

  v13 = *(v0 + v5 + 8);

  v14 = (v2 + 16 + v5) & ~v2;
  v15 = *(v0 + v14 + 8);

  v10(v0 + v14 + v1[7], v9);
  v10(v0 + v14 + v1[8], v9);
  sub_265764C28(*(v0 + v14 + v1[11]), *(v0 + v14 + v1[11] + 8));
  v16 = *(v0 + v14 + v1[12]);

  return MEMORY[0x2821FE8E8](v0, v14 + v18, v2 | 7);
}

uint64_t sub_265767554(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 16);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_265779C1C();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 32);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_265767600(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 16) = (a2 - 1);
  }

  else
  {
    v7 = sub_265779C1C();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 32);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_26576771C()
{
  MEMORY[0x26675E650](*(v0 + 16), -1, -1);

  return MEMORY[0x2821FE8D8](v0, 24, 7);
}

uint64_t sub_26576778C(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2657677AC(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = a2 - 1;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 4) = v3;
  return result;
}

void type metadata accessor for os_unfair_lock_s()
{
  if (!qword_28001D550)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_28001D550);
    }
  }
}

uint64_t static DismissOption.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *(a2 + 8);
  if (*(a1 + 8) != 1)
  {
    return (v4 & 1) == 0 && (v8 = *a1, v9 = *a2, v2 == v3);
  }

  v5 = *&v3 == 0;
  if (v3 == 0.0)
  {
    v6 = *(a2 + 8);
  }

  else
  {
    v6 = 0;
  }

  if (v5)
  {
    v4 = 0;
  }

  if (v2 == 0.0)
  {
    return v6;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_265767898()
{
  sub_26577A0DC();
  MEMORY[0x26675E1F0](0);
  return sub_26577A10C();
}

uint64_t sub_2657678DC()
{
  sub_26577A0DC();
  MEMORY[0x26675E1F0](0);
  return sub_26577A10C();
}

uint64_t sub_265767928@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 12383 && a2 == 0xE200000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_26577A0BC();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_2657679B4(uint64_t a1)
{
  v2 = sub_265768128();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2657679F0(uint64_t a1)
{
  v2 = sub_265768128();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t _s12SessionAlert0B0V13FailureReasonO9hashValueSivg_0()
{
  v1 = *v0;
  sub_26577A0DC();
  MEMORY[0x26675E1F0](v1);
  return sub_26577A10C();
}

uint64_t sub_265767A74()
{
  v1 = *v0;
  sub_26577A0DC();
  MEMORY[0x26675E1F0](v1);
  return sub_26577A10C();
}

uint64_t sub_265767AB8()
{
  v1 = 0x616470557478656ELL;
  if (*v0 != 1)
  {
    v1 = 0x7265746661;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x726576656ELL;
  }
}

uint64_t sub_265767B10@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_265769144(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_265767B44(uint64_t a1)
{
  v2 = sub_2657680D4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_265767B80(uint64_t a1)
{
  v2 = sub_2657680D4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_265767BC8(uint64_t a1)
{
  v2 = sub_2657681D0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_265767C04(uint64_t a1)
{
  v2 = sub_2657681D0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_265767C40(uint64_t a1)
{
  v2 = sub_26576817C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_265767C7C(uint64_t a1)
{
  v2 = sub_26576817C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t DismissOption.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28001D558, &qword_26577A6C0);
  v34 = *(v3 - 8);
  v35 = v3;
  v4 = *(v34 + 64);
  MEMORY[0x28223BE20](v3);
  v33 = &v26 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28001D560, &qword_26577A6C8);
  v31 = *(v6 - 8);
  v32 = v6;
  v7 = *(v31 + 64);
  MEMORY[0x28223BE20](v6);
  v30 = &v26 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28001D568, &qword_26577A6D0);
  v28 = *(v9 - 8);
  v29 = v9;
  v10 = *(v28 + 64);
  MEMORY[0x28223BE20](v9);
  v27 = &v26 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28001D570, &qword_26577A6D8);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v26 - v15;
  v17 = *v1;
  v18 = *(v1 + 8);
  v19 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2657680D4();
  sub_26577A12C();
  if (v18 == 1)
  {
    if (v17)
    {
      v37 = 1;
      sub_26576817C();
      v20 = v30;
      sub_26577A05C();
      v22 = v31;
      v21 = v32;
    }

    else
    {
      v36 = 0;
      sub_2657681D0();
      v20 = v27;
      sub_26577A05C();
      v22 = v28;
      v21 = v29;
    }

    (*(v22 + 8))(v20, v21);
    return (*(v13 + 8))(v16, v12);
  }

  else
  {
    v38 = 2;
    sub_265768128();
    v23 = v33;
    sub_26577A05C();
    v24 = v35;
    sub_26577A08C();
    (*(v34 + 8))(v23, v24);
    return (*(v13 + 8))(v16, v12);
  }
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

unint64_t sub_2657680D4()
{
  result = qword_28001D578;
  if (!qword_28001D578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28001D578);
  }

  return result;
}

unint64_t sub_265768128()
{
  result = qword_28001D580;
  if (!qword_28001D580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28001D580);
  }

  return result;
}

unint64_t sub_26576817C()
{
  result = qword_28001D588;
  if (!qword_28001D588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28001D588);
  }

  return result;
}

unint64_t sub_2657681D0()
{
  result = qword_28001D590;
  if (!qword_28001D590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28001D590);
  }

  return result;
}

uint64_t DismissOption.hash(into:)()
{
  v1 = *v0;
  if (*(v0 + 8) == 1)
  {
    return MEMORY[0x26675E1F0](v1 != 0);
  }

  MEMORY[0x26675E1F0](2);
  if ((v1 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v2 = v1;
  }

  else
  {
    v2 = 0;
  }

  return MEMORY[0x26675E200](v2);
}

uint64_t DismissOption.hashValue.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  sub_26577A0DC();
  if (v2 == 1)
  {
    MEMORY[0x26675E1F0](v1 != 0);
  }

  else
  {
    MEMORY[0x26675E1F0](2);
    if ((v1 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v3 = v1;
    }

    else
    {
      v3 = 0;
    }

    MEMORY[0x26675E200](v3);
  }

  return sub_26577A10C();
}

uint64_t DismissOption.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v49 = a2;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28001D598, &qword_26577A6E0);
  v48 = *(v46 - 8);
  v3 = *(v48 + 64);
  MEMORY[0x28223BE20](v46);
  v51 = &v43 - v4;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28001D5A0, &qword_26577A6E8);
  v45 = *(v47 - 8);
  v5 = *(v45 + 64);
  MEMORY[0x28223BE20](v47);
  v7 = &v43 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28001D5A8, &qword_26577A6F0);
  v50 = *(v8 - 8);
  v9 = *(v50 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v43 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28001D5B0, &qword_26577A6F8);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v43 - v15;
  v17 = a1[3];
  v18 = a1[4];
  v53 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v17);
  sub_2657680D4();
  v19 = v52;
  sub_26577A11C();
  if (!v19)
  {
    v21 = v50;
    v20 = v51;
    v43 = v8;
    v44 = 0;
    v52 = v13;
    v22 = v16;
    v23 = sub_26577A04C();
    v24 = *(v23 + 16);
    if (!v24 || ((v25 = *(v23 + 32), v24 == 1) ? (v26 = v25 == 3) : (v26 = 1), v26))
    {
      v27 = sub_265779F7C();
      swift_allocError();
      v28 = v12;
      v30 = v29;
      v31 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28001D5B8, &qword_26577A700) + 48);
      *v30 = &type metadata for DismissOption;
      sub_265779FEC();
      sub_265779F6C();
      (*(*(v27 - 8) + 104))(v30, *MEMORY[0x277D84160], v27);
      swift_willThrow();
      (*(v52 + 8))(v22, v28);
LABEL_17:
      swift_unknownObjectRelease();
      return __swift_destroy_boxed_opaque_existential_1(v53);
    }

    if (*(v23 + 32))
    {
      if (v25 == 1)
      {
        v55 = 1;
        sub_26576817C();
        v32 = v44;
        sub_265779FDC();
        v33 = v52;
        if (v32)
        {
          (*(v52 + 8))(v16, v12);
          goto LABEL_17;
        }

        (*(v45 + 8))(v7, v47);
        (*(v33 + 8))(v16, v12);
        swift_unknownObjectRelease();
        v39 = 1;
        v40 = 1;
        v37 = v49;
LABEL_23:
        *v37 = v40;
        *(v37 + 8) = v39;
        return __swift_destroy_boxed_opaque_existential_1(v53);
      }

      v56 = 2;
      sub_265768128();
      v36 = v44;
      sub_265779FDC();
      v37 = v49;
      v35 = v52;
      if (!v36)
      {
        v41 = v46;
        sub_26577A02C();
        v40 = v42;
        (*(v48 + 8))(v20, v41);
        (*(v35 + 8))(v16, v12);
        swift_unknownObjectRelease();
        v39 = 0;
        goto LABEL_23;
      }
    }

    else
    {
      v54 = 0;
      sub_2657681D0();
      v34 = v44;
      sub_265779FDC();
      if (!v34)
      {
        (*(v21 + 8))(v11, v43);
        (*(v52 + 8))(v16, v12);
        swift_unknownObjectRelease();
        v39 = 1;
        v40 = 0;
        v37 = v49;
        goto LABEL_23;
      }

      v35 = v52;
    }

    (*(v35 + 8))(v16, v12);
    goto LABEL_17;
  }

  return __swift_destroy_boxed_opaque_existential_1(v53);
}

uint64_t sub_2657688F0()
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

uint64_t sub_265768924()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 3;
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

uint64_t sub_265768990()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  sub_26577A0DC();
  if (v2 == 1)
  {
    MEMORY[0x26675E1F0](v1 != 0);
  }

  else
  {
    MEMORY[0x26675E1F0](2);
    if ((v1 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v3 = v1;
    }

    else
    {
      v3 = 0;
    }

    MEMORY[0x26675E200](v3);
  }

  return sub_26577A10C();
}

unint64_t sub_265768A10()
{
  result = qword_28001D5C0;
  if (!qword_28001D5C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28001D5C0);
  }

  return result;
}

uint64_t sub_265768A64(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *(a2 + 8);
  if (*(a1 + 8) != 1)
  {
    return (v4 & 1) == 0 && (v8 = *a1, v9 = *a2, v2 == v3);
  }

  v5 = *&v3 == 0;
  if (v3 == 0.0)
  {
    v6 = *(a2 + 8);
  }

  else
  {
    v6 = 0;
  }

  if (v5)
  {
    v4 = 0;
  }

  if (v2 == 0.0)
  {
    return v6;
  }

  else
  {
    return v4;
  }
}

uint64_t getEnumTagSinglePayload for DismissOption(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 9))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for DismissOption(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 1;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 9) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for DismissOption.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for DismissOption.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for DismissOption.AfterCodingKeys(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for DismissOption.AfterCodingKeys(_WORD *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

unint64_t sub_265768DD8()
{
  result = qword_28001D5C8;
  if (!qword_28001D5C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28001D5C8);
  }

  return result;
}

unint64_t sub_265768E30()
{
  result = qword_28001D5D0;
  if (!qword_28001D5D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28001D5D0);
  }

  return result;
}

unint64_t sub_265768E88()
{
  result = qword_28001D5D8;
  if (!qword_28001D5D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28001D5D8);
  }

  return result;
}

unint64_t sub_265768EE0()
{
  result = qword_28001D5E0;
  if (!qword_28001D5E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28001D5E0);
  }

  return result;
}

unint64_t sub_265768F38()
{
  result = qword_28001D5E8;
  if (!qword_28001D5E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28001D5E8);
  }

  return result;
}

unint64_t sub_265768F90()
{
  result = qword_28001D5F0;
  if (!qword_28001D5F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28001D5F0);
  }

  return result;
}

unint64_t sub_265768FE8()
{
  result = qword_28001D5F8;
  if (!qword_28001D5F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28001D5F8);
  }

  return result;
}

unint64_t sub_265769040()
{
  result = qword_28001D600;
  if (!qword_28001D600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28001D600);
  }

  return result;
}

unint64_t sub_265769098()
{
  result = qword_28001D608;
  if (!qword_28001D608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28001D608);
  }

  return result;
}

unint64_t sub_2657690F0()
{
  result = qword_28001D610;
  if (!qword_28001D610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28001D610);
  }

  return result;
}

uint64_t sub_265769144(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x726576656ELL && a2 == 0xE500000000000000;
  if (v4 || (sub_26577A0BC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x616470557478656ELL && a2 == 0xEA00000000006574 || (sub_26577A0BC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7265746661 && a2 == 0xE500000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_26577A0BC();

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

void *sub_26576927C()
{
  result = sub_2657703C0(&unk_287713C00);
  off_281447840 = result;
  return result;
}

double sub_2657692A4@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = *(*a1 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28001D618, &unk_26577AC00);
  sub_265779EEC();
  result = *&v5;
  *a2 = v5;
  return result;
}

uint64_t sub_265769320()
{
  v1 = *(v0 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28001D618, &unk_26577AC00);
  sub_265779EEC();
  return v3;
}

uint64_t sub_2657693AC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *(v3 + 16);
  v7 = swift_allocObject();
  v7[2] = v3;
  v7[3] = a1;
  v7[4] = a2;
  v8 = swift_allocObject();
  *(v8 + 16) = sub_265769524;
  *(v8 + 24) = v7;
  v11[4] = sub_2657618CC;
  v11[5] = v8;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 1107296256;
  v11[2] = sub_2657600DC;
  v11[3] = &block_descriptor;
  v9 = _Block_copy(v11);
  swift_unknownObjectRetain();

  dispatch_sync(v6, v9);
  swift_unknownObjectRelease();
  _Block_release(v9);
  LOBYTE(a1) = swift_isEscapingClosureAtFileLocation();

  if (a1)
  {
    __break(1u);
  }

  return result;
}

void (*sub_265769528(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x50uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 64) = v1;
  *(v3 + 72) = *(v1 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28001D618, &unk_26577AC00);
  sub_265779EEC();
  v4[3] = *v4;
  return sub_2657695F0;
}

void sub_2657695F0(uint64_t a1, char a2)
{
  v2 = *a1;
  v4 = (*a1 + 48);
  v3 = *v4;
  v6 = *(*a1 + 64);
  v5 = *(*a1 + 72);
  v7 = *(*a1 + 56);
  if ((a2 & 1) == 0)
  {
    v14 = swift_allocObject();
    v14[2] = v6;
    v14[3] = v3;
    v14[4] = v7;
    v15 = swift_allocObject();
    *(v15 + 16) = sub_265771280;
    *(v15 + 24) = v14;
    v2[4] = sub_2657618F4;
    v2[5] = v15;
    *v2 = MEMORY[0x277D85DD0];
    v2[1] = 1107296256;
    v2[2] = sub_2657600DC;
    v2[3] = &block_descriptor_26;
    v16 = _Block_copy(v2);
    v17 = v2[5];
    swift_unknownObjectRetain();

    dispatch_sync(v5, v16);
    swift_unknownObjectRelease();
    _Block_release(v16);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      goto LABEL_5;
    }

LABEL_9:
    __break(1u);
    return;
  }

  v8 = swift_allocObject();
  v8[2] = v6;
  v8[3] = v3;
  v8[4] = v7;
  v9 = swift_allocObject();
  *(v9 + 16) = sub_265771280;
  *(v9 + 24) = v8;
  v2[4] = sub_2657618F4;
  v2[5] = v9;
  *v2 = MEMORY[0x277D85DD0];
  v2[1] = 1107296256;
  v2[2] = sub_2657600DC;
  v2[3] = &block_descriptor_15;
  v10 = _Block_copy(v2);
  v11 = v2[5];
  swift_unknownObjectRetain_n();

  dispatch_sync(v5, v10);
  swift_unknownObjectRelease();
  _Block_release(v10);
  v12 = swift_isEscapingClosureAtFileLocation();

  if (v12)
  {
    __break(1u);
    goto LABEL_9;
  }

  v13 = *v4;
  swift_unknownObjectRelease();
LABEL_5:

  free(v2);
}

uint64_t objectdestroyTm()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_2657698F4()
{
  v2 = v0[2];
  v1 = v0[3];
  *(v2 + 152) = v0[4];
  return MEMORY[0x2821FEC20](v2 + 144, v1);
}

void *AlertCenter.__allocating_init(store:syncEngine:presenter:watchdogIntervals:)(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  swift_allocObject();
  v10 = sub_2657704A0(a1, a2, a3, a4, a5);
  swift_unknownObjectRelease();
  return v10;
}

void *AlertCenter.init(store:syncEngine:presenter:watchdogIntervals:)(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = sub_2657704A0(a1, a2, a3, a4, a5);
  swift_unknownObjectRelease();
  return v5;
}

uint64_t AlertCenter.deinit()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 32));
  v1 = *(v0 + 72);
  swift_unknownObjectRelease();
  v2 = *(v0 + 88);

  __swift_destroy_boxed_opaque_existential_1((v0 + 96));
  v3 = *(v0 + 136);

  sub_265770928(v0 + 144);
  return v0;
}

uint64_t AlertCenter.__deallocating_deinit()
{
  AlertCenter.deinit();

  return MEMORY[0x2821FE8D8](v0, 160, 7);
}

uint64_t AlertCenter.alert(with:)()
{
  v1 = *(v0 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28001D620, &qword_26577C140);
  return sub_265779EEC();
}

Swift::Bool __swiftcall AlertCenter.hasAlert(identifier:)(Swift::String identifier)
{
  object = identifier._object;
  countAndFlagsBits = identifier._countAndFlagsBits;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28001D620, &qword_26577C140);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v12[-v6];
  v8 = *(v1 + 16);
  v13 = v1;
  v14 = countAndFlagsBits;
  v15 = object;
  sub_265779EEC();
  v9 = type metadata accessor for Alert(0);
  v10 = (*(*(v9 - 8) + 48))(v7, 1, v9) != 1;
  sub_26575FF24(v7, &qword_28001D620, &qword_26577C140);
  return v10;
}

uint64_t sub_265769BE4()
{
  v1 = *(v0 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28001D618, &unk_26577AC00);
  sub_265779EEC();
  return v3;
}

void (*sub_265769C5C(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
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
  v5 = *(v1 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28001D618, &unk_26577AC00);
  sub_265779EEC();
  *v4 = v4[1];
  return sub_265769D20;
}

void sub_265769D20(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = **a1;
  v4 = v2[1];
  v5 = v2[4];
  if (a2)
  {
    v6 = swift_unknownObjectRetain();
    sub_2657693AC(v6, v4);
    v7 = *v2;
    swift_unknownObjectRelease();
  }

  else
  {
    sub_2657693AC(v3, v2[1]);
  }

  free(v2);
}

BOOL sub_265769D88(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28001D620, &qword_26577C140);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  v8 = &v13[-v7];
  v9 = *(v2 + 16);
  v14 = v2;
  v15 = a1;
  v16 = a2;
  sub_265779EEC();
  v10 = type metadata accessor for Alert(0);
  v11 = (*(*(v10 - 8) + 48))(v8, 1, v10) != 1;
  sub_26575FF24(v8, &qword_28001D620, &qword_26577C140);
  return v11;
}

uint64_t AlertCenter.syncEngine(_:dataFor:)()
{
  v1 = *(v0 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28001D638, &qword_26577AC20);
  sub_265779EEC();
  return v3;
}

void sub_265769F24(uint64_t a1@<X0>, char *a2@<X1>, uint64_t *a3@<X8>)
{
  v70 = a3;
  v5 = sub_265779DBC();
  v68 = *(v5 - 8);
  v69 = v5;
  v6 = *(v68 + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v65 = &v64 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v66 = &v64 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28001D620, &qword_26577C140);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v64 - v12;
  v14 = type metadata accessor for Alert(0);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v64 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  sub_26575F5D4(a1 + 96, v72);
  v19 = v72[4];
  __swift_project_boxed_opaque_existential_1(v72, v72[3]);
  v67 = a2;
  v20 = sub_265779DAC();
  (*(v19 + 16))(v20);

  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    sub_26575FF24(v13, &qword_28001D620, &qword_26577C140);
    __swift_destroy_boxed_opaque_existential_1(v72);
    if (qword_2814476D8 != -1)
    {
      swift_once();
    }

    v21 = sub_265779DEC();
    __swift_project_value_buffer(v21, qword_2814476E0);
    v22 = v68;
    v23 = v66;
    v24 = v69;
    (*(v68 + 16))(v66, v67, v69);
    v25 = sub_265779DDC();
    v26 = sub_265779EBC();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = v22;
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v72[0] = v29;
      *v28 = 136446210;
      sub_2657662E4(&qword_28001D648, 255, MEMORY[0x277D4D708]);
      v30 = sub_26577A0AC();
      v32 = v31;
      (*(v27 + 8))(v23, v24);
      v33 = sub_265761C38(v30, v32, v72);

      *(v28 + 4) = v33;
      _os_log_impl(&dword_26575E000, v25, v26, "Could not find an alert for recordID %{public}s", v28, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v29);
      MEMORY[0x26675E650](v29, -1, -1);
      MEMORY[0x26675E650](v28, -1, -1);
    }

    else
    {

      (*(v22 + 8))(v23, v24);
    }

    v61 = 0;
LABEL_16:
    v62 = 0xF000000000000000;
    goto LABEL_17;
  }

  sub_26575FFA4(v13, v18, type metadata accessor for Alert);
  __swift_destroy_boxed_opaque_existential_1(v72);
  v34 = sub_265779B6C();
  v35 = *(v34 + 48);
  v36 = *(v34 + 52);
  swift_allocObject();
  sub_265779B5C();
  sub_2657662E4(&qword_28001D690, 255, type metadata accessor for Alert);
  v37 = v71;
  v38 = sub_265779B4C();
  if (v37)
  {
    if (qword_2814476D8 != -1)
    {
      swift_once();
    }

    v40 = sub_265779DEC();
    __swift_project_value_buffer(v40, qword_2814476E0);
    v41 = v68;
    v42 = v65;
    v43 = v69;
    (*(v68 + 16))(v65, v67, v69);
    MEMORY[0x26675E540](v37);
    v44 = sub_265779DDC();
    v45 = sub_265779EBC();

    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      v67 = v18;
      v71 = v37;
      v47 = v41;
      v48 = v43;
      v49 = v42;
      v50 = v46;
      v66 = swift_slowAlloc();
      v72[0] = v66;
      *v50 = 136446466;
      sub_2657662E4(&qword_28001D648, 255, MEMORY[0x277D4D708]);
      v51 = sub_26577A0AC();
      v53 = v52;
      (*(v47 + 8))(v49, v48);
      v54 = sub_265761C38(v51, v53, v72);

      *(v50 + 4) = v54;
      *(v50 + 12) = 2082;
      v55 = v71;
      v72[6] = v71;
      MEMORY[0x26675E540](v71);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28001D698, &qword_26577AD80);
      v56 = sub_265779E5C();
      v58 = sub_265761C38(v56, v57, v72);

      *(v50 + 14) = v58;
      _os_log_impl(&dword_26575E000, v44, v45, "Could not encode alert for recordID %{public}s: %{public}s", v50, 0x16u);
      v59 = v66;
      swift_arrayDestroy();
      MEMORY[0x26675E650](v59, -1, -1);
      MEMORY[0x26675E650](v50, -1, -1);

      v60 = v67;
    }

    else
    {

      (*(v41 + 8))(v42, v43);
      v60 = v18;
    }

    sub_2657622E0(v60, type metadata accessor for Alert);
    v61 = 0;
    goto LABEL_16;
  }

  v61 = v38;
  v62 = v39;
  sub_2657622E0(v18, type metadata accessor for Alert);

LABEL_17:
  v63 = v70;
  *v70 = v61;
  v63[1] = v62;
}

uint64_t AlertCenter.syncEngine(_:resolveConflictBetween:and:)()
{
  v1 = *(v0 + 16);
  sub_265779EEC();
  return v3;
}

uint64_t sub_26576A738@<X0>(uint64_t a1@<X1>, uint64_t *a2@<X8>)
{
  v109 = a1;
  v106 = a2;
  v95 = sub_265779D5C();
  v93 = *(v95 - 8);
  v2 = *(v93 + 64);
  MEMORY[0x28223BE20](v95);
  v91 = v89 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_265779DBC();
  v97 = *(v4 - 8);
  v98 = v4;
  v5 = *(v97 + 64);
  MEMORY[0x28223BE20](v4);
  v92 = v89 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v96 = sub_265779D8C();
  v94 = *(v96 - 8);
  v7 = *(v94 + 64);
  MEMORY[0x28223BE20](v96);
  v90 = v89 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_265779C1C();
  v102 = *(v9 - 8);
  v103 = v9;
  v10 = v102[8];
  v11 = MEMORY[0x28223BE20](v9);
  v99 = v89 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v101 = v89 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28001D620, &qword_26577C140);
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x28223BE20](v14 - 8);
  v104 = v89 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v19 = v89 - v18;
  v20 = type metadata accessor for Alert(0);
  v107 = *(v20 - 8);
  v21 = *(v107 + 64);
  v22 = MEMORY[0x28223BE20](v20);
  v100 = v89 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x28223BE20](v22);
  v26 = v89 - v25;
  MEMORY[0x28223BE20](v24);
  v105 = v89 - v27;
  v28 = sub_265779B3C();
  v29 = *(v28 + 48);
  v30 = *(v28 + 52);
  swift_allocObject();
  v31 = sub_265779B2C();
  v32 = sub_265779D6C();
  v34 = v33;
  sub_2657662E4(&qword_28001D640, 255, type metadata accessor for Alert);
  v35 = v20;
  v36 = v108;
  sub_265779B1C();
  if (v36)
  {

    sub_265764C28(v32, v34);
    (*(v107 + 56))(v19, 1, 1, v20);
    sub_26575FF24(v19, &qword_28001D620, &qword_26577C140);
    v37 = sub_265779D6C();
    v39 = v38;

LABEL_10:
    v72 = v106;
    *v106 = v37;
    v72[1] = v39;
    return result;
  }

  v108 = v26;
  sub_265764C28(v32, v34);
  v41 = (v107 + 56);
  v107 = *(v107 + 56);
  (v107)(v19, 0, 1, v20);
  sub_26575FFA4(v19, v105, type metadata accessor for Alert);
  v42 = sub_265779D6C();
  v44 = v43;
  v45 = v104;
  sub_265779B1C();
  v89[1] = v31;
  v89[0] = 0;
  sub_265764C28(v42, v44);
  (v107)(v45, 0, 1, v35);
  sub_26575FFA4(v45, v108, type metadata accessor for Alert);
  v46 = *(v105 + *(v35 + 40));
  v47 = *(v46 + 16);
  if (!v47)
  {
    __break(1u);
    goto LABEL_12;
  }

  v48 = v47 - 1;
  v49 = type metadata accessor for Alert.HistoryItem(0);
  v50 = (*(*(v49 - 8) + 80) + 32) & ~*(*(v49 - 8) + 80);
  v51 = *(*(v49 - 8) + 72);
  v52 = v46 + v50 + v51 * v48;
  v53 = v101;
  v41 = v102;
  v54 = v102[2];
  v55 = v103;
  v54(v101, v52 + *(v49 + 32), v103);
  v56 = *&v108[*(v35 + 40)];
  v57 = *(v56 + 16);
  if (!v57)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v58 = v56 + v50 + (v57 - 1) * v51 + *(v49 + 32);
  v59 = v99;
  v54(v99, v58, v55);
  v60 = sub_265779BBC();
  v61 = v41[1];
  v61(v59, v55);
  v61(v53, v55);
  v62 = v108;
  v63 = v105;
  if (v60)
  {
    v64 = v105;
  }

  else
  {
    v64 = v108;
  }

  v65 = v100;
  sub_26576000C(v64, v100, type metadata accessor for Alert);
  v66 = sub_265779B6C();
  v67 = *(v66 + 48);
  v68 = *(v66 + 52);
  swift_allocObject();
  sub_265779B5C();
  sub_2657662E4(&qword_28001D690, 255, type metadata accessor for Alert);
  v69 = v89[0];
  v70 = sub_265779B4C();
  v41 = v69;
  if (!v69)
  {
    v37 = v70;
    v39 = v71;
    sub_2657622E0(v65, type metadata accessor for Alert);

    sub_2657622E0(v62, type metadata accessor for Alert);
    result = sub_2657622E0(v63, type metadata accessor for Alert);
    goto LABEL_10;
  }

LABEL_13:
  if (qword_2814476D8 != -1)
  {
    swift_once();
  }

  v73 = sub_265779DEC();
  __swift_project_value_buffer(v73, qword_2814476E0);
  (*(v94 + 16))(v90, v109, v96);
  MEMORY[0x26675E540](v41);
  v74 = sub_265779DDC();
  v75 = sub_265779EBC();

  if (os_log_type_enabled(v74, v75))
  {
    v76 = swift_slowAlloc();
    v109 = swift_slowAlloc();
    v111 = v109;
    *v76 = 136446466;
    v77 = v90;
    v78 = v91;
    sub_265779D7C();
    v79 = v92;
    sub_265779D4C();
    (*(v93 + 8))(v78, v95);
    sub_2657662E4(&qword_28001D648, 255, MEMORY[0x277D4D708]);
    v80 = v98;
    v81 = sub_26577A0AC();
    v83 = v82;
    (*(v97 + 8))(v79, v80);
    (*(v94 + 8))(v77, v96);
    v84 = sub_265761C38(v81, v83, &v111);

    *(v76 + 4) = v84;
    *(v76 + 12) = 2082;
    v110 = v41;
    MEMORY[0x26675E540](v41);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28001D698, &qword_26577AD80);
    v85 = sub_265779E5C();
    v87 = sub_265761C38(v85, v86, &v111);

    *(v76 + 14) = v87;
    _os_log_impl(&dword_26575E000, v74, v75, "Could not encode alert for recordID %{public}s: %{public}s", v76, 0x16u);
    v88 = v109;
    swift_arrayDestroy();
    MEMORY[0x26675E650](v88, -1, -1);
    MEMORY[0x26675E650](v76, -1, -1);
  }

  else
  {

    (*(v94 + 8))(v90, v96);
  }

  result = sub_265779F9C();
  __break(1u);
  return result;
}

BOOL AlertCenter.syncEngine(_:didFetch:)(uint64_t a1, uint64_t a2)
{
  v3 = sub_265779D5C();
  v58 = *(v3 - 8);
  v59 = v3;
  v4 = *(v58 + 64);
  MEMORY[0x28223BE20](v3);
  v56 = &v55 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_265779DBC();
  v60 = *(v6 - 8);
  v61 = v6;
  v7 = *(v60 + 64);
  MEMORY[0x28223BE20](v6);
  v57 = &v55 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_265779D8C();
  v67 = *(v9 - 8);
  v68 = v9;
  v10 = *(v67 + 64);
  MEMORY[0x28223BE20](v9);
  v66 = &v55 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Alert(0);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x28223BE20](v12);
  v62 = &v55 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v63 = &v55 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28001D620, &qword_26577C140);
  v18 = *(*(v17 - 8) + 64);
  v19 = MEMORY[0x28223BE20](v17 - 8);
  v21 = &v55 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v23 = &v55 - v22;
  v24 = sub_265779B3C();
  v25 = *(v24 + 48);
  v26 = *(v24 + 52);
  swift_allocObject();
  v27 = sub_265779B2C();
  v64 = a2;
  v28 = sub_265779D6C();
  v30 = v29;
  sub_2657662E4(&qword_28001D640, 255, type metadata accessor for Alert);
  v70 = v27;
  sub_265779B1C();
  sub_265764C28(v28, v30);
  v31 = v23;
  (*(v13 + 56))(v23, 0, 1, v12);
  sub_265763DF8(v23, v21, &qword_28001D620, &qword_26577C140);
  v69 = (*(v13 + 48))(v21, 1, v12);
  if (v69 == 1)
  {
    sub_26575FF24(v21, &qword_28001D620, &qword_26577C140);
    if (qword_2814476D8 != -1)
    {
      swift_once();
    }

    v39 = sub_265779DEC();
    __swift_project_value_buffer(v39, qword_2814476E0);
    v41 = v66;
    v40 = v67;
    v42 = v68;
    (*(v67 + 16))(v66, v64, v68);
    v43 = sub_265779DDC();
    v44 = sub_265779EBC();
    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      v65 = swift_slowAlloc();
      v71 = v65;
      *v45 = 136446210;
      v46 = v56;
      LODWORD(v64) = v44;
      sub_265779D7C();
      v47 = v57;
      sub_265779D4C();
      (*(v58 + 8))(v46, v59);
      sub_2657662E4(&qword_28001D648, 255, MEMORY[0x277D4D708]);
      v48 = v61;
      v49 = sub_26577A0AC();
      v51 = v50;
      (*(v60 + 8))(v47, v48);
      (*(v40 + 8))(v41, v42);
      v52 = sub_265761C38(v49, v51, &v71);

      *(v45 + 4) = v52;
      _os_log_impl(&dword_26575E000, v43, v64, "Could not create an alert for recordID %{public}s", v45, 0xCu);
      v53 = v65;
      __swift_destroy_boxed_opaque_existential_1(v65);
      MEMORY[0x26675E650](v53, -1, -1);
      MEMORY[0x26675E650](v45, -1, -1);
    }

    else
    {

      (*(v40 + 8))(v41, v42);
    }

    v38 = v31;
  }

  else
  {
    v32 = v63;
    sub_26575FFA4(v21, v63, type metadata accessor for Alert);
    sub_265779CDC();
    v33 = v65;
    v34 = v65[2];
    v35 = v62;
    sub_26576000C(v32, v62, type metadata accessor for Alert);
    v36 = (*(v13 + 80) + 24) & ~*(v13 + 80);
    v37 = swift_allocObject();
    *(v37 + 16) = v33;
    sub_26575FFA4(v35, v37 + v36, type metadata accessor for Alert);

    sub_265779CCC();
    sub_265779CBC();

    sub_2657622E0(v32, type metadata accessor for Alert);
    v38 = v23;
  }

  sub_26575FF24(v38, &qword_28001D620, &qword_26577C140);
  return v69 != 1;
}

uint64_t sub_26576B9B0(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28001D670, &qword_26577AD60);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v66 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28001D620, &qword_26577C140);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8 - 8);
  v73 = (&v66 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = MEMORY[0x28223BE20](v10);
  v75 = &v66 - v13;
  MEMORY[0x28223BE20](v12);
  v15 = &v66 - v14;
  v74 = type metadata accessor for Alert(0);
  v72 = *(v74 - 8);
  v16 = *(v72 + 64);
  v17 = MEMORY[0x28223BE20](v74);
  v69 = (&v66 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v17);
  v20 = &v66 - v19;
  v21 = sub_265779E3C();
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v21);
  v25 = (&v66 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  v26 = v2[2];
  *v25 = v26;
  (*(v22 + 104))(v25, *MEMORY[0x277D85200], v21);
  v27 = v26;
  LOBYTE(v26) = sub_265779E4C();
  (*(v22 + 8))(v25, v21);
  if (v26)
  {
    if (qword_2814476D8 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v71 = v4;
  v28 = sub_265779DEC();
  v29 = __swift_project_value_buffer(v28, qword_2814476E0);
  sub_26576000C(a1, v20, type metadata accessor for Alert);

  v70 = v29;
  v30 = sub_265779DDC();
  v31 = sub_265779EBC();

  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    v68 = v15;
    v33 = v32;
    v66 = swift_slowAlloc();
    v76[0] = v66;
    *v33 = 136380931;
    v67 = a1;
    v34 = v2[8];
    __swift_project_boxed_opaque_existential_1(v2 + 4, v2[7]);
    v35 = sub_265779D0C();
    v37 = sub_265761C38(v35, v36, v76);

    *(v33 + 4) = v37;
    *(v33 + 12) = 2082;
    v38 = Alert.description.getter();
    v40 = v39;
    sub_2657622E0(v20, type metadata accessor for Alert);
    v41 = sub_265761C38(v38, v40, v76);
    a1 = v67;

    *(v33 + 14) = v41;
    _os_log_impl(&dword_26575E000, v30, v31, "(%{private}s): Received alert update from sync engine: %{public}s", v33, 0x16u);
    v42 = v66;
    swift_arrayDestroy();
    MEMORY[0x26675E650](v42, -1, -1);
    v43 = v33;
    v15 = v68;
    MEMORY[0x26675E650](v43, -1, -1);
  }

  else
  {

    sub_2657622E0(v20, type metadata accessor for Alert);
  }

  swift_beginAccess();
  sub_26575F5D4((v2 + 12), v76);
  v44 = v77;
  v45 = v78;
  __swift_project_boxed_opaque_existential_1(v76, v77);
  (*(v45 + 16))(*a1, a1[1], v44, v45);
  __swift_destroy_boxed_opaque_existential_1(v76);
  v46 = v75;
  sub_26576000C(a1, v75, type metadata accessor for Alert);
  v47 = v72;
  v48 = v74;
  (*(v72 + 56))(v46, 0, 1, v74);
  v49 = *(v71 + 48);
  sub_265763DF8(v15, v7, &qword_28001D620, &qword_26577C140);
  sub_265763DF8(v46, &v7[v49], &qword_28001D620, &qword_26577C140);
  v50 = *(v47 + 48);
  if (v50(v7, 1, v48) != 1)
  {
    sub_265763DF8(v7, v73, &qword_28001D620, &qword_26577C140);
    if (v50(&v7[v49], 1, v48) != 1)
    {
      v53 = &v7[v49];
      v54 = v69;
      sub_26575FFA4(v53, v69, type metadata accessor for Alert);
      v55 = v73;
      v56 = _s12SessionAlert0B0V2eeoiySbAC_ACtFZ_0(v73, v54);
      sub_2657622E0(v54, type metadata accessor for Alert);
      sub_26575FF24(v46, &qword_28001D620, &qword_26577C140);
      sub_2657622E0(v55, type metadata accessor for Alert);
      sub_26575FF24(v7, &qword_28001D620, &qword_26577C140);
      if (v56)
      {
        goto LABEL_14;
      }

LABEL_12:
      swift_beginAccess();
      v51 = v2[15];
      v52 = v2[16];
      __swift_mutable_project_boxed_opaque_existential_1((v2 + 12), v51);
      (*(v52 + 24))(a1, v51, v52);
      swift_endAccess();
      sub_265760104(a1);
      return sub_26575FF24(v15, &qword_28001D620, &qword_26577C140);
    }

    sub_26575FF24(v46, &qword_28001D620, &qword_26577C140);
    sub_2657622E0(v73, type metadata accessor for Alert);
LABEL_11:
    sub_26575FF24(v7, &qword_28001D670, &qword_26577AD60);
    goto LABEL_12;
  }

  sub_26575FF24(v46, &qword_28001D620, &qword_26577C140);
  if (v50(&v7[v49], 1, v48) != 1)
  {
    goto LABEL_11;
  }

  sub_26575FF24(v7, &qword_28001D620, &qword_26577C140);
LABEL_14:

  v57 = sub_265779DDC();
  v58 = sub_265779EBC();

  if (os_log_type_enabled(v57, v58))
  {
    v59 = swift_slowAlloc();
    v60 = swift_slowAlloc();
    v76[0] = v60;
    *v59 = 136380675;
    v61 = v2[8];
    __swift_project_boxed_opaque_existential_1(v2 + 4, v2[7]);
    v62 = sub_265779D0C();
    v64 = sub_265761C38(v62, v63, v76);

    *(v59 + 4) = v64;
    _os_log_impl(&dword_26575E000, v57, v58, "(%{private}s): Ignoring unchanged alert", v59, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v60);
    MEMORY[0x26675E650](v60, -1, -1);
    MEMORY[0x26675E650](v59, -1, -1);
  }

  return sub_26575FF24(v15, &qword_28001D620, &qword_26577C140);
}

uint64_t AlertCenter.syncEngine(_:didDelete:)(uint64_t a1, uint64_t a2)
{
  v4 = sub_265779DBC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  sub_265779CDC();
  v7 = *(v2 + 16);
  (*(v5 + 16))(&v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), a2, v4);
  v8 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = v2;
  (*(v5 + 32))(v9 + v8, &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v4);

  sub_265779CCC();
  sub_265779CBC();
}

uint64_t sub_26576C3BC(uint64_t (*a1)(uint64_t), uint64_t a2, uint64_t a3, uint64_t a4)
{
  v42 = a2;
  v43 = a1;
  v6 = sub_265779DBC();
  v40 = *(v6 - 8);
  v41 = v6;
  v7 = *(v40 + 64);
  MEMORY[0x28223BE20](v6);
  v39 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28001D620, &qword_26577C140);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v38 - v11;
  v13 = type metadata accessor for Alert(0);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = (&v38 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_beginAccess();
  sub_26575F5D4(a3 + 96, v44);
  v18 = v44[4];
  __swift_project_boxed_opaque_existential_1(v44, v44[3]);
  v38 = a4;
  v19 = sub_265779DAC();
  (*(v18 + 16))(v19);

  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    v20 = v43;
    sub_26575FF24(v12, &qword_28001D620, &qword_26577C140);
    __swift_destroy_boxed_opaque_existential_1(v44);
    if (qword_2814476D8 != -1)
    {
      swift_once();
    }

    v21 = sub_265779DEC();
    __swift_project_value_buffer(v21, qword_2814476E0);
    v22 = v39;
    v23 = v40;
    v24 = v41;
    (*(v40 + 16))(v39, v38, v41);
    v25 = sub_265779DDC();
    v26 = sub_265779EBC();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v44[0] = v28;
      *v27 = 136446210;
      sub_2657662E4(&qword_28001D648, 255, MEMORY[0x277D4D708]);
      v29 = sub_26577A0AC();
      v30 = v22;
      v31 = v29;
      v33 = v32;
      (*(v23 + 8))(v30, v24);
      v34 = sub_265761C38(v31, v33, v44);

      *(v27 + 4) = v34;
      _os_log_impl(&dword_26575E000, v25, v26, "Could not find an existing alert for deleted recordID %{public}s", v27, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v28);
      MEMORY[0x26675E650](v28, -1, -1);
      MEMORY[0x26675E650](v27, -1, -1);
    }

    else
    {

      v35 = (*(v23 + 8))(v22, v24);
    }

    return v20(v35);
  }

  else
  {
    sub_26575FFA4(v12, v17, type metadata accessor for Alert);
    __swift_destroy_boxed_opaque_existential_1(v44);
    v36 = sub_26576C818(v17);
    v43(v36);
    return sub_2657622E0(v17, type metadata accessor for Alert);
  }
}

uint64_t sub_26576C818(uint64_t *a1)
{
  v2 = v1;
  v4 = type metadata accessor for Alert(0);
  v50 = *(v4 - 8);
  v5 = *(v50 + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v8 = &v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = v7;
  MEMORY[0x28223BE20](v6);
  v10 = &v47 - v9;
  v11 = sub_265779E3C();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = (&v47 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = v2[2];
  *v15 = v16;
  (*(v12 + 104))(v15, *MEMORY[0x277D85200], v11);
  v17 = v16;
  v18 = sub_265779E4C();
  (*(v12 + 8))(v15, v11);
  if (v18)
  {
    if (qword_2814476D8 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v19 = sub_265779DEC();
  __swift_project_value_buffer(v19, qword_2814476E0);
  sub_26576000C(a1, v10, type metadata accessor for Alert);

  v20 = sub_265779DDC();
  v21 = sub_265779EBC();

  v22 = os_log_type_enabled(v20, v21);
  v49 = v17;
  if (v22)
  {
    v23 = swift_slowAlloc();
    v48 = v8;
    v24 = v23;
    v25 = swift_slowAlloc();
    v52[0] = v25;
    *v24 = 136380931;
    v26 = v2[8];
    __swift_project_boxed_opaque_existential_1(v2 + 4, v2[7]);
    v27 = sub_265779D0C();
    v29 = sub_265761C38(v27, v28, v52);

    *(v24 + 4) = v29;
    *(v24 + 12) = 2082;
    v30 = Alert.description.getter();
    v32 = v31;
    sub_2657622E0(v10, type metadata accessor for Alert);
    v33 = sub_265761C38(v30, v32, v52);

    *(v24 + 14) = v33;
    _os_log_impl(&dword_26575E000, v20, v21, "(%{private}s): Dismissing alert: %{public}s", v24, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x26675E650](v25, -1, -1);
    v34 = v24;
    v8 = v48;
    MEMORY[0x26675E650](v34, -1, -1);
  }

  else
  {

    sub_2657622E0(v10, type metadata accessor for Alert);
  }

  v35 = *a1;
  v36 = a1[1];
  swift_beginAccess();
  v37 = v2[15];
  v38 = v2[16];
  __swift_mutable_project_boxed_opaque_existential_1((v2 + 12), v37);
  (*(v38 + 32))(v35, v36, v37, v38);
  swift_endAccess();
  v39 = v2[9];
  v40 = v2[10];
  ObjectType = swift_getObjectType();
  (*(v40 + 40))(a1, ObjectType, v40);
  sub_2657618F8(v35, v36);
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v43 = result;
    v44 = v2[19];
    sub_265779CDC();
    sub_26576000C(a1, v8, type metadata accessor for Alert);
    v45 = (*(v50 + 80) + 40) & ~*(v50 + 80);
    v46 = swift_allocObject();
    v46[2] = v43;
    v46[3] = v44;
    v46[4] = v2;
    sub_26575FFA4(v8, v46 + v45, type metadata accessor for Alert);

    swift_unknownObjectRetain();
    sub_265779CCC();
    sub_265779CBC();

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t AlertCenter.recordIDs(for:)()
{
  v1 = *v0;
  v2 = v0[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28001D650, &qword_26577AC28);
  sub_265779EEC();
  return v4;
}

uint64_t sub_26576CDD0@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28001D660, &qword_26577AD50);
  v5 = *(*(v64 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v64);
  v63 = (&v51 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = MEMORY[0x28223BE20](v6);
  v62 = (&v51 - v9);
  MEMORY[0x28223BE20](v8);
  v61 = &v51 - v10;
  v60 = sub_265779DBC();
  v11 = *(v60 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v60);
  v65 = &v51 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  sub_26575F5D4(a1 + 96, v70);
  v14 = v71;
  v15 = v72;
  __swift_project_boxed_opaque_existential_1(v70, v71);
  v16 = (*(v15 + 8))(v14, v15);
  v17 = *(v16 + 16);
  if (v17)
  {
    v52 = a2;
    v53 = v2;
    v73 = MEMORY[0x277D84F90];
    sub_2657701C8(0, v17, 0);
    v18 = v73;
    v19 = v16 + 64;
    v20 = -1 << *(v16 + 32);
    result = sub_265779F2C();
    v22 = result;
    v23 = 0;
    v69 = *(v16 + 36);
    v58 = v11 + 32;
    v54 = v16 + 72;
    v59 = v11;
    v55 = v17;
    v56 = v16 + 64;
    v57 = v16;
    while ((v22 & 0x8000000000000000) == 0 && v22 < 1 << *(v16 + 32))
    {
      v26 = v22 >> 6;
      if ((*(v19 + 8 * (v22 >> 6)) & (1 << v22)) == 0)
      {
        goto LABEL_24;
      }

      if (v69 != *(v16 + 36))
      {
        goto LABEL_25;
      }

      v66 = v23;
      v67 = 1 << v22;
      v27 = v64;
      v28 = *(v64 + 48);
      v29 = *(v16 + 56);
      v30 = (*(v16 + 48) + 16 * v22);
      v68 = v18;
      v32 = *v30;
      v31 = v30[1];
      v33 = type metadata accessor for Alert(0);
      v34 = v61;
      sub_26576000C(v29 + *(*(v33 - 8) + 72) * v22, &v61[v28], type metadata accessor for Alert);
      v35 = v62;
      *v62 = v32;
      *(v35 + 8) = v31;
      sub_26575FFA4(&v34[v28], v35 + *(v27 + 48), type metadata accessor for Alert);
      v36 = v63;
      sub_265763DF8(v35, v63, &qword_28001D660, &qword_26577AD50);
      v37 = *v36;
      v38 = v36[1];
      v39 = *(v27 + 48);

      v40 = v65;
      sub_265779D9C();
      sub_26575FF24(v35, &qword_28001D660, &qword_26577AD50);
      v41 = v36 + v39;
      v18 = v68;
      sub_2657622E0(v41, type metadata accessor for Alert);
      v73 = v18;
      v43 = *(v18 + 16);
      v42 = *(v18 + 24);
      if (v43 >= v42 >> 1)
      {
        sub_2657701C8(v42 > 1, v43 + 1, 1);
        v40 = v65;
        v18 = v73;
      }

      *(v18 + 16) = v43 + 1;
      result = (*(v59 + 32))(v18 + ((*(v59 + 80) + 32) & ~*(v59 + 80)) + *(v59 + 72) * v43, v40, v60);
      v16 = v57;
      v24 = 1 << *(v57 + 32);
      if (v22 >= v24)
      {
        goto LABEL_26;
      }

      v19 = v56;
      v44 = *(v56 + 8 * v26);
      if ((v44 & v67) == 0)
      {
        goto LABEL_27;
      }

      if (v69 != *(v57 + 36))
      {
        goto LABEL_28;
      }

      v45 = v44 & (-2 << (v22 & 0x3F));
      if (v45)
      {
        v24 = __clz(__rbit64(v45)) | v22 & 0x7FFFFFFFFFFFFFC0;
        v25 = v55;
      }

      else
      {
        v46 = v26 << 6;
        v47 = v26 + 1;
        v48 = (v54 + 8 * v26);
        v25 = v55;
        while (v47 < (v24 + 63) >> 6)
        {
          v50 = *v48++;
          v49 = v50;
          v46 += 64;
          ++v47;
          if (v50)
          {
            result = sub_265770D54(v22, v69, 0);
            v24 = __clz(__rbit64(v49)) + v46;
            goto LABEL_4;
          }
        }

        result = sub_265770D54(v22, v69, 0);
      }

LABEL_4:
      v23 = v66 + 1;
      v22 = v24;
      if (v66 + 1 == v25)
      {

        a2 = v52;
        goto LABEL_22;
      }
    }

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
  }

  else
  {

    v18 = MEMORY[0x277D84F90];
LABEL_22:
    result = __swift_destroy_boxed_opaque_existential_1(v70);
    *a2 = v18;
  }

  return result;
}

uint64_t AlertCenter.purgeRecords(for:pairedDeviceIdentifier:)()
{
  sub_265779CDC();
  v1 = *(v0 + 16);

  sub_265779CCC();
  sub_265779CBC();
}

uint64_t sub_26576D3B4(uint64_t (*a1)(uint64_t), uint64_t a2, void *a3)
{
  v52[1] = a2;
  v53 = a1;
  v4 = type metadata accessor for Alert(0);
  v56 = *(v4 - 8);
  v5 = *(v56 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v60 = (v52 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28001D658, &qword_26577AD48);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v7 - 8);
  v11 = v52 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = v52 - v12;
  if (qword_2814476D8 != -1)
  {
LABEL_22:
    swift_once();
  }

  v14 = sub_265779DEC();
  __swift_project_value_buffer(v14, qword_2814476E0);

  v15 = sub_265779DDC();
  v16 = sub_265779EBC();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v61[0] = v18;
    *v17 = 136380675;
    v19 = a3[8];
    __swift_project_boxed_opaque_existential_1(a3 + 4, a3[7]);
    v20 = sub_265779D0C();
    v22 = sub_265761C38(v20, v21, v61);

    *(v17 + 4) = v22;
    _os_log_impl(&dword_26575E000, v15, v16, "(%{private}s): Purging records", v17, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v18);
    MEMORY[0x26675E650](v18, -1, -1);
    MEMORY[0x26675E650](v17, -1, -1);
  }

  swift_beginAccess();
  sub_26575F5D4((a3 + 12), v61);
  v23 = v62;
  v24 = v63;
  __swift_project_boxed_opaque_existential_1(v61, v62);
  v25 = (*(v24 + 8))(v23, v24);
  __swift_destroy_boxed_opaque_existential_1(v61);
  v26 = 0;
  v27 = *(v25 + 64);
  v54 = v25 + 64;
  v55 = v11;
  v57 = a3;
  v58 = v25;
  v28 = 1 << *(v25 + 32);
  v29 = -1;
  if (v28 < 64)
  {
    v29 = ~(-1 << v28);
  }

  v30 = v29 & v27;
  v31 = (v28 + 63) >> 6;
  v59 = v13;
  while (1)
  {
    if (!v30)
    {
      if (v31 <= (v26 + 1))
      {
        v33 = (v26 + 1);
      }

      else
      {
        v33 = v31;
      }

      v13 = (v33 - 1);
      while (1)
      {
        v32 = (v26 + 1);
        if (__OFADD__(v26, 1))
        {
          break;
        }

        if (v32 >= v31)
        {
          v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28001D660, &qword_26577AD50);
          (*(*(v49 - 8) + 56))(v11, 1, 1, v49);
          v30 = 0;
          goto LABEL_17;
        }

        v30 = *(v54 + 8 * v32);
        ++v26;
        if (v30)
        {
          goto LABEL_16;
        }
      }

      __break(1u);
      goto LABEL_22;
    }

    v32 = v26;
LABEL_16:
    v34 = __clz(__rbit64(v30));
    v30 &= v30 - 1;
    v35 = v34 | (v32 << 6);
    v36 = (*(v58 + 48) + 16 * v35);
    v38 = *v36;
    v37 = v36[1];
    v39 = v60;
    sub_26576000C(*(v58 + 56) + *(v56 + 72) * v35, v60, type metadata accessor for Alert);
    v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28001D660, &qword_26577AD50);
    v41 = *(v40 + 48);
    v42 = v55;
    *v55 = v38;
    *(v42 + 1) = v37;
    v43 = v39;
    v11 = v42;
    sub_26575FFA4(v43, &v42[v41], type metadata accessor for Alert);
    (*(*(v40 - 8) + 56))(v11, 0, 1, v40);

    v13 = v32;
    a3 = v57;
LABEL_17:
    v44 = v59;
    sub_265770CE4(v11, v59);
    v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28001D660, &qword_26577AD50);
    if ((*(*(v45 - 8) + 48))(v44, 1, v45) == 1)
    {
      break;
    }

    v46 = *(v44 + 8);

    v47 = v44 + *(v45 + 48);
    v48 = v60;
    sub_26575FFA4(v47, v60, type metadata accessor for Alert);
    sub_26576C818(v48);
    sub_2657622E0(v48, type metadata accessor for Alert);
    v26 = v13;
  }

  return v53(v50);
}

uint64_t sub_26576D8F8()
{
  v1 = *(v0 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28001D638, &qword_26577AC20);
  sub_265779EEC();
  return v3;
}

uint64_t sub_26576D974(uint64_t a1, uint64_t a2)
{
  v4 = sub_265779DBC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  sub_265779CDC();
  v7 = *(v2 + 16);
  (*(v5 + 16))(&v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), a2, v4);
  v8 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = v2;
  (*(v5 + 32))(v9 + v8, &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v4);

  sub_265779CCC();
  sub_265779CBC();
}

uint64_t sub_26576DAFC()
{
  v1 = *v0;
  v2 = v0[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28001D650, &qword_26577AC28);
  sub_265779EEC();
  return v4;
}

uint64_t sub_26576DB98()
{
  v1 = *(v0 + 16);
  sub_265779EEC();
  return v3;
}

uint64_t sub_26576DBFC()
{
  sub_265779CDC();
  v1 = *(v0 + 16);

  sub_265779CCC();
  sub_265779CBC();
}

uint64_t sub_26576DC94(void *a1, uint64_t a2, uint64_t a3, unsigned __int8 *a4)
{
  v5 = v4;
  v119 = a2;
  v120 = a1;
  v8 = sub_265779C1C();
  v115 = *(v8 - 8);
  v116 = v8;
  v9 = *(v115 + 64);
  MEMORY[0x28223BE20](v8);
  v114 = &v101[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = type metadata accessor for Alert(0);
  v103 = *(v11 - 8);
  v12 = *(v103 + 64);
  v13 = MEMORY[0x28223BE20](v11);
  v106 = &v101[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = MEMORY[0x28223BE20](v13);
  v104 = &v101[-v16];
  v17 = MEMORY[0x28223BE20](v15);
  v117 = &v101[-v18];
  v19 = MEMORY[0x28223BE20](v17);
  v113 = &v101[-v20];
  v105 = v21;
  MEMORY[0x28223BE20](v19);
  v118 = &v101[-v22];
  v23 = type metadata accessor for Alert.HistoryItem(0);
  v112 = *(v23 - 8);
  v24 = v112[8];
  MEMORY[0x28223BE20](v23);
  v26 = &v101[-((v25 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v27 = sub_265779E3C();
  v28 = *(v27 - 1);
  v29 = *(v28 + 64);
  MEMORY[0x28223BE20](v27);
  v31 = &v101[-((v30 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v32 = *a4;
  v33 = v5[2];
  *v31 = v33;
  (*(v28 + 104))(v31, *MEMORY[0x277D85200], v27);
  v34 = v33;
  v35 = sub_265779E4C();
  (*(v28 + 8))(v31, v27);
  if (v35)
  {
    v27 = *(v120 + *(v11 + 40));
    v36 = v5[8];
    __swift_project_boxed_opaque_existential_1(v5 + 4, v5[7]);

    v37 = sub_265779D0C();
    v39 = v38;
    v40 = &v26[*(v23 + 32)];
    sub_265779BFC();
    *v26 = v32;
    *(v26 + 1) = v37;
    *(v26 + 2) = v39;
    *(v26 + 3) = v119;
    *(v26 + 4) = a3;
    v26[40] = 0;

    v35 = v11;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  v27 = sub_265763004(0, v27[2] + 1, 1, v27);
LABEL_3:
  v41 = v112;
  v43 = v27[2];
  v42 = v27[3];
  v110 = a3;
  v111 = v5;
  v102 = v32;
  if (v43 >= v42 >> 1)
  {
    v27 = sub_265763004(v42 > 1, v43 + 1, 1, v27);
  }

  v112 = v27;
  v27[2] = v43 + 1;
  sub_26575FFA4(v26, v27 + ((*(v41 + 80) + 32) & ~*(v41 + 80)) + v41[9] * v43, type metadata accessor for Alert.HistoryItem);
  v44 = v120;
  v45 = v120[1];
  v107 = *v120;
  v46 = v35;
  v47 = v114;
  v48 = v115;
  v49 = *(v115 + 16);
  v50 = v116;
  v49(v114, v120 + v35[5], v116);
  v51 = v49;
  v52 = v35[8];
  v53 = v44 + v35[7];
  v54 = *v53;
  v55 = (v44 + v35[9]);
  v56 = *v55;
  v108 = v55[1];
  v109 = v56;
  LOBYTE(v44) = *(v44 + v52);
  v57 = v53[8];
  v58 = v113;
  *v113 = v107;
  *(v58 + 8) = v45;
  v51(v58 + v46[5], v47, v50);
  v59 = v58 + v46[7];
  *v59 = v54;
  *(v59 + 8) = v57;
  *(v58 + v46[8]) = v44;
  v60 = v46[6];

  v62 = v108;
  v61 = v109;
  sub_265760088(v109, v108);
  sub_265779BAC();
  (*(v48 + 8))(v47, v50);
  v63 = (v58 + v46[9]);
  *v63 = v61;
  v63[1] = v62;
  *(v58 + v46[10]) = v112;
  v64 = v118;
  sub_26575FFA4(v58, v118, type metadata accessor for Alert);
  if (qword_2814476D8 != -1)
  {
    swift_once();
  }

  v65 = sub_265779DEC();
  __swift_project_value_buffer(v65, qword_2814476E0);
  v66 = v117;
  sub_26576000C(v64, v117, type metadata accessor for Alert);
  v67 = v111;

  v68 = sub_265779DDC();
  v69 = sub_265779EBC();

  v70 = os_log_type_enabled(v68, v69);
  v71 = v119;
  if (v70)
  {
    v72 = swift_slowAlloc();
    v73 = swift_slowAlloc();
    v121[0] = v73;
    *v72 = 136380931;
    v74 = v67[8];
    __swift_project_boxed_opaque_existential_1(v67 + 4, v67[7]);
    v75 = sub_265779D0C();
    v77 = sub_265761C38(v75, v76, v121);

    *(v72 + 4) = v77;
    *(v72 + 12) = 2082;
    v78 = Alert.description.getter();
    v80 = v79;
    sub_2657622E0(v66, type metadata accessor for Alert);
    v81 = sub_265761C38(v78, v80, v121);

    *(v72 + 14) = v81;
    _os_log_impl(&dword_26575E000, v68, v69, "(%{private}s): Attempting to present alert on a specific device: %{public}s ", v72, 0x16u);
    swift_arrayDestroy();
    v82 = v73;
    v71 = v119;
    MEMORY[0x26675E650](v82, -1, -1);
    MEMORY[0x26675E650](v72, -1, -1);
  }

  else
  {

    sub_2657622E0(v66, type metadata accessor for Alert);
  }

  v83 = v120;
  v84 = v67[8];
  __swift_project_boxed_opaque_existential_1(v67 + 4, v67[7]);
  v85 = sub_265779D0C();
  v87 = v110;
  if (v85 == v71 && v86 == v110)
  {
  }

  else
  {
    v88 = sub_26577A0BC();

    if ((v88 & 1) == 0)
    {
      v89 = v104;
      sub_26576000C(v64, v104, type metadata accessor for Alert);
      sub_26576000C(v83, v106, type metadata accessor for Alert);
      v90 = *(v103 + 80);
      v91 = v67;
      v92 = (v90 + 16) & ~v90;
      v93 = v87;
      v94 = v92 + v105;
      v95 = (v92 + v105) & 0xFFFFFFFFFFFFFFF8;
      v96 = (v95 + 23) & 0xFFFFFFFFFFFFFFF8;
      v97 = (v90 + 16 + v96) & ~v90;
      v98 = swift_allocObject();
      sub_26575FFA4(v89, v98 + v92, type metadata accessor for Alert);
      *(v98 + v94) = v102;
      *(v98 + v95 + 8) = v91;
      v99 = (v98 + v96);
      *v99 = v119;
      v99[1] = v93;
      sub_26575FFA4(v106, v98 + v97, type metadata accessor for Alert);
      v64 = v118;

      sub_26576EAB0(v64, sub_265771050, v98);

      sub_2657631E0(v64);
      return sub_2657622E0(v64, type metadata accessor for Alert);
    }
  }

  sub_2657626C0(v64);
  return sub_2657622E0(v64, type metadata accessor for Alert);
}

uint64_t sub_26576E59C(uint64_t a1, int a2, void *a3, uint64_t a4, uint64_t a5, void *a6)
{
  v77 = a6;
  v73 = a4;
  LODWORD(v72) = a2;
  v82 = sub_265779C1C();
  v75 = *(v82 - 8);
  v9 = *(v75 + 64);
  MEMORY[0x28223BE20](v82);
  v79 = &v69 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Alert(0);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v11);
  v76 = (&v69 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v13);
  v78 = &v69 - v15;
  v16 = type metadata accessor for Alert.HistoryItem(0);
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  v19 = MEMORY[0x28223BE20](v16);
  v21 = &v69 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v23 = &v69 - v22;
  v80 = v11;
  v24 = *(a1 + *(v11 + 40));
  v25 = a3[8];
  __swift_project_boxed_opaque_existential_1(a3 + 4, a3[7]);

  v26 = sub_265779D0C();
  v28 = v27;
  v74 = v16;
  v29 = &v23[*(v16 + 32)];
  sub_265779BFC();
  *v23 = v72 & 1;
  *(v23 + 1) = v26;
  *(v23 + 2) = v28;
  *(v23 + 3) = v73;
  *(v23 + 4) = a5;
  v23[40] = 64;

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v24 = sub_265763004(0, v24[2] + 1, 1, v24);
  }

  v31 = v24[2];
  v30 = v24[3];
  if (v31 >= v30 >> 1)
  {
    v24 = sub_265763004(v30 > 1, v31 + 1, 1, v24);
  }

  v24[2] = v31 + 1;
  v32 = (*(v17 + 80) + 32) & ~*(v17 + 80);
  v33 = *(v17 + 72);
  sub_26575FFA4(v23, v24 + v32 + v33 * v31, type metadata accessor for Alert.HistoryItem);
  v34 = a3[8];
  __swift_project_boxed_opaque_existential_1(a3 + 4, a3[7]);
  v35 = sub_265779D0C();
  v37 = v36;
  v38 = v24;
  v39 = a3[8];
  __swift_project_boxed_opaque_existential_1(a3 + 4, a3[7]);
  v40 = sub_265779D0C();
  v42 = v41;
  v43 = &v21[*(v74 + 8)];
  sub_265779BFC();
  *v21 = 1;
  *(v21 + 1) = v35;
  *(v21 + 2) = v37;
  *(v21 + 3) = v40;
  *(v21 + 4) = v42;
  v21[40] = 0;
  v45 = v38[2];
  v44 = v38[3];
  v81 = a3;
  if (v45 >= v44 >> 1)
  {
    v38 = sub_265763004(v44 > 1, v45 + 1, 1, v38);
  }

  v74 = v38;
  v38[2] = v45 + 1;
  sub_26575FFA4(v21, v38 + v32 + v45 * v33, type metadata accessor for Alert.HistoryItem);
  v46 = v77;
  v47 = *v77;
  v70 = v77[1];
  v71 = v47;
  v48 = v79;
  v49 = v80;
  v50 = v75;
  v51 = *(v75 + 16);
  v52 = v82;
  v51(v79, v77 + v80[5], v82);
  v53 = v49[8];
  v54 = v46 + v49[7];
  v55 = *v54;
  v56 = (v46 + v49[9]);
  v57 = *v56;
  v72 = v56[1];
  v73 = v57;
  v58 = v52;
  v59 = *(v46 + v53);
  LOBYTE(v46) = v54[8];
  v60 = v76;
  v61 = v70;
  *v76 = v71;
  *(v60 + 8) = v61;
  v51((v60 + v49[5]), v48, v58);
  v62 = v60 + v49[7];
  *v62 = v55;
  *(v62 + 8) = v46;
  *(v60 + v49[8]) = v59;
  v63 = v49[6];

  v65 = v72;
  v64 = v73;
  sub_265760088(v73, v72);
  sub_265779BAC();
  (*(v50 + 8))(v48, v82);
  v66 = (v60 + v49[9]);
  *v66 = v64;
  v66[1] = v65;
  *(v60 + v49[10]) = v74;
  v67 = v78;
  sub_26575FFA4(v60, v78, type metadata accessor for Alert);
  sub_265760104(v67);
  return sub_2657622E0(v67, type metadata accessor for Alert);
}

void sub_26576EAB0(uint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
{
  v4 = v3;
  v58 = a2;
  v59 = a3;
  v6 = type metadata accessor for Alert(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v60 = &v55 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_265779C1C();
  v56 = *(v9 - 8);
  v57 = v9;
  v10 = *(v56 + 64);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v55 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v55 - v14;
  v16 = sub_265779E3C();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  v20 = (&v55 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  v21 = v4[2];
  *v20 = v21;
  (*(v17 + 104))(v20, *MEMORY[0x277D85200], v16);
  v22 = v21;
  v23 = sub_265779E4C();
  (*(v17 + 8))(v20, v16);
  if ((v23 & 1) == 0)
  {
    __break(1u);
    goto LABEL_12;
  }

  v24 = *(a1 + *(v6 + 40));
  v25 = *(v24 + 16);
  if (!v25)
  {
LABEL_12:
    __break(1u);
LABEL_13:
    swift_once();
    goto LABEL_8;
  }

  v61 = a1;
  v26 = v4[11];
  v27 = type metadata accessor for Alert.HistoryItem(0);
  v29 = *(*(v27 - 8) + 72);
  if (*(v26 + 16))
  {
    v30 = v27;
    v28 = *(*(v27 - 8) + 80);
    v31 = v24 + ((v28 + 32) & ~v28);
    v32 = sub_265764524(*(v31 + v29 * (v25 - 1) + 40));
    if (v33)
    {
      v34 = *(v24 + 16);
      if (v34)
      {
        v35 = *(*(v26 + 56) + 8 * v32);
        v37 = v56;
        v36 = v57;
        (*(v56 + 16))(v13, v31 + (v34 - 1) * v29 + *(v30 + 32), v57);
        sub_265779BCC();
        v38 = *(v37 + 8);
        v38(v13, v36);
        sub_265779BDC();
        v40 = v39;
        v38(v15, v36);
        sub_26576F5FC(*v61, v61[1], v58, v59, v40);
      }

      else
      {
        __break(1u);
      }

      return;
    }
  }

  if (qword_2814476D8 != -1)
  {
    goto LABEL_13;
  }

LABEL_8:
  v41 = sub_265779DEC();
  __swift_project_value_buffer(v41, qword_2814476E0);
  v42 = v60;
  sub_26576000C(v61, v60, type metadata accessor for Alert);

  v43 = sub_265779DDC();
  v44 = sub_265779EBC();

  if (os_log_type_enabled(v43, v44))
  {
    v45 = swift_slowAlloc();
    v46 = swift_slowAlloc();
    v62 = v46;
    *v45 = 136380931;
    v47 = v4[8];
    __swift_project_boxed_opaque_existential_1(v4 + 4, v4[7]);
    v48 = sub_265779D0C();
    v50 = sub_265761C38(v48, v49, &v62);

    *(v45 + 4) = v50;
    *(v45 + 12) = 2082;
    v51 = Alert.description.getter();
    v53 = v52;
    sub_2657622E0(v42, type metadata accessor for Alert);
    v54 = sub_265761C38(v51, v53, &v62);

    *(v45 + 14) = v54;
    _os_log_impl(&dword_26575E000, v43, v44, "(%{private}s): Alert does not require a watchdog: %{public}s", v45, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x26675E650](v46, -1, -1);
    MEMORY[0x26675E650](v45, -1, -1);
  }

  else
  {

    sub_2657622E0(v42, type metadata accessor for Alert);
  }
}

uint64_t sub_26576EFDC(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for Alert.HistoryItem(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = type metadata accessor for Alert(0);
  v11 = *(v2 + *(result + 40));
  v12 = *(v11 + 16);
  if (!v12)
  {
    return 0;
  }

  v13 = 0;
  v14 = v11 + ((*(v6 + 80) + 32) & ~*(v6 + 80));
  while (v13 < *(v11 + 16))
  {
    sub_26576000C(v14 + *(v6 + 72) * v13, v9, type metadata accessor for Alert.HistoryItem);
    v15 = *(v9 + 3) == a1 && *(v9 + 4) == a2;
    if (v15 || (sub_26577A0BC()) && v9[40] < 0x40u)
    {
      sub_2657622E0(v9, type metadata accessor for Alert.HistoryItem);
      return 1;
    }

    ++v13;
    result = sub_2657622E0(v9, type metadata accessor for Alert.HistoryItem);
    if (v12 == v13)
    {
      return 0;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_26576F174(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for Alert(0);
  v43 = *(v4 - 8);
  v5 = *(v43 + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v41 - v7;
  v9 = sub_265779E3C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = (&v41 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = v2[2];
  *v13 = v14;
  (*(v10 + 104))(v13, *MEMORY[0x277D85200], v9);
  v15 = v14;
  v16 = sub_265779E4C();
  (*(v10 + 8))(v13, v9);
  if (v16)
  {
    v42 = &v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
    if (qword_2814476D8 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v17 = sub_265779DEC();
  __swift_project_value_buffer(v17, qword_2814476E0);
  sub_26576000C(a1, v8, type metadata accessor for Alert);

  v18 = sub_265779DDC();
  v19 = sub_265779EBC();

  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v41 = a1;
    v21 = v20;
    v22 = swift_slowAlloc();
    v44 = v22;
    *v21 = 136380931;
    v23 = v2[8];
    __swift_project_boxed_opaque_existential_1(v2 + 4, v2[7]);
    v24 = sub_265779D0C();
    v26 = sub_265761C38(v24, v25, &v44);

    *(v21 + 4) = v26;
    *(v21 + 12) = 2082;
    v27 = Alert.description.getter();
    v29 = v28;
    sub_2657622E0(v8, type metadata accessor for Alert);
    v30 = sub_265761C38(v27, v29, &v44);

    *(v21 + 14) = v30;
    _os_log_impl(&dword_26575E000, v18, v19, "(%{private}s): Attempting to present non-interrupting alert on local device: %{public}s", v21, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x26675E650](v22, -1, -1);
    v31 = v21;
    a1 = v41;
    MEMORY[0x26675E650](v31, -1, -1);
  }

  else
  {

    sub_2657622E0(v8, type metadata accessor for Alert);
  }

  v32 = v2[9];
  v33 = v2[10];
  ObjectType = swift_getObjectType();
  v35 = swift_allocObject();
  swift_weakInit();
  v36 = v42;
  sub_26576000C(a1, v42, type metadata accessor for Alert);
  v37 = (*(v43 + 80) + 24) & ~*(v43 + 80);
  v38 = swift_allocObject();
  *(v38 + 16) = v35;
  sub_26575FFA4(v36, v38 + v37, type metadata accessor for Alert);
  v39 = *(v33 + 32);

  v39(a1, 0, sub_265771170, v38, ObjectType, v33);
}

uint64_t sub_26576F5FC(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4, double a5)
{
  v6 = v5;
  v12 = sub_265779E3C();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = (&v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = *(v6 + 16);
  *v16 = v17;
  (*(v13 + 104))(v16, *MEMORY[0x277D85200], v12);
  v18 = v17;
  v19 = sub_265779E4C();
  result = (*(v13 + 8))(v16, v12);
  if (v19)
  {
    v21 = swift_beginAccess();
    v22 = *(v6 + 136);
    if (*(v22 + 16))
    {
      v23 = *(v6 + 136);

      v24 = sub_26576435C(a1, a2);
      if ((v25 & 1) == 0)
      {

        if (a5 > 0.0)
        {
          goto LABEL_6;
        }

        return a3(v21);
      }

      v26 = *(*(v22 + 56) + 8 * v24);

      sub_265779C3C();
      swift_beginAccess();

      sub_265778BC0(0, a1, a2);
      swift_endAccess();
    }

    if (a5 > 0.0)
    {
LABEL_6:
      sub_265779C8C();
      v27 = sub_265779C7C();
      MEMORY[0x28223BE20](v27);
      *(&v31 - 4) = v6;
      *(&v31 - 3) = a1;
      *(&v31 - 2) = a2;
      v28 = swift_allocObject();
      v28[2] = v6;
      v28[3] = a1;
      v28[4] = a2;
      v28[5] = a3;
      v28[6] = a4;

      sub_265779C4C();

      swift_beginAccess();

      v29 = *(v6 + 136);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v32 = *(v6 + 136);
      *(v6 + 136) = 0x8000000000000000;
      sub_265767118(v27, a1, a2, isUniquelyReferenced_nonNull_native);

      *(v6 + 136) = v32;
      swift_endAccess();
    }

    return a3(v21);
  }

  __break(1u);
  return result;
}

uint64_t sub_26576F938(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = type metadata accessor for Alert(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v9 = result;
    if (qword_2814476D8 != -1)
    {
      swift_once();
    }

    v10 = sub_265779DEC();
    __swift_project_value_buffer(v10, qword_2814476E0);
    sub_26576000C(a3, v7, type metadata accessor for Alert);

    v11 = sub_265779DDC();
    v12 = sub_265779EBC();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v23 = v14;
      *v13 = 136380931;
      v15 = v9[8];
      __swift_project_boxed_opaque_existential_1(v9 + 4, v9[7]);
      v16 = sub_265779D0C();
      v18 = sub_265761C38(v16, v17, &v23);

      *(v13 + 4) = v18;
      *(v13 + 12) = 2082;
      v19 = Alert.description.getter();
      v21 = v20;
      sub_2657622E0(v7, type metadata accessor for Alert);
      v22 = sub_265761C38(v19, v21, &v23);

      *(v13 + 14) = v22;
      _os_log_impl(&dword_26575E000, v11, v12, "(%{private}s): Presented non-interrupting alert on local device: %{public}s", v13, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x26675E650](v14, -1, -1);
      MEMORY[0x26675E650](v13, -1, -1);
    }

    else
    {

      return sub_2657622E0(v7, type metadata accessor for Alert);
    }
  }

  return result;
}

uint64_t sub_26576FBDC(uint64_t a1, void *a2, uint64_t a3, unint64_t a4, uint64_t (*a5)(uint64_t))
{
  if (qword_2814476D8 != -1)
  {
    swift_once();
  }

  v9 = sub_265779DEC();
  __swift_project_value_buffer(v9, qword_2814476E0);

  v10 = sub_265779DDC();
  v11 = sub_265779EBC();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    *v12 = 136380931;
    v20[0] = v19;
    v13 = a2[8];
    __swift_project_boxed_opaque_existential_1(a2 + 4, a2[7]);
    v14 = sub_265779D0C();
    v16 = sub_265761C38(v14, v15, v20);

    *(v12 + 4) = v16;
    *(v12 + 12) = 2082;
    *(v12 + 14) = sub_265761C38(a3, a4, v20);
    _os_log_impl(&dword_26575E000, v10, v11, "(%{private}s): Watchdog fired for: %{public}s", v12, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x26675E650](v19, -1, -1);
    MEMORY[0x26675E650](v12, -1, -1);
  }

  swift_beginAccess();

  sub_265778BC0(0, a3, a4);
  v17 = swift_endAccess();
  return a5(v17);
}

uint64_t sub_26576FDF8(uint64_t a1, unint64_t a2)
{
  v4 = sub_26576FE44(a1, a2);
  sub_26576FF74(&unk_287713C50);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_26576FE44(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return MEMORY[0x277D84F90];
  }

  v6 = sub_265770060(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_265779F8C();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_265779E8C();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_265770060(v10, 0);
        result = sub_265779F4C();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_26576FF74(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  v7 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  result = sub_2657700D4(result, v12, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_265770060(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28001D688, &qword_26577AD78);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_2657700D4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28001D688, &qword_26577AD78);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

size_t sub_2657701C8(size_t a1, int64_t a2, char a3)
{
  result = sub_2657701E8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_2657701E8(size_t result, int64_t a2, char a3, void *a4)
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
LABEL_30:
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

  if (!v9)
  {
    v13 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28001D668, &qword_26577AD58);
  v10 = *(sub_265779DBC() - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(sub_265779DBC() - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

unint64_t sub_2657703C0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28001D680, &qword_26577AD70);
    v3 = sub_265779FCC();
    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *(i - 8);
      v6 = *i;
      result = sub_265764524(v5);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + result) = v5;
      *(v3[7] + 8 * result) = v6;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
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

void *sub_2657704A0(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v38 = a4;
  v39 = a5;
  v36 = a3;
  v37 = a2;
  v35 = a1;
  v7 = sub_265779EDC();
  v8 = *(v7 - 8);
  v40 = v7;
  v41 = v8;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_265779ECC();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12);
  v14 = sub_265779E2C();
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v5[17] = MEMORY[0x277D84F98];
  v5[19] = 0;
  swift_unknownObjectWeakInit();
  v16 = sub_2657711E4();
  v33 = "rtCenter.swift";
  v34 = v16;
  sub_265779E1C();
  v42 = MEMORY[0x277D84F90];
  v32[1] = sub_2657662E4(&qword_2814476C8, 255, MEMORY[0x277D85230]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28001D6A0, &qword_26577AD88);
  sub_26576632C(&qword_2814476D0, &qword_28001D6A0, &qword_26577AD88);
  sub_265779F1C();
  v17 = *MEMORY[0x277D85268];
  v18 = *(v41 + 104);
  v41 += 104;
  v32[0] = v11;
  v18(v11, v17, v40);
  v5[2] = sub_265779F0C();
  v33 = "lertCenter.internal";
  sub_265779E1C();
  v42 = MEMORY[0x277D84F90];
  v20 = v35;
  v19 = v36;
  v21 = v37;
  sub_265779F1C();
  v18(v32[0], v17, v40);
  v5[3] = sub_265779F0C();
  sub_26575F5D4(v21, (v5 + 4));
  v22 = v38;
  v5[9] = v19;
  v5[10] = v22;
  sub_26575F5D4(v20, (v5 + 12));
  if (v39)
  {
    v5[11] = v39;
    swift_unknownObjectRetain();
  }

  else
  {
    v23 = qword_281447838;
    swift_unknownObjectRetain();
    if (v23 != -1)
    {
      swift_once();
    }

    v6[11] = off_281447840;
  }

  v24 = v21[4];
  __swift_project_boxed_opaque_existential_1(v21, v21[3]);
  sub_2657662E4(&qword_281447830, v25, type metadata accessor for AlertCenter);

  sub_265779D1C();

  v26 = v6[9];
  v27 = v6[10];
  ObjectType = swift_getObjectType();
  v29 = *(v27 + 16);

  v29(v30, &protocol witness table for AlertCenter, ObjectType, v27);
  __swift_destroy_boxed_opaque_existential_1(v20);
  __swift_destroy_boxed_opaque_existential_1(v21);
  return v6;
}

uint64_t sub_265770988(uint64_t (*a1)(uint64_t))
{
  v3 = *(type metadata accessor for Alert(0) - 8);
  v4 = (v1 + ((*(v3 + 80) + 24) & ~*(v3 + 80)));
  v5 = *(v1 + 16);
  v6 = sub_26576B9B0(v4);
  return a1(v6);
}

uint64_t objectdestroy_52Tm()
{
  v1 = sub_265779DBC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_265770C28(uint64_t (*a1)(uint64_t), uint64_t a2)
{
  v5 = *(sub_265779DBC() - 8);
  v6 = *(v2 + 16);
  v7 = v2 + ((*(v5 + 80) + 24) & ~*(v5 + 80));

  return sub_26576C3BC(a1, a2, v6, v7);
}

uint64_t sub_265770CAC@<X0>(uint64_t *a1@<X8>)
{
  result = swift_unknownObjectWeakLoadStrong();
  v4 = *(v1 + 152);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_265770CE4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28001D658, &qword_26577AD48);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_265770D54(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t sub_265770D60()
{
  v1 = *(type metadata accessor for Alert(0) - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = *(v0 + 16);
  v4 = *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));
  v6 = 0;
  sub_2657664C8(v0 + v2, &v6);
  return sub_265779C9C();
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

uint64_t objectdestroy_78Tm()
{
  v1 = (type metadata accessor for Alert(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 40) & ~v2;
  v4 = *(*v1 + 64);
  v5 = *(v0 + 16);
  swift_unknownObjectRelease();
  v6 = *(v0 + 32);

  v7 = *(v0 + v3 + 8);

  v8 = v1[7];
  v9 = sub_265779C1C();
  v10 = *(*(v9 - 8) + 8);
  v10(v0 + v3 + v8, v9);
  v10(v0 + v3 + v1[8], v9);
  sub_265764C28(*(v0 + v3 + v1[11]), *(v0 + v3 + v1[11] + 8));
  v11 = *(v0 + v3 + v1[12]);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_265770F94(uint64_t (*a1)(uint64_t))
{
  v3 = *(type metadata accessor for Alert(0) - 8);
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = (v1 + ((*(v3 + 80) + 40) & ~*(v3 + 80)));
  ObjectType = swift_getObjectType();
  v9 = (*(v5 + 8))(v6, &protocol witness table for AlertCenter, *v7, v7[1], ObjectType, v5);
  return a1(v9);
}

uint64_t sub_265771050()
{
  v1 = *(type metadata accessor for Alert(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = v3 + *(v1 + 64);
  v5 = ((v4 & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + v4);
  v7 = *(v0 + (v4 & 0xFFFFFFFFFFFFFFF8) + 8);
  v8 = *(v0 + v5);
  v9 = *(v0 + v5 + 8);

  return sub_26576E59C(v0 + v3, v6, v7, v8, v9, (v0 + ((v2 + 16 + v5) & ~v2)));
}

uint64_t objectdestroy_102Tm()
{
  v1 = v0[2];

  v2 = v0[4];

  v3 = v0[6];

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_265771170(uint64_t a1)
{
  v3 = *(type metadata accessor for Alert(0) - 8);
  v4 = *(v1 + 16);
  v5 = v1 + ((*(v3 + 80) + 24) & ~*(v3 + 80));

  return sub_26576F938(a1, v4, v5);
}

unint64_t sub_2657711E4()
{
  result = qword_2814476C0;
  if (!qword_2814476C0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2814476C0);
  }

  return result;
}

uint64_t sub_2657712B4()
{
  v0 = sub_265779C2C();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20]();
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_265779DEC();
  __swift_allocate_value_buffer(v5, qword_2814476E0);
  __swift_project_value_buffer(v5, qword_2814476E0);
  (*(v1 + 104))(v4, *MEMORY[0x277CB9750], v0);
  return sub_265779DCC();
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

uint64_t Alert.HistoryItem.init(necessity:requestingDeviceID:requestedDeviceID:state:)@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char *a6@<X5>, uint64_t a7@<X8>)
{
  v12 = *a1;
  v13 = *a6;
  v14 = a7 + *(type metadata accessor for Alert.HistoryItem(0) + 32);
  result = sub_265779BFC();
  *a7 = v12;
  *(a7 + 8) = a2;
  *(a7 + 16) = a3;
  *(a7 + 24) = a4;
  *(a7 + 32) = a5;
  *(a7 + 40) = v13;
  return result;
}

uint64_t Alert.init(identifier:creationDate:dismissOption:payload:breaksThroughFocus:history:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char a7@<W6>, uint64_t a8@<X7>, uint64_t *a9@<X8>)
{
  if (*(a8 + 16))
  {
    v13 = *a4;
    v14 = *(a4 + 8);
    *a9 = result;
    a9[1] = a2;
    v15 = type metadata accessor for Alert(0);
    v16 = v15[5];
    v17 = sub_265779C1C();
    v18 = *(v17 - 8);
    (*(v18 + 16))(a9 + v16, a3, v17);
    v19 = a9 + v15[7];
    *v19 = v13;
    v19[8] = v14;
    *(a9 + v15[8]) = a7 & 1;
    v20 = a9 + v15[6];
    sub_265779BAC();
    result = (*(v18 + 8))(a3, v17);
    v21 = (a9 + v15[9]);
    *v21 = a5;
    v21[1] = a6;
    *(a9 + v15[10]) = a8;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2657715CC()
{
  if (*v0)
  {
    result = 0x726F7461646E616DLL;
  }

  else
  {
    result = 0x6C616E6F6974706FLL;
  }

  *v0;
  return result;
}

uint64_t sub_26577160C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6C616E6F6974706FLL && a2 == 0xE800000000000000;
  if (v6 || (sub_26577A0BC() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x726F7461646E616DLL && a2 == 0xE900000000000079)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_26577A0BC();

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

uint64_t sub_2657716F0(uint64_t a1)
{
  v2 = sub_265771B08();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26577172C(uint64_t a1)
{
  v2 = sub_265771B08();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_265771768(uint64_t a1)
{
  v2 = sub_265771B5C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2657717A4(uint64_t a1)
{
  v2 = sub_265771B5C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2657717E0(uint64_t a1)
{
  v2 = sub_265771BB0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26577181C(uint64_t a1)
{
  v2 = sub_265771BB0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t Alert.Necessity.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28001D6A8, &qword_26577ADA0);
  v23 = *(v3 - 8);
  v24 = v3;
  v4 = *(v23 + 64);
  MEMORY[0x28223BE20](v3);
  v22 = &v20 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28001D6B0, &qword_26577ADA8);
  v20 = *(v6 - 8);
  v21 = v6;
  v7 = *(v20 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v20 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28001D6B8, &qword_26577ADB0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v20 - v13;
  v15 = *v1;
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_265771B08();
  sub_26577A12C();
  v17 = (v11 + 8);
  if (v15)
  {
    v26 = 1;
    sub_265771B5C();
    v18 = v22;
    sub_26577A05C();
    (*(v23 + 8))(v18, v24);
  }

  else
  {
    v25 = 0;
    sub_265771BB0();
    sub_26577A05C();
    (*(v20 + 8))(v9, v21);
  }

  return (*v17)(v14, v10);
}

unint64_t sub_265771B08()
{
  result = qword_28001D6C0;
  if (!qword_28001D6C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28001D6C0);
  }

  return result;
}

unint64_t sub_265771B5C()
{
  result = qword_28001D6C8;
  if (!qword_28001D6C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28001D6C8);
  }

  return result;
}

unint64_t sub_265771BB0()
{
  result = qword_28001D6D0;
  if (!qword_28001D6D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28001D6D0);
  }

  return result;
}

uint64_t Alert.Necessity.init(from:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v34 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28001D6D8, &qword_26577ADB8);
  v32 = *(v3 - 8);
  v33 = v3;
  v4 = *(v32 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v29 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28001D6E0, &qword_26577ADC0);
  v31 = *(v7 - 8);
  v8 = *(v31 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v29 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28001D6E8, &unk_26577ADC8);
  v35 = *(v11 - 8);
  v12 = *(v35 + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v29 - v13;
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_265771B08();
  v16 = v36;
  sub_26577A11C();
  if (v16)
  {
    v17 = a1;
  }

  else
  {
    v30 = v7;
    v36 = a1;
    v18 = v33;
    v19 = v34;
    v20 = sub_26577A04C();
    v21 = (2 * *(v20 + 16)) | 1;
    v37 = v20;
    v38 = v20 + 32;
    v39 = 0;
    v40 = v21;
    v22 = sub_26576925C();
    if (v22 == 2 || v39 != v40 >> 1)
    {
      v24 = sub_265779F7C();
      swift_allocError();
      v26 = v25;
      v27 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28001D5B8, &qword_26577A700) + 48);
      *v26 = &type metadata for Alert.Necessity;
      sub_265779FEC();
      sub_265779F6C();
      (*(*(v24 - 8) + 104))(v26, *MEMORY[0x277D84160], v24);
      swift_willThrow();
      (*(v35 + 8))(v14, v11);
      swift_unknownObjectRelease();
    }

    else
    {
      v41 = v22;
      if (v22)
      {
        v42 = 1;
        sub_265771B5C();
        sub_265779FDC();
        v23 = v35;
        (*(v32 + 8))(v6, v18);
      }

      else
      {
        v42 = 0;
        sub_265771BB0();
        sub_265779FDC();
        v23 = v35;
        (*(v31 + 8))(v10, v30);
      }

      (*(v23 + 8))(v14, v11);
      swift_unknownObjectRelease();
      *v19 = v41 & 1;
    }

    v17 = v36;
  }

  return __swift_destroy_boxed_opaque_existential_1(v17);
}

uint64_t sub_2657720F0()
{
  if (*v0)
  {
    result = 0x676E696B6E696874;
  }

  else
  {
    result = 0x6974736575716572;
  }

  *v0;
  return result;
}

uint64_t sub_265772130@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6974736575716572 && a2 == 0xEA0000000000676ELL;
  if (v6 || (sub_26577A0BC() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x676E696B6E696874 && a2 == 0xE800000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_26577A0BC();

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

uint64_t sub_265772214(uint64_t a1)
{
  v2 = sub_26577262C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_265772250(uint64_t a1)
{
  v2 = sub_26577262C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_26577228C(uint64_t a1)
{
  v2 = sub_2657726D4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2657722C8(uint64_t a1)
{
  v2 = sub_2657726D4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_265772304(uint64_t a1)
{
  v2 = sub_265772680();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_265772340(uint64_t a1)
{
  v2 = sub_265772680();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t Alert.CoordinationState.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28001D6F0, &qword_26577ADD8);
  v23 = *(v3 - 8);
  v24 = v3;
  v4 = *(v23 + 64);
  MEMORY[0x28223BE20](v3);
  v22 = &v20 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28001D6F8, &qword_26577ADE0);
  v20 = *(v6 - 8);
  v21 = v6;
  v7 = *(v20 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v20 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28001D700, &qword_26577ADE8);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v20 - v13;
  v15 = *v1;
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26577262C();
  sub_26577A12C();
  v17 = (v11 + 8);
  if (v15)
  {
    v26 = 1;
    sub_265772680();
    v18 = v22;
    sub_26577A05C();
    (*(v23 + 8))(v18, v24);
  }

  else
  {
    v25 = 0;
    sub_2657726D4();
    sub_26577A05C();
    (*(v20 + 8))(v9, v21);
  }

  return (*v17)(v14, v10);
}

unint64_t sub_26577262C()
{
  result = qword_28001D708;
  if (!qword_28001D708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28001D708);
  }

  return result;
}

unint64_t sub_265772680()
{
  result = qword_28001D710;
  if (!qword_28001D710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28001D710);
  }

  return result;
}

unint64_t sub_2657726D4()
{
  result = qword_28001D718;
  if (!qword_28001D718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28001D718);
  }

  return result;
}

uint64_t Alert.CoordinationState.init(from:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v34 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28001D720, &qword_26577ADF0);
  v32 = *(v3 - 8);
  v33 = v3;
  v4 = *(v32 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v29 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28001D728, &qword_26577ADF8);
  v31 = *(v7 - 8);
  v8 = *(v31 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v29 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28001D730, &qword_26577AE00);
  v35 = *(v11 - 8);
  v12 = *(v35 + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v29 - v13;
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26577262C();
  v16 = v36;
  sub_26577A11C();
  if (v16)
  {
    v17 = a1;
  }

  else
  {
    v30 = v7;
    v36 = a1;
    v18 = v33;
    v19 = v34;
    v20 = sub_26577A04C();
    v21 = (2 * *(v20 + 16)) | 1;
    v37 = v20;
    v38 = v20 + 32;
    v39 = 0;
    v40 = v21;
    v22 = sub_26576925C();
    if (v22 == 2 || v39 != v40 >> 1)
    {
      v24 = sub_265779F7C();
      swift_allocError();
      v26 = v25;
      v27 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28001D5B8, &qword_26577A700) + 48);
      *v26 = &type metadata for Alert.CoordinationState;
      sub_265779FEC();
      sub_265779F6C();
      (*(*(v24 - 8) + 104))(v26, *MEMORY[0x277D84160], v24);
      swift_willThrow();
      (*(v35 + 8))(v14, v11);
      swift_unknownObjectRelease();
    }

    else
    {
      v41 = v22;
      if (v22)
      {
        v42 = 1;
        sub_265772680();
        sub_265779FDC();
        v23 = v35;
        (*(v32 + 8))(v6, v18);
      }

      else
      {
        v42 = 0;
        sub_2657726D4();
        sub_265779FDC();
        v23 = v35;
        (*(v31 + 8))(v10, v30);
      }

      (*(v23 + 8))(v14, v11);
      swift_unknownObjectRelease();
      *v19 = v41 & 1;
    }

    v17 = v36;
  }

  return __swift_destroy_boxed_opaque_existential_1(v17);
}

uint64_t sub_265772C2C()
{
  if (*v0)
  {
    return 0x64656E696C636564;
  }

  else
  {
    return 0x74754F64656D6974;
  }
}

uint64_t sub_265772C60@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x74754F64656D6974 && a2 == 0xE800000000000000;
  if (v6 || (sub_26577A0BC() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x64656E696C636564 && a2 == 0xE800000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_26577A0BC();

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

uint64_t sub_265772D3C(uint64_t a1)
{
  v2 = sub_265773154();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_265772D78(uint64_t a1)
{
  v2 = sub_265773154();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_265772DB4(uint64_t a1)
{
  v2 = sub_2657731A8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_265772DF0(uint64_t a1)
{
  v2 = sub_2657731A8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_265772E2C(uint64_t a1)
{
  v2 = sub_2657731FC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_265772E68(uint64_t a1)
{
  v2 = sub_2657731FC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t Alert.FailureReason.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28001D738, &qword_26577AE08);
  v23 = *(v3 - 8);
  v24 = v3;
  v4 = *(v23 + 64);
  MEMORY[0x28223BE20](v3);
  v22 = &v20 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28001D740, &qword_26577AE10);
  v20 = *(v6 - 8);
  v21 = v6;
  v7 = *(v20 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v20 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28001D748, &qword_26577AE18);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v20 - v13;
  v15 = *v1;
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_265773154();
  sub_26577A12C();
  v17 = (v11 + 8);
  if (v15)
  {
    v26 = 1;
    sub_2657731A8();
    v18 = v22;
    sub_26577A05C();
    (*(v23 + 8))(v18, v24);
  }

  else
  {
    v25 = 0;
    sub_2657731FC();
    sub_26577A05C();
    (*(v20 + 8))(v9, v21);
  }

  return (*v17)(v14, v10);
}

unint64_t sub_265773154()
{
  result = qword_28001D750;
  if (!qword_28001D750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28001D750);
  }

  return result;
}

unint64_t sub_2657731A8()
{
  result = qword_28001D758;
  if (!qword_28001D758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28001D758);
  }

  return result;
}

unint64_t sub_2657731FC()
{
  result = qword_28001D760;
  if (!qword_28001D760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28001D760);
  }

  return result;
}

uint64_t Alert.FailureReason.init(from:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v34 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28001D768, &qword_26577AE20);
  v32 = *(v3 - 8);
  v33 = v3;
  v4 = *(v32 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v29 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28001D770, &qword_26577AE28);
  v31 = *(v7 - 8);
  v8 = *(v31 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v29 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28001D778, &qword_26577AE30);
  v35 = *(v11 - 8);
  v12 = *(v35 + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v29 - v13;
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_265773154();
  v16 = v36;
  sub_26577A11C();
  if (v16)
  {
    v17 = a1;
  }

  else
  {
    v30 = v7;
    v36 = a1;
    v18 = v33;
    v19 = v34;
    v20 = sub_26577A04C();
    v21 = (2 * *(v20 + 16)) | 1;
    v37 = v20;
    v38 = v20 + 32;
    v39 = 0;
    v40 = v21;
    v22 = sub_26576925C();
    if (v22 == 2 || v39 != v40 >> 1)
    {
      v24 = sub_265779F7C();
      swift_allocError();
      v26 = v25;
      v27 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28001D5B8, &qword_26577A700) + 48);
      *v26 = &type metadata for Alert.FailureReason;
      sub_265779FEC();
      sub_265779F6C();
      (*(*(v24 - 8) + 104))(v26, *MEMORY[0x277D84160], v24);
      swift_willThrow();
      (*(v35 + 8))(v14, v11);
      swift_unknownObjectRelease();
    }

    else
    {
      v41 = v22;
      if (v22)
      {
        v42 = 1;
        sub_2657731A8();
        sub_265779FDC();
        v23 = v35;
        (*(v32 + 8))(v6, v18);
      }

      else
      {
        v42 = 0;
        sub_2657731FC();
        sub_265779FDC();
        v23 = v35;
        (*(v31 + 8))(v10, v30);
      }

      (*(v23 + 8))(v14, v11);
      swift_unknownObjectRelease();
      *v19 = v41 & 1;
    }

    v17 = v36;
  }

  return __swift_destroy_boxed_opaque_existential_1(v17);
}

uint64_t sub_265773770()
{
  v1 = 0x64656C696166;
  if (*v0 != 1)
  {
    v1 = 0x6579616C70736964;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x616E6964726F6F63;
  }
}

uint64_t sub_2657737D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_265778624(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2657737FC(uint64_t a1)
{
  v2 = sub_265776470();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_265773838(uint64_t a1)
{
  v2 = sub_265776470();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_265773874(uint64_t a1)
{
  v2 = sub_2657765C0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2657738B0(uint64_t a1)
{
  v2 = sub_2657765C0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2657738EC(uint64_t a1)
{
  v2 = sub_2657764C4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_265773928(uint64_t a1)
{
  v2 = sub_2657764C4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_265773964(uint64_t a1)
{
  v2 = sub_265776518();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2657739A0(uint64_t a1)
{
  v2 = sub_265776518();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t Alert.AlertState.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28001D780, &qword_26577AE38);
  v31 = *(v4 - 8);
  v32 = v4;
  v5 = *(v31 + 64);
  MEMORY[0x28223BE20](v4);
  v28 = &v27 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28001D788, &qword_26577AE40);
  v29 = *(v7 - 8);
  v30 = v7;
  v8 = *(v29 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v27 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28001D790, &qword_26577AE48);
  v27 = *(v11 - 8);
  v12 = *(v27 + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v27 - v13;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28001D798, &qword_26577AE50);
  v15 = *(v33 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v33);
  v18 = &v27 - v17;
  v19 = *v2;
  v20 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_265776470();
  sub_26577A12C();
  if (v19 >> 6)
  {
    if (v19 >> 6 == 1)
    {
      v37 = 1;
      sub_265776518();
      v21 = v33;
      sub_26577A05C();
      v36 = v19 & 1;
      sub_26577656C();
      v22 = v30;
      sub_26577A09C();
      (*(v29 + 8))(v10, v22);
      return (*(v15 + 8))(v18, v21);
    }

    else
    {
      v38 = 2;
      sub_2657764C4();
      v25 = v28;
      v26 = v33;
      sub_26577A05C();
      (*(v31 + 8))(v25, v32);
      return (*(v15 + 8))(v18, v26);
    }
  }

  else
  {
    v35 = 0;
    sub_2657765C0();
    v24 = v33;
    sub_26577A05C();
    v34 = v19 & 1;
    sub_265776614();
    sub_26577A09C();
    (*(v27 + 8))(v14, v11);
    return (*(v15 + 8))(v18, v24);
  }
}

uint64_t Alert.AlertState.hash(into:)()
{
  v1 = *v0;
  v2 = v1 >> 6;
  if (!(v1 >> 6) || v2 == 1)
  {
    MEMORY[0x26675E1F0]();
    v2 = v1 & 1;
  }

  return MEMORY[0x26675E1F0](v2);
}

uint64_t Alert.AlertState.hashValue.getter()
{
  v1 = *v0;
  sub_26577A0DC();
  v2 = v1 >> 6;
  if (!(v1 >> 6) || v2 == 1)
  {
    MEMORY[0x26675E1F0]();
    v2 = v1 & 1;
  }

  MEMORY[0x26675E1F0](v2);
  return sub_26577A10C();
}

uint64_t Alert.AlertState.init(from:)@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v47 = a2;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28001D7D0, &qword_26577AE58);
  v46 = *(v43 - 8);
  v3 = *(v46 + 64);
  MEMORY[0x28223BE20](v43);
  v45 = &v40 - v4;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28001D7D8, &qword_26577AE60);
  v44 = *(v41 - 8);
  v5 = *(v44 + 64);
  MEMORY[0x28223BE20](v41);
  v7 = &v40 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28001D7E0, &qword_26577AE68);
  v42 = *(v8 - 8);
  v9 = *(v42 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v40 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28001D7E8, &qword_26577AE70);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v40 - v15;
  v17 = a1[3];
  v18 = a1[4];
  v49 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v17);
  sub_265776470();
  v19 = v48;
  sub_26577A11C();
  if (!v19)
  {
    v21 = v45;
    v20 = v46;
    v40 = 0;
    v48 = v13;
    v22 = v47;
    v23 = sub_26577A04C();
    v24 = (2 * *(v23 + 16)) | 1;
    v50 = v23;
    v51 = v23 + 32;
    v52 = 0;
    v53 = v24;
    v25 = sub_265768924();
    if (v25 == 3 || v52 != v53 >> 1)
    {
      v30 = sub_265779F7C();
      swift_allocError();
      v31 = v12;
      v33 = v32;
      v34 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28001D5B8, &qword_26577A700) + 48);
      *v33 = &type metadata for Alert.AlertState;
      sub_265779FEC();
      sub_265779F6C();
      (*(*(v30 - 8) + 104))(v33, *MEMORY[0x277D84160], v30);
      swift_willThrow();
      (*(v48 + 8))(v16, v31);
    }

    else
    {
      if (v25)
      {
        if (v25 == 1)
        {
          v54 = 1;
          sub_265776518();
          v26 = v7;
          v27 = v40;
          sub_265779FDC();
          v28 = v48;
          if (!v27)
          {
            sub_265776668();
            v29 = v41;
            sub_26577A03C();
            (*(v44 + 8))(v26, v29);
            (*(v28 + 8))(v16, v12);
            swift_unknownObjectRelease();
            v39 = v54 | 0x40;
LABEL_18:
            *v22 = v39;
            return __swift_destroy_boxed_opaque_existential_1(v49);
          }
        }

        else
        {
          v54 = 2;
          sub_2657764C4();
          v37 = v40;
          sub_265779FDC();
          v38 = v48;
          if (!v37)
          {
            (*(v20 + 8))(v21, v43);
            (*(v38 + 8))(v16, v12);
            swift_unknownObjectRelease();
            v39 = 0x80;
            goto LABEL_18;
          }
        }
      }

      else
      {
        v54 = 0;
        sub_2657765C0();
        v36 = v40;
        sub_265779FDC();
        if (!v36)
        {
          sub_2657766BC();
          sub_26577A03C();
          (*(v42 + 8))(v11, v8);
          (*(v48 + 8))(v16, v12);
          swift_unknownObjectRelease();
          *v22 = v54;
          return __swift_destroy_boxed_opaque_existential_1(v49);
        }
      }

      (*(v48 + 8))(v16, v12);
    }

    swift_unknownObjectRelease();
  }

  return __swift_destroy_boxed_opaque_existential_1(v49);
}

uint64_t sub_265774538()
{
  v1 = *v0;
  sub_26577A0DC();
  v2 = v1 >> 6;
  if (!(v1 >> 6) || v2 == 1)
  {
    MEMORY[0x26675E1F0]();
    v2 = v1 & 1;
  }

  MEMORY[0x26675E1F0](v2);
  return sub_26577A10C();
}

uint64_t sub_26577459C()
{
  v1 = *v0;
  v2 = v1 >> 6;
  if (!(v1 >> 6) || v2 == 1)
  {
    MEMORY[0x26675E1F0]();
    v2 = v1 & 1;
  }

  return MEMORY[0x26675E1F0](v2);
}

uint64_t sub_2657745E4()
{
  v1 = *v0;
  sub_26577A0DC();
  v2 = v1 >> 6;
  if (!(v1 >> 6) || v2 == 1)
  {
    MEMORY[0x26675E1F0]();
    v2 = v1 & 1;
  }

  MEMORY[0x26675E1F0](v2);
  return sub_26577A10C();
}

uint64_t Alert.HistoryItem.requestingDeviceID.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);

  return v1;
}

uint64_t Alert.HistoryItem.requestedDeviceID.getter()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);

  return v1;
}

uint64_t Alert.HistoryItem.date.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Alert.HistoryItem(0) + 32);
  v4 = sub_265779C1C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

unint64_t sub_265774740()
{
  v1 = *v0;
  v2 = 0x746973736563656ELL;
  v3 = 0x6574617473;
  if (v1 != 3)
  {
    v3 = 1702125924;
  }

  if (v1 == 2)
  {
    v3 = 0xD000000000000011;
  }

  if (*v0)
  {
    v2 = 0xD000000000000012;
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

uint64_t sub_2657747D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_265778744(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_265774808(uint64_t a1)
{
  v2 = sub_265776800();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_265774844(uint64_t a1)
{
  v2 = sub_265776800();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t Alert.HistoryItem.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28001D800, &qword_26577AE78);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v17[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_265776800();
  sub_26577A12C();
  v17[15] = *v3;
  v17[14] = 0;
  sub_265776854();
  sub_26577A09C();
  if (!v2)
  {
    v11 = *(v3 + 8);
    v12 = *(v3 + 16);
    v17[13] = 1;
    sub_26577A06C();
    v13 = *(v3 + 24);
    v14 = *(v3 + 32);
    v17[12] = 2;
    sub_26577A06C();
    v17[11] = *(v3 + 40);
    v17[10] = 3;
    sub_2657768A8();
    sub_26577A09C();
    v15 = *(type metadata accessor for Alert.HistoryItem(0) + 32);
    v17[9] = 4;
    sub_265779C1C();
    sub_265762188(&qword_28001D820, MEMORY[0x277CC9578]);
    sub_26577A09C();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t Alert.HistoryItem.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v28 = a2;
  v4 = sub_265779C1C();
  v26 = *(v4 - 8);
  v5 = *(v26 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28001D828, &qword_26577AE80);
  v27 = *(v29 - 8);
  v8 = *(v27 + 64);
  MEMORY[0x28223BE20](v29);
  v10 = v24 - v9;
  v11 = type metadata accessor for Alert.HistoryItem(0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11);
  v14 = v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a1[3];
  v16 = a1[4];
  v30 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v15);
  sub_265776800();
  sub_26577A11C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(v30);
  }

  v25 = v7;
  v17 = v14;
  v19 = v27;
  v18 = v28;
  v36 = 0;
  sub_2657768FC();
  v20 = v29;
  sub_26577A03C();
  *v17 = v37;
  v35 = 1;
  *(v17 + 8) = sub_26577A01C();
  *(v17 + 16) = v21;
  v24[1] = v21;
  v34 = 2;
  *(v17 + 24) = sub_26577A01C();
  *(v17 + 32) = v22;
  v32 = 3;
  sub_265776950();
  v24[0] = 0;
  sub_26577A03C();
  *(v17 + 40) = v33;
  v31 = 4;
  sub_265762188(&qword_28001D840, MEMORY[0x277CC9578]);
  sub_26577A03C();
  (*(v19 + 8))(v10, v20);
  (*(v26 + 32))(v17 + *(v11 + 32), v25, v4);
  sub_265762204(v17, v18, type metadata accessor for Alert.HistoryItem);
  __swift_destroy_boxed_opaque_existential_1(v30);
  return sub_265776E00(v17, type metadata accessor for Alert.HistoryItem);
}

uint64_t Alert.identifier.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t Alert.creationDate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Alert(0) + 20);
  v4 = sub_265779C1C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t Alert.dismissDate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Alert(0) + 24);
  v4 = sub_265779C1C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t Alert.dismissOption.getter@<X0>(uint64_t a1@<X8>)
{
  result = type metadata accessor for Alert(0);
  v4 = (v1 + *(result + 28));
  v5 = *v4;
  LOBYTE(v4) = *(v4 + 8);
  *a1 = v5;
  *(a1 + 8) = v4;
  return result;
}

uint64_t Alert.payload.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2 + *(type metadata accessor for Alert(0) + 36);
  result = sub_265764C28(*v5, *(v5 + 8));
  *v5 = a1;
  *(v5 + 8) = a2;
  return result;
}

uint64_t Alert.history.getter()
{
  v1 = *(v0 + *(type metadata accessor for Alert(0) + 40));
}

uint64_t Alert.history.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Alert(0) + 40);
  v4 = *(v1 + v3);

  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_265775238(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Alert.HistoryItem(0);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v11 = &v23 - v10;
  v12 = *(a1 + 16);
  if (v12 == *(a2 + 16))
  {
    if (v12 && a1 != a2)
    {
      v13 = (*(v9 + 80) + 32) & ~*(v9 + 80);
      v14 = a1 + v13;
      v15 = a2 + v13;
      v16 = *(v9 + 72);
      while (1)
      {
        sub_265762204(v14, v11, type metadata accessor for Alert.HistoryItem);
        sub_265762204(v15, v8, type metadata accessor for Alert.HistoryItem);
        if (*v11 != *v8 || (*(v11 + 1) == *(v8 + 1) ? (v17 = *(v11 + 2) == *(v8 + 2)) : (v17 = 0), !v17 && (sub_26577A0BC() & 1) == 0 || (*(v11 + 3) != *(v8 + 3) || *(v11 + 4) != *(v8 + 4)) && (sub_26577A0BC() & 1) == 0))
        {
LABEL_26:
          sub_265776E00(v8, type metadata accessor for Alert.HistoryItem);
          sub_265776E00(v11, type metadata accessor for Alert.HistoryItem);
          goto LABEL_27;
        }

        v18 = v11[40];
        v19 = v8[40];
        if (!(v18 >> 6))
        {
          break;
        }

        if (v18 >> 6 == 1)
        {
          if ((v19 & 0xC0) != 0x40)
          {
            goto LABEL_26;
          }

          goto LABEL_19;
        }

        if (v19 != 128)
        {
          goto LABEL_26;
        }

LABEL_22:
        v20 = *(v4 + 32);
        v21 = sub_265779BEC();
        sub_265776E00(v8, type metadata accessor for Alert.HistoryItem);
        sub_265776E00(v11, type metadata accessor for Alert.HistoryItem);
        if (v21)
        {
          v15 += v16;
          v14 += v16;
          if (--v12)
          {
            continue;
          }
        }

        return v21 & 1;
      }

      if (v19 > 0x3F)
      {
        goto LABEL_26;
      }

LABEL_19:
      if ((v19 ^ v18))
      {
        goto LABEL_26;
      }

      goto LABEL_22;
    }

    v21 = 1;
  }

  else
  {
LABEL_27:
    v21 = 0;
  }

  return v21 & 1;
}

uint64_t sub_2657754CC()
{
  v1 = *v0;
  v2 = 0x696669746E656469;
  v3 = 0x64616F6C796170;
  if (v1 != 5)
  {
    v3 = 0x79726F74736968;
  }

  v4 = 0x4F7373696D736964;
  if (v1 != 3)
  {
    v4 = 0xD000000000000012;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0x6E6F697461657263;
  if (v1 != 1)
  {
    v5 = 0x447373696D736964;
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

uint64_t sub_2657755CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_265778904(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_265775600(uint64_t a1)
{
  v2 = sub_265776D04();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26577563C(uint64_t a1)
{
  v2 = sub_265776D04();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t Alert.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v42 = a2;
  v3 = sub_265779C1C();
  v4 = *(v3 - 8);
  v43 = v3;
  v44 = v4;
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v3);
  v8 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v38 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28001D848, &qword_26577AE88);
  v45 = *(v11 - 8);
  v12 = *(v45 + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v38 - v13;
  v15 = type metadata accessor for Alert(0);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15);
  v18 = (&v38 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = a1[3];
  v20 = a1[4];
  v47 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v19);
  sub_265776D04();
  v21 = v46;
  sub_26577A11C();
  if (v21)
  {
    return __swift_destroy_boxed_opaque_existential_1(v47);
  }

  v41 = v8;
  v22 = v45;
  v46 = v15;
  LOBYTE(v48) = 0;
  v23 = v14;
  v25 = v18;
  *v18 = sub_26577A01C();
  v18[1] = v26;
  LOBYTE(v48) = 1;
  sub_265762188(&qword_28001D840, MEMORY[0x277CC9578]);
  v27 = v10;
  v28 = v43;
  sub_26577A03C();
  v29 = v46[5];
  v39 = *(v44 + 32);
  v40 = v25;
  v39(v25 + v29, v27, v28);
  LOBYTE(v48) = 2;
  v30 = v41;
  sub_26577A03C();
  v39((v40 + v46[6]), v30, v28);
  v49 = 3;
  sub_265776D58();
  sub_26577A00C();
  v31 = v22;
  if (BYTE9(v48))
  {
    v32 = 0;
    v33 = 0x4018000000000000;
  }

  else
  {
    v33 = v48;
    v32 = BYTE8(v48);
  }

  v34 = v42;
  v35 = v46;
  v36 = v40;
  v37 = v40 + v46[7];
  *v37 = v33;
  *(v37 + 8) = v32 & 1;
  LOBYTE(v48) = 4;
  *(v36 + v35[8]) = sub_265779FFC() & 1;
  v49 = 5;
  sub_265776DAC();
  sub_26577A03C();
  *(v36 + v35[9]) = v48;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28001D868, &qword_26577AE90);
  v49 = 6;
  sub_265776F08(&qword_28001D870, &qword_28001D878);
  sub_26577A03C();
  (*(v31 + 8))(v23, v11);
  *(v36 + v35[10]) = v48;
  sub_265762204(v36, v34, type metadata accessor for Alert);
  __swift_destroy_boxed_opaque_existential_1(v47);
  return sub_265776E00(v36, type metadata accessor for Alert);
}

uint64_t Alert.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28001D880, &qword_26577AE98);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v22 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_265776D04();
  sub_26577A12C();
  v11 = *v3;
  v12 = v3[1];
  LOBYTE(v22) = 0;
  sub_26577A06C();
  if (!v2)
  {
    v13 = type metadata accessor for Alert(0);
    v14 = v13[5];
    LOBYTE(v22) = 1;
    sub_265779C1C();
    sub_265762188(&qword_28001D820, MEMORY[0x277CC9578]);
    sub_26577A09C();
    v15 = v13[6];
    LOBYTE(v22) = 2;
    sub_26577A09C();
    v16 = v3 + v13[7];
    v17 = *v16;
    LOBYTE(v16) = v16[8];
    v22 = v17;
    LOBYTE(v23) = v16;
    v24 = 3;
    sub_265776E60();
    sub_26577A09C();
    v18 = *(v3 + v13[8]);
    LOBYTE(v22) = 4;
    sub_26577A07C();
    v19 = (v3 + v13[9]);
    v20 = v19[1];
    v22 = *v19;
    v23 = v20;
    v24 = 5;
    sub_265760088(v22, v20);
    sub_265776EB4();
    sub_26577A09C();
    sub_265764C28(v22, v23);
    v22 = *(v3 + v13[10]);
    v24 = 6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28001D868, &qword_26577AE90);
    sub_265776F08(&qword_28001D898, &qword_28001D8A0);
    sub_26577A09C();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_265776058@<X0>(uint64_t result@<X0>, uint64_t a2@<X2>, unint64_t a3@<X3>, BOOL *a4@<X8>)
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
    v10 = sub_265779B7C();
    if (v10)
    {
      v11 = sub_265779B9C();
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
      result = sub_265779B8C();
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
  v10 = sub_265779B7C();
  if (!v10)
  {
    goto LABEL_21;
  }

  v18 = sub_265779B9C();
  if (__OFSUB__(v15, v18))
  {
LABEL_34:
    __break(1u);
  }

  v10 += v15 - v18;
LABEL_21:
  result = sub_265779B8C();
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

uint64_t sub_265776288(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
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
    v10 = sub_2657769A4(v8, v9, a2 & 0x3FFFFFFFFFFFFFFFLL, a3, a4);
    sub_265764C28(a3, a4);
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
  sub_265776058(v14, a3, a4, &v13);
  v10 = v4;
  sub_265764C28(a3, a4);
  if (!v4)
  {
    v10 = v13;
  }

LABEL_11:
  v11 = *MEMORY[0x277D85DE8];
  return v10 & 1;
}

uint64_t _s12SessionAlert0B0V0B5StateO2eeoiySbAE_AEtFZ_0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v2 >> 6)
  {
    if (v2 >> 6 == 1)
    {
      if ((v3 & 0xC0) != 0x40)
      {
        return 0;
      }

      return ((v3 ^ v2) & 1) == 0;
    }

    if (v3 == 128)
    {
      return 1;
    }
  }

  else if (v3 < 0x40)
  {
    return ((v3 ^ v2) & 1) == 0;
  }

  return 0;
}

unint64_t sub_265776470()
{
  result = qword_28001D7A0;
  if (!qword_28001D7A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28001D7A0);
  }

  return result;
}

unint64_t sub_2657764C4()
{
  result = qword_28001D7A8;
  if (!qword_28001D7A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28001D7A8);
  }

  return result;
}

unint64_t sub_265776518()
{
  result = qword_28001D7B0;
  if (!qword_28001D7B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28001D7B0);
  }

  return result;
}

unint64_t sub_26577656C()
{
  result = qword_28001D7B8;
  if (!qword_28001D7B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28001D7B8);
  }

  return result;
}

unint64_t sub_2657765C0()
{
  result = qword_28001D7C0;
  if (!qword_28001D7C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28001D7C0);
  }

  return result;
}

unint64_t sub_265776614()
{
  result = qword_28001D7C8;
  if (!qword_28001D7C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28001D7C8);
  }

  return result;
}

unint64_t sub_265776668()
{
  result = qword_28001D7F0;
  if (!qword_28001D7F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28001D7F0);
  }

  return result;
}

unint64_t sub_2657766BC()
{
  result = qword_28001D7F8;
  if (!qword_28001D7F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28001D7F8);
  }

  return result;
}

uint64_t _s12SessionAlert0B0V11HistoryItemV2eeoiySbAE_AEtFZ_0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v5 = *(a1 + 1) == *(a2 + 1) && *(a1 + 2) == *(a2 + 2);
  if (!v5 && (sub_26577A0BC() & 1) == 0)
  {
    return 0;
  }

  v6 = *(a1 + 3) == *(a2 + 3) && *(a1 + 4) == *(a2 + 4);
  if (!v6 && (sub_26577A0BC() & 1) == 0)
  {
    return 0;
  }

  v7 = a1[40];
  v8 = a2[40];
  if (v7 >> 6)
  {
    if (v7 >> 6 == 1)
    {
      if ((v8 & 0xC0) != 0x40)
      {
        return 0;
      }

      goto LABEL_18;
    }

    if (v8 == 128)
    {
      goto LABEL_21;
    }

    return 0;
  }

  if (v8 > 0x3F)
  {
    return 0;
  }

LABEL_18:
  if ((v8 ^ v7))
  {
    return 0;
  }

LABEL_21:
  v9 = *(type metadata accessor for Alert.HistoryItem(0) + 32);

  return sub_265779BEC();
}

unint64_t sub_265776800()
{
  result = qword_28001D808;
  if (!qword_28001D808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28001D808);
  }

  return result;
}

unint64_t sub_265776854()
{
  result = qword_28001D810;
  if (!qword_28001D810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28001D810);
  }

  return result;
}

unint64_t sub_2657768A8()
{
  result = qword_28001D818;
  if (!qword_28001D818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28001D818);
  }

  return result;
}

unint64_t sub_2657768FC()
{
  result = qword_28001D830;
  if (!qword_28001D830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28001D830);
  }

  return result;
}

unint64_t sub_265776950()
{
  result = qword_28001D838;
  if (!qword_28001D838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28001D838);
  }

  return result;
}

uint64_t sub_2657769A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  result = sub_265779B7C();
  v11 = result;
  if (result)
  {
    result = sub_265779B9C();
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

  sub_265779B8C();
  sub_265776058(v11, a4, a5, &v13);
  if (!v5)
  {
    return v13;
  }

  return v12;
}