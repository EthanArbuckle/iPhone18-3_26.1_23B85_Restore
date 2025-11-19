double sub_1C8D50C50@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1C8D509B4(a1, v6);
  if (!v2)
  {
    result = *v6;
    v5 = v6[1];
    *a2 = v6[0];
    *(a2 + 16) = v5;
    *(a2 + 32) = v7;
  }

  return result;
}

double sub_1C8D50CB0@<D0>(uint64_t a1@<X8>)
{
  sub_1C8D50CF4(v4);
  result = *v4;
  v3 = v4[1];
  *a1 = v4[0];
  *(a1 + 16) = v3;
  *(a1 + 32) = v5;
  return result;
}

uint64_t sub_1C8D50CF4@<X0>(void *a1@<X8>)
{
  if (qword_1EC311228 != -1)
  {
    OUTLINED_FUNCTION_0_18();
  }

  v2 = sub_1C9062E6C();
  OUTLINED_FUNCTION_10(v2, qword_1EC390810);
  sub_1C9062E5C();
  sub_1C8E2B4F8();
  v4 = v3;

  if (qword_1EC311230 != -1)
  {
    OUTLINED_FUNCTION_2_11();
  }

  OUTLINED_FUNCTION_10(v2, qword_1EC390828);
  sub_1C9062E5C();
  sub_1C8E2B294();
  v6 = v5;
  v8 = v7;

  if (qword_1EC311238 != -1)
  {
    OUTLINED_FUNCTION_1_14();
  }

  OUTLINED_FUNCTION_10(v2, qword_1EC390840);
  sub_1C9062E5C();
  sub_1C8E2B294();
  v10 = v9;
  v12 = v11;

  *a1 = v4;
  a1[1] = v6;
  a1[2] = v8;
  a1[3] = v10;
  a1[4] = v12;
  return result;
}

uint64_t sub_1C8D50E78()
{
  sub_1C8D51220();

  return sub_1C9062B4C();
}

uint64_t sub_1C8D50F70()
{
  if (qword_1EC311228 != -1)
  {
    OUTLINED_FUNCTION_0_18();
  }

  v1 = sub_1C9062E6C();
  OUTLINED_FUNCTION_10(v1, qword_1EC390810);
  sub_1C9062E5C();
  v3 = *v0;
  sub_1C9062BFC();
  if (qword_1EC311230 != -1)
  {
    OUTLINED_FUNCTION_2_11();
  }

  OUTLINED_FUNCTION_10(v1, qword_1EC390828);
  sub_1C9062E5C();
  v4 = v0[1];
  v6 = v0[2];

  sub_1C9062BFC();
  if (qword_1EC311238 != -1)
  {
    OUTLINED_FUNCTION_1_14();
  }

  OUTLINED_FUNCTION_10(v1, qword_1EC390840);
  sub_1C9062E5C();
  v5 = v0[3];
  v7 = v0[4];

  return sub_1C9062BFC();
}

uint64_t sub_1C8D510F8()
{
  v0 = qword_1EC313C58;

  return v0;
}

unint64_t sub_1C8D51134()
{
  result = qword_1EC313C68;
  if (!qword_1EC313C68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC313C68);
  }

  return result;
}

unint64_t sub_1C8D5118C(void *a1)
{
  a1[1] = sub_1C8D511CC();
  a1[2] = sub_1C8D51220();
  a1[3] = sub_1C8D51274();
  result = sub_1C8D512C8();
  a1[4] = result;
  return result;
}

unint64_t sub_1C8D511CC()
{
  result = qword_1EC313C70;
  if (!qword_1EC313C70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC313C70);
  }

  return result;
}

unint64_t sub_1C8D51220()
{
  result = qword_1EC313C78;
  if (!qword_1EC313C78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC313C78);
  }

  return result;
}

unint64_t sub_1C8D51274()
{
  result = qword_1EC313C80;
  if (!qword_1EC313C80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC313C80);
  }

  return result;
}

unint64_t sub_1C8D512C8()
{
  result = qword_1EC313C88;
  if (!qword_1EC313C88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC313C88);
  }

  return result;
}

unint64_t sub_1C8D51320()
{
  result = qword_1EC313C90;
  if (!qword_1EC313C90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC313C90);
  }

  return result;
}

unint64_t sub_1C8D51374()
{
  result = qword_1EC313CA0;
  if (!qword_1EC313CA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC313CA0);
  }

  return result;
}

uint64_t sub_1C8D513F8(uint64_t a1, uint64_t *a2)
{
  v3 = sub_1C9062E6C();
  __swift_allocate_value_buffer(v3, a2);
  OUTLINED_FUNCTION_10(v3, a2);
  sub_1C8D51374();
  return sub_1C9062E8C();
}

_BYTE *storeEnumTagSinglePayload for ToolCascadeSharedIdentifierRecord.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1C8D51550()
{
  result = qword_1EC313CB0;
  if (!qword_1EC313CB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC313CB0);
  }

  return result;
}

unint64_t sub_1C8D515A8()
{
  result = qword_1EC313CB8;
  if (!qword_1EC313CB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC313CB8);
  }

  return result;
}

unint64_t sub_1C8D51600()
{
  result = qword_1EC313CC0;
  if (!qword_1EC313CC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC313CC0);
  }

  return result;
}

uint64_t RuntimePlatformVersion.init(protobuf:)@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = a1[2];
  v6 = *(a1 + 12);
  result = sub_1C8D52910(a1, type metadata accessor for ToolKitProtoRuntimePlatformVersion);
  *a2 = v3;
  *(a2 + 8) = v4;
  *(a2 + 16) = v5;
  *(a2 + 24) = v6;
  return result;
}

void RuntimePlatformVersion.protobuf(useCase:)(uint64_t a1@<X8>)
{
  v3 = *v1;
  if (*v1 > 0x7FFFFFFF)
  {
    __break(1u);
    goto LABEL_13;
  }

  v4 = *(v1 + 8);
  if (v4 > 0x7FFFFFFF)
  {
LABEL_13:
    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v5 = *(v1 + 16);
  if (v3 < 0xFFFFFFFF80000000 || v4 < 0xFFFFFFFF80000000 || v5 < 0xFFFFFFFF80000000)
  {
    goto LABEL_14;
  }

  if (v5 <= 0x7FFFFFFF)
  {
    v8 = *(v1 + 24);
    v9 = a1 + *(type metadata accessor for ToolKitProtoRuntimePlatformVersion(0) + 32);
    _s7ToolKit0aB17ProtoAllPredicateVACycfC_0();
    *a1 = v3;
    *(a1 + 4) = v4;
    *(a1 + 8) = v5;
    *(a1 + 12) = v8;
    return;
  }

LABEL_15:
  __break(1u);
}

uint64_t RuntimeDeviceCapability.init(protobuf:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v44 = a2;
  v4 = type metadata accessor for ToolKitProtoRuntimeRequirement.DeviceCapability.MobileGestalt(0);
  v5 = OUTLINED_FUNCTION_9(v4);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_15();
  v10 = v9 - v8;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC313CD8, &qword_1C9074E60);
  v12 = OUTLINED_FUNCTION_9(v11);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v15 = OUTLINED_FUNCTION_16_5();
  v16 = type metadata accessor for ToolKitProtoRuntimeRequirement.ToolKitProtoDeviceCapabilityKind(v15);
  v17 = OUTLINED_FUNCTION_13_1(v16);
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_25();
  v22 = (v20 - v21);
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v43 - v24;
  sub_1C8D52860(a1, v2, &qword_1EC313CD8, &qword_1C9074E60);
  if (__swift_getEnumTagSinglePayload(v2, 1, v16) == 1)
  {
    sub_1C8CD0CC8(v2, &qword_1EC313CD8);
    v26 = OUTLINED_FUNCTION_94();
    v28 = __swift_instantiateConcreteTypeFromMangledNameV2(v26, v27);
    OUTLINED_FUNCTION_14_11(&qword_1EC313CE8);
    v29 = swift_allocError();
    OUTLINED_FUNCTION_196_0(v29, v30);
    *v31 = v16;
    v32 = *MEMORY[0x1E69E08B0];
    OUTLINED_FUNCTION_10_0(v28);
    (*(v33 + 104))();
    swift_willThrow();
    OUTLINED_FUNCTION_2_12();
    return sub_1C8D52910(a1, v34);
  }

  else
  {
    OUTLINED_FUNCTION_2_12();
    sub_1C8D52910(a1, v36);
    sub_1C8D52804(v2, v25, type metadata accessor for ToolKitProtoRuntimeRequirement.ToolKitProtoDeviceCapabilityKind);
    sub_1C8D52804(v25, v22, type metadata accessor for ToolKitProtoRuntimeRequirement.ToolKitProtoDeviceCapabilityKind);
    result = swift_getEnumCaseMultiPayload();
    if (result == 1)
    {
      v37 = 0;
      v38 = 0;
      v39 = *v22;
    }

    else
    {
      v40 = OUTLINED_FUNCTION_164_1();
      sub_1C8D52804(v40, v10, v41);
      v37 = *v10;
      v39 = *(v10 + 8);
      v38 = *(v10 + 16);

      result = sub_1C8D52910(v10, type metadata accessor for ToolKitProtoRuntimeRequirement.DeviceCapability.MobileGestalt);
    }

    v42 = v44;
    *v44 = v37;
    v42[1] = v39;
    *(v42 + 16) = v38;
  }

  return result;
}

uint64_t RuntimeDeviceCapability.protobuf(useCase:)()
{
  v1 = type metadata accessor for ToolKitProtoRuntimeRequirement.ToolKitProtoDeviceCapabilityKind(0);
  v2 = OUTLINED_FUNCTION_13_1(v1);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_15();
  v7 = v6 - v5;
  v8 = v0[1];
  switch(v8)
  {
    case 0:
      *v7 = 0;
      break;
    case 1:
      *v7 = 1;
      break;
    case 2:
      v9 = 2;
      goto LABEL_10;
    case 3:
      v9 = 3;
      goto LABEL_10;
    case 4:
      v9 = 4;
      goto LABEL_10;
    case 5:
      v9 = 5;
      goto LABEL_10;
    case 6:
      v9 = 6;
      goto LABEL_10;
    case 7:
      v9 = 7;
LABEL_10:
      *v7 = v9;
      break;
    default:
      v12 = *(v0 + 16);
      v13 = *v0;
      v14 = *(type metadata accessor for ToolKitProtoRuntimeRequirement.DeviceCapability.MobileGestalt(0) + 24);

      _s7ToolKit0aB17ProtoAllPredicateVACycfC_0();
      *v7 = v13;
      *(v7 + 8) = v8;
      *(v7 + 16) = v12 & 1;
      break;
  }

  swift_storeEnumTagMultiPayload();
  v10 = type metadata accessor for ToolKitProtoRuntimeRequirement.DeviceCapability(0);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_392();
  sub_1C8D52FB0(&qword_1EDA67C68, type metadata accessor for ToolKitProtoRuntimeRequirement.DeviceCapability);
  sub_1C9063ACC();
  return sub_1C8D52910(v7, type metadata accessor for ToolKitProtoRuntimeRequirement.ToolKitProtoDeviceCapabilityKind);
}

void RuntimeRequirement.init(protobuf:)(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v134 = a2;
  v4 = type metadata accessor for ToolKitProtoRuntimeRequirement.FeatureFlag(0);
  v5 = OUTLINED_FUNCTION_9(v4);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_15();
  v10 = v9 - v8;
  v11 = type metadata accessor for ToolKitProtoRuntimeRequirement.DeviceCapability(0);
  v12 = OUTLINED_FUNCTION_9(v11);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_25();
  v17 = v15 - v16;
  MEMORY[0x1EEE9AC00](v18);
  v131 = &v126 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC313D00, &qword_1C9070750);
  v21 = OUTLINED_FUNCTION_9(v20);
  v23 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_25();
  v128 = v24 - v25;
  OUTLINED_FUNCTION_98();
  MEMORY[0x1EEE9AC00](v26);
  v129 = &v126 - v27;
  OUTLINED_FUNCTION_98();
  MEMORY[0x1EEE9AC00](v28);
  v130 = &v126 - v29;
  v132 = type metadata accessor for ToolKitProtoRuntimeRequirement.AvailabilityAnnotation(0);
  v30 = OUTLINED_FUNCTION_13_1(v132);
  v32 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_15();
  v133 = (v34 - v33);
  v35 = &qword_1C9068E58;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312A78, &qword_1C9068E58);
  v37 = OUTLINED_FUNCTION_9(v36);
  v39 = *(v38 + 64);
  MEMORY[0x1EEE9AC00](v37);
  v40 = OUTLINED_FUNCTION_16_5();
  v41 = type metadata accessor for ToolKitProtoRuntimeRequirementKind(v40);
  v42 = OUTLINED_FUNCTION_13_1(v41);
  v44 = *(v43 + 64);
  MEMORY[0x1EEE9AC00](v42);
  OUTLINED_FUNCTION_25();
  v47 = v45 - v46;
  MEMORY[0x1EEE9AC00](v48);
  v50 = &v126 - v49;
  v147 = a1;
  sub_1C8D52860(a1, v2, &qword_1EC312A78, &qword_1C9068E58);
  if (__swift_getEnumTagSinglePayload(v2, 1, v41) == 1)
  {
    sub_1C8CD0CC8(v2, &qword_1EC312A78);
    v51 = OUTLINED_FUNCTION_94();
    v53 = __swift_instantiateConcreteTypeFromMangledNameV2(v51, v52);
    OUTLINED_FUNCTION_14_11(&qword_1EC313D10);
    OUTLINED_FUNCTION_89();
    *v54 = v41;
    v55 = *MEMORY[0x1E69E08B0];
    OUTLINED_FUNCTION_10_0(v53);
    (*(v56 + 104))();
    swift_willThrow();
    v57 = type metadata accessor for ToolKitProtoRuntimeRequirement;
    v58 = v147;
LABEL_30:
    sub_1C8D52910(v58, v57);
  }

  else
  {
    OUTLINED_FUNCTION_8_10();
    sub_1C8D52804(v2, v50, v59);
    sub_1C8D53260(v50, v47, type metadata accessor for ToolKitProtoRuntimeRequirementKind);
    switch(swift_getEnumCaseMultiPayload())
    {
      case 1u:
        v89 = OUTLINED_FUNCTION_164_1();
        a1 = v131;
        sub_1C8D52804(v89, v131, v90);
        sub_1C8D53260(a1, v17, type metadata accessor for ToolKitProtoRuntimeRequirement.DeviceCapability);
        v91 = v135;
        RuntimeDeviceCapability.init(protobuf:)(v17, &v143);
        if (v91)
        {
          v92 = OUTLINED_FUNCTION_0_19();
          sub_1C8D52910(v92, v93);
          OUTLINED_FUNCTION_2_12();
          v87 = a1;
LABEL_29:
          sub_1C8D52910(v87, v88);
          OUTLINED_FUNCTION_1_15();
          v58 = v50;
          goto LABEL_30;
        }

        v94 = OUTLINED_FUNCTION_0_19();
        sub_1C8D52910(v94, v95);
        OUTLINED_FUNCTION_2_12();
        sub_1C8D52910(a1, v96);
        OUTLINED_FUNCTION_1_15();
        sub_1C8D52910(v50, v97);
        v41 = 0;
        v63 = v143;
        v2 = v144;
        v50 = 0x4000000000000000;
        v47 = v145;
LABEL_18:
        v116 = v134;
        *v134 = v63;
        v116[1] = v2;
        v116[2] = v47;
        v116[3] = a1;
        v116[4] = v41;
        v116[5] = v78;
        v116[6] = v79;
        v116[7] = v35;
        v116[8] = v50;
        *(v116 + 9) = v80;
        v116[11] = v76;
        *(v116 + 96) = v77;
        break;
      case 2u:
        v71 = OUTLINED_FUNCTION_0_19();
        sub_1C8D52910(v71, v72);
        OUTLINED_FUNCTION_1_15();
        sub_1C8D52910(v50, v73);
        v74 = OUTLINED_FUNCTION_164_1();
        sub_1C8D52804(v74, v10, v75);
        v63 = *v10;
        v2 = *(v10 + 8);
        v47 = *(v10 + 16);
        a1 = *(v10 + 24);
        v41 = *(v10 + 32);

        sub_1C8D52910(v10, type metadata accessor for ToolKitProtoRuntimeRequirement.FeatureFlag);
        v50 = 0x8000000000000000;
        goto LABEL_18;
      case 3u:
        switch(*v47)
        {
          case 1:
            v107 = OUTLINED_FUNCTION_0_19();
            sub_1C8D52910(v107, v108);
            OUTLINED_FUNCTION_1_15();
            sub_1C8D52910(v50, v109);
            v63 = 0;
            OUTLINED_FUNCTION_12_7();
            goto LABEL_18;
          case 2:
            v101 = OUTLINED_FUNCTION_0_19();
            sub_1C8D52910(v101, v102);
            OUTLINED_FUNCTION_1_15();
            sub_1C8D52910(v50, v103);
            OUTLINED_FUNCTION_12_7();
            v63 = 1;
            goto LABEL_18;
          case 3:
            v104 = OUTLINED_FUNCTION_0_19();
            sub_1C8D52910(v104, v105);
            OUTLINED_FUNCTION_1_15();
            sub_1C8D52910(v50, v106);
            OUTLINED_FUNCTION_12_7();
            v63 = 2;
            goto LABEL_18;
          case 4:
            v98 = OUTLINED_FUNCTION_0_19();
            sub_1C8D52910(v98, v99);
            OUTLINED_FUNCTION_1_15();
            sub_1C8D52910(v50, v100);
            OUTLINED_FUNCTION_12_7();
            v63 = 3;
            goto LABEL_18;
          case 5:
            v110 = OUTLINED_FUNCTION_0_19();
            sub_1C8D52910(v110, v111);
            OUTLINED_FUNCTION_1_15();
            sub_1C8D52910(v50, v112);
            OUTLINED_FUNCTION_12_7();
            v63 = 4;
            goto LABEL_18;
          case 6:
            v113 = OUTLINED_FUNCTION_0_19();
            sub_1C8D52910(v113, v114);
            OUTLINED_FUNCTION_1_15();
            sub_1C8D52910(v50, v115);
            OUTLINED_FUNCTION_12_7();
            v63 = 5;
            goto LABEL_18;
          default:
            v81 = OUTLINED_FUNCTION_94();
            v83 = __swift_instantiateConcreteTypeFromMangledNameV2(v81, v82);
            OUTLINED_FUNCTION_14_11(&qword_1EC313CF8);
            OUTLINED_FUNCTION_89();
            *v84 = &type metadata for RuntimeDeviceState;
            v85 = *MEMORY[0x1E69E08A8];
            OUTLINED_FUNCTION_10_0(v83);
            (*(v86 + 104))();
            swift_willThrow();
            v87 = OUTLINED_FUNCTION_0_19();
            goto LABEL_29;
        }

      default:
        v60 = OUTLINED_FUNCTION_164_1();
        v61 = v133;
        sub_1C8D52804(v60, v133, v62);
        v63 = 0;
        v64 = v132;
        switch(*v61)
        {
          case 1:
            goto LABEL_26;
          case 2:
            v63 = 1;
            goto LABEL_26;
          case 3:
            v63 = 2;
            goto LABEL_26;
          case 4:
            v63 = 3;
            goto LABEL_26;
          case 5:
            v63 = 4;
            goto LABEL_26;
          case 6:
            v63 = 5;
            goto LABEL_26;
          case 7:
            v63 = 6;
            goto LABEL_26;
          case 8:
            v63 = 7;
LABEL_26:
            sub_1C8D52860(&v61[*(v132 + 20)], v130, &qword_1EC313D00, &qword_1C9070750);
            sub_1C8D528BC();
            v117 = v135;
            sub_1C906350C();
            if (v117)
            {
              goto LABEL_27;
            }

            v135 = v143;
            v120 = v61;
            v121 = v64;
            v47 = v144;
            v131 = v145;
            v41 = v146;
            sub_1C8D52860(&v120[*(v121 + 24)], v129, &qword_1EC313D00, &qword_1C9070750);
            sub_1C906350C();
            v129 = v139;
            v127 = v140;
            v130 = v50;
            v35 = v141;
            v50 = v142;
            sub_1C8D52860(&v133[*(v121 + 28)], v128, &qword_1EC313D00, &qword_1C9070750);
            sub_1C906350C();
            v122 = OUTLINED_FUNCTION_0_19();
            sub_1C8D52910(v122, v123);
            OUTLINED_FUNCTION_3_14();
            sub_1C8D52910(v133, v124);
            OUTLINED_FUNCTION_1_15();
            sub_1C8D52910(v130, v125);
            v80 = v136;
            v76 = v137;
            v77 = v138;
            v2 = v135;
            a1 = v131;
            v78 = v129;
            v79 = v127;
            goto LABEL_18;
          default:
            v65 = OUTLINED_FUNCTION_94();
            v67 = __swift_instantiateConcreteTypeFromMangledNameV2(v65, v66);
            OUTLINED_FUNCTION_14_11(&qword_1EC313CD0);
            OUTLINED_FUNCTION_89();
            *v68 = &type metadata for RuntimePlatform;
            v69 = *MEMORY[0x1E69E08A8];
            OUTLINED_FUNCTION_10_0(v67);
            (*(v70 + 104))();
            swift_willThrow();
LABEL_27:
            v118 = OUTLINED_FUNCTION_0_19();
            sub_1C8D52910(v118, v119);
            OUTLINED_FUNCTION_3_14();
            v87 = v61;
            goto LABEL_29;
        }
    }
  }
}

uint64_t sub_1C8D52804(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a3(0);
  OUTLINED_FUNCTION_13_1(v4);
  v6 = *(v5 + 32);
  v7 = OUTLINED_FUNCTION_94();
  v8(v7);
  return a2;
}

uint64_t sub_1C8D52860(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  OUTLINED_FUNCTION_13_1(v5);
  v7 = *(v6 + 16);
  v8 = OUTLINED_FUNCTION_94();
  v9(v8);
  return a2;
}

unint64_t sub_1C8D528BC()
{
  result = qword_1EDA63210;
  if (!qword_1EDA63210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA63210);
  }

  return result;
}

uint64_t sub_1C8D52910(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_13_1(v3);
  (*(v4 + 8))(a1);
  return a1;
}

void RuntimeRequirement.protobuf(useCase:)(uint64_t a1@<X8>)
{
  v98 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC313D00, &qword_1C9070750);
  v3 = OUTLINED_FUNCTION_9(v2);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_25();
  v96 = v6 - v7;
  OUTLINED_FUNCTION_98();
  MEMORY[0x1EEE9AC00](v8);
  v97 = &v87 - v9;
  OUTLINED_FUNCTION_98();
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v87 - v11;
  v13 = type metadata accessor for ToolKitProtoRuntimeRequirementKind(0);
  v14 = OUTLINED_FUNCTION_13_1(v13);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_25();
  v19 = (v17 - v18);
  MEMORY[0x1EEE9AC00](v20);
  v23 = &v87 - v22;
  v24 = *v1;
  v25 = v1[1];
  v26 = v1[2];
  v27 = v1[3];
  v28 = *(v1 + 32);
  v29 = v1[5];
  v30 = v1[6];
  v31 = v1[7];
  v32 = v1[8];
  v33 = v1[9];
  v34 = v1[10];
  v35 = v1[11];
  v36 = *(v1 + 96);
  switch(v32 >> 62)
  {
    case 1uLL:
      v99 = v24;
      v100 = v25;
      v101 = v26;
      RuntimeDeviceCapability.protobuf(useCase:)();
      goto LABEL_7;
    case 2uLL:
      v41 = v24;
      v42 = *(type metadata accessor for ToolKitProtoRuntimeRequirement.FeatureFlag(0) + 28);

      _s7ToolKit0aB17ProtoAllPredicateVACycfC_0();
      *v23 = v41;
      *(v23 + 1) = v25;
      *(v23 + 2) = v26;
      *(v23 + 3) = v27;
      v23[32] = v28 & 1;
      goto LABEL_7;
    case 3uLL:
      *v23 = v24 + 1;
LABEL_7:
      swift_storeEnumTagMultiPayload();
      goto LABEL_46;
    default:
      v88 = v24;
      v89 = v21;
      v92 = v34;
      v93 = v33;
      v91 = v35;
      v90 = v36;
      v94 = v31;
      v95 = v29;
      if (v28 == 2)
      {
        type metadata accessor for ToolKitProtoRuntimePlatformVersion(0);
        OUTLINED_FUNCTION_115();
        __swift_storeEnumTagSinglePayload(v37, v38, v39, v40);
        goto LABEL_19;
      }

      if (v25 > 0x7FFFFFFF)
      {
        __break(1u);
        goto LABEL_48;
      }

      if (v26 > 0x7FFFFFFF)
      {
LABEL_48:
        __break(1u);
LABEL_49:
        __break(1u);
LABEL_50:
        __break(1u);
        goto LABEL_51;
      }

      if (v25 < 0xFFFFFFFF80000000 || v26 < 0xFFFFFFFF80000000 || v27 < 0xFFFFFFFF80000000)
      {
        goto LABEL_50;
      }

      if (v27 > 0x7FFFFFFF)
      {
LABEL_52:
        __break(1u);
LABEL_53:
        __break(1u);
LABEL_54:
        __break(1u);
        goto LABEL_55;
      }

      v45 = type metadata accessor for ToolKitProtoRuntimePlatformVersion(0);
      v46 = &v12[*(v45 + 32)];
      _s7ToolKit0aB17ProtoAllPredicateVACycfC_0();
      *v12 = v25;
      *(v12 + 1) = v26;
      *(v12 + 2) = v27;
      v12[12] = v28 & 1;
      __swift_storeEnumTagSinglePayload(v12, 0, 1, v45);
      v36 = v90;
LABEL_19:
      v47 = v96;
      v48 = v94;
      if (v32 == 2)
      {
        type metadata accessor for ToolKitProtoRuntimePlatformVersion(0);
        OUTLINED_FUNCTION_115();
        __swift_storeEnumTagSinglePayload(v49, v50, v51, v52);
        goto LABEL_32;
      }

      if (v95 > 0x7FFFFFFF)
      {
        goto LABEL_49;
      }

      if (v30 > 0x7FFFFFFF)
      {
LABEL_51:
        __break(1u);
        goto LABEL_52;
      }

      if (v95 < 0xFFFFFFFF80000000 || v30 < 0xFFFFFFFF80000000 || v94 < 0xFFFFFFFF80000000)
      {
        goto LABEL_54;
      }

      if (v94 > 0x7FFFFFFF)
      {
LABEL_56:
        __break(1u);
LABEL_57:
        __break(1u);
        goto LABEL_58;
      }

      v55 = v95;
      v56 = type metadata accessor for ToolKitProtoRuntimePlatformVersion(0);
      v57 = v97;
      v58 = v97 + *(v56 + 32);
      _s7ToolKit0aB17ProtoAllPredicateVACycfC_0();
      *v57 = v55;
      *(v57 + 4) = v30;
      *(v57 + 8) = v48;
      *(v57 + 12) = v32 & 1;
      __swift_storeEnumTagSinglePayload(v57, 0, 1, v56);
      v36 = v90;
LABEL_32:
      v59 = v92;
      if (v36 == 2)
      {
        v60 = type metadata accessor for ToolKitProtoRuntimePlatformVersion(0);
        v61 = v47;
        v62 = 1;
        goto LABEL_45;
      }

      if (v93 > 0x7FFFFFFF)
      {
        goto LABEL_53;
      }

      if (v92 > 0x7FFFFFFF)
      {
LABEL_55:
        __break(1u);
        goto LABEL_56;
      }

      if (v93 < 0xFFFFFFFF80000000 || v92 < 0xFFFFFFFF80000000 || v91 < 0xFFFFFFFF80000000)
      {
        goto LABEL_57;
      }

      if (v91 > 0x7FFFFFFF)
      {
LABEL_58:
        __break(1u);
        return;
      }

      v65 = v36;
      v66 = v93;
      v67 = v91;
      v60 = type metadata accessor for ToolKitProtoRuntimePlatformVersion(0);
      v68 = v47 + *(v60 + 32);
      _s7ToolKit0aB17ProtoAllPredicateVACycfC_0();
      *v47 = v66;
      *(v47 + 4) = v59;
      *(v47 + 8) = v67;
      *(v47 + 12) = v65 & 1;
      v61 = v47;
      v62 = 0;
LABEL_45:
      __swift_storeEnumTagSinglePayload(v61, v62, 1, v60);
      v69 = v88 + 1;
      v70 = type metadata accessor for ToolKitProtoRuntimeRequirement.AvailabilityAnnotation(0);
      v71 = v70[5];
      type metadata accessor for ToolKitProtoRuntimePlatformVersion(0);
      OUTLINED_FUNCTION_115();
      __swift_storeEnumTagSinglePayload(v72, v73, v74, v60);
      v75 = v70[6];
      OUTLINED_FUNCTION_115();
      __swift_storeEnumTagSinglePayload(v76, v77, v78, v60);
      v79 = v70[7];
      OUTLINED_FUNCTION_115();
      __swift_storeEnumTagSinglePayload(v80, v81, v82, v60);
      v83 = &v19[v70[8]];
      _s7ToolKit0aB17ProtoAllPredicateVACycfC_0();
      *v19 = v69;
      sub_1C8D52FF8(v12, &v19[v71]);
      sub_1C8D52FF8(v97, &v19[v75]);
      sub_1C8D52FF8(v47, &v19[v79]);
      swift_storeEnumTagMultiPayload();
      OUTLINED_FUNCTION_8_10();
      sub_1C8D52804(v19, v23, v84);
LABEL_46:
      v85 = type metadata accessor for ToolKitProtoRuntimeRequirement(0);
      MEMORY[0x1EEE9AC00](v85);
      OUTLINED_FUNCTION_392();
      sub_1C8D52FB0(qword_1EDA6C268, type metadata accessor for ToolKitProtoRuntimeRequirement);
      sub_1C9063ACC();
      OUTLINED_FUNCTION_1_15();
      sub_1C8D52910(v23, v86);
      return;
  }
}

uint64_t sub_1C8D52EDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(void))
{
  sub_1C8CD0CC8(a1, a3);
  sub_1C8D53260(a2, a1, a5);
  v10 = a6(0);
  return __swift_storeEnumTagSinglePayload(a1, 0, 1, v10);
}

uint64_t sub_1C8D52FB0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1C8D52FF8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC313D00, &qword_1C9070750);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_1C8D5306C()
{
  result = qword_1EC313D18;
  if (!qword_1EC313D18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC313D18);
  }

  return result;
}

unint64_t sub_1C8D530C4()
{
  result = qword_1EDA63208;
  if (!qword_1EDA63208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA63208);
  }

  return result;
}

unint64_t sub_1C8D5311C()
{
  result = qword_1EC313D20;
  if (!qword_1EC313D20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC313D20);
  }

  return result;
}

unint64_t sub_1C8D53174()
{
  result = qword_1EC313D28;
  if (!qword_1EC313D28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC313D28);
  }

  return result;
}

unint64_t sub_1C8D531CC()
{
  result = qword_1EDA69A70;
  if (!qword_1EDA69A70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA69A70);
  }

  return result;
}

uint64_t sub_1C8D53260(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a3(0);
  OUTLINED_FUNCTION_13_1(v4);
  v6 = *(v5 + 16);
  v7 = OUTLINED_FUNCTION_94();
  v8(v7);
  return a2;
}

uint64_t get_enum_tag_for_layout_string_7ToolKit06SystemA8ProtocolO10IdentifierO(uint64_t a1)
{
  if ((*(a1 + 32) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 32) & 3;
  }
}

uint64_t get_enum_tag_for_layout_string_7ToolKit06SystemA8ProtocolO(uint64_t a1)
{
  if ((*(a1 + 56) & 0xFu) <= 9)
  {
    return *(a1 + 56) & 0xF;
  }

  else
  {
    return (*a1 + 10);
  }
}

uint64_t sub_1C8D53318(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFE && *(a1 + 105))
    {
      v2 = *a1 + 253;
    }

    else
    {
      v3 = *(a1 + 40);
      if (v3 <= 2)
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

uint64_t sub_1C8D53358(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 104) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 105) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 105) = 0;
    }

    if (a2)
    {
      *(result + 40) = -a2;
    }
  }

  return result;
}

uint64_t sub_1C8D533C8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x64496C6F6F74 && a2 == 0xE600000000000000;
  if (v4 || (sub_1C9064C2C() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
    if (v6 || (sub_1C9064C2C() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x6C6F636F746F7270 && a2 == 0xE800000000000000)
    {

      return 2;
    }

    else
    {
      v8 = sub_1C9064C2C();

      if (v8)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

uint64_t sub_1C8D534DC(char a1)
{
  if (!a1)
  {
    return 0x64496C6F6F74;
  }

  if (a1 == 1)
  {
    return 0x696669746E656469;
  }

  return 0x6C6F636F746F7270;
}

uint64_t sub_1C8D53534(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC313D70, &qword_1C9070CD8);
  v4 = OUTLINED_FUNCTION_11(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v10 = &v18 - v9;
  v11 = *v1;
  v21 = v1[1];
  v12 = v1[3];
  v20 = v1[2];
  v19 = v12;
  v18 = v1[4];
  v13 = *(v1 + 40);
  v14 = *(v1 + 4);
  v28 = *(v1 + 3);
  v29 = v14;
  v30[0] = *(v1 + 5);
  *(v30 + 9) = *(v1 + 89);
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C8D543D8();
  sub_1C9064E1C();
  LOBYTE(v25) = 0;
  v16 = v31;
  sub_1C9064B9C();
  if (v16)
  {
    return (*(v6 + 8))(v10, v3);
  }

  *&v25 = v21;
  *(&v25 + 1) = v20;
  *&v26 = v19;
  *(&v26 + 1) = v18;
  v27[0] = v13;
  LOBYTE(v22[0]) = 1;
  sub_1C8D54590(v21, v20, v19, v18, v13);
  sub_1C8D545F0();
  sub_1C9064B8C();
  sub_1C8D3ED20(v25, *(&v25 + 1), v26, *(&v26 + 1), v27[0]);
  v25 = v28;
  v26 = v29;
  *v27 = v30[0];
  *&v27[9] = *(v30 + 9);
  v24 = 2;
  sub_1C8D54644(&v28, v22);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312D80, &qword_1C9069690);
  sub_1C8D546B4(&qword_1EC313D78);
  sub_1C9064B8C();
  v22[0] = v25;
  v22[1] = v26;
  *v23 = *v27;
  *&v23[9] = *&v27[9];
  sub_1C8D5472C(v22);
  return (*(v6 + 8))(v10, v3);
}

uint64_t sub_1C8D53810@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC313D68, &unk_1C9070CC8);
  v5 = OUTLINED_FUNCTION_11(v34);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C8D543D8();
  sub_1C9064DEC();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  LOBYTE(v19) = 0;
  v9 = sub_1C9064A7C();
  LOBYTE(v18[0]) = 1;
  sub_1C8D5442C();
  sub_1C9064A6C();
  v10 = v19;
  v14 = v20;
  v15 = v21;
  v16 = v22;
  v17 = v23;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312D80, &qword_1C9069690);
  v29 = 2;
  sub_1C8D546B4(qword_1EDA66260);
  sub_1C9064A6C();
  v11 = OUTLINED_FUNCTION_0_2();
  v12(v11);
  *&v33[7] = v30;
  *&v33[23] = v31;
  *&v33[39] = v32[0];
  *&v33[48] = *(v32 + 9);
  v18[0] = v9;
  v18[1] = v10;
  v18[2] = v14;
  v18[3] = v15;
  v18[4] = v16;
  LOBYTE(v18[5]) = v17;
  *(&v18[11] + 1) = *(v32 + 9);
  *(&v18[9] + 1) = *&v33[32];
  *(&v18[7] + 1) = *&v33[16];
  *(&v18[5] + 1) = *v33;
  memcpy(a2, v18, 0x69uLL);
  sub_1C8D54528(v18, &v19);
  __swift_destroy_boxed_opaque_existential_1(a1);
  v19 = v9;
  v20 = v10;
  v21 = v14;
  v22 = v15;
  v23 = v16;
  v24 = v17;
  v25 = *v33;
  v26 = *&v33[16];
  v27 = *&v33[32];
  v28 = *&v33[48];
  return sub_1C8D54560(&v19);
}

uint64_t sub_1C8D53B58@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C8D533C8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C8D53B80(uint64_t a1)
{
  v2 = sub_1C8D543D8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C8D53BBC(uint64_t a1)
{
  v2 = sub_1C8D543D8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

double sub_1C8D53C2C@<D0>(uint64_t a1@<X8>)
{
  if (qword_1EC311240 != -1)
  {
    OUTLINED_FUNCTION_2_13();
  }

  v2 = sub_1C9062E6C();
  OUTLINED_FUNCTION_10(v2, qword_1EC390858);
  sub_1C9062E5C();
  sub_1C8E2B4F8();
  v4 = v3;

  if (qword_1EDA62948 != -1)
  {
    OUTLINED_FUNCTION_1_16();
  }

  OUTLINED_FUNCTION_10(v2, qword_1EDA6E7C0);
  sub_1C9062E5C();
  sub_1C8E2B294();
  v6 = v5;
  v8 = v7;

  SystemToolProtocol.Identifier.init(rawValue:)(v6, v8);
  if (v21 == 255)
  {
    v9 = 2;
  }

  else
  {
    v9 = v21;
  }

  if (qword_1EC311250 != -1)
  {
    OUTLINED_FUNCTION_0_20();
  }

  OUTLINED_FUNCTION_10(v2, qword_1EC390870);
  sub_1C9062E5C();
  sub_1C8D27C68();
  v10.i32[0] = 255;
  v11.i32[0] = v21;
  v12 = vdupq_lane_s32(*&vceqq_s32(v11, v10), 0);
  v14 = vbicq_s8(v20, v12);
  v15 = vbicq_s8(v19, v12);

  *&v22[7] = v16;
  *&v22[23] = v17;
  *&v22[39] = *v18;
  *a1 = v4;
  *(a1 + 24) = v14;
  *(a1 + 8) = v15;
  *(a1 + 40) = v9;
  *(a1 + 41) = *v22;
  *(a1 + 57) = *&v22[16];
  result = *&v22[32];
  *(a1 + 73) = *&v22[32];
  *(a1 + 89) = *&v18[9];
  return result;
}

uint64_t sub_1C8D53E58()
{
  sub_1C8D54284();

  return sub_1C9062B4C();
}

uint64_t sub_1C8D53F50()
{
  v1 = *v0;
  v10 = *(v0 + 3);
  v11 = *(v0 + 1);
  v2 = *(v0 + 40);
  v3 = *(v0 + 4);
  v15 = *(v0 + 3);
  v16 = v3;
  v17[0] = *(v0 + 5);
  *(v17 + 9) = *(v0 + 89);
  sub_1C8D54644(&v15, v12);
  if (qword_1EC311240 != -1)
  {
    OUTLINED_FUNCTION_2_13();
  }

  v4 = sub_1C9062E6C();
  OUTLINED_FUNCTION_10(v4, qword_1EC390858);
  sub_1C9062E5C();
  v13 = MEMORY[0x1E69E7360];
  v14 = MEMORY[0x1E69A01D0];
  v12[0] = v1;
  sub_1C9062BFC();
  if (qword_1EDA62948 != -1)
  {
    OUTLINED_FUNCTION_1_16();
  }

  OUTLINED_FUNCTION_10(v4, qword_1EDA6E7C0);
  sub_1C9062E5C();
  SystemToolProtocol.Identifier.rawValue.getter();
  v13 = MEMORY[0x1E69E6158];
  v14 = MEMORY[0x1E69A0138];
  v12[0] = v5;
  v12[1] = v6;
  sub_1C9062BFC();
  if (qword_1EC311250 != -1)
  {
    OUTLINED_FUNCTION_0_20();
  }

  OUTLINED_FUNCTION_10(v4, qword_1EC390870);
  sub_1C9062E5C();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312D80, &qword_1C9069690);
  v14 = sub_1C8D5483C();
  v7 = swift_allocObject();
  v12[0] = v7;
  v8 = v16;
  v7[1] = v15;
  v7[2] = v8;
  v7[3] = v17[0];
  *(v7 + 57) = *(v17 + 9);
  return sub_1C9062BFC();
}

uint64_t sub_1C8D5415C()
{
  v0 = qword_1EC313D30;

  return v0;
}

unint64_t sub_1C8D54198()
{
  result = qword_1EC313D40;
  if (!qword_1EC313D40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC313D40);
  }

  return result;
}

unint64_t sub_1C8D541F0(void *a1)
{
  a1[1] = sub_1C8D54230();
  a1[2] = sub_1C8D54284();
  a1[3] = sub_1C8D542D8();
  result = sub_1C8D5432C();
  a1[4] = result;
  return result;
}

unint64_t sub_1C8D54230()
{
  result = qword_1EC313D48;
  if (!qword_1EC313D48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC313D48);
  }

  return result;
}

unint64_t sub_1C8D54284()
{
  result = qword_1EC313D50;
  if (!qword_1EC313D50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC313D50);
  }

  return result;
}

unint64_t sub_1C8D542D8()
{
  result = qword_1EDA69338;
  if (!qword_1EDA69338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA69338);
  }

  return result;
}

unint64_t sub_1C8D5432C()
{
  result = qword_1EC313D58;
  if (!qword_1EC313D58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC313D58);
  }

  return result;
}

unint64_t sub_1C8D54384()
{
  result = qword_1EC313D60;
  if (!qword_1EC313D60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC313D60);
  }

  return result;
}

unint64_t sub_1C8D543D8()
{
  result = qword_1EDA665A8[0];
  if (!qword_1EDA665A8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDA665A8);
  }

  return result;
}

unint64_t sub_1C8D5442C()
{
  result = qword_1EDA69320;
  if (!qword_1EDA69320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA69320);
  }

  return result;
}

unint64_t sub_1C8D54480()
{
  result = qword_1EDA6C7B0;
  if (!qword_1EDA6C7B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA6C7B0);
  }

  return result;
}

unint64_t sub_1C8D544D4()
{
  result = qword_1EDA69310;
  if (!qword_1EDA69310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA69310);
  }

  return result;
}

uint64_t sub_1C8D54590(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (a5)
  {
    if (a5 != 1)
    {
      return result;
    }
  }
}

unint64_t sub_1C8D545F0()
{
  result = qword_1EDA62938;
  if (!qword_1EDA62938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA62938);
  }

  return result;
}

uint64_t sub_1C8D54644(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312D80, &qword_1C9069690);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C8D546B4(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC312D80, &qword_1C9069690);
    sub_1C8D54480();
    sub_1C8D544D4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1C8D5472C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312D80, &qword_1C9069690);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1C8D547C4(uint64_t a1, uint64_t *a2)
{
  v3 = sub_1C9062E6C();
  __swift_allocate_value_buffer(v3, a2);
  OUTLINED_FUNCTION_10(v3, a2);
  sub_1C8D543D8();
  return sub_1C9062E8C();
}

unint64_t sub_1C8D5483C()
{
  result = qword_1EC313378;
  if (!qword_1EC313378)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC312D80, &qword_1C9069690);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC313378);
  }

  return result;
}

uint64_t sub_1C8D548A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  switch(a8)
  {
    case 0:
    case 8:

      goto LABEL_3;
    case 1:
    case 2:
    case 3:
    case 5:
    case 6:
    case 7:
LABEL_3:

      break;
    default:
      return result;
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for SystemToolProtocolRecord.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1C8D54A18()
{
  result = qword_1EC313D80;
  if (!qword_1EC313D80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC313D80);
  }

  return result;
}

unint64_t sub_1C8D54A70()
{
  result = qword_1EDA66598;
  if (!qword_1EDA66598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA66598);
  }

  return result;
}

unint64_t sub_1C8D54AC8()
{
  result = qword_1EDA665A0;
  if (!qword_1EDA665A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA665A0);
  }

  return result;
}

void static SampleInvocationDefinition.definitions(from:typeName:parameterKey:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v47 = a4;
  v49 = MEMORY[0x1E69E7CC0];
  v8 = sub_1C8CAD8AC(a1);
  for (i = 0; v8 != i; ++i)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v10 = MEMORY[0x1CCA82230](i, a1);
    }

    else
    {
      if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_54;
      }

      v10 = *(a1 + 8 * i + 32);
    }

    v11 = v10;
    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_54:
      __break(1u);
LABEL_55:
      __break(1u);
LABEL_56:
      __break(1u);
      return;
    }

    v12 = [v10 phrase];
    v13 = sub_1C9063EEC();
    v15 = v14;

    v16 = HIBYTE(v15) & 0xF;
    if ((v15 & 0x2000000000000000) == 0)
    {
      v16 = v13 & 0xFFFFFFFFFFFFLL;
    }

    if (!v16)
    {
      v17 = [v11 expected];
      if (!v17)
      {
        goto LABEL_30;
      }
    }

    v18 = [v11 parentIdentifier];
    v19 = sub_1C9063EEC();
    v21 = v20;

    if (v19 == a2 && v21 == a3)
    {
    }

    else
    {
      v23 = sub_1C9064C2C();

      if ((v23 & 1) == 0)
      {
        goto LABEL_30;
      }
    }

    v24 = sub_1C8D54EC8(v11, &selRef_parameter);
    if (v25)
    {
      if (!a5)
      {

LABEL_30:

        continue;
      }

      if (v24 == v47 && v25 == a5)
      {
      }

      else
      {
        v27 = sub_1C9064C2C();

        if ((v27 & 1) == 0)
        {
          goto LABEL_30;
        }
      }
    }

    else if (a5)
    {
      goto LABEL_30;
    }

    sub_1C90647FC();
    v28 = *(v49 + 16);
    sub_1C906483C();
    sub_1C906484C();
    sub_1C906480C();
  }

  v29 = sub_1C8CAD8AC(v49);
  v30 = 0;
  v31 = MEMORY[0x1E69E7CC0];
  while (v29 != v30)
  {
    if ((v49 & 0xC000000000000001) != 0)
    {
      v32 = MEMORY[0x1CCA82230](v30, v49);
    }

    else
    {
      if (v30 >= *(v49 + 16))
      {
        goto LABEL_56;
      }

      v32 = *(v49 + 8 * v30 + 32);
    }

    v33 = v32;
    if (__OFADD__(v30, 1))
    {
      goto LABEL_55;
    }

    v34 = [v32 kind];
    v35 = [v33 phrases];
    v36 = sub_1C906419C();

    v37 = sub_1C8D54EC8(v33, &selRef_expected);
    v39 = v38;

    v40 = v34 == 4;
    if (v34 == 4)
    {
      v41 = MEMORY[0x1E69E7CC0];
    }

    else
    {
      v41 = v36;
    }

    if (!v40)
    {
      v36 = MEMORY[0x1E69E7CC0];
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v44 = *(v31 + 16);
      sub_1C8CAEA64();
      v31 = v45;
    }

    v42 = *(v31 + 16);
    if (v42 >= *(v31 + 24) >> 1)
    {
      sub_1C8CAEA64();
      v31 = v46;
    }

    *(v31 + 16) = v42 + 1;
    v43 = (v31 + 32 * v42);
    v43[4] = v41;
    v43[5] = v37;
    v43[6] = v39;
    v43[7] = v36;
    ++v30;
  }
}

uint64_t sub_1C8D54EC8(void *a1, SEL *a2)
{
  v2 = [a1 *a2];
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = sub_1C9063EEC();

  return v4;
}

void RuntimeAvailabilityAnnotation.introducingVersion.getter(__n128 *a1@<X8>)
{
  v2 = *(v1 + 24);
  v3 = *(v1 + 32);
  OUTLINED_FUNCTION_8_11(a1, *(v1 + 8));
}

void RuntimeAvailabilityAnnotation.deprecatingVersion.getter(__n128 *a1@<X8>)
{
  v2 = *(v1 + 56);
  v3 = *(v1 + 64);
  OUTLINED_FUNCTION_8_11(a1, *(v1 + 40));
}

void RuntimeAvailabilityAnnotation.obsoletingVersion.getter(__n128 *a1@<X8>)
{
  v2 = *(v1 + 88);
  v3 = *(v1 + 96);
  OUTLINED_FUNCTION_8_11(a1, *(v1 + 72));
}

ToolKit::RuntimePlatformVersion __swiftcall RuntimePlatformVersion.init(_:)(Swift::String a1)
{
  object = a1._object;
  countAndFlagsBits = a1._countAndFlagsBits;
  v4 = v1;
  v5 = sub_1C90620BC();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC313DA8, &qword_1C9070E00);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  MEMORY[0x1EEE9AC00](v12);
  v42 = countAndFlagsBits;
  v43 = object;
  sub_1C8CBAEDC();
  v13 = sub_1C906466C();
  if (!v13[2])
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v13;
  v38[1] = v10;
  v40 = countAndFlagsBits;
  v41 = object;
  v18 = v13[4];
  v19 = v13[5];
  v21 = v13[6];
  v20 = v13[7];

  MEMORY[0x1CCA81A20](v18, v19, v21, v20);

  _s7ToolKit0A8DatabaseC8AccessorC10containers8matching5scope6localeSayAA19ContainerDefinitionVGAA0iJ5QueryV_AA0abC12RequestScopeO10Foundation6LocaleVtKFfA1__0();
  sub_1C8D5B764();
  sub_1C9061C1C();
  OUTLINED_FUNCTION_28_3();
  sub_1C906467C();
  v22 = v42;
  v23 = v17[2];
  if (v23 >= 2)
  {
    v38[0] = v42;
    v39 = v4;
    v24 = v17[8];
    v25 = v17[9];
    v27 = v17[10];
    v26 = v17[11];

    MEMORY[0x1CCA81A20](v24, v25, v27, v26);

    _s7ToolKit0A8DatabaseC8AccessorC10containers8matching5scope6localeSayAA19ContainerDefinitionVGAA0iJ5QueryV_AA0abC12RequestScopeO10Foundation6LocaleVtKFfA1__0();
    sub_1C9061C1C();
    v13 = sub_1C906467C();
    v28 = v42;
    v4 = v39;
    v22 = v38[0];
    if (v23 == 2)
    {
      goto LABEL_6;
    }

    if (v17[2] >= 3uLL)
    {
      v32 = v17[12];
      v33 = v17[13];
      v34 = v17[14];
      v35 = v17[15];

      MEMORY[0x1CCA81A20](v32, v33, v34, v35);

      _s7ToolKit0A8DatabaseC8AccessorC10containers8matching5scope6localeSayAA19ContainerDefinitionVGAA0iJ5QueryV_AA0abC12RequestScopeO10Foundation6LocaleVtKFfA1__0();
      sub_1C9061C1C();
      OUTLINED_FUNCTION_28_3();
      sub_1C906467C();
      v29 = v42;
      v4 = v39;
      v30 = v40;
      v31 = v41;
      v22 = v38[0];
      goto LABEL_9;
    }

LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v28 = 0;
LABEL_6:

  v29 = 0;
  v30 = v40;
  v31 = v41;
LABEL_9:
  if (v30 == 42 && v31 == 0xE100000000000000)
  {

    v37 = 1;
  }

  else
  {
    v37 = sub_1C9064C2C();
  }

  *v4 = v22;
  *(v4 + 8) = v28;
  *(v4 + 16) = v29;
  *(v4 + 24) = v37 & 1;
LABEL_18:
  result.patch = v15;
  result.minor = v14;
  result.major = v13;
  result.isWildcard = v16;
  return result;
}

void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> RuntimeAvailabilityAnnotation.merge(with:)(ToolKit::RuntimeAvailabilityAnnotation *__return_ptr retstr, ToolKit::RuntimeAvailabilityAnnotation *with)
{
  platform = with->platform;
  if (*v2 != platform)
  {
    sub_1C8D5B7B8();
    swift_allocError();
    swift_willThrow();
    return;
  }

  v5 = *(&with->introducingVersion.value.major + 7);
  v4 = *(&with->introducingVersion.value.minor + 7);
  v6 = *(&with->introducingVersion.value.patch + 7);
  v7 = *(&with->introducingVersion.value.isWildcard + 7);
  v8 = v2[32];
  v9 = v2[64];
  if (v8 == 2)
  {
    v10 = *(&with->introducingVersion.value.major + 7);
    v11 = *(&with->introducingVersion.value.minor + 7);
    v12 = *(&with->introducingVersion.value.patch + 7);
    v8 = *(&with->introducingVersion.value.isWildcard + 7);
  }

  else
  {
    v10 = *(v2 + 1);
    v11 = *(v2 + 2);
    v12 = *(v2 + 3);
    if (v7 != 2 && (v8 & 1) != 0 && (v7 & 1) == 0)
    {
      v10 = *(&with->introducingVersion.value.major + 7);
      v11 = *(&with->introducingVersion.value.minor + 7);
      v12 = *(&with->introducingVersion.value.patch + 7);
      v8 = *(&with->introducingVersion.value.isWildcard + 7);
    }
  }

  v14 = *(&with->deprecatingVersion.value.major + 6);
  v13 = *(&with->deprecatingVersion.value.minor + 6);
  v15 = *(&with->deprecatingVersion.value.patch + 6);
  v16 = *(&with->deprecatingVersion.value.isWildcard + 6);
  v17 = v2[96];
  if (v9 == 2)
  {
    v18 = *(&with->deprecatingVersion.value.major + 6);
    v19 = *(&with->deprecatingVersion.value.minor + 6);
    v20 = *(&with->deprecatingVersion.value.patch + 6);
    LOBYTE(v9) = *(&with->deprecatingVersion.value.isWildcard + 6);
  }

  else
  {
    v18 = *(v2 + 5);
    v19 = *(v2 + 6);
    v20 = *(v2 + 7);
    if (v16 != 2 && (v9 & 1) != 0 && (v16 & 1) == 0)
    {
      v18 = *(&with->deprecatingVersion.value.major + 6);
      v19 = *(&with->deprecatingVersion.value.minor + 6);
      v20 = *(&with->deprecatingVersion.value.patch + 6);
      LOBYTE(v9) = *(&with->deprecatingVersion.value.isWildcard + 6);
    }
  }

  v21 = *(&with->obsoletingVersion.value.major + 5);
  v22 = *(&with->obsoletingVersion.value.minor + 5);
  v23 = *(&with->obsoletingVersion.value.patch + 5);
  v24 = *(&with->obsoletingVersion.value.isWildcard + 5);
  if (v17 != 2)
  {
    v26 = *(v2 + 9);
    v25 = *(v2 + 10);
    v27 = *(v2 + 11);
    if (v24 == 2)
    {
      v21 = *(v2 + 9);
      v22 = *(v2 + 10);
      v23 = *(v2 + 11);
      if ((v17 & 1) == 0)
      {
        goto LABEL_32;
      }
    }

    else
    {
      if ((v17 & 1) == 0)
      {
        v21 = *(v2 + 9);
        v22 = *(v2 + 10);
        v23 = *(v2 + 11);
        goto LABEL_32;
      }

      if (v24)
      {
        v21 = *(v2 + 9);
        v22 = *(v2 + 10);
        v23 = *(v2 + 11);
      }

      else
      {
        LOBYTE(v17) = v24;
      }

      if ((v17 & 1) == 0)
      {
        goto LABEL_32;
      }
    }

LABEL_28:
    if (v8 != 2 && (v8 & 1) != 0)
    {
      v10 = 0;
      v11 = 0;
      v12 = 0;
      LOBYTE(v8) = 2;
    }

    goto LABEL_32;
  }

  if (v24 != 2)
  {
    LOBYTE(v17) = v24;
    if ((v24 & 1) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_28;
  }

  LOBYTE(v17) = 2;
LABEL_32:
  retstr->platform = platform;
  *(&retstr->introducingVersion.value.major + 7) = v10;
  *(&retstr->introducingVersion.value.minor + 7) = v11;
  *(&retstr->introducingVersion.value.patch + 7) = v12;
  *(&retstr->introducingVersion.value.isWildcard + 7) = v8;
  *(&retstr->deprecatingVersion.value.major + 6) = v18;
  *(&retstr->deprecatingVersion.value.minor + 6) = v19;
  *(&retstr->deprecatingVersion.value.patch + 6) = v20;
  *(&retstr->deprecatingVersion.value.isWildcard + 6) = v9;
  *(&retstr->obsoletingVersion.value.major + 5) = v21;
  *(&retstr->obsoletingVersion.value.minor + 5) = v22;
  *(&retstr->obsoletingVersion.value.patch + 5) = v23;
  *(&retstr->obsoletingVersion.value.isWildcard + 5) = v17;
}

uint64_t RuntimeAvailabilityAnnotation.isSatisified.getter()
{
  v1 = *v0;
  v2 = *(v0 + 1);
  v3 = *(v0 + 2);
  v4 = *(v0 + 3);
  v5 = v0[32];
  v6 = *(v0 + 9);
  v7 = *(v0 + 10);
  v8 = *(v0 + 11);
  v9 = v0[96];
  static RuntimePlatform.current.getter(&v27);
  if (v27 == 8 || v1 != v27)
  {
    return 0;
  }

  result = MobileGestalt_get_current_device();
  if (result)
  {
    v12 = result;
    v13 = MobileGestalt_copy_productVersion_obj();

    if (v13)
    {
      v23 = v2;
      v14 = sub_1C9063EEC();
      v16 = v15;

      v17._countAndFlagsBits = v14;
      v17._object = v16;
      RuntimePlatformVersion.init(_:)(v17);
      v18 = v27;
      v19 = v28;
      v20 = v29;
      if (v9 == 2 || (v9 & 1) == 0 && (*&v24 = v6, *(&v24 + 1) = v7, v25 = v8, v26 = 0, v21 = v29, v22 = static RuntimePlatformVersion.< infix(_:_:)(&v27, &v24), v20 = v21, (v22 & 1) != 0))
      {
        if (v5 == 2)
        {
          return 1;
        }

        if (v5)
        {
          return 1;
        }

        v27 = v18;
        v28 = v19;
        v29 = v20;
        *&v24 = v23;
        *(&v24 + 1) = v3;
        v25 = v4;
        v26 = 0;
        if ((static RuntimePlatformVersion.< infix(_:_:)(&v27, &v24) & 1) == 0)
        {
          return 1;
        }
      }
    }

    return 0;
  }

  __break(1u);
  return result;
}

void static RuntimePlatform.current.getter(char *a1@<X8>)
{
  v2 = MobileGestalt_get_current_device();
  if (v2)
  {
    v3 = v2;
    deviceClassNumber = MobileGestalt_get_deviceClassNumber();

    if ((deviceClassNumber - 1) > 0xA)
    {
      v5 = 8;
    }

    else
    {
      v5 = byte_1C9071C8A[deviceClassNumber - 1];
    }

    *a1 = v5;
  }

  else
  {
    __break(1u);
  }
}

uint64_t static RuntimePlatformVersion.< infix(_:_:)(__int128 *a1, __int128 *a2)
{
  *&result = 0.0;
  if ((*(a1 + 24) & 1) == 0 && (*(a2 + 24) & 1) == 0)
  {
    v19 = *a2;
    v7 = *(a2 + 2);
    v22 = *a1;
    v23 = *(a1 + 2);
    RuntimePlatformVersion.stringValue.getter();
    OUTLINED_FUNCTION_14_12();
    while (1)
    {
      sub_1C906401C();
      if (!v8)
      {
        break;
      }

      OUTLINED_FUNCTION_29_5();
      v11 = v10 == 46 && v9 == v4;
      if (!v11 && (sub_1C9064C2C() & 1) == 0)
      {
        MEMORY[0x1CCA81A80](v3, v2);
      }
    }

    *&result = COERCE_DOUBLE(sub_1C8D58F44(v20, v21));
    if (v12)
    {
      __break(1u);
    }

    else
    {
      v13 = *&result;
      RuntimePlatformVersion.stringValue.getter();
      OUTLINED_FUNCTION_14_12();
      while (1)
      {
        v14 = sub_1C906401C();
        if (!v15)
        {
          break;
        }

        if (v14 != 46 || v15 != v4)
        {
          OUTLINED_FUNCTION_100();
          if ((sub_1C9064C2C() & 1) == 0)
          {
            v17 = OUTLINED_FUNCTION_100();
            MEMORY[0x1CCA81A80](v17);
          }
        }
      }

      *&result = COERCE_DOUBLE(sub_1C8D58F44(v20, v21));
      if ((v18 & 1) == 0)
      {
        return v13 < *&result;
      }
    }

    __break(1u);
  }

  return result;
}

BOOL sub_1C8D55A14(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  *&v12 = a1;
  *(&v12 + 1) = a2;
  v13 = a3;
  v14 = a4;
  *&v9 = a5;
  *(&v9 + 1) = a6;
  v10 = a7;
  v11 = a8;
  return (static RuntimePlatformVersion.< infix(_:_:)(&v12, &v9) & 1) == 0;
}

BOOL sub_1C8D55A5C(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6)
{
  v6 = a1 < a4;
  v7 = a3 < a6;
  if (a2 != a5)
  {
    v7 = a2 < a5;
  }

  if (a1 == a4)
  {
    v6 = v7;
  }

  return !v6;
}

void *sub_1C8D563BC()
{
  v0 = *MEMORY[0x1E69AC208];
  v1 = sub_1C9063EEC();
  v3 = v2;
  if (v1 == sub_1C9063EEC() && v3 == v4)
  {
    v7 = &unk_1F489AF98;
LABEL_8:

    return v7;
  }

  v6 = sub_1C9064C2C();

  if (v6)
  {
    return &unk_1F489AF98;
  }

  v9 = *MEMORY[0x1E69AC218];
  v10 = sub_1C9063EEC();
  v12 = v11;
  if (v10 == sub_1C9063EEC() && v12 == v13)
  {
    v7 = &unk_1F489AFC0;
    goto LABEL_8;
  }

  v15 = sub_1C9064C2C();

  if (v15)
  {
    return &unk_1F489AFC0;
  }

  v16 = *MEMORY[0x1E69AC250];
  v17 = sub_1C9063EEC();
  v19 = v18;
  if (v17 == sub_1C9063EEC() && v19 == v20)
  {
    v7 = &unk_1F489AFE8;
    goto LABEL_8;
  }

  v22 = sub_1C9064C2C();

  if (v22)
  {
    return &unk_1F489AFE8;
  }

  v23 = *MEMORY[0x1E69AC238];
  v24 = sub_1C9063EEC();
  v26 = v25;
  if (v24 == sub_1C9063EEC() && v26 == v27)
  {
    v7 = &unk_1F489B010;
    goto LABEL_8;
  }

  v29 = sub_1C9064C2C();

  if (v29)
  {
    return &unk_1F489B010;
  }

  v30 = *MEMORY[0x1E69AC228];
  v31 = sub_1C9063EEC();
  v33 = v32;
  if (v31 == sub_1C9063EEC() && v33 == v34)
  {
    v7 = &unk_1F489B038;
    goto LABEL_8;
  }

  v36 = sub_1C9064C2C();

  if (v36)
  {
    return &unk_1F489B038;
  }

  v37 = *MEMORY[0x1E69AC258];
  v38 = sub_1C9063EEC();
  v40 = v39;
  if (v38 == sub_1C9063EEC() && v40 == v41)
  {
    v7 = &unk_1F489B060;
    goto LABEL_8;
  }

  v43 = sub_1C9064C2C();

  if (v43)
  {
    return &unk_1F489B060;
  }

  result = sub_1C906491C();
  __break(1u);
  return result;
}

uint64_t sub_1C8D56718(unsigned __int8 *a1, _BYTE *a2)
{
  v2 = 5459817;
  v3 = *a1;
  v4 = 0xE300000000000000;
  v5 = 5459817;
  switch(v3)
  {
    case 1:
      v4 = 0xE600000000000000;
      v5 = 0x534F64615069;
      break;
    case 2:
      v4 = 0xE500000000000000;
      v5 = 0x534F63616DLL;
      break;
    case 3:
      v4 = 0xE700000000000000;
      v5 = 0x534F6863746177;
      break;
    case 4:
      v4 = 0xE400000000000000;
      v5 = 1397716596;
      break;
    case 5:
      v4 = 0xE800000000000000;
      v5 = 0x534F6E6F69736976;
      break;
    case 6:
      v5 = 0x6341206F69647541;
      v4 = 0xEF79726F73736563;
      break;
    case 7:
      v4 = 0xE700000000000000;
      v5 = 0x6E776F6E6B6E55;
      break;
    default:
      break;
  }

  v6 = 0xE300000000000000;
  switch(*a2)
  {
    case 1:
      v6 = 0xE600000000000000;
      v2 = 0x534F64615069;
      break;
    case 2:
      v6 = 0xE500000000000000;
      v2 = 0x534F63616DLL;
      break;
    case 3:
      v6 = 0xE700000000000000;
      v2 = 0x534F6863746177;
      break;
    case 4:
      v6 = 0xE400000000000000;
      v2 = 1397716596;
      break;
    case 5:
      v6 = 0xE800000000000000;
      v2 = 0x534F6E6F69736976;
      break;
    case 6:
      v2 = 0x6341206F69647541;
      v6 = 0xEF79726F73736563;
      break;
    case 7:
      v6 = 0xE700000000000000;
      v2 = 0x6E776F6E6B6E55;
      break;
    default:
      break;
  }

  if (v5 == v2 && v4 == v6)
  {
    v8 = 0;
  }

  else
  {
    v8 = sub_1C9064C2C();
  }

  return v8 & 1;
}

uint64_t RuntimePlatform.description.getter()
{
  result = 5459817;
  switch(*v0)
  {
    case 1:
      result = 0x534F64615069;
      break;
    case 2:
      result = 0x534F63616DLL;
      break;
    case 3:
      result = 0x534F6863746177;
      break;
    case 4:
      result = 1397716596;
      break;
    case 5:
      result = 0x534F6E6F69736976;
      break;
    case 6:
      result = 0x6341206F69647541;
      break;
    case 7:
      result = 0x6E776F6E6B6E55;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t static RuntimeAvailabilityAnnotation.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v2 = a1[32];
  v3 = *(a1 + 40);
  v4 = *(a1 + 7);
  v5 = a1[64];
  v6 = *(a1 + 72);
  v7 = a1[96];
  v8 = a2[32];
  v10 = *(a2 + 5);
  v9 = *(a2 + 6);
  v11 = *(a2 + 7);
  v12 = a2[64];
  v13 = *(a2 + 9);
  v14 = *(a2 + 10);
  v15 = *(a2 + 11);
  v16 = a2[96];
  if (v2 == 2)
  {
    if (v8 != 2)
    {
      return 0;
    }
  }

  else
  {
    if (v8 == 2)
    {
      return 0;
    }

    if (v2)
    {
      if ((v8 & 1) == 0)
      {
        return 0;
      }
    }

    else
    {
      if (v8)
      {
        return 0;
      }

      v53 = *(a1 + 40);
      v56 = *(a1 + 72);
      v55 = *(a2 + 9);
      v51 = *(a1 + 11);
      v52 = *(a2 + 1);
      v48 = *(a2 + 3);
      v49 = *(a2 + 2);
      v57 = *(a1 + 8);
      v58 = *(a1 + 3);
      v47 = RuntimePlatformVersion.stringValue.getter();
      v19 = v18;
      if (v47 == RuntimePlatformVersion.stringValue.getter() && v19 == v20)
      {

        OUTLINED_FUNCTION_22_8(v35, v36, v37, v38, v39, v40, v41, v42, v46, v47, v48, v49, v51, v19, v53, *(&v53 + 1), v54, v55, v56);
      }

      else
      {
        LODWORD(v49) = sub_1C9064C2C();

        OUTLINED_FUNCTION_22_8(v22, v23, v24, v25, v26, v27, v28, v29, v46, v47, v48, v49, v51, v19, v53, *(&v53 + 1), v54, v55, v56);
        if ((v50 & 1) == 0)
        {
          return 0;
        }
      }
    }
  }

  if (v5 == 2)
  {
    if (v12 == 2)
    {
      goto LABEL_6;
    }
  }

  else if (v12 != 2)
  {
    if (v5)
    {
      if ((v12 & 1) == 0)
      {
        return 0;
      }
    }

    else
    {
      if (v12)
      {
        return 0;
      }

      v30 = RuntimePlatformVersion.stringValue.getter();
      v32 = v31;
      if (v30 == RuntimePlatformVersion.stringValue.getter() && v32 == v33)
      {
      }

      else
      {
        v9 = sub_1C9064C2C();

        if ((v9 & 1) == 0)
        {
          return 0;
        }
      }
    }

LABEL_6:
    if (v7 == 2)
    {
      if (v16 == 2)
      {
        return 1;
      }
    }

    else if (v16 != 2)
    {
      if (v7)
      {
        if (v16)
        {
          return 1;
        }
      }

      else if ((v16 & 1) == 0)
      {
        RuntimePlatformVersion.stringValue.getter();
        OUTLINED_FUNCTION_29_5();
        if (v9 == RuntimePlatformVersion.stringValue.getter() && v11 == v43)
        {

          return 1;
        }

        v45 = OUTLINED_FUNCTION_13_8();

        if (v45)
        {
          return 1;
        }
      }
    }
  }

  return 0;
}

uint64_t sub_1C8D56D08(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6D726F6674616C70 && a2 == 0xE800000000000000;
  if (v4 || (sub_1C9064C2C() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000012 && 0x80000001C90C9E00 == a2;
    if (v6 || (sub_1C9064C2C() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000012 && 0x80000001C90C9E20 == a2;
      if (v7 || (sub_1C9064C2C() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0xD000000000000011 && 0x80000001C90C9E40 == a2)
      {

        return 3;
      }

      else
      {
        v9 = sub_1C9064C2C();

        if (v9)
        {
          return 3;
        }

        else
        {
          return 4;
        }
      }
    }
  }
}

unint64_t sub_1C8D56E6C(char a1)
{
  result = 0x6D726F6674616C70;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000012;
      break;
    case 2:
      result = 0xD000000000000012;
      break;
    case 3:
      result = 0xD000000000000011;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1C8D56F00@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C8D56D08(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C8D56F28(uint64_t a1)
{
  v2 = sub_1C8D5B80C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C8D56F64(uint64_t a1)
{
  v2 = sub_1C8D5B80C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void RuntimeAvailabilityAnnotation.encode(to:)()
{
  OUTLINED_FUNCTION_196();
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC313DC0, &qword_1C9070E10);
  OUTLINED_FUNCTION_11(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_72();
  v11 = *v0;
  v22 = *(v0 + 2);
  v23 = *(v0 + 1);
  v24 = v0[32];
  v20 = *(v0 + 5);
  v21 = *(v0 + 3);
  v18 = *(v0 + 7);
  v19 = *(v0 + 6);
  v13 = *(v0 + 9);
  v14 = *(v0 + 10);
  v15 = *(v0 + 11);
  v16 = v0[96];
  v17 = v0[64];
  v12 = v4[4];
  __swift_project_boxed_opaque_existential_1(v4, v4[3]);
  sub_1C8D5B80C();
  sub_1C9064E1C();
  sub_1C8D5B860();
  OUTLINED_FUNCTION_16_1();
  sub_1C9064B8C();
  if (!v1)
  {
    sub_1C8D5B8B4();
    OUTLINED_FUNCTION_10_7();
    OUTLINED_FUNCTION_10_7();
    OUTLINED_FUNCTION_10_7();
  }

  (*(v7 + 8))(v2, v5);
  OUTLINED_FUNCTION_198();
}

uint64_t RuntimeAvailabilityAnnotation.hash(into:)()
{
  v2 = *(v0 + 1);
  v1 = *(v0 + 2);
  v3 = *(v0 + 3);
  v4 = v0[32];
  v6 = *(v0 + 5);
  v5 = *(v0 + 6);
  v7 = *(v0 + 7);
  v8 = v0[64];
  v11 = *(v0 + 9);
  v12 = *(v0 + 10);
  v13 = *(v0 + 11);
  v9 = v0[96];
  MEMORY[0x1CCA82810](*v0);
  if (v4 != 2)
  {
    sub_1C9064D9C();
    MEMORY[0x1CCA82810](v2);
    MEMORY[0x1CCA82810](v1);
    MEMORY[0x1CCA82810](v3);
  }

  sub_1C9064D9C();
  if (v8 != 2)
  {
    sub_1C9064D9C();
    MEMORY[0x1CCA82810](v6);
    MEMORY[0x1CCA82810](v5);
    MEMORY[0x1CCA82810](v7);
  }

  sub_1C9064D9C();
  if (v9 != 2)
  {
    sub_1C9064D9C();
    MEMORY[0x1CCA82810](v11);
    MEMORY[0x1CCA82810](v12);
    MEMORY[0x1CCA82810](v13);
  }

  return sub_1C9064D9C();
}

uint64_t RuntimeAvailabilityAnnotation.hashValue.getter()
{
  OUTLINED_FUNCTION_298();
  RuntimeAvailabilityAnnotation.hash(into:)();
  return sub_1C9064DBC();
}

void RuntimeAvailabilityAnnotation.init(from:)()
{
  OUTLINED_FUNCTION_196();
  v2 = v1;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC313DC8, &qword_1C9070E18);
  OUTLINED_FUNCTION_11(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v8);
  v9 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v2[3]);
  sub_1C8D5B80C();
  sub_1C9064DEC();
  if (!v0)
  {
    sub_1C8D5B908();
    OUTLINED_FUNCTION_5_13();
    sub_1C9064A6C();
    sub_1C8D5B95C();
    OUTLINED_FUNCTION_5_13();
    OUTLINED_FUNCTION_24_7();
    OUTLINED_FUNCTION_5_13();
    OUTLINED_FUNCTION_24_7();
    OUTLINED_FUNCTION_5_13();
    OUTLINED_FUNCTION_24_7();
    v10 = OUTLINED_FUNCTION_59_2();
    v11(v10, v5);
    *v4 = v12;
    *(v4 + 8) = v12;
    *(v4 + 24) = v13;
    *(v4 + 32) = v14;
    *(v4 + 40) = v12;
    *(v4 + 56) = v13;
    *(v4 + 64) = v14;
    *(v4 + 72) = v12;
    *(v4 + 88) = v13;
    *(v4 + 96) = v14;
  }

  __swift_destroy_boxed_opaque_existential_1(v2);
  OUTLINED_FUNCTION_198();
}

uint64_t sub_1C8D57550()
{
  sub_1C9064D7C();
  RuntimeAvailabilityAnnotation.hash(into:)();
  return sub_1C9064DBC();
}

uint64_t sub_1C8D575CC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656E6F6870 && a2 == 0xE500000000000000;
  if (v4 || (sub_1C9064C2C() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 6578544 && a2 == 0xE300000000000000;
    if (v6 || (sub_1C9064C2C() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x736F746E6963616DLL && a2 == 0xE900000000000068;
      if (v7 || (sub_1C9064C2C() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x6863746177 && a2 == 0xE500000000000000;
        if (v8 || (sub_1C9064C2C() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 30324 && a2 == 0xE200000000000000;
          if (v9 || (sub_1C9064C2C() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x6E6F69736976 && a2 == 0xE600000000000000;
            if (v10 || (sub_1C9064C2C() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0x6363416F69647561 && a2 == 0xEE0079726F737365;
              if (v11 || (sub_1C9064C2C() & 1) != 0)
              {

                return 6;
              }

              else if (a1 == 0x6E776F6E6B6E75 && a2 == 0xE700000000000000)
              {

                return 7;
              }

              else
              {
                v13 = sub_1C9064C2C();

                if (v13)
                {
                  return 7;
                }

                else
                {
                  return 8;
                }
              }
            }
          }
        }
      }
    }
  }
}

uint64_t sub_1C8D57848(char a1)
{
  result = 0x656E6F6870;
  switch(a1)
  {
    case 1:
      result = 6578544;
      break;
    case 2:
      result = 0x736F746E6963616DLL;
      break;
    case 3:
      result = 0x6863746177;
      break;
    case 4:
      result = 30324;
      break;
    case 5:
      result = 0x6E6F69736976;
      break;
    case 6:
      result = 0x6363416F69647561;
      break;
    case 7:
      result = 0x6E776F6E6B6E75;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1C8D57918(uint64_t a1)
{
  v2 = sub_1C8D5BA58();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C8D57954(uint64_t a1)
{
  v2 = sub_1C8D5BA58();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C8D57998@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C8D575CC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C8D579C0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1C8D57840();
  *a1 = result;
  return result;
}

uint64_t sub_1C8D579E8(uint64_t a1)
{
  v2 = sub_1C8D5B9B0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C8D57A24(uint64_t a1)
{
  v2 = sub_1C8D5B9B0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C8D57A60(uint64_t a1)
{
  v2 = sub_1C8D5BBA8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C8D57A9C(uint64_t a1)
{
  v2 = sub_1C8D5BBA8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C8D57AD8(uint64_t a1)
{
  v2 = sub_1C8D5BBFC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C8D57B14(uint64_t a1)
{
  v2 = sub_1C8D5BBFC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C8D57B50(uint64_t a1)
{
  v2 = sub_1C8D5BC50();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C8D57B8C(uint64_t a1)
{
  v2 = sub_1C8D5BC50();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C8D57BC8(uint64_t a1)
{
  v2 = sub_1C8D5BB00();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C8D57C04(uint64_t a1)
{
  v2 = sub_1C8D5BB00();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C8D57C40(uint64_t a1)
{
  v2 = sub_1C8D5BA04();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C8D57C7C(uint64_t a1)
{
  v2 = sub_1C8D5BA04();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C8D57CB8(uint64_t a1)
{
  v2 = sub_1C8D5BAAC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C8D57CF4(uint64_t a1)
{
  v2 = sub_1C8D5BAAC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C8D57D30(uint64_t a1)
{
  v2 = sub_1C8D5BB54();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C8D57D6C(uint64_t a1)
{
  v2 = sub_1C8D5BB54();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void RuntimePlatform.encode(to:)()
{
  OUTLINED_FUNCTION_196();
  v1 = v0;
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC313DD0, &qword_1C9070E20);
  v5 = OUTLINED_FUNCTION_11(v4);
  v90 = v6;
  v91 = v5;
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_97();
  v89 = v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC313DD8, &qword_1C9070E28);
  v12 = OUTLINED_FUNCTION_11(v11);
  v87 = v13;
  v88 = v12;
  v15 = *(v14 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_97();
  v86 = v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC313DE0, &qword_1C9070E30);
  v19 = OUTLINED_FUNCTION_11(v18);
  v84 = v20;
  v85 = v19;
  v22 = *(v21 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_97();
  v83 = v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC313DE8, &qword_1C9070E38);
  v26 = OUTLINED_FUNCTION_11(v25);
  v81 = v27;
  v82 = v26;
  v29 = *(v28 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_97();
  v80 = v31;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC313DF0, &qword_1C9070E40);
  v33 = OUTLINED_FUNCTION_11(v32);
  v78 = v34;
  v79 = v33;
  v36 = *(v35 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v37);
  OUTLINED_FUNCTION_97();
  v77 = v38;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC313DF8, &qword_1C9070E48);
  v40 = OUTLINED_FUNCTION_11(v39);
  v75 = v41;
  v76 = v40;
  v43 = *(v42 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v44);
  OUTLINED_FUNCTION_97();
  v74 = v45;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC313E00, &qword_1C9070E50);
  OUTLINED_FUNCTION_11(v73);
  v72 = v46;
  v48 = *(v47 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v49);
  v51 = &v71 - v50;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC313E08, &qword_1C9070E58);
  OUTLINED_FUNCTION_11(v52);
  v71 = v53;
  v55 = *(v54 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v56);
  v58 = &v71 - v57;
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC313E10, &qword_1C9070E60);
  OUTLINED_FUNCTION_11(v92);
  v60 = v59;
  v62 = *(v61 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v63);
  v65 = &v71 - v64;
  v66 = *v1;
  v67 = v3[4];
  __swift_project_boxed_opaque_existential_1(v3, v3[3]);
  sub_1C8D5B9B0();
  sub_1C9064E1C();
  switch(v66)
  {
    case 1:
      sub_1C8D5BBFC();
      OUTLINED_FUNCTION_4_10();
      (*(v72 + 8))(v51, v73);
      break;
    case 2:
      sub_1C8D5BBA8();
      v68 = v74;
      OUTLINED_FUNCTION_2_14();
      v70 = v75;
      v69 = v76;
      goto LABEL_10;
    case 3:
      sub_1C8D5BB54();
      v68 = v77;
      OUTLINED_FUNCTION_2_14();
      v70 = v78;
      v69 = v79;
      goto LABEL_10;
    case 4:
      sub_1C8D5BB00();
      v68 = v80;
      OUTLINED_FUNCTION_2_14();
      v70 = v81;
      v69 = v82;
      goto LABEL_10;
    case 5:
      sub_1C8D5BAAC();
      v68 = v83;
      OUTLINED_FUNCTION_2_14();
      v70 = v84;
      v69 = v85;
      goto LABEL_10;
    case 6:
      sub_1C8D5BA58();
      v68 = v86;
      OUTLINED_FUNCTION_2_14();
      v70 = v87;
      v69 = v88;
      goto LABEL_10;
    case 7:
      sub_1C8D5BA04();
      v68 = v89;
      OUTLINED_FUNCTION_2_14();
      v70 = v90;
      v69 = v91;
LABEL_10:
      (*(v70 + 8))(v68, v69);
      break;
    default:
      sub_1C8D5BC50();
      OUTLINED_FUNCTION_4_10();
      (*(v71 + 8))(v58, v52);
      break;
  }

  (*(v60 + 8))(v65, v60);
  OUTLINED_FUNCTION_198();
}

uint64_t RuntimePlatform.hashValue.getter()
{
  v1 = *v0;
  OUTLINED_FUNCTION_298();
  MEMORY[0x1CCA82810](v1);
  return sub_1C9064DBC();
}

void RuntimePlatform.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_196();
  a19 = v22;
  a20 = v23;
  v137 = v20;
  v25 = v24;
  v132 = v26;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC313E28, &qword_1C9070E68);
  v28 = OUTLINED_FUNCTION_11(v27);
  v127 = v29;
  v128 = v28;
  v31 = *(v30 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_97();
  v135 = v33;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC313E30, &qword_1C9070E70);
  v35 = OUTLINED_FUNCTION_11(v34);
  v125 = v36;
  v126 = v35;
  v38 = *(v37 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v39);
  OUTLINED_FUNCTION_97();
  v131 = v40;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC313E38, &qword_1C9070E78);
  v42 = OUTLINED_FUNCTION_11(v41);
  v123 = v43;
  v124 = v42;
  v45 = *(v44 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v46);
  OUTLINED_FUNCTION_97();
  v134 = v47;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC313E40, &qword_1C9070E80);
  v121 = OUTLINED_FUNCTION_11(v48);
  v122 = v49;
  v51 = *(v50 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v52);
  OUTLINED_FUNCTION_97();
  v130 = v53;
  v117 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC313E48, &qword_1C9070E88);
  OUTLINED_FUNCTION_11(v117);
  v120 = v54;
  v56 = *(v55 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v57);
  OUTLINED_FUNCTION_97();
  v129 = v58;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC313E50, &qword_1C9070E90);
  v60 = OUTLINED_FUNCTION_11(v59);
  v118 = v61;
  v119 = v60;
  v63 = *(v62 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v64);
  OUTLINED_FUNCTION_97();
  v133 = v65;
  v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC313E58, &qword_1C9070E98);
  OUTLINED_FUNCTION_11(v116);
  v115 = v66;
  v68 = *(v67 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v69);
  OUTLINED_FUNCTION_72();
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC313E60, &qword_1C9070EA0);
  OUTLINED_FUNCTION_11(v70);
  v114 = v71;
  v73 = *(v72 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v74);
  v76 = &v109 - v75;
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC313E68, &unk_1C9070EA8);
  OUTLINED_FUNCTION_11(v77);
  v79 = v78;
  v81 = *(v80 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v82);
  v83 = v25[3];
  v84 = v25[4];
  v136 = v25;
  __swift_project_boxed_opaque_existential_1(v25, v83);
  sub_1C8D5B9B0();
  v85 = v137;
  sub_1C9064DEC();
  if (v85)
  {
    goto LABEL_8;
  }

  v112 = v76;
  v111 = v70;
  v113 = v21;
  v86 = v133;
  v137 = v79;
  v87 = sub_1C9064A9C();
  sub_1C8CB8914(v87, 0);
  if (v89 == v90 >> 1)
  {
LABEL_7:
    v99 = sub_1C90647DC();
    swift_allocError();
    v101 = v100;
    v102 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312570, &unk_1C90669A0) + 48);
    *v101 = &type metadata for RuntimePlatform;
    sub_1C906499C();
    sub_1C90647CC();
    (*(*(v99 - 8) + 104))(v101, *MEMORY[0x1E69E6AF8], v99);
    swift_willThrow();
    swift_unknownObjectRelease();
    v103 = OUTLINED_FUNCTION_15_7();
    v104(v103);
LABEL_8:
    v105 = v136;
LABEL_9:
    __swift_destroy_boxed_opaque_existential_1(v105);
    OUTLINED_FUNCTION_198();
    return;
  }

  v109 = 0;
  if (v89 < (v90 >> 1))
  {
    v110 = *(v88 + v89);
    sub_1C8CB891C(v89 + 1);
    v92 = v91;
    v94 = v93;
    swift_unknownObjectRelease();
    if (v92 == v94 >> 1)
    {
      v95 = v132;
      switch(v110)
      {
        case 1:
          sub_1C8D5BBFC();
          OUTLINED_FUNCTION_1_17();
          swift_unknownObjectRelease();
          v96 = OUTLINED_FUNCTION_30();
          v98 = &a18;
          goto LABEL_15;
        case 2:
          sub_1C8D5BBA8();
          OUTLINED_FUNCTION_3_15();
          swift_unknownObjectRelease();
          (*(v118 + 8))(v86, v119);
          goto LABEL_20;
        case 3:
          sub_1C8D5BB54();
          OUTLINED_FUNCTION_1_17();
          swift_unknownObjectRelease();
          v96 = OUTLINED_FUNCTION_30();
          v106 = v117;
          break;
        case 4:
          sub_1C8D5BB00();
          OUTLINED_FUNCTION_1_17();
          swift_unknownObjectRelease();
          goto LABEL_18;
        case 5:
          sub_1C8D5BAAC();
          OUTLINED_FUNCTION_3_15();
          swift_unknownObjectRelease();
          goto LABEL_18;
        case 6:
          sub_1C8D5BA58();
          OUTLINED_FUNCTION_1_17();
          swift_unknownObjectRelease();
          goto LABEL_18;
        case 7:
          sub_1C8D5BA04();
          OUTLINED_FUNCTION_1_17();
          swift_unknownObjectRelease();
LABEL_18:
          v96 = OUTLINED_FUNCTION_30();
          break;
        default:
          sub_1C8D5BC50();
          OUTLINED_FUNCTION_1_17();
          swift_unknownObjectRelease();
          v96 = OUTLINED_FUNCTION_30();
          v98 = &a13;
LABEL_15:
          v106 = *(v98 - 32);
          break;
      }

      v97(v96, v106);
LABEL_20:
      v107 = OUTLINED_FUNCTION_15_7();
      v108(v107);
      v105 = v136;
      *v95 = v110;
      goto LABEL_9;
    }

    goto LABEL_7;
  }

  __break(1u);
}

uint64_t RuntimePlatformVersion.stringValue.getter()
{
  v18 = *MEMORY[0x1E69E9840];
  if (v0[3])
  {
    v1 = 42;
  }

  else
  {
    v2 = v0[1];
    v3 = v0[2];
    v4 = *v0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312AC0, &unk_1C9068EA0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1C906BAE0;
    *(inited + 32) = v4;
    *(inited + 40) = v2;
    if (v3 < 1)
    {
      v6 = 2;
    }

    else
    {
      v6 = 3;
      sub_1C8D00C7C(1, 3, 1, inited);
      inited = v7;
      *(v7 + 16) = 3;
      *(v7 + 48) = v3;
    }

    v17 = MEMORY[0x1E69E7CC0];
    sub_1C8CA6480();
    v8 = 32;
    do
    {
      v16 = *(inited + v8);
      v9 = sub_1C9064BDC();
      v11 = v10;
      v12 = *(v17 + 16);
      if (v12 >= *(v17 + 24) >> 1)
      {
        sub_1C8CA6480();
      }

      *(v17 + 16) = v12 + 1;
      v13 = v17 + 16 * v12;
      *(v13 + 32) = v9;
      *(v13 + 40) = v11;
      v8 += 8;
      --v6;
    }

    while (v6);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312558, &qword_1C9066990);
    sub_1C8D3A5F4();
    v1 = sub_1C9063E9C();
  }

  v14 = *MEMORY[0x1E69E9840];
  return v1;
}

uint64_t sub_1C8D58F44(uint64_t a1, uint64_t a2)
{
  sub_1C8D59980(a1, a2);

  return 0;
}

uint64_t static RuntimePlatformVersion.== infix(_:_:)(__int128 *a1, uint64_t *a2)
{
  v4 = *(a2 + 24);
  if (*(a1 + 24) == 1)
  {
    if (a2[3])
    {
      v5 = 1;
      return v5 & 1;
    }

LABEL_5:
    v5 = 0;
    return v5 & 1;
  }

  if (a2[3])
  {
    goto LABEL_5;
  }

  v6 = *a2;
  v7 = a2[1];
  v8 = a2[2];
  v12 = *a1;
  v13 = *(a1 + 2);
  RuntimePlatformVersion.stringValue.getter();
  OUTLINED_FUNCTION_29_5();
  if (v3 == RuntimePlatformVersion.stringValue.getter() && v2 == v9)
  {
    v5 = 1;
  }

  else
  {
    v5 = OUTLINED_FUNCTION_13_8();
  }

  return v5 & 1;
}

uint64_t RuntimePlatformVersion.description.getter()
{
  v2 = *v0;
  v3 = *(v0 + 2);
  v4 = *(v0 + 24);
  return RuntimePlatformVersion.stringValue.getter();
}

double sub_1C8D590B4()
{
  v0._countAndFlagsBits = 42;
  v0._object = 0xE100000000000000;
  RuntimePlatformVersion.init(_:)(v0);
  result = *&v2;
  xmmword_1EC313D88 = v2;
  qword_1EC313D98 = v3;
  byte_1EC313DA0 = v4;
  return result;
}

double static RuntimePlatformVersion.wildcard.getter@<D0>(uint64_t a1@<X8>)
{
  if (qword_1EC311258 != -1)
  {
    swift_once();
  }

  v2 = qword_1EC313D98;
  v3 = byte_1EC313DA0;
  result = *&xmmword_1EC313D88;
  *a1 = xmmword_1EC313D88;
  *(a1 + 16) = v2;
  *(a1 + 24) = v3;
  return result;
}

uint64_t sub_1C8D59170(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x726F6A616DLL && a2 == 0xE500000000000000;
  if (v4 || (sub_1C9064C2C() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x726F6E696DLL && a2 == 0xE500000000000000;
    if (v6 || (sub_1C9064C2C() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6863746170 && a2 == 0xE500000000000000;
      if (v7 || (sub_1C9064C2C() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0x6163646C69577369 && a2 == 0xEA00000000006472)
      {

        return 3;
      }

      else
      {
        v9 = sub_1C9064C2C();

        if (v9)
        {
          return 3;
        }

        else
        {
          return 4;
        }
      }
    }
  }
}

uint64_t sub_1C8D592C8(char a1)
{
  result = 0x726F6A616DLL;
  switch(a1)
  {
    case 1:
      result = 0x726F6E696DLL;
      break;
    case 2:
      result = 0x6863746170;
      break;
    case 3:
      result = 0x6163646C69577369;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1C8D59344@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C8D59170(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C8D5936C(uint64_t a1)
{
  v2 = sub_1C8D5BD10();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C8D593A8(uint64_t a1)
{
  v2 = sub_1C8D5BD10();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void RuntimePlatformVersion.encode(to:)()
{
  OUTLINED_FUNCTION_196();
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC313E70, &qword_1C9070EB8);
  OUTLINED_FUNCTION_11(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_72();
  v11 = *v0;
  v13 = v0[2];
  v14 = v0[1];
  v15 = *(v0 + 24);
  v12 = v4[4];
  __swift_project_boxed_opaque_existential_1(v4, v4[3]);
  sub_1C8D5BD10();
  sub_1C9064E1C();
  OUTLINED_FUNCTION_16_1();
  sub_1C9064B6C();
  if (!v1)
  {
    OUTLINED_FUNCTION_16_1();
    sub_1C9064B6C();
    OUTLINED_FUNCTION_16_1();
    sub_1C9064B6C();
    OUTLINED_FUNCTION_16_1();
    sub_1C9064B3C();
  }

  (*(v7 + 8))(v2, v5);
  OUTLINED_FUNCTION_198();
}

uint64_t RuntimePlatformVersion.hash(into:)()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  MEMORY[0x1CCA82810](*v0);
  MEMORY[0x1CCA82810](v1);
  MEMORY[0x1CCA82810](v2);
  return sub_1C9064D9C();
}

uint64_t RuntimePlatformVersion.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = *(v0 + 24);
  OUTLINED_FUNCTION_298();
  MEMORY[0x1CCA82810](v1);
  MEMORY[0x1CCA82810](v2);
  MEMORY[0x1CCA82810](v3);
  sub_1C9064D9C();
  return sub_1C9064DBC();
}

void RuntimePlatformVersion.init(from:)()
{
  OUTLINED_FUNCTION_196();
  v2 = v1;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC313E78, &qword_1C9070EC0);
  OUTLINED_FUNCTION_11(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v8);
  v9 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v2[3]);
  sub_1C8D5BD10();
  sub_1C9064DEC();
  if (!v0)
  {
    OUTLINED_FUNCTION_12_8();
    v10 = sub_1C9064A4C();
    OUTLINED_FUNCTION_12_8();
    v11 = sub_1C9064A4C();
    OUTLINED_FUNCTION_12_8();
    v15 = sub_1C9064A4C();
    OUTLINED_FUNCTION_12_8();
    v12 = sub_1C9064A1C();
    v13 = OUTLINED_FUNCTION_59_2();
    v14(v13, v5);
    *v4 = v10;
    *(v4 + 8) = v11;
    *(v4 + 16) = v15;
    *(v4 + 24) = v12 & 1;
  }

  __swift_destroy_boxed_opaque_existential_1(v2);
  OUTLINED_FUNCTION_198();
}

uint64_t sub_1C8D59808()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = *(v0 + 24);
  sub_1C9064D7C();
  MEMORY[0x1CCA82810](v1);
  MEMORY[0x1CCA82810](v2);
  MEMORY[0x1CCA82810](v3);
  sub_1C9064D9C();
  return sub_1C9064DBC();
}

BOOL sub_1C8D59980(uint64_t a1, uint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  if ((a2 & 0x2000000000000000) == 0)
  {
    if ((a1 & 0x1000000000000000) != 0)
    {
      v3 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
      if (v3 < 0x21 && ((0x100003E01uLL >> v3) & 1) != 0)
      {
        return 0;
      }

      goto LABEL_9;
    }

LABEL_13:
    sub_1C906477C();
    if (!v2)
    {
      return v7;
    }

    return v5;
  }

  if (a1 <= 0x20u && ((0x100003E01uLL >> a1) & 1) != 0)
  {
    return 0;
  }

LABEL_9:
  v4 = _swift_stdlib_strtod_clocale();
  if (!v4)
  {
    return 0;
  }

  return *v4 == 0;
}

unint64_t sub_1C8D59A78(unsigned __int8 a1)
{
  v3 = *(v1 + 40);
  sub_1C9064D7C();
  MEMORY[0x1CCA82810](a1);
  v4 = sub_1C9064DBC();

  return sub_1C8D59D30(a1, v4);
}

unint64_t sub_1C8D59AE4(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  v5 = sub_1C906470C();

  return sub_1C8D59D90(a1, v5);
}

unint64_t sub_1C8D59B28(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  sub_1C90648DC();
  v5 = sub_1C9063E6C();

  return sub_1C8D59E54(a1, v5);
}

unint64_t sub_1C8D59B8C()
{
  OUTLINED_FUNCTION_19_5();
  sub_1C9064D7C();
  sub_1C8D39BF8(__src, v0);
  v1 = sub_1C9064DBC();

  return sub_1C8D59FD8(v0, v1);
}

unint64_t sub_1C8D59BF0(uint64_t a1)
{
  v3 = *(v1 + 40);
  sub_1C9063EEC();
  sub_1C9064D7C();
  sub_1C9063FBC();
  v4 = sub_1C9064DBC();

  return sub_1C8D5A08C(a1, v4);
}

unint64_t sub_1C8D59C84()
{
  OUTLINED_FUNCTION_19_5();
  v4 = v0;
  sub_1C9064D7C();
  TypeIdentifier.hash(into:)(&v3);
  v1 = sub_1C9064DBC();

  return sub_1C8D5A184(v0, v1);
}

unint64_t sub_1C8D59CEC(uint64_t a1)
{
  v3 = *(v1 + 40);
  v4 = sub_1C9064D6C();

  return sub_1C8D5A244(a1, v4);
}

unint64_t sub_1C8D59D30(unsigned __int8 a1, uint64_t a2)
{
  v3 = a1;
  v4 = ~(-1 << *(v2 + 32));
    ;
  }

  return result;
}

unint64_t sub_1C8D59D90(uint64_t a1, uint64_t a2)
{
  v4 = ~(-1 << *(v2 + 32));
  for (i = a2 & v4; ((1 << i) & *(v2 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v4)
  {
    sub_1C8D5CCA8(*(v2 + 48) + 40 * i, v8);
    v6 = MEMORY[0x1CCA821A0](v8, a1);
    sub_1C8D5CD04(v8);
    if (v6)
    {
      break;
    }
  }

  return i;
}

unint64_t sub_1C8D59E54(uint64_t a1, uint64_t a2)
{
  v14[1] = a1;
  v4 = sub_1C90648DC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v9 = v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = v2;
  v16 = v2 + 64;
  v10 = ~(-1 << *(v2 + 32));
  for (i = a2 & v10; ((1 << i) & *(v16 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v10)
  {
    (*(v5 + 16))(v9, *(v15 + 48) + *(v5 + 72) * i, v4, v7);
    v12 = sub_1C9063EAC();
    (*(v5 + 8))(v9, v4);
    if (v12)
    {
      break;
    }
  }

  return i;
}

unint64_t sub_1C8D59FD8(uint64_t a1, uint64_t a2)
{
  v4 = ~(-1 << *(v2 + 32));
  for (i = a2 & v4; ((1 << i) & *(v2 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v4)
  {
    v6 = *(*(v2 + 48) + 8 * i);

    v8 = sub_1C8D2A650(v7, a1);

    if (v8)
    {
      break;
    }
  }

  return i;
}

unint64_t sub_1C8D5A08C(uint64_t a1, uint64_t a2)
{
  v3 = ~(-1 << *(v2 + 32));
  for (i = a2 & v3; ((1 << i) & *(v2 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v3)
  {
    v5 = *(*(v2 + 48) + 8 * i);
    v6 = sub_1C9063EEC();
    v8 = v7;
    if (v6 == sub_1C9063EEC() && v8 == v9)
    {

      return i;
    }

    v11 = sub_1C9064C2C();

    if (v11)
    {
      return i;
    }
  }

  return i;
}

unint64_t sub_1C8D5A184(unint64_t a1, uint64_t a2)
{
  v8 = a1;
  v3 = ~(-1 << *(v2 + 32));
  for (i = a2 & v3; ((1 << i) & *(v2 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v3)
  {
    v7 = *(*(v2 + 48) + 8 * i);

    v5 = static TypeIdentifier.== infix(_:_:)(&v7, &v8);

    if (v5)
    {
      break;
    }
  }

  return i;
}

unint64_t sub_1C8D5A244(uint64_t a1, uint64_t a2)
{
  v3 = ~(-1 << *(v2 + 32));
    ;
  }

  return i;
}

uint64_t sub_1C8D5A2A4(uint64_t *a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_1C8DDC780(v2);
    v2 = v3;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  result = sub_1C8D5A3CC(v6);
  *a1 = v2;
  return result;
}

void *sub_1C8D5A310(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v2 = sub_1C8D0202C(*(a1 + 16), 0);
  sub_1C8D7C6BC();
  v4 = v3;

  sub_1C8C9E7E4();
  if (v4 != v1)
  {
    __break(1u);
    return MEMORY[0x1E69E7CC0];
  }

  return v2;
}

uint64_t sub_1C8D5A3CC(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_1C9064BCC();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        v6 = sub_1C906421C();
        *(v6 + 16) = v5;
      }

      v7[0] = (v6 + 32);
      v7[1] = v5;
      sub_1C8D5A780(v7, v8, a1, v4);
      *(v6 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_1C8D5A4C0(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_1C8D5A4C0(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = *a4;
    v5 = *a4 + 104 * a3;
    v6 = result - a3;
    while (2)
    {
      v19 = a3;
      v7 = v6;
      v8 = v5;
      while (1)
      {
        v9 = *(v8 - 104);
        v10 = 0xE300000000000000;
        v11 = 5459817;
        switch(*v8)
        {
          case 1:
            v10 = 0xE600000000000000;
            v11 = 0x534F64615069;
            break;
          case 2:
            v10 = 0xE500000000000000;
            v11 = 0x534F63616DLL;
            break;
          case 3:
            v10 = 0xE700000000000000;
            v11 = 0x534F6863746177;
            break;
          case 4:
            v10 = 0xE400000000000000;
            v11 = 1397716596;
            break;
          case 5:
            v10 = 0xE800000000000000;
            v11 = 0x534F6E6F69736976;
            break;
          case 6:
            v11 = 0x6341206F69647541;
            v10 = 0xEF79726F73736563;
            break;
          case 7:
            v10 = 0xE700000000000000;
            v11 = 0x6E776F6E6B6E55;
            break;
          default:
            break;
        }

        v12 = 0xE300000000000000;
        v13 = 5459817;
        switch(*(v8 - 104))
        {
          case 1:
            v12 = 0xE600000000000000;
            v13 = 0x534F64615069;
            break;
          case 2:
            v12 = 0xE500000000000000;
            v13 = 0x534F63616DLL;
            break;
          case 3:
            v12 = 0xE700000000000000;
            v13 = 0x534F6863746177;
            break;
          case 4:
            v12 = 0xE400000000000000;
            v13 = 1397716596;
            break;
          case 5:
            v12 = 0xE800000000000000;
            v13 = 0x534F6E6F69736976;
            break;
          case 6:
            v13 = 0x6341206F69647541;
            v12 = 0xEF79726F73736563;
            break;
          case 7:
            v12 = 0xE700000000000000;
            v13 = 0x6E776F6E6B6E55;
            break;
          default:
            break;
        }

        if (v11 == v13 && v10 == v12)
        {
          break;
        }

        v15 = sub_1C9064C2C();

        if (v15)
        {
          if (!v4)
          {
            __break(1u);
            return result;
          }

          memcpy(__dst, v8, sizeof(__dst));
          memcpy(v8, v8 - 104, 0x68uLL);
          result = memcpy(v8 - 104, __dst, 0x61uLL);
          v8 -= 104;
          if (!__CFADD__(v7++, 1))
          {
            continue;
          }
        }

        goto LABEL_30;
      }

LABEL_30:
      a3 = v19 + 1;
      v5 += 104;
      --v6;
      if (v19 + 1 != a2)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

void sub_1C8D5A780(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v4 = a3[1];
  if (v4 < 1)
  {
    v6 = MEMORY[0x1E69E7CC0];
    goto LABEL_139;
  }

  v5 = 0;
  v6 = MEMORY[0x1E69E7CC0];
LABEL_3:
  v7 = (v5 + 1);
  if (v5 + 1 >= v4)
  {
    v4 = v5 + 1;
    goto LABEL_46;
  }

  v8 = *a3;
  memcpy(__dst, (*a3 + 104 * v7), 0x61uLL);
  memcpy(v106, (v8 + 104 * v5), 0x61uLL);
  v9 = v108;
  v10 = sub_1C8D56718(__dst, v106);
  v108 = v9;
  if (v9)
  {
LABEL_149:

    return;
  }

  v11 = v5;
  v12 = v10;
  v97 = v6;
  v99 = v11;
  v104 = (v4 - 1);
  v6 = 104 * v11;
  for (i = (v8 + 104 * v11 + 208); ; i += 104)
  {
    if ((v7 + 1) >= v4)
    {
      v7 = v104;
      if (v12)
      {
        goto LABEL_37;
      }

LABEL_35:
      v6 = v97;
      v5 = v99;
      goto LABEL_46;
    }

    v14 = v4;
    v15 = *(i - 104);
    v16 = 0xE300000000000000;
    v17 = 5459817;
    switch(*i)
    {
      case 1:
        v16 = 0xE600000000000000;
        v17 = 0x534F64615069;
        break;
      case 2:
        v16 = 0xE500000000000000;
        v17 = 0x534F63616DLL;
        break;
      case 3:
        v16 = 0xE700000000000000;
        v17 = 0x534F6863746177;
        break;
      case 4:
        v16 = 0xE400000000000000;
        v17 = 1397716596;
        break;
      case 5:
        v16 = 0xE800000000000000;
        v17 = 0x534F6E6F69736976;
        break;
      case 6:
        v17 = 0x6341206F69647541;
        v16 = 0xEF79726F73736563;
        break;
      case 7:
        v16 = 0xE700000000000000;
        v17 = 0x6E776F6E6B6E55;
        break;
      default:
        break;
    }

    v18 = 0xE300000000000000;
    v19 = 5459817;
    switch(*(i - 104))
    {
      case 1:
        v18 = 0xE600000000000000;
        v19 = 0x534F64615069;
        break;
      case 2:
        v18 = 0xE500000000000000;
        v19 = 0x534F63616DLL;
        break;
      case 3:
        v18 = 0xE700000000000000;
        v19 = 0x534F6863746177;
        break;
      case 4:
        v18 = 0xE400000000000000;
        v19 = 1397716596;
        break;
      case 5:
        v18 = 0xE800000000000000;
        v19 = 0x534F6E6F69736976;
        break;
      case 6:
        v19 = 0x6341206F69647541;
        v18 = 0xEF79726F73736563;
        break;
      case 7:
        v18 = 0xE700000000000000;
        v19 = 0x6E776F6E6B6E55;
        break;
      default:
        break;
    }

    if (v17 != v19 || v16 != v18)
    {
      break;
    }

    if (v12)
    {
      v4 = (v7 + 1);
      goto LABEL_37;
    }

LABEL_30:
    ++v7;
    v4 = v14;
  }

  v21 = sub_1C9064C2C();

  if (((v12 ^ v21) & 1) == 0)
  {
    goto LABEL_30;
  }

  v4 = (v7 + 1);
  if ((v12 & 1) == 0)
  {
    goto LABEL_35;
  }

LABEL_37:
  v5 = v99;
  if (v4 < v99)
  {
    goto LABEL_172;
  }

  if (v99 <= v7)
  {
    v22 = 104 * v4 - 104;
    v23 = v4;
    v24 = v99;
    do
    {
      if (v24 != --v23)
      {
        v25 = *a3;
        if (!*a3)
        {
          goto LABEL_179;
        }

        memcpy(__dst, (v25 + v6), 0x61uLL);
        memmove((v25 + v6), (v25 + v22), 0x68uLL);
        memcpy((v25 + v22), __dst, 0x61uLL);
      }

      ++v24;
      v22 -= 104;
      v6 += 104;
    }

    while (v24 < v23);
    v6 = v97;
  }

  else
  {
    v6 = v97;
  }

LABEL_46:
  v26 = a3[1];
  if (v4 >= v26)
  {
    goto LABEL_55;
  }

  if (__OFSUB__(v4, v5))
  {
    goto LABEL_171;
  }

  if (v4 - v5 >= a4)
  {
    goto LABEL_55;
  }

  if (__OFADD__(v5, a4))
  {
    goto LABEL_173;
  }

  if (v5 + a4 >= v26)
  {
    v27 = a3[1];
  }

  else
  {
    v27 = (v5 + a4);
  }

  if (v27 < v5)
  {
LABEL_174:
    __break(1u);
    goto LABEL_175;
  }

  if (v4 == v27)
  {
LABEL_55:
    v28 = v4;
    goto LABEL_56;
  }

  v98 = v6;
  v100 = v5;
  v71 = *a3;
  v72 = *a3 + 104 * v4;
  v73 = v5 - v4;
  v103 = v27;
LABEL_108:
  v104 = v4;
  v74 = v73;
  v75 = v72;
  while (1)
  {
    v76 = *(v75 - 104);
    v77 = 0xE300000000000000;
    v78 = 5459817;
    switch(*v75)
    {
      case 1:
        v77 = 0xE600000000000000;
        v78 = 0x534F64615069;
        break;
      case 2:
        v77 = 0xE500000000000000;
        v78 = 0x534F63616DLL;
        break;
      case 3:
        v77 = 0xE700000000000000;
        v78 = 0x534F6863746177;
        break;
      case 4:
        v77 = 0xE400000000000000;
        v78 = 1397716596;
        break;
      case 5:
        v77 = 0xE800000000000000;
        v78 = 0x534F6E6F69736976;
        break;
      case 6:
        v78 = 0x6341206F69647541;
        v77 = 0xEF79726F73736563;
        break;
      case 7:
        v77 = 0xE700000000000000;
        v78 = 0x6E776F6E6B6E55;
        break;
      default:
        break;
    }

    v79 = 0xE300000000000000;
    v80 = 5459817;
    switch(*(v75 - 104))
    {
      case 1:
        v79 = 0xE600000000000000;
        v80 = 0x534F64615069;
        break;
      case 2:
        v79 = 0xE500000000000000;
        v80 = 0x534F63616DLL;
        break;
      case 3:
        v79 = 0xE700000000000000;
        v80 = 0x534F6863746177;
        break;
      case 4:
        v79 = 0xE400000000000000;
        v80 = 1397716596;
        break;
      case 5:
        v79 = 0xE800000000000000;
        v80 = 0x534F6E6F69736976;
        break;
      case 6:
        v80 = 0x6341206F69647541;
        v79 = 0xEF79726F73736563;
        break;
      case 7:
        v79 = 0xE700000000000000;
        v80 = 0x6E776F6E6B6E55;
        break;
      default:
        break;
    }

    if (v78 == v80 && v77 == v79)
    {

LABEL_135:
      v28 = v103;
      ++v4;
      v72 += 104;
      --v73;
      if (v104 + 1 != v103)
      {
        goto LABEL_108;
      }

      v6 = v98;
      v5 = v100;
LABEL_56:
      if (v28 < v5)
      {
        goto LABEL_170;
      }

      v102 = v28;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v84 = *(v6 + 16);
        sub_1C8D00D94();
        v6 = v85;
      }

      v29 = *(v6 + 16);
      v30 = v29 + 1;
      if (v29 >= *(v6 + 24) >> 1)
      {
        sub_1C8D00D94();
        v6 = v86;
      }

      *(v6 + 16) = v30;
      v31 = v6 + 32;
      v32 = (v6 + 32 + 16 * v29);
      *v32 = v5;
      v32[1] = v102;
      v104 = *a1;
      if (!*a1)
      {
        goto LABEL_180;
      }

      if (v29)
      {
        while (2)
        {
          v33 = v30 - 1;
          v34 = (v31 + 16 * (v30 - 1));
          v35 = (v6 + 16 * v30);
          if (v30 >= 4)
          {
            v40 = v31 + 16 * v30;
            v41 = *(v40 - 64);
            v42 = *(v40 - 56);
            v46 = __OFSUB__(v42, v41);
            v43 = v42 - v41;
            if (v46)
            {
              goto LABEL_155;
            }

            v45 = *(v40 - 48);
            v44 = *(v40 - 40);
            v46 = __OFSUB__(v44, v45);
            v38 = v44 - v45;
            v39 = v46;
            if (v46)
            {
              goto LABEL_156;
            }

            v47 = v35[1];
            v48 = v47 - *v35;
            if (__OFSUB__(v47, *v35))
            {
              goto LABEL_158;
            }

            v46 = __OFADD__(v38, v48);
            v49 = v38 + v48;
            if (v46)
            {
              goto LABEL_161;
            }

            if (v49 >= v43)
            {
              v63 = *v34;
              v62 = v34[1];
              v46 = __OFSUB__(v62, v63);
              v64 = v62 - v63;
              if (v46)
              {
                goto LABEL_169;
              }

              if (v38 < v64)
              {
                v33 = v30 - 2;
              }
            }

            else
            {
LABEL_76:
              if (v39)
              {
                goto LABEL_157;
              }

              v51 = *v35;
              v50 = v35[1];
              v52 = __OFSUB__(v50, v51);
              v53 = v50 - v51;
              v54 = v52;
              if (v52)
              {
                goto LABEL_160;
              }

              v55 = v34[1];
              v56 = v55 - *v34;
              if (__OFSUB__(v55, *v34))
              {
                goto LABEL_163;
              }

              if (__OFADD__(v53, v56))
              {
                goto LABEL_165;
              }

              if (v53 + v56 < v38)
              {
                goto LABEL_91;
              }

              if (v38 < v56)
              {
                v33 = v30 - 2;
              }
            }
          }

          else
          {
            if (v30 == 3)
            {
              v36 = *(v6 + 32);
              v37 = *(v6 + 40);
              v46 = __OFSUB__(v37, v36);
              v38 = v37 - v36;
              v39 = v46;
              goto LABEL_76;
            }

            if (v30 < 2)
            {
              goto LABEL_159;
            }

            v58 = *v35;
            v57 = v35[1];
            v46 = __OFSUB__(v57, v58);
            v53 = v57 - v58;
            v54 = v46;
LABEL_91:
            if (v54)
            {
              goto LABEL_162;
            }

            v60 = *v34;
            v59 = v34[1];
            v46 = __OFSUB__(v59, v60);
            v61 = v59 - v60;
            if (v46)
            {
              goto LABEL_164;
            }

            if (v61 < v53)
            {
              break;
            }
          }

          if (v33 - 1 >= v30)
          {
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
LABEL_157:
            __break(1u);
LABEL_158:
            __break(1u);
LABEL_159:
            __break(1u);
LABEL_160:
            __break(1u);
LABEL_161:
            __break(1u);
LABEL_162:
            __break(1u);
LABEL_163:
            __break(1u);
LABEL_164:
            __break(1u);
LABEL_165:
            __break(1u);
LABEL_166:
            __break(1u);
LABEL_167:
            __break(1u);
LABEL_168:
            __break(1u);
LABEL_169:
            __break(1u);
LABEL_170:
            __break(1u);
LABEL_171:
            __break(1u);
LABEL_172:
            __break(1u);
LABEL_173:
            __break(1u);
            goto LABEL_174;
          }

          if (!*a3)
          {
            goto LABEL_177;
          }

          v65 = v6;
          v6 = v31 + 16 * (v33 - 1);
          v66 = *v6;
          v67 = v31 + 16 * v33;
          v68 = *(v67 + 8);
          v69 = v108;
          sub_1C8D5B168((*a3 + 104 * *v6), (*a3 + 104 * *v67), (*a3 + 104 * v68), v104);
          v108 = v69;
          if (v69)
          {
            goto LABEL_149;
          }

          if (v68 < v66)
          {
            goto LABEL_152;
          }

          v70 = *(v65 + 16);
          if (v33 > v70)
          {
            goto LABEL_153;
          }

          *v6 = v66;
          *(v6 + 8) = v68;
          if (v33 >= v70)
          {
            goto LABEL_154;
          }

          v30 = v70 - 1;
          sub_1C8DDBD9C((v67 + 16), v70 - 1 - v33, (v31 + 16 * v33));
          v6 = v65;
          *(v65 + 16) = v70 - 1;
          if (v70 <= 2)
          {
            break;
          }

          continue;
        }
      }

      v4 = a3[1];
      v5 = v102;
      if (v102 >= v4)
      {
LABEL_139:
        v104 = *a1;
        if (!*a1)
        {
          goto LABEL_181;
        }

        if (swift_isUniquelyReferenced_nonNull_native())
        {
LABEL_141:
          v87 = v6;
          v88 = (v6 + 16);
          v89 = *(v6 + 16);
          v6 = 104;
          while (v89 >= 2)
          {
            if (!*a3)
            {
              goto LABEL_178;
            }

            v90 = (v87 + 16 * v89);
            v91 = *v90;
            v92 = &v88[2 * v89];
            v93 = *(v92 + 1);
            v94 = v108;
            sub_1C8D5B168((*a3 + 104 * *v90), (*a3 + 104 * *v92), (*a3 + 104 * v93), v104);
            v108 = v94;
            if (v94)
            {
              break;
            }

            if (v93 < v91)
            {
              goto LABEL_166;
            }

            if (v89 - 2 >= *v88)
            {
              goto LABEL_167;
            }

            *v90 = v91;
            v90[1] = v93;
            v95 = *v88 - v89;
            if (*v88 < v89)
            {
              goto LABEL_168;
            }

            v89 = *v88 - 1;
            sub_1C8DDBD9C(v92 + 16, v95, v92);
            *v88 = v89;
          }

          goto LABEL_149;
        }

LABEL_175:
        v6 = sub_1C8DDBD88(v6);
        goto LABEL_141;
      }

      goto LABEL_3;
    }

    v82 = sub_1C9064C2C();

    if ((v82 & 1) == 0)
    {
      goto LABEL_135;
    }

    if (!v71)
    {
      break;
    }

    memcpy(__dst, v75, 0x61uLL);
    memcpy(v75, v75 - 104, 0x68uLL);
    memcpy(v75 - 104, __dst, 0x61uLL);
    v75 -= 104;
    if (__CFADD__(v74++, 1))
    {
      goto LABEL_135;
    }
  }

  __break(1u);
LABEL_177:
  __break(1u);
LABEL_178:
  __break(1u);
LABEL_179:
  __break(1u);
LABEL_180:
  __break(1u);
LABEL_181:
  __break(1u);
}

uint64_t sub_1C8D5B168(char *a1, char *a2, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = a2;
  v7 = a1;
  v8 = (a2 - a1) / 104;
  v9 = (a3 - a2) / 104;
  if (v8 < v9)
  {
    sub_1C8D0C590(a1, (a2 - a1) / 104, a4);
    v10 = &v4[104 * v8];
    while (1)
    {
      if (v4 >= v10 || v6 >= v5)
      {
        v6 = v7;
        goto LABEL_71;
      }

      v12 = *v4;
      v13 = 0xE300000000000000;
      v14 = 5459817;
      switch(*v6)
      {
        case 1:
          v13 = 0xE600000000000000;
          v14 = 0x534F64615069;
          break;
        case 2:
          v13 = 0xE500000000000000;
          v14 = 0x534F63616DLL;
          break;
        case 3:
          v13 = 0xE700000000000000;
          v14 = 0x534F6863746177;
          break;
        case 4:
          v13 = 0xE400000000000000;
          v14 = 1397716596;
          break;
        case 5:
          v13 = 0xE800000000000000;
          v14 = 0x534F6E6F69736976;
          break;
        case 6:
          v14 = 0x6341206F69647541;
          v13 = 0xEF79726F73736563;
          break;
        case 7:
          v13 = 0xE700000000000000;
          v14 = 0x6E776F6E6B6E55;
          break;
        default:
          break;
      }

      v15 = 0xE300000000000000;
      v16 = 5459817;
      switch(*v4)
      {
        case 1:
          v15 = 0xE600000000000000;
          v16 = 0x534F64615069;
          break;
        case 2:
          v15 = 0xE500000000000000;
          v16 = 0x534F63616DLL;
          break;
        case 3:
          v15 = 0xE700000000000000;
          v16 = 0x534F6863746177;
          break;
        case 4:
          v15 = 0xE400000000000000;
          v16 = 1397716596;
          break;
        case 5:
          v15 = 0xE800000000000000;
          v16 = 0x534F6E6F69736976;
          break;
        case 6:
          v16 = 0x6341206F69647541;
          v15 = 0xEF79726F73736563;
          break;
        case 7:
          v15 = 0xE700000000000000;
          v16 = 0x6E776F6E6B6E55;
          break;
        default:
          break;
      }

      v17 = v14 == v16 && v13 == v15;
      if (v17)
      {
        break;
      }

      v18 = sub_1C9064C2C();

      if ((v18 & 1) == 0)
      {
        goto LABEL_32;
      }

      v19 = v6;
      v17 = v7 == v6;
      v6 += 104;
      if (!v17)
      {
        goto LABEL_33;
      }

LABEL_34:
      v7 += 104;
    }

LABEL_32:
    v19 = v4;
    v17 = v7 == v4;
    v4 += 104;
    if (v17)
    {
      goto LABEL_34;
    }

LABEL_33:
    memmove(v7, v19, 0x68uLL);
    goto LABEL_34;
  }

  sub_1C8D0C590(a2, (a3 - a2) / 104, a4);
  v10 = &v4[104 * v9];
LABEL_36:
  v20 = v6 - 104;
  v21 = v5 - 104;
  for (__src = v6 - 104; v10 > v4 && v6 > v7; v20 = __src)
  {
    v36 = v21 + 104;
    v23 = *v20;
    v24 = 0xE300000000000000;
    v25 = v21;
    v26 = 5459817;
    switch(*(v10 - 104))
    {
      case 1:
        v24 = 0xE600000000000000;
        v26 = 0x534F64615069;
        break;
      case 2:
        v24 = 0xE500000000000000;
        v26 = 0x534F63616DLL;
        break;
      case 3:
        v24 = 0xE700000000000000;
        v26 = 0x534F6863746177;
        break;
      case 4:
        v24 = 0xE400000000000000;
        v26 = 1397716596;
        break;
      case 5:
        v24 = 0xE800000000000000;
        v26 = 0x534F6E6F69736976;
        break;
      case 6:
        v26 = 0x6341206F69647541;
        v24 = 0xEF79726F73736563;
        break;
      case 7:
        v24 = 0xE700000000000000;
        v26 = 0x6E776F6E6B6E55;
        break;
      default:
        break;
    }

    v27 = 0xE300000000000000;
    v28 = 5459817;
    switch(v23)
    {
      case 1:
        v27 = 0xE600000000000000;
        v28 = 0x534F64615069;
        break;
      case 2:
        v27 = 0xE500000000000000;
        v28 = 0x534F63616DLL;
        break;
      case 3:
        v27 = 0xE700000000000000;
        v28 = 0x534F6863746177;
        break;
      case 4:
        v27 = 0xE400000000000000;
        v28 = 1397716596;
        break;
      case 5:
        v27 = 0xE800000000000000;
        v28 = 0x534F6E6F69736976;
        break;
      case 6:
        v28 = 0x6341206F69647541;
        v27 = 0xEF79726F73736563;
        break;
      case 7:
        v27 = 0xE700000000000000;
        v28 = 0x6E776F6E6B6E55;
        break;
      default:
        break;
    }

    v29 = v6;
    if (v26 == v28 && v24 == v27)
    {
    }

    else
    {
      v31 = sub_1C9064C2C();

      if (v31)
      {
        v5 = v25;
        v6 = __src;
        if (v25 + 104 != v29)
        {
          memmove(v25, __src, 0x68uLL);
          v6 = __src;
        }

        goto LABEL_36;
      }
    }

    if (v10 != v36)
    {
      memmove(v25, v10 - 104, 0x68uLL);
    }

    v21 = v25 - 104;
    v10 -= 104;
    v6 = v29;
  }

LABEL_71:
  v32 = 104 * ((v10 - v4) / 104);
  if (v6 != v4 || v6 >= &v4[v32])
  {
    memmove(v6, v4, v32);
  }

  return 1;
}

_BYTE *sub_1C8D5B6F8@<X0>(_BYTE *result@<X0>, BOOL *a2@<X8>)
{
  v3 = *result;
  v4 = v3 > 0x20;
  v5 = (1 << v3) & 0x100003E01;
  v6 = v4 || v5 == 0;
  v7 = v6 && (result = _swift_stdlib_strtod_clocale()) != 0 && *result == 0;
  *a2 = v7;
  return result;
}

unint64_t sub_1C8D5B764()
{
  result = qword_1EDA66810;
  if (!qword_1EDA66810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA66810);
  }

  return result;
}

unint64_t sub_1C8D5B7B8()
{
  result = qword_1EC313DB0;
  if (!qword_1EC313DB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC313DB0);
  }

  return result;
}

unint64_t sub_1C8D5B80C()
{
  result = qword_1EDA69548;
  if (!qword_1EDA69548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA69548);
  }

  return result;
}

unint64_t sub_1C8D5B860()
{
  result = qword_1EDA63710;
  if (!qword_1EDA63710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA63710);
  }

  return result;
}

unint64_t sub_1C8D5B8B4()
{
  result = qword_1EDA63200;
  if (!qword_1EDA63200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA63200);
  }

  return result;
}

unint64_t sub_1C8D5B908()
{
  result = qword_1EDA63708;
  if (!qword_1EDA63708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA63708);
  }

  return result;
}

unint64_t sub_1C8D5B95C()
{
  result = qword_1EDA631F8;
  if (!qword_1EDA631F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA631F8);
  }

  return result;
}

unint64_t sub_1C8D5B9B0()
{
  result = qword_1EDA69C60;
  if (!qword_1EDA69C60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA69C60);
  }

  return result;
}

unint64_t sub_1C8D5BA04()
{
  result = qword_1EC313E18;
  if (!qword_1EC313E18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC313E18);
  }

  return result;
}

unint64_t sub_1C8D5BA58()
{
  result = qword_1EC313E20;
  if (!qword_1EC313E20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC313E20);
  }

  return result;
}

unint64_t sub_1C8D5BAAC()
{
  result = qword_1EDA69BE8;
  if (!qword_1EDA69BE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA69BE8);
  }

  return result;
}

unint64_t sub_1C8D5BB00()
{
  result = qword_1EDA69C48;
  if (!qword_1EDA69C48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA69C48);
  }

  return result;
}

unint64_t sub_1C8D5BB54()
{
  result = qword_1EDA69C00;
  if (!qword_1EDA69C00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA69C00);
  }

  return result;
}

unint64_t sub_1C8D5BBA8()
{
  result = qword_1EDA69BD0;
  if (!qword_1EDA69BD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA69BD0);
  }

  return result;
}

unint64_t sub_1C8D5BBFC()
{
  result = qword_1EDA69C30;
  if (!qword_1EDA69C30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA69C30);
  }

  return result;
}

unint64_t sub_1C8D5BC50()
{
  result = qword_1EDA69C18;
  if (!qword_1EDA69C18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA69C18);
  }

  return result;
}

uint64_t sub_1C8D5BCA4()
{
  sub_1C9063EEC();
  OUTLINED_FUNCTION_29_5();
  if (v1 == sub_1C9063EEC() && v0 == v2)
  {
    v4 = 1;
  }

  else
  {
    v4 = OUTLINED_FUNCTION_13_8();
  }

  return v4 & 1;
}

unint64_t sub_1C8D5BD10()
{
  result = qword_1EDA696B8;
  if (!qword_1EDA696B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA696B8);
  }

  return result;
}

unint64_t sub_1C8D5BD68()
{
  result = qword_1EC313E80;
  if (!qword_1EC313E80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC313E80);
  }

  return result;
}

unint64_t sub_1C8D5BDC0()
{
  result = qword_1EDA60B90;
  if (!qword_1EDA60B90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA60B90);
  }

  return result;
}

unint64_t sub_1C8D5BE14()
{
  result = qword_1EC313E88;
  if (!qword_1EC313E88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC313E88);
  }

  return result;
}

unint64_t sub_1C8D5BE6C()
{
  result = qword_1EC313E90;
  if (!qword_1EC313E90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC313E90);
  }

  return result;
}

unint64_t sub_1C8D5BED0()
{
  result = qword_1EC313E98;
  if (!qword_1EC313E98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC313E98);
  }

  return result;
}

uint64_t sub_1C8D5BF44(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFE && *(a1 + 97))
    {
      v2 = *a1 + 253;
    }

    else
    {
      v3 = *(a1 + 32);
      if (v3 >= 2)
      {
        v2 = ((v3 + 2147483646) & 0x7FFFFFFF) - 1;
      }

      else
      {
        v2 = -2;
      }

      if (v2 < 0)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1C8D5BF9C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 96) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 97) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 97) = 0;
    }

    if (a2)
    {
      *(result + 32) = a2 + 2;
    }
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

uint64_t sub_1C8D5C028(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 25))
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 24);
      v4 = v3 >= 2;
      v2 = (v3 + 2147483646) & 0x7FFFFFFF;
      if (!v4)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1C8D5C074(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2 + 1;
    }
  }

  return result;
}

_BYTE *sub_1C8D5C0D8(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xF9)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF8)
  {
    v6 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
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
          *result = a2 + 7;
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_1C8D5C234(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *sub_1C8D5C310(_BYTE *result, int a2, int a3)
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

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
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
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

unint64_t sub_1C8D5C3BC()
{
  result = qword_1EC313EA0;
  if (!qword_1EC313EA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC313EA0);
  }

  return result;
}

unint64_t sub_1C8D5C414()
{
  result = qword_1EC313EA8;
  if (!qword_1EC313EA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC313EA8);
  }

  return result;
}

unint64_t sub_1C8D5C46C()
{
  result = qword_1EC313EB0;
  if (!qword_1EC313EB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC313EB0);
  }

  return result;
}

unint64_t sub_1C8D5C4C4()
{
  result = qword_1EC313EB8;
  if (!qword_1EC313EB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC313EB8);
  }

  return result;
}

unint64_t sub_1C8D5C51C()
{
  result = qword_1EDA696A8;
  if (!qword_1EDA696A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA696A8);
  }

  return result;
}

unint64_t sub_1C8D5C574()
{
  result = qword_1EDA696B0;
  if (!qword_1EDA696B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA696B0);
  }

  return result;
}

unint64_t sub_1C8D5C5CC()
{
  result = qword_1EDA69C08;
  if (!qword_1EDA69C08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA69C08);
  }

  return result;
}

unint64_t sub_1C8D5C624()
{
  result = qword_1EDA69C10;
  if (!qword_1EDA69C10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA69C10);
  }

  return result;
}

unint64_t sub_1C8D5C67C()
{
  result = qword_1EDA69C20;
  if (!qword_1EDA69C20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA69C20);
  }

  return result;
}

unint64_t sub_1C8D5C6D4()
{
  result = qword_1EDA69C28;
  if (!qword_1EDA69C28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA69C28);
  }

  return result;
}

unint64_t sub_1C8D5C72C()
{
  result = qword_1EDA69BC0;
  if (!qword_1EDA69BC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA69BC0);
  }

  return result;
}

unint64_t sub_1C8D5C784()
{
  result = qword_1EDA69BC8;
  if (!qword_1EDA69BC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA69BC8);
  }

  return result;
}

unint64_t sub_1C8D5C7DC()
{
  result = qword_1EDA69BF0;
  if (!qword_1EDA69BF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA69BF0);
  }

  return result;
}

unint64_t sub_1C8D5C834()
{
  result = qword_1EDA69BF8;
  if (!qword_1EDA69BF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA69BF8);
  }

  return result;
}

unint64_t sub_1C8D5C88C()
{
  result = qword_1EDA69C38;
  if (!qword_1EDA69C38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA69C38);
  }

  return result;
}

unint64_t sub_1C8D5C8E4()
{
  result = qword_1EDA69C40;
  if (!qword_1EDA69C40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA69C40);
  }

  return result;
}

unint64_t sub_1C8D5C93C()
{
  result = qword_1EDA69BD8;
  if (!qword_1EDA69BD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA69BD8);
  }

  return result;
}

unint64_t sub_1C8D5C994()
{
  result = qword_1EDA69BE0;
  if (!qword_1EDA69BE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA69BE0);
  }

  return result;
}

unint64_t sub_1C8D5C9EC()
{
  result = qword_1EC313EC0;
  if (!qword_1EC313EC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC313EC0);
  }

  return result;
}

unint64_t sub_1C8D5CA44()
{
  result = qword_1EC313EC8;
  if (!qword_1EC313EC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC313EC8);
  }

  return result;
}

unint64_t sub_1C8D5CA9C()
{
  result = qword_1EC313ED0;
  if (!qword_1EC313ED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC313ED0);
  }

  return result;
}

unint64_t sub_1C8D5CAF4()
{
  result = qword_1EC313ED8;
  if (!qword_1EC313ED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC313ED8);
  }

  return result;
}

unint64_t sub_1C8D5CB4C()
{
  result = qword_1EDA69C50;
  if (!qword_1EDA69C50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA69C50);
  }

  return result;
}

unint64_t sub_1C8D5CBA4()
{
  result = qword_1EDA69C58;
  if (!qword_1EDA69C58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA69C58);
  }

  return result;
}

unint64_t sub_1C8D5CBFC()
{
  result = qword_1EDA69538;
  if (!qword_1EDA69538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA69538);
  }

  return result;
}

unint64_t sub_1C8D5CC54()
{
  result = qword_1EDA69540;
  if (!qword_1EDA69540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA69540);
  }

  return result;
}

id sub_1C8D5CDA0()
{
  v0 = sub_1C9063F3C();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C9063F2C();
  v5 = sub_1C9063EFC();
  v7 = v6;
  (*(v1 + 8))(v4, v0);
  if (v7 >> 60 == 15)
  {
    result = sub_1C906491C();
    __break(1u);
  }

  else
  {

    sub_1C8CB78AC(0, &qword_1EC313EE8, 0x1E696AE58);
    return sub_1C8D5CF20(v5, v7);
  }

  return result;
}

id sub_1C8D5CF20(uint64_t a1, unint64_t a2)
{
  v4 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v5 = sub_1C9061EFC();
  v6 = [v4 initWithData_];

  sub_1C8CE7B78(a1, a2);
  return v6;
}

uint64_t sub_1C8D5CF98(void *a1)
{
  v2 = sub_1C9063F3C();
  v3 = *(*(v2 - 8) + 64);
  v4 = 0;
  if ([a1 beginContentAccess])
  {
    v5 = sub_1C9061F3C();
    v7 = v6;
    sub_1C9063F2C();
    v4 = sub_1C9063F0C();
    sub_1C8CE7B78(v5, v7);
    [a1 endContentAccess];
  }

  return v4;
}

uint64_t sub_1C8D5D0F8()
{
  sub_1C9064D7C();
  sub_1C90645CC();
  return sub_1C9064DBC();
}

uint64_t sub_1C8D5D14C()
{
  v1 = *v0;
  sub_1C9064D7C();
  sub_1C90645CC();
  return sub_1C9064DBC();
}

uint64_t sub_1C8D5D18C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  return sub_1C8D5D080();
}

uint64_t sub_1C8D5D198()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return v0;
}

uint64_t sub_1C8D5D1C0()
{
  sub_1C8D5D198();

  return MEMORY[0x1EEE6BDC0](v0, 32, 7);
}

unint64_t sub_1C8D5D22C()
{
  result = qword_1EC313EE0;
  if (!qword_1EC313EE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC313EE0);
  }

  return result;
}

void ToolDatabase.get<A>(_:)()
{
  v0 = 3;
  swift_getAssociatedTypeWitness();
  sub_1C906464C();
  ToolDatabase.performInTransaction<A>(mode:work:)(&v0);
}

void sub_1C8D5D318(void (*a1)(uint64_t))
{
  v30[1] = *MEMORY[0x1E69E9840];
  v2 = sub_1C9063D3C();
  v3 = OUTLINED_FUNCTION_11(v2);
  v29 = v4;
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_15();
  v9 = v8 - v7;
  v10 = [objc_opt_self() currentProcess];
  v11 = [v10 isManaged];

  if (v11)
  {
    v28 = a1;
    v12 = [objc_opt_self() currentProcess];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312EB8, &qword_1C906A018);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_1C906A000;
    sub_1C8CB78AC(0, &qword_1EC312EC0, 0x1E69C7560);
    *(v13 + 32) = sub_1C8D11144();
    v14 = objc_allocWithZone(MEMORY[0x1E69C7548]);
    v15 = sub_1C8D13FA0(0xD000000000000017, 0x80000001C90C96E0, v12);
    v30[0] = 0;
    if ([v15 acquireWithError_])
    {
      a1(v30[0]);
    }

    else
    {
      v16 = v30[0];
      v17 = sub_1C9061D7C();

      swift_willThrow();
      v18 = *MEMORY[0x1E69E10F0];
      sub_1C906371C();
      v19 = v17;
      v20 = sub_1C9063D1C();
      v21 = sub_1C906444C();

      if (os_log_type_enabled(v20, v21))
      {
        v22 = swift_slowAlloc();
        v23 = swift_slowAlloc();
        *v22 = 138412290;
        v24 = v17;
        v25 = _swift_stdlib_bridgeErrorToNSError();
        *(v22 + 4) = v25;
        *v23 = v25;
        _os_log_impl(&dword_1C8C9B000, v20, v21, "Failed to acquire RBS assertion to perform database operation. Still performing the operation: %@", v22, 0xCu);
        sub_1C8D16D78(v23, &qword_1EC312EC8, &qword_1C9071EA0);
        MEMORY[0x1CCA833A0](v23, -1, -1);
        MEMORY[0x1CCA833A0](v22, -1, -1);
      }

      else
      {
      }

      v26 = (*(v29 + 8))(v9, v2);
      v28(v26);
    }

    [v15 invalidate];
  }

  else
  {
    (a1)();
  }

  v27 = *MEMORY[0x1E69E9840];
}

uint64_t ToolDatabase.__allocating_init(file:readonly:)(uint64_t a1, int a2)
{
  v4 = OUTLINED_FUNCTION_8_12();
  ToolDatabase.init(file:readonly:)(a1, a2);
  return v4;
}

uint64_t sub_1C8D5D758(uint64_t a1)
{
  v2 = *(a1 + 16);
  sub_1C906273C();
  v3 = OBJC_IVAR____TtC7ToolKit12ToolDatabase_lock;
  swift_beginAccess();
  v4 = type metadata accessor for FileLock(0);
  if (!__swift_getEnumTagSinglePayload(a1 + v3, 1, v4))
  {
    v6 = 2;
    FileLock.unlock(configuration:)(&v6);
  }

  return swift_endAccess();
}

void sub_1C8D5D838()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  ToolDatabase.Accessor.get<A>(_:)();
}

unint64_t sub_1C8D5D868()
{
  result = qword_1EC313EF0;
  if (!qword_1EC313EF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC313EF0);
  }

  return result;
}

uint64_t sub_1C8D5D8BC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ToolDatabase.DatabaseFile(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

ToolKit::ToolDatabase::DidChangeNotificationSource_optional __swiftcall ToolDatabase.DidChangeNotificationSource.init(rawValue:)(Swift::Int rawValue)
{
  if (rawValue == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (!rawValue)
  {
    v2 = 0;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t sub_1C8D5D970@<X0>(uint64_t *a1@<X8>)
{
  result = ToolDatabase.DidChangeNotificationSource.rawValue.getter();
  *a1 = result;
  return result;
}

void sub_1C8D5D9A0()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  ToolDatabase.Accessor.store<A>(_:for:)();
}

unint64_t sub_1C8D5D9D4()
{
  result = qword_1EC313F08;
  if (!qword_1EC313F08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC313F08);
  }

  return result;
}

uint64_t type metadata accessor for ToolDatabase()
{
  result = qword_1EDA6D860;
  if (!qword_1EDA6D860)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1C8D5DA7C()
{
  sub_1C8D5DBDC(319, &qword_1EDA6D458, type metadata accessor for ToolDatabase.DatabaseFile);
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    sub_1C8D5DBDC(319, &qword_1EDA6D038, type metadata accessor for FileLock);
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

void sub_1C8D5DBDC(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1C906464C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

_BYTE *storeEnumTagSinglePayload for ToolDatabase.DidChangeNotificationSource(_BYTE *result, unsigned int a2, unsigned int a3)
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

void sub_1C8D5DD0C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = a1;
    v41 = MEMORY[0x1E69E7CC0];
    sub_1C8CA6480();
    v3 = v41;
    v6 = sub_1C8D3F274(v2);
    v7 = 0;
    v8 = v2 + 56;
    v28 = v2 + 64;
    v29 = v1;
    v30 = v2;
    v31 = v2 + 56;
    if ((v6 & 0x8000000000000000) == 0)
    {
      while (v6 < 1 << *(v2 + 32))
      {
        if ((*(v8 + 8 * (v6 >> 6)) & (1 << v6)) == 0)
        {
          goto LABEL_36;
        }

        if (*(v2 + 36) != v4)
        {
          goto LABEL_37;
        }

        v33 = v6 >> 6;
        v37 = v5;
        v32 = v7;
        v9 = (*(v2 + 48) + 104 * v6);
        v10 = v9[2];
        v36 = v9[1];
        v11 = v9[6];
        v38 = v3;
        v12 = v9[9];
        v34 = v4;
        v35 = v9[10];
        v13 = v9[11];
        v39 = v9[3];
        v40 = v9[4];
        if (v11)
        {
          v14 = v9[5];
        }

        else
        {
          v14 = 0;
        }

        if (v11)
        {
          v15 = v9[6];
        }

        else
        {
          v15 = 0xE000000000000000;
        }

        swift_bridgeObjectRetain_n();
        swift_bridgeObjectRetain_n();

        MEMORY[0x1CCA81A90](v14, v15);

        if (v13)
        {
          v16 = v35;
        }

        else
        {
          v16 = 0;
        }

        if (v13)
        {
          v17 = v13;
        }

        else
        {
          v17 = 0xE000000000000000;
        }

        MEMORY[0x1CCA81A90](v16, v17);

        v3 = v38;

        v18 = *(v38 + 16);
        if (v18 >= *(v38 + 24) >> 1)
        {
          sub_1C8CA6480();
          v3 = v38;
        }

        *(v3 + 16) = v18 + 1;
        v19 = v3 + 16 * v18;
        *(v19 + 32) = v39;
        *(v19 + 40) = v40;
        v8 = v31;
        if (v37)
        {
          goto LABEL_41;
        }

        v2 = v30;
        v20 = 1 << *(v30 + 32);
        if (v6 >= v20)
        {
          goto LABEL_38;
        }

        v21 = *(v31 + 8 * v33);
        if ((v21 & (1 << v6)) == 0)
        {
          goto LABEL_39;
        }

        if (*(v30 + 36) != v34)
        {
          goto LABEL_40;
        }

        v22 = v21 & (-2 << (v6 & 0x3F));
        if (v22)
        {
          v20 = __clz(__rbit64(v22)) | v6 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v23 = v33 << 6;
          v24 = v33 + 1;
          v25 = (v28 + 8 * v33);
          while (v24 < (v20 + 63) >> 6)
          {
            v27 = *v25++;
            v26 = v27;
            v23 += 64;
            ++v24;
            if (v27)
            {
              sub_1C8CAF698(v6, v34, 0);
              v20 = __clz(__rbit64(v26)) + v23;
              goto LABEL_31;
            }
          }

          sub_1C8CAF698(v6, v34, 0);
        }

LABEL_31:
        v7 = v32 + 1;
        if (v32 + 1 == v29)
        {
          return;
        }

        v5 = 0;
        v4 = *(v30 + 36);
        v6 = v20;
        if (v20 < 0)
        {
          break;
        }
      }
    }

    __break(1u);
LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
  }
}

void sub_1C8D5E02C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = a1;
    v30 = MEMORY[0x1E69E7CC0];
    sub_1C8CA6480();
    v5 = sub_1C8D3F274(v2);
    v6 = 0;
    v7 = v2 + 56;
    v24 = v2 + 64;
    v25 = v1;
    v26 = v2 + 56;
    v27 = v2;
    if ((v5 & 0x8000000000000000) == 0)
    {
      while (v5 < 1 << *(v2 + 32))
      {
        v8 = v5 >> 6;
        if ((*(v7 + 8 * (v5 >> 6)) & (1 << v5)) == 0)
        {
          goto LABEL_30;
        }

        if (*(v2 + 36) != v3)
        {
          goto LABEL_31;
        }

        v29 = v4;
        v28 = v3;
        v9 = (*(v2 + 48) + 16 * v5);
        v10 = v9[1];
        if (v10)
        {
          v11 = *v9;
        }

        else
        {
          v11 = 0;
        }

        if (v10)
        {
          v12 = v9[1];
        }

        else
        {
          v12 = 0xE000000000000000;
        }

        v14 = *(v30 + 16);
        v13 = *(v30 + 24);

        if (v14 >= v13 >> 1)
        {
          OUTLINED_FUNCTION_19_6();
          sub_1C8CA6480();
        }

        *(v30 + 16) = v14 + 1;
        v15 = v30 + 16 * v14;
        *(v15 + 32) = v11;
        *(v15 + 40) = v12;
        if (v29)
        {
          goto LABEL_35;
        }

        v7 = v26;
        v2 = v27;
        v16 = 1 << *(v27 + 32);
        if (v5 >= v16)
        {
          goto LABEL_32;
        }

        v17 = *(v26 + 8 * v8);
        if ((v17 & (1 << v5)) == 0)
        {
          goto LABEL_33;
        }

        if (*(v27 + 36) != v28)
        {
          goto LABEL_34;
        }

        v18 = v17 & (-2 << (v5 & 0x3F));
        if (v18)
        {
          v16 = __clz(__rbit64(v18)) | v5 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v19 = v8 << 6;
          v20 = v8 + 1;
          v21 = (v24 + 8 * v8);
          while (v20 < (v16 + 63) >> 6)
          {
            v23 = *v21++;
            v22 = v23;
            v19 += 64;
            ++v20;
            if (v23)
            {
              sub_1C8CAF698(v5, v28, 0);
              v16 = __clz(__rbit64(v22)) + v19;
              goto LABEL_25;
            }
          }

          sub_1C8CAF698(v5, v28, 0);
        }

LABEL_25:
        if (++v6 == v25)
        {
          return;
        }

        v4 = 0;
        v3 = *(v27 + 36);
        v5 = v16;
        if (v16 < 0)
        {
          break;
        }
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
  }
}

void sub_1C8D5E26C(uint64_t a1)
{
  if (*(a1 + 16))
  {
    v22 = MEMORY[0x1E69E7CC0];
    v21 = *(a1 + 16);
    sub_1C8D096CC();
    v4 = sub_1C8D3F274(a1);
    v5 = v21;
    v6 = 0;
    v7 = a1 + 56;
    if ((v4 & 0x8000000000000000) == 0)
    {
      while (v4 < 1 << *(a1 + 32))
      {
        v8 = v4 >> 6;
        if ((*(v7 + 8 * (v4 >> 6)) & (1 << v4)) == 0)
        {
          goto LABEL_24;
        }

        if (*(a1 + 36) != v2)
        {
          goto LABEL_25;
        }

        v9 = *(*(a1 + 48) + v4);
        v10 = *(v22 + 16);
        if (v10 >= *(v22 + 24) >> 1)
        {
          v20 = v2;
          v19 = v3;
          sub_1C8D096CC();
          v3 = v19;
          v2 = v20;
          v7 = a1 + 56;
          v5 = v21;
        }

        *(v22 + 16) = v10 + 1;
        *(v22 + 8 * v10 + 32) = v9;
        if (v3)
        {
          goto LABEL_29;
        }

        v11 = 1 << *(a1 + 32);
        if (v4 >= v11)
        {
          goto LABEL_26;
        }

        v12 = *(v7 + 8 * v8);
        if ((v12 & (1 << v4)) == 0)
        {
          goto LABEL_27;
        }

        if (*(a1 + 36) != v2)
        {
          goto LABEL_28;
        }

        v13 = v12 & (-2 << (v4 & 0x3F));
        if (v13)
        {
          v11 = __clz(__rbit64(v13)) | v4 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v14 = v8 << 6;
          v15 = v8 + 1;
          v16 = (a1 + 64 + 8 * v8);
          while (v15 < (v11 + 63) >> 6)
          {
            v18 = *v16++;
            v17 = v18;
            v14 += 64;
            ++v15;
            if (v18)
            {
              sub_1C8CAF698(v4, v2, 0);
              v7 = a1 + 56;
              v5 = v21;
              v11 = __clz(__rbit64(v17)) + v14;
              goto LABEL_19;
            }
          }

          sub_1C8CAF698(v4, v2, 0);
          v7 = a1 + 56;
          v5 = v21;
        }

LABEL_19:
        if (++v6 == v5)
        {
          return;
        }

        v3 = 0;
        v2 = *(a1 + 36);
        v4 = v11;
        if (v11 < 0)
        {
          break;
        }
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
LABEL_29:
    __break(1u);
  }
}

void sub_1C8D5E4AC(uint64_t a1)
{
  if (*(a1 + 16))
  {
    v22 = MEMORY[0x1E69E7CC0];
    v21 = *(a1 + 16);
    sub_1C8D096CC();
    v4 = sub_1C8D3F274(a1);
    v5 = v21;
    v6 = 0;
    v7 = a1 + 56;
    if ((v4 & 0x8000000000000000) == 0)
    {
      while (v4 < 1 << *(a1 + 32))
      {
        v8 = v4 >> 6;
        if ((*(v7 + 8 * (v4 >> 6)) & (1 << v4)) == 0)
        {
          goto LABEL_24;
        }

        if (*(a1 + 36) != v2)
        {
          goto LABEL_25;
        }

        v9 = *(*(a1 + 48) + v4);
        v10 = *(v22 + 16);
        if (v10 >= *(v22 + 24) >> 1)
        {
          v20 = v2;
          v19 = v3;
          sub_1C8D096CC();
          v3 = v19;
          v2 = v20;
          v7 = a1 + 56;
          v5 = v21;
        }

        *(v22 + 16) = v10 + 1;
        *(v22 + 8 * v10 + 32) = 2 * v9 - 1;
        if (v3)
        {
          goto LABEL_29;
        }

        v11 = 1 << *(a1 + 32);
        if (v4 >= v11)
        {
          goto LABEL_26;
        }

        v12 = *(v7 + 8 * v8);
        if ((v12 & (1 << v4)) == 0)
        {
          goto LABEL_27;
        }

        if (*(a1 + 36) != v2)
        {
          goto LABEL_28;
        }

        v13 = v12 & (-2 << (v4 & 0x3F));
        if (v13)
        {
          v11 = __clz(__rbit64(v13)) | v4 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v14 = v8 << 6;
          v15 = v8 + 1;
          v16 = (a1 + 64 + 8 * v8);
          while (v15 < (v11 + 63) >> 6)
          {
            v18 = *v16++;
            v17 = v18;
            v14 += 64;
            ++v15;
            if (v18)
            {
              sub_1C8CAF698(v4, v2, 0);
              v7 = a1 + 56;
              v5 = v21;
              v11 = __clz(__rbit64(v17)) + v14;
              goto LABEL_19;
            }
          }

          sub_1C8CAF698(v4, v2, 0);
          v7 = a1 + 56;
          v5 = v21;
        }

LABEL_19:
        if (++v6 == v5)
        {
          return;
        }

        v3 = 0;
        v2 = *(a1 + 36);
        v4 = v11;
        if (v11 < 0)
        {
          break;
        }
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
LABEL_29:
    __break(1u);
  }
}

void sub_1C8D5E6F4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = a1;
    v29 = MEMORY[0x1E69E7CC0];
    sub_1C8CA6480();
    v5 = sub_1C8D3F274(v2);
    v6 = 0;
    v7 = v2 + 56;
    v23 = v2 + 64;
    v24 = v2 + 56;
    v25 = v2;
    if ((v5 & 0x8000000000000000) == 0)
    {
      while (v5 < 1 << *(v2 + 32))
      {
        v8 = v5 >> 6;
        if ((*(v7 + 8 * (v5 >> 6)) & (1 << v5)) == 0)
        {
          goto LABEL_24;
        }

        if (*(v2 + 36) != v3)
        {
          goto LABEL_25;
        }

        v28 = v4;
        v26 = v6;
        v27 = v3;
        v9 = (*(v2 + 48) + 16 * v5);
        v10 = *v9;
        v11 = v9[1];
        v13 = *(v29 + 16);
        v12 = *(v29 + 24);

        if (v13 >= v12 >> 1)
        {
          sub_1C8CA6480();
        }

        *(v29 + 16) = v13 + 1;
        v14 = v29 + 16 * v13;
        *(v14 + 32) = v10;
        *(v14 + 40) = v11;
        if (v28)
        {
          goto LABEL_29;
        }

        v7 = v24;
        v2 = v25;
        v15 = 1 << *(v25 + 32);
        if (v5 >= v15)
        {
          goto LABEL_26;
        }

        v16 = *(v24 + 8 * v8);
        if ((v16 & (1 << v5)) == 0)
        {
          goto LABEL_27;
        }

        if (*(v25 + 36) != v27)
        {
          goto LABEL_28;
        }

        v17 = v16 & (-2 << (v5 & 0x3F));
        if (v17)
        {
          v15 = __clz(__rbit64(v17)) | v5 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v18 = v8 << 6;
          v19 = v8 + 1;
          v20 = (v23 + 8 * v8);
          while (v19 < (v15 + 63) >> 6)
          {
            v22 = *v20++;
            v21 = v22;
            v18 += 64;
            ++v19;
            if (v22)
            {
              sub_1C8CAF698(v5, v27, 0);
              v15 = __clz(__rbit64(v21)) + v18;
              goto LABEL_19;
            }
          }

          sub_1C8CAF698(v5, v27, 0);
        }

LABEL_19:
        v6 = v26 + 1;
        if (v26 + 1 == v1)
        {
          return;
        }

        v4 = 0;
        v3 = *(v25 + 36);
        v5 = v15;
        if (v15 < 0)
        {
          break;
        }
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
LABEL_29:
    __break(1u);
  }
}

void sub_1C8D5E92C(uint64_t a1)
{
  if (*(a1 + 16))
  {
    v28 = MEMORY[0x1E69E7CC0];
    v27 = *(a1 + 16);
    sub_1C8CA6480();
    v4 = sub_1C8D3F274(a1);
    v5 = v27;
    v6 = 0;
    v7 = a1 + 56;
    if ((v4 & 0x8000000000000000) == 0)
    {
      while (v4 < 1 << *(a1 + 32))
      {
        v8 = v4 >> 6;
        if ((*(v7 + 8 * (v4 >> 6)) & (1 << v4)) == 0)
        {
          goto LABEL_29;
        }

        if (*(a1 + 36) != v2)
        {
          goto LABEL_30;
        }

        ++v6;
        v9 = v4 & 0x3F;
        v10 = 0xE900000000000074;
        v11 = 0x6E65746E49707061;
        switch(*(*(a1 + 48) + v4))
        {
          case 1:
            v10 = 0xEA0000000000746ELL;
            v11 = 0x65746E4969726973;
            break;
          case 2:
            v10 = 0xE600000000000000;
            v11 = 0x6E6F69746361;
            break;
          case 3:
            v10 = 0xE700000000000000;
            v11 = 0x6E776F6E6B6E75;
            break;
          case 4:
            v10 = 0xE800000000000000;
            v11 = 0x6C6F6F54776F6C66;
            break;
          default:
            break;
        }

        v12 = *(v28 + 16);
        if (v12 >= *(v28 + 24) >> 1)
        {
          v25 = v2;
          v26 = v6;
          v24 = v3;
          sub_1C8CA6480();
          v9 = v4 & 0x3F;
          v3 = v24;
          v2 = v25;
          v6 = v26;
          v7 = a1 + 56;
          v5 = v27;
        }

        *(v28 + 16) = v12 + 1;
        v13 = v28 + 16 * v12;
        *(v13 + 32) = v11;
        *(v13 + 40) = v10;
        if (v3)
        {
          goto LABEL_34;
        }

        v14 = 1 << *(a1 + 32);
        if (v4 >= v14)
        {
          goto LABEL_31;
        }

        v15 = *(v7 + 8 * v8);
        if ((v15 & (1 << v4)) == 0)
        {
          goto LABEL_32;
        }

        if (*(a1 + 36) != v2)
        {
          goto LABEL_33;
        }

        v16 = v15 & (-2 << v9);
        if (v16)
        {
          v14 = __clz(__rbit64(v16)) | v4 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v17 = v8 << 6;
          v18 = v8 + 1;
          v19 = (a1 + 64 + 8 * v8);
          while (v18 < (v14 + 63) >> 6)
          {
            v21 = *v19++;
            v20 = v21;
            v17 += 64;
            ++v18;
            if (v21)
            {
              v22 = v6;
              sub_1C8CAF698(v4, v2, 0);
              v7 = a1 + 56;
              v5 = v27;
              v6 = v22;
              v14 = __clz(__rbit64(v20)) + v17;
              goto LABEL_24;
            }
          }

          v23 = v6;
          sub_1C8CAF698(v4, v2, 0);
          v7 = a1 + 56;
          v5 = v27;
          v6 = v23;
        }

LABEL_24:
        if (v6 == v5)
        {
          return;
        }

        v3 = 0;
        v2 = *(a1 + 36);
        v4 = v14;
        if (v14 < 0)
        {
          break;
        }
      }
    }

    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
  }
}

uint64_t _s7ToolKit2aaoiyAA08CompoundaB14PropertyFilterOyxGAE_AEtSHRzlF_0@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, unint64_t *a3@<X8>)
{
  v4 = *a1;
  v5 = *a2;
  OUTLINED_FUNCTION_50();
  v6 = swift_allocObject();
  type metadata accessor for CompoundToolKitPropertyFilter();
  sub_1C9064BEC();
  swift_allocObject();
  v7 = sub_1C90641BC();
  *v8 = v4;
  v8[1] = v5;
  sub_1C906423C();
  *(v6 + 16) = v7;
  *a3 = v6 | 0x8000000000000000;
}

void sub_1C8D5ED58(unint64_t a1@<X0>, void (*a2)(uint64_t)@<X1>, void *a3@<X8>)
{
  switch(a1 >> 61)
  {
    case 1uLL:
      OUTLINED_FUNCTION_6_9(a1);
      OUTLINED_FUNCTION_50();
      v26 = swift_allocObject();

      sub_1C8D5E02C(v27);
      OUTLINED_FUNCTION_14_13();
      if (v4)
      {
        goto LABEL_28;
      }

      *(v26 + 16) = sub_1C8D2BCE0(v3);
      v19 = v26 | 0x2000000000000000;
      goto LABEL_33;
    case 2uLL:
      OUTLINED_FUNCTION_15_8(a1);
      OUTLINED_FUNCTION_50();
      v18 = swift_allocObject();

      a2(v3);
      OUTLINED_FUNCTION_23_7();
      if (v4)
      {
        goto LABEL_28;
      }

      v19 = v18 | 0x4000000000000000;
      goto LABEL_33;
    case 3uLL:
      OUTLINED_FUNCTION_24_8(a1);
      OUTLINED_FUNCTION_50();
      v20 = swift_allocObject();
      v21 = MEMORY[0x1E69E7CC0];
      if (!*(v5 + 16))
      {
        goto LABEL_32;
      }

      v30 = v20;
      v32 = MEMORY[0x1E69E7CC0];

      OUTLINED_FUNCTION_16_8();
      v21 = v32;
      while (*(v5 + 16))
      {
        OUTLINED_FUNCTION_29_6(v5);
        v22 = OUTLINED_FUNCTION_28_4();
        a2(v22);
        if (v4)
        {
          goto LABEL_27;
        }

        OUTLINED_FUNCTION_10_8();
        if (v13)
        {
          OUTLINED_FUNCTION_19_6();
          sub_1C8D09E14(v23, v24, v25);
        }

        OUTLINED_FUNCTION_20_5();
        if (v14)
        {

          v20 = v30;
LABEL_32:
          *(v20 + 16) = v21;
          v19 = v20 | 0x6000000000000000;
          goto LABEL_33;
        }
      }

      goto LABEL_35;
    case 4uLL:
      OUTLINED_FUNCTION_24_8(a1);
      OUTLINED_FUNCTION_50();
      v10 = swift_allocObject();
      v11 = MEMORY[0x1E69E7CC0];
      if (!*(v5 + 16))
      {
        goto LABEL_31;
      }

      v29 = v10;
      v31 = MEMORY[0x1E69E7CC0];

      OUTLINED_FUNCTION_16_8();
      v11 = v31;
      break;
    case 5uLL:
      v19 = 0xA000000000000000;
      goto LABEL_33;
    default:
      if (*(a1 + 24))
      {
        v8 = *(a1 + 16);
        v9 = *(a1 + 24);
      }

      else
      {
        v8 = 0;
        v9 = 0xE000000000000000;
      }

      OUTLINED_FUNCTION_2();
      v28 = swift_allocObject();
      *(v28 + 16) = v8;
      *(v28 + 24) = v9;
      *a3 = v28;

      return;
  }

  while (*(v5 + 16))
  {
    OUTLINED_FUNCTION_29_6(v5);
    v12 = OUTLINED_FUNCTION_28_4();
    a2(v12);
    if (v4)
    {
LABEL_27:

LABEL_28:
      OUTLINED_FUNCTION_50();
      swift_deallocUninitializedObject();
      return;
    }

    OUTLINED_FUNCTION_10_8();
    if (v13)
    {
      OUTLINED_FUNCTION_19_6();
      sub_1C8D09E14(v15, v16, v17);
    }

    OUTLINED_FUNCTION_20_5();
    if (v14)
    {

      v10 = v29;
LABEL_31:
      *(v10 + 16) = v11;
      v19 = v10 | 0x8000000000000000;
LABEL_33:
      *a3 = v19;
      return;
    }
  }

  __break(1u);
LABEL_35:
  __break(1u);
}

void sub_1C8D5F090(unint64_t a1@<X0>, void (*a2)(uint64_t)@<X1>, void *a3@<X8>)
{
  switch(a1 >> 61)
  {
    case 1uLL:
      v32 = *((a1 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      OUTLINED_FUNCTION_50();
      v33 = swift_allocObject();

      sub_1C8D5DD0C(v34);
      v36 = v35;

      if (v4)
      {
        goto LABEL_39;
      }

      *(v33 + 16) = sub_1C8D2BCE0(v36);
      *a3 = v33 | 0x2000000000000000;
      return;
    case 2uLL:
      OUTLINED_FUNCTION_15_8(a1);
      OUTLINED_FUNCTION_50();
      v24 = swift_allocObject();

      a2(v3);
      OUTLINED_FUNCTION_23_7();
      if (v4)
      {
        goto LABEL_39;
      }

      v25 = v24 | 0x4000000000000000;
      goto LABEL_42;
    case 3uLL:
      OUTLINED_FUNCTION_24_8(a1);
      OUTLINED_FUNCTION_50();
      v40 = swift_allocObject();
      v26 = MEMORY[0x1E69E7CC0];
      if (!*(v5 + 16))
      {
        goto LABEL_41;
      }

      v43 = MEMORY[0x1E69E7CC0];

      OUTLINED_FUNCTION_16_8();
      v26 = v43;
      while (*(v5 + 16))
      {
        OUTLINED_FUNCTION_29_6(v5);
        v27 = OUTLINED_FUNCTION_28_4();
        a2(v27);
        if (v4)
        {
          goto LABEL_38;
        }

        OUTLINED_FUNCTION_10_8();
        if (v19)
        {
          OUTLINED_FUNCTION_19_6();
          sub_1C8D09E14(v28, v29, v30);
        }

        OUTLINED_FUNCTION_22_9();
        if (v20)
        {

LABEL_41:
          *(v40 + 16) = v26;
          v25 = v40 | 0x6000000000000000;
          goto LABEL_42;
        }
      }

      goto LABEL_44;
    case 4uLL:
      OUTLINED_FUNCTION_24_8(a1);
      OUTLINED_FUNCTION_50();
      v39 = swift_allocObject();
      v17 = MEMORY[0x1E69E7CC0];
      if (!*(v5 + 16))
      {
        goto LABEL_40;
      }

      v42 = MEMORY[0x1E69E7CC0];

      OUTLINED_FUNCTION_16_8();
      v17 = v42;
      break;
    case 5uLL:
      v25 = 0xA000000000000000;
      goto LABEL_42;
    default:
      v8 = *(a1 + 24);
      v9 = *(a1 + 64);
      v10 = *(a1 + 96);
      v37 = v10;
      v11 = *(a1 + 104);
      v41 = *(a1 + 40);
      v44 = *(a1 + 48);
      if (v9)
      {
        v12 = *(a1 + 56);
      }

      else
      {
        v12 = 0;
      }

      if (v9)
      {
        v13 = *(a1 + 64);
      }

      else
      {
        v13 = 0xE000000000000000;
      }

      swift_bridgeObjectRetain_n();
      swift_bridgeObjectRetain_n();

      MEMORY[0x1CCA81A90](v12, v13);

      if (v11)
      {
        v14 = v37;
      }

      else
      {
        v14 = 0;
      }

      if (v11)
      {
        v15 = v11;
      }

      else
      {
        v15 = 0xE000000000000000;
      }

      OUTLINED_FUNCTION_2();
      v16 = swift_allocObject();

      MEMORY[0x1CCA81A90](v14, v15);

      *(v16 + 16) = v41;
      *(v16 + 24) = v44;

      *a3 = v16;
      return;
  }

  while (*(v5 + 16))
  {
    OUTLINED_FUNCTION_29_6(v5);
    v18 = OUTLINED_FUNCTION_28_4();
    a2(v18);
    if (v4)
    {
LABEL_38:

LABEL_39:
      OUTLINED_FUNCTION_50();
      swift_deallocUninitializedObject();
      return;
    }

    OUTLINED_FUNCTION_10_8();
    if (v19)
    {
      OUTLINED_FUNCTION_19_6();
      sub_1C8D09E14(v21, v22, v23);
    }

    OUTLINED_FUNCTION_22_9();
    if (v20)
    {

LABEL_40:
      *(v39 + 16) = v17;
      v25 = v39 | 0x8000000000000000;
LABEL_42:
      *a3 = v25;
      return;
    }
  }

  __break(1u);
LABEL_44:
  __break(1u);
}

void sub_1C8D5F498(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t *a9)
{
  OUTLINED_FUNCTION_17_5();
  v15 = v14;
  switch(v13 >> 61)
  {
    case 1uLL:
      OUTLINED_FUNCTION_6_9(v13);
      OUTLINED_FUNCTION_50();
      swift_allocObject();
      v39 = OUTLINED_FUNCTION_31_5();
      sub_1C8D5E4AC(v39);
      OUTLINED_FUNCTION_14_13();
      if (v10)
      {
        goto LABEL_29;
      }

      sub_1C8D2C144(v9);
      OUTLINED_FUNCTION_27_4(v40);
      goto LABEL_35;
    case 2uLL:
      OUTLINED_FUNCTION_15_8(v13);
      OUTLINED_FUNCTION_50();
      swift_allocObject();
      OUTLINED_FUNCTION_30_5();
      v29 = OUTLINED_FUNCTION_9_10();
      sub_1C8D5F498(v29);
      OUTLINED_FUNCTION_23_7();
      if (v10)
      {
        goto LABEL_29;
      }

      v30 = v11 | 0x4000000000000000;
      goto LABEL_35;
    case 3uLL:
      OUTLINED_FUNCTION_6_9(v13);
      OUTLINED_FUNCTION_50();
      swift_allocObject();
      OUTLINED_FUNCTION_11_8();
      if (!v12)
      {
        goto LABEL_34;
      }

      OUTLINED_FUNCTION_8_13();
      v31 = OUTLINED_FUNCTION_3_17();
      sub_1C8D09E54(v31, v32, v33);
      OUTLINED_FUNCTION_13_9();
      while (1)
      {
        OUTLINED_FUNCTION_12_9();
        if (v22)
        {
          goto LABEL_38;
        }

        OUTLINED_FUNCTION_7_9();
        v34 = OUTLINED_FUNCTION_4_11();
        sub_1C8D5F498(v34);
        if (v10)
        {
          goto LABEL_28;
        }

        OUTLINED_FUNCTION_2_15();
        if (v22)
        {
          v36 = OUTLINED_FUNCTION_0_22(v35);
          sub_1C8D09E54(v36, v37, v38);
        }

        OUTLINED_FUNCTION_1_19();
        if (v25)
        {

          v15 = a9;
LABEL_34:
          OUTLINED_FUNCTION_25_6();
          goto LABEL_35;
        }
      }

    case 4uLL:
      OUTLINED_FUNCTION_6_9(v13);
      OUTLINED_FUNCTION_50();
      swift_allocObject();
      OUTLINED_FUNCTION_11_8();
      if (!v12)
      {
        goto LABEL_33;
      }

      OUTLINED_FUNCTION_8_13();
      v19 = OUTLINED_FUNCTION_3_17();
      sub_1C8D09E54(v19, v20, v21);
      OUTLINED_FUNCTION_13_9();
      break;
    case 5uLL:
      v30 = 0xA000000000000000;
      goto LABEL_35;
    default:
      v16 = *(v13 + 16);
      OUTLINED_FUNCTION_50();
      v17 = swift_allocObject();
      if (v16)
      {
        if (v16 == 1)
        {
          v18 = 1;
        }

        else
        {
          v18 = 3;
        }
      }

      else
      {
        v18 = -1;
      }

      *(v17 + 16) = v18;
      *v15 = v17;
      goto LABEL_36;
  }

  while (1)
  {
    OUTLINED_FUNCTION_12_9();
    if (v22)
    {
      break;
    }

    OUTLINED_FUNCTION_7_9();
    v23 = OUTLINED_FUNCTION_4_11();
    sub_1C8D5F498(v23);
    if (v10)
    {
LABEL_28:

LABEL_29:
      OUTLINED_FUNCTION_50();
      swift_deallocUninitializedObject();
LABEL_36:
      OUTLINED_FUNCTION_18_4();
      return;
    }

    OUTLINED_FUNCTION_2_15();
    if (v22)
    {
      v26 = OUTLINED_FUNCTION_0_22(v24);
      sub_1C8D09E54(v26, v27, v28);
    }

    OUTLINED_FUNCTION_1_19();
    if (v25)
    {

      v15 = a9;
LABEL_33:
      OUTLINED_FUNCTION_26_2();
LABEL_35:
      *v15 = v30;
      goto LABEL_36;
    }
  }

  __break(1u);
LABEL_38:
  __break(1u);
}

void sub_1C8D5F6F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t *a9)
{
  OUTLINED_FUNCTION_17_5();
  v15 = v14;
  switch(v13 >> 61)
  {
    case 1uLL:
      OUTLINED_FUNCTION_6_9(v13);
      OUTLINED_FUNCTION_50();
      swift_allocObject();
      v38 = OUTLINED_FUNCTION_31_5();
      sub_1C8D5E26C(v38);
      OUTLINED_FUNCTION_14_13();
      if (v10)
      {
        goto LABEL_28;
      }

      sub_1C8D2C144(v9);
      OUTLINED_FUNCTION_27_4(v39);
      goto LABEL_31;
    case 2uLL:
      OUTLINED_FUNCTION_15_8(v13);
      OUTLINED_FUNCTION_50();
      swift_allocObject();
      OUTLINED_FUNCTION_30_5();
      v28 = OUTLINED_FUNCTION_9_10();
      sub_1C8D5F6F4(v28);
      OUTLINED_FUNCTION_23_7();
      if (v10)
      {
        goto LABEL_28;
      }

      v29 = v11 | 0x4000000000000000;
      goto LABEL_31;
    case 3uLL:
      OUTLINED_FUNCTION_6_9(v13);
      OUTLINED_FUNCTION_50();
      swift_allocObject();
      OUTLINED_FUNCTION_11_8();
      if (!v12)
      {
        goto LABEL_30;
      }

      OUTLINED_FUNCTION_8_13();
      v30 = OUTLINED_FUNCTION_3_17();
      sub_1C8D09E54(v30, v31, v32);
      OUTLINED_FUNCTION_13_9();
      while (1)
      {
        OUTLINED_FUNCTION_12_9();
        if (v21)
        {
          goto LABEL_40;
        }

        OUTLINED_FUNCTION_7_9();
        v33 = OUTLINED_FUNCTION_4_11();
        sub_1C8D5F6F4(v33);
        if (v10)
        {
          goto LABEL_27;
        }

        OUTLINED_FUNCTION_2_15();
        if (v21)
        {
          v35 = OUTLINED_FUNCTION_0_22(v34);
          sub_1C8D09E54(v35, v36, v37);
        }

        OUTLINED_FUNCTION_1_19();
        if (v24)
        {

          v15 = a9;
LABEL_30:
          OUTLINED_FUNCTION_25_6();
          goto LABEL_31;
        }
      }

    case 4uLL:
      OUTLINED_FUNCTION_6_9(v13);
      OUTLINED_FUNCTION_50();
      swift_allocObject();
      OUTLINED_FUNCTION_11_8();
      if (!v12)
      {
        goto LABEL_29;
      }

      OUTLINED_FUNCTION_8_13();
      v18 = OUTLINED_FUNCTION_3_17();
      sub_1C8D09E54(v18, v19, v20);
      OUTLINED_FUNCTION_13_9();
      break;
    case 5uLL:
      v29 = 0xA000000000000000;
      goto LABEL_31;
    default:
      v16 = *(v13 + 16);
      OUTLINED_FUNCTION_50();
      v17 = swift_allocObject();
      switch(v16)
      {
        case 1:
          v40 = 1;
          goto LABEL_36;
        case 2:
          v40 = 2;
          goto LABEL_36;
        case 3:
          v40 = 3;
          goto LABEL_36;
        case 4:
          v40 = 4;
LABEL_36:
          *(v17 + 16) = v40;
          break;
        default:
          *(v17 + 16) = 0;
          break;
      }

      *v15 = v17;
      goto LABEL_38;
  }

  while (1)
  {
    OUTLINED_FUNCTION_12_9();
    if (v21)
    {
      break;
    }

    OUTLINED_FUNCTION_7_9();
    v22 = OUTLINED_FUNCTION_4_11();
    sub_1C8D5F6F4(v22);
    if (v10)
    {
LABEL_27:

LABEL_28:
      OUTLINED_FUNCTION_50();
      swift_deallocUninitializedObject();
LABEL_38:
      OUTLINED_FUNCTION_18_4();
      return;
    }

    OUTLINED_FUNCTION_2_15();
    if (v21)
    {
      v25 = OUTLINED_FUNCTION_0_22(v23);
      sub_1C8D09E54(v25, v26, v27);
    }

    OUTLINED_FUNCTION_1_19();
    if (v24)
    {

      v15 = a9;
LABEL_29:
      OUTLINED_FUNCTION_26_2();
LABEL_31:
      *v15 = v29;
      goto LABEL_38;
    }
  }

  __break(1u);
LABEL_40:
  __break(1u);
}

void sub_1C8D5F978()
{
  OUTLINED_FUNCTION_17_5();
  v6 = v5;
  switch(v4 >> 61)
  {
    case 1uLL:
      OUTLINED_FUNCTION_6_9(v4);
      OUTLINED_FUNCTION_50();
      swift_allocObject();
      v30 = OUTLINED_FUNCTION_31_5();
      sub_1C8D5E6F4(v30);
      OUTLINED_FUNCTION_14_13();
      if (v1)
      {
        goto LABEL_27;
      }

      v31 = sub_1C8D2BCE0(v0);
      OUTLINED_FUNCTION_27_4(v31);
      goto LABEL_30;
    case 2uLL:
      OUTLINED_FUNCTION_15_8(v4);
      OUTLINED_FUNCTION_50();
      swift_allocObject();
      OUTLINED_FUNCTION_30_5();
      v20 = OUTLINED_FUNCTION_9_10();
      sub_1C8D5F978(v20);
      OUTLINED_FUNCTION_23_7();
      if (v1)
      {
        goto LABEL_27;
      }

      v21 = v2 | 0x4000000000000000;
      goto LABEL_30;
    case 3uLL:
      OUTLINED_FUNCTION_6_9(v4);
      OUTLINED_FUNCTION_50();
      swift_allocObject();
      OUTLINED_FUNCTION_11_8();
      if (!v3)
      {
        goto LABEL_29;
      }

      v22 = OUTLINED_FUNCTION_3_17();
      sub_1C8D09E14(v22, v23, v24);
      OUTLINED_FUNCTION_13_9();
      while (1)
      {
        OUTLINED_FUNCTION_12_9();
        if (v13)
        {
          goto LABEL_33;
        }

        OUTLINED_FUNCTION_7_9();
        v25 = OUTLINED_FUNCTION_4_11();
        sub_1C8D5F978(v25);
        if (v1)
        {
          goto LABEL_26;
        }

        OUTLINED_FUNCTION_2_15();
        if (v13)
        {
          v27 = OUTLINED_FUNCTION_0_22(v26);
          sub_1C8D09E14(v27, v28, v29);
        }

        OUTLINED_FUNCTION_1_19();
        if (v16)
        {

LABEL_29:
          OUTLINED_FUNCTION_25_6();
          goto LABEL_30;
        }
      }

    case 4uLL:
      OUTLINED_FUNCTION_6_9(v4);
      OUTLINED_FUNCTION_50();
      swift_allocObject();
      OUTLINED_FUNCTION_11_8();
      if (!v3)
      {
        goto LABEL_28;
      }

      v10 = OUTLINED_FUNCTION_3_17();
      sub_1C8D09E14(v10, v11, v12);
      OUTLINED_FUNCTION_13_9();
      break;
    case 5uLL:
      *v5 = v4;
      goto LABEL_31;
    default:
      v8 = *(v4 + 16);
      v7 = *(v4 + 24);
      OUTLINED_FUNCTION_2();
      v9 = swift_allocObject();
      *(v9 + 16) = v8;
      *(v9 + 24) = v7;
      *v6 = v9;

      goto LABEL_31;
  }

  while (1)
  {
    OUTLINED_FUNCTION_12_9();
    if (v13)
    {
      break;
    }

    OUTLINED_FUNCTION_7_9();
    v14 = OUTLINED_FUNCTION_4_11();
    sub_1C8D5F978(v14);
    if (v1)
    {
LABEL_26:

LABEL_27:
      OUTLINED_FUNCTION_50();
      swift_deallocUninitializedObject();
LABEL_31:
      OUTLINED_FUNCTION_18_4();
      return;
    }

    OUTLINED_FUNCTION_2_15();
    if (v13)
    {
      v17 = OUTLINED_FUNCTION_0_22(v15);
      sub_1C8D09E14(v17, v18, v19);
    }

    OUTLINED_FUNCTION_1_19();
    if (v16)
    {

LABEL_28:
      OUTLINED_FUNCTION_26_2();
LABEL_30:
      *v6 = v21;
      goto LABEL_31;
    }
  }

  __break(1u);
LABEL_33:
  __break(1u);
}

void sub_1C8D5FBD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t *a9)
{
  OUTLINED_FUNCTION_17_5();
  v15 = v14;
  switch(v13 >> 61)
  {
    case 1uLL:
      OUTLINED_FUNCTION_6_9(v13);
      OUTLINED_FUNCTION_50();
      swift_allocObject();
      v38 = OUTLINED_FUNCTION_31_5();
      sub_1C8D5E92C(v38);
      OUTLINED_FUNCTION_14_13();
      if (v10)
      {
        goto LABEL_28;
      }

      v39 = sub_1C8D2BCE0(v9);
      OUTLINED_FUNCTION_27_4(v39);
      goto LABEL_31;
    case 2uLL:
      OUTLINED_FUNCTION_15_8(v13);
      OUTLINED_FUNCTION_50();
      swift_allocObject();
      OUTLINED_FUNCTION_30_5();
      v28 = OUTLINED_FUNCTION_9_10();
      sub_1C8D5FBD4(v28);
      OUTLINED_FUNCTION_23_7();
      if (v10)
      {
        goto LABEL_28;
      }

      v29 = v11 | 0x4000000000000000;
      goto LABEL_31;
    case 3uLL:
      OUTLINED_FUNCTION_6_9(v13);
      OUTLINED_FUNCTION_50();
      swift_allocObject();
      OUTLINED_FUNCTION_11_8();
      if (!v12)
      {
        goto LABEL_30;
      }

      OUTLINED_FUNCTION_8_13();
      v30 = OUTLINED_FUNCTION_3_17();
      sub_1C8D09E14(v30, v31, v32);
      OUTLINED_FUNCTION_13_9();
      while (1)
      {
        OUTLINED_FUNCTION_12_9();
        if (v21)
        {
          goto LABEL_38;
        }

        OUTLINED_FUNCTION_7_9();
        v33 = OUTLINED_FUNCTION_4_11();
        sub_1C8D5FBD4(v33);
        if (v10)
        {
          goto LABEL_27;
        }

        OUTLINED_FUNCTION_2_15();
        if (v21)
        {
          v35 = OUTLINED_FUNCTION_0_22(v34);
          sub_1C8D09E14(v35, v36, v37);
        }

        OUTLINED_FUNCTION_1_19();
        if (v24)
        {

          v15 = a9;
LABEL_30:
          OUTLINED_FUNCTION_25_6();
          goto LABEL_31;
        }
      }

    case 4uLL:
      OUTLINED_FUNCTION_6_9(v13);
      OUTLINED_FUNCTION_50();
      swift_allocObject();
      OUTLINED_FUNCTION_11_8();
      if (!v12)
      {
        goto LABEL_29;
      }

      OUTLINED_FUNCTION_8_13();
      v18 = OUTLINED_FUNCTION_3_17();
      sub_1C8D09E14(v18, v19, v20);
      OUTLINED_FUNCTION_13_9();
      break;
    case 5uLL:
      v29 = 0xA000000000000000;
      goto LABEL_31;
    default:
      v16 = 0xE900000000000074;
      v17 = 0x6E65746E49707061;
      switch(*(v13 + 16))
      {
        case 1:
          v16 = 0xEA0000000000746ELL;
          v17 = 0x65746E4969726973;
          break;
        case 2:
          v16 = 0xE600000000000000;
          v17 = 0x6E6F69746361;
          break;
        case 3:
          v16 = 0xE700000000000000;
          v17 = 0x6E776F6E6B6E75;
          break;
        case 4:
          v16 = 0xE800000000000000;
          v17 = 0x6C6F6F54776F6C66;
          break;
        default:
          break;
      }

      OUTLINED_FUNCTION_2();
      v40 = swift_allocObject();
      *(v40 + 16) = v17;
      *(v40 + 24) = v16;
      *v15 = v40;
      goto LABEL_36;
  }

  while (1)
  {
    OUTLINED_FUNCTION_12_9();
    if (v21)
    {
      break;
    }

    OUTLINED_FUNCTION_7_9();
    v22 = OUTLINED_FUNCTION_4_11();
    sub_1C8D5FBD4(v22);
    if (v10)
    {
LABEL_27:

LABEL_28:
      OUTLINED_FUNCTION_50();
      swift_deallocUninitializedObject();
LABEL_36:
      OUTLINED_FUNCTION_18_4();
      return;
    }

    OUTLINED_FUNCTION_2_15();
    if (v21)
    {
      v25 = OUTLINED_FUNCTION_0_22(v23);
      sub_1C8D09E14(v25, v26, v27);
    }

    OUTLINED_FUNCTION_1_19();
    if (v24)
    {

      v15 = a9;
LABEL_29:
      OUTLINED_FUNCTION_26_2();
LABEL_31:
      *v15 = v29;
      goto LABEL_36;
    }
  }

  __break(1u);
LABEL_38:
  __break(1u);
}

uint64_t CompoundToolKitPropertyFilter.debugDescription.getter(uint64_t a1)
{
  v3 = *(a1 + 16);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v29 - v9;
  v11 = *v1;
  v12 = 7958113;
  switch(*v1 >> 61)
  {
    case 1uLL:
      OUTLINED_FUNCTION_15_8(v11);
      v31 = 2649705;
      v32 = 0xE300000000000000;
      v30 = v1;
      v19 = *(a1 + 24);
      sub_1C906438C();

      swift_getWitnessTable();
      v20 = sub_1C9063F5C();
      MEMORY[0x1CCA81A90](v20);
      goto LABEL_8;
    case 2uLL:
      v21 = *((v11 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      v31 = 678719342;
      v32 = 0xE400000000000000;
      v30 = v21;

      v22 = CompoundToolKitPropertyFilter.debugDescription.getter(a1);
      MEMORY[0x1CCA81A90](v22);

      MEMORY[0x1CCA81A90](41, 0xE100000000000000);

      goto LABEL_9;
    case 3uLL:
      v16 = *((v11 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      v17 = 677670497;
      v18 = 0xE400000000000000;
      goto LABEL_7;
    case 4uLL:
      v23 = *((v11 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      v17 = 2650735;
      v18 = 0xE300000000000000;
LABEL_7:
      v31 = v17;
      v32 = v18;

      v25 = MEMORY[0x1CCA81C60](v24, a1);
      v27 = v26;

      MEMORY[0x1CCA81A90](v25, v27);
LABEL_8:

      MEMORY[0x1CCA81A90](41, 0xE100000000000000);
LABEL_9:
      v12 = v31;
      break;
    case 5uLL:
      return v12;
    default:
      v13 = swift_projectBox();
      v14 = *(v4 + 16);
      v14(v10, v13, v3);
      v31 = 2650985;
      v32 = 0xE300000000000000;
      v14(v7, v10, v3);
      v15 = sub_1C9063F4C();
      MEMORY[0x1CCA81A90](v15);

      MEMORY[0x1CCA81A90](41, 0xE100000000000000);
      v12 = v31;
      (*(v4 + 8))(v10, v3);
      break;
  }

  return v12;
}

uint64_t ! prefix<A>(_:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  OUTLINED_FUNCTION_50();
  v4 = swift_allocObject();
  *(v4 + 16) = v3;
  *a2 = v4 | 0x4000000000000000;
}

uint64_t sub_1C8D601F0(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1C8D6022C()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t get_enum_tag_for_layout_string_7ToolKit08CompoundaB14PropertyFilterOyxG(void *a1)
{
  v1 = *a1 >> 61;
  if (v1 <= 4)
  {
    return v1;
  }

  else
  {
    return (*a1 >> 3) + 5;
  }
}

uint64_t sub_1C8D60284(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7B && *(a1 + 8))
    {
      v2 = *a1 + 122;
    }

    else
    {
      v2 = (((*a1 >> 57) >> 4) | (8 * ((*a1 >> 57) & 8 | *a1 & 7))) ^ 0x7F;
      if (v2 >= 0x7A)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return v2 + 1;
}

uint64_t sub_1C8D602D8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7A)
  {
    *result = a2 - 123;
    if (a3 >= 0x7B)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7B)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 3) & 0xF | (16 * (-a2 & 0x7F));
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

unint64_t *sub_1C8D60328(unint64_t *result, uint64_t a2)
{
  if (a2 < 5)
  {
    v2 = *result & 0xFFFFFFFFFFFFFF8 | (a2 << 61);
  }

  else
  {
    v2 = (8 * (a2 - 5)) | 0xA000000000000000;
  }

  *result = v2;
  return result;
}

uint64_t OUTLINED_FUNCTION_23_7()
{
}

uint64_t OUTLINED_FUNCTION_29_6@<X0>(uint64_t a1@<X8>)
{
  v2 = *(a1 + 32);
}

uint64_t AssistantEnumerationSchemaDefinition.init(protobuf:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v86 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312A48, &unk_1C9072A10);
  OUTLINED_FUNCTION_9(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v77 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312788, &unk_1C906A3A0);
  OUTLINED_FUNCTION_9(v9);
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v12);
  v85 = &v77 - v13;
  v95 = type metadata accessor for ToolKitProtoTypeDefinition.Version1.Enumeration.Case(0);
  v14 = OUTLINED_FUNCTION_11(v95);
  v97 = v15;
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v96 = &v77 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v94 = &v77 - v20;
  v21 = type metadata accessor for EnumerationCaseDefinition(0);
  v22 = OUTLINED_FUNCTION_11(v21);
  v92 = v23;
  v93 = v22;
  v25 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v22);
  v27 = &v77 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v77 - v29;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC313F18, &unk_1C9072A20);
  OUTLINED_FUNCTION_9(v31);
  v33 = *(v32 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v34);
  v36 = &v77 - v35;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC313F20, &unk_1C9074D20);
  OUTLINED_FUNCTION_9(v37);
  v39 = *(v38 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v40);
  v42 = &v77 - v41;
  v43 = type metadata accessor for ToolKitProtoAssistantTypeSchemaDefinition.Enumeration(0);
  sub_1C8CC0620(a1 + *(v43 + 20), v42, &qword_1EC313F20, &unk_1C9074D20);
  sub_1C8D60A64();
  v44 = v108;
  sub_1C906351C();
  if (v44)
  {
    OUTLINED_FUNCTION_0_23();
    return sub_1C8D60EF0(a1, v45);
  }

  else
  {
    v83 = v43;
    v90 = v30;
    v91 = v27;
    v98 = 0;
    v84 = v36;
    v48 = v103;
    v47 = v104;
    v81 = v106;
    v82 = v105;
    v49 = v107;
    v50 = *a1;
    v51 = *(*a1 + 16);
    v52 = a1;
    if (v51)
    {
      v77 = v103;
      v78 = v107;
      v79 = v104;
      v80 = a1;
      v99 = MEMORY[0x1E69E7CC0];
      v87 = v51;
      sub_1C8CB2580(0, v51, 0);
      v108 = v99;
      result = type metadata accessor for DisplayRepresentation(0);
      v89 = result;
      v53 = 0;
      v54 = v97;
      v88 = v50 + ((*(v54 + 80) + 32) & ~*(v54 + 80));
      v55 = v85;
      v56 = v91;
      v57 = v96;
      while (v53 < *(v50 + 16))
      {
        v58 = v94;
        sub_1C8D60E34(v88 + *(v54 + 72) * v53, v94);
        sub_1C8D60E34(v58, v57);
        v59 = v57[1];
        *v56 = *v57;
        v56[1] = v59;
        sub_1C8CC0620(v57 + *(v95 + 20), v8, &qword_1EC312A48, &unk_1C9072A10);
        sub_1C8D60E98();

        v60 = v98;
        sub_1C906350C();
        if (v60)
        {

          sub_1C8D60EF0(v57, type metadata accessor for ToolKitProtoTypeDefinition.Version1.Enumeration.Case);
          sub_1C8D60EF0(v58, type metadata accessor for ToolKitProtoTypeDefinition.Version1.Enumeration.Case);

          OUTLINED_FUNCTION_0_23();
          sub_1C8D60EF0(v80, v68);
        }

        v98 = 0;
        v61 = v58;
        v62 = v8;
        sub_1C8D60EF0(v57, type metadata accessor for ToolKitProtoTypeDefinition.Version1.Enumeration.Case);
        sub_1C8D60EF0(v61, type metadata accessor for ToolKitProtoTypeDefinition.Version1.Enumeration.Case);
        sub_1C8D60F48(v55, v56 + *(v93 + 20));
        v63 = v90;
        sub_1C8D16CB0(v56, v90);
        v64 = v108;
        v99 = v108;
        v66 = *(v108 + 16);
        v65 = *(v108 + 24);
        if (v66 >= v65 >> 1)
        {
          sub_1C8CB2580(v65 > 1, v66 + 1, 1);
          v55 = v85;
          v64 = v99;
        }

        ++v53;
        *(v64 + 16) = v66 + 1;
        v67 = (*(v92 + 80) + 32) & ~*(v92 + 80);
        v108 = v64;
        result = sub_1C8D16CB0(v63, v64 + v67 + *(v92 + 72) * v66);
        v8 = v62;
        v57 = v96;
        v54 = v97;
        v56 = v91;
        if (v87 == v53)
        {
          v52 = v80;
          v69 = v86;
          v70 = v84;
          v47 = v79;
          v49 = v78;
          v48 = v77;
          goto LABEL_13;
        }
      }

      __break(1u);
    }

    else
    {
      v108 = MEMORY[0x1E69E7CC0];
      v70 = v84;
      v69 = v86;
LABEL_13:
      sub_1C8CC0620(v52 + *(v83 + 24), v70, &qword_1EC313F18, &unk_1C9072A20);
      sub_1C8D60FB8();
      v71 = v98;
      sub_1C906351C();
      if (v71)
      {
        sub_1C8D60EF0(v52, type metadata accessor for ToolKitProtoAssistantTypeSchemaDefinition.Enumeration);
      }

      else
      {
        result = sub_1C8D60EF0(v52, type metadata accessor for ToolKitProtoAssistantTypeSchemaDefinition.Enumeration);
        v72 = v99;
        v73 = v100;
        v74 = v102;
        *v69 = v48;
        *(v69 + 8) = v47;
        v75 = v81;
        *(v69 + 16) = v82;
        *(v69 + 32) = v75;
        v76 = v108;
        *(v69 + 48) = v49;
        *(v69 + 56) = v76;
        *(v69 + 64) = v72;
        *(v69 + 72) = v73;
        *(v69 + 80) = v101;
        *(v69 + 96) = v74;
      }
    }
  }

  return result;
}

unint64_t sub_1C8D60A64()
{
  result = qword_1EDA607D8;
  if (!qword_1EDA607D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA607D8);
  }

  return result;
}

uint64_t AssistantEnumerationSchemaDefinition.protobuf(useCase:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v55 = a1;
  v52 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC313F18, &unk_1C9072A20);
  OUTLINED_FUNCTION_9(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v6);
  v51 = &v45 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC313F28, &qword_1C9072058);
  OUTLINED_FUNCTION_9(v8);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v45 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC313F20, &unk_1C9074D20);
  OUTLINED_FUNCTION_9(v14);
  v16 = *(v15 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v17);
  v19 = (&v45 - v18);
  v20 = *v2;
  v21 = v2[1];
  v53 = *(v2 + 1);
  v22 = v2[4];
  v23 = v2[5];
  v24 = v2[6];
  v54 = v2[7];
  v25 = v2[8];
  v47 = v2[9];
  v48 = v25;
  v26 = v2[10];
  v46 = v2[11];
  v49 = v2[12];
  v50 = v26;
  v27 = *(type metadata accessor for ToolKitProtoAssistantSchemaVersion(0) + 28);

  _s7ToolKit0aB17ProtoAllPredicateVACycfC_0();
  *v13 = v53;
  *(v13 + 2) = v22;
  OUTLINED_FUNCTION_6_10(v13, 0);
  v28 = type metadata accessor for ToolKitProtoAssistantSchemaIdentifier(0);
  v29 = *(v28 + 24);
  OUTLINED_FUNCTION_6_10(v19 + v29, 1);
  v30 = v19 + *(v28 + 28);
  _s7ToolKit0aB17ProtoAllPredicateVACycfC_0();
  *v19 = v20;
  v19[1] = v21;
  sub_1C8D61094(v13, v19 + v29, &qword_1EC313F28, &qword_1C9072058);
  v19[2] = v23;
  v19[3] = v24;
  __swift_storeEnumTagSinglePayload(v19, 0, 1, v28);
  v56 = v55;
  v31 = v57;
  sub_1C8D3F9A4();
  if (v31)
  {
    return sub_1C8D6102C(v19);
  }

  v34 = v32;
  v35 = *(type metadata accessor for ToolKitProtoTypeDisplayRepresentation(0) + 28);
  v36 = v46;

  v37 = v49;

  v38 = v47;

  v39 = v51;
  _s7ToolKit0aB17ProtoAllPredicateVACycfC_0();
  *v39 = v48;
  v39[1] = v38;
  v39[3] = v50;
  v39[4] = v36;
  v39[2] = v37;
  OUTLINED_FUNCTION_6_10(v39, 0);
  v40 = type metadata accessor for ToolKitProtoAssistantTypeSchemaDefinition.Enumeration(0);
  v41 = v40[5];
  v42 = v52;
  __swift_storeEnumTagSinglePayload(v52 + v41, 1, 1, v28);
  v43 = v40[6];
  OUTLINED_FUNCTION_6_10(v42 + v43, 1);
  v44 = v42 + v40[7];
  _s7ToolKit0aB17ProtoAllPredicateVACycfC_0();
  sub_1C8D61094(v19, v42 + v41, &qword_1EC313F20, &unk_1C9074D20);
  *v42 = v34;
  return sub_1C8D61094(v39, v42 + v43, &qword_1EC313F18, &unk_1C9072A20);
}

void sub_1C8D60DCC(uint64_t a1, uint64_t a2, void *a3)
{
  EnumerationCaseDefinition.protobuf(useCase:)();
  if (v3)
  {
    *a3 = v3;
  }
}

uint64_t sub_1C8D60E34(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ToolKitProtoTypeDefinition.Version1.Enumeration.Case(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1C8D60E98()
{
  result = qword_1EDA60930;
  if (!qword_1EDA60930)
  {
    type metadata accessor for DisplayRepresentation(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA60930);
  }

  return result;
}

uint64_t sub_1C8D60EF0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_13_1(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_1C8D60F48(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312788, &unk_1C906A3A0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1C8D60FB8()
{
  result = qword_1EDA60778;
  if (!qword_1EDA60778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA60778);
  }

  return result;
}

uint64_t sub_1C8D6102C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC313F20, &unk_1C9074D20);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1C8D61094(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = OUTLINED_FUNCTION_13(a1, a2, a3, a4);
  OUTLINED_FUNCTION_13_1(v6);
  (*(v7 + 40))(v4, v5);
  return v4;
}

unint64_t sub_1C8D610E8()
{
  result = qword_1EC313F30;
  if (!qword_1EC313F30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC313F30);
  }

  return result;
}

uint64_t RunnableTool.session.getter()
{
  v1 = *v0;
  v2 = v0[1];
  return swift_unknownObjectRetain();
}

uint64_t RunnableTool.toolDefinition.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for RunnableTool() + 20);

  return sub_1C8D611F4(v3, a1);
}

uint64_t type metadata accessor for RunnableTool()
{
  result = qword_1EC313F80;
  if (!qword_1EC313F80)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C8D611F4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ToolDefinition(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t RunnableTool.dynamicallyCall(withKeywordArguments:)()
{
  OUTLINED_FUNCTION_7();
  v1[167] = v0;
  v1[166] = v2;
  v1[165] = v3;
  v4 = type metadata accessor for ConcreteResolvable();
  OUTLINED_FUNCTION_9(v4);
  v6 = *(v5 + 64);
  v1[168] = OUTLINED_FUNCTION_39();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC313F38, &qword_1C90720C8);
  v1[169] = v7;
  v8 = *(v7 - 8);
  v1[170] = v8;
  v9 = *(v8 + 64);
  v1[171] = OUTLINED_FUNCTION_39();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC313F40, &unk_1C90720D0);
  v1[172] = v10;
  OUTLINED_FUNCTION_9(v10);
  v12 = *(v11 + 64);
  v1[173] = OUTLINED_FUNCTION_38_1();
  v1[174] = swift_task_alloc();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC313F48, &unk_1C907AA90);
  OUTLINED_FUNCTION_9(v13);
  v15 = *(v14 + 64);
  v1[175] = OUTLINED_FUNCTION_38_1();
  v1[176] = swift_task_alloc();
  OUTLINED_FUNCTION_21_1();

  return MEMORY[0x1EEE6DFA0](v16, v17, v18);
}

void sub_1C8D613B0()
{
  v69 = 0;
  v62 = *(v0 + 1384);
  __dst = (v0 + 424);
  v66 = *(v0 + 1408);
  v67 = *(v0 + 1376);
  v60 = *(v0 + 1360);
  v61 = *(v0 + 1368);
  v58 = (v0 + 968);
  v59 = *(v0 + 1352);
  v1 = MEMORY[0x1E69E7CC8];
  v2 = *(*(v0 + 1328) + 16);
  v64 = v2;
  v65 = *(v0 + 1336) + 40;
LABEL_2:
  *(v0 + 1416) = v1;
  v68 = v1;
  if (v69 == v2)
  {
    __swift_storeEnumTagSinglePayload(*(v0 + 1400), 1, 1, *(v0 + 1376));
    v69 = v2;
    goto LABEL_7;
  }

  if (v69 >= v2)
  {
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  v71 = *(v0 + 1400);
  v3 = *(v0 + 1392);
  v4 = *(v0 + 1384);
  v5 = *(v0 + 1368);
  v6 = *(v67 + 48);
  v7 = *(v0 + 1328) + ((*(v60 + 80) + 32) & ~*(v60 + 80));
  v8 = *(v60 + 72);
  v9 = v69;
  sub_1C8D63FCC();
  v10 = *(v59 + 48);
  v11 = *v5;
  v12 = *(v61 + 8);
  sub_1C8D64DF4();
  *v4 = v11;
  *(v62 + 8) = v12;
  v13 = *(v67 + 48);
  sub_1C8D64DF4();
  sub_1C8D61C2C();
  ++v69;
  if (__OFADD__(v9, 1))
  {
LABEL_40:
    __break(1u);
    return;
  }

  __swift_storeEnumTagSinglePayload(*(v0 + 1400), 0, 1, *(v0 + 1376));
LABEL_7:
  v14 = *(v0 + 1408);
  v15 = *(v0 + 1400);
  v16 = *(v0 + 1376);
  sub_1C8D61C2C();
  if (__swift_getEnumTagSinglePayload(v14, 1, v16) == 1)
  {
    v51 = *(v0 + 1336);
    v52 = *(type metadata accessor for RunnableTool() + 20);
    v53 = *v51;
    v54 = v51[1];
    swift_task_alloc();
    OUTLINED_FUNCTION_33();
    *(v0 + 1424) = v55;
    *v55 = v56;
    v55[1] = sub_1C8D619E8;
    v57 = *(v0 + 1320);

    ToolDefinition.callAsFunction(session:_:)();
  }

  else
  {
    v17 = *(v0 + 1344);
    v70 = **(v0 + 1408);
    v72 = *(v66 + 8);
    v18 = *(v67 + 48);
    sub_1C8D64DF4();
    v19 = 0;
    v20 = *(v65 + *(type metadata accessor for RunnableTool() + 20));
    v21 = *(v20 + 16);
    v22 = (v20 + 32);
    v23 = (v20 + 32);
    while (v21 != v19)
    {
      if (v19 >= *(v20 + 16))
      {
        __break(1u);
LABEL_38:
        __break(1u);
        goto LABEL_39;
      }

      memcpy((v0 + 152), v23, 0x88uLL);
      v24 = *(v0 + 168);
      v25 = *(v0 + 176);
      v26 = sub_1C9063F6C();
      v28 = v27;
      if (v26 == sub_1C9063F6C() && v28 == v29)
      {
        sub_1C8D07294(v0 + 152, v0 + 560);

LABEL_27:

        v42 = (v0 + 424);
        memcpy(__dst, (v0 + 152), 0x88uLL);
        nullsub_1(__dst);
        v34 = *(v0 + 152);
        v35 = *(v0 + 160);
LABEL_30:
        memcpy((v0 + 16), v42, 0x88uLL);
        v43 = *(v0 + 1344);
        sub_1C8F37254((v0 + 1240));
        sub_1C8D04FA4((v0 + 1240), v0 + 1280);

        swift_isUniquelyReferenced_nonNull_native();
        sub_1C8D63DE4((v0 + 1280), v34, v35);

        sub_1C8D16D78(v0 + 16, &qword_1EC313F50, &unk_1C90C5930);
        v1 = v68;
        OUTLINED_FUNCTION_16_9();
        sub_1C8D64024(v43, v44);
        v2 = v64;
        goto LABEL_2;
      }

      v31 = sub_1C9064C2C();
      sub_1C8D07294(v0 + 152, v0 + 288);

      if (v31)
      {
        goto LABEL_27;
      }

      sub_1C8D072F0(v0 + 152);
      v23 += 136;
      ++v19;
    }

    v32 = 0;
    v33 = *(v20 + 16);
    while (v33 != v32)
    {
      if (v32 >= *(v20 + 16))
      {
        goto LABEL_38;
      }

      memcpy((v0 + 696), v22, 0x88uLL);
      v34 = *(v0 + 696);
      v35 = *(v0 + 704);
      v36 = sub_1C9063F6C();
      v38 = v37;
      if (v36 == sub_1C9063F6C() && v38 == v39)
      {
        sub_1C8D07294(v0 + 696, v0 + 1104);

LABEL_29:

        v42 = (v0 + 968);
        memcpy(v58, (v0 + 696), 0x88uLL);
        nullsub_1(v58);
        goto LABEL_30;
      }

      v41 = sub_1C9064C2C();
      sub_1C8D07294(v0 + 696, v0 + 832);

      if (v41)
      {
        goto LABEL_29;
      }

      sub_1C8D072F0(v0 + 696);
      v22 += 136;
      ++v32;
    }

    v45 = *(v0 + 1344);

    sub_1C8D63F30();
    swift_allocError();
    *v46 = v70;
    v46[1] = v72;
    swift_willThrow();
    OUTLINED_FUNCTION_16_9();
    sub_1C8D64024(v45, v47);
    v48 = *(v0 + 1408);
    v49 = *(v0 + 1400);
    OUTLINED_FUNCTION_36_5();

    OUTLINED_FUNCTION_6_0();

    v50();
  }
}