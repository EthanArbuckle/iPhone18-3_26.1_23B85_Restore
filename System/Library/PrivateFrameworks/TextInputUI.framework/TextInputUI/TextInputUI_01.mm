uint64_t sub_190001624(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD35280);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_19000168C@<X0>(uint64_t a1@<X8>)
{
  v17 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD352B0);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v16 - v2;
  v4 = sub_1900B0BB0();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1900B0BD0();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = [objc_opt_self() _deviceLanguage];
  if (result)
  {
    v13 = result;
    sub_1900B1610();

    sub_1900B0B70();
    sub_1900B0BC0();
    sub_1900B0BA0();
    (*(v5 + 8))(v7, v4);
    v14 = sub_1900B0B80();
    v15 = *(v14 - 8);
    result = (*(v15 + 48))(v3, 1, v14);
    if (result != 1)
    {
      (*(v9 + 8))(v11, v8);
      return (*(v15 + 32))(v17, v3, v14);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_190001920()
{
  v0 = sub_1900B0E80();
  __swift_allocate_value_buffer(v0, qword_1EAD35288);
  __swift_project_value_buffer(v0, qword_1EAD35288);
  return sub_1900B0E70();
}

uint64_t sub_190001A24()
{
  v0 = sub_1900B0D30();
  v69 = *(v0 - 8);
  v70 = v0;
  v1 = MEMORY[0x1EEE9AC00](v0);
  v71 = &v65 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v1);
  v72 = &v65 - v3;
  v4 = sub_1900B0D60();
  v66 = *(v4 - 8);
  v67 = v4;
  v5 = MEMORY[0x1EEE9AC00](v4);
  v65 = &v65 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v68 = &v65 - v7;
  v8 = sub_1900B0D80();
  v9 = *(v8 - 8);
  v77 = v8;
  v78 = v9;
  MEMORY[0x1EEE9AC00](v8);
  v76 = &v65 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = sub_1900B0DD0();
  v11 = *(v75 - 8);
  MEMORY[0x1EEE9AC00](v75);
  v13 = &v65 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = sub_1900B0DB0();
  v14 = *(v74 - 8);
  MEMORY[0x1EEE9AC00](v74);
  v16 = &v65 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = sub_1900B0DF0();
  v17 = *(v73 - 8);
  MEMORY[0x1EEE9AC00](v73);
  v19 = &v65 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_1900B0B80();
  v21 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v23 = &v65 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_19000168C(v23);
  v79 = v23;
  v80 = v21;
  v24 = *(v21 + 16);
  v81 = v20;
  v24(v13, v23, v20);
  (*(v11 + 104))(v13, *MEMORY[0x1E69A12B0], v75);
  v25 = v77;
  sub_1900B0D90();
  sub_1900B0DE0();
  v26 = v16;
  v27 = v76;
  (*(v14 + 8))(v26, v74);
  sub_1900B0DC0();
  (*(v17 + 8))(v19, v73);
  v28 = v78;
  v29 = (*(v78 + 88))(v27, v25);
  if (v29 == *MEMORY[0x1E69A0EF8])
  {
    (*(v28 + 96))(v27, v25);
    v31 = v69;
    v30 = v70;
    v32 = v72;
    (*(v69 + 32))(v72, v27, v70);
    if (qword_1EAD34E10 != -1)
    {
      swift_once();
    }

    v33 = sub_1900B0E80();
    __swift_project_value_buffer(v33, qword_1EAD35288);
    v34 = v71;
    (*(v31 + 16))(v71, v32, v30);
    v35 = sub_1900B0E60();
    v36 = sub_1900B17D0();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      v82 = v38;
      *v37 = 136315138;
      sub_1900B0D20();
      sub_1900B0D10();
      sub_1900024B0(&qword_1EAD352A0, MEMORY[0x1E69A0F90]);
      v39 = sub_1900B1780();
      v41 = v40;

      v42 = *(v31 + 8);
      v42(v34, v30);
      v43 = sub_18FFF6090(v39, v41, &v82);

      *(v37 + 4) = v43;
      _os_log_impl(&dword_18FFDC000, v35, v36, "GenerativeModelsAvailability is restricted, for reasons: %s", v37, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v38);
      MEMORY[0x193AE9010](v38, -1, -1);
      MEMORY[0x193AE9010](v37, -1, -1);

      v42(v72, v30);
    }

    else
    {

      v58 = *(v31 + 8);
      v58(v34, v30);
      v58(v32, v30);
    }

    goto LABEL_13;
  }

  if (v29 != *MEMORY[0x1E69A0F00])
  {
    if (v29 != *MEMORY[0x1E69A11A0])
    {
      if (qword_1EAD34E10 != -1)
      {
        swift_once();
      }

      v61 = sub_1900B0E80();
      __swift_project_value_buffer(v61, qword_1EAD35288);
      v62 = sub_1900B0E60();
      v63 = sub_1900B17B0();
      if (os_log_type_enabled(v62, v63))
      {
        v64 = swift_slowAlloc();
        *v64 = 0;
        _os_log_impl(&dword_18FFDC000, v62, v63, "unexpected case in GenerativeModelsAvailability isAvailable", v64, 2u);
        MEMORY[0x193AE9010](v64, -1, -1);
      }

      (*(v80 + 8))(v79, v81);
      (*(v28 + 8))(v27, v25);
      return 1;
    }

LABEL_13:
    (*(v80 + 8))(v79, v81);
    return 1;
  }

  (*(v28 + 96))(v27, v25);
  v45 = v66;
  v44 = v67;
  v46 = v68;
  (*(v66 + 32))(v68, v27, v67);
  if (qword_1EAD34E10 != -1)
  {
    swift_once();
  }

  v47 = sub_1900B0E80();
  __swift_project_value_buffer(v47, qword_1EAD35288);
  v48 = v65;
  (*(v45 + 16))(v65, v46, v44);
  v49 = sub_1900B0E60();
  v50 = sub_1900B17B0();
  if (os_log_type_enabled(v49, v50))
  {
    v51 = swift_slowAlloc();
    v52 = swift_slowAlloc();
    v82 = v52;
    *v51 = 136315138;
    sub_1900B0D50();
    sub_1900B0D40();
    sub_1900024B0(&qword_1EAD352A8, MEMORY[0x1E69A1168]);
    v53 = sub_1900B1780();
    v55 = v54;

    v56 = *(v45 + 8);
    v56(v48, v44);
    v57 = sub_18FFF6090(v53, v55, &v82);

    *(v51 + 4) = v57;
    _os_log_impl(&dword_18FFDC000, v49, v50, "GenerativeModelsAvailability is unavailable, for reasons: %s", v51, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v52);
    MEMORY[0x193AE9010](v52, -1, -1);
    MEMORY[0x193AE9010](v51, -1, -1);

    v56(v68, v44);
  }

  else
  {

    v60 = *(v45 + 8);
    v60(v48, v44);
    v60(v46, v44);
  }

  (*(v80 + 8))(v79, v81);
  return 0;
}

uint64_t sub_1900024B0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_19000253C(uint64_t a1)
{
  v2 = v1;
  v4 = objc_allocWithZone(v1);
  v5 = sub_1900050E0(a1);
  (*(*(*(v2 + qword_1EAD379D8) - 8) + 8))(a1);
  return v5;
}

void *sub_190002614(uint64_t a1, uint64_t a2)
{
  v4 = *((*MEMORY[0x1E69E7D40] & *v2) + qword_1EAD379D8);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  (*(v5 + 16))(&v11 - v6);
  v7 = sub_1900B1160();
  v8 = *(v5 + 8);
  v9 = v7;
  v8(a2, v4);
  if (v7)
  {
  }

  return v7;
}

id sub_19000274C(void *a1)
{
  v5.receiver = v1;
  v5.super_class = type metadata accessor for SecureHostingController();
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

id sub_190002824()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SecureHostingController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_1900029E4(char a1)
{
  v2 = v1;
  v4 = a1 & 1;
  v5 = OBJC_IVAR___TUIGenmojiButton_viewModel;
  v6 = *(v1 + OBJC_IVAR___TUIGenmojiButton_viewModel);
  swift_getKeyPath();
  sub_190005098(&qword_1EAD34D60, type metadata accessor for GenmojiButtonView.ViewModel);

  sub_1900B0BF0();

  v7 = *(v6 + 16);

  if (v7 != v4)
  {
    v8 = *(v2 + v5);
    if (*(v8 + 16) == v4)
    {
      *(v8 + 16) = a1 & 1;
    }

    else
    {
      KeyPath = swift_getKeyPath();
      MEMORY[0x1EEE9AC00](KeyPath);

      sub_1900B0BE0();
    }

    v10 = OBJC_IVAR___TUIGenmojiButton_hostingController;
    v11 = [*(v2 + OBJC_IVAR___TUIGenmojiButton_hostingController) view];
    if (v11)
    {
      v12 = v11;
      [v11 setNeedsLayout];

      v13 = [*(v2 + v10) view];
      if (v13)
      {
        v14 = v13;
        [v13 layoutIfNeeded];

        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
  }
}

char *sub_190002BF4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  v7 = sub_1900B1240();
  MEMORY[0x1EEE9AC00](v7);
  v8 = OBJC_IVAR___TUIGenmojiButton_viewModel;
  type metadata accessor for GenmojiButtonView.ViewModel(0);
  v9 = swift_allocObject();
  *(v9 + 16) = 0;
  _s11TextInputUI31DefaultKeyboardSettingsProviderC22__observationRegistrar33_DA9299E8CEE167062A5E24FB32D1EB0511Observation0rI0Vvpfi_0();
  *&v3[v8] = v9;
  objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD35338));
  v48 = v9;
  v49 = a1;
  v50 = a2;

  *&v3[OBJC_IVAR___TUIGenmojiButton_hostingController] = sub_1900B1170();
  v47.receiver = v3;
  v47.super_class = ObjectType;
  v10 = objc_msgSendSuper2(&v47, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  v11 = OBJC_IVAR___TUIGenmojiButton_hostingController;
  v12 = *&v10[OBJC_IVAR___TUIGenmojiButton_hostingController];
  v13 = v10;
  result = [v12 view];
  if (!result)
  {
    __break(1u);
    goto LABEL_12;
  }

  v15 = result;
  v16 = [objc_opt_self() clearColor];
  [v15 setBackgroundColor_];

  result = [*&v10[v11] view];
  if (!result)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v17 = result;
  [result setTranslatesAutoresizingMaskIntoConstraints_];

  result = [*&v10[v11] view];
  if (!result)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v18 = result;
  type metadata accessor for UILayoutPriority(0);
  sub_190005098(&qword_1EAD34C00, type metadata accessor for UILayoutPriority);
  sub_1900B0E90();
  LODWORD(v19) = v48;
  [v18 setContentHuggingPriority:0 forAxis:v19];

  result = [*&v10[v11] view];
  if (!result)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v21 = result;
  LODWORD(v20) = 1148846080;
  [result setContentCompressionResistancePriority:0 forAxis:v20];

  v22 = *&v10[v11];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD35168);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_1900BF5E0;
  v24 = v22;
  sub_1900B1230();
  v48 = v23;
  sub_190005098(&qword_1EAD34C28, MEMORY[0x1E697CC60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD35170);
  sub_190005A98(&qword_1EAD34C08, &qword_1EAD35170);
  sub_1900B1870();
  sub_1900B1150();

  v25 = *&v10[v11];
  v26 = v13;
  result = [v25 view];
  if (!result)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v27 = result;
  [v26 addSubview_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD34EF8);
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_1900BFEF0;
  result = [*&v10[v11] view];
  if (!result)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v29 = result;
  v30 = [result topAnchor];

  v31 = [v26 topAnchor];
  v32 = [v30 constraintEqualToAnchor_];

  *(v28 + 32) = v32;
  result = [*&v10[v11] view];
  if (!result)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v33 = result;
  v34 = [result bottomAnchor];

  v35 = [v26 bottomAnchor];
  v36 = [v34 constraintEqualToAnchor_];

  *(v28 + 40) = v36;
  result = [*&v10[v11] view];
  if (!result)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v37 = result;
  v38 = [result leadingAnchor];

  v39 = [v26 leadingAnchor];
  v40 = [v38 constraintEqualToAnchor_];

  *(v28 + 48) = v40;
  result = [*&v10[v11] view];
  if (result)
  {
    v41 = result;
    v42 = [result trailingAnchor];

    v43 = [v26 trailingAnchor];
    v44 = [v42 constraintEqualToAnchor_];

    *(v28 + 56) = v44;
    v45 = objc_opt_self();
    sub_18FFFC398();
    v46 = sub_1900B1690();

    [v45 activateConstraints_];

    return v26;
  }

LABEL_19:
  __break(1u);
  return result;
}

uint64_t sub_19000348C()
{
  swift_getKeyPath();
  sub_190005098(&qword_1EAD34D60, type metadata accessor for GenmojiButtonView.ViewModel);
  sub_1900B0BF0();

  return *(v0 + 16);
}

uint64_t sub_19000352C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_190005098(&qword_1EAD34D60, type metadata accessor for GenmojiButtonView.ViewModel);
  sub_1900B0BF0();

  *a2 = *(v3 + 16);
  return result;
}

uint64_t sub_1900035D4(uint64_t result)
{
  if (*(v1 + 16) == (result & 1))
  {
    *(v1 + 16) = result & 1;
  }

  else
  {
    swift_getKeyPath();
    MEMORY[0x1EEE9AC00]();
    sub_190005098(&qword_1EAD34D60, type metadata accessor for GenmojiButtonView.ViewModel);
    sub_1900B0BE0();
  }

  return result;
}

uint64_t sub_1900036E4()
{
  v1 = OBJC_IVAR____TtCV11TextInputUIP33_4E3CCC217D4507E7AD2D9EBD007764CA17GenmojiButtonView9ViewModel___observationRegistrar;
  v2 = sub_1900B0C30();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v3, v4);
}

uint64_t sub_1900037A8()
{
  result = sub_1900B0C30();
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

uint64_t get_enum_tag_for_layout_string_Ieg_Sg(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_190003870(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1900038B8(uint64_t result, int a2, int a3)
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

uint64_t sub_190003924@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v33 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD352D8);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v33 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD352D0);
  v7 = v6 - 8;
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v33 - v8;
  *v5 = sub_1900B1140();
  *(v5 + 1) = 0x4010000000000000;
  v5[16] = 0;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD352F0);
  sub_190003BE4(a1, &v5[*(v10 + 44)]);
  v11 = sub_1900B1270();
  swift_getKeyPath();
  v34 = a1;
  sub_190005098(&qword_1EAD34D60, type metadata accessor for GenmojiButtonView.ViewModel);
  sub_1900B0BF0();

  sub_1900B0FD0();
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;
  sub_18FFFE918(v5, v9, &qword_1EAD352D8);
  v20 = &v9[*(v7 + 44)];
  *v20 = v11;
  *(v20 + 1) = v13;
  *(v20 + 2) = v15;
  *(v20 + 3) = v17;
  *(v20 + 4) = v19;
  v20[40] = 0;
  v21 = sub_1900B1280();
  swift_getKeyPath();
  v34 = a1;
  sub_1900B0BF0();

  sub_1900B0FD0();
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v30 = v33;
  sub_18FFFE918(v9, v33, &qword_1EAD352D0);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD352C8);
  v32 = v30 + *(result + 36);
  *v32 = v21;
  *(v32 + 8) = v23;
  *(v32 + 16) = v25;
  *(v32 + 24) = v27;
  *(v32 + 32) = v29;
  *(v32 + 40) = 0;
  return result;
}

uint64_t sub_190003BE4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v45 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD352F8);
  v4 = *(v3 - 8);
  v43 = v3;
  v44 = v4;
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v41 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD35300);
  v8 = MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v41 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD35308);
  v14 = v13 - 8;
  v15 = MEMORY[0x1EEE9AC00](v13);
  v17 = &v41 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v19 = (&v41 - v18);
  v20 = sub_1900B1400();
  v21 = v19 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD35310) + 36);
  v53 = 0;
  sub_1900B1440();
  v22 = v47;
  *v21 = v46;
  *(v21 + 1) = v22;
  *(v21 + 2) = 0x3FF6A09E667F3BCDLL;
  v42 = type metadata accessor for IntelligenceLightEffect(0);
  v23 = *(v42 + 24);
  *&v21[v23] = swift_getKeyPath();
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD35318);
  swift_storeEnumTagMultiPayload();
  *v19 = v20;
  *(v19 + *(v14 + 44)) = xmmword_1900C04F0;
  swift_getKeyPath();
  v46 = a1;
  sub_190005098(&qword_1EAD34D60, type metadata accessor for GenmojiButtonView.ViewModel);
  sub_1900B0BF0();

  if (*(a1 + 16) == 1)
  {
    type metadata accessor for GenmojiButton();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v25 = [objc_opt_self() bundleForClass_];
    v26 = sub_1900B15E0();
    v27 = [v25 localizedStringInDeviceLanguageForKey_];

    v28 = sub_1900B1610();
    v30 = v29;

    KeyPath = swift_getKeyPath();
    v46 = v28;
    v47 = v30;
    v48 = 0;
    v49 = MEMORY[0x1E69E7CC0];
    v50 = KeyPath;
    v51 = 1;
    v52 = 0;
    sub_1900B1290();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD35328);
    sub_190004FC0();
    sub_1900B1390();

    v32 = v43;
    v33 = &v6[*(v43 + 36)];
    v53 = 0;
    sub_1900B1440();
    v34 = v47;
    *v33 = v46;
    *(v33 + 1) = v34;
    *(v33 + 2) = 0x3FF0000000000000;
    v35 = *(v42 + 24);
    *&v33[v35] = swift_getKeyPath();
    swift_storeEnumTagMultiPayload();
    sub_18FFFE918(v6, v12, &qword_1EAD352F8);
    v36 = 0;
    v37 = v32;
  }

  else
  {
    v36 = 1;
    v37 = v43;
  }

  (*(v44 + 56))(v12, v36, 1, v37);
  sub_18FFEB918(v19, v17, &qword_1EAD35308);
  sub_18FFE8020(v12, v10);
  v38 = v45;
  sub_18FFEB918(v17, v45, &qword_1EAD35308);
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD35320);
  sub_18FFE8020(v10, v38 + *(v39 + 48));
  sub_18FFE8090(v12);
  sub_18FFEE584(v19, &qword_1EAD35308);
  sub_18FFE8090(v10);
  return sub_18FFEE584(v17, &qword_1EAD35308);
}

uint64_t sub_190004130@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  v6 = swift_allocObject();
  v6[2] = v3;
  v6[3] = v4;
  v6[4] = v5;

  sub_18FFFC49C(v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD352C8);
  sub_1900042D4();
  sub_1900B14A0();
  KeyPath = swift_getKeyPath();
  v8 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD352E0) + 36));
  v9 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD352E8) + 28);
  v10 = *MEMORY[0x1E697E6F8];
  v11 = sub_1900B1090();
  result = (*(*(v11 - 8) + 104))(v8 + v9, v10, v11);
  *v8 = KeyPath;
  return result;
}

uint64_t sub_190004298()
{
  v1 = *(v0 + 24);
  if (v1)
  {
    return v1();
  }

  return result;
}

unint64_t sub_1900042D4()
{
  result = qword_1EAD34C70;
  if (!qword_1EAD34C70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD352C8);
    sub_190004360();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD34C70);
  }

  return result;
}

unint64_t sub_190004360()
{
  result = qword_1EAD34C88;
  if (!qword_1EAD34C88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD352D0);
    sub_190005A98(&qword_1EAD34C10, &qword_1EAD352D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD34C88);
  }

  return result;
}

uint64_t sub_190004438@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v67 = a2;
  v68 = a3;
  v66 = sub_1900B1010();
  v4 = *(v66 - 8);
  v5 = MEMORY[0x1EEE9AC00](v66);
  v63 = &v54 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v62 = &v54 - v7;
  v8 = sub_1900B1520();
  v64 = *(v8 - 8);
  v65 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v61 = &v54 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = type metadata accessor for IntelligenceLightEffect(0);
  v56 = *(v58 - 8);
  v10 = *(v56 + 64);
  MEMORY[0x1EEE9AC00](v58);
  v57 = &v54 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1900B13F0();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v54 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1900B0E40();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v54 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD35370);
  MEMORY[0x1EEE9AC00](v59);
  v20 = &v54 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD35378);
  MEMORY[0x1EEE9AC00](v21 - 8);
  v60 = &v54 - v22;
  if (qword_1EAD34CB8 != -1)
  {
    swift_once();
  }

  v23 = __swift_project_value_buffer(v15, qword_1EAD379C0);
  (*(v16 + 16))(v18, v23, v15);
  sub_1900B1430();
  (*(v12 + 104))(v14, *MEMORY[0x1E6981630], v11);
  v24 = 0.0;
  v55 = sub_1900B1410();

  (*(v12 + 8))(v14, v11);
  v25 = *(a1 + 16);
  sub_1900B1530();
  v27 = v26;
  v29 = v28;
  v72 = 1;
  v31 = *(a1 + 8);
  v70 = *a1;
  v30 = v70;
  v71 = v31;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD35380);
  sub_1900B1450();
  v32 = v69;
  sub_1900B1530();
  v34 = v33;
  v36 = v35;
  sub_1900B1510();
  v54 = sub_1900B1500();

  v70 = v30;
  v71 = v31;
  sub_1900B1450();
  v37 = v69;
  v38 = v57;
  sub_190005424(a1, v57);
  v39 = (*(v56 + 80) + 16) & ~*(v56 + 80);
  v40 = swift_allocObject();
  sub_190005488(v38, v40 + v39);
  v41 = v62;
  sub_190004CF0(v62);
  v42 = v63;
  v43 = v66;
  (*(v4 + 104))(v63, *MEMORY[0x1E697DBA8], v66);
  LOBYTE(v39) = sub_1900B1000();
  v44 = *(v4 + 8);
  v44(v42, v43);
  v44(v41, v43);
  v45 = v64;
  v46 = MEMORY[0x1E6981DF0];
  if ((v39 & 1) == 0)
  {
    v46 = MEMORY[0x1E6981DE0];
  }

  v47 = v61;
  v48 = v65;
  (*(v64 + 104))(v61, *v46, v65);
  if (v32)
  {
    v24 = 6.28318531;
  }

  (*(v45 + 32))(&v20[*(v59 + 36)], v47, v48);
  *v20 = v55;
  *(v20 + 1) = 0;
  *(v20 + 8) = 257;
  *(v20 + 3) = v25;
  *(v20 + 4) = v25;
  *(v20 + 5) = v27;
  *(v20 + 6) = v29;
  *(v20 + 7) = v24;
  *(v20 + 8) = v34;
  *(v20 + 9) = v36;
  *(v20 + 10) = v54;
  v20[88] = v37;
  *(v20 + 12) = sub_1900054EC;
  *(v20 + 13) = v40;
  sub_19000554C();
  *(v20 + 14) = 0;
  *(v20 + 15) = 0;
  v49 = v60;
  sub_1900B13B0();
  sub_18FFEE584(v20, &qword_1EAD35370);
  v50 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD353B8) + 36);
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD35350);
  v52 = v68;
  (*(*(v51 - 8) + 16))(v68 + v50, v67, v51);
  return sub_1900058B8(v49, v52);
}

uint64_t sub_190004C00@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD35350);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  *(a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD35358) + 36)) = 0;
  v6 = sub_1900B14F0();
  v8 = v7;
  v9 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD35360) + 36);
  sub_190004438(v2, a1, v9);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD35368);
  v11 = (v9 + *(result + 36));
  *v11 = v6;
  v11[1] = v8;
  return result;
}

uint64_t sub_190004CF0@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_1900B1130();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD35318);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v14 - v9;
  sub_18FFEB918(v2, &v14 - v9, &qword_1EAD35318);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_1900B1010();
    return (*(*(v11 - 8) + 32))(a1, v10, v11);
  }

  else
  {
    sub_1900B17C0();
    v13 = sub_1900B1250();
    sub_1900B0E50();

    sub_1900B1120();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v7, v4);
  }
}

uint64_t sub_190004EF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void), uint64_t (*a6)(char *))
{
  a5(0);
  MEMORY[0x1EEE9AC00]();
  v9 = &v12 - v8;
  (*(v10 + 16))(&v12 - v8, a1);
  return a6(v9);
}

unint64_t sub_190004FC0()
{
  result = qword_1EAD34B80;
  if (!qword_1EAD34B80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD35328);
    sub_190005A98(&qword_1EAD34B78, &qword_1EAD35330);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD34B80);
  }

  return result;
}

uint64_t sub_190005098(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1900050E0(uint64_t a1)
{
  MEMORY[0x1EEE9AC00](a1);
  (*(v2 + 16))(&v4 - v1);
  return sub_1900B1170();
}

void sub_1900051F0()
{
  sub_19000527C();
  if (v0 <= 0x3F)
  {
    sub_1900052CC();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_19000527C()
{
  if (!qword_1EAD34C20)
  {
    v0 = sub_1900B1480();
    if (!v1)
    {
      atomic_store(v0, &qword_1EAD34C20);
    }
  }
}

void sub_1900052CC()
{
  if (!qword_1EAD34CA8)
  {
    sub_1900B1010();
    v0 = sub_1900B1020();
    if (!v1)
    {
      atomic_store(v0, &qword_1EAD34CA8);
    }
  }
}

unint64_t sub_190005324()
{
  result = qword_1EAD34C90;
  if (!qword_1EAD34C90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD352E0);
    sub_190005A98(&qword_1EAD34C18, &qword_1EAD35348);
    sub_190005A98(&qword_1EAD34C30, &qword_1EAD352E8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD34C90);
  }

  return result;
}

uint64_t sub_190005424(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for IntelligenceLightEffect(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_190005488(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for IntelligenceLightEffect(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1900054EC()
{
  type metadata accessor for IntelligenceLightEffect(0);

  return sub_190004B7C();
}

unint64_t sub_19000554C()
{
  result = qword_1EAD34C50;
  if (!qword_1EAD34C50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD35370);
    sub_1900055D8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD34C50);
  }

  return result;
}

unint64_t sub_1900055D8()
{
  result = qword_1EAD34C58;
  if (!qword_1EAD34C58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD35388);
    sub_190005664();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD34C58);
  }

  return result;
}

unint64_t sub_190005664()
{
  result = qword_1EAD34C60;
  if (!qword_1EAD34C60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD35390);
    sub_19000571C();
    sub_190005A98(&qword_1EAD34C48, &qword_1EAD353B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD34C60);
  }

  return result;
}

unint64_t sub_19000571C()
{
  result = qword_1EAD34C68;
  if (!qword_1EAD34C68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD35398);
    sub_1900057A8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD34C68);
  }

  return result;
}

unint64_t sub_1900057A8()
{
  result = qword_1EAD34C78;
  if (!qword_1EAD34C78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD353A0);
    sub_190005834();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD34C78);
  }

  return result;
}

unint64_t sub_190005834()
{
  result = qword_1EAD34C98;
  if (!qword_1EAD34C98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD353A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD34C98);
  }

  return result;
}

uint64_t sub_1900058B8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD35378);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_190005928()
{
  result = qword_1EAD34C80;
  if (!qword_1EAD34C80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD35360);
    sub_1900059E0();
    sub_190005A98(&qword_1EAD34C40, &qword_1EAD35368);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD34C80);
  }

  return result;
}

unint64_t sub_1900059E0()
{
  result = qword_1EAD34CA0;
  if (!qword_1EAD34CA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD35358);
    sub_190005A98(&qword_1EAD34C38, &qword_1EAD35350);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD34CA0);
  }

  return result;
}

uint64_t sub_190005A98(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

id sub_190005B2C()
{
  type metadata accessor for ResourceBundleClass();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  result = [objc_opt_self() bundleForClass_];
  qword_1EAD34D78 = result;
  return result;
}

uint64_t sub_190005B84()
{
  v0 = sub_1900B0E40();
  __swift_allocate_value_buffer(v0, qword_1EAD379C0);
  __swift_project_value_buffer(v0, qword_1EAD379C0);
  if (qword_1EAD34D70 != -1)
  {
    swift_once();
  }

  v1 = qword_1EAD34D78;
  return sub_1900B0E30();
}

uint64_t __isPlatformVersionAtLeast(uint64_t a1, int a2, int a3, int a4)
{
  if (qword_1EAD36400 == -1)
  {
    if (qword_1EAD36408)
    {
      return _availability_version_check();
    }
  }

  else
  {
    v5 = a4;
    v6 = a3;
    v7 = a2;
    __isPlatformVersionAtLeast_cold_1();
    a2 = v7;
    a3 = v6;
    a4 = v5;
    if (qword_1EAD36408)
    {
      return _availability_version_check();
    }
  }

  if (qword_1EAD363F8 != -1)
  {
    v9 = a4;
    v10 = a3;
    v11 = a2;
    __isPlatformVersionAtLeast_cold_2();
    a3 = v10;
    a4 = v9;
    v8 = _MergedGlobals < v11;
    if (_MergedGlobals > v11)
    {
      return 1;
    }

LABEL_7:
    if (!v8)
    {
      if (dword_1EAD363EC > a3)
      {
        return 1;
      }

      if (dword_1EAD363EC >= a3)
      {
        return dword_1EAD363F0 >= a4;
      }
    }

    return 0;
  }

  v8 = _MergedGlobals < a2;
  if (_MergedGlobals <= a2)
  {
    goto LABEL_7;
  }

  return 1;
}

uint64_t _initializeAvailabilityCheck(uint64_t result)
{
  v29 = *MEMORY[0x1E69E9840];
  v1 = qword_1EAD36408;
  if (qword_1EAD36408)
  {
    v2 = result == 0;
  }

  else
  {
    v2 = 0;
  }

  if (!v2)
  {
    if (MEMORY[0x1EEE9AC60])
    {
      v1 = MEMORY[0x1EEE9AC60];
      qword_1EAD36408 = MEMORY[0x1EEE9AC60];
    }

    if (v1)
    {
      v3 = result == 0;
    }

    else
    {
      v3 = 0;
    }

    if (!v3)
    {
      result = dlsym(0xFFFFFFFFFFFFFFFELL, "kCFAllocatorNull");
      if (result)
      {
        v4 = *result;
        result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFDataCreateWithBytesNoCopy");
        if (result)
        {
          v5 = result;
          v6 = dlsym(0xFFFFFFFFFFFFFFFELL, "CFPropertyListCreateWithData");
          result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFPropertyListCreateFromXMLData");
          if (v6 | result)
          {
            v7 = result;
            result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringCreateWithCStringNoCopy");
            if (result)
            {
              v8 = result;
              result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFDictionaryGetValue");
              if (result)
              {
                v9 = result;
                result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFGetTypeID");
                if (result)
                {
                  v10 = result;
                  result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringGetTypeID");
                  if (result)
                  {
                    v11 = result;
                    result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringGetCString");
                    v27 = result;
                    if (result)
                    {
                      result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFRelease");
                      if (result)
                      {
                        v12 = result;
                        result = fopen("/System/Library/CoreServices/SystemVersion.plist", "r");
                        if (result)
                        {
                          v13 = result;
                          v26 = v12;
                          fseek(result, 0, 2);
                          v14 = MEMORY[0x193AE8730](v13);
                          if (v14 < 0)
                          {
                            v16 = 0;
                          }

                          else
                          {
                            v15 = v14;
                            rewind(v13);
                            v16 = malloc(v15);
                            if (v16)
                            {
                              v25 = v16;
                              if (fread(v16, 1uLL, v15, v13) == v15 && (v17 = v5(0, v25, v15, v4)) != 0)
                              {
                                v18 = v17;
                                if (v6)
                                {
                                  v19 = (v6)(0, v17, 0, 0, 0);
                                }

                                else
                                {
                                  v19 = v7(0, v17, 0, 0);
                                }

                                v20 = v19;
                                if (v19)
                                {
                                  v21 = v8(0, "ProductVersion", 1536, v4);
                                  if (v21)
                                  {
                                    v22 = v21;
                                    v23 = v9(v20, v21);
                                    (v26)(v22);
                                    if (v23)
                                    {
                                      v24 = v10(v23);
                                      if (v24 == v11())
                                      {
                                        if (v27(v23, v28, 32, 134217984))
                                        {
                                          sscanf(v28, "%d.%d.%d", &_MergedGlobals, &dword_1EAD363EC, &dword_1EAD363F0);
                                        }
                                      }
                                    }
                                  }

                                  (v26)(v20);
                                }

                                (v26)(v18);
                                v16 = v25;
                              }

                              else
                              {
                                v16 = v25;
                              }
                            }
                          }

                          free(v16);
                          return fclose(v13);
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

  return result;
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id keyboardPerfLog()
{
  if (keyboardPerfLog_onceToken != -1)
  {
    dispatch_once(&keyboardPerfLog_onceToken, &__block_literal_global_136);
  }

  v1 = keyboardPerfLog_log;

  return v1;
}

uint64_t __keyboardPerfLog_block_invoke()
{
  v0 = os_log_create("com.apple.TextInputUI", "keyboardPerf.UI");
  v1 = keyboardPerfLog_log;
  keyboardPerfLog_log = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

uint64_t visualStyleFromString(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:@"iPhone-Standard"])
  {
    v2 = 1;
  }

  else if ([v1 isEqualToString:@"iPhone-Dictation"])
  {
    v2 = 2;
  }

  else if ([v1 isEqualToString:@"iPhone-Alert"])
  {
    v2 = 3;
  }

  else if ([v1 isEqualToString:@"iPhone-Emoji"])
  {
    v2 = 4;
  }

  else if ([v1 isEqualToString:@"iPhone-Passcode"])
  {
    v2 = 5;
  }

  else if ([v1 isEqualToString:@"Wildcat-50On"])
  {
    v2 = 101;
  }

  else if ([v1 isEqualToString:@"Wildcat-Standard"])
  {
    v2 = 102;
  }

  else if ([v1 isEqualToString:@"Wildcat-Dictation"])
  {
    v2 = 103;
  }

  else if ([v1 isEqualToString:@"Wildcat-Alert"])
  {
    v2 = 104;
  }

  else if ([v1 isEqualToString:@"Wildcat-Passcode"])
  {
    v2 = 105;
  }

  else if ([v1 isEqualToString:@"Wildcat-Split"])
  {
    v2 = 106;
  }

  else if ([v1 isEqualToString:@"Wildcat-Split-Full-Width"])
  {
    v2 = 107;
  }

  else if ([v1 isEqualToString:@"Wildcat-Emoji"])
  {
    v2 = 108;
  }

  else if ([v1 isEqualToString:@"Wildcat-Emoji-Split"])
  {
    v2 = 109;
  }

  else if ([v1 isEqualToString:@"Monolith-Standard"])
  {
    v2 = 201;
  }

  else if ([v1 isEqualToString:@"Car-Standard"])
  {
    v2 = 301;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

__CFString *enumStringForVisualStyle(int a1)
{
  if (a1 > 103)
  {
    v1 = @"UIKBVisualStyleMonolithStandard";
    v10 = @"UIKBVisualStyleCarStandard";
    if (a1 != 301)
    {
      v10 = 0;
    }

    if (a1 != 201)
    {
      v1 = v10;
    }

    v11 = @"UIKBVisualStyleWildcatEmoji";
    v12 = @"UIKBVisualStyleWildcatEmojiSplit";
    if (a1 != 109)
    {
      v12 = 0;
    }

    if (a1 != 108)
    {
      v11 = v12;
    }

    if (a1 <= 200)
    {
      v1 = v11;
    }

    v5 = @"UIKBVisualStyleWildcatSplit";
    v13 = @"UIKBVisualStyleWildcatSplitFullWidth";
    if (a1 != 107)
    {
      v13 = 0;
    }

    if (a1 != 106)
    {
      v5 = v13;
    }

    v14 = @"UIKBVisualStyleWildcatAlert";
    v15 = @"UIKBVisualStyleWildcatPasscode";
    if (a1 != 105)
    {
      v15 = 0;
    }

    if (a1 != 104)
    {
      v14 = v15;
    }

    if (a1 <= 105)
    {
      v5 = v14;
    }

    v9 = a1 <= 107;
  }

  else
  {
    v1 = @"UIKBVisualStyleWildcatStandard";
    v2 = @"UIKBVisualStyleWildcatDictation";
    if (a1 != 103)
    {
      v2 = 0;
    }

    if (a1 != 102)
    {
      v1 = v2;
    }

    v3 = @"UIKBVisualStyleiPhonePasscode";
    v4 = @"UIKBVisualStyleWildcat50On";
    if (a1 != 101)
    {
      v4 = 0;
    }

    if (a1 != 5)
    {
      v3 = v4;
    }

    if (a1 <= 101)
    {
      v1 = v3;
    }

    v5 = @"UIKBVisualStyleiPhoneAlert";
    v6 = @"UIKBVisualStyleiPhoneEmoji";
    if (a1 != 4)
    {
      v6 = 0;
    }

    if (a1 != 3)
    {
      v5 = v6;
    }

    v7 = @"UIKBVisualStyleiPhoneStandard";
    v8 = @"UIKBVisualStyleiPhoneDictation";
    if (a1 != 2)
    {
      v8 = 0;
    }

    if (a1 != 1)
    {
      v7 = v8;
    }

    if (a1 <= 2)
    {
      v5 = v7;
    }

    v9 = a1 <= 4;
  }

  if (v9)
  {
    return v5;
  }

  else
  {
    return v1;
  }
}

uint64_t interactionTypeFromString(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:@"None"])
  {
    v2 = 0;
  }

  else if ([v1 isEqualToString:@"String"])
  {
    v2 = 1;
  }

  else if ([v1 isEqualToString:@"String-Popup"])
  {
    v2 = 2;
  }

  else if ([v1 isEqualToString:@"CandidateList"])
  {
    v2 = 3;
  }

  else if ([v1 isEqualToString:@"Delete"])
  {
    v2 = 4;
  }

  else if ([v1 isEqualToString:@"Dictation"])
  {
    v2 = 5;
  }

  else if ([v1 isEqualToString:@"Dismiss"])
  {
    v2 = 6;
  }

  else if ([v1 isEqualToString:@"Drag"])
  {
    v2 = 7;
  }

  else if ([v1 isEqualToString:@"Handwriting"])
  {
    v2 = 8;
  }

  else if ([v1 isEqualToString:@"International"])
  {
    v2 = 9;
  }

  else if ([v1 isEqualToString:@"KeyplaneSwitch"])
  {
    v2 = 10;
  }

  else if ([v1 isEqualToString:@"More"])
  {
    v2 = 11;
  }

  else if ([v1 isEqualToString:@"Redo"])
  {
    v2 = 12;
  }

  else if ([v1 isEqualToString:@"Return"])
  {
    v2 = 13;
  }

  else if ([v1 isEqualToString:@"Shift"])
  {
    v2 = 14;
  }

  else if ([v1 isEqualToString:@"Space"])
  {
    v2 = 15;
  }

  else if ([v1 isEqualToString:@"String-Flick"])
  {
    v2 = 16;
  }

  else if ([v1 isEqualToString:@"Undo"])
  {
    v2 = 17;
  }

  else if ([v1 isEqualToString:@"EmojiInputView"])
  {
    v2 = 18;
  }

  else if ([v1 isEqualToString:@"EmojiCategoryControl"])
  {
    v2 = 19;
  }

  else if ([v1 isEqualToString:@"MultitapComplete"])
  {
    v2 = 20;
  }

  else if ([v1 isEqualToString:@"MultitapReverse"])
  {
    v2 = 21;
  }

  else if ([v1 isEqualToString:@"RecentInput"])
  {
    v2 = 22;
  }

  else if ([v1 isEqualToString:@"Clear"])
  {
    v2 = 23;
  }

  else if ([v1 isEqualToString:@"RevealHiddenCandidates"])
  {
    v2 = 24;
  }

  else if ([v1 isEqualToString:@"SelectNextCandidate"])
  {
    v2 = 25;
  }

  else if ([v1 isEqualToString:@"SelectPreviousCandidate"])
  {
    v2 = 26;
  }

  else if ([v1 isEqualToString:@"AcceptAutocorrection"])
  {
    v2 = 27;
  }

  else if ([v1 isEqualToString:@"Bold"])
  {
    v2 = 28;
  }

  else if ([v1 isEqualToString:@"Italic"])
  {
    v2 = 29;
  }

  else if ([v1 isEqualToString:@"Underline"])
  {
    v2 = 30;
  }

  else if ([v1 isEqualToString:@"Cut"])
  {
    v2 = 31;
  }

  else if ([v1 isEqualToString:@"Copy"])
  {
    v2 = 32;
  }

  else if ([v1 isEqualToString:@"Paste"])
  {
    v2 = 33;
  }

  else if ([v1 isEqualToString:@"LeftArrow"])
  {
    v2 = 34;
  }

  else if ([v1 isEqualToString:@"RightArrow"])
  {
    v2 = 35;
  }

  else if ([v1 isEqualToString:@"AssertLayoutTag"])
  {
    v2 = 36;
  }

  else if ([v1 isEqualToString:@"Tab"])
  {
    v2 = 37;
  }

  else if ([v1 isEqualToString:@"Caps-Lock"])
  {
    v2 = 38;
  }

  else if ([v1 isEqualToString:@"Dictation-Display"])
  {
    v2 = 39;
  }

  else if ([v1 isEqualToString:@"MessageWriteboard"])
  {
    v2 = 40;
  }

  else if ([v1 isEqualToString:@"MultitapForward"])
  {
    v2 = 41;
  }

  else if ([v1 isEqualToString:@"EmojiSearchControl"])
  {
    v2 = 42;
  }

  else if ([v1 isEqualToString:@"CandidateExtension"])
  {
    v2 = 43;
  }

  else if ([v1 isEqualToString:@"CustomAction"])
  {
    v2 = 44;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

__CFString *enumStringForInteractionType(unsigned int a1)
{
  if (a1 > 0x2C)
  {
    return 0;
  }

  else
  {
    return off_1E72D24F0[a1];
  }
}

uint64_t displayTypeFromString(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:@"String"])
  {
    v2 = 0;
  }

  else if ([v1 isEqualToString:@"CandidateList"])
  {
    v2 = 1;
  }

  else if ([v1 isEqualToString:@"Command"])
  {
    v2 = 2;
  }

  else if ([v1 isEqualToString:@"Delete"])
  {
    v2 = 3;
  }

  else if ([v1 isEqualToString:@"Dictation"])
  {
    v2 = 4;
  }

  else if ([v1 isEqualToString:@"Dismiss"])
  {
    v2 = 5;
  }

  else if ([v1 isEqualToString:@"Drag"])
  {
    v2 = 6;
  }

  else if ([v1 isEqualToString:@"DualString"])
  {
    v2 = 7;
  }

  else if ([v1 isEqualToString:@"DynamicString"])
  {
    v2 = 8;
  }

  else if ([v1 isEqualToString:@"Emoji"])
  {
    v2 = 9;
  }

  else if ([v1 isEqualToString:@"TenKeyKeyplaneSwitchOff"])
  {
    v2 = 10;
  }

  else if ([v1 isEqualToString:@"TenKeyKeyplaneSwitchOn"])
  {
    v2 = 11;
  }

  else if ([v1 isEqualToString:@"Handwriting"])
  {
    v2 = 12;
  }

  else if ([v1 isEqualToString:@"International"])
  {
    v2 = 13;
  }

  else if ([v1 isEqualToString:@"KeyplaneSwitch"])
  {
    v2 = 14;
  }

  else if ([v1 isEqualToString:@"LeftDarkAndNoRightDivider"])
  {
    v2 = 15;
  }

  else if ([v1 isEqualToString:@"LightBottom"])
  {
    v2 = 16;
  }

  else if ([v1 isEqualToString:@"LightBottomAndRight"])
  {
    v2 = 17;
  }

  else if ([v1 isEqualToString:@"More"])
  {
    v2 = 18;
  }

  else if ([v1 isEqualToString:@"NoRightDivider"])
  {
    v2 = 19;
  }

  else if ([v1 isEqualToString:@"NumberPad"])
  {
    v2 = 20;
  }

  else if ([v1 isEqualToString:@"Return"])
  {
    v2 = 21;
  }

  else if ([v1 isEqualToString:@"ReverseVerticalDark"])
  {
    v2 = 22;
  }

  else if ([v1 isEqualToString:@"Shift"])
  {
    v2 = 23;
  }

  else if ([v1 isEqualToString:@"SmallKana"])
  {
    v2 = 24;
  }

  else if ([v1 isEqualToString:@"Space"])
  {
    v2 = 25;
  }

  else if ([v1 isEqualToString:@"Tab"])
  {
    v2 = 26;
  }

  else if ([v1 isEqualToString:@"Top-Level-Domain"])
  {
    v2 = 27;
  }

  else if ([v1 isEqualToString:@"Top-Level-Domain-Variant"])
  {
    v2 = 28;
  }

  else if ([v1 isEqualToString:@"TwoVerticalDark"])
  {
    v2 = 29;
  }

  else if ([v1 isEqualToString:@"TwoVerticalLight"])
  {
    v2 = 30;
  }

  else if ([v1 isEqualToString:@"VoicedKey"])
  {
    v2 = 31;
  }

  else if ([v1 isEqualToString:@"MultitapComplete"])
  {
    v2 = 32;
  }

  else if ([v1 isEqualToString:@"MultitapReverse"])
  {
    v2 = 33;
  }

  else if ([v1 isEqualToString:@"WALongVowelSign"])
  {
    v2 = 34;
  }

  else if ([v1 isEqualToString:@"TenKeyRoman"])
  {
    v2 = 35;
  }

  else if ([v1 isEqualToString:@"EmojiInputView"])
  {
    v2 = 36;
  }

  else if ([v1 isEqualToString:@"EmojiCategoryControl"])
  {
    v2 = 37;
  }

  else if ([v1 isEqualToString:@"Letter-Line"])
  {
    v2 = 38;
  }

  else if ([v1 isEqualToString:@"Bold"])
  {
    v2 = 39;
  }

  else if ([v1 isEqualToString:@"Italic"])
  {
    v2 = 40;
  }

  else if ([v1 isEqualToString:@"Underline"])
  {
    v2 = 41;
  }

  else if ([v1 isEqualToString:@"Cut"])
  {
    v2 = 42;
  }

  else if ([v1 isEqualToString:@"Copy"])
  {
    v2 = 43;
  }

  else if ([v1 isEqualToString:@"Paste"])
  {
    v2 = 44;
  }

  else if ([v1 isEqualToString:@"LeftArrow"])
  {
    v2 = 45;
  }

  else if ([v1 isEqualToString:@"RightArrow"])
  {
    v2 = 46;
  }

  else if ([v1 isEqualToString:@"PredictionActive"])
  {
    v2 = 47;
  }

  else if ([v1 isEqualToString:@"UCBSelectionBackground"])
  {
    v2 = 48;
  }

  else if ([v1 isEqualToString:@"BIU"])
  {
    v2 = 49;
  }

  else if ([v1 isEqualToString:@"Divider"])
  {
    v2 = 50;
  }

  else if ([v1 isEqualToString:@"Caps-Lock"])
  {
    v2 = 51;
  }

  else if ([v1 isEqualToString:@"Dictation-Display"])
  {
    v2 = 52;
  }

  else if ([v1 isEqualToString:@"MessageWriteboard"])
  {
    v2 = 53;
  }

  else if ([v1 isEqualToString:@"KeyplaneSwitchCollapsed"])
  {
    v2 = 54;
  }

  else if ([v1 isEqualToString:@"EmojiSearchControl"])
  {
    v2 = 55;
  }

  else if ([v1 isEqualToString:@"CustomAction"])
  {
    v2 = 56;
  }

  else if ([v1 isEqualToString:@"Image"])
  {
    v2 = 57;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

__CFString *enumStringForDisplayType(unsigned int a1)
{
  if (a1 > 0x39)
  {
    return 0;
  }

  else
  {
    return off_1E72D2658[a1];
  }
}

uint64_t variantsTypeFromString(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:@"accents"])
  {
    v2 = 1;
  }

  else if ([v1 isEqualToString:@"currency"])
  {
    v2 = 3;
  }

  else if ([v1 isEqualToString:@"email"])
  {
    v2 = 4;
  }

  else if ([v1 isEqualToString:@"immediate-accents"])
  {
    v2 = 5;
  }

  else if ([v1 isEqualToString:@"input-modes"])
  {
    v2 = 6;
  }

  else if ([v1 isEqualToString:@"URL"])
  {
    v2 = 7;
  }

  else if ([v1 isEqualToString:@"keyplane-accents"])
  {
    v2 = 8;
  }

  else if ([v1 isEqualToString:@"BIU"])
  {
    v2 = 9;
  }

  else if ([v1 isEqualToString:@"skin-tone-emoji-accents"])
  {
    v2 = 10;
  }

  else if ([v1 isEqualToString:@"prepopulated-accents"])
  {
    v2 = 11;
  }

  else if ([v1 isEqualToString:@"extended-skin-tone-emoji-selector"])
  {
    v2 = 12;
  }

  else if ([v1 isEqualToString:@"prepopulated-extended-skin-tone-emoji"])
  {
    v2 = 13;
  }

  else if ([v1 isEqualToString:@"keyplane-switcher"])
  {
    v2 = 14;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

uint64_t enumStringForVariantsType(int a1)
{
  if ((a1 - 1) > 0xD)
  {
    return 0;
  }

  else
  {
    return *(&off_1E72D2828 + (a1 - 1));
  }
}

uint64_t attributeValueFromString(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:@"10key"])
  {
    v2 = 1;
  }

  else if ([v1 isEqualToString:@"center"])
  {
    v2 = 2;
  }

  else if ([v1 isEqualToString:@"dark"])
  {
    v2 = 3;
  }

  else if ([v1 isEqualToString:@"disabled"])
  {
    v2 = 4;
  }

  else if ([v1 isEqualToString:@"enabled"])
  {
    v2 = 5;
  }

  else if ([v1 isEqualToString:@"extended-symbols"])
  {
    v2 = 6;
  }

  else if ([v1 isEqualToString:@"flick"])
  {
    v2 = 7;
  }

  else if ([v1 isEqualToString:@"glyph"])
  {
    v2 = 8;
  }

  else if ([v1 isEqualToString:@"handwriting"])
  {
    v2 = 9;
  }

  else if ([v1 isEqualToString:@"highlighted"])
  {
    v2 = 10;
  }

  else if ([v1 isEqualToString:@"japanese50on"])
  {
    v2 = 11;
  }

  else if ([v1 isEqualToString:@"UIKeyboardTypeASCIICapable"])
  {
    v2 = 12;
  }

  else if ([v1 isEqualToString:@"UIKeyboardTypeDecimalPad"])
  {
    v2 = 13;
  }

  else if ([v1 isEqualToString:@"UIKeyboardTypeDefault"])
  {
    v2 = 14;
  }

  else if ([v1 isEqualToString:@"UIKeyboardTypeEmailAddress"])
  {
    v2 = 15;
  }

  else if ([v1 isEqualToString:@"UIKeyboardTypeNamePhonePad"])
  {
    v2 = 16;
  }

  else if ([v1 isEqualToString:@"UIKeyboardTypeNumberPad"])
  {
    v2 = 17;
  }

  else if ([v1 isEqualToString:@"UIKeyboardTypeNumbersAndPunctuation"])
  {
    v2 = 18;
  }

  else if ([v1 isEqualToString:@"UIKeyboardTypePhonePad"])
  {
    v2 = 19;
  }

  else if ([v1 isEqualToString:@"UIKeyboardTypeURL"])
  {
    v2 = 20;
  }

  else if ([v1 isEqualToString:@"left"])
  {
    v2 = 21;
  }

  else if ([v1 isEqualToString:@"letters"])
  {
    v2 = 22;
  }

  else if ([v1 isEqualToString:@"light"])
  {
    v2 = 23;
  }

  else if ([v1 isEqualToString:@"name"])
  {
    v2 = 24;
  }

  else if ([v1 isEqualToString:@"no"])
  {
    v2 = 25;
  }

  else if ([v1 isEqualToString:@"numbers"])
  {
    v2 = 26;
  }

  else if ([v1 isEqualToString:@"phonepad"])
  {
    v2 = 27;
  }

  else if ([v1 isEqualToString:@"pressed"])
  {
    v2 = 28;
  }

  else if ([v1 isEqualToString:@"right"])
  {
    v2 = 29;
  }

  else if ([v1 isEqualToString:@"straight"])
  {
    v2 = 30;
  }

  else if ([v1 isEqualToString:@"symbols"])
  {
    v2 = 31;
  }

  else if ([v1 isEqualToString:@"yes"])
  {
    v2 = 32;
  }

  else if ([v1 isEqualToString:@"chinese10key"])
  {
    v2 = 33;
  }

  else if ([v1 isEqualToString:@"korean10key"])
  {
    v2 = 34;
  }

  else if ([v1 isEqualToString:@"japanese-aiu"])
  {
    v2 = 35;
  }

  else if ([v1 isEqualToString:@"strictly-left"])
  {
    v2 = 36;
  }

  else if ([v1 isEqualToString:@"strictly-right"])
  {
    v2 = 37;
  }

  else if ([v1 isEqualToString:@"emoji"])
  {
    v2 = 38;
  }

  else if ([v1 isEqualToString:@"dictation"])
  {
    v2 = 39;
  }

  else if ([v1 isEqualToString:@"popup-menu"])
  {
    v2 = 40;
  }

  else if ([v1 isEqualToString:@"high"])
  {
    v2 = 41;
  }

  else if ([v1 isEqualToString:@"linear"])
  {
    v2 = 42;
  }

  else if ([v1 isEqualToString:@"fixed-left"])
  {
    v2 = 43;
  }

  else if ([v1 isEqualToString:@"fixed-right"])
  {
    v2 = 44;
  }

  else if ([v1 isEqualToString:@"cased"])
  {
    v2 = 45;
  }

  else if ([v1 isEqualToString:@"literal"])
  {
    v2 = 46;
  }

  else if ([v1 isEqualToString:@"none"])
  {
    v2 = 47;
  }

  else if ([v1 isEqualToString:@"linear-slim"])
  {
    v2 = 48;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

uint64_t enumStringForAttributeValue(int a1)
{
  if ((a1 - 1) > 0x2F)
  {
    return 0;
  }

  else
  {
    return *(&off_1E72D2898 + (a1 - 1));
  }
}

uint64_t themeTypeFromString(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:@"UIKBThemeDefault"])
  {
    v2 = 0;
  }

  else if ([v1 isEqualToString:@"UIKBThemeBlue"])
  {
    v2 = 1;
  }

  else if ([v1 isEqualToString:@"UIKBThemeDarkGray"])
  {
    v2 = 2;
  }

  else if ([v1 isEqualToString:@"UIKBThemeDarkSteel"])
  {
    v2 = 3;
  }

  else if ([v1 isEqualToString:@"UIKBThemeDarkWood"])
  {
    v2 = 4;
  }

  else if ([v1 isEqualToString:@"UIKBThemeLightGray"])
  {
    v2 = 5;
  }

  else if ([v1 isEqualToString:@"UIKBThemeLightSteel"])
  {
    v2 = 6;
  }

  else if ([v1 isEqualToString:@"UIKBThemeMidGray"])
  {
    v2 = 7;
  }

  else if ([v1 isEqualToString:@"UIKBThemeMidSteel"])
  {
    v2 = 8;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

uint64_t enumStringForThemeType(unsigned int a1)
{
  if (a1 > 8)
  {
    return 0;
  }

  else
  {
    return *(&off_1E72D2A18 + a1);
  }
}

__CFString *stringForAttributeName(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:@"adaptive-keys"])
  {
    v2 = @"UIKBAttributeNameAdaptiveKeys";
  }

  else if ([v1 isEqualToString:@"autoshift"])
  {
    v2 = @"UIKBAttributeNameAutoshift";
  }

  else if ([v1 isEqualToString:@"diacritic-forward-compose"])
  {
    v2 = @"UIKBAttributeNameDiacriticForwardCompose";
  }

  else if ([v1 isEqualToString:@"display-corner"])
  {
    v2 = @"UIKBAttributeNameDisplayCorner";
  }

  else if ([v1 isEqualToString:@"DisplayImage"])
  {
    v2 = @"UIKBAttributeNameDisplayImage";
  }

  else if ([v1 isEqualToString:@"drag-threshold"])
  {
    v2 = @"UIKBAttributeNameDragThreshold";
  }

  else if ([v1 isEqualToString:@"gesture-keyplane"])
  {
    v2 = @"UIKBAttributeNameGestureKeyplane";
  }

  else if ([v1 isEqualToString:@"grid-layout"])
  {
    v2 = @"UIKBAttributeNameGridLayout";
  }

  else if ([v1 isEqualToString:@"group-neighbor"])
  {
    v2 = @"UIKBAttributeNameGroupNeighbor";
  }

  else if ([v1 isEqualToString:@"home-indicator"])
  {
    v2 = @"UIKBAttributeNameHomeIndicator";
  }

  else if ([v1 isEqualToString:@"ignore-hand-bias"])
  {
    v2 = @"UIKBAttributeNameIgnoreHandBias";
  }

  else if ([v1 isEqualToString:@"ignore-shift-state"])
  {
    v2 = @"UIKBAttributeNameIgnoreShiftState";
  }

  else if ([v1 isEqualToString:@"is-alphabetic-plane"])
  {
    v2 = @"UIKBAttributeNameIsAlphabeticPlane";
  }

  else if ([v1 isEqualToString:@"is-kana-keyboard"])
  {
    v2 = @"UIKBAttributeNameIsKanaKeyboard";
  }

  else if ([v1 isEqualToString:@"is-kana-plane"])
  {
    v2 = @"UIKBAttributeNameIsKanaPlane";
  }

  else if ([v1 isEqualToString:@"keycharging"])
  {
    v2 = @"UIKBAttributeNameKeyCharging";
  }

  else if ([v1 isEqualToString:@"label"])
  {
    v2 = @"UIKBAttributeNameLabel";
  }

  else if ([v1 isEqualToString:@"looks-like-shift-alternate"])
  {
    v2 = @"UIKBAttributeNameLooksLikeShiftAlternate";
  }

  else if ([v1 isEqualToString:@"merge-as-more-key"])
  {
    v2 = @"UIKBAttributeNameMergeAsMoreKey";
  }

  else if ([v1 isEqualToString:@"modify-for-writeboard-key"])
  {
    v2 = @"UIKBAttributeNameModifyForWriteboardKey";
  }

  else if ([v1 isEqualToString:@"more-after"])
  {
    v2 = @"UIKBAttributeNameMoreAfter";
  }

  else if ([v1 isEqualToString:@"more-alternate"])
  {
    v2 = @"UIKBAttributeNameMoreAlternate";
  }

  else if ([v1 isEqualToString:@"more-alternate-small-display"])
  {
    v2 = @"UIKBAttributeNameMoreAlternateSmallDisplay";
  }

  else if ([v1 isEqualToString:@"more-rendering"])
  {
    v2 = @"UIKBAttributeNameMoreRendering";
  }

  else if ([v1 isEqualToString:@"no-language-indicator"])
  {
    v2 = @"UIKBAttributeNameNoLanguageIndicator";
  }

  else if ([v1 isEqualToString:@"notusecandidateselection"])
  {
    v2 = @"UIKBAttributeNameNotUseCandidateSelection";
  }

  else if ([v1 isEqualToString:@"popup-bias"])
  {
    v2 = @"UIKBAttributeNamePopupBias";
  }

  else if ([v1 isEqualToString:@"rendering"])
  {
    v2 = @"UIKBAttributeNameRendering";
  }

  else if ([v1 isEqualToString:@"restable"])
  {
    v2 = @"UIKBAttributeNameRestable";
  }

  else if ([v1 isEqualToString:@"shift"])
  {
    v2 = @"UIKBAttributeNameShift";
  }

  else if ([v1 isEqualToString:@"shift-after"])
  {
    v2 = @"UIKBAttributeNameShiftAfter";
  }

  else if ([v1 isEqualToString:@"shift-alternate"])
  {
    v2 = @"UIKBAttributeNameShiftAlternate";
  }

  else if ([v1 isEqualToString:@"shift-alternate-small-display"])
  {
    v2 = @"UIKBAttributeNameShiftAlternateSmallDisplay";
  }

  else if ([v1 isEqualToString:@"shift-is-plane-chooser"])
  {
    v2 = @"UIKBAttributeNameShiftIsPlaneChooser";
  }

  else if ([v1 isEqualToString:@"shift-rendering"])
  {
    v2 = @"UIKBAttributeNameShiftRendering";
  }

  else if ([v1 isEqualToString:@"shouldclearcachedattributes"])
  {
    v2 = @"UIKBAttributeNameShouldClearCachedAttributes";
  }

  else if ([v1 isEqualToString:@"shouldskipcandidateselection"])
  {
    v2 = @"UIKBAttributeNameShouldSkipCandidateSelection";
  }

  else if ([v1 isEqualToString:@"shouldskipcandidateselectionforvariants"])
  {
    v2 = @"UIKBAttributeNameShouldSkipCandidateSelectionForVariants";
  }

  else if ([v1 isEqualToString:@"shouldsuppressdragretest"])
  {
    v2 = @"UIKBAttributeNameShouldSuppressDragRetest";
  }

  else if ([v1 isEqualToString:@"slide-down"])
  {
    v2 = @"UIKBAttributeNameSlideDown";
  }

  else if ([v1 isEqualToString:@"split-after"])
  {
    v2 = @"UIKBAttributeNameSplitAfter";
  }

  else if ([v1 isEqualToString:@"split-alternate"])
  {
    v2 = @"UIKBAttributeNameSplitAlternate";
  }

  else if ([v1 isEqualToString:@"state"])
  {
    v2 = @"UIKBAttributeNameState";
  }

  else if ([v1 isEqualToString:@"supported-types"])
  {
    v2 = @"UIKBAttributeNameSupportedTypes";
  }

  else if ([v1 isEqualToString:@"supports-continuous-path"])
  {
    v2 = @"UIKBAttributeNameSupportsContinuousPath";
  }

  else if ([v1 isEqualToString:@"supports-multitap"])
  {
    v2 = @"UIKBAttributeNameSupportsMultitap";
  }

  else if ([v1 isEqualToString:@"text-alignment"])
  {
    v2 = @"UIKBAttributeNameTextAlignment";
  }

  else if ([v1 isEqualToString:@"tint"])
  {
    v2 = @"UIKBAttributeNameTint";
  }

  else if ([v1 isEqualToString:@"variant-popup-bias"])
  {
    v2 = @"UIKBAttributeNameVariantPopupBias";
  }

  else if ([v1 isEqualToString:@"variant-type"])
  {
    v2 = @"UIKBAttributeNameVariantType";
  }

  else if ([v1 isEqualToString:@"visible"])
  {
    v2 = @"UIKBAttributeNameVisible";
  }

  else if ([v1 isEqualToString:@"UIKeyboardTypeASCIICapableNumberPad"])
  {
    v2 = @"UIKBAttributeValueKeyboardTypeASCIICapableNumberPadStr";
  }

  else if ([v1 isEqualToString:@"UIKeyboardTypeASCIICapable"])
  {
    v2 = @"UIKBAttributeValueKeyboardTypeASCIICapableStr";
  }

  else if ([v1 isEqualToString:@"UIKeyboardTypeDecimalPad"])
  {
    v2 = @"UIKBAttributeValueKeyboardTypeDecimalPadStr";
  }

  else if ([v1 isEqualToString:@"UIKeyboardTypeDefault"])
  {
    v2 = @"UIKBAttributeValueKeyboardTypeDefaultStr";
  }

  else if ([v1 isEqualToString:@"UIKeyboardTypeEmailAddress"])
  {
    v2 = @"UIKBAttributeValueKeyboardTypeEmailAddressStr";
  }

  else if ([v1 isEqualToString:@"UIKeyboardTypeNamePhonePad"])
  {
    v2 = @"UIKBAttributeValueKeyboardTypeNamePhonePadStr";
  }

  else if ([v1 isEqualToString:@"UIKeyboardTypeNumberPad"])
  {
    v2 = @"UIKBAttributeValueKeyboardTypeNumberPadStr";
  }

  else if ([v1 isEqualToString:@"UIKeyboardTypeNumbersAndPunctuation"])
  {
    v2 = @"UIKBAttributeValueKeyboardTypeNumbersAndPunctuationStr";
  }

  else if ([v1 isEqualToString:@"UIKeyboardTypePhonePad"])
  {
    v2 = @"UIKBAttributeValueKeyboardTypePhonePadStr";
  }

  else if ([v1 isEqualToString:@"UIKeyboardTypeTwitter"])
  {
    v2 = @"UIKBAttributeValueKeyboardTypeTwitterStr";
  }

  else if ([v1 isEqualToString:@"UIKeyboardTypeURL"])
  {
    v2 = @"UIKBAttributeValueKeyboardTypeURLStr";
  }

  else if ([v1 isEqualToString:@"UIKeyboardTypeWebSearch"])
  {
    v2 = @"UIKBAttributeValueKeyboardTypeWebSearchStr";
  }

  else if ([v1 isEqualToString:@"KBabstract"])
  {
    v2 = @"UIKBTreePropertyAbstract";
  }

  else if ([v1 isEqualToString:@"KBactiveGeometriesList"])
  {
    v2 = @"UIKBTreePropertyActiveGeometriesList";
  }

  else if ([v1 isEqualToString:@"KBcachedGestureLayout"])
  {
    v2 = @"UIKBTreePropertyCachedGestureLayout";
  }

  else if ([v1 isEqualToString:@"KBCachedKeyboardType"])
  {
    v2 = @"UIKBTreePropertyCachedKeyboardType";
  }

  else if ([v1 isEqualToString:@"KBclipCorners"])
  {
    v2 = @"UIKBTreePropertyClipCorners";
  }

  else if ([v1 isEqualToString:@"KBdisplayRowHint"])
  {
    v2 = @"UIKBTreePropertyDisplayRowHint";
  }

  else if ([v1 isEqualToString:@"KBdisplayString"])
  {
    v2 = @"UIKBTreePropertyDisplayString";
  }

  else if ([v1 isEqualToString:@"KBdisplayType"])
  {
    v2 = @"UIKBTreePropertyDisplayType";
  }

  else if ([v1 isEqualToString:@"KBdisplayTypeHint"])
  {
    v2 = @"UIKBTreePropertyDisplayTypeHint";
  }

  else if ([v1 isEqualToString:@"KBdynamic"])
  {
    v2 = @"UIKBTreePropertyDynamicLayout";
  }

  else if ([v1 isEqualToString:@"KBflickDirection"])
  {
    v2 = @"UIKBTreePropertyFlickDirection";
  }

  else if ([v1 isEqualToString:@"KBforceMultitap"])
  {
    v2 = @"UIKBTreePropertyForceMultitap";
  }

  else if ([v1 isEqualToString:@"KBgeometriesList"])
  {
    v2 = @"UIKBTreePropertyGeometriesList";
  }

  else if ([v1 isEqualToString:@"KBgeometry"])
  {
    v2 = @"UIKBTreePropertyGeometry";
  }

  else if ([v1 isEqualToString:@"KBgestureKey"])
  {
    v2 = @"UIKBTreePropertyGestureKey";
  }

  else if ([v1 isEqualToString:@"KBghost"])
  {
    v2 = @"UIKBTreePropertyGhost";
  }

  else if ([v1 isEqualToString:@"KBhighlightedVariantsList"])
  {
    v2 = @"UIKBTreePropertyHighlightedVariantsList";
  }

  else if ([v1 isEqualToString:@"KBhint"])
  {
    v2 = @"UIKBTreePropertyHint";
  }

  else if ([v1 isEqualToString:@"KBinteractionType"])
  {
    v2 = @"UIKBTreePropertyInteractionType";
  }

  else if ([v1 isEqualToString:@"KBunionFrame"])
  {
    v2 = @"UIKBTreePropertyKeyUnionFrame";
  }

  else if ([v1 isEqualToString:@"KBunionPaddedFrame"])
  {
    v2 = @"UIKBTreePropertyKeyUnionPaddedFrame";
  }

  else if ([v1 isEqualToString:@"KBlocalizationKey"])
  {
    v2 = @"UIKBTreePropertyLocalizationKey";
  }

  else if ([v1 isEqualToString:@"KBname"])
  {
    v2 = @"UIKBTreePropertyName";
  }

  else if ([v1 isEqualToString:@"KBoverrideDisplayString"])
  {
    v2 = @"UIKBTreePropertyOverrideDisplayString";
  }

  else if ([v1 isEqualToString:@"KBother"])
  {
    v2 = @"UIKBTreePropertyParent";
  }

  else if ([v1 isEqualToString:@"KBparentKey"])
  {
    v2 = @"UIKBTreePropertyParentKey";
  }

  else if ([v1 isEqualToString:@"KBpopupDirection"])
  {
    v2 = @"UIKBTreePropertyPopupDirection";
  }

  else if ([v1 isEqualToString:@"KBpreventPaddle"])
  {
    v2 = @"UIKBTreePropertyPreventPaddle";
  }

  else if ([v1 isEqualToString:@"KBrepresentedString"])
  {
    v2 = @"UIKBTreePropertyRepresentedString";
  }

  else if ([v1 isEqualToString:@"KBRowSetVariantType"])
  {
    v2 = @"UIKBTreePropertyRowSetVariantType";
  }

  else if ([v1 isEqualToString:@"KBsecondaryDisplayStrings"])
  {
    v2 = @"UIKBTreePropertySecondaryDisplayStrings";
  }

  else if ([v1 isEqualToString:@"KBsecondaryRepresentedStrings"])
  {
    v2 = @"UIKBTreePropertySecondaryRepresentedStrings";
  }

  else if ([v1 isEqualToString:@"KBselectedVariantIndex"])
  {
    v2 = @"UIKBTreePropertySelectedVariantIndex";
  }

  else if ([v1 isEqualToString:@"KBselectedVariantIndices"])
  {
    v2 = @"UIKBTreePropertySelectedVariantIndices";
  }

  else if ([v1 isEqualToString:@"KBshape"])
  {
    v2 = @"UIKBTreePropertyShape";
  }

  else if ([v1 isEqualToString:@"KBsplitMode"])
  {
    v2 = @"UIKBTreePropertySplitMode";
  }

  else if ([v1 isEqualToString:@"KBtheme"])
  {
    v2 = @"UIKBTreePropertyTheme";
  }

  else if ([v1 isEqualToString:@"KBToggleKeys"])
  {
    v2 = @"UIKBTreePropertyTogglePrefix";
  }

  else if ([v1 isEqualToString:@"KBvisualStyle"])
  {
    v2 = @"UIKBTreePropertyVisualStyle";
  }

  else if ([v1 isEqualToString:@"KBvisualStyling"])
  {
    v2 = @"UIKBTreePropertyVisualStyling";
  }

  else
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"@%@", v1];
  }

  return v2;
}

uint64_t textAlignmentFromAttribute(int a1)
{
  v1 = 1;
  if (a1 == 29)
  {
    v1 = 2;
  }

  if (a1 == 21)
  {
    return 0;
  }

  else
  {
    return v1;
  }
}

uint64_t _TextInputUIBundle()
{
  v0 = MEMORY[0x1E696AAE8];
  v1 = objc_opt_class();

  return [v0 bundleForClass:v1];
}

uint64_t _UIKitBundle()
{
  v0 = MEMORY[0x1E696AAE8];
  v1 = objc_opt_class();

  return [v0 bundleForClass:v1];
}

uint64_t _TUIApplicationIsFirstPartyStickers()
{
  if (_TUIApplicationIsFirstPartyStickers_onceToken != -1)
  {
    dispatch_once(&_TUIApplicationIsFirstPartyStickers_onceToken, &__block_literal_global_1320);
  }

  return _TUIApplicationIsFirstPartyStickers_isFirstPartyStickers;
}

uint64_t _TUIApplicationIsStickerPickerService()
{
  if (_TUIApplicationIsStickerPickerService_onceToken != -1)
  {
    dispatch_once(&_TUIApplicationIsStickerPickerService_onceToken, &__block_literal_global_5);
  }

  return _TUIApplicationIsStickerPickerService_isStickerPickerService;
}

double _TUIRivenFactor(double a1)
{
  v2 = [getUIKeyboardPreferencesControllerClass() sharedPreferencesController];
  [v2 rivenSizeFactor:a1];
  v4 = v3;

  return v4;
}

id getUIKeyboardPreferencesControllerClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getUIKeyboardPreferencesControllerClass_softClass;
  v7 = getUIKeyboardPreferencesControllerClass_softClass;
  if (!getUIKeyboardPreferencesControllerClass_softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getUIKeyboardPreferencesControllerClass_block_invoke;
    v3[3] = &unk_1E72D8058;
    v3[4] = &v4;
    __getUIKeyboardPreferencesControllerClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

Class __getUIKeyboardPreferencesControllerClass_block_invoke(uint64_t a1)
{
  UIKitLibrary();
  result = objc_getClass("UIKeyboardPreferencesController");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getUIKeyboardPreferencesControllerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    abort_report_np();
    return UIKitLibrary();
  }

  return result;
}

uint64_t UIKitLibrary()
{
  v6 = *MEMORY[0x1E69E9840];
  v3[0] = 0;
  if (!UIKitLibraryCore_frameworkLibrary)
  {
    v3[1] = MEMORY[0x1E69E9820];
    v3[2] = 3221225472;
    v3[3] = __UIKitLibraryCore_block_invoke;
    v3[4] = &__block_descriptor_40_e5_v8__0l;
    v3[5] = v3;
    v4 = xmmword_1E72D2A60;
    v5 = 0;
    UIKitLibraryCore_frameworkLibrary = _sl_dlopen();
    v1 = v3[0];
    v0 = UIKitLibraryCore_frameworkLibrary;
    if (UIKitLibraryCore_frameworkLibrary)
    {
      if (!v3[0])
      {
        return v0;
      }
    }

    else
    {
      v1 = abort_report_np();
    }

    free(v1);
    return v0;
  }

  return UIKitLibraryCore_frameworkLibrary;
}

uint64_t __UIKitLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  UIKitLibraryCore_frameworkLibrary = result;
  return result;
}

uint64_t _TUIInputGesturesEnabled()
{
  v0 = [getUIKeyboardPreferencesControllerClass() sharedPreferencesController];
  v1 = [v0 BOOLForPreferenceKey:@"GesturesEnabled"];

  return v1;
}

void *_TUIKeyboardComputeKeyboardIdiomFromScreenTraits(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = a1;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v6 = getUIKeyboardComputeKeyboardIdiomFromScreenTraitsSymbolLoc_ptr;
  v14 = getUIKeyboardComputeKeyboardIdiomFromScreenTraitsSymbolLoc_ptr;
  if (!getUIKeyboardComputeKeyboardIdiomFromScreenTraitsSymbolLoc_ptr)
  {
    v7 = UIKitLibrary();
    v12[3] = dlsym(v7, "UIKeyboardComputeKeyboardIdiomFromScreenTraits");
    getUIKeyboardComputeKeyboardIdiomFromScreenTraitsSymbolLoc_ptr = v12[3];
    v6 = v12[3];
  }

  _Block_object_dispose(&v11, 8);
  if (v6)
  {
    v8 = v6(v5, a2, a3);

    return v8;
  }

  else
  {
    dlerror();
    v10 = abort_report_np();
    return __getUIKeyboardComputeKeyboardIdiomFromScreenTraitsSymbolLoc_block_invoke(v10);
  }
}

void *__getUIKeyboardComputeKeyboardIdiomFromScreenTraitsSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = UIKitLibrary();
  result = dlsym(v2, "UIKeyboardComputeKeyboardIdiomFromScreenTraits");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getUIKeyboardComputeKeyboardIdiomFromScreenTraitsSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *_TUIKeyboardCarPlayIsRightHandDrive()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v0 = getUIKeyboardCarPlayIsRightHandDriveSymbolLoc_ptr;
  v7 = getUIKeyboardCarPlayIsRightHandDriveSymbolLoc_ptr;
  if (!getUIKeyboardCarPlayIsRightHandDriveSymbolLoc_ptr)
  {
    v1 = UIKitLibrary();
    v5[3] = dlsym(v1, "UIKeyboardCarPlayIsRightHandDrive");
    getUIKeyboardCarPlayIsRightHandDriveSymbolLoc_ptr = v5[3];
    v0 = v5[3];
  }

  _Block_object_dispose(&v4, 8);
  if (v0)
  {
    return v0();
  }

  dlerror();
  v3 = abort_report_np();
  return __getUIKeyboardCarPlayIsRightHandDriveSymbolLoc_block_invoke(v3);
}

void *__getUIKeyboardCarPlayIsRightHandDriveSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = UIKitLibrary();
  result = dlsym(v2, "UIKeyboardCarPlayIsRightHandDrive");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getUIKeyboardCarPlayIsRightHandDriveSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void tui_performBlockOnMainThread(void *a1)
{
  v1 = MEMORY[0x1E696AF00];
  block = a1;
  if ([v1 isMainThread])
  {
    block[2]();
  }

  else
  {
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }
}

void __AsIdentifiers_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:?];
  [v1 addObject:v2];
}

void __AnimationPlaceholderCellIdentifiersWithCount_block_invoke()
{
  v0 = [MEMORY[0x1E695DF70] array];
  for (i = -1; i != -21; --i)
  {
    v2 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:i];
    [v0 addObject:v2];
  }

  v3 = AnimationPlaceholderCellIdentifiersWithCount_placeholderIdentifiers;
  AnimationPlaceholderCellIdentifiersWithCount_placeholderIdentifiers = v0;
}

float TUISwitcherContainerPadding()
{
  v0 = _os_feature_enabled_impl();
  result = 0.0;
  if (v0)
  {
    return 3.0;
  }

  return result;
}

float TUICursorWindowMargin()
{
  v0 = _os_feature_enabled_impl();
  result = 3.0;
  if (v0)
  {
    return 4.0;
  }

  return result;
}

id TUIGenmojiCreationLog()
{
  if (TUIGenmojiCreationLog_onceToken != -1)
  {
    dispatch_once(&TUIGenmojiCreationLog_onceToken, &__block_literal_global_1857);
  }

  v1 = TUIGenmojiCreationLog_log;

  return v1;
}

uint64_t __TUIGenmojiCreationLog_block_invoke()
{
  v0 = os_log_create("com.apple.TextInputUI", "GenmojiCreation");
  v1 = TUIGenmojiCreationLog_log;
  TUIGenmojiCreationLog_log = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

uint64_t __Block_byref_object_copy__2030(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void UIKBRectsInit_Wildcat(uint64_t a1, void *a2, void *a3, int a4)
{
  v68 = a2;
  v7 = a3;
  if ([v68 visualStyle] == 106 || objc_msgSend(v68, "visualStyle") == 107)
  {
    v8 = [v7 rendering] == 33;
    v9 = 1;
  }

  else
  {
    v9 = 0;
    v8 = 0;
  }

  if ([v68 visualStyle] == 101 && objc_msgSend(v7, "rendering") == 1)
  {
    v10 = 1;
  }

  else
  {
    v10 = [v68 visualStyle] == 106 && objc_msgSend(v7, "rendering") == 33;
  }

  v11 = v10 | v9;
  if (v11)
  {
    v12 = 6;
  }

  else
  {
    v12 = 12;
  }

  v13 = v12;
  v14 = [v7 displayType];
  if (a4 != 16)
  {
    switch(v14)
    {
      case 0:
      case 7:
      case 24:
        goto LABEL_15;
      case 2:
        if (!v11)
        {
          goto LABEL_61;
        }

        goto LABEL_19;
      case 3:
      case 14:
      case 18:
      case 26:
LABEL_19:
        v25 = *(a1 + 96);
        v24 = (a1 + 96);
        v26 = v25;
        v27 = v24 + 1;
        v28 = *(v24 + 1);
        v29 = v24 + 2;
        v30 = v24[2];
        v31 = v24 + 3;
        v32 = v24[3];
        v33 = v13;
        goto LABEL_59;
      case 5:
        if ([v7 rendering] == 1 || objc_msgSend(v7, "rendering") == 33)
        {
          goto LABEL_61;
        }

        UIKBKeyboardIsPortrait(v68);
        v62 = (a1 + 120);
        v27 = v62 - 2;
        v29 = v62 - 1;
        v31 = v62;
        UIRectCenteredIntegralRect();
        v24 = v62 - 3;
        goto LABEL_60;
      case 20:
        x = *(a1 + 96);
        v15 = *(a1 + 104);
        width = *(a1 + 112);
        v17 = *(a1 + 120);
        goto LABEL_22;
      case 21:
        v61 = *(a1 + 96);
        v24 = (a1 + 96);
        v26 = v61;
        v27 = v24 + 1;
        v28 = *(v24 + 1);
        v29 = v24 + 2;
        v30 = v24[2];
        v31 = v24 + 3;
        v32 = v24[3];
        if (v30 - v13 > v32)
        {
          v33 = v13;
        }

        else
        {
          v33 = v13 * 0.5;
        }

        goto LABEL_59;
      case 23:
        if (v11 == 0 || v8)
        {
          v64 = UIKBKeyboardIsPortrait(v68) || v8;
          v65 = v68;
          if (v64)
          {
            v66 = 18.0;
          }

          else
          {
            v66 = 23.0;
          }

          if (v64)
          {
            v67 = 20.0;
          }

          else
          {
            v67 = 26.0;
          }
        }

        else
        {
          v67 = _TUIRivenFactor(20.0);
          v66 = _TUIRivenFactor(18.0);
          v65 = v68;
        }

        if ([v65 visualStyle] != 101 && !v11)
        {
          _TUIRivenFactor(v67);
          _TUIRivenFactor(v66);
        }

        if (_TUIRivenFactor(1.0) > 1.0 && [v7 displayTypeHint] && objc_msgSend(v7, "displayTypeHint") != 5)
        {
          CGRectInset(*(a1 + 96), v13, 0.0);
        }

        v24 = (a1 + 96);
        v27 = v24 + 1;
        v29 = v24 + 2;
        v31 = v24 + 3;
        UIRectCenteredIntegralRect();
        goto LABEL_60;
      case 25:
        if ([v68 visualStyle] != 108)
        {
          goto LABEL_61;
        }

        v63 = *(a1 + 96);
        v24 = (a1 + 96);
        v26 = v63;
        v27 = v24 + 1;
        v28 = *(v24 + 1);
        v29 = v24 + 2;
        v30 = v24[2];
        v31 = v24 + 3;
        v32 = v24[3];
        v33 = 2.0;
        goto LABEL_59;
      case 28:
        if (!v11)
        {
          goto LABEL_61;
        }

        v60 = *(a1 + 96);
        v24 = (a1 + 96);
        v26 = v60;
        v27 = v24 + 1;
        v28 = *(v24 + 1);
        v29 = v24 + 2;
        v30 = v24[2];
        v31 = v24 + 3;
        v32 = v24[3];
        v33 = 4.0;
LABEL_59:
        v72 = CGRectInset(*&v26, v33, 0.0);
        break;
      default:
        goto LABEL_61;
    }

    goto LABEL_60;
  }

LABEL_15:
  x = *(a1 + 96);
  v15 = *(a1 + 104);
  width = *(a1 + 112);
  v17 = *(a1 + 120);
  if (v14 == 24)
  {
    v19 = *(a1 + 96);
    v20 = *(a1 + 112);
    v70 = CGRectInset(*(&v15 - 1), v13, 0.0);
    x = v70.origin.x;
    y = v70.origin.y;
    width = v70.size.width;
    height = v70.size.height;
    if (UIKBKeyboardIsPortrait(v68))
    {
      v15 = y + 17.0;
      v23 = -20.0;
    }

    else
    {
      v15 = y + 24.0;
      v23 = -32.0;
    }

    v17 = height + v23;
  }

LABEL_22:
  *(a1 + 96) = x;
  *(a1 + 104) = v15;
  *(a1 + 112) = width;
  *(a1 + 120) = v17;
  if (UIKBKeyboardIsPortrait(v68))
  {
    v34 = 2;
  }

  else
  {
    v34 = 4;
  }

  *(a1 + 164) = v34;
  if (a4 == 16)
  {
    v35 = [v7 subtrees];
    v36 = [v35 count];

    v37 = v7;
    v38 = v37;
    if (UIKBWildcatVariantKeyMaxPerRowForKey_lastKey != v37)
    {
      UIKBWildcatVariantKeyMaxPerRowForKey_variantKeyMaxPerRow = 5;
      v39 = [v37 name];
      v40 = [v39 isEqualToString:@"EmojiPopupKey"];

      if (v40)
      {
        v41 = [v38 subtrees];
        UIKBWildcatVariantKeyMaxPerRowForKey_variantKeyMaxPerRow = [v41 count];
      }

      objc_storeStrong(&UIKBWildcatVariantKeyMaxPerRowForKey_lastKey, a3);
    }

    v42 = UIKBWildcatVariantKeyMaxPerRowForKey_variantKeyMaxPerRow;

    v43 = 1.0;
    if (v42 < v36)
    {
      v43 = ((v36 + v42 - 1) / v42);
      LOBYTE(v36) = v42;
    }

    if (UIKBKeyboardIsSplit(v68))
    {
      v44 = _TUIRivenFactor(54.0);
      v45 = _TUIRivenFactor(54.0);
    }

    else
    {
      v44 = 65.0;
      v45 = 66.0;
    }

    v46 = v43 * v45;
    v27 = (a1 + 72);
    v29 = (a1 + 80);
    v31 = (a1 + 88);
    UIRectCenteredXInRect();
    if ((v36 & 1) == 0)
    {
      v47 = v44 * 0.5 + v47;
    }

    v50 = *v27 - v46 + 2.0;
    v71 = CGRectInset(*&v47, -30.0, -20.0);
    v51 = v71.origin.x;
    v52 = v71.origin.y;
    v53 = v71.size.width;
    v54 = v71.size.height;
    v55 = 0;
    if (v71.origin.x >= 0.0)
    {
      v56 = v68;
    }

    else
    {
      v56 = v68;
      do
      {
        v51 = v44 + v51;
        ++v55;
      }

      while (v51 < 0.0);
    }

    v57 = v71.size.width + v51;
    while (1)
    {
      [v56 frame];
      if (v57 <= v58 + v59)
      {
        break;
      }

      v51 = v51 - v44;
      --v55;
      v57 = v53 + v51;
      v56 = v68;
    }

    *(a1 + 128) = v51;
    *(a1 + 136) = v52;
    *(a1 + 144) = v53;
    *(a1 + 152) = v54;
    *(a1 + 160) = v55;
    v73.origin.x = v51;
    v73.origin.y = v52;
    v73.size.width = v53;
    v73.size.height = v54;
    v72 = CGRectUnion(*(a1 + 64), v73);
    v24 = (a1 + 64);
LABEL_60:
    *v24 = v72.origin.x;
    *v27 = v72.origin.y;
    *v29 = v72.size.width;
    *v31 = v72.size.height;
  }

LABEL_61:
}

void UIKBRectsInit_iPhone(uint64_t a1, void *a2, void *a3, int a4)
{
  v7 = a2;
  v8 = a3;
  v9 = [v8 displayType];
  if (v9 > 20)
  {
    switch(v9)
    {
      case 21:
        v19 = *(a1 + 96);
        v20 = *(a1 + 104);
        v21 = *(a1 + 112);
        v22 = *(a1 + 120);
        v23 = 4.0;
        break;
      case 25:
        v19 = *(a1 + 96);
        v20 = *(a1 + 104);
        v21 = *(a1 + 112);
        v22 = *(a1 + 120);
        v23 = 6.0;
        break;
      case 23:
        UIRectCenteredIntegralRect();
LABEL_20:
        *(a1 + 96) = v10;
        *(a1 + 104) = v11;
        *(a1 + 112) = v12;
        *(a1 + 120) = v13;
        goto LABEL_21;
      default:
        goto LABEL_8;
    }

    v156 = CGRectInset(*&v19, v23, 0.0);
    x = v156.origin.x;
    y = v156.origin.y;
    width = v156.size.width;
    height = v156.size.height;
    IsPortrait = UIKBKeyboardIsPortrait(v7);
    v29 = y + -1.0;
    if (IsPortrait)
    {
      v29 = y;
    }

    *(a1 + 96) = x;
    *(a1 + 104) = v29;
    *(a1 + 112) = width;
    *(a1 + 120) = height;
    goto LABEL_21;
  }

  if (v9 == 18)
  {
    v14 = *(a1 + 96);
    v15 = *(a1 + 104);
    v16 = *(a1 + 112);
    v17 = *(a1 + 120);
    v18 = 4.0;
    goto LABEL_19;
  }

  if (v9 != 20)
  {
LABEL_8:
    if ([v8 rendering] == 1 || objc_msgSend(v8, "rendering") == 33 || objc_msgSend(v8, "rendering") == 34)
    {
      if ([v8 displayTypeHint] == 3)
      {
        v14 = *(a1 + 96);
        v15 = *(a1 + 104);
        v16 = *(a1 + 112);
        v17 = *(a1 + 120);
        v18 = 16.0;
LABEL_19:
        *&v10 = CGRectInset(*&v14, v18, 0.0);
        goto LABEL_20;
      }

      goto LABEL_21;
    }

    if ([v8 interactionType] == 1)
    {
      if (a4 != 4)
      {
        goto LABEL_37;
      }
    }

    else
    {
      v30 = [v8 interactionType];
      if (a4 != 4 || v30 != 2)
      {
LABEL_37:
        if ([v8 interactionType] == 1)
        {
          if (a4 != 16)
          {
            goto LABEL_21;
          }
        }

        else
        {
          v44 = [v8 interactionType];
          if (a4 != 16 || v44 != 2)
          {
            goto LABEL_21;
          }
        }

        v45 = [v7 visualStyle];
        v46 = [v8 stringForProperty:@"variant-popup-bias"];
        v143 = [v8 variantType];
        v48 = *(a1 + 64);
        v47 = *(a1 + 72);
        v49 = *(a1 + 80);
        v50 = *(a1 + 88);
        v51 = *(a1 + 16);
        v52 = *(a1 + 24);
        v53 = UIKBKeyboardIsPortrait(v7);
        v54 = [v8 displayType];
        v55 = v45 == 106 || v53;
        v56 = 60.0;
        v57 = 44.0;
        if (v55)
        {
          v56 = 44.0;
          v57 = 30.0;
        }

        v144 = v57;
        if (v54 == 27)
        {
          v58 = v56;
        }

        else
        {
          v58 = v51;
        }

        if (v55)
        {
          v59 = v58;
        }

        else
        {
          v59 = v58 + -1.0;
        }

        v60 = [v8 subtrees];
        v61 = [v60 count] - 1;

        v149 = v59;
        v147 = v61;
        v62 = v59 * v61;
        [v7 frame];
        v64 = v63;
        v145 = v65;
        rect = v66;
        v152 = 0;
        v153 = &v152;
        v154 = 0x2020000000;
        v155 = 0x7FFFFFFFFFFFFFFFLL;
        v148 = 0.0;
        v146 = v67;
        if (v53)
        {
          v68 = [v8 subtrees];
          v151[0] = MEMORY[0x1E69E9820];
          v151[1] = 3221225472;
          v151[2] = __UIKBRectsInit_iPhone_block_invoke;
          v151[3] = &unk_1E72D2C60;
          v151[4] = &v152;
          [v68 enumerateObjectsUsingBlock:v151];

          v69 = 0.0;
          if (v52 <= v58)
          {
            v70 = v58;
          }

          else
          {
            v70 = v52;
          }

          v71 = v70 - v58;
          if (v153[3] != 0x7FFFFFFFFFFFFFFFLL)
          {
            v62 = v71 + v62;
            v69 = v71;
          }

          v148 = v69;
        }

        if (102.0 - v50 <= 0.0)
        {
          v72 = v47;
        }

        else
        {
          v72 = v47 - (102.0 - v50);
        }

        v73 = v72 + -3.0;
        if (102.0 - v50 <= 0.0)
        {
          v74 = v50 + 3.0;
        }

        else
        {
          v74 = 105.0;
        }

        if (v45 == 106)
        {
          v75 = v64;
          v73 = v73 + -6.0;
          v74 = v74 + 6.0;
          [v8 frame];
          v77 = v76;
          [v7 frame];
          if (v77 <= v78 * 0.5)
          {
            rect = 384.0;
            v64 = v75;
          }

          else
          {
            [v7 frame];
            v64 = v79 + -384.0;
            rect = 384.0;
          }
        }

        v157.origin.x = v48;
        v157.origin.y = v73;
        v157.size.width = v49;
        v157.size.height = v74;
        v158 = CGRectInset(v157, 0.0, -4.0);
        v82 = v158.origin.x;
        v83 = v158.origin.y;
        v84 = v158.size.width;
        v85 = v158.size.height;
        if ([v46 isEqualToString:@"right"])
        {
          v89 = 1;
          v90 = v82;
        }

        else
        {
          v89 = [v46 isEqualToString:@"strictly-right"];
          if (v89)
          {
            v90 = v82;
          }

          else
          {
            v90 = v82 - v62;
          }
        }

        v91 = v149;
        *v88.i64 = v62 + v84;
        v92 = v64 + rect;
        v93 = *a1;
        v94 = *(a1 + 16);
        if (v53)
        {
          v95 = *(a1 + 24);
        }

        else
        {
          v95 = 41.0;
        }

        v96 = v83 + 8.0 + 1.0 + 2.0;
        if (v64 <= v90 && v92 >= v90 + *v88.i64)
        {
          v97 = v149;
          v98 = v90;
LABEL_125:
          v131 = v93 + (v94 - v97) * 0.5;
          if (v97 == v91)
          {
            v131 = v93;
            v97 = v91;
          }

          *(a1 + 96) = v131;
          *(a1 + 104) = v96;
          *(a1 + 112) = v97;
          *(a1 + 120) = v95;
          if (v98 >= 0.0)
          {
            v132 = v98;
          }

          else
          {
            v132 = 0.0;
          }

          if (*v88.i64 + v132 <= v92)
          {
            v133 = *v88.i64;
          }

          else
          {
            v133 = *v88.i64 - (*v88.i64 + v132 - v92);
          }

          v164.origin.x = v132;
          v164.origin.y = v83;
          v164.size.width = v133;
          v164.size.height = v85;
          *(a1 + 64) = CGRectInset(v164, -11.0, 0.0);
          v165.origin.x = v132;
          v165.origin.y = v83;
          v165.size.width = v133;
          v165.size.height = v85;
          *(a1 + 64) = CGRectInset(v165, -24.0, 0.0);
          _Block_object_dispose(&v152, 8);

          goto LABEL_21;
        }

        v137 = v88.i64[0];
        v138 = v84;
        v141 = v83;
        v142 = v85;
        v139 = v82;
        v140 = v64 + rect;
        v136 = v92 - (v82 + v84);
        *v86.i64 = (v136 - v148) / v149;
        v135 = v82 - v64;
        *v87.i64 = (v82 - v64 - v148) / v149;
        v99 = dbl_1900C0EB0[*v87.i64 + *v86.i64 >= 5.0];
        *v88.i64 = *v87.i64 - trunc(*v87.i64);
        v100.f64[0] = NAN;
        v100.f64[1] = NAN;
        v101 = vnegq_f64(v100);
        v102 = *vbslq_s8(v101, v88, v87).i64;
        v103 = floor(*v87.i64);
        if (v102 >= v99)
        {
          v104 = (v82 - v64 - v148) / v149;
        }

        else
        {
          v104 = v103;
        }

        *v87.i64 = *v86.i64 - trunc(*v86.i64);
        v105 = *vbslq_s8(v101, v87, v86).i64;
        v106 = floor(*v86.i64);
        if (v105 >= v99)
        {
          v107 = (v136 - v148) / v149;
        }

        else
        {
          v107 = v106;
        }

        v159.origin.x = *a1;
        v159.origin.y = v96;
        v159.size.width = *(a1 + 16);
        v159.size.height = v95;
        v108 = v96;
        v109 = *a1;
        MinX = CGRectGetMinX(v159);
        v160.origin.x = v109;
        v160.origin.y = v108;
        v160.size.width = v94;
        v160.size.height = v95;
        v111 = CGRectGetMinX(v160) * 0.5;
        v112 = 0.0;
        if (v104 >= 0.0)
        {
          v112 = v104;
        }

        if (MinX <= v111)
        {
          v104 = v112;
        }

        v161.origin.x = v109;
        v161.origin.y = v108;
        v161.size.width = v94;
        v161.size.height = v95;
        MaxX = CGRectGetMaxX(v161);
        v162.origin.x = v64;
        v162.origin.y = v145;
        v162.size.height = v146;
        v162.size.width = rect;
        v114 = CGRectGetWidth(v162);
        v163.origin.x = v109;
        v163.origin.y = v108;
        v163.size.width = v94;
        v163.size.height = v95;
        v115 = v114 + CGRectGetMinX(v163) * -0.5;
        v116 = 0.0;
        if (v107 >= 0.0)
        {
          v116 = v107;
        }

        if (MaxX < v115)
        {
          v116 = v107;
        }

        if (v104 + v116 - v147 > -0.3)
        {
          if ((v89 & 1) == 0)
          {
            if (v104 <= v147)
            {
              v118 = v104;
            }

            else
            {
              v118 = v61;
            }

            v91 = v149;
            v92 = v140;
            v98 = v139 - v118 * v149;
            v97 = v149;
            v83 = v141;
            v85 = v142;
            v93 = v109;
            v96 = v108;
            v88.i64[0] = v137;
            goto LABEL_125;
          }

          v91 = v149;
          v93 = v109;
          v96 = v108;
          v98 = v139;
          v88.i64[0] = v137;
          if (v116 < v147)
          {
            v98 = v139 - (v148 + (v147 - v116) * v149);
          }

          v97 = v149;
          goto LABEL_105;
        }

        v91 = v149;
        if (v149 <= v144)
        {
          v97 = v149;
          v93 = v109;
          v96 = v108;
          v117 = v138;
          v98 = v139;
        }

        else
        {
          v93 = v109;
          v96 = v108;
          v117 = v138;
          v98 = v139;
          if (v143 > 0xA)
          {
            v97 = v149;
          }

          else
          {
            v97 = v149;
            if (((1 << v143) & 0x42A) != 0)
            {
              v116 = floor(v136 / v144);
              v104 = floor(v135 / v144);
              if (v104 + v116 >= v147)
              {
                *v88.i64 = v138 + v147 * v144;
                if ((v89 & 1) == 0)
                {
                  if (v104 <= v147)
                  {
                    v134 = v104;
                  }

                  else
                  {
                    v134 = v61;
                  }

                  v98 = v139 - v134 * v144;
                  v97 = v144;
                  v83 = v141;
                  v85 = v142;
                  v92 = v140;
                  goto LABEL_125;
                }

                if (v116 < v147)
                {
                  v98 = v139 - (v147 - v116) * v144;
                }

                v97 = v144;
LABEL_105:
                v83 = v141;
                v85 = v142;
LABEL_124:
                v92 = v140;
                goto LABEL_125;
              }

              v97 = v144;
            }
          }
        }

        v119 = floor(v104);
        v120 = floor(v116);
        v121 = v119 + v120;
        v122 = v119 + v120 + 1.0;
        v123 = (v147 / v122);
        v124 = v98 - v119 * v97;
        v125 = (v122 - vcvtpd_s64_f64((v61 + 1.0) / (v123 + 1.0)));
        if ((v89 ^ (v45 == 106)))
        {
          v126 = v120 < v125;
          v127 = v124 + (v125 - v120) * v97;
          if (v126)
          {
            v98 = v127;
          }

          else
          {
            v98 = v124;
          }
        }

        else
        {
          v98 = v124 + v125 * v97;
        }

        v128 = v117 + v121 * v97;
        v129 = v95 + 10.0;
        if (v123 >= 2)
        {
          *(a1 + 168) = v142 + ceil(v129);
        }

        *v88.i64 = v128 - v125 * v97;
        v130 = ceil(v129 * v123);
        v83 = v141 - v130;
        v85 = v142 + v130;
        goto LABEL_124;
      }
    }

    v31 = *(a1 + 64);
    v33 = *(a1 + 80);
    v32 = *(a1 + 88);
    v34 = 111.0 - v32;
    v35 = *(a1 + 72) - (111.0 - v32);
    v36 = v32 + 3.0;
    if (v34 <= 0.0)
    {
      v37 = *(a1 + 72);
    }

    else
    {
      v37 = v35;
    }

    if (v34 <= 0.0)
    {
      v38 = v36;
    }

    else
    {
      v38 = 114.0;
    }

    v39 = UIKBPopupBiasForKey(v7, v8);
    v40 = v33 + 72.0;
    if (v39 == 30)
    {
      v80 = v31 + -36.0;
      v81 = v33 + 72.0;
      v41 = v31 + -36.0;
    }

    else
    {
      if (v39 == 29)
      {
        v41 = v31 + -1.0;
        v42 = v31 + -1.0 + -36.0;
        v43 = 3.0;
      }

      else
      {
        if (v39 != 21)
        {
          v41 = v31 + -36.0;
          v80 = v31 + -36.0 + 25.0;
          v81 = v40 + -50.0;
          goto LABEL_73;
        }

        v41 = v31 + -71.0;
        v42 = v31 + -71.0 + 36.0;
        v43 = -3.0;
      }

      v80 = v42 + v43;
      v81 = v33 + 72.0;
    }

LABEL_73:
    *(a1 + 96) = v80;
    *(a1 + 104) = v37 + -2.0;
    *(a1 + 112) = v81;
    *(a1 + 120) = v34 + 16.0;
    *(a1 + 64) = v41;
    *(a1 + 72) = v37;
    *(a1 + 80) = v40;
    *(a1 + 88) = v38;
  }

LABEL_21:
}

CGMutablePathRef createMutablePathWithPoints(CGFloat *a1, uint64_t a2, int a3, double a4)
{
  Mutable = CGPathCreateMutable();
  CGPathMoveToPoint(Mutable, 0, *a1, a1[1]);
  if (a2 >= 2)
  {
    v9 = 1;
    v10 = 1;
    do
    {
      v11 = &a1[2 * v9];
      if (*v11 == -1.0 && v11[1] == -1.0)
      {
        if (v10 + 1 < a2)
        {
          ++v10;
        }

        else
        {
          v10 = 0;
        }

        CGPathMoveToPoint(Mutable, 0, a1[2 * v10], a1[2 * v10 + 1]);
        if (!v10)
        {
          break;
        }

        v13 = v10;
      }

      else
      {
        v13 = v10;
      }

      CGPathAddLineToPoint(Mutable, 0, a1[2 * v13], a1[2 * v13 + 1]);
      v9 = ++v10;
    }

    while (v10 < a2);
  }

  if (a3)
  {
    CGPathCloseSubpath(Mutable);
  }

  memset(&transform, 0, sizeof(transform));
  CGAffineTransformMakeScale(&v16, 1.0, -1.0);
  CGAffineTransformTranslate(&transform, &v16, 0.0, -a4);
  v14 = CGPathCreateMutableCopyByTransformingPath(Mutable, &transform);
  CGPathRelease(Mutable);
  return v14;
}

void centroidCGPathApplierFunction(void *a1, uint64_t a2)
{
  v3 = a1;
  if (*a2 == 1)
  {
    v8 = v3;
    v5 = [v3 lastObject];
    v6 = [MEMORY[0x1E696B098] valueWithCGPoint:{**(a2 + 8), *(*(a2 + 8) + 8)}];
    v7 = v5;
  }

  else
  {
    if (*a2)
    {
      goto LABEL_6;
    }

    v4 = MEMORY[0x1E695DF70];
    v8 = v3;
    v5 = [MEMORY[0x1E696B098] valueWithCGPoint:{**(a2 + 8), *(*(a2 + 8) + 8)}];
    v6 = [v4 arrayWithObject:v5];
    v7 = v8;
  }

  [v7 addObject:v6];

  v3 = v8;
LABEL_6:
}

unsigned __int8 **UIKBColorDefLookup(const char *a1, int a2)
{
  if ((a2 - 12) > 0x38)
  {
    return 0;
  }

  if (a2 > 16)
  {
    v2 = a2;
    if (a2 < 21)
    {
LABEL_13:
      v6 = v2 + hash_asso_values[*(a1 + 16)];
      goto LABEL_14;
    }

    v3 = a2;
    if ((a2 - 22) < 2)
    {
      goto LABEL_11;
    }

    v4 = a2;
    if (a2 == 21)
    {
LABEL_12:
      v2 = v4 + hash_asso_values[*(a1 + 20)];
      goto LABEL_13;
    }

    v5 = a2;
    if (a2 == 24)
    {
LABEL_10:
      v3 = v5 + hash_asso_values[*(a1 + 23)];
LABEL_11:
      v4 = v3 + hash_asso_values[*(a1 + 21) + 3];
      goto LABEL_12;
    }

LABEL_9:
    v5 = hash_asso_values[*(a1 + 24) + 1] + a2;
    goto LABEL_10;
  }

  v6 = a2;
  if ((a2 - 12) >= 5)
  {
    goto LABEL_9;
  }

LABEL_14:
  v7 = v6 + hash_asso_values[*(a1 + 9)] + hash_asso_values[a1[a2 - 1]];
  if (v7 > 0x2E5)
  {
    return 0;
  }

  v8 = (&UIKBColorDefLookup_wordlist + 24 * v7);
  if (*a1 != **v8 || strcmp(a1 + 1, *v8 + 1))
  {
    return 0;
  }

  return v8;
}

void *UIKBRectsCreate(void *a1, void *a2, int a3)
{
  v5 = a1;
  v6 = a2;
  v7 = v6;
  v8 = 0;
  if (v5 && v6)
  {
    v8 = malloc_type_calloc(1uLL, 0xB0uLL, 0x1000040C3A7E6FCuLL);
    [v7 frame];
    *v8 = v9;
    *(v8 + 1) = v10;
    *(v8 + 2) = v11;
    *(v8 + 3) = v12;
    [v7 paddedFrame];
    *(v8 + 4) = v13;
    *(v8 + 5) = v14;
    *(v8 + 6) = v15;
    *(v8 + 7) = v16;
    [v7 paddedFrame];
    *(v8 + 8) = v17;
    *(v8 + 9) = v18;
    *(v8 + 10) = v19;
    *(v8 + 11) = v20;
    [v7 paddedFrame];
    *(v8 + 12) = v21;
    *(v8 + 13) = v22;
    *(v8 + 14) = v23;
    *(v8 + 15) = v24;
    [v7 paddedFrame];
    *(v8 + 16) = v25;
    *(v8 + 17) = v26;
    *(v8 + 18) = v27;
    *(v8 + 19) = v28;
    *(v8 + 20) = 0;
    *(v8 + 21) = 0;
    if ([v5 visualStyle] == 1 || objc_msgSend(v5, "visualStyle") == 2 || objc_msgSend(v5, "visualStyle") == 3 || objc_msgSend(v5, "visualStyle") == 5 || objc_msgSend(v5, "visualStyle") == 4 || objc_msgSend(v5, "visualStyle") == 103)
    {
      UIKBRectsInit_iPhone(v8, v5, v7, a3);
    }

    else if ([v5 visualStyle] == 102 || objc_msgSend(v5, "visualStyle") == 104 || objc_msgSend(v5, "visualStyle") == 105 || objc_msgSend(v5, "visualStyle") == 101 || objc_msgSend(v5, "visualStyle") == 106 || objc_msgSend(v5, "visualStyle") == 107 || objc_msgSend(v5, "visualStyle") == 108 || objc_msgSend(v5, "visualStyle") == 109)
    {
      UIKBRectsInit_Wildcat(v8, v5, v7, a3);
    }

    *v8 = CGRectIntegral(*v8);
    *(v8 + 1) = CGRectIntegral(*(v8 + 1));
    *(v8 + 2) = CGRectIntegral(*(v8 + 2));
    *(v8 + 4) = CGRectIntegral(*(v8 + 4));
  }

  return v8;
}

void UIKBRectsRelease(void *a1)
{
  if (a1)
  {
    free(a1);
  }
}

double *UIKBRectsSetFrame(double *result, double a2, double a3, double a4, double a5)
{
  *result = a2;
  result[1] = a3;
  result[2] = a4;
  result[3] = a5;
  return result;
}

double *UIKBRectsSetPaddedFrame(double *result, double a2, double a3, double a4, double a5)
{
  result[4] = a2;
  result[5] = a3;
  result[6] = a4;
  result[7] = a5;
  return result;
}

double *UIKBRectsSetDisplayFrame(double *result, double a2, double a3, double a4, double a5)
{
  result[8] = a2;
  result[9] = a3;
  result[10] = a4;
  result[11] = a5;
  return result;
}

double *UIKBRectsSetSymbolFrame(double *result, double a2, double a3, double a4, double a5)
{
  result[12] = a2;
  result[13] = a3;
  result[14] = a4;
  result[15] = a5;
  return result;
}

double *UIKBRectsSetVariantsFrame(double *result, double a2, double a3, double a4, double a5)
{
  result[16] = a2;
  result[17] = a3;
  result[18] = a4;
  result[19] = a5;
  return result;
}

uint64_t UIKBPopupBiasForKey(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1;
  v5 = [v3 intForProperty:@"popup-bias"];
  [v3 paddedFrame];
  MinX = CGRectGetMinX(v21);
  [v4 frame];
  v8 = v7;

  [v3 paddedFrame];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;

  v22.origin.x = v10;
  v22.origin.y = v12;
  v22.size.width = v14;
  v22.size.height = v16;
  MaxX = CGRectGetMaxX(v22);
  if (v5 == 29)
  {
    v18 = MinX < 15.0;
    v19 = 29;
  }

  else
  {
    if (v5 != 21)
    {
      return v5;
    }

    v18 = v8 - MaxX < 15.0;
    v19 = 21;
  }

  if (v18)
  {
    return v19;
  }

  else
  {
    return 0;
  }
}

void UIKBAddRoundedRect(CGContext *a1, char a2, CGFloat a3, CGFloat a4, double a5, double a6, CGFloat a7)
{
  Mutable = CGPathCreateMutable();
  UIKBAddRoundedRectToPath(Mutable, a2, 0, a3, a4, a5, a6, a7);
  CGContextAddPath(a1, Mutable);

  CGPathRelease(Mutable);
}

void UIKBAddRoundedRectToPath(CGMutablePathRef path, char a2, int a3, CGFloat a4, CGFloat a5, double a6, double a7, CGFloat a8)
{
  if ((a2 & 1) == 0)
  {
    CGPathMoveToPoint(path, 0, a4, a5);
    if ((a2 & 4) != 0)
    {
      v24 = a6;
      v16 = a5 + a7;
      if (a3)
      {
        v17 = a4 + 0.5;
        v18 = a4 + 1.0;
        v19 = a4 + a8;
        goto LABEL_8;
      }

      v19 = a4 + a8;
      goto LABEL_17;
    }

    goto LABEL_11;
  }

  v19 = a4 + a8;
  if (a3)
  {
    CGPathMoveToPoint(path, 0, a4 + a8, a5);
    v18 = a4 + 1.0;
    v17 = a4 + 0.5;
    CGPathAddCurveToPoint(path, 0, a4 + 1.0, a5 + 0.5, a4 + 0.5, a5 + 1.0, a4, a5 + a8);
    if ((a2 & 4) != 0)
    {
      v24 = a6;
      v16 = a5 + a7;
LABEL_8:
      CGPathAddLineToPoint(path, 0, a4, v16 - a8);
      CGPathAddCurveToPoint(path, 0, v17, v16 + -1.0, v18, v16 + -0.5, v19, v16);
      a6 = v24;
      if ((a2 & 8) != 0)
      {
        v20 = a4 + v24;
        v21 = a5 + a7;
        goto LABEL_13;
      }

LABEL_18:
      v22 = a4 + a6;
      CGPathAddLineToPoint(path, 0, a4 + a6, a5 + a7);
      if ((a2 & 2) != 0)
      {
        if (a3)
        {
          goto LABEL_20;
        }

        goto LABEL_25;
      }

LABEL_23:
      CGPathAddLineToPoint(path, 0, a4 + a6, a5);
      goto LABEL_26;
    }

    goto LABEL_11;
  }

  CGPathAddArc(path, 0, a4 + a8, a5 + a8, a8, 4.71238898, 3.14159265, 1);
  if ((a2 & 4) == 0)
  {
LABEL_11:
    v21 = a5 + a7;
    CGPathAddLineToPoint(path, 0, a4, a5 + a7);
    if ((a2 & 8) == 0)
    {
      goto LABEL_18;
    }

    v20 = a4 + a6;
    if (a3)
    {
LABEL_13:
      CGPathAddLineToPoint(path, 0, v20 - a8, v21);
      CGPathAddCurveToPoint(path, 0, v20 + -1.0, v21 + -0.5, v20 + -0.5, v21 + -1.0, v20, v21 - a8);
      if ((a2 & 2) != 0)
      {
        v22 = a4 + a6;
LABEL_20:
        CGPathAddLineToPoint(path, 0, v22, a5 + a8);
        CGPathAddCurveToPoint(path, 0, v22 + -0.5, a5 + 1.0, v22 + -1.0, a5 + 0.5, v22 - a8, a5);
        goto LABEL_26;
      }

      goto LABEL_23;
    }

    goto LABEL_22;
  }

  v24 = a6;
  v16 = a5 + a7;
LABEL_17:
  CGPathAddArc(path, 0, v19, v16 - a8, a8, 3.14159265, 1.57079633, 1);
  a6 = v24;
  if ((a2 & 8) == 0)
  {
    goto LABEL_18;
  }

  v20 = a4 + v24;
  v21 = a5 + a7;
LABEL_22:
  CGPathAddArc(path, 0, v20 - a8, v21 - a8, a8, 1.57079633, 0.0, 1);
  if ((a2 & 2) == 0)
  {
    goto LABEL_23;
  }

  v22 = a4 + a6;
LABEL_25:
  CGPathAddArc(path, 0, v22 - a8, a5 + a8, a8, 0.0, 4.71238898, 1);
LABEL_26:
  v23 = a4 + a8;
  if ((a2 & 1) == 0)
  {
    v23 = a4;
  }

  CGPathAddLineToPoint(path, 0, v23, a5);
}

void *UIKBGetNamedLinearGradient(void *a1)
{
  v1 = a1;
  Mutable = UIKBGetNamedLinearGradient_cache;
  if (!UIKBGetNamedLinearGradient_cache)
  {
    Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E528], MEMORY[0x1E695E9E8]);
    UIKBGetNamedLinearGradient_cache = Mutable;
  }

  Value = CFDictionaryGetValue(Mutable, v1);
  if (!Value)
  {
    v4 = [objc_alloc(MEMORY[0x1E696AD60]) initWithString:v1];
    v5 = [objc_alloc(MEMORY[0x1E696AD60]) initWithString:v1];
    [v4 appendString:@"Start"];
    [v5 appendString:@"End"];
    v6 = UIKBGetNamedColor(v4);
    v7 = UIKBGetNamedColor(v5);
    if (v6 && v7)
    {
      Value = UIKBCreateTwoColorLinearGradient(v6, v7);

      if (Value)
      {
        CFDictionarySetValue(UIKBGetNamedLinearGradient_cache, v1, Value);
      }
    }

    else
    {

      Value = 0;
    }

    CGGradientRelease(Value);
  }

  return Value;
}

void *UIKBGetNamedColor(void *a1)
{
  v1 = a1;
  Mutable = UIKBGetNamedColor_cache;
  if (!UIKBGetNamedColor_cache)
  {
    Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E528], MEMORY[0x1E695E9E8]);
    UIKBGetNamedColor_cache = Mutable;
  }

  Value = CFDictionaryGetValue(Mutable, v1);
  if (!Value)
  {
    v4 = [v1 UTF8String];
    v5 = strlen(v4);
    v6 = UIKBColorDefLookup(v4, v5);
    if (v6)
    {
      Value = UIKBColorCreate(*(v6 + 2), *(v6 + 3), *(v6 + 4), *(v6 + 5));
    }

    else
    {
      Value = UIKBGetNamedColor_black;
      if (!UIKBGetNamedColor_black)
      {
        Value = UIKBColorCreate(0, 0, 0, 1.0);
        UIKBGetNamedColor_black = Value;
      }
    }

    CFDictionarySetValue(UIKBGetNamedColor_cache, v1, Value);
    CGColorRelease(Value);
  }

  return Value;
}

CGGradientRef UIKBCreateTwoColorLinearGradient(_BOOL8 a1, _BOOL8 a2)
{
  v9[2] = *MEMORY[0x1E69E9840];
  if (!a1 || !a2)
  {
    abort();
  }

  if (UIKBColorUsesRGB(a1) || UIKBColorUsesRGB(a2))
  {
    DeviceRGB = UIKBColorSpaceDeviceRGB_colorspace;
    if (!UIKBColorSpaceDeviceRGB_colorspace)
    {
      DeviceRGB = CGColorSpaceCreateDeviceRGB();
      UIKBColorSpaceDeviceRGB_colorspace = DeviceRGB;
    }
  }

  else
  {
    DeviceRGB = UIKBColorSpaceDeviceGray_colorspace;
    if (!UIKBColorSpaceDeviceGray_colorspace)
    {
      DeviceRGB = CGColorSpaceCreateDeviceGray();
      UIKBColorSpaceDeviceGray_colorspace = DeviceRGB;
    }
  }

  v9[0] = a1;
  v9[1] = a2;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:2];
  v8 = xmmword_1900C0FB0;
  v6 = CGGradientCreateWithColors(DeviceRGB, v5, &v8);

  return v6;
}

BOOL UIKBColorUsesRGB(_BOOL8 result)
{
  if (result)
  {
    v1 = result;
    result = CGColorGetNumberOfComponents(result) == 4 && ((Components = CGColorGetComponents(v1), v3 = Components[1], *Components != v3) || v3 != Components[2]);
  }

  return result;
}

CGColorRef UIKBColorCreate(unint64_t a1, unint64_t a2, unint64_t a3, double a4)
{
  v10 = *MEMORY[0x1E69E9840];
  if (a1 == a2 && a2 == a3)
  {
    components = a1 / 255.0;
    v7 = a4;
    DeviceGray = UIKBColorSpaceDeviceGray_colorspace;
    if (!UIKBColorSpaceDeviceGray_colorspace)
    {
      DeviceGray = CGColorSpaceCreateDeviceGray();
      UIKBColorSpaceDeviceGray_colorspace = DeviceGray;
    }
  }

  else
  {
    components = a1 / 255.0;
    v7 = a2 / 255.0;
    v8 = a3 / 255.0;
    v9 = a4;
    DeviceGray = UIKBColorSpaceDeviceRGB_colorspace;
    if (!UIKBColorSpaceDeviceRGB_colorspace)
    {
      DeviceGray = CGColorSpaceCreateDeviceRGB();
      UIKBColorSpaceDeviceRGB_colorspace = DeviceGray;
    }
  }

  return CGColorCreate(DeviceGray, &components);
}

CGColorSpaceRef UIKBColorSpaceDeviceRGB()
{
  result = UIKBColorSpaceDeviceRGB_colorspace;
  if (!UIKBColorSpaceDeviceRGB_colorspace)
  {
    result = CGColorSpaceCreateDeviceRGB();
    UIKBColorSpaceDeviceRGB_colorspace = result;
  }

  return result;
}

CGColorSpaceRef UIKBColorSpaceDeviceGray()
{
  result = UIKBColorSpaceDeviceGray_colorspace;
  if (!UIKBColorSpaceDeviceGray_colorspace)
  {
    result = CGColorSpaceCreateDeviceGray();
    UIKBColorSpaceDeviceGray_colorspace = result;
  }

  return result;
}

CGFloat UIKBDrawLinearGradient(CGContext *a1, CGGradient *a2, CGFloat result, double a4, double a5, double a6)
{
  if (a2)
  {
    v6.y = a4 + a6;
    v6.x = result;
    CGContextDrawLinearGradient(a1, a2, *&result, v6, 0);
  }

  return result;
}

void UIKBClipTwoPieceBackground(CGContext *a1, char a2, double a3, double a4, double a5, double a6, CGFloat a7, CGFloat a8, double a9, double a10, double a11, CGFloat a12, double a13, double a14)
{
  v27 = _TUIRivenFactor(10.0);
  UIKBAddRoundedRect(a1, a2 & 0xA, a7, a8, a9, a10, v27);
  UIKBAddRoundedRect(a1, a2 & 5, a5 - a13, a12, a13, a14, v27);

  CGContextClip(a1);
}

uint64_t UIKBKeyDrawsOwnBackground(void *a1, void *a2, int a3)
{
  v5 = a1;
  v6 = a2;
  v7 = [v6 displayType];
  v8 = [v6 rendering] == 1 || objc_msgSend(v6, "rendering") == 33 || objc_msgSend(v6, "rendering") == 34;
  v9 = 0;
  if (v7 > 0x37)
  {
    goto LABEL_8;
  }

  if (((1 << v7) & 0x80003000001042) != 0)
  {
    goto LABEL_7;
  }

  if (v7 == 20)
  {
    if (!v8)
    {
LABEL_7:
      v9 = 1;
      goto LABEL_8;
    }

    v9 = 0;
  }

LABEL_8:
  if (a3 == 16)
  {
    v10 = 1;
  }

  else
  {
    v10 = v9;
  }

  if ([v5 visualStyle] - 1 <= 4)
  {
    if (v8)
    {
      v10 = (v7 != 1) & v10;
    }

    else
    {
      v11 = a3 == 4 && [v6 interactionType] == 2;
      v10 = v11 | v10;
    }
  }

  return v10;
}

__CFString *UIKBShiftKeyStringForActiveInputMode(void *a1)
{
  v1 = a1;
  v2 = [v1 displayTypeHint];
  switch(v2)
  {
    case 2:
      v3 = UIKeyboardGetNumbersStringForActiveInputMode();
      goto LABEL_7;
    case 3:
      v4 = @"#+=";
      goto LABEL_9;
    case 7:
      v3 = [v1 displayString];
LABEL_7:
      v4 = v3;
      goto LABEL_9;
  }

  v4 = 0;
LABEL_9:

  return v4;
}

uint64_t UIKBReturnKeyStringForActiveInputMode(void *a1)
{
  [a1 displayTypeHint];

  return MEMORY[0x1EEE4DF20]();
}

void *UIKBMoreKeyStringForActiveInputMode(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = [v4 displayString];
  if ([v3 visualStyle] != 101)
  {
    v6 = [v4 displayTypeHint];
    if (v6 > 4)
    {
      if (v6 == 5)
      {
        v7 = @"";
        goto LABEL_42;
      }

      if (v6 == 6)
      {
        v7 = @"symbols";
        goto LABEL_42;
      }

      if (v6 != 8)
      {
LABEL_13:
        if (!UIKeyboardRequiresInternationalKey() || (([v3 visualStyling] & 0x3F) == 1 || (objc_msgSend(v3, "visualStyling") & 0x3F) == 0x18 || (objc_msgSend(v3, "visualStyling") & 0x3F) == 0x19 || (objc_msgSend(v3, "visualStyling") & 0x3F) == 0x1A || (objc_msgSend(v3, "visualStyling") & 0x3F) == 0x17) && !objc_msgSend(v3, "isFloating"))
        {
          goto LABEL_40;
        }

        goto LABEL_36;
      }

      v8 = UIKeyboardGetJapaneseAIUStringForActiveInputMode();
    }

    else
    {
      if (v6 != 1)
      {
        if (v6 != 2)
        {
          if (v6 == 4)
          {
            v7 = @"123";
LABEL_42:

            v5 = v7;
            goto LABEL_43;
          }

          goto LABEL_13;
        }

        if ([v3 visualStyle] != 301)
        {
          if ((([v3 visualStyling] & 0x3F) == 1 || (objc_msgSend(v3, "visualStyling") & 0x3F) == 0x18 || (objc_msgSend(v3, "visualStyling") & 0x3F) == 0x19 || (objc_msgSend(v3, "visualStyling") & 0x3F) == 0x1A || (objc_msgSend(v3, "visualStyling") & 0x3F) == 0x17) && (objc_msgSend(v3, "isFloating") & 1) == 0)
          {
            if (_TUIRivenFactor(1.0) <= 1.0 || !UIKeyboardRequiresInternationalKey() || ![MEMORY[0x1E69DC940] fetchCurrentInputModeSupportsDictation])
            {
              goto LABEL_40;
            }
          }

          else if ((UIKeyboardRequiresInternationalKey() & 1) == 0 && ![MEMORY[0x1E69DC940] fetchCurrentInputModeSupportsDictation])
          {
            if (UIKBKeyboardIsURLKeyboard(v3))
            {
              v9 = MEMORY[0x1E696AEC0];
              v10 = UIKeyboardGetNumbersStringForActiveInputMode();
              [v9 stringWithFormat:@"@%@", v10];
              v7 = LABEL_39:;

              v5 = v10;
              goto LABEL_42;
            }

            if (UIKBKeyboardIsEmailKeyboard(v3))
            {
              v11 = MEMORY[0x1E696AEC0];
              v10 = UIKeyboardGetNumbersStringForActiveInputMode();
              [v11 stringWithFormat:@"_%@", v10];
              goto LABEL_39;
            }

LABEL_40:
            v8 = UIKeyboardGetNumbersSymbolsStringForActiveInputMode();
            goto LABEL_41;
          }
        }

LABEL_36:
        v8 = UIKeyboardGetNumbersStringForActiveInputMode();
        goto LABEL_41;
      }

      v8 = UIKeyboardGetABCStringForActiveInputMode();
    }

LABEL_41:
    v7 = v8;
    goto LABEL_42;
  }

LABEL_43:
  v12 = v5;

  return v5;
}

BOOL UIKBKeyboardIsURLKeyboard(void *a1)
{
  v1 = [a1 name];
  v2 = [v1 rangeOfString:@"URL"] != 0x7FFFFFFFFFFFFFFFLL;

  return v2;
}

BOOL UIKBKeyboardIsEmailKeyboard(void *a1)
{
  v1 = [a1 name];
  v2 = [v1 rangeOfString:@"Email"] != 0x7FFFFFFFFFFFFFFFLL;

  return v2;
}

const __CTLine *UIKBCreateFitCTLine(void *a1, uint64_t a2, double *a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8, double a9, double a10, double a11, CGFloat a12, double a13, double a14, double a15)
{
  v28 = MEMORY[0x1E69DCB80];
  v29 = *a3;
  v30 = a8;
  v31 = a1;
  v32 = [v28 styleWithFontName:a2 withFontSize:v29];
  [v32 setFontWeight:a13];
  [v32 setFontWidth:a14];
  [v32 setKerning:a15];
  [v32 setIgnoreTextMarginOnKey:a6];
  [v32 setIsVertical:a7];
  [v32 setKeycapsFallback:v30];

  [v32 setSelector:a5];
  v33 = UIKBCreateFitCTLineWithSymbolStyle(v31, v32, a4, a9, a10, a11, a12);

  return v33;
}

const __CTLine *UIKBCreateFitCTLineWithSymbolStyle(void *a1, void *a2, void *a3, double a4, double a5, double a6, CGFloat a7)
{
  v11 = a1;
  v12 = a2;
  v13 = v12;
  v14 = a6 + -4.0;
  while (1)
  {
    UIKBGetFontAttributesWithSymbolStyle(v12, v13, a3);
    v15 = CTLineCreateWithString();
    v22 = 0.0;
    ascent = 0.0;
    TypographicBounds = CTLineGetTypographicBounds(v15, &ascent, &v22, 0);
    v17 = [v13 isVertical] ? ascent + v22 : TypographicBounds;
    v18 = v17 <= v14 && ascent + v22 <= a7;
    if (v18 || [v13 ignoreTextMarginOnKey])
    {
      break;
    }

    CFRelease(v15);
    [v13 fontSize];
    [v13 setFontSize:v19 + -1.0];
    v12 = [v13 fontSize];
    if (v20 <= 0.0)
    {
      v15 = 0;
      break;
    }
  }

  return v15;
}

uint64_t UIKBGetFontAttributesWithSymbolStyle(uint64_t a1, void *a2, void *a3)
{
  v120[1] = *MEMORY[0x1E69E9840];
  v3 = a2;
  v109 = _AXSEnhanceTextLegibilityEnabled() != 0;
  v4 = [v3 fontName];
  v5 = [v4 isEqualToString:*MEMORY[0x1E69DDE80]];

  v6 = [v3 fontName];
  if ([v6 isEqualToString:*MEMORY[0x1E69DDE78]])
  {
    LODWORD(v100) = 1;
  }

  else
  {
    v7 = [v3 fontName];
    LODWORD(v100) = [v7 isEqualToString:*MEMORY[0x1E69DDE70]];
  }

  v8 = [v3 fontName];
  v103 = [v8 isEqualToString:UIKBGetFontAttributesWithSymbolStyle_lastUsedFontName];

  v9 = UIKeyboardGetCurrentInputMode();
  v10 = UIKeyboardRequiresFontFallbacksForInputMode();
  v11 = UIKeyboardFontFallbackLanguageForInputMode();
  v12 = v11;
  v105 = v9;
  if (v11)
  {
    v13 = v11;
  }

  else
  {
    v13 = MEMORY[0x193AE8260](v9);
  }

  v14 = v13;

  v15 = [MEMORY[0x1E695DF58] canonicalLanguageIdentifierFromString:v14];
  v16 = MEMORY[0x193AE8250]();

  v17 = [MEMORY[0x1E695DF58] canonicalLanguageIdentifierFromString:v16];

  v110 = v17;
  HIDWORD(v100) = v10;
  v111 = ([v17 isEqualToString:UIKBGetFontAttributesWithSymbolStyle_lastInputModeLanguage] ^ 1) & v10;
  [v3 fontSize];
  v19 = v18;
  v20 = *&UIKBGetFontAttributesWithSymbolStyle_lastUsedFontSize;
  v104 = v5;
  if (v5)
  {
    [v3 fontWeight];
    v22 = v21 != *&UIKBGetFontAttributesWithSymbolStyle_lastUsedFontWeight;
    [v3 fontWidth];
    LOBYTE(v5) = v23 != *&UIKBGetFontAttributesWithSymbolStyle_lastUsedFontWidth;
  }

  else
  {
    v22 = 0;
  }

  [v3 kerning];
  v25 = v24;
  v26 = *&UIKBGetFontAttributesWithSymbolStyle_lastUsedKerning;
  v27 = [v3 selector];
  v107 = UIKBGetFontAttributesWithSymbolStyle_lastUsedSelector;
  v108 = v27;
  v28 = UIKBGetFontAttributesWithSymbolStyle_lastBoldTextEnabled;
  v29 = [v3 isVertical];
  v30 = UIKBGetFontAttributesWithSymbolStyle_attributes;
  v31 = &unk_1EAD37000;
  if (!((UIKBGetFontAttributesWithSymbolStyle_attributes == 0) | (v103 ^ 1) & 1 | v111 & 1) && v19 == v20 && !v22 && (v5 & 1) == 0 && v25 == v26 && v108 == v107 && v28 == v109 && UIKBGetFontAttributesWithSymbolStyle_lastIsVertical == v29)
  {
    goto LABEL_71;
  }

  if ((v103 & 1) == 0)
  {
    v32 = [v3 fontName];
    v33 = [v32 copy];
    v34 = UIKBGetFontAttributesWithSymbolStyle_lastUsedFontName;
    UIKBGetFontAttributesWithSymbolStyle_lastUsedFontName = v33;
  }

  if (v111)
  {
    v35 = [v110 copy];
    v36 = UIKBGetFontAttributesWithSymbolStyle_lastInputModeLanguage;
    UIKBGetFontAttributesWithSymbolStyle_lastInputModeLanguage = v35;
  }

  [v3 fontSize];
  UIKBGetFontAttributesWithSymbolStyle_lastUsedFontSize = v37;
  [v3 fontWeight];
  UIKBGetFontAttributesWithSymbolStyle_lastUsedFontWeight = v38;
  [v3 fontWidth];
  UIKBGetFontAttributesWithSymbolStyle_lastUsedFontWidth = v39;
  [v3 kerning];
  UIKBGetFontAttributesWithSymbolStyle_lastUsedKerning = v40;
  UIKBGetFontAttributesWithSymbolStyle_lastUsedSelector = [v3 selector];
  UIKBGetFontAttributesWithSymbolStyle_lastBoldTextEnabled = v109;
  UIKBGetFontAttributesWithSymbolStyle_lastIsVertical = [v3 isVertical];
  v41 = UIKBGetFontAttributesWithSymbolStyle_attributes;
  if (!UIKBGetFontAttributesWithSymbolStyle_attributes)
  {
    UIKBGetFontAttributesWithSymbolStyle_attributes = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    v42 = CTParagraphStyleCreate(0, 0);
    CTParagraphStyleSetCompositionLanguage();
    CFDictionarySetValue(UIKBGetFontAttributesWithSymbolStyle_attributes, *MEMORY[0x1E69DB688], v42);
    CFRelease(v42);
    v41 = UIKBGetFontAttributesWithSymbolStyle_attributes;
  }

  CFDictionarySetValue(v41, *MEMORY[0x1E69659E0], &unk_1F03D8C00);
  [v3 kerning];
  v43 = UIKBGetFontAttributesWithSymbolStyle_attributes;
  v44 = *MEMORY[0x1E6965A88];
  if (v45 == 0.0)
  {
    CFDictionaryRemoveValue(UIKBGetFontAttributesWithSymbolStyle_attributes, *MEMORY[0x1E6965A88]);
  }

  else
  {
    v46 = MEMORY[0x1E696AD98];
    [v3 kerning];
    v47 = [v46 numberWithDouble:?];
    CFDictionarySetValue(v43, v44, v47);
  }

  v48 = [v3 isVertical];
  v49 = *MEMORY[0x1E6965B50];
  if (v48)
  {
    CFDictionarySetValue(UIKBGetFontAttributesWithSymbolStyle_attributes, v49, *MEMORY[0x1E695E4D0]);
    if (!v104)
    {
      goto LABEL_29;
    }
  }

  else
  {
    CFDictionaryRemoveValue(UIKBGetFontAttributesWithSymbolStyle_attributes, v49);
    if (!v104)
    {
LABEL_29:
      if (v101)
      {
        v50 = MEMORY[0x1E69DB878];
        [v3 fontSize];
        v52 = v51;
        [v3 fontWeight];
        v54 = [v50 systemFontOfSize:*MEMORY[0x1E69DB928] weight:v52 design:v53];
        v119 = *MEMORY[0x1E6965808];
        v55 = [v3 keycapsFallback];
        v56 = v55;
        v57 = @".Keycaps-Keys";
        if (v55)
        {
          v57 = v55;
        }

        v120[0] = v57;
        v58 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v120 forKeys:&v119 count:1];

        v59 = CTFontDescriptorCreateWithAttributesAndOptions();
        v60 = MEMORY[0x1E695DF70];
        v61 = v102;
        if (!v110)
        {
          v61 = 0;
        }

        if (v61 == 1)
        {
          v62 = [MEMORY[0x1E695DEC8] arrayWithObject:?];
        }

        else
        {
          v62 = 0;
        }

        v75 = CTFontCopyDefaultCascadeListForLanguages(v54, v62);
        v76 = [v60 arrayWithArray:v75];

        [v76 insertObject:v59 atIndex:0];
        v117 = *MEMORY[0x1E6965678];
        v77 = v117;
        v118 = v76;
        v78 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v118 forKeys:&v117 count:1];
        v79 = CTFontDescriptorCreateWithAttributes(v78);

        [v3 fontSize];
        CopyWithAttributes = CTFontCreateCopyWithAttributes(v54, v80, 0, v79);
        CFRelease(v54);
        if ([v3 needsFontCase])
        {
          v115 = *MEMORY[0x1E69657A8];
          v116 = &unk_1F03D8F18;
          v82 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v116 forKeys:&v115 count:1];
          v83 = CTFontDescriptorCreateWithAttributes(v82);
          [v3 fontSize];
          v85 = CTFontCreateCopyWithAttributes(CopyWithAttributes, v84, 0, v83);
          CFRelease(v83);
          CFRelease(CopyWithAttributes);

          CopyWithAttributes = v85;
        }

        if ([v3 fontGrade])
        {
          [v3 fontGrade];
          CopyOfSystemUIFontWithGrade = CTFontCreateCopyOfSystemUIFontWithGrade();
          CFRelease(CopyWithAttributes);
          CopyWithAttributes = CopyOfSystemUIFontWithGrade;
        }

        CFRelease(v79);
        CFDictionarySetValue(UIKBGetFontAttributesWithSymbolStyle_attributes, *MEMORY[0x1E6965658], CopyWithAttributes);

        v31 = &unk_1EAD37000;
        goto LABEL_67;
      }

      if (UIKBGetFontAttributesWithSymbolStyle_fontAttributes && v108 == v107)
      {
        if (v103)
        {
          v70 = 0;
LABEL_55:
          if ((v102 & (v70 | v111)) == 1)
          {
            v90 = UIKBGetFontAttributesWithSymbolStyle_fontAttributes;
            v91 = UIKBGetFontAttributesWithSymbolStyle_lastInputModeLanguage;
            v92 = [v3 fontName];
            [v3 fontSize];
            UIKBSetFontCascadeListAttribute(v90, v91, v92, v93);

            v31 = &unk_1EAD37000;
          }

          v94 = UIKBGetFontAttributesWithSymbolStyle_fontDescriptor;
          if (UIKBGetFontAttributesWithSymbolStyle_fontDescriptor)
          {
            v95 = v70;
          }

          else
          {
            v95 = 1;
          }

          if (((v95 | v111) & 1) != 0 || v108 != v107)
          {
            if (UIKBGetFontAttributesWithSymbolStyle_fontDescriptor)
            {
              CFRelease(UIKBGetFontAttributesWithSymbolStyle_fontDescriptor);
            }

            v94 = CTFontDescriptorCreateWithAttributesAndOptions();
            UIKBGetFontAttributesWithSymbolStyle_fontDescriptor = v94;
          }

          [v3 fontSize];
          v69 = CTFontCreateWithFontDescriptor(v94, v96, 0);
          goto LABEL_66;
        }
      }

      else
      {
        if (UIKBGetFontAttributesWithSymbolStyle_fontAttributes)
        {
          CFRelease(UIKBGetFontAttributesWithSymbolStyle_fontAttributes);
          UIKBGetFontAttributesWithSymbolStyle_fontAttributes = 0;
        }

        UIKBGetFontAttributesWithSymbolStyle_fontAttributes = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
        if ([v3 selector])
        {
          v71 = *MEMORY[0x1E69657A0];
          v112[0] = *MEMORY[0x1E69657B0];
          v112[1] = v71;
          v113[0] = &unk_1F03D8C18;
          v72 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v3, "selector")}];
          v113[1] = v72;
          v73 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v113 forKeys:v112 count:2];
          v114 = v73;
          v111 = 1;
          v74 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v114 count:1];

          CFDictionarySetValue(UIKBGetFontAttributesWithSymbolStyle_fontAttributes, *MEMORY[0x1E69657A8], v74);
        }

        else
        {
          v111 = 1;
        }
      }

      v87 = UIKBGetFontAttributesWithSymbolStyle_fontAttributes;
      v88 = *MEMORY[0x1E6965808];
      v89 = [v3 fontName];
      CFDictionarySetValue(v87, v88, v89);

      v70 = 1;
      v31 = &unk_1EAD37000;
      goto LABEL_55;
    }
  }

  v63 = MEMORY[0x1E69DB878];
  [v3 fontSize];
  v65 = v64;
  [v3 fontWeight];
  v67 = v66;
  [v3 fontWidth];
  v69 = [v63 systemFontOfSize:v65 weight:v67 width:v68];
LABEL_66:
  CopyWithAttributes = v69;
  CFDictionarySetValue(UIKBGetFontAttributesWithSymbolStyle_attributes, *MEMORY[0x1E6965658], v69);
LABEL_67:
  v97 = [v3 fontName];
  [v3 fontSize];
  v31[186] = UIKBGetXHeight(v97, v98);

  if (v31[186] == 0.0)
  {
    v31[186] = CTFontGetXHeight(CopyWithAttributes);
  }

  CFRelease(CopyWithAttributes);
  v30 = UIKBGetFontAttributesWithSymbolStyle_attributes;
  if (UIKBGetFontAttributesWithSymbolStyle_lastInputModeLanguage)
  {
    CFDictionarySetValue(UIKBGetFontAttributesWithSymbolStyle_attributes, *MEMORY[0x1E6965A20], UIKBGetFontAttributesWithSymbolStyle_lastInputModeLanguage);
    v30 = UIKBGetFontAttributesWithSymbolStyle_attributes;
  }

LABEL_71:
  *a3 = *(v31 + 186);

  return v30;
}

void UIKBSetFontCascadeListAttribute(__CFDictionary *a1, void *a2, uint64_t a3, CGFloat a4)
{
  v7 = MEMORY[0x1E695DF20];
  v8 = *MEMORY[0x1E6965808];
  v9 = a2;
  v12 = [v7 dictionaryWithObject:a3 forKey:v8];
  v10 = CTFontDescriptorCreateWithAttributesAndOptions();
  v11 = CTFontCreateWithFontDescriptor(v10, a4, 0);
  UIKBSetFontCascadeListAttributeFromFont(a1, v9, v11);

  CFRelease(v10);
  CFRelease(v11);
}

double UIKBGetXHeight(void *a1, double a2)
{
  v3 = a1;
  v4 = UIKBGetXHeight_xheights;
  if (!UIKBGetXHeight_xheights)
  {
    v4 = &unk_1F03D9208;
    UIKBGetXHeight_xheights = &unk_1F03D9208;
  }

  v5 = [v4 objectForKey:v3];
  [v5 floatValue];
  v7 = v6 * a2;

  return v7;
}

void UIKBSetFontCascadeListAttributeFromFont(__CFDictionary *a1, uint64_t a2, const __CTFont *a3)
{
  if (a2)
  {
    v5 = [MEMORY[0x1E695DEC8] arrayWithObject:a2];
  }

  else
  {
    v5 = [MEMORY[0x1E695DEC8] array];
  }

  v6 = CTFontCopyDefaultCascadeListForLanguages(a3, v5);
  CFDictionarySetValue(a1, *MEMORY[0x1E6965678], v6);

  CFRelease(v6);
}

uint64_t UIKBGetFontAttributes(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, void *a6, double a7, double a8, double a9, double a10)
{
  v19 = MEMORY[0x1E69DCB80];
  v20 = a6;
  v21 = a1;
  v22 = [v19 styleWithFontName:a2 withFontSize:a7];
  [v22 setFontWeight:a8];
  [v22 setFontWidth:a9];
  [v22 setKerning:a10];
  [v22 setIsVertical:a5];
  [v22 setKeycapsFallback:v20];

  v23 = UIKBGetFontAttributesWithSymbolStyle([v22 setSelector:a4], v22, a3);
  return v23;
}

uint64_t UIKBCreateCTFont(uint64_t a1, void *a2, double a3, double a4, double a5)
{
  v9 = MEMORY[0x1E69DCB80];
  v10 = a2;
  v11 = [v9 styleWithFontName:a1 withFontSize:a3];
  [v11 setFontWeight:a4];
  [v11 setFontWidth:a5];
  [v11 setKeycapsFallback:v10];

  v12 = UIKBCreateCTFontWithSymbolStyle(v11);
  return v12;
}

uint64_t UIKBCreateCTFontWithSymbolStyle(void *a1)
{
  v77[1] = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = UIKeyboardGetCurrentInputMode();
  v3 = UIKeyboardRequiresFontFallbacksForInputMode();
  v4 = UIKeyboardFontFallbackLanguageForInputMode();
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = MEMORY[0x193AE8260](v2);
  }

  v7 = v6;

  v8 = [MEMORY[0x1E695DF58] canonicalLanguageIdentifierFromString:v7];
  v9 = MEMORY[0x193AE8250]();

  v10 = [MEMORY[0x1E695DF58] canonicalLanguageIdentifierFromString:v9];

  v11 = [v1 fontName];
  v12 = [v11 isEqualToString:UIKBCreateCTFontWithSymbolStyle_lastUsedFontName];

  v71 = v3;
  v13 = ([v10 isEqualToString:UIKBCreateCTFontWithSymbolStyle_lastInputModeLanguage] ^ 1) & v3;
  v14 = [v1 fontName];
  v15 = *MEMORY[0x1E69DDE80];
  v16 = [v14 isEqualToString:*MEMORY[0x1E69DDE80]];

  v17 = [v1 fontName];
  if ([v17 isEqualToString:*MEMORY[0x1E69DDE78]])
  {
    v18 = 1;
  }

  else
  {
    v19 = [v1 fontName];
    v18 = [v19 isEqualToString:*MEMORY[0x1E69DDE70]];
  }

  if (v13 & 1 | ((v12 & 1) == 0) || ([v1 fontSize], v20 != *&UIKBCreateCTFontWithSymbolStyle_lastUsedFontSize) && (objc_msgSend(v1, "fontSize"), v21 > 0.0) || v16 && (objc_msgSend(v1, "fontWeight"), v22 != *&UIKBCreateCTFontWithSymbolStyle_lastUsedFontWeight) && (objc_msgSend(v1, "fontWeight"), v23 != 0.0))
  {
    [v1 fontSize];
    v25 = v24;
    v26 = 22.0;
    if (v25 > 0.0)
    {
      [v1 fontSize];
    }

    [v1 setFontSize:v26];
    if (UIKBCreateCTFontWithSymbolStyle_lastUsedFont)
    {
      CFRelease(UIKBCreateCTFontWithSymbolStyle_lastUsedFont);
    }

    v27 = [v1 fontName];
    v28 = [v27 isEqualToString:v15];

    v29 = MEMORY[0x1E69DB878];
    if (v28)
    {
      [v1 fontSize];
      v31 = v30;
      [v1 fontWeight];
      v33 = v32;
      [v1 fontWidth];
      UIKBCreateCTFontWithSymbolStyle_lastUsedFont = [v29 systemFontOfSize:v31 weight:v33 width:v34];
    }

    else if (v18)
    {
      [v1 fontSize];
      v36 = v35;
      [v1 fontWeight];
      UIKBCreateCTFontWithSymbolStyle_lastUsedFont = [v29 systemFontOfSize:*MEMORY[0x1E69DB928] weight:v36 design:v37];
      v76 = *MEMORY[0x1E6965808];
      v38 = [v1 keycapsFallback];
      v39 = v38;
      v40 = @".Keycaps-Keys";
      if (v38)
      {
        v40 = v38;
      }

      v77[0] = v40;
      v41 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v77 forKeys:&v76 count:1];

      v42 = CTFontDescriptorCreateWithAttributesAndOptions();
      v43 = MEMORY[0x1E695DF70];
      v44 = UIKBCreateCTFontWithSymbolStyle_lastUsedFont;
      v45 = v71;
      if (!v10)
      {
        v45 = 0;
      }

      if (v45 == 1)
      {
        v46 = [MEMORY[0x1E695DEC8] arrayWithObject:v10];
      }

      else
      {
        v46 = 0;
      }

      v48 = CTFontCopyDefaultCascadeListForLanguages(v44, v46);
      v49 = [v43 arrayWithArray:v48];

      [v49 insertObject:v42 atIndex:0];
      v74 = *MEMORY[0x1E6965678];
      v50 = v74;
      v75 = v49;
      v51 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v75 forKeys:&v74 count:1];
      v52 = CTFontDescriptorCreateWithAttributes(v51);

      v53 = UIKBCreateCTFontWithSymbolStyle_lastUsedFont;
      [v1 fontSize];
      CopyWithAttributes = CTFontCreateCopyWithAttributes(v53, v54, 0, v52);
      CFRelease(UIKBCreateCTFontWithSymbolStyle_lastUsedFont);
      UIKBCreateCTFontWithSymbolStyle_lastUsedFont = CopyWithAttributes;
      if ([v1 needsFontCase])
      {
        v72 = *MEMORY[0x1E69657A8];
        v73 = &unk_1F03D8F30;
        v56 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v73 forKeys:&v72 count:1];
        v57 = CTFontDescriptorCreateWithAttributes(v56);
        v58 = UIKBCreateCTFontWithSymbolStyle_lastUsedFont;
        [v1 fontSize];
        v60 = CTFontCreateCopyWithAttributes(v58, v59, 0, v57);
        CFRelease(v57);
        CFRelease(UIKBCreateCTFontWithSymbolStyle_lastUsedFont);
        UIKBCreateCTFontWithSymbolStyle_lastUsedFont = v60;
      }

      if ([v1 fontGrade])
      {
        [v1 fontGrade];
        CopyOfSystemUIFontWithGrade = CTFontCreateCopyOfSystemUIFontWithGrade();
        CFRelease(UIKBCreateCTFontWithSymbolStyle_lastUsedFont);
        UIKBCreateCTFontWithSymbolStyle_lastUsedFont = CopyOfSystemUIFontWithGrade;
      }

      CFRelease(v52);
    }

    else
    {
      v47 = [v1 fontName];
      [v1 fontSize];
      UIKBCreateCTFontWithSymbolStyle_lastUsedFont = [v29 fontWithName:v47 size:4096 traits:?];
    }

    v62 = [v1 fontName];
    v63 = [v62 copy];
    v64 = UIKBCreateCTFontWithSymbolStyle_lastUsedFontName;
    UIKBCreateCTFontWithSymbolStyle_lastUsedFontName = v63;

    [v1 fontSize];
    UIKBCreateCTFontWithSymbolStyle_lastUsedFontSize = v65;
    [v1 fontWeight];
    UIKBCreateCTFontWithSymbolStyle_lastUsedFontWeight = v66;
    v67 = [v10 copy];
    v68 = UIKBCreateCTFontWithSymbolStyle_lastInputModeLanguage;
    UIKBCreateCTFontWithSymbolStyle_lastInputModeLanguage = v67;
  }

  v69 = UIKBCreateCTFontWithSymbolStyle_lastUsedFont;

  return v69;
}

uint64_t UIKBGlyphForCharacter(uint64_t a1, __int16 a2, void *a3, double a4, double a5, double a6)
{
  v11 = MEMORY[0x1E69DCB80];
  v12 = a3;
  v13 = [v11 styleWithFontName:a1 withFontSize:a4];
  [v13 setFontWeight:a5];
  [v13 setFontWidth:a6];
  [v13 setKeycapsFallback:v12];

  v14 = UIKBGlyphForCharacterWithSymbolStyle(a2, v13);
  return v14;
}

uint64_t UIKBGlyphForCharacterWithSymbolStyle(__int16 a1, void *a2)
{
  v28 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (!UIKBGlyphForCharacterWithSymbolStyle___fontDict)
  {
    v4 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:1];
    v5 = UIKBGlyphForCharacterWithSymbolStyle___fontDict;
    UIKBGlyphForCharacterWithSymbolStyle___fontDict = v4;
  }

  v6 = [v3 fontName];
  v7 = MEMORY[0x1E696AD98];
  [v3 fontSize];
  v8 = [v7 numberWithDouble:?];
  v9 = [v8 stringValue];
  v10 = [v6 stringByAppendingString:v9];

  v11 = [UIKBGlyphForCharacterWithSymbolStyle___fontDict objectForKey:v10];
  if (!v11)
  {
    v11 = [MEMORY[0x1E695DF90] dictionary];
    [UIKBGlyphForCharacterWithSymbolStyle___fontDict setObject:v11 forKey:v10];
  }

  v12 = a1 & 0xFFF0;
  v13 = [MEMORY[0x1E696AD98] numberWithUnsignedShort:a1 & 0xFFF0];
  v14 = [v11 objectForKey:v13];
  if (v14)
  {
    v15 = v14;
    v16 = *([v14 bytes] + 2 * (a1 & 0xF));
  }

  else
  {
    characters = a1 & 0xFFF0;
    v17 = vdupq_n_s16(v12);
    v23 = vorrq_s8(v17, xmmword_1900C0EE0);
    v24 = vorr_s8(*v17.i8, 0xC000B000A0009);
    v25 = v12 | 0xD;
    v26 = v12 | 0xE;
    v27 = a1 | 0xF;
    v18 = UIKBCreateCTFontWithSymbolStyle(v3);
    CTFontGetGlyphsForCharacters(v18, &characters, glyphs, 16);
    for (i = 0; i != 32; i += 2)
    {
      CTFontTransformGlyphs();
    }

    v15 = [MEMORY[0x1E695DEF0] dataWithBytes:glyphs length:32];
    [v11 setObject:v15 forKey:v13];
    v16 = glyphs[a1 & 0xF];
  }

  return v16;
}

void UIKBDrawCTLineAtPoint(CGContext *a1, const __CTLine *a2, CGColor *a3, int a4, double a5, CGFloat a6)
{
  if (a2 && a3)
  {
    CGContextSaveGState(a1);
    v12 = *(MEMORY[0x1E695EFD0] + 16);
    *&v16.a = *MEMORY[0x1E695EFD0];
    *&v16.c = v12;
    *&v16.tx = *(MEMORY[0x1E695EFD0] + 32);
    CGContextSetTextMatrix(a1, &v16);
    CGContextScaleCTM(a1, 1.0, -1.0);
    if (a4)
    {
      CGContextRotateCTM(a1, -1.57079633);
      v13 = a1;
      v14 = a6;
      v15 = a5;
    }

    else
    {
      v15 = -a6;
      v13 = a1;
      v14 = a5;
    }

    CGContextSetTextPosition(v13, v14, v15);
    CGContextSetFillColorWithColor(a1, a3);
    CTLineDraw(a2, a1);
    CGContextRestoreGState(a1);
  }
}

CTFontRef UIKBCTFontForInputMode(void *a1, void *a2, CGFloat a3)
{
  v5 = a1;
  v6 = a2;
  if (UIKBCTFontForInputMode_once != -1)
  {
    dispatch_once(&UIKBCTFontForInputMode_once, &__block_literal_global_2805);
  }

  v7 = MEMORY[0x193AE8260](v5);
  v8 = [v6 fontName];
  v9 = [v7 stringByAppendingFormat:@":%@:%f", v8, *&a3];

  v10 = [UIKBCTFontForInputMode_ctFonts objectForKey:v9];
  if (v10)
  {
    CopyWithAttributes = v10;
  }

  else
  {
    if (UIKeyboardRequiresFontFallbacksForInputMode())
    {
      Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      v13 = [MEMORY[0x1E695DF58] canonicalLanguageIdentifierFromString:v7];
      v14 = MEMORY[0x193AE8250]();

      v7 = [MEMORY[0x1E695DF58] canonicalLanguageIdentifierFromString:v14];

      UIKBSetFontCascadeListAttributeFromFont(Mutable, v7, v6);
      v15 = CTFontDescriptorCreateWithAttributesAndOptions();
      CFRelease(Mutable);
    }

    else
    {
      v15 = 0;
    }

    CopyWithAttributes = CTFontCreateCopyWithAttributes(v6, a3, 0, v15);
    [UIKBCTFontForInputMode_ctFonts setObject:CopyWithAttributes forKey:v9];

    if (v15)
    {
      CFRelease(v15);
    }
  }

  return CopyWithAttributes;
}

uint64_t __UIKBCTFontForInputMode_block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v1 = UIKBCTFontForInputMode_ctFonts;
  UIKBCTFontForInputMode_ctFonts = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

CGImageRef UIKBCreateFadeClipImage(int a1, int a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6, CGFloat a7, CGFloat a8, CGFloat a9, CGFloat a10, CGFloat a11)
{
  v50 = *MEMORY[0x1E69E9840];
  if (!UIKBCreateFadeClipImage_colorspace)
  {
    UIKBCreateFadeClipImage_colorspace = CGColorSpaceCreateWithName(*MEMORY[0x1E695F1C8]);
  }

  v25 = UIKBScale();
  *components = xmmword_1900C0FB0;
  v26 = CGColorCreate(UIKBCreateFadeClipImage_colorspace, components);
  v27 = vcvtpd_u64_f64(a5 * v25);
  v28 = CGBitmapContextCreate(0, v27, vcvtpd_u64_f64(a6 * v25), 8uLL, v27, UIKBCreateFadeClipImage_colorspace, 0);
  CGAffineTransformMakeScale(&transform, v25, v25);
  CGContextConcatCTM(v28, &transform);
  *&transform.a = xmmword_1900C0FE0;
  v29 = CGColorCreate(UIKBCreateFadeClipImage_colorspace, &transform.a);
  CGContextSetFillColorWithColor(v28, v29);
  v51.origin.x = a3;
  v51.origin.y = a4;
  v51.size.width = a5;
  v51.size.height = a6;
  CGContextFillRect(v28, v51);
  CGColorRelease(v29);
  v47[0] = a11;
  v47[1] = 1.0;
  v30 = CGColorCreate(UIKBCreateFadeClipImage_colorspace, v47);
  v31 = [MEMORY[0x1E695DEC8] arrayWithObjects:{v26, v30, 0}];
  CGColorRelease(v30);
  CGColorRelease(v26);
  v32 = CGGradientCreateWithColors(UIKBCreateFadeClipImage_colorspace, v31, 0);
  v52.origin.x = a7;
  v52.origin.y = a8;
  v52.size.width = a9;
  v52.size.height = a10;
  v53 = CGRectOffset(v52, -a3, -a4);
  x = v53.origin.x;
  y = v53.origin.y;
  width = v53.size.width;
  height = v53.size.height;
  CGContextClipToRect(v28, v53);
  if (a1)
  {
    v37 = y;
  }

  else
  {
    v37 = y + height;
  }

  if (a1)
  {
    v38 = y + height;
  }

  else
  {
    v38 = y;
  }

  if (a1)
  {
    v39 = x;
  }

  else
  {
    v39 = x + width;
  }

  if (a1)
  {
    v40 = x + width;
  }

  else
  {
    v40 = x;
  }

  if (a2)
  {
    v41 = v39;
  }

  else
  {
    v41 = x;
  }

  if (a2)
  {
    v37 = y;
    v42 = v40;
  }

  else
  {
    v42 = x;
  }

  if (a2)
  {
    v38 = y;
  }

  CGContextDrawLinearGradient(v28, v32, *(&v37 - 1), *(&v38 - 1), 0);
  CGGradientRelease(v32);
  Image = CGBitmapContextCreateImage(v28);
  CGContextRelease(v28);

  return Image;
}

double UIKBScale()
{
  result = *&UIKBScale_scale;
  if (*&UIKBScale_scale == 0.0)
  {
    v1 = [MEMORY[0x1E69DCEB0] mainScreen];
    [v1 scale];
    UIKBScale_scale = v2;

    return *&UIKBScale_scale;
  }

  return result;
}

BOOL UIKBKeyboardIsPortrait(void *a1)
{
  v1 = [a1 name];
  v2 = [v1 rangeOfString:@"Portrait"] != 0x7FFFFFFFFFFFFFFFLL;

  return v2;
}

BOOL UIKBKeyboardIsSplit(void *a1)
{
  v1 = a1;
  v2 = [v1 visualStyle] == 106 || objc_msgSend(v1, "visualStyle") == 107;

  return v2;
}

uint64_t UIKBGetFlickDirection(double a1, double a2, double a3, double a4)
{
  v6 = a3 - a1;
  v7 = hypot(a3 - a1, a4 - a2);
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __UIKBGetFlickDirection_block_invoke;
  aBlock[3] = &__block_descriptor_40_e11_q24__0q8d16l;
  *&aBlock[4] = v7;
  v8 = _Block_copy(aBlock);
  v9.n128_f64[0] = atan2(a2 - a4, v6);
  if (v9.n128_f64[0] < 0.0)
  {
    v9.n128_f64[0] = v9.n128_f64[0] + 6.28318531;
  }

  v10 = v9.n128_f64[0] * 180.0 / 3.14159265;
  if (v10 <= 45.0)
  {
    v12 = v8[2];
    goto LABEL_7;
  }

  if (v10 > 135.0)
  {
    if (v10 <= 225.0)
    {
      v9.n128_u64[0] = 26.0;
      v11 = (v8[2])(v8, 3, v9);
      goto LABEL_9;
    }

    v12 = v8[2];
    if (v10 <= 315.0)
    {
      v9.n128_u64[0] = 26.0;
      v13 = v8;
      v14 = 2;
      goto LABEL_8;
    }

LABEL_7:
    v9.n128_u64[0] = 26.0;
    v13 = v8;
    v14 = 1;
LABEL_8:
    v11 = v12(v13, v14, v9);
    goto LABEL_9;
  }

  v9.n128_u64[0] = 26.0;
  v11 = (v8[2])(v8, 0, v9);
LABEL_9:
  v15 = v11;

  return v15;
}

uint64_t __UIKBGetFlickDirection_block_invoke(uint64_t a1, uint64_t a2, double a3)
{
  if (*(a1 + 32) >= a3)
  {
    return a2;
  }

  else
  {
    return -3;
  }
}

uint64_t _nonPersistentCacheForKey(void *a1, const void *a2)
{
  v3 = a1;
  if (!v3)
  {
    goto LABEL_8;
  }

  if (_nonPersistentCacheForKey_onceToken != -1)
  {
    dispatch_once(&_nonPersistentCacheForKey_onceToken, &__block_literal_global_97);
  }

  v4 = [_nonPersistentCache objectForKey:v3];
  v5 = [v4 CGImage];

  if (!v5)
  {
    if (a2)
    {
      v6 = CFGetTypeID(a2);
      if (v6 == CGImageGetTypeID())
      {
        v7 = [MEMORY[0x1E69DCAB8] imageWithCGImage:a2];
        v5 = [v7 CGImage];
        [_nonPersistentCache setObject:v7 forKey:v3];

        goto LABEL_9;
      }
    }

LABEL_8:
    v5 = 0;
  }

LABEL_9:

  return v5;
}

uint64_t __Block_byref_object_copy__2869(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id get_UIActionWhenIdleClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = get_UIActionWhenIdleClass_softClass;
  v7 = get_UIActionWhenIdleClass_softClass;
  if (!get_UIActionWhenIdleClass_softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __get_UIActionWhenIdleClass_block_invoke;
    v3[3] = &unk_1E72D8058;
    v3[4] = &v4;
    __get_UIActionWhenIdleClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void UIKitLibrary_2872()
{
  v4 = *MEMORY[0x1E69E9840];
  v1[0] = 0;
  if (!UIKitLibraryCore_frameworkLibrary_2875)
  {
    v1[1] = MEMORY[0x1E69E9820];
    v1[2] = 3221225472;
    v1[3] = __UIKitLibraryCore_block_invoke_2876;
    v1[4] = &__block_descriptor_40_e5_v8__0l;
    v1[5] = v1;
    v2 = xmmword_1E72D7390;
    v3 = 0;
    UIKitLibraryCore_frameworkLibrary_2875 = _sl_dlopen();
    v0 = v1[0];
    if (UIKitLibraryCore_frameworkLibrary_2875)
    {
      if (!v1[0])
      {
        return;
      }
    }

    else
    {
      v0 = abort_report_np();
    }

    free(v0);
  }
}

uint64_t __UIKitLibraryCore_block_invoke_2876()
{
  result = _sl_dlopen();
  UIKitLibraryCore_frameworkLibrary_2875 = result;
  return result;
}

void __TIGetKeyboardGrayscaleCachingEnabledValue_block_invoke()
{
  v0 = [MEMORY[0x1E69D9680] sharedPreferencesController];
  [v0 _configureKey:@"KeyboardGrayscaleCachingEnabled" domain:@"com.apple.keyboard" defaultValue:MEMORY[0x1E695E118]];
}

uint64_t ___nonPersistentCacheForKey_block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v1 = _nonPersistentCache;
  _nonPersistentCache = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

void AXSSensitiveSettingChanged()
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2050000000;
  v0 = getUIKeyboardLayoutStarClass_softClass;
  v8 = getUIKeyboardLayoutStarClass_softClass;
  if (!getUIKeyboardLayoutStarClass_softClass)
  {
    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 3221225472;
    v4[2] = __getUIKeyboardLayoutStarClass_block_invoke;
    v4[3] = &unk_1E72D8058;
    v4[4] = &v5;
    __getUIKeyboardLayoutStarClass_block_invoke(v4);
    v0 = v6[3];
  }

  v1 = v0;
  _Block_object_dispose(&v5, 8);
  [v0 accessibilitySensitivityChanged];
  +[UIKBRenderer clearInternalCaches];
  v2 = __cache;
  if (__cache && *(__cache + 8) && (v3 = objc_opt_respondsToSelector(), v2 = __cache, (v3 & 1) != 0))
  {
    [*(__cache + 8) purgeMemoryCache];
  }

  else
  {
    __cache = 0;
  }
}

Class __getUIKeyboardLayoutStarClass_block_invoke(uint64_t a1)
{
  UIKitLibrary_2872();
  result = objc_getClass("UIKeyboardLayoutStar");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getUIKeyboardLayoutStarClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = abort_report_np();
    return __TIGetKeyboardCachingLockOnReadValue_block_invoke(v3);
  }

  return result;
}

void __TIGetKeyboardCachingLockOnReadValue_block_invoke()
{
  v0 = [MEMORY[0x1E69D9680] sharedPreferencesController];
  [v0 _configureKey:@"KeyboardCachingLockOnRead" domain:@"com.apple.keyboard" defaultValue:MEMORY[0x1E695E110]];
}

void __TIGetKeyboardCachingDisabledValue_block_invoke()
{
  v0 = [MEMORY[0x1E69D9680] sharedPreferencesController];
  [v0 _configureKey:@"KeyboardCachingDisabled" domain:@"com.apple.keyboard" defaultValue:MEMORY[0x1E695E110]];
}

uint64_t __Block_byref_object_copy__3320(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

Class __getUIKeyboardImplClass_block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  if (!UIKitLibraryCore_frameworkLibrary_3564)
  {
    v4[1] = MEMORY[0x1E69E9820];
    v4[2] = 3221225472;
    v4[3] = __UIKitLibraryCore_block_invoke_3565;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_1E72D74A8;
    v6 = 0;
    UIKitLibraryCore_frameworkLibrary_3564 = _sl_dlopen();
    v2 = v4[0];
    if (UIKitLibraryCore_frameworkLibrary_3564)
    {
      if (!v4[0])
      {
        goto LABEL_4;
      }
    }

    else
    {
      v2 = abort_report_np();
    }

    free(v2);
  }

LABEL_4:
  result = objc_getClass("UIKeyboardImpl");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    abort_report_np();
  }

  getUIKeyboardImplClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __UIKitLibraryCore_block_invoke_3565()
{
  result = _sl_dlopen();
  UIKitLibraryCore_frameworkLibrary_3564 = result;
  return result;
}

void *__getMKBGetDeviceLockStateSymbolLoc_block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v5[0] = 0;
  if (!MobileKeyBagLibraryCore_frameworkLibrary)
  {
    v5[1] = MEMORY[0x1E69E9820];
    v5[2] = 3221225472;
    v5[3] = __MobileKeyBagLibraryCore_block_invoke;
    v5[4] = &__block_descriptor_40_e5_v8__0l;
    v5[5] = v5;
    v6 = xmmword_1E72D7580;
    v7 = 0;
    MobileKeyBagLibraryCore_frameworkLibrary = _sl_dlopen();
    v3 = v5[0];
    v2 = MobileKeyBagLibraryCore_frameworkLibrary;
    if (MobileKeyBagLibraryCore_frameworkLibrary)
    {
      if (!v5[0])
      {
        goto LABEL_5;
      }
    }

    else
    {
      v3 = abort_report_np();
    }

    free(v3);
    goto LABEL_5;
  }

  v2 = MobileKeyBagLibraryCore_frameworkLibrary;
LABEL_5:
  result = dlsym(v2, "MKBGetDeviceLockState");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMKBGetDeviceLockStateSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __MobileKeyBagLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  MobileKeyBagLibraryCore_frameworkLibrary = result;
  return result;
}

Class __getAFDictationConnectionClass_block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  if (!AssistantServicesLibraryCore_frameworkLibrary)
  {
    v4[1] = MEMORY[0x1E69E9820];
    v4[2] = 3221225472;
    v4[3] = __AssistantServicesLibraryCore_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_1E72D76D0;
    v6 = 0;
    AssistantServicesLibraryCore_frameworkLibrary = _sl_dlopen();
    v2 = v4[0];
    if (AssistantServicesLibraryCore_frameworkLibrary)
    {
      if (!v4[0])
      {
        goto LABEL_4;
      }
    }

    else
    {
      v2 = abort_report_np();
    }

    free(v2);
  }

LABEL_4:
  result = objc_getClass("AFDictationConnection");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    abort_report_np();
  }

  getAFDictationConnectionClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

__CFString *TUIKeyboardDisplayNameFromIdentifierForContext(void *a1, uint64_t a2)
{
  v3 = a1;
  v4 = [MEMORY[0x1E69DCBE8] keyboardInputModeWithIdentifier:v3];
  if ([v4 isExtensionInputMode])
  {
    v5 = [v4 safe__extendedDisplayName];
    goto LABEL_13;
  }

  if ([v3 hasPrefix:*MEMORY[0x1E69DDFC0]])
  {
    v5 = @"QWERTY";
    goto LABEL_13;
  }

  v6 = MEMORY[0x193AE8270](v3);

  v3 = MEMORY[0x193AE8260](v6);

  v7 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v5 = [v7 localizedStringForKey:v3 value:&stru_1F03BA8F8 table:@"KeyboardTitles"];

  if ([(__CFString *)v5 isEqualToString:v3])
  {
  }

  else if (v5)
  {
    goto LABEL_13;
  }

  v8 = MEMORY[0x1E695DF58];
  v9 = [MEMORY[0x1E696AAE8] mainBundle];
  v10 = [v8 localeForBundleLanguage:v9];
  v3 = v3;
  if (_ReducedLanguageIdentifierForKeyboardLanguage___onceToken != -1)
  {
    dispatch_once(&_ReducedLanguageIdentifierForKeyboardLanguage___onceToken, &__block_literal_global_4478);
  }

  v11 = _ReducedLanguageIdentifierForKeyboardLanguage___languageCounts;
  v12 = [MEMORY[0x1E695DF58] baseLanguageFromLanguage:v3];
  v13 = [v11 countForObject:v12];

  v14 = v3;
  if (v13 <= 1)
  {
    v14 = [MEMORY[0x1E695DF58] baseLanguageFromLanguage:v3];
  }

  v5 = [v10 localizedStringForLanguage:v14 context:a2];

LABEL_13:

  return v5;
}

uint64_t __AssistantServicesLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  AssistantServicesLibraryCore_frameworkLibrary = result;
  return result;
}

id TUIKeyboardTitle(void *a1)
{
  v1 = MEMORY[0x1E696AAE8];
  v2 = a1;
  v3 = [v1 bundleForClass:objc_opt_class()];
  v4 = [v3 localizedStringForKey:v2 value:&stru_1F03BA8F8 table:@"KeyboardTitles"];

  return v4;
}

id TUIKeyboardTitleInLanguage(void *a1, void *a2)
{
  v15[1] = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = MEMORY[0x1E696AAE8];
  v5 = a1;
  v6 = [v4 bundleForClass:objc_opt_class()];
  v7 = [v6 localizations];
  v15[0] = v3;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:1];
  v9 = [v4 preferredLocalizationsFromArray:v7 forPreferences:v8];
  v10 = [v9 firstObject];

  if (v10)
  {
    v11 = v10;

    v3 = v11;
  }

  v12 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v13 = [v12 localizedStringForKey:v5 value:v5 table:@"KeyboardTitles" localization:v3];

  return v13;
}

id TUIDictationTitle(void *a1)
{
  v1 = MEMORY[0x1E696AAE8];
  v2 = a1;
  v3 = [v1 bundleForClass:objc_opt_class()];
  v4 = [v3 localizedStringForKey:v2 value:&stru_1F03BA8F8 table:@"Dictation"];

  return v4;
}

uint64_t TIGetMoltoCrescendoValue()
{
  if (TIGetMoltoCrescendoValue_onceToken != -1)
  {
    dispatch_once(&TIGetMoltoCrescendoValue_onceToken, &__block_literal_global_486);
  }

  v0 = [MEMORY[0x1E69D9680] sharedPreferencesController];

  return [v0 valueForPreferenceKey:@"MoltoCrescendo"];
}

uint64_t __TIGetMoltoCrescendoValue_block_invoke()
{
  v0 = [MEMORY[0x1E69D9680] sharedPreferencesController];
  v1 = MEMORY[0x1E695E118];

  return [v0 _configureKey:@"MoltoCrescendo" domain:@"com.apple.keyboard" defaultValue:v1];
}

uint64_t __Block_byref_object_copy__5500(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__5869(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

double TUIRectIntegralWithScale(double a1, double a2, double a3, double a4, double a5)
{
  v6 = a1;
  IsNull = CGRectIsNull(*&a1);
  if (a5 > 1.0 && !IsNull)
  {
    return floor(v6 * a5) / a5;
  }

  return v6;
}

double TUIPointIntegralWithScale(double result, double a2, double a3)
{
  if (a3 > 1.0)
  {
    return floor(result * a3) / a3;
  }

  return result;
}

double TUIScreenScaleForView(void *a1)
{
  v1 = [a1 window];
  v2 = [v1 screen];

  if (!v2)
  {
    v3 = [MEMORY[0x1E69DCBE0] activeInstance];
    v4 = [v3 window];
    v2 = [v4 screen];

    if (!v2)
    {
      v2 = [MEMORY[0x1E69DCEB0] mainScreen];
    }
  }

  [v2 scale];
  v6 = v5;
  v7 = [v2 traitCollection];
  v8 = [v7 userInterfaceIdiom];

  v9 = 2.0;
  if (v6 <= 2.0 || v8 != 3)
  {
    v9 = v6;
  }

  v11 = fmax(v9, 1.0);

  return v11;
}

void __TIGetEnableColorAdaptiveKeyboardPaddlesValue_block_invoke()
{
  v0 = [MEMORY[0x1E69D9680] sharedPreferencesController];
  [v0 _configureKey:@"EnableColorAdaptiveKeyboardPaddles" domain:@"com.apple.keyboard" defaultValue:MEMORY[0x1E695E118]];
}

id __TUIFaultDebugAssertLog()
{
  if (__TUIFaultDebugAssertLog_onceToken != -1)
  {
    dispatch_once(&__TUIFaultDebugAssertLog_onceToken, &__block_literal_global_7890);
  }

  v1 = __TUIFaultDebugAssertLog__debugAssertLogT;

  return v1;
}

uint64_t __Block_byref_object_copy__8277(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id _TUIKeyboardTrackingLogger_8526()
{
  if (_TUIKeyboardTrackingLogger_onceToken_8529 != -1)
  {
    dispatch_once(&_TUIKeyboardTrackingLogger_onceToken_8529, &__block_literal_global_8530);
  }

  v1 = _TUIKeyboardTrackingLogger_log_8531;

  return v1;
}

id TUIAssertionLogFacility()
{
  if (TUIAssertionLogFacility_onceToken != -1)
  {
    dispatch_once(&TUIAssertionLogFacility_onceToken, &__block_literal_global_9333);
  }

  v1 = TUIAssertionLogFacility_log;

  return v1;
}

uint64_t __TUIAssertionLogFacility_block_invoke()
{
  v0 = os_log_create("com.apple.TextInputUI", "ViewService");
  v1 = TUIAssertionLogFacility_log;
  TUIAssertionLogFacility_log = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

id _TUIKitUserDefaults()
{
  if (_TUIKitUserDefaults_onceToken != -1)
  {
    dispatch_once(&_TUIKitUserDefaults_onceToken, &__block_literal_global_9413);
  }

  v1 = _TUIKitUserDefaults_result;

  return v1;
}

unint64_t __TUILogGetCategoryImpl(_BYTE *__s2)
{
  v2 = *__s2;
  if (*__s2)
  {
    v3 = 0;
    v4 = 0;
    LOBYTE(v5) = *__s2;
    do
    {
      v4 = 257 * v4 + v5;
      v5 = __s2[++v3];
    }

    while (v5);
    v6 = 257 * v4;
  }

  else
  {
    LODWORD(v3) = 0;
    v6 = 0;
  }

  v7 = v6 + v3;
  v8 = g_TUILogCategories;
  v9 = g_TUILogCategories[v7 & 0x1F];
  if (v9)
  {
    v10 = 0;
    v11 = v7;
    do
    {
      if (*v9 == v7)
      {
        if (!memcmp(*(v9 + 264), __s2, v3))
        {
          return v9 - 16;
        }

        ++v10;
        if (v2)
        {
          v3 = 0;
          LOBYTE(v12) = v2;
          v13 = v10;
          do
          {
            v13 = 257 * v13 + v12;
            v12 = __s2[++v3];
          }

          while (v12);
        }

        else
        {
          LODWORD(v3) = 0;
          v13 = v10;
        }

        v7 = 257 * v13 + v3;
        v11 = v7;
      }

      else
      {
        v11 >>= 5;
      }

      v9 = *(v9 + 8 * (v11 & 0x1F) + 8);
    }

    while (v9);
  }

  os_unfair_lock_lock(&g_TUILogCategoriesLock);
  v14 = *__s2;
  if (*__s2)
  {
    v15 = 0;
    v16 = 0;
    LOBYTE(v17) = *__s2;
    do
    {
      v16 = 257 * v16 + v17;
      v17 = __s2[++v15];
    }

    while (v17);
    v18 = 257 * v16;
  }

  else
  {
    v15 = 0;
    v18 = 0;
  }

  v19 = (v18 + v15);
  v20 = v19 | (v15 << 32);
  v21 = v19 & 0x1F;
  v22 = g_TUILogCategories[v21];
  if (v22)
  {
    v23 = 0;
    LODWORD(v24) = v19;
    v8 = g_TUILogCategories;
    do
    {
      if (*v22 == v24)
      {
        if (!memcmp(*(v22 + 264), __s2, v15))
        {
          v27 = &v8[8 * v21];
          goto LABEL_52;
        }

        ++v23;
        if (v14)
        {
          v15 = 0;
          LOBYTE(v25) = v14;
          v26 = v23;
          do
          {
            v26 = 257 * v26 + v25;
            v25 = __s2[++v15];
          }

          while (v25);
        }

        else
        {
          v15 = 0;
          v26 = v23;
        }

        v24 = (257 * v26 + v15);
        v20 = v24 | (v15 << 32);
        LODWORD(v19) = 257 * v26 + v15;
      }

      else
      {
        LODWORD(v19) = v19 >> 5;
      }

      v8 = (v22 + 8);
      v21 = v19 & 0x1F;
      v22 = *(v22 + 8 + 8 * v21);
    }

    while (v22);
  }

  v27 = &v8[8 * v21];
  v28 = strlen(__s2);
  v29 = v28;
  if (v28 < 0x2801)
  {
    v32 = (g_TUILogCategoriesAllocator_1 + 3) & 0xFFFFFFFFFFFFFFFCLL;
    if (v32 < g_TUILogCategoriesAllocator_1 || v32 > 10240 - v28)
    {
      v34 = malloc_type_malloc(0x2800uLL, 0x100004077774924uLL);
      v32 = 0;
      g_TUILogCategoriesAllocator_0 = v34;
    }

    else
    {
      v34 = g_TUILogCategoriesAllocator_0;
    }

    v31 = v32 + v29;
    g_TUILogCategoriesAllocator_1 = v32 + v29;
    v30 = &v34[v32];
  }

  else
  {
    v30 = malloc_type_malloc(v28, 0x45EA59ACuLL);
    v31 = g_TUILogCategoriesAllocator_1;
  }

  memcpy(v30, __s2, v29);
  v35 = (v31 + 7) & 0xFFFFFFFFFFFFFFF8;
  if (v35 < v31 || v35 > 0x26E0)
  {
    v36 = malloc_type_malloc(0x2800uLL, 0x100004077774924uLL);
    v35 = 0;
    g_TUILogCategoriesAllocator_0 = v36;
  }

  else
  {
    v36 = g_TUILogCategoriesAllocator_0;
  }

  g_TUILogCategoriesAllocator_1 = v35 + 288;
  v37 = v36 + v35;
  *v37 = 0;
  *(v37 + 4) = 0;
  *(v37 + 8) = 0;
  v38 = [MEMORY[0x1E696AEC0] stringWithUTF8String:__s2];
  v39 = _TUIKitUserDefaults();
  v40 = [@"Log" stringByAppendingString:v38];
  v41 = [v39 objectForKey:v40];
  __updateCategoryFlagValueLocked(v37, 1, v41);

  v42 = malloc_type_malloc(0x28uLL, 0x10A0040D8596764uLL);
  *v42 = v37;
  v42[2] = 1;
  *(v42 + 2) = v39;
  *(v42 + 3) = v40;
  *(v42 + 4) = __preferences;
  __preferences = v42;
  if (__associateFlagWithPreferencesKeyLocked_once != -1)
  {
    dispatch_once(&__associateFlagWithPreferencesKeyLocked_once, &__block_literal_global_20);
  }

  *(v37 + 8) = os_log_create("com.apple.TextInputUI", __s2);

  *(v37 + 16) = v20;
  v43 = v37 + 16;
  *(v43 + 264) = v30;
  *(v43 + 24) = 0u;
  *(v43 + 40) = 0u;
  *(v43 + 56) = 0u;
  *(v43 + 72) = 0u;
  *(v43 + 88) = 0u;
  *(v43 + 104) = 0u;
  *(v43 + 120) = 0u;
  *(v43 + 136) = 0u;
  *(v43 + 152) = 0u;
  *(v43 + 168) = 0u;
  *(v43 + 184) = 0u;
  *(v43 + 200) = 0u;
  *(v43 + 216) = 0u;
  *(v43 + 232) = 0u;
  *(v43 + 8) = 0u;
  *(v43 + 248) = 0u;
  atomic_store(v43, v27);
LABEL_52:
  os_unfair_lock_unlock(&g_TUILogCategoriesLock);
  v9 = *v27;
  return v9 - 16;
}

void __updateCategoryFlagValueLocked(uint64_t a1, int a2, void *a3)
{
  v7 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    v5 = [v7 BOOLValue];

    if (v5)
    {
      v6 = *(a1 + 4) | a2;
      goto LABEL_7;
    }
  }

  else
  {
  }

  v6 = *(a1 + 4) & ~a2;
LABEL_7:
  atomic_store((v6 & 0xF) != 0, a1);
  *(a1 + 4) = v6;
}

void ____associateFlagWithPreferencesKeyLocked_block_invoke()
{
  v0 = dispatch_get_global_queue(-32768, 0);
  dispatch_async(v0, &__block_literal_global_22);
}

void ____associateFlagWithPreferencesKeyLocked_block_invoke_2()
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();

  CFNotificationCenterAddObserver(DarwinNotifyCenter, 0, __preferencesNotificationCallback, @"com.apple.TextInputUI.LoggingPreferences", 0, CFNotificationSuspensionBehaviorCoalesce);
}

void __TUILogSyncCategories()
{
  os_unfair_lock_lock(&g_TUILogCategoriesLock);
  for (i = __preferences; i; i = *(i + 32))
  {
    v1 = *i;
    v2 = *(i + 8);
    v3 = [*(i + 16) objectForKey:*(i + 24)];
    __updateCategoryFlagValueLocked(v1, v2, v3);
  }

  os_unfair_lock_unlock(&g_TUILogCategoriesLock);
}

uint64_t __TUILogGetCategoryCachedImpl(_BYTE *__s2, unint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    result = __TUILogGetCategoryImpl(__s2);
    atomic_store(result, a2);
  }

  return result;
}

id TUICandidateGenerationLog()
{
  if (TUICandidateGenerationLog_onceToken != -1)
  {
    dispatch_once(&TUICandidateGenerationLog_onceToken, &__block_literal_global_10);
  }

  v1 = TUICandidateGenerationLog_log;

  return v1;
}

uint64_t __TUICandidateGenerationLog_block_invoke()
{
  v0 = os_log_create("com.apple.TextInputUI", "CandidateGeneration");
  v1 = TUICandidateGenerationLog_log;
  TUICandidateGenerationLog_log = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

id TUIBackendControllerLog()
{
  if (TUIBackendControllerLog_onceToken != -1)
  {
    dispatch_once(&TUIBackendControllerLog_onceToken, &__block_literal_global_13);
  }

  v1 = TUIBackendControllerLog_log;

  return v1;
}

uint64_t __TUIBackendControllerLog_block_invoke()
{
  v0 = os_log_create("com.apple.TextInputUI", "BackendController");
  v1 = TUIBackendControllerLog_log;
  TUIBackendControllerLog_log = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

uint64_t __Block_byref_object_copy__9855(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t _isTextEffectMatchingStringRangeFollowedByPunctuationInTypingContext(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = a1 + a2;
  if (v6 >= [v5 length])
  {
    v8 = 0;
  }

  else
  {
    if (_isTextEffectMatchingStringRangeFollowedByPunctuationInTypingContext_onceToken != -1)
    {
      dispatch_once(&_isTextEffectMatchingStringRangeFollowedByPunctuationInTypingContext_onceToken, &__block_literal_global_9864);
    }

    v7 = [v5 characterAtIndex:v6];
    v8 = [_isTextEffectMatchingStringRangeFollowedByPunctuationInTypingContext___customPunctuationCharacterSet characterIsMember:v7];
  }

  return v8;
}

void ___isTextEffectMatchingStringRangeFollowedByPunctuationInTypingContext_block_invoke()
{
  v2 = [MEMORY[0x1E696AD48] punctuationCharacterSet];
  [v2 removeCharactersInString:@"*"];
  v0 = [v2 copy];
  v1 = _isTextEffectMatchingStringRangeFollowedByPunctuationInTypingContext___customPunctuationCharacterSet;
  _isTextEffectMatchingStringRangeFollowedByPunctuationInTypingContext___customPunctuationCharacterSet = v0;
}

id TUIEmojiUpscalerLog()
{
  if (TUIEmojiUpscalerLog_onceToken != -1)
  {
    dispatch_once(&TUIEmojiUpscalerLog_onceToken, &__block_literal_global_51);
  }

  v1 = TUIEmojiUpscalerLog_log;

  return v1;
}

uint64_t __TUIEmojiUpscalerLog_block_invoke()
{
  v0 = os_log_create("com.apple.TextInputUI", "EmojiUpscaler");
  v1 = TUIEmojiUpscalerLog_log;
  TUIEmojiUpscalerLog_log = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

uint64_t TUIRemoteEmojiSearchViewControllerEnabled()
{
  if (TIGetRemoteEmojiValue_onceToken[0] != -1)
  {
    dispatch_once(TIGetRemoteEmojiValue_onceToken, &__block_literal_global_11355);
  }

  v0 = [MEMORY[0x1E69D9680] sharedPreferencesController];
  v1 = [v0 valueForPreferenceKey:@"RemoteEmoji"];

  LODWORD(v0) = [v1 BOOLValue];
  if (!v0)
  {
    return 0;
  }

  v2 = [MEMORY[0x1E69DC938] currentDevice];
  [v2 userInterfaceIdiom];

  return _os_feature_enabled_impl();
}

Class __getSTKStickerSearchQueryClass_block_invoke(uint64_t a1)
{
  StickerKitLibraryCore();
  result = objc_getClass("STKStickerSearchQuery");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getSTKStickerSearchQueryClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void StickerKitLibraryCore()
{
  if (!StickerKitLibraryCore_frameworkLibrary)
  {
    StickerKitLibraryCore_frameworkLibrary = _sl_dlopen();
  }
}

uint64_t __StickerKitLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  StickerKitLibraryCore_frameworkLibrary = result;
  return result;
}

void __TIGetRemoteEmojiValue_block_invoke()
{
  v0 = [MEMORY[0x1E69D9680] sharedPreferencesController];
  [v0 _configureKey:@"RemoteEmoji" domain:@"com.apple.keyboard" defaultValue:MEMORY[0x1E695E118]];
}

Class __getSTKStickerSearchConfigurationClass_block_invoke(uint64_t a1)
{
  StickerKitLibraryCore();
  result = objc_getClass("STKStickerSearchConfiguration");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getSTKStickerSearchConfigurationClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

id TUIEmojiSearchInputViewLog()
{
  if (TUIEmojiSearchInputViewLog_onceToken != -1)
  {
    dispatch_once(&TUIEmojiSearchInputViewLog_onceToken, &__block_literal_global_311);
  }

  v1 = TUIEmojiSearchInputViewLog_log;

  return v1;
}

uint64_t __TUIEmojiSearchInputViewLog_block_invoke()
{
  v0 = os_log_create("com.apple.TextInputUI", "EmojiSearchInputView");
  v1 = TUIEmojiSearchInputViewLog_log;
  TUIEmojiSearchInputViewLog_log = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

id getSTKStickerRemoteSearchViewControllerClass()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2050000000;
  v0 = getSTKStickerRemoteSearchViewControllerClass_softClass;
  v6 = getSTKStickerRemoteSearchViewControllerClass_softClass;
  if (!getSTKStickerRemoteSearchViewControllerClass_softClass)
  {
    StickerKitLibraryCore();
    v4[3] = objc_getClass("STKStickerRemoteSearchViewController");
    getSTKStickerRemoteSearchViewControllerClass_softClass = v4[3];
    v0 = v4[3];
  }

  v1 = v0;
  _Block_object_dispose(&v3, 8);

  return v1;
}

Class __getSTKStickerRemoteSearchViewControllerClass_block_invoke(uint64_t a1)
{
  StickerKitLibraryCore();
  result = objc_getClass("STKStickerRemoteSearchViewController");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getSTKStickerRemoteSearchViewControllerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void __TIGetMultilingualEmojiSearchValue_block_invoke()
{
  v0 = [MEMORY[0x1E69D9680] sharedPreferencesController];
  [v0 _configureKey:@"MultilingualEmojiSearch" domain:@"com.apple.keyboard" defaultValue:MEMORY[0x1E695E118]];
}

uint64_t ___collapsedButtonBarGroupViewsPredicate_block_invoke()
{
  v0 = [MEMORY[0x1E696AE18] predicateWithFormat:@"collapsed == NO"];
  v1 = _collapsedButtonBarGroupViewsPredicate_collapsedButtonBarGroupViewsPredicate;
  _collapsedButtonBarGroupViewsPredicate_collapsedButtonBarGroupViewsPredicate = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

void SetSmartReplyStartTimeForRequest(void *a1, uint64_t a2)
{
  v3 = a1;
  os_unfair_lock_lock(&mappingLock);
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:a2];
  v5 = SmartReplyTimestampDict();
  [v5 setObject:v4 forKeyedSubscript:v3];

  os_unfair_lock_unlock(&mappingLock);
}

id TUIInputAnalyticsLog()
{
  if (TUIInputAnalyticsLog_onceToken != -1)
  {
    dispatch_once(&TUIInputAnalyticsLog_onceToken, &__block_literal_global_12952);
  }

  v1 = TUIInputAnalyticsLog_log;

  return v1;
}

uint64_t GetSmartReplyStartTimeForRequest(void *a1)
{
  v1 = a1;
  os_unfair_lock_lock(&mappingLock);
  v2 = SmartReplyTimestampDict();
  v3 = [v2 objectForKeyedSubscript:v1];

  if (v3)
  {
    v4 = [v3 unsignedLongLongValue];
    v5 = SmartReplyTimestampDict();
    [v5 removeObjectForKey:v1];
  }

  else
  {
    v4 = 0;
  }

  os_unfair_lock_unlock(&mappingLock);

  return v4;
}

id SmartReplyTimestampDict()
{
  if (SmartReplyTimestampDict_onceToken != -1)
  {
    dispatch_once(&SmartReplyTimestampDict_onceToken, &__block_literal_global_47);
  }

  v1 = SmartReplyTimestampDict_mapping;

  return v1;
}

uint64_t __SmartReplyTimestampDict_block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v1 = SmartReplyTimestampDict_mapping;
  SmartReplyTimestampDict_mapping = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

uint64_t __TUIInputAnalyticsLog_block_invoke()
{
  v0 = os_log_create("com.apple.InputAnalytics", "TextAssistant");
  v1 = TUIInputAnalyticsLog_log;
  TUIInputAnalyticsLog_log = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

id TUISignalAnalyticsLog()
{
  if (TUISignalAnalyticsLog_onceToken != -1)
  {
    dispatch_once(&TUISignalAnalyticsLog_onceToken, &__block_literal_global_4_12975);
  }

  v1 = TUISignalAnalyticsLog___instance;

  return v1;
}

uint64_t __TUISignalAnalyticsLog_block_invoke()
{
  v0 = os_log_create("com.apple.TextInputUI", "IASignalAnalytics");
  v1 = TUISignalAnalyticsLog___instance;
  TUISignalAnalyticsLog___instance = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

CAFrameRateRange CAFrameRateRangeMake(float minimum, float maximum, float preferred)
{
  MEMORY[0x1EEDD5E20](minimum, maximum, preferred);
  result.preferred = v5;
  result.maximum = v4;
  result.minimum = v3;
  return result;
}

CGRect CGPathGetBoundingBox(CGPathRef path)
{
  MEMORY[0x1EEDBAC38](path);
  result.size.height = v4;
  result.size.width = v3;
  result.origin.y = v2;
  result.origin.x = v1;
  return result;
}

CGRect CGRectInset(CGRect rect, CGFloat dx, CGFloat dy)
{
  MEMORY[0x1EEDBAE30](rect.origin, *&rect.origin.y, rect.size, *&rect.size.height, dx, dy);
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

CGRect CGRectIntegral(CGRect rect)
{
  MEMORY[0x1EEDBAE38](rect.origin, *&rect.origin.y, rect.size, *&rect.size.height);
  result.size.height = v4;
  result.size.width = v3;
  result.origin.y = v2;
  result.origin.x = v1;
  return result;
}

CGRect CGRectIntersection(CGRect r1, CGRect r2)
{
  MEMORY[0x1EEDBAE40](r1.origin, *&r1.origin.y, r1.size, *&r1.size.height, r2.origin, *&r2.origin.y, r2.size, *&r2.size.height);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

CGRect CGRectOffset(CGRect rect, CGFloat dx, CGFloat dy)
{
  MEMORY[0x1EEDBAE78](rect.origin, *&rect.origin.y, rect.size, *&rect.size.height, dx, dy);
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

CGRect CGRectUnion(CGRect r1, CGRect r2)
{
  MEMORY[0x1EEDBAE88](r1.origin, *&r1.origin.y, r1.size, *&r1.size.height, r2.origin, *&r2.origin.y, r2.size, *&r2.size.height);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

CGRect CTFontGetOpticalBoundsForGlyphs(CTFontRef font, const CGGlyph *glyphs, CGRect *boundingRects, CFIndex count, CFOptionFlags options)
{
  MEMORY[0x1EEDBF020](font, glyphs, boundingRects, count, options);
  result.size.height = v8;
  result.size.width = v7;
  result.origin.y = v6;
  result.origin.x = v5;
  return result;
}

CGRect CTLineGetBoundsWithOptions(CTLineRef line, CTLineBoundsOptions options)
{
  MEMORY[0x1EEDBF2E0](line, options);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

__double2 __sincos_stret(double a1)
{
  MEMORY[0x1EEE73570](a1);
  result.__cosval = v2;
  result.__sinval = v1;
  return result;
}