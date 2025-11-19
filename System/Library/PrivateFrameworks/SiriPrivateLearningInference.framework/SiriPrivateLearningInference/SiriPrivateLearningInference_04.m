unint64_t sub_222B827F8()
{
  result = qword_27D025A20;
  if (!qword_27D025A20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D025A20);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PIMSConstraintMismatchReason(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xE2)
  {
    goto LABEL_17;
  }

  if (a2 + 30 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 30) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 30;
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

      return (*a1 | (v4 << 8)) - 30;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 30;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x1F;
  v8 = v6 - 31;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for PIMSConstraintMismatchReason(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 30 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 30) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xE2)
  {
    v4 = 0;
  }

  if (a2 > 0xE1)
  {
    v5 = ((a2 - 226) >> 8) + 1;
    *result = a2 + 30;
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
    *result = a2 + 30;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_222B829BC(uint64_t a1, char a2, uint64_t a3)
{
  sub_222B42624(a3, &v16);
  sub_222B42624(a1, &v15);
  v5 = *(&v16 + 1);
  if ((a2 & 1) == 0)
  {
    v6 = *(&v15 + 1);
    v9 = v16;
    v10 = v15;
    if (*(&v16 + 1) == 5)
    {
      sub_222B831B0(v16, 5uLL);
      if (v6 == 5)
      {
        v5 = 5;
        sub_222B831B0(v10, 5uLL);
        sub_222B831D4(v9, 5uLL);
        v8 = 1;
        goto LABEL_16;
      }

      sub_222B831B0(v10, v6);
      v5 = 5;
    }

    else
    {
      v14 = v16;
      if (*(&v15 + 1) != 5)
      {
        goto LABEL_13;
      }

      sub_222B831B0(v16, *(&v16 + 1));
      sub_222B831B0(v10, 5uLL);
      sub_222B831B0(v9, v5);
      sub_222B831E4(v9, v5);
    }

    sub_222B831D4(v9, v5);
    sub_222B831D4(v10, v6);
    v8 = 0;
    goto LABEL_16;
  }

  v6 = *(&v15 + 1);
  if (*(&v16 + 1) != 5 && *(&v15 + 1) != 5)
  {
    v9 = v16;
    v10 = v15;
    v14 = v16;
LABEL_13:
    v12 = v10;
    v13 = v6;
    sub_222B831B0(v9, *(&v16 + 1));
    sub_222B831B0(v10, v6);
    sub_222B831B0(v9, v5);
    v8 = _s28SiriPrivateLearningInference19NowPlayingMediaTypeO2eeoiySbAC_ACtFZ_0(&v14, &v12);
    sub_222B831E4(v12, v13);
    sub_222B831E4(v14, *(&v14 + 1));
    sub_222B831D4(v9, v5);
    goto LABEL_16;
  }

  v8 = 0;
  v10 = v15;
  v9 = v16;
LABEL_16:
  sub_222B831D4(v10, v6);
  sub_222B831D4(v9, v5);
  return v8 & 1;
}

uint64_t sub_222B82B70(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = sub_222B41824(v1);
  if (!v3)
  {
    goto LABEL_4;
  }

  v4 = v2;
  v5 = v3;
  sub_222B42624(v1, &v19);
  v6 = *(&v19 + 1);
  if (*(&v19 + 1) != 5)
  {
    v11 = v19;
    if (v4 == 0x6C7070612E6D6F63 && v5 == 0xEF636973754D2E65)
    {
    }

    else
    {
      v13 = sub_222C951FC();

      if ((v13 & 1) == 0)
      {
        sub_222B831D4(v11, v6);
        return 1;
      }
    }

    if (v6 > 1)
    {
      switch(v6)
      {
        case 2:
          v14 = v11;
          v15 = 2;
          goto LABEL_29;
        case 3:
          v14 = v11;
          v15 = 3;
          goto LABEL_29;
        case 4:
          v14 = v11;
          v15 = 4;
LABEL_29:
          sub_222B831E4(v14, v15);
          sub_222B831E4(0, 0);
          return 1;
      }

LABEL_28:
      v14 = v11;
      v15 = v6;
      goto LABEL_29;
    }

    if (v6)
    {
      if (v6 != 1)
      {
        goto LABEL_28;
      }

      v16 = v11;
      v17 = 1;
    }

    else
    {
      v16 = v11;
      v17 = 0;
    }

    sub_222B831E4(v16, v17);
    sub_222B831E4(0, 0);
    return v6;
  }

LABEL_4:
  if (qword_280FDFE78 != -1)
  {
    swift_once();
  }

  v7 = sub_222C9431C();
  __swift_project_value_buffer(v7, qword_280FE2340);
  v8 = sub_222C942FC();
  v9 = sub_222C94A4C();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_222B39000, v8, v9, "Missing bundleId or mediaType", v10, 2u);
    MEMORY[0x223DCA8C0](v10, -1, -1);
  }

  return 0;
}

uint64_t sub_222B82D90(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a2 + 16);
  v4 = sub_222B41824(v2);
  v6 = v5;
  v7 = sub_222B41824(v3);
  if (v6)
  {
    if (!v8)
    {
      goto LABEL_48;
    }

    if (v4 == v7 && v6 == v8)
    {
    }

    else
    {
      v10 = sub_222C951FC();

      if ((v10 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v8)
  {
    goto LABEL_48;
  }

  v11 = sub_222B427FC(v2);
  v13 = v12;
  v14 = sub_222B427FC(v3);
  if (!v13 || !v15)
  {
    goto LABEL_48;
  }

  if (v11 == v14 && v13 == v15)
  {
  }

  else
  {
    v16 = sub_222C951FC();

    if ((v16 & 1) == 0)
    {
      return 0;
    }
  }

  v17 = sub_222B427E4(v2);
  v19 = v18;
  v20 = sub_222B427E4(v3);
  if (v19)
  {
    if (!v21)
    {
      goto LABEL_48;
    }

    if (v17 == v20 && v19 == v21)
    {
    }

    else
    {
      v22 = sub_222C951FC();

      if ((v22 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v21)
  {
    goto LABEL_48;
  }

  v23 = sub_222B427CC(v2);
  v25 = v24;
  v26 = sub_222B427CC(v3);
  if (v25)
  {
    if (!v27)
    {
      goto LABEL_48;
    }

    if (v23 == v26 && v25 == v27)
    {
    }

    else
    {
      v28 = sub_222C951FC();

      if ((v28 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v27)
  {
    goto LABEL_48;
  }

  v29 = sub_222B427B4(v2);
  v31 = v30;
  v32 = sub_222B427B4(v3);
  if (!v31)
  {
    if (v33)
    {
      goto LABEL_48;
    }

    goto LABEL_42;
  }

  if (!v33)
  {
    goto LABEL_48;
  }

  if (v29 == v32 && v31 == v33)
  {

    goto LABEL_42;
  }

  v34 = sub_222C951FC();

  if ((v34 & 1) == 0)
  {
    return 0;
  }

LABEL_42:
  if ((sub_222B829BC(v3, 0, v2) & 1) == 0)
  {
    return 0;
  }

  v35 = sub_222B427FC(v2);
  v37 = v36;
  v38 = sub_222B427FC(v3);
  if (v37)
  {
    if (!v39)
    {
      goto LABEL_48;
    }

    if (v35 == v38 && v37 == v39)
    {
    }

    else
    {
      v41 = sub_222C951FC();

      if ((v41 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v39)
  {
    goto LABEL_48;
  }

  v42 = COERCE_DOUBLE(sub_222B4279C(v2));
  v44 = v43;
  v45 = COERCE_DOUBLE(sub_222B4279C(v3));
  if (v44)
  {
    if ((v46 & 1) == 0)
    {
      return 0;
    }
  }

  else if ((v46 & 1) != 0 || v42 != v45)
  {
    return 0;
  }

  v47 = sub_222B423A0(v2);
  v49 = v48;
  v50 = sub_222B423A0(v3);
  if (!v49)
  {
    if (!v51)
    {
      return 1;
    }

    goto LABEL_48;
  }

  if (!v51)
  {
LABEL_48:

    return 0;
  }

  if (v47 == v50 && v49 == v51)
  {

    return 1;
  }

  else
  {
    v52 = sub_222C951FC();

    return v52 & 1;
  }
}

uint64_t sub_222B831B0(uint64_t a1, unint64_t a2)
{
  if (a2 != 5)
  {
    return sub_222B831C0(a1, a2);
  }

  return a1;
}

uint64_t sub_222B831C0(uint64_t a1, unint64_t a2)
{
  if (a2 >= 5)
  {
  }

  return result;
}

uint64_t sub_222B831D4(uint64_t a1, unint64_t a2)
{
  if (a2 != 5)
  {
    return sub_222B831E4(a1, a2);
  }

  return a1;
}

uint64_t sub_222B831E4(uint64_t a1, unint64_t a2)
{
  if (a2 >= 5)
  {
  }

  return result;
}

uint64_t InferenceFeatures.InferenceFeatureManager.__allocating_init()()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  return InferenceFeatures.InferenceFeatureManager.init()();
}

uint64_t InferenceFeatures.InferenceFeatureManager.init()()
{
  v0 = sub_222C9369C();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = sub_222C93CEC();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = [objc_opt_self() clientWithIdentifier_];
  v9[8] = sub_222B833DC();
  v9[9] = MEMORY[0x277D5FD30];
  v9[5] = v4;
  v9[3] = sub_222C9406C();
  v9[4] = MEMORY[0x277D5FBF0];
  __swift_allocate_boxed_opaque_existential_1(v9);
  sub_222C9405C();
  v5 = [objc_opt_self() currentLocale];
  sub_222C9368C();

  v6 = [objc_opt_self() sharedPreferences];
  sub_222C93CDC();
  v8[3] = sub_222C93D4C();
  v8[4] = MEMORY[0x277D5FB38];
  __swift_allocate_boxed_opaque_existential_1(v8);
  sub_222C93D3C();
  return sub_222C93D1C();
}

unint64_t sub_222B833DC()
{
  result = qword_280FE02B8[0];
  if (!qword_280FE02B8[0])
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, qword_280FE02B8);
  }

  return result;
}

uint64_t InferenceFeatures.InferenceFeatureManager.__deallocating_deinit()
{
  _s28SiriPrivateLearningInference0D8FeaturesO0D14FeatureManagerCfd_0();

  return swift_deallocClassInstance();
}

uint64_t sub_222B8348C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D025A50, &qword_222C99F18);
  v0 = *(sub_222C942CC() - 8);
  v1 = *(v0 + 72);
  v2 = (*(v0 + 80) + 32) & ~*(v0 + 80);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_222C99E80;
  sub_222C942BC();
  sub_222C942BC();
  sub_222C942BC();
  sub_222C942BC();
  sub_222C942BC();
  sub_222C942BC();
  sub_222C942BC();
  sub_222C942BC();
  sub_222C942BC();
  sub_222C942BC();
  sub_222C942BC();
  sub_222C942BC();
  sub_222C942BC();
  v4 = sub_222B72870(v3);
  swift_setDeallocating();
  swift_arrayDestroy();
  result = swift_deallocClassInstance();
  qword_27D025A28 = v4;
  return result;
}

uint64_t static InferenceFeatures.top13Locales.getter()
{
  if (qword_27D024680 != -1)
  {
    swift_once();
  }
}

uint64_t sub_222B83750()
{
  v0 = sub_222C93D0C();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D025A38, &unk_222C99EF8);
  v2 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0254F0, &qword_222C98710) - 8);
  v3 = *(*v2 + 72);
  v4 = (*(*v2 + 80) + 32) & ~*(*v2 + 80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_222C97C40;
  v6 = v5 + v4;
  v7 = v2[14];
  v8 = *MEMORY[0x277D5FD00];
  v9 = sub_222C942DC();
  (*(*(v9 - 8) + 104))(v6, v8, v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D025A40, &qword_222C99F08);
  v10 = sub_222C9407C();
  v11 = *(v10 - 8);
  v12 = *(v11 + 72);
  v13 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_222C96900;
  v15 = (v14 + v13);
  v16 = sub_222C93BAC();
  v15[3] = v16;
  v15[4] = sub_222B856A0();
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v15);
  (*(*(v16 - 8) + 104))(boxed_opaque_existential_1, *MEMORY[0x277D5FAE8], v16);
  v18 = *(v11 + 104);
  v18(v15, *MEMORY[0x277D5FBF8], v10);
  v19 = (v15 + v12);
  LODWORD(v12) = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D025A48, &qword_222C99F10) + 48);
  *v19 = sub_222C93DDC();
  sub_222C93D5C();
  v18(v19, *MEMORY[0x277D5FC00], v10);
  *(v6 + v7) = v14;
  v20 = *MEMORY[0x277D5FCD8];
  v21 = sub_222C941AC();
  (*(*(v21 - 8) + 104))(v6 + v7, v20, v21);
  sub_222B630B4(v5);
  swift_setDeallocating();
  sub_222B855D4(v6);
  swift_deallocClassInstance();
  sub_222C93CFC();
  v22 = sub_222C93BCC();
  v23 = *(v22 + 48);
  v24 = *(v22 + 52);
  swift_allocObject();
  result = sub_222C93BBC();
  qword_280FDFF60 = result;
  return result;
}

uint64_t sub_222B83B14()
{
  v0 = sub_222C93D0C();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D025A38, &unk_222C99EF8);
  v2 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0254F0, &qword_222C98710) - 8);
  v3 = *(*v2 + 72);
  v4 = (*(*v2 + 80) + 32) & ~*(*v2 + 80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_222C97C40;
  v6 = v5 + v4;
  v7 = v2[14];
  v8 = *MEMORY[0x277D5FD00];
  v9 = sub_222C942DC();
  (*(*(v9 - 8) + 104))(v6, v8, v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D025A40, &qword_222C99F08);
  v10 = sub_222C9407C();
  v11 = *(v10 - 8);
  v12 = *(v11 + 72);
  v13 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_222C97C40;
  v15 = (v14 + v13);
  v16 = sub_222C93BAC();
  v15[3] = v16;
  v15[4] = sub_222B856A0();
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v15);
  (*(*(v16 - 8) + 104))(boxed_opaque_existential_1, *MEMORY[0x277D5FAF0], v16);
  (*(v11 + 104))(v15, *MEMORY[0x277D5FBF8], v10);
  *(v6 + v7) = v14;
  v18 = *MEMORY[0x277D5FCD8];
  v19 = sub_222C941AC();
  (*(*(v19 - 8) + 104))(v6 + v7, v18, v19);
  sub_222B630B4(v5);
  swift_setDeallocating();
  sub_222B855D4(v6);
  swift_deallocClassInstance();
  sub_222C93CFC();
  v20 = sub_222C93BCC();
  v21 = *(v20 + 48);
  v22 = *(v20 + 52);
  swift_allocObject();
  result = sub_222C93BBC();
  qword_27D025A30 = result;
  return result;
}

uint64_t sub_222B83E84()
{
  v0 = sub_222C93D0C();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D025A38, &unk_222C99EF8);
  v2 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0254F0, &qword_222C98710) - 8);
  v3 = *(*v2 + 72);
  v4 = (*(*v2 + 80) + 32) & ~*(*v2 + 80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_222C97C40;
  v6 = v5 + v4;
  v7 = v2[14];
  v8 = *MEMORY[0x277D5FD00];
  v9 = sub_222C942DC();
  (*(*(v9 - 8) + 104))(v6, v8, v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D025A40, &qword_222C99F08);
  v10 = sub_222C9407C();
  v11 = *(v10 - 8);
  v12 = *(v11 + 72);
  v13 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_222C97C40;
  v15 = (v14 + v13);
  v16 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D025A48, &qword_222C99F10) + 48);
  *v15 = sub_222C93DCC();
  sub_222C93D5C();
  (*(v11 + 104))(v15, *MEMORY[0x277D5FC00], v10);
  *(v6 + v7) = v14;
  v17 = *MEMORY[0x277D5FCD8];
  v18 = sub_222C941AC();
  (*(*(v18 - 8) + 104))(v6 + v7, v17, v18);
  sub_222B630B4(v5);
  swift_setDeallocating();
  sub_222B855D4(v6);
  swift_deallocClassInstance();
  sub_222C93CFC();
  v19 = sub_222C93BCC();
  v20 = *(v19 + 48);
  v21 = *(v19 + 52);
  swift_allocObject();
  result = sub_222C93BBC();
  qword_280FDFFC0 = result;
  return result;
}

uint64_t sub_222B841C4()
{
  v0 = sub_222C93D0C();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D025A38, &unk_222C99EF8);
  v2 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0254F0, &qword_222C98710) - 8);
  v3 = *(*v2 + 72);
  v4 = (*(*v2 + 80) + 32) & ~*(*v2 + 80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_222C97C40;
  v6 = v5 + v4;
  v7 = v2[14];
  v8 = *MEMORY[0x277D5FD00];
  v9 = sub_222C942DC();
  (*(*(v9 - 8) + 104))(v6, v8, v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D025A40, &qword_222C99F08);
  v10 = sub_222C9407C();
  v11 = *(v10 - 8);
  v12 = *(v11 + 72);
  v13 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_222C96900;
  v15 = (v14 + v13);
  v16 = sub_222C93BAC();
  v15[3] = v16;
  v15[4] = sub_222B856A0();
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v15);
  (*(*(v16 - 8) + 104))(boxed_opaque_existential_1, *MEMORY[0x277D5FAE0], v16);
  v18 = *(v11 + 104);
  v18(v15, *MEMORY[0x277D5FBF8], v10);
  v19 = (v15 + v12);
  LODWORD(v12) = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D025A48, &qword_222C99F10) + 48);
  *v19 = sub_222C93D6C();
  sub_222C93DBC();
  v18(v19, *MEMORY[0x277D5FC00], v10);
  *(v6 + v7) = v14;
  v20 = *MEMORY[0x277D5FCD8];
  v21 = sub_222C941AC();
  (*(*(v21 - 8) + 104))(v6 + v7, v20, v21);
  sub_222B630B4(v5);
  swift_setDeallocating();
  sub_222B855D4(v6);
  swift_deallocClassInstance();
  sub_222C93CFC();
  v22 = sub_222C93BCC();
  v23 = *(v22 + 48);
  v24 = *(v22 + 52);
  swift_allocObject();
  result = sub_222C93BBC();
  qword_280FE0378 = result;
  return result;
}

uint64_t sub_222B84588()
{
  v0 = sub_222C93D0C();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D025A38, &unk_222C99EF8);
  v2 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0254F0, &qword_222C98710) - 8);
  v3 = *(*v2 + 72);
  v4 = (*(*v2 + 80) + 32) & ~*(*v2 + 80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_222C97C40;
  v6 = v5 + v4;
  v7 = v2[14];
  v8 = *MEMORY[0x277D5FD00];
  v9 = sub_222C942DC();
  (*(*(v9 - 8) + 104))(v6, v8, v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D025A40, &qword_222C99F08);
  v10 = sub_222C9407C();
  v11 = *(v10 - 8);
  v12 = *(v11 + 72);
  v13 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_222C96900;
  v15 = (v14 + v13);
  v16 = sub_222C93BAC();
  v15[3] = v16;
  v15[4] = sub_222B856A0();
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v15);
  (*(*(v16 - 8) + 104))(boxed_opaque_existential_1, *MEMORY[0x277D5FAD0], v16);
  v18 = *(v11 + 104);
  v18(v15, *MEMORY[0x277D5FBF8], v10);
  v19 = (v15 + v12);
  LODWORD(v12) = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D025A48, &qword_222C99F10) + 48);
  *v19 = sub_222C93D7C();
  sub_222C93DBC();
  v18(v19, *MEMORY[0x277D5FC00], v10);
  *(v6 + v7) = v14;
  v20 = *MEMORY[0x277D5FCD8];
  v21 = sub_222C941AC();
  (*(*(v21 - 8) + 104))(v6 + v7, v20, v21);
  sub_222B630B4(v5);
  swift_setDeallocating();
  sub_222B855D4(v6);
  swift_deallocClassInstance();
  sub_222C93CFC();
  v22 = sub_222C93BCC();
  v23 = *(v22 + 48);
  v24 = *(v22 + 52);
  swift_allocObject();
  result = sub_222C93BBC();
  qword_280FDFF90 = result;
  return result;
}

uint64_t sub_222B8494C()
{
  v0 = sub_222C93D0C();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D025A38, &unk_222C99EF8);
  v2 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0254F0, &qword_222C98710) - 8);
  v3 = *(*v2 + 72);
  v4 = (*(*v2 + 80) + 32) & ~*(*v2 + 80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_222C97C40;
  v6 = v5 + v4;
  v7 = v2[14];
  v8 = *MEMORY[0x277D5FD00];
  v9 = sub_222C942DC();
  (*(*(v9 - 8) + 104))(v6, v8, v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D025A40, &qword_222C99F08);
  v10 = sub_222C9407C();
  v11 = *(v10 - 8);
  v12 = *(v11 + 72);
  v13 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_222C97C40;
  v15 = (v14 + v13);
  v16 = sub_222C93BAC();
  v15[3] = v16;
  v15[4] = sub_222B856A0();
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v15);
  (*(*(v16 - 8) + 104))(boxed_opaque_existential_1, *MEMORY[0x277D5FAD8], v16);
  (*(v11 + 104))(v15, *MEMORY[0x277D5FBF8], v10);
  *(v6 + v7) = v14;
  v18 = *MEMORY[0x277D5FCD8];
  v19 = sub_222C941AC();
  (*(*(v19 - 8) + 104))(v6 + v7, v18, v19);
  sub_222B630B4(v5);
  swift_setDeallocating();
  sub_222B855D4(v6);
  swift_deallocClassInstance();
  sub_222C93CFC();
  v20 = sub_222C93BCC();
  v21 = *(v20 + 48);
  v22 = *(v20 + 52);
  swift_allocObject();
  result = sub_222C93BBC();
  qword_280FDFFA8 = result;
  return result;
}

uint64_t sub_222B84CBC()
{
  v0 = sub_222C93E8C();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = sub_222C93FEC();
  __swift_allocate_value_buffer(v2, qword_280FDFF30);
  __swift_project_value_buffer(v2, qword_280FDFF30);
  sub_222C93DAC();
  sub_222C93DBC();
  return sub_222C93FDC();
}

uint64_t static InferenceFeatures.pimsPartialRepetitionSimilarityThreshold.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_280FDFF28 != -1)
  {
    swift_once();
  }

  v2 = sub_222C93FEC();
  v3 = __swift_project_value_buffer(v2, qword_280FDFF30);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_222B84E1C()
{
  v0 = sub_222C93D0C();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D025A38, &unk_222C99EF8);
  v2 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0254F0, &qword_222C98710) - 8);
  v3 = *(*v2 + 72);
  v4 = (*(*v2 + 80) + 32) & ~*(*v2 + 80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_222C97C40;
  v6 = v5 + v4;
  v7 = v2[14];
  v8 = *MEMORY[0x277D5FD00];
  v9 = sub_222C942DC();
  (*(*(v9 - 8) + 104))(v6, v8, v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D025A40, &qword_222C99F08);
  v10 = sub_222C9407C();
  v11 = *(v10 - 8);
  v12 = *(v11 + 72);
  v13 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_222C97C40;
  v15 = (v14 + v13);
  v16 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D025A48, &qword_222C99F10) + 48);
  *v15 = sub_222C93D8C();
  sub_222C93DBC();
  (*(v11 + 104))(v15, *MEMORY[0x277D5FC00], v10);
  *(v6 + v7) = v14;
  v17 = *MEMORY[0x277D5FCD8];
  v18 = sub_222C941AC();
  (*(*(v18 - 8) + 104))(v6 + v7, v17, v18);
  sub_222B630B4(v5);
  swift_setDeallocating();
  sub_222B855D4(v6);
  swift_deallocClassInstance();
  sub_222C93CFC();
  v19 = sub_222C93BCC();
  v20 = *(v19 + 48);
  v21 = *(v19 + 52);
  swift_allocObject();
  result = sub_222C93BBC();
  qword_280FDFF78 = result;
  return result;
}

uint64_t sub_222B8515C()
{
  v0 = sub_222C93D0C();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D025A38, &unk_222C99EF8);
  v2 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0254F0, &qword_222C98710) - 8);
  v3 = *(*v2 + 72);
  v4 = (*(*v2 + 80) + 32) & ~*(*v2 + 80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_222C97C40;
  v6 = v5 + v4;
  v7 = v2[14];
  v8 = *MEMORY[0x277D5FD00];
  v9 = sub_222C942DC();
  (*(*(v9 - 8) + 104))(v6, v8, v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D025A40, &qword_222C99F08);
  v10 = sub_222C9407C();
  v11 = *(v10 - 8);
  v12 = *(v11 + 72);
  v13 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_222C97C40;
  v15 = (v14 + v13);
  v16 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D025A48, &qword_222C99F10) + 48);
  *v15 = sub_222C93D9C();
  sub_222C93DBC();
  (*(v11 + 104))(v15, *MEMORY[0x277D5FC00], v10);
  *(v6 + v7) = v14;
  v17 = *MEMORY[0x277D5FCD8];
  v18 = sub_222C941AC();
  (*(*(v18 - 8) + 104))(v6 + v7, v17, v18);
  sub_222B630B4(v5);
  swift_setDeallocating();
  sub_222B855D4(v6);
  swift_deallocClassInstance();
  sub_222C93CFC();
  v19 = sub_222C93BCC();
  v20 = *(v19 + 48);
  v21 = *(v19 + 52);
  swift_allocObject();
  result = sub_222C93BBC();
  qword_280FDFF50 = result;
  return result;
}

uint64_t sub_222B8549C(void *a1, uint64_t *a2)
{
  if (*a1 == -1)
  {
    v3 = *a2;
  }

  else
  {
    swift_once();
    v6 = *a2;
  }
}

uint64_t type metadata accessor for InferenceFeatures.InferenceFeatureManager()
{
  result = qword_280FE03A8;
  if (!qword_280FE03A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_222B855D4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0254F0, &qword_222C98710);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
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

unint64_t sub_222B856A0()
{
  result = qword_280FE03C0;
  if (!qword_280FE03C0)
  {
    sub_222C93BAC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FE03C0);
  }

  return result;
}

uint64_t ContactSuggestionProvidedClassification.turnId.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_222C9367C();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t ContactSuggestionProvidedClassification.contactSuggestion.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for ContactSuggestionProvidedClassification() + 20);

  return sub_222B85800(v3, a1);
}

uint64_t type metadata accessor for ContactSuggestionProvidedClassification()
{
  result = qword_280FDBF30;
  if (!qword_280FDBF30)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_222B85800(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PlusContactSuggestionRuntimeSummary(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t ContactSuggestionProvidedClassification.userPrompt.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for ContactSuggestionProvidedClassification() + 24);

  return sub_222B858A8(v3, a1);
}

uint64_t sub_222B858A8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D025028, &unk_222C96EC0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t ContactSuggestionProvidedClassification.referencedTurns.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D024F30, &qword_222C96CE0);
  v1 = sub_222C9367C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 72);
  v4 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_222C97C40;
  (*(v2 + 16))(v5 + v4, v0, v1);
  return v5;
}

uint64_t ContactSuggestionProvidedClassification.referencedEvents.getter()
{
  v1 = *(v0 + *(type metadata accessor for ContactSuggestionProvidedClassification() + 28));
}

uint64_t sub_222B85A2C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D024F30, &qword_222C96CE0);
  v1 = sub_222C9367C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 72);
  v4 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_222C97C40;
  (*(v2 + 16))(v5 + v4, v0, v1);
  return v5;
}

void sub_222B85B40()
{
  sub_222C9367C();
  if (v0 <= 0x3F)
  {
    type metadata accessor for PlusContactSuggestionRuntimeSummary(319);
    if (v1 <= 0x3F)
    {
      sub_222B85BF4();
      if (v2 <= 0x3F)
      {
        sub_222B85C4C();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_222B85BF4()
{
  if (!qword_280FDE080)
  {
    type metadata accessor for EntityPromptClassification();
    v0 = sub_222C94B5C();
    if (!v1)
    {
      atomic_store(v0, &qword_280FDE080);
    }
  }
}

void sub_222B85C4C()
{
  if (!qword_280FDB798)
  {
    v0 = sub_222C947FC();
    if (!v1)
    {
      atomic_store(v0, &qword_280FDB798);
    }
  }
}

uint64_t static EntityNodeComparison.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 16) == *(a2 + 16) && *(a1 + 24) == *(a2 + 24))
  {
    return (*(a1 + 32) ^ *(a2 + 32) ^ 1) & 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_222B85CF4()
{
  type metadata accessor for EntityNodeComparator();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D025A70, &qword_222C9A048);
  v0 = sub_222C944EC();
  MEMORY[0x223DC9330](v0);

  result = MEMORY[0x223DC9330](93, 0xE100000000000000);
  qword_27D025A58 = 91;
  unk_27D025A60 = 0xE100000000000000;
  return result;
}

uint64_t EntityNodeComparator.__allocating_init(taskNamesOfInterest:restatementThreshold:allowsIdenticalUtterances:)(uint64_t a1, char a2, double a3)
{
  result = swift_allocObject();
  *(result + 32) = a1;
  *(result + 16) = a3;
  *(result + 24) = a2;
  return result;
}

uint64_t EntityNodeComparator.init(taskNamesOfInterest:restatementThreshold:allowsIdenticalUtterances:)(uint64_t a1, char a2, double a3)
{
  *(v3 + 32) = a1;
  *(v3 + 16) = a3;
  *(v3 + 24) = a2;
  return v3;
}

uint64_t sub_222B85DE8(uint64_t a1)
{
  v1 = *(a1 + *(type metadata accessor for FeaturisedTurn(0) + 24));
  result = sub_222B41D30(v1);
  if (result)
  {
    v3 = *(result + 16);

    if (v3)
    {
      result = sub_222B417F4(v1);
      if (result)
      {
        v4 = *(result + 16);

        return v4 != 0;
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_222B85E54@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = type metadata accessor for FeaturisedTurn(0);
  result = sub_222B41648(*(a1 + *(v7 + 24)));
  if (result)
  {
    v9 = result;
    v10 = sub_222B41648(*(a2 + *(v7 + 24)));
    if (v10)
    {
      v11 = v10;
      v12 = *(v3 + 32);

      v13 = sub_222B72040(v9);

      v14 = sub_222B861C8(v13, v12, sub_222B89428, sub_222B89428);

      v15 = sub_222B72040(v11);

      v16 = sub_222B861C8(v15, v14, sub_222B89428, sub_222B89428);

      v17 = v16[2];

      if (v17 == 1)
      {
        result = sub_222B86568(a1, a2);
        if ((v18 & 1) == 0)
        {
          v19 = result;
          v20 = *(v3 + 16);
          v21 = *(v3 + 24);
          v22 = type metadata accessor for EntityNodeComparison();
          v23 = swift_allocObject();
          *(v23 + 16) = v19;
          *(v23 + 24) = v20;
          *(v23 + 32) = v21;
          *(a3 + 24) = v22;
          result = sub_222B867C0();
          *(a3 + 32) = result;
          *a3 = v23;
          return result;
        }
      }
    }

    else
    {
    }
  }

  *(a3 + 32) = 0;
  *a3 = 0u;
  *(a3 + 16) = 0u;
  return result;
}

uint64_t EntityNodeComparator.deinit()
{
  v1 = *(v0 + 32);

  return v0;
}

uint64_t EntityNodeComparator.__deallocating_deinit()
{
  v1 = *(v0 + 32);

  return swift_deallocClassInstance();
}

void *sub_222B86050(void *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void *, uint64_t, uint64_t, uint64_t))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v8 = result;
      v9 = a2;
      bzero(result, 8 * a2);
      result = v8;
      a2 = v9;
    }

    v10 = a5(result, a2, a3, a4);

    return v10;
  }

  return result;
}

void *sub_222B860E8(uint64_t a1, uint64_t a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = *MEMORY[0x277D85DE8];

  return sub_222B861C8(a1, a2, sub_222B89428, sub_222B89428);
}

void *sub_222B86158(uint64_t a1, uint64_t a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = *MEMORY[0x277D85DE8];

  return sub_222B861C8(a1, a2, sub_222B89804, sub_222B89804);
}

void *sub_222B861C8(uint64_t a1, uint64_t a2, uint64_t (*a3)(char *, unint64_t, uint64_t, uint64_t), uint64_t (*a4)(void *, uint64_t, uint64_t, uint64_t))
{
  v17[1] = *MEMORY[0x277D85DE8];
  v8 = *(a2 + 32);
  v9 = v8 & 0x3F;
  v10 = ((1 << v8) + 63) >> 6;
  v11 = 8 * v10;

  if (v9 <= 0xD || (isStackAllocationSafe = swift_stdlib_isStackAllocationSafe(), (isStackAllocationSafe & 1) != 0))
  {
    MEMORY[0x28223BE20](isStackAllocationSafe);
    bzero(v17 - ((v11 + 15) & 0x3FFFFFFFFFFFFFF0), v11);
    v13 = a3(v17 - ((v11 + 15) & 0x3FFFFFFFFFFFFFF0), v10, a2, a1);
  }

  else
  {
    v16 = swift_slowAlloc();

    v13 = sub_222B86050(v16, v10, a2, a1, a4);

    MEMORY[0x223DCA8C0](v16, -1, -1);
  }

  v14 = *MEMORY[0x277D85DE8];
  return v13;
}

uint64_t sub_222B863A4(unint64_t a1, uint64_t a2)
{
  v13[1] = *MEMORY[0x277D85DE8];
  v4 = *(a2 + 32);
  v5 = v4 & 0x3F;
  v6 = ((1 << v4) + 63) >> 6;
  v7 = 8 * v6;

  if (v5 <= 0xD || (isStackAllocationSafe = swift_stdlib_isStackAllocationSafe(), (isStackAllocationSafe & 1) != 0))
  {
    MEMORY[0x28223BE20](isStackAllocationSafe);
    bzero(v13 - ((v7 + 15) & 0x3FFFFFFFFFFFFFF0), v7);
    v9 = sub_222B8A1CC(v13 - ((v7 + 15) & 0x3FFFFFFFFFFFFFF0), v6, a2, a1);
  }

  else
  {
    v12 = swift_slowAlloc();

    v9 = sub_222B89320(v12, v6, a2, a1);

    MEMORY[0x223DCA8C0](v12, -1, -1);
  }

  v10 = *MEMORY[0x277D85DE8];
  return v9;
}

unint64_t sub_222B867C0()
{
  result = qword_27D025A68;
  if (!qword_27D025A68)
  {
    type metadata accessor for EntityNodeComparison();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D025A68);
  }

  return result;
}

uint64_t SELFPlusSuggestionIdMapper.__allocating_init(picsIds:)(uint64_t a1)
{
  v2 = swift_allocObject();
  v3 = sub_222B632D4(MEMORY[0x277D84F90]);
  *(v2 + 16) = a1;
  *(v2 + 24) = v3;
  return v2;
}

uint64_t SELFPlusSuggestionIdMapper.init(picsIds:)(uint64_t a1)
{
  v3 = sub_222B632D4(MEMORY[0x277D84F90]);
  *(v1 + 16) = a1;
  *(v1 + 24) = v3;
  return v1;
}

uint64_t sub_222B86928(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v40 = a3;
  v39 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D026290, &qword_222C96B40);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v38 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v34 - v9;
  MEMORY[0x28223BE20](v8);
  v41 = &v34 - v11;
  v12 = sub_222C9367C();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v34 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v34 - v19;
  v21 = MEMORY[0x28223BE20](v18);
  v23 = &v34 - v22;
  MEMORY[0x28223BE20](v21);
  v36 = &v34 - v24;
  v25 = *(v13 + 16);
  v25(v23, v40, v12);
  v40 = a2;
  v25(v20, a2, v12);
  v25(v17, v23, v12);
  sub_222C9360C();
  v37 = v17;
  sub_222C42B54(v17, v10);
  v26 = *(v13 + 8);
  v26(v20, v12);
  v35 = v26;
  v26(v23, v12);
  v27 = *(v13 + 48);
  if (v27(v10, 1, v12))
  {
    sub_222B86DA0(v10);
    v28 = 1;
  }

  else
  {
    (*(v13 + 32))(v41, v10, v12);
    v28 = 0;
  }

  v29 = v41;
  v34 = *(v13 + 56);
  v34(v41, v28, 1, v12);
  if (v27(v29, 1, v12) == 1)
  {
    return sub_222B86DA0(v41);
  }

  v31 = v36;
  (*(v13 + 32))(v36, v41, v12);
  v32 = v37;
  v25(v37, v31, v12);
  v33 = v38;
  v25(v38, v40, v12);
  v34(v33, 0, 1, v12);
  sub_222C4A900(v33, v32);
  return v35(v31, v12);
}

uint64_t SELFPlusSuggestionIdMapper.deinit()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return v0;
}

uint64_t SELFPlusSuggestionIdMapper.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return swift_deallocClassInstance();
}

uint64_t sub_222B86DA0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D026290, &qword_222C96B40);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_222B86E08()
{
  type metadata accessor for PlusContactSuggestionGenerator();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D025AB8, &qword_222C9A1F0);
  v0 = sub_222C944EC();
  MEMORY[0x223DC9330](v0);

  result = MEMORY[0x223DC9330](93, 0xE100000000000000);
  qword_27D025A78 = 91;
  unk_27D025A80 = 0xE100000000000000;
  return result;
}

double PlusContactSuggestionGenerator.__allocating_init()()
{
  v0 = [objc_allocWithZone(MEMORY[0x277CBDAB8]) init];
  type metadata accessor for PlusContactSuggestionGenerator();
  v1 = swift_allocObject();
  result = 0.0;
  *(v1 + 24) = xmmword_222C9A0B0;
  *(v1 + 16) = v0;
  return result;
}

double PlusContactSuggestionGenerator.__allocating_init(store:)(uint64_t a1)
{
  v2 = swift_allocObject();
  result = 0.0;
  *(v2 + 24) = xmmword_222C9A0B0;
  *(v2 + 16) = a1;
  return result;
}

uint64_t PlusContactSuggestionGenerator.init(store:)(uint64_t a1)
{
  *(v1 + 24) = xmmword_222C9A0B0;
  *(v1 + 16) = a1;
  return v1;
}

void *sub_222B86F68(uint64_t a1, uint64_t a2)
{
  v55 = a2;
  v65 = *MEMORY[0x277D85DE8];
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D025A88, &unk_222C9A0C0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v50 - v5;
  v53 = type metadata accessor for PlusContactSuggestion();
  v52 = *(v53 - 8);
  v7 = *(v52 + 64);
  MEMORY[0x28223BE20](v53);
  v51 = &v50 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a1 + 16);
  v54 = v6;
  if (v9)
  {
    v10 = a1 + 32;
    v57 = MEMORY[0x277D84F90];
    while (1)
    {
      sub_222B43E3C(v10, v64);
      sub_222B405A0(v64, &v61);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D024E28, &unk_222C995F0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D024F80, &qword_222C9A0D0);
      if (swift_dynamicCast())
      {
        if (*(&v59 + 1))
        {
          sub_222B79B78(&v58, &v61);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v57 = sub_222B4AC80(0, v57[2] + 1, 1, v57);
          }

          v12 = v57[2];
          v11 = v57[3];
          if (v12 >= v11 >> 1)
          {
            v57 = sub_222B4AC80((v11 > 1), v12 + 1, 1, v57);
          }

          v13 = v57;
          v57[2] = v12 + 1;
          sub_222B79B78(&v61, &v13[6 * v12 + 4]);
          goto LABEL_5;
        }
      }

      else
      {
        v59 = 0u;
        v60 = 0u;
        v58 = 0u;
      }

      sub_222B4FCD4(&v58, &qword_27D025A90, qword_222C9A0D8);
LABEL_5:
      v10 += 40;
      if (!--v9)
      {
        goto LABEL_14;
      }
    }
  }

  v57 = MEMORY[0x277D84F90];
LABEL_14:
  v14 = v57;
  v56 = v57[2];
  if (v56)
  {
    v15 = 0;
    v16 = v57 + 4;
    v17 = MEMORY[0x277D84F90];
    v18 = v55;
    while (v15 < v14[2])
    {
      sub_222B79B90(v16, &v61);
      if (!*(v18 + 16))
      {
        goto LABEL_23;
      }

      v19 = v62;
      v20 = v63;
      __swift_project_boxed_opaque_existential_1(&v61, v62);
      v21 = (*(v20 + 24))(v19, v20);
      v22 = *(v21 + 32);
      v23 = v22 & 0x3F;
      v24 = ((1 << v22) + 63) >> 6;
      v25 = 8 * v24;

      if (v23 <= 0xD || (isStackAllocationSafe = swift_stdlib_isStackAllocationSafe(), (isStackAllocationSafe & 1) != 0))
      {
        MEMORY[0x28223BE20](isStackAllocationSafe);
        bzero(&v50 - ((v25 + 15) & 0x3FFFFFFFFFFFFFF0), v25);
        v27 = sub_222B8A1CC(&v50 - ((v25 + 15) & 0x3FFFFFFFFFFFFFF0), v24, v21, v18);
      }

      else
      {
        v32 = swift_slowAlloc();

        v27 = sub_222B89320(v32, v24, v21, v18);

        MEMORY[0x223DCA8C0](v32, -1, -1);
        v18 = v55;
      }

      v14 = v57;
      v28 = *(v27 + 16);

      if (!v28)
      {
        __swift_destroy_boxed_opaque_existential_0Tm(&v61);
      }

      else
      {
LABEL_23:
        sub_222B79B78(&v61, &v58);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *&v64[0] = v17;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_222B4C828(0, *(v17 + 16) + 1, 1);
          v17 = *&v64[0];
        }

        v31 = *(v17 + 16);
        v30 = *(v17 + 24);
        if (v31 >= v30 >> 1)
        {
          sub_222B4C828((v30 > 1), v31 + 1, 1);
          v17 = *&v64[0];
        }

        *(v17 + 16) = v31 + 1;
        sub_222B79B78(&v58, (v17 + 48 * v31 + 32));
      }

      v15 = (v15 + 1);
      v16 += 6;
      if (v56 == v15)
      {
        goto LABEL_31;
      }
    }

LABEL_48:
    __break(1u);
  }

  v17 = MEMORY[0x277D84F90];
LABEL_31:

  v33 = sub_222B8AABC(v17);

  v34 = 1 << *(v33 + 32);
  v35 = -1;
  if (v34 < 64)
  {
    v35 = ~(-1 << v34);
  }

  v36 = v35 & *(v33 + 64);
  v37 = (v34 + 63) >> 6;
  v57 = (v52 + 48);

  v38 = 0;
  v56 = MEMORY[0x277D84F90];
  while (v36)
  {
    v39 = v38;
LABEL_39:
    v40 = __clz(__rbit64(v36));
    v36 &= v36 - 1;
    v41 = (v39 << 9) | (8 * v40);
    v42 = *(*(v33 + 48) + v41);
    v43 = *(*(v33 + 56) + v41);

    v44 = v54;
    sub_222B8774C(v42, v43, v55, v54);

    if ((*v57)(v44, 1, v53) == 1)
    {
      sub_222B4FCD4(v44, &qword_27D025A88, &unk_222C9A0C0);
      v38 = v39;
    }

    else
    {
      sub_222B8B3DC(v44, v51, type metadata accessor for PlusContactSuggestion);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v56 = sub_222B4ACA4(0, v56[2] + 1, 1, v56);
      }

      v46 = v56[2];
      v45 = v56[3];
      if (v46 >= v45 >> 1)
      {
        v56 = sub_222B4ACA4(v45 > 1, v46 + 1, 1, v56);
      }

      v47 = v56;
      v56[2] = v46 + 1;
      sub_222B8B3DC(v51, v47 + ((*(v52 + 80) + 32) & ~*(v52 + 80)) + *(v52 + 72) * v46, type metadata accessor for PlusContactSuggestion);
      v38 = v39;
    }
  }

  while (1)
  {
    v39 = v38 + 1;
    if (__OFADD__(v38, 1))
    {
      __break(1u);
      goto LABEL_48;
    }

    if (v39 >= v37)
    {
      break;
    }

    v36 = *(v33 + 64 + 8 * v39);
    ++v38;
    if (v36)
    {
      goto LABEL_39;
    }
  }

  v48 = *MEMORY[0x277D85DE8];
  return v56;
}

uint64_t sub_222B8774C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v117 = a3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D025AA8, &qword_222C9A1E0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v107 - v9;
  v122 = type metadata accessor for ThinContactGroundTruth();
  v120 = *(v122 - 8);
  v11 = *(v120 + 64);
  MEMORY[0x28223BE20](v122);
  v121 = &v107 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v116 = sub_222C935EC();
  v115 = *(v116 - 8);
  v13 = *(v115 + 64);
  MEMORY[0x28223BE20](v116);
  v114 = &v107 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_222C9367C();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v107 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v18);
  v23 = &v107 - v22;
  MEMORY[0x28223BE20](v21);
  v25 = &v107 - v24;
  v26 = UsoEntity_common_Person.convertUSOPersonToString()();
  if (!v26.value._object)
  {
    if (qword_280FDFE78 != -1)
    {
      swift_once();
    }

    v33 = sub_222C9431C();
    __swift_project_value_buffer(v33, qword_280FE2340);
    v34 = sub_222C942FC();
    v35 = sub_222C94A4C();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      *&v125 = v37;
      *v36 = 136315138;
      if (qword_27D0246A8 != -1)
      {
        swift_once();
      }

      *(v36 + 4) = sub_222B437C0(qword_27D025A78, unk_27D025A80, &v125);
      _os_log_impl(&dword_222B39000, v34, v35, "%s Failed to convert contact query to string. Unable to generate PICS for non string convertible cases.", v36, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v37);
      MEMORY[0x223DCA8C0](v37, -1, -1);
      MEMORY[0x223DCA8C0](v36, -1, -1);
    }

    goto LABEL_59;
  }

  v113 = v25;
  v108 = v23;
  v109 = v20;
  v110 = v16;
  v111 = v15;
  v112 = a1;
  v119 = a4;
  if (qword_280FDFE78 != -1)
  {
    swift_once();
  }

  v27 = sub_222C9431C();
  __swift_project_value_buffer(v27, qword_280FE2340);

  v28 = sub_222C942FC();
  v29 = sub_222C94A3C();

  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    *&v125 = v31;
    *v30 = 136315650;
    if (qword_27D0246A8 != -1)
    {
      swift_once();
    }

    *(v30 + 4) = sub_222B437C0(qword_27D025A78, unk_27D025A80, &v125);
    *(v30 + 12) = 2048;
    *(v30 + 14) = *(a2 + 16);

    *(v30 + 22) = 2080;
    v32 = sub_222B437C0(v26.value._countAndFlagsBits, v26.value._object, &v125);

    *(v30 + 24) = v32;
    _os_log_impl(&dword_222B39000, v28, v29, "%s Reviewing %ld Ground truth events related to query %s", v30, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x223DCA8C0](v31, -1, -1);
    MEMORY[0x223DCA8C0](v30, -1, -1);
  }

  else
  {
  }

  v38 = sub_222B8AE00(a2);
  v39 = sub_222C942FC();
  v40 = sub_222C94A3C();
  if (os_log_type_enabled(v39, v40))
  {
    v41 = swift_slowAlloc();
    v42 = swift_slowAlloc();
    *&v125 = v42;
    *v41 = 136315650;
    if (qword_27D0246A8 != -1)
    {
      swift_once();
    }

    *(v41 + 4) = sub_222B437C0(qword_27D025A78, unk_27D025A80, &v125);
    *(v41 + 12) = 2048;
    *(v41 + 14) = *(v38 + 16);
    *(v41 + 22) = 2080;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D025AB0, &qword_222C9A1E8);
    v43 = sub_222C9438C();
    v45 = sub_222B437C0(v43, v44, &v125);

    *(v41 + 24) = v45;
    _os_log_impl(&dword_222B39000, v39, v40, "%s Found %ld potential contact mappings based on supplied ground truth. Ground Truth Summary=%s", v41, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x223DCA8C0](v42, -1, -1);
    MEMORY[0x223DCA8C0](v41, -1, -1);
  }

  v46 = sub_222B890BC(v38);

  v47 = sub_222C942FC();
  v48 = sub_222C94A3C();
  if (os_log_type_enabled(v47, v48))
  {
    v49 = swift_slowAlloc();
    v50 = swift_slowAlloc();
    *&v125 = v50;
    *v49 = 136315394;
    if (qword_27D0246A8 != -1)
    {
      swift_once();
    }

    *(v49 + 4) = sub_222B437C0(qword_27D025A78, unk_27D025A80, &v125);
    *(v49 + 12) = 2048;
    *(v49 + 14) = *(v46 + 16);

    _os_log_impl(&dword_222B39000, v47, v48, "%s Found %ld contact mapping with positive signals", v49, 0x16u);
    __swift_destroy_boxed_opaque_existential_0Tm(v50);
    MEMORY[0x223DCA8C0](v50, -1, -1);
    MEMORY[0x223DCA8C0](v49, -1, -1);
  }

  else
  {
  }

  v51 = sub_222BB76B4(v46);
  if (!v52)
  {

    goto LABEL_33;
  }

  v54 = v51;
  v55 = v52;
  v56 = v53;
  v57 = *(v46 + 16);

  if (v57 != 1)
  {

LABEL_33:
    v60 = sub_222C942FC();
    v61 = sub_222C94A3C();
    if (os_log_type_enabled(v60, v61))
    {
      v62 = swift_slowAlloc();
      v63 = swift_slowAlloc();
      *&v125 = v63;
      *v62 = 136315138;
      a4 = v119;
      if (qword_27D0246A8 != -1)
      {
        swift_once();
      }

      *(v62 + 4) = sub_222B437C0(qword_27D025A78, unk_27D025A80, &v125);
      v64 = "%s Skipping PICS generation as not all ground truth maps to the same contact";
      goto LABEL_37;
    }

    goto LABEL_58;
  }

  swift_bridgeObjectRetain_n();
  v58 = sub_222B88C5C();
  if (v59)
  {
    if (v54 == v58 && v55 == v59)
    {

      swift_bridgeObjectRelease_n();
      goto LABEL_41;
    }

    v65 = sub_222C951FC();

    if (v65)
    {

LABEL_41:

      v60 = sub_222C942FC();
      v61 = sub_222C94A3C();
      if (os_log_type_enabled(v60, v61))
      {
        v62 = swift_slowAlloc();
        v63 = swift_slowAlloc();
        *&v125 = v63;
        *v62 = 136315138;
        a4 = v119;
        if (qword_27D0246A8 != -1)
        {
          swift_once();
        }

        *(v62 + 4) = sub_222B437C0(qword_27D025A78, unk_27D025A80, &v125);
        v64 = "%s Skipping PICS generation as resolved contact is meCard";
LABEL_37:
        _os_log_impl(&dword_222B39000, v60, v61, v64, v62, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v63);
        MEMORY[0x223DCA8C0](v63, -1, -1);
        MEMORY[0x223DCA8C0](v62, -1, -1);

LABEL_59:
        v72 = type metadata accessor for PlusContactSuggestion();
        v73 = *(*(v72 - 8) + 56);

        return v73(a4, 1, 1, v72);
      }

      goto LABEL_58;
    }
  }

  else
  {
  }

  v66 = *(v56 + 16);
  v67 = (v56 + 32);
  v68 = v66;
  v69 = (v56 + 32);
  while (v68)
  {
    v70 = *v69++;
    --v68;
    if (v70 == 6)
    {

      swift_bridgeObjectRelease_n();
      v60 = sub_222C942FC();
      v61 = sub_222C94A3C();
      if (os_log_type_enabled(v60, v61))
      {
        v62 = swift_slowAlloc();
        v63 = swift_slowAlloc();
        *&v125 = v63;
        *v62 = 136315138;
        a4 = v119;
        if (qword_27D0246A8 != -1)
        {
          swift_once();
        }

        *(v62 + 4) = sub_222B437C0(qword_27D025A78, unk_27D025A80, &v125);
        v64 = "%s Skipping PICS generation as negative signals exist for the only provided contact mapping.";
        goto LABEL_37;
      }

LABEL_58:

      a4 = v119;
      goto LABEL_59;
    }
  }

  do
  {
    if (!v66)
    {

      swift_bridgeObjectRelease_n();
      v60 = sub_222C942FC();
      v61 = sub_222C94A3C();
      if (os_log_type_enabled(v60, v61))
      {
        v62 = swift_slowAlloc();
        v63 = swift_slowAlloc();
        *&v125 = v63;
        *v62 = 136315138;
        a4 = v119;
        if (qword_27D0246A8 != -1)
        {
          swift_once();
        }

        *(v62 + 4) = sub_222B437C0(qword_27D025A78, unk_27D025A80, &v125);
        v64 = "%s Skipping PICS generation as mapping has no strong positive signals.";
        goto LABEL_37;
      }

      goto LABEL_58;
    }

    v71 = *v67++;
    --v66;
  }

  while (v71 != 3);

  v75 = sub_222B8B210(v54, v55, a2);
  sub_222C9366C();
  v76 = *(a2 + 16);

  v118 = v75;
  if (v76)
  {
    v77 = a2 + 32;
    v78 = MEMORY[0x277D84F90];
    while (1)
    {
      sub_222B79B90(v77, &v125);
      v79 = v126;
      v80 = v127;
      __swift_project_boxed_opaque_existential_1(&v125, v126);
      if (*((*(v80 + 16))(v79, v80) + 16))
      {
        sub_222B8C9DC(v54, v55);
        v82 = v81;

        if (v82)
        {
          sub_222B79B78(&v125, v124);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v123[0] = v78;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_222B4C828(0, *(v78 + 16) + 1, 1);
            v78 = v123[0];
          }

          v85 = *(v78 + 16);
          v84 = *(v78 + 24);
          if (v85 >= v84 >> 1)
          {
            sub_222B4C828((v84 > 1), v85 + 1, 1);
            v78 = v123[0];
          }

          *(v78 + 16) = v85 + 1;
          sub_222B79B78(v124, (v78 + 48 * v85 + 32));
          goto LABEL_66;
        }
      }

      else
      {
      }

      __swift_destroy_boxed_opaque_existential_0Tm(&v125);
LABEL_66:
      v77 += 48;
      if (!--v76)
      {
        goto LABEL_75;
      }
    }
  }

  v78 = MEMORY[0x277D84F90];
LABEL_75:

  v86 = sub_222C6724C(v78);

  v87 = v117;

  v118 = sub_222C6E8C0(v118, v87);
  v88 = v114;
  sub_222C935DC();
  sub_222C935BC();
  v90 = v89;
  (*(v115 + 8))(v88, v116);
  v91 = *(v86 + 16);
  if (v91)
  {
    v117 = v86;
    v92 = v86 + 32;
    v93 = (v120 + 48);
    v94 = MEMORY[0x277D84F90];
    do
    {
      sub_222B43E3C(v92, &v125);
      sub_222B43E3C(&v125, v124);
      v123[0] = v54;
      v123[1] = v55;
      v123[2] = 0;
      v123[3] = 0;

      ThinContactGroundTruth.init(completeGroundTruth:rightHandContext:)(v124, v123, v10);
      __swift_destroy_boxed_opaque_existential_0Tm(&v125);
      if ((*v93)(v10, 1, v122) == 1)
      {
        sub_222B4FCD4(v10, &qword_27D025AA8, &qword_222C9A1E0);
      }

      else
      {
        sub_222B8B3DC(v10, v121, type metadata accessor for ThinContactGroundTruth);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v94 = sub_222B4A984(0, v94[2] + 1, 1, v94);
        }

        v96 = v94[2];
        v95 = v94[3];
        if (v96 >= v95 >> 1)
        {
          v94 = sub_222B4A984(v95 > 1, v96 + 1, 1, v94);
        }

        v94[2] = v96 + 1;
        sub_222B8B3DC(v121, v94 + ((*(v120 + 80) + 32) & ~*(v120 + 80)) + *(v120 + 72) * v96, type metadata accessor for ThinContactGroundTruth);
      }

      v92 += 40;
      --v91;
    }

    while (v91);
  }

  else
  {

    v94 = MEMORY[0x277D84F90];
  }

  v97 = v110;
  v98 = *(v110 + 16);
  v99 = v108;
  v100 = v111;
  v98(v108, v113, v111);
  v101 = v109;
  v98(v109, v99, v100);
  v102 = v119;
  v98(v119, v101, v100);
  v103 = type metadata accessor for PlusContactSuggestion();
  *&v102[v103[5]] = v112;

  v104 = &v102[v103[6]];
  *v104 = v54;
  v104[1] = v55;
  v104[2] = 0;
  v104[3] = 0;
  *&v102[v103[7]] = sub_222C17488(50, v94);
  *&v102[v103[8]] = v90;
  *&v102[v103[9]] = v118;
  *&v102[v103[10]] = 0;
  v105 = sub_222C17748(0x32uLL, MEMORY[0x277D84F90]);
  v106 = *(v97 + 8);
  v106(v101, v100);
  v106(v99, v100);
  v106(v113, v100);
  *&v102[v103[11]] = v105;
  return (*(*(v103 - 1) + 56))(v102, 0, 1, v103);
}

Swift::String_optional __swiftcall UsoEntity_common_Person.convertUSOPersonToString()()
{
  v0 = sub_222C944DC();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = sub_222C931FC();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = sub_222C9323C();
  v5 = *(v4 + 48);
  v6 = *(v4 + 52);
  swift_allocObject();
  sub_222C9322C();
  sub_222C931EC();
  sub_222C9320C();
  sub_222C9378C();
  sub_222B8AD58(&qword_27D025A98);
  v7 = sub_222C9321C();
  v9 = v8;
  sub_222C944CC();
  v10 = sub_222C944BC();
  v12 = v11;
  sub_222B803C0(v7, v9);

  v13 = v12;
  v14 = v10;
  result.value._object = v13;
  result.value._countAndFlagsBits = v14;
  return result;
}

uint64_t sub_222B88C5C()
{
  v1 = v0;
  v2 = v0[3];
  v3 = v0[4];
  v4 = v2;
  if (v3 == 1)
  {
    v5 = v1[2];
    v6 = sub_222BB250C();
    if (v6)
    {
      v7 = v6;
      v8 = [v6 identifier];

      v4 = sub_222C9449C();
      v10 = v9;
    }

    else
    {
      v4 = 0;
      v10 = 0;
    }

    v11 = v1[3];
    v12 = v1[4];
    v1[3] = v4;
    v1[4] = v10;

    sub_222B8AD10(v11, v12);
  }

  sub_222B8ADEC(v2, v3);
  return v4;
}

uint64_t PlusContactSuggestionGenerator.__deallocating_deinit()
{
  sub_222B8AD10(*(v0 + 24), *(v0 + 32));

  return swift_deallocClassInstance();
}

uint64_t UsoEntity_common_Person.description.getter()
{
  v1 = UsoEntity_common_Person.convertUSOPersonToString()();
  result = v1.value._countAndFlagsBits;
  if (!v1.value._object)
  {
    return 0x6E776F6E6B6E553CLL;
  }

  return result;
}

uint64_t UsoEntity_common_Person.hash(into:)()
{
  if (!UsoEntity_common_Person.convertUSOPersonToString()().value._object)
  {
    return sub_222C9531C();
  }

  sub_222C9531C();
  sub_222C9452C();
}

uint64_t UsoEntity_common_Person.hashValue.getter()
{
  sub_222C952FC();
  if (UsoEntity_common_Person.convertUSOPersonToString()().value._object)
  {
    sub_222C9531C();
    sub_222C9452C();
  }

  else
  {
    sub_222C9531C();
  }

  return sub_222C9534C();
}

uint64_t sub_222B88ED4()
{
  v1 = *v0;
  sub_222C952FC();
  if (UsoEntity_common_Person.convertUSOPersonToString()().value._object)
  {
    sub_222C9531C();
    sub_222C9452C();
  }

  else
  {
    sub_222C9531C();
  }

  return sub_222C9534C();
}

uint64_t sub_222B88F5C()
{
  v1 = *v0;
  if (!UsoEntity_common_Person.convertUSOPersonToString()().value._object)
  {
    return sub_222C9531C();
  }

  sub_222C9531C();
  sub_222C9452C();
}

uint64_t sub_222B88FE4()
{
  sub_222C952FC();
  v1 = *v0;
  if (UsoEntity_common_Person.convertUSOPersonToString()().value._object)
  {
    sub_222C9531C();
    sub_222C9452C();
  }

  else
  {
    sub_222C9531C();
  }

  return sub_222C9534C();
}

uint64_t sub_222B89068()
{
  v1 = *v0;
  v3 = UsoEntity_common_Person.convertUSOPersonToString()();
  result = v3.value._countAndFlagsBits;
  if (!v3.value._object)
  {
    return 0x6E776F6E6B6E553CLL;
  }

  return result;
}

BOOL sub_222B890B0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  return _s12SiriOntology23UsoEntity_common_PersonC0A24PrivateLearningInferenceE2eeoiySbAC_ACtFZ_0();
}

uint64_t sub_222B890BC(uint64_t a1)
{
  v2 = a1;
  v11[1] = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 32);
  v4 = ((1 << v3) + 63) >> 6;
  if ((v3 & 0x3Fu) <= 0xD)
  {
LABEL_2:
    MEMORY[0x28223BE20](a1);
    v6 = v11 - ((v5 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v6, v5);
    result = sub_222B8921C(v6, v4, v2);
    if (v1)
    {
      result = swift_willThrow();
    }

    goto LABEL_4;
  }

  if (swift_stdlib_isStackAllocationSafe())
  {

    goto LABEL_2;
  }

  v9 = swift_slowAlloc();
  v10 = sub_222B893B0(v9, v4, v2);
  result = MEMORY[0x223DCA8C0](v9, -1, -1);
  if (!v1)
  {
    result = v10;
  }

LABEL_4:
  v8 = *MEMORY[0x277D85DE8];
  return result;
}

unint64_t *sub_222B8921C(unint64_t *result, uint64_t a2, uint64_t a3)
{
  v4 = 0;
  v5 = 0;
  v6 = 1 << *(a3 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a3 + 64);
  v9 = (v6 + 63) >> 6;
LABEL_4:
  while (v8)
  {
    v10 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
    v11 = v10 | (v5 << 6);
LABEL_11:
    v14 = *(*(a3 + 56) + 8 * v11);
    v15 = *(v14 + 16);
    v16 = (v14 + 32);
    while (v15)
    {
      v17 = *v16++;
      --v15;
      if ((v17 - 3) <= 1)
      {
        *(result + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
        if (!__OFADD__(v4++, 1))
        {
          goto LABEL_4;
        }

        __break(1u);
        return sub_222B5B0E4(result, a2, v4, a3);
      }
    }
  }

  v12 = v5;
  while (1)
  {
    v5 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v5 >= v9)
    {
      return sub_222B5B0E4(result, a2, v4, a3);
    }

    v13 = *(a3 + 64 + 8 * v5);
    ++v12;
    if (v13)
    {
      v8 = (v13 - 1) & v13;
      v11 = __clz(__rbit64(v13)) | (v5 << 6);
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

void *sub_222B89320(void *result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v6 = result;
      v7 = a2;
      bzero(result, 8 * a2);
      result = v6;
      a2 = v7;
    }

    v8 = sub_222B8A1CC(result, a2, a3, a4);

    return v8;
  }

  return result;
}

unint64_t *sub_222B893B0(unint64_t *result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v4 = result;
      v5 = a2;
      bzero(result, 8 * a2);
      result = v4;
      a2 = v5;
    }

    v6 = sub_222B8921C(result, a2, a3);

    return v6;
  }

  return result;
}

uint64_t sub_222B89428(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v5 = a3;
  v52 = result;
  if (*(a4 + 16) >= *(a3 + 16))
  {
    v55 = 0;
    v13 = 0;
    v14 = a3 + 56;
    v15 = 1 << *(a3 + 32);
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v17 = v16 & *(a3 + 56);
    v18 = (v15 + 63) >> 6;
    v19 = a4 + 56;
    while (v17)
    {
      v20 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_18:
      v53 = v20 | (v13 << 6);
      v23 = (*(a3 + 48) + 16 * v53);
      v25 = *v23;
      v24 = v23[1];
      v26 = *(v4 + 40);
      sub_222C952FC();

      sub_222C9452C();
      v27 = sub_222C9534C();
      v28 = -1 << *(v4 + 32);
      v29 = v27 & ~v28;
      if ((*(v19 + ((v29 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v29))
      {
        v30 = ~v28;
        while (1)
        {
          v31 = (*(a4 + 48) + 16 * v29);
          v32 = *v31 == v25 && v31[1] == v24;
          if (v32 || (sub_222C951FC() & 1) != 0)
          {
            break;
          }

          v29 = (v29 + 1) & v30;
          if (((*(v19 + ((v29 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v29) & 1) == 0)
          {
            goto LABEL_10;
          }
        }

        *(v52 + ((v53 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v53;
        v33 = __OFADD__(v55++, 1);
        v4 = a4;
        if (v33)
        {
          __break(1u);
LABEL_30:
          v5 = a3;
LABEL_31:

          return sub_222C1043C(v52, a2, v55, v5);
        }
      }

      else
      {
LABEL_10:

        v4 = a4;
      }
    }

    v21 = v13;
    while (1)
    {
      v13 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v13 >= v18)
      {
        goto LABEL_30;
      }

      v22 = *(v14 + 8 * v13);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v17 = (v22 - 1) & v22;
        goto LABEL_18;
      }
    }

LABEL_54:
    __break(1u);
  }

  else
  {
    v55 = 0;
    v6 = 0;
    v7 = a4 + 56;
    v8 = 1 << *(a4 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(a4 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = a3 + 56;
    v51 = v11;
    while (v10)
    {
      v34 = __clz(__rbit64(v10));
      v54 = (v10 - 1) & v10;
LABEL_41:
      v37 = (*(v4 + 48) + 16 * (v34 | (v6 << 6)));
      v39 = *v37;
      v38 = v37[1];
      v40 = *(v5 + 40);
      sub_222C952FC();

      sub_222C9452C();
      v41 = sub_222C9534C();
      v42 = -1 << *(v5 + 32);
      v43 = v41 & ~v42;
      v44 = v43 >> 6;
      v45 = 1 << v43;
      if (((1 << v43) & *(v12 + 8 * (v43 >> 6))) != 0)
      {
        v46 = (*(v5 + 48) + 16 * v43);
        if (*v46 != v39 || v46[1] != v38)
        {
          v48 = ~v42;
          while ((sub_222C951FC() & 1) == 0)
          {
            v43 = (v43 + 1) & v48;
            v44 = v43 >> 6;
            v45 = 1 << v43;
            if (((1 << v43) & *(v12 + 8 * (v43 >> 6))) == 0)
            {
              v5 = a3;
              goto LABEL_33;
            }

            v49 = (*(a3 + 48) + 16 * v43);
            if (*v49 == v39 && v49[1] == v38)
            {
              break;
            }
          }
        }

        v11 = v51;
        v52[v44] |= v45;
        v5 = a3;
        v33 = __OFADD__(v55++, 1);
        v4 = a4;
        v10 = v54;
        if (v33)
        {
          __break(1u);
          goto LABEL_54;
        }
      }

      else
      {
LABEL_33:

        v4 = a4;
        v11 = v51;
        v10 = v54;
      }
    }

    v35 = v6;
    while (1)
    {
      v6 = v35 + 1;
      if (__OFADD__(v35, 1))
      {
        break;
      }

      if (v6 >= v11)
      {
        goto LABEL_31;
      }

      v36 = *(v7 + 8 * v6);
      ++v35;
      if (v36)
      {
        v34 = __clz(__rbit64(v36));
        v54 = (v36 - 1) & v36;
        goto LABEL_41;
      }
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_222B89804(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v5 = a3;
  v71 = result;
  v6 = 0;
  v7 = 0;
  if (*(a4 + 16) >= *(a3 + 16))
  {
    v37 = a3 + 56;
    v38 = 1 << *(a3 + 32);
    if (v38 < 64)
    {
      v39 = ~(-1 << v38);
    }

    else
    {
      v39 = -1;
    }

    v73 = v39 & *(a3 + 56);
    v40 = (v38 + 63) >> 6;
    v77 = a4 + 56;
    while (1)
    {
      do
      {
LABEL_84:
        if (v73)
        {
          v41 = __clz(__rbit64(v73));
          v42 = (v73 - 1) & v73;
        }

        else
        {
          v43 = v7;
          do
          {
            v7 = v43 + 1;
            if (__OFADD__(v43, 1))
            {
              goto LABEL_160;
            }

            if (v7 >= v40)
            {
LABEL_158:

              return sub_222C10660(v71, a2, v6, v5);
            }

            v44 = *(v37 + 8 * v7);
            ++v43;
          }

          while (!v44);
          v41 = __clz(__rbit64(v44));
          v42 = (v44 - 1) & v44;
        }

        v45 = v41 | (v7 << 6);
        v46 = *(*(v5 + 48) + v45);
        v47 = *(v4 + 40);
        sub_222C952FC();
        v73 = v42;
        v70 = v45;
        sub_222C9452C();

        result = sub_222C9534C();
        v48 = -1 << *(v4 + 32);
        v49 = result & ~v48;
      }

      while (((*(v77 + ((v49 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v49) & 1) == 0);
      v75 = v6;
      v50 = ~v48;
      while (1)
      {
        v51 = *(*(v4 + 48) + v49);
        if (v51 > 3)
        {
          if (*(*(v4 + 48) + v49) > 5u)
          {
            if (v51 == 6)
            {
              v56 = 0xD000000000000013;
              v57 = 0x8000000222CA93E0;
              if (v46 > 3)
              {
                goto LABEL_122;
              }
            }

            else
            {
              v56 = 0xD000000000000012;
              v57 = 0x8000000222CA9400;
              if (v46 > 3)
              {
                goto LABEL_122;
              }
            }
          }

          else
          {
            if (v51 == 4)
            {
              v56 = 0x7972617262696CLL;
            }

            else
            {
              v56 = 0xD000000000000011;
            }

            if (v51 == 4)
            {
              v57 = 0xE700000000000000;
            }

            else
            {
              v57 = 0x8000000222CA93C0;
            }

            if (v46 > 3)
            {
              goto LABEL_122;
            }
          }
        }

        else
        {
          v52 = 0x6974636572726F63;
          if (v51 == 2)
          {
            v52 = 0x6574616E696D6F6ELL;
          }

          v53 = 0xEA00000000006E6FLL;
          if (v51 == 2)
          {
            v53 = 0xE900000000000064;
          }

          v54 = 0x754D6E69616D6F64;
          if (*(*(v4 + 48) + v49))
          {
            v54 = 0x656D7269666E6F63;
          }

          v55 = 0xEB00000000636973;
          if (*(*(v4 + 48) + v49))
          {
            v55 = 0xE900000000000064;
          }

          if (*(*(v4 + 48) + v49) <= 1u)
          {
            v56 = v54;
          }

          else
          {
            v56 = v52;
          }

          if (*(*(v4 + 48) + v49) <= 1u)
          {
            v57 = v55;
          }

          else
          {
            v57 = v53;
          }

          if (v46 > 3)
          {
LABEL_122:
            v60 = 0xD000000000000013;
            if (v46 != 6)
            {
              v60 = 0xD000000000000012;
            }

            v61 = 0x8000000222CA9400;
            if (v46 == 6)
            {
              v61 = 0x8000000222CA93E0;
            }

            v62 = 0x7972617262696CLL;
            if (v46 != 4)
            {
              v62 = 0xD000000000000011;
            }

            v63 = 0x8000000222CA93C0;
            if (v46 == 4)
            {
              v63 = 0xE700000000000000;
            }

            if (v46 <= 5)
            {
              v64 = v62;
            }

            else
            {
              v64 = v60;
            }

            if (v46 <= 5)
            {
              v59 = v63;
            }

            else
            {
              v59 = v61;
            }

            if (v56 != v64)
            {
              goto LABEL_146;
            }

            goto LABEL_145;
          }
        }

        if (v46 > 1)
        {
          if (v46 == 2)
          {
            v65 = 0x6574616E696D6F6ELL;
          }

          else
          {
            v65 = 0x6974636572726F63;
          }

          if (v46 == 2)
          {
            v59 = 0xE900000000000064;
          }

          else
          {
            v59 = 0xEA00000000006E6FLL;
          }

          if (v56 != v65)
          {
            goto LABEL_146;
          }
        }

        else
        {
          v58 = 0x754D6E69616D6F64;
          v59 = 0xEB00000000636973;
          if (v46)
          {
            v58 = 0x656D7269666E6F63;
            v59 = 0xE900000000000064;
          }

          if (v56 != v58)
          {
            goto LABEL_146;
          }
        }

LABEL_145:
        if (v57 == v59)
        {
          break;
        }

LABEL_146:
        v66 = sub_222C951FC();

        if (v66)
        {
          goto LABEL_155;
        }

        v49 = (v49 + 1) & v50;
        v4 = a4;
        if (((*(v77 + ((v49 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v49) & 1) == 0)
        {
          v5 = a3;
          v6 = v75;
          goto LABEL_84;
        }
      }

LABEL_155:
      *(v71 + ((v70 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v70;
      v6 = v75 + 1;
      v4 = a4;
      v5 = a3;
      if (__OFADD__(v75, 1))
      {
        goto LABEL_161;
      }
    }
  }

  v69 = a4 + 56;
  v8 = 1 << *(a4 + 32);
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  else
  {
    v9 = -1;
  }

  v72 = v9 & *(a4 + 56);
  v67 = (v8 + 63) >> 6;
  v76 = a3 + 56;
LABEL_6:
  while (v72)
  {
    v10 = __clz(__rbit64(v72));
    v11 = (v72 - 1) & v72;
LABEL_13:
    v14 = *(*(v4 + 48) + (v10 | (v7 << 6)));
    v15 = *(v5 + 40);
    sub_222C952FC();
    v72 = v11;
    sub_222C9452C();

    result = sub_222C9534C();
    v16 = -1 << *(v5 + 32);
    v17 = result & ~v16;
    v18 = v17 >> 6;
    v19 = 1 << v17;
    if (((1 << v17) & *(v76 + 8 * (v17 >> 6))) == 0)
    {
      continue;
    }

    v74 = v6;
    v20 = ~v16;
    while (1)
    {
      v21 = *(*(v5 + 48) + v17);
      if (v21 <= 3)
      {
        break;
      }

      if (*(*(v5 + 48) + v17) > 5u)
      {
        if (v21 == 6)
        {
          v26 = 0xD000000000000013;
          v27 = 0x8000000222CA93E0;
          if (v14 > 3)
          {
            goto LABEL_44;
          }
        }

        else
        {
          v26 = 0xD000000000000012;
          v27 = 0x8000000222CA9400;
          if (v14 > 3)
          {
            goto LABEL_44;
          }
        }
      }

      else
      {
        if (v21 == 4)
        {
          v26 = 0x7972617262696CLL;
        }

        else
        {
          v26 = 0xD000000000000011;
        }

        if (v21 == 4)
        {
          v27 = 0xE700000000000000;
        }

        else
        {
          v27 = 0x8000000222CA93C0;
        }

        if (v14 > 3)
        {
          goto LABEL_44;
        }
      }

LABEL_31:
      if (v14 > 1)
      {
        if (v14 == 2)
        {
          v35 = 0x6574616E696D6F6ELL;
        }

        else
        {
          v35 = 0x6974636572726F63;
        }

        if (v14 == 2)
        {
          v29 = 0xE900000000000064;
        }

        else
        {
          v29 = 0xEA00000000006E6FLL;
        }

        if (v26 == v35)
        {
          goto LABEL_67;
        }
      }

      else
      {
        v28 = 0x754D6E69616D6F64;
        v29 = 0xEB00000000636973;
        if (v14)
        {
          v28 = 0x656D7269666E6F63;
          v29 = 0xE900000000000064;
        }

        if (v26 == v28)
        {
          goto LABEL_67;
        }
      }

LABEL_68:
      v36 = sub_222C951FC();

      if (v36)
      {
        goto LABEL_77;
      }

      v17 = (v17 + 1) & v20;
      v18 = v17 >> 6;
      v19 = 1 << v17;
      v5 = a3;
      if ((*(v76 + 8 * (v17 >> 6)) & (1 << v17)) == 0)
      {
        v4 = a4;
        v6 = v74;
        goto LABEL_6;
      }
    }

    v22 = 0x6974636572726F63;
    if (v21 == 2)
    {
      v22 = 0x6574616E696D6F6ELL;
    }

    v23 = 0xEA00000000006E6FLL;
    if (v21 == 2)
    {
      v23 = 0xE900000000000064;
    }

    v24 = 0x754D6E69616D6F64;
    if (*(*(v5 + 48) + v17))
    {
      v24 = 0x656D7269666E6F63;
    }

    v25 = 0xEB00000000636973;
    if (*(*(v5 + 48) + v17))
    {
      v25 = 0xE900000000000064;
    }

    if (*(*(v5 + 48) + v17) <= 1u)
    {
      v26 = v24;
    }

    else
    {
      v26 = v22;
    }

    if (*(*(v5 + 48) + v17) <= 1u)
    {
      v27 = v25;
    }

    else
    {
      v27 = v23;
    }

    if (v14 <= 3)
    {
      goto LABEL_31;
    }

LABEL_44:
    v30 = 0xD000000000000013;
    if (v14 != 6)
    {
      v30 = 0xD000000000000012;
    }

    v31 = 0x8000000222CA9400;
    if (v14 == 6)
    {
      v31 = 0x8000000222CA93E0;
    }

    v32 = 0x7972617262696CLL;
    if (v14 != 4)
    {
      v32 = 0xD000000000000011;
    }

    v33 = 0x8000000222CA93C0;
    if (v14 == 4)
    {
      v33 = 0xE700000000000000;
    }

    if (v14 <= 5)
    {
      v34 = v32;
    }

    else
    {
      v34 = v30;
    }

    if (v14 <= 5)
    {
      v29 = v33;
    }

    else
    {
      v29 = v31;
    }

    if (v26 != v34)
    {
      goto LABEL_68;
    }

LABEL_67:
    if (v27 != v29)
    {
      goto LABEL_68;
    }

LABEL_77:
    v71[v18] |= v19;
    v6 = v74 + 1;
    v4 = a4;
    v5 = a3;
    if (__OFADD__(v74, 1))
    {
      goto LABEL_162;
    }
  }

  v12 = v7;
  while (1)
  {
    v7 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v7 >= v67)
    {
      goto LABEL_158;
    }

    v13 = *(v69 + 8 * v7);
    ++v12;
    if (v13)
    {
      v10 = __clz(__rbit64(v13));
      v11 = (v13 - 1) & v13;
      goto LABEL_13;
    }
  }

  __break(1u);
LABEL_160:
  __break(1u);
LABEL_161:
  __break(1u);
LABEL_162:
  __break(1u);
  return result;
}

uint64_t sub_222B8A1CC(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4;
  v5 = a3;
  v62 = result;
  v6 = 0;
  v7 = 0;
  if (*(a4 + 16) >= *(a3 + 16))
  {
    goto LABEL_51;
  }

  v60 = a4 + 56;
  v8 = 1 << *(a4 + 32);
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  else
  {
    v9 = -1;
  }

  v10 = v9 & *(a4 + 56);
  v58 = (v8 + 63) >> 6;
  v67 = a3 + 56;
  do
  {
LABEL_6:
    if (v10)
    {
      v11 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
      v12 = v11 | (v7 << 6);
      v13 = a4;
    }

    else
    {
      v14 = v7;
      v13 = a4;
      do
      {
        v7 = v14 + 1;
        if (__OFADD__(v14, 1))
        {
          __break(1u);
          goto LABEL_102;
        }

        if (v7 >= v58)
        {
LABEL_100:

          return sub_222C10994(v62, a2, v6, v5);
        }

        v15 = *(v60 + 8 * v7);
        ++v14;
      }

      while (!v15);
      v10 = (v15 - 1) & v15;
      v12 = __clz(__rbit64(v15)) | (v7 << 6);
    }

    v16 = *(*(v13 + 48) + v12);
    v17 = *(v5 + 40);
    sub_222C952FC();
    sub_222C9452C();

    result = sub_222C9534C();
    v18 = -1 << *(v5 + 32);
    v4 = result & ~v18;
    v19 = v4 >> 6;
    v20 = 1 << v4;
  }

  while (((1 << v4) & *(v67 + 8 * (v4 >> 6))) == 0);
  v63 = v10;
  v65 = v6;
  v21 = ~v18;
  while (1)
  {
    v22 = *(*(v5 + 48) + v4);
    if (v22 <= 1)
    {
      v23 = v22 == 0;
      v24 = *(*(v5 + 48) + v4) ? 0x68506E69616D6F64 : 0x654D6E69616D6F64;
      v25 = 0xEF6C6C6143656E6FLL;
      v26 = 0xEE00736567617373;
    }

    else
    {
      if (v22 == 2)
      {
        v24 = 0x656D7269666E6F63;
        v27 = 0xE900000000000064;
        if (v16 > 1)
        {
          goto LABEL_29;
        }

        goto LABEL_40;
      }

      v23 = v22 == 3;
      v24 = v22 == 3 ? 0x6574616E696D6F6ELL : 0x6974636572726F63;
      v25 = 0xEA00000000006E6FLL;
      v26 = 0xE900000000000064;
    }

    if (v23)
    {
      v27 = v26;
    }

    else
    {
      v27 = v25;
    }

    if (v16 > 1)
    {
LABEL_29:
      v28 = 0x6974636572726F63;
      if (v16 == 3)
      {
        v28 = 0x6574616E696D6F6ELL;
      }

      v29 = 0xEA00000000006E6FLL;
      if (v16 == 3)
      {
        v29 = 0xE900000000000064;
      }

      if (v16 == 2)
      {
        v30 = 0x656D7269666E6F63;
      }

      else
      {
        v30 = v28;
      }

      if (v16 == 2)
      {
        v31 = 0xE900000000000064;
      }

      else
      {
        v31 = v29;
      }

      goto LABEL_42;
    }

LABEL_40:
    v30 = 0x654D6E69616D6F64;
    v31 = 0xEE00736567617373;
    if (v16)
    {
      v30 = 0x68506E69616D6F64;
      v31 = 0xEF6C6C6143656E6FLL;
    }

LABEL_42:
    if (v24 == v30 && v27 == v31)
    {
      break;
    }

    v32 = sub_222C951FC();

    if (v32)
    {
      goto LABEL_48;
    }

    v4 = (v4 + 1) & v21;
    v19 = v4 >> 6;
    v5 = a3;
    v20 = 1 << v4;
    if ((*(v67 + 8 * (v4 >> 6)) & (1 << v4)) == 0)
    {
      v10 = v63;
      v6 = v65;
      goto LABEL_6;
    }
  }

LABEL_48:
  v10 = v63;
  v62[v19] |= v20;
  v6 = v65 + 1;
  v5 = a3;
  if (!__OFADD__(v65, 1))
  {
    goto LABEL_6;
  }

  __break(1u);
LABEL_51:
  v33 = v5 + 56;
  v34 = 1 << *(v5 + 32);
  if (v34 < 64)
  {
    v35 = ~(-1 << v34);
  }

  else
  {
    v35 = -1;
  }

  v64 = v35 & *(v5 + 56);
  v36 = (v34 + 63) >> 6;
  v68 = v4 + 56;
LABEL_55:
  while (2)
  {
    if (v64)
    {
      v37 = __clz(__rbit64(v64));
      v38 = (v64 - 1) & v64;
LABEL_62:
      v41 = v37 | (v7 << 6);
      v42 = *(*(v5 + 48) + v41);
      v43 = *(v4 + 40);
      sub_222C952FC();
      v64 = v38;
      v61 = v41;
      sub_222C9452C();

      result = sub_222C9534C();
      v44 = -1 << *(v4 + 32);
      v45 = result & ~v44;
      if (((*(v68 + ((v45 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v45) & 1) == 0)
      {
        continue;
      }

      v66 = v6;
      v46 = ~v44;
      while (1)
      {
        v47 = *(*(a4 + 48) + v45);
        if (v47 <= 1)
        {
          v48 = v47 == 0;
          if (*(*(a4 + 48) + v45))
          {
            v49 = 0x68506E69616D6F64;
          }

          else
          {
            v49 = 0x654D6E69616D6F64;
          }

          v50 = 0xEF6C6C6143656E6FLL;
          v51 = 0xEE00736567617373;
        }

        else
        {
          if (v47 == 2)
          {
            v49 = 0x656D7269666E6F63;
            v52 = 0xE900000000000064;
            if (v42 > 1)
            {
              goto LABEL_78;
            }

            goto LABEL_89;
          }

          v48 = v47 == 3;
          if (v47 == 3)
          {
            v49 = 0x6574616E696D6F6ELL;
          }

          else
          {
            v49 = 0x6974636572726F63;
          }

          v50 = 0xEA00000000006E6FLL;
          v51 = 0xE900000000000064;
        }

        if (v48)
        {
          v52 = v51;
        }

        else
        {
          v52 = v50;
        }

        if (v42 > 1)
        {
LABEL_78:
          v53 = 0x6974636572726F63;
          if (v42 == 3)
          {
            v53 = 0x6574616E696D6F6ELL;
          }

          v54 = 0xEA00000000006E6FLL;
          if (v42 == 3)
          {
            v54 = 0xE900000000000064;
          }

          if (v42 == 2)
          {
            v55 = 0x656D7269666E6F63;
          }

          else
          {
            v55 = v53;
          }

          if (v42 == 2)
          {
            v56 = 0xE900000000000064;
          }

          else
          {
            v56 = v54;
          }

          goto LABEL_91;
        }

LABEL_89:
        v55 = 0x654D6E69616D6F64;
        v56 = 0xEE00736567617373;
        if (v42)
        {
          v55 = 0x68506E69616D6F64;
          v56 = 0xEF6C6C6143656E6FLL;
        }

LABEL_91:
        if (v49 == v55 && v52 == v56)
        {

LABEL_97:
          *(v62 + ((v61 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v61;
          v6 = v66 + 1;
          v5 = a3;
          v4 = a4;
          if (__OFADD__(v66, 1))
          {
            __break(1u);
            goto LABEL_100;
          }

          goto LABEL_55;
        }

        v57 = sub_222C951FC();

        if (v57)
        {
          goto LABEL_97;
        }

        v45 = (v45 + 1) & v46;
        if (((*(v68 + ((v45 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v45) & 1) == 0)
        {
          v5 = a3;
          v6 = v66;
          v4 = a4;
          goto LABEL_55;
        }
      }
    }

    break;
  }

  v39 = v7;
  while (1)
  {
    v7 = v39 + 1;
    if (__OFADD__(v39, 1))
    {
      break;
    }

    if (v7 >= v36)
    {
      goto LABEL_100;
    }

    v40 = *(v33 + 8 * v7);
    ++v39;
    if (v40)
    {
      v37 = __clz(__rbit64(v40));
      v38 = (v40 - 1) & v40;
      goto LABEL_62;
    }
  }

LABEL_102:
  __break(1u);
  return result;
}

BOOL _s12SiriOntology23UsoEntity_common_PersonC0A24PrivateLearningInferenceE2eeoiySbAC_ACtFZ_0()
{
  sub_222C952FC();
  if (UsoEntity_common_Person.convertUSOPersonToString()().value._object)
  {
    sub_222C9531C();
    sub_222C9452C();
  }

  else
  {
    sub_222C9531C();
  }

  v0 = sub_222C9534C();
  sub_222C952FC();
  if (UsoEntity_common_Person.convertUSOPersonToString()().value._object)
  {
    sub_222C9531C();
    sub_222C9452C();
  }

  else
  {
    sub_222C9531C();
  }

  return v0 == sub_222C9534C();
}

uint64_t sub_222B8AABC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x277D84F98];
  }

  v2 = a1 + 32;
  v3 = MEMORY[0x277D84F98];
  while (1)
  {
    sub_222B79B90(v2, v27);
    v4 = v28;
    v5 = v29;
    __swift_project_boxed_opaque_existential_1(v27, v28);
    v6 = (*(v5 + 8))(v4, v5);
    sub_222B79B90(v27, v26);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = sub_222B8CCFC(v6);
    v10 = v3[2];
    v11 = (v8 & 1) == 0;
    v12 = v10 + v11;
    if (__OFADD__(v10, v11))
    {
      break;
    }

    v13 = v8;
    if (v3[3] >= v12)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        if (v8)
        {
          goto LABEL_12;
        }
      }

      else
      {
        sub_222B935D8();
        if (v13)
        {
          goto LABEL_12;
        }
      }
    }

    else
    {
      sub_222B8F27C(v12, isUniquelyReferenced_nonNull_native);
      v14 = sub_222B8CCFC(v6);
      if ((v13 & 1) != (v15 & 1))
      {
        goto LABEL_24;
      }

      v9 = v14;
      if (v13)
      {
        goto LABEL_12;
      }
    }

    v3[(v9 >> 6) + 8] |= 1 << v9;
    *(v3[6] + 8 * v9) = v6;
    *(v3[7] + 8 * v9) = MEMORY[0x277D84F90];
    v16 = v3[2];
    v17 = __OFADD__(v16, 1);
    v18 = v16 + 1;
    if (v17)
    {
      goto LABEL_23;
    }

    v3[2] = v18;

LABEL_12:
    v19 = v3[7];
    v20 = *(v19 + 8 * v9);
    v21 = swift_isUniquelyReferenced_nonNull_native();
    *(v19 + 8 * v9) = v20;
    if ((v21 & 1) == 0)
    {
      v20 = sub_222B4AC80(0, v20[2] + 1, 1, v20);
      *(v19 + 8 * v9) = v20;
    }

    v23 = v20[2];
    v22 = v20[3];
    if (v23 >= v22 >> 1)
    {
      *(v19 + 8 * v9) = sub_222B4AC80((v22 > 1), v23 + 1, 1, v20);
    }

    v24 = *(v19 + 8 * v9);
    *(v24 + 16) = v23 + 1;
    sub_222B79B78(v26, (v24 + 48 * v23 + 32));
    __swift_destroy_boxed_opaque_existential_0Tm(v27);
    v2 += 48;
    if (!--v1)
    {
      return v3;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  sub_222C9378C();
  result = sub_222C9526C();
  __break(1u);
  return result;
}

uint64_t sub_222B8AD10(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

uint64_t sub_222B8AD58(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_222C9378C();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_222B8ADEC(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

uint64_t sub_222B8AE00(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v57 = MEMORY[0x277D84F90];
    sub_222B4C848(0, v2, 0);
    v3 = v57;
    v4 = a1 + 32;
    do
    {
      sub_222B79B90(v4, v54);
      v5 = v55;
      v6 = v56;
      __swift_project_boxed_opaque_existential_1(v54, v55);
      v7 = (*(v6 + 16))(v5, v6);
      __swift_destroy_boxed_opaque_existential_0Tm(v54);
      v57 = v3;
      v9 = v3[2];
      v8 = v3[3];
      v10 = v9 + 1;
      if (v9 >= v8 >> 1)
      {
        sub_222B4C848((v8 > 1), v9 + 1, 1);
        v3 = v57;
      }

      v3[2] = v10;
      v3[v9 + 4] = v7;
      v4 += 48;
      --v2;
    }

    while (v2);
  }

  else
  {
    v10 = *(MEMORY[0x277D84F90] + 16);
    if (!v10)
    {
LABEL_39:
      v12 = MEMORY[0x277D84F98];
LABEL_40:

      v54[0] = v12;
      sub_222B5A9AC(0xD000000000000013, 0x8000000222CAA190);

      return v54[0];
    }

    v3 = MEMORY[0x277D84F90];
  }

  v11 = 0;
  v49 = v3 + 4;
  v12 = MEMORY[0x277D84F98];
  v47 = v10;
  v48 = v3;
LABEL_11:
  if (v11 < v3[2])
  {
    v13 = v49[v11];
    v50 = v11 + 1;
    v14 = v13 + 64;
    v15 = 1 << *(v13 + 32);
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v17 = v16 & *(v13 + 64);
    v18 = (v15 + 63) >> 6;
    v52 = v13;
    swift_bridgeObjectRetain_n();
    v19 = 0;
    v51 = v14;
    if (!v17)
    {
      goto LABEL_16;
    }

    while (1)
    {
LABEL_20:
      v21 = __clz(__rbit64(v17)) | (v19 << 6);
      v22 = (*(v52 + 48) + 16 * v21);
      v24 = *v22;
      v23 = v22[1];
      v53 = *(*(v52 + 56) + v21);

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v57 = v12;
      v27 = sub_222B8C9DC(v24, v23);
      v28 = v12[2];
      v29 = (v26 & 1) == 0;
      v30 = v28 + v29;
      if (__OFADD__(v28, v29))
      {
        __break(1u);
LABEL_42:
        __break(1u);
        break;
      }

      v31 = v26;
      if (v12[3] >= v30)
      {
        if (isUniquelyReferenced_nonNull_native)
        {
          v12 = v57;
          if ((v26 & 1) == 0)
          {
            goto LABEL_27;
          }
        }

        else
        {
          sub_222B93740();
          v12 = v57;
          if ((v31 & 1) == 0)
          {
            goto LABEL_27;
          }
        }
      }

      else
      {
        sub_222B8F56C(v30, isUniquelyReferenced_nonNull_native);
        v32 = sub_222B8C9DC(v24, v23);
        if ((v31 & 1) != (v33 & 1))
        {
          goto LABEL_44;
        }

        v27 = v32;
        v12 = v57;
        if ((v31 & 1) == 0)
        {
LABEL_27:
          v12[(v27 >> 6) + 8] |= 1 << v27;
          v34 = (v12[6] + 16 * v27);
          *v34 = v24;
          v34[1] = v23;
          *(v12[7] + 8 * v27) = MEMORY[0x277D84F90];
          v35 = v12[2];
          v36 = __OFADD__(v35, 1);
          v37 = v35 + 1;
          if (v36)
          {
            goto LABEL_42;
          }

          v12[2] = v37;
        }
      }

      v38 = v12[7];
      v39 = *(v38 + 8 * v27);
      v40 = swift_isUniquelyReferenced_nonNull_native();
      *(v38 + 8 * v27) = v39;
      if ((v40 & 1) == 0)
      {
        v43 = *(v39 + 2);

        v44 = sub_222B4AE24(0, v43 + 1, 1, v39);
        v45 = *(v38 + 8 * v27);
        *(v38 + 8 * v27) = v44;

        v39 = *(v38 + 8 * v27);
      }

      v42 = *(v39 + 2);
      v41 = *(v39 + 3);
      if (v42 >= v41 >> 1)
      {
        v39 = sub_222B4AE24((v41 > 1), v42 + 1, 1, v39);
        *(v38 + 8 * v27) = v39;
      }

      v17 &= v17 - 1;
      *(v39 + 2) = v42 + 1;
      *(*(v38 + 8 * v27) + v42 + 32) = v53;

      v14 = v51;
      if (!v17)
      {
        while (1)
        {
LABEL_16:
          v20 = v19 + 1;
          if (__OFADD__(v19, 1))
          {
            __break(1u);
            goto LABEL_39;
          }

          if (v20 >= v18)
          {
            break;
          }

          v17 = *(v14 + 8 * v20);
          ++v19;
          if (v17)
          {
            v19 = v20;
            goto LABEL_20;
          }
        }

        v3 = v48;
        v11 = v50;
        if (v50 == v47)
        {
          goto LABEL_40;
        }

        goto LABEL_11;
      }
    }
  }

  __break(1u);
LABEL_44:
  result = sub_222C9526C();
  __break(1u);
  return result;
}

uint64_t sub_222B8B210(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 16);
  if (v3)
  {
    v5 = result;
    v6 = a3 + 32;
    v7 = MEMORY[0x277D84F90];
    do
    {
      sub_222B79B90(v6, v21);
      v8 = v22;
      v9 = v23;
      __swift_project_boxed_opaque_existential_1(v21, v22);
      v10 = (*(v9 + 32))(v8, v9);
      if (*(v10 + 16) && (v11 = sub_222B8C9DC(v5, a2), (v12 & 1) != 0))
      {
        v13 = *(*(v10 + 56) + 8 * v11);

        __swift_destroy_boxed_opaque_existential_0Tm(v21);
        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          result = sub_222B4ACCC(0, v7[2] + 1, 1, v7);
          v7 = result;
        }

        v15 = v7[2];
        v14 = v7[3];
        if (v15 >= v14 >> 1)
        {
          result = sub_222B4ACCC((v14 > 1), v15 + 1, 1, v7);
          v7 = result;
        }

        v7[2] = v15 + 1;
        v7[v15 + 4] = v13;
      }

      else
      {

        result = __swift_destroy_boxed_opaque_existential_0Tm(v21);
      }

      v6 += 48;
      --v3;
    }

    while (v3);
  }

  else
  {
    v7 = MEMORY[0x277D84F90];
  }

  v21[0] = MEMORY[0x277D84FA0];
  v16 = v7[2];
  if (v16)
  {
    v17 = 0;
    while (v17 < v7[2])
    {
      v18 = v17 + 1;
      v19 = v7[v17 + 4];

      result = sub_222C61E08(v20);
      v17 = v18;
      if (v16 == v18)
      {
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_17:

    return sub_222C701CC(&unk_283607908, v21[0]);
  }

  return result;
}

uint64_t sub_222B8B3DC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_222B8B444()
{
  v1 = type metadata accessor for MediaFeedbackGroundTruth();
  if (*(v0 + *(v1 + 20)))
  {
    if (*(v0 + *(v1 + 20)) == 1)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D025AD0, &unk_222C9A230);
      inited = swift_initStackObject();
      v3 = inited;
      *(inited + 16) = xmmword_222C97C40;
      v4 = (v0 + *(v1 + 28));
      v23 = *(v4 + 24);
      v5 = v23;
      v6 = v4[2];
      v21 = v4[1];
      v22 = v6;
      v20 = *v4;
      v7 = v20;
      *(inited + 48) = v21;
      *(inited + 64) = v6;
      *(inited + 80) = v5;
      *(inited + 32) = v7;
      v8 = -32508;
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D025AD0, &unk_222C9A230);
      inited = swift_initStackObject();
      v3 = inited;
      *(inited + 16) = xmmword_222C97C40;
      v13 = (v0 + *(v1 + 28));
      v23 = *(v13 + 24);
      v14 = v23;
      v15 = v13[2];
      v21 = v13[1];
      v22 = v15;
      v20 = *v13;
      v16 = v20;
      *(inited + 48) = v21;
      *(inited + 64) = v15;
      *(inited + 80) = v14;
      *(inited + 32) = v16;
      v8 = -32250;
    }
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D025AD0, &unk_222C9A230);
    inited = swift_initStackObject();
    v3 = inited;
    *(inited + 16) = xmmword_222C97C40;
    v9 = (v0 + *(v1 + 28));
    v23 = *(v9 + 24);
    v10 = v23;
    v11 = v9[2];
    v21 = v9[1];
    v22 = v11;
    v20 = *v9;
    v12 = v20;
    *(inited + 48) = v21;
    *(inited + 64) = v11;
    *(inited + 80) = v10;
    *(inited + 32) = v12;
    v8 = -32761;
  }

  *(inited + 82) = v8;
  sub_222B554C0(&v20, v19);
  v17 = sub_222B62CD4(v3);
  swift_setDeallocating();
  sub_222B8B6C4(v3 + 32);
  return v17;
}

uint64_t sub_222B8B5D8(uint64_t a1)
{
  result = sub_222B8B678(&qword_27D025AC0, type metadata accessor for MediaFeedbackGroundTruth);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_222B8B678(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_222B8B6C4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D025430, &qword_222C98650);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t TurnSlotValue.stringValue.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

Swift::Double_optional __swiftcall TurnSlotValue.similarityScore(_:)(SiriPrivateLearningInference::TurnSlotValue a1)
{
  a1.stringValue.value._object = *(a1.stringValue.value._countAndFlagsBits + 8);
  if (v1[1])
  {
    v2 = a1.stringValue.value._object == 0;
  }

  else
  {
    v2 = 1;
  }

  if (v2)
  {
    result.is_nil = 0;
  }

  else
  {
    v3 = *v1;
    a1.stringValue.value._countAndFlagsBits = *a1.stringValue.value._countAndFlagsBits;
    return String.scoreRatcliffObershelp(between:)(a1.stringValue.value);
  }

  return result;
}

uint64_t static TurnSlotValue.== infix(_:_:)(void *a1, void *a2)
{
  v4 = a1[1];
  v5 = a2[1];
  result = (v4 | v5) == 0;
  if (v4)
  {
    v7 = v5 == 0;
  }

  else
  {
    v7 = 1;
  }

  if (!v7)
  {
    if (*a1 == *a2 && v4 == v5)
    {
      return 1;
    }

    else
    {
      return sub_222C951FC();
    }
  }

  return result;
}

uint64_t TurnSlotValue.description.getter()
{
  v1 = v0[1];
  if (!v1)
  {
    return 0xD000000000000019;
  }

  v2 = *v0;
  sub_222C94D1C();

  MEMORY[0x223DC9330](v2, v1);
  MEMORY[0x223DC9330](10530, 0xE200000000000000);
  return 0x746F6C536E727554;
}

uint64_t sub_222B8B980(void *a1, void *a2)
{
  v4 = a1[1];
  v5 = a2[1];
  result = (v4 | v5) == 0;
  if (v4)
  {
    v7 = v5 == 0;
  }

  else
  {
    v7 = 1;
  }

  if (!v7)
  {
    if (*a1 == *a2 && v4 == v5)
    {
      return 1;
    }

    else
    {
      return sub_222C951FC();
    }
  }

  return result;
}

uint64_t sub_222B8B9D0()
{
  type metadata accessor for ReformulationSpecializationClassifier();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D025B78, &qword_222C9A4E8);
  v0 = sub_222C944EC();
  MEMORY[0x223DC9330](v0);

  result = MEMORY[0x223DC9330](93, 0xE100000000000000);
  qword_27D025AD8 = 91;
  unk_27D025AE0 = 0xE100000000000000;
  return result;
}

SiriPrivateLearningInference::SlotsClassification::TurnSlotValuePair __swiftcall SlotsClassification.TurnSlotValuePair.init(_:_:)(SiriPrivateLearningInference::TurnSlotValue a1, SiriPrivateLearningInference::TurnSlotValue a2)
{
  v3 = *a1.stringValue.value._object;
  *v2 = *a1.stringValue.value._countAndFlagsBits;
  v2[1] = v3;
  result.followOn = a2;
  result.initial = a1;
  return result;
}

uint64_t SlotsClassification.TurnSlotValuePair.initial.getter@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

uint64_t SlotsClassification.TurnSlotValuePair.followOn.getter@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 24);
  *a1 = *(v1 + 16);
  a1[1] = v2;
}

void *sub_222B8C8D4(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D024ED0, &qword_222C96C80);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 17;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 4);
  return result;
}

void *sub_222B8C958(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D024C00, &qword_222C9A400);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 1;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 5);
  return result;
}

unint64_t sub_222B8C9DC(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_222C952FC();
  sub_222C9452C();
  v6 = sub_222C9534C();

  return sub_222B8D0C4(a1, a2, v6);
}

unint64_t sub_222B8CA54(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  sub_222C9367C();
  v5 = MEMORY[0x277CC95F0];
  sub_222B959C0(&qword_280FE02A8, MEMORY[0x277CC95F0]);
  v6 = sub_222C9440C();
  return sub_222B8DC60(a1, v6, MEMORY[0x277CC95F0], &qword_280FE02A0, v5, MEMORY[0x277CC9610]);
}

unint64_t sub_222B8CB28(uint64_t *a1)
{
  v3 = *(v1 + 40);
  v4 = *a1;
  v5 = a1[1];
  sub_222C952FC();
  sub_222C9452C();
  v6 = sub_222C9534C();

  return sub_222B8D17C(a1, v6);
}

unint64_t sub_222B8CB9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(v4 + 40);
  sub_222C952FC();
  sub_222C9452C();
  v10 = sub_222C9534C();

  return sub_222B8D2A8(a1, a2, a3, a4, v10);
}

unint64_t sub_222B8CC2C(uint64_t a1)
{
  v3 = *(v1 + 40);
  sub_222C952FC();
  sub_222C0A220(a1, v6);
  if (*(&v6[0] + 1) == 1)
  {
    sub_222C9531C();
  }

  else
  {
    v6[7] = v6[2];
    v6[8] = v6[3];
    v6[9] = v6[4];
    v6[5] = v6[0];
    v6[6] = v6[1];
    sub_222C9531C();
    sub_222BEEE64();
    sub_222B4FCD4(v6, &qword_27D0256C8, &unk_222C98AB0);
  }

  v4 = sub_222C9534C();
  return sub_222B8D3B4(a1, v4);
}

unint64_t sub_222B8CCFC(uint64_t a1)
{
  v3 = *(v1 + 40);
  sub_222C952FC();
  if (UsoEntity_common_Person.convertUSOPersonToString()().value._object)
  {
    sub_222C9531C();
    sub_222C9452C();
  }

  else
  {
    sub_222C9531C();
  }

  v4 = sub_222C9534C();

  return sub_222B8DADC(a1, v4);
}

unint64_t sub_222B8CDAC(unsigned __int8 a1)
{
  v3 = *(v1 + 40);
  sub_222C952FC();
  MEMORY[0x223DCA0B0](a1);
  v4 = sub_222C9534C();
  return sub_222B8E1BC(a1, v4);
}

unint64_t sub_222B8CE14(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  sub_222C942DC();
  v5 = MEMORY[0x277D5FD08];
  sub_222B959C0(&qword_280FE03B8, MEMORY[0x277D5FD08]);
  v6 = sub_222C9440C();
  return sub_222B8DC60(a1, v6, MEMORY[0x277D5FD08], &qword_27D025B88, v5, MEMORY[0x277D5FD18]);
}

unint64_t sub_222B8CEE8(unsigned int a1)
{
  v3 = *(v1 + 40);
  sub_222C952FC();
  MEMORY[0x223DCA0B0]((a1 >> 7) & 1);
  MEMORY[0x223DCA0B0](a1 & 0x7F);
  v4 = sub_222C9534C();

  return sub_222B8DE00(a1, v4);
}

unint64_t sub_222B8CF60(int a1)
{
  v3 = *(v1 + 40);
  sub_222C952FC();
  sub_222C9532C();
  v4 = sub_222C9534C();

  return sub_222B8DE8C(a1, v4);
}

unint64_t sub_222B8CFCC(uint64_t a1, unint64_t a2)
{
  v5 = *(v2 + 40);
  sub_222C952FC();
  switch(a2)
  {
    case 0uLL:
      v6 = 0;
      goto LABEL_7;
    case 1uLL:
      v6 = 1;
      goto LABEL_7;
    case 2uLL:
      v6 = 2;
LABEL_7:
      MEMORY[0x223DCA0B0](v6);
      goto LABEL_9;
  }

  MEMORY[0x223DCA0B0](3);
  sub_222C9452C();
LABEL_9:
  v7 = sub_222C9534C();

  return sub_222B8DEF8(a1, a2, v7);
}

unint64_t sub_222B8D080(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  v5 = sub_222C94C9C();

  return sub_222B8E0F4(a1, v5);
}

unint64_t sub_222B8D0C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_222C951FC())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_222B8D17C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 16);
  v23[0] = *a1;
  v23[1] = v3;
  v23[2] = *(a1 + 32);
  v24 = *(a1 + 48);
  v4 = -1 << *(v2 + 32);
  v5 = a2 & ~v4;
  if ((*(v2 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v6 = ~v4;
    do
    {
      v7 = *(v2 + 48) + 56 * v5;
      v9 = *(v7 + 16);
      v8 = *(v7 + 32);
      v10 = *(v7 + 48);
      v19[0] = *v7;
      v20 = v10;
      v19[1] = v9;
      v19[2] = v8;
      v11 = *(v7 + 16);
      v15 = *v7;
      v16 = v11;
      v17 = *(v7 + 32);
      v18 = *(v7 + 48);
      sub_222B554C0(v19, v14);
      v12 = _s28SiriPrivateLearningInference14MediaReferenceV2eeoiySbAC_ACtFZ_0(&v15, v23);
      v21[0] = v15;
      v21[1] = v16;
      v21[2] = v17;
      v22 = v18;
      sub_222B55A80(v21);
      if (v12)
      {
        break;
      }

      v5 = (v5 + 1) & v6;
    }

    while (((*(v2 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_222B8D2A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5 + 64;
  v7 = -1 << *(v5 + 32);
  v8 = a5 & ~v7;
  if ((*(v5 + 64 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v13 = ~v7;
    v14 = *(v5 + 48);
    do
    {
      v15 = (v14 + 32 * v8);
      v17 = v15[2];
      v16 = v15[3];
      v18 = *v15 == a1 && v15[1] == a2;
      if (v18 || (sub_222C951FC() & 1) != 0)
      {
        if (v16)
        {
          if (a4)
          {
            v19 = v17 == a3 && v16 == a4;
            if (v19 || (sub_222C951FC() & 1) != 0)
            {
              return v8;
            }
          }
        }

        else if (!a4)
        {
          return v8;
        }
      }

      v8 = (v8 + 1) & v13;
    }

    while (((*(v6 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) != 0);
  }

  return v8;
}

unint64_t sub_222B8D3B4(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  v57 = v2 + 64;
  if (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) == 0)
  {
    return v4;
  }

  v5 = v2;
  v56 = ~v3;
  while (1)
  {
    v6 = *(*(v5 + 48) + 8 * v4);

    sub_222C0A220(v7, &v89);
    sub_222C0A220(a1, &v98);
    v8 = v90;
    v61 = v91;
    v62 = v89;
    v63 = v92;
    v60 = v93;
    v9 = v95;
    v59 = v94;
    v10 = v96;
    v11 = v97;
    v13 = v98;
    v12 = v99;
    v85 = v100;
    v86 = v101;
    v87 = v102;
    v88 = v103;
    if (v90 == 1)
    {

      if (v12 == 1)
      {
        v73 = v62;
        v74 = 1;
        *&v75 = v61;
        *(&v75 + 1) = v63;
        v76 = v60;
        *&v77 = v59;
        *(&v77 + 1) = v9;
        *&v78 = v10;
        *(&v78 + 1) = v11;
        sub_222B4FCD4(&v73, &qword_27D0256C8, &unk_222C98AB0);
        return v4;
      }

      goto LABEL_12;
    }

    if (v99 == 1)
    {

LABEL_12:
      v73 = v62;
      v74 = v8;
      *&v75 = v61;
      *(&v75 + 1) = v63;
      v76 = v60;
      *&v77 = v59;
      *(&v77 + 1) = v9;
      *&v78 = v10;
      *(&v78 + 1) = v11;
      v79 = v13;
      v80 = v12;
      v81 = v85;
      v82 = v86;
      v83 = v87;
      v84 = v88;
      v14 = &v73;
      v15 = &qword_27D0256D0;
      v16 = &unk_222C9A490;
LABEL_13:
      sub_222B4FCD4(v14, v15, v16);
      goto LABEL_6;
    }

    v73 = v98;
    v74 = v99;
    v77 = v102;
    v78 = v103;
    v75 = v100;
    v76 = v101;
    v18 = *(&v100 + 1);
    v17 = v100;
    v19 = *(&v101 + 1);
    v20 = v101;
    v21 = *(&v102 + 1);
    v22 = v102;
    v24 = *(&v103 + 1);
    v23 = v103;
    if (v90)
    {
      break;
    }

    if (!v99)
    {
      goto LABEL_19;
    }

LABEL_4:
    sub_222B958F4(&v89, &v64);
    sub_222B958F4(&v98, &v64);

    sub_222B4FCD4(&v73, &qword_27D0256C8, &unk_222C98AB0);
    sub_222B4FCD4(&v98, &qword_27D0256C8, &unk_222C98AB0);
    sub_222B4FCD4(&v89, &qword_27D0256C8, &unk_222C98AB0);
    v64 = v62;
    v65 = v8;
    v66 = v61;
    v67 = v63;
    v68 = v60;
    v69 = v59;
    v70 = v9;
    v71 = v10;
    v72 = v11;
LABEL_5:
    sub_222B4FCD4(&v64, &qword_27D0256C8, &unk_222C98AB0);
    v5 = v55;
LABEL_6:
    v4 = (v4 + 1) & v56;
    if (((*(v57 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) == 0)
    {
      return v4;
    }
  }

  if (!v99)
  {
    goto LABEL_4;
  }

  if (v89 != v98 || v90 != v99)
  {
    v49 = *(&v78 + 1);
    v51 = v78;
    v47 = *(&v77 + 1);
    v48 = *(&v101 + 1);
    v25 = v77;
    v26 = v101;
    v46 = v100;
    v27 = sub_222C951FC();
    v17 = v46;
    v21 = v47;
    v20 = v26;
    v19 = v48;
    v24 = v49;
    v22 = v25;
    v23 = v51;
    if ((v27 & 1) == 0)
    {
      goto LABEL_4;
    }
  }

LABEL_19:
  v54 = v11;
  if (!v63)
  {
    if (!v18)
    {
      goto LABEL_24;
    }

    goto LABEL_30;
  }

  if (!v18)
  {
    goto LABEL_30;
  }

  if (v61 != v17 || v63 != v18)
  {
    v50 = v24;
    v52 = v23;
    v28 = v21;
    v29 = v22;
    v30 = v19;
    v31 = v20;
    v32 = sub_222C951FC();
    v20 = v31;
    v19 = v30;
    v22 = v29;
    v21 = v28;
    v24 = v50;
    v23 = v52;
    if ((v32 & 1) == 0)
    {
LABEL_30:
      sub_222B958F4(&v89, &v64);
      sub_222B958F4(&v98, &v64);

      sub_222B4FCD4(&v73, &qword_27D0256C8, &unk_222C98AB0);
      sub_222B4FCD4(&v98, &qword_27D0256C8, &unk_222C98AB0);
      sub_222B4FCD4(&v89, &qword_27D0256C8, &unk_222C98AB0);
      v64 = v62;
      v65 = v8;
      v66 = v61;
      v67 = v63;
      v68 = v60;
      v69 = v59;
      v70 = v9;
      v71 = v10;
      v72 = v54;
      goto LABEL_5;
    }
  }

LABEL_24:
  v33 = v10;
  if (!*(&v60 + 1))
  {
    v5 = v55;
    v34 = v9;
    if (!v19)
    {
      goto LABEL_33;
    }

    sub_222B958F4(&v89, &v64);
    sub_222B958F4(&v98, &v64);

    sub_222B4FCD4(&v73, &qword_27D0256C8, &unk_222C98AB0);
    sub_222B4FCD4(&v98, &qword_27D0256C8, &unk_222C98AB0);
    sub_222B4FCD4(&v89, &qword_27D0256C8, &unk_222C98AB0);
    v64 = v62;
    v65 = v8;
    v66 = v61;
    v67 = v63;
    v68 = v60;
LABEL_49:
    v69 = v59;
    v70 = v34;
    v71 = v33;
    v72 = v54;
    v14 = &v64;
    v15 = &qword_27D0256C8;
    v16 = &unk_222C98AB0;
    goto LABEL_13;
  }

  v5 = v55;
  v34 = v9;
  if (!v19)
  {
    goto LABEL_46;
  }

  if (v60 != __PAIR128__(v19, v20))
  {
    v53 = v23;
    v35 = v24;
    v36 = v21;
    v37 = v22;
    v38 = sub_222C951FC();
    v22 = v37;
    v21 = v36;
    v33 = v10;
    v23 = v53;
    v24 = v35;
    if ((v38 & 1) == 0)
    {
      goto LABEL_46;
    }
  }

LABEL_33:
  if (v34)
  {
    if (!v21 || (v59 != v22 || v34 != v21) && (v39 = v23, v40 = v24, v41 = sub_222C951FC(), v23 = v39, v24 = v40, (v41 & 1) == 0))
    {
LABEL_46:
      sub_222B958F4(&v89, &v64);
      sub_222B958F4(&v98, &v64);

      sub_222B4FCD4(&v73, &qword_27D0256C8, &unk_222C98AB0);
      sub_222B4FCD4(&v98, &qword_27D0256C8, &unk_222C98AB0);
      v43 = &v89;
      goto LABEL_47;
    }
  }

  else if (v21)
  {
    goto LABEL_46;
  }

  if (!v54)
  {
    v44 = v24;

    v43 = &v73;
    if (!v44)
    {
      goto LABEL_54;
    }

LABEL_47:
    sub_222B4FCD4(v43, &qword_27D0256C8, &unk_222C98AB0);
LABEL_48:
    v64 = v62;
    v65 = v8;
    v66 = v61;
    v67 = v63;
    v68 = v60;
    goto LABEL_49;
  }

  if (!v24)
  {
    goto LABEL_46;
  }

  if (v33 != v23 || v54 != v24)
  {
    v42 = sub_222C951FC();
    sub_222B958F4(&v89, &v64);
    sub_222B958F4(&v98, &v64);

    sub_222B4FCD4(&v73, &qword_27D0256C8, &unk_222C98AB0);
    sub_222B4FCD4(&v98, &qword_27D0256C8, &unk_222C98AB0);
    sub_222B4FCD4(&v89, &qword_27D0256C8, &unk_222C98AB0);
    if (v42)
    {
      goto LABEL_55;
    }

    goto LABEL_48;
  }

  sub_222B958F4(&v89, &v64);
  sub_222B958F4(&v98, &v64);

  sub_222B4FCD4(&v73, &qword_27D0256C8, &unk_222C98AB0);
  sub_222B4FCD4(&v98, &qword_27D0256C8, &unk_222C98AB0);
  v43 = &v89;
LABEL_54:
  sub_222B4FCD4(v43, &qword_27D0256C8, &unk_222C98AB0);
LABEL_55:
  v64 = v62;
  v65 = v8;
  v66 = v61;
  v67 = v63;
  v68 = v60;
  v69 = v59;
  v70 = v34;
  v71 = v33;
  v72 = v54;
  sub_222B4FCD4(&v64, &qword_27D0256C8, &unk_222C98AB0);
  return v4;
}

unint64_t sub_222B8DADC(uint64_t a1, uint64_t a2)
{
  v3 = v2 + 64;
  v4 = -1 << *(v2 + 32);
  v5 = a2 & ~v4;
  if ((*(v2 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v6 = v2;
    v7 = ~v4;
    do
    {
      v8 = *(*(v6 + 48) + 8 * v5);
      sub_222C952FC();

      if (UsoEntity_common_Person.convertUSOPersonToString()().value._object)
      {
        sub_222C9531C();
        sub_222C9452C();
      }

      else
      {
        sub_222C9531C();
      }

      v9 = sub_222C9534C();
      sub_222C952FC();
      if (UsoEntity_common_Person.convertUSOPersonToString()().value._object)
      {
        sub_222C9531C();
        sub_222C9452C();
      }

      else
      {
        sub_222C9531C();
      }

      v10 = sub_222C9534C();

      if (v9 == v10)
      {
        break;
      }

      v5 = (v5 + 1) & v7;
    }

    while (((*(v3 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_222B8DC60(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), unint64_t *a4, void (*a5)(uint64_t), uint64_t a6)
{
  v25 = a5;
  v26 = a6;
  v24 = a4;
  v22[1] = a1;
  v8 = a3(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = v22 - v11;
  v23 = v6;
  v13 = -1 << *(v6 + 32);
  v14 = a2 & ~v13;
  v22[0] = v6 + 64;
  if ((*(v6 + 64 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v15 = ~v13;
    v18 = *(v9 + 16);
    v17 = v9 + 16;
    v16 = v18;
    v19 = *(v17 + 56);
    do
    {
      v16(v12, *(v23 + 48) + v19 * v14, v8);
      sub_222B959C0(v24, v25);
      v20 = sub_222C9447C();
      (*(v17 - 8))(v12, v8);
      if (v20)
      {
        break;
      }

      v14 = (v14 + 1) & v15;
    }

    while (((*(v22[0] + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) != 0);
  }

  return v14;
}

unint64_t sub_222B8DE00(unsigned __int8 a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    v7 = *(v2 + 48);
    do
    {
      v8 = *(v7 + result);
      if (*(v7 + result) < 0)
      {
        if ((a1 & 0x80) != 0 && ((v8 ^ a1) & 0x7F) == 0)
        {
          return result;
        }
      }

      else if (v8 == a1)
      {
        return result;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_222B8DE8C(int a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 4 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_222B8DEF8(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) == 0)
  {
    return v5;
  }

  v8 = ~v4;
  while (1)
  {
    v9 = (*(v3 + 48) + 16 * v5);
    v10 = *v9;
    v11 = v9[1];
    switch(v11)
    {
      case 0uLL:
        if (!a2)
        {
          v17 = *v9;
          v18 = 0;
          goto LABEL_28;
        }

        sub_222B95830(a1, a2);
        v12 = 0;
        goto LABEL_14;
      case 1uLL:
        if (a2 == 1)
        {
          v17 = *v9;
          v18 = 1;
          goto LABEL_28;
        }

        sub_222B95830(a1, a2);
        v12 = 1;
        goto LABEL_14;
      case 2uLL:
        if (a2 == 2)
        {
          v17 = *v9;
          v18 = 2;
          goto LABEL_28;
        }

        sub_222B95830(a1, a2);
        v12 = 2;
        goto LABEL_14;
    }

    if (a2 < 3)
    {
      sub_222B95830(a1, a2);
      sub_222B95830(v10, v11);
      v12 = v11;
LABEL_14:
      sub_222B5B328(v10, v12);
      sub_222B5B328(a1, a2);
      goto LABEL_15;
    }

    if (v10 == a1 && v11 == a2)
    {
      break;
    }

    v14 = *v9;
    v15 = v9[1];
    v16 = sub_222C951FC();
    sub_222B95830(a1, a2);
    sub_222B95830(v10, v11);
    sub_222B5B328(v10, v11);
    sub_222B5B328(a1, a2);
    if (v16)
    {
      return v5;
    }

LABEL_15:
    v5 = (v5 + 1) & v8;
    if (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) == 0)
    {
      return v5;
    }
  }

  sub_222B95830(a1, a2);
  sub_222B95830(a1, a2);
  v17 = a1;
  v18 = a2;
LABEL_28:
  sub_222B5B328(v17, v18);
  sub_222B5B328(a1, a2);
  return v5;
}

unint64_t sub_222B8E0F4(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    do
    {
      sub_222B95844(*(v2 + 48) + 40 * v4, v9);
      v7 = MEMORY[0x223DC9A50](v9, a1);
      sub_222B958A0(v9);
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

unint64_t sub_222B8E1BC(unsigned __int8 a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

uint64_t sub_222B8E22C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D025368, &qword_222C98640);
  v38 = a2;
  result = sub_222C94F7C();
  v8 = result;
  if (*(v5 + 16))
  {
    v36 = v3;
    v37 = v5;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = *(*(v5 + 56) + 8 * v21);
      if ((v38 & 1) == 0)
      {
        v26 = v22[1];
      }

      v27 = *(v8 + 40);
      sub_222C952FC();
      sub_222C9452C();
      result = sub_222C9534C();
      v28 = -1 << *(v8 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v15 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v15 + 8 * v30);
          if (v34 != -1)
          {
            v16 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v29) & ~*(v15 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v8 + 56) + 8 * v16) = v25;
      ++*(v8 + 16);
      v5 = v37;
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if ((v38 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_35;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v36;
    if (v35 >= 64)
    {
      bzero(v10, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_222B8E524(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D025428, &qword_222C98648);
  v44 = a2;
  result = sub_222C94F7C();
  v8 = result;
  if (*(v5 + 16))
  {
    v42 = v3;
    v43 = v5;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v19 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v22 = v19 | (v9 << 6);
      v23 = *(v5 + 56);
      v24 = *(v5 + 48) + 56 * v22;
      if (v44)
      {
        v25 = *v24;
        v26 = *(v24 + 8);
        v45 = *(v24 + 16);
        v46 = *(v24 + 32);
        v27 = *(v24 + 48);
        v28 = (v23 + 2 * v22);
        v49 = *v28;
        v47 = *(v24 + 49);
        v48 = v28[1];
      }

      else
      {
        v29 = *v24;
        v30 = *(v24 + 16);
        v31 = *(v24 + 32);
        v51 = *(v24 + 48);
        v50[1] = v30;
        v50[2] = v31;
        v50[0] = v29;
        v32 = (v23 + 2 * v22);
        v48 = v32[1];
        v49 = *v32;
        v47 = HIBYTE(v51);
        v27 = v51;
        v45 = v30;
        v46 = v31;
        v26 = *(&v29 + 1);
        v25 = v29;
        sub_222B554C0(v50, v52);
      }

      v33 = *(v8 + 40);
      sub_222C952FC();
      sub_222C9452C();
      result = sub_222C9534C();
      v34 = -1 << *(v8 + 32);
      v35 = result & ~v34;
      v36 = v35 >> 6;
      if (((-1 << v35) & ~*(v15 + 8 * (v35 >> 6))) == 0)
      {
        v37 = 0;
        v38 = (63 - v34) >> 6;
        while (++v36 != v38 || (v37 & 1) == 0)
        {
          v39 = v36 == v38;
          if (v36 == v38)
          {
            v36 = 0;
          }

          v37 |= v39;
          v40 = *(v15 + 8 * v36);
          if (v40 != -1)
          {
            v16 = __clz(__rbit64(~v40)) + (v36 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v35) & ~*(v15 + 8 * (v35 >> 6)))) | v35 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = *(v8 + 48) + 56 * v16;
      *v17 = v25;
      *(v17 + 8) = v26;
      *(v17 + 16) = v45;
      *(v17 + 32) = v46;
      *(v17 + 48) = v27;
      *(v17 + 49) = v47;
      v18 = (*(v8 + 56) + 2 * v16);
      *v18 = v49;
      v18[1] = v48;
      ++*(v8 + 16);
      v5 = v43;
    }

    v20 = v9;
    while (1)
    {
      v9 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v9 >= v14)
      {
        break;
      }

      v21 = v10[v9];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v13 = (v21 - 1) & v21;
        goto LABEL_17;
      }
    }

    if ((v44 & 1) == 0)
    {

      v3 = v42;
      goto LABEL_36;
    }

    v41 = 1 << *(v5 + 32);
    v3 = v42;
    if (v41 >= 64)
    {
      bzero(v10, ((v41 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v41;
    }

    *(v5 + 16) = 0;
  }

LABEL_36:
  *v3 = v8;
  return result;
}

uint64_t sub_222B8E85C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D025450, &qword_222C98670);
  v40 = a2;
  result = sub_222C94F7C();
  v8 = result;
  if (*(v5 + 16))
  {
    v38 = v3;
    v39 = v5;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v19 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v22 = v19 | (v9 << 6);
      v23 = *(v5 + 56);
      v24 = (*(v5 + 48) + 32 * v22);
      v25 = *v24;
      v26 = v24[1];
      v27 = v24[3];
      v43 = v24[2];
      v28 = (v23 + 4 * v22);
      v44 = *v28;
      v41 = *(v28 + 1);
      v42 = v28[3];
      if ((v40 & 1) == 0)
      {
      }

      v29 = *(v8 + 40);
      sub_222C952FC();
      sub_222C9452C();
      result = sub_222C9534C();
      v30 = -1 << *(v8 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v15 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v15 + 8 * v32);
          if (v36 != -1)
          {
            v16 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v31) & ~*(v15 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 32 * v16);
      *v17 = v25;
      v17[1] = v26;
      v17[2] = v43;
      v17[3] = v27;
      v18 = *(v8 + 56) + 4 * v16;
      *v18 = v44;
      *(v18 + 3) = (v41 | (v42 << 16)) >> 16;
      *(v18 + 1) = v41;
      ++*(v8 + 16);
      v5 = v39;
    }

    v20 = v9;
    while (1)
    {
      v9 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v21 = v10[v9];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v13 = (v21 - 1) & v21;
        goto LABEL_17;
      }
    }

    if ((v40 & 1) == 0)
    {

      v3 = v38;
      goto LABEL_35;
    }

    v37 = 1 << *(v5 + 32);
    v3 = v38;
    if (v37 >= 64)
    {
      bzero(v10, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v37;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_222B8EB94(uint64_t a1, char a2, uint64_t *a3, uint64_t *a4)
{
  v5 = v4;
  v7 = *v4;
  if (*(*v4 + 24) > a1)
  {
    v8 = *(*v4 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v35 = a2;
  result = sub_222C94F7C();
  v10 = result;
  if (*(v7 + 16))
  {
    v34 = v5;
    v11 = 0;
    v12 = (v7 + 64);
    v13 = 1 << *(v7 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v7 + 64);
    v16 = (v13 + 63) >> 6;
    v17 = result + 64;
    while (v15)
    {
      v19 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_17:
      v22 = v19 | (v11 << 6);
      v23 = *(*(v7 + 48) + v22);
      v24 = *(*(v7 + 56) + 8 * v22);
      if ((v35 & 1) == 0)
      {
      }

      v25 = *(v10 + 40);
      sub_222C952FC();
      MEMORY[0x223DCA0B0](v23);
      result = sub_222C9534C();
      v26 = -1 << *(v10 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v17 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v17 + 8 * v28);
          if (v32 != -1)
          {
            v18 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v27) & ~*(v17 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      *(*(v10 + 48) + v18) = v23;
      *(*(v10 + 56) + 8 * v18) = v24;
      ++*(v10 + 16);
    }

    v20 = v11;
    while (1)
    {
      v11 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v11 >= v16)
      {
        break;
      }

      v21 = v12[v11];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v15 = (v21 - 1) & v21;
        goto LABEL_17;
      }
    }

    if ((v35 & 1) == 0)
    {

      v5 = v34;
      goto LABEL_35;
    }

    v33 = 1 << *(v7 + 32);
    v5 = v34;
    if (v33 >= 64)
    {
      bzero((v7 + 64), ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v33;
    }

    *(v7 + 16) = 0;
  }

LABEL_35:
  *v5 = v10;
  return result;
}

uint64_t sub_222B8EE30(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = sub_222C9367C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6);
  v53 = &v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v48 = &v43 - v11;
  v12 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v13 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D025B60, &qword_222C9A4D0);
  v49 = a2;
  result = sub_222C94F7C();
  v54 = result;
  if (*(v12 + 16))
  {
    v44 = v3;
    v15 = 0;
    v16 = (v12 + 64);
    v17 = 1 << *(v12 + 32);
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    else
    {
      v18 = -1;
    }

    v19 = v18 & *(v12 + 64);
    v20 = (v17 + 63) >> 6;
    v45 = (v7 + 16);
    v46 = v12;
    v47 = v7;
    v50 = (v7 + 32);
    v21 = v54 + 64;
    while (v19)
    {
      v26 = __clz(__rbit64(v19));
      v52 = (v19 - 1) & v19;
LABEL_17:
      v29 = *(v12 + 48);
      v51 = *(v47 + 72);
      v30 = v51 * (v26 | (v15 << 6));
      if (v49)
      {
        v31 = *v50;
        v32 = v48;
        (*v50)(v48, v29 + v30, v6);
      }

      else
      {
        v31 = *v45;
        v32 = v48;
        (*v45)(v48, v29 + v30, v6);
      }

      v31(v53, *(v12 + 56) + v30, v6);
      v33 = v54;
      v34 = *(v54 + 40);
      sub_222B959C0(&qword_280FE02A8, MEMORY[0x277CC95F0]);
      result = sub_222C9440C();
      v35 = -1 << *(v33 + 32);
      v36 = result & ~v35;
      v37 = v36 >> 6;
      if (((-1 << v36) & ~*(v21 + 8 * (v36 >> 6))) == 0)
      {
        v38 = 0;
        v39 = (63 - v35) >> 6;
        while (++v37 != v39 || (v38 & 1) == 0)
        {
          v40 = v37 == v39;
          if (v37 == v39)
          {
            v37 = 0;
          }

          v38 |= v40;
          v41 = *(v21 + 8 * v37);
          if (v41 != -1)
          {
            v22 = __clz(__rbit64(~v41)) + (v37 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v22 = __clz(__rbit64((-1 << v36) & ~*(v21 + 8 * (v36 >> 6)))) | v36 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v21 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
      v23 = v54;
      v24 = v51 * v22;
      v25 = *v50;
      (*v50)((*(v54 + 48) + v51 * v22), v32, v6);
      result = (v25)(*(v23 + 56) + v24, v53, v6);
      ++*(v23 + 16);
      v12 = v46;
      v19 = v52;
    }

    v27 = v15;
    while (1)
    {
      v15 = v27 + 1;
      if (__OFADD__(v27, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v15 >= v20)
      {
        break;
      }

      v28 = v16[v15];
      ++v27;
      if (v28)
      {
        v26 = __clz(__rbit64(v28));
        v52 = (v28 - 1) & v28;
        goto LABEL_17;
      }
    }

    if ((v49 & 1) == 0)
    {

      v3 = v44;
      goto LABEL_36;
    }

    v42 = 1 << *(v12 + 32);
    v3 = v44;
    if (v42 >= 64)
    {
      bzero(v16, ((v42 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v16 = -1 << v42;
    }

    *(v12 + 16) = 0;
  }

LABEL_36:
  *v3 = v54;
  return result;
}

uint64_t sub_222B8F290(uint64_t a1, char a2, uint64_t *a3, uint64_t *a4)
{
  v5 = v4;
  v7 = *v4;
  if (*(*v4 + 24) > a1)
  {
    v8 = *(*v4 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v38 = a2;
  result = sub_222C94F7C();
  v10 = result;
  if (*(v7 + 16))
  {
    v36 = v5;
    v37 = v7;
    v11 = 0;
    v12 = (v7 + 64);
    v13 = 1 << *(v7 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v7 + 64);
    v16 = (v13 + 63) >> 6;
    v17 = result + 64;
    while (v15)
    {
      v20 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_17:
      v23 = v20 | (v11 << 6);
      v24 = *(v7 + 56);
      v25 = *(*(v7 + 48) + 8 * v23);
      v26 = *(v24 + 8 * v23);
      if ((v38 & 1) == 0)
      {
      }

      v27 = *(v10 + 40);
      sub_222C952FC();
      if (UsoEntity_common_Person.convertUSOPersonToString()().value._object)
      {
        sub_222C9531C();
        sub_222C9452C();
      }

      else
      {
        sub_222C9531C();
      }

      result = sub_222C9534C();
      v28 = -1 << *(v10 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v17 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        v19 = v26;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v17 + 8 * v30);
          if (v34 != -1)
          {
            v18 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_9;
          }
        }

LABEL_40:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v29) & ~*(v17 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
      v19 = v26;
LABEL_9:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      *(*(v10 + 48) + 8 * v18) = v25;
      *(*(v10 + 56) + 8 * v18) = v19;
      ++*(v10 + 16);
      v7 = v37;
    }

    v21 = v11;
    while (1)
    {
      v11 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_40;
      }

      if (v11 >= v16)
      {
        break;
      }

      v22 = v12[v11];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v15 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    if ((v38 & 1) == 0)
    {

      v5 = v36;
      goto LABEL_38;
    }

    v35 = 1 << *(v7 + 32);
    v5 = v36;
    if (v35 >= 64)
    {
      bzero(v12, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v35;
    }

    *(v7 + 16) = 0;
  }

LABEL_38:
  *v5 = v10;
  return result;
}

uint64_t sub_222B8F580(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D025B18, &unk_222CA6170);
  v38 = a2;
  result = sub_222C94F7C();
  v8 = result;
  if (*(v5 + 16))
  {
    v36 = v3;
    v37 = v5;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = *(*(v5 + 56) + v21);
      if ((v38 & 1) == 0)
      {
        v26 = v22[1];
      }

      v27 = *(v8 + 40);
      sub_222C952FC();
      sub_222C9452C();
      result = sub_222C9534C();
      v28 = -1 << *(v8 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v15 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v15 + 8 * v30);
          if (v34 != -1)
          {
            v16 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v29) & ~*(v15 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v8 + 56) + v16) = v25;
      ++*(v8 + 16);
      v5 = v37;
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if ((v38 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_35;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v36;
    if (v35 >= 64)
    {
      bzero(v10, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_222B8F834(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0254D0, &qword_222C986F0);
  v39 = a2;
  result = sub_222C94F7C();
  v8 = result;
  if (*(v5 + 16))
  {
    v37 = v3;
    v38 = v5;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v19 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v22 = v19 | (v9 << 6);
      v23 = (*(v5 + 48) + 16 * v22);
      v24 = *v23;
      v25 = v23[1];
      v26 = *(v5 + 56) + 32 * v22;
      v40 = *v26;
      v41 = *(v26 + 8);
      v27 = *(v26 + 24);
      if ((v39 & 1) == 0)
      {
      }

      v28 = *(v8 + 40);
      sub_222C952FC();
      sub_222C9452C();
      result = sub_222C9534C();
      v29 = -1 << *(v8 + 32);
      v30 = result & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v15 + 8 * (v30 >> 6))) == 0)
      {
        v32 = 0;
        v33 = (63 - v29) >> 6;
        while (++v31 != v33 || (v32 & 1) == 0)
        {
          v34 = v31 == v33;
          if (v31 == v33)
          {
            v31 = 0;
          }

          v32 |= v34;
          v35 = *(v15 + 8 * v31);
          if (v35 != -1)
          {
            v16 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v30) & ~*(v15 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v24;
      v17[1] = v25;
      v18 = *(v8 + 56) + 32 * v16;
      *v18 = v40;
      *(v18 + 8) = v41;
      *(v18 + 24) = v27;
      ++*(v8 + 16);
      v5 = v38;
    }

    v20 = v9;
    while (1)
    {
      v9 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v21 = v10[v9];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v13 = (v21 - 1) & v21;
        goto LABEL_17;
      }
    }

    if ((v39 & 1) == 0)
    {

      v3 = v37;
      goto LABEL_35;
    }

    v36 = 1 << *(v5 + 32);
    v3 = v37;
    if (v36 >= 64)
    {
      bzero(v10, ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v36;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_222B8FB14(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0254D8, &qword_222C986F8);
  v36 = a2;
  result = sub_222C94F7C();
  v8 = result;
  if (*(v5 + 16))
  {
    v35 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v19 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v22 = 16 * (v19 | (v9 << 6));
      v23 = (*(v5 + 48) + v22);
      v24 = *v23;
      v25 = v23[1];
      v37 = *(*(v5 + 56) + v22);
      if ((v36 & 1) == 0)
      {
      }

      v26 = *(v8 + 40);
      sub_222C952FC();
      sub_222C9452C();
      result = sub_222C9534C();
      v27 = -1 << *(v8 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v15 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v15 + 8 * v29);
          if (v33 != -1)
          {
            v16 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v28) & ~*(v15 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = 16 * v16;
      v18 = (*(v8 + 48) + v17);
      *v18 = v24;
      v18[1] = v25;
      *(*(v8 + 56) + v17) = v37;
      ++*(v8 + 16);
    }

    v20 = v9;
    while (1)
    {
      v9 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v21 = v10[v9];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v13 = (v21 - 1) & v21;
        goto LABEL_17;
      }
    }

    if ((v36 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_35;
    }

    v34 = 1 << *(v5 + 32);
    v3 = v35;
    if (v34 >= 64)
    {
      bzero((v5 + 64), ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v34;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_222B8FDCC(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D025B08, &unk_222C9A430);
  v33 = a2;
  result = sub_222C94F7C();
  v8 = result;
  if (*(v5 + 16))
  {
    v32 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v20 = v17 | (v9 << 6);
      v21 = *(*(v5 + 48) + v20);
      v22 = *(*(v5 + 56) + 8 * v20);
      if ((v33 & 1) == 0)
      {
      }

      v23 = *(v8 + 40);
      sub_222C952FC();
      MEMORY[0x223DCA0B0](v21 >> 7);
      MEMORY[0x223DCA0B0](v21 & 0x7F);
      result = sub_222C9534C();
      v24 = -1 << *(v8 + 32);
      v25 = result & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v15 + 8 * (v25 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v24) >> 6;
        while (++v26 != v28 || (v27 & 1) == 0)
        {
          v29 = v26 == v28;
          if (v26 == v28)
          {
            v26 = 0;
          }

          v27 |= v29;
          v30 = *(v15 + 8 * v26);
          if (v30 != -1)
          {
            v16 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v25) & ~*(v15 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + v16) = v21;
      *(*(v8 + 56) + 8 * v16) = v22;
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    if ((v33 & 1) == 0)
    {

      v3 = v32;
      goto LABEL_35;
    }

    v31 = 1 << *(v5 + 32);
    v3 = v32;
    if (v31 >= 64)
    {
      bzero((v5 + 64), ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v31;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_222B9007C(uint64_t a1, int a2, uint64_t *a3, uint64_t *a4)
{
  v7 = v4;
  v10 = sub_222C9367C();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v42 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *v7;
  if (*(*v7 + 24) > a1)
  {
    v16 = *(*v7 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v47 = a2;
  result = sub_222C94F7C();
  v18 = result;
  if (*(v15 + 16))
  {
    v51 = v14;
    v43 = v7;
    v19 = 0;
    v20 = (v15 + 64);
    v21 = 1 << *(v15 + 32);
    if (v21 < 64)
    {
      v22 = ~(-1 << v21);
    }

    else
    {
      v22 = -1;
    }

    v23 = v22 & *(v15 + 64);
    v24 = (v21 + 63) >> 6;
    v44 = (v11 + 16);
    v45 = v15;
    v46 = v11;
    v48 = (v11 + 32);
    v25 = result + 64;
    while (v23)
    {
      v27 = __clz(__rbit64(v23));
      v23 &= v23 - 1;
LABEL_17:
      v30 = v27 | (v19 << 6);
      v31 = *(v15 + 48);
      v50 = *(v46 + 72);
      v32 = v31 + v50 * v30;
      if (v47)
      {
        (*v48)(v51, v32, v10);
        v49 = *(*(v15 + 56) + 8 * v30);
      }

      else
      {
        (*v44)(v51, v32, v10);
        v49 = *(*(v15 + 56) + 8 * v30);
      }

      v33 = *(v18 + 40);
      sub_222B959C0(&qword_280FE02A8, MEMORY[0x277CC95F0]);
      result = sub_222C9440C();
      v34 = -1 << *(v18 + 32);
      v35 = result & ~v34;
      v36 = v35 >> 6;
      if (((-1 << v35) & ~*(v25 + 8 * (v35 >> 6))) == 0)
      {
        v37 = 0;
        v38 = (63 - v34) >> 6;
        while (++v36 != v38 || (v37 & 1) == 0)
        {
          v39 = v36 == v38;
          if (v36 == v38)
          {
            v36 = 0;
          }

          v37 |= v39;
          v40 = *(v25 + 8 * v36);
          if (v40 != -1)
          {
            v26 = __clz(__rbit64(~v40)) + (v36 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v26 = __clz(__rbit64((-1 << v35) & ~*(v25 + 8 * (v35 >> 6)))) | v35 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v25 + ((v26 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v26;
      result = (*v48)(*(v18 + 48) + v50 * v26, v51, v10);
      *(*(v18 + 56) + 8 * v26) = v49;
      ++*(v18 + 16);
      v15 = v45;
    }

    v28 = v19;
    while (1)
    {
      v19 = v28 + 1;
      if (__OFADD__(v28, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v19 >= v24)
      {
        break;
      }

      v29 = v20[v19];
      ++v28;
      if (v29)
      {
        v27 = __clz(__rbit64(v29));
        v23 = (v29 - 1) & v29;
        goto LABEL_17;
      }
    }

    if ((v47 & 1) == 0)
    {

      v7 = v43;
      goto LABEL_36;
    }

    v41 = 1 << *(v15 + 32);
    v7 = v43;
    if (v41 >= 64)
    {
      bzero(v20, ((v41 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v20 = -1 << v41;
    }

    *(v15 + 16) = 0;
  }

LABEL_36:
  *v7 = v18;
  return result;
}

uint64_t sub_222B9046C(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = sub_222C9367C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v12 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D025B70, &qword_222C9A4E0);
  v47 = a2;
  result = sub_222C94F7C();
  v14 = result;
  if (*(v11 + 16))
  {
    v51 = v10;
    v43 = v3;
    v15 = 0;
    v16 = (v11 + 64);
    v17 = 1 << *(v11 + 32);
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    else
    {
      v18 = -1;
    }

    v19 = v18 & *(v11 + 64);
    v20 = (v17 + 63) >> 6;
    v44 = (v7 + 16);
    v45 = v7;
    v48 = (v7 + 32);
    v21 = result + 64;
    v46 = v11;
    while (v19)
    {
      v24 = __clz(__rbit64(v19));
      v25 = (v19 - 1) & v19;
LABEL_17:
      v28 = v24 | (v15 << 6);
      v50 = v25;
      v29 = *(v7 + 72);
      v30 = *(v11 + 48) + v29 * v28;
      if (v47)
      {
        (*v48)(v51, v30, v6);
      }

      else
      {
        (*v44)(v51, v30, v6);
      }

      v31 = (*(v11 + 56) + 2 * v28);
      v32 = v31[1];
      v49 = *v31;
      v33 = *(v14 + 40);
      sub_222B959C0(&qword_280FE02A8, MEMORY[0x277CC95F0]);
      result = sub_222C9440C();
      v34 = -1 << *(v14 + 32);
      v35 = result & ~v34;
      v36 = v35 >> 6;
      if (((-1 << v35) & ~*(v21 + 8 * (v35 >> 6))) == 0)
      {
        v37 = 0;
        v38 = (63 - v34) >> 6;
        while (++v36 != v38 || (v37 & 1) == 0)
        {
          v39 = v36 == v38;
          if (v36 == v38)
          {
            v36 = 0;
          }

          v37 |= v39;
          v40 = *(v21 + 8 * v36);
          if (v40 != -1)
          {
            v22 = __clz(__rbit64(~v40)) + (v36 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v22 = __clz(__rbit64((-1 << v35) & ~*(v21 + 8 * (v35 >> 6)))) | v35 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v21 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
      result = (*v48)(*(v14 + 48) + v29 * v22, v51, v6);
      v23 = (*(v14 + 56) + 2 * v22);
      *v23 = v49;
      v23[1] = v32;
      ++*(v14 + 16);
      v7 = v45;
      v11 = v46;
      v19 = v50;
    }

    v26 = v15;
    while (1)
    {
      v15 = v26 + 1;
      if (__OFADD__(v26, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v15 >= v20)
      {
        break;
      }

      v27 = v16[v15];
      ++v26;
      if (v27)
      {
        v24 = __clz(__rbit64(v27));
        v25 = (v27 - 1) & v27;
        goto LABEL_17;
      }
    }

    if ((v47 & 1) == 0)
    {

      v3 = v43;
      goto LABEL_36;
    }

    v41 = 1 << *(v11 + 32);
    v3 = v43;
    if (v41 >= 64)
    {
      bzero(v16, ((v41 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v16 = -1 << v41;
    }

    *(v11 + 16) = 0;
  }

LABEL_36:
  *v3 = v14;
  return result;
}

uint64_t sub_222B90880(uint64_t a1, int a2, uint64_t (*a3)(void), uint64_t *a4, uint64_t *a5, uint64_t (*a6)(void))
{
  v62 = a6;
  v9 = v6;
  v12 = a3(0);
  v55 = *(v12 - 8);
  v13 = *(v55 + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v61 = &v51 - v14;
  v15 = sub_222C9367C();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v57 = &v51 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *v9;
  if (*(*v9 + 24) > a1)
  {
    v20 = *(*v9 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
  v56 = a2;
  v21 = v19;
  result = sub_222C94F7C();
  v23 = result;
  if (*(v19 + 16))
  {
    v60 = v15;
    v24 = 0;
    v25 = (v19 + 64);
    v26 = 1 << *(v19 + 32);
    if (v26 < 64)
    {
      v27 = ~(-1 << v26);
    }

    else
    {
      v27 = -1;
    }

    v28 = v27 & *(v19 + 64);
    v29 = (v26 + 63) >> 6;
    v51 = v9;
    v52 = (v16 + 16);
    v53 = v19;
    v54 = v16;
    v58 = (v16 + 32);
    v30 = result + 64;
    v31 = v57;
    while (v28)
    {
      v33 = __clz(__rbit64(v28));
      v28 &= v28 - 1;
LABEL_17:
      v36 = v33 | (v24 << 6);
      v37 = *(v21 + 48);
      v59 = *(v54 + 72);
      v38 = v37 + v59 * v36;
      if (v56)
      {
        (*v58)(v31, v38, v60);
        v39 = *(v21 + 56);
        v40 = *(v55 + 72);
        sub_222B95A70(v39 + v40 * v36, v61, v62);
      }

      else
      {
        (*v52)(v31, v38, v60);
        v41 = *(v21 + 56);
        v40 = *(v55 + 72);
        sub_222B95A08(v41 + v40 * v36, v61, v62);
      }

      v42 = *(v23 + 40);
      sub_222B959C0(&qword_280FE02A8, MEMORY[0x277CC95F0]);
      result = sub_222C9440C();
      v43 = -1 << *(v23 + 32);
      v44 = result & ~v43;
      v45 = v44 >> 6;
      if (((-1 << v44) & ~*(v30 + 8 * (v44 >> 6))) == 0)
      {
        v46 = 0;
        v47 = (63 - v43) >> 6;
        v31 = v57;
        while (++v45 != v47 || (v46 & 1) == 0)
        {
          v48 = v45 == v47;
          if (v45 == v47)
          {
            v45 = 0;
          }

          v46 |= v48;
          v49 = *(v30 + 8 * v45);
          if (v49 != -1)
          {
            v32 = __clz(__rbit64(~v49)) + (v45 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v32 = __clz(__rbit64((-1 << v44) & ~*(v30 + 8 * (v44 >> 6)))) | v44 & 0x7FFFFFFFFFFFFFC0;
      v31 = v57;
LABEL_9:
      *(v30 + ((v32 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v32;
      (*v58)((*(v23 + 48) + v59 * v32), v31, v60);
      result = sub_222B95A70(v61, *(v23 + 56) + v40 * v32, v62);
      ++*(v23 + 16);
      v21 = v53;
    }

    v34 = v24;
    while (1)
    {
      v24 = v34 + 1;
      if (__OFADD__(v34, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v24 >= v29)
      {
        break;
      }

      v35 = v25[v24];
      ++v34;
      if (v35)
      {
        v33 = __clz(__rbit64(v35));
        v28 = (v35 - 1) & v35;
        goto LABEL_17;
      }
    }

    if ((v56 & 1) == 0)
    {

      v9 = v51;
      goto LABEL_36;
    }

    v50 = 1 << *(v21 + 32);
    v9 = v51;
    if (v50 >= 64)
    {
      bzero(v25, ((v50 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v25 = -1 << v50;
    }

    *(v21 + 16) = 0;
  }

LABEL_36:
  *v9 = v23;
  return result;
}

uint64_t sub_222B90CF4(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0254C0, &unk_222C986E0);
  v38 = a2;
  result = sub_222C94F7C();
  v8 = result;
  if (*(v5 + 16))
  {
    v36 = v3;
    v37 = v5;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = *(*(v5 + 56) + v21);
      if ((v38 & 1) == 0)
      {
        v26 = v22[1];
      }

      v27 = *(v8 + 40);
      sub_222C952FC();
      sub_222C9452C();
      result = sub_222C9534C();
      v28 = -1 << *(v8 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v15 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v15 + 8 * v30);
          if (v34 != -1)
          {
            v16 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v29) & ~*(v15 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v8 + 56) + v16) = v25;
      ++*(v8 + 16);
      v5 = v37;
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if ((v38 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_35;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v36;
    if (v35 >= 64)
    {
      bzero(v10, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_222B90FA8(uint64_t a1, char a2, uint64_t *a3, uint64_t *a4)
{
  v5 = v4;
  v7 = *v4;
  if (*(*v4 + 24) > a1)
  {
    v8 = *(*v4 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v40 = a2;
  result = sub_222C94F7C();
  v10 = result;
  if (*(v7 + 16))
  {
    v38 = v5;
    v39 = v7;
    v11 = 0;
    v12 = (v7 + 64);
    v13 = 1 << *(v7 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v7 + 64);
    v16 = (v13 + 63) >> 6;
    v17 = result + 64;
    while (v15)
    {
      v20 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_17:
      v23 = v20 | (v11 << 6);
      v24 = (*(v7 + 48) + 16 * v23);
      v25 = *v24;
      v26 = v24[1];
      v27 = *(*(v7 + 56) + 4 * v23);
      if ((v40 & 1) == 0)
      {
        v28 = v24[1];
      }

      v29 = *(v10 + 40);
      sub_222C952FC();
      sub_222C9452C();
      result = sub_222C9534C();
      v30 = -1 << *(v10 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v17 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v17 + 8 * v32);
          if (v36 != -1)
          {
            v18 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v31) & ~*(v17 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      v19 = (*(v10 + 48) + 16 * v18);
      *v19 = v25;
      v19[1] = v26;
      *(*(v10 + 56) + 4 * v18) = v27;
      ++*(v10 + 16);
      v7 = v39;
    }

    v21 = v11;
    while (1)
    {
      v11 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v11 >= v16)
      {
        break;
      }

      v22 = v12[v11];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v15 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    if ((v40 & 1) == 0)
    {

      v5 = v38;
      goto LABEL_35;
    }

    v37 = 1 << *(v7 + 32);
    v5 = v38;
    if (v37 >= 64)
    {
      bzero(v12, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v37;
    }

    *(v7 + 16) = 0;
  }

LABEL_35:
  *v5 = v10;
  return result;
}

uint64_t sub_222B91240(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D025B30, &unk_222C9A458);
  result = sub_222C94F7C();
  v8 = result;
  if (*(v5 + 16))
  {
    v32 = a2;
    v33 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v20 = v17 | (v9 << 6);
      v21 = *(*(v5 + 48) + 4 * v20);
      v22 = *(*(v5 + 56) + 8 * v20);
      v23 = *(v8 + 40);
      sub_222C952FC();
      sub_222C9532C();
      result = sub_222C9534C();
      v24 = -1 << *(v8 + 32);
      v25 = result & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v15 + 8 * (v25 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v24) >> 6;
        while (++v26 != v28 || (v27 & 1) == 0)
        {
          v29 = v26 == v28;
          if (v26 == v28)
          {
            v26 = 0;
          }

          v27 |= v29;
          v30 = *(v15 + 8 * v26);
          if (v30 != -1)
          {
            v16 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_9;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v25) & ~*(v15 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 4 * v16) = v21;
      *(*(v8 + 56) + 8 * v16) = v22;
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    if ((v32 & 1) == 0)
    {

      v3 = v33;
      goto LABEL_33;
    }

    v31 = 1 << *(v5 + 32);
    v3 = v33;
    if (v31 >= 64)
    {
      bzero((v5 + 64), ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v31;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v8;
  return result;
}

uint64_t sub_222B914C0(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0254A8, &unk_222C9A4A0);
  v40 = a2;
  result = sub_222C94F7C();
  v8 = result;
  if (*(v5 + 16))
  {
    v39 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v19 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v22 = v19 | (v9 << 6);
      v23 = (*(v5 + 48) + 16 * v22);
      v24 = *v23;
      v25 = v23[1];
      v26 = *(v5 + 56) + (v22 << 6);
      if (v40)
      {
        v45 = *(v26 + 16);
        v46 = *(v26 + 32);
        v43 = *v26;
        v44 = *(v26 + 48);
        v41 = *(v26 + 8);
        v42 = *(v26 + 56);
      }

      else
      {
        v27 = *v26;
        v28 = *(v26 + 16);
        v29 = *(v26 + 48);
        v48 = *(v26 + 32);
        v49 = v29;
        v47[0] = v27;
        v47[1] = v28;
        v45 = v28;
        v46 = v48;
        v43 = v27;
        v44 = v29;
        v41 = *(&v27 + 1);
        v42 = *(&v29 + 1);

        sub_222B95964(v47, v50);
      }

      v30 = *(v8 + 40);
      sub_222C952FC();
      sub_222C9452C();
      result = sub_222C9534C();
      v31 = -1 << *(v8 + 32);
      v32 = result & ~v31;
      v33 = v32 >> 6;
      if (((-1 << v32) & ~*(v15 + 8 * (v32 >> 6))) == 0)
      {
        v34 = 0;
        v35 = (63 - v31) >> 6;
        while (++v33 != v35 || (v34 & 1) == 0)
        {
          v36 = v33 == v35;
          if (v33 == v35)
          {
            v33 = 0;
          }

          v34 |= v36;
          v37 = *(v15 + 8 * v33);
          if (v37 != -1)
          {
            v16 = __clz(__rbit64(~v37)) + (v33 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v32) & ~*(v15 + 8 * (v32 >> 6)))) | v32 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v24;
      v17[1] = v25;
      v18 = *(v8 + 56) + (v16 << 6);
      *v18 = v43;
      *(v18 + 8) = v41;
      *(v18 + 16) = v45;
      *(v18 + 32) = v46;
      *(v18 + 48) = v44;
      *(v18 + 56) = v42;
      ++*(v8 + 16);
    }

    v20 = v9;
    while (1)
    {
      v9 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v9 >= v14)
      {
        break;
      }

      v21 = v10[v9];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v13 = (v21 - 1) & v21;
        goto LABEL_17;
      }
    }

    if ((v40 & 1) == 0)
    {

      v3 = v39;
      goto LABEL_36;
    }

    v38 = 1 << *(v5 + 32);
    v3 = v39;
    if (v38 >= 64)
    {
      bzero((v5 + 64), ((v38 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v38;
    }

    *(v5 + 16) = 0;
  }

LABEL_36:
  *v3 = v8;
  return result;
}

uint64_t sub_222B91808(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D025478, &qword_222C98698);
  result = sub_222C94F7C();
  v8 = result;
  if (*(v5 + 16))
  {
    v35 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (1)
    {
      if (!v13)
      {
        v19 = v9;
        while (1)
        {
          v9 = v19 + 1;
          if (__OFADD__(v19, 1))
          {
            __break(1u);
            goto LABEL_46;
          }

          if (v9 >= v14)
          {
            break;
          }

          v20 = v10[v9];
          ++v19;
          if (v20)
          {
            v18 = __clz(__rbit64(v20));
            v13 = (v20 - 1) & v20;
            goto LABEL_17;
          }
        }

        if ((a2 & 1) == 0)
        {

          v3 = v35;
          goto LABEL_44;
        }

        v34 = 1 << *(v5 + 32);
        v3 = v35;
        if (v34 >= 64)
        {
          bzero((v5 + 64), ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
        }

        else
        {
          *v10 = -1 << v34;
        }

        *(v5 + 16) = 0;
        goto LABEL_43;
      }

      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = *(v5 + 48);
      v23 = (*(v5 + 56) + 40 * v21);
      v24 = *(v22 + 16 * v21 + 8);
      v36 = *(v22 + 16 * v21);
      if (a2)
      {
        sub_222B405A0(v23, v37);
      }

      else
      {
        sub_222B43E3C(v23, v37);
        sub_222B95830(v36, v24);
      }

      v25 = *(v8 + 40);
      sub_222C952FC();
      if (!v24)
      {
        v26 = 0;
        goto LABEL_26;
      }

      if (v24 == 1)
      {
        break;
      }

      if (v24 == 2)
      {
        v26 = 2;
LABEL_26:
        MEMORY[0x223DCA0B0](v26);
        goto LABEL_28;
      }

      MEMORY[0x223DCA0B0](3);
      sub_222C9452C();
LABEL_28:
      result = sub_222C9534C();
      v27 = -1 << *(v8 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v15 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        v17 = v36;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v15 + 8 * v29);
          if (v33 != -1)
          {
            v16 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_9;
          }
        }

LABEL_46:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v28) & ~*(v15 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
      v17 = v36;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 16 * v16) = v17;
      result = sub_222B405A0(v37, *(v8 + 56) + 40 * v16);
      ++*(v8 + 16);
    }

    v26 = 1;
    goto LABEL_26;
  }

LABEL_43:

LABEL_44:
  *v3 = v8;
  return result;
}

uint64_t sub_222B91B70(uint64_t a1, char a2, uint64_t *a3, uint64_t *a4)
{
  v5 = v4;
  v7 = *v4;
  if (*(*v4 + 24) > a1)
  {
    v8 = *(*v4 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v41 = a2;
  result = sub_222C94F7C();
  v10 = result;
  if (*(v7 + 16))
  {
    v38 = v7;
    v11 = 0;
    v12 = (v7 + 64);
    v13 = 1 << *(v7 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v7 + 64);
    v16 = (v13 + 63) >> 6;
    v17 = result + 64;
    while (1)
    {
      if (!v15)
      {
        v20 = v11;
        while (1)
        {
          v11 = v20 + 1;
          if (__OFADD__(v20, 1))
          {
            __break(1u);
            goto LABEL_51;
          }

          if (v11 >= v16)
          {
            break;
          }

          v21 = v12[v11];
          ++v20;
          if (v21)
          {
            v19 = __clz(__rbit64(v21));
            v43 = (v21 - 1) & v21;
            goto LABEL_17;
          }
        }

        if ((v41 & 1) == 0)
        {

          v5 = v4;
          goto LABEL_49;
        }

        v37 = 1 << *(v7 + 32);
        v5 = v4;
        if (v37 >= 64)
        {
          bzero(v12, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
        }

        else
        {
          *v12 = -1 << v37;
        }

        *(v7 + 16) = 0;
        break;
      }

      v19 = __clz(__rbit64(v15));
      v43 = (v15 - 1) & v15;
LABEL_17:
      v22 = v19 | (v11 << 6);
      v23 = *(*(v7 + 48) + 8 * v22);
      v24 = *(*(v7 + 56) + 8 * v22);
      if ((v41 & 1) == 0)
      {
      }

      v25 = *(v10 + 40);
      sub_222C952FC();
      v42 = v23;
      sub_222C0A220(v23, &v44);
      v26 = v45;
      if (v45 == 1)
      {
        sub_222C9531C();
        v27 = v24;
        goto LABEL_33;
      }

      v28 = v46;
      v39 = v47;
      v40 = v48;
      v29 = v49;
      sub_222C9531C();
      sub_222C9531C();
      if (v26)
      {
        sub_222C9452C();
      }

      v27 = v24;
      sub_222C9531C();
      if (v28)
      {
        sub_222C9452C();
      }

      v7 = v38;
      if (v39)
      {
        sub_222C9531C();
        sub_222C9452C();
        if (!v40)
        {
          goto LABEL_29;
        }
      }

      else
      {
        sub_222C9531C();
        if (!v40)
        {
LABEL_29:
          sub_222C9531C();
          goto LABEL_30;
        }
      }

      sub_222C9531C();
      sub_222C9452C();
LABEL_30:
      sub_222C9531C();
      if (v29)
      {
        sub_222C9452C();
      }

      sub_222B4FCD4(&v44, &qword_27D0256C8, &unk_222C98AB0);
LABEL_33:
      result = sub_222C9534C();
      v30 = -1 << *(v10 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v17 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v17 + 8 * v32);
          if (v36 != -1)
          {
            v18 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_9;
          }
        }

LABEL_51:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v31) & ~*(v17 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      v15 = v43;
      *(*(v10 + 48) + 8 * v18) = v42;
      *(*(v10 + 56) + 8 * v18) = v27;
      ++*(v10 + 16);
    }
  }

LABEL_49:
  *v5 = v10;
  return result;
}

uint64_t sub_222B91F98(uint64_t a1, char a2, uint64_t *a3, uint64_t *a4)
{
  v5 = v4;
  v7 = *v4;
  if (*(*v4 + 24) > a1)
  {
    v8 = *(*v4 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v40 = a2;
  result = sub_222C94F7C();
  v10 = result;
  if (*(v7 + 16))
  {
    v38 = v5;
    v39 = v7;
    v11 = 0;
    v12 = (v7 + 64);
    v13 = 1 << *(v7 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v7 + 64);
    v16 = (v13 + 63) >> 6;
    v17 = result + 64;
    while (v15)
    {
      v20 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_17:
      v23 = v20 | (v11 << 6);
      v24 = (*(v7 + 48) + 16 * v23);
      v25 = *v24;
      v26 = v24[1];
      v27 = *(*(v7 + 56) + 8 * v23);
      if ((v40 & 1) == 0)
      {
        v28 = v24[1];
      }

      v29 = *(v10 + 40);
      sub_222C952FC();
      sub_222C9452C();
      result = sub_222C9534C();
      v30 = -1 << *(v10 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v17 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v17 + 8 * v32);
          if (v36 != -1)
          {
            v18 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v31) & ~*(v17 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      v19 = (*(v10 + 48) + 16 * v18);
      *v19 = v25;
      v19[1] = v26;
      *(*(v10 + 56) + 8 * v18) = v27;
      ++*(v10 + 16);
      v7 = v39;
    }

    v21 = v11;
    while (1)
    {
      v11 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v11 >= v16)
      {
        break;
      }

      v22 = v12[v11];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v15 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    if ((v40 & 1) == 0)
    {

      v5 = v38;
      goto LABEL_35;
    }

    v37 = 1 << *(v7 + 32);
    v5 = v38;
    if (v37 >= 64)
    {
      bzero(v12, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v37;
    }

    *(v7 + 16) = 0;
  }

LABEL_35:
  *v5 = v10;
  return result;
}

uint64_t sub_222B92238(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_222C94C3C() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = (*(a2 + 48) + 16 * v6);
      v11 = *v10;
      v12 = v10[1];
      sub_222C952FC();

      sub_222C9452C();
      v13 = sub_222C9534C();

      v14 = v13 & v7;
      if (v3 >= v8)
      {
        if (v14 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v14 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v14)
      {
LABEL_10:
        v15 = *(a2 + 48);
        v16 = (v15 + 16 * v3);
        v17 = (v15 + 16 * v6);
        if (v3 != v6 || v16 >= v17 + 1)
        {
          *v16 = *v17;
        }

        v18 = *(a2 + 56);
        v19 = (v18 + 8 * v3);
        v20 = (v18 + 8 * v6);
        if (v3 != v6 || v19 >= v20 + 1)
        {
          *v19 = *v20;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v21 = *(a2 + 16);
  v22 = __OFSUB__(v21, 1);
  v23 = v21 - 1;
  if (v22)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v23;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_222B923E8(int64_t a1, uint64_t a2)
{
  v4 = sub_222C9367C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  result = MEMORY[0x28223BE20](v4);
  v9 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = a2 + 64;
  v11 = -1 << *(a2 + 32);
  v12 = (a1 + 1) & ~v11;
  if ((*(a2 + 64 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12))
  {
    v13 = ~v11;
    v14 = sub_222C94C3C();
    v15 = v13;
    v35 = (v14 + 1) & v13;
    v36 = a2 + 64;
    v17 = *(v5 + 16);
    v16 = v5 + 16;
    v18 = *(v16 + 56);
    v33 = (v16 - 8);
    v34 = v17;
    do
    {
      v19 = v18 * v12;
      v20 = v15;
      v21 = v16;
      v34(v9, *(a2 + 48) + v18 * v12, v4);
      v22 = *(a2 + 40);
      sub_222B959C0(&qword_280FE02A8, MEMORY[0x277CC95F0]);
      v23 = sub_222C9440C();
      result = (*v33)(v9, v4);
      v15 = v20;
      v24 = v23 & v20;
      if (a1 >= v35)
      {
        if (v24 >= v35 && a1 >= v24)
        {
LABEL_15:
          v27 = v18 * a1;
          if (v18 * a1 < v19 || *(a2 + 48) + v18 * a1 >= (*(a2 + 48) + v19 + v18))
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v27 != v19)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v28 = *(a2 + 56);
          result = v28 + v27;
          if (v27 < v19 || result >= v28 + v19 + v18)
          {
            result = swift_arrayInitWithTakeFrontToBack();
            a1 = v12;
            v16 = v21;
            v15 = v20;
          }

          else
          {
            a1 = v12;
            v29 = v27 == v19;
            v16 = v21;
            v15 = v20;
            if (!v29)
            {
              result = swift_arrayInitWithTakeBackToFront();
              v15 = v20;
              a1 = v12;
            }
          }

          goto LABEL_4;
        }
      }

      else if (v24 >= v35 || a1 >= v24)
      {
        goto LABEL_15;
      }

      v16 = v21;
LABEL_4:
      v12 = (v12 + 1) & v15;
      v10 = v36;
    }

    while (((*(v36 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) != 0);
  }

  *(v10 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v30 = *(a2 + 16);
  v31 = __OFSUB__(v30, 1);
  v32 = v30 - 1;
  if (v31)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v32;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_222B926E8(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_222C94C3C() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = (*(a2 + 48) + 16 * v6);
      v11 = *v10;
      v12 = v10[1];
      sub_222C952FC();

      sub_222C9452C();
      v13 = sub_222C9534C();

      v14 = v13 & v7;
      if (v3 >= v8)
      {
        if (v14 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v14 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v14)
      {
LABEL_10:
        v15 = *(a2 + 48);
        v16 = (v15 + 16 * v3);
        v17 = (v15 + 16 * v6);
        if (v3 != v6 || v16 >= v17 + 1)
        {
          *v16 = *v17;
        }

        v18 = *(a2 + 56);
        v19 = (v18 + 16 * v3);
        v20 = (v18 + 16 * v6);
        if (v3 != v6 || v19 >= v20 + 1)
        {
          *v19 = *v20;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v21 = *(a2 + 16);
  v22 = __OFSUB__(v21, 1);
  v23 = v21 - 1;
  if (v22)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v23;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_222B92898(int64_t a1, uint64_t a2)
{
  v4 = sub_222C9367C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  result = MEMORY[0x28223BE20](v4);
  v9 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = a2 + 64;
  v11 = -1 << *(a2 + 32);
  v12 = (a1 + 1) & ~v11;
  if ((*(a2 + 64 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12))
  {
    v43 = a2;
    v13 = ~v11;
    v14 = sub_222C94C3C();
    v15 = v13;
    a2 = v43;
    v42 = (v14 + 1) & v15;
    v17 = *(v5 + 16);
    v16 = v5 + 16;
    v40 = v10;
    v41 = v17;
    v18 = *(v16 + 56);
    v39 = (v16 - 8);
    do
    {
      v19 = v18;
      v20 = v18 * v12;
      v21 = v15;
      v22 = v16;
      v41(v9, *(a2 + 48) + v18 * v12, v4);
      v23 = *(a2 + 40);
      sub_222B959C0(&qword_280FE02A8, MEMORY[0x277CC95F0]);
      v24 = sub_222C9440C();
      result = (*v39)(v9, v4);
      v15 = v21;
      v25 = v24 & v21;
      if (a1 >= v42)
      {
        if (v25 >= v42 && a1 >= v25)
        {
LABEL_15:
          v16 = v22;
          if (v19 * a1 < v20 || *(v43 + 48) + v19 * a1 >= (*(v43 + 48) + v20 + v19))
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v19 * a1 != v20)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 = v43;
          v28 = *(v43 + 56);
          v29 = *(*(type metadata accessor for PlusClientEventFeatureExtractor.GenericSuggestionMetadata(0) - 8) + 72);
          v30 = v29 * a1;
          result = v28 + v29 * a1;
          v31 = v29 * v12;
          v32 = v28 + v29 * v12 + v29;
          if (v30 < v31 || result >= v32)
          {
            result = swift_arrayInitWithTakeFrontToBack();
            a1 = v12;
            v10 = v40;
            v15 = v21;
          }

          else
          {
            a1 = v12;
            v34 = v30 == v31;
            v10 = v40;
            v15 = v21;
            if (!v34)
            {
              result = swift_arrayInitWithTakeBackToFront();
              v15 = v21;
              a1 = v12;
            }
          }

          goto LABEL_4;
        }
      }

      else if (v25 >= v42 || a1 >= v25)
      {
        goto LABEL_15;
      }

      v16 = v22;
      v10 = v40;
      a2 = v43;
LABEL_4:
      v12 = (v12 + 1) & v15;
      v18 = v19;
    }

    while (((*(v10 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) != 0);
  }

  *(v10 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v35 = *(a2 + 16);
  v36 = __OFSUB__(v35, 1);
  v37 = v35 - 1;
  if (v36)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v37;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_222B92BDC(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_222C94C3C() + 1) & ~v5;
    while (1)
    {
      v11 = *(a2 + 40);
      v12 = (*(a2 + 48) + 16 * v6);
      v13 = *v12;
      v14 = v12[1];
      sub_222C952FC();
      if (!v14)
      {
        v15 = 0;
        goto LABEL_11;
      }

      if (v14 == 1)
      {
        break;
      }

      if (v14 == 2)
      {
        v15 = 2;
LABEL_11:
        MEMORY[0x223DCA0B0](v15);
        goto LABEL_13;
      }

      MEMORY[0x223DCA0B0](3);

      sub_222C9452C();
LABEL_13:
      v16 = sub_222C9534C();
      result = sub_222B5B328(v13, v14);
      v17 = v16 & v7;
      if (v3 >= v8)
      {
        if (v17 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v17 >= v8)
      {
        goto LABEL_18;
      }

      if (v3 >= v17)
      {
LABEL_18:
        v18 = *(a2 + 48);
        v19 = (v18 + 16 * v3);
        v20 = (v18 + 16 * v6);
        if (v3 != v6 || v19 >= v20 + 1)
        {
          *v19 = *v20;
        }

        v21 = *(a2 + 56);
        v22 = v21 + 40 * v3;
        v23 = (v21 + 40 * v6);
        if (v3 != v6 || v22 >= v23 + 40)
        {
          v9 = *v23;
          v10 = v23[1];
          *(v22 + 32) = *(v23 + 4);
          *v22 = v9;
          *(v22 + 16) = v10;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
      if (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
      {
        goto LABEL_24;
      }
    }

    v15 = 1;
    goto LABEL_11;
  }

LABEL_24:
  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v24 = *(a2 + 16);
  v25 = __OFSUB__(v24, 1);
  v26 = v24 - 1;
  if (v25)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v26;
    ++*(a2 + 36);
  }

  return result;
}

void *sub_222B92DDC()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D025368, &qword_222C98640);
  v2 = *v0;
  v3 = sub_222C94F6C();
  v4 = v3;
  if (*(v2 + 16))
  {
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
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;
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
        goto LABEL_19;
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
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_222B92F9C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D025428, &qword_222C98648);
  v2 = *v0;
  v3 = sub_222C94F6C();
  v4 = v3;
  if (*(v2 + 16))
  {
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
        v18 = *(v2 + 56);
        v19 = *(v2 + 48) + 56 * v17;
        v20 = *(v19 + 48);
        v21 = *(v19 + 32);
        v22 = *v19;
        v28[1] = *(v19 + 16);
        v28[2] = v21;
        v28[0] = v22;
        v29 = v20;
        LOWORD(v18) = *(v18 + 2 * v17);
        v23 = *(v4 + 48) + 56 * v17;
        v24 = *v19;
        v25 = *(v19 + 16);
        v26 = *(v19 + 32);
        *(v23 + 48) = *(v19 + 48);
        *(v23 + 16) = v25;
        *(v23 + 32) = v26;
        *v23 = v24;
        *(*(v4 + 56) + 2 * v17) = v18;
        result = sub_222B554C0(v28, v27);
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
        goto LABEL_19;
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
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_222B93140()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D025450, &qword_222C98670);
  v2 = *v0;
  v3 = sub_222C94F6C();
  v4 = v3;
  if (*(v2 + 16))
  {
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
        v18 = 32 * v17;
        v19 = (*(v2 + 48) + 32 * v17);
        v20 = *v19;
        v21 = v19[1];
        v23 = v19[2];
        v22 = v19[3];
        v17 *= 4;
        v24 = *(v2 + 56) + v17;
        v25 = *v24;
        v26 = *(v24 + 1);
        LOBYTE(v24) = *(v24 + 3);
        v27 = (*(v4 + 48) + v18);
        *v27 = v20;
        v27[1] = v21;
        v27[2] = v23;
        v27[3] = v22;
        v28 = *(v4 + 56) + v17;
        *v28 = v25;
        *(v28 + 3) = v24;
        *(v28 + 1) = v26;
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
        goto LABEL_19;
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
LABEL_19:

    *v1 = v4;
  }

  return result;
}

char *sub_222B93310()
{
  v1 = v0;
  v35 = sub_222C9367C();
  v39 = *(v35 - 8);
  v2 = v39[8];
  v3 = MEMORY[0x28223BE20](v35);
  v37 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v36 = &v31 - v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D025B60, &qword_222C9A4D0);
  v6 = *v0;
  v7 = sub_222C94F6C();
  v8 = v7;
  if (*(v6 + 16))
  {
    result = (v7 + 64);
    v10 = (v6 + 64);
    v11 = ((1 << *(v8 + 32)) + 63) >> 6;
    v31 = v1;
    v32 = v6 + 64;
    if (v8 != v6 || result >= &v10[8 * v11])
    {
      result = memmove(result, v10, 8 * v11);
    }

    v12 = 0;
    v13 = *(v6 + 16);
    v38 = v8;
    *(v8 + 16) = v13;
    v14 = 1 << *(v6 + 32);
    v15 = -1;
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    v16 = v15 & *(v6 + 64);
    v17 = (v14 + 63) >> 6;
    v33 = v39 + 4;
    v34 = v39 + 2;
    if (v16)
    {
      do
      {
        v18 = __clz(__rbit64(v16));
        v40 = (v16 - 1) & v16;
LABEL_14:
        v21 = v39;
        v22 = v39[9] * (v18 | (v12 << 6));
        v23 = v39[2];
        v25 = v35;
        v24 = v36;
        v23(v36, *(v6 + 48) + v22, v35);
        v26 = v37;
        v23(v37, *(v6 + 56) + v22, v25);
        v27 = v6;
        v28 = v38;
        v29 = v21[4];
        v29(*(v38 + 48) + v22, v24, v25);
        v30 = *(v28 + 56);
        v6 = v27;
        result = (v29)(v30 + v22, v26, v25);
        v16 = v40;
      }

      while (v40);
    }

    v19 = v12;
    while (1)
    {
      v12 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v12 >= v17)
      {

        v1 = v31;
        v8 = v38;
        goto LABEL_18;
      }

      v20 = *(v32 + 8 * v12);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v40 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v8;
  }

  return result;
}