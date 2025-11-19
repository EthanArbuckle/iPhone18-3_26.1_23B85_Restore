uint64_t sub_25E611078(char a1, char a2)
{
  if (a1)
  {
    v2 = 0x646E656B656577;
  }

  else
  {
    v2 = 0x7961646B656577;
  }

  if (a2)
  {
    v3 = 0x646E656B656577;
  }

  else
  {
    v3 = 0x7961646B656577;
  }

  if (v2 == v3)
  {
    v4 = 1;
  }

  else
  {
    v4 = sub_25E636070();
  }

  swift_bridgeObjectRelease_n();
  return v4 & 1;
}

uint64_t sub_25E611160(uint64_t a1, uint64_t (*a2)(void), uint64_t *a3, uint64_t (*a4)(unint64_t, unint64_t, unint64_t, unint64_t))
{
  v6 = a2(0);
  __swift_allocate_value_buffer(v6, a3);
  __swift_project_value_buffer(v6, a3);
  return a4(0xD000000000000021, 0x800000025E638BF0, 0xD000000000000015, 0x800000025E6390B0);
}

uint64_t static PNUtilityTypeClassifier.screenshotInferred(in:usingSceneModel:)(void *a1, void *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FCF92C0, &unk_25E63B410);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_25E63A3E0;
  *(inited + 32) = 1665;
  v5 = sub_25E612764(inited);
  v6 = [a1 sceneClassifications];
  v7 = sub_25E635B40();

  if (*(v7 + 16))
  {
    v8 = sub_25E6113A4(v5, MEMORY[0x277D84FA0], v7, a2);
  }

  else
  {

    if (qword_280CB2148 != -1)
    {
      OUTLINED_FUNCTION_0_6();
    }

    v9 = sub_25E635710();
    __swift_project_value_buffer(v9, qword_280CB2150);
    v10 = sub_25E6356F0();
    v11 = sub_25E635CD0();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_25E5F0000, v10, v11, "[Inferred Screenshot] Empty sceneClassifications", v12, 2u);
      OUTLINED_FUNCTION_9();
    }

    v8 = 0;
  }

  return v8 & 1;
}

uint64_t sub_25E6113A4(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = sub_25E611FE8(a3);
  v8 = 1 << *(a3 + 32);
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  else
  {
    v9 = -1;
  }

  v10 = v9 & *(a3 + 56);
  v11 = (v8 + 63) >> 6;
  v37 = a1;
  v35 = a1 + 56;
  v12 = a2 + 56;

  v38 = 0;
  v13 = 0;
LABEL_5:
  v14 = v13;
  while (v10)
  {
    v13 = v14;
LABEL_11:
    v15 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
    sub_25E5F82CC(*(a3 + 48) + 40 * (v15 | (v13 << 6)), &v40);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCF92D8, &qword_25E63B788);
    if (swift_dynamicCast())
    {
      if (([v39 classificationType] & 0xFFFFFFFFFFFFFFFDLL) != 0)
      {
        swift_unknownObjectRelease();
        v14 = v13;
      }

      else
      {
        v16 = [v39 extendedSceneIdentifier];
        if ((v38 & 1) == 0 && *(v37 + 16))
        {
          v17 = *(v37 + 40);
          v18 = sub_25E636100();
          v19 = ~(-1 << *(v37 + 32));
          while (1)
          {
            v20 = v18 & v19;
            if (((*(v35 + (((v18 & v19) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v18 & v19)) & 1) == 0)
            {
              break;
            }

            v18 = v20 + 1;
            if (*(*(v37 + 48) + 8 * v20) == v16)
            {
              v34 = v7;
              if (!*(a2 + 16))
              {
                goto LABEL_29;
              }

              v21 = 1;
              goto LABEL_24;
            }
          }
        }

        if (*(a2 + 16))
        {
          v34 = v7;
          v21 = 0;
LABEL_24:
          v22 = *(a2 + 40);
          v23 = sub_25E636100();
          v24 = ~(-1 << *(a2 + 32));
          while (1)
          {
            v25 = v23 & v24;
            if (((*(v12 + (((v23 & v24) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v23 & v24)) & 1) == 0)
            {
              break;
            }

            v23 = v25 + 1;
            if (*(*(a2 + 48) + 8 * v25) == v16)
            {
              goto LABEL_29;
            }
          }

          if (v21)
          {
LABEL_29:
            [v39 confidence];
            if (sub_25E6121C4(v16, a4, v26))
            {
              v7 = v34;
              if (*(a2 + 16))
              {
                v27 = *(a2 + 40);
                v28 = sub_25E636100();
                v29 = ~(-1 << *(a2 + 32));
                while (1)
                {
                  v30 = v28 & v29;
                  if (((*(v12 + (((v28 & v29) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v28 & v29)) & 1) == 0)
                  {
                    break;
                  }

                  v28 = v30 + 1;
                  if (*(*(a2 + 48) + 8 * v30) == v16)
                  {
                    goto LABEL_44;
                  }
                }
              }

              v31 = sub_25E612328(v16, v39, v34);
              swift_unknownObjectRelease();
              v32 = *(a2 + 16);
              v38 = v32 != 0 && v31;
              if (!v32 && v31)
              {

                v38 = 1;
                return v38 & 1;
              }

              goto LABEL_5;
            }
          }

          swift_unknownObjectRelease();
          v14 = v13;
          v7 = v34;
        }

        else
        {
          swift_unknownObjectRelease();
          v14 = v13;
        }
      }
    }

    else
    {
      v14 = v13;
    }
  }

  while (1)
  {
    v13 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v13 >= v11)
    {

      return v38 & 1;
    }

    v10 = *(a3 + 56 + 8 * v13);
    ++v14;
    if (v10)
    {
      goto LABEL_11;
    }
  }

  __break(1u);
LABEL_44:
  swift_unknownObjectRelease();

  v38 = 0;
  return v38 & 1;
}

uint64_t static PNUtilityTypeClassifier.utilityTypesDetected(in:usingSceneModel:)(void *a1, void *a2)
{
  v3 = [a1 sceneClassifications];
  v4 = sub_25E635B40();

  v5 = *(v4 + 16);

  if (!v5)
  {
    return 0;
  }

  if (qword_280CB2148 != -1)
  {
    OUTLINED_FUNCTION_0_6();
  }

  v6 = sub_25E635710();
  __swift_project_value_buffer(v6, qword_280CB2150);
  swift_unknownObjectRetain();
  v7 = sub_25E6356F0();
  v8 = sub_25E635CD0();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = OUTLINED_FUNCTION_4_6();
    *v9 = 134217984;
    v10 = [a1 sceneClassifications];
    v11 = sub_25E635B40();

    v12 = *(v11 + 16);

    *(v9 + 4) = v12;
    swift_unknownObjectRelease();
    _os_log_impl(&dword_25E5F0000, v7, v8, "sceneClassifications.count: %ld", v9, 0xCu);
    OUTLINED_FUNCTION_9();
  }

  else
  {

    swift_unknownObjectRelease();
  }

  v14 = [a1 sceneClassifications];
  v15 = sub_25E635B40();

  v16 = 0;
  v13 = 0;
  v26 = v15;
  do
  {
    v17 = *(&unk_28704A448 + v16 + 32);
    v18 = sub_25E6356F0();
    v19 = sub_25E635CD0();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = OUTLINED_FUNCTION_4_6();
      *v20 = 134217984;
      *(v20 + 4) = v17;
      _os_log_impl(&dword_25E5F0000, v18, v19, "utilityType: %lu", v20, 0xCu);
      v15 = v26;
      OUTLINED_FUNCTION_9();
    }

    if (static PNUtilityTypeClassifier.utilityOfType(_:detectedInSceneClassifications:hasQRCodeData:isAIImageFromGenerativePlayground:using:)(v17, v15, [a1 hasQRCodeData], objc_msgSend(a1, sel_isAIImageFromGenerativePlayground), a2))
    {
      v21 = v17;
    }

    else
    {
      v21 = 0;
    }

    v13 |= v21;
    v16 += 8;
  }

  while (v16 != 40);

  v22 = sub_25E6356F0();
  v23 = sub_25E635CD0();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = OUTLINED_FUNCTION_4_6();
    *v24 = 134217984;
    *(v24 + 4) = v13;
    _os_log_impl(&dword_25E5F0000, v22, v23, "detectedUtilityTypes: %lu", v24, 0xCu);
    OUTLINED_FUNCTION_9();
  }

  return v13;
}

uint64_t static PNUtilityTypeClassifier.utilityOfType(_:detectedInSceneClassifications:hasQRCodeData:isAIImageFromGenerativePlayground:using:)(uint64_t a1, uint64_t a2, int a3, int a4, void *a5)
{
  v50 = a5;
  v51 = a4;
  v52 = a3;
  v53 = a2;
  v6 = sub_25E6356A0();
  v7 = OUTLINED_FUNCTION_5(v6);
  v54 = v8;
  v55 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v7);
  v56 = &v50 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_25E635660();
  v13 = OUTLINED_FUNCTION_5(v12);
  v15 = v14;
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v13);
  v57 = &v50 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v18);
  v22 = &v50 - v21;
  MEMORY[0x28223BE20](v20);
  v24 = &v50 - v23;
  if (qword_280CB2170 != -1)
  {
    swift_once();
  }

  v25 = sub_25E635690();
  __swift_project_value_buffer(v25, qword_280CB2178);
  sub_25E635650();
  v26 = sub_25E635680();
  v27 = sub_25E635D10();
  if (sub_25E635D20())
  {
    v28 = OUTLINED_FUNCTION_4_6();
    *v28 = 134217984;
    *(v28 + 4) = a1;
    v29 = sub_25E635640();
    _os_signpost_emit_with_name_impl(&dword_25E5F0000, v26, v27, v29, "[UT] utilityOfType", "type: %lu", v28, 0xCu);
    OUTLINED_FUNCTION_9();
  }

  (*(v15 + 16))(v22, v24, v12);
  v30 = sub_25E6356D0();
  v31 = *(v30 + 48);
  v32 = *(v30 + 52);
  swift_allocObject();
  sub_25E6356C0();
  v33 = *(v15 + 8);
  v33(v24, v12);
  if (a1 == 16)
  {
    v36 = v52;
    v35 = v56;
    v34 = v57;
  }

  else
  {
    v35 = v56;
    v34 = v57;
    if (a1 == 4 && (v51 & 1) != 0)
    {
      v36 = 1;
    }

    else
    {
      v37 = v53;
      if (*(v53 + 16))
      {
        type metadata accessor for UtilityTypeConfiguration();
        v38 = sub_25E60F680(a1);
        v39 = sub_25E60F888(a1);
        v36 = sub_25E6113A4(v38, v39, v37, v50);
        v35 = v56;

        v34 = v57;
      }

      else
      {
        v36 = 0;
      }
    }
  }

  v40 = sub_25E635680();
  sub_25E6356B0();
  v41 = sub_25E635D00();
  if (sub_25E635D20())
  {

    sub_25E6356E0();

    v43 = v54;
    v42 = v55;
    if ((*(v54 + 88))(v35, v55) == *MEMORY[0x277D85B00])
    {
      v44 = "[Error] Interval already ended";
    }

    else
    {
      (*(v43 + 8))(v35, v42);
      v44 = "";
    }

    v45 = swift_slowAlloc();
    *v45 = 0;
    v46 = v57;
    v47 = sub_25E635640();
    v48 = v44;
    v34 = v46;
    _os_signpost_emit_with_name_impl(&dword_25E5F0000, v40, v41, v47, "[UT] utilityOfType", v48, v45, 2u);
    OUTLINED_FUNCTION_9();
  }

  v33(v34, v12);
  return v36 & 1;
}

uint64_t sub_25E611FE8(uint64_t a1)
{
  v19 = MEMORY[0x277D84FA0];
  v2 = a1 + 56;
  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 56);
  v6 = (v3 + 63) >> 6;
  v7 = *MEMORY[0x277CBF3A8];
  v8 = *(MEMORY[0x277CBF3A8] + 8);

  v10 = 0;
  while (v5)
  {
    v11 = v10;
LABEL_9:
    v12 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    sub_25E5F82CC(*(a1 + 48) + 40 * (v12 | (v11 << 6)), v17);
    v15[0] = v17[0];
    v15[1] = v17[1];
    v16 = v18;
    sub_25E5F82CC(v15, v14);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCF92D8, &qword_25E63B788);
    if (swift_dynamicCast())
    {
      [v13[0] boundingBox];
      v20.width = v7;
      v20.height = v8;
      if (!CGSizeEqualToSize(v20, v21))
      {
        sub_25E5F82CC(v15, v13);
        sub_25E60367C(v14, v13);
        swift_unknownObjectRelease();
        sub_25E5F8328(v14);
        goto LABEL_13;
      }

      sub_25E5F8328(v15);
      result = swift_unknownObjectRelease();
      v10 = v11;
    }

    else
    {
LABEL_13:
      result = sub_25E5F8328(v15);
      v10 = v11;
    }
  }

  while (1)
  {
    v11 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v11 >= v6)
    {

      return v19;
    }

    v5 = *(v2 + 8 * v11);
    ++v10;
    if (v5)
    {
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

BOOL sub_25E6121C4(uint64_t a1, id a2, double a3)
{
  if (a1 < 0)
  {
    __break(1u);
LABEL_9:
    swift_once();
    goto LABEL_5;
  }

  v3 = a1;
  v5 = [a2 nodeForSignalIdentifier_];
  if (v5)
  {
    v6 = v5;
    type metadata accessor for UtilitySceneConfiguration();
    sub_25E60F494(v3);
    sub_25E60F630(v6);
    v8 = v7;

    return v8 <= a3;
  }

  if (qword_280CB2148 != -1)
  {
    goto LABEL_9;
  }

LABEL_5:
  v10 = sub_25E635710();
  __swift_project_value_buffer(v10, qword_280CB2150);
  v11 = sub_25E6356F0();
  v12 = sub_25E635CE0();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 134217984;
    *(v13 + 4) = v3;
    _os_log_impl(&dword_25E5F0000, v11, v12, "Cannot find utilityNode for sceneIdentifier: %llu", v13, 0xCu);
    MEMORY[0x25F8BA800](v13, -1, -1);
  }

  return 0;
}

BOOL sub_25E612328(uint64_t a1, void *a2, uint64_t a3)
{
  type metadata accessor for UtilitySceneConfiguration();
  v6 = sub_25E60F494(a1);
  if (sub_25E60F648() <= 0.0)
  {

    return 1;
  }

  else
  {
    v7 = sub_25E6123F0(a2, v6, a3);
    if (v8)
    {

      return 0;
    }

    else
    {
      v10 = *&v7;
      v11 = sub_25E60F648();

      return v11 <= v10;
    }
  }
}

uint64_t sub_25E6123F0(void *a1, uint64_t a2, uint64_t a3)
{
  swift_unknownObjectRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCF92D8, &qword_25E63B788);
  if (swift_dynamicCast())
  {
    v33[0] = v30;
    v33[1] = v31;
    v34 = v32;
    if (sub_25E5F7060(v33, a3))
    {
      [a1 boundingBox];
      width = v35.width;
      height = v35.height;
      v8 = CGSizeEqualToSize(*MEMORY[0x277CBF3A8], v35);
      sub_25E5F8328(v33);
      v9 = width * height;
      v10 = !v8;
LABEL_25:
      if (v10)
      {
        return *&v9;
      }

      else
      {
        return 0;
      }
    }

    else
    {
      v11 = *(a2 + 32);
      v12 = 1 << *(a3 + 32);
      if (v12 < 64)
      {
        v13 = ~(-1 << v12);
      }

      else
      {
        v13 = -1;
      }

      v14 = v13 & *(a3 + 56);
      v15 = (v12 + 63) >> 6;

      v17 = 0;
      while (v14)
      {
        while (1)
        {
          v18 = v17;
LABEL_16:
          v19 = __clz(__rbit64(v14));
          v14 &= v14 - 1;
          sub_25E5F82CC(*(a3 + 48) + 40 * (v19 | (v18 << 6)), &v30);
          result = swift_dynamicCast();
          if (result)
          {
            break;
          }

          v17 = v18;
          if (!v14)
          {
            goto LABEL_13;
          }
        }

        v20 = [v29 extendedSceneIdentifier];
        if (*(v11 + 16))
        {
          v21 = v20;
          v22 = *(v11 + 40);
          v23 = sub_25E636100();
          v24 = ~(-1 << *(v11 + 32));
          while (1)
          {
            v25 = v23 & v24;
            if (((*(v11 + 56 + (((v23 & v24) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v23 & v24)) & 1) == 0)
            {
              break;
            }

            v23 = v25 + 1;
            if (*(*(v11 + 48) + 8 * v25) == v21)
            {
              [v29 boundingBox];
              v26 = v36.width;
              v27 = v36.height;
              v28 = CGSizeEqualToSize(*MEMORY[0x277CBF3A8], v36);

              swift_unknownObjectRelease();
              sub_25E5F8328(v33);
              v9 = v26 * v27;
              v10 = !v28;
              goto LABEL_25;
            }
          }
        }

        result = swift_unknownObjectRelease();
        v17 = v18;
      }

LABEL_13:
      while (1)
      {
        v18 = v17 + 1;
        if (__OFADD__(v17, 1))
        {
          break;
        }

        if (v18 >= v15)
        {

          sub_25E5F8328(v33);
          return 0;
        }

        v14 = *(a3 + 56 + 8 * v18);
        ++v17;
        if (v14)
        {
          goto LABEL_16;
        }
      }

      __break(1u);
    }
  }

  else
  {
    v32 = 0;
    v30 = 0u;
    v31 = 0u;
    sub_25E6128DC(&v30);
    return 0;
  }

  return result;
}

PNUtilityTypeClassifier __swiftcall PNUtilityTypeClassifier.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

uint64_t sub_25E612764(uint64_t a1)
{
  if (!*(a1 + 16))
  {
    v3 = MEMORY[0x277D84FA0];
    goto LABEL_14;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCF9150, &qword_25E63B100);
  result = sub_25E635DC0();
  v3 = result;
  v4 = *(a1 + 16);
  if (!v4)
  {
LABEL_14:

    return v3;
  }

  v5 = 0;
  v6 = result + 56;
  v7 = *(result + 40);
  v8 = ~(-1 << *(result + 32));
  while (v5 < *(a1 + 16))
  {
    v9 = *(a1 + 32 + 8 * v5++);
    for (result = sub_25E636100(); ; result = v10 + 1)
    {
      v10 = result & v8;
      v11 = (result & v8) >> 6;
      v12 = *(v6 + 8 * v11);
      v13 = 1 << (result & v8);
      if ((v13 & v12) == 0)
      {
        break;
      }

      if (*(*(v3 + 48) + 8 * v10) == v9)
      {
        goto LABEL_11;
      }
    }

    *(v6 + 8 * v11) = v13 | v12;
    *(*(v3 + 48) + 8 * v10) = v9;
    v14 = *(v3 + 16);
    v15 = __OFADD__(v14, 1);
    v16 = v14 + 1;
    if (v15)
    {
      goto LABEL_16;
    }

    *(v3 + 16) = v16;
LABEL_11:
    if (v5 == v4)
    {
      goto LABEL_14;
    }
  }

  __break(1u);
LABEL_16:
  __break(1u);
  return result;
}

unint64_t type metadata accessor for PNUtilityTypeClassifier()
{
  result = qword_27FCF92D0;
  if (!qword_27FCF92D0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27FCF92D0);
  }

  return result;
}

uint64_t sub_25E6128DC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCF92E0, &qword_25E63B790);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t OUTLINED_FUNCTION_0_6()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_1_6()
{

  return sub_25E636070();
}

uint64_t OUTLINED_FUNCTION_4_6()
{

  return swift_slowAlloc();
}

Swift::String __swiftcall GenericLocationType.localizedText()()
{
  *v0;
  type metadata accessor for LocalizedString();
  v1 = static LocalizedString.localizedString(forKey:)();
  v3 = v2;

  v4 = v1;
  v5 = v3;
  result._object = v5;
  result._countAndFlagsBits = v4;
  return result;
}

uint64_t GenericLocationType.localizedSynonyms()()
{
  if (*v0)
  {
    v1 = "UtilityTypeClassifier";
  }

  else
  {
    v1 = "nTypeBusinessText";
  }

  v6 = v1 | 0x8000000000000000;

  v2 = OUTLINED_FUNCTION_0_0();
  MEMORY[0x25F8B9540](v2, 0xE800000000000000);

  type metadata accessor for LocalizedString();
  static LocalizedString.localizedSynonyms(forKey:)(0xD000000000000021, v6);
  v4 = v3;

  return v4;
}

uint64_t static GenericLocationType.from(localizedText:)@<X0>(_BYTE *a1@<X8>)
{
  v1 = sub_25E635830();
  v3 = v2;
  v4 = 0;
  v30 = v1;
  type metadata accessor for LocalizedString();
  while (1)
  {
    v5 = byte_28704A490[v4++ + 32];
    static LocalizedString.localizedString(forKey:)();

    v6 = sub_25E635830();
    v8 = v7;

    if (v6 == v1 && v8 == v3)
    {
      break;
    }

    v10 = sub_25E636070();

    if (v10)
    {
      goto LABEL_23;
    }

    v11 = "PNSeasonSummerText";
    switch(v5)
    {
      case 1:
        v11 = "PNSeasonAutumnText";
        break;
      case 2:
        v11 = "PNSeasonWinterText";
        break;
      case 3:
        v11 = "nTypeLocationText";
        break;
      default:
        break;
    }

    v33 = v11 | 0x8000000000000000;

    v12 = OUTLINED_FUNCTION_0_0();
    MEMORY[0x25F8B9540](v12, 0xE800000000000000);

    static LocalizedString.localizedSynonyms(forKey:)(0xD000000000000012, v33);
    v14 = v13;

    v15 = *(v14 + 16);
    if (v15)
    {
      v31 = v5;
      v16 = v3;
      v32 = MEMORY[0x277D84F90];
      sub_25E5F3468();
      v17 = v32;
      v18 = (v14 + 40);
      do
      {
        v19 = *(v18 - 1);
        v20 = *v18;
        v21 = sub_25E635830();
        v23 = v22;
        v24 = *(v32 + 16);
        if (v24 >= *(v32 + 24) >> 1)
        {
          sub_25E5F3468();
        }

        *(v32 + 16) = v24 + 1;
        v25 = v32 + 16 * v24;
        *(v25 + 32) = v21;
        *(v25 + 40) = v23;
        v18 += 2;
        --v15;
      }

      while (v15);

      v3 = v16;
      v1 = v30;
      LOBYTE(v5) = v31;
    }

    else
    {

      v17 = MEMORY[0x277D84F90];
    }

    v26 = sub_25E5F68AC(v17);
    v27 = sub_25E5F6F28(v1, v3, v26);

    if (v27)
    {
      goto LABEL_23;
    }

    if (v4 == 4)
    {
      LOBYTE(v5) = 4;
      goto LABEL_23;
    }
  }

LABEL_23:

  *a1 = v5;
  return result;
}

PhotosIntelligenceCore::GenericLocationType_optional __swiftcall GenericLocationType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_25E635F30();

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *v2 = v5;
  return result;
}

unint64_t sub_25E612EA0@<X0>(void *a1@<X8>)
{
  result = GenericLocationType.rawValue.getter();
  *a1 = 0xD000000000000010;
  a1[1] = v3;
  return result;
}

unint64_t sub_25E612F94()
{
  result = qword_27FCF92E8;
  if (!qword_27FCF92E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FCF92E8);
  }

  return result;
}

unint64_t sub_25E612FEC()
{
  result = qword_27FCF92F0;
  if (!qword_27FCF92F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FCF92F8, &qword_25E63B8B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FCF92F0);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for GenericLocationType(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_25E61312C()
{
  result = qword_27FCF9300;
  if (!qword_27FCF9300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FCF9300);
  }

  return result;
}

uint64_t static SummarizationFeatureHandlingType.< infix(_:_:)(_BYTE *a1, _BYTE *a2)
{
  if (!*a1)
  {
    goto LABEL_11;
  }

  if (*a1 != 1)
  {
    if (!*a2 || *a2 == 1)
    {
      v5 = sub_25E636070();

      v4 = v5 ^ 1;
      return v4 & 1;
    }

LABEL_11:
    v4 = 0;
    return v4 & 1;
  }

  if (*a2)
  {
    v2 = sub_25E636070();

    return v2 & 1;
  }

  v4 = 1;
  return v4 & 1;
}

PhotosIntelligenceCore::SummarizationFeatureHandlingType_optional __swiftcall SummarizationFeatureHandlingType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_25E635F30();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t SummarizationFeatureHandlingType.rawValue.getter()
{
  v1 = 0x697469726F697270;
  if (*v0 != 1)
  {
    v1 = 0x6B61657262656974;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6465726975716572;
  }
}

uint64_t sub_25E613394@<X0>(uint64_t *a1@<X8>)
{
  result = SummarizationFeatureHandlingType.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_25E613478()
{
  result = qword_27FCF9308;
  if (!qword_27FCF9308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FCF9308);
  }

  return result;
}

uint64_t sub_25E6134F4(unsigned __int8 a1, char a2)
{
  if (a2)
  {
    if (a2 == 1)
    {
      if (a1)
      {
        v2 = sub_25E636070();

        v3 = v2 ^ 1;
      }

      else
      {

        v3 = 0;
      }

      return v3 & 1;
    }

    if (a1 <= 1u)
    {
      v4 = sub_25E636070();

      return v4 & 1;
    }
  }

  v3 = 1;
  return v3 & 1;
}

uint64_t sub_25E613648(char a1, unsigned __int8 a2)
{
  if (a1)
  {
    if (a1 == 1)
    {
      if (a2)
      {
        v2 = sub_25E636070();

        v3 = v2 ^ 1;
      }

      else
      {

        v3 = 0;
      }

      return v3 & 1;
    }

    if (a2 <= 1u)
    {
      v4 = sub_25E636070();

      return v4 & 1;
    }
  }

  v3 = 1;
  return v3 & 1;
}

_BYTE *storeEnumTagSinglePayload for SummarizationFeatureHandlingType(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_25E6138B4(unsigned __int8 a1, char a2)
{
  v2 = a2;
  if (a2)
  {
    if (a2 == 1)
    {
      if (a1)
      {
        v3 = sub_25E636070();

        return v3 & 1;
      }

      v2 = 1;
    }

    else if (a1 > 1u)
    {

      v2 = 0;
    }

    else
    {
      v5 = sub_25E636070();

      v2 = v5 ^ 1;
    }
  }

  return v2 & 1;
}

unint64_t sub_25E6139FC()
{
  result = qword_27FCF9310;
  if (!qword_27FCF9310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FCF9310);
  }

  return result;
}

Swift::String __swiftcall Season.localizedText()()
{
  *v0;
  type metadata accessor for LocalizedString();
  v1 = static LocalizedString.localizedString(forKey:)();
  v3 = v2;

  v4 = v1;
  v5 = v3;
  result._object = v5;
  result._countAndFlagsBits = v4;
  return result;
}

uint64_t Season.localizedSynonyms()()
{
  v1 = "PNSeasonSummerText";
  switch(*v0)
  {
    case 1:
      v2 = "PNSeasonSummerText";
      goto LABEL_5;
    case 2:
      v2 = "PNSeasonAutumnText";
      goto LABEL_5;
    case 3:
      v2 = "PNSeasonWinterText";
LABEL_5:
      v1 = v2 - 32;
      break;
    default:
      break;
  }

  v7 = v1 | 0x8000000000000000;

  v3 = OUTLINED_FUNCTION_0_0();
  MEMORY[0x25F8B9540](v3, 0xE800000000000000);

  type metadata accessor for LocalizedString();
  static LocalizedString.localizedSynonyms(forKey:)(0xD000000000000012, v7);
  v5 = v4;

  return v5;
}

uint64_t static Season.from(localizedText:)@<X0>(_BYTE *a1@<X8>)
{
  v1 = sub_25E635830();
  v3 = v2;
  v4 = 0;
  v30 = v1;
  type metadata accessor for LocalizedString();
  while (1)
  {
    v5 = byte_28704A490[v4++ + 32];
    static LocalizedString.localizedString(forKey:)();

    v6 = sub_25E635830();
    v8 = v7;

    if (v6 == v1 && v8 == v3)
    {
      break;
    }

    v10 = sub_25E636070();

    if (v10)
    {
      goto LABEL_23;
    }

    v11 = "PNSeasonSummerText";
    switch(v5)
    {
      case 1:
        v11 = "PNSeasonAutumnText";
        break;
      case 2:
        v11 = "PNSeasonWinterText";
        break;
      case 3:
        v11 = "nTypeLocationText";
        break;
      default:
        break;
    }

    v33 = v11 | 0x8000000000000000;

    v12 = OUTLINED_FUNCTION_0_0();
    MEMORY[0x25F8B9540](v12, 0xE800000000000000);

    static LocalizedString.localizedSynonyms(forKey:)(0xD000000000000012, v33);
    v14 = v13;

    v15 = *(v14 + 16);
    if (v15)
    {
      v31 = v5;
      v16 = v3;
      v32 = MEMORY[0x277D84F90];
      sub_25E5F3468();
      v17 = v32;
      v18 = (v14 + 40);
      do
      {
        v19 = *(v18 - 1);
        v20 = *v18;
        v21 = sub_25E635830();
        v23 = v22;
        v24 = *(v32 + 16);
        if (v24 >= *(v32 + 24) >> 1)
        {
          sub_25E5F3468();
        }

        *(v32 + 16) = v24 + 1;
        v25 = v32 + 16 * v24;
        *(v25 + 32) = v21;
        *(v25 + 40) = v23;
        v18 += 2;
        --v15;
      }

      while (v15);

      v3 = v16;
      v1 = v30;
      LOBYTE(v5) = v31;
    }

    else
    {

      v17 = MEMORY[0x277D84F90];
    }

    v26 = sub_25E5F68AC(v17);
    v27 = sub_25E5F6F28(v1, v3, v26);

    if (v27)
    {
      goto LABEL_23;
    }

    if (v4 == 4)
    {
      LOBYTE(v5) = 4;
      goto LABEL_23;
    }
  }

LABEL_23:

  *a1 = v5;
  return result;
}

PhotosIntelligenceCore::Season_optional __swiftcall Season.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_25E635F30();

  v5 = 4;
  if (v3 < 4)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_25E613FB4@<X0>(uint64_t *a1@<X8>)
{
  result = Season.rawValue.getter();
  *a1 = result;
  a1[1] = 0xE600000000000000;
  return result;
}

unint64_t sub_25E6140A4()
{
  result = qword_27FCF9318;
  if (!qword_27FCF9318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FCF9318);
  }

  return result;
}

unint64_t sub_25E6140FC()
{
  result = qword_27FCF9320;
  if (!qword_27FCF9320)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FCF9328, &qword_25E63BBA0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FCF9320);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Season(unsigned __int8 *a1, unsigned int a2)
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

_BYTE *storeEnumTagSinglePayload for Season(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_25E6142C4()
{
  result = qword_27FCF9330;
  if (!qword_27FCF9330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FCF9330);
  }

  return result;
}

uint64_t sub_25E614318@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v2 = *(result + 16);
  if (v2)
  {
    v3 = result + 40 * v2;
    v4 = *(v3 - 8);
    v5 = *(v3 + 8);
    v2 = *(v3 + 24);
  }

  else
  {
    v5 = xmmword_25E63BC40;
    v4 = 0uLL;
  }

  *a2 = v4;
  *(a2 + 16) = v5;
  *(a2 + 32) = v2;
  return result;
}

uint64_t sub_25E614350(uint64_t a1)
{
  v3 = *(a1 + 16);
  v4 = *(*v1 + 16);
  result = v4 + v3;
  if (__OFADD__(v4, v3))
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  result = sub_25E61D388(result, 1, sub_25E60A6C8);
  v6 = *v1;
  if (!*(a1 + 16))
  {

    if (!v3)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  v7 = *(v6 + 16);
  if ((*(v6 + 24) >> 1) - v7 < v3)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  memcpy((v6 + 8 * v7 + 32), (a1 + 32), 8 * v3);

  if (!v3)
  {
LABEL_8:
    *v1 = v6;
    return result;
  }

  v8 = *(v6 + 16);
  v9 = __OFADD__(v8, v3);
  v10 = v8 + v3;
  if (!v9)
  {
    *(v6 + 16) = v10;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
  return result;
}

uint64_t sub_25E61441C(uint64_t a1)
{
  v3 = *(a1 + 16);
  v4 = *(*v1 + 16);
  result = v4 + v3;
  if (__OFADD__(v4, v3))
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  result = sub_25E61D388(result, 1, sub_25E60A798);
  v6 = *v1;
  if (!*(a1 + 16))
  {

    if (!v3)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  if ((*(v6 + 24) >> 1) - *(v6 + 16) < v3)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  swift_arrayInitWithCopy();

  if (!v3)
  {
LABEL_8:
    *v1 = v6;
    return result;
  }

  v7 = *(v6 + 16);
  v8 = __OFADD__(v7, v3);
  v9 = v7 + v3;
  if (!v8)
  {
    *(v6 + 16) = v9;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
  return result;
}

uint64_t sub_25E6144F0(uint64_t result)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    sub_25E635870();
    sub_25E6358E0();
    OUTLINED_FUNCTION_70();

    return OUTLINED_FUNCTION_40_0();
  }

  return result;
}

uint64_t sub_25E61459C()
{
  v3 = v0[1];
  v4 = *(v3 + 16);
  if (!v4)
  {
    return MEMORY[0x277D84F90];
  }

  v5 = *(v3 + 8 * v4 + 24);
  v6 = v5 + 1;
  if (__OFADD__(v5, 1))
  {
    __break(1u);
    goto LABEL_16;
  }

  if (v6 < 0)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  sub_25E60A244(0, v6, *v0);
  v1 = v7;
  v2 = v8;
  if ((v8 & 1) == 0)
  {
LABEL_5:
    v9 = OUTLINED_FUNCTION_35_0();
    sub_25E60AEB8(v9, v10, v1, v2);
    v12 = v11;
LABEL_13:
    swift_unknownObjectRelease();
    return v12;
  }

  sub_25E636080();
  swift_unknownObjectRetain_n();
  v13 = swift_dynamicCastClass();
  if (!v13)
  {
    swift_unknownObjectRelease();
    v13 = MEMORY[0x277D84F90];
  }

  v14 = *(v13 + 16);

  if (__OFSUB__(v2 >> 1, v1))
  {
    goto LABEL_17;
  }

  if (v14 != (v2 >> 1) - v1)
  {
LABEL_18:
    swift_unknownObjectRelease();
    goto LABEL_5;
  }

  v12 = swift_dynamicCastClass();
  swift_unknownObjectRelease();
  if (!v12)
  {
    v12 = MEMORY[0x277D84F90];
    goto LABEL_13;
  }

  return v12;
}

void sub_25E6146C0(void *a1@<X8>)
{
  v6 = v1[1];
  v7 = *(*v1 + 16);
  if (!v7)
  {
    v2 = MEMORY[0x277D84F90];
    goto LABEL_12;
  }

  sub_25E60A244(0, v7 - 1, *v1);
  OUTLINED_FUNCTION_70();
  if ((v4 & 1) == 0)
  {
    goto LABEL_3;
  }

  sub_25E636080();
  swift_unknownObjectRetain_n();
  v12 = swift_dynamicCastClass();
  if (!v12)
  {
    swift_unknownObjectRelease();
    v12 = MEMORY[0x277D84F90];
  }

  v13 = *(v12 + 16);

  if (__OFSUB__(v4 >> 1, v3))
  {
    __break(1u);
    goto LABEL_25;
  }

  if (v13 != (v4 >> 1) - v3)
  {
LABEL_25:
    swift_unknownObjectRelease();
LABEL_3:
    v8 = OUTLINED_FUNCTION_40_0();
    sub_25E60AEB8(v8, v9, v10, v4);
    v2 = v11;
    goto LABEL_11;
  }

  swift_dynamicCastClass();
  OUTLINED_FUNCTION_65();
  swift_unknownObjectRelease();
  if (v2)
  {
    goto LABEL_12;
  }

  v2 = MEMORY[0x277D84F90];
LABEL_11:
  swift_unknownObjectRelease();
LABEL_12:
  v14 = *(v6 + 16);
  if (v14)
  {
    v15 = *(v2 + 16);
    v16 = (v6 + 32);
    v17 = MEMORY[0x277D84F90];
    do
    {
      v19 = *v16++;
      v18 = v19;
      if (v19 < v15)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v20 = *(v17 + 16);
          sub_25E5F3504();
        }

        v21 = *(v17 + 16);
        if (v21 >= *(v17 + 24) >> 1)
        {
          sub_25E5F3504();
        }

        *(v17 + 16) = v21 + 1;
        *(v17 + 8 * v21 + 32) = v18;
      }

      --v14;
    }

    while (v14);
  }

  else
  {
    v17 = MEMORY[0x277D84F90];
  }

  *a1 = v2;
  a1[1] = v17;
}

uint64_t sub_25E614870@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = 0;
    v5 = (a1 + 32);
    do
    {
      v7 = *v5++;
      v6 = v7;
      if ((v7 & ~v4) == 0)
      {
        v6 = 0;
      }

      v4 |= v6;
      --v3;
    }

    while (v3);
  }

  else
  {
    v4 = 0;
  }

  *a2 = v4;
  return result;
}

uint64_t sub_25E6148EC()
{
  OUTLINED_FUNCTION_81();
  MEMORY[0x25F8B9DE0](0);
  return sub_25E636130();
}

BOOL sub_25E6149C4(void *a1, uint64_t a2)
{
  v3 = *v2 & a2;
  if (v3 != a2)
  {
    *v2 |= a2;
  }

  *a1 = a2;
  return v3 != a2;
}

uint64_t sub_25E6149F8@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2 & result;
  if (v3)
  {
    *v2 &= ~result;
  }

  *a2 = v3;
  *(a2 + 8) = v3 == 0;
  return result;
}

uint64_t sub_25E614A28@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2;
  *v2 |= result;
  v4 = v3 & result;
  *a2 = v4;
  *(a2 + 8) = v4 == 0;
  return result;
}

PhotosIntelligenceCore::RootEventRecorder::Options sub_25E614B1C@<X0>(Swift::Int *a1@<X0>, uint64_t a2@<X8>)
{
  result.rawValue = RootEventRecorder.Options.init(rawValue:)(*a1).rawValue;
  *a2 = v4;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_25E614B5C@<X0>(uint64_t *a1@<X8>)
{
  result = RootEventRecorder.Options.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t static RootEventRecorder.Path.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = a2[1];
  if ((sub_25E614BF4(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  v4 = OUTLINED_FUNCTION_35_0();

  return sub_25E614C80(v4, v5);
}

uint64_t sub_25E614BF4(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      return 1;
    }

    v3 = (a1 + 40);
    for (i = (a2 + 40); ; i += 2)
    {
      v5 = *(v3 - 1) == *(i - 1) && *v3 == *i;
      if (!v5 && (sub_25E636070() & 1) == 0)
      {
        break;
      }

      v3 += 2;
      if (!--v2)
      {
        return 1;
      }
    }
  }

  return 0;
}

uint64_t sub_25E614C80(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || result == a2)
  {
    return 1;
  }

  v3 = (result + 32);
  v4 = (a2 + 32);
  while (v2)
  {
    v6 = *v3++;
    v5 = v6;
    v7 = *v4++;
    result = v5 == v7;
    if (v5 != v7 || v2-- == 1)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_25E614CDC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E656E6F706D6F63 && a2 == 0xEA00000000007374;
  if (v4 || (sub_25E636070() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000011 && 0x800000025E6393C0 == a2)
  {

    return 1;
  }

  else
  {
    v7 = sub_25E636070();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_25E614DBC(char a1)
{
  if (a1)
  {
    return 0xD000000000000011;
  }

  else
  {
    return 0x6E656E6F706D6F63;
  }
}

uint64_t sub_25E614E04@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_25E614CDC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_25E614E4C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_25E614DB4();
  *a1 = result;
  return result;
}

uint64_t sub_25E614E74(uint64_t a1)
{
  v2 = sub_25E6150B4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25E614EB0(uint64_t a1)
{
  v2 = sub_25E6150B4();

  return MEMORY[0x2821FE720](a1, v2);
}

void RootEventRecorder.Path.encode(to:)()
{
  OUTLINED_FUNCTION_37_0();
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCF9338, &unk_25E63BC70);
  OUTLINED_FUNCTION_5(v4);
  v6 = v5;
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_10_3();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_21_0();
  v10 = *v0;
  v15 = v0[1];
  v11 = v3[4];
  OUTLINED_FUNCTION_63(v3, v3[3]);
  v12 = sub_25E6150B4();

  OUTLINED_FUNCTION_61();
  sub_25E636150();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCF9198, &qword_25E63B198);
  OUTLINED_FUNCTION_13_2();
  sub_25E61D91C(v13);
  OUTLINED_FUNCTION_12_2();
  sub_25E636000();

  if (!v12)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCF9350, &qword_25E63BC80);
    OUTLINED_FUNCTION_13_2();
    sub_25E615108(v14);
    OUTLINED_FUNCTION_12_2();
    sub_25E636000();
  }

  (*(v6 + 8))(v1, v4);
  OUTLINED_FUNCTION_38_0();
}

unint64_t sub_25E6150B4()
{
  result = qword_27FCF9340;
  if (!qword_27FCF9340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FCF9340);
  }

  return result;
}

unint64_t sub_25E615108(uint64_t a1)
{
  result = OUTLINED_FUNCTION_69(a1);
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FCF9350, &qword_25E63BC80);
    result = OUTLINED_FUNCTION_77();
    atomic_store(result, v1);
  }

  return result;
}

void RootEventRecorder.Path.hash(into:)(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[1];
  sub_25E61D8BC(a1, v2);
  v4 = OUTLINED_FUNCTION_35_0();

  sub_25E61D87C(v4, v5);
}

uint64_t RootEventRecorder.Path.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  OUTLINED_FUNCTION_81();
  sub_25E61D8BC(v4, v1);
  sub_25E61D87C(v4, v2);
  return sub_25E636130();
}

void RootEventRecorder.Path.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_37_0();
  v12 = v11;
  v14 = v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCF9360, &qword_25E63BC88);
  OUTLINED_FUNCTION_5(v15);
  v17 = v16;
  v19 = *(v18 + 64);
  OUTLINED_FUNCTION_10_3();
  MEMORY[0x28223BE20](v20);
  v21 = v12[4];
  OUTLINED_FUNCTION_63(v12, v12[3]);
  sub_25E6150B4();
  sub_25E636140();
  if (v10)
  {
    __swift_destroy_boxed_opaque_existential_0Tm(v12);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCF9198, &qword_25E63B198);
    OUTLINED_FUNCTION_15_3();
    sub_25E61D91C(v22);
    OUTLINED_FUNCTION_30_0();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCF9350, &qword_25E63BC80);
    OUTLINED_FUNCTION_15_3();
    sub_25E615108(v23);
    OUTLINED_FUNCTION_30_0();
    v24 = *(v17 + 8);
    v25 = OUTLINED_FUNCTION_64();
    v26(v25);
    *v14 = a10;
    v14[1] = a10;

    __swift_destroy_boxed_opaque_existential_0Tm(v12);
  }

  OUTLINED_FUNCTION_38_0();
}

uint64_t sub_25E61540C()
{
  v1 = *v0;
  v2 = v0[1];
  sub_25E636110();
  sub_25E61D8BC(v4, v1);
  sub_25E61D87C(v4, v2);
  return sub_25E636130();
}

uint64_t sub_25E615460(uint64_t a1, uint64_t a2, char a3)
{
  OUTLINED_FUNCTION_24_0();
  v5 = sub_25E635810();
  v6 = OUTLINED_FUNCTION_52_0(v5);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_2_3();
  if ((a3 & 1) == 0)
  {
    if (v3)
    {
      goto LABEL_7;
    }

    __break(1u);
    goto LABEL_10;
  }

  if (HIDWORD(v3))
  {
LABEL_10:
    __break(1u);
LABEL_11:
    __break(1u);
    goto LABEL_7;
  }

  if ((v3 & 0xFFFFF800) == 0xD800)
  {
    __break(1u);
    goto LABEL_13;
  }

  if (v3 >> 16 > 0x10)
  {
    goto LABEL_11;
  }

LABEL_7:
  sub_25E635800();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCF9580, &qword_25E63CA98);
  sub_25E61F3E8(&unk_280CB2810);
  result = sub_25E6357E0();
  if (!v10)
  {
LABEL_13:
    OUTLINED_FUNCTION_43_0();
    OUTLINED_FUNCTION_42_0();
    result = OUTLINED_FUNCTION_58();
    __break(1u);
  }

  return result;
}

uint64_t sub_25E615670(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E696E6E69676562 && a2 == 0xE900000000000067;
  if (v4 || (sub_25E636070() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 6581861 && a2 == 0xE300000000000000;
    if (v6 || (sub_25E636070() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6C65636E6163 && a2 == 0xE600000000000000;
      if (v7 || (sub_25E636070() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0x726F727265 && a2 == 0xE500000000000000)
      {

        return 3;
      }

      else
      {
        v9 = sub_25E636070();

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

uint64_t sub_25E6157D0(char a1)
{
  result = 0x6E696E6E69676562;
  switch(a1)
  {
    case 1:
      result = 6581861;
      break;
    case 2:
      result = 0x6C65636E6163;
      break;
    case 3:
      result = 0x726F727265;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_25E615868@<X0>(_BYTE *a1@<X8>)
{
  result = sub_25E610C18();
  *a1 = result & 1;
  return result;
}

uint64_t sub_25E615894(uint64_t a1)
{
  v2 = sub_25E61DAC4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25E6158D0(uint64_t a1)
{
  v2 = sub_25E61DAC4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_25E61590C(uint64_t a1)
{
  v2 = sub_25E61DA1C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25E615948(uint64_t a1)
{
  v2 = sub_25E61DA1C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_25E61598C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_25E615670(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_25E6159B4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_25E6157C8();
  *a1 = result;
  return result;
}

uint64_t sub_25E6159DC(uint64_t a1)
{
  v2 = sub_25E61D974();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25E615A18(uint64_t a1)
{
  v2 = sub_25E61D974();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_25E615A54(uint64_t a1)
{
  v2 = sub_25E61DA70();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25E615A90(uint64_t a1)
{
  v2 = sub_25E61DA70();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_25E615ACC(uint64_t a1)
{
  v2 = sub_25E61D9C8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25E615B08(uint64_t a1)
{
  v2 = sub_25E61D9C8();

  return MEMORY[0x2821FE720](a1, v2);
}

void RootEventRecorder.EventType.encode(to:)()
{
  OUTLINED_FUNCTION_37_0();
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCF9378, &qword_25E63BC90);
  v5 = OUTLINED_FUNCTION_5(v4);
  v53 = v6;
  v54 = v5;
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_10_3();
  MEMORY[0x28223BE20](v9);
  v52 = &v44 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCF9380, &qword_25E63BC98);
  v12 = OUTLINED_FUNCTION_5(v11);
  v50 = v13;
  v51 = v12;
  v15 = *(v14 + 64);
  OUTLINED_FUNCTION_10_3();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_41_0(v17);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCF9388, &qword_25E63BCA0);
  v19 = OUTLINED_FUNCTION_5(v18);
  v47 = v20;
  v48 = v19;
  v22 = *(v21 + 64);
  OUTLINED_FUNCTION_10_3();
  MEMORY[0x28223BE20](v23);
  v46 = &v44 - v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCF9390, &qword_25E63BCA8);
  v26 = OUTLINED_FUNCTION_5(v25);
  v44 = v27;
  v45 = v26;
  v29 = *(v28 + 64);
  OUTLINED_FUNCTION_10_3();
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_39_0();
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCF9398, &qword_25E63BCB0);
  OUTLINED_FUNCTION_5(v31);
  v33 = v32;
  v35 = *(v34 + 64);
  OUTLINED_FUNCTION_10_3();
  MEMORY[0x28223BE20](v36);
  v38 = &v44 - v37;
  v39 = *v0;
  v40 = v3[4];
  OUTLINED_FUNCTION_63(v3, v3[3]);
  sub_25E61D974();
  sub_25E636150();
  switch(v39)
  {
    case 1:
      sub_25E61DA70();
      v41 = v46;
      OUTLINED_FUNCTION_31_0();
      v43 = v47;
      v42 = v48;
      goto LABEL_6;
    case 2:
      sub_25E61DA1C();
      v41 = v49;
      OUTLINED_FUNCTION_31_0();
      v43 = v50;
      v42 = v51;
      goto LABEL_6;
    case 3:
      OUTLINED_FUNCTION_67();
      sub_25E61D9C8();
      v41 = v52;
      OUTLINED_FUNCTION_31_0();
      v43 = v53;
      v42 = v54;
LABEL_6:
      (*(v43 + 8))(v41, v42);
      break;
    default:
      sub_25E61DAC4();
      sub_25E635FC0();
      (*(v44 + 8))(v1, v45);
      break;
  }

  (*(v33 + 8))(v38, v31);
  OUTLINED_FUNCTION_38_0();
}

uint64_t RootEventRecorder.EventType.hashValue.getter()
{
  v1 = *v0;
  OUTLINED_FUNCTION_81();
  MEMORY[0x25F8B9DE0](v1);
  return sub_25E636130();
}

void RootEventRecorder.EventType.init(from:)()
{
  OUTLINED_FUNCTION_37_0();
  v88 = v0;
  v4 = v3;
  v84 = v5;
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCF93C8, &qword_25E63BCB8);
  OUTLINED_FUNCTION_5(v87);
  v83 = v6;
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_10_3();
  MEMORY[0x28223BE20](v9);
  v86 = &v71 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCF93D0, &qword_25E63BCC0);
  v12 = OUTLINED_FUNCTION_5(v11);
  v80 = v13;
  v81 = v12;
  v15 = *(v14 + 64);
  OUTLINED_FUNCTION_10_3();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_41_0(v17);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCF93D8, &qword_25E63BCC8);
  v19 = OUTLINED_FUNCTION_5(v18);
  v78 = v20;
  v79 = v19;
  v22 = *(v21 + 64);
  OUTLINED_FUNCTION_10_3();
  MEMORY[0x28223BE20](v23);
  v25 = &v71 - v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCF93E0, &qword_25E63BCD0);
  OUTLINED_FUNCTION_5(v26);
  v77 = v27;
  v29 = *(v28 + 64);
  OUTLINED_FUNCTION_10_3();
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_39_0();
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCF93E8, &qword_25E63BCD8);
  OUTLINED_FUNCTION_5(v31);
  v85 = v32;
  v34 = *(v33 + 64);
  OUTLINED_FUNCTION_10_3();
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_21_0();
  v36 = v4[4];
  OUTLINED_FUNCTION_63(v4, v4[3]);
  sub_25E61D974();
  OUTLINED_FUNCTION_61();
  v37 = v88;
  sub_25E636140();
  if (v37)
  {
    goto LABEL_9;
  }

  v74 = v26;
  v75 = v2;
  v76 = v25;
  v38 = v86;
  v39 = v87;
  v88 = v4;
  v40 = v1;
  v41 = sub_25E635FA0();
  v45 = sub_25E61D4D8(v41, 0);
  if (v43 == v44 >> 1)
  {
LABEL_8:
    v56 = v85;
    v57 = sub_25E635E30();
    swift_allocError();
    v59 = v58;
    v60 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCF93F0, &qword_25E63BCE0) + 48);
    *v59 = &type metadata for RootEventRecorder.EventType;
    sub_25E635F50();
    sub_25E635E20();
    (*(*(v57 - 8) + 104))(v59, *MEMORY[0x277D84160], v57);
    swift_willThrow();
    swift_unknownObjectRelease();
    (*(v56 + 8))(v40, v31);
    v4 = v88;
LABEL_9:
    __swift_destroy_boxed_opaque_existential_0Tm(v4);
LABEL_10:
    OUTLINED_FUNCTION_38_0();
    return;
  }

  v73 = 0;
  if (v43 < (v44 >> 1))
  {
    v46 = *(v42 + v43);
    sub_25E61DB18(v43 + 1, v44 >> 1, v45, v42, v43, v44);
    v48 = v47;
    v50 = v49;
    swift_unknownObjectRelease();
    if (v48 == v50 >> 1)
    {
      v51 = v84;
      v72 = v46;
      v52 = v46;
      v53 = v83;
      switch(v52)
      {
        case 1:
          sub_25E61DA70();
          v61 = v76;
          OUTLINED_FUNCTION_28_0();
          v66 = v73;
          sub_25E635F40();
          if (v66)
          {
            goto LABEL_16;
          }

          swift_unknownObjectRelease();
          v64 = v78;
          v63 = v79;
          goto LABEL_18;
        case 2:
          sub_25E61DA1C();
          v61 = v82;
          OUTLINED_FUNCTION_28_0();
          v62 = v73;
          sub_25E635F40();
          if (v62)
          {
            goto LABEL_16;
          }

          swift_unknownObjectRelease();
          v64 = v80;
          v63 = v81;
LABEL_18:
          (*(v64 + 8))(v61, v63);
          goto LABEL_19;
        case 3:
          OUTLINED_FUNCTION_67();
          sub_25E61D9C8();
          OUTLINED_FUNCTION_28_0();
          v65 = v73;
          sub_25E635F40();
          if (v65)
          {
            goto LABEL_16;
          }

          swift_unknownObjectRelease();
          (*(v53 + 8))(v38, v39);
          goto LABEL_19;
        default:
          sub_25E61DAC4();
          v54 = v75;
          OUTLINED_FUNCTION_28_0();
          v55 = v73;
          sub_25E635F40();
          if (v55)
          {
LABEL_16:
            v67 = OUTLINED_FUNCTION_8_4();
            v68(v67);
            swift_unknownObjectRelease();
            v4 = v88;
            goto LABEL_9;
          }

          swift_unknownObjectRelease();
          (*(v77 + 8))(v54, v74);
LABEL_19:
          v69 = OUTLINED_FUNCTION_8_4();
          v70(v69);
          *v51 = v72;
          __swift_destroy_boxed_opaque_existential_0Tm(v88);
          break;
      }

      goto LABEL_10;
    }

    goto LABEL_8;
  }

  __break(1u);
}

uint64_t sub_25E616534(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1919251317 && a2 == 0xE400000000000000;
  if (v3 || (sub_25E636070() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6D6574737973 && a2 == 0xE600000000000000;
    if (v6 || (sub_25E636070() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 1701602409 && a2 == 0xE400000000000000;
      if (v7 || (sub_25E636070() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 1701013870 && a2 == 0xE400000000000000)
      {

        return 3;
      }

      else
      {
        v9 = sub_25E636070();

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

uint64_t sub_25E616690(char a1)
{
  result = 1919251317;
  switch(a1)
  {
    case 1:
      result = 0x6D6574737973;
      break;
    case 2:
      result = 1701602409;
      break;
    case 3:
      result = 1701013870;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_25E6166F0(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCF9550, &qword_25E63CA68);
  OUTLINED_FUNCTION_5(v4);
  v6 = v5;
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_10_3();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_21_0();
  v10 = a1[4];
  OUTLINED_FUNCTION_63(a1, a1[3]);
  sub_25E61F2CC();
  OUTLINED_FUNCTION_61();
  sub_25E636150();
  OUTLINED_FUNCTION_12_2();
  sub_25E635FF0();
  if (!v1)
  {
    OUTLINED_FUNCTION_12_2();
    sub_25E635FF0();
    OUTLINED_FUNCTION_12_2();
    sub_25E635FF0();
    OUTLINED_FUNCTION_12_2();
    sub_25E635FF0();
  }

  return (*(v6 + 8))(v2, v4);
}

double sub_25E61688C(uint64_t *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCF9560, &qword_25E63CA70);
  OUTLINED_FUNCTION_5(v2);
  v4 = v3;
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_10_3();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_39_0();
  v8 = a1[4];
  OUTLINED_FUNCTION_63(a1, a1[3]);
  sub_25E61F2CC();
  sub_25E636140();
  OUTLINED_FUNCTION_33();
  v10 = v9;
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_33();
  v12 = *(v4 + 8);
  v13 = OUTLINED_FUNCTION_62();
  v14(v13);
  __swift_destroy_boxed_opaque_existential_0Tm(a1);
  return v10;
}

uint64_t sub_25E616A88@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_25E616534(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_25E616AB0(uint64_t a1)
{
  v2 = sub_25E61F2CC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25E616AEC(uint64_t a1)
{
  v2 = sub_25E61F2CC();

  return MEMORY[0x2821FE720](a1, v2);
}

void sub_25E616B28(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_25E61688C(a1);
  if (!v2)
  {
    *a2 = v4;
    *(a2 + 8) = v5;
    *(a2 + 16) = v6;
    *(a2 + 24) = v7;
  }
}

uint64_t sub_25E616B58(void *a1)
{
  v2 = *v1;
  v3 = v1[1];
  v4 = v1[2];
  v5 = v1[3];
  return sub_25E6166F0(a1);
}

uint64_t RootEventRecorder.Event.uuid.getter()
{
  OUTLINED_FUNCTION_49_0();
  v0 = sub_25E6355A0();
  OUTLINED_FUNCTION_1_2(v0);
  v2 = *(v1 + 16);
  v3 = OUTLINED_FUNCTION_35_0();

  return v4(v3);
}

uint64_t RootEventRecorder.Event.label.getter()
{
  v1 = (v0 + *(type metadata accessor for RootEventRecorder.Event(0) + 20));
  v2 = *v1;
  v3 = v1[1];

  return OUTLINED_FUNCTION_35_0();
}

uint64_t RootEventRecorder.Event.type.getter()
{
  v2 = OUTLINED_FUNCTION_49_0();
  result = type metadata accessor for RootEventRecorder.Event(v2);
  *v0 = *(v1 + *(result + 24));
  return result;
}

uint64_t RootEventRecorder.Event.tag.getter()
{
  v2 = OUTLINED_FUNCTION_49_0();
  v3 = (v1 + *(type metadata accessor for RootEventRecorder.Event(v2) + 28));
  v4 = v3[1];
  *v0 = *v3;
  v0[1] = v4;
}

uint64_t RootEventRecorder.Event.path.getter()
{
  v2 = OUTLINED_FUNCTION_49_0();
  v3 = (v1 + *(type metadata accessor for RootEventRecorder.Event(v2) + 36));
  v4 = v3[1];
  *v0 = *v3;
  v0[1] = v4;
}

uint64_t sub_25E616CF0(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1684632949 && a2 == 0xE400000000000000;
  if (v3 || (sub_25E636070() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6C6562616CLL && a2 == 0xE500000000000000;
    if (v6 || (sub_25E636070() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 1701869940 && a2 == 0xE400000000000000;
      if (v7 || (sub_25E636070() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 6775156 && a2 == 0xE300000000000000;
        if (v8 || (sub_25E636070() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x6D617473656D6974 && a2 == 0xE900000000000070;
          if (v9 || (sub_25E636070() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 1752457584 && a2 == 0xE400000000000000;
            if (v10 || (sub_25E636070() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0x4C6C616D72656874 && a2 == 0xEC0000006C657665;
              if (v11 || (sub_25E636070() & 1) != 0)
              {

                return 6;
              }

              else if (a1 == 0x64616F4C757063 && a2 == 0xE700000000000000)
              {

                return 7;
              }

              else
              {
                v13 = sub_25E636070();

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

uint64_t sub_25E616F78(unsigned __int8 a1)
{
  OUTLINED_FUNCTION_81();
  MEMORY[0x25F8B9DE0](a1);
  return sub_25E636130();
}

uint64_t sub_25E616FB8(char a1)
{
  result = 1684632949;
  switch(a1)
  {
    case 1:
      result = 0x6C6562616CLL;
      break;
    case 2:
      result = 1701869940;
      break;
    case 3:
      result = 6775156;
      break;
    case 4:
      result = 0x6D617473656D6974;
      break;
    case 5:
      result = 1752457584;
      break;
    case 6:
      result = 0x4C6C616D72656874;
      break;
    case 7:
      result = 0x64616F4C757063;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_25E617084@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_25E616CF0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_25E6170AC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_25E616F70();
  *a1 = result;
  return result;
}

uint64_t sub_25E6170D4(uint64_t a1)
{
  v2 = sub_25E61DBB4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25E617110(uint64_t a1)
{
  v2 = sub_25E61DBB4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t RootEventRecorder.Event.encode(to:)(void *a1)
{
  v4 = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCF93F8, &qword_25E63BCE8);
  OUTLINED_FUNCTION_5(v6);
  v8 = v7;
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_10_3();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_21_0();
  v12 = a1[4];
  OUTLINED_FUNCTION_63(a1, a1[3]);
  sub_25E61DBB4();
  OUTLINED_FUNCTION_61();
  sub_25E636150();
  sub_25E6355A0();
  OUTLINED_FUNCTION_17_3();
  sub_25E61F320(v13);
  OUTLINED_FUNCTION_12_2();
  sub_25E636000();
  if (!v2)
  {
    v14 = type metadata accessor for RootEventRecorder.Event(0);
    v15 = (v4 + v14[5]);
    v16 = *v15;
    v17 = v15[1];
    OUTLINED_FUNCTION_12_2();
    sub_25E635FE0();
    v24 = *(v4 + v14[6]);
    sub_25E61DC08();
    OUTLINED_FUNCTION_11_3();
    OUTLINED_FUNCTION_12_2();
    sub_25E636000();
    v18 = (v4 + v14[7]);
    v25 = *v18;
    v29 = v18[1];
    OUTLINED_FUNCTION_67();
    sub_25E61DC5C();
    OUTLINED_FUNCTION_65();

    OUTLINED_FUNCTION_11_3();
    OUTLINED_FUNCTION_12_2();
    sub_25E636000();

    v19 = *(v4 + v14[8]);
    OUTLINED_FUNCTION_12_2();
    sub_25E635FF0();
    v20 = (v4 + v14[9]);
    v26 = *v20;
    v30 = v20[1];
    sub_25E61DCB0();
    OUTLINED_FUNCTION_65();

    OUTLINED_FUNCTION_11_3();
    OUTLINED_FUNCTION_12_2();
    sub_25E636000();

    v27 = *(v4 + v14[10]);
    type metadata accessor for ThermalState(0);
    OUTLINED_FUNCTION_14_3();
    sub_25E61F320(v21);
    OUTLINED_FUNCTION_11_3();
    OUTLINED_FUNCTION_12_2();
    sub_25E636000();
    v22 = (v4 + v14[11]);
    v28 = *v22;
    v31 = v22[1];
    v32 = *(v22 + 32);
    sub_25E61DD04();
    OUTLINED_FUNCTION_11_3();
    OUTLINED_FUNCTION_12_2();
    sub_25E635FD0();
  }

  return (*(v8 + 8))(v3, v6);
}

void RootEventRecorder.Event.init(from:)()
{
  OUTLINED_FUNCTION_37_0();
  v2 = v1;
  v33 = v3;
  v4 = sub_25E6355A0();
  v5 = OUTLINED_FUNCTION_5(v4);
  v34 = v6;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_2_3();
  v11 = v10 - v9;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCF9438, &qword_25E63BCF0);
  OUTLINED_FUNCTION_5(v12);
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_10_3();
  MEMORY[0x28223BE20](v15);
  v35 = type metadata accessor for RootEventRecorder.Event(0);
  v16 = OUTLINED_FUNCTION_1_2(v35);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_2_3();
  v21 = v20 - v19;
  v22 = v2[4];
  OUTLINED_FUNCTION_63(v2, v2[3]);
  sub_25E61DBB4();
  sub_25E636140();
  if (v0)
  {
    __swift_destroy_boxed_opaque_existential_0Tm(v2);
  }

  else
  {
    LOBYTE(v36) = 0;
    OUTLINED_FUNCTION_17_3();
    sub_25E61F320(v23);
    sub_25E635F90();
    (*(v34 + 32))(v21, v11, v4);
    OUTLINED_FUNCTION_59(1);
    v24 = sub_25E635F70();
    v25 = (v21 + v35[5]);
    *v25 = v24;
    v25[1] = v26;
    sub_25E61DD58();
    OUTLINED_FUNCTION_7_4();
    sub_25E635F90();
    *(v21 + v35[6]) = 0;
    OUTLINED_FUNCTION_67();
    sub_25E61DDAC();
    OUTLINED_FUNCTION_7_4();
    sub_25E635F90();
    *(v21 + v35[7]) = v36;
    OUTLINED_FUNCTION_59(4);
    sub_25E635F80();
    *(v21 + v35[8]) = v27;
    sub_25E61DE00();
    OUTLINED_FUNCTION_7_4();
    sub_25E635F90();
    *(v21 + v35[9]) = v36;
    type metadata accessor for ThermalState(0);
    OUTLINED_FUNCTION_14_3();
    sub_25E61F320(v28);
    sub_25E635F90();
    *(v21 + v35[10]) = v36;
    sub_25E61DE54();
    OUTLINED_FUNCTION_7_4();
    sub_25E635F60();
    v29 = OUTLINED_FUNCTION_8_4();
    v30(v29);
    v31 = v21 + v35[11];
    *v31 = v36;
    *(v31 + 16) = v37;
    *(v31 + 32) = v38;
    sub_25E61DEC8(v21, v33);
    __swift_destroy_boxed_opaque_existential_0Tm(v2);
    OUTLINED_FUNCTION_5_4();
    sub_25E61DF20(v21, v32);
  }

  OUTLINED_FUNCTION_38_0();
}

uint64_t RootEventRecorder.referenceDate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC22PhotosIntelligenceCore17RootEventRecorder_referenceDate;
  v4 = sub_25E635570();
  v5 = OUTLINED_FUNCTION_1_2(v4);
  v7 = *(v6 + 16);

  return v7(a1, v1 + v3, v5);
}

uint64_t sub_25E617A64()
{
  v6 = *MEMORY[0x277D85DE8];
  *host_info_out = 0;
  v5 = 0;
  host_info_outCnt = 4;
  v0 = MEMORY[0x25F8BA170]();
  if (host_statistics(v0, 3, host_info_out, &host_info_outCnt))
  {
    result = 0;
  }

  else
  {
    result = *host_info_out;
  }

  v2 = *MEMORY[0x277D85DE8];
  return result;
}

int *_s22PhotosIntelligenceCore13EventRecorderPA2A04RootdE0CRszrlE6ignoreQrvgZ_0@<X0>(uint64_t a1@<X8>)
{
  sub_25E635590();
  result = type metadata accessor for RootEventRecorder.EventState(0);
  v3 = a1 + result[5];
  *v3 = "";
  *(v3 + 8) = 0;
  *(v3 + 16) = 2;
  v4 = (a1 + result[6]);
  *v4 = 0x65726F6E6769;
  v4[1] = 0xE600000000000000;
  v5 = (a1 + result[7]);
  v6 = MEMORY[0x277D84F90];
  *v5 = MEMORY[0x277D84F90];
  v5[1] = v6;
  *(a1 + result[8]) = 0;
  *(a1 + result[9]) = 0;
  return result;
}

uint64_t RootEventRecorder.__allocating_init(options:defaultTag:logger:)(char *a1, uint64_t *a2, uint64_t a3)
{
  v7 = *(v3 + 48);
  v8 = *(v3 + 52);
  v9 = swift_allocObject();
  RootEventRecorder.init(options:defaultTag:logger:)(a1, a2, a3);
  return v9;
}

void *RootEventRecorder.init(options:defaultTag:logger:)(char *a1, uint64_t *a2, uint64_t a3)
{
  v4 = v3;
  v46 = *v3;
  v49 = sub_25E635710();
  v7 = OUTLINED_FUNCTION_5(v49);
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_2_3();
  v47 = (v13 - v12);
  v50 = sub_25E635690();
  v14 = OUTLINED_FUNCTION_5(v50);
  v48 = v15;
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_2_3();
  OUTLINED_FUNCTION_41_0(v18);
  v19 = sub_25E6355A0();
  v20 = OUTLINED_FUNCTION_5(v19);
  v22 = v21;
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_2_3();
  v27 = v26 - v25;
  v28 = *a1;
  v43 = a2[1];
  v44 = *a2;
  *(v4 + 6) = 0;
  v29 = MEMORY[0x277D84F90];
  v4[4] = MEMORY[0x277D84F90];
  *(v4 + 10) = 0;
  v4[6] = MEMORY[0x277D84F98];
  sub_25E635560();
  v30 = (v4 + OBJC_IVAR____TtC22PhotosIntelligenceCore17RootEventRecorder_eventSessionIdentifier);
  sub_25E635590();
  sub_25E635580();
  (*(v22 + 8))(v27, v19);
  *v30 = sub_25E6144F0(8);
  v30[1] = v31;
  v30[2] = v32;
  v30[3] = v33;
  v34 = (v4 + OBJC_IVAR____TtC22PhotosIntelligenceCore17RootEventRecorder_path);
  *v34 = v29;
  v34[1] = v29;
  v35 = OBJC_IVAR____TtC22PhotosIntelligenceCore17RootEventRecorder_processInfo;
  *(v4 + v35) = [objc_allocWithZone(MEMORY[0x277CCAC38]) init];
  v36 = v4 + OBJC_IVAR____TtC22PhotosIntelligenceCore17RootEventRecorder_previousCPULoadInfo;
  v37 = sub_25E617A64();
  *v36 = 0;
  *(v36 + 4) = v37;
  *(v36 + 3) = v38;
  *(v36 + 4) = v39;
  *(v4 + OBJC_IVAR____TtC22PhotosIntelligenceCore17RootEventRecorder_warningLimit) = 0x3FB999999999999ALL;
  v40 = (v4 + OBJC_IVAR____TtC22PhotosIntelligenceCore17RootEventRecorder_defaultTag);
  *v40 = v44;
  v40[1] = v43;
  v41 = *(v9 + 16);
  v41(v4 + OBJC_IVAR____TtC22PhotosIntelligenceCore17RootEventRecorder_logger, a3, v49);
  v41(v47, a3, v49);
  sub_25E635670();
  (*(v9 + 8))(a3, v49);
  (*(v48 + 32))(v4 + OBJC_IVAR____TtC22PhotosIntelligenceCore17RootEventRecorder_signposter, v45, v50);
  *(v4 + 16) = v28 & 1;
  *(v4 + 18) = (v28 & 2) != 0;
  *(v4 + 17) = (v28 & 4) != 0;
  return v4;
}

double sub_25E617F30@<D0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = (v1 + OBJC_IVAR____TtC22PhotosIntelligenceCore17RootEventRecorder_previousCPULoadInfo);
  os_unfair_lock_lock((v1 + OBJC_IVAR____TtC22PhotosIntelligenceCore17RootEventRecorder_previousCPULoadInfo));
  sub_25E617FCC(&v4[1]._os_unfair_lock_opaque, v8);
  os_unfair_lock_unlock(v4);
  v5 = v9;
  result = *v8;
  v7 = v8[1];
  *a1 = v8[0];
  *(a1 + 16) = v7;
  *(a1 + 32) = v5;
  return result;
}

uint64_t sub_25E617FCC@<X0>(unsigned int *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_25E617A64();
  v7 = *a1;
  v8 = a1[1];
  v9 = (result | 0x100000000) - v7;
  v10 = result >= v7;
  v11 = (result - v7);
  if (v10)
  {
    v9 = v11;
  }

  v12 = (HIDWORD(result) | 0x100000000) - v8;
  v10 = HIDWORD(result) >= v8;
  v13 = (HIDWORD(result) - v8);
  if (v10)
  {
    v12 = v13;
  }

  v14 = a1[2];
  v15 = a1[3];
  v16 = (v5 | 0x100000000) - v14;
  v10 = v5 >= v14;
  v17 = v5 - v14;
  if (v10)
  {
    v16 = v17;
  }

  v18 = v6 - v15;
  if (v6 < v15)
  {
    v18 = (v6 | 0x100000000) - v15;
  }

  v19 = v12 + v9 + v16 + v18;
  if (v19)
  {
    *a1 = result;
    a1[2] = v5;
    a1[3] = v6;
    v20 = v9 / v19;
    v21 = v12 / v19;
    v22 = v16 / v19;
    v23 = v18 / v19;
  }

  else
  {
    v20 = 0.0;
    v21 = 0.0;
    v22 = 0.0;
    v23 = 0.0;
  }

  *a2 = v20;
  *(a2 + 8) = v21;
  *(a2 + 16) = v22;
  *(a2 + 24) = v23;
  *(a2 + 32) = v19 == 0;
  return result;
}

uint64_t RootEventRecorder.recordBeginning(of:tag:)()
{
  OUTLINED_FUNCTION_37();
  v13 = *v1;
  v11 = *(v0 + OBJC_IVAR____TtC22PhotosIntelligenceCore17RootEventRecorder_path);
  v12 = *(v0 + OBJC_IVAR____TtC22PhotosIntelligenceCore17RootEventRecorder_path + 8);

  OUTLINED_FUNCTION_46_0(v2, v3, v4, v5, v6, v7, v8, v9, v11, v12, v13);
}

uint64_t sub_25E618150@<X0>(const char *a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t *a4@<X3>, uint64_t *a5@<X4>, uint64_t a6@<X8>)
{
  v7 = v6;
  v97 = a3;
  *&v104 = a2;
  v105 = a1;
  v95 = a6;
  v103 = type metadata accessor for RootEventRecorder.Event(0);
  v10 = *(*(v103 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v103);
  v13 = &v90 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v90 - v14;
  v94 = sub_25E6355A0();
  v93 = *(v94 - 8);
  v16 = *(v93 + 64);
  MEMORY[0x28223BE20](v94);
  v18 = &v90 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_25E635660();
  v20 = *(*(v19 - 8) + 64);
  v21 = MEMORY[0x28223BE20](v19);
  v22 = MEMORY[0x28223BE20](v21);
  v26 = &v90 - v25;
  v28 = *a4;
  v27 = a4[1];
  v29 = *a5;
  v30 = a5[1];
  v31 = *(v7 + 16);
  v101 = v30;
  v102 = v29;
  v100 = v15;
  v98 = 0;
  v99 = v27;
  v96 = v28;
  if (v31 == 1)
  {
    v98 = v24;
    v32 = v23;
    v90 = v22;
    sub_25E635650();
    v91 = v7;
    v33 = sub_25E635680();
    v34 = sub_25E635D10();
    result = sub_25E635D20();
    if ((result & 1) == 0)
    {
LABEL_11:

      v39 = v90;
      (*(v32 + 16))(v98, v26, v90);
      v40 = sub_25E6356D0();
      v41 = *(v40 + 48);
      v42 = *(v40 + 52);
      swift_allocObject();
      v98 = sub_25E6356C0();
      (*(v32 + 8))(v26, v39);
      v7 = v91;
      v30 = v101;
      v29 = v102;
      v27 = v99;
      v15 = v100;
      v28 = v96;
      goto LABEL_12;
    }

    if ((v97 & 1) == 0)
    {
      v36 = v105;
      if (v105)
      {
LABEL_10:
        v37 = swift_slowAlloc();
        *v37 = 0;
        v38 = sub_25E635640();
        _os_signpost_emit_with_name_impl(&dword_25E5F0000, v33, v34, v38, v36, "", v37, 2u);
        MEMORY[0x25F8BA800](v37, -1, -1);
        goto LABEL_11;
      }

      __break(1u);
    }

    if (v105 >> 32)
    {
      __break(1u);
    }

    else
    {
      if ((v105 & 0xFFFFF800) == 0xD800)
      {
LABEL_23:
        __break(1u);
        return result;
      }

      if (v105 >> 16 <= 0x10)
      {
        v36 = &v106;
        goto LABEL_10;
      }
    }

    __break(1u);
    goto LABEL_23;
  }

LABEL_12:
  v92 = v18;
  sub_25E635590();
  v111 = 0;
  v109 = v28;
  v110 = v27;
  v107 = v29;
  v108 = v30;
  v43 = v104;
  v44 = v97;
  sub_25E618B94();
  sub_25E61DEC8(v15, v13);

  v45 = sub_25E6356F0();
  v46 = sub_25E635CF0();

  LODWORD(v91) = v46;
  if (os_log_type_enabled(v45, v46))
  {
    v47 = swift_slowAlloc();
    v90 = swift_slowAlloc();
    v109 = v90;
    *v47 = 136315906;
    v48 = MEMORY[0x25F8B9500](*(v7 + OBJC_IVAR____TtC22PhotosIntelligenceCore17RootEventRecorder_eventSessionIdentifier), *(v7 + OBJC_IVAR____TtC22PhotosIntelligenceCore17RootEventRecorder_eventSessionIdentifier + 8), *(v7 + OBJC_IVAR____TtC22PhotosIntelligenceCore17RootEventRecorder_eventSessionIdentifier + 16), *(v7 + OBJC_IVAR____TtC22PhotosIntelligenceCore17RootEventRecorder_eventSessionIdentifier + 24));
    v50 = sub_25E6011D4(v48, v49, &v109);

    *(v47 + 4) = v50;
    *(v47 + 12) = 2080;
    v107 = v29;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCF9198, &qword_25E63B198);
    sub_25E61F3E8(&qword_280CB2808);
    v51 = sub_25E6357A0();
    v53 = v52;
    v54 = v44;

    v55 = sub_25E6011D4(v51, v53, &v109);

    *(v47 + 14) = v55;
    *(v47 + 22) = 2080;
    v56 = sub_25E635DF0();
    v58 = sub_25E6011D4(v56, v57, &v109);

    *(v47 + 24) = v58;
    *(v47 + 32) = 2080;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCF91C0, &qword_25E63BD00);
    v59 = swift_allocObject();
    *(v59 + 16) = xmmword_25E63A3E0;
    v60 = *&v13[*(v103 + 32)];
    *(v59 + 56) = MEMORY[0x277D839F8];
    *(v59 + 64) = MEMORY[0x277D83A80];
    *(v59 + 32) = v60;
    v61 = sub_25E6357F0();
    v63 = v62;
    sub_25E61DF20(v13, type metadata accessor for RootEventRecorder.Event);
    v64 = sub_25E6011D4(v61, v63, &v109);

    *(v47 + 34) = v64;
    _os_log_impl(&dword_25E5F0000, v45, v91, "EventRecorder (%s): [%s] - Beginning %s at %s", v47, 0x2Au);
    v65 = v90;
    swift_arrayDestroy();
    MEMORY[0x25F8BA800](v65, -1, -1);
    v66 = v47;
    v43 = v104;
    MEMORY[0x25F8BA800](v66, -1, -1);
  }

  else
  {

    sub_25E61DF20(v13, type metadata accessor for RootEventRecorder.Event);
    v54 = v44;
  }

  v68 = v100;
  v67 = v101;
  if (*(v7 + 17) == 1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCF9470, &qword_25E63BCF8);
    v69 = swift_allocObject();
    v104 = xmmword_25E63A3E0;
    *(v69 + 16) = xmmword_25E63A3E0;
    v109 = 0;
    v110 = 0xE000000000000000;
    sub_25E635DE0();

    v109 = 0x636552746E657645;
    v110 = 0xEF2820726564726FLL;
    v70 = MEMORY[0x25F8B9500](*(v7 + OBJC_IVAR____TtC22PhotosIntelligenceCore17RootEventRecorder_eventSessionIdentifier), *(v7 + OBJC_IVAR____TtC22PhotosIntelligenceCore17RootEventRecorder_eventSessionIdentifier + 8), *(v7 + OBJC_IVAR____TtC22PhotosIntelligenceCore17RootEventRecorder_eventSessionIdentifier + 16), *(v7 + OBJC_IVAR____TtC22PhotosIntelligenceCore17RootEventRecorder_eventSessionIdentifier + 24));
    MEMORY[0x25F8B9540](v70);

    MEMORY[0x25F8B9540](1528838697, 0xE400000000000000);
    v107 = v102;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCF9198, &qword_25E63B198);
    sub_25E61F3E8(&qword_280CB2808);
    v71 = sub_25E6357A0();
    v73 = v72;

    MEMORY[0x25F8B9540](v71, v73);

    MEMORY[0x25F8B9540](0x69676542202D205DLL, 0xEE0020676E696E6ELL);
    v74 = sub_25E635DF0();
    MEMORY[0x25F8B9540](v74);

    MEMORY[0x25F8B9540](544497952, 0xE400000000000000);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCF91C0, &qword_25E63BD00);
    v75 = swift_allocObject();
    *(v75 + 16) = v104;
    v76 = *(v68 + *(v103 + 32));
    *(v75 + 56) = MEMORY[0x277D839F8];
    *(v75 + 64) = MEMORY[0x277D83A80];
    *(v75 + 32) = v76;
    v77 = sub_25E6357F0();
    MEMORY[0x25F8B9540](v77);

    v78 = v109;
    v79 = v110;
    *(v69 + 56) = MEMORY[0x277D837D0];
    *(v69 + 32) = v78;
    *(v69 + 40) = v79;
    sub_25E6360F0();
  }

  v80 = v102;
  v109 = v102;
  v110 = v67;
  v81 = *(v68 + *(v103 + 32));
  v82 = v105;
  sub_25E618DEC(v81);
  sub_25E61DF20(v68, type metadata accessor for RootEventRecorder.Event);
  if (v99)
  {
    v83 = v99;
    v84 = v96;
  }

  else
  {
    v84 = *(v7 + OBJC_IVAR____TtC22PhotosIntelligenceCore17RootEventRecorder_defaultTag);
    v83 = *(v7 + OBJC_IVAR____TtC22PhotosIntelligenceCore17RootEventRecorder_defaultTag + 8);
  }

  v85 = v95;
  (*(v93 + 32))(v95, v92, v94);
  v86 = type metadata accessor for RootEventRecorder.EventState(0);
  v87 = v85 + v86[5];
  *v87 = v82;
  *(v87 + 8) = v43;
  *(v87 + 16) = v54;
  v88 = (v85 + v86[6]);
  *v88 = v84;
  v88[1] = v83;
  v89 = (v85 + v86[7]);
  *v89 = v80;
  v89[1] = v67;
  *(v85 + v86[8]) = v81;
  *(v85 + v86[9]) = v98;
}

void sub_25E618B94()
{
  OUTLINED_FUNCTION_72();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v43 = v14;
  v16 = v15;
  v46 = sub_25E635570();
  v17 = OUTLINED_FUNCTION_5(v46);
  v44 = v18;
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_2_3();
  v23 = v22 - v21;
  v48 = *v7;
  v24 = *v5;
  v25 = v5[1];
  v26 = *v3;
  v47 = v3[1];
  v27 = sub_25E615460(v13, v11, v9);
  v45 = v28;
  sub_25E617F30(v49);
  if (v25)
  {
    v29 = v25;
    v30 = v24;
  }

  else
  {
    v30 = *(v1 + OBJC_IVAR____TtC22PhotosIntelligenceCore17RootEventRecorder_defaultTag);
    v29 = *(v1 + OBJC_IVAR____TtC22PhotosIntelligenceCore17RootEventRecorder_defaultTag + 8);
  }

  v31 = sub_25E6355A0();
  OUTLINED_FUNCTION_1_2(v31);
  (*(v32 + 16))(v16, v43);

  sub_25E635560();
  sub_25E635540();
  v34 = v33;
  (*(v44 + 8))(v23, v46);
  v35 = *(v1 + OBJC_IVAR____TtC22PhotosIntelligenceCore17RootEventRecorder_processInfo);

  [v35 thermalState];
  v36 = OUTLINED_FUNCTION_24_0();
  v37 = type metadata accessor for RootEventRecorder.Event(v36);
  v38 = (v16 + v37[5]);
  *v38 = v27;
  v38[1] = v45;
  *(v16 + v37[6]) = v48;
  v39 = (v16 + v37[7]);
  *v39 = v30;
  v39[1] = v29;
  *(v16 + v37[8]) = v34;
  v40 = (v16 + v37[9]);
  *v40 = v26;
  v40[1] = v47;
  *(v16 + v37[10]) = v35;
  v41 = v16 + v37[11];
  v42 = v49[1];
  *v41 = v49[0];
  *(v41 + 16) = v42;
  *(v41 + 32) = v50;
  if (*(v1 + 18) == 1)
  {
    os_unfair_lock_lock((v1 + 24));
    sub_25E61AA38((v1 + 32), v16);
    os_unfair_lock_unlock((v1 + 24));
  }

  OUTLINED_FUNCTION_73();
}

void sub_25E618DEC(double a1)
{
  if (*(v2 + 18) == 1)
  {
    OUTLINED_FUNCTION_37();
    v8 = *v6;
    v7 = v6[1];
    os_unfair_lock_lock((v2 + 40));
    sub_25E61AB10((v2 + 48), v8, v7, a1, v2, v4, v3, v1);
    OUTLINED_FUNCTION_78();

    os_unfair_lock_unlock(v9);
  }

  else
  {
    OUTLINED_FUNCTION_78();
  }
}

void RootEventRecorder.recordEnd(of:)()
{
  OUTLINED_FUNCTION_72();
  v1 = v0;
  v2 = OUTLINED_FUNCTION_24_0();
  v3 = type metadata accessor for RootEventRecorder.EventState(v2);
  v4 = OUTLINED_FUNCTION_1_2(v3);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_7();
  v150 = (v7 - v8);
  OUTLINED_FUNCTION_4_2();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_7_0();
  v149 = v10;
  OUTLINED_FUNCTION_4_2();
  MEMORY[0x28223BE20](v11);
  *&v154 = &v138 - v12;
  v13 = type metadata accessor for RootEventRecorder.Event(0);
  v14 = OUTLINED_FUNCTION_1_2(v13);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_7();
  v19 = v17 - v18;
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_7_0();
  v155 = v21;
  OUTLINED_FUNCTION_4_2();
  MEMORY[0x28223BE20](v22);
  v24 = &v138 - v23;
  v25 = sub_25E6356A0();
  v26 = OUTLINED_FUNCTION_5(v25);
  v151 = v27;
  v29 = *(v28 + 64);
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_2_3();
  v30 = sub_25E635660();
  v31 = OUTLINED_FUNCTION_5(v30);
  v33 = v32;
  v35 = *(v34 + 64);
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_2_3();
  v39 = v38 - v37;
  LODWORD(v37) = *(v0 + 16);
  v152 = v3;
  v153 = v0;
  v147 = v0;
  v148 = v24;
  v156 = v13;
  v146 = v19;
  if (v37 == 1)
  {
    v145 = v36;
    if (!*(v0 + v3[9]))
    {
LABEL_26:
      OUTLINED_FUNCTION_43_0();
      v138 = 223;
      OUTLINED_FUNCTION_42_0();
      OUTLINED_FUNCTION_58();
      __break(1u);
      return;
    }

    v40 = v0 + v3[5];
    v41 = *v40;
    v42 = *(v40 + 16);

    v43 = sub_25E635680();
    sub_25E6356B0();
    v44 = sub_25E635D00();
    if ((sub_25E635D20() & 1) == 0)
    {
LABEL_15:

      (*(v33 + 8))(v39, v145);
      v3 = v152;
      v1 = v153;
      v0 = v147;
      v24 = v148;
      v19 = v146;
      goto LABEL_16;
    }

    if (v42)
    {
      if (!(v41 >> 32))
      {
        v45 = v151;
        if ((v41 & 0xFFFFF800) == 0xD800)
        {
LABEL_25:
          __break(1u);
          goto LABEL_26;
        }

        if (v41 >> 16 <= 0x10)
        {
          v41 = &v157;
          goto LABEL_11;
        }

LABEL_24:
        __break(1u);
        goto LABEL_25;
      }
    }

    else
    {
      if (v41)
      {
        v45 = v151;
LABEL_11:
        v46 = v44;

        sub_25E6356E0();

        v47 = *(v45 + 88);
        v48 = OUTLINED_FUNCTION_62();
        v50 = v41;
        if (v49(v48) == *MEMORY[0x277D85B00])
        {
          v51 = "[Error] Interval already ended";
        }

        else
        {
          v52 = *(v45 + 8);
          v53 = OUTLINED_FUNCTION_62();
          v54(v53);
          v51 = "";
        }

        v55 = swift_slowAlloc();
        *v55 = 0;
        v56 = sub_25E635640();
        _os_signpost_emit_with_name_impl(&dword_25E5F0000, v43, v46, v56, v50, v51, v55, 2u);
        OUTLINED_FUNCTION_9();
        goto LABEL_15;
      }

      __break(1u);
    }

    __break(1u);
    goto LABEL_24;
  }

LABEL_16:
  v57 = v3[6];
  v58 = v0 + v3[5];
  v59 = *v58;
  v60 = *(v58 + 8);
  v61 = *(v58 + 16);
  v162 = 1;
  v62 = *(v0 + v57 + 8);
  v160 = *(v0 + v57);
  v161 = v62;
  v63 = (v0 + v3[7]);
  v65 = *v63;
  v64 = v63[1];
  v143 = v63;
  v158 = v65;
  v159 = v64;

  v145 = v59;
  v144 = v60;
  LODWORD(v151) = v61;
  sub_25E618B94();

  v142 = v65;

  sub_25E61DEC8(v0, v154);
  v66 = v149;
  sub_25E61DEC8(v0, v149);
  sub_25E61DEC8(v24, v155);
  sub_25E61DEC8(v24, v19);
  v67 = v150;
  sub_25E61DEC8(v0, v150);

  v68 = sub_25E6356F0();
  v69 = sub_25E635CF0();

  v70 = v1;
  if (os_log_type_enabled(v68, v69))
  {
    v71 = swift_slowAlloc();
    v141 = swift_slowAlloc();
    v160 = v141;
    *v71 = 136316162;
    OUTLINED_FUNCTION_80((v70 + OBJC_IVAR____TtC22PhotosIntelligenceCore17RootEventRecorder_eventSessionIdentifier));
    v74 = sub_25E6011D4(v72, v73, &v160);

    *(v71 + 4) = v74;
    *(v71 + 12) = 2080;
    v140 = v68;
    v75 = v152;
    v76 = v152[7];
    v139 = v69;
    v77 = v154;
    v158 = *(v154 + v76);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCF9198, &qword_25E63B198);
    v78 = v66;
    OUTLINED_FUNCTION_2_8();
    sub_25E61F3E8(v79);
    OUTLINED_FUNCTION_9_3();
    v80 = sub_25E6357A0();
    v82 = v81;

    OUTLINED_FUNCTION_6_3();
    sub_25E61DF20(v77, v83);
    v84 = sub_25E6011D4(v80, v82, &v160);

    *(v71 + 14) = v84;
    *(v71 + 22) = 2080;
    v85 = v78 + v75[5];
    v86 = *v85;
    v87 = *(v85 + 8);
    v88 = *(v85 + 16);
    v89 = sub_25E635DF0();
    v91 = v90;
    sub_25E61DF20(v78, &qword_27FCF9198);
    v92 = sub_25E6011D4(v89, v91, &v160);

    *(v71 + 24) = v92;
    *(v71 + 32) = 2080;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCF91C0, &qword_25E63BD00);
    v93 = OUTLINED_FUNCTION_48_0();
    v154 = xmmword_25E63A3E0;
    *(v93 + 16) = xmmword_25E63A3E0;
    OUTLINED_FUNCTION_71();
    v94 = v155;
    v96 = *(v155 + v95);
    *(v97 + 56) = MEMORY[0x277D839F8];
    v98 = MEMORY[0x277D83A80];
    *(v97 + 64) = MEMORY[0x277D83A80];
    v99 = OUTLINED_FUNCTION_18_2(v97, v96);
    v101 = v100;
    sub_25E61DF20(v94, type metadata accessor for RootEventRecorder.Event);
    v102 = sub_25E6011D4(v99, v101, &v160);
    v103 = MEMORY[0x277D839F8];

    *(v71 + 34) = v102;
    *(v71 + 42) = 2080;
    *(OUTLINED_FUNCTION_48_0() + 16) = v154;
    OUTLINED_FUNCTION_71();
    v104 = v146;
    v106 = *(v146 + v105) - *(v67 + v75[8]);
    *(v107 + 56) = v103;
    *(v107 + 64) = v98;
    v108 = OUTLINED_FUNCTION_57(v107, v106);
    v110 = v109;
    sub_25E61DF20(v67, &qword_27FCF9198);
    sub_25E61DF20(v104, type metadata accessor for RootEventRecorder.Event);
    v111 = sub_25E6011D4(v108, v110, &v160);
    v70 = v153;

    *(v71 + 44) = v111;
    v112 = v140;
    _os_log_impl(&dword_25E5F0000, v140, v139, "EventRecorder (%s): [%s] - Ending %s at %s, lasted %s seconds", v71, 0x34u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_9();
    v24 = v148;
    OUTLINED_FUNCTION_9();
  }

  else
  {

    OUTLINED_FUNCTION_6_3();
    sub_25E61DF20(v67, v113);
    OUTLINED_FUNCTION_16_3();
    sub_25E61DF20(v19, v114);
    sub_25E61DF20(v155, v67);
    sub_25E61DF20(v66, CLSIVSNSFWModel.superclass);
    sub_25E61DF20(v154, CLSIVSNSFWModel.superclass);
  }

  if (*(v70 + 17) == 1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCF9470, &qword_25E63BCF8);
    v115 = swift_allocObject();
    OUTLINED_FUNCTION_51_0(v115, xmmword_25E63A3E0);
    sub_25E635DE0();
    OUTLINED_FUNCTION_27_0();
    OUTLINED_FUNCTION_80((v70 + OBJC_IVAR____TtC22PhotosIntelligenceCore17RootEventRecorder_eventSessionIdentifier));
    MEMORY[0x25F8B9540]();

    MEMORY[0x25F8B9540](1528838697, 0xE400000000000000);
    v158 = v142;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCF9198, &qword_25E63B198);
    OUTLINED_FUNCTION_2_8();
    sub_25E61F3E8(v116);
    OUTLINED_FUNCTION_9_3();
    v117 = sub_25E6357A0();
    v119 = v118;

    MEMORY[0x25F8B9540](v117, v119);

    MEMORY[0x25F8B9540](0x69646E45202D205DLL, 0xEB0000000020676ELL);
    OUTLINED_FUNCTION_34_0();
    v120 = sub_25E635DF0();
    MEMORY[0x25F8B9540](v120);

    MEMORY[0x25F8B9540](544497952, 0xE400000000000000);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCF91C0, &qword_25E63BD00);
    v121 = OUTLINED_FUNCTION_48_0();
    OUTLINED_FUNCTION_23_0(v121);
    OUTLINED_FUNCTION_71();
    v123 = *&v24[v122];
    v124 = MEMORY[0x277D839F8];
    *(v125 + 56) = MEMORY[0x277D839F8];
    v126 = MEMORY[0x277D83A80];
    *(v125 + 64) = MEMORY[0x277D83A80];
    v127 = OUTLINED_FUNCTION_74(v125);
    MEMORY[0x25F8B9540](v127);

    OUTLINED_FUNCTION_45_0();
    v128 = OUTLINED_FUNCTION_48_0();
    OUTLINED_FUNCTION_23_0(v128);
    v129 = v123 - *(v147 + v152[8]);
    *(v130 + 56) = v124;
    *(v130 + 64) = v126;
    v131 = OUTLINED_FUNCTION_57(v130, v129);
    MEMORY[0x25F8B9540](v131);

    OUTLINED_FUNCTION_54_0();
    v132 = v160;
    v133 = v161;
    v115[3].n128_u64[1] = MEMORY[0x277D837D0];
    v115[2].n128_u64[0] = v132;
    v115[2].n128_u64[1] = v133;
    OUTLINED_FUNCTION_79();
  }

  v134 = v143[1];
  v160 = *v143;
  v161 = v134;
  OUTLINED_FUNCTION_71();
  v136 = *&v24[v135];

  OUTLINED_FUNCTION_34_0();
  sub_25E6199A0(v136);

  OUTLINED_FUNCTION_5_4();
  sub_25E61DF20(v24, v137);
  OUTLINED_FUNCTION_73();
}

void sub_25E6199A0(double a1)
{
  if (*(v2 + 18) == 1)
  {
    OUTLINED_FUNCTION_37();
    v8 = *v6;
    v7 = v6[1];
    os_unfair_lock_lock((v2 + 40));
    sub_25E61B7DC((v2 + 48), v8, v7, v4, v3, v1, a1);
    OUTLINED_FUNCTION_78();

    os_unfair_lock_unlock(v9);
  }

  else
  {
    OUTLINED_FUNCTION_78();
  }
}

void RootEventRecorder.execute<A>(as:tag:block:)()
{
  OUTLINED_FUNCTION_37_0();
  v1 = v0;
  v3 = v2;
  v4 = type metadata accessor for RootEventRecorder.EventState(0);
  v5 = OUTLINED_FUNCTION_52_0(v4);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_2_3();
  v10 = v9 - v8;
  v13 = *v3;
  v11 = RootEventRecorder.recordBeginning(of:tag:)();
  v1(v11);
  RootEventRecorder.recordEnd(of:)();
  OUTLINED_FUNCTION_0_7();
  sub_25E61DF20(v10, v12);
  OUTLINED_FUNCTION_38_0();
}

uint64_t RootEventRecorder.execute<A>(as:tag:block:)()
{
  OUTLINED_FUNCTION_25_0();
  v3 = v2;
  *(v1 + 48) = v4;
  *(v1 + 56) = v0;
  *(v1 + 104) = v5;
  *(v1 + 32) = v6;
  *(v1 + 40) = v7;
  *(v1 + 16) = v8;
  *(v1 + 24) = v9;
  v10 = type metadata accessor for RootEventRecorder.EventState(0);
  OUTLINED_FUNCTION_52_0(v10);
  v12 = *(v11 + 64) + 15;
  *(v1 + 64) = swift_task_alloc();
  *(v1 + 72) = *v3;
  OUTLINED_FUNCTION_60();

  return MEMORY[0x2822009F8]();
}

uint64_t sub_25E619BC8()
{
  v2 = *(v0 + 56);
  v1 = *(v0 + 64);
  v3 = *(v0 + 32);
  v4 = *(v0 + 40);
  v5 = *(v0 + 24);
  v6 = *(v0 + 104);
  v13 = *(v0 + 72);
  RootEventRecorder.recordBeginning(of:tag:)();
  v12 = v4 + *v4;
  v7 = v4[1];
  v8 = swift_task_alloc();
  *(v0 + 88) = v8;
  *v8 = v0;
  v9 = OUTLINED_FUNCTION_50_0(v8);

  return v10(v9);
}

uint64_t sub_25E619CD0()
{
  OUTLINED_FUNCTION_25_0();
  v2 = *(*v1 + 88);
  v3 = *v1;
  OUTLINED_FUNCTION_44_0();
  *v4 = v3;
  *(v5 + 96) = v0;

  OUTLINED_FUNCTION_60();

  return MEMORY[0x2822009F8]();
}

uint64_t sub_25E619DD4()
{
  OUTLINED_FUNCTION_25_0();
  v2 = *(v0 + 56);
  v1 = *(v0 + 64);
  RootEventRecorder.recordEnd(of:)();
  OUTLINED_FUNCTION_0_7();
  sub_25E61DF20(v1, v3);

  OUTLINED_FUNCTION_53_0();

  return v4();
}

uint64_t sub_25E619E48()
{
  OUTLINED_FUNCTION_25_0();
  v2 = v0[7];
  v1 = v0[8];
  RootEventRecorder.recordEnd(of:)();
  OUTLINED_FUNCTION_0_7();
  sub_25E61DF20(v1, v3);

  OUTLINED_FUNCTION_53_0();
  v5 = v0[12];

  return v4();
}

void RootEventRecorder.cancelRecord(of:)()
{
  OUTLINED_FUNCTION_72();
  v1 = v0;
  v3 = v2;
  v4 = type metadata accessor for RootEventRecorder.EventState(0);
  v5 = OUTLINED_FUNCTION_1_2(v4);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_7();
  v144 = v8 - v9;
  OUTLINED_FUNCTION_4_2();
  MEMORY[0x28223BE20](v10);
  *&v143 = &v135 - v11;
  v145 = type metadata accessor for RootEventRecorder.Event(0);
  v12 = OUTLINED_FUNCTION_1_2(v145);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_7();
  v151 = v15 - v16;
  OUTLINED_FUNCTION_4_2();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_7_0();
  v150 = v18;
  OUTLINED_FUNCTION_4_2();
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_7_0();
  v142 = v20;
  OUTLINED_FUNCTION_4_2();
  MEMORY[0x28223BE20](v21);
  v23 = &v135 - v22;
  v24 = sub_25E6356A0();
  v25 = OUTLINED_FUNCTION_5(v24);
  v27 = v26;
  v29 = *(v28 + 64);
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_2_3();
  v30 = sub_25E635660();
  v31 = OUTLINED_FUNCTION_5(v30);
  v33 = v32;
  v35 = *(v34 + 64);
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_2_3();
  v36 = *(v1 + 16) == 1;
  v148 = v23;
  v149 = v1;
  v141 = v3;
  v147 = v4;
  if (v36)
  {
    v146 = v27;
    if (!*(v3 + v4[9]))
    {
LABEL_27:
      OUTLINED_FUNCTION_43_0();
      v135 = 254;
      OUTLINED_FUNCTION_42_0();
      OUTLINED_FUNCTION_58();
      __break(1u);
      return;
    }

    v37 = v3 + v4[5];
    v38 = *v37;
    v39 = *(v37 + 16);

    v40 = sub_25E635680();
    sub_25E6356B0();
    LODWORD(v140) = sub_25E635D00();
    if ((sub_25E635D20() & 1) == 0)
    {
LABEL_16:

      v52 = *(v33 + 8);
      v53 = OUTLINED_FUNCTION_64();
      v54(v53);
      v23 = v148;
      v1 = v149;
      v3 = v141;
      v4 = v147;
      goto LABEL_17;
    }

    if (v39)
    {
      if (!(v38 >> 32))
      {
        if ((v38 & 0xFFFFF800) == 0xD800)
        {
LABEL_26:
          __break(1u);
          goto LABEL_27;
        }

        if (v38 >> 16 <= 0x10)
        {
          v41 = &v152;
          goto LABEL_12;
        }

LABEL_25:
        __break(1u);
        goto LABEL_26;
      }
    }

    else
    {
      if (v38)
      {
        v41 = v38;
LABEL_12:
        v42 = v146;

        sub_25E6356E0();

        v43 = *(v42 + 88);
        v44 = OUTLINED_FUNCTION_34_0();
        if (v45(v44) == *MEMORY[0x277D85B00])
        {
          v46 = "[Error] Interval already ended";
        }

        else
        {
          v47 = *(v42 + 8);
          v48 = OUTLINED_FUNCTION_34_0();
          v49(v48);
          v46 = "";
        }

        v50 = swift_slowAlloc();
        *v50 = 0;
        v51 = sub_25E635640();
        _os_signpost_emit_with_name_impl(&dword_25E5F0000, v40, v140, v51, v41, v46, v50, 2u);
        OUTLINED_FUNCTION_9();
        goto LABEL_16;
      }

      __break(1u);
    }

    __break(1u);
    goto LABEL_25;
  }

LABEL_17:
  v55 = v4[6];
  v56 = v3 + v4[5];
  v57 = *v56;
  v58 = *(v56 + 8);
  v59 = *(v56 + 16);
  v157 = 2;
  v60 = v3 + v55;
  v61 = v3;
  v62 = *(v3 + v55);
  v63 = *(v60 + 8);
  v155 = v62;
  v156 = v63;
  v64 = (v61 + v4[7]);
  v65 = *v64;
  v66 = v64[1];
  v138 = v64;
  v153 = v65;
  v154 = v66;

  v140 = v57;
  v139 = v58;
  LODWORD(v146) = v59;
  sub_25E618B94();

  v67 = v142;
  sub_25E61DEC8(v23, v142);
  v68 = v143;
  sub_25E61DEC8(v61, v143);
  v69 = v150;
  sub_25E61DEC8(v23, v150);
  v70 = v151;
  sub_25E61DEC8(v23, v151);
  v71 = v61;
  v72 = v144;
  sub_25E61DEC8(v71, v144);

  v73 = sub_25E6356F0();
  LODWORD(v57) = sub_25E635CF0();

  v137 = v57;
  v74 = v1;
  if (os_log_type_enabled(v73, v57))
  {
    v75 = swift_slowAlloc();
    v136 = swift_slowAlloc();
    v155 = v136;
    *v75 = 136316162;
    OUTLINED_FUNCTION_80((v1 + OBJC_IVAR____TtC22PhotosIntelligenceCore17RootEventRecorder_eventSessionIdentifier));
    sub_25E6011D4(v76, v77, &v155);
    v135 = v73;
    OUTLINED_FUNCTION_65();

    *(v75 + 4) = v73;
    *(v75 + 12) = 2080;
    v78 = v145;
    v153 = *(v67 + *(v145 + 36));

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCF9198, &qword_25E63B198);
    OUTLINED_FUNCTION_2_8();
    sub_25E61F3E8(v79);
    OUTLINED_FUNCTION_9_3();
    sub_25E6357A0();

    sub_25E61DF20(v67, type metadata accessor for RootEventRecorder.Event);
    v80 = OUTLINED_FUNCTION_34_0();
    v83 = sub_25E6011D4(v80, v81, v82);

    *(v75 + 14) = v83;
    *(v75 + 22) = 2080;
    v84 = v147;
    v85 = v68 + v147[5];
    v86 = *v85;
    v87 = *(v85 + 8);
    v88 = *(v85 + 16);
    v89 = v72;
    v90 = sub_25E635DF0();
    v92 = v91;
    sub_25E61DF20(v68, type metadata accessor for RootEventRecorder.EventState);
    v93 = sub_25E6011D4(v90, v92, &v155);

    *(v75 + 24) = v93;
    *(v75 + 32) = 2080;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCF91C0, &qword_25E63BD00);
    v94 = OUTLINED_FUNCTION_48_0();
    v143 = xmmword_25E63A3E0;
    *(v94 + 16) = xmmword_25E63A3E0;
    v95 = v150;
    v96 = *(v150->n128_f64 + *(v78 + 32));
    *(v94 + 56) = MEMORY[0x277D839F8];
    *(v94 + 64) = MEMORY[0x277D83A80];
    OUTLINED_FUNCTION_18_2(v94, v96);
    sub_25E61DF20(v95, type metadata accessor for RootEventRecorder.Event);
    v97 = OUTLINED_FUNCTION_34_0();
    v100 = sub_25E6011D4(v97, v98, v99);
    v101 = v78;

    *(v75 + 34) = v100;
    *(v75 + 42) = 2080;
    v102 = v149;
    v103 = OUTLINED_FUNCTION_48_0();
    *(v103 + 16) = v143;
    v104 = v151;
    v105 = *(v151 + *(v101 + 32)) - *(v89 + v84[8]);
    *(v103 + 56) = MEMORY[0x277D839F8];
    *(v103 + 64) = MEMORY[0x277D83A80];
    v106 = OUTLINED_FUNCTION_18_2(v103, v105);
    v108 = v107;
    sub_25E61DF20(v89, type metadata accessor for RootEventRecorder.EventState);
    sub_25E61DF20(v104, type metadata accessor for RootEventRecorder.Event);
    v109 = sub_25E6011D4(v106, v108, &v155);
    v74 = v102;

    *(v75 + 44) = v109;
    v110 = v135;
    _os_log_impl(&dword_25E5F0000, v135, v137, "EventRecorder (%s): [%s] - Canceling %s at %s, lasted %s seconds", v75, 0x34u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_9();
    OUTLINED_FUNCTION_9();
  }

  else
  {

    OUTLINED_FUNCTION_6_3();
    sub_25E61DF20(v72, v111);
    OUTLINED_FUNCTION_16_3();
    sub_25E61DF20(v70, v112);
    sub_25E61DF20(v69, v73);
    sub_25E61DF20(v68, CLSIVSNSFWModel.superclass);
    sub_25E61DF20(v67, v73);
    v101 = v145;
  }

  v113 = v148;
  if (*(v74 + 17) == 1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCF9470, &qword_25E63BCF8);
    v150 = swift_allocObject();
    OUTLINED_FUNCTION_51_0(v150, xmmword_25E63A3E0);
    sub_25E635DE0();
    OUTLINED_FUNCTION_27_0();
    OUTLINED_FUNCTION_80((v74 + OBJC_IVAR____TtC22PhotosIntelligenceCore17RootEventRecorder_eventSessionIdentifier));
    MEMORY[0x25F8B9540]();

    MEMORY[0x25F8B9540](1528838697, 0xE400000000000000);
    v153 = *(v113 + *(v101 + 36));

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCF9198, &qword_25E63B198);
    OUTLINED_FUNCTION_2_8();
    sub_25E61F3E8(v114);
    OUTLINED_FUNCTION_9_3();
    v115 = sub_25E6357A0();
    v117 = v116;

    MEMORY[0x25F8B9540](v115, v117);

    MEMORY[0x25F8B9540](0x636E6143202D205DLL, 0xEE0020676E696C65);
    v118 = sub_25E635DF0();
    MEMORY[0x25F8B9540](v118);

    MEMORY[0x25F8B9540](544497952, 0xE400000000000000);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCF91C0, &qword_25E63BD00);
    v119 = OUTLINED_FUNCTION_48_0();
    OUTLINED_FUNCTION_23_0(v119);
    v120 = *(v113 + *(v101 + 32));
    v121 = MEMORY[0x277D839F8];
    *(v122 + 56) = MEMORY[0x277D839F8];
    v123 = MEMORY[0x277D83A80];
    *(v122 + 64) = MEMORY[0x277D83A80];
    v124 = OUTLINED_FUNCTION_74(v122);
    MEMORY[0x25F8B9540](v124);

    OUTLINED_FUNCTION_45_0();
    v125 = OUTLINED_FUNCTION_48_0();
    OUTLINED_FUNCTION_23_0(v125);
    v126 = v120 - *(v141 + v147[8]);
    *(v127 + 56) = v121;
    *(v127 + 64) = v123;
    v128 = OUTLINED_FUNCTION_18_2(v127, v126);
    MEMORY[0x25F8B9540](v128);

    OUTLINED_FUNCTION_54_0();
    v129 = v155;
    v130 = v156;
    v131 = v150;
    v150[3].n128_u64[1] = MEMORY[0x277D837D0];
    v131[2].n128_u64[0] = v129;
    v131[2].n128_u64[1] = v130;
    OUTLINED_FUNCTION_79();
  }

  v132 = v138[1];
  v155 = *v138;
  v156 = v132;
  v133 = *(v113 + *(v101 + 32));

  sub_25E6199A0(v133);

  OUTLINED_FUNCTION_5_4();
  sub_25E61DF20(v113, v134);
  OUTLINED_FUNCTION_73();
}

uint64_t sub_25E61AA38(uint64_t *a1, uint64_t a2)
{
  sub_25E60A2B0();
  v4 = *(*a1 + 16);
  sub_25E60A33C(v4);
  v5 = *a1;
  *(*a1 + 16) = v4 + 1;
  v6 = *(type metadata accessor for RootEventRecorder.Event(0) - 8);
  result = sub_25E61DEC8(a2, v5 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v4);
  *a1 = v5;
  return result;
}

uint64_t sub_25E61AB10(uint64_t *a1, uint64_t a2, uint64_t a3, double a4, uint64_t a5, uint64_t a6, uint8_t *a7, unsigned __int8 a8)
{
  v15 = sub_25E607B7C(a2, a3, *a1);
  if (v15 && (sub_25E614318(v15, &v129), , v130 >> 8 != 0xFFFFFFFF))
  {
    switch(v130 >> 62)
    {
      case 1uLL:
        v67 = a4 - v131;
        if (a4 - v131 >= 0.1)
        {
          v127 = a6;

          v68 = sub_25E6356F0();
          v69 = sub_25E635CE0();

          v116 = v69;
          v70 = v69;
          v71 = v68;
          if (os_log_type_enabled(v68, v70))
          {
            v72 = swift_slowAlloc();
            v112 = swift_slowAlloc();
            v128[0] = v112;
            *v72 = 134218754;
            *(v72 + 4) = v67;
            *(v72 + 12) = 2080;
            v73 = sub_25E635DF0();
            logc = v71;
            v75 = sub_25E6011D4(v73, v74, v128);

            bufb = v72;
            *(v72 + 14) = v75;
            *(v72 + 22) = 2080;
            a6 = v127;
            v76 = sub_25E635DF0();
            v78 = sub_25E6011D4(v76, v77, v128);

            *(bufb + 3) = v78;
            *(bufb + 16) = 2080;
            v133 = a2;

            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCF9198, &qword_25E63B198);
            sub_25E61F3E8(&qword_280CB2808);
            v79 = sub_25E6357A0();
            v81 = v80;

            v82 = sub_25E6011D4(v79, v81, v128);

            *(bufb + 34) = v82;
            _os_log_impl(&dword_25E5F0000, logc, v116, "Too much time (%fs) between rootClose %s and open %s for path %s", bufb, 0x2Au);
            swift_arrayDestroy();
            MEMORY[0x25F8BA800](v112, -1, -1);
            MEMORY[0x25F8BA800](bufb, -1, -1);
          }

          else
          {

            a6 = v127;
          }
        }

        v84 = sub_25E61B71C(v128, a2, a3);
        if (*v102)
        {
          v103 = v102;
          v104 = a8;
          sub_25E60A2C8();
          v105 = *(*v103 + 16);
          sub_25E60A354(v105);
          v106 = *v103;
          *(v106 + 16) = v105 + 1;
          v107 = v106 + 40 * v105;
          *(v107 + 32) = a6;
          *(v107 + 40) = a7;
          *(v107 + 48) = v104;
          *(v107 + 56) = a4;
          *(v107 + 64) = 0;
        }

        goto LABEL_31;
      case 2uLL:
        v125 = v131;
        v35 = a4 - v132;
        if (a4 - v132 >= 0.1)
        {
          buf = a7;

          v36 = sub_25E6356F0();
          v37 = sub_25E635CE0();

          v110 = v37;
          v38 = v37;
          v39 = v36;
          if (os_log_type_enabled(v36, v38))
          {
            v40 = swift_slowAlloc();
            v108 = swift_slowAlloc();
            v128[0] = v108;
            *v40 = 134218754;
            *(v40 + 4) = v35;
            *(v40 + 12) = 2080;
            v41 = sub_25E635DF0();
            loga = v39;
            v43 = sub_25E6011D4(v41, v42, v128);

            v114 = v40;
            *(v40 + 14) = v43;
            *(v40 + 22) = 2080;
            a7 = buf;
            v44 = sub_25E635DF0();
            v46 = sub_25E6011D4(v44, v45, v128);

            *(v114 + 3) = v46;
            *(v114 + 16) = 2080;
            v133 = a2;

            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCF9198, &qword_25E63B198);
            sub_25E61F3E8(&qword_280CB2808);
            v47 = sub_25E6357A0();
            v49 = v48;

            v50 = sub_25E6011D4(v47, v49, v128);

            *(v114 + 34) = v50;
            _os_log_impl(&dword_25E5F0000, loga, v110, "Too much time (%fs) between open %s and open %s for path %s", v114, 0x2Au);
            swift_arrayDestroy();
            MEMORY[0x25F8BA800](v108, -1, -1);
            MEMORY[0x25F8BA800](v114, -1, -1);
          }

          else
          {

            a7 = buf;
          }
        }

        result = sub_25E61B71C(v128, a2, a3);
        v84 = result;
        if (!*v83)
        {
          goto LABEL_31;
        }

        if (__OFADD__(*&v125, 1))
        {
          __break(1u);
        }

        else
        {
          v85 = v83;
          v86 = a8 | 0x8000000000000000;
          sub_25E60A2C8();
          v87 = *(*v85 + 16);
          sub_25E60A354(v87);
          v88 = *v85;
          *(v88 + 16) = v87 + 1;
          v89 = v88 + 40 * v87;
          *(v89 + 32) = a6;
          *(v89 + 40) = a7;
          *(v89 + 48) = v86;
          *(v89 + 56) = *&v125 + 1;
          *(v89 + 64) = a4;
          return (v84)(v128, 0);
        }

        return result;
      case 3uLL:
        v126 = *&v131;
        v51 = a4 - v132;
        if (a4 - v132 >= 0.1)
        {

          v52 = sub_25E6356F0();
          v53 = sub_25E635CE0();

          v115 = v53;
          v54 = v53;
          v55 = v52;
          if (os_log_type_enabled(v52, v54))
          {
            v56 = swift_slowAlloc();
            v111 = swift_slowAlloc();
            v128[0] = v111;
            *v56 = 134218754;
            *(v56 + 4) = v51;
            *(v56 + 12) = 2080;
            v57 = sub_25E635DF0();
            logb = v55;
            v59 = sub_25E6011D4(v57, v58, v128);

            *(v56 + 14) = v59;
            *(v56 + 22) = 2080;
            v60 = sub_25E635DF0();
            v62 = sub_25E6011D4(v60, v61, v128);

            *(v56 + 24) = v62;
            *(v56 + 32) = 2080;
            v133 = a2;

            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCF9198, &qword_25E63B198);
            sub_25E61F3E8(&qword_280CB2808);
            v63 = sub_25E6357A0();
            v65 = v64;

            v66 = sub_25E6011D4(v63, v65, v128);

            *(v56 + 34) = v66;
            _os_log_impl(&dword_25E5F0000, logb, v115, "Too much time (%fs) between close %s and open %s for path %s", v56, 0x2Au);
            swift_arrayDestroy();
            MEMORY[0x25F8BA800](v111, -1, -1);
            MEMORY[0x25F8BA800](v56, -1, -1);
          }

          else
          {
          }
        }

        v84 = sub_25E61B71C(v128, a2, a3);
        if (!*v90)
        {
          goto LABEL_31;
        }

        v91 = v90;
        v92 = a8 | 0x8000000000000000;
        sub_25E60A2C8();
        v93 = *(*v91 + 16);
        sub_25E60A354(v93);
        v94 = *v91;
        *(v94 + 16) = v93 + 1;
        v95 = v94 + 40 * v93;
        *(v95 + 32) = a6;
        *(v95 + 40) = a7;
        *(v95 + 48) = v92;
        v96 = v126;
        goto LABEL_27;
      default:
        v19 = a4 - v131;
        if (a4 - v131 >= 0.1)
        {
          v124 = a8;

          v20 = sub_25E6356F0();
          v21 = sub_25E635CE0();

          v113 = v21;
          v22 = v21;
          v23 = v20;
          if (os_log_type_enabled(v20, v22))
          {
            v24 = swift_slowAlloc();
            v109 = swift_slowAlloc();
            v128[0] = v109;
            *v24 = 134218754;
            *(v24 + 4) = v19;
            *(v24 + 12) = 2080;
            v25 = sub_25E635DF0();
            log = v23;
            v27 = sub_25E6011D4(v25, v26, v128);

            bufa = v24;
            *(v24 + 14) = v27;
            *(v24 + 22) = 2080;
            a8 = v124;
            v28 = sub_25E635DF0();
            v30 = sub_25E6011D4(v28, v29, v128);

            *(bufa + 3) = v30;
            *(bufa + 16) = 2080;
            v133 = a2;

            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCF9198, &qword_25E63B198);
            sub_25E61F3E8(&qword_280CB2808);
            v31 = sub_25E6357A0();
            v33 = v32;

            v34 = sub_25E6011D4(v31, v33, v128);

            *(bufa + 34) = v34;
            _os_log_impl(&dword_25E5F0000, log, v113, "Too much time (%fs) between rootOpen %s and open %s for path %s", bufa, 0x2Au);
            swift_arrayDestroy();
            MEMORY[0x25F8BA800](v109, -1, -1);
            MEMORY[0x25F8BA800](bufa, -1, -1);
          }

          else
          {

            a8 = v124;
          }
        }

        v84 = sub_25E61B71C(v128, a2, a3);
        if (!*v97)
        {
          goto LABEL_31;
        }

        v98 = v97;
        v99 = a8 | 0x8000000000000000;
        sub_25E60A2C8();
        v100 = *(*v98 + 16);
        sub_25E60A354(v100);
        v101 = *v98;
        *(v101 + 16) = v100 + 1;
        v95 = v101 + 40 * v100;
        *(v95 + 32) = a6;
        *(v95 + 40) = a7;
        v96 = 1;
        *(v95 + 48) = v99;
LABEL_27:
        *(v95 + 56) = v96;
        *(v95 + 64) = a4;
LABEL_31:
        result = (v84)(v128, 0);
        break;
    }
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCF91F0, &qword_25E63CAA0);
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_25E63A3E0;
    *(v16 + 32) = a6;
    *(v16 + 40) = a7;
    *(v16 + 48) = a8;
    *(v16 + 56) = a4;
    *(v16 + 64) = 0;
    v17 = *a1;
    swift_isUniquelyReferenced_nonNull_native();
    v128[0] = *a1;
    result = sub_25E60E12C();
    *a1 = v128[0];
  }

  return result;
}

void (*sub_25E61B71C(void *a1, uint64_t a2, uint64_t a3))(void *a1)
{
  v6 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v6;
  v6[4] = sub_25E61D520(v6, a2, a3);
  return sub_25E61B790;
}

void sub_25E61B790(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1, 0);

  free(v1);
}

void sub_25E61B7DC(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned __int8 a6, double a7)
{
  v12 = sub_25E607B7C(a2, a3, *a1);
  if (v12 && (sub_25E614318(v12, &v101), , v102 >> 8 != 0xFFFFFFFF))
  {
    v16 = v103;
    switch(v102 >> 62)
    {
      case 1uLL:
        goto LABEL_3;
      case 2uLL:
        v93 = v103;
        v96 = a5;
        v98 = a4;
        v32 = sub_25E635DF0();
        v34 = v33;
        if (v32 == sub_25E635DF0() && v34 == v35)
        {
        }

        else
        {
          v37 = sub_25E636070();

          if ((v37 & 1) == 0)
          {
            v38 = sub_25E6356F0();
            v39 = sub_25E635CE0();
            if (os_log_type_enabled(v38, v39))
            {
              v87 = v39;
              v40 = swift_slowAlloc();
              v90 = swift_slowAlloc();
              v100[0] = v90;
              *v40 = 136315394;
              v41 = sub_25E635DF0();
              v43 = sub_25E6011D4(v41, v42, v100);

              *(v40 + 4) = v43;
              *(v40 + 12) = 2080;
              v44 = sub_25E635DF0();
              v46 = sub_25E6011D4(v44, v45, v100);

              *(v40 + 14) = v46;
              _os_log_impl(&dword_25E5F0000, v38, v87, "Event label %s doesn't match expectation %s", v40, 0x16u);
              swift_arrayDestroy();
              MEMORY[0x25F8BA800](v90, -1, -1);
              MEMORY[0x25F8BA800](v40, -1, -1);
            }
          }
        }

        v65 = sub_25E61B71C(v100, a2, a3);
        if (!*v64)
        {
          goto LABEL_40;
        }

        v66 = v64;
        sub_25E60A2C8();
        v67 = *(*v66 + 16);
        sub_25E60A354(v67);
        v68 = *v66;
        *(v68 + 16) = v67 + 1;
        v69 = v68 + 40 * v67;
        *(v69 + 32) = v98;
        *(v69 + 40) = v96;
        *(v69 + 48) = a6 | 0xC000000000000000;
        *(v69 + 56) = v93;
        goto LABEL_36;
      case 3uLL:
        v47 = a7 - v104;
        if (a7 - v104 >= 0.1)
        {

          v48 = sub_25E6356F0();
          v49 = sub_25E635CE0();

          v91 = v49;
          v50 = v49;
          v51 = v48;
          if (os_log_type_enabled(v48, v50))
          {
            v52 = swift_slowAlloc();
            v88 = swift_slowAlloc();
            v100[0] = v88;
            *v52 = 134218754;
            *(v52 + 4) = v47;
            *(v52 + 12) = 2080;
            v53 = sub_25E635DF0();
            v54 = v51;
            v94 = v16;
            v56 = sub_25E6011D4(v53, v55, v100);

            *(v52 + 14) = v56;
            *(v52 + 22) = 2080;
            v57 = sub_25E635DF0();
            v59 = sub_25E6011D4(v57, v58, v100);

            *(v52 + 24) = v59;
            *(v52 + 32) = 2080;
            v105 = a2;

            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCF9198, &qword_25E63B198);
            sub_25E61F3E8(&qword_280CB2808);
            v60 = sub_25E6357A0();
            v62 = v61;

            v63 = sub_25E6011D4(v60, v62, v100);
            v16 = v94;

            *(v52 + 34) = v63;
            _os_log_impl(&dword_25E5F0000, v54, v91, "Too much time (%fs) between close %s and close %s for path %s", v52, 0x2Au);
            swift_arrayDestroy();
            MEMORY[0x25F8BA800](v88, -1, -1);
            MEMORY[0x25F8BA800](v52, -1, -1);
          }

          else
          {
          }
        }

        if (v16 < 2)
        {
          v65 = sub_25E61B71C(v100, a2, a3);
          if (*v82)
          {
            v83 = v82;
            v84 = a5;
            v72 = a6 | 0x4000000000000000;
            sub_25E60A2C8();
            v85 = *(*v83 + 16);
            sub_25E60A354(v85);
            v86 = *v83;
            *(v86 + 16) = v85 + 1;
            v75 = v86 + 40 * v85;
            *(v75 + 32) = a4;
            *(v75 + 40) = v84;
LABEL_39:
            *(v75 + 48) = v72;
            *(v75 + 56) = a7;
            *(v75 + 64) = 0;
          }
        }

        else
        {
          v65 = sub_25E61B71C(v100, a2, a3);
          if (*v76)
          {
            v77 = v76;
            v78 = a5;
            v79 = v16 - 1;
            sub_25E60A2C8();
            v80 = *(*v77 + 16);
            sub_25E60A354(v80);
            v81 = *v77;
            *(v81 + 16) = v80 + 1;
            v69 = v81 + 40 * v80;
            *(v69 + 32) = a4;
            *(v69 + 40) = v78;
            *(v69 + 48) = a6 | 0xC000000000000000;
            *(v69 + 56) = v79;
LABEL_36:
            *(v69 + 64) = a7;
          }
        }

LABEL_40:
        (v65)(v100, 0);
        break;
      default:
        v95 = a5;
        v97 = a4;
        v17 = sub_25E635DF0();
        v19 = v18;
        if (v17 == sub_25E635DF0() && v19 == v20)
        {
        }

        else
        {
          v22 = sub_25E636070();

          if ((v22 & 1) == 0)
          {
            v23 = sub_25E6356F0();
            v24 = sub_25E635CE0();
            if (os_log_type_enabled(v23, v24))
            {
              v89 = v24;
              v25 = swift_slowAlloc();
              v92 = swift_slowAlloc();
              v100[0] = v92;
              *v25 = 136315394;
              v26 = sub_25E635DF0();
              v28 = sub_25E6011D4(v26, v27, v100);

              *(v25 + 4) = v28;
              *(v25 + 12) = 2080;
              v29 = sub_25E635DF0();
              v31 = sub_25E6011D4(v29, v30, v100);

              *(v25 + 14) = v31;
              _os_log_impl(&dword_25E5F0000, v23, v89, "Event label %s doesn't match expectation %s", v25, 0x16u);
              swift_arrayDestroy();
              MEMORY[0x25F8BA800](v92, -1, -1);
              MEMORY[0x25F8BA800](v25, -1, -1);
            }
          }
        }

        v65 = sub_25E61B71C(v100, a2, a3);
        if (!*v70)
        {
          goto LABEL_40;
        }

        v71 = v70;
        v72 = a6 | 0x4000000000000000;
        sub_25E60A2C8();
        v73 = *(*v71 + 16);
        sub_25E60A354(v73);
        v74 = *v71;
        *(v74 + 16) = v73 + 1;
        v75 = v74 + 40 * v73;
        *(v75 + 32) = v97;
        *(v75 + 40) = v95;
        goto LABEL_39;
    }
  }

  else
  {
LABEL_3:
    v13 = sub_25E6356F0();
    v14 = sub_25E635CE0();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_25E5F0000, v13, v14, "Event is being closed without having been open", v15, 2u);
      MEMORY[0x25F8BA800](v15, -1, -1);
    }
  }
}

void _s22PhotosIntelligenceCore17RootEventRecorderC10withEvents2doxxSayAC0E0VGzKYTXE_tKlF(void (*a1)(uint64_t))
{
  if (*(v1 + 18) == 1)
  {
    os_unfair_lock_lock((v1 + 24));
    a1(v1 + 32);
    os_unfair_lock_unlock((v1 + 24));
  }

  else
  {
    sub_25E61DF78();
    swift_allocError();
    swift_willThrow();
  }
}

uint64_t RootEventRecorder.deinit()
{
  sub_25E61DFCC(v0 + 32, &qword_27FCF9480, &qword_25E63BD10);
  sub_25E61DFCC(v0 + 48, &qword_27FCF9488, &qword_25E63BD18);
  v1 = OBJC_IVAR____TtC22PhotosIntelligenceCore17RootEventRecorder_logger;
  v2 = sub_25E635710();
  OUTLINED_FUNCTION_1_2(v2);
  (*(v3 + 8))(v0 + v1);
  v4 = OBJC_IVAR____TtC22PhotosIntelligenceCore17RootEventRecorder_signposter;
  v5 = sub_25E635690();
  OUTLINED_FUNCTION_1_2(v5);
  (*(v6 + 8))(v0 + v4);
  v7 = OBJC_IVAR____TtC22PhotosIntelligenceCore17RootEventRecorder_referenceDate;
  v8 = sub_25E635570();
  OUTLINED_FUNCTION_1_2(v8);
  (*(v9 + 8))(v0 + v7);
  v10 = *(v0 + OBJC_IVAR____TtC22PhotosIntelligenceCore17RootEventRecorder_eventSessionIdentifier + 24);

  v12 = *(v0 + OBJC_IVAR____TtC22PhotosIntelligenceCore17RootEventRecorder_path);
  v11 = *(v0 + OBJC_IVAR____TtC22PhotosIntelligenceCore17RootEventRecorder_path + 8);

  v13 = *(v0 + OBJC_IVAR____TtC22PhotosIntelligenceCore17RootEventRecorder_defaultTag + 8);

  return v0;
}

uint64_t RootEventRecorder.__deallocating_deinit()
{
  RootEventRecorder.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t RootEventRecorder.spawnConcurrent(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v4 = v3;
  v8 = *(v4 + OBJC_IVAR____TtC22PhotosIntelligenceCore17RootEventRecorder_path);
  v9 = *(v4 + OBJC_IVAR____TtC22PhotosIntelligenceCore17RootEventRecorder_path + 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCF91B0, &unk_25E63BD20);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_25E63A3E0;
  *(inited + 32) = a1;
  *(inited + 40) = a2;
  swift_bridgeObjectRetain_n();
  swift_bridgeObjectRetain_n();

  sub_25E61441C(inited);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCF91E8, " A");
  v11 = swift_initStackObject();
  OUTLINED_FUNCTION_47_0(v11, v12, v13, v14, v15, v16, v17, v18, xmmword_25E63A3E0);

  *a3 = v8;
  a3[1] = v8;
  a3[3] = &type metadata for RootEventRecorder.ChildRecorder;
  a3[4] = &off_28704BBB8;
  a3[2] = v4;
}

uint64_t RootEventRecorder.spawnSerial(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v4 = v3;
  v8 = *(v4 + OBJC_IVAR____TtC22PhotosIntelligenceCore17RootEventRecorder_path);
  v9 = *(v4 + OBJC_IVAR____TtC22PhotosIntelligenceCore17RootEventRecorder_path + 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCF91B0, &unk_25E63BD20);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_25E63A3E0;
  *(inited + 32) = a1;
  *(inited + 40) = a2;

  sub_25E61441C(inited);
  *a3 = v8;
  a3[1] = v9;
  a3[3] = &type metadata for RootEventRecorder.ChildRecorder;
  a3[4] = &off_28704BBB8;
  a3[2] = v4;
}

uint64_t sub_25E61C558()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_25E61F610;

  return RootEventRecorder.execute<A>(as:tag:block:)();
}

uint64_t sub_25E61C664@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v7 = *v3;
  v8 = v3[1];
  v9 = v3[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCF91B0, &unk_25E63BD20);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_25E63A3E0;
  *(inited + 32) = a1;
  *(inited + 40) = a2;
  swift_bridgeObjectRetain_n();
  swift_bridgeObjectRetain_n();

  sub_25E61441C(inited);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCF91E8, " A");
  v11 = swift_initStackObject();
  OUTLINED_FUNCTION_47_0(v11, v12, v13, v14, v15, v16, v17, v18, xmmword_25E63A3E0);

  *a3 = v7;
  a3[1] = v7;
  a3[3] = &type metadata for RootEventRecorder.ChildRecorder;
  a3[4] = &off_28704BBB8;
  a3[2] = v9;
  return result;
}

uint64_t sub_25E61C774@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v7 = *v3;
  v8 = v3[1];
  v9 = v3[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCF91B0, &unk_25E63BD20);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_25E63A3E0;
  *(inited + 32) = a1;
  *(inited + 40) = a2;

  result = sub_25E61441C(inited);
  *a3 = v7;
  a3[1] = v8;
  a3[3] = &type metadata for RootEventRecorder.ChildRecorder;
  a3[4] = &off_28704BBB8;
  a3[2] = v9;
  return result;
}

uint64_t sub_25E61C844()
{
  OUTLINED_FUNCTION_37();
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v15 = *v4;
  v14 = v1;

  OUTLINED_FUNCTION_46_0(v5, v6, v7, v8, v9, v10, v11, v12, v14, v2, v15);
}

void sub_25E61C8E4()
{
  OUTLINED_FUNCTION_37_0();
  v22 = v1;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v10 = type metadata accessor for RootEventRecorder.EventState(0);
  v11 = OUTLINED_FUNCTION_52_0(v10);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_2_3();
  v16 = v15 - v14;
  v17 = *v0;
  v18 = v0[1];
  v19 = v0[2];
  v24 = *v3;
  v23[0] = v17;
  v23[1] = v18;

  sub_25E618150(v9, v7, v5, &v24, v23, v16);

  v22(v20);
  RootEventRecorder.recordEnd(of:)();
  OUTLINED_FUNCTION_0_7();
  sub_25E61DF20(v16, v21);
  OUTLINED_FUNCTION_38_0();
}

uint64_t sub_25E61C9F8()
{
  OUTLINED_FUNCTION_25_0();
  v3 = v2;
  *(v1 + 40) = v4;
  *(v1 + 48) = v5;
  *(v1 + 120) = v6;
  *(v1 + 24) = v7;
  *(v1 + 32) = v8;
  *(v1 + 16) = v9;
  v10 = type metadata accessor for RootEventRecorder.EventState(0);
  OUTLINED_FUNCTION_52_0(v10);
  v12 = *(v11 + 64) + 15;
  *(v1 + 56) = swift_task_alloc();
  v13 = *v0;
  *(v1 + 64) = *v3;
  *(v1 + 80) = v13;
  *(v1 + 96) = *(v0 + 2);
  OUTLINED_FUNCTION_60();

  return MEMORY[0x2822009F8]();
}

uint64_t sub_25E61CAA0()
{
  v1 = *(v0 + 96);
  v2 = *(v0 + 56);
  v4 = *(v0 + 32);
  v3 = *(v0 + 40);
  v5 = *(v0 + 24);
  v6 = *(v0 + 120);
  v18 = *(v0 + 64);
  v19 = *(v0 + 80);
  v20 = *(v0 + 88);

  v7 = OUTLINED_FUNCTION_64();
  sub_25E618150(v7, v8, v6, v9, v10, v11);

  v17 = v3 + *v3;
  v12 = v3[1];
  v13 = swift_task_alloc();
  *(v0 + 104) = v13;
  *v13 = v0;
  v14 = OUTLINED_FUNCTION_50_0(v13);

  return v15(v14);
}

uint64_t sub_25E61CBF0()
{
  OUTLINED_FUNCTION_25_0();
  v2 = *(*v1 + 104);
  v3 = *v1;
  OUTLINED_FUNCTION_44_0();
  *v4 = v3;
  *(v5 + 112) = v0;

  OUTLINED_FUNCTION_60();

  return MEMORY[0x2822009F8]();
}

uint64_t sub_25E61CCF4()
{
  OUTLINED_FUNCTION_25_0();
  v1 = *(v0 + 96);
  v2 = *(v0 + 56);
  RootEventRecorder.recordEnd(of:)();
  OUTLINED_FUNCTION_0_7();
  sub_25E61DF20(v2, v3);

  OUTLINED_FUNCTION_53_0();

  return v4();
}

uint64_t sub_25E61CD6C()
{
  OUTLINED_FUNCTION_25_0();
  v1 = v0[12];
  v2 = v0[7];
  RootEventRecorder.recordEnd(of:)();
  OUTLINED_FUNCTION_0_7();
  sub_25E61DF20(v2, v3);

  OUTLINED_FUNCTION_53_0();
  v5 = v0[14];

  return v4();
}

uint64_t sub_25E61CE30()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_25E61CF14;

  return sub_25E61C9F8();
}

uint64_t sub_25E61CF14()
{
  OUTLINED_FUNCTION_25_0();
  v1 = *(*v0 + 16);
  v2 = *v0;
  OUTLINED_FUNCTION_44_0();
  *v3 = v2;

  OUTLINED_FUNCTION_53_0();

  return v4();
}

uint64_t sub_25E61D10C()
{
  v2 = OUTLINED_FUNCTION_49_0();
  v0[3] = type metadata accessor for RootEventRecorder.IgnoreEventRecorder(v2);
  v0[4] = &off_28704BB78;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v0);
  return sub_25E61DEC8(v1, boxed_opaque_existential_1);
}

uint64_t sub_25E61D1C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int *a6)
{
  v11 = (a6 + *a6);
  v8 = a6[1];
  v9 = swift_task_alloc();
  *(v6 + 16) = v9;
  *v9 = v6;
  v9[1] = sub_25E61F610;

  return v11(a1);
}

uint64_t sub_25E61D2D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int *a6)
{
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  *v13 = v6;
  v13[1] = sub_25E61F610;

  return sub_25E61D1C0(a1, v9, v10, v11, v12, a6);
}

uint64_t sub_25E61D388(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v6 = *v3;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v3 = v6;
  if (!result || a1 > *(v6 + 24) >> 1)
  {
    if (*(v6 + 16) > a1)
    {
      v8 = *(v6 + 16);
    }

    result = a3();
    *v3 = result;
  }

  return result;
}

unint64_t sub_25E61D400(unint64_t result, char a2, uint64_t a3, void *a4)
{
  a4[(result >> 6) + 8] |= 1 << result;
  *(a4[6] + result) = a2;
  *(a4[7] + 8 * result) = a3;
  v4 = a4[2];
  v5 = __OFADD__(v4, 1);
  v6 = v4 + 1;
  if (v5)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v6;
  }

  return result;
}

unint64_t sub_25E61D444(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  a6[(result >> 6) + 8] |= 1 << result;
  v6 = (a6[6] + 16 * result);
  *v6 = a2;
  v6[1] = a3;
  v7 = (a6[7] + 16 * result);
  *v7 = a4;
  v7[1] = a5;
  v8 = a6[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a6[2] = v10;
  }

  return result;
}

unint64_t sub_25E61D490(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  v5 = (a5[6] + 16 * result);
  *v5 = a2;
  v5[1] = a3;
  *(a5[7] + 8 * result) = a4;
  v6 = a5[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v8;
  }

  return result;
}

uint64_t sub_25E61D4D8(uint64_t result, uint64_t a2)
{
  if (__OFSUB__(0, a2))
  {
    __break(1u);
    goto LABEL_7;
  }

  v2 = *(result + 16);
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

  if (v4 < 0)
  {
LABEL_9:
    __break(1u);
  }

  return result;
}

void (*sub_25E61D520(void *a1, uint64_t a2, uint64_t a3))(uint64_t a1)
{
  v7 = __swift_coroFrameAllocStub(0x50uLL);
  *a1 = v7;
  v8 = *v3;
  swift_isUniquelyReferenced_nonNull_native();
  v7[8] = sub_25E61D84C(v7);
  v7[9] = sub_25E61D618(v7 + 4, a2, a3);
  return sub_25E61D5B8;
}

void sub_25E61D5B8(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 64);
  (*(*a1 + 72))();
  v2(v1, 0);

  free(v1);
}

void (*sub_25E61D618(void *a1, uint64_t a2, uint64_t a3))(uint64_t **a1)
{
  v4 = v3;
  v8 = __swift_coroFrameAllocStub(0x30uLL);
  *a1 = v8;
  v8[2] = a3;
  v8[3] = v3;
  v8[1] = a2;
  v9 = *v3;
  v10 = sub_25E60D6D8(a2, a3);
  *(v8 + 40) = v11 & 1;
  if (__OFADD__(*(v9 + 16), (v11 & 1) == 0))
  {
    __break(1u);
    goto LABEL_10;
  }

  v12 = v10;
  v13 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCF9200, &unk_25E63B2C8);
  if (sub_25E635EA0())
  {
    v14 = *v4;
    v15 = sub_25E60D6D8(a2, a3);
    if ((v13 & 1) == (v16 & 1))
    {
      v12 = v15;
      goto LABEL_5;
    }

LABEL_10:
    result = sub_25E6360A0();
    __break(1u);
    return result;
  }

LABEL_5:
  v8[4] = v12;
  if (v13)
  {
    v17 = *(*(*v4 + 56) + 8 * v12);
  }

  else
  {
    v17 = 0;
  }

  *v8 = v17;
  return sub_25E61D758;
}

void sub_25E61D758(uint64_t **a1)
{
  v1 = *a1;
  v2 = **a1;
  v3 = *(*a1 + 40);
  if (v2)
  {
    v4 = v1[4];
    v5 = *v1[3];
    if (v3)
    {
      *(v5[7] + 8 * v4) = v2;
    }

    else
    {
      sub_25E61D490(v4, v1[1], v1[2], v2, v5);
    }
  }

  else if ((*a1)[5])
  {
    sub_25E61F364(*(*v1[3] + 48) + 16 * v1[4]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCF9570, &qword_25E63CA90);
    sub_25E61F394();
    sub_25E635EB0();
  }

  v6 = *v1;

  free(v1);
}

void (*sub_25E61D84C(void *a1))(uint64_t *a1)
{
  *a1 = *v1;
  a1[1] = v1;
  return sub_25E61D874;
}

void sub_25E61D87C(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_76(a1, a2);
  if (v2)
  {
    v4 = (v3 + 32);
    do
    {
      v5 = *v4++;
      MEMORY[0x25F8B9DE0](v5);
      --v2;
    }

    while (v2);
  }
}

void sub_25E61D8BC(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_76(a1, a2);
  if (v2)
  {
    v4 = (v3 + 40);
    do
    {
      v5 = *(v4 - 1);
      v6 = *v4;

      OUTLINED_FUNCTION_40_0();
      sub_25E635860();

      v4 += 2;
      --v2;
    }

    while (v2);
  }
}

unint64_t sub_25E61D91C(uint64_t a1)
{
  result = OUTLINED_FUNCTION_69(a1);
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FCF9198, &qword_25E63B198);
    result = OUTLINED_FUNCTION_77();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_25E61D974()
{
  result = qword_27FCF93A0;
  if (!qword_27FCF93A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FCF93A0);
  }

  return result;
}

unint64_t sub_25E61D9C8()
{
  result = qword_27FCF93A8;
  if (!qword_27FCF93A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FCF93A8);
  }

  return result;
}

unint64_t sub_25E61DA1C()
{
  result = qword_27FCF93B0;
  if (!qword_27FCF93B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FCF93B0);
  }

  return result;
}

unint64_t sub_25E61DA70()
{
  result = qword_27FCF93B8;
  if (!qword_27FCF93B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FCF93B8);
  }

  return result;
}

unint64_t sub_25E61DAC4()
{
  result = qword_27FCF93C0;
  if (!qword_27FCF93C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FCF93C0);
  }

  return result;
}

uint64_t sub_25E61DB18(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
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

unint64_t sub_25E61DBB4()
{
  result = qword_27FCF9400;
  if (!qword_27FCF9400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FCF9400);
  }

  return result;
}

unint64_t sub_25E61DC08()
{
  result = qword_27FCF9410;
  if (!qword_27FCF9410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FCF9410);
  }

  return result;
}

unint64_t sub_25E61DC5C()
{
  result = qword_27FCF9418;
  if (!qword_27FCF9418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FCF9418);
  }

  return result;
}

unint64_t sub_25E61DCB0()
{
  result = qword_27FCF9420;
  if (!qword_27FCF9420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FCF9420);
  }

  return result;
}

unint64_t sub_25E61DD04()
{
  result = qword_27FCF9430;
  if (!qword_27FCF9430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FCF9430);
  }

  return result;
}

unint64_t sub_25E61DD58()
{
  result = qword_27FCF9448;
  if (!qword_27FCF9448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FCF9448);
  }

  return result;
}

unint64_t sub_25E61DDAC()
{
  result = qword_27FCF9450;
  if (!qword_27FCF9450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FCF9450);
  }

  return result;
}

unint64_t sub_25E61DE00()
{
  result = qword_27FCF9458;
  if (!qword_27FCF9458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FCF9458);
  }

  return result;
}

unint64_t sub_25E61DE54()
{
  result = qword_27FCF9468;
  if (!qword_27FCF9468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FCF9468);
  }

  return result;
}

uint64_t sub_25E61DEC8(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_24_0();
  v5 = v4(v3);
  OUTLINED_FUNCTION_1_2(v5);
  v7 = *(v6 + 16);
  v8 = OUTLINED_FUNCTION_35_0();
  v9(v8);
  return a2;
}

uint64_t sub_25E61DF20(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_1_2(v3);
  (*(v4 + 8))(a1);
  return a1;
}

unint64_t sub_25E61DF78()
{
  result = qword_27FCF9478;
  if (!qword_27FCF9478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FCF9478);
  }

  return result;
}

uint64_t sub_25E61DFCC(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  OUTLINED_FUNCTION_1_2(v4);
  (*(v5 + 8))(a1);
  return a1;
}

unint64_t sub_25E61E028()
{
  result = qword_27FCF9490;
  if (!qword_27FCF9490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FCF9490);
  }

  return result;
}

unint64_t sub_25E61E080()
{
  result = qword_27FCF9498;
  if (!qword_27FCF9498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FCF9498);
  }

  return result;
}

unint64_t sub_25E61E0D8()
{
  result = qword_280CB2868;
  if (!qword_280CB2868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CB2868);
  }

  return result;
}

unint64_t sub_25E61E130()
{
  result = qword_280CB2860;
  if (!qword_280CB2860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CB2860);
  }

  return result;
}

unint64_t sub_25E61E188()
{
  result = qword_280CB2878[0];
  if (!qword_280CB2878[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280CB2878);
  }

  return result;
}

unint64_t sub_25E61E1E0()
{
  result = qword_27FCF94A0;
  if (!qword_27FCF94A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FCF94A0);
  }

  return result;
}

uint64_t sub_25E61E25C()
{
  result = sub_25E635710();
  if (v1 <= 0x3F)
  {
    v4 = *(result - 8) + 64;
    result = sub_25E635690();
    if (v2 <= 0x3F)
    {
      v5 = *(result - 8) + 64;
      result = sub_25E635570();
      if (v3 <= 0x3F)
      {
        v6 = *(result - 8) + 64;
        return swift_updateClassMetadata2();
      }
    }
  }

  return result;
}

void sub_25E61E40C()
{
  sub_25E6355A0();
  if (v0 <= 0x3F)
  {
    sub_25E61E4BC();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_25E61E4BC()
{
  if (!qword_280CB2820)
  {
    sub_25E6356D0();
    v0 = sub_25E635D30();
    if (!v1)
    {
      atomic_store(v0, &qword_280CB2820);
    }
  }
}

uint64_t getEnumTagSinglePayload for RootEventRecorder.Options(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for RootEventRecorder.Options(uint64_t result, int a2, int a3)
{
  if (a2)
  {
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

  *(result + 8) = v3;
  return result;
}

void sub_25E61E5C0()
{
  sub_25E6355A0();
  if (v0 <= 0x3F)
  {
    type metadata accessor for ThermalState(319);
    if (v1 <= 0x3F)
    {
      sub_25E61E690();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_25E61E690()
{
  if (!qword_280CB2870)
  {
    v0 = sub_25E635D30();
    if (!v1)
    {
      atomic_store(v0, &qword_280CB2870);
    }
  }
}

uint64_t sub_25E61E728()
{
  result = type metadata accessor for RootEventRecorder.EventState(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_25E61E7A8(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 24))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_25E61E7E8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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
      *result = (a2 - 1);
      return result;
    }

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t initializeBufferWithCopyOfBuffer for RootEventRecorder.EventDebugState(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  *a1 = *a2;

  return v2 + 16;
}

__n128 __swift_memcpy40_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for RootEventRecorder.EventDebugState(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 40))
    {
      v3 = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 17);
      if (v2 > 0x80000000)
      {
        v3 = ~v2;
      }

      else
      {
        v3 = -1;
      }
    }
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

uint64_t storeEnumTagSinglePayload for RootEventRecorder.EventDebugState(uint64_t result, int a2, int a3)
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
      *result = 0;
      *(result + 8) = 0;
      *(result + 24) = 0;
      *(result + 32) = 0;
      *(result + 16) = -a2 << 8;
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

_BYTE *storeEnumTagSinglePayload for RootEventRecorder.Error(_BYTE *result, int a2, int a3)
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

uint64_t getEnumTagSinglePayload for RootEventRecorder.Event.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF9)
  {
    if (a2 + 7 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 7) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 8;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 8;
  v5 = v6 - 8;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for RootEventRecorder.Event.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *storeEnumTagSinglePayload for RootEventRecorder.Path.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_25E61ECA0()
{
  result = qword_27FCF94C0;
  if (!qword_27FCF94C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FCF94C0);
  }

  return result;
}

unint64_t sub_25E61ECF8()
{
  result = qword_27FCF94C8;
  if (!qword_27FCF94C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FCF94C8);
  }

  return result;
}

unint64_t sub_25E61ED50()
{
  result = qword_27FCF94D0;
  if (!qword_27FCF94D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FCF94D0);
  }

  return result;
}

unint64_t sub_25E61EDA8()
{
  result = qword_27FCF94D8;
  if (!qword_27FCF94D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FCF94D8);
  }

  return result;
}

unint64_t sub_25E61EE00()
{
  result = qword_27FCF94E0;
  if (!qword_27FCF94E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FCF94E0);
  }

  return result;
}

unint64_t sub_25E61EE58()
{
  result = qword_27FCF94E8;
  if (!qword_27FCF94E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FCF94E8);
  }

  return result;
}

unint64_t sub_25E61EEB0()
{
  result = qword_27FCF94F0;
  if (!qword_27FCF94F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FCF94F0);
  }

  return result;
}

unint64_t sub_25E61EF08()
{
  result = qword_27FCF94F8;
  if (!qword_27FCF94F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FCF94F8);
  }

  return result;
}

unint64_t sub_25E61EF60()
{
  result = qword_27FCF9500;
  if (!qword_27FCF9500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FCF9500);
  }

  return result;
}

unint64_t sub_25E61EFB8()
{
  result = qword_27FCF9508;
  if (!qword_27FCF9508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FCF9508);
  }

  return result;
}

unint64_t sub_25E61F010()
{
  result = qword_27FCF9510;
  if (!qword_27FCF9510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FCF9510);
  }

  return result;
}

unint64_t sub_25E61F068()
{
  result = qword_27FCF9518;
  if (!qword_27FCF9518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FCF9518);
  }

  return result;
}

unint64_t sub_25E61F0C0()
{
  result = qword_27FCF9520;
  if (!qword_27FCF9520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FCF9520);
  }

  return result;
}

unint64_t sub_25E61F118()
{
  result = qword_27FCF9528;
  if (!qword_27FCF9528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FCF9528);
  }

  return result;
}

unint64_t sub_25E61F170()
{
  result = qword_27FCF9530;
  if (!qword_27FCF9530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FCF9530);
  }

  return result;
}

unint64_t sub_25E61F1C8()
{
  result = qword_27FCF9538;
  if (!qword_27FCF9538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FCF9538);
  }

  return result;
}

unint64_t sub_25E61F220()
{
  result = qword_27FCF9540;
  if (!qword_27FCF9540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FCF9540);
  }

  return result;
}

unint64_t sub_25E61F278()
{
  result = qword_27FCF9548;
  if (!qword_27FCF9548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FCF9548);
  }

  return result;
}

unint64_t sub_25E61F2CC()
{
  result = qword_27FCF9558;
  if (!qword_27FCF9558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FCF9558);
  }

  return result;
}

unint64_t sub_25E61F320(uint64_t a1)
{
  result = OUTLINED_FUNCTION_69(a1);
  if (!result)
  {
    v3(255);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_25E61F394()
{
  result = qword_27FCF9578;
  if (!qword_27FCF9578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FCF9578);
  }

  return result;
}

unint64_t sub_25E61F3E8(uint64_t a1)
{
  result = OUTLINED_FUNCTION_69(a1);
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v3, v4);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

_BYTE *sub_25E61F42C(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_25E61F50C()
{
  result = qword_27FCF9588;
  if (!qword_27FCF9588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FCF9588);
  }

  return result;
}

unint64_t sub_25E61F564()
{
  result = qword_27FCF9590;
  if (!qword_27FCF9590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FCF9590);
  }

  return result;
}

unint64_t sub_25E61F5BC()
{
  result = qword_27FCF9598;
  if (!qword_27FCF9598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FCF9598);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_18_2(uint64_t a1, double a2)
{
  *(a1 + 32) = a2;

  return sub_25E6357F0();
}

__n128 OUTLINED_FUNCTION_23_0(__n128 *a1)
{
  result = *(v1 - 176);
  a1[1] = result;
  return result;
}

void OUTLINED_FUNCTION_27_0()
{
  v2 = *(v0 - 120);
  *(v0 - 128) = *(v0 - 128);
  *(v0 - 120) = v2;

  JUMPOUT(0x25F8B9540);
}

uint64_t OUTLINED_FUNCTION_30_0()
{

  return sub_25E635F90();
}

uint64_t OUTLINED_FUNCTION_31_0()
{

  return sub_25E635FC0();
}

uint64_t OUTLINED_FUNCTION_32_0@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t OUTLINED_FUNCTION_33()
{

  return sub_25E635F80();
}

void OUTLINED_FUNCTION_45_0()
{

  JUMPOUT(0x25F8B9540);
}

uint64_t OUTLINED_FUNCTION_46_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{

  return sub_25E618150(v13, v12, v11, &a11, &a9, v14);
}

uint64_t OUTLINED_FUNCTION_47_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9)
{
  *(a1 + 16) = a9;
  *(a1 + 32) = *(v9 + 16);

  return sub_25E614350(a1);
}

uint64_t OUTLINED_FUNCTION_48_0()
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_50_0(uint64_t a1)
{
  *(a1 + 8) = v1;
  v3 = *(v2 + 48);
  return *(v2 + 16);
}

__n128 *OUTLINED_FUNCTION_51_0(__n128 *result, __n128 a2)
{
  *(v2 - 176) = a2;
  result[1] = a2;
  *(v2 - 128) = 0;
  *(v2 - 120) = 0xE000000000000000;
  return result;
}

uint64_t OUTLINED_FUNCTION_53_0()
{
  result = v0 + 8;
  v2 = *(v0 + 8);
  return result;
}

void OUTLINED_FUNCTION_54_0()
{

  JUMPOUT(0x25F8B9540);
}

uint64_t OUTLINED_FUNCTION_57(uint64_t a1, double a2)
{
  *(a1 + 32) = a2;

  return sub_25E6357F0();
}

uint64_t OUTLINED_FUNCTION_58()
{

  return sub_25E635EC0();
}

uint64_t OUTLINED_FUNCTION_74(uint64_t a1)
{
  *(a1 + 32) = v2;

  return sub_25E6357F0();
}

uint64_t OUTLINED_FUNCTION_75()
{

  return sub_25E6355A0();
}

void OUTLINED_FUNCTION_76(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);

  JUMPOUT(0x25F8B9DE0);
}

uint64_t OUTLINED_FUNCTION_77()
{

  return swift_getWitnessTable();
}

uint64_t OUTLINED_FUNCTION_79()
{

  return sub_25E6360F0();
}

void OUTLINED_FUNCTION_80(uint64_t *a1@<X8>)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  v5 = a1[3];

  JUMPOUT(0x25F8B9500);
}

uint64_t OUTLINED_FUNCTION_81()
{

  return sub_25E636110();
}

uint64_t EventTag.string.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t static EventTag.== infix(_:_:)(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_25E636070();
  }
}

uint64_t sub_25E61FCF4(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x676E69727473 && a2 == 0xE600000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_25E636070();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_25E61FD80@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_25E61FCF4(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_25E61FDAC(uint64_t a1)
{
  v2 = sub_25E61FF50();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25E61FDE8(uint64_t a1)
{
  v2 = sub_25E61FF50();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t EventTag.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCF95A0, &qword_25E63CBB0);
  v5 = OUTLINED_FUNCTION_1_7(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5);
  v11 = &v16 - v10;
  v12 = *v1;
  v13 = v1[1];
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25E61FF50();
  sub_25E636150();
  sub_25E635FE0();
  return (*(v7 + 8))(v11, v2);
}

unint64_t sub_25E61FF50()
{
  result = qword_27FCF95A8;
  if (!qword_27FCF95A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FCF95A8);
  }

  return result;
}

uint64_t EventTag.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  return sub_25E635860();
}

uint64_t EventTag.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  sub_25E636110();
  sub_25E635860();
  return sub_25E636130();
}

uint64_t EventTag.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCF95B0, &qword_25E63CBB8);
  v7 = OUTLINED_FUNCTION_1_7(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v7);
  v13 = &v19 - v12;
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25E61FF50();
  sub_25E636140();
  if (!v2)
  {
    v15 = sub_25E635F70();
    v17 = v16;
    (*(v9 + 8))(v13, v3);
    *a2 = v15;
    a2[1] = v17;
  }

  return __swift_destroy_boxed_opaque_existential_0Tm(a1);
}

uint64_t sub_25E620168()
{
  v1 = *v0;
  v2 = v0[1];
  sub_25E636110();
  sub_25E635860();
  return sub_25E636130();
}

uint64_t EventRecorder.recordBeginning(of:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[0] = 0;
  v6[1] = 0;
  return (*(a5 + 24))(a1, a2, a3, v6, a4);
}

uint64_t EventRecorder.execute<A>(as:block:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9[0] = 0;
  v9[1] = 0;
  return (*(a8 + 40))(a1, a2, a3, v9, a4, a5, a7, a6, a8);
}

uint64_t EventRecorder.execute<A>(as:block:)()
{
  OUTLINED_FUNCTION_0_8();
  v0[3] = 0;
  v0[2] = 0;
  OUTLINED_FUNCTION_2_9();
  v7 = (v1 + *v1);
  v3 = *(v2 + 4);
  v4 = swift_task_alloc();
  v0[4] = v4;
  *v4 = v0;
  v4[1] = sub_25E6203B4;
  v5 = OUTLINED_FUNCTION_3_7();

  return v7(v5);
}

uint64_t sub_25E6203B4()
{
  v2 = *(*v1 + 32);
  v3 = *v1;
  *(v3 + 40) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_25E6204E8, 0, 0);
  }

  else
  {
    v4 = *(v3 + 8);

    return v4();
  }
}

unint64_t sub_25E620508()
{
  result = qword_27FCF95B8;
  if (!qword_27FCF95B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FCF95B8);
  }

  return result;
}

unint64_t sub_25E620560()
{
  result = qword_27FCF95C0;
  if (!qword_27FCF95C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FCF95C0);
  }

  return result;
}

unint64_t sub_25E6205C4()
{
  result = qword_27FCF95C8;
  if (!qword_27FCF95C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FCF95C8);
  }

  return result;
}

uint64_t sub_25E620630(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 16))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
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

uint64_t sub_25E620670(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t dispatch thunk of EventRecorder.execute<A>(as:tag:block:)()
{
  OUTLINED_FUNCTION_0_8();
  OUTLINED_FUNCTION_2_9();
  v7 = (v1 + *v1);
  v3 = *(v2 + 4);
  v4 = swift_task_alloc();
  *(v0 + 16) = v4;
  *v4 = v0;
  v4[1] = sub_25E620874;
  v5 = OUTLINED_FUNCTION_3_7();

  return v7(v5);
}

uint64_t sub_25E620874()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

_BYTE *storeEnumTagSinglePayload for EventTag.CodingKeys(_BYTE *result, int a2, int a3)
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

unint64_t sub_25E620A2C()
{
  result = qword_27FCF95D0;
  if (!qword_27FCF95D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FCF95D0);
  }

  return result;
}

unint64_t sub_25E620A84()
{
  result = qword_27FCF95D8;
  if (!qword_27FCF95D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FCF95D8);
  }

  return result;
}

unint64_t sub_25E620ADC()
{
  result = qword_27FCF95E0[0];
  if (!qword_27FCF95E0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27FCF95E0);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_2_9()
{
  result = v0 + 48;
  v2 = *(v0 + 48);
  return result;
}

uint64_t sub_25E620BA0@<X0>(void (*a1)(char *, char *)@<X0>, uint64_t a2@<X3>, uint64_t a3@<X4>, uint64_t a4@<X6>, uint64_t a5@<X8>)
{
  v28 = a4;
  v29 = a1;
  v30 = a3;
  v26 = *(a2 - 8);
  v27 = a2;
  v7 = *(v26 + 64);
  v8 = MEMORY[0x28223BE20](a1);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(v11 + 16);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x28223BE20](v8);
  v17 = &v26 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v15);
  v21 = &v26 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v22 + 16))(v21, v23);
  v24 = 1;
  if (__swift_getEnumTagSinglePayload(v21, 1, v12) != 1)
  {
    (*(v13 + 32))(v17, v21, v12);
    v29(v17, v10);
    (*(v13 + 8))(v17, v12);
    if (v5)
    {
      return (*(v26 + 32))(v28, v10, v27);
    }

    v24 = 0;
  }

  return __swift_storeEnumTagSinglePayload(a5, v24, 1, v30);
}

uint64_t RoundRobinCluster.id.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t RoundRobinCluster.init(id:items:targetNumberOfItems:itemsByFeature:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  *a6 = result;
  a6[1] = a2;
  a6[2] = a3;
  a6[3] = a4;
  a6[4] = a5;
  return result;
}

uint64_t sub_25E620E6C()
{
  OUTLINED_FUNCTION_16_4();
  v1 = *(v0 + 104);
}

uint64_t sub_25E620E98(uint64_t a1)
{
  OUTLINED_FUNCTION_48_1();
  v3 = *(v1 + 104);
  *(v1 + 104) = a1;
}

uint64_t sub_25E620ED4()
{
  OUTLINED_FUNCTION_16_4();
  v1 = *(v0 + 112);
}

uint64_t sub_25E620F00@<X0>(void *a1@<X8>)
{
  OUTLINED_FUNCTION_16_4();
  v3 = *(v1 + 120);
  v4 = *(v1 + 128);
  *a1 = v3;
  a1[1] = v4;
}

uint64_t sub_25E620F44(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return sub_25E620F9C(v4);
}

uint64_t sub_25E620F70()
{
  OUTLINED_FUNCTION_16_4();
  v1 = *(v0 + 136);
}

uint64_t sub_25E620F9C(uint64_t a1)
{
  OUTLINED_FUNCTION_48_1();
  v3 = *(v1 + 136);
  *(v1 + 136) = a1;
}

uint64_t sub_25E620FD8(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return sub_25E621030(v4);
}

uint64_t sub_25E621004()
{
  OUTLINED_FUNCTION_16_4();
  v1 = *(v0 + 144);
}

uint64_t sub_25E621030(uint64_t a1)
{
  OUTLINED_FUNCTION_48_1();
  v3 = *(v1 + 144);
  *(v1 + 144) = a1;
}

uint64_t RoundRobinElector.__allocating_init(clusters:requiredItems:requirementCollection:featuresByItem:featuresToRepresent:targetNumberOfCuratedAssets:helper:)(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, __int128 *a7)
{
  v14 = swift_allocObject();
  RoundRobinElector.init(clusters:requiredItems:requirementCollection:featuresByItem:featuresToRepresent:targetNumberOfCuratedAssets:helper:)(a1, a2, a3, a4, a5, a6, a7);
  return v14;
}

uint64_t RoundRobinElector.init(clusters:requiredItems:requirementCollection:featuresByItem:featuresToRepresent:targetNumberOfCuratedAssets:helper:)(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, __int128 *a7)
{
  v9 = *v7;
  v44 = a3[1];
  v45 = *a3;
  v10 = *(*v7 + 80);
  v7[17] = sub_25E635A30();
  v11 = v9[12];
  OUTLINED_FUNCTION_44_1();
  swift_getTupleTypeMetadata2();
  v7[18] = sub_25E635A30();
  v7[2] = a1;
  v12 = v9[11];
  v48 = v7;
  v13 = v9[13];
  OUTLINED_FUNCTION_21_1();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  OUTLINED_FUNCTION_21_1();
  v15 = swift_getAssociatedConformanceWitness();
  swift_bridgeObjectRetain_n();
  v52 = v12;
  v53 = AssociatedConformanceWitness;
  v54 = v15;
  type metadata accessor for RoundRobinCluster();
  OUTLINED_FUNCTION_28_1();
  v16 = sub_25E6359E0();
  v51 = v16;
  OUTLINED_FUNCTION_28_1();
  if (v16 == sub_25E635A60())
  {
LABEL_2:

    v48[3] = a2;
    v48[4] = v45;
    v48[5] = v44;
    v48[6] = a4;
    v48[7] = a6;

    v17 = sub_25E635A30();
    swift_beginAccess();
    v18 = v48[17];
    v48[17] = v17;

    v19 = *(a7 + 3);
    v20 = *(a7 + 4);
    __swift_project_boxed_opaque_existential_1(a7, v19);
    v21 = (*(v20 + 40))(a1, v19, v20);

    v48[14] = v21;
    OUTLINED_FUNCTION_24_1();
    v22 = type metadata accessor for SummaryItemRequirementCollection();
    sub_25E6029D0(v22, &v50);

    *(v48 + 15) = v50;
    v48[13] = a5;
    sub_25E5F20F4(a7, (v48 + 8));
    return v48;
  }

  else
  {
    v24 = a1 + 32;
    v49 = a1 + 32;
    while (1)
    {
      OUTLINED_FUNCTION_28_1();
      v25 = sub_25E635A50();
      sub_25E635A10();
      if ((v25 & 1) == 0)
      {
        break;
      }

      v26 = (v24 + 40 * v16);
      v27 = *v26;
      v28 = v26[1];
      v30 = v26[2];
      v29 = v26[3];
      v31 = v26[4];

      OUTLINED_FUNCTION_54_1();
      sub_25E635AA0();
      if (qword_27FCF8C18 != -1)
      {
        OUTLINED_FUNCTION_0_9();
        swift_once();
      }

      v32 = sub_25E635710();
      __swift_project_value_buffer(v32, qword_27FCFD930);
      OUTLINED_FUNCTION_18_3();

      v33 = sub_25E6356F0();
      v34 = sub_25E635CF0();
      if (os_log_type_enabled(v33, v34))
      {
        OUTLINED_FUNCTION_6_1();
        v35 = swift_slowAlloc();
        OUTLINED_FUNCTION_6_1();
        v36 = a1;
        v37 = v29;
        v38 = swift_slowAlloc();
        *&v50 = v38;
        *v35 = 136315650;

        v39 = sub_25E6011D4(v27, v28, &v50);

        *(v35 + 4) = v39;
        *(v35 + 12) = 2048;
        *(v35 + 14) = sub_25E635A60();
        *(v35 + 22) = 2048;

        *(v35 + 24) = v37;
        a1 = v36;

        _os_log_impl(&dword_25E5F0000, v33, v34, "Cluster %s has %ld items, targeting %ld elected items", v35, 0x20u);
        __swift_destroy_boxed_opaque_existential_0Tm(v38);
        OUTLINED_FUNCTION_2_5();
        MEMORY[0x25F8BA800]();
        v24 = v49;
        OUTLINED_FUNCTION_2_5();
        MEMORY[0x25F8BA800]();
      }

      else
      {

        swift_bridgeObjectRelease_n();
        swift_bridgeObjectRelease_n();
        swift_bridgeObjectRelease_n();
      }

      OUTLINED_FUNCTION_28_1();
      v40 = sub_25E635A60();
      v16 = v51;
      if (v51 == v40)
      {
        goto LABEL_2;
      }
    }

    OUTLINED_FUNCTION_54_1();
    result = sub_25E635E00();
    __break(1u);
  }

  return result;
}

void sub_25E621598(uint64_t a1)
{
  v3 = v1;
  v139 = *v1;
  v5 = type metadata accessor for ProgressReporter(0);
  v6 = OUTLINED_FUNCTION_1_2(v5);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_7();
  v11 = v9 - v10;
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_35_1();
  v14 = MEMORY[0x28223BE20](v13);
  v16 = &v128 - v15;
  MEMORY[0x28223BE20](v14);
  v18 = &v128 - v17;
  ProgressReporter.start()();
  if (v19)
  {
    v20 = sub_25E635710();
    OUTLINED_FUNCTION_0_2(v20);
    (*(v21 + 8))(a1);
    v22 = *(a1 + *(v5 + 20) + 24);

    v23 = *(v5 + 24);
LABEL_3:
    v24 = *(a1 + v23);
LABEL_4:
  }

  else
  {
    v140 = v18;
    v141 = v16;
    v128 = v2;
    v129 = v11;
    v133 = v5;
    v145[0] = v1[3];
    v25 = v139[10];
    v26 = sub_25E635AC0();

    OUTLINED_FUNCTION_1_3();
    swift_getWitnessTable();
    OUTLINED_FUNCTION_39_1();
    v131 = v26;
    v130 = v27;
    sub_25E635960();
    v28 = 0;

    v138 = 0;
    v29 = v1[7];
    v30 = 0.0;
    *&v31 = 134218240;
    v132 = v31;
    *&v31 = 134218242;
    v134 = v31;
    v135 = a1;
    v137 = v1;
    v136 = v25;
    v142 = v29;
    do
    {
      v32 = sub_25E620F70();
      sub_25E635A60();
      OUTLINED_FUNCTION_29_0();
      if (v3 >= v29)
      {
        v144 = v28;
        v38 = v30;
        goto LABEL_32;
      }

      ProgressReporter.report(progress:)(v30);
      if (v33)
      {
        v73 = sub_25E635710();
        OUTLINED_FUNCTION_0_2(v73);
        (*(v74 + 8))(a1);
        OUTLINED_FUNCTION_47_1();
        v23 = *(v32 + 24);
        goto LABEL_3;
      }

      v144 = 0;
      isa = sub_25E620ED4();
      v35 = v139[12];
      sub_25E635A60();
      OUTLINED_FUNCTION_29_0();
      v143 = v3;
      if (v3 < 0)
      {
        __break(1u);
LABEL_49:
        __break(1u);
LABEL_50:
        OUTLINED_FUNCTION_0_9();
        swift_once();
        goto LABEL_44;
      }

      v36 = 0;
      v37 = fmin((1.0 - v30) * 0.5, 0.1);
      v38 = v30 + v37;
      v39 = v30 + v37 - v30;
      do
      {
        if (v143 == v36)
        {
          break;
        }

        v40 = v36 + 1;
        if (__OFADD__(v36, 1))
        {
          __break(1u);
          goto LABEL_42;
        }

        sub_25E620ED4();
        sub_25E635AE0();

        sub_25E620ED4();
        sub_25E635A60();
        OUTLINED_FUNCTION_29_0();
        sub_25E620ED4();
        sub_25E635A60();
        OUTLINED_FUNCTION_29_0();
        v41 = v140;
        ProgressReporter.child(from:to:)(v140, v30 + v39 * v36 / v3, v30 + v39 * v40 / v3);
        v42 = v41;
        v43 = v141;
        sub_25E5FCC60(v42, v141);
        OUTLINED_FUNCTION_20_1();
        swift_beginAccess();
        v44 = v144;
        sub_25E622A34(&v147, v43);
        v144 = v44;
        if (v44)
        {
          swift_endAccess();
          swift_unknownObjectRelease();
          v70 = sub_25E635710();
          OUTLINED_FUNCTION_0_2(v70);
          (*(v71 + 8))(a1);
          OUTLINED_FUNCTION_47_1();
          v72 = *(a1 + *(v43 + 24));

          return;
        }

        swift_endAccess();
        if (qword_27FCF8C18 != -1)
        {
          OUTLINED_FUNCTION_0_9();
          swift_once();
        }

        v45 = sub_25E635710();
        __swift_project_value_buffer(v45, qword_27FCFD930);
        v46 = sub_25E6356F0();
        v47 = sub_25E635CF0();
        if (os_log_type_enabled(v46, v47))
        {
          OUTLINED_FUNCTION_19_1();
          v48 = swift_slowAlloc();
          OUTLINED_FUNCTION_6_1();
          v49 = swift_slowAlloc();
          *v48 = OUTLINED_FUNCTION_36_1(v49).n128_u32[0];
          *(v48 + 4) = v138;
          *(v48 + 12) = 2080;
          v50 = v139[13];
          v51 = *(v50 + 40);
          swift_unknownObjectRetain();
          v51(v145, v35, v50);
          swift_unknownObjectRelease();
          v52 = v145[0];
          v3 = v145[1];

          sub_25E6011D4(v52, v3, &v146);
          OUTLINED_FUNCTION_18_3();
          OUTLINED_FUNCTION_52_1();

          *(v48 + 14) = v52;
          _os_log_impl(&dword_25E5F0000, v46, v47, "Completed round %ld for cluster %s", v48, 0x16u);
          __swift_destroy_boxed_opaque_existential_0Tm(v49);
          v25 = v136;
          OUTLINED_FUNCTION_2_5();
          MEMORY[0x25F8BA800]();
          a1 = v135;
          OUTLINED_FUNCTION_2_5();
          MEMORY[0x25F8BA800]();
        }

        isa = v147.isa;
        OUTLINED_FUNCTION_20_1();
        swift_beginAccess();
        OUTLINED_FUNCTION_13_3();
        sub_25E635AC0();
        swift_unknownObjectRetain();
        sub_25E635A20();
        v53 = *(v3 + 112);
        sub_25E626C54(v36, v53);
        v54 = *((v53 & 0xFFFFFFFFFFFFFF8) + 8 * v36 + 0x20);
        *((v53 & 0xFFFFFFFFFFFFFF8) + 8 * v36 + 0x20) = isa;
        swift_unknownObjectRelease();
        swift_endAccess();
        sub_25E620F70();
        v55 = sub_25E635A60();
        swift_unknownObjectRelease();

        ++v36;
      }

      while (v55 < v142);
      if (__OFADD__(v138++, 1))
      {
        goto LABEL_49;
      }

      if (qword_27FCF8C18 != -1)
      {
        OUTLINED_FUNCTION_0_9();
        swift_once();
      }

      v57 = sub_25E635710();
      v58 = __swift_project_value_buffer(v57, qword_27FCFD930);

      v59 = sub_25E6356F0();
      sub_25E635CF0();
      OUTLINED_FUNCTION_53_1();
      if (os_log_type_enabled(v59, v60))
      {
        OUTLINED_FUNCTION_19_1();
        v61 = swift_slowAlloc();
        OUTLINED_FUNCTION_30_1(v61);
        *(v62 + 4) = v138;
        *(v62 + 12) = 2048;
        sub_25E620F70();
        v63 = v136;
        v64 = sub_25E635A60();

        *(v61 + 14) = v64;
        OUTLINED_FUNCTION_52_1();

        _os_log_impl(&dword_25E5F0000, v59, v25, "Round %ld: There are already %ld elected items", v61, 0x16u);
        OUTLINED_FUNCTION_2_5();
        MEMORY[0x25F8BA800]();
      }

      else
      {

        v63 = v136;
      }

      v145[0] = sub_25E620ED4();
      MEMORY[0x28223BE20](v145[0]);
      v65 = v139;
      v66 = v139[11];
      *(&v128 - 4) = v63;
      *(&v128 - 3) = v66;
      v67 = v65[13];
      *(&v128 - 2) = v35;
      *(&v128 - 1) = v67;
      OUTLINED_FUNCTION_13_3();
      v3 = sub_25E635AC0();
      OUTLINED_FUNCTION_1_3();
      swift_getWitnessTable();
      OUTLINED_FUNCTION_39_1();
      OUTLINED_FUNCTION_52_1();
      v68 = v144;
      v69 = sub_25E635900();
      v28 = v68;

      v30 = v38;
      v25 = v63;
      v29 = v142;
    }

    while ((v69 & 1) == 0);
    v75 = sub_25E6356F0();
    sub_25E635CF0();
    v76 = OUTLINED_FUNCTION_7_5();
    if (os_log_type_enabled(v76, v77))
    {
      v79 = swift_slowAlloc();
      *v79 = 0;
      _os_log_impl(&dword_25E5F0000, v75, v58, "All clusters have no items remaining for processing, stopping early", v79, 2u);
      OUTLINED_FUNCTION_2_5();
      MEMORY[0x25F8BA800]();
    }

    v144 = v68;

LABEL_32:
    v80 = v139;
    v145[0] = sub_25E621004();
    v25 = v80[12];
    OUTLINED_FUNCTION_44_1();
    swift_getTupleTypeMetadata2();
    OUTLINED_FUNCTION_13_3();
    v81 = sub_25E635AC0();
    WitnessTable = swift_getWitnessTable();
    sub_25E635C50();
    OUTLINED_FUNCTION_55_1();

    v143 = v81;
    v141 = WitnessTable;
    if ((v145 & 1) == 0)
    {
      sub_25E620F70();
      sub_25E635A60();
      OUTLINED_FUNCTION_29_0();
      if (v3 < v29)
      {
        if (qword_27FCF8C18 != -1)
        {
          OUTLINED_FUNCTION_0_9();
          swift_once();
        }

        v83 = sub_25E635710();
        __swift_project_value_buffer(v83, qword_27FCFD930);
        OUTLINED_FUNCTION_18_3();

        v84 = sub_25E6356F0();
        v85 = sub_25E635CF0();
        v86 = os_log_type_enabled(v84, v85);
        v87 = v129;
        if (v86)
        {
          OUTLINED_FUNCTION_19_1();
          v88 = swift_slowAlloc();
          OUTLINED_FUNCTION_30_1(v88);
          sub_25E621004();
          v3 = sub_25E635A60();

          *(v88 + 4) = v3;
          OUTLINED_FUNCTION_52_1();

          *(v88 + 12) = 2048;
          *(v88 + 14) = v138;
          _os_log_impl(&dword_25E5F0000, v84, v85, "Processing %ld remaining items in the waiting room (after %ld rounds)", v88, 0x16u);
          OUTLINED_FUNCTION_2_5();
          MEMORY[0x25F8BA800]();
        }

        else
        {
        }

        v89 = v128;
        v90 = v135;
        ProgressReporter.child(from:to:)(v128, v38, 1.0);
        sub_25E5FCC60(v89, v87);
        v91 = v144;
        sub_25E625ED8(v87);
        v40 = v91;
        if (v91)
        {
          (*(*(v83 - 8) + 8))(v90, v83);
          v92 = v133;
          v93 = *(v90 + *(v133 + 20) + 24);

          v94 = *(v90 + *(v92 + 24));
          goto LABEL_4;
        }

LABEL_42:
        v144 = v40;
      }
    }

    v145[0] = sub_25E621004();
    MEMORY[0x28223BE20](v145[0]);
    v95 = v139;
    v96 = v139[11];
    v97 = v136;
    *(&v128 - 4) = v136;
    *(&v128 - 3) = v96;
    v98 = v96;
    v140 = v96;
    v99 = v95[13];
    *(&v128 - 2) = v25;
    *(&v128 - 1) = v99;
    KeyPath = swift_getKeyPath();
    v101 = MEMORY[0x28223BE20](KeyPath);
    *(&v128 - 4) = v98;
    *(&v128 - 3) = v25;
    *(&v128 - 2) = v99;
    *(&v128 - 1) = v101;
    v102 = OUTLINED_FUNCTION_39_1();
    v103 = v144;
    v108 = sub_25E5FB6F4(v102, v104, v143, v97, v105, v141, v106, v107);
    v143 = v103;

    v145[0] = v108;
    v109 = v25;
    v110 = *(swift_getAssociatedConformanceWitness() + 8);
    v111 = v131;
    v112 = v130;
    v113 = sub_25E635BF0();
    v145[0] = sub_25E620F70();
    v141 = v110;
    v144 = MEMORY[0x25F8B9820](v145, v113, v97, v111, v110, v112);

    v145[0] = sub_25E620ED4();
    MEMORY[0x28223BE20](v145[0]);
    OUTLINED_FUNCTION_34_1();
    v114 = v140;
    *(v115 - 32) = v97;
    *(v115 - 24) = v114;
    *(v115 - 16) = v109;
    *(v115 - 8) = v99;
    OUTLINED_FUNCTION_13_3();
    v116 = sub_25E635AC0();
    OUTLINED_FUNCTION_1_3();
    swift_getWitnessTable();
    v117 = OUTLINED_FUNCTION_39_1();
    isa = sub_25E622620(v117, v113, v116, MEMORY[0x277D84A98], v118, MEMORY[0x277D84AC0], v119);

    if (qword_27FCF8C18 != -1)
    {
      goto LABEL_50;
    }

LABEL_44:
    v120 = sub_25E635710();
    __swift_project_value_buffer(v120, qword_27FCFD930);
    OUTLINED_FUNCTION_18_3();
    swift_retain_n();

    v121 = sub_25E6356F0();
    v122 = sub_25E635CF0();
    if (os_log_type_enabled(v121, v122))
    {
      v123 = swift_slowAlloc();
      *v123 = 134219008;
      sub_25E620F70();
      v124 = sub_25E635A60();
      v143 = isa;
      v125 = v124;

      *(v123 + 4) = v125;

      *(v123 + 12) = 2048;
      *(v123 + 14) = v142;

      *(v123 + 22) = 2048;
      *(v123 + 24) = v143;
      *(v123 + 32) = 2048;
      v126 = sub_25E635B90();

      *(v123 + 34) = v126;

      *(v123 + 42) = 2048;
      *(v123 + 44) = v138;
      _os_log_impl(&dword_25E5F0000, v121, v122, "There are %ld out of %ld elected items, %ld fulfilled clusters, and %ld items left in the waiting room after %ld rounds", v123, 0x34u);
      OUTLINED_FUNCTION_2_5();
      MEMORY[0x25F8BA800]();
    }

    else
    {

      swift_bridgeObjectRelease_n();
    }

    v127 = *(v3 + 96);
    __swift_project_boxed_opaque_existential_1((v3 + 64), *(v3 + 88));
    sub_25E620ED4();
    (*(v127 + 56))();

    ProgressReporter.complete()();
  }
}

uint64_t sub_25E622478@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v16[1] = a3;
  v3 = *a2;
  v4 = MEMORY[0x277D84DE8];
  v5 = *(*a2 + *MEMORY[0x277D84DE8]);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](a1);
  v10 = v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = v16 - v11;
  (*(v6 + 16))(v16 - v11);
  v13 = *(v5 + 48);
  v14 = *&v12[v13];
  (*(*(*(v3 + *v4 + 8) - 8) + 32))(v10, v12);
  *&v10[v13] = v14;
  swift_getAtKeyPath();
  return (*(v6 + 8))(v10, v5);
}

uint64_t sub_25E622620(uint64_t (*a1)(char *, char *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v38 = a4;
  v39 = a7;
  v8 = v7;
  v43 = a1;
  v44 = a2;
  v37 = *(a4 - 8);
  v11 = *(v37 + 64);
  MEMORY[0x28223BE20](a1);
  v45 = &v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = a5;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v42 = *(AssociatedTypeWitness - 8);
  v14 = *(v42 + 64);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v16 = &v37 - v15;
  v17 = sub_25E635D30();
  v18 = *(*(v17 - 8) + 64);
  v19 = MEMORY[0x28223BE20](v17 - 8);
  v21 = &v37 - v20;
  v22 = *(a3 - 8);
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v19);
  v25 = &v37 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = swift_getAssociatedTypeWitness();
  v40 = *(v26 - 8);
  v27 = *(v40 + 64);
  MEMORY[0x28223BE20](v26);
  v29 = &v37 - v28;
  (*(v22 + 16))(v25, v47, a3);
  v46 = v29;
  sub_25E6358F0();
  v47 = v26;
  swift_getAssociatedConformanceWitness();
  v30 = 0;
  v31 = (v42 + 32);
  v32 = (v42 + 8);
  while (1)
  {
    sub_25E635D50();
    if (__swift_getEnumTagSinglePayload(v21, 1, AssociatedTypeWitness) == 1)
    {
      goto LABEL_7;
    }

    (*v31)(v16, v21, AssociatedTypeWitness);
    v33 = v43(v16, v45);
    if (v8)
    {
      break;
    }

    v34 = v33;
    v8 = 0;
    (*v32)(v16, AssociatedTypeWitness);
    v35 = __OFADD__(v30, v34 & 1);
    v30 += v34 & 1;
    if (v35)
    {
      __break(1u);
LABEL_7:
      (*(v40 + 8))(v46, v47);
      return v30;
    }
  }

  (*v32)(v16, AssociatedTypeWitness);
  (*(v40 + 8))(v46, v47);
  (*(v37 + 32))(v39, v45, v38);
  return v30;
}

void sub_25E622A34(NSObject *a1, uint64_t a2)
{
  v5 = v2;
  v149 = a1;
  v146 = *v5;
  v7 = v146[10];
  v148 = v146[12];
  OUTLINED_FUNCTION_44_1();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  OUTLINED_FUNCTION_1_2(TupleTypeMetadata2);
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_10_3();
  MEMORY[0x28223BE20](v10);
  v132 = &v128 - v11;
  v12 = sub_25E635D30();
  OUTLINED_FUNCTION_3_8();
  v133 = v13;
  v15 = *(v14 + 64);
  OUTLINED_FUNCTION_10_3();
  MEMORY[0x28223BE20](v16);
  v18 = &v128 - v17;
  OUTLINED_FUNCTION_3_8();
  v142 = v19;
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_7();
  v25 = v23 - v24;
  MEMORY[0x28223BE20](v26);
  v140 = &v128 - v27;
  OUTLINED_FUNCTION_4_2();
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_35_1();
  v30 = MEMORY[0x28223BE20](v29);
  v32 = &v128 - v31;
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_33_0();
  v150 = a2;
  ProgressReporter.start()();
  v152 = v33;
  if (v33)
  {
    v34 = sub_25E635710();
    OUTLINED_FUNCTION_0_2(v34);
    v36 = v150;
    (*(v35 + 8))(v150);
    v37 = type metadata accessor for ProgressReporter(0);
    OUTLINED_FUNCTION_9_4(v37);
    v38 = *(v36 + *(v25 + 24));
  }

  else
  {
    v143 = v25;
    v147 = v18;
    v130 = v12;
    v129 = v32;
    v139 = v4;
    isa = v149->isa;
    (*(v146[13] + 40))(v151, v148);
    v136 = v151[0];
    v146 = v151[1];

    v145 = v142 + 4;
    v148 = v142 + 1;
    v149 = v142 + 2;
    v40 = 0.0;
    *&v41 = 136315394;
    v134 = v41;
    v42 = v3;
    v138 = v3;
    v43 = v140;
    v137 = v5;
    for (i = isa; ; isa = i)
    {
      v44 = v5[11];
      v45 = v5[12];
      __swift_project_boxed_opaque_existential_1(v5 + 8, v44);
      v46 = v44;
      v47 = v147;
      (*(v45 + 48))(isa, v46, v45);
      if (__swift_getEnumTagSinglePayload(v47, 1, v7) == 1)
      {

        (*(v133 + 8))(v47, v130);
        goto LABEL_28;
      }

      (v145->isa)(v42, v47, v7);
      ProgressReporter.report(progress:)(v40);
      if (v48)
      {
        v96 = v148->isa;
        v97 = OUTLINED_FUNCTION_15_4();
        v98(v97);

        v99 = sub_25E635710();
        OUTLINED_FUNCTION_0_2(v99);
        v101 = v150;
        (*(v100 + 8))(v150);
        v102 = type metadata accessor for ProgressReporter(0);
        OUTLINED_FUNCTION_9_4(v102);
        v103 = *(v101 + *(v48 + 24));

        return;
      }

      v49 = sub_25E620ED4();
      v50 = OUTLINED_FUNCTION_61_0();
      sub_25E623614(v50, v51, v49, v52, v53, v54, v55, v56, v128, v129, v130, TupleTypeMetadata2, v132, v133, v134, *(&v134 + 1), v135, v136, v137, v138);

      v152 = 0;
      if (LOBYTE(v151[0]) != 2)
      {
        break;
      }

      if (qword_27FCF8C18 != -1)
      {
        OUTLINED_FUNCTION_0_9();
        swift_once();
      }

      v40 = v40 + fmin((1.0 - v40) * 0.5, 0.1);
      v57 = sub_25E635710();
      __swift_project_value_buffer(v57, qword_27FCFD930);
      v58 = v149->isa;
      (v149->isa)(v143, v42, v7);
      v59 = v146;

      v60 = sub_25E6356F0();
      v61 = sub_25E635CF0();

      if (os_log_type_enabled(v60, v61))
      {
        OUTLINED_FUNCTION_19_1();
        v62 = swift_slowAlloc();
        OUTLINED_FUNCTION_22_1();
        v142 = swift_slowAlloc();
        *v62 = OUTLINED_FUNCTION_36_1(v142).n128_u32[0];
        OUTLINED_FUNCTION_50_1();
        v58();
        v63 = sub_25E635820();
        v65 = v64;
        LODWORD(v141) = v61;
        v66 = v148->isa;
        v67 = OUTLINED_FUNCTION_21_1();
        v66(v67);
        v68 = sub_25E6011D4(v63, v65, v151);
        v5 = v137;
        v43 = v140;

        *(v62 + 4) = v68;
        *(v62 + 12) = 2080;
        v69 = OUTLINED_FUNCTION_32_1();
        *(v62 + 14) = sub_25E6011D4(v69, v59, v70);
        _os_log_impl(&dword_25E5F0000, v60, v141, "Discarding item %s from cluster %s. Continue to the next item in the cluster", v62, 0x16u);
        swift_arrayDestroy();
        OUTLINED_FUNCTION_2_5();
        MEMORY[0x25F8BA800]();
        v42 = v138;
        OUTLINED_FUNCTION_2_5();
        MEMORY[0x25F8BA800]();

        v71 = OUTLINED_FUNCTION_15_4();
        v66(v71);
      }

      else
      {

        v72 = v148->isa;
        v73 = OUTLINED_FUNCTION_21_1();
        v72(v73);
        v74 = OUTLINED_FUNCTION_15_4();
        v72(v74);
      }
    }

    if (LOBYTE(v151[0]))
    {
      if (qword_27FCF8C18 != -1)
      {
        OUTLINED_FUNCTION_0_9();
        swift_once();
      }

      v104 = sub_25E635710();
      __swift_project_value_buffer(v104, qword_27FCFD930);
      v105 = v149->isa;
      (v149->isa)(v43, v42, v7);
      swift_retain_n();
      v106 = v146;

      v107 = sub_25E6356F0();
      v108 = sub_25E635CF0();

      if (os_log_type_enabled(v107, v108))
      {
        OUTLINED_FUNCTION_6_1();
        v109 = swift_slowAlloc();
        LODWORD(v145) = v108;
        v110 = v105;
        v111 = v43;
        v112 = v109;
        OUTLINED_FUNCTION_22_1();
        v147 = swift_slowAlloc();
        v151[0] = v147;
        *v112 = 136315650;
        OUTLINED_FUNCTION_50_1();
        v110();
        OUTLINED_FUNCTION_62_0();
        v141 = sub_25E635820();
        v142 = v107;
        v114 = v113;
        v143 = v148->isa;
        v115 = v111;
        v105 = v110;
        v143(v115, v7);
        v116 = sub_25E6011D4(v141, v114, v151);

        *(v112 + 4) = v116;
        *(v112 + 12) = 2080;
        v117 = OUTLINED_FUNCTION_32_1();
        sub_25E6011D4(v117, v106, v118);
        OUTLINED_FUNCTION_29_0();
        *(v112 + 14) = v116;
        *(v112 + 22) = 2048;
        sub_25E621004();
        v119 = TupleTypeMetadata2;
        v120 = sub_25E635A60();

        *(v112 + 24) = v120;

        v121 = v142;
        _os_log_impl(&dword_25E5F0000, v142, v145, "Deferring item %s from cluster %s into the waiting room with %ld other deferred items", v112, 0x20u);
        swift_arrayDestroy();
        OUTLINED_FUNCTION_2_5();
        MEMORY[0x25F8BA800]();
        v122 = v143;
        OUTLINED_FUNCTION_2_5();
        MEMORY[0x25F8BA800]();

        v123 = v132;
      }

      else
      {

        v125 = v43;
        v122 = v148->isa;
        (v148->isa)(v125, v7);
        v123 = v132;
        v119 = TupleTypeMetadata2;
      }

      v126 = *(v119 + 48);
      OUTLINED_FUNCTION_50_1();
      v105();
      *(v123 + v126) = i;
      OUTLINED_FUNCTION_20_1();
      swift_beginAccess();
      sub_25E635AC0();
      swift_unknownObjectRetain();
      sub_25E635A80();
      swift_endAccess();
      v127 = OUTLINED_FUNCTION_62_0();
      v122(v127);
    }

    else
    {
      if (qword_27FCF8C18 != -1)
      {
        OUTLINED_FUNCTION_0_9();
        swift_once();
      }

      v75 = sub_25E635710();
      __swift_project_value_buffer(v75, qword_27FCFD930);
      v76 = v149->isa;
      v77 = v129;
      (v149->isa)(v129, v42, v7);
      v78 = v146;

      v79 = sub_25E6356F0();
      v80 = sub_25E635CF0();

      if (os_log_type_enabled(v79, v80))
      {
        OUTLINED_FUNCTION_19_1();
        v81 = swift_slowAlloc();
        OUTLINED_FUNCTION_22_1();
        v147 = swift_slowAlloc();
        *v81 = OUTLINED_FUNCTION_36_1(v147).n128_u32[0];
        OUTLINED_FUNCTION_50_1();
        v76();
        OUTLINED_FUNCTION_62_0();
        v82 = sub_25E635820();
        v84 = v83;
        v85 = v148->isa;
        (v148->isa)(v77, v7);
        v86 = sub_25E6011D4(v82, v84, v151);
        v42 = v138;

        *(v81 + 4) = v86;
        *(v81 + 12) = 2080;
        v87 = OUTLINED_FUNCTION_32_1();
        v89 = sub_25E6011D4(v87, v78, v88);

        *(v81 + 14) = v89;
        _os_log_impl(&dword_25E5F0000, v79, v80, "Electing item %s from cluster %s", v81, 0x16u);
        swift_arrayDestroy();
        OUTLINED_FUNCTION_2_5();
        MEMORY[0x25F8BA800]();
        OUTLINED_FUNCTION_2_5();
        MEMORY[0x25F8BA800]();
      }

      else
      {

        v85 = v148->isa;
        (v148->isa)(v77, v7);
      }

      sub_25E624B70(v42, i, v90, v91, v92, v93, v94, v95, v128, v129, v130, TupleTypeMetadata2, v132, v133, v134, *(&v134 + 1), v135, v136, v137, v138);
      v124 = OUTLINED_FUNCTION_15_4();
      v85(v124);
    }

LABEL_28:
    ProgressReporter.complete()();
  }
}

void sub_25E623614(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_63_0();
  a19 = v21;
  a20 = v22;
  v233 = v23;
  v242 = v24;
  v26 = v25;
  v244 = v27;
  v28 = *v20;
  v29 = *(*v20 + 80);
  v243 = *(v29 - 8);
  v30 = *(v243 + 64);
  v31 = MEMORY[0x28223BE20](v25);
  v239 = &v220 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_40_1();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_40_1();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_40_1();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_40_1();
  v237 = v36;
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_40_1();
  v230 = v38;
  v40 = *(v39 + 88);
  OUTLINED_FUNCTION_24_1();
  sub_25E635D30();
  OUTLINED_FUNCTION_3_8();
  v234 = v42;
  v235 = v41;
  v44 = *(v43 + 64);
  OUTLINED_FUNCTION_10_3();
  MEMORY[0x28223BE20](v45);
  OUTLINED_FUNCTION_57_0(v46, v220);
  *&v245 = sub_25E620F70();
  OUTLINED_FUNCTION_13_3();
  sub_25E635AC0();
  OUTLINED_FUNCTION_1_3();
  swift_getWitnessTable();
  v236 = *(v28 + 96);
  v47 = *(&v236 + 1);
  v241 = v236;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v48 = *(AssociatedConformanceWitness + 8);
  v49 = *(v48 + 8);
  sub_25E635980();
  OUTLINED_FUNCTION_55_1();

  if (&v245)
  {
    if (qword_27FCF8C18 != -1)
    {
      OUTLINED_FUNCTION_0_9();
      swift_once();
    }

    v50 = sub_25E635710();
    OUTLINED_FUNCTION_38_1(v50, qword_27FCFD930);
    v51 = v243;
    v52 = *(v243 + 16);
    v53 = v239;
    v52(v239, v26, v29);
    v54 = sub_25E6356F0();
    sub_25E635CD0();
    v55 = OUTLINED_FUNCTION_7_5();
    if (os_log_type_enabled(v55, v56))
    {
      OUTLINED_FUNCTION_7_1();
      v57 = swift_slowAlloc();
      OUTLINED_FUNCTION_6_1();
      v58 = swift_slowAlloc();
      *&v245 = v58;
      *v57 = 136315138;
      v52(v237, v53, v29);
      OUTLINED_FUNCTION_61_0();
      v59 = sub_25E635820();
      v61 = v60;
      (*(v51 + 8))(v53, v29);
      v62 = sub_25E6011D4(v59, v61, &v245);

      *(v57 + 4) = v62;
      _os_log_impl(&dword_25E5F0000, v54, &v245, "Item %s has already been elected", v57, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v58);
      OUTLINED_FUNCTION_2_5();
      MEMORY[0x25F8BA800]();
      OUTLINED_FUNCTION_2_5();
      MEMORY[0x25F8BA800]();
    }

    else
    {

      (*(v51 + 8))(v53, v29);
    }

    goto LABEL_31;
  }

  sub_25E620E6C();
  v227 = v20;
  v63 = v20[6];
  OUTLINED_FUNCTION_24_1();
  sub_25E635AC0();
  v228 = v29;
  sub_25E635750();
  v64 = v245;
  v239 = v26;
  v224 = v48;
  if (!v245)
  {
    OUTLINED_FUNCTION_24_1();
    v64 = sub_25E635A30();
  }

  v65 = v241;
  *&v245 = v64;
  v66 = v47;
  v67 = *(swift_getAssociatedConformanceWitness() + 24);
  OUTLINED_FUNCTION_1_3();
  swift_getWitnessTable();
  v68 = sub_25E635B70();

  v69 = (*(v47 + 64))(v65, v47);
  v70 = v228;
  if (v69)
  {
    v225 = v68;
    *&v245 = v68;
    MEMORY[0x28223BE20](v69);
    *(&v220 - 6) = v70;
    *(&v220 - 5) = v40;
    *(&v220 - 2) = v236;
    v71 = v233;
    *(&v220 - 2) = v233;
    OUTLINED_FUNCTION_24_1();
    sub_25E635BE0();
    swift_getWitnessTable();
    v226 = v40;
    v72 = v240;
    sub_25E635920();
    v73 = v226;
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v72, 1, v226);
    if (EnumTagSinglePayload == 1)
    {
      *&v245 = v71;
      MEMORY[0x28223BE20](EnumTagSinglePayload);
      OUTLINED_FUNCTION_34_1();
      *&v75 = v70;
      *(&v75 + 1) = v73;
      v76 = v236;
      *(v77 - 32) = v75;
      *(v77 - 16) = v76;
      v78 = sub_25E635AC0();
      OUTLINED_FUNCTION_1_3();
      swift_getWitnessTable();
      if (sub_25E635970())
      {

        if (qword_27FCF8C18 != -1)
        {
          OUTLINED_FUNCTION_0_9();
          swift_once();
        }

        v79 = sub_25E635710();
        OUTLINED_FUNCTION_38_1(v79, qword_27FCFD930);
        v80 = v243;
        v81 = *(v243 + 16);
        v82 = OUTLINED_FUNCTION_12_3(&a15);
        v81(v82);
        swift_unknownObjectRetain_n();
        v83 = sub_25E6356F0();
        v84 = sub_25E635CF0();
        if (os_log_type_enabled(v83, v84))
        {
          v85 = swift_slowAlloc();
          LODWORD(AssociatedConformanceWitness) = v84;
          v86 = v85;
          OUTLINED_FUNCTION_22_1();
          v239 = swift_slowAlloc();
          *&v248 = v239;
          *v86 = 136315906;
          *&v236 = v83;
          (v81)(v237, &v220 - 8, v70);
          sub_25E635820();
          v88 = v87;
          v89 = *(v80 + 8);
          v90 = OUTLINED_FUNCTION_45_1();
          v91(v90);
          v92 = OUTLINED_FUNCTION_17_4();
          v94 = sub_25E6011D4(v92, v88, v93);

          *(v86 + 4) = v94;
          *(v86 + 12) = 2080;
          v95 = *(v66 + 40);
          v96 = OUTLINED_FUNCTION_21_1();
          v95(v96);
          v97 = v245;

          v98 = OUTLINED_FUNCTION_17_4();
          sub_25E6011D4(v98, *(&v97 + 1), v99);
          OUTLINED_FUNCTION_18_3();

          *(v86 + 14) = v97;
          *(v86 + 22) = 2048;
          v100 = *(v66 + 48);
          v101 = OUTLINED_FUNCTION_21_1();
          v102(v101);
          v103 = OUTLINED_FUNCTION_23_1();
          swift_unknownObjectRelease();

          *(v86 + 24) = v103;
          swift_unknownObjectRelease();
          *(v86 + 32) = 2048;
          v104 = OUTLINED_FUNCTION_21_1();
          v95(v104);
          v105 = v247;
          swift_unknownObjectRelease();

          *(v86 + 34) = v105;
          swift_unknownObjectRelease();
          v106 = v236;
          OUTLINED_FUNCTION_42_1();
          _os_log_impl(v107, v108, v109, v110, v111, 0x2Au);
          swift_arrayDestroy();
          OUTLINED_FUNCTION_2_5();
          MEMORY[0x25F8BA800]();
          OUTLINED_FUNCTION_2_5();
          MEMORY[0x25F8BA800]();
        }

        else
        {

          swift_unknownObjectRelease_n();
          v183 = *(v80 + 8);
          v184 = OUTLINED_FUNCTION_45_1();
          v185(v184);
        }

        (*(v234 + 8))(v240, v235);
        goto LABEL_34;
      }

      *&v236 = v67;
      if (qword_27FCF8C18 != -1)
      {
        OUTLINED_FUNCTION_0_9();
        swift_once();
      }

      v149 = sub_25E635710();
      OUTLINED_FUNCTION_38_1(v149, qword_27FCFD930);
      v150 = v243;
      v151 = *(v243 + 16);
      swift_unknownObjectRetain();
      v152 = OUTLINED_FUNCTION_12_3(&a16);
      (v151)(v152);
      swift_unknownObjectRetain_n();
      v153 = sub_25E6356F0();
      sub_25E635CF0();
      OUTLINED_FUNCTION_53_1();
      if (os_log_type_enabled(v153, v154))
      {
        v155 = swift_slowAlloc();
        OUTLINED_FUNCTION_22_1();
        v233 = swift_slowAlloc();
        *&v248 = v233;
        *v155 = 136315906;
        v222 = *(v66 + 40);
        v232 = v153;
        v156 = OUTLINED_FUNCTION_15_4();
        v157(v156);
        v223 = v151;
        v158 = *(&v245 + 1);
        LODWORD(v230) = v78;

        v159 = OUTLINED_FUNCTION_17_4();
        v161 = sub_25E6011D4(v159, v158, v160);

        *(v155 + 4) = v161;
        *(v155 + 12) = 2048;
        v162 = *(v66 + 48);
        v163 = OUTLINED_FUNCTION_15_4();
        v164(v163);
        v165 = OUTLINED_FUNCTION_23_1();
        swift_unknownObjectRelease();

        *(v155 + 14) = v165;
        swift_unknownObjectRelease();
        *(v155 + 22) = 2048;
        v166 = OUTLINED_FUNCTION_15_4();
        v222(v166);
        v167 = *(&v245 + 1);
        v168 = v246;
        v169 = v247;
        swift_unknownObjectRelease();

        *(v155 + 24) = v169;
        swift_unknownObjectRelease();
        *(v155 + 32) = 2080;
        OUTLINED_FUNCTION_54_1();
        v223();
        OUTLINED_FUNCTION_45_1();
        sub_25E635820();
        v170 = OUTLINED_FUNCTION_25_1();
        v171(v170);
        v172 = OUTLINED_FUNCTION_17_4();
        sub_25E6011D4(v172, v168, v173);
        OUTLINED_FUNCTION_65_0();
        *(v155 + 34) = v167;
        OUTLINED_FUNCTION_58_0(&a15);
        v174 = v232;
        OUTLINED_FUNCTION_42_1();
        _os_log_impl(v175, v176, v177, v178, v179, 0x2Au);
        OUTLINED_FUNCTION_51_1();
        swift_arrayDestroy();
        OUTLINED_FUNCTION_2_5();
        MEMORY[0x25F8BA800]();
        OUTLINED_FUNCTION_2_5();
        MEMORY[0x25F8BA800]();
      }

      else
      {

        swift_unknownObjectRelease_n();
        v186 = *(v150 + 8);
        v187 = OUTLINED_FUNCTION_45_1();
        v188(v187);
      }
    }

    else
    {
      *&v236 = v67;
      if (qword_27FCF8C18 != -1)
      {
        OUTLINED_FUNCTION_0_9();
        swift_once();
      }

      v112 = sub_25E635710();
      OUTLINED_FUNCTION_38_1(v112, qword_27FCFD930);
      v113 = v243;
      v115 = (v243 + 16);
      v114 = *(v243 + 16);
      swift_unknownObjectRetain();
      v116 = OUTLINED_FUNCTION_12_3(&a17);
      v233 = v114;
      (v114)(v116);
      swift_unknownObjectRetain_n();
      swift_bridgeObjectRetain_n();
      v117 = sub_25E6356F0();
      sub_25E635CF0();
      OUTLINED_FUNCTION_53_1();
      if (os_log_type_enabled(v117, v118))
      {
        v119 = swift_slowAlloc();
        v231 = swift_slowAlloc();
        *&v248 = v231;
        *v119 = 136316162;
        v222 = v115;
        v221 = *(v66 + 40);
        v230 = v117;
        v120 = OUTLINED_FUNCTION_62();
        v121(v120);
        LODWORD(v223) = &v220;
        v122 = *(&v245 + 1);

        v123 = OUTLINED_FUNCTION_17_4();
        v125 = sub_25E6011D4(v123, v122, v124);

        *(v119 + 4) = v125;
        *(v119 + 12) = 2048;
        v126 = *(v66 + 48);
        v127 = OUTLINED_FUNCTION_62();
        v128(v127);
        v129 = OUTLINED_FUNCTION_23_1();
        swift_unknownObjectRelease();

        *(v119 + 14) = v129;
        swift_unknownObjectRelease();
        *(v119 + 22) = 2048;
        v130 = OUTLINED_FUNCTION_62();
        v221(v130);
        v131 = v246;
        v132 = v247;
        swift_unknownObjectRelease();

        *(v119 + 24) = v132;
        swift_unknownObjectRelease();
        *(v119 + 32) = 2080;
        v133 = v237;
        OUTLINED_FUNCTION_54_1();
        v233();
        sub_25E635820();
        v134 = OUTLINED_FUNCTION_25_1();
        v135(v134);
        v136 = OUTLINED_FUNCTION_17_4();
        sub_25E6011D4(v136, v131, v137);
        OUTLINED_FUNCTION_65_0();
        *(v119 + 34) = v133;
        *(v119 + 42) = 2080;
        v138 = sub_25E635B50();
        v140 = v139;
        swift_bridgeObjectRelease_n();
        v141 = OUTLINED_FUNCTION_17_4();
        sub_25E6011D4(v141, v140, v142);
        OUTLINED_FUNCTION_65_0();
        *(v119 + 44) = v138;
        OUTLINED_FUNCTION_58_0(&v249);
        v143 = v230;
        OUTLINED_FUNCTION_42_1();
        _os_log_impl(v144, v145, v146, v147, v148, 0x34u);
        swift_arrayDestroy();
        OUTLINED_FUNCTION_2_5();
        MEMORY[0x25F8BA800]();
        OUTLINED_FUNCTION_2_5();
        MEMORY[0x25F8BA800]();
      }

      else
      {

        swift_bridgeObjectRelease_n();
        swift_unknownObjectRelease_n();
        v180 = *(v113 + 8);
        v181 = OUTLINED_FUNCTION_45_1();
        v182(v181);
      }
    }

    (*(v234 + 8))(v240, v235);
  }

  v189 = v227;
  sub_25E620F00(&v245);
  v248 = v245;
  v190 = type metadata accessor for SummaryItemRequirementEvaluationCollection();
  v191 = SummaryItemRequirementEvaluationCollection.evaluationResults(of:)(v239, v190);
  v192 = v248;

  if ((sub_25E5F7120(2u, v191) & 1) == 0)
  {
    sub_25E5F7120(1u, v191);
    OUTLINED_FUNCTION_55_1();

    if ((v192 & 1) == 0)
    {
      sub_25E620E6C();
      sub_25E635BB0();
      OUTLINED_FUNCTION_55_1();

      if (v189)
      {
      }

      else
      {
        v194 = sub_25E635B90();

        if (v194 <= 0)
        {
          v195 = v239;
          if (qword_27FCF8C18 != -1)
          {
            OUTLINED_FUNCTION_0_9();
            swift_once();
          }

          v196 = sub_25E635710();
          OUTLINED_FUNCTION_38_1(v196, qword_27FCFD930);
          v197 = v243;
          v198 = *(v243 + 16);
          v199 = v229;
          v198(v229, v195, v70);
          v200 = sub_25E6356F0();
          sub_25E635CF0();
          v201 = OUTLINED_FUNCTION_7_5();
          if (os_log_type_enabled(v201, v202))
          {
            OUTLINED_FUNCTION_7_1();
            v203 = swift_slowAlloc();
            OUTLINED_FUNCTION_6_1();
            v204 = swift_slowAlloc();
            *&v245 = v204;
            *v203 = 136315138;
            v198(v237, v199, v70);
            v205 = sub_25E635820();
            v207 = v206;
            v208 = *(v197 + 8);
            v209 = OUTLINED_FUNCTION_61_0();
            v210(v209);
            v211 = sub_25E6011D4(v205, v207, &v245);

            *(v203 + 4) = v211;
            OUTLINED_FUNCTION_42_1();
            _os_log_impl(v212, v213, v214, v215, v216, 0xCu);
            __swift_destroy_boxed_opaque_existential_0Tm(v204);
            OUTLINED_FUNCTION_2_5();
            MEMORY[0x25F8BA800]();
            OUTLINED_FUNCTION_2_5();
            MEMORY[0x25F8BA800]();
          }

          else
          {

            v217 = *(v197 + 8);
            v218 = OUTLINED_FUNCTION_61_0();
            v219(v218);
          }

          goto LABEL_34;
        }
      }

      v193 = 0;
      goto LABEL_39;
    }

LABEL_34:
    v193 = 1;
    goto LABEL_39;
  }

LABEL_31:
  v193 = 2;
LABEL_39:
  *v244 = v193;
  OUTLINED_FUNCTION_64_0();
}