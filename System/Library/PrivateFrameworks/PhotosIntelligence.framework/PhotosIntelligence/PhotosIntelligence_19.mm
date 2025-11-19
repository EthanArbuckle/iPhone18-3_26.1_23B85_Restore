uint64_t sub_1C70C97E4()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_20();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 592) = *(v3 + 48);
  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1C70C98E0()
{
  OUTLINED_FUNCTION_31();
  v1 = *(v0 + 576);

  sub_1C6F85170();
  type metadata accessor for Spatial3DAssetResourceUtils();
  static Spatial3DAssetResourceUtils.extractAlchemistResourcePath(from:)();

  v2 = [objc_opt_self() defaultManager];
  OUTLINED_FUNCTION_41_3();
  v3 = sub_1C755065C();
  v4 = [v2 fileExistsAtPath_];

  if (v4)
  {
    v6 = *(v0 + 472);
    v5 = *(v0 + 480);
    v7 = *(v0 + 464);
    OUTLINED_FUNCTION_84();
    __swift_storeEnumTagSinglePayload(v8, v9, v10, v11);
    (*(v6 + 104))(v5, *MEMORY[0x1E6968F70], v7);
    sub_1C75504FC();
    OUTLINED_FUNCTION_41_3();
    sub_1C754DD0C();
    if (qword_1EC213D88 != -1)
    {
      OUTLINED_FUNCTION_0_45();
    }

    v12 = sub_1C754FF1C();
    OUTLINED_FUNCTION_23_2(v12, qword_1EC2170D0);
    sub_1C75504FC();
    v13 = sub_1C754FEEC();
    v14 = sub_1C755118C();

    v15 = os_log_type_enabled(v13, v14);
    v16 = *(v0 + 560);
    if (v15)
    {
      v17 = OUTLINED_FUNCTION_41_0();
      v27 = OUTLINED_FUNCTION_20_1();
      *v17 = 136315138;
      v18 = OUTLINED_FUNCTION_41_3();
      v21 = sub_1C6F765A4(v18, v19, v20);

      *(v17 + 4) = v21;
      _os_log_impl(&dword_1C6F5C000, v13, v14, "Conversion succeeded, output written to %s", v17, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v27);
      OUTLINED_FUNCTION_109();
      OUTLINED_FUNCTION_109();
    }

    else
    {
    }

    (*(*(v0 + 504) + 32))(*(v0 + 440), *(v0 + 512), *(v0 + 496));
    sub_1C6F85170();

    OUTLINED_FUNCTION_43();
  }

  else
  {
    v22 = *(v0 + 560);
    sub_1C755180C();

    v23 = OUTLINED_FUNCTION_41_3();
    MEMORY[0x1CCA5CD70](v23);

    sub_1C70CAC64();
    OUTLINED_FUNCTION_166_0();
    *v24 = 0xD00000000000001ALL;
    *(v24 + 8) = 0x80000001C759D3C0;
    *(v24 + 16) = 0;
    swift_willThrow();

    sub_1C6F85170();

    OUTLINED_FUNCTION_43();
  }

  return v25();
}

uint64_t sub_1C70C9CC8()
{
  OUTLINED_FUNCTION_75_1();
  v1 = v0[73];
  v2 = v0[72];
  v3 = v0[70];
  swift_willThrow();

  sub_1C6F85170();

  OUTLINED_FUNCTION_43();

  return v4();
}

void sub_1C70C9DA8(uint64_t a1)
{
  os_unfair_lock_lock((a1 + 20));
  *(a1 + 16) = 1;

  os_unfair_lock_unlock((a1 + 20));
}

double sub_1C70C9DEC()
{
  PFDeviceNativeScreenSize();
  if (result * v1 <= 0.0)
  {
    if (qword_1EC213D88 != -1)
    {
      swift_once();
    }

    v2 = sub_1C754FF1C();
    __swift_project_value_buffer(v2, qword_1EC2170D0);
    v3 = sub_1C754FEEC();
    v4 = sub_1C755119C();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_1C6F5C000, v3, v4, "Unable to retrieve device screen size from MobileGestalt, falling back default.", v5, 2u);
      MEMORY[0x1CCA5F8E0](v5, -1, -1);
    }

    return 2048.0;
  }

  return result;
}

double sub_1C70C9EE0(double a1, double a2, double a3, double a4, uint64_t a5, uint64_t a6, char a7)
{
  if (a1 == 0.0 || a2 == 0.0 || (*MEMORY[0x1E69BDDB0] == a1 ? (v12 = *(MEMORY[0x1E69BDDB0] + 8) == a2) : (v12 = 0), v12))
  {
    v13 = MEMORY[0x1E69E9C10];
    v14 = MEMORY[0x1E69E9C10];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
    {
      __os_log_helper_16_0_3_8_0_8_0_8_0(buf, *&a1, *&a2, 0x3FF0000000000000);
      _os_log_fault_impl(&dword_1C6F5C000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT, "PFSizeGetAspectRatio produced an undefined aspect ratio from size {%lf, %lf}. Returning %f. Use PFSizeGetAspectRatioWithDefault() to provide a value for this case.", buf, 0x20u);
    }
  }

  PFSizeWithAspectRatioFittingSize();
  v16 = v15;
  v18 = v17;
  v77 = a3;
  PFSizeWithAspectRatioFittingSize();
  if (v19 * v20 < v16 * v18)
  {
    v21 = v18;
  }

  else
  {
    v16 = v19;
    v21 = v20;
  }

  sub_1C754F73C();
  v23 = v22;
  v24 = round(v16 * v23);
  v25 = round(v21 * v23);
  v26 = 0.0;
  v27 = 0.0;
  if ((a7 & 1) == 0)
  {
    PFSizeWithAspectRatioFittingSize();
    v26 = v28;
    v27 = v29;
  }

  if (v26 * v27 >= v24 * v25)
  {
    v30 = v26;
  }

  else
  {
    v30 = v24;
  }

  if (v26 * v27 >= v24 * v25)
  {
    v31 = v27;
  }

  else
  {
    v31 = v25;
  }

  if (a1 * a2 < v30 * v31)
  {
    v30 = a1;
    v31 = a2;
  }

  v32 = round(v30);
  v33 = round(v31);
  v34 = v33 <= 64.0 || v32 <= 64.0;
  if (v34 || v32 * v33 <= 0.0)
  {
    v64 = v33;
    if (qword_1EC213D88 != -1)
    {
      OUTLINED_FUNCTION_0_45();
    }

    v65 = sub_1C754FF1C();
    OUTLINED_FUNCTION_23_2(v65, qword_1EC2170D0);
    v66 = sub_1C754FEEC();
    v67 = sub_1C755119C();
    if (os_log_type_enabled(v66, v67))
    {
      v68 = OUTLINED_FUNCTION_41_0();
      v69 = OUTLINED_FUNCTION_20_1();
      *buf = v69;
      *v68 = 136446210;
      v70 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"{%.2f, %.2f}", *&v32, *&v64];
      v71 = sub_1C755068C();
      v73 = v72;

      v74 = sub_1C6F765A4(v71, v73, buf);

      *(v68 + 4) = v74;
      _os_log_impl(&dword_1C6F5C000, v66, v67, "calculateBakingSize would return invalid size: %{public}s, falling back to default", v68, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v69);
      OUTLINED_FUNCTION_109();
      OUTLINED_FUNCTION_109();
    }

    return 2048.0;
  }

  else
  {
    v76 = v33;
    if (qword_1EC213D88 != -1)
    {
      OUTLINED_FUNCTION_0_45();
    }

    v35 = sub_1C754FF1C();
    OUTLINED_FUNCTION_23_2(v35, qword_1EC2170D0);
    v36 = sub_1C754FEEC();
    v37 = sub_1C75511BC();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      *buf = swift_slowAlloc();
      *v38 = 136447234;
      v39 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"{%.2f, %.2f}", *&a1, *&a2];
      sub_1C755068C();
      OUTLINED_FUNCTION_59();

      OUTLINED_FUNCTION_58_0(v40, v41, v42, v43);
      OUTLINED_FUNCTION_80();
      *(v38 + 4) = v39;
      *(v38 + 12) = 2082;
      v44 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"{%.2f, %.2f}", *&v77, *&a4];
      sub_1C755068C();
      OUTLINED_FUNCTION_59();

      OUTLINED_FUNCTION_58_0(v45, v46, v47, v48);
      OUTLINED_FUNCTION_80();
      *(v38 + 14) = v44;
      *(v38 + 22) = 2082;
      v49 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"{%.2f, %.2f}", *&v24, *&v25];
      sub_1C755068C();
      OUTLINED_FUNCTION_59();

      OUTLINED_FUNCTION_58_0(v50, v51, v52, v53);
      OUTLINED_FUNCTION_80();
      *(v38 + 24) = v49;
      *(v38 + 32) = 2082;
      v54 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"{%.2f, %.2f}", *&v26, *&v27];
      sub_1C755068C();
      OUTLINED_FUNCTION_59();

      OUTLINED_FUNCTION_58_0(v55, v56, v57, v58);
      OUTLINED_FUNCTION_80();
      *(v38 + 34) = v54;
      *(v38 + 42) = 2082;
      v59 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"{%.2f, %.2f}", *&v32, *&v76];
      v60 = sub_1C755068C();
      v62 = v61;

      v63 = sub_1C6F765A4(v60, v62, buf);

      *(v38 + 44) = v63;
      _os_log_impl(&dword_1C6F5C000, v36, v37, "calculateBakingSize imageSize:%{public}s viewportSize:%{public}s optimizedSizeForScreen:%{public}s previousSize:%{public}s finalBakingSize:%{public}s", v38, 0x34u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_109();
      OUTLINED_FUNCTION_109();
    }
  }

  return v32;
}

uint64_t sub_1C70CA440()
{
  OUTLINED_FUNCTION_42();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC219230);
  OUTLINED_FUNCTION_76(v1);
  v0[2] = OUTLINED_FUNCTION_77();
  v2 = sub_1C754DF6C();
  v0[3] = v2;
  OUTLINED_FUNCTION_18(v2);
  v0[4] = v3;
  v0[5] = OUTLINED_FUNCTION_81_0();
  v0[6] = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_24_1();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1C70CA518()
{
  OUTLINED_FUNCTION_115_0();
  if (qword_1EC213D90 != -1)
  {
    swift_once();
  }

  v2 = v0[2];
  v1 = v0[3];
  v3 = off_1EC2170E8;
  v4 = (off_1EC2170E8 + *(*off_1EC2170E8 + *MEMORY[0x1E69E6B68] + 16));
  v5 = (*(*off_1EC2170E8 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((off_1EC2170E8 + v5));
  sub_1C754DF5C();
  v6 = *(type metadata accessor for Spatial3DResourceGenerator.Config(0) + 20);
  sub_1C70CB8F4(v4 + v6, v2, &unk_1EC219230);
  if (__swift_getEnumTagSinglePayload(v2, 1, v1) == 1)
  {
    sub_1C6FB5FC8(v0[2], &unk_1EC219230);
  }

  else
  {
    v7 = v0[5];
    v8 = v0[3];
    v9 = v0[4];
    (*(v9 + 32))(v7, v0[2], v8);
    sub_1C754DEAC();
    v11 = v10;
    v12 = *(v9 + 8);
    v12(v7, v8);
    if (v11 < *v4)
    {
      v12(v0[6], v0[3]);
      os_unfair_lock_unlock(&v3[v5]);
      if (qword_1EC213D88 != -1)
      {
        OUTLINED_FUNCTION_0_45();
      }

      v13 = sub_1C754FF1C();
      OUTLINED_FUNCTION_23_2(v13, qword_1EC2170D0);
      v14 = sub_1C754FEEC();
      v15 = sub_1C755118C();
      if (!OUTLINED_FUNCTION_21_0(v15))
      {
        goto LABEL_19;
      }

LABEL_18:
      v31 = OUTLINED_FUNCTION_127();
      OUTLINED_FUNCTION_37_0(v31);
      OUTLINED_FUNCTION_8_1();
      _os_log_impl(v32, v33, v34, v35, v36, 2u);
      OUTLINED_FUNCTION_23_3();
      goto LABEL_19;
    }
  }

  v16 = v0[6];
  v17 = v0[3];
  v18 = v0[4];
  sub_1C6FB5FC8(v4 + v6, &unk_1EC219230);
  (*(v18 + 32))(v4 + v6, v16, v17);
  __swift_storeEnumTagSinglePayload(v4 + v6, 0, 1, v17);
  os_unfair_lock_unlock(&v3[v5]);
  AlchemistServiceInterface.prewarm()();
  if (!v19)
  {
    if (qword_1EC213D88 != -1)
    {
      OUTLINED_FUNCTION_0_45();
    }

    v29 = sub_1C754FF1C();
    OUTLINED_FUNCTION_23_2(v29, qword_1EC2170D0);
    v14 = sub_1C754FEEC();
    v30 = sub_1C755117C();
    if (!OUTLINED_FUNCTION_21_0(v30))
    {
      goto LABEL_19;
    }

    goto LABEL_18;
  }

  if (qword_1EC213D88 != -1)
  {
    OUTLINED_FUNCTION_0_45();
  }

  v20 = sub_1C754FF1C();
  OUTLINED_FUNCTION_23_2(v20, qword_1EC2170D0);
  v21 = v19;
  v14 = sub_1C754FEEC();
  v22 = sub_1C755119C();

  if (os_log_type_enabled(v14, v22))
  {
    v23 = OUTLINED_FUNCTION_41_0();
    v24 = swift_slowAlloc();
    *v23 = 138412290;
    v25 = v19;
    v26 = _swift_stdlib_bridgeErrorToNSError();
    *(v23 + 4) = v26;
    *v24 = v26;
    OUTLINED_FUNCTION_89(&dword_1C6F5C000, v27, v28, "Failed to pre-warm for spatial3D generation: %@");
    sub_1C6FB5FC8(v24, &qword_1EC215190);
    OUTLINED_FUNCTION_109();
    OUTLINED_FUNCTION_37();

LABEL_19:
    goto LABEL_21;
  }

LABEL_21:

  OUTLINED_FUNCTION_43();

  return v37();
}

uint64_t sub_1C70CA930()
{
  v0 = type metadata accessor for Spatial3DResourceGenerator.Config(0);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = (&v8 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v2 = 0x4082C00000000000;
  v4 = *(v3 + 28);
  v5 = sub_1C754DF6C();
  __swift_storeEnumTagSinglePayload(v2 + v4, 1, 1, v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2171B8);
  v6 = swift_allocObject();
  *&v6[(*(*v6 + 48) + 3) & 0x1FFFFFFFCLL] = 0;
  sub_1C70CB94C(v2, &v6[*(*v6 + *MEMORY[0x1E69E6B68] + 16)], type metadata accessor for Spatial3DResourceGenerator.Config);
  result = sub_1C70CB9A4(v2, type metadata accessor for Spatial3DResourceGenerator.Config);
  off_1EC2170E8 = v6;
  return result;
}

id sub_1C70CAAA0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v15[1] = *MEMORY[0x1E69E9840];
  v6 = sub_1C754DC8C();
  v15[0] = 0;
  v7 = [v3 initWithURL:v6 forDevice:a2 error:v15];

  v8 = v15[0];
  if (v7)
  {
    v9 = sub_1C754DD2C();
    v10 = *(*(v9 - 8) + 8);
    v11 = v8;
    v10(a1, v9);
    swift_unknownObjectRelease();
  }

  else
  {
    v12 = v15[0];
    sub_1C754DBEC();

    swift_willThrow();
    swift_unknownObjectRelease();
    v13 = sub_1C754DD2C();
    (*(*(v13 - 8) + 8))(a1, v13);
  }

  return v7;
}

uint64_t sub_1C70CAC04(void *a1)
{
  v1 = [a1 uuid];
  if (v1)
  {
    v2 = v1;
    sub_1C755068C();
  }

  return OUTLINED_FUNCTION_90();
}

unint64_t sub_1C70CAC64()
{
  result = qword_1EC2170F0;
  if (!qword_1EC2170F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2170F0);
  }

  return result;
}

uint64_t sub_1C70CACB8()
{
  OUTLINED_FUNCTION_49_0();
  swift_task_alloc();
  OUTLINED_FUNCTION_48();
  *(v0 + 16) = v1;
  *v1 = v2;
  v1[1] = sub_1C6F738F4;
  OUTLINED_FUNCTION_54();

  return sub_1C70CA440();
}

uint64_t sub_1C70CAD80(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 16);
  v5 = a2;
  return v3(a1, &v5);
}

uint64_t sub_1C70CADEC()
{
  OUTLINED_FUNCTION_49_0();
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  swift_task_alloc();
  OUTLINED_FUNCTION_48();
  *(v1 + 16) = v4;
  *v4 = v5;
  v4[1] = sub_1C6F739D4;
  v6 = OUTLINED_FUNCTION_54();

  return sub_1C70C7868(v6, v7, v2, v3);
}

unint64_t sub_1C70CAE9C()
{
  result = qword_1EC217100;
  if (!qword_1EC217100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC217100);
  }

  return result;
}

unint64_t sub_1C70CAEF4()
{
  result = qword_1EC217108;
  if (!qword_1EC217108)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC217110);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC217108);
  }

  return result;
}

uint64_t sub_1C70CAF80()
{
  v0 = sub_1C6F65BE8(319, &qword_1EC217128);
  if (v1 <= 0x3F)
  {
    v0 = type metadata accessor for AsyncStreamWorker();
    if (v2 <= 0x3F)
    {
      v3 = sub_1C754DD2C();
      if (v4 > 0x3F)
      {
        return v3;
      }

      sub_1C70CB098();
      if (v5 > 0x3F)
      {
        return v3;
      }

      else
      {
        v0 = type metadata accessor for Spatial3DResourceGenerator.PendingMXIScenePersistenceDictionary();
        if (v6 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
          return 0;
        }
      }
    }
  }

  return v0;
}

void sub_1C70CB098()
{
  if (!qword_1EC217130)
  {
    sub_1C6F65BE8(255, &qword_1EDD068B8);
    v0 = sub_1C755149C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC217130);
    }
  }
}

_BYTE *storeEnumTagSinglePayload for Spatial3DResourceGenerator.GenerationMode(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t __swift_memcpy5_4(uint64_t result, int *a2)
{
  v2 = *a2;
  *(result + 4) = *(a2 + 4);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for Spatial3DResourceGenerator.Status(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 5))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for Spatial3DResourceGenerator.Status(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 4) = 0;
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

  *(result + 5) = v3;
  return result;
}

uint64_t sub_1C70CB23C(uint64_t a1)
{
  if (*(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1C70CB258(uint64_t result, int a2)
{
  if (a2)
  {
    *result = a2 - 1;
    v2 = 1;
  }

  else
  {
    v2 = 0;
  }

  *(result + 4) = v2;
  return result;
}

uint64_t get_enum_tag_for_layout_string_18PhotosIntelligence26Spatial3DResourceGeneratorV5ErrorO(uint64_t a1)
{
  if ((*(a1 + 16) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 16) & 3;
  }
}

uint64_t sub_1C70CB2A4(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFE && *(a1 + 17))
    {
      v2 = *a1 + 253;
    }

    else
    {
      v3 = *(a1 + 16);
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

uint64_t sub_1C70CB2E4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t sub_1C70CB328(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    *(result + 8) = 0;
    LOBYTE(a2) = 2;
  }

  *(result + 16) = a2;
  return result;
}

uint64_t sub_1C70CB390(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Spatial3DResourceGenerator(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C70CB3F4()
{
  OUTLINED_FUNCTION_49_0();
  v2 = type metadata accessor for Spatial3DResourceGenerator(0);
  OUTLINED_FUNCTION_18(v2);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v6 = *(v0 + 16);
  v7 = *(v0 + ((*(v5 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));
  v8 = swift_task_alloc();
  *(v1 + 16) = v8;
  *v8 = v1;
  v8[1] = sub_1C6F739D4;

  return sub_1C70C7BF8(v6, v0 + v4, v7);
}

uint64_t sub_1C70CB4F0()
{
  OUTLINED_FUNCTION_123();
  v2 = type metadata accessor for Spatial3DResourceGenerator(0);
  OUTLINED_FUNCTION_18(v2);
  v5 = *(v0 + 24);
  v6 = *(v0 + ((*(v4 + 64) + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8));
  swift_task_alloc();
  OUTLINED_FUNCTION_48();
  *(v1 + 16) = v7;
  *v7 = v8;
  v7[1] = sub_1C6F738F4;
  v9 = OUTLINED_FUNCTION_54();

  return sub_1C70C5EEC(v9, v10, v5, v11, v6);
}

uint64_t sub_1C70CB5F8()
{
  OUTLINED_FUNCTION_49_0();
  v2 = type metadata accessor for Spatial3DResourceGenerator(0);
  OUTLINED_FUNCTION_18(v2);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v6 = *(v0 + ((*(v5 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));
  swift_task_alloc();
  OUTLINED_FUNCTION_48();
  *(v1 + 16) = v7;
  *v7 = v8;
  v7[1] = sub_1C6F739D4;

  return sub_1C70C6270(v0 + v4, v6);
}

id sub_1C70CB6EC(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  type metadata accessor for MXIBuildOption(0);
  sub_1C70CB88C(&qword_1EC214940, type metadata accessor for MXIBuildOption);
  v7 = sub_1C755048C();

  v8 = [a4 compressScene:a1 withOptions:v7 error:a3];

  return v8;
}

id sub_1C70CB7C0(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  type metadata accessor for MXISerializeOption(0);
  sub_1C70CB88C(&unk_1EC215B00, type metadata accessor for MXISerializeOption);
  v7 = sub_1C755048C();

  v8 = [a4 writeToURL:a1 withOptions:v7 error:a3];

  return v8;
}

uint64_t sub_1C70CB88C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1C70CB8F4(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  OUTLINED_FUNCTION_84_0();
  v4 = OUTLINED_FUNCTION_90();
  v5(v4);
  return a2;
}

uint64_t sub_1C70CB94C(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_84_0();
  v4 = OUTLINED_FUNCTION_90();
  v5(v4);
  return a2;
}

uint64_t sub_1C70CB9A4(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_3();
  (*(v3 + 8))(a1);
  return a1;
}

void sub_1C70CBA40()
{
  sub_1C6F5FB48();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

double __os_log_helper_16_0_3_8_0_8_0_8_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *&result = 134218496;
  *a1 = 134218496;
  *(a1 + 4) = a2;
  *(a1 + 12) = 2048;
  *(a1 + 14) = a3;
  *(a1 + 22) = 2048;
  *(a1 + 24) = a4;
  return result;
}

uint64_t OUTLINED_FUNCTION_47_10()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_64_6()
{
  type metadata accessor for Spatial3DResourceGenerator(0);

  return sub_1C70CAC04(v0);
}

uint64_t OUTLINED_FUNCTION_70_6(uint64_t result, float a2)
{
  *result = a2;
  *(result + 4) = v2;
  *(result + 12) = 2048;
  *(result + 14) = v3;
  return result;
}

uint64_t OUTLINED_FUNCTION_74_4@<X0>(uint64_t a1@<X8>)
{

  return sub_1C6F774EC(v1 + 32 * a1, v2 - 120);
}

uint64_t OUTLINED_FUNCTION_76_5()
{
}

uint64_t OUTLINED_FUNCTION_93_5(uint64_t result)
{
  v1[2] = v3;
  v1[3] = result;
  v1[4] = v2;
  return result;
}

uint64_t sub_1C70CBD54(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[18] = a3;
  v4[19] = v3;
  v4[16] = a1;
  v4[17] = a2;
  v5 = sub_1C754F38C();
  v4[20] = v5;
  v4[21] = *(v5 - 8);
  v4[22] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C70CBE18, 0, 0);
}

uint64_t sub_1C70CBE18()
{
  v62 = v0;
  v1 = *(v0 + 128);
  v2 = *(v1 + *(type metadata accessor for StoryMusicCurationOptions() + 88) + 152);
  *(v0 + 184) = v2;
  if (!v2)
  {
    if (qword_1EDD0ED88 != -1)
    {
      OUTLINED_FUNCTION_0_46();
    }

    v22 = sub_1C754FF1C();
    __swift_project_value_buffer(v22, &dword_1EDD28D48);
    v23 = sub_1C754FEEC();
    v24 = sub_1C755117C();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&dword_1C6F5C000, v23, v24, "[curateKeywordsForGlobalTraits] No global traits to curate from", v25, 2u);
      OUTLINED_FUNCTION_109();
    }

    goto LABEL_13;
  }

  v3 = *(v0 + 144);
  __swift_project_boxed_opaque_existential_1(*(v0 + 136), *(*(v0 + 136) + 24));
  sub_1C754F1CC();
  static StoryMusicEmbeddingTerms.termsByTags(_:matchAnyTags:)(v3, 1, v4, v5, v6, v7, v8, v9, v56, v57, v59, v61[0], v61[1], v61[2]);
  v11 = v10;
  v12 = *(v10 + 16);
  v13 = MEMORY[0x1E69E7CC0];
  if (v12)
  {
    v58 = v2;
    v60 = v0;
    v61[0] = MEMORY[0x1E69E7CC0];
    sub_1C6F7ED9C();
    v14 = 0;
    v15 = v61[0];
    v16 = *(v61[0] + 16);
    v17 = 16 * v16;
    do
    {
      v19 = *(v11 + v14 + 32);
      v18 = *(v11 + v14 + 40);
      v61[0] = v15;
      v20 = *(v15 + 24);
      sub_1C75504FC();
      if (v16 >= v20 >> 1)
      {
        sub_1C6F7ED9C();
        v15 = v61[0];
      }

      *(v15 + 16) = v16 + 1;
      v21 = v15 + v17;
      *(v21 + 32) = v19;
      *(v21 + 40) = v18;
      v17 += 16;
      v14 += 48;
      ++v16;
      --v12;
    }

    while (v12);

    v2 = v58;
    v0 = v60;
    v13 = MEMORY[0x1E69E7CC0];
  }

  else
  {

    v15 = MEMORY[0x1E69E7CC0];
  }

  *(v0 + 192) = v15;
  v28 = *(v2 + 16);
  *(v0 + 200) = v28;
  if (!v28)
  {
    OUTLINED_FUNCTION_6_33();
    v32 = *(type metadata accessor for StoryMusicCurationDiagnostics() + 32);
    sub_1C75504FC();
    swift_isUniquelyReferenced_nonNull_native();
    v61[0] = *(v11 + v32);
    OUTLINED_FUNCTION_2_33();
    sub_1C6FC8A40();
    *(v11 + v32) = v61[0];
    swift_endAccess();
    v33 = sub_1C75504FC();
    v61[0] = sub_1C71CC894(v33);
    sub_1C70CCDF0(v61);
    v34 = MEMORY[0x1E69E7CC0];

    v35 = v61[0];
    v36 = sub_1C6FB6304();
    if (v36)
    {
      v37 = v36;
      v61[0] = v34;
      result = sub_1C755195C();
      if (v37 < 0)
      {
        __break(1u);
        return result;
      }

      v38 = 0;
      do
      {
        if ((v35 & 0xC000000000000001) != 0)
        {
          v39 = MEMORY[0x1CCA5DDD0](v38, v35);
        }

        else
        {
          v39 = *(v35 + 8 * v38 + 32);
        }

        ++v38;
        v40 = *(v39 + 16);
        v41 = *(v39 + 24);
        v42 = *(v39 + 32) * 0.9;
        type metadata accessor for MusicKeywordCompletion();
        swift_allocObject();
        MusicKeywordCompletion.init(keyword:score:)(v40, v41, v42);
        sub_1C75504FC();

        sub_1C755192C();
        sub_1C755196C();
        sub_1C755197C();
        sub_1C755193C();
      }

      while (v37 != v38);

      v43 = v61[0];
    }

    else
    {

      v43 = MEMORY[0x1E69E7CC0];
    }

    if (qword_1EDD0ED88 != -1)
    {
      OUTLINED_FUNCTION_0_46();
    }

    v44 = sub_1C754FF1C();
    __swift_project_value_buffer(v44, &dword_1EDD28D48);
    sub_1C75504FC();
    v45 = sub_1C754FEEC();
    v46 = sub_1C755117C();

    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      v48 = swift_slowAlloc();
      v61[0] = v48;
      *v47 = 136315138;
      v49 = type metadata accessor for MusicKeywordCompletion();
      v50 = MEMORY[0x1CCA5D090](v43, v49);
      v52 = sub_1C6F765A4(v50, v51, v61);

      *(v47 + 4) = v52;
      _os_log_impl(&dword_1C6F5C000, v45, v46, "[curateKeywordsForGlobalTraits] All keywords: %s", v47, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v48);
      OUTLINED_FUNCTION_109();
      OUTLINED_FUNCTION_109();
    }

    v54 = *(v0 + 168);
    v53 = *(v0 + 176);
    v55 = *(v0 + 160);
    __swift_project_boxed_opaque_existential_1(*(v0 + 136), *(*(v0 + 136) + 24));
    sub_1C754F1AC();
    (*(v54 + 8))(v53, v55);
LABEL_13:

    OUTLINED_FUNCTION_4_26();

    __asm { BRAA            X2, X16 }
  }

  *(v0 + 216) = v13;
  *(v0 + 224) = v13;
  *(v0 + 208) = 0;
  OUTLINED_FUNCTION_7_22(*(v0 + 184));
  sub_1C75504FC();
  v29 = swift_task_alloc();
  *(v0 + 248) = v29;
  *v29 = v0;
  OUTLINED_FUNCTION_1_40(v29);
  OUTLINED_FUNCTION_4_26();

  return sub_1C7458BF0();
}

uint64_t sub_1C70CC428(uint64_t a1)
{
  *(*v1 + 256) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1C70CC528, 0, 0);
}

uint64_t sub_1C70CC528()
{
  v79 = v0;
  v1 = &qword_1EDD0DFF8[1];
  if (qword_1EDD0ED88 != -1)
  {
    OUTLINED_FUNCTION_0_46();
  }

  v2 = sub_1C754FF1C();
  __swift_project_value_buffer(v2, &dword_1EDD28D48);
  sub_1C75504FC();
  sub_1C75504FC();
  v3 = sub_1C754FEEC();
  v4 = sub_1C755118C();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 256);
    v7 = *(v0 + 232);
    v6 = *(v0 + 240);
    v8 = swift_slowAlloc();
    v78[0] = swift_slowAlloc();
    *v8 = 136315394;
    *(v8 + 4) = sub_1C6F765A4(v7, v6, v78);
    *(v8 + 12) = 2080;
    v9 = type metadata accessor for MusicKeywordCompletion();
    v10 = MEMORY[0x1CCA5D090](v5, v9);
    v12 = sub_1C6F765A4(v10, v11, v78);

    *(v8 + 14) = v12;
    _os_log_impl(&dword_1C6F5C000, v3, v4, "[curateKeywordsForGlobalTraits] keywords for '%s': %s", v8, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_109();
    OUTLINED_FUNCTION_109();
  }

  v13 = *(v0 + 256);
  v14 = v13 >> 62;
  if (v13 >> 62)
  {
    v15 = sub_1C75516BC();
  }

  else
  {
    v15 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v16 = *(v0 + 224);
  v17 = v16 >> 62;
  if (v16 >> 62)
  {
    v18 = sub_1C75516BC();
  }

  else
  {
    v18 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v19 = v18 + v15;
  if (__OFADD__(v18, v15))
  {
    __break(1u);
    goto LABEL_59;
  }

  sub_1C75504FC();
  v76 = v15;
  if (!swift_isUniquelyReferenced_nonNull_bridgeObject())
  {
    if (!v17)
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

  if (v17)
  {
LABEL_16:
    sub_1C75516BC();
    goto LABEL_17;
  }

  v20 = v16 & 0xFFFFFFFFFFFFFF8;
  v21 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1;
  if (v21 >= v19)
  {
    v15 = *(v0 + 224);
    goto LABEL_18;
  }

LABEL_17:
  v15 = sub_1C75518CC();
  v20 = v15 & 0xFFFFFFFFFFFFFF8;
  v21 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1;
LABEL_18:
  v22 = *(v20 + 16);
  v23 = v21 - v22;
  v24 = v20 + 8 * v22;
  v75 = v20;
  if (!v14)
  {
    v13 &= 0xFFFFFFFFFFFFFF8uLL;
    v25 = *(v13 + 16);
    if (v25)
    {
      if (v23 < v25)
      {
LABEL_62:
        __break(1u);
        goto LABEL_63;
      }

      type metadata accessor for MusicKeywordCompletion();
      swift_arrayInitWithCopy();
      goto LABEL_28;
    }

LABEL_32:

    if (v76 <= 0)
    {
LABEL_33:
      v36 = *(v0 + 256);
      v77 = *(v0 + 232);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2171D8);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1C755BAB0;
      *(inited + 32) = v77;
      *(inited + 48) = v36;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2155F0);
      v13 = sub_1C75504DC();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v39 = *(v0 + 216);
      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_34;
      }

      goto LABEL_60;
    }

    goto LABEL_59;
  }

  v26 = sub_1C75516BC();
  if (!v26)
  {
    goto LABEL_32;
  }

  v27 = v26;
  v28 = sub_1C75516BC();
  if (v23 < v28)
  {
LABEL_63:
    __break(1u);
    goto LABEL_64;
  }

  if (v27 < 1)
  {
LABEL_64:
    __break(1u);
LABEL_65:
    OUTLINED_FUNCTION_0_46();
LABEL_51:
    __swift_project_value_buffer(v2, &dword_1EDD28D48);
    sub_1C75504FC();
    v58 = sub_1C754FEEC();
    v59 = sub_1C755117C();

    if (os_log_type_enabled(v58, v59))
    {
      v60 = swift_slowAlloc();
      v61 = swift_slowAlloc();
      v78[0] = v61;
      *v60 = 136315138;
      v62 = type metadata accessor for MusicKeywordCompletion();
      v63 = MEMORY[0x1CCA5D090](v14, v62);
      v65 = sub_1C6F765A4(v63, v64, v78);

      *(v60 + 4) = v65;
      _os_log_impl(&dword_1C6F5C000, v58, v59, "[curateKeywordsForGlobalTraits] All keywords: %s", v60, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v61);
      OUTLINED_FUNCTION_109();
      OUTLINED_FUNCTION_109();
    }

    v67 = *(v0 + 168);
    v66 = *(v0 + 176);
    v68 = *(v0 + 160);
    __swift_project_boxed_opaque_existential_1(*(v0 + 136), *(*(v0 + 136) + 24));
    sub_1C754F1AC();
    (*(v67 + 8))(v66, v68);

    OUTLINED_FUNCTION_5_28();

    __asm { BRAA            X2, X16 }
  }

  v73 = v28;
  v74 = v2;
  v14 = v24 + 32;
  sub_1C70CD720();
  for (i = 0; i != v27; ++i)
  {
    v30 = *(v0 + 256);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2155F0);
    v31 = sub_1C6FDD0FC(v0 + 72, i, v30);
    v13 = *v32;

    v31(v0 + 72, 0);
    *(v14 + 8 * i) = v13;
  }

  v1 = qword_1EDD0DFF8 + 8;
  v2 = v74;
  v25 = v73;
LABEL_28:

  if (v25 >= v76)
  {
    if (v25 <= 0)
    {
      goto LABEL_33;
    }

    v33 = *(v75 + 16);
    v34 = __OFADD__(v33, v25);
    v35 = v33 + v25;
    if (!v34)
    {
      *(v75 + 16) = v35;
      goto LABEL_33;
    }

    __break(1u);
    goto LABEL_62;
  }

LABEL_59:
  __break(1u);
LABEL_60:
  sub_1C6FB3268();
  v39 = v71;
LABEL_34:
  v40 = *(v39 + 16);
  v41 = v40 + 1;
  if (v40 >= *(v39 + 24) >> 1)
  {
    sub_1C6FB3268();
    v39 = v72;
  }

  v42 = *(v0 + 200);
  v43 = *(v0 + 208) + 1;
  *(v39 + 16) = v41;
  *(v39 + 8 * v40 + 32) = v13;
  if (v43 == v42)
  {
    OUTLINED_FUNCTION_6_33();
    v44 = *(type metadata accessor for StoryMusicCurationDiagnostics() + 32);
    sub_1C75504FC();
    swift_isUniquelyReferenced_nonNull_native();
    v78[0] = *(v41 + v44);
    OUTLINED_FUNCTION_2_33();
    sub_1C6FC8A40();
    *(v41 + v44) = v78[0];
    swift_endAccess();
    v45 = sub_1C75504FC();
    v78[0] = sub_1C71CC894(v45);
    sub_1C70CCDF0(v78);

    v50 = v78[0];
    v51 = sub_1C6FB6304();
    if (!v51)
    {

      v14 = MEMORY[0x1E69E7CC0];
      goto LABEL_50;
    }

    v52 = v51;
    v78[0] = MEMORY[0x1E69E7CC0];
    result = sub_1C755195C();
    if ((v52 & 0x8000000000000000) == 0)
    {
      v53 = 0;
      do
      {
        if ((v50 & 0xC000000000000001) != 0)
        {
          v54 = MEMORY[0x1CCA5DDD0](v53, v50);
        }

        else
        {
          v54 = *(v50 + 8 * v53 + 32);
        }

        ++v53;
        v56 = *(v54 + 16);
        v55 = *(v54 + 24);
        v57 = *(v54 + 32) * 0.9;
        type metadata accessor for MusicKeywordCompletion();
        swift_allocObject();
        MusicKeywordCompletion.init(keyword:score:)(v56, v55, v57);
        sub_1C75504FC();

        sub_1C755192C();
        sub_1C755196C();
        sub_1C755197C();
        sub_1C755193C();
      }

      while (v52 != v53);

      v14 = v78[0];
      v1 = qword_1EDD0DFF8 + 8;
LABEL_50:
      if (v1[433] == -1)
      {
        goto LABEL_51;
      }

      goto LABEL_65;
    }

    __break(1u);
  }

  else
  {
    v46 = *(v0 + 208) + 1;
    *(v0 + 216) = v39;
    *(v0 + 224) = v15;
    *(v0 + 208) = v46;
    OUTLINED_FUNCTION_7_22(*(v0 + 184) + 16 * v46);
    sub_1C75504FC();
    v47 = swift_task_alloc();
    *(v0 + 248) = v47;
    *v47 = v0;
    OUTLINED_FUNCTION_1_40();
    OUTLINED_FUNCTION_5_28();

    return sub_1C7458BF0();
  }

  return result;
}

uint64_t sub_1C70CCDF0(uint64_t *a1)
{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_1C7423D10();
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  sub_1C70CCE6C(v6);
  return sub_1C755193C();
}

void sub_1C70CCE6C(uint64_t *a1)
{
  v3 = a1[1];
  v4 = sub_1C7551D7C();
  if (v4 < v3)
  {
    v5 = v4;
    v6 = sub_1C739D494(v3 / 2);
    v8[0] = v7;
    v8[1] = (v3 / 2);
    sub_1C70CCFB0(v8, v9, a1, v5);
    if (v1)
    {
      if (v3 < -1)
      {
        __break(1u);
        goto LABEL_5;
      }
    }

    else if (v3 < -1)
    {
LABEL_12:
      __break(1u);
      return;
    }

    *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) = 0;

    return;
  }

LABEL_5:
  if (v3 < 0)
  {
    __break(1u);
    goto LABEL_12;
  }

  if (v3)
  {
    sub_1C70CCF4C(0, v3, 1, a1);
  }
}

uint64_t sub_1C70CCF4C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = *a4;
    v5 = *a4 + 8 * a3 - 8;
    v6 = result - a3;
    while (2)
    {
      v7 = *(v4 + 8 * a3);
      v8 = v6;
      v9 = v5;
      do
      {
        v10 = *v9;
        if (*(*v9 + 32) >= *(v7 + 32))
        {
          break;
        }

        if (!v4)
        {
          __break(1u);
          return result;
        }

        *v9 = v7;
        v9[1] = v10;
        --v9;
      }

      while (!__CFADD__(v8++, 1));
      ++a3;
      v5 += 8;
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

void sub_1C70CCFB0(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v79 = MEMORY[0x1E69E7CC0];
  v5 = a3[1];
  if (v5 >= 1)
  {
    v6 = 0;
    v7 = MEMORY[0x1E69E7CC0];
    v74 = a4;
    while (1)
    {
      v8 = v6 + 1;
      if (v6 + 1 < v5)
      {
        v9 = *(*(*a3 + 8 * v6) + 32);
        v10 = *(*(*a3 + 8 * v8) + 32);
        v11 = v6 + 2;
        v12 = v10;
        while (1)
        {
          v13 = v11;
          if (v11 >= v5)
          {
            break;
          }

          v14 = (v9 < v10) ^ (v12 >= *(*(*a3 + 8 * v11++) + 32));
          v12 = *(*(*a3 + 8 * v13) + 32);
          if ((v14 & 1) == 0)
          {
            v8 = v13;
            goto LABEL_9;
          }
        }

        v8 = v5;
LABEL_9:
        if (v9 < v10)
        {
          if (v8 < v6)
          {
            goto LABEL_108;
          }

          if (v6 < v8)
          {
            if (v5 >= v13)
            {
              v5 = v13;
            }

            v15 = 8 * v5 - 8;
            v16 = 8 * v6;
            v17 = v8;
            v18 = v6;
            do
            {
              if (v18 != --v17)
              {
                v19 = *a3;
                if (!*a3)
                {
                  goto LABEL_113;
                }

                v20 = *(v19 + v16);
                *(v19 + v16) = *(v19 + v15);
                *(v19 + v15) = v20;
              }

              ++v18;
              v15 -= 8;
              v16 += 8;
            }

            while (v18 < v17);
            v5 = a3[1];
          }
        }
      }

      if (v8 < v5)
      {
        if (__OFSUB__(v8, v6))
        {
          goto LABEL_107;
        }

        if (v8 - v6 < a4)
        {
          if (__OFADD__(v6, a4))
          {
            goto LABEL_109;
          }

          if (v6 + a4 < v5)
          {
            v5 = v6 + a4;
          }

          if (v5 < v6)
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

          if (v8 != v5)
          {
            v21 = *a3;
            v22 = *a3 + 8 * v8 - 8;
            v23 = v6 - v8;
            do
            {
              v24 = *(v21 + 8 * v8);
              v25 = v23;
              v26 = v22;
              do
              {
                v27 = *v26;
                if (*(*v26 + 32) >= *(v24 + 32))
                {
                  break;
                }

                if (!v21)
                {
                  goto LABEL_111;
                }

                *v26 = v24;
                v26[1] = v27;
                --v26;
              }

              while (!__CFADD__(v25++, 1));
              ++v8;
              v22 += 8;
              --v23;
            }

            while (v8 != v5);
            v8 = v5;
          }
        }
      }

      if (v8 < v6)
      {
        goto LABEL_106;
      }

      v76 = v8;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1C6FB17EC();
        v7 = v72;
      }

      v29 = v7[2];
      v30 = v29 + 1;
      if (v29 >= v7[3] >> 1)
      {
        sub_1C6FB17EC();
        v7 = v73;
      }

      v7[2] = v30;
      v31 = v7 + 4;
      v32 = &v7[2 * v29 + 4];
      *v32 = v6;
      v32[1] = v8;
      v77 = *a1;
      if (!*a1)
      {
        goto LABEL_114;
      }

      if (v29)
      {
        while (1)
        {
          v33 = v30 - 1;
          v34 = &v31[2 * v30 - 2];
          v35 = &v7[2 * v30];
          if (v30 >= 4)
          {
            break;
          }

          if (v30 == 3)
          {
            v36 = v7[4];
            v37 = v7[5];
            v46 = __OFSUB__(v37, v36);
            v38 = v37 - v36;
            v39 = v46;
LABEL_56:
            if (v39)
            {
              goto LABEL_96;
            }

            v51 = *v35;
            v50 = v35[1];
            v52 = __OFSUB__(v50, v51);
            v53 = v50 - v51;
            v54 = v52;
            if (v52)
            {
              goto LABEL_99;
            }

            v55 = v34[1];
            v56 = v55 - *v34;
            if (__OFSUB__(v55, *v34))
            {
              goto LABEL_102;
            }

            if (__OFADD__(v53, v56))
            {
              goto LABEL_104;
            }

            if (v53 + v56 >= v38)
            {
              if (v38 < v56)
              {
                v33 = v30 - 2;
              }

              goto LABEL_78;
            }

            goto LABEL_71;
          }

          if (v30 < 2)
          {
            goto LABEL_98;
          }

          v58 = *v35;
          v57 = v35[1];
          v46 = __OFSUB__(v57, v58);
          v53 = v57 - v58;
          v54 = v46;
LABEL_71:
          if (v54)
          {
            goto LABEL_101;
          }

          v60 = *v34;
          v59 = v34[1];
          v46 = __OFSUB__(v59, v60);
          v61 = v59 - v60;
          if (v46)
          {
            goto LABEL_103;
          }

          if (v61 < v53)
          {
            goto LABEL_85;
          }

LABEL_78:
          if (v33 - 1 >= v30)
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

          v65 = &v31[2 * v33 - 2];
          v66 = *v65;
          v67 = &v31[2 * v33];
          v68 = *(v67 + 1);
          sub_1C70CD59C((*a3 + 8 * *v65), (*a3 + 8 * *v67), (*a3 + 8 * v68), v77);
          if (v4)
          {
            goto LABEL_89;
          }

          if (v68 < v66)
          {
            goto LABEL_91;
          }

          v69 = v7;
          v70 = v7[2];
          if (v33 > v70)
          {
            goto LABEL_92;
          }

          *v65 = v66;
          v65[1] = v68;
          if (v33 >= v70)
          {
            goto LABEL_93;
          }

          v30 = v70 - 1;
          sub_1C7423CF4(v67 + 16, v70 - 1 - v33, &v31[2 * v33]);
          v69[2] = v70 - 1;
          v71 = v70 > 2;
          v7 = v69;
          if (!v71)
          {
            goto LABEL_85;
          }
        }

        v40 = &v31[2 * v30];
        v41 = *(v40 - 8);
        v42 = *(v40 - 7);
        v46 = __OFSUB__(v42, v41);
        v43 = v42 - v41;
        if (v46)
        {
          goto LABEL_94;
        }

        v45 = *(v40 - 6);
        v44 = *(v40 - 5);
        v46 = __OFSUB__(v44, v45);
        v38 = v44 - v45;
        v39 = v46;
        if (v46)
        {
          goto LABEL_95;
        }

        v47 = v35[1];
        v48 = v47 - *v35;
        if (__OFSUB__(v47, *v35))
        {
          goto LABEL_97;
        }

        v46 = __OFADD__(v38, v48);
        v49 = v38 + v48;
        if (v46)
        {
          goto LABEL_100;
        }

        if (v49 >= v43)
        {
          v63 = *v34;
          v62 = v34[1];
          v46 = __OFSUB__(v62, v63);
          v64 = v62 - v63;
          if (v46)
          {
            goto LABEL_105;
          }

          if (v38 < v64)
          {
            v33 = v30 - 2;
          }

          goto LABEL_78;
        }

        goto LABEL_56;
      }

LABEL_85:
      v5 = a3[1];
      v6 = v76;
      a4 = v74;
      if (v76 >= v5)
      {
        v79 = v7;
        break;
      }
    }
  }

  if (!*a1)
  {
    goto LABEL_115;
  }

  sub_1C70CD470(&v79, *a1, a3);
LABEL_89:
}

uint64_t sub_1C70CD470(uint64_t *a1, char *a2, void *a3)
{
  v4 = a1;
  v5 = *a1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
LABEL_14:
    result = sub_1C7420830();
    v5 = result;
  }

  v14 = v4;
  *v4 = v5;
  v7 = (v5 + 16);
  for (i = *(v5 + 16); ; *v7 = i)
  {
    v4 = (i - 2);
    if (i < 2)
    {
LABEL_10:
      *v14 = v5;
      return 1;
    }

    if (!*a3)
    {
      break;
    }

    v9 = (v5 + 16 * i);
    v10 = *v9;
    v11 = &v7[2 * i];
    v12 = v11[1];
    sub_1C70CD59C((*a3 + 8 * *v9), (*a3 + 8 * *v11), (*a3 + 8 * v12), a2);
    if (v3)
    {
      goto LABEL_10;
    }

    if (v12 < v10)
    {
      __break(1u);
LABEL_12:
      __break(1u);
LABEL_13:
      __break(1u);
      goto LABEL_14;
    }

    if (v4 >= *v7)
    {
      goto LABEL_12;
    }

    *v9 = v10;
    v9[1] = v12;
    v13 = *v7 - i;
    if (*v7 < i)
    {
      goto LABEL_13;
    }

    i = *v7 - 1;
    result = memmove(v11, v11 + 2, 16 * v13);
  }

  *v14 = v5;
  __break(1u);
  return result;
}

uint64_t sub_1C70CD59C(char *a1, char *a2, char *a3, char *a4)
{
  v5 = a3;
  v6 = a2;
  v7 = a1;
  v8 = (a2 - a1) / 8;
  v9 = (a3 - a2) / 8;
  if (v8 < v9)
  {
    sub_1C7423CF8(a1);
    v10 = &a4[8 * v8];
    while (1)
    {
      if (a4 >= v10 || v6 >= v5)
      {
        v6 = v7;
        goto LABEL_28;
      }

      v12 = *v6;
      if (*(*a4 + 32) >= *(*v6 + 32))
      {
        break;
      }

      v13 = v7 == v6;
      v6 += 8;
      if (!v13)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 8;
    }

    v12 = *a4;
    v13 = v7 == a4;
    a4 += 8;
    if (v13)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = v12;
    goto LABEL_13;
  }

  sub_1C7423CF8(a2);
  v10 = &a4[8 * v9];
LABEL_15:
  v14 = v6 - 8;
  for (v5 -= 8; v10 > a4 && v6 > v7; v5 -= 8)
  {
    v16 = *(v10 - 1);
    if (*(*v14 + 32) < *(v16 + 32))
    {
      v13 = v5 + 8 == v6;
      v6 -= 8;
      if (!v13)
      {
        *v5 = *v14;
        v6 = v14;
      }

      goto LABEL_15;
    }

    if (v10 != v5 + 8)
    {
      *v5 = v16;
    }

    v10 -= 8;
  }

LABEL_28:
  v17 = (v10 - a4) / 8;
  if (v6 != a4 || v6 >= &a4[8 * v17])
  {
    memmove(v6, a4, 8 * v17);
  }

  return 1;
}

unint64_t sub_1C70CD720()
{
  result = qword_1EC2155F8;
  if (!qword_1EC2155F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC2155F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2155F8);
  }

  return result;
}

uint64_t sub_1C70CD7AC(uint64_t a1, uint64_t *a2, uint64_t a3, void (*a4)(uint64_t, uint64_t, uint64_t *))
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a2);
    v5 = sub_1C7551B0C();
  }

  else
  {
    v5 = MEMORY[0x1E69E7CC8];
  }

  v8 = v5;
  v6 = sub_1C75504FC();
  a4(v6, 1, &v8);

  return v8;
}

uint64_t LLMAssetCache.Error.description.getter()
{
  v1 = *v0;
  v2 = v0[1];
  if (*(v0 + 16))
  {
    if (*(v0 + 16) != 1)
    {
      OUTLINED_FUNCTION_95_0();
      sub_1C755180C();

      OUTLINED_FUNCTION_42_13();
      v8 = v5 + 20;
      v6 = sub_1C7551D8C();
      MEMORY[0x1CCA5CD70](v6);

      return v8;
    }

    OUTLINED_FUNCTION_95_0();
    sub_1C755180C();

    OUTLINED_FUNCTION_42_13();
    v4 = v3 + 16;
  }

  else
  {
    OUTLINED_FUNCTION_95_0();
    sub_1C755180C();

    OUTLINED_FUNCTION_42_13();
  }

  v8 = v4;
  MEMORY[0x1CCA5CD70](v1, v2);
  MEMORY[0x1CCA5CD70](39, 0xE100000000000000);
  return v8;
}

uint64_t static LLMAssetCache.Error.== infix(_:_:)(uint64_t a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = *(a1 + 8);
  v4 = *(a1 + 16);
  v6 = *a2;
  v5 = a2[1];
  v7 = *(a2 + 16);
  if (!*(a1 + 16))
  {
    if (*(a2 + 16))
    {
      goto LABEL_20;
    }

    v21 = *a1;
    if (v3 != v6 || v2 != v5)
    {
      v9 = sub_1C7551DBC();
      v23 = OUTLINED_FUNCTION_58();
      v25 = OUTLINED_FUNCTION_26_17(v23, v24, 0);
      v27 = OUTLINED_FUNCTION_26_17(v25, v26, 0);
      sub_1C6FE0E78(v27, v28, 0);
      v18 = OUTLINED_FUNCTION_58();
      v20 = 0;
      goto LABEL_15;
    }

    v55 = OUTLINED_FUNCTION_26_17(v21, v2, 0);
    v57 = OUTLINED_FUNCTION_26_17(v55, v56, 0);
    sub_1C6FE0E78(v57, v58, 0);
    v40 = v3;
    v41 = v2;
    v42 = 0;
LABEL_24:
    sub_1C6FE0E78(v40, v41, v42);
    return 1;
  }

  if (v4 != 1)
  {
    if (v7 != 2 || (v5 | v6) != 0)
    {
      goto LABEL_20;
    }

    sub_1C6FE0E78(*a1, v2, 2u);
    v40 = 0;
    v41 = 0;
    v42 = 2;
    goto LABEL_24;
  }

  if (v7 != 1)
  {
LABEL_20:
    v31 = OUTLINED_FUNCTION_58();
    v33 = OUTLINED_FUNCTION_26_17(v31, v32, v7);
    v35 = OUTLINED_FUNCTION_26_17(v33, v34, v4);
    sub_1C6FE0E78(v35, v36, v4);
    v37 = OUTLINED_FUNCTION_58();
    sub_1C6FE0E78(v37, v38, v7);
    return 0;
  }

  if (v3 != v6 || v2 != v5)
  {
    v9 = sub_1C7551DBC();
    v10 = OUTLINED_FUNCTION_58();
    sub_1C70CE970(v10, v11, 1u);
    v12 = OUTLINED_FUNCTION_22_21();
    sub_1C70CE970(v12, v13, v14);
    v15 = OUTLINED_FUNCTION_22_21();
    sub_1C6FE0E78(v15, v16, v17);
    v18 = OUTLINED_FUNCTION_58();
    v20 = 1;
LABEL_15:
    sub_1C6FE0E78(v18, v19, v20);
    return v9 & 1;
  }

  v39 = 1;
  v43 = OUTLINED_FUNCTION_22_21();
  sub_1C70CE970(v43, v44, v45);
  v46 = OUTLINED_FUNCTION_22_21();
  sub_1C70CE970(v46, v47, v48);
  v49 = OUTLINED_FUNCTION_22_21();
  sub_1C6FE0E78(v49, v50, v51);
  v52 = OUTLINED_FUNCTION_22_21();
  sub_1C6FE0E78(v52, v53, v54);
  return v39;
}

uint64_t sub_1C70CDB24(uint64_t a1)
{
  v2 = sub_1C70D3E2C();

  return MEMORY[0x1EEDC6AD0](a1, v2);
}

uint64_t sub_1C70CDB60(uint64_t a1)
{
  v2 = sub_1C70D3E2C();

  return MEMORY[0x1EEDC6AC0](a1, v2);
}

uint64_t sub_1C70CDBF4()
{
  OUTLINED_FUNCTION_63_9();
  swift_beginAccess();
  return sub_1C75504FC();
}

uint64_t sub_1C70CDC24(uint64_t a1)
{
  OUTLINED_FUNCTION_56();
  swift_beginAccess();
  *(v1 + 112) = a1;
}

uint64_t sub_1C70CDC68()
{
  OUTLINED_FUNCTION_63_9();
  swift_beginAccess();
  return *(v0 + 120);
}

uint64_t sub_1C70CDC94(uint64_t a1)
{
  OUTLINED_FUNCTION_56();
  result = swift_beginAccess();
  *(v1 + 120) = a1;
  return result;
}

uint64_t LLMAssetCache.__allocating_init()()
{
  v0 = swift_allocObject();
  LLMAssetCache.init()();
  return v0;
}

void *LLMAssetCache.init()()
{
  swift_defaultActor_initialize();
  v2 = MEMORY[0x1E69E7CC8];
  v0[15] = 0;
  v0[16] = v2;
  v0[17] = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC214D08);
  v3 = swift_allocObject();
  OUTLINED_FUNCTION_14_22(v3);
  OUTLINED_FUNCTION_65_8(v4);
  result = sub_1C70D0BE4(&v6, (v0 + 4), 9999, 0, 9999);
  if (result == v1)
  {
    v6 = v0;
    sub_1C70CFCCC();
    v0[14] = v6;
    return v0;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *sub_1C70CDDB8()
{
  v2 = v0;
  OUTLINED_FUNCTION_56();
  swift_beginAccess();
  v3 = MEMORY[0x1E69E7CC8];
  v2[16] = MEMORY[0x1E69E7CC8];

  OUTLINED_FUNCTION_56();
  swift_beginAccess();
  v2[17] = v3;

  OUTLINED_FUNCTION_56();
  swift_beginAccess();
  v2[15] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC214D08);
  v4 = swift_allocObject();
  OUTLINED_FUNCTION_14_22(v4);
  OUTLINED_FUNCTION_65_8(v5);
  result = sub_1C70D0BE4(v8, v3 + 32, 9999, 0, 9999);
  if (result == v1)
  {
    v8[0] = v3;
    sub_1C70CFCCC();
    v7 = v8[0];
    OUTLINED_FUNCTION_56();
    swift_beginAccess();
    v2[14] = v7;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1C70CDEB8()
{
  v0 = sub_1C7551D8C();
  MEMORY[0x1CCA5CD70](v0);

  return 1601725545;
}

uint64_t sub_1C70CDF20()
{
  OUTLINED_FUNCTION_56();
  swift_beginAccess();
  v1 = *(v0 + 120);
  result = swift_beginAccess();
  v3 = *(v0 + 112);
  v4 = *(v3 + 16);
  if (v1 == v4)
  {
    sub_1C70D0C68();
    swift_allocError();
    *v5 = 0;
    *(v5 + 8) = 0;
    *(v5 + 16) = 2;
    return swift_willThrow();
  }

  else if (v1 >= v4)
  {
    __break(1u);
  }

  else
  {
    result = *(v3 + 8 * v1 + 32);
    *(v0 + 120) = v1 + 1;
  }

  return result;
}

uint64_t sub_1C70CDFD4(uint64_t a1, uint64_t a2)
{
  v5 = v2;
  swift_beginAccess();
  v8 = *(v2 + 128);
  if (*(v8 + 16))
  {
    sub_1C75504FC();
    v9 = sub_1C6F78124(a1, a2);
    if (v10)
    {
      v4 = *(*(v8 + 56) + 16 * v9);
      sub_1C75504FC();

      return v4;
    }
  }

  sub_1C70CDF20();
  if (!v3)
  {
    v4 = sub_1C70CDEB8();
    swift_beginAccess();
    sub_1C75504FC();
    swift_isUniquelyReferenced_nonNull_native();
    v12 = *(v5 + 128);
    sub_1C6FC80A4();
    *(v5 + 128) = v12;
    swift_endAccess();
    swift_beginAccess();
    sub_1C75504FC();
    swift_isUniquelyReferenced_nonNull_native();
    v13 = *(v5 + 136);
    sub_1C6FC80A4();
    *(v5 + 136) = v13;
    swift_endAccess();
  }

  return v4;
}

uint64_t sub_1C70CE160(uint64_t a1)
{
  v2 = v1;
  v4 = *(a1 + 16);
  v5 = MEMORY[0x1E69E7CC0];
  if (!v4)
  {
    return sub_1C70CD7AC(v5, &qword_1EC217168, &unk_1C7569470, sub_1C70CF6EC);
  }

  v57 = MEMORY[0x1E69E7CC0];
  sub_1C716E44C(0, v4, 0);
  v51 = v57;
  result = sub_1C70D3ABC();
  v8 = result;
  v10 = v9;
  v11 = 0;
  v50 = a1 + 64;
  v44 = v9;
  v45 = v4;
  v43 = a1 + 72;
  while ((v8 & 0x8000000000000000) == 0 && v8 < 1 << *(a1 + 32))
  {
    v12 = v8 >> 6;
    if ((*(v50 + 8 * (v8 >> 6)) & (1 << v8)) == 0)
    {
      goto LABEL_25;
    }

    if (*(a1 + 36) != v10)
    {
      goto LABEL_26;
    }

    v49 = v11;
    v48 = v7;
    v13 = (*(a1 + 48) + 16 * v8);
    v14 = *v13;
    v15 = v13[1];
    sub_1C6F774EC(*(a1 + 56) + 32 * v8, v54);
    v52[0] = v14;
    v52[1] = v15;
    sub_1C6F9ED18(v54, v53);
    sub_1C75504FC();
    v16 = OUTLINED_FUNCTION_111();
    v18 = sub_1C70CDFD4(v16, v17);
    if (v2)
    {
      sub_1C70D3A54(v52);
    }

    v20 = v18;
    v21 = v19;
    sub_1C6F774EC(v53, v56);
    *&v55 = v20;
    *(&v55 + 1) = v21;
    result = sub_1C70D3A54(v52);
    v29 = v51;
    v57 = v51;
    v31 = *(v51 + 16);
    v30 = *(v51 + 24);
    if (v31 >= v30 >> 1)
    {
      result = sub_1C716E44C(v30 > 1, v31 + 1, 1);
      v29 = v57;
    }

    *(v29 + 16) = v31 + 1;
    v32 = (v29 + 48 * v31);
    v33 = v55;
    v34 = v56[1];
    v32[3] = v56[0];
    v32[4] = v34;
    v32[2] = v33;
    v35 = 1 << *(a1 + 32);
    if (v8 >= v35)
    {
      goto LABEL_27;
    }

    v36 = *(v50 + 8 * v12);
    if ((v36 & (1 << v8)) == 0)
    {
      goto LABEL_28;
    }

    v51 = v29;
    if (*(a1 + 36) != v10)
    {
      goto LABEL_29;
    }

    v37 = v36 & (-2 << (v8 & 0x3F));
    if (v37)
    {
      v35 = __clz(__rbit64(v37)) | v8 & 0x7FFFFFFFFFFFFFC0;
      v2 = 0;
    }

    else
    {
      v38 = v12 << 6;
      v39 = v12 + 1;
      v40 = (v43 + 8 * v12);
      v2 = 0;
      while (v39 < (v35 + 63) >> 6)
      {
        v42 = *v40++;
        v41 = v42;
        v38 += 64;
        ++v39;
        if (v42)
        {
          result = OUTLINED_FUNCTION_94_6(result, v22, v23, v24, v25, v26, v27, v28, v43, v44, v45, v46, v47, v48);
          v35 = __clz(__rbit64(v41)) + v38;
          goto LABEL_20;
        }
      }

      result = OUTLINED_FUNCTION_94_6(result, v22, v23, v24, v25, v26, v27, v28, v43, v44, v45, v46, v47, v48);
    }

LABEL_20:
    v7 = 0;
    v11 = v49 + 1;
    v8 = v35;
    v10 = v44;
    if (v49 + 1 == v45)
    {
      v5 = v51;
      return sub_1C70CD7AC(v5, &qword_1EC217168, &unk_1C7569470, sub_1C70CF6EC);
    }
  }

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
  return result;
}

uint64_t sub_1C70CE450()
{
  OUTLINED_FUNCTION_115();
  if (sub_1C755092C())
  {
    sub_1C75504FC();
    v2 = sub_1C75507FC();
    v3 = sub_1C70CE56C(v2, v1, v0);
    v7 = v6;
    if ((v3 ^ v4) >> 14)
    {
      v8 = v5;
      v9 = sub_1C70D3AF8(v3, v4, v5, v6, 10);
      if ((v10 & 0x100) != 0)
      {
        v11 = OUTLINED_FUNCTION_111();
        v9 = sub_1C70D0138(v11, v12, v8, v7, 10);
      }

      v13 = v9;
      v14 = v10;

      if ((v14 & 1) == 0 && v13 < 9999)
      {
        return 1;
      }
    }

    else
    {
    }
  }

  return 0;
}

unint64_t sub_1C70CE56C(unint64_t result, uint64_t a2, unint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    if ((a3 & 0x2000000000000000) != 0)
    {
      v3 = HIBYTE(a3) & 0xF;
    }

    else
    {
      v3 = a2 & 0xFFFFFFFFFFFFLL;
    }

    v4 = 7;
    if (((a3 >> 60) & ((a2 & 0x800000000000000) == 0)) != 0)
    {
      v4 = 11;
    }

    v5 = v4 | (v3 << 16);
    result = sub_1C755082C();
    if (v6)
    {
      result = v5;
    }

    if (4 * v3 >= result >> 14)
    {
      sub_1C755098C();
      OUTLINED_FUNCTION_14_4();
      return OUTLINED_FUNCTION_19_12();
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1C70CE64C(uint64_t result, uint64_t a2, uint64_t (*a3)(void, uint64_t, uint64_t, uint64_t), void (*a4)(void))
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v5 = *(a2 + 16);
    result = a3(0, result, v5, a2);
    if (v6)
    {
      result = v5;
    }

    if (v5 >= result)
    {
      a4();
      OUTLINED_FUNCTION_14_4();
      return OUTLINED_FUNCTION_19_12();
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1C70CE6D4(uint64_t a1, uint64_t a2)
{
  if ((sub_1C70CE450() & 1) == 0)
  {
    sub_1C70D0C68();
    swift_allocError();
    v10 = 0;
    goto LABEL_5;
  }

  OUTLINED_FUNCTION_63_9();
  swift_beginAccess();
  v6 = *(v2 + 136);
  sub_1C75504FC();
  v3 = sub_1C6FE0F8C(a1, a2, v6);
  v8 = v7;

  if (!v8)
  {
    sub_1C70D0C68();
    swift_allocError();
    v10 = 1;
LABEL_5:
    *v9 = a1;
    *(v9 + 8) = a2;
    *(v9 + 16) = v10;
    swift_willThrow();
    sub_1C75504FC();
  }

  return v3;
}

uint64_t sub_1C70CE7C8(uint64_t a1)
{
  v2 = v1;
  v3 = *(a1 + 16);
  v4 = MEMORY[0x1E69E7CC0];
  if (v3)
  {
    v16 = MEMORY[0x1E69E7CC0];
    sub_1C6F7ED9C();
    v4 = v16;
    for (i = (a1 + 40); ; i += 2)
    {
      v7 = *(i - 1);
      v8 = *i;
      sub_1C75504FC();
      v9 = sub_1C70CE6D4(v7, v8);
      if (v2)
      {
        break;
      }

      v11 = v9;
      v12 = v10;

      v13 = *(v16 + 16);
      if (v13 >= *(v16 + 24) >> 1)
      {
        sub_1C6F7ED9C();
      }

      *(v16 + 16) = v13 + 1;
      v14 = v16 + 16 * v13;
      *(v14 + 32) = v11;
      *(v14 + 40) = v12;
      if (!--v3)
      {
        return v4;
      }
    }
  }

  return v4;
}

uint64_t LLMAssetCache.deinit()
{

  swift_defaultActor_destroy();
  return v0;
}

uint64_t LLMAssetCache.__deallocating_deinit()
{
  LLMAssetCache.deinit();

  return MEMORY[0x1EEE6DEF0](v0);
}

uint64_t sub_1C70CE970(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 1u)
  {
    return sub_1C75504FC();
  }

  return result;
}

uint64_t sub_1C70CE9C4()
{
  OUTLINED_FUNCTION_36_11();
  if (!v0)
  {
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2150D0);
  v1 = OUTLINED_FUNCTION_73_0();
  OUTLINED_FUNCTION_14_22(v1);
  OUTLINED_FUNCTION_21_19(v2);
  return v0;
}

uint64_t sub_1C70CEAB0()
{
  OUTLINED_FUNCTION_36_11();
  if (!v0)
  {
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC214EF8);
  v1 = OUTLINED_FUNCTION_73_0();
  OUTLINED_FUNCTION_14_22(v1);
  OUTLINED_FUNCTION_21_19(v2);
  return v0;
}

uint64_t sub_1C70CEB38()
{
  OUTLINED_FUNCTION_36_11();
  if (!v0)
  {
    return MEMORY[0x1E69E7CC0];
  }

  OUTLINED_FUNCTION_31_13(v1, v2, v3);
  v4 = OUTLINED_FUNCTION_73_0();
  OUTLINED_FUNCTION_14_22(v4);
  OUTLINED_FUNCTION_21_19(v5);
  return v0;
}

const void *sub_1C70CEC60()
{
  OUTLINED_FUNCTION_36_11();
  if (!v0)
  {
    return MEMORY[0x1E69E7CC0];
  }

  OUTLINED_FUNCTION_31_13(v1, v2, v3);
  v4 = OUTLINED_FUNCTION_49_9();
  v5 = _swift_stdlib_malloc_size(v4);
  OUTLINED_FUNCTION_13_23(v5);
  return v4;
}

const void *sub_1C70CED90()
{
  OUTLINED_FUNCTION_36_11();
  if (!v0)
  {
    return MEMORY[0x1E69E7CC0];
  }

  OUTLINED_FUNCTION_31_13(v1, v2, v3);
  v4 = OUTLINED_FUNCTION_49_9();
  v5 = _swift_stdlib_malloc_size(v4);
  OUTLINED_FUNCTION_13_23(v5);
  return v4;
}

const void *sub_1C70CEDF8()
{
  OUTLINED_FUNCTION_36_11();
  if (!v0)
  {
    return MEMORY[0x1E69E7CC0];
  }

  OUTLINED_FUNCTION_31_13(v1, v2, v3);
  v4 = OUTLINED_FUNCTION_49_9();
  v5 = _swift_stdlib_malloc_size(v4);
  OUTLINED_FUNCTION_13_23(v5);
  return v4;
}

uint64_t sub_1C70CEF0C()
{
  OUTLINED_FUNCTION_36_11();
  if (!v0)
  {
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215090);
  v1 = swift_allocObject();
  OUTLINED_FUNCTION_14_22(v1);
  OUTLINED_FUNCTION_21_19(v2);
  return v0;
}

uint64_t sub_1C70CF018()
{
  OUTLINED_FUNCTION_36_11();
  if (!v0)
  {
    return MEMORY[0x1E69E7CC0];
  }

  OUTLINED_FUNCTION_31_13(v1, v2, v3);
  v4 = swift_allocObject();
  OUTLINED_FUNCTION_14_22(v4);
  OUTLINED_FUNCTION_21_19(v5);
  return v0;
}

const void *sub_1C70CF1FC()
{
  OUTLINED_FUNCTION_36_11();
  if (!v0)
  {
    return MEMORY[0x1E69E7CC0];
  }

  OUTLINED_FUNCTION_31_13(v1, v2, v3);
  v4 = OUTLINED_FUNCTION_49_9();
  v5 = _swift_stdlib_malloc_size(v4);
  OUTLINED_FUNCTION_13_23(v5);
  return v4;
}

uint64_t sub_1C70CF250()
{
  OUTLINED_FUNCTION_36_11();
  if (!v0)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC218F70);
  v3 = OUTLINED_FUNCTION_73_0();
  OUTLINED_FUNCTION_14_22(v3);
  *(v0 + 16) = v2;
  *(v0 + 24) = (2 * (v4 / 8)) | 1;
  return v0;
}

void *sub_1C70CF2F8()
{
  OUTLINED_FUNCTION_36_11();
  if (!v1)
  {
    return MEMORY[0x1E69E7CC0];
  }

  OUTLINED_FUNCTION_31_13(v2, v3, v4);
  v5 = swift_allocObject();
  v6 = _swift_stdlib_malloc_size(v5);
  v5[2] = v0;
  v5[3] = 2 * v6 - 64;
  return v5;
}

size_t sub_1C70CF3EC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t *a5)
{
  if (a2 <= a1)
  {
    v6 = a1;
  }

  else
  {
    v6 = a2;
  }

  if (!v6)
  {
    return MEMORY[0x1E69E7CC0];
  }

  OUTLINED_FUNCTION_31_13(a1, a2, a3);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(a5);
  OUTLINED_FUNCTION_18(v8);
  v10 = *(v9 + 72);
  v12 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (v10)
  {
    if (result - v12 != 0x8000000000000000 || v10 != -1)
    {
      v13[2] = v5;
      v13[3] = 2 * ((result - v12) / v10);
      return v13;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

size_t sub_1C70CF500(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t (*a5)(void))
{
  if (a2 <= a1)
  {
    v6 = a1;
  }

  else
  {
    v6 = a2;
  }

  if (!v6)
  {
    return MEMORY[0x1E69E7CC0];
  }

  OUTLINED_FUNCTION_31_13(a1, a2, a3);
  v8 = a5(0);
  OUTLINED_FUNCTION_18(v8);
  v10 = *(v9 + 72);
  v12 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (v10)
  {
    if (result - v12 != 0x8000000000000000 || v10 != -1)
    {
      v13[2] = v5;
      v13[3] = 2 * ((result - v12) / v10);
      return v13;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1C70CF638()
{
  OUTLINED_FUNCTION_36_11();
  if (!v0)
  {
    return MEMORY[0x1E69E7CC0];
  }

  OUTLINED_FUNCTION_31_13(v1, v2, v3);
  v4 = OUTLINED_FUNCTION_73_0();
  OUTLINED_FUNCTION_14_22(v4);
  OUTLINED_FUNCTION_21_19(v5);
  return v0;
}

const void *sub_1C70CF684()
{
  OUTLINED_FUNCTION_36_11();
  if (!v0)
  {
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217200);
  v1 = OUTLINED_FUNCTION_49_9();
  v2 = _swift_stdlib_malloc_size(v1);
  OUTLINED_FUNCTION_13_23(v2);
  return v1;
}

void sub_1C70CF6EC(uint64_t a1, char a2, void *a3)
{
  v24 = *(a1 + 16);
  if (!v24)
  {

    return;
  }

  v5 = 0;
  for (i = a1 + 32; ; i += 48)
  {
    if (v5 >= *(a1 + 16))
    {
      __break(1u);
LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      sub_1C7551E4C();
      __break(1u);
      goto LABEL_22;
    }

    sub_1C70D43B4(i, &v29);
    v8 = v29;
    v7 = v30;
    v27 = v29;
    v28 = v30;
    sub_1C6F9ED18(&v31, v26);
    v9 = *a3;
    v11 = sub_1C6F78124(v8, v7);
    v12 = v9[2];
    v13 = (v10 & 1) == 0;
    if (__OFADD__(v12, v13))
    {
      goto LABEL_19;
    }

    v14 = v10;
    if (v9[3] < v12 + v13)
    {
      break;
    }

    if (a2)
    {
      if (v10)
      {
        goto LABEL_15;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC21ACB0);
      sub_1C7551A3C();
      if (v14)
      {
        goto LABEL_15;
      }
    }

LABEL_11:
    v17 = *a3;
    *(*a3 + 8 * (v11 >> 6) + 64) |= 1 << v11;
    v18 = (v17[6] + 16 * v11);
    *v18 = v8;
    v18[1] = v7;
    sub_1C6F9ED18(v26, (v17[7] + 32 * v11));
    v19 = v17[2];
    v20 = __OFADD__(v19, 1);
    v21 = v19 + 1;
    if (v20)
    {
      goto LABEL_20;
    }

    ++v5;
    v17[2] = v21;
    a2 = 1;
    if (v24 == v5)
    {

      return;
    }
  }

  sub_1C73549EC();
  v15 = sub_1C6F78124(v8, v7);
  if ((v14 & 1) != (v16 & 1))
  {
    goto LABEL_21;
  }

  v11 = v15;
  if ((v14 & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_15:
  v22 = swift_allocError();
  swift_willThrow();
  v32 = v22;
  v23 = v22;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC219760);
  if ((swift_dynamicCast() & 1) == 0)
  {

    __swift_destroy_boxed_opaque_existential_1(v26);

    return;
  }

LABEL_22:
  sub_1C755180C();
  MEMORY[0x1CCA5CD70](0xD00000000000001BLL, 0x80000001C759D7B0);
  sub_1C75519EC();
  MEMORY[0x1CCA5CD70](39, 0xE100000000000000);
  sub_1C7551AAC();
  __break(1u);
}

void sub_1C70CF9F4(uint64_t a1, char a2, void *a3)
{
  v5 = 0;
  v25 = *(a1 + 16);
  for (i = (a1 + 48); ; i += 3)
  {
    if (v25 == v5)
    {

      return;
    }

    if (v5 >= *(a1 + 16))
    {
      __break(1u);
LABEL_18:
      __break(1u);
LABEL_19:
      __break(1u);
LABEL_20:
      sub_1C7551E4C();
      __break(1u);
      goto LABEL_21;
    }

    v8 = *(i - 2);
    v7 = *(i - 1);
    v9 = *i;
    v10 = *a3;
    sub_1C75504FC();
    v12 = sub_1C6F78124(v8, v7);
    v13 = v10[2];
    v14 = (v11 & 1) == 0;
    if (__OFADD__(v13, v14))
    {
      goto LABEL_18;
    }

    v15 = v11;
    if (v10[3] < v13 + v14)
    {
      break;
    }

    if (a2)
    {
      if (v11)
      {
        goto LABEL_14;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC218DE0);
      sub_1C7551A3C();
      if (v15)
      {
        goto LABEL_14;
      }
    }

LABEL_11:
    v18 = *a3;
    *(*a3 + 8 * (v12 >> 6) + 64) |= 1 << v12;
    v19 = (v18[6] + 16 * v12);
    *v19 = v8;
    v19[1] = v7;
    *(v18[7] + 8 * v12) = v9;
    v20 = v18[2];
    v21 = __OFADD__(v20, 1);
    v22 = v20 + 1;
    if (v21)
    {
      goto LABEL_19;
    }

    v18[2] = v22;
    ++v5;
    a2 = 1;
  }

  sub_1C7354094();
  v16 = sub_1C6F78124(v8, v7);
  if ((v15 & 1) != (v17 & 1))
  {
    goto LABEL_20;
  }

  v12 = v16;
  if ((v15 & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_14:
  v23 = swift_allocError();
  swift_willThrow();
  v24 = v23;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC219760);
  if ((swift_dynamicCast() & 1) == 0)
  {

    return;
  }

LABEL_21:
  sub_1C755180C();
  MEMORY[0x1CCA5CD70](0xD00000000000001BLL, 0x80000001C759D7B0);
  sub_1C75519EC();
  MEMORY[0x1CCA5CD70](39, 0xE100000000000000);
  sub_1C7551AAC();
  __break(1u);
}

void sub_1C70CFCCC()
{
  v1 = *v0;
  v2 = *(*v0 + 16);
  v3 = v2 - 2;
  if (v2 >= 2)
  {
    v4 = 0;
    while (1)
    {
      v14 = 0;
      MEMORY[0x1CCA5F900](&v14, 8);
      v5 = (v14 * v2) >> 64;
      if (v2 > v14 * v2)
      {
        v6 = -v2 % v2;
        if (v6 > v14 * v2)
        {
          do
          {
            v14 = 0;
            MEMORY[0x1CCA5F900](&v14, 8);
          }

          while (v6 > v14 * v2);
          v5 = (v14 * v2) >> 64;
        }
      }

      v7 = v4 + v5;
      if (__OFADD__(v4, v5))
      {
        break;
      }

      if (v4 != v7)
      {
        v8 = *(v1 + 16);
        if (v4 >= v8)
        {
          goto LABEL_20;
        }

        if (v7 >= v8)
        {
          goto LABEL_21;
        }

        v9 = *(v1 + 32 + 8 * v4);
        v10 = *(v1 + 32 + 8 * v7);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1C7422AA4();
          v1 = v11;
        }

        v12 = *(v1 + 16);
        if (v4 >= v12)
        {
          goto LABEL_22;
        }

        *(v1 + 32 + 8 * v4) = v10;
        if (v7 >= v12)
        {
          goto LABEL_23;
        }

        *(v1 + 32 + 8 * v7) = v9;
        *v0 = v1;
      }

      --v2;
      if (v4++ == v3)
      {
        return;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
  }
}

void sub_1C70CFE0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, unint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_48_2();
  a21 = v23;
  a22 = v24;
  v43 = v22;
  v25 = *v22;
  v26 = *(*v22 + 16);
  v27 = v26 - 2;
  if (v26 < 2)
  {
LABEL_18:
    OUTLINED_FUNCTION_52_1();
  }

  else
  {
    v28 = 0;
    while (1)
    {
      a10 = 0;
      MEMORY[0x1CCA5F900](&a10, 8);
      v29 = (a10 * v26) >> 64;
      if (v26 > a10 * v26)
      {
        v30 = -v26 % v26;
        if (v30 > a10 * v26)
        {
          do
          {
            a10 = 0;
            MEMORY[0x1CCA5F900](&a10, 8);
          }

          while (v30 > a10 * v26);
          v29 = (a10 * v26) >> 64;
        }
      }

      v31 = v28 + v29;
      if (__OFADD__(v28, v29))
      {
        break;
      }

      if (v28 != v31)
      {
        v32 = *(v25 + 16);
        if (v28 >= v32)
        {
          goto LABEL_20;
        }

        if (v31 >= v32)
        {
          goto LABEL_21;
        }

        v33 = (v25 + 32 + 16 * v28);
        v35 = *v33;
        v34 = v33[1];
        v36 = (v25 + 32 + 16 * v31);
        v38 = *v36;
        v37 = v36[1];
        sub_1C75504FC();
        sub_1C75504FC();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1C7422A2C();
          v25 = v39;
        }

        if (v28 >= *(v25 + 16))
        {
          goto LABEL_22;
        }

        v40 = (v25 + 32 + 16 * v28);
        *v40 = v38;
        v40[1] = v37;

        if (v31 >= *(v25 + 16))
        {
          goto LABEL_23;
        }

        v41 = (v25 + 32 + 16 * v31);
        *v41 = v35;
        v41[1] = v34;

        *v43 = v25;
      }

      --v26;
      if (v28++ == v27)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
  }
}

void sub_1C70CFF78()
{
  OUTLINED_FUNCTION_33();
  v1 = *v0;
  v2 = *(*v0 + 16);
  v3 = v2 - 2;
  if (v2 < 2)
  {
LABEL_18:
    OUTLINED_FUNCTION_25_0();
  }

  else
  {
    v4 = 0;
    while (1)
    {
      __src[0] = 0;
      MEMORY[0x1CCA5F900](__src, 8);
      v5 = (__src[0] * v2) >> 64;
      if (v2 > __src[0] * v2)
      {
        v6 = -v2 % v2;
        if (v6 > __src[0] * v2)
        {
          do
          {
            __src[0] = 0;
            MEMORY[0x1CCA5F900](__src, 8);
          }

          while (v6 > __src[0] * v2);
          v5 = (__src[0] * v2) >> 64;
        }
      }

      v7 = v4 + v5;
      if (__OFADD__(v4, v5))
      {
        break;
      }

      if (v4 != v7)
      {
        v8 = *(v1 + 16);
        if (v4 >= v8)
        {
          goto LABEL_20;
        }

        memcpy(__dst, (v1 + 32 + 192 * v4), sizeof(__dst));
        if (v7 >= v8)
        {
          goto LABEL_21;
        }

        memcpy(__src, (v1 + 32 + 192 * v7), sizeof(__src));
        sub_1C7080654(__dst, v13);
        sub_1C7080654(__src, v13);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1C7422D5C();
          v1 = v9;
        }

        if (v4 >= *(v1 + 16))
        {
          goto LABEL_22;
        }

        v10 = v1 + 32;
        memcpy(v12, (v1 + 32 + 192 * v4), sizeof(v12));
        memcpy((v1 + 32 + 192 * v4), __src, 0xC0uLL);
        sub_1C70806B0(v12);
        if (v7 >= *(v1 + 16))
        {
          goto LABEL_23;
        }

        memcpy(v13, (v10 + 192 * v7), sizeof(v13));
        memcpy((v10 + 192 * v7), __dst, 0xC0uLL);
        sub_1C70806B0(v13);
        *v0 = v1;
      }

      --v2;
      if (v4++ == v3)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
  }
}

unsigned __int8 *sub_1C70D0138(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v82 = a1;
  v83 = a2;
  v84 = a3;
  v85 = a4;
  sub_1C70D3F24();
  sub_1C75504FC();
  result = sub_1C755097C();
  v8 = result;
  v9 = v7;
  if ((v7 & 0x1000000000000000) != 0)
  {
    v8 = sub_1C71CC418();
    v46 = v45;

    v9 = v46;
    if ((v46 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v7 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v8 & 0x1000000000000000) != 0)
    {
      result = ((v9 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v10 = v8 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = sub_1C75518FC();
    }

    v11 = *result;
    if (v11 == 43)
    {
      if (v10 >= 1)
      {
        if (v10 != 1)
        {
          OUTLINED_FUNCTION_70_1();
          if (v27 ^ v28 | v26)
          {
            v31 = 65;
          }

          if (!(v27 ^ v28 | v26))
          {
            v32 = 58;
          }

          if (v29)
          {
            v19 = 0;
            v33 = (v29 + 1);
            do
            {
              v34 = *v33;
              if (v34 < 0x30 || v34 >= v32)
              {
                if (v34 < 0x41 || v34 >= v31)
                {
                  OUTLINED_FUNCTION_66_3();
                  if (!v24 || v34 >= v36)
                  {
                    goto LABEL_142;
                  }

                  v35 = -87;
                }

                else
                {
                  v35 = -55;
                }
              }

              else
              {
                v35 = -48;
              }

              v37 = v19 * a5;
              if ((v19 * a5) >> 64 != (v19 * a5) >> 63)
              {
                goto LABEL_141;
              }

              v19 = v37 + (v34 + v35);
              if (__OFADD__(v37, (v34 + v35)))
              {
                goto LABEL_141;
              }

              ++v33;
              --v30;
            }

            while (v30);
LABEL_52:
            v8 = v19;
            goto LABEL_142;
          }

          goto LABEL_72;
        }

LABEL_141:
        v8 = 0;
        goto LABEL_142;
      }

      goto LABEL_146;
    }

    if (v11 != 45)
    {
      if (v10)
      {
        v38 = a5 + 48;
        v39 = a5 + 55;
        v40 = a5 + 87;
        if (a5 > 10)
        {
          v38 = 58;
        }

        else
        {
          v40 = 97;
          v39 = 65;
        }

        if (result)
        {
          v41 = 0;
          do
          {
            v42 = *result;
            if (v42 < 0x30 || v42 >= v38)
            {
              if (v42 < 0x41 || v42 >= v39)
              {
                v8 = 0;
                if (v42 < 0x61 || v42 >= v40)
                {
                  goto LABEL_142;
                }

                v43 = -87;
              }

              else
              {
                v43 = -55;
              }
            }

            else
            {
              v43 = -48;
            }

            v44 = v41 * a5;
            if ((v41 * a5) >> 64 != (v41 * a5) >> 63)
            {
              goto LABEL_141;
            }

            v41 = v44 + (v42 + v43);
            if (__OFADD__(v44, (v42 + v43)))
            {
              goto LABEL_141;
            }

            ++result;
            --v10;
          }

          while (v10);
          v8 = v44 + (v42 + v43);
          goto LABEL_142;
        }

        goto LABEL_72;
      }

      goto LABEL_141;
    }

    if (v10 >= 1)
    {
      if (v10 != 1)
      {
        OUTLINED_FUNCTION_70_1();
        if (v13 ^ v14 | v12)
        {
          v17 = 65;
        }

        if (!(v13 ^ v14 | v12))
        {
          v18 = 58;
        }

        if (v15)
        {
          v19 = 0;
          v20 = (v15 + 1);
          while (1)
          {
            v21 = *v20;
            if (v21 < 0x30 || v21 >= v18)
            {
              if (v21 < 0x41 || v21 >= v17)
              {
                OUTLINED_FUNCTION_66_3();
                if (!v24 || v21 >= v23)
                {
                  goto LABEL_142;
                }

                v22 = -87;
              }

              else
              {
                v22 = -55;
              }
            }

            else
            {
              v22 = -48;
            }

            v25 = v19 * a5;
            if ((v19 * a5) >> 64 != (v19 * a5) >> 63)
            {
              goto LABEL_141;
            }

            v19 = v25 - (v21 + v22);
            if (__OFSUB__(v25, (v21 + v22)))
            {
              goto LABEL_141;
            }

            ++v20;
            if (!--v16)
            {
              goto LABEL_52;
            }
          }
        }

LABEL_72:
        v8 = 0;
LABEL_142:

        return v8;
      }

      goto LABEL_141;
    }

    __break(1u);
LABEL_145:
    __break(1u);
LABEL_146:
    __break(1u);
    goto LABEL_147;
  }

  v47 = HIBYTE(v9) & 0xF;
  v82 = v8;
  v83 = v9 & 0xFFFFFFFFFFFFFFLL;
  if (v8 != 43)
  {
    if (v8 != 45)
    {
      if (v47)
      {
        OUTLINED_FUNCTION_20_2();
        if (v72 ^ v73 | v71)
        {
          v75 = 65;
        }

        if (!(v72 ^ v73 | v71))
        {
          v76 = 58;
        }

        v77 = &v82;
        while (1)
        {
          v78 = *v77;
          if (v78 < 0x30 || v78 >= v76)
          {
            if (v78 < 0x41 || v78 >= v75)
            {
              OUTLINED_FUNCTION_66_3();
              if (!v24 || v78 >= v80)
              {
                goto LABEL_142;
              }

              v79 = -87;
            }

            else
            {
              v79 = -55;
            }
          }

          else
          {
            v79 = -48;
          }

          v81 = v52 * a5;
          if ((v52 * a5) >> 64 != (v52 * a5) >> 63)
          {
            goto LABEL_141;
          }

          v52 = v81 + (v78 + v79);
          if (__OFADD__(v81, (v78 + v79)))
          {
            goto LABEL_141;
          }

          v77 = (v77 + 1);
          if (!--v74)
          {
            goto LABEL_140;
          }
        }
      }

      goto LABEL_141;
    }

    if (v47)
    {
      if (v47 != 1)
      {
        OUTLINED_FUNCTION_20_2();
        if (v49 ^ v50 | v48)
        {
          v53 = 65;
        }

        if (!(v49 ^ v50 | v48))
        {
          v54 = 58;
        }

        v55 = &v82 + 1;
        while (1)
        {
          v56 = *v55;
          if (v56 < 0x30 || v56 >= v54)
          {
            if (v56 < 0x41 || v56 >= v53)
            {
              OUTLINED_FUNCTION_66_3();
              if (!v24 || v56 >= v58)
              {
                goto LABEL_142;
              }

              v57 = -87;
            }

            else
            {
              v57 = -55;
            }
          }

          else
          {
            v57 = -48;
          }

          v59 = v52 * a5;
          if ((v52 * a5) >> 64 != (v52 * a5) >> 63)
          {
            goto LABEL_141;
          }

          v52 = v59 - (v56 + v57);
          if (__OFSUB__(v59, (v56 + v57)))
          {
            goto LABEL_141;
          }

          ++v55;
          if (!--v51)
          {
            goto LABEL_140;
          }
        }
      }

      goto LABEL_141;
    }

    goto LABEL_145;
  }

  if (v47)
  {
    if (v47 != 1)
    {
      OUTLINED_FUNCTION_20_2();
      if (v61 ^ v62 | v60)
      {
        v64 = 65;
      }

      if (!(v61 ^ v62 | v60))
      {
        v65 = 58;
      }

      v66 = &v82 + 1;
      do
      {
        v67 = *v66;
        if (v67 < 0x30 || v67 >= v65)
        {
          if (v67 < 0x41 || v67 >= v64)
          {
            OUTLINED_FUNCTION_66_3();
            if (!v24 || v67 >= v69)
            {
              goto LABEL_142;
            }

            v68 = -87;
          }

          else
          {
            v68 = -55;
          }
        }

        else
        {
          v68 = -48;
        }

        v70 = v52 * a5;
        if ((v52 * a5) >> 64 != (v52 * a5) >> 63)
        {
          goto LABEL_141;
        }

        v52 = v70 + (v67 + v68);
        if (__OFADD__(v70, (v67 + v68)))
        {
          goto LABEL_141;
        }

        ++v66;
        --v63;
      }

      while (v63);
LABEL_140:
      v8 = v52;
      goto LABEL_142;
    }

    goto LABEL_141;
  }

LABEL_147:
  __break(1u);
  return result;
}

void sub_1C70D065C()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_10_27();
  OUTLINED_FUNCTION_1_41();
  if (!v4)
  {
    OUTLINED_FUNCTION_17_22();
LABEL_17:
    OUTLINED_FUNCTION_4_27(v11);
    OUTLINED_FUNCTION_25_0();
    return;
  }

  v5 = v3;
  if (!v3)
  {
    v11 = 0;
    goto LABEL_17;
  }

  if ((v3 & 0x8000000000000000) == 0)
  {
    OUTLINED_FUNCTION_3_34();
    while (v7 < v5)
    {
      if (__OFADD__(v7, 1))
      {
        goto LABEL_21;
      }

      if (!v1)
      {
        while (!__OFADD__(v6, 1))
        {
          if (v6 + 1 >= v2)
          {
            OUTLINED_FUNCTION_28_10();
            goto LABEL_17;
          }

          OUTLINED_FUNCTION_34_10();
        }

        __break(1u);
        break;
      }

      v8 = v6;
      OUTLINED_FUNCTION_27_17();
      OUTLINED_FUNCTION_12_24(v9);
      if (v10)
      {
        sub_1C75504FC();
        v11 = v8;
        goto LABEL_17;
      }

      v0 += 16;
      sub_1C75504FC();
      OUTLINED_FUNCTION_33_13();
    }

    __break(1u);
LABEL_21:
    __break(1u);
  }

  __break(1u);
}

void *sub_1C70D0734(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a2)
  {
    a3 = 0;
    goto LABEL_10;
  }

  if (!a3)
  {
LABEL_10:
    *result = a4;
    result[1] = a3;
    return OUTLINED_FUNCTION_29_13(result, a2, a3);
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v4 = 0;
    v5 = *(a4 + 16);
    while (v5 != v4)
    {
      *(a2 + 4 * v4) = *(a4 + 32 + 4 * v4);
      if (a3 == ++v4)
      {
        goto LABEL_10;
      }
    }

    a3 = v5;
    goto LABEL_10;
  }

  __break(1u);
  return result;
}

uint64_t sub_1C70D07A4(uint64_t result, uint64_t a2, uint64_t a3, __int16 a4)
{
  if (!a2)
  {
    v5 = 0;
    a3 = 0;
    goto LABEL_14;
  }

  if (!a3)
  {
    v5 = 0;
LABEL_14:
    v6 = a4;
LABEL_16:
    *result = a4;
    *(result + 2) = v6;
    *(result + 3) = v5;
    return OUTLINED_FUNCTION_29_13(result, a2, a3);
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v4 = 0;
    v5 = 0;
    v6 = a4;
    while (1)
    {
      v7 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        break;
      }

      if (v5)
      {
        v5 = 1;
        a3 = v4;
        goto LABEL_16;
      }

      v5 = v6 == (a4 & 0xFF00) >> 8;
      if (v6 == (a4 & 0xFF00) >> 8)
      {
        v8 = 0;
      }

      else
      {
        v8 = v6 + 1;
        if (((v6 + 1) & 0x100) != 0)
        {
          goto LABEL_18;
        }
      }

      *(a2 + v4++) = v6;
      v6 = v8;
      if (v7 == a3)
      {
        v6 = v8;
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_18:
    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_1C70D084C()
{
  OUTLINED_FUNCTION_33();
  v7 = v6;
  v9 = v8;
  OUTLINED_FUNCTION_41_11();
  sub_1C754E15C();
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_14_2();
  OUTLINED_FUNCTION_117();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_67_6(v12, v13, v14, v15, v16, v17, v18, v19, v29);
  OUTLINED_FUNCTION_45_11();
  if (!v1)
  {
    v23 = 0;
LABEL_18:
    OUTLINED_FUNCTION_59_5(v23);
    OUTLINED_FUNCTION_25_0();
    return;
  }

  if (!v9)
  {
    v23 = 0;
    goto LABEL_18;
  }

  if ((v9 & 0x8000000000000000) == 0)
  {
    v30 = v20;
    OUTLINED_FUNCTION_7_23();
    v22 = OUTLINED_FUNCTION_46_10(v21);
    while (v24 < v22)
    {
      if (__OFADD__(v24, 1))
      {
        goto LABEL_22;
      }

      if (!v5)
      {
        while (1)
        {
          v25 = v23 + 1;
          if (__OFADD__(v23, 1))
          {
            break;
          }

          if (v25 >= v9)
          {
            goto LABEL_18;
          }

          v5 = *(v30 + 8 * v25);
          ++v23;
          if (v5)
          {
            v32 = v24 + 1;
            goto LABEL_13;
          }
        }

        __break(1u);
        break;
      }

      v32 = v24 + 1;
      v25 = v23;
LABEL_13:
      OUTLINED_FUNCTION_88();
      v26 = OUTLINED_FUNCTION_37_16();
      v27(v26);
      v28 = OUTLINED_FUNCTION_60_5();
      v7(v28);
      (v7)(v1, v0, v3);
      v22 = v31;
      v24 = v32;
      if (v32 == v31)
      {
        v23 = v25;
        goto LABEL_18;
      }

      v1 += v4;
      v23 = v25;
      v7 = v2;
    }

    __break(1u);
LABEL_22:
    __break(1u);
  }

  __break(1u);
}

void sub_1C70D0A04()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_0_47();
  if (!v5)
  {
    OUTLINED_FUNCTION_17_22();
LABEL_17:
    OUTLINED_FUNCTION_4_27(v16);
    OUTLINED_FUNCTION_25_0();
    return;
  }

  v6 = v4;
  if (!v4)
  {
    v16 = 0;
    goto LABEL_17;
  }

  if ((v4 & 0x8000000000000000) == 0)
  {
    OUTLINED_FUNCTION_3_34();
    while (v8 < v6)
    {
      v9 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        goto LABEL_21;
      }

      if (!v2)
      {
        while (!__OFADD__(v7, 1))
        {
          if (v7 + 1 >= v3)
          {
            OUTLINED_FUNCTION_28_10();
            goto LABEL_17;
          }

          OUTLINED_FUNCTION_34_10();
        }

        __break(1u);
        break;
      }

      v10 = v7;
      OUTLINED_FUNCTION_27_17();
      v12 = (v10 << 9) | (8 * v11);
      v13 = *(*(v0 + 48) + v12);
      v14 = *(*(v0 + 56) + v12);
      v2 &= v2 - 1;
      *v1 = v13;
      v1[1] = v14;
      if (v9 == v6)
      {
        v17 = v13;
        v16 = v10;
        goto LABEL_17;
      }

      v1 += 2;
      v15 = v13;
      OUTLINED_FUNCTION_33_13();
    }

    __break(1u);
LABEL_21:
    __break(1u);
  }

  __break(1u);
}

void sub_1C70D0AEC()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_0_47();
  if (!v5)
  {
    OUTLINED_FUNCTION_17_22();
LABEL_17:
    OUTLINED_FUNCTION_4_27(v17);
    OUTLINED_FUNCTION_25_0();
    return;
  }

  v6 = v4;
  if (!v4)
  {
    v17 = 0;
    goto LABEL_17;
  }

  if ((v4 & 0x8000000000000000) == 0)
  {
    OUTLINED_FUNCTION_3_34();
    while (v8 < v6)
    {
      v9 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        goto LABEL_21;
      }

      if (!v2)
      {
        while (!__OFADD__(v7, 1))
        {
          if (v7 + 1 >= v3)
          {
            OUTLINED_FUNCTION_28_10();
            goto LABEL_17;
          }

          OUTLINED_FUNCTION_34_10();
        }

        __break(1u);
        break;
      }

      v10 = v7;
      OUTLINED_FUNCTION_8_2();
      v12 = *(v0 + 56) + ((v10 << 11) | (32 * v11));
      v14 = *v12;
      v13 = *(v12 + 8);
      v15 = *(v12 + 16);
      v16 = *(v12 + 24);
      LOBYTE(v12) = *(v12 + 25);
      *v1 = v14;
      *(v1 + 8) = v13;
      *(v1 + 16) = v15;
      *(v1 + 24) = v16;
      *(v1 + 25) = v12;
      if (v9 == v6)
      {
        sub_1C75504FC();
        v17 = v10;
        goto LABEL_17;
      }

      v1 += 32;
      sub_1C75504FC();
      OUTLINED_FUNCTION_33_13();
    }

    __break(1u);
LABEL_21:
    __break(1u);
  }

  __break(1u);
}

void *sub_1C70D0BE4(void *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (!a2)
  {
    a3 = 0;
LABEL_12:
    v7 = a4;
LABEL_14:
    *result = a4;
    result[1] = a5;
    result[2] = v7;
    return OUTLINED_FUNCTION_29_13(result, a2, a3);
  }

  if (!a3)
  {
    goto LABEL_12;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v5 = 0;
    while (1)
    {
      v6 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      if (!(a4 - a5 + v5))
      {
        v7 = a5;
        a3 = a5 - a4;
        goto LABEL_14;
      }

      if (a5 < a4)
      {
        goto LABEL_16;
      }

      if (a4 + v5 >= a5)
      {
        goto LABEL_17;
      }

      *(a2 + 8 * v5) = a4 + v5;
      ++v5;
      if (v6 == a3)
      {
        v7 = a4 + v5;
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t sub_1C70D0C68()
{
  result = qword_1EC2171E0;
  if (!qword_1EC2171E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2171E0);
  }

  return result;
}

void sub_1C70D0CBC()
{
  OUTLINED_FUNCTION_48_2();
  OUTLINED_FUNCTION_18_15();
  OUTLINED_FUNCTION_2_34();
  v5 = v4 & v3;
  if (!v6)
  {
    OUTLINED_FUNCTION_17_22();
LABEL_17:
    OUTLINED_FUNCTION_9_25(v15);
    OUTLINED_FUNCTION_52_1();
    return;
  }

  v7 = v2;
  if (!v2)
  {
    v15 = 0;
    goto LABEL_17;
  }

  if ((v2 & 0x8000000000000000) == 0)
  {
    OUTLINED_FUNCTION_5_29();
    OUTLINED_FUNCTION_55_8();
    while (v9 < v7)
    {
      v10 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        goto LABEL_21;
      }

      if (!v5)
      {
        while (!__OFADD__(v8, 1))
        {
          if (v8 + 1 >= v1)
          {
            OUTLINED_FUNCTION_51_8();
            goto LABEL_17;
          }

          OUTLINED_FUNCTION_54_11();
        }

        __break(1u);
        break;
      }

      v11 = v8;
      OUTLINED_FUNCTION_38_10();
      v13 = OUTLINED_FUNCTION_77_5(v12);
      *(v0 + 25) = v14;
      *(v0 + 32) = v13;
      if (v10 == v7)
      {
        sub_1C75504FC();
        sub_1C75504FC();
        v15 = v11;
        goto LABEL_17;
      }

      v0 += 40;
      sub_1C75504FC();
      sub_1C75504FC();
      OUTLINED_FUNCTION_53_13();
    }

    __break(1u);
LABEL_21:
    __break(1u);
  }

  __break(1u);
}

void sub_1C70D0EDC()
{
  OUTLINED_FUNCTION_48_2();
  v2 = v1 + 56;
  OUTLINED_FUNCTION_2_34();
  v9 = v8 & v7;
  if (!v4)
  {
    OUTLINED_FUNCTION_17_22();
LABEL_17:
    OUTLINED_FUNCTION_86_5(v3, v6, v12);
    OUTLINED_FUNCTION_52_1();
    return;
  }

  v10 = v5;
  if (!v5)
  {
    v12 = 0;
    goto LABEL_17;
  }

  if ((v5 & 0x8000000000000000) == 0)
  {
    v11 = v4;
    v24 = v3;
    OUTLINED_FUNCTION_7_23();
    OUTLINED_FUNCTION_71_3();
    while (1)
    {
      if (v13 >= v10)
      {
        goto LABEL_20;
      }

      v14 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        goto LABEL_21;
      }

      if (!v9)
      {
        while (1)
        {
          v15 = v12 + 1;
          if (__OFADD__(v12, 1))
          {
            break;
          }

          if (v15 >= v0)
          {
            goto LABEL_15;
          }

          v9 = *(v2 + 8 * v15);
          ++v12;
          if (v9)
          {
            goto LABEL_12;
          }
        }

        __break(1u);
LABEL_20:
        __break(1u);
LABEL_21:
        __break(1u);
        goto LABEL_22;
      }

      v15 = v12;
LABEL_12:
      v16 = v6;
      v17 = *(v6 + 48) + 56 * (__clz(__rbit64(v9)) | (v15 << 6));
      v18 = *v17;
      v19 = *(v17 + 8);
      v9 &= v9 - 1;
      v20 = *(v17 + 16);
      v21 = *(v17 + 24);
      v23 = *(v17 + 32);
      v22 = *(v17 + 40);
      LOBYTE(v17) = *(v17 + 48);
      *v11 = v18;
      *(v11 + 8) = v19;
      *(v11 + 16) = v20;
      *(v11 + 24) = v21;
      *(v11 + 32) = v23;
      *(v11 + 40) = v22;
      *(v11 + 48) = v17;
      if (v14 == v10)
      {
        break;
      }

      v11 += 56;
      sub_1C75504FC();
      sub_1C75504FC();
      sub_1C75504FC();
      v13 = v14;
      v12 = v15;
      v6 = v16;
    }

    sub_1C75504FC();
    sub_1C75504FC();
    sub_1C75504FC();
    v12 = v15;
    v6 = v16;
LABEL_15:
    v3 = v24;
    goto LABEL_17;
  }

LABEL_22:
  __break(1u);
}

void sub_1C70D1084()
{
  OUTLINED_FUNCTION_33();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8(0);
  v10 = OUTLINED_FUNCTION_18(v9);
  v29 = v11;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_14_2();
  OUTLINED_FUNCTION_117();
  MEMORY[0x1EEE9AC00](v12);
  v30 = v1;
  v13 = v1 + 56;
  OUTLINED_FUNCTION_2_34();
  v17 = v16 & v15;
  if (!v5)
  {
    OUTLINED_FUNCTION_17_22();
LABEL_18:
    *v7 = v30;
    v7[1] = v13;
    v7[2] = ~v14;
    v7[3] = v26;
    v7[4] = v17;
    OUTLINED_FUNCTION_25_0();
    return;
  }

  if (!v3)
  {
    v26 = 0;
    goto LABEL_18;
  }

  if ((v3 & 0x8000000000000000) == 0)
  {
    v27 = v14;
    v28 = v7;
    OUTLINED_FUNCTION_7_23();
    v22 = (v20 - v21) >> 6;
    while (1)
    {
      if (v19 >= v3)
      {
        goto LABEL_21;
      }

      v23 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        goto LABEL_22;
      }

      if (!v17)
      {
        while (1)
        {
          v24 = v18 + 1;
          if (__OFADD__(v18, 1))
          {
            break;
          }

          if (v24 >= v22)
          {
            OUTLINED_FUNCTION_28_10();
            goto LABEL_16;
          }

          v17 = *(v13 + 8 * v24);
          ++v18;
          if (v17)
          {
            goto LABEL_12;
          }
        }

        __break(1u);
LABEL_21:
        __break(1u);
LABEL_22:
        __break(1u);
        goto LABEL_23;
      }

      v24 = v18;
LABEL_12:
      OUTLINED_FUNCTION_8_2();
      v25 = *(v29 + 72);
      sub_1C70D447C();
      sub_1C70D44D4();
      sub_1C70D44D4();
      if (v23 == v3)
      {
        break;
      }

      v5 += v25;
      v19 = v23;
      v18 = v24;
    }

    v26 = v24;
LABEL_16:
    v14 = v27;
    v7 = v28;
    goto LABEL_18;
  }

LABEL_23:
  __break(1u);
}

void sub_1C70D1260()
{
  OUTLINED_FUNCTION_48_2();
  OUTLINED_FUNCTION_18_15();
  OUTLINED_FUNCTION_2_34();
  v5 = v4 & v3;
  if (!v6)
  {
    OUTLINED_FUNCTION_17_22();
LABEL_17:
    OUTLINED_FUNCTION_9_25(v15);
    OUTLINED_FUNCTION_52_1();
    return;
  }

  v7 = v2;
  if (!v2)
  {
    v15 = 0;
    goto LABEL_17;
  }

  if ((v2 & 0x8000000000000000) == 0)
  {
    OUTLINED_FUNCTION_5_29();
    OUTLINED_FUNCTION_55_8();
    while (v9 < v7)
    {
      v10 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        goto LABEL_21;
      }

      if (!v5)
      {
        while (!__OFADD__(v8, 1))
        {
          if (v8 + 1 >= v1)
          {
            OUTLINED_FUNCTION_51_8();
            goto LABEL_17;
          }

          OUTLINED_FUNCTION_54_11();
        }

        __break(1u);
        break;
      }

      v11 = v8;
      OUTLINED_FUNCTION_38_10();
      v13 = OUTLINED_FUNCTION_77_5(v12);
      *(v0 + 25) = v14;
      *(v0 + 32) = v13;
      if (v10 == v7)
      {
        sub_1C75504FC();
        sub_1C75504FC();
        v15 = v11;
        goto LABEL_17;
      }

      v0 += 40;
      sub_1C75504FC();
      sub_1C75504FC();
      OUTLINED_FUNCTION_53_13();
    }

    __break(1u);
LABEL_21:
    __break(1u);
  }

  __break(1u);
}

void sub_1C70D1364(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, __int128 a17, __int128 a18, __int128 a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33)
{
  OUTLINED_FUNCTION_93_6();
  a32 = v38;
  a33 = v39;
  OUTLINED_FUNCTION_10_27();
  v40 = v35 + 56;
  OUTLINED_FUNCTION_1_41();
  if (!v42)
  {
    OUTLINED_FUNCTION_17_22();
LABEL_17:
    OUTLINED_FUNCTION_4_27(v56);
    OUTLINED_FUNCTION_92_6();
    return;
  }

  v43 = v41;
  if (!v41)
  {
    v56 = 0;
    goto LABEL_17;
  }

  if ((v41 & 0x8000000000000000) == 0)
  {
    OUTLINED_FUNCTION_3_34();
    while (v45 < v43)
    {
      v46 = v45 + 1;
      if (__OFADD__(v45, 1))
      {
        goto LABEL_21;
      }

      if (!v36)
      {
        while (1)
        {
          v47 = v44 + 1;
          if (__OFADD__(v44, 1))
          {
            break;
          }

          if (v47 >= v37)
          {
            OUTLINED_FUNCTION_28_10();
            goto LABEL_17;
          }

          v36 = *(v40 + 8 * v47);
          ++v44;
          if (v36)
          {
            goto LABEL_12;
          }
        }

        __break(1u);
        break;
      }

      v47 = v44;
LABEL_12:
      OUTLINED_FUNCTION_8_2();
      v49 = *(v33 + 48) + 56 * (v48 | (v47 << 6));
      v51 = *(v49 + 16);
      v50 = *(v49 + 32);
      v52 = *v49;
      a20 = *(v49 + 48);
      a18 = v51;
      a19 = v50;
      a17 = v52;
      v53 = *v49;
      v54 = *(v49 + 16);
      v55 = *(v49 + 32);
      *(v34 + 48) = *(v49 + 48);
      *(v34 + 16) = v54;
      *(v34 + 32) = v55;
      *v34 = v53;
      if (v46 == v43)
      {
        sub_1C70260B4(&a17, &a10);
        v56 = v47;
        goto LABEL_17;
      }

      v34 += 56;
      sub_1C70260B4(&a17, &a10);
      v45 = v46;
      v44 = v47;
    }

    __break(1u);
LABEL_21:
    __break(1u);
  }

  __break(1u);
}

void sub_1C70D1490()
{
  OUTLINED_FUNCTION_18_15();
  OUTLINED_FUNCTION_2_34();
  v6 = v5 & v4;
  if (!v7)
  {
    OUTLINED_FUNCTION_17_22();
LABEL_17:
    OUTLINED_FUNCTION_9_25(v26);
    return;
  }

  v8 = v3;
  if (!v3)
  {
    v26 = 0;
    goto LABEL_17;
  }

  if ((v3 & 0x8000000000000000) == 0)
  {
    OUTLINED_FUNCTION_5_29();
    v29 = v9;
    OUTLINED_FUNCTION_55_8();
    while (v11 < v8)
    {
      v12 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        goto LABEL_21;
      }

      if (!v6)
      {
        while (!__OFADD__(v10, 1))
        {
          if (v10 + 1 >= v2)
          {
            OUTLINED_FUNCTION_51_8();
            goto LABEL_17;
          }

          OUTLINED_FUNCTION_54_11();
        }

        __break(1u);
        break;
      }

      v13 = v10;
      OUTLINED_FUNCTION_15_24();
      OUTLINED_FUNCTION_64_7();
      memcpy(v14, v15, 0x42uLL);
      v16 = memmove(v0, v1, 0x42uLL);
      if (v12 == v8)
      {
        v27 = OUTLINED_FUNCTION_85_6(v16, v17, v18, v19, v20, v21, v22, v23, v29, v30, v31, v32, v33, v34, v35, v36, v37, v38, v39);
        sub_1C7025FF8(v27, v28);
        v26 = v13;
        goto LABEL_17;
      }

      v0 += 72;
      v24 = OUTLINED_FUNCTION_85_6(v16, v17, v18, v19, v20, v21, v22, v23, v29, v30, v31, v32, v33, v34, v35, v36, v37, v38, v39);
      sub_1C7025FF8(v24, v25);
      OUTLINED_FUNCTION_53_13();
    }

    __break(1u);
LABEL_21:
    __break(1u);
  }

  __break(1u);
}

void sub_1C70D15B0()
{
  OUTLINED_FUNCTION_18_15();
  OUTLINED_FUNCTION_2_34();
  v6 = v5 & v4;
  if (!v7)
  {
    OUTLINED_FUNCTION_17_22();
LABEL_17:
    OUTLINED_FUNCTION_9_25(v26);
    return;
  }

  v8 = v3;
  if (!v3)
  {
    v26 = 0;
    goto LABEL_17;
  }

  if ((v3 & 0x8000000000000000) == 0)
  {
    OUTLINED_FUNCTION_5_29();
    v29 = v9;
    OUTLINED_FUNCTION_55_8();
    while (v11 < v8)
    {
      v12 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        goto LABEL_21;
      }

      if (!v6)
      {
        while (!__OFADD__(v10, 1))
        {
          if (v10 + 1 >= v2)
          {
            OUTLINED_FUNCTION_51_8();
            goto LABEL_17;
          }

          OUTLINED_FUNCTION_54_11();
        }

        __break(1u);
        break;
      }

      v13 = v10;
      OUTLINED_FUNCTION_15_24();
      OUTLINED_FUNCTION_64_7();
      memcpy(v14, v15, 0x41uLL);
      v16 = memmove(v0, v1, 0x41uLL);
      if (v12 == v8)
      {
        v27 = OUTLINED_FUNCTION_85_6(v16, v17, v18, v19, v20, v21, v22, v23, v29, v30, v31, v32, v33, v34, v35, v36, v37, v38, v39);
        sub_1C7025F3C(v27, v28);
        v26 = v13;
        goto LABEL_17;
      }

      v0 += 72;
      v24 = OUTLINED_FUNCTION_85_6(v16, v17, v18, v19, v20, v21, v22, v23, v29, v30, v31, v32, v33, v34, v35, v36, v37, v38, v39);
      sub_1C7025F3C(v24, v25);
      OUTLINED_FUNCTION_53_13();
    }

    __break(1u);
LABEL_21:
    __break(1u);
  }

  __break(1u);
}

void sub_1C70D16D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a4 + 64;
  OUTLINED_FUNCTION_2_34();
  v13 = v12 & v11;
  if (!v7)
  {
    OUTLINED_FUNCTION_17_22();
LABEL_18:
    *v6 = v9;
    v6[1] = v5;
    v6[2] = ~v10;
    v6[3] = v29;
    v6[4] = v13;
    return;
  }

  v14 = v8;
  if (!v8)
  {
    v29 = 0;
    goto LABEL_18;
  }

  if ((v8 & 0x8000000000000000) == 0)
  {
    v15 = v7;
    v30 = v10;
    v31 = v6;
    OUTLINED_FUNCTION_7_23();
    OUTLINED_FUNCTION_55_8();
    while (1)
    {
      if (v17 >= v14)
      {
        goto LABEL_21;
      }

      v18 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        goto LABEL_22;
      }

      if (!v13)
      {
        while (!__OFADD__(v16, 1))
        {
          if (v16 + 1 >= v4)
          {
            OUTLINED_FUNCTION_51_8();
            goto LABEL_16;
          }

          OUTLINED_FUNCTION_54_11();
        }

        __break(1u);
LABEL_21:
        __break(1u);
LABEL_22:
        __break(1u);
        goto LABEL_23;
      }

      v19 = v16;
      OUTLINED_FUNCTION_15_24();
      v21 = v20;
      v23 = (*(v20 + 48) + 16 * v22);
      v24 = *v23;
      v25 = v23[1];
      sub_1C6FB5E28(*(v20 + 56) + 40 * v22, &v33);
      *&v32 = v24;
      *(&v32 + 1) = v25;
      v26 = v35;
      v39 = v35;
      v27 = v34;
      v28 = v33;
      v37 = v33;
      v38 = v34;
      v36 = v32;
      *v15 = v32;
      *(v15 + 16) = v28;
      *(v15 + 32) = v27;
      *(v15 + 48) = v26;
      if (v18 == v14)
      {
        break;
      }

      v15 += 56;
      sub_1C75504FC();
      OUTLINED_FUNCTION_53_13();
    }

    sub_1C75504FC();
    v29 = v19;
    v9 = v21;
LABEL_16:
    v10 = v30;
    v6 = v31;
    goto LABEL_18;
  }

LABEL_23:
  __break(1u);
}

void sub_1C70D1840(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, uint64_t a10, uint64_t a11, uint64_t a12, __int128 a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28)
{
  OUTLINED_FUNCTION_223();
  a27 = v33;
  a28 = v34;
  OUTLINED_FUNCTION_0_47();
  if (!v35)
  {
    v40 = 0;
LABEL_16:
    *v28 = v29;
    v28[1] = v30;
    v28[2] = ~v31;
    v28[3] = v40;
    v28[4] = v32;
    OUTLINED_FUNCTION_224_0();
    return;
  }

  v37 = v36;
  if (!v36)
  {
    v40 = 0;
    goto LABEL_16;
  }

  if ((v36 & 0x8000000000000000) == 0)
  {
    v38 = v35;
    v39 = 0;
    v40 = 0;
    while (1)
    {
      v41 = v39 + 1;
      if (__OFADD__(v39, 1))
      {
        break;
      }

      if (!v32)
      {
        while (1)
        {
          v42 = v40 + 1;
          if (__OFADD__(v40, 1))
          {
            break;
          }

          if (v42 >= ((63 - v31) >> 6))
          {
            v32 = 0;
            goto LABEL_16;
          }

          v32 = *(v30 + 8 * v42);
          ++v40;
          if (v32)
          {
            v40 = v42;
            goto LABEL_11;
          }
        }

        __break(1u);
        break;
      }

LABEL_11:
      OUTLINED_FUNCTION_8_2();
      sub_1C6FB5E28(*(v29 + 56) + 40 * (v43 | (v40 << 6)), &a9);
      sub_1C6F699F8(&a9, &a13);
      sub_1C6F699F8(&a13, v38);
      v38 += 40;
      v39 = v41;
      if (v41 == v37)
      {
        goto LABEL_16;
      }
    }

    __break(1u);
  }

  __break(1u);
}

void sub_1C70D1948()
{
  OUTLINED_FUNCTION_33();
  v3 = v2;
  v5 = v4;
  OUTLINED_FUNCTION_41_11();
  v6 = type metadata accessor for PersonalTrait();
  v7 = OUTLINED_FUNCTION_18(v6);
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_14_2();
  OUTLINED_FUNCTION_117();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_43_11(v9, v10, v11, v12, v13, v14, v15, v16, v24);
  OUTLINED_FUNCTION_2_34();
  v19 = v18 & v17;
  if (!v0)
  {
    OUTLINED_FUNCTION_17_22();
LABEL_17:
    OUTLINED_FUNCTION_61_8(v20);
    OUTLINED_FUNCTION_25_0();
    return;
  }

  if (!v5)
  {
    v20 = 0;
    goto LABEL_17;
  }

  if ((v5 & 0x8000000000000000) == 0)
  {
    OUTLINED_FUNCTION_7_23();
    OUTLINED_FUNCTION_71_3();
    v25 = v5;
    while (v21 < v5)
    {
      v22 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        goto LABEL_21;
      }

      if (!v19)
      {
        while (1)
        {
          v23 = v20 + 1;
          if (__OFADD__(v20, 1))
          {
            break;
          }

          if (v23 >= v1)
          {
            goto LABEL_17;
          }

          v19 = *(v3 + 64 + 8 * v23);
          ++v20;
          if (v19)
          {
            goto LABEL_12;
          }
        }

        __break(1u);
        break;
      }

      v23 = v20;
LABEL_12:
      OUTLINED_FUNCTION_44_1();
      sub_1C70D447C();
      sub_1C70D44D4();
      sub_1C70D44D4();
      v5 = v25;
      if (v22 == v25)
      {
        v20 = v23;
        goto LABEL_17;
      }

      OUTLINED_FUNCTION_87_8();
    }

    __break(1u);
LABEL_21:
    __break(1u);
  }

  __break(1u);
}

void sub_1C70D1B20()
{
  OUTLINED_FUNCTION_33();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217360);
  OUTLINED_FUNCTION_3_0();
  v37 = v9;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_14_2();
  v38 = v11;
  OUTLINED_FUNCTION_117();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_43_11(v13, v14, v15, v16, v17, v18, v19, v20, v34);
  v21 = v2 + 64;
  OUTLINED_FUNCTION_2_34();
  v24 = v23 & v22;
  if (!v6)
  {
    OUTLINED_FUNCTION_17_22();
LABEL_17:
    *v8 = v2;
    v8[1] = v21;
    OUTLINED_FUNCTION_78_6(v26);
    OUTLINED_FUNCTION_25_0();
    return;
  }

  if (!v4)
  {
    v26 = 0;
    goto LABEL_17;
  }

  if ((v4 & 0x8000000000000000) == 0)
  {
    v25 = v6;
    v35 = v8;
    OUTLINED_FUNCTION_7_23();
    OUTLINED_FUNCTION_71_3();
    v36 = v4;
    while (1)
    {
      if (v27 >= v4)
      {
        goto LABEL_20;
      }

      v28 = v27 + 1;
      if (__OFADD__(v27, 1))
      {
        goto LABEL_21;
      }

      if (!v24)
      {
        while (1)
        {
          v29 = v26 + 1;
          if (__OFADD__(v26, 1))
          {
            break;
          }

          if (v29 >= v0)
          {
            goto LABEL_15;
          }

          v24 = *(v21 + 8 * v29);
          ++v26;
          if (v24)
          {
            goto LABEL_12;
          }
        }

        __break(1u);
LABEL_20:
        __break(1u);
LABEL_21:
        __break(1u);
        goto LABEL_22;
      }

      v29 = v26;
LABEL_12:
      OUTLINED_FUNCTION_84_5();
      v31 = v30 | (v29 << 6);
      v32 = *(v2 + 48);
      sub_1C754DFFC();
      OUTLINED_FUNCTION_84_0();
      (*(v33 + 16))(v38, v32 + *(v33 + 72) * v31);
      *(v38 + *(v39 + 48)) = *(*(v2 + 56) + 8 * v31);
      sub_1C70D4424();
      sub_1C70D4424();
      v4 = v36;
      if (v28 == v36)
      {
        break;
      }

      v25 += *(v37 + 72);
      v27 = v28;
      v26 = v29;
    }

    v26 = v29;
LABEL_15:
    v8 = v35;
    goto LABEL_17;
  }

LABEL_22:
  __break(1u);
}

void sub_1C70D1D48()
{
  OUTLINED_FUNCTION_33();
  v7 = v6;
  v9 = v8;
  OUTLINED_FUNCTION_41_11();
  sub_1C754DFFC();
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_14_2();
  OUTLINED_FUNCTION_117();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_67_6(v12, v13, v14, v15, v16, v17, v18, v19, v29);
  OUTLINED_FUNCTION_45_11();
  if (!v1)
  {
    v23 = 0;
LABEL_18:
    OUTLINED_FUNCTION_59_5(v23);
    OUTLINED_FUNCTION_25_0();
    return;
  }

  if (!v9)
  {
    v23 = 0;
    goto LABEL_18;
  }

  if ((v9 & 0x8000000000000000) == 0)
  {
    v30 = v20;
    OUTLINED_FUNCTION_7_23();
    v22 = OUTLINED_FUNCTION_46_10(v21);
    while (v24 < v22)
    {
      if (__OFADD__(v24, 1))
      {
        goto LABEL_22;
      }

      if (!v5)
      {
        while (1)
        {
          v25 = v23 + 1;
          if (__OFADD__(v23, 1))
          {
            break;
          }

          if (v25 >= v9)
          {
            goto LABEL_18;
          }

          v5 = *(v30 + 8 * v25);
          ++v23;
          if (v5)
          {
            v32 = v24 + 1;
            goto LABEL_13;
          }
        }

        __break(1u);
        break;
      }

      v32 = v24 + 1;
      v25 = v23;
LABEL_13:
      OUTLINED_FUNCTION_88();
      v26 = OUTLINED_FUNCTION_37_16();
      v27(v26);
      v28 = OUTLINED_FUNCTION_60_5();
      v7(v28);
      (v7)(v1, v0, v3);
      v22 = v31;
      v24 = v32;
      if (v32 == v31)
      {
        v23 = v25;
        goto LABEL_18;
      }

      v1 += v4;
      v23 = v25;
      v7 = v2;
    }

    __break(1u);
LABEL_22:
    __break(1u);
  }

  __break(1u);
}

void sub_1C70D1F00()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_0_47();
  if (!v4)
  {
    OUTLINED_FUNCTION_17_22();
LABEL_17:
    OUTLINED_FUNCTION_4_27(v13);
    OUTLINED_FUNCTION_25_0();
    return;
  }

  v5 = v3;
  if (!v3)
  {
    v13 = 0;
    goto LABEL_17;
  }

  if ((v3 & 0x8000000000000000) == 0)
  {
    OUTLINED_FUNCTION_3_34();
    while (v7 < v5)
    {
      v8 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        goto LABEL_21;
      }

      if (!v1)
      {
        while (!__OFADD__(v6, 1))
        {
          if (v6 + 1 >= v2)
          {
            OUTLINED_FUNCTION_28_10();
            goto LABEL_17;
          }

          OUTLINED_FUNCTION_34_10();
        }

        __break(1u);
        break;
      }

      v9 = v6;
      OUTLINED_FUNCTION_19_18();
      OUTLINED_FUNCTION_50_9();
      *v0 = v11;
      *(v0 + 8) = v10;
      *(v0 + 16) = v12;
      if (v8 == v5)
      {
        sub_1C75504FC();
        v13 = v9;
        goto LABEL_17;
      }

      v0 += 24;
      sub_1C75504FC();
      OUTLINED_FUNCTION_33_13();
    }

    __break(1u);
LABEL_21:
    __break(1u);
  }

  __break(1u);
}

void sub_1C70D1FF4()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_0_47();
  if (!v4)
  {
    OUTLINED_FUNCTION_17_22();
LABEL_17:
    OUTLINED_FUNCTION_4_27(v11);
    OUTLINED_FUNCTION_25_0();
    return;
  }

  v5 = v3;
  if (!v3)
  {
    v11 = 0;
    goto LABEL_17;
  }

  if ((v3 & 0x8000000000000000) == 0)
  {
    OUTLINED_FUNCTION_3_34();
    while (v7 < v5)
    {
      if (__OFADD__(v7, 1))
      {
        goto LABEL_21;
      }

      if (!v1)
      {
        while (!__OFADD__(v6, 1))
        {
          if (v6 + 1 >= v2)
          {
            OUTLINED_FUNCTION_28_10();
            goto LABEL_17;
          }

          OUTLINED_FUNCTION_34_10();
        }

        __break(1u);
        break;
      }

      v8 = v6;
      OUTLINED_FUNCTION_8_2();
      OUTLINED_FUNCTION_57_8(v9);
      if (v10)
      {

        v11 = v8;
        goto LABEL_17;
      }

      v0 += 8;

      OUTLINED_FUNCTION_33_13();
    }

    __break(1u);
LABEL_21:
    __break(1u);
  }

  __break(1u);
}

void sub_1C70D20BC()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_0_47();
  if (!v4)
  {
    OUTLINED_FUNCTION_17_22();
LABEL_17:
    OUTLINED_FUNCTION_4_27(v11);
    OUTLINED_FUNCTION_25_0();
    return;
  }

  v5 = v3;
  if (!v3)
  {
    v11 = 0;
    goto LABEL_17;
  }

  if ((v3 & 0x8000000000000000) == 0)
  {
    OUTLINED_FUNCTION_3_34();
    while (v7 < v5)
    {
      if (__OFADD__(v7, 1))
      {
        goto LABEL_21;
      }

      if (!v1)
      {
        while (!__OFADD__(v6, 1))
        {
          if (v6 + 1 >= v2)
          {
            OUTLINED_FUNCTION_28_10();
            goto LABEL_17;
          }

          OUTLINED_FUNCTION_34_10();
        }

        __break(1u);
        break;
      }

      v8 = v6;
      OUTLINED_FUNCTION_27_17();
      OUTLINED_FUNCTION_12_24(v9);
      if (v10)
      {
        sub_1C75504FC();
        v11 = v8;
        goto LABEL_17;
      }

      v0 += 16;
      sub_1C75504FC();
      OUTLINED_FUNCTION_33_13();
    }

    __break(1u);
LABEL_21:
    __break(1u);
  }

  __break(1u);
}

void sub_1C70D2280()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_0_47();
  if (!v4)
  {
    OUTLINED_FUNCTION_17_22();
LABEL_17:
    OUTLINED_FUNCTION_4_27(v11);
    OUTLINED_FUNCTION_25_0();
    return;
  }

  v5 = v3;
  if (!v3)
  {
    v11 = 0;
    goto LABEL_17;
  }

  if ((v3 & 0x8000000000000000) == 0)
  {
    OUTLINED_FUNCTION_3_34();
    while (v7 < v5)
    {
      if (__OFADD__(v7, 1))
      {
        goto LABEL_21;
      }

      if (!v1)
      {
        while (!__OFADD__(v6, 1))
        {
          if (v6 + 1 >= v2)
          {
            OUTLINED_FUNCTION_28_10();
            goto LABEL_17;
          }

          OUTLINED_FUNCTION_34_10();
        }

        __break(1u);
        break;
      }

      v8 = v6;
      OUTLINED_FUNCTION_8_2();
      OUTLINED_FUNCTION_57_8(v9);
      if (v10)
      {
        sub_1C75504FC();
        v11 = v8;
        goto LABEL_17;
      }

      v0 += 8;
      sub_1C75504FC();
      OUTLINED_FUNCTION_33_13();
    }

    __break(1u);
LABEL_21:
    __break(1u);
  }

  __break(1u);
}

void sub_1C70D2364()
{
  OUTLINED_FUNCTION_75_5();
  if (!v4)
  {
    v1 = 0;
    goto LABEL_15;
  }

  if (!v1)
  {
LABEL_15:
    OUTLINED_FUNCTION_6_34(v0, v1, v2, v3);
    return;
  }

  if ((v1 & 0x8000000000000000) == 0)
  {
    OUTLINED_FUNCTION_74_5();
    while (!__OFADD__(v9, 1))
    {
      if (!v6)
      {
        while (1)
        {
          v10 = v7 + 1;
          if (__OFADD__(v7, 1))
          {
            break;
          }

          if (v10 >= v8)
          {
            v1 = v9;
            goto LABEL_15;
          }

          ++v7;
          if (*(v3 + 8 * v10))
          {
            goto LABEL_10;
          }
        }

        __break(1u);
        break;
      }

LABEL_10:
      OUTLINED_FUNCTION_72_6(v0, v5, v1, v2);
      if (v11)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  __break(1u);
}

void sub_1C70D240C()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_0_47();
  if (!v5)
  {
    OUTLINED_FUNCTION_17_22();
LABEL_17:
    OUTLINED_FUNCTION_4_27(v14);
    OUTLINED_FUNCTION_25_0();
    return;
  }

  v6 = v4;
  if (!v4)
  {
    v14 = 0;
    goto LABEL_17;
  }

  if ((v4 & 0x8000000000000000) == 0)
  {
    OUTLINED_FUNCTION_3_34();
    while (v8 < v6)
    {
      v9 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        goto LABEL_21;
      }

      if (!v2)
      {
        while (!__OFADD__(v7, 1))
        {
          if (v7 + 1 >= v3)
          {
            OUTLINED_FUNCTION_28_10();
            goto LABEL_17;
          }

          OUTLINED_FUNCTION_34_10();
        }

        __break(1u);
        break;
      }

      v10 = v7;
      OUTLINED_FUNCTION_8_2();
      v12 = *(*(v0 + 56) + ((v10 << 9) | (8 * v11)));
      *v1 = v12;
      if (v9 == v6)
      {
        v15 = v12;
        v14 = v10;
        goto LABEL_17;
      }

      ++v1;
      v13 = v12;
      OUTLINED_FUNCTION_33_13();
    }

    __break(1u);
LABEL_21:
    __break(1u);
  }

  __break(1u);
}

void sub_1C70D24E8()
{
  OUTLINED_FUNCTION_16_19();
  if (!v4)
  {
    v1 = 0;
    goto LABEL_15;
  }

  if (!v1)
  {
LABEL_15:
    OUTLINED_FUNCTION_6_34(v0, v1, v2, v3);
    return;
  }

  if ((v1 & 0x8000000000000000) == 0)
  {
    OUTLINED_FUNCTION_74_5();
    while (1)
    {
      v10 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        break;
      }

      if (!v6)
      {
        while (1)
        {
          v11 = v7 + 1;
          if (__OFADD__(v7, 1))
          {
            break;
          }

          if (v11 >= v8)
          {
            v1 = v9;
            goto LABEL_15;
          }

          v6 = *(v3 + 8 * v11);
          ++v7;
          if (v6)
          {
            v7 = v11;
            goto LABEL_11;
          }
        }

        __break(1u);
        break;
      }

LABEL_11:
      v12 = __clz(__rbit64(v6));
      v6 &= v6 - 1;
      *v5++ = *(*(v2 + 56) + ((v7 << 8) | (4 * v12)));
      v9 = v10;
      if (v10 == v1)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  __break(1u);
}

void sub_1C70D25A8()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_0_47();
  if (!v4)
  {
    OUTLINED_FUNCTION_17_22();
LABEL_17:
    OUTLINED_FUNCTION_4_27(v13);
    OUTLINED_FUNCTION_25_0();
    return;
  }

  v5 = v3;
  if (!v3)
  {
    v13 = 0;
    goto LABEL_17;
  }

  if ((v3 & 0x8000000000000000) == 0)
  {
    OUTLINED_FUNCTION_3_34();
    while (v7 < v5)
    {
      v8 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        goto LABEL_21;
      }

      if (!v1)
      {
        while (!__OFADD__(v6, 1))
        {
          if (v6 + 1 >= v2)
          {
            OUTLINED_FUNCTION_28_10();
            goto LABEL_17;
          }

          OUTLINED_FUNCTION_34_10();
        }

        __break(1u);
        break;
      }

      v9 = v6;
      OUTLINED_FUNCTION_19_18();
      OUTLINED_FUNCTION_50_9();
      *v0 = v11;
      v0[1] = v10;
      v0[2] = v12;
      if (v8 == v5)
      {
        sub_1C75504FC();
        v13 = v9;
        goto LABEL_17;
      }

      v0 += 3;
      sub_1C75504FC();
      OUTLINED_FUNCTION_33_13();
    }

    __break(1u);
LABEL_21:
    __break(1u);
  }

  __break(1u);
}

void sub_1C70D2680()
{
  OUTLINED_FUNCTION_16_19();
  if (!v4)
  {
    v1 = 0;
    goto LABEL_15;
  }

  if (!v1)
  {
LABEL_15:
    OUTLINED_FUNCTION_6_34(v0, v1, v2, v3);
    return;
  }

  if ((v1 & 0x8000000000000000) == 0)
  {
    OUTLINED_FUNCTION_74_5();
    while (1)
    {
      v10 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        break;
      }

      if (!v6)
      {
        while (1)
        {
          v11 = v7 + 1;
          if (__OFADD__(v7, 1))
          {
            break;
          }

          if (v11 >= v8)
          {
            v1 = v9;
            goto LABEL_15;
          }

          v6 = *(v3 + 8 * v11);
          ++v7;
          if (v6)
          {
            v7 = v11;
            goto LABEL_11;
          }
        }

        __break(1u);
        break;
      }

LABEL_11:
      v12 = __clz(__rbit64(v6));
      v6 &= v6 - 1;
      *v5++ = *(*(v2 + 56) + ((v7 << 9) | (8 * v12)));
      v9 = v10;
      if (v10 == v1)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  __break(1u);
}

void sub_1C70D2740()
{
  OUTLINED_FUNCTION_48_2();
  OUTLINED_FUNCTION_18_15();
  OUTLINED_FUNCTION_2_34();
  v6 = v5 & v4;
  if (!v7)
  {
    OUTLINED_FUNCTION_17_22();
LABEL_17:
    OUTLINED_FUNCTION_9_25(v17);
    OUTLINED_FUNCTION_52_1();
    return;
  }

  v8 = v3;
  if (!v3)
  {
    v17 = 0;
    goto LABEL_17;
  }

  if ((v3 & 0x8000000000000000) == 0)
  {
    OUTLINED_FUNCTION_5_29();
    OUTLINED_FUNCTION_55_8();
    while (v10 < v8)
    {
      v11 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        goto LABEL_21;
      }

      if (!v6)
      {
        while (!__OFADD__(v9, 1))
        {
          if (v9 + 1 >= v2)
          {
            OUTLINED_FUNCTION_51_8();
            goto LABEL_17;
          }

          OUTLINED_FUNCTION_54_11();
        }

        __break(1u);
        break;
      }

      v12 = v9;
      v13 = __clz(__rbit64(v6)) | (v9 << 6);
      v14 = (*(v0 + 48) + 16 * v13);
      v15 = v14[1];
      v16 = *(*(v0 + 56) + 8 * v13);
      v6 &= v6 - 1;
      *v1 = *v14;
      v1[1] = v15;
      v1[2] = v16;
      if (v11 == v8)
      {
        sub_1C75504FC();
        sub_1C75504FC();
        v17 = v12;
        goto LABEL_17;
      }

      v1 += 3;
      sub_1C75504FC();
      sub_1C75504FC();
      OUTLINED_FUNCTION_53_13();
    }

    __break(1u);
LABEL_21:
    __break(1u);
  }

  __break(1u);
}

void sub_1C70D285C()
{
  OUTLINED_FUNCTION_33();
  v3 = v2;
  v5 = v4;
  v6 = OUTLINED_FUNCTION_41_11();
  v7 = type metadata accessor for PromptSuggestion(v6);
  v8 = OUTLINED_FUNCTION_18(v7);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_14_2();
  OUTLINED_FUNCTION_117();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_43_11(v10, v11, v12, v13, v14, v15, v16, v17, v25);
  OUTLINED_FUNCTION_2_34();
  v20 = v19 & v18;
  if (!v0)
  {
    OUTLINED_FUNCTION_17_22();
LABEL_17:
    OUTLINED_FUNCTION_61_8(v21);
    OUTLINED_FUNCTION_25_0();
    return;
  }

  if (!v5)
  {
    v21 = 0;
    goto LABEL_17;
  }

  if ((v5 & 0x8000000000000000) == 0)
  {
    OUTLINED_FUNCTION_7_23();
    OUTLINED_FUNCTION_71_3();
    v26 = v5;
    while (v22 < v5)
    {
      v23 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        goto LABEL_21;
      }

      if (!v20)
      {
        while (1)
        {
          v24 = v21 + 1;
          if (__OFADD__(v21, 1))
          {
            break;
          }

          if (v24 >= v1)
          {
            goto LABEL_17;
          }

          v20 = *(v3 + 64 + 8 * v24);
          ++v21;
          if (v20)
          {
            goto LABEL_12;
          }
        }

        __break(1u);
        break;
      }

      v24 = v21;
LABEL_12:
      OUTLINED_FUNCTION_44_1();
      sub_1C70D447C();
      sub_1C70D44D4();
      sub_1C70D44D4();
      v5 = v26;
      if (v23 == v26)
      {
        v21 = v24;
        goto LABEL_17;
      }

      OUTLINED_FUNCTION_87_8();
    }

    __break(1u);
LABEL_21:
    __break(1u);
  }

  __break(1u);
}

void sub_1C70D2A34()
{
  OUTLINED_FUNCTION_48_2();
  OUTLINED_FUNCTION_10_27();
  v4 = v3 + 64;
  OUTLINED_FUNCTION_2_34();
  v9 = v8 & v7;
  if (!v10)
  {
    OUTLINED_FUNCTION_17_22();
LABEL_18:
    *v0 = v1;
    v0[1] = v4;
    v0[2] = ~v6;
    v0[3] = v25;
    v0[4] = v9;
    OUTLINED_FUNCTION_52_1();
    return;
  }

  v11 = v5;
  if (!v5)
  {
    v25 = 0;
    goto LABEL_18;
  }

  if ((v5 & 0x8000000000000000) == 0)
  {
    OUTLINED_FUNCTION_5_29();
    v27 = v14;
    v16 = (v15 - v14) >> 6;
    while (1)
    {
      if (v13 >= v11)
      {
        goto LABEL_21;
      }

      v17 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        goto LABEL_22;
      }

      if (!v9)
      {
        while (!__OFADD__(v12, 1))
        {
          if (v12 + 1 >= v16)
          {
            OUTLINED_FUNCTION_28_10();
            goto LABEL_16;
          }

          OUTLINED_FUNCTION_34_10();
        }

        __break(1u);
LABEL_21:
        __break(1u);
LABEL_22:
        __break(1u);
        goto LABEL_23;
      }

      v18 = v12;
      OUTLINED_FUNCTION_19_18();
      v21 = *(v20 + 8 * v19);
      OUTLINED_FUNCTION_50_9();
      *v2 = v23;
      v2[1] = v22;
      v2[2] = v21;
      if (v17 == v11)
      {
        break;
      }

      v2 += 3;
      sub_1C75504FC();
      v24 = v21;
      OUTLINED_FUNCTION_33_13();
    }

    sub_1C75504FC();
    v26 = v21;
    v25 = v18;
LABEL_16:
    v6 = v27;
    goto LABEL_18;
  }

LABEL_23:
  __break(1u);
}

void sub_1C70D2B44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_223();
  OUTLINED_FUNCTION_68_8();
  if (v23)
  {
    a17 = 0;
    OUTLINED_FUNCTION_9_2();
    a15 = v20 + 56;
    OUTLINED_FUNCTION_30_14();
    a18 = v31 & v32;
    if (!v21)
    {
      goto LABEL_20;
    }
  }

  else
  {
    sub_1C755165C();
    type metadata accessor for Spatial3DCuration.WallpaperSuggester.SuggestionCandidate();
    sub_1C70D3EDC(&qword_1EC2167A8, type metadata accessor for Spatial3DCuration.WallpaperSuggester.SuggestionCandidate);
    OUTLINED_FUNCTION_111();
    sub_1C7550FEC();
    v20 = a14;
    if (!v21)
    {
LABEL_20:
      OUTLINED_FUNCTION_79_5();
      OUTLINED_FUNCTION_224_0();
      return;
    }
  }

  if (!v18)
  {
    goto LABEL_20;
  }

  if ((v18 & 0x8000000000000000) == 0)
  {
    OUTLINED_FUNCTION_83_2();
    while (1)
    {
      v27 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v20 < 0)
      {
        if (!sub_1C75516FC())
        {
          goto LABEL_20;
        }

        type metadata accessor for Spatial3DCuration.WallpaperSuggester.SuggestionCandidate();
        swift_dynamicCast();
        v30 = a13;
        if (!a13)
        {
          goto LABEL_20;
        }
      }

      else
      {
        if (!a18)
        {
          while (1)
          {
            v28 = a17 + 1;
            if (__OFADD__(a17, 1))
            {
              break;
            }

            if (v28 >= v22)
            {
              goto LABEL_20;
            }

            a18 = *(a15 + 8 * v28);
            ++a17;
            if (a18)
            {
              a17 = v28;
              goto LABEL_13;
            }
          }

          __break(1u);
          break;
        }

LABEL_13:
        OUTLINED_FUNCTION_88();
        v30 = *(*(v20 + 48) + ((a17 << 9) | (8 * v29)));
        if (!v30)
        {
          goto LABEL_20;
        }
      }

      *v21++ = v30;
      ++v19;
      if (v27 == v18)
      {
        goto LABEL_20;
      }
    }

    __break(1u);
  }

  __break(1u);
}

void sub_1C70D2D04(void *a1, void *a2, uint64_t a3, uint64_t a4, unint64_t *a5, uint64_t a6, unint64_t *a7)
{
  v8 = a4;
  if ((a4 & 0xC000000000000001) != 0)
  {
    sub_1C755165C();
    sub_1C6F65BE8(0, a5);
    sub_1C7080178(a7, a5);
    sub_1C7550FEC();
    v8 = v29;
    v12 = v30;
    v13 = v31;
    v14 = v32;
    v15 = v33;
  }

  else
  {
    v14 = 0;
    OUTLINED_FUNCTION_9_2();
    v12 = v8 + 56;
    OUTLINED_FUNCTION_30_14();
    v15 = v16 & v17;
  }

  v18 = a3;
  if (a2 && a3)
  {
    if ((a3 & 0x8000000000000000) == 0)
    {
      v26 = a5;
      v19 = 0;
      v25 = v13;
      v20 = (v13 + 64) >> 6;
      while (1)
      {
        v21 = v19 + 1;
        if (__OFADD__(v19, 1))
        {
          break;
        }

        if (v8 < 0)
        {
          if (!sub_1C75516FC() || (sub_1C6F65BE8(0, v26), swift_dynamicCast(), v24 = v28, v18 = a3, !v28))
          {
LABEL_23:
            v13 = v25;
            goto LABEL_24;
          }
        }

        else
        {
          if (!v15)
          {
            while (1)
            {
              v22 = v14 + 1;
              if (__OFADD__(v14, 1))
              {
                break;
              }

              if (v22 >= v20)
              {
                v15 = 0;
                goto LABEL_23;
              }

              v15 = *(v12 + 8 * v22);
              ++v14;
              if (v15)
              {
                v14 = v22;
                goto LABEL_15;
              }
            }

            __break(1u);
            break;
          }

LABEL_15:
          OUTLINED_FUNCTION_44_1();
          v24 = *(*(v8 + 48) + ((v14 << 9) | (8 * v23)));
          if (!v24)
          {
            goto LABEL_23;
          }
        }

        *a2++ = v24;
        ++v19;
        if (v21 == v18)
        {
          goto LABEL_23;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {
LABEL_24:
    *a1 = v8;
    a1[1] = v12;
    a1[2] = v13;
    a1[3] = v14;
    a1[4] = v15;
  }
}

void sub_1C70D2EEC()
{
  OUTLINED_FUNCTION_16_19();
  if (!v4)
  {
    v1 = 0;
    goto LABEL_15;
  }

  if (!v1)
  {
LABEL_15:
    OUTLINED_FUNCTION_6_34(v0, v1, v2, v3);
    return;
  }

  if ((v1 & 0x8000000000000000) == 0)
  {
    OUTLINED_FUNCTION_74_5();
    while (!__OFADD__(v9, 1))
    {
      if (!v6)
      {
        while (1)
        {
          v10 = v7 + 1;
          if (__OFADD__(v7, 1))
          {
            break;
          }

          if (v10 >= v8)
          {
            v1 = v9;
            goto LABEL_15;
          }

          ++v7;
          if (*(v3 + 8 * v10))
          {
            goto LABEL_10;
          }
        }

        __break(1u);
        break;
      }

LABEL_10:
      OUTLINED_FUNCTION_72_6(v0, v5, v1, v2);
      if (v11)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  __break(1u);
}

void sub_1C70D2F94()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_0_47();
  if (!v4)
  {
    OUTLINED_FUNCTION_17_22();
LABEL_17:
    OUTLINED_FUNCTION_4_27(v11);
    OUTLINED_FUNCTION_25_0();
    return;
  }

  v5 = v3;
  if (!v3)
  {
    v11 = 0;
    goto LABEL_17;
  }

  if ((v3 & 0x8000000000000000) == 0)
  {
    OUTLINED_FUNCTION_3_34();
    while (v7 < v5)
    {
      if (__OFADD__(v7, 1))
      {
        goto LABEL_21;
      }

      if (!v1)
      {
        while (!__OFADD__(v6, 1))
        {
          if (v6 + 1 >= v2)
          {
            OUTLINED_FUNCTION_28_10();
            goto LABEL_17;
          }

          OUTLINED_FUNCTION_34_10();
        }

        __break(1u);
        break;
      }

      v8 = v6;
      OUTLINED_FUNCTION_27_17();
      OUTLINED_FUNCTION_12_24(v9);
      if (v10)
      {
        sub_1C75504FC();
        v11 = v8;
        goto LABEL_17;
      }

      v0 += 16;
      sub_1C75504FC();
      OUTLINED_FUNCTION_33_13();
    }

    __break(1u);
LABEL_21:
    __break(1u);
  }

  __break(1u);
}

void sub_1C70D3060()
{
  OUTLINED_FUNCTION_18_15();
  OUTLINED_FUNCTION_2_34();
  v6 = v5 & v4;
  if (!v7)
  {
    OUTLINED_FUNCTION_17_22();
LABEL_17:
    OUTLINED_FUNCTION_9_25(v15);
    return;
  }

  v8 = v3;
  if (!v3)
  {
    v15 = 0;
    goto LABEL_17;
  }

  if ((v3 & 0x8000000000000000) == 0)
  {
    OUTLINED_FUNCTION_5_29();
    OUTLINED_FUNCTION_55_8();
    while (v10 < v8)
    {
      v11 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        goto LABEL_21;
      }

      if (!v6)
      {
        while (!__OFADD__(v9, 1))
        {
          if (v9 + 1 >= v2)
          {
            OUTLINED_FUNCTION_51_8();
            goto LABEL_17;
          }

          OUTLINED_FUNCTION_54_11();
        }

        __break(1u);
        break;
      }

      v12 = v9;
      OUTLINED_FUNCTION_15_24();
      v14 = (*(v0 + 48) + 192 * v13);
      memcpy(__dst, v14, 0xC0uLL);
      memmove(v1, v14, 0xC0uLL);
      if (v11 == v8)
      {
        sub_1C7080654(__dst, v16);
        v15 = v12;
        goto LABEL_17;
      }

      v1 += 192;
      sub_1C7080654(__dst, v16);
      OUTLINED_FUNCTION_53_13();
    }

    __break(1u);
LABEL_21:
    __break(1u);
  }

  __break(1u);
}

void sub_1C70D3198()
{
  OUTLINED_FUNCTION_75_5();
  if (!v4)
  {
    v1 = 0;
    goto LABEL_15;
  }

  if (!v1)
  {
LABEL_15:
    OUTLINED_FUNCTION_6_34(v0, v1, v2, v3);
    return;
  }

  if ((v1 & 0x8000000000000000) == 0)
  {
    OUTLINED_FUNCTION_74_5();
    while (1)
    {
      v10 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        break;
      }

      if (!v6)
      {
        while (1)
        {
          v11 = v7 + 1;
          if (__OFADD__(v7, 1))
          {
            break;
          }

          if (v11 >= v8)
          {
            v1 = v9;
            goto LABEL_15;
          }

          v6 = *(v3 + 8 * v11);
          ++v7;
          if (v6)
          {
            v7 = v11;
            goto LABEL_11;
          }
        }

        __break(1u);
        break;
      }

LABEL_11:
      v12 = __clz(__rbit64(v6));
      v6 &= v6 - 1;
      *v5++ = *(*(v2 + 48) + (v12 | (v7 << 6)));
      v9 = v10;
      if (v10 == v1)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  __break(1u);
}

void sub_1C70D3254(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_223();
  OUTLINED_FUNCTION_68_8();
  if (v23)
  {
    a17 = 0;
    OUTLINED_FUNCTION_9_2();
    a15 = v20 + 56;
    OUTLINED_FUNCTION_30_14();
    a18 = v30 & v31;
    if (!v21)
    {
      goto LABEL_20;
    }
  }

  else
  {
    sub_1C755165C();
    type metadata accessor for MusicKeywordCompletion();
    sub_1C70D3EDC(&qword_1EDD09B10, type metadata accessor for MusicKeywordCompletion);
    OUTLINED_FUNCTION_111();
    sub_1C7550FEC();
    v20 = a14;
    if (!v21)
    {
LABEL_20:
      OUTLINED_FUNCTION_79_5();
      OUTLINED_FUNCTION_224_0();
      return;
    }
  }

  if (!v18)
  {
    goto LABEL_20;
  }

  if ((v18 & 0x8000000000000000) == 0)
  {
    OUTLINED_FUNCTION_83_2();
    while (1)
    {
      v27 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v20 < 0)
      {
        if (!sub_1C75516FC())
        {
          goto LABEL_20;
        }

        type metadata accessor for MusicKeywordCompletion();
        swift_dynamicCast();
        v29 = a13;
        if (!a13)
        {
          goto LABEL_20;
        }
      }

      else
      {
        if (!a18)
        {
          while (1)
          {
            v28 = a17 + 1;
            if (__OFADD__(a17, 1))
            {
              break;
            }

            if (v28 >= v22)
            {
              goto LABEL_20;
            }

            a18 = *(a15 + 8 * v28);
            ++a17;
            if (a18)
            {
              a17 = v28;
              goto LABEL_13;
            }
          }

          __break(1u);
          break;
        }

LABEL_13:
        OUTLINED_FUNCTION_88();

        if (!v29)
        {
          goto LABEL_20;
        }
      }

      *v21++ = v29;
      ++v19;
      if (v27 == v18)
      {
        goto LABEL_20;
      }
    }

    __break(1u);
  }

  __break(1u);
}

void sub_1C70D33F8()
{
  OUTLINED_FUNCTION_33();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2168B0);
  OUTLINED_FUNCTION_3_0();
  v32 = v8;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_14_2();
  v34 = v10;
  OUTLINED_FUNCTION_117();
  MEMORY[0x1EEE9AC00](v11);
  v33 = &v29 - v12;
  v36 = v1;
  v13 = v1 + 64;
  OUTLINED_FUNCTION_2_34();
  v17 = v16 & v15;
  if (!v5)
  {
    OUTLINED_FUNCTION_17_22();
LABEL_17:
    *v7 = v36;
    v7[1] = v13;
    OUTLINED_FUNCTION_78_6(v18);
    OUTLINED_FUNCTION_25_0();
    return;
  }

  if (!v3)
  {
    v18 = 0;
    goto LABEL_17;
  }

  if ((v3 & 0x8000000000000000) == 0)
  {
    v29 = v14;
    v30 = v7;
    OUTLINED_FUNCTION_7_23();
    v22 = (v20 - v21) >> 6;
    v31 = v3;
    while (1)
    {
      if (v19 >= v3)
      {
        goto LABEL_20;
      }

      v23 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        goto LABEL_21;
      }

      if (!v17)
      {
        while (1)
        {
          v24 = v18 + 1;
          if (__OFADD__(v18, 1))
          {
            break;
          }

          if (v24 >= v22)
          {
            goto LABEL_15;
          }

          v17 = *(v13 + 8 * v24);
          ++v18;
          if (v17)
          {
            goto LABEL_12;
          }
        }

        __break(1u);
LABEL_20:
        __break(1u);
LABEL_21:
        __break(1u);
        goto LABEL_22;
      }

      v24 = v18;
LABEL_12:
      OUTLINED_FUNCTION_84_5();
      v26 = v25 | (v24 << 6);
      v27 = v36;
      type metadata accessor for Hastings.Feature();
      v28 = v34;
      sub_1C70D447C();
      *(v28 + *(v35 + 48)) = *(*(v27 + 56) + 8 * v26);
      sub_1C70D4424();
      sub_1C70D4424();
      v3 = v31;
      if (v23 == v31)
      {
        break;
      }

      v5 += *(v32 + 72);
      sub_1C75504FC();
      v19 = v23;
      v18 = v24;
    }

    sub_1C75504FC();
    v18 = v24;
LABEL_15:
    v7 = v30;
    goto LABEL_17;
  }

LABEL_22:
  __break(1u);
}

void sub_1C70D364C()
{
  OUTLINED_FUNCTION_16_19();
  if (!v1)
  {
    v2 = 0;
    goto LABEL_15;
  }

  if (!v2)
  {
LABEL_15:
    OUTLINED_FUNCTION_6_34(v0, v2, v3, v4);
    return;
  }

  if ((v2 & 0x8000000000000000) == 0)
  {
    v7 = 0;
    v8 = 0;
    while (1)
    {
      v9 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        break;
      }

      if (!v6)
      {
        while (1)
        {
          v10 = v8 + 1;
          if (__OFADD__(v8, 1))
          {
            break;
          }

          if (v10 >= ((63 - v5) >> 6))
          {
            v2 = v7;
            goto LABEL_15;
          }

          v6 = *(v4 + 8 * v10);
          ++v8;
          if (v6)
          {
            v8 = v10;
            goto LABEL_11;
          }
        }

        __break(1u);
        break;
      }

LABEL_11:
      v11 = __clz(__rbit64(v6)) | (v8 << 6);
      v12 = *(*(v3 + 48) + 2 * v11);
      v13 = *(*(v3 + 56) + 8 * v11);
      v6 &= v6 - 1;
      *v1 = v12;
      *(v1 + 8) = v13;
      v1 += 16;
      v7 = v9;
      if (v9 == v2)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  __break(1u);
}

void sub_1C70D3714()
{
  OUTLINED_FUNCTION_16_19();
  if (!v1)
  {
    v2 = 0;
    goto LABEL_15;
  }

  if (!v2)
  {
LABEL_15:
    OUTLINED_FUNCTION_6_34(v0, v2, v3, v4);
    return;
  }

  if ((v2 & 0x8000000000000000) == 0)
  {
    v7 = 0;
    v8 = 0;
    while (1)
    {
      v9 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        break;
      }

      if (!v6)
      {
        while (1)
        {
          v10 = v8 + 1;
          if (__OFADD__(v8, 1))
          {
            break;
          }

          if (v10 >= ((63 - v5) >> 6))
          {
            v2 = v7;
            goto LABEL_15;
          }

          v6 = *(v4 + 8 * v10);
          ++v8;
          if (v6)
          {
            v8 = v10;
            goto LABEL_11;
          }
        }

        __break(1u);
        break;
      }

LABEL_11:
      v11 = __clz(__rbit64(v6)) | (v8 << 6);
      v12 = *(*(v3 + 48) + v11);
      v13 = *(*(v3 + 56) + 8 * v11);
      v6 &= v6 - 1;
      *v1 = v12;
      *(v1 + 8) = v13;
      v1 += 16;
      v7 = v9;
      if (v9 == v2)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  __break(1u);
}

void sub_1C70D37DC()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_0_47();
  if (!v4)
  {
    OUTLINED_FUNCTION_17_22();
LABEL_17:
    OUTLINED_FUNCTION_4_27(v12);
    OUTLINED_FUNCTION_25_0();
    return;
  }

  v5 = v3;
  if (!v3)
  {
    v12 = 0;
    goto LABEL_17;
  }

  if ((v3 & 0x8000000000000000) == 0)
  {
    OUTLINED_FUNCTION_3_34();
    while (v7 < v5)
    {
      v8 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        goto LABEL_21;
      }

      if (!v1)
      {
        while (!__OFADD__(v6, 1))
        {
          if (v6 + 1 >= v2)
          {
            OUTLINED_FUNCTION_28_10();
            goto LABEL_17;
          }

          OUTLINED_FUNCTION_34_10();
        }

        __break(1u);
        break;
      }

      v9 = v6;
      OUTLINED_FUNCTION_27_17();
      OUTLINED_FUNCTION_50_9();
      *v0 = v11;
      v0[1] = v10;
      if (v8 == v5)
      {
        sub_1C75504FC();
        v12 = v9;
        goto LABEL_17;
      }

      v0 += 2;
      sub_1C75504FC();
      OUTLINED_FUNCTION_33_13();
    }

    __break(1u);
LABEL_21:
    __break(1u);
  }

  __break(1u);
}

void sub_1C70D38C0()
{
  OUTLINED_FUNCTION_33();
  v2 = v1 + 64;
  OUTLINED_FUNCTION_2_34();
  v9 = v8 & v7;
  if (!v4)
  {
    v12 = 0;
LABEL_17:
    OUTLINED_FUNCTION_86_5(v3, v6, v12);
    OUTLINED_FUNCTION_25_0();
    return;
  }

  v10 = v5;
  if (!v5)
  {
    v12 = 0;
    goto LABEL_17;
  }

  if ((v5 & 0x8000000000000000) == 0)
  {
    v11 = v4;
    v23 = v3;
    OUTLINED_FUNCTION_7_23();
    OUTLINED_FUNCTION_71_3();
    v24 = v10;
    while (v13 < v10)
    {
      v14 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        goto LABEL_21;
      }

      if (!v9)
      {
        while (1)
        {
          v15 = v12 + 1;
          if (__OFADD__(v12, 1))
          {
            break;
          }

          if (v15 >= v0)
          {
            v3 = v23;
            goto LABEL_17;
          }

          v9 = *(v2 + 8 * v15);
          ++v12;
          if (v9)
          {
            goto LABEL_12;
          }
        }

        __break(1u);
        break;
      }

      v15 = v12;
LABEL_12:
      v16 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      v17 = v16 | (v15 << 6);
      v18 = v6;
      v19 = (*(v6 + 48) + 16 * v17);
      v20 = *v19;
      v21 = v19[1];
      v22 = (*(v6 + 56) + (v17 << 7));
      memcpy(__dst, v22, sizeof(__dst));
      memcpy(v27, v22, sizeof(v27));
      *v11 = v20;
      v11[1] = v21;
      memcpy(v11 + 2, v27, 0x80uLL);
      v10 = v24;
      if (v14 == v24)
      {
        sub_1C75504FC();
        sub_1C70D3E80(__dst, v25);
        v12 = v15;
        v3 = v23;
        v6 = v18;
        goto LABEL_17;
      }

      v11 += 18;
      sub_1C75504FC();
      sub_1C70D3E80(__dst, v25);
      v13 = v14;
      v12 = v15;
      v6 = v18;
    }

    __break(1u);
LABEL_21:
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_1C70D3A54(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2171E8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1C70D3AF8(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, uint64_t a5)
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    result = 0;
    goto LABEL_8;
  }

  if ((a4 & 0x2000000000000000) != 0)
  {
    v12 = HIBYTE(a4) & 0xF;
    v15[0] = a3;
    v15[1] = a4 & 0xFFFFFFFFFFFFFFLL;
    v11 = v15;
  }

  else if ((a3 & 0x1000000000000000) != 0)
  {
    v11 = ((a4 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v12 = a3 & 0xFFFFFFFFFFFFLL;
  }

  else
  {
    v11 = sub_1C75518FC();
  }

  result = sub_1C70D3F78(v11, v12, a1, a2, a3, a4, a5);
  if (!v5)
  {
    v17 = v14 & 1;
LABEL_8:
    v16 = (a4 & 0x1000000000000000) != 0;
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_18PhotosIntelligence13LLMAssetCacheC5ErrorO(uint64_t a1)
{
  if ((*(a1 + 16) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 16) & 3;
  }
}

unint64_t sub_1C70D3E2C()
{
  result = qword_1EC2171F8;
  if (!qword_1EC2171F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2171F8);
  }

  return result;
}

uint64_t sub_1C70D3EDC(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1C70D3F24()
{
  result = qword_1EC217338;
  if (!qword_1EC217338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC217338);
  }

  return result;
}

uint64_t sub_1C70D3F78(uint64_t result, uint64_t a2, unint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, uint64_t a7)
{
  v11 = a3;
  v12 = result;
  v13 = (a5 >> 59) & 1;
  if ((a6 & 0x1000000000000000) == 0)
  {
    LOBYTE(v13) = 1;
  }

  v14 = 4 << v13;
  v15 = a3 & 0xC;
  v16 = a3;
  if (v15 == 4 << v13)
  {
    result = sub_1C7491B74(a3, a5, a6);
    v16 = result;
  }

  v17 = HIBYTE(a6) & 0xF;
  if ((a6 & 0x1000000000000000) != 0)
  {
    v19 = a5 & 0xFFFFFFFFFFFFLL;
    if ((a6 & 0x2000000000000000) != 0)
    {
      v19 = HIBYTE(a6) & 0xF;
    }

    if (v19 < v16 >> 16)
    {
      goto LABEL_96;
    }

    result = sub_1C75508CC();
    v18 = result;
    v17 = HIBYTE(a6) & 0xF;
  }

  else
  {
    v18 = v16 >> 16;
  }

  if (v15 == v14)
  {
    v20 = v17;
    result = sub_1C7491B74(v11, a5, a6);
    v17 = v20;
    v11 = result;
  }

  if ((a4 & 0xC) == v14)
  {
    v21 = a4;
    v22 = v17;
    result = sub_1C7491B74(v21, a5, a6);
    v17 = v22;
    a4 = result;
    if ((a6 & 0x1000000000000000) == 0)
    {
      goto LABEL_11;
    }
  }

  else if ((a6 & 0x1000000000000000) == 0)
  {
LABEL_11:
    result = (a4 >> 16) - (v11 >> 16);
    goto LABEL_22;
  }

  v23 = a5 & 0xFFFFFFFFFFFFLL;
  if ((a6 & 0x2000000000000000) != 0)
  {
    v23 = v17;
  }

  if (v23 < v11 >> 16)
  {
    goto LABEL_92;
  }

  if (v23 < a4 >> 16)
  {
LABEL_93:
    __break(1u);
    goto LABEL_94;
  }

  result = sub_1C75508CC();
LABEL_22:
  v24 = v18 + result;
  if (__OFADD__(v18, result))
  {
    __break(1u);
    goto LABEL_91;
  }

  if (v24 < v18)
  {
LABEL_91:
    __break(1u);
LABEL_92:
    __break(1u);
    goto LABEL_93;
  }

  v25 = (v18 + v12);
  if (!v12)
  {
    v25 = 0;
  }

  v26 = *v25;
  if (v26 == 43)
  {
    if (result >= 1)
    {
      if (result != 1)
      {
        v37 = a7 + 48;
        v38 = a7 + 55;
        v39 = a7 + 87;
        if (a7 > 10)
        {
          v37 = 58;
        }

        else
        {
          v39 = 97;
          v38 = 65;
        }

        if (v25)
        {
          v30 = 0;
          v40 = v25 + 1;
          v41 = result - 1;
          do
          {
            v42 = *v40;
            if (v42 < 0x30 || v42 >= v37)
            {
              if (v42 < 0x41 || v42 >= v38)
              {
                v35 = 0;
                if (v42 < 0x61 || v42 >= v39)
                {
                  return v35;
                }

                v43 = -87;
              }

              else
              {
                v43 = -55;
              }
            }

            else
            {
              v43 = -48;
            }

            v44 = v30 * a7;
            if ((v30 * a7) >> 64 != (v30 * a7) >> 63)
            {
              return 0;
            }

            v30 = v44 + (v42 + v43);
            if (__OFADD__(v44, (v42 + v43)))
            {
              return 0;
            }

            ++v40;
            --v41;
          }

          while (v41);
          return v30;
        }

        return 0;
      }

      return 0;
    }

    goto LABEL_95;
  }

  if (v26 != 45)
  {
    if (v24 != v18)
    {
      v45 = a7 + 48;
      v46 = a7 + 55;
      v47 = a7 + 87;
      if (a7 > 10)
      {
        v45 = 58;
      }

      else
      {
        v47 = 97;
        v46 = 65;
      }

      if (v25)
      {
        v30 = 0;
        while (1)
        {
          v48 = *v25;
          if (v48 < 0x30 || v48 >= v45)
          {
            if (v48 < 0x41 || v48 >= v46)
            {
              v35 = 0;
              if (v48 < 0x61 || v48 >= v47)
              {
                return v35;
              }

              v49 = -87;
            }

            else
            {
              v49 = -55;
            }
          }

          else
          {
            v49 = -48;
          }

          v50 = v30 * a7;
          if ((v30 * a7) >> 64 != (v30 * a7) >> 63)
          {
            return 0;
          }

          v30 = v50 + (v48 + v49);
          if (__OFADD__(v50, (v48 + v49)))
          {
            return 0;
          }

          ++v25;
          if (!--result)
          {
            return v30;
          }
        }
      }

      return 0;
    }

    return 0;
  }

  if (result >= 1)
  {
    if (result != 1)
    {
      v27 = a7 + 48;
      v28 = a7 + 55;
      v29 = a7 + 87;
      if (a7 > 10)
      {
        v27 = 58;
      }

      else
      {
        v29 = 97;
        v28 = 65;
      }

      if (v25)
      {
        v30 = 0;
        v31 = v25 + 1;
        v32 = result - 1;
        while (1)
        {
          v33 = *v31;
          if (v33 < 0x30 || v33 >= v27)
          {
            if (v33 < 0x41 || v33 >= v28)
            {
              v35 = 0;
              if (v33 < 0x61 || v33 >= v29)
              {
                return v35;
              }

              v34 = -87;
            }

            else
            {
              v34 = -55;
            }
          }

          else
          {
            v34 = -48;
          }

          v36 = v30 * a7;
          if ((v30 * a7) >> 64 != (v30 * a7) >> 63)
          {
            return 0;
          }

          v30 = v36 - (v33 + v34);
          if (__OFSUB__(v36, (v33 + v34)))
          {
            return 0;
          }

          ++v31;
          if (!--v32)
          {
            return v30;
          }
        }
      }

      return 0;
    }

    return 0;
  }

LABEL_94:
  __break(1u);
LABEL_95:
  __break(1u);
LABEL_96:
  __break(1u);
  return result;
}

uint64_t sub_1C70D43B4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217340);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C70D4424()
{
  OUTLINED_FUNCTION_115();
  __swift_instantiateConcreteTypeFromMangledNameV2(v2);
  OUTLINED_FUNCTION_84_0();
  (*(v3 + 32))(v0, v1);
  return v0;
}

uint64_t sub_1C70D447C()
{
  OUTLINED_FUNCTION_115();
  v2(0);
  OUTLINED_FUNCTION_84_0();
  (*(v3 + 16))(v0, v1);
  return v0;
}

uint64_t sub_1C70D44D4()
{
  OUTLINED_FUNCTION_115();
  v2(0);
  OUTLINED_FUNCTION_84_0();
  (*(v3 + 32))(v0, v1);
  return v0;
}

__n128 OUTLINED_FUNCTION_35_9@<Q0>(uint64_t a1@<X8>)
{
  v4 = *(v1 + 48) + ((v3 << 12) | (a1 << 6));
  result = *v4;
  v6 = *(v4 + 16);
  v7 = *(v4 + 48);
  *(v2 + 32) = *(v4 + 32);
  *(v2 + 48) = v7;
  *v2 = result;
  *(v2 + 16) = v6;
  return result;
}

uint64_t OUTLINED_FUNCTION_61_8@<X0>(uint64_t a1@<X8>)
{
  *v2 = v5;
  v2[1] = v6;
  v2[2] = ~v1;
  v2[3] = a1;
  v2[4] = v4;
  return v3;
}

uint64_t OUTLINED_FUNCTION_77_5@<X0>(uint64_t a1@<X8>)
{
  result = *(a1 + 32);
  *v4 = v1;
  *(v4 + 8) = v5;
  *(v4 + 16) = v2;
  *(v4 + 24) = v3;
  return result;
}

uint64_t OUTLINED_FUNCTION_78_6@<X0>(uint64_t a1@<X8>)
{
  v2[2] = v1;
  v2[3] = a1;
  v2[4] = v4;
  return v3;
}

uint64_t OUTLINED_FUNCTION_79_5()
{
  *v3 = v2;
  v3[1] = v5;
  v3[2] = v0;
  v3[3] = v4;
  v3[4] = v6;
  return v1;
}

void *OUTLINED_FUNCTION_86_5@<X0>(void *result@<X0>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  *result = a2;
  result[1] = v4;
  result[2] = ~v3;
  result[3] = a3;
  result[4] = v5;
  return result;
}

uint64_t OUTLINED_FUNCTION_94_6(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, int a13, char a14)
{

  return sub_1C6F9ED50(v15, v14, a14 & 1);
}

_BYTE *sub_1C70D47A0(_BYTE *result, int a2, int a3)
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

uint64_t sub_1C70D4850()
{
  v0 = sub_1C754FF1C();
  __swift_allocate_value_buffer(v0, qword_1EC217388);
  __swift_project_value_buffer(v0, qword_1EC217388);
  return sub_1C754FEFC();
}

uint64_t static EventFetcher.logger.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EC213D98 != -1)
  {
    swift_once();
  }

  v2 = sub_1C754FF1C();
  v3 = __swift_project_value_buffer(v2, qword_1EC217388);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

id static EventFetcher.basePredicate(using:)()
{
  sub_1C6F65BE8(0, &qword_1EDD0FAD0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC218F80);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1C75604F0;
  v1 = MEMORY[0x1E69E6158];
  *(v0 + 56) = MEMORY[0x1E69E6158];
  v2 = sub_1C6F6D524();
  *(v0 + 64) = v2;
  strcpy((v0 + 32), "pendingState");
  *(v0 + 45) = 0;
  *(v0 + 46) = -5120;
  v3 = MEMORY[0x1E69E7660];
  *(v0 + 96) = MEMORY[0x1E69E75F8];
  *(v0 + 104) = v3;
  *(v0 + 72) = 2;
  v4 = sub_1C755112C();
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1C75604F0;
  *(v5 + 56) = v1;
  *(v5 + 64) = v2;
  v6 = MEMORY[0x1E69E6530];
  strcpy((v5 + 32), "featuredState");
  *(v5 + 46) = -4864;
  v7 = MEMORY[0x1E69E65A8];
  *(v5 + 96) = v6;
  *(v5 + 104) = v7;
  *(v5 + 72) = 2;
  v8 = sub_1C755112C();
  sub_1C6F65BE8(0, &qword_1EDD0FA80);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC218F70);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1C7564A90;
  *(v9 + 32) = v4;
  *(v9 + 40) = v8;
  return sub_1C6F6E5C4();
}

id static EventFetcher.fetchCollections(using:)(uint64_t a1)
{
  v2 = *(a1 + 24);
  [v2 setIncludeLocalMemories_];
  sub_1C7065C64(a1);
  v3 = [objc_opt_self() fetchMemoriesWithOptions_];

  return v3;
}

uint64_t sub_1C70D4C44(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000012 && 0x80000001C759D980 == a2;
  if (v3 || (sub_1C7551DBC() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000014 && 0x80000001C759D9A0 == a2;
    if (v6 || (sub_1C7551DBC() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000011 && 0x80000001C759D9C0 == a2;
      if (v7 || (sub_1C7551DBC() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0xD000000000000010 && 0x80000001C759D9E0 == a2)
      {

        return 3;
      }

      else
      {
        v9 = sub_1C7551DBC();

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

unint64_t sub_1C70D4DA4(char a1)
{
  result = 0xD000000000000012;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000014;
      break;
    case 2:
      result = 0xD000000000000011;
      break;
    case 3:
      result = 0xD000000000000010;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1C70D4E28(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2173C8);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C70D6168();
  sub_1C755200C();
  v8[15] = 0;
  type metadata accessor for StoryMusicCuration();
  sub_1C70D61BC(&unk_1EDD0A748, type metadata accessor for StoryMusicCuration);
  sub_1C7551CBC();
  if (!v1)
  {
    type metadata accessor for MusicCurationDiagnostics(0);
    v8[14] = 1;
    sub_1C7551C7C();
    v8[13] = 2;
    sub_1C7551C7C();
    v8[12] = 3;
    sub_1C7551C7C();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_1C70D5048@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v29 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2173A0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v28 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2173D0);
  v30 = *(v7 - 8);
  v31 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v28 - v8;
  v10 = type metadata accessor for MusicCurationDiagnostics(0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C70D6168();
  sub_1C7551FFC();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v13 = v30;
  v14 = v12;
  type metadata accessor for StoryMusicCuration();
  v35 = 0;
  sub_1C70D61BC(&qword_1EC2173D8, type metadata accessor for StoryMusicCuration);
  v15 = v31;
  sub_1C7551BAC();
  sub_1C70D5CD4(v6, v14);
  v34 = 1;
  v16 = sub_1C7551B6C();
  v17 = (v14 + v10[5]);
  *v17 = v16;
  v17[1] = v18;
  v33 = 2;
  v19 = sub_1C7551B6C();
  v20 = (v14 + v10[6]);
  *v20 = v19;
  v20[1] = v21;
  v32 = 3;
  v22 = sub_1C7551B6C();
  v23 = v9;
  v25 = v24;
  (*(v13 + 8))(v23, v15);
  v26 = (v14 + v10[7]);
  *v26 = v22;
  v26[1] = v25;
  sub_1C70D6204(v14, v29);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_1C70D5D98(v14, type metadata accessor for MusicCurationDiagnostics);
}

uint64_t sub_1C70D5424@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C70D4C44(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C70D544C(uint64_t a1)
{
  v2 = sub_1C70D6168();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C70D5488(uint64_t a1)
{
  v2 = sub_1C70D6168();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t MusicCurationDiagnosticsGenerator.__allocating_init(storyGenerationDiagnosticContext:)(uint64_t a1)
{
  v2 = swift_allocObject();
  MusicCurationDiagnosticsGenerator.init(storyGenerationDiagnosticContext:)(a1);
  return v2;
}

uint64_t MusicCurationDiagnosticsGenerator.init(storyGenerationDiagnosticContext:)(uint64_t a1)
{
  swift_defaultActor_initialize();
  sub_1C754FEFC();
  *(v1 + OBJC_IVAR____TtC18PhotosIntelligence33MusicCurationDiagnosticsGenerator_storyGenerationDiagnosticContext) = a1;
  return v1;
}

void sub_1C70D55CC(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for MusicCurationDiagnostics(0);
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v52 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for StoryMusicCuration();
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v52 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2173A0);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v52 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v59 = &v52 - v16;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v52 - v18;
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v52 - v21;
  if (PFOSVariantHasInternalDiagnostics())
  {
    v58 = OUTLINED_FUNCTION_2_35();
    sub_1C70D5BFC(v58, v19);
    if (__swift_getEnumTagSinglePayload(v19, 1, v8) == 1)
    {
      sub_1C70D5C6C(v19);
      v54 = a1 + 1;
      v55 = 0x80000001C759D860;
      v23 = 1;
      v56 = 0xD000000000000018;
      v57 = 0x80000001C759D840;
    }

    else
    {
      v53 = v22;
      sub_1C70D5DF0(v19, v11);
      v24 = StoryMusicCuration.flexMusicStoryRecipeKeySong()();
      if (v1)
      {
        v25 = sub_1C754FEEC();
        v26 = sub_1C755119C();
        if (os_log_type_enabled(v25, v26))
        {
          *swift_slowAlloc() = 0;
          OUTLINED_FUNCTION_3_35(&dword_1C6F5C000, v27, v28, "Failed to get flexMusicKeySong");
          v29 = OUTLINED_FUNCTION_2_35();
          MEMORY[0x1CCA5F8E0](v29, -1, -1);
        }

        v57 = 0x80000001C759D840;
        v2 = 0;
        v56 = 0xD000000000000018;
      }

      else
      {
        v30 = [v24 diagnosticDescription];
        swift_unknownObjectRelease();
        v56 = sub_1C755068C();
        v57 = v31;
      }

      v32 = [StoryMusicCuration.appleMusicStoryRecipeKeySong()() diagnosticDescription];
      swift_unknownObjectRelease();
      v54 = sub_1C755068C();
      v55 = v33;

      v22 = v53;
      sub_1C70D5DF0(v11, v53);
      v23 = 0;
    }

    __swift_storeEnumTagSinglePayload(v22, v23, 1, v8);
    v34 = v22;
    v35 = v59;
    sub_1C70D5BFC(v22, v59);
    sub_1C70D5BFC(v58, v14);
    if (__swift_getEnumTagSinglePayload(v14, 1, v8) == 1)
    {
      sub_1C70D5C6C(v14);
      v36 = 0;
      v37 = 0;
    }

    else
    {
      v36 = StoryMusicCuration.description.getter();
      v37 = v38;
      sub_1C70D5D98(v14, type metadata accessor for StoryMusicCuration);
    }

    sub_1C70D5CD4(v35, v7);
    v39 = &v7[v4[5]];
    *v39 = v36;
    v39[1] = v37;
    v40 = &v7[v4[6]];
    v41 = v55;
    *v40 = v54;
    v40[1] = v41;
    v42 = &v7[v4[7]];
    v43 = v57;
    *v42 = v56;
    v42[1] = v43;
    sub_1C754DBCC();
    swift_allocObject();
    sub_1C754DBBC();
    sub_1C754DB9C();
    sub_1C70D61BC(&qword_1EDD09750, type metadata accessor for MusicCurationDiagnostics);
    v44 = sub_1C754DBAC();
    if (v2)
    {

      OUTLINED_FUNCTION_0_49();
      sub_1C70D5C6C(v34);
      swift_getErrorValue();
      v46 = sub_1C7551EAC();
      v48 = v47;
      sub_1C70D5D44();
      swift_allocError();
      *v49 = v46;
      v49[1] = v48;
      swift_willThrow();
    }

    else
    {
      v50 = v44;
      v51 = v45;
      sub_1C7161C08();
      sub_1C6FC1640(v50, v51);

      OUTLINED_FUNCTION_0_49();
      sub_1C70D5C6C(v34);
    }
  }
}

uint64_t sub_1C70D5BFC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2173A0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C70D5C6C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2173A0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1C70D5CD4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2173A0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1C70D5D44()
{
  result = qword_1EC2173A8;
  if (!qword_1EC2173A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2173A8);
  }

  return result;
}

uint64_t sub_1C70D5D98(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_12();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_1C70D5DF0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StoryMusicCuration();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t MusicCurationDiagnosticsGenerator.deinit()
{
  v1 = OBJC_IVAR____TtC18PhotosIntelligence33MusicCurationDiagnosticsGenerator_logger;
  sub_1C754FF1C();
  OUTLINED_FUNCTION_12();
  (*(v2 + 8))(v0 + v1);

  swift_defaultActor_destroy();
  return v0;
}

uint64_t MusicCurationDiagnosticsGenerator.__deallocating_deinit()
{
  MusicCurationDiagnosticsGenerator.deinit();

  return MEMORY[0x1EEE6DEF0](v0);
}

uint64_t sub_1C70D5F40()
{
  result = sub_1C754FF1C();
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

void sub_1C70D6084()
{
  sub_1C70D6110();
  if (v0 <= 0x3F)
  {
    sub_1C6FD5FFC();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1C70D6110()
{
  if (!qword_1EC2173C0)
  {
    type metadata accessor for StoryMusicCuration();
    v0 = sub_1C755149C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC2173C0);
    }
  }
}

unint64_t sub_1C70D6168()
{
  result = qword_1EDD09768;
  if (!qword_1EDD09768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD09768);
  }

  return result;
}

uint64_t sub_1C70D61BC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1C70D6204(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MusicCurationDiagnostics(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

_BYTE *storeEnumTagSinglePayload for MusicCurationDiagnostics.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1C70D6348()
{
  result = qword_1EC2173E0;
  if (!qword_1EC2173E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2173E0);
  }

  return result;
}

unint64_t sub_1C70D63A0()
{
  result = qword_1EDD09758;
  if (!qword_1EDD09758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD09758);
  }

  return result;
}

unint64_t sub_1C70D63F8()
{
  result = qword_1EDD09760;
  if (!qword_1EDD09760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD09760);
  }

  return result;
}

uint64_t sub_1C70D644C()
{
  v0 = sub_1C754FF1C();
  __swift_allocate_value_buffer(v0, qword_1EC2173E8);
  __swift_project_value_buffer(v0, qword_1EC2173E8);
  return sub_1C754FEFC();
}

void sub_1C70D6504()
{
  v0 = type metadata accessor for MusicMobileAssetsConfigUtility();
  __swift_allocate_value_buffer(v0, qword_1EC217400);
  v1 = __swift_project_value_buffer(v0, qword_1EC217400);
  static MusicMobileAssetsConfigUtility.mobileAssetsConfig(for:)(0xD00000000000002BLL, 0x80000001C759DA00, v1);
  static MusicMobileAssetsConfigUtility.mobileAssetsConfig(for:)(0xD000000000000034, 0x80000001C759DA30, v1 + *(v0 + 20));
}

void MusicMobileAssetsConfigUtility.init()(uint64_t a1@<X8>)
{
  static MusicMobileAssetsConfigUtility.mobileAssetsConfig(for:)(0xD00000000000002BLL, 0x80000001C759DA00, a1);
  v2 = type metadata accessor for MusicMobileAssetsConfigUtility();
  static MusicMobileAssetsConfigUtility.mobileAssetsConfig(for:)(0xD000000000000034, 0x80000001C759DA30, a1 + *(v2 + 20));
}

uint64_t static MusicMobileAssetsConfigUtility.sharedInstance.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EC213DA8 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for MusicMobileAssetsConfigUtility();
  v3 = __swift_project_value_buffer(v2, qword_1EC217400);
  return sub_1C70D7D20(v3, a1, type metadata accessor for MusicMobileAssetsConfigUtility);
}

uint64_t MusicMobileAssetsConfigUtility.maestroMusicConfig.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for MusicMobileAssetsConfigUtility() + 20);

  return sub_1C70D6AEC(v3, a1);
}

void static MusicMobileAssetsConfigUtility.mobileAssetsConfig(for:)(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v20 = a3;
  v19 = sub_1C755125C();
  v5 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_14_0();
  v8 = v7 - v6;
  v9 = sub_1C755124C();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_14_0();
  v10 = sub_1C755006C();
  MEMORY[0x1EEE9AC00](v10 - 8);
  OUTLINED_FUNCTION_14_0();
  if (qword_1EC213DA0 != -1)
  {
    swift_once();
  }

  v11 = sub_1C754FF1C();
  __swift_project_value_buffer(v11, qword_1EC2173E8);
  sub_1C75504FC();
  v12 = sub_1C754FEEC();
  v13 = sub_1C755117C();

  v21 = a2;
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v22 = v15;
    *v14 = 136315138;
    *(v14 + 4) = sub_1C6F765A4(a1, v21, &v22);
    _os_log_impl(&dword_1C6F5C000, v12, v13, "Extracting Mobile Assets config info for %s", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v15);
    MEMORY[0x1CCA5F8E0](v15, -1, -1);
    MEMORY[0x1CCA5F8E0](v14, -1, -1);
  }

  sub_1C6F65BE8(0, &unk_1EDD0FA90);
  sub_1C755003C();
  v22 = MEMORY[0x1E69E7CC0];
  sub_1C70D7E48(&qword_1EDD0FAA0, MEMORY[0x1E69E8030]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC215B30);
  sub_1C70D6B5C();
  sub_1C75515FC();
  (*(v5 + 104))(v8, *MEMORY[0x1E69E8090], v19);
  v16 = sub_1C75512AC();
  MEMORY[0x1EEE9AC00](v16);
  v17 = v21;
  *(&v18 - 2) = a1;
  *(&v18 - 1) = v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC216CE8);
  sub_1C755128C();
}

uint64_t type metadata accessor for MusicMobileAssetsConfigUtility()
{
  result = qword_1EC217418;
  if (!qword_1EC217418)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C70D6AEC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC216CE8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1C70D6B5C()
{
  result = qword_1EDD0FAE0;
  if (!qword_1EDD0FAE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC215B30);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD0FAE0);
  }

  return result;
}

void sub_1C70D6BC0(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = objc_autoreleasePoolPush();
  sub_1C70D6C54(a1, a2, a3);
  objc_autoreleasePoolPop(v7);
  if (v3)
  {
    __break(1u);
  }
}

uint64_t sub_1C70D6C54@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v137 = a3;
  v5 = type metadata accessor for MusicMobileAssetsConfig();
  MEMORY[0x1EEE9AC00](v5);
  v125 = &v119 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v128 = (&v119 - v8);
  v9 = sub_1C754DD2C();
  v126 = *(v9 - 8);
  v127 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v129 = &v119 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC219230);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v130 = (&v119 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v13);
  v131 = &v119 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v119 - v16;
  v18 = sub_1C754DF6C();
  v133 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v119 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v119 - v22;
  MEMORY[0x1EEE9AC00](v24);
  v136 = &v119 - v25;
  v26 = objc_allocWithZone(MEMORY[0x1E69B18E8]);
  sub_1C75504FC();
  v139 = a2;
  v27 = sub_1C70D7AF8(a1, a2);
  if (!v27)
  {
    if (qword_1EC213DA0 != -1)
    {
      swift_once();
    }

    v44 = sub_1C754FF1C();
    __swift_project_value_buffer(v44, qword_1EC2173E8);
    sub_1C75504FC();
    v45 = sub_1C754FEEC();
    v46 = sub_1C755119C();

    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      v48 = swift_slowAlloc();
      v140[0] = v48;
      *v47 = 136315138;
      *(v47 + 4) = sub_1C6F765A4(a1, v139, v140);
      _os_log_impl(&dword_1C6F5C000, v45, v46, "Unable to get MAAssetQuery for %s", v47, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v48);
      MEMORY[0x1CCA5F8E0](v48, -1, -1);
      MEMORY[0x1CCA5F8E0](v47, -1, -1);
    }

    goto LABEL_17;
  }

  v28 = v27;
  [v27 setDoNotBlockBeforeFirstUnlock_];
  [v28 returnTypes_];
  v138 = v28;
  [v28 queryMetaDataSync];
  if (qword_1EC213DA0 != -1)
  {
    swift_once();
  }

  v134 = a1;
  v29 = sub_1C754FF1C();
  v30 = __swift_project_value_buffer(v29, qword_1EC2173E8);
  sub_1C75504FC();
  v135 = v30;
  v31 = sub_1C754FEEC();
  v32 = sub_1C755117C();

  v33 = os_log_type_enabled(v31, v32);
  v132 = v18;
  if (v33)
  {
    v34 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    v140[0] = v35;
    *v34 = 136315138;
    *(v34 + 4) = sub_1C6F765A4(v134, v139, v140);
    _os_log_impl(&dword_1C6F5C000, v31, v32, "MAAssetQuery completed for %s", v34, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v35);
    v18 = v132;
    MEMORY[0x1CCA5F8E0](v35, -1, -1);
    MEMORY[0x1CCA5F8E0](v34, -1, -1);
  }

  v36 = v138;
  v37 = sub_1C70D7C48(v138);
  if (!v37)
  {
    sub_1C75504FC();
    v49 = sub_1C754FEEC();
    v50 = sub_1C755119C();

    if (os_log_type_enabled(v49, v50))
    {
      v51 = swift_slowAlloc();
      v52 = swift_slowAlloc();
      v140[0] = v52;
      *v51 = 136315138;
      *(v51 + 4) = sub_1C6F765A4(v134, v139, v140);
      _os_log_impl(&dword_1C6F5C000, v49, v50, "Unable to get MAAssetQuery query results for %s", v51, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v52);
      MEMORY[0x1CCA5F8E0](v52, -1, -1);
      MEMORY[0x1CCA5F8E0](v51, -1, -1);
    }

LABEL_17:
    v53 = v137;
    v54 = 1;
    v55 = v5;
    return __swift_storeEnumTagSinglePayload(v53, v54, 1, v55);
  }

  v38 = v37;
  v39 = [v36 postedDate];
  v124 = v5;
  if (v39)
  {
    v40 = v39;
    sub_1C754DF2C();

    v41 = v133;
    v42 = *(v133 + 32);
    v42(v17, v23, v18);
    __swift_storeEnumTagSinglePayload(v17, 0, 1, v18);
    v43 = v136;
    v42(v136, v17, v18);
  }

  else
  {
    __swift_storeEnumTagSinglePayload(v17, 1, 1, v18);
    v43 = v136;
    sub_1C754DE6C();
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v17, 1, v18);
    v41 = v133;
    if (EnumTagSinglePayload != 1)
    {
      sub_1C70D7CB8(v17);
    }
  }

  v123 = v38;
  v57 = sub_1C6FB6304();
  v58 = *(v41 + 16);
  v59 = v20;
  v121 = v41 + 16;
  v120 = v58;
  v58(v20, v43, v18);
  sub_1C75504FC();
  v60 = sub_1C754FEEC();
  v61 = v41;
  v62 = sub_1C755117C();

  v63 = os_log_type_enabled(v60, v62);
  v122 = v57;
  if (v63)
  {
    v64 = swift_slowAlloc();
    v119 = swift_slowAlloc();
    v140[0] = v119;
    *v64 = 134218498;
    *(v64 + 4) = v57;
    v65 = v61;
    *(v64 + 12) = 2080;
    *(v64 + 14) = sub_1C6F765A4(v134, v139, v140);
    *(v64 + 22) = 2080;
    sub_1C70D7E48(&qword_1EDD0F9D8, MEMORY[0x1E6969530]);
    v66 = sub_1C7551D8C();
    v68 = v67;
    v69 = *(v65 + 8);
    v69(v59, v18);
    v70 = sub_1C6F765A4(v66, v68, v140);

    *(v64 + 24) = v70;
    _os_log_impl(&dword_1C6F5C000, v60, v62, "Found %ld assets for %s with asset date: %s", v64, 0x20u);
    v71 = v119;
    swift_arrayDestroy();
    MEMORY[0x1CCA5F8E0](v71, -1, -1);
    MEMORY[0x1CCA5F8E0](v64, -1, -1);
  }

  else
  {

    v69 = *(v61 + 8);
    v69(v59, v18);
  }

  v72 = v124;
  v74 = v130;
  v73 = v131;
  v75 = v123;
  if (!sub_1C6FB6304())
  {

    sub_1C75504FC();
    v83 = sub_1C754FEEC();
    v84 = sub_1C755119C();

    if (os_log_type_enabled(v83, v84))
    {
      v85 = v72;
      v86 = swift_slowAlloc();
      v87 = swift_slowAlloc();
      v140[0] = v87;
      *v86 = 136315138;
      *(v86 + 4) = sub_1C6F765A4(v134, v139, v140);
      _os_log_impl(&dword_1C6F5C000, v83, v84, "Unable to get first asset of type %s", v86, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v87);
      MEMORY[0x1CCA5F8E0](v87, -1, -1);
      v88 = v86;
      v72 = v85;
      MEMORY[0x1CCA5F8E0](v88, -1, -1);
    }

    v89 = v138;
    goto LABEL_35;
  }

  sub_1C6FB6330(0, (v75 & 0xC000000000000001) == 0, v75);
  if ((v75 & 0xC000000000000001) != 0)
  {
    v76 = MEMORY[0x1CCA5DDD0](0, v75);
  }

  else
  {
    v76 = *(v75 + 32);
  }

  v77 = v76;

  v131 = v77;
  v78 = [v77 assetServerUrl];
  if (!v78)
  {
    sub_1C75504FC();
    v90 = sub_1C754FEEC();
    v91 = sub_1C755119C();

    if (os_log_type_enabled(v90, v91))
    {
      v92 = swift_slowAlloc();
      v93 = swift_slowAlloc();
      v140[0] = v93;
      *v92 = 136315138;
      *(v92 + 4) = sub_1C6F765A4(v134, v139, v140);
      _os_log_impl(&dword_1C6F5C000, v90, v91, "Failed to retrieve asset server URL for %s", v92, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v93);
      MEMORY[0x1CCA5F8E0](v93, -1, -1);
      v94 = v92;
      v72 = v124;
      MEMORY[0x1CCA5F8E0](v94, -1, -1);
    }

    v89 = v131;
LABEL_35:

    v69(v136, v132);
    v53 = v137;
    v54 = 1;
    v55 = v72;
    return __swift_storeEnumTagSinglePayload(v53, v54, 1, v55);
  }

  v79 = v78;
  sub_1C754DCCC();

  v80 = [v138 lastFetchDate];
  if (v80)
  {
    v81 = v80;
    sub_1C754DF2C();

    v82 = 0;
  }

  else
  {
    v82 = 1;
  }

  v95 = v132;
  __swift_storeEnumTagSinglePayload(v74, v82, 1, v132);
  sub_1C6FF51C8(v74, v73);
  if (__swift_getEnumTagSinglePayload(v73, 1, v95) == 1)
  {
    result = sub_1C70D7CB8(v73);
    v97 = -1.0;
  }

  else
  {
    sub_1C754DF1C();
    v97 = v98;
    result = (v69)(v73, v95);
  }

  v99 = fabs(v97) / 86400.0;
  if ((*&v99 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_50;
  }

  if (v99 <= -9.22337204e18)
  {
LABEL_50:
    __break(1u);
    goto LABEL_51;
  }

  v130 = v69;
  if (v99 < 9.22337204e18)
  {
    v100 = v99;
    v101 = v139;
    sub_1C75504FC();
    v102 = sub_1C754DC2C();
    v104 = v103;
    v105 = v124;
    v106 = v128;
    v107 = v136;
    v108 = v132;
    v120(v128 + *(v124 + 24), v136, v132);
    *v106 = v134;
    v106[1] = v101;
    v106[2] = v102;
    v106[3] = v104;
    *(v106 + *(v105 + 28)) = v122;
    *(v106 + *(v105 + 32)) = v100;
    v109 = v125;
    sub_1C70D7D20(v106, v125, type metadata accessor for MusicMobileAssetsConfig);
    sub_1C75504FC();
    v110 = sub_1C754FEEC();
    v111 = sub_1C755117C();

    if (os_log_type_enabled(v110, v111))
    {
      v112 = swift_slowAlloc();
      v113 = swift_slowAlloc();
      v140[0] = v113;
      *v112 = 136315394;
      *(v112 + 4) = sub_1C6F765A4(v134, v139, v140);
      *(v112 + 12) = 2080;
      v114 = MusicMobileAssetsConfig.description.getter();
      v116 = v115;
      sub_1C70D7D88(v109);
      v117 = sub_1C6F765A4(v114, v116, v140);

      *(v112 + 14) = v117;
      _os_log_impl(&dword_1C6F5C000, v110, v111, "Extracted mobileAssetConfig for %s: %s", v112, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1CCA5F8E0](v113, -1, -1);
      MEMORY[0x1CCA5F8E0](v112, -1, -1);
    }

    else
    {

      sub_1C70D7D88(v109);
    }

    (*(v126 + 8))(v129, v127);
    v130(v107, v108);
    v118 = v137;
    sub_1C70D7DE4(v128, v137);
    v53 = v118;
    v54 = 0;
    v55 = v124;
    return __swift_storeEnumTagSinglePayload(v53, v54, 1, v55);
  }

LABEL_51:
  __break(1u);
  return result;
}