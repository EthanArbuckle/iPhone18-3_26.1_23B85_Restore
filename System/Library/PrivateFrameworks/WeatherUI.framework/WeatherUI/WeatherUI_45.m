void VFXLoadRequest.hasLocationChanged.getter()
{
  OUTLINED_FUNCTION_20_0();
  v1 = v0;
  sub_1BCE1A6F0();
  OUTLINED_FUNCTION_2();
  v27 = v3;
  v28 = v2;
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_2_0();
  v6 = v5 - v4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0C458);
  v8 = OUTLINED_FUNCTION_14(v7);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_3();
  v11 = v9 - v10;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v27 - v13;
  v15 = *(type metadata accessor for VFXLoadRequest(0) + 20);
  sub_1BC9660CC(v1 + v15, v14, &qword_1EBD0C458);
  v16 = type metadata accessor for BackgroundAnimationData.Model(0);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v14, 1, v16);
  sub_1BC94C05C(v14, &qword_1EBD0C458);
  if (EnumTagSinglePayload != 1)
  {
    sub_1BC9660CC(v1 + v15, v11, &qword_1EBD0C458);
    if (__swift_getEnumTagSinglePayload(v11, 1, v16) == 1)
    {
      sub_1BC94C05C(v11, &qword_1EBD0C458);
      v18 = 0;
      v19 = 0;
    }

    else
    {
      v21 = v27;
      v20 = v28;
      (*(v27 + 16))(v6, v11, v28);
      OUTLINED_FUNCTION_5_54();
      sub_1BC99A150(v11, v22);
      v18 = sub_1BCE1A6C0();
      v19 = v23;
      (*(v21 + 8))(v6, v20);
    }

    v24 = sub_1BCE1A6C0();
    if (v19)
    {
      if (v18 != v24 || v19 != v25)
      {
        sub_1BCE1E090();
      }
    }

    else
    {
    }
  }

  OUTLINED_FUNCTION_21();
}

uint64_t sub_1BCCD3164(uint64_t a1)
{
  MEMORY[0x1EEE9AC00](a1);
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = type metadata accessor for BackgroundAnimationData.Model(0);
  v10 = v9 - 8;
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  memcpy(v46, v4, 0x918uLL);
  v32 = type metadata accessor for VFXLoadRequest(0);
  v33 = v6;
  sub_1BC9694D8();
  v13 = &v12[*(v10 + 56)];
  v14 = *(v13 + 3);
  v15 = 0x6E6F697461636F6CLL;
  v16 = 0xEE00726577656956;
  switch(v14)
  {
    case 0:
      break;
    case 1:
      v16 = 0xEF77656976657250;
      break;
    case 2:
      v16 = 0x80000001BCE8F5E0;
      v15 = 0xD000000000000015;
      break;
    case 3:
      v16 = 0xEB00000000776569;
      v15 = 0x5674736554786676;
      break;
    case 4:
      v16 = 0xE600000000000000;
      v15 = 0x726574736F70;
      break;
    default:
      v17 = *(v13 + 2);
      v42[0] = 0x2D7473696CLL;
      v42[1] = 0xE500000000000000;
      MEMORY[0x1BFB2FB00](v17, v14);
      v15 = v42[0];
      v16 = v42[1];
      break;
  }

  v19 = v2[16];
  v18 = v2[17];
  __swift_project_boxed_opaque_existential_1(v2 + 13, v19);
  v20 = (*(v18 + 8))(v19, v18);
  v21 = sub_1BCCD6A7C(v20);

  if (!v21)
  {

    result = sub_1BC99A150(v12, type metadata accessor for BackgroundAnimationData.Model);
    *(v8 + 8) = 0;
    *(v8 + 16) = 0;
    *v8 = 1;
    *(v8 + 24) = 0;
    return result;
  }

  v40[0] = v15;
  v40[1] = v16;

  sub_1BCE1A9B0();

  memcpy(v43, v42, 0x918uLL);
  memcpy(v44, v46, 0x918uLL);
  GEOLocationCoordinate2DMake(v44, v22);
  memcpy(v42, v44, 0x918uLL);
  memcpy(&v42[292], v43, 0x918uLL);
  memcpy(v45, v44, 0x918uLL);
  if (sub_1BCBFA9E4(v45) != 1)
  {
    memcpy(v41, v42, 0x918uLL);
    memcpy(v39, v42, sizeof(v39));
    memcpy(v40, &v42[292], 0x918uLL);
    if (sub_1BCBFA9E4(v40) != 1)
    {
      memcpy(v35, &v42[292], sizeof(v35));
      sub_1BC9A67F4(v46, v34);
      sub_1BC9A67F4(v46, v34);
      sub_1BC9660CC(v43, v34, &qword_1EBD0C468);
      sub_1BC9660CC(v41, v34, &qword_1EBD0C468);
      static WeatherConditionBackgroundConfig.== infix(_:_:)();
      v28 = v27;
      memcpy(v36, v35, 0x918uLL);
      sub_1BC9A7A5C(v36);
      memcpy(v37, v39, 0x918uLL);
      sub_1BC9A7A5C(v37);
      memcpy(v38, v42, 0x918uLL);
      sub_1BC94C05C(v38, &qword_1EBD0C468);
      if (v28)
      {

        sub_1BC94C05C(v43, &qword_1EBD0C468);
        sub_1BC9A7A5C(v46);
        goto LABEL_19;
      }

      goto LABEL_16;
    }

    memcpy(v38, v42, 0x918uLL);
    sub_1BC9A67F4(v46, v37);
    sub_1BC9A67F4(v46, v37);
    sub_1BC9660CC(v43, v37, &qword_1EBD0C468);
    sub_1BC9660CC(v41, v37, &qword_1EBD0C468);
    sub_1BC9A7A5C(v38);
LABEL_15:
    memcpy(v40, v42, 0x1238uLL);
    sub_1BC94C05C(v40, &qword_1EBD0C480);
LABEL_16:
    memcpy(v42, v46, 0x918uLL);
    memcpy(v40, v43, 0x918uLL);
    v38[0] = 0;
    v37[0] = v13[33];
    v24 = v33;
    VFXLoadRequest.hasLocationChanged.getter();
    v26 = v25;
    memcpy(v41, (v24 + *(v32 + 28)), 0x68uLL);
    v39[0] = 0;
    v41[104] = 0;
    WeatherVFXEffect.applyUpdate(_:lastConfiguration:effectType:cameraPositionType:hasLocationChanged:gradient:)(v42, v40, v38, v37, v26 & 1, v41);
    sub_1BC94C05C(v43, &qword_1EBD0C468);
    memcpy(v42, v44, 0x918uLL);
    v40[0] = v15;
    v40[1] = v16;
    sub_1BCE1A9C0();
    goto LABEL_19;
  }

  memcpy(v40, &v42[292], 0x918uLL);
  if (sub_1BCBFA9E4(v40) != 1)
  {
    sub_1BC9A67F4(v46, v41);
    sub_1BC9A67F4(v46, v41);
    sub_1BC9660CC(v43, v41, &qword_1EBD0C468);
    goto LABEL_15;
  }

  sub_1BC9A67F4(v46, v41);

  memcpy(v41, v42, 0x918uLL);
  sub_1BC94C05C(v41, &qword_1EBD0C468);
LABEL_19:
  v29 = *(v21 + 16);

  v30 = v46[2];
  v31 = v46[3];
  result = sub_1BC99A150(v12, type metadata accessor for BackgroundAnimationData.Model);
  *v8 = v29;
  *(v8 + 8) = v30;
  *(v8 + 16) = v31;
  *(v8 + 24) = 1;
  return result;
}

uint64_t sub_1BCCD3928(uint64_t a1)
{
  MEMORY[0x1EEE9AC00](a1);
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = type metadata accessor for BackgroundAnimationData.Model(0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  memcpy(v42, v4, 0x918uLL);
  type metadata accessor for VFXLoadRequest(0);
  sub_1BC9694D8();
  v12 = &v11[*(v9 + 48)];
  v38[0] = *(v12 + 1);
  v13 = VFXEffectViewID.collisionID.getter();
  v15 = v14;
  if (v12[32] != 1)
  {
    goto LABEL_6;
  }

  v16 = v13;
  if ((sub_1BCCD1604(v13, v14) & 1) == 0)
  {
    goto LABEL_6;
  }

  if (BYTE4(v42[206]) && (v11[*(v9 + 64)] & 1) == 0)
  {
    v29[1] = v6;
    v18 = v2[16];
    v19 = v2[17];
    __swift_project_boxed_opaque_existential_1(v2 + 13, v18);
    v20 = (*(v19 + 16))(v18, v19);
    v21 = sub_1BCCD6A7C(v20);

    if (!v21)
    {
      goto LABEL_6;
    }

    v29[0] = v16;
    v36[0] = v16;
    v36[1] = v15;

    sub_1BCE1A9B0();

    memcpy(v39, v38, 0x918uLL);
    memcpy(v40, v42, 0x918uLL);
    GEOLocationCoordinate2DMake(v40, v22);
    memcpy(v38, v40, 0x918uLL);
    memcpy(&v38[146], v39, 0x918uLL);
    memcpy(v41, v40, 0x918uLL);
    if (sub_1BCBFA9E4(v41) == 1)
    {
      memcpy(v36, &v38[146], 0x918uLL);
      if (sub_1BCBFA9E4(v36) == 1)
      {
        sub_1BC9A67F4(v42, v37);

        memcpy(v37, v38, 0x918uLL);
        sub_1BC94C05C(v37, &qword_1EBD0C468);
LABEL_17:
        v24 = *(v21 + 16);

        v25 = v42[2];
        v26 = v42[3];
        result = sub_1BC99A150(v11, type metadata accessor for BackgroundAnimationData.Model);
        *v8 = v24;
        *(v8 + 8) = v25;
        *(v8 + 16) = v26;
        goto LABEL_7;
      }

      sub_1BC9A67F4(v42, v37);
      sub_1BC9A67F4(v42, v37);
      sub_1BC9660CC(v39, v37, &qword_1EBD0C468);
    }

    else
    {
      memcpy(v37, v38, 0x918uLL);
      memcpy(v35, v38, sizeof(v35));
      memcpy(v36, &v38[146], 0x918uLL);
      if (sub_1BCBFA9E4(v36) != 1)
      {
        memcpy(v31, &v38[146], sizeof(v31));
        sub_1BC9A67F4(v42, v30);
        sub_1BC9A67F4(v42, v30);
        sub_1BC9660CC(v39, v30, &qword_1EBD0C468);
        sub_1BC9660CC(v37, v30, &qword_1EBD0C468);
        static WeatherConditionBackgroundConfig.== infix(_:_:)();
        v28 = v27;
        memcpy(v32, v31, 0x918uLL);
        sub_1BC9A7A5C(v32);
        memcpy(v33, v35, 0x918uLL);
        sub_1BC9A7A5C(v33);
        memcpy(v34, v38, 0x918uLL);
        sub_1BC94C05C(v34, &qword_1EBD0C468);
        if (v28)
        {

          sub_1BC94C05C(v39, &qword_1EBD0C468);
          sub_1BC9A7A5C(v42);
          goto LABEL_17;
        }

        goto LABEL_16;
      }

      memcpy(v34, v38, 0x918uLL);
      sub_1BC9A67F4(v42, v33);
      sub_1BC9A67F4(v42, v33);
      sub_1BC9660CC(v39, v33, &qword_1EBD0C468);
      sub_1BC9660CC(v37, v33, &qword_1EBD0C468);
      sub_1BC9A7A5C(v34);
    }

    memcpy(v36, v38, 0x1238uLL);
    sub_1BC94C05C(v36, &qword_1EBD0C480);
LABEL_16:
    memcpy(v38, v42, 0x918uLL);
    memcpy(v36, v39, 0x918uLL);
    v34[0] = 1;
    v33[0] = v12[33];
    VFXLoadRequest.hasLocationChanged.getter();
    v35[0] = 1;
    memset(v37, 0, 104);
    v37[104] = 1;
    WeatherVFXEffect.applyUpdate(_:lastConfiguration:effectType:cameraPositionType:hasLocationChanged:gradient:)(v38, v36, v34, v33, v23 & 1, v37);
    sub_1BC94C05C(v39, &qword_1EBD0C468);
    memcpy(v38, v40, 0x918uLL);
    v36[0] = v29[0];
    v36[1] = v15;
    sub_1BCE1A9C0();
    goto LABEL_17;
  }

  sub_1BCCD6960(v16);
LABEL_6:

  result = sub_1BC99A150(v11, type metadata accessor for BackgroundAnimationData.Model);
  *(v8 + 8) = 0;
  *(v8 + 16) = 0;
  *v8 = 1;
LABEL_7:
  *(v8 + 24) = 0;
  return result;
}

void sub_1BCCD4060(uint64_t a1)
{
  v1 = MEMORY[0x1EEE9AC00](a1);
  v2 = 0xEE00726577656956;
  v3 = 0x6E6F697461636F6CLL;
  v6 = *v4;
  v5 = v4[1];
  v7 = 0x6E6F697461636F6CLL;
  v8 = 0xEE00726577656956;
  switch(v5)
  {
    case 0uLL:
      break;
    case 1uLL:
      v8 = 0xEF77656976657250;
      v7 = 0x6E6F697461636F6CLL;
      break;
    case 2uLL:
      v7 = 0xD000000000000015;
      v8 = 0x80000001BCE8F5E0;
      break;
    case 3uLL:
      v7 = 0x5674736554786676;
      v8 = 0xEB00000000776569;
      break;
    case 4uLL:
      v8 = 0xE600000000000000;
      v7 = 0x726574736F70;
      break;
    default:
      v38[0] = 0x2D7473696CLL;
      v38[1] = 0xE500000000000000;
      MEMORY[0x1BFB2FB00](v6, v5, v1);
      v7 = 0x2D7473696CLL;
      v8 = 0xE500000000000000;
      break;
  }

  v9 = sub_1BCBABFAC();
  if (v9[2])
  {
    v38[0] = v7;
    v38[1] = v8;

    sub_1BCE1A9B0();

    if (!v38[292])
    {

      goto LABEL_17;
    }

    v35[0] = v7;
    v35[1] = v8;
    sub_1BCE1A9B0();

    memcpy(__dst, __src, 0x918uLL);
    memcpy(v38, __src, 0x918uLL);
    if (sub_1BCBFA9E4(v38) == 1)
    {

LABEL_17:
      if (qword_1EDA1EE78 != -1)
      {
        swift_once();
      }

      v14 = sub_1BCE1ACC0();
      __swift_project_value_buffer(v14, qword_1EDA1EE80);
      sub_1BC9775B8(v6, v5);

      v15 = sub_1BCE1ACA0();
      v16 = sub_1BCE1D8B0();
      sub_1BC977830(v6, v5);

      if (os_log_type_enabled(v15, v16))
      {
        v17 = swift_slowAlloc();
        v18 = swift_slowAlloc();
        __dst[0] = v18;
        *v17 = 141558531;
        *(v17 + 4) = 1752392040;
        *(v17 + 12) = 2081;
        switch(v5)
        {
          case 0uLL:
            break;
          case 1uLL:
            v2 = 0xEF77656976657250;
            break;
          case 2uLL:
            v3 = 0xD000000000000015;
            v2 = 0x80000001BCE8F5E0;
            break;
          case 3uLL:
            v3 = 0x5674736554786676;
            v2 = 0xEB00000000776569;
            break;
          case 4uLL:
            v2 = 0xE600000000000000;
            v3 = 0x726574736F70;
            break;
          default:
            v38[0] = 0x2D7473696CLL;
            v38[1] = 0xE500000000000000;
            sub_1BC9775B8(v6, v5);
            MEMORY[0x1BFB2FB00](v6, v5);
            sub_1BC977830(v6, v5);
            v3 = v38[0];
            v2 = v38[1];
            break;
        }

        v23 = sub_1BC98FE38(v3, v2, __dst);

        *(v17 + 14) = v23;
        *(v17 + 22) = 2082;
        v24 = MEMORY[0x1BFB2FCC0](v9, &type metadata for VFXOverrideModel);
        v26 = v25;

        v27 = sub_1BC98FE38(v24, v26, __dst);

        *(v17 + 24) = v27;
        _os_log_impl(&dword_1BC940000, v15, v16, "Failed to execute overrides due to missing effect or configuration; effect=%{private,mask.hash}s, overrides=%{public}s", v17, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x1BFB31B10](v18, -1, -1);
        MEMORY[0x1BFB31B10](v17, -1, -1);
      }

      else
      {
      }

      return;
    }

    if (qword_1EDA1EE78 != -1)
    {
      swift_once();
    }

    v19 = sub_1BCE1ACC0();
    __swift_project_value_buffer(v19, qword_1EDA1EE80);
    sub_1BC9775B8(v6, v5);

    v20 = sub_1BCE1ACA0();
    v21 = sub_1BCE1D8D0();
    sub_1BC977830(v6, v5);

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      osloga = swift_slowAlloc();
      v35[0] = osloga;
      *v22 = 141558531;
      *(v22 + 4) = 1752392040;
      *(v22 + 12) = 2081;
      switch(v5)
      {
        case 0uLL:
          break;
        case 1uLL:
          v2 = 0xEF77656976657250;
          break;
        case 2uLL:
          v3 = 0xD000000000000015;
          v2 = 0x80000001BCE8F5E0;
          break;
        case 3uLL:
          v3 = 0x5674736554786676;
          v2 = 0xEB00000000776569;
          break;
        case 4uLL:
          v2 = 0xE600000000000000;
          v3 = 0x726574736F70;
          break;
        default:
          __src[0] = 0x2D7473696CLL;
          __src[1] = 0xE500000000000000;
          sub_1BC9775B8(v6, v5);
          MEMORY[0x1BFB2FB00](v6, v5);
          sub_1BC977830(v6, v5);
          v3 = __src[0];
          v2 = __src[1];
          break;
      }

      v29 = sub_1BC98FE38(v3, v2, v35);

      *(v22 + 14) = v29;
      *(v22 + 22) = 2082;
      v30 = MEMORY[0x1BFB2FCC0](v9, &type metadata for VFXOverrideModel);
      v32 = sub_1BC98FE38(v30, v31, v35);

      *(v22 + 24) = v32;
      _os_log_impl(&dword_1BC940000, v20, v21, "Applying overrides for %{private,mask.hash}s; overrides=%{public}s", v22, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1BFB31B10](osloga, -1, -1);
      MEMORY[0x1BFB31B10](v22, -1, -1);
    }

    memcpy(__src, v38, 0x918uLL);
    WeatherVFXEffect.applyOverrides(_:config:)(v9, __src);

    sub_1BC94C05C(__dst, &qword_1EBD0C468);
  }

  else
  {

    if (qword_1EDA1EE78 != -1)
    {
      swift_once();
    }

    v10 = sub_1BCE1ACC0();
    __swift_project_value_buffer(v10, qword_1EDA1EE80);
    sub_1BC9775B8(v6, v5);
    oslog = sub_1BCE1ACA0();
    v11 = sub_1BCE1D8D0();
    sub_1BC977830(v6, v5);
    if (os_log_type_enabled(oslog, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      __dst[0] = v13;
      *v12 = 141558275;
      *(v12 + 4) = 1752392040;
      *(v12 + 12) = 2081;
      switch(v5)
      {
        case 0uLL:
          break;
        case 1uLL:
          v2 = 0xEF77656976657250;
          break;
        case 2uLL:
          v3 = 0xD000000000000015;
          v2 = 0x80000001BCE8F5E0;
          break;
        case 3uLL:
          v3 = 0x5674736554786676;
          v2 = 0xEB00000000776569;
          break;
        case 4uLL:
          v2 = 0xE600000000000000;
          v3 = 0x726574736F70;
          break;
        default:
          v38[0] = 0x2D7473696CLL;
          v38[1] = 0xE500000000000000;
          sub_1BC9775B8(v6, v5);
          MEMORY[0x1BFB2FB00](v6, v5);
          sub_1BC977830(v6, v5);
          v3 = 0x2D7473696CLL;
          v2 = 0xE500000000000000;
          break;
      }

      v28 = sub_1BC98FE38(v3, v2, __dst);

      *(v12 + 14) = v28;
      _os_log_impl(&dword_1BC940000, oslog, v11, "No overrides to execute for %{private,mask.hash}s", v12, 0x16u);
      __swift_destroy_boxed_opaque_existential_1(v13);
      MEMORY[0x1BFB31B10](v13, -1, -1);
      MEMORY[0x1BFB31B10](v12, -1, -1);
    }

    else
    {
    }
  }
}

void sub_1BCCD49F8()
{
  if (sub_1BCCD15C0())
  {
    if (qword_1EDA1EE78 != -1)
    {
      swift_once();
    }

    v0 = sub_1BCE1ACC0();
    __swift_project_value_buffer(v0, qword_1EDA1EE80);
    v1 = sub_1BCE1ACA0();
    v2 = sub_1BCE1D8D0();
    if (os_log_type_enabled(v1, v2))
    {
      v3 = swift_slowAlloc();
      *v3 = 0;
      _os_log_impl(&dword_1BC940000, v1, v2, "Preparing scene is allowed; app is in the foreground", v3, 2u);
      MEMORY[0x1BFB31B10](v3, -1, -1);
    }

    sub_1BCE1A7D0();

    sub_1BCE1A960();
  }

  else
  {
    if (qword_1EDA1EE78 != -1)
    {
      swift_once();
    }

    v4 = sub_1BCE1ACC0();
    __swift_project_value_buffer(v4, qword_1EDA1EE80);
    oslog = sub_1BCE1ACA0();
    v5 = sub_1BCE1D8D0();
    if (os_log_type_enabled(oslog, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_1BC940000, oslog, v5, "Skipping preparing scene; app is in the background", v6, 2u);
      MEMORY[0x1BFB31B10](v6, -1, -1);
    }
  }
}

void sub_1BCCD4C0C(uint64_t a1)
{
  v2 = type metadata accessor for Request(0);
  MEMORY[0x1EEE9AC00](v2);
  v4 = (&v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v5);
  v6 = 1 << *(a1 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a1 + 64);
  v9 = (v6 + 63) >> 6;

  v10 = 0;
  v11 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v12 = v10;
    if (!v8)
    {
      break;
    }

LABEL_8:
    v8 &= v8 - 1;
    sub_1BC9694D8();
    sub_1BC9526CC();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v22 = *v4;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1BCB66444(0, *(v11 + 16) + 1, 1, v11);
        v11 = v16;
      }

      v14 = *(v11 + 16);
      v13 = *(v11 + 24);
      v15 = v14 + 1;
      if (v14 >= v13 >> 1)
      {
        v21 = v14 + 1;
        v17 = v11;
        v18 = v14;
        sub_1BCB66444(v13 > 1, v14 + 1, 1, v17);
        v14 = v18;
        v15 = v21;
        v11 = v19;
      }

      *(v11 + 16) = v15;
      *(v11 + 16 * v14 + 32) = v22;
    }

    else
    {
      sub_1BC99A150(v4, type metadata accessor for Request);
    }
  }

  while (1)
  {
    v10 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v10 >= v9)
    {

      return;
    }

    v8 = *(a1 + 64 + 8 * v10);
    ++v12;
    if (v8)
    {
      goto LABEL_8;
    }
  }

  __break(1u);
}

uint64_t sub_1BCCD4E84()
{
  v7 = MEMORY[0x1E69E7CC0];
  sub_1BCE1A7D0();

  sub_1BCE1A960();

  v0 = *(v7 + 16);
  if (v0)
  {
    v1 = (v7 + 40);
    do
    {
      v2 = *(v1 - 1);
      v3 = *v1;
      v4 = 0x5674736554786676;
      switch(*v1)
      {
        case 0uLL:
        case 1uLL:
          sub_1BCCD6960(0x6E6F697461636F6CLL);

          if (v3)
          {
            v5 = 0xEF77656976657250;
          }

          else
          {
            v5 = 0xEE00726577656956;
          }

          MEMORY[0x1BFB2FB00](0x6E6F697461636F6CLL, v5);

          sub_1BC977830(v2, v3);
          sub_1BCCD6960(0x6F6973696C6C6F63);
          goto LABEL_11;
        case 2uLL:
          v4 = 0xD000000000000015;
          goto LABEL_10;
        case 3uLL:
          goto LABEL_10;
        case 4uLL:
          v4 = 0x726574736F70;
LABEL_10:
          sub_1BCCD6960(v4);
LABEL_11:

          break;
        default:
          sub_1BC9775B8(v2, v3);
          MEMORY[0x1BFB2FB00](v2, v3);
          sub_1BCCD6960(0x2D7473696CLL);

          sub_1BC977830(v2, v3);
          break;
      }

      v1 += 2;
      --v0;
    }

    while (v0);
  }
}

uint64_t sub_1BCCD5148(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1BCE1AC50();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  result = swift_beginAccess();
  if (*(*(a1 + 16) + 16))
  {
    (*(v9 + 16))(&v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), a4, v8);
    v12 = (*(v9 + 80) + 40) & ~*(v9 + 80);
    v13 = swift_allocObject();
    *(v13 + 2) = a2;
    *(v13 + 3) = a3;
    *(v13 + 4) = a1;
    (*(v9 + 32))(&v13[v12], &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v8);

    sub_1BCE1AA90();
  }

  return result;
}

void sub_1BCCD52D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for Request(0);
  v89 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v90 = &v85 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v88 = &v85 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0C438);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v92 = &v85 - v12;
  v91 = type metadata accessor for VFXLoadRequest(0);
  v13 = *(v91 - 8);
  MEMORY[0x1EEE9AC00](v91);
  v93 = &v85 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for VFXLoadResponse(0);
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v85 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_1BCCD15C0();
  if (v19)
  {
    v20 = v15;
    v92 = v16;
    v93 = v18;
    v21 = *(a1 + 160);
    v98 = MEMORY[0x1E69E7CC0];
    *&v99[0] = v21;
    MEMORY[0x1EEE9AC00](v19);
    *(&v85 - 4) = v22;
    *(&v85 - 3) = a1;
    *(&v85 - 2) = &v98;
    sub_1BCE1A7D0();

    sub_1BCE1A960();

    if (qword_1EDA1EE78 != -1)
    {
LABEL_36:
      swift_once();
    }

    v23 = sub_1BCE1ACC0();
    __swift_project_value_buffer(v23, qword_1EDA1EE80);
    v24 = sub_1BCE1ACA0();
    v25 = sub_1BCE1D8D0();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      *&v99[0] = v27;
      *v26 = 141558275;
      *(v26 + 4) = 1752392040;
      *(v26 + 12) = 2081;
      swift_beginAccess();

      v29 = a1;
      v30 = MEMORY[0x1BFB2FCC0](v28, v20);
      v31 = a4;
      v33 = v32;

      v34 = v30;
      a1 = v29;
      v35 = sub_1BC98FE38(v34, v33, v99);
      a4 = v31;

      *(v26 + 14) = v35;
      _os_log_impl(&dword_1BC940000, v24, v25, "Publishing VFX background responses; responses=%{private,mask.hash}s", v26, 0x16u);
      __swift_destroy_boxed_opaque_existential_1(v27);
      MEMORY[0x1BFB31B10](v27, -1, -1);
      MEMORY[0x1BFB31B10](v26, -1, -1);
    }

    v36 = v93;
    swift_beginAccess();
    v37 = *(v98 + 16);
    if (v37)
    {
      v90 = a4;
      v91 = a1;
      v38 = v20;
      v39 = *(v20 + 24);
      v40 = v36 + *(v20 + 20);
      v41 = v36 + v39;
      v42 = v36 + *(v38 + 28);
      v43 = v98 + ((*(v92 + 80) + 32) & ~*(v92 + 80));
      v92 = *(v92 + 72);
      v89 = v98;

      do
      {
        sub_1BC9694D8();
        v44 = *(v40 + 8);
        v45 = *(v40 + 16);
        v46 = *(v40 + 24);
        v96[0] = *v40;
        v96[1] = v44;
        v96[2] = v45;
        v97 = v46;
        v48 = *(v41 + 8);
        v49 = *(v41 + 16);
        v50 = *(v41 + 24);
        v94[0] = *v41;
        v47 = v94[0];
        v94[1] = v48;
        v94[2] = v49;
        v95 = v50;
        v51 = *v42;
        v52 = *(v42 + 16);
        v100 = *(v42 + 32);
        v99[0] = v51;
        v99[1] = v52;
        sub_1BCA7BDF8(v96[0]);
        v53 = v47;
        v54 = v93;
        sub_1BCA7BDF8(v53);
        WeatherVFXConditionBackground.publishUpdates(backgroundEffectModel:collisionEffectModel:backgroundMask:)(v96, v94, v99);
        sub_1BCA7BE08(v94[0]);
        sub_1BCA7BE08(v96[0]);
        sub_1BC99A150(v54, type metadata accessor for VFXLoadResponse);
        v43 += v92;
        --v37;
      }

      while (v37);
    }

    sub_1BCE1D9F0();
    sub_1BCE1AC30();
  }

  else
  {
    a4 = *(a2 + 16);
    if (a4)
    {
      v55 = a2 + ((*(v13 + 80) + 32) & ~*(v13 + 80));
      v56 = *(v13 + 72);
      v87 = v7;
      v86 = v56;
      do
      {
        v57 = v93;
        sub_1BC9694D8();
        v58 = v57 + *(v91 + 24);
        v59 = v58 + *(type metadata accessor for BackgroundAnimationData.Model(0) + 48);
        swift_beginAccess();
        if (*(*(a1 + 144) + 16))
        {
          sub_1BC99A6B8();
          v60 = v92;
          if (v61)
          {
            sub_1BC9694D8();
            v62 = 0;
          }

          else
          {
            v62 = 1;
          }
        }

        else
        {
          v62 = 1;
          v60 = v92;
        }

        __swift_storeEnumTagSinglePayload(v60, v62, 1, v7);
        swift_endAccess();
        if (__swift_getEnumTagSinglePayload(v60, 1, v7) == 1)
        {
          sub_1BC94C05C(v60, &qword_1EBD0C438);
          v63 = *(v59 + 16);
          v64 = *(v59 + 24);
          sub_1BC9694D8();
          swift_storeEnumTagMultiPayload();
          swift_beginAccess();
          sub_1BC9526CC();
          swift_isUniquelyReferenced_nonNull_native();
          v96[0] = *(a1 + 144);
          v65 = v96[0];
          v20 = a1;
          *(a1 + 144) = 0x8000000000000000;
          v66 = sub_1BC99A6B8();
          if (__OFADD__(v65[2], (v67 & 1) == 0))
          {
            __break(1u);
LABEL_35:
            __break(1u);
            goto LABEL_36;
          }

          v68 = v66;
          a1 = v67;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD085D0);
          if (sub_1BCE1DE10())
          {
            v69 = sub_1BC99A6B8();
            if ((a1 & 1) != (v70 & 1))
            {
              sub_1BCE1E0F0();
              __break(1u);
              return;
            }

            v68 = v69;
          }

          v71 = v96[0];
          if (a1)
          {
            sub_1BCCD75C4(v90, *(v96[0] + 7) + *(v89 + 72) * v68);
          }

          else
          {
            *(v96[0] + (v68 >> 6) + 8) |= 1 << v68;
            v72 = (v71[6] + 16 * v68);
            *v72 = v63;
            v72[1] = v64;
            sub_1BC9526CC();
            v73 = v71[2];
            v74 = __OFADD__(v73, 1);
            v75 = v73 + 1;
            if (v74)
            {
              goto LABEL_35;
            }

            v71[2] = v75;
            sub_1BC9775B8(v63, v64);
          }

          a1 = v20;
          *(v20 + 144) = v71;

          swift_endAccess();
          sub_1BC99A150(v93, type metadata accessor for VFXLoadRequest);
          v7 = v87;
          v56 = v86;
        }

        else
        {
          sub_1BC99A150(v93, type metadata accessor for VFXLoadRequest);
          sub_1BC94C05C(v60, &qword_1EBD0C438);
        }

        v55 += v56;
        --a4;
      }

      while (a4);
    }

    if (qword_1EDA1EE78 != -1)
    {
      swift_once();
    }

    v76 = sub_1BCE1ACC0();
    __swift_project_value_buffer(v76, qword_1EDA1EE80);

    v77 = sub_1BCE1ACA0();
    v78 = sub_1BCE1D8D0();

    if (os_log_type_enabled(v77, v78))
    {
      v79 = swift_slowAlloc();
      v80 = swift_slowAlloc();
      v96[0] = v80;
      *v79 = 141558275;
      *(v79 + 4) = 1752392040;
      *(v79 + 12) = 2081;
      swift_beginAccess();
      sub_1BC94E37C();

      v81 = sub_1BCE1D120();
      v83 = v82;

      v84 = sub_1BC98FE38(v81, v83, v96);

      *(v79 + 14) = v84;
      _os_log_impl(&dword_1BC940000, v77, v78, "Skipping publishing of updates because app is not in the foreground; pendingRequests=%{private,mask.hash}s", v79, 0x16u);
      __swift_destroy_boxed_opaque_existential_1(v80);
      MEMORY[0x1BFB31B10](v80, -1, -1);
      MEMORY[0x1BFB31B10](v79, -1, -1);
    }
  }
}

uint64_t sub_1BCCD5E04(uint64_t *a1, uint64_t a2, void *a3)
{
  v43 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0C438);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v38 - v6;
  v8 = type metadata accessor for Request(0);
  v46 = *(v8 - 8);
  v47 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v45 = v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for VFXLoadRequest(0);
  MEMORY[0x1EEE9AC00](v10);
  v44 = v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for VFXLoadResponse(0);
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v42 = v38 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = v38 - v16;
  swift_beginAccess();
  result = *a1;
  v19 = *(*a1 + 16);
  if (v19)
  {
    v40 = (*(v13 + 80) + 32) & ~*(v13 + 80);
    v41 = v7;
    v20 = result + v40;
    v21 = *(v13 + 72);
    v38[1] = result;

    while (1)
    {
      sub_1BC9694D8();
      type metadata accessor for BackgroundAnimationData.Model(0);
      swift_beginAccess();
      if (!*(*(a2 + 152) + 16))
      {
        goto LABEL_7;
      }

      sub_1BC99A6B8();
      if ((v22 & 1) == 0)
      {
        goto LABEL_7;
      }

      v23 = v45;
      sub_1BC9694D8();
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        break;
      }

      v24 = v44;
      sub_1BC9526CC();
      swift_endAccess();
      if (static VFXLoadRequest.== infix(_:_:)())
      {
        swift_beginAccess();
        v25 = sub_1BC99A6B8();
        if (v26)
        {
          v27 = v25;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v48 = *(a2 + 152);
          *(a2 + 152) = 0x8000000000000000;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD085D0);
          sub_1BCE1DE10();
          v28 = v48;
          sub_1BC977830(*(*(v48 + 48) + 16 * v27), *(*(v48 + 48) + 16 * v27 + 8));
          v29 = v41;
          sub_1BC9526CC();
          sub_1BC94E37C();
          v30 = v47;
          sub_1BCE1DE20();
          *(a2 + 152) = v28;

          v31 = 0;
        }

        else
        {
          v31 = 1;
          v29 = v41;
          v30 = v47;
        }

        __swift_storeEnumTagSinglePayload(v29, v31, 1, v30);
        sub_1BC94C05C(v29, &qword_1EBD0C438);
        swift_endAccess();
        sub_1BC9694D8();
        v32 = v43;
        v33 = *v43;
        v34 = swift_isUniquelyReferenced_nonNull_native();
        *v32 = v33;
        if ((v34 & 1) == 0)
        {
          sub_1BCB66554();
          v33 = v36;
          *v43 = v36;
        }

        v35 = *(v33 + 16);
        if (v35 >= *(v33 + 24) >> 1)
        {
          sub_1BCB66554();
          *v43 = v37;
        }

        sub_1BC99A150(v44, type metadata accessor for VFXLoadRequest);
        sub_1BC99A150(v17, type metadata accessor for VFXLoadResponse);
        *(*v43 + 16) = v35 + 1;
        sub_1BC9526CC();
        goto LABEL_9;
      }

      sub_1BC99A150(v24, type metadata accessor for VFXLoadRequest);
LABEL_8:
      sub_1BC99A150(v17, type metadata accessor for VFXLoadResponse);
LABEL_9:
      v20 += v21;
      if (!--v19)
      {
      }
    }

    sub_1BC99A150(v23, type metadata accessor for Request);
LABEL_7:
    swift_endAccess();
    goto LABEL_8;
  }

  return result;
}

void sub_1BCCD63C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[0] = a2;
  v3[1] = a3;
  sub_1BCCD4060(v3);
}

Swift::Bool __swiftcall WeatherConditionBackgroundManager.isPlaybackBlocked()()
{
  v1 = *(v0 + 48);
  ObjectType = swift_getObjectType();
  return (*(v1 + 8))(ObjectType, v1) & 1;
}

Swift::Void __swiftcall WeatherConditionBackgroundManager.setPlaybackBlocked(_:)(Swift::Bool a1)
{
  v2 = a1;
  v3 = *(v1 + 48);
  ObjectType = swift_getObjectType();
  (*(v3 + 16))(v2, ObjectType, v3);
}

Swift::Void __swiftcall WeatherConditionBackgroundManager.play(_:)(Swift::Bool a1)
{
  v2 = a1;
  v3 = *(v1 + 48);
  ObjectType = swift_getObjectType();
  (*(v3 + 24))(v2, ObjectType, v3);
}

uint64_t WeatherConditionBackgroundManager.pause(_:completion:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(v3 + 48);
  ObjectType = swift_getObjectType();
  return (*(v7 + 32))(a1, a2, a3, ObjectType, v7);
}

void sub_1BCCD6574()
{
  v0 = WeatherConditionBackgroundManager.vfxScene.getter();
  sub_1BCE1AE00();
}

void sub_1BCCD65C0(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0C438);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v33 = v32 - v7;
  v8 = type metadata accessor for Request(0);
  v36 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v35 = v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a1 + 16);
  if (v10)
  {
    v11 = (a1 + 40);
    v34 = v8;
    do
    {
      v12 = *(v11 - 1);
      v13 = *v11;
      swift_beginAccess();
      v14 = *(*(a2 + 152) + 16);
      sub_1BC9775B8(v12, v13);
      if (v14 && (sub_1BC99A6B8(), (v15 & 1) != 0))
      {
        v16 = v35;
        sub_1BC9694D8();
        EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
        sub_1BC99A150(v16, type metadata accessor for Request);
        swift_endAccess();
        if (EnumCaseMultiPayload == 1)
        {
          swift_beginAccess();
          v18 = sub_1BC99A6B8();
          if (v19)
          {
            v20 = v18;
            v32[3] = swift_isUniquelyReferenced_nonNull_native();
            v37 = *(a2 + 152);
            *(a2 + 152) = 0x8000000000000000;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD085D0);
            sub_1BCE1DE10();
            v21 = v37;
            sub_1BC977830(*(*(v37 + 48) + 16 * v20), *(*(v37 + 48) + 16 * v20 + 8));
            v22 = v33;
            sub_1BC9526CC();
            sub_1BC94E37C();
            v23 = v34;
            sub_1BCE1DE20();
            *(a2 + 152) = v21;

            v24 = 0;
          }

          else
          {
            v24 = 1;
            v22 = v33;
            v23 = v34;
          }

          __swift_storeEnumTagSinglePayload(v22, v24, 1, v23);
          sub_1BC94C05C(v22, &qword_1EBD0C438);
          swift_endAccess();
          v25 = *a3;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *a3 = v25;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_1BCB66444(0, *(v25 + 16) + 1, 1, v25);
            v25 = v30;
            *a3 = v30;
          }

          v28 = *(v25 + 16);
          v27 = *(v25 + 24);
          if (v28 >= v27 >> 1)
          {
            sub_1BCB66444(v27 > 1, v28 + 1, 1, v25);
            v25 = v31;
            *a3 = v31;
          }

          *(v25 + 16) = v28 + 1;
          v29 = v25 + 16 * v28;
          *(v29 + 32) = v12;
          *(v29 + 40) = v13;
          goto LABEL_10;
        }
      }

      else
      {
        swift_endAccess();
      }

      sub_1BC977830(v12, v13);
LABEL_10:
      v11 += 2;
      --v10;
    }

    while (v10);
  }
}

uint64_t sub_1BCCD6960(uint64_t a1)
{
  MEMORY[0x1EEE9AC00](a1);
  v2 = v1;
  v4 = v3;
  __src[0] = v3;
  __src[1] = v1;

  sub_1BCE1A9B0();

  if (v10)
  {
    v6 = WeatherConditionBackgroundManager.vfxScene.getter();
    v7 = *(v10 + 16);
    sub_1BCE1ADA0();

    __src[0] = v4;
    __src[1] = v2;

    sub_1BCE1A9C0();
    sub_1BCB1F2BC(__src);
    memcpy(__dst, __src, sizeof(__dst));

    sub_1BCE1A9C0();
  }

  return result;
}

uint64_t sub_1BCCD6A7C(void *a1)
{

  sub_1BCE1A9B0();

  v2 = v7;
  if (!v7)
  {
    if (a1)
    {
      v3 = a1;
      v4 = WeatherConditionBackgroundManager.vfxScene.getter();
      v5 = sub_1BCE1AE50();

      type metadata accessor for WeatherVFXEffect();
      swift_allocObject();
      v2 = WeatherVFXEffect.init(vfxEffect:)(v5);
      swift_retain_n();

      sub_1BCE1A9C0();
    }

    else
    {
      return 0;
    }
  }

  return v2;
}

uint64_t sub_1BCCD6B84()
{
  v0 = type metadata accessor for VFXLoadRequest(0);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = v20 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for Request(0);
  MEMORY[0x1EEE9AC00](v3);
  v5 = (v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v6);
  v8 = v20 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0C460);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = v20 - v10;
  v13 = (v20 + *(v12 + 56) - v10);
  sub_1BC9694D8();
  sub_1BC9694D8();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1BC9694D8();
    v15 = *v5;
    v14 = v5[1];
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v16 = *v13;
      v17 = v13[1];
      v21[0] = v15;
      v21[1] = v14;
      v20[0] = v16;
      v20[1] = v17;
      v18 = static VFXEffectViewID.== infix(_:_:)(v21, v20);
      sub_1BC977830(v16, v17);
      sub_1BC977830(v15, v14);
LABEL_9:
      sub_1BC99A150(v11, type metadata accessor for Request);
      return v18 & 1;
    }

    sub_1BC977830(v15, v14);
  }

  else
  {
    sub_1BC9694D8();
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      sub_1BC9526CC();
      v18 = static VFXLoadRequest.== infix(_:_:)();
      sub_1BC99A150(v2, type metadata accessor for VFXLoadRequest);
      sub_1BC99A150(v8, type metadata accessor for VFXLoadRequest);
      goto LABEL_9;
    }

    sub_1BC99A150(v8, type metadata accessor for VFXLoadRequest);
  }

  sub_1BC94C05C(v11, &qword_1EBD0C460);
  v18 = 0;
  return v18 & 1;
}

void *VFXLoadRequest.gradient.getter()
{
  v2 = (v1 + *(OUTLINED_FUNCTION_18_22() + 28));

  return memcpy(v0, v2, 0x68uLL);
}

uint64_t VFXLoadRequest.dynamicTypeSize.getter()
{
  v2 = *(OUTLINED_FUNCTION_18_22() + 32);
  sub_1BCE1B7E0();
  OUTLINED_FUNCTION_4();
  v5 = *(v4 + 16);

  return v5(v0, v1 + v2, v3);
}

uint64_t VFXLoadRequest.targetWindowSizeClass.getter()
{
  result = OUTLINED_FUNCTION_18_22();
  *v0 = *(v1 + *(result + 36));
  return result;
}

uint64_t VFXLoadRequest.collisionViewMetrics.getter()
{
  v2 = v1 + *(OUTLINED_FUNCTION_18_22() + 40);
  v3 = *(v2 + 16);
  *v0 = *v2;
  *(v0 + 16) = v3;
}

uint64_t sub_1BCCD703C()
{
  BYTE8(v4) = 0;
  sub_1BCE1DD50();
  MEMORY[0x1BFB2FB00](0xD000000000000013, 0x80000001BCE8F750);
  v1 = type metadata accessor for VFXLoadRequest(0);
  v2 = BackgroundAnimationData.Model.description.getter();
  MEMORY[0x1BFB2FB00](v2);

  MEMORY[0x1BFB2FB00](0x3A657A6973202CLL, 0xE700000000000000);
  *&v4 = *(v0 + *(v1 + 36));
  sub_1BCE1DE00();
  MEMORY[0x1BFB2FB00](41, 0xE100000000000000);
  return *(&v4 + 1);
}

uint64_t sub_1BCCD7138@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1BC99A6B8();
  if (v4)
  {
    v5 = v3;
    swift_isUniquelyReferenced_nonNull_native();
    v11 = *v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD085D0);
    sub_1BCE1DE10();
    sub_1BC977830(*(*(v11 + 48) + 16 * v5), *(*(v11 + 48) + 16 * v5 + 8));
    v6 = type metadata accessor for Request(0);
    sub_1BC9526CC();
    sub_1BC94E37C();
    sub_1BCE1DE20();
    *v1 = v11;
    v7 = a1;
    v8 = 0;
    v9 = v6;
  }

  else
  {
    v9 = type metadata accessor for Request(0);
    v7 = a1;
    v8 = 1;
  }

  return __swift_storeEnumTagSinglePayload(v7, v8, 1, v9);
}

uint64_t sub_1BCCD7280@<X0>(uint64_t *a1@<X2>, uint64_t (*a2)(void)@<X4>, uint64_t a3@<X8>)
{
  sub_1BC95511C();
  if (v7)
  {
    swift_isUniquelyReferenced_nonNull_native();
    v13 = *v3;
    __swift_instantiateConcreteTypeFromMangledNameV2(a1);
    sub_1BCE1DE10();

    v8 = a2(0);
    OUTLINED_FUNCTION_4();
    sub_1BC9526CC();
    sub_1BCE1DE20();
    *v3 = v13;
    v9 = a3;
    v10 = 0;
    v11 = v8;
  }

  else
  {
    v11 = a2(0);
    v9 = a3;
    v10 = 1;
  }

  return __swift_storeEnumTagSinglePayload(v9, v10, 1, v11);
}

void sub_1BCCD73D0(unint64_t a1, uint64_t a2, const void *a3, uint64_t a4)
{
  OUTLINED_FUNCTION_8_49(a1, a4 + 8 * (a1 >> 6));
  v7 = type metadata accessor for WeatherConditionGradientManager.GradientCacheKey();
  OUTLINED_FUNCTION_14(v7);
  sub_1BC9526CC();
  memcpy((*(a4 + 56) + 104 * a1), a3, 0x68uLL);
  OUTLINED_FUNCTION_23_26();
  if (v9)
  {
    __break(1u);
  }

  else
  {
    *(a4 + 16) = v8;
  }
}

void sub_1BCCD747C(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = OUTLINED_FUNCTION_8_49(a1, a4 + 8 * (a1 >> 6));
  *(*(v6 + 48) + 8 * v5) = v7;
  sub_1BCA9C52C(v8, (*(v6 + 56) + 32 * v5));
  OUTLINED_FUNCTION_23_26();
  if (v10)
  {
    __break(1u);
  }

  else
  {
    *(a4 + 16) = v9;
  }
}

unint64_t sub_1BCCD74D0(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result = OUTLINED_FUNCTION_7_52(a1, a2, a3, a4, a5);
  v8 = (v7 + 16 * result);
  *v8 = v9;
  v8[1] = v10;
  *(*(v6 + 56) + 8 * result) = v11;
  v12 = *(v6 + 16);
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
  }

  else
  {
    *(v6 + 16) = v14;
  }

  return result;
}

uint64_t sub_1BCCD750C(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = OUTLINED_FUNCTION_8_49(a1, a4 + 8 * (a1 >> 6));
  v6 = (v5[6] + 16 * result);
  *v6 = v7;
  v6[1] = v8;
  v9 = (v5[7] + 8 * result);
  *v9 = v10;
  v9[1] = v11;
  v12 = v5[2];
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
  }

  else
  {
    v5[2] = v14;
  }

  return result;
}

unint64_t sub_1BCCD7558(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result = OUTLINED_FUNCTION_7_52(a1, a2, a3, a4, a5);
  *(v8 + result) = v7 & 1;
  v9 = (*(v6 + 56) + 16 * result);
  *v9 = v10;
  v9[1] = v11;
  v12 = *(v6 + 16);
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
  }

  else
  {
    *(v6 + 16) = v14;
  }

  return result;
}

uint64_t sub_1BCCD75C4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Request(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t *sub_1BCCD7628(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
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
    v8 = sub_1BC99D930(v7, a2, a3, a4);
    swift_bridgeObjectRelease_n();

    return v8;
  }

  return result;
}

uint64_t objectdestroy_24Tm(void (*a1)(void), void (*a2)(void))
{
  v5 = sub_1BCE1AC50();
  OUTLINED_FUNCTION_2();
  v7 = v6;
  v8 = *(v6 + 80);
  v9 = (v8 + 40) & ~v8;
  v11 = *(v10 + 64);

  a1(*(v2 + 24));
  a2(*(v2 + 32));
  (*(v7 + 8))(v2 + v9, v5);

  return MEMORY[0x1EEE6BDD0](v2, v9 + v11, v8 | 7);
}

uint64_t sub_1BCCD7878(uint64_t (*a1)(uint64_t, uint64_t, uint64_t, char *))
{
  v2 = sub_1BCE1AC50();
  OUTLINED_FUNCTION_14(v2);
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1 + ((*(v3 + 80) + 40) & ~*(v3 + 80));

  return a1(v4, v5, v6, v7);
}

void sub_1BCCD7958()
{
  type metadata accessor for VFXLoadRequest(319);
  if (v0 <= 0x3F)
  {
    sub_1BC94E330(319, qword_1EDA1E868);
    if (v1 <= 0x3F)
    {
      sub_1BC94E330(319, &qword_1EDA1EA08);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1BCCD7A14(uint64_t a1@<X8>)
{
  v2 = a1 + 1436;
  sub_1BCCD81C4();
  v4 = v3;
  sub_1BCCD81C4();
  *a1 = 0x4006666666666666;
  *(a1 + 8) = 6;
  *(a1 + 16) = 0x3FF0000000000000;
  *(a1 + 24) = 48;
  *(a1 + 32) = xmmword_1BCE3BED0;
  *(a1 + 48) = xmmword_1BCE3BED0;
  *(a1 + 64) = 0x42C8000042480000;
  *(a1 + 72) = 0xC3FA000000000000;
  *(a1 + 80) = xmmword_1BCE3E630;
  *(a1 + 96) = xmmword_1BCE43040;
  *(a1 + 112) = 0x3E8000003DF5C28FLL;
  *(a1 + 128) = xmmword_1BCE3C7C0;
  *(a1 + 144) = xmmword_1BCE3D840;
  *(a1 + 160) = xmmword_1BCE3BF00;
  *(a1 + 176) = 1153138688;
  *(a1 + 184) = 0x3E4CCCCD3DA3D70ALL;
  *(a1 + 192) = xmmword_1BCE3C7C0;
  *(a1 + 208) = xmmword_1BCE3C700;
  *(a1 + 224) = xmmword_1BCE3C660;
  *(a1 + 240) = 0x41C8000040E85937;
  *(a1 + 248) = 1133903872;
  *(a1 + 256) = 0x3E8F5C293E3851ECLL;
  *(a1 + 264) = 0x4000000041200000;
  *(a1 + 272) = 1084227584;
  __asm { FMOV            V0.4S, #1.0 }

  *(a1 + 288) = xmmword_1BCE3C7C0;
  *(a1 + 304) = _Q0;
  *(a1 + 320) = 0x4416000041880000;
  *(a1 + 328) = 0x3E6B851F3E23D70ALL;
  *(a1 + 336) = 0x3F80000041000000;
  *(a1 + 352) = xmmword_1BCE3C7C0;
  *(a1 + 368) = xmmword_1BCE3C700;
  *(a1 + 384) = 0;
  *(a1 + 388) = 0x3B449BA63F800000;
  *(a1 + 400) = xmmword_1BCE3C670;
  *(a1 + 416) = 0x3F0000003F000000;
  *(a1 + 424) = 30;
  *(a1 + 432) = xmmword_1BCE3EB70;
  *(a1 + 448) = 0x3E4CCCCD3DCCCCCDLL;
  *(a1 + 464) = _Q0;
  *(a1 + 480) = xmmword_1BCE3D870;
  *(a1 + 496) = 0x43FA000040400000;
  *(a1 + 504) = 1116471296;
  *(a1 + 512) = 0x3E8000003DF5C28FLL;
  *(a1 + 528) = _Q0;
  *(a1 + 544) = _Q0;
  *(a1 + 560) = 0x4248000044BB8000;
  *(a1 + 568) = 0x3E4CCCCD3DA3D70ALL;
  *(a1 + 576) = xmmword_1BCE3C700;
  *(a1 + 592) = xmmword_1BCE3D880;
  *(a1 + 608) = 0x4100000040A00000;
  *(a1 + 624) = xmmword_1BCE3C700;
  *(a1 + 640) = xmmword_1BCE3D880;
  *(a1 + 656) = 0x4220000041200000;
  *(a1 + 664) = 0x3FC000003E99999ALL;
  *(a1 + 672) = 0x40A000003F800000;
  *(a1 + 688) = _Q0;
  *(a1 + 704) = 1065353216;
  *(a1 + 712) = 0x402CCCCC3F666667;
  *(a1 + 720) = 0x4182A3D741600000;
  *(a1 + 728) = 1066369312;
  *(a1 + 736) = 1;
  *(a1 + 744) = 4;
  *(a1 + 752) = xmmword_1BCE3EB80;
  *(a1 + 768) = 0x617274736F746C41;
  *(a1 + 776) = 0xEF53202D20737574;
  *(a1 + 784) = 0xD000000000000013;
  *(a1 + 792) = 0x80000001BCE792E0;
  *(a1 + 800) = 6;
  *(a1 + 816) = _Q0;
  *(a1 + 832) = 1065353216;
  *(a1 + 840) = 0x3FE666673FC00000;
  *(a1 + 848) = 0x41A0000041700000;
  *(a1 + 856) = 1097646976;
  *(a1 + 864) = 1;
  *(a1 + 872) = 6;
  *(a1 + 880) = xmmword_1BCE4F310;
  *(a1 + 896) = 0x2073756C756D7543;
  *(a1 + 904) = 0xEB000000004C202DLL;
  *(a1 + 912) = 0x5F73756C756D7543;
  *(a1 + 920) = 0xEF4C656C676E6953;
  *(a1 + 928) = 10;
  *(a1 + 944) = _Q0;
  *(a1 + 960) = 1065353216;
  *(a1 + 968) = 0x4019999A3F19999ALL;
  *(a1 + 976) = 0x4120000041000000;
  *(a1 + 984) = 1095655872;
  *(a1 + 992) = 1;
  *(a1 + 1000) = 4;
  *(a1 + 1008) = xmmword_1BCE3EBA0;
  *(a1 + 1024) = 0x2073756C756D7543;
  *(a1 + 1032) = 0xEB000000004D202DLL;
  *(a1 + 1040) = 0x5F73756C756D7543;
  *(a1 + 1048) = 0xEF4D656C676E6953;
  *(a1 + 1056) = 10;
  *(a1 + 1072) = _Q0;
  *(a1 + 1088) = 1065353216;
  *(a1 + 1096) = 0;
  __asm { FMOV            V3.2S, #3.25 }

  *(a1 + 1104) = _D3;
  *(a1 + 1112) = 0x42820000C0D00000;
  *(a1 + 1120) = 0;
  *(a1 + 1128) = 2;
  *(a1 + 1136) = xmmword_1BCE3FB50;
  *(a1 + 1152) = 0x7970736957;
  *(a1 + 1160) = 0xE500000000000000;
  strcpy((a1 + 1168), "Wispy_Single");
  *(a1 + 1181) = 0;
  *(a1 + 1182) = -5120;
  *(a1 + 1184) = 6;
  *(a1 + 1200) = _Q0;
  *(a1 + 1216) = xmmword_1BCE4E6E0;
  *(a1 + 1232) = 0;
  *(a1 + 1236) = 1;
  *(a1 + 1240) = 0x73757461727453;
  *(a1 + 1248) = 0xE700000000000000;
  *(a1 + 1256) = 0x5F73757461727453;
  *(a1 + 1264) = 0xEF74656B6E616C42;
  *(a1 + 1272) = 8;
  *(a1 + 1280) = 0;
  *(a1 + 1288) = 0x3EB851EC3E851EB8;
  *(a1 + 1296) = 0x41C8000041F9999ALL;
  *(a1 + 1304) = 1086001775;
  *(a1 + 1312) = _Q0;
  *(a1 + 1328) = _Q0;
  *(a1 + 1344) = 0x3FCCCCCD40C66666;
  *(a1 + 1352) = 1082130432;
  *(a1 + 1360) = 0;
  *(a1 + 1368) = 5;
  *(a1 + 1408) = 0u;
  *(a1 + 1392) = 0u;
  *(a1 + 1376) = 0u;
  *(a1 + 1424) = 0x3F99999A3ECCCCCDLL;
  *(a1 + 1432) = 1;
  *v2 = xmmword_1BCE3BFC0;
  *(a1 + 1456) = 0x42DC000042B40000;
  *(a1 + 1472) = _Q0;
  *(a1 + 1488) = _Q0;
  *(a1 + 1504) = 1097859072;
  *(a1 + 1512) = 0x736168506E6F6F6DLL;
  *(a1 + 1520) = 0xEA00000000003065;
  *(a1 + 1528) = 1112014848;
  *(a1 + 1536) = _Q0;
  *(a1 + 1552) = xmmword_1BCE3C770;
  *(a1 + 1568) = 0x4248000042200000;
  *(a1 + 1584) = 0u;
  *(a1 + 1600) = xmmword_1BCE3D880;
  __asm { FMOV            V1.2S, #-30.0 }

  *(a1 + 1616) = -_D1;
  *(a1 + 1624) = 0x40000000;
  *(a1 + 1628) = 0;
  *(a1 + 1630) = 1;
  *(a1 + 1637) = 0;
  *(a1 + 1631) = 0;
  *(v2 + 209) = 0x301000100000101;
  *(a1 + 1656) = 0;
  *(a1 + 1657) = v13;
  *(a1 + 1659) = v14;
  *(a1 + 1660) = 1066611507;
  *(a1 + 1664) = 0x40C0000040A00000;
  *(a1 + 1672) = 3;
  *(a1 + 1680) = xmmword_1BCE3C000;
  *(a1 + 1696) = xmmword_1BCE3C010;
  *(a1 + 1712) = xmmword_1BCE3C020;
  *(a1 + 1728) = 0x3F0000003EB33333;
  *(a1 + 1736) = 0x3E800000453B8000;
  *(a1 + 1744) = 0u;
  *(a1 + 1760) = 13;
  *(a1 + 1776) = xmmword_1BCE3D8B0;
  *(a1 + 1792) = xmmword_1BCE3D8C0;
  *(a1 + 1808) = xmmword_1BCE3C7A0;
  *(a1 + 1824) = 1;
  *(a1 + 1828) = xmmword_1BCE3EBB0;
  *(a1 + 1844) = 1050253722;
  *(a1 + 1848) = 0x4100000041200000;
  *(a1 + 1856) = 3;
  *(a1 + 1864) = 1056964608;
  *(a1 + 1872) = 0x400AE1483F970A3DLL;
  *(a1 + 1880) = 1110704128;
  *(a1 + 1888) = _Q0;
  *(a1 + 1904) = 0x3F19999A40A00000;
  *(a1 + 1912) = 1101004800;
  *(a1 + 1920) = 0;
  *(a1 + 1928) = 1106247680;
  *(a1 + 1936) = _Q0;
  *(a1 + 1952) = 1077936128;
  *(a1 + 1960) = 0x420C000041C80000;
  *(a1 + 1968) = xmmword_1BCE3EBC0;
  *(a1 + 1984) = 0x3F80000000000000;
  *(a1 + 1992) = 1061158912;
  *(a1 + 2000) = 0x3F6666663E4CCCCDLL;
  *(a1 + 2008) = 0x3F6666663F333333;
  *(a1 + 2016) = xmmword_1BCE3C7E0;
  *(a1 + 2096) = 0u;
  *(a1 + 2080) = 0u;
  *(a1 + 2064) = 0u;
  *(a1 + 2048) = 0u;
  *(a1 + 2032) = 0u;
  *(a1 + 2112) = 1056964608;
  *(a1 + 2120) = 0x3E3851EC3DA3D70ALL;
  *(a1 + 2128) = 0x405EB8523FC00000;
  *(a1 + 2136) = 0x4040000040000000;
  *(a1 + 2144) = -1046478848;
  *(a1 + 2160) = _Q0;
  *(a1 + 2176) = _Q0;
  *(a1 + 2192) = 1049582633;
  *(a1 + 2200) = 10;
  *(a1 + 2208) = 0x40A000003FC00000;
  *(a1 + 2224) = xmmword_1BCE3C090;
  *(a1 + 2240) = xmmword_1BCE3C0A0;
  *(a1 + 2256) = _Q0;
  *(a1 + 2288) = 0u;
  *(a1 + 2272) = 0u;
  *(a1 + 2304) = 3;
  *(a1 + 2312) = v4;
  *(a1 + 2320) = v12;
}

__n128 sub_1BCCD81C4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD07858);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1BCE3EBD0;
  *(v0 + 48) = xmmword_1BCE3EBE0;
  *(v0 + 4912) = xmmword_1BCE3EED0;
  *(v0 + 6128) = xmmword_1BCE3EED0;
  *(v0 + 4928) = 1149861888;
  *(v0 + 6144) = 1149861888;
  *(v0 + 4992) = xmmword_1BCE3EEE0;
  *(v0 + 6208) = xmmword_1BCE3EEE0;
  *(v0 + 5008) = xmmword_1BCE3EEF0;
  *(v0 + 6224) = xmmword_1BCE3EEF0;
  *(v0 + 5024) = xmmword_1BCE3EF00;
  *(v0 + 6240) = xmmword_1BCE3EF00;
  *(v0 + 5152) = xmmword_1BCE3CBB0;
  *(v0 + 6368) = xmmword_1BCE3CBB0;
  *(v0 + 5200) = xmmword_1BCE3EF10;
  *(v0 + 6416) = xmmword_1BCE3EF10;
  *(v0 + 5216) = xmmword_1BCE3EF20;
  *(v0 + 6432) = xmmword_1BCE3EF20;
  *(v0 + 5264) = xmmword_1BCE3E9D0;
  *(v0 + 6480) = xmmword_1BCE3E9D0;
  *(v0 + 5504) = xmmword_1BCE3EF30;
  *(v0 + 6720) = xmmword_1BCE3EF30;
  *(v0 + 5536) = xmmword_1BCE3CEE0;
  *(v0 + 6752) = xmmword_1BCE3CEE0;
  *(v0 + 3696) = xmmword_1BCE3EE30;
  *(v0 + 7344) = xmmword_1BCE3EE30;
  *(v0 + 3728) = xmmword_1BCE3EE40;
  *(v0 + 7376) = xmmword_1BCE3EE40;
  *(v0 + 3744) = xmmword_1BCE3EE50;
  *(v0 + 7392) = xmmword_1BCE3EE50;
  *(v0 + 3760) = xmmword_1BCE3EE60;
  *(v0 + 4976) = xmmword_1BCE3EE60;
  *(v0 + 6192) = xmmword_1BCE3EE60;
  *(v0 + 7408) = xmmword_1BCE3EE60;
  *(v0 + 3776) = xmmword_1BCE3EE70;
  *(v0 + 7424) = xmmword_1BCE3EE70;
  *(v0 + 3792) = xmmword_1BCE3EE80;
  *(v0 + 7440) = xmmword_1BCE3EE80;
  *(v0 + 3808) = xmmword_1BCE3EE90;
  *(v0 + 7456) = xmmword_1BCE3EE90;
  *(v0 + 3936) = xmmword_1BCE3D4B0;
  *(v0 + 7584) = xmmword_1BCE3D4B0;
  *(v0 + 3984) = xmmword_1BCE3EEA0;
  *(v0 + 7632) = xmmword_1BCE3EEA0;
  *(v0 + 4000) = xmmword_1BCE3EEB0;
  *(v0 + 7648) = xmmword_1BCE3EEB0;
  *(v0 + 4016) = xmmword_1BCE416A0;
  *(v0 + 5232) = xmmword_1BCE416A0;
  *(v0 + 6448) = xmmword_1BCE416A0;
  *(v0 + 7664) = xmmword_1BCE416A0;
  *(v0 + 4032) = 1063675494;
  *(v0 + 5248) = 1063675494;
  *(v0 + 6464) = 1063675494;
  *(v0 + 7680) = 1063675494;
  *(v0 + 4048) = xmmword_1BCE3CF80;
  *(v0 + 7696) = xmmword_1BCE3CF80;
  *(v0 + 4288) = xmmword_1BCE3CBA0;
  *(v0 + 7936) = xmmword_1BCE3CBA0;
  *(v0 + 4384) = xmmword_1BCE3E290;
  *(v0 + 5600) = xmmword_1BCE3E290;
  *(v0 + 6816) = xmmword_1BCE3E290;
  *(v0 + 8032) = xmmword_1BCE3E290;
  *(v0 + 4672) = xmmword_1BCE3E350;
  *(v0 + 5888) = xmmword_1BCE3E350;
  *(v0 + 7104) = xmmword_1BCE3E350;
  *(v0 + 8320) = xmmword_1BCE3E350;
  *(v0 + 2480) = xmmword_1BCE3EDA0;
  *(v0 + 8560) = xmmword_1BCE3EDA0;
  v1 = vdupq_n_s64(0x3FEE770020000000uLL);
  *(v0 + 2512) = v1;
  *(v0 + 8592) = v1;
  *(v0 + 2528) = xmmword_1BCE3EDB0;
  *(v0 + 8608) = xmmword_1BCE3EDB0;
  *(v0 + 2544) = xmmword_1BCE3EDC0;
  *(v0 + 8624) = xmmword_1BCE3EDC0;
  *(v0 + 2560) = xmmword_1BCE3EDD0;
  *(v0 + 8640) = xmmword_1BCE3EDD0;
  *(v0 + 2576) = xmmword_1BCE3E270;
  *(v0 + 8656) = xmmword_1BCE3E270;
  *(v0 + 2592) = xmmword_1BCE3CB90;
  *(v0 + 8672) = xmmword_1BCE3CB90;
  *(v0 + 2688) = xmmword_1BCE3E220;
  *(v0 + 5120) = xmmword_1BCE3E220;
  *(v0 + 6336) = xmmword_1BCE3E220;
  *(v0 + 8768) = xmmword_1BCE3E220;
  *(v0 + 2720) = xmmword_1BCE3EDE0;
  *(v0 + 8800) = xmmword_1BCE3EDE0;
  v2 = vdupq_n_s64(0x3FE0ECE8A0000000uLL);
  *(v0 + 2736) = v2;
  *(v0 + 8816) = v2;
  *(v0 + 2752) = xmmword_1BCE3EDF0;
  *(v0 + 8832) = xmmword_1BCE3EDF0;
  *(v0 + 2784) = xmmword_1BCE3EE00;
  *(v0 + 8864) = xmmword_1BCE3EE00;
  *(v0 + 2800) = xmmword_1BCE4F330;
  *(v0 + 8880) = xmmword_1BCE4F330;
  *v2.i8 = vdup_n_s32(0x3F4CCCCDu);
  *(v0 + 2816) = v2.i64[0];
  *(v0 + 8896) = v2.i64[0];
  *(v0 + 3104) = xmmword_1BCE3E320;
  *(v0 + 9184) = xmmword_1BCE3E320;
  *(v0 + 3072) = xmmword_1BCE3CCC0;
  *(v0 + 3168) = xmmword_1BCE3CCC0;
  *(v0 + 9152) = xmmword_1BCE3CCC0;
  *(v0 + 9248) = xmmword_1BCE3CCC0;
  *(v0 + 3296) = xmmword_1BCE3EE10;
  *(v0 + 5728) = xmmword_1BCE3EE10;
  *(v0 + 6944) = xmmword_1BCE3EE10;
  *(v0 + 9376) = xmmword_1BCE3EE10;
  *(v0 + 3456) = xmmword_1BCE3EE20;
  *(v0 + 9536) = xmmword_1BCE3EE20;
  *(v0 + 1280) = 1147207680;
  *(v0 + 2496) = 1147207680;
  *(v0 + 3712) = 1147207680;
  *(v0 + 7360) = 1147207680;
  *(v0 + 8576) = 1147207680;
  *(v0 + 9792) = 1147207680;
  *(v0 + 1328) = xmmword_1BCE3ECE0;
  *(v0 + 9840) = xmmword_1BCE3ECE0;
  *(v0 + 1360) = xmmword_1BCE3ECF0;
  *(v0 + 9872) = xmmword_1BCE3ECF0;
  *(v0 + 1376) = xmmword_1BCE3ED00;
  *(v0 + 9888) = xmmword_1BCE3ED00;
  *(v0 + 1472) = xmmword_1BCE3ED10;
  *(v0 + 3904) = xmmword_1BCE3ED10;
  *(v0 + 7552) = xmmword_1BCE3ED10;
  *(v0 + 9984) = xmmword_1BCE3ED10;
  *(v0 + 1488) = xmmword_1BCE3ED20;
  *(v0 + 10000) = xmmword_1BCE3ED20;
  *(v0 + 1504) = xmmword_1BCE3ED30;
  *(v0 + 10016) = xmmword_1BCE3ED30;
  *(v0 + 1536) = xmmword_1BCE3ED40;
  *(v0 + 10048) = xmmword_1BCE3ED40;
  *(v0 + 1568) = xmmword_1BCE3ED50;
  *(v0 + 10080) = xmmword_1BCE3ED50;
  *(v0 + 1584) = xmmword_1BCE4F320;
  *(v0 + 10096) = xmmword_1BCE4F320;
  *(v0 + 1840) = xmmword_1BCE3ED70;
  *(v0 + 10352) = xmmword_1BCE3ED70;
  *(v0 + 1856) = xmmword_1BCE3ED80;
  *(v0 + 10368) = xmmword_1BCE3ED80;
  *(v0 + 1920) = xmmword_1BCE3ED90;
  *(v0 + 10432) = xmmword_1BCE3ED90;
  *(v0 + 64) = 1145569280;
  *(v0 + 1264) = xmmword_1BCE3EBE0;
  *(v0 + 9776) = xmmword_1BCE3EBE0;
  *(v0 + 10992) = xmmword_1BCE3EBE0;
  *(v0 + 11008) = 1145569280;
  *(v0 + 112) = xmmword_1BCE3EBF0;
  *(v0 + 128) = xmmword_1BCE3EC00;
  *(v0 + 11056) = xmmword_1BCE3EBF0;
  *(v0 + 1344) = xmmword_1BCE3EC00;
  *(v0 + 9856) = xmmword_1BCE3EC00;
  *(v0 + 11072) = xmmword_1BCE3EC00;
  *(v0 + 144) = xmmword_1BCE3EC10;
  *(v0 + 160) = xmmword_1BCE3EC20;
  *(v0 + 11088) = xmmword_1BCE3EC10;
  *(v0 + 224) = xmmword_1BCE3C8C0;
  *(v0 + 11104) = xmmword_1BCE3EC20;
  *(v0 + 256) = xmmword_1BCE3EC30;
  *(v0 + 1440) = xmmword_1BCE3C8C0;
  *(v0 + 2656) = xmmword_1BCE3C8C0;
  *(v0 + 3872) = xmmword_1BCE3C8C0;
  *(v0 + 5088) = xmmword_1BCE3C8C0;
  *(v0 + 6304) = xmmword_1BCE3C8C0;
  *(v0 + 7520) = xmmword_1BCE3C8C0;
  *(v0 + 8736) = xmmword_1BCE3C8C0;
  *(v0 + 9952) = xmmword_1BCE3C8C0;
  *(v0 + 11168) = xmmword_1BCE3C8C0;
  *(v0 + 11200) = xmmword_1BCE3EC30;
  *(v0 + 272) = xmmword_1BCE3EC40;
  *(v0 + 288) = xmmword_1BCE3EC50;
  *(v0 + 11216) = xmmword_1BCE3EC40;
  __asm { FMOV            V0.2D, #0.5 }

  *(v0 + 11232) = xmmword_1BCE3EC50;
  *(v0 + 304) = _Q0;
  *(v0 + 320) = xmmword_1BCE3EC60;
  *(v0 + 11248) = _Q0;
  *(v0 + 11264) = xmmword_1BCE3EC60;
  *(v0 + 336) = xmmword_1BCE3EC70;
  *(v0 + 352) = xmmword_1BCE3EC80;
  *(v0 + 1552) = xmmword_1BCE3EC70;
  *(v0 + 2704) = xmmword_1BCE3EC70;
  *(v0 + 2768) = xmmword_1BCE3EC70;
  *(v0 + 8784) = xmmword_1BCE3EC70;
  *(v0 + 8848) = xmmword_1BCE3EC70;
  *(v0 + 10064) = xmmword_1BCE3EC70;
  *(v0 + 11280) = xmmword_1BCE3EC70;
  *(v0 + 368) = xmmword_1BCE41350;
  *(v0 + 11296) = xmmword_1BCE3EC80;
  *(v0 + 384) = 0x3F8000003F4CCCCDLL;
  *(v0 + 11312) = xmmword_1BCE41350;
  *(v0 + 640) = xmmword_1BCE3A880;
  *(v0 + 704) = xmmword_1BCE3A880;
  *(v0 + 1600) = 0x3F8000003F4CCCCDLL;
  *(v0 + 10112) = 0x3F8000003F4CCCCDLL;
  *(v0 + 11328) = 0x3F8000003F4CCCCDLL;
  *(v0 + 736) = xmmword_1BCE3E1D0;
  *(v0 + 11584) = xmmword_1BCE3A880;
  *(v0 + 11648) = xmmword_1BCE3A880;
  *(v0 + 1952) = xmmword_1BCE3E1D0;
  *(v0 + 3968) = xmmword_1BCE3E1D0;
  *(v0 + 5184) = xmmword_1BCE3E1D0;
  *(v0 + 6400) = xmmword_1BCE3E1D0;
  *(v0 + 7616) = xmmword_1BCE3E1D0;
  *(v0 + 10464) = xmmword_1BCE3E1D0;
  *(v0 + 11680) = xmmword_1BCE3E1D0;
  *(v0 + 816) = xmmword_1BCE3ECA0;
  *(v0 + 832) = xmmword_1BCE3ECB0;
  *(v0 + 2032) = xmmword_1BCE3ECA0;
  *(v0 + 10544) = xmmword_1BCE3ECA0;
  *(v0 + 11760) = xmmword_1BCE3ECA0;
  *(v0 + 2048) = xmmword_1BCE3ECB0;
  *(v0 + 4480) = xmmword_1BCE3ECB0;
  *(v0 + 8128) = xmmword_1BCE3ECB0;
  *(v0 + 10560) = xmmword_1BCE3ECB0;
  *(v0 + 11776) = xmmword_1BCE3ECB0;
  *(v0 + 2064) = xmmword_1BCE3ECC0;
  *(v0 + 10576) = xmmword_1BCE3ECC0;
  *(v0 + 11792) = xmmword_1BCE3ECC0;
  *(v0 + 848) = xmmword_1BCE3ECC0;
  *(v0 + 864) = xmmword_1BCE3ECD0;
  __asm { FMOV            V0.2D, #1.0 }

  *(v0 + 2080) = xmmword_1BCE3ECD0;
  *(v0 + 4512) = xmmword_1BCE3ECD0;
  *(v0 + 8160) = xmmword_1BCE3ECD0;
  *(v0 + 10592) = xmmword_1BCE3ECD0;
  *(v0 + 11808) = xmmword_1BCE3ECD0;
  *(v0 + 1024) = xmmword_1BCE3E230;
  *(v0 + 2240) = xmmword_1BCE3E230;
  *(v0 + 3136) = xmmword_1BCE3E230;
  *(v0 + 3264) = xmmword_1BCE3E230;
  *(v0 + 4352) = xmmword_1BCE3E230;
  *(v0 + 5568) = xmmword_1BCE3E230;
  *(v0 + 5696) = xmmword_1BCE3E230;
  *(v0 + 6784) = xmmword_1BCE3E230;
  *(v0 + 6912) = xmmword_1BCE3E230;
  *(v0 + 8000) = xmmword_1BCE3E230;
  *(v0 + 9216) = xmmword_1BCE3E230;
  *(v0 + 9344) = xmmword_1BCE3E230;
  *(v0 + 10752) = xmmword_1BCE3E230;
  *(v0 + 11968) = xmmword_1BCE3E230;
  *(v0 + 672) = xmmword_1BCE3CBC0;
  *(v0 + 1056) = xmmword_1BCE3CBC0;
  *(v0 + 1888) = xmmword_1BCE3CBC0;
  *(v0 + 2272) = xmmword_1BCE3CBC0;
  *(v0 + 3488) = xmmword_1BCE3CBC0;
  *(v0 + 4704) = xmmword_1BCE3CBC0;
  *(v0 + 5920) = xmmword_1BCE3CBC0;
  *(v0 + 7136) = xmmword_1BCE3CBC0;
  *(v0 + 8256) = result;
  *(v0 + 8272) = result;
  *(v0 + 8288) = result;
  *(v0 + 8336) = result;
  *(v0 + 8352) = xmmword_1BCE3CBC0;
  *(v0 + 8368) = result;
  *(v0 + 8304) = result;
  *(v0 + 9568) = xmmword_1BCE3CBC0;
  *(v0 + 10400) = xmmword_1BCE3CBC0;
  *(v0 + 10784) = xmmword_1BCE3CBC0;
  *(v0 + 11616) = xmmword_1BCE3CBC0;
  *(v0 + 12000) = xmmword_1BCE3CBC0;
  *(v0 + 8176) = result;
  *(v0 + 0x2000) = result;
  *(v0 + 8208) = result;
  *(v0 + 8224) = result;
  *(v0 + 8240) = result;
  *(v0 + 1168) = 0x4170000042480000;
  *(v0 + 2384) = 0x4170000042480000;
  *(v0 + 8080) = result;
  *(v0 + 8096) = result;
  *(v0 + 8112) = result;
  *(v0 + 8144) = result;
  *(v0 + 3600) = 0x4170000042480000;
  *(v0 + 7984) = result;
  *(v0 + 8016) = result;
  *(v0 + 8048) = result;
  *(v0 + 8064) = result;
  *(v0 + 4816) = 0x4170000042480000;
  *(v0 + 7888) = result;
  *(v0 + 7904) = result;
  *(v0 + 7920) = result;
  *(v0 + 7952) = result;
  *(v0 + 7968) = result;
  *(v0 + 7792) = result;
  *(v0 + 7808) = result;
  *(v0 + 7824) = result;
  *(v0 + 7840) = result;
  *(v0 + 7856) = result;
  *(v0 + 7872) = result;
  *(v0 + 6032) = 0x4170000042480000;
  *(v0 + 7248) = 0x4170000042480000;
  *(v0 + 7728) = result;
  *(v0 + 7744) = result;
  *(v0 + 7760) = result;
  *(v0 + 7776) = result;
  *(v0 + 7688) = 0x3FED73E5C0000000;
  *(v0 + 7712) = 0x3FF0000000000000;
  *(v0 + 7720) = 0;
  *(v0 + 8464) = 0x4170000042480000;
  *(v0 + 9680) = 0x4170000042480000;
  *(v0 + 10896) = 0x4170000042480000;
  *(v0 + 12112) = 0x4170000042480000;
  *(v0 + 192) = result;
  *(v0 + 208) = result;
  *(v0 + 240) = result;
  *(v0 + 624) = result;
  *(v0 + 7568) = result;
  *(v0 + 7600) = result;
  *(v0 + 656) = result;
  *(v0 + 688) = result;
  *(v0 + 720) = result;
  *(v0 + 7488) = result;
  *(v0 + 7504) = result;
  *(v0 + 7536) = result;
  *(v0 + 1008) = result;
  *(v0 + 7472) = result;
  *(v0 + 80) = result;
  *(v0 + 96) = result;
  *(v0 + 176) = result;
  *(v0 + 7368) = 1065353216;
  *(v0 + 400) = result;
  *(v0 + 7296) = result;
  *(v0 + 7337) = *v14;
  *(v0 + 7312) = 0x3FF0000000000000;
  *(v0 + 7328) = 0x4031FFFFFFFFFFF6;
  *(v0 + 7336) = 1;
  *(v0 + 7340) = *&v14[3];
  *(v0 + 7216) = result;
  *(v0 + 7232) = result;
  *(v0 + 7256) = 0x3FF0000000000000;
  *(v0 + 7264) = result;
  *(v0 + 7280) = result;
  *(v0 + 432) = result;
  *(v0 + 448) = result;
  *(v0 + 7120) = result;
  *(v0 + 7152) = result;
  *(v0 + 7168) = result;
  *(v0 + 7184) = result;
  *(v0 + 7200) = result;
  *(v0 + 7024) = result;
  *(v0 + 7040) = result;
  *(v0 + 7056) = result;
  *(v0 + 7072) = result;
  *(v0 + 7088) = result;
  *(v0 + 464) = result;
  *(v0 + 480) = result;
  *(v0 + 6928) = result;
  *(v0 + 6960) = result;
  *(v0 + 6976) = result;
  *(v0 + 6992) = result;
  *(v0 + 7008) = result;
  *(v0 + 6832) = result;
  *(v0 + 6848) = result;
  *(v0 + 6864) = result;
  *(v0 + 6880) = result;
  *(v0 + 6896) = result;
  *(v0 + 496) = result;
  *(v0 + 512) = result;
  *(v0 + 528) = result;
  *(v0 + 544) = result;
  *(v0 + 6736) = result;
  *(v0 + 6768) = result;
  *(v0 + 6800) = result;
  *(v0 + 6544) = result;
  *(v0 + 6640) = result;
  *(v0 + 6656) = result;
  *(v0 + 6672) = result;
  *(v0 + 6688) = result;
  *(v0 + 6704) = result;
  *(v0 + 6560) = result;
  *(v0 + 6576) = result;
  *(v0 + 6592) = result;
  *(v0 + 6608) = result;
  *(v0 + 6624) = result;
  *(v0 + 560) = result;
  *(v0 + 576) = result;
  *(v0 + 6472) = 0x3FF0000000000000;
  *(v0 + 6496) = 0x3FF0000000000000;
  *(v0 + 6504) = 0;
  *(v0 + 6512) = result;
  *(v0 + 6528) = result;
  *(v0 + 592) = result;
  *(v0 + 608) = result;
  *(v0 + 752) = result;
  *(v0 + 768) = result;
  *(v0 + 6384) = result;
  *(v0 + 784) = result;
  *(v0 + 800) = result;
  *(v0 + 880) = result;
  *(v0 + 896) = result;
  *(v0 + 6288) = result;
  *(v0 + 6320) = result;
  *(v0 + 6352) = result;
  *(v0 + 912) = result;
  *(v0 + 928) = result;
  *(v0 + 944) = result;
  *(v0 + 960) = result;
  *(v0 + 6256) = result;
  *(v0 + 6272) = result;
  *(v0 + 976) = result;
  *(v0 + 992) = result;
  *(v0 + 6176) = result;
  *(v0 + 6121) = *v13;
  *(v0 + 6124) = *&v13[3];
  *(v0 + 6152) = 1065353216;
  *(v0 + 6160) = result;
  *(v0 + 6048) = result;
  *(v0 + 6064) = result;
  *(v0 + 6080) = result;
  *(v0 + 6096) = 0x3FF0000000000000;
  *(v0 + 6112) = 0x403DFFFFFFFFFFFELL;
  *(v0 + 6120) = 1;
  *(v0 + 1040) = result;
  *(v0 + 5968) = result;
  *(v0 + 5984) = result;
  *(v0 + 6000) = result;
  *(v0 + 6016) = result;
  *(v0 + 6040) = 0x3FF0000000000000;
  *(v0 + 1072) = result;
  *(v0 + 1088) = result;
  *(v0 + 5872) = result;
  *(v0 + 5904) = result;
  *(v0 + 5936) = result;
  *(v0 + 5952) = result;
  *(v0 + 5776) = result;
  *(v0 + 5792) = result;
  *(v0 + 5808) = result;
  *(v0 + 5824) = result;
  *(v0 + 5840) = result;
  *(v0 + 5856) = result;
  *(v0 + 1104) = result;
  *(v0 + 1120) = result;
  *(v0 + 5680) = result;
  *(v0 + 5712) = result;
  *(v0 + 5744) = result;
  *(v0 + 5760) = result;
  *(v0 + 1136) = result;
  *(v0 + 5584) = result;
  *(v0 + 5616) = result;
  *(v0 + 5632) = result;
  *(v0 + 5648) = result;
  *(v0 + 5664) = result;
  *(v0 + 1152) = result;
  *(v0 + 1176) = 0x3FF0000000000000;
  *(v0 + 1184) = result;
  *(v0 + 5488) = result;
  *(v0 + 5520) = result;
  *(v0 + 5552) = result;
  *(v0 + 5392) = result;
  *(v0 + 5408) = result;
  *(v0 + 5424) = result;
  *(v0 + 5440) = result;
  *(v0 + 5456) = result;
  *(v0 + 5472) = result;
  *(v0 + 5296) = result;
  *(v0 + 5312) = result;
  *(v0 + 5328) = result;
  *(v0 + 5344) = result;
  *(v0 + 5360) = result;
  *(v0 + 5376) = result;
  *(v0 + 1200) = result;
  *(v0 + 1216) = result;
  *(v0 + 1232) = 0x3FF0000000000000;
  *(v0 + 5280) = 0x3FF0000000000000;
  *(v0 + 5288) = 0;
  *(v0 + 1248) = 0xC031FFFFFFFFFFFFLL;
  *(v0 + 1256) = 0;
  *(v0 + 1257) = *v9;
  *(v0 + 5256) = 0x3FF0000000000000;
  *(v0 + 1260) = *&v9[3];
  *(v0 + 1288) = 1036831949;
  *(v0 + 1296) = result;
  *(v0 + 5136) = result;
  *(v0 + 5168) = result;
  *(v0 + 1312) = result;
  *(v0 + 1392) = result;
  *(v0 + 5040) = result;
  *(v0 + 5056) = result;
  *(v0 + 5072) = result;
  *(v0 + 5104) = result;
  *(v0 + 1408) = result;
  *(v0 + 1424) = result;
  *(v0 + 1456) = result;
  *(v0 + 1520) = result;
  *(v0 + 1608) = 0x3FF0000000000000;
  *(v0 + 4905) = *v12;
  *(v0 + 4936) = 1065353216;
  *(v0 + 4944) = result;
  *(v0 + 4960) = result;
  *(v0 + 1616) = result;
  *(v0 + 4880) = 0x3FF0000000000000;
  *(v0 + 4896) = 0x403DFFFFFFFFFFFELL;
  *(v0 + 4904) = 0;
  *(v0 + 4908) = *&v12[3];
  *(v0 + 1632) = 0x3FF0000000000000;
  *(v0 + 4800) = result;
  *(v0 + 4824) = 0x3FF0000000000000;
  *(v0 + 4832) = result;
  *(v0 + 4848) = result;
  *(v0 + 4864) = result;
  *(v0 + 1640) = 0;
  *(v0 + 4720) = result;
  *(v0 + 4736) = result;
  *(v0 + 4752) = result;
  *(v0 + 4768) = result;
  *(v0 + 4784) = result;
  *(v0 + 1648) = result;
  *(v0 + 4608) = result;
  *(v0 + 4624) = result;
  *(v0 + 4640) = result;
  *(v0 + 4656) = result;
  *(v0 + 4688) = result;
  *(v0 + 1664) = result;
  *(v0 + 4528) = result;
  *(v0 + 4544) = result;
  *(v0 + 4560) = result;
  *(v0 + 4576) = result;
  *(v0 + 4592) = result;
  *(v0 + 1680) = result;
  *(v0 + 4416) = result;
  *(v0 + 4432) = result;
  *(v0 + 4448) = result;
  *(v0 + 4464) = result;
  *(v0 + 4496) = result;
  *(v0 + 1696) = result;
  *(v0 + 1712) = result;
  *(v0 + 4320) = result;
  *(v0 + 4336) = result;
  *(v0 + 4368) = result;
  *(v0 + 4400) = result;
  *(v0 + 1728) = result;
  *(v0 + 4224) = result;
  *(v0 + 4240) = result;
  *(v0 + 4256) = result;
  *(v0 + 4272) = result;
  *(v0 + 4304) = result;
  *(v0 + 4128) = result;
  *(v0 + 4144) = result;
  *(v0 + 4160) = result;
  *(v0 + 4176) = result;
  *(v0 + 4192) = result;
  *(v0 + 4208) = result;
  *(v0 + 1744) = result;
  *(v0 + 4064) = 0x3FF0000000000000;
  *(v0 + 4072) = 0;
  *(v0 + 4080) = result;
  *(v0 + 4096) = result;
  *(v0 + 4112) = result;
  *(v0 + 1760) = result;
  *(v0 + 1776) = result;
  *(v0 + 1792) = result;
  *(v0 + 1808) = result;
  *(v0 + 1824) = result;
  *(v0 + 4040) = 0x3FED73E5C0000000;
  *(v0 + 1872) = result;
  *(v0 + 1904) = result;
  *(v0 + 1936) = result;
  *(v0 + 3888) = result;
  *(v0 + 3920) = result;
  *(v0 + 3952) = result;
  *(v0 + 1968) = result;
  *(v0 + 1984) = result;
  *(v0 + 2000) = result;
  *(v0 + 3824) = result;
  *(v0 + 3840) = result;
  *(v0 + 3856) = result;
  *(v0 + 2016) = result;
  *(v0 + 2096) = result;
  *(v0 + 2112) = result;
  *(v0 + 2128) = result;
  *(v0 + 2144) = result;
  *(v0 + 3616) = result;
  *(v0 + 3689) = *v11;
  *(v0 + 3692) = *&v11[3];
  *(v0 + 3720) = 1065353216;
  *(v0 + 3632) = result;
  *(v0 + 3648) = result;
  *(v0 + 3664) = 0x3FF0000000000000;
  *(v0 + 3680) = 0x4032000000000001;
  *(v0 + 3688) = 0;
  *(v0 + 2160) = result;
  *(v0 + 3536) = result;
  *(v0 + 3552) = result;
  *(v0 + 3568) = result;
  *(v0 + 3584) = result;
  *(v0 + 3608) = 0x3FF0000000000000;
  *(v0 + 2176) = result;
  *(v0 + 2192) = result;
  *(v0 + 3440) = result;
  *(v0 + 3472) = result;
  *(v0 + 3504) = result;
  *(v0 + 3520) = result;
  *(v0 + 3344) = result;
  *(v0 + 3360) = result;
  *(v0 + 3376) = result;
  *(v0 + 3392) = result;
  *(v0 + 3408) = result;
  *(v0 + 3424) = result;
  *(v0 + 2208) = result;
  *(v0 + 2224) = result;
  *(v0 + 3248) = result;
  *(v0 + 3280) = result;
  *(v0 + 3312) = result;
  *(v0 + 3328) = result;
  *(v0 + 2256) = result;
  *(v0 + 3152) = result;
  *(v0 + 3184) = result;
  *(v0 + 3200) = result;
  *(v0 + 3216) = result;
  *(v0 + 3232) = result;
  *(v0 + 2288) = result;
  *(v0 + 2304) = result;
  *(v0 + 2320) = result;
  *(v0 + 3056) = result;
  *(v0 + 3088) = result;
  *(v0 + 3120) = result;
  *(v0 + 2960) = result;
  *(v0 + 2976) = result;
  *(v0 + 2992) = result;
  *(v0 + 3008) = result;
  *(v0 + 3024) = result;
  *(v0 + 3040) = result;
  *(v0 + 2864) = result;
  *(v0 + 2880) = result;
  *(v0 + 2896) = result;
  *(v0 + 2912) = result;
  *(v0 + 2928) = result;
  *(v0 + 2944) = result;
  *(v0 + 2336) = result;
  *(v0 + 2352) = result;
  *(v0 + 2824) = 0x3FF0000000000000;
  *(v0 + 2832) = result;
  *(v0 + 2848) = 0x3FF0000000000000;
  *(v0 + 2856) = 0;
  *(v0 + 2368) = result;
  *(v0 + 2392) = 0x3FF0000000000000;
  *(v0 + 2400) = result;
  *(v0 + 2416) = result;
  *(v0 + 2432) = result;
  *(v0 + 2448) = 0x3FF0000000000000;
  *(v0 + 2464) = 0xC028000000000000;
  *(v0 + 2472) = 0;
  *(v0 + 2473) = *v10;
  *(v0 + 2476) = *&v10[3];
  *(v0 + 2608) = result;
  *(v0 + 2624) = result;
  *(v0 + 2640) = result;
  *(v0 + 2672) = result;
  *(v0 + 2504) = 1041865114;
  *(v0 + 8384) = result;
  *(v0 + 8400) = result;
  *(v0 + 8416) = result;
  *(v0 + 8432) = result;
  *(v0 + 8448) = result;
  *(v0 + 8480) = result;
  *(v0 + 8496) = result;
  *(v0 + 8512) = result;
  *(v0 + 8688) = result;
  *(v0 + 8704) = result;
  *(v0 + 8720) = result;
  *(v0 + 8752) = result;
  *(v0 + 8912) = result;
  *(v0 + 8944) = result;
  *(v0 + 8960) = result;
  *(v0 + 8976) = result;
  *(v0 + 8992) = result;
  *(v0 + 9008) = result;
  *(v0 + 9024) = result;
  *(v0 + 9040) = result;
  *(v0 + 9056) = result;
  *(v0 + 9072) = result;
  *(v0 + 9088) = result;
  *(v0 + 9104) = result;
  *(v0 + 9120) = result;
  *(v0 + 9136) = result;
  *(v0 + 9168) = result;
  *(v0 + 9200) = result;
  *(v0 + 9232) = result;
  *(v0 + 9264) = result;
  *(v0 + 9280) = result;
  *(v0 + 9296) = result;
  *(v0 + 9312) = result;
  *(v0 + 9328) = result;
  *(v0 + 9360) = result;
  *(v0 + 9392) = result;
  *(v0 + 9408) = result;
  *(v0 + 9424) = result;
  *(v0 + 9440) = result;
  *(v0 + 9456) = result;
  *(v0 + 9472) = result;
  *(v0 + 9488) = result;
  *(v0 + 9504) = result;
  *(v0 + 9520) = result;
  *(v0 + 9552) = result;
  *(v0 + 9584) = result;
  *(v0 + 9600) = result;
  *(v0 + 9616) = result;
  *(v0 + 9632) = result;
  *(v0 + 9648) = result;
  *(v0 + 9664) = result;
  *(v0 + 9696) = result;
  *(v0 + 9712) = result;
  *(v0 + 9728) = result;
  *(v0 + 9808) = result;
  *(v0 + 9824) = result;
  *(v0 + 9904) = result;
  *(v0 + 9920) = result;
  *(v0 + 9936) = result;
  *(v0 + 9968) = result;
  *(v0 + 10032) = result;
  *(v0 + 10128) = result;
  *(v0 + 10160) = result;
  *(v0 + 10176) = result;
  *(v0 + 10192) = result;
  *(v0 + 10208) = result;
  *(v0 + 10224) = result;
  *(v0 + 10240) = result;
  *(v0 + 10256) = result;
  *(v0 + 10272) = result;
  *(v0 + 10288) = result;
  *(v0 + 10304) = result;
  *(v0 + 10320) = result;
  *(v0 + 10336) = result;
  *(v0 + 10384) = result;
  *(v0 + 10416) = result;
  *(v0 + 10448) = result;
  *(v0 + 10480) = result;
  *(v0 + 10496) = result;
  *(v0 + 10512) = result;
  *(v0 + 10528) = result;
  *(v0 + 10608) = result;
  *(v0 + 10624) = result;
  *(v0 + 10640) = result;
  *(v0 + 10656) = result;
  *(v0 + 10672) = result;
  *(v0 + 10688) = result;
  *(v0 + 10704) = result;
  *(v0 + 10720) = result;
  *(v0 + 10736) = result;
  *(v0 + 10768) = result;
  *(v0 + 10800) = result;
  *(v0 + 10816) = result;
  *(v0 + 10832) = result;
  *(v0 + 10848) = result;
  *(v0 + 10864) = result;
  *(v0 + 10880) = result;
  *(v0 + 10912) = result;
  *(v0 + 10928) = result;
  *(v0 + 10944) = result;
  *(v0 + 11024) = result;
  *(v0 + 11040) = result;
  *(v0 + 11120) = result;
  *(v0 + 11136) = result;
  *(v0 + 11152) = result;
  *(v0 + 11184) = result;
  *(v0 + 11344) = result;
  *(v0 + 11376) = result;
  *(v0 + 11392) = result;
  *(v0 + 11408) = result;
  *(v0 + 11424) = result;
  *(v0 + 11440) = result;
  *(v0 + 11456) = result;
  *(v0 + 11472) = result;
  *(v0 + 11488) = result;
  *(v0 + 11504) = result;
  *(v0 + 11520) = result;
  *(v0 + 11536) = result;
  *(v0 + 11552) = result;
  *(v0 + 11568) = result;
  *(v0 + 11600) = result;
  *(v0 + 11632) = result;
  *(v0 + 11664) = result;
  *(v0 + 11696) = result;
  *(v0 + 11712) = result;
  *(v0 + 11728) = result;
  *(v0 + 11744) = result;
  *(v0 + 11824) = result;
  *(v0 + 11840) = result;
  *(v0 + 11856) = result;
  *(v0 + 11872) = result;
  *(v0 + 11888) = result;
  *(v0 + 11904) = result;
  *(v0 + 11920) = result;
  *(v0 + 11936) = result;
  *(v0 + 11952) = result;
  *(v0 + 11984) = result;
  *(v0 + 12016) = result;
  *(v0 + 12032) = result;
  *(v0 + 12048) = result;
  *(v0 + 12064) = result;
  *(v0 + 12080) = result;
  *(v0 + 12096) = result;
  *(v0 + 12128) = result;
  *(v0 + 12144) = result;
  *(v0 + 12160) = result;
  *(v0 + 416) = 0x3FF0000000000000;
  *(v0 + 424) = 0;
  *(v0 + 32) = 0xC056800000000000;
  *(v0 + 392) = 0x3FF0000000000000;
  *(v0 + 40) = 0;
  *(v0 + 72) = 1036831949;
  *(v0 + 8472) = 0x3FF0000000000000;
  *(v0 + 8553) = *v15;
  *(v0 + 8528) = 0x3FF0000000000000;
  *(v0 + 8544) = 0xC028000000000015;
  *(v0 + 8552) = 1;
  *(v0 + 8556) = *&v15[3];
  *(v0 + 8584) = 1041865114;
  *(v0 + 8904) = 0x3FF0000000000000;
  *(v0 + 8928) = 0x3FF0000000000000;
  *(v0 + 8936) = 0;
  *(v0 + 9688) = 0x3FF0000000000000;
  *(v0 + 9744) = 0x3FF0000000000000;
  *(v0 + 9760) = 0xC032000000000004;
  *(v0 + 9769) = *v16;
  *(v0 + 9768) = 1;
  *(v0 + 9772) = *&v16[3];
  *(v0 + 9800) = 1036831949;
  *(v0 + 10120) = 0x3FF0000000000000;
  *(v0 + 10144) = 0x3FF0000000000000;
  *(v0 + 10152) = 0;
  *(v0 + 10904) = 0x3FF0000000000000;
  *(v0 + 10960) = 0x3FF0000000000000;
  *(v0 + 10976) = 0xC056800000000000;
  *(v0 + 10984) = 1;
  *(v0 + 10985) = *v17;
  *(v0 + 10988) = *&v17[3];
  *(v0 + 11016) = 1036831949;
  *(v0 + 11336) = 0x3FF0000000000000;
  *(v0 + 11360) = 0x3FF0000000000000;
  *(v0 + 11368) = 0;
  *(v0 + 12120) = 0x3FF0000000000000;
  *(v0 + 12176) = 0x3FF0000000000000;
  return result;
}

uint64_t MicaBackgroundAnimation.Mode.hashValue.getter()
{
  v1 = *v0;
  sub_1BCE1E100();
  MEMORY[0x1BFB30850](v1);
  return sub_1BCE1E150();
}

id MicaBackgroundAnimation.layer.getter()
{
  v1 = OBJC_IVAR____TtC9WeatherUI23MicaBackgroundAnimation_layer;
  OUTLINED_FUNCTION_0_2();
  v2 = *(v0 + v1);

  return v2;
}

void MicaBackgroundAnimation.layer.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC9WeatherUI23MicaBackgroundAnimation_layer;
  OUTLINED_FUNCTION_6_50();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t MicaBackgroundAnimation.isActive.getter()
{
  v1 = OBJC_IVAR____TtC9WeatherUI23MicaBackgroundAnimation_isActive;
  OUTLINED_FUNCTION_0_2();
  return *(v0 + v1);
}

uint64_t MicaBackgroundAnimation.isActive.setter(char a1)
{
  v3 = OBJC_IVAR____TtC9WeatherUI23MicaBackgroundAnimation_isActive;
  result = OUTLINED_FUNCTION_6_50();
  *(v1 + v3) = a1;
  return result;
}

double MicaBackgroundAnimation.scale.getter()
{
  v1 = OBJC_IVAR____TtC9WeatherUI23MicaBackgroundAnimation_scale;
  OUTLINED_FUNCTION_0_2();
  return *(v0 + v1);
}

double sub_1BCCD94A4@<D0>(uint64_t *a1@<X0>, double *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC9WeatherUI23MicaBackgroundAnimation_scale;
  swift_beginAccess();
  result = *(v3 + v4);
  *a2 = result;
  return result;
}

id MicaBackgroundAnimation.scale.setter(double a1)
{
  v3 = OBJC_IVAR____TtC9WeatherUI23MicaBackgroundAnimation_scale;
  OUTLINED_FUNCTION_6_50();
  *(v1 + v3) = a1;
  return sub_1BCCD9544();
}

id sub_1BCCD9544()
{
  v1 = OBJC_IVAR____TtC9WeatherUI23MicaBackgroundAnimation_layer;
  OUTLINED_FUNCTION_0_2();
  return [*(v0 + v1) setNeedsLayout];
}

id (*MicaBackgroundAnimation.scale.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  OUTLINED_FUNCTION_3_69();
  return sub_1BCCD95D8;
}

id sub_1BCCD95D8(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return sub_1BCCD9544();
  }

  return result;
}

uint64_t sub_1BCCD960C()
{
  v0 = sub_1BCE1DEC0();

  if (v0 == 1)
  {
    v1 = 1;
  }

  else
  {
    v1 = 2;
  }

  if (v0)
  {
    return v1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1BCCD9660(char a1)
{
  if (a1)
  {
    return 0x70616373646E614CLL;
  }

  else
  {
    return 1819047238;
  }
}

uint64_t sub_1BCCD96B8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1BCCD960C();
  *a1 = result;
  return result;
}

uint64_t sub_1BCCD96E8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1BCCD9660(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

char *MicaBackgroundAnimation.__allocating_init(windowBounds:mode:)(char *a1)
{
  OUTLINED_FUNCTION_1_68();
  v3 = objc_allocWithZone(v1);
  OUTLINED_FUNCTION_11_3();
  return MicaBackgroundAnimation.init(windowBounds:mode:)(a1);
}

uint64_t sub_1BCCD9760@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  type metadata accessor for MicaConditionMedia();
  swift_allocObject();
  result = sub_1BCAA09D4(a1);
  *a2 = result;
  return result;
}

void MicaBackgroundAnimation.updateForNewLayer(_:duration:)(uint64_t a1, double a2)
{
  v3 = v2;
  v5 = *a1;
  v52 = v2 + OBJC_IVAR____TtC9WeatherUI23MicaBackgroundAnimation_rootMicaLayer;
  v53 = *(a1 + 8);
  v6 = *(v2 + OBJC_IVAR____TtC9WeatherUI23MicaBackgroundAnimation_rootMicaLayer);
  sub_1BC947608(0, &qword_1EDA1C0C8);
  v7 = v5;
  v8 = v6;
  v9 = sub_1BCE1DAC0();

  if (v9)
  {
    return;
  }

  v51 = objc_opt_self();
  [v51 begin];
  v60 = MADimFlashingLightsEnabled();
  v10 = sub_1BCCDB4AC(v7);
  if (v10)
  {
    v11 = v10;
  }

  else
  {
    v11 = MEMORY[0x1E69E7CC0];
  }

  v59 = sub_1BC94791C(v11);
  if (!v59)
  {

LABEL_56:
    [v7 setTimeOffset_];
    [v7 setDelegate_];
    v38 = *&qword_1EDA1DE70 + -90.0;
    if (*&qword_1EDA1DE70 + -90.0 < 0.0)
    {
      v38 = 1800.0;
    }

    qword_1EDA1DE70 = *&v38;
    [v7 setAnchorPoint_];
    v39 = OBJC_IVAR____TtC9WeatherUI23MicaBackgroundAnimation_layer;
    OUTLINED_FUNCTION_12();
    [*(v3 + v39) setBeginTime_];
    v40 = sub_1BCCDA068();
    [v7 speed];
    *&v42 = v41 * v40;
    [v7 setSpeed_];
    if (a2 > 0.0)
    {
      v43 = [objc_allocWithZone(MEMORY[0x1E6979538]) init];
      [v43 setType_];
      [v43 setDuration_];
      sub_1BCCDB430(v43, 0xD00000000000001CLL, 0x80000001BCE8F7D0, *(v3 + v39));
    }

    v44 = *v52;
    v45 = *(v52 + 8);
    *v52 = v7;
    *(v52 + 8) = v53;
    v46 = *(v3 + OBJC_IVAR____TtC9WeatherUI23MicaBackgroundAnimation_rotationLayer);
    v47 = v7;
    v48 = v53;
    [v46 addSublayer_];
    [v44 removeFromSuperlayer];
    v49 = *(v3 + v39);
    CALayer.applyReducedFrameRate(parentLayerSpeed:)(1.0);

    *(v3 + OBJC_IVAR____TtC9WeatherUI23MicaBackgroundAnimation_stateName) = 0;
    [*(v3 + v39) setNeedsLayout];
    [v51 commit];

    return;
  }

  v50 = v3;
  v12 = 0;
  v58 = v11 & 0xC000000000000001;
  v54 = v11 + 32;
  v55 = v11 & 0xFFFFFFFFFFFFFF8;
  v56 = v11;
  v57 = v7;
  while (1)
  {
    if (v58)
    {
      v13 = MEMORY[0x1BFB304A0](v12, v11);
    }

    else
    {
      if (v12 >= *(v55 + 16))
      {
        goto LABEL_65;
      }

      v13 = *(v54 + 8 * v12);
    }

    v14 = v13;
    v15 = __OFADD__(v12++, 1);
    if (v15)
    {
      break;
    }

    v16 = sub_1BCCDB51C(v13);
    if (v17)
    {
      v18 = v16;
    }

    else
    {
      v18 = 0;
    }

    if (v17)
    {
      v19 = v17;
    }

    else
    {
      v19 = 0xE000000000000000;
    }

    objc_opt_self();
    v20 = swift_dynamicCastObjCClass();
    if (v20)
    {
      v21 = v20;
      *v62 = 0;
      v22 = v14;
      while (1)
      {
        MEMORY[0x1BFB31B30](v62, 8);
        if (v62[0])
        {
          break;
        }

        *v62 = 0;
      }

      [v21 setSeed_];
    }

    if (sub_1BCE1D430() & 1) != 0 || (sub_1BCE1D430() & 1) != 0 || (sub_1BCE1D430())
    {
      v23 = sub_1BCCDB4AC(v14);
      if (v23)
      {
        v24 = v23;
      }

      else
      {
        v24 = MEMORY[0x1E69E7CC0];
      }

      v61 = v12;
      if (v24 >> 62)
      {
        v25 = sub_1BCE1DC80();
        if (v25)
        {
LABEL_31:
          v26 = 0;
          while (1)
          {
            if ((v24 & 0xC000000000000001) != 0)
            {
              v27 = MEMORY[0x1BFB304A0](v26, v24);
            }

            else
            {
              if (v26 >= *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_63;
              }

              v27 = *(v24 + 32 + 8 * v26);
            }

            v28 = v27;
            v15 = __OFADD__(v26++, 1);
            if (v15)
            {
              break;
            }

            objc_opt_self();
            v29 = swift_dynamicCastObjCClass();
            if (v29)
            {
              v30 = v29;
              do
              {
                *v62 = 0;
                MEMORY[0x1BFB31B30](v62, 8);
              }

              while (!v62[0]);
              [v30 setSeed_];
            }

            if (v26 == v25)
            {
              goto LABEL_42;
            }
          }

          __break(1u);
LABEL_63:
          __break(1u);
          break;
        }
      }

      else
      {
        v25 = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v25)
        {
          goto LABEL_31;
        }
      }

LABEL_42:

      v11 = v56;
      v7 = v57;
      v12 = v61;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD0C550);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1BCE3E040;
    *(inited + 32) = 0x616C4620A1929FF0;
    *(inited + 40) = 0xAC00000073656873;
    strcpy((inited + 48), "Screen Blind");
    *(inited + 61) = 0;
    *(inited + 62) = -5120;
    strcpy((inited + 64), "Screen Flash");
    *(inited + 77) = 0;
    *(inited + 78) = -5120;
    *(inited + 80) = 0x746C6F4220A19AE2;
    *(inited + 88) = 0xA800000000000000;
    sub_1BCCD9EE8(v14, v60, inited);
    swift_setDeallocating();
    sub_1BC9833E4();
    if (v18 == 0x6F7279475FLL && v19 == 0xE500000000000000)
    {
    }

    else
    {
      v33 = sub_1BCE1E090();

      if ((v33 & 1) == 0)
      {
        goto LABEL_51;
      }
    }

    [v14 removeAllAnimations];
    v34 = sub_1BCE1D640();
    v35 = sub_1BCE1D240();
    OUTLINED_FUNCTION_7_53();

    v36 = sub_1BCE1D640();
    v37 = sub_1BCE1D240();
    OUTLINED_FUNCTION_7_53();

    v14 = v37;
LABEL_51:

    if (v12 == v59)
    {

      v3 = v50;
      goto LABEL_56;
    }
  }

  __break(1u);
LABEL_65:
  __break(1u);
}

uint64_t sub_1BCCD9EE8(void *a1, char a2, uint64_t a3)
{
  v6 = *(a3 + 16);
  if (v6)
  {
    v7 = a3 + 40;
    do
    {

      sub_1BCCDB51C(a1);
      if (v8)
      {
        v9 = sub_1BCE1D430();

        if (v9)
        {

          return [a1 setHidden_];
        }
      }

      else
      {
      }

      v7 += 16;
      --v6;
    }

    while (v6);
  }

  result = sub_1BCCDB4AC(a1);
  if (result)
  {
    v11 = result;
    result = sub_1BC94791C(result);
    if (result)
    {
      v12 = result;
      if (result < 1)
      {
        __break(1u);
        return result;
      }

      for (i = 0; i != v12; ++i)
      {
        if ((v11 & 0xC000000000000001) != 0)
        {
          v14 = MEMORY[0x1BFB304A0](i, v11);
        }

        else
        {
          v14 = *(v11 + 8 * i + 32);
        }

        v15 = v14;
        sub_1BCCD9EE8(v14, a2 & 1, a3);
      }
    }
  }

  return result;
}

double sub_1BCCDA068()
{
  v0 = 0.0;
  if (!UIAccessibilityIsReduceMotionEnabled())
  {
    sub_1BCDA6ABC(1.0, 2147483650.0);
    return (v1 / 2147483650.0 + v1 / 2147483650.0) * 0.12 + 0.88;
  }

  return v0;
}

void sub_1BCCDA0C8()
{
  v1 = 1819047238;
  v2 = [objc_opt_self() currentDevice];
  v3 = [v2 userInterfaceIdiom];

  v4 = 0xE400000000000000;
  if (v3)
  {
    v3 = OBJC_IVAR____TtC9WeatherUI23MicaBackgroundAnimation_layer;
    swift_beginAccess();
    [*&v3[v0] bounds];
    LOBYTE(v3) = v6 < v5;
    if (v6 < v5)
    {
      v1 = 0x70616373646E614CLL;
      v4 = 0xE900000000000065;
    }
  }

  v7 = v0 + OBJC_IVAR____TtC9WeatherUI23MicaBackgroundAnimation_rootMicaLayer;
  v8 = sub_1BCCDB858(v1, v4, *(v0 + OBJC_IVAR____TtC9WeatherUI23MicaBackgroundAnimation_rootMicaLayer));
  if (v8)
  {
    v9 = v8;
    *(v0 + OBJC_IVAR____TtC9WeatherUI23MicaBackgroundAnimation_stateName) = v3;
    [*(v7 + 8) setState:v8 ofLayer:*v7];
    v10 = OBJC_IVAR____TtC9WeatherUI23MicaBackgroundAnimation_layer;
    swift_beginAccess();
    v11 = *(v0 + v10);
    CALayer.applyReducedFrameRate(parentLayerSpeed:)(1.0);
  }
}

int *MicaBackgroundAnimation.updateDynamicPosterRotationState(_:)(uint64_t a1)
{
  result = type metadata accessor for MicaBackgroundAnimation.DynamicPosterRotationState();
  v4 = 6;
  if (*(a1 + result[7]) < 0.5)
  {
    v4 = 5;
  }

  v5 = *(a1 + result[v4]);
  if ((v5 & 0xFFFFFFFFFFFFFFFELL) == 2)
  {
    v6 = 3.14159265;
  }

  else
  {
    v6 = 0.0;
  }

  v7 = OBJC_IVAR____TtC9WeatherUI23MicaBackgroundAnimation_posterOrientation;
  if (v5 != *(v1 + OBJC_IVAR____TtC9WeatherUI23MicaBackgroundAnimation_posterOrientation) || v6 != *(v1 + OBJC_IVAR____TtC9WeatherUI23MicaBackgroundAnimation_posterRotationAngle))
  {
    v8 = OBJC_IVAR____TtC9WeatherUI23MicaBackgroundAnimation_layer;
    OUTLINED_FUNCTION_12();
    result = [*(v1 + v8) setNeedsLayout];
  }

  *(v1 + v7) = v5;
  *(v1 + OBJC_IVAR____TtC9WeatherUI23MicaBackgroundAnimation_posterRotationAngle) = v6;
  return result;
}

Swift::Void __swiftcall MicaBackgroundAnimation.layoutSublayers(of:)(CALayer of)
{
  v2 = v1;
  sub_1BC947608(0, &qword_1EDA1C0B8);
  v3 = OBJC_IVAR____TtC9WeatherUI23MicaBackgroundAnimation_layer;
  OUTLINED_FUNCTION_12();
  v4 = *(v1 + v3);
  v5 = sub_1BCE1DAC0();

  if (v5)
  {
    if (*(v2 + OBJC_IVAR____TtC9WeatherUI23MicaBackgroundAnimation_mode))
    {
      sub_1BCCDA990();
    }

    else
    {
      sub_1BCCDA39C();
    }
  }
}

void sub_1BCCDA39C()
{
  v1 = v0;
  v2 = objc_opt_self();
  [v2 begin];
  v3 = objc_opt_self();
  v4 = [v3 currentDevice];
  v5 = [v4 userInterfaceIdiom];

  if (v5)
  {
    v6 = swift_allocObject();
    swift_unknownObjectWeakInit();
    *&v53.m21 = sub_1BCCDB850;
    *&v53.m22 = v6;
    *&v53.m11 = MEMORY[0x1E69E9820];
    *&v53.m12 = 1107296256;
    *&v53.m13 = sub_1BC97FFC4;
    *&v53.m14 = &block_descriptor_5;
    v7 = _Block_copy(&v53);

    [v2 setCompletionBlock_];
    _Block_release(v7);
    *(v1 + OBJC_IVAR____TtC9WeatherUI23MicaBackgroundAnimation_isAnimating) = 1;
  }

  else
  {
    [v2 setDisableActions_];
  }

  v8 = *(v1 + OBJC_IVAR____TtC9WeatherUI23MicaBackgroundAnimation_rootMicaLayer);
  v9 = OBJC_IVAR____TtC9WeatherUI23MicaBackgroundAnimation_isActive;
  swift_beginAccess();
  v10 = *(v1 + v9);
  v11 = v8;
  v12 = v11;
  if (v10 == 1)
  {
    v13 = [v11 superlayer];
    v14 = OBJC_IVAR____TtC9WeatherUI23MicaBackgroundAnimation_scaleLayer;
    if (!v13 || (v15 = v13, v16 = *(v1 + OBJC_IVAR____TtC9WeatherUI23MicaBackgroundAnimation_scaleLayer), sub_1BC947608(0, &qword_1EDA1C0C8), v17 = v16, v18 = sub_1BCE1DAC0(), v15, v17, (v18 & 1) == 0))
    {
      [*(v1 + v14) addSublayer_];
    }
  }

  sub_1BCCDA0C8();
  v19 = [v3 currentDevice];
  v20 = [v19 userInterfaceIdiom];

  v21 = OBJC_IVAR____TtC9WeatherUI23MicaBackgroundAnimation_layer;
  if (*(v1 + OBJC_IVAR____TtC9WeatherUI23MicaBackgroundAnimation_stateName))
  {
    swift_beginAccess();
    [*(v1 + v21) bounds];
    Width = CGRectGetWidth(v54);
    [v12 bounds];
    v23 = CGRectGetWidth(v55);
    [*(v1 + v21) bounds];
    Height = CGRectGetHeight(v56);
    [v12 bounds];
    v25 = CGRectGetHeight(v57);
    v26 = OBJC_IVAR____TtC9WeatherUI23MicaBackgroundAnimation_scale;
    swift_beginAccess();
    if (v20)
    {
      v27 = Width / v23;
      if (Width / v23 <= Height / v25)
      {
        v27 = Height / v25;
      }
    }

    else
    {
      v27 = 1.0;
    }

    v34 = *(v1 + v26) * v27;
    v35 = OBJC_IVAR____TtC9WeatherUI23MicaBackgroundAnimation_rotationLayer;
    v36 = *(v1 + OBJC_IVAR____TtC9WeatherUI23MicaBackgroundAnimation_rotationLayer);
    CATransform3DMakeRotation(&v53, -1.57079633, 0.0, 0.0, 1.0);
    [v36 setTransform_];

    CATransform3DMakeScale(&v53, v34, v34, 1.0);
    [v12 setTransform_];
    v37 = *(v1 + v21);
    v38 = *(v1 + v35);
    [v37 bounds];
    v39 = CGRectGetHeight(v62);
    [*(v1 + v21) bounds];
    [v38 setBounds_];

    v40 = *(v1 + v21);
    v41 = *(v1 + v35);
    [v40 bounds];
    v43 = v42;
    [*(v1 + v21) bounds];
    [v41 setPosition_];

    [v12 bounds];
    v45 = v34 * CGRectGetHeight(v64);
  }

  else
  {
    swift_beginAccess();
    [*(v1 + v21) bounds];
    v28 = CGRectGetWidth(v58);
    [v12 bounds];
    v29 = CGRectGetWidth(v59);
    [*(v1 + v21) bounds];
    v30 = CGRectGetHeight(v60);
    [v12 bounds];
    v31 = CGRectGetHeight(v61);
    v32 = OBJC_IVAR____TtC9WeatherUI23MicaBackgroundAnimation_scale;
    swift_beginAccess();
    if (v20)
    {
      v33 = v28 / v29;
      if (v28 / v29 <= v30 / v31)
      {
        v33 = v30 / v31;
      }
    }

    else
    {
      v33 = 1.0;
    }

    v46 = *(v1 + v32) * v33;
    v47 = OBJC_IVAR____TtC9WeatherUI23MicaBackgroundAnimation_rotationLayer;
    v48 = *(v1 + OBJC_IVAR____TtC9WeatherUI23MicaBackgroundAnimation_rotationLayer);
    memcpy(&v53, MEMORY[0x1E69792E8], sizeof(v53));
    [v48 setTransform_];
    CATransform3DMakeScale(&v53, v46, v46, 1.0);
    [v12 setTransform_];
    v49 = *(v1 + v21);
    v50 = *(v1 + v47);
    [v49 bounds];
    [v50 setBounds_];

    v51 = *(v1 + v21);
    v52 = *(v1 + v47);
    [v51 bounds];
    [v52 setPosition_];

    [*(v1 + v21) bounds];
    v45 = CGRectGetHeight(v66);
  }

  [v12 setPosition_];
  sub_1BCCDAE24();
  [v2 commit];
}

void sub_1BCCDA990()
{
  v1 = v0;
  v2 = objc_opt_self();
  [v2 begin];
  [v2 setAnimationDuration_];
  v3 = (v0 + OBJC_IVAR____TtC9WeatherUI23MicaBackgroundAnimation_rootMicaLayer);
  v4 = *(v0 + OBJC_IVAR____TtC9WeatherUI23MicaBackgroundAnimation_rootMicaLayer);
  v5 = OBJC_IVAR____TtC9WeatherUI23MicaBackgroundAnimation_isActive;
  swift_beginAccess();
  v6 = *(v1 + v5);
  v7 = v4;
  v8 = v7;
  if (v6 == 1)
  {
    v9 = [v7 superlayer];
    v10 = OBJC_IVAR____TtC9WeatherUI23MicaBackgroundAnimation_scaleLayer;
    if (!v9 || (v11 = v9, v12 = *(v1 + OBJC_IVAR____TtC9WeatherUI23MicaBackgroundAnimation_scaleLayer), sub_1BC947608(0, &qword_1EDA1C0C8), v13 = v12, v14 = sub_1BCE1DAC0(), v11, v13, (v14 & 1) == 0))
    {
      [*(v1 + v10) addSublayer_];
    }
  }

  IsLandscape = UIInterfaceOrientationIsLandscape(*(v1 + OBJC_IVAR____TtC9WeatherUI23MicaBackgroundAnimation_posterOrientation));
  v16 = OBJC_IVAR____TtC9WeatherUI23MicaBackgroundAnimation_stateName;
  if ((sub_1BCA68768(IsLandscape) & 1) == 0)
  {
    v17 = IsLandscape ? 0x70616373646E614CLL : 1819047238;
    v18 = IsLandscape ? 0xE900000000000065 : 0xE400000000000000;
    v19 = sub_1BCCDB858(v17, v18, *v3);
    if (v19)
    {
      v20 = v19;
      *(v1 + v16) = IsLandscape;
      [v3[1] setState:v19 ofLayer:*v3];
      v21 = OBJC_IVAR____TtC9WeatherUI23MicaBackgroundAnimation_layer;
      swift_beginAccess();
      v22 = *(v1 + v21);
      CALayer.applyReducedFrameRate(parentLayerSpeed:)(1.0);
    }
  }

  v23 = OBJC_IVAR____TtC9WeatherUI23MicaBackgroundAnimation_layer;
  swift_beginAccess();
  [*(v1 + v23) bounds];
  Width = CGRectGetWidth(v45);
  [v8 bounds];
  v25 = Width / CGRectGetWidth(v46);
  [*(v1 + v23) bounds];
  Height = CGRectGetHeight(v47);
  [v8 bounds];
  v27 = CGRectGetHeight(v48);
  v28 = OBJC_IVAR____TtC9WeatherUI23MicaBackgroundAnimation_scale;
  v29 = Height / v27;
  swift_beginAccess();
  if (v25 > v29)
  {
    v30 = v25;
  }

  else
  {
    v30 = v29;
  }

  CATransform3DMakeScale(&v44, v30 * *(v1 + v28), v30 * *(v1 + v28), 1.0);
  [v8 setTransform_];
  v31 = OBJC_IVAR____TtC9WeatherUI23MicaBackgroundAnimation_rotationLayer;
  v32 = *(v1 + v23);
  v33 = *(v1 + OBJC_IVAR____TtC9WeatherUI23MicaBackgroundAnimation_rotationLayer);
  [v32 bounds];
  [v33 setBounds_];

  v34 = OBJC_IVAR____TtC9WeatherUI23MicaBackgroundAnimation_posterRotationAngle;
  v35 = *(v1 + OBJC_IVAR____TtC9WeatherUI23MicaBackgroundAnimation_posterRotationAngle);
  v36 = *(v1 + v23);
  v37 = *(v1 + v31);
  [v36 bounds];
  if (v35 == 3.14159265)
  {
    [v37 setPosition_];
  }

  else
  {
    [v37 setPosition_];
  }

  [*(v1 + v23) bounds];
  [v8 setPosition_];
  sub_1BCCDAE24();
  v42 = -*(v1 + v34);
  v43 = *(v1 + v31);
  CATransform3DMakeRotation(&v44, v42, 0.0, 0.0, 1.0);
  [v43 setTransform_];

  [v2 commit];
}

void sub_1BCCDADCC()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    Strong[OBJC_IVAR____TtC9WeatherUI23MicaBackgroundAnimation_isAnimating] = 0;
  }
}

id sub_1BCCDAE24()
{
  v1 = OBJC_IVAR____TtC9WeatherUI23MicaBackgroundAnimation_scaleLayer;
  v2 = OBJC_IVAR____TtC9WeatherUI23MicaBackgroundAnimation_rotationLayer;
  v3 = *(v0 + OBJC_IVAR____TtC9WeatherUI23MicaBackgroundAnimation_rotationLayer);
  v4 = *(v0 + OBJC_IVAR____TtC9WeatherUI23MicaBackgroundAnimation_scaleLayer);
  [v3 bounds];
  [v4 setBounds_];

  v5 = *(v0 + v2);
  v6 = *(v0 + v1);
  [v5 bounds];
  Width = CGRectGetWidth(v22);
  [*(v0 + v1) anchorPoint];
  v9 = Width * v8;
  [*(v0 + v2) bounds];
  Height = CGRectGetHeight(v23);
  [*(v0 + v1) anchorPoint];
  [v6 setPosition_];

  v12 = OBJC_IVAR____TtC9WeatherUI23MicaBackgroundAnimation_scale;
  swift_beginAccess();
  v13 = *(v0 + v1);
  if (*(v0 + v12) == 1.0)
  {
    v14 = *(MEMORY[0x1E695EFD0] + 16);
    *&v21.a = *MEMORY[0x1E695EFD0];
    *&v21.c = v14;
    *&v21.tx = *(MEMORY[0x1E695EFD0] + 32);
    return [v13 setAffineTransform_];
  }

  else
  {
    [v13 bounds];
    v16 = CGRectGetHeight(v24);
    v17 = *(v0 + v12);
    v18 = v16 * (v17 + -1.0);
    v19 = *(v0 + v1);
    CGAffineTransformMakeScale(&v21, v17, v17);
    CGAffineTransformTranslate(&v20, &v21, 0.0, v18 * -0.5);
    v21 = v20;
    return [v19 setAffineTransform_];
  }
}

id MicaBackgroundAnimation.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id MicaBackgroundAnimation.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

Swift::Bool __swiftcall MicaBackgroundAnimation.isPlaybackBlocked()()
{
  v1 = *(v0 + OBJC_IVAR____TtC9WeatherUI23MicaBackgroundAnimation_playbackCoordinator + 8);
  ObjectType = swift_getObjectType();
  return (*(v1 + 8))(ObjectType, v1) & 1;
}

Swift::Void __swiftcall MicaBackgroundAnimation.setPlaybackBlocked(_:)(Swift::Bool a1)
{
  v2 = a1;
  v3 = *(v1 + OBJC_IVAR____TtC9WeatherUI23MicaBackgroundAnimation_playbackCoordinator + 8);
  ObjectType = swift_getObjectType();
  (*(v3 + 16))(v2, ObjectType, v3);
}

Swift::Void __swiftcall MicaBackgroundAnimation.play(_:)(Swift::Bool a1)
{
  v2 = a1;
  v3 = *(v1 + OBJC_IVAR____TtC9WeatherUI23MicaBackgroundAnimation_playbackCoordinator + 8);
  ObjectType = swift_getObjectType();
  (*(v3 + 24))(v2, ObjectType, v3);
}

uint64_t MicaBackgroundAnimation.pause(_:completion:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(v3 + OBJC_IVAR____TtC9WeatherUI23MicaBackgroundAnimation_playbackCoordinator + 8);
  ObjectType = swift_getObjectType();
  return (*(v7 + 32))(a1, a2, a3, ObjectType, v7);
}

int *MicaBackgroundAnimation.DynamicPosterRotationState.init(animationId:fromOrientation:toOrientation:progress:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>, float a5@<S0>)
{
  v10 = sub_1BCE19090();
  (*(*(v10 - 8) + 32))(a4, a1, v10);
  result = type metadata accessor for MicaBackgroundAnimation.DynamicPosterRotationState();
  *(a4 + result[5]) = a2;
  *(a4 + result[6]) = a3;
  *(a4 + result[7]) = a5;
  return result;
}

unint64_t sub_1BCCDB34C(unint64_t result)
{
  if (result)
  {
    v1 = result;
    v2 = result;
    OUTLINED_FUNCTION_4_59();
    v3 = v5 * v2;
    if (v3 < v1)
    {
      v4 = -v1 % v1;
      while (v4 > v3)
      {
        OUTLINED_FUNCTION_4_59();
        v3 = v5 * v2;
      }
    }

    return HIDWORD(v3);
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_1BCCDB3BC(unint64_t result)
{
  if (result)
  {
    v1 = result;
    OUTLINED_FUNCTION_4_59();
    result = (v3 * v1) >> 64;
    if (v3 * v1 < v1)
    {
      v2 = -v1 % v1;
      if (v2 > v3 * v1)
      {
        do
        {
          OUTLINED_FUNCTION_4_59();
        }

        while (v2 > v3 * v1);
        return (v3 * v1) >> 64;
      }
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1BCCDB430(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = sub_1BCE1D240();

  [a4 addAnimation:a1 forKey:v6];
}

uint64_t sub_1BCCDB4AC(void *a1)
{
  v1 = [a1 sublayers];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  sub_1BC947608(0, &qword_1EDA1C0C8);
  v3 = sub_1BCE1D570();

  return v3;
}

uint64_t sub_1BCCDB51C(void *a1)
{
  v1 = [a1 name];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_1BCE1D280();

  return v3;
}

uint64_t type metadata accessor for MicaBackgroundAnimation.DynamicPosterRotationState()
{
  result = qword_1EBD0C5D8;
  if (!qword_1EBD0C5D8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1BCCDB5D0()
{
  result = qword_1EBD0C560;
  if (!qword_1EBD0C560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD0C560);
  }

  return result;
}

void sub_1BCCDB688()
{
  sub_1BCE19090();
  if (v0 <= 0x3F)
  {
    type metadata accessor for UIInterfaceOrientation(319);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

_BYTE *sub_1BCCDB71C(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1BCCDB7FC()
{
  result = qword_1EBD0C5E8;
  if (!qword_1EBD0C5E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD0C5E8);
  }

  return result;
}

id sub_1BCCDB858(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_1BCE1D240();

  v5 = [a3 stateWithName_];

  return v5;
}

uint64_t Precipitation.conditionIconName.getter()
{
  v1 = v0;
  v2 = sub_1BCE19BA0();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v6, v1, v2, v4);
  v7 = (*(v3 + 88))(v6, v2);
  v8 = 0;
  if (v7 != *MEMORY[0x1E6984DB8])
  {
    if (v7 == *MEMORY[0x1E6984DB0])
    {
      return 0x61682E64756F6C63;
    }

    else if (v7 == *MEMORY[0x1E6984DD0])
    {
      return 0x616C6C6572626D75;
    }

    else
    {
      v8 = 0x61722E64756F6C63;
      if (v7 != *MEMORY[0x1E6984DC0])
      {
        if (v7 == *MEMORY[0x1E6984DD8])
        {
          return 0xD000000000000010;
        }

        else if (v7 == *MEMORY[0x1E6984DC8])
        {
          return 0x6B616C66776F6E73;
        }

        else
        {
          (*(v3 + 8))(v6, v2);
        }
      }
    }
  }

  return v8;
}

uint64_t WeatherServiceConfigurationProvider.__allocating_init(clientConfigurationProvider:)(__int128 *a1)
{
  v2 = swift_allocObject();
  sub_1BC947AB4(a1, v2 + 16);
  return v2;
}

uint64_t WeatherServiceConfigurationProvider.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);

  return MEMORY[0x1EEE6BDC0](v0, 56, 7);
}

void __swiftcall SpringModel.init(springAnimation:)(WeatherUI::SpringModel *__return_ptr retstr, CASpringAnimation springAnimation)
{
  isa = springAnimation.super.super.super.super.isa;
  [(objc_class *)springAnimation.super.super.super.super.isa mass];
  v5 = v4;
  [(objc_class *)isa stiffness];
  v7 = v6;
  [(objc_class *)isa damping];
  v9 = v8;
  [(objc_class *)isa initialVelocity];
  v11 = sqrt(v7 / v5);
  v12 = sqrt(v5 * v7);
  v13 = v9 / (v12 + v12);
  if (v13 >= 1.0)
  {
    v15 = v11 - v10;
    v14 = 0.0;
  }

  else
  {
    v14 = v11 * sqrt(1.0 - v13 * v13);
    v15 = (v11 * v13 - v10) / v14;
  }

  sub_1BCCDBE20(0.001);
  v17 = v16;

  retstr->w0 = v11;
  retstr->zeta = v13;
  retstr->wd = v14;
  retstr->A = 1.0;
  retstr->B = v15;
  retstr->duration = v17;
}

void __swiftcall SpringModel.init(mass:stiffness:damping:initialVelocity:)(WeatherUI::SpringModel *__return_ptr retstr, Swift::Double mass, Swift::Double stiffness, Swift::Double damping, Swift::Double initialVelocity)
{
  v6 = sqrt(stiffness / mass);
  v7 = sqrt(mass * stiffness);
  v8 = damping / (v7 + v7);
  if (v8 >= 1.0)
  {
    v10 = v6 - initialVelocity;
    v9 = 0.0;
  }

  else
  {
    v9 = v6 * sqrt(1.0 - v8 * v8);
    v10 = (v6 * v8 - initialVelocity) / v9;
  }

  sub_1BCCDBE20(0.001);
  retstr->w0 = v6;
  retstr->zeta = v8;
  retstr->wd = v9;
  retstr->A = 1.0;
  retstr->B = v10;
  retstr->duration = v11;
}

void sub_1BCCDBE20(double a1)
{
  v2 = *v1;
  v3 = v1[1];
  v17 = v1[2];
  v18 = v1[4];
  v19 = v1[3];
  v4 = 0.000001;
  if (a1 <= 0.000001)
  {
    if (v3 != 0.0)
    {
      if (v3 >= 1.0)
      {
        goto LABEL_4;
      }

LABEL_23:
      fmax(-log(v4 / (fabs(v19) + fabs(v18))) / (v2 * v3), 0.0);
    }
  }

  else if (v3 != 0.0)
  {
    v4 = a1;
    if (v3 >= 1.0)
    {
LABEL_4:
      v16 = -(v3 * v2);
      v5 = 0.0;
      v6 = -1.0;
      v7 = INFINITY;
      v8 = 1023;
      v9 = 1.0;
      v10 = -1.0;
      while (1)
      {
        if (v3 >= v9)
        {
          v14 = (v19 + v18 * v5) * exp(-(v5 * v2));
        }

        else
        {
          v11 = v2;
          v12 = exp(v16 * v5);
          v13 = __sincos_stret(v17 * v5);
          v14 = v12 * (v19 * v13.__cosval + v18 * v13.__sinval);
          v2 = v11;
          v6 = -1.0;
        }

        v9 = 1.0;
        if (COERCE__INT64(fabs(v14 + v6 + 1.0)) > 0x7FEFFFFFFFFFFFFFLL)
        {
          return;
        }

        v15 = fabs(v14 + v6 + 1.0);
        if (v7 >= v4)
        {
          break;
        }

        if (v15 < v4)
        {
          if (v5 - v10 > 1.0)
          {
            return;
          }

LABEL_15:
          if (!v8)
          {
            return;
          }

          goto LABEL_19;
        }

        if (!v8)
        {
          return;
        }

        v7 = INFINITY;
LABEL_19:
        v5 = v5 + 0.1;
        --v8;
      }

      if (v15 < v7)
      {
        v10 = v5;
        v7 = v15;
      }

      goto LABEL_15;
    }

    goto LABEL_23;
  }
}

uint64_t sub_1BCCDBFFC(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 48))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1BCCDC01C(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
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

  *(result + 48) = v3;
  return result;
}

double sub_1BCCDC064(double a1)
{
  v2 = *v1;
  v3 = v1[1];
  v4 = v1[3];
  v5 = v1[4];
  if (v3 >= 1.0)
  {
    v9 = exp(-(a1 * v2)) * (v4 + v5 * a1);
  }

  else
  {
    v6 = v1[2] * a1;
    v7 = exp(-(v3 * v2) * a1);
    v8 = __sincos_stret(v6);
    v9 = v7 * (v4 * v8.__cosval + v5 * v8.__sinval);
  }

  return 1.0 - v9;
}

void sub_1BCCDC0EC(uint64_t a1@<X8>)
{
  v2 = a1 + 1436;
  sub_1BCCDC82C();
  v4 = v3;
  sub_1BCCDE704();
  *a1 = 0x4006666666666666;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0x3FF0000000000000;
  *(a1 + 24) = 25;
  *(a1 + 32) = xmmword_1BCE3BED0;
  *(a1 + 48) = xmmword_1BCE3BED0;
  *(a1 + 64) = 0x42D2000042480000;
  *(a1 + 72) = 0xC409800000000000;
  *(a1 + 80) = xmmword_1BCE3E530;
  *(a1 + 96) = xmmword_1BCE3BEF0;
  *(a1 + 112) = 0x3E8000003DF5C28FLL;
  *(a1 + 128) = xmmword_1BCE3C7C0;
  *(a1 + 144) = xmmword_1BCE3D840;
  *(a1 + 160) = xmmword_1BCE3BF00;
  *(a1 + 176) = 1153138688;
  *(a1 + 184) = 0x3E4CCCCD3DA3D70ALL;
  *(a1 + 192) = xmmword_1BCE3C7C0;
  *(a1 + 208) = xmmword_1BCE3C700;
  *(a1 + 224) = xmmword_1BCE3C660;
  *(a1 + 240) = 0x4140000040A00000;
  *(a1 + 248) = 1132068864;
  *(a1 + 256) = 0x3E4CCCCD3DE147AELL;
  *(a1 + 264) = 0x40A0000041700000;
  *(a1 + 272) = 1101004800;
  __asm { FMOV            V0.4S, #1.0 }

  *(a1 + 288) = xmmword_1BCE3C7C0;
  *(a1 + 304) = _Q0;
  *(a1 + 320) = 0x4348000040C00000;
  *(a1 + 328) = 0x3E99999A3E19999ALL;
  *(a1 + 336) = 0x3F00000040A00000;
  *(a1 + 352) = xmmword_1BCE3C7C0;
  *(a1 + 368) = xmmword_1BCE3C700;
  *(a1 + 384) = 0;
  *(a1 + 388) = 0x3B03126F3F800000;
  *(a1 + 400) = xmmword_1BCE3C670;
  *(a1 + 416) = 0x3F0000003F000000;
  *(a1 + 424) = 30;
  *(a1 + 432) = xmmword_1BCE3D860;
  *(a1 + 448) = 0x3E4CCCCD3DCCCCCDLL;
  *(a1 + 464) = _Q0;
  *(a1 + 480) = xmmword_1BCE3D870;
  *(a1 + 496) = 0x43FA000040400000;
  *(a1 + 504) = 1116471296;
  *(a1 + 512) = 0x3E8000003DF5C28FLL;
  *(a1 + 528) = _Q0;
  *(a1 + 544) = _Q0;
  *(a1 + 560) = 0x4248000044BB8000;
  *(a1 + 568) = 0x3E4CCCCD3DA3D70ALL;
  *(a1 + 576) = xmmword_1BCE3C700;
  *(a1 + 592) = xmmword_1BCE3D880;
  *(a1 + 608) = 0x40C0000040800000;
  *(a1 + 624) = xmmword_1BCE3C700;
  *(a1 + 640) = xmmword_1BCE3D880;
  *(a1 + 656) = 0x419DAE1441200000;
  *(a1 + 664) = 0x402000003E99999ALL;
  *(a1 + 672) = 0x40A000003F800000;
  *(a1 + 688) = _Q0;
  *(a1 + 704) = 1065353216;
  *(a1 + 712) = 0x404000003FC00000;
  *(a1 + 720) = 0x400000003FC00000;
  *(a1 + 728) = 0;
  *(a1 + 736) = 1;
  *(a1 + 744) = 4;
  *(a1 + 752) = xmmword_1BCE3BF40;
  *(a1 + 768) = 0x617274736F746C41;
  *(a1 + 776) = 0xEF53202D20737574;
  *(a1 + 784) = 0xD000000000000013;
  *(a1 + 792) = 0x80000001BCE792E0;
  *(a1 + 800) = 6;
  *(a1 + 816) = _Q0;
  *(a1 + 832) = 1065353216;
  *(a1 + 840) = 0x404000003FC00000;
  *(a1 + 848) = 0x400000003FC00000;
  *(a1 + 856) = 0;
  *(a1 + 864) = 1;
  *(a1 + 872) = 4;
  *(a1 + 880) = xmmword_1BCE3D890;
  *(a1 + 896) = 0x617274736F746C41;
  *(a1 + 904) = 0xEF53202D20737574;
  *(a1 + 912) = 0xD000000000000013;
  *(a1 + 920) = 0x80000001BCE792E0;
  *(a1 + 928) = 6;
  *(a1 + 944) = _Q0;
  *(a1 + 960) = 1065353216;
  *(a1 + 968) = 0x404000003FC00000;
  *(a1 + 976) = 0x411970A44106E147;
  *(a1 + 984) = 1083022496;
  *(a1 + 992) = 1;
  *(a1 + 1000) = 4;
  *(a1 + 1008) = xmmword_1BCE3C6F0;
  *(a1 + 1024) = 0x2073756C756D7543;
  *(a1 + 1032) = 0xEB000000004D202DLL;
  *(a1 + 1040) = 0x5F73756C756D7543;
  *(a1 + 1048) = 0xEF4D656C676E6953;
  *(a1 + 1056) = 10;
  *(a1 + 1072) = _Q0;
  *(a1 + 1088) = 1065353216;
  *(a1 + 1096) = 0;
  __asm { FMOV            V4.2S, #3.25 }

  *(a1 + 1104) = _D4;
  *(a1 + 1112) = 0x42820000C0D00000;
  *(a1 + 1120) = 0;
  *(a1 + 1128) = 2;
  *(a1 + 1136) = xmmword_1BCE3C710;
  *(a1 + 1152) = 0x7970736957;
  *(a1 + 1160) = 0xE500000000000000;
  strcpy((a1 + 1168), "Wispy_Single");
  *(a1 + 1181) = 0;
  *(a1 + 1182) = -5120;
  *(a1 + 1184) = 6;
  *(a1 + 1200) = _Q0;
  *(a1 + 1216) = xmmword_1BCE47CB0;
  *(a1 + 1232) = 0;
  *(a1 + 1236) = 1;
  *(a1 + 1240) = 0x617274736F746C41;
  *(a1 + 1248) = 0xEB00000000737574;
  *(a1 + 1256) = 0xD000000000000013;
  *(a1 + 1264) = 0x80000001BCE79300;
  *(a1 + 1272) = 8;
  *(a1 + 1280) = 0;
  *(a1 + 1288) = 0x400000003F800000;
  *(a1 + 1296) = 0x41C8000042C80000;
  *(a1 + 1304) = 0;
  *(a1 + 1312) = _Q0;
  *(a1 + 1328) = _Q0;
  *(a1 + 1344) = 0;
  *(a1 + 1352) = 0x40000000;
  *(a1 + 1360) = 0;
  *(a1 + 1368) = 1;
  *(a1 + 1408) = 0u;
  *(a1 + 1392) = 0u;
  *(a1 + 1376) = 0u;
  *(a1 + 1424) = 0x3F99999A3ECCCCCDLL;
  *(a1 + 1432) = 1;
  *v2 = xmmword_1BCE3BFC0;
  *(a1 + 1456) = 0x41D3333341BD3333;
  *(a1 + 1472) = _Q0;
  *(a1 + 1488) = _Q0;
  *(a1 + 1504) = 1097859072;
  *(a1 + 1512) = 0x736168506E6F6F6DLL;
  *(a1 + 1520) = 0xEA00000000003065;
  *(a1 + 1528) = 1112014848;
  *(a1 + 1536) = _Q0;
  *(a1 + 1552) = xmmword_1BCE3C770;
  *(a1 + 1568) = 0x4248000042200000;
  *(a1 + 1584) = 0u;
  *(a1 + 1600) = xmmword_1BCE3D880;
  __asm { FMOV            V2.2S, #-30.0 }

  *(a1 + 1616) = -_D2;
  *(a1 + 1624) = 0x40000000;
  *(a1 + 1632) = 0;
  *(a1 + 1628) = 0;
  *(a1 + 1634) = 16843009;
  *(a1 + 1637) = 16843009;
  *(a1 + 1645) = 256;
  *(v2 + 211) = 0;
  *(a1 + 1651) = 1;
  *(a1 + 1656) = 0;
  *(a1 + 1657) = v13;
  *(a1 + 1659) = v14;
  *(a1 + 1660) = 1066611507;
  *(a1 + 1664) = 0x40C0000040A00000;
  *(a1 + 1672) = 3;
  *(a1 + 1680) = xmmword_1BCE3C000;
  *(a1 + 1696) = xmmword_1BCE3C010;
  *(a1 + 1712) = xmmword_1BCE3C020;
  *(a1 + 1728) = 0x3F0000003EB33333;
  *(a1 + 1736) = 0x3E800000453B8000;
  *(a1 + 1760) = 0;
  *(a1 + 1744) = 0u;
  *(a1 + 1776) = xmmword_1BCE3D8B0;
  *(a1 + 1792) = xmmword_1BCE3D8C0;
  *(a1 + 1808) = xmmword_1BCE3C7A0;
  *(a1 + 1824) = 1;
  *(a1 + 1828) = xmmword_1BCE47CC0;
  *(a1 + 1844) = 1050253722;
  *(a1 + 1848) = 0x4100000041200000;
  *(a1 + 1856) = 3;
  *(a1 + 1864) = 1041865114;
  *(a1 + 1872) = 0x400AE1483F970A3DLL;
  *(a1 + 1880) = 1106247680;
  *(a1 + 1888) = _Q0;
  *(a1 + 1904) = 0x3F19999A40A00000;
  *(a1 + 1912) = 1101004800;
  *(a1 + 1920) = 0;
  *(a1 + 1928) = 1107296256;
  *(a1 + 1936) = _Q0;
  *(a1 + 1952) = 0x40000000;
  *(a1 + 1960) = 0x420C000041C80000;
  *(a1 + 1968) = xmmword_1BCE47CD0;
  *(a1 + 1984) = 0x3F80000000000000;
  *(a1 + 1992) = 1061158912;
  *(a1 + 2000) = 0x3F6666663E4CCCCDLL;
  *(a1 + 2008) = 0x3F6666663F333333;
  *(a1 + 2016) = xmmword_1BCE3C7E0;
  *(a1 + 2096) = 0u;
  *(a1 + 2080) = 0u;
  *(a1 + 2064) = 0u;
  *(a1 + 2048) = 0u;
  *(a1 + 2032) = 0u;
  *(a1 + 2112) = 1056964608;
  *(a1 + 2120) = 0x3E4CCCCD3DCCCCCDLL;
  *(a1 + 2128) = 0x400000003F800000;
  *(a1 + 2136) = 0x4040000040000000;
  *(a1 + 2144) = -1046478848;
  *(a1 + 2160) = _Q0;
  *(a1 + 2176) = _Q0;
  *(a1 + 2192) = 1061997773;
  *(a1 + 2200) = 10;
  *(a1 + 2208) = 0x40A000003FC00000;
  *(a1 + 2224) = xmmword_1BCE3C090;
  *(a1 + 2240) = xmmword_1BCE3C0A0;
  *(a1 + 2256) = _Q0;
  *(a1 + 2288) = 0u;
  *(a1 + 2272) = 0u;
  *(a1 + 2304) = 3;
  *(a1 + 2312) = v4;
  *(a1 + 2320) = v12;
}

__n128 sub_1BCCDC82C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD07858);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1BCE3C820;
  *(v0 + 32) = 0xC056800000000000;
  *(v0 + 40) = 0;
  *(v0 + 48) = xmmword_1BCE3C830;
  *(v0 + 64) = 0x432A000043480000;
  *(v0 + 72) = 1040242952;
  *(v0 + 80) = xmmword_1BCE3C840;
  *(v0 + 96) = xmmword_1BCE3C850;
  *(v0 + 112) = xmmword_1BCE3C860;
  *(v0 + 128) = xmmword_1BCE3C870;
  *(v0 + 144) = xmmword_1BCE3C880;
  *(v0 + 160) = xmmword_1BCE3C890;
  __asm { FMOV            V0.2D, #1.0 }

  *(v0 + 176) = result;
  *(v0 + 192) = result;
  *(v0 + 208) = result;
  *(v0 + 224) = result;
  *(v0 + 240) = result;
  *(v0 + 256) = result;
  *(v0 + 272) = result;
  *(v0 + 288) = result;
  *(v0 + 304) = result;
  *(v0 + 320) = result;
  *(v0 + 336) = xmmword_1BCE3C8F0;
  *(v0 + 352) = result;
  *(v0 + 368) = xmmword_1BCE47CE0;
  *(v0 + 384) = 0x3F4CCCCD3F800000;
  *(v0 + 392) = 0x3FF0000000000000;
  *(v0 + 400) = result;
  *(v0 + 416) = 0;
  *(v0 + 424) = 1065353216;
  *(v0 + 432) = result;
  *(v0 + 448) = result;
  *(v0 + 464) = result;
  *(v0 + 480) = result;
  *(v0 + 496) = result;
  *(v0 + 512) = result;
  *(v0 + 528) = result;
  *(v0 + 544) = result;
  *(v0 + 560) = result;
  *(v0 + 576) = result;
  *(v0 + 592) = result;
  *(v0 + 608) = result;
  *(v0 + 624) = result;
  *(v0 + 640) = result;
  *(v0 + 656) = result;
  *(v0 + 672) = result;
  *(v0 + 688) = result;
  *(v0 + 704) = result;
  *(v0 + 720) = result;
  *(v0 + 736) = result;
  *(v0 + 752) = result;
  *(v0 + 768) = result;
  *(v0 + 784) = result;
  *(v0 + 800) = result;
  *(v0 + 816) = result;
  *(v0 + 832) = result;
  *(v0 + 848) = result;
  *(v0 + 864) = result;
  *(v0 + 880) = result;
  *(v0 + 896) = result;
  *(v0 + 912) = result;
  *(v0 + 928) = result;
  *(v0 + 944) = result;
  *(v0 + 960) = result;
  *(v0 + 976) = result;
  *(v0 + 992) = result;
  *(v0 + 1008) = result;
  *(v0 + 1024) = result;
  *(v0 + 1040) = result;
  *(v0 + 1056) = result;
  *(v0 + 1072) = vdupq_n_s64(0x3FCF82F740000000uLL);
  *(v0 + 1088) = xmmword_1BCE3C910;
  *(v0 + 1104) = xmmword_1BCE3C920;
  *(v0 + 1120) = xmmword_1BCE3C930;
  *(v0 + 1136) = result;
  *(v0 + 1152) = result;
  *(v0 + 1168) = 0x4170000000000000;
  *(v0 + 1176) = 0x3FF0000000000000;
  *(v0 + 1184) = result;
  *(v0 + 1200) = result;
  *(v0 + 1216) = result;
  *(v0 + 1232) = 0x3FF0000000000000;
  *(v0 + 1248) = 0xC04E000000000000;
  *(v0 + 1256) = 0;
  *(v0 + 1257) = *v8;
  *(v0 + 1260) = *&v8[3];
  *(v0 + 1264) = xmmword_1BCE3C830;
  *(v0 + 1280) = 0x432A000043480000;
  *(v0 + 1288) = 1040242952;
  *(v0 + 1296) = xmmword_1BCE3C840;
  *(v0 + 1312) = xmmword_1BCE3C850;
  *(v0 + 1328) = xmmword_1BCE3C860;
  *(v0 + 1344) = xmmword_1BCE3C870;
  *(v0 + 1360) = xmmword_1BCE3C880;
  *(v0 + 1376) = xmmword_1BCE3C890;
  *(v0 + 1392) = result;
  *(v0 + 1408) = result;
  *(v0 + 1424) = result;
  *(v0 + 1440) = result;
  *(v0 + 1456) = result;
  *(v0 + 1472) = result;
  *(v0 + 1488) = result;
  *(v0 + 1504) = result;
  *(v0 + 1520) = result;
  *(v0 + 1536) = result;
  *(v0 + 1552) = xmmword_1BCE3C8F0;
  *(v0 + 1568) = result;
  *(v0 + 1584) = xmmword_1BCE47CE0;
  *(v0 + 1600) = 0x3F4CCCCD3F800000;
  *(v0 + 1608) = 0x3FF0000000000000;
  *(v0 + 1616) = result;
  *(v0 + 1632) = 0;
  *(v0 + 1640) = 1065353216;
  *(v0 + 1648) = result;
  *(v0 + 1664) = result;
  *(v0 + 1680) = result;
  *(v0 + 1696) = result;
  *(v0 + 1712) = result;
  *(v0 + 1728) = result;
  *(v0 + 1744) = result;
  *(v0 + 1760) = result;
  *(v0 + 1776) = result;
  *(v0 + 1792) = result;
  *(v0 + 1808) = result;
  *(v0 + 1824) = result;
  *(v0 + 1840) = result;
  *(v0 + 1856) = result;
  *(v0 + 1872) = result;
  *(v0 + 1888) = result;
  *(v0 + 1904) = result;
  *(v0 + 1920) = result;
  *(v0 + 1936) = result;
  *(v0 + 1952) = result;
  *(v0 + 1968) = result;
  *(v0 + 1984) = result;
  *(v0 + 2000) = result;
  *(v0 + 2016) = result;
  *(v0 + 2032) = result;
  *(v0 + 2048) = result;
  *(v0 + 2064) = result;
  *(v0 + 2080) = result;
  *(v0 + 2096) = result;
  *(v0 + 2112) = result;
  *(v0 + 2128) = result;
  *(v0 + 2144) = result;
  *(v0 + 2160) = result;
  *(v0 + 2176) = result;
  *(v0 + 2192) = result;
  *(v0 + 2208) = result;
  *(v0 + 2224) = result;
  *(v0 + 2240) = result;
  *(v0 + 2256) = result;
  *(v0 + 2272) = result;
  *(v0 + 2288) = vdupq_n_s64(0x3FCF6CD7E0000000uLL);
  *(v0 + 2304) = xmmword_1BCE3C940;
  *(v0 + 2320) = xmmword_1BCE3C950;
  *(v0 + 2336) = xmmword_1BCE3C960;
  *(v0 + 2352) = result;
  *(v0 + 2368) = result;
  *(v0 + 2384) = 0x4170000000000000;
  *(v0 + 2392) = 0x3FF0000000000000;
  *(v0 + 2400) = result;
  *(v0 + 2416) = result;
  *(v0 + 2432) = result;
  *(v0 + 2448) = 0x3FF0000000000000;
  *(v0 + 2464) = 0xC028000000000000;
  *(v0 + 2472) = 0;
  *(v0 + 2473) = *v9;
  *(v0 + 2476) = *&v9[3];
  *(v0 + 2480) = xmmword_1BCE3DC90;
  *(v0 + 2496) = 0x4396000042C80000;
  *(v0 + 2504) = 1036831949;
  *(v0 + 2512) = xmmword_1BCE3C970;
  *(v0 + 2528) = result;
  *(v0 + 2544) = xmmword_1BCE3DEC0;
  *(v0 + 2560) = xmmword_1BCE3C990;
  *(v0 + 2576) = xmmword_1BCE3C9A0;
  *(v0 + 2592) = result;
  *(v0 + 2608) = result;
  *(v0 + 2624) = result;
  *(v0 + 2640) = result;
  *(v0 + 2656) = result;
  *(v0 + 2672) = result;
  *(v0 + 2688) = result;
  *(v0 + 2704) = xmmword_1BCE3D3C0;
  *(v0 + 2720) = xmmword_1BCE3D3D0;
  *(v0 + 2736) = xmmword_1BCE3C9E0;
  *(v0 + 2752) = xmmword_1BCE3CBC0;
  *(v0 + 2768) = xmmword_1BCE3C9F0;
  *(v0 + 2784) = xmmword_1BCE3CA00;
  *(v0 + 2800) = xmmword_1BCE42C40;
  v6 = vdup_n_s32(0x3F4CCCCDu);
  *(v0 + 2816) = v6;
  *(v0 + 2824) = 0x3FF0000000000000;
  *(v0 + 2832) = result;
  *(v0 + 2848) = 0;
  *(v0 + 2856) = 1065353216;
  *(v0 + 2864) = result;
  *(v0 + 2880) = result;
  *(v0 + 2896) = result;
  *(v0 + 2912) = result;
  *(v0 + 2928) = result;
  *(v0 + 2944) = result;
  *(v0 + 2960) = result;
  *(v0 + 2976) = result;
  *(v0 + 2992) = result;
  *(v0 + 3008) = result;
  *(v0 + 3024) = result;
  *(v0 + 3040) = result;
  *(v0 + 3056) = result;
  *(v0 + 3072) = result;
  *(v0 + 3088) = result;
  *(v0 + 3104) = result;
  *(v0 + 3120) = result;
  *(v0 + 3136) = result;
  *(v0 + 3152) = result;
  *(v0 + 3168) = result;
  *(v0 + 3184) = result;
  *(v0 + 3200) = result;
  *(v0 + 3216) = result;
  *(v0 + 3232) = result;
  *(v0 + 3248) = result;
  *(v0 + 3264) = result;
  *(v0 + 3280) = result;
  *(v0 + 3296) = result;
  *(v0 + 3312) = result;
  *(v0 + 3328) = result;
  *(v0 + 3344) = result;
  *(v0 + 3360) = result;
  *(v0 + 3376) = result;
  *(v0 + 3392) = result;
  *(v0 + 3408) = result;
  *(v0 + 3424) = result;
  *(v0 + 3440) = result;
  *(v0 + 3456) = result;
  *(v0 + 3472) = result;
  *(v0 + 3488) = result;
  *(v0 + 3504) = vdupq_n_s64(0x3FCF992720000000uLL);
  *(v0 + 3520) = xmmword_1BCE3CA20;
  *(v0 + 3536) = xmmword_1BCE3CA30;
  *(v0 + 3552) = xmmword_1BCE3CA40;
  *(v0 + 3568) = result;
  *(v0 + 3584) = result;
  *(v0 + 3600) = 0x4170000000000000;
  *(v0 + 3608) = 0x3FF0000000000000;
  *(v0 + 3616) = result;
  *(v0 + 3632) = result;
  *(v0 + 3648) = result;
  *(v0 + 3664) = 0x3FF0000000000000;
  *(v0 + 3680) = 0xC018000000000000;
  *(v0 + 3688) = 0;
  *(v0 + 3689) = *v10;
  *(v0 + 3692) = *&v10[3];
  *(v0 + 4656) = result;
  *(v0 + 4672) = result;
  *(v0 + 4688) = result;
  *(v0 + 4704) = result;
  *(v0 + 4720) = xmmword_1BCE3CB00;
  *(v0 + 4560) = result;
  *(v0 + 4576) = result;
  *(v0 + 4592) = result;
  *(v0 + 4608) = result;
  *(v0 + 4624) = result;
  *(v0 + 4640) = result;
  *(v0 + 4464) = result;
  *(v0 + 4480) = result;
  *(v0 + 4496) = result;
  *(v0 + 4512) = result;
  *(v0 + 4528) = result;
  *(v0 + 4544) = result;
  *(v0 + 4368) = result;
  *(v0 + 4384) = result;
  *(v0 + 4400) = result;
  *(v0 + 4416) = result;
  *(v0 + 4432) = result;
  *(v0 + 4448) = result;
  *(v0 + 4272) = result;
  *(v0 + 4288) = result;
  *(v0 + 4304) = result;
  *(v0 + 4320) = result;
  *(v0 + 4336) = result;
  *(v0 + 4352) = result;
  *(v0 + 4192) = result;
  *(v0 + 4208) = result;
  *(v0 + 4224) = result;
  *(v0 + 4240) = result;
  *(v0 + 4256) = result;
  *(v0 + 4112) = result;
  *(v0 + 4128) = result;
  *(v0 + 4144) = result;
  *(v0 + 4160) = result;
  *(v0 + 4176) = result;
  *(v0 + 3696) = xmmword_1BCE3CB30;
  *(v0 + 4064) = 0;
  *(v0 + 4072) = 1065353216;
  *(v0 + 4080) = result;
  *(v0 + 4096) = result;
  *(v0 + 3984) = xmmword_1BCE3CAD0;
  *(v0 + 4000) = xmmword_1BCE3CA00;
  *(v0 + 4040) = 0x3FF0000000000000;
  *(v0 + 4048) = result;
  *(v0 + 4016) = xmmword_1BCE47CF0;
  *(v0 + 4032) = 1062836634;
  *(v0 + 3920) = result;
  *(v0 + 3936) = result;
  *(v0 + 3952) = result;
  *(v0 + 3968) = xmmword_1BCE3C8C0;
  *(v0 + 3712) = 0x447A000044160000;
  *(v0 + 3856) = result;
  *(v0 + 3872) = result;
  *(v0 + 3888) = result;
  *(v0 + 3904) = result;
  *(v0 + 3720) = 1061997773;
  *(v0 + 3776) = xmmword_1BCE3CA80;
  *(v0 + 3824) = result;
  *(v0 + 3840) = result;
  *(v0 + 3792) = xmmword_1BCE3CA90;
  *(v0 + 3808) = xmmword_1BCE3CAA0;
  *(v0 + 3744) = result;
  *(v0 + 3760) = xmmword_1BCE3CA70;
  *(v0 + 3728) = xmmword_1BCE3CA60;
  *(v0 + 4736) = xmmword_1BCE3CB10;
  *(v0 + 4752) = xmmword_1BCE3CB20;
  *(v0 + 4768) = xmmword_1BCE3CB10;
  *(v0 + 4784) = result;
  *(v0 + 4800) = result;
  *(v0 + 4816) = 0x4170000000000000;
  *(v0 + 4824) = 0x3FF0000000000000;
  *(v0 + 4832) = result;
  *(v0 + 4848) = result;
  *(v0 + 4905) = *v11;
  *(v0 + 4864) = result;
  *(v0 + 4880) = 0x3FF0000000000000;
  *(v0 + 4896) = 0;
  *(v0 + 4904) = 0;
  *(v0 + 4908) = *&v11[3];
  *(v0 + 4912) = xmmword_1BCE3CB30;
  *(v0 + 4928) = 0x44C8000044160000;
  *(v0 + 4936) = 1061997773;
  *(v0 + 4944) = xmmword_1BCE3DA10;
  *(v0 + 4960) = xmmword_1BCE3DA20;
  *(v0 + 4976) = xmmword_1BCE3CB60;
  *(v0 + 4992) = xmmword_1BCE3CB70;
  *(v0 + 5008) = xmmword_1BCE3DA30;
  *(v0 + 5024) = xmmword_1BCE3DA40;
  *(v0 + 5040) = result;
  *(v0 + 5056) = result;
  *(v0 + 5072) = result;
  *(v0 + 5088) = result;
  *(v0 + 5104) = result;
  *(v0 + 5120) = result;
  *(v0 + 5136) = result;
  *(v0 + 5152) = result;
  *(v0 + 5168) = xmmword_1BCE3DA80;
  *(v0 + 5184) = xmmword_1BCE3CBE0;
  *(v0 + 5200) = xmmword_1BCE3CBF0;
  *(v0 + 5216) = xmmword_1BCE3CA00;
  *(v0 + 5232) = xmmword_1BCE3FD30;
  *(v0 + 5248) = 1063675494;
  *(v0 + 5256) = 0x3FF0000000000000;
  *(v0 + 5264) = result;
  *(v0 + 5280) = 0;
  *(v0 + 5288) = 0;
  *(v0 + 5296) = result;
  *(v0 + 5312) = result;
  *(v0 + 5328) = result;
  *(v0 + 5344) = result;
  *(v0 + 5360) = result;
  *(v0 + 5376) = result;
  *(v0 + 5392) = result;
  *(v0 + 5408) = result;
  *(v0 + 5424) = result;
  *(v0 + 5440) = result;
  *(v0 + 5456) = result;
  *(v0 + 5472) = result;
  *(v0 + 5488) = result;
  *(v0 + 5504) = result;
  *(v0 + 5520) = result;
  *(v0 + 5536) = result;
  *(v0 + 5552) = result;
  *(v0 + 5568) = result;
  *(v0 + 5584) = result;
  *(v0 + 5600) = result;
  *(v0 + 5616) = result;
  *(v0 + 5632) = result;
  *(v0 + 5648) = result;
  *(v0 + 5664) = result;
  *(v0 + 5680) = result;
  *(v0 + 5696) = result;
  *(v0 + 5712) = result;
  *(v0 + 5728) = result;
  *(v0 + 5744) = result;
  *(v0 + 5760) = result;
  *(v0 + 5776) = result;
  *(v0 + 5792) = result;
  *(v0 + 5808) = result;
  *(v0 + 5824) = result;
  *(v0 + 5840) = result;
  *(v0 + 5856) = result;
  *(v0 + 5872) = result;
  *(v0 + 5888) = result;
  *(v0 + 5904) = result;
  *(v0 + 5920) = result;
  *(v0 + 5936) = xmmword_1BCE3CC10;
  *(v0 + 5968) = xmmword_1BCE3CC30;
  *(v0 + 5952) = xmmword_1BCE3CC20;
  *(v0 + 5984) = xmmword_1BCE3CC20;
  *(v0 + 6000) = result;
  *(v0 + 6016) = result;
  *(v0 + 6032) = 0x4170000000000000;
  *(v0 + 6040) = 0x3FF0000000000000;
  *(v0 + 6048) = result;
  *(v0 + 6064) = result;
  *(v0 + 6080) = result;
  *(v0 + 6096) = 0x3FF0000000000000;
  *(v0 + 6112) = 0x4017FFFFFFFFFFFALL;
  *(v0 + 6120) = 0;
  *(v0 + 6121) = *v12;
  *(v0 + 6124) = *&v12[3];
  *(v0 + 6128) = xmmword_1BCE3CC40;
  *(v0 + 6160) = xmmword_1BCE3DA90;
  *(v0 + 6176) = xmmword_1BCE3DAA0;
  *(v0 + 6192) = xmmword_1BCE3DAB0;
  *(v0 + 6208) = xmmword_1BCE3CC80;
  *(v0 + 6224) = xmmword_1BCE3CC90;
  *(v0 + 6240) = xmmword_1BCE3CCA0;
  *(v0 + 6384) = xmmword_1BCE3DAF0;
  *(v0 + 6400) = xmmword_1BCE3DB00;
  *(v0 + 6416) = xmmword_1BCE3CCD0;
  *(v0 + 6432) = xmmword_1BCE3CCE0;
  *(v0 + 6480) = xmmword_1BCE3DED0;
  *(v0 + 7152) = xmmword_1BCE3CD10;
  *(v0 + 7184) = xmmword_1BCE3CD30;
  *(v0 + 7168) = xmmword_1BCE3CD20;
  *(v0 + 7200) = xmmword_1BCE3CD20;
  *(v0 + 7344) = xmmword_1BCE3CD40;
  *(v0 + 7360) = 0x28A0000044610000;
  *(v0 + 7376) = xmmword_1BCE3DB30;
  *(v0 + 7408) = xmmword_1BCE3DEE0;
  *(v0 + 7424) = xmmword_1BCE3C9D0;
  *(v0 + 7552) = result;
  *(v0 + 7632) = xmmword_1BCE3CD90;
  *(v0 + 7648) = xmmword_1BCE3CDA0;
  *(v0 + 7696) = xmmword_1BCE3DF00;
  *(v0 + 8368) = xmmword_1BCE3CDD0;
  *(v0 + 8400) = xmmword_1BCE3CDE0;
  *(v0 + 8560) = xmmword_1BCE3CDF0;
  *(v0 + 8624) = xmmword_1BCE3CE00;
  *(v0 + 9584) = xmmword_1BCE3CE20;
  *(v0 + 10800) = xmmword_1BCE3CE20;
  *(v0 + 9776) = xmmword_1BCE3CE40;
  *(v0 + 10992) = xmmword_1BCE3CE40;
  *(v0 + 9792) = 1151500288;
  *(v0 + 11008) = 1151500288;
  *(v0 + 9840) = xmmword_1BCE3CE50;
  *(v0 + 11056) = xmmword_1BCE3CE50;
  *(v0 + 9856) = xmmword_1BCE3CE60;
  *(v0 + 11072) = xmmword_1BCE3CE60;
  *(v0 + 9872) = xmmword_1BCE3CE70;
  *(v0 + 11088) = xmmword_1BCE3CE70;
  *(v0 + 9888) = xmmword_1BCE3CE80;
  *(v0 + 11104) = xmmword_1BCE3CE80;
  *(v0 + 11344) = xmmword_1BCE3DF20;
  *(v0 + 10816) = xmmword_1BCE3CE90;
  *(v0 + 12032) = xmmword_1BCE3CE90;
  *(v0 + 9616) = xmmword_1BCE3CE30;
  *(v0 + 12048) = xmmword_1BCE3CE30;
  *(v0 + 12208) = xmmword_1BCE3CEC0;
  *(v0 + 8576) = 0x41A0000044A8C000;
  *(v0 + 12224) = 0x41A0000044A8C000;
  *(v0 + 8592) = xmmword_1BCE3DB10;
  *(v0 + 9808) = xmmword_1BCE3DB10;
  *(v0 + 11024) = xmmword_1BCE3DB10;
  *(v0 + 12240) = xmmword_1BCE3DB10;
  *(v0 + 7392) = xmmword_1BCE3CD50;
  *(v0 + 8608) = xmmword_1BCE3CD50;
  *(v0 + 9824) = xmmword_1BCE3CD50;
  *(v0 + 11040) = xmmword_1BCE3CD50;
  *(v0 + 12256) = xmmword_1BCE3CD50;
  *(v0 + 12272) = xmmword_1BCE3CED0;
  *(v0 + 8912) = xmmword_1BCE3DF10;
  *(v0 + 10128) = xmmword_1BCE3DF10;
  *(v0 + 12560) = xmmword_1BCE3DF10;
  *(v0 + 10832) = xmmword_1BCE3CEA0;
  *(v0 + 13264) = xmmword_1BCE3CEA0;
  *(v0 + 13424) = xmmword_1BCE3CF00;
  *(v0 + 13440) = 0x2C31C71D44610000;
  *(v0 + 13456) = xmmword_1BCE3DF30;
  *(v0 + 13472) = xmmword_1BCE3CF10;
  *(v0 + 13488) = xmmword_1BCE3DB60;
  *(v0 + 13504) = xmmword_1BCE3CF30;
  *(v0 + 7440) = xmmword_1BCE3CD70;
  *(v0 + 13520) = xmmword_1BCE3CD70;
  *(v0 + 7456) = xmmword_1BCE3DEF0;
  *(v0 + 13536) = xmmword_1BCE3DEF0;
  *(v0 + 13712) = xmmword_1BCE3CF60;
  *(v0 + 13776) = xmmword_1BCE3DF40;
  *(v0 + 12016) = xmmword_1BCE3CEB0;
  *(v0 + 13232) = xmmword_1BCE3CEB0;
  *(v0 + 14448) = xmmword_1BCE3CEB0;
  *(v0 + 8384) = xmmword_1BCE3CBB0;
  *(v0 + 9600) = xmmword_1BCE3CBB0;
  *(v0 + 13248) = xmmword_1BCE3CBB0;
  *(v0 + 14464) = xmmword_1BCE3CBB0;
  *(v0 + 14480) = xmmword_1BCE3CF90;
  *(v0 + 14640) = xmmword_1BCE3CFA0;
  *(v0 + 6144) = 0x44480000443B8000;
  *(v0 + 6152) = 1060739482;
  *(v0 + 6256) = result;
  *(v0 + 6272) = result;
  *(v0 + 6288) = result;
  *(v0 + 6304) = result;
  *(v0 + 6320) = result;
  *(v0 + 6336) = result;
  *(v0 + 6352) = result;
  *(v0 + 6368) = result;
  *(v0 + 6448) = xmmword_1BCE3FD30;
  *(v0 + 6464) = 1063675494;
  *(v0 + 6472) = 0x3FEF5F62E0000000;
  *(v0 + 6496) = 0x3FE0000000000000;
  *(v0 + 6504) = 0;
  *(v0 + 6512) = result;
  *(v0 + 6528) = result;
  *(v0 + 6544) = result;
  *(v0 + 6560) = result;
  *(v0 + 6576) = result;
  *(v0 + 6592) = result;
  *(v0 + 6608) = result;
  *(v0 + 6624) = result;
  *(v0 + 6640) = result;
  *(v0 + 6656) = result;
  *(v0 + 6672) = result;
  *(v0 + 6688) = result;
  *(v0 + 6704) = result;
  *(v0 + 6720) = result;
  *(v0 + 6736) = result;
  *(v0 + 6752) = result;
  *(v0 + 6768) = result;
  *(v0 + 6784) = result;
  *(v0 + 6800) = result;
  *(v0 + 6816) = result;
  *(v0 + 6832) = result;
  *(v0 + 6848) = result;
  *(v0 + 6864) = result;
  *(v0 + 6880) = result;
  *(v0 + 6896) = result;
  *(v0 + 6912) = result;
  *(v0 + 6928) = result;
  *(v0 + 6944) = result;
  *(v0 + 6960) = result;
  *(v0 + 6976) = result;
  *(v0 + 6992) = result;
  *(v0 + 7008) = result;
  *(v0 + 7024) = result;
  *(v0 + 7040) = result;
  *(v0 + 7056) = result;
  *(v0 + 7072) = result;
  *(v0 + 7088) = result;
  *(v0 + 7104) = result;
  *(v0 + 7120) = result;
  *(v0 + 7136) = result;
  *(v0 + 7216) = result;
  *(v0 + 7232) = result;
  *(v0 + 7248) = 0x4170000000000000;
  *(v0 + 7256) = 0x3FF0000000000000;
  *(v0 + 7264) = result;
  *(v0 + 7280) = result;
  *(v0 + 7296) = result;
  *(v0 + 7312) = 0x3FF0000000000000;
  *(v0 + 7328) = 0x4028000000000000;
  *(v0 + 7336) = 0;
  *(v0 + 7337) = *v13;
  *(v0 + 7340) = *&v13[3];
  *(v0 + 7368) = 1059481190;
  *(v0 + 7472) = result;
  *(v0 + 7488) = result;
  *(v0 + 7504) = result;
  *(v0 + 7520) = result;
  *(v0 + 7536) = result;
  *(v0 + 14656) = 0x44480000443B8000;
  *(v0 + 14672) = xmmword_1BCE3DF50;
  *(v0 + 14688) = xmmword_1BCE3DF60;
  *(v0 + 14704) = xmmword_1BCE3DF70;
  *(v0 + 14720) = xmmword_1BCE3DF80;
  *(v0 + 14736) = xmmword_1BCE3DBA0;
  *(v0 + 14752) = xmmword_1BCE3DBB0;
  *(v0 + 14864) = xmmword_1BCE3D010;
  *(v0 + 14880) = xmmword_1BCE3DBE0;
  *(v0 + 14928) = xmmword_1BCE3D040;
  *(v0 + 14992) = xmmword_1BCE3DF90;
  *(v0 + 15664) = xmmword_1BCE3D070;
  *(v0 + 15680) = xmmword_1BCE3D080;
  *(v0 + 15696) = xmmword_1BCE3D090;
  *(v0 + 15712) = xmmword_1BCE3D0A0;
  *(v0 + 15856) = xmmword_1BCE3D0B0;
  *(v0 + 15872) = 0x44C8000044160000;
  *(v0 + 15888) = xmmword_1BCE3DFA0;
  *(v0 + 15904) = xmmword_1BCE3DFB0;
  *(v0 + 15920) = xmmword_1BCE3DFC0;
  *(v0 + 15936) = xmmword_1BCE3DFD0;
  *(v0 + 15952) = xmmword_1BCE3DC10;
  *(v0 + 15968) = xmmword_1BCE3DC20;
  *(v0 + 10032) = xmmword_1BCE3CCB0;
  *(v0 + 10064) = xmmword_1BCE3CCB0;
  *(v0 + 11248) = xmmword_1BCE3CCB0;
  *(v0 + 11280) = xmmword_1BCE3CCB0;
  *(v0 + 16080) = xmmword_1BCE3CCB0;
  *(v0 + 16096) = xmmword_1BCE3DC50;
  *(v0 + 16144) = xmmword_1BCE3CBF0;
  *(v0 + 7664) = xmmword_1BCE3FD30;
  *(v0 + 8880) = xmmword_1BCE3FD30;
  *(v0 + 10096) = xmmword_1BCE3FD30;
  *(v0 + 11312) = xmmword_1BCE3FD30;
  *(v0 + 12528) = xmmword_1BCE3FD30;
  *(v0 + 13744) = xmmword_1BCE3FD30;
  *(v0 + 14960) = xmmword_1BCE3FD30;
  *(v0 + 16176) = xmmword_1BCE3FD30;
  *(v0 + 7680) = 1063675494;
  *(v0 + 8896) = 1063675494;
  *(v0 + 10112) = 1063675494;
  *(v0 + 11328) = 1063675494;
  *(v0 + 12544) = 1063675494;
  *(v0 + 13760) = 1063675494;
  *(v0 + 14976) = 1063675494;
  *(v0 + 16192) = 1063675494;
  *(v0 + 16208) = xmmword_1BCE3DFE0;
  *(v0 + 16880) = xmmword_1BCE3D160;
  *(v0 + 16896) = xmmword_1BCE3D170;
  *(v0 + 16912) = xmmword_1BCE3D180;
  *(v0 + 16928) = xmmword_1BCE3D190;
  *(v0 + 17072) = xmmword_1BCE3CB30;
  *(v0 + 17088) = 0x4483CC9D445C8321;
  *(v0 + 17104) = xmmword_1BCE3D1A0;
  *(v0 + 17120) = xmmword_1BCE3D1B0;
  *(v0 + 17136) = xmmword_1BCE3D1C0;
  *(v0 + 17152) = xmmword_1BCE3D1D0;
  *(v0 + 17168) = xmmword_1BCE3D1E0;
  *(v0 + 17184) = xmmword_1BCE3D1F0;
  *(v0 + 17312) = xmmword_1BCE3DC70;
  *(v0 + 7616) = xmmword_1BCE3C8C0;
  *(v0 + 8832) = xmmword_1BCE3C8C0;
  *(v0 + 10048) = xmmword_1BCE3C8C0;
  *(v0 + 11264) = xmmword_1BCE3C8C0;
  *(v0 + 12480) = xmmword_1BCE3C8C0;
  *(v0 + 13696) = xmmword_1BCE3C8C0;
  *(v0 + 14912) = xmmword_1BCE3C8C0;
  *(v0 + 16128) = xmmword_1BCE3C8C0;
  *(v0 + 17344) = xmmword_1BCE3C8C0;
  *(v0 + 17360) = xmmword_1BCE3CAD0;
  *(v0 + 17392) = xmmword_1BCE47CF0;
  *(v0 + 17408) = 1062836634;
  *(v0 + 17424) = xmmword_1BCE3DFF0;
  *(v0 + 18096) = xmmword_1BCE3D230;
  *(v0 + 18112) = xmmword_1BCE3D240;
  *(v0 + 18128) = xmmword_1BCE3D250;
  *(v0 + 18144) = xmmword_1BCE3D260;
  *(v0 + 18288) = xmmword_1BCE3DC90;
  *(v0 + 18304) = 0x4396000042C80000;
  *(v0 + 18320) = xmmword_1BCE3D270;
  *(v0 + 18352) = xmmword_1BCE3E000;
  *(v0 + 18368) = xmmword_1BCE3D290;
  *(v0 + 18384) = xmmword_1BCE3C9A0;
  *(v0 + 18512) = xmmword_1BCE3D2B0;
  *(v0 + 18528) = xmmword_1BCE3D2C0;
  *(v0 + 18544) = xmmword_1BCE3DDD0;
  *(v0 + 8416) = xmmword_1BCE3CBC0;
  *(v0 + 9632) = xmmword_1BCE3CBC0;
  *(v0 + 10848) = xmmword_1BCE3CBC0;
  *(v0 + 12064) = xmmword_1BCE3CBC0;
  *(v0 + 13280) = xmmword_1BCE3CBC0;
  *(v0 + 14496) = xmmword_1BCE3CBC0;
  *(v0 + 18560) = xmmword_1BCE3CBC0;
  *(v0 + 18576) = xmmword_1BCE3C9F0;
  *(v0 + 13728) = xmmword_1BCE3CA00;
  *(v0 + 14944) = xmmword_1BCE3CA00;
  *(v0 + 16160) = xmmword_1BCE3CA00;
  *(v0 + 17376) = xmmword_1BCE3CA00;
  *(v0 + 18592) = xmmword_1BCE3CA00;
  *(v0 + 18608) = xmmword_1BCE42C40;
  *(v0 + 18624) = v6;
  *(v0 + 19312) = xmmword_1BCE3D2E0;
  *(v0 + 19344) = xmmword_1BCE3D2F0;
  __asm { FMOV            V22.2D, #0.25 }

  *(v0 + 20528) = _Q22;
  *(v0 + 20560) = xmmword_1BCE3D300;
  *(v0 + 19504) = xmmword_1BCE3C830;
  *(v0 + 20720) = xmmword_1BCE3C830;
  *(v0 + 19520) = 0x432A000043480000;
  *(v0 + 20736) = 0x432A000043480000;
  *(v0 + 19536) = xmmword_1BCE3C840;
  *(v0 + 20752) = xmmword_1BCE3C840;
  *(v0 + 19552) = xmmword_1BCE3C850;
  *(v0 + 20768) = xmmword_1BCE3C850;
  *(v0 + 19568) = xmmword_1BCE3C860;
  *(v0 + 20784) = xmmword_1BCE3C860;
  *(v0 + 19584) = xmmword_1BCE3C870;
  *(v0 + 20800) = xmmword_1BCE3C870;
  *(v0 + 19600) = xmmword_1BCE3C880;
  *(v0 + 20816) = xmmword_1BCE3C880;
  *(v0 + 19616) = xmmword_1BCE3C890;
  *(v0 + 20832) = xmmword_1BCE3C890;
  *(v0 + 8848) = xmmword_1BCE3C8F0;
  *(v0 + 19792) = xmmword_1BCE3C8F0;
  *(v0 + 21008) = xmmword_1BCE3C8F0;
  *(v0 + 19824) = xmmword_1BCE47CE0;
  *(v0 + 19840) = 0x3F4CCCCD3F800000;
  *(v0 + 21040) = xmmword_1BCE47CE0;
  *(v0 + 21056) = 0x3F4CCCCD3F800000;
  *(v0 + 21744) = vdupq_n_s64(0x3FCFEB6B80000000uLL);
  *(v0 + 19328) = xmmword_1BCE3C910;
  *(v0 + 19360) = xmmword_1BCE3C910;
  *(v0 + 20544) = xmmword_1BCE3C910;
  *(v0 + 20576) = xmmword_1BCE3C910;
  *(v0 + 21760) = xmmword_1BCE3C910;
  *(v0 + 21776) = xmmword_1BCE3D310;
  *(v0 + 21792) = xmmword_1BCE3D320;
  *(v0 + 8464) = 0x4170000000000000;
  *(v0 + 9680) = 0x4170000000000000;
  *(v0 + 10896) = 0x4170000000000000;
  *(v0 + 12112) = 0x4170000000000000;
  *(v0 + 13328) = 0x4170000000000000;
  *(v0 + 14544) = 0x4170000000000000;
  *(v0 + 15760) = 0x4170000000000000;
  *(v0 + 16976) = 0x4170000000000000;
  *(v0 + 18192) = 0x4170000000000000;
  *(v0 + 19408) = 0x4170000000000000;
  *(v0 + 20624) = 0x4170000000000000;
  *(v0 + 21840) = 0x4170000000000000;
  *(v0 + 7568) = result;
  *(v0 + 7584) = result;
  *(v0 + 7600) = result;
  *(v0 + 7728) = result;
  *(v0 + 7744) = result;
  *(v0 + 7760) = result;
  *(v0 + 7776) = result;
  *(v0 + 7792) = result;
  *(v0 + 7808) = result;
  *(v0 + 7824) = result;
  *(v0 + 7840) = result;
  *(v0 + 7856) = result;
  *(v0 + 7872) = result;
  *(v0 + 7888) = result;
  *(v0 + 7904) = result;
  *(v0 + 7920) = result;
  *(v0 + 7936) = result;
  *(v0 + 7952) = result;
  *(v0 + 7968) = result;
  *(v0 + 7984) = result;
  *(v0 + 8000) = result;
  *(v0 + 8016) = result;
  *(v0 + 8032) = result;
  *(v0 + 8048) = result;
  *(v0 + 8064) = result;
  *(v0 + 8080) = result;
  *(v0 + 8096) = result;
  *(v0 + 8112) = result;
  *(v0 + 8128) = result;
  *(v0 + 8144) = result;
  *(v0 + 8160) = result;
  *(v0 + 8176) = result;
  *(v0 + 0x2000) = result;
  *(v0 + 8208) = result;
  *(v0 + 8224) = result;
  *(v0 + 8240) = result;
  *(v0 + 8256) = result;
  *(v0 + 8272) = result;
  *(v0 + 8288) = result;
  *(v0 + 8304) = result;
  *(v0 + 18048) = result;
  *(v0 + 18064) = result;
  *(v0 + 18080) = result;
  *(v0 + 17952) = result;
  *(v0 + 17968) = result;
  *(v0 + 17984) = result;
  *(v0 + 18000) = result;
  *(v0 + 18016) = result;
  *(v0 + 18032) = result;
  *(v0 + 17856) = result;
  *(v0 + 17872) = result;
  *(v0 + 17888) = result;
  *(v0 + 17904) = result;
  *(v0 + 17920) = result;
  *(v0 + 17936) = result;
  *(v0 + 17760) = result;
  *(v0 + 17776) = result;
  *(v0 + 17792) = result;
  *(v0 + 17808) = result;
  *(v0 + 17824) = result;
  *(v0 + 17840) = result;
  *(v0 + 17664) = result;
  *(v0 + 17680) = result;
  *(v0 + 17696) = result;
  *(v0 + 17712) = result;
  *(v0 + 17728) = result;
  *(v0 + 17744) = result;
  *(v0 + 17568) = result;
  *(v0 + 17584) = result;
  *(v0 + 17600) = result;
  *(v0 + 17616) = result;
  *(v0 + 17632) = result;
  *(v0 + 17648) = result;
  *(v0 + 8320) = result;
  *(v0 + 17488) = result;
  *(v0 + 17504) = result;
  *(v0 + 17520) = result;
  *(v0 + 17536) = result;
  *(v0 + 17552) = result;
  *(v0 + 8336) = result;
  *(v0 + 8352) = result;
  *(v0 + 17440) = 0;
  *(v0 + 17448) = 1065353216;
  *(v0 + 17456) = result;
  *(v0 + 17472) = result;
  *(v0 + 8432) = result;
  *(v0 + 8448) = result;
  *(v0 + 8472) = 0x3FF0000000000000;
  *(v0 + 8480) = result;
  *(v0 + 17416) = 0x3FEED417A0000000;
  *(v0 + 8496) = result;
  *(v0 + 8512) = result;
  *(v0 + 17264) = result;
  *(v0 + 17280) = result;
  *(v0 + 17296) = result;
  *(v0 + 17328) = result;
  *(v0 + 8528) = 0x3FF0000000000000;
  *(v0 + 8544) = 0x4032000000000000;
  *(v0 + 17216) = result;
  *(v0 + 17232) = result;
  *(v0 + 17248) = result;
  *(v0 + 8552) = 0;
  *(v0 + 8553) = *v14;
  *(v0 + 17200) = result;
  *(v0 + 8556) = *&v14[3];
  *(v0 + 8584) = 1061158912;
  *(v0 + 8640) = result;
  *(v0 + 8656) = result;
  *(v0 + 17065) = *v21;
  *(v0 + 17096) = 1050388079;
  *(v0 + 17040) = 0x3FF0000000000000;
  *(v0 + 17056) = 0xC018000000000000;
  *(v0 + 17064) = 1;
  *(v0 + 17068) = *&v21[3];
  *(v0 + 8672) = result;
  *(v0 + 16960) = result;
  *(v0 + 16984) = 0x3FF0000000000000;
  *(v0 + 16992) = result;
  *(v0 + 17008) = result;
  *(v0 + 17024) = result;
  *(v0 + 8688) = result;
  *(v0 + 8704) = result;
  *(v0 + 8720) = result;
  *(v0 + 8736) = result;
  *(v0 + 16864) = result;
  *(v0 + 16944) = result;
  *(v0 + 16768) = result;
  *(v0 + 16784) = result;
  *(v0 + 16800) = result;
  *(v0 + 16816) = result;
  *(v0 + 16832) = result;
  *(v0 + 16848) = result;
  *(v0 + 16672) = result;
  *(v0 + 16688) = result;
  *(v0 + 16704) = result;
  *(v0 + 16720) = result;
  *(v0 + 16736) = result;
  *(v0 + 16752) = result;
  *(v0 + 16576) = result;
  *(v0 + 16592) = result;
  *(v0 + 16608) = result;
  *(v0 + 16624) = result;
  *(v0 + 16640) = result;
  *(v0 + 16656) = result;
  *(v0 + 16480) = result;
  *(v0 + 16496) = result;
  *(v0 + 16512) = result;
  *(v0 + 16528) = result;
  *(v0 + 16544) = result;
  *(v0 + 16560) = result;
  *(v0 + 0x4000) = result;
  *(v0 + 16400) = result;
  *(v0 + 16416) = result;
  *(v0 + 16432) = result;
  *(v0 + 16448) = result;
  *(v0 + 16464) = result;
  *(v0 + 16288) = result;
  *(v0 + 16304) = result;
  *(v0 + 16320) = result;
  *(v0 + 16336) = result;
  *(v0 + 16352) = result;
  *(v0 + 16368) = result;
  *(v0 + 8752) = result;
  *(v0 + 16224) = 0;
  *(v0 + 16232) = 0;
  *(v0 + 16240) = result;
  *(v0 + 16256) = result;
  *(v0 + 16272) = result;
  *(v0 + 8768) = result;
  *(v0 + 8784) = result;
  *(v0 + 8800) = result;
  *(v0 + 8816) = result;
  *(v0 + 16200) = 0x3FEDCF06E0000000;
  *(v0 + 8864) = result;
  *(v0 + 8904) = 0x3FE64FE980000000;
  *(v0 + 8928) = 0x3FF0000000000000;
  *(v0 + 16064) = result;
  *(v0 + 16112) = result;
  *(v0 + 8936) = 0;
  *(v0 + 15984) = result;
  *(v0 + 16000) = result;
  *(v0 + 16016) = result;
  *(v0 + 16032) = result;
  *(v0 + 16048) = result;
  *(v0 + 8944) = result;
  *(v0 + 8960) = result;
  *(v0 + 8976) = result;
  *(v0 + 8992) = result;
  *(v0 + 9008) = result;
  *(v0 + 9024) = result;
  *(v0 + 9040) = result;
  *(v0 + 15849) = *v20;
  *(v0 + 15880) = 1061997773;
  *(v0 + 15808) = result;
  *(v0 + 15824) = 0x3FF0000000000000;
  *(v0 + 15840) = 0;
  *(v0 + 15848) = 1;
  *(v0 + 15852) = *&v20[3];
  *(v0 + 9056) = result;
  *(v0 + 15728) = result;
  *(v0 + 15744) = result;
  *(v0 + 15768) = 0x3FF0000000000000;
  *(v0 + 15776) = result;
  *(v0 + 15792) = result;
  *(v0 + 9072) = result;
  *(v0 + 9088) = result;
  *(v0 + 9104) = result;
  *(v0 + 9120) = result;
  *(v0 + 15632) = result;
  *(v0 + 15648) = result;
  *(v0 + 15536) = result;
  *(v0 + 15552) = result;
  *(v0 + 15568) = result;
  *(v0 + 15584) = result;
  *(v0 + 15600) = result;
  *(v0 + 15616) = result;
  *(v0 + 15440) = result;
  *(v0 + 15456) = result;
  *(v0 + 15472) = result;
  *(v0 + 15488) = result;
  *(v0 + 15504) = result;
  *(v0 + 15520) = result;
  *(v0 + 15344) = result;
  *(v0 + 15360) = result;
  *(v0 + 15376) = result;
  *(v0 + 15392) = result;
  *(v0 + 15408) = result;
  *(v0 + 15424) = result;
  *(v0 + 15248) = result;
  *(v0 + 15264) = result;
  *(v0 + 15280) = result;
  *(v0 + 15296) = result;
  *(v0 + 15312) = result;
  *(v0 + 15328) = result;
  *(v0 + 15152) = result;
  *(v0 + 15168) = result;
  *(v0 + 15184) = result;
  *(v0 + 15200) = result;
  *(v0 + 15216) = result;
  *(v0 + 15232) = result;
  *(v0 + 15056) = result;
  *(v0 + 15072) = result;
  *(v0 + 15088) = result;
  *(v0 + 15104) = result;
  *(v0 + 15120) = result;
  *(v0 + 15136) = result;
  *(v0 + 9136) = result;
  *(v0 + 9152) = result;
  *(v0 + 15008) = 0x3FE0000000000000;
  *(v0 + 15016) = 0;
  *(v0 + 15024) = result;
  *(v0 + 15040) = result;
  *(v0 + 9168) = result;
  *(v0 + 9184) = result;
  *(v0 + 9200) = result;
  *(v0 + 9216) = result;
  *(v0 + 14984) = 0x3FED305D00000000;
  *(v0 + 9232) = result;
  *(v0 + 9248) = result;
  *(v0 + 14816) = result;
  *(v0 + 14832) = result;
  *(v0 + 14848) = result;
  *(v0 + 14896) = result;
  *(v0 + 9264) = result;
  *(v0 + 9280) = result;
  *(v0 + 9296) = result;
  *(v0 + 14768) = result;
  *(v0 + 14784) = result;
  *(v0 + 14800) = result;
  *(v0 + 9312) = result;
  *(v0 + 9328) = result;
  *(v0 + 9344) = result;
  *(v0 + 9360) = result;
  *(v0 + 14560) = result;
  *(v0 + 14633) = *v19;
  *(v0 + 14636) = *&v19[3];
  *(v0 + 14664) = 1061158912;
  *(v0 + 14576) = result;
  *(v0 + 14592) = result;
  *(v0 + 14608) = 0x3FF0000000000000;
  *(v0 + 14624) = 0x4018000000000010;
  *(v0 + 14632) = 1;
  *(v0 + 9376) = result;
  *(v0 + 9392) = result;
  *(v0 + 9408) = result;
  *(v0 + 14512) = result;
  *(v0 + 14528) = result;
  *(v0 + 14552) = 0x3FF0000000000000;
  *(v0 + 9424) = result;
  *(v0 + 9440) = result;
  *(v0 + 14384) = result;
  *(v0 + 14400) = result;
  *(v0 + 14416) = result;
  *(v0 + 14432) = result;
  *(v0 + 14288) = result;
  *(v0 + 14304) = result;
  *(v0 + 14320) = result;
  *(v0 + 14336) = result;
  *(v0 + 14352) = result;
  *(v0 + 14368) = result;
  *(v0 + 14192) = result;
  *(v0 + 14208) = result;
  *(v0 + 14224) = result;
  *(v0 + 14240) = result;
  *(v0 + 14256) = result;
  *(v0 + 14272) = result;
  *(v0 + 14096) = result;
  *(v0 + 14112) = result;
  *(v0 + 14128) = result;
  *(v0 + 14144) = result;
  *(v0 + 14160) = result;
  *(v0 + 14176) = result;
  *(v0 + 14000) = result;
  *(v0 + 14016) = result;
  *(v0 + 14032) = result;
  *(v0 + 14048) = result;
  *(v0 + 14064) = result;
  *(v0 + 14080) = result;
  *(v0 + 13904) = result;
  *(v0 + 13920) = result;
  *(v0 + 13936) = result;
  *(v0 + 13952) = result;
  *(v0 + 13968) = result;
  *(v0 + 13984) = result;
  *(v0 + 9456) = result;
  *(v0 + 13824) = result;
  *(v0 + 13840) = result;
  *(v0 + 13856) = result;
  *(v0 + 13872) = result;
  *(v0 + 13888) = result;
  *(v0 + 9472) = result;
  *(v0 + 13768) = 0x3FEC91B340000000;
  *(v0 + 13792) = 0x3FF0000000000000;
  *(v0 + 13800) = 0;
  *(v0 + 13808) = result;
  *(v0 + 9488) = result;
  *(v0 + 9504) = result;
  *(v0 + 9520) = result;
  *(v0 + 9536) = result;
  *(v0 + 13664) = result;
  *(v0 + 13680) = result;
  *(v0 + 13568) = result;
  *(v0 + 13584) = result;
  *(v0 + 13600) = result;
  *(v0 + 13616) = result;
  *(v0 + 13632) = result;
  *(v0 + 13648) = result;
  *(v0 + 9552) = result;
  *(v0 + 9568) = result;
  *(v0 + 9648) = result;
  *(v0 + 9664) = result;
  *(v0 + 9688) = 0x3FF0000000000000;
  *(v0 + 13552) = result;
  *(v0 + 9696) = result;
  *(v0 + 9712) = result;
  *(v0 + 9728) = result;
  *(v0 + 9744) = 0x3FF0000000000000;
  *(v0 + 9760) = 0x403E000000000000;
  *(v0 + 13417) = *v18;
  *(v0 + 13448) = 1060320051;
  *(v0 + 13408) = 0x4028000000000000;
  *(v0 + 13416) = 1;
  *(v0 + 13420) = *&v18[3];
  *(v0 + 9769) = *v15;
  *(v0 + 13344) = result;
  *(v0 + 13360) = result;
  *(v0 + 13376) = result;
  *(v0 + 13392) = 0x3FF0000000000000;
  *(v0 + 9768) = 0;
  *(v0 + 9772) = *&v15[3];
  *(v0 + 13296) = result;
  *(v0 + 13312) = result;
  *(v0 + 13336) = 0x3FF0000000000000;
  *(v0 + 9800) = 1061997773;
  *(v0 + 9904) = result;
  *(v0 + 13168) = result;
  *(v0 + 13184) = result;
  *(v0 + 13200) = result;
  *(v0 + 13216) = result;
  *(v0 + 13072) = result;
  *(v0 + 13088) = result;
  *(v0 + 13104) = result;
  *(v0 + 13120) = result;
  *(v0 + 13136) = result;
  *(v0 + 13152) = result;
  *(v0 + 12976) = result;
  *(v0 + 12992) = result;
  *(v0 + 13008) = result;
  *(v0 + 13024) = result;
  *(v0 + 13040) = result;
  *(v0 + 13056) = result;
  *(v0 + 12880) = result;
  *(v0 + 12896) = result;
  *(v0 + 12912) = result;
  *(v0 + 12928) = result;
  *(v0 + 12944) = result;
  *(v0 + 12960) = result;
  *(v0 + 12784) = result;
  *(v0 + 12800) = result;
  *(v0 + 12816) = result;
  *(v0 + 12832) = result;
  *(v0 + 12848) = result;
  *(v0 + 12864) = result;
  *(v0 + 12688) = result;
  *(v0 + 12704) = result;
  *(v0 + 12720) = result;
  *(v0 + 12736) = result;
  *(v0 + 12752) = result;
  *(v0 + 12768) = result;
  *(v0 + 12592) = result;
  *(v0 + 12608) = result;
  *(v0 + 12624) = result;
  *(v0 + 12640) = result;
  *(v0 + 12656) = result;
  *(v0 + 12672) = result;
  *(v0 + 9920) = result;
  *(v0 + 9936) = result;
  *(v0 + 9952) = result;
  *(v0 + 12552) = 0x3FE64FE980000000;
  *(v0 + 12576) = 0x3FF0000000000000;
  *(v0 + 12584) = 0;
  *(v0 + 9968) = result;
  *(v0 + 12432) = result;
  *(v0 + 12448) = result;
  *(v0 + 12464) = result;
  *(v0 + 12496) = result;
  *(v0 + 12512) = result;
  *(v0 + 12336) = result;
  *(v0 + 12352) = result;
  *(v0 + 12368) = result;
  *(v0 + 12384) = result;
  *(v0 + 12400) = result;
  *(v0 + 12416) = result;
  *(v0 + 9984) = result;
  *(v0 + 10000) = result;
  *(v0 + 10016) = result;
  *(v0 + 12288) = result;
  *(v0 + 12304) = result;
  *(v0 + 12320) = result;
  *(v0 + 10080) = result;
  *(v0 + 12201) = *v17;
  *(v0 + 12232) = 1061158912;
  *(v0 + 10120) = 0x3FE64FE980000000;
  *(v0 + 12176) = 0x3FF0000000000000;
  *(v0 + 12192) = 0x4032000000000000;
  *(v0 + 12200) = 1;
  *(v0 + 12204) = *&v17[3];
  *(v0 + 10144) = 0x3FF0000000000000;
  *(v0 + 12096) = result;
  *(v0 + 12120) = 0x3FF0000000000000;
  *(v0 + 12128) = result;
  *(v0 + 12144) = result;
  *(v0 + 12160) = result;
  *(v0 + 10152) = 0;
  *(v0 + 10160) = result;
  *(v0 + 10176) = result;
  *(v0 + 10192) = result;
  *(v0 + 12000) = result;
  *(v0 + 12080) = result;
  *(v0 + 11904) = result;
  *(v0 + 11920) = result;
  *(v0 + 11936) = result;
  *(v0 + 11952) = result;
  *(v0 + 11968) = result;
  *(v0 + 11984) = result;
  *(v0 + 11808) = result;
  *(v0 + 11824) = result;
  *(v0 + 11840) = result;
  *(v0 + 11856) = result;
  *(v0 + 11872) = result;
  *(v0 + 11888) = result;
  *(v0 + 11712) = result;
  *(v0 + 11728) = result;
  *(v0 + 11744) = result;
  *(v0 + 11760) = result;
  *(v0 + 11776) = result;
  *(v0 + 11792) = result;
  *(v0 + 11616) = result;
  *(v0 + 11632) = result;
  *(v0 + 11648) = result;
  *(v0 + 11664) = result;
  *(v0 + 11680) = result;
  *(v0 + 11696) = result;
  *(v0 + 11520) = result;
  *(v0 + 11536) = result;
  *(v0 + 11552) = result;
  *(v0 + 11568) = result;
  *(v0 + 11584) = result;
  *(v0 + 11600) = result;
  *(v0 + 11424) = result;
  *(v0 + 11440) = result;
  *(v0 + 11456) = result;
  *(v0 + 11472) = result;
  *(v0 + 11488) = result;
  *(v0 + 11504) = result;
  *(v0 + 10208) = result;
  *(v0 + 11360) = 0x3FF0000000000000;
  *(v0 + 11368) = 0;
  *(v0 + 11376) = result;
  *(v0 + 11392) = result;
  *(v0 + 11408) = result;
  *(v0 + 10224) = result;
  *(v0 + 10240) = result;
  *(v0 + 10256) = result;
  *(v0 + 10272) = result;
  *(v0 + 11296) = result;
  *(v0 + 11336) = 0x3FE64FE980000000;
  *(v0 + 10288) = result;
  *(v0 + 11168) = result;
  *(v0 + 11184) = result;
  *(v0 + 11200) = result;
  *(v0 + 11216) = result;
  *(v0 + 11232) = result;
  *(v0 + 10304) = result;
  *(v0 + 10320) = result;
  *(v0 + 10336) = result;
  *(v0 + 11120) = result;
  *(v0 + 11136) = result;
  *(v0 + 11152) = result;
  *(v0 + 10352) = result;
  *(v0 + 10368) = result;
  *(v0 + 10384) = result;
  *(v0 + 10400) = result;
  *(v0 + 10416) = result;
  *(v0 + 10985) = *v16;
  *(v0 + 10988) = *&v16[3];
  *(v0 + 11016) = 1061997773;
  *(v0 + 10912) = result;
  *(v0 + 10928) = result;
  *(v0 + 10944) = result;
  *(v0 + 10960) = 0x3FF0000000000000;
  *(v0 + 10976) = 0x403E000000000000;
  *(v0 + 10984) = 1;
  *(v0 + 10432) = result;
  *(v0 + 10448) = result;
  *(v0 + 10464) = result;
  *(v0 + 10864) = result;
  *(v0 + 10880) = result;
  *(v0 + 10904) = 0x3FF0000000000000;
  *(v0 + 10480) = result;
  *(v0 + 10496) = result;
  *(v0 + 10736) = result;
  *(v0 + 10752) = result;
  *(v0 + 10768) = result;
  *(v0 + 10784) = result;
  *(v0 + 10640) = result;
  *(v0 + 10656) = result;
  *(v0 + 10672) = result;
  *(v0 + 10688) = result;
  *(v0 + 10704) = result;
  *(v0 + 10720) = result;
  *(v0 + 10544) = result;
  *(v0 + 10560) = result;
  *(v0 + 10576) = result;
  *(v0 + 10592) = result;
  *(v0 + 10608) = result;
  *(v0 + 10624) = result;
  *(v0 + 10512) = result;
  *(v0 + 10528) = result;
  *(v0 + 18160) = result;
  *(v0 + 18176) = result;
  *(v0 + 18208) = result;
  *(v0 + 18224) = result;
  *(v0 + 18240) = result;
  *(v0 + 18336) = result;
  *(v0 + 18400) = result;
  *(v0 + 18416) = result;
  *(v0 + 18432) = result;
  *(v0 + 18448) = result;
  *(v0 + 18464) = result;
  *(v0 + 18480) = result;
  *(v0 + 18496) = result;
  *(v0 + 18640) = result;
  *(v0 + 18672) = result;
  *(v0 + 18688) = result;
  *(v0 + 18704) = result;
  *(v0 + 18720) = result;
  *(v0 + 18736) = result;
  *(v0 + 18752) = result;
  *(v0 + 18768) = result;
  *(v0 + 18784) = result;
  *(v0 + 18800) = result;
  *(v0 + 18816) = result;
  *(v0 + 18832) = result;
  *(v0 + 18848) = result;
  *(v0 + 18864) = result;
  *(v0 + 18880) = result;
  *(v0 + 18896) = result;
  *(v0 + 18912) = result;
  *(v0 + 18928) = result;
  *(v0 + 18944) = result;
  *(v0 + 18960) = result;
  *(v0 + 18976) = result;
  *(v0 + 18992) = result;
  *(v0 + 19008) = result;
  *(v0 + 19024) = result;
  *(v0 + 19040) = result;
  *(v0 + 19056) = result;
  *(v0 + 19072) = result;
  *(v0 + 19088) = result;
  *(v0 + 19104) = result;
  *(v0 + 19120) = result;
  *(v0 + 19136) = result;
  *(v0 + 19152) = result;
  *(v0 + 19168) = result;
  *(v0 + 19184) = result;
  *(v0 + 19200) = result;
  *(v0 + 19216) = result;
  *(v0 + 19232) = result;
  *(v0 + 19248) = result;
  *(v0 + 19264) = result;
  *(v0 + 19280) = result;
  *(v0 + 19296) = result;
  *(v0 + 19376) = result;
  *(v0 + 19392) = result;
  *(v0 + 19424) = result;
  *(v0 + 19440) = result;
  *(v0 + 19456) = result;
  *(v0 + 19632) = result;
  *(v0 + 19648) = result;
  *(v0 + 19664) = result;
  *(v0 + 19680) = result;
  *(v0 + 19696) = result;
  *(v0 + 19712) = result;
  *(v0 + 19728) = result;
  *(v0 + 19744) = result;
  *(v0 + 19760) = result;
  *(v0 + 19776) = result;
  *(v0 + 19808) = result;
  *(v0 + 19856) = result;
  *(v0 + 19888) = result;
  *(v0 + 19904) = result;
  *(v0 + 19920) = result;
  *(v0 + 19936) = result;
  *(v0 + 19952) = result;
  *(v0 + 19968) = result;
  *(v0 + 19984) = result;
  *(v0 + 20000) = result;
  *(v0 + 20016) = result;
  *(v0 + 20032) = result;
  *(v0 + 20048) = result;
  *(v0 + 20064) = result;
  *(v0 + 20080) = result;
  *(v0 + 20096) = result;
  *(v0 + 20112) = result;
  *(v0 + 20128) = result;
  *(v0 + 20144) = result;
  *(v0 + 20160) = result;
  *(v0 + 20176) = result;
  *(v0 + 20192) = result;
  *(v0 + 20208) = result;
  *(v0 + 20224) = result;
  *(v0 + 20240) = result;
  *(v0 + 20256) = result;
  *(v0 + 20272) = result;
  *(v0 + 20288) = result;
  *(v0 + 20304) = result;
  *(v0 + 20320) = result;
  *(v0 + 20336) = result;
  *(v0 + 20352) = result;
  *(v0 + 20368) = result;
  *(v0 + 20384) = result;
  *(v0 + 20400) = result;
  *(v0 + 20416) = result;
  *(v0 + 20432) = result;
  *(v0 + 20448) = result;
  *(v0 + 20464) = result;
  *(v0 + 20480) = result;
  *(v0 + 20496) = result;
  *(v0 + 20512) = result;
  *(v0 + 20592) = result;
  *(v0 + 20608) = result;
  *(v0 + 20640) = result;
  *(v0 + 20656) = result;
  *(v0 + 20672) = result;
  *(v0 + 20848) = result;
  *(v0 + 20864) = result;
  *(v0 + 20880) = result;
  *(v0 + 20896) = result;
  *(v0 + 20912) = result;
  *(v0 + 20928) = result;
  *(v0 + 20944) = result;
  *(v0 + 20960) = result;
  *(v0 + 20976) = result;
  *(v0 + 20992) = result;
  *(v0 + 21024) = result;
  *(v0 + 21072) = result;
  *(v0 + 21104) = result;
  *(v0 + 21120) = result;
  *(v0 + 21136) = result;
  *(v0 + 21152) = result;
  *(v0 + 21168) = result;
  *(v0 + 21184) = result;
  *(v0 + 21200) = result;
  *(v0 + 21216) = result;
  *(v0 + 21232) = result;
  *(v0 + 21248) = result;
  *(v0 + 21264) = result;
  *(v0 + 21280) = result;
  *(v0 + 21296) = result;
  *(v0 + 21312) = result;
  *(v0 + 21328) = result;
  *(v0 + 21344) = result;
  *(v0 + 21360) = result;
  *(v0 + 21376) = result;
  *(v0 + 21392) = result;
  *(v0 + 21408) = result;
  *(v0 + 21424) = result;
  *(v0 + 21440) = result;
  *(v0 + 21456) = result;
  *(v0 + 21472) = result;
  *(v0 + 21488) = result;
  *(v0 + 21504) = result;
  *(v0 + 21520) = result;
  *(v0 + 21536) = result;
  *(v0 + 21552) = result;
  *(v0 + 21568) = result;
  *(v0 + 21584) = result;
  *(v0 + 21600) = result;
  *(v0 + 21616) = result;
  *(v0 + 21632) = result;
  *(v0 + 21648) = result;
  *(v0 + 21664) = result;
  *(v0 + 21680) = result;
  *(v0 + 21696) = result;
  *(v0 + 21712) = result;
  *(v0 + 21728) = result;
  *(v0 + 21808) = result;
  *(v0 + 21824) = result;
  *(v0 + 21856) = result;
  *(v0 + 21872) = result;
  *(v0 + 21888) = result;
  *(v0 + 7688) = 0x3FEEBEC600000000;
  *(v0 + 7712) = 0x3FF0000000000000;
  *(v0 + 7720) = 0;
  *(v0 + 18200) = 0x3FF0000000000000;
  *(v0 + 18256) = 0x3FF0000000000000;
  *(v0 + 18272) = 0xC028000000000000;
  *(v0 + 18280) = 1;
  *(v0 + 18281) = *v22;
  *(v0 + 18284) = *&v22[3];
  *(v0 + 18312) = 1036831948;
  *(v0 + 18632) = 0x3FF0000000000000;
  *(v0 + 18656) = 0;
  *(v0 + 18664) = 1065353216;
  *(v0 + 19416) = 0x3FF0000000000000;
  *(v0 + 19472) = 0x3FF0000000000000;
  *(v0 + 19488) = 0xC04E000000000002;
  *(v0 + 19496) = 1;
  *(v0 + 19497) = *v23;
  *(v0 + 19500) = *&v23[3];
  *(v0 + 19528) = 1040242952;
  *(v0 + 19848) = 0x3FF0000000000000;
  *(v0 + 19872) = 0;
  *(v0 + 19880) = 1065353216;
  *(v0 + 20632) = 0x3FF0000000000000;
  *(v0 + 20688) = 0x3FF0000000000000;
  *(v0 + 20704) = 0xC056800000000000;
  *(v0 + 20712) = 1;
  *(v0 + 20713) = *v24;
  *(v0 + 20716) = *&v24[3];
  *(v0 + 20744) = 1040242952;
  *(v0 + 21064) = 0x3FF0000000000000;
  *(v0 + 21088) = 0;
  *(v0 + 21096) = 1065353216;
  *(v0 + 21848) = 0x3FF0000000000000;
  *(v0 + 21904) = 0x3FF0000000000000;
  return result;
}

double sub_1BCCDE704()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD07858);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1BCE3C820;
  *(v0 + 32) = 0xC056800000000000;
  *(v0 + 40) = 0;
  *(v0 + 48) = xmmword_1BCE3D330;
  *(v0 + 64) = 0x432A000043C80000;
  *(v0 + 72) = 1040242952;
  *(v0 + 80) = xmmword_1BCE3DCE0;
  *(v0 + 96) = xmmword_1BCE3C850;
  *(v0 + 112) = xmmword_1BCE3C860;
  *(v0 + 128) = xmmword_1BCE3C870;
  *(v0 + 144) = xmmword_1BCE3C880;
  *(v0 + 160) = xmmword_1BCE3C890;
  __asm { FMOV            V0.2D, #1.0 }

  *(v0 + 176) = _Q0;
  *(v0 + 192) = _Q0;
  *(v0 + 208) = _Q0;
  *(v0 + 224) = _Q0;
  *(v0 + 240) = _Q0;
  *(v0 + 256) = _Q0;
  *(v0 + 272) = _Q0;
  *(v0 + 288) = _Q0;
  *(v0 + 304) = _Q0;
  *(v0 + 320) = _Q0;
  *(v0 + 336) = xmmword_1BCE3C8F0;
  *(v0 + 352) = _Q0;
  *(v0 + 368) = xmmword_1BCE47CE0;
  *(v0 + 384) = 0x3F4CCCCD3F800000;
  *(v0 + 392) = 0x3FF0000000000000;
  *(v0 + 400) = _Q0;
  *(v0 + 416) = 0;
  *(v0 + 424) = 1065353216;
  *(v0 + 432) = _Q0;
  *(v0 + 448) = _Q0;
  *(v0 + 464) = _Q0;
  *(v0 + 480) = _Q0;
  *(v0 + 496) = _Q0;
  *(v0 + 512) = _Q0;
  *(v0 + 528) = _Q0;
  *(v0 + 544) = _Q0;
  *(v0 + 560) = _Q0;
  *(v0 + 576) = _Q0;
  *(v0 + 592) = _Q0;
  *(v0 + 608) = _Q0;
  *(v0 + 624) = _Q0;
  *(v0 + 640) = _Q0;
  *(v0 + 656) = _Q0;
  *(v0 + 672) = _Q0;
  *(v0 + 688) = _Q0;
  *(v0 + 704) = _Q0;
  *(v0 + 720) = _Q0;
  *(v0 + 736) = _Q0;
  *(v0 + 752) = _Q0;
  *(v0 + 768) = _Q0;
  *(v0 + 784) = _Q0;
  *(v0 + 800) = _Q0;
  *(v0 + 816) = _Q0;
  *(v0 + 832) = _Q0;
  *(v0 + 848) = _Q0;
  *(v0 + 864) = _Q0;
  *(v0 + 880) = _Q0;
  *(v0 + 896) = _Q0;
  *(v0 + 912) = _Q0;
  *(v0 + 928) = _Q0;
  *(v0 + 944) = _Q0;
  *(v0 + 960) = _Q0;
  *(v0 + 976) = _Q0;
  *(v0 + 992) = _Q0;
  *(v0 + 1008) = _Q0;
  *(v0 + 1024) = _Q0;
  *(v0 + 1040) = _Q0;
  *(v0 + 1056) = _Q0;
  *(v0 + 1072) = vdupq_n_s64(0x3FCF82F740000000uLL);
  *(v0 + 1088) = xmmword_1BCE3C910;
  *(v0 + 1104) = xmmword_1BCE3C920;
  *(v0 + 1120) = xmmword_1BCE3C930;
  *(v0 + 1136) = xmmword_1BCE3D350;
  *(v0 + 1152) = _Q0;
  *(v0 + 1168) = 0x4120000042FA0000;
  *(v0 + 1176) = 0x3FEB89F080000000;
  *(v0 + 1184) = xmmword_1BCE3D360;
  *(v0 + 1200) = _Q0;
  *(v0 + 1216) = xmmword_1BCE3D370;
  *(v0 + 1232) = 0x3FF0000000000000;
  *(v0 + 1248) = 0xC04E000000000000;
  *(v0 + 1256) = 0;
  *(v0 + 1257) = *v12;
  *(v0 + 1260) = *&v12[3];
  *(v0 + 1264) = xmmword_1BCE3D330;
  *(v0 + 1280) = 0x432A000043C80000;
  v11 = vdupq_n_s64(0x3FD7575760000000uLL);
  *(v0 + 1288) = 1040242952;
  *(v0 + 1296) = v11;
  *(v0 + 1312) = xmmword_1BCE3D340;
  *(v0 + 1328) = xmmword_1BCE3C860;
  *(v0 + 1344) = xmmword_1BCE3C870;
  *(v0 + 1360) = xmmword_1BCE3C880;
  *(v0 + 1376) = xmmword_1BCE3C890;
  *(v0 + 1392) = _Q0;
  *(v0 + 1408) = _Q0;
  *(v0 + 1424) = _Q0;
  *(v0 + 1440) = _Q0;
  *(v0 + 1456) = _Q0;
  *(v0 + 1472) = _Q0;
  *(v0 + 1488) = _Q0;
  *(v0 + 1504) = _Q0;
  *(v0 + 1520) = _Q0;
  *(v0 + 1536) = _Q0;
  *(v0 + 1552) = xmmword_1BCE3C8F0;
  *(v0 + 1568) = _Q0;
  *(v0 + 1584) = xmmword_1BCE47CE0;
  *(v0 + 1600) = 0x3F4CCCCD3F800000;
  *(v0 + 1608) = 0x3FF0000000000000;
  *(v0 + 1616) = _Q0;
  *(v0 + 1632) = 0;
  *(v0 + 1640) = 1065353216;
  *(v0 + 1648) = _Q0;
  *(v0 + 1664) = _Q0;
  *(v0 + 1680) = _Q0;
  *(v0 + 1696) = _Q0;
  *(v0 + 1712) = _Q0;
  *(v0 + 1728) = _Q0;
  *(v0 + 1744) = _Q0;
  *(v0 + 1760) = _Q0;
  *(v0 + 1776) = _Q0;
  *(v0 + 1792) = _Q0;
  *(v0 + 1808) = _Q0;
  *(v0 + 1824) = _Q0;
  *(v0 + 1840) = _Q0;
  *(v0 + 1856) = _Q0;
  *(v0 + 1872) = _Q0;
  *(v0 + 1888) = _Q0;
  *(v0 + 1904) = _Q0;
  *(v0 + 1920) = _Q0;
  *(v0 + 1936) = _Q0;
  *(v0 + 1952) = _Q0;
  *(v0 + 1968) = _Q0;
  *(v0 + 1984) = _Q0;
  *(v0 + 2000) = _Q0;
  *(v0 + 2016) = _Q0;
  *(v0 + 2032) = _Q0;
  *(v0 + 2048) = _Q0;
  *(v0 + 2064) = _Q0;
  *(v0 + 2080) = _Q0;
  *(v0 + 2096) = _Q0;
  *(v0 + 2112) = _Q0;
  *(v0 + 2128) = _Q0;
  *(v0 + 2144) = _Q0;
  *(v0 + 2160) = _Q0;
  *(v0 + 2176) = _Q0;
  *(v0 + 2192) = _Q0;
  *(v0 + 2208) = _Q0;
  *(v0 + 2224) = _Q0;
  *(v0 + 2288) = vdupq_n_s64(0x3FCF6CD7E0000000uLL);
  *(v0 + 2304) = xmmword_1BCE3C940;
  *(v0 + 2320) = xmmword_1BCE3C950;
  *(v0 + 2336) = xmmword_1BCE3C960;
  *(v0 + 2400) = xmmword_1BCE3D380;
  *(v0 + 2432) = xmmword_1BCE3D390;
  *(v0 + 2448) = 0x3FF0000000000000;
  *(v0 + 2464) = 0xC028000000000000;
  *(v0 + 2592) = _Q0;
  *(v0 + 2608) = _Q0;
  *(v0 + 2624) = _Q0;
  *(v0 + 2640) = _Q0;
  *(v0 + 2656) = _Q0;
  *(v0 + 2672) = _Q0;
  *(v0 + 2688) = _Q0;
  *(v0 + 2704) = xmmword_1BCE3D3C0;
  *(v0 + 2720) = xmmword_1BCE3D3D0;
  *(v0 + 2736) = xmmword_1BCE3C9E0;
  *(v0 + 2752) = xmmword_1BCE3CBC0;
  *(v0 + 2768) = xmmword_1BCE3C9F0;
  *(v0 + 2784) = xmmword_1BCE3CA00;
  *(v0 + 2800) = xmmword_1BCE42C40;
  v10 = vdup_n_s32(0x3F4CCCCDu);
  *(v0 + 2816) = v10;
  *(v0 + 2824) = 0x3FF0000000000000;
  *(v0 + 2832) = _Q0;
  *(v0 + 2848) = 0;
  *(v0 + 2856) = 1065353216;
  *(v0 + 2864) = _Q0;
  *(v0 + 2880) = _Q0;
  *(v0 + 2896) = _Q0;
  *(v0 + 2912) = _Q0;
  *(v0 + 2928) = _Q0;
  *(v0 + 2944) = _Q0;
  *(v0 + 2960) = _Q0;
  *(v0 + 2976) = _Q0;
  *(v0 + 2992) = _Q0;
  *(v0 + 3008) = _Q0;
  *(v0 + 3024) = _Q0;
  *(v0 + 3040) = _Q0;
  *(v0 + 3056) = _Q0;
  *(v0 + 3072) = _Q0;
  *(v0 + 3088) = _Q0;
  *(v0 + 3104) = _Q0;
  *(v0 + 3120) = _Q0;
  *(v0 + 3136) = _Q0;
  *(v0 + 3152) = _Q0;
  *(v0 + 3168) = _Q0;
  *(v0 + 3184) = _Q0;
  *(v0 + 3200) = _Q0;
  *(v0 + 3216) = _Q0;
  *(v0 + 3232) = _Q0;
  *(v0 + 3248) = _Q0;
  *(v0 + 3264) = _Q0;
  *(v0 + 3280) = _Q0;
  *(v0 + 3296) = _Q0;
  *(v0 + 3312) = _Q0;
  *(v0 + 3328) = _Q0;
  *(v0 + 3344) = _Q0;
  *(v0 + 3360) = _Q0;
  *(v0 + 3376) = _Q0;
  *(v0 + 3392) = _Q0;
  *(v0 + 3408) = _Q0;
  *(v0 + 3424) = _Q0;
  *(v0 + 3440) = _Q0;
  *(v0 + 3456) = _Q0;
  *(v0 + 3472) = _Q0;
  *(v0 + 3488) = _Q0;
  *(v0 + 3504) = vdupq_n_s64(0x3FCF992720000000uLL);
  *(v0 + 3520) = xmmword_1BCE3CA20;
  *(v0 + 3536) = xmmword_1BCE3CA30;
  *(v0 + 3552) = xmmword_1BCE3CA40;
  *(v0 + 3568) = xmmword_1BCE3D3E0;
  *(v0 + 3584) = _Q0;
  *(v0 + 3600) = 0x4120000042B40000;
  *(v0 + 3608) = 0x3FEB439580000000;
  *(v0 + 3616) = xmmword_1BCE3DCF0;
  *(v0 + 3648) = xmmword_1BCE3DD10;
  *(v0 + 3696) = xmmword_1BCE3CA50;
  *(v0 + 3712) = 0x447A000044480000;
  *(v0 + 3728) = xmmword_1BCE3CA60;
  *(v0 + 3760) = xmmword_1BCE3CA70;
  *(v0 + 3776) = xmmword_1BCE3CA80;
  *(v0 + 3792) = xmmword_1BCE3CA90;
  *(v0 + 3808) = xmmword_1BCE3CAA0;
  *(v0 + 3968) = xmmword_1BCE3C8C0;
  *(v0 + 3984) = xmmword_1BCE3CAD0;
  *(v0 + 4000) = xmmword_1BCE3CA00;
  *(v0 + 4072) = 1065353216;
  *(v0 + 4080) = _Q0;
  *(v0 + 4096) = _Q0;
  *(v0 + 4112) = _Q0;
  *(v0 + 4128) = _Q0;
  *(v0 + 4144) = _Q0;
  *(v0 + 4160) = _Q0;
  *(v0 + 4176) = _Q0;
  *(v0 + 4192) = _Q0;
  *(v0 + 4208) = _Q0;
  *(v0 + 4224) = _Q0;
  *(v0 + 4704) = _Q0;
  *(v0 + 4905) = *v15;
  *(v0 + 4720) = xmmword_1BCE3CB00;
  *(v0 + 4896) = 0;
  *(v0 + 4904) = 0;
  *(v0 + 4908) = *&v15[3];
  *(v0 + 4864) = xmmword_1BCE3DD30;
  *(v0 + 4880) = 0x3FF0000000000000;
  *(v0 + 4824) = 0x3FE8000000000000;
  *(v0 + 4832) = xmmword_1BCE3DD20;
  *(v0 + 4848) = xmmword_1BCE3DD00;
  *(v0 + 4736) = xmmword_1BCE3CB10;
  *(v0 + 4800) = _Q0;
  *(v0 + 4816) = 0x41A0000041F00000;
  *(v0 + 4752) = xmmword_1BCE3CB20;
  *(v0 + 4768) = xmmword_1BCE3CB10;
  *(v0 + 4784) = xmmword_1BCE3D410;
  *(v0 + 4608) = _Q0;
  *(v0 + 4624) = _Q0;
  *(v0 + 4640) = _Q0;
  *(v0 + 4656) = _Q0;
  *(v0 + 4672) = _Q0;
  *(v0 + 4688) = _Q0;
  *(v0 + 4512) = _Q0;
  *(v0 + 4528) = _Q0;
  *(v0 + 4544) = _Q0;
  *(v0 + 4560) = _Q0;
  *(v0 + 4576) = _Q0;
  *(v0 + 4592) = _Q0;
  *(v0 + 4416) = _Q0;
  *(v0 + 4432) = _Q0;
  *(v0 + 4448) = _Q0;
  *(v0 + 4464) = _Q0;
  *(v0 + 4480) = _Q0;
  *(v0 + 4496) = _Q0;
  *(v0 + 4320) = _Q0;
  *(v0 + 4336) = _Q0;
  *(v0 + 4352) = _Q0;
  *(v0 + 4368) = _Q0;
  *(v0 + 4384) = _Q0;
  *(v0 + 4400) = _Q0;
  *(v0 + 4240) = _Q0;
  *(v0 + 4256) = _Q0;
  *(v0 + 4272) = _Q0;
  *(v0 + 4288) = _Q0;
  *(v0 + 4304) = _Q0;
  *(v0 + 4928) = 0x44C8000044160000;
  *(v0 + 4944) = xmmword_1BCE3CB40;
  *(v0 + 4960) = xmmword_1BCE3CB50;
  *(v0 + 4976) = xmmword_1BCE3CB60;
  *(v0 + 4992) = xmmword_1BCE3CB70;
  *(v0 + 5008) = xmmword_1BCE3CB80;
  *(v0 + 5024) = xmmword_1BCE3CB90;
  *(v0 + 5168) = xmmword_1BCE3DA80;
  *(v0 + 5184) = xmmword_1BCE3CBE0;
  *(v0 + 5936) = xmmword_1BCE3CC10;
  *(v0 + 5968) = xmmword_1BCE3CC30;
  *(v0 + 5952) = xmmword_1BCE3CC20;
  *(v0 + 5984) = xmmword_1BCE3CC20;
  *(v0 + 4016) = xmmword_1BCE47CF0;
  *(v0 + 4048) = _Q0;
  *(v0 + 4064) = 0;
  *(v0 + 6000) = xmmword_1BCE3D410;
  *(v0 + 6032) = 0x4170000041A00000;
  *(v0 + 4032) = 1062836634;
  *(v0 + 4040) = 0x3FF0000000000000;
  *(v0 + 3872) = _Q0;
  *(v0 + 3888) = _Q0;
  *(v0 + 3904) = _Q0;
  *(v0 + 3920) = _Q0;
  *(v0 + 3936) = _Q0;
  *(v0 + 3952) = _Q0;
  *(v0 + 3632) = xmmword_1BCE3DD00;
  *(v0 + 3664) = 0x3FF0000000000000;
  *(v0 + 3824) = _Q0;
  *(v0 + 3840) = _Q0;
  *(v0 + 3856) = _Q0;
  *(v0 + 3680) = 0xC018000000000000;
  *(v0 + 3688) = 0;
  *(v0 + 3689) = *v14;
  *(v0 + 3692) = *&v14[3];
  *(v0 + 3720) = 1061997773;
  *(v0 + 3744) = _Q0;
  *(v0 + 6048) = xmmword_1BCE3DD20;
  *(v0 + 6080) = xmmword_1BCE3D460;
  *(v0 + 6128) = xmmword_1BCE3CC40;
  *(v0 + 6144) = 0x44480000443B8000;
  *(v0 + 6160) = xmmword_1BCE3CC50;
  *(v0 + 6176) = xmmword_1BCE3CC60;
  *(v0 + 6192) = xmmword_1BCE3CC70;
  *(v0 + 6208) = xmmword_1BCE3CC80;
  *(v0 + 6224) = xmmword_1BCE3CC90;
  *(v0 + 6240) = xmmword_1BCE3CCA0;
  *(v0 + 6384) = xmmword_1BCE3DAF0;
  *(v0 + 6400) = xmmword_1BCE3DB00;
  *(v0 + 6416) = xmmword_1BCE3CCD0;
  *(v0 + 6432) = xmmword_1BCE3CCE0;
  *(v0 + 6480) = xmmword_1BCE3DED0;
  *(v0 + 7152) = xmmword_1BCE3CD10;
  *(v0 + 7184) = xmmword_1BCE3CD30;
  *(v0 + 7168) = xmmword_1BCE3CD20;
  *(v0 + 7200) = xmmword_1BCE3CD20;
  *(v0 + 7264) = xmmword_1BCE3DD40;
  *(v0 + 7280) = xmmword_1BCE3D480;
  *(v0 + 7296) = xmmword_1BCE3D490;
  *(v0 + 7344) = xmmword_1BCE3CD40;
  *(v0 + 7408) = xmmword_1BCE3CD60;
  *(v0 + 7424) = xmmword_1BCE3C9D0;
  *(v0 + 7440) = xmmword_1BCE3CD70;
  *(v0 + 7456) = xmmword_1BCE3CD80;
  *(v0 + 7552) = _Q0;
  *(v0 + 7632) = xmmword_1BCE3CD90;
  *(v0 + 7648) = xmmword_1BCE3CDA0;
  *(v0 + 7696) = xmmword_1BCE3DF00;
  *(v0 + 8368) = xmmword_1BCE3CDD0;
  *(v0 + 8400) = xmmword_1BCE3CDE0;
  *(v0 + 8480) = xmmword_1BCE3DD50;
  *(v0 + 8512) = xmmword_1BCE3D4C0;
  *(v0 + 8560) = xmmword_1BCE3CDF0;
  *(v0 + 8624) = xmmword_1BCE3CE00;
  *(v0 + 9696) = xmmword_1BCE3D4D0;
  *(v0 + 9728) = xmmword_1BCE3D4F0;
  *(v0 + 9584) = xmmword_1BCE3CE20;
  *(v0 + 10800) = xmmword_1BCE3CE20;
  *(v0 + 10944) = xmmword_1BCE3D500;
  *(v0 + 9776) = xmmword_1BCE3CE40;
  *(v0 + 10992) = xmmword_1BCE3CE40;
  *(v0 + 9792) = 1151500288;
  *(v0 + 11008) = 1151500288;
  *(v0 + 9840) = xmmword_1BCE3CE50;
  *(v0 + 11056) = xmmword_1BCE3CE50;
  *(v0 + 9856) = xmmword_1BCE3CE60;
  *(v0 + 11072) = xmmword_1BCE3CE60;
  *(v0 + 9872) = xmmword_1BCE3CE70;
  *(v0 + 11088) = xmmword_1BCE3CE70;
  *(v0 + 9888) = xmmword_1BCE3CE80;
  *(v0 + 11104) = xmmword_1BCE3CE80;
  *(v0 + 11344) = xmmword_1BCE3DF20;
  *(v0 + 10816) = xmmword_1BCE3CE90;
  *(v0 + 12032) = xmmword_1BCE3CE90;
  *(v0 + 9616) = xmmword_1BCE3CE30;
  *(v0 + 12048) = xmmword_1BCE3CE30;
  *(v0 + 12160) = xmmword_1BCE3D510;
  *(v0 + 12208) = xmmword_1BCE3CEC0;
  *(v0 + 8576) = 0x41A0000044A8C000;
  *(v0 + 12224) = 0x41A0000044A8C000;
  v6 = vdupq_n_s64(0x3FECBCBCC0000000uLL);
  *(v0 + 7376) = v6;
  *(v0 + 8592) = v6;
  *(v0 + 9808) = v6;
  *(v0 + 11024) = v6;
  *(v0 + 12240) = v6;
  *(v0 + 7392) = xmmword_1BCE3CD50;
  *(v0 + 8608) = xmmword_1BCE3CD50;
  *(v0 + 9824) = xmmword_1BCE3CD50;
  *(v0 + 11040) = xmmword_1BCE3CD50;
  *(v0 + 12256) = xmmword_1BCE3CD50;
  *(v0 + 12272) = xmmword_1BCE3CED0;
  *(v0 + 8912) = xmmword_1BCE3DF10;
  *(v0 + 10128) = xmmword_1BCE3DF10;
  *(v0 + 12560) = xmmword_1BCE3DF10;
  *(v0 + 10832) = xmmword_1BCE3CEA0;
  *(v0 + 13264) = xmmword_1BCE3CEA0;
  __asm { FMOV            V1.2D, #0.5 }

  *(v0 + 10912) = _Q1;
  *(v0 + 12128) = _Q1;
  *(v0 + 13344) = _Q1;
  *(v0 + 13376) = xmmword_1BCE3D520;
  *(v0 + 13424) = xmmword_1BCE3CF00;
  *(v0 + 7360) = 1147207680;
  *(v0 + 13440) = 1147207680;
  *(v0 + 13456) = vdupq_n_s64(0x3FEC9CDC00000000uLL);
  *(v0 + 13472) = xmmword_1BCE3CF10;
  *(v0 + 13488) = xmmword_1BCE3CF20;
  *(v0 + 13504) = xmmword_1BCE3CF30;
  *(v0 + 13520) = xmmword_1BCE3CF40;
  *(v0 + 13536) = xmmword_1BCE3CF50;
  *(v0 + 13712) = xmmword_1BCE3CF60;
  *(v0 + 13776) = xmmword_1BCE3DF40;
  *(v0 + 12016) = xmmword_1BCE3CEB0;
  *(v0 + 13232) = xmmword_1BCE3CEB0;
  *(v0 + 14448) = xmmword_1BCE3CEB0;
  *(v0 + 8384) = xmmword_1BCE3CBB0;
  *(v0 + 9600) = xmmword_1BCE3CBB0;
  *(v0 + 13248) = xmmword_1BCE3CBB0;
  *(v0 + 14464) = xmmword_1BCE3CBB0;
  *(v0 + 14480) = xmmword_1BCE3CF90;
  *(v0 + 14560) = xmmword_1BCE3DD60;
  *(v0 + 8496) = xmmword_1BCE3D4B0;
  *(v0 + 14576) = xmmword_1BCE3D4B0;
  *(v0 + 14592) = xmmword_1BCE3D540;
  *(v0 + 14640) = xmmword_1BCE3CFA0;
  *(v0 + 14656) = 0x441EC000443B8000;
  *(v0 + 14672) = xmmword_1BCE3CFB0;
  *(v0 + 2560) = xmmword_1BCE3C990;
  *(v0 + 2576) = xmmword_1BCE3C9A0;
  *(v0 + 2512) = xmmword_1BCE3C970;
  *(v0 + 2528) = _Q0;
  *(v0 + 2544) = xmmword_1BCE3C980;
  *(v0 + 2472) = 0;
  *(v0 + 2496) = 0x4396000043FA0000;
  *(v0 + 2504) = 1036831949;
  *(v0 + 2473) = *v13;
  *(v0 + 2476) = *&v13[3];
  *(v0 + 2480) = xmmword_1BCE3D330;
  *(v0 + 2240) = _Q0;
  *(v0 + 2256) = _Q0;
  *(v0 + 2272) = _Q0;
  *(v0 + 2392) = 0x3FEBA9FBE0000000;
  *(v0 + 2416) = _Q0;
  *(v0 + 2352) = xmmword_1BCE3D350;
  *(v0 + 2368) = _Q0;
  *(v0 + 2384) = 0x4120000042FA0000;
  *(v0 + 4912) = xmmword_1BCE3CB30;
  *(v0 + 4936) = 1061997773;
  *(v0 + 5040) = _Q0;
  *(v0 + 5056) = _Q0;
  *(v0 + 5072) = _Q0;
  *(v0 + 5088) = _Q0;
  *(v0 + 5104) = _Q0;
  *(v0 + 5120) = _Q0;
  *(v0 + 5136) = _Q0;
  *(v0 + 5152) = _Q0;
  *(v0 + 5200) = xmmword_1BCE3CBF0;
  *(v0 + 5216) = xmmword_1BCE3CA00;
  *(v0 + 5232) = xmmword_1BCE3FD30;
  *(v0 + 5248) = 1063675494;
  *(v0 + 5256) = 0x3FF0000000000000;
  *(v0 + 5264) = _Q0;
  *(v0 + 5280) = 0;
  *(v0 + 5288) = 0;
  *(v0 + 5296) = _Q0;
  *(v0 + 5312) = _Q0;
  *(v0 + 5328) = _Q0;
  *(v0 + 5344) = _Q0;
  *(v0 + 5360) = _Q0;
  *(v0 + 5376) = _Q0;
  *(v0 + 5392) = _Q0;
  *(v0 + 5408) = _Q0;
  *(v0 + 5424) = _Q0;
  *(v0 + 5440) = _Q0;
  *(v0 + 5456) = _Q0;
  *(v0 + 5472) = _Q0;
  *(v0 + 5488) = _Q0;
  *(v0 + 5504) = _Q0;
  *(v0 + 5520) = _Q0;
  *(v0 + 5536) = _Q0;
  *(v0 + 5552) = _Q0;
  *(v0 + 5568) = _Q0;
  *(v0 + 5584) = _Q0;
  *(v0 + 5600) = _Q0;
  *(v0 + 5616) = _Q0;
  *(v0 + 5632) = _Q0;
  *(v0 + 5648) = _Q0;
  *(v0 + 5664) = _Q0;
  *(v0 + 5680) = _Q0;
  *(v0 + 5696) = _Q0;
  *(v0 + 5712) = _Q0;
  *(v0 + 5728) = _Q0;
  *(v0 + 5744) = _Q0;
  *(v0 + 5760) = _Q0;
  *(v0 + 5776) = _Q0;
  *(v0 + 5792) = _Q0;
  *(v0 + 5808) = _Q0;
  *(v0 + 5824) = _Q0;
  *(v0 + 5840) = _Q0;
  *(v0 + 5856) = _Q0;
  *(v0 + 5872) = _Q0;
  *(v0 + 5888) = _Q0;
  *(v0 + 5904) = _Q0;
  *(v0 + 5920) = _Q0;
  *(v0 + 6016) = _Q0;
  *(v0 + 6040) = 0x3FE7333340000000;
  *(v0 + 6064) = _Q0;
  *(v0 + 6096) = 0x3FF0000000000000;
  *(v0 + 6112) = 0x4017FFFFFFFFFFFALL;
  *(v0 + 6120) = 0;
  *(v0 + 6121) = *v16;
  *(v0 + 6124) = *&v16[3];
  *(v0 + 6152) = 1060739482;
  *(v0 + 6256) = _Q0;
  *(v0 + 6272) = _Q0;
  *(v0 + 6288) = _Q0;
  *(v0 + 6304) = _Q0;
  *(v0 + 6320) = _Q0;
  *(v0 + 6336) = _Q0;
  *(v0 + 6352) = _Q0;
  *(v0 + 6368) = _Q0;
  *(v0 + 6448) = xmmword_1BCE3FD30;
  *(v0 + 6464) = 1063675494;
  *(v0 + 6472) = 0x3FEF5F62E0000000;
  *(v0 + 6496) = 0x3FE0000000000000;
  *(v0 + 6504) = 0;
  *(v0 + 6512) = _Q0;
  *(v0 + 6528) = _Q0;
  *(v0 + 6544) = _Q0;
  *(v0 + 6560) = _Q0;
  *(v0 + 6576) = _Q0;
  *(v0 + 6592) = _Q0;
  *(v0 + 6608) = _Q0;
  *(v0 + 6624) = _Q0;
  *(v0 + 6640) = _Q0;
  *(v0 + 6656) = _Q0;
  *(v0 + 6672) = _Q0;
  *(v0 + 6688) = _Q0;
  *(v0 + 6704) = _Q0;
  *(v0 + 6720) = _Q0;
  *(v0 + 6736) = _Q0;
  *(v0 + 6752) = _Q0;
  *(v0 + 6768) = _Q0;
  *(v0 + 6784) = _Q0;
  *(v0 + 6800) = _Q0;
  *(v0 + 6816) = _Q0;
  *(v0 + 6832) = _Q0;
  *(v0 + 6848) = _Q0;
  *(v0 + 6864) = _Q0;
  *(v0 + 6880) = _Q0;
  *(v0 + 6896) = _Q0;
  *(v0 + 6912) = _Q0;
  *(v0 + 6928) = _Q0;
  *(v0 + 6944) = _Q0;
  *(v0 + 6960) = _Q0;
  *(v0 + 6976) = _Q0;
  *(v0 + 6992) = _Q0;
  *(v0 + 7008) = _Q0;
  *(v0 + 7024) = _Q0;
  *(v0 + 7040) = _Q0;
  *(v0 + 7056) = _Q0;
  *(v0 + 7072) = _Q0;
  *(v0 + 7088) = _Q0;
  *(v0 + 7104) = _Q0;
  *(v0 + 7120) = _Q0;
  *(v0 + 7136) = _Q0;
  *(v0 + 7216) = _Q0;
  *(v0 + 7232) = _Q0;
  *(v0 + 7248) = 0x4170000000000000;
  *(v0 + 7256) = 0x3FE369D020000000;
  *(v0 + 7312) = 0x3FF0000000000000;
  *(v0 + 7328) = 0x4028000000000000;
  *(v0 + 7336) = 0;
  *(v0 + 7337) = *v17;
  *(v0 + 7340) = *&v17[3];
  *(v0 + 7368) = 1059481190;
  *(v0 + 7472) = _Q0;
  *(v0 + 7488) = _Q0;
  *(v0 + 7504) = _Q0;
  *(v0 + 7520) = _Q0;
  *(v0 + 7536) = _Q0;
  *(v0 + 14688) = xmmword_1BCE3CFC0;
  *(v0 + 14704) = xmmword_1BCE3CFD0;
  *(v0 + 14720) = xmmword_1BCE3CFE0;
  *(v0 + 14736) = xmmword_1BCE3CFF0;
  *(v0 + 14752) = xmmword_1BCE3D000;
  *(v0 + 14864) = xmmword_1BCE3D010;
  *(v0 + 14880) = xmmword_1BCE3DBE0;
  *(v0 + 14928) = xmmword_1BCE3D040;
  *(v0 + 14992) = xmmword_1BCE3DF90;
  *(v0 + 15664) = xmmword_1BCE3D070;
  *(v0 + 15680) = xmmword_1BCE3D080;
  *(v0 + 15696) = xmmword_1BCE3D090;
  *(v0 + 15712) = xmmword_1BCE3D0A0;
  *(v0 + 15776) = xmmword_1BCE3DD70;
  *(v0 + 15808) = xmmword_1BCE3D560;
  *(v0 + 15856) = xmmword_1BCE3D0B0;
  *(v0 + 15872) = 0x449EC00044160000;
  *(v0 + 15888) = xmmword_1BCE3D0C0;
  *(v0 + 15904) = xmmword_1BCE3D0D0;
  *(v0 + 15920) = xmmword_1BCE3D0E0;
  *(v0 + 15936) = xmmword_1BCE3D0F0;
  *(v0 + 15952) = xmmword_1BCE3D100;
  *(v0 + 15968) = xmmword_1BCE3D110;
  *(v0 + 10032) = xmmword_1BCE3CCB0;
  *(v0 + 10064) = xmmword_1BCE3CCB0;
  *(v0 + 11248) = xmmword_1BCE3CCB0;
  *(v0 + 11280) = xmmword_1BCE3CCB0;
  *(v0 + 16080) = xmmword_1BCE3CCB0;
  *(v0 + 16096) = xmmword_1BCE3DC50;
  *(v0 + 16144) = xmmword_1BCE3CBF0;
  *(v0 + 7664) = xmmword_1BCE3FD30;
  *(v0 + 8880) = xmmword_1BCE3FD30;
  *(v0 + 10096) = xmmword_1BCE3FD30;
  *(v0 + 11312) = xmmword_1BCE3FD30;
  *(v0 + 12528) = xmmword_1BCE3FD30;
  *(v0 + 13744) = xmmword_1BCE3FD30;
  *(v0 + 14960) = xmmword_1BCE3FD30;
  *(v0 + 16176) = xmmword_1BCE3FD30;
  *(v0 + 7680) = 1063675494;
  *(v0 + 8896) = 1063675494;
  *(v0 + 10112) = 1063675494;
  *(v0 + 11328) = 1063675494;
  *(v0 + 12544) = 1063675494;
  *(v0 + 13760) = 1063675494;
  *(v0 + 14976) = 1063675494;
  *(v0 + 16192) = 1063675494;
  *(v0 + 16208) = xmmword_1BCE3DFE0;
  *(v0 + 16880) = xmmword_1BCE3D160;
  *(v0 + 16896) = xmmword_1BCE3D170;
  *(v0 + 16912) = xmmword_1BCE3D180;
  *(v0 + 16928) = xmmword_1BCE3D190;
  *(v0 + 16944) = xmmword_1BCE3D570;
  *(v0 + 16960) = xmmword_1BCE3D580;
  *(v0 + 8464) = 0x4170000000000000;
  *(v0 + 9680) = 0x4170000000000000;
  *(v0 + 10896) = 0x4170000000000000;
  *(v0 + 12112) = 0x4170000000000000;
  *(v0 + 13328) = 0x4170000000000000;
  *(v0 + 14544) = 0x4170000000000000;
  *(v0 + 15760) = 0x4170000000000000;
  *(v0 + 16976) = 0x4170000000000000;
  *(v0 + 16992) = xmmword_1BCE3DD80;
  *(v0 + 17008) = xmmword_1BCE3DD90;
  *(v0 + 17024) = xmmword_1BCE3DDA0;
  *(v0 + 17072) = xmmword_1BCE3CB30;
  *(v0 + 17088) = 0x4483CC9D44160000;
  *(v0 + 17104) = xmmword_1BCE3D5B0;
  *(v0 + 17136) = xmmword_1BCE3D1C0;
  *(v0 + 17152) = xmmword_1BCE3D1D0;
  *(v0 + 17168) = xmmword_1BCE3D1E0;
  *(v0 + 17184) = xmmword_1BCE3D1F0;
  *(v0 + 17312) = xmmword_1BCE3DC70;
  *(v0 + 7616) = xmmword_1BCE3C8C0;
  *(v0 + 8832) = xmmword_1BCE3C8C0;
  *(v0 + 10048) = xmmword_1BCE3C8C0;
  *(v0 + 11264) = xmmword_1BCE3C8C0;
  *(v0 + 12480) = xmmword_1BCE3C8C0;
  *(v0 + 13696) = xmmword_1BCE3C8C0;
  *(v0 + 14912) = xmmword_1BCE3C8C0;
  *(v0 + 16128) = xmmword_1BCE3C8C0;
  *(v0 + 17344) = xmmword_1BCE3C8C0;
  *(v0 + 17360) = xmmword_1BCE3CAD0;
  *(v0 + 17392) = xmmword_1BCE47CF0;
  *(v0 + 17408) = 1062836634;
  *(v0 + 17424) = xmmword_1BCE3DFF0;
  *(v0 + 18096) = xmmword_1BCE3D230;
  *(v0 + 18112) = xmmword_1BCE3D240;
  *(v0 + 18128) = xmmword_1BCE3D250;
  *(v0 + 18144) = xmmword_1BCE3D260;
  *(v0 + 18160) = xmmword_1BCE3D5C0;
  *(v0 + 18176) = xmmword_1BCE3D5D0;
  __asm { FMOV            V1.2S, #20.0 }

  *(v0 + 18192) = _Q1;
  *(v0 + 18208) = xmmword_1BCE3DDB0;
  *(v0 + 9712) = xmmword_1BCE3D4E0;
  *(v0 + 10928) = xmmword_1BCE3D4E0;
  *(v0 + 12144) = xmmword_1BCE3D4E0;
  *(v0 + 13360) = xmmword_1BCE3D4E0;
  *(v0 + 15792) = xmmword_1BCE3D4E0;
  *(v0 + 18224) = xmmword_1BCE3D4E0;
  *(v0 + 18240) = xmmword_1BCE3DDC0;
  *(v0 + 18304) = 0x4396000043FA0000;
  *(v0 + 18320) = xmmword_1BCE3C970;
  *(v0 + 18352) = xmmword_1BCE3C980;
  *(v0 + 18368) = xmmword_1BCE3C990;
  *(v0 + 18384) = xmmword_1BCE3C9A0;
  *(v0 + 18512) = xmmword_1BCE3D2B0;
  *(v0 + 18528) = xmmword_1BCE3D2C0;
  *(v0 + 18544) = xmmword_1BCE3DDD0;
  *(v0 + 8416) = xmmword_1BCE3CBC0;
  *(v0 + 9632) = xmmword_1BCE3CBC0;
  *(v0 + 10848) = xmmword_1BCE3CBC0;
  *(v0 + 12064) = xmmword_1BCE3CBC0;
  *(v0 + 13280) = xmmword_1BCE3CBC0;
  *(v0 + 14496) = xmmword_1BCE3CBC0;
  *(v0 + 18560) = xmmword_1BCE3CBC0;
  *(v0 + 18576) = xmmword_1BCE3C9F0;
  *(v0 + 13728) = xmmword_1BCE3CA00;
  *(v0 + 14944) = xmmword_1BCE3CA00;
  *(v0 + 16160) = xmmword_1BCE3CA00;
  *(v0 + 17376) = xmmword_1BCE3CA00;
  *(v0 + 18592) = xmmword_1BCE3CA00;
  *(v0 + 18608) = xmmword_1BCE42C40;
  *(v0 + 18624) = v10;
  *(v0 + 19312) = xmmword_1BCE3D2E0;
  *(v0 + 19344) = xmmword_1BCE3D2F0;
  *(v0 + 19376) = xmmword_1BCE3D600;
  *(v0 + 19408) = 0x4120000042B40000;
  *(v0 + 19424) = xmmword_1BCE3DCF0;
  *(v0 + 19440) = xmmword_1BCE3DD00;
  *(v0 + 19456) = xmmword_1BCE3DDE0;
  *(v0 + 19536) = v11;
  *(v0 + 19552) = xmmword_1BCE3D340;
  __asm { FMOV            V1.2D, #0.25 }

  *(v0 + 20528) = _Q1;
  *(v0 + 20560) = xmmword_1BCE3D300;
  *(v0 + 20640) = xmmword_1BCE3D630;
  *(v0 + 20672) = xmmword_1BCE3D640;
  *(v0 + 18288) = xmmword_1BCE3D330;
  *(v0 + 19504) = xmmword_1BCE3D330;
  *(v0 + 20720) = xmmword_1BCE3D330;
  *(v0 + 19520) = 0x432A000043C80000;
  *(v0 + 20736) = 0x432A000043C80000;
  *(v0 + 20752) = xmmword_1BCE3DCE0;
  *(v0 + 20768) = xmmword_1BCE3C850;
  *(v0 + 19568) = xmmword_1BCE3C860;
  *(v0 + 20784) = xmmword_1BCE3C860;
  *(v0 + 19584) = xmmword_1BCE3C870;
  *(v0 + 20800) = xmmword_1BCE3C870;
  *(v0 + 19600) = xmmword_1BCE3C880;
  *(v0 + 20816) = xmmword_1BCE3C880;
  *(v0 + 19616) = xmmword_1BCE3C890;
  *(v0 + 20832) = xmmword_1BCE3C890;
  *(v0 + 8848) = xmmword_1BCE3C8F0;
  *(v0 + 19792) = xmmword_1BCE3C8F0;
  *(v0 + 21008) = xmmword_1BCE3C8F0;
  *(v0 + 19824) = xmmword_1BCE47CE0;
  *(v0 + 19840) = 0x3F4CCCCD3F800000;
  *(v0 + 21040) = xmmword_1BCE47CE0;
  *(v0 + 21056) = 0x3F4CCCCD3F800000;
  *(v0 + 21744) = vdupq_n_s64(0x3FCFEB6B80000000uLL);
  *(v0 + 19328) = xmmword_1BCE3C910;
  *(v0 + 19360) = xmmword_1BCE3C910;
  *(v0 + 20544) = xmmword_1BCE3C910;
  *(v0 + 20576) = xmmword_1BCE3C910;
  *(v0 + 21760) = xmmword_1BCE3C910;
  *(v0 + 21776) = xmmword_1BCE3D310;
  *(v0 + 21792) = xmmword_1BCE3D320;
  *(v0 + 20592) = xmmword_1BCE3D350;
  *(v0 + 21808) = xmmword_1BCE3D350;
  *(v0 + 20624) = 0x4120000042FA0000;
  *(v0 + 21840) = 0x4120000042FA0000;
  *(v0 + 21856) = xmmword_1BCE3D360;
  *(v0 + 7568) = _Q0;
  *(v0 + 18080) = _Q0;
  *(v0 + 17984) = _Q0;
  *(v0 + 18000) = _Q0;
  *(v0 + 18016) = _Q0;
  *(v0 + 18032) = _Q0;
  *(v0 + 18048) = _Q0;
  *(v0 + 18064) = _Q0;
  *(v0 + 17888) = _Q0;
  *(v0 + 17904) = _Q0;
  *(v0 + 17920) = _Q0;
  *(v0 + 17936) = _Q0;
  *(v0 + 17952) = _Q0;
  *(v0 + 17968) = _Q0;
  *(v0 + 17792) = _Q0;
  *(v0 + 17808) = _Q0;
  *(v0 + 17824) = _Q0;
  *(v0 + 17840) = _Q0;
  *(v0 + 17856) = _Q0;
  *(v0 + 17872) = _Q0;
  *(v0 + 17696) = _Q0;
  *(v0 + 17712) = _Q0;
  *(v0 + 17728) = _Q0;
  *(v0 + 17744) = _Q0;
  *(v0 + 17760) = _Q0;
  *(v0 + 17776) = _Q0;
  *(v0 + 17600) = _Q0;
  *(v0 + 17616) = _Q0;
  *(v0 + 17632) = _Q0;
  *(v0 + 17648) = _Q0;
  *(v0 + 17664) = _Q0;
  *(v0 + 17680) = _Q0;
  *(v0 + 7584) = _Q0;
  *(v0 + 17520) = _Q0;
  *(v0 + 17536) = _Q0;
  *(v0 + 17552) = _Q0;
  *(v0 + 17568) = _Q0;
  *(v0 + 17584) = _Q0;
  *(v0 + 7600) = _Q0;
  *(v0 + 17448) = 1065353216;
  *(v0 + 17456) = _Q0;
  *(v0 + 17472) = _Q0;
  *(v0 + 17488) = _Q0;
  *(v0 + 17504) = _Q0;
  *(v0 + 7728) = _Q0;
  *(v0 + 7744) = _Q0;
  *(v0 + 7760) = _Q0;
  *(v0 + 17416) = 0x3FEED417A0000000;
  *(v0 + 17440) = 0;
  *(v0 + 7776) = _Q0;
  *(v0 + 7792) = _Q0;
  *(v0 + 7808) = _Q0;
  *(v0 + 17280) = _Q0;
  *(v0 + 17296) = _Q0;
  *(v0 + 17328) = _Q0;
  *(v0 + 7824) = _Q0;
  *(v0 + 17200) = _Q0;
  *(v0 + 17216) = _Q0;
  *(v0 + 17232) = _Q0;
  *(v0 + 17248) = _Q0;
  *(v0 + 17264) = _Q0;
  *(v0 + 7840) = _Q0;
  *(v0 + 7856) = _Q0;
  *(v0 + 7872) = _Q0;
  *(v0 + 7888) = _Q0;
  *(v0 + 7904) = _Q0;
  *(v0 + 17120) = _Q0;
  *(v0 + 7920) = _Q0;
  *(v0 + 17056) = 0xC018000000000000;
  *(v0 + 17064) = 1;
  *(v0 + 17065) = *v25;
  *(v0 + 17068) = *&v25[3];
  *(v0 + 17096) = 1050388079;
  *(v0 + 7936) = _Q0;
  *(v0 + 7952) = _Q0;
  *(v0 + 7968) = _Q0;
  *(v0 + 7984) = _Q0;
  *(v0 + 16984) = 0x3FE8000000000000;
  *(v0 + 17040) = 0x3FF0000000000000;
  *(v0 + 8000) = _Q0;
  *(v0 + 8016) = _Q0;
  *(v0 + 8032) = _Q0;
  *(v0 + 8048) = _Q0;
  *(v0 + 8064) = _Q0;
  *(v0 + 8080) = _Q0;
  *(v0 + 16784) = _Q0;
  *(v0 + 16800) = _Q0;
  *(v0 + 16816) = _Q0;
  *(v0 + 16832) = _Q0;
  *(v0 + 16848) = _Q0;
  *(v0 + 16864) = _Q0;
  *(v0 + 16688) = _Q0;
  *(v0 + 16704) = _Q0;
  *(v0 + 16720) = _Q0;
  *(v0 + 16736) = _Q0;
  *(v0 + 16752) = _Q0;
  *(v0 + 16768) = _Q0;
  *(v0 + 16592) = _Q0;
  *(v0 + 16608) = _Q0;
  *(v0 + 16624) = _Q0;
  *(v0 + 16640) = _Q0;
  *(v0 + 16656) = _Q0;
  *(v0 + 16672) = _Q0;
  *(v0 + 16496) = _Q0;
  *(v0 + 16512) = _Q0;
  *(v0 + 16528) = _Q0;
  *(v0 + 16544) = _Q0;
  *(v0 + 16560) = _Q0;
  *(v0 + 16576) = _Q0;
  *(v0 + 16400) = _Q0;
  *(v0 + 16416) = _Q0;
  *(v0 + 16432) = _Q0;
  *(v0 + 16448) = _Q0;
  *(v0 + 16464) = _Q0;
  *(v0 + 16480) = _Q0;
  *(v0 + 16304) = _Q0;
  *(v0 + 16320) = _Q0;
  *(v0 + 16336) = _Q0;
  *(v0 + 16352) = _Q0;
  *(v0 + 16368) = _Q0;
  *(v0 + 0x4000) = _Q0;
  *(v0 + 8096) = _Q0;
  *(v0 + 16232) = 0;
  *(v0 + 16240) = _Q0;
  *(v0 + 16256) = _Q0;
  *(v0 + 16272) = _Q0;
  *(v0 + 16288) = _Q0;
  *(v0 + 8112) = _Q0;
  *(v0 + 8128) = _Q0;
  *(v0 + 8144) = _Q0;
  *(v0 + 16200) = 0x3FEDCF06E0000000;
  *(v0 + 16224) = 0;
  *(v0 + 8160) = _Q0;
  *(v0 + 8176) = _Q0;
  *(v0 + 0x2000) = _Q0;
  *(v0 + 8208) = _Q0;
  *(v0 + 16064) = _Q0;
  *(v0 + 16112) = _Q0;
  *(v0 + 8224) = _Q0;
  *(v0 + 15984) = _Q0;
  *(v0 + 16000) = _Q0;
  *(v0 + 16016) = _Q0;
  *(v0 + 16032) = _Q0;
  *(v0 + 16048) = _Q0;
  *(v0 + 8240) = _Q0;
  *(v0 + 8256) = _Q0;
  *(v0 + 8272) = _Q0;
  *(v0 + 8288) = _Q0;
  *(v0 + 8304) = _Q0;
  *(v0 + 8320) = _Q0;
  *(v0 + 8336) = _Q0;
  *(v0 + 15849) = *v24;
  *(v0 + 15880) = 1061997773;
  *(v0 + 8352) = _Q0;
  *(v0 + 15824) = 0x3FF0000000000000;
  *(v0 + 15840) = 0;
  *(v0 + 15848) = 1;
  *(v0 + 15852) = *&v24[3];
  *(v0 + 8432) = _Q0;
  *(v0 + 8448) = _Q0;
  *(v0 + 8472) = 0x3FE0000000000000;
  *(v0 + 8528) = 0x3FF0000000000000;
  *(v0 + 15768) = 0x3FE4CCCCC0000000;
  *(v0 + 8544) = 0x4032000000000000;
  *(v0 + 8552) = 0;
  *(v0 + 15744) = _Q0;
  *(v0 + 8553) = *v18;
  *(v0 + 8556) = *&v18[3];
  *(v0 + 15648) = _Q0;
  *(v0 + 15728) = _Q0;
  *(v0 + 15552) = _Q0;
  *(v0 + 15568) = _Q0;
  *(v0 + 15584) = _Q0;
  *(v0 + 15600) = _Q0;
  *(v0 + 15616) = _Q0;
  *(v0 + 15632) = _Q0;
  *(v0 + 15456) = _Q0;
  *(v0 + 15472) = _Q0;
  *(v0 + 15488) = _Q0;
  *(v0 + 15504) = _Q0;
  *(v0 + 15520) = _Q0;
  *(v0 + 15536) = _Q0;
  *(v0 + 15360) = _Q0;
  *(v0 + 15376) = _Q0;
  *(v0 + 15392) = _Q0;
  *(v0 + 15408) = _Q0;
  *(v0 + 15424) = _Q0;
  *(v0 + 15440) = _Q0;
  *(v0 + 15264) = _Q0;
  *(v0 + 15280) = _Q0;
  *(v0 + 15296) = _Q0;
  *(v0 + 15312) = _Q0;
  *(v0 + 15328) = _Q0;
  *(v0 + 15344) = _Q0;
  *(v0 + 15168) = _Q0;
  *(v0 + 15184) = _Q0;
  *(v0 + 15200) = _Q0;
  *(v0 + 15216) = _Q0;
  *(v0 + 15232) = _Q0;
  *(v0 + 15248) = _Q0;
  *(v0 + 15088) = _Q0;
  *(v0 + 15104) = _Q0;
  *(v0 + 15120) = _Q0;
  *(v0 + 15136) = _Q0;
  *(v0 + 15152) = _Q0;
  *(v0 + 8584) = 1061158912;
  *(v0 + 15016) = 0;
  *(v0 + 15024) = _Q0;
  *(v0 + 15040) = _Q0;
  *(v0 + 15056) = _Q0;
  *(v0 + 15072) = _Q0;
  *(v0 + 8640) = _Q0;
  *(v0 + 8656) = _Q0;
  *(v0 + 8672) = _Q0;
  *(v0 + 14984) = 0x3FED305D00000000;
  *(v0 + 15008) = 0x3FE0000000000000;
  *(v0 + 8688) = _Q0;
  *(v0 + 8704) = _Q0;
  *(v0 + 8720) = _Q0;
  *(v0 + 8736) = _Q0;
  *(v0 + 14848) = _Q0;
  *(v0 + 14896) = _Q0;
  *(v0 + 8752) = _Q0;
  *(v0 + 14768) = _Q0;
  *(v0 + 14784) = _Q0;
  *(v0 + 14800) = _Q0;
  *(v0 + 14816) = _Q0;
  *(v0 + 14832) = _Q0;
  *(v0 + 8768) = _Q0;
  *(v0 + 8784) = _Q0;
  *(v0 + 8800) = _Q0;
  *(v0 + 8816) = _Q0;
  *(v0 + 8864) = _Q0;
  *(v0 + 8904) = 0x3FE64FE980000000;
  *(v0 + 14633) = *v23;
  *(v0 + 14664) = 1061158912;
  *(v0 + 14608) = 0x3FF0000000000000;
  *(v0 + 14624) = 0x4018000000000010;
  *(v0 + 14632) = 1;
  *(v0 + 14636) = *&v23[3];
  *(v0 + 8928) = 0x3FF0000000000000;
  *(v0 + 8936) = 0;
  *(v0 + 8944) = _Q0;
  *(v0 + 8960) = _Q0;
  *(v0 + 14528) = _Q0;
  *(v0 + 14552) = 0x3FE0000000000000;
  *(v0 + 8976) = _Q0;
  *(v0 + 8992) = _Q0;
  *(v0 + 9008) = _Q0;
  *(v0 + 9024) = _Q0;
  *(v0 + 14432) = _Q0;
  *(v0 + 14512) = _Q0;
  *(v0 + 14336) = _Q0;
  *(v0 + 14352) = _Q0;
  *(v0 + 14368) = _Q0;
  *(v0 + 14384) = _Q0;
  *(v0 + 14400) = _Q0;
  *(v0 + 14416) = _Q0;
  *(v0 + 14240) = _Q0;
  *(v0 + 14256) = _Q0;
  *(v0 + 14272) = _Q0;
  *(v0 + 14288) = _Q0;
  *(v0 + 14304) = _Q0;
  *(v0 + 14320) = _Q0;
  *(v0 + 14144) = _Q0;
  *(v0 + 14160) = _Q0;
  *(v0 + 14176) = _Q0;
  *(v0 + 14192) = _Q0;
  *(v0 + 14208) = _Q0;
  *(v0 + 14224) = _Q0;
  *(v0 + 14048) = _Q0;
  *(v0 + 14064) = _Q0;
  *(v0 + 14080) = _Q0;
  *(v0 + 14096) = _Q0;
  *(v0 + 14112) = _Q0;
  *(v0 + 14128) = _Q0;
  *(v0 + 13952) = _Q0;
  *(v0 + 13968) = _Q0;
  *(v0 + 13984) = _Q0;
  *(v0 + 14000) = _Q0;
  *(v0 + 14016) = _Q0;
  *(v0 + 14032) = _Q0;
  *(v0 + 13856) = _Q0;
  *(v0 + 13872) = _Q0;
  *(v0 + 13888) = _Q0;
  *(v0 + 13904) = _Q0;
  *(v0 + 13920) = _Q0;
  *(v0 + 13936) = _Q0;
  *(v0 + 9040) = _Q0;
  *(v0 + 13792) = 0x3FF0000000000000;
  *(v0 + 13800) = 0;
  *(v0 + 13808) = _Q0;
  *(v0 + 13824) = _Q0;
  *(v0 + 13840) = _Q0;
  *(v0 + 9056) = _Q0;
  *(v0 + 9072) = _Q0;
  *(v0 + 9088) = _Q0;
  *(v0 + 9104) = _Q0;
  *(v0 + 13768) = 0x3FEC91B340000000;
  *(v0 + 9120) = _Q0;
  *(v0 + 13616) = _Q0;
  *(v0 + 13632) = _Q0;
  *(v0 + 13648) = _Q0;
  *(v0 + 13664) = _Q0;
  *(v0 + 13680) = _Q0;
  *(v0 + 9136) = _Q0;
  *(v0 + 9152) = _Q0;
  *(v0 + 13552) = _Q0;
  *(v0 + 13568) = _Q0;
  *(v0 + 13584) = _Q0;
  *(v0 + 13600) = _Q0;
  *(v0 + 9168) = _Q0;
  *(v0 + 9184) = _Q0;
  *(v0 + 9200) = _Q0;
  *(v0 + 9216) = _Q0;
  *(v0 + 9232) = _Q0;
  *(v0 + 9248) = _Q0;
  *(v0 + 13417) = *v22;
  *(v0 + 13448) = 1060320051;
  *(v0 + 9264) = _Q0;
  *(v0 + 13392) = 0x3FF0000000000000;
  *(v0 + 13408) = 0x4028000000000000;
  *(v0 + 13416) = 1;
  *(v0 + 13420) = *&v22[3];
  *(v0 + 9280) = _Q0;
  *(v0 + 9296) = _Q0;
  *(v0 + 9312) = _Q0;
  *(v0 + 9328) = _Q0;
  *(v0 + 13312) = _Q0;
  *(v0 + 13336) = 0x3FE0000000000000;
  *(v0 + 9344) = _Q0;
  *(v0 + 9360) = _Q0;
  *(v0 + 9376) = _Q0;
  *(v0 + 9392) = _Q0;
  *(v0 + 13216) = _Q0;
  *(v0 + 13296) = _Q0;
  *(v0 + 13120) = _Q0;
  *(v0 + 13136) = _Q0;
  *(v0 + 13152) = _Q0;
  *(v0 + 13168) = _Q0;
  *(v0 + 13184) = _Q0;
  *(v0 + 13200) = _Q0;
  *(v0 + 13024) = _Q0;
  *(v0 + 13040) = _Q0;
  *(v0 + 13056) = _Q0;
  *(v0 + 13072) = _Q0;
  *(v0 + 13088) = _Q0;
  *(v0 + 13104) = _Q0;
  *(v0 + 12928) = _Q0;
  *(v0 + 12944) = _Q0;
  *(v0 + 12960) = _Q0;
  *(v0 + 12976) = _Q0;
  *(v0 + 12992) = _Q0;
  *(v0 + 13008) = _Q0;
  *(v0 + 12832) = _Q0;
  *(v0 + 12848) = _Q0;
  *(v0 + 12864) = _Q0;
  *(v0 + 12880) = _Q0;
  *(v0 + 12896) = _Q0;
  *(v0 + 12912) = _Q0;
  *(v0 + 12736) = _Q0;
  *(v0 + 12752) = _Q0;
  *(v0 + 12768) = _Q0;
  *(v0 + 12784) = _Q0;
  *(v0 + 12800) = _Q0;
  *(v0 + 12816) = _Q0;
  *(v0 + 12640) = _Q0;
  *(v0 + 12656) = _Q0;
  *(v0 + 12672) = _Q0;
  *(v0 + 12688) = _Q0;
  *(v0 + 12704) = _Q0;
  *(v0 + 12720) = _Q0;
  *(v0 + 9408) = _Q0;
  *(v0 + 12576) = 0x3FF0000000000000;
  *(v0 + 12584) = 0;
  *(v0 + 12592) = _Q0;
  *(v0 + 12608) = _Q0;
  *(v0 + 12624) = _Q0;
  *(v0 + 9424) = _Q0;
  *(v0 + 9440) = _Q0;
  *(v0 + 9456) = _Q0;
  *(v0 + 12496) = _Q0;
  *(v0 + 12512) = _Q0;
  *(v0 + 12552) = 0x3FE64FE980000000;
  *(v0 + 12384) = _Q0;
  *(v0 + 12400) = _Q0;
  *(v0 + 12416) = _Q0;
  *(v0 + 12432) = _Q0;
  *(v0 + 12448) = _Q0;
  *(v0 + 12464) = _Q0;
  *(v0 + 12288) = _Q0;
  *(v0 + 12304) = _Q0;
  *(v0 + 12320) = _Q0;
  *(v0 + 12336) = _Q0;
  *(v0 + 12352) = _Q0;
  *(v0 + 12368) = _Q0;
  *(v0 + 9472) = _Q0;
  *(v0 + 9488) = _Q0;
  *(v0 + 9504) = _Q0;
  *(v0 + 9520) = _Q0;
  *(v0 + 9536) = _Q0;
  *(v0 + 12201) = *v21;
  *(v0 + 12204) = *&v21[3];
  *(v0 + 12232) = 1061158912;
  *(v0 + 9552) = _Q0;
  *(v0 + 9568) = _Q0;
  *(v0 + 9648) = _Q0;
  *(v0 + 12176) = 0x3FF0000000000000;
  *(v0 + 12192) = 0x4032000000000000;
  *(v0 + 12200) = 1;
  *(v0 + 9664) = _Q0;
  *(v0 + 9688) = 0x3FD9999980000000;
  *(v0 + 9744) = 0x3FF0000000000000;
  *(v0 + 12120) = 0x3FE0000000000000;
  *(v0 + 9769) = *v19;
  *(v0 + 12080) = _Q0;
  *(v0 + 12096) = _Q0;
  *(v0 + 9760) = 0x403E000000000000;
  *(v0 + 11936) = _Q0;
  *(v0 + 11952) = _Q0;
  *(v0 + 11968) = _Q0;
  *(v0 + 11984) = _Q0;
  *(v0 + 12000) = _Q0;
  *(v0 + 11840) = _Q0;
  *(v0 + 11856) = _Q0;
  *(v0 + 11872) = _Q0;
  *(v0 + 11888) = _Q0;
  *(v0 + 11904) = _Q0;
  *(v0 + 11920) = _Q0;
  *(v0 + 11744) = _Q0;
  *(v0 + 11760) = _Q0;
  *(v0 + 11776) = _Q0;
  *(v0 + 11792) = _Q0;
  *(v0 + 11808) = _Q0;
  *(v0 + 11824) = _Q0;
  *(v0 + 11648) = _Q0;
  *(v0 + 11664) = _Q0;
  *(v0 + 11680) = _Q0;
  *(v0 + 11696) = _Q0;
  *(v0 + 11712) = _Q0;
  *(v0 + 11728) = _Q0;
  *(v0 + 11552) = _Q0;
  *(v0 + 11568) = _Q0;
  *(v0 + 11584) = _Q0;
  *(v0 + 11600) = _Q0;
  *(v0 + 11616) = _Q0;
  *(v0 + 11632) = _Q0;
  *(v0 + 11456) = _Q0;
  *(v0 + 11472) = _Q0;
  *(v0 + 11488) = _Q0;
  *(v0 + 11504) = _Q0;
  *(v0 + 11520) = _Q0;
  *(v0 + 11536) = _Q0;
  *(v0 + 9768) = 0;
  *(v0 + 11392) = _Q0;
  *(v0 + 11408) = _Q0;
  *(v0 + 11424) = _Q0;
  *(v0 + 11440) = _Q0;
  *(v0 + 9772) = *&v19[3];
  *(v0 + 9800) = 1061997773;
  *(v0 + 11336) = 0x3FE64FE980000000;
  *(v0 + 11360) = 0x3FF0000000000000;
  *(v0 + 11368) = 0;
  *(v0 + 11376) = _Q0;
  *(v0 + 9904) = _Q0;
  *(v0 + 9920) = _Q0;
  *(v0 + 9936) = _Q0;
  *(v0 + 9952) = _Q0;
  *(v0 + 11232) = _Q0;
  *(v0 + 11296) = _Q0;
  *(v0 + 11136) = _Q0;
  *(v0 + 11152) = _Q0;
  *(v0 + 11168) = _Q0;
  *(v0 + 11184) = _Q0;
  *(v0 + 11200) = _Q0;
  *(v0 + 11216) = _Q0;
  *(v0 + 9968) = _Q0;
  *(v0 + 9984) = _Q0;
  *(v0 + 10000) = _Q0;
  *(v0 + 10016) = _Q0;
  *(v0 + 10080) = _Q0;
  *(v0 + 11120) = _Q0;
  *(v0 + 10120) = 0x3FE64FE980000000;
  *(v0 + 10144) = 0x3FF0000000000000;
  *(v0 + 10152) = 0;
  *(v0 + 10976) = 0x403E000000000000;
  *(v0 + 10984) = 1;
  *(v0 + 10985) = *v20;
  *(v0 + 10988) = *&v20[3];
  *(v0 + 11016) = 1061997773;
  *(v0 + 10160) = _Q0;
  *(v0 + 10176) = _Q0;
  *(v0 + 10192) = _Q0;
  *(v0 + 10208) = _Q0;
  *(v0 + 10904) = 0x3FE0000000000000;
  *(v0 + 10960) = 0x3FF0000000000000;
  *(v0 + 10224) = _Q0;
  *(v0 + 10240) = _Q0;
  *(v0 + 10256) = _Q0;
  *(v0 + 10272) = _Q0;
  *(v0 + 10864) = _Q0;
  *(v0 + 10880) = _Q0;
  *(v0 + 10704) = _Q0;
  *(v0 + 10720) = _Q0;
  *(v0 + 10736) = _Q0;
  *(v0 + 10752) = _Q0;
  *(v0 + 10768) = _Q0;
  *(v0 + 10784) = _Q0;
  *(v0 + 10608) = _Q0;
  *(v0 + 10624) = _Q0;
  *(v0 + 10640) = _Q0;
  *(v0 + 10656) = _Q0;
  *(v0 + 10672) = _Q0;
  *(v0 + 10688) = _Q0;
  *(v0 + 10512) = _Q0;
  *(v0 + 10528) = _Q0;
  *(v0 + 10544) = _Q0;
  *(v0 + 10560) = _Q0;
  *(v0 + 10576) = _Q0;
  *(v0 + 10592) = _Q0;
  *(v0 + 10416) = _Q0;
  *(v0 + 10432) = _Q0;
  *(v0 + 10448) = _Q0;
  *(v0 + 10464) = _Q0;
  *(v0 + 10480) = _Q0;
  *(v0 + 10496) = _Q0;
  *(v0 + 10320) = _Q0;
  *(v0 + 10336) = _Q0;
  *(v0 + 10352) = _Q0;
  *(v0 + 10368) = _Q0;
  *(v0 + 10384) = _Q0;
  *(v0 + 10400) = _Q0;
  *(v0 + 10288) = _Q0;
  *(v0 + 10304) = _Q0;
  *(v0 + 18336) = _Q0;
  *(v0 + 18400) = _Q0;
  *(v0 + 18416) = _Q0;
  *(v0 + 18432) = _Q0;
  *(v0 + 18448) = _Q0;
  *(v0 + 18464) = _Q0;
  *(v0 + 18480) = _Q0;
  *(v0 + 18496) = _Q0;
  *(v0 + 18640) = _Q0;
  *(v0 + 18672) = _Q0;
  *(v0 + 18688) = _Q0;
  *(v0 + 18704) = _Q0;
  *(v0 + 18720) = _Q0;
  *(v0 + 18736) = _Q0;
  *(v0 + 18752) = _Q0;
  *(v0 + 18768) = _Q0;
  *(v0 + 18784) = _Q0;
  *(v0 + 18800) = _Q0;
  *(v0 + 18816) = _Q0;
  *(v0 + 18832) = _Q0;
  *(v0 + 18848) = _Q0;
  *(v0 + 18864) = _Q0;
  *(v0 + 18880) = _Q0;
  *(v0 + 18896) = _Q0;
  *(v0 + 18912) = _Q0;
  *(v0 + 18928) = _Q0;
  *(v0 + 18944) = _Q0;
  *(v0 + 18960) = _Q0;
  *(v0 + 18976) = _Q0;
  *(v0 + 18992) = _Q0;
  *(v0 + 19008) = _Q0;
  *(v0 + 19024) = _Q0;
  *(v0 + 19040) = _Q0;
  *(v0 + 19056) = _Q0;
  *(v0 + 19072) = _Q0;
  *(v0 + 19088) = _Q0;
  *(v0 + 19104) = _Q0;
  *(v0 + 19120) = _Q0;
  *(v0 + 19136) = _Q0;
  *(v0 + 19152) = _Q0;
  *(v0 + 19168) = _Q0;
  *(v0 + 19184) = _Q0;
  *(v0 + 19200) = _Q0;
  *(v0 + 19216) = _Q0;
  *(v0 + 19232) = _Q0;
  *(v0 + 19248) = _Q0;
  *(v0 + 19264) = _Q0;
  *(v0 + 19280) = _Q0;
  *(v0 + 19296) = _Q0;
  *(v0 + 19392) = _Q0;
  *(v0 + 19632) = _Q0;
  *(v0 + 19648) = _Q0;
  *(v0 + 19664) = _Q0;
  *(v0 + 19680) = _Q0;
  *(v0 + 19696) = _Q0;
  *(v0 + 19712) = _Q0;
  *(v0 + 19728) = _Q0;
  *(v0 + 19744) = _Q0;
  *(v0 + 19760) = _Q0;
  *(v0 + 19776) = _Q0;
  *(v0 + 19808) = _Q0;
  *(v0 + 19856) = _Q0;
  *(v0 + 19888) = _Q0;
  *(v0 + 19904) = _Q0;
  *(v0 + 19920) = _Q0;
  *(v0 + 19936) = _Q0;
  *(v0 + 19952) = _Q0;
  *(v0 + 19968) = _Q0;
  *(v0 + 19984) = _Q0;
  *(v0 + 20000) = _Q0;
  *(v0 + 20016) = _Q0;
  *(v0 + 20032) = _Q0;
  *(v0 + 20048) = _Q0;
  *(v0 + 20064) = _Q0;
  *(v0 + 20080) = _Q0;
  *(v0 + 20096) = _Q0;
  *(v0 + 20112) = _Q0;
  *(v0 + 20128) = _Q0;
  *(v0 + 20144) = _Q0;
  *(v0 + 20160) = _Q0;
  *(v0 + 20176) = _Q0;
  *(v0 + 20192) = _Q0;
  *(v0 + 20208) = _Q0;
  *(v0 + 20224) = _Q0;
  *(v0 + 20240) = _Q0;
  *(v0 + 20256) = _Q0;
  *(v0 + 20272) = _Q0;
  *(v0 + 20288) = _Q0;
  *(v0 + 20304) = _Q0;
  *(v0 + 20320) = _Q0;
  *(v0 + 20336) = _Q0;
  *(v0 + 20352) = _Q0;
  *(v0 + 20368) = _Q0;
  *(v0 + 20384) = _Q0;
  *(v0 + 20400) = _Q0;
  *(v0 + 20416) = _Q0;
  *(v0 + 20432) = _Q0;
  *(v0 + 20448) = _Q0;
  *(v0 + 20464) = _Q0;
  *(v0 + 20480) = _Q0;
  *(v0 + 20496) = _Q0;
  *(v0 + 20512) = _Q0;
  *(v0 + 20608) = _Q0;
  *(v0 + 20656) = _Q0;
  *(v0 + 20848) = _Q0;
  *(v0 + 20864) = _Q0;
  *(v0 + 20880) = _Q0;
  *(v0 + 20896) = _Q0;
  *(v0 + 20912) = _Q0;
  *(v0 + 20928) = _Q0;
  *(v0 + 20944) = _Q0;
  *(v0 + 20960) = _Q0;
  *(v0 + 20976) = _Q0;
  *(v0 + 20992) = _Q0;
  *(v0 + 21024) = _Q0;
  *(v0 + 21072) = _Q0;
  *(v0 + 21104) = _Q0;
  *(v0 + 21120) = _Q0;
  *(v0 + 21136) = _Q0;
  *(v0 + 21152) = _Q0;
  *(v0 + 21168) = _Q0;
  *(v0 + 21184) = _Q0;
  *(v0 + 21200) = _Q0;
  *(v0 + 21216) = _Q0;
  *(v0 + 21232) = _Q0;
  *(v0 + 21248) = _Q0;
  *(v0 + 21264) = _Q0;
  *(v0 + 21280) = _Q0;
  *(v0 + 21296) = _Q0;
  *(v0 + 21312) = _Q0;
  *(v0 + 21328) = _Q0;
  *(v0 + 21344) = _Q0;
  *(v0 + 21360) = _Q0;
  *(v0 + 21376) = _Q0;
  *(v0 + 21392) = _Q0;
  *(v0 + 21408) = _Q0;
  *(v0 + 21424) = _Q0;
  *(v0 + 21440) = _Q0;
  *(v0 + 21456) = _Q0;
  *(v0 + 21472) = _Q0;
  *(v0 + 21488) = _Q0;
  *(v0 + 21504) = _Q0;
  *(v0 + 21520) = _Q0;
  *(v0 + 21536) = _Q0;
  *(v0 + 21552) = _Q0;
  *(v0 + 21568) = _Q0;
  *(v0 + 21584) = _Q0;
  *(v0 + 21600) = _Q0;
  *(v0 + 21616) = _Q0;
  *(v0 + 21632) = _Q0;
  *(v0 + 21648) = _Q0;
  *(v0 + 21664) = _Q0;
  *(v0 + 21680) = _Q0;
  *(v0 + 21696) = _Q0;
  *(v0 + 21712) = _Q0;
  *(v0 + 21728) = _Q0;
  *(v0 + 21824) = _Q0;
  *(v0 + 21872) = _Q0;
  result = 0.799999952;
  *(v0 + 21888) = xmmword_1BCE3D370;
  *(v0 + 7688) = 0x3FEEBEC600000000;
  *(v0 + 7712) = 0x3FF0000000000000;
  *(v0 + 7720) = 0;
  *(v0 + 18200) = 0x3FE99999A0000000;
  *(v0 + 18256) = 0x3FF0000000000000;
  *(v0 + 18272) = 0xC028000000000000;
  *(v0 + 18280) = 1;
  *(v0 + 18281) = *v26;
  *(v0 + 18284) = *&v26[3];
  *(v0 + 18312) = 1036831949;
  *(v0 + 18632) = 0x3FF0000000000000;
  *(v0 + 18656) = 0;
  *(v0 + 18664) = 1065353216;
  *(v0 + 19416) = 0x3FEAE14760000000;
  *(v0 + 19472) = 0x3FF0000000000000;
  *(v0 + 19488) = 0xC04E000000000002;
  *(v0 + 19496) = 1;
  *(v0 + 19497) = *v27;
  *(v0 + 19500) = *&v27[3];
  *(v0 + 19528) = 1040242952;
  *(v0 + 19848) = 0x3FF0000000000000;
  *(v0 + 19872) = 0;
  *(v0 + 19880) = 1065353216;
  *(v0 + 20632) = 0x3FEB89F0C0000000;
  *(v0 + 20688) = 0x3FF0000000000000;
  *(v0 + 20704) = 0xC056800000000000;
  *(v0 + 20712) = 1;
  *(v0 + 20713) = *v28;
  *(v0 + 20716) = *&v28[3];
  *(v0 + 20744) = 1040242952;
  *(v0 + 21064) = 0x3FF0000000000000;
  *(v0 + 21088) = 0;
  *(v0 + 21096) = 1065353216;
  *(v0 + 21848) = 0x3FEB89F080000000;
  *(v0 + 21904) = 0x3FF0000000000000;
  return result;
}

__n128 sub_1BCCE0828@<Q0>(uint64_t a1@<X8>)
{
  v2 = a1 + 1436;
  v3 = sub_1BCB87E8C();
  sub_1BCBBDC5C();
  *a1 = 0x4006666666666666;
  *(a1 + 8) = 1;
  *(a1 + 16) = 0x3FF0000000000000;
  *(a1 + 24) = 30;
  *(a1 + 32) = xmmword_1BCE3BED0;
  *(a1 + 48) = xmmword_1BCE3BED0;
  *(a1 + 64) = 0x42C8000042480000;
  *(a1 + 72) = 0xC396000000000000;
  *(a1 + 80) = xmmword_1BCE4B020;
  *(a1 + 96) = xmmword_1BCE3BEF0;
  *(a1 + 112) = 0x3E8000003DF5C28FLL;
  *(a1 + 128) = xmmword_1BCE3C7C0;
  *(a1 + 144) = xmmword_1BCE3D840;
  *(a1 + 160) = xmmword_1BCE3BF00;
  *(a1 + 176) = 1153138688;
  *(a1 + 184) = 0x3E4CCCCD3DA3D70ALL;
  *(a1 + 192) = xmmword_1BCE3C7C0;
  *(a1 + 208) = xmmword_1BCE3C700;
  *(a1 + 224) = xmmword_1BCE3C660;
  *(a1 + 240) = 0x4140000040A00000;
  *(a1 + 248) = 1132068864;
  *(a1 + 256) = 0x3E4CCCCD3DE147AELL;
  *(a1 + 264) = 0x40A0000041700000;
  *(a1 + 272) = 1101004800;
  __asm { FMOV            V0.4S, #1.0 }

  *(a1 + 288) = xmmword_1BCE3C7C0;
  *(a1 + 304) = result;
  *(a1 + 320) = 0x4348000040C00000;
  *(a1 + 328) = 0x3E99999A3E19999ALL;
  *(a1 + 336) = 0x3F00000040A00000;
  *(a1 + 352) = xmmword_1BCE3C7C0;
  *(a1 + 368) = xmmword_1BCE3C700;
  *(a1 + 384) = 0;
  *(a1 + 388) = 0x3B03126F3F800000;
  *(a1 + 400) = xmmword_1BCE3C670;
  *(a1 + 416) = 0x3F0000003F000000;
  *(a1 + 424) = 30;
  *(a1 + 432) = xmmword_1BCE3C680;
  *(a1 + 448) = 0x3E4CCCCD3DCCCCCDLL;
  *(a1 + 464) = result;
  *(a1 + 480) = xmmword_1BCE3D870;
  *(a1 + 496) = 0x43FA000040400000;
  *(a1 + 504) = 1116471296;
  *(a1 + 512) = 0x3E8000003DF5C28FLL;
  *(a1 + 528) = result;
  *(a1 + 544) = result;
  *(a1 + 560) = 0x4248000044BB8000;
  *(a1 + 568) = 0x3E4CCCCD3DA3D70ALL;
  *(a1 + 576) = xmmword_1BCE3C700;
  *(a1 + 592) = xmmword_1BCE3D880;
  *(a1 + 608) = 0x40C0000040800000;
  *(a1 + 624) = xmmword_1BCE3C700;
  *(a1 + 640) = xmmword_1BCE3D880;
  *(a1 + 656) = 0x419DAE1441200000;
  *(a1 + 664) = 0x401CCCCD3E99999ALL;
  *(a1 + 672) = 0x409800003F800000;
  *(a1 + 688) = result;
  *(a1 + 704) = 1065353216;
  *(a1 + 712) = vdup_n_s32(0x3E4CCCCDu);
  *(a1 + 720) = 0x418151EC41226666;
  *(a1 + 728) = 1077280320;
  *(a1 + 736) = 1;
  *(a1 + 744) = 8;
  *(a1 + 752) = xmmword_1BCE60B20;
  *(a1 + 768) = 0x617274736F746C41;
  *(a1 + 776) = 0xEF4C202D20737574;
  *(a1 + 784) = 0xD000000000000013;
  *(a1 + 792) = 0x80000001BCE798E0;
  *(a1 + 800) = 9;
  *(a1 + 816) = result;
  *(a1 + 832) = 1065353216;
  *(a1 + 840) = 0x3E99999A3E4CCCCDLL;
  *(a1 + 848) = 0x415C0000413C0000;
  *(a1 + 856) = 1097859072;
  *(a1 + 864) = 1;
  *(a1 + 872) = 6;
  *(a1 + 880) = xmmword_1BCE3FB40;
  *(a1 + 896) = 0x2073756C756D7543;
  *(a1 + 904) = 0xEB000000004C202DLL;
  *(a1 + 912) = 0x5F73756C756D7543;
  *(a1 + 920) = 0xEF4C656C676E6953;
  *(a1 + 928) = 10;
  *(a1 + 944) = result;
  *(a1 + 960) = 1065353216;
  *(a1 + 968) = 0x3ECCCCCD3E4CCCCDLL;
  *(a1 + 976) = 0x4124000040F80000;
  *(a1 + 984) = 1080466192;
  *(a1 + 992) = 1;
  *(a1 + 1000) = 6;
  *(a1 + 1008) = xmmword_1BCE60B30;
  *(a1 + 1024) = 0x2073756C756D7543;
  *(a1 + 1032) = 0xEB000000004D202DLL;
  *(a1 + 1040) = 0x5F73756C756D7543;
  *(a1 + 1048) = 0xEF4D656C676E6953;
  *(a1 + 1056) = 15;
  *(a1 + 1072) = result;
  *(a1 + 1088) = 1065353216;
  *(a1 + 1096) = 0x3F8000003F000000;
  *(a1 + 1104) = 0x400000003FC00000;
  *(a1 + 1112) = 0;
  *(a1 + 1120) = 1;
  *(a1 + 1128) = 4;
  *(a1 + 1136) = xmmword_1BCE3D8A0;
  *(a1 + 1152) = 0x617274736F746C41;
  *(a1 + 1160) = 0xEF53202D20737574;
  *(a1 + 1168) = 0xD000000000000013;
  *(a1 + 1176) = 0x80000001BCE792E0;
  *(a1 + 1184) = 6;
  *(a1 + 1200) = result;
  *(a1 + 1216) = xmmword_1BCE435B0;
  *(a1 + 1232) = 0;
  *(a1 + 1236) = 1;
  *(a1 + 1240) = 0x617274736F746C41;
  *(a1 + 1248) = 0xEB00000000737574;
  *(a1 + 1256) = 0xD000000000000013;
  *(a1 + 1264) = 0x80000001BCE79300;
  *(a1 + 1272) = 8;
  *(a1 + 1280) = 0;
  *(a1 + 1288) = 0x400000003F800000;
  *(a1 + 1296) = 0x41C8000042C80000;
  *(a1 + 1304) = 0;
  *(a1 + 1312) = result;
  *(a1 + 1328) = result;
  *(a1 + 1344) = 0;
  *(a1 + 1352) = 0x40000000;
  *(a1 + 1360) = 0;
  *(a1 + 1368) = 1;
  *(a1 + 1408) = 0u;
  *(a1 + 1392) = 0u;
  *(a1 + 1376) = 0u;
  *(a1 + 1424) = 0x3F99999A3ECCCCCDLL;
  *(a1 + 1432) = 1;
  *v2 = xmmword_1BCE3BFC0;
  *(a1 + 1456) = 0x41D3333341BD3333;
  *(a1 + 1472) = result;
  *(a1 + 1488) = result;
  *(a1 + 1504) = 1097859072;
  *(a1 + 1512) = 0x736168506E6F6F6DLL;
  *(a1 + 1520) = 0xEA00000000003065;
  *(a1 + 1528) = 1112014848;
  *(a1 + 1536) = result;
  *(a1 + 1552) = xmmword_1BCE3C770;
  *(a1 + 1568) = 0x4248000042200000;
  *(a1 + 1584) = 0u;
  *(a1 + 1600) = xmmword_1BCE3D880;
  __asm { FMOV            V2.2S, #-30.0 }

  *(a1 + 1616) = -_D2;
  *(a1 + 1624) = 0x40000000;
  *(a1 + 1632) = 0;
  *(a1 + 1628) = 0;
  *(v2 + 198) = 0x1000001010001;
  *(v2 + 206) = 0x10000;
  *(a1 + 1646) = 16843009;
  *(a1 + 1650) = 1;
  *(a1 + 1651) = 0;
  *(a1 + 1656) = 0;
  *(a1 + 1657) = v11;
  *(a1 + 1659) = v12;
  *(a1 + 1660) = 1066611507;
  *(a1 + 1664) = 0x40C0000040A00000;
  *(a1 + 1672) = 3;
  *(a1 + 1680) = xmmword_1BCE3C000;
  *(a1 + 1696) = xmmword_1BCE3C010;
  *(a1 + 1712) = xmmword_1BCE3C020;
  *(a1 + 1728) = 0x3F0000003EB33333;
  *(a1 + 1736) = 0x3E800000453B8000;
  *(a1 + 1760) = 0;
  *(a1 + 1744) = 0u;
  *(a1 + 1776) = xmmword_1BCE3D8B0;
  *(a1 + 1792) = xmmword_1BCE3D8C0;
  *(a1 + 1808) = xmmword_1BCE3C7A0;
  *(a1 + 1824) = 1;
  *(a1 + 1828) = xmmword_1BCE3C7B0;
  *(a1 + 1844) = 1036831949;
  *(a1 + 1848) = 0x4100000041200000;
  *(a1 + 1856) = 3;
  *(a1 + 1864) = 1056964608;
  *(a1 + 1872) = 0x400AE1483F970A3DLL;
  *(a1 + 1880) = 1109917696;
  *(a1 + 1888) = result;
  *(a1 + 1904) = 0x3E4CCCCD40A00000;
  *(a1 + 1912) = 1101004800;
  *(a1 + 1920) = 1;
  *(a1 + 1928) = 1106247680;
  *(a1 + 1936) = result;
  *(a1 + 1952) = 0x40000000;
  *(a1 + 1960) = 0x420C000041C80000;
  *(a1 + 1968) = xmmword_1BCE3EBC0;
  *(a1 + 1984) = 0x3F80000000000000;
  *(a1 + 1992) = 1061158912;
  *(a1 + 2000) = 0x3F6666663E4CCCCDLL;
  *(a1 + 2008) = 0x3F6666663F333333;
  *(a1 + 2016) = xmmword_1BCE3F500;
  *(a1 + 2096) = 0u;
  *(a1 + 2080) = 0u;
  *(a1 + 2064) = 0u;
  *(a1 + 2048) = 0u;
  *(a1 + 2032) = 0u;
  *(a1 + 2112) = 1056964608;
  *(a1 + 2120) = 0x3E4CCCCD3DCCCCCDLL;
  *(a1 + 2128) = 0x400000003F800000;
  *(a1 + 2136) = 0x4040000040000000;
  *(a1 + 2144) = -1046478848;
  *(a1 + 2160) = result;
  *(a1 + 2176) = result;
  *(a1 + 2192) = 1061997773;
  *(a1 + 2200) = 10;
  *(a1 + 2208) = 0x417000003F4CCCCDLL;
  *(a1 + 2224) = xmmword_1BCE55B80;
  *(a1 + 2240) = xmmword_1BCE43060;
  *(a1 + 2256) = result;
  *(a1 + 2304) = 0;
  *(a1 + 2288) = 0u;
  *(a1 + 2272) = 0u;
  *(a1 + 2312) = v3;
  *(a1 + 2320) = v10;
  return result;
}

uint64_t sub_1BCCE0F9C()
{
  v1 = type metadata accessor for UltravioletComplicationHourlyViewModel();
  OUTLINED_FUNCTION_2();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_2_0();
  v7 = v6 - v5;
  v8 = sub_1BCE19060();
  OUTLINED_FUNCTION_2();
  v10 = v9;
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_36_0();
  sub_1BCE197B0();
  sub_1BCD86020(v0, 0, 11);
  v13 = v12;
  v24 = v8;
  (*(v10 + 8))(v0, v8);
  v14 = *(v13 + 16);
  if (v14)
  {
    v15 = v13 + ((*(v10 + 80) + 32) & ~*(v10 + 80));
    v23 = *(v10 + 72);
    v16 = sub_1BCE1A080();
    v17 = (v10 + 16);
    v18 = MEMORY[0x1E69E7CC0];
    do
    {
      __swift_storeEnumTagSinglePayload(v7 + *(v1 + 20), 1, 1, v16);
      (*v17)(v7 + *(v1 + 24), v15, v24);
      sub_1BCE19460();
      sub_1BCE19080();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1BCB65864();
        v18 = v20;
      }

      v19 = *(v18 + 16);
      if (v19 >= *(v18 + 24) >> 1)
      {
        sub_1BCB65864();
        v18 = v21;
      }

      *(v18 + 16) = v19 + 1;
      sub_1BCCE2AD4(v7, v18 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v19);
      v15 += v23;
      --v14;
    }

    while (v14);
  }

  else
  {

    return MEMORY[0x1E69E7CC0];
  }

  return v18;
}

uint64_t sub_1BCCE1220@<X0>(uint64_t a1@<X8>)
{
  v3 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD07D88);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v30 - v6;
  v8 = sub_1BCE1A080();
  OUTLINED_FUNCTION_2();
  v10 = v9;
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_36_0();
  v12 = type metadata accessor for UltravioletComplicationHourlyViewModel();
  sub_1BCA45690(v3 + v12[5], v7);
  if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
  {
    sub_1BC94C05C(v7, &qword_1EBD07D88);
    if (qword_1EDA1BEA0 != -1)
    {
      OUTLINED_FUNCTION_9_1();
    }

    v31 = qword_1EDA1BEA8;
    v13 = ColorSpectrum.gradientStops.getter();
    v14 = v12[6];
    v15 = type metadata accessor for ComplicationHourlyGaugeViewModel();
    v16 = *(v15 + 24);
    sub_1BCE19060();
    OUTLINED_FUNCTION_4();
    (*(v17 + 16))(a1 + v16, v3 + v14);
    v18 = v12[7];
    v19 = *(v15 + 28);
    sub_1BCE19470();
    OUTLINED_FUNCTION_4();
    result = (*(v20 + 16))(a1 + v19, v3 + v18);
    *a1 = 0;
    *(a1 + 8) = 1;
  }

  else
  {
    (*(v10 + 32))(v2, v7, v8);
    v22 = sub_1BCE1A060() / 11.0;
    if (qword_1EDA1BEA0 != -1)
    {
      OUTLINED_FUNCTION_9_1();
    }

    v31 = qword_1EDA1BEA8;
    v13 = ColorSpectrum.gradientStops.getter();
    (*(v10 + 8))(v2, v8);
    v23 = v12[6];
    v24 = type metadata accessor for ComplicationHourlyGaugeViewModel();
    v25 = *(v24 + 24);
    sub_1BCE19060();
    OUTLINED_FUNCTION_4();
    (*(v26 + 16))(a1 + v25, v3 + v23);
    v27 = v12[7];
    v28 = *(v24 + 28);
    sub_1BCE19470();
    OUTLINED_FUNCTION_4();
    result = (*(v29 + 16))(a1 + v28, v3 + v27);
    *a1 = v22;
    *(a1 + 8) = 0;
  }

  *(a1 + 16) = v13;
  return result;
}

uint64_t UltravioletComplicationHourlyViewModel.id.getter()
{
  OUTLINED_FUNCTION_19_1();
  sub_1BCE19090();
  OUTLINED_FUNCTION_4();
  v4 = *(v3 + 16);

  return v4(v0, v1, v2);
}

uint64_t UltravioletComplicationHourlyViewModel.id.setter(uint64_t a1)
{
  sub_1BCE19090();
  OUTLINED_FUNCTION_4();
  v5 = *(v4 + 40);

  return v5(v1, a1, v3);
}

uint64_t UltravioletComplicationHourlyViewModel.uvi.getter()
{
  OUTLINED_FUNCTION_19_1();
  v2 = v1 + *(type metadata accessor for UltravioletComplicationHourlyViewModel() + 20);

  return sub_1BCA45690(v2, v0);
}

uint64_t type metadata accessor for UltravioletComplicationHourlyViewModel()
{
  result = qword_1EDA17368;
  if (!qword_1EDA17368)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t UltravioletComplicationHourlyViewModel.time.getter()
{
  OUTLINED_FUNCTION_19_1();
  v2 = *(type metadata accessor for UltravioletComplicationHourlyViewModel() + 24);
  sub_1BCE19060();
  OUTLINED_FUNCTION_4();
  v5 = *(v4 + 16);

  return v5(v0, v1 + v2, v3);
}

uint64_t UltravioletComplicationHourlyViewModel.timeZone.getter()
{
  OUTLINED_FUNCTION_19_1();
  v2 = *(type metadata accessor for UltravioletComplicationHourlyViewModel() + 28);
  sub_1BCE19470();
  OUTLINED_FUNCTION_4();
  v5 = *(v4 + 16);

  return v5(v0, v1 + v2, v3);
}

uint64_t UltravioletComplicationHourlyViewModel.init(uvi:time:timeZone:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  sub_1BCE19080();
  v8 = type metadata accessor for UltravioletComplicationHourlyViewModel();
  sub_1BCCE1860(a1, a4 + v8[5]);
  v9 = v8[6];
  sub_1BCE19060();
  OUTLINED_FUNCTION_4();
  (*(v10 + 32))(a4 + v9, a2);
  v11 = v8[7];
  sub_1BCE19470();
  OUTLINED_FUNCTION_4();
  v13 = *(v12 + 32);

  return v13(a4 + v11, a3);
}

uint64_t sub_1BCCE1860(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD07D88);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t static UltravioletComplicationHourlyViewModel.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v5 = sub_1BCE1A080();
  OUTLINED_FUNCTION_2();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_2_0();
  v11 = v10 - v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD07D88);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_36_0();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0C608);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v27 - v15;
  if ((sub_1BCE19070() & 1) == 0)
  {
    goto LABEL_14;
  }

  v17 = type metadata accessor for UltravioletComplicationHourlyViewModel();
  v18 = *(v17 + 20);
  v19 = *(v13 + 48);
  sub_1BCA45690(a1 + v18, v16);
  sub_1BCA45690(a2 + v18, &v16[v19]);
  OUTLINED_FUNCTION_8_0(v16);
  if (v20)
  {
    OUTLINED_FUNCTION_8_0(&v16[v19]);
    if (v20)
    {
      sub_1BC94C05C(v16, &qword_1EBD07D88);
      goto LABEL_12;
    }

LABEL_10:
    sub_1BC94C05C(v16, &qword_1EBD0C608);
LABEL_14:
    v25 = 0;
    return v25 & 1;
  }

  sub_1BCA45690(v16, v2);
  OUTLINED_FUNCTION_8_0(&v16[v19]);
  if (v20)
  {
    (*(v7 + 8))(v2, v5);
    goto LABEL_10;
  }

  (*(v7 + 32))(v11, &v16[v19], v5);
  OUTLINED_FUNCTION_2_2();
  sub_1BCCE273C(v21, v22);
  v23 = sub_1BCE1D210();
  v24 = *(v7 + 8);
  v24(v11, v5);
  v24(v2, v5);
  sub_1BC94C05C(v16, &qword_1EBD07D88);
  if ((v23 & 1) == 0)
  {
    goto LABEL_14;
  }

LABEL_12:
  if ((sub_1BCE19010() & 1) == 0)
  {
    goto LABEL_14;
  }

  v25 = MEMORY[0x1BFB2BB80](a1 + *(v17 + 28), a2 + *(v17 + 28));
  return v25 & 1;
}

uint64_t sub_1BCCE1B98(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_1BCE1E090() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 6911605 && a2 == 0xE300000000000000;
    if (v6 || (sub_1BCE1E090() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 1701669236 && a2 == 0xE400000000000000;
      if (v7 || (sub_1BCE1E090() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0x656E6F5A656D6974 && a2 == 0xE800000000000000)
      {

        return 3;
      }

      else
      {
        v9 = sub_1BCE1E090();

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

uint64_t sub_1BCCE1CE8(char a1)
{
  result = 25705;
  switch(a1)
  {
    case 1:
      result = 6911605;
      break;
    case 2:
      result = 1701669236;
      break;
    case 3:
      result = 0x656E6F5A656D6974;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1BCCE1D58@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1BCCE1B98(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1BCCE1D80(uint64_t a1)
{
  v2 = sub_1BCCE2064();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BCCE1DBC(uint64_t a1)
{
  v2 = sub_1BCCE2064();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t UltravioletComplicationHourlyViewModel.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0C618);
  OUTLINED_FUNCTION_2();
  v5 = v4;
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v18[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BCCE2064();
  sub_1BCE1E170();
  v18[15] = 0;
  sub_1BCE19090();
  OUTLINED_FUNCTION_7_54();
  sub_1BCCE273C(v9, v10);
  OUTLINED_FUNCTION_4_3();
  sub_1BCE1E020();
  if (!v1)
  {
    type metadata accessor for UltravioletComplicationHourlyViewModel();
    v18[14] = 1;
    sub_1BCE1A080();
    OUTLINED_FUNCTION_2_2();
    sub_1BCCE273C(v11, v12);
    OUTLINED_FUNCTION_4_3();
    sub_1BCE1DFC0();
    v18[13] = 2;
    sub_1BCE19060();
    OUTLINED_FUNCTION_6_51();
    sub_1BCCE273C(v13, v14);
    OUTLINED_FUNCTION_4_3();
    sub_1BCE1E020();
    v18[12] = 3;
    sub_1BCE19470();
    OUTLINED_FUNCTION_8_50();
    sub_1BCCE273C(v15, v16);
    OUTLINED_FUNCTION_4_3();
    sub_1BCE1E020();
  }

  return (*(v5 + 8))(v8, v3);
}

unint64_t sub_1BCCE2064()
{
  result = qword_1EBD0C620;
  if (!qword_1EBD0C620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD0C620);
  }

  return result;
}

uint64_t UltravioletComplicationHourlyViewModel.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v53 = a2;
  v55 = sub_1BCE19470();
  OUTLINED_FUNCTION_2();
  v52 = v4;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_2_0();
  v54 = v7 - v6;
  sub_1BCE19060();
  OUTLINED_FUNCTION_2();
  v58 = v9;
  v59 = v8;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_2_0();
  v56 = v11 - v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD07D88);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v51 - v13;
  v15 = sub_1BCE19090();
  OUTLINED_FUNCTION_2();
  v57 = v16;
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_2_0();
  v61 = v19 - v18;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0C628);
  OUTLINED_FUNCTION_2();
  v60 = v20;
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_36_0();
  v22 = type metadata accessor for UltravioletComplicationHourlyViewModel();
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_2_0();
  v26 = v25 - v24;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BCCE2064();
  v62 = v2;
  v27 = v64;
  sub_1BCE1E160();
  if (v27)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v64 = v22;
  v28 = v26;
  v30 = v57;
  v29 = v58;
  v31 = v59;
  v68 = 0;
  OUTLINED_FUNCTION_7_54();
  sub_1BCCE273C(v32, v33);
  sub_1BCE1DF70();
  v34 = *(v30 + 32);
  v35 = v28;
  v36 = v61;
  v61 = v15;
  v34(v28, v36);
  sub_1BCE1A080();
  v67 = 1;
  OUTLINED_FUNCTION_2_2();
  sub_1BCCE273C(v37, v38);
  sub_1BCE1DF10();
  sub_1BCCE1860(v14, v28 + v64[5]);
  v66 = 2;
  OUTLINED_FUNCTION_6_51();
  sub_1BCCE273C(v39, v40);
  v41 = v56;
  v51 = 0;
  sub_1BCE1DF70();
  v42 = v29;
  v43 = a1;
  (*(v42 + 32))(v35 + v64[6], v41, v31);
  v65 = 3;
  OUTLINED_FUNCTION_8_50();
  sub_1BCCE273C(v44, v45);
  v46 = v54;
  v47 = v55;
  sub_1BCE1DF70();
  v48 = OUTLINED_FUNCTION_5_55();
  v49(v48);
  (*(v52 + 32))(v35 + v64[7], v46, v47);
  sub_1BCCE2690(v35, v53);
  __swift_destroy_boxed_opaque_existential_1(v43);
  return sub_1BCC7CC48(v35);
}

uint64_t sub_1BCCE2690(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UltravioletComplicationHourlyViewModel();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BCCE273C(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1BCCE27E4()
{
  sub_1BCE19090();
  if (v0 <= 0x3F)
  {
    sub_1BCCE2898();
    if (v1 <= 0x3F)
    {
      sub_1BCE19060();
      if (v2 <= 0x3F)
      {
        sub_1BCE19470();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1BCCE2898()
{
  if (!qword_1EDA1BE80)
  {
    sub_1BCE1A080();
    v0 = sub_1BCE1DB10();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDA1BE80);
    }
  }
}

_BYTE *storeEnumTagSinglePayload for UltravioletComplicationHourlyViewModel.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1BCCE29D0()
{
  result = qword_1EBD0C630;
  if (!qword_1EBD0C630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD0C630);
  }

  return result;
}

unint64_t sub_1BCCE2A28()
{
  result = qword_1EBD0C638;
  if (!qword_1EBD0C638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD0C638);
  }

  return result;
}

unint64_t sub_1BCCE2A80()
{
  result = qword_1EBD0C640;
  if (!qword_1EBD0C640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD0C640);
  }

  return result;
}

uint64_t sub_1BCCE2AD4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UltravioletComplicationHourlyViewModel();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t ApparentPrecipitationIntensity.standaloneDescription.getter()
{
  sub_1BCE19F80();
  OUTLINED_FUNCTION_2_1();
  v2 = v1;
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BCE19F20();
  if (v6 <= 0.0)
  {
    if (qword_1EDA1EFB0 != -1)
    {
      OUTLINED_FUNCTION_0();
    }

    OUTLINED_FUNCTION_7();
    swift_beginAccess();
    v8 = qword_1EDA1EFB8;
    OUTLINED_FUNCTION_7();
    v7 = sub_1BCE18B60();
  }

  else
  {
    sub_1BCE19F30();
    v7 = ApparentPrecipitationIntensityCategory.standaloneDescription.getter();
    (*(v2 + 8))(v5, v0);
  }

  return v7;
}

uint64_t ApparentPrecipitationIntensityCategory.standaloneDescription.getter()
{
  v2 = v1;
  sub_1BCE19F80();
  OUTLINED_FUNCTION_2_1();
  v4 = v3;
  v6 = MEMORY[0x1EEE9AC00](v5);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v8, v2, v0, v6);
  v9 = (*(v4 + 88))(v8, v0);
  if (v9 == *MEMORY[0x1E6985250])
  {
    if (qword_1EDA1EFB0 == -1)
    {
      goto LABEL_6;
    }

    goto LABEL_12;
  }

  if (v9 == *MEMORY[0x1E6985258])
  {
    if (qword_1EDA1EFB0 == -1)
    {
      goto LABEL_6;
    }

LABEL_12:
    OUTLINED_FUNCTION_0();
    goto LABEL_6;
  }

  if (v9 != *MEMORY[0x1E6985248])
  {
    (*(v4 + 8))(v8, v0);
    return 0;
  }

  if (qword_1EDA1EFB0 != -1)
  {
    goto LABEL_12;
  }

LABEL_6:
  OUTLINED_FUNCTION_7();
  swift_beginAccess();
  v10 = qword_1EDA1EFB8;
  OUTLINED_FUNCTION_1_69();
  OUTLINED_FUNCTION_7();
  v11 = sub_1BCE18B60();

  return v11;
}

double sub_1BCCE2F9C@<D0>(void *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD07990);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1BCE41A20;
  *(v2 + 32) = 0xC056800000000000;
  *(v2 + 40) = 0;
  result = 0.0915142852;
  *(v2 + 48) = xmmword_1BCE60D90;
  *(v2 + 64) = xmmword_1BCE60DA0;
  *(v2 + 80) = xmmword_1BCE60DB0;
  *(v2 + 96) = xmmword_1BCE60DC0;
  *(v2 + 112) = xmmword_1BCE60DD0;
  *(v2 + 128) = xmmword_1BCE60DE0;
  *(v2 + 144) = xmmword_1BCE41A90;
  *(v2 + 160) = 0;
  *(v2 + 168) = xmmword_1BCE60D90;
  *(v2 + 184) = xmmword_1BCE60DA0;
  *(v2 + 200) = xmmword_1BCE60DB0;
  *(v2 + 216) = xmmword_1BCE60DC0;
  *(v2 + 232) = xmmword_1BCE60DD0;
  *(v2 + 248) = xmmword_1BCE60DE0;
  *(v2 + 264) = 0x3FE0000000000000;
  *(v2 + 272) = 0xC03E000000000000;
  *(v2 + 280) = 0;
  *(v2 + 288) = xmmword_1BCE60D90;
  *(v2 + 304) = xmmword_1BCE60DA0;
  *(v2 + 320) = xmmword_1BCE60DB0;
  *(v2 + 336) = xmmword_1BCE60DC0;
  *(v2 + 352) = xmmword_1BCE60DD0;
  *(v2 + 368) = xmmword_1BCE60DE0;
  *(v2 + 384) = xmmword_1BCE41AA0;
  *(v2 + 400) = 0;
  *(v2 + 408) = 0x3FB7171740000002;
  *(v2 + 416) = xmmword_1BCE60DF0;
  *(v2 + 432) = xmmword_1BCE60E00;
  *(v2 + 448) = xmmword_1BCE60E10;
  *(v2 + 464) = xmmword_1BCE4ED70;
  *(v2 + 480) = xmmword_1BCE60E20;
  *(v2 + 496) = xmmword_1BCE3C8C0;
  *(v2 + 512) = 0xC028000000000000;
  *(v2 + 520) = 0;
  *(v2 + 528) = xmmword_1BCE60E30;
  *(v2 + 544) = xmmword_1BCE60E40;
  *(v2 + 560) = xmmword_1BCE4ED40;
  *(v2 + 576) = xmmword_1BCE60E50;
  *(v2 + 592) = xmmword_1BCE60E60;
  *(v2 + 608) = xmmword_1BCE60E70;
  *(v2 + 624) = xmmword_1BCE41B60;
  *(v2 + 640) = 0;
  *(v2 + 648) = 0x3FD8181820000000;
  *(v2 + 656) = xmmword_1BCE60E80;
  *(v2 + 672) = xmmword_1BCE60E90;
  *(v2 + 688) = xmmword_1BCE60EA0;
  *(v2 + 704) = xmmword_1BCE60EB0;
  *(v2 + 720) = xmmword_1BCE60EC0;
  *(v2 + 736) = xmmword_1BCE3C8C0;
  *(v2 + 752) = 0;
  *(v2 + 760) = 0;
  *(v2 + 761) = *v4;
  *(v2 + 764) = *&v4[3];
  *(v2 + 768) = xmmword_1BCE60ED0;
  *(v2 + 784) = xmmword_1BCE60EE0;
  *(v2 + 800) = xmmword_1BCE60EF0;
  *(v2 + 816) = xmmword_1BCE60F00;
  *(v2 + 832) = xmmword_1BCE60F10;
  *(v2 + 848) = xmmword_1BCE60F20;
  *(v2 + 864) = xmmword_1BCE41C20;
  *(v2 + 880) = 0;
  *(v2 + 881) = *v5;
  *(v2 + 884) = *&v5[3];
  *(v2 + 888) = 0x3FE111E8AA0AD765;
  *(v2 + 896) = xmmword_1BCE60F30;
  *(v2 + 912) = xmmword_1BCE60F40;
  *(v2 + 928) = xmmword_1BCE60F50;
  *(v2 + 944) = xmmword_1BCE60F60;
  *(v2 + 960) = xmmword_1BCE60F70;
  *(v2 + 976) = xmmword_1BCE3C8C0;
  *(v2 + 992) = 0x4028000000000000;
  *(v2 + 1000) = 0;
  *(v2 + 1004) = *&v6[3];
  *(v2 + 1001) = *v6;
  *(v2 + 1008) = xmmword_1BCE60F80;
  *(v2 + 1024) = xmmword_1BCE60F90;
  *(v2 + 1040) = xmmword_1BCE60FA0;
  *(v2 + 1056) = xmmword_1BCE60FB0;
  *(v2 + 1072) = xmmword_1BCE60FC0;
  *(v2 + 1088) = xmmword_1BCE60FD0;
  *(v2 + 1104) = xmmword_1BCE41CE0;
  *(v2 + 1120) = 0;
  *(v2 + 1121) = *v7;
  *(v2 + 1124) = *&v7[3];
  *(v2 + 1128) = 0x3FE1BDE0C5056B9BLL;
  *(v2 + 1136) = xmmword_1BCE60FE0;
  *(v2 + 1152) = xmmword_1BCE60FF0;
  *(v2 + 1168) = xmmword_1BCE61000;
  *(v2 + 1184) = xmmword_1BCE61010;
  *(v2 + 1200) = xmmword_1BCE61020;
  *(v2 + 1216) = xmmword_1BCE3C8C0;
  *(v2 + 1232) = 0x403E000000000000;
  *(v2 + 1240) = 0;
  *(v2 + 1244) = *&v8[3];
  *(v2 + 1241) = *v8;
  *(v2 + 1248) = xmmword_1BCE61030;
  *(v2 + 1264) = xmmword_1BCE61040;
  *(v2 + 1280) = xmmword_1BCE61050;
  *(v2 + 1296) = xmmword_1BCE61060;
  *(v2 + 1312) = xmmword_1BCE61070;
  *(v2 + 1328) = xmmword_1BCE61080;
  *(v2 + 1344) = xmmword_1BCE41DA0;
  *(v2 + 1360) = 0;
  *(v2 + 1364) = *&v9[3];
  *(v2 + 1361) = *v9;
  *(v2 + 1368) = 0x3FE269D8E000002ALL;
  *(v2 + 1376) = xmmword_1BCE61090;
  *(v2 + 1392) = xmmword_1BCE610A0;
  *(v2 + 1408) = xmmword_1BCE610B0;
  *(v2 + 1424) = xmmword_1BCE610C0;
  *(v2 + 1440) = xmmword_1BCE610D0;
  *(v2 + 1456) = xmmword_1BCE3C8C0;
  *(v2 + 1472) = 0x4056800000000000;
  *(v2 + 1480) = 1;
  *(v2 + 1484) = *&v10[3];
  *(v2 + 1481) = *v10;
  *(v2 + 1488) = xmmword_1BCE610E0;
  *(v2 + 1504) = xmmword_1BCE610F0;
  *(v2 + 1520) = xmmword_1BCE61100;
  *(v2 + 1536) = xmmword_1BCE61110;
  *(v2 + 1552) = xmmword_1BCE61120;
  *(v2 + 1568) = xmmword_1BCE4C4D0;
  *(v2 + 1584) = xmmword_1BCE41DA0;
  *(v2 + 1600) = 1;
  *(v2 + 1604) = *&v11[3];
  *(v2 + 1601) = *v11;
  *(v2 + 1608) = 0x3FE269D8E000002ALL;
  *(v2 + 1616) = xmmword_1BCE61090;
  *(v2 + 1632) = xmmword_1BCE610A0;
  *(v2 + 1648) = xmmword_1BCE610B0;
  *(v2 + 1664) = xmmword_1BCE610C0;
  *(v2 + 1680) = xmmword_1BCE610D0;
  *(v2 + 1696) = xmmword_1BCE3C8C0;
  *(v2 + 1712) = 0x403E000000000000;
  *(v2 + 1720) = 1;
  *(v2 + 1724) = *&v12[3];
  *(v2 + 1721) = *v12;
  *(v2 + 1728) = xmmword_1BCE61130;
  *(v2 + 1744) = xmmword_1BCE61140;
  *(v2 + 1760) = xmmword_1BCE61150;
  *(v2 + 1776) = xmmword_1BCE61160;
  *(v2 + 1792) = xmmword_1BCE61170;
  *(v2 + 1808) = xmmword_1BCE61180;
  *(v2 + 1824) = xmmword_1BCE41CE0;
  *(v2 + 1840) = 1;
  *(v2 + 1844) = *&v13[3];
  *(v2 + 1841) = *v13;
  *(v2 + 1848) = 0x3FE1BBCD4D46DDD5;
  *(v2 + 1856) = xmmword_1BCE61190;
  *(v2 + 1872) = xmmword_1BCE611A0;
  *(v2 + 1888) = xmmword_1BCE611B0;
  *(v2 + 1904) = xmmword_1BCE611C0;
  *(v2 + 1920) = xmmword_1BCE611D0;
  *(v2 + 1936) = xmmword_1BCE3C8C0;
  *(v2 + 1952) = 0x4028000000000000;
  *(v2 + 1960) = 1;
  *(v2 + 1964) = *&v14[3];
  *(v2 + 1961) = *v14;
  *(v2 + 1968) = xmmword_1BCE611E0;
  *(v2 + 1984) = xmmword_1BCE611F0;
  *(v2 + 2000) = xmmword_1BCE61200;
  *(v2 + 2016) = xmmword_1BCE61210;
  *(v2 + 2032) = xmmword_1BCE61220;
  *(v2 + 2048) = xmmword_1BCE61230;
  *(v2 + 2064) = xmmword_1BCE41C20;
  *(v2 + 2080) = 1;
  *(v2 + 2084) = *&v15[3];
  *(v2 + 2081) = *v15;
  *(v2 + 2088) = 0x3FE110EBD47E7ACBLL;
  *(v2 + 2096) = xmmword_1BCE61240;
  *(v2 + 2112) = xmmword_1BCE61250;
  *(v2 + 2128) = xmmword_1BCE61260;
  *(v2 + 2144) = xmmword_1BCE61270;
  *(v2 + 2160) = xmmword_1BCE61280;
  *(v2 + 2176) = xmmword_1BCE3C8C0;
  *(v2 + 2192) = 0;
  *(v2 + 2200) = 1;
  *(v2 + 2204) = *&v16[3];
  *(v2 + 2201) = *v16;
  *(v2 + 2208) = xmmword_1BCE61290;
  *(v2 + 2224) = xmmword_1BCE612A0;
  *(v2 + 2240) = xmmword_1BCE612B0;
  *(v2 + 2256) = xmmword_1BCE612C0;
  *(v2 + 2272) = xmmword_1BCE612D0;
  *(v2 + 2288) = xmmword_1BCE612E0;
  *(v2 + 2304) = xmmword_1BCE41B60;
  *(v2 + 2320) = 1;
  *(v2 + 2324) = *&v17[3];
  *(v2 + 2321) = *v17;
  *(v2 + 2328) = 0x3FD7575760000000;
  *(v2 + 2336) = xmmword_1BCE612F0;
  *(v2 + 2352) = xmmword_1BCE61300;
  *(v2 + 2368) = xmmword_1BCE61310;
  *(v2 + 2384) = xmmword_1BCE61320;
  *(v2 + 2400) = xmmword_1BCE61330;
  *(v2 + 2416) = xmmword_1BCE3C8C0;
  *(v2 + 2432) = 0xC028000000000000;
  *(v2 + 2440) = 1;
  *(v2 + 2444) = *&v18[3];
  *(v2 + 2441) = *v18;
  *(v2 + 2448) = xmmword_1BCE61340;
  *(v2 + 2464) = xmmword_1BCE61350;
  *(v2 + 2480) = xmmword_1BCE61360;
  *(v2 + 2496) = xmmword_1BCE61370;
  *(v2 + 2512) = xmmword_1BCE61380;
  *(v2 + 2528) = xmmword_1BCE60E50;
  *(v2 + 2544) = xmmword_1BCE41AA0;
  *(v2 + 2560) = 1;
  *(v2 + 2564) = *&v19[3];
  *(v2 + 2561) = *v19;
  *(v2 + 2568) = 0x3FB7171740000002;
  *(v2 + 2576) = xmmword_1BCE60DF0;
  *(v2 + 2592) = xmmword_1BCE60E00;
  *(v2 + 2608) = xmmword_1BCE60E10;
  *(v2 + 2624) = xmmword_1BCE4ED70;
  *(v2 + 2640) = xmmword_1BCE60E20;
  *(v2 + 2656) = xmmword_1BCE3C8C0;
  *(v2 + 2672) = 0xC03E000000000000;
  *(v2 + 2680) = 1;
  *(v2 + 2684) = *&v20[3];
  *(v2 + 2681) = *v20;
  *(v2 + 2688) = xmmword_1BCE60D90;
  *(v2 + 2704) = xmmword_1BCE60DA0;
  *(v2 + 2720) = xmmword_1BCE60DB0;
  *(v2 + 2736) = xmmword_1BCE60DC0;
  *(v2 + 2752) = xmmword_1BCE60DD0;
  *(v2 + 2768) = xmmword_1BCE60DE0;
  *(v2 + 2784) = xmmword_1BCE41A90;
  *(v2 + 2800) = 1;
  *(v2 + 2804) = *&v21[3];
  *(v2 + 2801) = *v21;
  *(v2 + 2808) = 0x3FB76D7AEE38E3FELL;
  *(v2 + 2816) = xmmword_1BCE61390;
  *(v2 + 2832) = xmmword_1BCE613A0;
  *(v2 + 2848) = xmmword_1BCE613B0;
  *(v2 + 2864) = xmmword_1BCE613C0;
  *(v2 + 2880) = xmmword_1BCE613D0;
  *(v2 + 2896) = xmmword_1BCE3C8C0;
  *(v2 + 2912) = 0xC056800000000000;
  *(v2 + 2920) = 1;
  *(v2 + 2924) = *&v22[3];
  *(v2 + 2921) = *v22;
  *(v2 + 2928) = xmmword_1BCE60D90;
  *(v2 + 2944) = xmmword_1BCE60DA0;
  *(v2 + 2960) = xmmword_1BCE60DB0;
  *(v2 + 2976) = xmmword_1BCE60DC0;
  *(v2 + 2992) = xmmword_1BCE60DD0;
  *(v2 + 3008) = xmmword_1BCE60DE0;
  *(v2 + 3024) = 0x3FE0000000000000;
  *a1 = 0x3FFB333333333333;
  a1[1] = v2;
  return result;
}

void sub_1BCCE38A0(uint64_t a1@<X8>)
{
  v2 = a1 + 1436;
  sub_1BCCE4068();
  v4 = v3;
  sub_1BCA99FB4();
  *a1 = 0x4006666666666666;
  *(a1 + 8) = 5;
  *(a1 + 16) = 0x3FF0000000000000;
  *(a1 + 24) = 48;
  *(a1 + 32) = xmmword_1BCE3BED0;
  *(a1 + 48) = xmmword_1BCE3BED0;
  *(a1 + 64) = 0x42C8000042480000;
  *(a1 + 72) = 0xC422800000000000;
  *(a1 + 80) = xmmword_1BCE3E630;
  *(a1 + 96) = xmmword_1BCE613E0;
  *(a1 + 112) = 0x3F51EB853EF5C28FLL;
  *(a1 + 128) = xmmword_1BCE42AF0;
  *(a1 + 144) = xmmword_1BCE3E660;
  *(a1 + 160) = xmmword_1BCE43F40;
  *(a1 + 176) = 1153138688;
  *(a1 + 184) = 0x3F19999A3E99999ALL;
  *(a1 + 192) = xmmword_1BCE40310;
  *(a1 + 208) = xmmword_1BCE42B10;
  *(a1 + 224) = xmmword_1BCE42B20;
  *(a1 + 240) = 0x4140000040A00000;
  *(a1 + 248) = 1132068864;
  *(a1 + 256) = 0x3E4CCCCD3DE147AELL;
  *(a1 + 264) = 0x40A0000041700000;
  *(a1 + 272) = 1101004800;
  __asm { FMOV            V0.4S, #1.0 }

  *(a1 + 288) = xmmword_1BCE3C7C0;
  *(a1 + 304) = _Q0;
  *(a1 + 320) = 0x4348000040C00000;
  *(a1 + 328) = 0x3E99999A3E19999ALL;
  *(a1 + 336) = 0x3F00000040A00000;
  *(a1 + 352) = xmmword_1BCE3C7C0;
  *(a1 + 368) = xmmword_1BCE3C700;
  *(a1 + 384) = 0;
  *(a1 + 388) = 0x3CA3D70A3F800000;
  *(a1 + 400) = xmmword_1BCE3BF20;
  *(a1 + 416) = 0x3F0000003F000000;
  *(a1 + 424) = 10;
  *(a1 + 432) = xmmword_1BCE3BF30;
  *(a1 + 448) = 0x3E4CCCCD3DCCCCCDLL;
  *(a1 + 464) = _Q0;
  *(a1 + 480) = xmmword_1BCE3D870;
  *(a1 + 496) = 0x43FA000040400000;
  *(a1 + 504) = 1116471296;
  *(a1 + 512) = 0x3E8000003DF5C28FLL;
  *(a1 + 528) = _Q0;
  *(a1 + 544) = _Q0;
  *(a1 + 560) = 0x4248000044BB8000;
  *(a1 + 568) = 0x3E4CCCCD3DA3D70ALL;
  *(a1 + 576) = xmmword_1BCE3C700;
  *(a1 + 592) = xmmword_1BCE3D880;
  *(a1 + 608) = 0x40E0000040C00000;
  *(a1 + 624) = xmmword_1BCE3C700;
  *(a1 + 640) = xmmword_1BCE3D880;
  *(a1 + 656) = 0x4220000041200000;
  *(a1 + 664) = 0x3FC000003E99999ALL;
  *(a1 + 672) = 0x40C0000040400000;
  *(a1 + 688) = _Q0;
  *(a1 + 704) = 1065353216;
  *(a1 + 712) = 0x3F19999A3E99999ALL;
  *(a1 + 720) = 0x41C0000041A00000;
  *(a1 + 728) = 1099534559;
  *(a1 + 736) = 1;
  *(a1 + 744) = 4;
  *(a1 + 752) = xmmword_1BCE3BF40;
  *(a1 + 768) = 0xD000000000000010;
  *(a1 + 776) = 0x80000001BCE79860;
  *(a1 + 784) = 0xD000000000000014;
  *(a1 + 792) = 0x80000001BCE79880;
  *(a1 + 800) = 10;
  *(a1 + 816) = _Q0;
  *(a1 + 832) = 1065353216;
  *(a1 + 840) = 0x3F4CCCCD3ECCCCCDLL;
  *(a1 + 848) = 0x4180CCCD41380000;
  *(a1 + 856) = 1081738482;
  *(a1 + 864) = 1;
  *(a1 + 872) = 4;
  *(a1 + 880) = xmmword_1BCE3E0B0;
  *(a1 + 896) = 0xD000000000000010;
  *(a1 + 904) = 0x80000001BCE7A1D0;
  *(a1 + 912) = 0xD000000000000014;
  *(a1 + 920) = 0x80000001BCE7A1F0;
  *(a1 + 928) = 10;
  *(a1 + 944) = _Q0;
  *(a1 + 960) = 1065353216;
  *(a1 + 968) = 0x3F0000003E4CCCCDLL;
  *(a1 + 976) = 0x4180000041400000;
  *(a1 + 984) = 1065400256;
  *(a1 + 992) = 1;
  *(a1 + 1000) = 4;
  *(a1 + 1008) = xmmword_1BCE3C6F0;
  *(a1 + 1024) = 0x2073756C756D7543;
  *(a1 + 1032) = 0xEB000000004D202DLL;
  *(a1 + 1040) = 0x5F73756C756D7543;
  *(a1 + 1048) = 0xEF4D656C676E6953;
  *(a1 + 1056) = 15;
  *(a1 + 1072) = _Q0;
  *(a1 + 1088) = 1065353216;
  *(a1 + 1096) = 0x3F3333333F000000;
  *(a1 + 1104) = 0x4083020C40212F1BLL;
  *(a1 + 1112) = 1086691738;
  *(a1 + 1120) = 0;
  *(a1 + 1128) = 4;
  *(a1 + 1136) = xmmword_1BCE3D8A0;
  *(a1 + 1152) = 0x7970736957;
  *(a1 + 1160) = 0xE500000000000000;
  strcpy((a1 + 1168), "Wispy_Single");
  *(a1 + 1181) = 0;
  *(a1 + 1182) = -5120;
  *(a1 + 1184) = 6;
  *(a1 + 1200) = _Q0;
  *(a1 + 1216) = xmmword_1BCE613F0;
  *(a1 + 1232) = 0;
  *(a1 + 1236) = 1;
  *(a1 + 1240) = 0x73757461727453;
  *(a1 + 1248) = 0xE700000000000000;
  *(a1 + 1256) = 0x5F73757461727453;
  *(a1 + 1264) = 0xEF74656B6E616C42;
  *(a1 + 1272) = 8;
  *(a1 + 1280) = 0;
  *(a1 + 1288) = 0x3FAA3D703F88F5C2;
  *(a1 + 1296) = 0x41A0000042B40000;
  *(a1 + 1304) = 0;
  *(a1 + 1312) = _Q0;
  *(a1 + 1328) = _Q0;
  *(a1 + 1344) = 0;
  *(a1 + 1352) = 0x40000000;
  *(a1 + 1360) = 0;
  *(a1 + 1368) = 2;
  *(a1 + 1408) = 0u;
  *(a1 + 1392) = 0u;
  *(a1 + 1376) = 0u;
  *(a1 + 1424) = 0x3F99999A3ECCCCCDLL;
  *(a1 + 1432) = 1;
  *v2 = xmmword_1BCE3BFC0;
  *(a1 + 1456) = 0x42DC000042B40000;
  *(a1 + 1472) = _Q0;
  *(a1 + 1488) = _Q0;
  *(a1 + 1504) = 1097859072;
  *(a1 + 1512) = 0x736168506E6F6F6DLL;
  *(a1 + 1520) = 0xEA00000000003065;
  *(a1 + 1528) = 1112014848;
  *(a1 + 1536) = _Q0;
  *(a1 + 1552) = xmmword_1BCE3F4F0;
  *(a1 + 1568) = 0x4248000042200000;
  *(a1 + 1584) = 0u;
  *(a1 + 1600) = xmmword_1BCE3D880;
  __asm { FMOV            V1.2S, #-30.0 }

  *(a1 + 1616) = -_D1;
  *(a1 + 1624) = 0x40000000;
  *(a1 + 1628) = 256;
  *(a1 + 1636) = 0;
  *(a1 + 1630) = 0;
  *(v2 + 208) = 0x1000101010001;
  *(a1 + 1652) = 1;
  *(a1 + 1656) = 0;
  *(a1 + 1657) = v12;
  *(a1 + 1659) = v13;
  *(a1 + 1660) = 1066611507;
  *(a1 + 1664) = 0x40C0000040A00000;
  *(a1 + 1672) = 3;
  *(a1 + 1680) = xmmword_1BCE3C000;
  *(a1 + 1696) = xmmword_1BCE3C010;
  *(a1 + 1712) = xmmword_1BCE3C020;
  *(a1 + 1728) = 0x3F0000003EB33333;
  *(a1 + 1736) = 0x3E800000453B8000;
  *(a1 + 1744) = 0u;
  *(a1 + 1760) = 9;
  *(a1 + 1776) = xmmword_1BCE3D8B0;
  *(a1 + 1792) = xmmword_1BCE3D8C0;
  *(a1 + 1808) = xmmword_1BCE3C7A0;
  *(a1 + 1824) = 1;
  *(a1 + 1828) = xmmword_1BCE3C060;
  *(a1 + 1844) = 1040187392;
  *(a1 + 1848) = 0x4100000041700000;
  *(a1 + 1856) = 3;
  *(a1 + 1864) = 0x40000000;
  *(a1 + 1872) = 0x408000003F400000;
  *(a1 + 1880) = 1109393408;
  *(a1 + 1888) = _Q0;
  *(a1 + 1904) = 0x3DCCCCCD00000000;
  *(a1 + 1912) = 1101004800;
  *(a1 + 1920) = 0;
  *(a1 + 1928) = 1107820544;
  *(a1 + 1936) = _Q0;
  *(a1 + 1952) = 1077936128;
  *(a1 + 1960) = 0x420C000041C80000;
  *(a1 + 1968) = xmmword_1BCE403A0;
  *(a1 + 1984) = 0x3F80000000000000;
  *(a1 + 1992) = 1061158912;
  *(a1 + 2000) = 0x407333333FB33333;
  *(a1 + 2008) = 0x408000004019999ALL;
  *(a1 + 2016) = xmmword_1BCE3C7E0;
  *(a1 + 2096) = 0u;
  *(a1 + 2080) = 0u;
  *(a1 + 2064) = 0u;
  *(a1 + 2048) = 0u;
  *(a1 + 2032) = 0u;
  *(a1 + 2112) = 1056964608;
  *(a1 + 2120) = 0x3F19999A3E4CCCCDLL;
  *(a1 + 2128) = 0x3F99999A3F666666;
  *(a1 + 2136) = 0x4160000041200000;
  *(a1 + 2144) = -1039663104;
  *(a1 + 2160) = _Q0;
  *(a1 + 2176) = _Q0;
  *(a1 + 2192) = 1056964608;
  *(a1 + 2200) = 17;
  *(a1 + 2208) = 0x41A000003F800000;
  *(a1 + 2224) = xmmword_1BCE42410;
  *(a1 + 2240) = xmmword_1BCE61400;
  *(a1 + 2256) = _Q0;
  *(a1 + 2304) = 0;
  *(a1 + 2288) = 0u;
  *(a1 + 2272) = 0u;
  *(a1 + 2312) = v4;
  *(a1 + 2320) = v11;
}

double sub_1BCCE4068()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD07858);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1BCE3EBD0;
  *(v0 + 48) = xmmword_1BCE3F6C0;
  *(v0 + 64) = 0x4120000043480000;
  *(v0 + 80) = xmmword_1BCE3E140;
  *(v0 + 96) = xmmword_1BCE3E150;
  *(v0 + 112) = xmmword_1BCE3F6D0;
  *(v0 + 128) = xmmword_1BCE3F550;
  *(v0 + 2272) = xmmword_1BCE61410;
  *(v0 + 2944) = xmmword_1BCE42C60;
  *(v0 + 2960) = xmmword_1BCE42C70;
  *(v0 + 2976) = xmmword_1BCE42C80;
  *(v0 + 3040) = xmmword_1BCE42CB0;
  *(v0 + 4912) = xmmword_1BCE3CE40;
  *(v0 + 6128) = xmmword_1BCE3CE40;
  *(v0 + 4928) = 1149861888;
  *(v0 + 6144) = 1149861888;
  *(v0 + 4944) = xmmword_1BCE42DB0;
  *(v0 + 6160) = xmmword_1BCE42DB0;
  *(v0 + 4976) = xmmword_1BCE42DC0;
  *(v0 + 6192) = xmmword_1BCE42DC0;
  *(v0 + 4992) = xmmword_1BCE42DD0;
  *(v0 + 6208) = xmmword_1BCE42DD0;
  *(v0 + 5008) = xmmword_1BCE3EEF0;
  *(v0 + 6224) = xmmword_1BCE3EEF0;
  *(v0 + 5024) = xmmword_1BCE3EF00;
  *(v0 + 6240) = xmmword_1BCE3EF00;
  *(v0 + 5040) = xmmword_1BCE42DE0;
  *(v0 + 6256) = xmmword_1BCE42DE0;
  *(v0 + 5056) = xmmword_1BCE42DF0;
  *(v0 + 6272) = xmmword_1BCE42DF0;
  *(v0 + 5072) = xmmword_1BCE40190;
  *(v0 + 6288) = xmmword_1BCE40190;
  *(v0 + 5088) = xmmword_1BCE401A0;
  *(v0 + 6304) = xmmword_1BCE401A0;
  *(v0 + 5104) = xmmword_1BCE42E00;
  *(v0 + 6320) = xmmword_1BCE42E00;
  *(v0 + 5120) = xmmword_1BCE42E10;
  *(v0 + 6336) = xmmword_1BCE42E10;
  *(v0 + 5168) = xmmword_1BCE42E20;
  *(v0 + 6384) = xmmword_1BCE42E20;
  *(v0 + 5184) = xmmword_1BCE42E30;
  *(v0 + 6400) = xmmword_1BCE42E30;
  *(v0 + 5200) = xmmword_1BCE401B0;
  *(v0 + 6416) = xmmword_1BCE401B0;
  *(v0 + 5232) = xmmword_1BCE49480;
  *(v0 + 6448) = xmmword_1BCE49480;
  *(v0 + 5264) = xmmword_1BCE3E9D0;
  *(v0 + 6480) = xmmword_1BCE3E9D0;
  *(v0 + 5360) = xmmword_1BCE42E40;
  *(v0 + 6576) = xmmword_1BCE42E40;
  *(v0 + 5376) = xmmword_1BCE42E50;
  *(v0 + 6592) = xmmword_1BCE42E50;
  *(v0 + 5392) = xmmword_1BCE42E60;
  *(v0 + 6608) = xmmword_1BCE42E60;
  *(v0 + 5408) = xmmword_1BCE42E70;
  *(v0 + 6624) = xmmword_1BCE42E70;
  *(v0 + 5424) = xmmword_1BCE42E80;
  *(v0 + 6640) = xmmword_1BCE42E80;
  *(v0 + 5440) = xmmword_1BCE42E90;
  *(v0 + 6656) = xmmword_1BCE42E90;
  *(v0 + 5456) = xmmword_1BCE42EA0;
  *(v0 + 6672) = xmmword_1BCE42EA0;
  *(v0 + 5472) = xmmword_1BCE42EB0;
  *(v0 + 6688) = xmmword_1BCE42EB0;
  *(v0 + 5872) = xmmword_1BCE42EC0;
  *(v0 + 7088) = xmmword_1BCE42EC0;
  *(v0 + 5888) = xmmword_1BCE42ED0;
  *(v0 + 7104) = xmmword_1BCE42ED0;
  *(v0 + 5904) = xmmword_1BCE42EE0;
  *(v0 + 7120) = xmmword_1BCE42EE0;
  *(v0 + 3696) = xmmword_1BCE3EE30;
  *(v0 + 7344) = xmmword_1BCE3EE30;
  *(v0 + 3712) = 1145569280;
  *(v0 + 7360) = 1145569280;
  *(v0 + 3760) = xmmword_1BCE3F920;
  *(v0 + 7408) = xmmword_1BCE3F920;
  *(v0 + 3776) = xmmword_1BCE3F930;
  *(v0 + 7424) = xmmword_1BCE3F930;
  *(v0 + 3824) = xmmword_1BCE42CD0;
  *(v0 + 7472) = xmmword_1BCE42CD0;
  *(v0 + 3840) = xmmword_1BCE40770;
  *(v0 + 7488) = xmmword_1BCE40770;
  *(v0 + 3872) = xmmword_1BCE3F950;
  *(v0 + 7520) = xmmword_1BCE3F950;
  *(v0 + 3888) = xmmword_1BCE42CE0;
  *(v0 + 7536) = xmmword_1BCE42CE0;
  *(v0 + 3952) = xmmword_1BCE3F970;
  *(v0 + 7600) = xmmword_1BCE3F970;
  *(v0 + 3968) = xmmword_1BCE3F980;
  *(v0 + 7616) = xmmword_1BCE3F980;
  *(v0 + 3984) = xmmword_1BCE3F990;
  *(v0 + 7632) = xmmword_1BCE3F990;
  *(v0 + 4000) = xmmword_1BCE3C9D0;
  *(v0 + 5216) = xmmword_1BCE3C9D0;
  *(v0 + 6432) = xmmword_1BCE3C9D0;
  *(v0 + 7648) = xmmword_1BCE3C9D0;
  *(v0 + 4016) = xmmword_1BCE49470;
  *(v0 + 7664) = xmmword_1BCE49470;
  *(v0 + 4032) = 1063675494;
  *(v0 + 5248) = 1063675494;
  *(v0 + 6464) = 1063675494;
  *(v0 + 7680) = 1063675494;
  *(v0 + 4048) = xmmword_1BCE3CDC0;
  *(v0 + 7696) = xmmword_1BCE3CDC0;
  *(v0 + 4144) = xmmword_1BCE42CF0;
  *(v0 + 7792) = xmmword_1BCE42CF0;
  *(v0 + 4160) = xmmword_1BCE42D00;
  *(v0 + 7808) = xmmword_1BCE42D00;
  *(v0 + 4176) = xmmword_1BCE42D10;
  *(v0 + 7824) = xmmword_1BCE42D10;
  *(v0 + 4192) = xmmword_1BCE42D20;
  *(v0 + 7840) = xmmword_1BCE42D20;
  *(v0 + 4208) = xmmword_1BCE42D30;
  *(v0 + 7856) = xmmword_1BCE42D30;
  *(v0 + 4224) = xmmword_1BCE42D40;
  *(v0 + 7872) = xmmword_1BCE42D40;
  *(v0 + 4240) = xmmword_1BCE42D50;
  *(v0 + 7888) = xmmword_1BCE42D50;
  *(v0 + 4256) = xmmword_1BCE42D60;
  *(v0 + 7904) = xmmword_1BCE42D60;
  *(v0 + 4656) = xmmword_1BCE42D70;
  *(v0 + 8304) = xmmword_1BCE42D70;
  *(v0 + 4672) = xmmword_1BCE42D80;
  *(v0 + 8320) = xmmword_1BCE42D80;
  *(v0 + 4688) = xmmword_1BCE42D90;
  *(v0 + 8336) = xmmword_1BCE42D90;
  *(v0 + 4704) = xmmword_1BCE42DA0;
  *(v0 + 5920) = xmmword_1BCE42DA0;
  *(v0 + 7136) = xmmword_1BCE42DA0;
  *(v0 + 8352) = xmmword_1BCE42DA0;
  *(v0 + 2480) = xmmword_1BCE3F7B0;
  *(v0 + 8560) = xmmword_1BCE3F7B0;
  *(v0 + 2496) = 1137180672;
  *(v0 + 8576) = 1137180672;
  *(v0 + 2512) = xmmword_1BCE3F7C0;
  *(v0 + 8592) = xmmword_1BCE3F7C0;
  *(v0 + 2528) = xmmword_1BCE3F7D0;
  *(v0 + 8608) = xmmword_1BCE3F7D0;
  *(v0 + 2544) = xmmword_1BCE3F7E0;
  *(v0 + 8624) = xmmword_1BCE3F7E0;
  *(v0 + 2560) = xmmword_1BCE3F7F0;
  *(v0 + 8640) = xmmword_1BCE3F7F0;
  *(v0 + 2576) = xmmword_1BCE3E180;
  *(v0 + 3792) = xmmword_1BCE3E180;
  *(v0 + 7440) = xmmword_1BCE3E180;
  *(v0 + 8656) = xmmword_1BCE3E180;
  *(v0 + 2592) = xmmword_1BCE3CB90;
  *(v0 + 3808) = xmmword_1BCE3CB90;
  *(v0 + 7456) = xmmword_1BCE3CB90;
  *(v0 + 8672) = xmmword_1BCE3CB90;
  *(v0 + 2608) = xmmword_1BCE42C30;
  *(v0 + 8688) = xmmword_1BCE42C30;
  __asm { FMOV            V7.2D, #0.5 }

  *(v0 + 2624) = _Q7;
  *(v0 + 8704) = _Q7;
  *(v0 + 2640) = xmmword_1BCE3F940;
  *(v0 + 3856) = xmmword_1BCE3F940;
  *(v0 + 7504) = xmmword_1BCE3F940;
  *(v0 + 8720) = xmmword_1BCE3F940;
  *(v0 + 2656) = xmmword_1BCE49460;
  *(v0 + 8736) = xmmword_1BCE49460;
  *(v0 + 2672) = xmmword_1BCE400E0;
  *(v0 + 8752) = xmmword_1BCE400E0;
  *(v0 + 2688) = xmmword_1BCE3F830;
  *(v0 + 8768) = xmmword_1BCE3F830;
  *(v0 + 2736) = xmmword_1BCE3F840;
  *(v0 + 8816) = xmmword_1BCE3F840;
  *(v0 + 2752) = xmmword_1BCE3F850;
  *(v0 + 8832) = xmmword_1BCE3F850;
  *(v0 + 2768) = xmmword_1BCE3F860;
  *(v0 + 8848) = xmmword_1BCE3F860;
  *(v0 + 2784) = xmmword_1BCE3F870;
  *(v0 + 8864) = xmmword_1BCE3F870;
  *(v0 + 2800) = xmmword_1BCE47B90;
  *(v0 + 8880) = xmmword_1BCE47B90;
  *&_Q7 = vdup_n_s32(0x3F4CCCCDu);
  *(v0 + 2816) = _Q7;
  *(v0 + 8896) = _Q7;
  *(v0 + 2928) = xmmword_1BCE42C50;
  *(v0 + 9008) = xmmword_1BCE42C50;
  *(v0 + 9024) = xmmword_1BCE3D910;
  *(v0 + 9056) = xmmword_1BCE42EF0;
  *(v0 + 2992) = xmmword_1BCE42C90;
  *(v0 + 9072) = xmmword_1BCE42C90;
  *(v0 + 3008) = xmmword_1BCE42CA0;
  *(v0 + 9088) = xmmword_1BCE42CA0;
  *(v0 + 3440) = xmmword_1BCE42CC0;
  *(v0 + 3472) = xmmword_1BCE42CC0;
  *(v0 + 9520) = xmmword_1BCE42CC0;
  *(v0 + 9552) = xmmword_1BCE42CC0;
  *(v0 + 3488) = xmmword_1BCE3DA70;
  *(v0 + 9568) = xmmword_1BCE3DA70;
  *(v0 + 2224) = xmmword_1BCE42C10;
  *(v0 + 10736) = xmmword_1BCE42C10;
  *(v0 + 2256) = xmmword_1BCE42C20;
  *(v0 + 10768) = xmmword_1BCE42C20;
  *(v0 + 144) = xmmword_1BCE3F6E0;
  *(v0 + 160) = xmmword_1BCE3ED00;
  *(v0 + 1264) = xmmword_1BCE3F6C0;
  *(v0 + 9776) = xmmword_1BCE3F6C0;
  *(v0 + 10992) = xmmword_1BCE3F6C0;
  *(v0 + 1280) = 0x4120000043480000;
  *(v0 + 9792) = 0x4120000043480000;
  *(v0 + 11008) = 0x4120000043480000;
  *(v0 + 176) = xmmword_1BCE42B50;
  *(v0 + 192) = xmmword_1BCE42B60;
  *(v0 + 1296) = xmmword_1BCE3E140;
  *(v0 + 3728) = xmmword_1BCE3E140;
  *(v0 + 7376) = xmmword_1BCE3E140;
  *(v0 + 9808) = xmmword_1BCE3E140;
  *(v0 + 11024) = xmmword_1BCE3E140;
  *(v0 + 1312) = xmmword_1BCE3E150;
  *(v0 + 3744) = xmmword_1BCE3E150;
  *(v0 + 7392) = xmmword_1BCE3E150;
  *(v0 + 9824) = xmmword_1BCE3E150;
  *(v0 + 11040) = xmmword_1BCE3E150;
  *(v0 + 208) = xmmword_1BCE49440;
  *(v0 + 224) = xmmword_1BCE42F00;
  *(v0 + 1328) = xmmword_1BCE3F6D0;
  *(v0 + 9840) = xmmword_1BCE3F6D0;
  *(v0 + 11056) = xmmword_1BCE3F6D0;
  __asm { FMOV            V2.2D, #1.0 }

  *(v0 + 1344) = xmmword_1BCE3F550;
  *(v0 + 9856) = xmmword_1BCE3F550;
  *(v0 + 11072) = xmmword_1BCE3F550;
  *(v0 + 1360) = xmmword_1BCE3F6E0;
  *(v0 + 9872) = xmmword_1BCE3F6E0;
  *(v0 + 11088) = xmmword_1BCE3F6E0;
  *(v0 + 272) = xmmword_1BCE3F720;
  *(v0 + 288) = xmmword_1BCE3F730;
  *(v0 + 1376) = xmmword_1BCE3ED00;
  *(v0 + 9888) = xmmword_1BCE3ED00;
  *(v0 + 11104) = xmmword_1BCE3ED00;
  *(v0 + 1392) = xmmword_1BCE42B50;
  *(v0 + 9904) = xmmword_1BCE42B50;
  *(v0 + 11120) = xmmword_1BCE42B50;
  *(v0 + 304) = xmmword_1BCE3F5B0;
  *(v0 + 320) = xmmword_1BCE3F5C0;
  *(v0 + 1408) = xmmword_1BCE42B60;
  *(v0 + 9920) = xmmword_1BCE42B60;
  *(v0 + 11136) = xmmword_1BCE42B60;
  *(v0 + 1424) = xmmword_1BCE49440;
  *(v0 + 9936) = xmmword_1BCE49440;
  *(v0 + 11152) = xmmword_1BCE49440;
  *(v0 + 1440) = xmmword_1BCE42F00;
  *(v0 + 9120) = xmmword_1BCE42F00;
  *(v0 + 9952) = xmmword_1BCE42F00;
  *(v0 + 11168) = xmmword_1BCE42F00;
  *(v0 + 1488) = xmmword_1BCE3F720;
  *(v0 + 8368) = _Q2;
  *(v0 + 10000) = xmmword_1BCE3F720;
  *(v0 + 11216) = xmmword_1BCE3F720;
  *(v0 + 1504) = xmmword_1BCE3F730;
  *(v0 + 8096) = xmmword_1BCE3DD90;
  *(v0 + 8272) = _Q2;
  *(v0 + 8288) = xmmword_1BCE3DAE0;
  *(v0 + 8176) = _Q2;
  *(v0 + 0x2000) = _Q2;
  *(v0 + 8208) = _Q2;
  *(v0 + 8224) = _Q2;
  *(v0 + 8240) = _Q2;
  *(v0 + 8256) = xmmword_1BCE3C8C0;
  *(v0 + 8112) = _Q2;
  *(v0 + 8128) = _Q2;
  *(v0 + 8144) = _Q2;
  *(v0 + 8160) = _Q2;
  *(v0 + 10016) = xmmword_1BCE3F730;
  *(v0 + 11232) = xmmword_1BCE3F730;
  *(v0 + 8016) = _Q2;
  *(v0 + 8032) = xmmword_1BCE3C8C0;
  *(v0 + 8048) = _Q2;
  *(v0 + 8064) = _Q2;
  *(v0 + 8080) = _Q2;
  *(v0 + 1520) = xmmword_1BCE3F5B0;
  *(v0 + 7968) = _Q2;
  *(v0 + 7984) = _Q2;
  *(v0 + 8000) = xmmword_1BCE3A880;
  *(v0 + 10032) = xmmword_1BCE3F5B0;
  *(v0 + 11248) = xmmword_1BCE3F5B0;
  *(v0 + 336) = xmmword_1BCE3F740;
  *(v0 + 352) = xmmword_1BCE3F5E0;
  *(v0 + 7920) = _Q2;
  *(v0 + 7936) = xmmword_1BCE3A880;
  *(v0 + 7952) = _Q2;
  *(v0 + 1536) = xmmword_1BCE3F5C0;
  *(v0 + 10048) = xmmword_1BCE3F5C0;
  *(v0 + 11264) = xmmword_1BCE3F5C0;
  *(v0 + 1552) = xmmword_1BCE3F740;
  *(v0 + 10064) = xmmword_1BCE3F740;
  *(v0 + 11280) = xmmword_1BCE3F740;
  *(v0 + 7728) = 0u;
  *(v0 + 7760) = _Q2;
  *(v0 + 7776) = xmmword_1BCE3DAE0;
  *(v0 + 368) = xmmword_1BCE49450;
  *(v0 + 7712) = 0x3FF0000000000000;
  *(v0 + 7720) = 0;
  *(v0 + 7744) = 0u;
  *(v0 + 1568) = xmmword_1BCE3F5E0;
  *(v0 + 10080) = xmmword_1BCE3F5E0;
  *(v0 + 11296) = xmmword_1BCE3F5E0;
  *(v0 + 7688) = 0x3FEF0AE2E0000000;
  *(v0 + 384) = 0x3F8000003F4CCCCDLL;
  *(v0 + 432) = 0u;
  *(v0 + 448) = 0u;
  *(v0 + 7552) = _Q2;
  *(v0 + 7568) = _Q2;
  *(v0 + 7584) = _Q2;
  *(v0 + 1584) = xmmword_1BCE49450;
  *(v0 + 10096) = xmmword_1BCE49450;
  *(v0 + 11312) = xmmword_1BCE49450;
  *(v0 + 1600) = 0x3F8000003F4CCCCDLL;
  *(v0 + 10112) = 0x3F8000003F4CCCCDLL;
  *(v0 + 11328) = 0x3F8000003F4CCCCDLL;
  *(v0 + 1664) = 0u;
  *(v0 + 1648) = 0u;
  *(v0 + 2880) = 0u;
  *(v0 + 2864) = 0u;
  *(v0 + 7368) = 1058642330;
  *(v0 + 4096) = 0u;
  *(v0 + 7337) = *v13;
  *(v0 + 7296) = _Q2;
  *(v0 + 7312) = 0x3FF0000000000000;
  *(v0 + 7328) = 0x4040800000000000;
  *(v0 + 7336) = 1;
  *(v0 + 7340) = *&v13[3];
  *(v0 + 7216) = _Q2;
  *(v0 + 7232) = _Q2;
  *(v0 + 7248) = 0x4170000042480000;
  *(v0 + 7256) = 0x3FF0000000000000;
  *(v0 + 7264) = _Q2;
  *(v0 + 7280) = _Q2;
  *(v0 + 4080) = 0u;
  *(v0 + 5312) = 0u;
  *(v0 + 7152) = _Q2;
  *(v0 + 7168) = xmmword_1BCE3C8C0;
  *(v0 + 7184) = _Q2;
  *(v0 + 7200) = xmmword_1BCE3DAE0;
  *(v0 + 5296) = 0u;
  *(v0 + 6528) = 0u;
  *(v0 + 7024) = _Q2;
  *(v0 + 7040) = xmmword_1BCE3C8C0;
  *(v0 + 7056) = _Q2;
  *(v0 + 7072) = xmmword_1BCE3DAE0;
  *(v0 + 6928) = _Q2;
  *(v0 + 6944) = _Q2;
  *(v0 + 6960) = _Q2;
  *(v0 + 6976) = _Q2;
  *(v0 + 6992) = _Q2;
  *(v0 + 7008) = _Q2;
  *(v0 + 6832) = _Q2;
  *(v0 + 6848) = _Q2;
  *(v0 + 6864) = _Q2;
  *(v0 + 6880) = xmmword_1BCE3DD90;
  *(v0 + 6896) = _Q2;
  *(v0 + 6912) = _Q2;
  *(v0 + 6736) = _Q2;
  *(v0 + 6752) = _Q2;
  *(v0 + 6768) = _Q2;
  *(v0 + 6784) = xmmword_1BCE3A880;
  *(v0 + 6800) = _Q2;
  *(v0 + 6816) = xmmword_1BCE3C8C0;
  *(v0 + 6512) = 0u;
  *(v0 + 6704) = _Q2;
  *(v0 + 6720) = xmmword_1BCE3A880;
  *(v0 + 8960) = 0u;
  *(v0 + 8944) = 0u;
  *(v0 + 10176) = 0u;
  *(v0 + 10160) = 0u;
  *(v0 + 11392) = 0u;
  *(v0 + 11376) = 0u;
  *(v0 + 496) = xmmword_1BCE42B70;
  *(v0 + 512) = xmmword_1BCE42B80;
  *(v0 + 1712) = xmmword_1BCE42B70;
  *(v0 + 6544) = _Q2;
  *(v0 + 6560) = xmmword_1BCE3DAE0;
  *(v0 + 10224) = xmmword_1BCE42B70;
  *(v0 + 11440) = xmmword_1BCE42B70;
  *(v0 + 1728) = xmmword_1BCE42B80;
  *(v0 + 6496) = 0x3FF0000000000000;
  *(v0 + 6504) = 0;
  *(v0 + 10240) = xmmword_1BCE42B80;
  *(v0 + 11456) = xmmword_1BCE42B80;
  *(v0 + 528) = xmmword_1BCE42B90;
  *(v0 + 544) = xmmword_1BCE42BA0;
  *(v0 + 6472) = 0x3FF0000000000000;
  *(v0 + 1744) = xmmword_1BCE42B90;
  *(v0 + 10256) = xmmword_1BCE42B90;
  *(v0 + 11472) = xmmword_1BCE42B90;
  *(v0 + 6368) = _Q2;
  *(v0 + 1760) = xmmword_1BCE42BA0;
  *(v0 + 10272) = xmmword_1BCE42BA0;
  *(v0 + 11488) = xmmword_1BCE42BA0;
  *(v0 + 6352) = _Q2;
  *(v0 + 560) = xmmword_1BCE42BB0;
  *(v0 + 576) = xmmword_1BCE42BC0;
  *(v0 + 1776) = xmmword_1BCE42BB0;
  *(v0 + 10288) = xmmword_1BCE42BB0;
  *(v0 + 11504) = xmmword_1BCE42BB0;
  *(v0 + 1792) = xmmword_1BCE42BC0;
  *(v0 + 6152) = 1062836634;
  *(v0 + 6176) = _Q2;
  *(v0 + 6080) = _Q2;
  *(v0 + 6096) = 0x3FF0000000000000;
  *(v0 + 6112) = 0x404E000000000000;
  *(v0 + 6120) = 1;
  *(v0 + 6121) = *v12;
  *(v0 + 6124) = *&v12[3];
  *(v0 + 10304) = xmmword_1BCE42BC0;
  *(v0 + 11520) = xmmword_1BCE42BC0;
  *(v0 + 6016) = _Q2;
  *(v0 + 6032) = 0x4170000042480000;
  *(v0 + 6040) = 0x3FF0000000000000;
  *(v0 + 6048) = _Q2;
  *(v0 + 6064) = _Q2;
  *(v0 + 1808) = xmmword_1BCE3F8A0;
  *(v0 + 5936) = _Q2;
  *(v0 + 5952) = xmmword_1BCE3C8C0;
  *(v0 + 5968) = _Q2;
  *(v0 + 5984) = xmmword_1BCE3DAE0;
  *(v0 + 6000) = _Q2;
  *(v0 + 3024) = xmmword_1BCE3F8A0;
  *(v0 + 5552) = _Q2;
  *(v0 + 5568) = xmmword_1BCE3A880;
  *(v0 + 5824) = xmmword_1BCE3C8C0;
  *(v0 + 5840) = _Q2;
  *(v0 + 5856) = xmmword_1BCE3DAE0;
  *(v0 + 5728) = _Q2;
  *(v0 + 5744) = _Q2;
  *(v0 + 5760) = _Q2;
  *(v0 + 5776) = _Q2;
  *(v0 + 5792) = _Q2;
  *(v0 + 5808) = _Q2;
  *(v0 + 5632) = _Q2;
  *(v0 + 5648) = _Q2;
  *(v0 + 5664) = xmmword_1BCE3DD90;
  *(v0 + 5680) = _Q2;
  *(v0 + 5696) = _Q2;
  *(v0 + 5712) = _Q2;
  *(v0 + 5584) = _Q2;
  *(v0 + 5600) = xmmword_1BCE3C8C0;
  *(v0 + 5616) = _Q2;
  *(v0 + 9040) = xmmword_1BCE3F8A0;
  *(v0 + 9104) = xmmword_1BCE3F8A0;
  *(v0 + 10320) = xmmword_1BCE3F8A0;
  *(v0 + 11536) = xmmword_1BCE3F8A0;
  *(v0 + 592) = xmmword_1BCE3F8A0;
  *(v0 + 608) = xmmword_1BCE42BD0;
  *(v0 + 5488) = _Q2;
  *(v0 + 5504) = xmmword_1BCE3A880;
  *(v0 + 5520) = _Q2;
  *(v0 + 5536) = _Q2;
  *(v0 + 1824) = xmmword_1BCE42BD0;
  *(v0 + 10336) = xmmword_1BCE42BD0;
  *(v0 + 11552) = xmmword_1BCE42BD0;
  *(v0 + 640) = xmmword_1BCE3A880;
  *(v0 + 704) = xmmword_1BCE3A880;
  *(v0 + 800) = xmmword_1BCE3DD90;
  *(v0 + 5280) = 0x3FF0000000000000;
  *(v0 + 5288) = 0;
  *(v0 + 5328) = _Q2;
  *(v0 + 5344) = xmmword_1BCE3DAE0;
  *(v0 + 1856) = xmmword_1BCE3A880;
  *(v0 + 1920) = xmmword_1BCE3A880;
  *(v0 + 3072) = xmmword_1BCE3A880;
  *(v0 + 3136) = xmmword_1BCE3A880;
  *(v0 + 4288) = xmmword_1BCE3A880;
  *(v0 + 5256) = 0x3FF0000000000000;
  *(v0 + 4352) = xmmword_1BCE3A880;
  *(v0 + 5136) = _Q2;
  *(v0 + 5152) = _Q2;
  *(v0 + 9152) = xmmword_1BCE3A880;
  *(v0 + 9216) = xmmword_1BCE3A880;
  *(v0 + 10368) = xmmword_1BCE3A880;
  *(v0 + 10432) = xmmword_1BCE3A880;
  *(v0 + 11584) = xmmword_1BCE3A880;
  *(v0 + 11648) = xmmword_1BCE3A880;
  *(v0 + 2016) = xmmword_1BCE3DD90;
  *(v0 + 3232) = xmmword_1BCE3DD90;
  *(v0 + 4448) = xmmword_1BCE3DD90;
  *(v0 + 9312) = xmmword_1BCE3DD90;
  *(v0 + 10528) = xmmword_1BCE3DD90;
  *(v0 + 11744) = xmmword_1BCE3DD90;
  *(v0 + 11952) = xmmword_1BCE42BE0;
  *(v0 + 1008) = xmmword_1BCE42BE0;
  *(v0 + 1024) = xmmword_1BCE42BF0;
  *(v0 + 4904) = 0;
  *(v0 + 4960) = _Q2;
  *(v0 + 4905) = *v11;
  *(v0 + 4908) = *&v11[3];
  *(v0 + 4936) = 1062836634;
  *(v0 + 4824) = 0x3FF0000000000000;
  *(v0 + 4832) = _Q2;
  *(v0 + 4848) = _Q2;
  *(v0 + 4864) = _Q2;
  *(v0 + 4880) = 0x3FF0000000000000;
  *(v0 + 4896) = 0x404E000000000000;
  *(v0 + 4736) = xmmword_1BCE3C8C0;
  *(v0 + 4752) = _Q2;
  *(v0 + 4768) = xmmword_1BCE3DAE0;
  *(v0 + 4784) = _Q2;
  *(v0 + 4800) = _Q2;
  *(v0 + 4816) = 0x4170000042480000;
  *(v0 + 2240) = xmmword_1BCE42BF0;
  *(v0 + 3456) = xmmword_1BCE42BF0;
  *(v0 + 4464) = _Q2;
  *(v0 + 4640) = xmmword_1BCE3DAE0;
  *(v0 + 4720) = _Q2;
  *(v0 + 4544) = _Q2;
  *(v0 + 4560) = _Q2;
  *(v0 + 4576) = _Q2;
  *(v0 + 4592) = _Q2;
  *(v0 + 4608) = xmmword_1BCE3C8C0;
  *(v0 + 4624) = _Q2;
  *(v0 + 4480) = _Q2;
  *(v0 + 4496) = _Q2;
  *(v0 + 4512) = _Q2;
  *(v0 + 4528) = _Q2;
  *(v0 + 9536) = xmmword_1BCE42BF0;
  *(v0 + 10752) = xmmword_1BCE42BF0;
  *(v0 + 11968) = xmmword_1BCE42BF0;
  *(v0 + 4384) = xmmword_1BCE3C8C0;
  *(v0 + 4400) = _Q2;
  *(v0 + 4416) = _Q2;
  *(v0 + 4432) = _Q2;
  *(v0 + 1040) = xmmword_1BCE42C00;
  *(v0 + 4320) = _Q2;
  *(v0 + 4336) = _Q2;
  *(v0 + 4368) = _Q2;
  *(v0 + 11984) = xmmword_1BCE42C00;
  *(v0 + 1056) = xmmword_1BCE59010;
  *(v0 + 10784) = xmmword_1BCE59010;
  *(v0 + 12000) = xmmword_1BCE59010;
  *(v0 + 4272) = _Q2;
  *(v0 + 4304) = _Q2;
  *(v0 + 736) = xmmword_1BCE3C8C0;
  *(v0 + 960) = xmmword_1BCE3C8C0;
  *(v0 + 1088) = xmmword_1BCE3C8C0;
  *(v0 + 1952) = xmmword_1BCE3C8C0;
  *(v0 + 2176) = xmmword_1BCE3C8C0;
  *(v0 + 4128) = xmmword_1BCE3DAE0;
  *(v0 + 2304) = xmmword_1BCE3C8C0;
  *(v0 + 3168) = xmmword_1BCE3C8C0;
  *(v0 + 3392) = xmmword_1BCE3C8C0;
  *(v0 + 4064) = 0x3FF0000000000000;
  *(v0 + 4072) = 0;
  *(v0 + 4112) = _Q2;
  *(v0 + 3520) = xmmword_1BCE3C8C0;
  *(v0 + 3904) = _Q2;
  *(v0 + 3920) = _Q2;
  *(v0 + 3936) = _Q2;
  *(v0 + 4040) = 0x3FEF0AE2E0000000;
  *(v0 + 8384) = xmmword_1BCE3C8C0;
  *(v0 + 9248) = xmmword_1BCE3C8C0;
  *(v0 + 9472) = xmmword_1BCE3C8C0;
  *(v0 + 9600) = xmmword_1BCE3C8C0;
  *(v0 + 10464) = xmmword_1BCE3C8C0;
  *(v0 + 10688) = xmmword_1BCE3C8C0;
  *(v0 + 10816) = xmmword_1BCE3C8C0;
  *(v0 + 11680) = xmmword_1BCE3C8C0;
  *(v0 + 11904) = xmmword_1BCE3C8C0;
  *(v0 + 12032) = xmmword_1BCE3C8C0;
  *(v0 + 480) = xmmword_1BCE3DAE0;
  *(v0 + 992) = xmmword_1BCE3DAE0;
  *(v0 + 1120) = xmmword_1BCE3DAE0;
  *(v0 + 1696) = xmmword_1BCE3DAE0;
  *(v0 + 2208) = xmmword_1BCE3DAE0;
  *(v0 + 2336) = xmmword_1BCE3DAE0;
  *(v0 + 2912) = xmmword_1BCE3DAE0;
  *(v0 + 3248) = _Q2;
  *(v0 + 3688) = 0;
  *(v0 + 3689) = *v10;
  *(v0 + 3692) = *&v10[3];
  *(v0 + 3720) = 1058642330;
  *(v0 + 3608) = 0x3FF0000000000000;
  *(v0 + 3616) = _Q2;
  *(v0 + 3632) = _Q2;
  *(v0 + 3648) = _Q2;
  *(v0 + 3664) = 0x3FF0000000000000;
  *(v0 + 3680) = 0x4040800000000000;
  *(v0 + 3264) = _Q2;
  *(v0 + 3536) = _Q2;
  *(v0 + 3552) = xmmword_1BCE3DAE0;
  *(v0 + 3568) = _Q2;
  *(v0 + 3584) = _Q2;
  *(v0 + 3600) = 0x4170000042480000;
  *(v0 + 3280) = _Q2;
  *(v0 + 3296) = _Q2;
  *(v0 + 3312) = _Q2;
  *(v0 + 3328) = _Q2;
  *(v0 + 3424) = xmmword_1BCE3DAE0;
  *(v0 + 3504) = _Q2;
  *(v0 + 3344) = _Q2;
  *(v0 + 3360) = _Q2;
  *(v0 + 3376) = _Q2;
  *(v0 + 3408) = _Q2;
  *(v0 + 8416) = xmmword_1BCE3DAE0;
  *(v0 + 8992) = xmmword_1BCE3DAE0;
  *(v0 + 9504) = xmmword_1BCE3DAE0;
  *(v0 + 9632) = xmmword_1BCE3DAE0;
  *(v0 + 10208) = xmmword_1BCE3DAE0;
  *(v0 + 10720) = xmmword_1BCE3DAE0;
  *(v0 + 10848) = xmmword_1BCE3DAE0;
  *(v0 + 11424) = xmmword_1BCE3DAE0;
  *(v0 + 11936) = xmmword_1BCE3DAE0;
  *(v0 + 12064) = xmmword_1BCE3DAE0;
  *(v0 + 3152) = _Q2;
  *(v0 + 3184) = _Q2;
  *(v0 + 3200) = _Q2;
  *(v0 + 3216) = _Q2;
  *(v0 + 1168) = 0x4170000042480000;
  *(v0 + 3056) = _Q2;
  *(v0 + 3088) = _Q2;
  *(v0 + 3104) = _Q2;
  *(v0 + 3120) = _Q2;
  *(v0 + 2384) = 0x4170000042480000;
  *(v0 + 8464) = 0x4170000042480000;
  *(v0 + 9680) = 0x4170000042480000;
  *(v0 + 10896) = 0x4170000042480000;
  *(v0 + 12112) = 0x4170000042480000;
  result = 0.623529553;
  *(v0 + 1456) = xmmword_1BCE3F710;
  *(v0 + 9968) = xmmword_1BCE3F710;
  *(v0 + 11184) = xmmword_1BCE3F710;
  *(v0 + 240) = xmmword_1BCE3F710;
  *(v0 + 256) = _Q2;
  *(v0 + 464) = _Q2;
  *(v0 + 2896) = _Q2;
  *(v0 + 624) = _Q2;
  *(v0 + 672) = _Q2;
  *(v0 + 688) = _Q2;
  *(v0 + 2824) = 0x3FF0000000000000;
  *(v0 + 2832) = _Q2;
  *(v0 + 2848) = 0x3FF0000000000000;
  *(v0 + 2856) = 0;
  *(v0 + 720) = _Q2;
  *(v0 + 768) = _Q2;
  *(v0 + 784) = _Q2;
  *(v0 + 944) = _Q2;
  *(v0 + 976) = _Q2;
  *(v0 + 2720) = _Q2;
  *(v0 + 400) = _Q2;
  *(v0 + 416) = 0x3FF0000000000000;
  *(v0 + 424) = 0;
  *(v0 + 2704) = _Q2;
  *(v0 + 656) = _Q2;
  *(v0 + 752) = _Q2;
  *(v0 + 816) = _Q2;
  *(v0 + 832) = _Q2;
  *(v0 + 848) = _Q2;
  *(v0 + 864) = _Q2;
  *(v0 + 880) = _Q2;
  *(v0 + 896) = _Q2;
  *(v0 + 2392) = 0x3FF0000000000000;
  *(v0 + 2472) = 0;
  *(v0 + 2473) = *v9;
  *(v0 + 2476) = *&v9[3];
  *(v0 + 2504) = 1053609165;
  *(v0 + 2400) = _Q2;
  *(v0 + 2416) = _Q2;
  *(v0 + 2432) = _Q2;
  *(v0 + 2448) = 0x3FF0000000000000;
  *(v0 + 2464) = 0xC018000000000000;
  *(v0 + 912) = _Q2;
  *(v0 + 928) = _Q2;
  *(v0 + 1072) = _Q2;
  *(v0 + 2320) = _Q2;
  *(v0 + 2352) = _Q2;
  *(v0 + 2368) = _Q2;
  *(v0 + 1104) = _Q2;
  *(v0 + 1136) = _Q2;
  *(v0 + 1152) = _Q2;
  *(v0 + 1176) = 0x3FF0000000000000;
  *(v0 + 1184) = _Q2;
  *(v0 + 2288) = _Q2;
  *(v0 + 1200) = _Q2;
  *(v0 + 2112) = _Q2;
  *(v0 + 2128) = _Q2;
  *(v0 + 2144) = _Q2;
  *(v0 + 2160) = _Q2;
  *(v0 + 2192) = _Q2;
  *(v0 + 1216) = _Q2;
  *(v0 + 2032) = _Q2;
  *(v0 + 2048) = _Q2;
  *(v0 + 2064) = _Q2;
  *(v0 + 2080) = _Q2;
  *(v0 + 2096) = _Q2;
  *(v0 + 1232) = 0x3FF0000000000000;
  *(v0 + 1248) = 0xC031FFFFFFFFFFFFLL;
  *(v0 + 1968) = _Q2;
  *(v0 + 1984) = _Q2;
  *(v0 + 2000) = _Q2;
  *(v0 + 1256) = 0;
  *(v0 + 1257) = *v8;
  *(v0 + 1936) = _Q2;
  *(v0 + 1260) = *&v8[3];
  *(v0 + 1288) = 1036831949;
  *(v0 + 1840) = _Q2;
  *(v0 + 1872) = _Q2;
  *(v0 + 1888) = _Q2;
  *(v0 + 1904) = _Q2;
  *(v0 + 1472) = _Q2;
  *(v0 + 1608) = 0x3FF0000000000000;
  *(v0 + 1616) = _Q2;
  *(v0 + 1632) = 0x3FF0000000000000;
  *(v0 + 1640) = 0;
  *(v0 + 1680) = _Q2;
  *(v0 + 8400) = _Q2;
  *(v0 + 8432) = _Q2;
  *(v0 + 8448) = _Q2;
  *(v0 + 8480) = _Q2;
  *(v0 + 8496) = _Q2;
  *(v0 + 8512) = _Q2;
  *(v0 + 8784) = _Q2;
  *(v0 + 8800) = _Q2;
  *(v0 + 8912) = _Q2;
  *(v0 + 8976) = _Q2;
  *(v0 + 9136) = _Q2;
  *(v0 + 9168) = _Q2;
  *(v0 + 9184) = _Q2;
  *(v0 + 9200) = _Q2;
  *(v0 + 9232) = _Q2;
  *(v0 + 9264) = _Q2;
  *(v0 + 9280) = _Q2;
  *(v0 + 9296) = _Q2;
  *(v0 + 9328) = _Q2;
  *(v0 + 9344) = _Q2;
  *(v0 + 9360) = _Q2;
  *(v0 + 9376) = _Q2;
  *(v0 + 9392) = _Q2;
  *(v0 + 9408) = _Q2;
  *(v0 + 9424) = _Q2;
  *(v0 + 9440) = _Q2;
  *(v0 + 9456) = _Q2;
  *(v0 + 9488) = _Q2;
  *(v0 + 9584) = _Q2;
  *(v0 + 9616) = _Q2;
  *(v0 + 9648) = _Q2;
  *(v0 + 9664) = _Q2;
  *(v0 + 9696) = _Q2;
  *(v0 + 9712) = _Q2;
  *(v0 + 9728) = _Q2;
  *(v0 + 9984) = _Q2;
  *(v0 + 10128) = _Q2;
  *(v0 + 10192) = _Q2;
  *(v0 + 10352) = _Q2;
  *(v0 + 10384) = _Q2;
  *(v0 + 10400) = _Q2;
  *(v0 + 10416) = _Q2;
  *(v0 + 10448) = _Q2;
  *(v0 + 10480) = _Q2;
  *(v0 + 10496) = _Q2;
  *(v0 + 10512) = _Q2;
  *(v0 + 10544) = _Q2;
  *(v0 + 10560) = _Q2;
  *(v0 + 10576) = _Q2;
  *(v0 + 10592) = _Q2;
  *(v0 + 10608) = _Q2;
  *(v0 + 10624) = _Q2;
  *(v0 + 10640) = _Q2;
  *(v0 + 10656) = _Q2;
  *(v0 + 10672) = _Q2;
  *(v0 + 10704) = _Q2;
  *(v0 + 10800) = _Q2;
  *(v0 + 10832) = _Q2;
  *(v0 + 10864) = _Q2;
  *(v0 + 10880) = _Q2;
  *(v0 + 10912) = _Q2;
  *(v0 + 10928) = _Q2;
  *(v0 + 10944) = _Q2;
  *(v0 + 11200) = _Q2;
  *(v0 + 11344) = _Q2;
  *(v0 + 11408) = _Q2;
  *(v0 + 11568) = _Q2;
  *(v0 + 11600) = _Q2;
  *(v0 + 11616) = _Q2;
  *(v0 + 11632) = _Q2;
  *(v0 + 11664) = _Q2;
  *(v0 + 11696) = _Q2;
  *(v0 + 11712) = _Q2;
  *(v0 + 11728) = _Q2;
  *(v0 + 11760) = _Q2;
  *(v0 + 11776) = _Q2;
  *(v0 + 11792) = _Q2;
  *(v0 + 11808) = _Q2;
  *(v0 + 11824) = _Q2;
  *(v0 + 11840) = _Q2;
  *(v0 + 11856) = _Q2;
  *(v0 + 11872) = _Q2;
  *(v0 + 11888) = _Q2;
  *(v0 + 11920) = _Q2;
  *(v0 + 12016) = _Q2;
  *(v0 + 12048) = _Q2;
  *(v0 + 12080) = _Q2;
  *(v0 + 12096) = _Q2;
  *(v0 + 12128) = _Q2;
  *(v0 + 12144) = _Q2;
  *(v0 + 12160) = _Q2;
  *(v0 + 392) = 0x3FF0000000000000;
  *(v0 + 32) = 0xC056800000000000;
  *(v0 + 40) = 0;
  *(v0 + 72) = 1036831949;
  *(v0 + 8553) = *v14;
  *(v0 + 8472) = 0x3FF0000000000000;
  *(v0 + 8528) = 0x3FF0000000000000;
  *(v0 + 8544) = 0xC018000000000000;
  *(v0 + 8552) = 1;
  *(v0 + 8556) = *&v14[3];
  *(v0 + 8584) = 1053609165;
  *(v0 + 8904) = 0x3FF0000000000000;
  *(v0 + 8928) = 0x3FF0000000000000;
  *(v0 + 8936) = 0;
  *(v0 + 9688) = 0x3FF0000000000000;
  *(v0 + 9744) = 0x3FF0000000000000;
  *(v0 + 9760) = 0xC032000000000004;
  *(v0 + 9769) = *v15;
  *(v0 + 9768) = 1;
  *(v0 + 9772) = *&v15[3];
  *(v0 + 9800) = 1036831949;
  *(v0 + 10120) = 0x3FF0000000000000;
  *(v0 + 10144) = 0x3FF0000000000000;
  *(v0 + 10152) = 0;
  *(v0 + 10904) = 0x3FF0000000000000;
  *(v0 + 10960) = 0x3FF0000000000000;
  *(v0 + 10976) = 0xC056800000000000;
  *(v0 + 10984) = 1;
  *(v0 + 10985) = *v16;
  *(v0 + 10988) = *&v16[3];
  *(v0 + 11016) = 1036831949;
  *(v0 + 11336) = 0x3FF0000000000000;
  *(v0 + 11360) = 0x3FF0000000000000;
  *(v0 + 11368) = 0;
  *(v0 + 12120) = 0x3FF0000000000000;
  *(v0 + 12176) = 0x3FF0000000000000;
  return result;
}