id PSSpecifierContentConfigurationCell.__allocating_init(style:reuseIdentifier:specifier:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = v4;
  if (a3)
  {
    v8 = sub_18B0F5180();
  }

  else
  {
    v8 = 0;
  }

  v9 = [objc_allocWithZone(v5) initWithStyle:a1 reuseIdentifier:v8 specifier:a4];

  return v9;
}

id PSSpecifierContentConfigurationCell.init(style:reuseIdentifier:specifier:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = &v4[OBJC_IVAR____TtC11Preferences35PSSpecifierContentConfigurationCell_contentViewModel];
  *v7 = 0u;
  *(v7 + 1) = 0u;
  if (a3)
  {
    v8 = sub_18B0F5180();
  }

  else
  {
    v8 = 0;
  }

  v11.receiver = v4;
  v11.super_class = type metadata accessor for PSSpecifierContentConfigurationCell();
  v9 = objc_msgSendSuper2(&v11, sel_initWithStyle_reuseIdentifier_specifier_, a1, v8, a4);

  if (v9)
  {
  }

  return v9;
}

id PSSpecifierContentConfigurationCell.__allocating_init(style:reuseIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (a3)
  {
    v6 = sub_18B0F5180();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithStyle:a1 reuseIdentifier:v6];

  return v7;
}

id PSSpecifierContentConfigurationCell.init(style:reuseIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = &v3[OBJC_IVAR____TtC11Preferences35PSSpecifierContentConfigurationCell_contentViewModel];
  *v5 = 0u;
  *(v5 + 1) = 0u;
  if (a3)
  {
    v6 = sub_18B0F5180();
  }

  else
  {
    v6 = 0;
  }

  v9.receiver = v3;
  v9.super_class = type metadata accessor for PSSpecifierContentConfigurationCell();
  v7 = objc_msgSendSuper2(&v9, sel_initWithStyle_reuseIdentifier_, a1, v6);

  return v7;
}

id PSSpecifierContentConfigurationCell.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id PSSpecifierContentConfigurationCell.init(coder:)(void *a1)
{
  v3 = &v1[OBJC_IVAR____TtC11Preferences35PSSpecifierContentConfigurationCell_contentViewModel];
  v4 = type metadata accessor for PSSpecifierContentConfigurationCell();
  *v3 = 0u;
  *(v3 + 1) = 0u;
  v7.receiver = v1;
  v7.super_class = v4;
  v5 = objc_msgSendSuper2(&v7, sel_initWithCoder_, a1);

  if (v5)
  {
  }

  return v5;
}

id PSSpecifierContentConfigurationCell.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PSSpecifierContentConfigurationCell();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_18B0E6C68()
{
  result = qword_1EA9B2B20;
  if (!qword_1EA9B2B20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA9B2B18);
    sub_18B0DE9C0(&qword_1EA9B2B28, &qword_1EA9B2B30);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9B2B20);
  }

  return result;
}

uint64_t sub_18B0E6D38(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_18B0E6DA8()
{
  result = qword_1EA9B0F80;
  if (!qword_1EA9B0F80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA9B2B50);
    sub_18B0E6E60();
    sub_18B0DE9C0(&unk_1EA9B0E78, &unk_1EA9B2750);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9B0F80);
  }

  return result;
}

unint64_t sub_18B0E6E60()
{
  result = qword_1EA9B1088;
  if (!qword_1EA9B1088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9B1088);
  }

  return result;
}

void sub_18B0E6F00(void *a1)
{
  if (a1)
  {
    v2 = v1;
    v3 = a1;
    v4 = [v3 identifier];
    [v2 setAccessibilityIdentifier_];

    [v2 setType_];
    [v2 setTag_];
    [v2 setSelectionStyle_];
    [v2 setAccessoryType_];
    v5 = OBJC_IVAR____TtC11Preferences47PSSpecifierDeleteButtonContentConfigurationCell_buttonContentViewModel;
    if (*&v2[OBJC_IVAR____TtC11Preferences47PSSpecifierDeleteButtonContentConfigurationCell_buttonContentViewModel])
    {

      sub_18B0DBE10(v3);
    }

    else
    {
      type metadata accessor for PSSpecifierButtonContentViewModel();
      swift_allocObject();
      v6 = v3;
      v7 = sub_18B0DC2E0(v6);

      *&v2[v5] = v7;

      MEMORY[0x1EEE9AC00](v8);
      v9[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B2B48);
      v9[4] = sub_18B0DE9C0(&qword_1EA9B0E98, &qword_1EA9B2B48);
      __swift_allocate_boxed_opaque_existential_1(v9);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B2B50);
      sub_18B0E6DA8();
      sub_18B0F4F30();
      MEMORY[0x18CFEE4A0](v9);
    }
  }
}

uint64_t sub_18B0E7144@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  if (*(result + OBJC_IVAR____TtC11Preferences47PSSpecifierDeleteButtonContentConfigurationCell_buttonContentViewModel))
  {
    type metadata accessor for PSSpecifierButtonContentViewModel();

    sub_18B0F50B0();
    v3 = sub_18B0ED8C4();
    result = swift_getKeyPath();
    *a2 = v4;
    a2[1] = v5;
    a2[2] = result;
    a2[3] = v3;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id PSSpecifierDeleteButtonContentConfigurationCell.__allocating_init(style:reuseIdentifier:specifier:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = v4;
  if (a3)
  {
    v8 = sub_18B0F5180();
  }

  else
  {
    v8 = 0;
  }

  v9 = [objc_allocWithZone(v5) initWithStyle:a1 reuseIdentifier:v8 specifier:a4];

  return v9;
}

id PSSpecifierDeleteButtonContentConfigurationCell.init(style:reuseIdentifier:specifier:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  *&v4[OBJC_IVAR____TtC11Preferences47PSSpecifierDeleteButtonContentConfigurationCell_buttonContentViewModel] = 0;
  if (a3)
  {
    v7 = sub_18B0F5180();
  }

  else
  {
    v7 = 0;
  }

  v10.receiver = v4;
  v10.super_class = type metadata accessor for PSSpecifierDeleteButtonContentConfigurationCell();
  v8 = objc_msgSendSuper2(&v10, sel_initWithStyle_reuseIdentifier_specifier_, a1, v7, a4);

  if (v8)
  {
  }

  return v8;
}

id PSSpecifierDeleteButtonContentConfigurationCell.__allocating_init(style:reuseIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (a3)
  {
    v6 = sub_18B0F5180();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithStyle:a1 reuseIdentifier:v6];

  return v7;
}

id PSSpecifierDeleteButtonContentConfigurationCell.init(style:reuseIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *&v3[OBJC_IVAR____TtC11Preferences47PSSpecifierDeleteButtonContentConfigurationCell_buttonContentViewModel] = 0;
  if (a3)
  {
    v5 = sub_18B0F5180();
  }

  else
  {
    v5 = 0;
  }

  v8.receiver = v3;
  v8.super_class = type metadata accessor for PSSpecifierDeleteButtonContentConfigurationCell();
  v6 = objc_msgSendSuper2(&v8, sel_initWithStyle_reuseIdentifier_, a1, v5);

  return v6;
}

id PSSpecifierDeleteButtonContentConfigurationCell.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id PSSpecifierDeleteButtonContentConfigurationCell.init(coder:)(void *a1)
{
  *&v1[OBJC_IVAR____TtC11Preferences47PSSpecifierDeleteButtonContentConfigurationCell_buttonContentViewModel] = 0;
  v5.receiver = v1;
  v5.super_class = type metadata accessor for PSSpecifierDeleteButtonContentConfigurationCell();
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

id PSSpecifierDeleteButtonContentConfigurationCell.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PSSpecifierDeleteButtonContentConfigurationCell();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_18B0E7790@<X0>(uint64_t *a1@<X8>)
{
  result = MEMORY[0x18CFEDFF0]();
  *a1 = result;
  return result;
}

id sub_18B0E7870()
{
  v1 = OBJC_IVAR___PSSpecifierSliderConfigurationCell____lazy_storage___slider;
  v2 = *(v0 + OBJC_IVAR___PSSpecifierSliderConfigurationCell____lazy_storage___slider);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR___PSSpecifierSliderConfigurationCell____lazy_storage___slider);
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x1E69DCF60]) initWithFrame_];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id PSSpecifierSliderConfigurationCell.control.getter()
{
  v1 = [v0 slider];

  return v1;
}

void __swiftcall PSSpecifierSliderConfigurationCell.init(style:reuseIdentifier:)(PSSpecifierSliderConfigurationCell *__return_ptr retstr, UITableViewCellStyle style, Swift::String_optional reuseIdentifier)
{
  if (reuseIdentifier.value._object)
  {
    v4 = sub_18B0F5180();
  }

  else
  {
    v4 = 0;
  }

  [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithStyle:style reuseIdentifier:v4];
}

id PSSpecifierSliderConfigurationCell.init(style:reuseIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *&v3[OBJC_IVAR___PSSpecifierSliderConfigurationCell____lazy_storage___slider] = 0;
  if (a3)
  {
    v5 = sub_18B0F5180();
  }

  else
  {
    v5 = 0;
  }

  v8.receiver = v3;
  v8.super_class = PSSpecifierSliderConfigurationCell;
  v6 = objc_msgSendSuper2(&v8, sel_initWithStyle_reuseIdentifier_, a1, v5);

  [v6 _configureSlider];
  return v6;
}

void PSSpecifierSliderConfigurationCell.init(coder:)()
{
  *(v0 + OBJC_IVAR___PSSpecifierSliderConfigurationCell____lazy_storage___slider) = 0;
  sub_18B0F52E0();
  __break(1u);
}

Swift::Void __swiftcall PSSpecifierSliderConfigurationCell.refreshCellContents(with:)(PSSpecifier_optional *with)
{
  if (with)
  {
    v2 = v1;
    v3 = with;
    v4 = [(PSSpecifier_optional *)v3 identifier];
    [v2 setAccessibilityIdentifier_];

    v5 = sub_18B0E80F8();
    if (v5)
    {
      v6 = v5;
    }

    else
    {
      if (sub_18B0E9290(PSSliderIsSegmented))
      {
        sub_18B0E81C4();
        v8 = v7;
        if (sub_18B0E9290(PSSliderIsSegmented))
        {
          if (sub_18B0E91D8())
          {
            v9 = 1;
          }

          else if (sub_18B0E9290(PSSliderSnapsToSegment))
          {
            v9 = 2;
          }

          else
          {
            v9 = 0;
          }
        }

        else
        {
          v9 = 0;
        }

        v11 = [objc_allocWithZone(MEMORY[0x1E69DD720]) initWithNumberOfTicks:v8 behavior:v9];
        [v11 setNeutralPosition_];
        v10 = v11;
      }

      else
      {
        v10 = [objc_allocWithZone(MEMORY[0x1E69DD718]) init];
      }

      v6 = v10;
    }

    swift_unknownObjectRetain();
    v12 = sub_18B0E83A0(PSSliderLeftImageKey);
    if (v12)
    {
      v13 = v12;
      if (sub_18B0E9290(PSIconImageShouldFlipForRightToLeftKey))
      {
        v14 = [v13 imageFlippedForRightToLeftLayoutDirection];

        v13 = v14;
      }

      v15 = [v2 slider];
      [v15 setMinimumValueImage_];
    }

    v16 = sub_18B0E83A0(PSSliderRightImageKey);
    if (v16)
    {
      v17 = v16;
      if (sub_18B0E9290(PSIconImageShouldFlipForRightToLeftKey))
      {
        v18 = [v17 imageFlippedForRightToLeftLayoutDirection];

        v17 = v18;
      }

      v19 = [v2 slider];
      [v19 setMaximumValueImage_];
    }

    v20 = [v2 slider];
    [v20 _setSliderConfiguration_];

    swift_unknownObjectRelease();
    v21 = [v2 slider];
    [v21 setMinimumValue_];

    v22 = [v2 slider];
    *&v23 = sub_18B0E8520();
    [v22 setMaximumValue_];

    v24 = [v2 slider];
    v25 = sub_18B0F51B0();
    v27 = sub_18B013E38(v25, v26, 0);

    [v24 setContinuous_];

    if ([(PSSpecifier_optional *)v3 performGetter])
    {
      sub_18B0F52A0();
      swift_unknownObjectRelease();
    }

    else
    {
      v33 = 0u;
      v34 = 0u;
    }

    v35[0] = v33;
    v35[1] = v34;
    if (*(&v34 + 1))
    {
      if (swift_dynamicCast())
      {
        v28 = [v2 slider];
        LODWORD(v29) = v32;
        [v28 setValue_];
      }
    }

    else
    {
      sub_18B012FDC(v35);
    }

    v30 = [v2 slider];
    v31 = @"control";
    [(PSSpecifier_optional *)v3 setProperty:v30 forKey:v31];

    swift_unknownObjectRelease();
  }
}

uint64_t sub_18B0E80F8()
{
  if ([v0 propertyForKey_])
  {
    sub_18B0F52A0();
    swift_unknownObjectRelease();
  }

  else
  {
    v3 = 0u;
    v4 = 0u;
  }

  v5[0] = v3;
  v5[1] = v4;
  if (*(&v4 + 1))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B2B98);
    if (swift_dynamicCast())
    {
      return v2;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    sub_18B012FDC(v5);
    return 0;
  }
}

void sub_18B0E81C4()
{
  if ([v0 propertyForKey_])
  {
    sub_18B0F52A0();
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
    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_10;
    }

    if (!__OFADD__(v4, 1))
    {
      return;
    }

    __break(1u);
  }

  sub_18B012FDC(v7);
LABEL_10:
  v1 = sub_18B0E8520();
  v2 = sub_18B0E8468();
  v3 = (v1 - *&v2) + 1.0;
  if ((LODWORD(v3) & 0x7FFFFFFFu) > 0x7F7FFFFF)
  {
    __break(1u);
    goto LABEL_15;
  }

  if (v3 <= -9.2234e18)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (v3 >= 9.2234e18)
  {
LABEL_16:
    __break(1u);
  }
}

double sub_18B0E82E4()
{
  if ([v0 propertyForKey_])
  {
    sub_18B0F52A0();
    swift_unknownObjectRelease();
  }

  else
  {
    v4 = 0u;
    v5 = 0u;
  }

  v6[0] = v4;
  v6[1] = v5;
  if (*(&v5 + 1))
  {
    if (swift_dynamicCast())
    {
      return v3;
    }
  }

  else
  {
    sub_18B012FDC(v6);
  }

  v2 = sub_18B0E8468();
  return *&v2;
}

uint64_t sub_18B0E83A0(void *a1)
{
  if ([v1 propertyForKey_])
  {
    sub_18B0F52A0();
    swift_unknownObjectRelease();
  }

  else
  {
    v4 = 0u;
    v5 = 0u;
  }

  v6[0] = v4;
  v6[1] = v5;
  if (*(&v5 + 1))
  {
    sub_18B013450(0, &qword_1EA9B0DC0);
    if (swift_dynamicCast())
    {
      return v3;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    sub_18B012FDC(v6);
    return 0;
  }
}

double sub_18B0E8468()
{
  if ([v0 propertyForKey_])
  {
    sub_18B0F52A0();
    swift_unknownObjectRelease();
  }

  else
  {
    v3 = 0u;
    v4 = 0u;
  }

  v5[0] = v3;
  v5[1] = v4;
  if (*(&v4 + 1))
  {
    if (swift_dynamicCast())
    {
      LODWORD(result) = v2;
      return result;
    }
  }

  else
  {
    sub_18B012FDC(v5);
  }

  return 0.0;
}

float sub_18B0E8520()
{
  if ([v0 propertyForKey_])
  {
    sub_18B0F52A0();
    swift_unknownObjectRelease();
  }

  else
  {
    v3 = 0u;
    v4 = 0u;
  }

  v5[0] = v3;
  v5[1] = v4;
  if (*(&v4 + 1))
  {
    if (swift_dynamicCast())
    {
      return v2;
    }
  }

  else
  {
    sub_18B012FDC(v5);
  }

  return 1.0;
}

void sub_18B0E8644()
{
  v1 = v0;
  v2 = [v0 slider];
  [v2 setTranslatesAutoresizingMaskIntoConstraints_];

  v3 = [v1 contentView];
  v4 = [v1 slider];
  [v3 addSubview_];

  v31 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B2B80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_18B105630;
  v6 = [v1 slider];
  v7 = [v6 leadingAnchor];

  v8 = [v1 contentView];
  v9 = [v8 layoutMarginsGuide];

  v10 = [v9 leadingAnchor];
  v11 = [v7 constraintEqualToAnchor_];

  *(v5 + 32) = v11;
  v12 = [v1 slider];
  v13 = [v12 trailingAnchor];

  v14 = [v1 contentView];
  v15 = [v14 layoutMarginsGuide];

  v16 = [v15 trailingAnchor];
  v17 = [v13 constraintEqualToAnchor_];

  *(v5 + 40) = v17;
  v18 = [v1 slider];
  v19 = [v18 topAnchor];

  v20 = [v1 contentView];
  v21 = [v20 topAnchor];

  v22 = [v19 constraintLessThanOrEqualToSystemSpacingBelowAnchor:v21 multiplier:1.0];
  *(v5 + 48) = v22;
  v23 = [v1 contentView];
  v24 = [v23 bottomAnchor];

  v25 = [v1 slider];
  v26 = [v25 bottomAnchor];

  v27 = [v24 constraintLessThanOrEqualToSystemSpacingBelowAnchor:v26 multiplier:1.0];
  *(v5 + 56) = v27;
  sub_18B013450(0, &qword_1EA9B0DD8);
  v28 = sub_18B0F51E0();

  [v31 activateConstraints_];

  sub_18B013450(0, &unk_1EA9B0DB0);
  v29 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v30 = sub_18B0F5270();
  v32 = [v1 slider];
  [v32 addAction:v30 forControlEvents:4096];
}

void sub_18B0E8ADC(void *a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    if ([a1 sender])
    {
      sub_18B0F52A0();
      swift_unknownObjectRelease();
    }

    else
    {
      v8 = 0u;
      v9 = 0u;
    }

    v10[0] = v8;
    v10[1] = v9;
    if (*(&v9 + 1))
    {
      sub_18B013450(0, &unk_1EA9B2B88);
      if (swift_dynamicCast())
      {
        v4 = [v3 specifier];
        if (v4)
        {
          v5 = v4;
          if ([v4 hasValidSetter])
          {
            [v7 value];
            v6 = sub_18B0F5210();
            [v5 performSetterWithValue_];
          }

          else
          {
          }
        }

        else
        {
        }
      }

      else
      {
      }
    }

    else
    {

      sub_18B012FDC(v10);
    }
  }
}

Swift::Void __swiftcall PSSpecifierSliderConfigurationCell.prepareForReuse()()
{
  v1 = [v0 specifier];
  if (v1)
  {
    v2 = v1;
    [v1 removePropertyForKey_];
  }

  v10.receiver = v0;
  v10.super_class = PSSpecifierSliderConfigurationCell;
  objc_msgSendSuper2(&v10, sel_prepareForReuse);
  v3 = [v0 slider];
  [v3 setContinuous_];

  v4 = [v0 slider];
  [v4 setMinimumValue_];

  v5 = [v0 slider];
  LODWORD(v6) = 1.0;
  [v5 setMaximumValue_];

  v7 = [v0 slider];
  [v7 setMinimumValueImage_];

  v8 = [v0 slider];
  [v8 setMaximumValueImage_];

  v9 = [v0 slider];
  [v9 _setSliderConfiguration_];

  sub_18B0EDD88();
}

void PSSpecifierSliderConfigurationCell.controlValue()(uint64_t a1@<X8>)
{
  v3 = [v1 slider];
  [v3 value];
  v5 = v4;

  *(a1 + 24) = MEMORY[0x1E69E6448];
  *a1 = v5;
}

void PSSpecifierSliderConfigurationCell.setValue(_:)(uint64_t a1)
{
  sub_18B012F6C(a1, v8);
  if (v9)
  {
    if (swift_dynamicCast())
    {
      v2 = [v1 slider];
      [v2 value];
      v4 = v3;

      if (v7 != v4)
      {
        v5 = [v1 slider];
        *&v6 = v7;
        [v5 setValue_];
      }
    }
  }

  else
  {
    sub_18B012FDC(v8);
  }
}

void __swiftcall PSSpecifierSliderConfigurationCell.init(style:reuseIdentifier:specifier:)(PSSpecifierSliderConfigurationCell_optional *__return_ptr retstr, UITableViewCellStyle style, Swift::String_optional reuseIdentifier, PSSpecifier_optional *specifier)
{
  if (reuseIdentifier.value._object)
  {
    v6 = sub_18B0F5180();
  }

  else
  {
    v6 = 0;
  }

  [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithStyle:style reuseIdentifier:v6 specifier:specifier];
}

uint64_t sub_18B0E91D8()
{
  if ([v0 propertyForKey_])
  {
    sub_18B0F52A0();
    swift_unknownObjectRelease();
  }

  else
  {
    v3 = 0u;
    v4 = 0u;
  }

  v5[0] = v3;
  v5[1] = v4;
  if (*(&v4 + 1))
  {
    if (swift_dynamicCast())
    {
      return v2;
    }
  }

  else
  {
    sub_18B012FDC(v5);
  }

  return 1;
}

uint64_t sub_18B0E9290(void *a1)
{
  if ([v1 propertyForKey_])
  {
    sub_18B0F52A0();
    swift_unknownObjectRelease();
  }

  else
  {
    v4 = 0u;
    v5 = 0u;
  }

  v6[0] = v4;
  v6[1] = v5;
  if (*(&v5 + 1))
  {
    result = swift_dynamicCast();
    if (result)
    {
      return v3;
    }
  }

  else
  {
    sub_18B012FDC(v6);
    return 0;
  }

  return result;
}

void sub_18B0E936C(void *a1)
{
  if (a1)
  {
    v2 = a1;
    v3 = [v2 identifier];
    [v1 setAccessibilityIdentifier_];

    [v1 setType_];
    [v1 setTag_];
    [v1 setSelectionStyle_];
    [v1 setAccessoryType_];
    v4[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B2BA0);
    v4[4] = sub_18B0DE9C0(&qword_1EA9B0E90, &qword_1EA9B2BA0);
    __swift_allocate_boxed_opaque_existential_1(v4);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B2BA8);
    sub_18B0E9624();
    sub_18B0F4F30();
    MEMORY[0x18CFEE4A0](v4);
  }
}

__n128 sub_18B0E94E8@<Q0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B2BB0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = v9 - v3;
  *v4 = sub_18B0F4E40();
  *(v4 + 1) = 0;
  v4[16] = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B2BB8);
  sub_18B0F4D00();
  sub_18B0F5110();
  sub_18B0F4D70();
  sub_18B0E9C4C(v4, a1);
  v5 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B2BA8) + 36);
  v6 = v9[5];
  *(v5 + 64) = v9[4];
  *(v5 + 80) = v6;
  *(v5 + 96) = v9[6];
  v7 = v9[1];
  *v5 = v9[0];
  *(v5 + 16) = v7;
  result = v9[3];
  *(v5 + 32) = v9[2];
  *(v5 + 48) = result;
  return result;
}

unint64_t sub_18B0E9624()
{
  result = qword_1EA9B0F10;
  if (!qword_1EA9B0F10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA9B2BA8);
    sub_18B0DE9C0(&qword_1EA9B0E38, &qword_1EA9B2BB0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9B0F10);
  }

  return result;
}

id PSSpecifierSpinnerContentConfigurationCell.__allocating_init(style:reuseIdentifier:specifier:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = v4;
  if (a3)
  {
    v8 = sub_18B0F5180();
  }

  else
  {
    v8 = 0;
  }

  v9 = [objc_allocWithZone(v5) initWithStyle:a1 reuseIdentifier:v8 specifier:a4];

  return v9;
}

id PSSpecifierSpinnerContentConfigurationCell.init(style:reuseIdentifier:specifier:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (a3)
  {
    v7 = sub_18B0F5180();
  }

  else
  {
    v7 = 0;
  }

  v10.receiver = v4;
  v10.super_class = type metadata accessor for PSSpecifierSpinnerContentConfigurationCell();
  v8 = objc_msgSendSuper2(&v10, sel_initWithStyle_reuseIdentifier_specifier_, a1, v7, a4);

  if (v8)
  {
  }

  return v8;
}

id PSSpecifierSpinnerContentConfigurationCell.__allocating_init(style:reuseIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (a3)
  {
    v6 = sub_18B0F5180();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithStyle:a1 reuseIdentifier:v6];

  return v7;
}

id PSSpecifierSpinnerContentConfigurationCell.init(style:reuseIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v5 = sub_18B0F5180();
  }

  else
  {
    v5 = 0;
  }

  v8.receiver = v3;
  v8.super_class = type metadata accessor for PSSpecifierSpinnerContentConfigurationCell();
  v6 = objc_msgSendSuper2(&v8, sel_initWithStyle_reuseIdentifier_, a1, v5);

  return v6;
}

id PSSpecifierSpinnerContentConfigurationCell.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id PSSpecifierSpinnerContentConfigurationCell.init(coder:)(void *a1)
{
  v5.receiver = v1;
  v5.super_class = type metadata accessor for PSSpecifierSpinnerContentConfigurationCell();
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

id PSSpecifierSpinnerContentConfigurationCell.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PSSpecifierSpinnerContentConfigurationCell();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_18B0E9C4C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B2BB0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_18B0E9CCC(void *a1)
{
  if (a1)
  {
    v2 = v1;
    v3 = a1;
    v4 = [v3 identifier];
    [v2 setAccessibilityIdentifier_];

    [v2 setType_];
    [v2 setTag_];
    v5 = [v3 cellType];
    if ((v5 - 1) > 0xC)
    {
      v6 = 0;
    }

    else
    {
      v6 = qword_18B105728[(v5 - 1)];
    }

    [v2 setSelectionStyle_];
    [v2 _updateAccessoryTypeForSpecifier_];
    v7 = [v3 values];
    if (v7)
    {
    }

    else
    {
      [v3 loadValuesAndTitlesFromDataSource];
    }

    v8 = OBJC_IVAR____TtC11Preferences43PSSpecifierSubtitleContentConfigurationCell_subtitleContentModel;
    if (*&v2[OBJC_IVAR____TtC11Preferences43PSSpecifierSubtitleContentConfigurationCell_subtitleContentModel])
    {
      [objc_opt_self() areAnimationsEnabled];
      swift_allocObject();
      v9 = swift_unknownObjectWeakInit();
      MEMORY[0x1EEE9AC00](v9);
      v13[0] = 0;
      sub_18B0F4CE0();
      sub_18B0F4D60();
    }

    else
    {
      type metadata accessor for PSSpecifierSubtitleContentViewModel();
      swift_allocObject();
      v10 = v3;
      v11 = sub_18B0DFB88(v10);

      *&v2[v8] = v11;

      MEMORY[0x1EEE9AC00](v12);
      v13[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B2BC8);
      v13[4] = sub_18B0EA6A0();
      __swift_allocate_boxed_opaque_existential_1(v13);
      sub_18B0E3E88();
      sub_18B0F4F30();
      MEMORY[0x18CFEE4A0](v13);
    }

    [v2 setIsCopyable_];
    sub_18B0EDA98(v3);
  }
}

uint64_t sub_18B0E9FD4@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  if (*(result + OBJC_IVAR____TtC11Preferences43PSSpecifierSubtitleContentConfigurationCell_subtitleContentModel))
  {
    type metadata accessor for PSSpecifierSubtitleContentViewModel();

    result = sub_18B0F50B0();
    *a2 = v3;
    a2[1] = v4;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_18B0EA048(uint64_t a1, void *a2)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v4 = result;
    if (*(result + OBJC_IVAR____TtC11Preferences43PSSpecifierSubtitleContentConfigurationCell_subtitleContentModel))
    {

      sub_18B0DF6BC(a2);
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

id PSSpecifierSubtitleContentConfigurationCell.__allocating_init(style:reuseIdentifier:specifier:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = v4;
  if (a3)
  {
    v8 = sub_18B0F5180();
  }

  else
  {
    v8 = 0;
  }

  v9 = [objc_allocWithZone(v5) initWithStyle:a1 reuseIdentifier:v8 specifier:a4];

  return v9;
}

id PSSpecifierSubtitleContentConfigurationCell.init(style:reuseIdentifier:specifier:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  *&v4[OBJC_IVAR____TtC11Preferences43PSSpecifierSubtitleContentConfigurationCell_subtitleContentModel] = 0;
  if (a3)
  {
    v7 = sub_18B0F5180();
  }

  else
  {
    v7 = 0;
  }

  v10.receiver = v4;
  v10.super_class = type metadata accessor for PSSpecifierSubtitleContentConfigurationCell();
  v8 = objc_msgSendSuper2(&v10, sel_initWithStyle_reuseIdentifier_specifier_, a1, v7, a4);

  if (v8)
  {
  }

  return v8;
}

id PSSpecifierSubtitleContentConfigurationCell.__allocating_init(style:reuseIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (a3)
  {
    v6 = sub_18B0F5180();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithStyle:a1 reuseIdentifier:v6];

  return v7;
}

id PSSpecifierSubtitleContentConfigurationCell.init(style:reuseIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *&v3[OBJC_IVAR____TtC11Preferences43PSSpecifierSubtitleContentConfigurationCell_subtitleContentModel] = 0;
  if (a3)
  {
    v5 = sub_18B0F5180();
  }

  else
  {
    v5 = 0;
  }

  v8.receiver = v3;
  v8.super_class = type metadata accessor for PSSpecifierSubtitleContentConfigurationCell();
  v6 = objc_msgSendSuper2(&v8, sel_initWithStyle_reuseIdentifier_, a1, v5);

  return v6;
}

id PSSpecifierSubtitleContentConfigurationCell.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id PSSpecifierSubtitleContentConfigurationCell.init(coder:)(void *a1)
{
  *&v1[OBJC_IVAR____TtC11Preferences43PSSpecifierSubtitleContentConfigurationCell_subtitleContentModel] = 0;
  v5.receiver = v1;
  v5.super_class = type metadata accessor for PSSpecifierSubtitleContentConfigurationCell();
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

id PSSpecifierSubtitleContentConfigurationCell.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PSSpecifierSubtitleContentConfigurationCell();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_18B0EA6A0()
{
  result = qword_1EA9B2BD0;
  if (!qword_1EA9B2BD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA9B2BC8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9B2BD0);
  }

  return result;
}

uint64_t sub_18B0EA75C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_18B0E2C20();
  sub_18B0F4C10();

  v4 = *(v3 + OBJC_IVAR____TtC11Preferences43PSSpecifierSubtitleWitValueContentViewModel__valueText + 8);
  *a2 = *(v3 + OBJC_IVAR____TtC11Preferences43PSSpecifierSubtitleWitValueContentViewModel__valueText);
  a2[1] = v4;
}

uint64_t sub_18B0EA7E4(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return sub_18B0E1D8C(v1, v2);
}

void sub_18B0EA834(void *a1)
{
  v2 = v1;
  v4 = sub_18B0F4C90();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_18B0F4CC0();
  v30 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a1)
  {
    return;
  }

  v11 = a1;
  v12 = [v11 identifier];
  [v2 setAccessibilityIdentifier_];

  [v2 setType_];
  [v2 setTag_];
  v13 = [v11 cellType];
  if ((v13 - 1) > 0xC)
  {
    v14 = 0;
  }

  else
  {
    v14 = qword_18B105810[(v13 - 1)];
  }

  [v2 setSelectionStyle_];
  [v2 _updateAccessoryTypeForSpecifier_];
  v15 = [v11 values];
  v28 = v7;
  v29 = v10;
  if (v15)
  {
  }

  else
  {
    [v11 loadValuesAndTitlesFromDataSource];
  }

  v16 = OBJC_IVAR____TtC11Preferences52PSSpecifierSubtitleWithValueContentConfigurationCell_subtitleWithValueContentModel;
  if (!*&v2[OBJC_IVAR____TtC11Preferences52PSSpecifierSubtitleWithValueContentConfigurationCell_subtitleWithValueContentModel])
  {
    type metadata accessor for PSSpecifierSubtitleWitValueContentViewModel();
    swift_allocObject();
    *&v2[v16] = sub_18B0E2254(v11);

    MEMORY[0x1EEE9AC00](v22);
    *(&v27 - 2) = v2;
    v31[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B2BE0);
    v31[4] = sub_18B0EB480();
    __swift_allocate_boxed_opaque_existential_1(v31);
    sub_18B0EB4E4();
    sub_18B0F4F30();
    MEMORY[0x18CFEE4A0](v31);
    v19 = *&v2[v16];
    if (v19)
    {
      goto LABEL_10;
    }

LABEL_13:

    return;
  }

  [objc_opt_self() areAnimationsEnabled];
  v17 = swift_allocObject();
  v18 = swift_unknownObjectWeakInit();
  v27 = v5;
  MEMORY[0x1EEE9AC00](v18);
  *(&v27 - 2) = v17;
  *(&v27 - 1) = v11;
  v31[0] = 0;
  sub_18B0F4CE0();
  sub_18B0F4D60();

  v5 = v27;
  v19 = *&v2[v16];
  if (!v19)
  {
    goto LABEL_13;
  }

LABEL_10:

  v20 = v29;
  sub_18B0F4CB0();
  swift_getKeyPath();
  v31[0] = v19;
  sub_18B0E2C20();
  sub_18B0F4C10();

  if (*(v19 + OBJC_IVAR____TtC11Preferences43PSSpecifierSubtitleWitValueContentViewModel__valueText + 8))
  {

    v21 = sub_18B0F5180();
  }

  else
  {
    v21 = 0;
  }

  [v2 _setBadgeText_];

  v23 = v28;
  sub_18B0F4CA0();
  v24 = sub_18B0F4C80();
  v25 = *(v5 + 8);
  v25(v23, v4);
  [v2 _setBadgeColor_];

  [v2 _setBadgeBackgroundColor_];
  sub_18B0F4CA0();
  v26 = sub_18B0F4C70();
  v25(v23, v4);
  [v2 _setBadgeFont_];

  (*(v30 + 8))(v20, v8);
}

uint64_t sub_18B0EADB4@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  if (*(result + OBJC_IVAR____TtC11Preferences52PSSpecifierSubtitleWithValueContentConfigurationCell_subtitleWithValueContentModel))
  {
    type metadata accessor for PSSpecifierSubtitleWitValueContentViewModel();

    result = sub_18B0F50B0();
    *a2 = v3;
    a2[1] = v4;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_18B0EAE28(uint64_t a1, void *a2)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v4 = result;
    if (*(result + OBJC_IVAR____TtC11Preferences52PSSpecifierSubtitleWithValueContentConfigurationCell_subtitleWithValueContentModel))
    {

      sub_18B0E2008(a2);
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

id PSSpecifierSubtitleWithValueContentConfigurationCell.__allocating_init(style:reuseIdentifier:specifier:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = v4;
  if (a3)
  {
    v8 = sub_18B0F5180();
  }

  else
  {
    v8 = 0;
  }

  v9 = [objc_allocWithZone(v5) initWithStyle:a1 reuseIdentifier:v8 specifier:a4];

  return v9;
}

id PSSpecifierSubtitleWithValueContentConfigurationCell.init(style:reuseIdentifier:specifier:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  *&v4[OBJC_IVAR____TtC11Preferences52PSSpecifierSubtitleWithValueContentConfigurationCell_subtitleWithValueContentModel] = 0;
  if (a3)
  {
    v7 = sub_18B0F5180();
  }

  else
  {
    v7 = 0;
  }

  v10.receiver = v4;
  v10.super_class = type metadata accessor for PSSpecifierSubtitleWithValueContentConfigurationCell();
  v8 = objc_msgSendSuper2(&v10, sel_initWithStyle_reuseIdentifier_specifier_, a1, v7, a4);

  if (v8)
  {
  }

  return v8;
}

id PSSpecifierSubtitleWithValueContentConfigurationCell.__allocating_init(style:reuseIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (a3)
  {
    v6 = sub_18B0F5180();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithStyle:a1 reuseIdentifier:v6];

  return v7;
}

id PSSpecifierSubtitleWithValueContentConfigurationCell.init(style:reuseIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *&v3[OBJC_IVAR____TtC11Preferences52PSSpecifierSubtitleWithValueContentConfigurationCell_subtitleWithValueContentModel] = 0;
  if (a3)
  {
    v5 = sub_18B0F5180();
  }

  else
  {
    v5 = 0;
  }

  v8.receiver = v3;
  v8.super_class = type metadata accessor for PSSpecifierSubtitleWithValueContentConfigurationCell();
  v6 = objc_msgSendSuper2(&v8, sel_initWithStyle_reuseIdentifier_, a1, v5);

  return v6;
}

id PSSpecifierSubtitleWithValueContentConfigurationCell.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id PSSpecifierSubtitleWithValueContentConfigurationCell.init(coder:)(void *a1)
{
  *&v1[OBJC_IVAR____TtC11Preferences52PSSpecifierSubtitleWithValueContentConfigurationCell_subtitleWithValueContentModel] = 0;
  v5.receiver = v1;
  v5.super_class = type metadata accessor for PSSpecifierSubtitleWithValueContentConfigurationCell();
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

id PSSpecifierSubtitleWithValueContentConfigurationCell.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PSSpecifierSubtitleWithValueContentConfigurationCell();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_18B0EB480()
{
  result = qword_1EA9B2BE8;
  if (!qword_1EA9B2BE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA9B2BE0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9B2BE8);
  }

  return result;
}

unint64_t sub_18B0EB4E4()
{
  result = qword_1EA9B2BF0;
  if (!qword_1EA9B2BF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9B2BF0);
  }

  return result;
}

uint64_t sub_18B0EB5A0(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B2BF8);
  v5 = *(v4 - 8);
  result = MEMORY[0x1EEE9AC00](v4);
  v8 = v12 - v7;
  if (a1)
  {
    v9 = a1;
    v10 = [v9 identifier];
    [v2 setAccessibilityIdentifier_];

    [v2 setType_];
    [v2 setTag_];
    v11 = [v9 target];
    if (v11)
    {
      v12[2] = &unk_1EFEC6670;
      v11 = swift_dynamicCastObjCProtocolConditional();
      if (!v11)
      {
        swift_unknownObjectRelease();
        v11 = 0;
      }
    }

    v12[1] = v11;
    v12[-2] = MEMORY[0x1EEE9AC00](v11);
    v12[-1] = v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B2C00);
    sub_18B0DE9C0(&qword_1EA9B2C08, &qword_1EA9B2C00);
    sub_18B0F4F30();
    sub_18B0F4F70();
    v13[3] = v4;
    v13[4] = sub_18B0DE9C0(&qword_1EA9B2C10, &qword_1EA9B2BF8);
    __swift_allocate_boxed_opaque_existential_1(v13);
    sub_18B0F4F20();
    (*(v5 + 8))(v8, v4);
    MEMORY[0x18CFEE4A0](v13);
    [v2 _updateAccessoryTypeForSpecifier_];

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_18B0EB874@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v24 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B2C18);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v7);
  v12 = &v23 - v11;
  v13 = MEMORY[0x1EEE9AC00](v10);
  v15 = &v23 - v14;
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v23 - v16;
  v27 = a1;
  v28 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9B2730);
  sub_18B0152B8();
  sub_18B0F4D20();
  v25 = a1;
  v26 = a2;
  sub_18B0F4D20();
  v18 = *(v6 + 16);
  v18(v12, v17, v5);
  v18(v9, v15, v5);
  v19 = v24;
  v18(v24, v12, v5);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B2C20);
  v18(&v19[*(v20 + 48)], v9, v5);
  v21 = *(v6 + 8);
  v21(v15, v5);
  v21(v17, v5);
  v21(v9, v5);
  return (v21)(v12, v5);
}

uint64_t sub_18B0EBB60@<X0>(void *a1@<X0>, uint64_t a2@<X1>, SEL *a3@<X2>, uint64_t *a4@<X8>)
{
  v8 = sub_18B0F4D40();
  v9 = *(v8 - 8);
  result = MEMORY[0x1EEE9AC00](v8);
  v12 = v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a1)
  {
    v23 = 0;
    goto LABEL_7;
  }

  result = [a1 respondsToSelector_];
  if ((result & 1) == 0 || (result = [a1 *a3]) == 0)
  {
    v23 = 0;
    a1 = 0;
LABEL_7:
    v28 = 0;
    v27 = 0;
    goto LABEL_8;
  }

  v13 = result;
  v14 = sub_18B0F51B0();
  v16 = v15;

  v31 = v14;
  v32 = v16;
  sub_18B015D34();
  v17 = sub_18B0F4FC0();
  v19 = v18;
  v21 = v20;
  v29[1] = v22;
  sub_18B0F4D30();
  v23 = sub_18B0F4FA0();
  a1 = v24;
  v30 = v25;
  v27 = v26;
  sub_18B0DEB1C(v17, v19, v21 & 1);

  result = (*(v9 + 8))(v12, v8);
  v28 = v30 & 1;
LABEL_8:
  *a4 = v23;
  a4[1] = a1;
  a4[2] = v28;
  a4[3] = v27;
  return result;
}

uint64_t sub_18B0EBD4C@<X0>(uint64_t a1@<X8>)
{
  sub_18B0F4E00();
  v2 = PSPreferencesFrameworkBundle();
  result = sub_18B0F4FB0();
  *a1 = result;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5 & 1;
  *(a1 + 24) = v6;
  return result;
}

id PSSpecifierTimeRangeContentConfigurationCell.__allocating_init(style:reuseIdentifier:specifier:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = v4;
  if (a3)
  {
    v8 = sub_18B0F5180();
  }

  else
  {
    v8 = 0;
  }

  v9 = [objc_allocWithZone(v5) initWithStyle:a1 reuseIdentifier:v8 specifier:a4];

  return v9;
}

id PSSpecifierTimeRangeContentConfigurationCell.init(style:reuseIdentifier:specifier:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (a3)
  {
    v7 = sub_18B0F5180();
  }

  else
  {
    v7 = 0;
  }

  v10.receiver = v4;
  v10.super_class = type metadata accessor for PSSpecifierTimeRangeContentConfigurationCell();
  v8 = objc_msgSendSuper2(&v10, sel_initWithStyle_reuseIdentifier_specifier_, a1, v7, a4);

  if (v8)
  {
  }

  return v8;
}

id PSSpecifierTimeRangeContentConfigurationCell.__allocating_init(style:reuseIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (a3)
  {
    v6 = sub_18B0F5180();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithStyle:a1 reuseIdentifier:v6];

  return v7;
}

id PSSpecifierTimeRangeContentConfigurationCell.init(style:reuseIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v5 = sub_18B0F5180();
  }

  else
  {
    v5 = 0;
  }

  v8.receiver = v3;
  v8.super_class = type metadata accessor for PSSpecifierTimeRangeContentConfigurationCell();
  v6 = objc_msgSendSuper2(&v8, sel_initWithStyle_reuseIdentifier_, a1, v5);

  return v6;
}

id PSSpecifierTimeRangeContentConfigurationCell.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id PSSpecifierTimeRangeContentConfigurationCell.init(coder:)(void *a1)
{
  v5.receiver = v1;
  v5.super_class = type metadata accessor for PSSpecifierTimeRangeContentConfigurationCell();
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

id PSSpecifierTimeRangeContentConfigurationCell.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PSSpecifierTimeRangeContentConfigurationCell();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_18B0EC39C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_18B0ECB34();
  sub_18B0F4C10();

  *a2 = *(v3 + 16);
  return result;
}

void sub_18B0EC44C(void *a1)
{
  if (a1)
  {
    v2 = v1;
    v3 = a1;
    v4 = [v3 identifier];
    [v2 setAccessibilityIdentifier_];

    [v2 setType_];
    [v2 setTag_];
    [v2 setSelectionStyle_];
    [v2 setAccessoryType_];
    v5 = OBJC_IVAR____TtC11Preferences41PSSpecifierToggleContentConfigurationCell_toggleContentViewModel;
    if (*&v2[OBJC_IVAR____TtC11Preferences41PSSpecifierToggleContentConfigurationCell_toggleContentViewModel])
    {
      [objc_opt_self() areAnimationsEnabled];
      swift_allocObject();
      v6 = swift_unknownObjectWeakInit();
      MEMORY[0x1EEE9AC00](v6);
      v9[0] = 0;
      sub_18B0F4CE0();
      sub_18B0F4D60();
    }

    else
    {
      type metadata accessor for PSSpecifierToggleContentViewModel();
      swift_allocObject();
      v7 = v3;
      *&v2[v5] = sub_18B0E5144(v7);

      MEMORY[0x1EEE9AC00](v8);
      v9[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B2C30);
      v9[4] = sub_18B0EC74C();
      __swift_allocate_boxed_opaque_existential_1(v9);
      sub_18B0EC7B0();
      sub_18B0F4F30();
      MEMORY[0x18CFEE4A0](v9);
    }
  }
}

uint64_t sub_18B0EC6D0@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  if (*(result + OBJC_IVAR____TtC11Preferences41PSSpecifierToggleContentConfigurationCell_toggleContentViewModel))
  {
    type metadata accessor for PSSpecifierToggleContentViewModel();

    result = sub_18B0F50B0();
    *a2 = v3;
    a2[1] = v4;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_18B0EC74C()
{
  result = qword_1EA9B0EA8;
  if (!qword_1EA9B0EA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA9B2C30);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9B0EA8);
  }

  return result;
}

unint64_t sub_18B0EC7B0()
{
  result = qword_1EA9B1080;
  if (!qword_1EA9B1080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9B1080);
  }

  return result;
}

uint64_t sub_18B0EC804(uint64_t a1, void *a2)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v4 = result;
    if (*(result + OBJC_IVAR____TtC11Preferences41PSSpecifierToggleContentConfigurationCell_toggleContentViewModel))
    {

      sub_18B0E4D38(a2);
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_18B0EC9B4(uint64_t a1)
{
  sub_18B012F6C(a1, v6);
  if (!v6[3])
  {
    return sub_18B012FDC(v6);
  }

  result = swift_dynamicCast();
  if (result)
  {
    v3 = *(v1 + OBJC_IVAR____TtC11Preferences41PSSpecifierToggleContentConfigurationCell_toggleContentViewModel);
    if (v3)
    {
      swift_getKeyPath();
      v6[0] = v3;
      sub_18B0ECB34();

      sub_18B0F4C10();

      if (v5 != *(v3 + 16))
      {
        KeyPath = swift_getKeyPath();
        MEMORY[0x1EEE9AC00](KeyPath);
        v6[0] = v3;
        sub_18B0F4C00();
      }
    }
  }

  return result;
}

unint64_t sub_18B0ECB34()
{
  result = qword_1EA9B1038;
  if (!qword_1EA9B1038)
  {
    type metadata accessor for PSSpecifierToggleContentViewModel();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9B1038);
  }

  return result;
}

uint64_t sub_18B0ECC1C@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + OBJC_IVAR____TtC11Preferences41PSSpecifierToggleContentConfigurationCell_toggleContentViewModel);
  if (v3)
  {
    swift_getKeyPath();
    sub_18B0ECB34();

    sub_18B0F4C10();

    v4 = *(v3 + 16);
  }

  else
  {
    v4 = 0;
  }

  *(a1 + 24) = MEMORY[0x1E69E6370];
  *a1 = v4;
  return result;
}

id PSSpecifierToggleContentConfigurationCell.__allocating_init(style:reuseIdentifier:specifier:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = v4;
  if (a3)
  {
    v8 = sub_18B0F5180();
  }

  else
  {
    v8 = 0;
  }

  v9 = [objc_allocWithZone(v5) initWithStyle:a1 reuseIdentifier:v8 specifier:a4];

  return v9;
}

id PSSpecifierToggleContentConfigurationCell.init(style:reuseIdentifier:specifier:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  *&v4[OBJC_IVAR____TtC11Preferences41PSSpecifierToggleContentConfigurationCell_toggleContentViewModel] = 0;
  if (a3)
  {
    v7 = sub_18B0F5180();
  }

  else
  {
    v7 = 0;
  }

  v10.receiver = v4;
  v10.super_class = type metadata accessor for PSSpecifierToggleContentConfigurationCell();
  v8 = objc_msgSendSuper2(&v10, sel_initWithStyle_reuseIdentifier_specifier_, a1, v7, a4);

  if (v8)
  {
  }

  return v8;
}

id PSSpecifierToggleContentConfigurationCell.__allocating_init(style:reuseIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (a3)
  {
    v6 = sub_18B0F5180();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithStyle:a1 reuseIdentifier:v6];

  return v7;
}

id PSSpecifierToggleContentConfigurationCell.init(style:reuseIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *&v3[OBJC_IVAR____TtC11Preferences41PSSpecifierToggleContentConfigurationCell_toggleContentViewModel] = 0;
  if (a3)
  {
    v5 = sub_18B0F5180();
  }

  else
  {
    v5 = 0;
  }

  v8.receiver = v3;
  v8.super_class = type metadata accessor for PSSpecifierToggleContentConfigurationCell();
  v6 = objc_msgSendSuper2(&v8, sel_initWithStyle_reuseIdentifier_, a1, v5);

  return v6;
}

id PSSpecifierToggleContentConfigurationCell.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id PSSpecifierToggleContentConfigurationCell.init(coder:)(void *a1)
{
  *&v1[OBJC_IVAR____TtC11Preferences41PSSpecifierToggleContentConfigurationCell_toggleContentViewModel] = 0;
  v5.receiver = v1;
  v5.super_class = type metadata accessor for PSSpecifierToggleContentConfigurationCell();
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

id PSSpecifierToggleContentConfigurationCell.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PSSpecifierToggleContentConfigurationCell();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void *__swift_project_boxed_opaque_existential_0(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t __swift_destroy_boxed_opaque_existential_0(uint64_t a1)
{
  v1 = *(*(a1 + 24) - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

void sub_18B0ED3E8()
{
  if ([v0 propertyForKey_])
  {
    sub_18B0F52A0();
    swift_unknownObjectRelease();
  }

  else
  {
    v3 = 0u;
    v4 = 0u;
  }

  v5 = v3;
  v6 = v4;
  if (*(&v4 + 1))
  {
    if (swift_dynamicCast())
    {
      return;
    }
  }

  else
  {
    sub_18B0DEA24(&v5, &qword_1EA9B29F8);
  }

  if ([v0 propertyForKey_])
  {
    sub_18B0F52A0();
    swift_unknownObjectRelease();
  }

  else
  {
    v3 = 0u;
    v4 = 0u;
  }

  v5 = v3;
  v6 = v4;
  if (!*(&v4 + 1))
  {
    goto LABEL_16;
  }

  sub_18B013450(0, &qword_1EA9B2A90);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_17:
    if ([v0 propertyForKey_])
    {
      sub_18B0F52A0();
      swift_unknownObjectRelease();
    }

    else
    {
      v3 = 0u;
      v4 = 0u;
    }

    v5 = v3;
    v6 = v4;
    if (*(&v4 + 1))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B2A00);
      if (swift_dynamicCast())
      {
        sub_18B013450(0, &qword_1EA9B0DD0);
      }
    }

    else
    {
      sub_18B0DEA24(&v5, &qword_1EA9B29F8);
    }

    return;
  }

  v0 = v2;
  v1 = [v2 integerValue];

  if ((v1 & 0x8000000000000000) != 0)
  {
    __break(1u);
    return;
  }

  if (HIDWORD(v1))
  {
    __break(1u);
LABEL_16:
    sub_18B0DEA24(&v5, &qword_1EA9B29F8);
    goto LABEL_17;
  }
}

id sub_18B0ED650()
{
  if ([v0 propertyForKey_])
  {
    sub_18B0F52A0();
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
  }

  else
  {
    sub_18B0DEA24(v7, &qword_1EA9B29F8);
  }

  result = [v0 displayStringForCurrentValue];
  if (result)
  {
    v2 = result;
    v3 = sub_18B0F51B0();

    return v3;
  }

  return result;
}

uint64_t sub_18B0ED75C@<X0>(void *a1@<X8>)
{
  if ([v1 propertyForKey_])
  {
    sub_18B0F52A0();
    swift_unknownObjectRelease();
  }

  else
  {
    v7 = 0u;
    v8 = 0u;
  }

  v9[0] = v7;
  v9[1] = v8;
  if (*(&v8 + 1))
  {
    sub_18B013450(0, &qword_1EA9B0DC0);
    if (swift_dynamicCast())
    {
      *a1 = v6;
      v3 = _s9ImageTypeOMa();
      swift_storeEnumTagMultiPayload();
      return (*(*(v3 - 8) + 56))(a1, 0, 1, v3);
    }
  }

  else
  {
    sub_18B0DEA24(v9, &qword_1EA9B29F8);
  }

  v5 = _s9ImageTypeOMa();
  return (*(*(v5 - 8) + 56))(a1, 1, 1, v5);
}

uint64_t sub_18B0ED8C4()
{
  v1 = sub_18B0F5180();
  v2 = [v0 propertyForKey_];

  if (v2)
  {
    sub_18B0F52A0();
    swift_unknownObjectRelease();
  }

  else
  {
    v4 = 0u;
    v5 = 0u;
  }

  v6[0] = v4;
  v6[1] = v5;
  if (*(&v5 + 1))
  {
    sub_18B013450(0, &qword_1EA9B2C38);
    if (swift_dynamicCast())
    {
      return sub_18B0F5030();
    }
  }

  else
  {
    sub_18B0DEA24(v6, &qword_1EA9B29F8);
  }

  return sub_18B0F5050();
}

uint64_t sub_18B0ED9D0()
{
  if ([v0 propertyForKey_])
  {
    sub_18B0F52A0();
    swift_unknownObjectRelease();
  }

  else
  {
    v3 = 0u;
    v4 = 0u;
  }

  v5[0] = v3;
  v5[1] = v4;
  if (*(&v4 + 1))
  {
    if (swift_dynamicCast())
    {
      return v2;
    }
  }

  else
  {
    sub_18B0DEA24(v5, &qword_1EA9B29F8);
  }

  return 0;
}

void sub_18B0EDA98(void *a1)
{
  v2 = v1;
  v4 = sub_18B0F4BF0();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B2C40);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v14 - v7;
  if ([a1 propertyForKey_])
  {
    sub_18B0F52A0();
    swift_unknownObjectRelease();
  }

  else
  {
    v15 = 0u;
    v16 = 0u;
  }

  v17[0] = v15;
  v17[1] = v16;
  if (*(&v16 + 1))
  {
    if (swift_dynamicCast())
    {
      *&v15 = v14[1];
      sub_18B0F4BE0();
      sub_18B0EDEF8();
      sub_18B0F4B80();
      sub_18B0EDF4C();
      sub_18B0F5290();
      (*(v6 + 8))(v8, v5);
      v9 = sub_18B0F5180();

      [v1 _setBadgeText_];

      v10 = objc_opt_self();
      v11 = [v10 whiteColor];
      [v2 _setBadgeColor_];

      v12 = [v10 redColor];
      [v2 _setBadgeBackgroundColor_];

      v13 = [objc_opt_self() preferredFontForTextStyle_];
      [v2 _setBadgeFont_];
    }
  }

  else
  {
    sub_18B012FDC(v17);
  }
}

id sub_18B0EDD88()
{
  [v0 setCellEnabled_];
  [v0 setAccessoryType_];
  [v0 setAccessoryView_];
  v7 = 0;
  memset(v6, 0, sizeof(v6));
  MEMORY[0x18CFEE4A0](v6);
  v1 = [v0 specifier];
  if (v1)
  {
    v2 = v1;
    [v1 removePropertyForKey_];
  }

  v3 = [v0 specifier];
  if (v3)
  {
    v4 = v3;
    [v3 removePropertyForKey_];
  }

  [v0 setSpecifier_];
  [v0 setAccessibilityIdentifier_];
  [v0 _setBadgeText_];
  [v0 _setBadgeColor_];
  [v0 _setBadgeBackgroundColor_];

  return [v0 _setBadgeFont_];
}

unint64_t sub_18B0EDEF8()
{
  result = qword_1EA9B2C48;
  if (!qword_1EA9B2C48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9B2C48);
  }

  return result;
}

unint64_t sub_18B0EDF4C()
{
  result = qword_1EA9B2C50;
  if (!qword_1EA9B2C50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA9B2C40);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9B2C50);
  }

  return result;
}

void sub_18B0EE080()
{
  v1 = v0;
  v2 = *(v0 + OBJC_IVAR____PSViewMarkerLayer_labelAlignment);
  v3 = OBJC_IVAR____PSViewMarkerLayer_labels;
  swift_beginAccess();
  v4 = *(v1 + v3);
  if (*(v4 + 16))
  {
    v5 = sub_18B0F06C0(v2);
    if (v6)
    {
      v7 = (*(v4 + 56) + 32 * v5);
      v8 = *v7;
      v9 = v7[1];
      v10 = v7[2];
      v11 = v7[3];
      v12 = v9;
      v13 = v10;
      v14 = v11;
      v15 = v12;
      sub_18B0F1378(v8, v9, v10, v11);

      v16 = sub_18B0F5180();

      [v15 setString_];
    }
  }
}

id sub_18B0EE270()
{
  v1 = v0;
  v2 = *&v0[OBJC_IVAR____PSViewMarkerLayer_labelAlignment];
  v3 = OBJC_IVAR____PSViewMarkerLayer_labels;
  swift_beginAccess();
  v4 = *&v1[v3];
  if (*(v4 + 16))
  {
    v5 = sub_18B0F06C0(v2);
    if (v6)
    {
      v7 = (*(v4 + 56) + 32 * v5);
      v8 = *v7;
      v9 = v7[1];
      v10 = v7[2];
      v11 = v7[3];
      v12 = v9;
      v13 = v10;
      v14 = v11;
      v15 = v13;
      sub_18B0F1378(v8, v9, v10, v11);
      if (*&v1[OBJC_IVAR____PSViewMarkerLayer_subLabel + 8])
      {

        v16 = sub_18B0F5180();
      }

      else
      {
        v16 = 0;
      }

      [v15 setString_];

      swift_unknownObjectRelease();
    }
  }

  return [v1 layoutSublayers];
}

void sub_18B0EE41C()
{
  v1 = OBJC_IVAR____PSViewMarkerLayer_labels;
  swift_beginAccess();
  v2 = *&v0[v1];
  v3 = v2 + 64;
  v4 = 1 << *(v2 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(v2 + 64);
  v28 = OBJC_IVAR____PSViewMarkerLayer_alternateColor;
  v7 = (v4 + 63) >> 6;
  swift_bridgeObjectRetain_n();
  v8 = 0;
  v9 = &selRef_setAdjustsFontSizeToFitWidth_;
  while (v6)
  {
LABEL_12:
    v17 = (*(v2 + 56) + ((v8 << 11) | (32 * __clz(__rbit64(v6)))));
    v18 = v17[1];
    v19 = v17[2];
    v20 = v17[3];
    v21 = *&v0[v28];
    v29 = v19;
    v30 = v18;
    if (!v21)
    {
      v10 = v18;
      v11 = v19;
      v12 = v20;
LABEL_5:
      v13 = v2;
      v14 = [objc_opt_self() systemDarkBlueColor];
      v15 = [v14 CGColor];

      v2 = v13;
      v9 = &selRef_setAdjustsFontSizeToFitWidth_;
      goto LABEL_6;
    }

    v22 = v18;
    v23 = v19;
    v24 = v20;
    v15 = [v21 CGColor];
    if (!v15)
    {
      goto LABEL_5;
    }

LABEL_6:
    v6 &= v6 - 1;
    [v20 v9[30]];
  }

  while (1)
  {
    v16 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      __break(1u);
      return;
    }

    if (v16 >= v7)
    {
      break;
    }

    v6 = *(v3 + 8 * v16);
    ++v8;
    if (v6)
    {
      v8 = v16;
      goto LABEL_12;
    }
  }

  v25 = *&v0[v28];
  if (!v25 || (v26 = [v25 CGColor]) == 0)
  {
    v27 = [objc_opt_self() systemDarkBlueColor];
    v26 = [v27 CGColor];
  }

  [v0 setBorderColor_];
}

void sub_18B0EE6D8(uint64_t a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____PSViewMarkerLayer_labelAlignment;
  v5 = *&v1[OBJC_IVAR____PSViewMarkerLayer_labelAlignment];
  v6 = OBJC_IVAR____PSViewMarkerLayer_labels;
  swift_beginAccess();
  v7 = sub_18B0F0A60(v5);
  v9 = v8;
  v11 = v10;
  v13 = v12;
  swift_endAccess();
  if (v9)
  {
    swift_beginAccess();
    v29 = v9;
    v30 = v4;
    v14 = v11;
    v15 = v13;
    sub_18B0EE870(v7, v9, v11, v13, a1);
    swift_endAccess();
    [v1 setNeedsLayout];

    v4 = v30;
  }

  *&v1[v4] = a1;
  v16 = *&v1[v6];
  if (*(v16 + 16))
  {
    v17 = sub_18B0F06C0(a1);
    if (v18)
    {
      v19 = (*(v16 + 56) + 32 * v17);
      v20 = *v19;
      v21 = v19[1];
      v22 = v19[2];
      v23 = v19[3];
      v24 = v21;
      v25 = v22;
      v26 = v23;
      sub_18B0F1378(v20, v21, v22, v23);
      v27 = *&v2[v4];
      if (v27 > 8)
      {
        v28 = 9;
      }

      else
      {
        v28 = qword_18B105A58[v27];
      }

      [v26 setMaskedCorners_];
    }
  }
}

void sub_18B0EE870(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  if (a2)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v21 = *v5;
    sub_18B0F0F58(a1, a2, a3, a4, a5, isUniquelyReferenced_nonNull_native);
    *v5 = v21;
  }

  else
  {
    v13 = sub_18B0F06C0(a5);
    if (v14)
    {
      v15 = v13;
      v16 = swift_isUniquelyReferenced_nonNull_native();
      v17 = *v5;
      v22 = *v6;
      if (!v16)
      {
        sub_18B0F10F4();
        v17 = v22;
      }

      v18 = *(v17 + 56) + 32 * v15;
      v19 = *(v18 + 8);
      v20 = *(v18 + 16);

      sub_18B0F0DC4(v15, v17);
      *v6 = v17;
    }
  }
}

uint64_t sub_18B0EEA04(__int128 *a1)
{
  v3 = a1[1];
  v25 = *a1;
  v26 = v3;
  v4 = a1[3];
  v6 = *a1;
  v5 = a1[1];
  v27 = a1[2];
  v28 = v4;
  v7 = *&v1[OBJC_IVAR____PSViewMarkerLayer_customCornerRadii + 16];
  v21 = *&v1[OBJC_IVAR____PSViewMarkerLayer_customCornerRadii];
  v22 = v7;
  v8 = *&v1[OBJC_IVAR____PSViewMarkerLayer_customCornerRadii + 48];
  v23 = *&v1[OBJC_IVAR____PSViewMarkerLayer_customCornerRadii + 32];
  v24 = v8;
  v17 = v6;
  v18 = v5;
  v19 = a1[2];
  v20 = a1[3];
  result = CACornerRadiiEqualToRadii();
  if ((result & 1) == 0)
  {
    v10 = a1[1];
    v21 = *a1;
    v22 = v10;
    v11 = a1[3];
    v23 = a1[2];
    v24 = v11;
    [v1 setCornerRadii_];
    v12 = [v1 sublayers];
    if (!v12)
    {
      return [v1 setNeedsLayout];
    }

    v13 = v12;
    sub_18B013450(0, &qword_1EA9B2CD8);
    v14 = sub_18B0F51F0();

    if (v14 >> 62)
    {
      result = sub_18B0F52F0();
      if (result)
      {
        goto LABEL_5;
      }
    }

    else
    {
      result = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result)
      {
LABEL_5:
        if ((v14 & 0xC000000000000001) != 0)
        {
          v15 = MEMORY[0x18CFEE540](0, v14);
        }

        else
        {
          if (!*((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            return result;
          }

          v15 = *(v14 + 32);
        }

        v16 = v15;
        goto LABEL_11;
      }
    }

    v16 = 0;
LABEL_11:

    v21 = v25;
    v22 = v26;
    v23 = v27;
    v24 = v28;
    [v16 setCornerRadii_];

    return [v1 setNeedsLayout];
  }

  return result;
}

uint64_t sub_18B0EEBB0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B2CC0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_18B105990;
  *(inited + 32) = 0x6F50726F68636E61;
  *(inited + 40) = 0xEB00000000746E69;
  *(inited + 48) = [objc_allocWithZone(MEMORY[0x1E695DFB0]) init];
  *(inited + 56) = 0x73646E756F62;
  *(inited + 64) = 0xE600000000000000;
  *(inited + 72) = [objc_allocWithZone(MEMORY[0x1E695DFB0]) init];
  *(inited + 80) = 0x73746E65746E6F63;
  *(inited + 88) = 0xE800000000000000;
  *(inited + 96) = [objc_allocWithZone(MEMORY[0x1E695DFB0]) init];
  *(inited + 104) = 0x7974696361706FLL;
  *(inited + 112) = 0xE700000000000000;
  *(inited + 120) = [objc_allocWithZone(MEMORY[0x1E695DFB0]) init];
  *(inited + 128) = 0x6E6F697469736F70;
  *(inited + 136) = 0xE800000000000000;
  *(inited + 144) = [objc_allocWithZone(MEMORY[0x1E695DFB0]) init];
  *(inited + 152) = 0x6F43776F64616873;
  *(inited + 160) = 0xEB00000000726F6CLL;
  *(inited + 168) = [objc_allocWithZone(MEMORY[0x1E695DFB0]) init];
  *(inited + 176) = 0xD000000000000011;
  *(inited + 184) = 0x800000018B1157D0;
  *(inited + 192) = [objc_allocWithZone(MEMORY[0x1E695DFB0]) init];
  *(inited + 200) = 0x726579616C627573;
  *(inited + 208) = 0xE900000000000073;
  *(inited + 216) = [objc_allocWithZone(MEMORY[0x1E695DFB0]) init];
  *(inited + 224) = 0x726F66736E617274;
  *(inited + 232) = 0xE90000000000006DLL;
  *(inited + 240) = [objc_allocWithZone(MEMORY[0x1E695DFB0]) init];
  *(inited + 248) = 0x6F697469736F507ALL;
  *(inited + 256) = 0xE90000000000006ELL;
  *(inited + 264) = [objc_allocWithZone(MEMORY[0x1E695DFB0]) init];
  *(inited + 272) = 0x6E6564646968;
  *(inited + 280) = 0xE600000000000000;
  *(inited + 288) = [objc_allocWithZone(MEMORY[0x1E695DFB0]) init];
  v1 = sub_18B0F1274(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B2CC8);
  result = swift_arrayDestroy();
  qword_1EA9B2C58 = v1;
  return result;
}

char *sub_18B0EEE54()
{
  v1 = &v0[OBJC_IVAR____PSViewMarkerLayer_label];
  *v1 = 0;
  v1[1] = 0xE000000000000000;
  v2 = &v0[OBJC_IVAR____PSViewMarkerLayer_subLabel];
  *v2 = 0;
  v2[1] = 0;
  *&v0[OBJC_IVAR____PSViewMarkerLayer_alternateColor] = 0;
  *&v0[OBJC_IVAR____PSViewMarkerLayer_labelAlignment] = 2;
  v3 = &v0[OBJC_IVAR____PSViewMarkerLayer_customCornerRadii];
  *v3 = 0u;
  v3[1] = 0u;
  v3[2] = 0u;
  v3[3] = 0u;
  v0[OBJC_IVAR____PSViewMarkerLayer_inheritsSuperLayerBounds] = 1;
  *&v0[OBJC_IVAR____PSViewMarkerLayer_fontSize] = 0x4020000000000000;
  *&v0[OBJC_IVAR____PSViewMarkerLayer_width] = 0x3FF0000000000000;
  v4 = OBJC_IVAR____PSViewMarkerLayer_labels;
  *&v0[v4] = sub_18B0F13C8(MEMORY[0x1E69E7CC0]);
  v49.receiver = v0;
  v49.super_class = type metadata accessor for _PSViewMarkerLayer();
  v5 = objc_msgSendSuper2(&v49, sel_init);
  v6 = objc_allocWithZone(MEMORY[0x1E6979398]);
  v7 = v5;
  v8 = [v6 init];
  v43 = OBJC_IVAR____PSViewMarkerLayer_alternateColor;
  v9 = *&v7[OBJC_IVAR____PSViewMarkerLayer_alternateColor];
  if (!v9 || (v10 = [v9 CGColor]) == 0)
  {
    v11 = [objc_opt_self() systemDarkBlueColor];
    v10 = [v11 CGColor];
  }

  [v8 setBackgroundColor_];

  v42 = OBJC_IVAR____PSViewMarkerLayer_labelAlignment;
  v12 = *&v7[OBJC_IVAR____PSViewMarkerLayer_labelAlignment];
  if (v12 > 8)
  {
    v13 = 9;
  }

  else
  {
    v13 = qword_18B105A58[v12];
  }

  [v8 setMaskedCorners_];
  if (qword_1EA9B26B0 != -1)
  {
    swift_once();
  }

  v14 = qword_1EA9B2C58;
  sub_18B0EF51C(qword_1EA9B2C58);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B2CB0);
  v15 = sub_18B0F5170();

  [v8 setActions_];

  v16 = v7;
  [v16 addSublayer_];
  v41 = v7;
  v17 = [objc_allocWithZone(MEMORY[0x1E6979508]) init];
  [v17 setFontSize_];
  v18 = objc_opt_self();
  v19 = [v18 whiteColor];
  v20 = [v19 CGColor];

  [v17 setForegroundColor_];
  v21 = *MEMORY[0x1E6979560];
  [v17 setAlignmentMode_];
  v22 = v17;
  [v22 setContentsScale_];
  [v22 setAllowsEdgeAntialiasing_];
  sub_18B0EF51C(v14);
  v23 = sub_18B0F5170();

  [v22 setActions_];

  [v16 addSublayer_];
  v24 = [objc_allocWithZone(MEMORY[0x1E6979508]) init];
  [v24 setFontSize_];
  v25 = [v18 whiteColor];
  v26 = [v25 CGColor];

  [v24 setForegroundColor_];
  [v24 setAlignmentMode_];
  v27 = v24;
  [v27 setContentsScale_];
  [v27 setAllowsEdgeAntialiasing_];
  v44 = v14;
  sub_18B0EF51C(v14);
  v28 = sub_18B0F5170();

  [v27 setActions_];

  [v16 addSublayer_];
  v29 = *&v41[v42];
  v30 = OBJC_IVAR____PSViewMarkerLayer_labels;
  swift_beginAccess();
  v31 = v22;
  v32 = v27;
  v33 = v8;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *&v45[0] = *&v16[v30];
  *&v16[v30] = 0x8000000000000000;
  sub_18B0F0F58(2, v31, v32, v33, v29, isUniquelyReferenced_nonNull_native);
  *&v16[v30] = *&v45[0];
  swift_endAccess();
  v35 = *&v41[v43];
  if (!v35 || (v36 = [v35 CGColor]) == 0)
  {
    v37 = [v18 systemDarkBlueColor];
    v36 = [v37 CGColor];
  }

  [v16 setBorderColor_];

  [v16 setBorderWidth_];
  v48 = *&v16[OBJC_IVAR____PSViewMarkerLayer_customCornerRadii + 48];
  v47 = *&v16[OBJC_IVAR____PSViewMarkerLayer_customCornerRadii + 32];
  v46 = *&v16[OBJC_IVAR____PSViewMarkerLayer_customCornerRadii + 16];
  v38 = *&v16[OBJC_IVAR____PSViewMarkerLayer_customCornerRadii];
  v45[3] = v48;
  v45[4] = v38;
  v45[0] = v38;
  v45[1] = v46;
  v45[2] = v47;
  [v16 setCornerRadii_];

  [v16 setMasksToBounds_];
  sub_18B0EF51C(v44);
  v39 = sub_18B0F5170();

  [v16 setActions_];

  return v16;
}

unint64_t sub_18B0EF51C(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B2CB8);
    v2 = sub_18B0F5320();
  }

  else
  {
    v2 = MEMORY[0x1E69E7CC8];
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v11 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v11 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v11);
    ++v8;
    if (v5)
    {
      while (1)
      {
        v12 = __clz(__rbit64(v5));
        v5 &= v5 - 1;
        v13 = v12 | (v11 << 6);
        v14 = (*(a1 + 48) + 16 * v13);
        v16 = *v14;
        v15 = v14[1];
        v17 = *(*(a1 + 56) + 8 * v13);

        v18 = v17;
        result = sub_18B0F072C(v16, v15);
        if (v19)
        {
          v9 = (v2[6] + 16 * result);
          *v9 = v16;
          v9[1] = v15;
          v10 = result;

          *(v2[7] + 8 * v10) = v18;
          result = swift_unknownObjectRelease();
          v8 = v11;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_20;
          }

          *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
          v20 = (v2[6] + 16 * result);
          *v20 = v16;
          v20[1] = v15;
          *(v2[7] + 8 * result) = v18;
          v21 = v2[2];
          v22 = __OFADD__(v21, 1);
          v23 = v21 + 1;
          if (v22)
          {
            goto LABEL_21;
          }

          v2[2] = v23;
          v8 = v11;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v11 = v8;
      }
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

void sub_18B0EF7BC()
{
  v1 = [v0 superlayer];
  if (v1)
  {
    v2 = v1;
    if (v0[OBJC_IVAR____PSViewMarkerLayer_inheritsSuperLayerBounds] == 1)
    {
      [v1 bounds];
      [v0 setFrame_];
    }

    [v2 cornerRadii];
    v3 = &v0[OBJC_IVAR____PSViewMarkerLayer_customCornerRadii];
    v23 = *&v0[OBJC_IVAR____PSViewMarkerLayer_customCornerRadii];
    v24 = *&v0[OBJC_IVAR____PSViewMarkerLayer_customCornerRadii + 16];
    v25 = *&v0[OBJC_IVAR____PSViewMarkerLayer_customCornerRadii + 32];
    v26 = *&v0[OBJC_IVAR____PSViewMarkerLayer_customCornerRadii + 48];
    if (CACornerRadiiEqualToRadii())
    {
    }

    else
    {
      [v2 cornerRadii];
      sub_18B0EEA04(v27);

      v4 = v27[1];
      *v3 = v27[0];
      *(v3 + 1) = v4;
      v5 = v27[3];
      *(v3 + 2) = v27[2];
      *(v3 + 3) = v5;
    }
  }

  v6 = OBJC_IVAR____PSViewMarkerLayer_labels;
  swift_beginAccess();
  v7 = *&v0[v6];
  v8 = 1 << *(v7 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & *(v7 + 64);
  v11 = (v8 + 63) >> 6;
  swift_bridgeObjectRetain_n();
  v12 = v0;
  v13 = 0;
  while (v10)
  {
    v14 = v13;
LABEL_15:
    v15 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
    v16 = *(v7 + 56) + ((v14 << 11) | (32 * v15));
    v17 = *v16;
    v18 = *(v16 + 16);
    v19 = *(v16 + 24);
    v20 = *(v16 + 8);
    v21 = v18;
    v22 = v19;
    sub_18B0EF9DC(v17, v20, v21, v22);
  }

  while (1)
  {
    v14 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v14 >= v11)
    {

      return;
    }

    v10 = *(v7 + 64 + 8 * v14);
    ++v13;
    if (v10)
    {
      v13 = v14;
      goto LABEL_15;
    }
  }

  __break(1u);
}

id sub_18B0EF9DC(uint64_t a1, void *a2, void *a3, void *a4)
{
  sub_18B0F1724(a2, a3);
  v9 = v8;
  v10 = sub_18B0F1AC0();
  [a4 setBounds_];
  [a2 setBounds_];
  [a3 setBounds_];
  v11 = *&v4[OBJC_IVAR____PSViewMarkerLayer_labelAlignment];
  if (v11 <= 3)
  {
    if (v11 <= 1)
    {
      if (v11 == 1)
      {
        [v4 bounds];
        UIRectGetCenter();
        v13 = 8.0;
        goto LABEL_22;
      }

      goto LABEL_15;
    }

    if (v11 == 2)
    {
      v12 = v9 * 0.5;
      v13 = 8.0;
      goto LABEL_22;
    }

    v14 = v9 * 0.5;
    [v4 bounds];
    goto LABEL_21;
  }

  if (v11 <= 5)
  {
    if (v11 == 4)
    {
      v16 = v9 * 0.5;
    }

    else
    {
      [v4 bounds];
      UIRectGetCenter();
      v16 = v15;
    }

    [v4 bounds];
    goto LABEL_19;
  }

  if (v11 == 6)
  {
    [v4 bounds];
    v16 = CGRectGetWidth(v33) + v9 * -0.5;
    [v4 bounds];
LABEL_19:
    Height = CGRectGetHeight(*&v17);
    v12 = v16;
    v13 = Height + -8.0;
    goto LABEL_22;
  }

  if (v11 != 7)
  {
    if (v11 == 8)
    {
      [v4 bounds];
      v12 = CGRectGetWidth(v32) + v9 * -0.5;
      v13 = 8.0;
      goto LABEL_22;
    }

LABEL_15:
    [v4 bounds];
    UIRectGetCenter();
    goto LABEL_22;
  }

  [v4 bounds];
  v14 = CGRectGetWidth(v34) + v9 * -0.5;
  [v4 bounds];
LABEL_21:
  UIRectGetCenter();
  v12 = v14;
LABEL_22:
  [a4 setPosition_];
  [a4 position];
  v23 = v22;
  [a4 position];
  v24 = v10 * 0.5;
  [a2 setPosition_];
  [a2 position];
  v27 = v26;
  [a2 position];
  v29 = v24 + 6.0 + v28;

  return [a3 setPosition_];
}

void sub_18B0EFD04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v6 = v5;
  v10 = OBJC_IVAR____PSViewMarkerLayer_labels;
  swift_beginAccess();
  v11 = *&v5[v10];
  if (*(v11 + 16) && (v12 = sub_18B0F06C0(a5), (v13 & 1) != 0))
  {
    v14 = *(v11 + 56) + 32 * v12;
    v15 = *(v14 + 16);
    v16 = *(v14 + 24);
    v17 = *(v14 + 8);
    v18 = v15;
    v19 = v16;
    v20 = sub_18B0F5180();
    [v17 setString_];

    if (a4)
    {
      v21 = sub_18B0F5180();
    }

    else
    {
      v21 = 0;
    }

    [v18 setString_];
    swift_unknownObjectRelease();
    [v6 setNeedsLayout];
  }

  else
  {
    v22 = [objc_allocWithZone(MEMORY[0x1E6979398]) init];
    v23 = *&v6[OBJC_IVAR____PSViewMarkerLayer_alternateColor];
    if (!v23 || (v24 = [v23 CGColor]) == 0)
    {
      v25 = [objc_opt_self() systemDarkBlueColor];
      v24 = [v25 CGColor];
    }

    [v22 setBackgroundColor_];

    if (a5 > 8)
    {
      v26 = 9;
    }

    else
    {
      v26 = qword_18B105A58[a5];
    }

    v50 = a4;
    v51 = a5;
    [v22 setMaskedCorners_];
    if (qword_1EA9B26B0 != -1)
    {
      swift_once();
    }

    v27 = qword_1EA9B2C58;
    sub_18B0EF51C(qword_1EA9B2C58);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B2CB0);
    v28 = sub_18B0F5170();

    [v22 setActions_];

    v29 = *&v6[OBJC_IVAR____PSViewMarkerLayer_customCornerRadii + 16];
    v53[0] = *&v6[OBJC_IVAR____PSViewMarkerLayer_customCornerRadii];
    v53[1] = v29;
    v30 = *&v6[OBJC_IVAR____PSViewMarkerLayer_customCornerRadii + 48];
    v53[2] = *&v6[OBJC_IVAR____PSViewMarkerLayer_customCornerRadii + 32];
    v53[3] = v30;
    [v22 setCornerRadii_];
    [v6 addSublayer_];
    v31 = [objc_allocWithZone(MEMORY[0x1E6979508]) init];
    [v31 setFontSize_];
    v32 = objc_opt_self();
    v33 = [v32 whiteColor];
    v34 = [v33 CGColor];

    [v31 setForegroundColor_];
    v35 = *MEMORY[0x1E6979560];
    [v31 setAlignmentMode_];
    v36 = v31;
    [v36 setContentsScale_];
    [v36 setAllowsEdgeAntialiasing_];
    sub_18B0EF51C(v27);
    v37 = sub_18B0F5170();

    [v36 setActions_];

    v38 = sub_18B0F5180();
    [v36 setString_];

    [v6 addSublayer_];
    v39 = [objc_allocWithZone(MEMORY[0x1E6979508]) init];
    [v39 setFontSize_];
    v40 = [v32 whiteColor];
    v41 = [v40 CGColor];

    [v39 setForegroundColor_];
    [v39 setAlignmentMode_];
    v42 = v39;
    [v42 setContentsScale_];
    [v42 setAllowsEdgeAntialiasing_];
    sub_18B0EF51C(v27);
    v43 = sub_18B0F5170();

    [v42 setActions_];

    if (v50)
    {
      v44 = sub_18B0F5180();
    }

    else
    {
      v44 = 0;
    }

    [v42 setString_];
    swift_unknownObjectRelease();
    [v6 addSublayer_];
    v45 = objc_allocWithZone(MEMORY[0x1E6979508]);
    v46 = v36;
    v47 = [v45 init];
    swift_beginAccess();
    v18 = v46;
    v48 = v22;
    v19 = v47;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v52 = *&v6[v10];
    *&v6[v10] = 0x8000000000000000;
    sub_18B0F0F58(v51, v18, v19, v48, v51, isUniquelyReferenced_nonNull_native);
    *&v6[v10] = v52;
    swift_endAccess();
    [v6 setNeedsLayout];

    v17 = v18;
  }
}

void sub_18B0F03FC(uint64_t a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____PSViewMarkerLayer_labels;
  swift_beginAccess();
  v5 = sub_18B0F06C0(a1);
  if (v6)
  {
    v7 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *(v1 + v4);
    v15 = *(v2 + v4);
    *(v2 + v4) = 0x8000000000000000;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_18B0F10F4();
      v9 = v15;
    }

    v10 = v7;
    v11 = (*(v9 + 56) + 32 * v7);
    v12 = v11[1];
    v13 = v11[2];
    v14 = v11[3];
    sub_18B0F0DC4(v10, v9);
    *(v2 + v4) = v9;
    swift_endAccess();
    [v12 removeFromSuperlayer];
    [v13 removeFromSuperlayer];
    [v14 removeFromSuperlayer];
  }

  else
  {
    swift_endAccess();
  }
}

id sub_18B0F0550()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for _PSViewMarkerLayer();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_18B0F0628(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_18B0F0670(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_18B0F06C0(uint64_t a1)
{
  sub_18B0F5380();
  MEMORY[0x18CFEE600](a1);
  v2 = sub_18B0F53A0();

  return sub_18B0F0838(a1, v2);
}

unint64_t sub_18B0F072C(uint64_t a1, uint64_t a2)
{
  sub_18B0F5380();
  sub_18B0F51C0();
  v4 = sub_18B0F53A0();

  return sub_18B0F08A4(a1, a2, v4);
}

unint64_t sub_18B0F07A4(uint64_t a1)
{
  sub_18B0F51B0();
  sub_18B0F5380();
  sub_18B0F51C0();
  v2 = sub_18B0F53A0();

  return sub_18B0F095C(a1, v2);
}

unint64_t sub_18B0F0838(uint64_t a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 8 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_18B0F08A4(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_18B0F5350())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_18B0F095C(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      v6 = sub_18B0F51B0();
      v8 = v7;
      if (v6 == sub_18B0F51B0() && v8 == v9)
      {
        break;
      }

      v11 = sub_18B0F5350();

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

uint64_t sub_18B0F0A60(uint64_t a1)
{
  v2 = v1;
  v3 = sub_18B0F06C0(a1);
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *v1;
  v10 = *v1;
  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_18B0F10F4();
    v7 = v10;
  }

  v8 = *(*(v7 + 56) + 32 * v5);
  sub_18B0F0DC4(v5, v7);
  *v2 = v7;
  return v8;
}

uint64_t sub_18B0F0B10(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B2CA8);
  v38 = a2;
  result = sub_18B0F5310();
  v7 = result;
  if (*(v5 + 16))
  {
    v37 = v5;
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
      v21 = *(*(v5 + 48) + 8 * v20);
      v22 = (*(v5 + 56) + 32 * v20);
      v23 = v22[1];
      v39 = *v22;
      v40 = v21;
      v25 = v22[2];
      v24 = v22[3];
      if ((v38 & 1) == 0)
      {
        v26 = v23;
        v27 = v25;
        v28 = v24;
      }

      sub_18B0F5380();
      MEMORY[0x18CFEE600](v40);
      result = sub_18B0F53A0();
      v29 = -1 << *(v7 + 32);
      v30 = result & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v14 + 8 * (v30 >> 6))) == 0)
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
          v35 = *(v14 + 8 * v31);
          if (v35 != -1)
          {
            v15 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v30) & ~*(v14 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v40;
      v16 = (*(v7 + 56) + 32 * v15);
      *v16 = v39;
      v16[1] = v23;
      v16[2] = v25;
      v16[3] = v24;
      ++*(v7 + 16);
      v5 = v37;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
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

    if ((v38 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v36 = 1 << *(v5 + 32);
    v3 = v2;
    if (v36 >= 64)
    {
      bzero(v9, ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v36;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_18B0F0DC4(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_18B0F52C0() + 1) & ~v5;
    do
    {
      v10 = *(*(a2 + 48) + 8 * v6);
      sub_18B0F5380();
      MEMORY[0x18CFEE600](v10);
      result = sub_18B0F53A0();
      v11 = result & v7;
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
        v13 = (v12 + 8 * v3);
        v14 = (v12 + 8 * v6);
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

void sub_18B0F0F58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  v7 = v6;
  v14 = *v6;
  v15 = sub_18B0F06C0(a5);
  v17 = *(v14 + 16);
  v18 = (v16 & 1) == 0;
  v19 = __OFADD__(v17, v18);
  v20 = v17 + v18;
  if (v19)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v21 = v16;
  v22 = *(v14 + 24);
  if (v22 < v20 || (a6 & 1) == 0)
  {
    if (v22 < v20 || (a6 & 1) != 0)
    {
      sub_18B0F0B10(v20, a6 & 1);
      v15 = sub_18B0F06C0(a5);
      if ((v21 & 1) != (v24 & 1))
      {
LABEL_16:
        type metadata accessor for NSRectAlignment(0);
        sub_18B0F5370();
        __break(1u);
        return;
      }
    }

    else
    {
      v23 = v15;
      sub_18B0F10F4();
      v15 = v23;
    }
  }

  v25 = *v7;
  if ((v21 & 1) == 0)
  {
    v25[(v15 >> 6) + 8] |= 1 << v15;
    *(v25[6] + 8 * v15) = a5;
    v29 = (v25[7] + 32 * v15);
    *v29 = a1;
    v29[1] = a2;
    v29[2] = a3;
    v29[3] = a4;
    v30 = v25[2];
    v19 = __OFADD__(v30, 1);
    v31 = v30 + 1;
    if (!v19)
    {
      v25[2] = v31;
      return;
    }

    goto LABEL_15;
  }

  v26 = (v25[7] + 32 * v15);
  v27 = v26[2];
  v32 = v26[1];
  v28 = v26[3];
  *v26 = a1;
  v26[1] = a2;
  v26[2] = a3;
  v26[3] = a4;
}

id sub_18B0F10F4()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B2CA8);
  v2 = *v0;
  v3 = sub_18B0F5300();
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
        v18 = (*(v2 + 56) + 32 * v17);
        v19 = *v18;
        v20 = v18[1];
        v21 = v18[2];
        v22 = v18[3];
        *(*(v4 + 48) + 8 * v17) = *(*(v2 + 48) + 8 * v17);
        v23 = (*(v4 + 56) + 32 * v17);
        *v23 = v19;
        v23[1] = v20;
        v23[2] = v21;
        v23[3] = v22;
        v24 = v20;
        v25 = v21;
        result = v22;
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

unint64_t sub_18B0F1274(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B2CD0);
    v3 = sub_18B0F5320();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      v8 = v7;
      result = sub_18B0F072C(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      *(v3[7] + 8 * result) = v8;
      v12 = v3[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v3[2] = v14;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

void sub_18B0F1378(uint64_t a1, void *a2, void *a3, void *a4)
{
  if (a2)
  {
  }
}

unint64_t sub_18B0F13C8(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    return MEMORY[0x1E69E7CC8];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B2CA8);
  v4 = sub_18B0F5320();
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v25 = *(a1 + 48);
  v7 = *(a1 + 64);
  result = sub_18B0F06C0(v5);
  v9 = v25;
  if (v10)
  {
LABEL_7:
    __break(1u);
LABEL_8:
    v22 = v9;
    v23 = v1;
    v24 = v7;
    return v4;
  }

  v11 = (a1 + 104);
  while (1)
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
    *(v4[6] + 8 * result) = v5;
    v12 = v4[7] + 32 * result;
    *v12 = v6;
    *(v12 + 8) = v9;
    *(v12 + 24) = v7;
    v13 = v4[2];
    v14 = __OFADD__(v13, 1);
    v15 = v13 + 1;
    if (v14)
    {
      break;
    }

    v4[2] = v15;
    v1 = *(&v9 + 1);
    if (!--v2)
    {
      goto LABEL_8;
    }

    v16 = v11 + 5;
    v5 = *(v11 - 4);
    v6 = *(v11 - 3);
    v26 = *(v11 - 1);
    v17 = *v11;
    v18 = v9;
    v19 = v1;
    v20 = v7;
    result = sub_18B0F06C0(v5);
    v11 = v16;
    v7 = v17;
    v9 = v26;
    if (v21)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_18B0F151C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B2CF8);
    v3 = sub_18B0F5320();
    v4 = a1 + 32;

    while (1)
    {
      sub_18B0F1CC4(v4, &v11);
      v5 = v11;
      result = sub_18B0F07A4(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_18B0F1D34(&v12, (v3[7] + 32 * result));
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      v4 += 40;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

void sub_18B0F1624()
{
  v1 = (v0 + OBJC_IVAR____PSViewMarkerLayer_label);
  *v1 = 0;
  v1[1] = 0xE000000000000000;
  v2 = (v0 + OBJC_IVAR____PSViewMarkerLayer_subLabel);
  *v2 = 0;
  v2[1] = 0;
  *(v0 + OBJC_IVAR____PSViewMarkerLayer_alternateColor) = 0;
  *(v0 + OBJC_IVAR____PSViewMarkerLayer_labelAlignment) = 2;
  v3 = (v0 + OBJC_IVAR____PSViewMarkerLayer_customCornerRadii);
  *v3 = 0u;
  v3[1] = 0u;
  v3[2] = 0u;
  v3[3] = 0u;
  *(v0 + OBJC_IVAR____PSViewMarkerLayer_inheritsSuperLayerBounds) = 1;
  *(v0 + OBJC_IVAR____PSViewMarkerLayer_fontSize) = 0x4020000000000000;
  *(v0 + OBJC_IVAR____PSViewMarkerLayer_width) = 0x3FF0000000000000;
  v4 = OBJC_IVAR____PSViewMarkerLayer_labels;
  *(v0 + v4) = sub_18B0F13C8(MEMORY[0x1E69E7CC0]);
  sub_18B0F52E0();
  __break(1u);
}

void sub_18B0F1724(void *a1, void *a2)
{
  if ([a1 string])
  {
    sub_18B0F52A0();
    swift_unknownObjectRelease();
  }

  else
  {
    v15 = 0u;
    v16 = 0u;
  }

  v17 = v15;
  v18 = v16;
  if (*(&v16 + 1))
  {
    sub_18B013450(0, &qword_1EA9B2A90);
    if (swift_dynamicCast())
    {
      v3 = [objc_opt_self() systemFontOfSize:8.0 weight:*MEMORY[0x1E69DB980]];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B2CE0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_18B1059A0;
      v5 = *MEMORY[0x1E69DB648];
      *(inited + 32) = *MEMORY[0x1E69DB648];
      v6 = sub_18B013450(0, &qword_1EA9B2CE8);
      *(inited + 64) = v6;
      *(inited + 40) = v3;
      v12 = v5;
      v13 = v3;
      sub_18B0F151C(inited);
      swift_setDeallocating();
      sub_18B0DEA24(inited + 32, &qword_1EA9B2CF0);
      type metadata accessor for Key(0);
      sub_18B0F1C6C();
      v7 = sub_18B0F5170();

      [v14 sizeWithAttributes_];

      if ([a2 string])
      {
        sub_18B0F52A0();
        swift_unknownObjectRelease();
      }

      else
      {
        v15 = 0u;
        v16 = 0u;
      }

      v17 = v15;
      v18 = v16;
      if (*(&v16 + 1))
      {
        if (swift_dynamicCast())
        {
          v8 = swift_initStackObject();
          *(v8 + 16) = xmmword_18B1059A0;
          *(v8 + 32) = v12;
          *(v8 + 64) = v6;
          *(v8 + 40) = v13;
          v9 = v12;
          v10 = v13;
          sub_18B0F151C(v8);
          swift_setDeallocating();
          sub_18B0DEA24(v8 + 32, &qword_1EA9B2CF0);
          v11 = sub_18B0F5170();

          [v14 &selRef:v11 sf:?isiPhone + 3];
        }

        else
        {
        }
      }

      else
      {

        sub_18B0DEA24(&v17, &qword_1EA9B29F8);
      }
    }
  }

  else
  {
    sub_18B0DEA24(&v17, &qword_1EA9B29F8);
  }
}

double sub_18B0F1AC0()
{
  v1 = [objc_opt_self() systemFontOfSize:8.0 weight:*MEMORY[0x1E69DB980]];
  v2 = v1;
  if (*(v0 + OBJC_IVAR____PSViewMarkerLayer_subLabel + 8))
  {

    v3 = sub_18B0F5180();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B2CE0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_18B1059A0;
    v5 = *MEMORY[0x1E69DB648];
    *(inited + 32) = *MEMORY[0x1E69DB648];
    *(inited + 64) = sub_18B013450(0, &qword_1EA9B2CE8);
    *(inited + 40) = v2;
    v6 = v5;
    v7 = v2;
    sub_18B0F151C(inited);
    swift_setDeallocating();
    sub_18B0DEA24(inited + 32, &qword_1EA9B2CF0);
    type metadata accessor for Key(0);
    sub_18B0F1C6C();
    v8 = sub_18B0F5170();

    [v3 sizeWithAttributes_];
    v10 = v9;
  }

  else
  {

    return 0.0;
  }

  return v10;
}

unint64_t sub_18B0F1C6C()
{
  result = qword_1EA9B2848;
  if (!qword_1EA9B2848)
  {
    type metadata accessor for Key(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9B2848);
  }

  return result;
}

uint64_t sub_18B0F1CC4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B2CF0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

_OWORD *sub_18B0F1D34(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t get_aks_client_connection()
{
  if (get_aks_client_dispatch_queue_onceToken != -1)
  {
    get_aks_client_connection_cold_1();
  }

  dispatch_sync(get_aks_client_dispatch_queue_connection_queue, &__block_literal_global_153);
  return get_aks_client_connection_connection;
}

void __get_aks_client_connection_block_invoke()
{
  if (!get_aks_client_connection_connection)
  {
    get_aks_client_connection_connection = _copy_aks_client_connection("IOService:/IOResources/AppleKeyStore", "AppleKeyStore");
  }
}

dispatch_queue_t __get_aks_client_dispatch_queue_block_invoke()
{
  result = dispatch_queue_create("aks-client-queue", 0);
  get_aks_client_dispatch_queue_connection_queue = result;
  return result;
}

uint64_t _copy_aks_client_connection(char *path, const char *a2)
{
  connect = 0;
  v3 = *MEMORY[0x1E696CD68];
  v4 = IORegistryEntryFromPath(*MEMORY[0x1E696CD68], path);
  v5 = MEMORY[0x1E69E9A60];
  if (!v4 || (v6 = v4, v7 = IOServiceOpen(v4, *MEMORY[0x1E69E9A60], 0, &connect), IOObjectRelease(v6), v7))
  {
    v8 = IOServiceMatching(a2);
    MatchingService = IOServiceGetMatchingService(v3, v8);
    if (MatchingService)
    {
      v10 = MatchingService;
      IOServiceOpen(MatchingService, *v5, 0, &connect);
      IOObjectRelease(v10);
    }
  }

  if (connect)
  {
    if (IOConnectCallMethod(connect, 0, 0, 0, 0, 0, 0, 0, 0, 0))
    {
      IOServiceClose(connect);
      connect = 0;
      syslog(3, "failed to open userclient via %s: %d\n");
    }
  }

  else
  {
    syslog(3, "failed to open connection to %s: %d\n");
  }

  return connect;
}

uint64_t OUTLINED_FUNCTION_5_0(mach_port_t a1, uint32_t a2, const uint64_t *a3, uint32_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, size_t *a10)
{

  return IOConnectCallMethod(a1, a2, a3, a4, 0, 0, 0, 0, a9, a10);
}

void __PSCalendarAuthorizationStates_block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_18B008000, a2, OS_LOG_TYPE_ERROR, "Error when requesting TCC for kTCCServiceCalendar error: %@", &v2, 0xCu);
}

void __PSGetAuthorizationStatesForService_block_invoke_cold_1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 56);
  v4 = 138412546;
  v5 = v3;
  v6 = 2112;
  v7 = a2;
  _os_log_error_impl(&dword_18B008000, log, OS_LOG_TYPE_ERROR, "Error when requesting TCC for service: %@ error: %@", &v4, 0x16u);
}

CFRange CFStringFind(CFStringRef theString, CFStringRef stringToFind, CFStringCompareFlags compareOptions)
{
  v3 = MEMORY[0x1EEDB7958](theString, stringToFind, compareOptions);
  result.length = v4;
  result.location = v3;
  return result;
}

CFRange CFStringTokenizerGetCurrentTokenRange(CFStringTokenizerRef tokenizer)
{
  v1 = MEMORY[0x1EEDB7B38](tokenizer);
  result.length = v2;
  result.location = v1;
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

CGRect CGRectOffset(CGRect rect, CGFloat dx, CGFloat dy)
{
  MEMORY[0x1EEDBAE78](rect.origin, *&rect.origin.y, rect.size, *&rect.size.height, dx, dy);
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

NSRange NSRangeFromString(NSString *aString)
{
  v1 = MEMORY[0x1EEDC70A0](aString);
  result.length = v2;
  result.location = v1;
  return result;
}

double gotLoadHelper_x8__OBJC_CLASS___SBSUITraitHomeScreenIconStyle(double result)
{
  if (!atomic_load(&dlopenHelperFlag_SpringBoardUIServices))
  {
    return dlopenHelper_SpringBoardUIServices(result);
  }

  return result;
}

double __spoils<X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> dlopenHelper_SpringBoardUIServices(double a1)
{
  dlopen("/System/Library/PrivateFrameworks/SpringBoardUIServices.framework/SpringBoardUIServices", 0);
  atomic_store(1u, &dlopenHelperFlag_SpringBoardUIServices);
  return a1;
}