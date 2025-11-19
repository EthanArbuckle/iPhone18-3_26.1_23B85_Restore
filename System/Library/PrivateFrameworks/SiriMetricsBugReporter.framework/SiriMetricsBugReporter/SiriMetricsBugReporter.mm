void sub_268079350(unint64_t *a1@<X8>)
{
  v2 = 0xD000000000000015;
  v3 = "Missing aggregation interval";
  if (*v1 == 1)
  {
    v2 = 0xD000000000000017;
  }

  else
  {
    v3 = "nil deviceAggregationId";
  }

  if (*v1)
  {
    v4 = v3;
  }

  else
  {
    v2 = 0xD00000000000001CLL;
    v4 = "ODDIExperimentationCalculator";
  }

  *a1 = v2;
  a1[1] = v4 | 0x8000000000000000;
}

void *sub_26807941C()
{
  type metadata accessor for InternalInstallChecker();
  v0 = swift_allocObject();
  type metadata accessor for AutoBugCaptureFactory();
  v1 = swift_allocObject();
  type metadata accessor for ContextPrefixProvider();
  v2 = swift_allocObject();
  type metadata accessor for BugReporter();
  result = swift_allocObject();
  result[2] = v0;
  result[3] = v1;
  result[4] = v2;
  qword_281571318 = result;
  return result;
}

uint64_t static BugReporter.shared.getter()
{
  if (qword_281571280 != -1)
  {
    swift_once();
  }

  v1 = qword_281571318;

  return MEMORY[0x2821FEB80](v1);
}

void sub_268079504(unsigned __int8 *a1, unsigned __int8 *a2, uint64_t a3, uint64_t a4)
{
  v6 = *a1;
  v7 = *a2;
  if (AFIsInternalInstall())
  {
    v8 = sub_26807C1E4();
    v9 = *(v8 + 48);
    v10 = *(v8 + 52);
    swift_allocObject();
    sub_26807C1D4();
    v11 = sub_26807A328();
    if (!v12)
    {
      v13 = [objc_opt_self() mainBundle];
      v14 = [v13 bundleIdentifier];

      if (!v14)
      {

        goto LABEL_24;
      }

      v15 = sub_26807C234();
      v17 = v16;

      v12 = v17;
      v11 = v15;
    }

    v35[0] = v11;
    v35[1] = v12;
    MEMORY[0x26D60E370](8250, 0xE200000000000000);
    MEMORY[0x26D60E370](a3, a4);
LABEL_24:
    sub_26807C1C4();

    return;
  }

  if (qword_280248840 != -1)
  {
    swift_once();
  }

  v18 = sub_26807C204();
  __swift_project_value_buffer(v18, qword_280248878);
  oslog = sub_26807C1F4();
  v19 = sub_26807C274();
  if (os_log_type_enabled(oslog, v19))
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v35[0] = v21;
    *v20 = 136315394;
    if (v6)
    {
      v22 = 0x6C61746146;
    }

    else
    {
      v22 = 0x726F727245;
    }

    v23 = sub_268079C08(v22, 0xE500000000000000, v35);

    *(v20 + 4) = v23;
    *(v20 + 12) = 2080;
    if (v7 > 3)
    {
      v30 = 0x800000026807CB60;
      v31 = 0xD00000000000001DLL;
      if (v7 == 6)
      {
        v31 = 0xD000000000000015;
      }

      else
      {
        v30 = 0x800000026807CB80;
      }

      v32 = 0x800000026807CB00;
      if (v7 != 4)
      {
        v32 = 0x800000026807CB30;
      }

      if (v7 <= 5)
      {
        v28 = 0xD000000000000024;
      }

      else
      {
        v28 = v31;
      }

      if (v7 <= 5)
      {
        v29 = v32;
      }

      else
      {
        v29 = v30;
      }
    }

    else
    {
      v24 = 0x656D6F6942;
      v25 = 0x6B63616264656546;
      v26 = 0xEE00726567676F4CLL;
      if (v7 != 2)
      {
        v25 = 0xD00000000000001BLL;
        v26 = 0x800000026807CAE0;
      }

      v27 = 0xE600000000000000;
      if (v7)
      {
        v24 = 0x53494C4D4941;
      }

      else
      {
        v27 = 0xE500000000000000;
      }

      if (v7 <= 1)
      {
        v28 = v24;
      }

      else
      {
        v28 = v25;
      }

      if (v7 <= 1)
      {
        v29 = v27;
      }

      else
      {
        v29 = v26;
      }
    }

    v33 = sub_268079C08(v28, v29, v35);

    *(v20 + 14) = v33;
    _os_log_impl(&dword_268078000, oslog, v19, "#SiriMetricsBugReporter autoBugCapture: not an internal build. Skipping filing radar for %s/%s", v20, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x26D60E610](v21, -1, -1);
    MEMORY[0x26D60E610](v20, -1, -1);
  }
}

void sub_268079A54(char a1)
{
  if (qword_280248840 != -1)
  {
    swift_once();
  }

  v2 = sub_26807C204();
  __swift_project_value_buffer(v2, qword_280248878);
  oslog = sub_26807C1F4();
  v3 = sub_26807C274();
  if (os_log_type_enabled(oslog, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 67109120;
    *(v4 + 4) = a1 & 1;
    _os_log_impl(&dword_268078000, oslog, v3, "#SiriMetricsBugReporter autoBugCapture: result: %{BOOL}d", v4, 8u);
    MEMORY[0x26D60E610](v4, -1, -1);
  }
}

void *BugReporter.deinit()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  return v0;
}

uint64_t BugReporter.__deallocating_deinit()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  return MEMORY[0x2821FE8D8](v0, 40, 7);
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_268079C08(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_268079CD4(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x277D840A0];
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_26807A25C(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0(v11);
  return v7;
}

unint64_t sub_268079CD4(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_268079DE0(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = sub_26807C2C4();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

uint64_t sub_268079DE0(uint64_t a1, unint64_t a2)
{
  v4 = sub_268079E2C(a1, a2);
  sub_268079F5C(&unk_2878EF568);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_268079E2C(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return MEMORY[0x277D84F90];
  }

  v6 = sub_26807A048(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_26807C2C4();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_26807C264();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_26807A048(v10, 0);
        result = sub_26807C2A4();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_268079F5C(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  v7 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  result = sub_26807A0BC(result, v12, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_26807A048(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280248848, &qword_26807C678);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_26807A0BC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280248848, &qword_26807C678);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

uint64_t __swift_destroy_boxed_opaque_existential_0(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_26807A25C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_26807A328()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = sub_26807C224();
  v2 = [v0 objectForInfoDictionaryKey_];

  if (v2)
  {
    sub_26807C294();
    swift_unknownObjectRelease();
  }

  else
  {
    v5 = 0u;
    v6 = 0u;
  }

  v7[0] = v5;
  v7[1] = v6;
  if (*(&v6 + 1))
  {
    if (swift_dynamicCast())
    {
      return v4;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    sub_26807A43C(v7);
    return 0;
  }
}

uint64_t sub_26807A43C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280248850, "x\b");
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t ErrorLevel.rawValue.getter()
{
  if (*v0)
  {
    return 0x6C61746146;
  }

  else
  {
    return 0x726F727245;
  }
}

unint64_t ErrorSubType.rawValue.getter()
{
  v1 = *v0;
  if (v1 > 3)
  {
    v5 = 0xD00000000000001DLL;
    if (v1 == 6)
    {
      v5 = 0xD000000000000015;
    }

    if (*v0 <= 5u)
    {
      return 0xD000000000000024;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v2 = 0x656D6F6942;
    v3 = 0x6B63616264656546;
    if (v1 != 2)
    {
      v3 = 0xD00000000000001BLL;
    }

    if (*v0)
    {
      v2 = 0x53494C4D4941;
    }

    if (*v0 <= 1u)
    {
      return v2;
    }

    else
    {
      return v3;
    }
  }
}

SiriMetricsBugReporter::ErrorLevel_optional __swiftcall ErrorLevel.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_26807C2D4();

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

uint64_t sub_26807A64C(_BYTE *a1, _BYTE *a2)
{
  if (*a1)
  {
    v2 = 0x6C61746146;
  }

  else
  {
    v2 = 0x726F727245;
  }

  if (*a2)
  {
    v3 = 0x6C61746146;
  }

  else
  {
    v3 = 0x726F727245;
  }

  if (v2 == v3)
  {
    v4 = 1;
  }

  else
  {
    v4 = sub_26807C2E4();
  }

  swift_bridgeObjectRelease_n();
  return v4 & 1;
}

uint64_t sub_26807A6CC(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 > 3u)
  {
    v9 = 0x800000026807CB60;
    v10 = 0xD000000000000015;
    if (a1 != 6)
    {
      v10 = 0xD00000000000001DLL;
      v9 = 0x800000026807CB80;
    }

    v11 = 0x800000026807CB00;
    if (a1 != 4)
    {
      v11 = 0x800000026807CB30;
    }

    if (a1 <= 5u)
    {
      v7 = 0xD000000000000024;
    }

    else
    {
      v7 = v10;
    }

    if (v2 <= 5)
    {
      v8 = v11;
    }

    else
    {
      v8 = v9;
    }
  }

  else
  {
    v3 = 0xE500000000000000;
    v4 = 0x6B63616264656546;
    v5 = 0xEE00726567676F4CLL;
    if (a1 != 2)
    {
      v4 = 0xD00000000000001BLL;
      v5 = 0x800000026807CAE0;
    }

    v6 = 0x53494C4D4941;
    if (a1)
    {
      v3 = 0xE600000000000000;
    }

    else
    {
      v6 = 0x656D6F6942;
    }

    if (a1 <= 1u)
    {
      v7 = v6;
    }

    else
    {
      v7 = v4;
    }

    if (v2 <= 1)
    {
      v8 = v3;
    }

    else
    {
      v8 = v5;
    }
  }

  if (a2 > 3u)
  {
    if (a2 > 5u)
    {
      if (a2 == 6)
      {
        v12 = 0x800000026807CB60;
        if (v7 != 0xD000000000000015)
        {
          goto LABEL_47;
        }
      }

      else
      {
        v12 = 0x800000026807CB80;
        if (v7 != 0xD00000000000001DLL)
        {
LABEL_47:
          v14 = sub_26807C2E4();
          goto LABEL_48;
        }
      }
    }

    else
    {
      if (a2 == 4)
      {
        v13 = "AssistantExperimentMetricsCalculator";
      }

      else
      {
        v13 = "DictationExperimentMetricsCalculator";
      }

      v12 = (v13 - 32) | 0x8000000000000000;
      if (v7 != 0xD000000000000024)
      {
        goto LABEL_47;
      }
    }
  }

  else if (a2 > 1u)
  {
    if (a2 == 2)
    {
      v12 = 0xEE00726567676F4CLL;
      if (v7 != 0x6B63616264656546)
      {
        goto LABEL_47;
      }
    }

    else
    {
      v12 = 0x800000026807CAE0;
      if (v7 != 0xD00000000000001BLL)
      {
        goto LABEL_47;
      }
    }
  }

  else if (a2)
  {
    v12 = 0xE600000000000000;
    if (v7 != 0x53494C4D4941)
    {
      goto LABEL_47;
    }
  }

  else
  {
    v12 = 0xE500000000000000;
    if (v7 != 0x656D6F6942)
    {
      goto LABEL_47;
    }
  }

  if (v8 != v12)
  {
    goto LABEL_47;
  }

  v14 = 1;
LABEL_48:

  return v14 & 1;
}

uint64_t sub_26807A938()
{
  v1 = *v0;
  sub_26807C2F4();
  sub_26807C244();

  return sub_26807C304();
}

uint64_t sub_26807A9A8()
{
  *v0;
  sub_26807C244();
}

uint64_t sub_26807A9FC()
{
  sub_26807C244();
}

uint64_t sub_26807AB48()
{
  v1 = *v0;
  sub_26807C2F4();
  sub_26807C244();

  return sub_26807C304();
}

uint64_t sub_26807ABB4()
{
  sub_26807C2F4();
  sub_26807C244();

  return sub_26807C304();
}

uint64_t sub_26807AD14@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_26807C2D4();

  if (v5 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (!v5)
  {
    v7 = 0;
  }

  *a2 = v7;
  return result;
}

void sub_26807AD74(uint64_t *a1@<X8>)
{
  v2 = 0x726F727245;
  if (*v1)
  {
    v2 = 0x6C61746146;
  }

  *a1 = v2;
  a1[1] = 0xE500000000000000;
}

SiriMetricsBugReporter::ErrorSubType_optional __swiftcall ErrorSubType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_26807C2D4();

  v5 = 8;
  if (v3 < 8)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

void sub_26807AE34(unint64_t *a1@<X8>)
{
  v2 = *v1;
  if (v2 > 3)
  {
    v8 = 0x800000026807CB60;
    v9 = 0xD00000000000001DLL;
    if (v2 == 6)
    {
      v9 = 0xD000000000000015;
    }

    else
    {
      v8 = 0x800000026807CB80;
    }

    v10 = 0x800000026807CB00;
    if (v2 != 4)
    {
      v10 = 0x800000026807CB30;
    }

    if (*v1 <= 5u)
    {
      v11 = 0xD000000000000024;
    }

    else
    {
      v11 = v9;
    }

    if (*v1 <= 5u)
    {
      v8 = v10;
    }

    *a1 = v11;
    a1[1] = v8;
  }

  else
  {
    v3 = 0xE500000000000000;
    v4 = 0x656D6F6942;
    v5 = 0xEE00726567676F4CLL;
    v6 = 0x6B63616264656546;
    if (v2 != 2)
    {
      v6 = 0xD00000000000001BLL;
      v5 = 0x800000026807CAE0;
    }

    if (*v1)
    {
      v4 = 0x53494C4D4941;
      v3 = 0xE600000000000000;
    }

    if (*v1 <= 1u)
    {
      v7 = v4;
    }

    else
    {
      v7 = v6;
    }

    if (*v1 > 1u)
    {
      v3 = v5;
    }

    *a1 = v7;
    a1[1] = v3;
  }
}

SiriMetricsBugReporter::AssistantExperimentMetricsCalculatorSubTypeContext_optional __swiftcall AssistantExperimentMetricsCalculatorSubTypeContext.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_26807C2D4();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t AssistantExperimentMetricsCalculatorSubTypeContext.rawValue.getter()
{
  v1 = 0xD000000000000015;
  if (*v0 == 1)
  {
    v1 = 0xD000000000000017;
  }

  if (*v0)
  {
    result = v1;
  }

  else
  {
    result = 0xD00000000000001CLL;
  }

  *v0;
  return result;
}

SiriMetricsBugReporter::DictationExperimentMetricsCalculatorSubTypeContext_optional __swiftcall DictationExperimentMetricsCalculatorSubTypeContext.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_26807C2D4();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_26807B0A8(_BYTE *a1, _BYTE *a2)
{
  v2 = 0xD000000000000015;
  v3 = *a1;
  v4 = "Missing aggregation interval";
  if (v3 == 1)
  {
    v5 = 0xD000000000000017;
  }

  else
  {
    v5 = 0xD000000000000015;
  }

  if (v3 == 1)
  {
    v6 = "Missing aggregation interval";
  }

  else
  {
    v6 = "nil deviceAggregationId";
  }

  if (*a1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0xD00000000000001CLL;
  }

  if (v3)
  {
    v8 = v6;
  }

  else
  {
    v8 = "ODDIExperimentationCalculator";
  }

  if (*a2 == 1)
  {
    v2 = 0xD000000000000017;
  }

  else
  {
    v4 = "nil deviceAggregationId";
  }

  if (*a2)
  {
    v9 = v2;
  }

  else
  {
    v9 = 0xD00000000000001CLL;
  }

  if (*a2)
  {
    v10 = v4;
  }

  else
  {
    v10 = "ODDIExperimentationCalculator";
  }

  if (v7 == v9 && (v8 | 0x8000000000000000) == (v10 | 0x8000000000000000))
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_26807C2E4();
  }

  return v11 & 1;
}

uint64_t sub_26807B180()
{
  v1 = *v0;
  sub_26807C2F4();
  sub_26807C244();

  return sub_26807C304();
}

uint64_t sub_26807B21C()
{
  *v0;
  *v0;
  sub_26807C244();
}

uint64_t sub_26807B2A4()
{
  v1 = *v0;
  sub_26807C2F4();
  sub_26807C244();

  return sub_26807C304();
}

unint64_t static FBFErrorSubTypeContext.failedToWrapODDAsAnyEvent(_:)(uint64_t a1, uint64_t a2)
{
  sub_26807C2B4();

  MEMORY[0x26D60E370](a1, a2);
  MEMORY[0x26D60E370](0x45796E4120736120, 0xEC000000746E6576);
  return 0xD00000000000001CLL;
}

unint64_t static FBFErrorSubTypeContext.failedToWrapODBATCHAsAnyEvent(_:)(uint64_t a1, uint64_t a2)
{
  sub_26807C2B4();

  MEMORY[0x26D60E370](a1, a2);
  MEMORY[0x26D60E370](0x45796E4120736120, 0xEC000000746E6576);
  return 0xD000000000000020;
}

unint64_t static FBFErrorSubTypeContext.failedToWrapODSampleAsAnyEvent(_:)(uint64_t a1, uint64_t a2)
{
  sub_26807C2B4();

  MEMORY[0x26D60E370](a1, a2);
  MEMORY[0x26D60E370](0x45796E4120736120, 0xEC000000746E6576);
  return 0xD000000000000021;
}

unint64_t static FBFErrorSubTypeContext.failedToStoreODDToFBF(_:)(uint64_t a1, uint64_t a2)
{
  sub_26807C2B4();

  MEMORY[0x26D60E370](a1, a2);
  MEMORY[0x26D60E370](0xD000000000000012, 0x800000026807CDC0);
  return 0xD00000000000001ALL;
}

unint64_t static FBFErrorSubTypeContext.failedToStoreODBATCHToFBF(_:)(uint64_t a1, uint64_t a2)
{
  sub_26807C2B4();

  MEMORY[0x26D60E370](a1, a2);
  MEMORY[0x26D60E370](0xD000000000000012, 0x800000026807CDC0);
  return 0xD00000000000001ELL;
}

uint64_t static FBFErrorSubTypeContext.failedToStoreODSampleToFBF(_:)(uint64_t a1, uint64_t a2)
{
  sub_26807C2B4();
  MEMORY[0x26D60E370](0xD00000000000001FLL, 0x800000026807CE00);
  MEMORY[0x26D60E370](a1, a2);
  MEMORY[0x26D60E370](0xD000000000000012, 0x800000026807CDC0);
  return 0;
}

uint64_t static FBFErrorSubTypeContext.failedToStoreODFunnelToFBF(_:)(uint64_t a1, uint64_t a2)
{
  sub_26807C2B4();
  MEMORY[0x26D60E370](0xD00000000000001FLL, 0x800000026807CE20);
  MEMORY[0x26D60E370](a1, a2);
  MEMORY[0x26D60E370](0xD000000000000012, 0x800000026807CDC0);
  return 0;
}

unint64_t static FBFErrorSubTypeContext.failedToStoreODDToSELF(_:)(uint64_t a1, uint64_t a2)
{
  sub_26807C2B4();

  MEMORY[0x26D60E370](a1, a2);
  MEMORY[0x26D60E370](0x464C4553206E6920, 0xE800000000000000);
  return 0xD00000000000001ALL;
}

unint64_t static FBFErrorSubTypeContext.failedToStoreODBATCHToSELF(_:)(uint64_t a1, uint64_t a2)
{
  sub_26807C2B4();

  MEMORY[0x26D60E370](a1, a2);
  MEMORY[0x26D60E370](0x464C4553206E6920, 0xE800000000000000);
  return 0xD00000000000001ELL;
}

unint64_t sub_26807B910()
{
  result = qword_280248858;
  if (!qword_280248858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280248858);
  }

  return result;
}

unint64_t sub_26807B968()
{
  result = qword_280248860;
  if (!qword_280248860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280248860);
  }

  return result;
}

unint64_t sub_26807B9C0()
{
  result = qword_280248868;
  if (!qword_280248868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280248868);
  }

  return result;
}

unint64_t sub_26807BA18()
{
  result = qword_280248870;
  if (!qword_280248870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280248870);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ErrorLevel(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ErrorLevel(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ErrorSubType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF9)
  {
    goto LABEL_17;
  }

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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 7;
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

      return (*a1 | (v4 << 8)) - 7;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 7;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 8;
  v8 = v6 - 8;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ErrorSubType(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xF9)
  {
    v4 = 0;
  }

  if (a2 > 0xF8)
  {
    v5 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
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
    *result = a2 + 7;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_26807BD58(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t sub_26807BDE8(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_26807BEA8(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *sub_26807BEF8(_WORD *result, int a2, int a3)
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

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

uint64_t sub_26807BFD8()
{
  v0 = sub_26807C204();
  __swift_allocate_value_buffer(v0, qword_280248878);
  __swift_project_value_buffer(v0, qword_280248878);
  sub_26807C178();
  sub_26807C284();
  return sub_26807C214();
}

uint64_t defaultLogger.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_280248840 != -1)
  {
    swift_once();
  }

  v2 = sub_26807C204();
  v3 = __swift_project_value_buffer(v2, qword_280248878);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 - 8);
  if ((*(v3 + 80) & 0x20000) != 0)
  {
    v4 = *(v3 + 64);
    v5 = *(v3 + 80);
    v6 = swift_slowAlloc();
    *a2 = v6;
    return v6;
  }

  return a2;
}

unint64_t sub_26807C178()
{
  result = qword_280248890;
  if (!qword_280248890)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280248890);
  }

  return result;
}