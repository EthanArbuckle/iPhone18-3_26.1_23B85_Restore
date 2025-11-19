uint64_t sub_1D7EB5614(_BYTE *a1, uint64_t a2, uint64_t a3, double a4, double a5, double a6, double a7)
{
  if (*a1)
  {
  }

  else
  {
    if (*(v7 + 16))
    {
      v9 = *(a2 + 16);
    }

    else
    {
      v9 = *(a3 + 16);
    }

    MaxY = CGRectGetMaxY(*&a4);
    type metadata accessor for BlueprintLayoutCollectionSectionCursor();
    swift_allocObject();
    OUTLINED_FUNCTION_1_5();
    return sub_1D7E79998(v9, MaxY, v19, v20, v21, v22, v23, v24, v11, v12, v13, v14, v15, v16, v17, v18, v25, v26);
  }
}

BOOL sub_1D7EB56B4(uint64_t a1, char *a2)
{
  v3 = *a2;
  v4 = type metadata accessor for BlueprintItem();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v18 - v6;
  v8 = *(v3 + 136);
  swift_beginAccess();
  v9 = *(v5 + 16);
  v9(v7, &a2[v8], v4);
  LOBYTE(v3) = BlueprintItem.isImpressionable.getter(v4);
  v10 = *(v5 + 8);
  v10(v7, v4);
  if ((v3 & 1) == 0)
  {
    return 0;
  }

  v11 = &a2[*(*a2 + 168)];
  v12 = *(v11 + 1);
  HIDWORD(v18) = v11[16];
  Strong = swift_unknownObjectWeakLoadStrong();
  v9(v7, &a2[v8], v4);
  v14 = BlueprintItem.impressionTraits.getter(v4);
  v10(v7, v4);
  sub_1D7EA3DD8(Strong, v14);
  v16 = v15;

  if ((v18 & 0x100000000) != 0)
  {
    return v16 < v12;
  }

  else
  {
    return v16 == v12;
  }
}

void *sub_1D7EB58E4()
{
  type metadata accessor for ImageCacheInterestToken();
  result = swift_allocObject();
  result[3] = 0;
  result[4] = 0;
  result[2] = 0;
  qword_1EDBB8160 = result;
  return result;
}

uint64_t sub_1D7EB5918(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5)
{
  v152 = a5;
  LODWORD(v146) = a4;
  v157 = a3;
  v147 = a1;
  v6 = *a2;
  v7 = *a2;
  v9 = *(*a2 + 120);
  *&v163 = *(*a2 + 112);
  v8 = v163;
  *(&v163 + 1) = v9;
  v158 = *(v7 + 11);
  v162 = v158;
  v151 = type metadata accessor for Blueprint();
  v125 = *(v151 - 8);
  MEMORY[0x1EEE9AC00](v151);
  v126 = &v114 - v10;
  v162 = v158;
  *(&v163 + 1) = v9;
  active = type metadata accessor for BlueprintActiveImpressionSection();
  v127 = *(active - 8);
  MEMORY[0x1EEE9AC00](active);
  v130 = &v114 - v11;
  v137 = sub_1D818E754();
  v135 = *(v137 - 8);
  v12 = MEMORY[0x1EEE9AC00](v137);
  v124 = &v114 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v123 = &v114 - v15;
  MEMORY[0x1EEE9AC00](v14);
  v136 = &v114 - v16;
  v17 = v6[13];
  v155 = v6[10];
  v156 = v17;
  v134 = type metadata accessor for BlueprintImpressionManager.SectionContext();
  v133 = sub_1D8191E84();
  v132 = *(v133 - 8);
  v18 = MEMORY[0x1EEE9AC00](v133);
  v122 = &v114 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v131 = &v114 - v20;
  v162 = v158;
  *&v163 = v8;
  *(&v163 + 1) = v9;
  v21 = type metadata accessor for BlueprintSection();
  v139 = sub_1D8191E84();
  v138 = *(v139 - 8);
  v22 = MEMORY[0x1EEE9AC00](v139);
  v148 = (&v114 - v23);
  v153 = v21;
  v142 = *(v21 - 8);
  v24 = MEMORY[0x1EEE9AC00](v22);
  v121 = &v114 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v141 = &v114 - v26;
  v162 = v158;
  v154 = v8;
  *&v163 = v8;
  *(&v163 + 1) = v9;
  v150 = type metadata accessor for BlueprintActiveImpression();
  v149 = *(v150 - 8);
  MEMORY[0x1EEE9AC00](v150);
  v159 = &v114 - v27;
  v145 = sub_1D818E994();
  v143 = *(v145 - 8);
  MEMORY[0x1EEE9AC00](v145);
  v144 = &v114 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v140 = v158.i64[1];
  v29 = type metadata accessor for BlueprintItem();
  v30 = *(v29 - 8);
  MEMORY[0x1EEE9AC00](v29);
  v32 = &v114 - v31;
  v33 = v6[17];
  swift_beginAccess();
  v35 = v30 + 16;
  v34 = *(v30 + 16);
  (v34)(v32, a2 + v33, v29);
  LOBYTE(v8) = BlueprintItem.isImpressionable.getter(v29);
  v38 = *(v30 + 8);
  v36 = v30 + 8;
  v37 = v38;
  v38(v32, v29);
  if (v8)
  {
    v129 = v9;
    Strong = swift_unknownObjectWeakLoadStrong();
    v120 = v33;
    v119 = v35;
    v118 = v34;
    (v34)(v32, a2 + v33, v29);
    v40 = BlueprintItem.impressionTraits.getter(v29);
    v41 = v157;
    v42 = v40;
    v115 = v32;
    v43 = v29;
    v37(v32, v29);
    sub_1D7EA3DD8(Strong, v42);
    v45 = v44;

    v46 = *(a2 + *(*a2 + 152));
    v117 = v36;
    if (v46 > v45)
    {
      return 1;
    }

    v116 = v37;
    v48 = v146 & 0x7F;
    v162.i8[0] = v146 & 0x7F;
    v49 = sub_1D7FBB844(&v162);
    (*(v143 + 16))(v144, v147, v145);
    v160 = v49;
    swift_beginAccess();

    *&v50 = vdupq_laneq_s64(v158, 1).u64[0];
    *(&v50 + 1) = v156;
    v51.i64[0] = v155;
    v162 = vzip1q_s64(v51, v158);
    v163 = v50;
    v164 = v154;
    v165 = v129;
    type metadata accessor for BlueprintImpressionManager.Context();
    sub_1D7E2491C(&qword_1EDBBC6C0, MEMORY[0x1E6969C28]);
    sub_1D8190E14();
    sub_1D8190E34();
    swift_endAccess();
    if (qword_1EDBBB328 != -1)
    {
      swift_once();
    }

    v146 = qword_1EDBC6080;
    LODWORD(v145) = sub_1D81919B4();
    sub_1D7E13630(0, &qword_1EDBBE100, &qword_1EDBBE130, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
    v52 = swift_allocObject();
    *(v52 + 16) = xmmword_1D81A1B70;
    v53 = (v41 + *(*v41 + 160));
    v54 = *v53;
    v55 = v53[1];
    v56 = MEMORY[0x1E69E6158];
    *(v52 + 56) = MEMORY[0x1E69E6158];
    v57 = sub_1D7E13BF4();
    *(v52 + 64) = v57;
    *(v52 + 32) = v54;
    *(v52 + 40) = v55;
    v147 = a2;
    v58 = v43;
    v59 = v115;
    v118();
    sub_1D8190DB4();
    v60 = BlueprintItem.visualDescription.getter(v58);
    v62 = v61;
    v116(v59, v58);
    *(v52 + 96) = v56;
    *(v52 + 104) = v57;
    *(v52 + 72) = v60;
    *(v52 + 80) = v62;
    v63 = v157;
    *(v52 + 136) = MEMORY[0x1E69E7DE0];
    *(v52 + 144) = sub_1D7EA41AC();
    *(v52 + 112) = v45;
    sub_1D818FD44();

    v64 = swift_unknownObjectWeakLoadStrong();
    v65 = sub_1D7EA3F14(v64);
    v67 = v66;
    v69 = v68;
    v71 = v70;

    LODWORD(v145) = v48;
    v162.i8[0] = v48;
    v72 = v159;
    v146 = v49;
    sub_1D7EA44EC(&v162, v159, v65, v67, v69, v71);
    v73 = swift_unknownObjectWeakLoadStrong();
    v74 = v129;
    v75 = v156;
    v76 = v155;
    if (v73)
    {
      v77 = *(v63 + 32);
      ObjectType = swift_getObjectType();
      (*(v77 + 56))(v63, v72, v76, v158.i64[0], v140, v75, v154, v74, ObjectType, v77);
      swift_unknownObjectRelease();
    }

    swift_beginAccess();
    type metadata accessor for BlueprintImpressionManagerProcessor();
    sub_1D8190DB4();
    v166 = sub_1D8191324();
    while (v166 != sub_1D8191414())
    {
      v83 = sub_1D81913E4();
      sub_1D81913A4();
      if (v83)
      {
      }

      else
      {
        sub_1D8192204();
      }

      sub_1D8191454();
      sub_1D81251C0();
    }

    (v118)(v59, v147 + v120, v58);
    BlueprintItem.identifier.getter();
    v116(v59, v58);
    v79 = v148;
    v80 = v151;
    v81 = v152;
    Blueprint.section(forItem:)();

    v82 = v153;
    if (__swift_getEnumTagSinglePayload(v79, 1, v153) == 1)
    {
      (*(v149 + 8))(v159, v150);

      (*(v138 + 8))(v79, v139);
    }

    else
    {
      v84 = v142;
      v85 = v141;
      (*(v142 + 32))(v141, v79, v82);
      v86 = BlueprintSection.isImpressionable.getter();
      v87 = v159;
      if (v86)
      {
        v88 = BlueprintSection.identifier.getter();
        v90 = v89;
        swift_beginAccess();
        v160 = v88;
        v161 = v90;
        v91 = v131;
        v92 = v134;
        sub_1D8190E24();

        swift_endAccess();
        if (__swift_getEnumTagSinglePayload(v91, 1, v92) == 1)
        {
          (*(v132 + 8))(v91, v133);
          v93 = v136;
          sub_1D818E744();
          v94 = v92;
          v95 = BlueprintSection.identifier.getter();
          v144 = v96;
          v148 = *(v135 + 16);
          v97 = v123;
          v148(v123, v93, v137);
          v98 = v145;
          LOBYTE(v166) = v145;
          v99 = v122;
          sub_1D7EB82CC(v97, &v166, v122);
          __swift_storeEnumTagSinglePayload(v99, 0, 1, v94);
          v160 = v95;
          v161 = v144;
          swift_beginAccess();
          sub_1D8190E14();
          sub_1D8190E34();
          swift_endAccess();
          v100 = v126;
          (*(v125 + 16))(v126, v81, v80);
          v101 = v121;
          (*(v142 + 16))(v121, v141, v82);
          v102 = v124;
          v148(v124, v136, v137);
          v103 = v157;
          LOBYTE(v166) = v98;
          v104 = v158.i64[0];
          v105 = v129;
          v106 = v130;
          v107 = v100;
          v108 = v140;
          sub_1D7EB83A4(v107, v101, v102, &v166, *(v147 + *(*v147 + 144)), *(v147 + *(*v147 + 144) + 8), v130);
          if (swift_unknownObjectWeakLoadStrong())
          {
            v109 = *(v103 + 32);
            v110 = v108;
            v111 = swift_getObjectType();
            v112 = *(v109 + 64);
            sub_1D8190DB4();
            v113 = v109;
            v106 = v130;
            v112(v103, v130, v155, v104, v110, v156, v154, v105, v111, v113);

            swift_unknownObjectRelease();
          }

          else
          {
            sub_1D8190DB4();
          }

          (*(v127 + 8))(v106, active);
          (*(v135 + 8))(v136, v137);
          (*(v142 + 8))(v141, v153);
          (*(v149 + 8))(v159, v150);
        }

        else
        {

          (*(v84 + 8))(v85, v82);
          (*(v149 + 8))(v87, v150);
          (*(v132 + 8))(v91, v133);
        }
      }

      else
      {

        (*(v84 + 8))(v85, v82);
        (*(v149 + 8))(v87, v150);
      }
    }
  }

  return 0;
}

void BlueprintImpressionManager.updateImpressionModel(at:)()
{
  OUTLINED_FUNCTION_120();
  v79 = v1;
  v2 = *v0;
  v76 = sub_1D818E994();
  OUTLINED_FUNCTION_9();
  v69 = v3;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_13_2();
  OUTLINED_FUNCTION_14_1(v5);
  v6 = *(v2 + 88);
  v7 = *(v2 + 80);
  v8 = OUTLINED_FUNCTION_91_0();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v10 = type metadata accessor for BlueprintItem();
  v11 = sub_1D8191E84();
  OUTLINED_FUNCTION_9();
  v70 = v12;
  OUTLINED_FUNCTION_44();
  v14 = MEMORY[0x1EEE9AC00](v13);
  v16 = v65 - v15;
  v77 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_23();
  OUTLINED_FUNCTION_48();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_24_1();
  OUTLINED_FUNCTION_48();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_21_12();
  v78 = v19;
  v20 = OUTLINED_FUNCTION_91_0();
  OUTLINED_FUNCTION_30_8();
  v73 = swift_getAssociatedConformanceWitness();
  v74 = v20;
  v82 = v20;
  v83 = v8;
  v84 = v73;
  v85 = AssociatedConformanceWitness;
  v72 = AssociatedConformanceWitness;
  OUTLINED_FUNCTION_22_10();
  v21 = type metadata accessor for Blueprint();
  OUTLINED_FUNCTION_9();
  v75 = v22;
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v23);
  v25 = v65 - v24;
  if (sub_1D7E481B0())
  {
    OUTLINED_FUNCTION_39_5();
    BlueprintProviderType.blueprint.getter(v7, v6);
    Blueprint.item(indexPath:)();
    OUTLINED_FUNCTION_43_0(v16, 1, v10);
    if (v43)
    {
      (*(v75 + 8))(v25, v21);
      OUTLINED_FUNCTION_14_15();
      v27 = v16;
      v28 = v11;
LABEL_27:
      v26(v27, v28);
      goto LABEL_28;
    }

    v68 = v25;
    v66 = v21;
    (*(v77 + 32))(v78, v16, v10);
    OUTLINED_FUNCTION_49_3();
    v82 = v7;
    v83 = v74;
    v84 = v8;
    v85 = v6;
    v29 = v72;
    v86 = v73;
    v87 = v72;
    OUTLINED_FUNCTION_22_10();
    v30 = type metadata accessor for BlueprintImpressionManager.Context();
    OUTLINED_FUNCTION_0_87();
    v33 = sub_1D7E2491C(v31, v32);
    v65[1] = v30;
    sub_1D8190E24();
    v34 = v80;
    v70 = v10;
    v67 = v33;
    if (v80)
    {
      swift_endAccess();
      v35 = *(*v34 + 136);
      OUTLINED_FUNCTION_8_4();
      v36 = v77;
      v37 = OUTLINED_FUNCTION_28_8();
      v38(v37);
      v39 = BlueprintItem.identifier.getter();
      v41 = v40;
      (*(v36 + 8))(v35, v10);
      v43 = v39 == BlueprintItem.identifier.getter() && v41 == v42;
      if (v43)
      {

        v45 = OUTLINED_FUNCTION_40_5();
      }

      else
      {
        v44 = OUTLINED_FUNCTION_76_3();

        v45 = OUTLINED_FUNCTION_40_5();
        if ((v44 & 1) == 0)
        {

          v29 = v72;
          goto LABEL_15;
        }
      }

      sub_1D7EA261C(v45, v78);
      OUTLINED_FUNCTION_38_6();
      v46(v71, v79, v76);
      v88 = v34;
      OUTLINED_FUNCTION_25_7();
      sub_1D8190E14();

      sub_1D8190E34();
      swift_endAccess();

      v29 = v72;
    }

    else
    {
      swift_endAccess();
    }

LABEL_15:
    OUTLINED_FUNCTION_49_3();
    v82 = v7;
    v83 = v74;
    v84 = v8;
    v85 = v6;
    v86 = v73;
    v87 = v29;
    OUTLINED_FUNCTION_22_10();
    type metadata accessor for BlueprintImpressionManager.StagedContext();
    sub_1D8190E24();
    v47 = v81;
    if (v81)
    {
      swift_endAccess();
      OUTLINED_FUNCTION_41_4();
      v49 = *(v48 + 136);
      OUTLINED_FUNCTION_8_4();
      v50 = v77;
      OUTLINED_FUNCTION_67_2();
      v51 = OUTLINED_FUNCTION_28_8();
      v52 = v70;
      v53(v51);
      v54 = BlueprintItem.identifier.getter();
      v56 = v55;
      v57 = *(v50 + 8);
      v57(v49, v52);
      v58 = v78;
      if (v54 == BlueprintItem.identifier.getter() && v56 == v59)
      {
      }

      else
      {
        v61 = sub_1D8192634();

        if ((v61 & 1) == 0)
        {

          v57(v58, v70);
LABEL_23:
          v26 = *(v75 + 8);
          v27 = v68;
LABEL_26:
          v28 = v66;
          goto LABEL_27;
        }
      }

      v62 = v68;
      sub_1D7EA261C(v68, v58);
      OUTLINED_FUNCTION_46_7();
      v63 = OUTLINED_FUNCTION_33_7();
      v64(v63);
      v81 = v47;
      OUTLINED_FUNCTION_15_2();
      sub_1D8190E14();

      OUTLINED_FUNCTION_78_1();
      sub_1D8190E34();
      swift_endAccess();

      v57(v58, v70);
      v26 = *(v75 + 8);
      v27 = v62;
      goto LABEL_26;
    }

    swift_endAccess();
    (*(v77 + 8))(v78, v70);
    goto LABEL_23;
  }

LABEL_28:
  OUTLINED_FUNCTION_100();
}

double sub_1D7EB7498(uint64_t a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5)
{
  v9 = *(a1 + 16) + a2;
  CGRectGetWidth(*&a2);
  v11.origin.x = a2;
  v11.origin.y = a3;
  v11.size.width = a4;
  v11.size.height = a5;
  CGRectGetHeight(v11);
  return v9;
}

Swift::Bool __swiftcall Blueprint.contains(identifier:)(Swift::String identifier)
{
  OUTLINED_FUNCTION_45_15();
  OUTLINED_FUNCTION_66_0();
  OUTLINED_FUNCTION_16_50();
  OUTLINED_FUNCTION_4_2();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_3_11();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_11_56();
  sub_1D818F394();
  OUTLINED_FUNCTION_14_0();
  sub_1D818F364();
  OUTLINED_FUNCTION_46_15();
  return result;
}

uint64_t sub_1D7EB75CC(uint64_t (*a1)(void))
{
  a1();

  return swift_deallocClassInstance();
}

uint64_t sub_1D7EB7624()
{
  v1 = *(*v0 + 128);
  v2 = type metadata accessor for Blueprint();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 136);
  v4 = type metadata accessor for BlueprintItem();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  MEMORY[0x1DA715E30](v0 + *(*v0 + 160));
  return v0;
}

Swift::Void __swiftcall Blueprint.remove(for:)(Swift::String a1)
{
  OUTLINED_FUNCTION_120();
  v15 = *(v3 + 16);
  v4 = OUTLINED_FUNCTION_33_19();
  OUTLINED_FUNCTION_107();
  v5 = sub_1D8191E84();
  OUTLINED_FUNCTION_9();
  v7 = v6;
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_21_11();
  OUTLINED_FUNCTION_2();
  v10 = v9;
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_15_10();
  Blueprint.subscript.getter();
  OUTLINED_FUNCTION_43_0(v2, 1, v4);
  if (v12)
  {
    (*(v7 + 8))(v2, v5);
  }

  else
  {
    (*(v10 + 32))(v1, v2, v4);
    OUTLINED_FUNCTION_8_66();
    swift_getWitnessTable();
    OUTLINED_FUNCTION_4_2();
    swift_getWitnessTable();
    OUTLINED_FUNCTION_68();
    sub_1D81918C4();
    if (BYTE8(v15) != 1)
    {
      Blueprint.remove(at:)(v15);
    }

    v13 = OUTLINED_FUNCTION_85();
    v14(v13);
  }

  OUTLINED_FUNCTION_100();
}

void sub_1D7EB7964(double a1, double a2, double a3, double a4)
{
  if (CGRectIsEmpty(*&a1))
  {
    if (*(v4 + 56))
    {
      v5.origin.x = OUTLINED_FUNCTION_0_142();
      if (CGRectGetMaxY(v5) > 0.0)
      {
        v6.origin.x = OUTLINED_FUNCTION_1_102();
        CGRectIsEmpty(v6);
        v7.origin.x = OUTLINED_FUNCTION_0_142();
        CGRectGetHeight(v7);
        v8.origin.x = OUTLINED_FUNCTION_1_102();
        CGRectGetWidth(v8);
        v9.origin.x = OUTLINED_FUNCTION_0_142();
        CGRectGetWidth(v9);
      }
    }

    else
    {
      v10.origin.x = OUTLINED_FUNCTION_0_142();
      if (CGRectGetMaxX(v10) > 0.0)
      {
        v11.origin.x = OUTLINED_FUNCTION_1_102();
        CGRectIsEmpty(v11);
        v12.origin.x = OUTLINED_FUNCTION_0_142();
        CGRectGetWidth(v12);
        v13.origin.x = OUTLINED_FUNCTION_1_102();
        CGRectGetHeight(v13);
        v14.origin.x = OUTLINED_FUNCTION_0_142();
        CGRectGetHeight(v14);
      }
    }
  }

  OUTLINED_FUNCTION_1_102();
}

Swift::Void __swiftcall Blueprint.remove(at:)(Swift::Int at)
{
  OUTLINED_FUNCTION_120();
  OUTLINED_FUNCTION_34_20(*(v1 + 24));
  type metadata accessor for BlueprintSection();
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_15_10();
  OUTLINED_FUNCTION_4_2();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_3_11();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_107();
  sub_1D818F394();
  sub_1D818F3B4();
  sub_1D818F334();
  type metadata accessor for BlueprintItem();
  OUTLINED_FUNCTION_7_5();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_0_44();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_1_1();
  WitnessTable = swift_getWitnessTable();
  OUTLINED_FUNCTION_24_30(WitnessTable);
  sub_1D818F764();
  v4 = OUTLINED_FUNCTION_85();
  v5(v4);
  OUTLINED_FUNCTION_100();
}

uint64_t sub_1D7EB7C3C@<X0>(_OWORD *a1@<X8>)
{
  v3 = v1[1];
  v4 = *(*v1 + 16);
  if (v3 == v4)
  {
    a1[1] = 0u;
    a1[2] = 0u;
    *a1 = 0u;
    return result;
  }

  if (v3 >= v4)
  {
    __break(1u);
    goto LABEL_8;
  }

  v5 = *v1 + 40 * v3;
  v1[1] = v3 + 1;
  v6 = v1[2];
  *&v9[0] = v6;
  result = sub_1D7E25380(v5 + 32, v9 + 8);
  if (__OFADD__(v6, 1))
  {
LABEL_8:
    __break(1u);
    return result;
  }

  v1[2] = v6 + 1;
  v8 = v9[1];
  *a1 = v9[0];
  a1[1] = v8;
  a1[2] = v9[2];
  return result;
}

uint64_t sub_1D7EB7CDC()
{
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 16);
  memcpy(__dst, (v0 + 64), 0x235uLL);
  sub_1D7E4C1A0(__dst);
  return swift_deallocClassInstance();
}

void sub_1D7EB7D30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(uint64_t, uint64_t, void *))
{
  OUTLINED_FUNCTION_17_37();
  if ((v11 & 1) == 0)
  {
    v12 = v10;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_2_16();
  if (v13 == v14)
  {
LABEL_7:
    v15 = *(v7 + 16);
    if (v12 <= v15)
    {
      v16 = *(v7 + 16);
    }

    else
    {
      v16 = v12;
    }

    if (v16)
    {
      v17 = OUTLINED_FUNCTION_16_44();
      sub_1D7EB0164(v17, v18, v19, v20);
      v21 = OUTLINED_FUNCTION_23_2();
      v22 = _swift_stdlib_malloc_size(v21);
      v21[2] = v15;
      v21[3] = 2 * ((v22 - 32) / 16);
      if (v8)
      {
LABEL_12:
        a7(v7 + 32, v15, v21 + 4);
        *(v7 + 16) = 0;
LABEL_15:

        return;
      }
    }

    else
    {
      v21 = MEMORY[0x1E69E7CC0];
      if (v8)
      {
        goto LABEL_12;
      }
    }

    sub_1D7E31228();
    swift_arrayInitWithCopy();
    goto LABEL_15;
  }

  OUTLINED_FUNCTION_12_4();
  if (!v13)
  {
    OUTLINED_FUNCTION_1_10();
    goto LABEL_7;
  }

  __break(1u);
}

uint64_t BlueprintActiveImpression.item.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 52);
  v5 = type metadata accessor for BlueprintItem();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_1D7EB7EF0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1D818E754();
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 36)) = a2 + 6;
  }

  return result;
}

uint64_t sub_1D7EB7F98@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, const void *a4@<X3>, const void *a5@<X4>, uint64_t (**a6)()@<X8>)
{
  v8 = a1[4];
  v24 = a1[3];
  v22 = v8;
  __swift_project_boxed_opaque_existential_1(a1, v24);
  memcpy(__dst, a4, 0x4E8uLL);
  memcpy(v28, a5, 0x235uLL);
  v23 = *(v8 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = swift_getAssociatedTypeWitness();
  v11 = swift_getAssociatedTypeWitness();
  v12 = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v13 = v10;
  v14 = swift_getAssociatedConformanceWitness();
  v15 = swift_getAssociatedConformanceWitness();
  v16 = swift_getAssociatedConformanceWitness();
  v17 = v23(a2, a3, __dst, v28, AssociatedTypeWitness, v13, v11, v12, AssociatedConformanceWitness, v14, v15, v16, v24, v22);
  v19 = v18;
  result = swift_allocObject();
  *(result + 16) = v17;
  *(result + 24) = v19;
  *a6 = sub_1D7E74D6C;
  a6[1] = result;
  return result;
}

uint64_t sub_1D7EB81D8()
{

  return swift_deallocObject();
}

uint64_t sub_1D7EB8224(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1D818E754();
  if (*(*(v6 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 36));
    if (v8 >= 7)
    {
      return v8 - 6;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_1D7EB82CC@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a2;
  v6 = sub_1D818E754();
  (*(*(v6 - 8) + 32))(a3, a1, v6);
  result = type metadata accessor for BlueprintImpressionManager.SectionContext();
  *(a3 + *(result + 36)) = v5;
  return result;
}

uint64_t sub_1D7EB83A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v11 = *a4;
  OUTLINED_FUNCTION_3_66();
  type metadata accessor for Blueprint();
  OUTLINED_FUNCTION_0_13();
  (*(v12 + 32))(a7, a1);
  OUTLINED_FUNCTION_3_66();
  active = type metadata accessor for BlueprintActiveImpressionSection();
  v14 = active[13];
  OUTLINED_FUNCTION_3_66();
  type metadata accessor for BlueprintSection();
  OUTLINED_FUNCTION_0_13();
  (*(v15 + 32))(a7 + v14, a2);
  v16 = active[14];
  sub_1D818E754();
  OUTLINED_FUNCTION_0_13();
  result = (*(v17 + 32))(a7 + v16, a3);
  *(a7 + active[15]) = v11;
  v19 = (a7 + active[16]);
  *v19 = a5;
  v19[1] = a6;
  return result;
}

void sub_1D7EB84E0()
{
  OUTLINED_FUNCTION_120();
  OUTLINED_FUNCTION_13_42(v0, v1, v2, v3, v4, v5);
  OUTLINED_FUNCTION_9_43();
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_9_43();
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_15_5();
  OUTLINED_FUNCTION_81_4();
  OUTLINED_FUNCTION_23_22();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  OUTLINED_FUNCTION_12_45(AssociatedConformanceWitness);
  type metadata accessor for BlueprintActiveImpressionSection();
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_1_144(v8, v21);
  type metadata accessor for BlueprintActiveImpressionSection();
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_16_42();
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_10_54();
  v12 = *(v11 + 280);
  OUTLINED_FUNCTION_7();
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    OUTLINED_FUNCTION_69_5();
    OUTLINED_FUNCTION_3_7();
    OUTLINED_FUNCTION_30_23();
    v13 = OUTLINED_FUNCTION_11_46();
    v14(v13);
    OUTLINED_FUNCTION_15_41();
    OUTLINED_FUNCTION_32_18();
    v15 = OUTLINED_FUNCTION_20_36();
    v16(v15);

    v17 = OUTLINED_FUNCTION_31_18();
    v18(v17);
    v19 = OUTLINED_FUNCTION_19_32();
    v20(v19);
  }

  OUTLINED_FUNCTION_100();
}

uint64_t BlueprintItem.isExpandable.getter()
{
  OUTLINED_FUNCTION_1_177();
  MEMORY[0x1EEE9AC00](v0);
  v2 = OUTLINED_FUNCTION_0_244(v1, v8[0]);
  v3(v2);
  sub_1D7E0631C(0, qword_1EDBBC1F8);
  if (OUTLINED_FUNCTION_3_137())
  {
    OUTLINED_FUNCTION_2_162();
    v4 = OUTLINED_FUNCTION_3_1();
    v6 = v5(v4);
    __swift_destroy_boxed_opaque_existential_1Tm(v9);
  }

  else
  {
    OUTLINED_FUNCTION_5_89();
    sub_1D7E9DD24(v8, &qword_1ECA11EB0, qword_1EDBBC1F8);
    v6 = 0;
  }

  return v6 & 1;
}

unint64_t sub_1D7EB88FC()
{
  result = qword_1EDBB3430;
  if (!qword_1EDBB3430)
  {
    sub_1D7EAF54C(255, &qword_1EDBB3438, MEMORY[0x1E69E6530], MEMORY[0x1E69E6548], MEMORY[0x1E69E5F90]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBB3430);
  }

  return result;
}

void sub_1D7EB8980()
{
  OUTLINED_FUNCTION_14_5();
  if ((v3 & 1) == 0 || (OUTLINED_FUNCTION_2_16(), v4 == v5))
  {
LABEL_6:
    OUTLINED_FUNCTION_4_4();
    if (v2)
    {
      OUTLINED_FUNCTION_0_1();
      sub_1D7E1B5C8(0, v6, v7, v8);
      v9 = OUTLINED_FUNCTION_22_0();
      OUTLINED_FUNCTION_8_10(v9);
      OUTLINED_FUNCTION_26_0(v10);
      if (v1)
      {
LABEL_8:
        v11 = OUTLINED_FUNCTION_3_13();
        sub_1D80E5DDC(v11, v12, v13);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    OUTLINED_FUNCTION_7_9();
    swift_arrayInitWithCopy();
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_12_4();
  if (!v4)
  {
    OUTLINED_FUNCTION_1_10();
    goto LABEL_6;
  }

  __break(1u);
}

uint64_t sub_1D7EB8A44(uint64_t (*a1)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v1 = v3;
  if (!result)
  {
    result = a1(result, *(v3 + 16) + 1, 1, v3);
    *v1 = result;
  }

  return result;
}

void sub_1D7EB8AB8()
{
  OUTLINED_FUNCTION_31_1();
  if (!(v4 ^ v5 | v3))
  {
    *v0 = v1(v2 > 1);
  }
}

uint64_t sub_1D7EB8B0C(uint64_t a1, uint64_t a2, char a3)
{
  if (a3 == 1)
  {
  }

  return result;
}

BOOL sub_1D7EB8BB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v11 = MEMORY[0x1EEE9AC00](a1);
  (*(v13 + 16))(v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v14, v11);
  sub_1D7E0631C(0, &qword_1EDBB50A0);
  if (swift_dynamicCast())
  {
    sub_1D7E05450(v21, v23);
    v15 = v24;
    v16 = v25;
    __swift_project_boxed_opaque_existential_1(v23, v24);
    (*(v16 + 16))(v15, v16);
    v19 = v18 > 0.0 && v17 > 0.0;
    __swift_destroy_boxed_opaque_existential_1Tm(v23);
  }

  else
  {
    v22 = 0;
    memset(v21, 0, sizeof(v21));
    sub_1D7FBDB74(v21, &qword_1ECA0EC60, &qword_1EDBB50A0);
    return (*(a9 + 8))(a5, a9) > 0.0;
  }

  return v19;
}

uint64_t sub_1D7EB8D50(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  *(result + 8) = a2;
  return result;
}

uint64_t sub_1D7EB8D68()
{
  OUTLINED_FUNCTION_6_95();
  swift_isUniquelyReferenced_nonNull_native();
  OUTLINED_FUNCTION_2_161();

  *v0 = v2;
  return result;
}

uint64_t sub_1D7EB8E9C(char *a1, uint64_t (*a2)(uint64_t, char *))
{
  v4 = *a1;
  type metadata accessor for BlueprintItem();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  return a2(v4, &a1[*(TupleTypeMetadata2 + 48)]);
}

uint64_t sub_1D7EB8F2C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X5>, uint64_t a5@<X6>, uint64_t a6@<X7>, uint64_t *a7@<X8>, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v24[0] = a5;
  v24[1] = a3;
  v16 = type metadata accessor for BlueprintLayoutItem();
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = v24 - v17;
  TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
  v20 = *(TupleTypeMetadata3 + 48);
  v21 = *(TupleTypeMetadata3 + 64);
  *a7 = a1;
  (*(*(a4 - 8) + 16))(a7 + v20, a2, a4);
  v24[2] = v24[0];
  v24[3] = a6;
  v24[4] = a10;
  v24[5] = a11;
  v22 = type metadata accessor for BlueprintLayoutSection();
  BlueprintLayoutSection.subscript.getter(a1, v22);
  (*(*(a6 - 8) + 32))(a7 + v21, v18, a6);
  return __swift_storeEnumTagSinglePayload(a7, 0, 1, TupleTypeMetadata3);
}

uint64_t sub_1D7EB9118(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v38 = a2;
  TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
  v8 = *(TupleTypeMetadata3 - 8);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata3);
  v10 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v11);
  v14 = &v36 - v13;
  v15 = *(v8 + 16);
  v39 = a1;
  v15(&v36 - v13, a1, TupleTypeMetadata3, v12);
  v37 = *(TupleTypeMetadata3 + 48);
  sub_1D7EB952C();
  if (swift_dynamicCast())
  {
    sub_1D7E17C84(&v44, v47);
    v16 = *(a5 - 8);
    v17 = *(v16 + 8);
    v18 = &v14[v37];
    v19 = v17;
    v37 = v16 + 8;
    v17(v18, a5);
    v20 = v38;
    (v15)(v10, v38, TupleTypeMetadata3);
    v21 = *(TupleTypeMetadata3 + 48);
    if (swift_dynamicCast())
    {
      sub_1D7E17C84(v42, &v44);
      v19(&v10[v21], a5);
      v22 = *v39;
      v23 = v48;
      v24 = v49;
      __swift_project_boxed_opaque_existential_1(v47, v48);
      (*(v24 + 8))(v42, v23, v24);
      v25 = *&v42[0];
      v26 = BYTE8(v42[0]);
      v27 = *v20;
      v28 = *(&v45 + 1);
      v29 = v46;
      __swift_project_boxed_opaque_existential_1(&v44, *(&v45 + 1));
      (*(v29 + 8))(&v40, v28, v29);
      v30 = v40;
      v31 = v41;
      sub_1D7EB9588();
      if (v26)
      {
        if (v26 != 2 || v25)
        {
          if (v31)
          {
            if (v31 == 2 && !v30)
            {
              goto LABEL_40;
            }

            if (v26 != 1)
            {
              v32 = v26 == 2 && v25 == 1;
              if (!v32 && v31 != 1 && (v31 != 2 || v30 != 1))
              {
                result = sub_1D8192624();
                __break(1u);
                return result;
              }
            }
          }

          v30 = 0;
LABEL_40:
          __swift_destroy_boxed_opaque_existential_1Tm(&v44);
          __swift_destroy_boxed_opaque_existential_1Tm(v47);
          return v30;
        }

        if (v31)
        {
          if (v31 == 2)
          {
            if (v30)
            {
              v34 = 1;
            }

            else
            {
              v34 = v22 < v27;
            }

            goto LABEL_37;
          }

LABEL_34:
          v30 = 1;
          goto LABEL_40;
        }

        v34 = v22 < v30;
      }

      else
      {
        if (v31)
        {
          if (v31 == 2)
          {
            if (v30)
            {
              v34 = 1;
            }

            else
            {
              v34 = v25 < v27;
            }

            goto LABEL_37;
          }

          goto LABEL_34;
        }

        v34 = v25 < v30;
      }

LABEL_37:
      v30 = v34;
      goto LABEL_40;
    }

    v43 = 0;
    memset(v42, 0, sizeof(v42));
    sub_1D7FC1970(v42);
    v19(&v10[v21], a5);
    __swift_destroy_boxed_opaque_existential_1Tm(v47);
  }

  else
  {
    v46 = 0;
    v44 = 0u;
    v45 = 0u;
    sub_1D7FC1970(&v44);
    (*(*(a5 - 8) + 8))(&v14[v37], a5);
    v20 = v38;
  }

  return *v39 < *v20;
}

unint64_t sub_1D7EB952C()
{
  result = qword_1EDBBB330;
  if (!qword_1EDBBB330)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EDBBB330);
  }

  return result;
}

void sub_1D7EB9588()
{
  if (!qword_1EDBBBF60)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EDBBBF60);
    }
  }
}

uint64_t sub_1D7EB961C@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X4>, uint64_t a4@<X6>, uint64_t a5@<X8>)
{
  v24 = a4;
  v25 = a2;
  v26 = a5;
  v7 = sub_1D818E994();
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
  MEMORY[0x1EEE9AC00](TupleTypeMetadata3);
  v13 = &v23 - v12;
  v14 = *(a3 - 8);
  v16 = MEMORY[0x1EEE9AC00](v15);
  v18 = &v23 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v19 + 16))(v13, a1, TupleTypeMetadata3, v16);
  v20 = *(TupleTypeMetadata3 + 48);
  v21 = *(TupleTypeMetadata3 + 64);
  (*(v14 + 32))(v18, &v13[v20], a3);
  swift_dynamicCast();
  MEMORY[0x1DA710B60](*a1, v25);
  sub_1D7EB98BC(v9, v26);
  return (*(*(v24 - 8) + 8))(&v13[v21]);
}

uint64_t sub_1D7EB98BC@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  OUTLINED_FUNCTION_3_0();
  (*(v4 + 32))(a2);
  v5 = *(type metadata accessor for BlueprintTraversalCollectionItem() + 28);
  sub_1D818E994();
  OUTLINED_FUNCTION_8();
  v7 = *(v6 + 32);

  return v7(a2 + v5, a1);
}

void sub_1D7EB9970(void *a1, uint64_t a2, void *a3, char a4)
{
  if (a1)
  {
    swift_beginAccess();
    if (swift_weakLoadStrong())
    {
      v7 = a1;

      v8 = a3[3];
      v9 = a3[4];
      __swift_project_boxed_opaque_existential_1(a3, v8);
      v10 = (*(v9 + 16))(v8, v9);
      v12 = v11;
      v13._countAndFlagsBits = v10;
      v13._object = v12;
      MemoryImageCache.cache(image:for:expires:)(v7, v13, a4 & 1);
    }
  }
}

Swift::Void __swiftcall MemoryImageCache.cache(image:for:expires:)(UIImage image, Swift::String a2, Swift::Bool expires)
{
  object = a2._object;
  countAndFlagsBits = a2._countAndFlagsBits;
  v8 = v3[6];
  v9 = v3[7];
  __swift_project_boxed_opaque_existential_1(v3 + 3, v8);
  OUTLINED_FUNCTION_0_8();
  v10 = swift_allocObject();
  swift_weakInit();
  v11[2] = v10;
  v11[3] = image.super.isa;
  v11[4] = countAndFlagsBits;
  v11[5] = object;
  v12 = expires;
  (*(v9 + 8))(sub_1D7EB9B38, v11, v8, v9);
}

TeaUI::BlueprintLayoutSectionViewState_optional __swiftcall BlueprintLayout.viewState(at:)(Swift::Int at)
{
  v4 = v2;
  v5 = OUTLINED_FUNCTION_6_86(at, v1);
  OUTLINED_FUNCTION_2();
  v7 = v6;
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_3_124();
  v9 = OUTLINED_FUNCTION_14_0();
  BlueprintLayout.subscript.getter(v9, v10);
  v11 = (v3 + *(v5 + 56));
  v12 = *v11;
  v13 = v11[1];
  v14 = v11[2];
  v15 = *(v7 + 8);
  sub_1D8190DB4();
  v16 = v15(v3, v5);
  *v4 = v12;
  v4[1] = v13;
  v4[2] = v14;
  result.value.items._rawValue = v18;
  result.value.visibleItemsCount = v17;
  result.value.itemsCount = v16;
  result.is_nil = v19;
  return result;
}

uint64_t sub_1D7EB9C40()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {

    sub_1D818FC54();
  }

  return result;
}

uint64_t sub_1D7EB9CE8(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 24))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 16);
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

void *BlueprintLayoutCollection.layoutAttributes(at:)()
{
  v1 = *(v0 + 1216);
  if (!*(v1 + 16))
  {
    return 0;
  }

  v2 = sub_1D7E7DB08();
  if ((v3 & 1) == 0)
  {
    return 0;
  }

  v4 = *(*(v1 + 56) + 8 * v2);
  v5 = v4;
  return v4;
}

uint64_t BlueprintLayout.layoutOptions.getter@<X0>(void *a1@<X8>)
{
  memcpy(__dst, v1, 0x235uLL);
  memcpy(a1, v1, 0x235uLL);
  return sub_1D7E222B8(__dst, v4);
}

void sub_1D7EB9DD8(uint64_t a1, void *a2, void (*a3)(uint64_t), uint64_t a4, uint64_t a5)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v9 = Strong;
    v10 = sub_1D7EB9F0C();
    v12 = v11;
    v13 = a2[3];
    v14 = a2[4];
    __swift_project_boxed_opaque_existential_1(a2, v13);
    v15 = (*(v14 + 16))(v13, v14);
    if (v12)
    {
      if (v10 == v15 && v12 == v16)
      {
      }

      else
      {
        v18 = sub_1D8192634();

        if ((v18 & 1) == 0)
        {
          goto LABEL_12;
        }
      }

      a3(a5);
    }

    else
    {
    }

LABEL_12:
  }
}

uint64_t sub_1D7EB9F0C()
{

  sub_1D818F534();

  return v1;
}

Swift::Bool __swiftcall RendererEnvironment.match(state:)(TeaUI::RendererState state)
{
  v1 = *state.rawValue;
  RendererEnvironment.rendererOptions.getter(v4);
  v3 = v1;
  return RendererOptions.match(state:)(&v3);
}

Swift::Bool __swiftcall RendererOptions.match(state:)(TeaUI::RendererState state)
{
  if ((*state.rawValue & 1) != 0 && (v1[128] & 1) != 0 || (*state.rawValue & 2) != 0 && !v1[129] || (((*state.rawValue & 4) != 0) & v1[132]) != 0)
  {
    v2 = 0;
  }

  else
  {
    v2 = ((*state.rawValue & 0x10) == 0) | v1[130] ^ 1;
    if ((((*state.rawValue & 8) != 0) & v1[131]) != 0)
    {
      v2 = 0;
    }
  }

  return v2 & 1;
}

uint64_t sub_1D7EBA060(uint64_t result, unsigned int a2)
{
  if (a2 >= 3)
  {
    *result = a2 - 3;
    LOBYTE(a2) = 3;
  }

  *(result + 8) = a2;
  return result;
}

uint64_t UIImage.croppedImage(of:with:scale:byRoundingCorners:cornerRadius:)(uint64_t a1)
{
  v2[0] = 0;
  v2[1] = 0;
  v3 = 0;
  return UIImage.croppedImage(of:with:scale:byRoundingCorners:cornerRadius:border:supplementActions:)(a1, v2, 0, 0);
}

void UIImage.croppedImage(of:with:scale:clipPath:border:supplementActions:)(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10, char aBlock, uint64_t a12, uint64_t a13, void *a14, uint64_t (*a15)(), uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36)
{
  OUTLINED_FUNCTION_9_20();
  a35 = v37;
  a36 = v40;
  v41 = v36;
  v43 = v42;
  v45 = v44;
  v47 = v46;
  v49 = v48;
  v51 = v50;
  v53 = v52;
  v55 = v54;
  v57 = v56;
  OUTLINED_FUNCTION_7_32();
  v59 = *v58;
  v60 = v58[1];
  v61 = *(v58 + 16);
  v64 = v62 / v63;
  [v41 size];
  CGRect.cropRectAroundFocalFrame(targetSize:targetAspectRation:)(v65, v66, v64, v57, v55, v53, v51);
  v68 = v67;
  v70 = v69;
  v72 = v71;
  v74 = v73;
  v75 = [v41 imageRendererFormat];
  [v75 setScale_];
  [v75 setOpaque_];
  v76 = objc_allocWithZone(MEMORY[0x1E69DCA78]);
  v77 = OUTLINED_FUNCTION_1_23();
  v88 = [v78 v79];
  v80 = swift_allocObject();
  *(v80 + 16) = v47;
  *(v80 + 24) = v39;
  *(v80 + 32) = v38;
  *(v80 + 40) = v68;
  *(v80 + 48) = v70;
  *(v80 + 56) = v72;
  *(v80 + 64) = v74;
  *(v80 + 72) = v41;
  *(v80 + 80) = v45;
  *(v80 + 88) = v43;
  *(v80 + 96) = v59;
  v81 = v60;
  *(v80 + 104) = v60;
  *(v80 + 112) = v61;
  OUTLINED_FUNCTION_0_32();
  v82 = swift_allocObject();
  *(v82 + 16) = sub_1D7EBA5D4;
  *(v82 + 24) = v80;
  a15 = sub_1D7E6FA30;
  a16 = v82;
  OUTLINED_FUNCTION_1_70();
  a12 = 1107296256;
  OUTLINED_FUNCTION_0_93();
  a13 = v83;
  a14 = &block_descriptor_33;
  v84 = _Block_copy(&aBlock);
  v85 = v47;
  v86 = v41;
  sub_1D7E19F24(v45);
  v87 = v81;

  [v88 imageWithActions_];

  _Block_release(v84);
  LOBYTE(v45) = OUTLINED_FUNCTION_22_11();

  if (v45)
  {
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_8_27();
  }
}

uint64_t sub_1D7EBA420()
{
  if (*(v0 + 80))
  {
  }

  return swift_deallocObject();
}

void CGRect.cropRectAroundFocalFrame(targetSize:targetAspectRation:)(double a1, double a2, double a3, CGFloat a4, CGFloat a5, CGFloat a6, CGFloat a7)
{
  v13 = a1 * a4;
  v16 = a2 * a5;
  v17.origin.x = a4;
  v17.origin.y = a5;
  v17.size.width = a6;
  v17.size.height = a7;
  v14 = CGRectGetWidth(v17) * a1;
  v18.origin.x = a4;
  v18.origin.y = a5;
  v18.size.width = a6;
  v18.size.height = a7;
  v15 = CGRectGetHeight(v18) * a2;
  v19.origin.x = v13;
  v19.origin.y = v16;
  v19.size.width = v14;
  v19.size.height = v15;
  CGRectGetMidX(v19);
  v20.origin.x = v13;
  v20.origin.y = v16;
  v20.size.width = v14;
  v20.size.height = v15;
  CGRectGetMidY(v20);
}

void sub_1D7EBA5F8(void *a1, id a2, void *a3, void (*a4)(void *, double, double, double, double), double a5, double a6, double a7, double a8, double a9, uint64_t a10, uint64_t a11, void *a12, char a13)
{
  [a2 addClip];
  v25 = a5 / a9;
  v26 = -(a5 / a9 * a7);
  v27 = -(v25 * a8);
  [a3 size];
  v29 = v25 * v28;
  [a3 size];
  v31 = v25 * v30;
  if (a4)
  {
    a4(a1, v26, v27, v29, v31);
  }

  v35.origin.x = v26;
  v35.origin.y = v27;
  v35.size.width = v29;
  v35.size.height = v31;
  v36 = CGRectIntegral(v35);
  [a3 drawInRect_];
  if (a12)
  {
    v33[0] = a11;
    v33[1] = a12;
    v34 = a13;
    v32 = a12;
    sub_1D7FCC360(v33, a1, a2, a5, a6);
  }
}

void sub_1D7EBA754()
{
  v1 = v0;
  *&v110 = sub_1D8190C64();
  v109 = *(v110 - 8);
  MEMORY[0x1EEE9AC00](v110);
  v108 = &v102 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = CACurrentMediaTime();
  sub_1D7EBB4A4(0, &qword_1EDBBE100, &qword_1EDBBE130, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
  v111 = v4;
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1D819FAB0;
  v6 = *(v0 + OBJC_IVAR____TtC5TeaUIP33_2088E17F5F01413CA71FFC03BB03F42919ImageCacheOperation_operationDescription);
  v7 = *(v0 + OBJC_IVAR____TtC5TeaUIP33_2088E17F5F01413CA71FFC03BB03F42919ImageCacheOperation_operationDescription + 8);
  v8 = MEMORY[0x1E69E6158];
  *(v5 + 56) = MEMORY[0x1E69E6158];
  v9 = sub_1D7E13BF4();
  *(v5 + 64) = v9;
  v112 = v6;
  *(v5 + 32) = v6;
  *(v5 + 40) = v7;
  v10 = sub_1D7E0A1A8(0, &qword_1EDBBE110);
  sub_1D8190DB4();
  v11 = sub_1D8191E44();
  sub_1D81919E4();
  sub_1D818FD44();

  v12 = *(v1 + OBJC_IVAR____TtC5TeaUIP33_2088E17F5F01413CA71FFC03BB03F42919ImageCacheOperation_underlyingCache);
  v13 = (v1 + OBJC_IVAR____TtC5TeaUIP33_2088E17F5F01413CA71FFC03BB03F42919ImageCacheOperation_request);
  v14 = *(v1 + OBJC_IVAR____TtC5TeaUIP33_2088E17F5F01413CA71FFC03BB03F42919ImageCacheOperation_request + 24);
  v15 = *(v1 + OBJC_IVAR____TtC5TeaUIP33_2088E17F5F01413CA71FFC03BB03F42919ImageCacheOperation_request + 32);
  __swift_project_boxed_opaque_existential_1((v1 + OBJC_IVAR____TtC5TeaUIP33_2088E17F5F01413CA71FFC03BB03F42919ImageCacheOperation_request), v14);
  (*(v15 + 16))(v14, v15);
  v16 = sub_1D8190EE4();

  v17 = [v12 fetchImageForKey_];

  if (v17)
  {
    v18 = CACurrentMediaTime();
    v19 = v9;
    v20 = *(v1 + OBJC_IVAR____TtC5TeaUIP33_2088E17F5F01413CA71FFC03BB03F42919ImageCacheOperation_processor + 24);
    v21 = *(v1 + OBJC_IVAR____TtC5TeaUIP33_2088E17F5F01413CA71FFC03BB03F42919ImageCacheOperation_processor + 32);
    __swift_project_boxed_opaque_existential_1((v1 + OBJC_IVAR____TtC5TeaUIP33_2088E17F5F01413CA71FFC03BB03F42919ImageCacheOperation_processor), v20);
    v22 = (*(v21 + 16))(v13, v17, v20, v21);
    v23 = *(v1 + OBJC_IVAR____TtC5TeaUIP33_2088E17F5F01413CA71FFC03BB03F42919ImageCacheOperation_image);
    *(v1 + OBJC_IVAR____TtC5TeaUIP33_2088E17F5F01413CA71FFC03BB03F42919ImageCacheOperation_image) = v22;

    v24 = swift_allocObject();
    *(v24 + 16) = xmmword_1D819FAC0;
    *(v24 + 56) = v8;
    *(v24 + 64) = v19;
    *(v24 + 32) = v112;
    *(v24 + 40) = v7;
    sub_1D8190DB4();
    v25 = CACurrentMediaTime();
    v26 = MEMORY[0x1E69E6438];
    *(v24 + 96) = MEMORY[0x1E69E63B0];
    *(v24 + 104) = v26;
    *(v24 + 72) = v25 - v18;
    v27 = sub_1D8191E44();
    sub_1D81919E4();
    sub_1D818FD44();

    sub_1D7EBB284(v1, v3);
    return;
  }

  v103 = v12;
  v105 = v7;
  v106 = v10;
  v113 = dispatch_group_create();
  v28 = v13[3];
  v29 = v13[4];
  v107 = v13;
  __swift_project_boxed_opaque_existential_1(v13, v28);
  v30 = (*(v29 + 8))(v28, v29);
  v31 = v30;
  v32 = 0;
  v33 = v30 + 64;
  v34 = 1 << *(v30 + 32);
  v35 = -1;
  if (v34 < 64)
  {
    v35 = ~(-1 << v34);
  }

  v36 = v35 & *(v30 + 64);
  v104 = v1;
  v37 = (v1 + OBJC_IVAR____TtC5TeaUIP33_2088E17F5F01413CA71FFC03BB03F42919ImageCacheOperation_downloader);
  v38 = (v34 + 63) >> 6;
  v39 = v9;
  if (!v36)
  {
LABEL_9:
    while (1)
    {
      v40 = v32 + 1;
      if (__OFADD__(v32, 1))
      {
        break;
      }

      if (v40 >= v38)
      {
        v36 = 0;
        v120 = 0;
        v118 = 0u;
        v119 = 0u;
        v117 = 0u;
        goto LABEL_14;
      }

      v36 = *(v33 + 8 * v40);
      ++v32;
      if (v36)
      {
        v32 = v40;
        goto LABEL_13;
      }
    }

    __break(1u);
    goto LABEL_48;
  }

  while (1)
  {
    v40 = v32;
LABEL_13:
    v41 = __clz(__rbit64(v36));
    v36 &= v36 - 1;
    v42 = v41 | (v40 << 6);
    v43 = (*(v31 + 48) + 16 * v42);
    v45 = *v43;
    v44 = v43[1];
    sub_1D7E0E768(*(v31 + 56) + 40 * v42, &v114);
    *&v117 = v45;
    *(&v117 + 1) = v44;
    sub_1D7E05450(&v114, &v118);
    sub_1D8190DB4();
    v9 = v39;
LABEL_14:
    v121 = v117;
    v122 = v118;
    v123 = v119;
    v124 = v120;
    if (!*(&v117 + 1))
    {
      break;
    }

    sub_1D7E05450(&v122, &v117);
    v46 = *(&v118 + 1);
    v47 = v119;
    __swift_project_boxed_opaque_existential_1(&v117, *(&v118 + 1));
    (*(v47 + 16))(&v114, v46, v47);
    v48 = v115;
    if (!v115)
    {
      sub_1D7F5867C(&v114);
LABEL_19:
      v52 = v37[3];
      v53 = v37[4];
      __swift_project_boxed_opaque_existential_1(v37, v52);
      (*(v53 + 8))(&v117, v113, v52, v53);
      goto LABEL_20;
    }

    v49 = v116;
    __swift_project_boxed_opaque_existential_1(&v114, v115);
    (*(v49 + 16))(v48, v49);
    v51 = v50;
    __swift_destroy_boxed_opaque_existential_1Tm(&v114);
    if (!v51)
    {
      goto LABEL_19;
    }

LABEL_20:
    v8 = MEMORY[0x1E69E6158];
    v9 = v39;
    __swift_destroy_boxed_opaque_existential_1Tm(&v117);
    if (!v36)
    {
      goto LABEL_9;
    }
  }

  v54 = CACurrentMediaTime();
  v55 = v108;
  sub_1D8190C44();
  sub_1D8191A44();
  (*(v109 + 8))(v55, v110);
  v56 = swift_allocObject();
  v110 = xmmword_1D819FAC0;
  *(v56 + 16) = xmmword_1D819FAC0;
  *(v56 + 56) = v8;
  *(v56 + 64) = v9;
  *(v56 + 32) = v112;
  *(v56 + 40) = v105;
  sub_1D8190DB4();
  v57 = CACurrentMediaTime();
  v58 = MEMORY[0x1E69E6438];
  *(v56 + 96) = MEMORY[0x1E69E63B0];
  *(v56 + 104) = v58;
  *(v56 + 72) = v57 - v54;
  v59 = sub_1D8191E44();
  sub_1D81919E4();
  sub_1D818FD44();

  v60 = v107[3];
  v61 = v107[4];
  __swift_project_boxed_opaque_existential_1(v107, v60);
  v62 = (*(v61 + 8))(v60, v61);
  v63 = v62;
  v64 = 0;
  v65 = v62 + 64;
  v66 = 1 << *(v62 + 32);
  v67 = -1;
  if (v66 < 64)
  {
    v67 = ~(-1 << v66);
  }

  v68 = v67 & *(v62 + 64);
  v69 = (v66 + 63) >> 6;
  if (!v68)
  {
LABEL_27:
    while (1)
    {
      v70 = v64 + 1;
      if (__OFADD__(v64, 1))
      {
        break;
      }

      if (v70 >= v69)
      {
        v68 = 0;
        v120 = 0;
        v118 = 0u;
        v119 = 0u;
        v117 = 0u;
        goto LABEL_32;
      }

      v68 = *(v65 + 8 * v70);
      ++v64;
      if (v68)
      {
        v64 = v70;
        goto LABEL_31;
      }
    }

LABEL_48:
    __break(1u);
    return;
  }

  while (1)
  {
    v70 = v64;
LABEL_31:
    v71 = __clz(__rbit64(v68));
    v68 &= v68 - 1;
    v72 = v71 | (v70 << 6);
    v73 = (*(v63 + 48) + 16 * v72);
    v75 = *v73;
    v74 = v73[1];
    sub_1D7E0E768(*(v63 + 56) + 40 * v72, &v114);
    *&v117 = v75;
    *(&v117 + 1) = v74;
    sub_1D7E05450(&v114, &v118);
    sub_1D8190DB4();
LABEL_32:
    v121 = v117;
    v122 = v118;
    v123 = v119;
    v124 = v120;
    if (!*(&v117 + 1))
    {
      break;
    }

    sub_1D7E05450(&v122, &v117);
    v76 = *(&v118 + 1);
    v77 = v119;
    __swift_project_boxed_opaque_existential_1(&v117, *(&v118 + 1));
    (*(v77 + 8))(v76, v77);
    if (v78)
    {
    }

    else
    {
      v79 = *(&v118 + 1);
      v80 = v119;
      __swift_project_boxed_opaque_existential_1(&v117, *(&v118 + 1));
      v81 = (*(v80 + 24))(v79, v80);
      if (!v81)
      {
        sub_1D7F58628();
        v99 = swift_allocError();
        *v100 = 0;

        v83 = v104;
        v101 = *(v104 + OBJC_IVAR____TtC5TeaUIP33_2088E17F5F01413CA71FFC03BB03F42919ImageCacheOperation_error);
        *(v104 + OBJC_IVAR____TtC5TeaUIP33_2088E17F5F01413CA71FFC03BB03F42919ImageCacheOperation_error) = v99;

        __swift_destroy_boxed_opaque_existential_1Tm(&v117);
        goto LABEL_46;
      }
    }

    __swift_destroy_boxed_opaque_existential_1Tm(&v117);
    if (!v68)
    {
      goto LABEL_27;
    }
  }

  v82 = CACurrentMediaTime();
  v83 = v104;
  v84 = *(v104 + OBJC_IVAR____TtC5TeaUIP33_2088E17F5F01413CA71FFC03BB03F42919ImageCacheOperation_processor + 24);
  v85 = *(v104 + OBJC_IVAR____TtC5TeaUIP33_2088E17F5F01413CA71FFC03BB03F42919ImageCacheOperation_processor + 32);
  __swift_project_boxed_opaque_existential_1((v104 + OBJC_IVAR____TtC5TeaUIP33_2088E17F5F01413CA71FFC03BB03F42919ImageCacheOperation_processor), v84);
  v86 = v107;
  v87 = (*(v85 + 8))(v107, v84, v85);
  if (v87)
  {
    v88 = v87;
    v89 = swift_allocObject();
    *(v89 + 16) = v110;
    *(v89 + 56) = MEMORY[0x1E69E6158];
    *(v89 + 64) = v39;
    *(v89 + 32) = v112;
    *(v89 + 40) = v105;
    sub_1D8190DB4();
    v90 = CACurrentMediaTime();
    *(v89 + 96) = MEMORY[0x1E69E63B0];
    *(v89 + 104) = MEMORY[0x1E69E6438];
    *(v89 + 72) = v90 - v82;
    v91 = sub_1D8191E44();
    sub_1D81919E4();
    sub_1D818FD44();

    if ((*(v83 + OBJC_IVAR____TtC5TeaUIP33_2088E17F5F01413CA71FFC03BB03F42919ImageCacheOperation_expires) & 1) == 0)
    {
      v92 = v86[3];
      v93 = v86[4];
      __swift_project_boxed_opaque_existential_1(v86, v92);
      (*(v93 + 16))(v92, v93);
      v94 = sub_1D8190EE4();

      [v103 cache:v88 forKey:v94];
    }

    v95 = *(v83 + OBJC_IVAR____TtC5TeaUIP33_2088E17F5F01413CA71FFC03BB03F42919ImageCacheOperation_image);
    *(v83 + OBJC_IVAR____TtC5TeaUIP33_2088E17F5F01413CA71FFC03BB03F42919ImageCacheOperation_image) = v88;
  }

  else
  {
    sub_1D7F58628();
    v96 = swift_allocError();
    *v97 = 1;

    v98 = *(v83 + OBJC_IVAR____TtC5TeaUIP33_2088E17F5F01413CA71FFC03BB03F42919ImageCacheOperation_error);
    *(v83 + OBJC_IVAR____TtC5TeaUIP33_2088E17F5F01413CA71FFC03BB03F42919ImageCacheOperation_error) = v96;
  }

LABEL_46:
  sub_1D7EBB284(v83, v3);
}

void sub_1D7EBB284(uint64_t a1, double a2)
{
  v4 = CACurrentMediaTime();
  sub_1D7EBB4A4(0, &qword_1EDBBE100, &qword_1EDBBE130, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1D81A3F90;
  v7 = *(a1 + OBJC_IVAR____TtC5TeaUIP33_2088E17F5F01413CA71FFC03BB03F42919ImageCacheOperation_operationDescription);
  v6 = *(a1 + OBJC_IVAR____TtC5TeaUIP33_2088E17F5F01413CA71FFC03BB03F42919ImageCacheOperation_operationDescription + 8);
  *(v5 + 56) = MEMORY[0x1E69E6158];
  *(v5 + 64) = sub_1D7E13BF4();
  *(v5 + 32) = v7;
  *(v5 + 40) = v6;
  v8 = *(a1 + OBJC_IVAR____TtC5TeaUIP33_2088E17F5F01413CA71FFC03BB03F42919ImageCacheOperation_creationTime);
  v9 = MEMORY[0x1E69E63B0];
  v10 = MEMORY[0x1E69E6438];
  *(v5 + 96) = MEMORY[0x1E69E63B0];
  *(v5 + 104) = v10;
  *(v5 + 72) = a2 - v8;
  *(v5 + 136) = v9;
  *(v5 + 144) = v10;
  *(v5 + 112) = v4 - a2;
  *(v5 + 176) = v9;
  *(v5 + 184) = v10;
  *(v5 + 152) = v4 - v8;
  sub_1D7E0A1A8(0, &qword_1EDBBE110);
  sub_1D8190DB4();
  v11 = sub_1D8191E44();
  sub_1D81919E4();
  sub_1D818FD44();
}

void sub_1D7EBB3F4(uint64_t a1, uint64_t a2)
{
  if (!OUTLINED_FUNCTION_115(a1, a2))
  {
    v5 = v4;
    v6 = OUTLINED_FUNCTION_35();
    v8 = sub_1D7E0631C(v6, v7);
    v9 = v5(v3, v8);
    if (!v10)
    {
      atomic_store(v9, v2);
    }
  }
}

void sub_1D7EBB454(uint64_t a1, void *a2)
{
  if (!*a2)
  {
    v3 = OUTLINED_FUNCTION_7_12();
    v4(v3);
    v5 = sub_1D8191E84();
    if (!v6)
    {
      atomic_store(v5, v2);
    }
  }
}

void sub_1D7EBB4A4(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_1D7E0631C(255, a3);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_1D7EBB518(uint64_t a1, void (*a2)(void *, void *))
{
  Strong = swift_unknownObjectUnownedLoadStrong();
  v4 = [Strong isCancelled];

  if ((v4 & 1) == 0)
  {
    v5 = swift_unknownObjectUnownedLoadStrong();
    v6 = *&v5[OBJC_IVAR____TtC5TeaUIP33_2088E17F5F01413CA71FFC03BB03F42919ImageCacheOperation_image];
    v10 = v6;

    v7 = swift_unknownObjectUnownedLoadStrong();
    v8 = *&v7[OBJC_IVAR____TtC5TeaUIP33_2088E17F5F01413CA71FFC03BB03F42919ImageCacheOperation_error];
    v9 = v8;

    a2(v6, v8);
  }
}

uint64_t sub_1D7EBB61C(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {

    v14 = swift_allocObject();
    swift_beginAccess();
    swift_weakLoadStrong();
    swift_weakInit();

    sub_1D7E0E768(a3, v18);
    v15 = swift_allocObject();
    *(v15 + 16) = a1;
    *(v15 + 24) = v14;
    sub_1D7E05450(v18, v15 + 32);
    *(v15 + 72) = a7 & 1;
    *(v15 + 80) = a2;
    v16 = a1;
    v17 = a2;
    sub_1D7EBB884(a4, a5, sub_1D7EBC9A4, v15);
  }

  return result;
}

uint64_t sub_1D7EBB784()
{
  swift_weakDestroy();
  OUTLINED_FUNCTION_0_8();

  return swift_deallocObject();
}

uint64_t sub_1D7EBB7B8()
{

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 32);

  return swift_deallocObject();
}

void sub_1D7EBB80C()
{
  if (MEMORY[0x1E69E7D58])
  {
    sub_1D7FE5548();
  }
}

void sub_1D7EBB848()
{
  if (MEMORY[0x1E69E7D58])
  {
    sub_1D80B81D8();
  }
}

uint64_t sub_1D7EBB884(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = sub_1D8190BD4();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_1D8190C34();
  v14 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v16 = v21 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21[1] = *(v5 + 16);
  v17 = swift_allocObject();
  v17[2] = v5;
  v17[3] = a1;
  v17[4] = a2;
  v17[5] = a3;
  v17[6] = a4;
  aBlock[4] = sub_1D7EBBBE4;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D7E64940;
  aBlock[3] = &block_descriptor_70;
  v18 = _Block_copy(aBlock);

  sub_1D8190DB4();

  sub_1D8190BF4();
  v23 = MEMORY[0x1E69E7CC0];
  sub_1D7E1CF48(&qword_1EDBB34B0, MEMORY[0x1E69E7F60]);
  v19 = MEMORY[0x1E69E7F60];
  sub_1D7E1A888(0, &qword_1EDBB3348, MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
  sub_1D7E1CF90(&qword_1EDBB3340, &qword_1EDBB3348, v19);
  sub_1D8192004();
  MEMORY[0x1DA713CE0](0, v16, v13, v18);
  _Block_release(v18);
  (*(v11 + 8))(v13, v10);
  (*(v14 + 8))(v16, v22);
}

uint64_t sub_1D7EBBB8C()
{

  return swift_deallocObject();
}

uint64_t sub_1D7EBBBF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v20 = a4;
  v7 = sub_1D8190BD4();
  v23 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_1D8190C34();
  v10 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  sub_1D7EBBF70();
  v14 = v13;
  swift_endAccess();
  v21 = *(a1 + 32);
  v15 = swift_allocObject();
  v15[2] = v20;
  v15[3] = a5;
  v15[4] = v14;
  aBlock[4] = sub_1D7EBC180;
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D7E64940;
  aBlock[3] = &block_descriptor_76;
  v16 = _Block_copy(aBlock);

  sub_1D8190BF4();
  v24 = MEMORY[0x1E69E7CC0];
  sub_1D7E1CF48(&qword_1EDBB34B0, MEMORY[0x1E69E7F60]);
  v17 = MEMORY[0x1E69E7F60];
  sub_1D7E1A888(0, &qword_1EDBB3348, MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
  sub_1D7E1CF90(&qword_1EDBB3340, &qword_1EDBB3348, v17);
  sub_1D8192004();
  MEMORY[0x1DA713CE0](0, v12, v9, v16);
  _Block_release(v16);

  (*(v23 + 8))(v9, v7);
  (*(v10 + 8))(v12, v22);
}

uint64_t sub_1D7EBBF30()
{

  return swift_deallocObject();
}

void sub_1D7EBBF70()
{
  OUTLINED_FUNCTION_14_9();
  OUTLINED_FUNCTION_9_5();
  sub_1D7E11428(v2, v3);
  if (v4)
  {
    OUTLINED_FUNCTION_12_8();
    OUTLINED_FUNCTION_0_11();
    sub_1D7EBC044(0, &qword_1EDBB2E20);
    OUTLINED_FUNCTION_1_16();
    OUTLINED_FUNCTION_3_24();
    v5 = OUTLINED_FUNCTION_2_19();
    sub_1D7EBC0A4(v5, qword_1EDBB8998, sub_1D7E1A8EC, type metadata accessor for ImageCacheFetchDeduper.Request);
    OUTLINED_FUNCTION_11_0();
    sub_1D8192384();
    *v0 = v1;
  }

  OUTLINED_FUNCTION_169();
}

void sub_1D7EBC044(uint64_t a1, void *a2)
{
  if (!*a2)
  {
    v3 = OUTLINED_FUNCTION_7_12();
    sub_1D7EBC0A4(v3, v4, v5, v6);
    v7 = sub_1D8192394();
    if (!v8)
    {
      atomic_store(v7, v2);
    }
  }
}

void sub_1D7EBC0A4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1D7EBC114(void (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    sub_1D7EBC18C();
    v5 = v4;
  }

  else
  {
    v5 = MEMORY[0x1E69E7CC0];
  }

  a1(v5);
}

void sub_1D7EBC18C()
{
  swift_beginAccess();
  v1 = *(v0 + 32);
  v2 = v1 + 48;
  v3 = *(v1 + 16);
  sub_1D8190DB4();
  v4 = 0;
  v5 = MEMORY[0x1E69E7CC0];
  v6 = MEMORY[0x1E69E7CC0];
LABEL_2:
  v7 = (v2 + 24 * v4);
  while (v3 != v4)
  {
    if (v4 >= *(v1 + 16))
    {
      __break(1u);
      goto LABEL_22;
    }

    v9 = *(v7 - 2);
    v8 = *(v7 - 1);
    v10 = *v7;

    v11 = sub_1D818F8D4();
    if (v11)
    {
      v12 = *(v11 + 16);

      if ((v12 & 1) == 0)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1D7EBC4C4();
        }

        v13 = *(v6 + 16);
        if (v13 >= *(v6 + 24) >> 1)
        {
          sub_1D7EBC4C4();
        }

        ++v4;
        *(v6 + 16) = v13 + 1;
        v14 = (v6 + 24 * v13);
        v14[4] = v9;
        v14[5] = v8;
        v14[6] = v10;
        v5 = MEMORY[0x1E69E7CC0];
        v2 = v1 + 48;
        goto LABEL_2;
      }
    }

    v7 += 3;
    ++v4;
  }

  v15 = *(v6 + 16);
  if (!v15)
  {
LABEL_19:

    return;
  }

  sub_1D7EBC584(0, v15, 0);
  v16 = 0;
  v17 = 32;
  v18 = v5;
  while (v16 < *(v6 + 16))
  {
    v19 = *(v18 + 16);
    v20 = *(v18 + 24);
    v21 = *(v6 + v17);

    if (v19 >= v20 >> 1)
    {
      sub_1D7EBC584(v20 > 1, v19 + 1, 1);
    }

    ++v16;
    *(v18 + 16) = v19 + 1;
    *(v18 + 16 * v19 + 32) = v21;
    v17 += 24;
    if (v15 == v16)
    {
      goto LABEL_19;
    }
  }

LABEL_22:
  __break(1u);
}

void sub_1D7EBC3C8()
{
  OUTLINED_FUNCTION_14_5();
  if ((v3 & 1) == 0 || (OUTLINED_FUNCTION_2_16(), v4 == v5))
  {
LABEL_6:
    OUTLINED_FUNCTION_4_4();
    if (v2)
    {
      sub_1D7EB0164(0, &qword_1EDBB2BF8, sub_1D7EE5DA8, MEMORY[0x1E69E6F90]);
      v6 = OUTLINED_FUNCTION_22_0();
      OUTLINED_FUNCTION_3_127(v6);
      if (v1)
      {
LABEL_8:
        v7 = OUTLINED_FUNCTION_3_13();
        sub_1D80E5C20(v7, v8, v9);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    sub_1D7EBC4E4(0, &qword_1EDBB2B78);
    OUTLINED_FUNCTION_7_9();
    swift_arrayInitWithCopy();
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_12_4();
  if (!v4)
  {
    OUTLINED_FUNCTION_1_10();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_1D7EBC4E4(uint64_t a1, void *a2)
{
  if (!*a2)
  {
    v3 = OUTLINED_FUNCTION_35();
    v4(v3);
    sub_1D7EB0164(255, &qword_1EDBBC428, type metadata accessor for ImageCacheInterestToken, MEMORY[0x1E69D6A90]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v6)
    {
      atomic_store(TupleTypeMetadata2, v2);
    }
  }
}

uint64_t sub_1D7EBC5D8(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6)
{
  v30 = a1;
  v11 = sub_1D8190BD4();
  v29 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1D8190C34();
  v27 = *(v14 - 8);
  v28 = v14;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v26 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7E0A1A8(0, &qword_1EDBBC7C0);
  v26 = sub_1D8191AB4();
  sub_1D7E0E768(a4, v32);
  v17 = swift_allocObject();
  *(v17 + 16) = a2;
  *(v17 + 24) = a3;
  sub_1D7E05450(v32, v17 + 32);
  *(v17 + 72) = a5;
  aBlock[4] = sub_1D7EB98AC;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D7E64940;
  aBlock[3] = &block_descriptor_82;
  v18 = _Block_copy(aBlock);
  v19 = a2;

  sub_1D8190BF4();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1D7E1CF48(&qword_1EDBB34B0, MEMORY[0x1E69E7F60]);
  v20 = MEMORY[0x1E69E7F60];
  sub_1D7E1A888(0, &qword_1EDBB3348, MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
  sub_1D7E1CF90(&qword_1EDBB3340, &qword_1EDBB3348, v20);
  sub_1D8192004();
  v21 = v26;
  MEMORY[0x1DA713CE0](0, v16, v13, v18);
  _Block_release(v18);

  (*(v29 + 8))(v13, v11);
  result = (*(v27 + 8))(v16, v28);
  v23 = *(v30 + 16);
  if (v23)
  {
    v24 = v30 + 40;
    do
    {
      v25 = *(v24 - 8);
      aBlock[0] = a2;
      *&v32[0] = a6;

      v25(aBlock, v32);

      v24 += 16;
      --v23;
    }

    while (v23);
  }

  return result;
}

uint64_t sub_1D7EBC95C()
{

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 32);

  return swift_deallocObject();
}

uint64_t sub_1D7EBCA04(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v22 = a6;
  v10 = sub_1D8190BD4();
  v24 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_1D8190C34();
  v13 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v15 = &v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7E11E0C();
  v16 = sub_1D8191AB4();
  sub_1D7E0E768(a4, v26);
  v17 = swift_allocObject();
  v17[2] = a3;
  sub_1D7E05450(v26, (v17 + 3));
  v18 = v22;
  v17[8] = a5;
  v17[9] = v18;
  v17[10] = a1;
  aBlock[4] = sub_1D7EB9D28;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D7E64940;
  aBlock[3] = &block_descriptor_45_0;
  v19 = _Block_copy(aBlock);
  v20 = a1;

  sub_1D8190BF4();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1D7EBCD5C();
  sub_1D7E40724(0, &qword_1EDBB3348, MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
  sub_1D7EBCDB4();
  sub_1D8192004();
  MEMORY[0x1DA713CE0](0, v15, v12, v19);
  _Block_release(v19);

  (*(v24 + 8))(v12, v10);
  return (*(v13 + 8))(v15, v23);
}

uint64_t sub_1D7EBCCF8()
{

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 24);

  return swift_deallocObject();
}

unint64_t sub_1D7EBCD5C()
{
  result = qword_1EDBB34B0;
  if (!qword_1EDBB34B0)
  {
    sub_1D8190BD4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBB34B0);
  }

  return result;
}

unint64_t sub_1D7EBCDB4()
{
  result = qword_1EDBB3340;
  if (!qword_1EDBB3340)
  {
    sub_1D7E548CC(255, &qword_1EDBB3348, MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBB3340);
  }

  return result;
}

uint64_t sub_1D7EBCE40()
{
  sub_1D7EBCE70();

  return swift_deallocClassInstance();
}

uint64_t sub_1D7EBCF4C()
{
  v0 = sub_1D7E2E834();
  BlueprintCollectionViewLayoutTransition.targetContentOffset.getter(v0);
}

double sub_1D7EBCFB4(void *a1)
{
  v1 = a1;
  sub_1D7EBCF4C();
  v3 = v2;

  return v3;
}

uint64_t BlueprintCollectionViewLayoutTransition.targetContentOffset.getter(uint64_t a1)
{
  OUTLINED_FUNCTION_0_136(a1, &qword_1EDBB4678);
  OUTLINED_FUNCTION_50(v2);
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v12 - v4;
  v6 = OBJC_IVAR____TtC5TeaUI39BlueprintCollectionViewLayoutTransition_state;
  OUTLINED_FUNCTION_4_57();
  sub_1D7E6C3B4(v1 + v6, v5);
  v7 = type metadata accessor for BlueprintCollectionViewLayoutTransition.State(0);
  if (__swift_getEnumTagSinglePayload(v5, 1, v7) == 1)
  {
    return 0;
  }

  sub_1D7E319A8();
  v8 = *&v5[*(v9 + 48)];
  sub_1D818E794();
  OUTLINED_FUNCTION_8();
  (*(v10 + 8))(v5);
  return v8;
}

void sub_1D7EBD140(uint64_t a1@<X8>, uint64_t a2@<X0>)
{
  if ((*v2 & a2) != 0)
  {
    *v2 &= ~a2;
  }

  OUTLINED_FUNCTION_13(a1);
}

uint64_t sub_1D7EBD160(uint64_t a1)
{
  result = *v1 & a1;
  if (result)
  {
    *v1 &= ~a1;
  }

  return result;
}

uint64_t sub_1D7EBD19C(uint64_t a1)
{
  v2 = *v1;
  *v1 |= a1;
  return v2 & a1;
}

uint64_t sub_1D7EBD240@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1D7EE2164();
  *a1 = result;
  return result;
}

uint64_t sub_1D7EBD2B8(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_1_9(a1);
  result = sub_1D7EBD128(v2, v3);
  *v1 = result;
  return result;
}

uint64_t sub_1D7EBD2E0(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_1_9(a1);
  result = sub_1D7EBD138(v2, v3);
  *v1 = result;
  return result;
}

uint64_t sub_1D7EBD368(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_1_9(a1);
  result = sub_1D7EBD1CC(v2, v3);
  *v1 = result;
  return result;
}

void *sub_1D7EBD3B8@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_1D7EBD3D0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1D7EDFB94(a1);
  *a2 = result;
  return result;
}

uint64_t sub_1D7EBD404(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 32))
  {
    return OUTLINED_FUNCTION_12_5(a1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D7EBD41C(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 32) = v3;
  return result;
}

uint64_t sub_1D7EBD448(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return OUTLINED_FUNCTION_12_5(a1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D7EBD6FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D7EECE68(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D7EBD7DC()
{

  return swift_deallocObject();
}

uint64_t sub_1D7EBD814(uint64_t a1, uint64_t a2, int *a3)
{
  if (a2 == 2147483646)
  {
    return OUTLINED_FUNCTION_37_1(*(a1 + 8));
  }

  sub_1D818F824();
  OUTLINED_FUNCTION_95();
  if (*(v8 + 84) == a2)
  {
    v9 = v7;
    v10 = a3[6];
  }

  else
  {
    sub_1D818E794();
    OUTLINED_FUNCTION_95();
    if (*(v12 + 84) == a2)
    {
      v9 = v11;
      v10 = a3[7];
    }

    else
    {
      v9 = sub_1D818E644();
      v10 = a3[8];
    }
  }

  return __swift_getEnumTagSinglePayload(a1 + v10, a2, v9);
}

uint64_t sub_1D7EBD910(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 8) = a2;
  }

  else
  {
    sub_1D818F824();
    OUTLINED_FUNCTION_95();
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = a4[6];
    }

    else
    {
      sub_1D818E794();
      OUTLINED_FUNCTION_95();
      if (*(v13 + 84) == a3)
      {
        v10 = v12;
        v11 = a4[7];
      }

      else
      {
        v10 = sub_1D818E644();
        v11 = a4[8];
      }
    }

    return __swift_storeEnumTagSinglePayload(v5 + v11, a2, a2, v10);
  }

  return result;
}

uint64_t sub_1D7EBDA54(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 25))
  {
    return OUTLINED_FUNCTION_98_0(*a1);
  }

  else
  {
    return OUTLINED_FUNCTION_0_2();
  }
}

uint64_t sub_1D7EBDA6C(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 73))
  {
    return OUTLINED_FUNCTION_98_0(*a1);
  }

  else
  {
    return OUTLINED_FUNCTION_0_2();
  }
}

uint64_t sub_1D7EBDA84(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 72) = 0;
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

  *(result + 73) = v3;
  return result;
}

uint64_t sub_1D7EBDAEC()
{

  return swift_deallocObject();
}

uint64_t sub_1D7EBDB24()
{

  if (*(v0 + 72) != 255)
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1D7EBDB9C(uint64_t result, int a2)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
  }

  else if (a2)
  {
    return OUTLINED_FUNCTION_140(result, a2);
  }

  return result;
}

uint64_t sub_1D7EBDC0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = OUTLINED_FUNCTION_76_0();
  type metadata accessor for JSONSchema.SchemaType.ObjectType(v6);
  OUTLINED_FUNCTION_95();
  if (*(v8 + 84) != a2)
  {
    return OUTLINED_FUNCTION_37_1(*(v3 + *(a3 + 20)));
  }

  return __swift_getEnumTagSinglePayload(v3, a2, v7);
}

void sub_1D7EBDCA4(uint64_t a1, unsigned int a2, int a3, uint64_t a4)
{
  v8 = OUTLINED_FUNCTION_113();
  type metadata accessor for JSONSchema.SchemaType.ObjectType(v8);
  OUTLINED_FUNCTION_95();
  if (*(v9 + 84) == a3)
  {
    v10 = OUTLINED_FUNCTION_145();

    __swift_storeEnumTagSinglePayload(v10, v11, v12, v13);
  }

  else
  {
    *(v4 + *(a4 + 20)) = a2;
  }
}

uint64_t sub_1D7EBDD84()
{

  return swift_deallocObject();
}

uint64_t sub_1D7EBDE18()
{
  OUTLINED_FUNCTION_30_0();
  result = sub_1D7EFC4E4();
  *v0 = result;
  return result;
}

uint64_t sub_1D7EBDE44()
{
  OUTLINED_FUNCTION_30_0();
  result = sub_1D7EFC58C();
  *v0 = result & 1;
  return result;
}

uint64_t sub_1D7EBDE98()
{
  OUTLINED_FUNCTION_30_0();
  result = sub_1D7EFC62C();
  *v0 = result;
  return result;
}

uint64_t sub_1D7EBDF38()
{
  OUTLINED_FUNCTION_30_0();
  result = sub_1D7EFF808();
  *v0 = result & 1;
  return result;
}

uint64_t sub_1D7EBDFA4()
{
  OUTLINED_FUNCTION_30_0();
  result = sub_1D7EFC74C();
  *v0 = result;
  return result;
}

uint64_t sub_1D7EBDFD0()
{
  OUTLINED_FUNCTION_30_0();
  result = sub_1D7EFD090();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1D7EBE018(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 24);
  sub_1D7E9F1D8();

  return __swift_getEnumTagSinglePayload(a1 + v5, a2, v6);
}

uint64_t sub_1D7EBE06C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 24);
  sub_1D7E9F1D8();

  return __swift_storeEnumTagSinglePayload(a1 + v6, a2, a2, v7);
}

uint64_t sub_1D7EBE138()
{
  sub_1D7EF4CE0(*(v0 + 16), *(v0 + 24));

  return swift_deallocObject();
}

uint64_t sub_1D7EBE180()
{

  return swift_deallocObject();
}

uint64_t sub_1D7EBE1C0()
{

  return swift_deallocObject();
}

uint64_t sub_1D7EBE200()
{
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1D7EBE240()
{

  return swift_deallocObject();
}

uint64_t sub_1D7EBE288()
{

  return swift_deallocObject();
}

uint64_t sub_1D7EBE2C4()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_1D7EBE2FC()
{

  return swift_deallocObject();
}

__n128 sub_1D7EBE370(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

id sub_1D7EBE37C@<X0>(void *a1@<X8>)
{
  result = sub_1D7F0A084();
  *a1 = result;
  return result;
}

uint64_t sub_1D7EBE3B0()
{

  return swift_deallocObject();
}

uint64_t sub_1D7EBE44C()
{
  switch(*(v0 + 89))
  {
    case 0:

      break;
    case 1:
    case 3:
      v1 = v0 + 16;
LABEL_3:
      __swift_destroy_boxed_opaque_existential_1Tm(v1);
      break;
    case 2:
      switch(*(v0 + 88))
      {
        case 0:

          goto LABEL_10;
        case 1:

          sub_1D7F0C9E0(*(v0 + 48), *(v0 + 56));
          goto LABEL_10;
        case 2:

          sub_1D7F0C9E0(*(v0 + 64), *(v0 + 72));
LABEL_10:

          break;
        case 3:

          v1 = v0 + 32;
          goto LABEL_3;
        default:
          goto LABEL_11;
      }

      break;
    default:
      break;
  }

LABEL_11:

  return swift_deallocObject();
}

uint64_t sub_1D7EBE58C()
{
  MEMORY[0x1DA715E30](v0 + 16);
  OUTLINED_FUNCTION_0_8();

  return swift_deallocObject();
}

uint64_t sub_1D7EBE5C0()
{

  return swift_deallocObject();
}

uint64_t sub_1D7EBE5F8()
{

  OUTLINED_FUNCTION_0_8();

  return swift_deallocObject();
}

__n128 sub_1D7EBE640(uint64_t a1, uint64_t a2)
{
  result = *a1;
  v3 = *(a1 + 32);
  *(a2 + 16) = *(a1 + 16);
  *(a2 + 32) = v3;
  *a2 = result;
  return result;
}

uint64_t sub_1D7EBE654()
{
  swift_unknownObjectRelease();
  if (*(v0 + 56))
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 32);
  }

  return swift_deallocObject();
}

uint64_t sub_1D7EBE73C()
{
  MEMORY[0x1DA715E30](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1D7EBE774()
{

  return swift_deallocObject();
}

uint64_t sub_1D7EBE7BC()
{

  return swift_deallocObject();
}

uint64_t sub_1D7EBE7F8()
{

  return swift_deallocObject();
}

uint64_t sub_1D7EBE838()
{

  return swift_deallocObject();
}

uint64_t sub_1D7EBE890@<X0>(uint64_t *a1@<X8>)
{
  OUTLINED_FUNCTION_12();
  result = (*(v2 + 112))();
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1D7EBE8DC()
{

  return swift_deallocObject();
}

uint64_t sub_1D7EBE918()
{

  return swift_deallocObject();
}

uint64_t sub_1D7EBE950()
{

  return swift_deallocObject();
}

uint64_t sub_1D7EBE9D0()
{
  sub_1D8190FF4();
}

uint64_t sub_1D7EBEB7C@<X0>(uint64_t *a1@<X8>)
{
  result = ContainerManager.carPlayContainer.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1D7EBECA8()
{

  OUTLINED_FUNCTION_7_0();

  return swift_deallocObject();
}

uint64_t sub_1D7EBECE0()
{

  OUTLINED_FUNCTION_7_0();

  return swift_deallocObject();
}

uint64_t sub_1D7EBED1C()
{

  OUTLINED_FUNCTION_7_0();

  return swift_deallocObject();
}

uint64_t sub_1D7EBED4C()
{

  return swift_deallocObject();
}

uint64_t sub_1D7EBED90()
{
  MEMORY[0x1DA715E30](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1D7EBEE60(uint64_t a1, uint64_t a2)
{
  sub_1D7F1E3C8();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(a1, a2, v4);
  if (EnumTagSinglePayload >= 4)
  {
    return EnumTagSinglePayload - 3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D7EBEEA8(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 3);
  }

  else
  {
    v5 = 0;
  }

  sub_1D7F1E3C8();

  return __swift_storeEnumTagSinglePayload(a1, v5, a3, v6);
}

id sub_1D7EBEFF4@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 contentAlpha];
  *a2 = v4;
  return result;
}

id sub_1D7EBF03C@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 verticalOffset];
  *a2 = v4;
  return result;
}

uint64_t sub_1D7EBF0D0()
{
  OUTLINED_FUNCTION_0_32();

  return swift_deallocObject();
}

uint64_t sub_1D7EBF120()
{

  return swift_deallocObject();
}

uint64_t sub_1D7EBF158()
{
  OUTLINED_FUNCTION_0_32();

  return swift_deallocObject();
}

uint64_t sub_1D7EBF1E8()
{
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1D7EBF2C0()
{
  (*(*(*(v0 + 24) - 8) + 8))(v0 + ((*(*(*(v0 + 24) - 8) + 80) + 40) & ~*(*(*(v0 + 24) - 8) + 80)));

  return swift_deallocObject();
}

uint64_t sub_1D7EBF348()
{

  return swift_deallocObject();
}

uint64_t sub_1D7EBF380()
{

  return swift_deallocObject();
}

uint64_t sub_1D7EBF3C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_0_35();
  sub_1D7E19388(0, v6, v7, MEMORY[0x1E69E6720]);
  if (*(*(v8 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(a1, a2, v8);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 24);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

void sub_1D7EBF490(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  OUTLINED_FUNCTION_0_35();
  sub_1D7E19388(0, v8, v9, MEMORY[0x1E69E6720]);
  if (*(*(v10 - 8) + 84) == a3)
  {

    __swift_storeEnumTagSinglePayload(a1, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 20) + 24) = (a2 - 1);
  }
}

uint64_t sub_1D7EBF55C()
{

  return swift_deallocObject();
}

uint64_t sub_1D7EBF594()
{
  type metadata accessor for CopyCommandContext();
  OUTLINED_FUNCTION_4_20();
  v4 = (*(v3 + 80) + 40) & ~*(v3 + 80);
  if (*(v1 + 16))
  {
  }

  v5 = sub_1D818E644();
  if (!OUTLINED_FUNCTION_7_16(v5))
  {
    OUTLINED_FUNCTION_3_0();
    (*(v6 + 8))(v1 + v4, v2);
  }

  __swift_destroy_boxed_opaque_existential_1Tm(v1 + v4 + *(v0 + 20));

  return swift_deallocObject();
}

uint64_t sub_1D7EBF694()
{
  type metadata accessor for CopyCommandContext();
  OUTLINED_FUNCTION_4_20();
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);

  v5 = sub_1D818E644();
  if (!OUTLINED_FUNCTION_7_16(v5))
  {
    OUTLINED_FUNCTION_3_0();
    (*(v6 + 8))(v1 + v4, v2);
  }

  __swift_destroy_boxed_opaque_existential_1Tm(v1 + v4 + *(v0 + 20));

  return swift_deallocObject();
}

uint64_t sub_1D7EBF794()
{
  if (*(v0 + 16))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1D7EBF7E4()
{

  return swift_deallocObject();
}

uint64_t sub_1D7EBF81C()
{

  return swift_deallocObject();
}

uint64_t sub_1D7EBF8A8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1D7F2BFF8();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1D7EBF914()
{

  return swift_deallocObject();
}

__n128 sub_1D7EBF9C0(uint64_t a1, _OWORD *a2)
{
  result = *a1;
  v3 = *(a1 + 16);
  *a2 = *a1;
  a2[1] = v3;
  return result;
}

uint64_t sub_1D7EBFA6C()
{

  return swift_deallocObject();
}

uint64_t sub_1D7EBFB38()
{

  return swift_deallocObject();
}

uint64_t sub_1D7EBFBDC()
{

  return swift_deallocObject();
}

__n128 sub_1D7EBFC50(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_1D7EBFC68()
{

  return swift_deallocObject();
}

uint64_t sub_1D7EBFCA0()
{
  MEMORY[0x1DA715E30](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1D7EBFCD8()
{
  v1 = *(v0 + 16);
  OUTLINED_FUNCTION_2();
  v3 = v2;
  v4 = (*(v2 + 80) + 40) & ~*(v2 + 80);

  (*(v3 + 8))(v0 + v4, v1);

  return swift_deallocObject();
}

uint64_t sub_1D7EBFDA4()
{
  swift_unknownObjectUnownedDestroy();

  return swift_deallocObject();
}

__n128 sub_1D7EBFDEC(uint64_t a1, _OWORD *a2)
{
  result = *a1;
  v3 = *(a1 + 16);
  *a2 = *a1;
  a2[1] = v3;
  return result;
}

uint64_t sub_1D7EBFE7C()
{
  MEMORY[0x1DA715E30](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1D7EBFEB4()
{

  return swift_deallocObject();
}

uint64_t sub_1D7EBFF18()
{

  return swift_deallocObject();
}

uint64_t sub_1D7EC00A8()
{
  MEMORY[0x1DA715E30](v0 + 16);
  OUTLINED_FUNCTION_19();

  return swift_deallocObject();
}

uint64_t sub_1D7EC00D8()
{
  swift_unknownObjectUnownedDestroy();
  OUTLINED_FUNCTION_19();

  return swift_deallocObject();
}

uint64_t sub_1D7EC0108()
{

  return swift_deallocObject();
}

uint64_t sub_1D7EC014C()
{
  OUTLINED_FUNCTION_19();

  return swift_deallocObject();
}

uint64_t sub_1D7EC017C()
{
  OUTLINED_FUNCTION_30_0();
  result = sub_1D7F45AF4();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1D7EC01A8()
{
  OUTLINED_FUNCTION_30_0();
  result = sub_1D7F45C60();
  *v0 = result;
  return result;
}

id sub_1D7EC01FC()
{
  OUTLINED_FUNCTION_30_0();
  result = sub_1D7F46AE4();
  *v0 = result;
  return result;
}

uint64_t sub_1D7EC02A0()
{
  _Block_release(*(v0 + 16));
  OUTLINED_FUNCTION_19();

  return swift_deallocObject();
}

uint64_t sub_1D7EC02D0()
{

  return swift_deallocObject();
}

uint64_t sub_1D7EC0310()
{
  swift_weakDestroy();
  OUTLINED_FUNCTION_19();

  return swift_deallocObject();
}

uint64_t sub_1D7EC0340()
{

  return swift_deallocObject();
}

uint64_t sub_1D7EC0380()
{

  if (*(v0 + 40))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1D7EC03E0()
{
  if (*(v0 + 16))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1D7EC0438(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *a1;
    if (v4 >= 2)
    {
      return v4 - 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = sub_1D818E994();
    v9 = &a1[*(a3 + 20)];

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

_BYTE *sub_1D7EC04B8(_BYTE *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *result = a2 + 1;
  }

  else
  {
    v7 = sub_1D818E994();
    v8 = &v5[*(a4 + 20)];

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1D7EC055C()
{

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 32);

  return swift_deallocObject();
}

uint64_t sub_1D7EC05D0()
{
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1D7EC0618()
{
  swift_unknownObjectUnownedDestroy();
  OUTLINED_FUNCTION_0_8();

  return swift_deallocObject();
}

uint64_t sub_1D7EC064C()
{

  return swift_deallocObject();
}

uint64_t sub_1D7EC0694()
{

  return swift_deallocObject();
}

uint64_t sub_1D7EC06CC()
{

  OUTLINED_FUNCTION_7_0();

  return swift_deallocObject();
}

uint64_t sub_1D7EC06FC()
{

  return swift_deallocObject();
}

uint64_t sub_1D7EC0734()
{

  return swift_deallocObject();
}

uint64_t sub_1D7EC077C()
{

  return swift_deallocObject();
}

uint64_t sub_1D7EC07D4()
{
  MEMORY[0x1DA715E30](v0 + 16);
  OUTLINED_FUNCTION_0_8();

  return swift_deallocObject();
}

uint64_t sub_1D7EC0814()
{

  return swift_deallocObject();
}

uint64_t sub_1D7EC0858()
{

  OUTLINED_FUNCTION_7_2();

  return swift_deallocObject();
}

uint64_t sub_1D7EC08A0()
{
  OUTLINED_FUNCTION_30_0();
  result = sub_1D7F606A8();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1D7EC08F4()
{
  OUTLINED_FUNCTION_30_0();
  result = sub_1D7F60808();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1D7EC0948()
{
  OUTLINED_FUNCTION_30_0();
  result = sub_1D7F60AB0();
  *v0 = result;
  v0[1] = v2;
  return result;
}

id sub_1D7EC099C()
{
  OUTLINED_FUNCTION_30_0();
  result = sub_1D7F60C60();
  *v0 = result;
  return result;
}

uint64_t sub_1D7EC09C8()
{
  OUTLINED_FUNCTION_30_0();
  result = sub_1D7F60EF0();
  *v0 = result;
  return result;
}

void *sub_1D7EC0A20()
{
  OUTLINED_FUNCTION_30_0();
  result = sub_1D7F617C4();
  *v0 = result;
  return result;
}

void *sub_1D7EC0A4C()
{
  OUTLINED_FUNCTION_30_0();
  result = sub_1D7F61ADC();
  *v0 = result;
  return result;
}

void *sub_1D7EC0A78()
{
  OUTLINED_FUNCTION_30_0();
  result = sub_1D7F61C40();
  *v0 = result;
  return result;
}

uint64_t sub_1D7EC0AA4()
{
  _Block_release(*(v0 + 16));
  OUTLINED_FUNCTION_0_8();

  return swift_deallocObject();
}

uint64_t sub_1D7EC0AD8()
{

  if (*(v0 + 32))
  {
  }

  OUTLINED_FUNCTION_7_2();

  return swift_deallocObject();
}

uint64_t sub_1D7EC0B18()
{

  OUTLINED_FUNCTION_7_2();

  return swift_deallocObject();
}

uint64_t sub_1D7EC0B60()
{
  OUTLINED_FUNCTION_7_2();

  return swift_deallocObject();
}

__n128 sub_1D7EC0BB8(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_1D7EC0BD0()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1D7EC0C08()
{

  return swift_deallocObject();
}

uint64_t sub_1D7EC0C40()
{
  v1 = *(v0 + 24);
  OUTLINED_FUNCTION_2();
  v3 = v2;
  v4 = (*(v2 + 80) + 56) & ~*(v2 + 80);

  (*(v3 + 8))(v0 + v4, v1);

  return swift_deallocObject();
}

uint64_t sub_1D7EC0D80()
{
  MEMORY[0x1DA715E30](v0 + 16);
  OUTLINED_FUNCTION_0_8();

  return swift_deallocObject();
}

uint64_t sub_1D7EC0DB4()
{
  swift_unknownObjectUnownedDestroy();
  OUTLINED_FUNCTION_0_8();

  return swift_deallocObject();
}

uint64_t sub_1D7EC0DEC()
{
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1D7EC0E34()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 3));

  return swift_deallocObject();
}

uint64_t sub_1D7EC0E84()
{

  return swift_deallocObject();
}

uint64_t sub_1D7EC0EBC()
{
  if (*(v0 + 32))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1D7EC0F04@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1D7F69284();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1D7EC0F5C()
{
  OUTLINED_FUNCTION_0_8();

  return swift_deallocObject();
}

uint64_t sub_1D7EC0F90()
{
  OUTLINED_FUNCTION_0_32();

  return swift_deallocObject();
}

uint64_t sub_1D7EC0FE8()
{

  return swift_deallocObject();
}

uint64_t sub_1D7EC1030()
{
  sub_1D7EFB554(*(v0 + 16), *(v0 + 24), *(v0 + 32));
  sub_1D7EFB554(*(v0 + 40), *(v0 + 48), *(v0 + 56));

  return swift_deallocObject();
}

uint64_t sub_1D7EC1078()
{
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 16);

  if (*(v0 + 72))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1D7EC10D0()
{

  sub_1D7EFB554(*(v0 + 24), *(v0 + 32), *(v0 + 40));

  if (*(v0 + 56))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1D7EC112C()
{

  OUTLINED_FUNCTION_0_32();

  return swift_deallocObject();
}

uint64_t sub_1D7EC11AC(char a1)
{
  if (a1)
  {
    return 1635017060;
  }

  else
  {
    return 1701869940;
  }
}

uint64_t sub_1D7EC1244()
{
  (*(*(*(v0 + 16) - 8) + 8))(v0 + ((*(*(*(v0 + 16) - 8) + 80) + 32) & ~*(*(*(v0 + 16) - 8) + 80)));

  return swift_deallocObject();
}

uint64_t sub_1D7EC12EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1D818E8B4();
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = a1 + *(a3 + 20);

    return __swift_getEnumTagSinglePayload(v8, a2, v7);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_1D7EC139C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1D818E8B4();
  if (*(*(result - 8) + 84) == a3)
  {
    v9 = result;
    v10 = a1 + *(a4 + 20);

    return __swift_storeEnumTagSinglePayload(v10, a2, a2, v9);
  }

  else
  {
    *(a1 + *(a4 + 24)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1D7EC1448()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1D7EC149C()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1D7EC14E8()
{

  OUTLINED_FUNCTION_0_32();

  return swift_deallocObject();
}

uint64_t sub_1D7EC151C()
{

  return swift_deallocObject();
}

uint64_t sub_1D7EC155C()
{

  return swift_deallocObject();
}

uint64_t sub_1D7EC15A0()
{
  MEMORY[0x1DA715E30](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1D7EC15D8()
{

  return swift_deallocObject();
}

uint64_t sub_1D7EC1618()
{

  return swift_deallocObject();
}

uint64_t sub_1D7EC1664()
{
  OUTLINED_FUNCTION_0_8();

  return swift_deallocObject();
}

uint64_t sub_1D7EC16B8()
{
  MEMORY[0x1DA715E30](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1D7EC1760()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_1D7EC179C()
{
  MEMORY[0x1DA715E30](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1D7EC17D4()
{

  return swift_deallocObject();
}

uint64_t sub_1D7EC1814()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_8_6();
  v0 = OUTLINED_FUNCTION_2_11();
  v1(v0);

  OUTLINED_FUNCTION_7_26();

  return swift_deallocObject();
}

uint64_t sub_1D7EC18CC()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_8_6();
  v2 = OUTLINED_FUNCTION_2_11();
  v3(v2);

  OUTLINED_FUNCTION_7_26();

  return swift_deallocObject();
}

uint64_t sub_1D7EC19B0()
{
  MEMORY[0x1DA715E30](v0 + 16);
  OUTLINED_FUNCTION_0_8();

  return swift_deallocObject();
}

uint64_t sub_1D7EC19E4()
{
  swift_unknownObjectUnownedDestroy();
  OUTLINED_FUNCTION_0_8();

  return swift_deallocObject();
}

uint64_t sub_1D7EC1A18()
{

  return swift_deallocObject();
}

double sub_1D7EC1A58(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = OUTLINED_FUNCTION_140_0(a1, a2, a3);
  v5 = v3;
  v6 = BlueprintTableViewDelegate.tableView(_:heightForHeaderInSection:)();

  return v6;
}

double sub_1D7EC1AAC(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = OUTLINED_FUNCTION_140_0(a1, a2, a3);
  v5 = v3;
  v6 = BlueprintTableViewDelegate.tableView(_:heightForFooterInSection:)();

  return v6;
}

void sub_1D7EC1B00(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = OUTLINED_FUNCTION_140_0(a1, a2, a3);
  v6 = v3;
  v7 = v4;
  BlueprintTableViewDelegate.tableView(_:willDisplayFooterView:forSection:)(v5, v6, v7);
}

void sub_1D7EC1B74(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = OUTLINED_FUNCTION_140_0(a1, a2, a3);
  v6 = v3;
  v8 = v4;
  BlueprintTableViewDelegate.tableView(_:didEndDisplayingFooterView:forSection:)(v8, v6, v7);
}

uint64_t sub_1D7EC1BE0()
{
  OUTLINED_FUNCTION_0_32();

  return swift_deallocObject();
}

uint64_t sub_1D7EC1C1C()
{

  OUTLINED_FUNCTION_0_8();

  return swift_deallocObject();
}

uint64_t sub_1D7EC1C50()
{
  swift_unknownObjectRelease();

  OUTLINED_FUNCTION_0_32();

  return swift_deallocObject();
}

uint64_t sub_1D7EC1C8C()
{
  v1 = sub_1D818E994();
  OUTLINED_FUNCTION_9();
  v3 = v2;
  v4 = (*(v2 + 80) + 24) & ~*(v2 + 80);

  (*(v3 + 8))(v0 + v4, v1);

  return swift_deallocObject();
}

__n128 sub_1D7EC1D50(uint64_t a1, uint64_t a2)
{
  result = *a1;
  v3 = *(a1 + 16);
  v4 = *(a1 + 48);
  *(a2 + 32) = *(a1 + 32);
  *(a2 + 48) = v4;
  *a2 = result;
  *(a2 + 16) = v3;
  return result;
}

uint64_t sub_1D7EC1DA0()
{
  OUTLINED_FUNCTION_124();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  OUTLINED_FUNCTION_107();
  v2 = type metadata accessor for BlueprintItem();
  OUTLINED_FUNCTION_15_15(v2);
  v4 = *(v3 + 80);
  v5 = (v4 + 88) & ~v4;
  type metadata accessor for BlueprintViewAction(0);
  OUTLINED_FUNCTION_108_0();
  v6 = sub_1D818E994();
  OUTLINED_FUNCTION_9();
  v8 = v7;

  OUTLINED_FUNCTION_3_0();
  (*(v9 + 8))(v0 + v5, AssociatedTypeWitness);
  OUTLINED_FUNCTION_11_0();
  swift_getEnumCaseMultiPayload();

  sub_1D7F9E220();
  OUTLINED_FUNCTION_139_0();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
  }

  else if (!EnumCaseMultiPayload)
  {
    v14 = *(v8 + 8);
    v14((v4 + 88) & ~v4, v6);
    sub_1D7F9E3F0();
    v14(v5 + *(v11 + 48), v6);
  }

  OUTLINED_FUNCTION_120_0();
  (*(v8 + 8))(v0 + v12, v6);

  return swift_deallocObject();
}

uint64_t sub_1D7EC2050()
{
  type metadata accessor for BlueprintViewAction(0);
  OUTLINED_FUNCTION_108_0();
  v2 = sub_1D818E994();
  OUTLINED_FUNCTION_9();
  v4 = v3;

  OUTLINED_FUNCTION_11_0();
  swift_getEnumCaseMultiPayload();

  sub_1D7F9E220();
  OUTLINED_FUNCTION_139_0();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
  }

  else if (!EnumCaseMultiPayload)
  {
    v9 = *(v4 + 8);
    v9(v1, v2);
    sub_1D7F9E3F0();
    v9(v1 + *(v6 + 48), v2);
  }

  OUTLINED_FUNCTION_120_0();
  (*(v4 + 8))(v0 + v7, v2);

  return swift_deallocObject();
}

uint64_t sub_1D7EC2234()
{

  return swift_deallocObject();
}

__n128 sub_1D7EC2290(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_1D7EC22E4()
{
  sub_1D7F387B0(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_1D7EC2340()
{
  v1 = sub_1D818E794();
  OUTLINED_FUNCTION_9();
  v3 = v2;
  v4 = (*(v2 + 80) + 32) & ~*(v2 + 80);

  (*(v3 + 8))(v0 + v4, v1);

  return swift_deallocObject();
}

uint64_t sub_1D7EC2488()
{
  MEMORY[0x1DA715E30](v0 + 16);
  OUTLINED_FUNCTION_0_8();

  return swift_deallocObject();
}

uint64_t sub_1D7EC24BC()
{
  OUTLINED_FUNCTION_0_8();

  return swift_deallocObject();
}

uint64_t sub_1D7EC2550()
{
  swift_weakDestroy();
  OUTLINED_FUNCTION_0_8();

  return swift_deallocObject();
}

uint64_t sub_1D7EC2584()
{

  return swift_deallocObject();
}

uint64_t sub_1D7EC25C4(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1D818E754();
    if (*(*(v8 - 8) + 84) == a2)
    {
      v9 = v8;
      v10 = *(a3 + 24);
    }

    else
    {
      sub_1D7E313D0();
      v9 = v11;
      v10 = *(a3 + 28);
    }

    return __swift_getEnumTagSinglePayload(a1 + v10, a2, v9);
  }
}

uint64_t sub_1D7EC2690(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = sub_1D818E754();
    if (*(*(v8 - 8) + 84) == a3)
    {
      v9 = v8;
      v10 = *(a4 + 24);
    }

    else
    {
      sub_1D7E313D0();
      v9 = v11;
      v10 = *(a4 + 28);
    }

    return __swift_storeEnumTagSinglePayload(v5 + v10, a2, a2, v9);
  }

  return result;
}

uint64_t sub_1D7EC282C()
{

  return swift_deallocObject();
}

uint64_t sub_1D7EC2864()
{

  return swift_deallocObject();
}

uint64_t sub_1D7EC28B8()
{
  v1 = *(v0 + 16);
  v2 = *(sub_1D8191E84() - 8);
  v3 = (*(v2 + 80) + 72) & ~*(v2 + 80);

  if (!__swift_getEnumTagSinglePayload(v0 + v3, 1, v1))
  {
    (*(*(v1 - 8) + 8))(v0 + v3, v1);
  }

  return swift_deallocObject();
}

uint64_t sub_1D7EC29B0()
{
  v1 = *(v0 + 16);
  v2 = *(sub_1D8191E84() - 8);
  v3 = (*(v2 + 80) + 72) & ~*(v2 + 80);
  if (*(v0 + 40))
  {
  }

  if (!__swift_getEnumTagSinglePayload(v0 + v3, 1, v1))
  {
    (*(*(v1 - 8) + 8))(v0 + v3, v1);
  }

  return swift_deallocObject();
}

uint64_t sub_1D7EC2AC0()
{
  sub_1D7E57C40(*(v0 + 256), *(v0 + 264), *(v0 + 272));
  sub_1D7E57C40(*(v0 + 280), *(v0 + 288), *(v0 + 296));
  sub_1D7E57C40(*(v0 + 304), *(v0 + 312), *(v0 + 320));
  if (*(v0 + 608))
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 584);
  }

  return swift_deallocObject();
}

uint64_t sub_1D7EC2B44()
{

  return swift_deallocObject();
}

uint64_t sub_1D7EC2B8C()
{
  MEMORY[0x1DA715E30](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1D7EC2BC4()
{

  return swift_deallocObject();
}

uint64_t sub_1D7EC2C14()
{
  (*(*(*(v0 + 16) - 8) + 8))(v0 + ((*(*(*(v0 + 16) - 8) + 80) + 48) & ~*(*(*(v0 + 16) - 8) + 80)));

  return swift_deallocObject();
}

uint64_t sub_1D7EC2C94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1D818E994();
  OUTLINED_FUNCTION_95();
  if (*(v7 + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(a1, a2, v6);
  }

  else
  {
    OUTLINED_FUNCTION_1_61();
    type metadata accessor for Blueprint();
    OUTLINED_FUNCTION_95();
    if (*(v10 + 84) == a2)
    {
      return __swift_getEnumTagSinglePayload(a1 + *(a3 + 84), a2, v9);
    }

    else
    {
      v11 = *(a1 + *(a3 + 88) + 128);
      if (v11 >= 0xFFFFFFFF)
      {
        LODWORD(v11) = -1;
      }

      return (v11 + 1);
    }
  }
}

void sub_1D7EC2DA0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_1D818E994();
  OUTLINED_FUNCTION_95();
  if (*(v9 + 84) == a3)
  {

    __swift_storeEnumTagSinglePayload(a1, a2, a2, v8);
  }

  else
  {
    OUTLINED_FUNCTION_1_61();
    type metadata accessor for Blueprint();
    OUTLINED_FUNCTION_95();
    if (*(v11 + 84) == a3)
    {
      __swift_storeEnumTagSinglePayload(a1 + *(a4 + 84), a2, a2, v10);
    }

    else
    {
      *(a1 + *(a4 + 88) + 128) = (a2 - 1);
    }
  }
}

uint64_t sub_1D7EC2ED0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1D7FB1718();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1D7EC2F2C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1D7FB17E8();
  *a1 = result & 1;
  return result;
}

void *sub_1D7EC2F88@<X0>(void *a1@<X8>)
{
  result = sub_1D7FB1950();
  *a1 = result;
  return result;
}

uint64_t sub_1D7EC2FCC()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1D7EC300C()
{

  return swift_deallocObject();
}

uint64_t sub_1D7EC30D4()
{
  MEMORY[0x1DA715E30](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1D7EC310C()
{

  return swift_deallocObject();
}

uint64_t sub_1D7EC314C()
{
  MEMORY[0x1DA715E30](v0 + 16);
  OUTLINED_FUNCTION_0_8();

  return swift_deallocObject();
}

uint64_t sub_1D7EC3180()
{

  OUTLINED_FUNCTION_1_63();

  return swift_deallocObject();
}

uint64_t sub_1D7EC31B4()
{
  swift_unknownObjectUnownedDestroy();
  OUTLINED_FUNCTION_0_8();

  return swift_deallocObject();
}

uint64_t sub_1D7EC31EC()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1D7EC322C()
{

  return swift_deallocObject();
}

uint64_t sub_1D7EC3264@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1D7FB70D0();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1D7EC332C()
{

  sub_1D7F2FBA8(*(v0 + 24), *(v0 + 32), *(v0 + 40));

  OUTLINED_FUNCTION_8_8();

  return swift_deallocObject();
}

uint64_t sub_1D7EC339C()
{
  swift_unknownObjectUnownedDestroy();
  OUTLINED_FUNCTION_0_8();

  return swift_deallocObject();
}

uint64_t sub_1D7EC33D0()
{

  return swift_deallocObject();
}

uint64_t sub_1D7EC3410()
{
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1D7EC3554()
{
  MEMORY[0x1DA715E30](v0 + 16);
  OUTLINED_FUNCTION_0_8();

  return swift_deallocObject();
}

uint64_t sub_1D7EC3588()
{

  OUTLINED_FUNCTION_21_0();

  return swift_deallocObject();
}

uint64_t sub_1D7EC35CC()
{

  return swift_deallocObject();
}

uint64_t sub_1D7EC3620()
{
  v1 = sub_1D818E994();
  OUTLINED_FUNCTION_9();
  v3 = v2;
  v4 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  v6 = (*(v5 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v3 + 8))(v0 + v4, v1);

  return swift_deallocObject();
}

uint64_t sub_1D7EC370C()
{
  OUTLINED_FUNCTION_0_8();

  return swift_deallocObject();
}

uint64_t sub_1D7EC37A8()
{

  sub_1D7FCB664(*(v0 + 128), *(v0 + 136));

  return swift_deallocObject();
}

uint64_t sub_1D7EC3834()
{

  return swift_deallocObject();
}

uint64_t sub_1D7EC3874()
{

  return swift_deallocObject();
}

uint64_t sub_1D7EC38B4()
{
  if (*(v0 + 32))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1D7EC38FC()
{

  return swift_deallocObject();
}

uint64_t sub_1D7EC394C()
{

  return swift_deallocObject();
}

uint64_t sub_1D7EC398C()
{

  return swift_deallocObject();
}

uint64_t sub_1D7EC39EC()
{

  return swift_deallocObject();
}

uint64_t sub_1D7EC3A34()
{

  return swift_deallocObject();
}

uint64_t sub_1D7EC3AA4()
{
  MEMORY[0x1DA715E30](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1D7EC3ADC()
{

  return swift_deallocObject();
}

uint64_t sub_1D7EC3B24()
{

  return swift_deallocObject();
}

uint64_t sub_1D7EC3B64()
{
  OUTLINED_FUNCTION_30_0();
  result = sub_1D7FCE678();
  *v0 = result;
  return result;
}

__n128 sub_1D7EC3B94(uint64_t a1, uint64_t a2)
{
  result = *a1;
  v3 = *(a1 + 32);
  *(a2 + 16) = *(a1 + 16);
  *(a2 + 32) = v3;
  *a2 = result;
  return result;
}

id sub_1D7EC3BA8()
{
  OUTLINED_FUNCTION_30_0();
  result = sub_1D7FCE7D4();
  *v0 = v2;
  return result;
}

id sub_1D7EC3BFC()
{
  OUTLINED_FUNCTION_30_0();
  result = sub_1D7FCE8AC();
  *v0 = result & 1;
  return result;
}

void *sub_1D7EC3C80()
{
  OUTLINED_FUNCTION_30_0();
  result = sub_1D7FCECE0();
  *v0 = result;
  return result;
}

uint64_t sub_1D7EC3D00()
{
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_41_6();
  swift_getAssociatedConformanceWitness();
  OUTLINED_FUNCTION_39_6();
  v1 = *(type metadata accessor for PageBlueprint() - 8);
  v2 = (*(v1 + 80) + 72) & ~*(v1 + 80);

  sub_1D818F394();
  OUTLINED_FUNCTION_8();
  (*(v3 + 8))(v0 + v2);

  return swift_deallocObject();
}

uint64_t sub_1D7EC3E48()
{

  return swift_deallocObject();
}

uint64_t sub_1D7EC3EB8()
{
  v1 = *(v0 + 16);
  OUTLINED_FUNCTION_2();
  v3 = v2;
  v4 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v6 = *(v5 + 64);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_2();
  v9 = v8;
  v11 = (v4 + v6 + *(v8 + 80)) & ~*(v8 + 80);
  v12 = (*(v10 + 64) + v11 + 7) & 0xFFFFFFFFFFFFFFF8;
  v13 = (v12 + 39) & 0xFFFFFFFFFFFFFFF8;
  (*(v3 + 8))(v0 + v4, v1);
  (*(v9 + 8))(v0 + v11, AssociatedTypeWitness);
  if (*(v0 + v12 + 24))
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v0 + v12);
  }

  if (*(v0 + v13))
  {
  }

  if (*(v0 + ((v13 + 23) & 0xFFFFFFFFFFFFFFF8)))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1D7EC4134()
{
  sub_1D7EF4CE0(*(v0 + 16), *(v0 + 24));

  return swift_deallocObject();
}

uint64_t sub_1D7EC417C()
{

  OUTLINED_FUNCTION_21_0();

  return swift_deallocObject();
}

uint64_t sub_1D7EC41B8()
{
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 16);

  OUTLINED_FUNCTION_15_17();

  return swift_deallocObject();
}

uint64_t sub_1D7EC41F4()
{

  return swift_deallocObject();
}

uint64_t sub_1D7EC422C()
{

  return swift_deallocObject();
}

uint64_t sub_1D7EC4268()
{

  sub_1D7EF4CE0(*(v0 + 24), *(v0 + 32));

  OUTLINED_FUNCTION_15_17();

  return swift_deallocObject();
}

uint64_t sub_1D7EC42B4()
{

  return swift_deallocObject();
}

uint64_t sub_1D7EC42FC()
{

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1D7EC4360()
{

  return swift_deallocObject();
}

uint64_t sub_1D7EC43A0()
{

  return swift_deallocObject();
}

id sub_1D7EC43E4@<X0>(void *a1@<X8>)
{
  result = sub_1D7FDFCE4();
  *a1 = result;
  return result;
}

__n128 sub_1D7EC4420(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_1D7EC442C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_0_98();
  v6 = type metadata accessor for BlueprintModifierResult();
  if (*(*(v6 - 8) + 84) == a2)
  {
    return __swift_getEnumTagSinglePayload(a1, a2, v6);
  }

  v8 = *(a1 + *(a3 + 52));
  if (v8 >= 0xFFFFFFFF)
  {
    LODWORD(v8) = -1;
  }

  return (v8 + 1);
}

uint64_t sub_1D7EC44D0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  OUTLINED_FUNCTION_0_98();
  result = type metadata accessor for BlueprintModifierResult();
  if (*(*(result - 8) + 84) == a3)
  {
    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  *(a1 + *(a4 + 52)) = (a2 - 1);
  return result;
}

uint64_t sub_1D7EC4570()
{
  MEMORY[0x1DA715E30](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1D7EC45A8()
{

  return swift_deallocObject();
}

__n128 sub_1D7EC4604(uint64_t a1, uint64_t a2)
{
  result = *a1;
  v3 = *(a1 + 16);
  v4 = *(a1 + 48);
  *(a2 + 32) = *(a1 + 32);
  *(a2 + 48) = v4;
  *a2 = result;
  *(a2 + 16) = v3;
  return result;
}

uint64_t sub_1D7EC4618()
{
  MEMORY[0x1DA715E30](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1D7EC4650()
{

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 72);

  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1D7EC46B8()
{

  OUTLINED_FUNCTION_0_32();

  return swift_deallocObject();
}

uint64_t sub_1D7EC46F4()
{

  OUTLINED_FUNCTION_1_63();

  return swift_deallocObject();
}

uint64_t sub_1D7EC4730()
{

  return swift_deallocObject();
}

uint64_t sub_1D7EC4768()
{

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 40);

  return swift_deallocObject();
}

uint64_t sub_1D7EC47B8()
{

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 48);

  return swift_deallocObject();
}

uint64_t sub_1D7EC4808()
{

  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1D7EC48D0()
{

  return swift_deallocObject();
}

uint64_t sub_1D7EC4908(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1D818F654();
    v9 = a1 + *(a3 + 20);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

void *sub_1D7EC4990(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_1D818F654();
    v8 = v5 + *(a4 + 20);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1D7EC4A78()
{

  return swift_deallocObject();
}

uint64_t sub_1D7EC4AB8()
{

  return swift_deallocObject();
}

id sub_1D7EC4AF8@<X0>(_BYTE *a1@<X8>)
{
  result = ImplicitAnimationGroup.isReversed.getter();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1D7EC4B50@<X0>(void *a1@<X8>)
{
  result = ImplicitAnimationGroup.fractionComplete.getter();
  *a1 = v3;
  return result;
}

uint64_t sub_1D7EC4BA4()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_1D7EC4BE4()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1D7EC4C1C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1D7FED540();
  *a1 = result;
  return result;
}

__n128 sub_1D7EC4C58(__n128 *a1, __n128 *a2)
{
  result = *a1;
  a2[1].n128_u64[0] = a1[1].n128_u64[0];
  *a2 = result;
  return result;
}

uint64_t sub_1D7EC4C6C()
{
  OUTLINED_FUNCTION_3_0();
  (*(v1 + 8))(v0 + ((*(v1 + 80) + 40) & ~*(v1 + 80)));

  return swift_deallocObject();
}

uint64_t sub_1D7EC4D08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_3_66();
  type metadata accessor for Blueprint();
  OUTLINED_FUNCTION_95();
  if (*(v7 + 84) == v3)
  {
    v8 = v6;
    v9 = v4;
    return __swift_getEnumTagSinglePayload(v9, v3, v8);
  }

  type metadata accessor for BlueprintItem();
  OUTLINED_FUNCTION_95();
  if (*(v11 + 84) == v3)
  {
    v8 = v10;
    v12 = *(a3 + 52);
LABEL_7:
    v9 = v4 + v12;
    return __swift_getEnumTagSinglePayload(v9, v3, v8);
  }

  sub_1D818E754();
  OUTLINED_FUNCTION_95();
  if (*(v14 + 84) == v3)
  {
    v8 = v13;
    v12 = *(a3 + 56);
    goto LABEL_7;
  }

  return OUTLINED_FUNCTION_2_73();
}

void sub_1D7EC4E34(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_3_66();
  type metadata accessor for Blueprint();
  OUTLINED_FUNCTION_95();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = v5;
LABEL_8:
    __swift_storeEnumTagSinglePayload(v11, v4, v4, v10);
    return;
  }

  type metadata accessor for BlueprintItem();
  OUTLINED_FUNCTION_95();
  if (*(v13 + 84) == a3)
  {
    v10 = v12;
    v14 = *(a4 + 52);
LABEL_7:
    v11 = v5 + v14;
    goto LABEL_8;
  }

  sub_1D818E754();
  OUTLINED_FUNCTION_95();
  if (*(v16 + 84) == a3)
  {
    v10 = v15;
    v14 = *(a4 + 56);
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_6_44();
}

uint64_t sub_1D7EC4F70(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_0_98();
  type metadata accessor for Blueprint();
  OUTLINED_FUNCTION_95();
  if (*(v7 + 84) == v3)
  {
    v8 = v6;
    v9 = v4;
    return __swift_getEnumTagSinglePayload(v9, v3, v8);
  }

  OUTLINED_FUNCTION_0_98();
  type metadata accessor for BlueprintSection();
  OUTLINED_FUNCTION_95();
  if (*(v11 + 84) == v3)
  {
    v8 = v10;
    v12 = *(a3 + 52);
LABEL_7:
    v9 = v4 + v12;
    return __swift_getEnumTagSinglePayload(v9, v3, v8);
  }

  sub_1D818E754();
  OUTLINED_FUNCTION_95();
  if (*(v14 + 84) == v3)
  {
    v8 = v13;
    v12 = *(a3 + 56);
    goto LABEL_7;
  }

  return OUTLINED_FUNCTION_2_73();
}

void sub_1D7EC509C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_0_98();
  type metadata accessor for Blueprint();
  OUTLINED_FUNCTION_95();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = v5;
LABEL_8:
    __swift_storeEnumTagSinglePayload(v11, v4, v4, v10);
    return;
  }

  OUTLINED_FUNCTION_0_98();
  type metadata accessor for BlueprintSection();
  OUTLINED_FUNCTION_95();
  if (*(v13 + 84) == a3)
  {
    v10 = v12;
    v14 = *(a4 + 52);
LABEL_7:
    v11 = v5 + v14;
    goto LABEL_8;
  }

  sub_1D818E754();
  OUTLINED_FUNCTION_95();
  if (*(v16 + 84) == a3)
  {
    v10 = v15;
    v14 = *(a4 + 56);
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_6_44();
}

uint64_t sub_1D7EC51D0()
{

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1D7EC5210()
{
  OUTLINED_FUNCTION_0_32();

  return swift_deallocObject();
}

uint64_t sub_1D7EC524C()
{
  if (*(v0 + 16))
  {
  }

  OUTLINED_FUNCTION_0_32();

  return swift_deallocObject();
}

id sub_1D7EC5288@<X0>(void *a1@<X8>)
{
  result = sub_1D7FF16E4();
  *a1 = result;
  return result;
}

uint64_t sub_1D7EC52B8()
{

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1D7EC5300()
{
  sub_1D7FF3308();
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_1D7EC53C4()
{

  return swift_deallocObject();
}

uint64_t sub_1D7EC53FC()
{
  MEMORY[0x1DA715E30](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1D7EC5434()
{

  return swift_deallocObject();
}

uint64_t sub_1D7EC547C@<X0>(uint64_t *a1@<X8>)
{
  result = LazyViewController.loadedViewController.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1D7EC5500()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1D7EC5624()
{

  return swift_deallocObject();
}

uint64_t sub_1D7EC5664()
{

  OUTLINED_FUNCTION_0_8();

  return swift_deallocObject();
}

uint64_t sub_1D7EC5698()
{
  OUTLINED_FUNCTION_0_8();

  return swift_deallocObject();
}

uint64_t sub_1D7EC56CC()
{

  OUTLINED_FUNCTION_1_63();

  return swift_deallocObject();
}

__n128 sub_1D7EC571C(uint64_t a1, uint64_t a2)
{
  result = *a1;
  v3 = *(a1 + 16);
  v4 = *(a1 + 32);
  *(a2 + 48) = *(a1 + 48);
  *(a2 + 16) = v3;
  *(a2 + 32) = v4;
  *a2 = result;
  return result;
}

uint64_t sub_1D7EC5774()
{

  OUTLINED_FUNCTION_115_1();

  return swift_deallocObject();
}

uint64_t sub_1D7EC57C8()
{

  return swift_deallocObject();
}

uint64_t sub_1D7EC5824()
{

  return swift_deallocObject();
}

__n128 sub_1D7EC5868(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

__n128 sub_1D7EC59DC(uint64_t a1, uint64_t a2)
{
  result = *a1;
  v3 = *(a1 + 32);
  *(a2 + 16) = *(a1 + 16);
  *(a2 + 32) = v3;
  *a2 = result;
  return result;
}

uint64_t sub_1D7EC59F4()
{
  MEMORY[0x1DA715E30](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1D7EC5A2C()
{
  OUTLINED_FUNCTION_23_11();
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_23_11();
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_68();
  swift_getAssociatedConformanceWitness();
  OUTLINED_FUNCTION_68();
  swift_getAssociatedConformanceWitness();
  v1 = type metadata accessor for Blueprint();
  v8 = *(*(v1 - 8) + 80);

  v2 = v0 + ((v8 + 72) & ~v8);

  if (*(v2 + 40))
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v2 + 16);
  }

  v3 = *(v1 + 56);
  type metadata accessor for BlueprintSection();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_1D818F394();
  OUTLINED_FUNCTION_8();
  (*(v4 + 8))(v2 + v3);
  v5 = *(v1 + 60);
  OUTLINED_FUNCTION_13_20();
  type metadata accessor for BlueprintItem();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_20_10();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_20_10();
  swift_getWitnessTable();
  sub_1D818F784();
  OUTLINED_FUNCTION_8();
  (*(v6 + 8))(v2 + v5);

  return swift_deallocObject();
}

uint64_t sub_1D7EC5CF0()
{
  swift_unownedRelease();
  OUTLINED_FUNCTION_8_8();

  return swift_deallocObject();
}

__n128 sub_1D7EC5D30(uint64_t a1, _OWORD *a2)
{
  result = *a1;
  v3 = *(a1 + 16);
  *a2 = *a1;
  a2[1] = v3;
  return result;
}

uint64_t sub_1D7EC5D9C()
{
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 16);
  sub_1D8019CE4(*(v0 + 56), *(v0 + 64), *(v0 + 72), *(v0 + 80), *(v0 + 88), *(v0 + 96));

  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 168);

  return swift_deallocObject();
}

uint64_t sub_1D7EC5E5C()
{
  MEMORY[0x1DA715E30](v0 + 16);

  return swift_deallocObject();
}

uint64_t _s5TeaUI12RotationRateVwet_0(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 24))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t _s5TeaUI12RotationRateVwst_0(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
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

  *(result + 24) = v3;
  return result;
}

uint64_t sub_1D7EC5F20@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1D801C60C();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1D7EC5F88()
{
  type metadata accessor for BlueprintBookmark();
  OUTLINED_FUNCTION_20_19();
  v2 = (*(v1 + 80) + 48) & ~*(v1 + 80);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 0u:
      v3 = sub_1D818E994();
      v4 = OUTLINED_FUNCTION_0_110();
      if (!__swift_getEnumTagSinglePayload(v4, v5, v3))
      {
        OUTLINED_FUNCTION_3_0();
        v6 = OUTLINED_FUNCTION_31();
        goto LABEL_6;
      }

      break;
    case 1u:
      sub_1D818E994();
      OUTLINED_FUNCTION_4_3();
      v7 = *(v8 + 8);
      v6 = v0 + v2;
LABEL_6:
      v7(v6);
      break;
    case 2u:
    case 3u:
    case 4u:

      break;
    default:
      break;
  }

  return swift_deallocObject();
}

__n128 sub_1D7EC6100(uint64_t a1, _OWORD *a2)
{
  result = *a1;
  v3 = *(a1 + 16);
  *a2 = *a1;
  a2[1] = v3;
  return result;
}

uint64_t sub_1D7EC610C()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1D7EC6164()
{

  return swift_deallocObject();
}

uint64_t sub_1D7EC61B8()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1D7EC61F8()
{
  switch(*(v0 + 89))
  {
    case 0:

      break;
    case 1:
    case 3:
      v1 = v0 + 16;
LABEL_3:
      __swift_destroy_boxed_opaque_existential_1Tm(v1);
      break;
    case 2:
      switch(*(v0 + 88))
      {
        case 0:

          goto LABEL_10;
        case 1:

          sub_1D7F0C9E0(*(v0 + 48), *(v0 + 56));
          goto LABEL_10;
        case 2:

          sub_1D7F0C9E0(*(v0 + 64), *(v0 + 72));
LABEL_10:

          break;
        case 3:

          v1 = v0 + 32;
          goto LABEL_3;
        default:
          goto LABEL_11;
      }

      break;
    default:
      break;
  }

LABEL_11:

  return swift_deallocObject();
}

id sub_1D7EC6338@<X0>(void *a1@<X8>)
{
  result = sub_1D80268C0();
  *a1 = v3;
  return result;
}

uint64_t sub_1D7EC6438@<X0>(_BYTE *a1@<X8>)
{
  result = CoverViewManager.isCovering.getter();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1D7EC64C4()
{

  return swift_deallocObject();
}

uint64_t sub_1D7EC6550()
{

  return swift_deallocObject();
}

uint64_t sub_1D7EC6588()
{
  v1 = *(v0 + 16);
  v2 = sub_1D8191E84();
  OUTLINED_FUNCTION_15_15(v2);
  v4 = (*(v3 + 80) + 48) & ~*(v3 + 80);

  if (!__swift_getEnumTagSinglePayload(v0 + v4, 1, v1))
  {
    (*(*(v1 - 8) + 8))(v0 + v4, v1);
  }

  return swift_deallocObject();
}

uint64_t sub_1D7EC6690()
{

  return swift_deallocObject();
}

uint64_t sub_1D7EC6768()
{

  return swift_deallocObject();
}

uint64_t sub_1D7EC67B0()
{

  return swift_deallocObject();
}

uint64_t sub_1D7EC67E8()
{
  if (*(v0 + 24))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1D7EC6830()
{
  MEMORY[0x1DA715E30](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1D7EC6868()
{

  return swift_deallocObject();
}

uint64_t sub_1D7EC68D8()
{

  return swift_deallocObject();
}

uint64_t sub_1D7EC69B0()
{

  return swift_deallocObject();
}

uint64_t sub_1D7EC69F8()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_1D7EC6B20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    return OUTLINED_FUNCTION_5_47(*(a1 + 8));
  }

  v7 = sub_1D818E754();
  v8 = a1 + *(a3 + 20);

  return __swift_getEnumTagSinglePayload(v8, a2, v7);
}

uint64_t sub_1D7EC6B9C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_1D818E754();
    v8 = v5 + *(a4 + 20);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1D7EC6C1C()
{
  v1 = *(v0 + 16);
  v2 = *(v1 - 8);
  v3 = *(v2 + 8);
  v4 = *(v2 + 80);
  v5 = (v4 + 24) & ~v4;
  v6 = (*(v2 + 64) + v4 + v5) & ~v4;
  v3(v0 + v5, v1);
  v3(v0 + v6, v1);

  return swift_deallocObject();
}

uint64_t sub_1D7EC6CD0()
{

  return swift_deallocObject();
}

uint64_t sub_1D7EC6D08()
{
  (*(*(*(v0 + 16) - 8) + 8))(v0 + ((*(*(*(v0 + 16) - 8) + 80) + 24) & ~*(*(*(v0 + 16) - 8) + 80)));

  return swift_deallocObject();
}

uint64_t sub_1D7EC6DC0()
{

  return swift_deallocObject();
}

uint64_t sub_1D7EC6E64()
{
  MEMORY[0x1DA715E30](v0 + 16);
  OUTLINED_FUNCTION_0_8();

  return swift_deallocObject();
}

uint64_t sub_1D7EC6E98@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1D8038394();
  *a1 = result;
  a1[1] = v3;
  return result;
}

void *sub_1D7EC6EC8@<X0>(void *a1@<X8>)
{
  result = sub_1D8038500();
  *a1 = result;
  return result;
}

uint64_t sub_1D7EC6EF8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1D803861C();
  *a1 = result;
  return result;
}

uint64_t sub_1D7EC6F2C()
{

  return swift_deallocObject();
}

uint64_t sub_1D7EC6F6C()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1D7EC6FB4()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

void sub_1D7EC7004(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = -2;
}

uint64_t sub_1D7EC7014()
{

  return swift_deallocObject();
}

uint64_t sub_1D7EC7054@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1D7E2E834();
  *a1 = result;
  return result;
}

__n128 sub_1D7EC7088(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_1D7EC70C0@<X0>(uint64_t a1@<X8>)
{
  result = sub_1D7E6E97C();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_1D7EC70FC()
{
  _Block_release(*(v0 + 16));
  OUTLINED_FUNCTION_19();

  return swift_deallocObject();
}

uint64_t sub_1D7EC713C()
{
  OUTLINED_FUNCTION_19();

  return swift_deallocObject();
}

uint64_t sub_1D7EC716C()
{
  if (*(v0 + 16))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1D7EC71B0()
{

  OUTLINED_FUNCTION_0_127();

  return swift_deallocObject();
}

uint64_t sub_1D7EC7218()
{

  return swift_deallocObject();
}

uint64_t sub_1D7EC7250()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

id sub_1D7EC7334@<X0>(void *a1@<X8>)
{
  result = CollapsingButton.menu.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1D7EC73B4()
{
  MEMORY[0x1DA715E30](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1D7EC73EC()
{
  swift_unknownObjectUnownedDestroy();

  return swift_deallocObject();
}

uint64_t sub_1D7EC7424()
{

  return swift_deallocObject();
}

uint64_t sub_1D7EC745C()
{

  return swift_deallocObject();
}

uint64_t sub_1D7EC74C8()
{

  return swift_deallocObject();
}

uint64_t sub_1D7EC771C()
{

  return swift_deallocObject();
}

uint64_t sub_1D7EC776C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for JSONSchema(0);
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = a1;
LABEL_8:

    return __swift_getEnumTagSinglePayload(v8, a2, v7);
  }

  if (a2 != 0x7FFFFFFF)
  {
    OUTLINED_FUNCTION_0_150();
    sub_1D7E1898C(0, v11, v12, MEMORY[0x1E697DCC0]);
    v7 = v13;
    v8 = a1 + *(a3 + 44);
    goto LABEL_8;
  }

  v9 = *(a1 + *(a3 + 40) + 8);
  if (v9 >= 0xFFFFFFFF)
  {
    LODWORD(v9) = -1;
  }

  return (v9 + 1);
}

uint64_t sub_1D7EC7860(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for JSONSchema(0);
  if (*(*(result - 8) + 84) == a3)
  {
    v9 = result;
    v10 = a1;
  }

  else
  {
    if (a3 == 0x7FFFFFFF)
    {
      *(a1 + *(a4 + 40) + 8) = (a2 - 1);
      return result;
    }

    OUTLINED_FUNCTION_0_150();
    sub_1D7E1898C(0, v11, v12, MEMORY[0x1E697DCC0]);
    v9 = v13;
    v10 = a1 + *(a4 + 44);
  }

  return __swift_storeEnumTagSinglePayload(v10, a2, a2, v9);
}

uint64_t sub_1D7EC7978()
{
  sub_1D8056E68();
  sub_1D80573A4(255);
  sub_1D8056C60();
  sub_1D8057064(255);
  sub_1D8056108();
  sub_1D8056DD8();
  sub_1D8055844();
  sub_1D805620C();
  OUTLINED_FUNCTION_14_27();
  sub_1D8055F70(v0, v1);
  OUTLINED_FUNCTION_13_29();
  sub_1D8055F70(v2, v3);
  swift_getOpaqueTypeConformance2();
  OUTLINED_FUNCTION_15_27();
  sub_1D8055F70(v4, v5);
  swift_getOpaqueTypeConformance2();
  OUTLINED_FUNCTION_18_23();
  sub_1D8057164(v6, v7, sub_1D80571D4);
  swift_getOpaqueTypeConformance2();
  OUTLINED_FUNCTION_16_26();
  sub_1D8055F70(v8, v9);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1D7EC7B7C()
{
  type metadata accessor for JSONSchemaView();
  OUTLINED_FUNCTION_4_20();
  v4 = (*(v3 + 80) + 41) & ~*(v3 + 80);
  sub_1D8057284(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40));

  OUTLINED_FUNCTION_42_10();
  type metadata accessor for JSONSchema(0);
  OUTLINED_FUNCTION_29_13();
  OUTLINED_FUNCTION_4_3();
  (*(v5 + 8))(v0 + v4 + v2);
  OUTLINED_FUNCTION_41_9();
  OUTLINED_FUNCTION_4_3();
  (*(v6 + 8))(v0 + v4 + v2);
  OUTLINED_FUNCTION_40_9();
  OUTLINED_FUNCTION_4_3();
  (*(v7 + 8))(v0 + v4 + v1);
  OUTLINED_FUNCTION_24_15();
  OUTLINED_FUNCTION_24_15();
  OUTLINED_FUNCTION_24_15();
  OUTLINED_FUNCTION_24_15();
  OUTLINED_FUNCTION_28_14();

  OUTLINED_FUNCTION_36_9();
  OUTLINED_FUNCTION_0_150();
  sub_1D7E1898C(0, v8, v9, MEMORY[0x1E697DCB8]);
  OUTLINED_FUNCTION_17_7();
  swift_getEnumCaseMultiPayload();
  OUTLINED_FUNCTION_39_11();
  if (v2 == 1)
  {

    OUTLINED_FUNCTION_27_17();
    OUTLINED_FUNCTION_4_3();
    (*(v10 + 8))(v1 + v2);
  }

  OUTLINED_FUNCTION_19_21();

  OUTLINED_FUNCTION_9_28();
  if (!v12)
  {
    OUTLINED_FUNCTION_26_14(v11);
  }

  OUTLINED_FUNCTION_21_21();
  if (v13)
  {
  }

  OUTLINED_FUNCTION_35_12();

  return swift_deallocObject();
}

uint64_t sub_1D7EC7DAC()
{
  type metadata accessor for JSONSchemaView();
  OUTLINED_FUNCTION_4_20();
  v4 = v0 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  OUTLINED_FUNCTION_42_10();
  type metadata accessor for JSONSchema(0);
  OUTLINED_FUNCTION_29_13();
  OUTLINED_FUNCTION_4_3();
  (*(v5 + 8))(v4 + v2);
  OUTLINED_FUNCTION_41_9();
  OUTLINED_FUNCTION_4_3();
  (*(v6 + 8))(v4 + v2);
  OUTLINED_FUNCTION_40_9();
  OUTLINED_FUNCTION_4_3();
  (*(v7 + 8))(v4 + v1);
  OUTLINED_FUNCTION_24_15();
  OUTLINED_FUNCTION_24_15();
  OUTLINED_FUNCTION_24_15();
  OUTLINED_FUNCTION_24_15();
  OUTLINED_FUNCTION_28_14();

  OUTLINED_FUNCTION_36_9();
  OUTLINED_FUNCTION_0_150();
  sub_1D7E1898C(0, v8, v9, MEMORY[0x1E697DCB8]);
  OUTLINED_FUNCTION_17_7();
  swift_getEnumCaseMultiPayload();
  OUTLINED_FUNCTION_39_11();
  if (v2 == 1)
  {

    OUTLINED_FUNCTION_27_17();
    OUTLINED_FUNCTION_4_3();
    (*(v10 + 8))(v1 + v2);
  }

  OUTLINED_FUNCTION_19_21();

  OUTLINED_FUNCTION_9_28();
  if (!v12)
  {
    OUTLINED_FUNCTION_26_14(v11);
  }

  OUTLINED_FUNCTION_21_21();
  if (v13)
  {
  }

  OUTLINED_FUNCTION_35_12();

  return swift_deallocObject();
}

uint64_t sub_1D7EC7FD0()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1D7EC80BC()
{

  return swift_deallocObject();
}

uint64_t sub_1D7EC80F4()
{
  MEMORY[0x1DA715E30](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1D7EC812C()
{

  return swift_deallocObject();
}

uint64_t sub_1D7EC8164()
{

  return swift_deallocObject();
}

__n128 sub_1D7EC81C0(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

id sub_1D7EC81D8@<X0>(void *a1@<X8>)
{
  result = MastheadViewController.displayOptions.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1D7EC820C()
{

  return swift_deallocObject();
}

uint64_t sub_1D7EC8254()
{
  swift_unownedRelease();
  OUTLINED_FUNCTION_0_8();

  return swift_deallocObject();
}

uint64_t sub_1D7EC82AC()
{
  v1 = *(v0 + 16);
  v2 = (type metadata accessor for Route() - 8);
  v3 = (*(*v2 + 80) + 32) & ~*(*v2 + 80);
  (*(*(v1 - 8) + 8))(v0 + v3, v1);

  v4 = v0 + v3 + v2[13];
  if (*(v4 + 24))
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v4);
  }

  return swift_deallocObject();
}

uint64_t sub_1D7EC83F0()
{

  OUTLINED_FUNCTION_0_32();

  return swift_deallocObject();
}

uint64_t sub_1D7EC8430()
{
  swift_weakDestroy();
  OUTLINED_FUNCTION_0_8();

  return swift_deallocObject();
}

uint64_t sub_1D7EC8464()
{
  MEMORY[0x1DA715E30](v0 + 16);
  OUTLINED_FUNCTION_0_8();

  return swift_deallocObject();
}

uint64_t sub_1D7EC8498()
{

  sub_1D7E57C40(*(v0 + 272), *(v0 + 280), *(v0 + 288));
  sub_1D7E57C40(*(v0 + 296), *(v0 + 304), *(v0 + 312));
  sub_1D7E57C40(*(v0 + 320), *(v0 + 328), *(v0 + 336));

  return swift_deallocObject();
}

uint64_t sub_1D7EC8524()
{

  sub_1D7E57C40(*(v0 + 312), *(v0 + 320), *(v0 + 328));
  sub_1D7E57C40(*(v0 + 336), *(v0 + 344), *(v0 + 352));
  sub_1D7E57C40(*(v0 + 360), *(v0 + 368), *(v0 + 376));

  sub_1D7E57C40(*(v0 + 880), *(v0 + 888), *(v0 + 896));
  sub_1D7E57C40(*(v0 + 904), *(v0 + 912), *(v0 + 920));
  sub_1D7E57C40(*(v0 + 928), *(v0 + 936), *(v0 + 944));

  sub_1D7E57C40(*(v0 + 1568), *(v0 + 1576), *(v0 + 1584));
  sub_1D7E57C40(*(v0 + 1592), *(v0 + 1600), *(v0 + 1608));
  sub_1D7E57C40(*(v0 + 1616), *(v0 + 1624), *(v0 + 1632));

  sub_1D7E57C40(*(v0 + 2136), *(v0 + 2144), *(v0 + 2152));
  sub_1D7E57C40(*(v0 + 2160), *(v0 + 2168), *(v0 + 2176));
  sub_1D7E57C40(*(v0 + 2184), *(v0 + 2192), *(v0 + 2200));

  return swift_deallocObject();
}

uint64_t sub_1D7EC8788()
{

  return swift_deallocObject();
}

uint64_t sub_1D7EC87FC()
{

  OUTLINED_FUNCTION_0_32();

  return swift_deallocObject();
}

uint64_t sub_1D7EC8860@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1D806A644();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1D7EC8890@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1D806A748();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1D7EC8908()
{
  MEMORY[0x1DA715E30](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1D7EC8940()
{
  v1 = sub_1D818E994();
  OUTLINED_FUNCTION_9();
  v3 = v2;
  v4 = (*(v2 + 80) + 24) & ~*(v2 + 80);

  (*(v3 + 8))(v0 + v4, v1);

  return swift_deallocObject();
}

uint64_t sub_1D7EC8B00()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1D7EC8B38()
{

  return swift_deallocObject();
}

uint64_t sub_1D7EC8C10()
{
  if (*(v0 + 48))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1D7EC8C90()
{

  return swift_deallocObject();
}

uint64_t sub_1D7EC8CE0()
{

  return swift_deallocObject();
}

id sub_1D7EC8D1C()
{
  OUTLINED_FUNCTION_30_0();
  result = LabelBarButtonItem.attributedText.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1D7EC8D48()
{
  OUTLINED_FUNCTION_30_0();
  result = LabelBarButtonItem.text.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

id sub_1D7EC8D74()
{
  OUTLINED_FUNCTION_30_0();
  result = LabelBarButtonItem.font.getter();
  *v0 = result;
  return result;
}

id sub_1D7EC8DA0()
{
  OUTLINED_FUNCTION_30_0();
  result = LabelBarButtonItem.textColor.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1D7EC8E04(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_76_0();
  v6 = sub_1D818E8B4();
  if (*(*(v6 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(v3, a2, v6);
  }

  else
  {
    v8 = *(v3 + *(a3 + 32));
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    return (v8 + 1);
  }
}

uint64_t sub_1D7EC8EAC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1D818E8B4();
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 32)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1D7EC8F54()
{

  OUTLINED_FUNCTION_1_63();

  return swift_deallocObject();
}

void sub_1D7EC8F88()
{
  OUTLINED_FUNCTION_120();
  OUTLINED_FUNCTION_12_35(*(v0 + 40), *(v0 + 16));
  v1 = type metadata accessor for BlueprintPipelineUpdate();
  OUTLINED_FUNCTION_20_19();
  v3 = (*(v2 + 80) + 72) & ~*(v2 + 80);
  v5 = *(v4 + 64) + v3;

  v6 = v0 + v3;
  OUTLINED_FUNCTION_7_51();
  type metadata accessor for BlueprintPipelineUpdate.Action();
  v44 = v0 + v3;
  v45 = v1;
  switch(swift_getEnumCaseMultiPayload())
  {
    case 0u:
      if (*(v6 + 40))
      {
        v7 = v6 + 16;
        goto LABEL_8;
      }

      break;
    case 1u:
    case 3u:
      OUTLINED_FUNCTION_71_2();
      break;
    case 2u:
      OUTLINED_FUNCTION_71_2();
      if (*(v6 + 88))
      {
        v7 = v6 + 64;
        goto LABEL_8;
      }

      break;
    case 4u:
      v7 = v0 + v3;
LABEL_8:
      __swift_destroy_boxed_opaque_existential_1Tm(v7);
      break;
    case 5u:
      v8 = v0;

      if (*(v6 + 40))
      {
        __swift_destroy_boxed_opaque_existential_1Tm(v6 + 16);
      }

      OUTLINED_FUNCTION_7_51();
      v13 = *(type metadata accessor for Blueprint() + 56);
      OUTLINED_FUNCTION_10_44();
      type metadata accessor for BlueprintSection();
      OUTLINED_FUNCTION_4_2();
      swift_getWitnessTable();
      OUTLINED_FUNCTION_3_11();
      swift_getWitnessTable();
      OUTLINED_FUNCTION_13_33();
      OUTLINED_FUNCTION_4_3();
      (*(v14 + 8))(v6 + v13);
      OUTLINED_FUNCTION_60_7();
      OUTLINED_FUNCTION_7_5();
      swift_getWitnessTable();
      OUTLINED_FUNCTION_0_44();
      swift_getWitnessTable();
      OUTLINED_FUNCTION_1_1();
      swift_getWitnessTable();
      OUTLINED_FUNCTION_23_16();
      v6 = v44;
      OUTLINED_FUNCTION_123_0();
      sub_1D818F784();
      OUTLINED_FUNCTION_4_3();
      (*(v15 + 8))(v44 + v13);
      v16 = OUTLINED_FUNCTION_76_6();
      MEMORY[0x1EEE9AC00](v16);
      OUTLINED_FUNCTION_50_6();
      OUTLINED_FUNCTION_5_52(v17);
      v46 = sub_1D7E0631C(255, &qword_1EDBBA670);
      OUTLINED_FUNCTION_8_40(v46, qword_1EDBB68A8);
      v19 = OUTLINED_FUNCTION_15_31(v18, MEMORY[0x1E69E6370]);
      __swift_destroy_boxed_opaque_existential_1Tm(v44 + *(v19 + 48));
      goto LABEL_15;
    case 6u:
      v8 = v0;

      if (*(v6 + 40))
      {
        __swift_destroy_boxed_opaque_existential_1Tm(v6 + 16);
      }

      OUTLINED_FUNCTION_7_51();
      v20 = *(type metadata accessor for Blueprint() + 56);
      OUTLINED_FUNCTION_10_44();
      type metadata accessor for BlueprintSection();
      OUTLINED_FUNCTION_4_2();
      swift_getWitnessTable();
      OUTLINED_FUNCTION_3_11();
      swift_getWitnessTable();
      OUTLINED_FUNCTION_13_33();
      OUTLINED_FUNCTION_4_3();
      (*(v21 + 8))(v6 + v20);
      OUTLINED_FUNCTION_60_7();
      OUTLINED_FUNCTION_7_5();
      swift_getWitnessTable();
      OUTLINED_FUNCTION_0_44();
      swift_getWitnessTable();
      OUTLINED_FUNCTION_1_1();
      swift_getWitnessTable();
      OUTLINED_FUNCTION_70_6();
      v6 = v44;
      OUTLINED_FUNCTION_18_26(v22);
      OUTLINED_FUNCTION_4_3();
      (*(v23 + 8))(v44 + v20);
      OUTLINED_FUNCTION_76_6();
      sub_1D7E0631C(255, &qword_1EDBBA670);
      v24 = OUTLINED_FUNCTION_41_10();
      __swift_destroy_boxed_opaque_existential_1Tm(v44 + *(v24 + 48));
      goto LABEL_19;
    case 7u:
      v8 = v0;

      if (*(v6 + 40))
      {
        __swift_destroy_boxed_opaque_existential_1Tm(v6 + 16);
      }

      OUTLINED_FUNCTION_7_51();
      v9 = *(type metadata accessor for Blueprint() + 56);
      OUTLINED_FUNCTION_10_44();
      type metadata accessor for BlueprintSection();
      OUTLINED_FUNCTION_4_2();
      swift_getWitnessTable();
      OUTLINED_FUNCTION_3_11();
      swift_getWitnessTable();
      OUTLINED_FUNCTION_13_33();
      OUTLINED_FUNCTION_4_3();
      (*(v10 + 8))(v6 + v9);
      OUTLINED_FUNCTION_60_7();
      OUTLINED_FUNCTION_7_5();
      swift_getWitnessTable();
      OUTLINED_FUNCTION_0_44();
      swift_getWitnessTable();
      OUTLINED_FUNCTION_1_1();
      swift_getWitnessTable();
      OUTLINED_FUNCTION_70_6();
      v6 = v44;
      OUTLINED_FUNCTION_18_26(v11);
      OUTLINED_FUNCTION_4_3();
      (*(v12 + 8))(v44 + v9);
LABEL_15:

LABEL_19:
      v0 = v8;
      v1 = v45;
      break;
    default:
      break;
  }

  v25 = v5 + 7;
  OUTLINED_FUNCTION_78_4();
  OUTLINED_FUNCTION_78_4();
  v26 = v6 + *(v1 + 60);
  type metadata accessor for BlueprintBookmark();
  switch(OUTLINED_FUNCTION_53_5())
  {
    case 0u:
      v27 = sub_1D818E994();
      if (!OUTLINED_FUNCTION_24_18(v27))
      {
        OUTLINED_FUNCTION_3_0();
        v28 = OUTLINED_FUNCTION_55_0();
        goto LABEL_25;
      }

      break;
    case 1u:
      sub_1D818E994();
      OUTLINED_FUNCTION_4_3();
      v29 = *(v30 + 8);
      v28 = v26;
LABEL_25:
      v29(v28);
      break;
    case 2u:
    case 3u:
    case 4u:

      break;
    default:
      break;
  }

  v31 = v25 & 0xFFFFFFFFFFFFFFF8;
  v32 = v6 + *(v1 + 64);

  if (*(v32 + 40))
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v32 + 16);
  }

  v42 = v31 + 39;
  v43 = v31;
  OUTLINED_FUNCTION_123_0();
  v33 = type metadata accessor for Blueprint();
  OUTLINED_FUNCTION_10_44();
  type metadata accessor for BlueprintSection();
  OUTLINED_FUNCTION_4_2();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_3_11();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_19_23();
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_72_6(*(v34 + 8));
  v35();
  type metadata accessor for BlueprintItem();
  OUTLINED_FUNCTION_7_5();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_0_44();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_1_1();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_38_11();
  OUTLINED_FUNCTION_123_0();
  v36 = sub_1D818F784();
  OUTLINED_FUNCTION_8();
  v38 = *(v37 + 8);
  v39 = OUTLINED_FUNCTION_47_10();
  v38(v39);
  OUTLINED_FUNCTION_65_7();
  v40 = v44 + *(v45 + 68);

  if (*(v40 + 40))
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v40 + 16);
  }

  OUTLINED_FUNCTION_39_12();
  v41();
  (v38)(v40 + *(v33 + 60), v36);

  if (*(v0 + v43 + 24))
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v0 + v43);
  }

  if (*(v0 + (v42 & 0xFFFFFFFFFFFFFFF8)))
  {
  }

  swift_deallocObject();
  OUTLINED_FUNCTION_100();
}

uint64_t sub_1D7EC9744()
{
  if (*(v0 + 16))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1D7EC98B4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1D807BD14();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1D7EC98E4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1D807BE10();
  *a1 = result;
  return result;
}

uint64_t sub_1D7EC993C()
{

  return swift_deallocObject();
}

uint64_t sub_1D7EC9978()
{

  return swift_deallocObject();
}

uint64_t sub_1D7EC99C8()
{

  return swift_deallocObject();
}

uint64_t sub_1D7EC9A00()
{

  return swift_deallocObject();
}

uint64_t sub_1D7EC9A40()
{

  return swift_deallocObject();
}

uint64_t sub_1D7EC9A7C()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1D7EC9AF8()
{

  return swift_deallocObject();
}

uint64_t sub_1D7EC9B38()
{
  OUTLINED_FUNCTION_0_163();
  sub_1D7E1D3F8(0, v1, v2, MEMORY[0x1E69E6720]);
  OUTLINED_FUNCTION_15_15(v3);
  v6 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = v0 + v6;
  v9 = type metadata accessor for SwipeActionRestoreState();
  if (!__swift_getEnumTagSinglePayload(v8, 1, v9))
  {

    v10 = *(v9 + 20);
    sub_1D818E994();
    OUTLINED_FUNCTION_8();
    (*(v11 + 8))(v8 + v10);
  }

  if (*(v0 + ((v7 + 15) & 0xFFFFFFFFFFFFFFF8)))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1D7EC9C8C()
{
  _Block_release(*(v0 + 16));
  OUTLINED_FUNCTION_0_8();

  return swift_deallocObject();
}

uint64_t sub_1D7EC9E3C()
{

  return swift_deallocObject();
}

uint64_t sub_1D7EC9E7C()
{

  return swift_deallocObject();
}

uint64_t sub_1D7EC9EB4()
{
  sub_1D7FF3308();
  OUTLINED_FUNCTION_4_3();
  (*(v1 + 8))(v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80)));

  return swift_deallocObject();
}

uint64_t sub_1D7ECA0A0()
{
  OUTLINED_FUNCTION_19();

  return swift_deallocObject();
}

uint64_t sub_1D7ECA0D0()
{

  return swift_deallocObject();
}

uint64_t sub_1D7ECA124()
{
  if (*(v0 + 32))
  {
  }

  OUTLINED_FUNCTION_21_0();

  return swift_deallocObject();
}

uint64_t sub_1D7ECA168()
{
  swift_unknownObjectUnownedDestroy();
  OUTLINED_FUNCTION_19();

  return swift_deallocObject();
}

uint64_t sub_1D7ECA198()
{
  MEMORY[0x1DA715E30](v0 + 16);
  OUTLINED_FUNCTION_19();

  return swift_deallocObject();
}

uint64_t sub_1D7ECA1D4(uint64_t a1, uint64_t a2, int *a3)
{
  OUTLINED_FUNCTION_0_98();
  type metadata accessor for Blueprint();
  OUTLINED_FUNCTION_95();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = a1;
    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }

  OUTLINED_FUNCTION_0_98();
  type metadata accessor for BlueprintSection();
  OUTLINED_FUNCTION_95();
  if (*(v11 + 84) == a2)
  {
    v8 = v10;
    v12 = a3[13];
LABEL_7:
    v9 = a1 + v12;
    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }

  sub_1D818E754();
  OUTLINED_FUNCTION_95();
  if (*(v14 + 84) == a2)
  {
    v8 = v13;
    v12 = a3[14];
    goto LABEL_7;
  }

  v16 = *(a1 + a3[18] + 8);
  if (v16 >= 0xFFFFFFFF)
  {
    LODWORD(v16) = -1;
  }

  return (v16 + 1);
}

void sub_1D7ECA31C(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  OUTLINED_FUNCTION_0_98();
  type metadata accessor for Blueprint();
  OUTLINED_FUNCTION_95();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = a1;
LABEL_8:
    __swift_storeEnumTagSinglePayload(v11, a2, a2, v10);
    return;
  }

  OUTLINED_FUNCTION_0_98();
  type metadata accessor for BlueprintSection();
  OUTLINED_FUNCTION_95();
  if (*(v13 + 84) == a3)
  {
    v10 = v12;
    v14 = a4[13];
LABEL_7:
    v11 = a1 + v14;
    goto LABEL_8;
  }

  sub_1D818E754();
  OUTLINED_FUNCTION_95();
  if (*(v16 + 84) == a3)
  {
    v10 = v15;
    v14 = a4[14];
    goto LABEL_7;
  }

  *(a1 + a4[18] + 8) = (a2 - 1);
}

uint64_t sub_1D7ECA460()
{

  return swift_deallocObject();
}

uint64_t sub_1D7ECA49C()
{
  MEMORY[0x1DA715E30](v0 + 16);
  OUTLINED_FUNCTION_0_8();

  return swift_deallocObject();
}

uint64_t sub_1D7ECA4D0()
{

  OUTLINED_FUNCTION_8_8();

  return swift_deallocObject();
}

__n128 sub_1D7ECA53C(uint64_t a1, _OWORD *a2)
{
  result = *a1;
  v3 = *(a1 + 16);
  *a2 = *a1;
  a2[1] = v3;
  return result;
}

uint64_t sub_1D7ECA55C()
{
  swift_weakDestroy();
  OUTLINED_FUNCTION_0_8();

  return swift_deallocObject();
}

uint64_t sub_1D7ECA590@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1D809B744();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1D7ECA5C0()
{

  return swift_deallocObject();
}

uint64_t sub_1D7ECA5F8()
{

  return swift_deallocObject();
}

uint64_t sub_1D7ECA668()
{

  if (*(v0 + 32))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1D7ECA6D4()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1D7ECA70C()
{

  if (*(v0 + 32))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1D7ECA798()
{

  return swift_deallocObject();
}

uint64_t sub_1D7ECA7D8()
{

  return swift_deallocObject();
}

uint64_t sub_1D7ECA810()
{
  OUTLINED_FUNCTION_1_125();
  if (*(v0 + 24))
  {
  }

  v1 = OUTLINED_FUNCTION_56_7();
  v2(v1);
  OUTLINED_FUNCTION_54_5();

  return swift_deallocObject();
}

uint64_t sub_1D7ECA8C4()
{
  OUTLINED_FUNCTION_2();

  v0 = OUTLINED_FUNCTION_2_11();
  v1(v0);
  OUTLINED_FUNCTION_7_26();

  return swift_deallocObject();
}

uint64_t sub_1D7ECA978()
{
  if (*(v0 + 16))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1D7ECA9C0()
{

  return swift_deallocObject();
}

uint64_t sub_1D7ECA9FC()
{

  OUTLINED_FUNCTION_21_0();

  return swift_deallocObject();
}

uint64_t sub_1D7ECAA40()
{

  return swift_deallocObject();
}

uint64_t sub_1D7ECAA80()
{

  return swift_deallocObject();
}

uint64_t sub_1D7ECAADC()
{
  OUTLINED_FUNCTION_1_125();
  OUTLINED_FUNCTION_60_8();
  v2 = OUTLINED_FUNCTION_56_7();
  v3(v2);
  v4 = v0 + v1;
  if (*(v0 + v1))
  {

    if (*(v4 + 40))
    {
      __swift_destroy_boxed_opaque_existential_1Tm(v4 + 16);
    }
  }

  OUTLINED_FUNCTION_54_5();

  return swift_deallocObject();
}

uint64_t sub_1D7ECABA0()
{

  swift_unknownObjectRelease();

  OUTLINED_FUNCTION_21_0();

  return swift_deallocObject();
}

uint64_t sub_1D7ECABE4()
{

  swift_unknownObjectRelease();

  return swift_deallocObject();
}

__n128 sub_1D7ECACD4(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_1D7ECAD30()
{
  OUTLINED_FUNCTION_0_32();

  return swift_deallocObject();
}

uint64_t sub_1D7ECAD6C()
{

  OUTLINED_FUNCTION_0_32();

  return swift_deallocObject();
}

uint64_t sub_1D7ECADA0()
{

  return swift_deallocObject();
}

uint64_t sub_1D7ECADDC()
{

  OUTLINED_FUNCTION_0_32();

  return swift_deallocObject();
}

uint64_t sub_1D7ECAE3C()
{
  if (*(v0 + 56))
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 32);
  }

  return swift_deallocObject();
}

__n128 sub_1D7ECAEC4(uint64_t a1, _OWORD *a2)
{
  result = *a1;
  v3 = *(a1 + 16);
  *a2 = *a1;
  a2[1] = v3;
  return result;
}

uint64_t sub_1D7ECAEDC()
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v2 = type metadata accessor for BlueprintItem();
  OUTLINED_FUNCTION_15_15(v2);
  v4 = (*(v3 + 80) + 48) & ~*(v3 + 80);
  v6 = *(v5 + 64);
  v7 = *(type metadata accessor for BlueprintViewAction(0) - 8);
  v8 = (v4 + v6 + *(v7 + 80)) & ~*(v7 + 80);
  OUTLINED_FUNCTION_3_0();
  (*(v9 + 8))(v0 + v4, AssociatedTypeWitness);
  LODWORD(v6) = swift_getEnumCaseMultiPayload();

  sub_1D7F9E220();
  v11 = v0 + v8 + *(v10 + 48);
  type metadata accessor for BlueprintViewAction.Action(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (v6 == 1)
  {
    if (EnumCaseMultiPayload != 1)
    {
      if (!EnumCaseMultiPayload)
      {
        v13 = sub_1D818E994();
        v14 = *(*(v13 - 8) + 8);
        v14(v11, v13);
        sub_1D7F9E3F0();
        v14(v11 + *(v15 + 48), v13);
      }

      goto LABEL_9;
    }

LABEL_8:

    goto LABEL_9;
  }

  if (EnumCaseMultiPayload == 1)
  {
    goto LABEL_8;
  }

  if (!EnumCaseMultiPayload)
  {
    v16 = sub_1D818E994();
    OUTLINED_FUNCTION_3_0();
    v18 = *(v17 + 8);
    v18(v11, v16);
    sub_1D7F9E3F0();
    v18(v11 + *(v19 + 48), v16);
  }

LABEL_9:

  return swift_deallocObject();
}

uint64_t sub_1D7ECB1C0()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_1D7ECB1F8()
{

  return swift_deallocObject();
}

uint64_t sub_1D7ECB23C()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1D7ECB274()
{

  sub_1D7E57C40(*(v0 + 296), *(v0 + 304), *(v0 + 312));
  sub_1D7E57C40(*(v0 + 320), *(v0 + 328), *(v0 + 336));
  sub_1D7E57C40(*(v0 + 344), *(v0 + 352), *(v0 + 360));
  if (*(v0 + 648))
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 624);
  }

  sub_1D7E57C40(*(v0 + 904), *(v0 + 912), *(v0 + 920));
  sub_1D7E57C40(*(v0 + 928), *(v0 + 936), *(v0 + 944));
  sub_1D7E57C40(*(v0 + 952), *(v0 + 960), *(v0 + 968));

  return swift_deallocObject();
}

uint64_t sub_1D7ECB350()
{

  return swift_deallocObject();
}

__n128 sub_1D7ECB450(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_1D7ECB484()
{

  return swift_deallocObject();
}

uint64_t sub_1D7ECB4E4()
{
  if (*(v0 + 16) >= 6uLL)
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1D7ECB544()
{
  MEMORY[0x1DA715E30](v0 + 16);
  OUTLINED_FUNCTION_0_8();

  return swift_deallocObject();
}

uint64_t sub_1D7ECB578()
{

  OUTLINED_FUNCTION_8_8();

  return swift_deallocObject();
}

__n128 sub_1D7ECB5E0(uint64_t a1, _OWORD *a2)
{
  result = *a1;
  v3 = *(a1 + 16);
  *a2 = *a1;
  a2[1] = v3;
  return result;
}

__n128 sub_1D7ECB73C(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_1D7ECB770(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1D818E754();
    if (*(*(v8 - 8) + 84) == a2)
    {
      v9 = v8;
      v10 = *(a3 + 20);
    }

    else
    {
      sub_1D7E313D0();
      v9 = v11;
      v10 = *(a3 + 24);
    }

    return __swift_getEnumTagSinglePayload(a1 + v10, a2, v9);
  }
}

uint64_t sub_1D7ECB83C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = sub_1D818E754();
    if (*(*(v8 - 8) + 84) == a3)
    {
      v9 = v8;
      v10 = *(a4 + 20);
    }

    else
    {
      sub_1D7E313D0();
      v9 = v11;
      v10 = *(a4 + 24);
    }

    return __swift_storeEnumTagSinglePayload(v5 + v10, a2, a2, v9);
  }

  return result;
}

uint64_t sub_1D7ECB990@<X0>(uint64_t *a1@<X8>)
{
  result = BlueprintCompositionalListDataSourceProxy.dragReorderDelegate.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

__n128 sub_1D7ECB9CC(uint64_t a1, uint64_t a2)
{
  result = *a1;
  v3 = *(a1 + 16);
  v4 = *(a1 + 48);
  *(a2 + 32) = *(a1 + 32);
  *(a2 + 48) = v4;
  *a2 = result;
  *(a2 + 16) = v3;
  return result;
}

double sub_1D7ECBA8C()
{
  v0.n128_f64[0] = ViewControllerPreviewable.previewInsets.getter(&v11);
  *&result = OUTLINED_FUNCTION_2_120(v1, v2, v3, v4, v5, v6, v7, v8, v10, v0, v11, v12).n128_u64[0];
  return result;
}

uint64_t sub_1D7ECBAC8()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1D7ECBB94()
{

  return swift_deallocObject();
}

uint64_t sub_1D7ECBBE4()
{

  return swift_deallocObject();
}

uint64_t sub_1D7ECBC78(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    OUTLINED_FUNCTION_1_137();
    sub_1D80CCB44(0, v8, v9, MEMORY[0x1E697DCC0]);
    v11 = v10;
    v12 = a1 + *(a3 + 64);

    return __swift_getEnumTagSinglePayload(v12, a2, v11);
  }
}

void *sub_1D7ECBD20(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    OUTLINED_FUNCTION_1_137();
    sub_1D80CCB44(0, v7, v8, MEMORY[0x1E697DCC0]);
    v10 = v9;
    v11 = v5 + *(a4 + 64);

    return __swift_storeEnumTagSinglePayload(v11, a2, a2, v10);
  }

  return result;
}

uint64_t sub_1D7ECBDD0()
{
  v1 = (type metadata accessor for JSONSchemaPresetSelectorView() - 8);
  v2 = v0 + ((*(*v1 + 80) + 56) & ~*(*v1 + 80));

  v3 = v1[18];
  OUTLINED_FUNCTION_1_137();
  sub_1D80CCB44(0, v4, v5, MEMORY[0x1E697DCB8]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1D8190364();
    OUTLINED_FUNCTION_8();
    (*(v6 + 8))(v2 + v3);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1D7ECBF10()
{
  v12 = *(v0 + 16);
  v1 = (type metadata accessor for JSONSchemaPresetSelectorView() - 8);
  v2 = *(*v1 + 64);
  v3 = (*(*v1 + 80) + 56) & ~*(*v1 + 80);
  v4 = type metadata accessor for JSONSchema.LabeledValue();
  OUTLINED_FUNCTION_9();
  v6 = *(v5 + 80);

  v7 = v1[18];
  OUTLINED_FUNCTION_1_137();
  sub_1D80CCB44(0, v8, v9, MEMORY[0x1E697DCB8]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1D8190364();
    OUTLINED_FUNCTION_8();
    (*(v10 + 8))(v0 + v3 + v7);
  }

  else
  {
  }

  (*(*(v12 - 8) + 8))(v0 + ((v3 + v2 + v6) & ~v6) + *(v4 + 52), v12);
  return swift_deallocObject();
}

uint64_t sub_1D7ECC130@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1D8190514();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1D7ECC198@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1D81904D4();
  *a1 = result;
  return result;
}

uint64_t sub_1D7ECC1F4()
{
  type metadata accessor for JSONSchema.LabeledValue();
  sub_1D8191484();
  sub_1D80C8DFC();
  OUTLINED_FUNCTION_16_39();
  swift_getWitnessTable();
  sub_1D8190AE4();
  OUTLINED_FUNCTION_15_37();
  sub_1D80CCBA4(v0);
  OUTLINED_FUNCTION_4_81();
  swift_getWitnessTable();
  sub_1D81907D4();
  OUTLINED_FUNCTION_17_32();
  return swift_getWitnessTable();
}

uint64_t sub_1D7ECC53C()
{
  OUTLINED_FUNCTION_0_8();

  return swift_deallocObject();
}

uint64_t sub_1D7ECC578()
{

  return swift_deallocObject();
}

uint64_t sub_1D7ECC5B0@<X0>(uint64_t *a1@<X8>)
{
  result = BlueprintPrewarmState.state.getter();
  *a1 = result;
  return result;
}

__n128 sub_1D7ECC5EC(uint64_t a1, _OWORD *a2)
{
  result = *a1;
  v3 = *(a1 + 16);
  *a2 = *a1;
  a2[1] = v3;
  return result;
}

uint64_t sub_1D7ECC5F8()
{

  return swift_deallocObject();
}

uint64_t sub_1D7ECC704()
{

  return swift_deallocObject();
}

uint64_t sub_1D7ECC764()
{

  return swift_deallocObject();
}

uint64_t sub_1D7ECC79C()
{
  v1 = *(v0 + 24);
  OUTLINED_FUNCTION_3_0();
  v3 = *(v2 + 8);
  v4 = *(v2 + 80);
  v5 = (v4 + 32) & ~v4;
  v6 = (*(v2 + 64) + v4 + v5) & ~v4;
  v3(v0 + v5, v1);
  v3(v0 + v6, v1);

  return swift_deallocObject();
}

uint64_t sub_1D7ECC84C()
{
  OUTLINED_FUNCTION_3_0();
  (*(v1 + 8))(v0 + ((*(v1 + 80) + 32) & ~*(v1 + 80)));

  return swift_deallocObject();
}

uint64_t sub_1D7ECC8C8()
{

  return swift_deallocObject();
}

uint64_t sub_1D7ECCB14()
{

  return swift_deallocObject();
}

__n128 sub_1D7ECCB60(uint64_t a1, uint64_t a2)
{
  result = *a1;
  v3 = *(a1 + 32);
  *(a2 + 16) = *(a1 + 16);
  *(a2 + 32) = v3;
  *a2 = result;
  return result;
}

uint64_t sub_1D7ECCBB4()
{

  sub_1D7E57C40(*(v0 + 312), *(v0 + 320), *(v0 + 328));
  sub_1D7E57C40(*(v0 + 336), *(v0 + 344), *(v0 + 352));
  sub_1D7E57C40(*(v0 + 360), *(v0 + 368), *(v0 + 376));

  return swift_deallocObject();
}

uint64_t sub_1D7ECCC58()
{
  MEMORY[0x1DA715E30](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1D7ECCC90()
{

  return swift_deallocObject();
}

uint64_t sub_1D7ECCCF0()
{

  return swift_deallocObject();
}

uint64_t sub_1D7ECCD30()
{
  swift_weakDestroy();
  OUTLINED_FUNCTION_0_8();

  return swift_deallocObject();
}

uint64_t sub_1D7ECCD64()
{

  OUTLINED_FUNCTION_33_17();

  return swift_deallocObject();
}

uint64_t sub_1D7ECCDD4()
{
  OUTLINED_FUNCTION_124();
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_124();
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_68();
  swift_getAssociatedConformanceWitness();
  OUTLINED_FUNCTION_68();
  swift_getAssociatedConformanceWitness();
  v1 = type metadata accessor for Blueprint();
  v8 = *(*(v1 - 8) + 80);

  v2 = v0 + ((v8 + 144) & ~v8);

  if (*(v2 + 40))
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v2 + 16);
  }

  v3 = *(v1 + 56);
  type metadata accessor for BlueprintSection();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_1D818F394();
  OUTLINED_FUNCTION_4_3();
  (*(v4 + 8))(v2 + v3);
  v5 = *(v1 + 60);
  type metadata accessor for BlueprintItem();
  OUTLINED_FUNCTION_7_5();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_20_10();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_20_10();
  swift_getWitnessTable();
  sub_1D818F784();
  OUTLINED_FUNCTION_4_3();
  (*(v6 + 8))(v2 + v5);

  return swift_deallocObject();
}

uint64_t sub_1D7ECD084()
{

  return swift_deallocObject();
}

uint64_t sub_1D7ECD0D4()
{

  return swift_deallocObject();
}

uint64_t sub_1D7ECD114()
{

  return swift_deallocObject();
}

uint64_t sub_1D7ECD17C()
{

  return swift_deallocObject();
}

uint64_t sub_1D7ECD1B4()
{

  return swift_deallocObject();
}

uint64_t sub_1D7ECD2E4()
{

  return swift_deallocObject();
}

uint64_t sub_1D7ECD320()
{
  MEMORY[0x1DA715E30](v0 + 16);
  OUTLINED_FUNCTION_0_8();

  return swift_deallocObject();
}

uint64_t sub_1D7ECD354()
{
  OUTLINED_FUNCTION_0_8();

  return swift_deallocObject();
}

uint64_t sub_1D7ECD388@<X0>(uint64_t *a1@<X8>)
{
  result = DockContainerViewController.rootViewController.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1D7ECD3B8()
{
  _Block_release(*(v0 + 16));
  OUTLINED_FUNCTION_0_8();

  return swift_deallocObject();
}

uint64_t sub_1D7ECD3EC()
{
  if (*(v0 + 24))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1D7ECD44C()
{

  return swift_deallocObject();
}

uint64_t sub_1D7ECD484()
{

  return swift_deallocObject();
}

uint64_t sub_1D7ECD4BC()
{

  return swift_deallocObject();
}

uint64_t sub_1D7ECD4FC()
{
  swift_unknownObjectRelease();
  OUTLINED_FUNCTION_0_8();

  return swift_deallocObject();
}

uint64_t sub_1D7ECD530()
{
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 16);
  OUTLINED_FUNCTION_8_8();

  return swift_deallocObject();
}

__n128 sub_1D7ECD58C(uint64_t a1, _OWORD *a2)
{
  result = *a1;
  v3 = *(a1 + 16);
  *a2 = *a1;
  a2[1] = v3;
  return result;
}

__n128 sub_1D7ECD5D8(uint64_t a1, _OWORD *a2)
{
  result = *a1;
  v3 = *(a1 + 16);
  *a2 = *a1;
  a2[1] = v3;
  return result;
}

uint64_t sub_1D7ECD61C()
{
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 16);
  sub_1D8019CE4(*(v0 + 56), *(v0 + 64), *(v0 + 72), *(v0 + 80), *(v0 + 88), *(v0 + 96));

  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 168);

  return swift_deallocObject();
}

uint64_t sub_1D7ECD6AC()
{

  OUTLINED_FUNCTION_0_32();

  return swift_deallocObject();
}

uint64_t sub_1D7ECD708()
{

  return swift_deallocObject();
}

uint64_t sub_1D7ECD75C()
{

  return swift_deallocObject();
}

uint64_t sub_1D7ECD79C()
{
  OUTLINED_FUNCTION_12_51();

  return swift_deallocObject();
}

uint64_t sub_1D7ECD7D4()
{
  OUTLINED_FUNCTION_12_51();

  return swift_deallocObject();
}

uint64_t sub_1D7ECD80C()
{
  OUTLINED_FUNCTION_12_51();

  return swift_deallocObject();
}

uint64_t sub_1D7ECD85C()
{

  return swift_deallocObject();
}

uint64_t sub_1D7ECD8CC()
{
  v2 = OUTLINED_FUNCTION_1_151();

  return __swift_getEnumTagSinglePayload(v1, v0, v2);
}

uint64_t sub_1D7ECD908()
{
  OUTLINED_FUNCTION_1_151();
  v0 = OUTLINED_FUNCTION_145();

  return __swift_storeEnumTagSinglePayload(v0, v1, v2, v3);
}

BOOL sub_1D7ECD9A0()
{
  v0 = sub_1D81924B4();

  return v0 != 0;
}

uint64_t sub_1D7ECDAA0()
{

  return swift_deallocObject();
}

uint64_t sub_1D7ECDB20(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_0_217();
  v4 = sub_1D818F394();

  return __swift_getEnumTagSinglePayload(a1, a2, v4);
}

uint64_t sub_1D7ECDB6C(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_0_217();
  v4 = sub_1D818F394();

  return __swift_storeEnumTagSinglePayload(a1, a2, a2, v4);
}

uint64_t sub_1D7ECDC1C()
{

  return swift_deallocObject();
}

uint64_t sub_1D7ECDCE0(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1D818E754();
    v9 = a1 + *(a3 + 20);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

uint64_t sub_1D7ECDE9C()
{

  return swift_deallocObject();
}

uint64_t sub_1D7ECDEE0()
{

  return swift_deallocObject();
}

__n128 sub_1D7ECDF9C(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_1D7ECDFA8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1D8121904();
  *a1 = result & 1;
  return result;
}

id sub_1D7ECE010@<X0>(void *a1@<X8>)
{
  result = _s5TeaUI18CollectionViewCellC22traversedDisposerTokenSo8NSObjectCvg_0();
  *a1 = result;
  return result;
}

uint64_t sub_1D7ECE044@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1D8122DF8();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1D7ECE0A0()
{

  return swift_deallocObject();
}

uint64_t sub_1D7ECE0F8()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

double sub_1D7ECE168@<D0>(_OWORD *a1@<X8>)
{
  result = 0.0;
  *a1 = 0u;
  a1[1] = 0u;
  return result;
}

uint64_t sub_1D7ECE174()
{
  v1 = *(v0 + 16);
  v2 = sub_1D8191E84();
  OUTLINED_FUNCTION_15_15(v2);
  v4 = (*(v3 + 80) + 64) & ~*(v3 + 80);

  if (!__swift_getEnumTagSinglePayload(v0 + v4, 1, v1))
  {
    OUTLINED_FUNCTION_3_0();
    (*(v5 + 8))(v0 + v4, v1);
  }

  OUTLINED_FUNCTION_37_16();

  return swift_deallocObject();
}

uint64_t sub_1D7ECE288()
{
  v1 = *(v0 + 16);
  v2 = sub_1D8191E84();
  OUTLINED_FUNCTION_15_15(v2);
  v4 = (*(v3 + 80) + 40) & ~*(v3 + 80);

  if (!__swift_getEnumTagSinglePayload(v0 + v4, 1, v1))
  {
    OUTLINED_FUNCTION_3_0();
    (*(v5 + 8))(v0 + v4, v1);
  }

  OUTLINED_FUNCTION_37_16();

  return swift_deallocObject();
}

uint64_t sub_1D7ECE4C4()
{
  swift_getTupleTypeMetadata2();
  sub_1D8190B84();
  OUTLINED_FUNCTION_1_163();
  swift_getWitnessTable();
  sub_1D8190A74();
  OUTLINED_FUNCTION_0_227();

  return swift_getWitnessTable();
}

uint64_t sub_1D7ECE594()
{

  OUTLINED_FUNCTION_0_32();

  return swift_deallocObject();
}

id sub_1D7ECE5C8()
{
  v0 = sub_1D8137BA4();

  return v0;
}

uint64_t sub_1D7ECE5FC()
{
  MEMORY[0x1DA715E30](v0 + 16);
  OUTLINED_FUNCTION_0_8();

  return swift_deallocObject();
}

uint64_t sub_1D7ECE630@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1D8136418();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1D7ECE6A0()
{
  OUTLINED_FUNCTION_0_32();

  return swift_deallocObject();
}

id sub_1D7ECE6F8@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 contentSize];
  *a2 = v4;
  a2[1] = v5;
  return result;
}

id sub_1D7ECE740@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 safeAreaInsets];
  *a2 = v4;
  a2[1] = v5;
  a2[2] = v6;
  a2[3] = v7;
  return result;
}

uint64_t sub_1D7ECE794()
{

  return swift_deallocObject();
}

uint64_t sub_1D7ECE7E4()
{
  v0 = OUTLINED_FUNCTION_11_55();
  OUTLINED_FUNCTION_15_15(v0);
  if (!OUTLINED_FUNCTION_10_59())
  {
    OUTLINED_FUNCTION_5_85();
    v1 = OUTLINED_FUNCTION_26_25();
    v2(v1);
  }

  OUTLINED_FUNCTION_9_52();

  OUTLINED_FUNCTION_54_5();

  return swift_deallocObject();
}

uint64_t sub_1D7ECE97C()
{

  return swift_deallocObject();
}

uint64_t sub_1D7ECE9B4()
{
  MEMORY[0x1DA715E30](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1D7ECE9EC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1D8142D04();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1D7ECEA24@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1D81437E4();
  *a1 = result;
  return result;
}

uint64_t sub_1D7ECEA54()
{
  OUTLINED_FUNCTION_0_8();

  return swift_deallocObject();
}

uint64_t sub_1D7ECEA98()
{
  MEMORY[0x1DA715E30](v0 + 16);
  OUTLINED_FUNCTION_0_8();

  return swift_deallocObject();
}

uint64_t sub_1D7ECEACC()
{
  MEMORY[0x1DA715E30](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1D7ECEB04()
{

  return swift_deallocObject();
}

uint64_t sub_1D7ECEC10()
{

  return swift_deallocObject();
}

uint64_t sub_1D7ECECF8()
{
  MEMORY[0x1DA715E30](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1D7ECEDB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_76_0();
  v6 = sub_1D818F824();
  if (*(*(v6 - 8) + 84) != a2)
  {
    return OUTLINED_FUNCTION_5_47(*(v3 + *(a3 + 24) + 8));
  }

  return __swift_getEnumTagSinglePayload(v3, a2, v6);
}

uint64_t sub_1D7ECEE58(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1D818F824();
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1D7ECEF04()
{
  sub_1D81510E4();
  sub_1D8153B90();
  sub_1D8150A88();
  OUTLINED_FUNCTION_5_87();
  sub_1D8150E10(v0, v1);
  OUTLINED_FUNCTION_8_61();
  swift_getOpaqueTypeConformance2();
  OUTLINED_FUNCTION_6_94();
  sub_1D8150E10(v2, v3);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1D7ECEFDC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    return OUTLINED_FUNCTION_5_47(*(a1 + 8));
  }

  v7 = sub_1D818F824();
  v8 = a1 + *(a3 + 20);

  return __swift_getEnumTagSinglePayload(v8, a2, v7);
}

uint64_t sub_1D7ECF058(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_1D818F824();
    v8 = v5 + *(a4 + 20);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1D7ECF0D8()
{

  return swift_deallocObject();
}

uint64_t sub_1D7ECF110()
{

  return swift_deallocObject();
}

uint64_t sub_1D7ECF19C()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1D7ECF1E0()
{

  return swift_deallocObject();
}

uint64_t sub_1D7ECF218()
{

  return swift_deallocObject();
}

uint64_t sub_1D7ECF254()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_8_6();
  v0 = OUTLINED_FUNCTION_2_11();
  v1(v0);

  return swift_deallocObject();
}

uint64_t sub_1D7ECF354()
{
  MEMORY[0x1DA715E30](v0 + 16);

  return swift_deallocObject();
}

__n128 sub_1D7ECF3C0(uint64_t a1, _OWORD *a2)
{
  result = *a1;
  v3 = *(a1 + 16);
  *a2 = *a1;
  a2[1] = v3;
  return result;
}

uint64_t sub_1D7ECF3CC()
{

  return swift_deallocObject();
}

uint64_t sub_1D7ECF404()
{

  return swift_deallocObject();
}

uint64_t sub_1D7ECF4A0()
{

  return swift_deallocObject();
}

uint64_t sub_1D7ECF52C(uint64_t a1)
{
  OUTLINED_FUNCTION_7_84(a1, &qword_1ECA10BE8, MEMORY[0x1E6981148], MEMORY[0x1E6981138]);
  type metadata accessor for CheckboxView.CheckToggleStyle();
  sub_1D8168438();
  OUTLINED_FUNCTION_2_165();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_6_96();
  swift_getOpaqueTypeMetadata2();
  OUTLINED_FUNCTION_8_63();
  sub_1D8191E84();
  OUTLINED_FUNCTION_8_63();
  swift_getTupleTypeMetadata2();
  OUTLINED_FUNCTION_8_63();
  sub_1D8190B84();
  OUTLINED_FUNCTION_1_163();
  swift_getWitnessTable();
  sub_1D8190A14();
  OUTLINED_FUNCTION_5_92();
  return swift_getWitnessTable();
}

uint64_t sub_1D7ECF610()
{
  v1 = sub_1D8190744();
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_1D7ECF6C0()
{
  sub_1D816855C();
  sub_1D8190464();
  OUTLINED_FUNCTION_4_101();
  sub_1D81688BC(v0, v1);
  OUTLINED_FUNCTION_3_141();
  sub_1D81688BC(v2, v3);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1D7ECF778()
{
  MEMORY[0x1DA715E30](v0 + 16);
  OUTLINED_FUNCTION_0_8();

  return swift_deallocObject();
}

id sub_1D7ECF7C0@<X0>(_BYTE *a1@<X8>)
{
  result = ModalHostViewController.isCloseButtonHidden.getter();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1D7ECF818()
{
  if (*(v0 + 40))
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 16);
  }

  return swift_deallocObject();
}

uint64_t sub_1D7ECF8AC()
{

  return swift_deallocObject();
}

uint64_t sub_1D7ECF8E4()
{

  return swift_deallocObject();
}

uint64_t sub_1D7ECF98C()
{
  MEMORY[0x1DA715E30](v0 + 16);
  OUTLINED_FUNCTION_0_8();

  return swift_deallocObject();
}

uint64_t sub_1D7ECF9C0()
{
  v1 = sub_1D818E994();
  OUTLINED_FUNCTION_9();
  v3 = v2;
  v4 = (*(v2 + 80) + 32) & ~*(v2 + 80);

  (*(v3 + 8))(v0 + v4, v1);

  return swift_deallocObject();
}

uint64_t sub_1D7ECFAA4()
{
  MEMORY[0x1DA715E30](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1D7ECFADC()
{

  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1D7ECFB2C()
{

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 32);

  return swift_deallocObject();
}

uint64_t sub_1D7ECFB8C()
{

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 40);

  return swift_deallocObject();
}

uint64_t sub_1D7ECFBD4()
{

  return swift_deallocObject();
}

uint64_t sub_1D7ECFC0C()
{
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1D7ECFC4C()
{

  swift_unknownObjectRelease();

  return swift_deallocObject();
}

__n128 sub_1D7ECFD40(uint64_t a1, _OWORD *a2)
{
  result = *a1;
  v3 = *(a1 + 16);
  *a2 = *a1;
  a2[1] = v3;
  return result;
}

uint64_t sub_1D7ECFD4C()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 2));

  return swift_deallocObject();
}

uint64_t sub_1D7ECFDC8()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 2));

  return swift_deallocObject();
}

uint64_t sub_1D7ECFE24(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1D818E994();
    v9 = a1 + *(a3 + 84);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

uint64_t sub_1D7ECFEAC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_1D818E994();
    v8 = v5 + *(a4 + 84);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1D7ECFF2C()
{

  return swift_deallocObject();
}

uint64_t sub_1D7ECFF70()
{

  return swift_deallocObject();
}

uint64_t sub_1D7ECFFC4()
{
  MEMORY[0x1DA715E30](v0 + 16);

  return swift_deallocObject();
}

id sub_1D7ED00A4@<X0>(void *a1@<X8>)
{
  result = sub_1D817F6D4();
  *a1 = result;
  return result;
}

uint64_t sub_1D7ED00D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1D818E994();
  OUTLINED_FUNCTION_95();
  if (*(v7 + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(a1, a2, v6);
  }

  else
  {
    OUTLINED_FUNCTION_1_61();
    type metadata accessor for Blueprint();
    OUTLINED_FUNCTION_95();
    if (*(v10 + 84) == a2)
    {
      return __swift_getEnumTagSinglePayload(a1 + *(a3 + 84), a2, v9);
    }

    else
    {
      v11 = *(a1 + *(a3 + 88) + 128);
      if (v11 >= 0xFFFFFFFF)
      {
        LODWORD(v11) = -1;
      }

      return (v11 + 1);
    }
  }
}

void sub_1D7ED01E0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_1D818E994();
  OUTLINED_FUNCTION_95();
  if (*(v9 + 84) == a3)
  {

    __swift_storeEnumTagSinglePayload(a1, a2, a2, v8);
  }

  else
  {
    OUTLINED_FUNCTION_1_61();
    type metadata accessor for Blueprint();
    OUTLINED_FUNCTION_95();
    if (*(v11 + 84) == a3)
    {
      __swift_storeEnumTagSinglePayload(a1 + *(a4 + 84), a2, a2, v10);
    }

    else
    {
      *(a1 + *(a4 + 88) + 128) = (a2 - 1);
    }
  }
}

uint64_t sub_1D7ED02EC()
{
  OUTLINED_FUNCTION_0_8();

  return swift_deallocObject();
}

uint64_t sub_1D7ED032C@<X0>(uint64_t *a1@<X8>)
{
  result = DebugWindow.observableRootViewController.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1D7ED03C0()
{
  MEMORY[0x1DA715E30](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1D7ED047C()
{

  if (*(v0 + 32))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1D7ED04C4()
{

  return swift_deallocObject();
}

uint64_t sub_1D7ED0504()
{

  OUTLINED_FUNCTION_0_32();

  return swift_deallocObject();
}

uint64_t sub_1D7ED0538()
{

  OUTLINED_FUNCTION_0_32();

  return swift_deallocObject();
}

uint64_t sub_1D7ED0570(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(*(sub_1D818E644() - 8) + 84) == a2)
  {
    v6 = OUTLINED_FUNCTION_1_187();

    return __swift_getEnumTagSinglePayload(v6, a2, v7);
  }

  else
  {
    v9 = *(a1 + *(a3 + 28));
    if (v9 >= 0xFFFFFFFF)
    {
      LODWORD(v9) = -1;
    }

    v10 = v9 - 1;
    if (v10 < 0)
    {
      v10 = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_1D7ED0624(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1D818E644();
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 28)) = a2;
  }

  return result;
}

uint64_t sub_1D7ED06CC(uint64_t a1, char a2)
{
  if (a2 != -1)
  {
    return sub_1D8190DB4();
  }

  return result;
}

char *sub_1D7ED0768(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[8 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_201(a3, result);
  }

  return result;
}

void *sub_1D7ED0788(void *result, int a2)
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

uint64_t sub_1D7ED07B8(uint64_t a1, char a2)
{
  if (a2 != -1)
  {
  }

  return result;
}

uint64_t sub_1D7ED07CC()
{
  OUTLINED_FUNCTION_2_15();
  result = sub_1D7E4DCF0();
  *v0 = result;
  v0[1] = v2;
  return result;
}

double NFClamp(double a1, double a2, double a3)
{
  if (a1 >= a2)
  {
    a2 = a1;
    if (a1 > a3)
    {
      return a3;
    }
  }

  return a2;
}

id TSAccessibilityCharacterLiteralAttributedString(void *a1)
{
  v8[1] = *MEMORY[0x1E69E9840];
  v1 = MEMORY[0x1E696AAB0];
  v2 = a1;
  v3 = [v1 alloc];
  v7 = *MEMORY[0x1E6988EA8];
  v8[0] = MEMORY[0x1E695E118];
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:&v7 count:1];
  v5 = [v3 initWithString:v2 attributes:v4];

  return v5;
}

uint64_t TUDeviceIsSlow()
{
  if (TUDeviceIsSlow_onceToken[0] != -1)
  {
    TUDeviceIsSlow_cold_1();
  }

  return TUDeviceIsSlow_result;
}

uint64_t __TUDeviceIsSlow_block_invoke()
{
  result = MGIsDeviceOneOfType();
  TUDeviceIsSlow_result = result;
  return result;
}

void sub_1D7ED9954(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1D7ED9AF4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1D7ED9C98(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1D7ED9E38(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void TUModifyAnimation(void *a1)
{
  v1 = a1;
  v3 = CAFrameRateRangeMake(80.0, 120.0, 120.0);
  [MEMORY[0x1E69DD250] _modifyAnimationsWithPreferredFrameRateRange:1376258 updateReason:v1 animations:{*&v3.minimum, *&v3.maximum, *&v3.preferred}];
}

uint64_t UISceneSession.mainViewControllerIdentifier.getter()
{
  if (!sub_1D7E89164(v0))
  {
    v3 = 0u;
    v4 = 0u;
    goto LABEL_8;
  }

  sub_1D7EDF26C();

  if (!*(&v4 + 1))
  {
LABEL_8:
    sub_1D7E7BAAC(&v3);
    return 0;
  }

  if (swift_dynamicCast())
  {
    return v2;
  }

  else
  {
    return 0;
  }
}

double sub_1D7EDF26C()
{
  OUTLINED_FUNCTION_16_6();
  if (!v2)
  {
    return OUTLINED_FUNCTION_6_3();
  }

  v3 = sub_1D7E11428(v0, v1);
  if ((v4 & 1) == 0)
  {
    return OUTLINED_FUNCTION_6_3();
  }

  v5 = OUTLINED_FUNCTION_4_9(v3);

  sub_1D7E1B288(v5, v6);
  return result;
}

double sub_1D7EDF2EC()
{
  OUTLINED_FUNCTION_10_9();
  if (!v0)
  {
    return OUTLINED_FUNCTION_6_3();
  }

  v1 = sub_1D7F04FD8();
  if ((v2 & 1) == 0)
  {
    return OUTLINED_FUNCTION_6_3();
  }

  v3 = OUTLINED_FUNCTION_4_9(v1);

  sub_1D7E1B288(v3, v4);
  return result;
}

uint64_t sub_1D7EDF340(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v2 = sub_1D7E7E198(a1);
  if ((v3 & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_3_19(v2);
  return swift_unknownObjectRetain();
}

uint64_t sub_1D7EDF38C(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v2 = sub_1D7E7E198(a1);
  if ((v3 & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_3_19(v2);
}

uint64_t sub_1D7EDF3D8(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v2 = sub_1D7E7E198(a1);
  if ((v3 & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_3_19(v2);
  return sub_1D8190DB4();
}

void *sub_1D7EDF424(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v3 = sub_1D7F061F8(a1);
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = *(*(a2 + 56) + 8 * v3);
  v6 = v5;
  return v5;
}

double sub_1D7EDF46C()
{
  OUTLINED_FUNCTION_10_9();
  if (!v0)
  {
    return OUTLINED_FUNCTION_6_3();
  }

  v1 = sub_1D7F05094();
  if ((v2 & 1) == 0)
  {
    return OUTLINED_FUNCTION_6_3();
  }

  v3 = OUTLINED_FUNCTION_4_9(v1);

  sub_1D7E1B288(v3, v4);
  return result;
}

uint64_t sub_1D7EDF4EC(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  OUTLINED_FUNCTION_16_6();
  if (v10 && (v11 = v9, v12 = v8, v13 = sub_1D7E11428(v6, v7), (v14 & 1) != 0))
  {
    v15 = v13;
    v16 = *(v12 + 56);
    a4(0);
    OUTLINED_FUNCTION_8();
    sub_1D7EE2204(v16 + *(v17 + 72) * v15, v4, v11);
    v18 = OUTLINED_FUNCTION_17_2();
  }

  else
  {
    a4(0);
    v18 = OUTLINED_FUNCTION_15_0();
  }

  return __swift_storeEnumTagSinglePayload(v18, v19, v20, v21);
}

uint64_t sub_1D7EDF594(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v4 = sub_1D7F050D0(a1, a2, a4);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_3_19(v4);
  return sub_1D8190DB4();
}

uint64_t sub_1D7EDF5E0(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v5 = sub_1D7F050D0(a1, a2, a4);
  if (v6)
  {
    return *(*(a3 + 56) + 16 * v5);
  }

  else
  {
    return 0;
  }
}

double sub_1D7EDF644()
{
  OUTLINED_FUNCTION_16_6();
  if (v3 && (v4 = sub_1D7E11428(v1, v2), (v5 & 1) != 0))
  {
    OUTLINED_FUNCTION_19_1(v4);
  }

  else
  {
    *(v0 + 32) = 0;
    return OUTLINED_FUNCTION_6_3();
  }

  return result;
}

uint64_t sub_1D7EDF684(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v4 = sub_1D7E11428(a1, a2);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_14_7(v4);
  sub_1D8190DB4();
  return v3;
}

uint64_t sub_1D7EDF6D0()
{
  OUTLINED_FUNCTION_16_6();
  if (v4 && (v5 = v3, v6 = sub_1D7E11428(v1, v2), (v7 & 1) != 0))
  {
    v8 = v6;
    v9 = *(v5 + 56);
    v10 = sub_1D818F824();
    OUTLINED_FUNCTION_8();
    (*(v11 + 16))(v0, v9 + *(v11 + 72) * v8, v10);
    v12 = OUTLINED_FUNCTION_17_2();
  }

  else
  {
    sub_1D818F824();
    v12 = OUTLINED_FUNCTION_15_0();
  }

  return __swift_storeEnumTagSinglePayload(v12, v13, v14, v15);
}

uint64_t sub_1D7EDF770(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v4 = sub_1D7E11428(a1, a2);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_14_7(v4);

  return v3;
}

void sub_1D7EDF7BC()
{
  v2 = v0;
  if (sub_1D7E89164(v0))
  {

    v3 = sub_1D7E89164(v0);
    if (v3)
    {
      v4 = v3;
      sub_1D7E11428(0xD00000000000001CLL, 0x80000001D81C5600);
      if (v5)
      {
        OUTLINED_FUNCTION_18_0();
        swift_isUniquelyReferenced_nonNull_native();
        sub_1D7EE21A0();
        sub_1D8192374();

        sub_1D7E1C664((*(v4 + 56) + 32 * v1), v6);
        sub_1D8192384();
      }

      else
      {
        memset(v6, 0, sizeof(v6));
      }

      sub_1D7E7BAAC(v6);
      sub_1D8190D44();
      OUTLINED_FUNCTION_18_0();

      [v2 setUserInfo_];
    }

    else
    {

      [v0 setUserInfo_];
    }
  }
}

uint64_t sub_1D7EDF944@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v20[1] = a2;
  v5 = sub_1D818E8B4();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = v20 - v10;
  MEMORY[0x1EEE9AC00](v12);
  v14 = v20 - v13;
  v16 = MEMORY[0x1EEE9AC00](v15);
  v17 = *(v6 + 16);
  v17(v20 - v18, v3, v5, v16);
  (v17)(v11, v3, v5);
  (v17)(v8, a1, v5);
  sub_1D7E06A90(&qword_1EDBBC6D8, MEMORY[0x1E6969B50]);
  sub_1D8191FC4();
  sub_1D8191FB4();
  return (*(v6 + 8))(v14, v5);
}