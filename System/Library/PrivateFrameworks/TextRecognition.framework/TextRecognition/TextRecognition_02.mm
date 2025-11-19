uint64_t sub_1B40FFEA0()
{
  v2 = *(v0 + 112);
  v1 = *(v0 + 120);
  v3 = *(v0 + 104);
  v4 = sub_1B410F8A0();
  (*(v2 + 16))(v1, v4, v3);
  sub_1B429F9A8();
  v5 = sub_1B429F9C8();
  v6 = sub_1B42A01C8();
  result = sub_1B42A0278();
  if (result)
  {
    v8 = *(v0 + 32);
    if ((*(v0 + 160) & 1) == 0)
    {
      if (v8)
      {
LABEL_9:
        v9 = swift_slowAlloc();
        *v9 = 0;
        v10 = sub_1B429F998();
        _os_signpost_emit_with_name_impl(&dword_1B40D2000, v5, v6, v10, v8, "", v9, 2u);
        MEMORY[0x1B8C74FA0](v9, -1, -1);
        goto LABEL_10;
      }

      __break(1u);
    }

    if (v8 >> 32)
    {
      __break(1u);
    }

    else
    {
      if ((v8 & 0xFFFFF800) == 0xD800)
      {
LABEL_15:
        __break(1u);
        return result;
      }

      if (v8 >> 16 <= 0x10)
      {
        v8 = (v0 + 16);
        goto LABEL_9;
      }
    }

    __break(1u);
    goto LABEL_15;
  }

LABEL_10:

  v12 = *(v0 + 112);
  v11 = *(v0 + 120);
  v14 = *(v0 + 96);
  v13 = *(v0 + 104);
  v15 = *(v0 + 80);
  v17 = *(v0 + 64);
  v16 = *(v0 + 72);
  v18 = *(v0 + 48);
  (*(v15 + 16))(*(v0 + 88), v14, v16);
  sub_1B429FA28();
  swift_allocObject();
  *(v0 + 128) = sub_1B429FA18();
  (*(v15 + 8))(v14, v16);
  (*(v12 + 8))(v11, v13);
  *(v0 + 136) = [v17 _startMeasurement];
  v21 = (v18 + *v18);
  v19 = swift_task_alloc();
  *(v0 + 144) = v19;
  *v19 = v0;
  v19[1] = sub_1B410014C;
  v20 = *(v0 + 24);

  return v21(v20);
}

uint64_t sub_1B410014C()
{
  *(*v1 + 152) = v0;

  if (v0)
  {
    v2 = sub_1B4100330;
  }

  else
  {
    v2 = sub_1B4100260;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1B4100260()
{
  v1 = *(v0 + 136);
  v2 = *(v0 + 32);
  v3 = *(v0 + 160);
  [*(v0 + 64) _endMeasurement_];

  sub_1B4100400(v2, v3);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_1B4100330()
{
  v1 = *(v0 + 136);
  v2 = *(v0 + 32);
  v3 = *(v0 + 160);
  [*(v0 + 64) _endMeasurement_];

  sub_1B4100400(v2, v3);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_1B4100400(const char *a1, int a2)
{
  v29 = a2;
  v30 = a1;
  v2 = sub_1B429F9F8();
  v27 = *(v2 - 8);
  v28 = v2;
  MEMORY[0x1EEE9AC00](v2, v3);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1B429F9B8();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1B429F9E8();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11, v13);
  v15 = &v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1B410F8A0();
  (*(v12 + 16))(v15, v16, v11);
  v17 = sub_1B429F9C8();
  sub_1B429FA08();
  v26 = sub_1B42A01B8();
  result = sub_1B42A0278();
  if ((result & 1) == 0)
  {
LABEL_13:

    (*(v7 + 8))(v10, v6);
    return (*(v12 + 8))(v15, v11);
  }

  v25 = v6;
  if ((v29 & 1) == 0)
  {
    if (v30)
    {
LABEL_9:

      sub_1B429FA38();

      v20 = v27;
      v19 = v28;
      if ((*(v27 + 88))(v5, v28) == *MEMORY[0x1E69E93E8])
      {
        v21 = "[Error] Interval already ended";
      }

      else
      {
        (*(v20 + 8))(v5, v19);
        v21 = "";
      }

      v22 = swift_slowAlloc();
      *v22 = 0;
      v23 = sub_1B429F998();
      _os_signpost_emit_with_name_impl(&dword_1B40D2000, v17, v26, v23, v30, v21, v22, 2u);
      MEMORY[0x1B8C74FA0](v22, -1, -1);
      v6 = v25;
      goto LABEL_13;
    }

    __break(1u);
  }

  if (v30 >> 32)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if ((v30 & 0xFFFFF800) != 0xD800)
  {
    if (v30 >> 16 <= 0x10)
    {
      v30 = &v31;
      goto LABEL_9;
    }

    goto LABEL_15;
  }

LABEL_16:
  __break(1u);
  return result;
}

Swift::Double __swiftcall getTunableDouble(_:_:)(Swift::Double result, Swift::String a2)
{
  if (CRParameterTuningSupportEnabled == 1)
  {
    v2 = result;
    v3 = [objc_opt_self() sharedManager];
    v4 = sub_1B429FB88();
    v5 = [v3 parameterForKeyPath_];

    result = v2;
    if (v5)
    {
      [v5 doubleValue];
      v7 = v6;

      return v7;
    }
  }

  return result;
}

Swift::Int __swiftcall getTunableInt(_:_:)(Swift::Int result, Swift::String a2)
{
  if (CRParameterTuningSupportEnabled == 1)
  {
    v2 = result;
    v3 = [objc_opt_self() sharedManager];
    v4 = sub_1B429FB88();
    v5 = [v3 parameterForKeyPath_];

    result = v2;
    if (v5)
    {
      v6 = [v5 integerValue];

      return v6;
    }
  }

  return result;
}

uint64_t getTunableOverridenDictionary(_:_:)()
{
  if (CRParameterTuningSupportEnabled == 1)
  {
    v1 = [objc_opt_self() sharedManager];
    v2 = sub_1B429FAE8();
    v3 = sub_1B429FB88();
    v4 = [v1 overrideDictionary:v2 withParametersFromDictionaryAtKeyPath:v3];

    v5 = sub_1B429FAF8();
    return v5;
  }

  else
  {
  }
}

id sub_1B4100A28()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB884E90);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1B42ACE00;
  *(v0 + 32) = [objc_allocWithZone(CRFormAddTextBasedDetectionFieldsStep) init];
  *(v0 + 40) = [objc_allocWithZone(CRFormFieldTextOverlapCleanupStep) init];
  *(v0 + 48) = [objc_allocWithZone(CRFormFieldDedupingStep) init];
  *(v0 + 56) = [objc_allocWithZone(CRFormTextBasedFieldDedupingStep) init];
  *(v0 + 64) = [objc_allocWithZone(type metadata accessor for CRFormAdjustFieldHeightStep()) init];
  *(v0 + 72) = [objc_allocWithZone(CRFormUnderlinedFieldTextOverlapCleanupStep) init];
  *(v0 + 80) = [objc_allocWithZone(CRFormFieldLineHeightPredictionStep) init];
  *(v0 + 88) = [objc_allocWithZone(CRFormFilterSurfacedFieldsStep) initWithAssignGlobalOrder_];
  *(v0 + 96) = [objc_allocWithZone(CRFormFieldLabelAssociationStep) init];
  *(v0 + 104) = [objc_allocWithZone(CRFormFieldAutoFillGuardingStep) init];
  *(v0 + 112) = [objc_allocWithZone(CRFormFilterSurfacedFieldsStep) initWithAssignGlobalOrder_];
  *(v0 + 120) = [objc_allocWithZone(CRFormFieldLoggingStep) init];
  v1 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB884EF8);
  v2 = sub_1B429FDE8();

  v3 = [v1 initWithSequence_];

  return v3;
}

uint64_t sub_1B4100CD0(uint64_t a1)
{
  sub_1B4100F14(a1);
}

id sub_1B4100DD4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CRFormAdjustFieldHeightStep();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_1B4100E08(uint64_t a1)
{
  v2 = sub_1B42A0398();

  return sub_1B4100E4C(a1, v2);
}

unint64_t sub_1B4100E4C(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    do
    {
      sub_1B4101244(*(v2 + 48) + 40 * v4, v9);
      v7 = MEMORY[0x1B8C72C50](v9, a1);
      sub_1B41012A0(v9);
      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v6;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

uint64_t sub_1B4100F14(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB884F70);
  v2 = sub_1B41014EC();
  v3 = v2;
  if (v2 >> 62)
  {
    result = sub_1B42A0518();
    if (result)
    {
      goto LABEL_3;
    }

LABEL_18:

    return a1;
  }

  result = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!result)
  {
    goto LABEL_18;
  }

LABEL_3:
  v5 = result - 1;
  if (result >= 1)
  {
    v6 = 0;
    v34 = OBJC_IVAR____TtC15TextRecognition27CRFormAdjustFieldHeightStep_effectiveUnderlinedSignatureFieldHeightScaling;
    v7 = &selRef_bytesPerPixelForColorSpace_;
    while (1)
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v8 = MEMORY[0x1B8C72CD0](v6, v3);
      }

      else
      {
        v8 = *(v3 + 8 * v6 + 32);
        swift_unknownObjectRetain();
      }

      objc_opt_self();
      v9 = swift_dynamicCastObjCClass();
      if (!v9)
      {
        goto LABEL_6;
      }

      v10 = v9;
      swift_unknownObjectRetain_n();
      if (([v10 v7[357]] & 1) != 0 || !objc_msgSend(v10, sel_hasBoundedWidth))
      {
        break;
      }

      v11 = 0.15;
      if ([v8 respondsToSelector_])
      {
        v11 = 0.15;
        if ([v8 textContentType] == 50)
        {
          v11 = *(v35 + v34) + -1.0;
        }
      }

      v12 = [v10 boundingQuad];
      [v12 topLeft];
      v37 = v13;
      [v12 topLeft];
      v15 = v14;
      [v12 size];
      v36 = v15 - v11 * v16;
      [v12 topRight];
      v18 = v17;
      [v12 topRight];
      v20 = v19;
      [v12 size];
      v22 = v20 - v11 * v21;
      [v12 bottomRight];
      v24 = v23;
      v26 = v25;
      [v12 bottomLeft];
      v28 = v27;
      v30 = v29;
      [v12 normalizationSize];
      v33 = [objc_allocWithZone(CRNormalizedQuad) initWithNormalizedTopLeft:v37 topRight:v36 bottomRight:v18 bottomLeft:v22 size:{v24, v26, v28, v30, v31, v32}];
      [v10 setBoundingQuad_];

      swift_unknownObjectRelease_n();
      v7 = &selRef_bytesPerPixelForColorSpace_;
      if (v5 == v6)
      {
        goto LABEL_18;
      }

LABEL_7:
      ++v6;
    }

    swift_unknownObjectRelease_n();
LABEL_6:
    swift_unknownObjectRelease();
    if (v5 == v6)
    {
      goto LABEL_18;
    }

    goto LABEL_7;
  }

  __break(1u);
  return result;
}

uint64_t sub_1B4101368(unint64_t a1)
{
  v9 = MEMORY[0x1E69E7CC0];
  if (a1 >> 62)
  {
    goto LABEL_15;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1B42A0518())
  {
    v3 = 0;
    while ((a1 & 0xC000000000000001) != 0)
    {
      MEMORY[0x1B8C72CD0](v3, a1);
      v5 = v3 + 1;
      if (__OFADD__(v3, 1))
      {
        goto LABEL_13;
      }

LABEL_7:
      swift_dynamicCastObjCProtocolUnconditional();
      MEMORY[0x1B8C72680]();
      if (*((v9 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1B429FE08();
      }

      sub_1B429FE38();
      ++v3;
      if (v5 == i)
      {
        v6 = v9;
        goto LABEL_17;
      }
    }

    if (v3 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_14;
    }

    v4 = *(a1 + 8 * v3 + 32);
    v5 = v3 + 1;
    if (!__OFADD__(v3, 1))
    {
      goto LABEL_7;
    }

LABEL_13:
    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    ;
  }

  v6 = MEMORY[0x1E69E7CC0];
LABEL_17:
  v7 = sub_1B4101694(v6);

  return v7;
}

unint64_t sub_1B41014EC()
{
  sub_1B429FE58();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB884F70);
  swift_getWitnessTable();
  v0 = sub_1B429FD88();
  v1 = sub_1B4101694(v0);

  return v1;
}

uint64_t sub_1B41015A8@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = MEMORY[0x1EEE9AC00](a1, a1);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB884F70);
  result = swift_dynamicCast();
  if ((result & 1) == 0)
  {
    *a2 = 0;
  }

  return result;
}

unint64_t sub_1B4101694(unint64_t isUniquelyReferenced_nonNull_bridgeObject)
{
  if (isUniquelyReferenced_nonNull_bridgeObject >> 62)
  {
    goto LABEL_53;
  }

  v1 = *((isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (v1)
  {
    v2 = 0;
    v34 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
    v35 = isUniquelyReferenced_nonNull_bridgeObject & 0xC000000000000001;
    v30 = isUniquelyReferenced_nonNull_bridgeObject;
    v33 = isUniquelyReferenced_nonNull_bridgeObject + 32;
    v3 = MEMORY[0x1E69E7CC0];
    v31 = v1;
    while (1)
    {
      if (v35)
      {
        isUniquelyReferenced_nonNull_bridgeObject = MEMORY[0x1B8C72CD0](v2, v30);
        v4 = isUniquelyReferenced_nonNull_bridgeObject;
        v5 = __OFADD__(v2++, 1);
        if (v5)
        {
          goto LABEL_47;
        }
      }

      else
      {
        if (v2 >= *(v34 + 16))
        {
          goto LABEL_48;
        }

        v4 = *(v33 + 8 * v2);
        isUniquelyReferenced_nonNull_bridgeObject = swift_unknownObjectRetain();
        v5 = __OFADD__(v2++, 1);
        if (v5)
        {
          goto LABEL_47;
        }
      }

      objc_opt_self();
      v6 = swift_dynamicCastObjCClass();
      if (v6)
      {
        v7 = v6;
        if (![swift_unknownObjectRetain() fieldType])
        {
          v25 = [v7 formFieldRegions];
          if (v25)
          {
            v26 = v25;
            sub_1B4101FC4();
            v27 = sub_1B429FDF8();

            v8 = sub_1B4101368(v27);
            swift_unknownObjectRelease_n();
          }

          else
          {
            swift_unknownObjectRelease_n();
            v8 = MEMORY[0x1E69E7CC0];
          }

          goto LABEL_13;
        }

        swift_unknownObjectRelease();
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB884E90);
      v8 = swift_allocObject();
      *(v8 + 16) = xmmword_1B42AC090;
      *(v8 + 32) = v4;
LABEL_13:
      v9 = v8 >> 62;
      v10 = v8 >> 62 ? sub_1B42A0518() : *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v11 = v3 >> 62;
      if (v3 >> 62)
      {
        break;
      }

      isUniquelyReferenced_nonNull_bridgeObject = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v12 = isUniquelyReferenced_nonNull_bridgeObject + v10;
      if (__OFADD__(isUniquelyReferenced_nonNull_bridgeObject, v10))
      {
        goto LABEL_46;
      }

LABEL_17:
      isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
      if (isUniquelyReferenced_nonNull_bridgeObject)
      {
        if (!v11)
        {
          v13 = v3 & 0xFFFFFFFFFFFFFF8;
          if (v12 <= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            goto LABEL_24;
          }

          goto LABEL_23;
        }

LABEL_22:
        sub_1B42A0518();
        goto LABEL_23;
      }

      if (v11)
      {
        goto LABEL_22;
      }

LABEL_23:
      isUniquelyReferenced_nonNull_bridgeObject = sub_1B42A0438();
      v3 = isUniquelyReferenced_nonNull_bridgeObject;
      v13 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
LABEL_24:
      v14 = *(v13 + 16);
      v15 = *(v13 + 24);
      if (v9)
      {
        v17 = v13;
        isUniquelyReferenced_nonNull_bridgeObject = sub_1B42A0518();
        v13 = v17;
        v16 = isUniquelyReferenced_nonNull_bridgeObject;
        if (isUniquelyReferenced_nonNull_bridgeObject)
        {
LABEL_28:
          if (((v15 >> 1) - v14) < v10)
          {
            goto LABEL_50;
          }

          v37 = v2;
          v18 = v13 + 8 * v14 + 32;
          v32 = v13;
          if (v9)
          {
            if (v16 < 1)
            {
              goto LABEL_52;
            }

            sub_1B4101F60();
            for (i = 0; i != v16; ++i)
            {
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB884F80);
              v20 = sub_1B4101ABC(v36, i, v8);
              v22 = *v21;
              swift_unknownObjectRetain();
              (v20)(v36, 0);
              *(v18 + 8 * i) = v22;
            }
          }

          else
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB884F70);
            swift_arrayInitWithCopy();
          }

          v1 = v31;
          v2 = v37;
          if (v10 >= 1)
          {
            v23 = *(v32 + 16);
            v5 = __OFADD__(v23, v10);
            v24 = v23 + v10;
            if (v5)
            {
              goto LABEL_51;
            }

            *(v32 + 16) = v24;
          }

          goto LABEL_5;
        }
      }

      else
      {
        v16 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v16)
        {
          goto LABEL_28;
        }
      }

      if (v10 > 0)
      {
        goto LABEL_49;
      }

LABEL_5:
      if (v2 == v1)
      {
        return v3;
      }
    }

    isUniquelyReferenced_nonNull_bridgeObject = sub_1B42A0518();
    v12 = isUniquelyReferenced_nonNull_bridgeObject + v10;
    if (!__OFADD__(isUniquelyReferenced_nonNull_bridgeObject, v10))
    {
      goto LABEL_17;
    }

LABEL_46:
    __break(1u);
LABEL_47:
    __break(1u);
LABEL_48:
    __break(1u);
LABEL_49:
    __break(1u);
LABEL_50:
    __break(1u);
LABEL_51:
    __break(1u);
LABEL_52:
    __break(1u);
LABEL_53:
    v28 = isUniquelyReferenced_nonNull_bridgeObject;
    v1 = sub_1B42A0518();
    isUniquelyReferenced_nonNull_bridgeObject = v28;
  }

  return MEMORY[0x1E69E7CC0];
}

uint64_t (*sub_1B4101ABC(uint64_t (*result)(), unint64_t a2, uint64_t a3))()
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x1B8C72CD0](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = swift_unknownObjectRetain();
LABEL_5:
    *v3 = v4;
    return sub_1B4101B3C;
  }

  __break(1u);
  return result;
}

uint64_t sub_1B4101B44(void *a1)
{
  if ([a1 fieldType] == 1)
  {
    if (([a1 respondsToSelector_] & 1) != 0 && (v2 = objc_msgSend(objc_opt_self(), sel_shortStringFromContentType_, objc_msgSend(a1, sel_textContentType))) != 0)
    {
      v3 = v2;
      v39 = sub_1B429FB98();
      v5 = v4;
    }

    else
    {
      v39 = 0;
      v5 = 0xE000000000000000;
    }

    v6 = 0;
    if ([a1 respondsToSelector_])
    {
      [a1 suggestedLineHeight];
      v6 = v7;
    }

    if ([a1 respondsToSelector_])
    {
      v38 = [a1 maxCharacterCount];
    }

    else
    {
      v38 = 0;
    }
  }

  else
  {
    v38 = 0;
    v39 = 0;
    v5 = 0xE000000000000000;
    v6 = 0;
  }

  v8 = sub_1B429F4D8();
  objc_opt_self();
  v9 = swift_dynamicCastObjCClass();
  if (v9)
  {
    swift_unknownObjectRetain();
    v10 = [v9 indexInGlobalOrder];
    v11 = [v9 labelRegion];
    if (v11)
    {
      v12 = v11;
      v9 = [v11 text];

      if (v9)
      {
        sub_1B429FB98();

        v9 = sub_1B429FC68();
      }
    }

    else
    {
      v9 = 0;
    }

    v37 = v10;
    swift_unknownObjectRelease();
  }

  else
  {
    v37 = v8;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB884F98);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1B42ACE60;
  v14 = [a1 boundingQuad];
  [v14 topLeft];
  v16 = v15;

  v17 = MEMORY[0x1E69E7DE0];
  *(v13 + 56) = MEMORY[0x1E69E7DE0];
  v18 = sub_1B4102010();
  *(v13 + 64) = v18;
  *(v13 + 32) = v16;
  v19 = [a1 boundingQuad];
  [v19 topLeft];
  v21 = v20;

  *(v13 + 96) = v17;
  *(v13 + 104) = v18;
  *(v13 + 72) = v21;
  v22 = [a1 boundingQuad];
  [v22 size];
  v24 = v23;

  *(v13 + 136) = v17;
  *(v13 + 144) = v18;
  *(v13 + 112) = v24;
  v25 = [a1 boundingQuad];
  [v25 size];
  v27 = v26;

  *(v13 + 176) = v17;
  *(v13 + 184) = v18;
  *(v13 + 152) = v27;
  v28 = [a1 fieldType];
  v29 = MEMORY[0x1E69E6810];
  v30 = MEMORY[0x1E69E6870];
  *(v13 + 216) = MEMORY[0x1E69E6810];
  *(v13 + 224) = v30;
  *(v13 + 192) = v28;
  v31 = [a1 fieldSource];
  *(v13 + 256) = v29;
  *(v13 + 264) = v30;
  *(v13 + 232) = v31;
  *(v13 + 296) = MEMORY[0x1E69E6158];
  v32 = sub_1B4102064();
  *(v13 + 272) = v39;
  *(v13 + 280) = v5;
  v33 = MEMORY[0x1E69E6530];
  v34 = MEMORY[0x1E69E65A8];
  *(v13 + 336) = MEMORY[0x1E69E6530];
  *(v13 + 344) = v34;
  *(v13 + 304) = v32;
  *(v13 + 312) = v9;
  *(v13 + 376) = v33;
  *(v13 + 384) = v34;
  *(v13 + 352) = v37;
  *(v13 + 416) = v17;
  *(v13 + 424) = v18;
  *(v13 + 392) = v6;
  *(v13 + 456) = v33;
  *(v13 + 464) = v34;
  *(v13 + 432) = v38;

  v35 = sub_1B429FBB8();

  return v35;
}

unint64_t sub_1B4101F60()
{
  result = qword_1EB884F88;
  if (!qword_1EB884F88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB884F80);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB884F88);
  }

  return result;
}

unint64_t sub_1B4101FC4()
{
  result = qword_1EB884810;
  if (!qword_1EB884810)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EB884810);
  }

  return result;
}

unint64_t sub_1B4102010()
{
  result = qword_1EB884FA0;
  if (!qword_1EB884FA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB884FA0);
  }

  return result;
}

unint64_t sub_1B4102064()
{
  result = qword_1EB884FA8;
  if (!qword_1EB884FA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB884FA8);
  }

  return result;
}

uint64_t dispatch thunk of CREngine.resultDocument(for:roi:configuration:trackingSession:progressHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v19 = (*(a8 + 16) + **(a8 + 16));
  v17 = swift_task_alloc();
  *(v8 + 16) = v17;
  *v17 = v8;
  v17[1] = sub_1B410252C;

  return v19(a1, a2, a3, a4, a5, a6, a7, a8);
}

uint64_t dispatch thunk of CREngine.cancel()(uint64_t a1, uint64_t a2)
{
  v7 = (*(a2 + 40) + **(a2 + 40));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1B40E17D0;

  return v7(a1, a2);
}

uint64_t dispatch thunk of static CREngine.preheatModels(forOptions:revision:extendedTimeoutBlock:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v15 = (*(a6 + 64) + **(a6 + 64));
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  *v13 = v6;
  v13[1] = sub_1B40E17D0;

  return v15(a1, a2, a3, a4, a5, a6);
}

uint64_t sub_1B41026C4(const void *a1)
{
  _Block_copy(a1);

  return MEMORY[0x1EEE6DFA0](sub_1B41061E0, 0, 0);
}

uint64_t sub_1B4102728(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, double a8)
{
  *(v9 + 72) = a7;
  *(v9 + 80) = v8;
  *(v9 + 64) = a6;
  *(v9 + 56) = a8;
  *(v9 + 40) = a4;
  *(v9 + 48) = a5;
  *(v9 + 24) = a2;
  *(v9 + 32) = a3;
  *(v9 + 16) = a1;
  v10 = sub_1B429FA68();
  *(v9 + 88) = v10;
  *(v9 + 96) = *(v10 - 8);
  *(v9 + 104) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B41027FC, 0, 0);
}

uint64_t sub_1B41027FC()
{
  v1 = v0[4];
  if (v1 >> 62)
  {
    v2 = sub_1B42A0518();
  }

  else
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v2 <= v0[6])
  {
    v12 = v0[9];
    v11 = v0[10];
    v13 = v0[8];
    v14 = v0[7];
    v15 = v0[4];
    v16 = v0[5];
    v18 = v0[2];
    v17 = v0[3];
    v19 = swift_allocObject();
    v0[14] = v19;
    v19[2] = v16;
    v19[3] = v12;
    v19[4] = v13;
    v19[5] = v18;
    v19[6] = v17;
    v19[7] = v14;
    v19[8] = v11;
    v20 = v12;
    v21 = v13;
    v22 = v16;
    v23 = sub_1B41059A8(v15);
    v0[15] = v23;
    v24 = swift_allocObject();
    v24[2] = 0;
    v24[3] = 0;
    v24[4] = &unk_1B42ACF10;
    v24[5] = v19;
    v25 = swift_allocObject();
    v0[16] = v25;
    v25[2] = 0;
    v25[3] = 0;
    v25[4] = &unk_1B42ACF20;
    v25[5] = v24;
    sub_1B429FEC8();
    sub_1B4105D4C();
    v26 = swift_allocError();
    v0[17] = v26;

    sub_1B429FAD8();
    v27 = [v21 batchSize];
    v28 = swift_task_alloc();
    v0[18] = v28;
    v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB884FB0);
    v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB884FB8);
    *v28 = v0;
    v28[1] = sub_1B4102BE4;

    return _sSa15TextRecognitions8SendableRzlE35cappedConcurrencyOrderPreservingMap_9didCancel18maxConcurrentTasksSayqd__Gqd__xYaYbKYAc_s5Error_pSitYaKsABRd__lF(&unk_1B42ACF30, v25, v26, v27, v23, v29, v30);
  }

  else
  {
    v4 = v0[12];
    v3 = v0[13];
    v5 = v0[11];
    v6 = sub_1B41253CC();
    (*(v4 + 16))(v3, v6, v5);

    v7 = sub_1B429FA48();
    v8 = sub_1B42A0138();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 134218240;
      if (v1 >> 62)
      {
        v10 = sub_1B42A0518();
      }

      else
      {
        v10 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v32 = v0[6];
      *(v9 + 4) = v10;

      *(v9 + 12) = 2048;
      *(v9 + 14) = v32;
      _os_log_impl(&dword_1B40D2000, v7, v8, "Too many regions! %ld > %ld", v9, 0x16u);
      MEMORY[0x1B8C74FA0](v9, -1, -1);
    }

    else
    {
    }

    (*(v0[12] + 8))(v0[13], v0[11]);
    sub_1B40DF594();
    swift_allocError();
    *v33 = 5;
    *(v33 + 4) = 1;
    swift_willThrow();

    v34 = v0[1];

    return v34();
  }
}

uint64_t sub_1B4102BE4(uint64_t a1)
{
  v3 = *v2;
  v3[19] = a1;
  v3[20] = v1;

  if (v1)
  {
    v4 = sub_1B410301C;
  }

  else
  {
    v5 = v3[17];

    v4 = sub_1B4102D1C;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

id sub_1B4102D1C()
{
  v1 = 0;
  v2 = *(v0 + 152);
  v3 = MEMORY[0x1E69E7CC0];
  v21 = MEMORY[0x1E69E7CC0];
  v4 = *(v2 + 16);
  while (v4 != v1)
  {
    if (v1 >= *(v2 + 16))
    {
      __break(1u);
      goto LABEL_35;
    }

    v5 = *(v2 + 32 + 8 * v1++);
    if (v5)
    {
      v6 = v5;
      MEMORY[0x1B8C72680]();
      if (*((v21 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v21 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1B429FE08();
      }

      sub_1B429FE38();
      v3 = v21;
    }
  }

  if (!(v3 >> 62))
  {
    v7 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    goto LABEL_10;
  }

LABEL_35:
  v7 = sub_1B42A0518();
LABEL_10:
  if (v7 >= *(v0 + 48))
  {
    goto LABEL_31;
  }

  result = [*(v0 + 64) inputHeight];
  if (v9 <= -9.22337204e18)
  {
    __break(1u);
    goto LABEL_37;
  }

  if (v9 >= 9.22337204e18)
  {
LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  v10 = *(v0 + 56);
  if ((*&v9 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || (*(v0 + 56) & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_38;
  }

  if (v10 <= -9.22337204e18)
  {
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  if (v10 >= 9.22337204e18)
  {
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  v11 = v9;
  v12 = v10;
  v13 = v9 * v10;
  if ((v9 * v10) >> 64 != v13 >> 63)
  {
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  v14 = v13 * v7;
  if ((v13 * v7) >> 64 != (v13 * v7) >> 63)
  {
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  result = [*(v0 + 64) inputHeight];
  if ((*&v15 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

  if (v15 <= -9.22337204e18)
  {
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  if (v15 >= 9.22337204e18)
  {
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  v16 = v15 * v12;
  if ((v15 * v12) >> 64 != v16 >> 63)
  {
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  v17 = *(v0 + 48);
  v18 = v16 * v17;
  if ((v16 * v17) >> 64 != (v16 * v17) >> 63)
  {
LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

  if (v18 < v14)
  {
LABEL_48:
    __break(1u);
    goto LABEL_49;
  }

  if (v14 < 0)
  {
LABEL_49:
    __break(1u);
    goto LABEL_50;
  }

  if (v18 > *(v0 + 24))
  {
LABEL_50:
    __break(1u);
    goto LABEL_51;
  }

  v19 = *(v0 + 16);
  if (v19)
  {
    if (v18 - v14 >= 0)
    {
      if (v18 != v14)
      {
        bzero((v19 + 4 * v14), 4 * v12 * (v17 * v15 - v7 * v11));
      }

      goto LABEL_31;
    }

LABEL_51:
    __break(1u);
    return result;
  }

LABEL_31:

  v20 = *(v0 + 8);

  return v20(v3);
}

uint64_t sub_1B410301C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1B41030AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, double a8)
{
  *(v8 + 224) = a8;
  *(v8 + 208) = a6;
  *(v8 + 216) = a7;
  *(v8 + 192) = a4;
  *(v8 + 200) = a5;
  *(v8 + 176) = a2;
  *(v8 + 184) = a3;
  *(v8 + 168) = a1;
  v9 = sub_1B429FA68();
  *(v8 + 232) = v9;
  *(v8 + 240) = *(v9 - 8);
  *(v8 + 248) = swift_task_alloc();
  *(v8 + 256) = swift_task_alloc();
  *(v8 + 264) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B41031C0, 0, 0);
}

id sub_1B41031C0()
{
  v1 = [*(v0 + 176) boundingQuad];
  if (!v1)
  {
    goto LABEL_159;
  }

  v2 = v1;
  v3 = *(v0 + 176);
  [v1 baselineAngle];
  v5 = v4;
  *(v0 + 272) = v4;

  v6 = [v3 boundingQuad];
  if (!v6)
  {
    goto LABEL_160;
  }

  v7 = v6;
  v8 = *(v0 + 184);
  v9 = [v6 denormalizedQuad];

  [v9 boundingBox];
  v11 = v10;

  v12 = CRRoundCGRect(v11);
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v19 = [v8 width];
  v20 = [v8 height];
  v140.size.width = v19;
  v140.size.height = v20;
  v140.origin.x = 0.0;
  v140.origin.y = 0.0;
  v138.origin.x = v12;
  v138.origin.y = v14;
  v138.size.width = v16;
  v138.size.height = v18;
  v139 = CGRectIntersection(v138, v140);
  x = v139.origin.x;
  y = v139.origin.y;
  width = v139.size.width;
  height = v139.size.height;
  *(v0 + 112) = v139;
  if (CGRectIsEmpty(v139))
  {
    goto LABEL_78;
  }

  v25 = *(v0 + 176);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB884E90);
  inited = swift_initStackObject();
  *(v0 + 280) = inited;
  *(inited + 16) = xmmword_1B42ACEF0;
  result = [v25 boundingQuad];
  if (!result)
  {
    __break(1u);
    goto LABEL_162;
  }

  v28 = result;
  v29 = *(v0 + 176);
  [result topLeft];

  *(inited + 32) = sub_1B42A0208();
  result = [v29 boundingQuad];
  if (!result)
  {
LABEL_162:
    __break(1u);
    goto LABEL_163;
  }

  v30 = result;
  v31 = *(v0 + 176);
  [result topRight];

  *(inited + 40) = sub_1B42A0208();
  result = [v31 boundingQuad];
  if (!result)
  {
LABEL_163:
    __break(1u);
    goto LABEL_164;
  }

  v32 = result;
  v33 = *(v0 + 176);
  [result bottomRight];

  *(inited + 48) = sub_1B42A0208();
  result = [v33 boundingQuad];
  if (!result)
  {
LABEL_164:
    __break(1u);
    return result;
  }

  v34 = result;
  v35 = *(v0 + 176);
  [result bottomLeft];

  *(inited + 56) = sub_1B42A0208();
  v36 = [v35 polygon];
  *(v0 + 288) = v36;
  if (v36)
  {
    v37 = v36;
    v38 = *(v0 + 192);
    if ([v36 pointCount] >= 4 && v38)
    {
      v39 = *(v0 + 200);
      v40 = *(v0 + 192);
      if ([v39 rectifyPolygons])
      {
        v41 = *(v0 + 200);
        v42 = swift_allocObject();
        *(v0 + 296) = v42;
        *(v42 + 16) = 0;
        *(v0 + 304) = *sub_1B40E75F0();
        v43 = swift_allocObject();
        *(v0 + 312) = v43;
        v43[2] = v42;
        v43[3] = v40;
        v43[4] = v37;
        v43[5] = v41;
        v44 = v40;

        v45 = v37;
        v46 = v41;
        v47 = swift_task_alloc();
        *(v0 + 320) = v47;
        *v47 = v0;
        v47[1] = sub_1B4104150;
        v48 = MEMORY[0x1E69E7CA8] + 8;

        return sub_1B40E7640(v47, sub_1B41060AC, v43, v48);
      }
    }

    else
    {
      v40 = v37;
    }
  }

  v49 = v5;
  [*(v0 + 200) angleThresholdForRotatedCrops];
  *&v50 = v50;
  if (fabsf(v49) > *&v50)
  {
    v51 = *(v0 + 184);
    *(v0 + 80) = 0u;
    *(v0 + 96) = 0u;
    sub_1B41050FC(inited);

    v52 = sub_1B429FDE8();

    *&v53 = -v49;
    v54 = [v51 imageByCroppingRectangle:v52 textFeaturePoints:v0 + 80 radians:x rotatedRoi:{y, width, height, v53}];

    v55 = *(v0 + 96);
    v56 = *(v0 + 104);
    v57 = *(v0 + 80);
    v58 = *(v0 + 88);
    if ([v54 width] < 1 || objc_msgSend(v54, sel_height) < 1)
    {
      v92 = *(v0 + 256);
      v93 = *(v0 + 232);
      v94 = *(v0 + 240);
      v95 = sub_1B41253CC();
      (*(v94 + 16))(v92, v95, v93);
      v54 = v54;
      v71 = sub_1B429FA48();
      v96 = sub_1B42A0138();
      if (os_log_type_enabled(v71, v96))
      {
        v97 = swift_slowAlloc();
        *v97 = 134218240;
        *(v97 + 4) = [v54 width];

        *(v97 + 12) = 2048;
        *(v97 + 14) = [v54 height];

        _os_log_impl(&dword_1B40D2000, v71, v96, "Unexpected crop dimensions (%ld, %ld)", v97, 0x16u);
        MEMORY[0x1B8C74FA0](v97, -1, -1);
      }

      else
      {
      }

      v98 = *(v0 + 256);
      goto LABEL_77;
    }

    v133 = v57;
    v59 = *(v0 + 224);
    v60 = v59;
    v61 = *(v0 + 200);
    v62 = *(v0 + 176);
    v132 = v58;
    v63 = v59 / [v54 width];
    [v61 inputHeight];
    v65 = v64 / [v54 height];
    if (v65 >= v63)
    {
      v65 = v63;
    }

    v66 = v65;
    v67 = objc_opt_self();
    v69 = [(CRFeatureSequenceRecognitionInfo *)v66 infoForRegion:y scale:width bounds:height featureImageSize:v55 rotatedROI:v56, v67, v62, v68, v133, v132, v55, v56];
    if ((*&v60 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else
    {
      v70 = *(v0 + 224);
      if (v70 > -9.22337204e18)
      {
        if (v70 < 9.22337204e18)
        {
          v71 = v69;
          v72 = v70;
          if ([v54 width] == v70)
          {
            [*(v0 + 200) inputHeight];
            if ((*&v73 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
            {
LABEL_133:
              __break(1u);
              goto LABEL_134;
            }

            if (v73 <= -9.22337204e18)
            {
LABEL_134:
              __break(1u);
              goto LABEL_135;
            }

            if (v73 >= 9.22337204e18)
            {
LABEL_135:
              __break(1u);
              goto LABEL_136;
            }

            if ([v54 height] == v73)
            {
              v74 = v54;
              goto LABEL_56;
            }
          }

          [*(v0 + 200) inputHeight];
          if ((*&v105 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
          {
            if (v105 > -9.22337204e18)
            {
              if (v105 < 9.22337204e18)
              {
                v74 = [v54 imageByPaddingToRatioAndScalingToWidth:v72 height:v105 paddingMode:objc_msgSend(*(v0 + 200) alignCenter:{sel_paddingMode), 0}];
LABEL_56:
                v106 = v74;
                [v74 createFloatBuffer];
                v107 = v134;
                if (v134)
                {
                  if (is_mul_ok(v136, v135))
                  {
                    v108 = v136 * v135;
                    if (((v136 * v135) & 0x8000000000000000) == 0)
                    {
                      if (!(v108 >> 61))
                      {
                        [*(v0 + 200) inputHeight];
                        if ((*&v109 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
                        {
                          if (v109 > -9.22337204e18)
                          {
                            if (v109 < 9.22337204e18)
                            {
                              v110 = v109 * v72;
                              if ((v109 * v72) >> 64 == v110 >> 63)
                              {
                                v111 = *(v0 + 168);
                                v112 = v110 * v111;
                                if ((v110 * v111) >> 64 == (v110 * v111) >> 63)
                                {
                                  [*(v0 + 200) inputHeight];
                                  if ((*&v113 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
                                  {
                                    if (v113 > -9.22337204e18)
                                    {
                                      if (v113 < 9.22337204e18)
                                      {
                                        v114 = v113 * v72;
                                        if ((v113 * v72) >> 64 == v114 >> 63)
                                        {
                                          v115 = *(v0 + 168);
                                          v116 = v115 + 1;
                                          if (!__OFADD__(v115, 1))
                                          {
                                            v117 = v114 * v116;
                                            if ((v114 * v116) >> 64 == (v114 * v116) >> 63)
                                            {
                                              if (v117 >= v112)
                                              {
                                                if ((v112 & 0x8000000000000000) == 0)
                                                {
                                                  if (v117 > *(v0 + 216))
                                                  {
                                                    __break(1u);
                                                    goto LABEL_75;
                                                  }

LABEL_104:
                                                  v130 = *(v0 + 208);
                                                  if (v130)
                                                  {
                                                    memmove((v130 + 4 * v112), v107, 4 * v108);
                                                  }

                                                  v131 = v71;
                                                  free(v107);

                                                  goto LABEL_79;
                                                }

                                                goto LABEL_132;
                                              }

LABEL_131:
                                              __break(1u);
LABEL_132:
                                              __break(1u);
                                              goto LABEL_133;
                                            }

LABEL_130:
                                            __break(1u);
                                            goto LABEL_131;
                                          }

LABEL_129:
                                          __break(1u);
                                          goto LABEL_130;
                                        }

LABEL_128:
                                        __break(1u);
                                        goto LABEL_129;
                                      }

LABEL_127:
                                      __break(1u);
                                      goto LABEL_128;
                                    }

LABEL_126:
                                    __break(1u);
                                    goto LABEL_127;
                                  }

LABEL_125:
                                  __break(1u);
                                  goto LABEL_126;
                                }

LABEL_124:
                                __break(1u);
                                goto LABEL_125;
                              }

LABEL_123:
                              __break(1u);
                              goto LABEL_124;
                            }

LABEL_122:
                            __break(1u);
                            goto LABEL_123;
                          }

LABEL_121:
                          __break(1u);
                          goto LABEL_122;
                        }

LABEL_120:
                        __break(1u);
                        goto LABEL_121;
                      }

LABEL_119:
                      __break(1u);
                      goto LABEL_120;
                    }

LABEL_118:
                    __break(1u);
                    goto LABEL_119;
                  }

LABEL_117:
                  __break(1u);
                  goto LABEL_118;
                }

LABEL_107:

                goto LABEL_78;
              }

              goto LABEL_113;
            }

LABEL_112:
            __break(1u);
LABEL_113:
            __break(1u);
            goto LABEL_114;
          }

LABEL_111:
          __break(1u);
          goto LABEL_112;
        }

LABEL_110:
        __break(1u);
        goto LABEL_111;
      }
    }

    __break(1u);
    goto LABEL_110;
  }

  v75 = *(v0 + 184);
  swift_setDeallocating();
  swift_arrayDestroy();
  v76 = [v75 imageByCroppingRectangle_];
  if (v76)
  {
    v54 = v76;
    if ([v76 width] < 1 || objc_msgSend(v54, sel_height) < 1)
    {
      v100 = *(v0 + 240);
      v99 = *(v0 + 248);
      v101 = *(v0 + 232);
      v102 = sub_1B41253CC();
      (*(v100 + 16))(v99, v102, v101);
      v54 = v54;
      v71 = sub_1B429FA48();
      v103 = sub_1B42A0138();
      if (os_log_type_enabled(v71, v103))
      {
        v104 = swift_slowAlloc();
        *v104 = 134218240;
        *(v104 + 4) = [v54 width];

        *(v104 + 12) = 2048;
        *(v104 + 14) = [v54 height];

        _os_log_impl(&dword_1B40D2000, v71, v103, "Unexpected crop dimensions (%ld, %ld)", v104, 0x16u);
        MEMORY[0x1B8C74FA0](v104, -1, -1);
LABEL_76:
        v98 = *(v0 + 248);
LABEL_77:
        v118 = *(v0 + 232);
        v119 = *(v0 + 240);

        (*(v119 + 8))(v98, v118);
        goto LABEL_78;
      }

LABEL_75:

      goto LABEL_76;
    }

    v77 = *(v0 + 224);
    v78 = v77;
    v79 = *(v0 + 200);
    v80 = *(v0 + 176);
    v81 = v77 / [v54 width];
    [v79 inputHeight];
    v83 = v82 / [v54 height];
    if (v83 >= v81)
    {
      v83 = v81;
    }

    v84 = v83;
    v85 = objc_opt_self();
    v87 = [(CRFeatureSequenceRecognitionInfo *)v84 infoForRegion:y scale:width bounds:height featureImageSize:width rotatedROI:height, v85, v80, v86, 0.0, 0.0, 0.0, 0.0];
    if ((*&v78 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
    {
      v88 = *(v0 + 224);
      if (v88 > -9.22337204e18)
      {
        if (v88 < 9.22337204e18)
        {
          v71 = v87;
          v89 = v88;
          if ([v54 width] != v88)
          {
            goto LABEL_82;
          }

          [*(v0 + 200) inputHeight];
          if ((*&v90 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
          {
LABEL_156:
            __break(1u);
            goto LABEL_157;
          }

          if (v90 <= -9.22337204e18)
          {
LABEL_157:
            __break(1u);
            goto LABEL_158;
          }

          if (v90 >= 9.22337204e18)
          {
LABEL_158:
            __break(1u);
LABEL_159:
            __break(1u);
LABEL_160:
            __break(1u);
          }

          if ([v54 height] == v90)
          {
            v91 = v54;
          }

          else
          {
LABEL_82:
            [*(v0 + 200) inputHeight];
            if ((*&v121 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
            {
LABEL_136:
              __break(1u);
              goto LABEL_137;
            }

            if (v121 <= -9.22337204e18)
            {
LABEL_137:
              __break(1u);
              goto LABEL_138;
            }

            if (v121 >= 9.22337204e18)
            {
LABEL_138:
              __break(1u);
              goto LABEL_139;
            }

            v91 = [v54 imageByPaddingToRatioAndScalingToWidth:v89 height:v121 paddingMode:objc_msgSend(*(v0 + 200) alignCenter:{sel_paddingMode), 0}];
          }

          v106 = v91;
          [v91 createFloatBuffer];
          v107 = v134;
          if (v134)
          {
            if (is_mul_ok(v136, v135))
            {
              v108 = v136 * v135;
              if (((v136 * v135) & 0x8000000000000000) == 0)
              {
                if (!(v108 >> 61))
                {
                  [*(v0 + 200) inputHeight];
                  if ((*&v122 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
                  {
                    if (v122 > -9.22337204e18)
                    {
                      if (v122 < 9.22337204e18)
                      {
                        v123 = v122 * v89;
                        if ((v122 * v89) >> 64 == v123 >> 63)
                        {
                          v124 = *(v0 + 168);
                          v112 = v123 * v124;
                          if ((v123 * v124) >> 64 == (v123 * v124) >> 63)
                          {
                            [*(v0 + 200) inputHeight];
                            if ((*&v125 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
                            {
                              if (v125 > -9.22337204e18)
                              {
                                if (v125 < 9.22337204e18)
                                {
                                  v126 = v125 * v89;
                                  if ((v125 * v89) >> 64 == v126 >> 63)
                                  {
                                    v127 = *(v0 + 168);
                                    v128 = v127 + 1;
                                    if (!__OFADD__(v127, 1))
                                    {
                                      v129 = v126 * v128;
                                      if ((v126 * v128) >> 64 == (v126 * v128) >> 63)
                                      {
                                        if (v129 >= v112)
                                        {
                                          if ((v112 & 0x8000000000000000) == 0)
                                          {
                                            if (v129 <= *(v0 + 216))
                                            {
                                              goto LABEL_104;
                                            }

                                            goto LABEL_155;
                                          }

LABEL_154:
                                          __break(1u);
LABEL_155:
                                          __break(1u);
                                          goto LABEL_156;
                                        }

LABEL_153:
                                        __break(1u);
                                        goto LABEL_154;
                                      }

LABEL_152:
                                      __break(1u);
                                      goto LABEL_153;
                                    }

LABEL_151:
                                    __break(1u);
                                    goto LABEL_152;
                                  }

LABEL_150:
                                  __break(1u);
                                  goto LABEL_151;
                                }

LABEL_149:
                                __break(1u);
                                goto LABEL_150;
                              }

LABEL_148:
                              __break(1u);
                              goto LABEL_149;
                            }

LABEL_147:
                            __break(1u);
                            goto LABEL_148;
                          }

LABEL_146:
                          __break(1u);
                          goto LABEL_147;
                        }

LABEL_145:
                        __break(1u);
                        goto LABEL_146;
                      }

LABEL_144:
                      __break(1u);
                      goto LABEL_145;
                    }

LABEL_143:
                    __break(1u);
                    goto LABEL_144;
                  }

LABEL_142:
                  __break(1u);
                  goto LABEL_143;
                }

LABEL_141:
                __break(1u);
                goto LABEL_142;
              }

LABEL_140:
              __break(1u);
              goto LABEL_141;
            }

LABEL_139:
            __break(1u);
            goto LABEL_140;
          }

          goto LABEL_107;
        }

LABEL_116:
        __break(1u);
        goto LABEL_117;
      }

LABEL_115:
      __break(1u);
      goto LABEL_116;
    }

LABEL_114:
    __break(1u);
    goto LABEL_115;
  }

LABEL_78:
  v71 = 0;
LABEL_79:

  v120 = *(v0 + 8);

  return v120(v71);
}

uint64_t sub_1B4104150()
{
  *(*v1 + 328) = v0;

  if (v0)
  {

    v2 = sub_1B4104A20;
  }

  else
  {
    v2 = sub_1B41042EC;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1B41042EC()
{
  v1 = *(v0 + 296);
  swift_beginAccess();
  v2 = *(v1 + 16);
  if (!v2)
  {
    goto LABEL_76;
  }

  v3 = *(v0 + 296);
  v4 = *(v0 + 280);
  v5 = *(v0 + 112);
  v6 = *(v0 + 120);
  v7 = *(v0 + 128);
  v8 = *(v0 + 136);
  v9 = *(v0 + 184);
  v10 = *(v0 + 272);
  [v2 size];
  v12 = v11;
  v14 = v13;
  sub_1B41050FC(v4);
  v15 = sub_1B429FDE8();

  *&v16 = -v10;
  [v9 rotatedRoiByCroppingRectangle:v15 textFeaturePoints:v5 radians:{v6, v7, v8, v16}];
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v24 = v23;

  v25 = *(v3 + 16);
  if (!v25)
  {
    goto LABEL_77;
  }

  swift_setDeallocating();
  v26 = v25;
  swift_arrayDestroy();
  if ([v26 width] < 1 || objc_msgSend(v26, sel_height) < 1)
  {
    v44 = *(v0 + 264);
    v45 = *(v0 + 232);
    v46 = *(v0 + 240);
    v47 = sub_1B41253CC();
    (*(v46 + 16))(v44, v47, v45);
    v48 = v26;
    v49 = sub_1B429FA48();
    v50 = sub_1B42A0138();
    v51 = os_log_type_enabled(v49, v50);
    v52 = *(v0 + 288);
    v53 = *(v0 + 264);
    v54 = *(v0 + 232);
    v55 = *(v0 + 240);
    v56 = *(v0 + 192);
    if (v51)
    {
      v57 = swift_slowAlloc();
      *v57 = 134218240;
      *(v57 + 4) = [v48 &selRef_detectorInferenceStats];

      *(v57 + 12) = 2048;
      *(v57 + 14) = [v48 height];

      _os_log_impl(&dword_1B40D2000, v49, v50, "Unexpected crop dimensions (%ld, %ld)", v57, 0x16u);
      MEMORY[0x1B8C74FA0](v57, -1, -1);
    }

    else
    {
    }

    (*(v55 + 8))(v53, v54);

    goto LABEL_20;
  }

  v79 = *(v0 + 120);
  v80 = *(v0 + 112);
  v77 = *(v0 + 136);
  v78 = *(v0 + 128);
  v27 = *(v0 + 224);
  v28 = v27;
  v29 = *(v0 + 200);
  v30 = *(v0 + 176);
  v31 = v12;
  v32 = v27 / [v26 width];
  [v29 inputHeight];
  v34 = v33 / [v26 height];
  if (v34 >= v32)
  {
    v34 = v32;
  }

  v35 = v34;
  v36 = objc_opt_self();
  v38 = [(CRFeatureSequenceRecognitionInfo *)v35 infoForRegion:v80 scale:v79 bounds:v78 featureImageSize:v77 rotatedROI:v31, v14, v36, v30, v37, v18, v20, v22, v24];
  if ((*&v28 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_51;
  }

  v39 = *(v0 + 224);
  if (v39 <= -9.22337204e18)
  {
LABEL_51:
    __break(1u);
    goto LABEL_52;
  }

  if (v39 >= 9.22337204e18)
  {
LABEL_52:
    __break(1u);
LABEL_53:
    __break(1u);
    goto LABEL_54;
  }

  v40 = v38;
  v41 = v39;
  if ([v26 width] == v39)
  {
    [*(v0 + 200) inputHeight];
    if ((*&v42 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
LABEL_73:
      __break(1u);
      goto LABEL_74;
    }

    if (v42 <= -9.22337204e18)
    {
LABEL_74:
      __break(1u);
      goto LABEL_75;
    }

    if (v42 >= 9.22337204e18)
    {
LABEL_75:
      __break(1u);
LABEL_76:
      __break(1u);
LABEL_77:
      __break(1u);
    }

    if ([v26 height] == v42)
    {
      v43 = v26;
      goto LABEL_25;
    }
  }

  [*(v0 + 200) inputHeight];
  if ((*&v58 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_53;
  }

  if (v58 <= -9.22337204e18)
  {
LABEL_54:
    __break(1u);
    goto LABEL_55;
  }

  if (v58 >= 9.22337204e18)
  {
LABEL_55:
    __break(1u);
    goto LABEL_56;
  }

  v43 = [v26 imageByPaddingToRatioAndScalingToWidth:v41 height:v58 paddingMode:objc_msgSend(*(v0 + 200) alignCenter:{sel_paddingMode), 0}];
LABEL_25:
  v59 = v43;
  [v43 createFloatBuffer];
  if (!v81)
  {
    v76 = *(v0 + 192);

LABEL_20:
    v40 = 0;
    goto LABEL_46;
  }

  if (!is_mul_ok(v83, v82))
  {
LABEL_56:
    __break(1u);
    goto LABEL_57;
  }

  v60 = v83 * v82;
  if (((v83 * v82) & 0x8000000000000000) != 0)
  {
LABEL_57:
    __break(1u);
    goto LABEL_58;
  }

  if (v60 >> 61)
  {
LABEL_58:
    __break(1u);
    goto LABEL_59;
  }

  [*(v0 + 200) inputHeight];
  if ((*&v61 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_59:
    __break(1u);
    goto LABEL_60;
  }

  if (v61 <= -9.22337204e18)
  {
LABEL_60:
    __break(1u);
    goto LABEL_61;
  }

  if (v61 >= 9.22337204e18)
  {
LABEL_61:
    __break(1u);
    goto LABEL_62;
  }

  v62 = v61 * v41;
  if ((v61 * v41) >> 64 != v62 >> 63)
  {
LABEL_62:
    __break(1u);
    goto LABEL_63;
  }

  v63 = *(v0 + 168);
  v64 = v62 * v63;
  if ((v62 * v63) >> 64 != (v62 * v63) >> 63)
  {
LABEL_63:
    __break(1u);
    goto LABEL_64;
  }

  [*(v0 + 200) inputHeight];
  if ((*&v65 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_64:
    __break(1u);
    goto LABEL_65;
  }

  if (v65 <= -9.22337204e18)
  {
LABEL_65:
    __break(1u);
    goto LABEL_66;
  }

  if (v65 >= 9.22337204e18)
  {
LABEL_66:
    __break(1u);
    goto LABEL_67;
  }

  v66 = v65 * v41;
  if ((v65 * v41) >> 64 != v66 >> 63)
  {
LABEL_67:
    __break(1u);
    goto LABEL_68;
  }

  v67 = *(v0 + 168);
  v68 = v67 + 1;
  if (__OFADD__(v67, 1))
  {
LABEL_68:
    __break(1u);
    goto LABEL_69;
  }

  v69 = v66 * v68;
  if ((v66 * v68) >> 64 != (v66 * v68) >> 63)
  {
LABEL_69:
    __break(1u);
    goto LABEL_70;
  }

  if (v69 < v64)
  {
LABEL_70:
    __break(1u);
    goto LABEL_71;
  }

  if (v64 < 0)
  {
LABEL_71:
    __break(1u);
    goto LABEL_72;
  }

  if (v69 > *(v0 + 216))
  {
LABEL_72:
    __break(1u);
    goto LABEL_73;
  }

  v70 = *(v0 + 208);
  if (v70)
  {
    memmove((v70 + 4 * v64), v81, 4 * v60);
  }

  v71 = *(v0 + 288);
  v72 = *(v0 + 192);
  v73 = v40;
  free(v81);

LABEL_46:

  v74 = *(v0 + 8);

  return v74(v40);
}

uint64_t sub_1B4104A20()
{
  v1 = *(v0 + 192);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1B4104AF0(uint64_t a1, void *a2, void *a3, void *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB884C70);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v11 = &v18 - v10;
  v12 = sub_1B429FEE8();
  (*(*(v12 - 8) + 56))(v11, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = a1;
  v13[3] = a2;
  v13[4] = a3;
  v13[5] = a4;

  v14 = a2;
  v15 = a3;
  v16 = a4;
  sub_1B40E6C14(v11, &unk_1B42ACF88, v13, MEMORY[0x1E69E7CA8] + 8);
  sub_1B4105F8C(v11);
}

uint64_t sub_1B4104C44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[24] = a4;
  v5[25] = a5;
  v5[22] = a2;
  v5[23] = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB884FC8);
  v5[26] = v6;
  v5[27] = *(v6 - 8);
  v5[28] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B4104D14, 0, 0);
}

uint64_t sub_1B4104D14()
{
  v1 = [*(v0 + 200) inputHeight];
  if ((*&v2 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (v2 <= -9.22337204e18)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v2 >= 9.22337204e18)
  {
LABEL_9:
    __break(1u);
    return MEMORY[0x1EEE6DEC8](v1);
  }

  v3 = *(v0 + 216);
  v4 = *(v0 + 224);
  v5 = *(v0 + 208);
  v6 = *(v0 + 184);
  v9 = *(v0 + 192);
  v10 = v2;
  *(v0 + 16) = v0;
  *(v0 + 56) = v0 + 168;
  *(v0 + 24) = sub_1B4104F28;
  swift_continuation_init();
  *(v0 + 136) = v5;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v0 + 112));
  sub_1B40E27B4(0, &unk_1EB8847F0);
  sub_1B429FE88();
  (*(v3 + 32))(boxed_opaque_existential_0, v4, v5);
  *(v0 + 80) = MEMORY[0x1E69E9820];
  *(v0 + 88) = 1107296256;
  *(v0 + 96) = sub_1B410509C;
  *(v0 + 104) = &block_descriptor_2;
  [v6 rectifyPolygonAsync:v9 imageHeight:v10 completionHandler:v0 + 80];
  (*(v3 + 8))(boxed_opaque_existential_0, v5);
  v1 = (v0 + 16);

  return MEMORY[0x1EEE6DEC8](v1);
}

uint64_t sub_1B4104F28()
{

  return MEMORY[0x1EEE6DFA0](sub_1B4105008, 0, 0);
}

uint64_t sub_1B4105008()
{
  v2 = v0[21];
  v1 = v0[22];
  swift_beginAccess();
  v3 = *(v1 + 16);
  *(v1 + 16) = v2;

  v4 = v0[1];

  return v4();
}

uint64_t sub_1B410509C(uint64_t a1, void *a2)
{
  __swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));
  v3 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB884FC8);
  return sub_1B429FEA8();
}

char *sub_1B41050FC(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = sub_1B42A0518();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = MEMORY[0x1E69E7CC0];
  if (!v2)
  {
    return v3;
  }

  v13 = MEMORY[0x1E69E7CC0];
  result = sub_1B40DF748(0, v2 & ~(v2 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v3 = v13;
    if ((a1 & 0xC000000000000001) != 0)
    {
      for (i = 0; i != v2; ++i)
      {
        MEMORY[0x1B8C72CD0](i, a1);
        sub_1B40E27B4(0, &qword_1ED95E050);
        swift_dynamicCast();
        v13 = v3;
        v7 = *(v3 + 16);
        v6 = *(v3 + 24);
        if (v7 >= v6 >> 1)
        {
          sub_1B40DF748((v6 > 1), v7 + 1, 1);
          v3 = v13;
        }

        *(v3 + 16) = v7 + 1;
        sub_1B40E28EC(v12, (v3 + 32 * v7 + 32));
      }
    }

    else
    {
      v8 = (a1 + 32);
      sub_1B40E27B4(0, &qword_1ED95E050);
      do
      {
        v9 = *v8;
        swift_dynamicCast();
        v13 = v3;
        v11 = *(v3 + 16);
        v10 = *(v3 + 24);
        if (v11 >= v10 >> 1)
        {
          sub_1B40DF748((v10 > 1), v11 + 1, 1);
          v3 = v13;
        }

        *(v3 + 16) = v11 + 1;
        sub_1B40E28EC(v12, (v3 + 32 * v11 + 32));
        ++v8;
        --v2;
      }

      while (v2);
    }

    return v3;
  }

  __break(1u);
  return result;
}

uint64_t sub_1B41052F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int *a5)
{
  v10 = (a5 + *a5);
  v8 = swift_task_alloc();
  *(v5 + 16) = v8;
  *v8 = v5;
  v8[1] = sub_1B40DD740;

  return v10(a1, a2);
}

uint64_t sub_1B41053F8(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, int *a5)
{
  *(v5 + 16) = a1;
  v6 = *a2;
  v7 = a2[1];
  v10 = (a5 + *a5);
  v8 = swift_task_alloc();
  *(v5 + 24) = v8;
  *v8 = v5;
  v8[1] = sub_1B41054F8;

  return v10(v6, v7);
}

uint64_t sub_1B41054F8(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;

  if (!v1)
  {
    **(v4 + 16) = a1;
  }

  v6 = *(v5 + 8);

  return v6();
}

uint64_t sub_1B4105608(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB884C70);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v12 = v24 - v11;
  sub_1B4105F1C(a3, v24 - v11);
  v13 = sub_1B429FEE8();
  v14 = *(v13 - 8);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_1B4105F8C(v12);
    if (*(a5 + 16))
    {
      goto LABEL_3;
    }

LABEL_7:
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_4;
    }

    goto LABEL_8;
  }

  sub_1B429FED8();
  (*(v14 + 8))(v12, v13);
  if (!*(a5 + 16))
  {
    goto LABEL_7;
  }

LABEL_3:
  swift_getObjectType();
  swift_unknownObjectRetain();
  v15 = sub_1B429FE78();
  v17 = v16;
  swift_unknownObjectRelease();
  if (a2)
  {
LABEL_4:
    v18 = sub_1B429FC08() + 32;
    v19 = swift_allocObject();
    *(v19 + 16) = a4;
    *(v19 + 24) = a5;

    if (v17 | v15)
    {
      v25[0] = 0;
      v25[1] = 0;
      v20 = v25;
      v25[2] = v15;
      v25[3] = v17;
    }

    else
    {
      v20 = 0;
    }

    v24[1] = 7;
    v24[2] = v20;
    v24[3] = v18;
    v22 = swift_task_create();

    sub_1B4105F8C(a3);

    return v22;
  }

LABEL_8:
  sub_1B4105F8C(a3);
  v21 = swift_allocObject();
  *(v21 + 16) = a4;
  *(v21 + 24) = a5;
  if (v17 | v15)
  {
    v25[4] = 0;
    v25[5] = 0;
    v25[6] = v15;
    v25[7] = v17;
  }

  return swift_task_create();
}

uint64_t sub_1B41058C4(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 2);
  v7 = *(v2 + 3);
  v8 = *(v2 + 4);
  v9 = *(v2 + 5);
  v10 = *(v2 + 6);
  v11 = v2[7];
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_1B410252C;

  return sub_1B41030AC(a1, a2, v6, v7, v8, v9, v10, v11);
}

unint64_t sub_1B41059A8(unint64_t result)
{
  v1 = result;
  if (result >> 62)
  {
    goto LABEL_35;
  }

  v2 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v3 = MEMORY[0x1E69E7CC0];
  if (v2)
  {
    v4 = 0;
    v5 = 0;
    v6 = v1 & 0xC000000000000001;
    v7 = (MEMORY[0x1E69E7CC0] + 32);
    v8 = v1 & 0xFFFFFFFFFFFFFF8;
    v27 = v1 & 0xC000000000000001;
    v28 = v1;
    v26 = v1 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if (v6)
      {
        result = MEMORY[0x1B8C72CD0](v4, v1);
        v9 = v4 + 1;
        if (__OFADD__(v4, 1))
        {
LABEL_26:
          __break(1u);
          break;
        }
      }

      else
      {
        if (v4 >= *(v8 + 16))
        {
          __break(1u);
LABEL_33:
          __break(1u);
LABEL_34:
          __break(1u);
LABEL_35:
          result = sub_1B42A0518();
          v2 = result;
          goto LABEL_3;
        }

        result = *(v1 + 8 * v4 + 32);
        v9 = v4 + 1;
        if (__OFADD__(v4, 1))
        {
          goto LABEL_26;
        }
      }

      if (!v5)
      {
        v10 = v3[3];
        if (((v10 >> 1) + 0x4000000000000000) < 0)
        {
          goto LABEL_34;
        }

        v11 = v2;
        v12 = result;
        v13 = v10 & 0xFFFFFFFFFFFFFFFELL;
        if (v13 <= 1)
        {
          v14 = 1;
        }

        else
        {
          v14 = v13;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB884FC0);
        v15 = swift_allocObject();
        v16 = _swift_stdlib_malloc_size(v15);
        v17 = v16 - 32;
        if (v16 < 32)
        {
          v17 = v16 - 17;
        }

        v18 = v17 >> 4;
        v15[2] = v14;
        v15[3] = 2 * (v17 >> 4);
        v19 = (v15 + 4);
        v20 = v3[3] >> 1;
        if (v3[2])
        {
          v21 = v3 + 4;
          if (v15 != v3 || v19 >= v21 + 16 * v20)
          {
            memmove(v15 + 4, v21, 16 * v20);
          }

          v3[2] = 0;
        }

        v7 = (v19 + 16 * v20);
        v5 = (v18 & 0x7FFFFFFFFFFFFFFFLL) - v20;

        v3 = v15;
        result = v12;
        v2 = v11;
        v6 = v27;
        v1 = v28;
        v8 = v26;
      }

      v22 = __OFSUB__(v5--, 1);
      if (v22)
      {
        goto LABEL_33;
      }

      *v7 = v4;
      v7[1] = result;
      v7 += 2;
      ++v4;
      if (v9 == v2)
      {
        goto LABEL_28;
      }
    }
  }

  v5 = 0;
LABEL_28:
  v23 = v3[3];
  if (v23 < 2)
  {
    return v3;
  }

  v24 = v23 >> 1;
  v22 = __OFSUB__(v24, v5);
  v25 = v24 - v5;
  if (!v22)
  {
    v3[2] = v25;
    return v3;
  }

  __break(1u);
  return result;
}

uint64_t sub_1B4105B98(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_1B40E6368;

  return sub_1B41052F8(a1, a2, v6, v7, v8);
}

uint64_t sub_1B4105C70(uint64_t a1, uint64_t *a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_1B40E17D0;

  return sub_1B41053F8(a1, a2, v6, v7, v8);
}

unint64_t sub_1B4105D4C()
{
  result = qword_1ED95E720;
  if (!qword_1ED95E720)
  {
    sub_1B429FEC8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED95E720);
  }

  return result;
}

uint64_t sub_1B4105DA4()
{
  v2 = *(v0 + 16);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1B40E6828;

  return sub_1B41026C4(v2);
}

uint64_t sub_1B4105E50(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1B40E17D0;

  return sub_1B40F97CC(a1, v4, v5, v6);
}

uint64_t sub_1B4105F1C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB884C70);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B4105F8C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB884C70);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1B4105FF4(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1B40E6828;

  return sub_1B40E5AEC(a1, v4);
}

uint64_t objectdestroy_44Tm()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1B410611C()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_1B40E6828;

  return sub_1B4104C44(v6, v2, v3, v5, v4);
}

uint64_t type metadata accessor for ImageReaderConfiguration()
{
  result = qword_1ED95F9C0;
  if (!qword_1ED95F9C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t ImageReaderConfiguration.computeDevice.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for ImageReaderConfiguration() + 28);

  return sub_1B40FC3A8(a1, v3);
}

uint64_t ImageReaderConfiguration.keepResourcesLoaded.setter(char a1)
{
  result = type metadata accessor for ImageReaderConfiguration();
  *(v1 + *(result + 32)) = a1;
  return result;
}

uint64_t ImageReaderConfiguration.preloadResources.setter(char a1)
{
  result = type metadata accessor for ImageReaderConfiguration();
  *(v1 + *(result + 36)) = a1;
  return result;
}

uint64_t ImageReaderConfiguration.debugOptions.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for ImageReaderConfiguration() + 40);
  v4 = *(v3 + 1);
  v6 = *(v3 + 8);
  v5 = *(v3 + 16);
  *a1 = *v3;
  *(a1 + 1) = v4;
  *(a1 + 8) = v6;
  *(a1 + 16) = v5;
}

uint64_t ImageReaderConfiguration.debugOptions.setter(char *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(a1 + 1);
  v5 = *(a1 + 2);
  v6 = v1 + *(type metadata accessor for ImageReaderConfiguration() + 40);

  *v6 = v2;
  *(v6 + 1) = v3;
  *(v6 + 8) = v4;
  *(v6 + 16) = v5;
  return result;
}

uint64_t ImageReaderConfiguration.coreMode.setter(char a1)
{
  result = type metadata accessor for ImageReaderConfiguration();
  *(v1 + *(result + 44)) = a1;
  return result;
}

uint64_t ImageReaderConfiguration.detectionOnly.setter(char a1)
{
  result = type metadata accessor for ImageReaderConfiguration();
  *(v1 + *(result + 48)) = a1;
  return result;
}

uint64_t ImageReaderConfiguration.scriptDetection.setter(char a1)
{
  result = type metadata accessor for ImageReaderConfiguration();
  *(v1 + *(result + 52)) = a1;
  return result;
}

uint64_t ImageReaderConfiguration.textTypeDetection.setter(char a1)
{
  result = type metadata accessor for ImageReaderConfiguration();
  *(v1 + *(result + 56)) = a1;
  return result;
}

uint64_t ImageReaderConfiguration.detectTables.setter(char a1)
{
  result = type metadata accessor for ImageReaderConfiguration();
  *(v1 + *(result + 60)) = a1;
  return result;
}

uint64_t ImageReaderConfiguration.detectForms.setter(char a1)
{
  result = type metadata accessor for ImageReaderConfiguration();
  *(v1 + *(result + 64)) = a1;
  return result;
}

uint64_t ImageReaderConfiguration.languageCorrection.setter(char a1)
{
  result = type metadata accessor for ImageReaderConfiguration();
  *(v1 + *(result + 68)) = a1;
  return result;
}

uint64_t ImageReaderConfiguration.maximumCandidateCount.setter(uint64_t a1)
{
  result = type metadata accessor for ImageReaderConfiguration();
  *(v1 + *(result + 72)) = a1;
  return result;
}

uint64_t ImageReaderConfiguration.filterFalsePositives.setter(char a1)
{
  result = type metadata accessor for ImageReaderConfiguration();
  *(v1 + *(result + 76)) = a1;
  return result;
}

uint64_t ImageReaderConfiguration.includeVerticalText.setter(char a1)
{
  result = type metadata accessor for ImageReaderConfiguration();
  *(v1 + *(result + 80)) = a1;
  return result;
}

uint64_t ImageReaderConfiguration.detectorMaxInputSize.setter(uint64_t a1, char a2)
{
  result = type metadata accessor for ImageReaderConfiguration();
  v6 = v2 + *(result + 84);
  *v6 = a1;
  *(v6 + 8) = a2 & 1;
  return result;
}

uint64_t ImageReaderConfiguration.minimumTextHeight.setter(double a1)
{
  result = type metadata accessor for ImageReaderConfiguration();
  *(v1 + *(result + 88)) = a1;
  return result;
}

uint64_t ImageReaderConfiguration.dynamicLexicon.getter()
{
  type metadata accessor for ImageReaderConfiguration();
}

uint64_t ImageReaderConfiguration.dynamicLexicon.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ImageReaderConfiguration() + 92);

  *(v1 + v3) = a1;
  return result;
}

uint64_t ImageReaderConfiguration.preferredLanguages.getter()
{
  type metadata accessor for ImageReaderConfiguration();
}

uint64_t ImageReaderConfiguration.preferredLanguages.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ImageReaderConfiguration() + 96);

  *(v1 + v3) = a1;
  return result;
}

uint64_t ImageReaderConfiguration.optimizeGroupsForStability.setter(char a1)
{
  result = type metadata accessor for ImageReaderConfiguration();
  *(v1 + *(result + 100)) = a1;
  return result;
}

uint64_t ImageReaderConfiguration.rectifyPolygons.setter(char a1)
{
  result = type metadata accessor for ImageReaderConfiguration();
  *(v1 + *(result + 104)) = a1;
  return result;
}

uint64_t ImageReaderConfiguration.inputImageOrientation.setter(int a1)
{
  result = type metadata accessor for ImageReaderConfiguration();
  *(v1 + *(result + 108)) = a1;
  return result;
}

unint64_t ImageReaderConfiguration.optionsDict.getter()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB884C80);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v5 = &v101 - v4;
  v6 = sub_1B429FA88();
  v7 = *(v6 - 8);
  v104 = v6;
  v105 = v7;
  MEMORY[0x1EEE9AC00](v6, v8);
  v102 = &v101 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB884FD0);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1B42ACFA0;
  *(v10 + 32) = sub_1B429FB98();
  v103 = v10 + 32;
  v11 = *v0;
  v12 = MEMORY[0x1E69E6530];
  *(v10 + 72) = MEMORY[0x1E69E6530];
  *(v10 + 40) = v13;
  *(v10 + 48) = v11;
  *(v10 + 80) = sub_1B429FB98();
  *(v10 + 88) = v14;
  v15 = sub_1B429FB98();
  v16 = MEMORY[0x1E69E6158];
  *(v10 + 120) = MEMORY[0x1E69E6158];
  *(v10 + 96) = v15;
  *(v10 + 104) = v17;
  *(v10 + 128) = sub_1B429FB98();
  *(v10 + 136) = v18;
  v19 = type metadata accessor for ImageReaderConfiguration();
  v20 = *(v1 + v19[8]);
  v21 = MEMORY[0x1E69E6370];
  *(v10 + 168) = MEMORY[0x1E69E6370];
  *(v10 + 144) = v20;
  *(v10 + 176) = sub_1B429FB98();
  *(v10 + 184) = v22;
  v23 = *(v1 + v19[11]);
  *(v10 + 216) = v21;
  *(v10 + 192) = v23;
  *(v10 + 224) = sub_1B429FB98();
  *(v10 + 232) = v24;
  v25 = *(v1 + v19[12]);
  *(v10 + 264) = v21;
  *(v10 + 240) = v25;
  *(v10 + 272) = sub_1B429FB98();
  *(v10 + 280) = v26;
  v27 = *(v1 + v19[13]);
  *(v10 + 312) = v21;
  *(v10 + 288) = (v27 & 1) == 0;
  *(v10 + 320) = sub_1B429FB98();
  *(v10 + 328) = v28;
  v29 = *(v1 + v19[14]);
  *(v10 + 360) = v21;
  *(v10 + 336) = (v29 & 1) == 0;
  *(v10 + 368) = sub_1B429FB98();
  *(v10 + 376) = v30;
  v31 = *(v1 + v19[16]);
  *(v10 + 408) = v21;
  *(v10 + 384) = v31;
  *(v10 + 416) = sub_1B429FB98();
  *(v10 + 424) = v32;
  v33 = *(v1 + v19[17]);
  *(v10 + 456) = v21;
  *(v10 + 432) = (v33 & 1) == 0;
  *(v10 + 464) = sub_1B429FB98();
  *(v10 + 472) = v34;
  v35 = *(v1 + v19[18]);
  *(v10 + 504) = v12;
  *(v10 + 480) = v35;
  *(v10 + 512) = sub_1B429FB98();
  *(v10 + 520) = v36;
  v37 = *(v1 + v19[19]);
  *(v10 + 552) = v21;
  *(v10 + 528) = (v37 & 1) == 0;
  *(v10 + 560) = sub_1B429FB98();
  *(v10 + 568) = v38;
  v39 = *(v1 + v19[20]);
  *(v10 + 600) = v21;
  *(v10 + 576) = (v39 & 1) == 0;
  *(v10 + 608) = sub_1B429FB98();
  *(v10 + 616) = v40;
  v41 = v1 + v19[21];
  v42 = *v41;
  v43 = v41[8];
  *(v10 + 648) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB884FD8);
  *(v10 + 624) = v42;
  *(v10 + 632) = v43;
  *(v10 + 656) = sub_1B429FB98();
  *(v10 + 664) = v44;
  v45 = *(v1 + v19[22]);
  *(v10 + 696) = MEMORY[0x1E69E63B0];
  *(v10 + 672) = v45;
  *(v10 + 704) = sub_1B429FB98();
  *(v10 + 712) = v46;
  v47 = *(v1 + v19[25]);
  *(v10 + 744) = v21;
  *(v10 + 720) = v47;
  *(v10 + 752) = sub_1B429FB98();
  *(v10 + 760) = v48;
  v49 = *(v1 + v19[26]);
  *(v10 + 792) = v21;
  *(v10 + 768) = v49;
  *(v10 + 800) = sub_1B429FB98();
  *(v10 + 808) = v50;
  v51 = *(v1 + v19[27]);
  *(v10 + 840) = MEMORY[0x1E69E7668];
  *(v10 + 816) = v51;
  *(v10 + 848) = sub_1B429FB98();
  *(v10 + 856) = v52;
  LOBYTE(v109) = *(v1 + 8);
  v53 = v109;
  LOBYTE(v107) = 1;
  sub_1B4107AD0();
  sub_1B429FB58();
  v54 = sub_1B429FB98();
  *(v10 + 888) = v16;
  *(v10 + 864) = v54;
  *(v10 + 872) = v55;
  *(v10 + 896) = sub_1B429FB98();
  *(v10 + 904) = v56;
  LOBYTE(v109) = v53;
  LOBYTE(v107) = 1;
  v57 = v104;
  sub_1B429FB58();
  v58 = sub_1B429FB98();
  *(v10 + 936) = v16;
  *(v10 + 912) = v58;
  *(v10 + 920) = v59;
  *(v10 + 944) = sub_1B429FB98();
  *(v10 + 952) = v60;
  v61 = v1 + v19[10];
  v62 = *v61;
  *(v10 + 984) = v21;
  *(v10 + 960) = v62;
  *(v10 + 992) = sub_1B429FB98();
  *(v10 + 1000) = v63;
  v64 = v61[1];
  *(v10 + 1032) = v21;
  *(v10 + 1008) = v64;
  *(v10 + 1040) = sub_1B429FB98();
  *(v10 + 1048) = v65;
  v67 = *(v61 + 1);
  v66 = *(v61 + 2);
  *(v10 + 1080) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB884FE0);
  *(v10 + 1056) = v67;
  *(v10 + 1064) = v66;

  v68 = sub_1B40FC7D4(v10);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB885600);
  v69 = v105;
  swift_arrayDestroy();
  swift_deallocClassInstance();
  sub_1B40E6464(v1 + v19[7], v5, &unk_1EB884C80);
  if ((*(v69 + 48))(v5, 1, v57) == 1)
  {
    sub_1B40E26E8(v5, &unk_1EB884C80);
  }

  else
  {
    v70 = v102;
    (*(v69 + 32))(v102, v5, v57);
    v103 = sub_1B429FB98();
    v72 = v71;
    v110 = v57;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v109);
    (*(v69 + 16))(boxed_opaque_existential_0, v70, v57);
    sub_1B40E28EC(&v109, &v107);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v106 = v68;
    v75 = __swift_mutable_project_boxed_opaque_existential_0(&v107, v108);
    v76 = MEMORY[0x1EEE9AC00](v75, v75);
    v78 = &v101 - ((v77 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v79 + 16))(v78, v76);
    sub_1B410B220(v78, v103, v72, isUniquelyReferenced_nonNull_native, &v106);

    (*(v69 + 8))(v70, v57);
    __swift_destroy_boxed_opaque_existential_0(&v107);
    v68 = v106;
  }

  v80 = *(v1 + v19[23]);
  if (v80)
  {
    v81 = sub_1B429FB98();
    v83 = v82;
    v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB884E80);
    *&v109 = v80;
    sub_1B40E28EC(&v109, &v107);

    v84 = swift_isUniquelyReferenced_nonNull_native();
    v106 = v68;
    v85 = __swift_mutable_project_boxed_opaque_existential_0(&v107, v108);
    v86 = MEMORY[0x1EEE9AC00](v85, v85);
    v88 = (&v101 - ((v87 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v89 + 16))(v88, v86);
    sub_1B410B444(*v88, v81, v83, v84, &v106);

    __swift_destroy_boxed_opaque_existential_0(&v107);
    v68 = v106;
  }

  v90 = *(v1 + v19[24]);
  if (*(v90 + 16))
  {
    v91 = sub_1B429FB98();
    v93 = v92;
    v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB884E80);
    *&v109 = v90;
    sub_1B40E28EC(&v109, &v107);

    v94 = swift_isUniquelyReferenced_nonNull_native();
    v106 = v68;
    v95 = __swift_mutable_project_boxed_opaque_existential_0(&v107, v108);
    v96 = MEMORY[0x1EEE9AC00](v95, v95);
    v98 = (&v101 - ((v97 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v99 + 16))(v98, v96);
    sub_1B410B444(*v98, v91, v93, v94, &v106);

    __swift_destroy_boxed_opaque_existential_0(&v107);
    return v106;
  }

  return v68;
}

unint64_t sub_1B4107AD0()
{
  result = qword_1ED95EC38;
  if (!qword_1ED95EC38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED95EC38);
  }

  return result;
}

uint64_t ImageReaderConfiguration.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 3;
  *(a1 + 8) = 0;
  v2 = type metadata accessor for ImageReaderConfiguration();
  v3 = v2[7];
  v4 = sub_1B429FA88();
  result = (*(*(v4 - 8) + 56))(a1 + v3, 1, 1, v4);
  *(a1 + v2[8]) = 0;
  *(a1 + v2[9]) = 0;
  v6 = a1 + v2[10];
  *v6 = 0;
  *(v6 + 8) = 0;
  *(v6 + 16) = 0;
  *(a1 + v2[11]) = 0;
  *(a1 + v2[12]) = 0;
  *(a1 + v2[13]) = 1;
  *(a1 + v2[14]) = 1;
  *(a1 + v2[15]) = 1;
  *(a1 + v2[16]) = 0;
  *(a1 + v2[17]) = 1;
  *(a1 + v2[18]) = 3;
  *(a1 + v2[19]) = 1;
  *(a1 + v2[20]) = 1;
  v7 = a1 + v2[21];
  *v7 = 0;
  *(v7 + 8) = 1;
  *(a1 + v2[22]) = 0;
  *(a1 + v2[23]) = 0;
  *(a1 + v2[24]) = &unk_1F2BB0E70;
  *(a1 + v2[25]) = 0;
  *(a1 + v2[26]) = 1;
  *(a1 + v2[27]) = 1;
  return result;
}

uint64_t ImageReaderConfiguration.init(options:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  ImageReaderConfiguration.init()(a2);
  sub_1B4107CB0(a1);
}

uint64_t sub_1B4107CB0(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1B429F658();
  v217 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v5);
  v7 = &v214 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB884C90);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v216 = &v214 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v214 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB884C80);
  MEMORY[0x1EEE9AC00](v15 - 8, v16);
  v18 = &v214 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19, v20);
  v22 = &v214 - v21;
  v23 = sub_1B429FB98();
  if (*(a1 + 16))
  {
    v25 = sub_1B40F0030(v23, v24);
    v27 = v26;

    if (v27)
    {
      sub_1B40E2888(*(a1 + 56) + 32 * v25, &v222);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB884990);
      if (swift_dynamicCast())
      {
        v28 = v220;
        goto LABEL_7;
      }
    }
  }

  else
  {
  }

  v28 = *v2;
LABEL_7:
  *v2 = v28;
  v29 = sub_1B429FB98();
  if (*(a1 + 16))
  {
    v31 = sub_1B40F0030(v29, v30);
    v33 = v32;

    if (v33)
    {
      sub_1B40E2888(*(a1 + 56) + 32 * v31, &v222);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB884990);
      if (swift_dynamicCast())
      {
        v34 = v220;
        v35 = v221;
        goto LABEL_13;
      }
    }
  }

  else
  {
  }

  v34 = sub_1B429FB98();
  v35 = v36;
LABEL_13:
  sub_1B41092A0(v34, v35, &v222);

  if (v222 != 3)
  {
    *(v2 + 9) = v222;
    v38 = sub_1B429FB98();
    v40 = *(a1 + 16);
    v215 = v7;
    if (v40)
    {
      v41 = sub_1B40F0030(v38, v39);
      v43 = v42;

      if (v43)
      {
        sub_1B40E2888(*(a1 + 56) + 32 * v41, &v222);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB884990);
        if (swift_dynamicCast())
        {
          v44 = v220;
          goto LABEL_20;
        }
      }
    }

    else
    {
    }

    v44 = *(v2 + *(type metadata accessor for ImageReaderConfiguration() + 32));
LABEL_20:
    v218 = v22;
    v45 = type metadata accessor for ImageReaderConfiguration();
    *(v2 + v45[8]) = v44;
    v46 = sub_1B429FB98();
    if (*(a1 + 16))
    {
      v48 = sub_1B40F0030(v46, v47);
      v50 = v49;

      if (v50)
      {
        sub_1B40E2888(*(a1 + 56) + 32 * v48, &v222);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB884990);
        if (swift_dynamicCast())
        {
          v51 = v220;
          v52 = v45[11];
          goto LABEL_26;
        }
      }
    }

    else
    {
    }

    v52 = v45[11];
    v51 = *(v2 + v52);
LABEL_26:
    *(v2 + v52) = v51;
    v53 = sub_1B429FB98();
    if (*(a1 + 16))
    {
      v55 = sub_1B40F0030(v53, v54);
      v57 = v56;

      if (v57)
      {
        sub_1B40E2888(*(a1 + 56) + 32 * v55, &v222);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB884990);
        if (swift_dynamicCast())
        {
          v58 = v220;
          v59 = v45[12];
          goto LABEL_32;
        }
      }
    }

    else
    {
    }

    v59 = v45[12];
    v58 = *(v2 + v59);
LABEL_32:
    *(v2 + v59) = v58;
    v60 = sub_1B429FB98();
    if (*(a1 + 16))
    {
      v62 = sub_1B40F0030(v60, v61);
      v64 = v63;

      if (v64)
      {
        sub_1B40E2888(*(a1 + 56) + 32 * v62, &v222);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB884990);
        if (swift_dynamicCast())
        {
          v65 = v220 ^ 1;
          v66 = v45[13];
          goto LABEL_38;
        }
      }
    }

    else
    {
    }

    v66 = v45[13];
    v65 = *(v2 + v66);
LABEL_38:
    *(v2 + v66) = v65 & 1;
    v67 = sub_1B429FB98();
    if (*(a1 + 16))
    {
      v69 = sub_1B40F0030(v67, v68);
      v71 = v70;

      if (v71)
      {
        sub_1B40E2888(*(a1 + 56) + 32 * v69, &v222);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB884990);
        if (swift_dynamicCast())
        {
          v72 = v220 ^ 1;
          v73 = v45[14];
          goto LABEL_44;
        }
      }
    }

    else
    {
    }

    v73 = v45[14];
    v72 = *(v2 + v73);
LABEL_44:
    *(v2 + v73) = v72 & 1;
    v74 = sub_1B429FB98();
    if (*(a1 + 16))
    {
      v76 = sub_1B40F0030(v74, v75);
      v78 = v77;

      if (v78)
      {
        sub_1B40E2888(*(a1 + 56) + 32 * v76, &v222);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB884990);
        if (swift_dynamicCast())
        {
          v79 = v220;
          v80 = v45[16];
          goto LABEL_50;
        }
      }
    }

    else
    {
    }

    v80 = v45[16];
    v79 = *(v2 + v80);
LABEL_50:
    *(v2 + v80) = v79;
    v81 = sub_1B429FB98();
    if (*(a1 + 16))
    {
      v83 = sub_1B40F0030(v81, v82);
      v85 = v84;

      if (v85)
      {
        sub_1B40E2888(*(a1 + 56) + 32 * v83, &v222);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB884990);
        if (swift_dynamicCast())
        {
          v86 = v220 ^ 1;
          v87 = v45[17];
          goto LABEL_56;
        }
      }
    }

    else
    {
    }

    v87 = v45[17];
    v86 = *(v2 + v87);
LABEL_56:
    *(v2 + v87) = v86 & 1;
    v88 = sub_1B429FB98();
    if (*(a1 + 16))
    {
      v90 = sub_1B40F0030(v88, v89);
      v92 = v91;

      if (v92)
      {
        sub_1B40E2888(*(a1 + 56) + 32 * v90, &v222);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB884990);
        if (swift_dynamicCast())
        {
          v93 = v220;
          v94 = v45[18];
          goto LABEL_62;
        }
      }
    }

    else
    {
    }

    v94 = v45[18];
    v93 = *(v2 + v94);
LABEL_62:
    *(v2 + v94) = v93;
    v95 = sub_1B429FB98();
    if (*(a1 + 16))
    {
      v97 = sub_1B40F0030(v95, v96);
      v99 = v98;

      if (v99)
      {
        sub_1B40E2888(*(a1 + 56) + 32 * v97, &v222);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB884990);
        if (swift_dynamicCast())
        {
          v100 = v220 ^ 1;
          v101 = v45[19];
          goto LABEL_68;
        }
      }
    }

    else
    {
    }

    v101 = v45[19];
    v100 = *(v2 + v101);
LABEL_68:
    *(v2 + v101) = v100 & 1;
    v102 = sub_1B429FB98();
    if (*(a1 + 16))
    {
      v104 = sub_1B40F0030(v102, v103);
      v106 = v105;

      if (v106)
      {
        sub_1B40E2888(*(a1 + 56) + 32 * v104, &v222);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB884990);
        if (swift_dynamicCast())
        {
          v107 = v220 ^ 1;
          v108 = v45[20];
          goto LABEL_74;
        }
      }
    }

    else
    {
    }

    v108 = v45[20];
    v107 = *(v2 + v108);
LABEL_74:
    *(v2 + v108) = v107 & 1;
    v109 = sub_1B429FB98();
    if (*(a1 + 16))
    {
      v111 = sub_1B40F0030(v109, v110);
      v113 = v112;

      if (v113)
      {
        sub_1B40E2888(*(a1 + 56) + 32 * v111, &v222);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB884990);
        if (swift_dynamicCast())
        {
          v114 = 0;
          v115 = v220;
          v116 = v45[21];
          goto LABEL_80;
        }
      }
    }

    else
    {
    }

    v116 = v45[21];
    v115 = *(v2 + v116);
    v114 = *(v2 + v116 + 8);
LABEL_80:
    v117 = v2 + v116;
    *v117 = v115;
    *(v117 + 8) = v114;
    v118 = sub_1B429FB98();
    if (*(a1 + 16))
    {
      v120 = sub_1B40F0030(v118, v119);
      v122 = v121;

      if (v122)
      {
        sub_1B40E2888(*(a1 + 56) + 32 * v120, &v222);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB884990);
        if (swift_dynamicCast())
        {
          v123 = v220;
          v124 = v45[22];
          goto LABEL_86;
        }
      }
    }

    else
    {
    }

    v124 = v45[22];
    v123 = *(v2 + v124);
LABEL_86:
    *(v2 + v124) = v123;
    v125 = sub_1B429FB98();
    if (*(a1 + 16))
    {
      v127 = sub_1B40F0030(v125, v126);
      v129 = v128;

      if (v129)
      {
        sub_1B40E2888(*(a1 + 56) + 32 * v127, &v222);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB884990);
        if (swift_dynamicCast())
        {
          v130 = v220;
          v131 = v45[25];
          goto LABEL_92;
        }
      }
    }

    else
    {
    }

    v131 = v45[25];
    v130 = *(v2 + v131);
LABEL_92:
    *(v2 + v131) = v130;
    v132 = sub_1B429FB98();
    if (*(a1 + 16))
    {
      v134 = sub_1B40F0030(v132, v133);
      v136 = v135;

      if (v136)
      {
        sub_1B40E2888(*(a1 + 56) + 32 * v134, &v222);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB884990);
        if (swift_dynamicCast())
        {
          v137 = v220;
          v138 = v45[26];
          goto LABEL_98;
        }
      }
    }

    else
    {
    }

    v138 = v45[26];
    v137 = *(v2 + v138);
LABEL_98:
    *(v2 + v138) = v137;
    v139 = sub_1B429FB98();
    if (*(a1 + 16))
    {
      v141 = sub_1B40F0030(v139, v140);
      v143 = v142;

      if (v143)
      {
        sub_1B40E2888(*(a1 + 56) + 32 * v141, &v222);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB884990);
        if (swift_dynamicCast())
        {
          v144 = v220;
          v145 = v45[27];
          goto LABEL_104;
        }
      }
    }

    else
    {
    }

    v145 = v45[27];
    v144 = *(v2 + v145);
LABEL_104:
    *(v2 + v145) = v144;
    v146 = sub_1B429FB98();
    v148 = *(a1 + 16);
    v219 = v14;
    if (v148)
    {
      v149 = sub_1B40F0030(v146, v147);
      v151 = v150;

      if (v151)
      {
        sub_1B40E2888(*(a1 + 56) + 32 * v149, &v222);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB884990);
        v152 = sub_1B429FA88();
        v153 = swift_dynamicCast();
        v154 = *(v152 - 8);
        v155 = *(v154 + 56);
        v155(v18, v153 ^ 1u, 1, v152);
        if ((*(v154 + 48))(v18, 1, v152) != 1)
        {
          v157 = v218;
          (*(v154 + 32))(v218, v18, v152);
          v156 = v157;
          v155(v157, 0, 1, v152);
          goto LABEL_113;
        }

LABEL_110:
        v156 = v218;
        sub_1B40E6464(v2 + v45[7], v218, &unk_1EB884C80);
        sub_1B429FA88();
        if ((*(*(v152 - 8) + 48))(v18, 1, v152) != 1)
        {
          sub_1B40E26E8(v18, &unk_1EB884C80);
        }

LABEL_113:
        sub_1B40FC3A8(v156, v2 + v45[7]);
        v158 = sub_1B429FB98();
        if (*(a1 + 16) && (v160 = sub_1B40F0030(v158, v159), (v161 & 1) != 0))
        {
          sub_1B40E2888(*(a1 + 56) + 32 * v160, &v222);
        }

        else
        {
          v222 = 0u;
          v223 = 0u;
        }

        if (*(&v223 + 1))
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB884990);
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB884E80);
          if (swift_dynamicCast())
          {
            v162 = v220;
            v163 = v45[23];
LABEL_122:

            *(v2 + v163) = v162;
            v164 = sub_1B429FB98();
            if (*(a1 + 16) && (v166 = sub_1B40F0030(v164, v165), (v167 & 1) != 0))
            {
              sub_1B40E2888(*(a1 + 56) + 32 * v166, &v222);
            }

            else
            {
              v222 = 0u;
              v223 = 0u;
            }

            if (*(&v223 + 1))
            {
              __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB884990);
              __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB884E80);
              if (swift_dynamicCast())
              {
                v168 = v220;
LABEL_139:
                v175 = v45[24];

                *(v2 + v175) = v168;
                v176 = sub_1B429FB98();
                if (*(a1 + 16) && (v178 = sub_1B40F0030(v176, v177), (v179 & 1) != 0))
                {
                  sub_1B40E2888(*(a1 + 56) + 32 * v178, &v222);
                }

                else
                {
                  v222 = 0u;
                  v223 = 0u;
                }

                if (*(&v223 + 1))
                {
                  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB884990);
                  if (swift_dynamicCast())
                  {
                    v181 = v220;
                    v180 = v221;
LABEL_148:
                    if (v181 == sub_1B429FB98() && v180 == v183)
                    {
                      v184 = 1;
                    }

                    else
                    {
                      v184 = sub_1B42A0678();
                    }

                    *(v2 + 8) = v184 & 1;
                    v185 = sub_1B429FB98();
                    if (*(a1 + 16) && (v187 = sub_1B40F0030(v185, v186), (v188 & 1) != 0))
                    {
                      sub_1B40E2888(*(a1 + 56) + 32 * v187, &v222);
                    }

                    else
                    {
                      v222 = 0u;
                      v223 = 0u;
                    }

                    if (*(&v223 + 1))
                    {
                      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB884990);
                      v189 = swift_dynamicCast();
                      v190 = v219;
                      if (v189)
                      {
                        v191 = v220;
                      }

                      else
                      {
                        v191 = 0;
                      }
                    }

                    else
                    {
                      sub_1B40E26E8(&v222, &qword_1EB884FE8);
                      v191 = 0;
                      v190 = v219;
                    }

                    v192 = v2 + v45[10];
                    *v192 = v191;
                    v193 = sub_1B429FB98();
                    if (*(a1 + 16) && (v195 = sub_1B40F0030(v193, v194), (v196 & 1) != 0))
                    {
                      sub_1B40E2888(*(a1 + 56) + 32 * v195, &v222);
                    }

                    else
                    {
                      v222 = 0u;
                      v223 = 0u;
                    }

                    if (*(&v223 + 1))
                    {
                      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB884990);
                      if (swift_dynamicCast())
                      {
                        v197 = v220;
LABEL_170:
                        *(v192 + 1) = v197;
                        v198 = sub_1B429FB98();
                        if (*(a1 + 16) && (v200 = sub_1B40F0030(v198, v199), (v201 & 1) != 0))
                        {
                          sub_1B40E2888(*(a1 + 56) + 32 * v200, &v222);
                        }

                        else
                        {
                          v222 = 0u;
                          v223 = 0u;
                        }

                        if (*(&v223 + 1))
                        {
                          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB884990);
                          if (swift_dynamicCast())
                          {
                            v202 = v220;
                            v203 = v221;
LABEL_189:

                            *(v192 + 8) = v202;
                            *(v192 + 16) = v203;
                            return result;
                          }
                        }

                        else
                        {
                          sub_1B40E26E8(&v222, &qword_1EB884FE8);
                        }

                        v204 = sub_1B429FB98();
                        if (*(a1 + 16) && (v206 = sub_1B40F0030(v204, v205), (v207 & 1) != 0))
                        {
                          sub_1B40E2888(*(a1 + 56) + 32 * v206, &v222);
                        }

                        else
                        {
                          v222 = 0u;
                          v223 = 0u;
                        }

                        v208 = v217;
                        v209 = (v217 + 56);
                        if (*(&v223 + 1))
                        {
                          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB884990);
                          v210 = swift_dynamicCast();
                          (*v209)(v190, v210 ^ 1u, 1, v4);
                        }

                        else
                        {
                          sub_1B40E26E8(&v222, &qword_1EB884FE8);
                          (*v209)(v190, 1, 1, v4);
                        }

                        v211 = v216;
                        sub_1B40E6464(v190, v216, &unk_1EB884C90);
                        if ((*(v208 + 48))(v211, 1, v4) == 1)
                        {
                          v202 = 0;
                          v203 = 0;
                        }

                        else
                        {
                          v212 = v215;
                          (*(v208 + 32))(v215, v211, v4);
                          v202 = sub_1B429F638();
                          v203 = v213;
                          (*(v208 + 8))(v212, v4);
                        }

                        sub_1B40E26E8(v190, &unk_1EB884C90);
                        goto LABEL_189;
                      }
                    }

                    else
                    {
                      sub_1B40E26E8(&v222, &qword_1EB884FE8);
                    }

                    v197 = 0;
                    goto LABEL_170;
                  }
                }

                else
                {
                  sub_1B40E26E8(&v222, &qword_1EB884FE8);
                }

                v181 = sub_1B429FB98();
                v180 = v182;
                goto LABEL_148;
              }
            }

            else
            {
              sub_1B40E26E8(&v222, &qword_1EB884FE8);
            }

            v169 = sub_1B429FB98();
            if (*(a1 + 16) && (v171 = sub_1B40F0030(v169, v170), (v172 & 1) != 0))
            {
              sub_1B40E2888(*(a1 + 56) + 32 * v171, &v222);
            }

            else
            {
              v222 = 0u;
              v223 = 0u;
            }

            if (*(&v223 + 1))
            {
              __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB884990);
              if (swift_dynamicCast())
              {
                v173 = v220;
                v174 = v221;
                __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8853C0);
                v168 = swift_allocObject();
                *(v168 + 16) = xmmword_1B42ACFB0;
                *(v168 + 32) = v173;
                *(v168 + 40) = v174;
                goto LABEL_139;
              }
            }

            else
            {
              sub_1B40E26E8(&v222, &qword_1EB884FE8);
            }

            v168 = *(v2 + v45[24]);

            goto LABEL_139;
          }
        }

        else
        {
          sub_1B40E26E8(&v222, &qword_1EB884FE8);
        }

        v163 = v45[23];

        goto LABEL_122;
      }
    }

    else
    {
    }

    v152 = sub_1B429FA88();
    (*(*(v152 - 8) + 56))(v18, 1, 1, v152);
    goto LABEL_110;
  }

  __break(1u);
  return result;
}

uint64_t sub_1B41092A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (sub_1B429FB98() == a1 && v6 == a2)
  {
    v10 = 0;
    goto LABEL_13;
  }

  v8 = sub_1B42A0678();

  v10 = 0;
  if (v8)
  {
    goto LABEL_14;
  }

  if (sub_1B429FB98() == a1 && v11 == a2)
  {
    v10 = 1;
    goto LABEL_13;
  }

  v13 = sub_1B42A0678();

  if (v13)
  {
    v10 = 1;
    goto LABEL_14;
  }

  v10 = 2;
  if (sub_1B429FB98() == a1 && v14 == a2)
  {
LABEL_13:

    goto LABEL_14;
  }

  v16 = sub_1B42A0678();

  if (v16)
  {
    v10 = 2;
  }

  else
  {
    v10 = 3;
  }

LABEL_14:
  *a3 = v10;
  return result;
}

uint64_t ImageReaderConfiguration.debugDescription.getter()
{
  v5 = ImageReaderConfiguration.optionsDict.getter();
  v0 = sub_1B429FB98();
  sub_1B410AB70(v0, v1, v4);

  sub_1B40E26E8(v4, &qword_1EB884FE8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB884990);
  v2 = sub_1B429FB18();

  return v2;
}

uint64_t sub_1B41094A4(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 40);
    for (i = (a2 + 40); ; i += 2)
    {
      v5 = *(v3 - 1) == *(i - 1) && *v3 == *i;
      if (!v5 && (sub_1B42A0678() & 1) == 0)
      {
        break;
      }

      v3 += 2;
      if (!--v2)
      {
        return 1;
      }
    }

    return 0;
  }

  return 1;
}

uint64_t sub_1B41098C0(uint64_t result, char a2, uint64_t a3)
{
  v4 = v3 + *(a3 + 84);
  *v4 = result;
  *(v4 + 8) = a2 & 1;
  return result;
}

uint64_t sub_1B4109944(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 92);

  *(v2 + v4) = a1;
  return result;
}

uint64_t sub_1B41099AC(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 96);

  *(v2 + v4) = a1;
  return result;
}

uint64_t sub_1B4109ABC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2 + *(a1 + 40);
  v4 = *(v3 + 1);
  v6 = *(v3 + 8);
  v5 = *(v3 + 16);
  *a2 = *v3;
  *(a2 + 1) = v4;
  *(a2 + 8) = v6;
  *(a2 + 16) = v5;
}

uint64_t sub_1B4109AE4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  ImageReaderConfiguration.init()(a2);
  sub_1B4107CB0(a1);
}

uint64_t sub_1B4109B2C()
{
  v5 = ImageReaderConfiguration.optionsDict.getter();
  v0 = sub_1B429FB98();
  sub_1B410AB70(v0, v1, v4);

  sub_1B40E26E8(v4, &qword_1EB884FE8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB884990);
  v2 = sub_1B429FB18();

  return v2;
}

uint64_t ImageReaderDebugOptions.detectorModelPath.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

uint64_t ImageReaderDebugOptions.detectorModelPath.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
  return result;
}

uint64_t sub_1B4109CDC(void *a1)
{
  v3 = sub_1B429FA68();
  v143 = *(v3 - 8);
  v144 = v3;
  MEMORY[0x1EEE9AC00](v3, v4);
  v6 = &v130 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v137 = (&v130 - v9);
  MEMORY[0x1EEE9AC00](v10, v11);
  v134 = &v130 - v12;
  MEMORY[0x1EEE9AC00](v13, v14);
  v132 = &v130 - v15;
  v136 = sub_1B429FA88();
  v140 = *(v136 - 8);
  MEMORY[0x1EEE9AC00](v136, v16);
  v131 = &v130 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v135 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB884FF0);
  MEMORY[0x1EEE9AC00](v135, v18);
  v141 = &v130 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB884C80);
  MEMORY[0x1EEE9AC00](v20 - 8, v21);
  v133 = &v130 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23, v24);
  v138 = &v130 - v25;
  MEMORY[0x1EEE9AC00](v26, v27);
  v139 = &v130 - v28;
  v30 = a1[3];
  v29 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, v30);
  v31 = (*(v29 + 24))(v30, v29);
  v32 = *(*v1 + 112);
  v33 = *v1 + 112;
  v32(v149);
  v35 = v150;
  v34 = v151;
  __swift_project_boxed_opaque_existential_0(v149, v150);
  v36 = (*(v34 + 24))(v35, v34);
  __swift_destroy_boxed_opaque_existential_0(v149);
  v142 = v32;
  if (v31 != v36)
  {
    v141 = v33;
    v60 = sub_1B41252AC();
    v62 = v143;
    v61 = v144;
    (*(v143 + 16))(v6, v60, v144);
    sub_1B40E33EC(a1, v149);

    v63 = sub_1B429FA48();
    v64 = sub_1B42A0138();
    v65 = v61;
    v66 = v6;
    if (os_log_type_enabled(v63, v64))
    {
      v67 = swift_slowAlloc();
      LODWORD(v140) = v64;
      v68 = v67;
      *v67 = 134218240;
      v69 = v150;
      v70 = v151;
      __swift_project_boxed_opaque_existential_0(v149, v150);
      v71 = v65;
      v72 = (*(v70 + 24))(v69, v70);
      v73 = __swift_destroy_boxed_opaque_existential_0(v149);
      *(v68 + 1) = v72;
      *(v68 + 6) = 2048;
      (v142)(v149, v73);
      v74 = v150;
      v75 = v151;
      __swift_project_boxed_opaque_existential_0(v149, v150);
      v76 = (*(v75 + 24))(v74, v75);
      __swift_destroy_boxed_opaque_existential_0(v149);
      *(v68 + 14) = v76;
      v65 = v71;

      _os_log_impl(&dword_1B40D2000, v63, v140, "ImageReader config mismatch. Request revision: %ld, current revision: %ld", v68, 0x16u);
      MEMORY[0x1B8C74FA0](v68, -1, -1);
    }

    else
    {
      __swift_destroy_boxed_opaque_existential_0(v149);
    }

    (*(v62 + 8))(v66, v65);
    goto LABEL_26;
  }

  v37 = a1[3];
  v38 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, v37);
  v39 = (*(v38 + 72))(v145, v37, v38);
  LOBYTE(v148) = v145[0];
  (v32)(v149, v39);
  v40 = v150;
  v41 = v151;
  __swift_project_boxed_opaque_existential_0(v149, v150);
  (*(v41 + 72))(&v153, v40, v41);
  LOBYTE(v40) = v153;
  __swift_destroy_boxed_opaque_existential_0(v149);
  v152 = v40;
  sub_1B4107AD0();
  v42 = v1;
  if ((sub_1B429FB58() & 1) == 0)
  {
    v141 = v33;
    v77 = sub_1B41252AC();
    v79 = v143;
    v78 = v144;
    v80 = v137;
    (*(v143 + 16))(v137, v77, v144);
    sub_1B40E33EC(a1, v149);

    v81 = sub_1B429FA48();
    v82 = sub_1B42A0138();

    if (os_log_type_enabled(v81, v82))
    {
      v83 = swift_slowAlloc();
      v84 = swift_slowAlloc();
      v130 = v42;
      v85 = v84;
      v148 = v84;
      *v83 = 136315394;
      v86 = v80;
      v87 = v150;
      v88 = v151;
      __swift_project_boxed_opaque_existential_0(v149, v150);
      (*(v88 + 72))(v145, v87, v88);
      LOBYTE(v153) = v145[0];
      v89 = ImageReader.Pipeline.debugDescription.getter();
      v91 = v90;
      __swift_destroy_boxed_opaque_existential_0(v149);
      v92 = sub_1B40DDE8C(v89, v91, &v148);

      *(v83 + 4) = v92;
      *(v83 + 12) = 2080;
      (v142)(v145, v93);
      v94 = v146;
      v95 = v147;
      __swift_project_boxed_opaque_existential_0(v145, v146);
      (*(v95 + 72))(&v153, v94, v95);
      LOBYTE(v92) = v153;
      __swift_destroy_boxed_opaque_existential_0(v145);
      v152 = v92;
      v96 = ImageReader.Pipeline.debugDescription.getter();
      v98 = sub_1B40DDE8C(v96, v97, &v148);

      *(v83 + 14) = v98;
      _os_log_impl(&dword_1B40D2000, v81, v82, "ImageReader pipeline mismatch. Request pipeline: %s, current pipeline: %s", v83, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1B8C74FA0](v85, -1, -1);
      MEMORY[0x1B8C74FA0](v83, -1, -1);

      (*(v79 + 8))(v86, v144);
    }

    else
    {

      (*(v79 + 8))(v80, v78);
      __swift_destroy_boxed_opaque_existential_0(v149);
    }

    goto LABEL_26;
  }

  v43 = a1[3];
  v44 = a1[4];
  v137 = a1;
  __swift_project_boxed_opaque_existential_0(a1, v43);
  v45 = v139;
  v46 = (*(v44 + 96))(v43, v44);
  v130 = v1;
  (v32)(v149, v46);
  v47 = v150;
  v48 = v151;
  __swift_project_boxed_opaque_existential_0(v149, v150);
  v49 = v138;
  (*(v48 + 96))(v47, v48);
  __swift_destroy_boxed_opaque_existential_0(v149);
  v50 = *(v135 + 48);
  v51 = v141;
  sub_1B40E6464(v45, v141, &unk_1EB884C80);
  v52 = v51;
  sub_1B40E6464(v49, v51 + v50, &unk_1EB884C80);
  v53 = *(v140 + 48);
  v54 = v51;
  v55 = v136;
  if (v53(v54, 1, v136) == 1)
  {
    sub_1B40E26E8(v49, &unk_1EB884C80);
    v56 = v141;
    sub_1B40E26E8(v45, &unk_1EB884C80);
    v57 = v53(v56 + v50, 1, v55);
    v59 = v143;
    v58 = v144;
    if (v57 == 1)
    {
      sub_1B40E26E8(v56, &unk_1EB884C80);
LABEL_20:
      v112 = v137;
      v113 = v137[3];
      v114 = v137[4];
      __swift_project_boxed_opaque_existential_0(v137, v113);
      LOBYTE(v113) = (*(v114 + 120))(v113, v114);
      v141 = v33;
      v142(v149);
      v115 = v150;
      v116 = v151;
      __swift_project_boxed_opaque_existential_0(v149, v150);
      v117 = (*(v116 + 120))(v115, v116);
      result = __swift_destroy_boxed_opaque_existential_0(v149);
      if (((v113 ^ v117) & 1) == 0)
      {
        return result;
      }

      v119 = sub_1B41252AC();
      (*(v59 + 16))(v132, v119, v58);
      sub_1B40E33EC(v112, v149);

      v120 = sub_1B429FA48();
      v121 = sub_1B42A0138();
      if (os_log_type_enabled(v120, v121))
      {
        v122 = swift_slowAlloc();
        *v122 = 67109376;
        v123 = v150;
        v124 = v151;
        __swift_project_boxed_opaque_existential_0(v149, v150);
        v125 = (*(v124 + 120))(v123, v124) & 1;
        v126 = __swift_destroy_boxed_opaque_existential_0(v149);
        *(v122 + 4) = v125;
        *(v122 + 8) = 1024;
        (v142)(v149, v126);
        v127 = v150;
        v128 = v151;
        __swift_project_boxed_opaque_existential_0(v149, v150);
        LOBYTE(v125) = (*(v128 + 120))(v127, v128);
        __swift_destroy_boxed_opaque_existential_0(v149);
        *(v122 + 10) = v125 & 1;

        _os_log_impl(&dword_1B40D2000, v120, v121, "ImageReader config mismatch. Request keepResourcesLoaded: %{BOOL}d, current keepResourcesLoaded: %{BOOL}d", v122, 0xEu);
        MEMORY[0x1B8C74FA0](v122, -1, -1);
      }

      else
      {
        __swift_destroy_boxed_opaque_existential_0(v149);
      }

      v105 = *(v59 + 8);
      v106 = v132;
      goto LABEL_25;
    }

    goto LABEL_14;
  }

  v99 = v133;
  sub_1B40E6464(v52, v133, &unk_1EB884C80);
  if (v53(v52 + v50, 1, v55) == 1)
  {
    sub_1B40E26E8(v138, &unk_1EB884C80);
    v56 = v141;
    sub_1B40E26E8(v139, &unk_1EB884C80);
    (*(v140 + 8))(v99, v55);
    v59 = v143;
    v58 = v144;
LABEL_14:
    sub_1B40E26E8(v56, &qword_1EB884FF0);
    goto LABEL_15;
  }

  v107 = v140;
  v108 = v52 + v50;
  v109 = v131;
  (*(v140 + 32))(v131, v108, v55);
  sub_1B410BF44(&qword_1EB884FF8, MEMORY[0x1E695FD20]);
  v110 = sub_1B429FB58();
  v111 = *(v107 + 8);
  v111(v109, v55);
  sub_1B40E26E8(v138, &unk_1EB884C80);
  sub_1B40E26E8(v139, &unk_1EB884C80);
  v111(v99, v55);
  sub_1B40E26E8(v52, &unk_1EB884C80);
  v59 = v143;
  v58 = v144;
  if (v110)
  {
    goto LABEL_20;
  }

LABEL_15:
  v100 = sub_1B41252AC();
  v101 = v134;
  (*(v59 + 16))(v134, v100, v58);
  v102 = sub_1B429FA48();
  v103 = sub_1B42A0138();
  if (os_log_type_enabled(v102, v103))
  {
    v104 = swift_slowAlloc();
    *v104 = 0;
    _os_log_impl(&dword_1B40D2000, v102, v103, "ImageReader config mismatch. computeDevice", v104, 2u);
    MEMORY[0x1B8C74FA0](v104, -1, -1);
  }

  v105 = *(v59 + 8);
  v106 = v101;
LABEL_25:
  v105(v106, v58);
LABEL_26:
  sub_1B40DF594();
  swift_allocError();
  *v129 = 1;
  *(v129 + 4) = 1;
  return swift_willThrow();
}

uint64_t ImageReader.Pipeline.engineClass.getter()
{
  if (*v0)
  {
    return type metadata accessor for CREngineFast();
  }

  else
  {
    return type metadata accessor for CREngineAccurate();
  }
}

_DWORD *sub_1B410AB54@<X0>(_DWORD *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 4) = 0;
  return result;
}

double sub_1B410AB70@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v4 = v3;
  v6 = sub_1B40F0030(a1, a2);
  if (v7)
  {
    v8 = v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *v3;
    v12 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1B410B07C();
      v10 = v12;
    }

    sub_1B40E28EC((*(v10 + 56) + 32 * v8), a3);
    sub_1B410AECC(v8, v10);
    *v4 = v10;
  }

  else
  {
    result = 0.0;
    *a3 = 0u;
    a3[1] = 0u;
  }

  return result;
}

uint64_t sub_1B410AC14(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB884D20);
  v33 = a2;
  result = sub_1B42A05D8();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = (*(v5 + 56) + 32 * v20);
      if (v33)
      {
        sub_1B40E28EC(v24, v34);
      }

      else
      {
        sub_1B40E2888(v24, v34);
      }

      sub_1B42A0778();
      sub_1B429FC48();
      result = sub_1B42A07A8();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      result = sub_1B40E28EC(v34, (*(v7 + 56) + 32 * v15));
      ++*(v7 + 16);
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v33 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_34;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero((v5 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
  return result;
}

uint64_t sub_1B410AECC(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1B42A0388() + 1) & ~v5;
    do
    {
      sub_1B42A0778();

      sub_1B429FC48();
      v10 = sub_1B42A07A8();

      v11 = v10 & v7;
      if (v3 >= v8)
      {
        if (v11 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v11 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v11)
      {
LABEL_10:
        v12 = *(a2 + 48);
        v13 = (v12 + 16 * v3);
        v14 = (v12 + 16 * v6);
        if (v3 != v6 || v13 >= v14 + 1)
        {
          *v13 = *v14;
        }

        v15 = *(a2 + 56);
        v16 = (v15 + 32 * v3);
        v17 = (v15 + 32 * v6);
        if (v3 != v6 || v16 >= v17 + 2)
        {
          v9 = v17[1];
          *v16 = *v17;
          v16[1] = v9;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v18 = *(a2 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v20;
    ++*(a2 + 36);
  }

  return result;
}

void *sub_1B410B07C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB884D20);
  v2 = *v0;
  v3 = sub_1B42A05C8();
  v4 = v3;
  if (*(v2 + 16))
  {
    v24 = v1;
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v22 = 32 * v17;
        sub_1B40E2888(*(v2 + 56) + 32 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_1B40E28EC(v25, (*(v4 + 56) + v22));
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {

        v1 = v24;
        goto LABEL_21;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v1 = v4;
  }

  return result;
}

_OWORD *sub_1B410B220(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  v10 = sub_1B429FA88();
  v31 = v10;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v30);
  (*(*(v10 - 8) + 32))(boxed_opaque_existential_0, a1, v10);
  v12 = *a5;
  v14 = sub_1B40F0030(a2, a3);
  v15 = v12[2];
  v16 = (v13 & 1) == 0;
  v17 = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_14;
  }

  v18 = v13;
  v19 = v12[3];
  if (v19 >= v17 && (a4 & 1) != 0)
  {
LABEL_7:
    v20 = *a5;
    if (v18)
    {
LABEL_8:
      v21 = (v20[7] + 32 * v14);
      __swift_destroy_boxed_opaque_existential_0(v21);
      return sub_1B40E28EC(v30, v21);
    }

    goto LABEL_11;
  }

  if (v19 >= v17 && (a4 & 1) == 0)
  {
    sub_1B410B07C();
    goto LABEL_7;
  }

  sub_1B410AC14(v17, a4 & 1);
  v23 = sub_1B40F0030(a2, a3);
  if ((v18 & 1) != (v24 & 1))
  {
LABEL_14:
    result = sub_1B42A06E8();
    __break(1u);
    return result;
  }

  v14 = v23;
  v20 = *a5;
  if (v18)
  {
    goto LABEL_8;
  }

LABEL_11:
  v25 = __swift_mutable_project_boxed_opaque_existential_0(v30, v31);
  v26 = MEMORY[0x1EEE9AC00](v25, v25);
  v28 = v30 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v29 + 16))(v28, v26);
  sub_1B410B6EC(v14, a2, a3, v28, v20);

  return __swift_destroy_boxed_opaque_existential_0(v30);
}

_OWORD *sub_1B410B444(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB884E80);
  v30 = v10;
  *&v29 = a1;
  v11 = *a5;
  v13 = sub_1B40F0030(a2, a3);
  v14 = v11[2];
  v15 = (v12 & 1) == 0;
  v16 = v14 + v15;
  if (__OFADD__(v14, v15))
  {
    __break(1u);
    goto LABEL_14;
  }

  v17 = v12;
  v18 = v11[3];
  if (v18 >= v16 && (a4 & 1) != 0)
  {
LABEL_7:
    v19 = *a5;
    if (v17)
    {
LABEL_8:
      v20 = (v19[7] + 32 * v13);
      __swift_destroy_boxed_opaque_existential_0(v20);
      return sub_1B40E28EC(&v29, v20);
    }

    goto LABEL_11;
  }

  if (v18 >= v16 && (a4 & 1) == 0)
  {
    sub_1B410B07C();
    goto LABEL_7;
  }

  sub_1B410AC14(v16, a4 & 1);
  v22 = sub_1B40F0030(a2, a3);
  if ((v17 & 1) != (v23 & 1))
  {
LABEL_14:
    result = sub_1B42A06E8();
    __break(1u);
    return result;
  }

  v13 = v22;
  v19 = *a5;
  if (v17)
  {
    goto LABEL_8;
  }

LABEL_11:
  v24 = __swift_mutable_project_boxed_opaque_existential_0(&v29, v10);
  v25 = MEMORY[0x1EEE9AC00](v24, v24);
  v27 = (&v29 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v28 + 16))(v27, v25);
  sub_1B410B63C(v13, a2, a3, *v27, v19);

  return __swift_destroy_boxed_opaque_existential_0(&v29);
}

_OWORD *sub_1B410B63C(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB884E80);
  *&v15 = a4;
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v10 = (a5[6] + 16 * a1);
  *v10 = a2;
  v10[1] = a3;
  result = sub_1B40E28EC(&v15, (a5[7] + 32 * a1));
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

_OWORD *sub_1B410B6EC(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v10 = sub_1B429FA88();
  v18 = v10;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v17);
  (*(*(v10 - 8) + 32))(boxed_opaque_existential_0, a4, v10);
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v12 = (a5[6] + 16 * a1);
  *v12 = a2;
  v12[1] = a3;
  result = sub_1B40E28EC(&v17, (a5[7] + 32 * a1));
  v14 = a5[2];
  v15 = __OFADD__(v14, 1);
  v16 = v14 + 1;
  if (v15)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v16;
  }

  return result;
}

uint64_t _s15TextRecognition23ImageReaderDebugOptionsV2eeoiySbAC_ACtFZ_0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  result = 0;
  if (*a1 == *a2 && ((a1[1] ^ a2[1]) & 1) == 0)
  {
    v4 = *(a1 + 2);
    v5 = *(a2 + 2);
    if (v4)
    {
      if (v5)
      {
        if (*(a1 + 1) == *(a2 + 1) && v4 == v5)
        {
          return 1;
        }

        if (sub_1B42A0678())
        {
          return 1;
        }
      }
    }

    else if (!v5)
    {
      return 1;
    }

    return 0;
  }

  return result;
}

BOOL _s15TextRecognition24ImageReaderConfigurationV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B429FA88();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB884C80);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v12 = &v41 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB884FF0);
  MEMORY[0x1EEE9AC00](v13, v14);
  v17 = &v41 - v16;
  if (*a1 != *a2)
  {
    return 0;
  }

  v18 = v15;
  v47 = *(a1 + 8);
  v46 = *(a2 + 8);
  sub_1B4107AD0();
  if ((sub_1B429FB58() & 1) == 0)
  {
    return 0;
  }

  v45 = *(a1 + 9);
  v44 = *(a2 + 9);
  sub_1B410C85C();
  if ((sub_1B429FB58() & 1) == 0)
  {
    return 0;
  }

  v42 = type metadata accessor for ImageReaderConfiguration();
  v19 = v42[7];
  v20 = *(v18 + 48);
  sub_1B40E6464(a1 + v19, v17, &unk_1EB884C80);
  v43 = v20;
  sub_1B40E6464(a2 + v19, &v17[v20], &unk_1EB884C80);
  v21 = *(v5 + 48);
  if (v21(v17, 1, v4) == 1)
  {
    if (v21(&v17[v43], 1, v4) == 1)
    {
      sub_1B40E26E8(v17, &unk_1EB884C80);
      goto LABEL_11;
    }

LABEL_9:
    sub_1B40E26E8(v17, &qword_1EB884FF0);
    return 0;
  }

  sub_1B40E6464(v17, v12, &unk_1EB884C80);
  v22 = v43;
  if (v21(&v17[v43], 1, v4) == 1)
  {
    (*(v5 + 8))(v12, v4);
    goto LABEL_9;
  }

  (*(v5 + 32))(v8, &v17[v22], v4);
  sub_1B410BF44(&qword_1EB884FF8, MEMORY[0x1E695FD20]);
  v23 = sub_1B429FB58();
  v24 = *(v5 + 8);
  v24(v8, v4);
  v24(v12, v4);
  sub_1B40E26E8(v17, &unk_1EB884C80);
  if ((v23 & 1) == 0)
  {
    return 0;
  }

LABEL_11:
  v25 = v42;
  if (*(a1 + v42[8]) != *(a2 + v42[8]) || *(a1 + v42[9]) != *(a2 + v42[9]))
  {
    return 0;
  }

  result = 0;
  v27 = v42[10];
  v28 = a1 + v27;
  v29 = *(a1 + v27);
  v30 = (a2 + v27);
  if (v29 == *v30 && ((*(v28 + 1) ^ v30[1]) & 1) == 0)
  {
    v31 = *(v28 + 16);
    v32 = *(v30 + 2);
    if (v31)
    {
      if (!v32 || (*(v28 + 8) != *(v30 + 1) || v31 != v32) && (sub_1B42A0678() & 1) == 0)
      {
        return 0;
      }
    }

    else if (v32)
    {
      return 0;
    }

    if (*(a1 + v25[11]) != *(a2 + v25[11]) || *(a1 + v25[12]) != *(a2 + v25[12]) || *(a1 + v25[13]) != *(a2 + v25[13]) || *(a1 + v25[14]) != *(a2 + v25[14]) || *(a1 + v25[15]) != *(a2 + v25[15]) || *(a1 + v25[16]) != *(a2 + v25[16]) || *(a1 + v42[17]) != *(a2 + v42[17]) || *(a1 + v42[18]) != *(a2 + v42[18]) || *(a1 + v42[19]) != *(a2 + v42[19]) || *(a1 + v42[20]) != *(a2 + v42[20]))
    {
      return 0;
    }

    v33 = v42[21];
    v34 = (a1 + v33);
    v35 = *(a1 + v33 + 8);
    v36 = (a2 + v33);
    v37 = *(a2 + v33 + 8);
    if (v35)
    {
      if (!v37)
      {
        return 0;
      }
    }

    else
    {
      if (*v34 != *v36)
      {
        LOBYTE(v37) = 1;
      }

      if (v37)
      {
        return 0;
      }
    }

    if (*(a1 + v42[22]) == *(a2 + v42[22]))
    {
      v38 = v42[23];
      v39 = *(a1 + v38);
      v40 = *(a2 + v38);
      if (v39)
      {
        if (v40 && (sub_1B41094A4(v39, v40) & 1) != 0)
        {
LABEL_46:
          if ((sub_1B41094A4(*(a1 + v42[24]), *(a2 + v42[24])) & 1) != 0 && *(a1 + v42[25]) == *(a2 + v42[25]) && *(a1 + v42[26]) == *(a2 + v42[26]))
          {
            return *(a1 + v42[27]) == *(a2 + v42[27]);
          }
        }
      }

      else if (!v40)
      {
        goto LABEL_46;
      }
    }

    return 0;
  }

  return result;
}

uint64_t __swift_mutable_project_boxed_opaque_existential_0(uint64_t a1, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return result;
}

uint64_t sub_1B410BEC0(uint64_t a1)
{
  *(a1 + 8) = sub_1B410BF44(&qword_1ED95E858, type metadata accessor for ImageReaderConfiguration);
  result = sub_1B410BF44(qword_1ED95E860, type metadata accessor for ImageReaderConfiguration);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1B410BF44(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1B410C53C()
{
  v0 = MEMORY[0x1E69E6530];
  sub_1B40FCC58();
  if (v1 <= 0x3F)
  {
    sub_1B410C74C(319, &qword_1ED95E0B0, v0, MEMORY[0x1E69E6720]);
    if (v2 <= 0x3F)
    {
      sub_1B410C6C0();
      if (v3 <= 0x3F)
      {
        sub_1B410C74C(319, &qword_1ED95E0D8, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
        if (v4 <= 0x3F)
        {
          type metadata accessor for CGImagePropertyOrientation(319);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_1B410C6C0()
{
  if (!qword_1ED95E0C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EB884E80);
    v0 = sub_1B42A0288();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED95E0C8);
    }
  }
}

void sub_1B410C74C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_1B410C79C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 24))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 16);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_1B410C7F8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

unint64_t sub_1B410C85C()
{
  result = qword_1ED95E390;
  if (!qword_1ED95E390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED95E390);
  }

  return result;
}

uint64_t sub_1B410C8B0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8853C0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1B42AD230;
  *(v0 + 32) = sub_1B429FB98();
  *(v0 + 40) = v1;
  *(v0 + 48) = sub_1B429FB98();
  *(v0 + 56) = v2;
  *(v0 + 64) = sub_1B429FB98();
  *(v0 + 72) = v3;
  result = sub_1B429FB98();
  *(v0 + 80) = result;
  *(v0 + 88) = v5;
  qword_1ED95F600 = v0;
  return result;
}

uint64_t sub_1B410CB00()
{
  v0 = sub_1B429FB98();
  v2 = v1;
  if (v0 == sub_1B429FB98() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_1B42A0678();
  }

  return v5 & 1;
}

uint64_t sub_1B410CB9C()
{
  v0 = sub_1B429FB98();
  v2 = v1;
  if (v0 == sub_1B429FB98() && v2 == v3)
  {
    v6 = 1;
LABEL_8:

    goto LABEL_9;
  }

  v5 = sub_1B42A0678();

  if ((v5 & 1) == 0)
  {
    if (v0 == sub_1B429FB98() && v2 == v8)
    {
      v6 = 1;
    }

    else
    {
      v6 = sub_1B42A0678();
    }

    goto LABEL_8;
  }

  v6 = 1;
LABEL_9:

  return v6 & 1;
}

uint64_t sub_1B410CCA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  v5 = sub_1B429FB98();
  LOBYTE(a4) = a4(v5);

  return a4 & 1;
}

uint64_t sub_1B410CD54(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 40);
    do
    {
      v8 = *v7;
      v12[0] = *(v7 - 1);
      v12[1] = v8;

      v9 = a1(v12);

      if (v3)
      {
        break;
      }

      v10 = v6-- == 0;
      v7 += 2;
    }

    while (((v9 | v10) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

uint64_t sub_1B410CE1C(uint64_t a1, uint64_t a2)
{
  if (sub_1B429FB98() == a1 && v4 == a2)
  {
    goto LABEL_19;
  }

  v6 = sub_1B42A0678();

  if ((v6 & 1) == 0)
  {
    if (sub_1B429FB98() != a1 || v8 != a2)
    {
      v10 = sub_1B42A0678();

      if (v10)
      {
        goto LABEL_6;
      }

      if (sub_1B429FB98() != a1 || v11 != a2)
      {
        v13 = sub_1B42A0678();

        if (v13)
        {
          goto LABEL_6;
        }

        if (sub_1B429FB98() != a1 || v14 != a2)
        {
          v16 = sub_1B42A0678();

          if (v16)
          {
            goto LABEL_6;
          }

          if (sub_1B429FB98() != a1 || v17 != a2)
          {
            v18 = sub_1B42A0678();

            if (v18)
            {
              goto LABEL_6;
            }

            if (sub_1B429FB98() != a1 || v19 != a2)
            {
              v20 = sub_1B42A0678();

              if (v20)
              {
                goto LABEL_6;
              }

              if (sub_1B429FB98() != a1 || v21 != a2)
              {
                v22 = sub_1B42A0678();

                if (v22)
                {
                  goto LABEL_6;
                }

                if (sub_1B429FB98() != a1 || v23 != a2)
                {
                  v24 = sub_1B42A0678();

                  if (v24)
                  {
                    goto LABEL_6;
                  }

                  if (sub_1B429FB98() != a1 || v25 != a2)
                  {
                    v26 = sub_1B42A0678();

                    if (v26)
                    {
                      goto LABEL_6;
                    }

                    if (sub_1B429FB98() != a1 || v27 != a2)
                    {
                      v28 = sub_1B42A0678();

                      if (v28)
                      {
                        goto LABEL_6;
                      }

                      if (sub_1B429FB98() != a1 || v29 != a2)
                      {
                        v30 = sub_1B42A0678();

                        if (v30)
                        {
                          goto LABEL_6;
                        }

                        if (sub_1B429FB98() != a1 || v31 != a2)
                        {
                          v32 = sub_1B42A0678();

                          if (v32)
                          {
                            goto LABEL_6;
                          }

                          if (sub_1B429FB98() != a1 || v33 != a2)
                          {
                            v34 = sub_1B42A0678();

                            if (v34)
                            {
                              goto LABEL_6;
                            }

                            if (sub_1B429FB98() != a1 || v35 != a2)
                            {
                              v36 = sub_1B42A0678();

                              if (v36)
                              {
                                goto LABEL_6;
                              }

                              if (sub_1B429FB98() != a1 || v37 != a2)
                              {
                                v38 = sub_1B42A0678();

                                if (v38)
                                {
                                  goto LABEL_6;
                                }

                                if (sub_1B429FB98() != a1 || v39 != a2)
                                {
                                  v40 = sub_1B42A0678();

                                  if (v40)
                                  {
                                    goto LABEL_6;
                                  }

                                  if (sub_1B429FB98() != a1 || v41 != a2)
                                  {
                                    v42 = sub_1B42A0678();

                                    if (v42)
                                    {
                                      goto LABEL_6;
                                    }

                                    if (sub_1B429FB98() != a1 || v43 != a2)
                                    {
                                      v44 = sub_1B42A0678();

                                      if (v44)
                                      {
                                        goto LABEL_6;
                                      }

                                      if (sub_1B429FB98() != a1 || v45 != a2)
                                      {
                                        v7 = sub_1B42A0678();
                                        goto LABEL_20;
                                      }
                                    }
                                  }
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }

LABEL_19:
    v7 = 1;
LABEL_20:

    return v7 & 1;
  }

LABEL_6:
  v7 = 1;
  return v7 & 1;
}

uint64_t sub_1B410D3F0(uint64_t a1, uint64_t a2)
{
  if (sub_1B429FB98() == a1 && v4 == a2)
  {
    goto LABEL_17;
  }

  v6 = sub_1B42A0678();

  if ((v6 & 1) == 0)
  {
    if (sub_1B429FB98() != a1 || v8 != a2)
    {
      v10 = sub_1B42A0678();

      if (v10)
      {
        goto LABEL_6;
      }

      if (sub_1B429FB98() != a1 || v11 != a2)
      {
        v7 = sub_1B42A0678();
LABEL_18:

        return v7 & 1;
      }
    }

LABEL_17:
    v7 = 1;
    goto LABEL_18;
  }

LABEL_6:
  v7 = 1;
  return v7 & 1;
}

uint64_t sub_1B410D504(void *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_1B42A0678() & 1;
  }
}

uint64_t CRScript.hashValue.getter()
{
  v1 = *v0;
  sub_1B42A0778();
  MEMORY[0x1B8C73030](v1);
  return sub_1B42A07A8();
}

unint64_t sub_1B410D624()
{
  result = qword_1ED95EE80;
  if (!qword_1ED95EE80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED95EE80);
  }

  return result;
}

unint64_t sub_1B410D67C()
{
  result = qword_1EB885000;
  if (!qword_1EB885000)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB885008);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB885000);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CRScript(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFA)
  {
    goto LABEL_17;
  }

  if (a2 + 6 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 6) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 6;
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

      return (*a1 | (v4 << 8)) - 6;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 6;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v8 = v6 - 7;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for CRScript(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFA)
  {
    v4 = 0;
  }

  if (a2 > 0xF9)
  {
    v5 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
    *result = a2 + 6;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_1B410D840()
{
  swift_beginAccess();
  v1 = *(v0 + 120);

  return v1;
}

uint64_t sub_1B410D88C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 120) = a1;
  *(v2 + 128) = a2;
}

uint64_t sub_1B410D8E0@<X0>(_BYTE *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = *(v1 + 136);
  return result;
}

uint64_t sub_1B410D924(char *a1)
{
  v2 = *a1;
  result = swift_beginAccess();
  *(v1 + 136) = v2;
  return result;
}

uint64_t CRLanguageRecognitionContext.__allocating_init(script:defaultLocale:)(uint64_t a1, _BYTE *a2)
{
  v4 = swift_allocObject();
  LOBYTE(a2) = *a2;
  swift_defaultActor_initialize();
  *(v4 + 112) = MEMORY[0x1E69E7CC0];
  *(v4 + 120) = 0;
  *(v4 + 128) = 0xE000000000000000;
  *(v4 + 136) = 30;
  *(v4 + 144) = a1;
  *(v4 + 152) = a2;
  return v4;
}

uint64_t CRLanguageRecognitionContext.init(script:defaultLocale:)(uint64_t a1, char *a2)
{
  v4 = *a2;
  swift_defaultActor_initialize();
  *(v2 + 112) = MEMORY[0x1E69E7CC0];
  *(v2 + 120) = 0;
  *(v2 + 128) = 0xE000000000000000;
  *(v2 + 136) = 30;
  *(v2 + 144) = a1;
  *(v2 + 152) = v4;
  return v2;
}

void sub_1B410DA80(void *a1, uint64_t a2)
{
  v3 = v2;
  (*(*v2 + 176))(&v33);
  if (v33 == 30)
  {
    v7 = (*(*v2 + 144))(&v33);
    v9 = v8;
    v10 = a1;
    MEMORY[0x1B8C72680]();
    if (*((*v9 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v9 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1B429FE08();
    }

    sub_1B429FE38();
    v7(&v33, 0);
    if (![(CRFeatureSequenceRecognitionInfo *)v10 transientDecodingResult])
    {
      goto LABEL_30;
    }

    objc_opt_self();
    v12 = swift_dynamicCastObjCClassUnconditional();
    type metadata accessor for EmptyPromise();
    [v12 setLanguageRecognitionPromise_];

    v13 = [v12 greedyDecodingResult];
    if (!v13)
    {
LABEL_25:
      (*(*v3 + 152))(v13);
      v32 = sub_1B429FC68();

      if (v32 >= 51)
      {
        (*(*v3 + 216))(a2, 0);
      }

      swift_unknownObjectRelease();
      return;
    }

    v14 = v13;
    v15 = [v13 candidates];

    sub_1B410DEF0();
    v16 = sub_1B429FDF8();

    if (v16 >> 62)
    {
      if (sub_1B42A0518())
      {
        goto LABEL_8;
      }
    }

    else if (*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_8:
      if ((v16 & 0xC000000000000001) != 0)
      {
        v17 = MEMORY[0x1B8C72CD0](0, v16);
LABEL_11:
        v18 = v17;

        v19 = [v18 fullString];

        sub_1B429FB98();
        v20 = sub_1B410DFAC();
        v22 = v21;

        v24 = HIBYTE(v22) & 0xF;
        if ((v22 & 0x2000000000000000) == 0)
        {
          v24 = v20 & 0xFFFFFFFFFFFFLL;
        }

        if (v24)
        {
          v25 = (*(*v3 + 152))(v23);
          v27 = v26;

          v28 = HIBYTE(v27) & 0xF;
          if ((v27 & 0x2000000000000000) == 0)
          {
            v28 = v25 & 0xFFFFFFFFFFFFLL;
          }

          if (v28)
          {
            v33 = 32;
            v34 = 0xE100000000000000;
            MEMORY[0x1B8C72530](v20, v22);

            v29 = v33;
            v30 = v34;
            v31 = (*(*v3 + 168))(&v33);
            MEMORY[0x1B8C72530](v29, v30);

            v13 = v31(&v33, 0);
          }

          else
          {
            v13 = (*(*v3 + 160))(v20, v22);
          }

          goto LABEL_25;
        }

        goto LABEL_24;
      }

      if (*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v17 = *(v16 + 32);
        goto LABEL_11;
      }

      __break(1u);
LABEL_30:
      __break(1u);
      return;
    }

LABEL_24:

    goto LABEL_25;
  }

  sub_1B410E8C4(a1, v6);
}

unint64_t sub_1B410DEF0()
{
  result = qword_1ED95E058;
  if (!qword_1ED95E058)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ED95E058);
  }

  return result;
}

void *sub_1B410DF3C(uint64_t a1)
{
  v2 = sub_1B42A0378();
  if (v2 == 1 << *(a1 + 32))
  {
    return 0;
  }

  v4 = sub_1B410F768(v2, *(a1 + 36), 0, a1);
  v5 = v4;
  return v4;
}

uint64_t sub_1B410DFAC()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB885010);
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = v14 - v3;
  v5 = sub_1B429FB88();
  if (qword_1ED95F198 != -1)
  {
    swift_once();
  }

  v6 = sub_1B429F578();
  __swift_project_value_buffer(v6, qword_1ED95F1A0);
  v7 = sub_1B429F528();
  v8 = sub_1B429FB88();
  v9 = [v5 _crStringByReplacingCharactersInSet_withString_];

  v10 = sub_1B429FB98();
  v12 = v11;

  v14[2] = v10;
  v14[3] = v12;
  sub_1B429F988();
  v14[0] = 32;
  v14[1] = 0xE100000000000000;
  sub_1B410F110();
  sub_1B410F164();
  sub_1B410F1B8();
  sub_1B42A00E8();
  (*(v1 + 8))(v4, v0);

  return v14[4];
}

void *sub_1B410E1E0(uint64_t a1, char a2)
{
  v3 = v2;
  v6 = *(*v2 + 176);
  result = v6(v36);
  if (LOBYTE(v36[0]) != 30)
  {
    return result;
  }

  v8 = *(*v2 + 152);
  v8(result);
  v9 = sub_1B429FC68();

  if (v9 >= 16)
  {
    os_unfair_lock_lock(a1);
    isCurrentExecutor = swift_task_isCurrentExecutor();
    if ((isCurrentExecutor & 1) == 0)
    {
      isCurrentExecutor = swift_task_reportUnexpectedExecutor();
    }

    v8(isCurrentExecutor);
    String._predictedCRLocale(recognizer:resetContext:)(*(a1 + 8), 1);

    (*(*v2 + 184))(v36);
    os_unfair_lock_unlock(a1);
  }

  v11 = v6(v36);
  if (LOBYTE(v36[0]) == 30 && (a2 & 1) != 0)
  {
    LOBYTE(v36[0]) = v2[152];
    v11 = (*(*v2 + 184))(v36);
  }

  result = (v6)(v36, v11);
  if (LOBYTE(v36[0]) == 30)
  {
    return result;
  }

  v12 = (*(*v2 + 128))(result);
  v13 = v12;
  if (!(v12 >> 62))
  {
    v14 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v14)
    {
      goto LABEL_12;
    }
  }

LABEL_33:
  v14 = sub_1B42A0518();
  if (!v14)
  {
  }

LABEL_12:
  v15 = 0;
  v16 = v13 & 0xC000000000000001;
  v17 = v13 & 0xFFFFFFFFFFFFFF8;
  v31 = v13 & 0xFFFFFFFFFFFFFF8;
  while (1)
  {
    if (v16)
    {
      v20 = MEMORY[0x1B8C72CD0](v15, v13);
      v22 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        goto LABEL_31;
      }
    }

    else
    {
      if (v15 >= *(v17 + 16))
      {
        goto LABEL_32;
      }

      v20 = *(v13 + 8 * v15 + 32);
      v22 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
LABEL_31:
        __break(1u);
LABEL_32:
        __break(1u);
        goto LABEL_33;
      }
    }

    v32 = v22;
    v33 = v20;
    result = [(CRFeatureSequenceRecognitionInfo *)v20 transientDecodingResult];
    if (!result)
    {
      break;
    }

    objc_opt_self();
    v23 = swift_dynamicCastObjCClassUnconditional();
    v6(v36);
    if (LOBYTE(v36[0]) == 30)
    {
      swift_unknownObjectRelease();
    }

    else
    {
      LOBYTE(v34) = v36[0];
      CRLocale.rawValue.getter();
      v25 = v16;
      v26 = v3;
      v27 = v13;
      v28 = v14;
      v29 = v6;
      v30 = sub_1B429FB88();

      [v23 setDecodingLocale_];
      swift_unknownObjectRelease();

      v6 = v29;
      v14 = v28;
      v13 = v27;
      v3 = v26;
      v16 = v25;
      v17 = v31;
    }

    result = [(CRFeatureSequenceRecognitionInfo *)v33 transientDecodingResult];
    if (!result)
    {
      goto LABEL_37;
    }

    objc_opt_self();
    if ([swift_dynamicCastObjCClassUnconditional() languageRecognitionPromise])
    {
      sub_1B42A0348();
      swift_unknownObjectRelease();
    }

    else
    {
      v34 = 0u;
      v35 = 0u;
    }

    v36[0] = v34;
    v36[1] = v35;
    if (*(&v35 + 1))
    {
      type metadata accessor for EmptyPromise();
      if (swift_dynamicCast())
      {
        sub_1B40E7ED4();
      }
    }

    else
    {
      sub_1B410F21C(v36);
    }

    v18 = (*(*v3 + 144))(v36);
    *v19 = MEMORY[0x1E69E7CC0];

    v18(v36, 0);

    swift_unknownObjectRelease();
    ++v15;
    if (v32 == v14)
    {
    }
  }

  __break(1u);
LABEL_37:
  __break(1u);
  return result;
}

TextRecognition::CRLocale_optional __swiftcall String._predictedCRLocale(recognizer:resetContext:)(NLLanguageRecognizer recognizer, Swift::Bool resetContext)
{
  v5 = v2;
  v6 = sub_1B429F578();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1B429FB88();
  sub_1B429F518();
  v12 = sub_1B429F528();
  (*(v7 + 8))(v10, v6);
  LOBYTE(v10) = [v11 _crContainsCharactersInSet_];

  if ((v10 & 1) == 0)
  {
    sub_1B429FBF8();
    if (!resetContext)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  if (resetContext)
  {
LABEL_5:
    [(objc_class *)recognizer.super.isa reset];
  }

LABEL_6:
  v13 = sub_1B429FB88();

  [(objc_class *)recognizer.super.isa processString:v13];

  v14 = sub_1B42A01D8();
  v15 = sub_1B410DF3C(v14);
  if (v15)
  {
    v16 = v15;
    if (*(v14 + 16) && (v17 = sub_1B410F284(v15), (v18 & 1) != 0))
    {
      v19 = *(*(v14 + 56) + 8 * v17);

      if (v19 > 0.5)
      {
        sub_1B413E0AC(v5);

        return result;
      }
    }

    else
    {
    }
  }

  else
  {
  }

  *v5 = 30;
  return result;
}

void sub_1B410E8C4(void *a1, const char *a2)
{
  if ([(CRFeatureSequenceRecognitionInfo *)a1 transientDecodingResult])
  {
    objc_opt_self();
    v3 = swift_dynamicCastObjCClassUnconditional();
    (*(*v2 + 176))(&v5);
    if (v5 == 30)
    {

      swift_unknownObjectRelease();
    }

    else
    {
      CRLocale.rawValue.getter();
      v4 = sub_1B429FB88();

      [v3 setDecodingLocale_];
      swift_unknownObjectRelease();
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t CRLanguageRecognitionContext.deinit()
{

  swift_defaultActor_destroy();
  return v0;
}

uint64_t CRLanguageRecognitionContext.__deallocating_deinit()
{

  swift_defaultActor_destroy();

  return MEMORY[0x1EEE6DEF0](v0);
}

uint64_t sub_1B410EA90(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 112) = a1;
}

id sub_1B410EAD8()
{
  result = [objc_allocWithZone(MEMORY[0x1E6977A58]) init];
  dword_1ED95F5B8 = 0;
  qword_1ED95F5C0 = result;
  return result;
}

uint64_t CRLanguageRecognitionSession.__allocating_init()()
{
  v0 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v0 + 112) = 0;
  if (qword_1ED95F5B0 != -1)
  {
    swift_once();
  }

  os_unfair_lock_lock(&dword_1ED95F5B8);
  os_unfair_lock_unlock(&dword_1ED95F5B8);
  return v0;
}

uint64_t CRLanguageRecognitionSession.init()()
{
  swift_defaultActor_initialize();
  *(v0 + 112) = 0;
  if (qword_1ED95F5B0 != -1)
  {
    swift_once();
  }

  os_unfair_lock_lock(&dword_1ED95F5B8);
  os_unfair_lock_unlock(&dword_1ED95F5B8);
  return v0;
}

uint64_t sub_1B410EC0C(uint64_t a1, uint64_t a2)
{
  *(v3 + 16) = a1;
  *(v3 + 24) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1B410EC2C, v2, 0);
}

uint64_t sub_1B410EC2C()
{
  if (qword_1ED95F5B0 != -1)
  {
    swift_once();
  }

  v1 = v0[3];
  v2 = (*v1 + 208) & 0xFFFFFFFFFFFFLL | 0x274B000000000000;
  v0[4] = *(*v1 + 208);
  v0[5] = v2;

  return MEMORY[0x1EEE6DFA0](sub_1B410ECD8, v1, 0);
}

uint64_t sub_1B410ECD8()
{
  (*(v0 + 32))(*(v0 + 16), &dword_1ED95F5B8);
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1B410ED64()
{
  v1 = (*(**(v0 + 16) + 96))();
  *(v0 + 24) = v1;
  if (v1)
  {
    if (qword_1ED95F5B0 != -1)
    {
      v4 = v1;
      swift_once();
      v1 = v4;
    }

    v2 = (*v1 + 216) & 0xFFFFFFFFFFFFLL | 0x820C000000000000;
    *(v0 + 32) = *(*v1 + 216);
    *(v0 + 40) = v2;

    return MEMORY[0x1EEE6DFA0](sub_1B410EE7C, v1, 0);
  }

  else
  {
    v3 = *(v0 + 8);

    return v3();
  }
}

uint64_t sub_1B410EE7C()
{
  (*(v0 + 32))(&dword_1ED95F5B8, 1);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1B410EEF4()
{
  v3 = *(*v0 + 104);

  return v3(v1);
}

uint64_t CRLanguageRecognitionSession.deinit()
{

  swift_defaultActor_destroy();
  return v0;
}

uint64_t CRLanguageRecognitionSession.__deallocating_deinit()
{

  swift_defaultActor_destroy();

  return MEMORY[0x1EEE6DEF0](v0);
}

uint64_t sub_1B410EFA8()
{
  v0 = sub_1B429F578();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5, v6);
  v8 = &v12 - v7;
  __swift_allocate_value_buffer(v9, qword_1ED95F1A0);
  __swift_project_value_buffer(v0, qword_1ED95F1A0);
  sub_1B429F558();
  sub_1B429F508();
  sub_1B429F548();
  v10 = *(v1 + 8);
  v10(v4, v0);
  return (v10)(v8, v0);
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

unint64_t sub_1B410F110()
{
  result = qword_1ED95E0F0;
  if (!qword_1ED95E0F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED95E0F0);
  }

  return result;
}

unint64_t sub_1B410F164()
{
  result = qword_1ED95E0F8;
  if (!qword_1ED95E0F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED95E0F8);
  }

  return result;
}

unint64_t sub_1B410F1B8()
{
  result = qword_1ED95E100;
  if (!qword_1ED95E100)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB885010);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED95E100);
  }

  return result;
}

uint64_t sub_1B410F21C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB885330);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1B410F284(uint64_t a1)
{
  sub_1B429FB98();
  sub_1B42A0778();
  sub_1B429FC48();
  v2 = sub_1B42A07A8();

  return sub_1B410F664(a1, v2);
}

uint64_t dispatch thunk of CRLanguageRecognitionSession.process(feature:context:)(uint64_t a1, uint64_t a2)
{
  v8 = (*(*v2 + 128) + **(*v2 + 128));
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_1B40E17D0;

  return v8(a1, a2);
}

uint64_t dispatch thunk of CRLanguageRecognitionSession.complete()()
{
  v4 = (*(*v0 + 136) + **(*v0 + 136));
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_1B40E6828;

  return v4();
}

void type metadata accessor for CRDisambiguatedScript()
{
  if (!qword_1ED95E090)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_1ED95E090);
    }
  }
}

unint64_t sub_1B410F664(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      v6 = sub_1B429FB98();
      v8 = v7;
      if (v6 == sub_1B429FB98() && v8 == v9)
      {
        break;
      }

      v11 = sub_1B42A0678();

      if ((v11 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

uint64_t sub_1B410F768(uint64_t result, int a2, uint64_t a3, uint64_t a4)
{
  if (result < 0 || 1 << *(a4 + 32) <= result)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a4 + 8 * (result >> 6) + 64) >> result) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a4 + 36) == a2)
  {
    return *(*(a4 + 48) + 8 * result);
  }

LABEL_8:
  __break(1u);
  return result;
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

uint64_t sub_1B410F824()
{
  v0 = sub_1B429F9E8();
  __swift_allocate_value_buffer(v0, qword_1ED9603C0);
  __swift_project_value_buffer(v0, qword_1ED9603C0);
  return sub_1B429F9D8();
}

uint64_t sub_1B410F8A0()
{
  if (qword_1ED95FB68 != -1)
  {
    swift_once();
  }

  v0 = sub_1B429F9E8();

  return __swift_project_value_buffer(v0, qword_1ED9603C0);
}

uint64_t sub_1B410FA4C(void *a1, double a2, double a3)
{
  v49 = sub_1B429F6D8();
  v6 = *(v49 - 8);
  MEMORY[0x1EEE9AC00](v49, v7);
  v9 = &v48 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = &v48 - v12;
  v14 = [objc_allocWithZone(CRMutableDetectedLineRegion) init];
  v15 = [a1 subFeatures];
  v50 = a3;
  v51 = a2;
  if (!v15)
  {
    goto LABEL_10;
  }

  v16 = v15;
  sub_1B40E27B4(0, &qword_1ED95E6D8);
  v17 = sub_1B429FDF8();

  if (v17 >> 62)
  {
    result = sub_1B42A0518();
    if (result)
    {
      goto LABEL_4;
    }

    goto LABEL_9;
  }

  result = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!result)
  {
LABEL_9:

LABEL_10:
    v20 = a1;
    goto LABEL_11;
  }

LABEL_4:
  if ((v17 & 0xC000000000000001) != 0)
  {
    v19 = MEMORY[0x1B8C72CD0](0, v17);
  }

  else
  {
    if (!*((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v19 = *(v17 + 32);
  }

  v20 = v19;

LABEL_11:
  [v20 topLeft];
  v22 = v21;
  v24 = v23;
  [v20 topRight];
  v26 = v25;
  v28 = v27;
  [v20 bottomRight];
  v30 = v29;
  v32 = v31;
  [v20 bottomLeft];
  v34 = v33;
  v36 = v35;
  v37 = objc_allocWithZone(CRNormalizedQuad);
  v38 = [v37 initWithNormalizedTopLeft:v22 topRight:v24 bottomRight:v26 bottomLeft:v28 size:{v30, v32, v34, v36, *&v51, *&v50}];
  [v14 setBoundingQuad_];

  [v14 setIsCurved_];
  v39 = [v20 polygon];
  [v14 setPolygon_];

  v40 = [v20 scriptCategoryResults];
  if (!v40)
  {
    sub_1B40E27B4(0, &unk_1ED95E660);
    sub_1B429FDF8();
    v40 = sub_1B429FDE8();
  }

  [v14 setScriptCategoryResults_];

  [v14 setTopScriptCategory_];
  swift_unknownObjectRelease();
  v41 = [v20 scriptCounts];
  sub_1B40E27B4(0, &qword_1ED95EE90);
  sub_1B429FAF8();

  v42 = sub_1B429FAE8();

  [v14 setScriptCategoryCounts_];

  [v14 setShouldRunSequenceScript_];
  [v14 setNmsOutputScale_];
  if ([v20 isVerticalLayout])
  {
    v43 = 5;
  }

  else
  {
    v43 = 1;
  }

  [v14 setLayoutDirection_];
  if ([v20 shouldRotate180])
  {
    [v14 rotate180];
  }

  [v14 setShouldRotate180DetectorOrientationFallback_];
  [v14 setShouldRunSequenceOrientation_];
  [v14 setTextType_];
  v44 = [v20 uuid];
  if (v44)
  {
    v45 = v44;
    sub_1B429F6B8();

    v46 = v49;
    (*(v6 + 32))(v13, v9, v49);
    v47 = sub_1B429F6A8();
    [v14 setUuid_];

    (*(v6 + 8))(v13, v46);
  }

  else
  {
  }

  return v14;
}

uint64_t sub_1B411003C(uint64_t (*a1)(uint64_t *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (!v4)
  {
    return 0;
  }

  v6 = 0;
  v7 = a3 + 32;
  while (1)
  {
    v10 = *(v7 + 8 * v6);

    v8 = a1(&v10);

    if (v3 || (v8 & 1) != 0)
    {
      break;
    }

    if (v4 == ++v6)
    {
      return 0;
    }
  }

  return v6;
}

uint64_t sub_1B41100F0(uint64_t (*a1)(uint64_t *), uint64_t a2, uint64_t a3)
{
  result = *(a3 + 16);
  v6 = a3 + 24;
  do
  {
    v7 = result;
    if (!result)
    {
      break;
    }

    v9 = *(v6 + 8 * result);

    v8 = a1(&v9);

    if (v3)
    {
      break;
    }

    result = v7 - 1;
  }

  while ((v8 & 1) == 0);
  return result;
}

uint64_t sub_1B4110184(uint64_t result)
{
  v3 = *(result + 16);
  v4 = *v1;
  v5 = *(*v1 + 16);
  v6 = v5 + v3;
  if (__OFADD__(v5, v3))
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v7 = result;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (!isUniquelyReferenced_nonNull_native || (v9 = v4[3] >> 1, v9 < v6))
  {
    if (v5 <= v6)
    {
      v10 = v5 + v3;
    }

    else
    {
      v10 = v5;
    }

    v4 = sub_1B4110440(isUniquelyReferenced_nonNull_native, v10, 1, v4);
    v9 = v4[3] >> 1;
  }

  v11 = v4[2];
  v12 = v9 - v11;
  result = sub_1B4110678(&v25, &v4[v11 + 4], v9 - v11, v7);
  if (result < v3)
  {
    goto LABEL_15;
  }

  if (result)
  {
    v13 = v4[2];
    v14 = __OFADD__(v13, result);
    v15 = v13 + result;
    if (v14)
    {
      __break(1u);
      goto LABEL_32;
    }

    v4[2] = v15;
  }

  if (result != v12)
  {
LABEL_13:

    *v1 = v4;
    return result;
  }

LABEL_16:
  if (!v26)
  {
    goto LABEL_13;
  }

  v16 = v26 - 1;
  if (__OFSUB__(v26, 1))
  {
LABEL_34:
    __break(1u);
  }

  else if ((v16 & 0x8000000000000000) == 0)
  {
    v17 = v25;
    if (v16 < *(v25 + 16))
    {
      v18 = v4[2];
      v19 = *(v25 + 8 * v16 + 32);

      while (1)
      {
LABEL_22:
        v20 = v4[3];
        v21 = v20 >> 1;
        if ((v20 >> 1) < v18 + 1)
        {
          result = sub_1B4110440((v20 > 1), v18 + 1, 1, v4);
          v4 = result;
          v21 = *(result + 24) >> 1;
          v22 = v18 - v21;
          if (v18 < v21)
          {
LABEL_24:
            v2 = 0;
            v24 = v18;
            v23 = 8 * v18 + 32;
            while (1)
            {
              *(v4 + v23) = v19;
              if (!(v16 + v2))
              {
                break;
              }

              if ((v16 + v2 - 1) >= *(v17 + 16))
              {
                __break(1u);
                goto LABEL_34;
              }

              v19 = *(v17 + 24 + 8 * v16 + 8 * v2);

              --v2;
              v23 += 8;
              if (v22 == v2)
              {
                v16 += v2;
                v18 = v21;
                v4[2] = v21;
                goto LABEL_22;
              }
            }

LABEL_32:
            v4[2] = v24 - v2 + 1;
            goto LABEL_13;
          }
        }

        else
        {
          v22 = v18 - v21;
          if (v18 < v21)
          {
            goto LABEL_24;
          }
        }

        v4[2] = v18;
      }
    }

    goto LABEL_36;
  }

  __break(1u);
LABEL_36:
  __break(1u);
  return result;
}

id sub_1B41103C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t))
{
  v6 = sub_1B429FB98();
  a5(v6);

  v7 = sub_1B429FB88();

  return v7;
}

void *sub_1B4110440(void *result, int64_t a2, char a3, void *a4)
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

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB885038);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB885030);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1B4110574(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB885028);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 29;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 2);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[4 * v8])
    {
      memmove(v13, v14, 4 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 4 * v8);
  }

  return v10;
}

void *sub_1B4110678(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = *(a4 + 16);
  if (!a2)
  {
    v12 = *(a4 + 16);
    v6 = 0;
    goto LABEL_13;
  }

  if (!a3)
  {
    v12 = *(a4 + 16);
LABEL_12:
    v6 = a3;
    goto LABEL_13;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    if (v6)
    {
      v9 = 0;
      v10 = a3 - 1;
      v11 = (a4 + 8 * v6 + 24);
      while (1)
      {
        *(a2 + 8 * v9) = *v11;
        if (v10 == v9)
        {
          break;
        }

        ++v9;
        --v11;
        if (v6 == v9)
        {
          goto LABEL_8;
        }
      }

      v12 = ~v9 + v6;
      goto LABEL_12;
    }

LABEL_8:
    v12 = 0;
LABEL_13:
    *v5 = a4;
    v5[1] = v12;
    return v6;
  }

  __break(1u);
  return result;
}

void sub_1B411073C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_11:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      if (v4 != a3)
      {
LABEL_7:
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB885030);
        swift_arrayInitWithCopy();
        return;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB885038);
      v7 = swift_allocObject();
      v8 = _swift_stdlib_malloc_size(v7);
      v9 = v8 - 32;
      if (v8 < 32)
      {
        v9 = v8 - 25;
      }

      v7[2] = v5;
      v7[3] = 2 * (v9 >> 3);
      if (v4 != a3)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
    goto LABEL_11;
  }
}

void sub_1B4110828(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v5 = a4 >> 1;
  v6 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
    __break(1u);
    goto LABEL_18;
  }

  v7 = *v4;
  v8 = *(*v4 + 16);
  v9 = v8 + v6;
  if (__OFADD__(v8, v6))
  {
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (!isUniquelyReferenced_nonNull_native || v9 > v7[3] >> 1)
  {
    goto LABEL_8;
  }

  if (v5 == a3)
  {
    while (v6 > 0)
    {
      __break(1u);
LABEL_8:
      if (v8 <= v9)
      {
        v12 = v8 + v6;
      }

      else
      {
        v12 = v8;
      }

      isUniquelyReferenced_nonNull_native = sub_1B4110440(isUniquelyReferenced_nonNull_native, v12, 1, v7);
      v7 = isUniquelyReferenced_nonNull_native;
      if (v5 != a3)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_16;
  }

LABEL_12:
  if ((v7[3] >> 1) - v7[2] < v6)
  {
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB885030);
  swift_arrayInitWithCopy();
  if (v6 <= 0)
  {
LABEL_16:
    *v4 = v7;
    return;
  }

  v13 = v7[2];
  v14 = __OFADD__(v13, v6);
  v15 = v13 + v6;
  if (!v14)
  {
    v7[2] = v15;
    goto LABEL_16;
  }

LABEL_20:
  __break(1u);
}

uint64_t sub_1B411093C(uint64_t a1, unint64_t a2)
{
  v4 = sub_1B429F578();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v70 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = &v70 - v11;
  MEMORY[0x1EEE9AC00](v13, v14);
  v16 = &v70 - v15;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v17 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v17 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v17)
  {

    return a1;
  }

  sub_1B429F4F8();

  sub_1B429F4F8();
  sub_1B429F548();
  v81 = a1;
  v82 = a2;
  sub_1B40EEE90();
  v18 = sub_1B42A0318();
  v20 = v19;

  v21 = HIBYTE(v20) & 0xF;
  if ((v20 & 0x2000000000000000) == 0)
  {
    v21 = v18 & 0xFFFFFFFFFFFFLL;
  }

  if (v21)
  {

    v22 = *(v5 + 8);
    v22(v8, v4);
    v22(v12, v4);

    v22(v16, v4);
    return a1;
  }

  v71 = v8;
  v72 = v5;
  v73 = v4;
  v23 = 0;
  v77 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v78 = a2 & 0xFFFFFFFFFFFFFFLL;
  v24 = 1;
  v74 = xmmword_1B42ACFB0;
  v75 = MEMORY[0x1E69E7CC0];
LABEL_11:
  v76 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    if ((a2 & 0x1000000000000000) != 0)
    {
      v28 = sub_1B42A03F8();
      goto LABEL_23;
    }

    if ((a2 & 0x2000000000000000) != 0)
    {
      v81 = a1;
      v82 = v78;
      v26 = &v81 + v23;
    }

    else
    {
      v25 = v77;
      if ((a1 & 0x1000000000000000) == 0)
      {
        v25 = sub_1B42A0448();
      }

      v26 = (v25 + v23);
    }

    v28 = *v26;
    if ((*v26 & 0x80000000) == 0)
    {
LABEL_22:
      v27 = 1;
      goto LABEL_23;
    }

    v33 = (__clz(v28 ^ 0xFF) - 24);
    if (v33 > 2)
    {
      if (v33 == 3)
      {
        v28 = ((v28 & 0xF) << 12) | ((v26[1] & 0x3F) << 6) | v26[2] & 0x3F;
        v27 = 3;
      }

      else
      {
        v28 = ((v28 & 0xF) << 18) | ((v26[1] & 0x3F) << 12) | ((v26[2] & 0x3F) << 6) | v26[3] & 0x3F;
        v27 = 4;
      }
    }

    else
    {
      if (v33 == 1)
      {
        goto LABEL_22;
      }

      v28 = v26[1] & 0x3F | ((v28 & 0x1F) << 6);
      v27 = 2;
    }

LABEL_23:
    v23 += v27;
    v29 = sub_1B429F568();
    if (v29)
    {
      break;
    }

    if (sub_1B429F568())
    {
      if ((v24 & 1) == 0 && *(v76 + 2))
      {

        v45 = v75;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v45 = sub_1B4110440(0, v45[2] + 1, 1, v45);
        }

        v47 = v45[2];
        v46 = v45[3];
        if (v47 >= v46 >> 1)
        {
          v45 = sub_1B4110440((v46 > 1), v47 + 1, 1, v45);
        }

        v45[2] = v47 + 1;
        v45[v47 + 4] = v76;

        v75 = v45;
        if (v23 >= v17)
        {
          goto LABEL_82;
        }

LABEL_49:
        v24 = v29 ^ 1;
        goto LABEL_11;
      }

      v30 = v76;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v30 = sub_1B4110574(0, *(v30 + 2) + 1, 1, v30);
      }

      v32 = *(v30 + 2);
      v31 = *(v30 + 3);
      if (v32 >= v31 >> 1)
      {
        v30 = sub_1B4110574((v31 > 1), v32 + 1, 1, v30);
      }

      *(v30 + 2) = v32 + 1;
      v76 = v30;
      *&v30[4 * v32 + 32] = v28;
      v24 = 1;
    }

    if (v23 >= v17)
    {
      v48 = v76;
      goto LABEL_57;
    }
  }

  if (*(v76 + 2))
  {

    v34 = v75;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v34 = sub_1B4110440(0, v34[2] + 1, 1, v34);
    }

    v36 = v34[2];
    v35 = v34[3];
    v37 = v34;
    if (v36 >= v35 >> 1)
    {
      v37 = sub_1B4110440((v35 > 1), v36 + 1, 1, v34);
    }

    v37[2] = v36 + 1;
    v38 = &v37[v36];
    v39 = v37;
    v38[4] = v76;
  }

  else
  {
    v39 = v75;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB885028);
  v40 = swift_allocObject();
  *(v40 + 16) = v74;
  *(v40 + 32) = v28;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v39 = sub_1B4110440(0, v39[2] + 1, 1, v39);
  }

  v41 = v39;
  v42 = v39[2];
  v75 = v41;
  v43 = v41[3];
  if (v42 >= v43 >> 1)
  {
    v75 = sub_1B4110440((v43 > 1), v42 + 1, 1, v75);
  }

  v44 = v75;
  v75[2] = v42 + 1;
  v44[v42 + 4] = v40;

  if (v23 < v17)
  {
    goto LABEL_49;
  }

LABEL_82:
  v48 = MEMORY[0x1E69E7CC0];
LABEL_57:

  if (*(v48 + 2))
  {

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      isUniquelyReferenced_nonNull_native = sub_1B4110440(0, v75[2] + 1, 1, v75);
      v75 = isUniquelyReferenced_nonNull_native;
    }

    v52 = v75[2];
    v51 = v75[3];
    if (v52 >= v51 >> 1)
    {
      isUniquelyReferenced_nonNull_native = sub_1B4110440((v51 > 1), v52 + 1, 1, v75);
      v75 = isUniquelyReferenced_nonNull_native;
    }

    v53 = v75;
    v75[2] = v52 + 1;
    v53[v52 + 4] = v48;
  }

  else
  {
    v53 = v75;
  }

  MEMORY[0x1EEE9AC00](isUniquelyReferenced_nonNull_native, v50);
  *(&v70 - 2) = v16;
  v54 = sub_1B411003C(sub_1B411150C, (&v70 - 4), v53);
  if (v55)
  {
    v56 = 0;
  }

  else
  {
    v56 = v54;
  }

  MEMORY[0x1EEE9AC00](v54, v55);
  *(&v70 - 2) = v16;
  v57 = sub_1B41100F0(sub_1B41114AC, (&v70 - 4), v53);
  if (v58)
  {
    v59 = v53;
    v60 = v53[2] - 1;
    if (v56 != v60)
    {
      goto LABEL_69;
    }

LABEL_80:
    v68 = *(v72 + 8);
    v69 = v73;
    v68(v71, v73);
    v68(v12, v69);

    v68(v16, v69);
    return a1;
  }

  v60 = v57;
  v59 = v53;
  if (v56 == v57)
  {
    goto LABEL_80;
  }

LABEL_69:
  v80 = MEMORY[0x1E69E7CC0];
  if (v56 < 0)
  {
    __break(1u);
    goto LABEL_84;
  }

  if (*(v59 + 16) < v56)
  {
LABEL_84:
    __break(1u);
    goto LABEL_85;
  }

  swift_bridgeObjectRetain_n();
  sub_1B4110828(v59, v59 + 32, 0, (2 * v56) | 1);
  a1 = v59;

  if (v60 < v56)
  {
LABEL_85:
    __break(1u);
    goto LABEL_86;
  }

  if (__OFADD__(v60++, 1))
  {
LABEL_86:
    __break(1u);
    goto LABEL_87;
  }

  v62 = *(v59 + 16);
  if (v62 < v60)
  {
LABEL_87:
    __break(1u);
    goto LABEL_88;
  }

  if (v60 < 0)
  {
LABEL_88:
    __break(1u);
    goto LABEL_89;
  }

  if (v62 != v60 - v56)
  {
LABEL_89:
    sub_1B411073C(a1, a1 + 32, v56, (2 * v60) | 1);
    goto LABEL_77;
  }

LABEL_77:
  result = sub_1B4110184(v63);
  v65 = *(a1 + 16);
  if (v65 >= v60)
  {
    sub_1B4110828(a1, a1 + 32, v60, (2 * v65) | 1);

    v79 = v80;
    v81 = 0;
    v82 = 0xE000000000000000;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB885018);
    sub_1B40E27FC(&qword_1EB885020, &qword_1EB885018);
    sub_1B429FC38();

    v66 = *(v72 + 8);
    v67 = v73;
    v66(v71, v73);
    v66(v12, v67);

    a1 = v81;
    v66(v16, v67);
    return a1;
  }

  __break(1u);
  return result;
}

uint64_t sub_1B41112A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1B40EEE90();
  v4 = sub_1B42A0308();
  v5 = *(v4 + 16);
  if (v5)
  {
    v18 = MEMORY[0x1E69E7CC0];
    sub_1B40FE1A8(0, v5, 0);
    v6 = objc_opt_self();
    v7 = v4 + 40;
    do
    {

      v8 = sub_1B429FB88();
      v9 = [v6 _rearrangeNumericRunsInLogicalToken_layoutDirection_];

      v10 = sub_1B429FB98();
      v12 = v11;

      v14 = *(v18 + 16);
      v13 = *(v18 + 24);
      if (v14 >= v13 >> 1)
      {
        sub_1B40FE1A8((v13 > 1), v14 + 1, 1);
      }

      *(v18 + 16) = v14 + 1;
      v15 = v18 + 16 * v14;
      *(v15 + 32) = v10;
      *(v15 + 40) = v12;
      v7 += 16;
      --v5;
    }

    while (v5);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB884E80);
  sub_1B40E27FC(&qword_1ED95E0D0, &unk_1EB884E80);
  v16 = sub_1B429FB48();

  return v16;
}

uint64_t sub_1B41114C8(uint64_t result)
{
  if (*(*result + 16))
  {
    return sub_1B429F568() & 1;
  }

  __break(1u);
  return result;
}

uint64_t CRRecognizerBatchedByWidthsFeatureProvider.inputProvider.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_0(v1 + 8);

  return sub_1B40D5F90(a1, v1 + 8);
}

uint64_t CRRecognizerBatchedByWidthsFeatureProvider.recognizerFeatures(for:lineRegions:rectifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[21] = a4;
  v5[22] = v4;
  v5[19] = a2;
  v5[20] = a3;
  v5[18] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB884C70);
  v5[23] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB885048);
  v5[24] = v6;
  v5[25] = *(v6 - 8);
  v5[26] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB885050);
  v5[27] = v7;
  v8 = *(v7 - 8);
  v5[28] = v8;
  v5[29] = *(v8 + 64);
  v5[30] = swift_task_alloc();
  v5[31] = swift_task_alloc();
  v9 = sub_1B429F9B8();
  v5[32] = v9;
  v5[33] = *(v9 - 8);
  v5[34] = swift_task_alloc();
  v5[35] = swift_task_alloc();
  v10 = sub_1B429F9E8();
  v5[36] = v10;
  v5[37] = *(v10 - 8);
  v5[38] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B4111844, 0, 0);
}

uint64_t sub_1B4111844()
{
  v210 = v0;
  v3 = v0[37];
  v4 = v0[38];
  v5 = v0[36];
  v6 = sub_1B410F8A0();
  (*(v3 + 16))(v4, v6, v5);
  v7 = sub_1B410F958();
  v8 = *v7;
  v9 = *(v7 + 16);
  sub_1B429F9A8();
  v10 = sub_1B429F9C8();
  v11 = sub_1B42A01C8();
  result = sub_1B42A0278();
  v193 = v0;
  if ((result & 1) == 0)
  {
    goto LABEL_10;
  }

  if ((v9 & 1) == 0)
  {
    if (v8)
    {
      goto LABEL_9;
    }

    __break(1u);
    goto LABEL_194;
  }

  if (v8 >> 32)
  {
LABEL_194:
    __break(1u);
    goto LABEL_195;
  }

  if ((v8 & 0xFFFFF800) == 0xD800)
  {
    __break(1u);
LABEL_200:
    __break(1u);
LABEL_201:
    __break(1u);
LABEL_202:
    __break(1u);
LABEL_203:
    __break(1u);
LABEL_204:
    __break(1u);
    return result;
  }

  if (v8 >> 16 > 0x10)
  {
LABEL_195:
    __break(1u);
    v173 = v197;
    goto LABEL_196;
  }

  v8 = (v0 + 17);
LABEL_9:
  v13 = swift_slowAlloc();
  *v13 = 0;
  v14 = sub_1B429F998();
  _os_signpost_emit_with_name_impl(&dword_1B40D2000, v10, v11, v14, v8, "", v13, 2u);
  MEMORY[0x1B8C74FA0](v13, -1, -1);
LABEL_10:

  v15 = v0[37];
  v16 = v0[38];
  v18 = v0[35];
  v17 = v0[36];
  v19 = v0[33];
  v20 = v0[32];
  (*(v19 + 16))(v0[34], v18, v20);
  sub_1B429FA28();
  swift_allocObject();
  v21 = sub_1B429FA18();
  (*(v19 + 8))(v18, v20);
  (*(v15 + 8))(v16, v17);

  v208 = sub_1B4118400(v22);
  sub_1B41161B4(&v208);
  v23 = v208;
  v207 = MEMORY[0x1E69E7CC8];
  if ((v208 & 0x8000000000000000) != 0 || (v208 & 0x4000000000000000) != 0)
  {
    v9 = sub_1B42A0518();
  }

  else
  {
    v9 = *(v208 + 16);
  }

  v190 = v21;
  if (!v9)
  {
    goto LABEL_51;
  }

  v24 = 0;
  v203 = 0;
  v25 = (v0 + 13);
  x = 0.0;
  y = 0.0;
  width = 0.0;
  height = 0.0;
  while (1)
  {
    if ((v23 & 0xC000000000000001) != 0)
    {
      v30 = MEMORY[0x1B8C72CD0](v24, v23);
    }

    else
    {
      if (v24 >= *(v23 + 16))
      {
        goto LABEL_163;
      }

      v30 = *(v23 + 8 * v24 + 32);
    }

    v31 = v30;
    v32 = v24 + 1;
    if (__OFADD__(v24, 1))
    {
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

LABEL_168:

      v157 = 0;
      v158 = -1;
      v159 = -1 << *(v9 + 32);
      if (-v159 < 64)
      {
        v158 = ~(-1 << -v159);
      }

      v160 = v158 & *(v9 + 64);
      v161 = (63 - v159) >> 6;
      if (!v160)
      {
        goto LABEL_173;
      }

      do
      {
LABEL_171:
        while (1)
        {
          v162 = __clz(__rbit64(v160));
          v160 &= v160 - 1;
          if (*(*(v9 + 56) + ((v157 << 9) | (8 * v162))) >> 62)
          {
            break;
          }

          if (!v160)
          {
            goto LABEL_173;
          }
        }

        result = sub_1B42A0518();
      }

      while (v160);
LABEL_173:
      while (1)
      {
        v163 = v157 + 1;
        if (__OFADD__(v157, 1))
        {
          goto LABEL_200;
        }

        if (v163 >= v161)
        {
          v61 = v193;
          v8 = v193[21];

          if ((v8 != 0) | v189 & 1)
          {
            goto LABEL_185;
          }

          v193[11] = &type metadata for CRFeatureFlags;
          v193[12] = sub_1B4118C60();
          *(v193 + 64) = 0;
          v164 = sub_1B429F898();
          __swift_destroy_boxed_opaque_existential_0((v193 + 8));
          if (v164)
          {
            v8 = [objc_allocWithZone(CRMetalPolygonRectifier) initWithDevice:objc_msgSend(*v193[22] sourceImage:sel_metalDevice) regionOfInterest:{v193[19], x, y, width, height}];
            swift_unknownObjectRelease();
            goto LABEL_186;
          }

          goto LABEL_184;
        }

        v160 = *(v9 + 64 + 8 * v163);
        ++v157;
        if (v160)
        {
          v157 = v163;
          goto LABEL_171;
        }
      }
    }

    v33 = [v30 polygon];
    if (v33)
    {
      v34 = v33;
      if ([v33 pointCount] >= 4)
      {
        v35 = *v193[22];
        if ([v35 rectifyPolygons])
        {
          v36 = [v34 denormalizedPolyline];
          [v36 boundingRect];
          v38 = v37;
          v40 = v39;
          v42 = v41;
          v44 = v43;

          v212.origin.x = x;
          v212.origin.y = y;
          v212.size.width = width;
          v212.size.height = height;
          v216.origin.x = v38;
          v216.origin.y = v40;
          v216.size.width = v42;
          v216.size.height = v44;
          v213 = CGRectUnion(v212, v216);
          x = v213.origin.x;
          y = v213.origin.y;
          width = v213.size.width;
          height = v213.size.height;

LABEL_31:
          v203 = 1;
          goto LABEL_32;
        }
      }
    }

    result = [v31 boundingQuad];
    if (!result)
    {
      goto LABEL_201;
    }

    v45 = result;
    v46 = v193[22];
    [result baselineAngle];
    v48 = v47;

    v35 = *v46;
    [*v46 angleThresholdForRotatedCrops];
    if (v49 < fabs(v48))
    {
      result = [v31 boundingQuad];
      if (!result)
      {
        goto LABEL_204;
      }

      v50 = result;
      v51 = [result denormalizedQuad];

      [v51 boundingBox];
      v53 = v52;
      v55 = v54;
      v57 = v56;
      v59 = v58;

      v214.origin.x = x;
      v214.origin.y = y;
      v214.size.width = width;
      v214.size.height = height;
      v217.origin.x = v53;
      v217.origin.y = v55;
      v217.size.width = v57;
      v217.size.height = v59;
      v215 = CGRectUnion(v214, v217);
      x = v215.origin.x;
      y = v215.origin.y;
      width = v215.size.width;
      height = v215.size.height;
      goto LABEL_31;
    }

LABEL_32:
    [v31 aspectRatio];
    v60 = [v35 bestFitWidthIndexForAspectRatio_];
    v61 = v60;
    v62 = v207;
    if (*(v207 + 2))
    {
      sub_1B41163E0(v60);
      if (v63)
      {
        goto LABEL_45;
      }
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v208 = v207;
    v65 = sub_1B41163E0(v61);
    v67 = *(v207 + 2);
    v68 = (v66 & 1) == 0;
    v69 = __OFADD__(v67, v68);
    v70 = v67 + v68;
    if (v69)
    {
      goto LABEL_161;
    }

    v71 = v66;
    if (*(v207 + 3) >= v70)
    {
      break;
    }

    sub_1B41166A8(v70, isUniquelyReferenced_nonNull_native);
    v62 = v208;
    v65 = sub_1B41163E0(v61);
    if ((v71 & 1) != (v72 & 1))
    {

      return sub_1B42A06E8();
    }

LABEL_39:
    if ((v71 & 1) == 0)
    {
      goto LABEL_42;
    }

LABEL_40:
    *(*(v62 + 7) + 8 * v65) = MEMORY[0x1E69E7CC0];

LABEL_44:
    v207 = v62;
LABEL_45:
    v77 = sub_1B4112C84(v25, v61);
    if (*v76)
    {
      v78 = v76;
      v79 = v31;
      MEMORY[0x1B8C72680]();
      if (*((*v78 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v78 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1B429FE08();
      }

      sub_1B429FE38();
    }

    (v77)(v25, 0);

    ++v24;
    if (v32 == v9)
    {

      LOBYTE(v189) = v203 ^ 1;
      v9 = v207;
      v80 = *(v207 + 2);
      if (v80)
      {
        while (1)
        {
          v81 = sub_1B4116C50(v80, 0);
          v82 = sub_1B41186E8(&v208, v81 + 4, v80, v9);
          swift_bridgeObjectRetain_n();
          sub_1B41187E8();
          if (v82 == v80)
          {
            break;
          }

          __break(1u);
LABEL_51:

          LOBYTE(v189) = 1;
          x = 0.0;
          v9 = MEMORY[0x1E69E7CC8];
          y = 0.0;
          width = 0.0;
          height = 0.0;
          v80 = *(MEMORY[0x1E69E7CC8] + 16);
          if (!v80)
          {
            goto LABEL_52;
          }
        }
      }

      else
      {
LABEL_52:

        v81 = MEMORY[0x1E69E7CC0];
      }

      v209[0] = v81;
      sub_1B4116080(v209);

      v83 = 0;
      v84 = v209[0];
      v85 = -1;
      v86 = -1 << *(v9 + 32);
      if (-v86 < 64)
      {
        v85 = ~(-1 << -v86);
      }

      v87 = v85 & *(v9 + 64);
      v88 = (63 - v86) >> 6;
      if (!v87)
      {
        goto LABEL_58;
      }

      do
      {
LABEL_56:
        while (1)
        {
          v89 = __clz(__rbit64(v87));
          v87 &= v87 - 1;
          if (*(*(v9 + 56) + ((v83 << 9) | (8 * v89))) >> 62)
          {
            break;
          }

          if (!v87)
          {
            goto LABEL_58;
          }
        }

        sub_1B42A0518();
      }

      while (v87);
      while (1)
      {
LABEL_58:
        v90 = v83 + 1;
        if (__OFADD__(v83, 1))
        {
          goto LABEL_162;
        }

        if (v90 >= v88)
        {
          break;
        }

        v87 = *(v9 + 64 + 8 * v90);
        ++v83;
        if (v87)
        {
          v83 = v90;
          goto LABEL_56;
        }
      }

      v61 = *(v84 + 2);
      if (v61)
      {
        v91 = *v193[22];
        v198 = v84 + 32;

        v201 = 0;
        v92 = &_OBJC_LABEL_PROTOCOL___CRFormPostProcessingStep;
        v93 = MEMORY[0x1E69E7CC0];
        v94 = v61;
        v195 = v84;
        v196 = v91;
        v191 = v61;
        while (1)
        {
          if (v94 == v61)
          {
            v201 = *(v84 + 2);
          }

          v69 = __OFSUB__(v201--, 1);
          if (v69)
          {
            goto LABEL_164;
          }

          if (v94 > *(v84 + 2))
          {
            goto LABEL_165;
          }

          v95 = v94 - 1;
          v204 = *&v198[8 * v95];
          if (*(v9 + 16) && (v96 = sub_1B41163E0(*&v198[8 * v95]), (v97 & 1) != 0))
          {
            v98 = *(*(v9 + 56) + 8 * v96);
            if (v98 >> 62)
            {
              v99 = sub_1B42A0518();
            }

            else
            {
              v99 = *((v98 & 0xFFFFFFFFFFFFFF8) + 0x10);
            }
          }

          else
          {
            v99 = 0;
          }

          v100 = [v91 v92[480]];
          if (!v100)
          {
            goto LABEL_166;
          }

          if (v99 == 0x8000000000000000 && v100 == -1)
          {
            goto LABEL_183;
          }

          v192 = v95;
          v101 = v99 % v100;
          v102 = 1;
          while (v101 >= 1)
          {
            v103 = v201 - v102;
            if (__OFSUB__(v201, v102))
            {
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
              goto LABEL_156;
            }

            if ((v103 & 0x8000000000000000) != 0)
            {
              break;
            }

            if (v103 >= *(v84 + 2))
            {
              goto LABEL_148;
            }

            v104 = *&v198[8 * v103];
            if (*(v9 + 16) && (v105 = sub_1B41163E0(v104), (v106 & 1) != 0))
            {
              v107 = *(*(v9 + 56) + 8 * v105);
              if (v107 >> 62)
              {
                v108 = sub_1B42A0518();
              }

              else
              {
                v108 = *((v107 & 0xFFFFFFFFFFFFFF8) + 0x10);
              }
            }

            else
            {
              v108 = 0;
            }

            v109 = [v91 v92[480]];
            v110 = &v109[-v101];
            if (__OFSUB__(v109, v101))
            {
              goto LABEL_149;
            }

            if (v108 >= v110)
            {
              v111 = &v109[-v101];
            }

            else
            {
              v111 = v108;
            }

            v206 = v104;
            if (*(v9 + 16) && (v112 = sub_1B41163E0(v104), (v113 & 1) != 0))
            {
              if (v111 < 0)
              {
                goto LABEL_154;
              }

              v114 = *(*(v9 + 56) + 8 * v112);
              if (v114 >> 62)
              {
                result = sub_1B42A0518();
                if (result < 0)
                {
                  goto LABEL_203;
                }

                if (sub_1B42A0518() < v111)
                {
                  goto LABEL_155;
                }
              }

              else if (*((v114 & 0xFFFFFFFFFFFFFF8) + 0x10) < v111)
              {
                goto LABEL_155;
              }

              sub_1B41165B0(0, v111, v114);
              v116 = v115;
              v118 = v117;
              v120 = v119;

              if (!*(v9 + 16))
              {
                goto LABEL_105;
              }
            }

            else
            {
              if (v93 >> 62)
              {
                v151 = sub_1B42A0518();
                if (v151)
                {
                  v152 = v151;
                  v153 = sub_1B40DDE04(v151, 0);
                  v154 = v93;
                  v93 = v153;
                  sub_1B4118494((v153 + 4), v152, v154);
                  v156 = v155;

                  if (v156 != v152)
                  {
                    goto LABEL_202;
                  }
                }
              }

              v118 = 0;
              v116 = v93 + 32;
              v120 = (2 * *(v93 + 16)) | 1;
              if (!*(v9 + 16))
              {
                goto LABEL_105;
              }
            }

            sub_1B41163E0(v204);
            if (v121)
            {

              goto LABEL_106;
            }

LABEL_105:
            v122 = MEMORY[0x1E69E7CC0];
LABEL_106:
            v208 = v122;
            v123 = swift_unknownObjectRetain();
            sub_1B4118CC8(v123, v116, v118, v120);
            swift_unknownObjectRelease();
            v124 = v208;
            v125 = swift_isUniquelyReferenced_nonNull_native();
            v208 = v207;
            v126 = v124;
            v127 = v204;
            sub_1B4116F70(v126, v204, v125);
            v128 = v208;
            v207 = v208;
            if (__OFSUB__(v108, v111))
            {
              goto LABEL_150;
            }

            if (v108 <= v110)
            {
              sub_1B4116424(v206);

              v91 = v196;
              v92 = &_OBJC_LABEL_PROTOCOL___CRFormPostProcessingStep;
            }

            else
            {
              v91 = v196;
              if (*(v208 + 16) && (v129 = sub_1B41163E0(v206), (v130 & 1) != 0))
              {
                v131 = *(*(v128 + 56) + 8 * v129);
                if (v131 >> 62)
                {
                  if (sub_1B42A0518() < v111)
                  {
                    goto LABEL_157;
                  }
                }

                else if (*((v131 & 0xFFFFFFFFFFFFFF8) + 0x10) < v111)
                {
                  goto LABEL_157;
                }

                if (v111 < 0)
                {
                  goto LABEL_158;
                }

                if (v131 >> 62)
                {
                  v132 = sub_1B42A0518();
                }

                else
                {
                  v132 = *((v131 & 0xFFFFFFFFFFFFFF8) + 0x10);
                }

                if (v132 < v108)
                {
                  goto LABEL_159;
                }

                if (v108 < 0)
                {
                  goto LABEL_160;
                }

                v133 = sub_1B41165B0(v111, v108, v131);
                v135 = v140;
                v137 = v141;
                v139 = v142;
              }

              else
              {
                v133 = sub_1B4112D48(MEMORY[0x1E69E7CC0]);
                v135 = v134;
                v137 = v136;
                v139 = v138;
              }

              v143 = swift_unknownObjectRetain();
              v144 = sub_1B4118624(v143, v135, v137, v139);
              if (!v144)
              {
                sub_1B4116230(v133, v135, v137, v139);
              }

              v145 = v144;
              swift_unknownObjectRelease();
              v92 = &_OBJC_LABEL_PROTOCOL___CRFormPostProcessingStep;
              sub_1B4112BC4(v145, v206);
              swift_unknownObjectRelease();
              v127 = v204;
            }

            v9 = v207;
            if (*(v207 + 2) && (v146 = sub_1B41163E0(v127), (v147 & 1) != 0))
            {
              v148 = *(*(v207 + 7) + 8 * v146);
              if (v148 >> 62)
              {
                v149 = sub_1B42A0518();
              }

              else
              {
                v149 = *((v148 & 0xFFFFFFFFFFFFFF8) + 0x10);
              }
            }

            else
            {
              v149 = 0;
            }

            v150 = [v91 v92[480]];
            swift_unknownObjectRelease();
            if (!v150)
            {
              goto LABEL_151;
            }

            if (v149 == 0x8000000000000000 && v150 == -1)
            {
              goto LABEL_153;
            }

            v101 = v149 % v150;
            v69 = __OFADD__(v102++, 1);
            v84 = v195;
            v93 = MEMORY[0x1E69E7CC0];
            if (v69)
            {
              goto LABEL_152;
            }
          }

          v61 = v191;
          v94 = v192;
          if (!v192)
          {
            goto LABEL_167;
          }
        }
      }

      goto LABEL_168;
    }
  }

  if (isUniquelyReferenced_nonNull_native)
  {
    goto LABEL_39;
  }

  v73 = v65;
  sub_1B4116AF4();
  v65 = v73;
  v62 = v208;
  if (v71)
  {
    goto LABEL_40;
  }

LABEL_42:
  *&v62[8 * (v65 >> 6) + 64] |= 1 << v65;
  *(*(v62 + 6) + 8 * v65) = v61;
  *(*(v62 + 7) + 8 * v65) = MEMORY[0x1E69E7CC0];
  v74 = *(v62 + 2);
  v69 = __OFADD__(v74, 1);
  v75 = v74 + 1;
  if (!v69)
  {
    *(v62 + 2) = v75;
    goto LABEL_44;
  }

  __break(1u);
LABEL_183:
  __break(1u);
LABEL_184:
  v8 = *(v61 + 168);
LABEL_185:
  v165 = v8;
LABEL_186:

  v208 = sub_1B4116324(v166);
  sub_1B4116080(&v208);
  v187 = v193[29];
  v189 = v193[28];
  v199 = v193[30];
  v200 = v193[27];
  v1 = v193[25];
  v202 = v193[26];
  v205 = v193[31];
  v10 = v193[24];
  v194 = v193[23];
  v2 = v193[22];
  v188 = v193[19];

  v167 = v208;
  v168 = swift_task_alloc();
  *(v168 + 16) = v9;
  *(v168 + 24) = v2;
  v208 = 0;
  v169 = *(v167 + 16);
  v186 = v167;
  if (v169)
  {
    v170 = (v167 + 32);
    do
    {
      v171 = *v170++;
      v209[0] = v171;
      sub_1B41187F0(&v208, v209);
      --v169;
    }

    while (v169);
    v172 = v208;
  }

  else
  {
    v172 = 0;
  }

  v184 = v172;
  v173 = v199;
LABEL_196:

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB885058);
  (*(v1 + 104))(v202, *MEMORY[0x1E69E8650], v10);
  sub_1B429FEF8();
  (*(v1 + 8))(v202, v10);
  v174 = [*v2 inputWidths];
  sub_1B40E27B4(0, &qword_1ED95EE90);
  v185 = sub_1B429FDF8();

  sub_1B4118908(v2, (v193 + 2));
  (*(v189 + 16))(v173, v205, v200);
  v175 = (*(v189 + 80) + 104) & ~*(v189 + 80);
  v176 = swift_allocObject();
  *(v176 + 16) = v186;
  *(v176 + 24) = v9;
  v177 = *(v193 + 2);
  *(v176 + 32) = *(v193 + 1);
  *(v176 + 48) = v177;
  *(v176 + 64) = *(v193 + 3);
  *(v176 + 80) = v188;
  *(v176 + 88) = v185;
  *(v176 + 96) = v8;
  (*(v189 + 32))(v176 + v175, v173, v200);
  *(v176 + ((v187 + v175 + 7) & 0xFFFFFFFFFFFFFFF8)) = v190;
  v178 = sub_1B429FEE8();
  (*(*(v178 - 8) + 56))(v194, 1, 1, v178);
  v179 = swift_allocObject();
  v179[2] = 0;
  v179[3] = 0;
  v179[4] = &unk_1B42AD4D8;
  v179[5] = v176;
  v180 = swift_allocObject();
  v180[2] = 0;
  v180[3] = 0;
  v180[4] = &unk_1B42AD4E8;
  v180[5] = v179;
  v181 = v8;

  v182 = v188;

  sub_1B4115CC4(0, 0, v194, &unk_1B42AD4F8, v180);
  sub_1B429FF08();

  (*(v189 + 8))(v205, v200);

  v183 = v193[1];

  return v183(v184);
}

unint64_t sub_1B4112BC4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v2;
    result = sub_1B4116F70(a1, a2, isUniquelyReferenced_nonNull_native);
    *v2 = v12;
  }

  else
  {
    result = sub_1B41163E0(a2);
    if (v8)
    {
      v9 = result;
      v10 = swift_isUniquelyReferenced_nonNull_native();
      v11 = *v2;
      v13 = *v3;
      if (!v10)
      {
        sub_1B4116AF4();
        v11 = v13;
      }

      result = sub_1B4116918(v9, v11);
      *v3 = v11;
    }
  }

  return result;
}

void (*sub_1B4112C84(uint64_t **a1, uint64_t a2))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x28uLL);
  }

  *a1 = v4;
  v4[4] = sub_1B41164AC(v4, a2);
  return sub_1B4112CFC;
}

void sub_1B4112CFC(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1, 0);

  free(v1);
}

uint64_t sub_1B4112D48(unint64_t a1)
{
  if (!(a1 >> 62))
  {
    return a1 & 0xFFFFFFFFFFFFFF8;
  }

  v3 = sub_1B42A0518();
  if (!v3)
  {
LABEL_7:

    return MEMORY[0x1E69E7CC0];
  }

  v4 = v3;
  v5 = sub_1B40DDE04(v3, 0);
  sub_1B4118494((v5 + 4), v4, a1);
  v7 = v6;

  result = v5;
  if (v7 != v4)
  {
    __break(1u);
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_1B4112DF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[19] = a7;
  v8[20] = a8;
  v8[17] = a5;
  v8[18] = a6;
  v8[15] = a3;
  v8[16] = a4;
  v8[13] = a1;
  v8[14] = a2;
  v9 = sub_1B429F9F8();
  v8[21] = v9;
  v8[22] = *(v9 - 8);
  v8[23] = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB885070);
  v8[24] = v10;
  v8[25] = *(v10 - 8);
  v8[26] = swift_task_alloc();
  v11 = sub_1B429F9B8();
  v8[27] = v11;
  v8[28] = *(v11 - 8);
  v8[29] = swift_task_alloc();
  v12 = sub_1B429F9E8();
  v8[30] = v12;
  v8[31] = *(v12 - 8);
  v8[32] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B4112FDC, 0, 0);
}

unint64_t sub_1B4112FDC()
{
  v1 = MEMORY[0x1E69E7CC0];
  *(v0 + 80) = MEMORY[0x1E69E7CC0];
  v2 = (v0 + 80);
  *(v0 + 88) = v1;
  v3 = (v0 + 88);
  v4 = *(*(v0 + 104) + 16);
  *(v0 + 264) = v4;
  if (!v4)
  {
LABEL_114:
    v79 = *(v0 + 248);
    v78 = *(v0 + 256);
    v80 = *(v0 + 240);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB885050);
    sub_1B429FF28();
    v81 = sub_1B410F8A0();
    (*(v79 + 16))(v78, v81, v80);
    v82 = sub_1B410F958();
    v50 = *v82;
    v83 = *(v82 + 16);
    v23 = sub_1B429F9C8();
    sub_1B429FA08();
    v84 = sub_1B42A01B8();
    result = sub_1B42A0278();
    if (result)
    {
      v104 = v84;
      if (v83)
      {
        goto LABEL_122;
      }

      if (v50)
      {
LABEL_126:
        v92 = *(v0 + 176);
        v91 = *(v0 + 184);
        v93 = *(v0 + 168);

        sub_1B429FA38();

        if ((*(v92 + 88))(v91, v93) == *MEMORY[0x1E69E93E8])
        {
          v94 = "[Error] Interval already ended";
        }

        else
        {
          (*(*(v0 + 176) + 8))(*(v0 + 184), *(v0 + 168));
          v94 = "";
        }

        v95 = *(v0 + 248);
        v103 = *(v0 + 256);
        v96 = *(v0 + 232);
        v97 = *(v0 + 240);
        v99 = *(v0 + 216);
        v98 = *(v0 + 224);
        v100 = swift_slowAlloc();
        *v100 = 0;
        v101 = sub_1B429F998();
        _os_signpost_emit_with_name_impl(&dword_1B40D2000, v23, v104, v101, v50, v94, v100, 2u);
        MEMORY[0x1B8C74FA0](v100, -1, -1);

        (*(v98 + 8))(v96, v99);
        (*(v95 + 8))(v103, v97);
        goto LABEL_98;
      }

      __break(1u);
    }

    v86 = *(v0 + 248);
    v85 = *(v0 + 256);
    v88 = *(v0 + 232);
    v87 = *(v0 + 240);
    v89 = *(v0 + 216);
    v90 = *(v0 + 224);

    (*(v90 + 8))(v88, v89);
    (*(v86 + 8))(v85, v87);
LABEL_98:

    v68 = *(v0 + 8);

    return v68();
  }

  v5 = 0;
  v104 = v0 + 16;
  v102 = v0 + 48;
  *(v0 + 272) = v4;
  *(v0 + 280) = v4;
  *(v0 + 288) = v4 - 1;
  v6 = &_OBJC_LABEL_PROTOCOL___CRFormPostProcessingStep;
  v7 = v4;
  while (1)
  {
    if (v5 && v4 < v7)
    {
LABEL_112:
      __break(1u);
LABEL_113:
      __break(1u);
      goto LABEL_114;
    }

    v8 = *(*(v0 + 104) + 8 * v7 + 24);
    *(v0 + 296) = v8;
    sub_1B429FF98();
    if (!*(*(v0 + 112) + 16) || (v9 = sub_1B41163E0(v8), (v10 & 1) == 0))
    {

      goto LABEL_98;
    }

    v11 = *(*(*(v0 + 112) + 56) + 8 * v9);
    *(v0 + 304) = v11;
    v12 = v11 >> 62 ? sub_1B42A0518() : *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
    *(v0 + 312) = v12;

    if (v12)
    {
      break;
    }

    v23 = *v3;
LABEL_58:
    *(v0 + 352) = v23;

    if (v23 >> 62)
    {
      if (sub_1B42A0518())
      {
LABEL_101:
        v69 = *(v0 + 120);
        v70 = *(v0 + 136) & 0xC000000000000001;
        v2 = v69[4];
        v50 = v69[5];
        __swift_project_boxed_opaque_existential_0(v69 + 1, v2);
        result = *(v0 + 296);
        if (!v70)
        {
          if ((result & 0x8000000000000000) != 0)
          {
            __break(1u);
          }

          else
          {
            v71 = *(v0 + 136);
            if (result < *((v71 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              v72 = *(v71 + 8 * result + 32);
LABEL_105:
              v73 = v72;
              *(v0 + 48) = 0;
              *(v0 + 56) = 1;
              result = MEMORY[0x1B8C72130]();
              if (*(v0 + 56))
              {
                goto LABEL_140;
              }

              v74 = *(v0 + 120);
              v75 = *(v0 + 48);

              v76 = *v74;
              v105 = (*(v50 + 8) + **(v50 + 8));
              v77 = swift_task_alloc();
              *(v0 + 384) = v77;
              *v77 = v0;
              v77[1] = sub_1B4114CC0;
              v63 = *(v0 + 144);
              v64 = *(v0 + 128);
              v65 = v23;
              v66.n128_u64[0] = v75;
              v67 = v76;
              goto LABEL_94;
            }
          }

          __break(1u);
LABEL_135:
          __break(1u);
LABEL_136:
          __break(1u);
LABEL_137:
          __break(1u);
          goto LABEL_138;
        }

LABEL_132:
        v72 = MEMORY[0x1B8C72CD0](result, *(v0 + 136));
        goto LABEL_105;
      }
    }

    else if (*((v23 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_101;
    }

    v23 = *v2;
    v45 = *v2 >> 62;
    if (v45)
    {
      if (!sub_1B42A0518())
      {
        goto LABEL_74;
      }

LABEL_62:
      v47 = *(v0 + 200);
      v46 = *(v0 + 208);
      v48 = *(v0 + 192);
      v49 = *(v0 + 288) == 0;
      *(v0 + 64) = v23;
      *(v0 + 72) = v49;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB885050);
      sub_1B429FF18();
      (*(v47 + 8))(v46, v48);
      if (!v45)
      {
        if (swift_isUniquelyReferenced_nonNull_bridgeObject())
        {
          sub_1B41192EC(0, *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10), sub_1B40FB7FC, sub_1B41191E0);
          goto LABEL_74;
        }

        v51 = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1;
LABEL_73:
        v52 = sub_1B40DDE04(0, v51);

        *v2 = v52;
        goto LABEL_74;
      }

      if (v23 < 0)
      {
        v50 = v23;
      }

      else
      {
        v50 = v23 & 0xFFFFFFFFFFFFFF8;
      }

      v51 = sub_1B42A0518();
      result = sub_1B42A0518();
      if ((result & 0x8000000000000000) == 0)
      {
        result = sub_1B42A0518();
        if (v51 < 0 || result < v51)
        {
          goto LABEL_131;
        }

        goto LABEL_73;
      }

      __break(1u);
LABEL_131:
      __break(1u);
      goto LABEL_132;
    }

    if (*((*v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_62;
    }

LABEL_74:
    v53 = *(v0 + 272);
    v7 = v53 - 1;
    if (v53 == 1)
    {
      goto LABEL_114;
    }

    v54 = *(v0 + 288);
    v55 = *(v0 + 264);
    if (v53 == v55)
    {
      v4 = *(v0 + 264);
    }

    else
    {
      v4 = *(v0 + 280);
    }

    *(v0 + 272) = v7;
    *(v0 + 280) = v4;
    v5 = v7 != v55;
    if (v7 == v55)
    {
      v54 = v55;
    }

    *(v0 + 288) = v54 - 1;
    if (__OFSUB__(v54, 1))
    {
      goto LABEL_113;
    }
  }

  v13 = 0;
  while (1)
  {
    v14 = *(v0 + 304);
    if ((v14 & 0xC000000000000001) != 0)
    {
      v15 = MEMORY[0x1B8C72CD0](v13);
    }

    else
    {
      if (v13 >= *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_108;
      }

      v15 = *(v14 + 8 * v13 + 32);
    }

    *(v0 + 320) = v15;
    *(v0 + 328) = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      __break(1u);
LABEL_108:
      __break(1u);
LABEL_109:
      __break(1u);
LABEL_110:
      __break(1u);
LABEL_111:
      __break(1u);
      goto LABEL_112;
    }

    if (*(v0 + 288))
    {
      v16 = 0;
    }

    else
    {
      v17 = *(v0 + 304);
      if (v17 >> 62)
      {
        v19 = v15;
        v18 = sub_1B42A0518();
        v15 = v19;
      }

      else
      {
        v18 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v20 = __OFSUB__(v18, 1);
      v21 = v18 - 1;
      if (v20)
      {
        goto LABEL_109;
      }

      v16 = v13 == v21;
    }

    *(v0 + 25) = v16;
    v22 = v15;
    MEMORY[0x1B8C72680]();
    if (*((*(v0 + 88) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v0 + 88) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1B429FE08();
    }

    sub_1B429FE38();
    v23 = *(v0 + 88);
    *(v0 + 336) = v23;
    v24 = v23 >> 62 ? sub_1B42A0518() : *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v25 = *(v0 + 120);
    v26 = *v25;
    *(v0 + 344) = *v25;
    if (v24 == [v26 v6[480]])
    {
      break;
    }

    v27 = *v2;
    v28 = *v2 >> 62;
    if (v28)
    {
      v29 = sub_1B42A0518();
    }

    else
    {
      v29 = *((*v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v29 == [*(v0 + 344) maxConcurrentBatches])
    {
      v30 = v2;
      v2 = v6;
      v31 = *(v0 + 25);
      v32 = *(v0 + 200);
      v33 = *(v0 + 208);
      v34 = *(v0 + 192);
      *(v0 + 16) = v27;
      *(v0 + 24) = v31;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB885050);
      sub_1B429FF18();
      (*(v32 + 8))(v33, v34);
      v35 = v27 & 0xFFFFFFFFFFFFFF8;
      if (v28)
      {
        v38 = sub_1B42A0518();
        if (sub_1B42A0518() < 0)
        {
          goto LABEL_110;
        }

        v39 = sub_1B42A0518();
        if (v38 < 0 || v39 < v38)
        {
          goto LABEL_111;
        }

        v40 = *(v0 + 320);
        if (v38)
        {
          goto LABEL_46;
        }

LABEL_50:

        v41 = MEMORY[0x1E69E7CC0];
LABEL_51:
        v6 = v2;

        v2 = v30;
        *v30 = v41;
        v3 = (v0 + 88);
        goto LABEL_12;
      }

      if ((swift_isUniquelyReferenced_nonNull_bridgeObject() & 1) == 0)
      {
        v40 = *(v0 + 320);
        if (!(*((v27 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1))
        {
          goto LABEL_50;
        }

LABEL_46:
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB884E90);
        v41 = swift_allocObject();
        v42 = _swift_stdlib_malloc_size(v41);

        v43 = v42 - 32;
        if (v42 < 32)
        {
          v43 = v42 - 25;
        }

        v41[2] = 0;
        v41[3] = (2 * (v43 >> 3)) | 1;
        goto LABEL_51;
      }

      v36 = *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if ((swift_isUniquelyReferenced_nonNull_bridgeObject() & 1) == 0)
      {
        v27 = sub_1B42A0438();
        v35 = v27 & 0xFFFFFFFFFFFFFF8;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB884950);
      swift_arrayDestroy();
      if (v36)
      {
        if (v27 >> 62)
        {
          result = sub_1B42A0518();
          if (__OFSUB__(result, v36))
          {
            goto LABEL_136;
          }

          memmove((v35 + 32), (v35 + 8 * v36 + 32), 8 * (result - v36));
          v37 = sub_1B42A0518();
        }

        else
        {
          v37 = *(v35 + 16);
          memmove((v35 + 32), (v35 + 8 * v36 + 32), 8 * (v37 - v36));
        }

        if (__OFADD__(v37, -v36))
        {
          goto LABEL_113;
        }

        *(v35 + 16) = v37 - v36;
      }

      *(v0 + 80) = v27;
      v6 = v2;
      v2 = v30;
      v3 = (v0 + 88);
    }

    else
    {
    }

LABEL_12:
    v13 = *(v0 + 328);
    if (v13 == *(v0 + 312))
    {
      goto LABEL_58;
    }
  }

  v56 = *(v0 + 120);
  v57 = *(v0 + 136) & 0xC000000000000001;
  v2 = v56[4];
  v50 = v56[5];
  __swift_project_boxed_opaque_existential_0(v56 + 1, v2);
  result = *(v0 + 296);
  if (v57)
  {
    v59 = MEMORY[0x1B8C72CD0](result, *(v0 + 136));
LABEL_92:
    v60 = v59;
    *(v0 + 32) = 0;
    *(v0 + 40) = 1;
    result = MEMORY[0x1B8C72130]();
    if (*(v0 + 40))
    {
      goto LABEL_135;
    }

    v61 = *(v0 + 32);

    v105 = (*(v50 + 8) + **(v50 + 8));
    v62 = swift_task_alloc();
    *(v0 + 360) = v62;
    *v62 = v0;
    v62[1] = sub_1B4113C9C;
    v63 = *(v0 + 144);
    v64 = *(v0 + 128);
    v65 = v23;
    v66.n128_u64[0] = v61;
    v67 = v26;
LABEL_94:

    return v105(v65, v64, v67, v63, v2, v50, v66);
  }

  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v58 = *(v0 + 136);
    if (result < *((v58 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v59 = *(v58 + 8 * result + 32);
      goto LABEL_92;
    }
  }

  __break(1u);
LABEL_122:
  if (HIDWORD(v50))
  {
    goto LABEL_137;
  }

  if ((v50 & 0xFFFFF800) != 0xD800)
  {
    if (v50 >> 16 <= 0x10)
    {
      v50 = (v2 + 2);
      goto LABEL_126;
    }

LABEL_138:
    __break(1u);
  }

  __break(1u);
LABEL_140:
  __break(1u);
  return result;
}