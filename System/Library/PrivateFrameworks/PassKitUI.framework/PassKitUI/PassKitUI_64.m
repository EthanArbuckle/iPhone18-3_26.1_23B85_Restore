uint64_t type metadata accessor for FlightWidgetStatusSymbolAndMessageContent()
{
  result = qword_1EBD509E0;
  if (!qword_1EBD509E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1BD6F0F30(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD509C8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1BD6F0FAC()
{
  result = qword_1EBD509D0;
  if (!qword_1EBD509D0)
  {
    type metadata accessor for FlightWidgetStatusSymbolAndMessageView();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD509D0);
  }

  return result;
}

unint64_t sub_1BD6F1008()
{
  result = qword_1EBD509D8;
  if (!qword_1EBD509D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD509D8);
  }

  return result;
}

void sub_1BD6F1084()
{
  sub_1BD6F1110();
  if (v0 <= 0x3F)
  {
    sub_1BD6F1160();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1BD6F1110()
{
  if (!qword_1EBD509F0)
  {
    v0 = sub_1BE0534B4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBD509F0);
    }
  }
}

void sub_1BD6F1160()
{
  if (!qword_1EBD509F8)
  {
    type metadata accessor for FlightWidgetStatusMessageContent(255);
    v0 = sub_1BE0534B4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBD509F8);
    }
  }
}

id static FlightWidgetStatusMessageContent.createContent(viewModel:context:)@<X0>(uint64_t a1@<X0>, unsigned __int8 *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_1BE04BD74();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v80 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11, v12);
  v90 = &v80 - v13;
  MEMORY[0x1EEE9AC00](v14, v15);
  v89 = &v80 - v16;
  MEMORY[0x1EEE9AC00](v17, v18);
  v88 = &v80 - v19;
  MEMORY[0x1EEE9AC00](v20, v21);
  v87 = &v80 - v22;
  MEMORY[0x1EEE9AC00](v23, v24);
  v86 = &v80 - v25;
  MEMORY[0x1EEE9AC00](v26, v27);
  v85 = &v80 - v28;
  MEMORY[0x1EEE9AC00](v29, v30);
  v84 = &v80 - v31;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD50A10);
  MEMORY[0x1EEE9AC00](v32 - 8, v33);
  v35 = &v80 - v34;
  v36 = type metadata accessor for FlightWidgetStatusMessageContent.ContentType(0);
  v37 = *(v36 - 8);
  MEMORY[0x1EEE9AC00](v36, v38);
  MEMORY[0x1EEE9AC00](v39, v40);
  v43 = &v80 - v42;
  v44 = *(a1 + 16);
  if (v44)
  {
    v82 = v10;
    v83 = v7;
    v80 = v6;
    v81 = v41;
    v45 = a3;
    v46 = *(a1 + OBJC_IVAR____TtC9PassKitUI21FlightWidgetViewModel_extendedState);
    v47 = *a2;
    v48 = OBJC_IVAR____TtC9PassKitUI21FlightWidgetViewModel_boardingTime;
    v92 = *(a1 + OBJC_IVAR____TtC9PassKitUI21FlightWidgetViewModel_extendedState);
    v49 = v47;
    v91 = v47;
    v50 = v44;
    sub_1BD6F1F44(v50, a1 + v48, &v92, &v91, v35);
    if ((*(v37 + 48))(v35, 1, v36) == 1)
    {

      sub_1BD0DE53C(v35, &qword_1EBD50A10);
      v51 = type metadata accessor for FlightWidgetStatusMessageContent(0);
      return (*(*(v51 - 8) + 56))(v45, 1, 1, v51);
    }

    v55 = v43;
    sub_1BD6F4238(v35, v43);
    v56 = v49;
    if (v46 == 13)
    {
      if (v49 <= 1)
      {
        v57 = v45;
        v58 = sub_1BE0513B4();
        goto LABEL_18;
      }
    }

    else if (v49 <= 1)
    {
      v57 = v45;
      v58 = sub_1BE0513C4();
      goto LABEL_18;
    }

    v57 = v45;
    if (v49 != 2)
    {
      v59 = v83;
      v60 = v50;
      if (v56 == 3)
      {
        v61 = sub_1BE051424();
      }

      else
      {
        v61 = sub_1BE0513C4();
      }

      v62 = v61;
LABEL_19:
      v63 = v82;
      v64 = PKCurrentlyReleventFlightStepForFlight();
      v65 = [v64 status];

      if (v65 <= 1)
      {
        if (v65 != 1)
        {
          goto LABEL_32;
        }

        if (v56 <= 1)
        {
          v73 = *MEMORY[0x1E69B80C0];
          if (v56)
          {
            v66 = v85;
            (*(v59 + 104))(v85, v73, v80);
            result = PKPassKitBundle();
            if (!result)
            {
LABEL_53:
              __break(1u);
              goto LABEL_54;
            }
          }

          else
          {
            v66 = v84;
            (*(v59 + 104))(v84, v73, v80);
            result = PKPassKitBundle();
            if (!result)
            {
              __break(1u);
              goto LABEL_36;
            }
          }

          v75 = result;
          goto LABEL_47;
        }

        if (v56 == 2)
        {
          goto LABEL_39;
        }

        if (v56 != 3)
        {
          goto LABEL_32;
        }

        v66 = v87;
        (*(v59 + 104))(v87, *MEMORY[0x1E69B80C0], v80);
        result = PKPassKitBundle();
        if (result)
        {
          goto LABEL_40;
        }

        __break(1u);
      }

      if (v65 != 3)
      {
        goto LABEL_32;
      }

      if (v56 > 1)
      {
        if (v56 != 2)
        {
          if (v56 == 3)
          {
            (*(v59 + 104))(v63, *MEMORY[0x1E69B80C0], v80);
            result = PKPassKitBundle();
            if (result)
            {
              v67 = result;
              v68 = sub_1BE04B6F4();
              v70 = v69;

              v71 = v63;
              v72 = v68;
              (*(v59 + 8))(v71, v80);
LABEL_48:

              goto LABEL_49;
            }

            __break(1u);
            goto LABEL_51;
          }

LABEL_32:

          v72 = 0;
          v70 = 0;
LABEL_49:
          v77 = v81;
          sub_1BD6F4238(v55, v81);
          sub_1BD6F4238(v77, v57);
          v78 = type metadata accessor for FlightWidgetStatusMessageContent(0);
          v79 = (v57 + v78[6]);
          *v79 = v72;
          v79[1] = v70;
          *(v57 + v78[7]) = v56;
          *(v57 + v78[5]) = v62;
          return (*(*(v78 - 1) + 56))(v57, 0, 1, v78);
        }

        v66 = v90;
        (*(v59 + 104))(v90, *MEMORY[0x1E69B80C0], v80);
        result = PKPassKitBundle();
        if (!result)
        {
LABEL_52:
          __break(1u);
          goto LABEL_53;
        }

        v75 = result;
LABEL_47:
        v72 = sub_1BE04B6F4();
        v70 = v76;

        (*(v59 + 8))(v66, v80);
        goto LABEL_48;
      }

LABEL_36:
      v74 = *MEMORY[0x1E69B80C0];
      if (v56)
      {
        v66 = v89;
        (*(v59 + 104))(v89, v74, v80);
        result = PKPassKitBundle();
        if (!result)
        {
LABEL_54:
          __break(1u);
          return result;
        }
      }

      else
      {
        v66 = v88;
        (*(v59 + 104))(v88, v74, v80);
        result = PKPassKitBundle();
        if (!result)
        {
          __break(1u);
LABEL_39:
          v66 = v86;
          (*(v59 + 104))(v86, *MEMORY[0x1E69B80C0], v80);
          result = PKPassKitBundle();
          if (!result)
          {
LABEL_51:
            __break(1u);
            goto LABEL_52;
          }

LABEL_40:
          v75 = result;
          goto LABEL_47;
        }
      }

      v75 = result;
      goto LABEL_47;
    }

    v58 = sub_1BE051424();
LABEL_18:
    v62 = v58;
    v59 = v83;
    v60 = v50;
    goto LABEL_19;
  }

  v53 = type metadata accessor for FlightWidgetStatusMessageContent(0);
  v54 = *(*(v53 - 8) + 56);

  return v54(a3, 1, 1, v53);
}

uint64_t sub_1BD6F1A68()
{
  v1 = v0;
  v2 = sub_1BE04BD74();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for FlightWidgetStatusMessageContent.ContentType(0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1BE04AF64();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11, v13);
  v15 = &v37 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16, v17);
  v19 = &v37 - v18;
  sub_1BD6F5160(v1, v10);
  if (swift_getEnumCaseMultiPayload() != 3)
  {
    sub_1BD6F51C4(v10);
    return 0;
  }

  v40 = v3;
  v41 = v2;
  v20 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD50A18) + 48);
  v21 = *(v12 + 32);
  v21(v19, v10, v11);
  v21(v15, &v10[v20], v11);
  sub_1BE04ADC4();
  if (qword_1EBD36D48 != -1)
  {
    v42 = *&v22;
    swift_once();
    v22 = *&v42;
  }

  v23 = [qword_1EBD50A00 stringFromTimeInterval_];
  if (!v23)
  {
    v36 = *(v12 + 8);
    v36(v15, v11);
    v36(v19, v11);
    return 0;
  }

  v24 = v23;
  v42 = sub_1BE052434();
  v26 = v25;

  v27 = (v1 + *(type metadata accessor for FlightWidgetStatusMessageContent(0) + 24));
  v28 = v27[1];
  if (v28)
  {
    v38 = *v27;
    v39 = "nt Type: ";
    v29 = v40;
    (*(v40 + 104))(v6, *MEMORY[0x1E69B80C0], v41);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF80);
    v30 = swift_allocObject();
    *(v30 + 16) = xmmword_1BE0B6CA0;
    v31 = MEMORY[0x1E69E6158];
    *(v30 + 56) = MEMORY[0x1E69E6158];
    v32 = sub_1BD110550();
    *(v30 + 32) = v42;
    *(v30 + 40) = v26;
    *(v30 + 96) = v31;
    *(v30 + 104) = v32;
    v33 = v38;
    *(v30 + 64) = v32;
    *(v30 + 72) = v33;
    *(v30 + 80) = v28;
    sub_1BE048C84();
    v42 = sub_1BE04B714();

    (*(v29 + 8))(v6, v41);
  }

  v34 = *(v12 + 8);
  v34(v15, v11);
  v34(v19, v11);
  return v42;
}

id sub_1BD6F1E68()
{
  v0 = [objc_allocWithZone(MEMORY[0x1E696AB70]) init];
  [v0 setAllowedUnits_];
  [v0 setUnitsStyle_];
  result = [v0 setZeroFormattingBehavior_];
  qword_1EBD50A00 = v0;
  return result;
}

id sub_1BD6F1EE0()
{
  v0 = [objc_allocWithZone(MEMORY[0x1E696AB78]) init];
  [v0 setDateStyle_];
  result = [v0 setTimeStyle_];
  qword_1EBD50A08 = v0;
  return result;
}

id sub_1BD6F1F44@<X0>(void *a1@<X0>, uint64_t a2@<X1>, unsigned __int8 *a3@<X2>, unsigned __int8 *a4@<X3>, uint64_t a5@<X8>)
{
  v331 = a2;
  v9 = type metadata accessor for FlightWidgetStatusMessageContent.ContentType(0);
  v10 = *(v9 - 8);
  v337 = v9;
  v338 = v10;
  MEMORY[0x1EEE9AC00](v9, v11);
  v327 = &v299 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1BE04D214();
  v325 = *(v13 - 8);
  v326 = v13;
  MEMORY[0x1EEE9AC00](v13, v14);
  v304 = &v299 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16, v17);
  v303 = &v299 - v18;
  MEMORY[0x1EEE9AC00](v19, v20);
  v332 = &v299 - v21;
  v334 = sub_1BE04BD74();
  v336 = *(v334 - 8);
  MEMORY[0x1EEE9AC00](v334, v22);
  v318 = &v299 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24, v25);
  v317 = &v299 - v26;
  MEMORY[0x1EEE9AC00](v27, v28);
  v316 = &v299 - v29;
  MEMORY[0x1EEE9AC00](v30, v31);
  v315 = &v299 - v32;
  MEMORY[0x1EEE9AC00](v33, v34);
  v314 = &v299 - v35;
  MEMORY[0x1EEE9AC00](v36, v37);
  v312 = &v299 - v38;
  MEMORY[0x1EEE9AC00](v39, v40);
  v313 = &v299 - v41;
  MEMORY[0x1EEE9AC00](v42, v43);
  v311 = &v299 - v44;
  MEMORY[0x1EEE9AC00](v45, v46);
  v310 = &v299 - v47;
  MEMORY[0x1EEE9AC00](v48, v49);
  v309 = &v299 - v50;
  MEMORY[0x1EEE9AC00](v51, v52);
  v301 = &v299 - v53;
  MEMORY[0x1EEE9AC00](v54, v55);
  v300 = &v299 - v56;
  MEMORY[0x1EEE9AC00](v57, v58);
  v302 = &v299 - v59;
  MEMORY[0x1EEE9AC00](v60, v61);
  v299 = &v299 - v62;
  MEMORY[0x1EEE9AC00](v63, v64);
  v308 = &v299 - v65;
  MEMORY[0x1EEE9AC00](v66, v67);
  v307 = &v299 - v68;
  MEMORY[0x1EEE9AC00](v69, v70);
  v306 = &v299 - v71;
  MEMORY[0x1EEE9AC00](v72, v73);
  v305 = &v299 - v74;
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD50A10);
  MEMORY[0x1EEE9AC00](v75 - 8, v76);
  v319 = (&v299 - ((v77 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v78, v79);
  v321 = (&v299 - v80);
  MEMORY[0x1EEE9AC00](v81, v82);
  v320 = (&v299 - v83);
  MEMORY[0x1EEE9AC00](v84, v85);
  v328 = &v299 - v86;
  MEMORY[0x1EEE9AC00](v87, v88);
  v339 = (&v299 - v89);
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD39970);
  MEMORY[0x1EEE9AC00](v90 - 8, v91);
  v324 = &v299 - ((v92 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v93, v94);
  v323 = &v299 - v95;
  MEMORY[0x1EEE9AC00](v96, v97);
  v322 = &v299 - v98;
  MEMORY[0x1EEE9AC00](v99, v100);
  v329 = &v299 - v101;
  MEMORY[0x1EEE9AC00](v102, v103);
  v105 = &v299 - v104;
  v106 = sub_1BE04AF64();
  v107 = *(v106 - 8);
  MEMORY[0x1EEE9AC00](v106, v108);
  v110 = &v299 - ((v109 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v111, v112);
  v114 = &v299 - v113;
  v115 = *a3;
  LODWORD(v335) = *a4;
  v333 = a1;
  v116 = PKCurrentlyReleventFlightStepForFlight();
  v117 = [v116 currentGateTime];
  v340 = v114;
  if (v117)
  {
    v118 = v116;
    v119 = v117;
    sub_1BE04AEE4();

    v116 = a5;
    v120 = v107 + 32;
    v121 = *(v107 + 4);
    v121(v105, v110, v106);
    v122 = v107;
    v330 = *(v107 + 7);
    v330(v105, 0, 1, v106);
    v123 = (v121)(v114, v105, v106);
    a5 = v116;
    if (v115 <= 8)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v330 = *(v107 + 7);
    v330(v105, 1, 1, v106);
    v118 = v116;
    v120 = [v116 scheduledGateTime];
    sub_1BE04AEE4();

    v122 = v107;
    v123 = (*(v107 + 6))(v105, 1, v106);
    if (v123 != 1)
    {
      v123 = sub_1BD0DE53C(v105, &unk_1EBD39970);
    }

    if (v115 <= 8)
    {
LABEL_3:
      v125 = v122;
      v126 = v340;
      if (v115 > 3)
      {
        if ((v115 - 5) < 4)
        {

          v127 = v339;
          v122[2](v339, v126, v106);
          v128 = v337;
LABEL_6:
          swift_storeEnumTagMultiPayload();
          (*(v338 + 56))(v127, 0, 1, v128);
LABEL_104:
          sub_1BD6F5480(v127, a5);
          return v125[1](v126, v106);
        }

        v138 = v122;
        MEMORY[0x1EEE9AC00](v123, v124);
        *(&v299 - 2) = v126;
        MEMORY[0x1EEE9AC00](v148, &v299 - 4);
        v141 = &v299 - 4;
        *(&v299 - 2) = v118;
        *(&v299 - 1) = v126;
        v142 = sub_1BD6F54F0;
        v143 = sub_1BD6F551C;
LABEL_29:
        v127 = v339;
        sub_1BD6F429C(v142, v140, v143, v141, v118, v333, v339);

        v125 = v138;
        goto LABEL_104;
      }

      if ((v115 - 1) < 2)
      {
        v138 = v122;
        MEMORY[0x1EEE9AC00](v123, v124);
        *(&v299 - 2) = v331;
        *(&v299 - 1) = v126;
        MEMORY[0x1EEE9AC00](v139, &v299 - 4);
        v141 = &v299 - 4;
        *(&v299 - 2) = v118;
        *(&v299 - 1) = v126;
        v142 = sub_1BD6F54F8;
        v143 = sub_1BD6F5500;
        goto LABEL_29;
      }

      if (!v115)
      {

        v145 = v329;
        sub_1BD15D62C(v331, v329);
        v146 = v122[6];
        if ((v146)(v145, 1, v106) == 1)
        {
          v147 = v328;
          v122[2](v328, v126, v106);
          v125 = v122;
          if ((v146)(v145, 1, v106) != 1)
          {
            sub_1BD0DE53C(v145, &unk_1EBD39970);
          }
        }

        else
        {
          v147 = v328;
          v122[4](v328, v145, v106);
          v125 = v122;
        }

        v154 = v337;
        swift_storeEnumTagMultiPayload();
        (*(v338 + 56))(v147, 0, 1, v154);
        v127 = v339;
        sub_1BD6F5480(v147, v339);
        goto LABEL_104;
      }

      if (v335 <= 1)
      {
        v155 = v118;
        v156 = v125;
        if (v335)
        {
          v198 = v336;
          v199 = v306;
          v200 = v334;
          (*(v336 + 104))(v306, *MEMORY[0x1E69B80C0], v334);
          result = PKPassKitBundle();
          if (!result)
          {
LABEL_136:
            __break(1u);
            goto LABEL_137;
          }

          v201 = result;
          v202 = sub_1BE04B6F4();
          v204 = v203;

          (*(v198 + 8))(v199, v200);
          v127 = v339;
          *v339 = v202;
          v127[1] = v204;
        }

        else
        {
          v157 = v336;
          v158 = v305;
          v159 = v334;
          (*(v336 + 104))(v305, *MEMORY[0x1E69B80C0], v334);
          result = PKPassKitBundle();
          if (!result)
          {
            __break(1u);
LABEL_131:
            __break(1u);
LABEL_132:
            __break(1u);
            goto LABEL_133;
          }

          v160 = result;
          v161 = sub_1BE04B6F4();
          v163 = v162;

          (*(v157 + 8))(v158, v159);
          v164 = v339;
          *v339 = v161;
          v164[1] = v163;
          v127 = v164;
        }

        v205 = v337;
        swift_storeEnumTagMultiPayload();
        (*(v338 + 56))(v127, 0, 1, v205);

        v125 = v156;
        goto LABEL_103;
      }

      v149 = v334;
      if (v335 == 2)
      {
        v126 = v122;
        v129 = v336;
        v150 = v307;
        (*(v336 + 104))(v307, *MEMORY[0x1E69B80C0], v334);
        result = PKPassKitBundle();
        if (!result)
        {
LABEL_133:
          __break(1u);
          goto LABEL_134;
        }
      }

      else
      {
        v129 = v336;
        if (v335 != 3)
        {

          goto LABEL_88;
        }

        v126 = v125;
        v150 = v308;
        (*(v336 + 104))(v308, *MEMORY[0x1E69B80C0], v334);
        result = PKPassKitBundle();
        if (!result)
        {
          __break(1u);
LABEL_35:
          if (v335 > 1)
          {
            v149 = v334;
            if (v335 != 2)
            {
              if (v335 == 3)
              {
                v118 = v120;
                v126 = v125;
                v150 = v316;
                (*(v129 + 104))(v316, *MEMORY[0x1E69B80C0], v334);
                result = PKPassKitBundle();
                if (!result)
                {
                  __break(1u);
                  goto LABEL_40;
                }

                goto LABEL_83;
              }

              goto LABEL_54;
            }

            v118 = v120;
            v126 = v125;
            v150 = v315;
            (*(v129 + 104))(v315, *MEMORY[0x1E69B80C0], v334);
            result = PKPassKitBundle();
            if (result)
            {
LABEL_83:
              v192 = result;
              goto LABEL_84;
            }

LABEL_134:
            __break(1u);
LABEL_135:
            __break(1u);
            goto LABEL_136;
          }

          v118 = v120;
          v126 = v125;
          v149 = v334;
          if (v335)
          {
            v150 = v314;
            (*(v129 + 104))(v314, *MEMORY[0x1E69B80C0], v334);
            result = PKPassKitBundle();
            if (!result)
            {
LABEL_137:
              __break(1u);
              goto LABEL_138;
            }

            v192 = result;
            goto LABEL_84;
          }

          v165 = v312;
          (*(v129 + 104))(v312, *MEMORY[0x1E69B80C0], v334);
          result = PKPassKitBundle();
          if (result)
          {
            v166 = result;
LABEL_59:
            v167 = sub_1BE04B6F4();
            v169 = v168;

            (*(v129 + 8))(v165, v149);
            v170 = v339;
            *v339 = v167;
            v170[1] = v169;
LABEL_85:
            v127 = v170;
            v196 = v337;
            swift_storeEnumTagMultiPayload();
            (*(v338 + 56))(v127, 0, 1, v196);
LABEL_86:

LABEL_102:
            v125 = v126;
            goto LABEL_103;
          }

          goto LABEL_131;
        }
      }

      v192 = result;
LABEL_84:
      v193 = sub_1BE04B6F4();
      v195 = v194;

      (*(v129 + 8))(v150, v149);
      v170 = v339;
      *v339 = v193;
      v170[1] = v195;
      goto LABEL_85;
    }
  }

  v125 = v122;
  v120 = v118;
  if (v115 > 11)
  {
    v126 = v340;
    v129 = v336;
    if (v115 != 12)
    {
      if (v115 != 13)
      {
LABEL_45:

        v127 = v339;
        v128 = v337;
        goto LABEL_6;
      }

      if (v335 > 1)
      {
        if (v335 == 2 || v335 == 3)
        {
          v127 = v339;
          v144 = v337;
          swift_storeEnumTagMultiPayload();
          (*(v338 + 56))(v127, 0, 1, v144);
LABEL_55:

          goto LABEL_104;
        }

LABEL_54:
        v127 = v339;
        (*(v338 + 56))(v339, 1, 1, v337);
        goto LABEL_55;
      }

      v126 = v125;
      if (v335)
      {
        v150 = v318;
        v149 = v334;
        (*(v336 + 104))(v318, *MEMORY[0x1E69B80C0], v334);
        result = PKPassKitBundle();
        if (!result)
        {
LABEL_138:
          __break(1u);
          goto LABEL_139;
        }

        v192 = result;
        goto LABEL_84;
      }

      v165 = v317;
      v149 = v334;
      (*(v336 + 104))(v317, *MEMORY[0x1E69B80C0], v334);
      result = PKPassKitBundle();
      if (result)
      {
        v166 = result;
        goto LABEL_59;
      }

      goto LABEL_132;
    }

    goto LABEL_35;
  }

  v129 = v336;
  v130 = v332;
  if (v115 == 9)
  {
    goto LABEL_64;
  }

  if (v115 != 10)
  {
LABEL_40:
    if (v335 > 1)
    {
      v152 = v334;
      if (v335 != 2)
      {
        if (v335 == 3)
        {
          v126 = v125;
          v153 = v313;
          (*(v129 + 104))(v313, *MEMORY[0x1E69B80C0], v334);
          result = PKPassKitBundle();
          if (!result)
          {
            __break(1u);
            goto LABEL_45;
          }

          goto LABEL_90;
        }

        v127 = v339;
        (*(v338 + 56))(v339, 1, 1, v337);

LABEL_103:
        v126 = v340;
        goto LABEL_104;
      }

      v126 = v125;
      v153 = v311;
      (*(v129 + 104))(v311, *MEMORY[0x1E69B80C0], v334);
      result = PKPassKitBundle();
      if (result)
      {
LABEL_90:
        v197 = result;
LABEL_101:
        v206 = sub_1BE04B6F4();
        v208 = v207;

        (*(v129 + 8))(v153, v152);
        v209 = v339;
        *v339 = v206;
        v209[1] = v208;
        v127 = v209;
        v210 = v337;
        swift_storeEnumTagMultiPayload();
        (*(v338 + 56))(v127, 0, 1, v210);

        goto LABEL_102;
      }

      goto LABEL_135;
    }

    v126 = v125;
    v152 = v334;
    if (v335)
    {
      v153 = v310;
      (*(v129 + 104))(v310, *MEMORY[0x1E69B80C0], v334);
      result = PKPassKitBundle();
      if (!result)
      {
LABEL_139:
        __break(1u);
LABEL_140:
        __break(1u);
LABEL_141:
        __break(1u);
        goto LABEL_142;
      }
    }

    else
    {
      v153 = v309;
      (*(v129 + 104))(v309, *MEMORY[0x1E69B80C0], v334);
      result = PKPassKitBundle();
      if (!result)
      {
        __break(1u);
        goto LABEL_63;
      }
    }

    v197 = result;
    goto LABEL_101;
  }

  v131 = [v118 baggageClaim];
  if (!v131)
  {
    goto LABEL_64;
  }

  v116 = v118;
  v132 = v335 & 0xFE;
  v133 = v131;
  v134 = sub_1BE052434();
  v136 = v135;

  if (v132 == 2)
  {

    v127 = v339;
    *v339 = v134;
    v127[1] = v136;
    v137 = v337;
    swift_storeEnumTagMultiPayload();
    (*(v338 + 56))(v127, 0, 1, v137);
    goto LABEL_103;
  }

LABEL_63:

  v120 = v116;
  v130 = v332;
LABEL_64:
  if (v335 > 1)
  {
    v126 = v340;
    if (v335 != 2)
    {

LABEL_88:
      v127 = v339;
      (*(v338 + 56))(v339, 1, 1, v337);
      goto LABEL_104;
    }

    v176 = v125;
    v177 = [v120 status];
    v178 = [v120 currentGateTime];
    if (!v178)
    {
      v332 = v120;
      v211 = v324;
      v330(v324, 1, 1, v106);
      sub_1BD0DE53C(v211, &unk_1EBD39970);
      v212 = v304;
      sub_1BE04D1D4();
      v213 = v333;
      v214 = sub_1BE04D204();
      v215 = sub_1BE052C34();

      if (os_log_type_enabled(v214, v215))
      {
        v216 = swift_slowAlloc();
        v217 = swift_slowAlloc();
        v341 = v217;
        *v216 = 136315138;
        v218 = [v213 identifier];
        v219 = sub_1BE052434();
        v221 = v220;

        v222 = sub_1BD123690(v219, v221, &v341);

        *(v216 + 4) = v222;
        _os_log_impl(&dword_1BD026000, v214, v215, "Expected currentGateTime to be set. Falling back to onTime content | flightID=%s", v216, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v217);
        v223 = v217;
        v126 = v340;
        MEMORY[0x1BFB45F20](v223, -1, -1);
        MEMORY[0x1BFB45F20](v216, -1, -1);

        (*(v325 + 8))(v304, v326);
      }

      else
      {

        (*(v325 + 8))(v212, v326);
      }

      v127 = v339;
      *v339 = 2743173364;
      v127[1] = 0xA400000000000000;
      v290 = v337;
      swift_storeEnumTagMultiPayload();
      (*(v338 + 56))(v127, 0, 1, v290);

      v125 = v176;
      goto LABEL_104;
    }

    v179 = v324;
    v180 = v178;
    sub_1BE04AEE4();

    v330(v179, 0, 1, v106);
    sub_1BD0DE53C(v179, &unk_1EBD39970);
    if (v177 != 1 && v177 != 3)
    {
      v271 = v319;
      *v319 = 2743173364;
      v271[1] = 0xA400000000000000;
      v272 = v337;
      swift_storeEnumTagMultiPayload();
      (*(v338 + 56))(v271, 0, 1, v272);
      v273 = v271;
      v127 = v339;
      sub_1BD6F5480(v273, v339);

      v125 = v176;
      goto LABEL_104;
    }

    v257 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD50A18) + 48);
    v258 = [v120 scheduledGateTime];
    v259 = v327;
    sub_1BE04AEE4();

    v125 = v176;
    v176[2](&v259[v257], v126, v106);
    v260 = v337;
    swift_storeEnumTagMultiPayload();
    v261 = v259;
    v262 = &v342;
    goto LABEL_115;
  }

  v126 = v340;
  if (!v335)
  {
    v335 = v125;
    v171 = [v120 status];
    v172 = [v120 currentGateTime];
    v173 = v334;
    if (v172)
    {
      v174 = v322;
      v175 = v172;
      sub_1BE04AEE4();

      v330(v174, 0, 1, v106);
      sub_1BD0DE53C(v174, &unk_1EBD39970);
      if (v171 == 1 || v171 == 3)
      {
        v263 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD50A18) + 48);
        v264 = [v120 scheduledGateTime];
        v265 = v327;
        sub_1BE04AEE4();

        v125 = v335;
        (v335[2])(&v265[v263], v126, v106);
        v260 = v337;
        swift_storeEnumTagMultiPayload();
        v261 = v265;
        v262 = &v343;
LABEL_115:
        v266 = *(v262 - 32);
LABEL_116:
        sub_1BD6F4238(v261, v266);
        (*(v338 + 56))(v266, 0, 1, v260);
        v127 = v339;
        sub_1BD6F5480(v266, v339);

        goto LABEL_104;
      }

      v274 = v299;
      (*(v129 + 104))(v299, *MEMORY[0x1E69B80C0], v173);
      result = PKPassKitBundle();
      if (!result)
      {
LABEL_142:
        __break(1u);
        goto LABEL_143;
      }

      v275 = result;
      v276 = v173;
      v277 = sub_1BE04B6F4();
      v279 = v278;

      (*(v129 + 8))(v274, v276);
      v280 = v320;
      *v320 = v277;
      *(v280 + 8) = v279;
      v281 = v337;
      swift_storeEnumTagMultiPayload();
      (*(v338 + 56))(v280, 0, 1, v281);
      v127 = v339;
      sub_1BD6F5480(v280, v339);
LABEL_129:

      v125 = v335;
      goto LABEL_104;
    }

    v332 = v120;
    v224 = v322;
    v330(v322, 1, 1, v106);
    sub_1BD0DE53C(v224, &unk_1EBD39970);
    sub_1BE04D1D4();
    v225 = v333;
    v226 = sub_1BE04D204();
    v227 = sub_1BE052C34();

    if (os_log_type_enabled(v226, v227))
    {
      v228 = swift_slowAlloc();
      v229 = swift_slowAlloc();
      v341 = v229;
      *v228 = 136315138;
      v230 = [v225 identifier];
      v231 = sub_1BE052434();
      v233 = v232;

      v234 = sub_1BD123690(v231, v233, &v341);
      v129 = v336;

      *(v228 + 4) = v234;
      _os_log_impl(&dword_1BD026000, v226, v227, "Expected currentGateTime to be set. Falling back to onTime content | flightID=%s", v228, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v229);
      v235 = v229;
      v126 = v340;
      MEMORY[0x1BFB45F20](v235, -1, -1);
      v236 = v228;
      v173 = v334;
      MEMORY[0x1BFB45F20](v236, -1, -1);
    }

    (*(v325 + 8))(v130, v326);
    v237 = v302;
    (*(v129 + 104))(v302, *MEMORY[0x1E69B80C0], v173);
    result = PKPassKitBundle();
    v120 = v332;
    if (!result)
    {
      goto LABEL_140;
    }

    v238 = result;
    v239 = v173;
    v240 = sub_1BE04B6F4();
    v242 = v241;

    (*(v129 + 8))(v237, v239);
    v127 = v339;
    *v339 = v240;
    v127[1] = v242;
LABEL_128:
    v298 = v337;
    swift_storeEnumTagMultiPayload();
    (*(v338 + 56))(v127, 0, 1, v298);
    goto LABEL_129;
  }

  v181 = [v120 status];
  v182 = [v120 currentGateTime];
  if (!v182)
  {
    v332 = v120;
    v335 = v125;
    v243 = v323;
    v330(v323, 1, 1, v106);
    sub_1BD0DE53C(v243, &unk_1EBD39970);
    v244 = v303;
    sub_1BE04D1D4();
    v245 = v333;
    v246 = sub_1BE04D204();
    v247 = sub_1BE052C34();

    if (os_log_type_enabled(v246, v247))
    {
      v248 = swift_slowAlloc();
      v249 = v126;
      v250 = swift_slowAlloc();
      v341 = v250;
      *v248 = 136315138;
      v251 = [v245 identifier];
      v252 = sub_1BE052434();
      v254 = v253;

      v255 = sub_1BD123690(v252, v254, &v341);
      v129 = v336;

      *(v248 + 4) = v255;
      _os_log_impl(&dword_1BD026000, v246, v247, "Expected currentGateTime to be set. Falling back to onTime content | flightID=%s", v248, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v250);
      v256 = v250;
      v126 = v249;
      MEMORY[0x1BFB45F20](v256, -1, -1);
      MEMORY[0x1BFB45F20](v248, -1, -1);

      (*(v325 + 8))(v303, v326);
    }

    else
    {

      (*(v325 + 8))(v244, v326);
    }

    v291 = v301;
    v292 = v334;
    (*(v129 + 104))(v301, *MEMORY[0x1E69B80C0], v334);
    result = PKPassKitBundle();
    v120 = v332;
    if (!result)
    {
      goto LABEL_141;
    }

    v293 = result;
    v294 = sub_1BE04B6F4();
    v296 = v295;

    (*(v129 + 8))(v291, v292);
    v297 = v339;
    *v339 = v294;
    v297[1] = v296;
    v127 = v297;
    goto LABEL_128;
  }

  v183 = v323;
  v184 = v182;
  sub_1BE04AEE4();

  v330(v183, 0, 1, v106);
  sub_1BD0DE53C(v183, &unk_1EBD39970);
  if (v181 == 1)
  {
    v267 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD50A18) + 48);
    v268 = v125;
    v269 = [v120 scheduledGateTime];
    v270 = v327;
    sub_1BE04AEE4();

    v125 = v268;
    v268[2](&v270[v267], v126, v106);
    v260 = v337;
    swift_storeEnumTagMultiPayload();
    v261 = v270;
    v266 = v321;
    goto LABEL_116;
  }

  v118 = v120;
  v126 = v125;
  if (v181 == 3)
  {
    v185 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD50A18) + 48);
    v186 = v120;
    v187 = [v120 scheduledGateTime];
    v188 = v327;
    sub_1BE04AEE4();

    v125 = v126;
    v189 = *(v126 + 2);
    v126 = v340;
    v189(v188 + v185, v340, v106);
    v190 = v337;
    swift_storeEnumTagMultiPayload();
    v191 = v321;
    sub_1BD6F4238(v188, v321);
    (*(v338 + 56))(v191, 0, 1, v190);
    v127 = v339;
    sub_1BD6F5480(v191, v339);

    goto LABEL_104;
  }

  v282 = v300;
  v283 = v334;
  (*(v129 + 104))(v300, *MEMORY[0x1E69B80C0], v334);
  result = PKPassKitBundle();
  if (result)
  {
    v284 = result;
    v285 = sub_1BE04B6F4();
    v287 = v286;

    (*(v129 + 8))(v282, v283);
    v288 = v321;
    *v321 = v285;
    v288[1] = v287;
    v289 = v337;
    swift_storeEnumTagMultiPayload();
    (*(v338 + 56))(v288, 0, 1, v289);
    v127 = v339;
    sub_1BD6F5480(v288, v339);
    goto LABEL_86;
  }

LABEL_143:
  __break(1u);
  return result;
}

uint64_t sub_1BD6F4238(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FlightWidgetStatusMessageContent.ContentType(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BD6F429C@<X0>(void (*a1)(void)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X4>, void *a6@<X5>, uint64_t a7@<X8>)
{
  v59 = a3;
  v60 = a6;
  v58[1] = a4;
  v61 = a2;
  v62 = a1;
  v63 = a7;
  v8 = sub_1BE04D214();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = v58 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD39970);
  MEMORY[0x1EEE9AC00](v13 - 8, v14);
  v16 = v58 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD50A10);
  MEMORY[0x1EEE9AC00](v17 - 8, v18);
  v20 = v58 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21, v22);
  v24 = v58 - v23;
  MEMORY[0x1EEE9AC00](v25, v26);
  v28 = v58 - v27;
  v31 = MEMORY[0x1EEE9AC00](v29, v30);
  v33 = v58 - v32;
  v34 = [a5 status];
  v35 = [a5 currentGateTime];
  if (v35)
  {
    v36 = v35;
    sub_1BE04AEE4();

    v37 = sub_1BE04AF64();
    (*(*(v37 - 8) + 56))(v16, 0, 1, v37);
    v38 = sub_1BD0DE53C(v16, &unk_1EBD39970);
    if (v34 == 1)
    {
      (v62)(v38);
      sub_1BD6F5480(v20, v33);
      v57 = v63;
    }

    else if (v34 == 3)
    {
      (v59)(v38);
      v39 = type metadata accessor for FlightWidgetStatusMessageContent.ContentType(0);
      v40 = *(v39 - 8);
      v41 = *(v40 + 48);
      if (v41(v24, 1, v39) == 1)
      {
        v62();
        v42 = v41(v24, 1, v39);
        v43 = v63;
        if (v42 != 1)
        {
          sub_1BD0DE53C(v24, &qword_1EBD50A10);
        }
      }

      else
      {
        sub_1BD6F4238(v24, v28);
        (*(v40 + 56))(v28, 0, 1, v39);
        v43 = v63;
      }

      sub_1BD6F5480(v28, v33);
      v57 = v43;
    }

    else
    {
      (v62)(v38);
      v57 = v63;
    }

    return sub_1BD6F5480(v33, v57);
  }

  else
  {
    v59 = v9;
    v44 = sub_1BE04AF64();
    (*(*(v44 - 8) + 56))(v16, 1, 1, v44);
    sub_1BD0DE53C(v16, &unk_1EBD39970);
    sub_1BE04D1D4();
    v45 = v60;
    v46 = sub_1BE04D204();
    v47 = sub_1BE052C34();

    if (os_log_type_enabled(v46, v47))
    {
      v48 = swift_slowAlloc();
      v49 = swift_slowAlloc();
      v64 = v49;
      *v48 = 136315138;
      v50 = [v45 identifier];
      v51 = sub_1BE052434();
      v53 = v52;

      v54 = sub_1BD123690(v51, v53, &v64);

      *(v48 + 4) = v54;
      _os_log_impl(&dword_1BD026000, v46, v47, "Expected currentGateTime to be set. Falling back to onTime content | flightID=%s", v48, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v49);
      MEMORY[0x1BFB45F20](v49, -1, -1);
      MEMORY[0x1BFB45F20](v48, -1, -1);
    }

    v55 = (*(v59 + 8))(v12, v8);
    return (v62)(v55);
  }
}

uint64_t sub_1BD6F47DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1BE04AF64();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  v5 = type metadata accessor for FlightWidgetStatusMessageContent.ContentType(0);
  swift_storeEnumTagMultiPayload();
  v6 = *(*(v5 - 8) + 56);

  return v6(a2, 0, 1, v5);
}

uint64_t sub_1BD6F489C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD39970);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v9 = &v15 - v8;
  sub_1BD15D62C(a1, &v15 - v8);
  v10 = sub_1BE04AF64();
  v11 = *(v10 - 8);
  v12 = *(v11 + 48);
  if (v12(v9, 1, v10) == 1)
  {
    (*(v11 + 16))(a3, a2, v10);
    if (v12(v9, 1, v10) != 1)
    {
      sub_1BD0DE53C(v9, &unk_1EBD39970);
    }
  }

  else
  {
    (*(v11 + 32))(a3, v9, v10);
  }

  v13 = type metadata accessor for FlightWidgetStatusMessageContent.ContentType(0);
  swift_storeEnumTagMultiPayload();
  return (*(*(v13 - 8) + 56))(a3, 0, 1, v13);
}

uint64_t sub_1BD6F4A5C@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD50A18) + 48);
  v7 = [a1 scheduledGateTime];
  sub_1BE04AEE4();

  v8 = sub_1BE04AF64();
  (*(*(v8 - 8) + 16))(a3 + v6, a2, v8);
  v9 = type metadata accessor for FlightWidgetStatusMessageContent.ContentType(0);
  swift_storeEnumTagMultiPayload();
  v10 = *(*(v9 - 8) + 56);

  return v10(a3, 0, 1, v9);
}

unint64_t FlightWidgetStatusMessageContent.debugDescription.getter()
{
  v1 = v0;
  v2 = sub_1BE04AF64();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v42 - v9;
  v11 = type metadata accessor for FlightWidgetStatusMessageContent.ContentType(0);
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v42 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15, v16);
  v18 = &v42 - v17;
  v44 = 0xD000000000000022;
  v45 = 0x80000001BE136450;
  sub_1BD6F5160(v1, &v42 - v17);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      (*(v3 + 32))(v10, v18, v2);
      v42 = 0;
      v43 = 0xE000000000000000;
      sub_1BE053834();

      v42 = 0xD000000000000026;
      v43 = 0x80000001BE136560;
      if (qword_1EBD36D50 != -1)
      {
        swift_once();
      }

      v34 = qword_1EBD50A08;
      v35 = sub_1BE04AE64();
      v36 = [v34 stringFromDate_];

      v37 = sub_1BE052434();
      v39 = v38;

      MEMORY[0x1BFB3F610](v37, v39);

      MEMORY[0x1BFB3F610](32034, 0xE200000000000000);
      MEMORY[0x1BFB3F610](v42, v43);

      (*(v3 + 8))(v10, v2);
    }

    else
    {
      v26 = *v18;
      v27 = *(v18 + 1);
      v42 = 0;
      v43 = 0xE000000000000000;
      sub_1BE053834();

      v42 = 0xD00000000000001ALL;
      v43 = 0x80000001BE136590;
      MEMORY[0x1BFB3F610](v26, v27);

      MEMORY[0x1BFB3F610](32034, 0xE200000000000000);
      MEMORY[0x1BFB3F610](v42, v43);
    }

    return v44;
  }

  if (EnumCaseMultiPayload == 2)
  {
    sub_1BD6F5160(v1, v14);
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      (*(v3 + 32))(v6, v14, v2);
      if (qword_1EBD36D50 != -1)
      {
        swift_once();
      }

      v28 = qword_1EBD50A08;
      v29 = sub_1BE04AE64();
      v30 = [v28 stringFromDate_];

      v31 = sub_1BE052434();
      v33 = v32;

      (*(v3 + 8))(v6, v2);
      v42 = 0;
      v43 = 0xE000000000000000;
      sub_1BE053834();

      v42 = 0xD000000000000017;
      v43 = 0x80000001BE1364E0;
      MEMORY[0x1BFB3F610](v31, v33);

      MEMORY[0x1BFB3F610](32034, 0xE200000000000000);
      MEMORY[0x1BFB3F610](v42, v43);

      sub_1BD6F51C4(v18);
      return v44;
    }

    sub_1BD6F51C4(v14);
    sub_1BD6F51C4(v18);
    return 0xD000000000000033;
  }

  else
  {
    if (EnumCaseMultiPayload != 3)
    {
      MEMORY[0x1BFB3F610](0xD00000000000001CLL, 0x80000001BE136480);
      return v44;
    }

    v20 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD50A18) + 48);
    v21 = sub_1BD6F1A68();
    if (v22)
    {
      v23 = v21;
      v24 = v22;
      v42 = 0;
      v43 = 0xE000000000000000;
      sub_1BE053834();

      v42 = 0xD00000000000001DLL;
      v43 = 0x80000001BE136540;
      MEMORY[0x1BFB3F610](v23, v24);

      MEMORY[0x1BFB3F610](32034, 0xE200000000000000);
      MEMORY[0x1BFB3F610](v42, v43);

      v25 = *(v3 + 8);
      v25(&v18[v20], v2);
      v25(v18, v2);
      return v44;
    }

    v41 = *(v3 + 8);
    v41(&v18[v20], v2);
    v41(v18, v2);
    return 0xD000000000000038;
  }
}

uint64_t sub_1BD6F5160(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FlightWidgetStatusMessageContent.ContentType(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BD6F51C4(uint64_t a1)
{
  v2 = type metadata accessor for FlightWidgetStatusMessageContent.ContentType(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1BD6F5224()
{
  result = qword_1EBD50A20;
  if (!qword_1EBD50A20)
  {
    type metadata accessor for FlightWidgetStatusMessageView();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD50A20);
  }

  return result;
}

void sub_1BD6F52A8()
{
  type metadata accessor for FlightWidgetStatusMessageContent.ContentType(319);
  if (v0 <= 0x3F)
  {
    sub_1BD1C86BC();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1BD6F533C()
{
  sub_1BD6F53D0();
  if (v0 <= 0x3F)
  {
    sub_1BE04AF64();
    if (v1 <= 0x3F)
    {
      sub_1BD6F5418();
      if (v2 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      }
    }
  }
}

void sub_1BD6F53D0()
{
  if (!qword_1EBD50A48)
  {
    v0 = sub_1BE04AF64();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBD50A48);
    }
  }
}

void sub_1BD6F5418()
{
  if (!qword_1EBD50A50)
  {
    sub_1BE04AF64();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EBD50A50);
    }
  }
}

uint64_t sub_1BD6F5480(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD50A10);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t FlightWidgetStatusMessageView.body.getter()
{
  sub_1BD6F57B4(__dst);
  v13 = __dst[4];
  *v14 = __dst[5];
  *&v14[12] = *(&__dst[5] + 12);
  v9 = __dst[0];
  v10 = __dst[1];
  v11 = __dst[2];
  v12 = __dst[3];
  KeyPath = swift_getKeyPath();
  LOBYTE(__src[0]) = 0;
  v2 = sub_1BD6F670C();
  v3 = swift_getKeyPath();
  v4 = *(v0 + *(type metadata accessor for FlightWidgetStatusMessageContent(0) + 20));
  v5 = swift_getKeyPath();
  sub_1BE048964();
  sub_1BE051CD4();
  sub_1BE04E5E4();
  sub_1BE051CF4();
  sub_1BE04EE54();
  __src[4] = v13;
  __src[5] = *v14;
  __src[6] = *&v14[16];
  __src[0] = v9;
  __src[1] = v10;
  __src[2] = v11;
  __src[3] = v12;
  __src[12] = __dst[22];
  __src[13] = __dst[23];
  __src[11] = __dst[21];
  *&__src[7] = KeyPath;
  *(&__src[7] + 1) = 1;
  LOBYTE(__src[8]) = 0;
  *(&__src[8] + 1) = v3;
  *&__src[9] = v2;
  *(&__src[9] + 1) = v4;
  *&__src[10] = v5;
  *(&__src[10] + 1) = 0x3FE0000000000000;
  sub_1BE052434();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD50A58);
  sub_1BD6F6DEC();
  sub_1BE050DE4();

  memcpy(__dst, __src, 0x150uLL);
  return sub_1BD0DE53C(__dst, &qword_1EBD50A58);
}

id sub_1BD6F57B4@<X0>(_OWORD *a1@<X8>)
{
  v119 = a1;
  v2 = sub_1BE04BD74();
  v111 = *(v2 - 8);
  v112 = v2;
  MEMORY[0x1EEE9AC00](v2, v3);
  v110 = &v104 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1BE050604();
  v114 = *(v5 - 8);
  v115 = v5;
  MEMORY[0x1EEE9AC00](v5, v6);
  v113 = &v104 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1BE050624();
  v109 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v104 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1BE050654();
  MEMORY[0x1EEE9AC00](v12 - 8, v13);
  v15 = (&v104 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = sub_1BE04AF64();
  v117 = *(v16 - 8);
  v118 = v16;
  MEMORY[0x1EEE9AC00](v16, v17);
  v108 = &v104 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19, v20);
  v22 = &v104 - v21;
  MEMORY[0x1EEE9AC00](v23, v24);
  v26 = &v104 - v25;
  v27 = type metadata accessor for FlightWidgetStatusMessageContent.ContentType(0);
  MEMORY[0x1EEE9AC00](v27, v28);
  v30 = &v104 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v31, v32);
  v34 = &v104 - v33;
  sub_1BD6F7840(v1, &v104 - v33, type metadata accessor for FlightWidgetStatusMessageContent.ContentType);
  v116 = v34;
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    v111 = v15;
    v112 = v8;
    v49 = v113;
    v50 = v114;
    v51 = v115;
    if (EnumCaseMultiPayload)
    {
      v84 = v117;
      v85 = v118;
      (*(v117 + 32))(v26, v116, v118);
      v107 = v26;
      *&v159 = sub_1BD6F6A08();
      *(&v159 + 1) = v86;
      sub_1BD0DDEBC();
      v116 = sub_1BE0506C4();
      v110 = v87;
      v106 = v88;
      v108 = v89;
      v105 = sub_1BE051CF4();
      v91 = v90;
      (*(v84 + 16))(v22, v26, v85);
      (*(v50 + 104))(v49, *MEMORY[0x1E69810E0], v51);
      sub_1BE050614();
      sub_1BE050644();
      (*(v109 + 8))(v11, v112);
      v92 = sub_1BE050684();
      v94 = v93;
      LOBYTE(v85) = v95;
      v97 = v96;
      KeyPath = swift_getKeyPath();
      *(&v121 + 1) = v147;
      DWORD1(v121) = *(&v147 + 3);
      *(&v122 + 9) = v133;
      HIDWORD(v122) = *(&v133 + 3);
      v139 = v85 & 1;
      *&v120 = v92;
      *(&v120 + 1) = v94;
      LOBYTE(v121) = v85 & 1;
      *(&v121 + 1) = v97;
      *&v122 = KeyPath;
      v140 = v106 & 1;
      BYTE8(v122) = 2;
      *&v123 = v105;
      *(&v123 + 1) = v91;
      *v161 = v122;
      *&v161[16] = v123;
      v159 = v120;
      v160 = v121;
      v124[0] = v92;
      v124[1] = v94;
      v125 = v85 & 1;
      *&v126[3] = *(&v147 + 3);
      *v126 = v147;
      v127 = v97;
      v128 = KeyPath;
      v129 = 2;
      *&v130[3] = *(&v133 + 3);
      *v130 = v133;
      v131 = v105;
      v132 = v91;
      sub_1BD0DE19C(&v120, &v141, &qword_1EBD50B10);
      sub_1BD0DE53C(v124, &qword_1EBD50B10);
      LOBYTE(v91) = v140;
      v99 = swift_getKeyPath();
      *&v133 = v116;
      *(&v133 + 1) = v110;
      LOBYTE(v134) = v91;
      *(&v134 + 1) = v108;
      v135 = v159;
      v136[0] = v160;
      v136[1] = *v161;
      *v137 = *&v161[16];
      *&v137[16] = v99;
      v137[24] = 2;
      *&v161[57] = *&v137[9];
      v159 = v133;
      v160 = v134;
      *&v161[32] = *v161;
      *&v161[48] = *&v161[16];
      *v161 = v135;
      *&v161[16] = v136[0];
      v138 = 1;
      v161[73] = 1;
      sub_1BD0DE19C(&v133, &v141, &qword_1EBD50AF0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD50AF0);
      sub_1BD6F7388();
      sub_1BE04F9A4();
      *&v161[32] = v144[1];
      *&v161[48] = *v145;
      *&v161[58] = *&v145[10];
      v159 = v141;
      v160 = v142;
      *v161 = v143;
      *&v161[16] = v144[0];
      v139 = 0;
      v161[74] = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD50AE0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3ABA8);
      sub_1BD6F72FC();
      sub_1BD170E70();
      sub_1BE04F9A4();
      v144[1] = v151;
      *v145 = v152[0];
      *&v145[11] = *(v152 + 11);
      v141 = v147;
      v142 = v148;
      v143 = v149;
      v144[0] = v150;
      v140 = 0;
      v146 = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD50AD0);
      sub_1BD6F7270();
      sub_1BE04F9A4();
      sub_1BD0DE53C(&v133, &qword_1EBD50AF0);
      v157 = *&v161[32];
      v158[0] = *&v161[48];
      *(v158 + 12) = *&v161[60];
      v153 = v159;
      v154 = v160;
      v155 = *v161;
      v156 = *&v161[16];
      result = (*(v117 + 8))(v107, v118);
    }

    else
    {
      v52 = v116[1];
      *&v159 = *v116;
      *(&v159 + 1) = v52;
      sub_1BD0DDEBC();
      v53 = sub_1BE0506C4();
      v55 = v54;
      v57 = v56 & 1;
      LOBYTE(v120) = v56 & 1;
      v140 = 0;
      *&v159 = v53;
      *(&v159 + 1) = v54;
      LOBYTE(v160) = v56 & 1;
      *(&v160 + 1) = v58;
      v161[73] = 0;
      sub_1BD0D7F18(v53, v54, v56 & 1);
      sub_1BE048C84();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD50AF0);
      sub_1BD6F7388();
      sub_1BE04F9A4();
      *&v161[32] = v144[1];
      *&v161[48] = *v145;
      *&v161[58] = *&v145[10];
      v159 = v141;
      v160 = v142;
      *v161 = v143;
      *&v161[16] = v144[0];
      LOBYTE(v124[0]) = 0;
      v161[74] = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD50AE0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3ABA8);
      sub_1BD6F72FC();
      sub_1BD170E70();
      sub_1BE04F9A4();
      v144[1] = v151;
      *v145 = v152[0];
      *&v145[11] = *(v152 + 11);
      v141 = v147;
      v142 = v148;
      v143 = v149;
      v144[0] = v150;
      LOBYTE(v133) = 0;
      v146 = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD50AD0);
      sub_1BD6F7270();
      sub_1BE04F9A4();
      sub_1BD0DDF10(v53, v55, v57);

      v157 = *&v161[32];
      v158[0] = *&v161[48];
      *(v158 + 12) = *&v161[60];
      v153 = v159;
      v154 = v160;
      v155 = *v161;
      v156 = *&v161[16];
    }

    goto LABEL_15;
  }

  if (EnumCaseMultiPayload == 2)
  {
    sub_1BD6F7840(v1, v30, type metadata accessor for FlightWidgetStatusMessageContent.ContentType);
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      v60 = v117;
      v59 = v118;
      v61 = v108;
      (*(v117 + 32))(v108, v30, v118);
      if (qword_1EBD36D50 != -1)
      {
        swift_once();
      }

      v62 = qword_1EBD50A08;
      v63 = sub_1BE04AE64();
      v64 = [v62 stringFromDate_];

      v65 = sub_1BE052434();
      v67 = v66;

      (*(v60 + 8))(v61, v59);
      *&v159 = v65;
      *(&v159 + 1) = v67;
      sub_1BD0DDEBC();
      v68 = sub_1BE0506C4();
      v70 = v69;
      *&v141 = v68;
      *(&v141 + 1) = v69;
      LOBYTE(v64) = v71 & 1;
      *&v142 = v71 & 1;
      *(&v142 + 1) = v72;
      LOBYTE(v143) = 0;
      sub_1BD0D7F18(v68, v69, v71 & 1);
      sub_1BE048C84();
      sub_1BE04F9A4();
      *&v161[17] = v134;
      *&v161[33] = v135;
      LOBYTE(v120) = v161[0];
      v140 = 1;
      *&v161[49] = v136[0];
      *&v161[58] = *(v136 + 9);
      *&v161[1] = v133;
      v161[74] = 1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD50AE0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3ABA8);
      sub_1BD6F72FC();
      sub_1BD170E70();
      sub_1BE04F9A4();
      v144[1] = v151;
      *v145 = v152[0];
      *&v145[11] = *(v152 + 11);
      v141 = v147;
      v142 = v148;
      v143 = v149;
      v144[0] = v150;
      LOBYTE(v124[0]) = 0;
      v146 = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD50AD0);
      sub_1BD6F7270();
      sub_1BE04F9A4();
      sub_1BD0DDF10(v68, v70, v64);

      v157 = *&v161[32];
      v158[0] = *&v161[48];
      *(v158 + 12) = *&v161[60];
      v153 = v159;
      v154 = v160;
      v155 = *v161;
      v156 = *&v161[16];
      result = sub_1BD6F51C4(v116);
      goto LABEL_15;
    }

    result = sub_1BD6F51C4(v30);
    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (EnumCaseMultiPayload == 3)
  {
    result = sub_1BD6F1A68();
    if (v37)
    {
      v38 = result;
      v39 = v37;
      v115 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD50A18) + 48);
      *&v159 = v38;
      *(&v159 + 1) = v39;
      sub_1BD0DDEBC();
      v40 = sub_1BE0506C4();
      v42 = v41;
      v44 = v43 & 1;
      *&v141 = v40;
      *(&v141 + 1) = v41;
      *&v142 = v43 & 1;
      *(&v142 + 1) = v45;
      LOBYTE(v143) = 1;
      sub_1BD0D7F18(v40, v41, v43 & 1);
      sub_1BE048C84();
      sub_1BE04F9A4();
      LOBYTE(v124[0]) = v161[0];
      LOBYTE(v120) = 1;
      v161[74] = 1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD50AE0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3ABA8);
      sub_1BD6F72FC();
      sub_1BD170E70();
      sub_1BE04F9A4();
      v144[1] = v151;
      *v145 = v152[0];
      *&v145[11] = *(v152 + 11);
      v141 = v147;
      v142 = v148;
      v143 = v149;
      v144[0] = v150;
      LOBYTE(v133) = 0;
      v146 = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD50AD0);
      sub_1BD6F7270();
      sub_1BE04F9A4();
      sub_1BD0DDF10(v40, v42, v44);

      v157 = *&v161[32];
      v158[0] = *&v161[48];
      *(v158 + 12) = *&v161[60];
      v153 = v159;
      v154 = v160;
      v155 = *v161;
      v156 = *&v161[16];
      v46 = v116;
      v47 = *(v117 + 8);
      v48 = v118;
      v47(v116 + v115, v118);
      result = (v47)(v46, v48);
LABEL_15:
      v100 = v158[0];
      v101 = v119;
      v119[4] = v157;
      v101[5] = v100;
      *(v101 + 92) = *(v158 + 12);
      v102 = v154;
      *v101 = v153;
      v101[1] = v102;
      v103 = v156;
      v101[2] = v155;
      v101[3] = v103;
      return result;
    }

    goto LABEL_17;
  }

  v74 = v110;
  v73 = v111;
  v75 = v112;
  (v111[13])(v110, *MEMORY[0x1E69B80C0], v112);
  result = PKPassKitBundle();
  if (result)
  {
    v76 = result;
    v77 = sub_1BE04B6F4();
    v79 = v78;

    v73[1](v74, v75);
    *&v159 = v77;
    *(&v159 + 1) = v79;
    sub_1BD0DDEBC();
    v80 = sub_1BE0506C4();
    LOBYTE(v133) = v81 & 1;
    LOBYTE(v124[0]) = 1;
    *&v159 = v80;
    *(&v159 + 1) = v82;
    LOBYTE(v160) = v81 & 1;
    *(&v160 + 1) = v147;
    DWORD1(v160) = *(&v147 + 3);
    *(&v160 + 1) = v83;
    *&v161[32] = v143;
    *&v161[48] = v144[0];
    *&v161[59] = *(v144 + 11);
    *v161 = v141;
    *&v161[16] = v142;
    v161[75] = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD50AD0);
    sub_1BD6F7270();
    result = sub_1BE04F9A4();
    goto LABEL_15;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_1BD6F670C()
{
  v1 = v0;
  v2 = sub_1BE050474();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for FlightWidgetStatusMessageContent.ContentType(0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49130);
  MEMORY[0x1EEE9AC00](v11 - 8, v12);
  v14 = &v23 - v13;
  sub_1BD6F7840(v1, v10, type metadata accessor for FlightWidgetStatusMessageContent.ContentType);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  sub_1BD6F51C4(v10);
  if (EnumCaseMultiPayload == 4)
  {
    v16 = *MEMORY[0x1E6980E28];
    v17 = sub_1BE050354();
    v18 = *(v17 - 8);
    (*(v18 + 104))(v14, v16, v17);
    (*(v18 + 56))(v14, 0, 1, v17);
  }

  else
  {
    v19 = sub_1BE050354();
    (*(*(v19 - 8) + 56))(v14, 1, 1, v19);
  }

  if (*(v1 + *(type metadata accessor for FlightWidgetStatusMessageContent(0) + 28)) >= 2u)
  {
    v20 = MEMORY[0x1E6980EF0];
  }

  else
  {
    v20 = MEMORY[0x1E6980F38];
  }

  (*(v3 + 104))(v6, *v20, v2);
  v21 = sub_1BE0503C4();
  (*(v3 + 8))(v6, v2);
  sub_1BD0DE53C(v14, &qword_1EBD49130);
  return v21;
}

uint64_t sub_1BD6F6A08()
{
  v0 = sub_1BE04AF64();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = &v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5, v6);
  v8 = &v20 - v7;
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = &v20 - v11;
  MEMORY[0x1EEE9AC00](v13, v14);
  v16 = &v20 - v15;
  sub_1BE04AF54();
  sub_1BE04ADD4();
  sub_1BE04ADD4();
  sub_1BE04ADD4();
  sub_1BD6F78A8(&qword_1EBD525D0, MEMORY[0x1E6969530]);
  if (sub_1BE0522F4())
  {
    if (sub_1BE0522F4())
    {
      if (sub_1BE0522F4())
      {
        v17 = 27952;
      }

      else
      {
        v17 = 7155760;
      }
    }

    else
    {
      v17 = 0x6D3030206830;
    }
  }

  else
  {
    v17 = 0x6D303020683031;
  }

  v18 = *(v1 + 8);
  v18(v4, v0);
  v18(v8, v0);
  v18(v12, v0);
  v18(v16, v0);
  return v17;
}

uint64_t sub_1BD6F6CDC@<X0>(uint64_t a1@<X8>)
{
  result = sub_1BE04F384();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_1BD6F6D40@<X0>(void *a1@<X8>)
{
  result = sub_1BE04F1A4();
  *a1 = v3;
  return result;
}

uint64_t sub_1BD6F6D94@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1BE04F294();
  *a1 = result;
  return result;
}

unint64_t sub_1BD6F6DEC()
{
  result = qword_1EBD50A60;
  if (!qword_1EBD50A60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD50A58);
    sub_1BD6F6E78();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD50A60);
  }

  return result;
}

unint64_t sub_1BD6F6E78()
{
  result = qword_1EBD50A68;
  if (!qword_1EBD50A68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD50A70);
    sub_1BD6F6F04();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD50A68);
  }

  return result;
}

unint64_t sub_1BD6F6F04()
{
  result = qword_1EBD50A78;
  if (!qword_1EBD50A78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD50A80);
    sub_1BD6F6FBC();
    sub_1BD0DE4F4(&qword_1EBD3A8B0, &qword_1EBD3A8B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD50A78);
  }

  return result;
}

unint64_t sub_1BD6F6FBC()
{
  result = qword_1EBD50A88;
  if (!qword_1EBD50A88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD50A90);
    sub_1BD6F7074();
    sub_1BD0DE4F4(&qword_1EBD386E8, &unk_1EBD51210);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD50A88);
  }

  return result;
}

unint64_t sub_1BD6F7074()
{
  result = qword_1EBD50A98;
  if (!qword_1EBD50A98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD50AA0);
    sub_1BD6F712C();
    sub_1BD0DE4F4(&qword_1EBD38BC8, &unk_1EBD49190);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD50A98);
  }

  return result;
}

unint64_t sub_1BD6F712C()
{
  result = qword_1EBD50AA8;
  if (!qword_1EBD50AA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD50AB0);
    sub_1BD6F71E4();
    sub_1BD0DE4F4(&unk_1EBD4E910, &unk_1EBD3E2E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD50AA8);
  }

  return result;
}

unint64_t sub_1BD6F71E4()
{
  result = qword_1EBD50AB8;
  if (!qword_1EBD50AB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD50AC0);
    sub_1BD6F7270();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD50AB8);
  }

  return result;
}

unint64_t sub_1BD6F7270()
{
  result = qword_1EBD50AC8;
  if (!qword_1EBD50AC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD50AD0);
    sub_1BD6F72FC();
    sub_1BD170E70();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD50AC8);
  }

  return result;
}

unint64_t sub_1BD6F72FC()
{
  result = qword_1EBD50AD8;
  if (!qword_1EBD50AD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD50AE0);
    sub_1BD6F7388();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD50AD8);
  }

  return result;
}

unint64_t sub_1BD6F7388()
{
  result = qword_1EBD50AE8;
  if (!qword_1EBD50AE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD50AF0);
    sub_1BD6F7440();
    sub_1BD0DE4F4(&unk_1EBD51280, qword_1EBD3E2F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD50AE8);
  }

  return result;
}

unint64_t sub_1BD6F7440()
{
  result = qword_1EBD50AF8;
  if (!qword_1EBD50AF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD50B00);
    sub_1BD6F74F8();
    sub_1BD0DE4F4(&qword_1EBD50B08, &qword_1EBD50B10);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD50AF8);
  }

  return result;
}

unint64_t sub_1BD6F74F8()
{
  result = qword_1EBD42400;
  if (!qword_1EBD42400)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD42408);
    sub_1BD33954C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD42400);
  }

  return result;
}

uint64_t sub_1BD6F7584(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FlightWidgetStatusMessageContent(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BD6F7630(uint64_t a1)
{
  result = sub_1BD6F78A8(&qword_1EBD50B18, type metadata accessor for FlightWidgetStatusMessageView);
  *(a1 + 8) = result;
  return result;
}

uint64_t type metadata accessor for FlightWidgetStatusMessageView()
{
  result = qword_1EBD50B20;
  if (!qword_1EBD50B20)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1BD6F7718()
{
  result = type metadata accessor for FlightWidgetStatusMessageContent(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_1BD6F7784()
{
  result = qword_1EBD50B30;
  if (!qword_1EBD50B30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD50B38);
    sub_1BD6F6DEC();
    sub_1BD6F78A8(&qword_1EBD52210, MEMORY[0x1E697CBE8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD50B30);
  }

  return result;
}

uint64_t sub_1BD6F7840(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1BD6F78A8(unint64_t *a1, void (*a2)(uint64_t))
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

void *FlightWidgetPassSnapshotContent.snapshot.getter()
{
  v1 = *(v0 + 24);
  v2 = v1;
  return v1;
}

uint64_t FlightWidgetPassSnapshotContent.__allocating_init(snapshot:context:)(uint64_t a1, char *a2)
{
  result = swift_allocObject();
  v5 = *a2;
  *(result + 24) = a1;
  *(result + 16) = v5;
  return result;
}

uint64_t FlightWidgetPassSnapshotContent.init(snapshot:context:)(uint64_t a1, char *a2)
{
  v3 = *a2;
  *(v2 + 24) = a1;
  *(v2 + 16) = v3;
  return v2;
}

uint64_t static FlightWidgetPassSnapshotContent.createContent(viewModel:context:)(uint64_t a1, char *a2)
{
  v2 = *a2;
  v3 = *(a1 + OBJC_IVAR____TtC9PassKitUI21FlightWidgetViewModel_passSnapshot);
  v4 = swift_allocObject();
  *(v4 + 24) = v3;
  *(v4 + 16) = v2;
  v5 = v3;
  return v4;
}

uint64_t FlightWidgetPassSnapshotContent.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

unint64_t sub_1BD6F7A38()
{
  result = qword_1EBD50B40;
  if (!qword_1EBD50B40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD50B40);
  }

  return result;
}

id sub_1BD6F7A8C@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = *a2;
  v7 = *(a1 + OBJC_IVAR____TtC9PassKitUI21FlightWidgetViewModel_passSnapshot);
  v5 = swift_allocObject();
  *(v5 + 24) = v7;
  *(v5 + 16) = v4;
  *a3 = v5;

  return v7;
}

uint64_t FlightWidgetDetailsType.hashValue.getter()
{
  v1 = *v0;
  sub_1BE053D04();
  MEMORY[0x1BFB40DA0](v1);
  return sub_1BE053D64();
}

void static FlightWidgetDetailsContent.createContent(viewModel:context:)(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *(a1 + 16);
  if (v4)
  {
    v5 = a1;
    v6 = *a2;
    v7 = &off_1E80104D0;
    if ((*a2 & 0xFE) == 2)
    {
      v7 = &off_1E8010458;
    }

    v8 = v7[*(a1 + OBJC_IVAR____TtC9PassKitUI21FlightWidgetViewModel_extendedState)];
    v9 = v8[2];
    if (v9)
    {
      v23 = *a2;
      v24 = a3;
      v22 = v4;
      v10 = MEMORY[0x1E69E7CC0];
      v11 = 32;
      v25 = v5;
      v26 = v8;
      do
      {
        v27 = *(v8 + v11);
        sub_1BD6F7DAC(&v27, v5, &v28);
        v13 = v28;
        v12 = v29;
        v15 = v30;
        v14 = v31;
        v17 = v32;
        v16 = v33;
        if (v29)
        {
          if (swift_isUniquelyReferenced_nonNull_native())
          {
            v18 = v10;
          }

          else
          {
            v18 = sub_1BD1D8AA8(0, *(v10 + 2) + 1, 1, v10);
          }

          v20 = *(v18 + 2);
          v19 = *(v18 + 3);
          if (v20 >= v19 >> 1)
          {
            v18 = sub_1BD1D8AA8((v19 > 1), v20 + 1, 1, v18);
          }

          *(v18 + 2) = v20 + 1;
          v10 = v18;
          v21 = &v18[48 * v20];
          *(v21 + 4) = v13;
          *(v21 + 5) = v12;
          *(v21 + 6) = v15;
          *(v21 + 7) = v14;
          v21[64] = v17 & 1;
          *(v21 + 9) = v16;
          v5 = v25;
        }

        else
        {
          sub_1BD6F8578(v28, 0, v30, v31, v32, v33);
        }

        ++v11;
        --v9;
        v8 = v26;
      }

      while (v9);

      a3 = v24;
      v6 = v23;
    }

    else
    {

      v10 = MEMORY[0x1E69E7CC0];
    }
  }

  else
  {
    v10 = 0;
    v6 = 0;
  }

  *a3 = v10;
  *(a3 + 8) = v6;
}

void sub_1BD6F7DAC(unsigned __int8 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_1BE04BD74();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v81 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v81 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3D178);
  MEMORY[0x1EEE9AC00](v15 - 8, v16);
  v18 = &v81 - v17;
  v19 = type metadata accessor for BoardingPassAttributes(0);
  v20 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19, v21);
  v23 = &v81 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = *(a2 + 16);
  if (!v24)
  {
    goto LABEL_4;
  }

  v86 = v14;
  v87 = v24;
  v88 = v23;
  v25 = *a1;
  sub_1BD6F86B4(a2 + OBJC_IVAR____TtC9PassKitUI21FlightWidgetViewModel_boardingPassAttributes, v18);
  if ((*(v20 + 48))(v18, 1, v19) == 1)
  {
    sub_1BD6F8724(v18);
LABEL_4:
    *(a3 + 16) = 0u;
    *(a3 + 32) = 0u;
    *a3 = 0u;
    return;
  }

  sub_1BD6F878C(v18, v88);
  v81 = v10;
  if (v25 <= 3)
  {
    if (v25 <= 1)
    {
      if (v25)
      {
        v46 = [v87 departure];
        v47 = [v46 gate];

        if (v47)
        {
          v82 = sub_1BE052434();
          v49 = v48;
        }

        else
        {
          v82 = 0;
          v49 = 0;
        }

        v85 = v49;
        v33 = *MEMORY[0x1E69B96D8];
        v35 = 0xD000000000000018;
      }

      else
      {
        v26 = [v87 departure];
        v27 = [v26 terminal];

        if (v27)
        {
          v82 = sub_1BE052434();
          v29 = v28;
        }

        else
        {
          v82 = 0;
          v29 = 0;
        }

        v85 = v29;
        v33 = *MEMORY[0x1E69B96E8];
        v35 = 0xD00000000000001CLL;
      }

      goto LABEL_44;
    }

    if (v25 == 2)
    {
      v36 = OBJC_IVAR____TtC9PassKitUI21FlightWidgetViewModel_departureDate;
      v37 = OBJC_IVAR____TtC9PassKitUI21FlightWidgetViewModel_departureTimeZone;
      v38 = v87;
      sub_1BD3A9168(a2 + v36, a2 + v37);
      v82 = v39;
      v85 = v40;
      v33 = *MEMORY[0x1E69B96D0];
LABEL_27:
      v35 = 0xD000000000000022;
      goto LABEL_44;
    }

    v30 = v88;
    v55 = v88[5];
    if (v55)
    {
      v82 = v88[4];
      v33 = *MEMORY[0x1E69B9558];
      v85 = v55;
      sub_1BE048C84();
      v56 = v87;
      goto LABEL_27;
    }

    v61 = v88[7];
    v62 = v87;
    if (v61)
    {
      v82 = v88[6];
      v33 = *MEMORY[0x1E69B9560];
      v85 = v61;
      sub_1BE048C84();
      v63 = v62;
LABEL_43:
      v35 = 0xD000000000000021;
      goto LABEL_44;
    }

LABEL_40:
    sub_1BD3AA664(v30);
    *a3 = 0u;
    *(a3 + 16) = 0u;
    *(a3 + 32) = 0u;
    return;
  }

  if (v25 > 5)
  {
    if (v25 != 6)
    {
      v57 = [v87 arrival];
      v58 = [v57 baggageClaim];

      if (v58)
      {
        v82 = sub_1BE052434();
        v60 = v59;
      }

      else
      {
        v82 = 0;
        v60 = 0;
      }

      v85 = v60;
      v33 = *MEMORY[0x1E69B94F8];
      goto LABEL_43;
    }

    v41 = v87;
    if ([v41 state] == 3 || (v42 = objc_msgSend(v41, sel_arrival), v43 = objc_msgSend(v42, sel_gate), v42, !v43))
    {
      v82 = 0;
      v45 = 0;
    }

    else
    {
      v82 = sub_1BE052434();
      v45 = v44;
    }

    v85 = v45;
    v33 = *MEMORY[0x1E69B9478];
    v35 = 0xD000000000000020;
  }

  else
  {
    if (v25 == 4)
    {
      v31 = v87;
      v30 = v88;
      v32 = v88[3];
      if (v32)
      {
        v82 = v88[2];
        v33 = *MEMORY[0x1E69B9BD8];
        v85 = v32;
        sub_1BE048C84();
        v34 = v31;
        v35 = 0xD00000000000001FLL;
        goto LABEL_44;
      }

      goto LABEL_40;
    }

    v50 = v87;
    if ([v50 state] == 3 || (v51 = objc_msgSend(v50, sel_arrival), v52 = objc_msgSend(v51, sel_terminal), v51, !v52))
    {
      v82 = 0;
      v54 = 0;
    }

    else
    {
      v82 = sub_1BE052434();
      v54 = v53;
    }

    v85 = v54;
    v33 = *MEMORY[0x1E69B9488];
    v35 = 0xD000000000000024;
  }

LABEL_44:
  v84 = v35;
  v64 = *MEMORY[0x1E69B80C0];
  v65 = *(v7 + 104);
  v66 = v86;
  v65(v86, v64, v6);
  v67 = v33;
  v68 = PKPassKitBundle();
  if (!v68)
  {
    __break(1u);
    goto LABEL_52;
  }

  v69 = v68;
  v70 = sub_1BE04B6F4();
  v83 = v71;
  v84 = v70;

  v72 = *(v7 + 8);
  v72(v66, v6);
  v73 = v85;
  if (!v85)
  {
    v76 = v81;
    v65(v81, v64, v6);
    v77 = PKPassKitBundle();
    if (v77)
    {
      v78 = v77;
      v75 = sub_1BE04B6F4();
      v74 = v79;

      v72(v76, v6);
      sub_1BD3AA664(v88);
      v73 = v85;
      goto LABEL_49;
    }

LABEL_52:
    __break(1u);
    return;
  }

  sub_1BE048C84();

  sub_1BD3AA664(v88);
  v74 = v73;
  v75 = v82;
LABEL_49:

  v80 = v83;
  *a3 = v84;
  *(a3 + 8) = v80;
  *(a3 + 16) = v75;
  *(a3 + 24) = v74;
  *(a3 + 32) = v73 == 0;
  *(a3 + 40) = v67;
}

void sub_1BD6F8578(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  if (a2)
  {
  }
}

unint64_t sub_1BD6F85D8()
{
  result = qword_1EBD50B48;
  if (!qword_1EBD50B48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD50B48);
  }

  return result;
}

unint64_t sub_1BD6F8630()
{
  result = qword_1EBD50B50;
  if (!qword_1EBD50B50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD50B50);
  }

  return result;
}

uint64_t sub_1BD6F86B4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3D178);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BD6F8724(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3D178);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1BD6F878C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BoardingPassAttributes(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t FlightWidgetArrivedContent.init(flight:destinationTemperature:destinationWeatherSymbol:destinationWeatherCondition:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, _OWORD *a6@<X8>)
{
  v115 = a5;
  v116 = a2;
  v117 = a4;
  v108 = a3;
  v114 = a6;
  v7 = sub_1BE04BD74();
  v106 = *(v7 - 8);
  v107 = v7;
  MEMORY[0x1EEE9AC00](v7, v8);
  v105 = &v89 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD48448);
  v103 = *(v10 - 8);
  v104 = v10;
  MEMORY[0x1EEE9AC00](v10, v11);
  v102 = &v89 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD50B58);
  MEMORY[0x1EEE9AC00](v13 - 8, v14);
  v101 = &v89 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD50B60);
  v99 = *(v16 - 8);
  v100 = v16;
  MEMORY[0x1EEE9AC00](v16, v17);
  v96 = &v89 - v18;
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD50B68);
  v97 = *(v98 - 8);
  MEMORY[0x1EEE9AC00](v98, v19);
  v95 = &v89 - v20;
  v94 = sub_1BE04A934();
  v93 = *(v94 - 8);
  MEMORY[0x1EEE9AC00](v94, v21);
  v23 = &v89 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_1BE04B0F4();
  MEMORY[0x1EEE9AC00](v24 - 8, v25);
  v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD50B70);
  v92 = *(v110 - 8);
  v27 = MEMORY[0x1EEE9AC00](v110, v26);
  v29 = &v89 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27, v30);
  v109 = &v89 - v31;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD44018);
  MEMORY[0x1EEE9AC00](v32 - 8, v33);
  v35 = &v89 - v34;
  v36 = sub_1BE04B564();
  v111 = *(v36 - 8);
  v112 = v36;
  MEMORY[0x1EEE9AC00](v36, v37);
  v39 = &v89 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD44010);
  MEMORY[0x1EEE9AC00](v40 - 8, v41);
  v43 = &v89 - v42;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3A090);
  v45 = *(v44 - 8);
  MEMORY[0x1EEE9AC00](v44, v46);
  v113 = &v89 - v47;
  if ([a1 state] != 4 && objc_msgSend(a1, sel_state) != 8)
  {

    sub_1BD0DE53C(v115, &qword_1EBD44018);
    v55 = &qword_1EBD44010;
    v50 = v116;
    goto LABEL_10;
  }

  v48 = v116;
  sub_1BD0DE19C(v116, v43, &qword_1EBD44010);
  if ((*(v45 + 48))(v43, 1, v44) == 1)
  {

    sub_1BD0DE53C(v115, &qword_1EBD44018);
    v49 = &qword_1EBD44010;
    sub_1BD0DE53C(v48, &qword_1EBD44010);
    v50 = v43;
LABEL_8:
    v55 = v49;
LABEL_10:
    result = sub_1BD0DE53C(v50, v55);
LABEL_11:
    v57 = v114;
    v114[1] = 0u;
    v57[2] = 0u;
    *v57 = 0u;
    return result;
  }

  v91 = v39;
  v51 = v113;
  (*(v45 + 32))(v113, v43, v44);
  if (!v117)
  {

    sub_1BD0DE53C(v115, &qword_1EBD44018);
    sub_1BD0DE53C(v48, &qword_1EBD44010);
    result = (*(v45 + 8))(v51, v44);
    goto LABEL_11;
  }

  v90 = v44;
  v89 = v45;
  v52 = v115;
  sub_1BD0DE19C(v115, v35, &qword_1EBD44018);
  v53 = v111;
  v54 = v112;
  if ((*(v111 + 48))(v35, 1, v112) == 1)
  {

    v49 = &qword_1EBD44018;
    sub_1BD0DE53C(v52, &qword_1EBD44018);
    sub_1BD0DE53C(v48, &qword_1EBD44010);
    (*(v89 + 8))(v113, v90);
    v50 = v35;
    goto LABEL_8;
  }

  (*(v53 + 32))(v91, v35, v54);
  sub_1BE04B054();
  sub_1BD58F1D8();
  sub_1BE04A8A4();
  sub_1BE04A924();
  v59 = v109;
  v58 = v110;
  MEMORY[0x1BFB37960](v23, v110);
  v93[1](v23, v94);
  v60 = v92;
  v61 = *(v92 + 8);
  v94 = v92 + 8;
  v93 = v61;
  (v61)(v29, v58);
  sub_1BD6F94E4();
  v62 = v96;
  sub_1BE04A1E4();
  v63 = v101;
  (*(v60 + 16))(v101, v59, v58);
  (*(v60 + 56))(v63, 0, 1, v58);
  v64 = v102;
  sub_1BE04A8E4();
  v65 = v95;
  sub_1BE04A164();
  (*(v103 + 8))(v64, v104);
  sub_1BD0DE53C(v63, &qword_1EBD50B58);
  (*(v99 + 8))(v62, v100);
  sub_1BD6F9530();
  v66 = v98;
  sub_1BE04A204();
  (*(v97 + 8))(v65, v66);
  v67 = v118;
  v68 = v119;
  v118 = sub_1BE04B544();
  v119 = v69;
  MEMORY[0x1BFB3F610](32, 0xE100000000000000);
  MEMORY[0x1BFB3F610](v67, v68);

  v103 = v119;
  v104 = v118;
  v70 = [a1 arrival];
  v71 = [v70 airport];

  v72 = [v71 city];
  if (v72 || (v72 = [v71 name]) != 0)
  {
    v73 = v71;
  }

  else
  {
    v73 = v71;
    v72 = [v71 code];
  }

  v74 = v89;
  v75 = v72;
  v76 = sub_1BE052434();
  v78 = v77;

  v79 = v105;
  v80 = v106;
  v81 = v107;
  (*(v106 + 104))(v105, *MEMORY[0x1E69B80C0], v107);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF80);
  v82 = swift_allocObject();
  *(v82 + 16) = xmmword_1BE0B69E0;
  *(v82 + 56) = MEMORY[0x1E69E6158];
  *(v82 + 64) = sub_1BD110550();
  *(v82 + 32) = v76;
  *(v82 + 40) = v78;
  v83 = sub_1BE04B714();
  v85 = v84;

  sub_1BD0DE53C(v115, &qword_1EBD44018);
  sub_1BD0DE53C(v116, &qword_1EBD44010);
  (*(v80 + 8))(v79, v81);
  (v93)(v109, v110);
  (*(v111 + 8))(v91, v112);
  result = (*(v74 + 8))(v113, v90);
  v86 = v114;
  *v114 = v83;
  v86[1] = v85;
  v87 = v117;
  v86[2] = v108;
  v86[3] = v87;
  v88 = v103;
  v86[4] = v104;
  v86[5] = v88;
  return result;
}

uint64_t FlightWidgetArrivedContent.title.getter()
{
  v1 = *v0;
  sub_1BE048C84();
  return v1;
}

uint64_t static FlightWidgetArrivedContent.createContent(viewModel:context:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v2 = (a1 + OBJC_IVAR____TtC9PassKitUI21FlightWidgetViewModel_arrivedContent);
  v3 = *(a1 + OBJC_IVAR____TtC9PassKitUI21FlightWidgetViewModel_arrivedContent);
  v4 = v2[1];
  v5 = v2[2];
  v6 = v2[3];
  v7 = v2[4];
  v8 = v2[5];
  *a2 = v3;
  a2[1] = v4;
  a2[2] = v5;
  a2[3] = v6;
  a2[4] = v7;
  a2[5] = v8;
  return sub_1BD3AA614(v3, v4);
}

void __swiftcall FlightWidgetArrivedContent.init(welcomeMessage:conditionsSymbol:weatherDescription:)(PassKitUI::FlightWidgetArrivedContent *__return_ptr retstr, Swift::String welcomeMessage, Swift::String conditionsSymbol, Swift::String weatherDescription)
{
  retstr->welcomeMessage = welcomeMessage;
  retstr->conditionsSymbol = conditionsSymbol;
  retstr->weatherDescription = weatherDescription;
}

uint64_t sub_1BD6F94B8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v2 = (a1 + OBJC_IVAR____TtC9PassKitUI21FlightWidgetViewModel_arrivedContent);
  v3 = *(a1 + OBJC_IVAR____TtC9PassKitUI21FlightWidgetViewModel_arrivedContent);
  v4 = v2[1];
  v5 = v2[2];
  v6 = v2[3];
  v7 = v2[4];
  v8 = v2[5];
  *a2 = v3;
  a2[1] = v4;
  a2[2] = v5;
  a2[3] = v6;
  a2[4] = v7;
  a2[5] = v8;
  return sub_1BD3AA614(v3, v4);
}

unint64_t sub_1BD6F94E4()
{
  result = qword_1EBD48450;
  if (!qword_1EBD48450)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EBD48450);
  }

  return result;
}

unint64_t sub_1BD6F9530()
{
  result = qword_1EBD50B78;
  if (!qword_1EBD50B78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD50B68);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD50B78);
  }

  return result;
}

unint64_t sub_1BD6F9598()
{
  result = qword_1EBD50B80;
  if (!qword_1EBD50B80)
  {
    type metadata accessor for FlightWidgetArrivedView();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD50B80);
  }

  return result;
}

uint64_t sub_1BD6F9674()
{
  v1 = type metadata accessor for FlightWidgetProgressView();
  MEMORY[0x1EEE9AC00](v1, v2);
  v4 = v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13[0] = 0x403A000000000000;
  sub_1BD0DBFDC();
  sub_1BE04E524();
  *&v4[v1[6]] = 0x4044000000000000;
  v13[0] = 0x402A000000000000;
  sub_1BE04E524();
  *&v4[v1[8]] = 0x403E000000000000;
  v13[0] = 0x4044000000000000;
  sub_1BE04E524();
  v13[0] = 0x4046800000000000;
  sub_1BE04E524();
  *&v4[v1[11]] = 0x4059000000000000;
  v5 = *(v0 + 208);
  *(v4 + 12) = *(v0 + 192);
  *(v4 + 13) = v5;
  *(v4 + 14) = *(v0 + 224);
  *(v4 + 30) = *(v0 + 240);
  v6 = *(v0 + 144);
  *(v4 + 8) = *(v0 + 128);
  *(v4 + 9) = v6;
  v7 = *(v0 + 176);
  *(v4 + 10) = *(v0 + 160);
  *(v4 + 11) = v7;
  v8 = *(v0 + 80);
  *(v4 + 4) = *(v0 + 64);
  *(v4 + 5) = v8;
  v9 = *(v0 + 112);
  *(v4 + 6) = *(v0 + 96);
  *(v4 + 7) = v9;
  v10 = *(v0 + 16);
  *v4 = *v0;
  *(v4 + 1) = v10;
  v11 = *(v0 + 48);
  *(v4 + 2) = *(v0 + 32);
  *(v4 + 3) = v11;
  sub_1BD0DBDF0(v0, v13);
  sub_1BD6FA11C(&qword_1EBD385B0, type metadata accessor for FlightWidgetProgressView);
  return sub_1BE0518D4();
}

uint64_t FlightWidgetElementContent.createView()(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 - 8);
  MEMORY[0x1EEE9AC00](a1, a2);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness, v8);
  (*(v4 + 16))(v6, v2, a1, v9);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  (*(AssociatedConformanceWitness + 40))(v6, AssociatedTypeWitness, AssociatedConformanceWitness);
  return sub_1BE0518D4();
}

uint64_t sub_1BD6F99CC()
{
  v1 = type metadata accessor for FlightWidgetPreflightView();
  MEMORY[0x1EEE9AC00](v1, v2);
  v3 = *v0;
  v4 = v0[1];
  v5 = v0[2];
  v6 = v0[3];
  v10[0] = v3;
  v10[1] = v4;
  v10[2] = v5;
  v10[3] = v6;
  v7 = sub_1BD6FA11C(&qword_1EBD4DAB0, type metadata accessor for FlightWidgetPreflightView);
  v8 = *(v7 + 40);
  sub_1BE048C84();
  sub_1BE048C84();
  v8(v10, v1, v7);
  sub_1BD6FA11C(&qword_1EBD43D08, type metadata accessor for FlightWidgetPreflightView);
  return sub_1BE0518D4();
}

uint64_t sub_1BD6F9B0C()
{
  v1 = type metadata accessor for FlightWidgetStatusSymbolAndMessageView();
  MEMORY[0x1EEE9AC00](v1, v2);
  sub_1BD6FA0B4(v0, &v5 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for FlightWidgetStatusSymbolAndMessageContent);
  sub_1BD6FA11C(&qword_1EBD50B90, type metadata accessor for FlightWidgetStatusSymbolAndMessageView);
  return sub_1BE0518D4();
}

uint64_t sub_1BD6F9BE4()
{
  sub_1BD469CB4();
  sub_1BE048C84();
  sub_1BE048964();
  return sub_1BE0518D4();
}

uint64_t sub_1BD6F9C54()
{
  v1 = type metadata accessor for FlightWidgetStatusMessageView();
  MEMORY[0x1EEE9AC00](v1, v2);
  sub_1BD6FA0B4(v0, &v5 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for FlightWidgetStatusMessageContent);
  sub_1BD6FA11C(&qword_1EBD50B18, type metadata accessor for FlightWidgetStatusMessageView);
  return sub_1BE0518D4();
}

uint64_t sub_1BD6F9D2C()
{
  sub_1BD469E70();
  sub_1BE048964();
  return sub_1BE0518D4();
}

uint64_t sub_1BD6F9D7C()
{
  sub_1BD6CAA74();
  sub_1BE048C84();
  return sub_1BE0518D4();
}

uint64_t sub_1BD6F9DD4()
{
  v1 = type metadata accessor for FlightWidgetArrivedView();
  MEMORY[0x1EEE9AC00](v1, v2);
  v3 = *v0;
  v4 = v0[1];
  v5 = v0[2];
  v6 = v0[3];
  v7 = v0[4];
  v8 = v0[5];
  v12[0] = v3;
  v12[1] = v4;
  v12[2] = v5;
  v12[3] = v6;
  v12[4] = v7;
  v12[5] = v8;
  v9 = sub_1BD6FA11C(&qword_1EBD50B80, type metadata accessor for FlightWidgetArrivedView);
  v10 = *(v9 + 40);
  sub_1BE048C84();
  sub_1BE048C84();
  sub_1BE048C84();
  v10(v12, v1, v9);
  sub_1BD6FA11C(&qword_1EBD50B88, type metadata accessor for FlightWidgetArrivedView);
  return sub_1BE0518D4();
}

uint64_t AnyFlightWidgetElementView.init<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = *(a2 - 8);
  v7 = MEMORY[0x1EEE9AC00](a1, a2);
  (*(v6 + 16))(&v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), a1, a2, v7);
  v9 = sub_1BE0518D4();
  result = (*(v6 + 8))(a1, a2);
  *a3 = v9;
  return result;
}

uint64_t sub_1BD6FA0B4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1BD6FA11C(unint64_t *a1, void (*a2)(uint64_t))
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

__n128 FlightWidgetStatusSymbolView.init(content:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 24);
  *a2 = *a1;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  *(a2 + 24) = v2;
  return result;
}

uint64_t FlightWidgetStatusSymbolView.content.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  *a1 = *v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  sub_1BE048C84();

  return sub_1BE048964();
}

double FlightWidgetStatusSymbolView.body.getter@<D0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD50B98);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = &v35[-v5];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD50BA0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v35[-v9];
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD50BA8);
  MEMORY[0x1EEE9AC00](v39, v11);
  v13 = &v35[-v12];
  v14 = *(v1 + 16);
  v15 = *(v1 + 24);
  sub_1BE048C84();
  v38 = sub_1BE051574();
  if (v15 == 2)
  {
    v16 = sub_1BE0503E4();
    KeyPath = swift_getKeyPath();
    goto LABEL_5;
  }

  v16 = sub_1BE050464();
  KeyPath = swift_getKeyPath();
  if (v15)
  {
LABEL_5:
    v21 = sub_1BE04E354();
    (*(*(v21 - 8) + 56))(v6, 1, 1, v21);
    goto LABEL_6;
  }

  v36 = *MEMORY[0x1E697DBA8];
  v18 = sub_1BE04E354();
  v19 = *(v18 - 8);
  v37 = a1;
  v20 = v19;
  (*(v19 + 104))(v6, v36, v18);
  (*(v20 + 56))(v6, 0, 1, v18);
  a1 = v37;
LABEL_6:
  sub_1BD0DE204(v6, v10 + *(v7 + 36), &qword_1EBD50B98);
  *v10 = v38;
  v10[1] = KeyPath;
  v10[2] = v16;
  v10[3] = v14;
  sub_1BE048964();
  v22 = sub_1BE0501D4();
  sub_1BE04E1F4();
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v30 = v29;
  sub_1BD0DE204(v10, v13, &qword_1EBD50BA0);
  v31 = &v13[*(v39 + 36)];
  *v31 = v22;
  *(v31 + 1) = v24;
  *(v31 + 2) = v26;
  *(v31 + 3) = v28;
  *(v31 + 4) = v30;
  v31[40] = 0;
  sub_1BE051CF4();
  sub_1BE04E5E4();
  sub_1BD0DE204(v13, a1, &qword_1EBD50BA8);
  v32 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD50BB0) + 36));
  v33 = v41;
  *v32 = v40;
  v32[1] = v33;
  result = *&v42;
  v32[2] = v42;
  return result;
}

uint64_t sub_1BD6FA56C@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  *a1 = *v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  sub_1BE048C84();

  return sub_1BE048964();
}

__n128 sub_1BD6FA5B8@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 24);
  *a2 = *a1;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  *(a2 + 24) = v2;
  return result;
}

__n128 FlightWidgetStatusSymbolAndMessageView.body.getter@<Q0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD50BB8);
  v4 = v3 - 8;
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = v15 - v6;
  *v7 = sub_1BE04F504();
  *(v7 + 1) = 0x4008000000000000;
  v7[16] = 0;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD50BC0);
  sub_1BD6FA7B4(v1, &v7[*(v8 + 44)]);
  KeyPath = swift_getKeyPath();
  v10 = &v7[*(v4 + 44)];
  *v10 = KeyPath;
  v10[1] = 0x3FE0000000000000;
  type metadata accessor for FlightWidgetStatusSymbolAndMessageContent();
  sub_1BE051CD4();
  sub_1BE04EE54();
  sub_1BD0DE204(v7, a1, &qword_1EBD50BB8);
  v11 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD50BC8) + 36);
  v12 = v15[5];
  *(v11 + 64) = v15[4];
  *(v11 + 80) = v12;
  *(v11 + 96) = v15[6];
  v13 = v15[1];
  *v11 = v15[0];
  *(v11 + 16) = v13;
  result = v15[3];
  *(v11 + 32) = v15[2];
  *(v11 + 48) = result;
  return result;
}

uint64_t sub_1BD6FA7B4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v41 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD50C20);
  v39 = *(v3 - 8);
  v40 = v3;
  MEMORY[0x1EEE9AC00](v3, v4);
  v37 = &v36 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD509C8);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v9 = &v36 - v8;
  v10 = type metadata accessor for FlightWidgetStatusMessageContent(0);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = &v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD50C28);
  MEMORY[0x1EEE9AC00](v15 - 8, v16);
  v18 = &v36 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19, v20);
  v22 = &v36 - v21;
  v23 = *(a1 + 8);
  v38 = *a1;
  v24 = *(a1 + 16);
  v25 = *(a1 + 24);
  v26 = type metadata accessor for FlightWidgetStatusSymbolAndMessageContent();
  sub_1BD0DE19C(a1 + *(v26 + 20), v9, &qword_1EBD509C8);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    v27 = v38;
    sub_1BD6FB1DC(v38, v23);
    sub_1BD0DE53C(v9, &qword_1EBD509C8);
    (*(v39 + 56))(v22, 1, 1, v40);
  }

  else
  {
    sub_1BD6FB264(v9, v14, type metadata accessor for FlightWidgetStatusMessageContent);
    v28 = v14;
    v29 = v37;
    sub_1BD6FB264(v28, v37, type metadata accessor for FlightWidgetStatusMessageContent);
    v30 = v40;
    *(v29 + *(v40 + 36)) = 0x3FF0000000000000;
    sub_1BD0DE204(v29, v22, &qword_1EBD50C20);
    (*(v39 + 56))(v22, 0, 1, v30);
    v27 = v38;
    sub_1BD6FB1DC(v38, v23);
  }

  if (v23)
  {
    v31 = v24;
  }

  else
  {
    v25 = 0;
    v31 = 0;
  }

  if (v23)
  {
    v32 = v27;
  }

  else
  {
    v32 = 0;
  }

  sub_1BD0DE19C(v22, v18, &qword_1EBD50C28);
  v33 = v41;
  *v41 = v32;
  v33[1] = v23;
  v33[2] = v31;
  *(v33 + 24) = v25;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD50C30);
  sub_1BD0DE19C(v18, v33 + *(v34 + 48), &qword_1EBD50C28);
  sub_1BD6FB1DC(v32, v23);
  sub_1BD0DE53C(v22, &qword_1EBD50C28);
  sub_1BD0DE53C(v18, &qword_1EBD50C28);
  return sub_1BD6FB220(v32, v23);
}

uint64_t sub_1BD6FABFC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FlightWidgetStatusSymbolAndMessageContent();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1BD6FAC64(uint64_t a1)
{
  result = sub_1BD469CB4();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1BD6FACF0(uint64_t a1)
{
  result = sub_1BD6FAD48(&qword_1EBD50B90, type metadata accessor for FlightWidgetStatusSymbolAndMessageView);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1BD6FAD48(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t type metadata accessor for FlightWidgetStatusSymbolAndMessageView()
{
  result = qword_1EBD50BD0;
  if (!qword_1EBD50BD0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1BD6FAE30()
{
  result = type metadata accessor for FlightWidgetStatusSymbolAndMessageContent();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_1BD6FAE9C()
{
  result = qword_1EBD50BE0;
  if (!qword_1EBD50BE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD50BB0);
    sub_1BD6FAF28();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD50BE0);
  }

  return result;
}

unint64_t sub_1BD6FAF28()
{
  result = qword_1EBD50BE8;
  if (!qword_1EBD50BE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD50BA8);
    sub_1BD6FAFB4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD50BE8);
  }

  return result;
}

unint64_t sub_1BD6FAFB4()
{
  result = qword_1EBD50BF0;
  if (!qword_1EBD50BF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD50BA0);
    sub_1BD3A324C();
    sub_1BD0DE4F4(&unk_1EBD51150, &qword_1EBD50BF8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD50BF0);
  }

  return result;
}

unint64_t sub_1BD6FB06C()
{
  result = qword_1EBD50C00;
  if (!qword_1EBD50C00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD50BC8);
    sub_1BD6FB0F8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD50C00);
  }

  return result;
}

unint64_t sub_1BD6FB0F8()
{
  result = qword_1EBD50C08;
  if (!qword_1EBD50C08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD50BB8);
    sub_1BD0DE4F4(&qword_1EBD50C10, &qword_1EBD50C18);
    sub_1BD0DE4F4(&qword_1EBD3A8B0, &qword_1EBD3A8B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD50C08);
  }

  return result;
}

uint64_t sub_1BD6FB1DC(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_1BE048C84();

    return sub_1BE048964();
  }

  return result;
}

uint64_t sub_1BD6FB220(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_1BD6FB264(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_1BD6FB2CC()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF70);
  MEMORY[0x1EEE9AC00](v1 - 8, v2);
  v4 = &v14 - v3;
  v5 = type metadata accessor for PaymentOfferSetupProvisioningMetadata();
  sub_1BD0DE19C(v0 + *(v5 + 24), v4, &unk_1EBD3CF70);
  v6 = *(v0 + *(v5 + 28));
  v7 = sub_1BE052404();
  v8 = sub_1BE04AA64();
  v9 = *(v8 - 8);
  v10 = 0;
  if ((*(v9 + 48))(v4, 1, v8) != 1)
  {
    v10 = sub_1BE04A9C4();
    (*(v9 + 8))(v4, v8);
  }

  v11 = objc_allocWithZone(MEMORY[0x1E69B8BF8]);
  v12 = sub_1BE052404();
  v13 = [v11 initWithSharingInstanceIdentifier:v7 passThumbnailImageURL:v10 criteriaIdentifier:v12 didSelectOffer:v6];

  if (!v13)
  {
    __break(1u);
  }
}

uint64_t sub_1BD6FB484(uint64_t a1, uint64_t a2)
{
  sub_1BD0DE19C(a1, v14, &qword_1EBD43CF0);
  v3 = v15;
  if (v15)
  {
    v4 = *&v14[0];
    v5 = sub_1BE04A844();

    swift_beginAccess();
    v6 = *(a2 + 16);
    *(a2 + 16) = v5;
    v7 = *(a2 + 24);
    *(a2 + 24) = 1;
LABEL_10:
    sub_1BD6FC040(v6, v7);
    return v3;
  }

  sub_1BD1B6140(v14, v13);
  sub_1BD038CD0(v13, v12);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40E70);
  if ((swift_dynamicCast() & 1) == 0)
  {
    __swift_destroy_boxed_opaque_existential_0(v13);
    return v3;
  }

  if (!(v11 >> 62))
  {
    result = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_6;
    }

LABEL_13:
    __swift_destroy_boxed_opaque_existential_0(v13);

    return v3;
  }

  result = sub_1BE053704();
  if (!result)
  {
    goto LABEL_13;
  }

LABEL_6:
  if ((v11 & 0xC000000000000001) != 0)
  {
    v9 = MEMORY[0x1BFB40900](0);
    goto LABEL_9;
  }

  if (*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v9 = *(v11 + 32);
LABEL_9:
    v10 = v9;

    __swift_destroy_boxed_opaque_existential_0(v13);
    swift_beginAccess();
    v6 = *(a2 + 16);
    *(a2 + 16) = v10;
    v7 = *(a2 + 24);
    *(a2 + 24) = 0;
    goto LABEL_10;
  }

  __break(1u);
  return result;
}

void sub_1BD6FB624(void (*a1)(id, void), uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  v5 = *(a3 + 16);
  v6 = *(a3 + 24);
  if (v6 == 255)
  {
    v7 = [objc_allocWithZone(MEMORY[0x1E696ABC0]) initWithDomain:*MEMORY[0x1E69BBBC8] code:-9005 userInfo:0];
    v8 = 1;
  }

  else
  {
    v7 = v5;
    v8 = v6;
  }

  sub_1BD6FC028(v5, v6);
  a1(v7, v8 & 1);
  sub_1BD528638(v7);
}

id sub_1BD6FB724()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PaymentOfferSetupProvisioningSheet.Coordinator();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1BD6FB818@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  v4 = *(v1 + 8);
  v5 = *(v1 + 16);
  v6 = *(v1 + 24);
  v7 = *(v1 + 32);
  v8 = objc_allocWithZone(type metadata accessor for PaymentOfferSetupProvisioningSheet.Coordinator());
  v9 = v3;
  v10 = v4;
  v11 = v7;
  sub_1BE048964();
  v12 = sub_1BD6FBA00(v9, v10, v11, v5, v6);

  *a1 = v12;
  return result;
}

uint64_t sub_1BD6FB8BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1BD6FB9AC();

  return MEMORY[0x1EEDDB778](a1, a2, a3, v6);
}

uint64_t sub_1BD6FB920(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1BD6FB9AC();

  return MEMORY[0x1EEDDB740](a1, a2, a3, v6);
}

void sub_1BD6FB984()
{
  sub_1BD6FB9AC();
  sub_1BE0500A4();
  __break(1u);
}

unint64_t sub_1BD6FB9AC()
{
  result = qword_1EBD50C60;
  if (!qword_1EBD50C60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD50C60);
  }

  return result;
}

id sub_1BD6FBA00(void *a1, void *a2, void *a3, uint64_t a4, uint64_t a5)
{
  v11 = sub_1BE04BA14();
  v55 = *(v11 - 8);
  v56 = v11;
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = v47 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = sub_1BE04B9C4();
  v15 = *(v54 - 8);
  MEMORY[0x1EEE9AC00](v54, v16);
  v52 = v47 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1BE04BAC4();
  MEMORY[0x1EEE9AC00](v18 - 8, v19);
  v53 = v47 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = &v5[OBJC_IVAR____TtCV9PassKitUI34PaymentOfferSetupProvisioningSheet11Coordinator_flowDelegate];
  *v21 = 0;
  *(v21 + 1) = 0;
  *&v5[OBJC_IVAR____TtCV9PassKitUI34PaymentOfferSetupProvisioningSheet11Coordinator_credential] = a1;
  *&v5[OBJC_IVAR____TtCV9PassKitUI34PaymentOfferSetupProvisioningSheet11Coordinator_paymentOffersController] = a2;
  *&v5[OBJC_IVAR____TtCV9PassKitUI34PaymentOfferSetupProvisioningSheet11Coordinator_navigationController] = a3;
  v51 = v5;
  v22 = &v5[OBJC_IVAR____TtCV9PassKitUI34PaymentOfferSetupProvisioningSheet11Coordinator_completion];
  v49 = a4;
  *v22 = a4;
  *(v22 + 1) = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD46290);
  v23 = sub_1BE04C384();
  v24 = *(v23 - 8);
  v25 = (*(v24 + 80) + 32) & ~*(v24 + 80);
  v26 = swift_allocObject();
  v48 = xmmword_1BE0B69E0;
  *(v26 + 16) = xmmword_1BE0B69E0;
  *(v26 + v25) = a1;
  (*(v24 + 104))(v26 + v25, *MEMORY[0x1E69B82A8], v23);
  sub_1BE04C3D4();
  swift_allocObject();
  v27 = a1;
  v28 = a2;
  v47[1] = a3;
  v50 = a5;
  sub_1BE048964();
  v29 = sub_1BE04C394();
  v30 = [objc_opt_self() sharedService];
  v31 = [objc_allocWithZone(MEMORY[0x1E69B8D48]) initWithWebService:v30 paymentOffersController:v28];

  (*(v15 + 104))(v52, *MEMORY[0x1E69B7FB8], v54);
  v32 = *MEMORY[0x1E69B7FE0];
  v33 = sub_1BE04B9D4();
  (*(*(v33 - 8) + 104))(v14, v32, v33);
  (*(v55 + 104))(v14, *MEMORY[0x1E69B8020], v56);
  result = sub_1BE04BA94();
  if (v31)
  {
    sub_1BE04BC44();
    swift_allocObject();
    v35 = v31;
    v36 = sub_1BE04BC24();
    type metadata accessor for ProvisioningInAppPushProvFlowSection();
    v37 = swift_allocObject();
    v37[5] = 0;
    swift_unknownObjectWeakInit();
    v37[6] = 0xD000000000000018;
    v37[7] = 0x80000001BE124910;
    v37[8] = 0;
    v37[2] = v36;
    v37[3] = v29;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD38570);
    v38 = swift_allocObject();
    *(v38 + 16) = v48;
    *(v38 + 32) = v37;
    *(v38 + 40) = &off_1F3BA8BB8;
    v39 = objc_allocWithZone(type metadata accessor for UIFlowManager());
    sub_1BE048964();
    sub_1BE048964();
    sub_1BE048964();
    v40 = sub_1BD3986F8(v38);
    *(*&v40[OBJC_IVAR____TtC9PassKitUI13UIFlowManager_root] + 104) = &off_1F3BAE178;
    swift_unknownObjectWeakAssign();
    v41 = swift_allocObject();
    *(v41 + 16) = 0;
    *(v41 + 24) = -1;
    v42 = &v40[OBJC_IVAR____TtC9PassKitUI13UIFlowManager_resultHandler];
    v43 = *&v40[OBJC_IVAR____TtC9PassKitUI13UIFlowManager_resultHandler];
    *v42 = sub_1BD6FC014;
    v42[1] = v41;
    sub_1BE048964();
    sub_1BD1107D8(v43);
    v44 = swift_allocObject();
    v44[2] = v49;
    v44[3] = v50;
    v44[4] = v41;
    v44[5] = v40;
    sub_1BE048964();
    sub_1BE048964();
    v45 = v40;
    sub_1BD398318(sub_1BD6FC01C, v44);

    v46 = type metadata accessor for PaymentOfferSetupProvisioningSheet.Coordinator();
    v57.receiver = v51;
    v57.super_class = v46;
    return objc_msgSendSuper2(&v57, sel_init);
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1BD6FC028(id a1, char a2)
{
  if (a2 != -1)
  {
    return sub_1BD52862C(a1);
  }

  return a1;
}

void sub_1BD6FC040(id a1, char a2)
{
  if (a2 != -1)
  {
    sub_1BD528638(a1);
  }
}

uint64_t type metadata accessor for PaymentOfferSelectorOverlay()
{
  result = qword_1EBD50C68;
  if (!qword_1EBD50C68)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1BD6FC0DC()
{
  sub_1BD6FC33C(319, &qword_1EBD4A468, type metadata accessor for PaymentOfferSelectorModel, MEMORY[0x1E6981790]);
  if (v0 <= 0x3F)
  {
    sub_1BD6FC3A0(319, &qword_1EBD50C78, &qword_1EBD50C80, &unk_1BE0F1E30, MEMORY[0x1E6981948]);
    if (v1 <= 0x3F)
    {
      sub_1BD6FC33C(319, &qword_1EBD3AB88, MEMORY[0x1E697BF90], MEMORY[0x1E697DCC0]);
      if (v2 <= 0x3F)
      {
        sub_1BD10EE48();
        if (v3 <= 0x3F)
        {
          sub_1BD6FC3A0(319, &qword_1EBD50C88, &qword_1EBD50C90, &unk_1BE0F1E38, MEMORY[0x1E6981790]);
          if (v4 <= 0x3F)
          {
            sub_1BD6FC3A0(319, &qword_1EBD39358, &unk_1EBD45160, &unk_1BE0C25A0, MEMORY[0x1E6981790]);
            if (v5 <= 0x3F)
            {
              sub_1BD6FC3A0(319, &qword_1EBD47B10, &qword_1EBD3A5C8, &unk_1BE0BAA50, MEMORY[0x1E6981790]);
              if (v6 <= 0x3F)
              {
                sub_1BD6FC3A0(319, &qword_1EBD39360, &qword_1EBD49710, &unk_1BE0B8580, MEMORY[0x1E6981790]);
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

void sub_1BD6FC33C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1BD6FC3A0(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t get_enum_tag_for_layout_string_9PassKitUI27PaymentOfferSelectorOverlayV12DetailsSheet33_F3098C924C5659FC90F8BA8F11A2A37BLLO(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1BD6FC41C(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFD && *(a1 + 24))
  {
    return (*a1 + 2147483645);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 2;
  if (v4 >= 4)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1BD6FC478(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFFD)
  {
    *result = 0;
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 2147483645;
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *result = a2 + 2;
    }
  }

  return result;
}

uint64_t sub_1BD6FC4DC(uint64_t a1, uint64_t a2, void *a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD50F68);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = v21 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F300);
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = v21 - v13;
  v21[0] = a1;
  v21[1] = a2;
  v21[2] = a3;
  type metadata accessor for PaymentOfferInstallmentPlanSelectionModel(0);
  sub_1BE048964();
  sub_1BE048964();
  v15 = a3;
  sub_1BE051974();
  v16 = v22;
  if (v22)
  {
    v17 = v23;
    v18 = v21[3];
    sub_1BD0DE19C(v3, v14, &qword_1EBD3F310);
    v19 = &v14[*(v11 + 36)];
    *v19 = v18;
    *(v19 + 1) = v16;
    *(v19 + 2) = v17;
    sub_1BD0DE19C(v14, v10, &qword_1EBD3F300);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F310);
    sub_1BD259BD0();
    sub_1BD259C5C();
    sub_1BE04F9A4();
    return sub_1BD0DE53C(v14, &qword_1EBD3F300);
  }

  else
  {
    sub_1BD0DE19C(v3, v10, &qword_1EBD3F310);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F310);
    sub_1BD259BD0();
    sub_1BD259C5C();
    return sub_1BE04F9A4();
  }
}

uint64_t sub_1BD6FC744(uint64_t a1, uint64_t a2, void *a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD50F30);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = v21 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD47FA0);
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = v21 - v13;
  v21[0] = a1;
  v21[1] = a2;
  v21[2] = a3;
  type metadata accessor for PaymentOfferInstallmentPlanSelectionModel(0);
  sub_1BE048964();
  sub_1BE048964();
  v15 = a3;
  sub_1BE051974();
  v16 = v22;
  if (v22)
  {
    v17 = v23;
    v18 = v21[3];
    sub_1BD0DE19C(v3, v14, &qword_1EBD47B48);
    v19 = &v14[*(v11 + 36)];
    *v19 = v18;
    *(v19 + 1) = v16;
    *(v19 + 2) = v17;
    sub_1BD0DE19C(v14, v10, &qword_1EBD47FA0);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD47B48);
    sub_1BD4D5B88();
    sub_1BD4D5C14();
    sub_1BE04F9A4();
    return sub_1BD0DE53C(v14, &qword_1EBD47FA0);
  }

  else
  {
    sub_1BD0DE19C(v3, v10, &qword_1EBD47B48);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD47B48);
    sub_1BD4D5B88();
    sub_1BD4D5C14();
    return sub_1BE04F9A4();
  }
}

uint64_t sub_1BD6FC9AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v5 = v4;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD50F08);
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = v24 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD50F10);
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = v24 - v16;
  v24[2] = a1;
  v24[3] = a2;
  v24[4] = a3;
  type metadata accessor for PaymentOfferInstallmentPlanSelectionModel(0);
  sub_1BE048964();
  sub_1BE048964();
  v18 = a3;
  sub_1BE051974();
  v19 = v25;
  if (v25)
  {
    v20 = v26;
    v24[1] = a4;
    v21 = v24[5];
    sub_1BD0DE19C(v5, v17, &qword_1EBD4C118);
    v22 = &v17[*(v14 + 36)];
    *v22 = v21;
    *(v22 + 1) = v19;
    *(v22 + 2) = v20;
    sub_1BD0DE19C(v17, v13, &qword_1EBD50F10);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4C118);
    sub_1BD70BC44();
    sub_1BD70BCFC(&qword_1EBD50F20, &qword_1EBD4C118, &unk_1BE0E57B0, sub_1BD70BD78);
    sub_1BE04F9A4();
    return sub_1BD0DE53C(v17, &qword_1EBD50F10);
  }

  else
  {
    sub_1BD0DE19C(v5, v13, &qword_1EBD4C118);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4C118);
    sub_1BD70BC44();
    sub_1BD70BCFC(&qword_1EBD50F20, &qword_1EBD4C118, &unk_1BE0E57B0, sub_1BD70BD78);
    return sub_1BE04F9A4();
  }
}

uint64_t sub_1BD6FCC60(uint64_t a1, uint64_t a2, void *a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD50D88);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = v21 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD50D90);
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = v21 - v13;
  v21[0] = a1;
  v21[1] = a2;
  v21[2] = a3;
  type metadata accessor for PaymentOfferInstallmentPlanSelectionModel(0);
  sub_1BE048964();
  sub_1BE048964();
  v15 = a3;
  sub_1BE051974();
  v16 = v22;
  if (v22)
  {
    v17 = v23;
    v18 = v21[3];
    sub_1BD0DE19C(v3, v14, &qword_1EBD50C98);
    v19 = &v14[*(v11 + 36)];
    *v19 = v18;
    *(v19 + 1) = v16;
    *(v19 + 2) = v17;
    sub_1BD0DE19C(v14, v10, &qword_1EBD50D90);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD50C98);
    sub_1BD708D94();
    sub_1BD708E20();
    sub_1BE04F9A4();
    return sub_1BD0DE53C(v14, &qword_1EBD50D90);
  }

  else
  {
    sub_1BD0DE19C(v3, v10, &qword_1EBD50C98);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD50C98);
    sub_1BD708D94();
    sub_1BD708E20();
    return sub_1BE04F9A4();
  }
}

uint64_t sub_1BD6FCEC8(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD50F50);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = v22 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD50F58);
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = v22 - v14;
  v22[0] = a1;
  v22[1] = a2;
  v22[2] = a3;
  type metadata accessor for PaymentOfferInstallmentPlanSelectionModel(0);
  sub_1BE048964();
  sub_1BE048964();
  v16 = a3;
  sub_1BE051974();
  v17 = v23;
  if (v23)
  {
    v18 = v24;
    v19 = v22[3];
    sub_1BD70BF20(v4, v15, type metadata accessor for PaymentOfferActionExplanationView);
    v20 = &v15[*(v12 + 36)];
    *v20 = v19;
    *(v20 + 1) = v17;
    *(v20 + 2) = v18;
    sub_1BD0DE19C(v15, v11, &qword_1EBD50F58);
    swift_storeEnumTagMultiPayload();
    type metadata accessor for PaymentOfferActionExplanationView();
    sub_1BD70BF88();
    sub_1BD70C044(&qword_1EBD57B20, type metadata accessor for PaymentOfferActionExplanationView);
    sub_1BE04F9A4();
    return sub_1BD0DE53C(v15, &qword_1EBD50F58);
  }

  else
  {
    sub_1BD70BF20(v4, v11, type metadata accessor for PaymentOfferActionExplanationView);
    swift_storeEnumTagMultiPayload();
    type metadata accessor for PaymentOfferActionExplanationView();
    sub_1BD70BF88();
    sub_1BD70C044(&qword_1EBD57B20, type metadata accessor for PaymentOfferActionExplanationView);
    return sub_1BE04F9A4();
  }
}

uint64_t sub_1BD6FD180@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v115 = a1;
  v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD37270) - 8;
  MEMORY[0x1EEE9AC00](v114, v3);
  v119 = v100 - v4;
  v113 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD50C98) - 8;
  MEMORY[0x1EEE9AC00](v113, v5);
  v107 = v100 - v6;
  v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD50CA0);
  v108 = *(v106 - 8);
  MEMORY[0x1EEE9AC00](v106, v7);
  v105 = v100 - v8;
  v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD50CA8);
  MEMORY[0x1EEE9AC00](v116, v9);
  v11 = v100 - v10;
  *v11 = sub_1BE051CD4();
  *(v11 + 1) = v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD50CB0);
  sub_1BD6FDD84(v1, &v11[*(v13 + 44)]);
  v14 = sub_1BE04EC64();
  v15 = sub_1BE0501D4();
  v16 = &v11[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD50CB8) + 36)];
  *v16 = v14;
  v16[8] = v15;
  v17 = type metadata accessor for PaymentOfferSelectorOverlay();
  v18 = *(v17 - 8);
  v19 = v17 - 8;
  v118 = (v17 - 8);
  MEMORY[0x1EEE9AC00](v17 - 8, v20);
  v22 = v21;
  v117 = (v21 + 15) & 0xFFFFFFFFFFFFFFF0;
  v23 = v100 - v117;
  v110 = type metadata accessor for PaymentOfferSelectorOverlay;
  sub_1BD70BF20(v2, v100 - v117, type metadata accessor for PaymentOfferSelectorOverlay);
  v24 = (*(v18 + 80) + 16) & ~*(v18 + 80);
  v111 = *(v18 + 80);
  v25 = swift_allocObject();
  v112 = type metadata accessor for PaymentOfferSelectorOverlay;
  sub_1BD70B2E4(v23, v25 + v24, type metadata accessor for PaymentOfferSelectorOverlay);
  v26 = &v11[*(v116 + 36)];
  *v26 = sub_1BD708650;
  v26[1] = v25;
  v26[2] = 0;
  v26[3] = 0;
  v27 = (v2 + *(v19 + 44));
  v28 = v27[1];
  v130[0] = *v27;
  v130[1] = v28;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD50CC0);
  v29 = sub_1BE0516C4();
  v100[0] = v132;
  v100[1] = v131;
  v102 = v133;
  v103 = *(&v132 + 1);
  v101 = *(&v133 + 1);
  v109 = v22;
  MEMORY[0x1EEE9AC00](v29, v30);
  v31 = v100 - v117;
  sub_1BD70BF20(v2, v100 - v117, type metadata accessor for PaymentOfferSelectorOverlay);
  v32 = swift_allocObject();
  sub_1BD70B2E4(v31, v32 + v24, type metadata accessor for PaymentOfferSelectorOverlay);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD50CC8);
  *&v104 = sub_1BD7086E0();
  *(&v104 + 1) = sub_1BD708824();
  v34 = sub_1BD708878();
  v35 = v105;
  v36 = v116;
  sub_1BE050F74();

  sub_1BD708C60(v103, v102, v101);
  sub_1BD0DE53C(v11, &qword_1EBD50CA8);
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD393E8);
  MEMORY[0x1EEE9AC00](v37 - 8, v38);
  v40 = v100 - v39;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD45120);
  v41 = v2;
  sub_1BE0516C4();
  type metadata accessor for MultiHyperLinkDetailSheet();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD394A0);
  v131 = v36;
  *&v132 = &type metadata for PaymentOfferSelectorOverlay.DetailsSheet;
  *(&v132 + 1) = v33;
  v133 = v104;
  *&v134 = v34;
  swift_getOpaqueTypeConformance2();
  sub_1BD70C044(&qword_1EBD451C0, type metadata accessor for MultiHyperLinkDetailSheet);
  sub_1BD10CC54();
  v42 = v106;
  v43 = v107;
  sub_1BE050F74();
  sub_1BD0DE53C(v40, &qword_1EBD393E8);
  (*(v108 + 8))(v35, v42);
  v44 = sub_1BE051D74();
  v45 = *v2;
  v46 = v41[1];
  v131 = *v41;
  *&v132 = v46;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4A778);
  sub_1BE0516A4();
  v47 = *&v130[0];
  sub_1BD228650(&v122);

  v48 = v129;
  *&v130[0] = v44;
  *(&v130[7] + 1) = v129;
  *(&v130[3] + 8) = v125;
  v50 = v124;
  v49 = v125;
  *(&v130[2] + 8) = v124;
  v51 = v122;
  *(&v130[1] + 8) = v123;
  *(&v130[6] + 8) = v128;
  v53 = v127;
  v52 = v128;
  *(&v130[5] + 8) = v127;
  v54 = v126;
  *(&v130[4] + 8) = v126;
  v55 = v123;
  *(v130 + 8) = v122;
  v56 = &v43[*(v113 + 44)];
  v57 = v43;
  v58 = v130[3];
  *(v56 + 2) = v130[2];
  *(v56 + 3) = v58;
  v59 = v130[1];
  *v56 = v130[0];
  *(v56 + 1) = v59;
  v60 = v130[7];
  *(v56 + 6) = v130[6];
  *(v56 + 7) = v60;
  v61 = v130[5];
  *(v56 + 4) = v130[4];
  *(v56 + 5) = v61;
  v135 = v49;
  v134 = v50;
  v133 = v55;
  v132 = v51;
  v131 = v44;
  v139 = v48;
  v138 = v52;
  v137 = v53;
  v136 = v54;
  sub_1BD0DE19C(v130, &v120, &qword_1EBD50D78);
  sub_1BD0DE53C(&v131, &qword_1EBD50D78);
  *&v122 = v45;
  *(&v122 + 1) = v46;
  sub_1BE0516C4();
  v62 = v120;
  v63 = v121;
  swift_getKeyPath();
  v120 = v62;
  v121 = v63;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD50D80);
  sub_1BE051904();

  v64 = v122;
  v65 = v123;

  v66 = v119;
  sub_1BD6FCC60(v64, *(&v64 + 1), v65);

  sub_1BD0DE53C(v57, &qword_1EBD50C98);
  v122 = *(v41 + *(v118 + 14));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD497C0);
  v67 = sub_1BE0516C4();
  v68 = v121;
  v69 = v66 + *(v114 + 44);
  *v69 = v120;
  *(v69 + 16) = v68;
  MEMORY[0x1EEE9AC00](v67, v70);
  v71 = v100 - v117;
  *(v72 + 24) = 0;
  *(v72 + 32) = 0;
  sub_1BD70BF20(v41, v71, v110);
  sub_1BE0528A4();
  v73 = sub_1BE052894();
  v74 = (v111 + 32) & ~v111;
  v75 = swift_allocObject();
  v76 = MEMORY[0x1E69E85E0];
  *(v75 + 16) = v73;
  *(v75 + 24) = v76;
  sub_1BD70B2E4(v71, v75 + v74, v112);
  v77 = sub_1BE0528D4();
  v78 = *(v77 - 8);
  v79 = *(v78 + 64);
  MEMORY[0x1EEE9AC00](v77, v80);
  v81 = (v79 + 15) & 0xFFFFFFFFFFFFFFF0;
  v82 = v100 - v81;
  sub_1BE0528B4();
  if (__isPlatformVersionAtLeast(2, 26, 4, 0))
  {
    v117 = sub_1BE04EAA4();
    v118 = v100;
    v116 = *(v117 - 8);
    MEMORY[0x1EEE9AC00](v117, v83);
    v114 = v77;
    v85 = v100 - ((v84 + 15) & 0xFFFFFFFFFFFFFFF0);
    *&v120 = 0;
    *(&v120 + 1) = 0xE000000000000000;
    sub_1BE053834();

    *&v120 = 0xD000000000000038;
    *(&v120 + 1) = 0x80000001BE1368F0;
    *&v122 = 65;
    v86 = sub_1BE053B24();
    MEMORY[0x1BFB3F610](v86);

    v89 = MEMORY[0x1EEE9AC00](v87, v88);
    v90 = v100 - v81;
    v91 = v100 - v81;
    v92 = v114;
    (*(v78 + 16))(v90, v91, v114, v89);
    sub_1BE04EA94();
    (*(v78 + 8))(v82, v92);
    v93 = v115;
    sub_1BD0A60F8(v119, v115);
    v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD37278);
    return (*(v116 + 32))(v93 + *(v94 + 36), v85, v117);
  }

  else
  {
    v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD37280);
    v97 = v115;
    v98 = (v115 + *(v96 + 36));
    v99 = sub_1BE04E7B4();
    (*(v78 + 32))(&v98[*(v99 + 20)], v100 - v81, v77);
    *v98 = &unk_1BE0F2060;
    *(v98 + 1) = v75;
    return sub_1BD0A60F8(v119, v97);
  }
}

uint64_t sub_1BD6FDD84@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v77 = a2;
  v3 = sub_1BE04EE04();
  v75 = *(v3 - 8);
  v76 = v3;
  MEMORY[0x1EEE9AC00](v3, v4);
  v74 = &v57 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1BE04FA44();
  v72 = *(v6 - 8);
  v73 = v6;
  MEMORY[0x1EEE9AC00](v6, v7);
  v61 = &v57 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for PaymentOfferSelectorOverlay();
  v59 = *(v9 - 8);
  v10 = *(v59 + 64);
  MEMORY[0x1EEE9AC00](v9 - 8, v11);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD50DE8);
  v60 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = &v57 - v14;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD50DF0);
  v64 = *(v66 - 8);
  MEMORY[0x1EEE9AC00](v66, v16);
  v18 = &v57 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD50DF8);
  v69 = *(v19 - 8);
  v70 = v19;
  MEMORY[0x1EEE9AC00](v19, v20);
  v22 = &v57 - v21;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD50E00);
  v67 = *(v71 - 8);
  MEMORY[0x1EEE9AC00](v71, v23);
  v68 = &v57 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25, v26);
  v78 = &v57 - v27;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD50E08);
  v63 = *(v65 - 8);
  MEMORY[0x1EEE9AC00](v65, v28);
  v62 = &v57 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30, v31);
  v33 = &v57 - v32;
  sub_1BD6FE5E0(&v57 - v32);
  v79 = a1;
  sub_1BE0501B4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD50E10);
  sub_1BD70A7CC();
  sub_1BE04E304();
  sub_1BD70BF20(a1, &v57 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PaymentOfferSelectorOverlay);
  v34 = (*(v59 + 80) + 16) & ~*(v59 + 80);
  v35 = swift_allocObject();
  sub_1BD70B2E4(&v57 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v35 + v34, type metadata accessor for PaymentOfferSelectorOverlay);
  v36 = sub_1BD0DE4F4(&qword_1EBD50E70, &qword_1EBD50DE8);
  sub_1BE0509D4();
  v37 = v61;

  (*(v60 + 8))(v15, v12);
  sub_1BE04FA34();
  LOBYTE(v34) = sub_1BE0501B4();
  sub_1BE0501A4();
  sub_1BE0501A4();
  if (sub_1BE0501A4() != v34)
  {
    sub_1BE0501A4();
  }

  v80 = v12;
  v81 = v36;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v39 = v66;
  sub_1BE050D34();
  (*(v72 + 8))(v37, v73);
  (*(v64 + 8))(v18, v39);
  sub_1BE051EA4();
  v40 = v74;
  sub_1BE04EDF4();
  v80 = v39;
  v81 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  v41 = v78;
  v42 = v70;
  sub_1BE050CF4();
  (*(v75 + 8))(v40, v76);
  (*(v69 + 8))(v22, v42);
  v43 = v63;
  v44 = *(v63 + 16);
  v45 = v62;
  v58 = v33;
  v46 = v33;
  v47 = v65;
  v44(v62, v46, v65);
  v49 = v67;
  v48 = v68;
  v76 = *(v67 + 16);
  v50 = v41;
  v51 = v71;
  v76(v68, v50, v71);
  v52 = v77;
  v44(v77, v45, v47);
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD50E78);
  v76(&v52[*(v53 + 48)], v48, v51);
  v54 = *(v49 + 8);
  v54(v78, v51);
  v55 = *(v43 + 8);
  v55(v58, v47);
  v54(v48, v51);
  return (v55)(v45, v47);
}

uint64_t sub_1BD6FE5E0@<X0>(uint64_t a1@<X8>)
{
  v12 = a1;
  v2 = type metadata accessor for PaymentOfferSelectorOverlay();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2 - 8, v5);
  v6 = sub_1BE051CD4();
  v8 = v7;
  sub_1BD705D4C(&v26);
  v22 = v29;
  v23 = v30;
  v20 = v27;
  v21 = v28;
  v19 = v26;
  v24[2] = v28;
  v24[3] = v29;
  v25 = v30;
  v24[0] = v26;
  v24[1] = v27;
  sub_1BD0DE19C(&v19, &v13, &qword_1EBD50EF0);
  sub_1BD0DE53C(v24, &qword_1EBD50EF0);
  v16 = v21;
  v17 = v22;
  v18 = v23;
  v15 = v20;
  v14 = v19;
  *&v13 = v6;
  *(&v13 + 1) = v8;
  sub_1BD70BF20(v1, &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PaymentOfferSelectorOverlay);
  v9 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v10 = swift_allocObject();
  sub_1BD70B2E4(&v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v10 + v9, type metadata accessor for PaymentOfferSelectorOverlay);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD50EF8);
  sub_1BD0DE4F4(&qword_1EBD50F00, &qword_1EBD50EF8);
  sub_1BE0509D4();

  v28 = v15;
  v29 = v16;
  v30 = v17;
  v31 = v18;
  v26 = v13;
  v27 = v14;
  return sub_1BD0DE53C(&v26, &qword_1EBD50EF8);
}

void sub_1BD6FE858()
{
  MEMORY[0x1BFB3EDF0](0.5, 0.55, 0.0);
  sub_1BE04E7D4();

  sub_1BD6FE9AC();
}

uint64_t sub_1BD6FE8DC()
{
  type metadata accessor for PaymentOfferSelectorOverlay();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54350);
  sub_1BE0516B4();
  sub_1BE048C84();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD42150);
  return sub_1BE0516B4();
}

void sub_1BD6FE9AC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD45640);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1BE0B6CA0;
  v1 = *MEMORY[0x1E69BB6C0];
  v2 = *MEMORY[0x1E69BB6F8];
  *(v0 + 32) = *MEMORY[0x1E69BB6C0];
  *(v0 + 40) = v2;
  type metadata accessor for PKAnalyticsSubject(0);
  v3 = v1;
  v4 = v2;
  v47 = sub_1BE052724();

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3D1E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BE0B76F0;
  v6 = *MEMORY[0x1E69BA680];
  *(inited + 32) = *MEMORY[0x1E69BA680];
  v7 = sub_1BE052434();
  v8 = MEMORY[0x1E69BABE8];
  *(inited + 40) = v7;
  *(inited + 48) = v9;
  v10 = *v8;
  *(inited + 56) = *v8;
  *(inited + 64) = sub_1BE052434();
  *(inited + 72) = v11;
  v12 = *MEMORY[0x1E69BA9D0];
  *(inited + 80) = *MEMORY[0x1E69BA9D0];
  v13 = v6;
  v14 = v10;
  v15 = v12;
  sub_1BD709D1C();
  v46 = PKAnalyticsReportSwitchToggleResultValue();
  *(inited + 88) = sub_1BE052434();
  *(inited + 96) = v16;
  v17 = *MEMORY[0x1E69BACF8];
  *(inited + 104) = *MEMORY[0x1E69BACF8];
  v18 = v17;
  sub_1BD709E44();
  v45 = PKAnalyticsReportSwitchToggleResultValue();
  *(inited + 112) = sub_1BE052434();
  *(inited + 120) = v19;
  v20 = *MEMORY[0x1E69BA9F8];
  *(inited + 128) = *MEMORY[0x1E69BA9F8];
  v21 = v20;
  sub_1BD709F64();
  v22 = PKAnalyticsReportSwitchToggleResultValue();
  *(inited + 136) = sub_1BE052434();
  *(inited + 144) = v23;
  v24 = *MEMORY[0x1E69BAC80];
  *(inited + 152) = *MEMORY[0x1E69BAC80];
  v25 = v24;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4A778);
  sub_1BE0516A4();
  v26 = *&v48[OBJC_IVAR____TtC9PassKitUI25PaymentOfferSelectorModel_paymentPass];

  v27 = [v26 organizationName];
  *(inited + 160) = sub_1BE052434();
  *(inited + 168) = v28;
  v29 = *MEMORY[0x1E69BAC78];
  *(inited + 176) = *MEMORY[0x1E69BAC78];
  v30 = v29;
  sub_1BE0516A4();
  v31 = *&v48[OBJC_IVAR____TtC9PassKitUI25PaymentOfferSelectorModel_paymentPass];

  v32 = [v31 issuerCountryCode];
  if (v32)
  {
    v33 = sub_1BE052434();
    v35 = v34;

    *(inited + 184) = v33;
    *(inited + 192) = v35;
    v36 = *MEMORY[0x1E69BAD48];
    *(inited + 200) = *MEMORY[0x1E69BAD48];
    v37 = v36;
    sub_1BE0516A4();
    v38 = *&v48[OBJC_IVAR____TtC9PassKitUI25PaymentOfferSelectorModel_paymentPass];

    v39 = PKDefaultPaymentNetworkNameForPaymentPass();
    if (v39)
    {

      v40 = objc_opt_self();
      v41 = sub_1BE052434();
      v43 = v42;

      *(inited + 208) = v41;
      *(inited + 216) = v43;
      sub_1BD1AAF50(inited);
      swift_setDeallocating();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F590);
      swift_arrayDestroy();
      type metadata accessor for PKAnalyticsKey(0);
      sub_1BD70C044(&qword_1EBD35F00, type metadata accessor for PKAnalyticsKey);
      v44 = sub_1BE052224();

      [v40 subjects:v47 sendEvent:v44];

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_1BD6FEDF4(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v181 = a3;
  v180 = a2;
  v200 = a4;
  v183 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD50D70);
  v182 = *(v183 - 8);
  MEMORY[0x1EEE9AC00](v183, v5);
  v179 = &v178 - v6;
  v191 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD50D60);
  MEMORY[0x1EEE9AC00](v191, v7);
  v187 = &v178 - v8;
  v189 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD50DB0);
  MEMORY[0x1EEE9AC00](v189, v9);
  v190 = &v178 - v10;
  v199 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD50D40);
  MEMORY[0x1EEE9AC00](v199, v11);
  v13 = &v178 - v12;
  v186 = type metadata accessor for PaymentOfferSelectedInstallmentDetailView();
  v184 = *(v186 - 1);
  MEMORY[0x1EEE9AC00](v186, v14);
  v16 = &v178 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17, v18);
  v178 = &v178 - v19;
  v188 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD50D50);
  MEMORY[0x1EEE9AC00](v188, v20);
  v185 = &v178 - v21;
  v22 = type metadata accessor for PaymentOfferRewardsAmountEntry();
  v23 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22, v24);
  v26 = (&v178 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
  v194 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD50D28);
  MEMORY[0x1EEE9AC00](v194, v27);
  v29 = &v178 - v28;
  v196 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD50DB8);
  MEMORY[0x1EEE9AC00](v196, v30);
  v198 = &v178 - v31;
  v192 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD50DC0);
  MEMORY[0x1EEE9AC00](v192, v32);
  v193 = (&v178 - v33);
  v197 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD50D08);
  MEMORY[0x1EEE9AC00](v197, v34);
  v195 = &v178 - v35;
  v36 = type metadata accessor for PaymentOfferSelectorOverlay();
  v37 = *(*(v36 - 8) + 64);
  MEMORY[0x1EEE9AC00](v36 - 8, v38);
  MEMORY[0x1EEE9AC00](v39, v40);
  v42 = &v178 - v41;
  MEMORY[0x1EEE9AC00](v43, v44);
  v48 = &v178 - v47;
  switch(a1)
  {
    case 0:
      v191 = v23;
      v187 = v45;
      v131 = *v201;
      v130 = v201[1];
      v202 = *v201;
      v203 = v130;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4A778);
      sub_1BE0516A4();
      v132 = v206;
      v133 = sub_1BD228C3C();

      v190 = v133;
      if (v133)
      {
        v202 = v131;
        v203 = v130;
        sub_1BE0516A4();
        v134 = v206;
        swift_getKeyPath();
        v202 = v134;
        sub_1BD70C044(&qword_1EBD3E558, type metadata accessor for PaymentOfferSelectorModel);
        sub_1BE04B594();

        v135 = *&v134[OBJC_IVAR____TtC9PassKitUI25PaymentOfferSelectorModel__rewardsBalance];
        v136 = v135;

        if (v135)
        {
          sub_1BD70BF20(v201, v48, type metadata accessor for PaymentOfferSelectorOverlay);
          v137 = (v187[80] + 16) & ~v187[80];
          v138 = swift_allocObject();
          sub_1BD70B2E4(v48, v138 + v137, type metadata accessor for PaymentOfferSelectorOverlay);
          v139 = *(v22 + 28);
          *(v26 + v139) = swift_getKeyPath();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3FA20);
          swift_storeEnumTagMultiPayload();
          *v26 = v190;
          v26[1] = v136;
          v26[2] = sub_1BD70A570;
          v26[3] = v138;
          sub_1BD70B2E4(v26, v29, type metadata accessor for PaymentOfferRewardsAmountEntry);
          v140 = 0;
LABEL_33:
          (v191)[7](v29, v140, 1, v22);
          v155 = &qword_1EBD50D28;
          sub_1BD0DE19C(v29, v193, &qword_1EBD50D28);
          swift_storeEnumTagMultiPayload();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD50D18);
          sub_1BD70BCFC(&qword_1EBD50D10, &qword_1EBD50D18, &unk_1BE0F1FE0, sub_1BD10CC00);
          sub_1BD7089BC();
          v156 = v195;
          sub_1BE04F9A4();
          sub_1BD0DE19C(v156, v198, &qword_1EBD50D08);
          swift_storeEnumTagMultiPayload();
          sub_1BD708904();
          sub_1BD708A70();
          sub_1BE04F9A4();
          sub_1BD0DE53C(v156, &qword_1EBD50D08);
LABEL_50:
          v175 = v29;
          v176 = v155;
          goto LABEL_51;
        }
      }

      v140 = 1;
      goto LABEL_33;
    case 1:
      v86 = v46;
      v187 = v45;
      v194 = v16;
      v195 = v13;
      v87 = *v201;
      v88 = v201[1];
      v202 = *v201;
      v203 = v88;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4A778);
      sub_1BE0516A4();
      v89 = v206;
      v90 = *&v206[OBJC_IVAR____TtC9PassKitUI25PaymentOfferSelectorModel_paymentOffersController];
      v91 = v90;

      if (v90)
      {
        v202 = v87;
        v203 = v88;
        sub_1BE0516A4();
        v92 = v206;
        v93 = sub_1BD228AA4();

        if (v93)
        {
          v193 = v93;
          v202 = v87;
          v203 = v88;
          sub_1BE0516A4();
          v94 = v206;
          swift_getKeyPath();
          v202 = v94;
          sub_1BD70C044(&qword_1EBD3E558, type metadata accessor for PaymentOfferSelectorModel);
          sub_1BE04B594();

          v95 = *&v94[OBJC_IVAR____TtC9PassKitUI25PaymentOfferSelectorModel__selectedPaymentOffer];
          v96 = v95;

          if (v95)
          {
            objc_opt_self();
            v97 = swift_dynamicCastObjCClass();
            if (v97)
            {
              v183 = v97;
              v98 = [v97 selectedInstallmentOffer];
              v99 = v193;
              if (v98)
              {
                v100 = v98;
                v192 = [v98 installmentAmount];
                if (v192)
                {
                  v182 = v100;
                  v202 = v87;
                  v203 = v88;
                  sub_1BE0516A4();
                  v101 = v206;
                  v102 = *&v206[OBJC_IVAR____TtC9PassKitUI25PaymentOfferSelectorModel_paymentPass];

                  v103 = [v192 amount];
                  if (!v103)
                  {
LABEL_54:
                    __break(1u);
                    goto LABEL_55;
                  }

                  v104 = v103;
                  v105 = [v192 currency];
                  if (!v105)
                  {
LABEL_55:
                    __break(1u);
                    return;
                  }

                  v106 = v105;
                  v181 = sub_1BE052434();
                  v180 = v107;

                  sub_1BD70BF20(v201, v86, type metadata accessor for PaymentOfferSelectorOverlay);
                  v108 = (v187[80] + 16) & ~v187[80];
                  v109 = swift_allocObject();
                  sub_1BD70B2E4(v86, v109 + v108, type metadata accessor for PaymentOfferSelectorOverlay);
                  v110 = *(v186 + 13);
                  KeyPath = swift_getKeyPath();
                  v112 = v194;
                  *&v194[v110] = KeyPath;
                  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4E5B0);
                  swift_storeEnumTagMultiPayload();
                  *v112 = v102;
                  v112[1] = v104;
                  v113 = v180;
                  v112[2] = v181;
                  v112[3] = v113;
                  v114 = v193;
                  v112[4] = v91;
                  v112[5] = v114;
                  v206 = v183;
                  sub_1BD7098F8();
                  v115 = v91;
                  v116 = v96;
                  v117 = v102;
                  v118 = v114;
                  sub_1BE051694();
                  v119 = v203;
                  v112[6] = v202;
                  v112[7] = v119;
                  v112[8] = sub_1BD70C08C;
                  v112[9] = v109;
                  v112[11] = 0;
                  v112[12] = 0;
                  v112[10] = PKEdgeInsetsMake;
                  v120 = [v115 configuration];
                  v121 = [v120 context];

                  if (v121 == 1)
                  {
                    v122 = 96;
                  }

                  else
                  {
                    v122 = 64;
                  }

                  v202 = v117;
                  LOBYTE(v203) = v122;
                  v123 = objc_allocWithZone(type metadata accessor for PaymentOfferInstallmentPlanSelectionModel(0));
                  v124 = sub_1BD8D1EE0(&v202, v90, v114);

                  v125 = (v112 + *(v186 + 14));
                  v206 = v124;
                  v126 = v124;
                  sub_1BE051694();

                  v127 = v203;
                  *v125 = v202;
                  v125[1] = v127;
                  v128 = v178;
                  sub_1BD70B2E4(v112, v178, type metadata accessor for PaymentOfferSelectedInstallmentDetailView);
                  v29 = v185;
                  sub_1BD70B2E4(v128, v185, type metadata accessor for PaymentOfferSelectedInstallmentDetailView);
                  v129 = 0;
                  goto LABEL_49;
                }

                v91 = v96;
                v96 = v100;
              }

              else
              {
                v99 = v91;
                v91 = v193;
              }
            }

            else
            {
              v99 = v193;
            }

            v160 = v91;
            v91 = v96;
            v29 = v185;
          }

          else
          {
            v29 = v185;
            v160 = v193;
          }
        }

        else
        {
          v29 = v185;
        }

        v129 = 1;
      }

      else
      {
        v129 = 1;
        v29 = v185;
      }

LABEL_49:
      (*(v184 + 56))(v29, v129, 1, v186);
      v155 = &qword_1EBD50D50;
      sub_1BD0DE19C(v29, v190, &qword_1EBD50D50);
      swift_storeEnumTagMultiPayload();
      sub_1BD708AFC();
      sub_1BD708BB0();
      v177 = v195;
      sub_1BE04F9A4();
      sub_1BD0DE19C(v177, v198, &qword_1EBD50D40);
      swift_storeEnumTagMultiPayload();
      sub_1BD708904();
      sub_1BD708A70();
      sub_1BE04F9A4();
      sub_1BD0DE53C(v177, &qword_1EBD50D40);
      goto LABEL_50;
    case 2:
      v195 = v13;
      v49 = *v201;
      v50 = v201[1];
      v202 = *v201;
      v203 = v50;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4A778);
      sub_1BE0516A4();
      v51 = v206;
      swift_getKeyPath();
      v202 = v51;
      sub_1BD70C044(&qword_1EBD3E558, type metadata accessor for PaymentOfferSelectorModel);
      sub_1BE04B594();

      v52 = *&v51[OBJC_IVAR____TtC9PassKitUI25PaymentOfferSelectorModel__rewardsBalance];
      v53 = v52;

      if (v52)
      {
        v202 = v49;
        v203 = v50;
        sub_1BE0516A4();
        v54 = v206;
        v55 = *&v206[OBJC_IVAR____TtC9PassKitUI25PaymentOfferSelectorModel_transactionSourceCollection];
        v56 = v55;

        v57 = v187;
        if (v55)
        {
          v202 = v49;
          v203 = v50;
          sub_1BE0516A4();
          v58 = v206;
          v59 = *&v206[OBJC_IVAR____TtC9PassKitUI25PaymentOfferSelectorModel_paymentPass];

          v60 = [v59 uniqueID];
          if (v60)
          {
            v61 = [v56 transactionSourceIdentifiers];
            v62 = MEMORY[0x1E69E6158];
            sub_1BE052A34();
            v194 = v56;

            v63 = objc_allocWithZone(PKDashboardRewardsBalanceItem);
            v64 = v53;
            v65 = sub_1BE052A24();

            v66 = [v63 initWithPaymentRewardsBalance:v64 passUniqueIdentifier:v60 transactionSourceIdentifiers:v65];

            v193 = &v178;
            MEMORY[0x1EEE9AC00](v67, v68);
            v69 = v201;
            *(&v178 - 2) = v66;
            *(&v178 - 1) = v69;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD50DC8);
            v70 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD50DD0);
            v71 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3E9E8);
            v72 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD50DD8);
            v73 = type metadata accessor for PKDashboardRewardsBalanceDetailsView();
            v74 = sub_1BD70C044(&qword_1EBD50DE0, type metadata accessor for PKDashboardRewardsBalanceDetailsView);
            v75 = sub_1BD0DDEBC();
            v202 = v73;
            v203 = v62;
            v204 = v74;
            v205 = v75;
            OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
            v202 = v72;
            v203 = OpaqueTypeConformance2;
            v77 = swift_getOpaqueTypeConformance2();
            v78 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3E9F0);
            v79 = sub_1BD0DE4F4(&qword_1EBD3E9F8, &qword_1EBD3E9F0);
            v202 = v78;
            v203 = v79;
            v80 = swift_getOpaqueTypeConformance2();
            v202 = v70;
            v203 = v71;
            v204 = v77;
            v205 = v80;
            swift_getOpaqueTypeConformance2();
            v81 = v179;
            sub_1BE04EC04();

            v82 = v182;
            v57 = v187;
            v83 = v81;
            v84 = v183;
            (*(v182 + 4))(v187, v83, v183);
            v85 = 0;
LABEL_36:
            v82[7](v57, v85, 1, v84);
            sub_1BD0DE19C(v57, v190, &qword_1EBD50D60);
            swift_storeEnumTagMultiPayload();
            sub_1BD708AFC();
            sub_1BD708BB0();
            v157 = v195;
            sub_1BE04F9A4();
            sub_1BD0DE19C(v157, v198, &qword_1EBD50D40);
            swift_storeEnumTagMultiPayload();
            sub_1BD708904();
            sub_1BD708A70();
            sub_1BE04F9A4();
            sub_1BD0DE53C(v157, &qword_1EBD50D40);
            sub_1BD0DE53C(v57, &qword_1EBD50D60);
            return;
          }

          __break(1u);
          goto LABEL_54;
        }

        v85 = 1;
      }

      else
      {
        v85 = 1;
        v57 = v187;
      }

      v84 = v183;
      v82 = v182;
      goto LABEL_36;
  }

  v187 = v45;
  v142 = *v201;
  v141 = v201[1];
  v202 = *v201;
  v203 = v141;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4A778);
  sub_1BE0516A4();
  v143 = v206;
  v144 = *&v206[OBJC_IVAR____TtC9PassKitUI25PaymentOfferSelectorModel_paymentOffersController];
  v145 = v144;

  if (v144)
  {
    v190 = v145;
    v202 = v142;
    v203 = v141;
    sub_1BE0516A4();
    v146 = v206;
    v147 = sub_1BD228C3C();

    v191 = v147;
    if (v147)
    {
      v189 = v144;
      v202 = v142;
      v203 = v141;
      sub_1BE0516A4();
      v148 = v206;
      v149 = *&v206[OBJC_IVAR____TtC9PassKitUI25PaymentOfferSelectorModel_paymentOffersController];
      v150 = v149;

      if (v149)
      {
        v151 = [v150 configuration];

        v188 = [v151 context];
      }

      else
      {
        v188 = 1;
      }

      v144 = v181;
      v186 = type metadata accessor for PaymentOfferSelectorOverlay;
      v161 = v201;
      sub_1BD70BF20(v201, v48, type metadata accessor for PaymentOfferSelectorOverlay);
      v162 = (v187[80] + 16) & ~v187[80];
      v163 = swift_allocObject();
      sub_1BD70B2E4(v48, v163 + v162, type metadata accessor for PaymentOfferSelectorOverlay);
      sub_1BD70BF20(v161, v42, v186);
      v164 = (v162 + v37 + 7) & 0xFFFFFFFFFFFFFFF8;
      v159 = swift_allocObject();
      sub_1BD70B2E4(v42, v159 + v162, type metadata accessor for PaymentOfferSelectorOverlay);
      *(v159 + v164) = v188;
      v165 = (v159 + ((v164 + 15) & 0xFFFFFFFFFFFFFFF8));
      v166 = v180;
      *v165 = a1;
      v165[1] = v166;
      v167 = v144;
      v168 = v190;
      v169 = v167;
      sub_1BE048964();
      v153 = v191;
      v170 = v191;
      v147 = v163;
      sub_1BE048964();
      sub_1BE048964();
      v158 = sub_1BD70A6C0;
      v154 = sub_1BD70C08C;
      v152 = v189;
      goto LABEL_42;
    }

    v152 = 0;
    v153 = 0;
    v144 = 0;
    v154 = 0;
  }

  else
  {
    v152 = 0;
    v153 = 0;
    v154 = 0;
    v147 = 0;
  }

  v158 = 0;
  v159 = 0;
LABEL_42:
  v191 = v153;
  v171 = v193;
  *v193 = v152;
  v171[1] = v153;
  v171[2] = v144;
  v171[3] = v154;
  v171[4] = v147;
  v171[5] = v158;
  v171[6] = v159;
  v201 = v159;
  swift_storeEnumTagMultiPayload();
  sub_1BD70A5E0(v152, v153, v144);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD50D18);
  sub_1BD70BCFC(&qword_1EBD50D10, &qword_1EBD50D18, &unk_1BE0F1FE0, sub_1BD10CC00);
  sub_1BD7089BC();
  v172 = v144;
  v173 = v195;
  sub_1BE04F9A4();
  sub_1BD0DE19C(v173, v198, &qword_1EBD50D08);
  swift_storeEnumTagMultiPayload();
  sub_1BD708904();
  sub_1BD708A70();
  sub_1BE04F9A4();
  v174 = v191;
  sub_1BD70A650(v152, v191, v172);
  sub_1BD70A650(v152, v174, v172);
  v175 = v173;
  v176 = &qword_1EBD50D08;
LABEL_51:
  sub_1BD0DE53C(v175, v176);
}

uint64_t sub_1BD7005D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 40) = a3;
  sub_1BE0528A4();
  *(v3 + 48) = sub_1BE052894();
  v5 = sub_1BE052844();

  return MEMORY[0x1EEE6DFA0](sub_1BD70066C, v5, v4);
}

uint64_t sub_1BD70066C()
{
  v1 = v0[5];

  v2 = v1[1];
  v0[2] = *v1;
  v0[3] = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4A778);
  sub_1BE0516A4();
  v3 = v0[4];
  sub_1BD2299B0(0);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1BD700708@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for PaymentOfferSelectorOverlay();
  v5 = v4 - 8;
  v6 = *(v4 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v4, v8);
  *a2 = sub_1BE04F7B4();
  *(a2 + 8) = 0x4020000000000000;
  *(a2 + 16) = 0;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD50E80);
  sub_1BD700970(a1, a2 + *(v9 + 44));
  v10 = a1 + *(v5 + 40);
  v11 = *v10;
  v12 = *(v10 + 1);
  v30[16] = v11;
  v31 = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54350);
  sub_1BE0516A4();
  LOBYTE(v5) = v30[15];
  v13 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD50E48) + 36);
  *v13 = 0;
  *(v13 + 8) = v5;
  LOBYTE(v5) = sub_1BE0501C4();
  sub_1BE04E1F4();
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v22 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD50E38) + 36);
  *v22 = v5;
  *(v22 + 8) = v15;
  *(v22 + 16) = v17;
  *(v22 + 24) = v19;
  *(v22 + 32) = v21;
  *(v22 + 40) = 0;
  *(a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD50E28) + 36)) = 0;
  v23 = sub_1BE051CD4();
  v25 = v24;
  sub_1BD70BF20(a1, &v30[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)], type metadata accessor for PaymentOfferSelectorOverlay);
  v26 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v27 = swift_allocObject();
  sub_1BD70B2E4(&v30[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)], v27 + v26, type metadata accessor for PaymentOfferSelectorOverlay);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD50E10);
  v29 = (a2 + *(result + 36));
  *v29 = sub_1BD70AAB4;
  v29[1] = v27;
  v29[2] = v23;
  v29[3] = v25;
  return result;
}

uint64_t sub_1BD700970@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v319 = a2;
  v334 = type metadata accessor for PaymentOfferSelectorOverlay();
  v322 = *(v334 - 8);
  MEMORY[0x1EEE9AC00](v334, v3);
  v332 = v4;
  v324 = &v289 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v325 = type metadata accessor for PaymentOfferSelectorTile();
  MEMORY[0x1EEE9AC00](v325, v5);
  v306 = &v289 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v305 = &v289 - v9;
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = &v289 - v12;
  v326 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD50EB0);
  MEMORY[0x1EEE9AC00](v326, v14);
  v309 = &v289 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16, v17);
  v313 = &v289 - v18;
  MEMORY[0x1EEE9AC00](v19, v20);
  v304 = &v289 - v21;
  v327 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD50EB8);
  MEMORY[0x1EEE9AC00](v327, v22);
  v310 = &v289 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24, v25);
  v314 = (&v289 - v26);
  MEMORY[0x1EEE9AC00](v27, v28);
  v320 = (&v289 - v29);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD50EC0);
  v333 = *(v30 - 8);
  MEMORY[0x1EEE9AC00](v30, v31);
  v307 = &v289 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v33, v34);
  v308 = &v289 - v35;
  MEMORY[0x1EEE9AC00](v36, v37);
  v311 = &v289 - v38;
  MEMORY[0x1EEE9AC00](v39, v40);
  v312 = (&v289 - v41);
  MEMORY[0x1EEE9AC00](v42, v43);
  v302 = &v289 - v44;
  MEMORY[0x1EEE9AC00](v45, v46);
  v303 = &v289 - v47;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD50EE0);
  MEMORY[0x1EEE9AC00](v48 - 8, v49);
  v318 = &v289 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v51, v52);
  v317 = &v289 - v53;
  MEMORY[0x1EEE9AC00](v54, v55);
  v316 = &v289 - v56;
  MEMORY[0x1EEE9AC00](v57, v58);
  v60 = &v289 - v59;
  MEMORY[0x1EEE9AC00](v61, v62);
  v64 = &v289 - v63;
  MEMORY[0x1EEE9AC00](v65, v66);
  v68 = &v289 - v67;
  v69 = *a1;
  v70 = a1[1];
  v335 = a1;
  *&v364 = v69;
  *(&v364 + 1) = v70;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4A778);
  sub_1BE0516A4();
  v72 = v356;
  sub_1BD227C90(v342);

  v328 = v30;
  v329 = v71;
  v321 = v64;
  v330 = v68;
  v331 = v69;
  v323 = v70;
  v315 = v60;
  if (!*(&v342[0] + 1))
  {
    v77 = 1;
    v78 = v333;
    goto LABEL_21;
  }

  v364 = v342[0];
  v371 = v343;
  v369 = v342[5];
  v370 = v342[6];
  v367 = v342[3];
  v368 = v342[4];
  v365 = v342[1];
  v366 = v342[2];
  v73 = v335 + *(v334 + 32);
  v74 = *(v73 + 1);
  LODWORD(v301) = *v73;
  LOBYTE(v356) = v301;
  *(&v356 + 1) = v74;
  v300 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54350);
  sub_1BE0516A4();
  LODWORD(v296) = v348;
  *&v356 = v69;
  *(&v356 + 1) = v70;
  sub_1BE0516A4();
  v295 = v348;
  v75 = sub_1BD70536C();
  v298 = v364;
  v299 = v74;
  v297 = *(&v364 + 1);
  v293 = v13;
  if (!v76)
  {
    sub_1BE048C84();
    goto LABEL_9;
  }

  if (__PAIR128__(v76, v75) == v364)
  {
    sub_1BE048C84();

    goto LABEL_8;
  }

  v79 = sub_1BE053B84();
  sub_1BE048C84();

  if ((v79 & 1) == 0)
  {
LABEL_9:
    LODWORD(v294) = 1;
    goto LABEL_11;
  }

LABEL_8:
  LOBYTE(v356) = v301;
  *(&v356 + 1) = v74;
  sub_1BE0516A4();
  if (v348 == 1)
  {
    goto LABEL_9;
  }

  LODWORD(v294) = 0;
LABEL_11:
  v80 = v324;
  v292 = type metadata accessor for PaymentOfferSelectorOverlay;
  sub_1BD70BF20(v335, v324, type metadata accessor for PaymentOfferSelectorOverlay);
  sub_1BE0528A4();
  sub_1BD70AB6C(&v364, &v356);
  v81 = sub_1BE052894();
  v82 = *(v322 + 80);
  v83 = (v82 + 32) & ~v82;
  v84 = (v332 + v83 + 7) & 0xFFFFFFFFFFFFFFF8;
  v85 = swift_allocObject();
  *(v85 + 16) = v81;
  *(v85 + 24) = MEMORY[0x1E69E85E0];
  v86 = v80;
  v289 = type metadata accessor for PaymentOfferSelectorOverlay;
  sub_1BD70B2E4(v80, v85 + v83, type metadata accessor for PaymentOfferSelectorOverlay);
  v87 = v85 + v84;
  v88 = v369;
  *(v87 + 64) = v368;
  *(v87 + 80) = v88;
  *(v87 + 96) = v370;
  *(v87 + 112) = v371;
  v89 = v365;
  *v87 = v364;
  *(v87 + 16) = v89;
  v90 = v367;
  *(v87 + 32) = v366;
  *(v87 + 48) = v90;
  sub_1BD70BF20(v335, v80, type metadata accessor for PaymentOfferSelectorOverlay);
  sub_1BD70AB6C(&v364, &v356);
  v91 = sub_1BE052894();
  v92 = swift_allocObject();
  *(v92 + 16) = v91;
  *(v92 + 24) = MEMORY[0x1E69E85E0];
  sub_1BD70B2E4(v80, v92 + v83, type metadata accessor for PaymentOfferSelectorOverlay);
  v93 = v92 + v84;
  v94 = v369;
  *(v93 + 64) = v368;
  *(v93 + 80) = v94;
  *(v93 + 96) = v370;
  *(v93 + 112) = v371;
  v95 = v365;
  *v93 = v364;
  *(v93 + 16) = v95;
  v96 = v367;
  *(v93 + 32) = v366;
  *(v93 + 48) = v96;
  sub_1BE051934();
  v290 = *(&v356 + 1);
  v291 = v356;
  LOBYTE(v84) = v357;
  v97 = v325;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD45120);
  v98 = v293;
  sub_1BE0516C4();
  sub_1BD70BF20(v335, v80, v292);
  v99 = (v82 + 16) & ~v82;
  v100 = swift_allocObject();
  sub_1BD70B2E4(v86, v100 + v99, v289);
  *&v346[0] = v295;
  type metadata accessor for PaymentOfferSelectorModel();
  sub_1BE051694();
  v101 = *(&v348 + 1);
  *v98 = v348;
  *(v98 + 8) = v101;
  v102 = v369;
  *(v98 + 80) = v368;
  *(v98 + 96) = v102;
  *(v98 + 112) = v370;
  *(v98 + 128) = v371;
  v103 = v367;
  *(v98 + 48) = v366;
  *(v98 + 64) = v103;
  v104 = v365;
  *(v98 + 16) = v364;
  *(v98 + 32) = v104;
  *(v98 + 136) = v294;
  v105 = v290;
  v106 = v291;
  *(v98 + 144) = 0;
  *(v98 + 152) = v106;
  *(v98 + 160) = v105;
  *(v98 + 168) = v84;
  v107 = (v98 + v97[10]);
  *v107 = sub_1BD70C0B4;
  v107[1] = v100;
  v108 = (v98 + v97[11]);
  *v108 = 0;
  v108[1] = 0;
  v109 = (v98 + v97[12]);
  *v109 = PKEdgeInsetsMake;
  v109[1] = 0;
  sub_1BD70AB6C(&v364, &v356);
  v110 = sub_1BE051DF4();
  LODWORD(v99) = sub_1BE04FEE4();
  sub_1BE051EA4();
  v112 = v111;
  v114 = v113;
  v115 = v304;
  sub_1BD70B2E4(v98, v304, type metadata accessor for PaymentOfferSelectorTile);
  v116 = v115 + *(v326 + 36);
  v118 = v297;
  v117 = v298;
  *v116 = v298;
  *(v116 + 8) = v118;
  *(v116 + 16) = v110;
  *(v116 + 24) = v99;
  *(v116 + 32) = v112;
  *(v116 + 40) = v114;
  *(v116 + 48) = v296;
  v119 = sub_1BD70536C();
  v78 = v333;
  v70 = v323;
  if (!v120)
  {
    goto LABEL_17;
  }

  if (v119 != v117 || v120 != v118)
  {
    v121 = sub_1BE053B84();

    if (v121)
    {
      goto LABEL_16;
    }

LABEL_17:
    *&v356 = v331;
    *(&v356 + 1) = v70;
    sub_1BE0516A4();
    v123 = v348;
    v124 = sub_1BD2289E8(v117, v118);
    v126 = v125;

    if (v126)
    {
      v122 = 0.0;
    }

    else
    {
      v122 = v124;
    }

    goto LABEL_20;
  }

LABEL_16:
  v122 = 100.0;
LABEL_20:
  v127 = v115;
  v128 = v320;
  sub_1BD0DE204(v127, v320, &qword_1EBD50EB0);
  *(v128 + *(v327 + 36)) = v122;
  LOBYTE(v356) = v301;
  *(&v356 + 1) = v299;
  sub_1BE0516A4();
  sub_1BD0DE53C(v342, &qword_1EBD3E550);
  v129 = v348;
  KeyPath = swift_getKeyPath();
  v131 = swift_allocObject();
  *(v131 + 16) = (v129 & 1) == 0;
  v132 = v302;
  sub_1BD0DE204(v128, v302, &qword_1EBD50EB8);
  v30 = v328;
  v133 = (v132 + *(v328 + 36));
  *v133 = KeyPath;
  v133[1] = sub_1BD185ABC;
  v133[2] = v131;
  v134 = v132;
  v135 = v303;
  sub_1BD0DE204(v134, v303, &qword_1EBD50EC0);
  v136 = v135;
  v68 = v330;
  sub_1BD0DE204(v136, v330, &qword_1EBD50EC0);
  v77 = 0;
LABEL_21:
  v137 = *(v78 + 56);
  v138 = 1;
  (v137)(v68, v77, 1, v30);
  v139 = v331;
  *&v356 = v331;
  *(&v356 + 1) = v70;
  sub_1BE0516A4();
  v140 = v348;
  sub_1BD227E5C(v344);

  v141 = *(&v344[0] + 1);
  v333 = v78 + 56;
  v320 = v137;
  if (!*(&v344[0] + 1))
  {
    v149 = v321;
    goto LABEL_42;
  }

  v142 = *&v344[0];
  v356 = v344[0];
  v363 = v345;
  v362 = v344[6];
  v361 = v344[5];
  v359 = v344[3];
  v360 = v344[4];
  v358 = v344[2];
  v357 = v344[1];
  v143 = v335 + *(v334 + 32);
  v145 = *(v143 + 1);
  LOBYTE(v348) = *v143;
  v144 = v348;
  *(&v348 + 1) = v145;
  v146 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54350);
  sub_1BE0516A4();
  LODWORD(v299) = LOBYTE(v346[0]);
  *&v348 = v139;
  *(&v348 + 1) = v70;
  sub_1BE0516A4();
  v298 = *&v346[0];
  v147 = sub_1BD70536C();
  v304 = v145;
  LODWORD(v303) = v144;
  v301 = v141;
  v302 = v146;
  v300 = v142;
  if (!v148)
  {
    sub_1BE048C84();
    goto LABEL_30;
  }

  if (v147 == v142 && v148 == v141)
  {
    sub_1BE048C84();

    goto LABEL_29;
  }

  v150 = sub_1BE053B84();
  sub_1BE048C84();

  if ((v150 & 1) == 0)
  {
LABEL_30:
    LODWORD(v297) = 1;
    goto LABEL_32;
  }

LABEL_29:
  LOBYTE(v348) = v144;
  *(&v348 + 1) = v145;
  sub_1BE0516A4();
  if (LOBYTE(v346[0]) == 1)
  {
    goto LABEL_30;
  }

  LODWORD(v297) = 0;
LABEL_32:
  v151 = v335;
  v152 = v324;
  v296 = type metadata accessor for PaymentOfferSelectorOverlay;
  sub_1BD70BF20(v335, v324, type metadata accessor for PaymentOfferSelectorOverlay);
  sub_1BE0528A4();
  sub_1BD70AB6C(&v356, &v348);
  v153 = sub_1BE052894();
  v154 = *(v322 + 80);
  v155 = (v154 + 32) & ~v154;
  v156 = (v332 + v155 + 7) & 0xFFFFFFFFFFFFFFF8;
  v157 = swift_allocObject();
  *(v157 + 16) = v153;
  *(v157 + 24) = MEMORY[0x1E69E85E0];
  sub_1BD70B2E4(v152, v157 + v155, type metadata accessor for PaymentOfferSelectorOverlay);
  v158 = v157 + v156;
  v159 = v361;
  *(v158 + 64) = v360;
  *(v158 + 80) = v159;
  *(v158 + 96) = v362;
  *(v158 + 112) = v363;
  v160 = v357;
  *v158 = v356;
  *(v158 + 16) = v160;
  v161 = v359;
  *(v158 + 32) = v358;
  *(v158 + 48) = v161;
  sub_1BD70BF20(v151, v152, type metadata accessor for PaymentOfferSelectorOverlay);
  sub_1BD70AB6C(&v356, &v348);
  v162 = sub_1BE052894();
  v163 = swift_allocObject();
  *(v163 + 16) = v162;
  *(v163 + 24) = MEMORY[0x1E69E85E0];
  sub_1BD70B2E4(v152, v163 + v155, type metadata accessor for PaymentOfferSelectorOverlay);
  v164 = v163 + v156;
  v165 = v361;
  *(v164 + 64) = v360;
  *(v164 + 80) = v165;
  *(v164 + 96) = v362;
  *(v164 + 112) = v363;
  v166 = v357;
  *v164 = v356;
  *(v164 + 16) = v166;
  v167 = v359;
  *(v164 + 32) = v358;
  *(v164 + 48) = v167;
  sub_1BE051934();
  v294 = *(&v348 + 1);
  v295 = v348;
  LODWORD(v293) = v349;
  v168 = v325;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD45120);
  v169 = v305;
  sub_1BE0516C4();
  sub_1BD70BF20(v151, v152, v296);
  v170 = swift_allocObject();
  sub_1BD70B2E4(v152, v170 + ((v154 + 16) & ~v154), type metadata accessor for PaymentOfferSelectorOverlay);
  v339 = v298;
  type metadata accessor for PaymentOfferSelectorModel();
  sub_1BE051694();
  v171 = *(&v346[0] + 1);
  *v169 = *&v346[0];
  *(v169 + 8) = v171;
  v172 = v361;
  *(v169 + 80) = v360;
  *(v169 + 96) = v172;
  *(v169 + 112) = v362;
  *(v169 + 128) = v363;
  v173 = v359;
  *(v169 + 48) = v358;
  *(v169 + 64) = v173;
  v174 = v357;
  *(v169 + 16) = v356;
  *(v169 + 32) = v174;
  *(v169 + 136) = v297;
  v175 = v294;
  v176 = v295;
  *(v169 + 144) = 0;
  *(v169 + 152) = v176;
  *(v169 + 160) = v175;
  *(v169 + 168) = v293;
  v177 = (v169 + v168[10]);
  *v177 = sub_1BD70C0B4;
  v177[1] = v170;
  v178 = (v169 + v168[11]);
  *v178 = 0;
  v178[1] = 0;
  v179 = (v169 + v168[12]);
  *v179 = PKEdgeInsetsMake;
  v179[1] = 0;
  sub_1BD70AB6C(&v356, &v348);
  v180 = sub_1BE051DF4();
  LODWORD(v153) = sub_1BE04FEE4();
  sub_1BE051EA4();
  v182 = v181;
  v184 = v183;
  v185 = v313;
  sub_1BD70B2E4(v169, v313, type metadata accessor for PaymentOfferSelectorTile);
  v186 = v185 + *(v326 + 36);
  v187 = v300;
  v188 = v301;
  *v186 = v300;
  *(v186 + 8) = v188;
  *(v186 + 16) = v180;
  *(v186 + 24) = v153;
  *(v186 + 32) = v182;
  *(v186 + 40) = v184;
  *(v186 + 48) = v299;
  v189 = sub_1BD70536C();
  v30 = v328;
  v191 = v331;
  v70 = v323;
  v137 = v320;
  if (!v190)
  {
    goto LABEL_38;
  }

  if (v189 != v187 || v190 != v188)
  {
    v192 = sub_1BE053B84();

    if (v192)
    {
      goto LABEL_37;
    }

LABEL_38:
    *&v348 = v191;
    *(&v348 + 1) = v70;
    sub_1BE0516A4();
    v194 = *&v346[0];
    v195 = sub_1BD2289E8(v187, v188);
    v197 = v196;

    if (v197)
    {
      v193 = 0.0;
    }

    else
    {
      v193 = v195;
    }

    goto LABEL_41;
  }

LABEL_37:
  v193 = 100.0;
LABEL_41:
  v198 = v185;
  v199 = v314;
  sub_1BD0DE204(v198, v314, &qword_1EBD50EB0);
  *(v199 + *(v327 + 36)) = v193;
  LOBYTE(v348) = v303;
  *(&v348 + 1) = v304;
  sub_1BE0516A4();
  sub_1BD0DE53C(v344, &qword_1EBD3E550);
  v200 = v346[0];
  v201 = swift_getKeyPath();
  v202 = swift_allocObject();
  *(v202 + 16) = (v200 & 1) == 0;
  v203 = v311;
  sub_1BD0DE204(v199, v311, &qword_1EBD50EB8);
  v204 = (v203 + *(v30 + 36));
  *v204 = v201;
  v204[1] = sub_1BD185ABC;
  v204[2] = v202;
  v205 = v203;
  v206 = v312;
  sub_1BD0DE204(v205, v312, &qword_1EBD50EC0);
  v149 = v321;
  sub_1BD0DE204(v206, v321, &qword_1EBD50EC0);
  v138 = 0;
  v139 = v331;
LABEL_42:
  v207 = 1;
  (v137)(v149, v138, 1, v30);
  *&v348 = v139;
  *(&v348 + 1) = v70;
  sub_1BE0516A4();
  v208 = *&v346[0];
  sub_1BD22826C(v346);

  v209 = *(&v346[0] + 1);
  if (*(&v346[0] + 1))
  {
    v210 = *&v346[0];
    v348 = v346[0];
    v355 = v347;
    v353 = v346[5];
    v354 = v346[6];
    v351 = v346[3];
    v352 = v346[4];
    v349 = v346[1];
    v350 = v346[2];
    v211 = v335 + *(v334 + 32);
    v212 = *(v211 + 1);
    LODWORD(v311) = *v211;
    LOBYTE(v339) = v311;
    v340 = v212;
    v213 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54350);
    sub_1BE0516A4();
    LODWORD(v301) = v337;
    v214 = sub_1BD70258C();
    v313 = v215;
    v314 = v214;
    v339 = v139;
    v340 = v70;
    sub_1BE0516A4();
    v300 = v337;
    v216 = sub_1BD70536C();
    v304 = v213;
    v305 = v212;
    v302 = v210;
    v303 = v209;
    if (v217)
    {
      if (v216 == v210 && v217 == v209)
      {
        sub_1BE048C84();

        v218 = v311;
      }

      else
      {
        v220 = sub_1BE053B84();
        sub_1BE048C84();

        v218 = v311;
        if ((v220 & 1) == 0)
        {
          goto LABEL_51;
        }
      }

      LOBYTE(v339) = v218;
      v340 = v212;
      sub_1BE0516A4();
      if (v337 != 1)
      {
        LODWORD(v299) = 0;
LABEL_53:
        v312 = type metadata accessor for PaymentOfferSelectorOverlay;
        v221 = v335;
        v222 = v324;
        sub_1BD70BF20(v335, v324, type metadata accessor for PaymentOfferSelectorOverlay);
        sub_1BE0528A4();
        sub_1BD70AB6C(&v348, &v339);
        v223 = sub_1BE052894();
        v224 = *(v322 + 80);
        v225 = (v224 + 32) & ~v224;
        v226 = (v332 + v225 + 7) & 0xFFFFFFFFFFFFFFF8;
        v227 = swift_allocObject();
        *(v227 + 16) = v223;
        *(v227 + 24) = MEMORY[0x1E69E85E0];
        v296 = type metadata accessor for PaymentOfferSelectorOverlay;
        sub_1BD70B2E4(v222, v227 + v225, type metadata accessor for PaymentOfferSelectorOverlay);
        v228 = v227 + v226;
        v229 = v353;
        *(v228 + 64) = v352;
        *(v228 + 80) = v229;
        *(v228 + 96) = v354;
        *(v228 + 112) = v355;
        v230 = v349;
        *v228 = v348;
        *(v228 + 16) = v230;
        v231 = v351;
        *(v228 + 32) = v350;
        *(v228 + 48) = v231;
        v232 = v221;
        v233 = v222;
        sub_1BD70BF20(v232, v222, v312);
        sub_1BD70AB6C(&v348, &v339);
        v234 = sub_1BE052894();
        v235 = swift_allocObject();
        *(v235 + 16) = v234;
        *(v235 + 24) = MEMORY[0x1E69E85E0];
        sub_1BD70B2E4(v222, v235 + v225, type metadata accessor for PaymentOfferSelectorOverlay);
        v236 = v235 + v226;
        v237 = v353;
        *(v236 + 64) = v352;
        *(v236 + 80) = v237;
        *(v236 + 96) = v354;
        *(v236 + 112) = v355;
        v238 = v349;
        *v236 = v348;
        *(v236 + 16) = v238;
        v239 = v351;
        *(v236 + 32) = v350;
        *(v236 + 48) = v239;
        sub_1BE051934();
        v322 = v339;
        v298 = v340;
        LODWORD(v297) = v341;
        v240 = v325;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD45120);
        v241 = v306;
        v242 = v335;
        sub_1BE0516C4();
        sub_1BD70BF20(v242, v222, v312);
        v243 = (v224 + 16) & ~v224;
        v244 = swift_allocObject();
        sub_1BD70B2E4(v233, v244 + v243, v296);
        v336 = v300;
        type metadata accessor for PaymentOfferSelectorModel();
        sub_1BE051694();
        v245 = v338;
        *v241 = v337;
        *(v241 + 8) = v245;
        v246 = v353;
        *(v241 + 80) = v352;
        *(v241 + 96) = v246;
        *(v241 + 112) = v354;
        *(v241 + 128) = v355;
        v247 = v351;
        *(v241 + 48) = v350;
        *(v241 + 64) = v247;
        v248 = v349;
        *(v241 + 16) = v348;
        *(v241 + 32) = v248;
        *(v241 + 136) = v299;
        v249 = v322;
        *(v241 + 144) = 0;
        *(v241 + 152) = v249;
        *(v241 + 160) = v298;
        *(v241 + 168) = v297;
        v250 = (v241 + v240[10]);
        *v250 = sub_1BD70C0B4;
        v250[1] = v244;
        v251 = (v241 + v240[11]);
        v253 = v313;
        v252 = v314;
        *v251 = v314;
        v251[1] = v253;
        v254 = (v241 + v240[12]);
        *v254 = PKEdgeInsetsMake;
        v254[1] = 0;
        sub_1BD0DE19C(v346, &v339, &qword_1EBD3E550);
        sub_1BD0D44B8(v252);
        v255 = sub_1BE051DF4();
        LODWORD(v252) = sub_1BE04FEE4();
        sub_1BE051EA4();
        v257 = v256;
        v259 = v258;
        v260 = v309;
        sub_1BD70B2E4(v241, v309, type metadata accessor for PaymentOfferSelectorTile);
        v261 = v260 + *(v326 + 36);
        v262 = v302;
        v263 = v303;
        *v261 = v302;
        *(v261 + 8) = v263;
        *(v261 + 16) = v255;
        *(v261 + 24) = v252;
        *(v261 + 32) = v257;
        *(v261 + 40) = v259;
        *(v261 + 48) = v301;
        v264 = sub_1BD70536C();
        v137 = v320;
        v149 = v321;
        v266 = v331;
        v267 = v323;
        if (v265)
        {
          if (v264 == v262 && v265 == v263)
          {

LABEL_58:
            v269 = 100.0;
LABEL_62:
            v274 = v260;
            v275 = v310;
            sub_1BD0DE204(v274, v310, &qword_1EBD50EB0);
            *(v275 + *(v327 + 36)) = v269;
            LOBYTE(v339) = v311;
            v340 = v305;
            sub_1BE0516A4();
            sub_1BD0D4744(v314);
            sub_1BD0DE53C(v346, &qword_1EBD3E550);
            v276 = v337;
            v277 = swift_getKeyPath();
            v278 = swift_allocObject();
            *(v278 + 16) = (v276 & 1) == 0;
            v279 = v307;
            sub_1BD0DE204(v275, v307, &qword_1EBD50EB8);
            v30 = v328;
            v280 = (v279 + *(v328 + 36));
            *v280 = v277;
            v280[1] = sub_1BD185ABC;
            v280[2] = v278;
            v281 = v279;
            v282 = v308;
            sub_1BD0DE204(v281, v308, &qword_1EBD50EC0);
            v219 = v315;
            sub_1BD0DE204(v282, v315, &qword_1EBD50EC0);
            v207 = 0;
            goto LABEL_63;
          }

          v268 = sub_1BE053B84();

          if (v268)
          {
            goto LABEL_58;
          }
        }

        v339 = v266;
        v340 = v267;
        sub_1BE0516A4();
        v270 = v337;
        v271 = sub_1BD2289E8(v262, v263);
        v273 = v272;

        if (v273)
        {
          v269 = 0.0;
        }

        else
        {
          v269 = v271;
        }

        goto LABEL_62;
      }
    }

    else
    {
      sub_1BE048C84();
    }

LABEL_51:
    LODWORD(v299) = 1;
    goto LABEL_53;
  }

  v219 = v315;
LABEL_63:
  (v137)(v219, v207, 1, v30);
  v283 = v316;
  sub_1BD0DE19C(v330, v316, &qword_1EBD50EE0);
  v284 = v317;
  sub_1BD0DE19C(v149, v317, &qword_1EBD50EE0);
  v285 = v318;
  sub_1BD0DE19C(v219, v318, &qword_1EBD50EE0);
  v286 = v319;
  sub_1BD0DE19C(v283, v319, &qword_1EBD50EE0);
  v287 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD50EE8);
  sub_1BD0DE19C(v284, v286 + *(v287 + 48), &qword_1EBD50EE0);
  sub_1BD0DE19C(v285, v286 + *(v287 + 64), &qword_1EBD50EE0);
  sub_1BD0DE53C(v219, &qword_1EBD50EE0);
  sub_1BD0DE53C(v149, &qword_1EBD50EE0);
  sub_1BD0DE53C(v330, &qword_1EBD50EE0);
  sub_1BD0DE53C(v285, &qword_1EBD50EE0);
  sub_1BD0DE53C(v284, &qword_1EBD50EE0);
  return sub_1BD0DE53C(v283, &qword_1EBD50EE0);
}

uint64_t (*sub_1BD70258C())()
{
  v1 = v0;
  v2 = type metadata accessor for PaymentOfferSelectorOverlay();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2 - 8, v5);
  v6 = v0[1];
  v14 = *v0;
  v15 = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4A778);
  sub_1BE0516A4();
  v7 = *&v13[OBJC_IVAR____TtC9PassKitUI25PaymentOfferSelectorModel_transactionSourceCollection];
  v8 = v7;

  if (!v7)
  {
    return 0;
  }

  sub_1BD70BF20(v1, &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PaymentOfferSelectorOverlay);
  v9 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v10 = swift_allocObject();
  sub_1BD70B2E4(&v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v10 + v9, type metadata accessor for PaymentOfferSelectorOverlay);
  return sub_1BD70B400;
}

uint64_t sub_1BD702714@<X0>(uint64_t a1@<X1>, uint64_t *a2@<X8>)
{
  v4 = *(a1 + 48);
  v21 = *(a1 + 32);
  *&v22 = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD50E88);
  MEMORY[0x1BFB3E970](&v20, v5);
  if (*&v20.origin.x)
  {
    *a2 = sub_1BE051CD4();
    a2[1] = v6;
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD50E98);
    sub_1BD702988(a1, a2 + *(v7 + 44));
    type metadata accessor for CGRect(0);
    sub_1BE04E6B4();
    CGRectGetWidth(v20);
    sub_1BE04E6B4();
    CGRectGetHeight(v19);
    sub_1BE051CD4();
    sub_1BE04E5E4();
    v8 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD50EA0) + 36));
    v9 = v22;
    *v8 = v21;
    v8[1] = v9;
    v8[2] = v23;
    sub_1BE04E6B4();
    MinX = CGRectGetMinX(v20);
    sub_1BE04E6B4();
    MinY = CGRectGetMinY(v19);
    v12 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD50EA8) + 36));
    *v12 = MinX;
    v12[1] = MinY;
    v13 = sub_1BE04EC64();
    v14 = sub_1BE0501D4();
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD50E90);
    v16 = a2 + *(v15 + 36);
    *v16 = v13;
    v16[8] = v14;
    (*(*(v15 - 8) + 56))(a2, 0, 1, v15);
  }

  else
  {
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD50E90);
    return (*(*(v18 - 8) + 56))(a2, 1, 1, v18);
  }
}

uint64_t sub_1BD702988@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v393 = a2;
  v398 = type metadata accessor for PaymentOfferSelectorTile();
  MEMORY[0x1EEE9AC00](v398, v3);
  v374 = &v352[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v5, v6);
  v367 = &v352[-v7];
  MEMORY[0x1EEE9AC00](v8, v9);
  v361 = &v352[-v10];
  v399 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD50EB0);
  MEMORY[0x1EEE9AC00](v399, v11);
  v376 = &v352[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v13, v14);
  v395 = &v352[-v15];
  MEMORY[0x1EEE9AC00](v16, v17);
  v364 = &v352[-v18];
  v401 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD50EB8);
  MEMORY[0x1EEE9AC00](v401, v19);
  v379 = &v352[-((v20 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v21, v22);
  v371 = &v352[-v23];
  MEMORY[0x1EEE9AC00](v24, v25);
  v365 = &v352[-v26];
  v410 = type metadata accessor for PaymentOfferSelectorOverlay();
  v403 = *(v410 - 8);
  v27 = *(v403 + 64);
  MEMORY[0x1EEE9AC00](v410, v28);
  v373 = &v352[-((v27 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v29, v30);
  v366 = &v352[-v31];
  MEMORY[0x1EEE9AC00](v32, v33);
  v397 = &v352[-v34];
  MEMORY[0x1EEE9AC00](v35, v36);
  v383 = &v352[-v37];
  v400 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD50EC0);
  MEMORY[0x1EEE9AC00](v400, v38);
  v375 = &v352[-((v39 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v40, v41);
  v380 = &v352[-v42];
  MEMORY[0x1EEE9AC00](v43, v44);
  v368 = &v352[-v45];
  MEMORY[0x1EEE9AC00](v46, v47);
  v372 = &v352[-v48];
  MEMORY[0x1EEE9AC00](v49, v50);
  v360 = &v352[-v51];
  MEMORY[0x1EEE9AC00](v52, v53);
  v394 = &v352[-v54];
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD50EC8);
  v408 = *(v55 - 8);
  MEMORY[0x1EEE9AC00](v55, v56);
  v378 = &v352[-((v57 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v58, v59);
  v377 = &v352[-v60];
  MEMORY[0x1EEE9AC00](v61, v62);
  v370 = &v352[-v63];
  MEMORY[0x1EEE9AC00](v64, v65);
  v369 = &v352[-v66];
  MEMORY[0x1EEE9AC00](v67, v68);
  v363 = &v352[-v69];
  MEMORY[0x1EEE9AC00](v70, v71);
  v362 = &v352[-v72];
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD50ED0);
  MEMORY[0x1EEE9AC00](v73 - 8, v74);
  v392 = &v352[-((v75 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v76, v77);
  v391 = &v352[-v78];
  MEMORY[0x1EEE9AC00](v79, v80);
  v390 = &v352[-v81];
  MEMORY[0x1EEE9AC00](v82, v83);
  v389 = &v352[-v84];
  MEMORY[0x1EEE9AC00](v85, v86);
  v88 = &v352[-v87];
  MEMORY[0x1EEE9AC00](v89, v90);
  v92 = &v352[-v91];
  v93 = a1[1];
  *&v440 = *a1;
  v94 = v440;
  *(&v440 + 1) = v93;
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4A778);
  sub_1BE0516A4();
  v96 = v432;
  sub_1BD227C90(v418);

  v97 = a1;
  v411 = a1;
  v402 = v55;
  v404 = v88;
  v405 = v92;
  v406 = v95;
  v407 = v94;
  v396 = v93;
  v409 = v27;
  v98 = v403;
  if (!*(&v418[0] + 1))
  {
    v109 = 1;
    v110 = v94;
    goto LABEL_30;
  }

  v440 = v418[0];
  v447 = v419;
  v445 = v418[5];
  v446 = v418[6];
  v443 = v418[3];
  v444 = v418[4];
  v441 = v418[1];
  v442 = v418[2];
  v99 = v97 + *(v410 + 32);
  v100 = *v99;
  v101 = *(v99 + 1);
  LODWORD(v387) = v100;
  LOBYTE(v432) = v100;
  v388 = v101;
  *(&v432 + 1) = v101;
  v102 = v97;
  v386 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54350);
  sub_1BE0516A4();
  v359 = v424 ^ 1;
  v358 = *MEMORY[0x1E69B9A10];
  v103 = v383;
  sub_1BD70BF20(v102, v383, type metadata accessor for PaymentOfferSelectorOverlay);
  v104 = *(v98 + 80);
  v354 = ~v104;
  v105 = (v104 + 16) & ~v104;
  v384 = v104;
  v385 = swift_allocObject();
  v357 = v105;
  sub_1BD70B2E4(v103, v385 + v105, type metadata accessor for PaymentOfferSelectorOverlay);
  *&v432 = v94;
  *(&v432 + 1) = v93;
  sub_1BE0516A4();
  v356 = v424;
  v106 = v102;
  v107 = sub_1BD70536C();
  v381 = *(&v440 + 1);
  v382 = v440;
  if (!v108)
  {
    sub_1BE048C84();
    goto LABEL_9;
  }

  if (__PAIR128__(v108, v107) == v440)
  {
    sub_1BE048C84();

    goto LABEL_8;
  }

  v111 = sub_1BE053B84();
  sub_1BE048C84();

  if ((v111 & 1) == 0)
  {
LABEL_9:
    v355 = 1;
    goto LABEL_11;
  }

LABEL_8:
  LOBYTE(v432) = v387;
  *(&v432 + 1) = v388;
  sub_1BE0516A4();
  if (v424 == 1)
  {
    goto LABEL_9;
  }

  v355 = 0;
LABEL_11:
  v383 = type metadata accessor for PaymentOfferSelectorOverlay;
  v112 = v397;
  sub_1BD70BF20(v106, v397, type metadata accessor for PaymentOfferSelectorOverlay);
  sub_1BE0528A4();
  sub_1BD70AB6C(&v440, &v432);
  v113 = sub_1BE052894();
  v114 = (v384 + 32) & v354;
  v115 = &v27[v114 + 7] & 0xFFFFFFFFFFFFFFF8;
  v116 = swift_allocObject();
  *(v116 + 16) = v113;
  v117 = MEMORY[0x1E69E85E0];
  *(v116 + 24) = MEMORY[0x1E69E85E0];
  sub_1BD70B2E4(v112, v116 + v114, type metadata accessor for PaymentOfferSelectorOverlay);
  v118 = v116 + v115;
  v119 = v445;
  *(v118 + 64) = v444;
  *(v118 + 80) = v119;
  *(v118 + 96) = v446;
  *(v118 + 112) = v447;
  v120 = v441;
  *v118 = v440;
  *(v118 + 16) = v120;
  v121 = v443;
  *(v118 + 32) = v442;
  *(v118 + 48) = v121;
  sub_1BD70BF20(v411, v112, v383);
  sub_1BD70AB6C(&v440, &v432);
  v122 = sub_1BE052894();
  v123 = swift_allocObject();
  *(v123 + 16) = v122;
  *(v123 + 24) = v117;
  sub_1BD70B2E4(v112, v123 + v114, type metadata accessor for PaymentOfferSelectorOverlay);
  v124 = v123 + v115;
  v125 = v445;
  *(v124 + 64) = v444;
  *(v124 + 80) = v125;
  *(v124 + 96) = v446;
  *(v124 + 112) = v447;
  v126 = v441;
  *v124 = v440;
  *(v124 + 16) = v126;
  v127 = v443;
  *(v124 + 32) = v442;
  *(v124 + 48) = v127;
  sub_1BE051934();
  v354 = *(&v432 + 1);
  v128 = v432;
  v353 = v433;
  v129 = v398;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD45120);
  v130 = v361;
  sub_1BE0516C4();
  sub_1BD70BF20(v411, v112, v383);
  v131 = v357;
  v132 = swift_allocObject();
  sub_1BD70B2E4(v112, v132 + v131, type metadata accessor for PaymentOfferSelectorOverlay);
  *&v422[0] = v356;
  type metadata accessor for PaymentOfferSelectorModel();
  sub_1BE051694();
  v133 = *(&v424 + 1);
  *v130 = v424;
  *(v130 + 8) = v133;
  v134 = v445;
  *(v130 + 80) = v444;
  *(v130 + 96) = v134;
  *(v130 + 112) = v446;
  *(v130 + 128) = v447;
  v135 = v443;
  *(v130 + 48) = v442;
  *(v130 + 64) = v135;
  v136 = v441;
  *(v130 + 16) = v440;
  *(v130 + 32) = v136;
  *(v130 + 136) = v355;
  v137 = v358;
  *(v130 + 144) = v358;
  *(v130 + 152) = v128;
  *(v130 + 160) = v354;
  *(v130 + 168) = v353;
  v138 = (v130 + v129[10]);
  *v138 = sub_1BD70C0B4;
  v138[1] = v132;
  v139 = (v130 + v129[11]);
  *v139 = 0;
  v139[1] = 0;
  v140 = (v130 + v129[12]);
  v141 = v385;
  *v140 = sub_1BD70AC00;
  v140[1] = v141;
  sub_1BD0DE19C(v418, &v432, &qword_1EBD3E550);
  v142 = v137;
  sub_1BE048964();
  v143 = sub_1BE051DF4();
  LODWORD(v128) = sub_1BE04FEE4();
  sub_1BE051EA4();
  v145 = v144;
  v147 = v146;
  LOBYTE(v141) = v359 & 1;
  v148 = v364;
  sub_1BD70B2E4(v130, v364, type metadata accessor for PaymentOfferSelectorTile);
  v149 = &v148[*(v399 + 36)];
  v151 = v381;
  v150 = v382;
  *v149 = v382;
  *(v149 + 1) = v151;
  *(v149 + 2) = v143;
  *(v149 + 6) = v128;
  *(v149 + 4) = v145;
  *(v149 + 5) = v147;
  v149[48] = v141;
  v152 = sub_1BD70536C();
  v154 = v396;
  if (v153)
  {
    if (v152 == v150 && v153 == v151)
    {

LABEL_16:
      v156 = 100.0;
      goto LABEL_20;
    }

    v155 = sub_1BE053B84();

    if (v155)
    {
      goto LABEL_16;
    }
  }

  *&v432 = v407;
  *(&v432 + 1) = v154;
  sub_1BE0516A4();
  v157 = v424;
  v158 = sub_1BD2289E8(v150, v151);
  v160 = v159;

  if (v160)
  {
    v156 = 0.0;
  }

  else
  {
    v156 = v158;
  }

LABEL_20:
  v161 = v148;
  v162 = v365;
  sub_1BD0DE204(v161, v365, &qword_1EBD50EB0);
  *&v162[*(v401 + 36)] = v156;
  LOBYTE(v432) = v387;
  *(&v432 + 1) = v388;
  sub_1BE0516A4();

  v163 = v424;
  KeyPath = swift_getKeyPath();
  v165 = swift_allocObject();
  *(v165 + 16) = (v163 & 1) == 0;
  v166 = v360;
  sub_1BD0DE204(v162, v360, &qword_1EBD50EB8);
  v167 = &v166[*(v400 + 36)];
  *v167 = KeyPath;
  v167[1] = sub_1BD185ABC;
  v167[2] = v165;
  sub_1BD0DE204(v166, v394, &qword_1EBD50EC0);
  v168 = sub_1BD70536C();
  v88 = v404;
  v92 = v405;
  v170 = v407;
  v93 = v154;
  if (!v169)
  {
    goto LABEL_26;
  }

  if (v168 != v382 || v169 != v381)
  {
    v171 = sub_1BE053B84();

    if (v171)
    {
      goto LABEL_25;
    }

LABEL_26:
    LOBYTE(v432) = v387;
    *(&v432 + 1) = v388;
    sub_1BE0516A4();
    sub_1BD0DE53C(v418, &qword_1EBD3E550);
    if (v424)
    {
      v172 = 1.0;
    }

    else
    {
      v172 = 0.0;
    }

    goto LABEL_29;
  }

LABEL_25:
  sub_1BD0DE53C(v418, &qword_1EBD3E550);
  v172 = 1.0;
LABEL_29:
  v173 = v363;
  sub_1BD0DE204(v394, v363, &qword_1EBD50EC0);
  v55 = v402;
  *(v173 + *(v402 + 36)) = v172;
  v174 = v173;
  v175 = v362;
  sub_1BD0DE204(v174, v362, &qword_1EBD50EC8);
  sub_1BD0DE204(v175, v92, &qword_1EBD50EC8);
  v109 = 0;
  v110 = v170;
LABEL_30:
  v177 = v408 + 56;
  v176 = *(v408 + 56);
  v178 = 1;
  (v176)(v92, v109, 1, v55);
  *&v432 = v110;
  *(&v432 + 1) = v93;
  v179 = v110;
  sub_1BE0516A4();
  v180 = v424;
  sub_1BD227E5C(v420);

  v408 = v177;
  v394 = v176;
  if (!*(&v420[0] + 1))
  {
    goto LABEL_58;
  }

  v432 = v420[0];
  v439 = v421;
  v438 = v420[6];
  v437 = v420[5];
  v435 = v420[3];
  v436 = v420[4];
  v434 = v420[2];
  v433 = v420[1];
  v181 = v93;
  v182 = v411;
  v183 = v411 + *(v410 + 32);
  v184 = *v183;
  v185 = *(v183 + 1);
  LODWORD(v388) = v184;
  LOBYTE(v424) = v184;
  v384 = v185;
  *(&v424 + 1) = v185;
  v387 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54350);
  sub_1BE0516A4();
  LODWORD(v382) = LOBYTE(v422[0]) ^ 1;
  v381 = *MEMORY[0x1E69B9A18];
  v186 = v366;
  sub_1BD70BF20(v182, v366, type metadata accessor for PaymentOfferSelectorOverlay);
  v187 = v181;
  v188 = *(v403 + 80);
  v363 = ~v188;
  v189 = swift_allocObject();
  v365 = ((v188 + 16) & ~v188);
  sub_1BD70B2E4(v186, &v365[v189], type metadata accessor for PaymentOfferSelectorOverlay);
  *&v424 = v179;
  *(&v424 + 1) = v187;
  sub_1BE0516A4();
  v366 = *&v422[0];
  v190 = sub_1BD70536C();
  v385 = *(&v432 + 1);
  v386 = v432;
  v383 = v189;
  if (!v191)
  {
    sub_1BE048C84();
    goto LABEL_37;
  }

  if (__PAIR128__(v191, v190) == v432)
  {
    sub_1BE048C84();

    goto LABEL_36;
  }

  v192 = sub_1BE053B84();
  sub_1BE048C84();

  if ((v192 & 1) == 0)
  {
LABEL_37:
    LODWORD(v364) = 1;
    goto LABEL_39;
  }

LABEL_36:
  LOBYTE(v424) = v388;
  *(&v424 + 1) = v384;
  sub_1BE0516A4();
  if (LOBYTE(v422[0]) == 1)
  {
    goto LABEL_37;
  }

  LODWORD(v364) = 0;
LABEL_39:
  v193 = v397;
  v362 = type metadata accessor for PaymentOfferSelectorOverlay;
  sub_1BD70BF20(v182, v397, type metadata accessor for PaymentOfferSelectorOverlay);
  sub_1BE0528A4();
  sub_1BD70AB6C(&v432, &v424);
  v194 = sub_1BE052894();
  v195 = (v188 + 32) & v363;
  v196 = &v409[v195 + 7] & 0xFFFFFFFFFFFFFFF8;
  v197 = swift_allocObject();
  *(v197 + 16) = v194;
  v198 = MEMORY[0x1E69E85E0];
  *(v197 + 24) = MEMORY[0x1E69E85E0];
  sub_1BD70B2E4(v193, v197 + v195, type metadata accessor for PaymentOfferSelectorOverlay);
  v199 = v197 + v196;
  v200 = v437;
  *(v199 + 64) = v436;
  *(v199 + 80) = v200;
  *(v199 + 96) = v438;
  *(v199 + 112) = v439;
  v201 = v433;
  *v199 = v432;
  *(v199 + 16) = v201;
  v202 = v435;
  *(v199 + 32) = v434;
  *(v199 + 48) = v202;
  sub_1BD70BF20(v411, v193, type metadata accessor for PaymentOfferSelectorOverlay);
  sub_1BD70AB6C(&v432, &v424);
  v203 = sub_1BE052894();
  v204 = swift_allocObject();
  *(v204 + 16) = v203;
  *(v204 + 24) = v198;
  sub_1BD70B2E4(v193, v204 + v195, type metadata accessor for PaymentOfferSelectorOverlay);
  v205 = v204 + v196;
  v206 = v437;
  *(v205 + 64) = v436;
  *(v205 + 80) = v206;
  *(v205 + 96) = v438;
  *(v205 + 112) = v439;
  v207 = v433;
  *v205 = v432;
  *(v205 + 16) = v207;
  v208 = v435;
  *(v205 + 32) = v434;
  *(v205 + 48) = v208;
  sub_1BE051934();
  v361 = *(&v424 + 1);
  v363 = v424;
  LOBYTE(v196) = v425;
  v209 = v398;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD45120);
  v210 = v367;
  sub_1BE0516C4();
  sub_1BD70BF20(v411, v193, v362);
  v211 = v365;
  v212 = swift_allocObject();
  sub_1BD70B2E4(v193, &v211[v212], type metadata accessor for PaymentOfferSelectorOverlay);
  v415 = v366;
  type metadata accessor for PaymentOfferSelectorModel();
  sub_1BE051694();
  v213 = *(&v422[0] + 1);
  *v210 = *&v422[0];
  *(v210 + 8) = v213;
  v214 = v437;
  *(v210 + 80) = v436;
  *(v210 + 96) = v214;
  *(v210 + 112) = v438;
  *(v210 + 128) = v439;
  v215 = v435;
  *(v210 + 48) = v434;
  *(v210 + 64) = v215;
  v216 = v433;
  *(v210 + 16) = v432;
  *(v210 + 32) = v216;
  *(v210 + 136) = v364;
  v217 = v381;
  v218 = v363;
  *(v210 + 144) = v381;
  *(v210 + 152) = v218;
  *(v210 + 160) = v361;
  *(v210 + 168) = v196;
  v219 = (v210 + v209[10]);
  *v219 = sub_1BD70C0B4;
  v219[1] = v212;
  v220 = (v210 + v209[11]);
  *v220 = 0;
  v220[1] = 0;
  v221 = (v210 + v209[12]);
  v222 = v383;
  *v221 = sub_1BD70ABD4;
  v221[1] = v222;
  sub_1BD0DE19C(v420, &v424, &qword_1EBD3E550);
  v223 = v217;
  sub_1BE048964();
  v224 = sub_1BE051DF4();
  LODWORD(v217) = sub_1BE04FEE4();
  sub_1BE051EA4();
  v226 = v225;
  v228 = v227;
  LOBYTE(v209) = v382 & 1;
  v229 = v395;
  sub_1BD70B2E4(v210, v395, type metadata accessor for PaymentOfferSelectorTile);
  v230 = &v229[*(v399 + 36)];
  v232 = v385;
  v231 = v386;
  *v230 = v386;
  *(v230 + 1) = v232;
  *(v230 + 2) = v224;
  *(v230 + 6) = v217;
  *(v230 + 4) = v226;
  *(v230 + 5) = v228;
  v230[48] = v209;
  v233 = sub_1BD70536C();
  v235 = v407;
  v236 = v396;
  v237 = v384;
  if (v234)
  {
    if (v233 == v231 && v234 == v232)
    {

LABEL_44:
      v239 = 100.0;
      goto LABEL_48;
    }

    v238 = sub_1BE053B84();

    v235 = v407;
    if (v238)
    {
      goto LABEL_44;
    }
  }

  *&v424 = v235;
  *(&v424 + 1) = v236;
  sub_1BE0516A4();
  v240 = *&v422[0];
  v241 = sub_1BD2289E8(v231, v232);
  v243 = v242;

  if (v243)
  {
    v239 = 0.0;
  }

  else
  {
    v239 = v241;
  }

LABEL_48:
  v244 = v371;
  sub_1BD0DE204(v395, v371, &qword_1EBD50EB0);
  *&v244[*(v401 + 36)] = v239;
  LOBYTE(v424) = v388;
  *(&v424 + 1) = v237;
  sub_1BE0516A4();

  v245 = v422[0];
  v246 = swift_getKeyPath();
  v247 = swift_allocObject();
  *(v247 + 16) = (v245 & 1) == 0;
  v248 = v368;
  sub_1BD0DE204(v244, v368, &qword_1EBD50EB8);
  v249 = (v248 + *(v400 + 36));
  *v249 = v246;
  v249[1] = sub_1BD185ABC;
  v249[2] = v247;
  v250 = v372;
  sub_1BD0DE204(v248, v372, &qword_1EBD50EC0);
  v251 = sub_1BD70536C();
  v55 = v402;
  v176 = v394;
  v93 = v236;
  if (!v252)
  {
    goto LABEL_54;
  }

  if (v251 != v386 || v252 != v385)
  {
    v253 = sub_1BE053B84();

    if (v253)
    {
      goto LABEL_53;
    }

LABEL_54:
    LOBYTE(v424) = v388;
    *(&v424 + 1) = v237;
    sub_1BE0516A4();
    sub_1BD0DE53C(v420, &qword_1EBD3E550);
    if (LOBYTE(v422[0]))
    {
      v254 = 1.0;
    }

    else
    {
      v254 = 0.0;
    }

    goto LABEL_57;
  }

LABEL_53:
  sub_1BD0DE53C(v420, &qword_1EBD3E550);
  v254 = 1.0;
LABEL_57:
  v255 = v250;
  v256 = v370;
  sub_1BD0DE204(v255, v370, &qword_1EBD50EC0);
  *&v256[*(v55 + 36)] = v254;
  v257 = v256;
  v258 = v369;
  sub_1BD0DE204(v257, v369, &qword_1EBD50EC8);
  v88 = v404;
  sub_1BD0DE204(v258, v404, &qword_1EBD50EC8);
  v178 = 0;
LABEL_58:
  v259 = 1;
  (v176)(v88, v178, 1, v55);
  v260 = v407;
  *&v424 = v407;
  *(&v424 + 1) = v93;
  sub_1BE0516A4();
  v261 = *&v422[0];
  sub_1BD22826C(v422);

  v262 = v55;
  v263 = v93;
  v264 = *(&v422[0] + 1);
  if (*(&v422[0] + 1))
  {
    v265 = *&v422[0];
    v424 = v422[0];
    v431 = v423;
    v429 = v422[5];
    v430 = v422[6];
    v427 = v422[3];
    v428 = v422[4];
    v425 = v422[1];
    v426 = v422[2];
    v266 = v411;
    v267 = v411 + *(v410 + 32);
    v268 = *v267;
    v269 = *(v267 + 1);
    LODWORD(v388) = v268;
    LOBYTE(v415) = v268;
    v395 = v269;
    v416 = v269;
    v387 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54350);
    sub_1BE0516A4();
    LODWORD(v381) = v413 ^ 1;
    v372 = *MEMORY[0x1E69B9B90];
    v270 = sub_1BD70258C();
    v385 = v271;
    v386 = v270;
    v272 = v373;
    sub_1BD70BF20(v266, v373, type metadata accessor for PaymentOfferSelectorOverlay);
    v273 = *(v403 + 80);
    v368 = ~v273;
    v274 = (v273 + 16) & ~v273;
    v370 = &v409[v274];
    v403 = swift_allocObject();
    v371 = v274;
    sub_1BD70B2E4(v272, v403 + v274, type metadata accessor for PaymentOfferSelectorOverlay);
    v415 = v260;
    v416 = v263;
    sub_1BE0516A4();
    v373 = v413;
    v275 = sub_1BD70536C();
    v382 = v264;
    v383 = v265;
    if (v276)
    {
      if (v275 == v265 && v276 == v264)
      {
        sub_1BE048C84();
      }

      else
      {
        v279 = sub_1BE053B84();
        sub_1BE048C84();

        if ((v279 & 1) == 0)
        {
          goto LABEL_67;
        }
      }

      LOBYTE(v415) = v388;
      v416 = v395;
      sub_1BE0516A4();
      if (v413 != 1)
      {
        LODWORD(v369) = 0;
LABEL_69:
        v384 = type metadata accessor for PaymentOfferSelectorOverlay;
        v280 = v397;
        sub_1BD70BF20(v266, v397, type metadata accessor for PaymentOfferSelectorOverlay);
        sub_1BE0528A4();
        sub_1BD70AB6C(&v424, &v415);
        v281 = sub_1BE052894();
        v282 = (v273 + 32) & v368;
        v283 = v273;
        v284 = &v409[v282 + 7] & 0xFFFFFFFFFFFFFFF8;
        v367 = v283;
        v285 = swift_allocObject();
        *(v285 + 16) = v281;
        v286 = MEMORY[0x1E69E85E0];
        *(v285 + 24) = MEMORY[0x1E69E85E0];
        sub_1BD70B2E4(v280, v285 + v282, type metadata accessor for PaymentOfferSelectorOverlay);
        v287 = v285 + v284;
        v288 = v429;
        *(v287 + 64) = v428;
        *(v287 + 80) = v288;
        *(v287 + 96) = v430;
        *(v287 + 112) = v431;
        v289 = v425;
        *v287 = v424;
        *(v287 + 16) = v289;
        v290 = v427;
        *(v287 + 32) = v426;
        *(v287 + 48) = v290;
        sub_1BD70BF20(v411, v280, v384);
        sub_1BD70AB6C(&v424, &v415);
        v291 = sub_1BE052894();
        v292 = swift_allocObject();
        *(v292 + 16) = v291;
        *(v292 + 24) = v286;
        sub_1BD70B2E4(v280, v292 + v282, type metadata accessor for PaymentOfferSelectorOverlay);
        v293 = v292 + v284;
        v294 = v429;
        *(v293 + 64) = v428;
        *(v293 + 80) = v294;
        *(v293 + 96) = v430;
        *(v293 + 112) = v431;
        v295 = v425;
        *v293 = v424;
        *(v293 + 16) = v295;
        v296 = v427;
        *(v293 + 32) = v426;
        *(v293 + 48) = v296;
        sub_1BE051934();
        v297 = v416;
        v409 = v415;
        LOBYTE(v284) = v417;
        v298 = v398;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD45120);
        v299 = v374;
        sub_1BE0516C4();
        sub_1BD70BF20(v411, v280, v384);
        v300 = swift_allocObject();
        sub_1BD70B2E4(v280, &v371[v300], type metadata accessor for PaymentOfferSelectorOverlay);
        v412 = v373;
        type metadata accessor for PaymentOfferSelectorModel();
        sub_1BE051694();
        v301 = v414;
        *v299 = v413;
        *(v299 + 8) = v301;
        v302 = v429;
        *(v299 + 80) = v428;
        *(v299 + 96) = v302;
        *(v299 + 112) = v430;
        *(v299 + 128) = v431;
        v303 = v427;
        *(v299 + 48) = v426;
        *(v299 + 64) = v303;
        v304 = v425;
        *(v299 + 16) = v424;
        *(v299 + 32) = v304;
        *(v299 + 136) = v369;
        v305 = v372;
        v306 = v409;
        *(v299 + 144) = v372;
        *(v299 + 152) = v306;
        *(v299 + 160) = v297;
        *(v299 + 168) = v284;
        v307 = (v299 + v298[10]);
        *v307 = sub_1BD70ABD0;
        v307[1] = v300;
        v308 = (v299 + v298[11]);
        v310 = v385;
        v309 = v386;
        *v308 = v386;
        v308[1] = v310;
        v311 = (v299 + v298[12]);
        v312 = v403;
        *v311 = sub_1BD70AB34;
        v311[1] = v312;
        sub_1BD0DE19C(v422, &v415, &qword_1EBD3E550);
        v313 = v305;
        sub_1BE048964();
        sub_1BD0D44B8(v309);
        v314 = sub_1BE051DF4();
        LODWORD(v312) = sub_1BE04FEE4();
        sub_1BE051EA4();
        v316 = v315;
        v318 = v317;
        LOBYTE(v309) = v381 & 1;
        v319 = v376;
        sub_1BD70B2E4(v299, v376, type metadata accessor for PaymentOfferSelectorTile);
        v320 = &v319[*(v399 + 36)];
        v322 = v382;
        v321 = v383;
        *v320 = v383;
        *(v320 + 1) = v322;
        *(v320 + 2) = v314;
        *(v320 + 6) = v312;
        *(v320 + 4) = v316;
        *(v320 + 5) = v318;
        v320[48] = v309;
        v323 = sub_1BD70536C();
        v325 = v380;
        if (v324)
        {
          if (v323 == v321 && v324 == v322)
          {

LABEL_74:
            v327 = 100.0;
            goto LABEL_78;
          }

          v326 = sub_1BE053B84();

          if (v326)
          {
            goto LABEL_74;
          }
        }

        v415 = v407;
        v416 = v396;
        sub_1BE0516A4();
        v328 = v413;
        v329 = sub_1BD2289E8(v321, v322);
        v331 = v330;

        if (v331)
        {
          v327 = 0.0;
        }

        else
        {
          v327 = v329;
        }

LABEL_78:
        v332 = v379;
        sub_1BD0DE204(v319, v379, &qword_1EBD50EB0);
        *&v332[*(v401 + 36)] = v327;
        LOBYTE(v415) = v388;
        v416 = v395;
        sub_1BE0516A4();

        sub_1BD0D4744(v386);
        v333 = v413;
        v334 = swift_getKeyPath();
        v335 = swift_allocObject();
        *(v335 + 16) = (v333 & 1) == 0;
        v336 = v375;
        sub_1BD0DE204(v332, v375, &qword_1EBD50EB8);
        v337 = &v336[*(v400 + 36)];
        *v337 = v334;
        v337[1] = sub_1BD10DF54;
        v337[2] = v335;
        sub_1BD0DE204(v336, v325, &qword_1EBD50EC0);
        v338 = sub_1BD70536C();
        v278 = v402;
        v176 = v394;
        if (v339)
        {
          if (v338 == v383 && v339 == v322)
          {

LABEL_83:
            sub_1BD0DE53C(v422, &qword_1EBD3E550);
            v341 = 1.0;
LABEL_87:
            v342 = v378;
            sub_1BD0DE204(v325, v378, &qword_1EBD50EC0);
            *&v342[*(v278 + 36)] = v341;
            v343 = v342;
            v344 = v377;
            sub_1BD0DE204(v343, v377, &qword_1EBD50EC8);
            v277 = v389;
            sub_1BD0DE204(v344, v389, &qword_1EBD50EC8);
            v259 = 0;
            goto LABEL_88;
          }

          v340 = sub_1BE053B84();

          if (v340)
          {
            goto LABEL_83;
          }
        }

        LOBYTE(v415) = v388;
        v416 = v395;
        sub_1BE0516A4();
        sub_1BD0DE53C(v422, &qword_1EBD3E550);
        if (v413)
        {
          v341 = 1.0;
        }

        else
        {
          v341 = 0.0;
        }

        goto LABEL_87;
      }
    }

    else
    {
      sub_1BE048C84();
    }

LABEL_67:
    LODWORD(v369) = 1;
    goto LABEL_69;
  }

  v277 = v389;
  v278 = v262;
LABEL_88:
  (v176)(v277, v259, 1, v278);
  v345 = v390;
  sub_1BD0DE19C(v405, v390, &qword_1EBD50ED0);
  v346 = v404;
  v347 = v391;
  sub_1BD0DE19C(v404, v391, &qword_1EBD50ED0);
  v348 = v392;
  sub_1BD0DE19C(v277, v392, &qword_1EBD50ED0);
  v349 = v393;
  sub_1BD0DE19C(v345, v393, &qword_1EBD50ED0);
  v350 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD50ED8);
  sub_1BD0DE19C(v347, v349 + *(v350 + 48), &qword_1EBD50ED0);
  sub_1BD0DE19C(v348, v349 + *(v350 + 64), &qword_1EBD50ED0);
  sub_1BD0DE53C(v277, &qword_1EBD50ED0);
  sub_1BD0DE53C(v346, &qword_1EBD50ED0);
  sub_1BD0DE53C(v405, &qword_1EBD50ED0);
  sub_1BD0DE53C(v348, &qword_1EBD50ED0);
  sub_1BD0DE53C(v347, &qword_1EBD50ED0);
  return sub_1BD0DE53C(v345, &qword_1EBD50ED0);
}

void sub_1BD704C18(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD45640);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1BE0B6CA0;
  v5 = *MEMORY[0x1E69BB6C0];
  v6 = *MEMORY[0x1E69BB6F8];
  *(v4 + 32) = *MEMORY[0x1E69BB6C0];
  *(v4 + 40) = v6;
  type metadata accessor for PKAnalyticsSubject(0);
  v7 = v5;
  v8 = v6;
  v53 = sub_1BE052724();

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3D1E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BE0F1DC0;
  v10 = *MEMORY[0x1E69BA680];
  *(inited + 32) = *MEMORY[0x1E69BA680];
  v11 = sub_1BE052434();
  v12 = MEMORY[0x1E69BA440];
  *(inited + 40) = v11;
  *(inited + 48) = v13;
  v14 = *v12;
  *(inited + 56) = *v12;
  *(inited + 64) = a1;
  v15 = *MEMORY[0x1E69BABE8];
  *(inited + 72) = a2;
  *(inited + 80) = v15;
  *(inited + 88) = sub_1BE052434();
  *(inited + 96) = v16;
  v17 = *MEMORY[0x1E69BA9D0];
  *(inited + 104) = *MEMORY[0x1E69BA9D0];
  v18 = v10;
  v19 = v14;
  sub_1BE048C84();
  v20 = v15;
  v21 = v17;
  sub_1BD709D1C();
  v52 = PKAnalyticsReportSwitchToggleResultValue();
  *(inited + 112) = sub_1BE052434();
  *(inited + 120) = v22;
  v23 = *MEMORY[0x1E69BACF8];
  *(inited + 128) = *MEMORY[0x1E69BACF8];
  v24 = v23;
  sub_1BD709E44();
  v51 = PKAnalyticsReportSwitchToggleResultValue();
  *(inited + 136) = sub_1BE052434();
  *(inited + 144) = v25;
  v26 = *MEMORY[0x1E69BA9F8];
  *(inited + 152) = *MEMORY[0x1E69BA9F8];
  v27 = v26;
  sub_1BD709F64();
  v28 = PKAnalyticsReportSwitchToggleResultValue();
  *(inited + 160) = sub_1BE052434();
  *(inited + 168) = v29;
  v30 = *MEMORY[0x1E69BAC80];
  *(inited + 176) = *MEMORY[0x1E69BAC80];
  v31 = v30;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4A778);
  sub_1BE0516A4();
  v32 = *&v54[OBJC_IVAR____TtC9PassKitUI25PaymentOfferSelectorModel_paymentPass];

  v33 = [v32 organizationName];
  *(inited + 184) = sub_1BE052434();
  *(inited + 192) = v34;
  v35 = *MEMORY[0x1E69BAC78];
  *(inited + 200) = *MEMORY[0x1E69BAC78];
  v36 = v35;
  sub_1BE0516A4();
  v37 = *&v54[OBJC_IVAR____TtC9PassKitUI25PaymentOfferSelectorModel_paymentPass];

  v38 = [v37 issuerCountryCode];
  if (v38)
  {
    v39 = sub_1BE052434();
    v41 = v40;

    *(inited + 208) = v39;
    *(inited + 216) = v41;
    v42 = *MEMORY[0x1E69BAD48];
    *(inited + 224) = *MEMORY[0x1E69BAD48];
    v43 = v42;
    sub_1BE0516A4();
    v44 = *&v54[OBJC_IVAR____TtC9PassKitUI25PaymentOfferSelectorModel_paymentPass];

    v45 = PKDefaultPaymentNetworkNameForPaymentPass();
    if (v45)
    {

      v46 = objc_opt_self();
      v47 = sub_1BE052434();
      v49 = v48;

      *(inited + 232) = v47;
      *(inited + 240) = v49;
      sub_1BD1AAF50(inited);
      swift_setDeallocating();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F590);
      swift_arrayDestroy();
      type metadata accessor for PKAnalyticsKey(0);
      sub_1BD70C044(&qword_1EBD35F00, type metadata accessor for PKAnalyticsKey);
      v50 = sub_1BE052224();

      [v46 subjects:v53 sendEvent:v50];

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_1BD705084()
{
  v1 = v0;
  v2 = sub_1BE04FFA4();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for PaymentOfferSelectorOverlay();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7 - 8, v10);
  v11 = v0[1];
  v22 = *v0;
  v23 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4A778);
  sub_1BE0516A4();
  v12 = v21;
  v13 = *&v21[OBJC_IVAR____TtC9PassKitUI25PaymentOfferSelectorModel_paymentOffersController];
  [v13 clearCurrentSelectedPaymentOfferDetails];
  if (v13)
  {
    v14 = [v13 configuration];
    [v14 removeTransactionAmount];
  }

  [v13 removeCachedPaymentOffers];
  sub_1BD2294F8();

  v15 = MEMORY[0x1BFB3EDF0](0.5, 0.55, 0.0);
  MEMORY[0x1EEE9AC00](v15, v16);
  *(&v20 - 2) = v1;
  sub_1BD70BF20(v1, &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PaymentOfferSelectorOverlay);
  v17 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v18 = swift_allocObject();
  sub_1BD70B2E4(&v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v18 + v17, type metadata accessor for PaymentOfferSelectorOverlay);
  sub_1BE04FF94();
  sub_1BE04E7C4();

  return (*(v3 + 8))(v6, v2);
}

uint64_t sub_1BD70536C()
{
  v1 = v0;
  v2 = *v0;
  v3 = v0[1];
  v13 = *v0;
  v14 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4A778);
  sub_1BE0516A4();
  v4 = v11[0];
  sub_1BD227E5C(v9);

  if (!v9[1])
  {
LABEL_5:
    v13 = v2;
    v14 = v3;
    sub_1BE0516A4();
    v6 = v11[0];
    sub_1BD22826C(v11);

    if (v11[1])
    {
      if (v12)
      {
        v5 = v11[0];
        sub_1BE048C84();
        sub_1BD0DE53C(v11, &qword_1EBD3E550);
        return v5;
      }

      sub_1BD0DE53C(v11, &qword_1EBD3E550);
    }

    v13 = v2;
    v14 = v3;
    sub_1BE0516A4();
    sub_1BD227C90(&v13);

    if (v14)
    {
      if (v15)
      {
        v5 = v13;
        sub_1BE048C84();
        sub_1BD0DE53C(&v13, &qword_1EBD3E550);
        return v5;
      }

      sub_1BD0DE53C(&v13, &qword_1EBD3E550);
    }

    v5 = v1[2];
    sub_1BE048C84();
    return v5;
  }

  if ((v10 & 1) == 0)
  {
    sub_1BD0DE53C(v9, &qword_1EBD3E550);
    goto LABEL_5;
  }

  v5 = v9[0];
  sub_1BE048C84();
  sub_1BD0DE53C(v9, &qword_1EBD3E550);
  return v5;
}

uint64_t sub_1BD70552C()
{
  v1 = v0;
  v2 = sub_1BE04FFA4();
  v33 = *(v2 - 8);
  v34 = v2;
  MEMORY[0x1EEE9AC00](v2, v3);
  v5 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for PaymentOfferSelectorOverlay();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6 - 8, v9);
  v10 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v0;
  v12 = v0[1];
  v36 = *v0;
  v37 = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4A778);
  sub_1BE0516A4();
  v13 = v35;
  v14 = sub_1BD228864();

  if (v14)
  {
LABEL_7:
    v21 = MEMORY[0x1BFB3EDF0](0.5, 1.0, 0.0);
    MEMORY[0x1EEE9AC00](v21, v22);
    *(&v31 - 2) = v1;
    sub_1BE04E7D4();

    v24 = MEMORY[0x1BFB3EDF0](v23, 0.5, 0.55, 0.0);
    MEMORY[0x1EEE9AC00](v24, v25);
    *(&v31 - 2) = v1;
    sub_1BD70BF20(v1, v10, type metadata accessor for PaymentOfferSelectorOverlay);
    v26 = (*(v7 + 80) + 16) & ~*(v7 + 80);
    v27 = swift_allocObject();
    sub_1BD70B2E4(v10, v27 + v26, type metadata accessor for PaymentOfferSelectorOverlay);
    sub_1BE04FF94();
    sub_1BE04E7C4();

    return (*(v33 + 8))(v5, v34);
  }

  v32 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = v11;
  v37 = v12;
  sub_1BE0516A4();
  v15 = v35;
  v16 = OBJC_IVAR____TtC9PassKitUI25PaymentOfferSelectorModel_paymentOffersController;
  v17 = *&v35[OBJC_IVAR____TtC9PassKitUI25PaymentOfferSelectorModel_paymentOffersController];
  if (v17)
  {
    v18 = [v17 fallbackSelectedPaymentOfferForType_];
    if (v18)
    {
      v19 = v18;
      v20 = *&v15[v16];
      if (v20)
      {
        [v20 updateCurrentSelectedPaymentOffer:v19 updateReason:3];
      }

      sub_1BD2294F8();

      v10 = v32;
      goto LABEL_7;
    }
  }

  v29 = MEMORY[0x1BFB3EDF0](0.5, 1.0, 0.0);
  MEMORY[0x1EEE9AC00](v29, v30);
  *(&v31 - 2) = v1;
  sub_1BE04E7D4();
}

uint64_t sub_1BD705918()
{
  v1 = v0;
  v2 = sub_1BE04FFA4();
  v28 = *(v2 - 8);
  v29 = v2;
  MEMORY[0x1EEE9AC00](v2, v3);
  v5 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for PaymentOfferSelectorOverlay();
  v27 = *(v6 - 8);
  v7 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](v6 - 8, v8);
  v10 = *v0;
  v9 = v0[1];
  v31 = *v0;
  v32 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4A778);
  sub_1BE0516A4();
  v11 = v30;
  swift_getKeyPath();
  v31 = v11;
  sub_1BD70C044(&qword_1EBD3E558, type metadata accessor for PaymentOfferSelectorModel);
  sub_1BE04B594();

  v12 = *&v11[OBJC_IVAR____TtC9PassKitUI25PaymentOfferSelectorModel__selectedPaymentOffer];
  if (!v12)
  {

LABEL_5:
    v31 = v10;
    v32 = v9;
    sub_1BE0516A4();
    v18 = v30;
    v19 = sub_1BD22B994();

    v20 = MEMORY[0x1BFB3EDF0](0.5, 1.0, 0.0);
    MEMORY[0x1EEE9AC00](v20, v21);
    *(&v26 - 2) = v1;
    sub_1BE04E7D4();

    if ((v19 & 1) == 0)
    {
      return result;
    }

    goto LABEL_6;
  }

  v13 = v12;
  v14 = [v13 type];

  if (v14 != 2)
  {
    goto LABEL_5;
  }

  v15 = MEMORY[0x1BFB3EDF0](0.5, 1.0, 0.0);
  MEMORY[0x1EEE9AC00](v15, v16);
  *(&v26 - 2) = v1;
  sub_1BE04E7D4();

LABEL_6:
  v22 = MEMORY[0x1BFB3EDF0](result, 0.5, 0.55, 0.0);
  MEMORY[0x1EEE9AC00](v22, v23);
  *(&v26 - 2) = v1;
  sub_1BD70BF20(v1, &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PaymentOfferSelectorOverlay);
  v24 = (*(v27 + 80) + 16) & ~*(v27 + 80);
  v25 = swift_allocObject();
  sub_1BD70B2E4(&v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v25 + v24, type metadata accessor for PaymentOfferSelectorOverlay);
  sub_1BE04FF94();
  sub_1BE04E7C4();

  return (*(v28 + 8))(v5, v29);
}

uint64_t sub_1BD705D4C@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1BE04EC54();
  v3 = sub_1BE0501D4();
  type metadata accessor for PaymentOfferSelectorOverlay();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54350);
  sub_1BE0516A4();
  if (v10)
  {
    v4 = 10.0;
  }

  else
  {
    v4 = 0.0;
  }

  v5 = sub_1BE04EC54();
  v6 = sub_1BE0501D4();
  sub_1BE0513F4();
  sub_1BE0516A4();
  v7 = sub_1BE051454();

  v8 = sub_1BE04EC54();
  result = sub_1BE0501D4();
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = 1;
  *(a1 + 32) = v5;
  *(a1 + 40) = v6;
  *(a1 + 48) = v7;
  *(a1 + 56) = v8;
  *(a1 + 64) = result;
  return result;
}

uint64_t sub_1BD705E90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v17[1] = a4;
  v5 = sub_1BE04FFA4();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for PaymentOfferSelectorOverlay();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10 - 8, v13);
  MEMORY[0x1BFB3EDF0](0.5, 0.55, 0.0);
  v17[4] = a1;
  sub_1BD70BF20(a1, v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PaymentOfferSelectorOverlay);
  v14 = (*(v11 + 80) + 16) & ~*(v11 + 80);
  v15 = swift_allocObject();
  sub_1BD70B2E4(v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v15 + v14, type metadata accessor for PaymentOfferSelectorOverlay);
  sub_1BE04FF94();
  sub_1BE04E7C4();

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_1BD7060A4@<X0>(void *a1@<X3>, _BYTE *a2@<X8>)
{
  type metadata accessor for PaymentOfferSelectorOverlay();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54350);
  result = sub_1BE0516A4();
  if (v6 == 1 && (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD42150), result = sub_1BE0516A4(), v7))
  {
    if (v6 == *a1 && v7 == a1[1])
    {
      v5 = 1;
    }

    else
    {
      v5 = sub_1BE053B84();
    }
  }

  else
  {
    v5 = 0;
  }

  *a2 = v5 & 1;
  return result;
}

uint64_t sub_1BD7061BC()
{
  MEMORY[0x1BFB3EDF0](0.5, 1.0, 0.0);
  sub_1BE04E7D4();
}

uint64_t sub_1BD706248(uint64_t a1, char a2)
{
  if (a2)
  {
    sub_1BE048C84();
  }

  type metadata accessor for PaymentOfferSelectorOverlay();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD42150);
  return sub_1BE0516B4();
}

void sub_1BD7062E4(unsigned __int8 a1)
{
  v2 = sub_1BD70632C();
  sub_1BD704C18(v2, v3);

  sub_1BD706344(a1);
}

void sub_1BD706344(unsigned __int8 a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3E580);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v148 - v6;
  v8 = sub_1BE04FFA4();
  v154 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v148 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for PaymentOfferSelectorOverlay();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12, v14);
  v15 = (&v148 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v16, v17);
  v19 = &v148 - v18;
  MEMORY[0x1EEE9AC00](v20, v21);
  v23 = &v148 - v22;
  MEMORY[0x1EEE9AC00](v24, v25);
  v27 = &v148 - v26;
  MEMORY[0x1EEE9AC00](v28, v29);
  if (a1 <= 2u)
  {
    if (!a1)
    {
      v61 = v32;
      v62 = &v148 - v31;
      v63 = v2[1];
      *&v155 = *v2;
      *(&v155 + 1) = v63;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4A778);
      sub_1BE0516A4();
      v64 = v158;
      swift_getKeyPath();
      *&v155 = v64;
      sub_1BD70C044(&qword_1EBD3E558, type metadata accessor for PaymentOfferSelectorModel);
      sub_1BE04B594();

      v65 = *&v64[OBJC_IVAR____TtC9PassKitUI25PaymentOfferSelectorModel__installmentPlanSelectionModel];
      v66 = v65;

      if (!v65)
      {
        return;
      }

      sub_1BD70BF20(v2, v62, type metadata accessor for PaymentOfferSelectorOverlay);
      v67 = (*(v61 + 80) + 16) & ~*(v61 + 80);
      v68 = swift_allocObject();
      sub_1BD70B2E4(v62, v68 + v67, type metadata accessor for PaymentOfferSelectorOverlay);
      v69 = sub_1BD70C0B8;
LABEL_32:
      sub_1BD8C1B80(0, 1, v69, v68);

      return;
    }

    v152 = &v148 - v31;
    v153 = v32;
    v151 = v2;
    if (a1 == 1)
    {
      v150 = v8;
      v42 = *v2;
      v43 = v2[1];
      *&v155 = v42;
      *(&v155 + 1) = v43;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4A778);
      sub_1BE0516A4();
      v44 = v158;
      v45 = sub_1BD228AA4();

      if (v45)
      {
        *&v155 = v42;
        *(&v155 + 1) = v43;
        sub_1BE0516A4();
        v46 = v158;
        v47 = objc_opt_self();
        *&v155 = v42;
        *(&v155 + 1) = v43;
        sub_1BE0516A4();
        v48 = v158;
        v49 = *(v158 + OBJC_IVAR____TtC9PassKitUI25PaymentOfferSelectorModel_paymentPass);

        v50 = [objc_allocWithZone(MEMORY[0x1E69B9208]) initWithPaymentPass_];
        v51 = [v47 postPurchaseFollowupWithCriteria:v45 passDetails:v50];

        v52 = *&v46[OBJC_IVAR____TtC9PassKitUI25PaymentOfferSelectorModel_paymentOffersController];
        if (v52)
        {
          [v52 updateCurrentSelectedPaymentOffer:v51 updateReason:3];
        }

        sub_1BD2294F8();

        v53 = MEMORY[0x1BFB3EDF0](0.5, 0.55, 0.0);
        MEMORY[0x1EEE9AC00](v53, v54);
        v55 = v151;
        v56 = v152;
        *(&v148 - 2) = v151;
        sub_1BD70BF20(v55, v56, type metadata accessor for PaymentOfferSelectorOverlay);
        v57 = (*(v153 + 80) + 16) & ~*(v153 + 80);
        v58 = swift_allocObject();
        sub_1BD70B2E4(v56, v58 + v57, type metadata accessor for PaymentOfferSelectorOverlay);
        sub_1BE04FF94();
        sub_1BE04E7C4();

        (*(v154 + 8))(v11, v150);
      }
    }

    else
    {
      v150 = v30;
      sub_1BD70BF20(v2, v27, type metadata accessor for PaymentOfferSelectorOverlay);
      sub_1BD70BF20(v27, v23, type metadata accessor for PaymentOfferSelectorOverlay);
      v70 = *(v153 + 80);
      v154 = swift_allocObject();
      sub_1BD70B2E4(v27, v154 + ((v70 + 16) & ~v70), type metadata accessor for PaymentOfferSelectorOverlay);
      v71 = v2;
      v72 = *v2;
      v73 = v71[1];
      *&v155 = v72;
      *(&v155 + 1) = v73;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4A778);
      sub_1BE0516A4();
      v74 = v158;
      v75 = *(v158 + OBJC_IVAR____TtC9PassKitUI25PaymentOfferSelectorModel_paymentOffersController);
      v76 = v75;

      if (v75)
      {
        v77 = [v76 configuration];

        [v77 context];
      }

      *&v155 = v72;
      *(&v155 + 1) = v73;
      sub_1BE0516A4();
      v111 = v158;
      v112 = *(v158 + OBJC_IVAR____TtC9PassKitUI25PaymentOfferSelectorModel_paymentPass);

      v113 = [v112 uniqueID];
      LODWORD(v112) = PKHasSeenPaymentOfferRewardsExplanationScreen();

      if (v112)
      {
        v114 = &v23[*(v150 + 36)];
        v116 = *(v114 + 1);
        v117 = *(v114 + 2);
        v118 = *(v114 + 3);
        *&v155 = *v114;
        v115 = v155;
        *(&v155 + 1) = v116;
        *v156 = v117;
        *&v156[8] = v118;
        v158 = 0uLL;
        *&v159[0] = 0;
        sub_1BD70B22C(v155, v116, v117);
        sub_1BE048964();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD50CC0);
        sub_1BE0516B4();

        sub_1BD708C60(v115, v116, v117);
      }

      else
      {
        v119 = sub_1BE0528D4();
        (*(*(v119 - 8) + 56))(v7, 1, 1, v119);
        v120 = v152;
        sub_1BD70BF20(v151, v152, type metadata accessor for PaymentOfferSelectorOverlay);
        sub_1BE0528A4();
        v121 = v154;
        sub_1BE048964();
        v122 = sub_1BE052894();
        v123 = (v70 + 32) & ~v70;
        v124 = swift_allocObject();
        v125 = MEMORY[0x1E69E85E0];
        *(v124 + 16) = v122;
        *(v124 + 24) = v125;
        sub_1BD70B2E4(v120, v124 + v123, type metadata accessor for PaymentOfferSelectorOverlay);
        v126 = (v124 + ((v13 + v123 + 7) & 0xFFFFFFFFFFFFFFF8));
        *v126 = sub_1BD70AE3C;
        v126[1] = v121;
        sub_1BD122C00(0, 0, v7, &unk_1BE0F2288, v124);
      }

      sub_1BD70B34C(v23, type metadata accessor for PaymentOfferSelectorOverlay);
    }
  }

  else
  {
    if (a1 <= 4u)
    {
      if (a1 == 3)
      {
        v150 = v8;
        v152 = &v148 - v31;
        v33 = v32;
        sub_1BD70BF20(v2, v19, type metadata accessor for PaymentOfferSelectorOverlay);
        sub_1BD70BF20(v19, v15, type metadata accessor for PaymentOfferSelectorOverlay);
        v34 = *(v33 + 80);
        v35 = (v34 + 16) & ~v34;
        v149 = v34;
        v153 = swift_allocObject();
        v148 = v35;
        sub_1BD70B2E4(v19, v153 + v35, type metadata accessor for PaymentOfferSelectorOverlay);
        v151 = v2;
        v36 = *v2;
        v37 = v2[1];
        *&v155 = v36;
        *(&v155 + 1) = v37;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4A778);
        sub_1BE0516A4();
        v38 = v158;
        v39 = *(v158 + OBJC_IVAR____TtC9PassKitUI25PaymentOfferSelectorModel_paymentOffersController);
        v40 = v39;

        if (v39)
        {
          v41 = [v40 configuration];

          [v41 context];
        }

        *&v155 = v36;
        *(&v155 + 1) = v37;
        sub_1BE0516A4();
        v127 = v158;
        v128 = *(v158 + OBJC_IVAR____TtC9PassKitUI25PaymentOfferSelectorModel_paymentPass);

        v129 = [v128 uniqueID];
        LODWORD(v128) = PKHasSeenPaymentOfferRewardsExplanationScreen();

        if (v128)
        {
          v130 = v15[1];
          *&v155 = *v15;
          *(&v155 + 1) = v130;
          sub_1BE0516A4();
          v131 = v158;
          sub_1BD22B2AC(&v155);
          if ((v157 & 1) == 0)
          {
            v158 = v155;
            v159[0] = *v156;
            *(v159 + 9) = *&v156[9];
            sub_1BD22B534(&v158);
          }

          v132 = MEMORY[0x1BFB3EDF0](0.5, 0.55, 0.0);
          MEMORY[0x1EEE9AC00](v132, v133);
          *(&v148 - 2) = v15;
          v134 = v152;
          sub_1BD70BF20(v15, v152, type metadata accessor for PaymentOfferSelectorOverlay);
          v135 = v148;
          v136 = swift_allocObject();
          sub_1BD70B2E4(v134, v136 + v135, type metadata accessor for PaymentOfferSelectorOverlay);
          sub_1BE04FF94();
          sub_1BE04E7C4();

          (*(v154 + 8))(v11, v150);
        }

        else
        {
          v137 = v149;
          v138 = sub_1BE0528D4();
          (*(*(v138 - 8) + 56))(v7, 1, 1, v138);
          v139 = v152;
          sub_1BD70BF20(v151, v152, type metadata accessor for PaymentOfferSelectorOverlay);
          sub_1BE0528A4();
          v140 = v153;
          sub_1BE048964();
          v141 = sub_1BE052894();
          v142 = (v137 + 32) & ~v137;
          v143 = swift_allocObject();
          v144 = MEMORY[0x1E69E85E0];
          *(v143 + 16) = v141;
          *(v143 + 24) = v144;
          sub_1BD70B2E4(v139, v143 + v142, type metadata accessor for PaymentOfferSelectorOverlay);
          v145 = (v143 + ((v13 + v142 + 7) & 0xFFFFFFFFFFFFFFF8));
          *v145 = sub_1BD70ACF4;
          v145[1] = v140;
          sub_1BD122C00(0, 0, v7, &unk_1BE0F2280, v143);
        }

        sub_1BD70B34C(v15, type metadata accessor for PaymentOfferSelectorOverlay);
        return;
      }

      v78 = v30;
      v79 = *v2;
      v80 = v2[1];
      *&v155 = *v2;
      *(&v155 + 1) = v80;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4A778);
      sub_1BE0516A4();
      v81 = v158;
      v82 = *(v158 + OBJC_IVAR____TtC9PassKitUI25PaymentOfferSelectorModel_paymentOffersController);
      v83 = v82;

      if (!v82 || (v84 = v2, v85 = [v83 selectedOfferDetails], v83, v86 = objc_msgSend(v85, sel_selectedPaymentOffer), v85, v2 = v84, !v86))
      {
LABEL_46:
        v146 = (v2 + *(v78 + 36));
        v147 = v146[1];
        v155 = *v146;
        *v156 = v147;
        *&v159[0] = 0;
        v158 = 1uLL;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD50CC0);
        sub_1BE0516B4();
        return;
      }

      *&v155 = v79;
      *(&v155 + 1) = v80;
      sub_1BE0516A4();
      v87 = v158;
      v88 = *(v158 + OBJC_IVAR____TtC9PassKitUI25PaymentOfferSelectorModel_paymentOffersController);
      v89 = v88;

      if (!v88 || (v90 = [v89 configuration], v89, !v90))
      {
LABEL_45:
        v2 = v84;

        goto LABEL_46;
      }

      v91 = [v90 userEnteredAmount];
      if (v91)
      {
        v92 = v91;
        v93 = [v91 amount];
        if (v93)
        {
          v94 = v93;
          [v90 updateTransactionAmount_];

          v95 = [v92 currency];
          if (v95)
          {
            v96 = v95;
            [v90 updateCurrencyCode_];

            *&v155 = v79;
            *(&v155 + 1) = v80;
            sub_1BE0516A4();
            v97 = v158;
            v98 = *(v158 + OBJC_IVAR____TtC9PassKitUI25PaymentOfferSelectorModel_paymentOffersController);
            if (v98)
            {
              [v98 updateCurrentSelectedPaymentOffer:v86 updateReason:3];
            }

            sub_1BD2294F8();

            goto LABEL_44;
          }
        }

        else
        {
          __break(1u);
        }

        __break(1u);
        return;
      }

      v92 = v86;
      v97 = v90;
LABEL_44:

      v86 = v97;
      goto LABEL_45;
    }

    if (a1 == 5)
    {
      v59 = v2[1];
      *&v155 = *v2;
      *(&v155 + 1) = v59;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4A778);
      sub_1BE0516A4();
      v60 = v158;
      sub_1BD229120();

      return;
    }

    v153 = v32;
    v99 = &v148 - v31;
    v100 = *v2;
    v101 = v2[1];
    *&v155 = *v2;
    *(&v155 + 1) = v101;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4A778);
    sub_1BE0516A4();
    v102 = v158;
    v103 = *(v158 + OBJC_IVAR____TtC9PassKitUI25PaymentOfferSelectorModel_paymentOffersController);
    v104 = v103;

    if (v103)
    {
      v105 = [v104 configuration];

      [v105 removeTransactionAmount];
    }

    *&v155 = v100;
    *(&v155 + 1) = v101;
    sub_1BE0516A4();
    v106 = v158;
    v107 = *(v158 + OBJC_IVAR____TtC9PassKitUI25PaymentOfferSelectorModel_paymentOffersController);

    [v107 removeCachedPaymentOffers];
    *&v155 = v100;
    *(&v155 + 1) = v101;
    sub_1BE0516A4();
    v108 = v158;
    swift_getKeyPath();
    *&v155 = v108;
    sub_1BD70C044(&qword_1EBD3E558, type metadata accessor for PaymentOfferSelectorModel);
    sub_1BE04B594();

    v109 = *&v108[OBJC_IVAR____TtC9PassKitUI25PaymentOfferSelectorModel__installmentPlanSelectionModel];
    v66 = v109;

    if (v109)
    {
      sub_1BD70BF20(v2, v99, type metadata accessor for PaymentOfferSelectorOverlay);
      v110 = (*(v153 + 80) + 16) & ~*(v153 + 80);
      v68 = swift_allocObject();
      sub_1BD70B2E4(v99, v68 + v110, type metadata accessor for PaymentOfferSelectorOverlay);
      v69 = sub_1BD70ACF0;
      goto LABEL_32;
    }
  }
}

uint64_t sub_1BD70751C()
{
  type metadata accessor for PaymentOfferSelectorOverlay();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD42150);
  sub_1BE0516B4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54350);
  return sub_1BE0516B4();
}

uint64_t sub_1BD7075E0(uint64_t a1)
{
  v19 = sub_1BE04F3D4();
  v2 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19, v3);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3FA20);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v18 - v8;
  v10 = sub_1BE04E664();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = &v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for PaymentOfferSelectorOverlay();
  sub_1BD0DE19C(a1 + *(v15 + 28), v9, &qword_1EBD3FA20);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v11 + 32))(v14, v9, v10);
  }

  else
  {
    sub_1BE052C44();
    v16 = sub_1BE050174();
    sub_1BE04CF84();

    sub_1BE04F3C4();
    swift_getAtKeyPath();

    (*(v2 + 8))(v5, v19);
  }

  sub_1BE04E654();
  return (*(v11 + 8))(v14, v10);
}

uint64_t sub_1BD707868(uint64_t *a1, void (*a2)(uint64_t *__return_ptr, uint64_t))
{
  v3 = a1[1];
  v7 = *a1;
  v8 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4A778);
  v4 = sub_1BE0516A4();
  a2(&v7, v4);

  if (v8)
  {
    sub_1BE048C84();
    sub_1BD0DE53C(&v7, &qword_1EBD3E550);
  }

  type metadata accessor for PaymentOfferSelectorOverlay();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD42150);
  return sub_1BE0516B4();
}

void sub_1BD70795C(uint64_t a1)
{
  v3 = sub_1BE04FFA4();
  v49 = *(v3 - 8);
  v50 = v3;
  MEMORY[0x1EEE9AC00](v3, v4);
  v48 = &v47 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for PaymentOfferSelectorOverlay();
  v47 = *(v6 - 8);
  v7 = *(v47 + 64);
  MEMORY[0x1EEE9AC00](v6, v8);
  v9 = type metadata accessor for PaymentOfferInstallmentPlanSelectionModel.SelectionResult(0);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v12 = &v47 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD57C50);
  MEMORY[0x1EEE9AC00](v13, v14);
  v16 = (&v47 - v15);
  sub_1BD0DE19C(a1, &v47 - v15, &unk_1EBD57C50);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v17 = *v16;
    if (*v16)
    {
      v18 = v17;
      v19 = sub_1BE04A844();

      v20 = (v1 + *(v6 + 48));
      v22 = v20[1];
      v52 = *v20;
      v21 = v52;
      v53 = v22;
      v51 = v19;
      sub_1BE048964();
      v23 = v21;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD497C0);
      sub_1BE0516B4();
    }
  }

  else
  {
    sub_1BD70B2E4(v16, v12, type metadata accessor for PaymentOfferInstallmentPlanSelectionModel.SelectionResult);
    v24 = *(v12 + 1);
    v25 = v12;
    if (v24)
    {
      v26 = v1[1];
      v27 = v1;
      v52 = *v1;
      v53 = v26;
      v28 = v24;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4A778);
      sub_1BE0516A4();
      v29 = v51;
      v30 = *&v51[OBJC_IVAR____TtC9PassKitUI25PaymentOfferSelectorModel_paymentOffersController];
      if (v30)
      {
        [v30 updateCurrentSelectedPaymentOffer:v28 updateReason:3];
      }

      sub_1BD2294F8();

      v31 = MEMORY[0x1BFB3EDF0](0.5, 0.55, 0.0);
      MEMORY[0x1EEE9AC00](v31, v32);
      *(&v47 - 2) = v27;
      sub_1BD70BF20(v27, &v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PaymentOfferSelectorOverlay);
      v33 = (*(v47 + 80) + 16) & ~*(v47 + 80);
      v34 = swift_allocObject();
      sub_1BD70B2E4(&v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v34 + v33, type metadata accessor for PaymentOfferSelectorOverlay);
      v35 = v48;
      sub_1BE04FF94();
      sub_1BE04E7C4();

      (*(v49 + 8))(v35, v50);
      sub_1BD70B34C(v25, type metadata accessor for PaymentOfferInstallmentPlanSelectionModel.SelectionResult);
    }

    else
    {
      v36 = *v1;
      v37 = v1[1];
      v52 = *v1;
      v53 = v37;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4A778);
      sub_1BE0516A4();
      v38 = v51;
      v39 = *&v51[OBJC_IVAR____TtC9PassKitUI25PaymentOfferSelectorModel_paymentOffersController];
      v40 = v39;

      if (v39)
      {
        v41 = [v40 configuration];

        [v41 removeTransactionAmount];
      }

      v52 = v36;
      v53 = v37;
      sub_1BE0516A4();
      v42 = v51;
      v43 = *&v51[OBJC_IVAR____TtC9PassKitUI25PaymentOfferSelectorModel_paymentOffersController];

      [v43 removeCachedPaymentOffers];
      v52 = v36;
      v53 = v37;
      sub_1BE0516A4();
      v44 = v51;
      v45 = *&v51[OBJC_IVAR____TtC9PassKitUI25PaymentOfferSelectorModel_paymentOffersController];
      [v45 clearCurrentSelectedPaymentOfferDetails];
      if (v45)
      {
        v46 = [v45 configuration];
        [v46 removeTransactionAmount];
      }

      [v45 removeCachedPaymentOffers];
      sub_1BD2294F8();

      sub_1BD70B34C(v25, type metadata accessor for PaymentOfferInstallmentPlanSelectionModel.SelectionResult);
    }
  }
}

uint64_t sub_1BD707F10()
{
  type metadata accessor for PaymentOfferSelectorOverlay();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD50CC0);
  return sub_1BE0516B4();
}

uint64_t sub_1BD707F7C(void *a1)
{
  v2 = sub_1BE04FFA4();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v18[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = type metadata accessor for PaymentOfferSelectorOverlay();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7 - 8, v10);
  v11 = a1[1];
  *&v19 = *a1;
  *(&v19 + 1) = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4A778);
  sub_1BE0516A4();
  v12 = v22;
  sub_1BD22B2AC(&v19);
  if ((v21 & 1) == 0)
  {
    v22 = v19;
    v23[0] = *v20;
    *(v23 + 9) = *&v20[9];
    sub_1BD22B534(&v22);
  }

  v13 = MEMORY[0x1BFB3EDF0](0.5, 0.55, 0.0);
  MEMORY[0x1EEE9AC00](v13, v14);
  *&v18[-16] = a1;
  sub_1BD70BF20(a1, &v18[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)], type metadata accessor for PaymentOfferSelectorOverlay);
  v15 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v16 = swift_allocObject();
  sub_1BD70B2E4(&v18[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)], v16 + v15, type metadata accessor for PaymentOfferSelectorOverlay);
  sub_1BE04FF94();
  sub_1BE04E7C4();

  return (*(v3 + 8))(v6, v2);
}

uint64_t sub_1BD708228(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[13] = a5;
  v6[14] = a6;
  v6[12] = a4;
  sub_1BE0528A4();
  v6[15] = sub_1BE052894();
  v8 = sub_1BE052844();
  v6[16] = v8;
  v6[17] = v7;

  return MEMORY[0x1EEE6DFA0](sub_1BD7082C4, v8, v7);
}

uint64_t sub_1BD7082C4()
{
  v1 = v0[12];
  v3 = *v1;
  v2 = v1[1];
  v0[9] = v3;
  v0[10] = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4A778);
  sub_1BE0516A4();
  v0[18] = v0[11];
  v4 = swift_task_alloc();
  v0[19] = v4;
  *v4 = v0;
  v4[1] = sub_1BD708388;

  return sub_1BD22BB48();
}

uint64_t sub_1BD708388(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 144);
  *(*v1 + 160) = a1;

  v4 = *(v2 + 136);
  v5 = *(v2 + 128);

  return MEMORY[0x1EEE6DFA0](sub_1BD7084D0, v5, v4);
}

uint64_t sub_1BD7084D0()
{
  v1 = *(v0 + 160);
  v2 = *(v0 + 112);
  v3 = *(v0 + 96);
  v4 = *(v0 + 104);

  v5 = (v3 + *(type metadata accessor for PaymentOfferSelectorOverlay() + 36));
  v6 = v5[1];
  *(v0 + 16) = *v5;
  *(v0 + 32) = v6;
  *(v0 + 48) = v4;
  *(v0 + 56) = v2;
  *(v0 + 64) = v1;
  sub_1BE048964();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD50CC0);
  sub_1BE0516B4();
  v7 = *(v0 + 8);

  return v7();
}

void sub_1BD7085C0(unint64_t *a1@<X8>)
{
  v2 = 0xD000000000000012;
  v3 = *v1;
  v4 = "SELECT_PAYMENT_METHOD";
  v5 = 0xD000000000000019;
  if (!*v1)
  {
    v5 = 0xD000000000000012;
    v4 = "installmentPlanDetails";
  }

  if (v3 == 1)
  {
    v5 = 0xD000000000000016;
    v4 = "rewardsRedemptions";
  }

  if (v3 == 2)
  {
    v6 = "erSelectorOverlay.swift:";
  }

  else
  {
    v2 = v5;
    v6 = v4;
  }

  *a1 = v2;
  a1[1] = v6 | 0x8000000000000000;
}

unint64_t sub_1BD7086E0()
{
  result = qword_1EBD50CD0;
  if (!qword_1EBD50CD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD50CA8);
    sub_1BD70876C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD50CD0);
  }

  return result;
}

unint64_t sub_1BD70876C()
{
  result = qword_1EBD50CD8;
  if (!qword_1EBD50CD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD50CB8);
    sub_1BD0DE4F4(&qword_1EBD50CE0, &qword_1EBD50CE8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD50CD8);
  }

  return result;
}

unint64_t sub_1BD708824()
{
  result = qword_1EBD50CF0;
  if (!qword_1EBD50CF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD50CF0);
  }

  return result;
}

unint64_t sub_1BD708878()
{
  result = qword_1EBD50CF8;
  if (!qword_1EBD50CF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD50CC8);
    sub_1BD708904();
    sub_1BD708A70();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD50CF8);
  }

  return result;
}

unint64_t sub_1BD708904()
{
  result = qword_1EBD50D00;
  if (!qword_1EBD50D00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD50D08);
    sub_1BD70BCFC(&qword_1EBD50D10, &qword_1EBD50D18, &unk_1BE0F1FE0, sub_1BD10CC00);
    sub_1BD7089BC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD50D00);
  }

  return result;
}

unint64_t sub_1BD7089BC()
{
  result = qword_1EBD50D20;
  if (!qword_1EBD50D20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD50D28);
    sub_1BD70C044(&qword_1EBD50D30, type metadata accessor for PaymentOfferRewardsAmountEntry);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD50D20);
  }

  return result;
}

unint64_t sub_1BD708A70()
{
  result = qword_1EBD50D38;
  if (!qword_1EBD50D38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD50D40);
    sub_1BD708AFC();
    sub_1BD708BB0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD50D38);
  }

  return result;
}

unint64_t sub_1BD708AFC()
{
  result = qword_1EBD50D48;
  if (!qword_1EBD50D48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD50D50);
    sub_1BD70C044(&qword_1EBD412A0, type metadata accessor for PaymentOfferSelectedInstallmentDetailView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD50D48);
  }

  return result;
}

unint64_t sub_1BD708BB0()
{
  result = qword_1EBD50D58;
  if (!qword_1EBD50D58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD50D60);
    sub_1BD0DE4F4(&qword_1EBD50D68, &qword_1EBD50D70);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD50D58);
  }

  return result;
}

void sub_1BD708C60(unint64_t a1, uint64_t a2, void *a3)
{
  if (a1 != 3)
  {
    sub_1BD708C70(a1, a2, a3);
  }
}

void sub_1BD708C70(unint64_t a1, uint64_t a2, void *a3)
{
  if (a1 >= 3)
  {
  }
}

uint64_t sub_1BD708CB8()
{
  v2 = *(type metadata accessor for PaymentOfferSelectorOverlay() - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = *(v0 + 16);
  v5 = *(v0 + 24);
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_1BD126968;

  return sub_1BD7005D4(v4, v5, v0 + v3);
}

unint64_t sub_1BD708D94()
{
  result = qword_1EBD50D98;
  if (!qword_1EBD50D98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD50D90);
    sub_1BD708E20();
    sub_1BD10EBB8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD50D98);
  }

  return result;
}

unint64_t sub_1BD708E20()
{
  result = qword_1EBD50DA0;
  if (!qword_1EBD50DA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD50C98);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD50CA0);
    type metadata accessor for MultiHyperLinkDetailSheet();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD394A0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD50CA8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD50CC8);
    sub_1BD7086E0();
    sub_1BD708824();
    sub_1BD708878();
    swift_getOpaqueTypeConformance2();
    sub_1BD70C044(&qword_1EBD451C0, type metadata accessor for MultiHyperLinkDetailSheet);
    sub_1BD10CC54();
    swift_getOpaqueTypeConformance2();
    sub_1BD0DE4F4(&qword_1EBD50DA8, &qword_1EBD50D78);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD50DA0);
  }

  return result;
}

uint64_t sub_1BD709000(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4A778);
  sub_1BE0516A4();
  v4 = *&v8[OBJC_IVAR____TtC9PassKitUI25PaymentOfferSelectorModel_paymentPass];

  v5 = [v4 uniqueID];
  PKSetHasSeenPaymentOfferRewardsExplanationScreen();

  type metadata accessor for PaymentOfferSelectorOverlay();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD50CC0);
  v6 = sub_1BE0516B4();
  return a3(v6);
}

uint64_t sub_1BD709114(uint64_t *a1, void *a2)
{
  v4 = sub_1BE04FFA4();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v22[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = type metadata accessor for PaymentOfferSelectorOverlay();
  v10 = v9 - 8;
  v11 = *(v9 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v9, v13);
  v14 = a2[1];
  *&v27 = *a2;
  *(&v27 + 1) = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4A778);
  sub_1BE0516A4();
  v15 = v24;
  sub_1BD22B534(a1);

  v16 = (a2 + *(v10 + 44));
  v17 = v16[1];
  v27 = *v16;
  v28 = v17;
  v25 = 0;
  v26 = 0;
  v24 = 3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD50CC0);
  v18 = sub_1BE0516B4();
  MEMORY[0x1BFB3EDF0](v18, 0.5, 0.55, 0.0);
  v23 = a2;
  sub_1BD70BF20(a2, &v22[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)], type metadata accessor for PaymentOfferSelectorOverlay);
  v19 = (*(v11 + 80) + 16) & ~*(v11 + 80);
  v20 = swift_allocObject();
  sub_1BD70B2E4(&v22[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)], v20 + v19, type metadata accessor for PaymentOfferSelectorOverlay);
  sub_1BE04FF94();
  sub_1BE04E7C4();

  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_1BD7093C0@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v41 = a2;
  v42 = a3;
  v38 = sub_1BE04F434();
  v4 = *(v38 - 8);
  MEMORY[0x1EEE9AC00](v38, v5);
  v7 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for PKDashboardRewardsBalanceDetailsView();
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD50DD8);
  v37 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = &v35 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD50DD0);
  v17 = *(v16 - 8);
  v39 = v16;
  v40 = v17;
  MEMORY[0x1EEE9AC00](v16, v18);
  v36 = &v35 - v19;
  *(v11 + 2) = sub_1BD6BC230;
  *(v11 + 3) = 0;
  v11[32] = 0;
  v20 = *(v8 + 24);
  *&v11[v20] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3FA20);
  swift_storeEnumTagMultiPayload();
  *v11 = a1;
  *(v11 + 1) = 0;
  v21 = [a1 programName];
  v22 = sub_1BE052434();
  v24 = v23;

  v44 = v22;
  v45 = v24;
  v25 = sub_1BD70C044(&qword_1EBD50DE0, type metadata accessor for PKDashboardRewardsBalanceDetailsView);
  v26 = sub_1BD0DDEBC();
  v27 = MEMORY[0x1E69E6158];
  sub_1BE050B74();

  sub_1BD70B34C(v11, type metadata accessor for PKDashboardRewardsBalanceDetailsView);
  v28 = v38;
  (*(v4 + 104))(v7, *MEMORY[0x1E697C428], v38);
  v44 = v8;
  v45 = v27;
  v46 = v25;
  v47 = v26;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v30 = v36;
  sub_1BE050E84();
  (*(v4 + 8))(v7, v28);
  (*(v37 + 8))(v15, v12);
  v43 = v41;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3E9E8);
  v44 = v12;
  v45 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  v31 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3E9F0);
  v32 = sub_1BD0DE4F4(&qword_1EBD3E9F8, &qword_1EBD3E9F0);
  v44 = v31;
  v45 = v32;
  swift_getOpaqueTypeConformance2();
  v33 = v39;
  sub_1BE051024();
  return (*(v40 + 8))(v30, v33);
}

unint64_t sub_1BD7098F8()
{
  result = qword_1EBD39DA8;
  if (!qword_1EBD39DA8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EBD39DA8);
  }

  return result;
}

uint64_t sub_1BD709944(uint64_t a1)
{
  v2 = sub_1BE04FB44();
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3E9F0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v11[-v7];
  sub_1BE04FB04();
  v12 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39500);
  sub_1BD0DE4F4(&qword_1EBD394F8, &qword_1EBD39500);
  sub_1BE04E424();
  v9 = sub_1BD0DE4F4(&qword_1EBD3E9F8, &qword_1EBD3E9F0);
  MEMORY[0x1BFB3CC50](v8, v4, v9);
  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_1BD709B30(uint64_t a1)
{
  v2 = type metadata accessor for PaymentOfferSelectorOverlay();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2 - 8, v5);
  v6 = sub_1BE04E1D4();
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BE04E1A4();
  sub_1BD70BF20(a1, &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PaymentOfferSelectorOverlay);
  v10 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v11 = swift_allocObject();
  sub_1BD70B2E4(&v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v11 + v10, type metadata accessor for PaymentOfferSelectorOverlay);
  return MEMORY[0x1BFB3E7A0](v9, sub_1BD70A7A0, v11);
}

uint64_t sub_1BD709CAC()
{
  type metadata accessor for PaymentOfferSelectorOverlay();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD50CC0);
  return sub_1BE0516B4();
}

void sub_1BD709D1C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4A778);
  sub_1BE0516A4();
  v0 = *&v5[OBJC_IVAR____TtC9PassKitUI25PaymentOfferSelectorModel_paymentOffersController];
  v1 = v0;

  if (v0)
  {
    sub_1BE0516A4();
    v2 = *&v5[OBJC_IVAR____TtC9PassKitUI25PaymentOfferSelectorModel_paymentPass];

    v3 = [v2 uniqueID];
    if (v3)
    {
      sub_1BE052434();

      v4 = sub_1BD4808D8();

      if (v4)
      {
      }
    }

    else
    {
      __break(1u);
    }
  }
}

uint64_t sub_1BD709E44()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4A778);
  sub_1BE0516A4();
  v0 = *&v6[OBJC_IVAR____TtC9PassKitUI25PaymentOfferSelectorModel_paymentOffersController];
  v1 = v0;

  if (v0)
  {
    sub_1BE0516A4();
    v2 = *&v6[OBJC_IVAR____TtC9PassKitUI25PaymentOfferSelectorModel_paymentPass];

    result = [v2 uniqueID];
    if (!result)
    {
      __break(1u);
      return result;
    }

    v4 = result;

    v5 = [v1 eligiblePaymentOfferCriteriaForPassUniqueID:v4 type:2];
    if (v5)
    {

      return 1;
    }
  }

  return 0;
}

uint64_t sub_1BD709F64()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4A778);
  sub_1BE0516A4();
  v0 = *&v7[OBJC_IVAR____TtC9PassKitUI25PaymentOfferSelectorModel_paymentOffersController];
  v1 = v0;

  if (v0)
  {
    v2 = [v1 selectedOfferDetails];

    if (v2)
    {
      v3 = [v2 selectedPaymentOffer];
      if (v3)
      {
        v4 = v3;
        v5 = [v3 type];

        if (v5 == 1)
        {
          return 1;
        }
      }

      else
      {
      }
    }
  }

  return 0;
}

uint64_t sub_1BD70A0A0@<X0>(uint64_t *a1@<X0>, uint64_t (*a2)(void)@<X2>, uint64_t a3@<X8>)
{
  v6 = v3;
  v8 = sub_1BE04F3D4();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(a1);
  MEMORY[0x1EEE9AC00](v13, v14);
  v16 = &v20 - v15;
  sub_1BD0DE19C(v6, &v20 - v15, a1);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v17 = a2(0);
    return (*(*(v17 - 8) + 32))(a3, v16, v17);
  }

  else
  {
    sub_1BE052C44();
    v19 = sub_1BE050174();
    sub_1BE04CF84();

    sub_1BE04F3C4();
    swift_getAtKeyPath();

    return (*(v9 + 8))(v12, v8);
  }
}

uint64_t sub_1BD70A2C8@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_1BE04F3D4();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39CF8);
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = &v15 - v11;
  sub_1BD0DE19C(v2, &v15 - v11, &qword_1EBD39CF8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_1BD0DE204(v12, a1, &qword_1EBD40450);
  }

  sub_1BE052C44();
  v14 = sub_1BE050174();
  sub_1BE04CF84();

  sub_1BE04F3C4();
  swift_getAtKeyPath();

  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_1BD70A570(uint64_t *a1)
{
  v3 = *(type metadata accessor for PaymentOfferSelectorOverlay() - 8);
  v4 = (v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80)));

  return sub_1BD709114(a1, v4);
}

id sub_1BD70A5E0(id result, void *a2, void *a3)
{
  if (result)
  {
    v3 = result;
    v4 = a3;
    sub_1BE048964();
    sub_1BE048964();
    v5 = v3;

    return a2;
  }

  return result;
}

void sub_1BD70A650(void *a1, void *a2, void *a3)
{
  if (a1)
  {
  }
}

uint64_t sub_1BD70A6C0()
{
  v1 = *(type metadata accessor for PaymentOfferSelectorOverlay() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = *(v0 + v3);
  v5 = *(v0 + ((v3 + 15) & 0xFFFFFFFFFFFFFFF8));

  return sub_1BD709000(v0 + v2, v4, v5);
}

unint64_t sub_1BD70A7CC()
{
  result = qword_1EBD50E18;
  if (!qword_1EBD50E18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD50E10);
    sub_1BD70A884();
    sub_1BD0DE4F4(&qword_1EBD50E60, &qword_1EBD50E68);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD50E18);
  }

  return result;
}

unint64_t sub_1BD70A884()
{
  result = qword_1EBD50E20;
  if (!qword_1EBD50E20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD50E28);
    sub_1BD70A910();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD50E20);
  }

  return result;
}

unint64_t sub_1BD70A910()
{
  result = qword_1EBD50E30;
  if (!qword_1EBD50E30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD50E38);
    sub_1BD70A99C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD50E30);
  }

  return result;
}

unint64_t sub_1BD70A99C()
{
  result = qword_1EBD50E40;
  if (!qword_1EBD50E40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD50E48);
    sub_1BD0DE4F4(&qword_1EBD50E50, &qword_1EBD50E58);
    sub_1BD0DE4F4(&unk_1EBD36780, &unk_1EBD51F60);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD50E40);
  }

  return result;
}

uint64_t sub_1BD70AAB4@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(type metadata accessor for PaymentOfferSelectorOverlay() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_1BD702714(v4, a1);
}

uint64_t sub_1BD70AC30(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  type metadata accessor for PaymentOfferSelectorOverlay();
  sub_1BD704C18(a1, a2);
  return a3();
}

uint64_t sub_1BD70AD0C(uint64_t a1)
{
  v4 = *(type metadata accessor for PaymentOfferSelectorOverlay() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = (v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = *v8;
  v10 = v8[1];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_1BD126968;

  return sub_1BD708228(a1, v6, v7, v1 + v5, v9, v10);
}

uint64_t objectdestroy_144Tm()
{
  v1 = type metadata accessor for PaymentOfferSelectorOverlay();
  v2 = (*(*(v1 - 1) + 80) + 32) & ~*(*(v1 - 1) + 80);
  swift_unknownObjectRelease();
  v3 = v0 + v2;

  v4 = v1[7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3FA20);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = sub_1BE04E664();
    (*(*(v5 - 8) + 8))(v3 + v4, v5);
  }

  else
  {
  }

  v6 = v3 + v1[9];
  if (*v6 >= 4uLL)
  {
  }

  v7 = (v3 + v1[10]);
  v8 = type metadata accessor for MultiHyperLinkDetailSheet();
  if (!(*(*(v8 - 8) + 48))(v7, 1, v8))
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v9 = sub_1BE04AA64();
      (*(*(v9 - 8) + 8))(v7, v9);
    }

    else
    {
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD45120);

  return swift_deallocObject();
}

uint64_t sub_1BD70B0FC(uint64_t a1)
{
  v4 = *(type metadata accessor for PaymentOfferSelectorOverlay() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = (v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = *v8;
  v10 = v8[1];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_1BD0F985C;

  return sub_1BD708228(a1, v6, v7, v1 + v5, v9, v10);
}