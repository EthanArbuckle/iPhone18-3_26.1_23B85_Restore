BOOL static iWorkActionsMigration.workflowNeedsMigration(_:fromClientVersion:)()
{
  v0 = 4;
  v1 = &off_1F49F28B8;
  do
  {
    if (!--v0)
    {
      break;
    }

    v2 = v1 + 2;
    v4 = *(v1 - 1);
    v3 = *v1;
    sub_1CA94C218();
    v5 = sub_1CA94C368();
    v6 = sub_1CA94C1A8();
    HasActionsWithBundleIdentifier = WFWorkflowHasActionsWithBundleIdentifier(v5, v6);

    v1 = v2;
  }

  while (!HasActionsWithBundleIdentifier);
  return v0 != 0;
}

BOOL sub_1CA2BFD14(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v5 = (a3 + 40);
  v6 = *(a3 + 16) + 1;
  do
  {
    if (!--v6)
    {
      break;
    }

    v7 = *v5;
    v11[0] = *(v5 - 1);
    v11[1] = v7;
    sub_1CA94C218();
    v8 = a1(v11);
    if (v3)
    {

      return v6 != 0;
    }

    v9 = v8;
    v5 += 2;
  }

  while ((v9 & 1) == 0);
  return v6 != 0;
}

void sub_1CA2BFDF4(uint64_t (*a1)(id *), uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  v6 = a4(a3);
  v7 = 0;
  while (1)
  {
    v8 = v7;
    if (v6 == v7)
    {
      break;
    }

    if ((a3 & 0xC000000000000001) != 0)
    {
      v9 = MEMORY[0x1CCAA22D0](v7, a3);
    }

    else
    {
      if (v7 >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_13;
      }

      v9 = *(a3 + 8 * v7 + 32);
    }

    v10 = v9;
    if (__OFADD__(v8, 1))
    {
      __break(1u);
LABEL_13:
      __break(1u);
      return;
    }

    v13 = v9;
    v11 = a1(&v13);

    if (!v4)
    {
      v7 = v8 + 1;
      if ((v11 & 1) == 0)
      {
        continue;
      }
    }

    return;
  }
}

Swift::Void __swiftcall iWorkActionsMigration.migrateWorkflow()()
{
  v1 = v0;
  v2 = [v0 actions];
  if (v2)
  {
    v3 = v2;
    v75 = &v67;
    v74 = sub_1CA948AF8();
    v73 = *(v74 - 8);
    v4 = *(v73 + 64);
    MEMORY[0x1EEE9AC00](v74);
    v6 = &v67 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
    v76 = v3;
    sub_1CA94CF68();
    v72 = 0x80000001CA99E7A0;
    v71 = 0x80000001CA993290;
    v7 = 0x80000001CA9936D0;
    v79 = 0x80000001CA9936F0;
    v70 = 0x80000001CA99E760;
    v78 = 0x80000001CA99E780;
    v81 = 0x80000001CA9936D0;
    v84 = v6;
    v80 = v0;
    v77 = 0x80000001CA993710;
    while (1)
    {
      while (1)
      {
        while (1)
        {
          do
          {
            sub_1CA948AE8();
            if (!v97)
            {
              (*(v73 + 8))(v6, v74);
              [v1 finish];

              return;
            }

            sub_1CA2C0A20(&v95, &v93);
            sub_1CA2C0A30();
          }

          while ((OUTLINED_FUNCTION_8_3() & 1) == 0);
          v8 = v91;
          v9 = [v1 actionIdentifierKey];
          v10 = sub_1CA94C3A8();
          v12 = v11;

          v91 = v10;
          v92 = v12;
          v13 = [v8 __swift_objectForKeyedSubscript_];
          swift_unknownObjectRelease();
          if (v13)
          {
            sub_1CA94D258();
            swift_unknownObjectRelease();
          }

          else
          {
            OUTLINED_FUNCTION_9_0();
          }

          OUTLINED_FUNCTION_2_7();
          if (v14)
          {
            break;
          }

          sub_1CA2C0A74(&v93);
        }

        if (swift_dynamicCast())
        {
          break;
        }
      }

      v15 = v89;
      v16 = v90;
      v17 = [v1 actionParametersKey];
      v18 = sub_1CA94C3A8();
      v20 = v19;

      v91 = v18;
      v92 = v20;
      v21 = [v8 __swift_objectForKeyedSubscript_];
      swift_unknownObjectRelease();
      if (v21)
      {
        sub_1CA94D258();
        swift_unknownObjectRelease();
      }

      else
      {
        OUTLINED_FUNCTION_9_0();
      }

      OUTLINED_FUNCTION_2_7();
      v22 = MEMORY[0x1E69E6158];
      v87 = v8;
      if (!v23)
      {
        break;
      }

      if ((OUTLINED_FUNCTION_8_3() & 1) == 0 || !v89)
      {
        goto LABEL_21;
      }

      v91 = 0xD000000000000013;
      v92 = v72;
      v24 = v89;
      v25 = [v24 __swift_objectForKeyedSubscript_];
      swift_unknownObjectRelease();
      v88 = v24;

      if (v25)
      {
        sub_1CA94D258();
        swift_unknownObjectRelease();
      }

      else
      {
        OUTLINED_FUNCTION_9_0();
      }

      OUTLINED_FUNCTION_2_7();
      v22 = MEMORY[0x1E69E6158];
      if (!v57)
      {
        goto LABEL_22;
      }

      if ((OUTLINED_FUNCTION_8_3() & 1) == 0)
      {
        goto LABEL_23;
      }

      v58 = v91;
      if (!v91)
      {
        goto LABEL_23;
      }

      v91 = 0xD000000000000010;
      v92 = v71;
      v26 = v58;
      v59 = [v26 __swift_objectForKeyedSubscript_];
      swift_unknownObjectRelease();

      if (v59)
      {
        sub_1CA94D258();
        swift_unknownObjectRelease();
      }

      else
      {
        OUTLINED_FUNCTION_9_0();
      }

      OUTLINED_FUNCTION_2_7();
      v22 = MEMORY[0x1E69E6158];
      if (v64)
      {
        v65 = swift_dynamicCast();
        v83 = 0;
        v66 = v91;
        if (!v65)
        {
          v66 = 0;
        }

        v85 = v66;
        if (v65)
        {
          v27 = v92;
        }

        else
        {
          v27 = 0;
        }

        goto LABEL_25;
      }

      v83 = 0;
LABEL_24:
      sub_1CA2C0A74(&v93);
      v85 = 0;
      v27 = 0;
LABEL_25:
      OUTLINED_FUNCTION_10_1();
      if (sub_1CA94C528())
      {
        v86 = v26;
        v28 = v22;
        v29 = [v1 actionIdentifierKey];
        v30 = sub_1CA94C3A8();
        v31 = v7;
        v33 = v32;

        *&v93 = v15;
        *(&v93 + 1) = v16;
        v91 = 0xD000000000000015;
        v92 = v31;
        v89 = 0x6C7070612E6D6F63;
        v90 = 0xEF73656761502E65;
        sub_1CA27BAF0();
        OUTLINED_FUNCTION_0_8();
        v67 = v28;
        v68 = v29;
        OUTLINED_FUNCTION_1_8();
        sub_1CA94D1B8();

        v34 = sub_1CA94C368();

        *&v93 = v30;
        *(&v93 + 1) = v33;
        v35 = v27;
        v36 = sub_1CA94D848();
        v37 = v87;
        [v87 __swift_setObject_forKeyedSubscript_];

        swift_unknownObjectRelease();
        if (v35)
        {
          *&v93 = v85;
          *(&v93 + 1) = v35;
          v91 = 0xD000000000000015;
          v92 = v31;
          v38 = sub_1CA94D1C8();

          v1 = v80;
          if (v38)
          {
            goto LABEL_39;
          }

          v16 = 0xD000000000000017;
          v6 = v84;
          if ((v83 & 1) == 0)
          {
            v39 = v86;
            goto LABEL_51;
          }

          goto LABEL_52;
        }

        v1 = v80;
        v6 = v84;
        v7 = v31;
      }

      else
      {
        v82 = v27;
        v40 = v79;
        OUTLINED_FUNCTION_10_1();
        if (sub_1CA94C528())
        {
          v86 = v26;
          v41 = [v1 actionIdentifierKey];
          v42 = sub_1CA94C3A8();
          v44 = v43;

          *&v93 = v15;
          *(&v93 + 1) = v16;
          v91 = 0xD000000000000017;
          v92 = v40;
          v69 = 0xD000000000000011;
          v89 = 0xD000000000000011;
          v90 = v78;
          sub_1CA27BAF0();
          OUTLINED_FUNCTION_0_8();
          v67 = v22;
          v68 = v22;
          OUTLINED_FUNCTION_1_8();
          sub_1CA94D1B8();
          OUTLINED_FUNCTION_12_3();
          v45 = sub_1CA94C368();

          *&v93 = v42;
          *(&v93 + 1) = v44;
          v46 = sub_1CA94D848();
          v37 = v87;
          [v87 __swift_setObject_forKeyedSubscript_];

          swift_unknownObjectRelease();
          if (!v82)
          {
            goto LABEL_39;
          }

          OUTLINED_FUNCTION_11_5();
          v91 = 0xD000000000000017;
          v92 = v40;
          v47 = OUTLINED_FUNCTION_6_7();

          v6 = v84;
          if (!v47)
          {
            if ((v83 & 1) == 0)
            {
              v39 = v86;
              v48 = &v98;
              goto LABEL_50;
            }

            goto LABEL_52;
          }

          goto LABEL_38;
        }

        v49 = v77;
        OUTLINED_FUNCTION_10_1();
        v50 = sub_1CA94C528();
        v37 = v87;
        if (v50)
        {
          v86 = v26;
          v51 = [v1 actionIdentifierKey];
          v52 = sub_1CA94C3A8();
          v69 = v53;

          *&v93 = v15;
          *(&v93 + 1) = v16;
          v91 = 0xD000000000000017;
          v92 = v49;
          v68 = 0xD000000000000011;
          v89 = 0xD000000000000011;
          v90 = v70;
          sub_1CA27BAF0();
          OUTLINED_FUNCTION_0_8();
          v67 = v22;
          v68 = v22;
          OUTLINED_FUNCTION_1_8();
          sub_1CA94D1B8();
          OUTLINED_FUNCTION_12_3();
          v54 = sub_1CA94C368();

          *&v93 = v52;
          *(&v93 + 1) = v69;
          [v37 __swift_setObject_forKeyedSubscript_];

          swift_unknownObjectRelease();
          if (!v82)
          {
LABEL_39:

            v6 = v84;
            goto LABEL_54;
          }

          OUTLINED_FUNCTION_11_5();
          v91 = 0xD000000000000017;
          v92 = v49;
          v55 = OUTLINED_FUNCTION_6_7();

          v6 = v84;
          if (!v55)
          {
            if ((v83 & 1) == 0)
            {
              v39 = v86;
              v48 = &v96;
LABEL_50:
              v60 = *(v48 - 32);
LABEL_51:
              v61 = sub_1CA94C368();
              *&v93 = v16 - 7;
              *(&v93 + 1) = v71;
              sub_1CA94D848();
              OUTLINED_FUNCTION_10_1();
              [v62 v63];

              swift_unknownObjectRelease();
            }

LABEL_52:
            v56 = v88;
            goto LABEL_53;
          }

LABEL_38:

          v56 = v86;
LABEL_53:

LABEL_54:
          v7 = v81;
        }

        else
        {

          v6 = v84;
        }
      }
    }

    sub_1CA2C0A74(&v93);
LABEL_21:
    v88 = 0;
    v93 = 0u;
    v94 = 0u;
LABEL_22:
    sub_1CA2C0A74(&v93);
LABEL_23:
    v26 = 0;
    v93 = 0u;
    v94 = 0u;
    v83 = 1;
    goto LABEL_24;
  }
}

_OWORD *sub_1CA2C0A20(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

unint64_t sub_1CA2C0A30()
{
  result = qword_1EC443AE8;
  if (!qword_1EC443AE8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EC443AE8);
  }

  return result;
}

uint64_t sub_1CA2C0A74(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC444650, &unk_1CA981C70);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id iWorkActionsMigration.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id iWorkActionsMigration.init()()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_init);
}

id iWorkActionsMigration.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_1CA2C0C14()
{
  result = qword_1EC443AF0;
  if (!qword_1EC443AF0)
  {
    sub_1CA94A378();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC443AF0);
  }

  return result;
}

id sub_1CA2C0CAC()
{
  v0 = sub_1CA949D18();
  v166 = *(v0 - 8);
  v167 = v0;
  v1 = *(v166 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v165 = v156 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v168 = sub_1CA25B3D0(0, &qword_1EC4419A0, off_1E836DD08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B0, &qword_1CA981320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA981450;
  v4 = MEMORY[0x1E69E6158];
  *(inited + 32) = @"ActionClass";
  *(inited + 40) = 0xD000000000000011;
  *(inited + 48) = 0x80000001CA99E800;
  *(inited + 64) = v4;
  *(inited + 72) = @"ActionKeywords";
  v5 = @"ActionClass";
  v6 = @"ActionKeywords";
  v173 = sub_1CA94C438();
  v8 = v7;
  v9 = sub_1CA94C438();
  v11 = v10;
  v12 = sub_1CA948E58();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v176 = (v14 + 15) & 0xFFFFFFFFFFFFFFF0;
  v177 = v14;
  v15 = v156 - v176;
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v16 = qword_1EDB9F690;
  v174 = qword_1EDB9F690;
  v17 = [qword_1EDB9F690 bundleURL];
  v18 = sub_1CA948BA8();
  v178 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v175 = (v19 + 15) & 0xFFFFFFFFFFFFFFF0;
  v20 = v156 - v175;
  sub_1CA948B68();

  v21 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v22 = sub_1CA2F9F14(v173, v8, v9, v11, 0, 0, v15, v20);
  v23 = sub_1CA25B3D0(0, &qword_1EDB9F6E0, 0x1E696B100);
  v173 = v23;
  *(inited + 80) = v22;
  *(inited + 104) = v23;
  *(inited + 112) = @"Description";
  v172 = sub_1CA25B3D0(0, &unk_1EC441790, off_1E836DD18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D0, &qword_1CA981390);
  v24 = swift_initStackObject();
  v164 = xmmword_1CA981310;
  *(v24 + 16) = xmmword_1CA981310;
  *(v24 + 32) = @"DescriptionSummary";
  v25 = @"Description";
  v26 = @"DescriptionSummary";
  v27 = sub_1CA94C438();
  v170 = v28;
  v29 = sub_1CA94C438();
  v31 = v30;
  v171 = v156;
  MEMORY[0x1EEE9AC00](v29);
  v32 = v156 - v176;
  sub_1CA948D98();
  v33 = [v16 bundleURL];
  MEMORY[0x1EEE9AC00](v33);
  v34 = v156 - v175;
  sub_1CA948B68();

  v35 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v36 = sub_1CA2F9F14(v27, v170, v29, v31, 0, 0, v32, v34);
  *(v24 + 64) = v173;
  *(v24 + 40) = v36;
  type metadata accessor for DescriptionKey(0);
  sub_1CA29CF44(&qword_1EC441830, type metadata accessor for DescriptionKey);
  sub_1CA94C1E8();
  v37 = v172;
  *(inited + 120) = sub_1CA6B3784();
  *(inited + 144) = v37;
  *(inited + 152) = @"IconColor";
  *(inited + 160) = 1702194242;
  *(inited + 168) = 0xE400000000000000;
  v38 = MEMORY[0x1E69E6158];
  *(inited + 184) = MEMORY[0x1E69E6158];
  *(inited + 192) = @"IconSymbol";
  *(inited + 200) = 0xD000000000000040;
  *(inited + 208) = 0x80000001CA99E8A0;
  *(inited + 224) = v38;
  *(inited + 232) = @"Input";
  v171 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445FB0, &qword_1CA97EE10);
  v39 = swift_initStackObject();
  v169 = xmmword_1CA981350;
  *(v39 + 16) = xmmword_1CA981350;
  *(v39 + 32) = 0x656C7069746C754DLL;
  *(v39 + 40) = 0xE800000000000000;
  v40 = MEMORY[0x1E69E6370];
  *(v39 + 48) = 1;
  *(v39 + 72) = v40;
  strcpy((v39 + 80), "ParameterKey");
  *(v39 + 93) = 0;
  *(v39 + 94) = -5120;
  *(v39 + 96) = 0x7475706E494657;
  *(v39 + 104) = 0xE700000000000000;
  *(v39 + 120) = v38;
  *(v39 + 128) = 0x6465726975716552;
  *(v39 + 136) = 0xE800000000000000;
  *(v39 + 144) = 1;
  *(v39 + 168) = v40;
  *(v39 + 176) = 0x7365707954;
  v41 = v40;
  *(v39 + 184) = 0xE500000000000000;
  v170 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
  *(v39 + 216) = v170;
  *(v39 + 192) = &unk_1F49F28E0;
  v42 = @"IconColor";
  v43 = @"IconSymbol";
  v44 = @"Input";
  v45 = sub_1CA94C1E8();
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC447DE0, &qword_1CA9917E0);
  v172 = v46;
  *(inited + 240) = v45;
  *(inited + 264) = v46;
  *(inited + 272) = @"InputPassthrough";
  *(inited + 280) = 0;
  *(inited + 304) = v41;
  *(inited + 312) = @"Name";
  v47 = @"InputPassthrough";
  v48 = @"Name";
  v49 = sub_1CA94C438();
  v162 = v50;
  v51 = sub_1CA94C438();
  v53 = v52;
  *&v163 = v156;
  MEMORY[0x1EEE9AC00](v51);
  v54 = v156 - v176;
  sub_1CA948D98();
  v55 = v174;
  v56 = [v174 bundleURL];
  MEMORY[0x1EEE9AC00](v56);
  v57 = v156 - v175;
  sub_1CA948B68();

  v58 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(inited + 320) = sub_1CA2F9F14(v49, v162, v51, v53, 0, 0, v54, v57);
  v59 = v173;
  *(inited + 344) = v173;
  *(inited + 352) = @"Output";
  v60 = swift_allocObject();
  *(v60 + 16) = v169;
  *(v60 + 32) = 0x75736F6C63736944;
  *(v60 + 40) = 0xEF6C6576654C6572;
  *(v60 + 48) = 0x63696C627550;
  *(v60 + 56) = 0xE600000000000000;
  *(v60 + 72) = MEMORY[0x1E69E6158];
  *(v60 + 80) = 0x656C7069746C754DLL;
  *(v60 + 88) = 0xE800000000000000;
  *(v60 + 96) = 1;
  *(v60 + 120) = MEMORY[0x1E69E6370];
  *(v60 + 128) = 0x614E74757074754FLL;
  *(v60 + 136) = 0xEA0000000000656DLL;
  v61 = @"Output";
  *&v169 = sub_1CA94C438();
  *&v163 = v62;
  v63 = sub_1CA94C438();
  v65 = v64;
  v171 = v156;
  MEMORY[0x1EEE9AC00](v63);
  v66 = v156 - v176;
  sub_1CA948D98();
  v67 = [v55 bundleURL];
  MEMORY[0x1EEE9AC00](v67);
  v68 = v156 - v175;
  sub_1CA948B68();

  v69 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v70 = sub_1CA2F9F14(v169, v163, v63, v65, 0, 0, v66, v68);
  v71 = v170;
  *(v60 + 144) = v70;
  *(v60 + 168) = v59;
  *(v60 + 176) = 0x7365707954;
  *(v60 + 216) = v71;
  *(v60 + 184) = 0xE500000000000000;
  *(v60 + 192) = &unk_1F49F2910;
  v72 = MEMORY[0x1E69E6158];
  *(inited + 360) = sub_1CA94C1E8();
  *(inited + 384) = v172;
  *(inited + 392) = @"Parameters";
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443910, &unk_1CA981A00);
  v172 = swift_allocObject();
  v163 = xmmword_1CA981360;
  *(v172 + 16) = xmmword_1CA981360;
  v171 = sub_1CA25B3D0(0, &qword_1EDB9F710, off_1E836EDC0);
  v162 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443D80, &unk_1CA981BA0);
  v73 = swift_allocObject();
  *(v73 + 16) = xmmword_1CA981380;
  *(v73 + 32) = @"Class";
  *(v73 + 40) = 0xD000000000000016;
  *(v73 + 48) = 0x80000001CA99C4A0;
  *(v73 + 64) = v72;
  *(v73 + 72) = @"DefaultValue";
  *(v73 + 80) = 0x746E6F7A69726F48;
  *(v73 + 88) = 0xEA00000000006C61;
  *(v73 + 104) = v72;
  *(v73 + 112) = @"Items";
  *(v73 + 120) = &unk_1F49F2940;
  *(v73 + 144) = v71;
  *(v73 + 152) = @"ItemDisplayNames";
  *&v169 = swift_allocObject();
  *(v169 + 16) = v163;
  v161 = @"Class";
  v74 = @"Parameters";
  v75 = @"DefaultValue";
  v76 = @"Items";
  v77 = @"ItemDisplayNames";
  v78 = sub_1CA94C438();
  v158 = v79;
  v159 = v78;
  v80 = sub_1CA94C438();
  v157 = v81;
  v160 = v156;
  MEMORY[0x1EEE9AC00](v80);
  v82 = v176;
  sub_1CA948D98();
  v83 = v174;
  v84 = [v174 bundleURL];
  v156[1] = v156;
  MEMORY[0x1EEE9AC00](v84);
  *&v163 = inited;
  v85 = v175;
  sub_1CA948B68();

  v86 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v87 = sub_1CA2F9F14(v159, v158, v80, v157, 0, 0, v156 - v82, v156 - v85);
  *(v169 + 32) = v87;
  v88 = sub_1CA94C438();
  v158 = v89;
  v159 = v88;
  v90 = sub_1CA94C438();
  v92 = v91;
  v160 = v156;
  MEMORY[0x1EEE9AC00](v90);
  sub_1CA948D98();
  v93 = [v83 bundleURL];
  MEMORY[0x1EEE9AC00](v93);
  sub_1CA948B68();

  v94 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v95 = sub_1CA2F9F14(v159, v158, v90, v92, 0, 0, v156 - v82, v156 - v85);
  v96 = v169;
  *(v169 + 40) = v95;
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443830, &qword_1CA981580);
  *(v73 + 160) = v96;
  *(v73 + 184) = v97;
  *(v73 + 192) = @"Key";
  *(v73 + 200) = 0xD000000000000014;
  *(v73 + 208) = 0x80000001CA99E970;
  *(v73 + 224) = MEMORY[0x1E69E6158];
  *(v73 + 232) = @"Label";
  v98 = @"Key";
  v99 = @"Label";
  v159 = v98;
  v158 = v99;
  v100 = sub_1CA94C438();
  v160 = v101;
  v102 = sub_1CA94C438();
  v104 = v103;
  *&v169 = v156;
  MEMORY[0x1EEE9AC00](v102);
  v105 = v156 - v176;
  sub_1CA948D98();
  v106 = [v174 bundleURL];
  MEMORY[0x1EEE9AC00](v106);
  v107 = v156 - v175;
  sub_1CA948B68();

  v108 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v109 = sub_1CA2F9F14(v100, v160, v102, v104, 0, 0, v105, v107);
  *(v73 + 264) = v173;
  *(v73 + 240) = v109;
  _s3__C3KeyVMa_0(0);
  *&v169 = v110;
  v160 = sub_1CA29CF44(&qword_1EDB9F780, _s3__C3KeyVMa_0);
  sub_1CA94C1E8();
  *(v172 + 32) = sub_1CA2F864C();
  v111 = swift_allocObject();
  *(v111 + 16) = xmmword_1CA981370;
  *(v111 + 32) = v161;
  *(v111 + 40) = 0xD000000000000019;
  *(v111 + 48) = 0x80000001CA99B030;
  v112 = MEMORY[0x1E69E6158];
  v113 = v159;
  *(v111 + 64) = MEMORY[0x1E69E6158];
  *(v111 + 72) = v113;
  *(v111 + 80) = 0x7475706E494657;
  *(v111 + 88) = 0xE700000000000000;
  v114 = v158;
  *(v111 + 104) = v112;
  *(v111 + 112) = v114;
  v161 = sub_1CA94C438();
  v159 = v115;
  v116 = sub_1CA94C438();
  v158 = v117;
  v162 = v156;
  MEMORY[0x1EEE9AC00](v116);
  v118 = v176;
  sub_1CA948D98();
  v119 = v174;
  v120 = [v174 bundleURL];
  MEMORY[0x1EEE9AC00](v120);
  v121 = v175;
  sub_1CA948B68();

  v122 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v111 + 120) = sub_1CA2F9F14(v161, v159, v116, v158, 0, 0, v156 - v118, v156 - v121);
  v123 = v173;
  *(v111 + 144) = v173;
  *(v111 + 152) = @"Placeholder";
  v124 = @"Placeholder";
  v161 = sub_1CA94C438();
  v159 = v125;
  v126 = sub_1CA94C438();
  v158 = v127;
  v162 = v156;
  MEMORY[0x1EEE9AC00](v126);
  sub_1CA948D98();
  v128 = [v119 bundleURL];
  MEMORY[0x1EEE9AC00](v128);
  sub_1CA948B68();

  v129 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v111 + 160) = sub_1CA2F9F14(v161, v159, v126, v158, 0, 0, v156 - v118, v156 - v121);
  *(v111 + 184) = v123;
  *(v111 + 192) = @"PreferredTypes";
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443850, &qword_1CA9815F0);
  v130 = swift_allocObject();
  *(v130 + 16) = v164;
  v131 = @"PreferredTypes";
  v132 = v165;
  sub_1CA949CB8();
  v133 = sub_1CA949C68();
  v135 = v134;
  (*(v166 + 8))(v132, v167);
  *(v130 + 32) = v133;
  *(v130 + 40) = v135;
  *(v111 + 224) = v170;
  *(v111 + 200) = v130;
  sub_1CA94C1E8();
  v136 = sub_1CA2F864C();
  v137 = v172;
  *(v172 + 40) = v136;
  v138 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D8, &qword_1CA981398);
  v139 = v163;
  *(v163 + 400) = v137;
  *(v139 + 424) = v138;
  *(v139 + 432) = @"ParameterSummary";
  v140 = @"ParameterSummary";
  v141 = sub_1CA94C438();
  v143 = v142;
  v144 = sub_1CA94C438();
  v146 = v145;
  v173 = v156;
  MEMORY[0x1EEE9AC00](v144);
  v147 = v156 - v176;
  sub_1CA948D98();
  v148 = [v174 bundleURL];
  MEMORY[0x1EEE9AC00](v148);
  v149 = v156 - v175;
  sub_1CA948B68();

  v150 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v151 = sub_1CA2F9F14(v141, v143, v144, v146, 0, 0, v147, v149);
  v152 = [objc_allocWithZone(WFActionParameterSummary) initWithString_];

  v153 = sub_1CA25B3D0(0, &unk_1EC441800, off_1E836DD60);
  *(v139 + 440) = v152;
  *(v139 + 464) = v153;
  *(v139 + 472) = @"ResidentCompatible";
  *(v139 + 504) = MEMORY[0x1E69E6370];
  *(v139 + 480) = 1;
  type metadata accessor for Key(0);
  sub_1CA29CF44(&qword_1EDB9FB10, type metadata accessor for Key);
  v154 = @"ResidentCompatible";
  sub_1CA94C1E8();
  return sub_1CA332510();
}

uint64_t sub_1CA2C2140()
{
  sub_1CA2C2738();

  return sub_1CA94C1E8();
}

uint64_t sub_1CA2C21B0()
{
  v1 = [*(v0 + 16) numberOfItems] > 0;
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_1CA2C2224(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1CA2C22B8;

  return sub_1CA2C219C(a1);
}

uint64_t sub_1CA2C22B8(char a1)
{
  v4 = *(*v2 + 16);
  v8 = *v2;

  v5 = *(v8 + 8);
  if (v1)
  {
    v6 = 0;
  }

  else
  {
    v6 = a1 & 1;
  }

  return v5(v6);
}

uint64_t sub_1CA2C23E8()
{
  v1 = [*(v0 + 16) numberOfItems] == 0;
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_1CA2C245C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1CA2C27A0;

  return sub_1CA2C23D4(a1);
}

unint64_t sub_1CA2C24F0(uint64_t a1)
{
  result = sub_1CA2C2518();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1CA2C2518()
{
  result = qword_1EC443AF8;
  if (!qword_1EC443AF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC443AF8);
  }

  return result;
}

unint64_t sub_1CA2C256C(uint64_t a1)
{
  result = sub_1CA2C2594();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1CA2C2594()
{
  result = qword_1EC443B00;
  if (!qword_1EC443B00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC443B00);
  }

  return result;
}

unint64_t sub_1CA2C25E8()
{
  result = qword_1EC447320;
  if (!qword_1EC447320)
  {
    type metadata accessor for WFContentOperator(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC447320);
  }

  return result;
}

unint64_t sub_1CA2C2640(uint64_t a1)
{
  result = sub_1CA2C2668();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1CA2C2668()
{
  result = qword_1EC443B08;
  if (!qword_1EC443B08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC443B08);
  }

  return result;
}

unint64_t sub_1CA2C26BC(uint64_t a1)
{
  result = sub_1CA2C26E4();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1CA2C26E4()
{
  result = qword_1EC443B10;
  if (!qword_1EC443B10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC443B10);
  }

  return result;
}

unint64_t sub_1CA2C2738()
{
  result = qword_1EC441AA0;
  if (!qword_1EC441AA0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EC441AA0);
  }

  return result;
}

id sub_1CA2C27E0()
{
  v137 = sub_1CA25B3D0(0, &qword_1EC4419A0, off_1E836DD08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B0, &qword_1CA981320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA981340;
  v1 = MEMORY[0x1E69E6158];
  *(inited + 32) = @"ActionClass";
  *(inited + 40) = 0xD000000000000012;
  *(inited + 48) = 0x80000001CA99EA40;
  *(inited + 64) = v1;
  *(inited + 72) = @"ActionKeywords";
  v2 = @"ActionClass";
  v3 = @"ActionKeywords";
  v4 = sub_1CA94C438();
  v6 = v5;
  v7 = sub_1CA94C438();
  v9 = v8;
  v10 = sub_1CA948E58();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v143 = v12;
  v146 = (v12 + 15) & 0xFFFFFFFFFFFFFFF0;
  v13 = &v127 - v146;
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v145 = qword_1EDB9F690;
  v14 = [qword_1EDB9F690 bundleURL];
  v15 = sub_1CA948BA8();
  v144 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v142 = (v16 + 15) & 0xFFFFFFFFFFFFFFF0;
  v17 = &v127 - v142;
  sub_1CA948B68();

  v18 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v19 = sub_1CA2F9F14(v4, v6, v7, v9, 0, 0, v13, v17);
  v20 = sub_1CA25B3D0(0, &qword_1EDB9F6E0, 0x1E696B100);
  v141 = v20;
  *(inited + 80) = v19;
  *(inited + 104) = v20;
  *(inited + 112) = @"AppDefinition";
  v21 = @"AppDefinition";
  v22 = sub_1CA94C1E8();
  *(inited + 144) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B8, &unk_1CA985870);
  *(inited + 120) = v22;
  *(inited + 152) = sub_1CA94C368();
  v23 = MEMORY[0x1E69E6370];
  *(inited + 160) = 1;
  *(inited + 184) = v23;
  *(inited + 192) = @"DeletesInput";
  *(inited + 200) = 1;
  *(inited + 224) = v23;
  *(inited + 232) = @"Description";
  v140 = sub_1CA25B3D0(0, &unk_1EC441790, off_1E836DD18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D0, &qword_1CA981390);
  v24 = swift_initStackObject();
  *(v24 + 16) = xmmword_1CA981310;
  *(v24 + 32) = @"DescriptionSummary";
  v25 = @"DeletesInput";
  v26 = @"Description";
  v27 = @"DescriptionSummary";
  v28 = sub_1CA94C438();
  v138 = v29;
  v30 = sub_1CA94C438();
  v32 = v31;
  v139 = &v127;
  MEMORY[0x1EEE9AC00](v30);
  v33 = &v127 - v146;
  sub_1CA948D98();
  v34 = [v145 bundleURL];
  MEMORY[0x1EEE9AC00](v34);
  v35 = &v127 - v142;
  sub_1CA948B68();

  v36 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v37 = sub_1CA2F9F14(v28, v138, v30, v32, 0, 0, v33, v35);
  *(v24 + 64) = v141;
  *(v24 + 40) = v37;
  type metadata accessor for DescriptionKey(0);
  sub_1CA29CF44(&qword_1EC441830, type metadata accessor for DescriptionKey);
  sub_1CA94C1E8();
  v38 = v140;
  *(inited + 240) = sub_1CA6B3784();
  *(inited + 264) = v38;
  *(inited + 272) = @"IconColor";
  *(inited + 280) = 1953392980;
  *(inited + 288) = 0xE400000000000000;
  v39 = MEMORY[0x1E69E6158];
  *(inited + 304) = MEMORY[0x1E69E6158];
  *(inited + 312) = @"IconSymbol";
  *(inited + 320) = 0x69662E6873617274;
  *(inited + 328) = 0xEA00000000006C6CLL;
  *(inited + 344) = v39;
  *(inited + 352) = @"IconSymbolColor";
  *(inited + 360) = 1702194242;
  *(inited + 368) = 0xE400000000000000;
  *(inited + 384) = v39;
  *(inited + 392) = @"Input";
  v40 = v39;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445FB0, &qword_1CA97EE10);
  v41 = swift_initStackObject();
  *(v41 + 16) = xmmword_1CA981350;
  *(v41 + 32) = 0x656C7069746C754DLL;
  *(v41 + 40) = 0xE800000000000000;
  *(v41 + 48) = 1;
  v42 = MEMORY[0x1E69E6370];
  *(v41 + 72) = MEMORY[0x1E69E6370];
  strcpy((v41 + 80), "ParameterKey");
  *(v41 + 93) = 0;
  *(v41 + 94) = -5120;
  *(v41 + 96) = 0x7475706E494657;
  *(v41 + 104) = 0xE700000000000000;
  *(v41 + 120) = v40;
  *(v41 + 128) = 0x6465726975716552;
  *(v41 + 136) = 0xE800000000000000;
  *(v41 + 144) = 1;
  *(v41 + 168) = v42;
  *(v41 + 176) = 0x7365707954;
  *(v41 + 184) = 0xE500000000000000;
  v140 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
  *(v41 + 216) = v140;
  *(v41 + 192) = &unk_1F49F29C0;
  v43 = @"IconColor";
  v44 = @"IconSymbol";
  v45 = @"IconSymbolColor";
  v46 = @"Input";
  v47 = sub_1CA94C1E8();
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC447DE0, &qword_1CA9917E0);
  *(inited + 400) = v47;
  *(inited + 424) = v48;
  *(inited + 432) = @"Name";
  v49 = @"Name";
  v50 = sub_1CA94C438();
  v52 = v51;
  v53 = sub_1CA94C438();
  v55 = v54;
  v139 = &v127;
  MEMORY[0x1EEE9AC00](v53);
  v56 = &v127 - v146;
  sub_1CA948D98();
  v57 = [v145 bundleURL];
  MEMORY[0x1EEE9AC00](v57);
  v58 = &v127 - v142;
  sub_1CA948B68();

  v59 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(inited + 440) = sub_1CA2F9F14(v50, v52, v53, v55, 0, 0, v56, v58);
  *(inited + 464) = v141;
  *(inited + 472) = @"Parameters";
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443910, &unk_1CA981A00);
  v139 = swift_allocObject();
  *(v139 + 1) = xmmword_1CA981360;
  v138 = sub_1CA25B3D0(0, &qword_1EDB9F710, off_1E836EDC0);
  v134 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443D80, &unk_1CA981BA0);
  v60 = swift_allocObject();
  v133 = xmmword_1CA981370;
  *(v60 + 16) = xmmword_1CA981370;
  *(v60 + 32) = @"Class";
  *(v60 + 40) = 0xD000000000000015;
  *(v60 + 48) = 0x80000001CA99B1E0;
  v61 = MEMORY[0x1E69E6158];
  *(v60 + 64) = MEMORY[0x1E69E6158];
  *(v60 + 72) = @"FilePickerSupportedTypes";
  *(v60 + 80) = &unk_1F49F29F0;
  *(v60 + 104) = v140;
  *(v60 + 112) = @"Key";
  *(v60 + 120) = 0x7475706E494657;
  *(v60 + 128) = 0xE700000000000000;
  *(v60 + 144) = v61;
  *(v60 + 152) = @"Label";
  v62 = @"Class";
  v63 = @"Key";
  v64 = @"Label";
  v132 = v62;
  v135 = v63;
  v136 = v64;
  v65 = @"Parameters";
  v66 = @"FilePickerSupportedTypes";
  v67 = sub_1CA94C438();
  v129 = v68;
  v130 = v67;
  v128 = sub_1CA94C438();
  v70 = v69;
  v131 = &v127;
  MEMORY[0x1EEE9AC00](v128);
  v71 = &v127 - v146;
  sub_1CA948D98();
  v72 = v145;
  v73 = [v145 bundleURL];
  v127 = &v127;
  MEMORY[0x1EEE9AC00](v73);
  v74 = &v127 - v142;
  sub_1CA948B68();

  v75 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v60 + 160) = sub_1CA2F9F14(v130, v129, v128, v70, 0, 0, v71, v74);
  v76 = v141;
  *(v60 + 184) = v141;
  *(v60 + 192) = @"Placeholder";
  v77 = @"Placeholder";
  v78 = sub_1CA94C438();
  v129 = v79;
  v130 = v78;
  v80 = sub_1CA94C438();
  v128 = v81;
  v131 = &v127;
  MEMORY[0x1EEE9AC00](v80);
  v82 = &v127 - v146;
  sub_1CA948D98();
  v83 = [v72 bundleURL];
  MEMORY[0x1EEE9AC00](v83);
  v84 = v142;
  sub_1CA948B68();

  v85 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v86 = sub_1CA2F9F14(v130, v129, v80, v128, 0, 0, v82, &v127 - v84);
  *(v60 + 224) = v76;
  *(v60 + 200) = v86;
  _s3__C3KeyVMa_0(0);
  v131 = v87;
  v130 = sub_1CA29CF44(&qword_1EDB9F780, _s3__C3KeyVMa_0);
  sub_1CA94C1E8();
  v139[4] = sub_1CA2F864C();
  v88 = swift_allocObject();
  *(v88 + 16) = v133;
  *(v88 + 32) = v132;
  *(v88 + 40) = 0xD000000000000011;
  *(v88 + 48) = 0x80000001CA99E620;
  *(v88 + 64) = MEMORY[0x1E69E6158];
  *(v88 + 72) = @"DefaultValue";
  *(v88 + 80) = 0;
  *(v88 + 104) = MEMORY[0x1E69E6370];
  *(v88 + 112) = @"Description";
  v89 = @"DefaultValue";
  v90 = @"Description";
  v91 = sub_1CA94C438();
  v132 = v92;
  *&v133 = v91;
  v93 = sub_1CA94C438();
  v129 = v94;
  v134 = &v127;
  MEMORY[0x1EEE9AC00](v93);
  v95 = &v127 - v146;
  sub_1CA948D98();
  v96 = [v145 bundleURL];
  MEMORY[0x1EEE9AC00](v96);
  sub_1CA948B68();

  v97 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v88 + 120) = sub_1CA2F9F14(v133, v132, v93, v129, 0, 0, v95, &v127 - v84);
  v98 = v135;
  *(v88 + 144) = v141;
  *(v88 + 152) = v98;
  *(v88 + 160) = 0xD000000000000019;
  *(v88 + 168) = 0x80000001CA99EC10;
  v99 = v136;
  *(v88 + 184) = MEMORY[0x1E69E6158];
  *(v88 + 192) = v99;
  v100 = sub_1CA94C438();
  v134 = v101;
  v135 = v100;
  v102 = sub_1CA94C438();
  v104 = v103;
  v136 = &v127;
  MEMORY[0x1EEE9AC00](v102);
  v105 = &v127 - v146;
  sub_1CA948D98();
  v106 = [v145 bundleURL];
  MEMORY[0x1EEE9AC00](v106);
  sub_1CA948B68();

  v107 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v108 = sub_1CA2F9F14(v135, v134, v102, v104, 0, 0, v105, &v127 - v84);
  *(v88 + 224) = v141;
  *(v88 + 200) = v108;
  sub_1CA94C1E8();
  v109 = sub_1CA2F864C();
  v110 = v139;
  v139[5] = v109;
  v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D8, &qword_1CA981398);
  *(inited + 480) = v110;
  *(inited + 504) = v111;
  *(inited + 512) = @"ParameterSummary";
  v112 = @"ParameterSummary";
  v113 = sub_1CA94C438();
  v115 = v114;
  v116 = sub_1CA94C438();
  v118 = v117;
  v141 = &v127;
  MEMORY[0x1EEE9AC00](v116);
  v119 = &v127 - v146;
  sub_1CA948D98();
  v120 = [v145 bundleURL];
  MEMORY[0x1EEE9AC00](v120);
  v121 = &v127 - v142;
  sub_1CA948B68();

  v122 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v123 = sub_1CA2F9F14(v113, v115, v116, v118, 0, 0, v119, v121);
  v124 = [objc_allocWithZone(WFActionParameterSummary) initWithString_];

  *(inited + 544) = sub_1CA25B3D0(0, &unk_1EC441800, off_1E836DD60);
  *(inited + 520) = v124;
  *(inited + 552) = @"RemoteExecuteOnPlatforms";
  *(inited + 584) = v140;
  *(inited + 560) = &unk_1F49F2A20;
  v125 = @"RemoteExecuteOnPlatforms";
  *(inited + 592) = sub_1CA94C368();
  *(inited + 624) = MEMORY[0x1E69E6158];
  *(inited + 600) = 0xD000000000000018;
  *(inited + 608) = 0x80000001CA9933D0;
  type metadata accessor for Key(0);
  sub_1CA29CF44(&qword_1EDB9FB10, type metadata accessor for Key);
  sub_1CA94C1E8();
  return sub_1CA332510();
}

id sub_1CA2C3918()
{
  v241 = sub_1CA25B3D0(0, &qword_1EC4419A0, off_1E836DD08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B0, &qword_1CA981320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA981550;
  v1 = MEMORY[0x1E69E6158];
  *(inited + 32) = @"ActionClass";
  *(inited + 40) = 0xD000000000000013;
  *(inited + 48) = 0x80000001CA99ED00;
  *(inited + 64) = v1;
  *(inited + 72) = @"ActionKeywords";
  v2 = @"ActionClass";
  v3 = @"ActionKeywords";
  v256 = sub_1CA94C438();
  v5 = v4;
  v6 = sub_1CA94C438();
  v8 = v7;
  v9 = sub_1CA948E58();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v259 = (v11 + 15) & 0xFFFFFFFFFFFFFFF0;
  *&v260 = v11;
  v12 = &v226 - v259;
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v13 = qword_1EDB9F690;
  v255 = qword_1EDB9F690;
  v14 = [qword_1EDB9F690 bundleURL];
  v15 = sub_1CA948BA8();
  v257 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v258 = (v16 + 15) & 0xFFFFFFFFFFFFFFF0;
  v17 = &v226 - v258;
  sub_1CA948B68();

  v18 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v19 = sub_1CA2F9F14(v256, v5, v6, v8, 0, 0, v12, v17);
  v20 = sub_1CA25B3D0(0, &qword_1EDB9F6E0, 0x1E696B100);
  v256 = v20;
  *(inited + 80) = v19;
  *(inited + 104) = v20;
  *(inited + 112) = @"Description";
  v254 = sub_1CA25B3D0(0, &unk_1EC441790, off_1E836DD18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D0, &qword_1CA981390);
  v21 = swift_initStackObject();
  v240 = xmmword_1CA981310;
  *(v21 + 16) = xmmword_1CA981310;
  *(v21 + 32) = @"DescriptionSummary";
  v22 = @"Description";
  v23 = @"DescriptionSummary";
  v24 = sub_1CA94C438();
  v251 = v25;
  v26 = sub_1CA94C438();
  v28 = v27;
  v253 = &v226;
  MEMORY[0x1EEE9AC00](v26);
  v29 = &v226 - v259;
  sub_1CA948D98();
  v30 = [v13 bundleURL];
  v31 = inited;
  v32 = v30;
  MEMORY[0x1EEE9AC00](v30);
  v33 = &v226 - v258;
  sub_1CA948B68();

  v34 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v35 = sub_1CA2F9F14(v24, v251, v26, v28, 0, 0, v29, v33);
  *(v21 + 64) = v256;
  *(v21 + 40) = v35;
  type metadata accessor for DescriptionKey(0);
  sub_1CA29CF44(&qword_1EC441830, type metadata accessor for DescriptionKey);
  sub_1CA94C1E8();
  v36 = v254;
  *(v31 + 120) = sub_1CA6B3784();
  *(v31 + 144) = v36;
  *(v31 + 152) = @"Input";
  v238 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445FB0, &qword_1CA97EE10);
  v37 = swift_initStackObject();
  v247 = xmmword_1CA981350;
  *(v37 + 16) = xmmword_1CA981350;
  *(v37 + 32) = 0x656C7069746C754DLL;
  *(v37 + 40) = 0xE800000000000000;
  v38 = MEMORY[0x1E69E6370];
  *(v37 + 48) = 1;
  *(v37 + 72) = v38;
  strcpy((v37 + 80), "ParameterKey");
  v235 = 0x80000001CA99EDA0;
  v246 = 0xD000000000000014;
  *(v37 + 93) = 0;
  *(v37 + 94) = -5120;
  *(v37 + 96) = 0xD000000000000014;
  *(v37 + 104) = 0x80000001CA99EDA0;
  v39 = MEMORY[0x1E69E6158];
  *(v37 + 120) = MEMORY[0x1E69E6158];
  *(v37 + 128) = 0x6465726975716552;
  *(v37 + 136) = 0xE800000000000000;
  *(v37 + 144) = 0;
  *(v37 + 168) = v38;
  *(v37 + 176) = 0x7365707954;
  v40 = v38;
  *(v37 + 184) = 0xE500000000000000;
  v248 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
  *(v37 + 216) = v248;
  *(v37 + 192) = &unk_1F49F2A50;
  v41 = @"Input";
  v42 = sub_1CA94C1E8();
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC447DE0, &qword_1CA9917E0);
  v239 = v43;
  *(v31 + 160) = v42;
  *(v31 + 184) = v43;
  *(v31 + 192) = @"InputPassthrough";
  *(v31 + 224) = v40;
  *(v31 + 200) = 1;
  v44 = @"InputPassthrough";
  v237 = 0xD000000000000010;
  v45 = sub_1CA94C368();
  v252 = v31;
  *(v31 + 232) = v45;
  *(v31 + 240) = 0xD000000000000029;
  *(v31 + 248) = 0x80000001CA99EDC0;
  *(v31 + 264) = v39;
  *(v31 + 272) = @"Name";
  v46 = @"Name";
  v47 = sub_1CA94C438();
  v49 = v48;
  v50 = sub_1CA94C438();
  v52 = v51;
  MEMORY[0x1EEE9AC00](v50);
  v53 = &v226 - v259;
  sub_1CA948D98();
  v54 = [v255 bundleURL];
  MEMORY[0x1EEE9AC00](v54);
  v55 = &v226 - v258;
  sub_1CA948B68();

  v56 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v57 = sub_1CA2F9F14(v47, v49, v50, v52, 0, 0, v53, v55);
  v58 = v252;
  v252[35] = v57;
  v58[38] = v256;
  v58[39] = @"Parameters";
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443910, &unk_1CA981A00);
  v254 = swift_allocObject();
  *(v254 + 16) = xmmword_1CA981560;
  v253 = sub_1CA25B3D0(0, &qword_1EDB9F710, off_1E836EDC0);
  v251 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443D80, &unk_1CA981BA0);
  v59 = swift_allocObject();
  v232 = xmmword_1CA981300;
  *(v59 + 16) = xmmword_1CA981300;
  *(v59 + 32) = @"Class";
  *(v59 + 40) = 0xD00000000000001ALL;
  *(v59 + 48) = 0x80000001CA99B690;
  v60 = MEMORY[0x1E69E6158];
  *(v59 + 64) = MEMORY[0x1E69E6158];
  *(v59 + 72) = @"DefaultValue";
  v61 = @"Class";
  v62 = @"DefaultValue";
  v243 = v61;
  v244 = v62;
  v63 = @"Parameters";
  v64 = sub_1CA94C1E8();
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B8, &unk_1CA985870);
  v236 = v65;
  *(v59 + 80) = v64;
  *(v59 + 104) = v65;
  *(v59 + 112) = @"DisallowedVariableTypes";
  *(v59 + 120) = &unk_1F49F2AC0;
  *(v59 + 144) = v248;
  *(v59 + 152) = @"Hidden";
  *(v59 + 184) = MEMORY[0x1E69E6370];
  *(v59 + 160) = 1;
  v233 = @"Hidden";
  v66 = @"DisallowedVariableTypes";
  *(v59 + 192) = sub_1CA94C368();
  *(v59 + 200) = 0xD000000000000013;
  *(v59 + 208) = 0x80000001CA99EE20;
  *(v59 + 224) = v60;
  *(v59 + 232) = @"Key";
  *(v59 + 240) = 0xD000000000000013;
  *(v59 + 248) = 0x80000001CA99B6D0;
  *(v59 + 264) = v60;
  *(v59 + 272) = @"Label";
  v67 = @"Key";
  v68 = @"Label";
  v69 = v67;
  v70 = v68;
  v231 = v69;
  v242 = v70;
  v249 = sub_1CA94C438();
  v245 = v71;
  v72 = sub_1CA94C438();
  v74 = v73;
  v250 = &v226;
  MEMORY[0x1EEE9AC00](v72);
  v75 = v259;
  sub_1CA948D98();
  v76 = [v255 bundleURL];
  MEMORY[0x1EEE9AC00](v76);
  v77 = &v226 - v258;
  sub_1CA948B68();

  v78 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v59 + 280) = sub_1CA2F9F14(v249, v245, v72, v74, 0, 0, &v226 - v75, v77);
  v79 = v256;
  *(v59 + 304) = v256;
  *(v59 + 312) = @"Prompt";
  v245 = @"Prompt";
  v249 = sub_1CA94C438();
  v234 = v80;
  v81 = sub_1CA94C438();
  v230 = v82;
  v250 = &v226;
  MEMORY[0x1EEE9AC00](v81);
  v83 = &v226 - v75;
  sub_1CA948D98();
  v84 = v255;
  v85 = [v255 bundleURL];
  MEMORY[0x1EEE9AC00](v85);
  v86 = &v226 - v258;
  sub_1CA948B68();

  v87 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v88 = sub_1CA2F9F14(v249, v234, v81, v230, 0, 0, v83, v86);
  *(v59 + 344) = v79;
  *(v59 + 320) = v88;
  _s3__C3KeyVMa_0(0);
  v250 = v89;
  v249 = sub_1CA29CF44(&qword_1EDB9F780, _s3__C3KeyVMa_0);
  sub_1CA94C1E8();
  *(v254 + 32) = sub_1CA2F864C();
  v90 = swift_allocObject();
  *(v90 + 16) = v247;
  v234 = 0xD000000000000011;
  v91 = v243;
  *(v90 + 32) = v243;
  *(v90 + 40) = 0xD000000000000011;
  *(v90 + 48) = 0x80000001CA99E620;
  v92 = MEMORY[0x1E69E6158];
  v93 = v244;
  *(v90 + 64) = MEMORY[0x1E69E6158];
  *(v90 + 72) = v93;
  *(v90 + 80) = 0;
  v94 = v231;
  *(v90 + 104) = MEMORY[0x1E69E6370];
  *(v90 + 112) = v94;
  *(v90 + 120) = 0x6E656857776F6853;
  *(v90 + 128) = 0xEB000000006E7552;
  v95 = v242;
  *(v90 + 144) = v92;
  *(v90 + 152) = v95;
  v230 = v91;
  v243 = v94;
  v244 = v95;
  v96 = sub_1CA94C438();
  v98 = v97;
  v99 = sub_1CA94C438();
  v101 = v100;
  v242 = &v226;
  MEMORY[0x1EEE9AC00](v99);
  v102 = &v226 - v259;
  sub_1CA948D98();
  v103 = [v84 bundleURL];
  MEMORY[0x1EEE9AC00](v103);
  v104 = &v226 - v258;
  sub_1CA948B68();

  v105 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v106 = sub_1CA2F9F14(v96, v98, v99, v101, 0, 0, v102, v104);
  *(v90 + 184) = v256;
  *(v90 + 160) = v106;
  sub_1CA94C1E8();
  *(v254 + 40) = sub_1CA2F864C();
  v107 = swift_allocObject();
  *(v107 + 16) = xmmword_1CA981380;
  *(v107 + 32) = @"AllowsMultipleValues";
  *(v107 + 40) = 1;
  v108 = v230;
  *(v107 + 64) = MEMORY[0x1E69E6370];
  *(v107 + 72) = v108;
  *(v107 + 80) = 0xD00000000000001DLL;
  *(v107 + 88) = 0x80000001CA99EEC0;
  v109 = MEMORY[0x1E69E6158];
  *(v107 + 104) = MEMORY[0x1E69E6158];
  *(v107 + 112) = @"IntentSlotName";
  *(v107 + 120) = 0x6E65697069636572;
  *(v107 + 128) = 0xEA00000000007374;
  v110 = v243;
  v111 = v244;
  *(v107 + 144) = v109;
  *(v107 + 152) = v110;
  *(v107 + 160) = 0xD00000000000001DLL;
  *(v107 + 168) = 0x80000001CA99EEE0;
  *(v107 + 184) = v109;
  *(v107 + 192) = v111;
  v112 = @"IntentSlotName";
  v242 = v108;
  v243 = v110;
  v244 = v111;
  v231 = v112;
  v113 = @"AllowsMultipleValues";
  v114 = sub_1CA94C438();
  v228 = v115;
  v229 = v114;
  v116 = sub_1CA94C438();
  v227 = v117;
  v230 = &v226;
  MEMORY[0x1EEE9AC00](v116);
  v118 = &v226 - v259;
  sub_1CA948D98();
  v119 = v255;
  v120 = [v255 bundleURL];
  MEMORY[0x1EEE9AC00](v120);
  v121 = v258;
  sub_1CA948B68();

  v122 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v107 + 200) = sub_1CA2F9F14(v229, v228, v116, v227, 0, 0, v118, &v226 - v121);
  v123 = v256;
  v124 = v245;
  *(v107 + 224) = v256;
  *(v107 + 232) = v124;
  v125 = sub_1CA94C438();
  v228 = v126;
  v229 = v125;
  v127 = sub_1CA94C438();
  v227 = v128;
  v230 = &v226;
  MEMORY[0x1EEE9AC00](v127);
  v129 = &v226 - v259;
  sub_1CA948D98();
  v130 = [v119 bundleURL];
  MEMORY[0x1EEE9AC00](v130);
  sub_1CA948B68();

  v131 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v132 = sub_1CA2F9F14(v229, v228, v127, v227, 0, 0, v129, &v226 - v121);
  *(v107 + 264) = v123;
  *(v107 + 240) = v132;
  sub_1CA94C1E8();
  *(v254 + 48) = sub_1CA2F864C();
  v133 = swift_allocObject();
  *(v133 + 16) = v232;
  *&v232 = 0x80000001CA99B500;
  v134 = v246;
  *(v133 + 32) = v242;
  *(v133 + 40) = v134;
  *(v133 + 48) = 0x80000001CA99B500;
  v135 = MEMORY[0x1E69E6158];
  v136 = v231;
  *(v133 + 64) = MEMORY[0x1E69E6158];
  *(v133 + 72) = v136;
  *(v133 + 80) = 0x746E65746E6F63;
  *(v133 + 88) = 0xE700000000000000;
  v137 = v243;
  *(v133 + 104) = v135;
  *(v133 + 112) = v137;
  v138 = v235;
  *(v133 + 120) = v134;
  *(v133 + 128) = v138;
  v139 = v244;
  *(v133 + 144) = v135;
  *(v133 + 152) = v139;
  v140 = sub_1CA94C438();
  v230 = v141;
  v231 = v140;
  v142 = sub_1CA94C438();
  v229 = v143;
  v235 = &v226;
  MEMORY[0x1EEE9AC00](v142);
  v144 = v259;
  sub_1CA948D98();
  v145 = v255;
  v146 = [v255 bundleURL];
  MEMORY[0x1EEE9AC00](v146);
  v147 = &v226 - v258;
  sub_1CA948B68();

  v148 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v133 + 160) = sub_1CA2F9F14(v231, v230, v142, v229, 0, 0, &v226 - v144, v147);
  v149 = v256;
  *(v133 + 184) = v256;
  *(v133 + 192) = @"Multiline";
  *(v133 + 200) = 1;
  *(v133 + 224) = MEMORY[0x1E69E6370];
  *(v133 + 232) = @"Placeholder";
  v150 = @"Multiline";
  v151 = @"Placeholder";
  v152 = sub_1CA94C438();
  v230 = v153;
  v231 = v152;
  v154 = sub_1CA94C438();
  v229 = v155;
  v235 = &v226;
  MEMORY[0x1EEE9AC00](v154);
  v156 = &v226 - v144;
  sub_1CA948D98();
  v157 = [v145 bundleURL];
  MEMORY[0x1EEE9AC00](v157);
  v158 = v258;
  sub_1CA948B68();

  v159 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v160 = sub_1CA2F9F14(v231, v230, v154, v229, 0, 0, v156, &v226 - v158);
  *(v133 + 264) = v149;
  *(v133 + 240) = v160;
  v235 = 0xD000000000000017;
  *(v133 + 272) = sub_1CA94C368();
  *(v133 + 280) = 1;
  v161 = v245;
  *(v133 + 304) = MEMORY[0x1E69E6370];
  *(v133 + 312) = v161;
  v162 = sub_1CA94C438();
  v230 = v163;
  v231 = v162;
  v164 = sub_1CA94C438();
  v166 = v165;
  v245 = &v226;
  MEMORY[0x1EEE9AC00](v164);
  v167 = &v226 - v259;
  sub_1CA948D98();
  v168 = [v255 bundleURL];
  MEMORY[0x1EEE9AC00](v168);
  sub_1CA948B68();

  v169 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v170 = sub_1CA2F9F14(v231, v230, v164, v166, 0, 0, v167, &v226 - v158);
  *(v133 + 344) = v256;
  *(v133 + 320) = v170;
  sub_1CA94C1E8();
  *(v254 + 56) = sub_1CA2F864C();
  v171 = swift_allocObject();
  *(v171 + 16) = v247;
  v172 = v246;
  *(v171 + 32) = v242;
  *(v171 + 40) = v172;
  *(v171 + 48) = v232;
  v173 = MEMORY[0x1E69E6158];
  v174 = v233;
  *(v171 + 64) = MEMORY[0x1E69E6158];
  *(v171 + 72) = v174;
  *(v171 + 80) = 1;
  v175 = v243;
  *(v171 + 104) = MEMORY[0x1E69E6370];
  *(v171 + 112) = v175;
  *(v171 + 120) = 0xD000000000000013;
  *(v171 + 128) = 0x80000001CA99F010;
  v176 = v244;
  *(v171 + 144) = v173;
  *(v171 + 152) = v176;
  v177 = sub_1CA94C438();
  v179 = v178;
  v180 = sub_1CA94C438();
  v182 = v181;
  v251 = &v226;
  MEMORY[0x1EEE9AC00](v180);
  v183 = &v226 - v259;
  sub_1CA948D98();
  v184 = [v255 bundleURL];
  MEMORY[0x1EEE9AC00](v184);
  v185 = &v226 - v258;
  sub_1CA948B68();

  v186 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v187 = sub_1CA2F9F14(v177, v179, v180, v182, 0, 0, v183, v185);
  *(v171 + 184) = v256;
  *(v171 + 160) = v187;
  sub_1CA94C1E8();
  v188 = sub_1CA2F864C();
  v189 = v254;
  *(v254 + 64) = v188;
  v190 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D8, &qword_1CA981398);
  v191 = v252;
  v252[40] = v189;
  v191[43] = v190;
  v191[44] = @"ParameterSummary";
  v192 = @"ParameterSummary";
  v193 = sub_1CA94C438();
  v195 = v194;
  v196 = sub_1CA94C438();
  v198 = v197;
  MEMORY[0x1EEE9AC00](v196);
  v199 = &v226 - v259;
  sub_1CA948D98();
  v200 = [v255 bundleURL];
  MEMORY[0x1EEE9AC00](v200);
  v201 = &v226 - v258;
  sub_1CA948B68();

  v202 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v203 = sub_1CA2F9F14(v193, v195, v196, v198, 0, 0, v199, v201);
  v204 = [objc_allocWithZone(WFActionParameterSummary) initWithString_];

  v205 = sub_1CA25B3D0(0, &unk_1EC441800, off_1E836DD60);
  v206 = v252;
  v252[45] = v204;
  v206[48] = v205;
  v206[49] = @"RateLimit";
  v207 = @"RateLimit";
  v208 = MEMORY[0x1E69E6158];
  v209 = sub_1CA94C1E8();
  v210 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443B18, "~R\t");
  v206[50] = v209;
  v206[53] = v210;
  v206[54] = @"RequiredResources";
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4438F0, &unk_1CA9819E0);
  v211 = swift_allocObject();
  v260 = xmmword_1CA97EDF0;
  *(v211 + 16) = xmmword_1CA97EDF0;
  v212 = swift_initStackObject();
  *(v212 + 16) = v260;
  *(v212 + 32) = v234;
  *(v212 + 40) = 0x80000001CA99B240;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437E0, &qword_1CA9813D0);
  v213 = swift_allocObject();
  *(v213 + 16) = v240;
  v214 = swift_allocObject();
  *(v214 + 16) = xmmword_1CA9813C0;
  strcpy((v214 + 32), "WFParameterKey");
  *(v214 + 47) = -18;
  *(v214 + 48) = 0x6E656857776F6853;
  *(v214 + 56) = 0xEB000000006E7552;
  v215 = v237;
  *(v214 + 72) = v208;
  *(v214 + 80) = v215;
  *(v214 + 88) = 0x80000001CA993570;
  *(v214 + 96) = 1;
  *(v214 + 120) = MEMORY[0x1E69E6370];
  *(v214 + 128) = 0x72756F7365524657;
  *(v214 + 168) = v208;
  *(v214 + 136) = 0xEF7373616C436563;
  *(v214 + 144) = 0xD00000000000001BLL;
  *(v214 + 152) = 0x80000001CA993590;
  v216 = @"RequiredResources";
  *(v213 + 32) = sub_1CA94C1E8();
  v217 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437E8, &qword_1CA9813D8);
  *(v212 + 48) = v213;
  *(v212 + 72) = v217;
  *(v212 + 80) = 0x72756F7365524657;
  *(v212 + 120) = v208;
  *(v212 + 88) = 0xEF7373616C436563;
  *(v212 + 96) = 0xD000000000000019;
  *(v212 + 104) = 0x80000001CA9932D0;
  *(v211 + 32) = sub_1CA94C1E8();
  *(v211 + 88) = v208;
  v218 = v235;
  *(v211 + 56) = v239;
  *(v211 + 64) = v218;
  *(v211 + 72) = 0x80000001CA9943F0;
  v219 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443838, &qword_1CA981588);
  v220 = v252;
  v252[55] = v211;
  v220[58] = v219;
  v220[59] = @"SuggestedAsInitialAction";
  *(v220 + 480) = 1;
  v220[63] = MEMORY[0x1E69E6370];
  v220[64] = @"UserInterfaceClasses";
  v221 = @"SuggestedAsInitialAction";
  v222 = @"UserInterfaceClasses";
  v223 = sub_1CA94C1E8();
  v220[68] = v236;
  v220[65] = v223;
  v220[69] = @"UserInterfaces";
  v220[73] = v248;
  v220[70] = &unk_1F49F2BE8;
  type metadata accessor for Key(0);
  sub_1CA29CF44(&qword_1EDB9FB10, type metadata accessor for Key);
  v224 = @"UserInterfaces";
  sub_1CA94C1E8();
  return sub_1CA332510();
}

id sub_1CA2C5534()
{
  v102 = sub_1CA25B3D0(0, &qword_1EC4419A0, off_1E836DD08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B0, &qword_1CA981320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA981420;
  v1 = MEMORY[0x1E69E6158];
  *(inited + 32) = @"ActionClass";
  *(inited + 40) = 0xD000000000000013;
  *(inited + 48) = 0x80000001CA99F120;
  *(inited + 64) = v1;
  *(inited + 72) = @"ActionKeywords";
  v2 = @"ActionClass";
  v3 = @"ActionKeywords";
  v4 = sub_1CA94C438();
  v6 = v5;
  v7 = sub_1CA94C438();
  v9 = v8;
  v10 = sub_1CA948E58();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v107 = (v12 + 15) & 0xFFFFFFFFFFFFFFF0;
  v108 = v12;
  v13 = &v94 - v107;
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v106 = qword_1EDB9F690;
  v14 = [qword_1EDB9F690 bundleURL];
  v15 = sub_1CA948BA8();
  v104 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v105 = (v16 + 15) & 0xFFFFFFFFFFFFFFF0;
  v17 = &v94 - v105;
  sub_1CA948B68();

  v18 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v19 = sub_1CA2F9F14(v4, v6, v7, v9, 0, 0, v13, v17);
  v20 = sub_1CA25B3D0(0, &qword_1EDB9F6E0, 0x1E696B100);
  v103 = v20;
  *(inited + 80) = v19;
  *(inited + 104) = v20;
  *(inited + 112) = @"AppDefinition";
  v21 = @"AppDefinition";
  v22 = sub_1CA94C1E8();
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B8, &unk_1CA985870);
  *(inited + 120) = v22;
  *(inited + 144) = v23;
  *(inited + 152) = @"Description";
  v101 = sub_1CA25B3D0(0, &unk_1EC441790, off_1E836DD18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D0, &qword_1CA981390);
  v24 = swift_initStackObject();
  *(v24 + 16) = xmmword_1CA981310;
  *(v24 + 32) = @"DescriptionSummary";
  v25 = @"Description";
  v26 = @"DescriptionSummary";
  v27 = sub_1CA94C438();
  *&v99 = v28;
  v29 = sub_1CA94C438();
  v31 = v30;
  v100 = &v94;
  MEMORY[0x1EEE9AC00](v29);
  v32 = &v94 - v107;
  sub_1CA948D98();
  v33 = [v106 bundleURL];
  MEMORY[0x1EEE9AC00](v33);
  v34 = &v94 - v105;
  sub_1CA948B68();

  v35 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v36 = sub_1CA2F9F14(v27, v99, v29, v31, 0, 0, v32, v34);
  *(v24 + 64) = v103;
  *(v24 + 40) = v36;
  type metadata accessor for DescriptionKey(0);
  sub_1CA29CF44(&qword_1EC441830, type metadata accessor for DescriptionKey);
  sub_1CA94C1E8();
  v37 = v101;
  *(inited + 160) = sub_1CA6B3784();
  *(inited + 184) = v37;
  *(inited + 192) = @"Input";
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445FB0, &qword_1CA97EE10);
  v38 = swift_initStackObject();
  v98 = xmmword_1CA981350;
  *(v38 + 16) = xmmword_1CA981350;
  *(v38 + 32) = 0x656C7069746C754DLL;
  *(v38 + 40) = 0xE800000000000000;
  v39 = MEMORY[0x1E69E6370];
  *(v38 + 48) = 1;
  *(v38 + 72) = v39;
  strcpy((v38 + 80), "ParameterKey");
  *(v38 + 93) = 0;
  *(v38 + 94) = -5120;
  *(v38 + 96) = 0x656C69464657;
  *(v38 + 104) = 0xE600000000000000;
  *(v38 + 120) = MEMORY[0x1E69E6158];
  *(v38 + 128) = 0x6465726975716552;
  *(v38 + 136) = 0xE800000000000000;
  *(v38 + 144) = 1;
  *(v38 + 168) = v39;
  *(v38 + 176) = 0x7365707954;
  *(v38 + 184) = 0xE500000000000000;
  v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
  *(v38 + 216) = v101;
  *(v38 + 192) = &unk_1F49F2C78;
  v40 = @"Input";
  v41 = sub_1CA94C1E8();
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC447DE0, &qword_1CA9917E0);
  *(inited + 200) = v41;
  *(inited + 224) = v42;
  *(inited + 232) = @"Name";
  v43 = @"Name";
  v44 = sub_1CA94C438();
  v46 = v45;
  v47 = sub_1CA94C438();
  v49 = v48;
  v100 = &v94;
  MEMORY[0x1EEE9AC00](v47);
  v50 = &v94 - v107;
  sub_1CA948D98();
  v51 = [v106 bundleURL];
  MEMORY[0x1EEE9AC00](v51);
  v52 = &v94 - v105;
  sub_1CA948B68();

  v53 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(inited + 240) = sub_1CA2F9F14(v44, v46, v47, v49, 0, 0, v50, v52);
  *(inited + 264) = v103;
  *(inited + 272) = @"Parameters";
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443910, &unk_1CA981A00);
  v97 = swift_allocObject();
  v99 = xmmword_1CA9813B0;
  *(v97 + 16) = xmmword_1CA9813B0;
  v96 = sub_1CA25B3D0(0, &qword_1EDB9F710, off_1E836EDC0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443D80, &unk_1CA981BA0);
  v54 = swift_initStackObject();
  *(v54 + 16) = v98;
  *(v54 + 32) = @"AllowsMultipleValues";
  *(v54 + 40) = 1;
  *(v54 + 64) = MEMORY[0x1E69E6370];
  *(v54 + 72) = @"Class";
  *(v54 + 80) = 0xD000000000000015;
  *(v54 + 88) = 0x80000001CA99B1E0;
  v55 = MEMORY[0x1E69E6158];
  *(v54 + 104) = MEMORY[0x1E69E6158];
  *(v54 + 112) = @"Key";
  *(v54 + 120) = 0x656C69464657;
  *(v54 + 128) = 0xE600000000000000;
  *(v54 + 144) = v55;
  *(v54 + 152) = @"Label";
  v56 = @"Parameters";
  v57 = @"AllowsMultipleValues";
  v58 = @"Class";
  v59 = @"Key";
  v60 = @"Label";
  v61 = sub_1CA94C438();
  v95 = v62;
  v63 = sub_1CA94C438();
  v65 = v64;
  *&v98 = &v94;
  MEMORY[0x1EEE9AC00](v63);
  v66 = &v94 - v107;
  sub_1CA948D98();
  v67 = [v106 bundleURL];
  MEMORY[0x1EEE9AC00](v67);
  v68 = &v94 - v105;
  sub_1CA948B68();

  v69 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v70 = sub_1CA2F9F14(v61, v95, v63, v65, 0, 0, v66, v68);
  *(v54 + 184) = v103;
  *(v54 + 160) = v70;
  _s3__C3KeyVMa_0(0);
  sub_1CA29CF44(&qword_1EDB9F780, _s3__C3KeyVMa_0);
  sub_1CA94C1E8();
  v71 = sub_1CA2F864C();
  v72 = v97;
  *(v97 + 32) = v71;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D8, &qword_1CA981398);
  *(inited + 280) = v72;
  *(inited + 304) = v73;
  *(inited + 312) = @"ParameterSummary";
  v74 = @"ParameterSummary";
  v75 = sub_1CA94C438();
  v77 = v76;
  v78 = sub_1CA94C438();
  v80 = v79;
  v103 = &v94;
  MEMORY[0x1EEE9AC00](v78);
  v81 = &v94 - v107;
  sub_1CA948D98();
  v82 = [v106 bundleURL];
  MEMORY[0x1EEE9AC00](v82);
  v83 = &v94 - v105;
  sub_1CA948B68();

  v84 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v85 = sub_1CA2F9F14(v75, v77, v78, v80, 0, 0, v81, v83);
  v86 = [objc_allocWithZone(WFActionParameterSummary) initWithString_];

  v87 = sub_1CA25B3D0(0, &unk_1EC441800, off_1E836DD60);
  *(inited + 320) = v86;
  *(inited + 344) = v87;
  *(inited + 352) = @"RemoteExecuteOnPlatforms";
  *(inited + 360) = &unk_1F49F2CA8;
  *(inited + 384) = v101;
  *(inited + 392) = @"RequiredResources";
  v88 = swift_allocObject();
  *(v88 + 16) = v99;
  v109 = 2;
  v110 = 0;
  v89 = objc_allocWithZone(type metadata accessor for WFDeviceIdiomResource());
  v90 = @"RemoteExecuteOnPlatforms";
  v91 = @"RequiredResources";
  WFDeviceIdiomResource.init(requirement:)(&v109);
  *(v88 + 32) = v92;
  *(inited + 424) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4438B0, &qword_1CA981658);
  *(inited + 400) = v88;
  type metadata accessor for Key(0);
  sub_1CA29CF44(&qword_1EDB9FB10, type metadata accessor for Key);
  sub_1CA94C1E8();
  return sub_1CA332510();
}

uint64_t sub_1CA2C6164()
{
  if (sub_1CA94ADB8())
  {
    v0 = *(type metadata accessor for DatabaseTypeDefinitionProvider.CacheKey(0) + 20);

    JUMPOUT(0x1CCA9FFB0);
  }

  return 0;
}

uint64_t sub_1CA2C61C4()
{
  OUTLINED_FUNCTION_30();
  sub_1CA94ADC8();
  OUTLINED_FUNCTION_11_6();
  sub_1CA2C814C(v0, v1);
  sub_1CA94C298();
  v2 = *(type metadata accessor for DatabaseTypeDefinitionProvider.CacheKey(0) + 20);
  sub_1CA94B168();
  OUTLINED_FUNCTION_10_2();
  sub_1CA2C814C(v3, v4);
  return sub_1CA94C298();
}

uint64_t sub_1CA2C6278()
{
  sub_1CA94D918();
  sub_1CA94ADC8();
  sub_1CA2C814C(&qword_1EC441D00, MEMORY[0x1E69DB0B8]);
  sub_1CA94C298();
  v0 = *(type metadata accessor for DatabaseTypeDefinitionProvider.CacheKey(0) + 20);
  sub_1CA94B168();
  sub_1CA2C814C(&qword_1EC443B20, MEMORY[0x1E69DB2F0]);
  sub_1CA94C298();
  return sub_1CA94D968();
}

uint64_t sub_1CA2C6370(uint64_t a1, uint64_t a2)
{
  sub_1CA94D918();
  sub_1CA94ADC8();
  OUTLINED_FUNCTION_11_6();
  sub_1CA2C814C(v3, v4);
  sub_1CA94C298();
  v5 = *(a2 + 20);
  sub_1CA94B168();
  OUTLINED_FUNCTION_10_2();
  sub_1CA2C814C(v6, v7);
  sub_1CA94C298();
  return sub_1CA94D968();
}

uint64_t sub_1CA2C643C()
{
  sub_1CA94A138();
  sub_1CA94A118();
  type metadata accessor for DatabaseTypeDefinitionProvider();
  v0 = swift_allocObject();

  v2 = sub_1CA2C9498(v1, v0);

  qword_1EC4420F8 = v2;
  return result;
}

uint64_t static DatabaseTypeDefinitionProvider.shared.getter()
{
  if (qword_1EC4420F0 != -1)
  {
    swift_once();
  }
}

uint64_t sub_1CA2C6500(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443B48, &qword_1CA981F78);
  v3[5] = v4;
  v5 = *(v4 - 8);
  v3[6] = v5;
  v6 = *(v5 + 64) + 15;
  v3[7] = swift_task_alloc();
  v7 = sub_1CA94B298();
  v3[8] = v7;
  v8 = *(v7 - 8);
  v3[9] = v8;
  v9 = *(v8 + 64) + 15;
  v3[10] = swift_task_alloc();
  v3[11] = swift_task_alloc();
  v10 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443B50, &qword_1CA981F80) - 8) + 64) + 15;
  v3[12] = swift_task_alloc();
  v3[13] = swift_task_alloc();
  v11 = type metadata accessor for DatabaseTypeDefinitionProvider.CacheKey(0);
  v3[14] = v11;
  v12 = *(*(v11 - 8) + 64) + 15;
  v3[15] = swift_task_alloc();
  v13 = sub_1CA949F78();
  v3[16] = v13;
  v14 = *(v13 - 8);
  v3[17] = v14;
  v15 = *(v14 + 64) + 15;
  v3[18] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1CA2C6708, 0, 0);
}

uint64_t sub_1CA2C6708()
{
  v26 = v0;
  v1 = v0[18];
  v2 = v0[15];
  v3 = v0[3];
  v4 = *MEMORY[0x1E69E10F0];
  sub_1CA949C58();
  sub_1CA2C9194(v3, v2);
  v5 = sub_1CA949F68();
  v6 = sub_1CA94CBF8();
  v7 = os_log_type_enabled(v5, v6);
  v8 = v0[17];
  v9 = v0[18];
  v10 = v0[15];
  v11 = v0[16];
  if (v7)
  {
    v24 = v0[18];
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v25 = v13;
    *v12 = 136315138;
    v14 = sub_1CA94ADA8();
    v16 = v15;
    sub_1CA2C7D54(v10);
    v17 = sub_1CA26B54C(v14, v16, &v25);

    *(v12 + 4) = v17;
    _os_log_impl(&dword_1CA256000, v5, v6, "Fetching definition for type: %s", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v13);
    MEMORY[0x1CCAA4BF0](v13, -1, -1);
    MEMORY[0x1CCAA4BF0](v12, -1, -1);

    (*(v8 + 8))(v24, v11);
  }

  else
  {

    sub_1CA2C7D54(v10);
    (*(v8 + 8))(v9, v11);
  }

  v18 = v0[4];
  v19 = v18[3];
  v20 = v18[4];
  __swift_project_boxed_opaque_existential_1(v18, v19);
  v21 = *(MEMORY[0x1E69DAAF8] + 4);
  v22 = swift_task_alloc();
  v0[19] = v22;
  *v22 = v0;
  v22[1] = sub_1CA2C6924;

  return MEMORY[0x1EEE4AAA0](v19, v20);
}

uint64_t sub_1CA2C6924()
{
  OUTLINED_FUNCTION_3();
  v3 = v2;
  OUTLINED_FUNCTION_2_2();
  *v4 = v3;
  v6 = *(v5 + 152);
  *v4 = *v1;
  v3[20] = v7;
  v3[21] = v0;

  if (v0)
  {
    v8 = v3[18];
    v9 = v3[15];
    v11 = v3[12];
    v10 = v3[13];
    v13 = v3[10];
    v12 = v3[11];
    v14 = v3[7];

    OUTLINED_FUNCTION_5();

    return v15();
  }

  else
  {

    return MEMORY[0x1EEE6DFA0](sub_1CA2C6AB4, 0, 0);
  }
}

uint64_t sub_1CA2C6AB4()
{
  v52 = v0[20];
  v53 = v0[21];
  v1 = v0[10];
  v55 = v0[11];
  v2 = v0[9];
  v50 = v0[8];
  v51 = v0[13];
  v3 = v0[6];
  v4 = v0[7];
  v5 = v0[5];
  v6 = v0[3];
  v49 = *(v0[14] + 20);
  sub_1CA94B268();
  swift_getKeyPath();
  v7 = sub_1CA94ADC8();
  v8 = swift_allocBox();
  v48 = *(*(v7 - 8) + 16);
  v48(v9, v6, v7);
  *v4 = v8;
  (*(v3 + 104))(v4, *MEMORY[0x1E69DA9C0], v5);
  sub_1CA2C814C(&qword_1EC443B58, MEMORY[0x1E69DB360]);
  sub_1CA25C3BC(&qword_1EC443B60, &qword_1EC443B48, &qword_1CA981F78);
  sub_1CA94A838();

  (*(v3 + 8))(v4, v5);
  v10 = *(v2 + 8);
  v10(v1, v50);
  v11 = sub_1CA948E58();
  OUTLINED_FUNCTION_1_0(v11);
  v13 = v12;
  v15 = *(v14 + 64);
  v16 = OUTLINED_FUNCTION_45();
  sub_1CA948D98();
  sub_1CA94A6F8();
  if (v53)
  {
    v17 = v0[20];
    v18 = v0[11];
    v19 = v0[8];

    (*(v13 + 8))(v16, v11);
    v10(v18, v19);

LABEL_5:
    v32 = v0[18];
    v33 = v0[15];
    v35 = v0[12];
    v34 = v0[13];
    v37 = v0[10];
    v36 = v0[11];
    v38 = v0[7];

    OUTLINED_FUNCTION_5();
    goto LABEL_6;
  }

  v20 = v0[12];
  v54 = v7;
  v56 = v0[13];
  v21 = v0[11];
  v22 = v0[8];
  (*(v13 + 8))(v16, v11);
  v10(v21, v22);

  sub_1CA2C967C(v56, v20);
  v23 = sub_1CA94AD48();
  if (__swift_getEnumTagSinglePayload(v20, 1, v23) == 1)
  {
    v24 = v0[20];
    v25 = v0[13];
    v26 = v0[3];
    sub_1CA2C96EC(v0[12]);
    type metadata accessor for DatabaseTypeDefinitionProvider.Error(0);
    sub_1CA2C814C(&qword_1EC443B68, type metadata accessor for DatabaseTypeDefinitionProvider.Error);
    swift_allocError();
    v28 = v27;
    v29 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443B70, &qword_1CA981FB8) + 48);
    v48(v28, v26, v54);
    v30 = sub_1CA94B168();
    OUTLINED_FUNCTION_0_1(v30);
    (*(v31 + 16))(v28 + v29, v6 + v49);
    swift_willThrow();

    sub_1CA2C96EC(v25);
    goto LABEL_5;
  }

  v41 = v0[20];
  v42 = v0[18];
  v43 = v0[15];
  v44 = v0[12];
  v46 = v0[10];
  v45 = v0[11];
  v57 = v0[7];
  v47 = v0[2];
  sub_1CA2C96EC(v0[13]);

  (*(*(v23 - 8) + 32))(v47, v44, v23);

  OUTLINED_FUNCTION_3_6();
LABEL_6:

  return v39();
}

uint64_t sub_1CA2C6FB0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443B48, &qword_1CA981F78);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2);
  (*(v5 + 16))(&v7 - v4, a1);
  return sub_1CA94B288();
}

uint64_t sub_1CA2C7080()
{
  OUTLINED_FUNCTION_0();
  v1[4] = v2;
  v1[5] = v0;
  v1[2] = v3;
  v1[3] = v4;
  v5 = type metadata accessor for DatabaseTypeDefinitionProvider.CacheKey(0);
  v1[6] = v5;
  OUTLINED_FUNCTION_18_0(v5);
  v7 = *(v6 + 64);
  v1[7] = OUTLINED_FUNCTION_45();

  return MEMORY[0x1EEE6DFA0](sub_1CA2C7108, v0, 0);
}

uint64_t sub_1CA2C7108()
{
  OUTLINED_FUNCTION_6();
  v2 = v0[6];
  v1 = v0[7];
  v3 = v0[4];
  v4 = v0[5];
  v5 = v0[3];
  v6 = sub_1CA94ADC8();
  OUTLINED_FUNCTION_0_1(v6);
  (*(v7 + 16))(v1, v5);
  v8 = *(v2 + 20);
  v9 = sub_1CA94B168();
  OUTLINED_FUNCTION_0_1(v9);
  (*(v10 + 16))(v1 + v8, v3);
  v11 = *(v4 + 112);
  v12 = swift_task_alloc();
  v0[8] = v12;
  *v12 = v0;
  v12[1] = sub_1CA2C7234;
  v13 = v0[7];
  v14 = v0[2];

  return sub_1CA2C7650(v14, v13);
}

uint64_t sub_1CA2C7234()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_29_1();
  OUTLINED_FUNCTION_2_2();
  *v4 = v3;
  v5 = *(v1 + 64);
  *v4 = *v2;
  *(v3 + 72) = v0;

  OUTLINED_FUNCTION_25_2();
  v7 = *(v6 + 40);
  OUTLINED_FUNCTION_15_1();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_1CA2C7348()
{
  OUTLINED_FUNCTION_0();
  sub_1CA2C7D54(*(v0 + 56));

  OUTLINED_FUNCTION_3_6();

  return v1();
}

uint64_t sub_1CA2C73AC()
{
  OUTLINED_FUNCTION_0();
  sub_1CA2C7D54(*(v0 + 56));

  OUTLINED_FUNCTION_5();
  v2 = *(v0 + 72);

  return v1();
}

uint64_t DatabaseTypeDefinitionProvider.deinit()
{
  v1 = *(v0 + 112);

  __swift_destroy_boxed_opaque_existential_0((v0 + 120));
  swift_defaultActor_destroy();
  return v0;
}

uint64_t DatabaseTypeDefinitionProvider.__deallocating_deinit()
{
  DatabaseTypeDefinitionProvider.deinit();

  return MEMORY[0x1EEE6DEF0](v0);
}

uint64_t sub_1CA2C74B8()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1CA2C756C;

  return sub_1CA2C7080();
}

uint64_t sub_1CA2C756C()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  v2 = *(v1 + 16);
  v3 = *v0;
  OUTLINED_FUNCTION_1();
  *v4 = v3;

  OUTLINED_FUNCTION_5();

  return v5();
}

uint64_t sub_1CA2C7650(uint64_t a1, uint64_t a2)
{
  v3[9] = a2;
  v3[10] = v2;
  v3[8] = a1;
  v4 = *(type metadata accessor for DatabaseTypeDefinitionProvider.CacheKey(0) - 8);
  v3[11] = v4;
  v3[12] = *(v4 + 64);
  v3[13] = swift_task_alloc();
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443880, &qword_1CA982FB0) - 8) + 64) + 15;
  v3[14] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1CA2C7750, v2, 0);
}

uint64_t sub_1CA2C7750(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_24_0();
  OUTLINED_FUNCTION_39_1();
  OUTLINED_FUNCTION_33_1();
  v16 = *(v15 + 112);
  sub_1CA94C218();
  v17 = sub_1CA3117E8(v12, v16);
  v13[15] = v17;

  if (v17)
  {
    v18 = *(MEMORY[0x1E69E86A8] + 4);
    v19 = swift_task_alloc();
    v13[16] = v19;
    sub_1CA94AD48();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443898, &unk_1CA9855B0);
    OUTLINED_FUNCTION_34_2();
    *v19 = v20;
    v19[1] = sub_1CA2C7984;
  }

  else
  {
    v22 = OUTLINED_FUNCTION_43_2();
    OUTLINED_FUNCTION_42(v22);
    sub_1CA2C9194(v16, v14);
    OUTLINED_FUNCTION_13_3(&qword_1EC443B38, &qword_1EC443B40, &qword_1CA981F40);
    OUTLINED_FUNCTION_35_0();
    v23 = OUTLINED_FUNCTION_44_2();
    OUTLINED_FUNCTION_21_4(v23);
    swift_retain_n();
    OUTLINED_FUNCTION_12_4();
    sub_1CA5E49EC();
    OUTLINED_FUNCTION_22_2(v24);

    v25 = *(v15 + 112);
    swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_19_2();
    sub_1CA321F8C();
    *(v15 + 112) = a9;
    swift_endAccess();
    v26 = *(MEMORY[0x1E69E86A8] + 4);
    v27 = swift_task_alloc();
    v13[19] = v27;
    sub_1CA94AD48();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443898, &unk_1CA9855B0);
    OUTLINED_FUNCTION_34_2();
    *v27 = v28;
    v27[1] = sub_1CA2C7A98;
  }

  v21 = v13[8];
  OUTLINED_FUNCTION_23_0();

  return MEMORY[0x1EEE6DA10](v29, v30, v31, v32, v33, v34, v35, v36, a9, a10, a11, a12);
}

uint64_t sub_1CA2C7984()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_29_1();
  OUTLINED_FUNCTION_2_2();
  *v4 = v3;
  v5 = *(v1 + 128);
  *v4 = *v2;
  *(v3 + 136) = v0;

  OUTLINED_FUNCTION_25_2();
  v7 = *(v6 + 80);
  OUTLINED_FUNCTION_15_1();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_1CA2C7A98()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_29_1();
  OUTLINED_FUNCTION_2_2();
  *v4 = v3;
  v5 = *(v1 + 152);
  *v4 = *v2;
  *(v3 + 160) = v0;

  OUTLINED_FUNCTION_25_2();
  v7 = *(v6 + 80);
  OUTLINED_FUNCTION_15_1();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_1CA2C7BAC()
{
  OUTLINED_FUNCTION_0();
  v1 = v0[15];

  v3 = v0[13];
  v2 = v0[14];

  OUTLINED_FUNCTION_3_6();

  return v4();
}

uint64_t sub_1CA2C7C14()
{
  OUTLINED_FUNCTION_0();
  v1 = v0[15];

  v2 = v0[17];
  v4 = v0[13];
  v3 = v0[14];

  OUTLINED_FUNCTION_5();

  return v5();
}

uint64_t sub_1CA2C7C80()
{
  OUTLINED_FUNCTION_0();
  v1 = v0[18];

  v3 = v0[13];
  v2 = v0[14];

  OUTLINED_FUNCTION_3_6();

  return v4();
}

uint64_t sub_1CA2C7CE8()
{
  OUTLINED_FUNCTION_0();
  v1 = v0[18];

  v2 = v0[20];
  v4 = v0[13];
  v3 = v0[14];

  OUTLINED_FUNCTION_5();

  return v5();
}

uint64_t sub_1CA2C7D54(uint64_t a1)
{
  v2 = type metadata accessor for DatabaseTypeDefinitionProvider.CacheKey(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t dispatch thunk of TypeDefinitionProvider.type(with:from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = *(a5 + 8);
  v16 = (v10 + *v10);
  v11 = v10[1];
  v12 = swift_task_alloc();
  v13 = OUTLINED_FUNCTION_4_4(v12);
  *v13 = v14;
  v13[1] = sub_1CA2C99BC;

  return v16(a1, a2, a3, a4, a5);
}

uint64_t dispatch thunk of DatabaseTypeDefinitionProvider.type(with:from:)()
{
  OUTLINED_FUNCTION_6();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v7 = *(*v0 + 112);
  v13 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  v10 = OUTLINED_FUNCTION_4_4(v9);
  *v10 = v11;
  v10[1] = sub_1CA2C99BC;

  return v13(v6, v4, v2);
}

uint64_t sub_1CA2C8080()
{
  result = sub_1CA94ADC8();
  if (v1 <= 0x3F)
  {
    result = sub_1CA94B168();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1CA2C814C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1CA2C8194()
{
  OUTLINED_FUNCTION_0();
  v1[9] = v2;
  v1[10] = v0;
  v1[8] = v3;
  v4 = *(type metadata accessor for DatabaseContainerDefinitionProvider.CacheKey(0) - 8);
  v1[11] = v4;
  v1[12] = *(v4 + 64);
  v1[13] = OUTLINED_FUNCTION_45();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443880, &qword_1CA982FB0);
  OUTLINED_FUNCTION_18_0(v5);
  v7 = *(v6 + 64);
  v1[14] = OUTLINED_FUNCTION_45();

  return MEMORY[0x1EEE6DFA0](sub_1CA2C827C, v0, 0);
}

uint64_t sub_1CA2C827C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_24_0();
  OUTLINED_FUNCTION_39_1();
  OUTLINED_FUNCTION_33_1();
  v16 = *(v15 + 112);
  sub_1CA94C218();
  v17 = sub_1CA31184C(v12, v16);
  v13[15] = v17;

  if (v17)
  {
    v18 = *(MEMORY[0x1E69E86A8] + 4);
    v19 = swift_task_alloc();
    v13[16] = v19;
    sub_1CA94B1C8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443898, &unk_1CA9855B0);
    OUTLINED_FUNCTION_34_2();
    *v19 = v20;
    v19[1] = sub_1CA2C84B0;
  }

  else
  {
    v22 = OUTLINED_FUNCTION_43_2();
    OUTLINED_FUNCTION_42(v22);
    sub_1CA2C9194(v16, v14);
    OUTLINED_FUNCTION_13_3(&qword_1EC443B28, &qword_1EC443B30, &qword_1CA981F10);
    OUTLINED_FUNCTION_35_0();
    v23 = OUTLINED_FUNCTION_44_2();
    OUTLINED_FUNCTION_21_4(v23);
    swift_retain_n();
    OUTLINED_FUNCTION_12_4();
    sub_1CA5E4C34();
    OUTLINED_FUNCTION_22_2(v24);

    v25 = *(v15 + 112);
    swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_19_2();
    sub_1CA3220E8();
    *(v15 + 112) = a9;
    swift_endAccess();
    v26 = *(MEMORY[0x1E69E86A8] + 4);
    v27 = swift_task_alloc();
    v13[19] = v27;
    sub_1CA94B1C8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443898, &unk_1CA9855B0);
    OUTLINED_FUNCTION_34_2();
    *v27 = v28;
    v27[1] = sub_1CA2C85C4;
  }

  v21 = v13[8];
  OUTLINED_FUNCTION_23_0();

  return MEMORY[0x1EEE6DA10](v29, v30, v31, v32, v33, v34, v35, v36, a9, a10, a11, a12);
}

uint64_t sub_1CA2C84B0()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_29_1();
  OUTLINED_FUNCTION_2_2();
  *v4 = v3;
  v5 = *(v1 + 128);
  *v4 = *v2;
  *(v3 + 136) = v0;

  OUTLINED_FUNCTION_25_2();
  v7 = *(v6 + 80);
  OUTLINED_FUNCTION_15_1();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_1CA2C85C4()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_29_1();
  OUTLINED_FUNCTION_2_2();
  *v4 = v3;
  v5 = *(v1 + 152);
  *v4 = *v2;
  *(v3 + 160) = v0;

  OUTLINED_FUNCTION_25_2();
  v7 = *(v6 + 80);
  OUTLINED_FUNCTION_15_1();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_1CA2C86D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[6] = a4;
  v5[7] = a5;
  v5[5] = a1;
  v7 = sub_1CA94AD48();
  v5[8] = v7;
  v8 = *(v7 - 8);
  v5[9] = v8;
  v5[10] = *(v8 + 64);
  v5[11] = swift_task_alloc();
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443880, &qword_1CA982FB0) - 8) + 64) + 15;
  v5[12] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1CA2C87E0, a4, 0);
}

uint64_t sub_1CA2C87E0()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_5_9();
  v2 = *(v1 + 4);
  v3 = swift_task_alloc();
  *(v0 + 104) = v3;
  *v3 = v0;
  v4 = OUTLINED_FUNCTION_27_6(v3);

  return v5(v4);
}

uint64_t sub_1CA2C8890()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_3();
  v3 = v2;
  OUTLINED_FUNCTION_2_2();
  *v4 = v3;
  v6 = *(v5 + 104);
  v7 = *v1;
  OUTLINED_FUNCTION_1();
  *v8 = v7;

  if (v0)
  {
    v10 = v3[11];
    v9 = v3[12];

    v11 = *(v7 + 8);

    return v11();
  }

  else
  {
    v13 = v3[6];
    OUTLINED_FUNCTION_15_1();

    return MEMORY[0x1EEE6DFA0](v14, v15, v16);
  }
}

uint64_t sub_1CA2C89CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_24_0();
  OUTLINED_FUNCTION_39_1();
  v15 = OUTLINED_FUNCTION_31_1();
  __swift_storeEnumTagSinglePayload(v12, 1, 1, v15);
  v16 = OUTLINED_FUNCTION_26_3();
  v17(v16);
  v18 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v19 = OUTLINED_FUNCTION_44_2();
  v20 = OUTLINED_FUNCTION_16_3(v19);
  v21(v20);
  OUTLINED_FUNCTION_12_4();
  sub_1CA5E49EC();
  OUTLINED_FUNCTION_32_0();
  v22 = *(v13 + 112);
  swift_isUniquelyReferenced_nonNull_native();
  OUTLINED_FUNCTION_20_2();
  sub_1CA321F8C();
  *(v13 + 112) = a9;
  swift_endAccess();

  OUTLINED_FUNCTION_3_6();
  OUTLINED_FUNCTION_23_0();

  return v24(v23, v24, v25, v26, v27, v28, v29, v30, a9, a10, a11, a12);
}

uint64_t sub_1CA2C8AC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[6] = a4;
  v5[7] = a5;
  v5[5] = a1;
  v7 = sub_1CA94B1C8();
  v5[8] = v7;
  v8 = *(v7 - 8);
  v5[9] = v8;
  v5[10] = *(v8 + 64);
  v5[11] = swift_task_alloc();
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443880, &qword_1CA982FB0) - 8) + 64) + 15;
  v5[12] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1CA2C8BD0, a4, 0);
}

uint64_t sub_1CA2C8BD0()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_5_9();
  v2 = *(v1 + 4);
  v3 = swift_task_alloc();
  *(v0 + 104) = v3;
  *v3 = v0;
  v4 = OUTLINED_FUNCTION_27_6(v3);

  return v5(v4);
}

uint64_t sub_1CA2C8C80()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_3();
  v3 = v2;
  OUTLINED_FUNCTION_2_2();
  *v4 = v3;
  v6 = *(v5 + 104);
  v7 = *v1;
  OUTLINED_FUNCTION_1();
  *v8 = v7;

  if (v0)
  {
    v10 = v3[11];
    v9 = v3[12];

    v11 = *(v7 + 8);

    return v11();
  }

  else
  {
    v13 = v3[6];
    OUTLINED_FUNCTION_15_1();

    return MEMORY[0x1EEE6DFA0](v14, v15, v16);
  }
}

uint64_t sub_1CA2C8DBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_24_0();
  OUTLINED_FUNCTION_39_1();
  v15 = OUTLINED_FUNCTION_31_1();
  __swift_storeEnumTagSinglePayload(v12, 1, 1, v15);
  v16 = OUTLINED_FUNCTION_26_3();
  v17(v16);
  v18 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v19 = OUTLINED_FUNCTION_44_2();
  v20 = OUTLINED_FUNCTION_16_3(v19);
  v21(v20);
  OUTLINED_FUNCTION_12_4();
  sub_1CA5E4C34();
  OUTLINED_FUNCTION_32_0();
  v22 = *(v13 + 112);
  swift_isUniquelyReferenced_nonNull_native();
  OUTLINED_FUNCTION_20_2();
  sub_1CA3220E8();
  *(v13 + 112) = a9;
  swift_endAccess();

  OUTLINED_FUNCTION_3_6();
  OUTLINED_FUNCTION_23_0();

  return v24(v23, v24, v25, v26, v27, v28, v29, v30, a9, a10, a11, a12);
}

uint64_t sub_1CA2C8EB8()
{
  OUTLINED_FUNCTION_6();
  v1 = OUTLINED_FUNCTION_30();
  v2 = type metadata accessor for DatabaseContainerDefinitionProvider.CacheKey(v1);
  OUTLINED_FUNCTION_18_0(v2);
  v4 = *(v3 + 80);
  OUTLINED_FUNCTION_36_1();
  v5 = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_4_4(v5);
  *v6 = v7;
  v6[1] = sub_1CA2C99BC;
  v8 = OUTLINED_FUNCTION_6_8();

  return sub_1CA2C8AC8(v8, v9, v10, v0, v11);
}

uint64_t sub_1CA2C8F84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a1;
  *(v4 + 24) = a4;
  return MEMORY[0x1EEE6DFA0](sub_1CA2C8FA4, 0, 0);
}

uint64_t sub_1CA2C8FA4()
{
  OUTLINED_FUNCTION_0();
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = sub_1CA94AD48();
  OUTLINED_FUNCTION_0_1(v3);
  v5 = *(v4 + 16);
  v6 = OUTLINED_FUNCTION_23();
  v7(v6);
  OUTLINED_FUNCTION_3_6();

  return v8();
}

uint64_t sub_1CA2C9024(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a1;
  *(v4 + 24) = a4;
  return MEMORY[0x1EEE6DFA0](sub_1CA2C9044, 0, 0);
}

uint64_t sub_1CA2C9044()
{
  OUTLINED_FUNCTION_0();
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = sub_1CA94B1C8();
  OUTLINED_FUNCTION_0_1(v3);
  v5 = *(v4 + 16);
  v6 = OUTLINED_FUNCTION_23();
  v7(v6);
  OUTLINED_FUNCTION_3_6();

  return v8();
}

uint64_t sub_1CA2C90C4()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_30();
  v1 = sub_1CA94B1C8();
  OUTLINED_FUNCTION_18_0(v1);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = *(v0 + 16);
  v5 = *(v0 + 24);
  v6 = swift_task_alloc();
  v7 = OUTLINED_FUNCTION_4_4(v6);
  *v7 = v8;
  v7[1] = sub_1CA2C99BC;
  v9 = OUTLINED_FUNCTION_6_8();

  return sub_1CA2C9024(v9, v10, v11, v12);
}

uint64_t sub_1CA2C9194(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_40();
  v5 = v4(v3);
  OUTLINED_FUNCTION_0_1(v5);
  v7 = *(v6 + 16);
  v8 = OUTLINED_FUNCTION_23();
  v9(v8);
  return a2;
}

uint64_t sub_1CA2C91E8(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_40();
  v5 = v4(v3);
  OUTLINED_FUNCTION_0_1(v5);
  v7 = *(v6 + 32);
  v8 = OUTLINED_FUNCTION_23();
  v9(v8);
  return a2;
}

uint64_t sub_1CA2C923C()
{
  OUTLINED_FUNCTION_6();
  v1 = OUTLINED_FUNCTION_30();
  v2 = type metadata accessor for DatabaseTypeDefinitionProvider.CacheKey(v1);
  OUTLINED_FUNCTION_18_0(v2);
  v4 = *(v3 + 80);
  OUTLINED_FUNCTION_36_1();
  v5 = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_4_4(v5);
  *v6 = v7;
  v6[1] = sub_1CA2C756C;
  v8 = OUTLINED_FUNCTION_6_8();

  return sub_1CA2C86D8(v8, v9, v10, v0, v11);
}

uint64_t objectdestroy_16Tm(uint64_t (*a1)(void))
{
  v2 = a1(0);
  OUTLINED_FUNCTION_1_0(v2);
  v4 = v3;
  v5 = *(v3 + 80);
  v6 = (v5 + 32) & ~v5;
  v8 = *(v7 + 64);
  v9 = *(v1 + 16);
  swift_unknownObjectRelease();
  (*(v4 + 8))(v1 + v6, v2);

  return MEMORY[0x1EEE6BDD0](v1, v6 + v8, v5 | 7);
}

uint64_t sub_1CA2C93C8()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_30();
  v1 = sub_1CA94AD48();
  OUTLINED_FUNCTION_18_0(v1);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = *(v0 + 16);
  v5 = *(v0 + 24);
  v6 = swift_task_alloc();
  v7 = OUTLINED_FUNCTION_4_4(v6);
  *v7 = v8;
  v7[1] = sub_1CA2C99BC;
  v9 = OUTLINED_FUNCTION_6_8();

  return sub_1CA2C8F84(v9, v10, v11, v12);
}

uint64_t sub_1CA2C9498(uint64_t a1, uint64_t a2)
{
  v8[3] = sub_1CA94A138();
  v8[4] = MEMORY[0x1E69DA938];
  v8[0] = a1;
  swift_defaultActor_initialize();
  sub_1CA2C9578(v8, a2 + 120);
  sub_1CA2C9578(v8, v7);
  v4 = swift_allocObject();
  sub_1CA27F268(v7, v4 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443B40, &qword_1CA981F40);
  swift_allocObject();
  v5 = sub_1CA442000(&unk_1CA981F70, v4);
  __swift_destroy_boxed_opaque_existential_0(v8);
  *(a2 + 112) = v5;
  return a2;
}

uint64_t sub_1CA2C9578(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_1CA2C95DC()
{
  OUTLINED_FUNCTION_14();
  v2 = v1;
  v4 = v3;
  v5 = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_4_4(v5);
  *v6 = v7;
  v6[1] = sub_1CA2C99BC;

  return sub_1CA2C6500(v4, v2, v0 + 16);
}

uint64_t sub_1CA2C967C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443B50, &qword_1CA981F80);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1CA2C96EC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443B50, &qword_1CA981F80);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1CA2C9774(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443B70, &qword_1CA981FB8);

  return __swift_getEnumTagSinglePayload(a1, a2, v4);
}

uint64_t sub_1CA2C97C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443B70, &qword_1CA981FB8);

  return __swift_storeEnumTagSinglePayload(a1, a2, a3, v6);
}

uint64_t sub_1CA2C982C(uint64_t a1)
{
  sub_1CA2C9938();
  v3 = v2;
  if (v4 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSingleCaseWithLayoutString();
    v5 = sub_1CA94ADC8();
    v3 = v5;
    if (v6 <= 0x3F)
    {
      v7 = *(v5 - 8);
      v8 = sub_1CA94B168();
      v3 = v8;
      if (v9 <= 0x3F)
      {
        v10 = *(v8 - 8);
        swift_getTupleTypeLayout2();
        v3 = 0;
        *(*(a1 - 8) + 84) = v12;
      }
    }
  }

  return v3;
}

void sub_1CA2C9938()
{
  if (!qword_1EC443B88)
  {
    sub_1CA94ADC8();
    sub_1CA94B168();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EC443B88);
    }
  }
}

uint64_t OUTLINED_FUNCTION_44_2()
{

  return swift_allocObject();
}

void sub_1CA2C99D8()
{
  OUTLINED_FUNCTION_37_0();
  v1 = v0;
  v2 = sub_1CA94C168();
  v3 = OUTLINED_FUNCTION_18_0(v2);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_62();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443BE0, &qword_1CA982090);
  OUTLINED_FUNCTION_1_0(v6);
  v8 = v7;
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_37_1();
  sub_1CA94C218();
  OUTLINED_FUNCTION_69();
  sub_1CA94C178();
  sub_1CA2D9B68();
  OUTLINED_FUNCTION_91();
  sub_1CA94C078();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443B98, &qword_1CA986560);
  sub_1CA94C058();
  if (v20)
  {

    sub_1CA94C218();
    OUTLINED_FUNCTION_69();
    sub_1CA94C178();
    sub_1CA2D9968();
    sub_1CA94BE48();
    v12 = *(v8 + 8);
    v13 = OUTLINED_FUNCTION_195();
    v14(v13);
    v15 = 0;
  }

  else
  {
    v16 = *(v8 + 8);
    v17 = OUTLINED_FUNCTION_195();
    v18(v17);
    v15 = 1;
  }

  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443950, &unk_1CA982580);
  __swift_storeEnumTagSinglePayload(v1, v15, 1, v19);
  OUTLINED_FUNCTION_36();
}

void sub_1CA2C9BB4()
{
  OUTLINED_FUNCTION_37_0();
  v2 = v1;
  v4 = v3;
  v39 = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443C08, &qword_1CA9820B0);
  OUTLINED_FUNCTION_18_0(v6);
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_26_4();
  v10 = sub_1CA94C168();
  v11 = OUTLINED_FUNCTION_18_0(v10);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_62();
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443C10, &qword_1CA9820B8);
  OUTLINED_FUNCTION_1_0(v38);
  v15 = *(v14 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_37_1();
  sub_1CA94C218();
  OUTLINED_FUNCTION_69();
  sub_1CA94C178();
  v17 = type metadata accessor for LibraryModel.FolderCollection(0);
  OUTLINED_FUNCTION_13_4();
  sub_1CA25C558(v18, v19);
  OUTLINED_FUNCTION_91();
  sub_1CA94C078();
  if (sub_1CA94C3A8() == v4 && v20 == v2)
  {

    goto LABEL_9;
  }

  v22 = v0;
  OUTLINED_FUNCTION_69();
  v23 = sub_1CA94D7F8();

  if (v23)
  {
LABEL_9:
    v30 = OUTLINED_FUNCTION_140();
    v31(v30);
    v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443950, &unk_1CA982580);
    v29 = v39;
    v33 = v39;
    v34 = 1;
LABEL_10:
    __swift_storeEnumTagSinglePayload(v33, v34, 1, v32);
    EnumTagSinglePayload = 0;
    goto LABEL_11;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443B98, &qword_1CA986560);
  sub_1CA94C058();
  v24 = OUTLINED_FUNCTION_50_0();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v24, v25, v17);
  sub_1CA27080C(v22, &qword_1EC443C08, &qword_1CA9820B0);
  if (EnumTagSinglePayload != 1)
  {
    sub_1CA94C218();
    OUTLINED_FUNCTION_69();
    sub_1CA94C178();
    sub_1CA2D9968();
    v29 = v39;
    sub_1CA94BE48();
    v36 = OUTLINED_FUNCTION_140();
    v37(v36);
    v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443950, &unk_1CA982580);
    v33 = v39;
    v34 = 0;
    goto LABEL_10;
  }

  v27 = OUTLINED_FUNCTION_140();
  v28(v27);
  v29 = v39;
LABEL_11:
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443BF0, &qword_1CA9820A0);
  __swift_storeEnumTagSinglePayload(v29, EnumTagSinglePayload, 1, v35);
  OUTLINED_FUNCTION_36();
}

void sub_1CA2C9ED0()
{
  OUTLINED_FUNCTION_37_0();
  v1 = v0;
  v2 = sub_1CA94C168();
  v3 = OUTLINED_FUNCTION_18_0(v2);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_62();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443BE0, &qword_1CA982090);
  OUTLINED_FUNCTION_1_0(v6);
  v8 = v7;
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_37_1();
  sub_1CA94C218();
  OUTLINED_FUNCTION_188();
  sub_1CA94C178();
  sub_1CA2D9B68();
  OUTLINED_FUNCTION_91();
  sub_1CA94C078();
  sub_1CA94BFC8();
  if (v20)
  {
    sub_1CA94C218();

    OUTLINED_FUNCTION_188();
    sub_1CA94C178();
    sub_1CA2D9968();
    sub_1CA94BE58();
    v12 = *(v8 + 8);
    v13 = OUTLINED_FUNCTION_103();
    v14(v13);
    v15 = 0;
  }

  else
  {
    v16 = *(v8 + 8);
    v17 = OUTLINED_FUNCTION_103();
    v18(v17);
    v15 = 1;
  }

  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443950, &unk_1CA982580);
  __swift_storeEnumTagSinglePayload(v1, v15, 1, v19);
  OUTLINED_FUNCTION_36();
}

void sub_1CA2CA09C()
{
  OUTLINED_FUNCTION_37_0();
  v2 = v1;
  v4 = v3;
  v47 = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443C08, &qword_1CA9820B0);
  OUTLINED_FUNCTION_18_0(v6);
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_43();
  v11 = v10;
  v12 = OUTLINED_FUNCTION_25_0();
  v13 = type metadata accessor for LibraryModel.FolderCollection(v12);
  v14 = OUTLINED_FUNCTION_52(v13);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_3_1();
  v45 = v17;
  OUTLINED_FUNCTION_31_2();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_60_2();
  v19 = sub_1CA94C168();
  v20 = OUTLINED_FUNCTION_18_0(v19);
  v22 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_6_0();
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443C10, &qword_1CA9820B8);
  OUTLINED_FUNCTION_1_0(v46);
  v24 = *(v23 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_20_3();
  sub_1CA94C218();
  OUTLINED_FUNCTION_69();
  sub_1CA94C178();
  OUTLINED_FUNCTION_13_4();
  sub_1CA25C558(v26, v27);
  OUTLINED_FUNCTION_95();
  sub_1CA94C078();
  v29 = sub_1CA94C3A8() == v4 && v28 == v2;
  if (v29)
  {

    goto LABEL_10;
  }

  v44 = v0;
  OUTLINED_FUNCTION_69();
  v30 = sub_1CA94D7F8();

  if (v30)
  {
LABEL_10:
    v34 = OUTLINED_FUNCTION_138_1();
    v35(v34);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443950, &unk_1CA982580);
    v37 = v47;
    v42 = OUTLINED_FUNCTION_201_0();
    goto LABEL_11;
  }

  sub_1CA94BFC8();
  OUTLINED_FUNCTION_41(v11);
  if (!v29)
  {
    sub_1CA2D9C14(v11, v44);
    sub_1CA2D9BBC(v44, v45);
    sub_1CA94C218();

    OUTLINED_FUNCTION_69();
    sub_1CA94C178();
    sub_1CA2D9968();
    v37 = v47;
    sub_1CA94BE68();
    OUTLINED_FUNCTION_4_5();
    sub_1CA26F808(v44, v38);
    v39 = OUTLINED_FUNCTION_138_1();
    v40(v39);
    v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443950, &unk_1CA982580);
    v42 = v47;
    v43 = 0;
LABEL_11:
    __swift_storeEnumTagSinglePayload(v42, v43, 1, v41);
    v33 = 0;
    goto LABEL_12;
  }

  v31 = OUTLINED_FUNCTION_138_1();
  v32(v31);
  sub_1CA27080C(v11, &qword_1EC443C08, &qword_1CA9820B0);
  v33 = 1;
  v37 = v47;
LABEL_12:
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443BF0, &qword_1CA9820A0);
  __swift_storeEnumTagSinglePayload(v37, v33, 1, v36);
  OUTLINED_FUNCTION_36();
}

void sub_1CA2CA42C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_37_0();
  a19 = v22;
  a20 = v23;
  v208 = v20;
  v183[0] = v24;
  v195 = v25;
  v27 = v26;
  v185 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443BA8, &unk_1CA983A80);
  OUTLINED_FUNCTION_1_0(v185);
  v184 = v28;
  v30 = *(v29 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_43();
  v33 = OUTLINED_FUNCTION_19_0(v32);
  v34 = type metadata accessor for LibraryModel.FolderCollection(v33);
  v35 = OUTLINED_FUNCTION_18_0(v34);
  v37 = *(v36 + 64);
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_6_2();
  v198 = v38;
  v194 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC444100, &qword_1CA982730);
  OUTLINED_FUNCTION_1_0(v194);
  v193 = v39;
  v41 = *(v40 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x1EEE9AC00](v42);
  OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_172(v43);
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4440F0, &qword_1CA982720);
  v45 = OUTLINED_FUNCTION_1_0(v44);
  v205 = v46;
  v206 = v45;
  v48 = *(v47 + 64);
  MEMORY[0x1EEE9AC00](v45);
  OUTLINED_FUNCTION_3_1();
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v49);
  OUTLINED_FUNCTION_45_0();
  v203 = v50;
  OUTLINED_FUNCTION_31_2();
  MEMORY[0x1EEE9AC00](v51);
  OUTLINED_FUNCTION_60_2();
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443BB8, &unk_1CA983A70);
  v53 = OUTLINED_FUNCTION_18_0(v52);
  v55 = *(v54 + 64);
  MEMORY[0x1EEE9AC00](v53);
  OUTLINED_FUNCTION_3_1();
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v56);
  OUTLINED_FUNCTION_45_0();
  v196 = v57;
  OUTLINED_FUNCTION_31_2();
  MEMORY[0x1EEE9AC00](v58);
  OUTLINED_FUNCTION_48_0();
  v210 = v59;
  OUTLINED_FUNCTION_25_0();
  v60 = sub_1CA94C168();
  v61 = OUTLINED_FUNCTION_18_0(v60);
  v63 = *(v62 + 64);
  MEMORY[0x1EEE9AC00](v61);
  OUTLINED_FUNCTION_6_2();
  v207 = v64;
  v209 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443950, &unk_1CA982580);
  v65 = OUTLINED_FUNCTION_1_0(v209);
  v67 = *(v66 + 64);
  MEMORY[0x1EEE9AC00](v65);
  OUTLINED_FUNCTION_3_1();
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v68);
  OUTLINED_FUNCTION_45_0();
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v69);
  OUTLINED_FUNCTION_45_0();
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v70);
  OUTLINED_FUNCTION_45_0();
  v204 = v71;
  OUTLINED_FUNCTION_31_2();
  MEMORY[0x1EEE9AC00](v72);
  OUTLINED_FUNCTION_45_0();
  v199 = v73;
  OUTLINED_FUNCTION_31_2();
  MEMORY[0x1EEE9AC00](v74);
  v77 = v183 - v76;
  v78 = *(v27 + 16);
  v200 = v75;
  if (v78)
  {
    v201 = (v75 + 8);
    v202 = (v75 + 16);
    v79 = (v27 + 40);
    v80 = MEMORY[0x1E69E7CC0];
    v81 = v209;
    do
    {
      v82 = *(v79 - 1);
      v83 = *v79;
      v211 = MEMORY[0x1E69E7CC8];
      sub_1CA94C218();

      sub_1CA94C178();
      sub_1CA2D9968();
      OUTLINED_FUNCTION_156();
      sub_1CA94BE58();
      v84 = v210;
      v85 = OUTLINED_FUNCTION_35_1();
      __swift_storeEnumTagSinglePayload(v85, v86, v87, v81);
      v88 = *(v206 + 48);
      (*v202)(v21, v77, v81);
      sub_1CA2D9CD4(v84, v21 + v88, &qword_1EC443BB8, &unk_1CA983A70);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v93 = v80[2];
        OUTLINED_FUNCTION_21();
        sub_1CA2E49E8();
        v80 = v94;
      }

      v90 = v80[2];
      v89 = v80[3];
      if (v90 >= v89 >> 1)
      {
        OUTLINED_FUNCTION_17_1(v89);
        sub_1CA2E49E8();
        v80 = v95;
      }

      v81 = v209;
      (*v201)(v77, v209);
      v80[2] = v90 + 1;
      OUTLINED_FUNCTION_47();
      sub_1CA2D9CD4(v21, v80 + v91 + *(v92 + 72) * v90, &qword_1EC4440F0, &qword_1CA982720);
      v79 += 2;
      --v78;
    }

    while (v78);
  }

  else
  {
    v80 = MEMORY[0x1E69E7CC0];
  }

  v96 = sub_1CA94C1E8();
  if (*(v195 + 16))
  {
    v97 = *(v193 + 80);
    OUTLINED_FUNCTION_68_0();
    v100 = v99 + v98;
    v202 = (v200 + 16);
    v195 = *(v194 + 48);
    v189 = v200 + 32;
    v194 = *(v101 + 72);
    v188 = v200 + 40;
    OUTLINED_FUNCTION_135(v200 + 8);
    while (1)
    {
      v201 = v102;
      v210 = v80;
      v103 = v197;
      sub_1CA2D9D20(v100, v197, &qword_1EC444100, &qword_1CA982730);
      v105 = *v103;
      v104 = v103[1];
      OUTLINED_FUNCTION_12_5();
      sub_1CA2D9C14(v103 + v195, v198);

      sub_1CA94C218();
      OUTLINED_FUNCTION_116_0();
      sub_1CA94C178();
      sub_1CA2D9968();
      sub_1CA94BE68();
      v106 = *v202;
      OUTLINED_FUNCTION_134_1();
      v106();
      swift_isUniquelyReferenced_nonNull_native();
      v211 = v96;
      OUTLINED_FUNCTION_116_0();
      v107 = sub_1CA271BF8();
      if (__OFADD__(v96[2], (v108 & 1) == 0))
      {
        break;
      }

      v109 = v107;
      v110 = v108;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443C18, &qword_1CA9820C0);
      if (sub_1CA94D588())
      {
        OUTLINED_FUNCTION_116_0();
        v111 = sub_1CA271BF8();
        if ((v110 & 1) != (v112 & 1))
        {
          goto LABEL_41;
        }

        v109 = v111;
      }

      v96 = v211;
      if (v110)
      {
        OUTLINED_FUNCTION_189_0();
        v114 = *(v113 + 40);
        OUTLINED_FUNCTION_169();
        v115();
      }

      else
      {
        v211[(v109 >> 6) + 8] |= 1 << v109;
        v116 = (v96[6] + 16 * v109);
        *v116 = v105;
        v116[1] = v104;
        OUTLINED_FUNCTION_189_0();
        v118 = *(v117 + 32);
        OUTLINED_FUNCTION_169();
        v119();
        v120 = v96[2];
        v121 = __OFADD__(v120, 1);
        v122 = v120 + 1;
        if (v121)
        {
          goto LABEL_40;
        }

        v96[2] = v122;
      }

      v123 = v196;
      OUTLINED_FUNCTION_46();
      __swift_storeEnumTagSinglePayload(v124, v125, v126, v110);
      v127 = *(v206 + 48);
      v128 = v203;
      OUTLINED_FUNCTION_134_1();
      v106();
      sub_1CA2D9CD4(v123, v128 + v127, &qword_1EC443BB8, &unk_1CA983A70);
      v80 = v210;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v136 = v80[2];
        OUTLINED_FUNCTION_21();
        sub_1CA2E49E8();
        v80 = v137;
      }

      v129 = v208;
      v131 = v80[2];
      v130 = v80[3];
      if (v131 >= v130 >> 1)
      {
        OUTLINED_FUNCTION_17_1(v130);
        sub_1CA2E49E8();
        v80 = v138;
      }

      OUTLINED_FUNCTION_38_1(&a18);
      v132 = OUTLINED_FUNCTION_126();
      v133(v132);
      v80[2] = v131 + 1;
      OUTLINED_FUNCTION_47();
      sub_1CA2D9CD4(v203, v80 + v134 + *(v135 + 72) * v131, &qword_1EC4440F0, &qword_1CA982720);
      v100 += v194;
      v102 = (v201 - 1);
      if (v201 == 1)
      {
        goto LABEL_27;
      }
    }

    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    sub_1CA94D878();
    __break(1u);
  }

  else
  {
    v129 = v208;
LABEL_27:
    v139 = *(v183[0] + 16);
    if (v139)
    {
      v202 = v96;
      v203 = v200 + 16;
      v201 = (v200 + 32);
      v199 = (v200 + 8);
      v140 = (v183[0] + 56);
      do
      {
        if (v96[2])
        {
          v210 = v80;
          v142 = *(v140 - 3);
          v141 = *(v140 - 2);
          v143 = *(v140 - 1);
          v144 = *v140;
          sub_1CA94C218();
          sub_1CA94C218();
          v145 = sub_1CA271BF8();
          v147 = v146;

          if (v147)
          {
            v148 = v200;
            v149 = v96[7] + *(v200 + 72) * v145;
            v204 = *(v200 + 16);
            v150 = v209;
            v204(v186, v149, v209);
            v151 = *(v148 + 32);
            v152 = v190;
            v153 = OUTLINED_FUNCTION_61();
            v154(v153);
            v211 = MEMORY[0x1E69E7CC8];

            sub_1CA94C178();
            sub_1CA2D9968();
            OUTLINED_FUNCTION_156();
            OUTLINED_FUNCTION_181(&a16);
            sub_1CA94BE58();
            v155 = v187;
            v156 = v152;
            v157 = v204;
            v204(v187, v156, v150);
            OUTLINED_FUNCTION_89();
            __swift_storeEnumTagSinglePayload(v158, v159, v160, v150);
            v161 = *(v206 + 48);
            v162 = v192;
            v163 = OUTLINED_FUNCTION_122_0();
            v157(v163);
            sub_1CA2D9CD4(v155, v162 + v161, &qword_1EC443BB8, &unk_1CA983A70);
            v80 = v210;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v170 = v80[2];
              OUTLINED_FUNCTION_21();
              sub_1CA2E49E8();
              v80 = v171;
            }

            v165 = v80[2];
            v164 = v80[3];
            v129 = v208;
            v96 = v202;
            if (v165 >= v164 >> 1)
            {
              OUTLINED_FUNCTION_64(v164);
              sub_1CA2E49E8();
              v80 = v172;
            }

            v166 = *v199;
            v167 = v209;
            (*v199)(v191, v209);
            v166(v190, v167);
            v80[2] = v165 + 1;
            OUTLINED_FUNCTION_47();
            sub_1CA2D9CD4(v192, v80 + v168 + *(v169 + 72) * v165, &qword_1EC4440F0, &qword_1CA982720);
          }

          else
          {

            v80 = v210;
          }
        }

        v140 += 4;
        --v139;
      }

      while (v139);
    }

    v211 = v80;
    v173 = OUTLINED_FUNCTION_23();
    __swift_instantiateConcreteTypeFromMangledNameV2(v173, v174);
    OUTLINED_FUNCTION_76();
    sub_1CA25C3BC(v175, &unk_1EC443950, &unk_1CA982580);
    OUTLINED_FUNCTION_75();
    sub_1CA25C3BC(v176, &unk_1EC443950, &unk_1CA982580);
    OUTLINED_FUNCTION_68_1();
    sub_1CA25C3BC(v177, v178, v179);
    v180 = v183[1];
    sub_1CA94BD68();
    sub_1CA94BFA8();
    OUTLINED_FUNCTION_69_1();
    v181 = type metadata accessor for LibraryModel(0);
    (*(v184 + 40))(v129 + *(v181 + 20), v180, v185);
    v182 = OUTLINED_FUNCTION_53_1();
    (unk_1EC443C20)(v182);

    OUTLINED_FUNCTION_36();
  }
}

void sub_1CA2CB068()
{
  OUTLINED_FUNCTION_37_0();
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443BE0, &qword_1CA982090);
  v5 = OUTLINED_FUNCTION_1_0(v4);
  v87 = v6;
  v88 = v5;
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_43();
  v86 = v10;
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443BA0, &unk_1CA9844D0);
  OUTLINED_FUNCTION_1_0(v93);
  v85 = v11;
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_43();
  v89 = v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443C38, &qword_1CA9820D8);
  OUTLINED_FUNCTION_18_0(v16);
  v18 = *(v17 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_43();
  v91 = v20;
  v21 = OUTLINED_FUNCTION_25_0();
  v22 = type metadata accessor for LibraryModel(v21);
  v23 = OUTLINED_FUNCTION_18_0(v22);
  v25 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_6_2();
  v90 = v26;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443BB0, &qword_1CA982060);
  OUTLINED_FUNCTION_18_0(v27);
  v29 = *(v28 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_36_2();
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443BC0, &unk_1CA983B20);
  v94 = OUTLINED_FUNCTION_1_0(v31);
  v95 = v32;
  v34 = *(v33 + 64);
  MEMORY[0x1EEE9AC00](v94);
  OUTLINED_FUNCTION_3_1();
  OUTLINED_FUNCTION_31_2();
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_48_0();
  v96 = v36;
  OUTLINED_FUNCTION_25_0();
  v37 = sub_1CA94C168();
  v38 = OUTLINED_FUNCTION_18_0(v37);
  v40 = *(v39 + 64);
  MEMORY[0x1EEE9AC00](v38);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_56_1();
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443BB8, &unk_1CA983A70);
  OUTLINED_FUNCTION_18_0(v41);
  v43 = *(v42 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x1EEE9AC00](v44);
  OUTLINED_FUNCTION_63();
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443950, &unk_1CA982580);
  OUTLINED_FUNCTION_1_0(v45);
  v47 = v46;
  v49 = *(v48 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x1EEE9AC00](v50);
  OUTLINED_FUNCTION_14_5();
  sub_1CA2C9ED0();
  OUTLINED_FUNCTION_41(v1);
  if (v51)
  {
    sub_1CA27080C(v1, &qword_1EC443BB8, &unk_1CA983A70);

    sub_1CA94C218();
    OUTLINED_FUNCTION_204();
    sub_1CA94C178();
    sub_1CA2D9968();
    sub_1CA94BE58();
  }

  else
  {
    OUTLINED_FUNCTION_153();
    v52 = OUTLINED_FUNCTION_197();
    v53(v52);
  }

  OUTLINED_FUNCTION_192();
  sub_1CA94BE28();
  OUTLINED_FUNCTION_201_0();
  OUTLINED_FUNCTION_169();
  OUTLINED_FUNCTION_49(v54, v55, v56);
  if (v51)
  {
    v57 = *(v47 + 8);
    v58 = OUTLINED_FUNCTION_82();
    v59(v58);
    v60 = &qword_1EC443BB0;
    v61 = &qword_1CA982060;
    v62 = v0;
  }

  else
  {
    OUTLINED_FUNCTION_178();
    v63 = OUTLINED_FUNCTION_69();
    v64(v63);
    sub_1CA94C218();
    sub_1CA94BFB8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443C40, &qword_1CA9844E0);
    sub_1CA94BC98();

    OUTLINED_FUNCTION_0_9();
    sub_1CA26F808(v90, v65);
    v66 = OUTLINED_FUNCTION_57_0();
    if (!__swift_getEnumTagSinglePayload(v66, v67, v93))
    {
      (*(v85 + 16))(v89, v91, v93);
      sub_1CA27080C(v91, &qword_1EC443C38, &qword_1CA9820D8);
      v72 = *(v95 + 16);
      v73 = OUTLINED_FUNCTION_61();
      v74(v73);
      OUTLINED_FUNCTION_15_2();
      sub_1CA25C3BC(v75, v76, v77);
      sub_1CA94C088();
      v92 = sub_1CA94BEA8();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443C30, &qword_1CA9820D0);
      sub_1CA94BCE8();
      (*(v87 + 8))(v86, v88);
      v78 = OUTLINED_FUNCTION_85_0();
      v92(v78);
      v79 = *(v85 + 8);
      v80 = OUTLINED_FUNCTION_121();
      v81(v80);
      (*(v95 + 8))(v96, v3);
      v82 = *(v47 + 8);
      v83 = OUTLINED_FUNCTION_82();
      v84(v83);
      goto LABEL_10;
    }

    (*(v95 + 8))(v96, v3);
    v69 = *(v47 + 8);
    v70 = OUTLINED_FUNCTION_82();
    v71(v70);
    v60 = &qword_1EC443C38;
    v61 = &qword_1CA9820D8;
    v62 = v91;
  }

  sub_1CA27080C(v62, v60, v61);
LABEL_10:
  OUTLINED_FUNCTION_36();
}

void sub_1CA2CB6C0()
{
  OUTLINED_FUNCTION_108();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443BE0, &qword_1CA982090);
  v4 = OUTLINED_FUNCTION_1_0(v3);
  v82 = v5;
  v83 = v4;
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_43();
  v81 = v9;
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443BA0, &unk_1CA9844D0);
  OUTLINED_FUNCTION_1_0(v87);
  v84 = v10;
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_43();
  v80 = v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443C38, &qword_1CA9820D8);
  OUTLINED_FUNCTION_18_0(v15);
  v17 = *(v16 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_43();
  v85 = v19;
  v20 = OUTLINED_FUNCTION_25_0();
  v21 = type metadata accessor for LibraryModel(v20);
  v22 = OUTLINED_FUNCTION_18_0(v21);
  v24 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_65_1();
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443BB0, &qword_1CA982060);
  OUTLINED_FUNCTION_18_0(v25);
  v27 = *(v26 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_27();
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443BC0, &unk_1CA983B20);
  v30 = OUTLINED_FUNCTION_1_0(v29);
  v86 = v31;
  v33 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_3_1();
  v79 = v34;
  OUTLINED_FUNCTION_31_2();
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_48_0();
  v88 = v36;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443BB8, &unk_1CA983A70);
  OUTLINED_FUNCTION_18_0(v37);
  v39 = *(v38 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x1EEE9AC00](v40);
  OUTLINED_FUNCTION_145();
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443950, &unk_1CA982580);
  OUTLINED_FUNCTION_1_0(v41);
  v43 = v42;
  v45 = *(v44 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x1EEE9AC00](v46);
  OUTLINED_FUNCTION_14_5();
  sub_1CA2C9ED0();
  v47 = OUTLINED_FUNCTION_80();
  OUTLINED_FUNCTION_49(v47, v48, v41);
  if (v56)
  {
    v49 = &qword_1EC443BB8;
    v50 = &unk_1CA983A70;
    v51 = v0;
LABEL_7:
    sub_1CA27080C(v51, v49, v50);
    sub_1CA2D9AF4();
    v60 = OUTLINED_FUNCTION_127();
    OUTLINED_FUNCTION_28_1(xmmword_1CA982010, v60, v61);
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_153();
  v52 = OUTLINED_FUNCTION_82();
  v53(v52);
  sub_1CA94BE28();
  v54 = OUTLINED_FUNCTION_57_0();
  OUTLINED_FUNCTION_49(v54, v55, v29);
  if (v56)
  {
    v57 = *(v43 + 8);
    v58 = OUTLINED_FUNCTION_125();
    v59(v58);
    v49 = &qword_1EC443BB0;
    v50 = &qword_1CA982060;
    v51 = v1;
    goto LABEL_7;
  }

  (*(v86 + 32))(v88, v1, v29);
  sub_1CA94C218();
  sub_1CA94BFB8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443C40, &qword_1CA9844E0);
  sub_1CA94BC98();

  OUTLINED_FUNCTION_0_9();
  sub_1CA26F808(v2, v62);
  v63 = OUTLINED_FUNCTION_50_0();
  if (__swift_getEnumTagSinglePayload(v63, v64, v87))
  {
    (*(v86 + 8))(v88, v29);
    v66 = *(v43 + 8);
    v67 = OUTLINED_FUNCTION_125();
    v68(v67);
    sub_1CA27080C(v85, &qword_1EC443C38, &qword_1CA9820D8);
  }

  else
  {
    (*(v84 + 16))(v80, v85, v87);
    sub_1CA27080C(v85, &qword_1EC443C38, &qword_1CA9820D8);
    (*(v86 + 16))(v79, v88, v29);
    OUTLINED_FUNCTION_15_2();
    sub_1CA25C3BC(v69, v70, v71);
    sub_1CA94C088();
    v89 = sub_1CA94BEA8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443C30, &qword_1CA9820D0);
    sub_1CA94BCF8();
    (*(v82 + 8))(v81, v83);
    v72 = OUTLINED_FUNCTION_85_0();
    v89(v72);
    v73 = *(v84 + 8);
    v74 = OUTLINED_FUNCTION_105();
    v75(v74);
    (*(v86 + 8))(v88, v29);
    v76 = *(v43 + 8);
    v77 = OUTLINED_FUNCTION_125();
    v78(v77);
  }

LABEL_11:
  OUTLINED_FUNCTION_111();
  OUTLINED_FUNCTION_107();
}

void sub_1CA2CBCD0()
{
  OUTLINED_FUNCTION_108();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443BA0, &unk_1CA9844D0);
  OUTLINED_FUNCTION_1_0(v2);
  v28 = v3;
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_26_4();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443C38, &qword_1CA9820D8);
  OUTLINED_FUNCTION_18_0(v7);
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_25();
  v11 = type metadata accessor for LibraryModel(0);
  v12 = OUTLINED_FUNCTION_18_0(v11);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_5_10();
  OUTLINED_FUNCTION_176();
  sub_1CA2CBF50();
  if (v15)
  {
    sub_1CA2D9AF4();
    v16 = OUTLINED_FUNCTION_127();
    OUTLINED_FUNCTION_28_1(xmmword_1CA982020, v16, v17);
  }

  else
  {
    sub_1CA94C218();
    sub_1CA94BFB8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443C40, &qword_1CA9844E0);
    sub_1CA94BC98();

    OUTLINED_FUNCTION_0_9();
    sub_1CA26F808(v0, v18);
    v19 = OUTLINED_FUNCTION_115_0();
    if (__swift_getEnumTagSinglePayload(v19, v20, v2))
    {
      sub_1CA27080C(v1, &qword_1EC443C38, &qword_1CA9820D8);
    }

    else
    {
      v21 = *(v28 + 16);
      v22 = OUTLINED_FUNCTION_121();
      v23(v22);
      sub_1CA27080C(v1, &qword_1EC443C38, &qword_1CA9820D8);
      sub_1CA94BEA8();
      OUTLINED_FUNCTION_69_1();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443C30, &qword_1CA9820D0);
      sub_1CA94BD08();
      v24 = OUTLINED_FUNCTION_85_0();
      v0(v24);
      v25 = *(v28 + 8);
      v26 = OUTLINED_FUNCTION_187();
      v27(v26);
    }
  }

  OUTLINED_FUNCTION_111();
  OUTLINED_FUNCTION_107();
}

void sub_1CA2CBF50()
{
  OUTLINED_FUNCTION_37_0();
  v5 = v1;
  v7 = v6;
  v128 = v8;
  v114 = v9;
  v113 = v10;
  v127 = *v1;
  v120 = sub_1CA94C168();
  v11 = OUTLINED_FUNCTION_1_0(v120);
  v126 = v12;
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_6_2();
  v119 = v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443BE0, &qword_1CA982090);
  OUTLINED_FUNCTION_1_0(v16);
  v123 = v17;
  v19 = *(v18 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_43();
  v121 = v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443C30, &qword_1CA9820D0);
  OUTLINED_FUNCTION_1_0(v22);
  v111[1] = v23;
  v25 = *(v24 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_25();
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443C90, &qword_1CA982120);
  v28 = OUTLINED_FUNCTION_18_0(v27);
  v30 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_143();
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_48_0();
  v33 = OUTLINED_FUNCTION_19_0(v32);
  v34 = type metadata accessor for LibraryModel(v33);
  v35 = OUTLINED_FUNCTION_18_0(v34);
  v37 = *(v36 + 64);
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_5_10();
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443C38, &qword_1CA9820D8);
  v39 = OUTLINED_FUNCTION_18_0(v38);
  v41 = *(v40 + 64);
  MEMORY[0x1EEE9AC00](v39);
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_142_0();
  MEMORY[0x1EEE9AC00](v42);
  v44 = v111 - v43;
  sub_1CA94C218();
  sub_1CA94BFB8();
  v130 = v128;
  v131 = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443C40, &qword_1CA9844E0);
  sub_1CA94BC98();

  OUTLINED_FUNCTION_0_9();
  sub_1CA26F808(v0, v45);
  v111[0] = v44;
  sub_1CA2D9D20(v44, v2, &qword_1EC443C38, &qword_1CA9820D8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443BA0, &unk_1CA9844D0);
  OUTLINED_FUNCTION_41(v2);
  if (v105)
  {
    sub_1CA27080C(v2, &qword_1EC443C38, &qword_1CA9820D8);
    v46 = v112;
  }

  else
  {
    v46 = v112;
    OUTLINED_FUNCTION_82();
    sub_1CA94BEB8();
    OUTLINED_FUNCTION_34_3();
    v48 = *(v47 + 8);
    v49 = OUTLINED_FUNCTION_106();
    v50(v49);
  }

  v51 = type metadata accessor for LibraryModel.CategoryCollection(0);
  OUTLINED_FUNCTION_160();
  __swift_storeEnumTagSinglePayload(v52, v53, v54, v55);
  sub_1CA2D9D20(v46, v3, &qword_1EC443C90, &qword_1CA982120);
  v56 = OUTLINED_FUNCTION_50_0();
  OUTLINED_FUNCTION_49(v56, v57, v51);
  if (!v105)
  {
    OUTLINED_FUNCTION_155_0();
    v65 = *(v64 + 16);
    v66 = OUTLINED_FUNCTION_116_0();
    v67(v66);
    OUTLINED_FUNCTION_1_9();
    sub_1CA26F808(v3, v68);
    OUTLINED_FUNCTION_79();
    v72 = sub_1CA25C3BC(v69, v70, v71);
    OUTLINED_FUNCTION_95();
    sub_1CA94C9F8();
    v124 = v4;
    v125 = (v123 + 16);
    v115 = v126 + 8;
    v116 = v22;
    v122 = v72;
    v123 += 8;
    v73 = v121;
    v117 = v16;
    v118 = v5;
    while (1)
    {
      OUTLINED_FUNCTION_95();
      sub_1CA94CA58();
      LODWORD(v126) = v132 == v130;
      if (v132 == v130)
      {
LABEL_21:
        OUTLINED_FUNCTION_128();
        (*(v110 + 8))(v4, v22);
        sub_1CA27080C(v112, &qword_1EC443C90, &qword_1CA982120);
        sub_1CA27080C(v111[0], &qword_1EC443C38, &qword_1CA9820D8);
        goto LABEL_22;
      }

      v74 = sub_1CA94CB28();
      (*v125)(v73);
      v74(&v130, 0);
      v129 = v5;
      OUTLINED_FUNCTION_78();
      sub_1CA25C3BC(&qword_1EC443C58, &qword_1EC443C60, &qword_1CA982100);
      sub_1CA2D9B68();
      sub_1CA94BD48();
      if (!v130)
      {
        break;
      }

      v75 = v119;
      sub_1CA94C068();
      v76 = sub_1CA948D28();
      v128 = v111;
      v77 = OUTLINED_FUNCTION_1_0(v76);
      v79 = v78;
      v81 = *(v80 + 64);
      MEMORY[0x1EEE9AC00](v77);
      OUTLINED_FUNCTION_6_0();
      OUTLINED_FUNCTION_65_1();
      v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443BC8, &qword_1CA9834A0);
      OUTLINED_FUNCTION_18_0(v82);
      v84 = *(v83 + 64);
      OUTLINED_FUNCTION_29();
      MEMORY[0x1EEE9AC00](v85);
      OUTLINED_FUNCTION_25();
      sub_1CA94C148();
      OUTLINED_FUNCTION_41(v4);
      if (v105)
      {
        sub_1CA27080C(v4, &qword_1EC443BC8, &qword_1CA9834A0);
        OUTLINED_FUNCTION_131_0();
        sub_1CA94C158();
        OUTLINED_FUNCTION_123_0();
        v86 = OUTLINED_FUNCTION_32_1();
        sub_1CA3780AC(v86, v87, v88, v89);
        v76 = v130;
        v90 = v131;
        v91 = sub_1CA94C3E8();
        v92 = OUTLINED_FUNCTION_18_0(v91);
        v94 = *(v93 + 64);
        MEMORY[0x1EEE9AC00](v92);
        OUTLINED_FUNCTION_6_0();
        OUTLINED_FUNCTION_59_2();
        sub_1CA94C3D8();
        v101 = sub_1CA94C3B8();
        v103 = v95;
        sub_1CA266F2C(v76, v90);
        OUTLINED_FUNCTION_88();
        v96(v75, v120);
        v16 = v117;
        v5 = v118;
        v22 = v116;
        v73 = v121;
        if (!v103)
        {
          break;
        }
      }

      else
      {
        OUTLINED_FUNCTION_200();
        v99 = OUTLINED_FUNCTION_162();
        v100(v99);
        v101 = sub_1CA948CC8();
        v103 = v102;
        (*(v79 + 8))(v16, v76);
        OUTLINED_FUNCTION_88();
        v104(v75, v120);
        OUTLINED_FUNCTION_131_0();
        v16 = v117;
        v5 = v118;
        v22 = v116;
        v73 = v121;
      }

      v105 = v101 == v113 && v103 == v114;
      if (v105)
      {

        v108 = OUTLINED_FUNCTION_99_0();
        v109(v108);
        v4 = v124;
        goto LABEL_21;
      }

      sub_1CA94D7F8();
      OUTLINED_FUNCTION_158();

      v106 = OUTLINED_FUNCTION_99_0();
      v107(v106);
      v4 = v124;
      if (v76)
      {
        goto LABEL_21;
      }

LABEL_18:
      sub_1CA94CA68();
    }

    v97 = OUTLINED_FUNCTION_99_0();
    v98(v97);
    v4 = v124;
    goto LABEL_18;
  }

  OUTLINED_FUNCTION_68_1();
  sub_1CA27080C(v58, v59, v60);
  sub_1CA27080C(v111[0], &qword_1EC443C38, &qword_1CA9820D8);
  OUTLINED_FUNCTION_68_1();
  sub_1CA27080C(v61, v62, v63);
LABEL_22:
  OUTLINED_FUNCTION_36();
}

uint64_t sub_1CA2CC7E0(uint64_t (*a1)(char *), uint64_t a2)
{
  v18 = a1;
  v19 = a2;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443BE0, &qword_1CA982090);
  v4 = *(v17 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v7 = &v14 - v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443C30, &qword_1CA9820D0);
  sub_1CA25C3BC(&qword_1EC443C50, &qword_1EC443C30, &qword_1CA9820D0);
  sub_1CA94C9F8();
  v15 = (v4 + 8);
  v16 = (v4 + 16);
  while (1)
  {
    sub_1CA94CA58();
    v8 = v21;
    if (v21 == v20[0])
    {
      return 0;
    }

    v9 = v2;
    v10 = sub_1CA94CB28();
    v11 = v17;
    (*v16)(v7);
    v10(v20, 0);
    v12 = v18(v7);
    result = (*v15)(v7, v11);
    if (v3)
    {
      return result;
    }

    if (v12)
    {
      break;
    }

    v2 = v9;
    sub_1CA94CA68();
  }

  return v8;
}

uint64_t sub_1CA2CC9F8(uint64_t (*a1)(unint64_t), uint64_t a2, uint64_t a3)
{
  v6 = 0;
  v7 = *(a3 + 16);
  while (1)
  {
    if (v7 == v6)
    {
      return 0;
    }

    v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443950, &unk_1CA982580) - 8);
    result = a1(a3 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v6);
    if (v3)
    {
      return result;
    }

    if (result)
    {
      break;
    }

    ++v6;
  }

  return v6;
}

void sub_1CA2CCAF8()
{
  OUTLINED_FUNCTION_37_0();
  v1 = v0;
  v2 = sub_1CA94C168();
  v3 = OUTLINED_FUNCTION_18_0(v2);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_71();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443950, &unk_1CA982580);
  OUTLINED_FUNCTION_1_0(v6);
  v8 = v7;
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_27();

  sub_1CA94C218();
  OUTLINED_FUNCTION_194_0();
  sub_1CA94C178();
  sub_1CA2D9968();
  sub_1CA94BE58();
  if (v1)
  {
    v12 = sub_1CA94BFA8();
    v13 = OUTLINED_FUNCTION_117();
    v14 = *(type metadata accessor for LibraryModel(v13) + 20);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443BA8, &unk_1CA983A80);
    OUTLINED_FUNCTION_106();
    sub_1CA94BD88();
  }

  else
  {
    v12 = sub_1CA94BFA8();
    v15 = OUTLINED_FUNCTION_117();
    v16 = *(type metadata accessor for LibraryModel(v15) + 20);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443BA8, &unk_1CA983A80);
    OUTLINED_FUNCTION_106();
    sub_1CA94BD78();
  }

  v17 = OUTLINED_FUNCTION_85_0();
  v12(v17);
  v18 = *(v8 + 8);
  v19 = OUTLINED_FUNCTION_69();
  v20(v19);
  OUTLINED_FUNCTION_36();
}

void sub_1CA2CCCCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_108();
  a19 = v21;
  a20 = v22;
  v291 = v23;
  v292[1] = v24;
  v26 = v25;
  v308 = v20;
  v305[1] = *v20;
  v300 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443C30, &qword_1CA9820D0);
  OUTLINED_FUNCTION_1_0(v300);
  v270[3] = v27;
  v29 = *(v28 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_44_0(v31);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443BB0, &qword_1CA982060);
  OUTLINED_FUNCTION_18_0(v32);
  v34 = *(v33 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_44_0(v36);
  v283 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443BC0, &unk_1CA983B20);
  v37 = OUTLINED_FUNCTION_1_0(v283);
  v307 = v38;
  v40 = *(v39 + 64);
  MEMORY[0x1EEE9AC00](v37);
  OUTLINED_FUNCTION_3_1();
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v41);
  OUTLINED_FUNCTION_48_0();
  v43 = OUTLINED_FUNCTION_19_0(v42);
  v280 = type metadata accessor for LibraryModel(v43);
  v44 = OUTLINED_FUNCTION_52(v280);
  v46 = *(v45 + 64);
  MEMORY[0x1EEE9AC00](v44);
  OUTLINED_FUNCTION_3_1();
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v47);
  OUTLINED_FUNCTION_45_0();
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v48);
  OUTLINED_FUNCTION_45_0();
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v49);
  OUTLINED_FUNCTION_48_0();
  OUTLINED_FUNCTION_44_0(v50);
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443BE0, &qword_1CA982090);
  v52 = OUTLINED_FUNCTION_1_0(v51);
  v54 = v53;
  v56 = *(v55 + 64);
  MEMORY[0x1EEE9AC00](v52);
  OUTLINED_FUNCTION_3_1();
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v57);
  OUTLINED_FUNCTION_48_0();
  v302 = v58;
  v59 = OUTLINED_FUNCTION_25_0();
  v60 = type metadata accessor for LibraryModel.CategoryCollection(v59);
  v61 = OUTLINED_FUNCTION_18_0(v60);
  v63 = *(v62 + 64);
  MEMORY[0x1EEE9AC00](v61);
  OUTLINED_FUNCTION_3_1();
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v64);
  OUTLINED_FUNCTION_48_0();
  v301 = v65;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443BA0, &unk_1CA9844D0);
  v67 = OUTLINED_FUNCTION_1_0(v66);
  v69 = v68;
  v71 = *(v70 + 64);
  MEMORY[0x1EEE9AC00](v67);
  OUTLINED_FUNCTION_3_1();
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v72);
  OUTLINED_FUNCTION_48_0();
  OUTLINED_FUNCTION_44_0(v73);
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443C38, &qword_1CA9820D8);
  v75 = OUTLINED_FUNCTION_18_0(v74);
  v77 = *(v76 + 64);
  MEMORY[0x1EEE9AC00](v75);
  OUTLINED_FUNCTION_3_1();
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v78);
  OUTLINED_FUNCTION_45_0();
  OUTLINED_FUNCTION_9();
  v80 = MEMORY[0x1EEE9AC00](v79);
  v82 = v270 - v81;
  MEMORY[0x1EEE9AC00](v80);
  OUTLINED_FUNCTION_45_0();
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v83);
  v85 = v270 - v84;
  v292[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443C40, &qword_1CA9844E0);
  OUTLINED_FUNCTION_1_0(v292[0]);
  v87 = v86;
  v89 = *(v88 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x1EEE9AC00](v90);
  OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_19_0(v91);
  v295 = sub_1CA94C168();
  v92 = OUTLINED_FUNCTION_1_0(v295);
  v94 = v93;
  v96 = *(v95 + 64);
  MEMORY[0x1EEE9AC00](v92);
  OUTLINED_FUNCTION_3_1();
  v304 = v97;
  OUTLINED_FUNCTION_31_2();
  MEMORY[0x1EEE9AC00](v98);
  OUTLINED_FUNCTION_48_0();
  OUTLINED_FUNCTION_44_0(v99);
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443BB8, &unk_1CA983A70);
  v101 = OUTLINED_FUNCTION_18_0(v100);
  v103 = *(v102 + 64);
  MEMORY[0x1EEE9AC00](v101);
  OUTLINED_FUNCTION_3_1();
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v104);
  OUTLINED_FUNCTION_48_0();
  OUTLINED_FUNCTION_44_0(v105);
  v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443950, &unk_1CA982580);
  OUTLINED_FUNCTION_1_0(v106);
  v108 = *(v107 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x1EEE9AC00](v109);
  OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_44_0(v110);
  v286[1] = v26 + 4;
  v288 = v26[2];
  v278 = v111 + 32;
  v286[0] = v87 + 8;
  v113 = v112;
  v282 = v69 + 16;
  v281 = (v69 + 8);
  OUTLINED_FUNCTION_168();
  v305[0] = v54 + 16;
  v294 = (v94 + 8);
  v306 = (v54 + 8);
  v114 = v51;
  v115 = v66;
  v285 = v116 + 8;
  v273 = v307 + 4;
  v272 = v307 + 1;
  v270[9] = v307 + 2;
  v284 = v66;
  v299 = v51;
  v289 = v85;
  v290 = v117;
  v274 = v82;
  while (1)
  {
    OUTLINED_FUNCTION_150_1();
    if (v119 == v118)
    {
      break;
    }

    OUTLINED_FUNCTION_174();
    v292[3] = v120;
    v122 = (v121 + 16 * v120);
    v123 = *v122;
    v124 = v122[1];
    sub_1CA94C218();
    OUTLINED_FUNCTION_58_1(&v313);
    sub_1CA2C9ED0();
    OUTLINED_FUNCTION_40_1(v66);
    v303 = v124;
    v297 = v123;
    if (v189)
    {
      v26 = &qword_1EC443BB8;
      sub_1CA27080C(v66, &qword_1EC443BB8, &unk_1CA983A70);
      v310 = MEMORY[0x1E69E7CC8];
      sub_1CA94C218();

      OUTLINED_FUNCTION_58_1(v305);
      sub_1CA94C178();
      sub_1CA2D9968();
      OUTLINED_FUNCTION_156();
      OUTLINED_FUNCTION_96_0(&a18);
      sub_1CA94BE58();
      v125 = v279;
      OUTLINED_FUNCTION_46();
      __swift_storeEnumTagSinglePayload(v126, v127, v128, v113);
      sub_1CA94BFA8();
      OUTLINED_FUNCTION_69_1();
      v129 = *(v280 + 20);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443BA8, &unk_1CA983A80);
      v85 = v289;
      v133 = v284;
      OUTLINED_FUNCTION_120();
      sub_1CA94BD78();
      sub_1CA27080C(v125, &qword_1EC443BB8, &unk_1CA983A70);
      v130 = OUTLINED_FUNCTION_11_7();
      (v66)(v130);
      v132 = v301;
    }

    else
    {
      OUTLINED_FUNCTION_38_1(&v303);
      v131(v293, v66, v113);
      v132 = v301;
      v133 = v115;
    }

    OUTLINED_FUNCTION_118();
    v292[2] = v134 + 1;
    swift_getKeyPath();
    OUTLINED_FUNCTION_168();
    sub_1CA94C218();
    OUTLINED_FUNCTION_96_0(&a9);
    sub_1CA94BF98();

    OUTLINED_FUNCTION_22_3();
    v66 = v292[0];
    sub_1CA94BC98();

    OUTLINED_FUNCTION_38_1(&v312);
    v135 = OUTLINED_FUNCTION_130();
    v136(v135);
    v137 = OUTLINED_FUNCTION_57_0();
    if (__swift_getEnumTagSinglePayload(v137, v138, v133))
    {

      sub_1CA27080C(v85, &qword_1EC443C38, &qword_1CA9820D8);
LABEL_46:
      OUTLINED_FUNCTION_58_1(&v309);
      v195 = v290;
      sub_1CA94BE28();
      v196 = OUTLINED_FUNCTION_80();
      v197 = v283;
      OUTLINED_FUNCTION_49(v196, v198, v283);
      if (!v189)
      {
        OUTLINED_FUNCTION_38_1(&v297);
        v201 = v275;
        v202 = OUTLINED_FUNCTION_95();
        v203(v202);
        sub_1CA94C218();
        OUTLINED_FUNCTION_58_1(&v299);
        sub_1CA94BFB8();
        OUTLINED_FUNCTION_22_3();
        OUTLINED_FUNCTION_165_0(&v298);
        OUTLINED_FUNCTION_167();

        OUTLINED_FUNCTION_0_9();
        sub_1CA26F808(v66, v204);
        v205 = OUTLINED_FUNCTION_57_0();
        v115 = v133;
        if (__swift_getEnumTagSinglePayload(v205, v206, v133))
        {
          OUTLINED_FUNCTION_38_1(&v296);
          v208 = OUTLINED_FUNCTION_151_0();
          v209(v208);
          v210 = OUTLINED_FUNCTION_18_5();
          v113 = *(v211 - 256);
          v212(v210, v113);
          sub_1CA27080C(v85, &qword_1EC443C38, &qword_1CA9820D8);
        }

        else
        {
          OUTLINED_FUNCTION_38_1(&v307);
          v213(v271, v85, v133);
          sub_1CA27080C(v85, &qword_1EC443C38, &qword_1CA9820D8);
          OUTLINED_FUNCTION_38_1(v292);
          v214 = OUTLINED_FUNCTION_113();
          v215(v214, v201, v197);
          OUTLINED_FUNCTION_15_2();
          sub_1CA25C3BC(&qword_1EC443C48, &qword_1EC443BC0, &unk_1CA983B20);
          v216 = v270[10];
          sub_1CA94C088();
          sub_1CA94BEA8();
          OUTLINED_FUNCTION_69_1();
          sub_1CA94BCF8();
          (*v306)(v216, v299);
          v217 = OUTLINED_FUNCTION_11_7();
          (v66)(v217);
          OUTLINED_FUNCTION_38_1(&v306);
          v218 = OUTLINED_FUNCTION_104();
          v219(v218);
          OUTLINED_FUNCTION_38_1(&v296);
          v220 = OUTLINED_FUNCTION_151_0();
          v114 = v299;
          v221(v220);
          v222 = OUTLINED_FUNCTION_18_5();
          v113 = *(v223 - 256);
          v224(v222, v113);
        }

        OUTLINED_FUNCTION_128();
        goto LABEL_58;
      }

      v199 = OUTLINED_FUNCTION_24_4(&v311);
      v200(v199);
      sub_1CA27080C(v66, &qword_1EC443BB0, &qword_1CA982060);
      OUTLINED_FUNCTION_128();
      v113 = v195;
      v115 = v133;
    }

    else
    {
      OUTLINED_FUNCTION_196();
      v140 = *v139;
      v141 = OUTLINED_FUNCTION_113();
      v276 = v142;
      (v142)(v141, v85, v133);
      sub_1CA27080C(v85, &qword_1EC443C38, &qword_1CA9820D8);
      sub_1CA94BEB8();
      v143 = *v281;
      v144 = OUTLINED_FUNCTION_119();
      v277 = v145;
      (v145)(v144);
      OUTLINED_FUNCTION_79();
      v26 = sub_1CA25C3BC(&qword_1EC443C50, &qword_1EC443C30, &qword_1CA9820D0);
      sub_1CA94C9F8();
      v298 = v26;
      while (1)
      {
        sub_1CA94CA58();
        v146 = a10;
        if (a10 == v310)
        {
          OUTLINED_FUNCTION_1_9();
          sub_1CA26F808(v132, v194);

          OUTLINED_FUNCTION_168();
          v133 = v284;
          v85 = v289;
          goto LABEL_46;
        }

        v147 = sub_1CA94CB28();
        v148 = OUTLINED_FUNCTION_67_1();
        v149(v148);
        v150 = OUTLINED_FUNCTION_11_7();
        v147(v150);
        v310 = v308;
        OUTLINED_FUNCTION_78();
        v66 = sub_1CA25C3BC(&qword_1EC443C58, &qword_1EC443C60, &qword_1CA982100);
        sub_1CA2D9B68();
        sub_1CA94BD48();
        if (!v309)
        {
          goto LABEL_42;
        }

        v296 = v146;

        v151 = v304;
        sub_1CA94C068();
        v152 = sub_1CA948D28();
        v307 = v270;
        v153 = OUTLINED_FUNCTION_1_0(v152);
        v155 = v154;
        v157 = *(v156 + 64);
        MEMORY[0x1EEE9AC00](v153);
        OUTLINED_FUNCTION_6_0();
        OUTLINED_FUNCTION_65_1();
        v158 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443BC8, &qword_1CA9834A0);
        OUTLINED_FUNCTION_18_0(v158);
        v160 = *(v159 + 64);
        OUTLINED_FUNCTION_29();
        MEMORY[0x1EEE9AC00](v161);
        OUTLINED_FUNCTION_145();
        sub_1CA94C148();
        OUTLINED_FUNCTION_40_1(v66);
        if (v189)
        {
          sub_1CA27080C(v66, &qword_1EC443BC8, &qword_1CA9834A0);
          OUTLINED_FUNCTION_131_0();
          v162 = sub_1CA94C158();
          v164 = v163;
          v66 = v163 >> 62;
          v170 = v162;
          v165 = 0;
          v166 = v162;
          v167 = v162 >> 32;
          v168 = 0;
          switch(v66)
          {
            case 1:
              v165 = v162 >> 32;
              v168 = v162;
              break;
            case 2:
              v168 = *(v162 + 16);
              v165 = *(v162 + 24);
              break;
            case 3:
              break;
            default:
              v168 = 0;
              v165 = BYTE6(v164);
              break;
          }

          if (!sub_1CA2D9A24(v168, v165, v162, v164))
          {
            v26 = v298;
            switch(v66)
            {
              case 0:
              case 1:
              case 3:
                goto LABEL_33;
              case 2:
                OUTLINED_FUNCTION_186();
                goto LABEL_33;
              default:
                goto LABEL_71;
            }
          }

          v176 = v168 + 1;
          if (__OFADD__(v168, 1))
          {
            goto LABEL_68;
          }

          v177 = 0;
          v178 = 0;
          switch(v66)
          {
            case 1:
              v177 = v167;
              v178 = v166;
              break;
            case 2:
              v178 = *(v170 + 16);
              v177 = *(v170 + 24);
              break;
            case 3:
              break;
            default:
              v178 = 0;
              v177 = BYTE6(v164);
              break;
          }

          if (v177 < v176 || v176 < v178)
          {
            goto LABEL_69;
          }

          OUTLINED_FUNCTION_124_0();
          v26 = v298;
          switch(v182)
          {
            case 1:
              v181 = v167;
              break;
            case 2:
              v181 = *(v170 + 24);
              break;
            case 3:
              break;
            default:
              v181 = BYTE6(v164);
              break;
          }

          if (v181 < v180)
          {
            __break(1u);
LABEL_68:
            __break(1u);
LABEL_69:
            __break(1u);
LABEL_70:
            __break(1u);
LABEL_71:
            JUMPOUT(0);
          }

LABEL_33:
          v133 = sub_1CA948BE8();
          sub_1CA266F2C(v170, v164);
          v183 = sub_1CA94C3E8();
          v184 = OUTLINED_FUNCTION_18_0(v183);
          v186 = *(v185 + 64);
          MEMORY[0x1EEE9AC00](v184);
          OUTLINED_FUNCTION_5_10();
          sub_1CA94C3D8();
          OUTLINED_FUNCTION_162();
          sub_1CA94C3B8();
          OUTLINED_FUNCTION_69_1();
          v187 = OUTLINED_FUNCTION_162();
          sub_1CA266F2C(v187, v188);
          (*v294)(v304, v295);
          if (!v170)
          {
            v114 = v299;
            v132 = v301;
LABEL_42:
            v192 = OUTLINED_FUNCTION_67_1();
            v193(v192, v114);
            goto LABEL_43;
          }

          v114 = v299;
          v132 = v301;
          v174 = v303;
          v175 = v297;
        }

        else
        {
          OUTLINED_FUNCTION_178();
          v169(v133, v66, v152);
          v170 = v133;
          sub_1CA948CC8();
          OUTLINED_FUNCTION_69_1();
          v171 = *(v155 + 8);
          v172 = OUTLINED_FUNCTION_194_0();
          v173(v172);
          (*v294)(v151, v295);
          OUTLINED_FUNCTION_131_0();
          v114 = v299;
          v132 = v301;
          v174 = v303;
          v175 = v297;
          v26 = v298;
        }

        v189 = v66 == v175 && v170 == v174;
        if (v189)
        {
          break;
        }

        OUTLINED_FUNCTION_23();
        sub_1CA94D7F8();
        OUTLINED_FUNCTION_158();

        v190 = OUTLINED_FUNCTION_67_1();
        v191(v190, v114);
        if (v66)
        {
          goto LABEL_54;
        }

LABEL_43:
        sub_1CA94CA68();
      }

      v225 = OUTLINED_FUNCTION_67_1();
      v226(v225, v114);
LABEL_54:

      OUTLINED_FUNCTION_1_9();
      sub_1CA26F808(v132, v227);
      OUTLINED_FUNCTION_168();
      sub_1CA94C218();
      OUTLINED_FUNCTION_58_1(&v293);
      sub_1CA94BFB8();
      OUTLINED_FUNCTION_22_3();
      v228 = v270[12];
      OUTLINED_FUNCTION_167();

      OUTLINED_FUNCTION_0_9();
      sub_1CA26F808(v66, v229);
      v230 = OUTLINED_FUNCTION_109();
      v115 = v284;
      if (__swift_getEnumTagSinglePayload(v230, v231, v284))
      {
        v232 = OUTLINED_FUNCTION_18_5();
        v66 = *(v233 - 256);
        v234(v232, v66);
        sub_1CA27080C(v228, &qword_1EC443C38, &qword_1CA9820D8);
      }

      else
      {
        v235 = v271;
        OUTLINED_FUNCTION_196();
        v276();
        sub_1CA27080C(v228, &qword_1EC443C38, &qword_1CA9820D8);
        sub_1CA94BEA8();
        OUTLINED_FUNCTION_69_1();
        sub_1CA94BCC8();
        v236 = OUTLINED_FUNCTION_11_7();
        (v66)(v236);
        v237 = v235;
        v114 = v299;
        v277(v237, v115);
        v238 = OUTLINED_FUNCTION_18_5();
        v66 = *(v239 - 256);
        v240(v238, v66);
      }

      OUTLINED_FUNCTION_128();
      v113 = v66;
LABEL_58:
      v85 = v289;
    }
  }

  sub_1CA94C218();
  OUTLINED_FUNCTION_58_1(&v289);
  sub_1CA94BFB8();
  OUTLINED_FUNCTION_22_3();
  OUTLINED_FUNCTION_179(&v288);
  OUTLINED_FUNCTION_167();

  OUTLINED_FUNCTION_0_9();
  sub_1CA26F808(v66, v241);
  v242 = OUTLINED_FUNCTION_83();
  if (__swift_getEnumTagSinglePayload(v242, v243, v115))
  {
    sub_1CA27080C(v113, &qword_1EC443C38, &qword_1CA9820D8);
    v244 = 0;
    v245 = v115;
  }

  else
  {
    OUTLINED_FUNCTION_38_1(&v307);
    v246 = OUTLINED_FUNCTION_113();
    v247(v246, v113, v115);
    sub_1CA27080C(v113, &qword_1EC443C38, &qword_1CA9820D8);
    OUTLINED_FUNCTION_58_1(v286);
    sub_1CA94BEB8();
    v248 = OUTLINED_FUNCTION_24_4(&v306);
    v249(v248);
    v245 = v115;
    OUTLINED_FUNCTION_165_0(&v287);
    v251 = *(v250 + 16);
    v252 = OUTLINED_FUNCTION_3_3();
    v253(v252);
    OUTLINED_FUNCTION_1_9();
    sub_1CA26F808(v66, v254);
    v244 = sub_1CA94BCD8();
    v255 = *(v85 + 1);
    v85 += 8;
    v256 = OUTLINED_FUNCTION_61();
    v257(v256);
  }

  sub_1CA94C218();
  OUTLINED_FUNCTION_165_0(&v291);
  sub_1CA94BFB8();
  OUTLINED_FUNCTION_22_3();
  OUTLINED_FUNCTION_181(&v290);
  sub_1CA94BC98();

  OUTLINED_FUNCTION_0_9();
  sub_1CA26F808(v85, v258);
  v259 = OUTLINED_FUNCTION_87_0();
  if (__swift_getEnumTagSinglePayload(v259, v260, v245))
  {
    sub_1CA27080C(v26, &qword_1EC443C38, &qword_1CA9820D8);
  }

  else
  {
    OUTLINED_FUNCTION_38_1(&v307);
    v261 = v271;
    v262 = OUTLINED_FUNCTION_72_0();
    v263(v262);
    sub_1CA27080C(v26, &qword_1EC443C38, &qword_1CA9820D8);
    OUTLINED_FUNCTION_150_1();
    v265 = __OFSUB__(v244, v264);
    v266 = v244 - v264;
    if (v265)
    {
      goto LABEL_70;
    }

    v267 = sub_1CA94BEA8();
    sub_1CA2CE228(v266);
    v268 = OUTLINED_FUNCTION_53_1();
    v267(v268);
    OUTLINED_FUNCTION_38_1(&v306);
    v269(v261, v245);
  }

  OUTLINED_FUNCTION_107();
}

uint64_t sub_1CA2CE228(uint64_t result)
{
  if (result)
  {
    if (result < 0)
    {
      __break(1u);
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443C30, &qword_1CA9820D0);
      sub_1CA25C3BC(&qword_1EC443C68, &qword_1EC443C30, &qword_1CA9820D0);
      result = sub_1CA94CB48();
      if (result)
      {
        return result;
      }

      sub_1CA25C3BC(&qword_1EC443C50, &qword_1EC443C30, &qword_1CA9820D0);
      sub_1CA94CA58();
      sub_1CA94C9F8();
      sub_1CA25C3BC(&qword_1EC443C70, &qword_1EC443C30, &qword_1CA9820D0);
      result = sub_1CA94C2E8();
      if (v2)
      {
LABEL_10:
        __break(1u);
        return result;
      }

      if (v3 >= v1)
      {
        return sub_1CA94CB38();
      }
    }

    __break(1u);
    goto LABEL_10;
  }

  return result;
}

void sub_1CA2CE3AC()
{
  OUTLINED_FUNCTION_108();
  v4 = sub_1CA94C168();
  v5 = OUTLINED_FUNCTION_18_0(v4);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_71();
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443950, &unk_1CA982580);
  OUTLINED_FUNCTION_1_0(v28);
  v9 = v8;
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_26_4();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443BE8, &qword_1CA982098);
  OUTLINED_FUNCTION_18_0(v13);
  v15 = *(v14 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_145();
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443BF0, &qword_1CA9820A0);
  OUTLINED_FUNCTION_52(v17);
  v19 = *(v18 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_20_3();
  sub_1CA2CA09C();
  OUTLINED_FUNCTION_40_1(v0);
  if (v21)
  {
    sub_1CA27080C(v0, &qword_1EC443BE8, &qword_1CA982098);
    sub_1CA2D9AF4();
    v22 = OUTLINED_FUNCTION_127();
    *v23 = 0;
    v23[1] = 0;
    OUTLINED_FUNCTION_52_1(v22, v23);
  }

  else
  {
    sub_1CA2D9CD4(v0, v3, &qword_1EC443BF0, &qword_1CA9820A0);

    sub_1CA94C218();
    sub_1CA94C178();
    sub_1CA2D9968();
    sub_1CA94BE58();
    sub_1CA94BFA8();
    OUTLINED_FUNCTION_69_1();
    v24 = v1 + *(type metadata accessor for LibraryModel(0) + 20);
    v25 = OUTLINED_FUNCTION_122_0();
    sub_1CA2CE63C(v25, v26);
    v27 = OUTLINED_FUNCTION_85_0();
    v0(v27);
    (*(v9 + 8))(v2, v28);
    sub_1CA27080C(v3, &qword_1EC443BF0, &qword_1CA9820A0);
  }

  OUTLINED_FUNCTION_111();
  OUTLINED_FUNCTION_107();
}

uint64_t sub_1CA2CE63C(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443950, &unk_1CA982580);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v17 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443BB8, &unk_1CA983A70);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v17 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443BF0, &qword_1CA9820A0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = &v17 - v14;
  sub_1CA2D9D20(a2, &v17 - v14, &qword_1EC443BF0, &qword_1CA9820A0);
  if (__swift_getEnumTagSinglePayload(v15, 1, v3) == 1)
  {
    __swift_storeEnumTagSinglePayload(v11, 1, 1, v3);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443BA8, &unk_1CA983A80);
    sub_1CA94BD78();
    return sub_1CA27080C(v11, &qword_1EC443BB8, &unk_1CA983A70);
  }

  else
  {
    (*(v4 + 32))(v7, v15, v3);
    (*(v4 + 16))(v11, v7, v3);
    __swift_storeEnumTagSinglePayload(v11, 0, 1, v3);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443BA8, &unk_1CA983A80);
    sub_1CA94BD78();
    sub_1CA27080C(v11, &qword_1EC443BB8, &unk_1CA983A70);
    return (*(v4 + 8))(v7, v3);
  }
}

void sub_1CA2CE8CC()
{
  OUTLINED_FUNCTION_108();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443BB8, &unk_1CA983A70);
  v3 = OUTLINED_FUNCTION_18_0(v2);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_142_0();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_97();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443950, &unk_1CA982580);
  OUTLINED_FUNCTION_1_0(v7);
  v9 = v8;
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_14_5();
  OUTLINED_FUNCTION_94();
  sub_1CA2C9ED0();
  v13 = OUTLINED_FUNCTION_81();
  OUTLINED_FUNCTION_49(v13, v14, v7);
  if (v15)
  {
    sub_1CA27080C(v1, &qword_1EC443BB8, &unk_1CA983A70);
    sub_1CA2D9AF4();
    v16 = OUTLINED_FUNCTION_127();
    OUTLINED_FUNCTION_28_1(xmmword_1CA982010, v16, v17);
  }

  else
  {
    OUTLINED_FUNCTION_178();
    v18 = OUTLINED_FUNCTION_126();
    v19(v18);
    v20 = OUTLINED_FUNCTION_35_1();
    __swift_storeEnumTagSinglePayload(v20, v21, v22, v7);
    v23 = sub_1CA94BFA8();
    v24 = OUTLINED_FUNCTION_117();
    v25 = *(type metadata accessor for LibraryModel(v24) + 20);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443BA8, &unk_1CA983A80);
    OUTLINED_FUNCTION_136_0();
    sub_1CA94BD78();
    sub_1CA27080C(v0, &qword_1EC443BB8, &unk_1CA983A70);
    v26 = OUTLINED_FUNCTION_85_0();
    v23(v26);
    v27 = *(v9 + 8);
    v28 = OUTLINED_FUNCTION_104();
    v29(v28);
  }

  OUTLINED_FUNCTION_111();
  OUTLINED_FUNCTION_107();
}

void sub_1CA2CEAC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_108();
  a19 = v25;
  a20 = v26;
  v401 = v22;
  v443 = v27;
  v441 = v28;
  v416 = v29;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443BB8, &unk_1CA983A70);
  v31 = OUTLINED_FUNCTION_18_0(v30);
  v33 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_3_1();
  v440 = v34;
  OUTLINED_FUNCTION_31_2();
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_45_0();
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_48_0();
  OUTLINED_FUNCTION_19_0(v37);
  v424 = sub_1CA94C168();
  v38 = OUTLINED_FUNCTION_1_0(v424);
  v418 = v39;
  v41 = *(v40 + 64);
  MEMORY[0x1EEE9AC00](v38);
  OUTLINED_FUNCTION_3_1();
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v42);
  OUTLINED_FUNCTION_45_0();
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v43);
  OUTLINED_FUNCTION_48_0();
  OUTLINED_FUNCTION_44_0(v44);
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443BB0, &qword_1CA982060);
  v46 = OUTLINED_FUNCTION_18_0(v45);
  v48 = *(v47 + 64);
  MEMORY[0x1EEE9AC00](v46);
  OUTLINED_FUNCTION_3_1();
  v433 = v49;
  OUTLINED_FUNCTION_31_2();
  MEMORY[0x1EEE9AC00](v50);
  OUTLINED_FUNCTION_48_0();
  v431 = v51;
  v403 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443C80, &qword_1CA982110);
  v52 = OUTLINED_FUNCTION_1_0(v403);
  v404 = v53;
  v55 = *(v54 + 64);
  MEMORY[0x1EEE9AC00](v52);
  OUTLINED_FUNCTION_3_1();
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v56);
  OUTLINED_FUNCTION_48_0();
  OUTLINED_FUNCTION_44_0(v57);
  v442 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443950, &unk_1CA982580);
  v58 = OUTLINED_FUNCTION_1_0(v442);
  v437 = v59;
  v61 = *(v60 + 64);
  MEMORY[0x1EEE9AC00](v58);
  OUTLINED_FUNCTION_3_1();
  v435 = v62;
  OUTLINED_FUNCTION_31_2();
  MEMORY[0x1EEE9AC00](v63);
  OUTLINED_FUNCTION_45_0();
  v432 = v64;
  OUTLINED_FUNCTION_31_2();
  MEMORY[0x1EEE9AC00](v65);
  OUTLINED_FUNCTION_45_0();
  v429 = v66;
  OUTLINED_FUNCTION_31_2();
  MEMORY[0x1EEE9AC00](v67);
  OUTLINED_FUNCTION_45_0();
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v68);
  OUTLINED_FUNCTION_45_0();
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v69);
  OUTLINED_FUNCTION_45_0();
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v70);
  OUTLINED_FUNCTION_48_0();
  OUTLINED_FUNCTION_172(v71);
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443BA8, &unk_1CA983A80);
  v73 = OUTLINED_FUNCTION_1_0(v72);
  v75 = v74;
  v77 = *(v76 + 64);
  MEMORY[0x1EEE9AC00](v73);
  OUTLINED_FUNCTION_3_1();
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v78);
  OUTLINED_FUNCTION_139_0();
  v79 = type metadata accessor for LibraryModel(0);
  v80 = OUTLINED_FUNCTION_52(v79);
  v82 = *(v81 + 64);
  MEMORY[0x1EEE9AC00](v80);
  OUTLINED_FUNCTION_5_10();
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443BE8, &qword_1CA982098);
  OUTLINED_FUNCTION_18_0(v83);
  v85 = *(v84 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x1EEE9AC00](v86);
  OUTLINED_FUNCTION_14_5();
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443BF0, &qword_1CA9820A0);
  v88 = OUTLINED_FUNCTION_52(v87);
  v90 = *(v89 + 64);
  MEMORY[0x1EEE9AC00](v88);
  OUTLINED_FUNCTION_3_1();
  v434 = v91;
  OUTLINED_FUNCTION_31_2();
  MEMORY[0x1EEE9AC00](v92);
  OUTLINED_FUNCTION_45_0();
  v427[1] = v93;
  OUTLINED_FUNCTION_31_2();
  MEMORY[0x1EEE9AC00](v94);
  OUTLINED_FUNCTION_45_0();
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v95);
  OUTLINED_FUNCTION_45_0();
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v96);
  OUTLINED_FUNCTION_45_0();
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v97);
  v99 = &v399 - v98;
  sub_1CA2CA09C();
  v100 = OUTLINED_FUNCTION_83();
  OUTLINED_FUNCTION_49(v100, v101, v87);
  if (v138)
  {
    sub_1CA27080C(v23, &qword_1EC443BE8, &qword_1CA982098);
    sub_1CA2D9AF4();
    v102 = OUTLINED_FUNCTION_127();
    *v103 = 0;
    v103[1] = 0;
    OUTLINED_FUNCTION_52_1(v102, v103);
LABEL_144:
    OUTLINED_FUNCTION_111();
    OUTLINED_FUNCTION_107();
    return;
  }

  v104 = OUTLINED_FUNCTION_197();
  sub_1CA2D9CD4(v104, v105, v106, v107);
  v436 = v21;
  sub_1CA94BFB8();
  v439 = v79;
  (*(v75 + 16))(v24, v20 + *(v79 + 20), v72);
  OUTLINED_FUNCTION_0_9();
  sub_1CA26F808(v20, v108);
  v109 = sub_1CA2D0860(v99);
  v110 = *(v75 + 8);
  v441 = v72;
  v407 = v75 + 8;
  v406 = v110;
  (v110)(v24, v72);
  v111 = *(v109 + 16);
  v112 = v442;
  v438 = v99;
  if (v111)
  {
    OUTLINED_FUNCTION_135(v437[2]);
    v114 = *(v113 + 64);
    OUTLINED_FUNCTION_68_0();
    v414 = v109;
    v116 = v109 + v115;
    v419 = v418 + 8;
    OUTLINED_FUNCTION_132(v117 - 8);
    v443 = MEMORY[0x1E69E7CC0];
    v428 = v118;
    v426 = *(v118 + 56);
    v119 = v430;
    v120 = v431;
    while (1)
    {
      OUTLINED_FUNCTION_163_0();
      v121();
      v122 = v119;
      sub_1CA94BE28();
      v123 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443BC0, &unk_1CA983B20);
      v124 = OUTLINED_FUNCTION_83();
      OUTLINED_FUNCTION_49(v124, v125, v123);
      if (v138)
      {
        OUTLINED_FUNCTION_38_1(&a17);
        v126(v122, v112);
        sub_1CA27080C(v120, &qword_1EC443BB0, &qword_1CA982060);
        v119 = v122;
      }

      else
      {
        v425 = v123;
        OUTLINED_FUNCTION_192();
        sub_1CA94BE88();
        v127 = sub_1CA948D28();
        v423 = &v399;
        v128 = OUTLINED_FUNCTION_1_0(v127);
        v421 = v129;
        v131 = *(v130 + 64);
        MEMORY[0x1EEE9AC00](v128);
        OUTLINED_FUNCTION_6_0();
        v132 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443BC8, &qword_1CA9834A0);
        v422 = &v399;
        OUTLINED_FUNCTION_18_0(v132);
        v134 = *(v133 + 64);
        OUTLINED_FUNCTION_29();
        MEMORY[0x1EEE9AC00](v135);
        OUTLINED_FUNCTION_56_1();
        sub_1CA94C148();
        v136 = OUTLINED_FUNCTION_50_0();
        OUTLINED_FUNCTION_49(v136, v137, v127);
        if (!v138)
        {
          OUTLINED_FUNCTION_58_1(&a11);
          v154 = *(v153 + 32);
          v155 = OUTLINED_FUNCTION_152();
          v156(v155);
          OUTLINED_FUNCTION_100(&a12);
          v157 = sub_1CA948CC8();
          v159 = v158;
          v160 = OUTLINED_FUNCTION_151_0();
          v161(v160);
          OUTLINED_FUNCTION_100(&a13);
          OUTLINED_FUNCTION_38_1(&a9);
          v162 = v442;
          v163 = v425;
LABEL_13:
          OUTLINED_FUNCTION_199();
          v164();
          OUTLINED_FUNCTION_38_1(&a17);
          v112 = v162;
          v165(v430, v162);
          OUTLINED_FUNCTION_34_3();
          (*(v166 + 8))(v431, v163);
          if (swift_isUniquelyReferenced_nonNull_native())
          {
            v99 = v438;
            v167 = v443;
          }

          else
          {
            v175 = *(v443 + 16);
            OUTLINED_FUNCTION_21();
            sub_1CA26DADC();
            v167 = v176;
            v99 = v438;
          }

          v169 = *(v167 + 16);
          v168 = *(v167 + 24);
          if (v169 >= v168 >> 1)
          {
            OUTLINED_FUNCTION_17_1(v168);
            sub_1CA26DADC();
            v167 = v177;
          }

          *(v167 + 16) = v169 + 1;
          v443 = v167;
          v170 = v167 + 16 * v169;
          *(v170 + 32) = v157;
          *(v170 + 40) = v159;
          v119 = v430;
          v120 = v431;
          goto LABEL_18;
        }

        v139 = OUTLINED_FUNCTION_70();
        sub_1CA27080C(v139, v140, &qword_1CA9834A0);
        OUTLINED_FUNCTION_100(&a12);
        OUTLINED_FUNCTION_100(&a13);
        sub_1CA94C158();
        OUTLINED_FUNCTION_123_0();
        v141 = OUTLINED_FUNCTION_32_1();
        sub_1CA3780AC(v141, v142, v143, v144);
        v145 = sub_1CA94C3E8();
        v146 = OUTLINED_FUNCTION_18_0(v145);
        v148 = *(v147 + 64);
        MEMORY[0x1EEE9AC00](v146);
        OUTLINED_FUNCTION_5_10();
        sub_1CA94C3D8();
        OUTLINED_FUNCTION_105();
        v149 = sub_1CA94C3B8();
        v159 = v150;
        v151 = OUTLINED_FUNCTION_105();
        sub_1CA266F2C(v151, v152);
        OUTLINED_FUNCTION_38_1(&a9);
        if (v159)
        {
          v162 = v442;
          v163 = v425;
          v157 = v149;
          goto LABEL_13;
        }

        OUTLINED_FUNCTION_199();
        v172();
        OUTLINED_FUNCTION_38_1(&a17);
        v119 = v430;
        v112 = v442;
        v173(v430);
        OUTLINED_FUNCTION_39(v425);
        v120 = v431;
        (*(v174 + 8))(v431);
        v99 = v438;
      }

LABEL_18:
      OUTLINED_FUNCTION_155_0();
      v116 += v171;
      if (!--v111)
      {

        v178 = v443;
        goto LABEL_23;
      }
    }
  }

  v178 = MEMORY[0x1E69E7CC0];
LABEL_23:
  v444 = v416;
  a10 = v178;
  v179 = OUTLINED_FUNCTION_23();
  __swift_instantiateConcreteTypeFromMangledNameV2(v179, v180);
  OUTLINED_FUNCTION_68_1();
  sub_1CA25C3BC(v181, v182, v183);
  OUTLINED_FUNCTION_58_1(&v445);
  sub_1CA94C2F8();

  OUTLINED_FUNCTION_96_0(v427);
  v184 = v403;
  sub_1CA94D6B8();
  v185 = *(v404 + 8);
  v404 += 8;
  v400 = v185;
  v185(&qword_1EC443E20, v184);
  v186 = sub_1CA94D6A8();
  v187 = sub_1CA94D698();
  v188 = v436;
  if (__OFADD__(*(v187 + 16), *(v186 + 16)))
  {
    goto LABEL_156;
  }

  v189 = v187;
  v190 = MEMORY[0x1E69E7CC0];
  sub_1CA2E4ABC();
  v444 = v191;
  sub_1CA2B798C(v186);
  sub_1CA2B78E4(v189);
  v192 = v444;
  v413 = *(v444 + 16);
  if (v413)
  {
    v193 = 0;
    v412 = v444 + 32;
    v416 = v437 + 4;
    v428 = (v437 + 2);
    v431 = (v437 + 1);
    v423 = (v418 + 8);
    v430 = v190;
    OUTLINED_FUNCTION_157_0();
    v194 = v411;
    v415 = v192;
    while (1)
    {
      if (v193 >= *(v192 + 16))
      {
        goto LABEL_154;
      }

      v192 = v194;
      v420 = v193;
      OUTLINED_FUNCTION_196();
      v196 = v195 + 40 * v193;
      v197 = *(v196 + 8);
      v422 = *v196;
      v198 = *(v196 + 16);
      v199 = *(v196 + 24);
      LODWORD(v421) = *(v196 + 32);
      v138 = *(v196 + 33) == 1;
      v419 = v198;
      v418 = v197;
      if (v138)
      {
        sub_1CA94C218();
        OUTLINED_FUNCTION_70();
        sub_1CA2C9ED0();
        v200 = OUTLINED_FUNCTION_80();
        OUTLINED_FUNCTION_49(v200, v201, v112);
        if (v138)
        {
          sub_1CA27080C(v186, &qword_1EC443BB8, &unk_1CA983A70);
          OUTLINED_FUNCTION_149(MEMORY[0x1E69E7CC8]);
          v206 = v421;
          sub_1CA2BC124();

          OUTLINED_FUNCTION_58_1(&v437);
          sub_1CA94C178();
          sub_1CA2D9968();
          OUTLINED_FUNCTION_156();
          v194 = v192;
          sub_1CA94BE58();
        }

        else
        {
          OUTLINED_FUNCTION_38_1(v446);
          v194 = v192;
          OUTLINED_FUNCTION_68_1();
          v205();
          v206 = v421;
        }

        OUTLINED_FUNCTION_175();
        v186 = sub_1CA94BFA8();
        v208 = v207 + *(v439 + 20);
        sub_1CA94BDA8();
        v209 = OUTLINED_FUNCTION_11_7();
        (v186)(v209);
        OUTLINED_FUNCTION_202_0();
        if (v206)
        {
          OUTLINED_FUNCTION_88();
          v210(v409, v194, v112);
          v211 = v430;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v371 = *(v211 + 16);
            OUTLINED_FUNCTION_21();
            sub_1CA27050C();
            v211 = v372;
          }

          v213 = *(v211 + 16);
          v212 = *(v211 + 24);
          v186 = v213 + 1;
          if (v213 >= v212 >> 1)
          {
            OUTLINED_FUNCTION_17_1(v212);
            sub_1CA27050C();
            v430 = v373;
          }

          else
          {
            v430 = v211;
          }

          sub_1CA2D9C6C();
          v192 = v437;
          v214 = v437[1];
          v215 = OUTLINED_FUNCTION_121();
          v216(v215);
          *(v430 + 16) = v186;
          v217 = *(v192 + 80);
          OUTLINED_FUNCTION_68_0();
          (*(v192 + 32))(v219 + v218 + *(v192 + 72) * v213, v409, v112);
          OUTLINED_FUNCTION_157_0();
          OUTLINED_FUNCTION_202_0();
        }

        else
        {
          OUTLINED_FUNCTION_180();
          sub_1CA2D9C6C();
          OUTLINED_FUNCTION_133();
          v229 = OUTLINED_FUNCTION_121();
          v230(v229);
          OUTLINED_FUNCTION_157_0();
        }

        v231 = v420;
        goto LABEL_131;
      }

      v414 = v199;
      sub_1CA94C218();
      OUTLINED_FUNCTION_58_1(&v439);
      OUTLINED_FUNCTION_70();
      sub_1CA2C9ED0();
      v202 = OUTLINED_FUNCTION_80();
      OUTLINED_FUNCTION_49(v202, v203, v112);
      if (v204)
      {
        sub_1CA27080C(v186, &qword_1EC443BB8, &unk_1CA983A70);
        OUTLINED_FUNCTION_149(MEMORY[0x1E69E7CC8]);
        sub_1CA2BC124();

        OUTLINED_FUNCTION_58_1(&v437);
        OUTLINED_FUNCTION_70();
        sub_1CA94C178();
        sub_1CA2D9968();
        OUTLINED_FUNCTION_156();
        OUTLINED_FUNCTION_174();
        sub_1CA94BE58();
      }

      else
      {
        OUTLINED_FUNCTION_38_1(v446);
        v220(v417, v186, v112);
      }

      swift_getKeyPath();
      OUTLINED_FUNCTION_179(&v435);
      v221 = v188;
      sub_1CA94BF98();

      v222 = OUTLINED_FUNCTION_152();
      sub_1CA2D9D20(v222, v223, &qword_1EC443BF0, &qword_1CA9820A0);
      v224 = OUTLINED_FUNCTION_50_0();
      OUTLINED_FUNCTION_49(v224, v225, v112);
      if (v138)
      {
        v235 = v440;
        OUTLINED_FUNCTION_46();
        __swift_storeEnumTagSinglePayload(v226, v227, v228, v112);
        v241 = OUTLINED_FUNCTION_207();
        sub_1CA27080C(v235, &qword_1EC443BB8, &unk_1CA983A70);
      }

      else
      {
        OUTLINED_FUNCTION_38_1(v446);
        v232 = v429;
        v233 = OUTLINED_FUNCTION_105();
        v234(v233);
        OUTLINED_FUNCTION_88();
        v235 = v440;
        v236(v440, v232, v112);
        OUTLINED_FUNCTION_89();
        __swift_storeEnumTagSinglePayload(v237, v238, v239, v112);
        v221 = OUTLINED_FUNCTION_207();
        sub_1CA27080C(v235, &qword_1EC443BB8, &unk_1CA983A70);
        OUTLINED_FUNCTION_133();
        v240 = v232;
        v241 = v221;
        v242(v240, v112);
      }

      v243 = OUTLINED_FUNCTION_104();
      v406(v243);
      v244 = *(v241 + 16);
      v245 = v410;
      if (v244)
      {
        v444 = MEMORY[0x1E69E7CC0];
        sub_1CA2B8C74(0, v244, 0);
        v443 = v444;
        OUTLINED_FUNCTION_47();
        v408 = v241;
        LOBYTE(v235) = v241 + v246;
        OUTLINED_FUNCTION_132(*(v247 + 72));
        OUTLINED_FUNCTION_135(*(v248 + 16));
        do
        {
          v249 = v432;
          OUTLINED_FUNCTION_106();
          OUTLINED_FUNCTION_163_0();
          v250();
          sub_1CA94BE28();
          v221 = v433;
          v251 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443BC0, &unk_1CA983B20);
          OUTLINED_FUNCTION_49(v221, 1, v251);
          if (v138)
          {
            OUTLINED_FUNCTION_133();
            v252(v249, v112);
            sub_1CA27080C(v221, &qword_1EC443BB0, &qword_1CA982060);
            v253 = 0;
            v254 = 0;
          }

          else
          {
            v425 = v251;
            sub_1CA94BE88();
            v255 = sub_1CA948D28();
            v426 = &v399;
            v256 = OUTLINED_FUNCTION_1_0(v255);
            v257 = v245;
            v259 = v258;
            v261 = *(v260 + 64);
            MEMORY[0x1EEE9AC00](v256);
            OUTLINED_FUNCTION_6_0();
            OUTLINED_FUNCTION_56_1();
            v262 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443BC8, &qword_1CA9834A0);
            OUTLINED_FUNCTION_18_0(v262);
            v264 = *(v263 + 64);
            OUTLINED_FUNCTION_29();
            MEMORY[0x1EEE9AC00](v265);
            OUTLINED_FUNCTION_27();
            sub_1CA94C148();
            OUTLINED_FUNCTION_40_1(v249);
            if (v266)
            {
              sub_1CA27080C(v249, &qword_1EC443BC8, &qword_1CA9834A0);
              OUTLINED_FUNCTION_100(&a16);
              v267 = sub_1CA94C158();
              v269 = v268;
              v245 = v257;
              OUTLINED_FUNCTION_33_2();
              switch(v277)
              {
                case 1:
                  v273 = v271;
                  v274 = v272;
                  goto LABEL_57;
                case 2:
                  v274 = *(v267 + 16);
                  v273 = *(v267 + 24);
LABEL_57:
                  if (v273 < v274)
                  {
                    goto LABEL_147;
                  }

                  if (v270 == 2)
                  {
                    v275 = *(v267 + 16);
                    v276 = *(v267 + 24);
                  }

                  else
                  {
                    v276 = v271;
                    v275 = v272;
                  }

LABEL_61:
                  if (v276 < v273 || v273 < v275)
                  {
                    goto LABEL_148;
                  }

                  if (__OFSUB__(v273, v274))
                  {
                    goto LABEL_149;
                  }

                  if (v273 == v274)
                  {
                    OUTLINED_FUNCTION_124_0();
                    switch(v285)
                    {
                      case 2:
                        OUTLINED_FUNCTION_186();
                        break;
                      default:
                        break;
                    }
                  }

                  else
                  {
                    if (__OFADD__(v274, 1))
                    {
                      goto LABEL_151;
                    }

                    OUTLINED_FUNCTION_141_0();
                    switch(v292)
                    {
                      case 1:
                        v291 = v287;
                        v290 = v289;
                        break;
                      case 2:
                        v290 = *(v267 + 16);
                        v291 = *(v267 + 24);
                        break;
                      case 3:
                        break;
                      default:
                        v290 = 0;
                        v291 = v288;
                        break;
                    }

                    if (v291 < v286 || v286 < v290)
                    {
                      goto LABEL_152;
                    }

                    OUTLINED_FUNCTION_124_0();
                    switch(v298)
                    {
                      case 1:
                        v295 = v296;
                        break;
                      case 2:
                        v295 = *(v267 + 24);
                        break;
                      case 3:
                        break;
                      default:
                        v295 = v297;
                        break;
                    }

                    if (v295 < v294)
                    {
                      goto LABEL_150;
                    }
                  }

                  sub_1CA948BE8();
                  sub_1CA266F2C(v267, v269);
                  v299 = sub_1CA94C3E8();
                  v300 = OUTLINED_FUNCTION_18_0(v299);
                  v302 = *(v301 + 64);
                  MEMORY[0x1EEE9AC00](v300);
                  OUTLINED_FUNCTION_6_0();
                  OUTLINED_FUNCTION_59_2();
                  sub_1CA94C3D8();
                  OUTLINED_FUNCTION_70();
                  v253 = sub_1CA94C3B8();
                  v254 = v303;
                  v304 = OUTLINED_FUNCTION_70();
                  sub_1CA266F2C(v304, v305);
                  break;
                case 3:
                  goto LABEL_61;
                default:
                  OUTLINED_FUNCTION_101_0();
                  goto LABEL_61;
              }
            }

            else
            {
              OUTLINED_FUNCTION_153();
              v278 = OUTLINED_FUNCTION_187();
              v279(v278);
              v253 = sub_1CA948CC8();
              v254 = v280;
              v281 = *(v259 + 8);
              v282 = OUTLINED_FUNCTION_70();
              v283(v282);
              v245 = v257;
            }

            OUTLINED_FUNCTION_38_1(&a13);
            OUTLINED_FUNCTION_199();
            v306();
            (*v431)(v432, v442);
            OUTLINED_FUNCTION_39(v425);
            v221 = v433;
            (*(v307 + 8))(v433);
          }

          v308 = v443;
          v444 = v443;
          v310 = *(v443 + 16);
          v309 = *(v443 + 24);
          if (v310 >= v309 >> 1)
          {
            v313 = OUTLINED_FUNCTION_64(v309);
            sub_1CA2B8C74(v313, v310 + 1, 1);
            v221 = v433;
            v308 = v444;
          }

          *(v308 + 16) = v310 + 1;
          v443 = v308;
          v311 = v308 + 16 * v310;
          *(v311 + 32) = v253;
          *(v311 + 40) = v254;
          OUTLINED_FUNCTION_118();
          LOBYTE(v235) = v235 + v312;
          --v244;
          v112 = v442;
        }

        while (v244);

        v99 = v438;
      }

      else
      {

        v443 = MEMORY[0x1E69E7CC0];
      }

      OUTLINED_FUNCTION_90_1(&v433);
      OUTLINED_FUNCTION_46();
      __swift_storeEnumTagSinglePayload(v314, v315, v316, v112);
      sub_1CA2D0AF0(v99, v221);
      v317 = OUTLINED_FUNCTION_158();
      sub_1CA27080C(v317, &qword_1EC443BF0, &qword_1CA9820A0);
      if ((v235 & 1) == 0)
      {
        break;
      }

      v318 = 0;
      v319 = v443;
      v320 = *(v443 + 16);
      v321 = (v443 + 40);
      v322 = MEMORY[0x1E69E7CC0];
LABEL_92:
      v323 = &v321[2 * v318];
      while (v320 != v318)
      {
        if (v318 >= *(v319 + 16))
        {
          goto LABEL_146;
        }

        ++v318;
        v324 = v323 + 2;
        v325 = *v323;
        v323 += 2;
        if (v325)
        {
          OUTLINED_FUNCTION_135(*(v324 - 3));
          sub_1CA94C218();
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v330 = *(v322 + 16);
            OUTLINED_FUNCTION_21();
            sub_1CA26DADC();
            v322 = v331;
          }

          v327 = *(v322 + 16);
          v326 = *(v322 + 24);
          if (v327 >= v326 >> 1)
          {
            OUTLINED_FUNCTION_64(v326);
            sub_1CA26DADC();
            v322 = v332;
          }

          *(v322 + 16) = v327 + 1;
          OUTLINED_FUNCTION_163_0();
          *(v328 + 32) = v329;
          *(v328 + 40) = v325;
          goto LABEL_92;
        }
      }

      if (v422 >= *(v322 + 16))
      {

        v340 = v443;
        v186 = *(v443 + 16);
      }

      else
      {
        if (v422 < 0)
        {
          goto LABEL_155;
        }

        v333 = v322 + 16 * v422;
        v335 = *(v333 + 32);
        v334 = *(v333 + 40);
        sub_1CA94C218();

        v336 = v443;
        v337 = *(v443 + 16);
        if (!v320)
        {
          v186 = *(v443 + 16);
LABEL_118:
          v188 = v436;

          goto LABEL_120;
        }

        v186 = 0;
        while (1)
        {
          if (v337 == v186)
          {
            goto LABEL_153;
          }

          if (*v321)
          {
            if (*(v321 - 1) == v335 && *v321 == v334)
            {

              v188 = v436;
              goto LABEL_120;
            }

            v339 = sub_1CA94D7F8();
            v336 = v443;
            if (v339)
            {
              break;
            }
          }

          ++v186;
          v321 += 2;
          if (v320 == v186)
          {
            v186 = *(v336 + 16);
            goto LABEL_118;
          }
        }

        v340 = v443;
      }

      v188 = v436;
LABEL_121:
      v341 = *(v340 + 16);

      if (v186 >= v341)
      {
        sub_1CA94BFA8();
        OUTLINED_FUNCTION_69_1();
        v192 = *(v439 + 20);
        v347 = OUTLINED_FUNCTION_152();
        sub_1CA2D9D20(v347, v348, &qword_1EC443BF0, &qword_1CA9820A0);
        v349 = OUTLINED_FUNCTION_50_0();
        OUTLINED_FUNCTION_49(v349, v350, v112);
        if (v138)
        {
          v351 = v440;
          v352 = OUTLINED_FUNCTION_50_0();
          OUTLINED_FUNCTION_42_2(v352, v353);
          sub_1CA94BD78();
          sub_1CA27080C(v351, &qword_1EC443BB8, &unk_1CA983A70);
        }

        else
        {
          OUTLINED_FUNCTION_38_1(v446);
          v362 = OUTLINED_FUNCTION_104();
          v363(v362);
          OUTLINED_FUNCTION_88();
          v364 = v440;
          v365 = OUTLINED_FUNCTION_70();
          v366(v365);
          OUTLINED_FUNCTION_42_2(v364, 0);
          sub_1CA94BD78();
          sub_1CA27080C(v364, &qword_1EC443BB8, &unk_1CA983A70);
          v367 = OUTLINED_FUNCTION_67_1();
          v368(v367, v112);
        }

        OUTLINED_FUNCTION_202_0();
        v369 = OUTLINED_FUNCTION_11_7();
        (v186)(v369);
      }

      else
      {
        v443 = sub_1CA94BFA8();
        v192 = *(v439 + 20);
        sub_1CA2D9D20(v99, v405, &qword_1EC443BF0, &qword_1CA9820A0);
        v342 = OUTLINED_FUNCTION_50_0();
        OUTLINED_FUNCTION_49(v342, v343, v112);
        if (v138)
        {
          v344 = v440;
          v345 = OUTLINED_FUNCTION_50_0();
          OUTLINED_FUNCTION_42_2(v345, v346);
          sub_1CA94BD58();
          sub_1CA27080C(v344, &qword_1EC443BB8, &unk_1CA983A70);
        }

        else
        {
          OUTLINED_FUNCTION_38_1(v446);
          v354 = OUTLINED_FUNCTION_104();
          v355(v354);
          OUTLINED_FUNCTION_88();
          v356 = v440;
          v357 = OUTLINED_FUNCTION_70();
          v358(v357);
          OUTLINED_FUNCTION_42_2(v356, 0);
          sub_1CA94BD58();
          sub_1CA27080C(v356, &qword_1EC443BB8, &unk_1CA983A70);
          v359 = OUTLINED_FUNCTION_67_1();
          v360(v359, v112);
        }

        OUTLINED_FUNCTION_202_0();
        v361 = OUTLINED_FUNCTION_11_7();
        (v443)(v361);
      }

      OUTLINED_FUNCTION_157_0();
      v194 = v411;
      v231 = v420;
      OUTLINED_FUNCTION_180();
      sub_1CA2D9C6C();
      OUTLINED_FUNCTION_133();
      v370(v417, v112);
LABEL_131:
      v193 = v231 + 1;
      if (v193 == v413)
      {

        v374 = v430;
        goto LABEL_136;
      }
    }

    v186 = v422;
    v188 = v436;
LABEL_120:
    v340 = v443;
    goto LABEL_121;
  }

  v374 = MEMORY[0x1E69E7CC0];
LABEL_136:
  v375 = *(v374 + 16);
  if (!v375)
  {
LABEL_143:

    v400(v402, v403);
    sub_1CA27080C(v99, &qword_1EC443BF0, &qword_1CA9820A0);
    goto LABEL_144;
  }

  OUTLINED_FUNCTION_47();
  v432 = v374 + v376;
  v428 = (v377 + 32);
  v430 = v374;
  v431 = (v377 + 16);
  v433 = (v377 + 8);
  while (v375 <= *(v374 + 16))
  {
    --v375;
    v378 = v437[2];
    v379 = v435;
    v378(v435, v432 + v437[9] * v375, v112);
    OUTLINED_FUNCTION_175();
    v443 = sub_1CA94BFA8();
    v380 = *(v439 + 20);
    v381 = v99;
    v382 = v434;
    sub_1CA2D9D20(v381, v434, &qword_1EC443BF0, &qword_1CA9820A0);
    v383 = OUTLINED_FUNCTION_109();
    OUTLINED_FUNCTION_49(v383, v384, v112);
    if (v138)
    {
      v385 = v440;
      OUTLINED_FUNCTION_46();
      __swift_storeEnumTagSinglePayload(v386, v387, v388, v112);
      sub_1CA94BD78();
      sub_1CA27080C(v385, &qword_1EC443BB8, &unk_1CA983A70);
      v395 = v112;
      v396 = v433;
    }

    else
    {
      v389 = v429;
      (*v428)(v429, v382, v112);
      v390 = v440;
      v391 = OUTLINED_FUNCTION_151_0();
      (v378)(v391);
      OUTLINED_FUNCTION_89();
      __swift_storeEnumTagSinglePayload(v392, v393, v394, v442);
      sub_1CA94BD78();
      v395 = v442;
      sub_1CA27080C(v390, &qword_1EC443BB8, &unk_1CA983A70);
      v396 = v433;
      v397 = v389;
      v374 = v430;
      (*v433)(v397, v395);
    }

    v398 = OUTLINED_FUNCTION_11_7();
    (v443)(v398);
    v112 = v395;
    (*v396)(v379, v395);
    v99 = v438;
    if (!v375)
    {
      goto LABEL_143;
    }
  }

  __break(1u);
LABEL_146:
  __break(1u);
LABEL_147:
  __break(1u);
LABEL_148:
  __break(1u);
LABEL_149:
  __break(1u);
LABEL_150:
  __break(1u);
LABEL_151:
  __break(1u);
LABEL_152:
  __break(1u);
LABEL_153:
  __break(1u);
LABEL_154:
  __break(1u);
LABEL_155:
  __break(1u);
LABEL_156:
  __break(1u);
}

uint64_t sub_1CA2D0860(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443950, &unk_1CA982580);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v17 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443BB8, &unk_1CA983A70);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v17 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443BF0, &qword_1CA9820A0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v17 - v13;
  sub_1CA2D9D20(a1, &v17 - v13, &qword_1EC443BF0, &qword_1CA9820A0);
  if (__swift_getEnumTagSinglePayload(v14, 1, v2) == 1)
  {
    __swift_storeEnumTagSinglePayload(v10, 1, 1, v2);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443BA8, &unk_1CA983A80);
    v15 = sub_1CA94BDB8();
    sub_1CA27080C(v10, &qword_1EC443BB8, &unk_1CA983A70);
  }

  else
  {
    (*(v3 + 32))(v6, v14, v2);
    (*(v3 + 16))(v10, v6, v2);
    __swift_storeEnumTagSinglePayload(v10, 0, 1, v2);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443BA8, &unk_1CA983A80);
    v15 = sub_1CA94BDB8();
    sub_1CA27080C(v10, &qword_1EC443BB8, &unk_1CA983A70);
    (*(v3 + 8))(v6, v2);
  }

  return v15;
}

uint64_t sub_1CA2D0AF0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443950, &unk_1CA982580);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v22 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443BF0, &qword_1CA9820A0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v22 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443C88, &qword_1CA982118);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x1EEE9AC00](v13 - 8);
  v17 = &v22 - v16;
  v18 = *(v15 + 56);
  sub_1CA2D9D20(a1, &v22 - v16, &qword_1EC443BF0, &qword_1CA9820A0);
  sub_1CA2D9D20(a2, &v17[v18], &qword_1EC443BF0, &qword_1CA9820A0);
  if (__swift_getEnumTagSinglePayload(v17, 1, v4) != 1)
  {
    sub_1CA2D9D20(v17, v12, &qword_1EC443BF0, &qword_1CA9820A0);
    if (__swift_getEnumTagSinglePayload(&v17[v18], 1, v4) != 1)
    {
      (*(v5 + 32))(v8, &v17[v18], v4);
      sub_1CA25C3BC(&qword_1EC441BC8, &unk_1EC443950, &unk_1CA982580);
      v19 = sub_1CA94C358();
      v20 = *(v5 + 8);
      v20(v8, v4);
      v20(v12, v4);
      sub_1CA27080C(v17, &qword_1EC443BF0, &qword_1CA9820A0);
      return v19 & 1;
    }

    (*(v5 + 8))(v12, v4);
    goto LABEL_6;
  }

  if (__swift_getEnumTagSinglePayload(&v17[v18], 1, v4) != 1)
  {
LABEL_6:
    sub_1CA27080C(v17, &qword_1EC443C88, &qword_1CA982118);
    v19 = 0;
    return v19 & 1;
  }

  sub_1CA27080C(v17, &qword_1EC443BF0, &qword_1CA9820A0);
  v19 = 1;
  return v19 & 1;
}

void sub_1CA2D0DF0()
{
  OUTLINED_FUNCTION_37_0();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443BB8, &unk_1CA983A70);
  OUTLINED_FUNCTION_18_0(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_37_1();
  v7 = sub_1CA94C168();
  v8 = OUTLINED_FUNCTION_18_0(v7);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_73_1();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443950, &unk_1CA982580);
  OUTLINED_FUNCTION_1_0(v11);
  v13 = v12;
  v15 = *(v14 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_25();
  v17 = type metadata accessor for LibraryModel.FolderCollection(0);
  v18 = OUTLINED_FUNCTION_18_0(v17);
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_147_0();
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_139_0();
  sub_1CA94C218();
  LibraryModel.FolderCollection.init(name:glyphCharacter:)();
  OUTLINED_FUNCTION_12_5();
  v22 = OUTLINED_FUNCTION_177();
  sub_1CA2D9BBC(v22, v23);

  sub_1CA94C218();
  OUTLINED_FUNCTION_106();
  sub_1CA94C178();
  sub_1CA2D9968();
  sub_1CA94BE68();
  OUTLINED_FUNCTION_46();
  __swift_storeEnumTagSinglePayload(v24, v25, v26, v11);
  v27 = sub_1CA94BFA8();
  v28 = OUTLINED_FUNCTION_117();
  v29 = *(type metadata accessor for LibraryModel(v28) + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443BA8, &unk_1CA983A80);
  OUTLINED_FUNCTION_204();
  sub_1CA94BD78();
  sub_1CA27080C(v0, &qword_1EC443BB8, &unk_1CA983A70);
  v30 = OUTLINED_FUNCTION_85_0();
  v27(v30);
  OUTLINED_FUNCTION_106();
  if (LibraryModel.FolderCollection.workflowCollection(id:)())
  {
    (*(v13 + 8))(v1, v11);
    OUTLINED_FUNCTION_4_5();
    sub_1CA26F808(v2, v31);
    OUTLINED_FUNCTION_191_0();
    OUTLINED_FUNCTION_36();
  }

  else
  {
    __break(1u);
  }
}

void sub_1CA2D1078()
{
  OUTLINED_FUNCTION_37_0();
  v116 = v5;
  v125 = v6;
  v128 = v7;
  HIDWORD(v120) = v8;
  v118 = v9;
  v119 = v10;
  v11 = sub_1CA94C168();
  v12 = OUTLINED_FUNCTION_18_0(v11);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_6_2();
  v121 = v15;
  v16 = OUTLINED_FUNCTION_25_0();
  v17 = type metadata accessor for LibraryModel.FolderCollection(v16);
  v18 = OUTLINED_FUNCTION_18_0(v17);
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_3_1();
  v117 = v21;
  OUTLINED_FUNCTION_31_2();
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_48_0();
  v124 = v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&off_1EC443BD0, &unk_1CA983B10);
  OUTLINED_FUNCTION_18_0(v24);
  v26 = *(v25 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_27();
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443950, &unk_1CA982580);
  v29 = OUTLINED_FUNCTION_1_0(v28);
  v31 = v30;
  v33 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_3_1();
  v122 = v34;
  OUTLINED_FUNCTION_31_2();
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_45_0();
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_45_0();
  v127 = v37;
  OUTLINED_FUNCTION_31_2();
  MEMORY[0x1EEE9AC00](v38);
  v40 = &v110 - v39;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443BB8, &unk_1CA983A70);
  OUTLINED_FUNCTION_18_0(v41);
  v43 = *(v42 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x1EEE9AC00](v44);
  OUTLINED_FUNCTION_20_3();
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443BA8, &unk_1CA983A80);
  OUTLINED_FUNCTION_1_0(v45);
  v132 = v46;
  v48 = *(v47 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x1EEE9AC00](v49);
  OUTLINED_FUNCTION_25();
  v50 = type metadata accessor for LibraryModel(0);
  v51 = OUTLINED_FUNCTION_52(v50);
  v53 = *(v52 + 64);
  MEMORY[0x1EEE9AC00](v51);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_73_1();
  v123 = v0;
  sub_1CA94BFB8();
  v114 = v50;
  v54 = *(v50 + 20);
  v55 = v132;
  (*(v132 + 16))(v3, v1 + v54, v45);
  OUTLINED_FUNCTION_0_9();
  sub_1CA26F808(v1, v56);
  OUTLINED_FUNCTION_46();
  __swift_storeEnumTagSinglePayload(v57, v58, v59, v28);
  OUTLINED_FUNCTION_177();
  v60 = sub_1CA94BDB8();
  sub_1CA27080C(v4, &qword_1EC443BB8, &unk_1CA983A70);
  v61 = *(v55 + 8);
  v115 = v45;
  v61(v3, v45);
  v62 = 0;
  v63 = *(v60 + 16);
  v126 = (v31 + 32);
  v130 = v31 + 16;
  v131 = (v31 + 8);
  v129 = MEMORY[0x1E69E7CC0];
  v132 = v60;
  while (v63 != v62)
  {
    if (v62 >= *(v60 + 16))
    {
      __break(1u);
      goto LABEL_25;
    }

    v64 = v4;
    v65 = (*(v31 + 80) + 32) & ~*(v31 + 80);
    v66 = *(v31 + 72);
    (*(v31 + 16))(v40, v60 + v65 + v66 * v62, v28);
    sub_1CA94BE38();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443BD8, &qword_1CA982068);
    v67 = OUTLINED_FUNCTION_57_0();
    OUTLINED_FUNCTION_49(v67, v68, v69);
    if (v70)
    {
      (*v131)(v40, v28);
      sub_1CA27080C(v2, &off_1EC443BD0, &unk_1CA983B10);
      ++v62;
      v4 = v64;
      v60 = v132;
    }

    else
    {
      sub_1CA27080C(v2, &off_1EC443BD0, &unk_1CA983B10);
      v113 = *v126;
      v113(v127, v40, v28);
      v71 = v129;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v133 = v71;
      if (isUniquelyReferenced_nonNull_native)
      {
        v73 = v71;
      }

      else
      {
        v74 = *(v71 + 16);
        v75 = OUTLINED_FUNCTION_66();
        sub_1CA27DD60(v75, v76, v77);
        v73 = v133;
      }

      v60 = v132;
      v79 = *(v73 + 16);
      v78 = *(v73 + 24);
      v80 = v79 + 1;
      if (v79 >= v78 >> 1)
      {
        v81 = OUTLINED_FUNCTION_64(v78);
        v129 = v82;
        v111 = v83;
        sub_1CA27DD60(v81, v82, 1);
        v80 = v129;
        v79 = v111;
        v60 = v132;
        v73 = v133;
      }

      ++v62;
      *(v73 + 16) = v80;
      v129 = v73;
      v113(v73 + v65 + v79 * v66, v127, v28);
      v4 = v64;
    }
  }

  if (v116 <= 0)
  {
    v89 = 0;
    v84 = v124;
  }

  else
  {
    v84 = v124;
    if (*(v129 + 16) <= v116 || (v85 = *(v31 + 80), OUTLINED_FUNCTION_68_0(), v88 = v112, (*(v31 + 16))(v112, v129 + v86 + *(v31 + 72) * v87, v28), v89 = sub_1CA58A43C(v88, v132), v91 = v90, (*(v31 + 8))(v88, v28), (v91 & 1) != 0))
    {
      v92 = v132;
      v89 = *(v132 + 16);
      goto LABEL_19;
    }
  }

  v92 = v132;
LABEL_19:
  sub_1CA94C218();
  LibraryModel.FolderCollection.init(name:glyphCharacter:)();
  OUTLINED_FUNCTION_12_5();
  sub_1CA2D9BBC(v84, v117);

  sub_1CA94C218();
  OUTLINED_FUNCTION_125();
  sub_1CA94C178();
  sub_1CA2D9968();
  sub_1CA94BE68();
  v93 = *(v92 + 16);
  OUTLINED_FUNCTION_46();
  __swift_storeEnumTagSinglePayload(v94, v95, v96, v28);
  OUTLINED_FUNCTION_175();
  if (v89 >= v93)
  {
    v102 = sub_1CA94BFA8();
    OUTLINED_FUNCTION_118();
    v105 = v104 + *(v103 + 20);
    OUTLINED_FUNCTION_91();
    sub_1CA94BD78();
    sub_1CA27080C(v4, &qword_1EC443BB8, &unk_1CA983A70);
    v106 = OUTLINED_FUNCTION_53_1();
    v102(v106);
  }

  else
  {
    v97 = sub_1CA94BFA8();
    OUTLINED_FUNCTION_118();
    v100 = v99 + *(v98 + 20);
    OUTLINED_FUNCTION_91();
    sub_1CA94BD88();
    sub_1CA27080C(v4, &qword_1EC443BB8, &unk_1CA983A70);
    v101 = OUTLINED_FUNCTION_53_1();
    v97(v101);
  }

  if (LibraryModel.FolderCollection.workflowCollection(id:)())
  {

    v107 = OUTLINED_FUNCTION_67_1();
    v108(v107, v28);
    OUTLINED_FUNCTION_4_5();
    sub_1CA26F808(v84, v109);
    OUTLINED_FUNCTION_191_0();
    OUTLINED_FUNCTION_36();
    return;
  }

LABEL_25:
  __break(1u);
}

void sub_1CA2D17F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_108();
  a19 = v25;
  a20 = v26;
  v253 = v27;
  v254 = v21;
  v265 = v29;
  v266 = v28;
  v260 = v30;
  v267 = v31;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443BE8, &qword_1CA982098);
  OUTLINED_FUNCTION_18_0(v32);
  v34 = *(v33 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_44_0(v36);
  v251 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443BF0, &qword_1CA9820A0);
  OUTLINED_FUNCTION_52(v251);
  v38 = *(v37 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x1EEE9AC00](v39);
  OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_44_0(v40);
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443BB0, &qword_1CA982060);
  v42 = OUTLINED_FUNCTION_18_0(v41);
  v44 = *(v43 + 64);
  MEMORY[0x1EEE9AC00](v42);
  OUTLINED_FUNCTION_19();
  v47 = v45 - v46;
  MEMORY[0x1EEE9AC00](v48);
  v50 = &v248 - v49;
  v259 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443BA8, &unk_1CA983A80);
  OUTLINED_FUNCTION_1_0(v259);
  v263 = v51;
  v53 = *(v52 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x1EEE9AC00](v54);
  OUTLINED_FUNCTION_43();
  v256 = v55;
  v56 = OUTLINED_FUNCTION_25_0();
  v262 = type metadata accessor for LibraryModel(v56);
  v57 = OUTLINED_FUNCTION_52(v262);
  v59 = *(v58 + 64);
  MEMORY[0x1EEE9AC00](v57);
  OUTLINED_FUNCTION_6_2();
  OUTLINED_FUNCTION_172(v60);
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443BB8, &unk_1CA983A70);
  v62 = OUTLINED_FUNCTION_18_0(v61);
  v64 = *(v63 + 64);
  MEMORY[0x1EEE9AC00](v62);
  OUTLINED_FUNCTION_3_1();
  v258 = v65;
  OUTLINED_FUNCTION_31_2();
  MEMORY[0x1EEE9AC00](v66);
  OUTLINED_FUNCTION_97();
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443950, &unk_1CA982580);
  v68 = OUTLINED_FUNCTION_1_0(v67);
  v70 = v69;
  v72 = *(v71 + 64);
  MEMORY[0x1EEE9AC00](v68);
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_147_0();
  MEMORY[0x1EEE9AC00](v73);
  OUTLINED_FUNCTION_45_0();
  v270 = v74;
  OUTLINED_FUNCTION_31_2();
  MEMORY[0x1EEE9AC00](v75);
  OUTLINED_FUNCTION_45_0();
  v268 = v76;
  OUTLINED_FUNCTION_31_2();
  MEMORY[0x1EEE9AC00](v77);
  OUTLINED_FUNCTION_45_0();
  v257 = v78;
  OUTLINED_FUNCTION_31_2();
  v80 = MEMORY[0x1EEE9AC00](v79);
  v82 = &v248 - v81;
  MEMORY[0x1EEE9AC00](v80);
  OUTLINED_FUNCTION_139_0();
  v261 = v20;
  sub_1CA2C9ED0();
  v83 = OUTLINED_FUNCTION_81();
  OUTLINED_FUNCTION_49(v83, v84, v67);
  if (v92)
  {
    sub_1CA27080C(v22, &qword_1EC443BB8, &unk_1CA983A70);
    sub_1CA2D9AF4();
    v85 = OUTLINED_FUNCTION_127();
    OUTLINED_FUNCTION_28_1(xmmword_1CA982010, v85, v86);
LABEL_49:
    OUTLINED_FUNCTION_107();
    return;
  }

  v267 = v70;
  v87 = *(v70 + 32);
  v249 = v23;
  v264 = v67;
  v252 = v70 + 32;
  OUTLINED_FUNCTION_135(v87);
  v88();
  v89 = sub_1CA94C3A8();
  v91 = v90;
  v92 = v89 == v260 && v90 == v265;
  if (v92)
  {

LABEL_13:
    v99 = v255;
    sub_1CA94BFB8();
    v100 = v263;
    v101 = *(v263 + 16);
    v102 = v99 + *(v262 + 20);
    v251 = v263 + 16;
    v250 = v101;
    (v101)(v256, v102, v259);
    OUTLINED_FUNCTION_0_9();
    sub_1CA26F808(v99, v103);
    v104 = v258;
    OUTLINED_FUNCTION_46();
    v105 = v264;
    __swift_storeEnumTagSinglePayload(v106, v107, v108, v264);
    OUTLINED_FUNCTION_103();
    v109 = v105;
    v110 = sub_1CA94BDB8();
    sub_1CA27080C(v104, &qword_1EC443BB8, &unk_1CA983A70);
    v111 = *(v100 + 8);
    OUTLINED_FUNCTION_151_0();
    v263 = v100 + 8;
    OUTLINED_FUNCTION_132(v112);
    v113();
    v114 = 0;
    v115 = v267;
    v265 = (v267 + 8);
    v266 = v267 + 16;
    v260 = MEMORY[0x1E69E7CC0];
    v116 = *(v110 + 16);
    while (1)
    {
      v117 = v268;
      if (v116 == v114)
      {
        break;
      }

      if (v114 >= *(v110 + 16))
      {
        __break(1u);
        goto LABEL_51;
      }

      (*(v115 + 16))(v82, v110 + ((*(v115 + 80) + 32) & ~*(v115 + 80)) + *(v115 + 72) * v114, v109);
      v118 = v109;
      sub_1CA94BE28();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443BC0, &unk_1CA983B20);
      v119 = OUTLINED_FUNCTION_50_0();
      OUTLINED_FUNCTION_49(v119, v120, v121);
      if (v92)
      {
        v122 = *v265;
        v123 = OUTLINED_FUNCTION_72_0();
        v124(v123);
        sub_1CA27080C(v50, &qword_1EC443BB0, &qword_1CA982060);
        ++v114;
        v115 = v267;
      }

      else
      {
        sub_1CA27080C(v50, &qword_1EC443BB0, &qword_1CA982060);
        OUTLINED_FUNCTION_163_0();
        v125();
        v126 = v260;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v128 = v126;
        v269 = v126;
        if (isUniquelyReferenced_nonNull_native)
        {
          v109 = v118;
        }

        else
        {
          v129 = *(v126 + 16);
          v130 = OUTLINED_FUNCTION_66();
          sub_1CA27DD60(v130, v131, v132);
          v109 = v264;
          v128 = v269;
        }

        v115 = v267;
        v134 = *(v128 + 16);
        v133 = *(v128 + 24);
        v135 = v134 + 1;
        if (v134 >= v133 >> 1)
        {
          v137 = OUTLINED_FUNCTION_64(v133);
          v260 = v138;
          v248 = v139;
          sub_1CA27DD60(v137, v138, 1);
          v135 = v260;
          v109 = v264;
          v128 = v269;
        }

        ++v114;
        *(v128 + 16) = v135;
        v260 = v128;
        OUTLINED_FUNCTION_163_0();
        v136();
      }
    }

    v140 = *(v260 + 16);
    if ((v253 & 0x8000000000000000) != 0)
    {
      v168 = v258;
      if (!v140)
      {
        goto LABEL_52;
      }

      v169 = *(v115 + 80);
      OUTLINED_FUNCTION_68_0();
      (*(v115 + 16))(v270, v260 + v170, v109);

      v171 = v255;
      v172 = v109;
      sub_1CA94BFB8();
      v173 = *(v262 + 20);
      OUTLINED_FUNCTION_155_0();
      v250();
      OUTLINED_FUNCTION_0_9();
      sub_1CA26F808(v171, v174);
      OUTLINED_FUNCTION_46();
      __swift_storeEnumTagSinglePayload(v175, v176, v177, v109);
      OUTLINED_FUNCTION_120();
      v178 = sub_1CA94BDB8();
      sub_1CA27080C(v168, &qword_1EC443BB8, &unk_1CA983A70);
      OUTLINED_FUNCTION_170();
      v180 = v179();
      MEMORY[0x1EEE9AC00](v180);
      OUTLINED_FUNCTION_98();
      *(v181 - 16) = v270;
      sub_1CA2CC9F8(sub_1CA2D9D6C, v182, v178);
      v183 = v168;
      v185 = v184;

      if (v185)
      {
        sub_1CA2D9AF4();
        v186 = OUTLINED_FUNCTION_127();
        OUTLINED_FUNCTION_28_1(xmmword_1CA982010, v186, v187);
        v165 = *v265;
        (*v265)(v249, v172);
      }

      else
      {
        OUTLINED_FUNCTION_46();
        __swift_storeEnumTagSinglePayload(v198, v199, v200, v172);
        v201 = sub_1CA94BFA8();
        OUTLINED_FUNCTION_102(v201, v202);
        v204 = *(v203 - 256);
        OUTLINED_FUNCTION_72_0();
        sub_1CA94BD58();
        sub_1CA27080C(v183, &qword_1EC443BB8, &unk_1CA983A70);
        v205 = OUTLINED_FUNCTION_53_1();
        v201(v205);
        v165 = *v265;
        (*v265)(v204, v172);
      }

      v166 = v270;
      v167 = v172;
    }

    else
    {
      v141 = v262;
      v142 = v258;
      if (v140 <= v253)
      {

        OUTLINED_FUNCTION_46();
        __swift_storeEnumTagSinglePayload(v188, v189, v190, v109);
        v191 = sub_1CA94BFA8();
        v193 = v192 + *(v141 + 20);
        OUTLINED_FUNCTION_195();
        sub_1CA94BD78();
        sub_1CA27080C(v142, &qword_1EC443BB8, &unk_1CA983A70);
        v194 = OUTLINED_FUNCTION_11_7();
        v191(v194);
        v195 = *v265;
        v196 = OUTLINED_FUNCTION_103();
        v197(v196);
        goto LABEL_49;
      }

      v143 = *(v267 + 80);
      OUTLINED_FUNCTION_68_0();
      (*(v146 + 16))(v117, v260 + v144 + *(v146 + 72) * v145, v109);

      v147 = v255;
      sub_1CA94BFB8();
      v148 = *(v141 + 20);
      OUTLINED_FUNCTION_155_0();
      v250();
      OUTLINED_FUNCTION_0_9();
      sub_1CA26F808(v147, v149);
      OUTLINED_FUNCTION_46();
      __swift_storeEnumTagSinglePayload(v150, v151, v152, v109);
      OUTLINED_FUNCTION_120();
      v153 = sub_1CA94BDB8();
      sub_1CA27080C(v142, &qword_1EC443BB8, &unk_1CA983A70);
      OUTLINED_FUNCTION_170();
      v155 = v154();
      MEMORY[0x1EEE9AC00](v155);
      OUTLINED_FUNCTION_98();
      *(v156 - 16) = v117;
      sub_1CA2CC9F8(sub_1CA2D9CB4, v157, v153);
      v158 = v117;
      v159 = v142;
      v161 = v160;

      if (v161)
      {
        sub_1CA2D9AF4();
        v162 = OUTLINED_FUNCTION_127();
        OUTLINED_FUNCTION_28_1(xmmword_1CA982010, v162, v163);
        v164 = v264;
        v165 = *v265;
        (*v265)(v249, v264);
        v166 = v158;
        v167 = v164;
      }

      else
      {
        OUTLINED_FUNCTION_46();
        v232 = v158;
        v233 = v264;
        __swift_storeEnumTagSinglePayload(v234, v235, v236, v264);
        v237 = sub_1CA94BFA8();
        OUTLINED_FUNCTION_102(v237, v238);
        v240 = *(v239 - 256);
        OUTLINED_FUNCTION_204();
        sub_1CA94BD58();
        sub_1CA27080C(v159, &qword_1EC443BB8, &unk_1CA983A70);
        v241 = OUTLINED_FUNCTION_11_7();
        v237(v241);
        v165 = *v265;
        v242 = OUTLINED_FUNCTION_72_0();
        v165(v242);
        v166 = v232;
        v167 = v233;
      }
    }

    (v165)(v166, v167);
    goto LABEL_49;
  }

  OUTLINED_FUNCTION_103();
  v93 = sub_1CA94D7F8();

  if (v93)
  {
    goto LABEL_13;
  }

  OUTLINED_FUNCTION_58_1(&a17);
  OUTLINED_FUNCTION_103();
  sub_1CA2CA09C();
  v94 = OUTLINED_FUNCTION_80();
  OUTLINED_FUNCTION_49(v94, v95, v251);
  v96 = v267;
  if (v92)
  {
    sub_1CA27080C(v91, &qword_1EC443BE8, &qword_1CA982098);
    sub_1CA2D9AF4();
    v97 = OUTLINED_FUNCTION_127();
    *v98 = 0;
    v98[1] = 0;
    OUTLINED_FUNCTION_52_1(v97, v98);
    (*(v96 + 8))(v249, v264);
    goto LABEL_49;
  }

  v206 = v250;
  sub_1CA2D9CD4(v91, v250, &qword_1EC443BF0, &qword_1CA9820A0);
  v207 = v255;
  sub_1CA94BFB8();
  v208 = v263;
  (*(v263 + 16))(v256, v207 + *(v262 + 20), v259);
  OUTLINED_FUNCTION_0_9();
  sub_1CA26F808(v207, v209);
  v210 = sub_1CA2D0860(v206);
  v211 = *(v208 + 8);
  v212 = OUTLINED_FUNCTION_3_3();
  v213(v212);
  v214 = *(v210 + 16);
  if (!v214)
  {

    if ((v253 & 0x8000000000000000) != 0)
    {
LABEL_43:
      v228 = sub_1CA94BFA8();
      v230 = v229 + *(v262 + 20);
      v231 = v249;
      OUTLINED_FUNCTION_122_0();
      sub_1CA2D4D6C();
    }

    else
    {
LABEL_47:
      v228 = sub_1CA94BFA8();
      OUTLINED_FUNCTION_102(v228, v243);
      v231 = *(v244 - 256);
      v245 = OUTLINED_FUNCTION_122_0();
      sub_1CA2CE63C(v245, v246);
    }

    v247 = OUTLINED_FUNCTION_53_1();
    v228(v247);
    sub_1CA27080C(v206, &qword_1EC443BF0, &qword_1CA9820A0);
    (*(v96 + 8))(v231, v264);
    goto LABEL_49;
  }

  v215 = 0;
  v217 = *(v96 + 16);
  v216 = v96 + 16;
  v271 = v217;
  v218 = *(v216 + 64);
  OUTLINED_FUNCTION_68_0();
  v266 = v210;
  v220 = v210 + v219;
  v268 = *(v216 + 56);
  while (1)
  {
    v221 = OUTLINED_FUNCTION_152();
    v222 = v264;
    v271(v221);
    sub_1CA94BE28();
    (*(v216 - 8))(v24, v222);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443BC0, &unk_1CA983B20);
    v223 = OUTLINED_FUNCTION_83();
    OUTLINED_FUNCTION_49(v223, v224, v225);
    v226 = !v92;
    sub_1CA27080C(v47, &qword_1EC443BB0, &qword_1CA982060);
    v227 = __OFADD__(v215, v226);
    v215 += v226;
    if (v227)
    {
      break;
    }

    v220 += v268;
    if (!--v214)
    {

      v96 = v267;
      v206 = v250;
      if (v215 <= v253)
      {
        goto LABEL_47;
      }

      goto LABEL_43;
    }
  }

LABEL_51:
  __break(1u);
LABEL_52:
  __break(1u);
}

void sub_1CA2D2648()
{
  OUTLINED_FUNCTION_108();
  v65 = v3;
  OUTLINED_FUNCTION_40();
  v4 = sub_1CA94C168();
  v5 = OUTLINED_FUNCTION_1_0(v4);
  v63 = v6;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_6_2();
  v62 = v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443C98, &qword_1CA982128);
  OUTLINED_FUNCTION_52(v10);
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_26_4();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443BB0, &qword_1CA982060);
  OUTLINED_FUNCTION_18_0(v14);
  v16 = *(v15 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_63();
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443C78, &qword_1CA982108);
  v19 = OUTLINED_FUNCTION_18_0(v18);
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_3_1();
  v64 = v22;
  OUTLINED_FUNCTION_31_2();
  v24 = MEMORY[0x1EEE9AC00](v23);
  v26 = &v62 - v25;
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_60_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443950, &unk_1CA982580);
  sub_1CA94BE28();
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443BC0, &unk_1CA983B20);
  v28 = OUTLINED_FUNCTION_109();
  OUTLINED_FUNCTION_49(v28, v29, v27);
  if (v46)
  {
    sub_1CA27080C(v2, &qword_1EC443BB0, &qword_1CA982060);
    v31 = 1;
  }

  else
  {
    sub_1CA94BE88();
    OUTLINED_FUNCTION_39(v27);
    (*(v30 + 8))(v2, v27);
    v31 = 0;
  }

  __swift_storeEnumTagSinglePayload(v1, v31, 1, v4);
  sub_1CA94BE18();
  OUTLINED_FUNCTION_89();
  __swift_storeEnumTagSinglePayload(v32, v33, v34, v4);
  v35 = *(v10 + 48);
  v36 = OUTLINED_FUNCTION_116_0();
  sub_1CA2D9D20(v36, v37, &qword_1EC443C78, &qword_1CA982108);
  sub_1CA2D9D20(v26, v0 + v35, &qword_1EC443C78, &qword_1CA982108);
  v38 = OUTLINED_FUNCTION_50_0();
  OUTLINED_FUNCTION_49(v38, v39, v4);
  if (!v46)
  {
    sub_1CA2D9D20(v0, v64, &qword_1EC443C78, &qword_1CA982108);
    OUTLINED_FUNCTION_49(v0 + v35, 1, v4);
    if (!v46)
    {
      v56 = v63;
      OUTLINED_FUNCTION_178();
      v57(v62, v0 + v35, v4);
      sub_1CA25C558(&qword_1EC443CA0, MEMORY[0x1E69954B8]);
      sub_1CA94C358();
      v58 = *(v56 + 8);
      v59 = OUTLINED_FUNCTION_136_0();
      v58(v59);
      v60 = OUTLINED_FUNCTION_176();
      sub_1CA27080C(v60, v61, &qword_1CA982108);
      sub_1CA27080C(v1, &qword_1EC443C78, &qword_1CA982108);
      (v58)(v64, v4);
      sub_1CA27080C(v0, &qword_1EC443C78, &qword_1CA982108);
      goto LABEL_13;
    }

    OUTLINED_FUNCTION_68_1();
    sub_1CA27080C(v47, v48, v49);
    OUTLINED_FUNCTION_68_1();
    sub_1CA27080C(v50, v51, v52);
    v53 = *(v63 + 8);
    v54 = OUTLINED_FUNCTION_136_0();
    v55(v54);
LABEL_12:
    sub_1CA27080C(v0, &qword_1EC443C98, &qword_1CA982128);
    goto LABEL_13;
  }

  OUTLINED_FUNCTION_68_1();
  sub_1CA27080C(v40, v41, v42);
  OUTLINED_FUNCTION_68_1();
  sub_1CA27080C(v43, v44, v45);
  OUTLINED_FUNCTION_49(v0 + v35, 1, v4);
  if (!v46)
  {
    goto LABEL_12;
  }

  sub_1CA27080C(v0, &qword_1EC443C78, &qword_1CA982108);
LABEL_13:
  OUTLINED_FUNCTION_107();
}

void sub_1CA2D2AB8()
{
  OUTLINED_FUNCTION_108();
  v31 = v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443BA0, &unk_1CA9844D0);
  OUTLINED_FUNCTION_1_0(v3);
  v32 = v4;
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_14_5();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443C38, &qword_1CA9820D8);
  OUTLINED_FUNCTION_18_0(v8);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_63();
  v12 = type metadata accessor for LibraryModel(0);
  v13 = OUTLINED_FUNCTION_18_0(v12);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_5_10();
  OUTLINED_FUNCTION_176();
  sub_1CA2CBF50();
  if (v17)
  {
    sub_1CA2D9AF4();
    v18 = OUTLINED_FUNCTION_127();
    OUTLINED_FUNCTION_28_1(xmmword_1CA982020, v18, v19);
LABEL_8:
    OUTLINED_FUNCTION_111();
    OUTLINED_FUNCTION_107();
    return;
  }

  v20 = v16;
  sub_1CA94C218();
  sub_1CA94BFB8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443C40, &qword_1CA9844E0);
  sub_1CA94BC98();

  OUTLINED_FUNCTION_0_9();
  sub_1CA26F808(v0, v21);
  v22 = OUTLINED_FUNCTION_109();
  if (__swift_getEnumTagSinglePayload(v22, v23, v3))
  {
    sub_1CA27080C(v1, &qword_1EC443C38, &qword_1CA9820D8);
    goto LABEL_8;
  }

  v24 = *(v32 + 16);
  v25 = OUTLINED_FUNCTION_197();
  v26(v25);
  sub_1CA27080C(v1, &qword_1EC443C38, &qword_1CA9820D8);
  if (v20 >= v31 || !__OFADD__(v31, 1))
  {
    sub_1CA94BEA8();
    OUTLINED_FUNCTION_69_1();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443C30, &qword_1CA9820D0);
    OUTLINED_FUNCTION_177();
    sub_1CA94BCC8();
    v27 = OUTLINED_FUNCTION_85_0();
    v0(v27);
    v28 = *(v32 + 8);
    v29 = OUTLINED_FUNCTION_136_0();
    v30(v29);
    goto LABEL_8;
  }

  __break(1u);
}

void sub_1CA2D2D54()
{
  OUTLINED_FUNCTION_108();
  v60 = type metadata accessor for LibraryModel.FolderCollection(0);
  v5 = OUTLINED_FUNCTION_52(v60);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_6_2();
  v61 = v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&off_1EC443BD0, &unk_1CA983B10);
  v10 = OUTLINED_FUNCTION_18_0(v9);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_147_0();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_143();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_97();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443BE8, &qword_1CA982098);
  OUTLINED_FUNCTION_18_0(v15);
  v17 = *(v16 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_14_5();
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443950, &unk_1CA982580);
  OUTLINED_FUNCTION_1_0(v19);
  v62 = v20;
  v22 = *(v21 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_20_3();
  sub_1CA2CA09C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443BF0, &qword_1CA9820A0);
  v24 = OUTLINED_FUNCTION_83();
  OUTLINED_FUNCTION_49(v24, v25, v26);
  if (v31)
  {
    v27 = &qword_1EC443BE8;
    v28 = &qword_1CA982098;
  }

  else
  {
    v29 = OUTLINED_FUNCTION_83();
    OUTLINED_FUNCTION_49(v29, v30, v19);
    if (!v31)
    {
      (*(v62 + 32))(v3, v1, v19);
      sub_1CA94BE38();
      v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443BD8, &qword_1CA982068);
      OUTLINED_FUNCTION_40_1(v2);
      if (v35)
      {
        sub_1CA27080C(v2, &off_1EC443BD0, &unk_1CA983B10);
      }

      else
      {
        OUTLINED_FUNCTION_205();
        v36 = sub_1CA94BEA8();
        sub_1CA94C218();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443C00, &unk_1CA983B30);
        sub_1CA94B868();
        v37 = OUTLINED_FUNCTION_85_0();
        v36(v37);
        OUTLINED_FUNCTION_39(v34);
        v39 = *(v38 + 8);
        v40 = OUTLINED_FUNCTION_194_0();
        v41(v40);
      }

      sub_1CA94BE38();
      OUTLINED_FUNCTION_40_1(v0);
      if (v31)
      {
        sub_1CA27080C(v0, &off_1EC443BD0, &unk_1CA983B10);
      }

      else
      {
        OUTLINED_FUNCTION_205();
        v59 = sub_1CA94BEA8();
        v42 = *(v60 + 20);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443BF8, &qword_1CA9820A8);
        sub_1CA94B868();
        v43 = OUTLINED_FUNCTION_85_0();
        v59(v43);
        OUTLINED_FUNCTION_39(v34);
        v45 = *(v44 + 8);
        v46 = OUTLINED_FUNCTION_70();
        v47(v46);
      }

      sub_1CA94BE38();
      OUTLINED_FUNCTION_40_1(v4);
      if (v31)
      {
        sub_1CA27080C(v4, &off_1EC443BD0, &unk_1CA983B10);
      }

      else
      {
        sub_1CA94BEB8();
        OUTLINED_FUNCTION_39(v34);
        (*(v48 + 8))(v4, v34);
        v49 = LibraryModel.FolderCollection.workflowCollection(id:)();
        OUTLINED_FUNCTION_4_5();
        sub_1CA26F808(v61, v50);
        if (v49)
        {
          v51 = *(v62 + 8);
          v52 = OUTLINED_FUNCTION_94();
          v53(v52);
          goto LABEL_8;
        }
      }

      sub_1CA2D9AF4();
      v54 = OUTLINED_FUNCTION_127();
      OUTLINED_FUNCTION_28_1(xmmword_1CA982030, v54, v55);
      v56 = *(v62 + 8);
      v57 = OUTLINED_FUNCTION_94();
      v58(v57);
      goto LABEL_8;
    }

    v27 = &qword_1EC443BF0;
    v28 = &qword_1CA9820A0;
  }

  sub_1CA27080C(v1, v27, v28);
  sub_1CA2D9AF4();
  v32 = OUTLINED_FUNCTION_127();
  *v33 = 0;
  v33[1] = 0;
  OUTLINED_FUNCTION_52_1(v32, v33);
LABEL_8:
  OUTLINED_FUNCTION_111();
  OUTLINED_FUNCTION_107();
}

void sub_1CA2D322C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_108();
  a19 = v24;
  a20 = v25;
  v252 = v21;
  v273 = v20;
  v27 = v26;
  OUTLINED_FUNCTION_40();
  v265 = sub_1CA94C168();
  v28 = OUTLINED_FUNCTION_1_0(v265);
  v30 = v29;
  v32 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_55_1();
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&off_1EC443BD0, &unk_1CA983B10);
  v34 = OUTLINED_FUNCTION_18_0(v33);
  v36 = *(v35 + 64);
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_3_1();
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v37);
  OUTLINED_FUNCTION_48_0();
  v281 = v38;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443BB8, &unk_1CA983A70);
  OUTLINED_FUNCTION_18_0(v39);
  v41 = *(v40 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x1EEE9AC00](v42);
  OUTLINED_FUNCTION_27();
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443BA8, &unk_1CA983A80);
  OUTLINED_FUNCTION_1_0(v43);
  v45 = v44;
  v47 = *(v46 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x1EEE9AC00](v48);
  OUTLINED_FUNCTION_43();
  v50 = OUTLINED_FUNCTION_19_0(v49);
  v261 = type metadata accessor for LibraryModel(v50);
  v51 = OUTLINED_FUNCTION_52(v261);
  v53 = *(v52 + 64);
  MEMORY[0x1EEE9AC00](v51);
  OUTLINED_FUNCTION_6_2();
  OUTLINED_FUNCTION_44_0(v54);
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443950, &unk_1CA982580);
  v56 = OUTLINED_FUNCTION_1_0(v55);
  v58 = *(v57 + 64);
  MEMORY[0x1EEE9AC00](v56);
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v59);
  OUTLINED_FUNCTION_45_0();
  v283 = v60;
  OUTLINED_FUNCTION_31_2();
  v62 = MEMORY[0x1EEE9AC00](v61);
  MEMORY[0x1EEE9AC00](v62);
  OUTLINED_FUNCTION_45_0();
  OUTLINED_FUNCTION_9();
  v64 = MEMORY[0x1EEE9AC00](v63);
  v66 = &v248 - v65;
  MEMORY[0x1EEE9AC00](v64);
  OUTLINED_FUNCTION_45_0();
  v286 = v67;
  OUTLINED_FUNCTION_31_2();
  MEMORY[0x1EEE9AC00](v68);
  OUTLINED_FUNCTION_48_0();
  OUTLINED_FUNCTION_44_0(v69);
  if (*(v20 + 16))
  {
    v269 = v23;
    v256 = v66;
    v248 = v71;
    v250 = v27;
    v249 = v70;
    v257 = v20 + 32;
    v258 = (v45 + 16);
    v259 = v45 + 8;
    v264 = v30 + 8;
    v73 = (v72 + 8);
    v254 = v72 + 32;
    v270 = MEMORY[0x1E69E7CC0];
    v277 = v22;
    v278 = v43;
    v282 = v55;
    v279 = (v72 + 8);
    v280 = v72 + 16;
    v74 = v72;
    v268 = v72;
LABEL_3:
    v75 = v281;
    while (1)
    {
      OUTLINED_FUNCTION_150_1();
      if (v76 == v77)
      {
        break;
      }

      v78 = (v257 + 16 * v76);
      v79 = v78[1];
      v263 = *v78;
      v262 = v76 + 1;
      v267 = v79;
      sub_1CA94C218();
      OUTLINED_FUNCTION_181(&a12);
      sub_1CA94BFB8();
      OUTLINED_FUNCTION_129_0(&a11);
      v80 = *v258;
      v81 = OUTLINED_FUNCTION_90_1(&a13);
      v82(v81);
      OUTLINED_FUNCTION_0_9();
      sub_1CA26F808(v23, v83);
      v84 = OUTLINED_FUNCTION_35_1();
      __swift_storeEnumTagSinglePayload(v84, v85, v86, v55);
      OUTLINED_FUNCTION_105();
      v23 = sub_1CA94BDB8();
      sub_1CA27080C(v22, &qword_1EC443BB8, &unk_1CA983A70);
      v87 = OUTLINED_FUNCTION_24_4(&v285);
      v88(v87);
      v276 = *(v23 + 16);
      if (v276)
      {
        v89 = 0;
        v90 = *(v74 + 80);
        OUTLINED_FUNCTION_68_0();
        v255 = v91;
        v275 = v23 + v91;
        v266 = v23;
        do
        {
          if (v89 >= *(v23 + 16))
          {
            __break(1u);
            goto LABEL_93;
          }

          v274 = *(v74 + 72);
          (*(v74 + 16))(v286, v275 + v274 * v89, v55);
          sub_1CA94BE38();
          v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443BD8, &qword_1CA982068);
          v93 = OUTLINED_FUNCTION_80();
          OUTLINED_FUNCTION_49(v93, v94, v92);
          if (v108)
          {
            sub_1CA27080C(v75, &off_1EC443BD0, &unk_1CA983B10);
          }

          else
          {
            v95 = v269;
            v271 = v92;
            sub_1CA94BE88();
            v96 = sub_1CA948D28();
            v272 = &v248;
            v97 = OUTLINED_FUNCTION_1_0(v96);
            v99 = v98;
            v101 = *(v100 + 64);
            MEMORY[0x1EEE9AC00](v97);
            OUTLINED_FUNCTION_6_0();
            OUTLINED_FUNCTION_56_1();
            v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443BC8, &qword_1CA9834A0);
            OUTLINED_FUNCTION_18_0(v102);
            v104 = *(v103 + 64);
            OUTLINED_FUNCTION_29();
            MEMORY[0x1EEE9AC00](v105);
            OUTLINED_FUNCTION_14_5();
            sub_1CA94C148();
            v106 = OUTLINED_FUNCTION_83();
            OUTLINED_FUNCTION_49(v106, v107, v96);
            if (v108)
            {
              v109 = OUTLINED_FUNCTION_91();
              sub_1CA27080C(v109, v110, &qword_1CA9834A0);
              v111 = sub_1CA94C158();
              LOBYTE(v96) = v112;
              OUTLINED_FUNCTION_33_2();
              v55 = v282;
              v23 = v266;
              switch(v120)
              {
                case 1:
                  v116 = v114;
                  v117 = v115;
                  goto LABEL_17;
                case 2:
                  v117 = *(v111 + 16);
                  v116 = *(v111 + 24);
LABEL_17:
                  if (v116 < v117)
                  {
                    goto LABEL_94;
                  }

                  if (v113 == 2)
                  {
                    v118 = *(v111 + 16);
                    v119 = *(v111 + 24);
                  }

                  else
                  {
                    v119 = v114;
                    v118 = v115;
                  }

LABEL_21:
                  if (v119 < v116 || v116 < v118)
                  {
                    goto LABEL_95;
                  }

                  if (__OFSUB__(v116, v117))
                  {
                    goto LABEL_96;
                  }

                  if (v116 == v117)
                  {
                    OUTLINED_FUNCTION_124_0();
                    switch(v132)
                    {
                      case 2:
                        OUTLINED_FUNCTION_186();
                        break;
                      default:
                        break;
                    }
                  }

                  else
                  {
                    if (__OFADD__(v117, 1))
                    {
                      goto LABEL_98;
                    }

                    OUTLINED_FUNCTION_141_0();
                    switch(v139)
                    {
                      case 1:
                        v138 = v134;
                        v137 = v136;
                        break;
                      case 2:
                        v137 = *(v111 + 16);
                        v138 = *(v111 + 24);
                        break;
                      case 3:
                        break;
                      default:
                        v137 = 0;
                        v138 = v135;
                        break;
                    }

                    if (v138 < v133 || v133 < v137)
                    {
                      goto LABEL_99;
                    }

                    OUTLINED_FUNCTION_124_0();
                    switch(v145)
                    {
                      case 1:
                        v142 = v143;
                        break;
                      case 2:
                        v142 = *(v111 + 24);
                        break;
                      case 3:
                        break;
                      default:
                        v142 = v144;
                        break;
                    }

                    if (v142 < v141)
                    {
                      goto LABEL_97;
                    }
                  }

                  sub_1CA948BE8();
                  v146 = OUTLINED_FUNCTION_3_3();
                  sub_1CA266F2C(v146, v147);
                  v148 = sub_1CA94C3E8();
                  v149 = OUTLINED_FUNCTION_18_0(v148);
                  v151 = *(v150 + 64);
                  MEMORY[0x1EEE9AC00](v149);
                  OUTLINED_FUNCTION_5_10();
                  sub_1CA94C3D8();
                  OUTLINED_FUNCTION_120();
                  v124 = sub_1CA94C3B8();
                  v126 = v152;
                  v153 = OUTLINED_FUNCTION_120();
                  sub_1CA266F2C(v153, v154);
                  OUTLINED_FUNCTION_38_1(&a16);
                  v155(v269, v265);
                  if (!v126)
                  {
                    OUTLINED_FUNCTION_39(v271);
                    (*(v158 + 8))(v281);
                    v73 = v279;
                    v74 = v268;
                    goto LABEL_50;
                  }

                  v73 = v279;
                  break;
                case 3:
                  goto LABEL_21;
                default:
                  OUTLINED_FUNCTION_101_0();
                  goto LABEL_21;
              }
            }

            else
            {
              v121 = *(v99 + 32);
              v122 = OUTLINED_FUNCTION_70();
              v123(v122);
              v124 = sub_1CA948CC8();
              v126 = v125;
              v127 = *(v99 + 8);
              v128 = OUTLINED_FUNCTION_130();
              v129(v128);
              OUTLINED_FUNCTION_38_1(&a16);
              v130(v95, v265);
              v73 = v279;
              v55 = v282;
              v23 = v266;
            }

            OUTLINED_FUNCTION_39(v271);
            (*(v156 + 8))();
            if (v124 == v263 && v126 == v267)
            {

              v74 = v268;
              goto LABEL_56;
            }

            sub_1CA94D7F8();
            OUTLINED_FUNCTION_158();

            v74 = v268;
            if (v96)
            {

LABEL_56:
              OUTLINED_FUNCTION_185();
              v160 = *v159;
              (*v159)(v253, v286, v55);
              if (swift_isUniquelyReferenced_nonNull_native())
              {
                v161 = v270;
              }

              else
              {
                v164 = *(v270 + 16);
                OUTLINED_FUNCTION_21();
                sub_1CA27050C();
                v161 = v165;
              }

              v163 = *(v161 + 16);
              v162 = *(v161 + 24);
              if (v163 >= v162 >> 1)
              {
                OUTLINED_FUNCTION_17_1(v162);
                sub_1CA27050C();
                v161 = v166;
              }

              *(v161 + 16) = v163 + 1;
              v270 = v161;
              OUTLINED_FUNCTION_185();
              v160();
              v22 = v277;
              goto LABEL_3;
            }
          }

LABEL_50:
          ++v89;
          (*v73)(v286, v55);
          v75 = v281;
        }

        while (v276 != v89);
      }

      v22 = v277;
    }

    OUTLINED_FUNCTION_58_1(&a12);
    sub_1CA94BFB8();
    OUTLINED_FUNCTION_129_0(&a11);
    v167 = *v258;
    v168 = OUTLINED_FUNCTION_90_1(&a13);
    v169(v168);
    OUTLINED_FUNCTION_0_9();
    sub_1CA26F808(v75, v170);
    v171 = OUTLINED_FUNCTION_35_1();
    __swift_storeEnumTagSinglePayload(v171, v172, v173, v55);
    OUTLINED_FUNCTION_105();
    v174 = sub_1CA94BDB8();
    sub_1CA27080C(v22, &qword_1EC443BB8, &unk_1CA983A70);
    v175 = OUTLINED_FUNCTION_24_4(&v285);
    v176(v175);
    v177 = 0;
    v276 = MEMORY[0x1E69E7CC0];
    v178 = *(v174 + 16);
    OUTLINED_FUNCTION_198();
    v287 = v174;
    while (v178 != v177)
    {
      if (v177 >= *(v174 + 16))
      {
        goto LABEL_100;
      }

      v179 = v74;
      v180 = (*(v74 + 80) + 32) & ~*(v74 + 80);
      v181 = *(v179 + 72);
      v182 = *(v179 + 16);
      v183 = v256;
      OUTLINED_FUNCTION_169();
      v184();
      sub_1CA94BE38();
      OUTLINED_FUNCTION_198();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443BD8, &qword_1CA982068);
      v185 = OUTLINED_FUNCTION_115_0();
      OUTLINED_FUNCTION_49(v185, v186, v187);
      if (v108)
      {
        v188 = *v279;
        v189 = OUTLINED_FUNCTION_119();
        v190(v189);
        v191 = OUTLINED_FUNCTION_72_0();
        sub_1CA27080C(v191, v192, &unk_1CA983B10);
        ++v177;
      }

      else
      {
        v193 = OUTLINED_FUNCTION_72_0();
        sub_1CA27080C(v193, v194, &unk_1CA983B10);
        OUTLINED_FUNCTION_185();
        v281 = *v195;
        v281(v251, v183, v174);
        v196 = v276;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v284 = v196;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v198 = *(v196 + 16);
          v199 = OUTLINED_FUNCTION_66();
          sub_1CA27DD60(v199, v200, v201);
          OUTLINED_FUNCTION_198();
          v196 = v284;
        }

        v203 = *(v196 + 16);
        v202 = *(v196 + 24);
        v204 = v203 + 1;
        if (v203 >= v202 >> 1)
        {
          v206 = OUTLINED_FUNCTION_64(v202);
          v55 = v207;
          sub_1CA27DD60(v206, v207, 1);
          OUTLINED_FUNCTION_198();
          v196 = v284;
        }

        ++v177;
        *(v196 + 16) = v204;
        v276 = v196;
        OUTLINED_FUNCTION_185();
        v205();
      }

      v22 = v277;
      v74 = v268;
      v174 = v287;
    }

    v208 = *(v276 + 16);
    if (v208)
    {
      if (v208 <= v250)
      {

        v236 = *(v270 + 16);
        if (v236)
        {
          v237 = *(v74 + 80);
          OUTLINED_FUNCTION_68_0();
          v240 = v238 + v239;
          v288 = *(v74 + 72);
          v283 = *(v74 + 16);
          v241 = v279;
          v242 = v248;
          do
          {
            OUTLINED_FUNCTION_68_1();
            v283();
            swift_getKeyPath();
            v243 = OUTLINED_FUNCTION_35_1();
            __swift_storeEnumTagSinglePayload(v243, v244, v245, v282);
            v246 = sub_1CA94BF88();
            OUTLINED_FUNCTION_136_0();
            sub_1CA94BD78();
            sub_1CA27080C(v22, &qword_1EC443BB8, &unk_1CA983A70);
            (*v241)(v242, v282);
            v247 = OUTLINED_FUNCTION_11_7();
            v246(v247);

            v240 += v288;
            --v236;
          }

          while (v236);
        }
      }

      else
      {
        v209 = (*(v74 + 80) + 32) & ~*(v74 + 80);
        v210 = *(v74 + 72);
        v211 = v249;
        v55 = v282;
        v281 = *(v74 + 16);
        v281(v249, (v276 + v209 + v210 * (v250 & ~(v250 >> 63))), v282);

        MEMORY[0x1EEE9AC00](v212);
        OUTLINED_FUNCTION_98();
        *(v213 - 16) = v211;
        v214 = v252;
        v216 = sub_1CA2CC9F8(sub_1CA2D9B48, v215, v174);
        v252 = v214;
        v218 = v270;
        v219 = *(v270 + 16);
        if (v219)
        {
          if (v217)
          {
            v220 = 0;
          }

          else
          {
            v220 = v216;
          }

          v221 = (v270 + v209 + v210 * (v219 - 1));
          v222 = -v210;
          while (v219 <= *(v218 + 16))
          {
            v223 = v283;
            v281(v283, v221, v55);
            v224 = sub_1CA58A43C(v223, v287);
            if (v225)
            {
              v224 = *(v287 + 16);
            }

            --v219;
            v220 -= v224 < v220;
            swift_getKeyPath();
            v226 = v277;
            OUTLINED_FUNCTION_46();
            __swift_storeEnumTagSinglePayload(v227, v228, v229, v55);
            v230 = sub_1CA94BF88();
            sub_1CA94BD58();
            sub_1CA27080C(v226, &qword_1EC443BB8, &unk_1CA983A70);
            v231 = OUTLINED_FUNCTION_11_7();
            v230(v231);
            v55 = v282;

            v232 = *v279;
            v233 = OUTLINED_FUNCTION_94();
            (v232)(v233);
            v221 += v222;
            v218 = v270;
            if (!v219)
            {

              v232(v249, v55);
              goto LABEL_91;
            }
          }

LABEL_93:
          __break(1u);
LABEL_94:
          __break(1u);
LABEL_95:
          __break(1u);
LABEL_96:
          __break(1u);
LABEL_97:
          __break(1u);
LABEL_98:
          __break(1u);
LABEL_99:
          __break(1u);
LABEL_100:
          __break(1u);
        }

        (*v279)(v249, v55);
      }
    }

    else
    {

      sub_1CA2D9AF4();
      v234 = OUTLINED_FUNCTION_127();
      OUTLINED_FUNCTION_28_1(xmmword_1CA982040, v234, v235);
    }
  }

LABEL_91:
  OUTLINED_FUNCTION_107();
}

void sub_1CA2D4310()
{
  OUTLINED_FUNCTION_37_0();
  v4 = v3;
  v6 = v5;
  v96 = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443C78, &qword_1CA982108);
  OUTLINED_FUNCTION_18_0(v8);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_43();
  v92 = v12;
  OUTLINED_FUNCTION_25_0();
  v13 = sub_1CA949F78();
  v14 = OUTLINED_FUNCTION_1_0(v13);
  v93 = v15;
  v94 = v14;
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_19();
  v20 = v18 - v19;
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_48_0();
  v89 = v22;
  v23 = OUTLINED_FUNCTION_25_0();
  v95 = type metadata accessor for LibraryModel.CategoryCollection(v23);
  v24 = OUTLINED_FUNCTION_52(v95);
  v26 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_3_1();
  v90 = v27;
  OUTLINED_FUNCTION_31_2();
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_48_0();
  v91 = v29;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443C38, &qword_1CA9820D8);
  v31 = OUTLINED_FUNCTION_18_0(v30);
  v33 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_3_1();
  OUTLINED_FUNCTION_31_2();
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_60_2();
  v35 = type metadata accessor for LibraryModel(0);
  v36 = OUTLINED_FUNCTION_18_0(v35);
  v38 = *(v37 + 64);
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_56_1();
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443BA0, &unk_1CA9844D0);
  OUTLINED_FUNCTION_1_0(v39);
  v41 = v40;
  v43 = *(v42 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x1EEE9AC00](v44);
  OUTLINED_FUNCTION_36_2();
  v45 = WFGetBuiltInCollectionIdentifiers(0);
  v46 = sub_1CA94C8F8();

  v47 = OUTLINED_FUNCTION_103();
  LOBYTE(v45) = sub_1CA27AF18(v47, v48, v46);

  if ((v45 & 1) == 0)
  {
    v78 = *MEMORY[0x1E69E1098];
    sub_1CA949C58();
    sub_1CA94C218();
    v79 = sub_1CA949F68();
    v80 = sub_1CA94CC28();

    if (os_log_type_enabled(v79, v80))
    {
      v81 = swift_slowAlloc();
      v82 = swift_slowAlloc();
      v97[0] = v82;
      *v81 = 136446210;
      v83 = OUTLINED_FUNCTION_103();
      *(v81 + 4) = sub_1CA26B54C(v83, v84, v85);
      _os_log_impl(&dword_1CA256000, v79, v80, "Attempting to create a built in collection with an invalid identifier %{public}s", v81, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v82);
      OUTLINED_FUNCTION_154();
      MEMORY[0x1CCAA4BF0]();
      OUTLINED_FUNCTION_154();
      MEMORY[0x1CCAA4BF0]();
    }

    (*(v93 + 8))(v20, v94);
    v88 = 1;
    v87 = v96;
    goto LABEL_10;
  }

  sub_1CA94C218();
  sub_1CA94BFB8();
  v97[0] = v6;
  v97[1] = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443C40, &qword_1CA9844E0);
  sub_1CA94BC98();

  OUTLINED_FUNCTION_0_9();
  sub_1CA26F808(v1, v49);
  v50 = OUTLINED_FUNCTION_115_0();
  OUTLINED_FUNCTION_49(v50, v51, v39);
  if (!v52)
  {
    OUTLINED_FUNCTION_153();
    v86(v0, v2, v39);
    v87 = v96;
    sub_1CA94BEB8();
    (*(v41 + 8))(v0, v39);
    v88 = 0;
LABEL_10:
    v61 = v95;
    goto LABEL_11;
  }

  sub_1CA27080C(v2, &qword_1EC443C38, &qword_1CA9820D8);
  v53 = OUTLINED_FUNCTION_23();
  __swift_instantiateConcreteTypeFromMangledNameV2(v53, v54);
  OUTLINED_FUNCTION_68_1();
  sub_1CA25C3BC(v55, v56, v57);
  OUTLINED_FUNCTION_68_1();
  sub_1CA25C3BC(v58, v59, v60);
  sub_1CA94BD28();
  v61 = v95;
  *(v91 + *(v95 + 20)) = MEMORY[0x1E69E7CC8];
  v62 = *MEMORY[0x1E69E1098];
  sub_1CA949C58();
  sub_1CA94C218();
  v63 = sub_1CA949F68();
  v64 = sub_1CA94CBF8();

  if (os_log_type_enabled(v63, v64))
  {
    v65 = swift_slowAlloc();
    v66 = swift_slowAlloc();
    v97[0] = v66;
    *v65 = 136446210;
    *(v65 + 4) = sub_1CA26B54C(v6, v4, v97);
    _os_log_impl(&dword_1CA256000, v63, v64, "Creating a collection with identifier %{public}s", v65, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v66);
    OUTLINED_FUNCTION_154();
    MEMORY[0x1CCAA4BF0]();
    OUTLINED_FUNCTION_154();
    MEMORY[0x1CCAA4BF0]();
  }

  (*(v93 + 8))(v89, v94);
  sub_1CA2D9BBC(v91, v90);
  sub_1CA94C168();
  OUTLINED_FUNCTION_46();
  __swift_storeEnumTagSinglePayload(v67, v68, v69, v70);
  OUTLINED_FUNCTION_74_1();
  v73 = sub_1CA25C558(v71, v72);
  sub_1CA94C218();

  MEMORY[0x1CCAA0CF0](v74, v90, v92, v95, v73);
  OUTLINED_FUNCTION_89();
  __swift_storeEnumTagSinglePayload(v75, v76, v77, v39);
  v97[4] = v6;
  v97[5] = v4;
  sub_1CA94BFA8();
  OUTLINED_FUNCTION_69_1();
  sub_1CA94BCA8();
  v73(v97, 0);
  v87 = v96;
  sub_1CA2D9C14(v91, v96);
  v88 = 0;
LABEL_11:
  __swift_storeEnumTagSinglePayload(v87, v88, 1, v61);
  OUTLINED_FUNCTION_36();
}

void sub_1CA2D4A0C()
{
  OUTLINED_FUNCTION_108();
  v44 = v4;
  v5 = sub_1CA94C168();
  v6 = OUTLINED_FUNCTION_18_0(v5);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_6_2();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443BB8, &unk_1CA983A70);
  OUTLINED_FUNCTION_18_0(v9);
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_37_1();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443950, &unk_1CA982580);
  OUTLINED_FUNCTION_1_0(v13);
  v45 = v14;
  v16 = *(v15 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_14_5();
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443BE8, &qword_1CA982098);
  OUTLINED_FUNCTION_18_0(v18);
  v20 = *(v19 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_25();
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443BF0, &qword_1CA9820A0);
  OUTLINED_FUNCTION_52(v22);
  v24 = *(v23 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_27();
  sub_1CA2CA09C();
  v26 = OUTLINED_FUNCTION_115_0();
  OUTLINED_FUNCTION_49(v26, v27, v22);
  if (v32)
  {
    sub_1CA27080C(v3, &qword_1EC443BE8, &qword_1CA982098);
    sub_1CA2D9AF4();
    v28 = OUTLINED_FUNCTION_127();
    *v29 = 0;
    v29[1] = 0;
    OUTLINED_FUNCTION_52_1(v28, v29);
  }

  else
  {
    sub_1CA2D9CD4(v3, v1, &qword_1EC443BF0, &qword_1CA9820A0);
    sub_1CA2C9ED0();
    v30 = OUTLINED_FUNCTION_81();
    OUTLINED_FUNCTION_49(v30, v31, v13);
    if (v32)
    {
      sub_1CA94C218();
      sub_1CA94C178();
      sub_1CA2D9968();

      sub_1CA94BE58();
      v33 = OUTLINED_FUNCTION_81();
      OUTLINED_FUNCTION_49(v33, v34, v13);
      v35 = v45;
      if (!v32)
      {
        sub_1CA27080C(v2, &qword_1EC443BB8, &unk_1CA983A70);
      }
    }

    else
    {
      v35 = v45;
      v36 = *(v45 + 32);
      v37 = OUTLINED_FUNCTION_126();
      v38(v37);
    }

    sub_1CA94BFA8();
    OUTLINED_FUNCTION_69_1();
    v39 = v0 + *(type metadata accessor for LibraryModel(0) + 20);
    OUTLINED_FUNCTION_136_0();
    sub_1CA2D4D6C();
    v40 = OUTLINED_FUNCTION_85_0();
    v44(v40);
    v41 = *(v35 + 8);
    v42 = OUTLINED_FUNCTION_104();
    v43(v42);
    sub_1CA27080C(v1, &qword_1EC443BF0, &qword_1CA9820A0);
  }

  OUTLINED_FUNCTION_111();
  OUTLINED_FUNCTION_107();
}

void sub_1CA2D4D6C()
{
  OUTLINED_FUNCTION_37_0();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443950, &unk_1CA982580);
  OUTLINED_FUNCTION_1_0(v1);
  v3 = v2;
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_14_5();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443BB8, &unk_1CA983A70);
  OUTLINED_FUNCTION_18_0(v7);
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_37_1();
  v11 = OUTLINED_FUNCTION_95();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(v11, v12);
  OUTLINED_FUNCTION_18_0(v13);
  v15 = *(v14 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_20_3();
  v17 = OUTLINED_FUNCTION_72_0();
  sub_1CA2D9D20(v17, v18, &qword_1EC443BF0, &qword_1CA9820A0);
  v19 = OUTLINED_FUNCTION_87_0();
  OUTLINED_FUNCTION_49(v19, v20, v1);
  if (v21)
  {
    OUTLINED_FUNCTION_46();
    __swift_storeEnumTagSinglePayload(v22, v23, v24, v1);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443BA8, &unk_1CA983A80);
    v25 = OUTLINED_FUNCTION_161();
    v26(v25);
    sub_1CA27080C(v0, &qword_1EC443BB8, &unk_1CA983A70);
  }

  else
  {
    v27 = v3[4];
    v28 = OUTLINED_FUNCTION_91();
    v29(v28);
    v30 = v3[2];
    v31 = OUTLINED_FUNCTION_194_0();
    v32(v31);
    OUTLINED_FUNCTION_89();
    __swift_storeEnumTagSinglePayload(v33, v34, v35, v1);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443BA8, &unk_1CA983A80);
    v36 = OUTLINED_FUNCTION_161();
    v37(v36);
    sub_1CA27080C(v0, &qword_1EC443BB8, &unk_1CA983A70);
    v38 = v3[1];
    v39 = OUTLINED_FUNCTION_104();
    v40(v39);
  }

  OUTLINED_FUNCTION_36();
}

void Capsule<>.capsuleData(persistenceMode:)()
{
  OUTLINED_FUNCTION_108();
  v2 = v1;
  v3 = sub_1CA94BE78();
  v4 = OUTLINED_FUNCTION_1_0(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_65_1();
  sub_1CA94C128();
  if (v2)
  {
    v15 = 0;
    memset(v14, 0, sizeof(v14));
    v9 = MEMORY[0x1CCAA0F50](0, v14);
    sub_1CA27080C(v14, &qword_1EC443B90, &qword_1CA982058);
  }

  else
  {
    v9 = sub_1CA94C118();
  }

  v10 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443B98, &qword_1CA986560);
  OUTLINED_FUNCTION_72_0();
  sub_1CA94BF78();
  (*(v6 + 104))(v0, *MEMORY[0x1E6995290], v3);
  OUTLINED_FUNCTION_204();
  sub_1CA94BF68();
  v11 = *(v6 + 8);
  v12 = OUTLINED_FUNCTION_103();
  v13(v12);

  if (v2)
  {
    sub_1CA94C108();
  }

  OUTLINED_FUNCTION_70();
  OUTLINED_FUNCTION_107();
}

void Capsule<>.erasingChangeHistory()()
{
  OUTLINED_FUNCTION_37_0();
  v1 = sub_1CA94C168();
  v2 = OUTLINED_FUNCTION_18_0(v1);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_73_1();
  v5 = type metadata accessor for LibraryModel(0);
  v6 = OUTLINED_FUNCTION_52(v5);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_56_1();
  v9 = OUTLINED_FUNCTION_126();
  __swift_instantiateConcreteTypeFromMangledNameV2(v9, v10);
  OUTLINED_FUNCTION_134_1();
  sub_1CA25C3BC(v11, v12, v13);
  OUTLINED_FUNCTION_134_1();
  sub_1CA25C3BC(v14, v15, v16);
  sub_1CA94BC78();
  v17 = *(v5 + 20);
  v18 = OUTLINED_FUNCTION_126();
  __swift_instantiateConcreteTypeFromMangledNameV2(v18, v19);
  OUTLINED_FUNCTION_76();
  OUTLINED_FUNCTION_134_1();
  sub_1CA25C3BC(v20, v21, v22);
  OUTLINED_FUNCTION_75();
  OUTLINED_FUNCTION_134_1();
  sub_1CA25C3BC(v23, v24, v25);
  OUTLINED_FUNCTION_72_0();
  sub_1CA94BDC8();
  *(v0 + *(v5 + 24)) = MEMORY[0x1E69E7CC8];
  sub_1CA94C178();
  OUTLINED_FUNCTION_16_4();
  sub_1CA25C558(v26, v27);
  OUTLINED_FUNCTION_188();
  sub_1CA94C038();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443B98, &qword_1CA986560);
  sub_1CA94BFF8();
  OUTLINED_FUNCTION_36();
}

void sub_1CA2D536C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_108();
  a19 = v23;
  a20 = v24;
  v420 = v20;
  v464 = v25;
  v447 = v26;
  v453 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443BE0, &qword_1CA982090);
  OUTLINED_FUNCTION_1_0(v453);
  v408 = v27;
  v29 = *(v28 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_43();
  v452 = v31;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443CA8, &qword_1CA982130);
  OUTLINED_FUNCTION_18_0(v32);
  v34 = *(v33 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_172(v36);
  v427 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443C30, &qword_1CA9820D0);
  OUTLINED_FUNCTION_1_0(v427);
  v407 = v37;
  v39 = *(v38 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x1EEE9AC00](v40);
  OUTLINED_FUNCTION_43();
  v42 = OUTLINED_FUNCTION_19_0(v41);
  v426 = type metadata accessor for LibraryModel.CategoryCollection(v42);
  v43 = OUTLINED_FUNCTION_52(v426);
  v45 = *(v44 + 64);
  MEMORY[0x1EEE9AC00](v43);
  OUTLINED_FUNCTION_6_2();
  OUTLINED_FUNCTION_44_0(v46);
  v459 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443CB0, &qword_1CA982138);
  OUTLINED_FUNCTION_1_0(v459);
  v406 = v47;
  v49 = *(v48 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x1EEE9AC00](v50);
  OUTLINED_FUNCTION_43();
  v465 = v51;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443C90, &qword_1CA982120);
  OUTLINED_FUNCTION_18_0(v52);
  v54 = *(v53 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x1EEE9AC00](v55);
  OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_44_0(v56);
  v443 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443BA0, &unk_1CA9844D0);
  OUTLINED_FUNCTION_1_0(v443);
  v405 = v57;
  v59 = *(v58 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x1EEE9AC00](v60);
  OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_44_0(v61);
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443CB8, &qword_1CA982140);
  v63 = OUTLINED_FUNCTION_18_0(v62);
  v65 = *(v64 + 64);
  MEMORY[0x1EEE9AC00](v63);
  OUTLINED_FUNCTION_3_1();
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v66);
  OUTLINED_FUNCTION_48_0();
  OUTLINED_FUNCTION_44_0(v67);
  v404 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443C40, &qword_1CA9844E0);
  OUTLINED_FUNCTION_1_0(v404);
  v403[2] = v68;
  v70 = *(v69 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x1EEE9AC00](v71);
  OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_44_0(v72);
  v431 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443CC0, &qword_1CA982148);
  OUTLINED_FUNCTION_1_0(v431);
  v403[0] = v73;
  v75 = *(v74 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x1EEE9AC00](v76);
  OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_44_0(v77);
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443BB0, &qword_1CA982060);
  OUTLINED_FUNCTION_18_0(v78);
  v80 = *(v79 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x1EEE9AC00](v81);
  OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_44_0(v82);
  v425 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443BC0, &unk_1CA983B20);
  OUTLINED_FUNCTION_1_0(v425);
  v449 = v83;
  v85 = *(v84 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x1EEE9AC00](v86);
  OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_19_0(v87);
  v417 = sub_1CA949F78();
  v88 = OUTLINED_FUNCTION_1_0(v417);
  v446 = v89;
  v91 = *(v90 + 64);
  MEMORY[0x1EEE9AC00](v88);
  OUTLINED_FUNCTION_6_2();
  v93 = OUTLINED_FUNCTION_19_0(v92);
  v410 = type metadata accessor for LibraryModel.FolderCollection(v93);
  v94 = OUTLINED_FUNCTION_52(v410);
  v96 = *(v95 + 64);
  MEMORY[0x1EEE9AC00](v94);
  OUTLINED_FUNCTION_6_2();
  OUTLINED_FUNCTION_19_0(v97);
  v455 = sub_1CA94C168();
  v98 = OUTLINED_FUNCTION_1_0(v455);
  v409 = v99;
  v101 = *(v100 + 64);
  MEMORY[0x1EEE9AC00](v98);
  OUTLINED_FUNCTION_3_1();
  v450 = v102;
  OUTLINED_FUNCTION_31_2();
  MEMORY[0x1EEE9AC00](v103);
  OUTLINED_FUNCTION_45_0();
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v104);
  OUTLINED_FUNCTION_45_0();
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v105);
  OUTLINED_FUNCTION_48_0();
  OUTLINED_FUNCTION_44_0(v106);
  v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&off_1EC443BD0, &unk_1CA983B10);
  v108 = OUTLINED_FUNCTION_18_0(v107);
  v110 = *(v109 + 64);
  MEMORY[0x1EEE9AC00](v108);
  OUTLINED_FUNCTION_3_1();
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v111);
  OUTLINED_FUNCTION_45_0();
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v112);
  OUTLINED_FUNCTION_48_0();
  OUTLINED_FUNCTION_44_0(v113);
  v424 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443BD8, &qword_1CA982068);
  OUTLINED_FUNCTION_1_0(v424);
  v442 = v114;
  v116 = *(v115 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x1EEE9AC00](v117);
  OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_44_0(v118);
  v119 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443950, &unk_1CA982580);
  OUTLINED_FUNCTION_1_0(v119);
  v433 = v120;
  v122 = *(v121 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x1EEE9AC00](v123);
  OUTLINED_FUNCTION_43();
  v466 = v124;
  v125 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443BB8, &unk_1CA983A70);
  v126 = OUTLINED_FUNCTION_18_0(v125);
  v128 = *(v127 + 64);
  MEMORY[0x1EEE9AC00](v126);
  OUTLINED_FUNCTION_3_1();
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v129);
  OUTLINED_FUNCTION_48_0();
  OUTLINED_FUNCTION_44_0(v130);
  v131 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443BA8, &unk_1CA983A80);
  OUTLINED_FUNCTION_1_0(v131);
  v133 = v132;
  v135 = *(v134 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x1EEE9AC00](v136);
  OUTLINED_FUNCTION_63();
  v137 = type metadata accessor for LibraryModel(0);
  v138 = OUTLINED_FUNCTION_52(v137);
  v140 = *(v139 + 64);
  MEMORY[0x1EEE9AC00](v138);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_55_1();
  v141 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443B98, &qword_1CA986560);
  v142 = OUTLINED_FUNCTION_1_0(v141);
  v144 = v143;
  v146 = *(v145 + 64);
  MEMORY[0x1EEE9AC00](v142);
  OUTLINED_FUNCTION_3_1();
  v454 = v147;
  OUTLINED_FUNCTION_31_2();
  MEMORY[0x1EEE9AC00](v148);
  v150 = v403 - v149;
  v462 = *(v144 + 16);
  v463 = v144 + 16;
  v462(v403 - v149, v464, v141);
  sub_1CA94BFD8();
  v152 = *(v144 + 8);
  v151 = (v144 + 8);
  v444 = v150;
  v456 = v141;
  v460 = v152;
  v461 = v151;
  (v152)(v150, v141);
  v437 = v137;
  v153 = *(v133 + 16);
  v154 = v21 + *(v137 + 5);
  v436[1] = v133 + 16;
  v436[0] = v153;
  v153(v22, v154, v131);
  OUTLINED_FUNCTION_0_9();
  v441 = v21;
  sub_1CA26F808(v21, v155);
  v156 = v434[0];
  v157 = OUTLINED_FUNCTION_35_1();
  __swift_storeEnumTagSinglePayload(v157, v158, v159, v119);
  v160 = sub_1CA94BDB8();
  sub_1CA27080C(v156, &qword_1EC443BB8, &unk_1CA983A70);
  v162 = *(v133 + 8);
  v161 = (v133 + 8);
  v438 = v22;
  v440 = v131;
  v439 = v161;
  v435 = v162;
  (v162)(v22, v131);
  v163 = *(v160 + 16);
  if (!v163)
  {
LABEL_55:

    v307 = OUTLINED_FUNCTION_23_3();
    v308 = v456;
    (v462)(v307);
    OUTLINED_FUNCTION_96_0(&a12);
    sub_1CA94BFD8();
    v309 = OUTLINED_FUNCTION_119();
    v460(v309);
    OUTLINED_FUNCTION_165_0(&v427);
    v311 = *(v310 + 16);
    v312 = OUTLINED_FUNCTION_61();
    v313(v312);
    OUTLINED_FUNCTION_0_9();
    sub_1CA26F808(v151, v314);
    OUTLINED_FUNCTION_196();
    sub_1CA94BC58();
    v315 = v156[1];
    v316 = OUTLINED_FUNCTION_3_3();
    v317(v316);
    v442 = (v405 + 32);
    v441 = v407 + 16;
    v440 = v407 + 8;
    v458 = (v408 + 32);
    v449 = v409 + 8;
    v457 = (v408 + 8);
    v439 = (v406 + 8);
    v438 = v405 + 8;
    v319 = v452;
    v318 = v453;
    v320 = v451;
    while (1)
    {
      v321 = v429;
      OUTLINED_FUNCTION_96_0(&v457);
      sub_1CA94BC68();
      v322 = OUTLINED_FUNCTION_122_0();
      sub_1CA2D9CD4(v322, v323, &qword_1EC443CB8, &qword_1CA982140);
      v324 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443CC8, &unk_1CA982150);
      v325 = OUTLINED_FUNCTION_87_0();
      OUTLINED_FUNCTION_49(v325, v326, v324);
      if (v208)
      {
        (*(v403[0] + 8))(v432, v431);
        OUTLINED_FUNCTION_107();
        return;
      }

      v328 = *v321;
      v327 = *(v321 + 1);
      (*v442)(v445, &v321[*(v324 + 48)], v443);
      OUTLINED_FUNCTION_96_0(&v450);
      v446 = v328;
      v448 = v327;
      sub_1CA2D4310();
      sub_1CA27080C(v151, &qword_1EC443C90, &qword_1CA982120);
      v329 = OUTLINED_FUNCTION_23_3();
      (v462)(v329);
      OUTLINED_FUNCTION_74_1();
      sub_1CA25C558(&qword_1EC442B78, v330);
      OUTLINED_FUNCTION_181(&v451);
      sub_1CA94C048();
      v331 = OUTLINED_FUNCTION_119();
      v460(v331);
      OUTLINED_FUNCTION_38_1(&a12);
      v332 = OUTLINED_FUNCTION_113();
      v151 = v427;
      v333(v332, v321, v427);
      OUTLINED_FUNCTION_1_9();
      sub_1CA26F808(v321, v334);
      sub_1CA94BCB8();
      v335 = OUTLINED_FUNCTION_24_4(&a11);
      v336(v335);
      v337 = v454;
      while (1)
      {
        sub_1CA94BD18();
        v338 = OUTLINED_FUNCTION_115_0();
        OUTLINED_FUNCTION_49(v338, v339, v318);
        if (v208)
        {
          break;
        }

        (*v458)(v319, v320, v318);
        v462(v337, v464, v308);
        OUTLINED_FUNCTION_77_2();
        v151 = sub_1CA25C3BC(&qword_1EC441BB0, &qword_1EC443B98, &qword_1CA986560);
        sub_1CA2D9B68();
        sub_1CA94BD48();
        if (!v467)
        {
          v365 = OUTLINED_FUNCTION_126();
          v460(v365);
          goto LABEL_95;
        }

        sub_1CA94C068();
        v340 = sub_1CA948D28();
        v466 = v403;
        v341 = OUTLINED_FUNCTION_1_0(v340);
        v343 = v342;
        v345 = *(v344 + 64);
        MEMORY[0x1EEE9AC00](v341);
        OUTLINED_FUNCTION_6_0();
        OUTLINED_FUNCTION_55_1();
        v346 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443BC8, &qword_1CA9834A0);
        OUTLINED_FUNCTION_18_0(v346);
        v348 = *(v347 + 64);
        OUTLINED_FUNCTION_29();
        MEMORY[0x1EEE9AC00](v349);
        OUTLINED_FUNCTION_26_4();
        sub_1CA94C148();
        v350 = OUTLINED_FUNCTION_50_0();
        OUTLINED_FUNCTION_49(v350, v351, v340);
        if (v208)
        {
          v352 = OUTLINED_FUNCTION_187();
          sub_1CA27080C(v352, v353, &qword_1CA9834A0);
          v354 = sub_1CA94C158();
          v356 = v355;
          OUTLINED_FUNCTION_33_2();
          v308 = v456;
          switch(v364)
          {
            case 1:
              v360 = v358;
              v361 = v359;
              goto LABEL_67;
            case 2:
              v361 = *(v354 + 16);
              v360 = *(v354 + 24);
LABEL_67:
              if (v360 < v361)
              {
                __break(1u);
LABEL_100:
                __break(1u);
LABEL_101:
                __break(1u);
LABEL_102:
                __break(1u);
LABEL_103:
                __break(1u);
LABEL_104:
                __break(1u);
LABEL_105:
                __break(1u);
                goto LABEL_106;
              }

              if (v357 == 2)
              {
                v362 = *(v354 + 16);
                v363 = *(v354 + 24);
              }

              else
              {
                v363 = v358;
                v362 = v359;
              }

LABEL_71:
              if (v363 < v360 || v360 < v362)
              {
                goto LABEL_100;
              }

              if (__OFSUB__(v360, v361))
              {
                goto LABEL_101;
              }

              if (v360 == v361)
              {
                OUTLINED_FUNCTION_124_0();
                switch(v372)
                {
                  case 2:
                    OUTLINED_FUNCTION_186();
                    break;
                  default:
                    break;
                }
              }

              else
              {
                if (__OFADD__(v361, 1))
                {
                  goto LABEL_103;
                }

                OUTLINED_FUNCTION_141_0();
                switch(v379)
                {
                  case 1:
                    v378 = v374;
                    v377 = v376;
                    break;
                  case 2:
                    v377 = *(v354 + 16);
                    v378 = *(v354 + 24);
                    break;
                  case 3:
                    break;
                  default:
                    v377 = 0;
                    v378 = v375;
                    break;
                }

                if (v378 < v373 || v373 < v377)
                {
                  goto LABEL_104;
                }

                OUTLINED_FUNCTION_124_0();
                switch(v385)
                {
                  case 1:
                    v382 = v383;
                    break;
                  case 2:
                    v382 = *(v354 + 24);
                    break;
                  case 3:
                    break;
                  default:
                    v382 = v384;
                    break;
                }

                if (v382 < v381)
                {
                  goto LABEL_102;
                }
              }

              v321 = sub_1CA948BE8();
              sub_1CA266F2C(v354, v356);
              v386 = sub_1CA94C3E8();
              v387 = OUTLINED_FUNCTION_18_0(v386);
              v389 = *(v388 + 64);
              MEMORY[0x1EEE9AC00](v387);
              OUTLINED_FUNCTION_6_0();
              OUTLINED_FUNCTION_59_2();
              sub_1CA94C3D8();
              OUTLINED_FUNCTION_94();
              sub_1CA94C3B8();
              OUTLINED_FUNCTION_184();
              v390 = OUTLINED_FUNCTION_94();
              sub_1CA266F2C(v390, v391);
              v392 = OUTLINED_FUNCTION_67_1();
              v393(v392, v455);
              v337 = v454;
              v394 = OUTLINED_FUNCTION_126();
              v460(v394);
              if (v151)
              {
                goto LABEL_94;
              }

              v398 = *v457;
              v319 = v452;
              v318 = v453;
              v399 = OUTLINED_FUNCTION_95();
              v400(v399);
              v320 = v451;
              break;
            case 3:
              goto LABEL_71;
            default:
              OUTLINED_FUNCTION_101_0();
              goto LABEL_71;
          }
        }

        else
        {
          (*(v343 + 32))(v321, v151, v340);
          sub_1CA948CC8();
          OUTLINED_FUNCTION_184();
          v366 = *(v343 + 8);
          v367 = OUTLINED_FUNCTION_177();
          v368(v367);
          v369 = OUTLINED_FUNCTION_67_1();
          v370(v369, v455);
          v337 = v454;
          v308 = v456;
          (v460)(v454, v456);
LABEL_94:
          v319 = v452;
          v318 = v453;
          v320 = v451;
          OUTLINED_FUNCTION_61();
          sub_1CA2CB068();

LABEL_95:
          v395 = *v457;
          v396 = OUTLINED_FUNCTION_95();
          v397(v396);
        }
      }

      OUTLINED_FUNCTION_38_1(&a10);
      v401(v465, v459);
      OUTLINED_FUNCTION_38_1(&a9);
      OUTLINED_FUNCTION_199();
      v402();
    }
  }

  OUTLINED_FUNCTION_173();
  v448 = v161[2];
  v458 = (v161 + 1);
  v418 = (v442 + 4);
  v428 = (v409 + 8);
  v423 = (v442 + 1);
  v422 = @"Root";
  OUTLINED_FUNCTION_118();
  v416 = v164 + 8;
  v413 = v449 + 32;
  v414 = v449 + 8;
  v449 = v165;
  v166 = *(v165 + 64);
  v415 = *v167;
  OUTLINED_FUNCTION_132((v166 + 32) & ~v166);
  OUTLINED_FUNCTION_114();
  OUTLINED_FUNCTION_182();
  v457 = v119;
  while (1)
  {
    OUTLINED_FUNCTION_118();
    v448(v466, v160 + v168, v119);
    if (!swift_isUniquelyReferenced_nonNull_native() || (v163 - 1) > *(v160 + 24) >> 1)
    {
      OUTLINED_FUNCTION_160();
      sub_1CA27050C();
      v160 = v169;
    }

    OUTLINED_FUNCTION_118();
    v171 = v160 + v170;
    v156 = v161[1];
    v172 = OUTLINED_FUNCTION_130();
    (v156)(v172);
    OUTLINED_FUNCTION_193(v171 + v161[9], v161[9]);
    if (v175 ^ v176 | v208)
    {
      v177 = v171 >= v174;
    }

    else
    {
      v177 = 1;
    }

    v178 = v466;
    v179 = v137;
    if (v177)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v173)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    --*(v160 + 16);
    a10 = v160;
    OUTLINED_FUNCTION_23_3();
    OUTLINED_FUNCTION_137_0();
    v180();
    OUTLINED_FUNCTION_96_0(&a12);
    sub_1CA94BFD8();
    v181 = OUTLINED_FUNCTION_3_3();
    v182 = v457;
    v460(v181);
    OUTLINED_FUNCTION_129_0(&v469);
    OUTLINED_FUNCTION_90_1(&a9);
    OUTLINED_FUNCTION_174();
    (v436[0])();
    OUTLINED_FUNCTION_0_9();
    sub_1CA26F808(v171, v183);
    v184 = v434[0];
    v448(v434[0], v178, v182);
    OUTLINED_FUNCTION_89();
    __swift_storeEnumTagSinglePayload(v185, v186, v187, v182);
    OUTLINED_FUNCTION_162();
    v151 = sub_1CA94BDB8();
    sub_1CA27080C(v184, &qword_1EC443BB8, &unk_1CA983A70);
    OUTLINED_FUNCTION_150_1();
    v435();
    sub_1CA270864(v151);
    OUTLINED_FUNCTION_96_0(&v461);
    sub_1CA94BE38();
    v188 = OUTLINED_FUNCTION_50_0();
    OUTLINED_FUNCTION_49(v188, v189, v22);
    if (v208)
    {
      sub_1CA27080C(v151, &off_1EC443BD0, &unk_1CA983B10);
      v161 = &qword_1EC443BC8;
      v137 = v179;
      goto LABEL_17;
    }

    v442 = v156;
    OUTLINED_FUNCTION_38_1(&v440);
    v195 = OUTLINED_FUNCTION_61();
    v196(v195);
    OUTLINED_FUNCTION_165_0(&v442);
    sub_1CA94BE88();
    v22 = sub_1CA948D28();
    v430 = v403;
    v197 = OUTLINED_FUNCTION_1_0(v22);
    v199 = v198;
    v201 = *(v200 + 64);
    MEMORY[0x1EEE9AC00](v197);
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_56_1();
    v161 = &qword_1EC443BC8;
    v137 = &qword_1CA9834A0;
    v202 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443BC8, &qword_1CA9834A0);
    v119 = v403;
    OUTLINED_FUNCTION_18_0(v202);
    v204 = *(v203 + 64);
    OUTLINED_FUNCTION_29();
    MEMORY[0x1EEE9AC00](v205);
    OUTLINED_FUNCTION_20_3();
    sub_1CA94C148();
    v206 = OUTLINED_FUNCTION_87_0();
    OUTLINED_FUNCTION_49(v206, v207, v22);
    if (!v208)
    {
      OUTLINED_FUNCTION_200();
      v255 = OUTLINED_FUNCTION_122_0();
      v256(v255);
      v161 = sub_1CA948CC8();
      v258 = v257;
      v259 = *(v199 + 8);
      v260 = OUTLINED_FUNCTION_120();
      v261(v260);
      OUTLINED_FUNCTION_100(&v459);
      OUTLINED_FUNCTION_114();
      OUTLINED_FUNCTION_148();
      goto LABEL_28;
    }

    v209 = OUTLINED_FUNCTION_94();
    sub_1CA27080C(v209, v210, &qword_1CA9834A0);
    OUTLINED_FUNCTION_100(&v459);
    sub_1CA94C158();
    OUTLINED_FUNCTION_123_0();
    v211 = OUTLINED_FUNCTION_32_1();
    sub_1CA3780AC(v211, v212, v213, v214);
    v151 = v468;
    v215 = sub_1CA94C3E8();
    v119 = v403;
    v216 = OUTLINED_FUNCTION_18_0(v215);
    v218 = *(v217 + 64);
    MEMORY[0x1EEE9AC00](v216);
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_55_1();
    sub_1CA94C3D8();
    OUTLINED_FUNCTION_61();
    v219 = sub_1CA94C3B8();
    v258 = v220;
    v221 = OUTLINED_FUNCTION_61();
    sub_1CA266F2C(v221, v222);
    if (v258)
    {
      break;
    }

    OUTLINED_FUNCTION_38_1(&v455);
    v304();
    OUTLINED_FUNCTION_38_1(&v447);
    v305 = OUTLINED_FUNCTION_159();
    v306(v305);
    OUTLINED_FUNCTION_114();
    v182 = v457;
    OUTLINED_FUNCTION_148();
LABEL_17:
    sub_1CA94BE28();
    v190 = OUTLINED_FUNCTION_81();
    v191 = v182;
    v192 = v425;
    OUTLINED_FUNCTION_49(v190, v193, v425);
    if (v208)
    {
      v194 = OUTLINED_FUNCTION_176();
      (v156)(v194);
      sub_1CA27080C(v137, &qword_1EC443BB0, &qword_1CA982060);
      v119 = v191;
    }

    else
    {
      v442 = v156;
      OUTLINED_FUNCTION_38_1(&v435);
      v223 = OUTLINED_FUNCTION_113();
      v224(v223, v137, v192);
      v137 = v421;
      sub_1CA94BE88();
      v22 = sub_1CA948D28();
      v430 = v403;
      v225 = OUTLINED_FUNCTION_1_0(v22);
      v227 = v226;
      v229 = *(v228 + 64);
      MEMORY[0x1EEE9AC00](v225);
      OUTLINED_FUNCTION_6_0();
      OUTLINED_FUNCTION_56_1();
      v156 = &qword_1CA9834A0;
      v230 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443BC8, &qword_1CA9834A0);
      OUTLINED_FUNCTION_18_0(v230);
      v232 = *(v231 + 64);
      OUTLINED_FUNCTION_29();
      MEMORY[0x1EEE9AC00](v233);
      OUTLINED_FUNCTION_20_3();
      sub_1CA94C148();
      v234 = OUTLINED_FUNCTION_87_0();
      OUTLINED_FUNCTION_49(v234, v235, v22);
      if (!v236)
      {
        OUTLINED_FUNCTION_200();
        v271 = OUTLINED_FUNCTION_122_0();
        v272(v271);
        v161 = sub_1CA948CC8();
        v273 = *(v227 + 8);
        v227 += 8;
        v274 = OUTLINED_FUNCTION_120();
        v275(v274);
        OUTLINED_FUNCTION_100(&v459);
LABEL_39:
        OUTLINED_FUNCTION_182();
        v156 = *v428;
        (*v428)(v421, v455);
        OUTLINED_FUNCTION_23_3();
        OUTLINED_FUNCTION_137_0();
        v276();
        OUTLINED_FUNCTION_96_0(&a12);
        sub_1CA94BFD8();
        v277 = OUTLINED_FUNCTION_3_3();
        v460(v277);
        OUTLINED_FUNCTION_129_0(&v469);
        OUTLINED_FUNCTION_90_1(&a9);
        OUTLINED_FUNCTION_174();
        (v436[0])();
        OUTLINED_FUNCTION_0_9();
        sub_1CA26F808(v151, v278);
        OUTLINED_FUNCTION_179(v434);
        sub_1CA94BD98();
        OUTLINED_FUNCTION_3_3();
        OUTLINED_FUNCTION_150_1();
        v435();
        v279 = OUTLINED_FUNCTION_83();
        OUTLINED_FUNCTION_49(v279, v280, v457);
        v281 = v419;
        if (v208)
        {
          sub_1CA27080C(v227, &qword_1EC443BB8, &unk_1CA983A70);
          OUTLINED_FUNCTION_46();
          __swift_storeEnumTagSinglePayload(v282, v283, v284, v22);
        }

        else
        {
          sub_1CA94BE38();
          v285 = OUTLINED_FUNCTION_104();
          (v442)(v285);
        }

        v151 = &unk_1CA983B10;
        sub_1CA2D9D20(v281, v412, &off_1EC443BD0, &unk_1CA983B10);
        v286 = OUTLINED_FUNCTION_83();
        OUTLINED_FUNCTION_49(v286, v287, v22);
        if (!v208)
        {
          OUTLINED_FUNCTION_58_1(&v432);
          sub_1CA94BE88();
          CRKeyPath.recoveredStringIdentifier.getter();
          OUTLINED_FUNCTION_184();
          (v156)(&off_1EC443BD0, v455);
          OUTLINED_FUNCTION_38_1(&v447);
          v290 = OUTLINED_FUNCTION_197();
          v291(v290);
          OUTLINED_FUNCTION_114();
          v119 = v457;
          OUTLINED_FUNCTION_148();
          if (!&unk_1CA983B10)
          {
LABEL_46:
            sub_1CA94C3A8();
            OUTLINED_FUNCTION_184();
          }

          OUTLINED_FUNCTION_173();
          OUTLINED_FUNCTION_91();
          v292 = v420;
          sub_1CA2CE3AC();
          v420 = v292;
          if (v292)
          {
            goto LABEL_107;
          }

          sub_1CA27080C(v419, &off_1EC443BD0, &unk_1CA983B10);
          OUTLINED_FUNCTION_38_1(v436);
          v293 = OUTLINED_FUNCTION_171_0();
          v294(v293);
          (v156)(v466, v119);
          goto LABEL_52;
        }

        v288 = OUTLINED_FUNCTION_82();
        sub_1CA27080C(v288, v289, &unk_1CA983B10);
        OUTLINED_FUNCTION_114();
        v119 = v457;
        OUTLINED_FUNCTION_148();
        goto LABEL_46;
      }

      v237 = OUTLINED_FUNCTION_94();
      sub_1CA27080C(v237, v238, &qword_1CA9834A0);
      OUTLINED_FUNCTION_100(&v459);
      sub_1CA94C158();
      OUTLINED_FUNCTION_123_0();
      v239 = OUTLINED_FUNCTION_32_1();
      sub_1CA3780AC(v239, v240, v241, v242);
      v151 = v468;
      v243 = sub_1CA94C3E8();
      v119 = v403;
      v244 = OUTLINED_FUNCTION_18_0(v243);
      v246 = *(v245 + 64);
      MEMORY[0x1EEE9AC00](v244);
      OUTLINED_FUNCTION_6_0();
      OUTLINED_FUNCTION_55_1();
      sub_1CA94C3D8();
      OUTLINED_FUNCTION_61();
      v161 = sub_1CA94C3B8();
      v248 = v247;
      v249 = OUTLINED_FUNCTION_61();
      sub_1CA266F2C(v249, v250);
      if (v248)
      {
        goto LABEL_39;
      }

      OUTLINED_FUNCTION_38_1(&v455);
      v251(v137, v455);
      OUTLINED_FUNCTION_38_1(v436);
      v252 = OUTLINED_FUNCTION_171_0();
      v253(v252);
      v254 = OUTLINED_FUNCTION_144();
      (v442)(v254);
      OUTLINED_FUNCTION_114();
      OUTLINED_FUNCTION_182();
    }

LABEL_38:
    OUTLINED_FUNCTION_173();
LABEL_52:
    v160 = a10;
    v163 = *(a10 + 16);
    if (!v163)
    {
      goto LABEL_55;
    }
  }

  OUTLINED_FUNCTION_114();
  OUTLINED_FUNCTION_148();
  v161 = v219;
LABEL_28:
  OUTLINED_FUNCTION_38_1(&v455);
  v262();
  if (v161 == sub_1CA94C3A8() && v258 == v263)
  {

LABEL_35:
    OUTLINED_FUNCTION_182();

    OUTLINED_FUNCTION_58_1(&v439);
    sub_1CA949C58();
    v266 = sub_1CA949F68();
    v151 = sub_1CA94CC08();
    if (os_log_type_enabled(v266, v151))
    {
      v267 = swift_slowAlloc();
      *v267 = 0;
      _os_log_impl(&dword_1CA256000, v266, v151, "Ignoring root collection in migration", v267, 2u);
      OUTLINED_FUNCTION_154();
      MEMORY[0x1CCAA4BF0]();
    }

    OUTLINED_FUNCTION_38_1(&v437);
    v268(v403, v417);
    OUTLINED_FUNCTION_38_1(&v447);
    v269(v434[1], v22);
    v270 = OUTLINED_FUNCTION_144();
    (v156)(v270);
    goto LABEL_38;
  }

  OUTLINED_FUNCTION_72_0();
  v265 = sub_1CA94D7F8();

  if (v265)
  {
    goto LABEL_35;
  }

  OUTLINED_FUNCTION_23_3();
  OUTLINED_FUNCTION_137_0();
  v295();
  OUTLINED_FUNCTION_13_4();
  sub_1CA25C558(&qword_1EC442BE8, v296);
  OUTLINED_FUNCTION_179(&v433);
  v137 = v410;
  sub_1CA94C048();
  v297 = OUTLINED_FUNCTION_3_3();
  v460(v297);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443C00, &unk_1CA983B30);
  sub_1CA94B858();
  v22 = v467;
  v151 = v468;
  v119 = *(v137 + 5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443BF8, &qword_1CA9820A8);
  sub_1CA94B858();
  if ((v467 & 0x8000000000000000) != 0)
  {
    goto LABEL_105;
  }

  if (!(v467 >> 16))
  {
    OUTLINED_FUNCTION_152();
    sub_1CA2D0DF0();
    v299 = v298;

    OUTLINED_FUNCTION_4_5();
    sub_1CA26F808(v411, v300);
    OUTLINED_FUNCTION_38_1(&v447);
    v301 = OUTLINED_FUNCTION_159();
    v302(v301);
    v303 = OUTLINED_FUNCTION_144();
    (v156)(v303);
    OUTLINED_FUNCTION_173();
    OUTLINED_FUNCTION_114();
    goto LABEL_52;
  }

LABEL_106:
  __break(1u);
LABEL_107:

  swift_unexpectedError();
  __break(1u);
}