uint64_t sub_1CA511FA8()
{
  sub_1CA25B3D0(0, &unk_1EC4417F0, 0x1E6996F08);
  if (OUTLINED_FUNCTION_13_24())
  {
    return 1;
  }

  sub_1CA25B3D0(0, &qword_1EC4417E8, 0x1E6996E08);
  if (OUTLINED_FUNCTION_13_24())
  {
    return 2;
  }

  sub_1CA25B3D0(0, &qword_1EC441838, 0x1E6996E90);
  if (OUTLINED_FUNCTION_13_24())
  {
    return 3;
  }

  sub_1CA25B3D0(0, &unk_1EC441A10, 0x1E6996F88);
  return 4 * (OUTLINED_FUNCTION_13_24() != 0);
}

uint64_t sub_1CA51205C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E69616C70 && a2 == 0xE500000000000000;
  if (v4 || (sub_1CA94D7F8() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6D754E656E6F6870 && a2 == 0xEB00000000726562;
    if (v6 || (sub_1CA94D7F8() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6464416C69616D65 && a2 == 0xEC00000073736572;
      if (v7 || (sub_1CA94D7F8() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x6E6F697461636F6CLL && a2 == 0xE800000000000000;
        if (v8 || (sub_1CA94D7F8() & 1) != 0)
        {

          return 3;
        }

        else if (a1 == 7107189 && a2 == 0xE300000000000000)
        {

          return 4;
        }

        else
        {
          v10 = sub_1CA94D7F8();

          if (v10)
          {
            return 4;
          }

          else
          {
            return 5;
          }
        }
      }
    }
  }
}

uint64_t sub_1CA512208(char a1)
{
  result = 0x6E69616C70;
  switch(a1)
  {
    case 1:
      result = 0x6D754E656E6F6870;
      break;
    case 2:
      result = 0x6464416C69616D65;
      break;
    case 3:
      result = 0x6E6F697461636F6CLL;
      break;
    case 4:
      result = 7107189;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1CA5122A8(void *a1, uint64_t a2)
{
  v64 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4460D8, &qword_1CA98A3E8);
  v4 = OUTLINED_FUNCTION_1_0(v3);
  v62 = v5;
  v63 = v4;
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_43();
  v61 = v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4460E0, &qword_1CA98A3F0);
  v11 = OUTLINED_FUNCTION_1_0(v10);
  v59 = v12;
  v60 = v11;
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_43();
  v58 = v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4460E8, &qword_1CA98A3F8);
  v18 = OUTLINED_FUNCTION_1_0(v17);
  v56 = v19;
  v57 = v18;
  v21 = *(v20 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_43();
  v55 = v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4460F0, &qword_1CA98A400);
  v25 = OUTLINED_FUNCTION_1_0(v24);
  v53 = v26;
  v54 = v25;
  v28 = *(v27 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x1EEE9AC00](v29);
  v31 = &v52 - v30;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4460F8, &qword_1CA98A408);
  OUTLINED_FUNCTION_1_0(v32);
  v52 = v33;
  v35 = *(v34 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x1EEE9AC00](v36);
  v38 = &v52 - v37;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC446100, &qword_1CA98A410);
  OUTLINED_FUNCTION_1_0(v39);
  v41 = v40;
  v43 = *(v42 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x1EEE9AC00](v44);
  v46 = &v52 - v45;
  v47 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1CA514800();
  sub_1CA94D9B8();
  switch(v64)
  {
    case 1:
      v66 = 1;
      sub_1CA514950();
      sub_1CA94D748();
      (*(v53 + 8))(v31, v54);
      return (*(v41 + 8))(v46, v39);
    case 2:
      v67 = 2;
      sub_1CA5148FC();
      v48 = v55;
      OUTLINED_FUNCTION_4_40();
      v50 = v56;
      v49 = v57;
      goto LABEL_6;
    case 3:
      v68 = 3;
      sub_1CA5148A8();
      v48 = v58;
      OUTLINED_FUNCTION_4_40();
      v50 = v59;
      v49 = v60;
      goto LABEL_6;
    case 4:
      v69 = 4;
      sub_1CA514854();
      v48 = v61;
      OUTLINED_FUNCTION_4_40();
      v50 = v62;
      v49 = v63;
LABEL_6:
      (*(v50 + 8))(v48, v49);
      break;
    default:
      v65 = 0;
      sub_1CA5149A4();
      OUTLINED_FUNCTION_4_40();
      (*(v52 + 8))(v38, v32);
      break;
  }

  return (*(v41 + 8))(v46, v39);
}

void sub_1CA512708(uint64_t *a1)
{
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC446078, &qword_1CA98A3B0);
  OUTLINED_FUNCTION_1_0(v82);
  v77 = v2;
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_43();
  v81 = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC446080, &qword_1CA98A3B8);
  v8 = OUTLINED_FUNCTION_1_0(v7);
  v75 = v9;
  v76 = v8;
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_43();
  v79 = v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC446088, &qword_1CA98A3C0);
  v15 = OUTLINED_FUNCTION_1_0(v14);
  v73 = v16;
  v74 = v15;
  v18 = *(v17 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_43();
  v78 = v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC446090, &qword_1CA98A3C8);
  v22 = OUTLINED_FUNCTION_1_0(v21);
  v71 = v23;
  v72 = v22;
  v25 = *(v24 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v66 - v27;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC446098, &qword_1CA98A3D0);
  OUTLINED_FUNCTION_1_0(v29);
  v70 = v30;
  v32 = *(v31 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x1EEE9AC00](v33);
  v35 = &v66 - v34;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4460A0, &unk_1CA98A3D8);
  OUTLINED_FUNCTION_1_0(v36);
  v80 = v37;
  v39 = *(v38 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x1EEE9AC00](v40);
  v42 = &v66 - v41;
  v43 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1CA514800();
  v44 = v83;
  sub_1CA94D9A8();
  if (v44)
  {
    goto LABEL_8;
  }

  v67 = v29;
  v68 = v35;
  v69 = v28;
  v46 = v81;
  v45 = v82;
  v83 = a1;
  v47 = v42;
  v48 = sub_1CA94D738();
  sub_1CA297584(v48, 0);
  if (v50 == v51 >> 1)
  {
    goto LABEL_7;
  }

  if (v50 >= (v51 >> 1))
  {
    __break(1u);
    return;
  }

  v52 = *(v49 + v50);
  sub_1CA4E42C4(v50 + 1);
  v54 = v53;
  v56 = v55;
  swift_unknownObjectRelease();
  v47 = v42;
  if (v54 != v56 >> 1)
  {
LABEL_7:
    v59 = sub_1CA94D4A8();
    swift_allocError();
    v61 = v60;
    v62 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445D88, &qword_1CA989470) + 48);
    *v61 = &type metadata for RowTemplateStringStyle;
    sub_1CA94D708();
    sub_1CA94D498();
    (*(*(v59 - 8) + 104))(v61, *MEMORY[0x1E69E6AF8], v59);
    swift_willThrow();
    swift_unknownObjectRelease();
    (*(v80 + 8))(v47, v36);
    a1 = v83;
LABEL_8:
    __swift_destroy_boxed_opaque_existential_0(a1);
    return;
  }

  v57 = v80;
  switch(v52)
  {
    case 1:
      v85 = 1;
      sub_1CA514950();
      v63 = v69;
      OUTLINED_FUNCTION_5_31();
      swift_unknownObjectRelease();
      v65 = v71;
      v64 = v72;
      goto LABEL_13;
    case 2:
      v86 = 2;
      sub_1CA5148FC();
      v63 = v78;
      OUTLINED_FUNCTION_5_31();
      swift_unknownObjectRelease();
      v65 = v73;
      v64 = v74;
      goto LABEL_13;
    case 3:
      v87 = 3;
      sub_1CA5148A8();
      v63 = v79;
      OUTLINED_FUNCTION_5_31();
      swift_unknownObjectRelease();
      v65 = v75;
      v64 = v76;
LABEL_13:
      (*(v65 + 8))(v63, v64);
      break;
    case 4:
      v88 = 4;
      sub_1CA514854();
      sub_1CA94D6F8();
      swift_unknownObjectRelease();
      (*(v77 + 8))(v46, v45);
      break;
    default:
      v84 = 0;
      sub_1CA5149A4();
      v58 = v68;
      OUTLINED_FUNCTION_5_31();
      swift_unknownObjectRelease();
      (*(v70 + 8))(v58, v67);
      break;
  }

  (*(v57 + 8))(v42, v36);
  __swift_destroy_boxed_opaque_existential_0(v83);
}

uint64_t sub_1CA512DB0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1CA51205C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1CA512DD8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1CA512200();
  *a1 = result;
  return result;
}

uint64_t sub_1CA512E00(uint64_t a1)
{
  v2 = sub_1CA514800();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1CA512E3C(uint64_t a1)
{
  v2 = sub_1CA514800();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1CA512E78(uint64_t a1)
{
  v2 = sub_1CA5148FC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1CA512EB4(uint64_t a1)
{
  v2 = sub_1CA5148FC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1CA512EF0(uint64_t a1)
{
  v2 = sub_1CA5148A8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1CA512F2C(uint64_t a1)
{
  v2 = sub_1CA5148A8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1CA512F68(uint64_t a1)
{
  v2 = sub_1CA514950();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1CA512FA4(uint64_t a1)
{
  v2 = sub_1CA514950();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1CA512FE0(uint64_t a1)
{
  v2 = sub_1CA5149A4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1CA51301C(uint64_t a1)
{
  v2 = sub_1CA5149A4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1CA513058(uint64_t a1)
{
  v2 = sub_1CA514854();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1CA513094(uint64_t a1)
{
  v2 = sub_1CA514854();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1CA5130E8(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *, uint64_t))
{
  v6 = *v4;
  sub_1CA94D918();
  a4(v8, v6);
  return sub_1CA94D968();
}

void sub_1CA513134(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  sub_1CA512708(a1);
  if (!v2)
  {
    *a2 = v4;
  }
}

uint64_t sub_1CA51317C(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 a4)
{
  if (a4 == 2)
  {
    v4 = *MEMORY[0x1E69E1290];
    v5 = MEMORY[0x1E69E12D8];
    goto LABEL_8;
  }

  if (a4 == 1)
  {
    v4 = *MEMORY[0x1E69E12A0];
    v5 = MEMORY[0x1E69E12E8];
LABEL_8:
    v6 = *v5;
    v7 = v4;
    v4 = v6;
    goto LABEL_9;
  }

  v4 = *MEMORY[0x1E69E1288];
  if (a4)
  {
    v5 = MEMORY[0x1E69E12F0];
    if (a4 == 3)
    {
      v5 = MEMORY[0x1E69E12E0];
    }

    goto LABEL_8;
  }

  v6 = a4;
  v7 = *MEMORY[0x1E69E1288];
LABEL_9:
  v8 = v7;
  v9 = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443D80, &unk_1CA981BA0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA981370;
  v11 = MEMORY[0x1E69E6158];
  *(inited + 32) = @"Key";
  *(inited + 40) = 0x65756C6176;
  *(inited + 48) = 0xE500000000000000;
  *(inited + 64) = v11;
  *(inited + 72) = @"Label";
  *(inited + 80) = 0;
  *(inited + 88) = 0xE000000000000000;
  *(inited + 104) = v11;
  *(inited + 112) = @"Placeholder";
  v12 = @"Key";
  v13 = @"Label";
  v14 = @"Placeholder";
  sub_1CA94C438();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v15 = qword_1EDB9F690;
  v16 = sub_1CA94C368();
  v17 = sub_1CA94C368();

  v18 = [v15 localizedStringForKey:v16 value:v17 table:0];

  v19 = sub_1CA94C3A8();
  v21 = v20;

  *(inited + 120) = v19;
  *(inited + 128) = v21;
  *(inited + 144) = v11;
  *(inited + 152) = @"KeyboardType";
  v22 = sub_1CA94C3A8();
  v24 = v23;
  v25 = @"KeyboardType";

  *(inited + 160) = v22;
  *(inited + 168) = v24;
  *(inited + 184) = v11;
  *(inited + 192) = @"DisallowedVariableTypes";
  v26 = @"DisallowedVariableTypes";
  if (RowTemplateParameterOptions.variablesDisabled.getter())
  {
    sub_1CA25B3D0(0, &qword_1EC446068, off_1E836F388);
    v27 = [swift_getObjCClassFromMetadata() allInsertableVariableTypes];
    type metadata accessor for WFVariableType(0);
    sub_1CA514750(&qword_1EC441A60, type metadata accessor for WFVariableType);
    v28 = sub_1CA94C8F8();

    sub_1CA3E4650(v28);
    v30 = v29;
  }

  else
  {
    v30 = MEMORY[0x1E69E7CC0];
  }

  sub_1CA25B3D0(0, &qword_1EDB9F710, off_1E836EDC0);
  *(inited + 224) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
  *(inited + 200) = v30;
  _s3__C3KeyVMa_0(0);
  sub_1CA514750(&qword_1EDB9F780, _s3__C3KeyVMa_0);
  sub_1CA94C1E8();
  v31 = sub_1CA2F864C();
  if (v6)
  {
    v32 = swift_initStackObject();
    *(v32 + 16) = xmmword_1CA981310;
    *(v32 + 32) = @"TextContentType";
    v33 = sub_1CA94C3A8();
    *(v32 + 64) = v11;
    *(v32 + 40) = v33;
    *(v32 + 48) = v34;
    v35 = @"TextContentType";
    sub_1CA94C1E8();
    v36 = sub_1CA94C1A8();

    v37 = [v31 definitionByAddingEntriesInDictionary_];

    v31 = v37;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC446D90, &unk_1CA981540);
  v38 = swift_initStackObject();
  *(v38 + 16) = xmmword_1CA981310;
  *(v38 + 32) = a2;
  *(v38 + 40) = a3;
  v39 = objc_allocWithZone(WFTextInputParameter);
  sub_1CA94C218();
  *(v38 + 48) = [v39 initWithDefinition_];
  sub_1CA25B3D0(0, &qword_1EC441AA0, off_1E836EDB8);
  v40 = sub_1CA94C1E8();

  return v40;
}

uint64_t sub_1CA5136A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  return OUTLINED_FUNCTION_0_0();
}

uint64_t sub_1CA5136B8()
{
  if (*(v0[2] + 16) && (v1 = v0[4], v2 = v0[5], v3 = sub_1CA271BF8(), (v4 & 1) != 0))
  {
    v5 = *(*(v0[2] + 56) + 8 * v3);
    v0[6] = v5;
    swift_unknownObjectRetain();
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      swift_unknownObjectRetain();
      v6 = swift_task_alloc();
      v0[7] = v6;
      *v6 = v0;
      v6[1] = sub_1CA513880;
      v7 = v0[3];

      return sub_1CA32B9A8(v7);
    }

    else
    {
      sub_1CA2A741C();
      swift_allocError();
      *v10 = v5;
      *(v10 + 32) = 1;
      swift_willThrow();
      swift_unknownObjectRetain();
      v11 = v0[6];
      swift_unknownObjectRelease();
      OUTLINED_FUNCTION_5();

      return v12();
    }
  }

  else
  {
    v9 = v0[1];

    return v9(0, 0xE000000000000000);
  }
}

uint64_t sub_1CA513880()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1_1();
  *v3 = v2;
  v5 = *(v4 + 56);
  *v3 = *v1;
  *(v2 + 64) = v6;
  *(v2 + 72) = v0;

  if (v0)
  {
    v7 = sub_1CA2A630C;
  }

  else
  {
    v7 = sub_1CA513984;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

uint64_t sub_1CA513984()
{
  v1 = v0[8];
  if (!v1)
  {
    v8 = v0[6];
    swift_unknownObjectRelease_n();
    v5 = 0;
    v7 = 0xE000000000000000;
    goto LABEL_5;
  }

  objc_opt_self();
  v2 = swift_dynamicCastObjCClass();
  v3 = v0[6];
  if (v2)
  {
    v4 = v0[6];
    swift_unknownObjectRelease();
    v5 = sub_1CA94C3A8();
    v7 = v6;
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
LABEL_5:
    v9 = v0[1];

    return v9(v5, v7);
  }

  sub_1CA2A741C();
  swift_allocError();
  v12 = v11;
  *(v11 + 24) = swift_getObjectType();
  *v12 = v1;
  *(v12 + 32) = 2;
  swift_willThrow();
  swift_unknownObjectRelease();
  v13 = v0[6];
  swift_unknownObjectRelease();
  OUTLINED_FUNCTION_5();

  return v14();
}

uint64_t sub_1CA513AF0()
{
  OUTLINED_FUNCTION_14();
  v2 = v1;
  v4 = v3;
  *(v0 + 48) = v5;
  *(v0 + 16) = v6;
  v8 = *v7;
  v9 = v7[1];
  v10 = swift_task_alloc();
  *(v0 + 24) = v10;
  *v10 = v0;
  v10[1] = sub_1CA513BA4;

  return sub_1CA5136A0(v8, v9, v4, v2);
}

uint64_t sub_1CA513BA4()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1_1();
  *v3 = v2;
  v5 = *(v4 + 24);
  *v3 = *v1;
  *(v2 + 32) = v6;
  *(v2 + 40) = v7;

  if (v0)
  {
    OUTLINED_FUNCTION_5();

    return v8();
  }

  else
  {

    return MEMORY[0x1EEE6DFA0](sub_1CA513CC4, 0, 0);
  }
}

uint64_t sub_1CA513CC4()
{
  OUTLINED_FUNCTION_0();
  v1 = *(v0 + 48);
  v2 = &selRef_setString_;
  if (v1 == 2)
  {
    v2 = &selRef_setEmail_;
  }

  if (v1 == 1)
  {
    v3 = &selRef_setPhone_;
  }

  else
  {
    v3 = v2;
  }

  sub_1CA5146B8(*(v0 + 32), *(v0 + 40), *(v0 + 16), v3);
  OUTLINED_FUNCTION_5();

  return v4();
}

uint64_t sub_1CA513D50(uint64_t a1, _OWORD *a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v5 + 256) = a5;
  *(v5 + 168) = a3;
  *(v5 + 176) = a4;
  *(v5 + 160) = a1;
  *(v5 + 184) = *a2;
  return OUTLINED_FUNCTION_0_0();
}

uint64_t sub_1CA513D74()
{
  OUTLINED_FUNCTION_14();
  if ([*(v0 + 160) numberOfItems])
  {
    v1 = *(v0 + 160);
    *(v0 + 16) = v0;
    *(v0 + 56) = v0 + 144;
    *(v0 + 24) = sub_1CA513ED0;
    v2 = swift_continuation_init();
    *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EC444760, &unk_1CA983EF0);
    *(v0 + 80) = MEMORY[0x1E69E9820];
    *(v0 + 88) = 1107296256;
    *(v0 + 96) = sub_1CA5142D8;
    *(v0 + 104) = &block_descriptor_18;
    *(v0 + 112) = v2;
    [v1 getStringRepresentation_];

    return MEMORY[0x1EEE6DEC8](v0 + 16);
  }

  else
  {
    OUTLINED_FUNCTION_2_4();

    return v3();
  }
}

uint64_t sub_1CA513ED0()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1_1();
  *v2 = v1;
  *v2 = *v0;
  v4 = *(v3 + 48);
  *(v1 + 200) = v4;
  if (v4)
  {
    v5 = sub_1CA514210;
  }

  else
  {
    v5 = sub_1CA513FD0;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1CA513FD0()
{
  OUTLINED_FUNCTION_0();
  v1 = v0[19];
  v0[26] = v0[18];
  v0[27] = v1;
  v2 = swift_task_alloc();
  v0[28] = v2;
  *v2 = v0;
  v2[1] = sub_1CA51406C;
  v4 = v0[23];
  v3 = v0[24];
  v5 = v0[21];
  v6 = v0[22];

  return sub_1CA5136A0(v4, v3, v5, v6);
}

uint64_t sub_1CA51406C()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1_1();
  *v3 = v2;
  v5 = *(v4 + 224);
  *v3 = *v1;
  v2[29] = v6;
  v2[30] = v7;
  v2[31] = v0;

  if (v0)
  {
    v8 = sub_1CA514278;
  }

  else
  {
    v8 = sub_1CA514174;
  }

  return MEMORY[0x1EEE6DFA0](v8, 0, 0);
}

uint64_t sub_1CA514174()
{
  OUTLINED_FUNCTION_0();
  if (v0[26] == v0[29] && v0[27] == v0[30])
  {
    v3 = 1;
  }

  else
  {
    v2 = v0[27];
    v3 = sub_1CA94D7F8();
    v4 = v0[30];
    v5 = v0[27];
  }

  OUTLINED_FUNCTION_2_4();

  return v6(v3 & 1);
}

uint64_t sub_1CA514210()
{
  OUTLINED_FUNCTION_14();
  v1 = *(v0 + 200);
  swift_willThrow();
  v2 = *(v0 + 200);
  OUTLINED_FUNCTION_2_4();

  return v3(0);
}

uint64_t sub_1CA514278()
{
  OUTLINED_FUNCTION_0();
  v1 = *(v0 + 216);

  v2 = *(v0 + 248);
  OUTLINED_FUNCTION_2_4();

  return v3(0);
}

uint64_t sub_1CA5142D8(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a3)
  {
    v5 = a3;

    return sub_1CA35FF80(v4, v5);
  }

  else
  {
    sub_1CA94C3A8();

    return sub_1CA35E734(v4);
  }
}

uint64_t sub_1CA514370()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = *(v0 + 16);
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1CA2DF78C;

  return sub_1CA513AF0();
}

uint64_t sub_1CA514430(uint64_t a1, _OWORD *a2)
{
  v6 = *v2;
  v7 = *(v2 + 8);
  v8 = *(v2 + 16);
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_1CA3D2984;

  return sub_1CA513D50(a1, a2, v6, v7, v8);
}

uint64_t sub_1CA5144F0(uint64_t a1, uint64_t a2)
{
  v7 = *v2;
  v6 = v2[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_1CA5145A0;

  return sub_1CA5136A0(a1, a2, v7, v6);
}

uint64_t sub_1CA5145A0()
{
  OUTLINED_FUNCTION_14();
  v3 = v2;
  v5 = v4;
  OUTLINED_FUNCTION_3();
  v7 = *(v6 + 16);
  v8 = *v1;
  OUTLINED_FUNCTION_13();
  *v9 = v8;

  v12 = *(v8 + 8);
  if (!v0)
  {
    v10 = v5;
    v11 = v3;
  }

  return v12(v10, v11);
}

void sub_1CA5146B8(uint64_t a1, uint64_t a2, void *a3, SEL *a4)
{
  v6 = sub_1CA94C368();

  [a3 *a4];
}

uint64_t sub_1CA514750(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1CA5147AC()
{
  result = qword_1EC446070;
  if (!qword_1EC446070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC446070);
  }

  return result;
}

unint64_t sub_1CA514800()
{
  result = qword_1EC4460A8;
  if (!qword_1EC4460A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4460A8);
  }

  return result;
}

unint64_t sub_1CA514854()
{
  result = qword_1EC4460B0;
  if (!qword_1EC4460B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4460B0);
  }

  return result;
}

unint64_t sub_1CA5148A8()
{
  result = qword_1EC4460B8;
  if (!qword_1EC4460B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4460B8);
  }

  return result;
}

unint64_t sub_1CA5148FC()
{
  result = qword_1EC4460C0;
  if (!qword_1EC4460C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4460C0);
  }

  return result;
}

unint64_t sub_1CA514950()
{
  result = qword_1EC4460C8;
  if (!qword_1EC4460C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4460C8);
  }

  return result;
}

unint64_t sub_1CA5149A4()
{
  result = qword_1EC4460D0;
  if (!qword_1EC4460D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4460D0);
  }

  return result;
}

_BYTE *sub_1CA5149F8(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFC)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 4;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1CA514B28()
{
  result = qword_1EC446108;
  if (!qword_1EC446108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC446108);
  }

  return result;
}

unint64_t sub_1CA514B80()
{
  result = qword_1EC446110;
  if (!qword_1EC446110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC446110);
  }

  return result;
}

unint64_t sub_1CA514BD8()
{
  result = qword_1EC446118;
  if (!qword_1EC446118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC446118);
  }

  return result;
}

unint64_t sub_1CA514C30()
{
  result = qword_1EC446120;
  if (!qword_1EC446120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC446120);
  }

  return result;
}

unint64_t sub_1CA514C88()
{
  result = qword_1EC446128;
  if (!qword_1EC446128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC446128);
  }

  return result;
}

unint64_t sub_1CA514CE0()
{
  result = qword_1EC446130;
  if (!qword_1EC446130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC446130);
  }

  return result;
}

unint64_t sub_1CA514D38()
{
  result = qword_1EC446138;
  if (!qword_1EC446138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC446138);
  }

  return result;
}

unint64_t sub_1CA514D90()
{
  result = qword_1EC446140;
  if (!qword_1EC446140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC446140);
  }

  return result;
}

unint64_t sub_1CA514DE8()
{
  result = qword_1EC446148;
  if (!qword_1EC446148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC446148);
  }

  return result;
}

unint64_t sub_1CA514E40()
{
  result = qword_1EC446150;
  if (!qword_1EC446150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC446150);
  }

  return result;
}

unint64_t sub_1CA514E98()
{
  result = qword_1EC446158;
  if (!qword_1EC446158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC446158);
  }

  return result;
}

unint64_t sub_1CA514EF0()
{
  result = qword_1EC446160;
  if (!qword_1EC446160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC446160);
  }

  return result;
}

unint64_t sub_1CA514F48()
{
  result = qword_1EC446168;
  if (!qword_1EC446168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC446168);
  }

  return result;
}

uint64_t sub_1CA514FA4()
{
  OUTLINED_FUNCTION_0();
  v0[3] = v1;
  v0[4] = v2;
  v3 = sub_1CA94AC88();
  v0[5] = v3;
  OUTLINED_FUNCTION_12(v3);
  v0[6] = v4;
  v6 = *(v5 + 64);
  v0[7] = OUTLINED_FUNCTION_13_5();
  v0[8] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC446170, &qword_1CA98A8F0);
  OUTLINED_FUNCTION_18_0(v7);
  v9 = *(v8 + 64);
  v0[9] = OUTLINED_FUNCTION_13_5();
  v0[10] = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC446178, &qword_1CA98A8F8);
  OUTLINED_FUNCTION_18_0(v10);
  v12 = *(v11 + 64);
  v0[11] = OUTLINED_FUNCTION_45();
  v13 = sub_1CA94B068();
  v0[12] = v13;
  OUTLINED_FUNCTION_12(v13);
  v0[13] = v14;
  v16 = *(v15 + 64);
  v0[14] = OUTLINED_FUNCTION_45();
  v17 = sub_1CA94AEE8();
  v0[15] = v17;
  OUTLINED_FUNCTION_12(v17);
  v0[16] = v18;
  v20 = *(v19 + 64);
  v0[17] = OUTLINED_FUNCTION_45();
  v21 = sub_1CA94AD88();
  v0[18] = v21;
  OUTLINED_FUNCTION_12(v21);
  v0[19] = v22;
  v24 = *(v23 + 64);
  v0[20] = OUTLINED_FUNCTION_45();
  v25 = sub_1CA94ADC8();
  v0[21] = v25;
  OUTLINED_FUNCTION_12(v25);
  v0[22] = v26;
  v28 = *(v27 + 64);
  v0[23] = OUTLINED_FUNCTION_13_5();
  v0[24] = swift_task_alloc();
  v29 = sub_1CA94AD48();
  v0[25] = v29;
  OUTLINED_FUNCTION_12(v29);
  v0[26] = v30;
  v32 = *(v31 + 64);
  v0[27] = OUTLINED_FUNCTION_13_5();
  v0[28] = swift_task_alloc();
  OUTLINED_FUNCTION_90();

  return MEMORY[0x1EEE6DFA0](v33, v34, v35);
}

uint64_t sub_1CA515250()
{
  v1 = v0[24];
  v3 = v0[3];
  v2 = v0[4];
  sub_1CA94A8B8();
  v4 = (v2 + *(type metadata accessor for TypedValueConversionContext(0) + 20));
  v5 = v4[3];
  v6 = v4[4];
  __swift_project_boxed_opaque_existential_1(v4, v5);
  v7 = *(v6 + 8);
  v15 = (v7 + *v7);
  v8 = v7[1];
  swift_task_alloc();
  OUTLINED_FUNCTION_77();
  v0[29] = v9;
  *v9 = v10;
  v9[1] = sub_1CA515398;
  v11 = v0[28];
  v12 = v0[24];
  v13 = v0[4];

  return v15(v11, v12, v13, v5, v6);
}

uint64_t sub_1CA515398()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1();
  *v3 = v2;
  v5 = *(v4 + 232);
  v6 = *v1;
  OUTLINED_FUNCTION_13();
  *v7 = v6;
  *(v8 + 240) = v0;

  OUTLINED_FUNCTION_90();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1CA515494()
{
  v1 = *(v0 + 184);
  v2 = *(v0 + 168);
  v3 = *(v0 + 176);
  v4 = *(v0 + 24);
  v5 = *(v3 + 8);
  v5(*(v0 + 192), v2);
  sub_1CA94A8B8();
  v6 = (*(v3 + 88))(v1, v2);
  if (v6 == *MEMORY[0x1E69DB0B0] || v6 == *MEMORY[0x1E69DB0A0])
  {
LABEL_6:
    v8 = *(v0 + 224);
    v10 = *(v0 + 200);
    v9 = *(v0 + 208);
    v5(*(v0 + 184), *(v0 + 168));
    sub_1CA2FFC58();
    v11 = swift_allocError();
    OUTLINED_FUNCTION_46_7(v11, v12);
    (*(v9 + 8))(v8, v10);
    goto LABEL_19;
  }

  if (v6 == *MEMORY[0x1E69DB098])
  {
    v13 = *(v0 + 184);
    (*(*(v0 + 176) + 96))(v13, *(v0 + 168));
    v15 = *(*v13 + 32);
    v14 = *(*v13 + 40);
    sub_1CA94C218();
    goto LABEL_11;
  }

  if (v6 != *MEMORY[0x1E69DB088])
  {
    if (v6 != *MEMORY[0x1E69DB0A8])
    {
      v61 = *(v0 + 168);
      OUTLINED_FUNCTION_53();

      return sub_1CA94D7E8();
    }

    goto LABEL_6;
  }

  v16 = *(v0 + 184);
  v17 = *(v0 + 160);
  v18 = *(v0 + 144);
  v19 = *(v0 + 152);
  (*(*(v0 + 176) + 96))(v16, *(v0 + 168));
  v20 = *v16;
  v21 = swift_projectBox();
  (*(v19 + 16))(v17, v21, v18);
  v15 = sub_1CA94AD78();
  v14 = v22;
  v23 = *(v19 + 8);
  v24 = OUTLINED_FUNCTION_126();
  v25(v24);
LABEL_11:
  *(v0 + 248) = v15;
  *(v0 + 256) = v14;
  v27 = *(v0 + 216);
  v26 = *(v0 + 224);
  v28 = *(v0 + 200);
  v29 = *(v0 + 208);

  (*(v29 + 16))(v27, v26, v28);
  v30 = *(v29 + 88);
  v31 = OUTLINED_FUNCTION_126();
  if (v32(v31) != *MEMORY[0x1E69DAF98])
  {
    v51 = *(v0 + 216);
    v52 = *(v0 + 224);
    v53 = *(v0 + 200);
    v54 = *(v0 + 208);

    v55 = *(v54 + 8);
    v55(v51, v53);
    sub_1CA2FFC58();
    v56 = swift_allocError();
    OUTLINED_FUNCTION_46_7(v56, v57);
    v55(v52, v53);
LABEL_19:
    OUTLINED_FUNCTION_0_48();
    v58 = *(v0 + 72);
    v123 = *(v0 + 64);
    v125 = *(v0 + 56);

    OUTLINED_FUNCTION_5();
    OUTLINED_FUNCTION_53();

    __asm { BRAA            X1, X16 }
  }

  v33 = *(v0 + 216);
  v35 = *(v0 + 128);
  v34 = *(v0 + 136);
  v37 = *(v0 + 112);
  v36 = *(v0 + 120);
  v38 = *(v0 + 96);
  v39 = *(v0 + 104);
  (*(*(v0 + 208) + 96))(v33, *(v0 + 200));
  (*(v35 + 32))(v34, v33, v36);
  (*(v39 + 104))(v37, *MEMORY[0x1E69DB238], v38);
  LOBYTE(v33) = sub_1CA94AEC8();
  (*(v39 + 8))(v37, v38);
  if ((v33 & 1) == 0)
  {
    OUTLINED_FUNCTION_27_16();
    v64 = *(v0 + 24);
    sub_1CA94A898();
    v65 = objc_allocWithZone(MEMORY[0x1E69AC7D8]);
    OUTLINED_FUNCTION_116();
    sub_1CA320B2C();
    sub_1CA25B3D0(0, &qword_1EC445B70, 0x1E69AC7D8);
    [objc_allocWithZone(MEMORY[0x1E69AC7F0]) init];
    v66 = objc_allocWithZone(MEMORY[0x1E69ACA90]);
    OUTLINED_FUNCTION_16_20(v66, v67, v68, v69);
LABEL_28:
    (*(v36 + 8))(v37, v38);
    (*(v34 + 8))();
    goto LABEL_29;
  }

  v34 = *(v0 + 88);
  v40 = *(v0 + 24);
  sub_1CA94A938();
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC446180, &qword_1CA98A900);
  if (__swift_getEnumTagSinglePayload(v34, 1, v41) != 1)
  {
    OUTLINED_FUNCTION_27_16();
    v70 = *(v0 + 88);
    v71 = sub_1CA94AD18();
    (*(*(v41 - 8) + 8))(v70, v41);
    sub_1CA25B3D0(0, &unk_1EDB9F6A0, 0x1E69AC7D0);
    sub_1CA25B3D0(0, &qword_1EC4442D0, 0x1E69AC818);
    v72 = v71;
    v73 = OUTLINED_FUNCTION_116();
    sub_1CA4ECDAC(v73, v74);
    v75 = objc_allocWithZone(MEMORY[0x1E69ACA90]);
    OUTLINED_FUNCTION_16_20(v75, v76, v77, v78);

    goto LABEL_28;
  }

  v42 = *(v0 + 24);
  sub_1CA30F7DC(*(v0 + 88), &qword_1EC446178, &qword_1CA98A8F8);
  v43 = MEMORY[0x1E69E7CC0];
  *(v0 + 16) = MEMORY[0x1E69E7CC0];
  v44 = sub_1CA94A968();
  *(v0 + 264) = v44;
  v45 = *(v44 + 32);
  *(v0 + 336) = v45;
  v46 = -1;
  v47 = -1 << v45;
  v48 = *(v44 + 64);
  if (-v47 < 64)
  {
    v46 = ~(-1 << -v47);
  }

  *(v0 + 272) = v43;
  v49 = v46 & v48;
  if (v49)
  {
    v50 = 0;
LABEL_35:
    v85 = *(v0 + 64);
    v86 = *(v0 + 72);
    v87 = *(v0 + 40);
    v88 = *(v0 + 48);
    v89 = (v49 - 1) & v49;
    v90 = __clz(__rbit64(v49)) | (v50 << 6);
    v91 = (*(v44 + 48) + 16 * v90);
    v93 = *v91;
    v92 = v91[1];
    (*(v88 + 16))(v85, *(v44 + 56) + *(v88 + 72) * v90, v87);
    v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC444298, &qword_1CA982CB8);
    v95 = *(v94 + 48);
    *v86 = v93;
    *(v86 + 1) = v92;
    (*(v88 + 32))(&v86[v95], v85, v87);
    v96 = OUTLINED_FUNCTION_67();
    __swift_storeEnumTagSinglePayload(v96, v97, v98, v94);
    sub_1CA94C218();
    v84 = v50;
  }

  else
  {
    v83 = 0;
    v84 = ((63 - v47) >> 6) - 1;
    while (v84 != v83)
    {
      v50 = v83 + 1;
      v49 = *(v44 + 72 + 8 * v83++);
      if (v49)
      {
        goto LABEL_35;
      }
    }

    v121 = *(v0 + 72);
    v122 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC444298, &qword_1CA982CB8);
    OUTLINED_FUNCTION_42(v122);
    v89 = 0;
  }

  *(v0 + 280) = v89;
  *(v0 + 288) = v84;
  v99 = *(v0 + 80);
  sub_1CA517CD4(*(v0 + 72), v99);
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC444298, &qword_1CA982CB8);
  if (__swift_getEnumTagSinglePayload(v99, 1, v100) == 1)
  {
    v102 = *(v0 + 256);
    v101 = *(v0 + 264);
    v103 = *(v0 + 248);
    v127 = *(v0 + 224);
    v104 = *(v0 + 200);
    v105 = *(v0 + 208);
    v106 = *(v0 + 128);
    v107 = *(v0 + 136);
    v108 = *(v0 + 120);
    v109 = *(v0 + 24);

    sub_1CA94C218();
    sub_1CA94A898();
    v110 = objc_allocWithZone(MEMORY[0x1E69AC7D8]);
    v111 = sub_1CA320B2C();
    v112 = objc_allocWithZone(MEMORY[0x1E69AC7D0]);
    sub_1CA517B94(1, v111, MEMORY[0x1E69E7CC0], 0, 0);
    sub_1CA25B3D0(0, &unk_1EDB9F6A0, 0x1E69AC7D0);
    sub_1CA25B3D0(0, &qword_1EC4442D0, 0x1E69AC818);
    sub_1CA4ECDAC(v103, v102);
    v113 = objc_allocWithZone(MEMORY[0x1E69ACA90]);
    OUTLINED_FUNCTION_16_20(v113, v114, v115, v116);
    (*(v106 + 8))(v107, v108);
    (*(v105 + 8))(v127, v104);
LABEL_29:
    OUTLINED_FUNCTION_0_48();
    v79 = *(v0 + 72);
    v124 = *(v0 + 64);
    v126 = *(v0 + 56);

    v80 = *(v0 + 8);
    OUTLINED_FUNCTION_53();

    __asm { BRAA            X2, X16 }
  }

  v117 = OUTLINED_FUNCTION_9_25();
  v118(v117);
  v119 = swift_task_alloc();
  *(v0 + 312) = v119;
  *v119 = v0;
  OUTLINED_FUNCTION_2_42(v119);
  OUTLINED_FUNCTION_53();

  return TypedValueTransformer.transform(input:with:)();
}

uint64_t sub_1CA515DFC()
{
  (*(v0[22] + 8))(v0[24], v0[21]);
  v1 = v0[30];
  OUTLINED_FUNCTION_0_48();
  OUTLINED_FUNCTION_45_8();

  OUTLINED_FUNCTION_5();

  return v2();
}

uint64_t sub_1CA515EF0()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  v3 = v2;
  OUTLINED_FUNCTION_1();
  *v4 = v3;
  v6 = *(v5 + 312);
  *v4 = *v1;
  v3[40] = v7;
  v3[41] = v0;

  if (v0)
  {
    v8 = v3[38];
    v9 = v3[34];
    v10 = v3[32];
  }

  OUTLINED_FUNCTION_90();

  return MEMORY[0x1EEE6DFA0](v11, v12, v13);
}

uint64_t sub_1CA516014(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, id a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  OUTLINED_FUNCTION_147();
  a25 = v27;
  a26 = v28;
  a24 = v26;
  v29 = *(v26 + 320);
  v31 = *(v26 + 296);
  v30 = *(v26 + 304);
  objc_allocWithZone(MEMORY[0x1E69AC950]);
  v32 = v29;
  v33 = OUTLINED_FUNCTION_116();
  v35 = sub_1CA32E17C(v33, v34, v29);
  MEMORY[0x1CCAA1490]();
  if (*((*(v26 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v26 + 16) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    goto LABEL_18;
  }

  while (1)
  {
    v36 = *(v26 + 320);
    v38 = *(v26 + 48);
    v37 = *(v26 + 56);
    v39 = *(v26 + 40);
    OUTLINED_FUNCTION_116();
    sub_1CA94C6E8();

    (*(v38 + 8))(v37, v39);
    v40 = *(v26 + 16);
    v41 = *(v26 + 280);
    v42 = *(v26 + 288);
    *(v26 + 272) = v40;
    v99 = v40;
    if (v41)
    {
      break;
    }

    while (1)
    {
      v44 = v42 + 1;
      if (__OFADD__(v42, 1))
      {
        break;
      }

      if (v44 >= (((1 << *(v26 + 336)) + 63) >> 6))
      {
        v94 = *(v26 + 72);
        v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC444298, &qword_1CA982CB8);
        OUTLINED_FUNCTION_42(v95);
        v49 = 0;
        goto LABEL_9;
      }

      v43 = *(v26 + 264);
      v41 = *(v43 + 8 * v44 + 64);
      ++v42;
      if (v41)
      {
        v42 = v44;
        goto LABEL_8;
      }
    }

    __break(1u);
LABEL_18:
    sub_1CA94C698();
  }

  v43 = *(v26 + 264);
LABEL_8:
  v46 = *(v26 + 64);
  v45 = *(v26 + 72);
  v47 = *(v26 + 40);
  v48 = *(v26 + 48);
  v49 = (v41 - 1) & v41;
  v50 = __clz(__rbit64(v41)) | (v42 << 6);
  v51 = (*(v43 + 48) + 16 * v50);
  v52 = *v51;
  v53 = v51[1];
  (*(v48 + 16))(v46, *(v43 + 56) + *(v48 + 72) * v50, v47);
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC444298, &qword_1CA982CB8);
  v55 = *(v54 + 48);
  *v45 = v52;
  *(v45 + 1) = v53;
  (*(v48 + 32))(&v45[v55], v46, v47);
  v56 = OUTLINED_FUNCTION_67();
  __swift_storeEnumTagSinglePayload(v56, v57, v58, v54);
  sub_1CA94C218();
LABEL_9:
  *(v26 + 280) = v49;
  *(v26 + 288) = v42;
  v59 = *(v26 + 80);
  sub_1CA517CD4(*(v26 + 72), v59);
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC444298, &qword_1CA982CB8);
  if (__swift_getEnumTagSinglePayload(v59, 1, v60) == 1)
  {
    v62 = *(v26 + 256);
    v61 = *(v26 + 264);
    v63 = *(v26 + 248);
    v64 = *(v26 + 224);
    v65 = *(v26 + 208);
    v97 = *(v26 + 200);
    v66 = *(v26 + 128);
    v67 = *(v26 + 136);
    v68 = *(v26 + 120);
    v69 = *(v26 + 24);

    sub_1CA94C218();
    sub_1CA94A898();
    v70 = objc_allocWithZone(MEMORY[0x1E69AC7D8]);
    v71 = sub_1CA320B2C();
    v72 = objc_allocWithZone(MEMORY[0x1E69AC7D0]);
    v73 = sub_1CA517B94(1, v71, v99, 0, 0);
    a15 = sub_1CA25B3D0(0, &unk_1EDB9F6A0, 0x1E69AC7D0);
    a12 = v73;
    sub_1CA25B3D0(0, &qword_1EC4442D0, 0x1E69AC818);
    v74 = sub_1CA4ECDAC(v63, v62);
    v75 = objc_allocWithZone(MEMORY[0x1E69ACA90]);
    v100 = sub_1CA320AB4(&a12, v74);
    v76 = *(v66 + 8);
    v77 = OUTLINED_FUNCTION_126();
    v78(v77);
    (*(v65 + 8))(v64, v97);
    OUTLINED_FUNCTION_0_48();
    v79 = *(v26 + 72);
    v96 = *(v26 + 64);
    v98 = *(v26 + 56);

    v80 = *(v26 + 8);
    OUTLINED_FUNCTION_68();

    return v83(v81, v82, v83, v84, v85, v86, v87, v88, v96, v98, v100, a12, a13, a14, a15, a16, a17, a18);
  }

  else
  {
    v90 = OUTLINED_FUNCTION_9_25();
    v91(v90);
    v92 = swift_task_alloc();
    *(v26 + 312) = v92;
    *v92 = v26;
    OUTLINED_FUNCTION_2_42();
    OUTLINED_FUNCTION_68();

    return TypedValueTransformer.transform(input:with:)();
  }
}

uint64_t sub_1CA516478()
{
  v1 = v0[33];
  v2 = v0[28];
  v3 = v0[25];
  v4 = v0[26];
  v6 = v0[16];
  v5 = v0[17];
  v7 = v0[15];
  v9 = v0[6];
  v8 = v0[7];
  v10 = v0[5];

  v11 = *(v9 + 8);
  v12 = OUTLINED_FUNCTION_126();
  v13(v12);
  (*(v6 + 8))(v5, v7);
  (*(v4 + 8))(v2, v3);
  v14 = v0[41];
  OUTLINED_FUNCTION_0_48();
  OUTLINED_FUNCTION_45_8();

  OUTLINED_FUNCTION_5();

  return v15();
}

uint64_t sub_1CA5165B8()
{
  OUTLINED_FUNCTION_0();
  v0[10] = v1;
  v0[11] = v2;
  v0[9] = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4468C0, &qword_1CA988C00);
  OUTLINED_FUNCTION_18_0(v4);
  v6 = *(v5 + 64);
  v0[12] = OUTLINED_FUNCTION_45();
  v7 = sub_1CA94AC88();
  v0[13] = v7;
  OUTLINED_FUNCTION_12(v7);
  v0[14] = v8;
  v10 = *(v9 + 64);
  v0[15] = OUTLINED_FUNCTION_45();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC444C60, &qword_1CA9827D0);
  OUTLINED_FUNCTION_18_0(v11);
  v13 = *(v12 + 64);
  v0[16] = OUTLINED_FUNCTION_13_5();
  v0[17] = swift_task_alloc();
  v0[18] = swift_task_alloc();
  v14 = sub_1CA94ADC8();
  v0[19] = v14;
  OUTLINED_FUNCTION_12(v14);
  v0[20] = v15;
  v17 = *(v16 + 64);
  v0[21] = OUTLINED_FUNCTION_13_5();
  v0[22] = swift_task_alloc();
  OUTLINED_FUNCTION_90();

  return MEMORY[0x1EEE6DFA0](v18, v19, v20);
}

uint64_t sub_1CA51672C()
{
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_59_0();
  v1 = [*(v0 + 80) value];
  sub_1CA94D258();
  swift_unknownObjectRelease();
  *(v0 + 184) = sub_1CA55C6B4(v0 + 16);
  v2 = *(v0 + 80);
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  *(v0 + 192) = [v2 valueType];
  swift_task_alloc();
  OUTLINED_FUNCTION_77();
  *(v0 + 200) = v3;
  *v3 = v4;
  v3[1] = sub_1CA5168B4;
  v5 = *(v0 + 176);
  v6 = *(v0 + 88);
  OUTLINED_FUNCTION_4_32();

  return sub_1CA2FF3B4();
}

uint64_t sub_1CA5168B4()
{
  OUTLINED_FUNCTION_14();
  v2 = *v1;
  OUTLINED_FUNCTION_1();
  *v4 = v3;
  v5 = *(v2 + 200);
  *v4 = *v1;
  *(v3 + 208) = v0;

  OUTLINED_FUNCTION_90();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1CA5169DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_59_0();

  v11 = *(v10 + 208);
  OUTLINED_FUNCTION_17_14();

  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_4_32();

  return v13(v12, v13, v14, v15, v16, v17, v18, v19, a9, a10);
}

uint64_t sub_1CA517010()
{
  OUTLINED_FUNCTION_14();
  v2 = *v1;
  v3 = *v1;
  OUTLINED_FUNCTION_13();
  *v4 = v3;
  v5 = v2[34];
  *v4 = *v1;
  v3[35] = v0;

  v6 = v2[33];
  if (v0)
  {
    v7 = v3[30];
    v8 = v3[27];
  }

  else
  {
  }

  OUTLINED_FUNCTION_90();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1CA517658(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_59_0();
  v11 = *(v10 + 248);
  v12 = *(v10 + 176);
  v13 = *(v10 + 152);
  v14 = *(v10 + 160);

  (*(v14 + 8))(v12, v13);
  v15 = *(v10 + 280);
  OUTLINED_FUNCTION_17_14();

  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_4_32();

  return v17(v16, v17, v18, v19, v20, v21, v22, v23, a9, a10);
}

uint64_t sub_1CA517714()
{
  OUTLINED_FUNCTION_14();
  v2 = *v1;
  v3 = *v1;
  OUTLINED_FUNCTION_13();
  *v4 = v3;
  v5 = v2[39];
  *v4 = *v1;
  v3[40] = v0;

  v6 = v2[38];
  if (v0)
  {
    v8 = v3[36];
    v7 = v3[37];
    v10 = v3[20];
    v9 = v3[21];
    v11 = v3[19];
    v12 = *(v10 + 8);
    v3[41] = v12;
    v3[42] = (v10 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v12(v9, v11);
  }

  OUTLINED_FUNCTION_90();

  return MEMORY[0x1EEE6DFA0](v13, v14, v15);
}

uint64_t sub_1CA517874()
{
  v1 = v0[6];
  v3 = v0[36];
  v2 = v0[37];
  v4 = v0[22];
  v5 = v0[23];
  v7 = v0[20];
  v6 = v0[21];
  v16 = v0[19];
  v17 = v0[18];
  v18 = v0[17];
  v19 = v0[16];
  v20 = v0[15];
  v8 = v0[12];
  v9 = v0[9];
  sub_1CA94B458();
  v10 = OUTLINED_FUNCTION_67();
  __swift_storeEnumTagSinglePayload(v10, v11, v12, v13);
  sub_1CA94A988();

  (*(v7 + 8))(v4, v16);

  OUTLINED_FUNCTION_5();

  return v14();
}

uint64_t sub_1CA5179A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_59_0();
  v12 = *(v10 + 328);
  v11 = *(v10 + 336);
  v13 = *(v10 + 176);
  v14 = *(v10 + 152);

  v12(v13, v14);
  v15 = *(v10 + 320);
  OUTLINED_FUNCTION_17_14();

  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_4_32();

  return v17(v16, v17, v18, v19, v20, v21, v22, v23, a9, a10);
}

uint64_t sub_1CA517A50()
{
  OUTLINED_FUNCTION_14();
  v2 = *v1;
  swift_task_alloc();
  OUTLINED_FUNCTION_77();
  *(v0 + 16) = v3;
  *v3 = v4;
  v3[1] = sub_1CA2DF78C;

  return sub_1CA5165B8();
}

uint64_t sub_1CA517AF8()
{
  OUTLINED_FUNCTION_0();
  *(v0 + 16) = v1;
  v2 = swift_task_alloc();
  *(v0 + 24) = v2;
  *v2 = v0;
  v2[1] = sub_1CA2FFB5C;

  return sub_1CA514FA4();
}

id sub_1CA517B94(char a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_1CA25B3D0(0, &qword_1EDB9FB20, 0x1E69AC950);
  v9 = sub_1CA94C648();

  if (a5)
  {
    v10 = sub_1CA94C368();
  }

  else
  {
    v10 = 0;
  }

  v11 = [v5 initWithTransient:a1 & 1 identifier:a2 properties:v9 managedAccountIdentifier:v10];

  return v11;
}

uint64_t sub_1CA517C64(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC444C60, &qword_1CA9827D0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1CA517CD4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC446170, &qword_1CA98A8F0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t OUTLINED_FUNCTION_44_7()
{

  return sub_1CA94D588();
}

uint64_t OUTLINED_FUNCTION_47_10@<X0>(int *a1@<X8>)
{
  v2 = a1[1];
  v4 = a1 + *a1;

  return swift_task_alloc();
}

id sub_1CA517DB8()
{
  v216 = sub_1CA25B3D0(0, &qword_1EC4419A0, off_1E836DD08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B0, &qword_1CA981320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA9813A0;
  v1 = MEMORY[0x1E69E6158];
  *(inited + 32) = @"ActionClass";
  *(inited + 40) = 0xD000000000000017;
  *(inited + 48) = 0x80000001CA9C76A0;
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
  v243 = (v12 + 15) & 0xFFFFFFFFFFFFFFF0;
  v244 = v12;
  v13 = &v213 - v243;
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v240 = qword_1EDB9F690;
  v14 = [qword_1EDB9F690 bundleURL];
  v15 = sub_1CA948BA8();
  v241 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v242 = (v16 + 15) & 0xFFFFFFFFFFFFFFF0;
  v17 = &v213 - v242;
  sub_1CA948B68();

  v18 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v19 = sub_1CA2F9F14(v4, v6, v7, v9, 0, 0, v13, v17);
  v20 = sub_1CA25B3D0(0, &qword_1EDB9F6E0, 0x1E696B100);
  v238 = v20;
  *(inited + 80) = v19;
  *(inited + 104) = v20;
  *(inited + 112) = @"Description";
  v237 = sub_1CA25B3D0(0, &unk_1EC441790, off_1E836DD18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D0, &qword_1CA981390);
  v21 = swift_initStackObject();
  v215 = xmmword_1CA97EDF0;
  *(v21 + 16) = xmmword_1CA97EDF0;
  *(v21 + 32) = @"DescriptionResult";
  v22 = @"Description";
  v23 = @"DescriptionResult";
  v24 = sub_1CA94C438();
  v234 = v25;
  v235 = v24;
  v233 = sub_1CA94C438();
  v27 = v26;
  *&v236 = &v213;
  MEMORY[0x1EEE9AC00](v233);
  v28 = &v213 - v243;
  sub_1CA948D98();
  v29 = v240;
  v30 = [v240 bundleURL];
  v239 = inited;
  v31 = v30;
  MEMORY[0x1EEE9AC00](v30);
  v32 = v242;
  sub_1CA948B68();

  v33 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v21 + 40) = sub_1CA2F9F14(v235, v234, v233, v27, 0, 0, v28, &v213 - v32);
  v34 = v238;
  *(v21 + 64) = v238;
  *(v21 + 72) = @"DescriptionSummary";
  v35 = @"DescriptionSummary";
  v36 = sub_1CA94C438();
  v234 = v37;
  v235 = v36;
  v233 = sub_1CA94C438();
  v39 = v38;
  *&v236 = &v213;
  MEMORY[0x1EEE9AC00](v233);
  v40 = &v213 - v243;
  sub_1CA948D98();
  v41 = [v29 bundleURL];
  MEMORY[0x1EEE9AC00](v41);
  sub_1CA948B68();

  v42 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v43 = sub_1CA2F9F14(v235, v234, v233, v39, 0, 0, v40, &v213 - v32);
  *(v21 + 104) = v34;
  *(v21 + 80) = v43;
  type metadata accessor for DescriptionKey(0);
  sub_1CA29CF44(&qword_1EC441830, type metadata accessor for DescriptionKey);
  sub_1CA94C1E8();
  v44 = v237;
  v45 = sub_1CA6B3784();
  v46 = v239;
  v239[15] = v45;
  v46[18] = v44;
  v46[19] = @"IconName";
  v46[20] = 0x786F62706F7244;
  v46[21] = 0xE700000000000000;
  v47 = MEMORY[0x1E69E6158];
  v46[23] = MEMORY[0x1E69E6158];
  v46[24] = @"Input";
  v48 = v47;
  v49 = v46;
  v237 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445FB0, &qword_1CA97EE10);
  v50 = swift_initStackObject();
  v236 = xmmword_1CA981350;
  *(v50 + 16) = xmmword_1CA981350;
  *(v50 + 32) = 0x656C7069746C754DLL;
  *(v50 + 40) = 0xE800000000000000;
  v51 = MEMORY[0x1E69E6370];
  *(v50 + 48) = 1;
  *(v50 + 72) = v51;
  strcpy((v50 + 80), "ParameterKey");
  *(v50 + 93) = 0;
  *(v50 + 94) = -5120;
  *(v50 + 96) = 0x7475706E494657;
  *(v50 + 104) = 0xE700000000000000;
  *(v50 + 120) = v48;
  *(v50 + 128) = 0x6465726975716552;
  *(v50 + 136) = 0xE800000000000000;
  *(v50 + 144) = 1;
  *(v50 + 168) = v51;
  *(v50 + 176) = 0x7365707954;
  *(v50 + 184) = 0xE500000000000000;
  v228 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
  *(v50 + 216) = v228;
  *(v50 + 192) = &unk_1F4A02D38;
  v52 = @"IconName";
  v53 = @"Input";
  v54 = sub_1CA94C1E8();
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC447DE0, &qword_1CA9917E0);
  v227 = v55;
  v49[25] = v54;
  v49[28] = v55;
  v49[29] = @"Name";
  v56 = @"Name";
  v57 = sub_1CA94C438();
  v59 = v58;
  v60 = sub_1CA94C438();
  v62 = v61;
  v235 = &v213;
  MEMORY[0x1EEE9AC00](v60);
  v63 = &v213 - v243;
  sub_1CA948D98();
  v64 = [v240 bundleURL];
  MEMORY[0x1EEE9AC00](v64);
  v65 = &v213 - v242;
  sub_1CA948B68();

  v66 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v67 = sub_1CA2F9F14(v57, v59, v60, v62, 0, 0, v63, v65);
  v69 = v238;
  v68 = v239;
  v239[30] = v67;
  v68[33] = v69;
  v68[34] = @"Output";
  v70 = swift_allocObject();
  *(v70 + 16) = v236;
  *(v70 + 32) = 0x75736F6C63736944;
  *(v70 + 40) = 0xEF6C6576654C6572;
  *(v70 + 48) = 0x63696C627550;
  *(v70 + 56) = 0xE600000000000000;
  *(v70 + 72) = MEMORY[0x1E69E6158];
  *(v70 + 80) = 0x656C7069746C754DLL;
  *(v70 + 88) = 0xE800000000000000;
  *(v70 + 96) = 1;
  *(v70 + 120) = MEMORY[0x1E69E6370];
  *(v70 + 128) = 0x614E74757074754FLL;
  *(v70 + 136) = 0xEA0000000000656DLL;
  v71 = @"Output";
  v72 = sub_1CA94C438();
  v233 = v73;
  v234 = v72;
  v74 = sub_1CA94C438();
  v76 = v75;
  v235 = &v213;
  MEMORY[0x1EEE9AC00](v74);
  v77 = &v213 - v243;
  sub_1CA948D98();
  v78 = [v240 bundleURL];
  MEMORY[0x1EEE9AC00](v78);
  v79 = &v213 - v242;
  sub_1CA948B68();

  v80 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v70 + 144) = sub_1CA2F9F14(v234, v233, v74, v76, 0, 0, v77, v79);
  *(v70 + 168) = v69;
  *(v70 + 176) = 0x7365707954;
  *(v70 + 216) = v228;
  *(v70 + 184) = 0xE500000000000000;
  *(v70 + 192) = &unk_1F4A02D68;
  v81 = MEMORY[0x1E69E6158];
  v82 = sub_1CA94C1E8();
  v83 = v239;
  v239[35] = v82;
  v83[38] = v227;
  v83[39] = @"ParameterCollapsingBehavior";
  v83[40] = 0x726576654ELL;
  v83[41] = 0xE500000000000000;
  v83[43] = v81;
  v83[44] = @"Parameters";
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443910, &unk_1CA981A00);
  v235 = swift_allocObject();
  *(v235 + 1) = xmmword_1CA981570;
  v234 = sub_1CA25B3D0(0, &qword_1EDB9F710, off_1E836EDC0);
  v232 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443D80, &unk_1CA981BA0);
  v84 = swift_allocObject();
  *(v84 + 16) = v236;
  v214 = 0x80000001CA99E620;
  v226 = 0xD000000000000011;
  *(v84 + 32) = @"Class";
  *(v84 + 40) = 0xD000000000000011;
  *(v84 + 48) = 0x80000001CA99E620;
  *(v84 + 64) = v81;
  *(v84 + 72) = @"DefaultValue";
  *(v84 + 80) = 1;
  *(v84 + 104) = MEMORY[0x1E69E6370];
  *(v84 + 112) = @"Key";
  v233 = 0x80000001CA9C77C0;
  *(v84 + 120) = 0xD000000000000010;
  *(v84 + 128) = 0x80000001CA9C77C0;
  *(v84 + 144) = v81;
  *(v84 + 152) = @"Label";
  v85 = @"Class";
  v86 = @"Key";
  v87 = @"Label";
  v88 = v85;
  v89 = v86;
  v90 = v87;
  *&v224 = v88;
  v225 = v89;
  *&v229 = v90;
  v91 = @"ParameterCollapsingBehavior";
  v92 = @"Parameters";
  v93 = @"DefaultValue";
  v94 = sub_1CA94C438();
  v96 = v95;
  v97 = sub_1CA94C438();
  v99 = v98;
  v231 = &v213;
  MEMORY[0x1EEE9AC00](v97);
  v100 = &v213 - v243;
  sub_1CA948D98();
  v101 = [v240 bundleURL];
  MEMORY[0x1EEE9AC00](v101);
  v102 = &v213 - v242;
  sub_1CA948B68();

  v103 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v104 = sub_1CA2F9F14(v94, v96, v97, v99, 0, 0, v100, v102);
  *(v84 + 184) = v238;
  *(v84 + 160) = v104;
  _s3__C3KeyVMa_0(0);
  v231 = v105;
  v230 = sub_1CA29CF44(&qword_1EDB9F780, _s3__C3KeyVMa_0);
  sub_1CA94C1E8();
  v235[4] = sub_1CA2F864C();
  v106 = swift_allocObject();
  *(v106 + 16) = xmmword_1CA981300;
  *(v106 + 32) = @"AutocapitalizationType";
  *(v106 + 40) = 1701736270;
  *(v106 + 48) = 0xE400000000000000;
  v107 = MEMORY[0x1E69E6158];
  v108 = v224;
  *(v106 + 64) = MEMORY[0x1E69E6158];
  *(v106 + 72) = v108;
  *(v106 + 80) = 0xD000000000000014;
  *(v106 + 88) = 0x80000001CA99B500;
  *(v106 + 104) = v107;
  *(v106 + 112) = @"Description";
  v219 = v108;
  v109 = @"AutocapitalizationType";
  v110 = @"Description";
  v111 = sub_1CA94C438();
  v222 = v112;
  v223 = v111;
  v113 = sub_1CA94C438();
  v221 = v114;
  *&v224 = &v213;
  MEMORY[0x1EEE9AC00](v113);
  v115 = v243;
  sub_1CA948D98();
  v116 = v240;
  v117 = [v240 bundleURL];
  MEMORY[0x1EEE9AC00](v117);
  v118 = &v213 - v242;
  sub_1CA948B68();

  v119 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v106 + 120) = sub_1CA2F9F14(v223, v222, v113, v221, 0, 0, &v213 - v115, v118);
  v120 = v238;
  *(v106 + 144) = v238;
  *(v106 + 152) = @"DisableAutocorrection";
  *(v106 + 160) = 1;
  v121 = v225;
  *(v106 + 184) = MEMORY[0x1E69E6370];
  *(v106 + 192) = v121;
  *(v106 + 200) = 0xD000000000000015;
  *(v106 + 208) = 0x80000001CA9C78B0;
  v122 = v229;
  *(v106 + 224) = MEMORY[0x1E69E6158];
  *(v106 + 232) = v122;
  v218 = v121;
  v217 = v122;
  v123 = @"DisableAutocorrection";
  v225 = sub_1CA94C438();
  *&v224 = v124;
  v125 = sub_1CA94C438();
  v223 = v126;
  *&v229 = &v213;
  MEMORY[0x1EEE9AC00](v125);
  sub_1CA948D98();
  v127 = [v116 bundleURL];
  MEMORY[0x1EEE9AC00](v127);
  v128 = &v213 - v242;
  sub_1CA948B68();

  v129 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v106 + 240) = sub_1CA2F9F14(v225, v224, v125, v223, 0, 0, &v213 - v115, v128);
  *(v106 + 264) = v120;
  *(v106 + 272) = @"RequiredResources";
  v225 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437E0, &qword_1CA9813D0);
  v130 = swift_allocObject();
  v224 = xmmword_1CA981310;
  *(v130 + 16) = xmmword_1CA981310;
  v131 = swift_allocObject();
  v229 = xmmword_1CA9813C0;
  *(v131 + 16) = xmmword_1CA9813C0;
  strcpy((v131 + 32), "WFParameterKey");
  *(v131 + 47) = -18;
  v132 = v233;
  *(v131 + 48) = 0xD000000000000010;
  *(v131 + 56) = v132;
  v223 = 0x80000001CA993570;
  v133 = MEMORY[0x1E69E6158];
  *(v131 + 72) = MEMORY[0x1E69E6158];
  *(v131 + 80) = 0xD000000000000010;
  *(v131 + 88) = 0x80000001CA993570;
  *(v131 + 96) = 0;
  *(v131 + 120) = MEMORY[0x1E69E6370];
  *(v131 + 128) = 0x72756F7365524657;
  *(v131 + 168) = v133;
  v221 = 0xD00000000000001BLL;
  v222 = 0x80000001CA993590;
  *(v131 + 136) = 0xEF7373616C436563;
  *(v131 + 144) = 0xD00000000000001BLL;
  *(v131 + 152) = 0x80000001CA993590;
  v213 = @"RequiredResources";
  *(v130 + 32) = sub_1CA94C1E8();
  v134 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437E8, &qword_1CA9813D8);
  v220 = v134;
  *(v106 + 280) = v130;
  *(v106 + 304) = v134;
  *(v106 + 312) = @"TextAlignment";
  *(v106 + 344) = v133;
  *(v106 + 320) = 1952867660;
  *(v106 + 328) = 0xE400000000000000;
  v135 = @"TextAlignment";
  sub_1CA94C1E8();
  v235[5] = sub_1CA2F864C();
  v136 = swift_allocObject();
  *(v136 + 16) = v236;
  v137 = v226;
  *(v136 + 32) = v219;
  *(v136 + 40) = v137;
  *(v136 + 48) = v214;
  v138 = v218;
  *(v136 + 64) = v133;
  *(v136 + 72) = v138;
  *(v136 + 80) = 0xD000000000000013;
  *(v136 + 88) = 0x80000001CA9C7920;
  v139 = v217;
  *(v136 + 104) = v133;
  *(v136 + 112) = v139;
  v140 = sub_1CA94C438();
  v142 = v141;
  v143 = sub_1CA94C438();
  v145 = v144;
  v214 = &v213;
  MEMORY[0x1EEE9AC00](v143);
  v146 = &v213 - v243;
  sub_1CA948D98();
  v147 = [v240 bundleURL];
  MEMORY[0x1EEE9AC00](v147);
  v148 = &v213 - v242;
  sub_1CA948B68();

  v149 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v136 + 120) = sub_1CA2F9F14(v140, v142, v143, v145, 0, 0, v146, v148);
  v150 = v213;
  *(v136 + 144) = v238;
  *(v136 + 152) = v150;
  v151 = swift_allocObject();
  *(v151 + 16) = v224;
  v152 = swift_allocObject();
  *(v152 + 16) = v229;
  strcpy((v152 + 32), "WFParameterKey");
  *(v152 + 47) = -18;
  *(v152 + 48) = 0xD000000000000010;
  *(v152 + 56) = v233;
  v153 = MEMORY[0x1E69E6158];
  *(v152 + 72) = MEMORY[0x1E69E6158];
  *(v152 + 80) = 0xD000000000000010;
  *(v152 + 88) = v223;
  *(v152 + 96) = 0;
  *(v152 + 120) = MEMORY[0x1E69E6370];
  *(v152 + 128) = 0x72756F7365524657;
  *(v152 + 168) = v153;
  *(v152 + 136) = 0xEF7373616C436563;
  v154 = v222;
  *(v152 + 144) = v221;
  *(v152 + 152) = v154;
  v155 = v153;
  *(v151 + 32) = sub_1CA94C1E8();
  *(v136 + 184) = v220;
  *(v136 + 160) = v151;
  sub_1CA94C1E8();
  v235[6] = sub_1CA2F864C();
  v156 = swift_allocObject();
  *(v156 + 16) = v236;
  *&v236 = 0xD000000000000019;
  v157 = v218;
  *(v156 + 32) = v219;
  *(v156 + 40) = 0xD000000000000019;
  *(v156 + 48) = 0x80000001CA99B030;
  *(v156 + 64) = v155;
  *(v156 + 72) = v157;
  *(v156 + 80) = 0x7475706E494657;
  *(v156 + 88) = 0xE700000000000000;
  v158 = v217;
  *(v156 + 104) = v155;
  *(v156 + 112) = v158;
  v159 = sub_1CA94C438();
  v218 = v160;
  v219 = v159;
  v161 = sub_1CA94C438();
  v217 = v162;
  v232 = &v213;
  MEMORY[0x1EEE9AC00](v161);
  v163 = v243;
  sub_1CA948D98();
  v164 = v240;
  v165 = [v240 bundleURL];
  v214 = &v213;
  MEMORY[0x1EEE9AC00](v165);
  v166 = v242;
  sub_1CA948B68();

  v167 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v156 + 120) = sub_1CA2F9F14(v219, v218, v161, v217, 0, 0, &v213 - v163, &v213 - v166);
  v168 = v238;
  *(v156 + 144) = v238;
  *(v156 + 152) = @"Placeholder";
  v169 = @"Placeholder";
  v170 = sub_1CA94C438();
  v218 = v171;
  v219 = v170;
  v172 = sub_1CA94C438();
  v217 = v173;
  v232 = &v213;
  MEMORY[0x1EEE9AC00](v172);
  sub_1CA948D98();
  v174 = [v164 bundleURL];
  MEMORY[0x1EEE9AC00](v174);
  sub_1CA948B68();

  v175 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v176 = sub_1CA2F9F14(v219, v218, v172, v217, 0, 0, &v213 - v163, &v213 - v166);
  *(v156 + 184) = v168;
  *(v156 + 160) = v176;
  sub_1CA94C1E8();
  v177 = sub_1CA2F864C();
  v178 = v235;
  v235[7] = v177;
  v179 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D8, &qword_1CA981398);
  v180 = v239;
  v239[45] = v178;
  v180[48] = v179;
  v180[49] = @"ParameterSummary";
  v181 = @"ParameterSummary";
  v182 = sub_1CA94C438();
  v184 = v183;
  v185 = sub_1CA94C438();
  v187 = v186;
  MEMORY[0x1EEE9AC00](v185);
  v188 = &v213 - v243;
  sub_1CA948D98();
  v189 = [v240 bundleURL];
  MEMORY[0x1EEE9AC00](v189);
  v190 = &v213 - v242;
  sub_1CA948B68();

  v191 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v192 = sub_1CA2F9F14(v182, v184, v185, v187, 0, 0, v188, v190);
  v193 = [objc_allocWithZone(WFActionParameterSummary) initWithString_];

  v194 = sub_1CA25B3D0(0, &unk_1EC441800, off_1E836DD60);
  v195 = v239;
  v239[50] = v193;
  v195[53] = v194;
  v195[54] = @"RequiredResources";
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4438F0, &unk_1CA9819E0);
  v196 = swift_allocObject();
  *(v196 + 16) = v229;
  v197 = swift_initStackObject();
  *(v197 + 16) = v215;
  *(v197 + 32) = v226;
  *(v197 + 40) = 0x80000001CA99B240;
  v198 = swift_allocObject();
  *(v198 + 16) = v224;
  v199 = swift_allocObject();
  *(v199 + 16) = v229;
  strcpy((v199 + 32), "WFParameterKey");
  *(v199 + 47) = -18;
  v200 = v233;
  *(v199 + 48) = 0xD000000000000010;
  *(v199 + 56) = v200;
  v201 = MEMORY[0x1E69E6158];
  *(v199 + 72) = MEMORY[0x1E69E6158];
  *(v199 + 80) = 0xD000000000000010;
  *(v199 + 88) = v223;
  *(v199 + 96) = 1;
  *(v199 + 120) = MEMORY[0x1E69E6370];
  *(v199 + 128) = 0x72756F7365524657;
  *(v199 + 168) = v201;
  v203 = v221;
  v202 = v222;
  *(v199 + 136) = 0xEF7373616C436563;
  *(v199 + 144) = v203;
  *(v199 + 152) = v202;
  v204 = @"RequiredResources";
  *(v198 + 32) = sub_1CA94C1E8();
  *(v197 + 48) = v198;
  *(v197 + 72) = v220;
  *(v197 + 80) = 0x72756F7365524657;
  *(v197 + 120) = v201;
  v205 = v236;
  *(v197 + 88) = 0xEF7373616C436563;
  *(v197 + 96) = v205;
  *(v197 + 104) = 0x80000001CA9932D0;
  *(v196 + 32) = sub_1CA94C1E8();
  *(v196 + 56) = v227;
  *(v196 + 64) = 0xD000000000000017;
  *(v196 + 72) = 0x80000001CA997E10;
  *(v196 + 120) = v201;
  *(v196 + 88) = v201;
  *(v196 + 96) = 0xD00000000000001CLL;
  *(v196 + 104) = 0x80000001CA993620;
  v206 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443838, &qword_1CA981588);
  v207 = v239;
  v239[55] = v196;
  v207[58] = v206;
  v207[59] = @"UserInterfaceClasses";
  v208 = @"UserInterfaceClasses";
  v209 = sub_1CA94C1E8();
  v210 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B8, &unk_1CA985870);
  v207[60] = v209;
  v207[63] = v210;
  v207[64] = @"UserInterfaces";
  v207[68] = v228;
  v207[65] = &unk_1F4A02DF8;
  type metadata accessor for Key(0);
  sub_1CA29CF44(&qword_1EDB9FB10, type metadata accessor for Key);
  v211 = @"UserInterfaces";
  sub_1CA94C1E8();
  return sub_1CA332510();
}

id sub_1CA519958()
{
  v158 = sub_1CA25B3D0(0, &qword_1EC4419A0, off_1E836DD08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B0, &qword_1CA981320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA9813F0;
  v1 = MEMORY[0x1E69E6158];
  *(inited + 32) = @"ActionClass";
  *(inited + 40) = 0xD000000000000020;
  *(inited + 48) = 0x80000001CA9C79B0;
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
  v166 = (v12 + 15) & 0xFFFFFFFFFFFFFFF0;
  v167 = v12;
  v13 = &v151 - v166;
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v162 = qword_1EDB9F690;
  v14 = [qword_1EDB9F690 bundleURL];
  v15 = sub_1CA948BA8();
  v164 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v165 = (v16 + 15) & 0xFFFFFFFFFFFFFFF0;
  v17 = &v151 - v165;
  sub_1CA948B68();

  v18 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v19 = sub_1CA2F9F14(v4, v6, v7, v9, 0, 0, v13, v17);
  v20 = sub_1CA25B3D0(0, &qword_1EDB9F6E0, 0x1E696B100);
  v163 = v20;
  *(inited + 80) = v19;
  *(inited + 104) = v20;
  *(inited + 112) = @"AppDefinition";
  v21 = @"AppDefinition";
  v22 = sub_1CA94C1E8();
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B8, &unk_1CA985870);
  *(inited + 120) = v22;
  *(inited + 144) = v23;
  *(inited + 152) = @"Description";
  v160 = sub_1CA25B3D0(0, &unk_1EC441790, off_1E836DD18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D0, &qword_1CA981390);
  v24 = swift_initStackObject();
  *(v24 + 16) = xmmword_1CA981310;
  *(v24 + 32) = @"DescriptionSummary";
  v25 = @"Description";
  v26 = @"DescriptionSummary";
  v27 = sub_1CA94C438();
  v29 = v28;
  v30 = sub_1CA94C438();
  v32 = v31;
  v159 = &v151;
  MEMORY[0x1EEE9AC00](v30);
  v33 = &v151 - v166;
  sub_1CA948D98();
  v34 = [v162 bundleURL];
  v161 = inited;
  MEMORY[0x1EEE9AC00](v34);
  v35 = &v151 - v165;
  sub_1CA948B68();

  v36 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v37 = sub_1CA2F9F14(v27, v29, v30, v32, 0, 0, v33, v35);
  *(v24 + 64) = v163;
  *(v24 + 40) = v37;
  type metadata accessor for DescriptionKey(0);
  sub_1CA29CF44(&qword_1EC441830, type metadata accessor for DescriptionKey);
  sub_1CA94C1E8();
  v38 = v160;
  v39 = sub_1CA6B3784();
  v40 = v161;
  v161[20] = v39;
  v40[23] = v38;
  v40[24] = @"LocallyProcessesData";
  v41 = MEMORY[0x1E69E6370];
  *(v40 + 200) = 1;
  v40[28] = v41;
  v40[29] = @"Name";
  v42 = @"LocallyProcessesData";
  v43 = @"Name";
  v159 = sub_1CA94C438();
  v157 = v44;
  v45 = sub_1CA94C438();
  v47 = v46;
  v160 = &v151;
  MEMORY[0x1EEE9AC00](v45);
  v48 = v166;
  sub_1CA948D98();
  v49 = v162;
  v50 = [v162 bundleURL];
  MEMORY[0x1EEE9AC00](v50);
  v51 = &v151 - v165;
  sub_1CA948B68();

  v52 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v53 = sub_1CA2F9F14(v159, v157, v45, v47, 0, 0, &v151 - v48, v51);
  v54 = v161;
  v161[30] = v53;
  v55 = v163;
  v54[33] = v163;
  v54[34] = @"Output";
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445FB0, &qword_1CA97EE10);
  v56 = swift_initStackObject();
  *(v56 + 16) = xmmword_1CA9813C0;
  *(v56 + 32) = 0x656C7069746C754DLL;
  *(v56 + 40) = 0xE800000000000000;
  *(v56 + 48) = 1;
  *(v56 + 72) = MEMORY[0x1E69E6370];
  *(v56 + 80) = 0x614E74757074754FLL;
  *(v56 + 88) = 0xEA0000000000656DLL;
  v57 = @"Output";
  v159 = sub_1CA94C438();
  v157 = v58;
  v59 = sub_1CA94C438();
  v156 = v60;
  v160 = &v151;
  MEMORY[0x1EEE9AC00](v59);
  sub_1CA948D98();
  v61 = [v49 bundleURL];
  MEMORY[0x1EEE9AC00](v61);
  v62 = &v151 - v165;
  sub_1CA948B68();

  v63 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v56 + 96) = sub_1CA2F9F14(v159, v157, v59, v156, 0, 0, &v151 - v48, v62);
  *(v56 + 120) = v55;
  *(v56 + 128) = 0x7365707954;
  *(v56 + 136) = 0xE500000000000000;
  v157 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
  *(v56 + 168) = v157;
  *(v56 + 144) = &unk_1F4A02E78;
  v64 = MEMORY[0x1E69E6158];
  v65 = sub_1CA94C1E8();
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC447DE0, &qword_1CA9917E0);
  v67 = v161;
  v161[35] = v65;
  v67[38] = v66;
  v67[39] = @"Parameters";
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443910, &unk_1CA981A00);
  v160 = swift_allocObject();
  *(v160 + 1) = xmmword_1CA981360;
  v159 = sub_1CA25B3D0(0, &qword_1EDB9F710, off_1E836EDC0);
  v154 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443D80, &unk_1CA981BA0);
  v68 = swift_initStackObject();
  *(v68 + 16) = xmmword_1CA981350;
  v69 = @"Parameters";
  *(v68 + 32) = sub_1CA94C368();
  *(v68 + 40) = 1;
  *(v68 + 64) = MEMORY[0x1E69E6370];
  *(v68 + 72) = @"Class";
  *(v68 + 80) = 0xD00000000000001ELL;
  *(v68 + 88) = 0x80000001CA9B3400;
  *(v68 + 104) = v64;
  *(v68 + 112) = @"Key";
  *(v68 + 120) = 0xD000000000000019;
  *(v68 + 128) = 0x80000001CA9C7AD0;
  *(v68 + 144) = v64;
  *(v68 + 152) = @"Label";
  v70 = @"Class";
  v71 = @"Key";
  v152 = v70;
  v153 = v71;
  v72 = @"Label";
  v73 = sub_1CA94C438();
  v75 = v74;
  v76 = sub_1CA94C438();
  v78 = v77;
  v156 = &v151;
  MEMORY[0x1EEE9AC00](v76);
  v79 = &v151 - v166;
  sub_1CA948D98();
  v80 = [v162 bundleURL];
  MEMORY[0x1EEE9AC00](v80);
  v81 = &v151 - v165;
  sub_1CA948B68();

  v82 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v83 = sub_1CA2F9F14(v73, v75, v76, v78, 0, 0, v79, v81);
  *(v68 + 184) = v163;
  *(v68 + 160) = v83;
  _s3__C3KeyVMa_0(0);
  v156 = v84;
  v155 = sub_1CA29CF44(&qword_1EDB9F780, _s3__C3KeyVMa_0);
  sub_1CA94C1E8();
  v160[4] = sub_1CA2F864C();
  v85 = swift_allocObject();
  *(v85 + 16) = xmmword_1CA981400;
  *(v85 + 32) = v152;
  *(v85 + 40) = 0xD000000000000012;
  *(v85 + 48) = 0x80000001CA99B980;
  v86 = MEMORY[0x1E69E6158];
  *(v85 + 64) = MEMORY[0x1E69E6158];
  *(v85 + 72) = @"DefaultValue";
  v87 = MEMORY[0x1E69E6530];
  *(v85 + 80) = 1;
  v88 = v153;
  *(v85 + 104) = v87;
  *(v85 + 112) = v88;
  *(v85 + 120) = 0xD000000000000016;
  *(v85 + 128) = 0x80000001CA9C7B20;
  *(v85 + 144) = v86;
  *(v85 + 152) = @"Prompt";
  v89 = @"DefaultValue";
  v90 = @"Prompt";
  v91 = sub_1CA94C438();
  v152 = v92;
  v153 = v91;
  v151 = sub_1CA94C438();
  v94 = v93;
  v154 = &v151;
  MEMORY[0x1EEE9AC00](v151);
  v95 = &v151 - v166;
  sub_1CA948D98();
  v96 = v162;
  v97 = [v162 bundleURL];
  MEMORY[0x1EEE9AC00](v97);
  v98 = v165;
  sub_1CA948B68();

  v99 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v85 + 160) = sub_1CA2F9F14(v153, v152, v151, v94, 0, 0, v95, &v151 - v98);
  v100 = v163;
  *(v85 + 184) = v163;
  *(v85 + 192) = @"StepperDescription";
  v101 = @"StepperDescription";
  v102 = sub_1CA94C438();
  v152 = v103;
  v153 = v102;
  v104 = sub_1CA94C438();
  v151 = v105;
  v154 = &v151;
  MEMORY[0x1EEE9AC00](v104);
  v106 = &v151 - v166;
  sub_1CA948D98();
  v107 = [v96 bundleURL];
  MEMORY[0x1EEE9AC00](v107);
  sub_1CA948B68();

  v108 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v85 + 200) = sub_1CA2F9F14(v153, v152, v104, v151, 0, 0, v106, &v151 - v98);
  *(v85 + 224) = v100;
  *(v85 + 232) = @"StepperNoun";
  v109 = @"StepperNoun";
  v110 = sub_1CA94C438();
  v153 = v111;
  v154 = v110;
  v112 = v111;
  v172 = 0;
  v173 = 0xE000000000000000;
  sub_1CA94D408();

  v172 = v110;
  v173 = v112;
  v170 = 10;
  v171 = 0xE100000000000000;
  v168 = 32;
  v169 = 0xE100000000000000;
  sub_1CA27BAF0();
  v172 = sub_1CA94D1B8();
  v173 = v113;
  v114 = MEMORY[0x1CCAA1300](0xD000000000000010, 0x80000001CA99BA10);
  v152 = &v151;
  v115 = v172;
  v151 = v173;
  MEMORY[0x1EEE9AC00](v114);
  v116 = v166;
  sub_1CA948D98();
  v117 = v162;
  v118 = [v162 bundleURL];
  MEMORY[0x1EEE9AC00](v118);
  v119 = v165;
  sub_1CA948B68();

  v120 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v85 + 240) = sub_1CA2F9F14(v115, v151, v154, v153, 0, 0, &v151 - v116, &v151 - v119);
  *(v85 + 264) = v163;
  *(v85 + 272) = @"StepperPrefix";
  v121 = @"StepperPrefix";
  v122 = sub_1CA94C438();
  v152 = v123;
  v153 = v122;
  v151 = sub_1CA94C438();
  v125 = v124;
  v154 = &v151;
  MEMORY[0x1EEE9AC00](v151);
  sub_1CA948D98();
  v126 = [v117 bundleURL];
  MEMORY[0x1EEE9AC00](v126);
  sub_1CA948B68();

  v127 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v128 = sub_1CA2F9F14(v153, v152, v151, v125, 0, 0, &v151 - v116, &v151 - v119);
  *(v85 + 304) = v163;
  *(v85 + 280) = v128;
  sub_1CA94C1E8();
  v129 = sub_1CA2F864C();
  v130 = v160;
  v160[5] = v129;
  v131 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D8, &qword_1CA981398);
  v132 = v161;
  v161[40] = v130;
  v132[43] = v131;
  v132[44] = @"ParameterSummary";
  v133 = @"ParameterSummary";
  v134 = sub_1CA94C438();
  v136 = v135;
  v137 = sub_1CA94C438();
  v139 = v138;
  MEMORY[0x1EEE9AC00](v137);
  v140 = &v151 - v166;
  sub_1CA948D98();
  v141 = [v162 bundleURL];
  MEMORY[0x1EEE9AC00](v141);
  v142 = &v151 - v165;
  sub_1CA948B68();

  v143 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v144 = sub_1CA2F9F14(v134, v136, v137, v139, 0, 0, v140, v142);
  v145 = [objc_allocWithZone(WFActionParameterSummary) initWithString_];

  v146 = sub_1CA25B3D0(0, &unk_1EC441800, off_1E836DD60);
  v147 = v161;
  v161[45] = v145;
  v147[48] = v146;
  v147[49] = @"RequiredResources";
  v147[53] = v157;
  v147[50] = &unk_1F4A02EA8;
  v148 = @"RequiredResources";
  v149 = sub_1CA94C368();
  v147[58] = MEMORY[0x1E69E6530];
  v147[54] = v149;
  v147[55] = 1;
  type metadata accessor for Key(0);
  sub_1CA29CF44(&qword_1EDB9FB10, type metadata accessor for Key);
  sub_1CA94C1E8();
  return sub_1CA332510();
}

uint64_t String.ifNotEmpty.getter(uint64_t a1, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v2)
  {
    return 0;
  }

  v3 = a1;
  sub_1CA94C218();
  return v3;
}

Swift::String __swiftcall String.trimSuffix(_:)(Swift::String a1)
{
  v3 = v2;
  v4 = v1;
  if (sub_1CA94C538())
  {
    v5 = sub_1CA94C468();
    v6 = -v5;
    if (__OFSUB__(0, v5))
    {
      __break(1u);
      goto LABEL_7;
    }

    sub_1CA94C488();
    v7 = sub_1CA94C588();
    v4 = MEMORY[0x1CCAA1280](v7);
    v3 = v8;
  }

  else
  {
    sub_1CA94C218();
  }

  v5 = v4;
  v6 = v3;
LABEL_7:
  result._object = v6;
  result._countAndFlagsBits = v5;
  return result;
}

uint64_t WFDispatchSourceTimer.toAnyCancellable()()
{
  v1 = sub_1CA949FB8();
  v2 = *(v1 + 48);
  v3 = *(v1 + 52);
  swift_allocObject();
  sub_1CA25B3D0(0, &qword_1EC446190, 0x1E69E0AD0);
  sub_1CA51ADBC();
  v4 = v0;
  return sub_1CA949FC8();
}

unint64_t sub_1CA51ADBC()
{
  result = qword_1EC446198;
  if (!qword_1EC446198)
  {
    sub_1CA25B3D0(255, &qword_1EC446190, 0x1E69E0AD0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC446198);
  }

  return result;
}

uint64_t sub_1CA51AE58(char a1)
{
  v1 = 0x64656873696E6966;
  if (a1 == 5)
  {
    v1 = 0x676E6974696177;
  }

  if (a1 == 4)
  {
    return 1701602409;
  }

  else
  {
    return v1;
  }
}

unint64_t sub_1CA51AEAC(unint64_t result)
{
  if (result >= 4)
  {
    return 4;
  }

  return result;
}

unint64_t sub_1CA51AECC@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1CA51AEAC(*a1);
  *a2 = result;
  return result;
}

uint64_t SessionKitAssertion.AcquisitionError.hashValue.getter()
{
  v1 = *v0;
  sub_1CA94D918();
  MEMORY[0x1CCAA2780](v1);
  return sub_1CA94D968();
}

uint64_t sub_1CA51B070(uint64_t a1, uint64_t a2, uint64_t a3, const void *a4)
{
  v7 = *(a1 + 32);
  v6 = *(a1 + 40);
  v8 = sub_1CA94C658();
  v9 = _Block_copy(a4);
  v10 = swift_allocObject();
  *(v10 + 16) = v9;

  v7(v8, a3, sub_1CA51ED80, v10);
}

uint64_t sub_1CA51B1E8(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_1CA94C648();
  v13[4] = a3;
  v13[5] = a4;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 1107296256;
  v13[2] = sub_1CA4DCA30;
  v13[3] = &block_descriptor_45;
  v10 = _Block_copy(v13);
  v11 = *(a5 + 16);

  v11(a5, v9, a2 & 1, v10);
  _Block_release(v10);
}

uint64_t sub_1CA51B2F0@<X0>(void *a1@<X0>, uint64_t (**a2)(uint64_t *a1, unsigned __int8 *a2, uint64_t *a3)@<X8>)
{
  v3 = (*a1 + OBJC_IVAR___WFSessionKitAssertion_resultHandler);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_1CA51EE04;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_1CA294350(v4);
}

uint64_t sub_1CA51B390(uint64_t *a1, unsigned __int8 *a2, uint64_t *a3, void (*a4)(uint64_t, uint64_t, uint64_t (*)(), uint64_t))
{
  v5 = *a1;
  v6 = *a2;
  v8 = *a3;
  v7 = a3[1];
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = v7;

  a4(v5, v6, sub_1CA51EE0C, v9);
}

uint64_t sub_1CA51B438(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_1CA51EDFC;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = (*a2 + OBJC_IVAR___WFSessionKitAssertion_resultHandler);
  swift_beginAccess();
  v8 = *v7;
  v9 = v7[1];
  *v7 = v6;
  v7[1] = v5;
  sub_1CA294350(v3);
  return sub_1CA293254(v8);
}

uint64_t sub_1CA51B500(uint64_t a1, char a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t *, char *, void *))
{
  v12 = a1;
  v11 = a2;
  v8 = swift_allocObject();
  *(v8 + 16) = a3;
  *(v8 + 24) = a4;
  v10[0] = sub_1CA40564C;
  v10[1] = v8;

  a5(&v12, &v11, v10);
}

uint64_t sub_1CA51B6D0(void *a1, void (*a2)(void, void))
{
  v4 = (v2 + *a1);
  swift_beginAccess();
  v5 = *v4;
  a2(*v4, v4[1]);
  return v5;
}

void sub_1CA51B738(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4(a2);
}

void sub_1CA51B84C(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v3 = sub_1CA948AC8();
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  (*(a2 + 16))(a2);
}

uint64_t sub_1CA51B8D0(uint64_t a1, uint64_t a2, void *a3, uint64_t (*a4)(uint64_t, uint64_t))
{
  v8 = (v4 + *a3);
  swift_beginAccess();
  v9 = *v8;
  v10 = v8[1];
  *v8 = a1;
  v8[1] = a2;
  return a4(v9, v10);
}

uint64_t sub_1CA51B934@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = (*a1 + OBJC_IVAR___WFSessionKitAssertion_failureHandler);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_1CA51EDD0;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_1CA294350(v4);
}

uint64_t sub_1CA51B9D4(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_1CA51ED98;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = (*a2 + OBJC_IVAR___WFSessionKitAssertion_failureHandler);
  swift_beginAccess();
  v8 = *v7;
  v9 = v7[1];
  *v7 = v6;
  v7[1] = v5;
  sub_1CA294350(v3);
  return sub_1CA293254(v8);
}

uint64_t sub_1CA51BB40(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

id sub_1CA51BC00(uint64_t a1, uint64_t a2, char a3)
{
  ObjectType = swift_getObjectType();
  v4 = sub_1CA94CD08();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_6_0();
  v6 = sub_1CA94B7D8();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  OUTLINED_FUNCTION_6_0();
  v8 = sub_1CA94CD38();
  v9 = OUTLINED_FUNCTION_1_0(v8);
  v11 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_6_0();
  v16 = v15 - v14;
  v17 = &v3[OBJC_IVAR___WFSessionKitAssertion_resultHandler];
  *v17 = 0;
  v17[1] = 0;
  v18 = &v3[OBJC_IVAR___WFSessionKitAssertion_failureHandler];
  *v18 = 0;
  v18[1] = 0;
  v3[OBJC_IVAR___WFSessionKitAssertion_state] = 4;
  v22 = OBJC_IVAR___WFSessionKitAssertion_queue;
  sub_1CA25B3D0(0, &qword_1EDB9FAD0, 0x1E69E9610);
  (*(v11 + 104))(v16, *MEMORY[0x1E69E8098], v8);
  sub_1CA94B7C8();
  v28 = MEMORY[0x1E69E7CC0];
  sub_1CA51BB40(&qword_1EC441A08, 255, MEMORY[0x1E69E8030]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4461C0, qword_1CA98A910);
  sub_1CA51EF00(&unk_1EC441AF0, &unk_1EC4461C0, qword_1CA98A910);
  sub_1CA94D2A8();
  *&v3[v22] = sub_1CA94CD78();
  v19 = MEMORY[0x1E69E7CC0];
  *&v3[OBJC_IVAR___WFSessionKitAssertion_additionalResultHandlers] = MEMORY[0x1E69E7CC0];
  *&v3[OBJC_IVAR___WFSessionKitAssertion_additionalFailureHandlers] = v19;
  *&v3[OBJC_IVAR___WFSessionKitAssertion_cancellables] = MEMORY[0x1E69E7CD0];
  v20 = &v3[OBJC_IVAR___WFSessionKitAssertion_purpose];
  *v20 = a1;
  *(v20 + 1) = a2;
  v20[16] = a3;
  v27.receiver = v3;
  v27.super_class = ObjectType;
  return objc_msgSendSuper2(&v27, sel_init);
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> SessionKitAssertion.take()()
{
  v2 = sub_1CA949F78();
  v3 = OUTLINED_FUNCTION_1_0(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_6_0();
  v10 = v9 - v8;
  v11 = OBJC_IVAR___WFSessionKitAssertion_state;
  if (*(v0 + OBJC_IVAR___WFSessionKitAssertion_state) == 4)
  {
    *(v0 + OBJC_IVAR___WFSessionKitAssertion_purpose + 16);
    sub_1CA51C158(*(v0 + OBJC_IVAR___WFSessionKitAssertion_purpose), *(v0 + OBJC_IVAR___WFSessionKitAssertion_purpose + 8));
    if (!v1)
    {
      *(v0 + v11) = 5;
      v13 = *MEMORY[0x1E69E10C8];
      sub_1CA949C58();
      v14 = sub_1CA949F68();
      v15 = sub_1CA94CC38();
      if (os_log_type_enabled(v14, v15))
      {
        v16 = swift_slowAlloc();
        *v16 = 0;
        _os_log_impl(&dword_1CA256000, v14, v15, "Taking a SessionKit assertion...", v16, 2u);
        MEMORY[0x1CCAA4BF0](v16, -1, -1);
      }

      (*(v5 + 8))(v10, v2);
    }
  }

  else
  {
    sub_1CA51C104();
    swift_allocError();
    *v12 = 0;
    swift_willThrow();
  }
}

unint64_t sub_1CA51C104()
{
  result = qword_1EC4461F0;
  if (!qword_1EC4461F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4461F0);
  }

  return result;
}

uint64_t sub_1CA51C158(uint64_t a1, uint64_t a2)
{
  v5 = sub_1CA94B808();
  v6 = OUTLINED_FUNCTION_1_0(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_6_0();
  v13 = v12 - v11;
  v14 = *(v2 + OBJC_IVAR___WFSessionKitAssertion_queue);
  *(v12 - v11) = v14;
  (*(v8 + 104))(v12 - v11, *MEMORY[0x1E69E8018], v5);
  v14;
  v15 = sub_1CA94B828();
  result = (*(v8 + 8))(v13, v5);
  if (v15)
  {
    MEMORY[0x1EEE9AC00](result);
    *(&v17 - 4) = a1;
    *(&v17 - 3) = a2;
    *(&v17 - 2) = v2;
    return sub_1CA94CD58();
  }

  else
  {
    __break(1u);
  }

  return result;
}

Swift::Void __swiftcall SessionKitAssertion.startTimeoutTimer()()
{
  v1 = v0;
  v2 = sub_1CA949F78();
  v3 = OUTLINED_FUNCTION_1_0(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_6_0();
  v10 = v9 - v8;
  if (*(v1 + OBJC_IVAR___WFSessionKitAssertion_state) == 5)
  {
    v11 = *MEMORY[0x1E69E10C8];
    sub_1CA949C58();
    v12 = sub_1CA949F68();
    v13 = sub_1CA94CC38();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 134217984;
      *(v14 + 4) = 0x4008000000000000;
      _os_log_impl(&dword_1CA256000, v12, v13, "Starting timeout timer (%f seconds), we're still waiting on the target to take the assertion...", v14, 0xCu);
      MEMORY[0x1CCAA4BF0](v14, -1, -1);
    }

    (*(v5 + 8))(v10, v2);
    v15 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v16 = swift_allocObject();
    *(v16 + 16) = v15;
    *(v16 + 24) = 0x4008000000000000;
    v17 = objc_allocWithZone(MEMORY[0x1E69E0AD0]);
    v18 = sub_1CA51E600(0, sub_1CA51E96C, v16, 3.0);
    [v18 start];
    v19 = WFDispatchSourceTimer.toAnyCancellable()();
    OUTLINED_FUNCTION_28();
    sub_1CA3699F0(&v20, v19);
    swift_endAccess();
  }
}

void sub_1CA51C56C(double a1)
{
  v2 = sub_1CA949F78();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    if (*(Strong + OBJC_IVAR___WFSessionKitAssertion_state) == 5)
    {
      v9 = *MEMORY[0x1E69E10C8];
      sub_1CA949C58();
      v10 = sub_1CA949F68();
      v11 = sub_1CA94CC38();
      if (os_log_type_enabled(v10, v11))
      {
        v12 = swift_slowAlloc();
        *v12 = 134217984;
        *(v12 + 4) = a1;
        _os_log_impl(&dword_1CA256000, v10, v11, "Assertion hit the timeout of %f seconds. We're bailing.", v12, 0xCu);
        MEMORY[0x1CCAA4BF0](v12, -1, -1);
      }

      (*(v3 + 8))(v6, v2);
      sub_1CA51C728(MEMORY[0x1E69E7CC0], 2, 0);
    }
  }
}

uint64_t sub_1CA51C728(uint64_t a1, char a2, uint64_t a3)
{
  v4 = v3;
  v3[OBJC_IVAR___WFSessionKitAssertion_state] = a2;
  switch(a2)
  {
    case 1:
      v19 = &v4[OBJC_IVAR___WFSessionKitAssertion_failureHandler];
      swift_beginAccess();
      v20 = *v19;
      if (*v19)
      {
        v21 = *(v19 + 1);

        v20(a3);
        sub_1CA293254(v20);
      }

      v22 = OBJC_IVAR___WFSessionKitAssertion_additionalFailureHandlers;
      swift_beginAccess();
      v23 = *&v4[v22];
      v24 = *(v23 + 16);
      if (v24)
      {
        v25 = *&v4[v22];
        sub_1CA94C218();
        v26 = (v23 + 40);
        do
        {
          v28 = *(v26 - 1);
          v27 = *v26;
          v30 = a3;

          v28(&v30);

          v26 += 2;
          --v24;
        }

        while (v24);
      }

      result = sub_1CA51D788(0xD00000000000001FLL, 0x80000001CA9C7E60);
      break;
    case 2:
      v14 = &v4[OBJC_IVAR___WFSessionKitAssertion_resultHandler];
      swift_beginAccess();
      v7 = *v14;
      if (*v14)
      {
        v15 = *(v14 + 1);
        v9 = swift_allocObject();
        *(v9 + 16) = v4;
        *(v9 + 24) = a1;
        v16 = v4;
        sub_1CA94C218();
        sub_1CA294350(v7);
        v12 = sub_1CA51EE34;
        v11 = a1;
        v13 = 0;
        goto LABEL_6;
      }

      v29 = 0;
      goto LABEL_19;
    case 3:

      result = sub_1CA51D788(0xD000000000000017, 0x80000001CA9C7E40);
      break;
    default:
      v6 = &v4[OBJC_IVAR___WFSessionKitAssertion_resultHandler];
      swift_beginAccess();
      v7 = *v6;
      if (*v6)
      {
        v8 = *(v6 + 1);
        v9 = swift_allocObject();
        *(v9 + 16) = v4;
        *(v9 + 24) = a1;
        sub_1CA294350(v7);
        v10 = v4;
        v11 = sub_1CA94C218();
        v12 = sub_1CA51EE74;
        v13 = 1;
LABEL_6:
        v7(v11, v13, v12, v9);

        result = sub_1CA293254(v7);
      }

      else
      {
        v29 = 1;
LABEL_19:
        result = sub_1CA51DCD4(v29, v4, a1);
      }

      break;
  }

  return result;
}

void sub_1CA51CA44()
{
  sub_1CA25B3D0(0, &qword_1EC446280, 0x1E69CA948);
  sub_1CA94C218();
  v0 = sub_1CA51CC38();
  v1 = swift_allocObject();
  swift_unknownObjectWeakInit();
  objc_allocWithZone(MEMORY[0x1E69CA940]);
  v2 = v0;
  v3 = sub_1CA51E6C8(0xD00000000000001ELL, 0x80000001CA9C7EA0, v2, 1, sub_1CA51EE9C, v1);
  if ([v3 state])
  {
    v4 = sub_1CA949FB8();
    v5 = *(v4 + 48);
    v6 = *(v4 + 52);
    swift_allocObject();
    sub_1CA51EEA4();
    v7 = v3;
    v8 = sub_1CA949FC8();
    swift_beginAccess();

    sub_1CA3699F0(&v10, v8);
    swift_endAccess();
  }

  else
  {
    sub_1CA51C104();
    swift_allocError();
    *v9 = 1;
    swift_willThrow();
  }
}

id sub_1CA51CC38()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v1 = sub_1CA94C368();

  v2 = [v0 initWithBundleIdentifier_];

  return v2;
}

uint64_t sub_1CA51CCAC(void *a1)
{
  v2 = sub_1CA94B7A8();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1CA94B7D8();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v13 = result;
    v21 = *(result + OBJC_IVAR___WFSessionKitAssertion_queue);
    v14 = swift_allocObject();
    *(v14 + 16) = a1;
    *(v14 + 24) = v13;
    aBlock[4] = sub_1CA51EEF8;
    aBlock[5] = v14;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1CA4DCA30;
    aBlock[3] = &block_descriptor_88;
    v15 = _Block_copy(aBlock);
    v20 = v7;
    v16 = v15;
    v17 = a1;
    v19 = v13;
    sub_1CA94B7C8();
    v22 = MEMORY[0x1E69E7CC0];
    sub_1CA51BB40(&qword_1EC441CD0, 255, MEMORY[0x1E69E7F60]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC445D38, &qword_1CA9891B8);
    sub_1CA51EF00(&qword_1EC441B30, &unk_1EC445D38, &qword_1CA9891B8);
    sub_1CA94D2A8();
    MEMORY[0x1CCAA1BC0](0, v11, v6, v16);
    _Block_release(v16);
    (*(v3 + 8))(v6, v2);
    (*(v8 + 8))(v11, v20);
  }

  return result;
}

uint64_t sub_1CA51CFAC(void *a1)
{
  v2 = [a1 sessionIdentifiers];
  v3 = sub_1CA94C658();

  sub_1CA51D054([a1 state], objc_msgSend(a1, sel_invalidationReason), 0, v3, 0);
}

uint64_t sub_1CA51D054(uint64_t result, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  if (!result)
  {
LABEL_7:
    v5 = a4;
    v6 = 1;
LABEL_11:

    return sub_1CA51C728(v5, v6, a5);
  }

  if (result == 1)
  {
    return result;
  }

  if (result != 2)
  {
LABEL_14:
    result = sub_1CA94D5F8();
    __break(1u);
    return result;
  }

  if (a3)
  {
    v5 = a4;
    v6 = 1;
LABEL_10:
    a5 = 0;
    goto LABEL_11;
  }

  switch(a2)
  {
    case 0:
      return result;
    case 1:
    case 5:
      v5 = a4;
      v6 = 0;
      goto LABEL_10;
    case 2:
    case 4:
    case 7:
      goto LABEL_7;
    case 3:
    case 6:
    case 8:
      v5 = a4;
      v6 = 2;
      goto LABEL_10;
    default:
      goto LABEL_14;
  }

  return result;
}

void sub_1CA51D194(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v5 = swift_allocObject();
  v5[2] = v4;
  v5[3] = a1;
  v5[4] = a2;
  objc_allocWithZone(MEMORY[0x1E69CA950]);
  swift_bridgeObjectRetain_n();
  v6 = sub_1CA51E7CC(0xD000000000000033, 0x80000001CA9C7F60, a1, a2, sub_1CA51EF74, v5);
  if ([v6 state])
  {
    v7 = sub_1CA949FB8();
    v8 = *(v7 + 48);
    v9 = *(v7 + 52);
    swift_allocObject();
    sub_1CA51EEA4();
    v10 = v6;
    v11 = sub_1CA949FC8();
    swift_beginAccess();

    sub_1CA3699F0(&v13, v11);
    swift_endAccess();
  }

  else
  {
    sub_1CA51C104();
    swift_allocError();
    *v12 = 1;
    swift_willThrow();
  }
}

uint64_t sub_1CA51D370(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_1CA94B7A8();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_1CA94B7D8();
  v13 = *(v25 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v25);
  v16 = &v22 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v18 = result;
    v24 = *(result + OBJC_IVAR___WFSessionKitAssertion_queue);
    v19 = swift_allocObject();
    v19[2] = v18;
    v19[3] = a1;
    v19[4] = a4;
    v19[5] = a5;
    aBlock[4] = sub_1CA51EF80;
    aBlock[5] = v19;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1CA4DCA30;
    aBlock[3] = &block_descriptor_101;
    v20 = _Block_copy(aBlock);
    v23 = v18;
    v21 = a1;
    sub_1CA94C218();
    sub_1CA94B7C8();
    v26 = MEMORY[0x1E69E7CC0];
    sub_1CA51BB40(&qword_1EC441CD0, 255, MEMORY[0x1E69E7F60]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC445D38, &qword_1CA9891B8);
    sub_1CA51EF00(&qword_1EC441B30, &unk_1EC445D38, &qword_1CA9891B8);
    sub_1CA94D2A8();
    MEMORY[0x1CCAA1BC0](0, v16, v12, v20);
    _Block_release(v20);
    (*(v9 + 8))(v12, v8);
    (*(v13 + 8))(v16, v25);
  }

  return result;
}

uint64_t sub_1CA51D680(int a1, id a2, uint64_t a3, uint64_t a4)
{
  v7 = [a2 state];
  v8 = [a2 invalidationReason];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443850, &qword_1CA9815F0);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1CA981310;
  *(v9 + 32) = a3;
  *(v9 + 40) = a4;
  sub_1CA94C218();
  sub_1CA51D054(v7, v8, 0, v9, 0);
}

Swift::Void __swiftcall SessionKitAssertion.cancel()()
{
  if (*(v0 + OBJC_IVAR___WFSessionKitAssertion_state) == 5)
  {
    *(v0 + OBJC_IVAR___WFSessionKitAssertion_state) = 3;
  }

  sub_1CA51D788(0xD000000000000013, 0x80000001CA9C7D00);
}

uint64_t sub_1CA51D788(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v6 = sub_1CA949F78();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = v48 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *MEMORY[0x1E69E10C8];
  sub_1CA949C58();
  sub_1CA94C218();
  v12 = sub_1CA949F68();
  v13 = sub_1CA94CC38();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v49[0] = v15;
    *v14 = 136315138;
    *(v14 + 4) = sub_1CA26B54C(a1, a2, v49);
    _os_log_impl(&dword_1CA256000, v12, v13, "Clearing state, because %s", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v15);
    MEMORY[0x1CCAA4BF0](v15, -1, -1);
    MEMORY[0x1CCAA4BF0](v14, -1, -1);
  }

  (*(v7 + 8))(v10, v6);
  v16 = (v3 + OBJC_IVAR___WFSessionKitAssertion_resultHandler);
  swift_beginAccess();
  v17 = *v16;
  v18 = v16[1];
  *v16 = 0;
  v16[1] = 0;
  sub_1CA293254(v17);
  v19 = (v3 + OBJC_IVAR___WFSessionKitAssertion_failureHandler);
  swift_beginAccess();
  v20 = *v19;
  v21 = v19[1];
  *v19 = 0;
  v19[1] = 0;
  sub_1CA293254(v20);
  v22 = OBJC_IVAR___WFSessionKitAssertion_additionalResultHandlers;
  swift_beginAccess();
  v23 = *(v3 + v22);
  v24 = MEMORY[0x1E69E7CC0];
  *(v3 + v22) = MEMORY[0x1E69E7CC0];

  v25 = OBJC_IVAR___WFSessionKitAssertion_additionalFailureHandlers;
  swift_beginAccess();
  v26 = *(v3 + v25);
  *(v3 + v25) = v24;

  v27 = OBJC_IVAR___WFSessionKitAssertion_cancellables;
  swift_beginAccess();
  v28 = *(v3 + v27);
  if ((v28 & 0xC000000000000001) != 0)
  {
    if (v28 < 0)
    {
      v29 = *(v3 + v27);
    }

    v30 = *(v3 + v27);
    sub_1CA94C218();
    sub_1CA94D2F8();
    sub_1CA949FB8();
    sub_1CA51BB40(&unk_1EC4448B0, 255, MEMORY[0x1E695BF10]);
    result = sub_1CA94C948();
    v28 = v49[0];
    v32 = v49[1];
    v33 = v49[2];
    v34 = v49[3];
    v35 = v49[4];
  }

  else
  {
    v36 = -1 << *(v28 + 32);
    v32 = v28 + 56;
    v33 = ~v36;
    v37 = -v36;
    if (v37 < 64)
    {
      v38 = ~(-1 << v37);
    }

    else
    {
      v38 = -1;
    }

    v35 = v38 & *(v28 + 56);
    v39 = *(v3 + v27);
    result = sub_1CA94C218();
    v34 = 0;
  }

  v48[0] = v33;
  v40 = (v33 + 64) >> 6;
  if (v28 < 0)
  {
    goto LABEL_18;
  }

  while (1)
  {
    v41 = v34;
    v42 = v35;
    v43 = v34;
    if (!v35)
    {
      break;
    }

LABEL_16:
    v44 = (v42 - 1) & v42;
    v45 = *(*(v28 + 48) + ((v43 << 9) | (8 * __clz(__rbit64(v42)))));

    if (!v45)
    {
LABEL_22:
      sub_1CA28A224();
      v47 = *(v3 + v27);
      *(v3 + v27) = MEMORY[0x1E69E7CD0];
    }

    while (1)
    {
      sub_1CA949FA8();

      v34 = v43;
      v35 = v44;
      if ((v28 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_18:
      v46 = sub_1CA94D358();
      if (v46)
      {
        v48[1] = v46;
        sub_1CA949FB8();
        swift_dynamicCast();
        v43 = v34;
        v44 = v35;
        if (v48[2])
        {
          continue;
        }
      }

      goto LABEL_22;
    }
  }

  while (1)
  {
    v43 = v41 + 1;
    if (__OFADD__(v41, 1))
    {
      break;
    }

    if (v43 >= v40)
    {
      goto LABEL_22;
    }

    v42 = *(v32 + 8 * v43);
    ++v41;
    if (v42)
    {
      goto LABEL_16;
    }
  }

  __break(1u);
  return result;
}

uint64_t SessionKitAssertion.toAnyCancellable()()
{
  swift_getObjectType();
  v1 = sub_1CA949FB8();
  v2 = *(v1 + 48);
  v3 = *(v1 + 52);
  swift_allocObject();
  sub_1CA51BB40(&qword_1EC4461F8, v4, type metadata accessor for SessionKitAssertion);
  v5 = v0;
  return sub_1CA949FC8();
}

uint64_t sub_1CA51DCD4(int a1, void *a2, uint64_t a3)
{
  LODWORD(v5) = a1;
  v6 = sub_1CA949F78();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *MEMORY[0x1E69E10C8];
  sub_1CA949C58();
  v12 = a2;
  v13 = sub_1CA949F68();
  v14 = sub_1CA94CC38();

  v15 = &unk_1EC446000;
  if (os_log_type_enabled(v13, v14))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v38 = v5;
    v36 = v17;
    v42 = v17;
    *v16 = 136315138;
    v37 = v6;
    v18 = OBJC_IVAR___WFSessionKitAssertion_additionalResultHandlers;
    swift_beginAccess();
    v5 = *&v12[v18];
    sub_1CA94C218();
    v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC446278, &qword_1CA98AB50);
    v20 = MEMORY[0x1CCAA14D0](v5, v19);
    v21 = v7;
    v23 = v22;

    v24 = sub_1CA26B54C(v20, v23, &v42);

    *(v16 + 4) = v24;
    _os_log_impl(&dword_1CA256000, v13, v14, "Calling additional result handler: %s", v16, 0xCu);
    v25 = v36;
    __swift_destroy_boxed_opaque_existential_0(v36);
    LOBYTE(v5) = v38;
    MEMORY[0x1CCAA4BF0](v25, -1, -1);
    MEMORY[0x1CCAA4BF0](v16, -1, -1);

    (*(v21 + 8))(v10, v37);
    v15 = &unk_1EC446000;
  }

  else
  {

    (*(v7 + 8))(v10, v6);
  }

  v26 = v15[58];
  swift_beginAccess();
  v27 = *&v12[v26];
  v28 = *(v27 + 16);
  if (v28)
  {
    sub_1CA94C218();
    v29 = (v27 + 40);
    do
    {
      v31 = *(v29 - 1);
      v30 = *v29;
      v41 = a3;
      v40 = v5 & 1;
      v39[0] = j_nullsub_1;
      v39[1] = 0;

      v31(&v41, &v40, v39);

      v29 += 2;
      --v28;
    }

    while (v28);
  }

  if (v5)
  {
    v32 = 0x7361206E656B6174;
  }

  else
  {
    v32 = 0xD000000000000011;
  }

  if (v5)
  {
    v33 = 0xEF6E6F6974726573;
  }

  else
  {
    v33 = 0x80000001CA9C7E80;
  }

  sub_1CA51D788(v32, v33);
}

id SessionKitAssertion.__deallocating_deinit()
{
  ObjectType = swift_getObjectType();
  if (v0[OBJC_IVAR___WFSessionKitAssertion_state] == 5)
  {
    SessionKitAssertion.cancel()();
  }

  else
  {
    sub_1CA51D788(0xD000000000000014, 0x80000001CA9C7D20);
  }

  v3.receiver = v0;
  v3.super_class = ObjectType;
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

id SessionKitAssertion.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

void sub_1CA51E210(uint64_t a1, void (**a2)(void, void))
{
  v4 = swift_allocObject();
  *(v4 + 16) = a2;
  if ((*(a1 + OBJC_IVAR___WFSessionKitAssertion_state) & 0xFE) == 4)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = sub_1CA51ED14;
    *(v5 + 24) = v4;
    v6 = OBJC_IVAR___WFSessionKitAssertion_additionalResultHandlers;
    swift_beginAccess();
    _Block_copy(a2);

    sub_1CA69AE70();
    v7 = *(*(a1 + v6) + 16);
    sub_1CA69B084(v7);
    v8 = *(a1 + v6);
    *(v8 + 16) = v7 + 1;
    v9 = v8 + 16 * v7;
    *(v9 + 32) = sub_1CA51F0FC;
    *(v9 + 40) = v5;
    *(a1 + v6) = v8;
    swift_endAccess();
    v10 = swift_allocObject();
    *(v10 + 16) = sub_1CA51ED14;
    *(v10 + 24) = v4;
    v11 = OBJC_IVAR___WFSessionKitAssertion_additionalFailureHandlers;
    swift_beginAccess();

    sub_1CA69AE58();
    v12 = *(*(a1 + v11) + 16);
    sub_1CA69B06C(v12);
    v13 = *(a1 + v11);
    *(v13 + 16) = v12 + 1;
    v14 = v13 + 16 * v12;
    *(v14 + 32) = sub_1CA51F0F8;
    *(v14 + 40) = v10;
    *(a1 + v11) = v13;
    swift_endAccess();

    _Block_release(a2);
  }

  else
  {
    _Block_copy(a2);
    a2[2](a2, 0);

    _Block_release(a2);
  }
}

uint64_t SessionKitAssertion.addCompletionHandlerIfRunning(_:)(uint64_t (*a1)(void), uint64_t a2)
{
  if ((*(v2 + OBJC_IVAR___WFSessionKitAssertion_state) & 0xFE) != 4)
  {
    return a1(0);
  }

  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  v6 = OBJC_IVAR___WFSessionKitAssertion_additionalResultHandlers;
  OUTLINED_FUNCTION_28();

  sub_1CA69AE70();
  v7 = *(*(v2 + v6) + 16);
  sub_1CA69B084(v7);
  v8 = *(v2 + v6);
  *(v8 + 16) = v7 + 1;
  v9 = v8 + 16 * v7;
  *(v9 + 32) = sub_1CA51E99C;
  *(v9 + 40) = v5;
  *(v2 + v6) = v8;
  swift_endAccess();
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = a2;
  v11 = OBJC_IVAR___WFSessionKitAssertion_additionalFailureHandlers;
  OUTLINED_FUNCTION_28();

  sub_1CA69AE58();
  v12 = *(*(v2 + v11) + 16);
  sub_1CA69B06C(v12);
  v13 = *(v2 + v11);
  *(v13 + 16) = v12 + 1;
  v14 = v13 + 16 * v12;
  *(v14 + 32) = sub_1CA51E9A0;
  *(v14 + 40) = v10;
  *(v2 + v11) = v13;
  return swift_endAccess();
}

id sub_1CA51E600(void *a1, uint64_t a2, uint64_t a3, double a4)
{
  v10[4] = a2;
  v10[5] = a3;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 1107296256;
  v10[2] = sub_1CA4DCA30;
  v10[3] = &block_descriptor_72;
  v7 = _Block_copy(v10);
  v8 = [v4 initWithInterval:a1 queue:v7 handler:a4];

  _Block_release(v7);

  return v8;
}

id sub_1CA51E6C8(uint64_t a1, uint64_t a2, void *a3, char a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v12 = sub_1CA94C368();

  if (a5)
  {
    v16[4] = a5;
    v16[5] = a6;
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 1107296256;
    v16[2] = sub_1CA51F128;
    v16[3] = &block_descriptor_82;
    v13 = _Block_copy(v16);
  }

  else
  {
    v13 = 0;
  }

  v14 = [v7 initWithExplanation:v12 target:a3 invalidateOnSessionRequest:a4 & 1 invalidationHandler:v13];
  _Block_release(v13);

  return v14;
}

id sub_1CA51E7CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = sub_1CA94C368();

  v10 = sub_1CA94C368();

  if (a5)
  {
    v14[4] = a5;
    v14[5] = a6;
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 1107296256;
    v14[2] = sub_1CA51F128;
    v14[3] = &block_descriptor_95;
    v11 = _Block_copy(v14);
  }

  else
  {
    v11 = 0;
  }

  v12 = [v6 initWithExplanation:v9 sessionIdentifier:v10 invalidationHandler:v11];
  _Block_release(v11);

  return v12;
}

void sub_1CA51E8E0(uint64_t a1, void *a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v8 = a2;
  v7 = a3;
  v6(v8, a3);
}

uint64_t sub_1CA51E9A0()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1(0);
}

unint64_t sub_1CA51E9D0()
{
  result = qword_1EC446200;
  if (!qword_1EC446200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC446200);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for SessionKitAssertion.AcquisitionError(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

unsigned __int8 *getEnumTagSinglePayload for SessionKitAssertion.State(unsigned __int8 *result, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
LABEL_18:
    v6 = *result;
    if (v6 >= 4)
    {
      v7 = v6 - 3;
    }

    else
    {
      v7 = 0;
    }

    if (v7 >= 3)
    {
      return (v7 - 2);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v2 = a2 + 5;
    if (a2 + 5 >= 0xFFFF00)
    {
      v3 = 4;
    }

    else
    {
      v3 = 2;
    }

    if (v2 >> 8 < 0xFF)
    {
      v3 = 1;
    }

    if (v2 >= 0x100)
    {
      v4 = v3;
    }

    else
    {
      v4 = 0;
    }

    switch(v4)
    {
      case 1:
        v5 = result[1];
        if (!result[1])
        {
          goto LABEL_18;
        }

        goto LABEL_16;
      case 2:
        v5 = *(result + 1);
        if (!*(result + 1))
        {
          goto LABEL_18;
        }

        goto LABEL_16;
      case 3:
        __break(1u);
        return result;
      case 4:
        v5 = *(result + 1);
        if (!v5)
        {
          goto LABEL_18;
        }

LABEL_16:
        result = ((*result | (v5 << 8)) - 5);
        break;
      default:
        goto LABEL_18;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for SessionKitAssertion.State(_BYTE *result, unsigned int a2, unsigned int a3)
{
  v3 = a3 + 5;
  if (a3 + 5 >= 0xFFFF00)
  {
    v4 = 4;
  }

  else
  {
    v4 = 2;
  }

  if (v3 >> 8 < 0xFF)
  {
    v4 = 1;
  }

  if (v3 >= 0x100)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a3 >= 0xFB)
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  if (a2 > 0xFA)
  {
    v7 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
    switch(v6)
    {
      case 1:
        result[1] = v7;
        break;
      case 2:
        *(result + 1) = v7;
        break;
      case 3:
LABEL_25:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v7;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v6)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_20;
      case 2:
        *(result + 1) = 0;
        goto LABEL_19;
      case 3:
        goto LABEL_25;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_20;
      default:
LABEL_19:
        if (a2)
        {
LABEL_20:
          *result = a2 + 5;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1CA51ECE0(unsigned __int8 *a1)
{
  v1 = *a1;
  if (v1 >= 4)
  {
    return v1 - 3;
  }

  else
  {
    return 0;
  }
}

_BYTE *sub_1CA51ECF4(_BYTE *result, int a2)
{
  if (a2)
  {
    *result = a2 + 3;
  }

  return result;
}

uint64_t sub_1CA51ED1C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(v3 + 16);
  v5 = *(v3 + 24);
  v7 = *a3;
  v6 = *(a3 + 8);
  v8 = v4(0);
  return v7(v8);
}

uint64_t block_copy_helper_19(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1CA51ED98(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v5 = a1;
  return v2(&v5);
}

uint64_t sub_1CA51EDD0(void *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return v2(*a1);
}

uint64_t sub_1CA51EE0C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t objectdestroy_74Tm_0()
{
  v1 = *(v0 + 24);

  v2 = OUTLINED_FUNCTION_13_1();

  return MEMORY[0x1EEE6BDD0](v2, v3, v4);
}

void sub_1CA51EE7C()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  sub_1CA51CA44();
}

unint64_t sub_1CA51EEA4()
{
  result = qword_1EC446288;
  if (!qword_1EC446288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC446288);
  }

  return result;
}

uint64_t sub_1CA51EF00(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

_BYTE *storeEnumTagSinglePayload for SessionKitAssertion.Result(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1CA51F088()
{
  result = qword_1EC446290;
  if (!qword_1EC446290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC446290);
  }

  return result;
}

id sub_1CA51F164()
{
  v271 = sub_1CA25B3D0(0, &qword_1EC4419A0, off_1E836DD08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B0, &qword_1CA981320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA981450;
  v1 = MEMORY[0x1E69E6158];
  *(inited + 32) = @"ActionClass";
  *(inited + 40) = 0xD000000000000016;
  *(inited + 48) = 0x80000001CA9C7FF0;
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
  v285 = (v12 + 15) & 0xFFFFFFFFFFFFFFF0;
  v286 = v12;
  v13 = &v267 - v285;
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v287 = qword_1EDB9F690;
  v14 = [qword_1EDB9F690 bundleURL];
  v15 = sub_1CA948BA8();
  v283 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v284 = (v16 + 15) & 0xFFFFFFFFFFFFFFF0;
  v17 = &v267 - v284;
  sub_1CA948B68();

  v18 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v19 = sub_1CA2F9F14(v4, v6, v7, v9, 0, 0, v13, v17);
  v20 = sub_1CA25B3D0(0, &qword_1EDB9F6E0, 0x1E696B100);
  v282 = v20;
  *(inited + 80) = v19;
  *(inited + 104) = v20;
  *(inited + 112) = @"Description";
  v281 = sub_1CA25B3D0(0, &unk_1EC441790, off_1E836DD18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D0, &qword_1CA981390);
  v21 = swift_initStackObject();
  *(v21 + 16) = xmmword_1CA9813C0;
  *(v21 + 32) = @"DescriptionInput";
  v22 = @"Description";
  v23 = @"DescriptionInput";
  v278 = sub_1CA94C438();
  *&v277 = v24;
  v25 = sub_1CA94C438();
  v27 = v26;
  v279 = &v267;
  MEMORY[0x1EEE9AC00](v25);
  v28 = &v267 - v285;
  sub_1CA948D98();
  v29 = v287;
  v30 = [v287 bundleURL];
  MEMORY[0x1EEE9AC00](v30);
  v280 = inited;
  v31 = v284;
  sub_1CA948B68();

  v32 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v21 + 40) = sub_1CA2F9F14(v278, v277, v25, v27, 0, 0, v28, &v267 - v31);
  *(v21 + 64) = v282;
  *(v21 + 72) = @"DescriptionNote";
  v33 = @"DescriptionNote";
  v278 = sub_1CA94C438();
  *&v277 = v34;
  v276 = sub_1CA94C438();
  v36 = v35;
  v279 = &v267;
  MEMORY[0x1EEE9AC00](v276);
  v37 = &v267 - v285;
  sub_1CA948D98();
  v38 = [v29 bundleURL];
  MEMORY[0x1EEE9AC00](v38);
  sub_1CA948B68();

  v39 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v21 + 80) = sub_1CA2F9F14(v278, v277, v276, v36, 0, 0, v37, &v267 - v31);
  v40 = v282;
  *(v21 + 104) = v282;
  *(v21 + 112) = @"DescriptionSummary";
  v41 = @"DescriptionSummary";
  v278 = sub_1CA94C438();
  *&v277 = v42;
  v43 = sub_1CA94C438();
  v45 = v44;
  v279 = &v267;
  MEMORY[0x1EEE9AC00](v43);
  v46 = &v267 - v285;
  sub_1CA948D98();
  v47 = [v287 bundleURL];
  MEMORY[0x1EEE9AC00](v47);
  v48 = &v267 - v284;
  sub_1CA948B68();

  v49 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v50 = sub_1CA2F9F14(v278, v277, v43, v45, 0, 0, v46, v48);
  *(v21 + 144) = v40;
  *(v21 + 120) = v50;
  type metadata accessor for DescriptionKey(0);
  sub_1CA29CF44(&qword_1EC441830, type metadata accessor for DescriptionKey);
  sub_1CA94C1E8();
  v51 = v281;
  v52 = sub_1CA6B3784();
  v53 = v280;
  *(v280 + 15) = v52;
  *(v53 + 18) = v51;
  *(v53 + 19) = @"IconColor";
  *(v53 + 20) = 1953392980;
  *(v53 + 21) = 0xE400000000000000;
  v54 = MEMORY[0x1E69E6158];
  *(v53 + 23) = MEMORY[0x1E69E6158];
  *(v53 + 24) = @"IconSymbol";
  strcpy(v53 + 200, "document.fill");
  *(v53 + 107) = -4864;
  *(v53 + 28) = v54;
  *(v53 + 29) = @"IconSymbolColor";
  *(v53 + 30) = 1702194242;
  *(v53 + 31) = 0xE400000000000000;
  *(v53 + 33) = v54;
  *(v53 + 34) = @"Input";
  v55 = v53;
  v278 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445FB0, &qword_1CA97EE10);
  v56 = swift_initStackObject();
  v277 = xmmword_1CA981350;
  *(v56 + 16) = xmmword_1CA981350;
  *(v56 + 32) = 0x656C7069746C754DLL;
  *(v56 + 40) = 0xE800000000000000;
  v57 = MEMORY[0x1E69E6370];
  *(v56 + 48) = 1;
  *(v56 + 72) = v57;
  strcpy((v56 + 80), "ParameterKey");
  *(v56 + 93) = 0;
  *(v56 + 94) = -5120;
  *(v56 + 96) = 0x6953656C69464657;
  *(v56 + 104) = 0xEA0000000000657ALL;
  *(v56 + 120) = v54;
  *(v56 + 128) = 0x6465726975716552;
  *(v56 + 136) = 0xE800000000000000;
  *(v56 + 144) = 1;
  *(v56 + 168) = v57;
  *(v56 + 176) = 0x7365707954;
  v58 = v57;
  *(v56 + 184) = 0xE500000000000000;
  v281 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
  *(v56 + 216) = v281;
  *(v56 + 192) = &unk_1F4A02ED8;
  v59 = @"IconColor";
  v60 = @"IconSymbol";
  v61 = @"IconSymbolColor";
  v62 = @"Input";
  v63 = sub_1CA94C1E8();
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC447DE0, &qword_1CA9917E0);
  v279 = v64;
  *(v55 + 35) = v63;
  *(v55 + 38) = v64;
  *(v55 + 39) = @"LocallyProcessesData";
  v55[320] = 1;
  *(v55 + 43) = v58;
  *(v55 + 44) = @"Name";
  v65 = @"LocallyProcessesData";
  v66 = @"Name";
  v67 = sub_1CA94C438();
  v69 = v68;
  v70 = sub_1CA94C438();
  v72 = v71;
  v276 = &v267;
  MEMORY[0x1EEE9AC00](v70);
  v73 = v285;
  sub_1CA948D98();
  v74 = [v287 bundleURL];
  MEMORY[0x1EEE9AC00](v74);
  v75 = &v267 - v284;
  sub_1CA948B68();

  v76 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v77 = sub_1CA2F9F14(v67, v69, v70, v72, 0, 0, &v267 - v73, v75);
  v78 = v280;
  *(v280 + 45) = v77;
  v79 = v282;
  *(v78 + 48) = v282;
  *(v78 + 49) = @"Output";
  v80 = swift_allocObject();
  *(v80 + 16) = v277;
  *(v80 + 32) = 0x75736F6C63736944;
  *(v80 + 40) = 0xEF6C6576654C6572;
  *(v80 + 48) = 0x63696C627550;
  *(v80 + 56) = 0xE600000000000000;
  *(v80 + 72) = MEMORY[0x1E69E6158];
  *(v80 + 80) = 0x656C7069746C754DLL;
  *(v80 + 88) = 0xE800000000000000;
  *(v80 + 96) = 1;
  *(v80 + 120) = MEMORY[0x1E69E6370];
  *(v80 + 128) = 0x614E74757074754FLL;
  *(v80 + 136) = 0xEA0000000000656DLL;
  v81 = @"Output";
  v82 = sub_1CA94C438();
  v276 = v83;
  v84 = sub_1CA94C438();
  v86 = v85;
  v278 = &v267;
  MEMORY[0x1EEE9AC00](v84);
  sub_1CA948D98();
  v87 = [v287 bundleURL];
  MEMORY[0x1EEE9AC00](v87);
  v88 = &v267 - v284;
  sub_1CA948B68();

  v89 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v80 + 144) = sub_1CA2F9F14(v82, v276, v84, v86, 0, 0, &v267 - v73, v88);
  *(v80 + 168) = v79;
  *(v80 + 176) = 0x7365707954;
  v90 = v281;
  *(v80 + 216) = v281;
  *(v80 + 184) = 0xE500000000000000;
  *(v80 + 192) = &unk_1F4A02F18;
  v91 = MEMORY[0x1E69E6158];
  v92 = sub_1CA94C1E8();
  v93 = v280;
  *(v280 + 50) = v92;
  *(v93 + 53) = v279;
  *(v93 + 54) = @"Parameters";
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443910, &unk_1CA981A00);
  v279 = swift_allocObject();
  *(v279 + 1) = xmmword_1CA981470;
  v278 = sub_1CA25B3D0(0, &qword_1EDB9F710, off_1E836EDC0);
  v276 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443D80, &unk_1CA981BA0);
  v94 = swift_allocObject();
  v269 = v94;
  *(v94 + 16) = xmmword_1CA981380;
  *(v94 + 32) = @"Class";
  *(v94 + 40) = 0xD000000000000016;
  *(v94 + 48) = 0x80000001CA99C4A0;
  *(v94 + 64) = v91;
  *(v94 + 72) = @"DefaultValue";
  *(v94 + 80) = 0x6974616D6F747541;
  *(v94 + 88) = 0xE900000000000063;
  *(v94 + 104) = v91;
  *(v94 + 112) = @"Items";
  *(v94 + 120) = &unk_1F4A02F48;
  *(v94 + 144) = v90;
  *(v94 + 152) = @"ItemDisplayNames";
  v281 = swift_allocObject();
  *(v281 + 1) = xmmword_1CA983CF0;
  v95 = @"Class";
  v96 = @"DefaultValue";
  v275 = v95;
  v270 = v96;
  v97 = @"Parameters";
  v98 = @"Items";
  v99 = @"ItemDisplayNames";
  v100 = sub_1CA94C438();
  v272 = v101;
  v273 = v100;
  v268 = sub_1CA94C438();
  v103 = v102;
  v274 = &v267;
  MEMORY[0x1EEE9AC00](v268);
  v104 = v285;
  sub_1CA948D98();
  v105 = v287;
  v106 = [v287 bundleURL];
  MEMORY[0x1EEE9AC00](v106);
  v107 = &v267 - v284;
  sub_1CA948B68();

  v108 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v109 = sub_1CA2F9F14(v273, v272, v268, v103, 0, 0, &v267 - v104, v107);
  v281[4] = v109;
  v110 = sub_1CA94C438();
  v272 = v111;
  v273 = v110;
  v112 = sub_1CA94C438();
  v114 = v113;
  v274 = &v267;
  MEMORY[0x1EEE9AC00](v112);
  sub_1CA948D98();
  v115 = [v105 bundleURL];
  MEMORY[0x1EEE9AC00](v115);
  v116 = v284;
  sub_1CA948B68();

  v117 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v118 = sub_1CA2F9F14(v273, v272, v112, v114, 0, 0, &v267 - v104, &v267 - v116);
  v119 = v281;
  v281[5] = v118;
  v120 = sub_1CA94C438();
  v272 = v121;
  v273 = v120;
  v268 = sub_1CA94C438();
  v123 = v122;
  v274 = &v267;
  MEMORY[0x1EEE9AC00](v268);
  v124 = &v267 - v285;
  sub_1CA948D98();
  v125 = v287;
  v126 = [v287 bundleURL];
  MEMORY[0x1EEE9AC00](v126);
  sub_1CA948B68();

  v127 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v119[6] = sub_1CA2F9F14(v273, v272, v268, v123, 0, 0, v124, &v267 - v116);
  v128 = sub_1CA94C438();
  v272 = v129;
  v273 = v128;
  v130 = sub_1CA94C438();
  v132 = v131;
  v274 = &v267;
  MEMORY[0x1EEE9AC00](v130);
  v133 = &v267 - v285;
  sub_1CA948D98();
  v134 = [v125 bundleURL];
  MEMORY[0x1EEE9AC00](v134);
  v135 = v284;
  sub_1CA948B68();

  v136 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v137 = sub_1CA2F9F14(v273, v272, v130, v132, 0, 0, v133, &v267 - v135);
  v138 = v281;
  v281[7] = v137;
  v139 = sub_1CA94C438();
  v272 = v140;
  v273 = v139;
  v268 = sub_1CA94C438();
  v142 = v141;
  v274 = &v267;
  MEMORY[0x1EEE9AC00](v268);
  v143 = v285;
  sub_1CA948D98();
  v144 = [v287 bundleURL];
  MEMORY[0x1EEE9AC00](v144);
  sub_1CA948B68();

  v145 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v138[8] = sub_1CA2F9F14(v273, v272, v268, v142, 0, 0, &v267 - v143, &v267 - v135);
  v146 = sub_1CA94C438();
  v272 = v147;
  v273 = v146;
  v148 = sub_1CA94C438();
  v150 = v149;
  v274 = &v267;
  MEMORY[0x1EEE9AC00](v148);
  v151 = &v267 - v143;
  sub_1CA948D98();
  v152 = [v287 bundleURL];
  MEMORY[0x1EEE9AC00](v152);
  v153 = v284;
  sub_1CA948B68();

  v154 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v155 = sub_1CA2F9F14(v273, v272, v148, v150, 0, 0, v151, &v267 - v153);
  v156 = v281;
  v281[9] = v155;
  v157 = sub_1CA94C438();
  v272 = v158;
  v273 = v157;
  v268 = sub_1CA94C438();
  v160 = v159;
  v274 = &v267;
  MEMORY[0x1EEE9AC00](v268);
  v161 = v285;
  sub_1CA948D98();
  v162 = [v287 bundleURL];
  MEMORY[0x1EEE9AC00](v162);
  sub_1CA948B68();

  v163 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v156[10] = sub_1CA2F9F14(v273, v272, v268, v160, 0, 0, &v267 - v161, &v267 - v153);
  v164 = sub_1CA94C438();
  v273 = v165;
  v166 = sub_1CA94C438();
  v168 = v167;
  v274 = &v267;
  MEMORY[0x1EEE9AC00](v166);
  v169 = &v267 - v161;
  sub_1CA948D98();
  v170 = v287;
  v171 = [v287 bundleURL];
  MEMORY[0x1EEE9AC00](v171);
  v172 = &v267 - v284;
  sub_1CA948B68();

  v173 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v174 = sub_1CA2F9F14(v164, v273, v166, v168, 0, 0, v169, v172);
  v175 = v281;
  v281[11] = v174;
  v176 = sub_1CA94C438();
  v272 = v177;
  v273 = v176;
  v268 = sub_1CA94C438();
  v179 = v178;
  v274 = &v267;
  MEMORY[0x1EEE9AC00](v268);
  v180 = v285;
  sub_1CA948D98();
  v181 = [v170 bundleURL];
  MEMORY[0x1EEE9AC00](v181);
  v182 = v284;
  sub_1CA948B68();

  v183 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v175[12] = sub_1CA2F9F14(v273, v272, v268, v179, 0, 0, &v267 - v180, &v267 - v182);
  v184 = sub_1CA94C438();
  v272 = v185;
  v273 = v184;
  v186 = sub_1CA94C438();
  v188 = v187;
  v274 = &v267;
  MEMORY[0x1EEE9AC00](v186);
  sub_1CA948D98();
  v189 = [v287 bundleURL];
  MEMORY[0x1EEE9AC00](v189);
  sub_1CA948B68();

  v190 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v191 = sub_1CA2F9F14(v273, v272, v186, v188, 0, 0, &v267 - v180, &v267 - v182);
  v192 = v281;
  v281[13] = v191;
  v193 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443830, &qword_1CA981580);
  v194 = v269;
  v269[20] = v192;
  v194[23] = v193;
  v194[24] = @"Key";
  v194[25] = 0xD000000000000010;
  v194[26] = 0x80000001CA997FF0;
  v194[28] = MEMORY[0x1E69E6158];
  v194[29] = @"Label";
  v195 = @"Key";
  v196 = @"Label";
  v197 = v195;
  v198 = v196;
  v273 = v197;
  v272 = v198;
  v199 = sub_1CA94C438();
  v201 = v200;
  v202 = sub_1CA94C438();
  v204 = v203;
  v281 = &v267;
  MEMORY[0x1EEE9AC00](v202);
  v205 = &v267 - v285;
  sub_1CA948D98();
  v206 = [v287 bundleURL];
  MEMORY[0x1EEE9AC00](v206);
  v207 = &v267 - v284;
  sub_1CA948B68();

  v208 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v209 = sub_1CA2F9F14(v199, v201, v202, v204, 0, 0, v205, v207);
  v194[33] = v282;
  v194[30] = v209;
  _s3__C3KeyVMa_0(0);
  v281 = v210;
  v274 = sub_1CA29CF44(&qword_1EDB9F780, _s3__C3KeyVMa_0);
  sub_1CA94C1E8();
  v279[4] = sub_1CA2F864C();
  v211 = swift_allocObject();
  *(v211 + 16) = xmmword_1CA981370;
  *(v211 + 32) = v275;
  *(v211 + 40) = 0xD000000000000011;
  *(v211 + 48) = 0x80000001CA99E620;
  v212 = MEMORY[0x1E69E6158];
  v213 = v270;
  *(v211 + 64) = MEMORY[0x1E69E6158];
  *(v211 + 72) = v213;
  *(v211 + 80) = 1;
  v214 = v273;
  *(v211 + 104) = MEMORY[0x1E69E6370];
  *(v211 + 112) = v214;
  *(v211 + 120) = 0xD000000000000016;
  *(v211 + 128) = 0x80000001CA9C81D0;
  v215 = v272;
  *(v211 + 144) = v212;
  *(v211 + 152) = v215;
  v216 = sub_1CA94C438();
  v218 = v217;
  v219 = sub_1CA94C438();
  v221 = v220;
  v270 = &v267;
  MEMORY[0x1EEE9AC00](v219);
  v222 = &v267 - v285;
  sub_1CA948D98();
  v223 = [v287 bundleURL];
  MEMORY[0x1EEE9AC00](v223);
  v224 = &v267 - v284;
  sub_1CA948B68();

  v225 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v211 + 160) = sub_1CA2F9F14(v216, v218, v219, v221, 0, 0, v222, v224);
  *(v211 + 184) = v282;
  *(v211 + 192) = @"RequiredResources";
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437F0, &qword_1CA981430);
  v226 = swift_allocObject();
  *(v226 + 16) = xmmword_1CA981310;
  v227 = @"RequiredResources";
  v228 = MEMORY[0x1E69E6158];
  *(v226 + 32) = sub_1CA94C1E8();
  *(v211 + 224) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437F8, &qword_1CA981438);
  *(v211 + 200) = v226;
  sub_1CA94C1E8();
  v279[5] = sub_1CA2F864C();
  v229 = swift_allocObject();
  *(v229 + 16) = v277;
  *(v229 + 32) = v275;
  *(v229 + 40) = 0xD000000000000016;
  *(v229 + 48) = 0x80000001CA99C180;
  v230 = v273;
  *(v229 + 64) = v228;
  *(v229 + 72) = v230;
  *(v229 + 80) = 0x6953656C69464657;
  *(v229 + 88) = 0xEA0000000000657ALL;
  v231 = v272;
  *(v229 + 104) = v228;
  *(v229 + 112) = v231;
  v232 = sub_1CA94C438();
  v275 = v233;
  v276 = v232;
  v234 = sub_1CA94C438();
  v273 = v235;
  *&v277 = &v267;
  MEMORY[0x1EEE9AC00](v234);
  v236 = &v267 - v285;
  sub_1CA948D98();
  v237 = v287;
  v238 = [v287 bundleURL];
  v272 = &v267;
  MEMORY[0x1EEE9AC00](v238);
  v239 = v284;
  sub_1CA948B68();

  v240 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v229 + 120) = sub_1CA2F9F14(v276, v275, v234, v273, 0, 0, v236, &v267 - v239);
  *(v229 + 144) = v282;
  *(v229 + 152) = @"Placeholder";
  v241 = @"Placeholder";
  v242 = sub_1CA94C438();
  v275 = v243;
  v276 = v242;
  v244 = sub_1CA94C438();
  v273 = v245;
  *&v277 = &v267;
  MEMORY[0x1EEE9AC00](v244);
  v246 = v285;
  sub_1CA948D98();
  v247 = [v237 bundleURL];
  MEMORY[0x1EEE9AC00](v247);
  sub_1CA948B68();

  v248 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v249 = sub_1CA2F9F14(v276, v275, v244, v273, 0, 0, &v267 - v246, &v267 - v239);
  *(v229 + 184) = v282;
  *(v229 + 160) = v249;
  sub_1CA94C1E8();
  v250 = sub_1CA2F864C();
  v251 = v279;
  v279[6] = v250;
  v252 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D8, &qword_1CA981398);
  v253 = v280;
  *(v280 + 55) = v251;
  *(v253 + 58) = v252;
  *(v253 + 59) = @"ParameterSummary";
  v254 = @"ParameterSummary";
  v255 = sub_1CA94C438();
  v257 = v256;
  v258 = sub_1CA94C438();
  v260 = v259;
  v282 = &v267;
  MEMORY[0x1EEE9AC00](v258);
  sub_1CA948D98();
  v261 = [v287 bundleURL];
  MEMORY[0x1EEE9AC00](v261);
  v262 = &v267 - v284;
  sub_1CA948B68();

  v263 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v264 = sub_1CA2F9F14(v255, v257, v258, v260, 0, 0, &v267 - v246, v262);
  v265 = [objc_allocWithZone(WFActionParameterSummary) initWithString_];

  *(v253 + 63) = sub_1CA25B3D0(0, &unk_1EC441800, off_1E836DD60);
  *(v253 + 60) = v265;
  type metadata accessor for Key(0);
  sub_1CA29CF44(&qword_1EDB9FB10, type metadata accessor for Key);
  sub_1CA94C1E8();
  return sub_1CA332510();
}

id sub_1CA5211A4()
{
  v36[1] = sub_1CA25B3D0(0, &qword_1EC4419A0, off_1E836DD08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B0, &qword_1CA981320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA9813E0;
  v1 = MEMORY[0x1E69E6158];
  *(inited + 32) = @"ActionClass";
  *(inited + 40) = 0xD00000000000001DLL;
  *(inited + 48) = 0x80000001CA9A1270;
  *(inited + 64) = v1;
  *(inited + 72) = @"AppDefinition";
  v2 = @"ActionClass";
  v3 = @"AppDefinition";
  v4 = sub_1CA94C1E8();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B8, &unk_1CA985870);
  *(inited + 80) = v4;
  *(inited + 104) = v5;
  *(inited + 112) = @"IconColor";
  *(inited + 120) = 1953392980;
  *(inited + 128) = 0xE400000000000000;
  *(inited + 144) = v1;
  *(inited + 152) = @"IconSymbol";
  *(inited + 160) = 0x6C6C69662E726163;
  *(inited + 168) = 0xE800000000000000;
  *(inited + 184) = v1;
  *(inited + 192) = @"IconSymbolColor";
  *(inited + 200) = 0x6E65657247;
  *(inited + 208) = 0xE500000000000000;
  *(inited + 224) = v1;
  *(inited + 232) = @"LocallyProcessesData";
  v6 = MEMORY[0x1E69E6370];
  *(inited + 240) = 1;
  *(inited + 264) = v6;
  *(inited + 272) = @"Name";
  v7 = @"IconColor";
  v8 = @"IconSymbol";
  v9 = @"IconSymbolColor";
  v10 = @"LocallyProcessesData";
  v11 = @"Name";
  v12 = sub_1CA94C438();
  v14 = v13;
  v15 = sub_1CA94C438();
  v17 = v16;
  v18 = sub_1CA948E58();
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v21 = v36 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v22 = [qword_1EDB9F690 bundleURL];
  v23 = sub_1CA948BA8();
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x1EEE9AC00](v23 - 8);
  v26 = v36 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CA948B68();

  v27 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v28 = sub_1CA2F9F14(v12, v14, v15, v17, 0, 0, v21, v26);
  v29 = sub_1CA25B3D0(0, &qword_1EDB9F6E0, 0x1E696B100);
  *(inited + 280) = v28;
  *(inited + 304) = v29;
  *(inited + 312) = @"RequiredResources";
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443910, &unk_1CA981A00);
  v30 = swift_allocObject();
  *(v30 + 16) = xmmword_1CA9813B0;
  v37 = 0;
  v38 = 0;
  v31 = objc_allocWithZone(type metadata accessor for WFDeviceIdiomResource());
  v32 = @"RequiredResources";
  WFDeviceIdiomResource.init(requirement:)(&v37);
  *(v30 + 32) = v33;
  *(inited + 344) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4438B0, &qword_1CA981658);
  *(inited + 320) = v30;
  v34 = sub_1CA94C368();
  *(inited + 384) = MEMORY[0x1E69E6158];
  *(inited + 352) = v34;
  *(inited + 360) = 0xD000000000000016;
  *(inited + 368) = 0x80000001CA997DC0;
  type metadata accessor for Key(0);
  sub_1CA2ECC50();
  sub_1CA94C1E8();
  return sub_1CA332510();
}

uint64_t sub_1CA521618()
{
  sub_1CA9492B8();
  sub_1CA525A3C(&unk_1EC4480F0, MEMORY[0x1EEE78BB8]);
  v0 = 0;
  if ((sub_1CA94CA48() & 1) == 0)
  {
    sub_1CA94CA58();
    sub_1CA525A3C(&unk_1EC4462D0, MEMORY[0x1EEE78BB8]);
    sub_1CA94C2D8();
    v1 = sub_1CA94CB28();
    v0 = *v2;
    v1(v4, 0);
  }

  return v0;
}

uint64_t WFWorkflowActionTree.MoveParameters.validDestinations.getter()
{
  v0 = sub_1CA9491F8();
  OUTLINED_FUNCTION_52(v0);
  v2 = *(v1 + 16);
  v3 = OUTLINED_FUNCTION_23();

  return v4(v3);
}

uint64_t WFWorkflowActionTree.MoveParameters.involvedActions.getter()
{
  v1 = (v0 + *(type metadata accessor for WFWorkflowActionTree.MoveParameters() + 20));
  v3 = *v1;
  v2 = v1[1];
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  if ((v1[5] & 1) == 0)
  {
    v15 = sub_1CA94C218();
    v9 = sub_1CA6A71A4(v15);
    v16 = OUTLINED_FUNCTION_8_22();
    sub_1CA521974(v16, v17, v18, v19, v20, 0);
    return v9;
  }

  v7 = *(v4 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443910, &unk_1CA981A00);
  result = swift_allocObject();
  v9 = result;
  *(result + 16) = xmmword_1CA9813B0;
  if (v6 == v7)
  {
    *(result + 32) = v5;
    v10 = OUTLINED_FUNCTION_8_22();
    sub_1CA521910(v10, v11, v12, v13, v14, 1);
LABEL_7:

    return v9;
  }

  if (v6 < v7)
  {
    v21 = *(_s17ControlFlowBranchVMa(0) - 8);
    v22 = *(v4 + ((*(v21 + 80) + 32) & ~*(v21 + 80)) + *(v21 + 72) * v6);
    *(v9 + 32) = v22;
    v23 = OUTLINED_FUNCTION_8_22();
    sub_1CA521910(v23, v24, v25, v26, v27, 1);
    v28 = v22;

    goto LABEL_7;
  }

  __break(1u);
  return result;
}

uint64_t type metadata accessor for WFWorkflowActionTree.MoveParameters()
{
  result = qword_1EC4462C0;
  if (!qword_1EC4462C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id sub_1CA521910(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, char a6)
{
  if (a6)
  {
    sub_1CA94C218();
    sub_1CA94C218();

    return a4;
  }

  else
  {

    return sub_1CA94C218();
  }
}

void sub_1CA521974(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, char a6)
{
  if (a6)
  {
  }

  else
  {
  }
}

Swift::Int __swiftcall WFWorkflowActionTree.MoveParameters.nearestValidDestination(to:)(Swift::Int to)
{
  type metadata accessor for WFWorkflowActionTree(0);
  v1 = OUTLINED_FUNCTION_23();
  return sub_1CA6A751C(v1);
}

void sub_1CA521A10()
{
  OUTLINED_FUNCTION_37_0();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v6 = WFWorkflowActionTree.MoveParameters.involvedActions.getter();
  sub_1CA289E38(v6);
  v8 = v7;
  v9 = WFWorkflowActionTree.MoveParameters.involvedActions.getter();
  sub_1CA289E38(v9);
  v11 = v10;
  sub_1CA2E450C(v8, v10);
  if (v12)
  {

    OUTLINED_FUNCTION_9_26();
    v14 = v1;
LABEL_5:
    sub_1CA525A84(v14, v5, v13);
    type metadata accessor for WFWorkflowActionTree.MoveParameters();
    goto LABEL_9;
  }

  sub_1CA2E450C(v8, v11);
  if (v15)
  {

    OUTLINED_FUNCTION_9_26();
    v14 = v3;
    goto LABEL_5;
  }

  v16 = sub_1CA524EF0(v11, v8);

  v17 = sub_1CA68BAD0(v16);

  v18 = type metadata accessor for WFWorkflowActionTree.MoveParameters();
  v19 = v18;
  if (v17 & 1) == 0 || (v20 = *(v18 + 20), v21 = v1 + v20, (*(v1 + v20 + 40)) || (v22 = v3 + v20, (*(v22 + 40)))
  {
LABEL_9:
    OUTLINED_FUNCTION_36();

    __swift_storeEnumTagSinglePayload(v23, v24, v25, v26);
    return;
  }

  v28 = *v21;
  v29 = *v22;
  v30 = *(*v21 + 16);
  v46 = *(*v22 + 16);
  if (__OFADD__(v30, v46))
  {
    __break(1u);
  }

  else
  {
    v31 = *(v22 + 16);
    v45 = *(v22 + 8);
    v33 = *(v22 + 24);
    v32 = *(v22 + 32);
    sub_1CA521910(v28, *(v21 + 8), *(v21 + 16), *(v21 + 24), *(v21 + 32), 0);
    sub_1CA521910(v29, v45, v31, v33, v32, 0);
    if (!swift_isUniquelyReferenced_nonNull_native() || v30 + v46 > *(v28 + 24) >> 1)
    {
      sub_1CA2E6A4C();
      v28 = v34;
    }

    sub_1CA6B0018();
    v35 = sub_1CA9491F8();
    v36 = OUTLINED_FUNCTION_1_0(v35);
    v38 = v37;
    v40 = *(v39 + 64);
    MEMORY[0x1EEE9AC00](v36);
    OUTLINED_FUNCTION_6_0();
    v43 = v42 - v41;
    sub_1CA949108();
    (*(v38 + 32))(v5, v43, v35);
    v44 = (v5 + *(v19 + 20));
    *v44 = v28;
    OUTLINED_FUNCTION_10_21(v44);
    __swift_storeEnumTagSinglePayload(v5, 0, 1, v19);
    OUTLINED_FUNCTION_36();
  }
}

void WFWorkflowActionTree.moveParametersForActions(at:)()
{
  OUTLINED_FUNCTION_37_0();
  v84 = v0;
  v3 = v2;
  v5 = v4;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4462A0, &qword_1CA98ACA8) - 8) + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_27_4();
  v85 = type metadata accessor for WFWorkflowActionTree.MoveParameters();
  v8 = OUTLINED_FUNCTION_52(v85);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_19();
  v83 = v11 - v12;
  OUTLINED_FUNCTION_31_2();
  MEMORY[0x1EEE9AC00](v13);
  v93 = v71 - v14;
  if (sub_1CA949198())
  {
    OUTLINED_FUNCTION_36();

    __swift_storeEnumTagSinglePayload(v15, v16, v17, v18);
  }

  else
  {
    sub_1CA949148();
    if (v20)
    {
      __break(1u);
    }

    else
    {
      v80 = v1;
      WFWorkflowActionTree.moveParametersForAction(at:)();
      v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4462A8, &qword_1CA98ACB0);
      v71[1] = v71;
      v22 = v21 - 8;
      v23 = *(*(v21 - 8) + 64);
      OUTLINED_FUNCTION_29();
      MEMORY[0x1EEE9AC00](v24);
      v26 = v71 - v25;
      v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4462B0, &qword_1CA98ACB8);
      v92 = v71;
      OUTLINED_FUNCTION_52(v27);
      v29 = *(v28 + 64);
      OUTLINED_FUNCTION_29();
      MEMORY[0x1EEE9AC00](v30);
      OUTLINED_FUNCTION_27_4();
      v31 = sub_1CA9491F8();
      v32 = OUTLINED_FUNCTION_1_0(v31);
      v34 = *(v33 + 64);
      MEMORY[0x1EEE9AC00](v32);
      OUTLINED_FUNCTION_6_0();
      v36 = OUTLINED_FUNCTION_19_16(v35);
      v78 = v37;
      v38(v36, v3);
      sub_1CA378ED0();
      sub_1CA4FCCB0(v1, v26, &qword_1EC4462B0, &qword_1CA98ACB8);
      v39 = *(v22 + 44);
      v40 = sub_1CA9490E8();
      OUTLINED_FUNCTION_52(v40);
      v42 = v41 + 16;
      v76 = *(v41 + 16);
      v76(&v26[v39], v1, v40);
      sub_1CA27080C(v1, &qword_1EC4462B0, &qword_1CA98ACB8);
      v79 = v27;
      v43 = *(v27 + 36);
      OUTLINED_FUNCTION_20_18();
      v82 = sub_1CA525A3C(v44, v45);
      v74 = (v42 + 16);
      v75 = v42;
      v73 = (v42 - 8);
      v81 = v5;
      v77 = v39;
      v72 = v43;
      v94 = v26;
      while (1)
      {
        if (sub_1CA94C358())
        {
          sub_1CA27080C(v26, &qword_1EC4462A8, &qword_1CA98ACB0);
          sub_1CA5233C4(v93, v5);
          __swift_storeEnumTagSinglePayload(v5, 0, 1, v85);
          goto LABEL_12;
        }

        v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC444990, &qword_1CA9852B8);
        v47 = *(v46 - 8);
        v91 = v46 - 8;
        v92 = v71;
        v48 = *(v47 + 64);
        OUTLINED_FUNCTION_29();
        MEMORY[0x1EEE9AC00](v49);
        v89 = v71 - v50;
        v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4449A0, &qword_1CA9852C0);
        v90 = v71;
        v52 = v51 - 8;
        v53 = *(*(v51 - 8) + 64);
        MEMORY[0x1EEE9AC00](v51);
        v54 = v71 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
        v88 = (v53 + 15) & 0xFFFFFFFFFFFFFFF0;
        v55 = v76;
        v76(v54, v94, v40);
        v56 = v55(&v54[*(v52 + 56)], &v94[v43], v40);
        v87 = v71;
        MEMORY[0x1EEE9AC00](v56);
        sub_1CA4FCCB0(v54, v54, &qword_1EC4449A0, &qword_1CA9852C0);
        v57 = *(v52 + 56);
        v86 = *v74;
        v58 = v89;
        v86(v89, v54, v40);
        v59 = *v73;
        v60 = (*v73)(&v54[v57], v40);
        MEMORY[0x1EEE9AC00](v60);
        v61 = v71 - v88;
        v26 = v94;
        sub_1CA523354(v54, v71 - v88);
        v62 = v58;
        v86(&v58[*(v91 + 44)], &v61[*(v52 + 56)], v40);
        v63 = v40;
        v59(v61, v40);
        v64 = v93;
        v65 = *(v79 + 40);
        sub_1CA525A3C(&qword_1EC4447F8, MEMORY[0x1EEE78B48]);
        sub_1CA94CA18();
        sub_1CA27080C(v62, &qword_1EC444990, &qword_1CA9852B8);
        v66 = sub_1CA94CB28();
        v68 = *v67;
        v66(&v95, 0);
        sub_1CA94CA68();
        v69 = v83;
        WFWorkflowActionTree.moveParametersForAction(at:)();
        v70 = v80;
        sub_1CA521A10();
        sub_1CA524CCC(v69, type metadata accessor for WFWorkflowActionTree.MoveParameters);
        sub_1CA524CCC(v64, type metadata accessor for WFWorkflowActionTree.MoveParameters);
        if (__swift_getEnumTagSinglePayload(v70, 1, v85) == 1)
        {
          break;
        }

        sub_1CA5233C4(v70, v93);
        v5 = v81;
        v40 = v63;
        v43 = v72;
      }

      sub_1CA27080C(v26, &qword_1EC4462A8, &qword_1CA98ACB0);
      sub_1CA27080C(v70, &qword_1EC4462A0, &qword_1CA98ACA8);
      __swift_storeEnumTagSinglePayload(v81, 1, 1, v85);
LABEL_12:
      OUTLINED_FUNCTION_36();
    }
  }
}

void WFWorkflowActionTree.moveParametersForAction(at:)()
{
  OUTLINED_FUNCTION_37_0();
  v2 = v1;
  v4 = v3;
  v5 = _s17ControlFlowBranchVMa(0);
  v6 = OUTLINED_FUNCTION_1_0(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_19();
  v13 = v11 - v12;
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_45_0();
  v280 = v15;
  OUTLINED_FUNCTION_31_2();
  MEMORY[0x1EEE9AC00](v16);
  v284 = &v266 - v17;
  v18 = _s6LayoutVMa(0);
  v19 = OUTLINED_FUNCTION_52(v18);
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_19();
  v287 = v22 - v23;
  OUTLINED_FUNCTION_31_2();
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_45_0();
  v276 = v25;
  OUTLINED_FUNCTION_31_2();
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_45_0();
  v279 = v27;
  OUTLINED_FUNCTION_31_2();
  v29 = MEMORY[0x1EEE9AC00](v28);
  v31 = &v266 - v30;
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_45_0();
  v277 = v32;
  OUTLINED_FUNCTION_31_2();
  v34 = MEMORY[0x1EEE9AC00](v33);
  v36 = &v266 - v35;
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_45_0();
  v286 = v37;
  OUTLINED_FUNCTION_31_2();
  MEMORY[0x1EEE9AC00](v38);
  v40 = &v266 - v39;
  v288 = v0;
  sub_1CA285AF8(&v266 - v39);
  v41 = *(v40 + 4);
  sub_1CA94C218();
  OUTLINED_FUNCTION_0_49();
  sub_1CA524CCC(v40, v42);
  if ((v2 & 0x8000000000000000) != 0)
  {
    goto LABEL_91;
  }

  if (*(v41 + 16) <= v2)
  {
LABEL_92:
    __break(1u);
LABEL_93:
    __break(1u);
LABEL_94:
    __break(1u);
    goto LABEL_95;
  }

  v275 = v13;
  v285 = v2;
  v43 = v41 + 48 * v2;
  v44 = *(v43 + 32);
  v46 = *(v43 + 48);
  v45 = *(v43 + 56);
  v47 = *(v43 + 64);
  v48 = *(v43 + 72);
  v281 = *(v43 + 40);
  v282 = v45;
  v283 = v47;
  sub_1CA36D94C(v44, v281, v46, v45, v47, v48);

  if (!v48)
  {
    v126 = v286;
    sub_1CA285AF8(v286);
    v127 = *(v18 + 40);
    v128 = sub_1CA9491F8();
    OUTLINED_FUNCTION_52(v128);
    (*(v129 + 16))(v4, v126 + v127);
    OUTLINED_FUNCTION_0_49();
    sub_1CA524CCC(v126, v130);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E28, &unk_1CA989EF0);
    v131 = swift_allocObject();
    *(v131 + 16) = xmmword_1CA981310;
    *(v131 + 32) = v44;
    v132 = type metadata accessor for WFWorkflowActionTree.MoveParameters();
    *(v131 + 48) = 0;
    *(v131 + 56) = 0;
    *(v131 + 40) = 0;
    *(v131 + 64) = 0;
    v133 = (v4 + *(v132 + 20));
    *v133 = v131;
    OUTLINED_FUNCTION_10_21(v133);
    goto LABEL_86;
  }

  v278 = v46;
  if (v48 == 1)
  {
    v49 = v283;
    if (v283)
    {
      v50 = v283 - 1;
      if (!__OFSUB__(v283, 1))
      {
        if ((v50 & 0x8000000000000000) == 0)
        {
          v51 = *(v46 + 16);
          if (v50 < v51)
          {
            v273 = v44;
            v274 = v4;
            v286 = (*(v8 + 80) + 32) & ~*(v8 + 80);
            v52 = *(v8 + 72);
            OUTLINED_FUNCTION_2_43();
            v53 = v284;
            sub_1CA525A84(v54, v284, v55);
            if (v49 < v51)
            {
              OUTLINED_FUNCTION_2_43();
              sub_1CA525A84(v56, v280, v57);
              v58 = sub_1CA9491F8();
              v279 = &v266;
              v59 = OUTLINED_FUNCTION_1_0(v58);
              v275 = v60;
              v276 = v59;
              v62 = *(v61 + 64);
              MEMORY[0x1EEE9AC00](v59);
              OUTLINED_FUNCTION_6_0();
              v287 = v64 - v63;
              sub_1CA9491E8();
              v272 = v5;
              v65 = *(v53 + *(v5 + 28));
              v66 = *(v65 + 16);
              if (v66)
              {
                v67 = (v65 + 64);
                do
                {
                  v68 = *(v67 - 4);
                  v69 = *(v67 - 3);
                  v71 = *(v67 - 2);
                  v70 = *(v67 - 1);
                  v72 = *v67;
                  sub_1CA285AF8(v36);
                  v73 = *(v36 + 1);
                  sub_1CA94C218();
                  v74 = OUTLINED_FUNCTION_6_33();
                  sub_1CA36DA2C(v74, v75, v76, v77, v72);
                  OUTLINED_FUNCTION_0_49();
                  sub_1CA524CCC(v36, v78);
                  if (v72)
                  {
                    if (!*(v71 + 16))
                    {
                      goto LABEL_88;
                    }

                    if (!*(v73 + 16))
                    {
                      v87 = OUTLINED_FUNCTION_6_33();
                      v91 = 1;
                      goto LABEL_22;
                    }

                    v79 = *(v71 + v286);
                  }

                  else if (!*(v73 + 16))
                  {
                    v87 = OUTLINED_FUNCTION_6_33();
                    v91 = 0;
                    goto LABEL_22;
                  }

                  v80 = sub_1CA320E94();
                  if ((v81 & 1) == 0)
                  {
                    v87 = OUTLINED_FUNCTION_6_33();
                    v91 = v72;
LABEL_22:
                    sub_1CA36D780(v87, v88, v89, v90, v91);

                    goto LABEL_23;
                  }

                  v82 = *(*(v73 + 56) + 8 * v80);

                  sub_1CA949168();
                  v83 = OUTLINED_FUNCTION_6_33();
                  sub_1CA36D780(v83, v84, v85, v86, v72);
LABEL_23:
                  v67 += 40;
                  --v66;
                }

                while (v66);
              }

              sub_1CA949168();
              v92 = v277;
              if ((*(v284 + 8) & 1) == 0)
              {
                v93 = *(v280 + *(v272 + 28));
                v94 = *(v93 + 16);
                if (v94)
                {
                  v95 = (v93 + 64);
                  do
                  {
                    v97 = *(v95 - 4);
                    v96 = *(v95 - 3);
                    v98 = *(v95 - 2);
                    v99 = *(v95 - 1);
                    v100 = *v95;
                    sub_1CA285AF8(v92);
                    v101 = *(v92 + 8);
                    sub_1CA94C218();
                    v102 = OUTLINED_FUNCTION_3_37();
                    sub_1CA36DA2C(v102, v103, v104, v105, v100);
                    OUTLINED_FUNCTION_0_49();
                    sub_1CA524CCC(v92, v106);
                    if (v100)
                    {
                      if (!*(v98 + 16))
                      {
                        goto LABEL_90;
                      }

                      if (!*(v101 + 16))
                      {
                        v117 = OUTLINED_FUNCTION_3_37();
                        v121 = 1;
                        goto LABEL_39;
                      }

                      v107 = *(v98 + v286);
                    }

                    else if (!*(v101 + 16))
                    {
                      v117 = OUTLINED_FUNCTION_3_37();
                      v121 = 0;
LABEL_39:
                      sub_1CA36D780(v117, v118, v119, v120, v121);
LABEL_40:

                      goto LABEL_41;
                    }

                    v108 = sub_1CA320E94();
                    if ((v109 & 1) == 0)
                    {
                      v117 = OUTLINED_FUNCTION_3_37();
                      v121 = v100;
                      goto LABEL_39;
                    }

                    v110 = *(*(v101 + 56) + 8 * v108);

                    sub_1CA949168();
                    if (v100)
                    {
                      sub_1CA94C218();
                      sub_1CA94C218();
                      v111 = v99;
                      sub_1CA6A76C0();
                      if (__OFADD__(v110, v112))
                      {
                        goto LABEL_96;
                      }

                      sub_1CA949168();
                      v113 = OUTLINED_FUNCTION_3_37();
                      sub_1CA36D780(v113, v114, v115, v116, 1);

                      goto LABEL_40;
                    }

                    if (__OFADD__(v110, 1))
                    {
                      goto LABEL_97;
                    }

                    sub_1CA949168();
                    v122 = OUTLINED_FUNCTION_3_37();
                    sub_1CA36D780(v122, v123, v124, v125, 0);
LABEL_41:
                    v95 += 40;
                    --v94;
                  }

                  while (v94);
                }
              }

              sub_1CA524CCC(v280, _s17ControlFlowBranchVMa);
              sub_1CA524CCC(v284, _s17ControlFlowBranchVMa);
              v217 = v274;
              (*(v275 + 32))(v274, v287, v276);
              v218 = v217 + *(type metadata accessor for WFWorkflowActionTree.MoveParameters() + 20);
              v219 = v281;
              *v218 = v273;
              *(v218 + 8) = v219;
              v221 = v282;
              v220 = v283;
              *(v218 + 16) = v278;
              *(v218 + 24) = v221;
              *(v218 + 32) = v220;
              *(v218 + 40) = 1;
              goto LABEL_86;
            }

            goto LABEL_101;
          }

LABEL_100:
          __break(1u);
LABEL_101:
          __break(1u);
          goto LABEL_102;
        }

LABEL_99:
        __break(1u);
        goto LABEL_100;
      }

LABEL_98:
      __break(1u);
      goto LABEL_99;
    }

    v222 = v4;
    v223 = sub_1CA9491F8();
    v224 = OUTLINED_FUNCTION_1_0(v223);
    v226 = v225;
    v228 = *(v227 + 64);
    MEMORY[0x1EEE9AC00](v224);
    OUTLINED_FUNCTION_6_0();
    v231 = v230 - v229;
    v232 = v286;
    sub_1CA285AF8(v286);
    v233 = v44;
    v234 = *(v226 + 16);
    v234(v231, v232 + *(v18 + 40), v223);
    OUTLINED_FUNCTION_0_49();
    sub_1CA524CCC(v232, v235);
    sub_1CA6A76C0();
    if (__OFADD__(v285, v236))
    {
LABEL_104:
      __break(1u);
      goto LABEL_105;
    }

    if (v285 + v236 <= v285)
    {
LABEL_105:
      __break(1u);
      goto LABEL_106;
    }

    sub_1CA949178();
    v234(v222, v231, v223);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E28, &unk_1CA989EF0);
    v237 = swift_allocObject();
    *(v237 + 16) = xmmword_1CA981310;
    v238 = v281;
    *(v237 + 32) = v233;
    *(v237 + 40) = v238;
    v239 = v282;
    *(v237 + 48) = v278;
    *(v237 + 56) = v239;
    *(v237 + 64) = 1;
    (*(v226 + 8))(v231, v223);
    v240 = (v222 + *(type metadata accessor for WFWorkflowActionTree.MoveParameters() + 20));
    *v240 = v237;
    OUTLINED_FUNCTION_10_21(v240);
LABEL_86:
    OUTLINED_FUNCTION_36();
    return;
  }

  v134 = sub_1CA9491F8();
  v135 = OUTLINED_FUNCTION_1_0(v134);
  v137 = v136;
  v139 = *(v138 + 64);
  MEMORY[0x1EEE9AC00](v135);
  OUTLINED_FUNCTION_6_0();
  v142 = v141 - v140;
  sub_1CA9491E8();
  v143 = *(v46 + 16);
  if (!v143)
  {
    goto LABEL_93;
  }

  v271 = v137;
  v277 = v134;
  v280 = &v266;
  v273 = v44;
  v274 = v4;
  v283 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v284 = v142;
  v267 = *(v8 + 72);
  v144 = *(*(v46 + v283 + v267 * (v143 - 1) + *(v5 + 28)) + 16);
  v272 = v5;
  if (v144)
  {
    v270 = sub_1CA94C218();
    v145 = (v270 + 8);
    while (1)
    {
      v147 = *(v145 - 4);
      v146 = *(v145 - 3);
      v149 = *(v145 - 2);
      v148 = *(v145 - 1);
      v150 = *v145;
      sub_1CA285AF8(v31);
      v151 = *(v31 + 1);
      sub_1CA94C218();
      v152 = OUTLINED_FUNCTION_5_33();
      sub_1CA36DA2C(v152, v153, v154, v155, v150);
      OUTLINED_FUNCTION_0_49();
      sub_1CA524CCC(v31, v156);
      if (v150)
      {
        if (!*(v149 + 16))
        {
          __break(1u);
LABEL_88:
          __break(1u);
LABEL_89:
          __break(1u);
LABEL_90:
          __break(1u);
LABEL_91:
          __break(1u);
          goto LABEL_92;
        }

        if (!*(v151 + 16))
        {
          v165 = OUTLINED_FUNCTION_5_33();
          v169 = 1;
          goto LABEL_59;
        }

        v157 = *(v149 + v283);
      }

      else if (!*(v151 + 16))
      {
        v165 = OUTLINED_FUNCTION_5_33();
        v169 = 0;
        goto LABEL_59;
      }

      v158 = sub_1CA320E94();
      if ((v159 & 1) == 0)
      {
        v165 = OUTLINED_FUNCTION_5_33();
        v169 = v150;
LABEL_59:
        sub_1CA36D780(v165, v166, v167, v168, v169);

        goto LABEL_60;
      }

      v160 = *(*(v151 + 56) + 8 * v158);

      sub_1CA949168();
      v161 = OUTLINED_FUNCTION_5_33();
      sub_1CA36D780(v161, v162, v163, v164, v150);
LABEL_60:
      v145 += 40;
      if (!--v144)
      {

        break;
      }
    }
  }

  v170 = v285;
  sub_1CA949168();
  v171 = sub_1CA9492B8();
  v270 = &v266;
  v172 = OUTLINED_FUNCTION_1_0(v171);
  v174 = v173;
  v176 = *(v175 + 64);
  MEMORY[0x1EEE9AC00](v172);
  v177 = (v176 + 15) & 0xFFFFFFFFFFFFFFF0;
  v178 = &v266 - v177;
  v179 = v286;
  sub_1CA285AF8(v286);
  v180 = *(v179 + 24);
  sub_1CA94C218();
  OUTLINED_FUNCTION_0_49();
  v182 = sub_1CA524CCC(v179, v181);
  MEMORY[0x1EEE9AC00](v182);
  if (*(v180 + 16) <= v170)
  {
    goto LABEL_94;
  }

  (*(v174 + 16))(&v266 - v177, v180 + ((*(v174 + 80) + 32) & ~*(v174 + 80)) + *(v174 + 72) * v170, v171);

  sub_1CA949298();
  v184 = *(v174 + 8);
  v183 = v174 + 8;
  v285 = v184;
  v184(&v266 - v177, v171);
  v185 = sub_1CA521618();
  if ((v186 & 1) == 0)
  {
    v187 = v185;
    v268 = &v266;
    MEMORY[0x1EEE9AC00](v185);
    sub_1CA949298();
    v188 = v279;
    v189 = v288;
    sub_1CA285AF8(v279);
    v190 = *(v188 + 40);
    sub_1CA94C218();
    OUTLINED_FUNCTION_0_49();
    sub_1CA524CCC(v188, v191);
    v286 = &v266 - ((v176 + 15) & 0xFFFFFFFFFFFFFFF0);
    v192 = sub_1CA311D4C(v286, v190);
    v194 = v193;

    v269 = v178;
    if ((v194 & 1) == 0)
    {
      v195 = v276;
      sub_1CA285AF8(v276);
      v196 = *(v195 + 32);
      sub_1CA94C218();
      OUTLINED_FUNCTION_0_49();
      sub_1CA524CCC(v195, v197);
      if ((v192 & 0x8000000000000000) != 0)
      {
LABEL_102:
        __break(1u);
        goto LABEL_103;
      }

      v279 = v187;
      if (v192 >= *(v196 + 16))
      {
LABEL_103:
        __break(1u);
        goto LABEL_104;
      }

      v198 = v196 + 48 * v192;
      v199 = *(v198 + 40);
      v200 = *(v198 + 48);
      v201 = *(v198 + 56);
      v202 = *(v198 + 64);
      v203 = *(v198 + 72);
      v204 = *(v198 + 32);
      OUTLINED_FUNCTION_16_21();
      sub_1CA36D94C(v205, v206, v207, v208, v209, v210);

      if (v203 == 1)
      {
        v276 = v183;
        if ((v202 & 0x8000000000000000) != 0)
        {
LABEL_106:
          __break(1u);
          goto LABEL_107;
        }

        v211 = v171;
        v212 = v275;
        v213 = v272;
        if (v202 >= *(v200 + 16))
        {
LABEL_107:
          __break(1u);
          goto LABEL_108;
        }

        OUTLINED_FUNCTION_2_43();
        sub_1CA525A84(v214, v212, v215);

        v216 = *(v212 + *(v213 + 28));
        sub_1CA94C218();
        sub_1CA524CCC(v212, _s17ControlFlowBranchVMa);
        v171 = v211;
        v183 = v276;
        v187 = v279;
LABEL_77:
        v247 = v187 + 1;
        if (!__OFADD__(v187, 1))
        {
          v248 = *(v216 + 16);

          if (v247 < v248)
          {
            do
            {
              v250 = v183;
              v251 = v171;
              MEMORY[0x1EEE9AC00](v249);
              sub_1CA9492A8();
              v252 = v287;
              sub_1CA285AF8(v287);
              v253 = *(v252 + 40);
              sub_1CA94C218();
              OUTLINED_FUNCTION_0_49();
              sub_1CA524CCC(v252, v254);
              if (*(v253 + 16) && (sub_1CA3210F0(), (v256 & 1) != 0))
              {
                v257 = *(*(v253 + 56) + 8 * v255);

                sub_1CA949168();
                if (__OFADD__(v257, 1))
                {
                  goto LABEL_89;
                }

                sub_1CA949168();
              }

              else
              {
              }

              ++v247;
              v171 = v251;
              v258 = v251;
              v183 = v250;
              v249 = v285(&v266 - ((v176 + 15) & 0xFFFFFFFFFFFFFFF0), v258);
            }

            while (v248 != v247);
          }

          v259 = v285;
          v285(v286, v171);
          v259(v269, v171);
          v260 = v278;
          v261 = *(v278 + 16);
          v262 = v274;
          (*(v271 + 32))(v274, v284, v277);
          v263 = v262 + *(type metadata accessor for WFWorkflowActionTree.MoveParameters() + 20);
          v265 = v281;
          v264 = v282;
          *v263 = v273;
          *(v263 + 8) = v265;
          *(v263 + 16) = v260;
          *(v263 + 24) = v264;
          *(v263 + 32) = v261;
          *(v263 + 40) = 1;
          goto LABEL_86;
        }

LABEL_95:
        __break(1u);
LABEL_96:
        __break(1u);
LABEL_97:
        __break(1u);
        goto LABEL_98;
      }

      OUTLINED_FUNCTION_16_21();
      sub_1CA36D9BC(v241, v242, v243, v244, v245, v246);
      v189 = v288;
      v187 = v279;
    }

    v216 = *(v189 + OBJC_IVAR___WFWorkflowActionTree_root);
    sub_1CA94C218();
    goto LABEL_77;
  }

LABEL_108:
  __break(1u);
}

uint64_t sub_1CA523354(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4449A0, &qword_1CA9852C0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1CA5233C4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WFWorkflowActionTree.MoveParameters();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void WFWorkflowActionTree.primaryDragIndex(for:touchIndex:)()
{
  OUTLINED_FUNCTION_37_0();
  v1 = v0;
  v81 = v2;
  v4 = v3;
  v5 = _s6LayoutVMa(0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  OUTLINED_FUNCTION_6_0();
  v84 = (v8 - v7);
  v9 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC444918, &qword_1CA9843B0) - 8);
  v10 = *(*v9 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x1EEE9AC00](v11);
  v13 = v79 - v12;
  v14 = sub_1CA9491F8();
  v15 = OUTLINED_FUNCTION_1_0(v14);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_6_0();
  v19 = OUTLINED_FUNCTION_19_16(v18);
  v82 = v4;
  v20(v19, v4, v14);
  v21 = MEMORY[0x1EEE78B48];
  sub_1CA525A3C(&qword_1EC4462B8, MEMORY[0x1EEE78B48]);
  sub_1CA94C598();
  v22 = sub_1CA9490E8();
  v23 = v9[11];
  v88 = v22;
  OUTLINED_FUNCTION_1_0(v22);
  v25 = v24;
  v89 = *(v26 + 64);
  v27 = sub_1CA525A3C(&qword_1EC4447F8, v21);
  v86 = v27;
  v87 = (v25 + 8);
  v90 = v1;
  v85 = v14;
  do
  {
    while (1)
    {
      MEMORY[0x1EEE9AC00](v27);
      v29 = v79 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
      sub_1CA94CA58();
      OUTLINED_FUNCTION_20_18();
      sub_1CA525A3C(&qword_1EC444920, v30);
      v31 = v88;
      v32 = sub_1CA94C358();
      v33 = *v87;
      (*v87)(v29, v31);
      if (v32)
      {
        sub_1CA27080C(v13, &qword_1EC444918, &qword_1CA9843B0);
        goto LABEL_16;
      }

      v83 = v33;
      v34 = sub_1CA94CB28();
      v36 = *v35;
      v34(v92, 0);
      sub_1CA94CA68();
      v37 = v84;
      sub_1CA285AF8(v84);
      v38 = *(v37 + 32);
      sub_1CA94C218();
      OUTLINED_FUNCTION_0_49();
      sub_1CA524CCC(v37, v39);
      if ((v36 & 0x8000000000000000) != 0)
      {
        __break(1u);
LABEL_19:
        __break(1u);
        goto LABEL_20;
      }

      if (v36 >= *(v38 + 16))
      {
        goto LABEL_19;
      }

      v40 = v38 + 48 * v36;
      v41 = *(v40 + 32);
      v42 = *(v40 + 40);
      v44 = *(v40 + 48);
      v43 = *(v40 + 56);
      v45 = *(v40 + 64);
      v46 = *(v40 + 72);
      v47 = OUTLINED_FUNCTION_12_22();
      sub_1CA36D94C(v47, v48, v49, v50, v51, v52);

      if (v46 == 1)
      {
        break;
      }

      v54 = OUTLINED_FUNCTION_12_22();
      sub_1CA36D9BC(v54, v55, v56, v57, v58, v59);
    }

    v53 = v90;
  }

  while (v45);
  sub_1CA27080C(v13, &qword_1EC444918, &qword_1CA9843B0);
  v60 = [v53 actionAtIndex_];
  v61 = [v53 actionsNestedInsideAction_];
  if (!v61)
  {

    goto LABEL_16;
  }

  v62 = v61;
  sub_1CA3A2F84();
  v63 = sub_1CA94C658();

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443910, &unk_1CA981A00);
  v64 = swift_allocObject();
  *(v64 + 16) = xmmword_1CA9813B0;
  *(v64 + 32) = v60;
  v65 = v60;
  sub_1CA289E38(v63);
  v92[0] = v64;
  sub_1CA2B85A8(v66);
  v67 = v92[0];
  v68 = sub_1CA94CA28();
  v69 = MEMORY[0x1E69E7CC0];
  if (!v68)
  {
    goto LABEL_15;
  }

  v80 = v67;
  v84 = v65;
  v91 = MEMORY[0x1E69E7CC0];
  v70 = sub_1CA94D508();
  v79[1] = v79;
  MEMORY[0x1EEE9AC00](v70);
  v72 = v79 - ((v71 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CA94C9F8();
  if ((v68 & 0x8000000000000000) == 0)
  {
    do
    {
      v73 = sub_1CA94CB28();
      v75 = *v74;
      v73(v92, 0);
      v76 = [v53 actionAtIndex_];
      sub_1CA94D4D8();
      v77 = *(v91 + 16);
      sub_1CA94D518();
      v53 = v90;
      sub_1CA94D528();
      sub_1CA94D4E8();
      sub_1CA94CA68();
      --v68;
    }

    while (v68);
    v83(v72, v88);
    v69 = v91;
    v67 = v80;
    v65 = v84;
LABEL_15:
    sub_1CA289E38(v69);
    sub_1CA523A28(v67, v78);

LABEL_16:
    OUTLINED_FUNCTION_36();
    return;
  }

LABEL_20:
  __break(1u);
}

void *sub_1CA523A28(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  if ((a2 & 0xC000000000000001) == 0)
  {
    v6 = *(a2 + 16);
    sub_1CA94C218();
    if (v6)
    {
      if (v6 != 1)
      {
        goto LABEL_13;
      }

      goto LABEL_10;
    }

LABEL_12:

    v8 = 1;
    return (v8 & 1);
  }

  if (a2 < 0)
  {
    v4 = a2;
  }

  else
  {
    v4 = a2 & 0xFFFFFFFFFFFFFF8;
  }

  sub_1CA94C218();
  if (!sub_1CA94D328())
  {
    goto LABEL_12;
  }

  if (sub_1CA94D328() != 1)
  {
    v5 = sub_1CA94D328();
    v2 = sub_1CA6AD02C(v4, v5);
LABEL_13:
    v8 = sub_1CA5255CC(a1, v2);

    return (v8 & 1);
  }

LABEL_10:

  result = sub_1CA2ED048(v2);
  v10 = result;
  if (result)
  {
    MEMORY[0x1EEE9AC00](result);
    v9[2] = &v10;
    v8 = sub_1CA2BFDC4(sub_1CA5259CC, v9, a1);

    return (v8 & 1);
  }

  __break(1u);
  return result;
}

uint64_t sub_1CA523BD0(uint64_t a1, uint64_t a2, char *a3, void **a4)
{
  v98 = _s17ControlFlowBranchVMa(0);
  v101 = *(v98 - 8);
  v11 = *(v101 + 64);
  MEMORY[0x1EEE9AC00](v98);
  v103 = &v94 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = _s6LayoutVMa(0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x1EEE9AC00](v13 - 8);
  v17 = (&v94 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v15);
  v107 = &v94 - v18;
  v19 = a1 + *(type metadata accessor for WFWorkflowActionTree.MoveParameters() + 20);
  v20 = *(v19 + 8);
  v21 = *(v19 + 16);
  v22 = *(v19 + 24);
  v23 = *(v19 + 32);
  v24 = *(v19 + 40);
  v100 = a3;
  v99 = v21;
  v96 = v20;
  v97 = v23;
  if (v24)
  {
    if (*(v21 + 16))
    {
      v111 = a4;
      v102 = a2;
      v110 = (v21 + ((*(v101 + 80) + 32) & ~*(v101 + 80)));
      v25 = *v110;
      v26 = v22;
      sub_1CA94C218();
      sub_1CA94C218();
      v114 = v26;
      v5 = [a3 indexOfAction_];
      v27 = sub_1CA9492B8();
      v112 = &v94;
      a3 = v27;
      v28 = *(v27 - 8);
      v6 = *(v28 + 64);
      v29 = MEMORY[0x1EEE9AC00](v27);
      v30 = (v6 + 15) & 0xFFFFFFFFFFFFFFF0;
      v115 = &v94 - v30;
      v113 = &v94;
      MEMORY[0x1EEE9AC00](v29);
      v4 = &v94 - v30;
      a2 = v107;
      sub_1CA285AF8(v107);
      a1 = *(a2 + 24);
      sub_1CA94C218();
      v31 = sub_1CA524CCC(a2, _s6LayoutVMa);
      a4 = &v94;
      MEMORY[0x1EEE9AC00](v31);
      v32 = &v94 - v30;
      if ((v5 & 0x8000000000000000) == 0)
      {
        if (v5 < *(a1 + 16))
        {
          a2 = a3;
          (*(v28 + 16))(v32, a1 + ((*(v28 + 80) + 32) & ~*(v28 + 80)) + *(v28 + 72) * v5, a3);

          sub_1CA949298();
          v5 = *(v28 + 8);
          (v5)(v32, a3);
          a1 = v4;
          sub_1CA949298();
          (v5)(v4, a3);
          v33 = *(v99 + 16);
          v34 = v114;
          if (v97 == v33)
          {
            goto LABEL_8;
          }

          if (v97 < v33)
          {
            v34 = *(v110 + *(v101 + 72) * v97);
LABEL_8:
            v113 = v34;
            a3 = v100;
            v35 = [v100 actions];
            sub_1CA3A2F84();
            sub_1CA94C658();

            v36 = sub_1CA25B410();

            v37 = 0;
            a4 = v102;
            v4 = v115;
            if (v36 == v102)
            {
              goto LABEL_12;
            }

            sub_1CA285AF8(v17);
            a1 = *v17;
            sub_1CA94C218();
            sub_1CA524CCC(v17, _s6LayoutVMa);
            sub_1CA275D70(a4, (a1 & 0xC000000000000001) == 0, a1);
            if ((a1 & 0xC000000000000001) == 0)
            {
              v38 = *(a1 + 8 * a4 + 32);
LABEL_11:
              v37 = v38;

LABEL_12:
              v39 = sub_1CA6A6B34();
              if (v39)
              {
                v40 = *&a3[OBJC_IVAR___WFWorkflowActionTree_root];
                v41 = sub_1CA94C218();
                v42 = sub_1CA6A71A4(v41);

                v43 = v113;
                v44 = sub_1CA524AF0(v42, v113, v37);

                sub_1CA6A81A0(v44);

                return (v5)(v4, a2);
              }

              else
              {
                v110 = &v94;
                MEMORY[0x1EEE9AC00](v39);
                v70 = &v94 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
                sub_1CA949298();
                v71 = OBJC_IVAR___WFWorkflowActionTree_root;
                v116 = *&a3[OBJC_IVAR___WFWorkflowActionTree_root];
                sub_1CA94C218();
                sub_1CA6A78A8();
                sub_1CA6A81A0(v116);
                if (v121 == 1)
                {
                  v89 = v119;
                  v108 = v118;
                  v109 = v117[1];
                  sub_1CA6A86E0();
                  v90 = v113;
                  sub_1CA524AF0(v91, v113, v37);
                  v111 = a2;

                  v116 = *&a3[v71];
                  sub_1CA94C218();
                  sub_1CA6A81E8();

                  sub_1CA6A81A0(v116);

                  v92 = v70;
                  v93 = v111;
                  (v5)(v92, v111);
                  v72 = v115;
                  v73 = v93;
                }

                else
                {
                  if (v121 != 255)
                  {
                    sub_1CA27080C(v117, &unk_1EC448130, &unk_1CA992000);
                  }

                  (v5)(&v94 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), a2);
                  v72 = v4;
                  v73 = a2;
                }

                return (v5)(v72, v73);
              }
            }

LABEL_74:
            v38 = MEMORY[0x1CCAA22D0](a4, a1);
            goto LABEL_11;
          }

LABEL_73:
          __break(1u);
          goto LABEL_74;
        }

LABEL_72:
        __break(1u);
        goto LABEL_73;
      }

LABEL_71:
      __break(1u);
      goto LABEL_72;
    }

LABEL_70:
    __break(1u);
    goto LABEL_71;
  }

  v5 = *v19;
  v106 = *(*v19 + 16);
  v94 = v22;
  if (v106)
  {
    v104 = OBJC_IVAR___WFWorkflowActionTree_root;
    v105 = v5 + 32;
    sub_1CA521910(v5, v20, v21, v22, v23, 0);
    sub_1CA94C218();
    v46 = 0;
    v47 = v101;
    v95 = v5;
    while (v46 < *(v5 + 16))
    {
      v48 = v105 + 40 * v46;
      v49 = *v48;
      v115 = *(v48 + 8);
      v4 = *(v48 + 16);
      a4 = *(v48 + 24);
      a1 = *(v48 + 32);
      v113 = v46;
      if (a1)
      {
        if (!*(v4 + 16))
        {
          goto LABEL_65;
        }

        v50 = *(v4 + ((*(v47 + 80) + 32) & ~*(v47 + 80)));
      }

      else
      {
        v50 = v49;
      }

      v51 = v50;
      v109 = v49;
      v110 = v4;
      v111 = a4;
      LODWORD(v112) = a1;
      sub_1CA36DA2C(v49, v115, v4, a4, a1);
      v4 = [a3 indexOfAction_];

      v52 = sub_1CA9492B8();
      v108 = &v94;
      v114 = v52;
      a4 = *(v52 - 1);
      v53 = a4[8];
      MEMORY[0x1EEE9AC00](v52);
      v55 = &v94 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0);
      v56 = v107;
      sub_1CA285AF8(v107);
      a1 = *(v56 + 24);
      sub_1CA94C218();
      sub_1CA524CCC(v56, _s6LayoutVMa);
      if (v4 < 0)
      {
        goto LABEL_63;
      }

      if (v4 >= *(a1 + 16))
      {
        goto LABEL_64;
      }

      (a4[2])(v55, a1 + ((*(a4 + 80) + 32) & ~*(a4 + 80)) + a4[9] * v4, v114);

      v116 = *&a3[v104];
      sub_1CA94C218();
      sub_1CA6A78A8();
      a1 = a3;
      sub_1CA6A81A0(v116);
      if (v121 == 255)
      {
        goto LABEL_78;
      }

      if (v4 >= a2)
      {
        v64 = a4[1];
        ++a4;
        v64(v55, v114);
        sub_1CA27080C(v117, &unk_1EC448130, &unk_1CA992000);
        sub_1CA36D780(v109, v115, v110, v111, v112);
        v65 = v113;
      }

      else
      {
        if (v121 == 1)
        {
          if (v120)
          {
            if ((v120 & 0x8000000000000000) != 0)
            {
              goto LABEL_67;
            }

            if (v120 >= *(v118 + 16))
            {
              goto LABEL_68;
            }

            v102 = a2;
            v57 = v103;
            sub_1CA525A84(v118 + ((*(v47 + 80) + 32) & ~*(v47 + 80)) + *(v47 + 72) * v120, v103, _s17ControlFlowBranchVMa);
            v58 = 0;
            v59 = *(v57 + *(v98 + 28));
            a2 = v59 + 64;
            v5 = *(v59 + 16) + 1;
            while (--v5)
            {
              if (*a2 == 1)
              {
                v60 = *(a2 - 16);
                v4 = *(a2 - 8);
                a3 = *(a2 - 32);
                v6 = *(a2 - 24);
                sub_1CA94C218();
                sub_1CA94C218();
                v61 = v4;
                sub_1CA6A76C0();
                a1 = v62;
                sub_1CA36D780(a3, v6, v60, v4, 1);
              }

              else
              {
                a1 = 1;
              }

              a2 += 40;
              v63 = __OFADD__(v58, a1);
              v58 += a1;
              if (v63)
              {
                __break(1u);
                goto LABEL_62;
              }
            }

            sub_1CA27080C(v117, &unk_1EC448130, &unk_1CA992000);
            sub_1CA36D780(v109, v115, v110, v111, v112);
            v67 = a4[1];
            ++a4;
            v67(v55, v114);
            a1 = v58 + 1;
            if (__OFADD__(v58, 1))
            {
              goto LABEL_69;
            }

            sub_1CA524CCC(v103, _s17ControlFlowBranchVMa);
            a3 = v100;
            a2 = v102;
            v5 = v95;
            v47 = v101;
          }

          else
          {
            sub_1CA6A76C0();
            a1 = v68;
            sub_1CA27080C(v117, &unk_1EC448130, &unk_1CA992000);
            sub_1CA36D780(v109, v115, v110, v111, v112);
            v69 = a4[1];
            ++a4;
            v69(v55, v114);
          }
        }

        else
        {
          sub_1CA27080C(v117, &unk_1EC448130, &unk_1CA992000);
          sub_1CA36D780(v109, v115, v110, v111, v112);
          v66 = a4[1];
          ++a4;
          v66(v55, v114);
          a1 = 1;
        }

        v63 = __OFSUB__(a2, a1);
        a2 -= a1;
        v65 = v113;
        if (v63)
        {
          goto LABEL_66;
        }
      }

      v46 = (v65 + 1);
      if (v46 == v106)
      {
        sub_1CA521974(v5, v96, v99, v94, v97, 0);
        goto LABEL_50;
      }
    }

LABEL_62:
    __break(1u);
LABEL_63:
    __break(1u);
LABEL_64:
    __break(1u);
LABEL_65:
    __break(1u);
LABEL_66:
    __break(1u);
LABEL_67:
    __break(1u);
LABEL_68:
    __break(1u);
LABEL_69:
    __break(1u);
    goto LABEL_70;
  }

  sub_1CA521910(v5, v20, v21, v22, v23, 0);
LABEL_50:
  v74 = [a3 actions];
  sub_1CA3A2F84();
  sub_1CA94C658();

  v75 = sub_1CA25B410();

  if (a2 == v75)
  {
    v76 = *&a3[OBJC_IVAR___WFWorkflowActionTree_root];
    v77 = *(v76 + 16);
    v78 = *(v5 + 16);
    if (!__OFADD__(v77, v78))
    {
      v79 = *&a3[OBJC_IVAR___WFWorkflowActionTree_root];
      sub_1CA94C218();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v116 = v76;
      if (!isUniquelyReferenced_nonNull_native || v77 + v78 > *(v76 + 24) >> 1)
      {
        sub_1CA2E6A4C();
        v76 = v81;
        v116 = v81;
      }

      sub_1CA6B0018();
      return sub_1CA6A81A0(v76);
    }

    __break(1u);
  }

  else
  {
    v82 = sub_1CA9492B8();
    v83 = *(v82 - 8);
    v84 = *(v83 + 64);
    MEMORY[0x1EEE9AC00](v82);
    v86 = &v94 - ((v85 + 15) & 0xFFFFFFFFFFFFFFF0);
    v87 = v107;
    sub_1CA285AF8(v107);
    v88 = *(v87 + 24);
    sub_1CA94C218();
    sub_1CA524CCC(v87, _s6LayoutVMa);
    if ((a2 & 0x8000000000000000) == 0)
    {
      if (a2 < *(v88 + 16))
      {
        (*(v83 + 16))(v86, v88 + ((*(v83 + 80) + 32) & ~*(v83 + 80)) + *(v83 + 72) * a2, v82);

        v116 = *&a3[OBJC_IVAR___WFWorkflowActionTree_root];
        sub_1CA94C218();
        sub_1CA6A81E8();
        sub_1CA521974(v5, v96, v99, v94, v97, 0);
        sub_1CA6A81A0(v116);
        return (*(v83 + 8))(v86, v82);
      }

      goto LABEL_77;
    }
  }

  __break(1u);
LABEL_77:
  __break(1u);
LABEL_78:
  result = sub_1CA94D5F8();
  __break(1u);
  return result;
}

uint64_t sub_1CA524AF0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1CA94C218();
  sub_1CA58A5F4(a2, a1);
  if (v7)
  {
    goto LABEL_18;
  }

  v8 = v6;
  if (!a3 || (sub_1CA94C218(), sub_1CA58A5F4(a3, a1), v10 = v9, v12 = v11, , (v12 & 1) != 0))
  {
    v10 = sub_1CA25B410();
  }

  if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || a1 < 0 || (a1 & 0x4000000000000000) != 0)
  {
    a1 = sub_1CA436664(a1);
  }

  v13 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v8 >= v13)
  {
    __break(1u);
    goto LABEL_15;
  }

  v14 = v13 - 1;
  v15 = *((a1 & 0xFFFFFFFFFFFFFF8) + 8 * v8 + 0x20);
  sub_1CA440434(((a1 & 0xFFFFFFFFFFFFFF8) + 8 * v8 + 40), v13 - 1 - v8, ((a1 & 0xFFFFFFFFFFFFFF8) + 8 * v8 + 32));
  *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10) = v14;
  v16 = v10 - (v8 < v10);
  sub_1CA524E98(v16, a1);
  if (v16 < 0)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (sub_1CA277E14(a1) >= v16)
  {
    v17 = sub_1CA25B410();
    v18 = v17 + 1;
    if (!__OFADD__(v17, 1))
    {
      v19 = v15;
      sub_1CA277E18(v18, 1);
      sub_1CA6B0108(v16, v16, 1, v19);
      sub_1CA286ACC(a1, 0);
      v21 = v20;

      return v21;
    }

    goto LABEL_17;
  }

LABEL_16:
  __break(1u);
LABEL_17:
  __break(1u);
LABEL_18:
  result = sub_1CA94D5F8();
  __break(1u);
  return result;
}

uint64_t sub_1CA524CCC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_52(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_1CA524D58()
{
  result = sub_1CA9491F8();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

__n128 __swift_memcpy41_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 25) = *(a2 + 25);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1CA524DEC(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 41))
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 40);
      if (v3 <= 1)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1CA524E2C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 41) = 0;
    }

    if (a2)
    {
      *(result + 40) = -a2;
    }
  }

  return result;
}

uint64_t sub_1CA524E98(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62)
  {
    result = sub_1CA94D328();
  }

  else
  {
    result = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (result < a1)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (a1 < 0)
  {
LABEL_8:
    __break(1u);
  }

  return result;
}

void *sub_1CA524EF0(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v3 = a1;
  v4 = a1 & 0xC000000000000001;
  if ((a2 & 0xC000000000000001) != 0)
  {
    if (v4)
    {
      if (a2 >= 0)
      {
        v2 = a2 & 0xFFFFFFFFFFFFFF8;
      }

      v5 = sub_1CA94D328();
      a2 = sub_1CA6AD02C(v2, v5);
      a1 = v3;
      goto LABEL_7;
    }

    sub_1CA3A2F84();
    v7 = MEMORY[0x1E69E7CD0];
    v15 = MEMORY[0x1E69E7CD0];
    sub_1CA94D2F8();
LABEL_11:
    while (sub_1CA94D358())
    {
      swift_dynamicCast();
      if (*(v3 + 16))
      {
        v8 = *(v3 + 40);
        v9 = sub_1CA94CFC8();
        v10 = ~(-1 << *(v3 + 32));
        while (1)
        {
          v11 = v9 & v10;
          if (((*(v3 + 56 + (((v9 & v10) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v9 & v10)) & 1) == 0)
          {
            break;
          }

          v12 = *(*(v3 + 48) + 8 * v11);
          v13 = sub_1CA94CFD8();

          v9 = v11 + 1;
          if (v13)
          {
            if (*(v7 + 24) <= *(v7 + 16))
            {
              sub_1CA6AE218();
            }

            v7 = v15;
            sub_1CA6B2CD8(v14, v15);
            goto LABEL_11;
          }
        }
      }
    }

    return v7;
  }

  else
  {
    if (v4)
    {
LABEL_7:

      return sub_1CA5250F0(a1, a2);
    }

    return sub_1CA615268(a1, a2);
  }
}

void *sub_1CA5250F0(uint64_t isStackAllocationSafe, uint64_t a2)
{
  v3 = isStackAllocationSafe;
  v13[6] = *MEMORY[0x1E69E9840];
  v13[0] = isStackAllocationSafe;
  v4 = *(a2 + 32);
  v13[3] = v13;
  v13[4] = a2;
  v5 = ((1 << v4) + 63) >> 6;
  if (v4 & 0x3Fu) <= 0xD || (isStackAllocationSafe = swift_stdlib_isStackAllocationSafe(), (isStackAllocationSafe))
  {
    MEMORY[0x1EEE9AC00](isStackAllocationSafe);
    v6 = &v13[-1] - ((8 * v5 + 15) & 0x3FFFFFFFFFFFFFF0);
    sub_1CA5C3FA4(0, v5, v6);
    sub_1CA525290(v6, v5, v3, a2);
    v8 = v7;
  }

  else
  {
    v11 = swift_slowAlloc();
    v8 = sub_1CA525550(v11, v5, sub_1CA525AE0);

    MEMORY[0x1CCAA4BF0](v11, -1, -1);
  }

  v9 = *MEMORY[0x1E69E9840];
  return v8;
}

void sub_1CA525290(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a3;
  if ((a3 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_1CA94D2F8();
    sub_1CA3A2F84();
    sub_1CA28D4F8();
    sub_1CA94C948();
    v4 = v36;
    v5 = v37;
    v6 = v38;
    v7 = v39;
    v8 = v40;
  }

  else
  {
    v9 = -1 << *(a3 + 32);
    v5 = a3 + 56;
    v6 = ~v9;
    v10 = -v9;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v8 = v11 & *(a3 + 56);
    sub_1CA94C218();
    v7 = 0;
  }

  v30 = 0;
  v12 = (v6 + 64) >> 6;
  v32 = v5;
  v33 = v4;
  while (1)
  {
    v13 = v7;
    v14 = v8;
LABEL_9:
    if (v4 < 0)
    {
      if (!sub_1CA94D358())
      {
        goto LABEL_28;
      }

      sub_1CA3A2F84();
      swift_dynamicCast();
      v18 = v41;
      v7 = v13;
      v17 = v14;
      if (!v41)
      {
        goto LABEL_28;
      }

      goto LABEL_18;
    }

    v15 = v13;
    v16 = v14;
    v7 = v13;
    if (!v14)
    {
      break;
    }

LABEL_14:
    v17 = (v16 - 1) & v16;
    v18 = *(*(v4 + 48) + ((v7 << 9) | (8 * __clz(__rbit64(v16)))));
    if (!v18)
    {
      goto LABEL_28;
    }

LABEL_18:
    v34 = v17;
    v19 = *(a4 + 40);
    v20 = sub_1CA94CFC8();
    v21 = ~(-1 << *(a4 + 32));
    do
    {
      v22 = v20 & v21;
      v23 = (v20 & v21) >> 6;
      v24 = 1 << (v20 & v21);
      if ((v24 & *(a4 + 56 + 8 * v23)) == 0)
      {

        v13 = v7;
        v4 = v33;
        v14 = v34;
        v12 = (v6 + 64) >> 6;
        v5 = v32;
        goto LABEL_9;
      }

      sub_1CA3A2F84();
      v25 = *(*(a4 + 48) + 8 * v22);
      v26 = sub_1CA94CFD8();

      v20 = v22 + 1;
    }

    while ((v26 & 1) == 0);

    v27 = *(a1 + 8 * v23);
    *(a1 + 8 * v23) = v27 | v24;
    v13 = v7;
    v4 = v33;
    v8 = v34;
    v14 = v34;
    v28 = (v27 & v24) == 0;
    v12 = (v6 + 64) >> 6;
    v5 = v32;
    if (!v28)
    {
      goto LABEL_9;
    }

    if (__OFADD__(v30++, 1))
    {
      __break(1u);
LABEL_28:
      sub_1CA2BC138();

      sub_1CA6B0874();
      return;
    }
  }

  while (1)
  {
    v7 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v7 >= v12)
    {
      goto LABEL_28;
    }

    v16 = *(v5 + 8 * v7);
    ++v15;
    if (v16)
    {
      goto LABEL_14;
    }
  }

  __break(1u);
}

void *sub_1CA525550(void *result, uint64_t a2, void *(*a3)(uint64_t *__return_ptr, void *, uint64_t))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v6 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    result = a3(&v7, v6, a2);
    if (!v3)
    {
      return v7;
    }
  }

  return result;
}

uint64_t sub_1CA5255CC(uint64_t isStackAllocationSafe, uint64_t a2)
{
  v3 = isStackAllocationSafe;
  v13[6] = *MEMORY[0x1E69E9840];
  v13[0] = isStackAllocationSafe;
  v4 = *(a2 + 32);
  v13[3] = v13;
  v13[4] = a2;
  v5 = ((1 << v4) + 63) >> 6;
  if (v4 & 0x3Fu) <= 0xD || (isStackAllocationSafe = swift_stdlib_isStackAllocationSafe(), (isStackAllocationSafe))
  {
    MEMORY[0x1EEE9AC00](isStackAllocationSafe);
    v6 = &v13[-1] - ((8 * v5 + 15) & 0x3FFFFFFFFFFFFFF0);
    sub_1CA5C3FA4(0, v5, v6);
    sub_1CA525758(v6, v5, v3, a2);
    v8 = v7;
  }

  else
  {
    v11 = swift_slowAlloc();
    v8 = sub_1CA5258F8(v11, v5, sub_1CA525A20);
    MEMORY[0x1CCAA4BF0](v11, -1, -1);
  }

  v9 = *MEMORY[0x1E69E9840];
  return v8 & 1;
}

void sub_1CA525758(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v23 = sub_1CA25B410();
  v5 = 0;
  v6 = 0;
  v21 = a3 & 0xC000000000000001;
  do
  {
    v19 = v5;
LABEL_3:
    v7 = v6;
    if (v6 == v23)
    {
      break;
    }

    sub_1CA275D70(v6, v21 == 0, a3);
    if (v21)
    {
      v8 = MEMORY[0x1CCAA22D0](v7, a3);
    }

    else
    {
      v8 = *(a3 + 32 + 8 * v7);
    }

    v9 = v8;
    if (__OFADD__(v7, 1))
    {
      __break(1u);
LABEL_18:
      __break(1u);
      return;
    }

    v24 = v7 + 1;
    v10 = *(a4 + 40);
    v11 = sub_1CA94CFC8();
    v12 = ~(-1 << *(a4 + 32));
    do
    {
      v13 = v11 & v12;
      v14 = (v11 & v12) >> 6;
      v15 = 1 << (v11 & v12);
      if ((v15 & *(a4 + 56 + 8 * v14)) == 0)
      {

        v6 = v24;
        goto LABEL_3;
      }

      sub_1CA3A2F84();
      v16 = *(*(a4 + 48) + 8 * v13);
      v17 = sub_1CA94CFD8();

      v11 = v13 + 1;
    }

    while ((v17 & 1) == 0);

    v18 = *(a1 + 8 * v14);
    *(a1 + 8 * v14) = v18 | v15;
    v6 = v24;
    if ((v18 & v15) != 0)
    {
      goto LABEL_3;
    }

    if (__OFADD__(v19, 1))
    {
      goto LABEL_18;
    }

    v5 = v19 + 1;
  }

  while (v19 + 1 != *(a4 + 16));
}

void *sub_1CA5258F8(void *result, uint64_t a2, void (*a3)(uint64_t *__return_ptr, void *, uint64_t))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v6 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    a3(&v8, v6, a2);
    if (!v3)
    {
      v7 = v8;
    }

    return (v7 & 1);
  }

  return result;
}

void sub_1CA525978(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  sub_1CA525290(a1, a2, *a3, a4);
  if (!v5)
  {
    *a5 = v7;
  }
}

uint64_t sub_1CA5259A8(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  return sub_1CA5FAD10() & 1;
}

void sub_1CA5259EC(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, _BYTE *a5@<X8>)
{
  sub_1CA525758(a1, a2, *a3, a4);
  if (!v5)
  {
    *a5 = v7 & 1;
  }
}

uint64_t sub_1CA525A3C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1CA525A84(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a3(0);
  OUTLINED_FUNCTION_52(v4);
  v6 = *(v5 + 16);
  v7 = OUTLINED_FUNCTION_23();
  v8(v7);
  return a2;
}

id sub_1CA525B30()
{
  v160 = sub_1CA25B3D0(0, &qword_1EC4419A0, off_1E836DD08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B0, &qword_1CA981320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA981550;
  v1 = MEMORY[0x1E69E6158];
  *(inited + 32) = @"ActionClass";
  *(inited + 40) = 0xD000000000000016;
  *(inited + 48) = 0x80000001CA9C83E0;
  *(inited + 64) = v1;
  *(inited + 72) = @"ActionKeywords";
  v2 = @"ActionClass";
  v3 = @"ActionKeywords";
  v165 = sub_1CA94C438();
  v5 = v4;
  v6 = sub_1CA94C438();
  v8 = v7;
  v9 = sub_1CA948E58();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v168 = (v11 + 15) & 0xFFFFFFFFFFFFFFF0;
  v169 = v11;
  v12 = &v148 - v168;
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v13 = qword_1EDB9F690;
  v164 = qword_1EDB9F690;
  v14 = [qword_1EDB9F690 bundleURL];
  v15 = sub_1CA948BA8();
  v167 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v166 = (v16 + 15) & 0xFFFFFFFFFFFFFFF0;
  v17 = &v148 - v166;
  sub_1CA948B68();

  v18 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v19 = sub_1CA2F9F14(v165, v5, v6, v8, 0, 0, v12, v17);
  v20 = sub_1CA25B3D0(0, &qword_1EDB9F6E0, 0x1E696B100);
  v165 = v20;
  *(inited + 80) = v19;
  *(inited + 104) = v20;
  *(inited + 112) = @"Description";
  v163 = sub_1CA25B3D0(0, &unk_1EC441790, off_1E836DD18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D0, &qword_1CA981390);
  v21 = swift_initStackObject();
  *(v21 + 16) = xmmword_1CA981310;
  *(v21 + 32) = @"DescriptionSummary";
  v22 = @"Description";
  v23 = @"DescriptionSummary";
  v24 = sub_1CA94C438();
  v161 = v25;
  v26 = sub_1CA94C438();
  v28 = v27;
  v162 = &v148;
  MEMORY[0x1EEE9AC00](v26);
  v29 = &v148 - v168;
  sub_1CA948D98();
  v30 = [v13 bundleURL];
  MEMORY[0x1EEE9AC00](v30);
  v31 = &v148 - v166;
  sub_1CA948B68();

  v32 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v33 = sub_1CA2F9F14(v24, v161, v26, v28, 0, 0, v29, v31);
  *(v21 + 64) = v165;
  *(v21 + 40) = v33;
  type metadata accessor for DescriptionKey(0);
  sub_1CA29CF44(&qword_1EC441830, type metadata accessor for DescriptionKey);
  sub_1CA94C1E8();
  v34 = v163;
  *(inited + 120) = sub_1CA6B3784();
  *(inited + 144) = v34;
  *(inited + 152) = @"IconColor";
  *(inited + 160) = 1851881795;
  *(inited + 168) = 0xE400000000000000;
  v35 = MEMORY[0x1E69E6158];
  *(inited + 184) = MEMORY[0x1E69E6158];
  *(inited + 192) = @"IconSymbol";
  *(inited + 200) = 0xD000000000000016;
  *(inited + 208) = 0x80000001CA9C8480;
  *(inited + 224) = v35;
  *(inited + 232) = @"InputPassthrough";
  v36 = MEMORY[0x1E69E6370];
  *(inited + 240) = 1;
  *(inited + 264) = v36;
  *(inited + 272) = @"Name";
  v37 = @"IconColor";
  v38 = @"IconSymbol";
  v39 = @"InputPassthrough";
  v40 = @"Name";
  v41 = sub_1CA94C438();
  v43 = v42;
  v44 = sub_1CA94C438();
  v46 = v45;
  v163 = &v148;
  MEMORY[0x1EEE9AC00](v44);
  v47 = &v148 - v168;
  sub_1CA948D98();
  v48 = [v164 bundleURL];
  MEMORY[0x1EEE9AC00](v48);
  v49 = &v148 - v166;
  sub_1CA948B68();

  v50 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(inited + 280) = sub_1CA2F9F14(v41, v43, v44, v46, 0, 0, v47, v49);
  *(inited + 304) = v165;
  *(inited + 312) = @"Output";
  v51 = @"Output";
  v52 = MEMORY[0x1E69E6158];
  v53 = sub_1CA94C1E8();
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B8, &unk_1CA985870);
  *(inited + 320) = v53;
  *(inited + 344) = v54;
  *(inited + 352) = @"ParameterCollapsingBehavior";
  *(inited + 360) = 0x726576654ELL;
  *(inited + 368) = 0xE500000000000000;
  *(inited + 384) = v52;
  *(inited + 392) = @"Parameters";
  v55 = v52;
  v161 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443910, &unk_1CA981A00);
  v163 = swift_allocObject();
  v157 = xmmword_1CA981360;
  *(v163 + 1) = xmmword_1CA981360;
  v162 = sub_1CA25B3D0(0, &qword_1EDB9F710, off_1E836EDC0);
  v153 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443D80, &unk_1CA981BA0);
  v56 = swift_initStackObject();
  v154 = xmmword_1CA981380;
  *(v56 + 16) = xmmword_1CA981380;
  *(v56 + 32) = @"Class";
  *(v56 + 40) = 0xD000000000000014;
  *(v56 + 48) = 0x80000001CA99B500;
  *(v56 + 64) = v55;
  *(v56 + 72) = @"Description";
  v152 = @"Class";
  v57 = @"ParameterCollapsingBehavior";
  v58 = @"Parameters";
  v59 = @"Description";
  v60 = sub_1CA94C438();
  v158 = v61;
  v62 = sub_1CA94C438();
  v64 = v63;
  v159 = &v148;
  MEMORY[0x1EEE9AC00](v62);
  v65 = &v148 - v168;
  sub_1CA948D98();
  v66 = [v164 bundleURL];
  MEMORY[0x1EEE9AC00](v66);
  v67 = &v148 - v166;
  sub_1CA948B68();

  v68 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v56 + 80) = sub_1CA2F9F14(v60, v158, v62, v64, 0, 0, v65, v67);
  *(v56 + 104) = v165;
  *(v56 + 112) = @"DisallowedVariableTypes";
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
  v159 = v69;
  *(v56 + 120) = &unk_1F4A03128;
  *(v56 + 144) = v69;
  *(v56 + 152) = @"Key";
  strcpy((v56 + 160), "WFMenuPrompt");
  *(v56 + 173) = 0;
  *(v56 + 174) = -5120;
  *(v56 + 184) = MEMORY[0x1E69E6158];
  *(v56 + 192) = @"Label";
  v70 = @"Key";
  v71 = @"Label";
  v155 = v70;
  v156 = v71;
  v72 = @"DisallowedVariableTypes";
  v73 = sub_1CA94C438();
  v149 = v74;
  v150 = v73;
  v75 = sub_1CA94C438();
  v148 = v76;
  v151 = &v148;
  MEMORY[0x1EEE9AC00](v75);
  v77 = v168;
  sub_1CA948D98();
  v78 = v164;
  v79 = [v164 bundleURL];
  MEMORY[0x1EEE9AC00](v79);
  v158 = inited;
  v80 = v166;
  sub_1CA948B68();

  v81 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v56 + 200) = sub_1CA2F9F14(v150, v149, v75, v148, 0, 0, &v148 - v77, &v148 - v80);
  v82 = v165;
  *(v56 + 224) = v165;
  *(v56 + 232) = @"Placeholder";
  v83 = @"Placeholder";
  v84 = sub_1CA94C438();
  v149 = v85;
  v150 = v84;
  v86 = sub_1CA94C438();
  v148 = v87;
  v151 = &v148;
  MEMORY[0x1EEE9AC00](v86);
  sub_1CA948D98();
  v88 = [v78 bundleURL];
  MEMORY[0x1EEE9AC00](v88);
  sub_1CA948B68();

  v89 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v90 = sub_1CA2F9F14(v150, v149, v86, v148, 0, 0, &v148 - v77, &v148 - v80);
  *(v56 + 264) = v82;
  *(v56 + 240) = v90;
  _s3__C3KeyVMa_0(0);
  v151 = v91;
  v150 = sub_1CA29CF44(&qword_1EDB9F780, _s3__C3KeyVMa_0);
  sub_1CA94C1E8();
  v163[4] = sub_1CA2F864C();
  v92 = swift_allocObject();
  *(v92 + 16) = v154;
  *(v92 + 32) = v152;
  *(v92 + 40) = 0xD00000000000001ELL;
  *(v92 + 48) = 0x80000001CA9C8590;
  *(v92 + 64) = MEMORY[0x1E69E6158];
  *(v92 + 72) = @"DefaultValue";
  v161 = swift_allocObject();
  *(v161 + 1) = v157;
  v93 = @"DefaultValue";
  v94 = sub_1CA94C438();
  v153 = v95;
  *&v154 = v94;
  v152 = sub_1CA94C438();
  v149 = v96;
  *&v157 = &v148;
  MEMORY[0x1EEE9AC00](v152);
  v97 = v168;
  sub_1CA948D98();
  v98 = v164;
  v99 = [v164 bundleURL];
  MEMORY[0x1EEE9AC00](v99);
  v100 = v166;
  sub_1CA948B68();

  v101 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v102 = sub_1CA2F9F14(v154, v153, v152, v149, 0, 0, &v148 - v97, &v148 - v100);
  v161[4] = v102;
  v103 = sub_1CA94C438();
  v153 = v104;
  *&v154 = v103;
  v152 = sub_1CA94C438();
  v149 = v105;
  *&v157 = &v148;
  MEMORY[0x1EEE9AC00](v152);
  sub_1CA948D98();
  v106 = [v98 bundleURL];
  MEMORY[0x1EEE9AC00](v106);
  sub_1CA948B68();

  v107 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v108 = sub_1CA2F9F14(v154, v153, v152, v149, 0, 0, &v148 - v97, &v148 - v100);
  v109 = v161;
  v161[5] = v108;
  v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443830, &qword_1CA981580);
  *(v92 + 80) = v109;
  *(v92 + 104) = v110;
  *(v92 + 112) = @"ImportQuestionBehavior";
  strcpy((v92 + 120), "NotSupported");
  *(v92 + 133) = 0;
  *(v92 + 134) = -5120;
  v111 = MEMORY[0x1E69E6158];
  v112 = v155;
  *(v92 + 144) = MEMORY[0x1E69E6158];
  *(v92 + 152) = v112;
  *(v92 + 160) = 0x7449756E654D4657;
  *(v92 + 168) = 0xEB00000000736D65;
  v113 = v156;
  *(v92 + 184) = v111;
  *(v92 + 192) = v113;
  v114 = @"ImportQuestionBehavior";
  v115 = sub_1CA94C438();
  *&v157 = v116;
  v117 = sub_1CA94C438();
  v119 = v118;
  v161 = &v148;
  MEMORY[0x1EEE9AC00](v117);
  v120 = &v148 - v168;
  sub_1CA948D98();
  v121 = [v98 bundleURL];
  MEMORY[0x1EEE9AC00](v121);
  v122 = &v148 - v166;
  sub_1CA948B68();

  v123 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v92 + 200) = sub_1CA2F9F14(v115, v157, v117, v119, 0, 0, v120, v122);
  *(v92 + 224) = v165;
  *(v92 + 232) = @"StripsTTSHints";
  *(v92 + 264) = MEMORY[0x1E69E6370];
  *(v92 + 240) = 1;
  v124 = @"StripsTTSHints";
  sub_1CA94C1E8();
  v125 = sub_1CA2F864C();
  v126 = v163;
  v163[5] = v125;
  v127 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D8, &qword_1CA981398);
  v128 = v158;
  *(v158 + 400) = v126;
  *(v128 + 424) = v127;
  *(v128 + 432) = @"ParameterSummary";
  v129 = @"ParameterSummary";
  v130 = sub_1CA94C438();
  v132 = v131;
  v133 = sub_1CA94C438();
  v135 = v134;
  v165 = &v148;
  MEMORY[0x1EEE9AC00](v133);
  v136 = &v148 - v168;
  sub_1CA948D98();
  v137 = [v164 bundleURL];
  MEMORY[0x1EEE9AC00](v137);
  v138 = &v148 - v166;
  sub_1CA948B68();

  v139 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v140 = sub_1CA2F9F14(v130, v132, v133, v135, 0, 0, v136, v138);
  v141 = [objc_allocWithZone(WFActionParameterSummary) initWithString_];

  v142 = sub_1CA25B3D0(0, &unk_1EC441800, off_1E836DD60);
  *(v128 + 440) = v141;
  *(v128 + 480) = &unk_1F4A03158;
  *(v128 + 464) = v142;
  *(v128 + 472) = @"RequiredResources";
  *(v128 + 504) = v159;
  *(v128 + 512) = @"SnappingPassthrough";
  v143 = MEMORY[0x1E69E6370];
  *(v128 + 544) = MEMORY[0x1E69E6370];
  *(v128 + 520) = 1;
  *(v128 + 552) = @"SuggestedAsInitialAction";
  *(v128 + 584) = v143;
  *(v128 + 560) = 1;
  type metadata accessor for Key(0);
  sub_1CA29CF44(&qword_1EDB9FB10, type metadata accessor for Key);
  v144 = @"RequiredResources";
  v145 = @"SnappingPassthrough";
  v146 = @"SuggestedAsInitialAction";
  sub_1CA94C1E8();
  return sub_1CA332510();
}

id sub_1CA526DA4()
{
  v140 = sub_1CA25B3D0(0, &qword_1EC4419A0, off_1E836DD08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B0, &qword_1CA981320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA9813A0;
  v1 = MEMORY[0x1E69E6158];
  *(inited + 32) = @"ActionClass";
  *(inited + 40) = 0xD000000000000011;
  *(inited + 48) = 0x80000001CA9C8690;
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
  v147 = (v12 + 15) & 0xFFFFFFFFFFFFFFF0;
  v148 = v12;
  v13 = v134 - v147;
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
  v146 = (v16 + 15) & 0xFFFFFFFFFFFFFFF0;
  v17 = v134 - v146;
  sub_1CA948B68();

  v18 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v19 = sub_1CA2F9F14(v4, v6, v7, v9, 0, 0, v13, v17);
  v20 = sub_1CA25B3D0(0, &qword_1EDB9F6E0, 0x1E696B100);
  v143 = v20;
  *(inited + 80) = v19;
  *(inited + 104) = v20;
  *(inited + 112) = @"Description";
  v142 = sub_1CA25B3D0(0, &unk_1EC441790, off_1E836DD18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D0, &qword_1CA981390);
  v21 = swift_initStackObject();
  *(v21 + 16) = xmmword_1CA9813C0;
  *(v21 + 32) = @"DescriptionInput";
  v22 = @"Description";
  v23 = @"DescriptionInput";
  v24 = sub_1CA94C438();
  v138 = v25;
  v139 = v24;
  v26 = sub_1CA94C438();
  v137 = v27;
  *&v141 = v134;
  MEMORY[0x1EEE9AC00](v26);
  v28 = v134 - v147;
  sub_1CA948D98();
  v29 = v145;
  v30 = [v145 bundleURL];
  MEMORY[0x1EEE9AC00](v30);
  v31 = v134 - v146;
  sub_1CA948B68();

  v32 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v21 + 40) = sub_1CA2F9F14(v139, v138, v26, v137, 0, 0, v28, v31);
  *(v21 + 64) = v143;
  *(v21 + 72) = @"DescriptionResult";
  v33 = @"DescriptionResult";
  v34 = sub_1CA94C438();
  v138 = v35;
  v139 = v34;
  v36 = sub_1CA94C438();
  v38 = v37;
  *&v141 = v134;
  MEMORY[0x1EEE9AC00](v36);
  v39 = v134 - v147;
  sub_1CA948D98();
  v40 = [v29 bundleURL];
  MEMORY[0x1EEE9AC00](v40);
  v41 = v146;
  sub_1CA948B68();

  v42 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v21 + 80) = sub_1CA2F9F14(v139, v138, v36, v38, 0, 0, v39, v134 - v41);
  v43 = v143;
  *(v21 + 104) = v143;
  *(v21 + 112) = @"DescriptionSummary";
  v44 = @"DescriptionSummary";
  v45 = sub_1CA94C438();
  v138 = v46;
  v139 = v45;
  v137 = sub_1CA94C438();
  v48 = v47;
  *&v141 = v134;
  MEMORY[0x1EEE9AC00](v137);
  v49 = v134 - v147;
  sub_1CA948D98();
  v50 = [v145 bundleURL];
  MEMORY[0x1EEE9AC00](v50);
  sub_1CA948B68();

  v51 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v52 = sub_1CA2F9F14(v139, v138, v137, v48, 0, 0, v49, v134 - v41);
  *(v21 + 144) = v43;
  *(v21 + 120) = v52;
  type metadata accessor for DescriptionKey(0);
  sub_1CA29CF44(&qword_1EC441830, type metadata accessor for DescriptionKey);
  sub_1CA94C1E8();
  v53 = v142;
  *(inited + 120) = sub_1CA6B3784();
  *(inited + 144) = v53;
  *(inited + 152) = @"IconColor";
  *(inited + 160) = 1851881795;
  *(inited + 168) = 0xE400000000000000;
  v54 = MEMORY[0x1E69E6158];
  *(inited + 184) = MEMORY[0x1E69E6158];
  *(inited + 192) = @"IconSymbol";
  *(inited + 200) = 0xD000000000000012;
  *(inited + 208) = 0x80000001CA9C8770;
  *(inited + 224) = v54;
  *(inited + 232) = @"Input";
  v55 = v54;
  v138 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445FB0, &qword_1CA97EE10);
  v56 = swift_initStackObject();
  v141 = xmmword_1CA981350;
  *(v56 + 16) = xmmword_1CA981350;
  *(v56 + 32) = 0x656C7069746C754DLL;
  *(v56 + 40) = 0xE800000000000000;
  v57 = MEMORY[0x1E69E6370];
  *(v56 + 48) = 0;
  *(v56 + 72) = v57;
  strcpy((v56 + 80), "ParameterKey");
  *(v56 + 93) = 0;
  *(v56 + 94) = -5120;
  strcpy((v56 + 96), "WFInputMedia");
  *(v56 + 109) = 0;
  *(v56 + 110) = -5120;
  *(v56 + 120) = v55;
  *(v56 + 128) = 0x6465726975716552;
  *(v56 + 136) = 0xE800000000000000;
  *(v56 + 144) = 1;
  *(v56 + 168) = v57;
  *(v56 + 176) = 0x7365707954;
  *(v56 + 184) = 0xE500000000000000;
  v142 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
  *(v56 + 216) = v142;
  *(v56 + 192) = &unk_1F4A03188;
  v58 = @"IconColor";
  v59 = @"IconSymbol";
  v60 = @"Input";
  v61 = sub_1CA94C1E8();
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC447DE0, &qword_1CA9917E0);
  v139 = v62;
  *(inited + 240) = v61;
  *(inited + 264) = v62;
  *(inited + 272) = @"Name";
  v63 = @"Name";
  v64 = sub_1CA94C438();
  v136 = v65;
  v66 = sub_1CA94C438();
  v68 = v67;
  v137 = v134;
  MEMORY[0x1EEE9AC00](v66);
  v69 = v147;
  sub_1CA948D98();
  v70 = [v145 bundleURL];
  MEMORY[0x1EEE9AC00](v70);
  v71 = v134 - v146;
  sub_1CA948B68();

  v72 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(inited + 280) = sub_1CA2F9F14(v64, v136, v66, v68, 0, 0, v134 - v69, v71);
  v73 = v143;
  *(inited + 304) = v143;
  *(inited + 312) = @"Output";
  v74 = swift_allocObject();
  *(v74 + 16) = v141;
  *(v74 + 32) = 0x75736F6C63736944;
  *(v74 + 40) = 0xEF6C6576654C6572;
  *(v74 + 48) = 0x63696C627550;
  *(v74 + 56) = 0xE600000000000000;
  *(v74 + 72) = MEMORY[0x1E69E6158];
  *(v74 + 80) = 0x656C7069746C754DLL;
  *(v74 + 88) = 0xE800000000000000;
  *(v74 + 96) = 0;
  *(v74 + 120) = MEMORY[0x1E69E6370];
  *(v74 + 128) = 0x614E74757074754FLL;
  *(v74 + 136) = 0xEA0000000000656DLL;
  v75 = @"Output";
  v76 = sub_1CA94C438();
  v136 = v77;
  v137 = v76;
  v78 = sub_1CA94C438();
  v80 = v79;
  v138 = v134;
  MEMORY[0x1EEE9AC00](v78);
  sub_1CA948D98();
  v81 = [v145 bundleURL];
  MEMORY[0x1EEE9AC00](v81);
  v82 = v134 - v146;
  sub_1CA948B68();

  v83 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v74 + 144) = sub_1CA2F9F14(v137, v136, v78, v80, 0, 0, v134 - v69, v82);
  *(v74 + 168) = v73;
  *(v74 + 176) = 0x7365707954;
  *(v74 + 216) = v142;
  *(v74 + 184) = 0xE500000000000000;
  *(v74 + 192) = &unk_1F4A031B8;
  v84 = MEMORY[0x1E69E6158];
  *(inited + 320) = sub_1CA94C1E8();
  *(inited + 344) = v139;
  *(inited + 352) = @"Parameters";
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443910, &unk_1CA981A00);
  v139 = swift_allocObject();
  *(v139 + 16) = xmmword_1CA9813B0;
  v138 = sub_1CA25B3D0(0, &qword_1EDB9F710, off_1E836EDC0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443D80, &unk_1CA981BA0);
  v85 = swift_allocObject();
  *(v85 + 16) = v141;
  *(v85 + 32) = @"Class";
  *(v85 + 40) = 0xD000000000000019;
  *(v85 + 48) = 0x80000001CA99B030;
  *(v85 + 64) = v84;
  *(v85 + 72) = @"Key";
  strcpy((v85 + 80), "WFInputMedia");
  *(v85 + 93) = 0;
  *(v85 + 94) = -5120;
  *(v85 + 104) = v84;
  *(v85 + 112) = @"Label";
  v86 = @"Parameters";
  v87 = @"Class";
  v88 = @"Key";
  v89 = @"Label";
  v90 = sub_1CA94C438();
  v136 = v91;
  v137 = v90;
  v92 = sub_1CA94C438();
  v135 = v93;
  *&v141 = v134;
  MEMORY[0x1EEE9AC00](v92);
  v94 = v134 - v147;
  sub_1CA948D98();
  v95 = v145;
  v96 = [v145 bundleURL];
  v134[1] = v134;
  MEMORY[0x1EEE9AC00](v96);
  v97 = v134 - v146;
  sub_1CA948B68();

  v98 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v85 + 120) = sub_1CA2F9F14(v137, v136, v92, v135, 0, 0, v94, v97);
  v99 = v143;
  *(v85 + 144) = v143;
  *(v85 + 152) = @"Placeholder";
  v100 = @"Placeholder";
  v101 = sub_1CA94C438();
  v136 = v102;
  v137 = v101;
  v135 = sub_1CA94C438();
  v104 = v103;
  *&v141 = v134;
  MEMORY[0x1EEE9AC00](v135);
  v105 = v134 - v147;
  sub_1CA948D98();
  v106 = [v95 bundleURL];
  MEMORY[0x1EEE9AC00](v106);
  v107 = v134 - v146;
  sub_1CA948B68();

  v108 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v109 = sub_1CA2F9F14(v137, v136, v135, v104, 0, 0, v105, v107);
  *(v85 + 184) = v99;
  *(v85 + 160) = v109;
  _s3__C3KeyVMa_0(0);
  sub_1CA29CF44(&qword_1EDB9F780, _s3__C3KeyVMa_0);
  sub_1CA94C1E8();
  v110 = sub_1CA2F864C();
  v111 = v139;
  *(v139 + 32) = v110;
  v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D8, &qword_1CA981398);
  *(inited + 360) = v111;
  *(inited + 384) = v112;
  *(inited + 392) = @"ParameterSummary";
  v113 = @"ParameterSummary";
  v114 = sub_1CA94C438();
  v116 = v115;
  v117 = sub_1CA94C438();
  v119 = v118;
  v143 = v134;
  MEMORY[0x1EEE9AC00](v117);
  v120 = v134 - v147;
  sub_1CA948D98();
  v121 = [v145 bundleURL];
  MEMORY[0x1EEE9AC00](v121);
  v122 = v134 - v146;
  sub_1CA948B68();

  v123 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v124 = sub_1CA2F9F14(v114, v116, v117, v119, 0, 0, v120, v122);
  v125 = [objc_allocWithZone(WFActionParameterSummary) initWithString_];

  v126 = sub_1CA25B3D0(0, &unk_1EC441800, off_1E836DD60);
  *(inited + 400) = v125;
  *(inited + 424) = v126;
  *(inited + 432) = @"RequiredResources";
  *(inited + 440) = &unk_1F4A031E8;
  v127 = v142;
  *(inited + 464) = v142;
  *(inited + 472) = @"UserInterfaceClasses";
  v128 = @"RequiredResources";
  v129 = @"UserInterfaceClasses";
  v130 = sub_1CA94C1E8();
  v131 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B8, &unk_1CA985870);
  *(inited + 480) = v130;
  *(inited + 504) = v131;
  *(inited + 512) = @"UserInterfaces";
  *(inited + 544) = v127;
  *(inited + 520) = &unk_1F4A03278;
  type metadata accessor for Key(0);
  sub_1CA29CF44(&qword_1EDB9FB10, type metadata accessor for Key);
  v132 = @"UserInterfaces";
  sub_1CA94C1E8();
  return sub_1CA332510();
}

id sub_1CA527F48()
{
  v30[0] = sub_1CA25B3D0(0, &qword_1EC4419A0, off_1E836DD08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B0, &qword_1CA981320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA981380;
  v1 = MEMORY[0x1E69E6158];
  *(inited + 32) = @"ActionClass";
  *(inited + 40) = 0xD000000000000019;
  *(inited + 48) = 0x80000001CA9A51B0;
  *(inited + 64) = v1;
  *(inited + 72) = @"AppDefinition";
  v2 = @"ActionClass";
  v3 = @"AppDefinition";
  v4 = sub_1CA94C1E8();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B8, &unk_1CA985870);
  *(inited + 80) = v4;
  *(inited + 104) = v5;
  *(inited + 112) = @"Name";
  v6 = @"Name";
  v7 = sub_1CA94C438();
  v9 = v8;
  v10 = sub_1CA94C438();
  v12 = v11;
  v13 = sub_1CA948E58();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = v30 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v17 = [qword_1EDB9F690 bundleURL];
  v18 = sub_1CA948BA8();
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v21 = v30 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CA948B68();

  v22 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v23 = sub_1CA2F9F14(v7, v9, v10, v12, 0, 0, v16, v21);
  v24 = sub_1CA25B3D0(0, &qword_1EDB9F6E0, 0x1E696B100);
  *(inited + 120) = v23;
  *(inited + 144) = v24;
  *(inited + 152) = @"RequiredResources";
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
  *(inited + 160) = &unk_1F4A032F8;
  *(inited + 184) = v25;
  *(inited + 192) = @"ResidentCompatible";
  *(inited + 224) = MEMORY[0x1E69E6370];
  *(inited + 200) = 1;
  v26 = @"RequiredResources";
  v27 = @"ResidentCompatible";
  v28 = sub_1CA94C368();
  *(inited + 264) = MEMORY[0x1E69E6158];
  *(inited + 232) = v28;
  *(inited + 240) = 0xD000000000000014;
  *(inited + 248) = 0x80000001CA993920;
  type metadata accessor for Key(0);
  sub_1CA2ECC50();
  sub_1CA94C1E8();
  return sub_1CA332510();
}

void sub_1CA5282F8()
{
  if (MEMORY[0x1E69E7CC0] >> 62 && sub_1CA94D328())
  {

    sub_1CA2E85F8();
  }
}

void WFContentProperty.toolkitTypeInstance(classDescriptor:seen:isDeferrable:)(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t **a4@<X8>)
{
  v6 = v5;
  v7 = v4;
  v312 = a3;
  v291 = a2;
  v315 = a1;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC445A40, &unk_1CA983150);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  OUTLINED_FUNCTION_19_0(v267 - v11);
  v12 = sub_1CA94B668();
  v13 = OUTLINED_FUNCTION_1_0(v12);
  v313 = v14;
  v314 = v13;
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_6_2();
  v309 = v17;
  v303 = sub_1CA94B618();
  v18 = OUTLINED_FUNCTION_1_0(v303);
  v302 = v19;
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_6_2();
  OUTLINED_FUNCTION_19_0(v22);
  v318 = sub_1CA94ADC8();
  v23 = OUTLINED_FUNCTION_1_0(v318);
  v25 = v24;
  v27 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_3_1();
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_45_0();
  v304 = v29;
  OUTLINED_FUNCTION_31_2();
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_45_0();
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v31);
  v323 = (v267 - v32);
  v305 = type metadata accessor for WFContentItem.ToolKitTypeResolutionContext(0);
  v33 = *(*(v305 - 8) + 64);
  MEMORY[0x1EEE9AC00](v305);
  OUTLINED_FUNCTION_3_1();
  v308 = v34;
  OUTLINED_FUNCTION_31_2();
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_19_0(v267 - v36);
  v289 = sub_1CA94B008();
  v37 = OUTLINED_FUNCTION_1_0(v289);
  v296 = v38;
  v40 = *(v39 + 64);
  MEMORY[0x1EEE9AC00](v37);
  OUTLINED_FUNCTION_6_2();
  OUTLINED_FUNCTION_19_0(v41);
  v287 = sub_1CA94AFB8();
  v42 = OUTLINED_FUNCTION_1_0(v287);
  v286 = v43;
  v45 = *(v44 + 64);
  MEMORY[0x1EEE9AC00](v42);
  OUTLINED_FUNCTION_6_2();
  OUTLINED_FUNCTION_19_0(v46);
  v294 = sub_1CA94AFD8();
  v47 = OUTLINED_FUNCTION_1_0(v294);
  v293 = v48;
  v50 = *(v49 + 64);
  MEMORY[0x1EEE9AC00](v47);
  OUTLINED_FUNCTION_6_2();
  OUTLINED_FUNCTION_19_0(v51);
  v52 = sub_1CA94AD08();
  v53 = OUTLINED_FUNCTION_1_0(v52);
  v320 = v54;
  v56 = *(v55 + 64);
  MEMORY[0x1EEE9AC00](v53);
  OUTLINED_FUNCTION_3_1();
  v311 = v57;
  OUTLINED_FUNCTION_31_2();
  MEMORY[0x1EEE9AC00](v58);
  OUTLINED_FUNCTION_45_0();
  v310 = v59;
  OUTLINED_FUNCTION_31_2();
  MEMORY[0x1EEE9AC00](v60);
  OUTLINED_FUNCTION_45_0();
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v61);
  v319 = (v267 - v62);
  v63 = sub_1CA94B5F8();
  v316 = OUTLINED_FUNCTION_1_0(v63);
  *&v317 = v64;
  v66 = *(v65 + 64);
  MEMORY[0x1EEE9AC00](v316);
  OUTLINED_FUNCTION_3_1();
  OUTLINED_FUNCTION_9();
  v68 = MEMORY[0x1EEE9AC00](v67);
  v70 = v267 - v69;
  MEMORY[0x1EEE9AC00](v68);
  v72 = (v267 - v71);
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC444368, &unk_1CA988BC0);
  v74 = *(*(v73 - 8) + 64);
  MEMORY[0x1EEE9AC00](v73 - 8);
  OUTLINED_FUNCTION_3_1();
  v307 = v75;
  OUTLINED_FUNCTION_31_2();
  MEMORY[0x1EEE9AC00](v76);
  OUTLINED_FUNCTION_45_0();
  v306 = v77;
  OUTLINED_FUNCTION_31_2();
  MEMORY[0x1EEE9AC00](v78);
  OUTLINED_FUNCTION_45_0();
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v79);
  v81 = (v267 - v80);
  v82 = sub_1CA94CD98();
  if (!v82 || (v282 = v82, (v83 = sub_1CA94CD98()) == 0) || (v84 = dynamic_cast_existential_1_conditional(v83)) == 0)
  {
    sub_1CA52A1C8();
    swift_allocError();
    *v114 = 1;
    swift_willThrow();
    return;
  }

  v277 = v70;
  v274 = v85;
  v275 = v84;
  sub_1CA94B608();
  v86 = v317;
  v87 = *(v317 + 88);
  v88 = OUTLINED_FUNCTION_23();
  v273 = v89;
  v272 = v90;
  v91 = v90(v88);
  v92 = *MEMORY[0x1E69DB460];
  v280 = v52;
  v283 = v81;
  v276 = v25;
  v93 = v323;
  v270 = v92;
  if (v91 == v92)
  {
    goto LABEL_29;
  }

  if (v91 != *MEMORY[0x1E69DB450])
  {
    v115 = v91 == *MEMORY[0x1E69DB468] || v91 == *MEMORY[0x1E69DB458];
    v86 = v317;
    if (!v115)
    {
LABEL_92:
      sub_1CA94D7E8();
      __break(1u);
      return;
    }

LABEL_29:
    v116 = *(v86 + 8);
    v117 = OUTLINED_FUNCTION_23();
    v118(v117);
    v119 = 1;
    OUTLINED_FUNCTION_46();
    v120 = v318;
    __swift_storeEnumTagSinglePayload(v121, v122, v123, v318);
    LODWORD(v297) = 0;
    goto LABEL_30;
  }

  v281 = v4;
  v94 = *(v317 + 96);
  v95 = OUTLINED_FUNCTION_23();
  v96(v95);
  v97 = *v72;
  v98 = v72[1];
  v99 = v72[2];
  v7 = v72[3];
  v100 = [objc_opt_self() sharedProvider];
  v101 = sub_1CA94C368();

  v267[1] = v99;
  v269 = v7;
  v102 = sub_1CA94C368();
  v103 = [v100 entityWithIdentifier:v101 fromBundleIdentifier:v102];

  if (!v103)
  {
    goto LABEL_51;
  }

  v271 = a4;
  v267[2] = v5;
  v268 = v103;
  v104 = [v103 properties];
  sub_1CA25B3D0(0, &unk_1EC4419B0, 0x1E69AC958);
  v52 = sub_1CA94C658();

  a4 = sub_1CA25B410(v52);
  v105 = 0;
  v279 = v52 & 0xC000000000000001;
  v278 = v52 & 0xFFFFFFFFFFFFFF8;
  while (1)
  {
    if (a4 == v105)
    {

      OUTLINED_FUNCTION_19_17();
      v103 = v268;
      goto LABEL_51;
    }

    if (v279)
    {
      v106 = MEMORY[0x1CCAA22D0](v105, v52);
    }

    else
    {
      if (v105 >= *(v278 + 16))
      {
        goto LABEL_91;
      }

      v106 = *(v52 + 8 * v105 + 32);
    }

    v107 = v106;
    if (__OFADD__(v105, 1))
    {
      __break(1u);
LABEL_91:
      __break(1u);
      goto LABEL_92;
    }

    v81 = sub_1CA3F132C(v106, &selRef_identifier);
    v7 = v108;
    v6 = [v281 name];
    v109 = sub_1CA94C3A8();
    v111 = v110;

    if (!v7)
    {

      goto LABEL_21;
    }

    if (v81 == v109 && v7 == v111)
    {
      break;
    }

    v113 = sub_1CA94D7F8();

    if (v113)
    {
      goto LABEL_56;
    }

LABEL_21:

    ++v105;
    OUTLINED_FUNCTION_15_17();
    v93 = v323;
  }

LABEL_56:

  v7 = &selRef_temporaryDirectoryURL;
  v194 = [v107 valueType];
  v81 = 0x1E69AC000;
  OUTLINED_FUNCTION_19_17();
  v124 = v277;
  if (v195)
  {
    v196 = v195;
    objc_opt_self();
    v197 = swift_dynamicCastObjCClass() != 0;
  }

  else
  {
    v197 = 0;
  }

  v220 = [v107 valueType];
  if (!v220)
  {
LABEL_81:
    OUTLINED_FUNCTION_15_17();
    if (!v197)
    {
      goto LABEL_86;
    }

    goto LABEL_82;
  }

  v221 = v220;
  objc_opt_self();
  v222 = swift_dynamicCastObjCClass();
  if (!v222)
  {

    goto LABEL_81;
  }

  v52 = [v222 memberValueType];

  if (!v52)
  {
    goto LABEL_81;
  }

  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {

    OUTLINED_FUNCTION_15_17();
    goto LABEL_83;
  }

  OUTLINED_FUNCTION_15_17();
  if (v197)
  {
LABEL_82:

LABEL_83:
    v93 = v323;
    OUTLINED_FUNCTION_46();
    __swift_storeEnumTagSinglePayload(v261, v262, v263, v318);
    OUTLINED_FUNCTION_6_34();
    goto LABEL_84;
  }

LABEL_86:
  v93 = v323;
  v103 = v268;
  if (v107)
  {
    v52 = v107;
    v265 = [v52 valueType];
    v7 = v269;
    v5 = v6;
    sub_1CA94CB58();
    if (v6)
    {

      return;
    }

    v266 = v297;
    __swift_storeEnumTagSinglePayload(v297, 0, 1, v318);
    sub_1CA52A350(v266, 0x1E69AC000);
    OUTLINED_FUNCTION_6_34();
    v124 = v277;
LABEL_84:
    v119 = ([v107 capabilities] & 2) == 0;
    v264 = v107;
    LODWORD(v297) = [v264 isOptional];

    v120 = v318;
    goto LABEL_31;
  }

LABEL_51:

  v119 = 1;
  v52 = v297;
  OUTLINED_FUNCTION_46();
  v120 = v318;
  __swift_storeEnumTagSinglePayload(v182, v183, v184, v318);
  sub_1CA52A350(v52, v81);

  LODWORD(v297) = 0;
  OUTLINED_FUNCTION_6_34();
LABEL_30:
  v124 = v277;
LABEL_31:
  v125 = [v7 hasPossibleValues];
  LODWORD(v323) = v119;
  if (v125)
  {
    v126 = [objc_msgSend(v7 possibleValues)];
    swift_unknownObjectRelease();
    if (v126)
    {
      sub_1CA25B3D0(0, &unk_1EC441810, off_1E836E808);
      if (swift_dynamicCastMetatype())
      {
        v321 = 0;
        v322 = 0;
        static WFToolKitContentItem.toolkitTypeInstance(for:seen:)(&v321, v291, v275, v274, v290);
        if (v6)
        {
          sub_1CA52A2F4(v81, &qword_1EC444368);
          return;
        }

        v178 = v319;
        v191 = *(v320 + 32);
        v192 = OUTLINED_FUNCTION_13_25();
        v193(v192);
      }

      else
      {
        v160 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4462E8, &qword_1CA98AD78) + 48);
        v281 = v7;
        v161 = v285;
        v162 = (v285 + v160);
        (*(v302 + 16))(v285, v315, v303);
        v163 = [v281 name];
        v164 = sub_1CA94C3A8();
        v166 = v165;

        *v162 = v164;
        v162[1] = v166;
        (*(v286 + 104))(v161, *MEMORY[0x1E69DB170], v287);
        sub_1CA94B5E8();
        v167 = v292;
        sub_1CA94AFC8();
        LODWORD(v163) = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4462F0, &qword_1CA989EB0) + 48);
        v168 = v295;
        (*(v293 + 16))(v295, v167, v294);
        sub_1CA94AE18();
        v169 = v289;
        (*(v296 + 104))(v168, *MEMORY[0x1E69DB1C0], v289);
        v170 = [v281 measurementUnitType];
        if (v170)
        {
          type metadata accessor for WFMeasurementUnitType(0);
          v172 = v171;
          v173 = MEMORY[0x1E69DB4C8];
        }

        else
        {
          v172 = 0;
          v173 = 0;
        }

        v198 = v305;
        v199 = v288;
        (*(v313 + 104))(v288 + *(v305 + 20), *MEMORY[0x1E69DB488], v314);
        v200 = v199 + *(v198 + 24);
        _sSo13WFContentItemC11WorkflowKitE04ToolD21TypeResolutionContextV015measurementUnitF8Provider011outputValueF027displayRepresentationConfig012localizationH0AE0eD0011MeasurementjfK0_pSg_So07LNValueF0CSgAJ07DisplayO13ConfigurationVSo014WFLocalizationH0CtcfcfA1__0();
        v201 = [objc_opt_self() defaultContext];
        *v199 = v170;
        v199[1] = 0;
        v199[2] = 0;
        v199[3] = v172;
        v199[4] = v173;
        *(v199 + *(v198 + 28)) = v201;
        v202 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC445FD0, &qword_1CA989E10);
        v203 = swift_allocBox();
        v52 = v204;
        OUTLINED_FUNCTION_16_22();
        OUTLINED_FUNCTION_18_20();
        v205();
        if (v5)
        {
          sub_1CA502C48(v199);
          (*(v296 + 8))(v295, v169);
          v206 = OUTLINED_FUNCTION_8_23();
          v207(v206);
          sub_1CA52A2F4(v81, &qword_1EC444368);
          swift_deallocBox();
          return;
        }

        v318 = *(v202 + 48);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4439B0, qword_1CA98AD80);
        v208 = v296;
        v209 = *(v296 + 72);
        v210 = (*(v296 + 80) + 32) & ~*(v296 + 80);
        v211 = swift_allocObject();
        *(v211 + 16) = xmmword_1CA981310;
        v212 = *(v208 + 16);
        v213 = v211 + v210;
        v81 = v283;
        *&v317 = v203;
        v214 = v295;
        v212(v213, v295, v169);
        sub_1CA502C48(v199);
        (*(v208 + 8))(v214, v169);
        v215 = OUTLINED_FUNCTION_8_23();
        v216(v215);
        *(v52 + v318) = v211;
        v178 = v319;
        *v319 = v317;
        v217 = *MEMORY[0x1E69DAF20];
        v218 = OUTLINED_FUNCTION_11_26();
        v219(v218);
        v7 = v281;
      }
    }

    else
    {
      v131 = v299;
      static WFContentItem.classDescriptor.getter();
      sub_1CA94B608();
      (*(v302 + 8))(v131, v303);
      v132 = v316;
      OUTLINED_FUNCTION_14_22();
      v134 = v133();
      if (v134 == *MEMORY[0x1E69DB450] || v134 == *MEMORY[0x1E69DB468])
      {
        (*(v317 + 96))(v124, v132);
        v135 = *v124;
        v136 = *(v124 + 1);
        v317 = *(v124 + 1);
        v137 = swift_allocObject();
        *(v137 + 16) = v317;
        *(v137 + 32) = v135;
        *(v137 + 40) = v136;
        *v93 = v137;
        v138 = *MEMORY[0x1E69DB098];
        v139 = OUTLINED_FUNCTION_7_29();
        v140(v139);
      }

      else
      {
        v185 = v284;
        sub_1CA94B608();
        v186 = v316;
        OUTLINED_FUNCTION_14_22();
        if (v187() == v270)
        {
          (*(v317 + 96))(v185, v186);
          v188 = v185[1];
          v321 = *v185;
          v322 = v188;
          MEMORY[0x1CCAA1300](46, 0xE100000000000000);
          v189 = v321;
          v190 = v322;
        }

        else
        {
          (*(v317 + 8))(v185, v186);
          v189 = 0;
          v190 = 0xE000000000000000;
        }

        v135 = swift_allocObject();
        v223 = *MEMORY[0x1E69E0FB0];
        v135[2] = sub_1CA94C3A8();
        v135[3] = v224;
        v321 = v189;
        v322 = v190;
        v225 = [v7 name];
        v226 = sub_1CA94C3A8();
        v81 = v7;
        v228 = v227;

        v136 = &v321;
        MEMORY[0x1CCAA1300](v226, v228);
        v7 = v81;

        v229 = v322;
        v135[4] = v321;
        v135[5] = v229;
        *v93 = v135;
        v230 = *MEMORY[0x1E69DB098];
        v231 = OUTLINED_FUNCTION_7_29();
        v232(v231);
        (*(v317 + 8))(v124, v316);
        v52 = v280;
        OUTLINED_FUNCTION_15_17();
      }

      v233 = swift_allocBox();
      v235 = OUTLINED_FUNCTION_10_22(v233, v234);
      (v136[4])(v235, v93);
      v178 = v319;
      *v319 = v135;
      (*(v320 + 104))(v178, *MEMORY[0x1E69DAF30], v52);
    }
  }

  else
  {
    v271 = a4;
    v127 = v306;
    sub_1CA52A21C(v81, v306);
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v127, 1, v120);
    v129 = MEMORY[0x1E69DAF30];
    if (EnumTagSinglePayload == 1)
    {
      sub_1CA52A2F4(v127, &qword_1EC444368);
      v130 = v309;
      (*(v313 + 104))(v309, *MEMORY[0x1E69DB488], v314);
    }

    else
    {
      v141 = v276;
      v142 = v298;
      (*(v276 + 32))(v298, v127, v120);
      v143 = swift_allocBox();
      v145 = OUTLINED_FUNCTION_10_22(v143, v144);
      (*(v141 + 16))(v145, v142, v318);
      v146 = v300;
      *v300 = v120;
      v147 = v280;
      (*(v320 + 104))(v146, *v129, v280);
      v148 = v147;
      v120 = v318;
      __swift_storeEnumTagSinglePayload(v146, 0, 1, v148);
      v130 = v309;
      sub_1CA94B658();
      sub_1CA52A2F4(v146, &unk_1EC445A40);
      (*(v141 + 8))(v142, v120);
    }

    v150 = v307;
    v149 = v308;
    sub_1CA52A21C(v81, v307);
    if (__swift_getEnumTagSinglePayload(v150, 1, v120) == 1)
    {
      sub_1CA52A2F4(v150, &qword_1EC444368);
      v149[3] = sub_1CA25B3D0(0, &unk_1EC4419D0, 0x1E6996D88);
      v149[4] = sub_1CA52A28C();
      *v149 = v7;
      v151 = v305;
      v152 = v313;
      v153 = v130;
      v154 = v130;
      v155 = v314;
      (*(v313 + 16))(v149 + *(v305 + 20), v153, v314);
      v156 = *(v151 + 24);
      v157 = v7;
      _sSo13WFContentItemC11WorkflowKitE04ToolD21TypeResolutionContextV015measurementUnitF8Provider011outputValueF027displayRepresentationConfig012localizationH0AE0eD0011MeasurementjfK0_pSg_So07LNValueF0CSgAJ07DisplayO13ConfigurationVSo014WFLocalizationH0CtcfcfA1__0();
      *(v149 + *(v151 + 28)) = [objc_opt_self() defaultContext];
      OUTLINED_FUNCTION_16_22();
      v158 = v301;
      OUTLINED_FUNCTION_18_20();
      v159();
      if (v5)
      {
        (*(v152 + 8))(v154, v155);
        sub_1CA52A2F4(v81, &qword_1EC444368);
        sub_1CA502C48(v149);
        return;
      }

      (*(v152 + 8))(v154, v155);
      sub_1CA502C48(v149);
      v150 = v158;
      v120 = v318;
    }

    else
    {
      (*(v313 + 8))(v130, v314);
    }

    v174 = *(v276 + 32);
    v52 = v304;
    v174(v304, v150, v120);
    v175 = swift_allocBox();
    v177 = OUTLINED_FUNCTION_10_22(v175, v176);
    (v174)(v177, v52);
    v178 = v319;
    *v319 = v120;
    v179 = *MEMORY[0x1E69DAF30];
    v180 = OUTLINED_FUNCTION_11_26();
    v181(v180);
    a4 = v271;
  }

  v236 = [v7 multipleValues];
  sub_1CA52A2F4(v81, &qword_1EC444368);
  if (v236)
  {
    v237 = swift_allocBox();
    v239 = OUTLINED_FUNCTION_10_22(v237, v238);
    v240 = v320;
    v241 = *(v320 + 32);
    v241(v239, v319, v52);
    v242 = v310;
    *v310 = v236;
    v243 = v242;
    v244 = v240;
    v178 = v319;
    (*(v244 + 104))(v243, *MEMORY[0x1E69DAF18], v52);
  }

  else
  {
    v241 = *(v320 + 32);
    v245 = OUTLINED_FUNCTION_23();
    (v241)(v245);
  }

  v246 = OUTLINED_FUNCTION_13_25();
  (v241)(v246);
  if (v297)
  {
    v247 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC446720, &qword_1CA98AD70);
    v248 = swift_allocBox();
    v249 = *(v247 + 48);
    v241(v250, v319, v280);
    sub_1CA94AC88();
    v52 = v280;
    OUTLINED_FUNCTION_46();
    __swift_storeEnumTagSinglePayload(v251, v252, v253, v254);
    v255 = v311;
    *v311 = v248;
    v178 = v319;
    (*(v320 + 104))(v255, *MEMORY[0x1E69DAF48], v52);
  }

  else
  {
    v255 = v311;
    v256 = OUTLINED_FUNCTION_23();
    (v241)(v256);
  }

  v257 = OUTLINED_FUNCTION_13_25();
  (v241)(v257);
  if (v323 & 1 | ((v312 & 1) == 0))
  {
    v241(a4, v178, v52);
  }

  else
  {
    v258 = swift_allocBox();
    v260 = OUTLINED_FUNCTION_10_22(v258, v259);
    v241(v260, v178, v52);
    *a4 = v255;
    (*(v320 + 104))(a4, *MEMORY[0x1E69DAF40], v52);
  }
}

void WFContentProperty.toolkitEntityPropertyDefinition(classDescriptor:localizationContext:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v39 = a2;
  v40 = a3;
  v5 = sub_1CA94B5F8();
  v6 = OUTLINED_FUNCTION_1_0(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v12 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1CA94AD08();
  v14 = OUTLINED_FUNCTION_1_0(v13);
  v16 = v15;
  v18 = *(v17 + 64);
  v19 = MEMORY[0x1EEE9AC00](v14);
  v21 = &v35 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v23 = &v35 - v22;
  v38 = v3;
  v24 = v41;
  WFContentProperty.toolkitTypeInstance(classDescriptor:seen:isDeferrable:)(a1, MEMORY[0x1E69E7CC0], 1, (&v35 - v22));
  if (!v24)
  {
    v35 = 0;
    v36 = v21;
    v37 = v16;
    v41 = v13;
    sub_1CA94B608();
    v25 = (*(v8 + 88))(v12, v5);
    v26 = *MEMORY[0x1E69DB450];
    (*(v8 + 8))(v12, v5);
    v27 = v25 == v26;
    v28 = v38;
    if (!v27 || (sub_1CA3F132C(v38, &selRef_linkPropertyIdentifier), !v29))
    {
      v30 = [v28 name];
      sub_1CA94C3A8();
    }

    v31 = v36;
    v32 = [v28 localizedNameWithContext_];
    sub_1CA94C3A8();

    v33 = v37;
    v34 = v41;
    (*(v37 + 16))(v31, v23, v41);
    sub_1CA94B528();
    (*(v33 + 8))(v23, v34);
  }
}

uint64_t WFContentProperty.associatedEnumMetadataIfAvailable()()
{
  v1 = [v0 userInfo];
  if (!v1)
  {
    return 0;
  }

  v7 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC444480, &unk_1CA983520);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC444490, &qword_1CA983530);
  if ((swift_dynamicCast() & 1) == 0)
  {
    return 0;
  }

  v2 = sub_1CA94C3A8();
  v4 = sub_1CA323E28(v2, v3);

  if (!v4)
  {
    return 0;
  }

  swift_unknownObjectRetain();
  if ((swift_dynamicCast() & 1) == 0)
  {
    swift_unknownObjectRelease();
    return 0;
  }

  sub_1CA25B3D0(0, &qword_1EC446300, 0x1E696ACD0);
  sub_1CA25B3D0(0, &qword_1EC441A80, 0x1E69AC830);
  v5 = sub_1CA94CCD8();
  sub_1CA266F2C(v7, v8);
  swift_unknownObjectRelease();
  return v5;
}

uint64_t WFContentProperty.toolkitUnitType.getter()
{
  v1 = [v0 measurementUnitType];
  if (!v1)
  {
    return 22;
  }

  v2 = v1;
  v3 = sub_1CA94CE98();

  return v3;
}

unint64_t sub_1CA52A1C8()
{
  result = qword_1EC4462E0;
  if (!qword_1EC4462E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4462E0);
  }

  return result;
}

uint64_t sub_1CA52A21C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC444368, &unk_1CA988BC0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1CA52A28C()
{
  result = qword_1EC4419E0;
  if (!qword_1EC4419E0)
  {
    sub_1CA25B3D0(255, &unk_1EC4419D0, 0x1E6996D88);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4419E0);
  }

  return result;
}