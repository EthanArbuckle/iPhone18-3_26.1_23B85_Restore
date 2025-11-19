uint64_t sub_26A6D7460@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, unint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v44 = a2;
  v50 = a7;
  v47 = sub_26A84F088();
  v45 = *(v47 - 8);
  v12 = *(v45 + 64);
  MEMORY[0x28223BE20](v47);
  v13 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803AB110);
  type metadata accessor for CGRect();
  v51 = a6;
  v52 = a5;
  type metadata accessor for HorizontalListView.HorizontalListHeightPreferences();
  swift_getWitnessTable();
  v14 = a3;
  v43 = sub_26A84FEE8();
  v15 = sub_26A84F4F8();
  v16 = sub_26A4EEF40();
  v58 = v13;
  v59 = MEMORY[0x277D83B88];
  v60 = v15;
  v61 = v16;
  v48 = v16;
  v62 = MEMORY[0x277D83B98];
  v17 = sub_26A851328();
  v46 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v19 = v39 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v49 = v39 - v21;
  v22 = a1;
  result = sub_26A851B38();
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v56 = 0;
    v57 = result;
    KeyPath = swift_getKeyPath();
    v42 = v17;
    v40 = v19;
    v24 = v45;
    v25 = v47;
    (*(v45 + 16))(v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v44, v47);
    v26 = (*(v24 + 80) + 88) & ~*(v24 + 80);
    v27 = swift_allocObject();
    *(v27 + 16) = v14;
    *(v27 + 24) = a4;
    v44 = v13;
    v28 = v52;
    v39[1] = v15;
    v29 = a4;
    v30 = v51;
    *(v27 + 32) = v52;
    *(v27 + 40) = v30;
    v31 = *(v22 + 16);
    *(v27 + 48) = *v22;
    *(v27 + 64) = v31;
    *(v27 + 80) = *(v22 + 32);
    (*(v24 + 32))(v27 + v26, v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v25);
    v58 = v14;
    v59 = v29;
    v60 = v28;
    v61 = v30;
    v32 = type metadata accessor for HorizontalListView();
    (*(*(v32 - 8) + 16))(&v58, v22, v32);
    WitnessTable = swift_getWitnessTable();
    v54 = v28;
    v55 = WitnessTable;
    v38 = swift_getWitnessTable();
    v34 = v40;
    sub_26A8512F8();
    v53 = v38;
    v35 = v42;
    swift_getWitnessTable();
    v36 = v49;
    sub_26A80757C(v34);
    v37 = *(v46 + 8);
    v37(v34, v35);
    sub_26A80757C(v36);
    return (v37)(v36, v35);
  }

  return result;
}

uint64_t sub_26A6D78CC@<X0>(uint64_t a1@<X0>, void (**a2)(char *)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v43 = a6;
  v44 = a1;
  v50 = a3;
  v51 = a8;
  v48 = sub_26A84F088();
  v13 = *(v48 - 8);
  v47 = *(v13 + 64);
  MEMORY[0x28223BE20](v48);
  v45 = v38 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = *(a5 - 8);
  MEMORY[0x28223BE20](v15);
  v17 = v38 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = *(a4 - 8);
  MEMORY[0x28223BE20](v18);
  v38[0] = v38 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for CGRect();
  v39 = a4;
  v40 = v20;
  v54 = a4;
  v55 = a5;
  v56 = a6;
  v57 = a7;
  type metadata accessor for HorizontalListView.HorizontalListHeightPreferences();
  v38[1] = swift_getWitnessTable();
  v42 = sub_26A84FEE8();
  v21 = sub_26A84F4F8();
  v46 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v23 = v38 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v26 = v38 - v25;
  v27 = *a2;
  sub_26A851B68();
  v27(v17);
  (*(v41 + 8))(v17, a5);
  sub_26A851098();
  v28 = v45;
  v29 = v48;
  (*(v13 + 16))(v45, v50, v48);
  v30 = (*(v13 + 80) + 16) & ~*(v13 + 80);
  v31 = swift_allocObject();
  (*(v13 + 32))(v31 + v30, v28, v29);
  v32 = v39;
  v33 = v43;
  v34 = v38[0];
  sub_26A850AC8();

  (*(v49 + 8))(v34, v32);
  WitnessTable = swift_getWitnessTable();
  v52 = v33;
  v53 = WitnessTable;
  swift_getWitnessTable();
  sub_26A80757C(v23);
  v36 = *(v46 + 8);
  v36(v23, v21);
  sub_26A80757C(v26);
  return (v36)(v26, v21);
}

double sub_26A6D7D5C@<D0>(double *a1@<X8>)
{
  type metadata accessor for CGRect();
  sub_26A84F098();
  result = v3;
  *a1 = v3;
  return result;
}

uint64_t sub_26A6D7DB4()
{
  sub_26A84FE58();
  sub_26A6D8150();
  return sub_26A852768();
}

uint64_t sub_26A6D7E04(double *a1, __int128 *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = *a1;
  v8 = a2[1];
  v17 = *a2;
  v18 = v8;
  v19 = *(a2 + 4);
  v9 = a2[1];
  v14 = *a2;
  v15 = v9;
  v16 = *(a2 + 4);
  v13[0] = a3;
  v13[1] = a4;
  v13[2] = a5;
  v13[3] = a6;
  v10 = type metadata accessor for HorizontalListView();
  (*(*(v10 - 8) + 16))(v13, a2, v10);
  v11 = sub_26A6D63B0();
  sub_26A6D7F10(v11, v7);
  sub_26A6D6408();
}

double sub_26A6D7F10(double a1, double a2)
{
  if (vabdd_f64(a1, a2) < 0.01)
  {
    return a1;
  }

  if (a1 > a2)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (v2 != a1)
  {
    sub_26A851E88();
    sub_26A7C30BC();
  }

  return v2;
}

uint64_t sub_26A6D7FA8()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t objectdestroyTm_22()
{

  return swift_deallocObject();
}

unint64_t sub_26A6D8150()
{
  result = qword_2803B0540;
  if (!qword_2803B0540)
  {
    sub_26A84FE58();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B0540);
  }

  return result;
}

uint64_t sub_26A6D81A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(v2 + 16);
  v6 = *(v2 + 24);
  v7 = *(v2 + 32);
  v8 = *(v2 + 40);
  v9 = *(sub_26A84F088() - 8);
  v10 = v2 + ((*(v9 + 80) + 88) & ~*(v9 + 80));

  return sub_26A6D78CC(a1, (v2 + 48), v10, v5, v6, v7, v8, a2);
}

double sub_26A6D8254@<D0>(double *a1@<X8>)
{
  sub_26A84F088();

  return sub_26A6D7D5C(a1);
}

uint64_t OUTLINED_FUNCTION_6_48()
{

  return swift_getWitnessTable();
}

uint64_t OUTLINED_FUNCTION_7_53()
{

  return swift_getWitnessTable();
}

uint64_t sub_26A6D83B8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DataPasteboardItem(0);
  MEMORY[0x28223BE20](v4 - 8);
  OUTLINED_FUNCTION_3_15();
  v68 = v5;
  OUTLINED_FUNCTION_25_2();
  v71 = sub_26A84EA68();
  OUTLINED_FUNCTION_15();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_3_15();
  v70 = v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B41D8);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = (&v64 - v11);
  v74 = type metadata accessor for PasteboardUtility.PasteboardItem(0);
  OUTLINED_FUNCTION_46();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_6_0();
  v76 = v14 - v15;
  MEMORY[0x28223BE20](v16);
  v75 = &v64 - v17;
  OUTLINED_FUNCTION_25_2();
  v18 = sub_26A852068();
  OUTLINED_FUNCTION_15();
  v20 = v19;
  MEMORY[0x28223BE20](v21);
  v23 = &v64 - v22;
  v24 = *(a2 - 8);
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_6_0();
  v28 = v26 - v27;
  v30 = MEMORY[0x28223BE20](v29);
  v32 = &v64 - v31;
  (*(v20 + 16))(v23, a1, v18, v30);
  if (__swift_getEnumTagSinglePayload(v23, 1, a2) == 1)
  {
    v33 = OUTLINED_FUNCTION_112();
    v34(v33);
    return MEMORY[0x277D84F90];
  }

  else
  {
    (*(v24 + 32))(v32, v23, a2);
    v36 = *(v24 + 16);
    v36(v28, v32, a2);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B41E0);
    if (swift_dynamicCast())
    {
      v37 = v77[0];
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B41E8);
      v38 = swift_allocObject();
      *(v38 + 16) = xmmword_26A8570D0;
      *(v38 + 56) = a2;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v38 + 32));
      v36(boxed_opaque_existential_1, v32, a2);
      v37 = v38;
    }

    v40 = v74;
    v65 = v32;
    v66 = v24;
    v67 = a2;
    v41 = *(v37 + 16);
    if (v41)
    {
      v64 = v37;
      v42 = v37 + 32;
      v35 = MEMORY[0x277D84F90];
      v69 = v7 + 8;
      v72 = xmmword_26A8570D0;
      v73 = v12;
      do
      {
        sub_26A5136A0(v42, v77);
        sub_26A6D9EC0(v77, v12);
        if (__swift_getEnumTagSinglePayload(v12, 1, v40) == 1)
        {
          __swift_destroy_boxed_opaque_existential_1(v77);
          sub_26A4DBD10(v12, &qword_2803B41D8);
        }

        else
        {
          v43 = v75;
          sub_26A6DA5B4(v12, v75, type metadata accessor for PasteboardUtility.PasteboardItem);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B41F0);
          v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B41F8);
          v45 = (*(*(v44 - 8) + 80) + 32) & ~*(*(v44 - 8) + 80);
          v46 = swift_allocObject();
          *(v46 + 16) = v72;
          v47 = (v46 + v45);
          sub_26A6D9C04(v43, v76);
          switch(swift_getEnumCaseMultiPayload())
          {
            case 1u:
              OUTLINED_FUNCTION_9_45();
              sub_26A84EA38();
              goto LABEL_17;
            case 2u:
              OUTLINED_FUNCTION_9_45();
              sub_26A84EA48();
LABEL_17:
              sub_26A84EA08();
              v54 = OUTLINED_FUNCTION_6_49();
              v55(v54);
              OUTLINED_FUNCTION_4_60();
              v50 = v76;
              goto LABEL_18;
            case 3u:
              sub_26A6D9C68(v76, type metadata accessor for PasteboardUtility.PasteboardItem);
              OUTLINED_FUNCTION_9_45();
              sub_26A84EA28();
              goto LABEL_15;
            case 4u:
              v48 = v68;
              sub_26A6DA5B4(v76, v68, type metadata accessor for DataPasteboardItem);
              v12 = sub_26A84EA08();
              v40 = v49;
              v50 = v48;
              v51 = type metadata accessor for DataPasteboardItem;
LABEL_18:
              sub_26A6D9C68(v50, v51);
              break;
            default:
              sub_26A6D9C68(v76, type metadata accessor for PasteboardUtility.PasteboardItem);
              OUTLINED_FUNCTION_9_45();
              sub_26A84EA58();
LABEL_15:
              sub_26A84EA08();
              v52 = OUTLINED_FUNCTION_6_49();
              v53(v52);
              break;
          }

          v56 = *(v44 + 48);
          *v47 = v12;
          v47[1] = v40;
          v57 = v75;
          sub_26A6D9C04(v75, v47 + v56);
          v40 = v74;
          v58 = sub_26A8516A8();
          OUTLINED_FUNCTION_4_60();
          sub_26A6D9C68(v57, v59);
          __swift_destroy_boxed_opaque_existential_1(v77);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_26A7A2148();
            v35 = v61;
          }

          v12 = v73;
          v60 = *(v35 + 16);
          if (v60 >= *(v35 + 24) >> 1)
          {
            sub_26A7A2148();
            v35 = v62;
          }

          *(v35 + 16) = v60 + 1;
          *(v35 + 8 * v60 + 32) = v58;
        }

        v42 += 32;
        --v41;
      }

      while (v41);
    }

    else
    {

      v35 = MEMORY[0x277D84F90];
    }

    (*(v66 + 8))(v65, v67);
  }

  return v35;
}

uint64_t static PasteboardUtility.copy(items:)(uint64_t a1)
{
  v3[3] = &type metadata for SystemPasteboard;
  v3[4] = &off_287B1F9F8;
  __swift_project_boxed_opaque_existential_1(v3, &type metadata for SystemPasteboard);
  sub_26A6D8B1C(a1);
  return sub_26A5B4408(v3);
}

void sub_26A6D8B1C(uint64_t a1)
{
  v122 = *MEMORY[0x277D85DE8];
  v109 = sub_26A84A9C8();
  OUTLINED_FUNCTION_15();
  v3 = v2;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_6_0();
  v100 = v5 - v6;
  MEMORY[0x28223BE20](v7);
  v108 = &v88 - v8;
  v9 = OUTLINED_FUNCTION_25_2();
  v99 = type metadata accessor for DataPasteboardItem(v9);
  OUTLINED_FUNCTION_46();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_3_15();
  v98 = v11;
  v12 = OUTLINED_FUNCTION_25_2();
  v13 = type metadata accessor for PasteboardUtility.PasteboardItem(v12);
  OUTLINED_FUNCTION_15();
  v15 = v14;
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_6_0();
  v112 = (v17 - v18);
  MEMORY[0x28223BE20](v19);
  v117 = &v88 - v20;
  v21 = *(a1 + 16);
  if (v21)
  {
    v119 = MEMORY[0x277D84F90];
    sub_26A7DD1BC(0, v21, 0);
    v22 = v119;
    v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B4210);
    v23 = 0;
    v89 = 0;
    v102 = a1 + 32;
    v97 = (v3 + 32);
    v96 = (v3 + 16);
    v95 = *MEMORY[0x277D74090];
    v94 = *MEMORY[0x277D74128];
    v93 = v3 + 8;
    v91 = xmmword_26A8570D0;
    v90 = xmmword_26A876FB0;
    v107 = v13;
    v106 = v15;
    v101 = v21;
    do
    {
      v111 = v22;
      v24 = *(v102 + 8 * v23);
      v110 = v23 + 1;
      v25 = sub_26A852468();
      v26 = v25;
      v27 = v24 + 64;
      v28 = 1 << *(v24 + 32);
      if (v28 < 64)
      {
        v29 = ~(-1 << v28);
      }

      else
      {
        v29 = -1;
      }

      v30 = v29 & *(v24 + 64);
      v31 = (v28 + 63) >> 6;
      v113 = v25 + 64;
      v115 = v24;

      v32 = 0;
      v33 = v112;
      v114 = v26;
      if (v30)
      {
        while (2)
        {
          v34 = __clz(__rbit64(v30));
          v30 &= v30 - 1;
LABEL_13:
          v37 = v34 | (v32 << 6);
          v38 = *(v115 + 56);
          v39 = (*(v115 + 48) + 16 * v37);
          v41 = *v39;
          v40 = v39[1];
          v116 = v41;
          v118 = v40;
          v42 = v117;
          sub_26A6D9C04(v38 + *(v15 + 72) * v37, v117);
          sub_26A6D9C04(v42, v33);
          switch(swift_getEnumCaseMultiPayload())
          {
            case 1u:
              v70 = sub_26A84AB98();
              v121 = v70;
              boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v120);
              (*(*(v70 - 8) + 32))(boxed_opaque_existential_1, v33, v70);
              goto LABEL_20;
            case 2u:
              v52 = v108;
              v53 = v109;
              (*v97)(v108, v33, v109);
              sub_26A4EC5B0(0, &qword_2803B1C40);
              (*v96)(v100, v52, v53);

              v104 = sub_26A851F68();
              v105 = [v104 length];
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B1C48);
              inited = swift_initStackObject();
              *(inited + 16) = v91;
              v55 = v95;
              *(inited + 32) = v95;
              type metadata accessor for DocumentType();
              *(inited + 64) = v56;
              v57 = v94;
              *(inited + 40) = v94;
              type metadata accessor for DocumentAttributeKey();
              sub_26A6DA614(&qword_2803AA538, type metadata accessor for DocumentAttributeKey);
              v58 = v55;
              v59 = v57;
              v60 = v104;
              sub_26A8516A8();
              v61 = sub_26A851688();

              *&v120 = 0;
              v62 = [v60 dataFromRange:0 documentAttributes:v105 error:{v61, &v120}];

              v63 = v120;
              if (v62)
              {
                v64 = sub_26A84ABF8();
                v66 = v65;

                v121 = MEMORY[0x277CC9318];
                *&v120 = v64;
                *(&v120 + 1) = v66;
                v67 = OUTLINED_FUNCTION_5_58();
                v68(v67);
              }

              else
              {
                v76 = v63;
                v77 = sub_26A84AAE8();

                swift_willThrow();
                v78 = sub_26A851E98();
                LOBYTE(v86) = 2;
                sub_26A7B7ED8(v78, 1, "SnippetUI/PasteboardUtility.swift", 33, 2, 167, "pasteboardItem", 14, v86, v87, v88, v89, v90, *(&v90 + 1), v91, *(&v91 + 1), v92, v93, v94, v95, v96, v97);
                v121 = MEMORY[0x277CC9318];
                v120 = v90;
                v79 = OUTLINED_FUNCTION_5_58();
                v80(v79);
                v89 = 0;
              }

              v15 = v106;
              v33 = v112;
              v26 = v114;
              v49 = v118;
              goto LABEL_22;
            case 3u:
              v69 = *v33;
              v121 = sub_26A4EC5B0(0, &qword_28157D7E0);
              *&v120 = v69;
              goto LABEL_20;
            case 4u:
              v45 = v98;
              sub_26A6DA5B4(v33, v98, type metadata accessor for DataPasteboardItem);
              v46 = (v45 + *(v99 + 20));
              v47 = *v46;
              v48 = v46[1];
              v121 = MEMORY[0x277CC9318];
              *&v120 = v47;
              *(&v120 + 1) = v48;
              v49 = v118;

              v50 = v47;
              v33 = v112;
              v51 = v48;
              v15 = v106;
              sub_26A54D260(v50, v51);
              sub_26A6D9C68(v45, type metadata accessor for DataPasteboardItem);
              goto LABEL_21;
            default:
              v43 = *v33;
              v44 = v33[1];
              v121 = MEMORY[0x277D837D0];
              *&v120 = v43;
              *(&v120 + 1) = v44;
LABEL_20:
              v49 = v118;

LABEL_21:
              v26 = v114;
LABEL_22:
              sub_26A6D9C68(v117, type metadata accessor for PasteboardUtility.PasteboardItem);
              *(v113 + ((v37 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v37;
              v72 = (v26[6] + 16 * v37);
              *v72 = v116;
              v72[1] = v49;
              sub_26A576F3C(&v120, (v26[7] + 32 * v37));
              v73 = v26[2];
              v74 = __OFADD__(v73, 1);
              v75 = v73 + 1;
              if (v74)
              {
                goto LABEL_32;
              }

              v26[2] = v75;
              if (!v30)
              {
                break;
              }

              continue;
          }

          break;
        }
      }

      v35 = v32;
      while (1)
      {
        v32 = v35 + 1;
        if (__OFADD__(v35, 1))
        {
          __break(1u);
LABEL_32:
          __break(1u);
        }

        if (v32 >= v31)
        {
          break;
        }

        v36 = *(v27 + 8 * v32);
        ++v35;
        if (v36)
        {
          v34 = __clz(__rbit64(v36));
          v30 = (v36 - 1) & v36;
          goto LABEL_13;
        }
      }

      v22 = v111;
      v119 = v111;
      v82 = *(v111 + 16);
      v81 = *(v111 + 24);
      if (v82 >= v81 >> 1)
      {
        sub_26A7DD1BC(v81 > 1, v82 + 1, 1);
        v26 = v114;
        v22 = v119;
      }

      *(v22 + 16) = v82 + 1;
      *(v22 + 8 * v82 + 32) = v26;
      v23 = v110;
    }

    while (v110 != v101);
  }

  v83 = [objc_opt_self() generalPasteboard];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B4218);
  v84 = sub_26A851A88();

  type metadata accessor for OptionsKey();
  sub_26A6DA614(&qword_2803AA518, type metadata accessor for OptionsKey);
  sub_26A8516A8();
  v85 = sub_26A851688();

  [v83 setItems:v84 options:v85];
}

uint64_t DataPasteboardItem.init(type:data:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  sub_26A84EA68();
  OUTLINED_FUNCTION_46();
  v6 = OUTLINED_FUNCTION_112();
  v7(v6);
  result = type metadata accessor for DataPasteboardItem(0);
  v9 = (a3 + *(result + 20));
  *v9 = a1;
  v9[1] = a2;
  return result;
}

uint64_t static DataPasteboardItem.== infix(_:_:)()
{
  if (sub_26A84EA18())
  {
    type metadata accessor for DataPasteboardItem(0);

    JUMPOUT(0x26D65CE50);
  }

  return 0;
}

uint64_t static PasteboardUtility.PasteboardItem.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v56 = a1;
  v57 = a2;
  v50 = type metadata accessor for DataPasteboardItem(0);
  OUTLINED_FUNCTION_46();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_3_15();
  v52 = v3;
  OUTLINED_FUNCTION_25_2();
  sub_26A84A9C8();
  OUTLINED_FUNCTION_15();
  v54 = v5;
  v55 = v4;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_3_15();
  v51 = v6;
  OUTLINED_FUNCTION_25_2();
  v7 = sub_26A84AB98();
  OUTLINED_FUNCTION_15();
  v53 = v8;
  MEMORY[0x28223BE20](v9);
  v11 = &v50 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for PasteboardUtility.PasteboardItem(0);
  OUTLINED_FUNCTION_46();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_6_0();
  v15 = v13 - v14;
  MEMORY[0x28223BE20](v16);
  v18 = (&v50 - v17);
  MEMORY[0x28223BE20](v19);
  v21 = &v50 - v20;
  MEMORY[0x28223BE20](v22);
  v24 = &v50 - v23;
  MEMORY[0x28223BE20](v25);
  v27 = (&v50 - v26);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B41B0);
  MEMORY[0x28223BE20](v28 - 8);
  v30 = &v50 - v29;
  v32 = (&v50 + *(v31 + 56) - v29);
  sub_26A6D9C04(v56, &v50 - v29);
  sub_26A6D9C04(v57, v32);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_26A6D9C04(v30, v24);
      if (OUTLINED_FUNCTION_8_51() == 1)
      {
        v43 = v53;
        (*(v53 + 32))(v11, v32, v7);
        OUTLINED_FUNCTION_112();
        v39 = sub_26A84AB68();
        v44 = *(v43 + 8);
        v44(v11, v7);
        v44(v24, v7);
        goto LABEL_14;
      }

      (*(v53 + 8))(v24, v7);
      goto LABEL_19;
    case 2u:
      sub_26A6D9C04(v30, v21);
      if (OUTLINED_FUNCTION_8_51() == 2)
      {
        v37 = v54;
        v36 = v55;
        v38 = v51;
        (*(v54 + 32))(v51, v32, v55);
        v39 = sub_26A84A938();
        v40 = *(v37 + 8);
        v40(v38, v36);
        v40(v21, v36);
        goto LABEL_14;
      }

      (*(v54 + 8))(v21, v55);
      goto LABEL_19;
    case 3u:
      sub_26A6D9C04(v30, v18);
      v41 = *v18;
      if (OUTLINED_FUNCTION_8_51() != 3)
      {

        goto LABEL_19;
      }

      v42 = *v32;
      sub_26A4EC5B0(0, &qword_2803AC8F0);
      v39 = sub_26A851FF8();

LABEL_14:
      sub_26A6D9C68(v30, type metadata accessor for PasteboardUtility.PasteboardItem);
      return v39 & 1;
    case 4u:
      sub_26A6D9C04(v30, v15);
      if (OUTLINED_FUNCTION_8_51() != 4)
      {
        sub_26A6D9C68(v15, type metadata accessor for DataPasteboardItem);
        goto LABEL_19;
      }

      v35 = v52;
      sub_26A6DA5B4(v32, v52, type metadata accessor for DataPasteboardItem);
      if (sub_26A84EA18() & 1) != 0 && (MEMORY[0x26D65CE50](*(v15 + *(v50 + 20)), *(v15 + *(v50 + 20) + 8), *(v35 + *(v50 + 20)), *(v35 + *(v50 + 20) + 8)))
      {
        sub_26A6D9C68(v35, type metadata accessor for DataPasteboardItem);
        sub_26A6D9C68(v15, type metadata accessor for DataPasteboardItem);
        goto LABEL_31;
      }

      sub_26A6D9C68(v35, type metadata accessor for DataPasteboardItem);
      sub_26A6D9C68(v15, type metadata accessor for DataPasteboardItem);
      goto LABEL_23;
    default:
      sub_26A6D9C04(v30, v27);
      v34 = *v27;
      v33 = v27[1];
      if (OUTLINED_FUNCTION_8_51())
      {

LABEL_19:
        sub_26A4DBD10(v30, &qword_2803B41B0);
        goto LABEL_20;
      }

      v46 = *v32;
      v47 = v32[1];
      if (v34 == v46 && v33 == v47)
      {
      }

      else
      {
        OUTLINED_FUNCTION_112();
        v49 = sub_26A852598();

        if ((v49 & 1) == 0)
        {
LABEL_23:
          sub_26A6D9C68(v30, type metadata accessor for PasteboardUtility.PasteboardItem);
LABEL_20:
          v39 = 0;
          return v39 & 1;
        }
      }

LABEL_31:
      sub_26A6D9C68(v30, type metadata accessor for PasteboardUtility.PasteboardItem);
      v39 = 1;
      return v39 & 1;
  }
}

uint64_t sub_26A6D9C04(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PasteboardUtility.PasteboardItem(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_26A6D9C68(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_46();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_26A6D9CEC()
{
  result = sub_26A84EA68();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_26A6D9D60(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 40))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 24);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_26A6D9DA0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_26A6D9DF8()
{
  result = sub_26A84AB98();
  if (v1 <= 0x3F)
  {
    result = sub_26A84A9C8();
    if (v2 <= 0x3F)
    {
      result = sub_26A4EC5B0(319, &qword_28157D7E0);
      if (v3 <= 0x3F)
      {
        result = type metadata accessor for DataPasteboardItem(319);
        if (v4 <= 0x3F)
        {
          swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
          return 0;
        }
      }
    }
  }

  return result;
}

uint64_t sub_26A6D9EC0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v53 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B4200);
  MEMORY[0x28223BE20](v3 - 8);
  v51 = &v48 - v4;
  v50 = type metadata accessor for DataPasteboardItem(0);
  MEMORY[0x28223BE20](v50);
  v49 = &v48 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AF0D0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v48 - v7;
  v9 = sub_26A84AB98();
  v52 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = &v48 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B4208);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v48 - v13;
  v15 = sub_26A84A9C8();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v48 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v21 = &v48 - v20;
  sub_26A5136A0(a1, &v56);
  if (swift_dynamicCast())
  {
    __swift_storeEnumTagSinglePayload(v14, 0, 1, v15);
    v22 = *(v16 + 32);
    v22(v21, v14, v15);
    v23 = sub_26A64E5D4();
    if (v24 >> 60 != 15)
    {
      sub_26A54D2B8(v23, v24);
      v31 = v53;
      v22(v53, v21, v15);
      v33 = type metadata accessor for PasteboardUtility.PasteboardItem(0);
      goto LABEL_8;
    }

    v25 = sub_26A851E98();
    LOBYTE(v46) = 2;
    sub_26A7B7B20(v25, 1, "SnippetUI/PasteboardUtility.swift", 33, 2, 71, "pasteboardItem(for:)", 20, v46, v47, v48, v49, v50, v51, v52, v53, v54, v55, v56, v57, v58, v59);
    sub_26A4EC5B0(0, &qword_2803B1C40);
    (*(v16 + 16))(v18, v21, v15);
    v26 = sub_26A851F68();
    v27 = [v26 string];

    v28 = sub_26A8517B8();
    v30 = v29;

    (*(v16 + 8))(v21, v15);
    v31 = v53;
    *v53 = v28;
    v31[1] = v30;
    goto LABEL_6;
  }

  __swift_storeEnumTagSinglePayload(v14, 1, 1, v15);
  sub_26A4DBD10(v14, &qword_2803B4208);
  sub_26A5136A0(a1, &v56);
  if (swift_dynamicCast())
  {
    v32 = v55;
    v31 = v53;
    *v53 = v54;
    v31[1] = v32;
LABEL_6:
    v33 = type metadata accessor for PasteboardUtility.PasteboardItem(0);
    goto LABEL_8;
  }

  sub_26A5136A0(a1, &v56);
  if (swift_dynamicCast())
  {
    __swift_storeEnumTagSinglePayload(v8, 0, 1, v9);
    v38 = *(v52 + 32);
    v38(v11, v8, v9);
    v39 = v53;
    v38(v53, v11, v9);
    v33 = type metadata accessor for PasteboardUtility.PasteboardItem(0);
    swift_storeEnumTagMultiPayload();
    v34 = v39;
    goto LABEL_9;
  }

  __swift_storeEnumTagSinglePayload(v8, 1, 1, v9);
  sub_26A4DBD10(v8, &qword_2803AF0D0);
  sub_26A5136A0(a1, &v56);
  sub_26A4EC5B0(0, &qword_28157D7E0);
  if (swift_dynamicCast())
  {
    v31 = v53;
    *v53 = v54;
    v33 = type metadata accessor for PasteboardUtility.PasteboardItem(0);
  }

  else
  {
    sub_26A5136A0(a1, &v56);
    v41 = v50;
    v40 = v51;
    if (!swift_dynamicCast())
    {
      __swift_storeEnumTagSinglePayload(v40, 1, 1, v41);
      sub_26A4DBD10(v40, &qword_2803B4200);
      v45 = sub_26A851E98();
      LOBYTE(v46) = 2;
      sub_26A7B7CFC(v45, 1, "SnippetUI/PasteboardUtility.swift", 33, 2, 99, "pasteboardItem(for:)", 20, v46, v47, v48, v49, v50, v51, v52, v53, v54, v55, v56, v57, v58, v59);
      v36 = type metadata accessor for PasteboardUtility.PasteboardItem(0);
      v34 = v53;
      v35 = 1;
      return __swift_storeEnumTagSinglePayload(v34, v35, 1, v36);
    }

    __swift_storeEnumTagSinglePayload(v40, 0, 1, v41);
    v42 = v40;
    v43 = v49;
    sub_26A6DA5B4(v42, v49, type metadata accessor for DataPasteboardItem);
    v44 = v43;
    v31 = v53;
    sub_26A6DA5B4(v44, v53, type metadata accessor for DataPasteboardItem);
    v33 = type metadata accessor for PasteboardUtility.PasteboardItem(0);
  }

LABEL_8:
  swift_storeEnumTagMultiPayload();
  v34 = v31;
LABEL_9:
  v35 = 0;
  v36 = v33;
  return __swift_storeEnumTagSinglePayload(v34, v35, 1, v36);
}

uint64_t sub_26A6DA5B4(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_46();
  (*(v5 + 32))(a2, a1);
  return a2;
}

uint64_t sub_26A6DA614(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t OUTLINED_FUNCTION_8_51()
{

  return swift_getEnumCaseMultiPayload();
}

BOOL sub_26A6DA6FC()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AAD50);
  *&v2 = MEMORY[0x28223BE20](v1 - 8).n128_u64[0];
  v4 = &v9 - v3;
  v5 = [v0 thumbnail];
  if (v5)
  {
    RFVisualProperty.asVisualProperty()();

    v6 = sub_26A84BD28();
    v7 = 0;
  }

  else
  {
    v6 = sub_26A84BD28();
    v7 = 1;
  }

  __swift_storeEnumTagSinglePayload(v4, v7, 1, v6);
  sub_26A4E2544(v4, &qword_2803AAD50);
  return v5 != 0;
}

id sub_26A6DA7E4@<X0>(char *a1@<X8>)
{
  v2 = v1;
  v4 = [v1 text_1];
  if (v4)
  {
    v5 = v4;
    RFTextProperty.asPartialText()(v106);
    v6 = [v1 text_2];
    if (v6)
    {
      v7 = v6;
      *(&v104 + 1) = &type metadata for PartialText;
      v105 = &protocol witness table for PartialText;
      v103[0] = swift_allocObject();
      RFTextProperty.asPartialText()(v103[0] + 16);
    }

    else
    {
      v105 = 0;
      *v103 = 0u;
      v104 = 0u;
    }

    v10 = sub_26A537584(v2);
    if (v10)
    {
      sub_26A51B744(v10, __dst);
      sub_26A54AAEC();
      v10 = sub_26A851248();
      v11 = &protocol witness table for AnyView;
      v12 = MEMORY[0x277CE11C8];
    }

    else
    {
      v12 = 0;
      v11 = 0;
      v102[2] = 0;
      v102[1] = 0;
    }

    v102[0] = v10;
    v102[3] = v12;
    v102[4] = v11;
    v13 = [v2 text_4];
    if (v13)
    {
      v14 = v13;
      *(&v100 + 1) = &type metadata for PartialText;
      v101 = &protocol witness table for PartialText;
      v99[0] = swift_allocObject();
      RFTextProperty.asPartialText()(v99[0] + 16);
    }

    else
    {
      v101 = 0;
      *v99 = 0u;
      v100 = 0u;
    }

    v15 = [v2 thumbnail];
    if (v15)
    {
      v16 = v15;
      *(&v97 + 1) = sub_26A84BD28();
      v98 = &protocol witness table for VisualProperty;
      __swift_allocate_boxed_opaque_existential_1(v96);
      RFVisualProperty.asVisualProperty()();
    }

    else
    {
      v98 = 0;
      *v96 = 0u;
      v97 = 0u;
    }

    if (qword_2803A89D0 != -1)
    {
      swift_once();
    }

    v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AADC8);
    v18 = __swift_project_value_buffer(v17, qword_2803D1900);
    v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AC908);
    v20 = &a1[*(v19 + 32)];
    sub_26A4EA070(v18, v20, &qword_2803AADC8);
    sub_26A6AEE74(__src);
    memcpy(a1, __src, 0xBFuLL);
    sub_26A5375E4(v20 + *(v17 + 36), &a1[*(v19 + 28)]);
    v21 = type metadata accessor for SimpleItemReverseRichView();
    v22 = v21[5];
    *&a1[v22] = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803A9190);
    swift_storeEnumTagMultiPayload();
    v23 = v21[6];
    *&a1[v23] = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91A8);
    swift_storeEnumTagMultiPayload();
    v24 = &a1[v21[7]];
    *v24 = swift_getKeyPath();
    v24[8] = 0;
    v25 = memcpy(__dst, v106, 0xFAuLL);
    OUTLINED_FUNCTION_1_75(v25, v26, v27, v28, v29, v30, v31, v32, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70, v71, v72, v73, v74, v75, v76, v77, v78, v79, v80, v81, v82, v83, v84, v85, v86, v87, v88, v89, v90, v91, v92, v93[0]);
    sub_26A4EC458(__dst, &v61);
    sub_26A4EC4B4();
    *&a1[v21[8]] = sub_26A851248();
    sub_26A4EA070(v103, v93, &qword_2803A91B8);
    if (v94)
    {
      __swift_project_boxed_opaque_existential_1(v93, v94);
      v33 = OUTLINED_FUNCTION_16_5();
      v35 = v34(v33);
      __swift_destroy_boxed_opaque_existential_1(v93);
    }

    else
    {
      sub_26A4E2544(v93, &qword_2803A91B8);
      v35 = 0;
    }

    *&a1[v21[9]] = v35;
    sub_26A4EA070(v102, v93, &qword_2803A91B8);
    if (v94)
    {
      __swift_project_boxed_opaque_existential_1(v93, v94);
      v36 = OUTLINED_FUNCTION_16_5();
      v38 = v37(v36);
      __swift_destroy_boxed_opaque_existential_1(v93);
    }

    else
    {
      sub_26A4E2544(v93, &qword_2803A91B8);
      v38 = 0;
    }

    *&a1[v21[10]] = v38;
    sub_26A4EA070(v99, v93, &qword_2803A91B8);
    if (v94)
    {
      __swift_project_boxed_opaque_existential_1(v93, v94);
      v39 = OUTLINED_FUNCTION_16_5();
      v41 = v40(v39);
      __swift_destroy_boxed_opaque_existential_1(v93);
    }

    else
    {
      sub_26A4E2544(v93, &qword_2803A91B8);
      v41 = 0;
    }

    *&a1[v21[11]] = v41;
    v42 = sub_26A4EA070(v96, &v61, &qword_2803A91B8);
    if (v64)
    {
      __swift_project_boxed_opaque_existential_1(&v61, v64);
      v50 = OUTLINED_FUNCTION_16_5();
      v52 = v51(v50);

      OUTLINED_FUNCTION_1_75(v53, v54, v55, v56, v57, v58, v59, v60, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70, v71, v72, v73, v74, v75, v76, v77, v78, v79, v80, v81, v82, v83, v84, v85, v86, v87, v88, v89, v90, v91, v92, v93[0]);
      sub_26A4EC508(v93);
      OUTLINED_FUNCTION_3_29(v96);
      OUTLINED_FUNCTION_3_29(v99);
      OUTLINED_FUNCTION_3_29(v102);
      OUTLINED_FUNCTION_3_29(v103);
      result = __swift_destroy_boxed_opaque_existential_1(&v61);
    }

    else
    {
      OUTLINED_FUNCTION_1_75(v42, v43, v44, v45, v46, v47, v48, v49, v61, v62, v63, 0, v65, v66, v67, v68, v69, v70, v71, v72, v73, v74, v75, v76, v77, v78, v79, v80, v81, v82, v83, v84, v85, v86, v87, v88, v89, v90, v91, v92, v93[0]);
      sub_26A4EC508(v93);

      OUTLINED_FUNCTION_2_8(v96);
      OUTLINED_FUNCTION_2_8(v99);
      OUTLINED_FUNCTION_2_8(v102);
      OUTLINED_FUNCTION_2_8(v103);
      result = OUTLINED_FUNCTION_2_8(&v61);
      v52 = 0;
    }

    *&a1[v21[12]] = v52;
  }

  else
  {
    sub_26A4E353C();
    swift_allocError();
    *v8 = v1;
    *(v8 + 8) = &unk_287B138F8;
    *(v8 + 16) = 0;
    swift_willThrow();
    return v1;
  }

  return result;
}

unint64_t sub_26A6DAE70()
{
  result = qword_2803B4220;
  if (!qword_2803B4220)
  {
    type metadata accessor for SimpleItemReverseRichView();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B4220);
  }

  return result;
}

void *OUTLINED_FUNCTION_1_75(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t __dst)
{

  return memcpy(&__dst, &STACK[0x3A8], 0xFAuLL);
}

uint64_t CompositionParameter.init(thumbnail:tokens:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  if (qword_2803A9150 != -1)
  {
    swift_once();
  }

  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B4228);
  v7 = __swift_project_value_buffer(v6, qword_2803D30D0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B4230);
  v9 = &a4[*(v8 + 32)];
  sub_26A4EA070(v7, v9, &qword_2803B4228);
  sub_26A6AEE74(__src);
  memcpy(a4, __src, 0xBFuLL);
  sub_26A6DBD28(v9 + *(v6 + 36), &a4[*(v8 + 28)]);
  sub_26A4EA070(a1, v17, &qword_2803A91B8);
  v10 = v18;
  if (v18)
  {
    v11 = v19;
    __swift_project_boxed_opaque_existential_1(v17, v18);
    v12 = (*(v11 + 8))(v10, v11);
    sub_26A4E2544(a1, &qword_2803A91B8);
    __swift_destroy_boxed_opaque_existential_1(v17);
  }

  else
  {
    sub_26A4E2544(a1, &qword_2803A91B8);
    sub_26A4E2544(v17, &qword_2803A91B8);
    v12 = 0;
  }

  result = type metadata accessor for CompositionParameter();
  *&a4[*(result + 36)] = v12;
  v14 = &a4[*(result + 40)];
  *v14 = a2;
  *(v14 + 1) = a3;
  return result;
}

uint64_t sub_26A6DB0D4@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B4230) + 28);

  return sub_26A6DBD28(v3, a1);
}

double sub_26A6DB124@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_26A84B1D8();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = type metadata accessor for CompositionParameterConstants();
  MEMORY[0x28223BE20](v29);
  v10 = v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AAFA0);
  MEMORY[0x28223BE20](v11);
  v13 = (v27 - v12);
  v14 = *(v2 + *(a1 + 36));
  if (v14)
  {
    v28 = a2;
    sub_26A6DB0D4(v10);
    (*(v6 + 16))(v8, &v10[*(v29 + 20)], v5);

    sub_26A6DBF04(v10);
    KeyPath = swift_getKeyPath();
    v27[1] = a1;
    v16 = KeyPath;
    v17 = (v13 + *(v11 + 36));
    v18 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AA440) + 28);
    (*(v6 + 32))(v17 + v18, v8, v5);
    __swift_storeEnumTagSinglePayload(v17 + v18, 0, 1, v5);
    *v17 = v16;
    *v13 = v14;
    sub_26A6DB0D4(v10);
    v19 = v29;
    sub_26A4F20CC(&v10[*(v29 + 24)], &v30);

    sub_26A6DBF04(v10);
    sub_26A607C38();
    v21 = v20;
    sub_26A57E57C(&v30);
    sub_26A4E2544(v13, &qword_2803AAFA0);
    sub_26A6DB0D4(v10);
    v22 = *&v10[*(v19 + 36)];

    sub_26A6DBF04(v10);
    v23 = swift_getKeyPath();
    *&v33 = v21;
    *(&v33 + 1) = v23;
    v34 = v22;
    v35 = 0;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B42E0);
    sub_26A6DBFF8();
    sub_26A84FDF8();

    a2 = v28;
  }

  else
  {
    v33 = xmmword_26A875620;
    v34 = 0;
    v35 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B42E0);
    sub_26A6DBFF8();
    sub_26A84FDF8();
  }

  result = *&v30;
  v25 = v31;
  v26 = v32;
  *a2 = v30;
  *(a2 + 16) = v25;
  *(a2 + 24) = v26;
  return result;
}

uint64_t sub_26A6DB4E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v20 = a2;
  v3 = type metadata accessor for CompositionParameterConstants();
  MEMORY[0x28223BE20](v3);
  v5 = &WitnessTable - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_2803B4238);
  v18 = *(a1 + 16);
  swift_getTupleTypeMetadata3();
  sub_26A851528();
  WitnessTable = swift_getWitnessTable();
  v6 = sub_26A851128();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &WitnessTable - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &WitnessTable - v11;
  sub_26A84FA78();
  v13 = v19;
  sub_26A6DB0D4(v5);
  sub_26A6DBF04(v5);
  v14 = *(a1 + 24);
  v21 = v18;
  v22 = v14;
  v23 = v13;
  sub_26A851118();
  swift_getWitnessTable();
  sub_26A80757C(v9);
  v15 = *(v7 + 8);
  v15(v9, v6);
  sub_26A80757C(v12);
  return (v15)(v12, v6);
}

uint64_t sub_26A6DB760@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v31 = a3;
  v35 = a4;
  v34 = *(a2 - 8);
  MEMORY[0x28223BE20](a1);
  v33 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v32 = &v26 - v8;
  v9 = type metadata accessor for CompositionParameterConstants();
  v10 = v9 - 8;
  MEMORY[0x28223BE20](v9);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v26 - v14;
  v16 = type metadata accessor for CompositionParameter();
  sub_26A6DB124(v16, __dst);
  v29 = __dst[0];
  v30 = *&__dst[1];
  v28 = BYTE8(__dst[1]);
  sub_26A6DB0D4(v15);
  sub_26A6DBF04(v15);
  sub_26A6DB0D4(v12);
  sub_26A6DBF04(v12);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B42C8);
  sub_26A6DBF6C();
  sub_26A6D63AC();
  sub_26A84F028();
  LOBYTE(v12) = v28;
  LOBYTE(v45[0]) = v28;
  *(v44 + 7) = *&v44[7];
  *(&v44[2] + 7) = *&v44[9];
  *(&v44[4] + 7) = *&v44[11];
  sub_26A6DB0D4(v15);
  v17 = &v15[*(v10 + 40)];
  v18 = *v17;
  v26 = *(v17 + 1);
  v27 = v18;
  sub_26A6DBF04(v15);
  v19 = sub_26A850248();
  v45[0] = v29;
  *(&v45[1] + 9) = *v44;
  v42[0] = 0;
  *&v45[1] = v30;
  BYTE8(v45[1]) = v12;
  *(&v45[2] + 9) = *&v44[2];
  *(&v45[3] + 9) = *&v44[4];
  *(&v45[4] + 1) = *(&v44[5] + 7);
  LOBYTE(v45[5]) = v19;
  *(&v45[5] + 1) = __dst[0];
  DWORD1(v45[5]) = *(__dst + 3);
  *(&v45[5] + 8) = v27;
  *(&v45[6] + 8) = v26;
  BYTE8(v45[7]) = 0;
  v20 = v33;
  (*(a1 + *(v16 + 40)))();
  v21 = v31;
  v22 = v32;
  sub_26A80757C(v20);
  v23 = v34;
  v24 = *(v34 + 8);
  v24(v20, a2);
  memcpy(v42, v45, 0x79uLL);
  v43[0] = v42;
  (*(v23 + 16))(v20, v22, a2);
  v40 = 0;
  v41 = 1;
  v43[1] = v20;
  v43[2] = &v40;
  sub_26A4EA070(v45, __dst, qword_2803B4238);
  v39[0] = __swift_instantiateConcreteTypeFromMangledNameV2(qword_2803B4238);
  v39[1] = a2;
  v39[2] = MEMORY[0x277CE1180];
  v36 = sub_26A6DC0E8();
  v37 = v21;
  v38 = MEMORY[0x277CE1170];
  sub_26A74E564(v43, 3, v39);
  sub_26A4E2544(v45, qword_2803B4238);
  v24(v22, a2);
  v24(v20, a2);
  memcpy(__dst, v42, 0x79uLL);
  return sub_26A4E2544(__dst, qword_2803B4238);
}

uint64_t CompositionParameter.body.getter(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_2803B4238);
  swift_getTupleTypeMetadata3();
  sub_26A851528();
  OUTLINED_FUNCTION_1_27();
  swift_getWitnessTable();
  v2 = sub_26A851128();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v11 - v7;
  sub_26A6DB4E8(a1, v5);
  OUTLINED_FUNCTION_5_57();
  swift_getWitnessTable();
  sub_26A80757C(v5);
  v9 = *(v3 + 8);
  v9(v5, v2);
  sub_26A80757C(v8);
  return (v9)(v8, v2);
}

uint64_t sub_26A6DBD28(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CompositionParameterConstants();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_26A6DBDE8()
{
  sub_26A6DBEAC();
  if (v0 <= 0x3F)
  {
    sub_26A4E5E18();
    if (v1 <= 0x3F)
    {
      sub_26A5046B4();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_26A6DBEAC()
{
  if (!qword_2803B42C0)
  {
    type metadata accessor for CompositionParameterConstants();
    v0 = type metadata accessor for EnvironmentConstant();
    if (!v1)
    {
      atomic_store(v0, &qword_2803B42C0);
    }
  }
}

uint64_t sub_26A6DBF04(uint64_t a1)
{
  v2 = type metadata accessor for CompositionParameterConstants();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_26A6DBF6C()
{
  result = qword_2803B42D0;
  if (!qword_2803B42D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B42C8);
    sub_26A6DBFF8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B42D0);
  }

  return result;
}

unint64_t sub_26A6DBFF8()
{
  result = qword_2803B42D8;
  if (!qword_2803B42D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B42E0);
    sub_26A6DC084();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B42D8);
  }

  return result;
}

unint64_t sub_26A6DC084()
{
  result = qword_2803ABF30;
  if (!qword_2803ABF30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803ABF38);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803ABF30);
  }

  return result;
}

unint64_t sub_26A6DC0E8()
{
  result = qword_2803B42E8;
  if (!qword_2803B42E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_2803B4238);
    sub_26A6DC174();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B42E8);
  }

  return result;
}

unint64_t sub_26A6DC174()
{
  result = qword_2803B42F0;
  if (!qword_2803B42F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B42F8);
    sub_26A6DBF6C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B42F0);
  }

  return result;
}

uint64_t sub_26A6DC200@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_26A84F988();
  OUTLINED_FUNCTION_15();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_41();
  v10 = v9 - v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803A9190);
  OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v11);
  v13 = &v16 - v12;
  sub_26A4DBD68(v2, &v16 - v12, &unk_2803A9190);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_26A4DBDB4(v13, a1, &qword_2803A91C8);
  }

  sub_26A851EA8();
  v15 = sub_26A8501F8();
  sub_26A84EA78();

  sub_26A84F978();
  swift_getAtKeyPath();

  return (*(v6 + 8))(v10, v4);
}

uint64_t sub_26A6DC3C0()
{
  v2 = sub_26A84F988();
  OUTLINED_FUNCTION_15();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_41();
  v6 = OUTLINED_FUNCTION_5_59();
  v7 = v0 + *(type metadata accessor for SectionHeaderRichView(v6) + 20);
  v8 = *v7;
  if ((*(v7 + 8) & 1) == 0)
  {

    sub_26A851EA8();
    v9 = sub_26A8501F8();
    sub_26A84EA78();

    sub_26A84F978();
    swift_getAtKeyPath();
    sub_26A4D82E8(v8, 0);
    (*(v4 + 8))(v1, v2);
    return v11;
  }

  return v8;
}

uint64_t sub_26A6DC4F8@<X0>(uint64_t a1@<X8>)
{
  v4 = sub_26A84F988();
  OUTLINED_FUNCTION_15();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_41();
  v10 = v9 - v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91A8);
  OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v11);
  v12 = OUTLINED_FUNCTION_5_59();
  v13 = type metadata accessor for SectionHeaderRichView(v12);
  sub_26A4DBD68(v1 + *(v13 + 24), v2, &qword_2803A91A8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_26A84F3A8();
    OUTLINED_FUNCTION_46();
    return (*(v14 + 32))(a1, v2);
  }

  else
  {
    sub_26A851EA8();
    v16 = sub_26A8501F8();
    sub_26A84EA78();

    sub_26A84F978();
    swift_getAtKeyPath();

    return (*(v6 + 8))(v10, v4);
  }
}

uint64_t SectionHeaderRichView.text1.getter()
{
  type metadata accessor for SectionHeaderRichView(0);
}

uint64_t SectionHeaderRichView.thumbnail.getter()
{
  type metadata accessor for SectionHeaderRichView(0);
}

uint64_t sub_26A6DC758()
{
  v1 = sub_26A84F988();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = v0 + *(type metadata accessor for SectionHeaderRichView(0) + 20);
  v6 = *v5;
  if ((*(v5 + 8) & 1) == 0)
  {

    sub_26A851EA8();
    v7 = sub_26A8501F8();
    sub_26A84EA78();

    sub_26A84F978();
    swift_getAtKeyPath();
    sub_26A4D82E8(v6, 0);
    (*(v2 + 8))(v4, v1);
    v6 = v9[1];
  }

  return sub_26A5A03E0(v6);
}

uint64_t SectionHeaderRichView.init(text1:thumbnail:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for SectionHeaderRichView(0);
  OUTLINED_FUNCTION_46();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_41();
  v10 = (v9 - v8);
  *v10 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803A9190);
  swift_storeEnumTagMultiPayload();
  v11 = v10 + v6[5];
  *v11 = swift_getKeyPath();
  v11[8] = 0;
  v12 = v6[6];
  *(v10 + v12) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91A8);
  swift_storeEnumTagMultiPayload();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v13 = OUTLINED_FUNCTION_16_5();
  *(v10 + v6[7]) = v14(v13);
  sub_26A4DBD68(a2, v19, &qword_2803A91B8);
  if (v20)
  {
    __swift_project_boxed_opaque_existential_1(v19, v20);
    v15 = OUTLINED_FUNCTION_16_5();
    v17 = v16(v15);
    sub_26A4DBD10(a2, &qword_2803A91B8);
    __swift_destroy_boxed_opaque_existential_1(v19);
  }

  else
  {
    sub_26A4DBD10(a2, &qword_2803A91B8);
    sub_26A4DBD10(v19, &qword_2803A91B8);
    v17 = 0;
  }

  *(v10 + v6[8]) = v17;
  sub_26A6DCAB0(v10, a3);
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_26A6DCAB0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SectionHeaderRichView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t SectionHeaderRichView.init(model:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AAD50);
  OUTLINED_FUNCTION_79(v5);
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_5_59();
  v7 = sub_26A84B888();
  OUTLINED_FUNCTION_15();
  v9 = v8;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_41();
  v13 = v12 - v11;
  sub_26A84C4F8();
  v14 = TextProperty.asAnyView()();
  (*(v9 + 8))(v13, v7);
  v22[3] = MEMORY[0x277CE11C8];
  v22[4] = &protocol witness table for AnyView;
  v22[0] = v14;
  sub_26A84C518();
  v15 = sub_26A84BD28();
  if (__swift_getEnumTagSinglePayload(v2, 1, v15) == 1)
  {
    sub_26A4DBD10(v2, &qword_2803AAD50);
    v16 = 0;
    v17 = 0;
    v18 = 0;
    v21[1] = 0;
    v21[2] = 0;
  }

  else
  {
    v16 = VisualProperty.asAnyView()();
    (*(*(v15 - 8) + 8))(v2, v15);
    v18 = &protocol witness table for AnyView;
    v17 = MEMORY[0x277CE11C8];
  }

  v21[0] = v16;
  v21[3] = v17;
  v21[4] = v18;
  SectionHeaderRichView.init(text1:thumbnail:)(v22, v21, a2);
  sub_26A84C528();
  OUTLINED_FUNCTION_46();
  return (*(v19 + 8))(a1);
}

uint64_t SectionHeaderRichView.body.getter@<X0>(uint64_t a1@<X8>)
{
  sub_26A6DCE38(a1);
  v2 = swift_allocObject();
  *(v2 + 16) = sub_26A68CED4;
  *(v2 + 24) = 0;
  v3 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B4300) + 36);
  *(v3 + 16) = swift_getKeyPath();
  *(v3 + 24) = 0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91D8);
  v5 = *(v4 + 40);
  *(v3 + v5) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803A9190);
  swift_storeEnumTagMultiPayload();
  v6 = v3 + *(v4 + 44);
  result = swift_getKeyPath();
  *v6 = result;
  *(v6 + 8) = 0;
  *v3 = sub_26A4D1F7C;
  *(v3 + 8) = v2;
  return result;
}

uint64_t sub_26A6DCE38@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91C0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v22 - v4;
  v6 = type metadata accessor for SectionHeaderRichView.Constants(0);
  v7 = v6 - 8;
  MEMORY[0x28223BE20](v6);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91C8);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v22 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B4358);
  MEMORY[0x28223BE20](v13);
  v15 = &v22 - v14;
  sub_26A6DC200(v12);
  sub_26A6DC758();
  v16 = &v9[*(v7 + 44)];
  v17 = *v16;
  v22 = *(v16 + 1);
  v23 = v17;
  sub_26A6DDD18(v9);
  v26 = v22;
  v25 = v23;
  v27 = 0;
  sub_26A6DC3C0();
  sub_26A6DC4F8(v5);
  v18 = sub_26A84F3A8();
  __swift_storeEnumTagSinglePayload(v5, 0, 1, v18);
  v24 = v1;
  sub_26A4CCADC();
  v15[*(v13 + 36)] = 61;
  sub_26A6DDC40();
  sub_26A850AF8();
  sub_26A4DBD10(v15, &qword_2803B4358);
  *(a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B4350) + 36)) = 0;
  v19 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B4340) + 36);
  sub_26A8513E8();
  v20 = sub_26A850248();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AF440);
  *(v19 + *(result + 36)) = v20;
  return result;
}

uint64_t sub_26A6DD120@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = sub_26A84FA78();
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B4370);
  return sub_26A6DD174(a1, a2 + *(v4 + 44));
}

uint64_t sub_26A6DD174@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for SectionHeaderRichView.Constants(0);
  v5 = v4 - 8;
  MEMORY[0x28223BE20](v4);
  v7 = &v26[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B3568);
  v9 = v8 - 8;
  MEMORY[0x28223BE20](v8);
  v11 = &v26[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  MEMORY[0x28223BE20](v12);
  v14 = &v26[-v13 - 8];
  sub_26A6DD454(&v26[-v13 - 8]);
  v15 = sub_26A850298();
  sub_26A6DC758();
  sub_26A6DDD18(v7);
  sub_26A84ED48();
  v16 = &v14[*(v9 + 44)];
  *v16 = v15;
  *(v16 + 1) = v17;
  *(v16 + 2) = v18;
  *(v16 + 3) = v19;
  *(v16 + 4) = v20;
  v16[40] = 0;
  v21 = *(a1 + *(type metadata accessor for SectionHeaderRichView(0) + 28));
  sub_26A6DC758();
  sub_26A4DBD68(&v7[*(v5 + 40)], v26, &qword_2803AA880);
  sub_26A6DDD18(v7);
  sub_26A4DBD68(v26, v29, &qword_2803AA880);
  sub_26A6AEE74(v30);
  sub_26A4DBD10(v26, &qword_2803AA880);
  memcpy(v28, v30, sizeof(v28));
  v29[11] = 0;
  v29[10] = sub_26A80A810;
  v27 = v21;
  sub_26A4DBD68(v14, v11, &qword_2803B3568);
  sub_26A4DBD68(&v27, v26, &qword_2803A99A0);
  sub_26A4DBD68(v11, a2, &qword_2803B3568);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B4378);
  sub_26A4DBD68(v26, a2 + *(v22 + 48), &qword_2803A99A0);
  v23 = a2 + *(v22 + 64);
  *v23 = 0;
  *(v23 + 8) = 1;

  sub_26A4DBD10(&v27, &qword_2803A99A0);
  sub_26A4DBD10(v14, &qword_2803B3568);
  sub_26A4DBD10(v26, &qword_2803A99A0);
  return sub_26A4DBD10(v11, &qword_2803B3568);
}

uint64_t sub_26A6DD454@<X0>(uint64_t a1@<X8>)
{
  v31 = a1;
  v2 = sub_26A84B1D8();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for SectionHeaderRichView.Constants(0);
  MEMORY[0x28223BE20](v6);
  v30 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v28 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AAFA0);
  MEMORY[0x28223BE20](v11);
  v13 = (&v28 - v12);
  v14 = *(v1 + *(type metadata accessor for SectionHeaderRichView(0) + 32));
  if (v14)
  {
    sub_26A6DC758();
    (*(v3 + 16))(v5, &v10[v6[5]], v2);
    sub_26A6DDD18(v10);
    KeyPath = swift_getKeyPath();
    v15 = (v13 + *(v11 + 36));
    v16 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AA440) + 28);
    (*(v3 + 32))(v15 + v16, v5, v2);
    __swift_storeEnumTagSinglePayload(v15 + v16, 0, 1, v2);
    *v15 = KeyPath;
    *v13 = v14;

    sub_26A6DC758();
    v17 = v10[v6[6]];
    sub_26A6DDD18(v10);
    v18 = v30;
    sub_26A6DC758();
    LOBYTE(v16) = *(v18 + v6[7]);
    sub_26A6DDD18(v18);
    v19 = swift_getKeyPath();
    v20 = v31;
    sub_26A4DBDB4(v13, v31, &qword_2803AAFA0);
    v21 = v20 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB308) + 36);
    *v21 = v19;
    *(v21 + 8) = v17;
    v22 = swift_getKeyPath();
    v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB2E0);
    v24 = v20 + *(v23 + 36);
    *v24 = v22;
    *(v24 + 8) = v16;
    return __swift_storeEnumTagSinglePayload(v20, 0, 1, v23);
  }

  else
  {
    v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB2E0);
    v27 = v31;

    return __swift_storeEnumTagSinglePayload(v27, 1, 1, v26);
  }
}

uint64_t sub_26A6DD7C8(uint64_t a1)
{
  result = sub_26A6DE9A8(&qword_2803B4308, MEMORY[0x277D632F0]);
  *(a1 + 8) = result;
  return result;
}

void sub_26A6DD848()
{
  sub_26A4D27F4();
  if (v0 <= 0x3F)
  {
    sub_26A4E5DC4(319, &qword_2803A9218, type metadata accessor for VRXIdiom);
    if (v1 <= 0x3F)
    {
      sub_26A4E5DC4(319, &qword_2803A9230, MEMORY[0x277CDFA28]);
      if (v2 <= 0x3F)
      {
        sub_26A6DEAE8(319, &qword_2803A9240, MEMORY[0x277CE11C8], MEMORY[0x277D83D88]);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

unint64_t sub_26A6DD958()
{
  result = qword_2803B4320;
  if (!qword_2803B4320)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B4300);
    sub_26A6DDA10();
    sub_26A4DBCC8(qword_28157DD90, &qword_2803A91D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B4320);
  }

  return result;
}

unint64_t sub_26A6DDA10()
{
  result = qword_2803B4328;
  if (!qword_2803B4328)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B4330);
    sub_26A6DDA94();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B4328);
  }

  return result;
}

unint64_t sub_26A6DDA94()
{
  result = qword_2803B4338;
  if (!qword_2803B4338)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B4340);
    sub_26A6DDB4C();
    sub_26A4DBCC8(&qword_2803AF468, &qword_2803AF440);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B4338);
  }

  return result;
}

unint64_t sub_26A6DDB4C()
{
  result = qword_2803B4348;
  if (!qword_2803B4348)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B4350);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B4358);
    sub_26A6DDC40();
    swift_getOpaqueTypeConformance2();
    sub_26A4DBCC8(&qword_2803AE3F8, &qword_2803AE400);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B4348);
  }

  return result;
}

unint64_t sub_26A6DDC40()
{
  result = qword_2803B4360;
  if (!qword_2803B4360)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B4358);
    sub_26A4DBCC8(&qword_2803B4368, &qword_2803A99F0);
    sub_26A4DBA00();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B4360);
  }

  return result;
}

uint64_t sub_26A6DDD18(uint64_t a1)
{
  v2 = type metadata accessor for SectionHeaderRichView.Constants(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

__n128 sub_26A6DDDB4(__n128 a1, __n128 a2, uint64_t a3, uint64_t *a4)
{
  sub_26A84B1D8();
  OUTLINED_FUNCTION_15();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_41();
  v6 = OUTLINED_FUNCTION_6_50();
  v7 = type metadata accessor for SectionHeaderRichView.Constants(v6);
  __swift_allocate_value_buffer(v7, a4);
  v8 = __swift_project_value_buffer(v7, a4);
  v9 = OUTLINED_FUNCTION_13_32();
  v10(v9);
  if (qword_2803A9050 != -1)
  {
    swift_once();
  }

  sub_26A4DBD68(&unk_2803D28F0, v8 + v7[8], &qword_2803AA880);
  v11 = OUTLINED_FUNCTION_3_64(0x4024000000000000);
  v12(v11);
  *(v8 + v7[6]) = 0;
  *(v8 + v7[7]) = 1;
  v13 = (v8 + v7[9]);
  result = a2;
  *v13 = a1;
  v13[1] = a2;
  return result;
}

double sub_26A6DDF18()
{
  sub_26A84B1D8();
  OUTLINED_FUNCTION_15();
  MEMORY[0x28223BE20](v0);
  OUTLINED_FUNCTION_41();
  v1 = OUTLINED_FUNCTION_6_50();
  v2 = type metadata accessor for SectionHeaderRichView.Constants(v1);
  __swift_allocate_value_buffer(v2, qword_2803D2190);
  v3 = __swift_project_value_buffer(v2, qword_2803D2190);
  v4 = OUTLINED_FUNCTION_13_32();
  v5(v4);
  if (qword_28157E6C0 != -1)
  {
    swift_once();
  }

  sub_26A4DBD68(&unk_2815888E8, v3 + v2[8], &qword_2803AA880);
  v6 = OUTLINED_FUNCTION_3_64(0x4010000000000000);
  v7(v6);
  *(v3 + v2[6]) = 1;
  *(v3 + v2[7]) = 0;
  v8 = (v3 + v2[9]);
  result = 10.0;
  *v8 = xmmword_26A877350;
  v8[1] = xmmword_26A877360;
  return result;
}

uint64_t sub_26A6DE084@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (qword_2803A8D70 != -1)
  {
    swift_once();
  }

  v4 = __swift_project_value_buffer(a1, qword_2803D2160);

  return sub_26A6DEB38(v4, a2);
}

uint64_t sub_26A6DE16C@<X0>(uint64_t a1@<X0>, void *a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  if (*a2 != -1)
  {
    swift_once();
  }

  v7 = __swift_project_value_buffer(a1, a3);
  return sub_26A6DEB38(v7, a4);
}

uint64_t sub_26A6DE1D4()
{
  v58 = sub_26A84BAB8();
  OUTLINED_FUNCTION_15();
  v54 = v1;
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_41();
  v53 = (v4 - v3);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B3800);
  v6 = OUTLINED_FUNCTION_79(v5);
  MEMORY[0x28223BE20](v6);
  v8 = &v52 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v52 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AAD50);
  OUTLINED_FUNCTION_79(v12);
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_6_50();
  v14 = sub_26A84B888();
  OUTLINED_FUNCTION_15();
  v16 = v15;
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_41();
  v20 = v19 - v18;
  v21 = type metadata accessor for SectionHeaderRichView(0);
  v22 = OUTLINED_FUNCTION_79(v21);
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_41();
  v59 = v24 - v23;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AACF0);
  OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v25);
  v27 = &v52 - v26;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AACF8);
  OUTLINED_FUNCTION_46();
  MEMORY[0x28223BE20](v28);
  v56 = &v52 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30);
  v32 = &v52 - v31;
  sub_26A84C4F8();
  v33 = TextProperty.asAnyView()();
  (*(v16 + 8))(v20, v14);
  v61[3] = MEMORY[0x277CE11C8];
  v61[4] = &protocol witness table for AnyView;
  v61[0] = v33;
  sub_26A84C518();
  v34 = sub_26A84BD28();
  if (__swift_getEnumTagSinglePayload(v0, 1, v34) == 1)
  {
    sub_26A4DBD10(v0, &qword_2803AAD50);
    v35 = 0;
    v36 = 0;
    v37 = 0;
    v60[1] = 0;
    v60[2] = 0;
  }

  else
  {
    v35 = VisualProperty.asAnyView()();
    (*(*(v34 - 8) + 8))(v0, v34);
    v37 = &protocol witness table for AnyView;
    v36 = MEMORY[0x277CE11C8];
  }

  v60[0] = v35;
  v60[3] = v36;
  v60[4] = v37;
  SectionHeaderRichView.init(text1:thumbnail:)(v61, v60, v59);
  sub_26A84C508();
  sub_26A4DBDB4(v11, v8, &qword_2803B3800);
  v38 = v58;
  if (__swift_getEnumTagSinglePayload(v8, 1, v58) == 1)
  {
    sub_26A4DBD10(v8, &qword_2803B3800);
    KeyPath = swift_getKeyPath();
    v40 = &v27[*(v55 + 36)];
    v41 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803B36A0) + 28);
    v42 = type metadata accessor for ActionType();
    __swift_storeEnumTagSinglePayload(v40 + v41, 1, 1, v42);
    *v40 = KeyPath;
  }

  else
  {
    v43 = v53;
    v44 = *(v54 + 32);
    v44(v53, v8, v38);
    v45 = swift_getKeyPath();
    v46 = &v27[*(v55 + 36)];
    v47 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803B36A0) + 28);
    v44(v46 + v47, v43, v38);
    v48 = type metadata accessor for ActionType();
    swift_storeEnumTagMultiPayload();
    __swift_storeEnumTagSinglePayload(v46 + v47, 0, 1, v48);
    *v46 = v45;
  }

  sub_26A6DCAB0(v59, v27);
  v49 = sub_26A84C4D8();
  sub_26A4DD174(v49);

  sub_26A4DBD10(v27, &qword_2803AACF0);
  sub_26A4DBD68(v32, v56, &qword_2803AACF8);
  sub_26A6DE77C();
  v50 = sub_26A851248();
  sub_26A4DBD10(v32, &qword_2803AACF8);
  return v50;
}

unint64_t sub_26A6DE77C()
{
  result = qword_2803B4380;
  if (!qword_2803B4380)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803AACF8);
    sub_26A6DE834();
    sub_26A4DBCC8(&qword_28157FB60, &qword_2803A9438);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B4380);
  }

  return result;
}

unint64_t sub_26A6DE834()
{
  result = qword_2803B4388;
  if (!qword_2803B4388)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803AACE8);
    sub_26A6DE8C0();
    sub_26A4D31BC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B4388);
  }

  return result;
}

unint64_t sub_26A6DE8C0()
{
  result = qword_2803B4390;
  if (!qword_2803B4390)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803AACF0);
    sub_26A6DE9A8(&qword_2803B4398, type metadata accessor for SectionHeaderRichView);
    sub_26A4DBCC8(&qword_2803AA878, &unk_2803B36A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B4390);
  }

  return result;
}

uint64_t sub_26A6DE9A8(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_26A6DEA18()
{
  sub_26A84B1D8();
  if (v0 <= 0x3F)
  {
    sub_26A6DEAE8(319, &qword_2803B15D8, &type metadata for TextAppearance, type metadata accessor for EnvironmentDependent);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_26A6DEAE8(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_26A6DEB38(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SectionHeaderRichView.Constants(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t type metadata accessor for TableCellDelayedLoadImageView()
{
  result = qword_2803B43B0;
  if (!qword_2803B43B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_26A6DEC60()
{
  sub_26A4EEA70();
  if (v0 <= 0x3F)
  {
    sub_26A84BD28();
    if (v1 <= 0x3F)
    {
      sub_26A6B4AF8();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

double sub_26A6DED18()
{
  v1 = sub_26A84F988();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for ImageStyleAppearance();
  MEMORY[0x28223BE20](v5 - 8);
  v7 = (&v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_2803A8E90 != -1)
  {
    swift_once();
  }

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803ABFF0);
  __swift_project_value_buffer(v8, qword_2803D2468);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AADE0);
  inited = swift_initStackObject();
  v16 = xmmword_26A8570D0;
  *(inited + 16) = xmmword_26A8570D0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AE000);
  v10 = swift_initStackObject();
  *(v10 + 16) = v16;
  v11 = *v0;
  if ((*(v0 + 8) & 1) == 0)
  {

    sub_26A851EA8();
    v12 = sub_26A8501F8();
    sub_26A84EA78();

    sub_26A84F978();
    swift_getAtKeyPath();
    sub_26A4D82E8(v11, 0);
    (*(v2 + 8))(v4, v1);
    v11 = v17;
  }

  *(v10 + 32) = v11;
  sub_26A621958(v10);
  *(inited + 32) = v13;
  *(inited + 40) = 0;
  sub_26A584A6C();
  swift_setDeallocating();
  sub_26A7A0C68();
  v14 = v7[1];
  sub_26A6DF64C(v7, type metadata accessor for ImageStyleAppearance);
  return v14;
}

uint64_t sub_26A6DEFC4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v28 = a2;
  ImageView = type metadata accessor for TableCellDelayedLoadImageView();
  v4 = *(ImageView - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](ImageView);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B43C0);
  MEMORY[0x28223BE20](v6);
  v8 = (&v28 - v7);
  v9 = type metadata accessor for VisualPropertyView();
  MEMORY[0x28223BE20](v9);
  v11 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = a1 + *(ImageView + 24);
  v13 = *v12;
  v14 = *(v12 + 8);
  LOBYTE(v29) = v13;
  v30 = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AC190);
  sub_26A851058();
  if (v35 == 1)
  {
    v15 = *(ImageView + 20);
    v16 = sub_26A84BD28();
    (*(*(v16 - 8) + 16))(v11, a1 + v15, v16);
    v17 = &v11[v9[5]];
    *v17 = swift_getKeyPath();
    v17[9] = 0;
    swift_unknownObjectWeakInit();
    v18 = &v11[v9[6]];
    *v18 = swift_getKeyPath();
    v18[8] = 0;
    v19 = &v11[v9[7]];
    *v19 = swift_getKeyPath();
    v19[8] = 0;
    v20 = v9[8];
    *&v11[v20] = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803A93D0);
    swift_storeEnumTagMultiPayload();
    v21 = &v11[v9[9]];
    LOBYTE(v35) = 0;
    sub_26A851048();
    v22 = v30;
    *v21 = v29;
    *(v21 + 1) = v22;
    sub_26A6DF5EC(v11, v8, type metadata accessor for VisualPropertyView);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B06C8);
    sub_26A6DF594();
    sub_26A601788();
    sub_26A84FDF8();
    return sub_26A6DF64C(v11, type metadata accessor for VisualPropertyView);
  }

  else
  {
    v24 = sub_26A850DF8();
    sub_26A6DED18();
    sub_26A6DED18();
    sub_26A851448();
    sub_26A84F028();
    v29 = v24;
    v30 = v35;
    v31 = v36;
    v32 = v37;
    v33 = v38;
    v34 = v39;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AF268);
    sub_26A5BE4CC();
    v25 = sub_26A851248();
    sub_26A6DF5EC(a1, &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for TableCellDelayedLoadImageView);
    v26 = (*(v4 + 80) + 16) & ~*(v4 + 80);
    v27 = swift_allocObject();
    sub_26A6DF4D0(&v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v27 + v26);
    *v8 = v25;
    v8[1] = sub_26A6DF534;
    v8[2] = v27;
    v8[3] = 0;
    v8[4] = 0;
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B06C8);
    sub_26A6DF594();
    sub_26A601788();
    return sub_26A84FDF8();
  }
}

uint64_t sub_26A6DF458()
{
  type metadata accessor for TableCellDelayedLoadImageView();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AC190);
  return sub_26A851068();
}

uint64_t sub_26A6DF4D0(uint64_t a1, uint64_t a2)
{
  ImageView = type metadata accessor for TableCellDelayedLoadImageView();
  (*(*(ImageView - 8) + 32))(a2, a1, ImageView);
  return a2;
}

uint64_t sub_26A6DF534()
{
  type metadata accessor for TableCellDelayedLoadImageView();

  return sub_26A6DF458();
}

unint64_t sub_26A6DF594()
{
  result = qword_28157E9E0;
  if (!qword_28157E9E0)
  {
    type metadata accessor for VisualPropertyView();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28157E9E0);
  }

  return result;
}

uint64_t sub_26A6DF5EC(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_46();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_26A6DF64C(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_46();
  (*(v3 + 8))(a1);
  return a1;
}

unint64_t sub_26A6DF6A4()
{
  result = qword_2803B43C8;
  if (!qword_2803B43C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B43D0);
    sub_26A6DF728();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B43C8);
  }

  return result;
}

unint64_t sub_26A6DF728()
{
  result = qword_2803B43D8;
  if (!qword_2803B43D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B43E0);
    sub_26A6DF594();
    sub_26A601788();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B43D8);
  }

  return result;
}

uint64_t sub_26A6DF7B4@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_26A84F988();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB430);
  MEMORY[0x28223BE20](v8);
  v10 = &v14 - v9;
  sub_26A4DBD68(v2, &v14 - v9, &qword_2803AB430);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_26A84EE68();
    return (*(*(v11 - 8) + 32))(a1, v10, v11);
  }

  else
  {
    sub_26A851EA8();
    v13 = sub_26A8501F8();
    sub_26A84EA78();

    sub_26A84F978();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v7, v4);
  }
}

uint64_t ControlView.init(control:controlType:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = OUTLINED_FUNCTION_58_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(v6);
  OUTLINED_FUNCTION_46();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_6_0();
  v10 = v8 - v9;
  MEMORY[0x28223BE20](v11);
  v13 = &v17 - v12;
  *a3 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB430);
  swift_storeEnumTagMultiPayload();
  v14 = type metadata accessor for ControlView();
  v15 = sub_26A84E7F8();
  __swift_storeEnumTagSinglePayload(v13, 1, 1, v15);
  sub_26A4DBD68(v13, v10, &qword_2803B43E8);
  OUTLINED_FUNCTION_13_9();
  sub_26A851048();
  result = sub_26A4DBD10(v13, &qword_2803B43E8);
  *(a3 + *(v14 + 24)) = a1;
  *(a3 + *(v14 + 28)) = a2;
  return result;
}

uint64_t type metadata accessor for ControlView()
{
  result = qword_2803B4420;
  if (!qword_2803B4420)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t ControlView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v50 = a1;
  v2 = type metadata accessor for ControlView();
  v47 = *(v2 - 8);
  MEMORY[0x28223BE20](v2 - 8);
  v48 = v3;
  v49 = &v45 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_26A84EE68();
  OUTLINED_FUNCTION_15();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_6_0();
  v10 = v8 - v9;
  MEMORY[0x28223BE20](v11);
  v13 = &v45 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B43F0);
  OUTLINED_FUNCTION_79(v14);
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v15);
  v17 = &v45 - v16;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B43F8);
  OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v18);
  v20 = &v45 - v19;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B4400);
  OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v21);
  v23 = &v45 - v22;
  *v17 = sub_26A84FBF8();
  *(v17 + 1) = 0;
  v17[16] = 0;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B4408);
  sub_26A6DFF70(&v17[*(v24 + 44)]);
  v25 = v1;
  sub_26A6DF7B4(v13);
  (*(v6 + 104))(v10, *MEMORY[0x277CDF3C0], v4);
  v26 = sub_26A84EE58();
  v27 = *(v6 + 8);
  v27(v10, v4);
  v27(v13, v4);
  if (v26)
  {
    v28 = sub_26A850DD8();
  }

  else
  {
    v28 = sub_26A850E18();
  }

  v29 = v28;
  v30 = sub_26A850248();
  sub_26A4DBDB4(v17, v20, &qword_2803B43F0);
  v31 = &v20[*(v45 + 36)];
  *v31 = v29;
  v31[8] = v30;
  v32 = v25;
  v33 = v25;
  v34 = v49;
  sub_26A6E0C78(v33, v49);
  v35 = (*(v47 + 80) + 16) & ~*(v47 + 80);
  v36 = swift_allocObject();
  sub_26A6E0CDC(v34, v36 + v35);
  v37 = &v23[*(v46 + 36)];
  sub_26A84F198();
  sub_26A851BF8();
  *v37 = &unk_26A877790;
  *(v37 + 1) = v36;
  v38 = OUTLINED_FUNCTION_13_9();
  sub_26A4DBDB4(v38, v39, v40);
  sub_26A6E0C78(v32, v34);
  v41 = swift_allocObject();
  sub_26A6E0CDC(v34, v41 + v35);
  v42 = v50;
  sub_26A4DBDB4(v23, v50, &qword_2803B4400);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B4418);
  v44 = (v42 + *(result + 36));
  *v44 = 0;
  v44[1] = 0;
  v44[2] = sub_26A6E1174;
  v44[3] = v41;
  return result;
}

uint64_t sub_26A6DFF70@<X0>(uint64_t a1@<X8>)
{
  v56 = a1;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B4500);
  MEMORY[0x28223BE20](v48);
  v47 = &v42 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v46 = &v42 - v3;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B4508);
  MEMORY[0x28223BE20](v55);
  v49 = (&v42 - v4);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B4510);
  MEMORY[0x28223BE20](v5);
  v7 = &v42 - v6;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B4518);
  MEMORY[0x28223BE20](v52);
  v53 = &v42 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B4520);
  MEMORY[0x28223BE20](v9);
  v54 = &v42 - v10;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B4528);
  MEMORY[0x28223BE20](v50);
  v12 = &v42 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v42 - v14;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B4530);
  MEMORY[0x28223BE20](v51);
  v17 = (&v42 - v16);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B43E8);
  MEMORY[0x28223BE20](v18 - 8);
  v20 = (&v42 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v21);
  v23 = &v42 - v22;
  type metadata accessor for ControlView();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B4410);
  sub_26A851058();
  v24 = sub_26A84E7F8();
  if (__swift_getEnumTagSinglePayload(v23, 1, v24) == 1)
  {
    goto LABEL_2;
  }

  v43 = v9;
  v44 = v7;
  v45 = v5;
  sub_26A4DBD68(v23, v20, &qword_2803B43E8);
  v26 = *(v24 - 8);
  v27 = (*(v26 + 88))(v20, v24);
  if (v27 == *MEMORY[0x277CFA478])
  {
    (*(v26 + 96))(v20, v24);
    v57 = *v20;
    sub_26A84E978();
    sub_26A6E30D8(&qword_2803B4558, MEMORY[0x277CFA4D0]);
    sub_26A84E9A8();
    v28 = v57;
    *v17 = v57;
    v49 = v28;
    v29 = v51;
    v30 = sub_26A84E968();
    __swift_storeEnumTagSinglePayload(v15, 1, 1, v30);
    sub_26A4DBD68(v15, v12, &qword_2803B4528);

    sub_26A851048();
    sub_26A4DBD10(v15, &qword_2803B4528);
    v31 = (v17 + *(v29 + 56));
    *v31 = sub_26A6E08E8;
    v31[1] = 0;
    sub_26A4DBD68(v17, v53, &qword_2803B4530);
    swift_storeEnumTagMultiPayload();
    sub_26A4DBCC8(&qword_2803B4540, &qword_2803B4530);
    sub_26A4DBCC8(&qword_2803B4548, &qword_2803B4508);
    v32 = v54;
    sub_26A84FDF8();
    sub_26A4DBD68(v32, v44, &qword_2803B4520);
    swift_storeEnumTagMultiPayload();
    sub_26A6E2FF8();
    sub_26A84FDF8();
    sub_26A4DBD10(v32, &qword_2803B4520);
    sub_26A4DBD10(v17, &qword_2803B4530);
LABEL_7:

    return sub_26A4DBD10(v23, &qword_2803B43E8);
  }

  if (v27 == *MEMORY[0x277CFA470])
  {
    (*(v26 + 96))(v20, v24);
    v57 = *v20;
    sub_26A84E8C8();
    sub_26A6E30D8(&qword_2803B4550, MEMORY[0x277CFA4B8]);
    sub_26A84E9A8();
    v33 = v49;
    *v49 = v57;
    v34 = v55;
    v35 = sub_26A84E8B8();
    v36 = v46;
    __swift_storeEnumTagSinglePayload(v46, 1, 1, v35);
    sub_26A4DBD68(v36, v47, &qword_2803B4500);

    sub_26A851048();
    sub_26A4DBD10(v36, &qword_2803B4500);
    v37 = (v33 + *(v34 + 56));
    *v37 = sub_26A6E09C8;
    v37[1] = 0;
    sub_26A4DBD68(v33, v53, &qword_2803B4508);
    swift_storeEnumTagMultiPayload();
    sub_26A4DBCC8(&qword_2803B4540, &qword_2803B4530);
    sub_26A4DBCC8(&qword_2803B4548, &qword_2803B4508);
    v38 = v54;
    sub_26A84FDF8();
    sub_26A4DBD68(v38, v44, &qword_2803B4520);
    swift_storeEnumTagMultiPayload();
    sub_26A6E2FF8();
    sub_26A84FDF8();
    sub_26A4DBD10(v38, &qword_2803B4520);
    sub_26A4DBD10(v33, &qword_2803B4508);
    goto LABEL_7;
  }

  (*(v26 + 8))(v20, v24);
LABEL_2:
  v25 = sub_26A851E98();
  LOBYTE(v40) = 2;
  sub_26A7C33DC(v25, 1, "SnippetUI/ControlView.swift", 27, 2, 44, "body", 4, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53);
  swift_storeEnumTagMultiPayload();
  sub_26A6E2FF8();
  sub_26A84FDF8();
  return sub_26A4DBD10(v23, &qword_2803B43E8);
}

uint64_t sub_26A6E08E8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = sub_26A84E968();
  v7 = MEMORY[0x28223BE20](v6);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *a2;
  (*(v11 + 16))(v9, a1, v7);

  return sub_26A7FF128(v9, v10, a3);
}

uint64_t sub_26A6E09C8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = *a2;
  v6 = type metadata accessor for PickerControlView(0);
  v7 = *(v6 + 20);
  v8 = sub_26A84E8B8();
  (*(*(v8 - 8) + 16))(a3 + v7, a1, v8);
  *a3 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B4560);
  swift_storeEnumTagMultiPayload();
  *(a3 + *(v6 + 24)) = v5;
}

uint64_t sub_26A6E0A9C(uint64_t a1)
{
  v1[2] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B43E8);
  v1[3] = swift_task_alloc();
  v1[4] = swift_task_alloc();
  sub_26A851BD8();
  v1[5] = sub_26A851BC8();
  v3 = sub_26A851B78();

  return MEMORY[0x2822009F8](sub_26A6E0B78, v3, v2);
}

uint64_t sub_26A6E0B78()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 24);

  type metadata accessor for ControlView();
  sub_26A84E988();
  sub_26A4DBD68(v1, v2, &qword_2803B43E8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B4410);
  sub_26A851068();
  sub_26A4DBD10(v1, &qword_2803B43E8);

  OUTLINED_FUNCTION_2_9();

  return v3();
}

uint64_t sub_26A6E0C78(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ControlView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_26A6E0CDC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ControlView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_26A6E0D40()
{
  v2 = type metadata accessor for ControlView();
  OUTLINED_FUNCTION_79(v2);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  swift_task_alloc();
  OUTLINED_FUNCTION_16_23();
  *(v1 + 16) = v5;
  *v5 = v6;
  v5[1] = sub_26A6E0E04;

  return sub_26A6E0A9C(v0 + v4);
}

uint64_t sub_26A6E0E04()
{
  v1 = *v0;
  OUTLINED_FUNCTION_0_12();
  *v2 = v1;

  OUTLINED_FUNCTION_2_9();

  return v3();
}

uint64_t sub_26A6E0EEC()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B43E8);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v8 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v5 = &v8 - v4;
  v6 = sub_26A84E7F8();
  __swift_storeEnumTagSinglePayload(v5, 1, 1, v6);
  type metadata accessor for ControlView();
  sub_26A4DBD68(v5, v2, &qword_2803B43E8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B4410);
  sub_26A851068();
  return sub_26A4DBD10(v5, &qword_2803B43E8);
}

uint64_t objectdestroyTm_23()
{
  type metadata accessor for ControlView();
  OUTLINED_FUNCTION_37_0();
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB430);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_26A84EE68();
    OUTLINED_FUNCTION_46();
    (*(v4 + 8))(v1 + v3);
  }

  else
  {
  }

  v5 = sub_26A84E7F8();
  if (!OUTLINED_FUNCTION_9_44(v5))
  {
    OUTLINED_FUNCTION_16_10();
    v6 = OUTLINED_FUNCTION_58_1();
    v7(v6);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B4410);

  return swift_deallocObject();
}

uint64_t sub_26A6E1174()
{
  v0 = type metadata accessor for ControlView();
  OUTLINED_FUNCTION_79(v0);

  return sub_26A6E0EEC();
}

void sub_26A6E1218()
{
  sub_26A5B96FC();
  if (v0 <= 0x3F)
  {
    sub_26A6E12CC();
    if (v1 <= 0x3F)
    {
      sub_26A6E1330();
      if (v2 <= 0x3F)
      {
        type metadata accessor for CHSControlType();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_26A6E12CC()
{
  if (!qword_2803B4430)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B43E8);
    v0 = sub_26A851088();
    if (!v1)
    {
      atomic_store(v0, &qword_2803B4430);
    }
  }
}

unint64_t sub_26A6E1330()
{
  result = qword_2803B4438;
  if (!qword_2803B4438)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2803B4438);
  }

  return result;
}

unint64_t sub_26A6E1374()
{
  result = qword_2803B4440;
  if (!qword_2803B4440)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B4418);
    sub_26A6E1400();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B4440);
  }

  return result;
}

unint64_t sub_26A6E1400()
{
  result = qword_2803B4448;
  if (!qword_2803B4448)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B4400);
    sub_26A6E14BC();
    sub_26A6E30D8(&qword_2803A91E8, MEMORY[0x277CDD8B0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B4448);
  }

  return result;
}

unint64_t sub_26A6E14BC()
{
  result = qword_2803B4450;
  if (!qword_2803B4450)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B43F8);
    sub_26A4DBCC8(qword_2803B4458, &qword_2803B43F0);
    sub_26A4DBCC8(&qword_2803ADC60, &qword_2803ADC68);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B4450);
  }

  return result;
}

unint64_t sub_26A6E15A0()
{
  v0 = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_getAssociatedTypeWitness();
    sub_26A852068();
    v0 = sub_26A851088();
    if (v2 <= 0x3F)
    {
      v0 = sub_26A5046B4();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return v0;
}

uint64_t sub_26A6E167C(int *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 84);
  result = swift_getAssociatedTypeWitness();
  v9 = *(result - 8);
  v10 = *(v9 + 84);
  if (v10)
  {
    v11 = v10 - 1;
  }

  else
  {
    v11 = 0;
  }

  if (v11 <= v7)
  {
    v12 = v7;
  }

  else
  {
    v12 = v11;
  }

  if (v12 <= 0x7FFFFFFF)
  {
    v12 = 0x7FFFFFFF;
  }

  v13 = 7;
  if (!v10)
  {
    v13 = 8;
  }

  if (!a2)
  {
    return 0;
  }

  v14 = result;
  v15 = *(v9 + 80) & 0xF8 | 7;
  v16 = *(v6 + 64) + v15;
  v17 = (v13 + *(*(result - 8) + 64)) & 0xFFFFFFFFFFFFFFF8;
  if (v12 >= a2)
  {
LABEL_32:
    if (v7 == v12)
    {

      return __swift_getEnumTagSinglePayload(a1, v7, v5);
    }

    else
    {
      v25 = (a1 + v16) & ~v15;
      if (v11 == v12)
      {
        EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v25, v10, v14);
        if (EnumTagSinglePayload >= 2)
        {
          return EnumTagSinglePayload - 1;
        }

        else
        {
          return 0;
        }
      }

      else
      {
        v27 = *(v25 + v17 + 8);
        if (v27 >= 0xFFFFFFFF)
        {
          LODWORD(v27) = -1;
        }

        return (v27 + 1);
      }
    }
  }

  else
  {
    v18 = v17 + (v16 & ~v15) + 24;
    v19 = v18 & 0xFFFFFFF8;
    if ((v18 & 0xFFFFFFF8) != 0)
    {
      v20 = 2;
    }

    else
    {
      v20 = a2 - v12 + 1;
    }

    if (v20 >= 0x10000)
    {
      LODWORD(v21) = 4;
    }

    else
    {
      LODWORD(v21) = 2;
    }

    if (v20 < 0x100)
    {
      LODWORD(v21) = 1;
    }

    if (v20 >= 2)
    {
      v21 = v21;
    }

    else
    {
      v21 = 0;
    }

    switch(v21)
    {
      case 1:
        v22 = *(a1 + v18);
        if (!v22)
        {
          goto LABEL_32;
        }

        goto LABEL_29;
      case 2:
        v22 = *(a1 + v18);
        if (!v22)
        {
          goto LABEL_32;
        }

        goto LABEL_29;
      case 3:
        __break(1u);
        return result;
      case 4:
        v22 = *(a1 + v18);
        if (!v22)
        {
          goto LABEL_32;
        }

LABEL_29:
        v23 = v22 - 1;
        if (v19)
        {
          v23 = 0;
          v24 = *a1;
        }

        else
        {
          v24 = 0;
        }

        result = v12 + (v24 | v23) + 1;
        break;
      default:
        goto LABEL_32;
    }
  }

  return result;
}

void sub_26A6E18D4(_DWORD *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = *(a4 + 16);
  v8 = *(v7 - 8);
  v9 = *(v8 + 84);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11 = *(AssociatedTypeWitness - 8);
  v12 = *(v11 + 84);
  if (v12)
  {
    v13 = v12 - 1;
  }

  else
  {
    v13 = 0;
  }

  if (v13 <= v9)
  {
    v14 = v9;
  }

  else
  {
    v14 = v13;
  }

  if (v14 <= 0x7FFFFFFF)
  {
    v14 = 0x7FFFFFFF;
  }

  v15 = *(v11 + 80) & 0xF8 | 7;
  v16 = *(v8 + 64) + v15;
  v17 = *(*(AssociatedTypeWitness - 8) + 64);
  if (!v12)
  {
    ++v17;
  }

  v18 = (v17 + 7) & 0xFFFFFFFFFFFFFFF8;
  v19 = v18 + (v16 & ~v15) + 24;
  if (v18 + (v16 & ~(*(v11 + 80) & 0xF8 | 7)) == -24)
  {
    v20 = a3 - v14 + 1;
  }

  else
  {
    v20 = 2;
  }

  if (v20 >= 0x10000)
  {
    v21 = 4;
  }

  else
  {
    v21 = 2;
  }

  if (v20 < 0x100)
  {
    v21 = 1;
  }

  if (v20 >= 2)
  {
    v22 = v21;
  }

  else
  {
    v22 = 0;
  }

  if (v14 < a3)
  {
    v23 = v22;
  }

  else
  {
    v23 = 0;
  }

  if (a2 <= v14)
  {
    v26 = ~v15;
    v27 = v18 + 8;
    v28 = AssociatedTypeWitness;
    switch(v23)
    {
      case 1:
        *(a1 + v19) = 0;
        if (a2)
        {
          goto LABEL_40;
        }

        return;
      case 2:
        *(a1 + v19) = 0;
        if (a2)
        {
          goto LABEL_40;
        }

        return;
      case 3:
LABEL_53:
        __break(1u);
        return;
      case 4:
        *(a1 + v19) = 0;
        goto LABEL_39;
      default:
LABEL_39:
        if (!a2)
        {
          return;
        }

LABEL_40:
        if (v9 == v14)
        {
          v29 = a1;
          v30 = a2;
          v12 = v9;
          v28 = v7;
        }

        else
        {
          v29 = (a1 + v16) & v26;
          if (v13 != v14)
          {
            if ((a2 & 0x80000000) != 0)
            {
              v31 = (v27 + v29);
              *v31 = a2 & 0x7FFFFFFF;
              v31[1] = 0;
            }

            else
            {
              *(v29 + v27) = (a2 - 1);
            }

            return;
          }

          v30 = (a2 + 1);
        }

        __swift_storeEnumTagSinglePayload(v29, v30, v12, v28);
        break;
    }
  }

  else
  {
    if (v18 + (v16 & ~(*(v11 + 80) & 0xF8 | 7)) == -24)
    {
      v24 = a2 - v14;
    }

    else
    {
      v24 = 1;
    }

    if (v18 + (v16 & ~(*(v11 + 80) & 0xF8 | 7)) != -24)
    {
      v25 = ~v14 + a2;
      bzero(a1, v19);
      *a1 = v25;
    }

    switch(v23)
    {
      case 1:
        *(a1 + v19) = v24;
        break;
      case 2:
        *(a1 + v19) = v24;
        break;
      case 3:
        goto LABEL_53;
      case 4:
        *(a1 + v19) = v24;
        break;
      default:
        return;
    }
  }
}

uint64_t sub_26A6E1BCC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v52 = a2;
  sub_26A851C18();
  OUTLINED_FUNCTION_15();
  v50 = v5;
  v51 = v4;
  MEMORY[0x28223BE20](v4);
  v49 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v9);
  v45 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B44E0);
  v42 = *(a1 + 24);
  v10 = v42;
  sub_26A84FE08();
  v11 = sub_26A850ED8();
  OUTLINED_FUNCTION_15();
  v47 = v12;
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v13);
  v43 = &v40 - v14;
  sub_26A84F198();
  v15 = sub_26A84F4F8();
  OUTLINED_FUNCTION_15();
  v48 = v16;
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_6_0();
  v44 = v18 - v19;
  MEMORY[0x28223BE20](v20);
  v46 = &v40 - v21;
  v22 = *(a1 + 16);
  *&v23 = v22;
  *(&v23 + 1) = v10;
  v40 = v23;
  v55 = v2;
  v60 = sub_26A6E2CD0();
  v41 = *(a1 + 32);
  v53 = v40;
  v54 = v41;
  v59 = *(&v41 + 1);
  OUTLINED_FUNCTION_6_14();
  WitnessTable = swift_getWitnessTable();
  sub_26A850EC8();
  v25 = v45;
  (*(v7 + 16))(v45, v2, a1);
  v26 = (*(v7 + 80) + 48) & ~*(v7 + 80);
  v27 = swift_allocObject();
  v28 = v42;
  *(v27 + 16) = v22;
  *(v27 + 24) = v28;
  *(v27 + 32) = v41;
  (*(v7 + 32))(v27 + v26, v25, a1);
  v58 = WitnessTable;
  OUTLINED_FUNCTION_6_51();
  v29 = swift_getWitnessTable();
  v30 = v49;
  sub_26A851BF8();
  v31 = v44;
  v32 = v43;
  sub_26A850BB8();

  (*(v50 + 8))(v30, v51);
  (*(v47 + 8))(v32, v11);
  OUTLINED_FUNCTION_5_60();
  v35 = sub_26A6E30D8(v33, v34);
  v56 = v29;
  v57 = v35;
  OUTLINED_FUNCTION_58();
  swift_getWitnessTable();
  sub_26A80757C(v31);
  v36 = *(v48 + 8);
  v36(v31, v15);
  v37 = OUTLINED_FUNCTION_58_1();
  sub_26A80757C(v37);
  v38 = OUTLINED_FUNCTION_58_1();
  return (v36)(v38);
}

uint64_t sub_26A6E205C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v48 = a6;
  v49 = a5;
  v42 = *(a3 - 8);
  v43 = a1;
  MEMORY[0x28223BE20](a1);
  v10 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v41 = &v39 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B44E0);
  MEMORY[0x28223BE20](v13);
  v15 = &v39 - v14;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v17 = sub_26A852068();
  v39 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v19 = &v39 - v18;
  v40 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](v20);
  v22 = &v39 - v21;
  v47 = v13;
  v23 = sub_26A84FE08();
  v45 = *(v23 - 8);
  v46 = v23;
  MEMORY[0x28223BE20](v23);
  v44 = &v39 - v24;
  *&v52 = a2;
  *(&v52 + 1) = a3;
  *&v53 = a4;
  *(&v53 + 1) = v49;
  v25 = type metadata accessor for ControlLoadingView();
  sub_26A851088();
  v26 = v43;
  sub_26A851058();
  if (__swift_getEnumTagSinglePayload(v19, 1, AssociatedTypeWitness) == 1)
  {
    (*(v39 + 8))(v19, v17);
    sub_26A84EF98();
    v27 = sub_26A850248();
    v28 = &v15[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B44F8) + 36)];
    *v28 = v27;
    *(v28 + 8) = 0u;
    *(v28 + 24) = 0u;
    v28[40] = 1;
    sub_26A851448();
    sub_26A84F028();
    v29 = &v15[*(v47 + 36)];
    v30 = v53;
    *v29 = v52;
    *(v29 + 1) = v30;
    *(v29 + 2) = v54;
    sub_26A6E2CD0();
    v31 = v44;
    v32 = v49;
    sub_26A8012F4();
    sub_26A4DBD10(v15, &qword_2803B44E0);
  }

  else
  {
    v33 = v40;
    (*(v40 + 32))(v22, v19, AssociatedTypeWitness);
    (*(v26 + *(v25 + 56)))(v22, v26);
    v34 = v41;
    v32 = v49;
    sub_26A80757C(v10);
    v35 = *(v42 + 8);
    v35(v10, a3);
    sub_26A80757C(v34);
    sub_26A6E2CD0();
    v31 = v44;
    sub_26A801234();
    v35(v10, a3);
    v35(v34, a3);
    (*(v33 + 8))(v22, AssociatedTypeWitness);
  }

  v36 = sub_26A6E2CD0();
  v50 = v32;
  v51 = v36;
  v37 = v46;
  swift_getWitnessTable();
  sub_26A80757C(v31);
  return (*(v45 + 8))(v31, v37);
}

uint64_t sub_26A6E25A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[9] = a4;
  v5[10] = a5;
  v5[7] = a2;
  v5[8] = a3;
  v5[6] = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5[11] = AssociatedTypeWitness;
  v5[12] = *(AssociatedTypeWitness - 8);
  v5[13] = swift_task_alloc();
  v7 = sub_26A852068();
  v5[14] = v7;
  v5[15] = *(v7 - 8);
  v5[16] = swift_task_alloc();
  v5[17] = swift_task_alloc();
  v5[18] = swift_task_alloc();
  v8 = sub_26A851C58();
  v5[19] = v8;
  v5[20] = *(v8 - 8);
  v5[21] = swift_task_alloc();
  v9 = sub_26A851C48();
  v5[22] = v9;
  v5[23] = *(v9 - 8);
  v5[24] = swift_task_alloc();
  v5[25] = sub_26A851BD8();
  v5[26] = sub_26A851BC8();
  v11 = sub_26A851B78();
  v5[27] = v11;
  v5[28] = v10;

  return MEMORY[0x2822009F8](sub_26A6E2808, v11, v10);
}

uint64_t sub_26A6E2808()
{
  v2 = v0[20];
  v1 = v0[21];
  v3 = v0[19];
  OUTLINED_FUNCTION_13_9();
  sub_26A84E9C8();
  OUTLINED_FUNCTION_13_9();
  sub_26A84E9B8();
  sub_26A851C28();
  (*(v2 + 8))(v1, v3);
  v4 = sub_26A851BC8();
  v0[29] = v4;
  swift_task_alloc();
  OUTLINED_FUNCTION_16_23();
  v0[30] = v5;
  *v5 = v6;
  v7 = OUTLINED_FUNCTION_2_73(v5);
  v8 = MEMORY[0x277D85700];

  return MEMORY[0x2822003E8](v7, v4, v8);
}

uint64_t sub_26A6E2904()
{
  v1 = *v0;
  v2 = *v0;
  OUTLINED_FUNCTION_0_12();
  *v3 = v2;

  v4 = *(v1 + 224);
  v5 = *(v1 + 216);

  return MEMORY[0x2822009F8](sub_26A6E2A40, v5, v4);
}

uint64_t sub_26A6E2A40()
{
  v1 = *(v0 + 144);
  v2 = *(v0 + 88);
  if (__swift_getEnumTagSinglePayload(v1, 1, v2) == 1)
  {
    (*(*(v0 + 184) + 8))(*(v0 + 192), *(v0 + 176));

    sub_26A84E998();

    OUTLINED_FUNCTION_2_9();

    return v3();
  }

  else
  {
    (*(*(v0 + 96) + 32))(*(v0 + 104), v1, v2);
    if ((sub_26A851C88() & 1) == 0)
    {
      v6 = *(v0 + 128);
      v5 = *(v0 + 136);
      v7 = *(v0 + 112);
      v8 = *(v0 + 120);
      v9 = *(v0 + 88);
      v15 = *(v0 + 72);
      v16 = *(v0 + 56);
      (*(*(v0 + 96) + 16))(v5, *(v0 + 104), v9);
      __swift_storeEnumTagSinglePayload(v5, 0, 1, v9);
      *(v0 + 16) = v16;
      *(v0 + 32) = v15;
      type metadata accessor for ControlLoadingView();
      (*(v8 + 16))(v6, v5, v7);
      sub_26A851088();
      sub_26A851068();
      (*(v8 + 8))(v5, v7);
    }

    (*(*(v0 + 96) + 8))(*(v0 + 104), *(v0 + 88));
    v10 = sub_26A851BC8();
    *(v0 + 232) = v10;
    swift_task_alloc();
    OUTLINED_FUNCTION_16_23();
    *(v0 + 240) = v11;
    *v11 = v12;
    v13 = OUTLINED_FUNCTION_2_73();
    v14 = MEMORY[0x277D85700];

    return MEMORY[0x2822003E8](v13, v10, v14);
  }
}

unint64_t sub_26A6E2CD0()
{
  result = qword_2803B44E8;
  if (!qword_2803B44E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B44E0);
    sub_26A6E2D5C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B44E8);
  }

  return result;
}

unint64_t sub_26A6E2D5C()
{
  result = qword_2803B44F0;
  if (!qword_2803B44F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B44F8);
    sub_26A4DBCC8(&qword_2803ADDE8, &qword_2803ADDF0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B44F0);
  }

  return result;
}

uint64_t sub_26A6E2E14()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v1[2] = v2;
  v1[3] = v3;
  v1[4] = v4;
  v1[5] = v5;
  v6 = type metadata accessor for ControlLoadingView();
  OUTLINED_FUNCTION_79(v6);
  v8 = (*(v7 + 80) + 48) & ~*(v7 + 80);
  swift_task_alloc();
  OUTLINED_FUNCTION_16_23();
  v1[6] = v9;
  *v9 = v10;
  v9[1] = sub_26A6E2F10;

  return sub_26A6E25A8(v0 + v8, v2, v3, v4, v5);
}

uint64_t sub_26A6E2F10()
{
  v1 = *v0;
  OUTLINED_FUNCTION_0_12();
  *v2 = v1;

  OUTLINED_FUNCTION_2_9();

  return v3();
}

unint64_t sub_26A6E2FF8()
{
  result = qword_2803B4538;
  if (!qword_2803B4538)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B4520);
    sub_26A4DBCC8(&qword_2803B4540, &qword_2803B4530);
    sub_26A4DBCC8(&qword_2803B4548, &qword_2803B4508);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B4538);
  }

  return result;
}

uint64_t sub_26A6E30D8(unint64_t *a1, void (*a2)(uint64_t))
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

double sub_26A6E3188@<D0>(uint64_t a1@<X8>)
{
  v2 = sub_26A84AFA8();
  OUTLINED_FUNCTION_15();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26A84B858();
  v8 = _s10SnippetKit11TextElementV0A2UIE4view4bold6italic05SwiftE00C0VSb_SbtF_0(0, 0);
  v10 = v9;
  v12 = v11;
  v14 = v13;
  (*(v4 + 8))(v7, v2);
  v15 = v12 & 1;
  v16 = TextProperty.asAnyView()();
  v17 = sub_26A84B878();
  *a1 = swift_getKeyPath();
  *(a1 + 8) = 0;
  *(a1 + 16) = swift_getKeyPath();
  *(a1 + 24) = 0;
  *(a1 + 32) = swift_getKeyPath();
  *(a1 + 40) = 0;
  *(a1 + 72) = v14;
  *(a1 + 80) = v16;
  *(a1 + 48) = v8;
  *(a1 + 56) = v10;
  *(a1 + 64) = v15;
  *(a1 + 88) = v17 & 1;
  result = 0.0;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 224) = 1;
  *(a1 + 232) = 0;
  *(a1 + 240) = 0;
  *(a1 + 248) = 0;
  return result;
}

uint64_t sub_26A6E3340@<X0>(_BYTE *a1@<X8>)
{
  result = sub_26A6405F8();
  *a1 = result & 1;
  return result;
}

double sub_26A6E3398@<D0>(uint64_t a1@<X8>)
{
  v1 = sub_26A70EB38();
  if (qword_2803A8BD0 != -1)
  {
LABEL_13:
    swift_once();
  }

  v2 = xmmword_2803B0080;
  v3 = byte_2803B0090;
  v4 = qword_2803B0098;
  v29 = *(v1 + 16);
  sub_26A4EF6C0(xmmword_2803B0080, *(&xmmword_2803B0080 + 1), byte_2803B0090);

  v5 = 0;
  v6 = v1 + 56;
  v40 = v2;
  v39 = v3;
  v38 = v4;
  v28 = v1;
  while (v29 != v5)
  {
    if (v5 >= *(v1 + 16))
    {
      __break(1u);
      goto LABEL_13;
    }

    v8 = *(v6 - 24);
    v7 = *(v6 - 16);
    v9 = *(v6 - 8);
    v35 = v6;
    v36 = v5;
    v37 = v7;
    v34 = v9;
    if (v5)
    {
      sub_26A4EF6C0(v8, v7, v9);
      v10 = qword_2803A8BE0;

      if (v10 != -1)
      {
        swift_once();
      }

      v11 = *(&xmmword_2803B00C0 + 1);
      v12 = xmmword_2803B00C0;
      v13 = byte_2803B00D0;
      sub_26A4EF6C0(xmmword_2803B00C0, *(&xmmword_2803B00C0 + 1), byte_2803B00D0);
    }

    else
    {
      v11 = *(&v2 + 1);
      v12 = v2;
      v13 = v3;
      sub_26A4EF6C0(v2, *(&v2 + 1), v3);

      sub_26A4EF6C0(*(&v2 + 1), v7, v9);
    }

    v14 = v13;
    v15 = sub_26A8506F8();
    v17 = v16;
    v19 = v18;
    v20 = sub_26A8506F8();
    v32 = v21;
    v33 = v20;
    v30 = v22;
    v31 = v23;
    sub_26A4EC448(v12, v11, v14);

    sub_26A4EC448(v15, v17, v19 & 1);

    sub_26A4EC448(v40, *(&v40 + 1), v39 & 1);

    sub_26A4EC448(v8, v37, v34);

    v6 = v35 + 32;
    v5 = v36 + 1;
    *&v40 = v33;
    *(&v40 + 1) = v32;
    v39 = v30;
    v38 = v31;
    v1 = v28;
  }

  sub_26A4EF6C0(v40, *(&v40 + 1), v39 & 1);

  v24 = MultilineTextProperty.asAnyView()();
  v25 = sub_26A84B878();
  sub_26A4EC448(v40, *(&v40 + 1), v39 & 1);

  *a1 = swift_getKeyPath();
  *(a1 + 8) = 0;
  *(a1 + 16) = swift_getKeyPath();
  *(a1 + 24) = 0;
  *(a1 + 32) = swift_getKeyPath();
  *(a1 + 40) = 0;
  *(a1 + 72) = v38;
  *(a1 + 80) = v24;
  *(a1 + 48) = v40;
  *(a1 + 64) = v39 & 1;
  *(a1 + 88) = v25 & 1;
  result = 0.0;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 224) = 1;
  *(a1 + 232) = 0;
  *(a1 + 240) = 0;
  *(a1 + 248) = 0;
  return result;
}

uint64_t sub_26A6E373C()
{
  v1 = sub_26A84F988();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v11[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = *(v0 + 96);
  if (v5 && (v6 = *(v0 + 32), v7 = *(v0 + 40), sub_26A7D1C0C(*(v0 + 96))) && (memcpy(v13, (v0 + 104), sizeof(v13)), v12 = v5, !sub_26A7D18DC()))
  {
    if (!v7)
    {

      sub_26A851EA8();
      v10 = sub_26A8501F8();
      sub_26A84EA78();

      sub_26A84F978();
      swift_getAtKeyPath();
      sub_26A49035C(v6, 0);
      (*(v2 + 8))(v4, v1);
      LOBYTE(v6) = v11[7];
    }

    v8 = v6 ^ 1;
  }

  else
  {
    v8 = 0;
  }

  return v8 & 1;
}

uint64_t sub_26A6E38CC(void *__src)
{
  memcpy(__dst, __src, 0xFAuLL);
  if (sub_26A6E373C())
  {
    v2 = *(__src + 10);
    v4[1] = swift_getKeyPath();
    v5 = 0;
    KeyPath = swift_getKeyPath();
    v7 = 0;
    swift_unknownObjectWeakInit();
    v8 = 0;
    v9 = 0;
    v4[0] = v2;
    sub_26A51D0F8(v4, __dst, &qword_2803B45F0);
    LOBYTE(__dst[8]) = 0;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B45F0);
    sub_26A6E4BFC();
    sub_26A84FDF8();
    return sub_26A4DBD10(v4, &qword_2803B45F0);
  }

  else
  {
    __dst[0] = *(__src + 10);
    LOBYTE(__dst[8]) = 1;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B45F0);
    sub_26A6E4BFC();
    return sub_26A84FDF8();
  }
}

uint64_t PartialText.body.getter@<X0>(char *a1@<X8>)
{
  v2 = v1;
  v47 = a1;
  v3 = sub_26A84F988();
  OUTLINED_FUNCTION_15();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  v8 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B4568);
  OUTLINED_FUNCTION_46();
  MEMORY[0x28223BE20](v9);
  v11 = &v41 - v10;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B4570);
  OUTLINED_FUNCTION_15();
  v13 = v12;
  MEMORY[0x28223BE20](v14);
  v44 = &v41 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v45 = &v41 - v17;
  memcpy(v53, v2, 0xFAuLL);
  sub_26A6E38CC(v53);
  v55 = v53[1];
  v18 = v53[0];
  v54 = v53[0];
  v41 = v5;
  v42 = v3;
  if (LOBYTE(v53[1]) != 1)
  {

    sub_26A851EA8();
    v19 = sub_26A8501F8();
    sub_26A84EA78();

    sub_26A84F978();
    swift_getAtKeyPath();
    sub_26A4DBD10(&v54, &qword_2803ABFA0);
    (*(v5 + 8))(v8, v3);
    v18 = v48[0];
  }

  v20 = v53[27];
  v21 = LOBYTE(v53[28]);
  v22 = v53[29];
  v23 = v53[30];
  v24 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B4578) + 36);

  sub_26A640858(v20, v21, v22, v23, (v18 & 1) == 0, &v11[v24]);
  v57 = v53[3];
  v25 = v53[2];
  v56 = v53[2];
  if (LOBYTE(v53[3]) != 1)
  {

    sub_26A851EA8();
    v26 = sub_26A8501F8();
    sub_26A84EA78();

    sub_26A84F978();
    swift_getAtKeyPath();
    sub_26A4DBD10(&v56, &qword_2803ABFA0);
    (*(v41 + 8))(v8, v42);
    v25 = v48[0];
  }

  v27 = &v11[*(v43 + 36)];
  *v27 = 0;
  v27[1] = (v25 & 1) == 0;
  v28 = sub_26A6E3F64(v53[31]);
  sub_26A4DBD10(v11, &qword_2803B4568);
  if (v53[12])
  {
    v29 = v53[25];
  }

  else
  {
    v29 = 0;
    v30 = 0;
  }

  v49 = v29;
  v50 = v30;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803ABFB8);
  sub_26A851048();
  v49 = v28;
  v50 = v48[0];
  v51 = v48[1];
  v52 = v48[2];
  v31 = swift_allocObject();
  memcpy((v31 + 16), v53, 0xFAuLL);
  sub_26A4EC458(v53, v48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B4580);
  sub_26A6E4454();
  v32 = v44;
  sub_26A850BF8();

  v33 = *(v13 + 32);
  v35 = v45;
  v34 = v46;
  v33(v45, v32, v46);
  v36 = BYTE1(v53[31]);
  KeyPath = swift_getKeyPath();
  v38 = v47;
  v33(v47, v35, v34);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B45A0);
  v40 = &v38[*(result + 36)];
  *v40 = KeyPath;
  v40[8] = v36;
  return result;
}

uint64_t sub_26A6E3F64(char a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B4568);
  MEMORY[0x28223BE20](v4);
  v6 = &v46 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB208);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v46 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B45B0);
  MEMORY[0x28223BE20](v10);
  v12 = &v46 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v46 - v14;
  if (a1)
  {
    v16 = sub_26A850338();
    __swift_storeEnumTagSinglePayload(v9, 1, 1, v16);
    sub_26A8503E8();
    sub_26A4DBD10(v9, &qword_2803AB208);
    v17 = sub_26A850308();

    KeyPath = swift_getKeyPath();
    sub_26A51D0F8(v2, v15, &qword_2803B4568);
    v19 = &v15[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B4600) + 36)];
    *v19 = KeyPath;
    v19[1] = v17;
    v20 = sub_26A850238();
    v21 = &v15[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B4608) + 36)];
    *v21 = v20;
    *(v21 + 8) = 0u;
    *(v21 + 24) = 0u;
    v21[40] = 1;
    v22 = sub_26A8502A8();
    sub_26A84ED48();
    v24 = v23;
    v26 = v25;
    v28 = v27;
    v30 = v29;
    v31 = &v15[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B4610) + 36)];
    *v31 = v22;
    *(v31 + 1) = v24;
    *(v31 + 2) = v26;
    *(v31 + 3) = v28;
    *(v31 + 4) = v30;
    v31[40] = 0;
    v32 = &v15[*(v10 + 36)];
    v33 = *MEMORY[0x277CE0118];
    v34 = sub_26A84FB88();
    (*(*(v34 - 8) + 104))(v32, v33, v34);
    LODWORD(v33) = sub_26A84FE98();
    v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B4618);
    *&v32[*(v35 + 52)] = v33;
    *&v32[*(v35 + 56)] = 256;
    v36 = &v32[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B4620) + 36)];
    v37 = type metadata accessor for VibrancyModifier();
    v38 = *(v37 + 20);
    *&v36[v38] = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB430);
    swift_storeEnumTagMultiPayload();
    v39 = &v36[*(v37 + 24)];
    *v39 = swift_getKeyPath();
    v39[8] = 0;
    *v36 = 2;
    v40 = sub_26A851448();
    v42 = v41;
    v43 = &v32[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B4628) + 36)];
    *v43 = v40;
    v43[1] = v42;
    sub_26A51D0F8(v15, v12, &qword_2803B45B0);
    sub_26A6E4D34();
    v44 = sub_26A851248();
    sub_26A4DBD10(v15, &qword_2803B45B0);
  }

  else
  {
    sub_26A51D0F8(v2, v6, &qword_2803B4568);
    sub_26A6E49D4();
    return sub_26A851248();
  }

  return v44;
}

id sub_26A6E43BC(uint64_t a1)
{
  if (*(a1 + 96) && *(a1 + 208))
  {
    v1 = sub_26A851788();
    v2 = [objc_allocWithZone(MEMORY[0x277CCAA88]) initWithObject_];

    return v2;
  }

  else
  {
    v4 = objc_allocWithZone(MEMORY[0x277CCAA88]);

    return [v4 init];
  }
}

unint64_t sub_26A6E4454()
{
  result = qword_2803B4588;
  if (!qword_2803B4588)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B4580);
    sub_26A4DBCC8(&qword_2803B4590, &qword_2803B4598);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B4588);
  }

  return result;
}

uint64_t sub_26A6E450C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_26A6E4980();

  return MEMORY[0x282132D20](a1, a2, a3, v8, a4);
}

uint64_t sub_26A6E4578(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_26A6E4980();

  return MEMORY[0x282132D28](a1, a2, a3, v8, a4);
}

void (*sub_26A6E4624(void *a1))(void *a1)
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v2;
  v2[4] = sub_26A84ECD8();
  return sub_26A4F6448;
}

double sub_26A6E46C4@<D0>(uint64_t (*a1)(void)@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  v5 = a1();
  LOBYTE(a2) = a2();
  *a3 = swift_getKeyPath();
  *(a3 + 8) = 0;
  *(a3 + 16) = swift_getKeyPath();
  *(a3 + 24) = 0;
  *(a3 + 32) = swift_getKeyPath();
  *(a3 + 40) = 0;
  *(a3 + 80) = v5;
  result = 0.0;
  *(a3 + 48) = 0u;
  *(a3 + 64) = 0u;
  *(a3 + 88) = a2 & 1;
  *(a3 + 96) = 0u;
  *(a3 + 112) = 0u;
  *(a3 + 128) = 0u;
  *(a3 + 144) = 0u;
  *(a3 + 160) = 0u;
  *(a3 + 176) = 0u;
  *(a3 + 192) = 0u;
  *(a3 + 208) = 0u;
  *(a3 + 224) = 1;
  *(a3 + 232) = 0;
  *(a3 + 240) = 0;
  *(a3 + 248) = 0;
  return result;
}

uint64_t get_enum_tag_for_layout_string_9SnippetUI18FormattedTextModelVSg(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_26A6E47BC(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 250))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 80);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_26A6E47FC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
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
    *(result + 248) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 250) = 1;
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
      *(result + 80) = (a2 - 1);
      return result;
    }

    *(result + 250) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_26A6E488C()
{
  result = qword_2803B45A8;
  if (!qword_2803B45A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B45A0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B4580);
    sub_26A6E4454();
    swift_getOpaqueTypeConformance2();
    sub_26A4DBCC8(&qword_28157FB50, &unk_2803B31B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B45A8);
  }

  return result;
}

unint64_t sub_26A6E4980()
{
  result = qword_28157F808;
  if (!qword_28157F808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28157F808);
  }

  return result;
}

unint64_t sub_26A6E49D4()
{
  result = qword_2803B45B8;
  if (!qword_2803B45B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B4568);
    sub_26A6E4A60();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B45B8);
  }

  return result;
}

unint64_t sub_26A6E4A60()
{
  result = qword_2803B45C0;
  if (!qword_2803B45C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B4578);
    sub_26A6E4AEC();
    sub_26A6E4CDC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B45C0);
  }

  return result;
}

unint64_t sub_26A6E4AEC()
{
  result = qword_2803B45C8;
  if (!qword_2803B45C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B45D0);
    sub_26A6E4B70();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B45C8);
  }

  return result;
}

unint64_t sub_26A6E4B70()
{
  result = qword_2803B45D8;
  if (!qword_2803B45D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B45E0);
    sub_26A6E4BFC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B45D8);
  }

  return result;
}

unint64_t sub_26A6E4BFC()
{
  result = qword_2803B45E8;
  if (!qword_2803B45E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B45F0);
    sub_26A6E4C88();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B45E8);
  }

  return result;
}

unint64_t sub_26A6E4C88()
{
  result = qword_2803B45F8;
  if (!qword_2803B45F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B45F8);
  }

  return result;
}

unint64_t sub_26A6E4CDC()
{
  result = qword_28157E058;
  if (!qword_28157E058)
  {
    type metadata accessor for OptionalLineLimitModifier();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28157E058);
  }

  return result;
}

unint64_t sub_26A6E4D34()
{
  result = qword_2803B4630;
  if (!qword_2803B4630)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B45B0);
    sub_26A6E4DEC();
    sub_26A4DBCC8(&qword_2803B4650, &qword_2803B4628);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B4630);
  }

  return result;
}

unint64_t sub_26A6E4DEC()
{
  result = qword_2803B4638;
  if (!qword_2803B4638)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B4610);
    sub_26A6E4E78();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B4638);
  }

  return result;
}

unint64_t sub_26A6E4E78()
{
  result = qword_2803B4640;
  if (!qword_2803B4640)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B4608);
    sub_26A6E4F04();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B4640);
  }

  return result;
}

unint64_t sub_26A6E4F04()
{
  result = qword_2803B4648;
  if (!qword_2803B4648)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B4600);
    sub_26A6E49D4();
    sub_26A4DBCC8(&qword_28157FB78, &qword_2803AC4A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B4648);
  }

  return result;
}

void sub_26A6E5004()
{
  sub_26A6E7948(319, &qword_2803B4670, MEMORY[0x277CDF708]);
  if (v0 <= 0x3F)
  {
    sub_26A84E8B8();
    if (v1 <= 0x3F)
    {
      sub_26A84E8C8();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_26A6E50D8@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for PickerControlView(0) - 8;
  MEMORY[0x28223BE20](v3);
  sub_26A6E527C(v1, a1);
  sub_26A6E7718();
  v4 = swift_allocObject();
  sub_26A6E878C();
  KeyPath = swift_getKeyPath();
  v6 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B4678) + 36));
  v7 = v6 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803B36A0) + 28);
  *v7 = sub_26A6E5954;
  *(v7 + 8) = v4;
  *(v7 + 16) = 0;
  v8 = type metadata accessor for ActionType();
  OUTLINED_FUNCTION_211();
  swift_storeEnumTagMultiPayload();
  result = __swift_storeEnumTagSinglePayload(v7, 0, 1, v8);
  *v6 = KeyPath;
  return result;
}

uint64_t sub_26A6E527C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v25 = a2;
  v26 = type metadata accessor for BasicPickerControlView(0);
  MEMORY[0x28223BE20](v26);
  v4 = &v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B4680);
  MEMORY[0x28223BE20](v5);
  v6 = type metadata accessor for StepSliderControlView();
  MEMORY[0x28223BE20](v6);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for PickerControlView(0);
  v10 = *(v9 + 20);
  if (sub_26A84E818())
  {
    v11 = sub_26A84E8B8();
    (*(*(v11 - 8) + 16))(v8, a1 + v10, v11);
    *&v8[*(v6 + 20)] = *(a1 + *(v9 + 24));
    sub_26A6E7718();
    swift_storeEnumTagMultiPayload();
    sub_26A6E776C();
    sub_26A6E776C();

    sub_26A84FDF8();
  }

  else
  {
    v23 = v5;
    v24 = v6;
    v12 = v26;
    v13 = *(v26 + 24);
    v14 = sub_26A84E8B8();
    (*(*(v14 - 8) + 16))(&v4[v13], a1 + v10, v14);
    v15 = *(a1 + *(v9 + 24));
    v16 = qword_2803A8DD0;

    if (v16 != -1)
    {
      swift_once();
    }

    memcpy(v27, qword_2803D22E0, sizeof(v27));
    v17 = v27[4];
    memcpy(v4 + 240, qword_2803D22E0, 0x50uLL);
    v21 = v27[3];
    v22 = v27[2];
    sub_26A4D7E54();
    sub_26A6AEE74(v28);
    memcpy(v4, v28, 0xBFuLL);
    v18 = v21;
    *(v4 + 12) = v22;
    *(v4 + 13) = v18;
    *(v4 + 14) = v17;
    v19 = *(v12 + 20);
    *&v4[v19] = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB430);
    swift_storeEnumTagMultiPayload();
    *&v4[*(v12 + 28)] = v15;
    sub_26A6E7718();
    swift_storeEnumTagMultiPayload();
    sub_26A6E776C();
    sub_26A6E776C();
    sub_26A84FDF8();
  }

  return sub_26A6E77B0();
}

uint64_t sub_26A6E571C()
{
  v0 = sub_26A84F138();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AF0D0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v12 - v5;
  v7 = sub_26A84AB98();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v12 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for PickerControlView(0);
  sub_26A84E808();
  if (__swift_getEnumTagSinglePayload(v6, 1, v7) == 1)
  {
    return sub_26A54A088();
  }

  (*(v8 + 32))(v10, v6, v7);
  sub_26A7204B8(v3);
  sub_26A84F128();
  (*(v1 + 8))(v3, v0);
  return (*(v8 + 8))(v10, v7);
}

uint64_t sub_26A6E5954()
{
  v0 = type metadata accessor for PickerControlView(0);
  OUTLINED_FUNCTION_79(v0);

  return sub_26A6E571C();
}

uint64_t sub_26A6E59B0()
{
  v0 = type metadata accessor for BasicPickerControlView(0);
  MEMORY[0x28223BE20](v0 - 8);
  sub_26A6E7718();
  sub_26A851BD8();
  v1 = sub_26A851BC8();
  v2 = swift_allocObject();
  v3 = MEMORY[0x277D85700];
  *(v2 + 16) = v1;
  *(v2 + 24) = v3;
  sub_26A6E878C();
  sub_26A6E7718();
  v4 = sub_26A851BC8();
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;
  sub_26A6E878C();
  sub_26A851278();
  return v7;
}

uint64_t sub_26A6E5B80@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for BasicPickerControlView(0);
  result = sub_26A84E838();
  *a1 = result;
  return result;
}

uint64_t sub_26A6E5BC4(uint64_t *a1)
{
  v2 = type metadata accessor for BasicPickerControlView(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AC090);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v15 - v6;
  v8 = *a1;
  v9 = sub_26A851C18();
  __swift_storeEnumTagSinglePayload(v7, 1, 1, v9);
  sub_26A6E7718();
  sub_26A851BD8();
  v10 = sub_26A851BC8();
  v11 = (v4 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8;
  v12 = swift_allocObject();
  v13 = MEMORY[0x277D85700];
  *(v12 + 16) = v10;
  *(v12 + 24) = v13;
  sub_26A6E878C();
  *(v12 + v11) = v8;
  sub_26A7FEEA0(0, 0, v7, &unk_26A878280, v12);
}

uint64_t sub_26A6E5DA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  sub_26A851BD8();
  v5[4] = sub_26A851BC8();
  v7 = sub_26A851B78();
  v5[5] = v7;
  v5[6] = v6;

  return MEMORY[0x2822009F8](sub_26A6E5E38, v7, v6);
}

uint64_t sub_26A6E5E38()
{
  OUTLINED_FUNCTION_1_10();
  type metadata accessor for BasicPickerControlView(0);
  v4 = (*MEMORY[0x277CFA498] + MEMORY[0x277CFA498]);
  v1 = swift_task_alloc();
  *(v0 + 56) = v1;
  *v1 = v0;
  v1[1] = sub_26A6E5EF0;
  v2 = *(v0 + 24);

  return v4(v2);
}

uint64_t sub_26A6E5EF0()
{
  v2 = *v1;
  *(*v1 + 64) = v0;

  v3 = *(v2 + 48);
  v4 = *(v2 + 40);
  if (v0)
  {
    v5 = sub_26A6E608C;
  }

  else
  {
    v5 = sub_26A6E602C;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_26A6E602C()
{
  OUTLINED_FUNCTION_1_10();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_26A6E608C()
{
  OUTLINED_FUNCTION_1_10();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_26A6E60EC()
{
  v1 = v0;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B4780);
  OUTLINED_FUNCTION_46();
  MEMORY[0x28223BE20](v2);
  v52[1] = v52 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v6 = v52 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B4788);
  OUTLINED_FUNCTION_46();
  MEMORY[0x28223BE20](v8);
  MEMORY[0x28223BE20](v9);
  v11 = v52 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B4790);
  OUTLINED_FUNCTION_79(v12);
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v13);
  v15 = v52 - v14;
  v16 = sub_26A84E7E8();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = v52 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for BasicPickerControlView(0);
  sub_26A84E828();
  if (__swift_getEnumTagSinglePayload(v15, 1, v16) == 1)
  {
    sub_26A54A088();
    v52[0] = sub_26A850F08();
    v20 = sub_26A850E18();
    v21 = sub_26A8502F8();
    KeyPath = swift_getKeyPath();
    sub_26A851448();
    sub_26A84F028();
    v55 = 0;
    *&v54[6] = v56;
    *&v54[22] = v57;
    *&v54[38] = v58;
    v23 = sub_26A850D98();
    v24 = sub_26A850248();
    v25 = *(v0 + 224);
    v26 = &v6[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B4798) + 36)];
    v27 = *(sub_26A84F5F8() + 20);
    v28 = *MEMORY[0x277CE0118];
    sub_26A84FB88();
    OUTLINED_FUNCTION_46();
    (*(v29 + 104))(&v26[v27], v28);
    *v26 = v25;
    *(v26 + 1) = v25;
    *&v26[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A9E58) + 36)] = 256;
    v30 = *&v54[16];
    *(v6 + 42) = *v54;
    *v6 = v52[0];
    *(v6 + 1) = v20;
    *(v6 + 2) = KeyPath;
    *(v6 + 3) = v21;
    *(v6 + 4) = 0x3FF0000000000000;
    *(v6 + 20) = 0;
    *(v6 + 58) = v30;
    *(v6 + 74) = *&v54[32];
    *(v6 + 11) = *&v54[46];
    *(v6 + 12) = v23;
    v6[104] = v24;
    sub_26A850298();
    sub_26A84ED48();
    OUTLINED_FUNCTION_12_35(&v6[*(v53 + 36)], v31, v32, v33, v34);
    sub_26A4D7E54();
    sub_26A6E7FC4();
    v35 = sub_26A851248();
    sub_26A54A088();
  }

  else
  {
    (*(v17 + 32))(v19, v15, v16);
    v36 = sub_26A8502F8();
    v37 = swift_getKeyPath();
    (*(v17 + 16))(v11, v19, v16);
    v38 = &v11[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B4800) + 36)];
    *v38 = v37;
    v38[1] = v36;
    v39 = &v11[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B4808) + 36)];
    *v39 = 0x3FF0000000000000;
    *(v39 + 4) = 0;
    v40 = *(v1 + 224);
    v41 = &v11[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B4810) + 36)];
    v42 = *(sub_26A84F5F8() + 20);
    v43 = *MEMORY[0x277CE0118];
    sub_26A84FB88();
    OUTLINED_FUNCTION_46();
    (*(v44 + 104))(&v41[v42], v43);
    *v41 = v40;
    *(v41 + 1) = v40;
    *&v41[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A9E58) + 36)] = 256;
    sub_26A851448();
    sub_26A84F028();
    v45 = &v11[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B4818) + 36)];
    v46 = v57;
    *v45 = v56;
    *(v45 + 1) = v46;
    *(v45 + 2) = v58;
    sub_26A850298();
    sub_26A84ED48();
    OUTLINED_FUNCTION_12_35(&v11[*(v7 + 36)], v47, v48, v49, v50);
    sub_26A4D7E54();
    sub_26A6E8448();
    v35 = sub_26A851248();
    sub_26A54A088();
    (*(v17 + 8))(v19, v16);
  }

  return v35;
}

uint64_t sub_26A6E66F0@<X0>(uint64_t a1@<X8>)
{
  v20 = sub_26A6E60EC();
  type metadata accessor for BasicPickerControlView(0);
  sub_26A84E848();
  sub_26A53ACC8();
  v2 = sub_26A850898();
  v4 = v3;
  v6 = v5;
  sub_26A8502F8();
  v7 = sub_26A850738();
  v9 = v8;
  v11 = v10;

  sub_26A4EC448(v2, v4, v6 & 1);

  sub_26A8503C8();
  v12 = sub_26A850578();
  v14 = v13;
  v16 = v15;
  v18 = v17;
  sub_26A4EC448(v7, v9, v11 & 1);

  *a1 = v20;
  *(a1 + 8) = v12;
  *(a1 + 16) = v14;
  *(a1 + 24) = v16 & 1;
  *(a1 + 32) = v18;

  sub_26A4EF6C0(v12, v14, v16 & 1);

  sub_26A4EC448(v12, v14, v16 & 1);
}

double sub_26A6E6880@<D0>(uint64_t a1@<X8>)
{
  v43 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B48C0) - 8;
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v2);
  v4 = (&v38 - v3);
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B48B0);
  OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v5);
  v7 = &v38 - v6;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B48A0);
  OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v8);
  v10 = &v38 - v9;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B4890);
  OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v11);
  v13 = &v38 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B4880);
  OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v15);
  v17 = &v38 - v16;
  v18 = sub_26A84E858();
  v19 = (v4 + *(v1 + 44));
  v20 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B48E0) + 28);
  sub_26A84FC48();
  v21 = sub_26A84FC88();
  __swift_storeEnumTagSinglePayload(v19 + v20, 0, 1, v21);
  *v19 = swift_getKeyPath();
  *v4 = v18;
  v22 = sub_26A84E868();
  if (!v22)
  {
    v22 = sub_26A850E18();
  }

  KeyPath = swift_getKeyPath();
  sub_26A4D7EA8();
  v24 = &v7[*(v41 + 36)];
  *v24 = KeyPath;
  v24[1] = v22;
  v25 = sub_26A8502F8();
  v26 = swift_getKeyPath();
  sub_26A4D7EA8();
  v27 = &v10[*(v40 + 36)];
  *v27 = v26;
  v27[1] = v25;
  sub_26A4D7EA8();
  v28 = &v13[*(v39 + 36)];
  *v28 = 0x3FF0000000000000;
  *(v28 + 4) = 0;
  v29 = *(v42 + 224);
  v30 = &v17[*(v14 + 36)];
  v31 = *(sub_26A84F5F8() + 20);
  v32 = *MEMORY[0x277CE0118];
  sub_26A84FB88();
  OUTLINED_FUNCTION_46();
  (*(v33 + 104))(&v30[v31], v32);
  *v30 = v29;
  *(v30 + 1) = v29;
  *&v30[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A9E58) + 36)] = 256;
  sub_26A4D7EA8();
  sub_26A851448();
  sub_26A84F028();
  v34 = v43;
  sub_26A4D7EA8();
  v35 = (v34 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B4868) + 36));
  v36 = v45;
  *v35 = v44;
  v35[1] = v36;
  result = *&v46;
  v35[2] = v46;
  return result;
}

uint64_t sub_26A6E6C78()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B46E0);
  OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v2);
  v4 = &v9[-v3];
  v10 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B46E8);
  v5 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B46F0);
  v6 = sub_26A84F9C8();
  v7 = sub_26A4D7DCC();
  v11 = v5;
  v12 = v6;
  v13 = v7;
  v14 = MEMORY[0x277CDDDA0];
  swift_getOpaqueTypeConformance2();
  sub_26A8504D8();
  *&v4[*(v1 + 36)] = 256;
  sub_26A6E7BE8();
  sub_26A850B68();
  return sub_26A4AF154();
}

uint64_t sub_26A6E6DF4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v38 = a2;
  v3 = sub_26A84F9C8();
  v4 = *(v3 - 8);
  v36 = v3;
  v37 = v4;
  MEMORY[0x28223BE20](v3);
  v35 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B4718);
  MEMORY[0x28223BE20](v32);
  v7 = &v31 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B46F0);
  v9 = *(v8 - 8);
  v33 = v8;
  v34 = v9;
  MEMORY[0x28223BE20](v8);
  v11 = &v31 - v10;
  v12 = sub_26A6E59B0();
  v39 = a1;
  v44 = v12;
  v45 = v13;
  v46 = v14;
  v15 = sub_26A84FA78();
  sub_26A6E66F0(&v40);
  v31 = v40;
  v16 = v41;
  v17 = v42;
  v18 = v43;
  v48 = 1;
  v47 = v42;
  v19 = &v7[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B4720) + 36)];
  v20 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B4728) + 28);
  v21 = sub_26A850708();
  __swift_storeEnumTagSinglePayload(v19 + v20, 1, 1, v21);
  *v19 = swift_getKeyPath();
  *v7 = v15;
  *(v7 + 1) = 0;
  v7[16] = 1;
  *(v7 + 17) = v40;
  *(v7 + 5) = *(&v40 + 3);
  *(v7 + 24) = v31;
  *(v7 + 5) = v16;
  v7[48] = v17;
  *(v7 + 49) = v49[0];
  *(v7 + 13) = *(v49 + 3);
  *(v7 + 7) = v18;
  LOBYTE(v15) = sub_26A850268();
  sub_26A84ED48();
  v22 = &v7[*(v32 + 36)];
  *v22 = v15;
  *(v22 + 1) = v23;
  *(v22 + 2) = v24;
  *(v22 + 3) = v25;
  *(v22 + 4) = v26;
  v22[40] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B4730);
  sub_26A6E7D4C();
  sub_26A6E7EBC();
  sub_26A851188();
  v27 = v35;
  sub_26A84F9B8();
  sub_26A4D7DCC();
  v28 = v33;
  v29 = v36;
  sub_26A8509B8();
  (*(v37 + 8))(v27, v29);
  return (*(v34 + 8))(v11, v28);
}

uint64_t sub_26A6E71AC()
{
  v0 = type metadata accessor for BasicPickerControlView(0);
  MEMORY[0x28223BE20](v0 - 8);
  sub_26A84E8A8();
  sub_26A56C2B8();

  swift_getKeyPath();
  sub_26A6E7718();
  v1 = swift_allocObject();
  sub_26A6E878C();
  v2 = swift_allocObject();
  *(v2 + 16) = sub_26A6E87E0;
  *(v2 + 24) = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B4850);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B4858);
  sub_26A4D7DCC();
  sub_26A615D78();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B4768);
  sub_26A4D7DCC();
  swift_getOpaqueTypeConformance2();
  return sub_26A8512F8();
}

uint64_t sub_26A6E7498@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B4768);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v14[-v10];
  v17 = a2;
  v15 = a3;
  v16 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B4868);
  sub_26A6E889C();
  sub_26A850FC8();
  (*(v9 + 32))(a4, v11, v8);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B48E8);
  v13 = a4 + *(result + 36);
  *v13 = a1;
  *(v13 + 8) = 1;
  return result;
}

uint64_t sub_26A6E761C@<X0>(uint64_t a1@<X8>)
{
  sub_26A84E878();
  sub_26A53ACC8();
  result = sub_26A850898();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  *(a1 + 24) = v5;
  return result;
}

uint64_t sub_26A6E7688(char *a1, uint64_t (*a2)(uint64_t, char *))
{
  v4 = *a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AD9B8);
  return a2(v4, &a1[*(v5 + 48)]);
}

uint64_t sub_26A6E7718()
{
  OUTLINED_FUNCTION_145();
  v1(0);
  OUTLINED_FUNCTION_46();
  v2 = OUTLINED_FUNCTION_211();
  v3(v2);
  return v0;
}

unint64_t sub_26A6E776C()
{
  OUTLINED_FUNCTION_196();
  result = *v2;
  if (!result)
  {
    v1(255);
    result = swift_getWitnessTable();
    atomic_store(result, v0);
  }

  return result;
}

uint64_t sub_26A6E77B0()
{
  OUTLINED_FUNCTION_196();
  v1(0);
  OUTLINED_FUNCTION_1_4();
  (*(v2 + 8))(v0);
  return v0;
}

void sub_26A6E7828()
{
  sub_26A6E78F8();
  if (v0 <= 0x3F)
  {
    sub_26A6E7948(319, &qword_2803AC3D8, MEMORY[0x277CDF3E0]);
    if (v1 <= 0x3F)
    {
      sub_26A84E8B8();
      if (v2 <= 0x3F)
      {
        sub_26A84E8C8();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_26A6E78F8()
{
  if (!qword_2803B46B0)
  {
    v0 = type metadata accessor for EnvironmentConstant();
    if (!v1)
    {
      atomic_store(v0, &qword_2803B46B0);
    }
  }
}

void sub_26A6E7948(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_26A84EEA8();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_26A6E799C()
{
  result = qword_2803B46B8;
  if (!qword_2803B46B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B4678);
    sub_26A6E7A54();
    sub_26A4D7DCC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B46B8);
  }

  return result;
}

unint64_t sub_26A6E7A54()
{
  result = qword_2803B46C0;
  if (!qword_2803B46C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B46C8);
    sub_26A6E7AD8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B46C0);
  }

  return result;
}

unint64_t sub_26A6E7AD8()
{
  result = qword_2803B46D0;
  if (!qword_2803B46D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B46D8);
    sub_26A6E776C();
    sub_26A6E776C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B46D0);
  }

  return result;
}

unint64_t sub_26A6E7BE8()
{
  result = qword_2803B4700;
  if (!qword_2803B4700)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B46E0);
    sub_26A4D7DCC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B4700);
  }

  return result;
}

uint64_t sub_26A6E7CA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t a6, uint64_t (*a7)(char *))
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(a5);
  OUTLINED_FUNCTION_79(v8);
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v9);
  v11 = &v13 - v10;
  sub_26A4D7E54();
  return a7(v11);
}

unint64_t sub_26A6E7D4C()
{
  result = qword_2803B4738;
  if (!qword_2803B4738)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B4718);
    sub_26A6E7DD8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B4738);
  }

  return result;
}

unint64_t sub_26A6E7DD8()
{
  result = qword_2803B4740;
  if (!qword_2803B4740)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B4720);
    sub_26A4D7DCC();
    sub_26A4D7DCC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B4740);
  }

  return result;
}

unint64_t sub_26A6E7EBC()
{
  result = qword_2803B4760;
  if (!qword_2803B4760)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B4730);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B4768);
    sub_26A4D7DCC();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B4760);
  }

  return result;
}

unint64_t sub_26A6E7FC4()
{
  result = qword_2803B47A0;
  if (!qword_2803B47A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B4780);
    sub_26A6E8050();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B47A0);
  }

  return result;
}

unint64_t sub_26A6E8050()
{
  result = qword_2803B47A8;
  if (!qword_2803B47A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B4798);
    sub_26A6E8108();
    sub_26A4D7DCC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B47A8);
  }

  return result;
}

unint64_t sub_26A6E8108()
{
  result = qword_2803B47B0;
  if (!qword_2803B47B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B47B8);
    sub_26A6E81C0();
    sub_26A4D7DCC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B47B0);
  }

  return result;
}

unint64_t sub_26A6E81C0()
{
  result = qword_2803B47C0;
  if (!qword_2803B47C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B47C8);
    sub_26A6E824C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B47C0);
  }

  return result;
}

unint64_t sub_26A6E824C()
{
  result = qword_2803B47D0;
  if (!qword_2803B47D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B47D8);
    sub_26A6E82D8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B47D0);
  }

  return result;
}

unint64_t sub_26A6E82D8()
{
  result = qword_2803B47E0;
  if (!qword_2803B47E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B47E8);
    sub_26A6E8390();
    sub_26A4D7DCC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B47E0);
  }

  return result;
}

unint64_t sub_26A6E8390()
{
  result = qword_2803B47F0;
  if (!qword_2803B47F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B47F8);
    sub_26A4D7DCC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B47F0);
  }

  return result;
}

unint64_t sub_26A6E8448()
{
  result = qword_2803B4820;
  if (!qword_2803B4820)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B4788);
    sub_26A6E84D4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B4820);
  }

  return result;
}

unint64_t sub_26A6E84D4()
{
  result = qword_2803B4828;
  if (!qword_2803B4828)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B4818);
    sub_26A6E8560();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B4828);
  }

  return result;
}

unint64_t sub_26A6E8560()
{
  result = qword_2803B4830;
  if (!qword_2803B4830)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B4810);
    sub_26A6E8618();
    sub_26A4D7DCC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B4830);
  }

  return result;
}

unint64_t sub_26A6E8618()
{
  result = qword_2803B4838;
  if (!qword_2803B4838)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B4808);
    sub_26A6E86A4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B4838);
  }

  return result;
}

unint64_t sub_26A6E86A4()
{
  result = qword_2803B4840;
  if (!qword_2803B4840)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B4800);
    sub_26A6E776C();
    sub_26A4D7DCC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B4840);
  }

  return result;
}

uint64_t sub_26A6E878C()
{
  OUTLINED_FUNCTION_145();
  v1(0);
  OUTLINED_FUNCTION_46();
  v2 = OUTLINED_FUNCTION_211();
  v3(v2);
  return v0;
}

uint64_t sub_26A6E87E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = type metadata accessor for BasicPickerControlView(0);
  OUTLINED_FUNCTION_79(v7);
  v9 = v3 + ((*(v8 + 80) + 16) & ~*(v8 + 80));

  return sub_26A6E7498(a1, a2, v9, a3);
}

unint64_t sub_26A6E889C()
{
  result = qword_2803B4870;
  if (!qword_2803B4870)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B4868);
    sub_26A6E8928();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B4870);
  }

  return result;
}

unint64_t sub_26A6E8928()
{
  result = qword_2803B4878;
  if (!qword_2803B4878)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B4880);
    sub_26A6E89E0();
    sub_26A4D7DCC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B4878);
  }

  return result;
}

unint64_t sub_26A6E89E0()
{
  result = qword_2803B4888;
  if (!qword_2803B4888)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B4890);
    sub_26A6E8A6C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B4888);
  }

  return result;
}

unint64_t sub_26A6E8A6C()
{
  result = qword_2803B4898;
  if (!qword_2803B4898)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B48A0);
    sub_26A6E8B24();
    sub_26A4D7DCC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B4898);
  }

  return result;
}

unint64_t sub_26A6E8B24()
{
  result = qword_2803B48A8;
  if (!qword_2803B48A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B48B0);
    sub_26A6E8BDC();
    sub_26A4D7DCC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B48A8);
  }

  return result;
}

unint64_t sub_26A6E8BDC()
{
  result = qword_2803B48B8;
  if (!qword_2803B48B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B48C0);
    sub_26A6E8C94();
    sub_26A4D7DCC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B48B8);
  }

  return result;
}

unint64_t sub_26A6E8C94()
{
  result = qword_2803B48C8;
  if (!qword_2803B48C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B48D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B48C8);
  }

  return result;
}

uint64_t sub_26A6E8D10@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for BasicPickerControlView(0);
  OUTLINED_FUNCTION_79(v2);

  return sub_26A6E5B80(a1);
}

uint64_t objectdestroy_45Tm()
{
  type metadata accessor for BasicPickerControlView(0);
  OUTLINED_FUNCTION_37_0();
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  swift_unknownObjectRelease();
  v4 = v1 + v3;
  OUTLINED_FUNCTION_3_65();

  v5 = *(v0 + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB430);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_26A84EE68();
    OUTLINED_FUNCTION_1_4();
    (*(v6 + 8))(v4 + v5);
  }

  else
  {
  }

  v7 = *(v0 + 24);
  sub_26A84E8B8();
  OUTLINED_FUNCTION_1_4();
  (*(v8 + 8))(v4 + v7);

  return swift_deallocObject();
}

uint64_t sub_26A6E8EDC(uint64_t *a1)
{
  v2 = type metadata accessor for BasicPickerControlView(0);
  OUTLINED_FUNCTION_79(v2);

  return sub_26A6E5BC4(a1);
}

uint64_t sub_26A6E8F4C(uint64_t a1)
{
  v4 = *(type metadata accessor for BasicPickerControlView(0) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_26A6156E0;

  return sub_26A6E5DA0(a1, v6, v7, v1 + v5, v8);
}

uint64_t OUTLINED_FUNCTION_3_65()
{
  sub_26A49035C(*v0, *(v0 + 8));
  sub_26A49035C(*(v0 + 16), *(v0 + 24));
  sub_26A49035C(*(v0 + 32), *(v0 + 40));
  sub_26A49035C(*(v0 + 48), *(v0 + 56));
  sub_26A49035C(*(v0 + 64), *(v0 + 72));
  sub_26A49035C(*(v0 + 80), *(v0 + 88));
  sub_26A49035C(*(v0 + 96), *(v0 + 104));
  sub_26A49035C(*(v0 + 112), *(v0 + 120));
  sub_26A49035C(*(v0 + 128), *(v0 + 136));
  sub_26A49035C(*(v0 + 144), *(v0 + 152));
}

void OUTLINED_FUNCTION_12_35(uint64_t a1@<X8>, double a2@<D0>, double a3@<D1>, double a4@<D2>, double a5@<D3>)
{
  *a1 = v5;
  *(a1 + 8) = a2;
  *(a1 + 16) = a3;
  *(a1 + 24) = a4;
  *(a1 + 32) = a5;
  *(a1 + 40) = 0;
}

uint64_t sub_26A6E911C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_26A5DA738();
  *a1 = result & 1;
  return result;
}

uint64_t sub_26A6E9174@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_26A84F988();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803A9190);
  MEMORY[0x28223BE20](v7);
  v9 = &v13 - v8;
  v10 = type metadata accessor for SystemTextClarificationTitleView();
  sub_26A4DBD68(v1 + *(v10 + 20), v9, &unk_2803A9190);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_26A4DBDB4(v9, a1, &qword_2803A91C8);
  }

  sub_26A851EA8();
  v12 = sub_26A8501F8();
  sub_26A84EA78();

  sub_26A84F978();
  swift_getAtKeyPath();

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_26A6E935C()
{
  v1 = sub_26A84F988();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = v0 + *(type metadata accessor for SystemTextClarificationTitleView() + 24);
  v6 = *v5;
  if ((*(v5 + 8) & 1) == 0)
  {

    sub_26A851EA8();
    v7 = sub_26A8501F8();
    sub_26A84EA78();

    sub_26A84F978();
    swift_getAtKeyPath();
    sub_26A49035C(v6, 0);
    (*(v2 + 8))(v4, v1);
    return v9[1];
  }

  return v6;
}

uint64_t sub_26A6E94B0@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_26A84F988();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91A8);
  MEMORY[0x28223BE20](v7);
  v9 = &v14 - v8;
  v10 = type metadata accessor for SystemTextClarificationTitleView();
  sub_26A4DBD68(v1 + *(v10 + 28), v9, &qword_2803A91A8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_26A84F3A8();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    sub_26A851EA8();
    v13 = sub_26A8501F8();
    sub_26A84EA78();

    sub_26A84F978();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

double sub_26A6E96B8()
{
  v1 = sub_26A84F988();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = (v0 + *(type metadata accessor for SystemTextClarificationTitleView() + 32));
  v6 = *v5;
  if (v5[8] == 1)
  {
    return *v5;
  }

  sub_26A851EA8();
  v8 = sub_26A8501F8();
  sub_26A84EA78();

  sub_26A84F978();
  swift_getAtKeyPath();
  sub_26A49035C(v6, 0);
  (*(v2 + 8))(v4, v1);
  return *&v9[1];
}

uint64_t SystemTextClarificationTitleView.init(text1:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  if (qword_2803A9000 != -1)
  {
    OUTLINED_FUNCTION_1_76();
  }

  v4 = xmmword_2803D2728;
  v5 = qword_2803D2738;
  v6 = unk_2803D2740;
  v7 = qword_2803D2748;

  sub_26A6AEE74(v16);
  memcpy(a2, v16, 0xC0uLL);
  *(a2 + 192) = v7;
  *(a2 + 200) = v4;
  *(a2 + 216) = v5;
  *(a2 + 224) = v6;
  *(a2 + 232) = v7;
  v8 = type metadata accessor for SystemTextClarificationTitleView();
  v9 = v8[5];
  *(a2 + v9) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803A9190);
  swift_storeEnumTagMultiPayload();
  KeyPath = swift_getKeyPath();
  OUTLINED_FUNCTION_162(KeyPath);
  v11 = v8[7];
  *(a2 + v11) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91A8);
  swift_storeEnumTagMultiPayload();
  v12 = swift_getKeyPath();
  OUTLINED_FUNCTION_162(v12);
  v13 = a1[3];
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v13);
  *(a2 + v8[9]) = (*(v14 + 8))(v13, v14);

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t SystemTextClarificationTitleView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v53 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91C0);
  OUTLINED_FUNCTION_79(v2);
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v3);
  v5 = &v48 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91C8);
  OUTLINED_FUNCTION_79(v6);
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v7);
  v9 = &v48 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A99C8);
  OUTLINED_FUNCTION_79(v10);
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v11);
  v13 = &v48 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B48F0) - 8;
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v15);
  v49 = &v48 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B48F8) - 8;
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v18);
  v50 = &v48 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B4900) - 8;
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v21);
  v52 = &v48 - v22;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B4908) - 8;
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v23);
  v25 = &v48 - v24;
  v26 = *(v1 + 192);
  sub_26A6E9174(v9);
  v27 = sub_26A6E935C();
  v28 = sub_26A61B05C(v27, &unk_287B13068);
  v29 = 0x4024000000000000;
  if (v28)
  {
    v30 = v26;
  }

  else
  {
    v29 = 0;
    v30 = 0;
  }

  v55 = v30;
  v56 = v30;
  v57 = v29;
  v58 = v30;
  v59 = !v28;
  sub_26A6E935C();
  sub_26A6E94B0(v5);
  v31 = sub_26A84F3A8();
  __swift_storeEnumTagSinglePayload(v5, 0, 1, v31);
  v54 = v1;
  sub_26A4CCB48();
  KeyPath = swift_getKeyPath();
  v33 = sub_26A6E935C();
  v34 = sub_26A61B05C(v33, &unk_287B13068);
  v35 = v49;
  sub_26A4DBDB4(v13, v49, &qword_2803A99C8);
  v36 = v35 + *(v14 + 44);
  *v36 = KeyPath;
  *(v36 + 8) = v34;
  v37 = swift_allocObject();
  *(v37 + 16) = sub_26A68CF1C;
  *(v37 + 24) = 0;
  v38 = *(v17 + 44);
  v39 = v50;
  v40 = &v50[v38];
  *(v40 + 2) = swift_getKeyPath();
  v40[24] = 0;
  v41 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91D8) + 40);
  *&v40[v41] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803A9190);
  swift_storeEnumTagMultiPayload();
  v42 = swift_getKeyPath();
  OUTLINED_FUNCTION_162(v42);
  *v40 = sub_26A4D1F7C;
  *(v40 + 1) = v37;
  sub_26A4DBDB4(v35, v39, &qword_2803B48F0);
  v43 = v52;
  sub_26A4DBDB4(v39, v52, &qword_2803B48F8);
  *(v43 + *(v20 + 44)) = 53;
  v44 = swift_getKeyPath();
  v45 = swift_getKeyPath();
  sub_26A4DBDB4(v43, v25, &qword_2803B4900);
  v46 = &v25[*(v51 + 44)];
  *v46 = v44;
  v46[8] = 0;
  *(v46 + 2) = v45;
  *(v46 + 12) = 256;
  return sub_26A4DBDB4(v25, v53, &qword_2803B4908);
}

void *sub_26A6E9EB8@<X0>(uint64_t a1@<X0>, _WORD *a2@<X8>)
{
  v3 = *(a1 + *(type metadata accessor for SystemTextClarificationTitleView() + 36));
  if (qword_2803A9040 != -1)
  {
    swift_once();
  }

  sub_26A4DBD68(&unk_2803D2850, &v5[25], &qword_2803AA880);
  sub_26A6AEE74(__src);
  memcpy(&v5[1], __src, 0xBFuLL);
  v5[35] = sub_26A80A810;
  v5[36] = 0;
  v5[0] = v3;

  sub_26A6E96B8();
  sub_26A851418();
  sub_26A84F628();
  memcpy(__dst, v5, 0x128uLL);
  result = memcpy(a2, __dst, 0x198uLL);
  a2[204] = 256;
  return result;
}

uint64_t sub_26A6EA068()
{
  v60 = sub_26A84BAB8();
  OUTLINED_FUNCTION_15();
  v57 = v1;
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_41();
  v56 = (v4 - v3);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B3800);
  v6 = OUTLINED_FUNCTION_79(v5);
  MEMORY[0x28223BE20](v6);
  v8 = &v55 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v55 - v10;
  v12 = sub_26A84B888();
  OUTLINED_FUNCTION_15();
  v14 = v13;
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_41();
  v18 = v17 - v16;
  v19 = type metadata accessor for SystemTextClarificationTitleView();
  OUTLINED_FUNCTION_46();
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_41();
  v23 = v22 - v21;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AAB28);
  OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v24);
  v26 = &v55 - v25;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AAB30);
  OUTLINED_FUNCTION_46();
  MEMORY[0x28223BE20](v27);
  v63 = &v55 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v62 = &v55 - v30;
  v61 = v0;
  sub_26A84DD38();
  v31 = TextProperty.asAnyView()();
  (*(v14 + 8))(v18, v12);
  if (qword_2803A9000 != -1)
  {
    OUTLINED_FUNCTION_1_76();
  }

  v32 = xmmword_2803D2728;
  v33 = qword_2803D2738;
  v34 = unk_2803D2740;
  v35 = qword_2803D2748;

  sub_26A6AEE74(__src);
  memcpy(v23, __src, 0xC0uLL);
  *(v23 + 192) = v35;
  *(v23 + 200) = v32;
  *(v23 + 216) = v33;
  *(v23 + 224) = v34;
  *(v23 + 232) = v35;
  v36 = v19[5];
  *(v23 + v36) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803A9190);
  swift_storeEnumTagMultiPayload();
  KeyPath = swift_getKeyPath();
  OUTLINED_FUNCTION_162(KeyPath);
  v38 = v19[7];
  *(v23 + v38) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91A8);
  swift_storeEnumTagMultiPayload();
  v39 = swift_getKeyPath();
  OUTLINED_FUNCTION_162(v39);
  *(v23 + v19[9]) = v31;
  sub_26A84DD48();
  sub_26A4DBDB4(v11, v8, &qword_2803B3800);
  v40 = v60;
  if (__swift_getEnumTagSinglePayload(v8, 1, v60) == 1)
  {
    sub_26A4DBD10(v8, &qword_2803B3800);
    v41 = swift_getKeyPath();
    v42 = &v26[*(v59 + 36)];
    v43 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803B36A0) + 28);
    v44 = type metadata accessor for ActionType();
    __swift_storeEnumTagSinglePayload(v42 + v43, 1, 1, v44);
    *v42 = v41;
  }

  else
  {
    v45 = *(v57 + 32);
    v46 = v56;
    v45(v56, v8, v40);
    v47 = swift_getKeyPath();
    v48 = &v26[*(v59 + 36)];
    v49 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803B36A0) + 28);
    v45(v48 + v49, v46, v40);
    v50 = type metadata accessor for ActionType();
    swift_storeEnumTagMultiPayload();
    __swift_storeEnumTagSinglePayload(v48 + v49, 0, 1, v50);
    *v48 = v47;
  }

  sub_26A6EABB8(v23, v26);
  v51 = sub_26A84DD18();
  v52 = v62;
  sub_26A4DE3B4(v51);

  sub_26A4DBD10(v26, &qword_2803AAB28);
  sub_26A4DBD68(v52, v63, &qword_2803AAB30);
  sub_26A6EAC1C();
  v53 = sub_26A851248();
  sub_26A4DBD10(v52, &qword_2803AAB30);
  return v53;
}

uint64_t type metadata accessor for SystemTextClarificationTitleView()
{
  result = qword_2803B4918;
  if (!qword_2803B4918)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_26A6EA6E0(uint64_t a1)
{
  result = sub_26A6EAE48(&qword_2803B4910, MEMORY[0x277D63610]);
  *(a1 + 8) = result;
  return result;
}

void sub_26A6EA760()
{
  sub_26A6EA8B4(319, &qword_2803B4928, &type metadata for SystemTextConstants, type metadata accessor for EnvironmentConstant);
  if (v0 <= 0x3F)
  {
    sub_26A4D27F4();
    if (v1 <= 0x3F)
    {
      sub_26A4E5DC4(319, &qword_2803A9218, type metadata accessor for VRXIdiom);
      if (v2 <= 0x3F)
      {
        sub_26A4E5DC4(319, &qword_2803A9230, MEMORY[0x277CDFA28]);
        if (v3 <= 0x3F)
        {
          sub_26A6EA8B4(319, &qword_2803AB0C8, MEMORY[0x277D85048], MEMORY[0x277CDF468]);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_26A6EA8B4(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

unint64_t sub_26A6EA904()
{
  result = qword_2803B4930;
  if (!qword_2803B4930)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B4908);
    sub_26A6EA990();
    sub_26A4D38BC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B4930);
  }

  return result;
}

unint64_t sub_26A6EA990()
{
  result = qword_2803B4938;
  if (!qword_2803B4938)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B4900);
    sub_26A6EAA1C();
    sub_26A4DBA00();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B4938);
  }

  return result;
}

unint64_t sub_26A6EAA1C()
{
  result = qword_2803B4940;
  if (!qword_2803B4940)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B48F8);
    sub_26A6EAAD4();
    sub_26A4DBCC8(qword_28157DD90, &qword_2803A91D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B4940);
  }

  return result;
}

unint64_t sub_26A6EAAD4()
{
  result = qword_2803B4948;
  if (!qword_2803B4948)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B48F0);
    sub_26A4DBCC8(&qword_2803B4950, &qword_2803A99C8);
    sub_26A4DBCC8(&qword_28157FB50, &unk_2803B31B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B4948);
  }

  return result;
}

uint64_t sub_26A6EABB8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SystemTextClarificationTitleView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_26A6EAC1C()
{
  result = qword_2803B4958;
  if (!qword_2803B4958)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803AAB30);
    sub_26A6EACD4();
    sub_26A4DBCC8(&qword_28157FB60, &qword_2803A9438);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B4958);
  }

  return result;
}

unint64_t sub_26A6EACD4()
{
  result = qword_2803B4960;
  if (!qword_2803B4960)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803AAB20);
    sub_26A6EAD60();
    sub_26A4D31BC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B4960);
  }

  return result;
}

unint64_t sub_26A6EAD60()
{
  result = qword_2803B4968;
  if (!qword_2803B4968)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803AAB28);
    sub_26A6EAE48(&qword_2803B4970, type metadata accessor for SystemTextClarificationTitleView);
    sub_26A4DBCC8(&qword_2803AA878, &unk_2803B36A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B4968);
  }

  return result;
}

uint64_t sub_26A6EAE48(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t OUTLINED_FUNCTION_1_76()
{

  return swift_once();
}

uint64_t sub_26A6EAEB0@<X0>(int a1@<W0>, uint64_t a2@<X8>)
{
  v3 = v2;
  sub_26A84EF18();
  v6 = v28;
  v7 = v28 * 0.5;
  v8 = v29;
  v9 = DWORD1(v29);
  v10 = *(&v29 + 1);
  v11 = v30;
  v12 = sub_26A851448();
  v14 = v13;
  *v31 = v28 * 0.5;
  *(v31 + 1) = v28;
  v31[1] = v29;
  *v32 = v30;
  *&v32[16] = a1;
  *&v32[20] = 256;
  *v27 = v30;
  *&v27[14] = *&v32[14];
  v25 = v31[0];
  v26 = v29;
  __src[2] = *v27;
  __src[1] = v29;
  __src[0] = v31[0];
  *&__src[3] = *&v27[16];
  *(&__src[3] + 1) = v12;
  *&__src[4] = v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B49F0);
  (*(*(v15 - 8) + 16))(a2, v3, v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B4A58);
  memcpy((a2 + *(v16 + 36)), __src, 0x48uLL);
  __src[5] = v31[0];
  __src[6] = v29;
  __src[7] = *v27;
  v34 = *&v27[16];
  v35 = v12;
  v36 = v14;
  sub_26A505CD4(v31, v18, &qword_2803B4A70);
  sub_26A505CD4(__src, v18, &qword_2803B4A68);
  sub_26A505D1C();
  *v18 = v7;
  *&v18[1] = v6;
  v19 = v8;
  v20 = v9;
  v21 = v10;
  v22 = v11;
  v23 = a1;
  v24 = 256;
  return sub_26A505D1C();
}

uint64_t sub_26A6EB0C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_26A84EF18();

  v4 = sub_26A851448();
  *&v13 = v7 * 0.5;
  *(&v13 + 1) = v7;
  v14 = v8;
  v15 = v9;
  v16 = v10;
  v17 = v11;
  v18 = v12;
  v19 = a1;
  v20 = 256;
  sub_26A6EB1D4(&v13, v4, v5, a2);
  v21 = v7 * 0.5;
  v22 = v7;
  v23 = v8;
  v24 = v9;
  v25 = v10;
  v26 = v11;
  v27 = v12;
  v28 = a1;
  v29 = 256;
  return sub_26A505D1C();
}

uint64_t sub_26A6EB1D4@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = v4;
  v10 = a1[2];
  v16 = a1[1];
  *v17 = v10;
  *&v17[10] = *(a1 + 42);
  v15 = *a1;
  __src[0] = v15;
  __src[1] = v16;
  __src[2] = *v17;
  __src[3] = *&v17[16];
  *&__src[4] = a2;
  *(&__src[4] + 1) = a3;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B4A80);
  (*(*(v11 - 8) + 16))(a4, v5, v11);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B4A88);
  memcpy((a4 + *(v12 + 36)), __src, 0x50uLL);
  __src[5] = v15;
  __src[6] = v16;
  __src[7] = *v17;
  __src[8] = *&v17[16];
  v19 = a2;
  v20 = a3;
  sub_26A505CD4(a1, v14, &qword_2803B4A78);
  sub_26A505CD4(__src, v14, &qword_2803B4A90);
  return sub_26A505D1C();
}

uint64_t sub_26A6EB354@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  v97 = a1;
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B4AB0);
  OUTLINED_FUNCTION_46();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_6_0();
  v85 = v4 - v5;
  OUTLINED_FUNCTION_92();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_27_1();
  v86 = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B1F98);
  OUTLINED_FUNCTION_79(v8);
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_82();
  v95 = v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B1FA0);
  OUTLINED_FUNCTION_79(v11);
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_82();
  v93 = v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B1FA8);
  OUTLINED_FUNCTION_79(v14);
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_82();
  v91 = v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B1FB0);
  OUTLINED_FUNCTION_79(v17);
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_82();
  v89 = v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B4AB8);
  v21 = OUTLINED_FUNCTION_79(v20);
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_6_0();
  v90 = v22 - v23;
  OUTLINED_FUNCTION_92();
  MEMORY[0x28223BE20](v24);
  v26 = &v84 - v25;
  v27 = sub_26A84AA38();
  v28 = OUTLINED_FUNCTION_79(v27);
  MEMORY[0x28223BE20](v28);
  v96 = sub_26A84A9C8();
  OUTLINED_FUNCTION_15();
  v94 = v29;
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_6_0();
  v88 = v31 - v32;
  OUTLINED_FUNCTION_92();
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_27_1();
  v92 = v34;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B4AC0);
  OUTLINED_FUNCTION_46();
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_6_0();
  v38 = v36 - v37;
  MEMORY[0x28223BE20](v39);
  v41 = &v84 - v40;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B4AC8);
  OUTLINED_FUNCTION_46();
  MEMORY[0x28223BE20](v42);
  OUTLINED_FUNCTION_6_0();
  v45 = v43 - v44;
  MEMORY[0x28223BE20](v46);
  v48 = &v84 - v47;
  v49 = v2;
  v50 = sub_26A4EC1C4(v2, &selRef_formattedTextPieces, &qword_2803B4B48);
  if (v50)
  {
    v51 = v50;
    if (sub_26A73670C(v50))
    {
      *&v98 = v51;
      swift_getKeyPath();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B4B30);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B4978);
      OUTLINED_FUNCTION_1_8();
      sub_26A506A30();
      sub_26A6ED6B0();
      sub_26A6EC6F4();
      sub_26A8512F8();
      sub_26A505CD4(v48, v45, &qword_2803B4AC8);
      sub_26A6ED6FC();
      v52 = sub_26A851248();
      result = sub_26A505D1C();
LABEL_22:
      *v97 = v52;
      return result;
    }
  }

  [v49 starRating];
  if (v54 > 0.5)
  {
    [v49 starRating];
    v56 = v55;
    *v41 = sub_26A84FA78();
    *(v41 + 1) = 0;
    v41[16] = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B4B00);
    v98 = xmmword_26A8784C0;
    swift_getKeyPath();
    *(swift_allocObject() + 16) = v56;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B4B08);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B4B10);
    sub_26A6ED5A0();
    sub_26A6ED62C();
    OUTLINED_FUNCTION_12_36();
    sub_26A8512F8();
    sub_26A505CD4(v41, v38, &qword_2803B4AC0);
    OUTLINED_FUNCTION_2_74();
    sub_26A506A30();
    v52 = sub_26A851248();
LABEL_7:
    result = sub_26A505D1C();
    goto LABEL_22;
  }

  sub_26A6ED4E8(v49, &selRef_contentAdvisory);
  if (v57)
  {
    sub_26A84AA28();
    v58 = v92;
    sub_26A84A9D8();
    v59 = sub_26A850608();
    OUTLINED_FUNCTION_20_24(v89, v60, v61, v59);
    v62 = sub_26A850618();
    OUTLINED_FUNCTION_20_24(v91, v63, v64, v62);
    v65 = sub_26A850648();
    OUTLINED_FUNCTION_20_24(v93, v66, v67, v65);
    v68 = sub_26A8505E8();
    OUTLINED_FUNCTION_20_24(v95, v69, v70, v68);
    sub_26A850658();
    v71 = sub_26A850668();
    __swift_storeEnumTagSinglePayload(v26, 0, 1, v71);
    sub_26A505CD4(v26, v90, &qword_2803B4AB8);
    sub_26A6ED544();
    sub_26A84A9E8();
    sub_26A505D1C();
    v72 = v94;
    v73 = v96;
    (*(v94 + 16))(v88, v58, v96);
    sub_26A850888();
    OUTLINED_FUNCTION_17_24();
    result = [v49 maxLines];
    if ((result & 0x8000000000000000) == 0)
    {
      KeyPath = swift_getKeyPath();
      OUTLINED_FUNCTION_9_46(KeyPath);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B49C8);
      sub_26A6ECA88();
      OUTLINED_FUNCTION_12_36();
      v52 = sub_26A851248();
      result = (*(v72 + 8))(v58, v73);
      goto LABEL_22;
    }

    __break(1u);
  }

  else
  {
    v75 = sub_26A4EC1C4(v49, &selRef_icons, &qword_2803B4AF0);
    if (v75)
    {
      v76 = v75;
      if (sub_26A73670C(v75))
      {
        v77 = sub_26A84FA78();
        v78 = v86;
        *v86 = v77;
        *(v78 + 8) = 0;
        *(v78 + 16) = 1;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B4AD0);
        *&v98 = v76;
        swift_getKeyPath();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B4AD8);
        OUTLINED_FUNCTION_1_8();
        sub_26A506A30();
        sub_26A6ED6B0();
        OUTLINED_FUNCTION_12_36();
        sub_26A8512F8();
        sub_26A505CD4(v78, v85, &qword_2803B4AB0);
        OUTLINED_FUNCTION_2_74();
        sub_26A506A30();
        v52 = sub_26A851248();
        goto LABEL_7;
      }
    }

    v79 = sub_26A6ED4E8(v49, &selRef_text);
    if (v80)
    {
      v81 = v79;
    }

    else
    {
      v81 = 0;
    }

    v82 = 0xE000000000000000;
    if (v80)
    {
      v82 = v80;
    }

    *&v98 = v81;
    *(&v98 + 1) = v82;
    sub_26A53ACC8();
    sub_26A850898();
    OUTLINED_FUNCTION_17_24();
    result = [v49 maxLines];
    if ((result & 0x8000000000000000) == 0)
    {
      v83 = swift_getKeyPath();
      OUTLINED_FUNCTION_9_46(v83);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B49C8);
      sub_26A6ECA88();
      OUTLINED_FUNCTION_12_36();
      result = sub_26A851248();
      v52 = result;
      goto LABEL_22;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_26A6EBE10@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B4A98);
  OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v5);
  v7 = &v65 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B49A0);
  OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_82();
  v67 = v10;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B4AA0);
  OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_82();
  v76 = v12;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B49C0);
  OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_82();
  v66 = v14;
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B4AA8);
  OUTLINED_FUNCTION_15();
  v75 = v15;
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_82();
  v82 = v17;
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B49B0);
  OUTLINED_FUNCTION_46();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_6_0();
  v73 = v19 - v20;
  OUTLINED_FUNCTION_92();
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_27_1();
  v81 = v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B4990);
  v24 = OUTLINED_FUNCTION_79(v23);
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_6_0();
  v78 = v25 - v26;
  OUTLINED_FUNCTION_92();
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_27_1();
  v79 = v28;
  v29 = sub_26A6ED4E8(v1, &selRef_text);
  if (v30)
  {
    v31 = v29;
  }

  else
  {
    v31 = 0;
  }

  v32 = 0xE000000000000000;
  if (v30)
  {
    v32 = v30;
  }

  v83 = v31;
  v84 = v32;
  sub_26A53ACC8();
  v33 = sub_26A850898();
  v35 = v34;
  v37 = v36;
  v39 = v38;
  result = [v1 maxLines];
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v41 = result;
    v68 = v4;
    v69 = v8;
    v70 = v7;
    v71 = a1;
    KeyPath = swift_getKeyPath();
    v83 = v33;
    v84 = v35;
    v85 = v37 & 1;
    v86 = v39;
    v87 = KeyPath;
    v88 = v41;
    v89 = 0;
    [v2 isBold];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B49C8);
    sub_26A6ECA88();
    v43 = v2;
    sub_26A850B98();
    sub_26A4EC448(v33, v35, v37 & 1);

    if ([v2 isEmphasized])
    {
      v44 = sub_26A84FEA8();
      v45 = v75;
      v46 = v66;
      v47 = OUTLINED_FUNCTION_15_27();
      v48(v47);
      *(v46 + *(v74 + 36)) = v44;
      sub_26A505CD4(v46, v76, &qword_2803B49C0);
      swift_storeEnumTagMultiPayload();
      sub_26A6EC994();
      OUTLINED_FUNCTION_3_66();
      v49 = v73;
      v50 = v45;
      sub_26A84FDF8();
      sub_26A505D1C();
    }

    else
    {
      v50 = v75;
      v51 = OUTLINED_FUNCTION_15_27();
      v52(v51);
      swift_storeEnumTagMultiPayload();
      sub_26A6EC994();
      OUTLINED_FUNCTION_3_66();
      v49 = v73;
      sub_26A84FDF8();
    }

    v53 = v81;
    v54 = v78;
    (*(v50 + 8))(v82, v2);
    sub_26A505C8C(v49, v53, &qword_2803B49B0);
    v55 = [v2 textColor];
    v57 = v70;
    v56 = v71;
    v58 = v69;
    if (v55)
    {
      v59 = sub_26A5B5EA8([v43 textColor]);
      v60 = swift_getKeyPath();
      v61 = v67;
      sub_26A505CD4(v53, v67, &qword_2803B49B0);
      v62 = (v61 + *(v58 + 36));
      *v62 = v60;
      v62[1] = v59;
      sub_26A505CD4(v61, v57, &qword_2803B49A0);
      swift_storeEnumTagMultiPayload();
      sub_26A6EC80C();
      sub_26A6EC8C4();
      OUTLINED_FUNCTION_11_39();
      sub_26A84FDF8();
      sub_26A505D1C();
    }

    else
    {
      sub_26A505CD4(v53, v70, &qword_2803B49B0);
      swift_storeEnumTagMultiPayload();
      sub_26A6EC80C();
      sub_26A6EC8C4();
      OUTLINED_FUNCTION_11_39();
      sub_26A84FDF8();
    }

    sub_26A505D1C();
    v63 = v79;
    sub_26A505C8C(v54, v79, &qword_2803B4990);
    v64 = [v43 encapsulationStyle];
    sub_26A505C8C(v63, v56, &qword_2803B4990);
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B4978);
    *(v56 + *(result + 36)) = v64;
  }

  return result;
}

uint64_t *sub_26A6EC4C4@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  v4 = *result;
  if (v4 <= a3 || v4 + -1.0 < a3)
  {
    sub_26A850F08();
    sub_26A8508A8();
    result = sub_26A84FDF8();
    v5 = v8;
    v7 = v9;
    v6 = v10;
  }

  else
  {
    v5 = 0uLL;
    v6 = -1;
    v7 = 0uLL;
  }

  *a2 = v5;
  *(a2 + 16) = v7;
  *(a2 + 32) = v6;
  return result;
}

uint64_t sub_26A6EC5BC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_26A6A8A90();
  *a1 = result;
  return result;
}

uint64_t SFFormattedText.asAnyView()()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B4978);
  OUTLINED_FUNCTION_46();
  MEMORY[0x28223BE20](v0);
  OUTLINED_FUNCTION_6_0();
  v3 = v1 - v2;
  MEMORY[0x28223BE20](v4);
  v6 = &v9 - v5;
  sub_26A6EBE10(&v9 - v5);
  sub_26A505CD4(v6, v3, &qword_2803B4978);
  sub_26A6EC6F4();
  v7 = sub_26A851248();
  sub_26A505D1C();
  return v7;
}

unint64_t sub_26A6EC6F4()
{
  result = qword_2803B4980;
  if (!qword_2803B4980)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B4978);
    sub_26A6EC780();
    sub_26A6ECB40();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B4980);
  }

  return result;
}

unint64_t sub_26A6EC780()
{
  result = qword_2803B4988;
  if (!qword_2803B4988)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B4990);
    sub_26A6EC80C();
    sub_26A6EC8C4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B4988);
  }

  return result;
}

unint64_t sub_26A6EC80C()
{
  result = qword_2803B4998;
  if (!qword_2803B4998)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B49A0);
    sub_26A6EC8C4();
    sub_26A506A30();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B4998);
  }

  return result;
}

unint64_t sub_26A6EC8C4()
{
  result = qword_2803B49A8;
  if (!qword_2803B49A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B49B0);
    sub_26A6EC994();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B49C8);
    sub_26A6ECA88();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B49A8);
  }

  return result;
}

unint64_t sub_26A6EC994()
{
  result = qword_2803B49B8;
  if (!qword_2803B49B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B49C0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B49C8);
    sub_26A6ECA88();
    swift_getOpaqueTypeConformance2();
    sub_26A506A30();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B49B8);
  }

  return result;
}

unint64_t sub_26A6ECA88()
{
  result = qword_2803B49D0;
  if (!qword_2803B49D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B49C8);
    sub_26A506A30();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B49D0);
  }

  return result;
}

unint64_t sub_26A6ECB40()
{
  result = qword_2803B49D8;
  if (!qword_2803B49D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B49D8);
  }

  return result;
}

uint64_t sub_26A6ECBE4@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t *a3@<X8>)
{
  v60 = a3;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B49E0);
  MEMORY[0x28223BE20](v59);
  v6 = &v59 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v59 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B49E8);
  MEMORY[0x28223BE20](v10);
  v12 = &v59 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v59 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B49F0);
  v17 = *(v16 - 8);
  v19 = MEMORY[0x28223BE20](v16);
  if (a2 == 2)
  {
    v42 = sub_26A84FEC8();
    v43 = sub_26A850248();
    (*(v17 + 16))(v9, a1, v16);
    v44 = &v9[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B4A00) + 36)];
    *v44 = v42;
    v44[4] = v43;
    LOBYTE(v42) = sub_26A850248();
    sub_26A84ED48();
    v46 = v45;
    v48 = v47;
    v50 = v49;
    v52 = v51;
    v53 = &v9[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B4A08) + 36)];
    *v53 = v42;
    *(v53 + 1) = v46;
    *(v53 + 2) = v48;
    *(v53 + 3) = v50;
    *(v53 + 4) = v52;
    v53[40] = 0;
    v54 = &v9[*(v59 + 36)];
    v55 = *(sub_26A84F5F8() + 20);
    v56 = *MEMORY[0x277CE0118];
    v57 = sub_26A84FB88();
    (*(*(v57 - 8) + 104))(&v54[v55], v56, v57);
    __asm { FMOV            V0.2D, #3.0 }

    *v54 = _Q0;
    *&v54[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A9E58) + 36)] = 256;
    sub_26A505CD4(v9, v6, &qword_2803B49E0);
    sub_26A6ED0D8();
    v21 = sub_26A851248();
    goto LABEL_6;
  }

  if (a2 == 1)
  {
    v22 = sub_26A84FED8();
    sub_26A6EAEB0(v22, v15);
    v23 = sub_26A850248();
    sub_26A84ED48();
    v25 = v24;
    v27 = v26;
    v29 = v28;
    v31 = v30;
    v32 = &v15[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B4A38) + 36)];
    *v32 = v23;
    *(v32 + 1) = v25;
    *(v32 + 2) = v27;
    *(v32 + 3) = v29;
    *(v32 + 4) = v31;
    v32[40] = 0;
    v33 = &v15[*(v10 + 36)];
    v34 = *(sub_26A84F5F8() + 20);
    v35 = *MEMORY[0x277CE0118];
    v36 = sub_26A84FB88();
    (*(*(v36 - 8) + 104))(&v33[v34], v35, v36);
    __asm { FMOV            V0.2D, #3.0 }

    *v33 = _Q0;
    *&v33[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A9E58) + 36)] = 256;
    sub_26A505CD4(v15, v12, &qword_2803B49E8);
    sub_26A6ED2A0();
    v21 = sub_26A851248();
LABEL_6:
    result = sub_26A505D1C();
    goto LABEL_7;
  }

  (*(v17 + 16))(&v59 - v18, a1, v16, v19);
  sub_26A506A30();
  result = sub_26A851248();
  v21 = result;
LABEL_7:
  *v60 = v21;
  return result;
}

unint64_t sub_26A6ED0D8()
{
  result = qword_2803B4A10;
  if (!qword_2803B4A10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B49E0);
    sub_26A6ED384(&qword_2803B4A18, &unk_2803B4A08, &unk_26A878600, sub_26A6ED1BC);
    sub_26A506A30();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B4A10);
  }

  return result;
}

unint64_t sub_26A6ED1BC()
{
  result = qword_2803B4A20;
  if (!qword_2803B4A20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B4A00);
    sub_26A506A30();
    sub_26A506A30();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B4A20);
  }

  return result;
}

unint64_t sub_26A6ED2A0()
{
  result = qword_2803B4A40;
  if (!qword_2803B4A40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B49E8);
    sub_26A6ED384(&qword_2803B4A48, &unk_2803B4A38, &unk_26A878618, sub_26A6ED404);
    sub_26A506A30();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B4A40);
  }

  return result;
}

uint64_t sub_26A6ED384(unint64_t *a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    v7 = OUTLINED_FUNCTION_50_0(0, a2);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v7);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_26A6ED404()
{
  result = qword_2803B4A50;
  if (!qword_2803B4A50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B4A58);
    sub_26A506A30();
    sub_26A506A30();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B4A50);
  }

  return result;
}

uint64_t sub_26A6ED4E8(void *a1, SEL *a2)
{
  v2 = [a1 *a2];
  if (v2)
  {
    v3 = v2;
    sub_26A8517B8();
  }

  return OUTLINED_FUNCTION_211();
}

unint64_t sub_26A6ED544()
{
  result = qword_281580018;
  if (!qword_281580018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281580018);
  }

  return result;
}

unint64_t sub_26A6ED5A0()
{
  result = qword_2803B4B18;
  if (!qword_2803B4B18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B4B08);
    sub_26A4EEFCC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B4B18);
  }

  return result;
}

unint64_t sub_26A6ED62C()
{
  result = qword_2803B4B20;
  if (!qword_2803B4B20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B4B10);
    sub_26A4EF644();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B4B20);
  }

  return result;
}

unint64_t sub_26A6ED6B0()
{
  OUTLINED_FUNCTION_196();
  result = *v2;
  if (!result)
  {
    sub_26A4EC5B0(255, v1);
    result = swift_getWitnessTable();
    atomic_store(result, v0);
  }

  return result;
}

unint64_t sub_26A6ED6FC()
{
  result = qword_2803B4B50;
  if (!qword_2803B4B50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B4AC8);
    sub_26A6ED780();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B4B50);
  }

  return result;
}

unint64_t sub_26A6ED780()
{
  result = qword_2803B4B58;
  if (!qword_2803B4B58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B4B60);
    sub_26A6EC6F4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B4B58);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_3_66()
{
  *(v2 - 144) = v0;
  *(v2 - 136) = v1;

  return swift_getOpaqueTypeConformance2();
}

uint64_t OUTLINED_FUNCTION_9_46(uint64_t result)
{
  *(v6 - 160) = v2;
  *(v6 - 152) = v3;
  *(v6 - 144) = v4 & 1;
  *(v6 - 136) = v1;
  *(v6 - 128) = result;
  *(v6 - 120) = v5;
  *(v6 - 112) = 0;
  return result;
}

uint64_t OUTLINED_FUNCTION_20_24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return __swift_storeEnumTagSinglePayload(a1, 1, 1, a4);
}

id sub_26A6ED8D0(double a1, double a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AF6A0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v10 - v5;
  v7 = sub_26A84AD18();
  __swift_storeEnumTagSinglePayload(v6, 1, 1, v7);
  v8 = objc_allocWithZone(MEMORY[0x277D23C80]);
  return sub_26A6ED9B8(v6, -1, -1, -1, -1, -1, -1, 0, a1, a2, 1.0, 0, 0, 0);
}

id sub_26A6ED9B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8, double a9, double a10, double a11, char a12, char a13, char a14)
{
  v15 = v14;
  v23 = sub_26A84AD18();
  v24 = 0;
  if (__swift_getEnumTagSinglePayload(a1, 1, v23) != 1)
  {
    v24 = sub_26A84ACE8();
    (*(*(v23 - 8) + 8))(a1, v23);
  }

  BYTE3(v27) = a14 & 1;
  BYTE2(v27) = a13 & 1;
  BYTE1(v27) = a12 & 1;
  LOBYTE(v27) = a8 & 1;
  v25 = [v15 initWithSize:v24 locale:a2 dynamicTypeSize:a3 legibilityWeight:a4 layoutDirection:a5 colorScheme:a6 colorSchemeContrast:a9 displayScale:a10 displayGamut:a11 accessibilityDifferentiateWithoutColor:a7 accessibilityInvertColors:v27 accessibilityReduceMotion:? accessibilityReduceTransparency:?];

  return v25;
}

double sub_26A6EDB00()
{
  v1 = v0;
  v2 = sub_26A84B2B8();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v0 + 8);
  v7 = type metadata accessor for URLImageSize();
  sub_26A6EDDD8();
  OUTLINED_FUNCTION_58_1();
  sub_26A84C958();
  v9 = v8;
  v10 = v8;
  if (*(v0 + v7[6]))
  {
    if (v6 != INFINITY)
    {
      Width = v6;
      if (v8 == 1.0)
      {
        goto LABEL_10;
      }

      if (!*(v0 + v7[7]) || (OUTLINED_FUNCTION_58_1(), (sub_26A84C938() & 1) != 0))
      {
LABEL_17:
        Width = v6 * v10;
        goto LABEL_10;
      }

LABEL_16:
      Width = v6;
      goto LABEL_10;
    }
  }

  else if (v6 != INFINITY)
  {
    Width = v6;
    if (v8 == 1.0)
    {
      goto LABEL_10;
    }

    if (*(v0 + v7[7]) != 1)
    {
      OUTLINED_FUNCTION_58_1();
      if ((sub_26A84C938() & 1) == 0)
      {
        goto LABEL_17;
      }
    }

    goto LABEL_16;
  }

  v12 = [objc_opt_self() mainScreen];
  [v12 bounds];
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;

  v24.origin.x = v14;
  v24.origin.y = v16;
  v24.size.width = v18;
  v24.size.height = v20;
  Width = CGRectGetWidth(v24);
  if (v9 == 1.0)
  {
    sub_26A84B2A8();
    OUTLINED_FUNCTION_58_1();
    sub_26A84C958();
    (*(v3 + 8))(v5, v2);
  }

LABEL_10:
  v21 = *(v1 + v7[9]);
  if (v21 > 0.0)
  {
    Width = Width - v6 * (v21 + v21);
  }

  return round(Width) * *(v1 + v7[8]);
}

uint64_t type metadata accessor for URLImageSize()
{
  result = qword_28157F550;
  if (!qword_28157F550)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_26A6EDDD8()
{
  result = qword_2803B01A0;
  if (!qword_2803B01A0)
  {
    sub_26A84B2B8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B01A0);
  }

  return result;
}

uint64_t sub_26A6EDE58()
{
  result = type metadata accessor for ImageStyleAppearance();
  if (v1 <= 0x3F)
  {
    result = sub_26A84B2B8();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t LongItemTextView.init(text1:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = swift_getKeyPath();
  *(a2 + 9) = 0;
  swift_unknownObjectWeakInit();
  if (qword_28157E660 != -1)
  {
    OUTLINED_FUNCTION_3();
  }

  v24[0] = xmmword_281588758[0];
  v24[1] = unk_281588768;
  v24[2] = xmmword_281588778;
  v24[3] = unk_281588788;
  v25 = xmmword_281588758[0];
  v26 = unk_281588768;
  v27 = xmmword_281588778;
  v28 = unk_281588788;
  v22 = unk_281588788;
  v23 = xmmword_281588778;
  sub_26A4DBD68(v24, v31, &qword_2803A91B0);
  sub_26A6AEE74(__src);
  memcpy((a2 + 24), __src, 0xC0uLL);
  *(a2 + 232) = v22;
  *(a2 + 216) = v23;
  v4 = v26;
  *(a2 + 248) = v25;
  v5 = v27;
  v6 = v28;
  *(a2 + 264) = v4;
  *(a2 + 280) = v5;
  *(a2 + 296) = v6;
  if (qword_2803A8D88 != -1)
  {
    OUTLINED_FUNCTION_1_77();
  }

  v7 = xmmword_2803D21A8;
  v8 = qword_2803D21B8;
  v9 = unk_2803D21C0;
  v10 = xmmword_2803D21C8;
  v11 = byte_2803D21D8;
  v30[0] = *algn_2803D21D9;
  *(v30 + 3) = dword_2803D21DC;
  v12 = qword_2803D21E0;

  sub_26A6AEE74(v31);
  memcpy((a2 + 312), v31, 0xC0uLL);
  *(a2 + 504) = v10;
  *(a2 + 520) = v11 & 1;
  *(a2 + 528) = v12;
  *(a2 + 536) = v7;
  *(a2 + 552) = v8;
  *(a2 + 560) = v9;
  *(a2 + 568) = v10;
  *(a2 + 584) = v11;
  *(a2 + 585) = v30[0];
  *(a2 + 588) = *(v30 + 3);
  *(a2 + 592) = v12;
  *(a2 + 600) = swift_getKeyPath();
  *(a2 + 608) = 0;
  *(a2 + 616) = swift_getKeyPath();
  *(a2 + 624) = 0;
  v13 = type metadata accessor for LongItemTextView();
  v14 = v13[9];
  *(a2 + v14) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803A9190);
  swift_storeEnumTagMultiPayload();
  v15 = a2 + v13[10];
  *v15 = swift_getKeyPath();
  *(v15 + 8) = 0;
  v16 = v13[11];
  *(a2 + v16) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91A8);
  swift_storeEnumTagMultiPayload();
  v17 = a2 + v13[12];
  *v17 = swift_getKeyPath();
  *(v17 + 8) = 0;
  v18 = a2 + v13[13];
  *v18 = swift_getKeyPath();
  *(v18 + 8) = 0;
  v19 = a1[3];
  v20 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v19);
  *(a2 + v13[18]) = (*(v20 + 8))(v19, v20);
  *(a2 + v13[14]) = 1;
  *(a2 + v13[15]) = 1;
  *(a2 + v13[16]) = 0;
  *(a2 + v13[17]) = 0;
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t LongItemTextView.init(text1:isQuoted:hasTopPadding:hasBottomPadding:hasBackgroundPlatter:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = swift_getKeyPath();
  *(a2 + 9) = 0;
  swift_unknownObjectWeakInit();
  if (qword_28157E660 != -1)
  {
    OUTLINED_FUNCTION_3();
  }

  v24[0] = xmmword_281588758[0];
  v24[1] = unk_281588768;
  v24[2] = xmmword_281588778;
  v24[3] = xmmword_281588788;
  v25 = xmmword_281588758[0];
  v26 = unk_281588768;
  v27 = xmmword_281588778;
  v28 = xmmword_281588788;
  v22 = xmmword_281588788;
  v23 = xmmword_281588778;
  sub_26A4DBD68(v24, v31, &qword_2803A91B0);
  sub_26A6AEE74(__src);
  memcpy((a2 + 24), __src, 0xC0uLL);
  *(a2 + 232) = v22;
  *(a2 + 216) = v23;
  v4 = v26;
  *(a2 + 248) = v25;
  v5 = v27;
  v6 = v28;
  *(a2 + 264) = v4;
  *(a2 + 280) = v5;
  *(a2 + 296) = v6;
  if (qword_2803A8D88 != -1)
  {
    OUTLINED_FUNCTION_1_77();
  }

  v7 = xmmword_2803D21A8;
  v8 = qword_2803D21B8;
  v9 = unk_2803D21C0;
  v10 = xmmword_2803D21C8;
  v11 = byte_2803D21D8;
  v30[0] = *algn_2803D21D9;
  *(v30 + 3) = dword_2803D21DC;
  v12 = qword_2803D21E0;

  sub_26A6AEE74(v31);
  memcpy((a2 + 312), v31, 0xC0uLL);
  *(a2 + 504) = v10;
  *(a2 + 520) = v11 & 1;
  *(a2 + 528) = v12;
  *(a2 + 536) = v7;
  *(a2 + 552) = v8;
  *(a2 + 560) = v9;
  *(a2 + 568) = v10;
  *(a2 + 584) = v11;
  *(a2 + 585) = v30[0];
  *(a2 + 588) = *(v30 + 3);
  *(a2 + 592) = v12;
  *(a2 + 600) = swift_getKeyPath();
  *(a2 + 608) = 0;
  *(a2 + 616) = swift_getKeyPath();
  *(a2 + 624) = 0;
  v13 = type metadata accessor for LongItemTextView();
  v14 = v13[9];
  *(a2 + v14) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803A9190);
  swift_storeEnumTagMultiPayload();
  v15 = a2 + v13[10];
  *v15 = swift_getKeyPath();
  *(v15 + 8) = 0;
  v16 = v13[11];
  *(a2 + v16) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91A8);
  swift_storeEnumTagMultiPayload();
  v17 = a2 + v13[12];
  *v17 = swift_getKeyPath();
  *(v17 + 8) = 0;
  v18 = a2 + v13[13];
  *v18 = swift_getKeyPath();
  *(v18 + 8) = 0;
  v19 = a1[3];
  v20 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v19);
  *(a2 + v13[18]) = (*(v20 + 8))(v19, v20);
  OUTLINED_FUNCTION_8_52(v13[14]);
  OUTLINED_FUNCTION_8_52(v13[15]);
  OUTLINED_FUNCTION_8_52(v13[16]);
  OUTLINED_FUNCTION_8_52(v13[17]);
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_26A6EE584(char a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B4BF8);
  MEMORY[0x28223BE20](v4);
  v6 = &v12 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A9980);
  MEMORY[0x28223BE20](v7);
  v9 = &v12 - v8;
  if (a1)
  {
    v10 = *(v7 + 36);
    *&v9[v10] = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB430);
    swift_storeEnumTagMultiPayload();
    sub_26A4DBD68(v2, v9, &qword_2803A9990);
    sub_26A4DBD68(v9, v6, &qword_2803A9980);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A9990);
    sub_26A4D4AEC();
    sub_26A4D4BA8();
    sub_26A84FDF8();
    return sub_26A4DBD10(v9, &qword_2803A9980);
  }

  else
  {
    sub_26A4DBD68(v2, v6, &qword_2803A9990);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A9990);
    sub_26A4D4AEC();
    sub_26A4D4BA8();
    return sub_26A84FDF8();
  }
}

uint64_t sub_26A6EE7C4()
{
  v1 = sub_26A84F988();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v8[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = *(v0 + 600);
  if (*(v0 + 608) != 1)
  {

    sub_26A851EA8();
    v6 = sub_26A8501F8();
    sub_26A84EA78();

    sub_26A84F978();
    swift_getAtKeyPath();
    sub_26A49035C(v5, 0);
    (*(v2 + 8))(v4, v1);
    LOBYTE(v5) = v8[15];
  }

  return v5 & 1;
}

uint64_t sub_26A6EE90C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_26A84F988();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803A9190);
  MEMORY[0x28223BE20](v7);
  v9 = &v13 - v8;
  v10 = type metadata accessor for LongItemTextView();
  sub_26A4DBD68(v1 + *(v10 + 36), v9, &unk_2803A9190);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_26A4DBDB4(v9, a1, &qword_2803A91C8);
  }

  sub_26A851EA8();
  v12 = sub_26A8501F8();
  sub_26A84EA78();

  sub_26A84F978();
  swift_getAtKeyPath();

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_26A6EEAF4()
{
  v1 = sub_26A84F988();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = v0 + *(type metadata accessor for LongItemTextView() + 40);
  v6 = *v5;
  if ((*(v5 + 8) & 1) == 0)
  {

    sub_26A851EA8();
    v7 = sub_26A8501F8();
    sub_26A84EA78();

    sub_26A84F978();
    swift_getAtKeyPath();
    sub_26A49035C(v6, 0);
    (*(v2 + 8))(v4, v1);
    return v9[1];
  }

  return v6;
}

uint64_t sub_26A6EEC48@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_26A84F988();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91A8);
  MEMORY[0x28223BE20](v7);
  v9 = &v14 - v8;
  v10 = type metadata accessor for LongItemTextView();
  sub_26A4DBD68(v1 + *(v10 + 44), v9, &qword_2803A91A8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_26A84F3A8();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    sub_26A851EA8();
    v13 = sub_26A8501F8();
    sub_26A84EA78();

    sub_26A84F978();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

uint64_t sub_26A6EEE50()
{
  v1 = sub_26A84F988();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v9[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = v0 + *(type metadata accessor for LongItemTextView() + 48);
  v6 = *v5;
  if (*(v5 + 8) != 1)
  {

    sub_26A851EA8();
    v7 = sub_26A8501F8();
    sub_26A84EA78();

    sub_26A84F978();
    swift_getAtKeyPath();
    sub_26A49035C(v6, 0);
    (*(v2 + 8))(v4, v1);
    LOBYTE(v6) = v9[15];
  }

  return v6 & 1;
}

uint64_t sub_26A6EEFA8()
{
  v1 = sub_26A84F988();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v9[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = v0 + *(type metadata accessor for LongItemTextView() + 52);
  v6 = *v5;
  if (*(v5 + 8) != 1)
  {

    sub_26A851EA8();
    v7 = sub_26A8501F8();
    sub_26A84EA78();

    sub_26A84F978();
    swift_getAtKeyPath();
    sub_26A49035C(v6, 0);
    (*(v2 + 8))(v4, v1);
    LOBYTE(v6) = v9[15];
  }

  return v6 & 1;
}

uint64_t LongItemTextView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v70 = a1;
  v2 = type metadata accessor for LongItemTextView();
  v69 = *(v2 - 8);
  v68 = *(v69 + 64);
  MEMORY[0x28223BE20](v2);
  v67 = &v63 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B4B68) - 8;
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v5);
  v7 = &v63 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91C0);
  OUTLINED_FUNCTION_79(v8);
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v9);
  v11 = &v63 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91C8);
  OUTLINED_FUNCTION_79(v12);
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v13);
  v15 = &v63 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A9968);
  OUTLINED_FUNCTION_79(v16);
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v17);
  v19 = &v63 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B4B70) - 8;
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v21);
  v63 = &v63 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B4B78) - 8;
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v24);
  v64 = &v63 - v25;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B4B80) - 8;
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v26);
  v66 = &v63 - v27;
  sub_26A6EE90C(v15);
  v72 = sub_26A6EF76C();
  v73 = v28;
  v74 = v29;
  v75 = v30;
  v76 = 0;
  sub_26A6EEAF4();
  sub_26A6EEC48(v11);
  v31 = sub_26A84F3A8();
  __swift_storeEnumTagSinglePayload(v11, 0, 1, v31);
  v71 = v1;
  sub_26A4CD248();
  sub_26A850E18();
  v32 = sub_26A850E68();

  v33 = *(v4 + 44);
  v34 = *MEMORY[0x277CE13B8];
  sub_26A8514D8();
  OUTLINED_FUNCTION_46();
  (*(v35 + 104))(&v7[v33], v34);
  *v7 = v32;
  *(v7 + 4) = 256;
  v36 = sub_26A851448();
  v38 = v37;
  v39 = *(v20 + 44);
  v40 = v63;
  v41 = &v63[v39];
  sub_26A4DBDB4(v7, &v63[v39], &qword_2803B4B68);
  v42 = &v41[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B4B88) + 36)];
  *v42 = v36;
  v42[1] = v38;
  v43 = v40;
  sub_26A4DBDB4(v19, v40, &qword_2803A9968);
  v44 = swift_allocObject();
  *(v44 + 16) = sub_26A68CCBC;
  *(v44 + 24) = 0;
  v45 = v64;
  v46 = &v64[*(v23 + 44)];
  *(v46 + 2) = swift_getKeyPath();
  v46[24] = 0;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91D8);
  v48 = *(v47 + 40);
  *&v46[v48] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803A9190);
  swift_storeEnumTagMultiPayload();
  v49 = &v46[*(v47 + 44)];
  *v49 = swift_getKeyPath();
  v49[8] = 0;
  *v46 = sub_26A4D1F7C;
  *(v46 + 1) = v44;
  sub_26A4DBDB4(v43, v45, &qword_2803B4B70);
  v50 = v66;
  sub_26A4DBDB4(v45, v66, &qword_2803B4B78);
  *(v50 + *(v65 + 44)) = 44;
  v51 = v67;
  sub_26A6F044C(v1, v67);
  v52 = (*(v69 + 80) + 16) & ~*(v69 + 80);
  v53 = swift_allocObject();
  sub_26A6F04B0(v51, v53 + v52);
  v54 = sub_26A851448();
  v56 = v55;
  v57 = v50;
  v58 = v70;
  sub_26A4DBDB4(v57, v70, &qword_2803B4B80);
  v59 = (v58 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B4B90) + 36));
  *v59 = sub_26A8027E0;
  v59[1] = 0;
  v59[2] = v54;
  v59[3] = v56;
  v60 = swift_allocObject();
  *(v60 + 16) = sub_26A6F0514;
  *(v60 + 24) = v53;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B4B98);
  v62 = (v58 + *(result + 36));
  *v62 = sub_26A52E998;
  v62[1] = v60;
  return result;
}

double sub_26A6EF76C()
{
  v1 = sub_26A6EEE50();
  v2 = 216;
  if (v1)
  {
    v2 = 504;
  }

  v3 = *(v0 + v2);
  if (qword_2803A8BF8 != -1)
  {
    swift_once();
  }

  if (byte_2803B0441 == 1)
  {
    v4 = sub_26A6EEAF4();
    if (sub_26A61B05C(v4, &unk_287B131A0))
    {
      sub_26A4D7E10();
      switch(sub_26A63CD18())
      {
        case 1u:
        case 2u:
        case 3u:
          sub_26A852598();
          goto LABEL_10;
        case 4u:
          break;
        default:
LABEL_10:

          break;
      }
    }
  }

  if ((sub_26A6EE7C4() & 1) == 0)
  {
    return *(v0 + 216);
  }

  v5 = type metadata accessor for LongItemTextView();
  if ((*(v0 + v5[14]) & 1) != 0 || *(v0 + v5[17]) == 1)
  {
    v3 = *(v0 + 216);
  }

  if (*(v0 + v5[15]) == 1)
  {
    sub_26A6EEFA8();
  }

  v6 = sub_26A6EEAF4();
  if (sub_26A61B05C(v6, &unk_287B13090))
  {
    if (qword_2803A8BF0 != -1)
    {
      swift_once();
    }

    if (byte_2803B0440 == 1 && (sub_26A6EEE50() & 1) == 0)
    {
      return v3 + 10.0;
    }
  }

  return v3;
}

uint64_t sub_26A6EFA14(uint64_t a1)
{
  v2 = type metadata accessor for LongItemTextView();
  v3 = *(a1 + *(v2 + 72));
  if (sub_26A6EE7C4())
  {
    if (qword_28157E6A8 != -1)
    {
      swift_once();
    }

    v4 = &unk_281588848;
  }

  else
  {
    if (qword_2803A9018 != -1)
    {
      swift_once();
    }

    v4 = &unk_2803D2760;
  }

  sub_26A4DBD68(v4, __dst, &qword_2803AA880);
  sub_26A4DBD68(__dst, &v6[25], &qword_2803AA880);
  sub_26A6AEE74(__src);
  sub_26A4DBD10(__dst, &qword_2803AA880);
  memcpy(&v6[1], __src, 0xBFuLL);
  v6[35] = sub_26A80A810;
  v6[36] = 0;
  v6[0] = v3;

  sub_26A851418();
  sub_26A84F628();
  memcpy(__dst, v6, 0x128uLL);
  sub_26A6EE584(*(a1 + *(v2 + 64)));
  return sub_26A4DBD10(__dst, &qword_2803A9990);
}

uint64_t sub_26A6EFBF8()
{
  v50 = sub_26A84BAB8();
  OUTLINED_FUNCTION_15();
  v48 = v0;
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_41();
  v47 = (v3 - v2);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B3800);
  v5 = OUTLINED_FUNCTION_79(v4);
  MEMORY[0x28223BE20](v5);
  v7 = &v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v46 - v9;
  v11 = sub_26A84B888();
  OUTLINED_FUNCTION_15();
  v13 = v12;
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_41();
  v17 = v16 - v15;
  v18 = type metadata accessor for LongItemTextView();
  v19 = OUTLINED_FUNCTION_79(v18);
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_41();
  v22 = v21 - v20;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AACA8);
  OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v23);
  v25 = &v46 - v24;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AACB0);
  OUTLINED_FUNCTION_46();
  MEMORY[0x28223BE20](v26);
  v52 = &v46 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v51 = &v46 - v29;
  sub_26A84B748();
  v30 = TextProperty.asAnyView()();
  (*(v13 + 8))(v17, v11);
  v31 = v50;
  v55[3] = MEMORY[0x277CE11C8];
  v55[4] = &protocol witness table for AnyView;
  v55[0] = v30;
  v53 = v22;
  LongItemTextView.init(text1:)(v55, v22);
  sub_26A84B758();
  sub_26A4DBDB4(v10, v7, &qword_2803B3800);
  if (__swift_getEnumTagSinglePayload(v7, 1, v31) == 1)
  {
    sub_26A4DBD10(v7, &qword_2803B3800);
    KeyPath = swift_getKeyPath();
    v33 = &v25[*(v49 + 36)];
    v34 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803B36A0) + 28);
    v35 = type metadata accessor for ActionType();
    __swift_storeEnumTagSinglePayload(v33 + v34, 1, 1, v35);
    *v33 = KeyPath;
  }

  else
  {
    v36 = v47;
    v37 = *(v48 + 32);
    v37(v47, v7, v31);
    v38 = swift_getKeyPath();
    v39 = &v25[*(v49 + 36)];
    v40 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803B36A0) + 28);
    v37(v39 + v40, v36, v31);
    v41 = type metadata accessor for ActionType();
    swift_storeEnumTagMultiPayload();
    __swift_storeEnumTagSinglePayload(v39 + v40, 0, 1, v41);
    *v39 = v38;
  }

  sub_26A6F04B0(v53, v25);
  v42 = sub_26A84B728();
  v43 = v51;
  sub_26A4DC694(v42);

  sub_26A4DBD10(v25, &qword_2803AACA8);
  sub_26A4DBD68(v43, v52, &qword_2803AACB0);
  sub_26A6F0BF4();
  v44 = sub_26A851248();
  sub_26A4DBD10(v43, &qword_2803AACB0);
  return v44;
}

double sub_26A6F00B0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B4C00);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_26A86D390;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AADE0);
  v1 = swift_initStackObject();
  *(v1 + 16) = xmmword_26A8570D0;
  if (qword_28157E780 != -1)
  {
    swift_once();
  }

  v2 = OUTLINED_FUNCTION_0_48();
  sub_26A4E324C(v2, v3);
  sub_26A621A9C(v1);
  *(inited + 32) = v4;
  *(inited + 40) = 0x403C000000000000;
  *(inited + 48) = 0x402C000000000000;
  *(inited + 56) = 0;
  *(inited + 64) = 0x4032000000000000;
  v5 = swift_initStackObject();
  *(v5 + 16) = xmmword_26A8570F0;
  v6 = OUTLINED_FUNCTION_0_48();
  *(v5 + 48) = 1;
  *(v5 + 56) = 5;
  sub_26A4E324C(v6, v7);
  sub_26A621A9C(v5);
  *(inited + 72) = v8;
  *(inited + 80) = 0x402C000000000000;
  *(inited + 88) = 0x402C000000000000;
  *(inited + 96) = 0;
  *(inited + 104) = 0x4032000000000000;
  v9 = swift_initStackObject();
  *(v9 + 16) = xmmword_26A8570F0;
  if (qword_28157E760 != -1)
  {
    swift_once();
  }

  v10 = qword_281588978;
  *(v9 + 32) = qword_281588978;
  v11 = byte_281588980;
  *(v9 + 40) = byte_281588980;
  *(v9 + 48) = 1;
  *(v9 + 56) = 11;
  sub_26A4E324C(v10, v11);
  sub_26A621A9C(v9);
  *(inited + 112) = v12;
  *(inited + 120) = 0;
  *(inited + 128) = 0x4028000000000000;
  *(inited + 136) = 0;
  *(inited + 144) = 0x4032000000000000;
  v13 = swift_initStackObject();
  *(v13 + 16) = xmmword_26A8570F0;
  if (qword_28157E758 != -1)
  {
    swift_once();
  }

  v14 = qword_281588968;
  *(v13 + 32) = qword_281588968;
  v15 = byte_281588970;
  *(v13 + 40) = byte_281588970;
  *(v13 + 48) = 1;
  *(v13 + 56) = 11;
  sub_26A4E324C(v14, v15);
  sub_26A621A9C(v13);
  *(inited + 152) = v16;
  *(inited + 160) = 0;
  *(inited + 168) = 0x4028000000000000;
  *(inited + 176) = 0;
  *(inited + 184) = 0x4032000000000000;
  v17 = swift_initStackObject();
  *(v17 + 16) = xmmword_26A8570F0;
  v18 = qword_281588968;
  *(v17 + 32) = qword_281588968;
  v19 = byte_281588970;
  *(v17 + 40) = byte_281588970;
  *(v17 + 48) = 1;
  *(v17 + 56) = 4;
  sub_26A4E324C(v18, v19);
  sub_26A621A9C(v17);
  *(inited + 192) = v20;
  *(inited + 200) = 0;
  *(inited + 208) = 0x4028000000000000;
  *(inited + 216) = 0;
  *(inited + 224) = 0x4032000000000000;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B1D80);
  sub_26A4DBCC8(&qword_28157D8B8, &qword_2803B1D80);
  v21 = sub_26A8516A8();
  sub_26A80DC3C(v21, 0, 1, v23, 0.0, 18.0);
  xmmword_2803D21A8 = v23[0];
  *&qword_2803D21B8 = v23[1];
  result = *&v24;
  xmmword_2803D21C8 = v24;
  *&byte_2803D21D8 = v25;
  return result;
}

uint64_t type metadata accessor for LongItemTextView()
{
  result = qword_2803B4BA8;
  if (!qword_2803B4BA8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_26A6F044C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LongItemTextView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_26A6F04B0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LongItemTextView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_26A6F0514(double a1, double a2)
{
  v4 = type metadata accessor for LongItemTextView();
  OUTLINED_FUNCTION_79(v4);

  return sub_26A5190C4(a1, a2);
}

uint64_t sub_26A6F05A4(uint64_t a1)
{
  result = sub_26A6F0E20(&qword_2803B4BA0, MEMORY[0x277D62DB0]);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_26A6F0624()
{
  sub_26A6F07FC(319, &qword_2803A9238, MEMORY[0x277CDF310], type metadata accessor for EnvironmentConstant);
  v1 = v0;
  if (v2 <= 0x3F)
  {
    sub_26A6F07FC(319, &qword_2803B4BB8, &type metadata for LongItemTextConstants, type metadata accessor for EnvironmentConstant);
    v1 = v3;
    if (v4 <= 0x3F)
    {
      sub_26A6F07FC(319, &qword_2803AB788, MEMORY[0x277D839B0], MEMORY[0x277CDF468]);
      v1 = v5;
      if (v6 <= 0x3F)
      {
        sub_26A4D27F4();
        if (v8 > 0x3F)
        {
          return v7;
        }

        sub_26A4E5DC4(319, &qword_2803A9218, type metadata accessor for VRXIdiom);
        if (v9 > 0x3F)
        {
          return v7;
        }

        sub_26A4E5DC4(319, &qword_2803A9230, MEMORY[0x277CDFA28]);
        if (v10 > 0x3F)
        {
          return v7;
        }

        else
        {
          swift_cvw_initStructMetadataWithLayoutString();
          return 0;
        }
      }
    }
  }

  return v1;
}

void sub_26A6F07FC(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

unint64_t sub_26A6F084C()
{
  result = qword_2803B4BC0;
  if (!qword_2803B4BC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B4B98);
    sub_26A6F0904();
    sub_26A4DBCC8(&qword_2803A9C20, &qword_2803A9C28);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B4BC0);
  }

  return result;
}

unint64_t sub_26A6F0904()
{
  result = qword_2803B4BC8;
  if (!qword_2803B4BC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B4B90);
    sub_26A6F09BC();
    sub_26A4DBCC8(&qword_2803A9C10, &qword_2803A9C18);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B4BC8);
  }

  return result;
}

unint64_t sub_26A6F09BC()
{
  result = qword_2803B4BD0;
  if (!qword_2803B4BD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B4B80);
    sub_26A6F0A48();
    sub_26A4DBA00();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B4BD0);
  }

  return result;
}

unint64_t sub_26A6F0A48()
{
  result = qword_2803B4BD8;
  if (!qword_2803B4BD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B4B78);
    sub_26A6F0B00();
    sub_26A4DBCC8(qword_28157DD90, &qword_2803A91D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B4BD8);
  }

  return result;
}

unint64_t sub_26A6F0B00()
{
  result = qword_2803B4BE0;
  if (!qword_2803B4BE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B4B70);
    sub_26A4DBCC8(&qword_2803B4BE8, &qword_2803A9968);
    sub_26A4DBCC8(&qword_2803B4BF0, &qword_2803B4B88);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B4BE0);
  }

  return result;
}

unint64_t sub_26A6F0BF4()
{
  result = qword_2803B4C08;
  if (!qword_2803B4C08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803AACB0);
    sub_26A6F0CAC();
    sub_26A4DBCC8(&qword_28157FB60, &qword_2803A9438);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B4C08);
  }

  return result;
}

unint64_t sub_26A6F0CAC()
{
  result = qword_2803B4C10;
  if (!qword_2803B4C10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803AACA0);
    sub_26A6F0D38();
    sub_26A4D31BC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B4C10);
  }

  return result;
}

unint64_t sub_26A6F0D38()
{
  result = qword_2803B4C18;
  if (!qword_2803B4C18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803AACA8);
    sub_26A6F0E20(&qword_2803B0148, type metadata accessor for LongItemTextView);
    sub_26A4DBCC8(&qword_2803AA878, &unk_2803B36A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B4C18);
  }

  return result;
}

uint64_t sub_26A6F0E20(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t OUTLINED_FUNCTION_1_77()
{

  return swift_once();
}

void *sub_26A6F0E94()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B4C20);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_26A8570D0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AADE0);
  v1 = swift_initStackObject();
  *(v1 + 16) = xmmword_26A8570D0;
  if (qword_28157E758 != -1)
  {
    swift_once();
  }

  v2 = qword_281588968;
  *(v1 + 32) = qword_281588968;
  v3 = byte_281588970;
  *(v1 + 40) = byte_281588970;
  sub_26A4E324C(v2, v3);
  sub_26A621A9C(v1);
  *(inited + 32) = v4;
  *(inited + 40) = xmmword_26A878A90;
  *(inited + 56) = xmmword_26A85C670;
  *(inited + 72) = xmmword_26A878AA0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B1D80);
  sub_26A4E325C();
  v5 = sub_26A8516A8();
  v7[0] = xmmword_26A878AB0;
  v7[1] = xmmword_26A85C670;
  v7[2] = xmmword_26A878AC0;
  return sub_26A80E380(qword_2803D21E8, v5, v7);
}

uint64_t sub_26A6F0FFC(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 48))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_26A6F101C(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = (a2 - 1);
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

  *(result + 48) = v3;
  return result;
}

id sub_26A6F108C@<X0>(uint64_t a1@<X8>)
{
  v4 = sub_26A6F1454(v1);
  if (!v4)
  {
    sub_26A4E353C();
    swift_allocError();
    *v22 = v1;
    *(v22 + 8) = &unk_287B13A78;
    *(v22 + 16) = 0;
    swift_willThrow();
    return v1;
  }

  v5 = v4;
  v36 = v1;
  v6 = sub_26A73670C(v4);
  if (v6)
  {
    v7 = v6;
    *&v30 = MEMORY[0x277D84F90];
    result = sub_26A7DD1FC(0, v6 & ~(v6 >> 63), 0);
    if (v7 < 0)
    {
      __break(1u);
      return result;
    }

    v28 = a1;
    v29 = v2;
    v9 = 0;
    v10 = v30;
    do
    {
      if ((v5 & 0xC000000000000001) != 0)
      {
        v11 = MEMORY[0x26D6644E0](v9, v5);
      }

      else
      {
        v11 = *(v5 + 8 * v9 + 32);
      }

      v12 = v11;
      *(&v34 + 1) = sub_26A84BD28();
      v35 = &protocol witness table for VisualProperty;
      __swift_allocate_boxed_opaque_existential_1(&v33);
      RFVisualProperty.asVisualProperty()();

      *&v30 = v10;
      v14 = *(v10 + 16);
      v13 = *(v10 + 24);
      if (v14 >= v13 >> 1)
      {
        sub_26A7DD1FC(v13 > 1, v14 + 1, 1);
      }

      ++v9;
      v15 = *(&v34 + 1);
      v16 = v35;
      v17 = __swift_mutable_project_boxed_opaque_existential_1(&v33, *(&v34 + 1));
      v18 = MEMORY[0x28223BE20](v17);
      v20 = &v28 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v21 + 16))(v20, v18);
      sub_26A6F14B4(v14, v20, &v30, v15, v16);
      __swift_destroy_boxed_opaque_existential_1(&v33);
      v10 = v30;
    }

    while (v7 != v9);

    a1 = v28;
  }

  else
  {

    v10 = MEMORY[0x277D84F90];
  }

  v23 = v36;
  v24 = [v36 text_1];
  if (v24)
  {
    v25 = v24;
    *(&v34 + 1) = &type metadata for PartialText;
    v35 = &protocol witness table for PartialText;
    *&v33 = swift_allocObject();
    RFTextProperty.asPartialText()(v33 + 16);
  }

  else
  {
    v35 = 0;
    v33 = 0u;
    v34 = 0u;
  }

  v26 = [v23 text_2];
  if (v26)
  {
    v27 = v26;
    *(&v31 + 1) = &type metadata for PartialText;
    v32 = &protocol witness table for PartialText;
    *&v30 = swift_allocObject();
    RFTextProperty.asPartialText()(v30 + 16);
  }

  else
  {
    v32 = 0;
    v30 = 0u;
    v31 = 0u;
  }

  return PrimaryHeaderStackedImageView.init(images:text1:text2:)(v10, &v33, &v30, a1);
}

unint64_t sub_26A6F13FC()
{
  result = qword_2803B4C28;
  if (!qword_2803B4C28)
  {
    type metadata accessor for PrimaryHeaderStackedImageView(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B4C28);
  }

  return result;
}

uint64_t sub_26A6F1454(void *a1)
{
  v1 = [a1 images];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  sub_26A6F154C();
  v3 = sub_26A851A98();

  return v3;
}

uint64_t sub_26A6F14B4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v13 = a4;
  v14 = a5;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v12);
  (*(*(a4 - 8) + 32))(boxed_opaque_existential_1, a2, a4);
  v10 = *a3;
  *(v10 + 16) = a1 + 1;
  return sub_26A4C2314(&v12, v10 + 40 * a1 + 32);
}

unint64_t sub_26A6F154C()
{
  result = qword_2803B4C30;
  if (!qword_2803B4C30)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2803B4C30);
  }

  return result;
}

id VisualResponseViewController.__allocating_init(rootView:context:)()
{
  OUTLINED_FUNCTION_14_32();
  v1 = objc_allocWithZone(v0);
  v2 = OUTLINED_FUNCTION_5_21();
  return VisualResponseViewController.init(rootView:context:)(v2, v3);
}

id VisualResponseViewController.init(rootView:context:)(void *a1, void *a2)
{
  v3 = v2;
  v6 = type metadata accessor for AnyRootView(0);
  MEMORY[0x28223BE20](v6 - 8);
  OUTLINED_FUNCTION_41();
  v9 = v8 - v7;
  *(v3 + OBJC_IVAR____TtC9SnippetUI28VisualResponseViewController_context) = a2;
  v10 = a1[3];
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v10);
  v12 = *(v11 + 8);
  v13 = a2;
  v12(v10, v11);
  sub_26A6F40CC();
  v22 = type metadata accessor for VisualResponseViewController();
  OUTLINED_FUNCTION_20_4();
  v16 = objc_msgSendSuper2(v14, v15, v3, v22);
  OUTLINED_FUNCTION_0_74();
  sub_26A58B648();
  v17 = swift_allocObject();
  *(v17 + 16) = v13;
  objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B4C48));
  v18 = v13;
  v19 = v16;
  v20 = sub_26A6F1C0C(v9, sub_26A6F18C4, v17);
  [v19 setView_];

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v19;
}

uint64_t type metadata accessor for VisualResponseViewController()
{
  result = qword_2803B4C58;
  if (!qword_2803B4C58)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void *sub_26A6F1828(double a1, double a2)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v5 = result;
    if ([result respondsToSelector_])
    {
      [v5 informHostOfViewResize_];
    }

    return swift_unknownObjectRelease();
  }

  return result;
}

id sub_26A6F18F8(double a1, double a2)
{
  sub_26A84EAA8();
  OUTLINED_FUNCTION_5_30();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_41();
  if (qword_2815801E8 != -1)
  {
    OUTLINED_FUNCTION_0_32();
  }

  v6 = qword_2815801F0;
  sub_26A84EA98();
  sub_26A851F88();
  OUTLINED_FUNCTION_11_40();
  result = [v2 view];
  if (result)
  {
    v8 = result;
    [result sizeThatFits_];

    sub_26A851F78();
    OUTLINED_FUNCTION_11_40();
    v9 = OUTLINED_FUNCTION_21_20();
    return v10(v9);
  }

  else
  {
    __break(1u);
  }

  return result;
}

id VisualResponseViewController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_26A851788();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithNibName:v6 bundle:a3];

  return v7;
}

id VisualResponseViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for VisualResponseViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

char *sub_26A6F1C0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_26A6F1D6C(a1, a2, a3);
  *&v3[qword_2803B4C50] = v5;
  result = [v5 view];
  if (result)
  {
    v7 = result;
    v8 = [objc_opt_self() clearColor];
    [v7 setBackgroundColor_];

    v13.receiver = v3;
    v13.super_class = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B4C48);
    v9 = objc_msgSendSuper2(&v13, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
    v10 = *&v9[qword_2803B4C50];
    v11 = v9;
    result = [v10 view];
    if (result)
    {
      v12 = result;
      [v11 addSubview_];

      sub_26A58B7DC(a1, type metadata accessor for AnyRootView);
      return v11;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

id sub_26A6F1D6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_26A850148();
  MEMORY[0x28223BE20](v5 - 8);
  v6 = type metadata accessor for AnyRootView(0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26A58B648();
  objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803B1DB0));

  v9 = sub_26A6F2478(v8, a2, a3);
  sub_26A850138();
  sub_26A84FCC8();

  return v9;
}

void sub_26A6F1EAC(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, void, const char *, uint64_t, uint64_t, uint64_t, const char *, uint64_t, char))
{
  v5 = sub_26A851EA8();
  v6 = 2;
  a3(v5, 0, "SnippetUI/VisualResponseViewController.swift", 44, 2, a2, "init(coder:)", 12, v6);
  sub_26A852418();
  __break(1u);
}

double sub_26A6F1F78(double a1, double a2)
{
  sub_26A84EAA8();
  OUTLINED_FUNCTION_5_30();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_41();
  if (qword_2815801E8 != -1)
  {
    OUTLINED_FUNCTION_0_32();
  }

  v6 = qword_2815801F0;
  sub_26A84EA98();
  sub_26A851F88();
  OUTLINED_FUNCTION_10_43();
  sub_26A6F20E8(v2, &v10, a1, a2);
  sub_26A851F78();
  OUTLINED_FUNCTION_10_43();
  v7 = OUTLINED_FUNCTION_21_20();
  v8(v7);
  return v10;
}

void sub_26A6F20E8(uint64_t a1@<X0>, void *a2@<X8>, double a3@<D0>, double a4@<D1>)
{
  v7 = [*(a1 + qword_2803B4C50) view];
  if (v7)
  {
    v8 = v7;
    [v7 sizeThatFits_];
    v10 = v9;
    v12 = v11;

    *a2 = v10;
    a2[1] = v12;
  }

  else
  {
    __break(1u);
  }
}

double sub_26A6F2178(void *a1, double a2, double a3)
{
  v5 = a1;
  v6 = sub_26A6F1F78(a2, a3);

  return v6;
}

void sub_26A6F21CC()
{
  v3.receiver = v0;
  v3.super_class = type metadata accessor for UIHostingView();
  objc_msgSendSuper2(&v3, sel_layoutSubviews);
  v1 = [*&v0[qword_2803B4C50] view];
  if (v1)
  {
    v2 = v1;
    [v0 bounds];
    [v2 setFrame_];
  }

  else
  {
    __break(1u);
  }
}

void sub_26A6F2294(void *a1)
{
  v1 = a1;
  sub_26A6F21CC();
}

id UIHostingView.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id UIHostingView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for UIHostingView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_26A6F2400()
{
  v1 = *(v0 + *((*MEMORY[0x277D85000] & *v0) + qword_2803D2240 + 24));

  return v1;
}

uint64_t sub_26A6F2478(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = type metadata accessor for AnyRootView(0);
  MEMORY[0x28223BE20](v7 - 8);
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_12_37();
  v8 = MEMORY[0x277D85000];
  v10 = *((*MEMORY[0x277D85000] & v9) + qword_2803D2240 + 16);
  *(v3 + v10) = [objc_opt_self() sharedPreferences];
  v11 = (v3 + *((*v8 & *v3) + qword_2803D2240 + 24));
  *v11 = a2;
  v11[1] = a3;
  OUTLINED_FUNCTION_0_74();
  sub_26A58B648();
  v12 = sub_26A84FCE8();
  OUTLINED_FUNCTION_4_61();
  sub_26A58B7DC(a1, v13);
  return v12;
}

void sub_26A6F25C8()
{
  OUTLINED_FUNCTION_12_37();
  v2 = *((*MEMORY[0x277D85000] & v1) + qword_2803D2240 + 16);
  *(v0 + v2) = [objc_opt_self() sharedPreferences];
  sub_26A852418();
  __break(1u);
}

double sub_26A6F26B0(void *a1)
{
  v1 = a1;
  sub_26A6F26F4();
  v3 = v2;

  return v3;
}

id sub_26A6F26F4()
{
  OUTLINED_FUNCTION_12_37();
  OUTLINED_FUNCTION_16_24();
  return objc_msgSendSuper2(&v1, sel_preferredContentSize);
}

void sub_26A6F2760(void *a1, double a2, double a3)
{
  v5 = a1;
  sub_26A6F27C0(a2, a3);
}

uint64_t sub_26A6F27C0(double a1, double a2)
{
  OUTLINED_FUNCTION_12_37();
  OUTLINED_FUNCTION_16_24();
  objc_msgSendSuper2(&v5, sel_setPreferredContentSize_, a1, a2);
  return sub_26A6F2848();
}

uint64_t sub_26A6F2848()
{
  v1 = [v0 traitCollection];
  v2 = [v1 userInterfaceIdiom];

  if (v2 != 3)
  {
    goto LABEL_4;
  }

  [v0 preferredContentSize];
  v4 = v3;
  v6 = v5;
  result = [v0 view];
  if (!result)
  {
    __break(1u);
    return result;
  }

  v8 = result;
  [result frame];
  v10 = v9;
  v12 = v11;

  v15.width = v4;
  v15.height = v6;
  v16.width = v10;
  v16.height = v12;
  result = CGSizeEqualToSize(v15, v16);
  if (result)
  {
LABEL_4:
    v13 = sub_26A6F2400();
    v13([v0 preferredContentSize]);
  }

  return result;
}

uint64_t sub_26A6F29D8(void *a1)
{
  v1 = a1;
  v2 = sub_26A6F2970();

  return v2 & 1;
}

uint64_t sub_26A6F2A9C()
{
  OUTLINED_FUNCTION_12_37();
}

id sub_26A6F2B58()
{
  OUTLINED_FUNCTION_12_37();
  OUTLINED_FUNCTION_16_24();
  return objc_msgSendSuper2(&v1, sel_dealloc);
}

uint64_t sub_26A6F2BC4(void *a1)
{
}

void VisualResponseViewController.updateSharedStateData(_:)()
{
  OUTLINED_FUNCTION_14_32();
  v13[4] = *MEMORY[0x277D85DE8];
  v1 = objc_opt_self();
  OUTLINED_FUNCTION_5_21();
  v2 = sub_26A84ABC8();
  v13[0] = 0;
  v3 = [v1 propertyListWithData:v2 options:0 format:0 error:v13];

  if (v3)
  {
    v4 = v13[0];
    sub_26A852108();
    swift_unknownObjectRelease();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B1080);
    if (swift_dynamicCast())
    {
      v5 = sub_26A851688();

      [v0 updateSharedState_];
    }

    else
    {
      v10 = sub_26A851E98();
      LOBYTE(v11) = 2;
      j__OUTLINED_FUNCTION_200_0(v10, 1, "SnippetUI/VisualResponseViewController.swift", 44, 2, 208, "updateSharedStateData(_:)", 25, v11);
    }
  }

  else
  {
    v6 = v13[0];
    v7 = sub_26A84AAE8();

    swift_willThrow();
    v8 = v7;
    v9 = sub_26A851E98();
    v12 = 2;
    j__OUTLINED_FUNCTION_171_0(v9, 0, "SnippetUI/VisualResponseViewController.swift", 44, 2, 213, "updateSharedStateData(_:)", 25, v12, v7);
  }
}

Swift::Void __swiftcall VisualResponseViewController.setAsrText(_:)(Swift::String a1)
{
  OUTLINED_FUNCTION_14_32();
  if (sub_26A61B6A8() == v2 && v3 == v1)
  {
  }

  else
  {
    OUTLINED_FUNCTION_5_21();
    v5 = sub_26A852598();

    if ((v5 & 1) == 0)
    {

      OUTLINED_FUNCTION_5_21();
      sub_26A61B718();
    }
  }
}

Swift::Void __swiftcall VisualResponseViewController.postSiriSpeechEvent()()
{
  OUTLINED_FUNCTION_20_4();
  swift_beginAccess();

  v0 = OUTLINED_FUNCTION_5_21();
  sub_26A6208C4(v0, v1);
}

uint64_t VisualResponseViewController.setIsInAmbient(_:withScaleFactor:)(double a1)
{
  sub_26A61BECC();
  v2.n128_f64[0] = a1;
  return sub_26A61C214(v2);
}

uint64_t VisualResponseViewController.currentIdiom.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC9SnippetUI28VisualResponseViewController_context);
  v2 = OBJC_IVAR____TtC9SnippetUI7Context_currentIdiom;
  OUTLINED_FUNCTION_20_4();
  swift_beginAccess();
  return *(v1 + v2);
}

uint64_t VisualResponseViewController.currentIdiom.setter(uint64_t a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC9SnippetUI28VisualResponseViewController_context);
  v4 = OBJC_IVAR____TtC9SnippetUI7Context_currentIdiom;
  v5 = OUTLINED_FUNCTION_3_21();
  *(v3 + v4) = a1;
  return sub_26A61D27C(v5);
}

uint64_t VisualResponseViewController.interactionDelegate.getter()
{
  OUTLINED_FUNCTION_20_4();
  swift_beginAccess();
  return swift_unknownObjectWeakLoadStrong();
}

uint64_t VisualResponseViewController.interactionDelegate.setter()
{
  OUTLINED_FUNCTION_3_21();
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

uint64_t VisualResponseViewController.containsComponentsWithAction.getter()
{
  sub_26A84B058();
  OUTLINED_FUNCTION_5_30();
  MEMORY[0x28223BE20](v0);
  OUTLINED_FUNCTION_41();
  v3 = v2 - v1;
  v4 = type metadata accessor for ResponseView();
  OUTLINED_FUNCTION_46();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_41();
  v8 = v7 - v6;
  type metadata accessor for AnyRootView.ContentType(0);
  OUTLINED_FUNCTION_46();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_41();
  v12 = v11 - v10;
  sub_26A58B648();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_26A58B7DC(v12, type metadata accessor for AnyRootView.ContentType);
    v13 = 0;
  }

  else
  {
    sub_26A6F40CC();
    v14 = *(v8 + *(v4 + 24) + 8);
    v15 = OBJC_IVAR____TtC9SnippetUI7Context_currentIdiom;
    OUTLINED_FUNCTION_20_4();
    swift_beginAccess();
    VRXIdiom.idiom.getter(*(v14 + v15), v3);
    v13 = Response.hasAction(for:mode:)(v3, *(v8 + *(v4 + 20)), v16, v17, v18, v19, v20, v21);
    v22 = OUTLINED_FUNCTION_5_21();
    v23(v22);
    sub_26A58B7DC(v8, type metadata accessor for ResponseView);
  }

  return v13 & 1;
}

uint64_t VisualResponseViewController.requestsKeyWindow.getter()
{
  v0 = sub_26A851E98();
  LOBYTE(v2) = 2;
  j__OUTLINED_FUNCTION_208_0(v0, 1, "SnippetUI/VisualResponseViewController.swift", 44, 2, 280, "requestsKeyWindow", 17, v2);
  return 0;
}

id sub_26A6F3BB0(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3();
  v3 = sub_26A851788();

  return v3;
}

uint64_t sub_26A6F3C0C()
{
  OUTLINED_FUNCTION_20_4();
  swift_beginAccess();

  return OUTLINED_FUNCTION_21_20();
}

void sub_26A6F3C7C(void *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t))
{
  v6 = sub_26A8517B8();
  v8 = v7;
  v9 = a1;
  a4(v6, v8);
}

uint64_t sub_26A6F3D00()
{
  OUTLINED_FUNCTION_14_32();
  v4 = (*(v1 + OBJC_IVAR____TtC9SnippetUI28VisualResponseViewController_context) + *v3);
  swift_beginAccess();
  *v4 = v2;
  v4[1] = v0;
}

uint64_t VisualResponseViewController.visualResponseLocation.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC9SnippetUI28VisualResponseViewController_context);
  v2 = OBJC_IVAR____TtC9SnippetUI7Context_visualResponseLocation;
  OUTLINED_FUNCTION_20_4();
  swift_beginAccess();
  return *(v1 + v2);
}

uint64_t VisualResponseViewController.visualResponseLocation.setter(uint64_t a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC9SnippetUI28VisualResponseViewController_context);
  v4 = OBJC_IVAR____TtC9SnippetUI7Context_visualResponseLocation;
  result = OUTLINED_FUNCTION_3_21();
  *(v3 + v4) = a1;
  return result;
}

unint64_t VisualResponseViewController.description.getter()
{
  sub_26A852248();

  v0 = AnyRootView.description.getter();
  MEMORY[0x26D663B00](v0);

  return 0xD000000000000025;
}

uint64_t sub_26A6F40CC()
{
  v2 = OUTLINED_FUNCTION_13_2();
  v3(v2);
  OUTLINED_FUNCTION_46();
  (*(v4 + 32))(v0, v1);
  return v0;
}

uint64_t sub_26A6F4128()
{
  result = type metadata accessor for AnyRootView(319);
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

uint64_t OUTLINED_FUNCTION_10_43()
{

  return sub_26A84EA88();
}

uint64_t OUTLINED_FUNCTION_11_40()
{

  return sub_26A84EA88();
}

__n128 sub_26A6F43B8()
{
  v0 = sub_26A84F5F8();
  __swift_allocate_value_buffer(v0, qword_2803D2250);
  v1 = __swift_project_value_buffer(v0, qword_2803D2250);
  v2 = *(v0 + 20);
  v3 = *MEMORY[0x277CE0118];
  v4 = sub_26A84FB88();
  (*(*(v4 - 8) + 104))(v1 + v2, v3, v4);
  __asm { FMOV            V0.2D, #15.0 }

  *v1 = result;
  return result;
}

uint64_t _s9SnippetUI23SiriStandardButtonStyleV8makeBody13configurationQr05SwiftB00eF13ConfigurationV_tF_0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v66 = a2;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B4DF0);
  MEMORY[0x28223BE20](v65);
  v56 = &v51 - v3;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B4F38);
  MEMORY[0x28223BE20](v62);
  v64 = &v51 - v4;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B4DC0);
  MEMORY[0x28223BE20](v63);
  v55 = &v51 - v5;
  v54 = sub_26A84F988();
  v53 = *(v54 - 8);
  MEMORY[0x28223BE20](v54);
  v52 = &v51 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_26A84FFA8();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v51 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B4DE0);
  v12 = v11 - 8;
  MEMORY[0x28223BE20](v11);
  v14 = &v51 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B4DD0);
  v16 = v15 - 8;
  MEMORY[0x28223BE20](v15);
  v18 = &v51 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B4DB0);
  MEMORY[0x28223BE20](v19 - 8);
  v60 = &v51 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v61 = &v51 - v22;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B4DA0);
  MEMORY[0x28223BE20](v58);
  v24 = &v51 - v23;
  v59 = a1;
  sub_26A84FFB8();
  sub_26A851448();
  sub_26A84F628();
  (*(v8 + 32))(v14, v10, v7);
  v25 = v57;
  memcpy(&v14[*(v12 + 44)], __src, 0x70uLL);
  sub_26A851448();
  sub_26A84F628();
  sub_26A4DBDB4(v14, v18, &qword_2803B4DE0);
  memcpy(&v18[*(v16 + 44)], v69, 0x70uLL);
  v26 = v25 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B4D68) + 36);
  v27 = *v26;
  if (*(v26 + 8) == 1)
  {
    if ((v27 & 1) == 0)
    {
LABEL_3:
      v28 = sub_26A850DF8();
      v29 = sub_26A850248();
      v30 = v56;
      sub_26A4DBD68(v18, v56, &qword_2803B4DD0);
      v31 = v30 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B4E00) + 36);
      *v31 = v28;
      *(v31 + 8) = v29;
      v32 = sub_26A850E88();
      KeyPath = swift_getKeyPath();
      v34 = (v30 + *(v65 + 36));
      *v34 = KeyPath;
      v34[1] = v32;
      v35 = &qword_2803B4DF0;
      sub_26A4DBD68(v30, v64, &qword_2803B4DF0);
      swift_storeEnumTagMultiPayload();
      sub_26A6F62B4();
      sub_26A6F64FC();
      v36 = v60;
      goto LABEL_6;
    }
  }

  else
  {

    sub_26A851EA8();
    v37 = sub_26A8501F8();
    sub_26A84EA78();

    v38 = v52;
    sub_26A84F978();
    swift_getAtKeyPath();
    sub_26A49035C(v27, 0);
    (*(v53 + 8))(v38, v54);
    if (v67 != 1)
    {
      goto LABEL_3;
    }
  }

  v30 = v55;
  v39 = &v55[*(v63 + 36)];
  sub_26A8513E8();
  v40 = sub_26A850248();
  v39[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AF440) + 36)] = v40;
  sub_26A4DBD68(v18, v30, &qword_2803B4DD0);
  v35 = &qword_2803B4DC0;
  sub_26A4DBD68(v30, v64, &qword_2803B4DC0);
  swift_storeEnumTagMultiPayload();
  sub_26A6F62B4();
  sub_26A6F64FC();
  v36 = v60;
LABEL_6:
  sub_26A84FDF8();
  sub_26A4DBD10(v30, v35);
  sub_26A4DBD10(v18, &qword_2803B4DD0);
  v41 = v61;
  sub_26A4DBDB4(v36, v61, &qword_2803B4DB0);
  v42 = &v24[*(v58 + 36)];
  sub_26A6F5ED4(v25, v42);
  *(v42 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A9E58) + 36)) = 256;
  sub_26A4DBDB4(v41, v24, &qword_2803B4DB0);
  if (sub_26A84FFC8())
  {
    v43 = 0.98;
  }

  else
  {
    v43 = 1.0;
  }

  sub_26A8515A8();
  v45 = v44;
  v47 = v46;
  v48 = v66;
  sub_26A4DBDB4(v24, v66, &qword_2803B4DA0);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B4D90);
  v50 = v48 + *(result + 36);
  *v50 = v43;
  *(v50 + 8) = v43;
  *(v50 + 16) = v45;
  *(v50 + 24) = v47;
  return result;
}