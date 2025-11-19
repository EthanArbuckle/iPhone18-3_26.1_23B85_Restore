uint64_t sub_1CA4DC6B4(char a1, char a2, void *a3)
{
  v4 = a2 & 1;
  v5 = a1 & 1;
  v6 = sub_1CA94B7A8();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1CA94B7D8();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  result = MEMORY[0x1EEE9AC00](v11);
  v16 = &v21 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v5 != v4)
  {
    v22 = result;
    sub_1CA25B3D0(0, &qword_1EDB9FAD0, 0x1E69E9610);
    v21 = sub_1CA94CD48();
    v17 = swift_allocObject();
    *(v17 + 16) = a3;
    aBlock[4] = sub_1CA4DDC38;
    aBlock[5] = v17;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1CA4DCA30;
    aBlock[3] = &block_descriptor_14;
    v18 = _Block_copy(aBlock);
    v19 = a3;

    sub_1CA94B7C8();
    aBlock[0] = MEMORY[0x1E69E7CC0];
    sub_1CA4DDC40(&qword_1EC441CD0, MEMORY[0x1E69E7F60]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC445D38, &qword_1CA9891B8);
    sub_1CA25C3BC(&qword_1EC441B30, &unk_1EC445D38, &qword_1CA9891B8);
    sub_1CA94D2A8();
    v20 = v21;
    MEMORY[0x1CCAA1BC0](0, v16, v10, v18);
    _Block_release(v18);

    (*(v7 + 8))(v10, v6);
    return (*(v12 + 8))(v16, v22);
  }

  return result;
}

void sub_1CA4DC9B4(uint64_t a1)
{
  v2 = [objc_opt_self() defaultCenter];
  [v2 postNotificationName:@"WFResourceAvailabilityChangedNotification" object:a1];
}

uint64_t sub_1CA4DCA30(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

uint64_t sub_1CA4DCACC()
{
  v1 = *(v0 + OBJC_IVAR___WFAppProtectionAccessResource_associatedAppBundleIdentifier);
  v2 = *(v0 + OBJC_IVAR___WFAppProtectionAccessResource_associatedAppBundleIdentifier + 8);
  sub_1CA94C218();
  return v1;
}

uint64_t sub_1CA4DCB3C()
{
  v1 = v0;
  v2 = *&v0[OBJC_IVAR___WFAppProtectionAccessResource_apApp];
  if ((sub_1CA4DBE24() & 1) == 0)
  {
    return 4;
  }

  if ([v1 isAvailable])
  {
    return 4;
  }

  return 1;
}

uint64_t sub_1CA4DCB94(uint64_t a1)
{
  v2 = 0;
  if (a1 == 1)
  {
    sub_1CA94C438();
    if (qword_1EDB9F5F0 != -1)
    {
      OUTLINED_FUNCTION_0_3();
    }

    v3 = qword_1EDB9F690;
    v4 = sub_1CA94C368();
    v5 = sub_1CA94C368();

    v6 = [v3 localizedStringForKey:v4 value:v5 table:0];

    sub_1CA94C3A8();
    sub_1CA25B3D0(0, &qword_1EC445D20, 0x1E6963620);
    v7 = v1 + OBJC_IVAR___WFAppProtectionAccessResource_associatedAppBundleIdentifier;
    v8 = *(v1 + OBJC_IVAR___WFAppProtectionAccessResource_associatedAppBundleIdentifier);
    v9 = *(v7 + 8);
    sub_1CA94C218();
    v10 = sub_1CA4DCE68();
    v11 = [v10 localizedName];

    sub_1CA94C3A8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC446870, &qword_1CA982240);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_1CA97EDF0;
    v13 = sub_1CA94C368();

    *(v12 + 56) = sub_1CA25B3D0(0, &qword_1EDB9FAC0, 0x1E696AEC0);
    *(v12 + 64) = sub_1CA4DDBA8();
    *(v12 + 32) = v13;
    v14 = WFAppProtectionLocalizedAuthMechanismString();
    v15 = sub_1CA94C3A8();
    v17 = v16;

    *(v12 + 96) = MEMORY[0x1E69E6158];
    *(v12 + 104) = sub_1CA282DB4();
    *(v12 + 72) = v15;
    *(v12 + 80) = v17;
    v2 = sub_1CA94C378();
  }

  return v2;
}

id sub_1CA4DCE68()
{
  v6[1] = *MEMORY[0x1E69E9840];
  v0 = sub_1CA94C368();

  v6[0] = 0;
  v1 = [swift_getObjCClassFromMetadata() bundleRecordWithApplicationIdentifier:v0 error:v6];

  if (v1)
  {
    v2 = v6[0];
  }

  else
  {
    v3 = v6[0];
    sub_1CA948AD8();

    swift_willThrow();
  }

  v4 = *MEMORY[0x1E69E9840];
  return v1;
}

uint64_t sub_1CA4DCFC0(uint64_t a1)
{
  if (a1 != 1)
  {
    return 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443850, &qword_1CA9815F0);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1CA981310;
  sub_1CA94C438();
  if (qword_1EDB9F5F0 != -1)
  {
    OUTLINED_FUNCTION_0_3();
  }

  v2 = qword_1EDB9F690;
  v3 = sub_1CA94C368();
  v4 = sub_1CA94C368();

  v5 = [v2 localizedStringForKey:v3 value:v4 table:0];

  v6 = sub_1CA94C3A8();
  v8 = v7;

  *(v1 + 32) = v6;
  *(v1 + 40) = v8;
  return v1;
}

uint64_t sub_1CA4DD154(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1CA4DD174, 0, 0);
}

uint64_t sub_1CA4DD174()
{
  v1 = *(v0[3] + OBJC_IVAR___WFAppProtectionAccessResource_apApp);
  if (sub_1CA4DBE24())
  {
    if (qword_1EC442A78 != -1)
    {
      OUTLINED_FUNCTION_0_43();
    }

    v2 = v0[2];
    v3 = swift_task_alloc();
    v0[4] = v3;
    *v3 = v0;
    v3[1] = sub_1CA4DD294;

    return sub_1CA610B34(v1, v2);
  }

  else
  {
    v5 = v0[1];

    return v5(1);
  }
}

uint64_t sub_1CA4DD294(char a1)
{
  v4 = *(*v2 + 32);
  v5 = *v2;
  OUTLINED_FUNCTION_13();
  *v6 = v5;

  v7 = *(v5 + 8);
  if (v1)
  {
    v8 = 0;
  }

  else
  {
    v8 = a1 & 1;
  }

  return v7(v8);
}

uint64_t sub_1CA4DD420(uint64_t a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  swift_unknownObjectRetain();
  a3;
  v6 = swift_task_alloc();
  v3[5] = v6;
  *v6 = v3;
  v6[1] = sub_1CA4DD4E4;

  return sub_1CA4DD154(a1);
}

uint64_t sub_1CA4DD4E4(char a1)
{
  v3 = v1;
  v5 = *v2;
  v6 = *v2;
  OUTLINED_FUNCTION_13();
  *v7 = v6;
  v8 = v5[5];
  v9 = v5[3];
  v10 = v5[2];
  v11 = *v2;
  *v7 = *v2;

  swift_unknownObjectRelease();

  v12 = v5[4];
  if (v3)
  {
    v13 = sub_1CA948AC8();

    (*(v12 + 16))(v12, 0, v13);
  }

  else
  {
    (*(v12 + 16))(v5[4], a1 & 1, 0);
  }

  _Block_release(v6[4]);
  v14 = v11[1];

  return v14();
}

id sub_1CA4DD690()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v2 = OBJC_IVAR___WFAppProtectionAccessResource_observers;
  swift_beginAccess();
  v3 = *&v1[v2];
  if ((v3 & 0xC000000000000001) != 0)
  {
    if (v3 < 0)
    {
      v4 = *&v1[v2];
    }

    sub_1CA94C218();
    sub_1CA94D2F8();
    sub_1CA949FB8();
    sub_1CA4DDC40(&unk_1EC4448B0, MEMORY[0x1E695BF10]);
    result = sub_1CA94C948();
    v3 = v24;
    v6 = v25;
    v8 = v26;
    v7 = v27;
    v9 = v28;
  }

  else
  {
    v10 = -1 << *(v3 + 32);
    v6 = v3 + 56;
    v8 = ~v10;
    v11 = -v10;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v9 = v12 & *(v3 + 56);
    v13 = *&v1[v2];
    result = sub_1CA94C218();
    v7 = 0;
  }

  if (v3 < 0)
  {
    goto LABEL_16;
  }

  while (1)
  {
    v14 = v7;
    v15 = v9;
    v16 = v7;
    if (!v9)
    {
      break;
    }

LABEL_14:
    v17 = (v15 - 1) & v15;
    v18 = *(*(v3 + 48) + ((v16 << 9) | (8 * __clz(__rbit64(v15)))));

    if (!v18)
    {
LABEL_20:
      sub_1CA28A224();
      v19 = *&v1[OBJC_IVAR___WFAppProtectionAccessResource_subjectSubscription];
      if (v19)
      {
        [v19 invalidate];
      }

      v20 = [objc_opt_self() sharedContext];
      [v20 removeApplicationStateObserver:v1 forEvent:3];

      v23.receiver = v1;
      v23.super_class = ObjectType;
      return objc_msgSendSuper2(&v23, sel_dealloc);
    }

    while (1)
    {
      sub_1CA949FA8();

      v7 = v16;
      v9 = v17;
      if ((v3 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_16:
      if (sub_1CA94D358())
      {
        sub_1CA949FB8();
        swift_dynamicCast();
        v16 = v7;
        v17 = v9;
        if (v22)
        {
          continue;
        }
      }

      goto LABEL_20;
    }
  }

  while (1)
  {
    v16 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v16 >= ((v8 + 64) >> 6))
    {
      goto LABEL_20;
    }

    v15 = *(v6 + 8 * v16);
    ++v14;
    if (v15)
    {
      goto LABEL_14;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1CA4DDAF4()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1CA2DBC14;

  return sub_1CA4DD420(v2, v3, v4);
}

unint64_t sub_1CA4DDBA8()
{
  result = qword_1EC445D28;
  if (!qword_1EC445D28)
  {
    sub_1CA25B3D0(255, &qword_1EDB9FAC0, 0x1E696AEC0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC445D28);
  }

  return result;
}

uint64_t block_copy_helper_16(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1CA4DDC40(unint64_t *a1, void (*a2)(uint64_t))
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

id sub_1CA4DDCCC()
{
  v100 = sub_1CA25B3D0(0, &qword_1EC4419A0, off_1E836DD08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B0, &qword_1CA981320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA981450;
  v1 = MEMORY[0x1E69E6158];
  *(inited + 32) = @"ActionClass";
  *(inited + 40) = 0xD000000000000018;
  *(inited + 48) = 0x80000001CA9C3800;
  *(inited + 64) = v1;
  *(inited + 72) = @"Description";
  v99 = sub_1CA25B3D0(0, &unk_1EC441790, off_1E836DD18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D0, &qword_1CA981390);
  v2 = swift_initStackObject();
  *(v2 + 16) = xmmword_1CA981310;
  *(v2 + 32) = @"DescriptionSummary";
  v3 = @"ActionClass";
  v4 = @"Description";
  v5 = @"DescriptionSummary";
  v6 = sub_1CA94C438();
  v101 = v7;
  v8 = sub_1CA94C438();
  v10 = v9;
  v11 = sub_1CA948E58();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v104 = v13;
  v106 = (v13 + 15) & 0xFFFFFFFFFFFFFFF0;
  v14 = &v92 - v106;
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v103 = qword_1EDB9F690;
  v15 = [qword_1EDB9F690 bundleURL];
  v16 = sub_1CA948BA8();
  v105 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v102 = (v17 + 15) & 0xFFFFFFFFFFFFFFF0;
  v18 = &v92 - v102;
  sub_1CA948B68();

  v19 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v20 = sub_1CA2F9F14(v6, v101, v8, v10, 0, 0, v14, v18);
  v101 = sub_1CA25B3D0(0, &qword_1EDB9F6E0, 0x1E696B100);
  *(v2 + 64) = v101;
  *(v2 + 40) = v20;
  type metadata accessor for DescriptionKey(0);
  sub_1CA29CF44(&qword_1EC441830, type metadata accessor for DescriptionKey);
  sub_1CA94C1E8();
  v21 = v99;
  *(inited + 80) = sub_1CA6B3784();
  *(inited + 104) = v21;
  *(inited + 112) = @"IconColor";
  *(inited + 120) = 0xD000000000000014;
  *(inited + 128) = 0x80000001CA99B480;
  v22 = MEMORY[0x1E69E6158];
  *(inited + 144) = MEMORY[0x1E69E6158];
  *(inited + 152) = @"IconSymbol";
  *(inited + 160) = 0xD00000000000002CLL;
  *(inited + 168) = 0x80000001CA9A9D20;
  *(inited + 184) = v22;
  *(inited + 192) = @"Input";
  v23 = v22;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445FB0, &qword_1CA97EE10);
  v24 = swift_initStackObject();
  v96 = xmmword_1CA981350;
  *(v24 + 16) = xmmword_1CA981350;
  *(v24 + 32) = 0x656C7069746C754DLL;
  *(v24 + 40) = 0xE800000000000000;
  v25 = MEMORY[0x1E69E6370];
  *(v24 + 48) = 1;
  *(v24 + 72) = v25;
  strcpy((v24 + 80), "ParameterKey");
  *(v24 + 93) = 0;
  *(v24 + 94) = -5120;
  *(v24 + 96) = 0x7475706E494657;
  *(v24 + 104) = 0xE700000000000000;
  *(v24 + 120) = v23;
  *(v24 + 128) = 0x6465726975716552;
  *(v24 + 136) = 0xE800000000000000;
  *(v24 + 144) = 1;
  *(v24 + 168) = v25;
  *(v24 + 176) = 0x7365707954;
  *(v24 + 184) = 0xE500000000000000;
  v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
  *(v24 + 216) = v99;
  *(v24 + 192) = &unk_1F4A01BB0;
  v26 = @"IconColor";
  v27 = @"IconSymbol";
  v28 = @"Input";
  v29 = sub_1CA94C1E8();
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC447DE0, &qword_1CA9917E0);
  *(inited + 200) = v29;
  *(inited + 224) = v30;
  *(inited + 232) = @"InputPassthrough";
  *(inited + 240) = 1;
  *(inited + 264) = v25;
  *(inited + 272) = @"Name";
  v31 = @"InputPassthrough";
  v32 = @"Name";
  v33 = sub_1CA94C438();
  v35 = v34;
  v36 = sub_1CA94C438();
  v38 = v37;
  v98 = &v92;
  MEMORY[0x1EEE9AC00](v36);
  v39 = &v92 - v106;
  sub_1CA948D98();
  v40 = [v103 bundleURL];
  MEMORY[0x1EEE9AC00](v40);
  v41 = &v92 - v102;
  sub_1CA948B68();

  v42 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(inited + 280) = sub_1CA2F9F14(v33, v35, v36, v38, 0, 0, v39, v41);
  *(inited + 304) = v101;
  *(inited + 312) = @"Parameters";
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443910, &unk_1CA981A00);
  v98 = swift_allocObject();
  *(v98 + 1) = xmmword_1CA9813B0;
  v97 = sub_1CA25B3D0(0, &qword_1EDB9F710, off_1E836EDC0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443D80, &unk_1CA981BA0);
  v43 = swift_initStackObject();
  *(v43 + 16) = v96;
  *(v43 + 32) = @"Class";
  *(v43 + 40) = 0xD000000000000019;
  *(v43 + 48) = 0x80000001CA99B030;
  v44 = MEMORY[0x1E69E6158];
  *(v43 + 64) = MEMORY[0x1E69E6158];
  *(v43 + 72) = @"Key";
  *(v43 + 80) = 0x7475706E494657;
  *(v43 + 88) = 0xE700000000000000;
  *(v43 + 104) = v44;
  *(v43 + 112) = @"Label";
  v45 = @"Parameters";
  v46 = @"Class";
  v47 = @"Key";
  v48 = @"Label";
  v49 = sub_1CA94C438();
  v94 = v50;
  v95 = v49;
  v93 = sub_1CA94C438();
  v52 = v51;
  *&v96 = &v92;
  MEMORY[0x1EEE9AC00](v93);
  v53 = &v92 - v106;
  sub_1CA948D98();
  v54 = v103;
  v55 = [v103 bundleURL];
  v92 = &v92;
  MEMORY[0x1EEE9AC00](v55);
  v56 = v102;
  sub_1CA948B68();

  v57 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v43 + 120) = sub_1CA2F9F14(v95, v94, v93, v52, 0, 0, v53, &v92 - v56);
  v58 = v101;
  *(v43 + 144) = v101;
  *(v43 + 152) = @"Placeholder";
  v59 = @"Placeholder";
  v60 = sub_1CA94C438();
  v94 = v61;
  v95 = v60;
  v62 = sub_1CA94C438();
  v93 = v63;
  *&v96 = &v92;
  MEMORY[0x1EEE9AC00](v62);
  v64 = &v92 - v106;
  sub_1CA948D98();
  v65 = [v54 bundleURL];
  MEMORY[0x1EEE9AC00](v65);
  sub_1CA948B68();

  v66 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v67 = sub_1CA2F9F14(v95, v94, v62, v93, 0, 0, v64, &v92 - v56);
  *(v43 + 184) = v58;
  *(v43 + 160) = v67;
  _s3__C3KeyVMa_0(0);
  sub_1CA29CF44(&qword_1EDB9F780, _s3__C3KeyVMa_0);
  sub_1CA94C1E8();
  v68 = sub_1CA2F864C();
  v69 = v98;
  v98[4] = v68;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D8, &qword_1CA981398);
  *(inited + 320) = v69;
  *(inited + 344) = v70;
  *(inited + 352) = @"ParameterSummary";
  v71 = @"ParameterSummary";
  v72 = sub_1CA94C438();
  v74 = v73;
  v75 = sub_1CA94C438();
  v77 = v76;
  v101 = &v92;
  MEMORY[0x1EEE9AC00](v75);
  v78 = &v92 - v106;
  sub_1CA948D98();
  v79 = [v103 bundleURL];
  MEMORY[0x1EEE9AC00](v79);
  v80 = &v92 - v102;
  sub_1CA948B68();

  v81 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v82 = sub_1CA2F9F14(v72, v74, v75, v77, 0, 0, v78, v80);
  v83 = [objc_allocWithZone(WFActionParameterSummary) initWithString_];

  v84 = sub_1CA25B3D0(0, &unk_1EC441800, off_1E836DD60);
  *(inited + 360) = v83;
  *(inited + 384) = v84;
  *(inited + 392) = @"RequiredResources";
  *(inited + 400) = &unk_1F4A01BE0;
  v85 = v99;
  *(inited + 424) = v99;
  *(inited + 432) = @"UserInterfaceClasses";
  v86 = @"RequiredResources";
  v87 = @"UserInterfaceClasses";
  v88 = sub_1CA94C1E8();
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B8, &unk_1CA985870);
  *(inited + 440) = v88;
  *(inited + 464) = v89;
  *(inited + 472) = @"UserInterfaces";
  *(inited + 504) = v85;
  *(inited + 480) = &unk_1F4A01C70;
  type metadata accessor for Key(0);
  sub_1CA29CF44(&qword_1EDB9FB10, type metadata accessor for Key);
  v90 = @"UserInterfaces";
  sub_1CA94C1E8();
  return sub_1CA332510();
}

id sub_1CA4DE938()
{
  v228 = sub_1CA25B3D0(0, &qword_1EC4419A0, off_1E836DD08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B0, &qword_1CA981320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA9813F0;
  v1 = MEMORY[0x1E69E6158];
  *(inited + 32) = @"ActionClass";
  *(inited + 40) = 0xD000000000000019;
  *(inited + 48) = 0x80000001CA9C3930;
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
  v244 = (v12 + 15) & 0xFFFFFFFFFFFFFFF0;
  v245 = v12;
  v13 = v219 - v244;
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v243 = qword_1EDB9F690;
  v14 = [qword_1EDB9F690 bundleURL];
  v15 = sub_1CA948BA8();
  v241 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v242 = (v16 + 15) & 0xFFFFFFFFFFFFFFF0;
  v17 = v219 - v242;
  sub_1CA948B68();

  v18 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v19 = sub_1CA2F9F14(v4, v6, v7, v9, 0, 0, v13, v17);
  v20 = sub_1CA25B3D0(0, &qword_1EDB9F6E0, 0x1E696B100);
  v240 = v20;
  *(inited + 80) = v19;
  *(inited + 104) = v20;
  *(inited + 112) = @"Description";
  v237 = sub_1CA25B3D0(0, &unk_1EC441790, off_1E836DD18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D0, &qword_1CA981390);
  v21 = swift_initStackObject();
  v238 = xmmword_1CA9813C0;
  *(v21 + 16) = xmmword_1CA9813C0;
  *(v21 + 32) = @"DescriptionNote";
  v22 = @"Description";
  v23 = @"DescriptionNote";
  v24 = sub_1CA94C438();
  v234 = v25;
  v235 = v24;
  v26 = sub_1CA94C438();
  v28 = v27;
  v236 = v219;
  MEMORY[0x1EEE9AC00](v26);
  v29 = v219 - v244;
  sub_1CA948D98();
  v30 = v243;
  v31 = [v243 bundleURL];
  MEMORY[0x1EEE9AC00](v31);
  v239 = inited;
  v32 = v242;
  sub_1CA948B68();

  v33 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v21 + 40) = sub_1CA2F9F14(v235, v234, v26, v28, 0, 0, v29, v219 - v32);
  *(v21 + 64) = v240;
  *(v21 + 72) = @"DescriptionResult";
  v34 = @"DescriptionResult";
  v35 = sub_1CA94C438();
  v234 = v36;
  v235 = v35;
  v233 = sub_1CA94C438();
  v38 = v37;
  v236 = v219;
  MEMORY[0x1EEE9AC00](v233);
  v39 = v244;
  sub_1CA948D98();
  v40 = [v30 bundleURL];
  MEMORY[0x1EEE9AC00](v40);
  sub_1CA948B68();

  v41 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v21 + 80) = sub_1CA2F9F14(v235, v234, v233, v38, 0, 0, v219 - v39, v219 - v32);
  v42 = v240;
  *(v21 + 104) = v240;
  *(v21 + 112) = @"DescriptionSummary";
  v43 = @"DescriptionSummary";
  v44 = sub_1CA94C438();
  v234 = v45;
  v235 = v44;
  v46 = sub_1CA94C438();
  v48 = v47;
  v236 = v219;
  MEMORY[0x1EEE9AC00](v46);
  sub_1CA948D98();
  v49 = [v243 bundleURL];
  MEMORY[0x1EEE9AC00](v49);
  v50 = v219 - v242;
  sub_1CA948B68();

  v51 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v52 = sub_1CA2F9F14(v235, v234, v46, v48, 0, 0, v219 - v39, v50);
  *(v21 + 144) = v42;
  *(v21 + 120) = v52;
  type metadata accessor for DescriptionKey(0);
  sub_1CA29CF44(&qword_1EC441830, type metadata accessor for DescriptionKey);
  sub_1CA94C1E8();
  v53 = v237;
  v54 = sub_1CA6B3784();
  v55 = v239;
  v239[15] = v54;
  v55[18] = v53;
  v55[19] = @"IconName";
  v55[20] = 0x786F62706F7244;
  v55[21] = 0xE700000000000000;
  v56 = MEMORY[0x1E69E6158];
  v55[23] = MEMORY[0x1E69E6158];
  v55[24] = @"Input";
  v57 = v56;
  v58 = v55;
  v236 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445FB0, &qword_1CA97EE10);
  v59 = swift_initStackObject();
  v232 = xmmword_1CA981350;
  *(v59 + 16) = xmmword_1CA981350;
  *(v59 + 32) = 0x656C7069746C754DLL;
  *(v59 + 40) = 0xE800000000000000;
  v60 = MEMORY[0x1E69E6370];
  *(v59 + 48) = 0;
  *(v59 + 72) = v60;
  strcpy((v59 + 80), "ParameterKey");
  *(v59 + 93) = 0;
  *(v59 + 94) = -5120;
  *(v59 + 96) = 0x7475706E494657;
  *(v59 + 104) = 0xE700000000000000;
  *(v59 + 120) = v57;
  *(v59 + 128) = 0x6465726975716552;
  *(v59 + 136) = 0xE800000000000000;
  *(v59 + 144) = 1;
  *(v59 + 168) = v60;
  *(v59 + 176) = 0x7365707954;
  *(v59 + 184) = 0xE500000000000000;
  v233 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
  *(v59 + 216) = v233;
  *(v59 + 192) = &unk_1F4A01CA0;
  v61 = @"IconName";
  v62 = @"Input";
  v63 = sub_1CA94C1E8();
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC447DE0, &qword_1CA9917E0);
  v237 = v64;
  v58[25] = v63;
  v58[28] = v64;
  v58[29] = @"Name";
  v65 = @"Name";
  v234 = sub_1CA94C438();
  v231 = v66;
  v67 = sub_1CA94C438();
  v69 = v68;
  v235 = v219;
  MEMORY[0x1EEE9AC00](v67);
  v70 = v219 - v244;
  sub_1CA948D98();
  v71 = v243;
  v72 = [v243 bundleURL];
  MEMORY[0x1EEE9AC00](v72);
  v73 = v242;
  sub_1CA948B68();

  v74 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v75 = sub_1CA2F9F14(v234, v231, v67, v69, 0, 0, v70, v219 - v73);
  v76 = v239;
  v77 = v240;
  v239[30] = v75;
  v76[33] = v77;
  v76[34] = @"Output";
  v78 = swift_initStackObject();
  *(v78 + 16) = v238;
  *(v78 + 32) = 0x656C7069746C754DLL;
  *(v78 + 40) = 0xE800000000000000;
  *(v78 + 48) = 0;
  *(v78 + 72) = MEMORY[0x1E69E6370];
  *(v78 + 80) = 0x614E74757074754FLL;
  *(v78 + 88) = 0xEA0000000000656DLL;
  v79 = @"Output";
  v80 = sub_1CA94C438();
  v235 = v81;
  v236 = v80;
  v234 = sub_1CA94C438();
  v83 = v82;
  *&v238 = v219;
  MEMORY[0x1EEE9AC00](v234);
  v84 = v219 - v244;
  sub_1CA948D98();
  v85 = [v71 bundleURL];
  MEMORY[0x1EEE9AC00](v85);
  sub_1CA948B68();

  v86 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v78 + 96) = sub_1CA2F9F14(v236, v235, v234, v83, 0, 0, v84, v219 - v73);
  *(v78 + 120) = v77;
  *(v78 + 128) = 0x7365707954;
  *(v78 + 168) = v233;
  *(v78 + 136) = 0xE500000000000000;
  *(v78 + 144) = &unk_1F4A01CD0;
  v87 = MEMORY[0x1E69E6158];
  v88 = sub_1CA94C1E8();
  v89 = v239;
  v239[35] = v88;
  v89[38] = v237;
  v89[39] = @"ParameterCollapsingBehavior";
  v89[40] = 0x726576654ELL;
  v89[41] = 0xE500000000000000;
  v89[43] = v87;
  v89[44] = @"Parameters";
  v231 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443910, &unk_1CA981A00);
  v237 = swift_allocObject();
  *(v237 + 16) = xmmword_1CA981570;
  *&v238 = sub_1CA25B3D0(0, &qword_1EDB9F710, off_1E836EDC0);
  v236 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443D80, &unk_1CA981BA0);
  v90 = swift_allocObject();
  *(v90 + 16) = xmmword_1CA981420;
  *(v90 + 32) = @"AutocapitalizationType";
  *(v90 + 40) = 1701736270;
  *(v90 + 48) = 0xE400000000000000;
  *(v90 + 64) = v87;
  *(v90 + 72) = @"Class";
  v226 = 0xD000000000000014;
  v227 = 0x80000001CA99B500;
  *(v90 + 80) = 0xD000000000000014;
  *(v90 + 88) = 0x80000001CA99B500;
  *(v90 + 104) = v87;
  *(v90 + 112) = @"Description";
  v224 = @"Class";
  v91 = @"ParameterCollapsingBehavior";
  v92 = @"Parameters";
  v93 = @"AutocapitalizationType";
  v94 = @"Description";
  v95 = sub_1CA94C438();
  v97 = v96;
  v98 = sub_1CA94C438();
  v100 = v99;
  v235 = v219;
  MEMORY[0x1EEE9AC00](v98);
  v101 = v219 - v244;
  sub_1CA948D98();
  v102 = [v243 bundleURL];
  MEMORY[0x1EEE9AC00](v102);
  v103 = v219 - v242;
  sub_1CA948B68();

  v104 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v90 + 120) = sub_1CA2F9F14(v95, v97, v98, v100, 0, 0, v101, v103);
  *(v90 + 144) = v240;
  *(v90 + 152) = @"DisableAutocorrection";
  *(v90 + 160) = 1;
  *(v90 + 184) = MEMORY[0x1E69E6370];
  *(v90 + 192) = @"Key";
  *(v90 + 200) = 0x6150656C69464657;
  *(v90 + 208) = 0xEA00000000006874;
  v105 = MEMORY[0x1E69E6158];
  *(v90 + 224) = MEMORY[0x1E69E6158];
  *(v90 + 232) = @"KeyboardType";
  *(v90 + 240) = 0x6372616553626557;
  *(v90 + 248) = 0xE900000000000068;
  *(v90 + 264) = v105;
  *(v90 + 272) = @"Label";
  v106 = @"Key";
  v107 = @"Label";
  v108 = v106;
  v109 = v107;
  v225 = v108;
  v229 = v109;
  v110 = @"DisableAutocorrection";
  v111 = @"KeyboardType";
  v234 = sub_1CA94C438();
  v230 = v112;
  v113 = sub_1CA94C438();
  v115 = v114;
  v235 = v219;
  MEMORY[0x1EEE9AC00](v113);
  v116 = v244;
  sub_1CA948D98();
  v117 = [v243 bundleURL];
  MEMORY[0x1EEE9AC00](v117);
  v118 = v219 - v242;
  sub_1CA948B68();

  v119 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v90 + 280) = sub_1CA2F9F14(v234, v230, v113, v115, 0, 0, v219 - v116, v118);
  v120 = v240;
  *(v90 + 304) = v240;
  *(v90 + 312) = @"Placeholder";
  v121 = @"Placeholder";
  v234 = sub_1CA94C438();
  v230 = v122;
  v123 = sub_1CA94C438();
  v223 = v124;
  v235 = v219;
  MEMORY[0x1EEE9AC00](v123);
  v125 = v219 - v116;
  sub_1CA948D98();
  v126 = v243;
  v127 = [v243 bundleURL];
  MEMORY[0x1EEE9AC00](v127);
  v128 = v242;
  sub_1CA948B68();

  v129 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v90 + 320) = sub_1CA2F9F14(v234, v230, v123, v223, 0, 0, v125, v219 - v128);
  *(v90 + 344) = v120;
  *(v90 + 352) = @"Prefix";
  *(v90 + 360) = 0x756374726F68532FLL;
  *(v90 + 368) = 0xEB000000002F7374;
  v130 = MEMORY[0x1E69E6158];
  *(v90 + 384) = MEMORY[0x1E69E6158];
  *(v90 + 392) = @"TextAlignment";
  *(v90 + 424) = v130;
  v131 = v130;
  *(v90 + 400) = 1952867660;
  *(v90 + 408) = 0xE400000000000000;
  _s3__C3KeyVMa_0(0);
  v235 = v132;
  v234 = sub_1CA29CF44(&qword_1EDB9F780, _s3__C3KeyVMa_0);
  v133 = @"Prefix";
  v134 = @"TextAlignment";
  sub_1CA94C1E8();
  *(v237 + 32) = sub_1CA2F864C();
  v135 = swift_allocObject();
  *(v135 + 16) = xmmword_1CA981370;
  v136 = v224;
  *(v135 + 32) = v224;
  *(v135 + 40) = 0xD000000000000016;
  *(v135 + 48) = 0x80000001CA99C4A0;
  *(v135 + 64) = v131;
  *(v135 + 72) = @"DefaultValue";
  *(v135 + 80) = 0x646E65707041;
  *(v135 + 88) = 0xE600000000000000;
  *(v135 + 104) = v131;
  *(v135 + 112) = @"Items";
  v230 = swift_allocObject();
  *&v230->data = xmmword_1CA981360;
  v137 = @"DefaultValue";
  v231 = v136;
  v224 = v137;
  v138 = @"Items";
  v139 = sub_1CA94C438();
  v221 = v140;
  v222 = v139;
  v141 = sub_1CA94C438();
  v220 = v142;
  v223 = v219;
  MEMORY[0x1EEE9AC00](v141);
  v143 = v219 - v244;
  sub_1CA948D98();
  v144 = [v126 bundleURL];
  v219[1] = v219;
  MEMORY[0x1EEE9AC00](v144);
  sub_1CA948B68();

  v145 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v146 = sub_1CA2F9F14(v222, v221, v141, v220, 0, 0, v143, v219 - v128);
  v230[1].isa = v146;
  v147 = sub_1CA94C438();
  v221 = v148;
  v222 = v147;
  v220 = sub_1CA94C438();
  v150 = v149;
  v223 = v219;
  MEMORY[0x1EEE9AC00](v220);
  v151 = v244;
  sub_1CA948D98();
  v152 = [v126 bundleURL];
  MEMORY[0x1EEE9AC00](v152);
  sub_1CA948B68();

  v153 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v154 = sub_1CA2F9F14(v222, v221, v220, v150, 0, 0, v219 - v151, v219 - v128);
  v155 = v230;
  v230[1].info = v154;
  v156 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443830, &qword_1CA981580);
  *(v135 + 120) = v155;
  v157 = v225;
  *(v135 + 144) = v156;
  *(v135 + 152) = v157;
  *(v135 + 160) = 0xD000000000000015;
  *(v135 + 168) = 0x80000001CA9C3D00;
  v158 = v229;
  *(v135 + 184) = MEMORY[0x1E69E6158];
  *(v135 + 192) = v158;
  v230 = v157;
  v229 = v158;
  v159 = sub_1CA94C438();
  v223 = v160;
  v161 = sub_1CA94C438();
  v163 = v162;
  v225 = v219;
  MEMORY[0x1EEE9AC00](v161);
  sub_1CA948D98();
  v164 = [v243 bundleURL];
  MEMORY[0x1EEE9AC00](v164);
  v165 = v219 - v242;
  sub_1CA948B68();

  v166 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v167 = sub_1CA2F9F14(v159, v223, v161, v163, 0, 0, v219 - v151, v165);
  *(v135 + 224) = v240;
  *(v135 + 200) = v167;
  sub_1CA94C1E8();
  *(v237 + 40) = sub_1CA2F864C();
  v168 = swift_allocObject();
  *(v168 + 16) = v232;
  *(v168 + 32) = v231;
  *(v168 + 40) = 0xD000000000000011;
  *(v168 + 48) = 0x80000001CA99E620;
  v169 = MEMORY[0x1E69E6158];
  v170 = v224;
  *(v168 + 64) = MEMORY[0x1E69E6158];
  *(v168 + 72) = v170;
  *(v168 + 80) = 1;
  v171 = v230;
  *(v168 + 104) = MEMORY[0x1E69E6370];
  *(v168 + 112) = v171;
  *(v168 + 120) = 0xD000000000000011;
  *(v168 + 128) = 0x80000001CA9C3D40;
  v172 = v229;
  *(v168 + 144) = v169;
  *(v168 + 152) = v172;
  v173 = sub_1CA94C438();
  v223 = v174;
  v224 = v173;
  v175 = sub_1CA94C438();
  v222 = v176;
  v225 = v219;
  MEMORY[0x1EEE9AC00](v175);
  v177 = v219 - v151;
  sub_1CA948D98();
  v178 = v243;
  v179 = [v243 bundleURL];
  MEMORY[0x1EEE9AC00](v179);
  v180 = v242;
  sub_1CA948B68();

  v181 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v182 = sub_1CA2F9F14(v224, v223, v175, v222, 0, 0, v177, v219 - v180);
  *(v168 + 184) = v240;
  *(v168 + 160) = v182;
  sub_1CA94C1E8();
  *(v237 + 48) = sub_1CA2F864C();
  v183 = swift_allocObject();
  *(v183 + 16) = v232;
  v185 = v226;
  v184 = v227;
  *(v183 + 32) = v231;
  *(v183 + 40) = v185;
  *(v183 + 48) = v184;
  v186 = MEMORY[0x1E69E6158];
  v187 = v230;
  *(v183 + 64) = MEMORY[0x1E69E6158];
  *(v183 + 72) = v187;
  *(v183 + 80) = 0x7475706E494657;
  *(v183 + 88) = 0xE700000000000000;
  v188 = v229;
  *(v183 + 104) = v186;
  *(v183 + 112) = v188;
  v189 = sub_1CA94C438();
  v231 = v190;
  *&v232 = v189;
  v191 = sub_1CA94C438();
  v193 = v192;
  v236 = v219;
  MEMORY[0x1EEE9AC00](v191);
  v194 = v219 - v244;
  sub_1CA948D98();
  v195 = [v178 bundleURL];
  MEMORY[0x1EEE9AC00](v195);
  sub_1CA948B68();

  v196 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v183 + 120) = sub_1CA2F9F14(v232, v231, v191, v193, 0, 0, v194, v219 - v180);
  *(v183 + 144) = v240;
  *(v183 + 152) = @"Multiline";
  *(v183 + 184) = MEMORY[0x1E69E6370];
  *(v183 + 160) = 1;
  v197 = @"Multiline";
  sub_1CA94C1E8();
  v198 = sub_1CA2F864C();
  v199 = v237;
  *(v237 + 56) = v198;
  v200 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D8, &qword_1CA981398);
  v201 = v239;
  v239[45] = v199;
  v201[48] = v200;
  v201[49] = @"ParameterSummary";
  v202 = @"ParameterSummary";
  v203 = sub_1CA94C438();
  v205 = v204;
  v206 = sub_1CA94C438();
  v208 = v207;
  MEMORY[0x1EEE9AC00](v206);
  v209 = v219 - v244;
  sub_1CA948D98();
  v210 = [v243 bundleURL];
  MEMORY[0x1EEE9AC00](v210);
  v211 = v219 - v242;
  sub_1CA948B68();

  v212 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v213 = sub_1CA2F9F14(v203, v205, v206, v208, 0, 0, v209, v211);
  v214 = [objc_allocWithZone(WFActionParameterSummary) initWithString_];

  v215 = sub_1CA25B3D0(0, &unk_1EC441800, off_1E836DD60);
  v216 = v239;
  v239[50] = v214;
  v216[53] = v215;
  v216[54] = @"RequiredResources";
  v216[58] = v233;
  v216[55] = &unk_1F4A01D00;
  type metadata accessor for Key(0);
  sub_1CA29CF44(&qword_1EDB9FB10, type metadata accessor for Key);
  v217 = @"RequiredResources";
  sub_1CA94C1E8();
  return sub_1CA332510();
}

uint64_t sub_1CA4E03E8(uint64_t a1)
{
  v1 = *(a1 + 16);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1CA4E0468(unsigned __int8 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(v4 - 8);
  v6 = *(v5 + 84);
  v7 = *(v5 + 80);
  if (v6 <= 0xFC)
  {
    v8 = 252;
  }

  else
  {
    v8 = *(v5 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v9 = a2 - v8;
  if (a2 <= v8)
  {
    goto LABEL_23;
  }

  v10 = ((v7 + 1) & ~v7) + *(*(v4 - 8) + 64);
  v11 = 8 * v10;
  if (v10 <= 3)
  {
    v14 = ((v9 + ~(-1 << v11)) >> v11) + 1;
    if (HIWORD(v14))
    {
      v12 = *&a1[v10];
      if (!v12)
      {
        goto LABEL_23;
      }

      goto LABEL_15;
    }

    if (v14 > 0xFF)
    {
      v12 = *&a1[v10];
      if (!*&a1[v10])
      {
        goto LABEL_23;
      }

      goto LABEL_15;
    }

    if (v14 < 2)
    {
LABEL_23:
      if (v6 > 0xFC)
      {
        return __swift_getEnumTagSinglePayload(&a1[v7 + 1] & ~v7, v6, v4);
      }

      v16 = *a1;
      if (v16 >= 4)
      {
        return v16 - 3;
      }

      else
      {
        return 0;
      }
    }
  }

  v12 = a1[v10];
  if (!a1[v10])
  {
    goto LABEL_23;
  }

LABEL_15:
  v15 = (v12 - 1) << v11;
  if (v10 > 3)
  {
    v15 = 0;
  }

  if (v10)
  {
    if (v10 > 3)
    {
      LODWORD(v10) = 4;
    }

    switch(v10)
    {
      case 2:
        LODWORD(v10) = *a1;
        break;
      case 3:
        LODWORD(v10) = *a1 | (a1[2] << 16);
        break;
      case 4:
        LODWORD(v10) = *a1;
        break;
      default:
        LODWORD(v10) = *a1;
        break;
    }
  }

  return v8 + (v10 | v15) + 1;
}

void sub_1CA4E05E8(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  if (v8 <= 0xFC)
  {
    v9 = 252;
  }

  else
  {
    v9 = *(v7 + 84);
  }

  v10 = *(v7 + 80);
  v11 = ((v10 + 1) & ~v10) + *(*(v6 - 8) + 64);
  v12 = 8 * v11;
  v13 = a3 >= v9;
  v14 = a3 - v9;
  if (v14 != 0 && v13)
  {
    if (v11 <= 3)
    {
      v18 = ((v14 + ~(-1 << v12)) >> v12) + 1;
      if (HIWORD(v18))
      {
        v15 = 4;
      }

      else
      {
        if (v18 < 0x100)
        {
          v19 = 1;
        }

        else
        {
          v19 = 2;
        }

        if (v18 >= 2)
        {
          v15 = v19;
        }

        else
        {
          v15 = 0;
        }
      }
    }

    else
    {
      v15 = 1;
    }
  }

  else
  {
    v15 = 0;
  }

  if (v9 >= a2)
  {
    switch(v15)
    {
      case 1:
        a1[v11] = 0;
        if (a2)
        {
          goto LABEL_27;
        }

        break;
      case 2:
        *&a1[v11] = 0;
        if (a2)
        {
          goto LABEL_27;
        }

        break;
      case 3:
LABEL_42:
        __break(1u);
        break;
      case 4:
        *&a1[v11] = 0;
        goto LABEL_26;
      default:
LABEL_26:
        if (a2)
        {
LABEL_27:
          if (v8 > 0xFC)
          {
            v21 = &a1[v10 + 1] & ~v10;

            __swift_storeEnumTagSinglePayload(v21, a2, v8, v6);
          }

          else
          {
            *a1 = a2 + 3;
          }
        }

        break;
    }
  }

  else
  {
    v16 = ~v9 + a2;
    if (v11 < 4)
    {
      v17 = (v16 >> v12) + 1;
      if (v11)
      {
        v20 = v16 & ~(-1 << v12);
        bzero(a1, v11);
        if (v11 == 3)
        {
          *a1 = v20;
          a1[2] = BYTE2(v20);
        }

        else if (v11 == 2)
        {
          *a1 = v20;
        }

        else
        {
          *a1 = v16;
        }
      }
    }

    else
    {
      bzero(a1, v11);
      *a1 = v16;
      v17 = 1;
    }

    switch(v15)
    {
      case 1:
        a1[v11] = v17;
        break;
      case 2:
        *&a1[v11] = v17;
        break;
      case 3:
        goto LABEL_42;
      case 4:
        *&a1[v11] = v17;
        break;
      default:
        return;
    }
  }
}

uint64_t sub_1CA4E0850(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E6168547373656CLL && a2 == 0xE800000000000000;
  if (v4 || (sub_1CA94D7F8() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000011 && 0x80000001CA9C3F00 == a2;
    if (v6 || (sub_1CA94D7F8() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x5472657461657267 && a2 == 0xEB000000006E6168;
      if (v7 || (sub_1CA94D7F8() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0xD000000000000014 && 0x80000001CA9C3F20 == a2)
      {

        return 3;
      }

      else
      {
        v9 = sub_1CA94D7F8();

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

unint64_t sub_1CA4E09C0(char a1)
{
  result = 0x6E6168547373656CLL;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000011;
      break;
    case 2:
      result = 0x5472657461657267;
      break;
    case 3:
      result = 0xD000000000000014;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1CA4E0A64(void *a1, uint64_t a2)
{
  v55 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445DB0, &qword_1CA989478);
  v4 = OUTLINED_FUNCTION_1_0(v3);
  v53 = v5;
  v54 = v4;
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_43();
  v52 = v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445DB8, &qword_1CA989480);
  v11 = OUTLINED_FUNCTION_1_0(v10);
  v50 = v12;
  v51 = v11;
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_43();
  v49 = v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445DC0, &qword_1CA989488);
  v18 = OUTLINED_FUNCTION_1_0(v17);
  v47 = v19;
  v48 = v18;
  v21 = *(v20 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v45 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445DC8, &qword_1CA989490);
  OUTLINED_FUNCTION_1_0(v25);
  v46 = v26;
  v28 = *(v27 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x1EEE9AC00](v29);
  v31 = &v45 - v30;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445DD0, &qword_1CA989498);
  OUTLINED_FUNCTION_1_0(v32);
  v34 = v33;
  v36 = *(v35 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x1EEE9AC00](v37);
  v39 = &v45 - v38;
  v40 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1CA4E3700();
  sub_1CA94D9B8();
  switch(v55)
  {
    case 1:
      v57 = 1;
      sub_1CA4E3834();
      OUTLINED_FUNCTION_17_12();
      (*(v47 + 8))(v24, v48);
      break;
    case 2:
      v58 = 2;
      sub_1CA4E37E0();
      v41 = v49;
      OUTLINED_FUNCTION_17_12();
      v43 = v50;
      v42 = v51;
      goto LABEL_5;
    case 3:
      v59 = 3;
      sub_1CA4E378C();
      v41 = v52;
      OUTLINED_FUNCTION_17_12();
      v43 = v53;
      v42 = v54;
LABEL_5:
      (*(v43 + 8))(v41, v42);
      break;
    default:
      v56 = 0;
      sub_1CA4E3888();
      OUTLINED_FUNCTION_17_12();
      (*(v46 + 8))(v31, v25);
      break;
  }

  return (*(v34 + 8))(v39, v32);
}

void sub_1CA4E0E2C(uint64_t *a1)
{
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445D58, &qword_1CA989448);
  OUTLINED_FUNCTION_1_0(v77);
  v74 = v2;
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_43();
  v76 = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445D60, &qword_1CA989450);
  v8 = OUTLINED_FUNCTION_1_0(v7);
  v71 = v9;
  v72 = v8;
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_43();
  v73 = v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445D68, &qword_1CA989458);
  v15 = OUTLINED_FUNCTION_1_0(v14);
  v69 = v16;
  v70 = v15;
  v18 = *(v17 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v63 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445D70, &qword_1CA989460);
  OUTLINED_FUNCTION_1_0(v22);
  v68 = v23;
  v25 = *(v24 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v63 - v27;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445D78, &qword_1CA989468);
  OUTLINED_FUNCTION_1_0(v29);
  v75 = v30;
  v32 = *(v31 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x1EEE9AC00](v33);
  v35 = &v63 - v34;
  v36 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1CA4E3700();
  v37 = v78;
  sub_1CA94D9A8();
  if (v37)
  {
    goto LABEL_9;
  }

  v65 = v22;
  v66 = v28;
  v67 = v21;
  v38 = v76;
  v39 = v77;
  v78 = a1;
  v40 = v35;
  v41 = sub_1CA94D738();
  sub_1CA4E3754(v41, 0);
  if (v44 == v45 >> 1)
  {
    goto LABEL_8;
  }

  v64 = 0;
  if (v44 >= (v45 >> 1))
  {
    __break(1u);
    return;
  }

  v46 = *(v43 + v44);
  sub_1CA4E4238(v44 + 1, v45 >> 1, v42, v43, v44, v45);
  v48 = v47;
  v50 = v49;
  swift_unknownObjectRelease();
  if (v48 != v50 >> 1)
  {
LABEL_8:
    v55 = sub_1CA94D4A8();
    swift_allocError();
    v57 = v56;
    v58 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445D88, &qword_1CA989470) + 48);
    *v57 = &type metadata for RowTemplateOrderedComparison;
    sub_1CA94D708();
    sub_1CA94D498();
    (*(*(v55 - 8) + 104))(v57, *MEMORY[0x1E69E6AF8], v55);
    swift_willThrow();
    swift_unknownObjectRelease();
    (*(v75 + 8))(v40, v29);
    a1 = v78;
LABEL_9:
    __swift_destroy_boxed_opaque_existential_0(a1);
    return;
  }

  v51 = v46;
  v53 = v74;
  v52 = v75;
  switch(v51)
  {
    case 1:
      v80 = 1;
      sub_1CA4E3834();
      v59 = v67;
      OUTLINED_FUNCTION_15_15();
      swift_unknownObjectRelease();
      v61 = v69;
      v60 = v70;
      goto LABEL_18;
    case 2:
      v81 = 2;
      sub_1CA4E37E0();
      v59 = v73;
      OUTLINED_FUNCTION_15_15();
      swift_unknownObjectRelease();
      v61 = v71;
      v60 = v72;
LABEL_18:
      (*(v61 + 8))(v59, v60);
      goto LABEL_19;
    case 3:
      v82 = 3;
      sub_1CA4E378C();
      v62 = v64;
      sub_1CA94D6F8();
      if (v62)
      {
        (*(v52 + 8))(v40, v29);
        swift_unknownObjectRelease();
        a1 = v78;
        goto LABEL_9;
      }

      swift_unknownObjectRelease();
      (*(v53 + 8))(v38, v39);
LABEL_19:
      (*(v52 + 8))(v40, v29);
      __swift_destroy_boxed_opaque_existential_0(v78);
      break;
    default:
      v79 = 0;
      sub_1CA4E3888();
      v54 = v66;
      OUTLINED_FUNCTION_15_15();
      swift_unknownObjectRelease();
      (*(v68 + 8))(v54, v65);
      goto LABEL_19;
  }
}

uint64_t sub_1CA4E1438@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1CA4E0850(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1CA4E1460@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1CA4E09B8();
  *a1 = result;
  return result;
}

uint64_t sub_1CA4E1488(uint64_t a1)
{
  v2 = sub_1CA4E3700();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1CA4E14C4(uint64_t a1)
{
  v2 = sub_1CA4E3700();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1CA4E1520@<X0>(_BYTE *a1@<X8>)
{
  result = OUTLINED_FUNCTION_17_0();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1CA4E154C(uint64_t a1)
{
  v2 = sub_1CA4E37E0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1CA4E1588(uint64_t a1)
{
  v2 = sub_1CA4E37E0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1CA4E15C4(uint64_t a1)
{
  v2 = sub_1CA4E378C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1CA4E1600(uint64_t a1)
{
  v2 = sub_1CA4E378C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1CA4E163C(uint64_t a1)
{
  v2 = sub_1CA4E3888();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1CA4E1678(uint64_t a1)
{
  v2 = sub_1CA4E3888();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1CA4E16B4(uint64_t a1)
{
  v2 = sub_1CA4E3834();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1CA4E16F0(uint64_t a1)
{
  v2 = sub_1CA4E3834();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1CA4E1744(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *, uint64_t))
{
  v6 = *v4;
  sub_1CA94D918();
  a4(v8, v6);
  return sub_1CA94D968();
}

void sub_1CA4E1790(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  sub_1CA4E0E2C(a1);
  if (!v2)
  {
    *a2 = v4;
  }
}

unint64_t sub_1CA4E17DC()
{
  result = qword_1EC445D50;
  if (!qword_1EC445D50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC445D50);
  }

  return result;
}

id sub_1CA4E1838(uint64_t a1)
{
  v2 = *v1;
  v3 = *(a1 + 24);
  v4 = &v1[*(a1 + 36)];
  v5 = v3[5](*(a1 + 16), v3);
  switch(v2)
  {
    case 1:
      if (v5)
      {
        sub_1CA94C438();
        OUTLINED_FUNCTION_1_2();
        if (qword_1EDB9F5F0 != -1)
        {
          goto LABEL_35;
        }

        goto LABEL_25;
      }

      v12 = OUTLINED_FUNCTION_2_36();
      if ((v13(v12) & 1) == 0)
      {
        goto LABEL_32;
      }

      sub_1CA94C438();
      OUTLINED_FUNCTION_1_2();
      if (qword_1EDB9F5F0 != -1)
      {
        goto LABEL_35;
      }

      goto LABEL_25;
    case 2:
      if (v5)
      {
        sub_1CA94C438();
        OUTLINED_FUNCTION_1_2();
        if (qword_1EDB9F5F0 != -1)
        {
          goto LABEL_35;
        }

        goto LABEL_25;
      }

      v6 = OUTLINED_FUNCTION_2_36();
      if (v7(v6))
      {
        sub_1CA94C438();
        OUTLINED_FUNCTION_1_2();
        if (qword_1EDB9F5F0 != -1)
        {
          goto LABEL_35;
        }

        goto LABEL_25;
      }

      result = WFDefaultLocalizedLabelForContentOperator();
      if (result)
      {
        goto LABEL_33;
      }

      __break(1u);
      goto LABEL_28;
    case 3:
      if (v5)
      {
        sub_1CA94C438();
        OUTLINED_FUNCTION_1_2();
        if (qword_1EDB9F5F0 != -1)
        {
          goto LABEL_35;
        }

        goto LABEL_25;
      }

      v8 = OUTLINED_FUNCTION_2_36();
      if (v9(v8))
      {
        sub_1CA94C438();
        OUTLINED_FUNCTION_1_2();
        if (qword_1EDB9F5F0 != -1)
        {
          goto LABEL_35;
        }

        goto LABEL_25;
      }

LABEL_28:
      result = WFDefaultLocalizedLabelForContentOperator();
      if (result)
      {
        goto LABEL_33;
      }

      __break(1u);
      goto LABEL_30;
    default:
      if (v5)
      {
        sub_1CA94C438();
        OUTLINED_FUNCTION_1_2();
        if (qword_1EDB9F5F0 == -1)
        {
          goto LABEL_25;
        }

        goto LABEL_35;
      }

      v10 = OUTLINED_FUNCTION_2_36();
      if (v11(v10))
      {
        sub_1CA94C438();
        OUTLINED_FUNCTION_1_2();
        if (qword_1EDB9F5F0 == -1)
        {
          goto LABEL_25;
        }

LABEL_35:
        OUTLINED_FUNCTION_0_3();
LABEL_25:
        OUTLINED_FUNCTION_14_4();
        OUTLINED_FUNCTION_7_24();
        v14 = OUTLINED_FUNCTION_18_18();
        v15 = OUTLINED_FUNCTION_4_36(v14, sel_localizedStringForKey_value_table_);

LABEL_34:
        v17 = sub_1CA94C3A8();

        return v17;
      }

LABEL_30:
      result = WFDefaultLocalizedLabelForContentOperator();
      if (result)
      {
        goto LABEL_33;
      }

      __break(1u);
LABEL_32:
      result = WFDefaultLocalizedLabelForContentOperator();
      if (result)
      {
LABEL_33:
        v15 = result;
        goto LABEL_34;
      }

      __break(1u);
      return result;
  }
}

uint64_t sub_1CA4E1CC4(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1CA4E1D00@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1CA4E1830();
  *a1 = result;
  return result;
}

uint64_t sub_1CA4E1D2C()
{
  OUTLINED_FUNCTION_59_0();
  v2 = *(v1 + 16);
  v4 = *(v3 + 36);
  *(v0 + 16) = *v1;
  *(v0 + 32) = v2;
  v6 = *(v5 + 16);
  v7 = *(v3 + 16);
  v12 = (v6 + *v6);
  v8 = v6[1];
  v9 = swift_task_alloc();
  *(v0 + 40) = v9;
  *v9 = v0;
  v9[1] = sub_1CA4E1E68;
  v10 = OUTLINED_FUNCTION_19_15();

  return v12(v10);
}

uint64_t sub_1CA4E1E68()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1();
  *v3 = v2;
  v5 = *(v4 + 40);
  v6 = *v1;
  OUTLINED_FUNCTION_13();
  *v7 = v6;
  *(v8 + 48) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_90();

    return MEMORY[0x1EEE6DFA0](v9, v10, v11);
  }

  else
  {
    v12 = *(v6 + 8);

    return v12();
  }
}

uint64_t sub_1CA4E1F84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a4 - 8);
  v6 = swift_task_alloc();
  *(v4 + 16) = v6;
  *v6 = v4;
  v6[1] = sub_1CA2AD9FC;

  return sub_1CA4E1D2C();
}

uint64_t sub_1CA4E2040(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  *(v5 + 16) = v4;
  v8 = *a2;
  v9 = a2[1];
  v10 = *(a3 + 36);
  v11 = *(a4 + 16);
  v12 = *(a3 + 16);
  v16 = (v11 + *v11);
  v13 = v11[1];
  v14 = swift_task_alloc();
  *(v5 + 24) = v14;
  *v14 = v5;
  v14[1] = sub_1CA4E2188;

  return v16(v8, a1, v9, v12, a4);
}

uint64_t sub_1CA4E2188()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1();
  *v3 = v2;
  v5 = *(v4 + 24);
  v6 = *v1;
  *v3 = v6;
  *(v2 + 32) = v7;

  if (v0)
  {
    v8 = *(v6 + 8);

    return v8(0);
  }

  else
  {
    OUTLINED_FUNCTION_90();

    return MEMORY[0x1EEE6DFA0](v10, v11, v12);
  }
}

uint64_t sub_1CA4E22B0()
{
  v1 = *(v0 + 32);
  switch(**(v0 + 16))
  {
    case 1:
      ++v1;
      goto LABEL_4;
    case 2:
      v2 = v1 == 1;
      goto LABEL_6;
    case 3:
LABEL_4:
      v3 = v1 < 2;
      return (*(v0 + 8))(v3);
    default:
      v2 = v1 == -1;
LABEL_6:
      v3 = v2;
      return (*(v0 + 8))(v3);
  }
}

uint64_t sub_1CA4E2314(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v8 = *(a4 - 8);
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1CA4E42D0;

  return sub_1CA4E2040(a1, a2, a3, v8);
}

uint64_t sub_1CA4E23DC(uint64_t a1, uint64_t a2)
{
  sub_1CA2C2738();
  v5 = sub_1CA94C1E8();
  v80 = a1;
  sub_1CA43FE30(a1, v86);
  v87 = 0x65756C6176;
  v88 = 0xE500000000000000;
  v6 = *(a2 + 16);
  v78 = *(a2 + 24);
  v79 = a2;
  v81 = v2;
  v75 = v6;
  v76 = *(v78 + 16);
  v77 = v78 + 16;
  v76(v86);
  sub_1CA43FEEC(v86);
  OUTLINED_FUNCTION_8_19();
  v11 = v10 & v9;
  v13 = (v12 + 63) >> 6;
  v82 = v13;
  if (v11)
  {
    while (1)
    {
      v14 = v7;
LABEL_6:
      v15 = __clz(__rbit64(v11)) | (v14 << 6);
      v16 = (*(v85 + 48) + 16 * v15);
      v18 = *v16;
      v17 = v16[1];
      v19 = *(*(v85 + 56) + 8 * v15);
      sub_1CA94C218();
      swift_isUniquelyReferenced_nonNull_native();
      v86[0] = v5;
      v20 = sub_1CA271BF8();
      OUTLINED_FUNCTION_22_15(v20, v21);
      if (v24)
      {
        break;
      }

      v25 = v22;
      v26 = v23;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC444388, &qword_1CA9833C0);
      v27 = sub_1CA94D588();
      if (v27)
      {
        v27 = sub_1CA271BF8();
        if ((v26 & 1) != (v28 & 1))
        {
          goto LABEL_38;
        }

        v25 = v27;
      }

      v11 &= v11 - 1;
      if (v26)
      {

        v5 = v86[0];
        v35 = *(v86[0] + 56);
        v36 = *(v35 + 8 * v25);
        *(v35 + 8 * v25) = v19;
      }

      else
      {
        OUTLINED_FUNCTION_9_23(v27, v28, v29, v30, v31, v32, v33, v34, v74, v75, v76, v77, v78, v79, v80, v81, v82, v84, v85, v86[0]);
        *v37 = v18;
        v37[1] = v17;
        *(*(v5 + 56) + 8 * v25) = v19;

        v38 = *(v5 + 16);
        v24 = __OFADD__(v38, 1);
        v39 = v38 + 1;
        if (v24)
        {
          goto LABEL_36;
        }

        *(v5 + 16) = v39;
      }

      v7 = v14;
      v13 = v82;
      v8 = v84;
      if (!v11)
      {
        goto LABEL_3;
      }
    }
  }

  else
  {
LABEL_3:
    while (1)
    {
      v14 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        break;
      }

      if (v14 >= v13)
      {

        v40 = *(v79 + 36);
        sub_1CA43FE30(v80, v86);
        v87 = 0x61765F726568746FLL;
        v88 = 0xEB0000000065756CLL;
        (v76)(v86, v75, v78);
        sub_1CA43FEEC(v86);
        OUTLINED_FUNCTION_8_19();
        v45 = v44 & v43;
        v47 = (v46 + 63) >> 6;
        v83 = v47;
        if (!v45)
        {
          goto LABEL_18;
        }

        while (1)
        {
          v48 = v41;
LABEL_21:
          v49 = __clz(__rbit64(v45)) | (v48 << 6);
          v50 = (*(v85 + 48) + 16 * v49);
          v52 = *v50;
          v51 = v50[1];
          v53 = *(*(v85 + 56) + 8 * v49);
          sub_1CA94C218();
          swift_isUniquelyReferenced_nonNull_native();
          v86[0] = v5;
          v54 = sub_1CA271BF8();
          OUTLINED_FUNCTION_22_15(v54, v55);
          if (v24)
          {
            goto LABEL_35;
          }

          v58 = v56;
          v59 = v57;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC444388, &qword_1CA9833C0);
          v60 = sub_1CA94D588();
          if (v60)
          {
            v60 = sub_1CA271BF8();
            if ((v59 & 1) != (v61 & 1))
            {
              goto LABEL_38;
            }

            v58 = v60;
          }

          v45 &= v45 - 1;
          if (v59)
          {

            v5 = v86[0];
            v68 = *(v86[0] + 56);
            v69 = *(v68 + 8 * v58);
            *(v68 + 8 * v58) = v53;
          }

          else
          {
            OUTLINED_FUNCTION_9_23(v60, v61, v62, v63, v64, v65, v66, v67, v74, v75, v76, v77, v78, v79, v80, v81, v83, v84, v85, v86[0]);
            *v70 = v52;
            v70[1] = v51;
            *(*(v5 + 56) + 8 * v58) = v53;

            v71 = *(v5 + 16);
            v24 = __OFADD__(v71, 1);
            v72 = v71 + 1;
            if (v24)
            {
              goto LABEL_37;
            }

            *(v5 + 16) = v72;
          }

          v41 = v48;
          v47 = v83;
          v42 = v84;
          if (!v45)
          {
LABEL_18:
            while (1)
            {
              v48 = v41 + 1;
              if (__OFADD__(v41, 1))
              {
                goto LABEL_33;
              }

              if (v48 >= v47)
              {

                return v5;
              }

              v45 = *(v42 + 8 * v48);
              ++v41;
              if (v45)
              {
                goto LABEL_21;
              }
            }
          }
        }
      }

      v11 = *(v8 + 8 * v14);
      ++v7;
      if (v11)
      {
        goto LABEL_6;
      }
    }

    __break(1u);
LABEL_33:
    __break(1u);
  }

  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  result = sub_1CA94D878();
  __break(1u);
  return result;
}

uint64_t sub_1CA4E2820()
{
  OUTLINED_FUNCTION_59_0();
  *(v1 + 80) = v2;
  *(v1 + 88) = v0;
  *(v1 + 64) = v3;
  *(v1 + 72) = v4;
  v6 = *v5;
  v7 = v5[1];
  *(v1 + 96) = *v5;
  *(v1 + 104) = v7;
  v8 = *(v5 + 16);
  *(v1 + 16) = v6;
  *(v1 + 24) = v7;
  *(v1 + 32) = v8;
  v9 = *(v2 + 16);
  *(v1 + 112) = v9;
  *(v1 + 120) = (v2 + 16) & 0xFFFFFFFFFFFFLL | 0xA6F6000000000000;
  *(v1 + 128) = *(v4 + 16);
  v14 = (v9 + *v9);
  v10 = v9[1];
  v11 = swift_task_alloc();
  *(v1 + 136) = v11;
  *v11 = v1;
  v11[1] = sub_1CA4E296C;
  v12 = OUTLINED_FUNCTION_19_15();

  return v14(v12);
}

uint64_t sub_1CA4E296C()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1();
  *v3 = v2;
  v5 = *(v4 + 136);
  v6 = *v1;
  OUTLINED_FUNCTION_13();
  *v7 = v6;
  *(v8 + 144) = v0;

  OUTLINED_FUNCTION_90();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1CA4E2A68()
{
  OUTLINED_FUNCTION_59_0();
  v1 = *(v0 + 112);
  v2 = *(v0 + 120);
  v3 = *(v0 + 104);
  v4 = *(v0 + 88);
  v5 = *(*(v0 + 72) + 36);
  *(v0 + 40) = *(v0 + 96);
  *(v0 + 48) = v3;
  *(v0 + 56) = 1;
  sub_1CA94C218();
  v6 = v3;
  v14 = (v1 + *v1);
  v7 = v1[1];
  v8 = swift_task_alloc();
  *(v0 + 152) = v8;
  *v8 = v0;
  v8[1] = sub_1CA4E2B9C;
  v10 = *(v0 + 120);
  v9 = *(v0 + 128);
  v11 = *(v0 + 80);
  v12 = *(v0 + 64);

  return v14(v12, v0 + 40, v9, v11);
}

uint64_t sub_1CA4E2B9C()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  v3 = v2;
  OUTLINED_FUNCTION_1();
  *v4 = v3;
  v6 = *(v5 + 152);
  v7 = *v1;
  OUTLINED_FUNCTION_13();
  *v8 = v7;
  v3[20] = v0;

  v9 = v3[5];
  v10 = v3[6];

  if (v0)
  {
    OUTLINED_FUNCTION_90();

    return MEMORY[0x1EEE6DFA0](v11, v12, v13);
  }

  else
  {
    v14 = *(v7 + 8);

    return v14();
  }
}

uint64_t sub_1CA4E2CD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a4 - 8);
  v6 = swift_task_alloc();
  *(v4 + 16) = v6;
  *v6 = v4;
  v6[1] = sub_1CA2AD81C;

  return sub_1CA4E2820();
}

uint64_t sub_1CA4E2D94()
{
  OUTLINED_FUNCTION_59_0();
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v1[4] = v2;
  v1[5] = v0;
  v1[2] = v8;
  v1[3] = v4;
  v10 = sub_1CA949F78();
  v1[6] = v10;
  v11 = *(v10 - 8);
  v1[7] = v11;
  v12 = *(v11 + 64) + 15;
  v13 = swift_task_alloc();
  v15 = *v7;
  v14 = v7[1];
  v1[8] = v13;
  v1[9] = v15;
  v1[10] = v14;
  v16 = *(v3 + 16);
  v1[11] = v16;
  v1[12] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0x2421000000000000;
  v17 = *(v5 + 16);
  v1[13] = v17;
  v21 = (v16 + *v16);
  v18 = v16[1];
  v19 = swift_task_alloc();
  v1[14] = v19;
  *v19 = v1;
  v19[1] = sub_1CA4E2F4C;

  return v21(v15, v9, v14, v17, v3);
}

uint64_t sub_1CA4E2F4C(uint64_t a1)
{
  OUTLINED_FUNCTION_3();
  v5 = v4;
  OUTLINED_FUNCTION_1();
  *v6 = v5;
  v8 = *(v7 + 112);
  v9 = *v2;
  OUTLINED_FUNCTION_13();
  *v10 = v9;

  if (v1)
  {
    v11 = v5[8];

    v12 = *(v9 + 8);

    return v12(0);
  }

  else
  {
    v14 = v5[11];
    v15 = v5[12];
    v16 = v5[5];
    v17 = v5[3];
    v5[15] = a1;
    v18 = *(v17 + 36);
    v27 = (v14 + *v14);
    v19 = v14[1];
    v20 = swift_task_alloc();
    v5[16] = v20;
    *v20 = v9;
    v20[1] = sub_1CA4E313C;
    v22 = v5[12];
    v21 = v5[13];
    v23 = v5[10];
    v24 = v5[4];
    v25 = v5[2];
    v26 = v5[9];

    return v27(v26, v25, v23, v21, v24);
  }
}

uint64_t sub_1CA4E313C(uint64_t a1)
{
  OUTLINED_FUNCTION_3();
  v5 = v4;
  OUTLINED_FUNCTION_1();
  *v6 = v5;
  v8 = *(v7 + 128);
  v9 = *v2;
  OUTLINED_FUNCTION_13();
  *v10 = v9;

  if (v1)
  {
    v11 = *(v5 + 64);

    v12 = *(v9 + 8);

    return v12(0);
  }

  else
  {
    *(v5 + 136) = a1;
    OUTLINED_FUNCTION_90();

    return MEMORY[0x1EEE6DFA0](v14, v15, v16);
  }
}

uint64_t sub_1CA4E3280()
{
  v1 = v0[8];
  v2 = v0[17] + 1;
  v3 = *MEMORY[0x1E69E10B0];
  sub_1CA949C58();
  v4 = sub_1CA949F68();
  v5 = sub_1CA94CC38();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[15] < 2uLL;
    v7 = swift_slowAlloc();
    *v7 = 67109376;
    *(v7 + 4) = v6;
    *(v7 + 8) = 1024;
    *(v7 + 10) = v2 < 2;
    _os_log_impl(&dword_1CA256000, v4, v5, "Between operator: afterFirst: %{BOOL}d, beforeSecond: %{BOOL}d", v7, 0xEu);
    MEMORY[0x1CCAA4BF0](v7, -1, -1);
  }

  v8 = v0[15];
  v10 = v0[7];
  v9 = v0[8];
  v11 = v0[6];

  (*(v10 + 8))(v9, v11);
  v13 = v8 < 2 && v2 < 2;

  v14 = v0[1];

  return v14(v13);
}

uint64_t sub_1CA4E33E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a4 - 8);
  v6 = swift_task_alloc();
  *(v4 + 16) = v6;
  *v6 = v4;
  v6[1] = sub_1CA4E349C;

  return sub_1CA4E2D94();
}

uint64_t sub_1CA4E349C()
{
  OUTLINED_FUNCTION_0();
  v3 = v2;
  OUTLINED_FUNCTION_3();
  v5 = *(v4 + 16);
  v6 = *v1;
  OUTLINED_FUNCTION_13();
  *v7 = v6;

  v8 = *(v6 + 8);
  if (v0)
  {
    v9 = 0;
  }

  else
  {
    v9 = v3 & 1;
  }

  return v8(v9);
}

uint64_t sub_1CA4E3594(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1CA4E35D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  switch(a1)
  {
    case 4:
      v3 = MEMORY[0x1E6969A70];
      break;
    case 8:
      v3 = MEMORY[0x1E6969A80];
      break;
    case 0x10:
      v3 = MEMORY[0x1E6969A40];
      break;
    case 0x20:
      v3 = MEMORY[0x1E6969A60];
      break;
    case 0x40:
      v3 = MEMORY[0x1E6969A90];
      break;
    case 0x2000:
      v3 = MEMORY[0x1E6969A08];
      break;
    case 0x80:
      v3 = MEMORY[0x1E6969AA0];
      break;
    default:
      v4 = sub_1CA9490C8();
      v5 = a2;
      v6 = 1;
      goto LABEL_17;
  }

  v7 = *v3;
  v8 = sub_1CA9490C8();
  (*(*(v8 - 8) + 104))(a2, v7, v8);
  v5 = a2;
  v6 = 0;
  v4 = v8;
LABEL_17:

  return __swift_storeEnumTagSinglePayload(v5, v6, 1, v4);
}

unint64_t sub_1CA4E3700()
{
  result = qword_1EC445D80;
  if (!qword_1EC445D80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC445D80);
  }

  return result;
}

void sub_1CA4E3754(uint64_t a1, uint64_t a2)
{
  if (__OFSUB__(0, a2))
  {
    __break(1u);
    goto LABEL_7;
  }

  v2 = *(a1 + 16);
  v3 = __OFADD__(a2, v2);
  v4 = a2 + v2;
  if (v3)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (v4 < a2)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if ((v4 & 0x8000000000000000) == 0)
  {
    OUTLINED_FUNCTION_13_21();
    return;
  }

LABEL_9:
  __break(1u);
}

unint64_t sub_1CA4E378C()
{
  result = qword_1EC445D90;
  if (!qword_1EC445D90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC445D90);
  }

  return result;
}

unint64_t sub_1CA4E37E0()
{
  result = qword_1EC445D98;
  if (!qword_1EC445D98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC445D98);
  }

  return result;
}

unint64_t sub_1CA4E3834()
{
  result = qword_1EC445DA0;
  if (!qword_1EC445DA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC445DA0);
  }

  return result;
}

unint64_t sub_1CA4E3888()
{
  result = qword_1EC445DA8;
  if (!qword_1EC445DA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC445DA8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SessionKitAssertion.Result(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFD)
  {
    if (a2 + 3 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 3) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 4;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v5 = v6 - 4;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *sub_1CA4E3964(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_1CA4E3A80(uint64_t a1)
{
  v1 = *(a1 + 16);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1CA4E3AF0(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(v4 - 8);
  v6 = *(v5 + 84);
  if (!a2)
  {
    return 0;
  }

  v7 = a2 - v6;
  if (a2 <= v6)
  {
    return __swift_getEnumTagSinglePayload(a1, v6, v4);
  }

  v8 = ((*(*(v4 - 8) + 64) + *(v5 + 80)) & ~*(v5 + 80)) + *(*(v4 - 8) + 64);
  v9 = 8 * v8;
  if (v8 <= 3)
  {
    v11 = ((v7 + ~(-1 << v9)) >> v9) + 1;
    if (HIWORD(v11))
    {
      v10 = *(a1 + v8);
      if (!v10)
      {
        goto LABEL_19;
      }

      goto LABEL_11;
    }

    if (v11 > 0xFF)
    {
      v10 = *(a1 + v8);
      if (!*(a1 + v8))
      {
        goto LABEL_19;
      }

      goto LABEL_11;
    }

    if (v11 < 2)
    {
LABEL_19:
      if (v6)
      {
        return __swift_getEnumTagSinglePayload(a1, v6, v4);
      }

      return 0;
    }
  }

  v10 = *(a1 + v8);
  if (!*(a1 + v8))
  {
    goto LABEL_19;
  }

LABEL_11:
  v12 = (v10 - 1) << v9;
  if (v8 > 3)
  {
    v12 = 0;
  }

  if (v8)
  {
    if (v8 > 3)
    {
      LODWORD(v8) = 4;
    }

    switch(v8)
    {
      case 2:
        LODWORD(v8) = *a1;
        break;
      case 3:
        LODWORD(v8) = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        LODWORD(v8) = *a1;
        break;
      default:
        LODWORD(v8) = *a1;
        break;
    }
  }

  return v6 + (v8 | v12) + 1;
}

void sub_1CA4E3C40(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  v9 = *(v7 + 64);
  v10 = (v9 + *(v7 + 80)) & ~*(v7 + 80);
  v11 = v10 + v9;
  v12 = 8 * (v10 + v9);
  v13 = a3 >= v8;
  v14 = a3 - v8;
  if (v14 != 0 && v13)
  {
    if (v11 <= 3)
    {
      v18 = ((v14 + ~(-1 << v12)) >> v12) + 1;
      if (HIWORD(v18))
      {
        v15 = 4;
      }

      else
      {
        if (v18 < 0x100)
        {
          v19 = 1;
        }

        else
        {
          v19 = 2;
        }

        if (v18 >= 2)
        {
          v15 = v19;
        }

        else
        {
          v15 = 0;
        }
      }
    }

    else
    {
      v15 = 1;
    }
  }

  else
  {
    v15 = 0;
  }

  if (v8 >= a2)
  {
    switch(v15)
    {
      case 1:
        a1[v11] = 0;
        if (a2)
        {
          goto LABEL_24;
        }

        break;
      case 2:
        *&a1[v11] = 0;
        if (a2)
        {
          goto LABEL_24;
        }

        break;
      case 3:
LABEL_37:
        __break(1u);
        break;
      case 4:
        *&a1[v11] = 0;
        goto LABEL_23;
      default:
LABEL_23:
        if (a2)
        {
LABEL_24:

          __swift_storeEnumTagSinglePayload(a1, a2, v8, v6);
        }

        break;
    }
  }

  else
  {
    v16 = ~v8 + a2;
    if (v11 < 4)
    {
      v17 = (v16 >> v12) + 1;
      if (v11)
      {
        v20 = v16 & ~(-1 << v12);
        bzero(a1, v11);
        if (v11 == 3)
        {
          *a1 = v20;
          a1[2] = BYTE2(v20);
        }

        else if (v11 == 2)
        {
          *a1 = v20;
        }

        else
        {
          *a1 = v16;
        }
      }
    }

    else
    {
      bzero(a1, v11);
      *a1 = v16;
      v17 = 1;
    }

    switch(v15)
    {
      case 1:
        a1[v11] = v17;
        break;
      case 2:
        *&a1[v11] = v17;
        break;
      case 3:
        goto LABEL_37;
      case 4:
        *&a1[v11] = v17;
        break;
      default:
        return;
    }
  }
}

unint64_t sub_1CA4E3E74()
{
  result = qword_1EC445DD8;
  if (!qword_1EC445DD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC445DD8);
  }

  return result;
}

unint64_t sub_1CA4E3ECC()
{
  result = qword_1EC445DE0;
  if (!qword_1EC445DE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC445DE0);
  }

  return result;
}

unint64_t sub_1CA4E3F24()
{
  result = qword_1EC445DE8;
  if (!qword_1EC445DE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC445DE8);
  }

  return result;
}

unint64_t sub_1CA4E3F7C()
{
  result = qword_1EC445DF0;
  if (!qword_1EC445DF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC445DF0);
  }

  return result;
}

unint64_t sub_1CA4E3FD4()
{
  result = qword_1EC445DF8;
  if (!qword_1EC445DF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC445DF8);
  }

  return result;
}

unint64_t sub_1CA4E402C()
{
  result = qword_1EC445E00;
  if (!qword_1EC445E00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC445E00);
  }

  return result;
}

unint64_t sub_1CA4E4084()
{
  result = qword_1EC445E08;
  if (!qword_1EC445E08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC445E08);
  }

  return result;
}

unint64_t sub_1CA4E40DC()
{
  result = qword_1EC445E10;
  if (!qword_1EC445E10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC445E10);
  }

  return result;
}

unint64_t sub_1CA4E4134()
{
  result = qword_1EC445E18;
  if (!qword_1EC445E18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC445E18);
  }

  return result;
}

unint64_t sub_1CA4E418C()
{
  result = qword_1EC445E20;
  if (!qword_1EC445E20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC445E20);
  }

  return result;
}

unint64_t sub_1CA4E41E4()
{
  result = qword_1EC445E28;
  if (!qword_1EC445E28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC445E28);
  }

  return result;
}

uint64_t sub_1CA4E4238(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  if (result < a5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if ((a6 >> 1) < result || (a6 >> 1) < a2)
  {
    goto LABEL_10;
  }

  if (a2 < a5)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if ((a2 & 0x8000000000000000) == 0)
  {
    return swift_unknownObjectRetain();
  }

LABEL_12:
  __break(1u);
  return result;
}

id sub_1CA4E430C()
{
  v227 = sub_1CA25B3D0(0, &qword_1EC4419A0, off_1E836DD08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B0, &qword_1CA981320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA9813E0;
  v1 = MEMORY[0x1E69E6158];
  *(inited + 32) = @"ActionClass";
  *(inited + 40) = 0xD000000000000018;
  *(inited + 48) = 0x80000001CA9C3F50;
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
  v240 = v12;
  v243 = (v12 + 15) & 0xFFFFFFFFFFFFFFF0;
  v13 = &v221 - v243;
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v239 = qword_1EDB9F690;
  v14 = [qword_1EDB9F690 bundleURL];
  v15 = sub_1CA948BA8();
  v241 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v242 = (v16 + 15) & 0xFFFFFFFFFFFFFFF0;
  v17 = &v221 - v242;
  sub_1CA948B68();

  v18 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v19 = sub_1CA2F9F14(v4, v6, v7, v9, 0, 0, v13, v17);
  v20 = sub_1CA25B3D0(0, &qword_1EDB9F6E0, 0x1E696B100);
  v238 = v20;
  *(inited + 80) = v19;
  *(inited + 104) = v20;
  *(inited + 112) = @"AppDefinition";
  v21 = @"AppDefinition";
  v22 = sub_1CA94C1E8();
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B8, &unk_1CA985870);
  *(inited + 120) = v22;
  *(inited + 144) = v23;
  *(inited + 152) = @"Description";
  v236 = sub_1CA25B3D0(0, &unk_1EC441790, off_1E836DD18);
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
  v235 = &v221;
  MEMORY[0x1EEE9AC00](v30);
  v33 = &v221 - v243;
  sub_1CA948D98();
  v34 = [v239 bundleURL];
  v237 = inited;
  v35 = v34;
  MEMORY[0x1EEE9AC00](v34);
  v36 = &v221 - v242;
  sub_1CA948B68();

  v37 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v38 = sub_1CA2F9F14(v27, v29, v30, v32, 0, 0, v33, v36);
  *(v24 + 64) = v238;
  *(v24 + 40) = v38;
  type metadata accessor for DescriptionKey(0);
  sub_1CA29CF44(&qword_1EC441830, type metadata accessor for DescriptionKey);
  sub_1CA94C1E8();
  v39 = v236;
  v40 = sub_1CA6B3784();
  v41 = v237;
  v237[20] = v40;
  v41[23] = v39;
  v41[24] = @"Name";
  v42 = @"Name";
  v43 = sub_1CA94C438();
  v45 = v44;
  v46 = sub_1CA94C438();
  v48 = v47;
  v236 = &v221;
  MEMORY[0x1EEE9AC00](v46);
  v49 = &v221 - v243;
  sub_1CA948D98();
  v50 = [v239 bundleURL];
  MEMORY[0x1EEE9AC00](v50);
  v51 = &v221 - v242;
  sub_1CA948B68();

  v52 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v53 = sub_1CA2F9F14(v43, v45, v46, v48, 0, 0, v49, v51);
  v54 = v237;
  v237[25] = v53;
  v55 = v238;
  v54[28] = v238;
  v54[29] = @"Output";
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445FB0, &qword_1CA97EE10);
  v56 = swift_initStackObject();
  *(v56 + 16) = xmmword_1CA9813C0;
  *(v56 + 32) = 0x656C7069746C754DLL;
  *(v56 + 40) = 0xE800000000000000;
  v57 = MEMORY[0x1E69E6370];
  *(v56 + 48) = 1;
  *(v56 + 72) = v57;
  *(v56 + 80) = 0x614E74757074754FLL;
  *(v56 + 88) = 0xEA0000000000656DLL;
  v58 = @"Output";
  v59 = sub_1CA94C438();
  v235 = v60;
  v61 = sub_1CA94C438();
  v63 = v62;
  v236 = &v221;
  MEMORY[0x1EEE9AC00](v61);
  v64 = &v221 - v243;
  sub_1CA948D98();
  v65 = [v239 bundleURL];
  MEMORY[0x1EEE9AC00](v65);
  v66 = &v221 - v242;
  sub_1CA948B68();

  v67 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v56 + 96) = sub_1CA2F9F14(v59, v235, v61, v63, 0, 0, v64, v66);
  *(v56 + 120) = v55;
  *(v56 + 128) = 0x7365707954;
  *(v56 + 136) = 0xE500000000000000;
  v226 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
  *(v56 + 168) = v226;
  *(v56 + 144) = &unk_1F4A01DC0;
  v68 = MEMORY[0x1E69E6158];
  v69 = sub_1CA94C1E8();
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC447DE0, &qword_1CA9917E0);
  v71 = v237;
  v237[30] = v69;
  v71[33] = v70;
  v71[34] = @"Parameters";
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443910, &unk_1CA981A00);
  v236 = swift_allocObject();
  *(v236 + 1) = xmmword_1CA981570;
  v235 = sub_1CA25B3D0(0, &qword_1EDB9F710, off_1E836EDC0);
  v234 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443D80, &unk_1CA981BA0);
  v72 = swift_initStackObject();
  v229 = xmmword_1CA981370;
  *(v72 + 16) = xmmword_1CA981370;
  *(v72 + 32) = @"Class";
  *(v72 + 40) = 0xD000000000000014;
  *(v72 + 48) = 0x80000001CA99B500;
  *(v72 + 64) = v68;
  *(v72 + 72) = @"Description";
  v73 = @"Class";
  v74 = @"Description";
  v75 = v73;
  v76 = v74;
  v228 = v75;
  v231 = v76;
  v77 = @"Parameters";
  v78 = sub_1CA94C438();
  v80 = v79;
  v81 = sub_1CA94C438();
  v83 = v82;
  v233 = &v221;
  MEMORY[0x1EEE9AC00](v81);
  v84 = &v221 - v243;
  sub_1CA948D98();
  v85 = [v239 bundleURL];
  MEMORY[0x1EEE9AC00](v85);
  v86 = &v221 - v242;
  sub_1CA948B68();

  v87 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v72 + 80) = sub_1CA2F9F14(v78, v80, v81, v83, 0, 0, v84, v86);
  *(v72 + 104) = v238;
  *(v72 + 112) = @"Key";
  *(v72 + 120) = 0xD00000000000001ALL;
  *(v72 + 128) = 0x80000001CA9C40A0;
  *(v72 + 144) = MEMORY[0x1E69E6158];
  *(v72 + 152) = @"Label";
  v88 = @"Key";
  v89 = @"Label";
  v90 = v88;
  v91 = v89;
  v225 = v90;
  v230 = v91;
  v232 = sub_1CA94C438();
  v224 = v92;
  v93 = sub_1CA94C438();
  v223 = v94;
  v233 = &v221;
  MEMORY[0x1EEE9AC00](v93);
  v95 = &v221 - v243;
  sub_1CA948D98();
  v96 = v239;
  v97 = [v239 bundleURL];
  MEMORY[0x1EEE9AC00](v97);
  v98 = v242;
  sub_1CA948B68();

  v99 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v72 + 160) = sub_1CA2F9F14(v232, v224, v93, v223, 0, 0, v95, &v221 - v98);
  *(v72 + 184) = v238;
  *(v72 + 192) = @"Placeholder";
  v224 = @"Placeholder";
  v232 = sub_1CA94C438();
  v223 = v100;
  v101 = sub_1CA94C438();
  v222 = v102;
  v233 = &v221;
  MEMORY[0x1EEE9AC00](v101);
  v103 = &v221 - v243;
  sub_1CA948D98();
  v104 = [v96 bundleURL];
  MEMORY[0x1EEE9AC00](v104);
  sub_1CA948B68();

  v105 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v106 = sub_1CA2F9F14(v232, v223, v101, v222, 0, 0, v103, &v221 - v98);
  *(v72 + 224) = v238;
  *(v72 + 200) = v106;
  _s3__C3KeyVMa_0(0);
  v233 = v107;
  v232 = sub_1CA29CF44(&qword_1EDB9F780, _s3__C3KeyVMa_0);
  sub_1CA94C1E8();
  v236[4] = sub_1CA2F864C();
  v108 = swift_allocObject();
  *(v108 + 16) = v229;
  v109 = v228;
  *(v108 + 32) = v228;
  *(v108 + 40) = 0xD00000000000001FLL;
  *(v108 + 48) = 0x80000001CA9C4130;
  v110 = v231;
  *(v108 + 64) = MEMORY[0x1E69E6158];
  *(v108 + 72) = v110;
  *&v229 = v109;
  v111 = sub_1CA94C438();
  v222 = v112;
  v223 = v111;
  v113 = sub_1CA94C438();
  v115 = v114;
  v228 = &v221;
  MEMORY[0x1EEE9AC00](v113);
  v116 = v243;
  sub_1CA948D98();
  v117 = v239;
  v118 = [v239 bundleURL];
  MEMORY[0x1EEE9AC00](v118);
  v119 = &v221 - v242;
  sub_1CA948B68();

  v120 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v108 + 80) = sub_1CA2F9F14(v223, v222, v113, v115, 0, 0, &v221 - v116, v119);
  v121 = v225;
  *(v108 + 104) = v238;
  *(v108 + 112) = v121;
  *(v108 + 120) = 0xD000000000000013;
  *(v108 + 128) = 0x80000001CA9C4220;
  v122 = v230;
  *(v108 + 144) = MEMORY[0x1E69E6158];
  *(v108 + 152) = v122;
  v228 = v121;
  v123 = sub_1CA94C438();
  v222 = v124;
  v223 = v123;
  v221 = sub_1CA94C438();
  v126 = v125;
  v225 = &v221;
  MEMORY[0x1EEE9AC00](v221);
  v127 = &v221 - v116;
  sub_1CA948D98();
  v128 = v117;
  v129 = [v117 bundleURL];
  MEMORY[0x1EEE9AC00](v129);
  v130 = v242;
  sub_1CA948B68();

  v131 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v108 + 160) = sub_1CA2F9F14(v223, v222, v221, v126, 0, 0, v127, &v221 - v130);
  v132 = v238;
  v133 = v224;
  *(v108 + 184) = v238;
  *(v108 + 192) = v133;
  v134 = sub_1CA94C438();
  v223 = v135;
  v224 = v134;
  v136 = sub_1CA94C438();
  v222 = v137;
  v225 = &v221;
  MEMORY[0x1EEE9AC00](v136);
  v138 = &v221 - v243;
  sub_1CA948D98();
  v139 = [v128 bundleURL];
  MEMORY[0x1EEE9AC00](v139);
  sub_1CA948B68();

  v140 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v141 = sub_1CA2F9F14(v224, v223, v136, v222, 0, 0, v138, &v221 - v130);
  *(v108 + 224) = v132;
  *(v108 + 200) = v141;
  sub_1CA94C1E8();
  v236[5] = sub_1CA2F864C();
  v142 = swift_allocObject();
  *(v142 + 16) = xmmword_1CA981350;
  *(v142 + 32) = v229;
  *(v142 + 40) = 0xD000000000000021;
  *(v142 + 48) = 0x80000001CA9C4280;
  v143 = v231;
  *(v142 + 64) = MEMORY[0x1E69E6158];
  *(v142 + 72) = v143;
  v144 = sub_1CA94C438();
  v224 = v145;
  v225 = v144;
  v146 = sub_1CA94C438();
  v223 = v147;
  v231 = &v221;
  MEMORY[0x1EEE9AC00](v146);
  v148 = v243;
  sub_1CA948D98();
  v149 = v239;
  v150 = [v239 bundleURL];
  MEMORY[0x1EEE9AC00](v150);
  v151 = &v221 - v242;
  sub_1CA948B68();

  v152 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v142 + 80) = sub_1CA2F9F14(v225, v224, v146, v223, 0, 0, &v221 - v148, v151);
  v153 = v238;
  v154 = v228;
  *(v142 + 104) = v238;
  *(v142 + 112) = v154;
  *(v142 + 120) = 0xD00000000000001BLL;
  *(v142 + 128) = 0x80000001CA9C4350;
  v155 = v230;
  *(v142 + 144) = MEMORY[0x1E69E6158];
  *(v142 + 152) = v155;
  v230 = sub_1CA94C438();
  v225 = v156;
  v157 = sub_1CA94C438();
  v224 = v158;
  v231 = &v221;
  MEMORY[0x1EEE9AC00](v157);
  sub_1CA948D98();
  v159 = [v149 bundleURL];
  MEMORY[0x1EEE9AC00](v159);
  v160 = &v221 - v242;
  sub_1CA948B68();

  v161 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v162 = sub_1CA2F9F14(v230, v225, v157, v224, 0, 0, &v221 - v148, v160);
  *(v142 + 184) = v153;
  *(v142 + 160) = v162;
  sub_1CA94C1E8();
  v236[6] = sub_1CA2F864C();
  v163 = swift_allocObject();
  *(v163 + 16) = xmmword_1CA981380;
  *(v163 + 32) = v229;
  *(v163 + 40) = 0xD000000000000012;
  *(v163 + 48) = 0x80000001CA99B980;
  v164 = MEMORY[0x1E69E6158];
  *(v163 + 64) = MEMORY[0x1E69E6158];
  *(v163 + 72) = @"DefaultValue";
  v165 = MEMORY[0x1E69E6530];
  *(v163 + 80) = 1;
  *(v163 + 104) = v165;
  *(v163 + 112) = v228;
  *(v163 + 120) = 0xD000000000000014;
  *(v163 + 128) = 0x80000001CA9C43B0;
  *(v163 + 144) = v164;
  *(v163 + 152) = @"StepperDescription";
  v166 = @"DefaultValue";
  v167 = @"StepperDescription";
  v168 = sub_1CA94C438();
  v170 = v169;
  v171 = sub_1CA94C438();
  v173 = v172;
  v234 = &v221;
  MEMORY[0x1EEE9AC00](v171);
  v174 = &v221 - v243;
  sub_1CA948D98();
  v175 = [v239 bundleURL];
  MEMORY[0x1EEE9AC00](v175);
  v176 = &v221 - v242;
  sub_1CA948B68();

  v177 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v163 + 160) = sub_1CA2F9F14(v168, v170, v171, v173, 0, 0, v174, v176);
  *(v163 + 184) = v238;
  *(v163 + 192) = @"StepperNoun";
  v178 = @"StepperNoun";
  v179 = sub_1CA94C438();
  v234 = v179;
  v181 = v180;
  v231 = v180;
  v248 = 0;
  v249 = 0xE000000000000000;
  sub_1CA94D408();

  v248 = v179;
  v249 = v181;
  v246 = 10;
  v247 = 0xE100000000000000;
  v244 = 32;
  v245 = 0xE100000000000000;
  sub_1CA27BAF0();
  v248 = sub_1CA94D1B8();
  v249 = v182;
  v183 = MEMORY[0x1CCAA1300](0xD000000000000010, 0x80000001CA99BA10);
  v230 = &v221;
  v184 = v248;
  *&v229 = v249;
  MEMORY[0x1EEE9AC00](v183);
  v185 = &v221 - v243;
  sub_1CA948D98();
  v186 = v239;
  v187 = [v239 bundleURL];
  v228 = &v221;
  MEMORY[0x1EEE9AC00](v187);
  v188 = v242;
  sub_1CA948B68();

  v189 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v163 + 200) = sub_1CA2F9F14(v184, v229, v234, v231, 0, 0, v185, &v221 - v188);
  v190 = v238;
  *(v163 + 224) = v238;
  *(v163 + 232) = @"StepperPrefix";
  v191 = @"StepperPrefix";
  v192 = sub_1CA94C438();
  v230 = v193;
  v231 = v192;
  v194 = sub_1CA94C438();
  *&v229 = v195;
  v234 = &v221;
  MEMORY[0x1EEE9AC00](v194);
  v196 = v243;
  sub_1CA948D98();
  v197 = [v186 bundleURL];
  MEMORY[0x1EEE9AC00](v197);
  sub_1CA948B68();

  v198 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v199 = sub_1CA2F9F14(v231, v230, v194, v229, 0, 0, &v221 - v196, &v221 - v188);
  *(v163 + 264) = v190;
  *(v163 + 240) = v199;
  sub_1CA94C1E8();
  v200 = sub_1CA2F864C();
  v201 = v236;
  v236[7] = v200;
  v202 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D8, &qword_1CA981398);
  v203 = v237;
  v237[35] = v201;
  v203[38] = v202;
  v203[39] = @"ParameterSummary";
  v204 = @"ParameterSummary";
  v205 = sub_1CA94C438();
  v207 = v206;
  v208 = sub_1CA94C438();
  v210 = v209;
  MEMORY[0x1EEE9AC00](v208);
  v211 = &v221 - v196;
  sub_1CA948D98();
  v212 = [v239 bundleURL];
  MEMORY[0x1EEE9AC00](v212);
  v213 = &v221 - v242;
  sub_1CA948B68();

  v214 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v215 = sub_1CA2F9F14(v205, v207, v208, v210, 0, 0, v211, v213);
  v216 = [objc_allocWithZone(WFActionParameterSummary) initWithString_];

  v217 = sub_1CA25B3D0(0, &unk_1EC441800, off_1E836DD60);
  v218 = v237;
  v237[40] = v216;
  v218[43] = v217;
  v218[44] = @"RequiredResources";
  v218[48] = v226;
  v218[45] = &unk_1F4A01DF0;
  type metadata accessor for Key(0);
  sub_1CA29CF44(&qword_1EDB9FB10, type metadata accessor for Key);
  v219 = @"RequiredResources";
  sub_1CA94C1E8();
  return sub_1CA332510();
}

id sub_1CA4E5D74()
{
  v162 = sub_1CA25B3D0(0, &qword_1EC4419A0, off_1E836DD08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B0, &qword_1CA981320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA981420;
  v1 = MEMORY[0x1E69E6158];
  *(inited + 32) = @"ActionClass";
  *(inited + 40) = 0xD000000000000013;
  *(inited + 48) = 0x80000001CA9C44C0;
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
  v171 = v12;
  v169 = (v12 + 15) & 0xFFFFFFFFFFFFFFF0;
  v13 = &v153 - v169;
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v167 = qword_1EDB9F690;
  v14 = [qword_1EDB9F690 bundleURL];
  v15 = sub_1CA948BA8();
  v170 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v166 = (v16 + 15) & 0xFFFFFFFFFFFFFFF0;
  v17 = &v153 - v166;
  sub_1CA948B68();

  v18 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v19 = sub_1CA2F9F14(v4, v6, v7, v9, 0, 0, v13, v17);
  v20 = sub_1CA25B3D0(0, &qword_1EDB9F6E0, 0x1E696B100);
  v168 = v20;
  *(inited + 80) = v19;
  *(inited + 104) = v20;
  *(inited + 112) = @"Description";
  v164 = sub_1CA25B3D0(0, &unk_1EC441790, off_1E836DD18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D0, &qword_1CA981390);
  v21 = swift_initStackObject();
  *(v21 + 16) = xmmword_1CA981310;
  *(v21 + 32) = @"DescriptionSummary";
  v22 = @"Description";
  v23 = @"DescriptionSummary";
  v24 = sub_1CA94C438();
  v26 = v25;
  v27 = sub_1CA94C438();
  v29 = v28;
  v163 = &v153;
  MEMORY[0x1EEE9AC00](v27);
  v30 = &v153 - v169;
  sub_1CA948D98();
  v31 = [v167 bundleURL];
  v165 = inited;
  v32 = v31;
  MEMORY[0x1EEE9AC00](v31);
  v33 = &v153 - v166;
  sub_1CA948B68();

  v34 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v35 = sub_1CA2F9F14(v24, v26, v27, v29, 0, 0, v30, v33);
  *(v21 + 64) = v168;
  *(v21 + 40) = v35;
  type metadata accessor for DescriptionKey(0);
  sub_1CA29CF44(&qword_1EC441830, type metadata accessor for DescriptionKey);
  sub_1CA94C1E8();
  v36 = v164;
  v37 = sub_1CA6B3784();
  v38 = v165;
  v165[15] = v37;
  v38[18] = v36;
  v38[19] = @"Discontinued";
  v39 = MEMORY[0x1E69E6370];
  *(v38 + 160) = 1;
  v38[23] = v39;
  v38[24] = @"IconName";
  v38[25] = 0x6472616F626E6950;
  v38[26] = 0xE800000000000000;
  v38[28] = MEMORY[0x1E69E6158];
  v38[29] = @"Name";
  v40 = @"Discontinued";
  v41 = @"IconName";
  v42 = @"Name";
  v163 = sub_1CA94C438();
  v161 = v43;
  v44 = sub_1CA94C438();
  v46 = v45;
  v164 = &v153;
  MEMORY[0x1EEE9AC00](v44);
  v47 = v169;
  sub_1CA948D98();
  v48 = v167;
  v49 = [v167 bundleURL];
  MEMORY[0x1EEE9AC00](v49);
  v50 = &v153 - v166;
  sub_1CA948B68();

  v51 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v52 = sub_1CA2F9F14(v163, v161, v44, v46, 0, 0, &v153 - v47, v50);
  v53 = v165;
  v165[30] = v52;
  v54 = v168;
  v53[33] = v168;
  v53[34] = @"Output";
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445FB0, &qword_1CA97EE10);
  v55 = swift_initStackObject();
  *(v55 + 16) = xmmword_1CA9813C0;
  *(v55 + 32) = 0x656C7069746C754DLL;
  *(v55 + 40) = 0xE800000000000000;
  *(v55 + 48) = 1;
  *(v55 + 72) = MEMORY[0x1E69E6370];
  *(v55 + 80) = 0x614E74757074754FLL;
  *(v55 + 88) = 0xEA0000000000656DLL;
  v56 = @"Output";
  v163 = sub_1CA94C438();
  v161 = v57;
  v58 = sub_1CA94C438();
  v160 = v59;
  v164 = &v153;
  MEMORY[0x1EEE9AC00](v58);
  sub_1CA948D98();
  v60 = [v48 bundleURL];
  MEMORY[0x1EEE9AC00](v60);
  v61 = v166;
  sub_1CA948B68();

  v62 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v55 + 96) = sub_1CA2F9F14(v163, v161, v58, v160, 0, 0, &v153 - v47, &v153 - v61);
  *(v55 + 120) = v54;
  *(v55 + 128) = 0x7365707954;
  *(v55 + 136) = 0xE500000000000000;
  v161 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
  *(v55 + 168) = v161;
  *(v55 + 144) = &unk_1F4A01E30;
  v63 = MEMORY[0x1E69E6158];
  v64 = sub_1CA94C1E8();
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC447DE0, &qword_1CA9917E0);
  v66 = v165;
  v165[35] = v64;
  v66[38] = v65;
  v66[39] = @"Parameters";
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443910, &unk_1CA981A00);
  v164 = swift_allocObject();
  *(v164 + 1) = xmmword_1CA981360;
  v163 = sub_1CA25B3D0(0, &qword_1EDB9F710, off_1E836EDC0);
  v158 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443D80, &unk_1CA981BA0);
  v67 = swift_allocObject();
  v157 = xmmword_1CA981380;
  *(v67 + 16) = xmmword_1CA981380;
  *(v67 + 32) = @"AutocapitalizationType";
  *(v67 + 40) = 1701736270;
  *(v67 + 48) = 0xE400000000000000;
  *(v67 + 64) = v63;
  *(v67 + 72) = @"Class";
  *(v67 + 80) = 0xD000000000000014;
  *(v67 + 88) = 0x80000001CA99B500;
  *(v67 + 104) = v63;
  *(v67 + 112) = @"Description";
  v156 = @"Class";
  v68 = @"Parameters";
  v69 = @"AutocapitalizationType";
  v70 = @"Description";
  v159 = sub_1CA94C438();
  v155 = v71;
  v154 = sub_1CA94C438();
  v73 = v72;
  v160 = &v153;
  MEMORY[0x1EEE9AC00](v154);
  v74 = v169;
  sub_1CA948D98();
  v75 = v167;
  v76 = [v167 bundleURL];
  MEMORY[0x1EEE9AC00](v76);
  sub_1CA948B68();

  v77 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v67 + 120) = sub_1CA2F9F14(v159, v155, v154, v73, 0, 0, &v153 - v74, &v153 - v61);
  *(v67 + 144) = v168;
  *(v67 + 152) = @"Key";
  *(v67 + 160) = 0x6761546E69504657;
  *(v67 + 168) = 0xE900000000000073;
  *(v67 + 184) = MEMORY[0x1E69E6158];
  *(v67 + 192) = @"Label";
  v155 = @"Key";
  v78 = @"Label";
  v159 = sub_1CA94C438();
  v154 = v79;
  v153 = sub_1CA94C438();
  v81 = v80;
  v160 = &v153;
  MEMORY[0x1EEE9AC00](v153);
  sub_1CA948D98();
  v82 = [v75 bundleURL];
  MEMORY[0x1EEE9AC00](v82);
  sub_1CA948B68();

  v83 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v67 + 200) = sub_1CA2F9F14(v159, v154, v153, v81, 0, 0, &v153 - v74, &v153 - v61);
  v84 = v168;
  *(v67 + 224) = v168;
  *(v67 + 232) = @"Placeholder";
  v85 = @"Placeholder";
  v159 = sub_1CA94C438();
  v154 = v86;
  v87 = sub_1CA94C438();
  v153 = v88;
  v160 = &v153;
  MEMORY[0x1EEE9AC00](v87);
  v89 = &v153 - v169;
  sub_1CA948D98();
  v90 = [v167 bundleURL];
  MEMORY[0x1EEE9AC00](v90);
  v91 = &v153 - v166;
  sub_1CA948B68();

  v92 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v93 = sub_1CA2F9F14(v159, v154, v87, v153, 0, 0, v89, v91);
  *(v67 + 264) = v84;
  *(v67 + 240) = v93;
  _s3__C3KeyVMa_0(0);
  v160 = v94;
  v159 = sub_1CA29CF44(&qword_1EDB9F780, _s3__C3KeyVMa_0);
  sub_1CA94C1E8();
  v164[4] = sub_1CA2F864C();
  v95 = swift_allocObject();
  *(v95 + 16) = v157;
  *(v95 + 32) = v156;
  *(v95 + 40) = 0xD000000000000012;
  *(v95 + 48) = 0x80000001CA99B980;
  *(v95 + 80) = 5;
  v96 = MEMORY[0x1E69E6530];
  v97 = MEMORY[0x1E69E6158];
  *(v95 + 64) = MEMORY[0x1E69E6158];
  *(v95 + 72) = @"DefaultValue";
  v98 = v155;
  *(v95 + 104) = v96;
  *(v95 + 112) = v98;
  *(v95 + 120) = 0x616D6B6F6F424657;
  *(v95 + 128) = 0xEF746E756F436B72;
  *(v95 + 144) = v97;
  *(v95 + 152) = @"StepperDescription";
  v99 = @"DefaultValue";
  v100 = @"StepperDescription";
  v101 = sub_1CA94C438();
  v103 = v102;
  v104 = sub_1CA94C438();
  v106 = v105;
  v158 = &v153;
  MEMORY[0x1EEE9AC00](v104);
  v107 = &v153 - v169;
  sub_1CA948D98();
  v108 = [v167 bundleURL];
  MEMORY[0x1EEE9AC00](v108);
  v109 = &v153 - v166;
  sub_1CA948B68();

  v110 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v95 + 160) = sub_1CA2F9F14(v101, v103, v104, v106, 0, 0, v107, v109);
  *(v95 + 184) = v168;
  *(v95 + 192) = @"StepperNoun";
  v111 = @"StepperNoun";
  v112 = sub_1CA94C438();
  v158 = v112;
  v114 = v113;
  *&v157 = v113;
  v176 = 0;
  v177 = 0xE000000000000000;
  sub_1CA94D408();

  v176 = v112;
  v177 = v114;
  v174 = 10;
  v175 = 0xE100000000000000;
  v172 = 32;
  v173 = 0xE100000000000000;
  sub_1CA27BAF0();
  v176 = sub_1CA94D1B8();
  v177 = v115;
  v116 = MEMORY[0x1CCAA1300](0xD000000000000010, 0x80000001CA99BA10);
  v156 = &v153;
  v117 = v176;
  v155 = v177;
  MEMORY[0x1EEE9AC00](v116);
  v118 = v169;
  sub_1CA948D98();
  v119 = v167;
  v120 = [v167 bundleURL];
  MEMORY[0x1EEE9AC00](v120);
  v121 = v166;
  sub_1CA948B68();

  v122 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v95 + 200) = sub_1CA2F9F14(v117, v155, v158, v157, 0, 0, &v153 - v118, &v153 - v121);
  *(v95 + 224) = v168;
  *(v95 + 232) = @"StepperPrefix";
  v123 = @"StepperPrefix";
  v124 = sub_1CA94C438();
  v156 = v125;
  *&v157 = v124;
  v126 = sub_1CA94C438();
  v128 = v127;
  v158 = &v153;
  MEMORY[0x1EEE9AC00](v126);
  sub_1CA948D98();
  v129 = [v119 bundleURL];
  MEMORY[0x1EEE9AC00](v129);
  sub_1CA948B68();

  v130 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v131 = sub_1CA2F9F14(v157, v156, v126, v128, 0, 0, &v153 - v118, &v153 - v121);
  *(v95 + 264) = v168;
  *(v95 + 240) = v131;
  sub_1CA94C1E8();
  v132 = sub_1CA2F864C();
  v133 = v164;
  v164[5] = v132;
  v134 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D8, &qword_1CA981398);
  v135 = v165;
  v165[40] = v133;
  v135[43] = v134;
  v135[44] = @"ParameterSummary";
  v136 = @"ParameterSummary";
  v137 = sub_1CA94C438();
  v139 = v138;
  v140 = sub_1CA94C438();
  v142 = v141;
  MEMORY[0x1EEE9AC00](v140);
  v143 = &v153 - v169;
  sub_1CA948D98();
  v144 = [v167 bundleURL];
  MEMORY[0x1EEE9AC00](v144);
  v145 = &v153 - v166;
  sub_1CA948B68();

  v146 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v147 = sub_1CA2F9F14(v137, v139, v140, v142, 0, 0, v143, v145);
  v148 = [objc_allocWithZone(WFActionParameterSummary) initWithString_];

  v149 = sub_1CA25B3D0(0, &unk_1EC441800, off_1E836DD60);
  v150 = v165;
  v165[45] = v148;
  v150[48] = v149;
  v150[49] = @"RequiredResources";
  v150[53] = v161;
  v150[50] = &unk_1F4A01E60;
  type metadata accessor for Key(0);
  sub_1CA29CF44(&qword_1EDB9FB10, type metadata accessor for Key);
  v151 = @"RequiredResources";
  sub_1CA94C1E8();
  return sub_1CA332510();
}

uint64_t sub_1CA4E7108(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = sub_1CA949328();
  v2[4] = v3;
  OUTLINED_FUNCTION_12(v3);
  v2[5] = v4;
  v6 = *(v5 + 64) + 15;
  v2[6] = swift_task_alloc();
  v7 = sub_1CA94ADC8();
  v2[7] = v7;
  OUTLINED_FUNCTION_12(v7);
  v2[8] = v8;
  v10 = *(v9 + 64) + 15;
  v2[9] = swift_task_alloc();
  v11 = sub_1CA94AD48();
  v2[10] = v11;
  OUTLINED_FUNCTION_12(v11);
  v2[11] = v12;
  v14 = *(v13 + 64) + 15;
  v2[12] = swift_task_alloc();
  v2[13] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1CA4E7274, 0, 0);
}

uint64_t sub_1CA4E7274()
{
  v2 = v0[8];
  v1 = v0[9];
  v3 = v0[7];
  v4 = v0[2];
  v5 = v0[3];
  v6 = swift_allocObject();
  *(v6 + 16) = sub_1CA94A9C8();
  *(v6 + 24) = v7;
  *v1 = v6;
  (*(v2 + 104))(v1, *MEMORY[0x1E69DB0A8], v3);
  v8 = (v5 + *(type metadata accessor for TypedValueConversionContext(0) + 20));
  v9 = v8[3];
  v10 = v8[4];
  __swift_project_boxed_opaque_existential_1(v8, v9);
  v11 = *(v10 + 8);
  v18 = (v11 + *v11);
  v12 = v11[1];
  v13 = swift_task_alloc();
  v0[14] = v13;
  *v13 = v0;
  v13[1] = sub_1CA4E7418;
  v14 = v0[13];
  v15 = v0[9];
  v16 = v0[3];

  return v18(v14, v15, v16, v9, v10);
}

uint64_t sub_1CA4E7418()
{
  v2 = *v1;
  OUTLINED_FUNCTION_1();
  *v4 = v3;
  v6 = *(v5 + 112);
  v7 = *v1;
  OUTLINED_FUNCTION_1();
  *v8 = v7;
  *(v9 + 120) = v0;

  if (v0)
  {
    v10 = sub_1CA4E77E4;
  }

  else
  {
    v10 = sub_1CA4E7524;
  }

  return MEMORY[0x1EEE6DFA0](v10, 0, 0);
}

uint64_t sub_1CA4E7524()
{
  v35 = v0;
  v1 = v0[12];
  v2 = v0[13];
  v3 = v0[10];
  v4 = v0[11];
  (*(v0[8] + 8))(v0[9], v0[7]);
  (*(v4 + 16))(v1, v2, v3);
  LODWORD(v2) = (*(v4 + 88))(v1, v3);
  v5 = *MEMORY[0x1E69DAFA0];
  v6 = *(v4 + 8);
  v6(v1, v3);
  if (v2 == v5)
  {
    v8 = v0[5];
    v7 = v0[6];
    v9 = v0[4];
    v10 = v0[2];
    v11 = sub_1CA949338();
    sub_1CA94A9C8();
    sub_1CA949318();
    v12 = sub_1CA3118B4(v7, v11);

    (*(v8 + 8))(v7, v9);
    if (v12)
    {
      objc_opt_self();
      v13 = swift_dynamicCastObjCClass();
      if (v13)
      {
        v14 = v13;
        v16 = v0[12];
        v15 = v0[13];
        v18 = v0[9];
        v17 = v0[10];
        v33 = v0[6];
        v19 = v0[2];
        v20 = sub_1CA94CC88();
        sub_1CA94A9D8();
        v34[3] = v20;
        v34[0] = sub_1CA46E0C8();
        v21 = objc_allocWithZone(MEMORY[0x1E69ACA90]);
        v22 = sub_1CA320AB4(v34, v14);
        v6(v15, v17);

        v23 = v0[1];

        return v23(v22);
      }
    }
  }

  v25 = v0[13];
  v26 = v0[10];
  sub_1CA2FFC58();
  swift_allocError();
  *v27 = 1;
  swift_willThrow();
  v6(v25, v26);
  v29 = v0[12];
  v28 = v0[13];
  v30 = v0[9];
  v31 = v0[6];

  v32 = v0[1];

  return v32();
}

uint64_t sub_1CA4E77E4()
{
  (*(v0[8] + 8))(v0[9], v0[7]);
  v1 = v0[15];
  v3 = v0[12];
  v2 = v0[13];
  v4 = v0[9];
  v5 = v0[6];

  v6 = v0[1];

  return v6();
}

uint64_t sub_1CA4E7888(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a1;
  v6 = swift_task_alloc();
  *(v3 + 24) = v6;
  *v6 = v3;
  v6[1] = sub_1CA3DBB6C;

  return sub_1CA4E7108(a2, a3);
}

id sub_1CA4E795C()
{
  v69 = sub_1CA25B3D0(0, &qword_1EC4419A0, off_1E836DD08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B0, &qword_1CA981320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA981300;
  *(inited + 32) = @"ActionClass";
  *(inited + 40) = 0xD000000000000013;
  v1 = MEMORY[0x1E69E6158];
  *(inited + 48) = 0x80000001CA9C4770;
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
  v74 = (v12 + 15) & 0xFFFFFFFFFFFFFFF0;
  v75 = v12;
  v13 = &v66 - v74;
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v71 = qword_1EDB9F690;
  v14 = [qword_1EDB9F690 bundleURL];
  v15 = sub_1CA948BA8();
  v72 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v73 = (v16 + 15) & 0xFFFFFFFFFFFFFFF0;
  v17 = &v66 - v73;
  sub_1CA948B68();

  v18 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v19 = sub_1CA2F9F14(v4, v6, v7, v9, 0, 0, v13, v17);
  v20 = sub_1CA25B3D0(0, &qword_1EDB9F6E0, 0x1E696B100);
  v70 = v20;
  *(inited + 80) = v19;
  *(inited + 104) = v20;
  *(inited + 112) = @"AppDefinition";
  v21 = @"AppDefinition";
  v22 = sub_1CA94C1E8();
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B8, &unk_1CA985870);
  *(inited + 120) = v22;
  *(inited + 144) = v23;
  *(inited + 152) = @"Description";
  v68 = sub_1CA25B3D0(0, &unk_1EC441790, off_1E836DD18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D0, &qword_1CA981390);
  v24 = swift_initStackObject();
  *(v24 + 16) = xmmword_1CA981310;
  *(v24 + 32) = @"DescriptionSummary";
  v25 = @"Description";
  v26 = @"DescriptionSummary";
  v27 = sub_1CA94C438();
  v66 = v28;
  v29 = sub_1CA94C438();
  v31 = v30;
  v67 = &v66;
  MEMORY[0x1EEE9AC00](v29);
  v32 = &v66 - v74;
  sub_1CA948D98();
  v33 = [v71 bundleURL];
  MEMORY[0x1EEE9AC00](v33);
  v34 = &v66 - v73;
  sub_1CA948B68();

  v35 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v36 = sub_1CA2F9F14(v27, v66, v29, v31, 0, 0, v32, v34);
  *(v24 + 64) = v70;
  *(v24 + 40) = v36;
  type metadata accessor for DescriptionKey(0);
  sub_1CA29EBDC(&qword_1EC441830, type metadata accessor for DescriptionKey);
  sub_1CA94C1E8();
  v37 = v68;
  *(inited + 160) = sub_1CA6B3784();
  *(inited + 184) = v37;
  *(inited + 192) = @"InputPassthrough";
  v38 = MEMORY[0x1E69E6370];
  *(inited + 200) = 1;
  *(inited + 224) = v38;
  *(inited + 232) = @"Name";
  v39 = @"InputPassthrough";
  v40 = @"Name";
  v41 = sub_1CA94C438();
  v67 = v42;
  v43 = sub_1CA94C438();
  v45 = v44;
  v68 = &v66;
  MEMORY[0x1EEE9AC00](v43);
  v46 = &v66 - v74;
  sub_1CA948D98();
  v47 = v71;
  v48 = [v71 bundleURL];
  MEMORY[0x1EEE9AC00](v48);
  v49 = &v66 - v73;
  sub_1CA948B68();

  v50 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(inited + 240) = sub_1CA2F9F14(v41, v67, v43, v45, 0, 0, v46, v49);
  *(inited + 264) = v70;
  *(inited + 272) = @"ParameterSummary";
  v51 = @"ParameterSummary";
  v52 = sub_1CA94C438();
  v68 = v53;
  v54 = sub_1CA94C438();
  v56 = v55;
  v70 = &v66;
  MEMORY[0x1EEE9AC00](v54);
  v57 = &v66 - v74;
  sub_1CA948D98();
  v58 = [v47 bundleURL];
  MEMORY[0x1EEE9AC00](v58);
  v59 = &v66 - v73;
  sub_1CA948B68();

  v60 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v61 = sub_1CA2F9F14(v52, v68, v54, v56, 0, 0, v57, v59);
  v62 = [objc_allocWithZone(WFActionParameterSummary) initWithString_];

  v63 = sub_1CA25B3D0(0, &unk_1EC441800, off_1E836DD60);
  *(inited + 280) = v62;
  *(inited + 304) = v63;
  *(inited + 312) = @"RequiredResources";
  *(inited + 344) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
  *(inited + 320) = &unk_1F4A01EE0;
  type metadata accessor for Key(0);
  sub_1CA29EBDC(&qword_1EDB9FB10, type metadata accessor for Key);
  v64 = @"RequiredResources";
  sub_1CA94C1E8();
  return sub_1CA332510();
}

id sub_1CA4E818C()
{
  v33 = sub_1CA25B3D0(0, &qword_1EC4419A0, off_1E836DD08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B0, &qword_1CA981320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA981400;
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
  v32 = v5;
  *(inited + 104) = v5;
  *(inited + 112) = @"IconColor";
  *(inited + 120) = 0x65676E61724FLL;
  *(inited + 128) = 0xE600000000000000;
  *(inited + 144) = v1;
  *(inited + 152) = @"IconSymbol";
  *(inited + 160) = 0xD000000000000011;
  *(inited + 168) = 0x80000001CA9A3B70;
  *(inited + 184) = v1;
  *(inited + 192) = @"Name";
  v6 = @"IconColor";
  v7 = @"IconSymbol";
  v8 = @"Name";
  v9 = sub_1CA94C438();
  v31 = v10;
  v11 = sub_1CA94C438();
  v13 = v12;
  v14 = sub_1CA948E58();
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v17 = &v30 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v18 = [qword_1EDB9F690 bundleURL];
  v19 = sub_1CA948BA8();
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v22 = &v30 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CA948B68();

  v23 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v24 = sub_1CA2F9F14(v9, v31, v11, v13, 0, 0, v17, v22);
  v25 = sub_1CA25B3D0(0, &qword_1EDB9F6E0, 0x1E696B100);
  *(inited + 200) = v24;
  *(inited + 224) = v25;
  *(inited + 232) = @"Output";
  v26 = @"Output";
  v27 = sub_1CA94C1E8();
  *(inited + 264) = v32;
  *(inited + 240) = v27;
  v28 = sub_1CA94C368();
  *(inited + 304) = v1;
  *(inited + 272) = v28;
  *(inited + 280) = 0xD000000000000014;
  *(inited + 288) = 0x80000001CA993510;
  type metadata accessor for Key(0);
  sub_1CA2ECC50();
  sub_1CA94C1E8();
  return sub_1CA332510();
}

id sub_1CA4E8598()
{
  v162 = sub_1CA25B3D0(0, &qword_1EC4419A0, off_1E836DD08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B0, &qword_1CA981320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA981450;
  v1 = MEMORY[0x1E69E6158];
  *(inited + 32) = @"ActionClass";
  *(inited + 40) = 0x6565465353524657;
  *(inited + 48) = 0xEF6E6F6974634164;
  *(inited + 64) = v1;
  *(inited + 72) = @"ActionKeywords";
  v2 = inited;
  v3 = @"ActionClass";
  v4 = @"ActionKeywords";
  v5 = sub_1CA94C438();
  v7 = v6;
  v8 = sub_1CA94C438();
  v10 = v9;
  v11 = sub_1CA948E58();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v169 = v13;
  v172 = (v13 + 15) & 0xFFFFFFFFFFFFFFF0;
  v14 = &v153 - v172;
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v167 = qword_1EDB9F690;
  v15 = [qword_1EDB9F690 bundleURL];
  v16 = sub_1CA948BA8();
  v171 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v170 = (v17 + 15) & 0xFFFFFFFFFFFFFFF0;
  v18 = &v153 - v170;
  sub_1CA948B68();

  v19 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v20 = sub_1CA2F9F14(v5, v7, v8, v10, 0, 0, v14, v18);
  v21 = sub_1CA25B3D0(0, &qword_1EDB9F6E0, 0x1E696B100);
  v168 = v21;
  v2[10] = v20;
  v2[13] = v21;
  v2[14] = @"Description";
  v165 = sub_1CA25B3D0(0, &unk_1EC441790, off_1E836DD18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D0, &qword_1CA981390);
  v22 = swift_initStackObject();
  *(v22 + 16) = xmmword_1CA981310;
  *(v22 + 32) = @"DescriptionSummary";
  v23 = @"Description";
  v24 = @"DescriptionSummary";
  v25 = sub_1CA94C438();
  v163 = v26;
  v27 = sub_1CA94C438();
  v29 = v28;
  v164 = &v153;
  MEMORY[0x1EEE9AC00](v27);
  v30 = &v153 - v172;
  sub_1CA948D98();
  v31 = [v167 bundleURL];
  MEMORY[0x1EEE9AC00](v31);
  v32 = &v153 - v170;
  sub_1CA948B68();

  v33 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v34 = sub_1CA2F9F14(v25, v163, v27, v29, 0, 0, v30, v32);
  *(v22 + 64) = v168;
  *(v22 + 40) = v34;
  type metadata accessor for DescriptionKey(0);
  sub_1CA29CF44(&qword_1EC441830, type metadata accessor for DescriptionKey);
  sub_1CA94C1E8();
  v35 = v165;
  v2[15] = sub_1CA6B3784();
  v2[18] = v35;
  v2[19] = @"IconColor";
  v2[20] = 0x65676E61724FLL;
  v2[21] = 0xE600000000000000;
  v36 = MEMORY[0x1E69E6158];
  v2[23] = MEMORY[0x1E69E6158];
  v2[24] = @"IconSymbol";
  v2[25] = 0xD000000000000019;
  v2[26] = 0x80000001CA9A5E00;
  v2[28] = v36;
  v2[29] = @"Input";
  v37 = v36;
  v163 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445FB0, &qword_1CA97EE10);
  v38 = swift_initStackObject();
  v161 = xmmword_1CA981350;
  *(v38 + 16) = xmmword_1CA981350;
  *(v38 + 32) = 0x656C7069746C754DLL;
  *(v38 + 40) = 0xE800000000000000;
  v39 = MEMORY[0x1E69E6370];
  *(v38 + 48) = 1;
  *(v38 + 72) = v39;
  strcpy((v38 + 80), "ParameterKey");
  *(v38 + 93) = 0;
  *(v38 + 94) = -5120;
  strcpy((v38 + 96), "WFRSSFeedURL");
  *(v38 + 109) = 0;
  *(v38 + 110) = -5120;
  *(v38 + 120) = v37;
  *(v38 + 128) = 0x6465726975716552;
  *(v38 + 136) = 0xE800000000000000;
  *(v38 + 144) = 1;
  *(v38 + 168) = v39;
  *(v38 + 176) = 0x7365707954;
  *(v38 + 184) = 0xE500000000000000;
  v165 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
  *(v38 + 216) = v165;
  *(v38 + 192) = &unk_1F4A01F90;
  v40 = @"IconColor";
  v41 = @"IconSymbol";
  v42 = @"Input";
  v43 = sub_1CA94C1E8();
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC447DE0, &qword_1CA9917E0);
  v164 = v44;
  v166 = v2;
  v2[30] = v43;
  v2[33] = v44;
  v2[34] = @"Name";
  v45 = @"Name";
  v46 = sub_1CA94C438();
  v158 = v47;
  v159 = v46;
  v48 = sub_1CA94C438();
  v157 = v49;
  v160 = &v153;
  MEMORY[0x1EEE9AC00](v48);
  v50 = &v153 - v172;
  sub_1CA948D98();
  v51 = v167;
  v52 = [v167 bundleURL];
  MEMORY[0x1EEE9AC00](v52);
  v53 = v170;
  sub_1CA948B68();

  v54 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v55 = sub_1CA2F9F14(v159, v158, v48, v157, 0, 0, v50, &v153 - v53);
  v56 = v166;
  v166[35] = v55;
  v56[38] = v168;
  v56[39] = @"Output";
  v57 = swift_allocObject();
  *(v57 + 16) = v161;
  *(v57 + 32) = 0x75736F6C63736944;
  *(v57 + 40) = 0xEF6C6576654C6572;
  *(v57 + 48) = 0x63696C627550;
  *(v57 + 56) = 0xE600000000000000;
  *(v57 + 72) = MEMORY[0x1E69E6158];
  *(v57 + 80) = 0x656C7069746C754DLL;
  *(v57 + 88) = 0xE800000000000000;
  *(v57 + 96) = 1;
  *(v57 + 120) = MEMORY[0x1E69E6370];
  *(v57 + 128) = 0x614E74757074754FLL;
  *(v57 + 136) = 0xEA0000000000656DLL;
  v58 = @"Output";
  v59 = sub_1CA94C438();
  v160 = v60;
  *&v161 = v59;
  v61 = sub_1CA94C438();
  v159 = v62;
  v163 = &v153;
  MEMORY[0x1EEE9AC00](v61);
  v63 = v172;
  sub_1CA948D98();
  v64 = [v51 bundleURL];
  MEMORY[0x1EEE9AC00](v64);
  sub_1CA948B68();

  v65 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v57 + 144) = sub_1CA2F9F14(v161, v160, v61, v159, 0, 0, &v153 - v63, &v153 - v53);
  *(v57 + 168) = v168;
  *(v57 + 176) = 0x7365707954;
  *(v57 + 216) = v165;
  *(v57 + 184) = 0xE500000000000000;
  *(v57 + 192) = &unk_1F4A01FD0;
  v66 = MEMORY[0x1E69E6158];
  v67 = sub_1CA94C1E8();
  v68 = v166;
  v166[40] = v67;
  *&v161 = @"Parameters";
  v68[43] = v164;
  v68[44] = @"Parameters";
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443910, &unk_1CA981A00);
  v164 = swift_allocObject();
  *(v164 + 1) = xmmword_1CA981360;
  v163 = sub_1CA25B3D0(0, &qword_1EDB9F710, off_1E836EDC0);
  v159 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443D80, &unk_1CA981BA0);
  v69 = swift_allocObject();
  *(v69 + 16) = xmmword_1CA9813E0;
  *(v69 + 32) = @"AutocapitalizationType";
  *(v69 + 40) = 1701736270;
  *(v69 + 48) = 0xE400000000000000;
  *(v69 + 64) = v66;
  *(v69 + 72) = @"Class";
  *(v69 + 80) = 0xD000000000000014;
  *(v69 + 88) = 0x80000001CA99B500;
  *(v69 + 104) = v66;
  *(v69 + 112) = @"DefaultValue";
  *(v69 + 120) = 0xD00000000000002BLL;
  *(v69 + 128) = 0x80000001CA9C49E0;
  *(v69 + 144) = v66;
  *(v69 + 152) = @"DisableAutocorrection";
  *(v69 + 160) = 1;
  *(v69 + 184) = MEMORY[0x1E69E6370];
  *(v69 + 192) = @"Key";
  strcpy((v69 + 200), "WFRSSFeedURL");
  *(v69 + 213) = 0;
  *(v69 + 214) = -5120;
  *(v69 + 224) = v66;
  *(v69 + 232) = @"KeyboardType";
  *(v69 + 240) = 5001813;
  *(v69 + 248) = 0xE300000000000000;
  *(v69 + 264) = v66;
  *(v69 + 272) = @"Label";
  v70 = @"Class";
  v71 = @"DefaultValue";
  v72 = @"Key";
  v157 = v70;
  v156 = v71;
  v158 = v72;
  v73 = v161;
  v74 = @"AutocapitalizationType";
  v75 = @"DisableAutocorrection";
  v76 = @"KeyboardType";
  v77 = @"Label";
  v160 = sub_1CA94C438();
  v155 = v78;
  v79 = sub_1CA94C438();
  v154 = v80;
  *&v161 = &v153;
  MEMORY[0x1EEE9AC00](v79);
  sub_1CA948D98();
  v81 = v167;
  v82 = [v167 bundleURL];
  MEMORY[0x1EEE9AC00](v82);
  v83 = &v153 - v170;
  sub_1CA948B68();

  v84 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v69 + 280) = sub_1CA2F9F14(v160, v155, v79, v154, 0, 0, &v153 - v63, v83);
  v85 = v168;
  *(v69 + 304) = v168;
  *(v69 + 312) = @"Placeholder";
  v86 = @"Placeholder";
  v160 = sub_1CA94C438();
  v155 = v87;
  v88 = sub_1CA94C438();
  v154 = v89;
  *&v161 = &v153;
  MEMORY[0x1EEE9AC00](v88);
  v90 = &v153 - v172;
  sub_1CA948D98();
  v91 = [v81 bundleURL];
  MEMORY[0x1EEE9AC00](v91);
  v92 = &v153 - v170;
  sub_1CA948B68();

  v93 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v69 + 320) = sub_1CA2F9F14(v160, v155, v88, v154, 0, 0, v90, v92);
  *(v69 + 344) = v85;
  *(v69 + 352) = @"TextContentType";
  v94 = MEMORY[0x1E69E6158];
  *(v69 + 384) = MEMORY[0x1E69E6158];
  *(v69 + 360) = 5001813;
  *(v69 + 368) = 0xE300000000000000;
  _s3__C3KeyVMa_0(0);
  *&v161 = v95;
  v160 = sub_1CA29CF44(&qword_1EDB9F780, _s3__C3KeyVMa_0);
  v96 = @"TextContentType";
  sub_1CA94C1E8();
  v164[4] = sub_1CA2F864C();
  v97 = swift_allocObject();
  *(v97 + 16) = xmmword_1CA981380;
  *(v97 + 32) = v157;
  *(v97 + 40) = 0xD000000000000012;
  *(v97 + 48) = 0x80000001CA99B980;
  v98 = v156;
  *(v97 + 64) = v94;
  *(v97 + 72) = v98;
  v99 = MEMORY[0x1E69E6530];
  *(v97 + 80) = 10;
  v100 = v158;
  *(v97 + 104) = v99;
  *(v97 + 112) = v100;
  *(v97 + 120) = 0xD000000000000011;
  *(v97 + 128) = 0x80000001CA9C4A60;
  *(v97 + 144) = v94;
  *(v97 + 152) = @"StepperDescription";
  v101 = @"StepperDescription";
  v102 = sub_1CA94C438();
  v158 = v103;
  v104 = sub_1CA94C438();
  v106 = v105;
  v159 = &v153;
  MEMORY[0x1EEE9AC00](v104);
  v107 = &v153 - v172;
  sub_1CA948D98();
  v108 = [v167 bundleURL];
  MEMORY[0x1EEE9AC00](v108);
  v109 = &v153 - v170;
  sub_1CA948B68();

  v110 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v97 + 160) = sub_1CA2F9F14(v102, v158, v104, v106, 0, 0, v107, v109);
  *(v97 + 184) = v168;
  *(v97 + 192) = @"StepperNoun";
  v111 = @"StepperNoun";
  v112 = sub_1CA94C438();
  v158 = v113;
  v159 = v112;
  v114 = v113;
  v177 = 0;
  v178 = 0xE000000000000000;
  sub_1CA94D408();

  v177 = v112;
  v178 = v114;
  v175 = 10;
  v176 = 0xE100000000000000;
  v173 = 32;
  v174 = 0xE100000000000000;
  sub_1CA27BAF0();
  v177 = sub_1CA94D1B8();
  v178 = v115;
  v116 = MEMORY[0x1CCAA1300](0xD000000000000010, 0x80000001CA99BA10);
  v157 = &v153;
  v117 = v177;
  v156 = v178;
  MEMORY[0x1EEE9AC00](v116);
  v118 = v172;
  sub_1CA948D98();
  v119 = v167;
  v120 = [v167 bundleURL];
  v155 = &v153;
  MEMORY[0x1EEE9AC00](v120);
  v121 = v166;
  v122 = v170;
  sub_1CA948B68();

  v123 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v97 + 200) = sub_1CA2F9F14(v117, v156, v159, v158, 0, 0, &v153 - v118, &v153 - v122);
  v124 = v168;
  *(v97 + 224) = v168;
  *(v97 + 232) = @"StepperPrefix";
  v125 = @"StepperPrefix";
  v126 = sub_1CA94C438();
  v157 = v127;
  v158 = v126;
  v128 = sub_1CA94C438();
  v156 = v129;
  v159 = &v153;
  MEMORY[0x1EEE9AC00](v128);
  sub_1CA948D98();
  v130 = [v119 bundleURL];
  MEMORY[0x1EEE9AC00](v130);
  sub_1CA948B68();

  v131 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v132 = sub_1CA2F9F14(v158, v157, v128, v156, 0, 0, &v153 - v118, &v153 - v122);
  *(v97 + 264) = v124;
  *(v97 + 240) = v132;
  sub_1CA94C1E8();
  v133 = sub_1CA2F864C();
  v134 = v164;
  v164[5] = v133;
  v135 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D8, &qword_1CA981398);
  v121[45] = v134;
  v121[48] = v135;
  v121[49] = @"ParameterSummary";
  v136 = @"ParameterSummary";
  v137 = sub_1CA94C438();
  v139 = v138;
  v140 = sub_1CA94C438();
  v142 = v141;
  v168 = &v153;
  MEMORY[0x1EEE9AC00](v140);
  v143 = &v153 - v172;
  sub_1CA948D98();
  v144 = [v167 bundleURL];
  MEMORY[0x1EEE9AC00](v144);
  v145 = &v153 - v170;
  sub_1CA948B68();

  v146 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v147 = sub_1CA2F9F14(v137, v139, v140, v142, 0, 0, v143, v145);
  v148 = [objc_allocWithZone(WFActionParameterSummary) initWithString_];

  v149 = sub_1CA25B3D0(0, &unk_1EC441800, off_1E836DD60);
  v121[50] = v148;
  v121[53] = v149;
  v121[54] = @"RequiredResources";
  v121[55] = &unk_1F4A02010;
  v121[58] = v165;
  v121[59] = @"ResidentCompatible";
  v121[63] = MEMORY[0x1E69E6370];
  *(v121 + 480) = 1;
  type metadata accessor for Key(0);
  sub_1CA29CF44(&qword_1EDB9FB10, type metadata accessor for Key);
  v150 = @"RequiredResources";
  v151 = @"ResidentCompatible";
  sub_1CA94C1E8();
  return sub_1CA332510();
}

id sub_1CA4E9A90()
{
  v209 = sub_1CA94B4D8();
  v207 = *(v209 - 8);
  v0 = *(v207 + 64);
  MEMORY[0x1EEE9AC00](v209);
  v208 = &v197 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v210 = sub_1CA25B3D0(0, &qword_1EC4419A0, off_1E836DD08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B0, &qword_1CA981320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA9813F0;
  v3 = MEMORY[0x1E69E6158];
  *(inited + 32) = @"ActionClass";
  *(inited + 40) = 0x7461726269564657;
  *(inited + 48) = 0xEF6E6F6974634165;
  *(inited + 64) = v3;
  *(inited + 72) = @"ActionKeywords";
  v4 = @"ActionClass";
  v5 = @"ActionKeywords";
  v214 = sub_1CA94C438();
  v7 = v6;
  v8 = sub_1CA94C438();
  v10 = v9;
  v11 = sub_1CA948E58();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v218 = (v13 + 15) & 0xFFFFFFFFFFFFFFF0;
  v219 = v13;
  v14 = &v197 - v218;
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v217 = qword_1EDB9F690;
  v15 = [qword_1EDB9F690 bundleURL];
  v16 = sub_1CA948BA8();
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v215 = v17;
  v216 = (v17 + 15) & 0xFFFFFFFFFFFFFFF0;
  v18 = &v197 - v216;
  sub_1CA948B68();

  v19 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v20 = sub_1CA2F9F14(v214, v7, v8, v10, 0, 0, v14, v18);
  v21 = sub_1CA25B3D0(0, &qword_1EDB9F6E0, 0x1E696B100);
  v213 = v21;
  *(inited + 80) = v20;
  *(inited + 104) = v21;
  *(inited + 112) = @"Description";
  v214 = sub_1CA25B3D0(0, &unk_1EC441790, off_1E836DD18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D0, &qword_1CA981390);
  v22 = swift_initStackObject();
  v206 = xmmword_1CA981310;
  *(v22 + 16) = xmmword_1CA981310;
  *(v22 + 32) = @"DescriptionSummary";
  v23 = @"Description";
  v24 = @"DescriptionSummary";
  v25 = sub_1CA94C438();
  *&v205 = v26;
  v27 = sub_1CA94C438();
  v29 = v28;
  v211 = &v197;
  MEMORY[0x1EEE9AC00](v27);
  v30 = &v197 - v218;
  sub_1CA948D98();
  v31 = inited;
  v32 = [v217 bundleURL];
  MEMORY[0x1EEE9AC00](v32);
  v33 = &v197 - v216;
  sub_1CA948B68();

  v34 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v35 = sub_1CA2F9F14(v25, v205, v27, v29, 0, 0, v30, v33);
  *(v22 + 64) = v213;
  *(v22 + 40) = v35;
  type metadata accessor for DescriptionKey(0);
  sub_1CA29CF44(&qword_1EC441830, type metadata accessor for DescriptionKey);
  sub_1CA94C1E8();
  v36 = v214;
  *(v31 + 120) = sub_1CA6B3784();
  *(v31 + 144) = v36;
  *(v31 + 152) = @"DisabledOnPlatforms";
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
  v212 = v31;
  *(v31 + 160) = &unk_1F4A02040;
  *(v31 + 184) = v37;
  *(v31 + 192) = @"IconColor";
  *(v31 + 200) = 6579538;
  *(v31 + 208) = 0xE300000000000000;
  v38 = MEMORY[0x1E69E6158];
  *(v31 + 224) = MEMORY[0x1E69E6158];
  *(v31 + 232) = @"IconSymbol";
  *(v31 + 240) = 0xD000000000000020;
  *(v31 + 248) = 0x80000001CA9C4BD0;
  *(v31 + 264) = v38;
  *(v31 + 272) = @"InputPassthrough";
  v39 = MEMORY[0x1E69E6370];
  *(v31 + 280) = 1;
  *(v31 + 304) = v39;
  *(v31 + 312) = @"Name";
  v40 = @"DisabledOnPlatforms";
  v41 = @"IconColor";
  v42 = @"IconSymbol";
  v43 = @"InputPassthrough";
  v44 = @"Name";
  v45 = sub_1CA94C438();
  v47 = v46;
  v48 = sub_1CA94C438();
  v50 = v49;
  MEMORY[0x1EEE9AC00](v48);
  v51 = &v197 - v218;
  sub_1CA948D98();
  v52 = [v217 bundleURL];
  MEMORY[0x1EEE9AC00](v52);
  v53 = &v197 - v216;
  sub_1CA948B68();

  v54 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v55 = sub_1CA2F9F14(v45, v47, v48, v50, 0, 0, v51, v53);
  v56 = v212;
  v212[40] = v55;
  v56[43] = v213;
  v56[44] = @"Parameters";
  v211 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443910, &unk_1CA981A00);
  v204 = swift_allocObject();
  v205 = xmmword_1CA9813B0;
  *(v204 + 16) = xmmword_1CA9813B0;
  v203 = sub_1CA25B3D0(0, &qword_1EDB9F710, off_1E836EDC0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443D80, &unk_1CA981BA0);
  v57 = swift_initStackObject();
  *(v57 + 16) = xmmword_1CA981300;
  *(v57 + 32) = @"Class";
  *(v57 + 40) = 0xD000000000000016;
  *(v57 + 48) = 0x80000001CA99C4A0;
  v58 = MEMORY[0x1E69E6158];
  *(v57 + 64) = MEMORY[0x1E69E6158];
  *(v57 + 72) = @"DefaultValue";
  *(v57 + 80) = 0x746C7561666544;
  *(v57 + 88) = 0xE700000000000000;
  *(v57 + 104) = v58;
  *(v57 + 112) = @"Description";
  v59 = @"Parameters";
  v60 = @"Class";
  v61 = @"DefaultValue";
  v62 = @"Description";
  v201 = sub_1CA94C438();
  v64 = v63;
  v65 = sub_1CA94C438();
  v67 = v66;
  v214 = &v197;
  MEMORY[0x1EEE9AC00](v65);
  v68 = &v197 - v218;
  sub_1CA948D98();
  v69 = [v217 bundleURL];
  MEMORY[0x1EEE9AC00](v69);
  v70 = v216;
  sub_1CA948B68();

  v71 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v72 = sub_1CA2F9F14(v201, v64, v65, v67, 0, 0, v68, &v197 - v70);
  v202 = v57;
  *(v57 + 120) = v72;
  *(v57 + 144) = v213;
  *(v57 + 152) = @"Hidden";
  *(v57 + 160) = 1;
  *(v57 + 184) = MEMORY[0x1E69E6370];
  *(v57 + 192) = @"Items";
  v214 = swift_allocObject();
  *(v214 + 1) = xmmword_1CA981720;
  v73 = @"Hidden";
  v74 = @"Items";
  v75 = sub_1CA94C438();
  v199 = v76;
  v200 = v75;
  v77 = sub_1CA94C438();
  v198 = v78;
  v201 = &v197;
  MEMORY[0x1EEE9AC00](v77);
  v79 = &v197 - v218;
  sub_1CA948D98();
  v80 = v217;
  v81 = [v217 bundleURL];
  MEMORY[0x1EEE9AC00](v81);
  sub_1CA948B68();

  v82 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v83 = sub_1CA2F9F14(v200, v199, v77, v198, 0, 0, v79, &v197 - v70);
  v214[4] = v83;
  v84 = sub_1CA94C438();
  v199 = v85;
  v200 = v84;
  v86 = sub_1CA94C438();
  v198 = v87;
  v201 = &v197;
  MEMORY[0x1EEE9AC00](v86);
  v88 = v218;
  sub_1CA948D98();
  v89 = [v80 bundleURL];
  MEMORY[0x1EEE9AC00](v89);
  v90 = v216;
  sub_1CA948B68();

  v91 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v92 = sub_1CA2F9F14(v200, v199, v86, v198, 0, 0, &v197 - v88, &v197 - v90);
  v93 = v214;
  v214[5] = v92;
  v94 = sub_1CA94C438();
  v199 = v95;
  v200 = v94;
  v96 = sub_1CA94C438();
  v198 = v97;
  v201 = &v197;
  MEMORY[0x1EEE9AC00](v96);
  sub_1CA948D98();
  v98 = [v217 bundleURL];
  MEMORY[0x1EEE9AC00](v98);
  sub_1CA948B68();

  v99 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v93 + 48) = sub_1CA2F9F14(v200, v199, v96, v198, 0, 0, &v197 - v88, &v197 - v90);
  v100 = sub_1CA94C438();
  v199 = v101;
  v200 = v100;
  v102 = sub_1CA94C438();
  v198 = v103;
  v201 = &v197;
  MEMORY[0x1EEE9AC00](v102);
  v104 = v218;
  sub_1CA948D98();
  v105 = v217;
  v106 = [v217 bundleURL];
  MEMORY[0x1EEE9AC00](v106);
  v107 = &v197 - v216;
  sub_1CA948B68();

  v108 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v109 = sub_1CA2F9F14(v200, v199, v102, v198, 0, 0, &v197 - v104, v107);
  v110 = v214;
  v214[7] = v109;
  v111 = sub_1CA94C438();
  v199 = v112;
  v200 = v111;
  v113 = sub_1CA94C438();
  v198 = v114;
  v201 = &v197;
  MEMORY[0x1EEE9AC00](v113);
  v115 = &v197 - v104;
  sub_1CA948D98();
  v116 = v105;
  v117 = [v105 bundleURL];
  MEMORY[0x1EEE9AC00](v117);
  v118 = v216;
  sub_1CA948B68();

  v119 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v110 + 64) = sub_1CA2F9F14(v200, v199, v113, v198, 0, 0, v115, &v197 - v118);
  v120 = sub_1CA94C438();
  v199 = v121;
  v200 = v120;
  v122 = sub_1CA94C438();
  v124 = v123;
  v201 = &v197;
  MEMORY[0x1EEE9AC00](v122);
  v125 = &v197 - v218;
  sub_1CA948D98();
  v126 = [v116 bundleURL];
  MEMORY[0x1EEE9AC00](v126);
  sub_1CA948B68();

  v127 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v128 = sub_1CA2F9F14(v200, v199, v122, v124, 0, 0, v125, &v197 - v118);
  v129 = v214;
  v214[9] = v128;
  v130 = sub_1CA94C438();
  v199 = v131;
  v200 = v130;
  v132 = sub_1CA94C438();
  v198 = v133;
  v201 = &v197;
  MEMORY[0x1EEE9AC00](v132);
  v134 = v218;
  sub_1CA948D98();
  v135 = [v217 bundleURL];
  MEMORY[0x1EEE9AC00](v135);
  sub_1CA948B68();

  v136 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v129 + 80) = sub_1CA2F9F14(v200, v199, v132, v198, 0, 0, &v197 - v134, &v197 - v118);
  v137 = sub_1CA94C438();
  v199 = v138;
  v200 = v137;
  v139 = sub_1CA94C438();
  v198 = v140;
  v201 = &v197;
  MEMORY[0x1EEE9AC00](v139);
  v141 = &v197 - v134;
  v142 = v134;
  sub_1CA948D98();
  v143 = v217;
  v144 = [v217 bundleURL];
  MEMORY[0x1EEE9AC00](v144);
  v145 = v216;
  sub_1CA948B68();

  v146 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v147 = sub_1CA2F9F14(v200, v199, v139, v198, 0, 0, v141, &v197 - v145);
  v214[11] = v147;
  v148 = sub_1CA94C438();
  v199 = v149;
  v200 = v148;
  v150 = sub_1CA94C438();
  v198 = v151;
  v201 = &v197;
  MEMORY[0x1EEE9AC00](v150);
  sub_1CA948D98();
  v152 = [v143 bundleURL];
  MEMORY[0x1EEE9AC00](v152);
  sub_1CA948B68();

  v153 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v154 = sub_1CA2F9F14(v200, v199, v150, v198, 0, 0, &v197 - v142, &v197 - v145);
  v155 = v214;
  v214[12] = v154;
  v156 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443830, &qword_1CA981580);
  v157 = v202;
  v202[25] = v155;
  v157[28] = v156;
  v157[29] = @"Key";
  v157[30] = 0xD000000000000013;
  v157[31] = 0x80000001CA9C4E90;
  v157[33] = MEMORY[0x1E69E6158];
  v157[34] = @"Label";
  v158 = @"Key";
  v159 = @"Label";
  v160 = sub_1CA94C438();
  v162 = v161;
  v163 = sub_1CA94C438();
  v165 = v164;
  v214 = &v197;
  MEMORY[0x1EEE9AC00](v163);
  v166 = &v197 - v218;
  sub_1CA948D98();
  v167 = [v217 bundleURL];
  MEMORY[0x1EEE9AC00](v167);
  v168 = &v197 - v216;
  sub_1CA948B68();

  v169 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v157[35] = sub_1CA2F9F14(v160, v162, v163, v165, 0, 0, v166, v168);
  v157[38] = v213;
  v157[39] = @"RequiredResources";
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437F0, &qword_1CA981430);
  v170 = swift_allocObject();
  *(v170 + 16) = v206;
  v171 = @"RequiredResources";
  *(v170 + 32) = sub_1CA94C1E8();
  v157[43] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437F8, &qword_1CA981438);
  v157[40] = v170;
  _s3__C3KeyVMa_0(0);
  sub_1CA29CF44(&qword_1EDB9F780, _s3__C3KeyVMa_0);
  sub_1CA94C1E8();
  v172 = sub_1CA2F864C();
  v173 = v204;
  *(v204 + 32) = v172;
  v174 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D8, &qword_1CA981398);
  v175 = v212;
  v212[45] = v173;
  v175[48] = v174;
  v175[49] = @"ParameterSummary";
  v176 = @"ParameterSummary";
  v177 = sub_1CA94C438();
  v179 = v178;
  v180 = sub_1CA94C438();
  v182 = v181;
  MEMORY[0x1EEE9AC00](v180);
  v183 = &v197 - v218;
  sub_1CA948D98();
  v184 = [v217 bundleURL];
  MEMORY[0x1EEE9AC00](v184);
  v185 = &v197 - v216;
  sub_1CA948B68();

  v186 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v187 = sub_1CA2F9F14(v177, v179, v180, v182, 0, 0, v183, v185);
  v188 = [objc_allocWithZone(WFActionParameterSummary) initWithString_];

  v189 = sub_1CA25B3D0(0, &unk_1EC441800, off_1E836DD60);
  v190 = v212;
  v212[50] = v188;
  v190[53] = v189;
  v190[54] = @"RequiredResources";
  v191 = swift_allocObject();
  *(v191 + 16) = v205;
  v192 = v208;
  (*(v207 + 104))(v208, *MEMORY[0x1E69DB3F8], v209);
  v193 = objc_allocWithZone(type metadata accessor for WFDeviceCapabilityResource());
  v194 = @"RequiredResources";
  WFDeviceCapabilityResource.init(capability:)(v192);
  *(v191 + 32) = v195;
  v190[58] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC444680, &qword_1CA9839D8);
  v190[55] = v191;
  type metadata accessor for Key(0);
  sub_1CA29CF44(&qword_1EDB9FB10, type metadata accessor for Key);
  sub_1CA94C1E8();
  return sub_1CA332510();
}

id sub_1CA4EB1A0()
{
  v133 = sub_1CA25B3D0(0, &qword_1EC4419A0, off_1E836DD08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B0, &qword_1CA981320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA9813E0;
  v1 = MEMORY[0x1E69E6158];
  *(inited + 32) = @"ActionClass";
  strcpy((inited + 40), "WFListAction");
  *(inited + 53) = 0;
  *(inited + 54) = -5120;
  *(inited + 64) = v1;
  *(inited + 72) = @"ActionKeywords";
  v2 = inited;
  v3 = @"ActionClass";
  v4 = @"ActionKeywords";
  v5 = sub_1CA94C438();
  v7 = v6;
  v8 = sub_1CA94C438();
  v10 = v9;
  v11 = sub_1CA948E58();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v139 = (v13 + 15) & 0xFFFFFFFFFFFFFFF0;
  v140 = v13;
  v14 = &v124 - v139;
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v137 = qword_1EDB9F690;
  v15 = [qword_1EDB9F690 bundleURL];
  v16 = sub_1CA948BA8();
  v136 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v138 = (v17 + 15) & 0xFFFFFFFFFFFFFFF0;
  v18 = &v124 - v138;
  sub_1CA948B68();

  v19 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v20 = sub_1CA2F9F14(v5, v7, v8, v10, 0, 0, v14, v18);
  v21 = sub_1CA25B3D0(0, &qword_1EDB9F6E0, 0x1E696B100);
  v134 = v2;
  v135 = v21;
  v2[10] = v20;
  v2[13] = v21;
  v2[14] = @"Description";
  v132 = sub_1CA25B3D0(0, &unk_1EC441790, off_1E836DD18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D0, &qword_1CA981390);
  v22 = swift_initStackObject();
  *(v22 + 16) = xmmword_1CA97EDF0;
  *(v22 + 32) = @"DescriptionNote";
  v23 = @"Description";
  v24 = @"DescriptionNote";
  v25 = sub_1CA94C438();
  v129 = v26;
  *&v130 = v25;
  v27 = sub_1CA94C438();
  v29 = v28;
  v131 = &v124;
  MEMORY[0x1EEE9AC00](v27);
  v30 = &v124 - v139;
  sub_1CA948D98();
  v31 = v137;
  v32 = [v137 bundleURL];
  MEMORY[0x1EEE9AC00](v32);
  v33 = &v124 - v138;
  sub_1CA948B68();

  v34 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v22 + 40) = sub_1CA2F9F14(v130, v129, v27, v29, 0, 0, v30, v33);
  v35 = v135;
  *(v22 + 64) = v135;
  *(v22 + 72) = @"DescriptionSummary";
  v36 = @"DescriptionSummary";
  v37 = sub_1CA94C438();
  v129 = v38;
  *&v130 = v37;
  v39 = sub_1CA94C438();
  v41 = v40;
  v131 = &v124;
  MEMORY[0x1EEE9AC00](v39);
  v42 = &v124 - v139;
  sub_1CA948D98();
  v43 = [v31 bundleURL];
  MEMORY[0x1EEE9AC00](v43);
  v44 = &v124 - v138;
  sub_1CA948B68();

  v45 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v46 = sub_1CA2F9F14(v130, v129, v39, v41, 0, 0, v42, v44);
  *(v22 + 104) = v35;
  *(v22 + 80) = v46;
  type metadata accessor for DescriptionKey(0);
  sub_1CA29CF44(&qword_1EC441830, type metadata accessor for DescriptionKey);
  sub_1CA94C1E8();
  v47 = v132;
  v48 = sub_1CA6B3784();
  v49 = v134;
  v134[15] = v48;
  v49[18] = v47;
  v49[19] = @"IconColor";
  v49[20] = 0x65676E61724FLL;
  v49[21] = 0xE600000000000000;
  v50 = MEMORY[0x1E69E6158];
  v49[23] = MEMORY[0x1E69E6158];
  v49[24] = @"IconSymbol";
  v49[25] = 0x6C75622E7473696CLL;
  v49[26] = 0xEB0000000074656CLL;
  v49[28] = v50;
  v49[29] = @"Name";
  v51 = v49;
  v52 = @"IconColor";
  v53 = @"IconSymbol";
  v54 = @"Name";
  v55 = sub_1CA94C438();
  v57 = v56;
  v58 = sub_1CA94C438();
  v60 = v59;
  v132 = &v124;
  MEMORY[0x1EEE9AC00](v58);
  v61 = &v124 - v139;
  sub_1CA948D98();
  v62 = [v137 bundleURL];
  MEMORY[0x1EEE9AC00](v62);
  v63 = &v124 - v138;
  sub_1CA948B68();

  v64 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v65 = sub_1CA2F9F14(v55, v57, v58, v60, 0, 0, v61, v63);
  v66 = v51;
  v51[30] = v65;
  v67 = v135;
  v66[33] = v135;
  v66[34] = @"Output";
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445FB0, &qword_1CA97EE10);
  v68 = swift_initStackObject();
  v130 = xmmword_1CA981350;
  *(v68 + 16) = xmmword_1CA981350;
  *(v68 + 32) = 0x75736F6C63736944;
  *(v68 + 40) = 0xEF6C6576654C6572;
  *(v68 + 48) = 0x63696C627550;
  *(v68 + 56) = 0xE600000000000000;
  *(v68 + 72) = MEMORY[0x1E69E6158];
  *(v68 + 80) = 0x656C7069746C754DLL;
  *(v68 + 88) = 0xE800000000000000;
  v69 = MEMORY[0x1E69E6370];
  *(v68 + 96) = 1;
  *(v68 + 120) = v69;
  *(v68 + 128) = 0x614E74757074754FLL;
  *(v68 + 136) = 0xEA0000000000656DLL;
  v70 = @"Output";
  v71 = sub_1CA94C438();
  v131 = v72;
  v73 = sub_1CA94C438();
  v75 = v74;
  v132 = &v124;
  MEMORY[0x1EEE9AC00](v73);
  v76 = &v124 - v139;
  sub_1CA948D98();
  v77 = [v137 bundleURL];
  MEMORY[0x1EEE9AC00](v77);
  v78 = &v124 - v138;
  sub_1CA948B68();

  v79 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v68 + 144) = sub_1CA2F9F14(v71, v131, v73, v75, 0, 0, v76, v78);
  *(v68 + 168) = v67;
  *(v68 + 176) = 0x7365707954;
  *(v68 + 184) = 0xE500000000000000;
  *(v68 + 216) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
  *(v68 + 192) = &unk_1F4A020D0;
  v80 = MEMORY[0x1E69E6158];
  v81 = sub_1CA94C1E8();
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC447DE0, &qword_1CA9917E0);
  v83 = v134;
  v134[35] = v81;
  v83[38] = v82;
  v83[39] = @"Parameters";
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443910, &unk_1CA981A00);
  v132 = swift_allocObject();
  *(v132 + 1) = xmmword_1CA9813B0;
  v131 = sub_1CA25B3D0(0, &qword_1EDB9F710, off_1E836EDC0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443D80, &unk_1CA981BA0);
  v84 = swift_initStackObject();
  *(v84 + 16) = v130;
  *(v84 + 32) = @"Class";
  *(v84 + 40) = 0xD000000000000017;
  *(v84 + 48) = 0x80000001CA9C5040;
  *(v84 + 64) = v80;
  *(v84 + 72) = @"DefaultValue";
  *&v130 = swift_allocObject();
  *(v130 + 16) = xmmword_1CA981360;
  v85 = @"Parameters";
  v86 = @"Class";
  v87 = @"DefaultValue";
  v88 = sub_1CA94C438();
  v127 = v89;
  v128 = v88;
  v90 = sub_1CA94C438();
  v125 = v91;
  v126 = v90;
  v129 = &v124;
  MEMORY[0x1EEE9AC00](v90);
  v92 = v139;
  sub_1CA948D98();
  v93 = v137;
  v94 = [v137 bundleURL];
  v124 = &v124;
  MEMORY[0x1EEE9AC00](v94);
  v95 = v138;
  sub_1CA948B68();

  v96 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v97 = sub_1CA2F9F14(v128, v127, v126, v125, 0, 0, &v124 - v92, &v124 - v95);
  v98 = v130;
  *(v130 + 32) = v97;
  v99 = sub_1CA94C438();
  v127 = v100;
  v128 = v99;
  v126 = sub_1CA94C438();
  v102 = v101;
  v129 = &v124;
  MEMORY[0x1EEE9AC00](v126);
  sub_1CA948D98();
  v103 = [v93 bundleURL];
  MEMORY[0x1EEE9AC00](v103);
  sub_1CA948B68();

  v104 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v98 + 40) = sub_1CA2F9F14(v128, v127, v126, v102, 0, 0, &v124 - v92, &v124 - v95);
  v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443830, &qword_1CA981580);
  *(v84 + 80) = v98;
  *(v84 + 104) = v105;
  *(v84 + 112) = @"Key";
  *(v84 + 120) = 0x736D6574494657;
  *(v84 + 128) = 0xE700000000000000;
  *(v84 + 144) = MEMORY[0x1E69E6158];
  *(v84 + 152) = @"Label";
  v106 = @"Key";
  v107 = @"Label";
  v108 = sub_1CA94C438();
  v129 = v109;
  v110 = sub_1CA94C438();
  v112 = v111;
  *&v130 = &v124;
  MEMORY[0x1EEE9AC00](v110);
  v113 = &v124 - v139;
  sub_1CA948D98();
  v114 = [v137 bundleURL];
  MEMORY[0x1EEE9AC00](v114);
  v115 = &v124 - v138;
  sub_1CA948B68();

  v116 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v117 = sub_1CA2F9F14(v108, v129, v110, v112, 0, 0, v113, v115);
  *(v84 + 184) = v135;
  *(v84 + 160) = v117;
  _s3__C3KeyVMa_0(0);
  sub_1CA29CF44(&qword_1EDB9F780, _s3__C3KeyVMa_0);
  sub_1CA94C1E8();
  v118 = sub_1CA2F864C();
  v119 = v132;
  v132[4] = v118;
  v120 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D8, &qword_1CA981398);
  v121 = v134;
  v134[40] = v119;
  v121[43] = v120;
  v121[44] = @"ResidentCompatible";
  v121[48] = MEMORY[0x1E69E6370];
  *(v121 + 360) = 1;
  type metadata accessor for Key(0);
  sub_1CA29CF44(&qword_1EDB9FB10, type metadata accessor for Key);
  v122 = @"ResidentCompatible";
  sub_1CA94C1E8();
  return sub_1CA332510();
}

id sub_1CA4EC094()
{
  v104 = sub_1CA25B3D0(0, &qword_1EC4419A0, off_1E836DD08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B0, &qword_1CA981320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA9813F0;
  v1 = MEMORY[0x1E69E6158];
  *(inited + 32) = @"ActionClass";
  *(inited + 40) = 0xD000000000000013;
  *(inited + 48) = 0x80000001CA9C50B0;
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
  v109 = (v12 + 15) & 0xFFFFFFFFFFFFFFF0;
  v110 = v12;
  v13 = &v99 - v109;
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v108 = qword_1EDB9F690;
  v14 = [qword_1EDB9F690 bundleURL];
  v15 = sub_1CA948BA8();
  v106 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v107 = (v16 + 15) & 0xFFFFFFFFFFFFFFF0;
  v17 = &v99 - v107;
  sub_1CA948B68();

  v18 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v19 = sub_1CA2F9F14(v4, v6, v7, v9, 0, 0, v13, v17);
  v20 = sub_1CA25B3D0(0, &qword_1EDB9F6E0, 0x1E696B100);
  v105 = v20;
  *(inited + 80) = v19;
  *(inited + 104) = v20;
  *(inited + 112) = @"AppDefinition";
  v21 = @"AppDefinition";
  v22 = sub_1CA94C1E8();
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B8, &unk_1CA985870);
  *(inited + 120) = v22;
  *(inited + 144) = v23;
  *(inited + 152) = @"Description";
  v103 = sub_1CA25B3D0(0, &unk_1EC441790, off_1E836DD18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D0, &qword_1CA981390);
  v24 = swift_initStackObject();
  *(v24 + 16) = xmmword_1CA981310;
  *(v24 + 32) = @"DescriptionSummary";
  v25 = @"Description";
  v26 = @"DescriptionSummary";
  v27 = sub_1CA94C438();
  v101 = v28;
  v29 = sub_1CA94C438();
  v31 = v30;
  v102 = &v99;
  MEMORY[0x1EEE9AC00](v29);
  v32 = &v99 - v109;
  sub_1CA948D98();
  v33 = [v108 bundleURL];
  MEMORY[0x1EEE9AC00](v33);
  v34 = &v99 - v107;
  sub_1CA948B68();

  v35 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v36 = sub_1CA2F9F14(v27, v101, v29, v31, 0, 0, v32, v34);
  *(v24 + 64) = v105;
  *(v24 + 40) = v36;
  type metadata accessor for DescriptionKey(0);
  sub_1CA29CF44(&qword_1EC441830, type metadata accessor for DescriptionKey);
  sub_1CA94C1E8();
  v37 = v103;
  *(inited + 160) = sub_1CA6B3784();
  *(inited + 184) = v37;
  *(inited + 192) = @"IconColor";
  *(inited + 200) = 0x6E65657247;
  *(inited + 208) = 0xE500000000000000;
  v38 = MEMORY[0x1E69E6158];
  *(inited + 224) = MEMORY[0x1E69E6158];
  *(inited + 232) = @"IconSymbol";
  *(inited + 240) = 0x69662E656E6F6870;
  *(inited + 248) = 0xEA00000000006C6CLL;
  *(inited + 264) = v38;
  *(inited + 272) = @"LocallyProcessesData";
  v39 = MEMORY[0x1E69E6370];
  *(inited + 280) = 1;
  *(inited + 304) = v39;
  *(inited + 312) = @"Name";
  v40 = @"IconColor";
  v41 = @"IconSymbol";
  v42 = @"LocallyProcessesData";
  v43 = @"Name";
  v44 = sub_1CA94C438();
  v46 = v45;
  v47 = sub_1CA94C438();
  v49 = v48;
  v103 = &v99;
  MEMORY[0x1EEE9AC00](v47);
  v50 = &v99 - v109;
  sub_1CA948D98();
  v51 = [v108 bundleURL];
  MEMORY[0x1EEE9AC00](v51);
  v52 = &v99 - v107;
  sub_1CA948B68();

  v53 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(inited + 320) = sub_1CA2F9F14(v44, v46, v47, v49, 0, 0, v50, v52);
  *(inited + 344) = v105;
  *(inited + 352) = @"Output";
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445FB0, &qword_1CA97EE10);
  v54 = swift_initStackObject();
  *(v54 + 16) = xmmword_1CA981350;
  *(v54 + 32) = 0x75736F6C63736944;
  *(v54 + 40) = 0xEF6C6576654C6572;
  *(v54 + 48) = 0x63696C627550;
  *(v54 + 56) = 0xE600000000000000;
  *(v54 + 72) = MEMORY[0x1E69E6158];
  *(v54 + 80) = 0x656C7069746C754DLL;
  *(v54 + 88) = 0xE800000000000000;
  *(v54 + 96) = 1;
  *(v54 + 120) = MEMORY[0x1E69E6370];
  *(v54 + 128) = 0x614E74757074754FLL;
  *(v54 + 136) = 0xEA0000000000656DLL;
  v55 = @"Output";
  v56 = sub_1CA94C438();
  v102 = v57;
  v58 = sub_1CA94C438();
  v60 = v59;
  v103 = &v99;
  MEMORY[0x1EEE9AC00](v58);
  v61 = &v99 - v109;
  sub_1CA948D98();
  v62 = [v108 bundleURL];
  MEMORY[0x1EEE9AC00](v62);
  v63 = &v99 - v107;
  sub_1CA948B68();

  v64 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v54 + 144) = sub_1CA2F9F14(v56, v102, v58, v60, 0, 0, v61, v63);
  *(v54 + 168) = v105;
  *(v54 + 176) = 0x7365707954;
  *(v54 + 184) = 0xE500000000000000;
  *(v54 + 216) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
  *(v54 + 192) = &unk_1F4A02140;
  v65 = MEMORY[0x1E69E6158];
  v66 = sub_1CA94C1E8();
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC447DE0, &qword_1CA9917E0);
  *(inited + 360) = v66;
  *(inited + 384) = v67;
  *(inited + 392) = @"Parameters";
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443910, &unk_1CA981A00);
  v103 = swift_allocObject();
  *(v103 + 1) = xmmword_1CA9813B0;
  v102 = sub_1CA25B3D0(0, &qword_1EDB9F710, off_1E836EDC0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443D80, &unk_1CA981BA0);
  v68 = swift_initStackObject();
  *(v68 + 16) = xmmword_1CA981370;
  *(v68 + 32) = @"AllowsMultipleValues";
  *(v68 + 40) = 1;
  *(v68 + 64) = MEMORY[0x1E69E6370];
  *(v68 + 72) = @"Class";
  *(v68 + 80) = 0xD00000000000001BLL;
  *(v68 + 88) = 0x80000001CA9BEDF0;
  *(v68 + 104) = v65;
  *(v68 + 112) = @"Key";
  strcpy((v68 + 120), "WFPhoneNumber");
  *(v68 + 134) = -4864;
  *(v68 + 144) = v65;
  *(v68 + 152) = @"Label";
  v69 = @"Parameters";
  v70 = @"AllowsMultipleValues";
  v71 = @"Class";
  v72 = @"Key";
  v73 = @"Label";
  v74 = sub_1CA94C438();
  v100 = v75;
  v76 = sub_1CA94C438();
  v78 = v77;
  v101 = &v99;
  MEMORY[0x1EEE9AC00](v76);
  v79 = &v99 - v109;
  sub_1CA948D98();
  v80 = [v108 bundleURL];
  MEMORY[0x1EEE9AC00](v80);
  v81 = &v99 - v107;
  sub_1CA948B68();

  v82 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v68 + 160) = sub_1CA2F9F14(v74, v100, v76, v78, 0, 0, v79, v81);
  *(v68 + 184) = v105;
  *(v68 + 192) = @"Placeholder";
  v83 = @"Placeholder";
  v84 = sub_1CA94C438();
  v100 = v85;
  v86 = sub_1CA94C438();
  v88 = v87;
  v101 = &v99;
  MEMORY[0x1EEE9AC00](v86);
  v89 = &v99 - v109;
  sub_1CA948D98();
  v90 = [v108 bundleURL];
  MEMORY[0x1EEE9AC00](v90);
  v91 = &v99 - v107;
  sub_1CA948B68();

  v92 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v93 = sub_1CA2F9F14(v84, v100, v86, v88, 0, 0, v89, v91);
  *(v68 + 224) = v105;
  *(v68 + 200) = v93;
  _s3__C3KeyVMa_0(0);
  sub_1CA29CF44(&qword_1EDB9F780, _s3__C3KeyVMa_0);
  sub_1CA94C1E8();
  v94 = sub_1CA2F864C();
  v95 = v103;
  v103[4] = v94;
  v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D8, &qword_1CA981398);
  *(inited + 400) = v95;
  *(inited + 424) = v96;
  *(inited + 432) = @"ResidentCompatible";
  *(inited + 464) = MEMORY[0x1E69E6370];
  *(inited + 440) = 1;
  type metadata accessor for Key(0);
  sub_1CA29CF44(&qword_1EDB9FB10, type metadata accessor for Key);
  v97 = @"ResidentCompatible";
  sub_1CA94C1E8();
  return sub_1CA332510();
}

id sub_1CA4ECDC4(uint64_t a1, uint64_t a2, SEL *a3)
{
  v4 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v5 = sub_1CA94C368();

  v6 = [v4 *a3];

  return v6;
}

id sub_1CA4ECE38(uint64_t a1, uint64_t a2)
{
  *&v2[qword_1EC444E10] = a1;
  *&v2[qword_1EC444E18] = a2;
  v4.receiver = v2;
  v4.super_class = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC445A50, &unk_1CA989900);
  return objc_msgSendSuper2(&v4, sel_init);
}

uint64_t Query.toTableTemplateValue()()
{
  v2 = sub_1CA94AF38();
  v3 = OUTLINED_FUNCTION_1_0(v2);
  v81 = v4;
  v82 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_6_0();
  v77 = v8 - v7;
  v9 = sub_1CA94AF58();
  v79 = OUTLINED_FUNCTION_1_0(v9);
  v80 = v10;
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v79);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_10_18(v13);
  v14 = sub_1CA94B0C8();
  v15 = OUTLINED_FUNCTION_1_0(v14);
  v17 = v16;
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_19();
  v22 = (v20 - v21);
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v77 - v24;
  v26 = sub_1CA94ACD8();
  v27 = OUTLINED_FUNCTION_1_0(v26);
  v29 = v28;
  v31 = *(v30 + 64);
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_6_0();
  v34 = v33 - v32;
  sub_1CA94B768();
  v35 = v29[11];
  v36 = OUTLINED_FUNCTION_104();
  v38 = v37(v36);
  if (v38 == *MEMORY[0x1E69DAEC8])
  {
    v39 = v29[12];
    v40 = OUTLINED_FUNCTION_104();
    v41(v40);
    (*(v17 + 32))(v25, v34, v14);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443910, &unk_1CA981A00);
    v42 = swift_allocObject();
    *(v42 + 16) = xmmword_1CA9813B0;
    v0 = v25;
    v43 = sub_1CA4ED528();
    if (v1)
    {
      (*(v17 + 8))(v25, v14);
      *(v42 + 16) = 0;
LABEL_40:
    }

    else
    {
      *(v42 + 32) = v43;
      v62 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC445A50, &unk_1CA989900));
      v0 = sub_1CA4ECE38(1, v42);
      (*(v17 + 8))(v25, v14);
    }

    return v0;
  }

  v83 = v17;
  v84 = v14;
  if (v38 == *MEMORY[0x1E69DAEF8])
  {
    v44 = v29[12];
    v45 = OUTLINED_FUNCTION_104();
    v46(v45);
    v47 = v79;
    v48 = v78;
    (*(v80 + 32))(v78, v34, v79);
    v49 = v77;
    sub_1CA94AF48();
    v50 = (*(v81 + 88))(v49, v82);
    if (v50 == *MEMORY[0x1E69DB118])
    {
      v51 = 1;
      v52 = v84;
LABEL_31:
      v63 = sub_1CA94AF28();
      v64 = *(v63 + 16);
      if (v64)
      {
        v77 = v51;
        v85 = MEMORY[0x1E69E7CC0];
        v81 = v64;
        sub_1CA94D508();
        v65 = 0;
        v82 = v63 + ((*(v83 + 80) + 32) & ~*(v83 + 80));
        v66 = (v83 + 8);
        while (v65 < *(v63 + 16))
        {
          (*(v83 + 16))(v22, v82 + *(v83 + 72) * v65, v52);
          v0 = v22;
          sub_1CA4ED528();
          if (v1)
          {

            v73 = *v66;
            v74 = OUTLINED_FUNCTION_4_37();
            v75(v74);
            (*(v80 + 8))(v78, v79);
            goto LABEL_40;
          }

          ++v65;
          v67 = *v66;
          v68 = OUTLINED_FUNCTION_4_37();
          v69(v68);
          sub_1CA94D4D8();
          v70 = *(v85 + 16);
          sub_1CA94D518();
          v52 = v84;
          sub_1CA94D528();
          sub_1CA94D4E8();
          if (v81 == v65)
          {

            v71 = v85;
            v48 = v78;
            v47 = v79;
            v51 = v77;
            goto LABEL_38;
          }
        }

        __break(1u);
        goto LABEL_43;
      }

      v71 = MEMORY[0x1E69E7CC0];
LABEL_38:
      v72 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC445A50, &unk_1CA989900));
      v0 = sub_1CA4ECE38(v51, v71);
      (*(v80 + 8))(v48, v47);
      return v0;
    }

    v52 = v84;
    if (v50 == *MEMORY[0x1E69DB110])
    {
      v51 = 0;
      goto LABEL_31;
    }
  }

  else if (v38 == *MEMORY[0x1E69DAED8] || v38 == *MEMORY[0x1E69DAF00] || v38 == *MEMORY[0x1E69DAEE0] || v38 == *MEMORY[0x1E69DAEE8] || v38 == *MEMORY[0x1E69DAEF0] || v38 == *MEMORY[0x1E69DAF08] || v38 == *MEMORY[0x1E69DAED0])
  {
    v59 = v29[1];
    v60 = OUTLINED_FUNCTION_104();
    v61(v60);
    type metadata accessor for QueryToTableTemplateValueConversionError(0);
    sub_1CA4EE284(&qword_1EC445E30, type metadata accessor for QueryToTableTemplateValueConversionError);
    OUTLINED_FUNCTION_8_20();
    sub_1CA94B768();
    swift_willThrow();
    return v0;
  }

LABEL_43:
  result = sub_1CA94D7E8();
  __break(1u);
  return result;
}

uint64_t sub_1CA4ED528()
{
  v0 = sub_1CA94AC88();
  v1 = OUTLINED_FUNCTION_1_0(v0);
  v129 = v2;
  v130 = v1;
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_19();
  v123 = (v5 - v6);
  v8 = MEMORY[0x1EEE9AC00](v7);
  v124 = (&v122 - v9);
  MEMORY[0x1EEE9AC00](v8);
  v128 = (&v122 - v10);
  v11 = sub_1CA94B538();
  v12 = OUTLINED_FUNCTION_1_0(v11);
  v131 = v13;
  v132 = v12;
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_6_0();
  v18 = v17 - v16;
  v19 = sub_1CA94B088();
  v20 = OUTLINED_FUNCTION_1_0(v19);
  v22 = v21;
  v24 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_19();
  v133 = v25 - v26;
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v122 - v28;
  v30 = sub_1CA94B618();
  v31 = OUTLINED_FUNCTION_1_0(v30);
  v33 = v32;
  v35 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_6_0();
  v38 = v37 - v36;
  sub_1CA94B0A8();
  v39 = ContentItemClassDescriptor.load()();
  (*(v33 + 8))(v38, v30);
  if (!v39)
  {
    type metadata accessor for PredicateToRowTemplateValueConversionError(0);
    sub_1CA4EE284(&qword_1EC445E48, type metadata accessor for PredicateToRowTemplateValueConversionError);
    OUTLINED_FUNCTION_8_20();
    v49 = v48;
    sub_1CA94B0A8();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    return v49;
  }

  v126 = v39;
  sub_1CA94B098();
  v40 = *(v22 + 88);
  v41 = OUTLINED_FUNCTION_4_37();
  v125 = v42;
  v43 = v42(v41);
  v44 = *MEMORY[0x1E69DB260];
  v127 = v22;
  if (v43 == v44)
  {
    v45 = OUTLINED_FUNCTION_2_37();
    v43 = v46(v45);
    v47 = 5;
LABEL_35:
    MEMORY[0x1CCA9FF10](v43);
    v78 = sub_1CA94B518();
    v80 = v79;
    (*(v131 + 8))(v18, v132);
    v81 = objc_allocWithZone(WFRowTemplateValue);
    v49 = sub_1CA66ABCC(v126, v78, v80, v47, 0);
    v82 = v133;
    sub_1CA94B098();
    v83 = OUTLINED_FUNCTION_9_24();
    v84 = v125(v83);
    if (v84 == v44 || v84 == *MEMORY[0x1E69DB288] || v84 == *MEMORY[0x1E69DB268] || v84 == *MEMORY[0x1E69DB280] || v84 == *MEMORY[0x1E69DB2B0] || v84 == *MEMORY[0x1E69DB278] || v84 == *MEMORY[0x1E69DB298] || v84 == *MEMORY[0x1E69DB270] || v84 == *MEMORY[0x1E69DB250] || v84 == *MEMORY[0x1E69DB2A0] || v84 == *MEMORY[0x1E69DB2C0] || v84 == *MEMORY[0x1E69DB2B8])
    {
      v96 = *(v127 + 96);
      v97 = OUTLINED_FUNCTION_9_24();
      v98(v97);
      v100 = v128;
      v99 = v129;
      v101 = v82;
      v102 = v130;
      (*(v129 + 32))(v128, v101, v130);
      v103 = v134;
      sub_1CA4EE2CC(v100, 0);
      (*(v99 + 8))(v100, v102);
      if (v103)
      {
      }
    }

    else if (v84 == *MEMORY[0x1E69DB2C8])
    {
      v104 = *(v127 + 96);
      v105 = OUTLINED_FUNCTION_9_24();
      v106(v105);
      v107 = v82;
      v108 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445E50, &unk_1CA989980) + 48);
      v110 = v129;
      v109 = v130;
      v111 = *(v129 + 32);
      v112 = v124;
      v111(v124, v107, v130);
      v113 = v107 + v108;
      v114 = v123;
      v111(v123, v113, v109);
      v115 = v134;
      sub_1CA4EE2CC(v112, 0);
      if (v115)
      {

        v116 = *(v110 + 8);
        v116(v114, v109);
        v116(v112, v109);
      }

      else
      {
        sub_1CA4EE2CC(v114, 1);
        v121 = *(v110 + 8);
        v121(v114, v109);
        v121(v112, v109);
      }
    }

    else
    {
      v118 = *(v127 + 8);
      v119 = OUTLINED_FUNCTION_9_24();
      v120(v119);
    }

    return v49;
  }

  if (v43 == *MEMORY[0x1E69DB288])
  {
    v50 = OUTLINED_FUNCTION_2_37();
    v43 = v51(v50);
    v47 = 4;
    goto LABEL_35;
  }

  if (v43 == *MEMORY[0x1E69DB268])
  {
    v52 = OUTLINED_FUNCTION_2_37();
    v43 = v53(v52);
    v47 = 2;
    goto LABEL_35;
  }

  if (v43 == *MEMORY[0x1E69DB280])
  {
    v54 = OUTLINED_FUNCTION_2_37();
    v43 = v55(v54);
    v47 = 3;
    goto LABEL_35;
  }

  if (v43 == *MEMORY[0x1E69DB2B0])
  {
    v56 = OUTLINED_FUNCTION_2_37();
    v43 = v57(v56);
    v47 = 0;
    goto LABEL_35;
  }

  if (v43 == *MEMORY[0x1E69DB278])
  {
    v58 = OUTLINED_FUNCTION_2_37();
    v43 = v59(v58);
    v47 = 1;
    goto LABEL_35;
  }

  if (v43 == *MEMORY[0x1E69DB298])
  {
    v60 = OUTLINED_FUNCTION_2_37();
    v43 = v61(v60);
    v47 = 99;
    goto LABEL_35;
  }

  if (v43 == *MEMORY[0x1E69DB270])
  {
    v62 = OUTLINED_FUNCTION_2_37();
    v43 = v63(v62);
    v47 = 999;
    goto LABEL_35;
  }

  if (v43 == *MEMORY[0x1E69DB250])
  {
    v64 = OUTLINED_FUNCTION_2_37();
    v43 = v65(v64);
    v47 = 8;
    goto LABEL_35;
  }

  if (v43 == *MEMORY[0x1E69DB2A0])
  {
    v66 = OUTLINED_FUNCTION_2_37();
    v43 = v67(v66);
    v47 = 9;
    goto LABEL_35;
  }

  if (v43 == *MEMORY[0x1E69DB2C0])
  {
    v68 = OUTLINED_FUNCTION_2_37();
    v43 = v69(v68);
    v47 = 1000;
    goto LABEL_35;
  }

  if (v43 == *MEMORY[0x1E69DB2B8])
  {
    v70 = OUTLINED_FUNCTION_2_37();
    v43 = v71(v70);
    v47 = 1001;
    goto LABEL_35;
  }

  if (v43 == *MEMORY[0x1E69DB2C8])
  {
    v72 = *(v22 + 96);
    v73 = OUTLINED_FUNCTION_4_37();
    v74(v73);
    v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445E50, &unk_1CA989980);
    v76 = v130;
    v77 = *(v129 + 8);
    v77(&v29[*(v75 + 48)], v130);
    v43 = (v77)(v29, v76);
    v47 = 1003;
    goto LABEL_35;
  }

  if (v43 == *MEMORY[0x1E69DB2A8])
  {
    v47 = 100;
    goto LABEL_35;
  }

  if (v43 == *MEMORY[0x1E69DB258])
  {
    v47 = 101;
    goto LABEL_35;
  }

  if (v43 == *MEMORY[0x1E69DB290])
  {
    v47 = 1002;
    goto LABEL_35;
  }

  result = sub_1CA94D7E8();
  __break(1u);
  return result;
}

uint64_t ContentItemClassDescriptor.load()()
{
  v0 = sub_1CA949328();
  v1 = OUTLINED_FUNCTION_1_0(v0);
  v3 = v2;
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_6_0();
  v8 = v7 - v6;
  v9 = sub_1CA94B5F8();
  v10 = OUTLINED_FUNCTION_1_0(v9);
  v12 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_6_0();
  v17 = (v16 - v15);
  sub_1CA94B608();
  v18 = (*(v12 + 88))(v17, v9);
  if (v18 == *MEMORY[0x1E69DB460])
  {
    v19 = OUTLINED_FUNCTION_7_25();
    v20(v19);
    v21 = *v17;
    v22 = v17[1];
    v23 = sub_1CA94C368();

    v24 = NSClassFromString(v23);
    goto LABEL_9;
  }

  if (v18 == *MEMORY[0x1E69DB450])
  {
    v25 = OUTLINED_FUNCTION_7_25();
    v26(v25);
    v27 = *v17;
    v28 = v17[1];
    v29 = v17[2];
    v30 = v17[3];
    sub_1CA25B3D0(0, &qword_1EC4442D0, 0x1E69AC818);
    v31 = &selRef_initWithIdentifier_;
LABEL_7:
    v23 = sub_1CA4ECDC4(v27, v28, v31);
    v36 = sub_1CA94C368();

    v37 = [(NSString *)v23 wf_contentItemClassWithAppBundleIdentifier:v36];
LABEL_8:
    v24 = v37;

LABEL_9:
    if (v24)
    {
      swift_getObjCClassMetadata();
      sub_1CA25B3D0(0, &qword_1EDB9F790, 0x1E6996D58);
      return swift_dynamicCastMetatype();
    }

    return 0;
  }

  if (v18 == *MEMORY[0x1E69DB468])
  {
    v32 = OUTLINED_FUNCTION_7_25();
    v33(v32);
    v27 = *v17;
    v28 = v17[1];
    v34 = v17[2];
    v35 = v17[3];
    sub_1CA25B3D0(0, &qword_1EC4442C8, 0x1E69AC890);
    v31 = &selRef_initWithEnumerationIdentifier_;
    goto LABEL_7;
  }

  if (v18 == *MEMORY[0x1E69DB458])
  {
    v39 = OUTLINED_FUNCTION_7_25();
    v40(v39);
    v41 = *v17;
    v42 = v17[1];
    v43 = sub_1CA949338();
    sub_1CA949318();
    v23 = sub_1CA3118B4(v8, v43);

    (*(v3 + 8))(v8, v0);
    if (v23)
    {
      objc_opt_self();
      v44 = swift_dynamicCastObjCClass();
      if (v44)
      {
        v45 = v44;
        v36 = sub_1CA94C368();
        v37 = [v45 wf:v36 contentItemClassWithAppBundleIdentifier:?];
        goto LABEL_8;
      }
    }

    return 0;
  }

  result = sub_1CA94D7E8();
  __break(1u);
  return result;
}

uint64_t sub_1CA4EE1AC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1CA94ACD8();

  return __swift_getEnumTagSinglePayload(a1, a2, v4);
}

uint64_t sub_1CA4EE1F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1CA94ACD8();

  return __swift_storeEnumTagSinglePayload(a1, a2, a3, v6);
}

uint64_t sub_1CA4EE284(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1CA4EE2CC(uint64_t *a1, int a2)
{
  v128 = a2;
  v3 = sub_1CA94A8C8();
  v4 = OUTLINED_FUNCTION_1_0(v3);
  v130 = v5;
  v131 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_10_18(v8);
  v9 = sub_1CA94AC18();
  v10 = OUTLINED_FUNCTION_1_0(v9);
  v12 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_19();
  v17 = (v15 - v16);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v127[-v19];
  v21 = sub_1CA94AC88();
  v22 = OUTLINED_FUNCTION_1_0(v21);
  v24 = v23;
  v26 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_6_0();
  v29 = (v28 - v27);
  v132 = v24[2];
  v133 = a1;
  (v132)(v28 - v27, a1, v21);
  v30 = v24[11];
  v31 = OUTLINED_FUNCTION_4_37();
  v33 = v32(v31);
  if (v33 != *MEMORY[0x1E69DAE70])
  {
    if (v33 != *MEMORY[0x1E69DAE20])
    {
      type metadata accessor for TypedValueToRowTemplateValuePopulationError(0);
      OUTLINED_FUNCTION_5_27();
      sub_1CA4EE284(v61, v62);
      OUTLINED_FUNCTION_8_20();
      (v132)(v63, v133, v21);
      swift_willThrow();
      v64 = v24[1];
      v65 = OUTLINED_FUNCTION_4_37();
      return v66(v65);
    }

    v46 = v24[12];
    v47 = OUTLINED_FUNCTION_4_37();
    v48(v47);
    v49 = *v29;
    v50 = swift_projectBox();
    v51 = v129;
    v52 = v130;
    v53 = v131;
    (*(v130 + 16))(v129, v50, v131);
    sub_1CA94A898();
    v54 = sub_1CA94C368();

    [v134 setEnumeration_];

    (*(v52 + 8))(v51, v53);
  }

  v34 = v24[12];
  v35 = OUTLINED_FUNCTION_4_37();
  v36(v35);
  v37 = *v29;
  v38 = swift_projectBox();
  v39 = *(v12 + 16);
  v39(v20, v38, v9);
  v39(v17, v20, v9);
  v40 = (*(v12 + 88))(v17, v9);
  v41 = v12;
  if (v40 == *MEMORY[0x1E69DADC0])
  {
    v42 = OUTLINED_FUNCTION_3_33();
    v43(v42);
    v44 = *v17;
    sub_1CA25B3D0(0, &qword_1EDB9F5E0, 0x1E696AD98);
    v45 = sub_1CA94CFA8();
    [v134 setBoolean_];
LABEL_8:

    v58 = *(v41 + 8);
    v59 = OUTLINED_FUNCTION_94();
    v60(v59);
  }

  if (v40 == *MEMORY[0x1E69DADE0])
  {
    v55 = OUTLINED_FUNCTION_3_33();
    v56(v55);
    v57 = *v17;
    sub_1CA25B3D0(0, &qword_1EDB9F5E0, 0x1E696AD98);
    v45 = sub_1CA94CF98();
    [v134 setNumber_];
    goto LABEL_8;
  }

  if (v40 == *MEMORY[0x1E69DADF0])
  {
    v68 = OUTLINED_FUNCTION_3_33();
    v69(v68);
    sub_1CA5146AC(*v17, v17[1], v134);
    v70 = *(v12 + 8);
    v71 = OUTLINED_FUNCTION_94();
    v72(v71);
  }

  if (v40 == *MEMORY[0x1E69DADC8])
  {
    (*(v12 + 96))(v17, v9);
    v73 = sub_1CA948CB8();
    v133 = v127;
    v74 = OUTLINED_FUNCTION_1_0(v73);
    v75 = v12 + 96;
    v77 = v76;
    v79 = *(v78 + 64);
    MEMORY[0x1EEE9AC00](v74);
    OUTLINED_FUNCTION_6_0();
    v82 = v81 - v80;
    (*(v77 + 32))(v81 - v80, v17, v73);
    v83 = sub_1CA948C58();
    if (v128)
    {
      [v134 setAnotherDate_];
    }

    else
    {
      [v134 setDate_];
    }

    (*(v77 + 8))(v82, v73);
    (*(v75 - 88))(v20, v9);
  }

  else
  {
    if (v40 != *MEMORY[0x1E69DAD80])
    {
      if (v40 == *MEMORY[0x1E69DADB8])
      {
        v106 = OUTLINED_FUNCTION_3_33();
        v107(v106);
        v108 = sub_1CA948BA8();
        v109 = OUTLINED_FUNCTION_1_0(v108);
        v111 = v110;
        v113 = *(v112 + 64);
        MEMORY[0x1EEE9AC00](v109);
        OUTLINED_FUNCTION_6_0();
        v116 = v115 - v114;
        (*(v111 + 32))(v115 - v114, v17, v108);
        v117 = sub_1CA948B28();
        sub_1CA5146AC(v117, v118, v134);
        (*(v111 + 8))(v116, v108);
        v119 = *(v12 + 8);
        v120 = OUTLINED_FUNCTION_94();
        v121(v120);
      }

      else
      {
        type metadata accessor for TypedValueToRowTemplateValuePopulationError(0);
        OUTLINED_FUNCTION_5_27();
        sub_1CA4EE284(v122, v123);
        swift_allocError();
        (v132)(v124, v133, v21);
        swift_willThrow();
        v125 = *(v12 + 8);
        v126 = OUTLINED_FUNCTION_94();
        v125(v126);
        (v125)(v17, v9);
      }
    }

    v133 = v20;
    v84 = OUTLINED_FUNCTION_3_33();
    v85(v84);
    v86 = sub_1CA9488E8();
    v131 = v9;
    v87 = v86;
    v132 = v127;
    v88 = OUTLINED_FUNCTION_1_0(v86);
    v89 = v12;
    v91 = v90;
    v93 = *(v92 + 64);
    MEMORY[0x1EEE9AC00](v88);
    OUTLINED_FUNCTION_6_0();
    v96 = v95 - v94;
    (*(v91 + 32))(v95 - v94, v17, v87);
    v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4466D0, &qword_1CA991AA0);
    v98 = (*(*(v97 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
    MEMORY[0x1EEE9AC00](v97 - 8);
    v100 = &v127[-v99];
    sub_1CA9488D8();
    v101 = sub_1CA948CB8();
    result = __swift_getEnumTagSinglePayload(v100, 1, v101);
    if (result == 1)
    {
      __break(1u);
    }

    else
    {
      v102 = sub_1CA948C58();
      v103 = *(*(v101 - 8) + 8);
      v104 = OUTLINED_FUNCTION_9_24();
      v105(v104);
      [v134 setDate_];

      (*(v91 + 8))(v96, v87);
      (*(v89 + 8))(v133, v131);
    }
  }

  return result;
}

uint64_t sub_1CA4EEC58(uint64_t a1, uint64_t a2)
{
  v4 = sub_1CA94AC88();

  return __swift_getEnumTagSinglePayload(a1, a2, v4);
}

uint64_t sub_1CA4EECA0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1CA94AC88();

  return __swift_storeEnumTagSinglePayload(a1, a2, a3, v6);
}

uint64_t sub_1CA4EED10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  v5 = a4(319);
  if (v6 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSingleCaseWithLayoutString();
    *(*(a1 - 8) + 84) = *(*(v5 - 8) + 84);
    return 0;
  }

  return v5;
}

uint64_t sub_1CA4EEDBC()
{
  result = sub_1CA94ACD8();
  if (v1 <= 0x3F)
  {
    result = sub_1CA94B618();
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t static SplitScreenActionMigration.workflowNeedsMigration(_:fromClientVersion:)()
{
  v0 = sub_1CA94C368();
  v1 = sub_1CA94C368();
  v2 = WFBundleVersionLessThan(v0, v1);

  if (!v2)
  {
    return 0;
  }

  v3 = sub_1CA94C368();
  v4 = sub_1CA94C1A8();
  HasActionsWithIdentifier = WFWorkflowHasActionsWithIdentifier(v3, v4);

  return HasActionsWithIdentifier;
}

Swift::Void __swiftcall SplitScreenActionMigration.migrateWorkflow()()
{
  v1 = v0;
  v2 = [v0 actions];
  if (v2)
  {
    v3 = v2;
    v30 = sub_1CA948AF8();
    v31 = &v28;
    v29 = *(v30 - 8);
    v4 = *(v29 + 64);
    MEMORY[0x1EEE9AC00](v30);
    v6 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
    v32 = v3;
    sub_1CA94CF68();
    *(&v33 + 1) = 0x80000001CA9A2890;
    v34 = 0x80000001CA999EE0;
    *&v33 = 0xD00000000000001ALL;
    while (1)
    {
      while (1)
      {
        do
        {
          sub_1CA948AE8();
          if (!v41)
          {
            (*(v29 + 8))(v6, v30);
            [v1 finish];

            return;
          }

          sub_1CA2C0A20(&v40, v39);
          sub_1CA2C0A30();
        }

        while ((swift_dynamicCast() & 1) == 0);
        v7 = v37;
        v8 = [v1 actionIdentifierKey];
        v9 = sub_1CA94C3A8();
        v11 = v10;

        *&v37 = v9;
        *(&v37 + 1) = v11;
        v12 = sub_1CA94D848();
        v13 = OUTLINED_FUNCTION_3_34(v12);
        swift_unknownObjectRelease();
        if (v13)
        {
          sub_1CA94D258();
          swift_unknownObjectRelease();
        }

        else
        {
          v37 = 0u;
          v38 = 0u;
        }

        OUTLINED_FUNCTION_2_7();
        if (!v14)
        {
          sub_1CA2C0A74(v39);
          goto LABEL_17;
        }

        OUTLINED_FUNCTION_0_44();
        if (!swift_dynamicCast())
        {
          goto LABEL_17;
        }

        if (v35 == 0xD00000000000001FLL && v34 == v36)
        {
        }

        else
        {
          v16 = sub_1CA94D7F8();

          if ((v16 & 1) == 0)
          {
            goto LABEL_17;
          }
        }

        v37 = v33;
        v17 = sub_1CA94D848();
        v18 = OUTLINED_FUNCTION_3_34(v17);
        swift_unknownObjectRelease();
        if (v18)
        {
          sub_1CA94D258();
          swift_unknownObjectRelease();
        }

        else
        {
          v37 = 0u;
          v38 = 0u;
        }

        OUTLINED_FUNCTION_2_7();
        if (v19)
        {
          break;
        }

LABEL_36:

        sub_1CA2C0A74(v39);
      }

      OUTLINED_FUNCTION_0_44();
      if ((swift_dynamicCast() & 1) == 0)
      {
        goto LABEL_17;
      }

      v20 = v35;
      OUTLINED_FUNCTION_2_38();
      *&v37 = v21;
      *(&v37 + 1) = 0xEA00000000006F69;
      v22 = [v20 __swift_objectForKeyedSubscript_];
      swift_unknownObjectRelease();
      if (v22)
      {
        sub_1CA94D258();
        swift_unknownObjectRelease();
      }

      else
      {
        v37 = 0u;
        v38 = 0u;
      }

      OUTLINED_FUNCTION_2_7();
      if (!v23)
      {

        goto LABEL_36;
      }

      OUTLINED_FUNCTION_0_44();
      if (swift_dynamicCast())
      {
        if (v35 == 0x85E2202B209385E2 && v36 == 0xA900000000000094)
        {

LABEL_39:
          v26 = sub_1CA94C368();
          OUTLINED_FUNCTION_2_38();
          *&v39[0] = v27;
          *(&v39[0] + 1) = 0xEA00000000006F69;
          [v20 __swift_setObject_forKeyedSubscript_];

          swift_unknownObjectRelease();
          goto LABEL_40;
        }

        v25 = sub_1CA94D7F8();

        if (v25)
        {
          goto LABEL_39;
        }

LABEL_40:
      }

      else
      {

LABEL_17:
      }
    }
  }
}

id SplitScreenActionMigration.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id SplitScreenActionMigration.init()()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_init);
}

id SplitScreenActionMigration.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_1CA4EF5A4()
{
  v162 = sub_1CA25B3D0(0, &qword_1EC4419A0, off_1E836DD08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B0, &qword_1CA981320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA981420;
  v1 = MEMORY[0x1E69E6158];
  *(inited + 32) = @"ActionClass";
  *(inited + 40) = 0xD000000000000018;
  *(inited + 48) = 0x80000001CA9C5230;
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
  v172 = v12;
  v173 = (v12 + 15) & 0xFFFFFFFFFFFFFFF0;
  v13 = v154 - v173;
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v170 = qword_1EDB9F690;
  v14 = [qword_1EDB9F690 bundleURL];
  v15 = sub_1CA948BA8();
  v169 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v171 = (v16 + 15) & 0xFFFFFFFFFFFFFFF0;
  v17 = v154 - v171;
  sub_1CA948B68();

  v18 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v19 = sub_1CA2F9F14(v4, v6, v7, v9, 0, 0, v13, v17);
  v20 = sub_1CA25B3D0(0, &qword_1EDB9F6E0, 0x1E696B100);
  v168 = v20;
  *(inited + 80) = v19;
  *(inited + 104) = v20;
  *(inited + 112) = @"AppDefinition";
  v21 = @"AppDefinition";
  v22 = sub_1CA94C1E8();
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B8, &unk_1CA985870);
  *(inited + 120) = v22;
  *(inited + 144) = v23;
  *(inited + 152) = @"Description";
  v166 = sub_1CA25B3D0(0, &unk_1EC441790, off_1E836DD18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D0, &qword_1CA981390);
  v24 = swift_initStackObject();
  *(v24 + 16) = xmmword_1CA97EDF0;
  *(v24 + 32) = @"DescriptionInput";
  v25 = @"Description";
  v26 = @"DescriptionInput";
  v27 = sub_1CA94C438();
  v163 = v28;
  v164 = v27;
  v29 = sub_1CA94C438();
  *&v161 = v30;
  v165 = v154;
  MEMORY[0x1EEE9AC00](v29);
  v31 = v154 - v173;
  sub_1CA948D98();
  v32 = v170;
  v33 = [v170 bundleURL];
  v167 = inited;
  v34 = v33;
  MEMORY[0x1EEE9AC00](v33);
  v35 = v171;
  sub_1CA948B68();

  v36 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v24 + 40) = sub_1CA2F9F14(v164, v163, v29, v161, 0, 0, v31, v154 - v35);
  v37 = v168;
  *(v24 + 64) = v168;
  *(v24 + 72) = @"DescriptionSummary";
  v38 = @"DescriptionSummary";
  v39 = sub_1CA94C438();
  v163 = v40;
  v164 = v39;
  v41 = sub_1CA94C438();
  v43 = v42;
  v165 = v154;
  MEMORY[0x1EEE9AC00](v41);
  v44 = v154 - v173;
  sub_1CA948D98();
  v45 = [v32 bundleURL];
  MEMORY[0x1EEE9AC00](v45);
  sub_1CA948B68();

  v46 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v47 = sub_1CA2F9F14(v164, v163, v41, v43, 0, 0, v44, v154 - v35);
  *(v24 + 104) = v37;
  *(v24 + 80) = v47;
  type metadata accessor for DescriptionKey(0);
  sub_1CA29CF44(&qword_1EC441830, type metadata accessor for DescriptionKey);
  sub_1CA94C1E8();
  v48 = v166;
  v49 = sub_1CA6B3784();
  v50 = v167;
  v167[20] = v49;
  v50[23] = v48;
  v50[24] = @"Input";
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445FB0, &qword_1CA97EE10);
  v51 = swift_initStackObject();
  v161 = xmmword_1CA981350;
  *(v51 + 16) = xmmword_1CA981350;
  *(v51 + 32) = 0x656C7069746C754DLL;
  *(v51 + 40) = 0xE800000000000000;
  v52 = MEMORY[0x1E69E6370];
  *(v51 + 48) = 1;
  *(v51 + 72) = v52;
  strcpy((v51 + 80), "ParameterKey");
  *(v51 + 93) = 0;
  *(v51 + 94) = -5120;
  *(v51 + 96) = 0x636973754D4657;
  *(v51 + 104) = 0xE700000000000000;
  *(v51 + 120) = MEMORY[0x1E69E6158];
  *(v51 + 128) = 0x6465726975716552;
  *(v51 + 136) = 0xE800000000000000;
  *(v51 + 144) = 1;
  *(v51 + 168) = v52;
  *(v51 + 176) = 0x7365707954;
  *(v51 + 184) = 0xE500000000000000;
  v166 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
  *(v51 + 216) = v166;
  *(v51 + 192) = &unk_1F4A021B0;
  v53 = @"Input";
  v54 = sub_1CA94C1E8();
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC447DE0, &qword_1CA9917E0);
  v50[25] = v54;
  v50[28] = v55;
  v50[29] = @"InputPassthrough";
  *(v50 + 240) = 1;
  v50[33] = v52;
  v50[34] = @"Name";
  v56 = @"InputPassthrough";
  v57 = @"Name";
  v58 = sub_1CA94C438();
  v60 = v59;
  v61 = sub_1CA94C438();
  v63 = v62;
  MEMORY[0x1EEE9AC00](v61);
  v64 = v154 - v173;
  sub_1CA948D98();
  v65 = [v170 bundleURL];
  MEMORY[0x1EEE9AC00](v65);
  v66 = v154 - v171;
  sub_1CA948B68();

  v67 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v68 = sub_1CA2F9F14(v58, v60, v61, v63, 0, 0, v64, v66);
  v69 = v167;
  v167[35] = v68;
  v69[38] = v168;
  v69[39] = @"Parameters";
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443910, &unk_1CA981A00);
  v165 = swift_allocObject();
  v159 = xmmword_1CA981360;
  *(v165 + 1) = xmmword_1CA981360;
  v164 = sub_1CA25B3D0(0, &qword_1EDB9F710, off_1E836EDC0);
  v160 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443D80, &unk_1CA981BA0);
  v70 = swift_allocObject();
  *(v70 + 16) = xmmword_1CA981380;
  *(v70 + 32) = @"Class";
  *(v70 + 40) = 0xD000000000000016;
  *(v70 + 48) = 0x80000001CA99C4A0;
  v71 = MEMORY[0x1E69E6158];
  *(v70 + 64) = MEMORY[0x1E69E6158];
  *(v70 + 72) = @"DefaultValue";
  *(v70 + 80) = 1954047310;
  *(v70 + 88) = 0xE400000000000000;
  *(v70 + 104) = v71;
  *(v70 + 112) = @"DisallowedVariableTypes";
  *(v70 + 120) = &unk_1F4A021F0;
  *(v70 + 144) = v166;
  *(v70 + 152) = @"Items";
  v163 = swift_allocObject();
  *(v163 + 1) = v159;
  *&v159 = @"Class";
  v72 = @"Parameters";
  v73 = @"DefaultValue";
  v74 = @"DisallowedVariableTypes";
  v75 = @"Items";
  v76 = sub_1CA94C438();
  v156 = v77;
  v157 = v76;
  v78 = sub_1CA94C438();
  v155 = v79;
  v158 = v154;
  MEMORY[0x1EEE9AC00](v78);
  v80 = v154 - v173;
  sub_1CA948D98();
  v81 = v170;
  v82 = [v170 bundleURL];
  v154[1] = v154;
  MEMORY[0x1EEE9AC00](v82);
  v83 = v171;
  sub_1CA948B68();

  v84 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v85 = sub_1CA2F9F14(v157, v156, v78, v155, 0, 0, v80, v154 - v83);
  v163[4] = v85;
  v86 = sub_1CA94C438();
  v156 = v87;
  v157 = v86;
  v88 = sub_1CA94C438();
  v155 = v89;
  v158 = v154;
  MEMORY[0x1EEE9AC00](v88);
  v90 = v154 - v173;
  sub_1CA948D98();
  v91 = [v81 bundleURL];
  MEMORY[0x1EEE9AC00](v91);
  sub_1CA948B68();

  v92 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v93 = sub_1CA2F9F14(v157, v156, v88, v155, 0, 0, v90, v154 - v83);
  v94 = v163;
  v163[5] = v93;
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443830, &qword_1CA981580);
  *(v70 + 160) = v94;
  *(v70 + 184) = v95;
  *(v70 + 192) = @"Key";
  strcpy((v70 + 200), "WFWhenToPlay");
  *(v70 + 213) = 0;
  *(v70 + 214) = -5120;
  *(v70 + 224) = MEMORY[0x1E69E6158];
  *(v70 + 232) = @"Label";
  v96 = @"Key";
  v97 = @"Label";
  v157 = v96;
  v156 = v97;
  v98 = sub_1CA94C438();
  v100 = v99;
  v101 = sub_1CA94C438();
  v103 = v102;
  v163 = v154;
  MEMORY[0x1EEE9AC00](v101);
  v104 = v154 - v173;
  sub_1CA948D98();
  v105 = [v170 bundleURL];
  MEMORY[0x1EEE9AC00](v105);
  v106 = v154 - v171;
  sub_1CA948B68();

  v107 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v108 = sub_1CA2F9F14(v98, v100, v101, v103, 0, 0, v104, v106);
  *(v70 + 264) = v168;
  *(v70 + 240) = v108;
  _s3__C3KeyVMa_0(0);
  v163 = v109;
  v158 = sub_1CA29CF44(&qword_1EDB9F780, _s3__C3KeyVMa_0);
  sub_1CA94C1E8();
  v165[4] = sub_1CA2F864C();
  v110 = swift_initStackObject();
  *(v110 + 16) = v161;
  *(v110 + 32) = v159;
  *(v110 + 40) = 0xD000000000000019;
  *(v110 + 48) = 0x80000001CA99B030;
  v111 = MEMORY[0x1E69E6158];
  v112 = v157;
  *(v110 + 64) = MEMORY[0x1E69E6158];
  *(v110 + 72) = v112;
  *(v110 + 80) = 0x636973754D4657;
  *(v110 + 88) = 0xE700000000000000;
  v113 = v156;
  *(v110 + 104) = v111;
  *(v110 + 112) = v113;
  v160 = sub_1CA94C438();
  *&v159 = v114;
  v157 = sub_1CA94C438();
  v116 = v115;
  *&v161 = v154;
  MEMORY[0x1EEE9AC00](v157);
  v117 = v173;
  sub_1CA948D98();
  v118 = v170;
  v119 = [v170 bundleURL];
  MEMORY[0x1EEE9AC00](v119);
  v120 = v154 - v171;
  sub_1CA948B68();

  v121 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v110 + 120) = sub_1CA2F9F14(v160, v159, v157, v116, 0, 0, v154 - v117, v120);
  v122 = v168;
  *(v110 + 144) = v168;
  *(v110 + 152) = @"Placeholder";
  v123 = @"Placeholder";
  v160 = sub_1CA94C438();
  *&v159 = v124;
  v125 = sub_1CA94C438();
  v127 = v126;
  *&v161 = v154;
  MEMORY[0x1EEE9AC00](v125);
  v128 = v154 - v117;
  sub_1CA948D98();
  v129 = [v118 bundleURL];
  MEMORY[0x1EEE9AC00](v129);
  v130 = v154 - v171;
  sub_1CA948B68();

  v131 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v132 = sub_1CA2F9F14(v160, v159, v125, v127, 0, 0, v128, v130);
  *(v110 + 184) = v122;
  *(v110 + 160) = v132;
  sub_1CA94C1E8();
  v133 = sub_1CA2F864C();
  v134 = v165;
  v165[5] = v133;
  v135 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D8, &qword_1CA981398);
  v136 = v167;
  v167[40] = v134;
  v136[43] = v135;
  v136[44] = @"ParameterSummary";
  v137 = @"ParameterSummary";
  v138 = sub_1CA94C438();
  v140 = v139;
  v141 = sub_1CA94C438();
  v143 = v142;
  MEMORY[0x1EEE9AC00](v141);
  v144 = v154 - v173;
  sub_1CA948D98();
  v145 = [v170 bundleURL];
  MEMORY[0x1EEE9AC00](v145);
  v146 = v154 - v171;
  sub_1CA948B68();

  v147 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v148 = sub_1CA2F9F14(v138, v140, v141, v143, 0, 0, v144, v146);
  v149 = [objc_allocWithZone(WFActionParameterSummary) initWithString_];

  v150 = sub_1CA25B3D0(0, &unk_1EC441800, off_1E836DD60);
  v151 = v167;
  v167[45] = v149;
  v151[48] = v150;
  v151[49] = @"RequiredResources";
  v151[53] = v166;
  v151[50] = &unk_1F4A02220;
  type metadata accessor for Key(0);
  sub_1CA29CF44(&qword_1EDB9FB10, type metadata accessor for Key);
  v152 = @"RequiredResources";
  sub_1CA94C1E8();
  return sub_1CA332510();
}

uint64_t sub_1CA4F0818(uint64_t result, uint64_t a2)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else if (a2)
  {
    v3 = result;
    result = sub_1CA94C6C8();
    v4 = 0;
    *(result + 16) = a2;
    v5 = vdupq_n_s64(a2 - 1);
    do
    {
      v6 = vmovn_s64(vcgeq_u64(v5, vorrq_s8(vdupq_n_s64(v4), xmmword_1CA986F60)));
      v7 = result + 8 * v4;
      if (v6.i8[0])
      {
        *(v7 + 32) = v3;
      }

      if (v6.i8[4])
      {
        *(v7 + 40) = v3;
      }

      v4 += 2;
    }

    while (((a2 + 1) & 0xFFFFFFFFFFFFFFFELL) != v4);
  }

  else
  {
    return MEMORY[0x1E69E7CC0];
  }

  return result;
}

uint64_t sub_1CA4F08BC(uint64_t result, double a2)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v2 = result;
    if (result)
    {
      result = sub_1CA94C6C8();
      v4 = 0;
      *(result + 16) = v2;
      v5 = vdupq_n_s64(v2 - 1);
      do
      {
        v6 = vmovn_s64(vcgeq_u64(v5, vorrq_s8(vdupq_n_s64(v4), xmmword_1CA986F60)));
        v7 = result + 8 * v4;
        if (v6.i8[0])
        {
          *(v7 + 32) = a2;
        }

        if (v6.i8[4])
        {
          *(v7 + 40) = a2;
        }

        v4 += 2;
      }

      while (((v2 + 1) & 0xFFFFFFFFFFFFFFFELL) != v4);
    }

    else
    {
      return MEMORY[0x1E69E7CC0];
    }
  }

  return result;
}

uint64_t sub_1CA4F0968(uint64_t *a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_1CA62787C(v2);
    v2 = v3;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  result = sub_1CA4F22AC(v6);
  *a1 = v2;
  return result;
}

id static SemanticSymbolIndex.index()()
{
  v1 = sub_1CA4F0A3C();
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  sub_1CA4F0BAC(v2);
  v4 = v3;
  v5 = objc_allocWithZone(v0);
  v6 = sub_1CA4F107C(v2, v4);

  return v6;
}

id sub_1CA4F0A3C()
{
  v0 = objc_opt_self();
  v1 = sub_1CA948E58();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CA948D98();
  sub_1CA948D48();
  (*(v2 + 8))(v5, v1);
  v6 = sub_1CA94C368();

  v7 = [v0 baseLanguageFromLanguage_];

  if (!v7)
  {
    sub_1CA94C3A8();
    v7 = sub_1CA94C368();
  }

  v8 = [objc_opt_self() wordEmbeddingForLanguage_];

  return v8;
}

void sub_1CA4F0BAC(void *a1)
{
  v1 = 0;
  v2 = MEMORY[0x1E69E7CC0];
  while (v1 != 3)
  {
    v3 = qword_1F4A02250[v1 + 4];
    v4 = WFGlyphCharactersInSection();
    sub_1CA4F3484();
    v5 = sub_1CA94C658();

    if (v5 >> 62)
    {
      v6 = sub_1CA94D328();
    }

    else
    {
      v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v7 = v2 >> 62;
    if (v2 >> 62)
    {
      v8 = sub_1CA94D328();
    }

    else
    {
      v8 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v9 = v8 + v6;
    if (__OFADD__(v8, v6))
    {
      __break(1u);
LABEL_61:
      __break(1u);
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
      return;
    }

    v57 = v6;
    if (!swift_isUniquelyReferenced_nonNull_bridgeObject())
    {
      if (v7)
      {
LABEL_15:
        sub_1CA94D328();
      }

      else
      {
        v10 = v2 & 0xFFFFFFFFFFFFFF8;
LABEL_14:
        v11 = *(v10 + 16);
      }

      v2 = sub_1CA94D488();
      v10 = v2 & 0xFFFFFFFFFFFFFF8;
      goto LABEL_17;
    }

    if (v7)
    {
      goto LABEL_15;
    }

    v10 = v2 & 0xFFFFFFFFFFFFFF8;
    if (v9 > *((v2 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      goto LABEL_14;
    }

LABEL_17:
    ++v1;
    v12 = *(v10 + 16);
    v13 = (*(v10 + 24) >> 1) - v12;
    v14 = v10 + 8 * v12;
    if (v5 >> 62)
    {
      v17 = sub_1CA94D328();
      if (!v17)
      {
        goto LABEL_31;
      }

      v18 = v17;
      v19 = sub_1CA94D328();
      if (v13 < v19)
      {
        goto LABEL_67;
      }

      if (v18 < 1)
      {
        goto LABEL_68;
      }

      v55 = v19;
      v20 = v14 + 32;
      sub_1CA4F34C8();
      for (i = 0; i != v18; ++i)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC444B70, &unk_1CA989B70);
        v22 = sub_1CA276BDC(v58, i, v5);
        v24 = *v23;
        v22(v58, 0);
        *(v20 + 8 * i) = v24;
      }

      v15 = v55;
LABEL_27:

      if (v15 < v57)
      {
        goto LABEL_61;
      }

      if (v15 > 0)
      {
        v25 = *(v10 + 16);
        v26 = __OFADD__(v25, v15);
        v27 = v25 + v15;
        if (v26)
        {
          goto LABEL_65;
        }

        *(v10 + 16) = v27;
      }
    }

    else
    {
      v15 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v15)
      {
        if (v13 < v15)
        {
          goto LABEL_66;
        }

        v16 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
        swift_arrayInitWithCopy();
        goto LABEL_27;
      }

LABEL_31:

      if (v57 > 0)
      {
        goto LABEL_61;
      }
    }
  }

  v28 = sub_1CA25B410();
  v29 = 0;
  v30 = MEMORY[0x1E69E7CC0];
  while (v28 != v29)
  {
    if ((v2 & 0xC000000000000001) != 0)
    {
      v31 = MEMORY[0x1CCAA22D0](v29, v2);
    }

    else
    {
      if (v29 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_63;
      }

      v31 = *(v2 + 8 * v29 + 32);
    }

    v32 = v31;
    if (__OFADD__(v29, 1))
    {
      goto LABEL_62;
    }

    v33 = [v31 unsignedIntegerValue];

    if (v33 >> 16)
    {
      goto LABEL_64;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v35 = *(v30 + 16);
      sub_1CA2E6688();
      v30 = v36;
    }

    v34 = *(v30 + 16);
    if (v34 >= *(v30 + 24) >> 1)
    {
      sub_1CA2E6688();
      v30 = v37;
    }

    *(v30 + 16) = v34 + 1;
    *(v30 + 2 * v34 + 32) = v33;
    ++v29;
  }

  v38 = *(v30 + 16);
  if (v38)
  {
    v39 = (v30 + 32);
    v40 = MEMORY[0x1E69E7CC0];
    do
    {
      v41 = *v39++;
      sub_1CA4F1C54(v41, a1);
      if (v43)
      {
        v46 = v42;
        v47 = v43;
        v48 = v44;
        v49 = v45;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v52 = *(v40 + 16);
          sub_1CA2E65A4();
          v40 = v53;
        }

        v50 = *(v40 + 16);
        if (v50 >= *(v40 + 24) >> 1)
        {
          sub_1CA2E65A4();
          v40 = v54;
        }

        *(v40 + 16) = v50 + 1;
        v51 = v40 + 32 * v50;
        *(v51 + 32) = v46;
        *(v51 + 40) = v47;
        *(v51 + 48) = v48;
        *(v51 + 56) = v49;
      }

      --v38;
    }

    while (v38);
  }

  else
  {
    v40 = MEMORY[0x1E69E7CC0];
  }

  sub_1CA2E340C(v40);
}

id sub_1CA4F107C(void *a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  *&v2[OBJC_IVAR___WFSemanticSymbolSearch_embedding] = a1;
  v6 = objc_allocWithZone(MEMORY[0x1E6977A88]);
  v7 = a1;
  v8 = [v6 initWithUnit_];
  *&v2[OBJC_IVAR___WFSemanticSymbolSearch_tokenizer] = v8;
  *&v2[OBJC_IVAR___WFSemanticSymbolSearch_symbols] = a2;
  v11.receiver = v2;
  v11.super_class = ObjectType;
  v9 = objc_msgSendSuper2(&v11, sel_init);

  return v9;
}

uint64_t SemanticSymbolIndex.search(for:excluding:)(uint64_t a1, unint64_t a2, uint64_t a3)
{
  __C[2] = *MEMORY[0x1E69E9840];
  v3 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v3 = a1 & 0xFFFFFFFFFFFFLL;
  }

  v4 = MEMORY[0x1E69E7CC0];
  if (!v3)
  {
    goto LABEL_62;
  }

  v121 = a3;
  __C[0] = a1;
  __C[1] = a2;
  sub_1CA27BAF0();
  v123 = sub_1CA94D198();
  v124 = v5;
  v6 = sub_1CA948868();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v117 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CA948858();
  v11 = sub_1CA94D1A8();
  v13 = v12;
  (*(v7 + 8))(v10, v6);

  v14 = *(v122 + OBJC_IVAR___WFSemanticSymbolSearch_tokenizer);
  v15 = sub_1CA40FF50(v11, v13);

  v16 = *(v15 + 16);
  if (v16)
  {
    __C[0] = v4;
    sub_1CA271524();
    v17 = 0;
    v4 = __C[0];
    v18 = (v15 + 56);
    while (v17 < *(v15 + 16))
    {
      v19 = *(v18 - 3);
      v20 = *(v18 - 2);
      v21 = *(v18 - 1);
      v22 = *v18;
      sub_1CA94C218();
      v23 = MEMORY[0x1CCAA1280](v19, v20, v21, v22);
      v25 = v24;

      __C[0] = v4;
      v27 = *(v4 + 16);
      v26 = *(v4 + 24);
      if (v27 >= v26 >> 1)
      {
        OUTLINED_FUNCTION_0_45(v26);
        sub_1CA271524();
        v4 = __C[0];
      }

      ++v17;
      *(v4 + 16) = v27 + 1;
      v28 = v4 + 16 * v27;
      *(v28 + 32) = v23;
      *(v28 + 40) = v25;
      v18 += 4;
      if (v16 == v17)
      {
        goto LABEL_10;
      }
    }

LABEL_64:
    __break(1u);
LABEL_65:
    __break(1u);
LABEL_66:
    __break(1u);
LABEL_67:
    __break(1u);
    goto LABEL_68;
  }

LABEL_10:

  v29 = *(v4 + 16);
  v30 = *(v122 + OBJC_IVAR___WFSemanticSymbolSearch_embedding);
  v31 = 0;
  v32 = MEMORY[0x1E69E7CC0];
LABEL_11:
  v33 = (v4 + 40 + 16 * v31);
  while (v29 != v31)
  {
    if (v31 >= *(v4 + 16))
    {
      __break(1u);
      goto LABEL_64;
    }

    ++v31;
    v34 = v33 + 2;
    v35 = *(v33 - 1);
    v36 = *v33;
    sub_1CA94C218();
    v37 = sub_1CA94CB88();

    v33 = v34;
    if (v37)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v39 = *(v32 + 16);
        sub_1CA2E6800();
        v32 = v40;
      }

      v38 = *(v32 + 16);
      if (v38 >= *(v32 + 24) >> 1)
      {
        sub_1CA2E6800();
        v32 = v41;
      }

      *(v32 + 16) = v38 + 1;
      *(v32 + 8 * v38 + 32) = v37;
      goto LABEL_11;
    }
  }

  sub_1CA4F1904(v32);
  v43 = v42;

  if (!v43)
  {
LABEL_61:
    v4 = MEMORY[0x1E69E7CC0];
LABEL_62:
    v115 = *MEMORY[0x1E69E9840];
    return v4;
  }

  v44 = sub_1CA94C218();
  v45 = sub_1CA2E34F4(v44);
  v46 = *(v122 + OBJC_IVAR___WFSemanticSymbolSearch_symbols);
  v47 = sub_1CA94C218();
  v48 = sub_1CA4F2D04(v47, v45);
  v49 = v48;
  v119 = 0;
  v50 = v48 + 56;
  v51 = 1 << v48[32];
  v52 = -1;
  if (v51 < 64)
  {
    v52 = ~(-1 << v51);
  }

  v53 = v52 & *(v48 + 7);
  v54 = (v51 + 63) >> 6;

  v56 = 0;
  v57 = MEMORY[0x1E69E7CC0];
  v122 = v55;
  while (v53)
  {
    v58 = v53;
LABEL_30:
    v53 = (v58 - 1) & v58;
    v60 = *(v43 + 16);
    if (v60)
    {
      v61 = *(v49 + 6) + ((v56 << 11) | (32 * __clz(__rbit64(v58))));
      v62 = *(v61 + 24);
      if (v60 == *(v62 + 16))
      {
        LODWORD(v121) = *(v61 + 16);
        v63 = *(v61 + 8);
        v120 = *v61;
        __C[0] = 0x7FF8000000000000;
        sub_1CA94C218();
        sub_1CA94C218();
        vDSP_dotprD((v43 + 32), 1, (v43 + 32), 1, __C, v60);
        v64 = *__C;
        v65 = *(v62 + 16);
        __C[0] = 0x7FF8000000000000;
        OUTLINED_FUNCTION_1_35((v62 + 32), v66, v67, v68, v69, v65);
        v74 = sqrt(v64 * *__C);
        if (v74 == 0.0)
        {

          v49 = v122;
        }

        else
        {
          v75 = *(v43 + 16);
          if (v75 != *(v62 + 16))
          {
            goto LABEL_70;
          }

          v76 = v74;
          __C[0] = 0x7FF8000000000000;
          OUTLINED_FUNCTION_1_35((v43 + 32), v70, v71, v72, v73, v75);
          v77 = *__C;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v49 = v122;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v84 = *(v57 + 16);
            sub_1CA2E6744();
            v57 = v85;
          }

          v79 = v121;
          v80 = v120;
          v81 = *(v57 + 16);
          v82 = v81 + 1;
          if (v81 >= *(v57 + 24) >> 1)
          {
            v118 = v81 + 1;
            sub_1CA2E6744();
            v82 = v118;
            v80 = v120;
            v79 = v121;
            v57 = v86;
          }

          *(v57 + 16) = v82;
          v83 = v57 + 40 * v81;
          *(v83 + 32) = v77 / v76;
          *(v83 + 40) = v80;
          *(v83 + 48) = v63;
          *(v83 + 56) = v79;
          *(v83 + 64) = v62;
        }
      }
    }
  }

  while (1)
  {
    v59 = v56 + 1;
    if (__OFADD__(v56, 1))
    {
      goto LABEL_65;
    }

    if (v59 >= v54)
    {
      break;
    }

    v58 = *&v50[8 * v59];
    ++v56;
    if (v58)
    {
      v56 = v59;
      goto LABEL_30;
    }
  }

  v87 = 0;
  v88 = *(v57 + 16);
  v89 = MEMORY[0x1E69E7CC0];
LABEL_41:
  v90 = 40 * v87;
  while (v88 != v87)
  {
    if (v87 >= *(v57 + 16))
    {
      goto LABEL_66;
    }

    ++v87;
    v91 = v90 + 40;
    v92 = *(v57 + v90 + 32);
    v90 += 40;
    if (v92 > 0.4)
    {
      v94 = *(v57 + v91);
      v93 = *(v57 + v91 + 8);
      v95 = *(v57 + v91 + 16);
      v96 = *(v57 + v91 + 24);
      sub_1CA94C218();
      sub_1CA94C218();
      v97 = swift_isUniquelyReferenced_nonNull_native();
      __C[0] = v89;
      if ((v97 & 1) == 0)
      {
        v98 = *(v89 + 16);
        sub_1CA2B9004();
        v89 = __C[0];
      }

      v100 = *(v89 + 16);
      v99 = *(v89 + 24);
      if (v100 >= v99 >> 1)
      {
        OUTLINED_FUNCTION_0_45(v99);
        sub_1CA2B9004();
        v89 = __C[0];
      }

      *(v89 + 16) = v100 + 1;
      v101 = v89 + 40 * v100;
      *(v101 + 32) = v92;
      *(v101 + 40) = v94;
      *(v101 + 48) = v93;
      *(v101 + 56) = v95;
      *(v101 + 64) = v96;
      goto LABEL_41;
    }
  }

  __C[0] = v89;

  v102 = v119;
  sub_1CA4F0968(__C);
  if (!v102)
  {

    sub_1CA4F1AB8(6, __C[0]);
    v106 = v105 >> 1;
    v107 = (v105 >> 1) - v104;
    if (__OFSUB__(v105 >> 1, v104))
    {
LABEL_68:
      __break(1u);
      goto LABEL_69;
    }

    if (v107)
    {
      v108 = v103;
      v109 = v104;
      __C[0] = MEMORY[0x1E69E7CC0];
      sub_1CA2B8FE4(0, v107 & ~(v107 >> 63), 0);
      if (v107 < 0)
      {
LABEL_69:
        __break(1u);
LABEL_70:
        __break(1u);
      }

      v4 = __C[0];
      v110 = (v108 + 40 * v109 + 24);
      do
      {
        if (v109 >= v106)
        {
          goto LABEL_67;
        }

        v111 = *v110;
        __C[0] = v4;
        v113 = *(v4 + 16);
        v112 = *(v4 + 24);
        if (v113 >= v112 >> 1)
        {
          v114 = OUTLINED_FUNCTION_0_45(v112);
          sub_1CA2B8FE4(v114, v113 + 1, 1);
          v4 = __C[0];
        }

        *(v4 + 16) = v113 + 1;
        *(v4 + 2 * v113 + 32) = v111;
        ++v109;
        v110 += 20;
      }

      while (v106 != v109);
      swift_unknownObjectRelease();
      goto LABEL_62;
    }

    swift_unknownObjectRelease();
    goto LABEL_61;
  }

  __break(1u);
  return result;
}

void sub_1CA4F1904(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = 0;
    v3 = a1 + 32;
    v4 = *(*(a1 + 32) + 16);
    while (v1 != v2)
    {
      v5 = *(v3 + 8 * v2++);
      if (*(v5 + 16) != v4)
      {
        return;
      }
    }

    v6 = sub_1CA4F08BC(v4, 0.0);
    v7 = 0;
    v8 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      v9 = *(v3 + 8 * v7);
      v10 = *(v6 + 16);
      sub_1CA94C218();
      if (v10)
      {
        v11 = sub_1CA94C6C8();
        *(v11 + 16) = v10;
        v12 = *(v6 + 16);
      }

      else
      {
        v12 = 0;
        v11 = v8;
      }

      if (v12 != v10)
      {
        break;
      }

      if (*(v9 + 16) != v10)
      {
        goto LABEL_16;
      }

      vDSP_vaddD((v6 + 32), 1, (v9 + 32), 1, (v11 + 32), 1, v10);
      v13 = *(v6 + 16);
      if (v10 < v13)
      {
        goto LABEL_17;
      }

      ++v7;
      *(v11 + 16) = v13;

      v6 = v11;
      if (v1 == v7)
      {
        v14 = MEMORY[0x1EEE9AC00](*(v11 + 16));
        sub_1CA4F3234(v14, sub_1CA4F3464);

        return;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
  }
}

uint64_t sub_1CA4F1AB8(uint64_t result, uint64_t a2)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v3 = *(a2 + 16);
    result = sub_1CA4F33FC(0, result, v3);
    if (v4)
    {
      v5 = v3;
    }

    else
    {
      v5 = result;
    }

    if ((v5 & 0x8000000000000000) == 0)
    {
      v6 = sub_1CA6A6B30(0, v5, a2);

      return v6;
    }
  }

  __break(1u);
  return result;
}

id SemanticSymbolIndex.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id SemanticSymbolIndex.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_1CA4F1C54(uint64_t a1, void *a2)
{
  v3 = WFNameForGlyphCharacter();
  if (v3)
  {
    v4 = v3;
    v46 = a2;
    sub_1CA94C3A8();

    sub_1CA27BAF0();
    sub_1CA94D198();
    v5 = sub_1CA94D248();

    v6 = 0;
    v47 = *(v5 + 16);
    v7 = MEMORY[0x1E69E7CC0];
LABEL_3:
    while (v6 != v47)
    {
      if (v6 >= *(v5 + 16))
      {
        __break(1u);
LABEL_36:
        __break(1u);
        return;
      }

      v8 = (v5 + 32 + 32 * v6);
      v9 = *v8;
      v10 = v8[1];
      v11 = v8[2];
      v12 = v8[3];
      ++v6;
      sub_1CA94C218();
      if (sub_1CA94D0F8() != 1)
      {
        v13 = v9;
        while ((v13 ^ v10) >= 0x4000)
        {
          sub_1CA94D108();
          v13 = sub_1CA94D0C8();
          sub_1CA94C218();
          sub_1CA94C2B8();
          v15 = v14;
          swift_bridgeObjectRelease_n();
          if (v15)
          {
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v16 = v7[2];
              sub_1CA2B9024();
            }

            v17 = v7[2];
            if (v17 >= v7[3] >> 1)
            {
              sub_1CA2B9024();
            }

            v7[2] = v17 + 1;
            v18 = &v7[4 * v17];
            v18[4] = v9;
            v18[5] = v10;
            v18[6] = v11;
            v18[7] = v12;
            goto LABEL_3;
          }
        }
      }
    }

    v19 = v7[2];
    if (v19)
    {
      v48 = MEMORY[0x1E69E7CC0];
      sub_1CA271524();
      v20 = v48;
      v21 = v7 + 7;
      do
      {
        v22 = *(v21 - 3);
        v23 = *(v21 - 2);
        v24 = *(v21 - 1);
        v25 = *v21;
        sub_1CA94C218();
        v26 = MEMORY[0x1CCAA1280](v22, v23, v24, v25);
        v28 = v27;

        v29 = *(v48 + 16);
        if (v29 >= *(v48 + 24) >> 1)
        {
          sub_1CA271524();
        }

        *(v48 + 16) = v29 + 1;
        v30 = v48 + 16 * v29;
        *(v30 + 32) = v26;
        *(v30 + 40) = v28;
        v21 += 4;
        --v19;
      }

      while (v19);
    }

    else
    {

      v20 = MEMORY[0x1E69E7CC0];
    }

    v31 = *(v20 + 16);
    v32 = v46;
    v33 = 0;
    v34 = MEMORY[0x1E69E7CC0];
LABEL_24:
    v35 = (v20 + 40 + 16 * v33);
    while (v31 != v33)
    {
      if (v33 >= *(v20 + 16))
      {
        goto LABEL_36;
      }

      ++v33;
      v36 = v35 + 2;
      v38 = *(v35 - 1);
      v37 = *v35;
      sub_1CA94C218();
      v39 = sub_1CA94CB88();

      v35 = v36;
      if (v39)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v41 = *(v34 + 16);
          sub_1CA2E6800();
          v34 = v42;
        }

        v40 = *(v34 + 16);
        if (v40 >= *(v34 + 24) >> 1)
        {
          sub_1CA2E6800();
          v34 = v43;
        }

        *(v34 + 16) = v40 + 1;
        *(v34 + 8 * v40 + 32) = v39;
        goto LABEL_24;
      }
    }

    sub_1CA4F1904(v34);
    v45 = v44;

    if (!v45)
    {
    }
  }

  else
  {
  }
}

uint64_t sub_1CA4F20AC(uint64_t a1, uint64_t a2, __int16 a3, uint64_t a4, uint64_t a5, uint64_t a6, __int16 a7, uint64_t a8)
{
  v12 = a1 == a5 && a2 == a6;
  if (!v12 && (sub_1CA94D7F8() & 1) == 0 || a3 != a7)
  {
    return 0;
  }

  return sub_1CA2B6D50(a4, a8);
}

uint64_t sub_1CA4F2138(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_1CA94C458();
  sub_1CA94D948();

  return sub_1CA2BBC0C(a1, a5);
}

uint64_t sub_1CA4F2190(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1CA94D918();
  sub_1CA94C458();
  sub_1CA94D948();
  sub_1CA2BBC0C(v6, a4);
  return sub_1CA94D968();
}

uint64_t sub_1CA4F2228()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 24);
  v4 = *(v0 + 16);
  sub_1CA94D918();
  sub_1CA4F2138(v6, v1, v2, v4, v3);
  return sub_1CA94D968();
}

uint64_t sub_1CA4F22AC(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_1CA94D778();
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
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC444000, &unk_1CA981AC0);
        v6 = sub_1CA94C6C8();
        *(v6 + 16) = v5;
      }

      v7[0] = (v6 + 32);
      v7[1] = v5;
      sub_1CA4F2444(v7, v8, a1, v4);
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
    return sub_1CA4F23B0(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_1CA4F23B0(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = *a4;
    v5 = *a4 + 40 * a3 - 40;
    v6 = result - a3;
    while (2)
    {
      v7 = *(v4 + 40 * a3);
      v8 = v6;
      v9 = v5;
      do
      {
        v10 = v9 + 40;
        if (*v9 >= v7)
        {
          break;
        }

        if (!v4)
        {
          __break(1u);
          return result;
        }

        v11 = *(v9 + 48);
        v12 = *(v9 + 56);
        v13 = *(v9 + 64);
        result = *(v9 + 72);
        v14 = *(v9 + 16);
        *v10 = *v9;
        *(v9 + 56) = v14;
        v15 = *(v9 + 32);
        *v9 = v7;
        *(v9 + 8) = v11;
        *(v9 + 16) = v12;
        *(v9 + 24) = v13;
        *(v9 + 32) = result;
        v9 -= 40;
        *(v10 + 32) = v15;
      }

      while (!__CFADD__(v8++, 1));
      ++a3;
      v5 += 40;
      --v6;
      if (a3 != a2)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

void sub_1CA4F2444(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v99 = MEMORY[0x1E69E7CC0];
  v6 = a3[1];
  if (v6 >= 1)
  {
    v7 = 0;
    v8 = MEMORY[0x1E69E7CC0];
    v94 = a4;
    while (1)
    {
      v9 = v7 + 1;
      if (v7 + 1 < v6)
      {
        v10 = *(*a3 + 40 * v9);
        v11 = (*a3 + 40 * v7);
        v13 = *v11;
        v12 = v11 + 10;
        v14 = v13;
        v15 = v7 + 2;
        v16 = v10;
        while (1)
        {
          v17 = v15;
          if (++v9 >= v6)
          {
            break;
          }

          v18 = *v12;
          v12 += 5;
          v19 = (v14 < v10) ^ (v16 >= v18);
          ++v15;
          v16 = v18;
          if ((v19 & 1) == 0)
          {
            goto LABEL_9;
          }
        }

        v9 = v6;
LABEL_9:
        if (v14 < v10)
        {
          if (v9 < v7)
          {
            goto LABEL_108;
          }

          if (v7 < v9)
          {
            if (v6 >= v17)
            {
              v6 = v17;
            }

            v20 = 40 * v6 - 16;
            v21 = 40 * v7 + 32;
            v22 = v9;
            v23 = v7;
            do
            {
              if (v23 != --v22)
              {
                v24 = *a3;
                if (!*a3)
                {
                  goto LABEL_113;
                }

                v25 = (v24 + v21);
                v26 = *(v24 + v21 - 32);
                v27 = v24 + v20;
                v28 = *(v25 - 3);
                v29 = *(v25 - 2);
                v30 = *(v25 - 4);
                v31 = *v25;
                v32 = *(v27 + 8);
                v33 = *(v27 - 8);
                *(v25 - 2) = *(v27 - 24);
                *(v25 - 1) = v33;
                *v25 = v32;
                *(v27 - 24) = v26;
                *(v27 - 16) = v28;
                *(v27 - 8) = v29;
                *v27 = v30;
                *(v27 + 8) = v31;
              }

              ++v23;
              v20 -= 40;
              v21 += 40;
            }

            while (v23 < v22);
            v6 = a3[1];
          }
        }
      }

      if (v9 < v6)
      {
        if (__OFSUB__(v9, v7))
        {
          goto LABEL_107;
        }

        if (v9 - v7 < a4)
        {
          if (__OFADD__(v7, a4))
          {
            goto LABEL_109;
          }

          if (v7 + a4 < v6)
          {
            v6 = v7 + a4;
          }

          if (v6 < v7)
          {
LABEL_110:
            __break(1u);
LABEL_111:
            __break(1u);
LABEL_112:
            __break(1u);
LABEL_113:
            __break(1u);
LABEL_114:
            __break(1u);
LABEL_115:
            __break(1u);
            return;
          }

          if (v9 != v6)
          {
            v34 = *a3;
            v35 = *a3 + 40 * v9 - 40;
            v36 = v7 - v9;
            do
            {
              v37 = *(v34 + 40 * v9);
              v38 = v36;
              v39 = v35;
              do
              {
                v40 = v39 + 40;
                if (*v39 >= v37)
                {
                  break;
                }

                if (!v34)
                {
                  goto LABEL_111;
                }

                v41 = *(v39 + 48);
                v42 = *(v39 + 56);
                v43 = *(v39 + 64);
                v44 = *(v39 + 72);
                v45 = *(v39 + 16);
                *v40 = *v39;
                *(v39 + 56) = v45;
                v46 = *(v39 + 32);
                *v39 = v37;
                *(v39 + 8) = v41;
                *(v39 + 16) = v42;
                *(v39 + 24) = v43;
                *(v39 + 32) = v44;
                v39 -= 40;
                *(v40 + 32) = v46;
              }

              while (!__CFADD__(v38++, 1));
              ++v9;
              v35 += 40;
              --v36;
            }

            while (v9 != v6);
            v9 = v6;
          }
        }
      }

      if (v9 < v7)
      {
        goto LABEL_106;
      }

      v96 = v9;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v91 = v8[2];
        sub_1CA2E49C0();
        v8 = v92;
      }

      v48 = v8[2];
      v49 = v48 + 1;
      if (v48 >= v8[3] >> 1)
      {
        sub_1CA2E49C0();
        v8 = v93;
      }

      v8[2] = v49;
      v50 = v8 + 4;
      v51 = &v8[2 * v48 + 4];
      *v51 = v7;
      v51[1] = v96;
      v97 = *a1;
      if (!*a1)
      {
        goto LABEL_114;
      }

      if (v48)
      {
        while (1)
        {
          v52 = v49 - 1;
          v53 = &v50[2 * v49 - 2];
          v54 = &v8[2 * v49];
          if (v49 >= 4)
          {
            break;
          }

          if (v49 == 3)
          {
            v55 = v8[4];
            v56 = v8[5];
            v65 = __OFSUB__(v56, v55);
            v57 = v56 - v55;
            v58 = v65;
LABEL_56:
            if (v58)
            {
              goto LABEL_96;
            }

            v70 = *v54;
            v69 = v54[1];
            v71 = __OFSUB__(v69, v70);
            v72 = v69 - v70;
            v73 = v71;
            if (v71)
            {
              goto LABEL_99;
            }

            v74 = v53[1];
            v75 = v74 - *v53;
            if (__OFSUB__(v74, *v53))
            {
              goto LABEL_102;
            }

            if (__OFADD__(v72, v75))
            {
              goto LABEL_104;
            }

            if (v72 + v75 >= v57)
            {
              if (v57 < v75)
              {
                v52 = v49 - 2;
              }

              goto LABEL_78;
            }

            goto LABEL_71;
          }

          if (v49 < 2)
          {
            goto LABEL_98;
          }

          v77 = *v54;
          v76 = v54[1];
          v65 = __OFSUB__(v76, v77);
          v72 = v76 - v77;
          v73 = v65;
LABEL_71:
          if (v73)
          {
            goto LABEL_101;
          }

          v79 = *v53;
          v78 = v53[1];
          v65 = __OFSUB__(v78, v79);
          v80 = v78 - v79;
          if (v65)
          {
            goto LABEL_103;
          }

          if (v80 < v72)
          {
            goto LABEL_85;
          }

LABEL_78:
          if (v52 - 1 >= v49)
          {
            __break(1u);
LABEL_91:
            __break(1u);
LABEL_92:
            __break(1u);
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
LABEL_106:
            __break(1u);
LABEL_107:
            __break(1u);
LABEL_108:
            __break(1u);
LABEL_109:
            __break(1u);
            goto LABEL_110;
          }

          if (!*a3)
          {
            goto LABEL_112;
          }

          v84 = &v50[2 * v52 - 2];
          v85 = *v84;
          v86 = &v50[2 * v52];
          v87 = v86[1];
          sub_1CA4F2ABC((*a3 + 40 * *v84), (*a3 + 40 * *v86), *a3 + 40 * v87, v97);
          if (v5)
          {
            goto LABEL_89;
          }

          if (v87 < v85)
          {
            goto LABEL_91;
          }

          v88 = v8;
          v89 = v8[2];
          if (v52 > v89)
          {
            goto LABEL_92;
          }

          *v84 = v85;
          v84[1] = v87;
          if (v52 >= v89)
          {
            goto LABEL_93;
          }

          v49 = v89 - 1;
          memmove(&v50[2 * v52], v86 + 2, 16 * (v89 - 1 - v52));
          v88[2] = v89 - 1;
          v90 = v89 > 2;
          v8 = v88;
          v5 = 0;
          if (!v90)
          {
            goto LABEL_85;
          }
        }

        v59 = &v50[2 * v49];
        v60 = *(v59 - 8);
        v61 = *(v59 - 7);
        v65 = __OFSUB__(v61, v60);
        v62 = v61 - v60;
        if (v65)
        {
          goto LABEL_94;
        }

        v64 = *(v59 - 6);
        v63 = *(v59 - 5);
        v65 = __OFSUB__(v63, v64);
        v57 = v63 - v64;
        v58 = v65;
        if (v65)
        {
          goto LABEL_95;
        }

        v66 = v54[1];
        v67 = v66 - *v54;
        if (__OFSUB__(v66, *v54))
        {
          goto LABEL_97;
        }

        v65 = __OFADD__(v57, v67);
        v68 = v57 + v67;
        if (v65)
        {
          goto LABEL_100;
        }

        if (v68 >= v62)
        {
          v82 = *v53;
          v81 = v53[1];
          v65 = __OFSUB__(v81, v82);
          v83 = v81 - v82;
          if (v65)
          {
            goto LABEL_105;
          }

          if (v57 < v83)
          {
            v52 = v49 - 2;
          }

          goto LABEL_78;
        }

        goto LABEL_56;
      }

LABEL_85:
      v6 = a3[1];
      v7 = v96;
      a4 = v94;
      if (v96 >= v6)
      {
        v99 = v8;
        break;
      }
    }
  }

  if (!*a1)
  {
    goto LABEL_115;
  }

  sub_1CA4F2984(&v99, *a1, a3);
LABEL_89:
}

uint64_t sub_1CA4F2984(uint64_t *a1, char *a2, void *a3)
{
  v4 = a1;
  v15 = *a1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
LABEL_14:
    result = sub_1CA627610(v15);
    v15 = result;
  }

  v12 = v4;
  *v4 = v15;
  v6 = (v15 + 16);
  for (i = *(v15 + 16); ; *v6 = i)
  {
    if (i < 2)
    {
LABEL_10:
      *v12 = v15;
      return 1;
    }

    if (!*a3)
    {
      break;
    }

    v4 = (v15 + 16 * i);
    v8 = *v4;
    v9 = &v6[2 * i];
    v10 = v9[1];
    sub_1CA4F2ABC((*a3 + 40 * *v4), (*a3 + 40 * *v9), *a3 + 40 * v10, a2);
    if (v3)
    {
      goto LABEL_10;
    }

    if (v10 < v8)
    {
      __break(1u);
LABEL_12:
      __break(1u);
LABEL_13:
      __break(1u);
      goto LABEL_14;
    }

    if (i - 2 >= *v6)
    {
      goto LABEL_12;
    }

    *v4 = v8;
    v4[1] = v10;
    v11 = *v6 - i;
    if (*v6 < i)
    {
      goto LABEL_13;
    }

    i = *v6 - 1;
    result = memmove(v9, v9 + 2, 16 * v11);
  }

  *v12 = v15;
  __break(1u);
  return result;
}

uint64_t sub_1CA4F2ABC(char *a1, char *a2, unint64_t a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = a2;
  v7 = a1;
  v8 = (a2 - a1) / 40;
  v9 = (a3 - a2) / 40;
  if (v8 < v9)
  {
    sub_1CA27B60C(a1, (a2 - a1) / 40, a4);
    v10 = &v4[5 * v8];
    while (1)
    {
      if (v4 >= v10 || v6 >= v5)
      {
        v6 = v7;
        goto LABEL_28;
      }

      if (*v4 >= *v6)
      {
        break;
      }

      v12 = v6;
      v13 = v7 == v6;
      v6 += 5;
      if (!v13)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 5;
    }

    v12 = v4;
    v13 = v7 == v4;
    v4 += 5;
    if (v13)
    {
      goto LABEL_13;
    }

LABEL_12:
    v14 = *v12;
    v15 = *(v12 + 1);
    v7[4] = v12[4];
    *v7 = v14;
    *(v7 + 1) = v15;
    goto LABEL_13;
  }

  sub_1CA27B60C(a2, (a3 - a2) / 40, a4);
  v10 = &v4[5 * v9];
LABEL_15:
  v16 = v6 - 5;
  for (v5 -= 40; v10 > v4 && v6 > v7; v5 -= 40)
  {
    if (*v16 < *(v10 - 5))
    {
      v13 = v5 + 40 == v6;
      v6 -= 5;
      if (!v13)
      {
        v20 = *v16;
        v21 = *(v16 + 1);
        *(v5 + 32) = v16[4];
        *v5 = v20;
        *(v5 + 16) = v21;
        v6 = v16;
      }

      goto LABEL_15;
    }

    if (v10 != (v5 + 40))
    {
      v18 = *(v10 - 5);
      v19 = *(v10 - 3);
      *(v5 + 32) = *(v10 - 1);
      *v5 = v18;
      *(v5 + 16) = v19;
    }

    v10 -= 5;
  }

LABEL_28:
  v22 = (v10 - v4) / 40;
  if (v6 != v4 || v6 >= &v4[5 * v22])
  {
    memmove(v6, v4, 40 * v22);
  }

  return 1;
}

void *sub_1CA4F2C64(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v7 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    swift_bridgeObjectRetain_n();
    v8 = sub_1CA4F3074(v7, a2, a3, a4);
    swift_bridgeObjectRelease_n();

    return v8;
  }

  return result;
}

void *sub_1CA4F2D04(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = a1;
  v39 = *MEMORY[0x1E69E9840];
  v6 = *(a1 + 32);
  v7 = v6 & 0x3F;
  v8 = ((1 << v6) + 63) >> 6;
  v9 = (8 * v8);
  v10 = sub_1CA94C218();
  if (v7 > 0xD)
  {
    goto LABEL_24;
  }

  while (1)
  {
    v34 = v3;
    v32 = &v32;
    MEMORY[0x1EEE9AC00](v10);
    v33 = v8;
    v35 = &v32 - ((v9 + 15) & 0x3FFFFFFFFFFFFFF0);
    sub_1CA5C3FA4(0, v8, v35);
    v36 = v5;
    v37 = 0;
    v11 = 0;
    v13 = *(v5 + 56);
    v5 += 56;
    v12 = v13;
    v14 = 1 << *(v5 - 24);
    v15 = v14 < 64 ? ~(-1 << v14) : -1;
    v16 = v15 & v12;
    v8 = (v14 + 63) >> 6;
    v3 = a2 + 56;
LABEL_6:
    while (v16)
    {
      v17 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_13:
      v20 = v17 | (v11 << 6);
      if (*(a2 + 16))
      {
        v21 = *(*(v36 + 48) + 32 * v20 + 16);
        v22 = *(a2 + 40);
        sub_1CA94D918();
        v9 = &v38;
        sub_1CA94D948();
        v23 = sub_1CA94D968();
        v24 = ~(-1 << *(a2 + 32));
        while (1)
        {
          v25 = v23 & v24;
          if (((*(v3 + (((v23 & v24) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v23 & v24)) & 1) == 0)
          {
            break;
          }

          v23 = v25 + 1;
          if (*(*(a2 + 48) + 2 * v25) == v21)
          {
            goto LABEL_6;
          }
        }
      }

      *(v35 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
      if (__OFADD__(v37++, 1))
      {
        __break(1u);
LABEL_21:
        sub_1CA6B0650(v35, v33, v37, v36);
        v28 = v27;
        goto LABEL_22;
      }
    }

    v18 = v11;
    while (1)
    {
      v11 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v11 >= v8)
      {
        goto LABEL_21;
      }

      v19 = *(v5 + 8 * v11);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v16 = (v19 - 1) & v19;
        goto LABEL_13;
      }
    }

    __break(1u);
LABEL_24:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }
  }

  v31 = swift_slowAlloc();
  sub_1CA94C218();
  v28 = sub_1CA4F2C64(v31, v8, v5, a2);

  MEMORY[0x1CCAA4BF0](v31, -1, -1);
LABEL_22:
  swift_bridgeObjectRelease_n();
  v29 = *MEMORY[0x1E69E9840];
  return v28;
}

unint64_t sub_1CA4F3020()
{
  result = qword_1EC445E98;
  if (!qword_1EC445E98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC445E98);
  }

  return result;
}

uint64_t sub_1CA4F3074(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v24 = result;
  v26 = 0;
  v5 = 0;
  v6 = a3 + 56;
  v7 = 1 << *(a3 + 32);
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a3 + 56);
  v10 = (v7 + 63) >> 6;
  v11 = a4 + 56;
LABEL_5:
  while (v9)
  {
    v12 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
LABEL_12:
    v15 = v12 | (v5 << 6);
    if (*(a4 + 16))
    {
      v16 = *(*(a3 + 48) + 32 * v15 + 16);
      v17 = *(a4 + 40);
      sub_1CA94D918();
      sub_1CA94D948();
      result = sub_1CA94D968();
      v18 = ~(-1 << *(a4 + 32));
      while (1)
      {
        v19 = result & v18;
        if (((*(v11 + (((result & v18) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (result & v18)) & 1) == 0)
        {
          break;
        }

        result = v19 + 1;
        if (*(*(a4 + 48) + 2 * v19) == v16)
        {
          goto LABEL_5;
        }
      }
    }

    *(v24 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
    if (__OFADD__(v26++, 1))
    {
      __break(1u);
LABEL_20:

      sub_1CA6B0650(v24, a2, v26, a3);
      v22 = v21;

      return v22;
    }
  }

  v13 = v5;
  while (1)
  {
    v5 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v5 >= v10)
    {
      goto LABEL_20;
    }

    v14 = *(v6 + 8 * v5);
    ++v13;
    if (v14)
    {
      v12 = __clz(__rbit64(v14));
      v9 = (v14 - 1) & v14;
      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1CA4F3234(uint64_t result, uint64_t (*a2)(void *, uint64_t *))
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_16;
  }

  v4 = result;
  if (result)
  {
    v5 = sub_1CA94C6C8();
    *(v5 + 16) = v4;
  }

  else
  {
    v5 = MEMORY[0x1E69E7CC0];
  }

  v6 = v5 + 32;
  v7[1] = v4;
  v8 = 0;
  v7[0] = v5 + 32;
  result = a2(v7, &v8);
  if (v2)
  {
    if (v8 <= v4)
    {
      if (!v7[0])
      {
LABEL_20:
        __break(1u);
        goto LABEL_21;
      }

      if (v6 == v7[0])
      {
        *(v5 + 16) = v8;

        return v5;
      }

      goto LABEL_17;
    }

LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (v8 > v4)
  {
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  if (v7[0])
  {
    if (v6 == v7[0])
    {
      *(v5 + 16) = v8;
      return v5;
    }

    goto LABEL_19;
  }

LABEL_21:
  __break(1u);
  return result;
}

void sub_1CA4F337C(uint64_t a1, uint64_t a2, double a3)
{
  v5[1] = *MEMORY[0x1E69E9840];
  v3 = *(a2 + 8);
  if (*(a1 + 16) != v3)
  {
    __break(1u);
LABEL_5:
    __break(1u);
  }

  v5[0] = a3;
  if (!*a2)
  {
    goto LABEL_5;
  }

  vDSP_vsdivD((a1 + 32), 1, v5, *a2, 1, v3);
  v4 = *MEMORY[0x1E69E9840];
}

uint64_t sub_1CA4F33FC(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = a3 - result;
  if (__OFSUB__(a3, result))
  {
    __break(1u);
LABEL_14:
    __break(1u);
    return result;
  }

  if (a2 < 1)
  {
    if (v3 <= 0 && v3 > a2)
    {
      return 0;
    }
  }

  else if ((v3 & 0x8000000000000000) == 0 && v3 < a2)
  {
    return 0;
  }

  v5 = __OFADD__(result, a2);
  result += a2;
  if (v5)
  {
    goto LABEL_14;
  }

  return result;
}

unint64_t sub_1CA4F3484()
{
  result = qword_1EDB9F5E0;
  if (!qword_1EDB9F5E0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDB9F5E0);
  }

  return result;
}

unint64_t sub_1CA4F34C8()
{
  result = qword_1EC445EA0;
  if (!qword_1EC445EA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC444B70, &unk_1CA989B70);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC445EA0);
  }

  return result;
}

id sub_1CA4F3560()
{
  v117 = sub_1CA25B3D0(0, &qword_1EC4419A0, off_1E836DD08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B0, &qword_1CA981320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA981450;
  v1 = MEMORY[0x1E69E6158];
  *(inited + 32) = @"ActionClass";
  *(inited + 40) = 0xD000000000000010;
  *(inited + 48) = 0x80000001CA99BD90;
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
  v122 = (v12 + 15) & 0xFFFFFFFFFFFFFFF0;
  v123 = v12;
  v13 = &v110 - v122;
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v121 = qword_1EDB9F690;
  v14 = [qword_1EDB9F690 bundleURL];
  v15 = sub_1CA948BA8();
  v120 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v119 = (v16 + 15) & 0xFFFFFFFFFFFFFFF0;
  v17 = &v110 - v119;
  sub_1CA948B68();

  v18 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v19 = sub_1CA2F9F14(v4, v6, v7, v9, 0, 0, v13, v17);
  v20 = sub_1CA25B3D0(0, &qword_1EDB9F6E0, 0x1E696B100);
  v118 = v20;
  *(inited + 80) = v19;
  *(inited + 104) = v20;
  *(inited + 112) = @"AppDefinition";
  v21 = @"AppDefinition";
  v22 = MEMORY[0x1E69E6158];
  v23 = sub_1CA94C1E8();
  *(inited + 144) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B8, &unk_1CA985870);
  *(inited + 120) = v23;
  *(inited + 152) = sub_1CA94C368();
  *(inited + 160) = 0xD000000000000014;
  *(inited + 168) = 0x80000001CA993920;
  *(inited + 184) = v22;
  *(inited + 192) = @"Description";
  *&v116 = sub_1CA25B3D0(0, &unk_1EC441790, off_1E836DD18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D0, &qword_1CA981390);
  v24 = swift_initStackObject();
  *(v24 + 16) = xmmword_1CA981310;
  *(v24 + 32) = @"DescriptionSummary";
  v25 = @"Description";
  v26 = @"DescriptionSummary";
  v27 = sub_1CA94C438();
  v114 = v28;
  v29 = sub_1CA94C438();
  v31 = v30;
  v115 = &v110;
  MEMORY[0x1EEE9AC00](v29);
  v32 = &v110 - v122;
  sub_1CA948D98();
  v33 = [v121 bundleURL];
  MEMORY[0x1EEE9AC00](v33);
  v34 = &v110 - v119;
  sub_1CA948B68();

  v35 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v36 = sub_1CA2F9F14(v27, v114, v29, v31, 0, 0, v32, v34);
  *(v24 + 64) = v118;
  *(v24 + 40) = v36;
  type metadata accessor for DescriptionKey(0);
  sub_1CA29CF44(&qword_1EC441830, type metadata accessor for DescriptionKey);
  sub_1CA94C1E8();
  v37 = v116;
  *(inited + 200) = sub_1CA6B3784();
  *(inited + 224) = v37;
  *(inited + 232) = @"Input";
  v113 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445FB0, &qword_1CA97EE10);
  v38 = swift_initStackObject();
  v116 = xmmword_1CA981350;
  *(v38 + 16) = xmmword_1CA981350;
  *(v38 + 32) = 0x656C7069746C754DLL;
  *(v38 + 40) = 0xE800000000000000;
  v39 = MEMORY[0x1E69E6370];
  *(v38 + 48) = 1;
  *(v38 + 72) = v39;
  strcpy((v38 + 80), "ParameterKey");
  *(v38 + 93) = 0;
  *(v38 + 94) = -5120;
  *(v38 + 96) = 0x7475706E494657;
  *(v38 + 104) = 0xE700000000000000;
  *(v38 + 120) = MEMORY[0x1E69E6158];
  *(v38 + 128) = 0x6465726975716552;
  *(v38 + 136) = 0xE800000000000000;
  *(v38 + 144) = 1;
  *(v38 + 168) = v39;
  *(v38 + 176) = 0x7365707954;
  v40 = v39;
  *(v38 + 184) = 0xE500000000000000;
  v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
  *(v38 + 216) = v115;
  *(v38 + 192) = &unk_1F4A022C8;
  v41 = @"Input";
  v42 = sub_1CA94C1E8();
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC447DE0, &qword_1CA9917E0);
  v114 = v43;
  *(inited + 240) = v42;
  *(inited + 264) = v43;
  *(inited + 272) = @"LocallyProcessesData";
  *(inited + 280) = 1;
  *(inited + 304) = v40;
  *(inited + 312) = @"Name";
  v44 = @"LocallyProcessesData";
  v45 = @"Name";
  v46 = sub_1CA94C438();
  v110 = v47;
  v111 = v46;
  v48 = sub_1CA94C438();
  v50 = v49;
  v112 = &v110;
  MEMORY[0x1EEE9AC00](v48);
  v51 = &v110 - v122;
  sub_1CA948D98();
  v52 = [v121 bundleURL];
  MEMORY[0x1EEE9AC00](v52);
  v53 = v119;
  sub_1CA948B68();

  v54 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(inited + 320) = sub_1CA2F9F14(v111, v110, v48, v50, 0, 0, v51, &v110 - v53);
  v55 = v118;
  *(inited + 344) = v118;
  *(inited + 352) = @"Output";
  v56 = swift_initStackObject();
  *(v56 + 16) = xmmword_1CA9813C0;
  *(v56 + 32) = 0x656C7069746C754DLL;
  *(v56 + 40) = 0xE800000000000000;
  *(v56 + 48) = 1;
  *(v56 + 72) = MEMORY[0x1E69E6370];
  *(v56 + 80) = 0x614E74757074754FLL;
  *(v56 + 88) = 0xEA0000000000656DLL;
  v57 = @"Output";
  v58 = sub_1CA94C438();
  v111 = v59;
  v112 = v58;
  v110 = sub_1CA94C438();
  v61 = v60;
  v113 = &v110;
  MEMORY[0x1EEE9AC00](v110);
  v62 = &v110 - v122;
  sub_1CA948D98();
  v63 = [v121 bundleURL];
  MEMORY[0x1EEE9AC00](v63);
  sub_1CA948B68();

  v64 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v56 + 96) = sub_1CA2F9F14(v112, v111, v110, v61, 0, 0, v62, &v110 - v53);
  *(v56 + 120) = v55;
  *(v56 + 128) = 0x7365707954;
  *(v56 + 168) = v115;
  *(v56 + 136) = 0xE500000000000000;
  *(v56 + 144) = &unk_1F4A022F8;
  v65 = MEMORY[0x1E69E6158];
  *(inited + 360) = sub_1CA94C1E8();
  *(inited + 384) = v114;
  *(inited + 392) = @"Parameters";
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443910, &unk_1CA981A00);
  v115 = swift_allocObject();
  *(v115 + 1) = xmmword_1CA9813B0;
  v114 = sub_1CA25B3D0(0, &qword_1EDB9F710, off_1E836EDC0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443D80, &unk_1CA981BA0);
  v66 = swift_allocObject();
  *(v66 + 16) = v116;
  *(v66 + 32) = @"Class";
  *(v66 + 40) = 0xD000000000000019;
  *(v66 + 48) = 0x80000001CA99B030;
  *(v66 + 64) = v65;
  *(v66 + 72) = @"Key";
  *(v66 + 80) = 0x7475706E494657;
  *(v66 + 88) = 0xE700000000000000;
  *(v66 + 104) = v65;
  *(v66 + 112) = @"Label";
  v67 = @"Parameters";
  v68 = @"Class";
  v69 = @"Key";
  v70 = @"Label";
  v71 = sub_1CA94C438();
  v112 = v72;
  v113 = v71;
  v73 = sub_1CA94C438();
  v111 = v74;
  *&v116 = &v110;
  MEMORY[0x1EEE9AC00](v73);
  v75 = v122;
  sub_1CA948D98();
  v76 = v121;
  v77 = [v121 bundleURL];
  v110 = &v110;
  MEMORY[0x1EEE9AC00](v77);
  v78 = &v110 - v119;
  sub_1CA948B68();

  v79 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v66 + 120) = sub_1CA2F9F14(v113, v112, v73, v111, 0, 0, &v110 - v75, v78);
  v80 = v118;
  *(v66 + 144) = v118;
  *(v66 + 152) = @"Placeholder";
  v81 = @"Placeholder";
  v82 = sub_1CA94C438();
  v112 = v83;
  v113 = v82;
  v111 = sub_1CA94C438();
  v85 = v84;
  *&v116 = &v110;
  MEMORY[0x1EEE9AC00](v111);
  v86 = &v110 - v75;
  sub_1CA948D98();
  v87 = [v76 bundleURL];
  MEMORY[0x1EEE9AC00](v87);
  v88 = &v110 - v119;
  sub_1CA948B68();

  v89 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v90 = sub_1CA2F9F14(v113, v112, v111, v85, 0, 0, v86, v88);
  *(v66 + 184) = v80;
  *(v66 + 160) = v90;
  _s3__C3KeyVMa_0(0);
  sub_1CA29CF44(&qword_1EDB9F780, _s3__C3KeyVMa_0);
  sub_1CA94C1E8();
  v91 = sub_1CA2F864C();
  v92 = v115;
  v115[4] = v91;
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D8, &qword_1CA981398);
  *(inited + 400) = v92;
  *(inited + 424) = v93;
  *(inited + 432) = @"ParameterSummary";
  v94 = @"ParameterSummary";
  v95 = sub_1CA94C438();
  v97 = v96;
  v98 = sub_1CA94C438();
  v100 = v99;
  v118 = &v110;
  MEMORY[0x1EEE9AC00](v98);
  v101 = &v110 - v122;
  sub_1CA948D98();
  v102 = [v121 bundleURL];
  MEMORY[0x1EEE9AC00](v102);
  v103 = &v110 - v119;
  sub_1CA948B68();

  v104 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v105 = sub_1CA2F9F14(v95, v97, v98, v100, 0, 0, v101, v103);
  v106 = [objc_allocWithZone(WFActionParameterSummary) initWithString_];

  v107 = sub_1CA25B3D0(0, &unk_1EC441800, off_1E836DD60);
  *(inited + 440) = v106;
  *(inited + 464) = v107;
  *(inited + 472) = @"ResidentCompatible";
  *(inited + 504) = MEMORY[0x1E69E6370];
  *(inited + 480) = 1;
  type metadata accessor for Key(0);
  sub_1CA29CF44(&qword_1EDB9FB10, type metadata accessor for Key);
  v108 = @"ResidentCompatible";
  sub_1CA94C1E8();
  return sub_1CA332510();
}