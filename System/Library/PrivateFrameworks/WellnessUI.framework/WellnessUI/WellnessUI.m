uint64_t sub_273E40960()
{
  outlined consume of Text.Storage(*(v0 + 16), *(v0 + 24), *(v0 + 32));
  v1 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_273E409A4(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentVyAA11ColorSchemeOGMd, &_s7SwiftUI11EnvironmentVyAA11ColorSchemeOGMR);
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 20);

    return v10(v11, a2, v9);
  }
}

void *sub_273E40A6C(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *result = a2;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentVyAA11ColorSchemeOGMd, &_s7SwiftUI11EnvironmentVyAA11ColorSchemeOGMR);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_273E40B58()
{
  outlined consume of Text.Storage(*(v0 + 16), *(v0 + 24), *(v0 + 32));
  v1 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_273E40B9C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewP07SnippetB0E10separators_10isOverrideQr0D3Kit14SeparatorStyleO_SbtFQOyAD018FactItemHeroNumberC0V_Qo_Md, &_s7SwiftUI4ViewP07SnippetB0E10separators_10isOverrideQr0D3Kit14SeparatorStyleO_SbtFQOyAD018FactItemHeroNumberC0V_Qo_MR);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);
  v6 = type metadata accessor for StatusIndicatorView();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v4 + v5 + v8) & ~v8;
  v10 = *(v7 + 64);
  v11 = v3 | v8;
  v12 = *(v0 + 16);

  (*(v2 + 8))(v0 + v4, v1);
  (*(v7 + 8))(v0 + v9, v6);

  return MEMORY[0x2821FE8E8](v0, v9 + v10, v11 | 7);
}

uint64_t sub_273E40CF8()
{
  v1 = type metadata accessor for GenericMedCompletedLogSnippet();
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v29 = *(*(v1 - 1) + 64);
  v4 = type metadata accessor for AppPunchout();
  v5 = *(v4 - 8);
  v6 = *(v5 + 80);
  v28 = *(v5 + 64);
  v7 = v0 + v3;
  v8 = *(v0 + v3 + 16);

  v9 = type metadata accessor for GenericMedCompletedLogModel();
  v10 = v9[6];
  if (!(*(v5 + 48))(v0 + v3 + v10, 1, v4))
  {
    (*(v5 + 8))(v7 + v10, v4);
  }

  v11 = *(v7 + v9[8] + 8);

  v12 = *(v7 + v9[10] + 8);

  v13 = *(v7 + v9[11] + 8);

  v14 = *(v7 + v9[12] + 8);

  v15 = *(v7 + v9[13] + 8);

  v16 = v7 + v9[14];
  v17 = type metadata accessor for SnippetHeaderModel();
  if (!(*(*(v17 - 8) + 48))(v16, 1, v17))
  {
    v18 = type metadata accessor for SpeakableString();
    (*(*(v18 - 8) + 8))(v16, v18);
    v19 = *(v16 + *(v17 + 20) + 8);

    v20 = *(v16 + *(v17 + 24) + 8);
  }

  v21 = v7 + v1[5];
  outlined consume of Text.Storage(*v21, *(v21 + 8), *(v21 + 16));
  v22 = *(v21 + 24);

  v23 = v1[7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA11ColorSchemeO_GMd, &_s7SwiftUI11EnvironmentV7ContentOyAA11ColorSchemeO_GMR);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v24 = type metadata accessor for ColorScheme();
    (*(*(v24 - 8) + 8))(v7 + v23, v24);
  }

  else
  {
    v25 = *(v7 + v23);
  }

  v26 = (v3 + v29 + v6) & ~v6;
  (*(v5 + 8))(v0 + v26, v4);

  return MEMORY[0x2821FE8E8](v0, v26 + v28, v2 | v6 | 7);
}

uint64_t sub_273E41028(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for GenericMedCompletedLogModel();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v10 = *(a1 + *(a3 + 20) + 24);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentVyAA11ColorSchemeOGMd, &_s7SwiftUI11EnvironmentVyAA11ColorSchemeOGMR);
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 28);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_273E4115C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for GenericMedCompletedLogModel();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 20) + 24) = (a2 - 1);
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentVyAA11ColorSchemeOGMd, &_s7SwiftUI11EnvironmentVyAA11ColorSchemeOGMR);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 28);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t sub_273E412AC()
{
  outlined consume of Text.Storage(*(v0 + 16), *(v0 + 24), *(v0 + 32));
  v1 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_273E412F0()
{
  v1 = type metadata accessor for SnippetHeaderView();
  v2 = *(*(v1 - 8) + 80);
  v25 = *(*(v1 - 8) + 64);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewP07SnippetB0E16componentSpacing3top6bottomQr12CoreGraphics7CGFloatV_AJtFQOyAcDE10separators_10isOverrideQr0D3Kit14SeparatorStyleO_SbtFQOyAD018FactItemHeroNumberC0V_Qo__Qo_Md, &_s7SwiftUI4ViewP07SnippetB0E16componentSpacing3top6bottomQr12CoreGraphics7CGFloatV_AJtFQOyAcDE10separators_10isOverrideQr0D3Kit14SeparatorStyleO_SbtFQOyAD018FactItemHeroNumberC0V_Qo__Qo_MR);
  v3 = *(v26 - 8);
  v4 = *(v3 + 80);
  v23 = *(v3 + 64);
  v5 = type metadata accessor for StatusIndicatorView();
  v6 = *(v5 - 8);
  v7 = *(v6 + 80);
  v24 = *(v6 + 64);
  v8 = v0 + ((v2 + 16) & ~v2);
  v9 = type metadata accessor for SnippetHeaderModel();
  if (!(*(*(v9 - 8) + 48))(v8, 1, v9))
  {
    v10 = type metadata accessor for SpeakableString();
    (*(*(v10 - 8) + 8))(v0 + ((v2 + 16) & ~v2), v10);
    v11 = *(v8 + *(v9 + 20) + 8);

    v12 = *(v8 + *(v9 + 24) + 8);
  }

  v13 = *(v1 + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA11ColorSchemeO_GMd, &_s7SwiftUI11EnvironmentV7ContentOyAA11ColorSchemeO_GMR);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v14 = type metadata accessor for ColorScheme();
    (*(*(v14 - 8) + 8))(v8 + v13, v14);
  }

  else
  {
    v15 = *(v8 + v13);
  }

  v16 = *(v1 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA19ColorSchemeContrastO_GMd, &_s7SwiftUI11EnvironmentV7ContentOyAA19ColorSchemeContrastO_GMR);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v17 = type metadata accessor for ColorSchemeContrast();
    (*(*(v17 - 8) + 8))(v8 + v16, v17);
  }

  else
  {
    v18 = *(v8 + v16);
  }

  v19 = v2 | v4 | v7;
  v20 = (((v2 + 16) & ~v2) + v25 + v4) & ~v4;
  v21 = (v20 + v23 + v7) & ~v7;
  (*(v3 + 8))(v0 + v20, v26);
  (*(v6 + 8))(v0 + v21, v5);

  return MEMORY[0x2821FE8E8](v0, v21 + v24, v19 | 7);
}

uint64_t sub_273E4164C()
{
  v1 = type metadata accessor for BloodPressureLogSnippet();
  v2 = *(*(v1 - 8) + 80);
  v24 = *(*(v1 - 8) + 64);
  v3 = type metadata accessor for AppPunchout();
  v4 = *(v3 - 8);
  v5 = *(v4 + 80);
  v23 = *(v4 + 64);
  v6 = v0 + ((v2 + 16) & ~v2);
  if (!(*(v4 + 48))(v6, 1, v3))
  {
    (*(v4 + 8))(v0 + ((v2 + 16) & ~v2), v3);
  }

  v7 = type metadata accessor for BloodPressureLogModel();
  v8 = *(v6 + v7[5] + 8);

  v9 = *(v6 + v7[6] + 8);

  v10 = *(v6 + v7[7] + 8);

  v11 = v6 + v7[8];
  v12 = type metadata accessor for SnippetHeaderModel();
  if (!(*(*(v12 - 8) + 48))(v11, 1, v12))
  {
    v13 = type metadata accessor for SpeakableString();
    (*(*(v13 - 8) + 8))(v11, v13);
    v14 = *(v11 + *(v12 + 20) + 8);

    v15 = *(v11 + *(v12 + 24) + 8);
  }

  v16 = *(v6 + v7[9] + 8);

  v17 = *(v6 + v7[10] + 8);

  v18 = *(v1 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA11ColorSchemeO_GMd, &_s7SwiftUI11EnvironmentV7ContentOyAA11ColorSchemeO_GMR);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v19 = type metadata accessor for ColorScheme();
    (*(*(v19 - 8) + 8))(v6 + v18, v19);
  }

  else
  {
    v20 = *(v6 + v18);
  }

  v21 = (((v2 + 16) & ~v2) + v24 + v5) & ~v5;
  (*(v4 + 8))(v0 + v21, v3);

  return MEMORY[0x2821FE8E8](v0, v21 + v23, v2 | v5 | 7);
}

uint64_t sub_273E41958(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for BloodPressureLogModel();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 2147483646)
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }

  else
  {
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentVyAA11ColorSchemeOGMd, &_s7SwiftUI11EnvironmentVyAA11ColorSchemeOGMR);
    v13 = *(*(v12 - 8) + 48);
    v14 = a1 + *(a3 + 24);

    return v13(v14, a2, v12);
  }
}

uint64_t sub_273E41A94(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for BloodPressureLogModel();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 2147483646)
  {
    *(a1 + *(a4 + 20)) = a2;
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentVyAA11ColorSchemeOGMd, &_s7SwiftUI11EnvironmentVyAA11ColorSchemeOGMR);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 24);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t sub_273E41BDC()
{
  v1 = type metadata accessor for SnippetHeaderView();
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = v0 + v3;
  v6 = type metadata accessor for SnippetHeaderModel();
  if (!(*(*(v6 - 8) + 48))(v0 + v3, 1, v6))
  {
    v7 = type metadata accessor for SpeakableString();
    (*(*(v7 - 8) + 8))(v0 + v3, v7);
    v8 = *(v5 + *(v6 + 20) + 8);

    v9 = *(v5 + *(v6 + 24) + 8);
  }

  v10 = *(v1 + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA11ColorSchemeO_GMd, &_s7SwiftUI11EnvironmentV7ContentOyAA11ColorSchemeO_GMR);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = type metadata accessor for ColorScheme();
    (*(*(v11 - 8) + 8))(v5 + v10, v11);
  }

  else
  {
    v12 = *(v5 + v10);
  }

  v13 = *(v1 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA19ColorSchemeContrastO_GMd, &_s7SwiftUI11EnvironmentV7ContentOyAA19ColorSchemeContrastO_GMR);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v14 = type metadata accessor for ColorSchemeContrast();
    (*(*(v14 - 8) + 8))(v5 + v13, v14);
  }

  else
  {
    v15 = *(v5 + v13);
  }

  v16 = (v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v17 = *(v0 + v16);

  return MEMORY[0x2821FE8E8](v0, v16 + 8, v2 | 7);
}

uint64_t sub_273E41E1C()
{
  v1 = type metadata accessor for SnippetHeaderView();
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = v0 + v3;
  v6 = type metadata accessor for SnippetHeaderModel();
  if (!(*(*(v6 - 8) + 48))(v0 + v3, 1, v6))
  {
    v7 = type metadata accessor for SpeakableString();
    (*(*(v7 - 8) + 8))(v0 + v3, v7);
    v8 = *(v5 + *(v6 + 20) + 8);

    v9 = *(v5 + *(v6 + 24) + 8);
  }

  v10 = *(v1 + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA11ColorSchemeO_GMd, &_s7SwiftUI11EnvironmentV7ContentOyAA11ColorSchemeO_GMR);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = type metadata accessor for ColorScheme();
    (*(*(v11 - 8) + 8))(v5 + v10, v11);
  }

  else
  {
    v12 = *(v5 + v10);
  }

  v13 = *(v1 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA19ColorSchemeContrastO_GMd, &_s7SwiftUI11EnvironmentV7ContentOyAA19ColorSchemeContrastO_GMR);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v14 = type metadata accessor for ColorSchemeContrast();
    (*(*(v14 - 8) + 8))(v5 + v13, v14);
  }

  else
  {
    v15 = *(v5 + v13);
  }

  v16 = (v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v17 = (v16 + 39) & 0xFFFFFFFFFFFFFFF8;
  v18 = (v17 + 39) & 0xFFFFFFFFFFFFFFF8;
  v19 = v0 + v16;
  outlined consume of Text.Storage(*(v0 + v16), *(v0 + v16 + 8), *(v0 + v16 + 16));
  v20 = *(v19 + 24);

  v21 = v0 + v17;
  outlined consume of Text.Storage(*v21, *(v21 + 8), *(v21 + 16));
  v22 = *(v21 + 24);

  v23 = *(v0 + v18 + 8);

  return MEMORY[0x2821FE8E8](v0, v18 + 16, v2 | 7);
}

uint64_t sub_273E420A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  Model = type metadata accessor for SleepQueryModel();
  v7 = *(Model - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, Model);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_273E4216C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for SleepQueryModel();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2;
  }

  return result;
}

uint64_t sub_273E42230()
{
  outlined consume of Text.Storage(*(v0 + 16), *(v0 + 24), *(v0 + 32));
  v1 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_273E423B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit11AppPunchoutVSgMd, &_s10SnippetKit11AppPunchoutVSgMR);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WellnessUI18SnippetHeaderModelVSgMd, &_s10WellnessUI18SnippetHeaderModelVSgMR);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 24) + 8);
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  v15 = v14 - 1;
  if (v15 < 0)
  {
    v15 = -1;
  }

  return (v15 + 1);
}

uint64_t sub_273E424EC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit11AppPunchoutVSgMd, &_s10SnippetKit11AppPunchoutVSgMR);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WellnessUI18SnippetHeaderModelVSgMd, &_s10WellnessUI18SnippetHeaderModelVSgMR);
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 24) + 8) = a2;
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_273E42650(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 16);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit11AppPunchoutVSgMd, &_s10SnippetKit11AppPunchoutVSgMR);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 32);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WellnessUI18SnippetHeaderModelVSgMd, &_s10WellnessUI18SnippetHeaderModelVSgMR);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 76);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_273E4278C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 16) = (a2 - 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit11AppPunchoutVSgMd, &_s10SnippetKit11AppPunchoutVSgMR);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 32);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WellnessUI18SnippetHeaderModelVSgMd, &_s10WellnessUI18SnippetHeaderModelVSgMR);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 76);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_273E42904(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit11AppPunchoutVSgMd, &_s10SnippetKit11AppPunchoutVSgMR);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + a3[10];
    goto LABEL_5;
  }

  if (a2 == 2147483646)
  {
    v14 = *(a1 + a3[11] + 8);
    if (v14 >= 0xFFFFFFFF)
    {
      LODWORD(v14) = -1;
    }

    v15 = v14 - 1;
    if (v15 < 0)
    {
      v15 = -1;
    }

    return (v15 + 1);
  }

  else
  {
    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WellnessUI18SnippetHeaderModelVSgMd, &_s10WellnessUI18SnippetHeaderModelVSgMR);
    v17 = *(*(v16 - 8) + 48);
    v18 = a1 + a3[18];

    return v17(v18, a2, v16);
  }
}

uint64_t sub_273E42AAC(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit11AppPunchoutVSgMd, &_s10SnippetKit11AppPunchoutVSgMR);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    return v11(v12, a2, a2, v10);
  }

  result = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v14 = *(result - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + a4[10];
    goto LABEL_5;
  }

  if (a3 == 2147483646)
  {
    *(a1 + a4[11] + 8) = a2;
  }

  else
  {
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WellnessUI18SnippetHeaderModelVSgMd, &_s10WellnessUI18SnippetHeaderModelVSgMR);
    v16 = *(*(v15 - 8) + 56);
    v17 = a1 + a4[18];

    return v16(v17, a2, a2, v15);
  }

  return result;
}

uint64_t sub_273E42C48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WellnessUI18SnippetHeaderModelVSgMd, &_s10WellnessUI18SnippetHeaderModelVSgMR);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 2147483646)
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }

  else
  {
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit11AppPunchoutVSgMd, &_s10SnippetKit11AppPunchoutVSgMR);
    v13 = *(*(v12 - 8) + 48);
    v14 = a1 + *(a3 + 40);

    return v13(v14, a2, v12);
  }
}

uint64_t sub_273E42D90(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WellnessUI18SnippetHeaderModelVSgMd, &_s10WellnessUI18SnippetHeaderModelVSgMR);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 2147483646)
  {
    *(a1 + *(a4 + 20)) = a2;
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit11AppPunchoutVSgMd, &_s10SnippetKit11AppPunchoutVSgMR);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 40);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t sub_273E42ED0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for ActionHandler();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = type metadata accessor for GenericButtonModel();
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_273E42FC0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for ActionHandler();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = type metadata accessor for GenericButtonModel();
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_273E430BC()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI6ButtonVyAA4TextVGMd, &_s7SwiftUI6ButtonVyAA4TextVGMR);
  type metadata accessor for RFButtonStyle();
  lazy protocol witness table accessor for type Button<Text> and conformance Button<A>();
  lazy protocol witness table accessor for type RFButtonStyle and conformance RFButtonStyle();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_273E43194(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit11AppPunchoutVSgMd, &_s10SnippetKit11AppPunchoutVSgMR);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_3:

    return v9(v10, a2, v8);
  }

  if (a2 == 2147483646)
  {
    v12 = *(a1 + a3[11] + 8);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    v13 = v12 - 1;
    if (v13 < 0)
    {
      v13 = -1;
    }

    return (v13 + 1);
  }

  else
  {
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    v15 = *(v14 - 8);
    if (*(v15 + 84) == a2)
    {
      v8 = v14;
      v9 = *(v15 + 48);
      v10 = a1 + a3[20];
      goto LABEL_3;
    }

    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WellnessUI18SnippetHeaderModelVSgMd, &_s10WellnessUI18SnippetHeaderModelVSgMR);
    v17 = *(*(v16 - 8) + 48);
    v18 = a1 + a3[23];

    return v17(v18, a2, v16);
  }
}

uint64_t sub_273E4333C(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit11AppPunchoutVSgMd, &_s10SnippetKit11AppPunchoutVSgMR);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_3:

    return v11(v12, a2, a2, v10);
  }

  if (a3 == 2147483646)
  {
    *(a1 + a4[11] + 8) = a2;
    return result;
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + a4[20];
    goto LABEL_3;
  }

  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WellnessUI18SnippetHeaderModelVSgMd, &_s10WellnessUI18SnippetHeaderModelVSgMR);
  v16 = *(*(v15 - 8) + 56);
  v17 = a1 + a4[23];

  return v16(v17, a2, a2, v15);
}

uint64_t sub_273E434D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 64);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WellnessUI18SnippetHeaderModelVSgMd, &_s10WellnessUI18SnippetHeaderModelVSgMR);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 44);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_273E43594(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 64) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WellnessUI18SnippetHeaderModelVSgMd, &_s10WellnessUI18SnippetHeaderModelVSgMR);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 44);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_273E4366C()
{
  v1 = type metadata accessor for PhoneRingsSnippet();
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6VStackVyAA9TupleViewVyAA0E0P07SnippetB0E16componentSpacing3top6bottomQr12CoreGraphics7CGFloatV_ANtFQOyACyAEyAgHEAijKQrAN_ANtFQOyAA4TextV_Qo__AA15ModifiedContentVyAA6HStackVyAEyAP_APtGGAA24_ForegroundStyleModifierVyAA5ColorVGGtGG_Qo__A4_A4_tGGMd, &_s7SwiftUI6VStackVyAA9TupleViewVyAA0E0P07SnippetB0E16componentSpacing3top6bottomQr12CoreGraphics7CGFloatV_ANtFQOyACyAEyAgHEAijKQrAN_ANtFQOyAA4TextV_Qo__AA15ModifiedContentVyAA6HStackVyAEyAP_APtGGAA24_ForegroundStyleModifierVyAA5ColorVGGtGG_Qo__A4_A4_tGGMR) - 8);
  v6 = *(v5 + 80);
  v7 = *(v5 + 64);
  v8 = (v0 + v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA15DynamicTypeSizeO_GMd, &_s7SwiftUI11EnvironmentV7ContentOyAA15DynamicTypeSizeO_GMR);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = type metadata accessor for DynamicTypeSize();
    (*(*(v9 - 8) + 8))(v0 + v3, v9);
  }

  else
  {
    v10 = *v8;
  }

  v11 = v2 | v6;
  v12 = (v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v13 = (v12 + v6 + 569) & ~v6;
  v14 = (v8 + *(v1 + 20));
  v15 = v14[13];

  v16 = v14[15];

  v17 = v14[17];

  v18 = v14[19];

  v19 = v14[21];

  v20 = v14[23];

  v21 = v14[25];

  v22 = v14[27];

  v23 = v14[29];

  v24 = *(v0 + v12 + 104);

  v25 = *(v0 + v12 + 120);

  v26 = *(v0 + v12 + 136);

  v27 = *(v0 + v12 + 152);

  v28 = *(v0 + v12 + 168);

  v29 = *(v0 + v12 + 184);

  v30 = *(v0 + v12 + 200);

  v31 = *(v0 + v12 + 216);

  v32 = *(v0 + v12 + 232);

  v33 = *(v0 + v12 + 320);

  v34 = *(v0 + v12 + 336);

  v35 = v0 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA13_VStackLayoutVAA05TupleD0VyAA0D0P07SnippetB0E16componentSpacing3top6bottomQr12CoreGraphics7CGFloatV_ARtFQOyAA0F0VyAIyAkLEAmnOQrAR_ARtFQOyAA4TextV_Qo__AA15ModifiedContentVyAA6HStackVyAIyAV_AVtGGAA24_ForegroundStyleModifierVyAA5ColorVGGtGG_Qo__A10_A10_tGGMd, &_s7SwiftUI13_VariadicViewO4TreeVy_AA13_VStackLayoutVAA05TupleD0VyAA0D0P07SnippetB0E16componentSpacing3top6bottomQr12CoreGraphics7CGFloatV_ARtFQOyAA0F0VyAIyAkLEAmnOQrAR_ARtFQOyAA4TextV_Qo__AA15ModifiedContentVyAA6HStackVyAIyAV_AVtGGAA24_ForegroundStyleModifierVyAA5ColorVGGtGG_Qo__A10_A10_tGGMR) + 44) + v13;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewP07SnippetB0E16componentSpacing3top6bottomQr12CoreGraphics7CGFloatV_AJtFQOyAA6VStackVyAA05TupleC0VyAcDEAefGQrAJ_AJtFQOyAA4TextV_Qo__AA15ModifiedContentVyAA6HStackVyANyAP_APtGGAA24_ForegroundStyleModifierVyAA5ColorVGGtGG_Qo_Md, &_s7SwiftUI4ViewP07SnippetB0E16componentSpacing3top6bottomQr12CoreGraphics7CGFloatV_AJtFQOyAA6VStackVyAA05TupleC0VyAcDEAefGQrAJ_AJtFQOyAA4TextV_Qo__AA15ModifiedContentVyAA6HStackVyANyAP_APtGGAA24_ForegroundStyleModifierVyAA5ColorVGGtGG_Qo_MR);
  v37 = *(*(v36 - 8) + 8);
  v37(v35, v36);
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewP07SnippetB0E16componentSpacing3top6bottomQr12CoreGraphics7CGFloatV_AJtFQOyAA6VStackVyAA05TupleC0VyAcDEAefGQrAJ_AJtFQOyAA4TextV_Qo__AA15ModifiedContentVyAA6HStackVyANyAP_APtGGAA24_ForegroundStyleModifierVyAA5ColorVGGtGG_Qo__A4_A4_tMd, &_s7SwiftUI4ViewP07SnippetB0E16componentSpacing3top6bottomQr12CoreGraphics7CGFloatV_AJtFQOyAA6VStackVyAA05TupleC0VyAcDEAefGQrAJ_AJtFQOyAA4TextV_Qo__AA15ModifiedContentVyAA6HStackVyANyAP_APtGGAA24_ForegroundStyleModifierVyAA5ColorVGGtGG_Qo__A4_A4_tMR);
  v37(v35 + *(v38 + 48), v36);
  v37(v35 + *(v38 + 64), v36);

  return MEMORY[0x2821FE8E8](v0, v13 + v7, v11 | 7);
}

uint64_t sub_273E4395C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6VStackVyAA9TupleViewVyAA0E0P07SnippetB0E16componentSpacing3top6bottomQr12CoreGraphics7CGFloatV_ANtFQOyACyAEyAgHEAijKQrAN_ANtFQOyAA4TextV_Qo__AA15ModifiedContentVyAA6HStackVyAEyAP_APtGGAA24_ForegroundStyleModifierVyAA5ColorVGGtGG_Qo__A4_A4_tGGMd, &_s7SwiftUI6VStackVyAA9TupleViewVyAA0E0P07SnippetB0E16componentSpacing3top6bottomQr12CoreGraphics7CGFloatV_ANtFQOyACyAEyAgHEAijKQrAN_ANtFQOyAA4TextV_Qo__AA15ModifiedContentVyAA6HStackVyAEyAP_APtGGAA24_ForegroundStyleModifierVyAA5ColorVGGtGG_Qo__A4_A4_tGGMR);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_273E439CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentVyAA15DynamicTypeSizeOGMd, _s7SwiftUI11EnvironmentVyAA15DynamicTypeSizeOGMR);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 104);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_273E43AA4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentVyAA15DynamicTypeSizeOGMd, _s7SwiftUI11EnvironmentVyAA15DynamicTypeSizeOGMR);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 104) = a2;
  }

  return result;
}

uint64_t sub_273E43B6C()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVy07SnippetB014ComponentStackVyAA9TupleViewVyAD012SashStandardI0VSg_AA012_ConditionalD0VyAA6VStackVyAHyACyACyACyACyACyACy08WellnessB033HKActivityRingUIViewRepresentableVAA12_FrameLayoutVGAA16_OverlayModifierVyAA011StrokeShapeI0VyAA6CircleVAA5ColorVAA05EmptyI0VGGGAA08_PaddingT0VGA8_GA8_GA8_G_ACyACyACyAOyAHyAA0I0PADE16componentSpacing3top6bottomQr12CoreGraphics7CGFloatV_A20_tFQOyAOyAHyA14_ADEA15_A16_A17_QrA20__A20_tFQOyAA4TextV_Qo__ACyAA6HStackVyAHyA22__A22_tGGAA016_ForegroundStyleV0VyA1_GGtGG_Qo__A34_A34_tGGA8_GA8_GA8_GtGGA25_yAHyA12__A38_AA6SpacerVtGGGtGGAA016_BackgroundStyleV0VyA1_GGMd, &_s7SwiftUI15ModifiedContentVy07SnippetB014ComponentStackVyAA9TupleViewVyAD012SashStandardI0VSg_AA012_ConditionalD0VyAA6VStackVyAHyACyACyACyACyACyACy08WellnessB033HKActivityRingUIViewRepresentableVAA12_FrameLayoutVGAA16_OverlayModifierVyAA011StrokeShapeI0VyAA6CircleVAA5ColorVAA05EmptyI0VGGGAA08_PaddingT0VGA8_GA8_GA8_G_ACyACyACyAOyAHyAA0I0PADE16componentSpacing3top6bottomQr12CoreGraphics7CGFloatV_A20_tFQOyAOyAHyA14_ADEA15_A16_A17_QrA20__A20_tFQOyAA4TextV_Qo__ACyAA6HStackVyAHyA22__A22_tGGAA016_ForegroundStyleV0VyA1_GGtGG_Qo__A34_A34_tGGA8_GA8_GA8_GtGGA25_yAHyA12__A38_AA6SpacerVtGGGtGGAA016_BackgroundStyleV0VyA1_GGMR);
  lazy protocol witness table accessor for type ModifiedContent<ComponentStack<TupleView<(SashStandardView?, _ConditionalContent<VStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HKActivityRingUIViewRepresentable, _FrameLayout>, _OverlayModifier<StrokeShapeView<Circle, Color, EmptyView>>>, _PaddingLayout>, _PaddingLayout>, _PaddingLayout>, _PaddingLayout>, ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(<<opaque return type of View.componentSpacing(top:bottom:)>>.0, <<opaque return type of View.componentSpacing(top:bottom:)>>.0, <<opaque return type of View.componentSpacing(top:bottom:)>>.0)>>, _PaddingLayout>, _PaddingLayout>, _PaddingLayout>)>>, HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HKActivityRingUIViewRepresentable, _FrameLayout>, _OverlayModifier<StrokeShapeView<Circle, Color, EmptyView>>>, _PaddingLayout>, _PaddingLayout>, _PaddingLayout>, _PaddingLa();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_273E43BD0()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI6VStackVyAA9TupleViewVyAA0E0P07SnippetB0E16componentSpacing3top6bottomQr12CoreGraphics7CGFloatV_ANtFQOyAA4TextV_Qo__AA15ModifiedContentVyAA6HStackVyAEyAP_APtGGAA24_ForegroundStyleModifierVyAA5ColorVGGtGGMd, &_s7SwiftUI6VStackVyAA9TupleViewVyAA0E0P07SnippetB0E16componentSpacing3top6bottomQr12CoreGraphics7CGFloatV_ANtFQOyAA4TextV_Qo__AA15ModifiedContentVyAA6HStackVyAEyAP_APtGGAA24_ForegroundStyleModifierVyAA5ColorVGGtGGMR);
  lazy protocol witness table accessor for type TupleView<(SashStandardView, <<opaque return type of View.componentTapped(isNavigation:perform:)>>.0, StatusIndicatorView)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type VStack<TupleView<(<<opaque return type of View.componentSpacing(top:bottom:)>>.0, ModifiedContent<HStack<TupleView<(Text, Text)>>, _ForegroundStyleModifier<Color>>)>> and conformance VStack<A>, &_s7SwiftUI6VStackVyAA9TupleViewVyAA0E0P07SnippetB0E16componentSpacing3top6bottomQr12CoreGraphics7CGFloatV_ANtFQOyAA4TextV_Qo__AA15ModifiedContentVyAA6HStackVyAEyAP_APtGGAA24_ForegroundStyleModifierVyAA5ColorVGGtGGMd, &_s7SwiftUI6VStackVyAA9TupleViewVyAA0E0P07SnippetB0E16componentSpacing3top6bottomQr12CoreGraphics7CGFloatV_ANtFQOyAA4TextV_Qo__AA15ModifiedContentVyAA6HStackVyAEyAP_APtGGAA24_ForegroundStyleModifierVyAA5ColorVGGtGGMR);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_273E43C74()
{
  v1 = type metadata accessor for SnippetHeaderView();
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = v0 + v3;
  v6 = type metadata accessor for SnippetHeaderModel();
  if (!(*(*(v6 - 8) + 48))(v0 + v3, 1, v6))
  {
    v7 = type metadata accessor for SpeakableString();
    (*(*(v7 - 8) + 8))(v0 + v3, v7);
    v8 = *(v5 + *(v6 + 20) + 8);

    v9 = *(v5 + *(v6 + 24) + 8);
  }

  v10 = *(v1 + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA11ColorSchemeO_GMd, &_s7SwiftUI11EnvironmentV7ContentOyAA11ColorSchemeO_GMR);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = type metadata accessor for ColorScheme();
    (*(*(v11 - 8) + 8))(v5 + v10, v11);
  }

  else
  {
    v12 = *(v5 + v10);
  }

  v13 = *(v1 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA19ColorSchemeContrastO_GMd, &_s7SwiftUI11EnvironmentV7ContentOyAA19ColorSchemeContrastO_GMR);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v14 = type metadata accessor for ColorSchemeContrast();
    (*(*(v14 - 8) + 8))(v5 + v13, v14);
  }

  else
  {
    v15 = *(v5 + v13);
  }

  v16 = (v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  __swift_destroy_boxed_opaque_existential_1((v0 + v16));

  return MEMORY[0x2821FE8E8](v0, v16 + 40, v2 | 7);
}

uint64_t sub_273E43EB4()
{
  Snippet = type metadata accessor for TemperatureQuerySnippet();
  v28 = *(*(Snippet - 8) + 80);
  v29 = Snippet;
  v26 = *(*(Snippet - 8) + 64);
  v2 = type metadata accessor for AppPunchout();
  v3 = *(v2 - 8);
  v4 = *(v3 + 80);
  v25 = *(v3 + 64);
  v30 = v0;
  v27 = (v28 + 16) & ~v28;
  v5 = v0 + v27;
  if (!(*(v3 + 48))(v0 + v27, 1, v2))
  {
    (*(v3 + 8))(v5, v2);
  }

  Model = type metadata accessor for TemperatureQueryModel();
  v7 = Model[10];
  v8 = type metadata accessor for SpeakableString();
  v9 = *(v8 - 8);
  v10 = *(v9 + 48);
  if (!v10(v5 + v7, 1, v8))
  {
    (*(v9 + 8))(v5 + v7, v8);
  }

  v11 = *(v5 + Model[11] + 8);

  v12 = *(v5 + Model[12] + 8);

  v13 = *(v5 + Model[13] + 8);

  v14 = *(v5 + Model[14] + 8);

  v15 = *(v5 + Model[15] + 8);

  v16 = Model[16];
  if (!v10(v5 + v16, 1, v8))
  {
    (*(v9 + 8))(v5 + v16, v8);
  }

  v17 = *(v5 + Model[17] + 8);

  v18 = v5 + Model[18];
  v19 = type metadata accessor for SnippetHeaderModel();
  if (!(*(*(v19 - 8) + 48))(v18, 1, v19))
  {
    (*(v9 + 8))(v18, v8);
    v20 = *(v18 + *(v19 + 20) + 8);

    v21 = *(v18 + *(v19 + 24) + 8);
  }

  v22 = v28 | v4;
  v23 = (v27 + v26 + v4) & ~v4;

  (*(v3 + 8))(v30 + v23, v2);

  return MEMORY[0x2821FE8E8](v30, v23 + v25, v22 | 7);
}

uint64_t sub_273E44204()
{
  outlined consume of Text.Storage(*(v0 + 16), *(v0 + 24), *(v0 + 32));
  v1 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_273E44248(uint64_t a1, uint64_t a2, uint64_t a3)
{
  Model = type metadata accessor for TemperatureQueryModel();
  v7 = *(Model - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, Model);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_273E44310(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for TemperatureQueryModel();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2;
  }

  return result;
}

uint64_t sub_273E443D4()
{
  outlined consume of Text.Storage(*(v0 + 16), *(v0 + 24), *(v0 + 32));
  v1 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_273E44418(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit11AppPunchoutVSgMd, &_s10SnippetKit11AppPunchoutVSgMR);
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 32);

    return v10(v11, a2, v9);
  }
}

void *sub_273E444E0(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *result = a2;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit11AppPunchoutVSgMd, &_s10SnippetKit11AppPunchoutVSgMR);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 32);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_273E445A8()
{
  outlined consume of Text.Storage(*(v0 + 16), *(v0 + 24), *(v0 + 32));
  v1 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_273E445EC()
{
  v1 = type metadata accessor for SnippetHeaderView();
  v2 = *(*(v1 - 8) + 80);
  v25 = *(*(v1 - 8) + 64);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewP07SnippetB0E16componentSpacing3top6bottomQr12CoreGraphics7CGFloatV_AJtFQOyAcDE10separators_10isOverrideQr0D3Kit14SeparatorStyleO_SbtFQOyAD018FactItemHeroNumberC0V_Qo__Qo_Md, &_s7SwiftUI4ViewP07SnippetB0E16componentSpacing3top6bottomQr12CoreGraphics7CGFloatV_AJtFQOyAcDE10separators_10isOverrideQr0D3Kit14SeparatorStyleO_SbtFQOyAD018FactItemHeroNumberC0V_Qo__Qo_MR);
  v3 = *(v26 - 8);
  v4 = *(v3 + 80);
  v23 = *(v3 + 64);
  v5 = type metadata accessor for StatusIndicatorView();
  v6 = *(v5 - 8);
  v7 = *(v6 + 80);
  v24 = *(v6 + 64);
  v8 = v0 + ((v2 + 16) & ~v2);
  v9 = type metadata accessor for SnippetHeaderModel();
  if (!(*(*(v9 - 8) + 48))(v8, 1, v9))
  {
    v10 = type metadata accessor for SpeakableString();
    (*(*(v10 - 8) + 8))(v0 + ((v2 + 16) & ~v2), v10);
    v11 = *(v8 + *(v9 + 20) + 8);

    v12 = *(v8 + *(v9 + 24) + 8);
  }

  v13 = *(v1 + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA11ColorSchemeO_GMd, &_s7SwiftUI11EnvironmentV7ContentOyAA11ColorSchemeO_GMR);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v14 = type metadata accessor for ColorScheme();
    (*(*(v14 - 8) + 8))(v8 + v13, v14);
  }

  else
  {
    v15 = *(v8 + v13);
  }

  v16 = *(v1 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA19ColorSchemeContrastO_GMd, &_s7SwiftUI11EnvironmentV7ContentOyAA19ColorSchemeContrastO_GMR);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v17 = type metadata accessor for ColorSchemeContrast();
    (*(*(v17 - 8) + 8))(v8 + v16, v17);
  }

  else
  {
    v18 = *(v8 + v16);
  }

  v19 = v2 | v4 | v7;
  v20 = (((v2 + 16) & ~v2) + v25 + v4) & ~v4;
  v21 = (v20 + v23 + v7) & ~v7;
  (*(v3 + 8))(v0 + v20, v26);
  (*(v6 + 8))(v0 + v21, v5);

  return MEMORY[0x2821FE8E8](v0, v21 + v24, v19 | 7);
}

uint64_t sub_273E44948()
{
  v1 = type metadata accessor for HealthDataLogSnippet();
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v26 = *(*(v1 - 8) + 64);
  v4 = type metadata accessor for AppPunchout();
  v5 = *(v4 - 8);
  v6 = *(v5 + 80);
  v25 = *(v5 + 64);
  v7 = v0 + v3;
  v8 = type metadata accessor for SnippetHeaderModel();
  if (!(*(*(v8 - 8) + 48))(v0 + v3, 1, v8))
  {
    v9 = type metadata accessor for SpeakableString();
    (*(*(v9 - 8) + 8))(v0 + v3, v9);
    v10 = *(v7 + *(v8 + 20) + 8);

    v11 = *(v7 + *(v8 + 24) + 8);
  }

  v12 = type metadata accessor for HealthDataLogModel();
  v13 = *(v7 + v12[5]);

  v14 = *(v7 + v12[6] + 8);

  v15 = *(v7 + v12[7] + 8);

  v16 = *(v7 + v12[8] + 8);

  v17 = *(v7 + v12[9] + 8);

  v18 = v12[10];
  if (!(*(v5 + 48))(v7 + v18, 1, v4))
  {
    (*(v5 + 8))(v7 + v18, v4);
  }

  v19 = *(v7 + v12[11] + 8);

  v20 = *(v1 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA11ColorSchemeO_GMd, &_s7SwiftUI11EnvironmentV7ContentOyAA11ColorSchemeO_GMR);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v21 = type metadata accessor for ColorScheme();
    (*(*(v21 - 8) + 8))(v7 + v20, v21);
  }

  else
  {
    v22 = *(v7 + v20);
  }

  v23 = (v3 + v26 + v6) & ~v6;
  (*(v5 + 8))(v0 + v23, v4);

  return MEMORY[0x2821FE8E8](v0, v23 + v25, v2 | v6 | 7);
}

uint64_t sub_273E44C58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for HealthDataLogModel();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 2147483646)
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }

  else
  {
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentVyAA11ColorSchemeOGMd, &_s7SwiftUI11EnvironmentVyAA11ColorSchemeOGMR);
    v13 = *(*(v12 - 8) + 48);
    v14 = a1 + *(a3 + 24);

    return v13(v14, a2, v12);
  }
}

uint64_t sub_273E44D94(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for HealthDataLogModel();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 2147483646)
  {
    *(a1 + *(a4 + 20)) = a2;
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentVyAA11ColorSchemeOGMd, &_s7SwiftUI11EnvironmentVyAA11ColorSchemeOGMR);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 24);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t sub_273E44EDC()
{
  v1 = type metadata accessor for SnippetHeaderView();
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = v0 + v3;
  v6 = type metadata accessor for SnippetHeaderModel();
  if (!(*(*(v6 - 8) + 48))(v0 + v3, 1, v6))
  {
    v7 = type metadata accessor for SpeakableString();
    (*(*(v7 - 8) + 8))(v0 + v3, v7);
    v8 = *(v5 + *(v6 + 20) + 8);

    v9 = *(v5 + *(v6 + 24) + 8);
  }

  v10 = *(v1 + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA11ColorSchemeO_GMd, &_s7SwiftUI11EnvironmentV7ContentOyAA11ColorSchemeO_GMR);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = type metadata accessor for ColorScheme();
    (*(*(v11 - 8) + 8))(v5 + v10, v11);
  }

  else
  {
    v12 = *(v5 + v10);
  }

  v13 = *(v1 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA19ColorSchemeContrastO_GMd, &_s7SwiftUI11EnvironmentV7ContentOyAA19ColorSchemeContrastO_GMR);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v14 = type metadata accessor for ColorSchemeContrast();
    (*(*(v14 - 8) + 8))(v5 + v13, v14);
  }

  else
  {
    v15 = *(v5 + v13);
  }

  v16 = (v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v17 = *(v0 + v16);

  return MEMORY[0x2821FE8E8](v0, v16 + 8, v2 | 7);
}

uint64_t sub_273E4511C()
{
  Snippet = type metadata accessor for GenericQuerySnippet();
  v1 = *(*(Snippet - 8) + 80);
  v25 = *(*(Snippet - 8) + 64);
  v2 = type metadata accessor for AppPunchout();
  v3 = *(v2 - 8);
  v4 = *(v3 + 80);
  v24 = *(v3 + 64);
  v5 = v0 + ((v1 + 16) & ~v1);
  if (!(*(v3 + 48))(v5, 1, v2))
  {
    (*(v3 + 8))(v0 + ((v1 + 16) & ~v1), v2);
  }

  Model = type metadata accessor for GenericQueryModel();
  v7 = Model[10];
  v8 = type metadata accessor for SpeakableString();
  v9 = *(v8 - 8);
  if (!(*(v9 + 48))(v5 + v7, 1, v8))
  {
    (*(v9 + 8))(v5 + v7, v8);
  }

  v10 = *(v5 + Model[11] + 8);

  v11 = *(v5 + Model[12] + 8);

  v12 = *(v5 + Model[13] + 8);

  v13 = *(v5 + Model[14] + 8);

  v14 = *(v5 + Model[15] + 8);

  v15 = *(v5 + Model[16] + 8);

  v16 = *(v5 + Model[17] + 8);

  v17 = v5 + Model[18];
  v18 = type metadata accessor for SnippetHeaderModel();
  if (!(*(*(v18 - 8) + 48))(v17, 1, v18))
  {
    (*(v9 + 8))(v17, v8);
    v19 = *(v17 + *(v18 + 20) + 8);

    v20 = *(v17 + *(v18 + 24) + 8);
  }

  v21 = v1 | v4;
  v22 = (((v1 + 16) & ~v1) + v25 + v4) & ~v4;

  (*(v3 + 8))(v0 + v22, v2);

  return MEMORY[0x2821FE8E8](v0, v22 + v24, v21 | 7);
}

uint64_t sub_273E45434(uint64_t a1, uint64_t a2, uint64_t a3)
{
  Model = type metadata accessor for GenericQueryModel();
  v7 = *(Model - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, Model);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_273E454FC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for GenericQueryModel();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2;
  }

  return result;
}

uint64_t sub_273E45618(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit11AppPunchoutVSgMd, &_s10SnippetKit11AppPunchoutVSgMR);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 2147483646)
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }

  else
  {
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WellnessUI18SnippetHeaderModelVSgMd, &_s10WellnessUI18SnippetHeaderModelVSgMR);
    v13 = *(*(v12 - 8) + 48);
    v14 = a1 + *(a3 + 32);

    return v13(v14, a2, v12);
  }
}

uint64_t sub_273E45764(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit11AppPunchoutVSgMd, &_s10SnippetKit11AppPunchoutVSgMR);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 2147483646)
  {
    *(a1 + *(a4 + 20) + 8) = a2;
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WellnessUI18SnippetHeaderModelVSgMd, &_s10WellnessUI18SnippetHeaderModelVSgMR);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 32);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t sub_273E458B0()
{
  outlined consume of Text.Storage(*(v0 + 16), *(v0 + 24), *(v0 + 32));
  v1 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_273E458F4()
{
  v1 = type metadata accessor for SnippetHeaderView();
  v2 = *(*(v1 - 8) + 80);
  v25 = *(*(v1 - 8) + 64);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewP07SnippetB0E16componentSpacing3top6bottomQr12CoreGraphics7CGFloatV_AJtFQOyAcDE10separators_10isOverrideQr0D3Kit14SeparatorStyleO_SbtFQOyAD018FactItemHeroNumberC0V_Qo__Qo_Md, &_s7SwiftUI4ViewP07SnippetB0E16componentSpacing3top6bottomQr12CoreGraphics7CGFloatV_AJtFQOyAcDE10separators_10isOverrideQr0D3Kit14SeparatorStyleO_SbtFQOyAD018FactItemHeroNumberC0V_Qo__Qo_MR);
  v3 = *(v26 - 8);
  v4 = *(v3 + 80);
  v23 = *(v3 + 64);
  v5 = type metadata accessor for StatusIndicatorView();
  v6 = *(v5 - 8);
  v7 = *(v6 + 80);
  v24 = *(v6 + 64);
  v8 = v0 + ((v2 + 16) & ~v2);
  v9 = type metadata accessor for SnippetHeaderModel();
  if (!(*(*(v9 - 8) + 48))(v8, 1, v9))
  {
    v10 = type metadata accessor for SpeakableString();
    (*(*(v10 - 8) + 8))(v0 + ((v2 + 16) & ~v2), v10);
    v11 = *(v8 + *(v9 + 20) + 8);

    v12 = *(v8 + *(v9 + 24) + 8);
  }

  v13 = *(v1 + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA11ColorSchemeO_GMd, &_s7SwiftUI11EnvironmentV7ContentOyAA11ColorSchemeO_GMR);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v14 = type metadata accessor for ColorScheme();
    (*(*(v14 - 8) + 8))(v8 + v13, v14);
  }

  else
  {
    v15 = *(v8 + v13);
  }

  v16 = *(v1 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA19ColorSchemeContrastO_GMd, &_s7SwiftUI11EnvironmentV7ContentOyAA19ColorSchemeContrastO_GMR);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v17 = type metadata accessor for ColorSchemeContrast();
    (*(*(v17 - 8) + 8))(v8 + v16, v17);
  }

  else
  {
    v18 = *(v8 + v16);
  }

  v19 = v2 | v4 | v7;
  v20 = (((v2 + 16) & ~v2) + v25 + v4) & ~v4;
  v21 = (v20 + v23 + v7) & ~v7;
  (*(v3 + 8))(v0 + v20, v26);
  (*(v6 + 8))(v0 + v21, v5);

  return MEMORY[0x2821FE8E8](v0, v21 + v24, v19 | 7);
}

uint64_t sub_273E45C50()
{
  v1 = type metadata accessor for CycleTrackingLogSnippet();
  v2 = *(*(v1 - 8) + 80);
  v25 = *(*(v1 - 8) + 64);
  v3 = type metadata accessor for AppPunchout();
  v4 = *(v3 - 8);
  v5 = *(v4 + 80);
  v24 = *(v4 + 64);
  v6 = v0 + ((v2 + 16) & ~v2);
  if (!(*(v4 + 48))(v6, 1, v3))
  {
    (*(v4 + 8))(v0 + ((v2 + 16) & ~v2), v3);
  }

  v7 = type metadata accessor for CycleTrackingLogModel();
  v8 = *(v6 + v7[5] + 8);

  v9 = *(v6 + v7[6] + 8);

  v10 = *(v6 + v7[7] + 8);

  v11 = v6 + v7[8];
  v12 = type metadata accessor for SnippetHeaderModel();
  if (!(*(*(v12 - 8) + 48))(v11, 1, v12))
  {
    v13 = type metadata accessor for SpeakableString();
    (*(*(v13 - 8) + 8))(v11, v13);
    v14 = *(v11 + *(v12 + 20) + 8);

    v15 = *(v11 + *(v12 + 24) + 8);
  }

  v16 = v7[9];
  v17 = type metadata accessor for URL();
  v18 = *(v17 - 8);
  if (!(*(v18 + 48))(v6 + v16, 1, v17))
  {
    (*(v18 + 8))(v6 + v16, v17);
  }

  v19 = *(v1 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA11ColorSchemeO_GMd, &_s7SwiftUI11EnvironmentV7ContentOyAA11ColorSchemeO_GMR);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v20 = type metadata accessor for ColorScheme();
    (*(*(v20 - 8) + 8))(v6 + v19, v20);
  }

  else
  {
    v21 = *(v6 + v19);
  }

  v22 = (((v2 + 16) & ~v2) + v25 + v5) & ~v5;
  (*(v4 + 8))(v0 + v22, v3);

  return MEMORY[0x2821FE8E8](v0, v22 + v24, v2 | v5 | 7);
}

uint64_t sub_273E45FC8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for CycleTrackingLogModel();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 2147483646)
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }

  else
  {
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentVyAA11ColorSchemeOGMd, &_s7SwiftUI11EnvironmentVyAA11ColorSchemeOGMR);
    v13 = *(*(v12 - 8) + 48);
    v14 = a1 + *(a3 + 24);

    return v13(v14, a2, v12);
  }
}

uint64_t sub_273E46104(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for CycleTrackingLogModel();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 2147483646)
  {
    *(a1 + *(a4 + 20)) = a2;
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentVyAA11ColorSchemeOGMd, &_s7SwiftUI11EnvironmentVyAA11ColorSchemeOGMR);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 24);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t sub_273E46240()
{
  outlined consume of Text.Storage(*(v0 + 16), *(v0 + 24), *(v0 + 32));
  v1 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_273E46284()
{
  v1 = type metadata accessor for SnippetHeaderView();
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = v0 + v3;
  v6 = type metadata accessor for SnippetHeaderModel();
  if (!(*(*(v6 - 8) + 48))(v0 + v3, 1, v6))
  {
    v7 = type metadata accessor for SpeakableString();
    (*(*(v7 - 8) + 8))(v0 + v3, v7);
    v8 = *(v5 + *(v6 + 20) + 8);

    v9 = *(v5 + *(v6 + 24) + 8);
  }

  v10 = *(v1 + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA11ColorSchemeO_GMd, &_s7SwiftUI11EnvironmentV7ContentOyAA11ColorSchemeO_GMR);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = type metadata accessor for ColorScheme();
    (*(*(v11 - 8) + 8))(v5 + v10, v11);
  }

  else
  {
    v12 = *(v5 + v10);
  }

  v13 = *(v1 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA19ColorSchemeContrastO_GMd, &_s7SwiftUI11EnvironmentV7ContentOyAA19ColorSchemeContrastO_GMR);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v14 = type metadata accessor for ColorSchemeContrast();
    (*(*(v14 - 8) + 8))(v5 + v13, v14);
  }

  else
  {
    v15 = *(v5 + v13);
  }

  v16 = (v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v17 = *(v0 + v16);

  return MEMORY[0x2821FE8E8](v0, v16 + 8, v2 | 7);
}

uint64_t sub_273E464C4()
{
  Snippet = type metadata accessor for BloodPressureQuerySnippet();
  v1 = *(*(Snippet - 8) + 80);
  v2 = (v1 + 16) & ~v1;
  v30 = *(*(Snippet - 8) + 64);
  v3 = type metadata accessor for AppPunchout();
  v4 = *(v3 - 8);
  v5 = *(v4 + 80);
  v29 = *(v4 + 64);
  v6 = v0 + v2;
  if (!(*(v4 + 48))(v0 + v2, 1, v3))
  {
    (*(v4 + 8))(v0 + v2, v3);
  }

  Model = type metadata accessor for BloodPressureQueryModel();
  v8 = *(v6 + Model[11] + 8);

  v9 = *(v6 + Model[12] + 8);

  v10 = *(v6 + Model[13] + 8);

  v11 = *(v6 + Model[14] + 8);

  v12 = *(v6 + Model[15] + 8);

  v13 = *(v6 + Model[16] + 8);

  v14 = *(v6 + Model[17] + 8);

  v15 = *(v6 + Model[18] + 8);

  v16 = *(v6 + Model[19] + 8);

  v17 = Model[20];
  v18 = type metadata accessor for URL();
  v19 = *(v18 - 8);
  if (!(*(v19 + 48))(v6 + v17, 1, v18))
  {
    (*(v19 + 8))(v6 + v17, v18);
  }

  v20 = *(v6 + Model[21] + 8);

  v21 = *(v6 + Model[22] + 8);

  v22 = v6 + Model[23];
  v23 = type metadata accessor for SnippetHeaderModel();
  if (!(*(*(v23 - 8) + 48))(v22, 1, v23))
  {
    v24 = type metadata accessor for SpeakableString();
    (*(*(v24 - 8) + 8))(v22, v24);
    v25 = *(v22 + *(v23 + 20) + 8);

    v26 = *(v22 + *(v23 + 24) + 8);
  }

  v27 = (((v1 + 16) & ~v1) + v30 + v5) & ~v5;

  (*(v4 + 8))(v0 + v27, v3);

  return MEMORY[0x2821FE8E8](v0, v27 + v29, v1 | v5 | 7);
}

uint64_t sub_273E46838(uint64_t a1, uint64_t a2, uint64_t a3)
{
  Model = type metadata accessor for BloodPressureQueryModel();
  v7 = *(Model - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, Model);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_273E46900(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for BloodPressureQueryModel();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2;
  }

  return result;
}

uint64_t sub_273E469F4(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit11AppPunchoutVSgMd, &_s10SnippetKit11AppPunchoutVSgMR);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + a3[10];
    goto LABEL_5;
  }

  if (a2 == 2147483646)
  {
    v14 = *(a1 + a3[11] + 8);
    if (v14 >= 0xFFFFFFFF)
    {
      LODWORD(v14) = -1;
    }

    v15 = v14 - 1;
    if (v15 < 0)
    {
      v15 = -1;
    }

    return (v15 + 1);
  }

  else
  {
    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WellnessUI18SnippetHeaderModelVSgMd, &_s10WellnessUI18SnippetHeaderModelVSgMR);
    v17 = *(*(v16 - 8) + 48);
    v18 = a1 + a3[18];

    return v17(v18, a2, v16);
  }
}

uint64_t sub_273E46B9C(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit11AppPunchoutVSgMd, &_s10SnippetKit11AppPunchoutVSgMR);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    return v11(v12, a2, a2, v10);
  }

  result = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v14 = *(result - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + a4[10];
    goto LABEL_5;
  }

  if (a3 == 2147483646)
  {
    *(a1 + a4[11] + 8) = a2;
  }

  else
  {
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WellnessUI18SnippetHeaderModelVSgMd, &_s10WellnessUI18SnippetHeaderModelVSgMR);
    v16 = *(*(v15 - 8) + 56);
    v17 = a1 + a4[18];

    return v16(v17, a2, a2, v15);
  }

  return result;
}

uint64_t sub_273E46D6C(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit11AppPunchoutVSgMd, &_s10SnippetKit11AppPunchoutVSgMR);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + a3[9];
    goto LABEL_5;
  }

  if (a2 == 2147483646)
  {
    v14 = *(a1 + a3[10] + 8);
    if (v14 >= 0xFFFFFFFF)
    {
      LODWORD(v14) = -1;
    }

    v15 = v14 - 1;
    if (v15 < 0)
    {
      v15 = -1;
    }

    return (v15 + 1);
  }

  else
  {
    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WellnessUI18SnippetHeaderModelVSgMd, &_s10WellnessUI18SnippetHeaderModelVSgMR);
    v17 = *(*(v16 - 8) + 48);
    v18 = a1 + a3[16];

    return v17(v18, a2, v16);
  }
}

uint64_t sub_273E46F14(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit11AppPunchoutVSgMd, &_s10SnippetKit11AppPunchoutVSgMR);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    return v11(v12, a2, a2, v10);
  }

  result = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v14 = *(result - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + a4[9];
    goto LABEL_5;
  }

  if (a3 == 2147483646)
  {
    *(a1 + a4[10] + 8) = a2;
  }

  else
  {
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WellnessUI18SnippetHeaderModelVSgMd, &_s10WellnessUI18SnippetHeaderModelVSgMR);
    v16 = *(*(v15 - 8) + 56);
    v17 = a1 + a4[16];

    return v16(v17, a2, a2, v15);
  }

  return result;
}

uint64_t sub_273E470BC()
{
  v1 = type metadata accessor for SnippetHeaderView();
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = v0 + v3;
  v6 = type metadata accessor for SnippetHeaderModel();
  if (!(*(*(v6 - 8) + 48))(v0 + v3, 1, v6))
  {
    v7 = type metadata accessor for SpeakableString();
    (*(*(v7 - 8) + 8))(v0 + v3, v7);
    v8 = *(v5 + *(v6 + 20) + 8);

    v9 = *(v5 + *(v6 + 24) + 8);
  }

  v10 = *(v1 + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA11ColorSchemeO_GMd, &_s7SwiftUI11EnvironmentV7ContentOyAA11ColorSchemeO_GMR);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = type metadata accessor for ColorScheme();
    (*(*(v11 - 8) + 8))(v5 + v10, v11);
  }

  else
  {
    v12 = *(v5 + v10);
  }

  v13 = *(v1 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA19ColorSchemeContrastO_GMd, &_s7SwiftUI11EnvironmentV7ContentOyAA19ColorSchemeContrastO_GMR);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v14 = type metadata accessor for ColorSchemeContrast();
    (*(*(v14 - 8) + 8))(v5 + v13, v14);
  }

  else
  {
    v15 = *(v5 + v13);
  }

  v16 = (v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v17 = *(v0 + v16);

  return MEMORY[0x2821FE8E8](v0, v16 + 8, v2 | 7);
}

uint64_t sub_273E472FC()
{
  Snippet = type metadata accessor for OxygenSaturationQuerySnippet();
  v1 = *(*(Snippet - 8) + 80);
  v24 = *(*(Snippet - 8) + 64);
  v2 = type metadata accessor for AppPunchout();
  v3 = *(v2 - 8);
  v4 = *(v3 + 80);
  v23 = *(v3 + 64);
  v5 = v0 + ((v1 + 16) & ~v1);
  if (!(*(v3 + 48))(v5, 1, v2))
  {
    (*(v3 + 8))(v0 + ((v1 + 16) & ~v1), v2);
  }

  Model = type metadata accessor for OxygenSaturationQueryModel();
  v7 = Model[9];
  v8 = type metadata accessor for SpeakableString();
  v9 = *(v8 - 8);
  if (!(*(v9 + 48))(v5 + v7, 1, v8))
  {
    (*(v9 + 8))(v5 + v7, v8);
  }

  v10 = *(v5 + Model[10] + 8);

  v11 = *(v5 + Model[11] + 8);

  v12 = *(v5 + Model[12] + 8);

  v13 = *(v5 + Model[13] + 8);

  v14 = *(v5 + Model[14] + 8);

  v15 = *(v5 + Model[15] + 8);

  v16 = v5 + Model[16];
  v17 = type metadata accessor for SnippetHeaderModel();
  if (!(*(*(v17 - 8) + 48))(v16, 1, v17))
  {
    (*(v9 + 8))(v16, v8);
    v18 = *(v16 + *(v17 + 20) + 8);

    v19 = *(v16 + *(v17 + 24) + 8);
  }

  v20 = v1 | v4;
  v21 = (((v1 + 16) & ~v1) + v24 + v4) & ~v4;

  (*(v3 + 8))(v0 + v21, v2);

  return MEMORY[0x2821FE8E8](v0, v21 + v23, v20 | 7);
}

uint64_t sub_273E47604(uint64_t a1, uint64_t a2, uint64_t a3)
{
  Model = type metadata accessor for OxygenSaturationQueryModel();
  v7 = *(Model - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, Model);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_273E476CC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for OxygenSaturationQueryModel();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2;
  }

  return result;
}

uint64_t sub_273E477C8@<X0>(uint64_t *a1@<X8>)
{
  result = EnvironmentValues.foregroundColor.getter();
  *a1 = result;
  return result;
}

uint64_t sub_273E477F4(uint64_t *a1)
{
  v1 = *a1;

  return EnvironmentValues.foregroundColor.setter();
}

uint64_t sub_273E47820()
{
  outlined consume of Text.Storage(*(v0 + 16), *(v0 + 24), *(v0 + 32));
  v1 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_273E47864()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewP07SnippetB0E10separators_10isOverrideQr0D3Kit14SeparatorStyleO_SbtFQOyAD014SimpleItemRichC0V_Qo_Md, &_s7SwiftUI4ViewP07SnippetB0E10separators_10isOverrideQr0D3Kit14SeparatorStyleO_SbtFQOyAD014SimpleItemRichC0V_Qo_MR);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  v6 = (v5 + v3 + v4) & ~v3;
  v7 = type metadata accessor for SimpleItemRichView();
  v8 = *(v7 - 8);
  v9 = *(v8 + 80);
  v10 = (v6 + v5 + v9) & ~v9;
  v11 = *(v8 + 64);
  v14 = v3 | v9;
  v12 = *(v2 + 8);
  v12(v0 + v4, v1);
  v12(v0 + v6, v1);
  (*(v8 + 8))(v0 + v10, v7);

  return MEMORY[0x2821FE8E8](v0, v10 + v11, v14 | 7);
}

uint64_t sub_273E479E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for URL();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_273E47A94(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for URL();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_273E47B38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for SpeakableString();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_273E47BF8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for SpeakableString();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_273E47CC0()
{
  outlined consume of Text.Storage(*(v0 + 16), *(v0 + 24), *(v0 + 32));
  v1 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_273E47D04()
{
  v1 = type metadata accessor for SnippetHeaderView();
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v21 = *(*(v1 - 8) + 64);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewP07SnippetB0E16componentSpacing3top6bottomQr12CoreGraphics7CGFloatV_AJtFQOyAD018FactItemHeroNumberC0V_Qo_Md, &_s7SwiftUI4ViewP07SnippetB0E16componentSpacing3top6bottomQr12CoreGraphics7CGFloatV_AJtFQOyAD018FactItemHeroNumberC0V_Qo_MR);
  v5 = *(v4 - 8);
  v6 = *(v5 + 80);
  v7 = *(v5 + 64);
  v8 = v0 + v3;
  v9 = type metadata accessor for SnippetHeaderModel();
  if (!(*(*(v9 - 8) + 48))(v0 + v3, 1, v9))
  {
    v10 = type metadata accessor for SpeakableString();
    (*(*(v10 - 8) + 8))(v0 + v3, v10);
    v11 = *(v8 + *(v9 + 20) + 8);

    v12 = *(v8 + *(v9 + 24) + 8);
  }

  v13 = *(v1 + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA11ColorSchemeO_GMd, &_s7SwiftUI11EnvironmentV7ContentOyAA11ColorSchemeO_GMR);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v14 = type metadata accessor for ColorScheme();
    (*(*(v14 - 8) + 8))(v8 + v13, v14);
  }

  else
  {
    v15 = *(v8 + v13);
  }

  v16 = *(v1 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA19ColorSchemeContrastO_GMd, &_s7SwiftUI11EnvironmentV7ContentOyAA19ColorSchemeContrastO_GMR);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v17 = type metadata accessor for ColorSchemeContrast();
    (*(*(v17 - 8) + 8))(v8 + v16, v17);
  }

  else
  {
    v18 = *(v8 + v16);
  }

  v19 = (v3 + v21 + v6) & ~v6;
  (*(v5 + 8))(v0 + v19, v4);

  return MEMORY[0x2821FE8E8](v0, v19 + v7, v2 | v6 | 7);
}

uint64_t sub_273E47FD0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for SingleActivitySummaryModel();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_273E48098(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for SingleActivitySummaryModel();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2;
  }

  return result;
}

uint64_t sub_273E4815C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 16);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit11AppPunchoutVSgMd, &_s10SnippetKit11AppPunchoutVSgMR);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 24);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WellnessUI18SnippetHeaderModelVSgMd, &_s10WellnessUI18SnippetHeaderModelVSgMR);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 56);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_273E48298(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 16) = (a2 - 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit11AppPunchoutVSgMd, &_s10SnippetKit11AppPunchoutVSgMR);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 24);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WellnessUI18SnippetHeaderModelVSgMd, &_s10WellnessUI18SnippetHeaderModelVSgMR);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 56);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_273E483E0()
{
  outlined consume of Text.Storage(*(v0 + 16), *(v0 + 24), *(v0 + 32));
  v1 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_273E48424()
{
  v1 = type metadata accessor for SnippetHeaderView();
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = v0 + v3;
  v6 = type metadata accessor for SnippetHeaderModel();
  if (!(*(*(v6 - 8) + 48))(v0 + v3, 1, v6))
  {
    v7 = type metadata accessor for SpeakableString();
    (*(*(v7 - 8) + 8))(v0 + v3, v7);
    v8 = *(v5 + *(v6 + 20) + 8);

    v9 = *(v5 + *(v6 + 24) + 8);
  }

  v10 = *(v1 + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA11ColorSchemeO_GMd, &_s7SwiftUI11EnvironmentV7ContentOyAA11ColorSchemeO_GMR);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = type metadata accessor for ColorScheme();
    (*(*(v11 - 8) + 8))(v5 + v10, v11);
  }

  else
  {
    v12 = *(v5 + v10);
  }

  v13 = *(v1 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA19ColorSchemeContrastO_GMd, &_s7SwiftUI11EnvironmentV7ContentOyAA19ColorSchemeContrastO_GMR);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v14 = type metadata accessor for ColorSchemeContrast();
    (*(*(v14 - 8) + 8))(v5 + v13, v14);
  }

  else
  {
    v15 = *(v5 + v13);
  }

  v16 = (v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v17 = *(v0 + v16);

  return MEMORY[0x2821FE8E8](v0, v16 + 8, v2 | 7);
}

uint64_t sub_273E48664()
{
  Snippet = type metadata accessor for HeightQuerySnippet();
  v1 = *(*(Snippet - 8) + 80);
  v19 = *(*(Snippet - 8) + 64);
  v2 = type metadata accessor for AppPunchout();
  v3 = *(v2 - 8);
  v4 = *(v3 + 80);
  v20 = *(v3 + 64);
  v23 = v0;
  v5 = v0 + ((v1 + 16) & ~v1);
  if (!(*(v3 + 48))(v5, 1, v2))
  {
    (*(v3 + 8))(v5, v2);
  }

  v21 = v2;
  Model = type metadata accessor for HeightQueryModel();
  v7 = Model[8];
  v8 = type metadata accessor for SpeakableString();
  v9 = *(v8 - 8);
  if (!(*(v9 + 48))(v5 + v7, 1, v8))
  {
    (*(v9 + 8))(v5 + v7, v8);
  }

  v10 = v5 + Model[10];
  v11 = type metadata accessor for SnippetHeaderModel();
  if (!(*(*(v11 - 8) + 48))(v10, 1, v11))
  {
    (*(v9 + 8))(v10, v8);
    v12 = *(v10 + *(v11 + 20) + 8);

    v13 = *(v10 + *(v11 + 24) + 8);
  }

  v14 = (((v1 + 16) & ~v1) + v19 + v4) & ~v4;
  v15 = *(v5 + Model[11] + 8);

  v16 = *(v5 + Model[12] + 8);

  v17 = *(v5 + Model[13] + 8);

  (*(v3 + 8))(v23 + v14, v21);

  return MEMORY[0x2821FE8E8](v23, v14 + v20, v1 | v4 | 7);
}

uint64_t sub_273E48948(uint64_t a1, uint64_t a2, uint64_t a3)
{
  Model = type metadata accessor for HeightQueryModel();
  v7 = *(Model - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, Model);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_273E48A10(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for HeightQueryModel();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2;
  }

  return result;
}

uint64_t sub_273E48AC8(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit11AppPunchoutVSgMd, &_s10SnippetKit11AppPunchoutVSgMR);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_8:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[8];
LABEL_7:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_8;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WellnessUI18SnippetHeaderModelVSgMd, &_s10WellnessUI18SnippetHeaderModelVSgMR);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[10];
    goto LABEL_7;
  }

  v16 = *(a1 + a3[11] + 8);
  if (v16 >= 0xFFFFFFFF)
  {
    LODWORD(v16) = -1;
  }

  v17 = v16 - 1;
  if (v17 < 0)
  {
    v17 = -1;
  }

  return (v17 + 1);
}

uint64_t sub_273E48C50(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit11AppPunchoutVSgMd, &_s10SnippetKit11AppPunchoutVSgMR);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    if (*(*(v13 - 8) + 84) == a3)
    {
      v10 = v13;
      v14 = *(v13 - 8);
      v15 = a4[8];
    }

    else
    {
      result = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WellnessUI18SnippetHeaderModelVSgMd, &_s10WellnessUI18SnippetHeaderModelVSgMR);
      if (*(*(result - 8) + 84) != a3)
      {
        *(a1 + a4[11] + 8) = a2;
        return result;
      }

      v10 = result;
      v14 = *(result - 8);
      v15 = a4[10];
    }

    v11 = *(v14 + 56);
    v12 = a1 + v15;
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_273E48DD4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WellnessUI18SnippetHeaderModelVSgMd, &_s10WellnessUI18SnippetHeaderModelVSgMR);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentVyAA11ColorSchemeOGMd, &_s7SwiftUI11EnvironmentVyAA11ColorSchemeOGMR);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentVyAA19ColorSchemeContrastOGMd, _s7SwiftUI11EnvironmentVyAA19ColorSchemeContrastOGMR);
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + *(a3 + 24);

  return v15(v16, a2, v14);
}

uint64_t sub_273E48F38(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WellnessUI18SnippetHeaderModelVSgMd, &_s10WellnessUI18SnippetHeaderModelVSgMR);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    return v11(v12, a2, a2, v10);
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentVyAA11ColorSchemeOGMd, &_s7SwiftUI11EnvironmentVyAA11ColorSchemeOGMR);
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
    goto LABEL_5;
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentVyAA19ColorSchemeContrastOGMd, _s7SwiftUI11EnvironmentVyAA19ColorSchemeContrastOGMR);
  v17 = *(*(v16 - 8) + 56);
  v18 = a1 + *(a4 + 24);

  return v17(v18, a2, a2, v16);
}

uint64_t sub_273E490A8(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit11AppPunchoutVSgMd, &_s10SnippetKit11AppPunchoutVSgMR);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_3:

    return v9(v10, a2, v8);
  }

  if (a2 == 2147483646)
  {
    v12 = *(a1 + a3[5] + 8);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    v13 = v12 - 1;
    if (v13 < 0)
    {
      v13 = -1;
    }

    return (v13 + 1);
  }

  else
  {
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WellnessUI18SnippetHeaderModelVSgMd, &_s10WellnessUI18SnippetHeaderModelVSgMR);
    v15 = *(v14 - 8);
    if (*(v15 + 84) == a2)
    {
      v8 = v14;
      v9 = *(v15 + 48);
      v10 = a1 + a3[8];
      goto LABEL_3;
    }

    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    v17 = *(*(v16 - 8) + 48);
    v18 = a1 + a3[9];

    return v17(v18, a2, v16);
  }
}

uint64_t sub_273E49250(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit11AppPunchoutVSgMd, &_s10SnippetKit11AppPunchoutVSgMR);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_3:

    return v11(v12, a2, a2, v10);
  }

  if (a3 == 2147483646)
  {
    *(a1 + a4[5] + 8) = a2;
    return result;
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WellnessUI18SnippetHeaderModelVSgMd, &_s10WellnessUI18SnippetHeaderModelVSgMR);
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + a4[8];
    goto LABEL_3;
  }

  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v16 = *(*(v15 - 8) + 56);
  v17 = a1 + a4[9];

  return v16(v17, a2, a2, v15);
}

uint64_t sub_273E493FC()
{
  outlined consume of Text.Storage(*(v0 + 16), *(v0 + 24), *(v0 + 32));
  v1 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_273E49440()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewP07SnippetB0E10separators_10isOverrideQr0D3Kit14SeparatorStyleO_SbtFQOyAD018FactItemHeroNumberC0V_Qo_Md, &_s7SwiftUI4ViewP07SnippetB0E10separators_10isOverrideQr0D3Kit14SeparatorStyleO_SbtFQOyAD018FactItemHeroNumberC0V_Qo_MR);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);
  v6 = type metadata accessor for StatusIndicatorView();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v4 + v5 + v8) & ~v8;
  v10 = *(v7 + 64);
  v11 = v3 | v8;
  v12 = *(v0 + 16);

  (*(v2 + 8))(v0 + v4, v1);
  (*(v7 + 8))(v0 + v9, v6);

  return MEMORY[0x2821FE8E8](v0, v9 + v10, v11 | 7);
}

uint64_t sub_273E4959C()
{
  v1 = type metadata accessor for SpecificMedCompletedLogSnippet();
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v32 = *(*(v1 - 1) + 64);
  v4 = type metadata accessor for AppPunchout();
  v5 = *(v4 - 8);
  v6 = *(v5 + 80);
  v33 = *(v5 + 64);
  v7 = v0 + v3;
  v8 = *(v0 + v3 + 16);

  v9 = *(v0 + v3 + 32);

  v10 = *(v0 + v3 + 48);

  v11 = type metadata accessor for SpecificMedCompletedLogModel();
  v12 = v11[8];
  if (!(*(v5 + 48))(v0 + v3 + v12, 1, v4))
  {
    (*(v5 + 8))(v7 + v12, v4);
  }

  v13 = *(v7 + v11[10] + 8);

  v14 = *(v7 + v11[11] + 8);

  v15 = *(v7 + v11[12] + 8);

  v16 = *(v7 + v11[13] + 8);

  v17 = *(v7 + v11[16] + 8);

  v18 = *(v7 + v11[17] + 8);

  v19 = *(v7 + v11[18] + 8);

  v20 = v7 + v11[19];
  v21 = type metadata accessor for SnippetHeaderModel();
  if (!(*(*(v21 - 8) + 48))(v20, 1, v21))
  {
    v22 = type metadata accessor for SpeakableString();
    (*(*(v22 - 8) + 8))(v20, v22);
    v23 = *(v20 + *(v21 + 20) + 8);

    v24 = *(v20 + *(v21 + 24) + 8);
  }

  v25 = v2 | v6;
  v26 = (v3 + v32 + v6) & ~v6;
  v27 = v7 + v1[5];
  outlined consume of Text.Storage(*v27, *(v27 + 8), *(v27 + 16));
  v28 = *(v27 + 24);

  v29 = v7 + v1[6];
  outlined consume of Text.Storage(*v29, *(v29 + 8), *(v29 + 16));
  v30 = *(v29 + 24);

  (*(v5 + 8))(v0 + v26, v4);

  return MEMORY[0x2821FE8E8](v0, v26 + v33, v25 | 7);
}

uint64_t sub_273E498A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for SpecificMedCompletedLogModel();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 24);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_273E49968(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for SpecificMedCompletedLogModel();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 24) = (a2 - 1);
  }

  return result;
}

uint64_t sub_273E49A28(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit11AppPunchoutVSgMd, &_s10SnippetKit11AppPunchoutVSgMR);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + a3[9];
    goto LABEL_5;
  }

  if (a2 == 2147483646)
  {
    v14 = *(a1 + a3[10] + 8);
    if (v14 >= 0xFFFFFFFF)
    {
      LODWORD(v14) = -1;
    }

    v15 = v14 - 1;
    if (v15 < 0)
    {
      v15 = -1;
    }

    return (v15 + 1);
  }

  else
  {
    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WellnessUI18SnippetHeaderModelVSgMd, &_s10WellnessUI18SnippetHeaderModelVSgMR);
    v17 = *(*(v16 - 8) + 48);
    v18 = a1 + a3[15];

    return v17(v18, a2, v16);
  }
}

uint64_t sub_273E49BD0(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit11AppPunchoutVSgMd, &_s10SnippetKit11AppPunchoutVSgMR);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    return v11(v12, a2, a2, v10);
  }

  result = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v14 = *(result - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + a4[9];
    goto LABEL_5;
  }

  if (a3 == 2147483646)
  {
    *(a1 + a4[10] + 8) = a2;
  }

  else
  {
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WellnessUI18SnippetHeaderModelVSgMd, &_s10WellnessUI18SnippetHeaderModelVSgMR);
    v16 = *(*(v15 - 8) + 56);
    v17 = a1 + a4[15];

    return v16(v17, a2, a2, v15);
  }

  return result;
}

uint64_t MultipleDataPointView.colorScheme.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for EnvironmentValues();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA11ColorSchemeO_GMd, &_s7SwiftUI11EnvironmentV7ContentOyAA11ColorSchemeO_GMR);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = (&v17 - v10);
  v12 = type metadata accessor for MultipleDataPointView();
  outlined init with copy of Environment<ColorScheme>.Content(v1 + *(v12 + 20), v11);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = type metadata accessor for ColorScheme();
    return (*(*(v13 - 8) + 32))(a1, v11, v13);
  }

  else
  {
    v15 = *v11;
    static os_log_type_t.fault.getter();
    v16 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v7, v3);
  }
}

uint64_t MultipleDataPointView.avgValueColour.getter()
{
  v0 = type metadata accessor for ColorScheme();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = MEMORY[0x28223BE20](v0);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v11 - v6;
  MultipleDataPointView.colorScheme.getter(&v11 - v6);
  (*(v1 + 104))(v5, *MEMORY[0x277CDF3D8], v0);
  v8 = static ColorScheme.== infix(_:_:)();
  v9 = *(v1 + 8);
  v9(v5, v0);
  v9(v7, v0);
  if (v8)
  {
    return static Color.black.getter();
  }

  else
  {
    return static Color.white.getter();
  }
}

uint64_t MultipleDataPointView.average.getter()
{
  v1 = (v0 + *(type metadata accessor for MultipleDataPointView() + 24));
  result = *v1;
  v3 = *(v1 + 8);
  return result;
}

uint64_t type metadata accessor for MultipleDataPointView()
{
  result = type metadata singleton initialization cache for MultipleDataPointView;
  if (!type metadata singleton initialization cache for MultipleDataPointView)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t MultipleDataPointView.avgValueString.getter()
{
  v1 = (v0 + *(type metadata accessor for MultipleDataPointView() + 28));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t MultipleDataPointView.minValueString.getter()
{
  v1 = (v0 + *(type metadata accessor for MultipleDataPointView() + 32));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t MultipleDataPointView.maxValueString.getter()
{
  v1 = (v0 + *(type metadata accessor for MultipleDataPointView() + 36));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t MultipleDataPointView.totalValueString.getter()
{
  v1 = (v0 + *(type metadata accessor for MultipleDataPointView() + 40));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t MultipleDataPointView.unit.getter()
{
  v1 = (v0 + *(type metadata accessor for MultipleDataPointView() + 44));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t MultipleDataPointView.dateLabel.getter()
{
  v1 = (v0 + *(type metadata accessor for MultipleDataPointView() + 48));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t MultipleDataPointView.averageLabelString.getter()
{
  v1 = (v0 + *(type metadata accessor for MultipleDataPointView() + 56));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t MultipleDataPointView.init(average:avgValueString:minValueString:maxValueString:totalValueString:unit:dateLabel:hasUnitString:averageLabelString:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t *a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, unint64_t a18)
{
  type metadata accessor for Context();
  lazy protocol witness table accessor for type Context and conformance Context(&lazy protocol witness table cache variable for type Context and conformance Context, MEMORY[0x277D63F68]);
  *a9 = EnvironmentObject.init()();
  a9[1] = v23;
  v24 = type metadata accessor for MultipleDataPointView();
  v25 = v24[5];
  *(a9 + v25) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA11ColorSchemeO_GMd, &_s7SwiftUI11EnvironmentV7ContentOyAA11ColorSchemeO_GMR);
  result = swift_storeEnumTagMultiPayload();
  v27 = a9 + v24[6];
  *v27 = a1;
  v27[8] = a2 & 1;
  v28 = (a9 + v24[7]);
  *v28 = a3;
  v28[1] = a4;
  v29 = (a9 + v24[8]);
  *v29 = a5;
  v29[1] = a6;
  v30 = (a9 + v24[9]);
  *v30 = a7;
  v30[1] = a8;
  v31 = (a9 + v24[10]);
  *v31 = a10;
  v31[1] = a11;
  v32 = (a9 + v24[11]);
  *v32 = a12;
  v32[1] = a13;
  v33 = (a9 + v24[12]);
  *v33 = a14;
  v33[1] = a15;
  *(a9 + v24[13]) = a16;
  v34 = 0x65676172657641;
  if (a18)
  {
    v34 = a17;
  }

  v35 = 0xE700000000000000;
  if (a18)
  {
    v35 = a18;
  }

  v36 = (a9 + v24[14]);
  *v36 = v34;
  v36[1] = v35;
  return result;
}

uint64_t MultipleDataPointView.body.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewP07SnippetB0E16componentSpacing3top6bottomQr12CoreGraphics7CGFloatV_AJtFQOyAD018FactItemHeroNumberC0V_Qo_Md, &_s7SwiftUI4ViewP07SnippetB0E16componentSpacing3top6bottomQr12CoreGraphics7CGFloatV_AJtFQOyAD018FactItemHeroNumberC0V_Qo_MR);
  v411 = *(v3 - 8);
  v4 = *(v411 + 64);
  v5 = MEMORY[0x28223BE20](v3);
  v409 = &v388 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v410 = &v388 - v7;
  v418 = type metadata accessor for FactItemHeroNumberView();
  v8 = *(v418 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v418);
  v11 = &v388 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for ColorScheme();
  v416 = *(v12 - 8);
  v417 = v12;
  v13 = *(v416 + 64);
  v14 = MEMORY[0x28223BE20](v12);
  v414 = &v388 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v415 = &v388 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4FontV6DesignOSgMd, &_s7SwiftUI4FontV6DesignOSgMR);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v419 = &v388 - v19;
  v20 = type metadata accessor for LocalizedStringKey.StringInterpolation();
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x28223BE20](v20 - 8);
  v420 = &v388 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for Font.TextStyle();
  v421 = *(v23 - 8);
  v24 = v421[8];
  v25 = MEMORY[0x28223BE20](v23);
  v413 = &v388 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v28 = &v388 - v27;
  v29 = type metadata accessor for MultipleDataPointView();
  v30 = v1 + *(v29 + 48);
  if (!*(v30 + 8) || (v31 = v29, v32 = (v1 + *(v29 + 28)), (v33 = v32[1]) == 0))
  {
    result = AnyView.init<A>(_:)();
    *a1 = result;
    return result;
  }

  v403._object = *(v30 + 8);
  v404 = v11;
  v405 = v3;
  v403._countAndFlagsBits = *v30;
  v400._countAndFlagsBits = *v32;
  v400._object = v33;
  v34 = *MEMORY[0x277CE0A78];
  v35 = v421[13];
  v412 = v1;
  v401 = v35;
  v402 = v421 + 13;
  v35(v28, v34, v23);
  v36 = (v412 + v31[9]);
  v37 = v36[1];
  if (v37 && (v38 = (v412 + v31[8]), (v39 = v38[1]) != 0))
  {
    v398 = v8;
    v399 = a1;
    v407 = v31;
    v408 = v23;
    v40 = *v36;
    v41 = *v38;
    LocalizedStringKey.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v42._countAndFlagsBits = 0;
    v42._object = 0xE000000000000000;
    LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v42);
    v43._countAndFlagsBits = v41;
    v43._object = v39;
    LocalizedStringKey.StringInterpolation.appendInterpolation(_:)(v43);
    v44._countAndFlagsBits = 9666786;
    v44._object = 0xA300000000000000;
    LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v44);
    v45._countAndFlagsBits = v40;
    v45._object = v37;
    LocalizedStringKey.StringInterpolation.appendInterpolation(_:)(v45);
    v46._countAndFlagsBits = 0;
    v46._object = 0xE000000000000000;
    LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v46);
    LocalizedStringKey.init(stringInterpolation:)();
    v47 = Text.init(_:tableName:bundle:comment:)();
    v49 = v48;
    v51 = v50;
    LODWORD(v396) = *MEMORY[0x277CE0998];
    v52 = v396;
    v53 = type metadata accessor for Font.Design();
    v391 = v53;
    v54 = *(v53 - 8);
    v55 = *(v54 + 104);
    v395 = (v54 + 104);
    v397._countAndFlagsBits = v55;
    v56 = v419;
    v55(v419, v52, v53);
    v57 = *(v54 + 56);
    v392 = v54 + 56;
    v393 = v57;
    v57(v56, 0, 1, v53);
    v406 = v28;
    static Font.system(_:design:weight:)();
    outlined destroy of Font.Design?(v56);
    v58 = Text.font(_:)();
    v60 = v59;
    LOBYTE(v53) = v61;

    outlined consume of Text.Storage(v47, v49, v51 & 1);

    v62 = Text.bold()();
    v409 = v63;
    v410 = v62;
    LODWORD(v397._object) = v64;
    v411 = v65;
    outlined consume of Text.Storage(v58, v60, v53 & 1);

    LocalizedStringKey.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v66._countAndFlagsBits = 0;
    v66._object = 0xE000000000000000;
    LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v66);
    v67 = (v412 + *(v407 + 44));
    v68 = *v67;
    v389 = v67[1];
    v390 = v68;
    *&v437 = v68;
    *(&v437 + 1) = v389;
    v394 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
    v69._countAndFlagsBits = Optional.description.getter();
    LocalizedStringKey.StringInterpolation.appendInterpolation(_:)(v69);

    v70._countAndFlagsBits = 0;
    v70._object = 0xE000000000000000;
    LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v70);
    LocalizedStringKey.init(stringInterpolation:)();
    v71 = Text.init(_:tableName:bundle:comment:)();
    v73 = v72;
    LOBYTE(v49) = v74;
    v75 = v413;
    v76 = v408;
    (v401)(v413, *MEMORY[0x277CE0A60], v408);
    v77 = v419;
    v78 = v391;
    (v397._countAndFlagsBits)(v419, v396, v391);
    v393(v77, 0, 1, v78);
    static Font.system(_:design:weight:)();
    outlined destroy of Font.Design?(v77);
    v79 = v421[1];
    ++v421;
    v395 = v79;
    v79(v75, v76);
    v80 = Text.font(_:)();
    v82 = v81;
    v84 = v83;

    outlined consume of Text.Storage(v71, v73, v49 & 1);

    LODWORD(v437) = static HierarchicalShapeStyle.secondary.getter();
    v85 = Text.foregroundStyle<A>(_:)();
    v87 = v86;
    LOBYTE(v73) = v88;
    outlined consume of Text.Storage(v80, v82, v84 & 1);

    static Font.Weight.semibold.getter();
    v397._countAndFlagsBits = Text.fontWeight(_:)();
    v413 = v89;
    LODWORD(v396) = v90;
    v419 = v91;
    v92 = v87;
    v93 = v412;
    outlined consume of Text.Storage(v85, v92, v73 & 1);

    LocalizedStringKey.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v94._countAndFlagsBits = 0;
    v94._object = 0xE000000000000000;
    LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v94);
    LocalizedStringKey.StringInterpolation.appendInterpolation(_:)(v403);
    v95._countAndFlagsBits = 0;
    v95._object = 0xE000000000000000;
    LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v95);
    LocalizedStringKey.init(stringInterpolation:)();
    v96 = Text.init(_:tableName:bundle:comment:)();
    v402 = v97;
    v403._countAndFlagsBits = v96;
    LODWORD(v401) = v98;
    v403._object = v99;
    v100 = v407;
    LODWORD(v85) = *(v93 + *(v407 + 52));
    LocalizedStringKey.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v101._countAndFlagsBits = 0;
    v101._object = 0xE000000000000000;
    LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v101);
    v102 = (v93 + *(v100 + 56));
    v104 = *v102;
    v103 = v102[1];
    if (v85 == 1)
    {
      *&v437 = v104;
      *(&v437 + 1) = v103;
      v105._countAndFlagsBits = Optional.description.getter();
      LocalizedStringKey.StringInterpolation.appendInterpolation(_:)(v105);

      v106._countAndFlagsBits = 8250;
      v106._object = 0xE200000000000000;
      LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v106);
      LocalizedStringKey.init(stringInterpolation:)();
      v107 = Text.init(_:tableName:bundle:comment:)();
      v392 = v108;
      v393 = v107;
      LODWORD(v391) = v109;
      v407 = v110;
      LocalizedStringKey.StringInterpolation.init(literalCapacity:interpolationCount:)();
      v111._countAndFlagsBits = 0;
      v111._object = 0xE000000000000000;
      LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v111);
      LocalizedStringKey.StringInterpolation.appendInterpolation(_:)(v400);
      v112._countAndFlagsBits = 32;
      v112._object = 0xE100000000000000;
      LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v112);
      *&v437 = v390;
      *(&v437 + 1) = v389;
      v113._countAndFlagsBits = Optional.description.getter();
      LocalizedStringKey.StringInterpolation.appendInterpolation(_:)(v113);

      v114._countAndFlagsBits = 0;
      v114._object = 0xE000000000000000;
      LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v114);
      LocalizedStringKey.init(stringInterpolation:)();
      v115 = Text.init(_:tableName:bundle:comment:)();
      v117 = v116;
      v119 = v118;
      v420 = v120;
      v121 = v415;
      MultipleDataPointView.colorScheme.getter(v415);
      v123 = v416;
      v122 = v417;
      v124 = v414;
      (*(v416 + 104))(v414, *MEMORY[0x277CDF3D8], v417);
      v125 = static ColorScheme.== infix(_:_:)();
      v126 = *(v123 + 8);
      v126(v124, v122);
      v126(v121, v122);
      if (v125)
      {
        v127 = static Color.black.getter();
      }

      else
      {
        v127 = static Color.white.getter();
      }

      *&v437 = v127;
      v196 = Text.foregroundStyle<A>(_:)();
      v198 = v197;
      v200 = v199;
      outlined consume of Text.Storage(v115, v117, v119 & 1);

      v201 = Text.bold()();
      v203 = v202;
      v205 = v204;
      outlined consume of Text.Storage(v196, v198, v200 & 1);

      v206 = v391;
      v208 = v392;
      v207 = v393;
      v417 = static Text.+ infix(_:_:)();
      v210 = v209;
      v412 = v209;
      LODWORD(v416) = v211;
      v420 = v212;
      outlined consume of Text.Storage(v201, v203, v205 & 1);

      outlined consume of Text.Storage(v207, v208, v206 & 1);

      v213 = MEMORY[0x277CE0BD0];
      v214 = MEMORY[0x277D638F0];
      v438 = MEMORY[0x277CE0BD0];
      OpaqueTypeConformance2 = MEMORY[0x277D638F0];
      v215 = swift_allocObject();
      *&v437 = v215;
      v217 = v409;
      v216 = v410;
      *(v215 + 16) = v410;
      *(v215 + 24) = v217;
      LODWORD(v415) = v397._object & 1;
      *(v215 + 32) = v397._object & 1;
      *(v215 + 40) = v411;
      *(&v435 + 1) = v213;
      v436 = v214;
      v218 = swift_allocObject();
      *&v434 = v218;
      v219 = v413;
      *(v218 + 16) = v397._countAndFlagsBits;
      *(v218 + 24) = v219;
      LODWORD(v414) = v396 & 1;
      *(v218 + 32) = v396 & 1;
      *(v218 + 40) = v419;
      v432 = v213;
      v433 = v214;
      v220 = swift_allocObject();
      v431 = v220;
      v221 = v417;
      *(v220 + 16) = v417;
      *(v220 + 24) = v210;
      LODWORD(v416) = v416 & 1;
      *(v220 + 32) = v416;
      *(v220 + 40) = v420;
      v430 = 0;
      v428 = 0u;
      v429 = 0u;
      v426 = v213;
      v427 = v214;
      v222 = swift_allocObject();
      v424 = 0;
      v425 = v222;
      v223 = v402;
      countAndFlagsBits = v403._countAndFlagsBits;
      *(v222 + 16) = v403._countAndFlagsBits;
      *(v222 + 24) = v223;
      v225 = v401 & 1;
      *(v222 + 32) = v401 & 1;
      *(v222 + 40) = v403._object;
      v422 = 0u;
      v423 = 0u;
      v226 = v216;
      v227 = v397._countAndFlagsBits;
      outlined copy of Text.Storage(v226, v217, v415);

      outlined copy of Text.Storage(v227, v413, v414);

      v228 = v221;
      v229 = v412;
      LOBYTE(v217) = v416;
      outlined copy of Text.Storage(v228, v412, v416);

      outlined copy of Text.Storage(countAndFlagsBits, v223, v225);
      v230 = v396;

      v231 = v404;
      FactItemHeroNumberView.init(number:text1:text2:text3:text4:text5:)();
      v438 = v405;
      v232 = lazy protocol witness table accessor for type Context and conformance Context(&lazy protocol witness table cache variable for type FactItemHeroNumberView and conformance FactItemHeroNumberView, MEMORY[0x277D63E08]);
      v233 = v418;
      *&v434 = v418;
      *(&v434 + 1) = v232;
      OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
      __swift_allocate_boxed_opaque_existential_1(&v437);
      View.componentSpacing(top:bottom:)();
      v234 = v217;
      v235 = v413;
      outlined consume of Text.Storage(v417, v229, v234);
    }

    else
    {
      *&v437 = v104;
      *(&v437 + 1) = v103;
      v157._countAndFlagsBits = Optional.description.getter();
      LocalizedStringKey.StringInterpolation.appendInterpolation(_:)(v157);

      v158._countAndFlagsBits = 8250;
      v158._object = 0xE200000000000000;
      LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v158);
      LocalizedStringKey.init(stringInterpolation:)();
      v159 = Text.init(_:tableName:bundle:comment:)();
      v393 = v160;
      v394 = v159;
      LODWORD(v392) = v161;
      v407 = v162;
      LocalizedStringKey.StringInterpolation.init(literalCapacity:interpolationCount:)();
      v163._countAndFlagsBits = 0;
      v163._object = 0xE000000000000000;
      LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v163);
      LocalizedStringKey.StringInterpolation.appendInterpolation(_:)(v400);
      v164._countAndFlagsBits = 0;
      v164._object = 0xE000000000000000;
      LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v164);
      LocalizedStringKey.init(stringInterpolation:)();
      v165 = Text.init(_:tableName:bundle:comment:)();
      v167 = v166;
      v169 = v168;
      v420 = v170;
      v171 = v415;
      MultipleDataPointView.colorScheme.getter(v415);
      v173 = v416;
      v172 = v417;
      v174 = v414;
      (*(v416 + 104))(v414, *MEMORY[0x277CDF3D8], v417);
      v175 = static ColorScheme.== infix(_:_:)();
      v176 = *(v173 + 8);
      v176(v174, v172);
      v176(v171, v172);
      if (v175)
      {
        v177 = static Color.black.getter();
      }

      else
      {
        v177 = static Color.white.getter();
      }

      *&v437 = v177;
      v236 = Text.foregroundStyle<A>(_:)();
      v238 = v237;
      v240 = v239;
      outlined consume of Text.Storage(v165, v167, v169 & 1);

      v241 = Text.bold()();
      v243 = v242;
      v245 = v244;
      outlined consume of Text.Storage(v236, v238, v240 & 1);

      v246 = v392;
      v248 = v393;
      v247 = v394;
      v249 = static Text.+ infix(_:_:)();
      v414 = v249;
      v417 = v250;
      LODWORD(v416) = v251;
      v420 = v252;
      outlined consume of Text.Storage(v241, v243, v245 & 1);

      outlined consume of Text.Storage(v247, v248, v246 & 1);

      v253 = MEMORY[0x277D638F0];
      v438 = MEMORY[0x277CE0BD0];
      OpaqueTypeConformance2 = MEMORY[0x277D638F0];
      v254 = MEMORY[0x277CE0BD0];
      v255 = swift_allocObject();
      *&v437 = v255;
      v257 = v409;
      v256 = v410;
      *(v255 + 16) = v410;
      *(v255 + 24) = v257;
      LODWORD(v415) = v397._object & 1;
      *(v255 + 32) = v397._object & 1;
      *(v255 + 40) = v411;
      v436 = 0;
      v434 = 0u;
      v435 = 0u;
      v432 = v254;
      v433 = v253;
      v258 = swift_allocObject();
      v431 = v258;
      v259 = v417;
      *(v258 + 16) = v249;
      *(v258 + 24) = v259;
      v260 = v416 & 1;
      *(v258 + 32) = v260;
      LODWORD(v416) = v260;
      *(v258 + 40) = v420;
      v430 = 0;
      v428 = 0u;
      v429 = 0u;
      v426 = MEMORY[0x277CE0BD0];
      v427 = v253;
      v261 = swift_allocObject();
      v424 = 0;
      v425 = v261;
      v263 = v402;
      v262 = v403._countAndFlagsBits;
      *(v261 + 16) = v403._countAndFlagsBits;
      *(v261 + 24) = v263;
      LOBYTE(v253) = v401 & 1;
      *(v261 + 32) = v401 & 1;
      *(v261 + 40) = v403._object;
      v422 = 0u;
      v423 = 0u;
      v264 = v256;
      v265 = v262;
      outlined copy of Text.Storage(v264, v257, v415);

      v266 = v414;
      v267 = v417;
      outlined copy of Text.Storage(v414, v417, v260);

      outlined copy of Text.Storage(v265, v263, v253);

      v231 = v404;
      FactItemHeroNumberView.init(number:text1:text2:text3:text4:text5:)();
      v438 = v405;
      v268 = lazy protocol witness table accessor for type Context and conformance Context(&lazy protocol witness table cache variable for type FactItemHeroNumberView and conformance FactItemHeroNumberView, MEMORY[0x277D63E08]);
      v233 = v418;
      *&v434 = v418;
      *(&v434 + 1) = v268;
      OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
      __swift_allocate_boxed_opaque_existential_1(&v437);
      View.componentSpacing(top:bottom:)();
      outlined consume of Text.Storage(v266, v267, v416);
      v227 = v397._countAndFlagsBits;
      v235 = v413;
      v230 = v396;
    }

    (*(v398 + 8))(v231, v233);
    v269 = v438;
    v270 = __swift_project_boxed_opaque_existential_1(&v437, v438);
    v271 = *(*(v269 - 8) + 64);
    MEMORY[0x28223BE20](v270);
    (*(v273 + 16))(&v388 - ((v272 + 15) & 0xFFFFFFFFFFFFFFF0));
    v274 = AnyView.init<A>(_:)();
    outlined consume of Text.Storage(v227, v235, v230 & 1);

    outlined consume of Text.Storage(v403._countAndFlagsBits, v402, v401 & 1);

    outlined consume of Text.Storage(v410, v409, v397._object & 1);

    v395(v406, v408);
    result = __swift_destroy_boxed_opaque_existential_1(&v437);
  }

  else
  {
    v129 = v412 + v31[10];
    if (!*(v129 + 8))
    {
      v156 = AnyView.init<A>(_:)();
      result = (v421[1])(v28, v23);
      *a1 = v156;
      return result;
    }

    v397._object = *(v129 + 8);
    v398 = v8;
    v399 = a1;
    v397._countAndFlagsBits = *v129;
    v130 = *(v412 + v31[13]);
    v131 = v412;
    LocalizedStringKey.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v132._countAndFlagsBits = 0;
    v132._object = 0xE000000000000000;
    LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v132);
    v133 = (v131 + v31[14]);
    v135 = *v133;
    v134 = v133[1];
    v407 = v31;
    v408 = v23;
    v406 = v28;
    if (v130 == 1)
    {
      *&v437 = v135;
      *(&v437 + 1) = v134;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
      v136._countAndFlagsBits = Optional.description.getter();
      LocalizedStringKey.StringInterpolation.appendInterpolation(_:)(v136);

      v137._countAndFlagsBits = 8250;
      v137._object = 0xE200000000000000;
      LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v137);
      LocalizedStringKey.init(stringInterpolation:)();
      v138 = Text.init(_:tableName:bundle:comment:)();
      v394 = v139;
      v395 = v138;
      LODWORD(v393) = v140;
      v396 = v141;
      LocalizedStringKey.StringInterpolation.init(literalCapacity:interpolationCount:)();
      v142._countAndFlagsBits = 0;
      v142._object = 0xE000000000000000;
      LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v142);
      LocalizedStringKey.StringInterpolation.appendInterpolation(_:)(v400);
      v143._countAndFlagsBits = 32;
      v143._object = 0xE100000000000000;
      LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v143);
      v437 = *(v131 + v31[11]);
      v144._countAndFlagsBits = Optional.description.getter();
      LocalizedStringKey.StringInterpolation.appendInterpolation(_:)(v144);

      v145._countAndFlagsBits = 0;
      v145._object = 0xE000000000000000;
      LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v145);
      LocalizedStringKey.init(stringInterpolation:)();
      v400._countAndFlagsBits = Text.init(_:tableName:bundle:comment:)();
      v400._object = v146;
      v392 = v147;
      LODWORD(v391) = v148;
      v149 = v415;
      MultipleDataPointView.colorScheme.getter(v415);
      v151 = v416;
      v150 = v417;
      v152 = v414;
      (*(v416 + 104))(v414, *MEMORY[0x277CDF3D8], v417);
      v153 = static ColorScheme.== infix(_:_:)();
      v154 = *(v151 + 8);
      v154(v152, v150);
      v154(v149, v150);
      if (v153)
      {
        v155 = static Color.black.getter();
      }

      else
      {
        v155 = static Color.white.getter();
      }

      *&v437 = v155;
      v275 = v391;
      v276 = v400._countAndFlagsBits;
      v277 = v392;
      v278 = Text.foregroundStyle<A>(_:)();
      v280 = v279;
      v282 = v281;
      outlined consume of Text.Storage(v276, v277, v275 & 1);

      v283 = Text.bold()();
      v285 = v284;
      LOBYTE(v277) = v286;
      v414 = v287;
      outlined consume of Text.Storage(v278, v280, v282 & 1);

      v288 = v393;
      v290 = v394;
      v289 = v395;
      v291 = static Text.+ infix(_:_:)();
      v416 = v292;
      v417 = v291;
      LODWORD(v415) = v293;
      v295 = v294;
      outlined consume of Text.Storage(v283, v285, v277 & 1);

      v296 = v288 & 1;
      v297 = v289;
      v298 = v290;
    }

    else
    {
      *&v437 = v135;
      *(&v437 + 1) = v134;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
      v178._countAndFlagsBits = Optional.description.getter();
      LocalizedStringKey.StringInterpolation.appendInterpolation(_:)(v178);

      v179._countAndFlagsBits = 8250;
      v179._object = 0xE200000000000000;
      LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v179);
      LocalizedStringKey.init(stringInterpolation:)();
      v180 = Text.init(_:tableName:bundle:comment:)();
      v394 = v181;
      v395 = v180;
      LODWORD(v393) = v182;
      v396 = v183;
      LocalizedStringKey.StringInterpolation.init(literalCapacity:interpolationCount:)();
      v184._countAndFlagsBits = 0;
      v184._object = 0xE000000000000000;
      LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v184);
      LocalizedStringKey.StringInterpolation.appendInterpolation(_:)(v400);
      v185._countAndFlagsBits = 0;
      v185._object = 0xE000000000000000;
      LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v185);
      LocalizedStringKey.init(stringInterpolation:)();
      v400._countAndFlagsBits = Text.init(_:tableName:bundle:comment:)();
      v400._object = v186;
      v392 = v187;
      LODWORD(v391) = v188;
      v189 = v415;
      MultipleDataPointView.colorScheme.getter(v415);
      v191 = v416;
      v190 = v417;
      v192 = v414;
      (*(v416 + 104))(v414, *MEMORY[0x277CDF3D8], v417);
      v193 = static ColorScheme.== infix(_:_:)();
      v194 = *(v191 + 8);
      v194(v192, v190);
      v194(v189, v190);
      if (v193)
      {
        v195 = static Color.black.getter();
      }

      else
      {
        v195 = static Color.white.getter();
      }

      *&v437 = v195;
      v299 = v391;
      v300 = v400._countAndFlagsBits;
      v301 = v392;
      v302 = Text.foregroundStyle<A>(_:)();
      v304 = v303;
      v306 = v305;
      outlined consume of Text.Storage(v300, v301, v299 & 1);

      v307 = Text.bold()();
      v414 = v308;
      LOBYTE(v300) = v309;
      outlined consume of Text.Storage(v302, v304, v306 & 1);

      v310 = v393;
      v312 = v394;
      v311 = v395;
      v313 = v414;
      v314 = static Text.+ infix(_:_:)();
      v416 = v315;
      v417 = v314;
      LODWORD(v415) = v316;
      v295 = v317;
      outlined consume of Text.Storage(v307, v313, v300 & 1);

      v296 = v310 & 1;
      v297 = v311;
      v298 = v312;
    }

    outlined consume of Text.Storage(v297, v298, v296);
    v414 = v295;

    LODWORD(v415) = v415 & 1;
    outlined copy of Text.Storage(v417, v416, v415);

    LocalizedStringKey.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v318._countAndFlagsBits = 0;
    v318._object = 0xE000000000000000;
    LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v318);
    v437 = *(v412 + *(v407 + 44));
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
    v319._countAndFlagsBits = Optional.description.getter();
    LocalizedStringKey.StringInterpolation.appendInterpolation(_:)(v319);

    v320._countAndFlagsBits = 0;
    v320._object = 0xE000000000000000;
    LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v320);
    LocalizedStringKey.init(stringInterpolation:)();
    v412 = Text.init(_:tableName:bundle:comment:)();
    v407 = v321;
    v323 = v322;
    v324 = v413;
    v325 = v408;
    (v401)(v413, *MEMORY[0x277CE0A60], v408);
    LODWORD(v400._object) = *MEMORY[0x277CE0998];
    object_low = LODWORD(v400._object);
    v327 = type metadata accessor for Font.Design();
    v393 = v327;
    v328 = *(v327 - 8);
    v400._countAndFlagsBits = *(v328 + 104);
    v402 = (v328 + 104);
    v329 = v419;
    (v400._countAndFlagsBits)(v419, object_low, v327);
    v330 = *(v328 + 56);
    v395 = (v328 + 56);
    v396 = v330;
    v330(v329, 0, 1, v327);
    static Font.system(_:design:weight:)();
    outlined destroy of Font.Design?(v329);
    v331 = v421[1];
    ++v421;
    v401 = v331;
    (v331)(v324, v325);
    v332 = v412;
    v333 = v407;
    v334 = Text.font(_:)();
    v336 = v335;
    LOBYTE(v325) = v337;
    v413 = v338;

    outlined consume of Text.Storage(v332, v333, v323 & 1);

    LODWORD(v437) = static HierarchicalShapeStyle.secondary.getter();
    v339 = Text.foregroundStyle<A>(_:)();
    v341 = v340;
    LOBYTE(v327) = v342;
    outlined consume of Text.Storage(v334, v336, v325 & 1);

    static Font.Weight.semibold.getter();
    v412 = Text.fontWeight(_:)();
    v413 = v343;
    v407 = v344;
    LODWORD(v394) = v345;
    outlined consume of Text.Storage(v339, v341, v327 & 1);

    LocalizedStringKey.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v346._countAndFlagsBits = 0;
    v346._object = 0xE000000000000000;
    LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v346);
    LocalizedStringKey.StringInterpolation.appendInterpolation(_:)(v403);
    v347._countAndFlagsBits = 0;
    v347._object = 0xE000000000000000;
    LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v347);
    LocalizedStringKey.init(stringInterpolation:)();
    v348 = Text.init(_:tableName:bundle:comment:)();
    v403._countAndFlagsBits = v349;
    v403._object = v348;
    LODWORD(v391) = v350;
    v392 = v351;
    LocalizedStringKey.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v352._countAndFlagsBits = 0;
    v352._object = 0xE000000000000000;
    LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v352);
    LocalizedStringKey.StringInterpolation.appendInterpolation(_:)(v397);
    v353._countAndFlagsBits = 0;
    v353._object = 0xE000000000000000;
    LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v353);
    LocalizedStringKey.init(stringInterpolation:)();
    v354 = Text.init(_:tableName:bundle:comment:)();
    v356 = v355;
    LOBYTE(v341) = v357;
    v358 = v419;
    v359 = v393;
    (v400._countAndFlagsBits)(v419, LODWORD(v400._object), v393);
    v396(v358, 0, 1, v359);
    static Font.system(_:design:weight:)();
    outlined destroy of Font.Design?(v358);
    v360 = Text.font(_:)();
    v362 = v361;
    LOBYTE(v359) = v363;

    outlined consume of Text.Storage(v354, v356, v341 & 1);

    v364 = Text.bold()();
    v419 = v364;
    v420 = v365;
    v367 = v366;
    v402 = v366;
    LOBYTE(v354) = v368;
    v369 = v365;
    outlined consume of Text.Storage(v360, v362, v359 & 1);

    v370 = MEMORY[0x277CE0BD0];
    v371 = MEMORY[0x277D638F0];
    v438 = MEMORY[0x277CE0BD0];
    OpaqueTypeConformance2 = MEMORY[0x277D638F0];
    v372 = swift_allocObject();
    *&v437 = v372;
    *(v372 + 16) = v364;
    *(v372 + 24) = v367;
    LODWORD(v354) = v354 & 1;
    *(v372 + 32) = v354;
    LODWORD(v400._object) = v354;
    *(v372 + 40) = v369;
    *(&v435 + 1) = v370;
    v436 = v371;
    v373 = swift_allocObject();
    *&v434 = v373;
    v375 = v412;
    v374 = v413;
    v376 = v407;
    *(v373 + 16) = v412;
    *(v373 + 24) = v376;
    LOBYTE(v334) = v394 & 1;
    *(v373 + 32) = v394 & 1;
    *(v373 + 40) = v374;
    v432 = v370;
    v433 = v371;
    v377 = swift_allocObject();
    v431 = v377;
    v378 = v416;
    *(v377 + 16) = v417;
    *(v377 + 24) = v378;
    *(v377 + 32) = v415;
    *(v377 + 40) = v414;
    v430 = 0;
    v428 = 0u;
    v429 = 0u;
    v426 = v370;
    v427 = v371;
    v379 = swift_allocObject();
    v424 = 0;
    v425 = v379;
    v381 = v403._countAndFlagsBits;
    object = v403._object;
    *(v379 + 16) = v403._object;
    *(v379 + 24) = v381;
    LOBYTE(v364) = v391 & 1;
    *(v379 + 32) = v391 & 1;
    *(v379 + 40) = v392;
    v422 = 0u;
    v423 = 0u;
    outlined copy of Text.Storage(v419, v402, v354);

    outlined copy of Text.Storage(v375, v376, v334);

    outlined copy of Text.Storage(object, v381, v364);

    v382 = v404;
    FactItemHeroNumberView.init(number:text1:text2:text3:text4:text5:)();
    v383 = lazy protocol witness table accessor for type Context and conformance Context(&lazy protocol witness table cache variable for type FactItemHeroNumberView and conformance FactItemHeroNumberView, MEMORY[0x277D63E08]);
    v384 = v410;
    v385 = v418;
    View.componentSpacing(top:bottom:)();
    (*(v398 + 8))(v382, v385);
    v386 = v411;
    v387 = v405;
    (*(v411 + 16))(v409, v384, v405);
    *&v437 = v385;
    *(&v437 + 1) = v383;
    swift_getOpaqueTypeConformance2();
    v274 = AnyView.init<A>(_:)();
    outlined consume of Text.Storage(v417, v416, v415);

    outlined consume of Text.Storage(v403._object, v403._countAndFlagsBits, v364);

    outlined consume of Text.Storage(v412, v407, v334);

    outlined consume of Text.Storage(v419, v402, v400._object);

    (*(v386 + 8))(v384, v387);
    result = v401(v406, v408);
  }

  *v399 = v274;
  return result;
}

uint64_t key path setter for EnvironmentValues.colorScheme : EnvironmentValues(uint64_t a1)
{
  v2 = type metadata accessor for ColorScheme();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return EnvironmentValues.colorScheme.setter();
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

uint64_t outlined consume of Text.Storage(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t outlined copy of Text.Storage(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t outlined destroy of Font.Design?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4FontV6DesignOSgMd, &_s7SwiftUI4FontV6DesignOSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t lazy protocol witness table accessor for type Context and conformance Context(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t __swift_destroy_boxed_opaque_existential_1(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

void type metadata completion function for MultipleDataPointView()
{
  type metadata accessor for EnvironmentObject<Context>();
  if (v0 <= 0x3F)
  {
    type metadata accessor for Environment<ColorScheme>();
    if (v1 <= 0x3F)
    {
      type metadata accessor for Double?(319, &lazy cache variable for type metadata for Double?);
      if (v2 <= 0x3F)
      {
        type metadata accessor for Double?(319, &lazy cache variable for type metadata for String?);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void type metadata accessor for EnvironmentObject<Context>()
{
  if (!lazy cache variable for type metadata for EnvironmentObject<Context>)
  {
    type metadata accessor for Context();
    lazy protocol witness table accessor for type Context and conformance Context(&lazy protocol witness table cache variable for type Context and conformance Context, MEMORY[0x277D63F68]);
    v0 = type metadata accessor for EnvironmentObject();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for EnvironmentObject<Context>);
    }
  }
}

void type metadata accessor for Environment<ColorScheme>()
{
  if (!lazy cache variable for type metadata for Environment<ColorScheme>)
  {
    type metadata accessor for ColorScheme();
    v0 = type metadata accessor for Environment();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for Environment<ColorScheme>);
    }
  }
}

void type metadata accessor for Double?(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = type metadata accessor for Optional();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

uint64_t outlined init with copy of Environment<ColorScheme>.Content(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA11ColorSchemeO_GMd, &_s7SwiftUI11EnvironmentV7ContentOyAA11ColorSchemeO_GMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t GenericMedCompletedLogSnippet.text3.getter()
{
  v1 = v0 + *(type metadata accessor for GenericMedCompletedLogSnippet() + 20);
  v2 = *v1;
  v3 = *(v1 + 24);
  outlined copy of Text.Storage(*v1, *(v1 + 8), *(v1 + 16));

  return v2;
}

uint64_t type metadata accessor for GenericMedCompletedLogSnippet()
{
  result = type metadata singleton initialization cache for GenericMedCompletedLogSnippet;
  if (!type metadata singleton initialization cache for GenericMedCompletedLogSnippet)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t GenericMedCompletedLogSnippet.text3.setter(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  v9 = v4 + *(type metadata accessor for GenericMedCompletedLogSnippet() + 20);
  outlined consume of Text.Storage(*v9, *(v9 + 8), *(v9 + 16));
  v10 = *(v9 + 24);

  *v9 = a1;
  *(v9 + 8) = a2;
  *(v9 + 16) = a3 & 1;
  *(v9 + 24) = a4;
  return result;
}

uint64_t GenericMedCompletedLogSnippet.colorScheme.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for EnvironmentValues();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA11ColorSchemeO_GMd, &_s7SwiftUI11EnvironmentV7ContentOyAA11ColorSchemeO_GMR);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = (&v17 - v10);
  v12 = type metadata accessor for GenericMedCompletedLogSnippet();
  outlined init with copy of AppPunchout?(v1 + *(v12 + 28), v11, &_s7SwiftUI11EnvironmentV7ContentOyAA11ColorSchemeO_GMd, &_s7SwiftUI11EnvironmentV7ContentOyAA11ColorSchemeO_GMR);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = type metadata accessor for ColorScheme();
    return (*(*(v13 - 8) + 32))(a1, v11, v13);
  }

  else
  {
    v15 = *v11;
    static os_log_type_t.fault.getter();
    v16 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v7, v3);
  }
}

uint64_t GenericMedCompletedLogSnippet.buttonTakenColor.getter(uint64_t (*a1)(uint64_t), uint64_t (*a2)(uint64_t))
{
  v4 = type metadata accessor for ColorScheme();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v16 - v10;
  GenericMedCompletedLogSnippet.colorScheme.getter(&v16 - v10);
  (*(v5 + 104))(v9, *MEMORY[0x277CDF3D8], v4);
  v12 = static ColorScheme.== infix(_:_:)();
  v13 = *(v5 + 8);
  v13(v9, v4);
  v14 = (v13)(v11, v4);
  if (v12)
  {
    return a1(v14);
  }

  else
  {
    return a2(v14);
  }
}

uint64_t GenericMedCompletedLogSnippet.init(model:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for LocalizedStringKey.StringInterpolation();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = type metadata accessor for GenericMedCompletedLogSnippet();
  v7 = (a2 + v6[6]);
  type metadata accessor for Context();
  _s9SnippetUI7ContextCAC7Combine16ObservableObjectAAWlTm_0(&lazy protocol witness table cache variable for type Context and conformance Context, MEMORY[0x277D63F68]);
  *v7 = EnvironmentObject.init()();
  v7[1] = v8;
  v9 = v6[7];
  *(a2 + v9) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA11ColorSchemeO_GMd, &_s7SwiftUI11EnvironmentV7ContentOyAA11ColorSchemeO_GMR);
  swift_storeEnumTagMultiPayload();
  outlined init with copy of GenericMedCompletedLogModel(a1, a2, type metadata accessor for GenericMedCompletedLogModel);
  if (*(a1 + *(type metadata accessor for GenericMedCompletedLogModel() + 28)) == 1)
  {
    LocalizedStringKey.init(stringLiteral:)();
  }

  else
  {
    LocalizedStringKey.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v10._countAndFlagsBits = 0;
    v10._object = 0xE000000000000000;
    LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v10);
    LocalizedStringKey.StringInterpolation.appendInterpolation(_:)(*(a1 + 8));
    v11._countAndFlagsBits = 0;
    v11._object = 0xE000000000000000;
    LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v11);
    LocalizedStringKey.init(stringInterpolation:)();
  }

  v12 = Text.init(_:tableName:bundle:comment:)();
  v14 = v13;
  v16 = v15;
  v18 = v17;
  result = outlined destroy of GenericMedCompletedLogModel(a1, type metadata accessor for GenericMedCompletedLogModel);
  v20 = a2 + v6[5];
  *v20 = v12;
  *(v20 + 8) = v14;
  *(v20 + 16) = v16 & 1;
  *(v20 + 24) = v18;
  return result;
}

uint64_t GenericMedCompletedLogSnippet.body.getter@<X0>(uint64_t *a1@<X8>)
{
  v185 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9SnippetUI0A4BodyVy05SwiftB09TupleViewVyAA012SashStandardF0V_AD0F0PAAE15componentTapped12isNavigation7performQrSb_yyctFQOyAA018FactItemHeroNumberF0V_Qo_AA015StatusIndicatorF0VtGGMd, &_s9SnippetUI0A4BodyVy05SwiftB09TupleViewVyAA012SashStandardF0V_AD0F0PAAE15componentTapped12isNavigation7performQrSb_yyctFQOyAA018FactItemHeroNumberF0V_Qo_AA015StatusIndicatorF0VtGGMR);
  v182 = *(v2 - 8);
  v183 = v2;
  v3 = *(v182 + 64);
  MEMORY[0x28223BE20](v2);
  v181 = &v136 - v4;
  v163 = type metadata accessor for GenericMedCompletedLogSnippet();
  v184 = *(v163 - 8);
  v5 = *(v184 + 64);
  MEMORY[0x28223BE20](v163);
  v170 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9SnippetUI14ComponentStackVy05SwiftB09TupleViewVyAD03AnyG0V_AD0G0PAAE10separators_10isOverrideQr0A3Kit14SeparatorStyleO_SbtFQOyAA018FactItemHeroNumberG0V_Qo_AA015StatusIndicatorG0VtGGMd, &_s9SnippetUI14ComponentStackVy05SwiftB09TupleViewVyAD03AnyG0V_AD0G0PAAE10separators_10isOverrideQr0A3Kit14SeparatorStyleO_SbtFQOyAA018FactItemHeroNumberG0V_Qo_AA015StatusIndicatorG0VtGGMR);
  v168 = *(v170 - 8);
  v6 = *(v168 + 64);
  MEMORY[0x28223BE20](v170);
  v166 = &v136 - v7;
  v171 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewP07SnippetB0E15componentTapped12isNavigation7performQrSb_yyctFQOyAD14ComponentStackVyAA05TupleC0VyAA03AnyC0V_AcDE10separators_0G8OverrideQr0D3Kit14SeparatorStyleO_SbtFQOyAD018FactItemHeroNumberC0V_Qo_AD015StatusIndicatorC0VtGG_Qo_Md, &_s7SwiftUI4ViewP07SnippetB0E15componentTapped12isNavigation7performQrSb_yyctFQOyAD14ComponentStackVyAA05TupleC0VyAA03AnyC0V_AcDE10separators_0G8OverrideQr0D3Kit14SeparatorStyleO_SbtFQOyAD018FactItemHeroNumberC0V_Qo_AD015StatusIndicatorC0VtGG_Qo_MR);
  v169 = *(v171 - 8);
  v8 = *(v169 + 64);
  MEMORY[0x28223BE20](v171);
  v167 = &v136 - v9;
  v10 = type metadata accessor for SeparatorStyle();
  v164 = *(v10 - 8);
  v165 = v10;
  v11 = *(v164 + 64);
  MEMORY[0x28223BE20](v10);
  v162 = &v136 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4FontV6DesignOSgMd, &_s7SwiftUI4FontV6DesignOSgMR);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v152 = &v136 - v15;
  v16 = type metadata accessor for LocalizedStringKey.StringInterpolation();
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v151 = &v136 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v161 = type metadata accessor for FactItemHeroNumberView();
  v159 = *(v161 - 8);
  v19 = *(v159 + 64);
  MEMORY[0x28223BE20](v161);
  v157 = &v136 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewP07SnippetB0E10separators_10isOverrideQr0D3Kit14SeparatorStyleO_SbtFQOyAD018FactItemHeroNumberC0V_Qo_Md, &_s7SwiftUI4ViewP07SnippetB0E10separators_10isOverrideQr0D3Kit14SeparatorStyleO_SbtFQOyAD018FactItemHeroNumberC0V_Qo_MR);
  v178 = *(v21 - 8);
  v179 = v21;
  v22 = *(v178 + 64);
  v23 = MEMORY[0x28223BE20](v21);
  v160 = &v136 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v158 = v24;
  MEMORY[0x28223BE20](v23);
  v177 = &v136 - v25;
  v26 = type metadata accessor for StatusIndicatorView.IndicatorType();
  v149 = *(v26 - 8);
  v150 = v26;
  v27 = *(v149 + 64);
  MEMORY[0x28223BE20](v26);
  v148 = &v136 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = type metadata accessor for StatusIndicatorView();
  v175 = *(v29 - 8);
  v176 = v29;
  v30 = *(v175 + 64);
  v31 = MEMORY[0x28223BE20](v29);
  v156 = &v136 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v154 = v32;
  MEMORY[0x28223BE20](v31);
  v180 = &v136 - v33;
  v147 = type metadata accessor for SnippetHeaderView();
  v34 = *(*(v147 - 8) + 64);
  MEMORY[0x28223BE20](v147);
  v146 = &v136 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = type metadata accessor for Font.TextStyle();
  v173 = *(v36 - 8);
  v174 = v36;
  v37 = *(v173 + 64);
  MEMORY[0x28223BE20](v36);
  v172 = &v136 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit11AppPunchoutVSgMd, &_s10SnippetKit11AppPunchoutVSgMR);
  v40 = *(*(v39 - 8) + 64);
  MEMORY[0x28223BE20](v39 - 8);
  v42 = &v136 - v41;
  v43 = type metadata accessor for AppPunchout();
  v44 = *(v43 - 8);
  v45 = *(v44 + 64);
  v46 = MEMORY[0x28223BE20](v43);
  v155 = &v136 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  v153 = v47;
  MEMORY[0x28223BE20](v46);
  v49 = &v136 - v48;
  v50 = type metadata accessor for GenericMedCompletedLogModel();
  v51 = v1;
  if (*(v1 + v50[9]) != 1)
  {
    outlined init with copy of GenericMedCompletedLogModel(v1, &v136 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for GenericMedCompletedLogSnippet);
    v62 = (*(v184 + 80) + 16) & ~*(v184 + 80);
    v63 = swift_allocObject();
    outlined init with take of GenericMedCompletedLogSnippet(&v136 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v63 + v62);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI9TupleViewVy07SnippetB0012SashStandardD0V_AA0D0PADE15componentTapped12isNavigation7performQrSb_yyctFQOyAD018FactItemHeroNumberD0V_Qo_AD015StatusIndicatorD0VtGMd, &_s7SwiftUI9TupleViewVy07SnippetB0012SashStandardD0V_AA0D0PADE15componentTapped12isNavigation7performQrSb_yyctFQOyAD018FactItemHeroNumberD0V_Qo_AD015StatusIndicatorD0VtGMR);
    lazy protocol witness table accessor for type TupleView<(SashStandardView, <<opaque return type of View.componentTapped(isNavigation:perform:)>>.0, StatusIndicatorView)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type TupleView<(SashStandardView, <<opaque return type of View.componentTapped(isNavigation:perform:)>>.0, StatusIndicatorView)> and conformance TupleView<A>, &_s7SwiftUI9TupleViewVy07SnippetB0012SashStandardD0V_AA0D0PADE15componentTapped12isNavigation7performQrSb_yyctFQOyAD018FactItemHeroNumberD0V_Qo_AD015StatusIndicatorD0VtGMd, &_s7SwiftUI9TupleViewVy07SnippetB0012SashStandardD0V_AA0D0PADE15componentTapped12isNavigation7performQrSb_yyctFQOyAD018FactItemHeroNumberD0V_Qo_AD015StatusIndicatorD0VtGMR);
    v64 = v181;
    SnippetBody.init(content:)();
    lazy protocol witness table accessor for type TupleView<(SashStandardView, <<opaque return type of View.componentTapped(isNavigation:perform:)>>.0, StatusIndicatorView)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type SnippetBody<TupleView<(SashStandardView, <<opaque return type of View.componentTapped(isNavigation:perform:)>>.0, StatusIndicatorView)>> and conformance SnippetBody<A>, &_s9SnippetUI0A4BodyVy05SwiftB09TupleViewVyAA012SashStandardF0V_AD0F0PAAE15componentTapped12isNavigation7performQrSb_yyctFQOyAA018FactItemHeroNumberF0V_Qo_AA015StatusIndicatorF0VtGGMd, &_s9SnippetUI0A4BodyVy05SwiftB09TupleViewVyAA012SashStandardF0V_AD0F0PAAE15componentTapped12isNavigation7performQrSb_yyctFQOyAA018FactItemHeroNumberF0V_Qo_AA015StatusIndicatorF0VtGGMR);
    v65 = v183;
    v61 = View.eraseToAnyView()();
    result = (*(v182 + 8))(v64, v65);
    goto LABEL_9;
  }

  v52 = v50;
  v182 = v5;
  v183 = &v136 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = (v1 + v50[12]);
  v54 = v53[1];
  if (!v54)
  {
    goto LABEL_7;
  }

  v55 = (v1 + v50[11]);
  v56 = v55[1];
  if (!v56)
  {
    goto LABEL_7;
  }

  v57 = (v1 + v50[13]);
  v58 = v57[1];
  if (!v58)
  {
    goto LABEL_7;
  }

  v59 = *v53;
  v141 = *v55;
  v142 = v59;
  v144 = *v57;
  outlined init with copy of AppPunchout?(&v51[v50[6]], v42, &_s10SnippetKit11AppPunchoutVSgMd, &_s10SnippetKit11AppPunchoutVSgMR);
  if ((*(v44 + 48))(v42, 1, v43) == 1)
  {
    outlined destroy of AppPunchout?(v42, &_s10SnippetKit11AppPunchoutVSgMd, &_s10SnippetKit11AppPunchoutVSgMR);
LABEL_7:
    result = AnyView.init<A>(_:)();
    v61 = result;
    goto LABEL_9;
  }

  v66 = *(v44 + 32);
  v139 = v44 + 32;
  v140 = v66;
  v145 = v49;
  v66(v49, v42, v43);
  v67 = *MEMORY[0x277CE0A78];
  v68 = *(v173 + 104);
  v137 = v44;
  v138 = v43;
  v68();
  v69 = v146;
  outlined init with copy of AppPunchout?(&v51[v52[14]], v146, &_s10WellnessUI18SnippetHeaderModelVSgMd, &_s10WellnessUI18SnippetHeaderModelVSgMR);
  v70 = v58;
  v71 = v147;
  v72 = *(v147 + 20);
  *(v69 + v72) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA11ColorSchemeO_GMd, &_s7SwiftUI11EnvironmentV7ContentOyAA11ColorSchemeO_GMR);
  swift_storeEnumTagMultiPayload();
  v73 = *(v71 + 24);
  *(v69 + v73) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA19ColorSchemeContrastO_GMd, &_s7SwiftUI11EnvironmentV7ContentOyAA19ColorSchemeContrastO_GMR);
  swift_storeEnumTagMultiPayload();
  _s9SnippetUI7ContextCAC7Combine16ObservableObjectAAWlTm_0(&lazy protocol witness table cache variable for type SnippetHeaderView and conformance SnippetHeaderView, type metadata accessor for SnippetHeaderView);

  v143 = v51;
  v181 = View.eraseToAnyView()();
  outlined destroy of GenericMedCompletedLogModel(v69, type metadata accessor for SnippetHeaderView);
  v74 = *v51;
  if (*v51)
  {
    v75 = v142;
  }

  else
  {
    v75 = v141;
  }

  if (*v51)
  {
    v76 = v54;
  }

  else
  {
    v76 = v56;
  }

  if (v74)
  {
    v77 = MEMORY[0x277D63D58];
  }

  else
  {
    v77 = MEMORY[0x277D63D68];
  }

  v203 = MEMORY[0x277D837D0];
  v204 = MEMORY[0x277D63F88];
  v201 = v75;
  v202 = v76;
  (*(v149 + 104))(v148, *v77, v150);
  StatusIndicatorView.init(message:type:showIndicator:)();
  LocalizedStringKey.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v78._countAndFlagsBits = 0;
  v78._object = 0xE000000000000000;
  LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v78);
  v79._countAndFlagsBits = v144;
  v79._object = v70;
  LocalizedStringKey.StringInterpolation.appendInterpolation(_:)(v79);
  v80._countAndFlagsBits = 0;
  v80._object = 0xE000000000000000;
  LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v80);
  LocalizedStringKey.init(stringInterpolation:)();
  v81 = Text.init(_:tableName:bundle:comment:)();
  v83 = v82;
  v85 = v84;
  v86 = *MEMORY[0x277CE0998];
  v87 = type metadata accessor for Font.Design();
  v88 = *(v87 - 8);
  v89 = v152;
  (*(v88 + 104))(v152, v86, v87);
  (*(v88 + 56))(v89, 0, 1, v87);
  static Font.system(_:design:weight:)();
  outlined destroy of AppPunchout?(v89, &_s7SwiftUI4FontV6DesignOSgMd, &_s7SwiftUI4FontV6DesignOSgMR);
  v90 = Text.font(_:)();
  v92 = v91;
  LOBYTE(v88) = v93;

  outlined consume of Text.Storage(v81, v83, v85 & 1);

  v94 = Text.bold()();
  v96 = v95;
  LOBYTE(v86) = v97;
  v99 = v98;
  outlined consume of Text.Storage(v90, v92, v88 & 1);

  v100 = MEMORY[0x277CE0BD0];
  v101 = MEMORY[0x277D638F0];
  v203 = MEMORY[0x277CE0BD0];
  v204 = MEMORY[0x277D638F0];
  v102 = swift_allocObject();
  v201 = v102;
  *(v102 + 16) = v94;
  *(v102 + 24) = v96;
  *(v102 + 32) = v86 & 1;
  *(v102 + 40) = v99;
  v200 = 0;
  v198 = 0u;
  v199 = 0u;
  v197 = 0;
  v195 = 0u;
  v196 = 0u;
  v103 = &v143[*(v163 + 20)];
  v104 = *v103;
  v105 = *(v103 + 1);
  LOBYTE(v94) = v103[16];
  v106 = *(v103 + 3);
  v193 = v100;
  v194 = v101;
  v107 = swift_allocObject();
  v191 = 0;
  v192 = v107;
  *(v107 + 16) = v104;
  *(v107 + 24) = v105;
  *(v107 + 32) = v94;
  *(v107 + 40) = v106;
  v189 = 0u;
  v190 = 0u;
  v188 = 0;
  v186 = 0u;
  v187 = 0u;
  outlined copy of Text.Storage(v104, v105, v94);

  v108 = v157;
  FactItemHeroNumberView.init(number:text1:text2:text3:text4:text5:)();
  v110 = v164;
  v109 = v165;
  v111 = v162;
  (*(v164 + 104))(v162, *MEMORY[0x277D62F40], v165);
  _s9SnippetUI7ContextCAC7Combine16ObservableObjectAAWlTm_0(&lazy protocol witness table cache variable for type FactItemHeroNumberView and conformance FactItemHeroNumberView, MEMORY[0x277D63E08]);
  v112 = v177;
  v113 = v161;
  View.separators(_:isOverride:)();
  (*(v110 + 8))(v111, v109);
  (*(v159 + 8))(v108, v113);
  v114 = v178;
  v115 = v179;
  v116 = v160;
  (*(v178 + 16))(v160, v112, v179);
  v117 = v176;
  v118 = v175;
  v119 = v156;
  (*(v175 + 16))(v156, v180, v176);
  v120 = (*(v114 + 80) + 24) & ~*(v114 + 80);
  v121 = (v158 + *(v118 + 80) + v120) & ~*(v118 + 80);
  v122 = swift_allocObject();
  *(v122 + 16) = v181;
  (*(v114 + 32))(v122 + v120, v116, v115);
  v123 = v175;
  (*(v175 + 32))(v122 + v121, v119, v117);

  v125 = v137;
  v124 = v138;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI9TupleViewVyAA03AnyD0V_AA0D0P07SnippetB0E10separators_10isOverrideQr0F3Kit14SeparatorStyleO_SbtFQOyAH018FactItemHeroNumberD0V_Qo_AH015StatusIndicatorD0VtGMd, &_s7SwiftUI9TupleViewVyAA03AnyD0V_AA0D0P07SnippetB0E10separators_10isOverrideQr0F3Kit14SeparatorStyleO_SbtFQOyAH018FactItemHeroNumberD0V_Qo_AH015StatusIndicatorD0VtGMR);
  lazy protocol witness table accessor for type TupleView<(SashStandardView, <<opaque return type of View.componentTapped(isNavigation:perform:)>>.0, StatusIndicatorView)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type TupleView<(AnyView, <<opaque return type of View.separators(_:isOverride:)>>.0, StatusIndicatorView)> and conformance TupleView<A>, &_s7SwiftUI9TupleViewVyAA03AnyD0V_AA0D0P07SnippetB0E10separators_10isOverrideQr0F3Kit14SeparatorStyleO_SbtFQOyAH018FactItemHeroNumberD0V_Qo_AH015StatusIndicatorD0VtGMd, &_s7SwiftUI9TupleViewVyAA03AnyD0V_AA0D0P07SnippetB0E10separators_10isOverrideQr0F3Kit14SeparatorStyleO_SbtFQOyAH018FactItemHeroNumberD0V_Qo_AH015StatusIndicatorD0VtGMR);
  v126 = v166;
  ComponentStack.init(content:)();
  v127 = v183;
  outlined init with copy of GenericMedCompletedLogModel(v143, v183, type metadata accessor for GenericMedCompletedLogSnippet);
  v128 = v155;
  (*(v125 + 16))(v155, v145, v124);
  v129 = (*(v184 + 80) + 16) & ~*(v184 + 80);
  v130 = (v182 + *(v125 + 80) + v129) & ~*(v125 + 80);
  v131 = swift_allocObject();
  outlined init with take of GenericMedCompletedLogSnippet(v127, v131 + v129);
  v140(v131 + v130, v128, v124);
  v132 = lazy protocol witness table accessor for type TupleView<(SashStandardView, <<opaque return type of View.componentTapped(isNavigation:perform:)>>.0, StatusIndicatorView)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type ComponentStack<TupleView<(AnyView, <<opaque return type of View.separators(_:isOverride:)>>.0, StatusIndicatorView)>> and conformance ComponentStack<A>, &_s9SnippetUI14ComponentStackVy05SwiftB09TupleViewVyAD03AnyG0V_AD0G0PAAE10separators_10isOverrideQr0A3Kit14SeparatorStyleO_SbtFQOyAA018FactItemHeroNumberG0V_Qo_AA015StatusIndicatorG0VtGGMd, &_s9SnippetUI14ComponentStackVy05SwiftB09TupleViewVyAD03AnyG0V_AD0G0PAAE10separators_10isOverrideQr0A3Kit14SeparatorStyleO_SbtFQOyAA018FactItemHeroNumberG0V_Qo_AA015StatusIndicatorG0VtGGMR);
  v133 = v167;
  v134 = v170;
  View.componentTapped(isNavigation:perform:)();

  (*(v168 + 8))(v126, v134);
  v201 = v134;
  v202 = v132;
  swift_getOpaqueTypeConformance2();
  v135 = v171;
  v61 = View.eraseToAnyView()();

  (*(v169 + 8))(v133, v135);
  (*(v178 + 8))(v177, v179);
  (*(v123 + 8))(v180, v176);
  (*(v173 + 8))(v172, v174);
  result = (*(v125 + 8))(v145, v124);
LABEL_9:
  *v185 = v61;
  return result;
}

uint64_t closure #1 in GenericMedCompletedLogSnippet.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v27 = a1;
  v28 = a3;
  v29 = a4;
  v5 = type metadata accessor for StatusIndicatorView();
  v24 = v5;
  v26 = *(v5 - 8);
  v6 = v26;
  v7 = *(v26 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewP07SnippetB0E10separators_10isOverrideQr0D3Kit14SeparatorStyleO_SbtFQOyAD018FactItemHeroNumberC0V_Qo_Md, &_s7SwiftUI4ViewP07SnippetB0E10separators_10isOverrideQr0D3Kit14SeparatorStyleO_SbtFQOyAD018FactItemHeroNumberC0V_Qo_MR);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v24 - v13;
  v15 = *(v11 + 16);
  v15(&v24 - v13, a2, v10);
  v16 = *(v6 + 16);
  v16(v9, v28, v5);
  v17 = v29;
  *v29 = v27;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7AnyViewV_AA0D0P07SnippetB0E10separators_10isOverrideQr0E3Kit14SeparatorStyleO_SbtFQOyAF018FactItemHeroNumberD0V_Qo_AF015StatusIndicatorD0VtMd, "DW");
  v15(&v17[*(v18 + 48)], v14, v10);
  v19 = &v17[*(v18 + 64)];
  v21 = v24;
  v20 = v25;
  v16(v19, v25, v24);
  v22 = *(v26 + 8);
  swift_retain_n();
  v22(v20, v21);
  (*(v11 + 8))(v14, v10);
}

void closure #2 in GenericMedCompletedLogSnippet.body.getter(uint64_t a1)
{
  v1 = a1 + *(type metadata accessor for GenericMedCompletedLogSnippet() + 24);
  if (*v1)
  {
    v3 = *v1;
    dispatch thunk of Context.perform(appPunchout:)();
  }

  else
  {
    v2 = *(v1 + 8);
    type metadata accessor for Context();
    _s9SnippetUI7ContextCAC7Combine16ObservableObjectAAWlTm_0(&lazy protocol witness table cache variable for type Context and conformance Context, MEMORY[0x277D63F68]);
    EnvironmentObject.error()();
    __break(1u);
  }
}

uint64_t closure #3 in GenericMedCompletedLogSnippet.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v97[0] = a1;
  v111 = a2;
  v3 = type metadata accessor for StatusIndicatorView.IndicatorType();
  v107 = *(v3 - 8);
  v108 = v3;
  v4 = *(v107 + 64);
  MEMORY[0x28223BE20](v3);
  v106 = v97 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for StatusIndicatorView();
  v109 = *(v6 - 8);
  v110 = v6;
  v7 = *(v109 + 64);
  v8 = MEMORY[0x28223BE20](v6);
  v118 = v97 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v117 = v97 - v10;
  v11 = type metadata accessor for GenericMedCompletedLogSnippet();
  v12 = *(v11 - 8);
  v98 = v11;
  v99 = v12;
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v100 = v14;
  v101 = v97 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for FactItemHeroNumberView();
  v103 = *(v15 - 8);
  v104 = v15;
  v16 = *(v103 + 64);
  MEMORY[0x28223BE20](v15);
  v102 = v97 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v120 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewP07SnippetB0E15componentTapped12isNavigation7performQrSb_yyctFQOyAD018FactItemHeroNumberC0V_Qo_Md, "XW");
  v105 = *(v120 - 8);
  v18 = *(v105 + 64);
  v19 = MEMORY[0x28223BE20](v120);
  v119 = v97 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v116 = v97 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit5ColorVSgMd, &_s10SnippetKit5ColorVSgMR);
  v23 = *(*(v22 - 8) + 64);
  v24 = MEMORY[0x28223BE20](v22 - 8);
  v112 = v97 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v27 = v97 - v26;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit14VisualPropertyVSgMd, &_s10SnippetKit14VisualPropertyVSgMR);
  v29 = *(*(v28 - 8) + 64);
  MEMORY[0x28223BE20](v28 - 8);
  v31 = v97 - v30;
  v32 = type metadata accessor for SashStandard.Title();
  v33 = *(v32 - 8);
  v34 = *(v33 + 64);
  MEMORY[0x28223BE20](v32);
  v36 = (v97 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0));
  v37 = type metadata accessor for SashStandard();
  v38 = *(*(v37 - 8) + 64);
  MEMORY[0x28223BE20](v37 - 8);
  v97[1] = v97 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = type metadata accessor for SashStandardView();
  v114 = *(v40 - 8);
  v115 = v40;
  v41 = v114[8];
  v42 = MEMORY[0x28223BE20](v40);
  v113 = v97 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v42);
  v45 = v97 - v44;
  v46 = (a1 + *(type metadata accessor for GenericMedCompletedLogModel() + 32));
  v47 = v46[1];
  *v36 = *v46;
  v36[1] = v47;
  (*(v33 + 104))(v36, *MEMORY[0x277D62DC0], v32);
  v48 = type metadata accessor for VisualProperty();
  (*(*(v48 - 8) + 56))(v31, 1, 1, v48);
  v49 = type metadata accessor for Color();
  v50 = *(*(v49 - 8) + 56);
  v50(v27, 1, 1, v49);
  v50(v112, 1, 1, v49);
  v138 = 0;
  v137 = 0u;
  v136 = 0u;

  v51 = v97[0];
  SashStandard.init(title:thumbnail:titleColor:backgroundColor:action:componentName:showOnWatch:)();
  v112 = v45;
  SashStandardView.init(model:)();
  v52 = v51;
  *v51;
  LocalizedStringKey.init(stringLiteral:)();
  v53 = Text.init(_:tableName:bundle:comment:)();
  v55 = v54;
  LOBYTE(v27) = v56;
  v58 = v57;
  v59 = MEMORY[0x277CE0BD0];
  v60 = MEMORY[0x277D638F0];
  *(&v137 + 1) = MEMORY[0x277CE0BD0];
  v138 = MEMORY[0x277D638F0];
  v61 = swift_allocObject();
  *&v136 = v61;
  *(v61 + 16) = v53;
  *(v61 + 24) = v55;
  *(v61 + 32) = v27 & 1;
  *(v61 + 40) = v58;
  v135 = 0;
  v134 = 0u;
  v133 = 0u;
  LocalizedStringKey.init(stringLiteral:)();
  v62 = Text.init(_:tableName:bundle:comment:)();
  v64 = v63;
  LOBYTE(v27) = v65;
  v67 = v66;
  v131 = v59;
  v132 = v60;
  v68 = swift_allocObject();
  v130 = v68;
  *(v68 + 16) = v62;
  *(v68 + 24) = v64;
  *(v68 + 32) = v27 & 1;
  *(v68 + 40) = v67;
  v69 = v52 + *(v98 + 20);
  v70 = *v69;
  v71 = *(v69 + 8);
  LOBYTE(v27) = *(v69 + 16);
  v72 = *(v69 + 24);
  v128 = v59;
  v129 = v60;
  v73 = swift_allocObject();
  v126 = 0;
  v127 = v73;
  *(v73 + 16) = v70;
  *(v73 + 24) = v71;
  *(v73 + 32) = v27;
  *(v73 + 40) = v72;
  v124 = 0u;
  v125 = 0u;
  v123 = 0;
  v121 = 0u;
  v122 = 0u;
  outlined copy of Text.Storage(v70, v71, v27);

  v74 = v102;
  FactItemHeroNumberView.init(number:text1:text2:text3:text4:text5:)();
  v75 = v101;
  outlined init with copy of GenericMedCompletedLogModel(v52, v101, type metadata accessor for GenericMedCompletedLogSnippet);
  v76 = (*(v99 + 80) + 16) & ~*(v99 + 80);
  v77 = swift_allocObject();
  outlined init with take of GenericMedCompletedLogSnippet(v75, v77 + v76);
  _s9SnippetUI7ContextCAC7Combine16ObservableObjectAAWlTm_0(&lazy protocol witness table cache variable for type FactItemHeroNumberView and conformance FactItemHeroNumberView, MEMORY[0x277D63E08]);
  v78 = v116;
  v79 = v104;
  View.componentTapped(isNavigation:perform:)();

  (*(v103 + 8))(v74, v79);
  *(&v137 + 1) = MEMORY[0x277D837D0];
  v138 = MEMORY[0x277D63F88];
  *&v136 = 0x646567676F4CLL;
  *(&v136 + 1) = 0xE600000000000000;
  (*(v107 + 104))(v106, *MEMORY[0x277D63D58], v108);
  v80 = v117;
  StatusIndicatorView.init(message:type:showIndicator:)();
  v81 = v113;
  v106 = v114[2];
  v82 = v115;
  (v106)(v113, v112, v115);
  v83 = v105;
  v108 = *(v105 + 16);
  v108(v119, v78, v120);
  v84 = v109;
  v107 = *(v109 + 16);
  v85 = v80;
  v86 = v110;
  (v107)(v118, v85, v110);
  v87 = v111;
  (v106)(v111, v81, v82);
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9SnippetUI16SashStandardViewV_05SwiftB00E0PAAE15componentTapped12isNavigation7performQrSb_yyctFQOyAA018FactItemHeroNumberE0V_Qo_AA015StatusIndicatorE0VtMd, &_s9SnippetUI16SashStandardViewV_05SwiftB00E0PAAE15componentTapped12isNavigation7performQrSb_yyctFQOyAA018FactItemHeroNumberE0V_Qo_AA015StatusIndicatorE0VtMR);
  v89 = v120;
  v108((v87 + *(v88 + 48)), v119, v120);
  v90 = v87 + *(v88 + 64);
  v91 = v118;
  (v107)(v90, v118, v86);
  v92 = *(v84 + 8);
  v92(v117, v86);
  v93 = *(v83 + 8);
  v93(v116, v89);
  v94 = v115;
  v95 = v114[1];
  v95(v112, v115);
  v92(v91, v86);
  v93(v119, v120);
  return (v95)(v113, v94);
}

uint64_t closure #1 in closure #3 in GenericMedCompletedLogSnippet.body.getter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit11AppPunchoutVSgMd, &_s10SnippetKit11AppPunchoutVSgMR);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v14 - v4;
  v6 = a1 + *(type metadata accessor for GenericMedCompletedLogSnippet() + 24);
  v7 = *v6;
  if (*v6)
  {
    v8 = type metadata accessor for GenericMedCompletedLogModel();
    outlined init with copy of AppPunchout?(a1 + *(v8 + 24), v5, &_s10SnippetKit11AppPunchoutVSgMd, &_s10SnippetKit11AppPunchoutVSgMR);
    v9 = type metadata accessor for AppPunchout();
    v10 = *(v9 - 8);
    if ((*(v10 + 48))(v5, 1, v9) != 1)
    {
      v11 = v7;
      dispatch thunk of Context.perform(appPunchout:)();

      return (*(v10 + 8))(v5, v9);
    }

    __break(1u);
  }

  v13 = *(v6 + 8);
  type metadata accessor for Context();
  _s9SnippetUI7ContextCAC7Combine16ObservableObjectAAWlTm_0(&lazy protocol witness table cache variable for type Context and conformance Context, MEMORY[0x277D63F68]);
  result = EnvironmentObject.error()();
  __break(1u);
  return result;
}

uint64_t outlined init with copy of GenericMedCompletedLogModel(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t outlined init with take of GenericMedCompletedLogSnippet(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for GenericMedCompletedLogSnippet();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t partial apply for closure #3 in GenericMedCompletedLogSnippet.body.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for GenericMedCompletedLogSnippet() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return closure #3 in GenericMedCompletedLogSnippet.body.getter(v4, a1);
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t outlined destroy of GenericMedCompletedLogModel(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t outlined destroy of AppPunchout?(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t _s9SnippetUI7ContextCAC7Combine16ObservableObjectAAWlTm_0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t partial apply for closure #1 in GenericMedCompletedLogSnippet.body.getter@<X0>(char *a1@<X8>)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewP07SnippetB0E10separators_10isOverrideQr0D3Kit14SeparatorStyleO_SbtFQOyAD018FactItemHeroNumberC0V_Qo_Md, &_s7SwiftUI4ViewP07SnippetB0E10separators_10isOverrideQr0D3Kit14SeparatorStyleO_SbtFQOyAD018FactItemHeroNumberC0V_Qo_MR) - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = *(type metadata accessor for StatusIndicatorView() - 8);
  v7 = *(v1 + 16);
  v8 = v1 + ((v4 + v5 + *(v6 + 80)) & ~*(v6 + 80));

  return closure #1 in GenericMedCompletedLogSnippet.body.getter(v7, v1 + v4, v8, a1);
}

void partial apply for closure #2 in GenericMedCompletedLogSnippet.body.getter()
{
  v1 = *(type metadata accessor for GenericMedCompletedLogSnippet() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = *(type metadata accessor for AppPunchout() - 8);
  v5 = v0 + ((v2 + v3 + *(v4 + 80)) & ~*(v4 + 80));

  closure #2 in GenericMedCompletedLogSnippet.body.getter(v0 + v2);
}

uint64_t lazy protocol witness table accessor for type TupleView<(SashStandardView, <<opaque return type of View.componentTapped(isNavigation:perform:)>>.0, StatusIndicatorView)> and conformance TupleView<A>(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void type metadata completion function for GenericMedCompletedLogSnippet()
{
  type metadata accessor for GenericMedCompletedLogModel();
  if (v0 <= 0x3F)
  {
    type metadata accessor for EnvironmentObject<Context>();
    if (v1 <= 0x3F)
    {
      type metadata accessor for Environment<ColorScheme>();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t objectdestroyTm()
{
  v1 = type metadata accessor for GenericMedCompletedLogSnippet();
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = v0 + v3;
  v6 = *(v0 + v3 + 16);

  v7 = type metadata accessor for GenericMedCompletedLogModel();
  v8 = v7[6];
  v9 = type metadata accessor for AppPunchout();
  v10 = *(v9 - 8);
  if (!(*(v10 + 48))(v0 + v3 + v8, 1, v9))
  {
    (*(v10 + 8))(v5 + v8, v9);
  }

  v11 = *(v5 + v7[8] + 8);

  v12 = *(v5 + v7[10] + 8);

  v13 = *(v5 + v7[11] + 8);

  v14 = *(v5 + v7[12] + 8);

  v15 = *(v5 + v7[13] + 8);

  v16 = v5 + v7[14];
  v17 = type metadata accessor for SnippetHeaderModel();
  if (!(*(*(v17 - 8) + 48))(v16, 1, v17))
  {
    v18 = type metadata accessor for SpeakableString();
    (*(*(v18 - 8) + 8))(v16, v18);
    v19 = *(v16 + *(v17 + 20) + 8);

    v20 = *(v16 + *(v17 + 24) + 8);
  }

  v21 = v5 + v1[5];
  outlined consume of Text.Storage(*v21, *(v21 + 8), *(v21 + 16));
  v22 = *(v21 + 24);

  v23 = v1[7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA11ColorSchemeO_GMd, &_s7SwiftUI11EnvironmentV7ContentOyAA11ColorSchemeO_GMR);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v24 = type metadata accessor for ColorScheme();
    (*(*(v24 - 8) + 8))(v5 + v23, v24);
  }

  else
  {
    v25 = *(v5 + v23);
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t partial apply for closure #1 in closure #3 in GenericMedCompletedLogSnippet.body.getter()
{
  v1 = *(type metadata accessor for GenericMedCompletedLogSnippet() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return closure #1 in closure #3 in GenericMedCompletedLogSnippet.body.getter(v2);
}

uint64_t outlined init with copy of AppPunchout?(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t BloodPressureLogSnippet.colorScheme.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for EnvironmentValues();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA11ColorSchemeO_GMd, &_s7SwiftUI11EnvironmentV7ContentOyAA11ColorSchemeO_GMR);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = (&v17 - v10);
  v12 = type metadata accessor for BloodPressureLogSnippet();
  outlined init with copy of AppPunchout?(v1 + *(v12 + 24), v11, &_s7SwiftUI11EnvironmentV7ContentOyAA11ColorSchemeO_GMd, &_s7SwiftUI11EnvironmentV7ContentOyAA11ColorSchemeO_GMR);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = type metadata accessor for ColorScheme();
    return (*(*(v13 - 8) + 32))(a1, v11, v13);
  }

  else
  {
    v15 = *v11;
    static os_log_type_t.fault.getter();
    v16 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v7, v3);
  }
}

uint64_t BloodPressureLogSnippet.buttonColor.getter()
{
  v0 = type metadata accessor for ColorScheme();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = MEMORY[0x28223BE20](v0);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v11 - v6;
  BloodPressureLogSnippet.colorScheme.getter(&v11 - v6);
  (*(v1 + 104))(v5, *MEMORY[0x277CDF3D8], v0);
  v8 = static ColorScheme.== infix(_:_:)();
  v9 = *(v1 + 8);
  v9(v5, v0);
  v9(v7, v0);
  if (v8)
  {
    return static Color.green.getter();
  }

  else
  {
    return static Color.blue.getter();
  }
}

uint64_t BloodPressureLogSnippet.init(model:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for BloodPressureLogSnippet();
  v5 = (a2 + *(v4 + 20));
  type metadata accessor for Context();
  lazy protocol witness table accessor for type Context and conformance Context(&lazy protocol witness table cache variable for type Context and conformance Context, MEMORY[0x277D63F68]);
  *v5 = EnvironmentObject.init()();
  v5[1] = v6;
  v7 = *(v4 + 24);
  *(a2 + v7) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA11ColorSchemeO_GMd, &_s7SwiftUI11EnvironmentV7ContentOyAA11ColorSchemeO_GMR);
  swift_storeEnumTagMultiPayload();
  return outlined init with take of BloodPressureLogModel(a1, a2, type metadata accessor for BloodPressureLogModel);
}

uint64_t type metadata accessor for BloodPressureLogSnippet()
{
  result = type metadata singleton initialization cache for BloodPressureLogSnippet;
  if (!type metadata singleton initialization cache for BloodPressureLogSnippet)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t BloodPressureLogSnippet.body.getter@<X0>(uint64_t *a1@<X8>)
{
  v255 = a1;
  v2 = type metadata accessor for BloodPressureLogSnippet();
  v228 = *(v2 - 8);
  v3 = *(v228 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v229 = v4;
  v230 = v186 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9SnippetUI14ComponentStackVy05SwiftB09TupleViewVy08WellnessB00a6HeaderG0V_AD0G0PAAE16componentSpacing3top6bottomQr12CoreGraphics7CGFloatV_AQtFQOyAkAE10separators_10isOverrideQr0A3Kit14SeparatorStyleO_SbtFQOyAA018FactItemHeroNumberG0V_Qo__Qo_AA015StatusIndicatorG0VtGGMd, &_s9SnippetUI14ComponentStackVy05SwiftB09TupleViewVy08WellnessB00a6HeaderG0V_AD0G0PAAE16componentSpacing3top6bottomQr12CoreGraphics7CGFloatV_AQtFQOyAkAE10separators_10isOverrideQr0A3Kit14SeparatorStyleO_SbtFQOyAA018FactItemHeroNumberG0V_Qo__Qo_AA015StatusIndicatorG0VtGGMR);
  v233 = *(v5 - 8);
  v234 = v5;
  v6 = *(v233 + 64);
  MEMORY[0x28223BE20](v5);
  v231 = v186 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewP07SnippetB0E15componentTapped12isNavigation7performQrSb_yyctFQOyAD14ComponentStackVyAA05TupleC0Vy08WellnessB00d6HeaderC0V_AcDE0E7Spacing3top6bottomQr12CoreGraphics7CGFloatV_ATtFQOyAcDE10separators_0G8OverrideQr0D3Kit14SeparatorStyleO_SbtFQOyAD018FactItemHeroNumberC0V_Qo__Qo_AD015StatusIndicatorC0VtGG_Qo_Md, &_s7SwiftUI4ViewP07SnippetB0E15componentTapped12isNavigation7performQrSb_yyctFQOyAD14ComponentStackVyAA05TupleC0Vy08WellnessB00d6HeaderC0V_AcDE0E7Spacing3top6bottomQr12CoreGraphics7CGFloatV_ATtFQOyAcDE10separators_0G8OverrideQr0D3Kit14SeparatorStyleO_SbtFQOyAD018FactItemHeroNumberC0V_Qo__Qo_AD015StatusIndicatorC0VtGG_Qo_MR);
  v236 = *(v8 - 8);
  v237 = v8;
  v9 = *(v236 + 64);
  v10 = MEMORY[0x28223BE20](v8);
  v232 = v186 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v235 = v186 - v12;
  v13 = type metadata accessor for SeparatorStyle();
  v226 = *(v13 - 1);
  v227 = v13;
  v14 = *(v226 + 64);
  MEMORY[0x28223BE20](v13);
  v222 = v186 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v223 = type metadata accessor for FactItemHeroNumberView();
  v220 = *(v223 - 8);
  v16 = *(v220 + 64);
  MEMORY[0x28223BE20](v223);
  v218 = v186 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v224 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewP07SnippetB0E10separators_10isOverrideQr0D3Kit14SeparatorStyleO_SbtFQOyAD018FactItemHeroNumberC0V_Qo_Md, &_s7SwiftUI4ViewP07SnippetB0E10separators_10isOverrideQr0D3Kit14SeparatorStyleO_SbtFQOyAD018FactItemHeroNumberC0V_Qo_MR);
  v221 = *(v224 - 8);
  v18 = *(v221 + 64);
  MEMORY[0x28223BE20](v224);
  v219 = v186 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewP07SnippetB0E16componentSpacing3top6bottomQr12CoreGraphics7CGFloatV_AJtFQOyAcDE10separators_10isOverrideQr0D3Kit14SeparatorStyleO_SbtFQOyAD018FactItemHeroNumberC0V_Qo__Qo_Md, &_s7SwiftUI4ViewP07SnippetB0E16componentSpacing3top6bottomQr12CoreGraphics7CGFloatV_AJtFQOyAcDE10separators_10isOverrideQr0D3Kit14SeparatorStyleO_SbtFQOyAD018FactItemHeroNumberC0V_Qo__Qo_MR);
  v244 = *(v20 - 8);
  v245 = v20;
  v21 = *(v244 + 64);
  v22 = MEMORY[0x28223BE20](v20);
  v240 = v186 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v225 = v23;
  MEMORY[0x28223BE20](v22);
  v243 = v186 - v24;
  v25 = type metadata accessor for StatusIndicatorView.IndicatorType();
  v210 = *(v25 - 8);
  v211 = v25;
  v26 = *(v210 + 64);
  MEMORY[0x28223BE20](v25);
  v209 = v186 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = type metadata accessor for StatusIndicatorView();
  v241 = *(v28 - 8);
  v242 = v28;
  v29 = *(v241 + 64);
  v30 = MEMORY[0x28223BE20](v28);
  v239 = v186 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v217 = v31;
  MEMORY[0x28223BE20](v30);
  v250 = v186 - v32;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4FontV6DesignOSgMd, &_s7SwiftUI4FontV6DesignOSgMR);
  v34 = *(*(v33 - 8) + 64);
  MEMORY[0x28223BE20](v33 - 8);
  v238 = v186 - v35;
  v36 = type metadata accessor for LocalizedStringKey.StringInterpolation();
  v37 = *(*(v36 - 8) + 64);
  MEMORY[0x28223BE20](v36 - 8);
  v246 = v186 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v207 = type metadata accessor for SnippetHeaderView();
  v212 = *(v207 - 8);
  v39 = *(v212 + 64);
  v40 = MEMORY[0x28223BE20](v207);
  v213 = v41;
  v214 = v186 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v40);
  v249 = v186 - v42;
  v248 = type metadata accessor for Font.TextStyle();
  v251 = *(v248 - 8);
  v43 = v251[8];
  v44 = MEMORY[0x28223BE20](v248);
  v208 = v186 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v44);
  v247 = v186 - v46;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit11AppPunchoutVSgMd, &_s10SnippetKit11AppPunchoutVSgMR);
  v48 = *(*(v47 - 8) + 64);
  MEMORY[0x28223BE20](v47 - 8);
  v50 = v186 - v49;
  v254 = type metadata accessor for AppPunchout();
  v253 = *(v254 - 8);
  v51 = *(v253 + 64);
  v52 = MEMORY[0x28223BE20](v254);
  v215 = v53;
  v216 = v186 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v52);
  v252 = v186 - v54;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WellnessUI18SnippetHeaderModelVSgMd, &_s10WellnessUI18SnippetHeaderModelVSgMR);
  v56 = *(*(v55 - 8) + 64);
  MEMORY[0x28223BE20](v55 - 8);
  v58 = v186 - v57;
  v59 = type metadata accessor for SnippetHeaderModel();
  v60 = *(v59 - 8);
  v61 = *(v60 + 64);
  MEMORY[0x28223BE20](v59);
  v63 = v186 - ((v62 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = type metadata accessor for BloodPressureLogModel();
  outlined init with copy of AppPunchout?(v1 + v64[8], v58, &_s10WellnessUI18SnippetHeaderModelVSgMd, &_s10WellnessUI18SnippetHeaderModelVSgMR);
  if ((*(v60 + 48))(v58, 1, v59) == 1)
  {
    outlined destroy of AppPunchout?(v58, &_s10WellnessUI18SnippetHeaderModelVSgMd, &_s10WellnessUI18SnippetHeaderModelVSgMR);
LABEL_16:
    result = AnyView.init<A>(_:)();
    goto LABEL_17;
  }

  outlined init with take of BloodPressureLogModel(v58, v63, type metadata accessor for SnippetHeaderModel);
  v65 = (v1 + v64[10]);
  v66 = v65[1];
  if (!v66)
  {
    v69 = v63;
LABEL_15:
    outlined destroy of SnippetHeaderModel(v69, type metadata accessor for SnippetHeaderModel);
    goto LABEL_16;
  }

  v206 = *v65;
  outlined init with copy of AppPunchout?(v1, v50, &_s10SnippetKit11AppPunchoutVSgMd, &_s10SnippetKit11AppPunchoutVSgMR);
  v67 = v253;
  v68 = v254;
  if ((*(v253 + 48))(v50, 1, v254) == 1)
  {
    outlined destroy of SnippetHeaderModel(v63, type metadata accessor for SnippetHeaderModel);
    outlined destroy of AppPunchout?(v50, &_s10SnippetKit11AppPunchoutVSgMd, &_s10SnippetKit11AppPunchoutVSgMR);
    goto LABEL_16;
  }

  v203 = v66;
  v70 = v63;
  v71 = v252;
  v204 = *(v67 + 32);
  v205 = v67 + 32;
  v204(v252, v50, v68);
  v72 = (v1 + v64[6]);
  v73 = v72[1];
  if (!v73)
  {
    (*(v67 + 8))(v71, v68);
LABEL_14:
    v69 = v70;
    goto LABEL_15;
  }

  v74 = (v1 + v64[5]);
  v75 = v74[1];
  if (!v75 || (v76 = (v1 + v64[9]), (v77 = v76[1]) == 0) || (v78 = (v1 + v64[7]), (v79 = v78[1]) == 0))
  {
    (*(v67 + 8))(v252, v68);
    goto LABEL_14;
  }

  v192 = *v72;
  v194 = *v74;
  v199 = *v76;
  v195 = *v78;
  v202 = v75;
  v200 = v73;
  v80 = *MEMORY[0x277CE0A78];
  v196 = v70;
  v198 = v1;
  v81 = v251[13];
  v81(v247, v80, v248);
  v82 = v249;
  outlined init with copy of BloodPressureLogModel(v70, v249, type metadata accessor for SnippetHeaderModel);
  (*(v60 + 56))(v82, 0, 1, v59);
  v83 = v207;
  v84 = *(v207 + 20);
  *(v82 + v84) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA11ColorSchemeO_GMd, &_s7SwiftUI11EnvironmentV7ContentOyAA11ColorSchemeO_GMR);
  swift_storeEnumTagMultiPayload();
  v85 = *(v83 + 24);
  *(v82 + v85) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA19ColorSchemeContrastO_GMd, &_s7SwiftUI11EnvironmentV7ContentOyAA19ColorSchemeContrastO_GMR);
  swift_storeEnumTagMultiPayload();
  v86 = v203;

  v193 = v79;
  LocalizedStringKey.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v87._countAndFlagsBits = 0;
  v87._object = 0xE000000000000000;
  LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v87);
  v88._countAndFlagsBits = v206;
  v88._object = v86;
  LocalizedStringKey.StringInterpolation.appendInterpolation(_:)(v88);

  v89._countAndFlagsBits = 0;
  v89._object = 0xE000000000000000;
  LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v89);
  LocalizedStringKey.init(stringInterpolation:)();
  v90 = Text.init(_:tableName:bundle:comment:)();
  v191 = v77;
  v91 = v90;
  v206 = v92;
  LOBYTE(v86) = v93;
  v203 = v94;
  v95 = v208;
  v96 = v248;
  v81(v208, *MEMORY[0x277CE0A60], v248);
  v189 = *MEMORY[0x277CE0998];
  v97 = v189;
  v98 = type metadata accessor for Font.Design();
  v186[0] = v98;
  v99 = *(v98 - 8);
  v188 = *(v99 + 104);
  v207 = v99 + 104;
  v100 = v238;
  v188(v238, v97, v98);
  v101 = *(v99 + 56);
  v186[1] = v99 + 56;
  v187 = v101;
  v101(v100, 0, 1, v98);
  static Font.system(_:design:weight:)();
  outlined destroy of AppPunchout?(v100, &_s7SwiftUI4FontV6DesignOSgMd, &_s7SwiftUI4FontV6DesignOSgMR);
  v102 = v251[1];
  ++v251;
  v197 = v102;
  v102(v95, v96);
  v103 = v91;
  v104 = v206;
  v105 = Text.font(_:)();
  v107 = v106;
  LOBYTE(v97) = v108;

  outlined consume of Text.Storage(v103, v104, v86 & 1);

  LODWORD(v271) = static HierarchicalShapeStyle.secondary.getter();
  v109 = Text.foregroundStyle<A>(_:)();
  v111 = v110;
  LOBYTE(v103) = v112;
  outlined consume of Text.Storage(v105, v107, v97 & 1);

  static Font.Weight.semibold.getter();
  v203 = Text.fontWeight(_:)();
  v201 = v113;
  v190 = v114;
  v206 = v115;
  outlined consume of Text.Storage(v109, v111, v103 & 1);

  LocalizedStringKey.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v116._countAndFlagsBits = 0;
  v116._object = 0xE000000000000000;
  LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v116);
  v117._countAndFlagsBits = v192;
  v117._object = v200;
  LocalizedStringKey.StringInterpolation.appendInterpolation(_:)(v117);

  v118._countAndFlagsBits = 0;
  v118._object = 0xE000000000000000;
  LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v118);
  LocalizedStringKey.init(stringInterpolation:)();
  v119 = Text.init(_:tableName:bundle:comment:)();
  v121 = v120;
  LOBYTE(v82) = v122;
  v123 = v238;
  v124 = v186[0];
  v188(v238, v189, v186[0]);
  v187(v123, 0, 1, v124);
  static Font.system(_:design:weight:)();
  outlined destroy of AppPunchout?(v123, &_s7SwiftUI4FontV6DesignOSgMd, &_s7SwiftUI4FontV6DesignOSgMR);
  v125 = Text.font(_:)();
  v127 = v126;
  LOBYTE(v104) = v128;

  outlined consume of Text.Storage(v119, v121, v82 & 1);

  v129 = Text.bold()();
  v207 = v130;
  v208 = v131;
  LODWORD(v238) = v132;
  outlined consume of Text.Storage(v125, v127, v104 & 1);

  LocalizedStringKey.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v133._countAndFlagsBits = 0;
  v133._object = 0xE000000000000000;
  LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v133);
  v134._countAndFlagsBits = v194;
  v134._object = v202;
  LocalizedStringKey.StringInterpolation.appendInterpolation(_:)(v134);

  v135._countAndFlagsBits = 8236;
  v135._object = 0xE200000000000000;
  LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v135);
  v136._countAndFlagsBits = v199;
  v136._object = v191;
  LocalizedStringKey.StringInterpolation.appendInterpolation(_:)(v136);

  v137._countAndFlagsBits = 0;
  v137._object = 0xE000000000000000;
  LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v137);
  LocalizedStringKey.init(stringInterpolation:)();
  v138 = Text.init(_:tableName:bundle:comment:)();
  v199 = v139;
  v200 = v138;
  LODWORD(v194) = v140;
  v202 = v141;
  v273 = MEMORY[0x277D837D0];
  v274 = MEMORY[0x277D63F88];
  v271 = v195;
  v272 = v193;
  (*(v210 + 104))(v209, *MEMORY[0x277D63D58], v211);
  StatusIndicatorView.init(message:type:showIndicator:)();
  v142 = MEMORY[0x277CE0BD0];
  v143 = MEMORY[0x277D638F0];
  v273 = MEMORY[0x277CE0BD0];
  v274 = MEMORY[0x277D638F0];
  v144 = swift_allocObject();
  v270 = v143;
  v271 = v144;
  v192 = v129;
  v145 = v207;
  v146 = v208;
  *(v144 + 16) = v129;
  *(v144 + 24) = v145;
  LODWORD(v246) = v238 & 1;
  *(v144 + 32) = v238 & 1;
  *(v144 + 40) = v146;
  v269 = v142;
  v147 = swift_allocObject();
  v267 = 0;
  v268 = v147;
  v148 = v203;
  v149 = v201;
  *(v147 + 16) = v203;
  *(v147 + 24) = v149;
  LODWORD(v238) = v190 & 1;
  *(v147 + 32) = v190 & 1;
  *(v147 + 40) = v206;
  v265 = 0u;
  v266 = 0u;
  v263 = v142;
  v264 = v143;
  v150 = swift_allocObject();
  v262 = v150;
  v152 = v199;
  v151 = v200;
  *(v150 + 16) = v200;
  *(v150 + 24) = v152;
  LODWORD(v211) = v194 & 1;
  *(v150 + 32) = v194 & 1;
  *(v150 + 40) = v202;
  v261 = 0;
  v259 = 0u;
  v260 = 0u;
  v258 = 0;
  v256 = 0u;
  v257 = 0u;
  outlined copy of Text.Storage(v129, v145, v246);

  outlined copy of Text.Storage(v148, v149, v238);

  outlined copy of Text.Storage(v151, v152, v211);

  v153 = v218;
  FactItemHeroNumberView.init(number:text1:text2:text3:text4:text5:)();
  v155 = v226;
  v154 = v227;
  v156 = v222;
  (*(v226 + 104))(v222, *MEMORY[0x277D62F40], v227);
  v157 = lazy protocol witness table accessor for type Context and conformance Context(&lazy protocol witness table cache variable for type FactItemHeroNumberView and conformance FactItemHeroNumberView, MEMORY[0x277D63E08]);
  v158 = v219;
  v159 = v223;
  View.separators(_:isOverride:)();
  (*(v155 + 8))(v156, v154);
  (*(v220 + 8))(v153, v159);
  v271 = v159;
  v272 = v157;
  swift_getOpaqueTypeConformance2();
  v160 = v243;
  v161 = v224;
  View.componentSpacing(top:bottom:)();
  (*(v221 + 8))(v158, v161);
  v227 = type metadata accessor for SnippetHeaderView;
  v162 = v214;
  outlined init with copy of BloodPressureLogModel(v249, v214, type metadata accessor for SnippetHeaderView);
  v163 = v244;
  v164 = v245;
  (*(v244 + 16))(v240, v160, v245);
  v166 = v241;
  v165 = v242;
  (*(v241 + 16))(v239, v250, v242);
  v167 = (*(v212 + 80) + 16) & ~*(v212 + 80);
  v168 = (v213 + *(v163 + 80) + v167) & ~*(v163 + 80);
  v169 = (v225 + *(v166 + 80) + v168) & ~*(v166 + 80);
  v170 = swift_allocObject();
  outlined init with take of BloodPressureLogModel(v162, v170 + v167, v227);
  (*(v163 + 32))(v170 + v168, v240, v164);
  (*(v166 + 32))(v170 + v169, v239, v165);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI9TupleViewVy08WellnessB0013SnippetHeaderD0V_AA0D0P0fB0E16componentSpacing3top6bottomQr12CoreGraphics7CGFloatV_AOtFQOyAhIE10separators_10isOverrideQr0F3Kit14SeparatorStyleO_SbtFQOyAI018FactItemHeroNumberD0V_Qo__Qo_AI015StatusIndicatorD0VtGMd, &_s7SwiftUI9TupleViewVy08WellnessB0013SnippetHeaderD0V_AA0D0P0fB0E16componentSpacing3top6bottomQr12CoreGraphics7CGFloatV_AOtFQOyAhIE10separators_10isOverrideQr0F3Kit14SeparatorStyleO_SbtFQOyAI018FactItemHeroNumberD0V_Qo__Qo_AI015StatusIndicatorD0VtGMR);
  lazy protocol witness table accessor for type TupleView<(SashStandardView, <<opaque return type of View.componentTapped(isNavigation:perform:)>>.0, StatusIndicatorView)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type TupleView<(SnippetHeaderView, <<opaque return type of View.componentSpacing(top:bottom:)>>.0, StatusIndicatorView)> and conformance TupleView<A>, &_s7SwiftUI9TupleViewVy08WellnessB0013SnippetHeaderD0V_AA0D0P0fB0E16componentSpacing3top6bottomQr12CoreGraphics7CGFloatV_AOtFQOyAhIE10separators_10isOverrideQr0F3Kit14SeparatorStyleO_SbtFQOyAI018FactItemHeroNumberD0V_Qo__Qo_AI015StatusIndicatorD0VtGMd, &_s7SwiftUI9TupleViewVy08WellnessB0013SnippetHeaderD0V_AA0D0P0fB0E16componentSpacing3top6bottomQr12CoreGraphics7CGFloatV_AOtFQOyAhIE10separators_10isOverrideQr0F3Kit14SeparatorStyleO_SbtFQOyAI018FactItemHeroNumberD0V_Qo__Qo_AI015StatusIndicatorD0VtGMR);
  v171 = v231;
  ComponentStack.init(content:)();
  v172 = v230;
  outlined init with copy of BloodPressureLogModel(v198, v230, type metadata accessor for BloodPressureLogSnippet);
  v173 = v253;
  v174 = v216;
  v175 = v254;
  (*(v253 + 16))(v216, v252, v254);
  v176 = (*(v228 + 80) + 16) & ~*(v228 + 80);
  v177 = (v229 + *(v173 + 80) + v176) & ~*(v173 + 80);
  v178 = swift_allocObject();
  outlined init with take of BloodPressureLogModel(v172, v178 + v176, type metadata accessor for BloodPressureLogSnippet);
  v204((v178 + v177), v174, v175);
  v179 = lazy protocol witness table accessor for type TupleView<(SashStandardView, <<opaque return type of View.componentTapped(isNavigation:perform:)>>.0, StatusIndicatorView)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type ComponentStack<TupleView<(SnippetHeaderView, <<opaque return type of View.componentSpacing(top:bottom:)>>.0, StatusIndicatorView)>> and conformance ComponentStack<A>, &_s9SnippetUI14ComponentStackVy05SwiftB09TupleViewVy08WellnessB00a6HeaderG0V_AD0G0PAAE16componentSpacing3top6bottomQr12CoreGraphics7CGFloatV_AQtFQOyAkAE10separators_10isOverrideQr0A3Kit14SeparatorStyleO_SbtFQOyAA018FactItemHeroNumberG0V_Qo__Qo_AA015StatusIndicatorG0VtGGMd, &_s9SnippetUI14ComponentStackVy05SwiftB09TupleViewVy08WellnessB00a6HeaderG0V_AD0G0PAAE16componentSpacing3top6bottomQr12CoreGraphics7CGFloatV_AQtFQOyAkAE10separators_10isOverrideQr0A3Kit14SeparatorStyleO_SbtFQOyAA018FactItemHeroNumberG0V_Qo__Qo_AA015StatusIndicatorG0VtGGMR);
  v181 = v234;
  v180 = v235;
  View.componentTapped(isNavigation:perform:)();

  (*(v233 + 8))(v171, v181);
  v183 = v236;
  v182 = v237;
  (*(v236 + 16))(v232, v180, v237);
  v271 = v181;
  v272 = v179;
  swift_getOpaqueTypeConformance2();
  v184 = AnyView.init<A>(_:)();
  outlined consume of Text.Storage(v200, v199, v211);

  outlined consume of Text.Storage(v203, v201, v238);

  outlined consume of Text.Storage(v192, v207, v246);

  (*(v183 + 8))(v180, v182);
  (*(v244 + 8))(v243, v245);
  (*(v241 + 8))(v250, v242);
  outlined destroy of SnippetHeaderModel(v249, type metadata accessor for SnippetHeaderView);
  v197(v247, v248);
  (*(v173 + 8))(v252, v175);
  outlined destroy of SnippetHeaderModel(v196, type metadata accessor for SnippetHeaderModel);
  result = v184;
LABEL_17:
  *v255 = result;
  return result;
}

uint64_t closure #1 in BloodPressureLogSnippet.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v31 = a2;
  v32 = a3;
  v33 = a4;
  v5 = type metadata accessor for StatusIndicatorView();
  v27 = v5;
  v29 = *(v5 - 8);
  v6 = v29;
  v7 = *(v29 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewP07SnippetB0E16componentSpacing3top6bottomQr12CoreGraphics7CGFloatV_AJtFQOyAcDE10separators_10isOverrideQr0D3Kit14SeparatorStyleO_SbtFQOyAD018FactItemHeroNumberC0V_Qo__Qo_Md, &_s7SwiftUI4ViewP07SnippetB0E16componentSpacing3top6bottomQr12CoreGraphics7CGFloatV_AJtFQOyAcDE10separators_10isOverrideQr0D3Kit14SeparatorStyleO_SbtFQOyAD018FactItemHeroNumberC0V_Qo__Qo_MR);
  v28 = v10;
  v30 = *(v10 - 8);
  v11 = v30;
  v12 = *(v30 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v26 - v13;
  v15 = type metadata accessor for SnippetHeaderView();
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v18 = &v26 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of BloodPressureLogModel(a1, v18, type metadata accessor for SnippetHeaderView);
  v19 = *(v11 + 16);
  v19(v14, v31, v10);
  v20 = *(v6 + 16);
  v20(v9, v32, v5);
  v21 = v33;
  outlined init with copy of BloodPressureLogModel(v18, v33, type metadata accessor for SnippetHeaderView);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WellnessUI17SnippetHeaderViewV_05SwiftB00E0P0cB0E16componentSpacing3top6bottomQr12CoreGraphics7CGFloatV_AMtFQOyAfGE10separators_10isOverrideQr0C3Kit14SeparatorStyleO_SbtFQOyAG018FactItemHeroNumberE0V_Qo__Qo_AG015StatusIndicatorE0VtMd, " W");
  v23 = v28;
  v19((v21 + *(v22 + 48)), v14, v28);
  v24 = v27;
  v20((v21 + *(v22 + 64)), v9, v27);
  (*(v29 + 8))(v9, v24);
  (*(v30 + 8))(v14, v23);
  return outlined destroy of SnippetHeaderModel(v18, type metadata accessor for SnippetHeaderView);
}

void closure #2 in BloodPressureLogSnippet.body.getter(uint64_t a1)
{
  v1 = a1 + *(type metadata accessor for BloodPressureLogSnippet() + 20);
  if (*v1)
  {
    v3 = *v1;
    dispatch thunk of Context.perform(appPunchout:)();
  }

  else
  {
    v2 = *(v1 + 8);
    type metadata accessor for Context();
    lazy protocol witness table accessor for type Context and conformance Context(&lazy protocol witness table cache variable for type Context and conformance Context, MEMORY[0x277D63F68]);
    EnvironmentObject.error()();
    __break(1u);
  }
}

uint64_t partial apply for closure #1 in BloodPressureLogSnippet.body.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SnippetHeaderView() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = v4 + *(v3 + 64);
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewP07SnippetB0E16componentSpacing3top6bottomQr12CoreGraphics7CGFloatV_AJtFQOyAcDE10separators_10isOverrideQr0D3Kit14SeparatorStyleO_SbtFQOyAD018FactItemHeroNumberC0V_Qo__Qo_Md, &_s7SwiftUI4ViewP07SnippetB0E16componentSpacing3top6bottomQr12CoreGraphics7CGFloatV_AJtFQOyAcDE10separators_10isOverrideQr0D3Kit14SeparatorStyleO_SbtFQOyAD018FactItemHeroNumberC0V_Qo__Qo_MR) - 8);
  v7 = (v5 + *(v6 + 80)) & ~*(v6 + 80);
  v8 = *(v6 + 64);
  v9 = *(type metadata accessor for StatusIndicatorView() - 8);
  v10 = v1 + ((v7 + v8 + *(v9 + 80)) & ~*(v9 + 80));

  return closure #1 in BloodPressureLogSnippet.body.getter(v1 + v4, v1 + v7, v10, a1);
}

uint64_t outlined init with copy of BloodPressureLogModel(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t outlined init with take of BloodPressureLogModel(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void partial apply for closure #2 in BloodPressureLogSnippet.body.getter()
{
  v1 = *(type metadata accessor for BloodPressureLogSnippet() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = *(type metadata accessor for AppPunchout() - 8);
  v5 = v0 + ((v2 + v3 + *(v4 + 80)) & ~*(v4 + 80));

  closure #2 in BloodPressureLogSnippet.body.getter(v0 + v2);
}

uint64_t outlined destroy of SnippetHeaderModel(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void type metadata completion function for BloodPressureLogSnippet()
{
  type metadata accessor for BloodPressureLogModel();
  if (v0 <= 0x3F)
  {
    type metadata accessor for EnvironmentObject<Context>();
    if (v1 <= 0x3F)
    {
      type metadata accessor for Environment<ColorScheme>();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t SleepQuerySnippet.init(model:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  Snippet = type metadata accessor for SleepQuerySnippet();
  v5 = (a2 + *(Snippet + 20));
  type metadata accessor for Context();
  lazy protocol witness table accessor for type Context and conformance Context(&lazy protocol witness table cache variable for type Context and conformance Context, MEMORY[0x277D63F68]);
  *v5 = EnvironmentObject.init()();
  v5[1] = v6;
  v7 = (a2 + *(Snippet + 24));
  *v7 = 0;
  v7[1] = 0;
  return outlined init with take of SleepQueryModel(a1, a2, type metadata accessor for SleepQueryModel);
}

uint64_t type metadata accessor for SleepQuerySnippet()
{
  result = type metadata singleton initialization cache for SleepQuerySnippet;
  if (!type metadata singleton initialization cache for SleepQuerySnippet)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t SleepQuerySnippet.body.getter@<X0>(uint64_t *a1@<X8>)
{
  v177 = a1;
  v155 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9SnippetUI14ComponentStackVy05SwiftB09TupleViewVy08WellnessB00a6HeaderG0V_AD03AnyG0VtGGMd, &_s9SnippetUI14ComponentStackVy05SwiftB09TupleViewVy08WellnessB00a6HeaderG0V_AD03AnyG0VtGGMR);
  v153 = *(v155 - 8);
  v2 = *(v153 + 64);
  MEMORY[0x28223BE20](v155);
  v150 = &v146 - v3;
  v156 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewP07SnippetB0E15componentTapped12isNavigation7performQrSb_yyctFQOyAD14ComponentStackVyAA05TupleC0Vy08WellnessB00d6HeaderC0V_AA03AnyC0VtGG_Qo_Md, &_s7SwiftUI4ViewP07SnippetB0E15componentTapped12isNavigation7performQrSb_yyctFQOyAD14ComponentStackVyAA05TupleC0Vy08WellnessB00d6HeaderC0V_AA03AnyC0VtGG_Qo_MR);
  v154 = *(v156 - 8);
  v4 = *(v154 + 64);
  v5 = MEMORY[0x28223BE20](v156);
  v151 = &v146 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v152 = &v146 - v7;
  Snippet = type metadata accessor for SleepQuerySnippet();
  v170 = *(Snippet - 8);
  v9 = *(v170 + 64);
  MEMORY[0x28223BE20](Snippet - 8);
  v171 = v10;
  v172 = &v146 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v162 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9SnippetUI14ComponentStackVy05SwiftB09TupleViewVy08WellnessB00a6HeaderG0V_AD0G0PAAE10separators_10isOverrideQr0A3Kit14SeparatorStyleO_SbtFQOyAA018FactItemHeroNumberG0V_Qo_tGGMd, &_s9SnippetUI14ComponentStackVy05SwiftB09TupleViewVy08WellnessB00a6HeaderG0V_AD0G0PAAE10separators_10isOverrideQr0A3Kit14SeparatorStyleO_SbtFQOyAA018FactItemHeroNumberG0V_Qo_tGGMR);
  v160 = *(v162 - 8);
  v11 = *(v160 + 64);
  MEMORY[0x28223BE20](v162);
  v158 = &v146 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewP07SnippetB0E15componentTapped12isNavigation7performQrSb_yyctFQOyAD14ComponentStackVyAA05TupleC0Vy08WellnessB00d6HeaderC0V_AcDE10separators_0G8OverrideQr0D3Kit14SeparatorStyleO_SbtFQOyAD018FactItemHeroNumberC0V_Qo_tGG_Qo_Md, &_s7SwiftUI4ViewP07SnippetB0E15componentTapped12isNavigation7performQrSb_yyctFQOyAD14ComponentStackVyAA05TupleC0Vy08WellnessB00d6HeaderC0V_AcDE10separators_0G8OverrideQr0D3Kit14SeparatorStyleO_SbtFQOyAD018FactItemHeroNumberC0V_Qo_tGG_Qo_MR);
  v163 = *(v13 - 8);
  v164 = v13;
  v14 = *(v163 + 64);
  v15 = MEMORY[0x28223BE20](v13);
  v159 = &v146 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v161 = &v146 - v17;
  v18 = type metadata accessor for LocalizedStringKey.StringInterpolation();
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18 - 8);
  v157 = &v146 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit11AppPunchoutVSgMd, &_s10SnippetKit11AppPunchoutVSgMR);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x28223BE20](v21 - 8);
  v174 = (&v146 - v23);
  v24 = type metadata accessor for AppPunchout();
  v25 = *(v24 - 8);
  v175 = v24;
  v176 = v25;
  v26 = *(v25 + 64);
  v27 = MEMORY[0x28223BE20](v24);
  v168 = v28;
  v169 = &v146 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v173 = &v146 - v29;
  v30 = type metadata accessor for SnippetHeaderView();
  v165 = *(v30 - 8);
  v31 = *(v165 + 64);
  v32 = MEMORY[0x28223BE20](v30);
  v166 = v33;
  v167 = &v146 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v32);
  v35 = &v146 - v34;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WellnessUI18SnippetHeaderModelVSgMd, &_s10WellnessUI18SnippetHeaderModelVSgMR);
  v37 = *(*(v36 - 8) + 64);
  MEMORY[0x28223BE20](v36 - 8);
  v39 = &v146 - v38;
  Model = type metadata accessor for SleepQueryModel();
  v41 = Model[5];
  v178 = v1;
  outlined init with copy of AppPunchout?(v1 + v41, v39, &_s10WellnessUI18SnippetHeaderModelVSgMd, &_s10WellnessUI18SnippetHeaderModelVSgMR);
  v42 = type metadata accessor for SnippetHeaderModel();
  v43 = (*(*(v42 - 8) + 48))(v39, 1, v42);
  outlined destroy of AppPunchout?(v39, &_s10WellnessUI18SnippetHeaderModelVSgMd, &_s10WellnessUI18SnippetHeaderModelVSgMR);
  if (v43 == 1)
  {
    result = AnyView.init<A>(_:)();
    *v177 = result;
    return result;
  }

  v45 = v178;
  outlined init with copy of AppPunchout?(v178 + v41, v35, &_s10WellnessUI18SnippetHeaderModelVSgMd, &_s10WellnessUI18SnippetHeaderModelVSgMR);
  v46 = *(v30 + 20);
  *&v35[v46] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA11ColorSchemeO_GMd, &_s7SwiftUI11EnvironmentV7ContentOyAA11ColorSchemeO_GMR);
  swift_storeEnumTagMultiPayload();
  v47 = *(v30 + 24);
  *&v35[v47] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA19ColorSchemeContrastO_GMd, &_s7SwiftUI11EnvironmentV7ContentOyAA19ColorSchemeContrastO_GMR);
  swift_storeEnumTagMultiPayload();
  v48 = (v45 + Model[6]);
  v49 = v48[1];
  v50 = v177;
  v51 = v35;
  if (!v49)
  {
    goto LABEL_6;
  }

  v52 = *v48;
  v53 = v174;
  outlined init with copy of AppPunchout?(v178, v174, &_s10SnippetKit11AppPunchoutVSgMd, &_s10SnippetKit11AppPunchoutVSgMR);
  v55 = v175;
  v54 = v176;
  if ((*(v176 + 48))(v53, 1, v175) == 1)
  {
    outlined destroy of AppPunchout?(v53, &_s10SnippetKit11AppPunchoutVSgMd, &_s10SnippetKit11AppPunchoutVSgMR);
LABEL_6:
    v56 = AnyView.init<A>(_:)();
LABEL_16:
    v143 = v51;
    goto LABEL_17;
  }

  v149._countAndFlagsBits = v52;
  v149._object = v49;
  v57 = v53;
  v58 = v54 + 32;
  v59 = *(v54 + 32);
  v60 = v173;
  (v59)(v173, v57, v55);
  v61 = (v178 + Model[15]);
  v62 = v61[1];
  if (v62)
  {
    v63 = (v178 + Model[7]);
    v64 = v63[1];
    if (v64)
    {
      v65 = *v61;
      v152 = *v63;
      *&v189 = v65;
      *(&v189 + 1) = v62;
      v66 = lazy protocol witness table accessor for type String and conformance String();

      v174 = v59;
      v147 = v54 + 32;
      v67 = MEMORY[0x2743E0AE0](32, 0xE100000000000000, 0x7FFFFFFFFFFFFFFFLL, 1, MEMORY[0x277D837D0], v66);
      LocalizedStringKey.init(stringLiteral:)();
      v68 = Text.init(_:tableName:bundle:comment:)();
      v146 = v64;
      v148 = v51;
      *&v189 = v68;
      *(&v189 + 1) = v69;
      LOBYTE(v190) = v70;
      *(&v190 + 1) = v71;
      MEMORY[0x28223BE20](v68);
      v145 = v178;
      specialized Sequence.forEach(_:)(closure #1 in SleepQuerySnippet.formatSleepData(sleepDuration:)partial apply, (&v146 - 4), v67);

      v154 = *(&v189 + 1);
      v155 = v189;
      LODWORD(v153) = v190;
      v156 = *(&v190 + 1);
      LocalizedStringKey.StringInterpolation.init(literalCapacity:interpolationCount:)();
      v72._countAndFlagsBits = 0;
      v72._object = 0xE000000000000000;
      LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v72);
      LocalizedStringKey.StringInterpolation.appendInterpolation(_:)(v149);
      v73._countAndFlagsBits = 0;
      v73._object = 0xE000000000000000;
      LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v73);
      LocalizedStringKey.init(stringInterpolation:)();
      LOWORD(v145) = 256;
      v144 = 0;
      v74 = Text.init(_:tableName:bundle:comment:)();
      v76 = v75;
      LODWORD(v149._object) = v77;
      v157 = v78;
      v79 = v167;
      outlined init with copy of SleepQueryModel(v51, v167, type metadata accessor for SnippetHeaderView);
      v80 = (*(v165 + 80) + 16) & ~*(v165 + 80);
      v81 = (v166 + v80 + 7) & 0xFFFFFFFFFFFFFFF8;
      v82 = (v81 + 39) & 0xFFFFFFFFFFFFFFF8;
      v83 = swift_allocObject();
      outlined init with take of SleepQueryModel(v79, v83 + v80, type metadata accessor for SnippetHeaderView);
      v84 = v83 + v81;
      v86 = v154;
      v85 = v155;
      *v84 = v155;
      *(v84 + 8) = v86;
      v87 = v153;
      *(v84 + 16) = v153;
      *(v84 + 24) = v156;
      v88 = v83 + v82;
      v150 = v76;
      v151 = v74;
      *v88 = v74;
      *(v88 + 8) = v76;
      v89 = v149._object & 1;
      *(v88 + 16) = v89;
      LODWORD(v167) = v89;
      *(v88 + 24) = v157;
      v90 = (v83 + ((v82 + 39) & 0xFFFFFFFFFFFFFFF8));
      v91 = v146;
      *v90 = v152;
      v90[1] = v91;
      outlined copy of Text.Storage(v85, v86, v87);

      outlined copy of Text.Storage(v74, v76, v89);

      __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI9TupleViewVy08WellnessB0013SnippetHeaderD0V_AA0D0P0fB0E10separators_10isOverrideQr0F3Kit14SeparatorStyleO_SbtFQOyAI018FactItemHeroNumberD0V_Qo_tGMd, &_s7SwiftUI9TupleViewVy08WellnessB0013SnippetHeaderD0V_AA0D0P0fB0E10separators_10isOverrideQr0F3Kit14SeparatorStyleO_SbtFQOyAI018FactItemHeroNumberD0V_Qo_tGMR);
      lazy protocol witness table accessor for type TupleView<(SashStandardView, <<opaque return type of View.componentTapped(isNavigation:perform:)>>.0, StatusIndicatorView)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type TupleView<(SnippetHeaderView, <<opaque return type of View.separators(_:isOverride:)>>.0)> and conformance TupleView<A>, &_s7SwiftUI9TupleViewVy08WellnessB0013SnippetHeaderD0V_AA0D0P0fB0E10separators_10isOverrideQr0F3Kit14SeparatorStyleO_SbtFQOyAI018FactItemHeroNumberD0V_Qo_tGMd, &_s7SwiftUI9TupleViewVy08WellnessB0013SnippetHeaderD0V_AA0D0P0fB0E10separators_10isOverrideQr0F3Kit14SeparatorStyleO_SbtFQOyAI018FactItemHeroNumberD0V_Qo_tGMR);
      v92 = v158;
      ComponentStack.init(content:)();
      v93 = v172;
      outlined init with copy of SleepQueryModel(v178, v172, type metadata accessor for SleepQuerySnippet);
      v95 = v175;
      v94 = v176;
      v96 = v169;
      (*(v176 + 16))(v169, v173, v175);
      v97 = (*(v170 + 80) + 16) & ~*(v170 + 80);
      v98 = (v171 + *(v94 + 80) + v97) & ~*(v94 + 80);
      v99 = swift_allocObject();
      outlined init with take of SleepQueryModel(v93, v99 + v97, type metadata accessor for SleepQuerySnippet);
      (v174)(v99 + v98, v96, v95);
      v100 = lazy protocol witness table accessor for type TupleView<(SashStandardView, <<opaque return type of View.componentTapped(isNavigation:perform:)>>.0, StatusIndicatorView)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type ComponentStack<TupleView<(SnippetHeaderView, <<opaque return type of View.separators(_:isOverride:)>>.0)>> and conformance ComponentStack<A>, &_s9SnippetUI14ComponentStackVy05SwiftB09TupleViewVy08WellnessB00a6HeaderG0V_AD0G0PAAE10separators_10isOverrideQr0A3Kit14SeparatorStyleO_SbtFQOyAA018FactItemHeroNumberG0V_Qo_tGGMd, &_s9SnippetUI14ComponentStackVy05SwiftB09TupleViewVy08WellnessB00a6HeaderG0V_AD0G0PAAE10separators_10isOverrideQr0A3Kit14SeparatorStyleO_SbtFQOyAA018FactItemHeroNumberG0V_Qo_tGGMR);
      v102 = v161;
      v101 = v162;
      View.componentTapped(isNavigation:perform:)();

      (*(v160 + 8))(v92, v101);
      v104 = v163;
      v103 = v164;
      (*(v163 + 16))(v159, v102, v164);
      *&v189 = v101;
      *(&v189 + 1) = v100;
      swift_getOpaqueTypeConformance2();
      v105 = AnyView.init<A>(_:)();
      outlined consume of Text.Storage(v151, v150, v167);

      outlined consume of Text.Storage(v155, v154, v153);

      (*(v104 + 8))(v102, v103);
      (*(v94 + 8))(v173, v95);
      result = outlined destroy of SnippetHeaderView(v148);
      *v177 = v105;
      return result;
    }

    goto LABEL_15;
  }

  v174 = v59;
  v106 = (v178 + Model[9]);
  v107 = v106[1];
  if (!v107 || (v108 = (v178 + Model[16]), (v109 = v108[1]) == 0) || (v110 = (v178 + Model[10]), (v111 = v110[1]) == 0) || (v112 = (v178 + Model[17]), (v113 = v112[1]) == 0))
  {
LABEL_15:
    v56 = AnyView.init<A>(_:)();
    (*(v54 + 8))(v60, v55);
    goto LABEL_16;
  }

  v163 = *v106;
  v114 = *v108;
  v164 = *v110;
  v115 = *v112;
  v161 = v113;
  v162 = v115;
  *&v189 = v114;
  *(&v189 + 1) = v109;
  v116 = lazy protocol witness table accessor for type String and conformance String();

  v147 = v58;
  v117 = MEMORY[0x2743E0AE0](32, 0xE100000000000000, 0x7FFFFFFFFFFFFFFFLL, 1, MEMORY[0x277D837D0], v116);
  LocalizedStringKey.init(stringLiteral:)();
  v118 = Text.init(_:tableName:bundle:comment:)();
  v148 = v51;
  *&v189 = v118;
  *(&v189 + 1) = v119;
  LOBYTE(v190) = v120;
  *(&v190 + 1) = v121;
  MEMORY[0x28223BE20](v118);
  v145 = v178;
  specialized Sequence.forEach(_:)(partial apply for closure #1 in SleepQuerySnippet.formatSleepData(sleepDuration:), (&v146 - 4), v117);

  v159 = *(&v189 + 1);
  v160 = v189;
  v158 = v190;
  v157 = *(&v190 + 1);
  *&v189 = v162;
  *(&v189 + 1) = v161;
  v122 = MEMORY[0x2743E0AE0](32, 0xE100000000000000, 0x7FFFFFFFFFFFFFFFLL, 1, MEMORY[0x277D837D0], v116);
  LocalizedStringKey.init(stringLiteral:)();
  LOWORD(v145) = 256;
  v144 = 0;
  *&v189 = Text.init(_:tableName:bundle:comment:)();
  *(&v189 + 1) = v123;
  LOBYTE(v190) = v124;
  *(&v190 + 1) = v125;
  MEMORY[0x28223BE20](v189);
  v144 = &v189;
  v145 = v178;
  specialized Sequence.forEach(_:)(closure #1 in SleepQuerySnippet.formatSleepData(sleepDuration:)partial apply, (&v146 - 4), v122);

  *&v179 = v163;
  *(&v179 + 1) = v107;
  v180 = 0uLL;
  *&v181 = v160;
  *(&v181 + 1) = v159;
  *&v182 = v158;
  *(&v182 + 1) = v157;
  *&v183 = v164;
  *(&v183 + 1) = v111;
  v184 = 0uLL;
  v185 = v189;
  *&v186 = v190;
  *(&v186 + 1) = *(&v190 + 1);
  v187 = 0uLL;
  v188 = v149;
  lazy protocol witness table accessor for type MultipleDataPointWithSubTypesView and conformance MultipleDataPointWithSubTypesView();
  v126 = View.eraseToAnyView()();
  v195 = v185;
  v196 = v186;
  v197 = v187;
  v198 = v188;
  v191 = v181;
  v192 = v182;
  v193 = v183;
  v194 = v184;
  v189 = v179;
  v190 = v180;
  outlined destroy of MultipleDataPointWithSubTypesView(&v189);
  v127 = v167;
  outlined init with copy of SleepQueryModel(v148, v167, type metadata accessor for SnippetHeaderView);
  v128 = (*(v165 + 80) + 16) & ~*(v165 + 80);
  v129 = (v166 + v128 + 7) & 0xFFFFFFFFFFFFFFF8;
  v130 = swift_allocObject();
  outlined init with take of SleepQueryModel(v127, v130 + v128, type metadata accessor for SnippetHeaderView);
  v164 = v126;
  *(v130 + v129) = v126;

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI9TupleViewVy08WellnessB0013SnippetHeaderD0V_AA03AnyD0VtGMd, &_s7SwiftUI9TupleViewVy08WellnessB0013SnippetHeaderD0V_AA03AnyD0VtGMR);
  lazy protocol witness table accessor for type TupleView<(SashStandardView, <<opaque return type of View.componentTapped(isNavigation:perform:)>>.0, StatusIndicatorView)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type TupleView<(SnippetHeaderView, AnyView)> and conformance TupleView<A>, &_s7SwiftUI9TupleViewVy08WellnessB0013SnippetHeaderD0V_AA03AnyD0VtGMd, &_s7SwiftUI9TupleViewVy08WellnessB0013SnippetHeaderD0V_AA03AnyD0VtGMR);
  v131 = v150;
  ComponentStack.init(content:)();
  v132 = v172;
  outlined init with copy of SleepQueryModel(v178, v172, type metadata accessor for SleepQuerySnippet);
  v133 = v176;
  v134 = v169;
  (*(v176 + 16))(v169, v173, v55);
  v135 = (*(v170 + 80) + 16) & ~*(v170 + 80);
  v136 = (v171 + *(v133 + 80) + v135) & ~*(v133 + 80);
  v137 = swift_allocObject();
  outlined init with take of SleepQueryModel(v132, v137 + v135, type metadata accessor for SleepQuerySnippet);
  (v174)(v137 + v136, v134, v55);
  v138 = lazy protocol witness table accessor for type TupleView<(SashStandardView, <<opaque return type of View.componentTapped(isNavigation:perform:)>>.0, StatusIndicatorView)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type ComponentStack<TupleView<(SnippetHeaderView, AnyView)>> and conformance ComponentStack<A>, &_s9SnippetUI14ComponentStackVy05SwiftB09TupleViewVy08WellnessB00a6HeaderG0V_AD03AnyG0VtGGMd, &_s9SnippetUI14ComponentStackVy05SwiftB09TupleViewVy08WellnessB00a6HeaderG0V_AD03AnyG0VtGGMR);
  v139 = v152;
  v140 = v155;
  View.componentTapped(isNavigation:perform:)();

  (*(v153 + 8))(v131, v140);
  v141 = v154;
  v142 = v156;
  (*(v154 + 16))(v151, v139, v156);
  *&v179 = v140;
  *(&v179 + 1) = v138;
  swift_getOpaqueTypeConformance2();
  v56 = AnyView.init<A>(_:)();

  (*(v141 + 8))(v139, v142);
  (*(v176 + 8))(v173, v55);
  v143 = v148;
LABEL_17:
  result = outlined destroy of SnippetHeaderView(v143);
  *v50 = v56;
  return result;
}

uint64_t closure #1 in SleepQuerySnippet.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, int a8@<W7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v56 = a8;
  v55 = a7;
  v54 = a6;
  v67 = a1;
  v68 = a9;
  v58 = a12;
  v57 = a11;
  v16 = type metadata accessor for SnippetHeaderView();
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v66 = &v51 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = type metadata accessor for SeparatorStyle();
  v62 = *(v64 - 8);
  v19 = *(v62 + 64);
  MEMORY[0x28223BE20](v64);
  v59 = &v51 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = type metadata accessor for FactItemHeroNumberView();
  v65 = *(v63 - 8);
  v21 = *(v65 + 64);
  MEMORY[0x28223BE20](v63);
  v53 = &v51 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewP07SnippetB0E10separators_10isOverrideQr0D3Kit14SeparatorStyleO_SbtFQOyAD018FactItemHeroNumberC0V_Qo_Md, &_s7SwiftUI4ViewP07SnippetB0E10separators_10isOverrideQr0D3Kit14SeparatorStyleO_SbtFQOyAD018FactItemHeroNumberC0V_Qo_MR);
  v23 = *(v61 - 8);
  v24 = v23[8];
  v25 = MEMORY[0x28223BE20](v61);
  v60 = &v51 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v52 = &v51 - v27;
  v28 = MEMORY[0x277CE0BD0];
  v29 = MEMORY[0x277D638F0];
  v86 = MEMORY[0x277CE0BD0];
  v87 = MEMORY[0x277D638F0];
  v30 = swift_allocObject();
  v85 = v30;
  *(v30 + 16) = a2;
  *(v30 + 24) = a3;
  *(v30 + 32) = a4 & 1;
  *(v30 + 40) = a5;
  v84 = 0;
  v82 = 0u;
  v83 = 0u;
  v80 = v28;
  v81 = v29;
  v31 = swift_allocObject();
  v78 = 0;
  v79 = v31;
  v32 = v54;
  v33 = v55;
  *(v31 + 16) = v54;
  *(v31 + 24) = v33;
  v34 = v56 & 1;
  *(v31 + 32) = v56 & 1;
  *(v31 + 40) = a10;
  v76 = 0u;
  v77 = 0u;
  v74 = MEMORY[0x277D837D0];
  v75 = MEMORY[0x277D63F88];
  v72 = v57;
  v73 = v58;
  v71 = 0;
  v70 = 0u;
  v69 = 0u;
  outlined copy of Text.Storage(a2, a3, a4 & 1);

  outlined copy of Text.Storage(v32, v33, v34);

  v35 = v53;
  FactItemHeroNumberView.init(number:text1:text2:text3:text4:text5:)();
  v36 = v62;
  v37 = v59;
  v38 = v64;
  (*(v62 + 104))(v59, *MEMORY[0x277D62F40], v64);
  lazy protocol witness table accessor for type Context and conformance Context(&lazy protocol witness table cache variable for type FactItemHeroNumberView and conformance FactItemHeroNumberView, MEMORY[0x277D63E08]);
  v39 = v52;
  v40 = v63;
  View.separators(_:isOverride:)();
  (*(v36 + 8))(v37, v38);
  (*(v65 + 8))(v35, v40);
  v41 = v66;
  outlined init with copy of SleepQueryModel(v67, v66, type metadata accessor for SnippetHeaderView);
  v42 = v23[2];
  v43 = v60;
  v44 = v61;
  v42(v60, v39, v61);
  v45 = v41;
  v46 = v41;
  v47 = v68;
  outlined init with copy of SleepQueryModel(v45, v68, type metadata accessor for SnippetHeaderView);
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WellnessUI17SnippetHeaderViewV_05SwiftB00E0P0cB0E10separators_10isOverrideQr0C3Kit14SeparatorStyleO_SbtFQOyAG018FactItemHeroNumberE0V_Qo_tMd, &_s10WellnessUI17SnippetHeaderViewV_05SwiftB00E0P0cB0E10separators_10isOverrideQr0C3Kit14SeparatorStyleO_SbtFQOyAG018FactItemHeroNumberE0V_Qo_tMR);
  v42((v47 + *(v48 + 48)), v43, v44);
  v49 = v23[1];
  v49(v39, v44);
  v49(v43, v44);
  return outlined destroy of SnippetHeaderView(v46);
}

uint64_t closure #3 in SleepQuerySnippet.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for SnippetHeaderView();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of SleepQueryModel(a1, v9, type metadata accessor for SnippetHeaderView);
  outlined init with copy of SleepQueryModel(v9, a3, type metadata accessor for SnippetHeaderView);
  *(a3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10WellnessUI17SnippetHeaderViewV_05SwiftB003AnyE0VtMd, &_s10WellnessUI17SnippetHeaderViewV_05SwiftB003AnyE0VtMR) + 48)) = a2;

  return outlined destroy of SnippetHeaderView(v9);
}

void closure #2 in SleepQuerySnippet.body.getter(uint64_t a1)
{
  v1 = a1 + *(type metadata accessor for SleepQuerySnippet() + 20);
  if (*v1)
  {
    v3 = *v1;
    dispatch thunk of Context.perform(appPunchout:)();
  }

  else
  {
    v2 = *(v1 + 8);
    type metadata accessor for Context();
    lazy protocol witness table accessor for type Context and conformance Context(&lazy protocol witness table cache variable for type Context and conformance Context, MEMORY[0x277D63F68]);
    EnvironmentObject.error()();
    __break(1u);
  }
}

uint64_t closure #1 in SleepQuerySnippet.formatSleepData(sleepDuration:)(unint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = a1[2];
  v6 = a1[3];
  if ((v4 ^ *a1) >= 0x4000)
  {
    _ss5SliceV32withContiguousStorageIfAvailableyqd__Sgqd__SRy7ElementQzGKXEKlFSRyxGq_s5Error_pRi_zRi0_zRi__Ri0__r0_lys5UInt8Vqd__Isgyrzo_ABySS8UTF8ViewVGADsAI_pAMRszr__lIetMggrzo_Tpq5SiSg_Tg5061_ss17FixedWidthIntegerPsE_5radixxSgqd___SitcSyRd__lufcADSRys5I15VGXEfU_Si_SsTG5SiTf1cn_n(*a1, v4, v5, v6, 10);
    if ((v7 & 0x100) != 0)
    {

      specialized _parseInteger<A, B>(ascii:radix:)(v3, v4, v5, v6, 10);
      v9 = v8;

      if ((v9 & 1) == 0)
      {
LABEL_7:
        v27 = *a2;
        v26 = *(a2 + 8);
        v12 = *(a2 + 16);
        v47 = *(a2 + 24);
        outlined copy of Text.Storage(*a2, v26, v12);

        v28 = MEMORY[0x2743E09E0](v3, v4, v5, v6);
        v30 = SleepQuerySnippet.formatNumericSleepData(data:)(v28, v29);
        v32 = v31;
        v34 = v33;

        v35 = static Text.+ infix(_:_:)();
        v44 = v36;
        v45 = v35;
        v49 = v37;
        v48 = v38;
        outlined consume of Text.Storage(v30, v32, v34 & 1);

        v24 = v27;
        v25 = v26;
        goto LABEL_8;
      }
    }

    else if ((v7 & 1) == 0)
    {
      goto LABEL_7;
    }
  }

  v10 = *a2;
  v11 = *(a2 + 8);
  v12 = *(a2 + 16);
  v46 = *(a2 + 24);
  outlined copy of Text.Storage(*a2, v11, v12);

  v13 = MEMORY[0x2743E09E0](v3, v4, v5, v6);
  v15 = SleepQuerySnippet.formatUnitSleepData(unit:)(v13, v14);
  v17 = v16;
  v19 = v18;

  v20 = static Text.+ infix(_:_:)();
  v44 = v21;
  v45 = v20;
  v49 = v22;
  v48 = v23;
  outlined consume of Text.Storage(v15, v17, v19 & 1);

  v24 = v10;
  v25 = v11;
LABEL_8:
  outlined consume of Text.Storage(v24, v25, v12);

  v39 = *a2;
  v40 = *(a2 + 8);
  v41 = *(a2 + 16);
  v42 = *(a2 + 24);
  *a2 = v45;
  *(a2 + 8) = v44;
  *(a2 + 16) = v49 & 1;
  *(a2 + 24) = v48;
  outlined consume of Text.Storage(v39, v40, v41);
}

uint64_t SleepQuerySnippet.formatNumericSleepData(data:)(uint64_t a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4FontV6DesignOSgMd, &_s7SwiftUI4FontV6DesignOSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v32 - v6;
  v8 = type metadata accessor for LocalizedStringKey.StringInterpolation();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = type metadata accessor for Font.TextStyle();
  v11 = *(v10 - 8);
  v33 = v10;
  v34 = v11;
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v15 + 104))(v14, *MEMORY[0x277CE0A78]);
  LocalizedStringKey.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v16._countAndFlagsBits = 0;
  v16._object = 0xE000000000000000;
  LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v16);
  v35._countAndFlagsBits = a1;
  v35._object = a2;

  MEMORY[0x2743E0A10](32, 0xE100000000000000);
  LocalizedStringKey.StringInterpolation.appendInterpolation(_:)(v35);

  v17._countAndFlagsBits = 0;
  v17._object = 0xE000000000000000;
  LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v17);
  LocalizedStringKey.init(stringInterpolation:)();
  v18 = Text.init(_:tableName:bundle:comment:)();
  v20 = v19;
  v22 = v21;
  v23 = *MEMORY[0x277CE0998];
  v24 = type metadata accessor for Font.Design();
  v25 = *(v24 - 8);
  (*(v25 + 104))(v7, v23, v24);
  (*(v25 + 56))(v7, 0, 1, v24);
  static Font.system(_:design:weight:)();
  outlined destroy of AppPunchout?(v7, &_s7SwiftUI4FontV6DesignOSgMd, &_s7SwiftUI4FontV6DesignOSgMR);
  v26 = Text.font(_:)();
  v28 = v27;
  LOBYTE(v23) = v29;

  outlined consume of Text.Storage(v18, v20, v22 & 1);

  static Font.Weight.semibold.getter();
  v30 = Text.fontWeight(_:)();
  outlined consume of Text.Storage(v26, v28, v23 & 1);

  (*(v34 + 8))(v14, v33);
  return v30;
}

uint64_t SleepQuerySnippet.formatUnitSleepData(unit:)(uint64_t a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4FontV6DesignOSgMd, &_s7SwiftUI4FontV6DesignOSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v37 - v6;
  v8 = type metadata accessor for Font.TextStyle();
  v38 = *(v8 - 8);
  v9 = v38;
  v10 = *(v38 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for LocalizedStringKey.StringInterpolation();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  LocalizedStringKey.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v15._countAndFlagsBits = 0;
  v15._object = 0xE000000000000000;
  LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v15);
  v39._countAndFlagsBits = a1;
  v39._object = a2;

  MEMORY[0x2743E0A10](32, 0xE100000000000000);
  LocalizedStringKey.StringInterpolation.appendInterpolation(_:)(v39);

  v16._countAndFlagsBits = 0;
  v16._object = 0xE000000000000000;
  LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v16);
  LocalizedStringKey.init(stringInterpolation:)();
  v17 = Text.init(_:tableName:bundle:comment:)();
  v19 = v18;
  v21 = v20;
  v22 = *(v9 + 104);
  v23 = v8;
  v22(v12, *MEMORY[0x277CE0A60], v8);
  v24 = *MEMORY[0x277CE0998];
  v25 = type metadata accessor for Font.Design();
  v26 = *(v25 - 8);
  (*(v26 + 104))(v7, v24, v25);
  (*(v26 + 56))(v7, 0, 1, v25);
  static Font.system(_:design:weight:)();
  outlined destroy of AppPunchout?(v7, &_s7SwiftUI4FontV6DesignOSgMd, &_s7SwiftUI4FontV6DesignOSgMR);
  (*(v38 + 8))(v12, v23);
  v27 = Text.font(_:)();
  v29 = v28;
  LOBYTE(v7) = v30;

  outlined consume of Text.Storage(v17, v19, v21 & 1);

  LODWORD(v39._countAndFlagsBits) = static HierarchicalShapeStyle.secondary.getter();
  v31 = Text.foregroundStyle<A>(_:)();
  v33 = v32;
  LOBYTE(v17) = v34;
  outlined consume of Text.Storage(v27, v29, v7 & 1);

  v35 = Text.bold()();
  outlined consume of Text.Storage(v31, v33, v17 & 1);

  return v35;
}

uint64_t specialized Sequence.forEach(_:)(uint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v5 = result;
    for (i = (a3 + 56); ; i += 4)
    {
      v7 = *(i - 1);
      v8 = *i;
      v9 = *(i - 3);
      v10 = v7;
      v11 = v8;

      v5(&v9);
      if (v3)
      {
        break;
      }

      if (!--v4)
      {
        return result;
      }
    }
  }

  return result;
}

uint64_t outlined destroy of SnippetHeaderView(uint64_t a1)
{
  v2 = type metadata accessor for SnippetHeaderView();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t lazy protocol witness table accessor for type String and conformance String()
{
  result = lazy protocol witness table cache variable for type String and conformance String;
  if (!lazy protocol witness table cache variable for type String and conformance String)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type String and conformance String);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type MultipleDataPointWithSubTypesView and conformance MultipleDataPointWithSubTypesView()
{
  result = lazy protocol witness table cache variable for type MultipleDataPointWithSubTypesView and conformance MultipleDataPointWithSubTypesView;
  if (!lazy protocol witness table cache variable for type MultipleDataPointWithSubTypesView and conformance MultipleDataPointWithSubTypesView)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MultipleDataPointWithSubTypesView and conformance MultipleDataPointWithSubTypesView);
  }

  return result;
}

uint64_t partial apply for closure #3 in SleepQuerySnippet.body.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SnippetHeaderView() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));

  return closure #3 in SleepQuerySnippet.body.getter(v1 + v4, v5, a1);
}

uint64_t outlined init with copy of SleepQueryModel(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t outlined init with take of SleepQueryModel(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t partial apply for closure #1 in SleepQuerySnippet.body.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SnippetHeaderView() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 39) & 0xFFFFFFFFFFFFFFF8;
  v7 = v1 + v5;
  return closure #1 in SleepQuerySnippet.body.getter(v1 + v4, *v7, *(v7 + 8), *(v7 + 16), *(v7 + 24), *(v1 + v6), *(v1 + v6 + 8), *(v1 + v6 + 16), a1, *(v1 + v6 + 24), *(v1 + ((v6 + 39) & 0xFFFFFFFFFFFFFFF8)), *(v1 + ((v6 + 39) & 0xFFFFFFFFFFFFFFF8) + 8));
}

uint64_t objectdestroy_6Tm()
{
  Snippet = type metadata accessor for SleepQuerySnippet();
  v1 = *(*(Snippet - 8) + 80);
  v2 = (v1 + 16) & ~v1;
  v28 = *(*(Snippet - 8) + 64);
  v3 = type metadata accessor for AppPunchout();
  v4 = *(v3 - 8);
  v5 = *(v4 + 80);
  v29 = *(v4 + 64);
  v6 = v0 + v2;
  if (!(*(v4 + 48))(v0 + v2, 1, v3))
  {
    (*(v4 + 8))(v0 + v2, v3);
  }

  Model = type metadata accessor for SleepQueryModel();
  v8 = v6 + Model[5];
  v9 = type metadata accessor for SnippetHeaderModel();
  if (!(*(*(v9 - 8) + 48))(v8, 1, v9))
  {
    v10 = type metadata accessor for SpeakableString();
    (*(*(v10 - 8) + 8))(v8, v10);
    v11 = *(v8 + *(v9 + 20) + 8);

    v12 = *(v8 + *(v9 + 24) + 8);
  }

  v13 = (v2 + v28 + v5) & ~v5;
  v14 = *(v6 + Model[6] + 8);

  v15 = *(v6 + Model[7] + 8);

  v16 = *(v6 + Model[8] + 8);

  v17 = *(v6 + Model[9] + 8);

  v18 = *(v6 + Model[10] + 8);

  v19 = *(v6 + Model[11]);

  v20 = *(v6 + Model[12]);

  v21 = *(v6 + Model[13]);

  v22 = *(v6 + Model[14]);

  v23 = *(v6 + Model[15] + 8);

  v24 = *(v6 + Model[16] + 8);

  v25 = *(v6 + Model[17] + 8);

  v26 = *(v6 + *(Snippet + 24) + 8);

  (*(v4 + 8))(v0 + v13, v3);

  return MEMORY[0x2821FE8E8](v0, v13 + v29, v1 | v5 | 7);
}

void partial apply for closure #4 in SleepQuerySnippet.body.getter()
{
  v1 = *(type metadata accessor for SleepQuerySnippet() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = *(*(type metadata accessor for AppPunchout() - 8) + 80);
  closure #2 in SleepQuerySnippet.body.getter(v0 + v2);
}

void type metadata completion function for SleepQuerySnippet()
{
  type metadata accessor for SleepQueryModel();
  if (v0 <= 0x3F)
  {
    type metadata accessor for EnvironmentObject<Context>();
    if (v1 <= 0x3F)
    {
      type metadata accessor for String?();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void type metadata accessor for String?()
{
  if (!lazy cache variable for type metadata for String?)
  {
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for String?);
    }
  }
}

unsigned __int8 *specialized _parseInteger<A, B>(ascii:radix:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v64 = a1;
  v65 = a2;
  v66 = a3;
  v67 = a4;
  lazy protocol witness table accessor for type Substring and conformance Substring();

  result = String.init<A>(_:)();
  v8 = result;
  if ((v7 & 0x1000000000000000) != 0)
  {
    v8 = static String._copying(_:)();
    v37 = v36;

    v7 = v37;
    if ((v37 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v7 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v8 & 0x1000000000000000) != 0)
    {
      result = ((v7 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v9 = v8 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = _StringObject.sharedUTF8.getter();
      v9 = v63;
    }

    v10 = *result;
    if (v10 == 43)
    {
      if (v9 >= 1)
      {
        v21 = v9 - 1;
        if (v21)
        {
          v22 = a5 + 48;
          v23 = a5 + 55;
          v24 = a5 + 87;
          if (a5 > 10)
          {
            v22 = 58;
          }

          else
          {
            v24 = 97;
            v23 = 65;
          }

          if (result)
          {
            v15 = 0;
            v25 = result + 1;
            do
            {
              v26 = *v25;
              if (v26 < 0x30 || v26 >= v22)
              {
                if (v26 < 0x41 || v26 >= v23)
                {
                  v19 = 0;
                  if (v26 < 0x61 || v26 >= v24)
                  {
                    goto LABEL_127;
                  }

                  v27 = -87;
                }

                else
                {
                  v27 = -55;
                }
              }

              else
              {
                v27 = -48;
              }

              v28 = v15 * a5;
              if ((v15 * a5) >> 64 != (v15 * a5) >> 63)
              {
                goto LABEL_126;
              }

              v15 = v28 + (v26 + v27);
              if (__OFADD__(v28, (v26 + v27)))
              {
                goto LABEL_126;
              }

              ++v25;
              --v21;
            }

            while (v21);
LABEL_46:
            v19 = v15;
            goto LABEL_127;
          }

          goto LABEL_66;
        }

LABEL_126:
        v19 = 0;
        goto LABEL_127;
      }

      goto LABEL_131;
    }

    if (v10 != 45)
    {
      if (v9)
      {
        v29 = a5 + 48;
        v30 = a5 + 55;
        v31 = a5 + 87;
        if (a5 > 10)
        {
          v29 = 58;
        }

        else
        {
          v31 = 97;
          v30 = 65;
        }

        if (result)
        {
          v32 = 0;
          do
          {
            v33 = *result;
            if (v33 < 0x30 || v33 >= v29)
            {
              if (v33 < 0x41 || v33 >= v30)
              {
                v19 = 0;
                if (v33 < 0x61 || v33 >= v31)
                {
                  goto LABEL_127;
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

            v35 = v32 * a5;
            if ((v32 * a5) >> 64 != (v32 * a5) >> 63)
            {
              goto LABEL_126;
            }

            v32 = v35 + (v33 + v34);
            if (__OFADD__(v35, (v33 + v34)))
            {
              goto LABEL_126;
            }

            ++result;
            --v9;
          }

          while (v9);
          v19 = v35 + (v33 + v34);
          goto LABEL_127;
        }

        goto LABEL_66;
      }

      goto LABEL_126;
    }

    if (v9 >= 1)
    {
      v11 = v9 - 1;
      if (v11)
      {
        v12 = a5 + 48;
        v13 = a5 + 55;
        v14 = a5 + 87;
        if (a5 > 10)
        {
          v12 = 58;
        }

        else
        {
          v14 = 97;
          v13 = 65;
        }

        if (result)
        {
          v15 = 0;
          v16 = result + 1;
          while (1)
          {
            v17 = *v16;
            if (v17 < 0x30 || v17 >= v12)
            {
              if (v17 < 0x41 || v17 >= v13)
              {
                v19 = 0;
                if (v17 < 0x61 || v17 >= v14)
                {
                  goto LABEL_127;
                }

                v18 = -87;
              }

              else
              {
                v18 = -55;
              }
            }

            else
            {
              v18 = -48;
            }

            v20 = v15 * a5;
            if ((v15 * a5) >> 64 != (v15 * a5) >> 63)
            {
              goto LABEL_126;
            }

            v15 = v20 - (v17 + v18);
            if (__OFSUB__(v20, (v17 + v18)))
            {
              goto LABEL_126;
            }

            ++v16;
            if (!--v11)
            {
              goto LABEL_46;
            }
          }
        }

LABEL_66:
        v19 = 0;
LABEL_127:

        return v19;
      }

      goto LABEL_126;
    }

    __break(1u);
LABEL_130:
    __break(1u);
LABEL_131:
    __break(1u);
    goto LABEL_132;
  }

  v38 = HIBYTE(v7) & 0xF;
  v64 = v8;
  v65 = v7 & 0xFFFFFFFFFFFFFFLL;
  if (v8 != 43)
  {
    if (v8 != 45)
    {
      if (v38)
      {
        v40 = 0;
        v56 = a5 + 48;
        v57 = a5 + 55;
        v58 = a5 + 87;
        if (a5 > 10)
        {
          v56 = 58;
        }

        else
        {
          v58 = 97;
          v57 = 65;
        }

        v59 = &v64;
        while (1)
        {
          v60 = *v59;
          if (v60 < 0x30 || v60 >= v56)
          {
            if (v60 < 0x41 || v60 >= v57)
            {
              v19 = 0;
              if (v60 < 0x61 || v60 >= v58)
              {
                goto LABEL_127;
              }

              v61 = -87;
            }

            else
            {
              v61 = -55;
            }
          }

          else
          {
            v61 = -48;
          }

          v62 = v40 * a5;
          if ((v40 * a5) >> 64 != (v40 * a5) >> 63)
          {
            goto LABEL_126;
          }

          v40 = v62 + (v60 + v61);
          if (__OFADD__(v62, (v60 + v61)))
          {
            goto LABEL_126;
          }

          v59 = (v59 + 1);
          if (!--v38)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    if (v38)
    {
      v39 = v38 - 1;
      if (v39)
      {
        v40 = 0;
        v41 = a5 + 48;
        v42 = a5 + 55;
        v43 = a5 + 87;
        if (a5 > 10)
        {
          v41 = 58;
        }

        else
        {
          v43 = 97;
          v42 = 65;
        }

        v44 = &v64 + 1;
        while (1)
        {
          v45 = *v44;
          if (v45 < 0x30 || v45 >= v41)
          {
            if (v45 < 0x41 || v45 >= v42)
            {
              v19 = 0;
              if (v45 < 0x61 || v45 >= v43)
              {
                goto LABEL_127;
              }

              v46 = -87;
            }

            else
            {
              v46 = -55;
            }
          }

          else
          {
            v46 = -48;
          }

          v47 = v40 * a5;
          if ((v40 * a5) >> 64 != (v40 * a5) >> 63)
          {
            goto LABEL_126;
          }

          v40 = v47 - (v45 + v46);
          if (__OFSUB__(v47, (v45 + v46)))
          {
            goto LABEL_126;
          }

          ++v44;
          if (!--v39)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    goto LABEL_130;
  }

  if (v38)
  {
    v48 = v38 - 1;
    if (v48)
    {
      v40 = 0;
      v49 = a5 + 48;
      v50 = a5 + 55;
      v51 = a5 + 87;
      if (a5 > 10)
      {
        v49 = 58;
      }

      else
      {
        v51 = 97;
        v50 = 65;
      }

      v52 = &v64 + 1;
      do
      {
        v53 = *v52;
        if (v53 < 0x30 || v53 >= v49)
        {
          if (v53 < 0x41 || v53 >= v50)
          {
            v19 = 0;
            if (v53 < 0x61 || v53 >= v51)
            {
              goto LABEL_127;
            }

            v54 = -87;
          }

          else
          {
            v54 = -55;
          }
        }

        else
        {
          v54 = -48;
        }

        v55 = v40 * a5;
        if ((v40 * a5) >> 64 != (v40 * a5) >> 63)
        {
          goto LABEL_126;
        }

        v40 = v55 + (v53 + v54);
        if (__OFADD__(v55, (v53 + v54)))
        {
          goto LABEL_126;
        }

        ++v52;
        --v48;
      }

      while (v48);
LABEL_125:
      v19 = v40;
      goto LABEL_127;
    }

    goto LABEL_126;
  }

LABEL_132:
  __break(1u);
  return result;
}

uint64_t static String._copying(_:)()
{
  v0 = String.subscript.getter();
  v4 = static String._copying(_:)(v0, v1, v2, v3);

  return v4;
}

uint64_t static String._copying(_:)(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) == 0)
  {
    if ((a4 & 0x2000000000000000) != 0)
    {
      v15[0] = a3;
      v15[1] = a4 & 0xFFFFFFFFFFFFFFLL;
      return static String._uncheckedFromUTF8(_:)();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }

    goto LABEL_11;
  }

  v9 = Substring.UTF8View.distance(from:to:)();
  if (!v9)
  {
    v11 = MEMORY[0x277D84F90];
    goto LABEL_13;
  }

  v10 = v9;
  v11 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs5UInt8V_Tt1gq5(v9, 0);
  v12 = specialized Sequence._copySequenceContents(initializing:)(v15, (v11 + 4), v10, a1, a2, a3, a4);

  if (v12 == v10)
  {
LABEL_13:
    v13 = v11[2];
    v14 = static String._uncheckedFromUTF8(_:)();

    return v14;
  }

  __break(1u);
LABEL_11:
  _StringObject.sharedUTF8.getter();
LABEL_4:

  return static String._uncheckedFromUTF8(_:)();
}

void *_ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs5UInt8V_Tt1gq5(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys5UInt8VGMd, &_ss23_ContiguousArrayStorageCys5UInt8VGMR);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

unint64_t specialized Sequence._copySequenceContents(initializing:)(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
{
  v9 = result;
  if (!a2)
  {
    goto LABEL_5;
  }

  if (!a3)
  {
    v12 = a4;
    v11 = 0;
    goto LABEL_34;
  }

  if (a3 < 0)
  {
    goto LABEL_38;
  }

  v10 = a5 >> 14;
  v27 = a4 >> 14;
  if (a4 >> 14 == a5 >> 14)
  {
LABEL_5:
    v11 = 0;
    v12 = a4;
LABEL_34:
    *v9 = a4;
    v9[1] = a5;
    v9[2] = a6;
    v9[3] = a7;
    v9[4] = v12;
    return v11;
  }

  v11 = 0;
  v14 = (a6 >> 59) & 1;
  if ((a7 & 0x1000000000000000) == 0)
  {
    LOBYTE(v14) = 1;
  }

  v15 = 4 << v14;
  v21 = (a7 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v22 = a7 & 0xFFFFFFFFFFFFFFLL;
  v16 = HIBYTE(a7) & 0xF;
  if ((a7 & 0x2000000000000000) == 0)
  {
    v16 = a6 & 0xFFFFFFFFFFFFLL;
  }

  v23 = v16;
  v26 = a3 - 1;
  v12 = a4;
  while (1)
  {
    v17 = v12 & 0xC;
    result = v12;
    if (v17 == v15)
    {
      result = _StringGuts._slowEnsureMatchingEncoding(_:)(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = String.UTF8View._foreignSubscript(position:)();
      v19 = result;
      if (v17 != v15)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v18 = result >> 16;
      if ((a7 & 0x2000000000000000) != 0)
      {
        v28[0] = a6;
        v28[1] = v22;
        v19 = *(v28 + v18);
        if (v17 != v15)
        {
          goto LABEL_23;
        }
      }

      else
      {
        result = v21;
        if ((a6 & 0x1000000000000000) == 0)
        {
          result = _StringObject.sharedUTF8.getter();
        }

        v19 = *(result + v18);
        if (v17 != v15)
        {
LABEL_23:
          if ((a7 & 0x1000000000000000) == 0)
          {
            goto LABEL_24;
          }

          goto LABEL_27;
        }
      }
    }

    result = _StringGuts._slowEnsureMatchingEncoding(_:)(v12, a6, a7);
    v12 = result;
    if ((a7 & 0x1000000000000000) == 0)
    {
LABEL_24:
      v12 = (v12 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_29;
    }

LABEL_27:
    if (v23 <= v12 >> 16)
    {
      goto LABEL_37;
    }

    result = String.UTF8View._foreignIndex(after:)();
    v12 = result;
LABEL_29:
    *(a2 + v11) = v19;
    if (v26 == v11)
    {
      v11 = a3;
      goto LABEL_34;
    }

    if (__OFADD__(v11 + 1, 1))
    {
      goto LABEL_36;
    }

    ++v11;
    if (v10 == v12 >> 14)
    {
      goto LABEL_34;
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
  return result;
}

uint64_t _StringGuts._slowEnsureMatchingEncoding(_:)(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = String.UTF16View.index(_:offsetBy:)();
    v11 = v10 + (v4 << 16);
    v12 = v10 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v13 = v11 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v13 = v12;
    }

    return v13 | 4;
  }

  else
  {
    v5 = MEMORY[0x2743E0A30](15, a1 >> 16);
    v6 = v5 + (v4 << 16);
    v7 = v5 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v8 = v6 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v8 = v7;
    }

    return v8 | 8;
  }
}

uint64_t _ss5SliceV32withContiguousStorageIfAvailableyqd__Sgqd__SRy7ElementQzGKXEKlFSRyxGq_s5Error_pRi_zRi0_zRi__Ri0__r0_lys5UInt8Vqd__Isgyrzo_ABySS8UTF8ViewVGADsAI_pAMRszr__lIetMggrzo_Tpq5SiSg_Tg5061_ss17FixedWidthIntegerPsE_5radixxSgqd___SitcSyRd__lufcADSRys5I15VGXEfU_Si_SsTG5SiTf1cn_n(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, uint64_t a5)
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    result = 0;
    goto LABEL_8;
  }

  if ((a4 & 0x2000000000000000) != 0)
  {
    v14[0] = a3;
    v14[1] = a4 & 0xFFFFFFFFFFFFFFLL;
    v11 = v14;
  }

  else if ((a3 & 0x1000000000000000) != 0)
  {
    v11 = ((a4 & 0xFFFFFFFFFFFFFFFLL) + 32);
  }

  else
  {
    v11 = _StringObject.sharedUTF8.getter();
  }

  result = _ss5SliceV32withContiguousStorageIfAvailableyqd__Sgqd__SRy7ElementQzGKXEKlFqd__AGKXEfU_SRys5UInt8VGABySS8UTF8ViewVGSRyxGq_s5Error_pRi_zRi0_zRi__Ri0__r0_lyAIqd__Isgyrzo_qd__sAO_pALRszr__lIetyggrzo_Tpq5SiSg_Tg5061_ss17FixedWidthIntegerPsE_5radixxSgqd___SitcSyRd__lufcADSRys5H15VGXEfU_Si_SsTG5SiTf1nnc_nTf4xnn_n(v11, a1, a2, a3, a4, a5);
  if (!v5)
  {
    v15 = v13 & 1;
LABEL_8:
    v16 = (a4 & 0x1000000000000000) != 0;
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Substring and conformance Substring()
{
  result = lazy protocol witness table cache variable for type Substring and conformance Substring;
  if (!lazy protocol witness table cache variable for type Substring and conformance Substring)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Substring and conformance Substring);
  }

  return result;
}

uint64_t _ss5SliceV32withContiguousStorageIfAvailableyqd__Sgqd__SRy7ElementQzGKXEKlFqd__AGKXEfU_SRys5UInt8VGABySS8UTF8ViewVGSRyxGq_s5Error_pRi_zRi0_zRi__Ri0__r0_lyAIqd__Isgyrzo_qd__sAO_pALRszr__lIetyggrzo_Tpq5SiSg_Tg5061_ss17FixedWidthIntegerPsE_5radixxSgqd___SitcSyRd__lufcADSRys5H15VGXEfU_Si_SsTG5SiTf1nnc_nTf4xnn_n(uint64_t result, unint64_t a2, unint64_t a3, unint64_t a4, unint64_t a5, uint64_t a6)
{
  v8 = result;
  v9 = (a4 >> 59) & 1;
  if ((a5 & 0x1000000000000000) == 0)
  {
    LOBYTE(v9) = 1;
  }

  v10 = 4 << v9;
  v11 = a2 & 0xC;
  v12 = a2;
  if (v11 == v10)
  {
    v14 = a2;
    v15 = a3;
    v16 = a5;
    result = _StringGuts._slowEnsureMatchingEncoding(_:)(a2, a4, a5);
    a2 = v14;
    a3 = v15;
    a5 = v16;
    v12 = result;
    if ((v16 & 0x1000000000000000) == 0)
    {
LABEL_5:
      v13 = v12 >> 16;
      if (v11 != v10)
      {
        goto LABEL_6;
      }

      goto LABEL_14;
    }
  }

  else if ((a5 & 0x1000000000000000) == 0)
  {
    goto LABEL_5;
  }

  v17 = a4 & 0xFFFFFFFFFFFFLL;
  if ((a5 & 0x2000000000000000) != 0)
  {
    v17 = HIBYTE(a5) & 0xF;
  }

  if (v17 < v12 >> 16)
  {
    goto LABEL_95;
  }

  v18 = a2;
  v19 = a3;
  v20 = a5;
  result = String.UTF8View._foreignDistance(from:to:)();
  a5 = v20;
  v13 = result;
  a3 = v19;
  a2 = v18;
  if (v11 == v10)
  {
LABEL_14:
    v21 = a3;
    v22 = a5;
    result = _StringGuts._slowEnsureMatchingEncoding(_:)(a2, a4, a5);
    a3 = v21;
    a5 = v22;
    a2 = result;
  }

LABEL_6:
  if ((a3 & 0xC) == v10)
  {
    v23 = a2;
    v24 = a5;
    result = _StringGuts._slowEnsureMatchingEncoding(_:)(a3, a4, a5);
    a2 = v23;
    a5 = v24;
    a3 = result;
    if ((v24 & 0x1000000000000000) == 0)
    {
      goto LABEL_8;
    }
  }

  else if ((a5 & 0x1000000000000000) == 0)
  {
LABEL_8:
    result = (a3 >> 16) - (a2 >> 16);
    goto LABEL_21;
  }

  v25 = HIBYTE(a5) & 0xF;
  if ((a5 & 0x2000000000000000) == 0)
  {
    v25 = a4 & 0xFFFFFFFFFFFFLL;
  }

  if (v25 < a2 >> 16)
  {
    goto LABEL_91;
  }

  if (v25 < a3 >> 16)
  {
LABEL_92:
    __break(1u);
    goto LABEL_93;
  }

  result = String.UTF8View._foreignDistance(from:to:)();
LABEL_21:
  v26 = v13 + result;
  if (__OFADD__(v13, result))
  {
    __break(1u);
    goto LABEL_90;
  }

  if (v26 < v13)
  {
LABEL_90:
    __break(1u);
LABEL_91:
    __break(1u);
    goto LABEL_92;
  }

  v27 = (v13 + v8);
  if (!v8)
  {
    v27 = 0;
  }

  v28 = *v27;
  if (v28 == 43)
  {
    if (result >= 1)
    {
      if (result != 1)
      {
        v39 = a6 + 48;
        v40 = a6 + 55;
        v41 = a6 + 87;
        if (a6 > 10)
        {
          v39 = 58;
        }

        else
        {
          v41 = 97;
          v40 = 65;
        }

        if (v27)
        {
          v32 = 0;
          v42 = v27 + 1;
          v43 = result - 1;
          do
          {
            v44 = *v42;
            if (v44 < 0x30 || v44 >= v39)
            {
              if (v44 < 0x41 || v44 >= v40)
              {
                v37 = 0;
                if (v44 < 0x61 || v44 >= v41)
                {
                  return v37;
                }

                v45 = -87;
              }

              else
              {
                v45 = -55;
              }
            }

            else
            {
              v45 = -48;
            }

            v46 = v32 * a6;
            if ((v32 * a6) >> 64 != (v32 * a6) >> 63)
            {
              return 0;
            }

            v32 = v46 + (v44 + v45);
            if (__OFADD__(v46, (v44 + v45)))
            {
              return 0;
            }

            ++v42;
            --v43;
          }

          while (v43);
          return v32;
        }

        return 0;
      }

      return 0;
    }

    goto LABEL_94;
  }

  if (v28 != 45)
  {
    if (v26 != v13)
    {
      v47 = a6 + 48;
      v48 = a6 + 55;
      v49 = a6 + 87;
      if (a6 > 10)
      {
        v47 = 58;
      }

      else
      {
        v49 = 97;
        v48 = 65;
      }

      if (v27)
      {
        v32 = 0;
        while (1)
        {
          v50 = *v27;
          if (v50 < 0x30 || v50 >= v47)
          {
            if (v50 < 0x41 || v50 >= v48)
            {
              v37 = 0;
              if (v50 < 0x61 || v50 >= v49)
              {
                return v37;
              }

              v51 = -87;
            }

            else
            {
              v51 = -55;
            }
          }

          else
          {
            v51 = -48;
          }

          v52 = v32 * a6;
          if ((v32 * a6) >> 64 != (v32 * a6) >> 63)
          {
            return 0;
          }

          v32 = v52 + (v50 + v51);
          if (__OFADD__(v52, (v50 + v51)))
          {
            return 0;
          }

          ++v27;
          if (!--result)
          {
            return v32;
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
      v29 = a6 + 48;
      v30 = a6 + 55;
      v31 = a6 + 87;
      if (a6 > 10)
      {
        v29 = 58;
      }

      else
      {
        v31 = 97;
        v30 = 65;
      }

      if (v27)
      {
        v32 = 0;
        v33 = v27 + 1;
        v34 = result - 1;
        while (1)
        {
          v35 = *v33;
          if (v35 < 0x30 || v35 >= v29)
          {
            if (v35 < 0x41 || v35 >= v30)
            {
              v37 = 0;
              if (v35 < 0x61 || v35 >= v31)
              {
                return v37;
              }

              v36 = -87;
            }

            else
            {
              v36 = -55;
            }
          }

          else
          {
            v36 = -48;
          }

          v38 = v32 * a6;
          if ((v32 * a6) >> 64 != (v32 * a6) >> 63)
          {
            return 0;
          }

          v32 = v38 - (v35 + v36);
          if (__OFSUB__(v38, (v35 + v36)))
          {
            return 0;
          }

          ++v33;
          if (!--v34)
          {
            return v32;
          }
        }
      }

      return 0;
    }

    return 0;
  }

LABEL_93:
  __break(1u);
LABEL_94:
  __break(1u);
LABEL_95:
  __break(1u);
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance WellnessSnippets.BloodOxygenDataQueryCodingKeys(uint64_t a1)
{
  Coding = lazy protocol witness table accessor for type WellnessSnippets.BloodOxygenDataQueryCodingKeys and conformance WellnessSnippets.BloodOxygenDataQueryCodingKeys();

  return MEMORY[0x2821FE718](a1, Coding);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance WellnessSnippets.BloodOxygenDataQueryCodingKeys(uint64_t a1)
{
  Coding = lazy protocol witness table accessor for type WellnessSnippets.BloodOxygenDataQueryCodingKeys and conformance WellnessSnippets.BloodOxygenDataQueryCodingKeys();

  return MEMORY[0x2821FE720](a1, Coding);
}

uint64_t WellnessSnippets.CodingKeys.stringValue.getter(char a1)
{
  result = 0x42636972656E6567;
  switch(a1)
  {
    case 1:
    case 6:
      result = 0xD000000000000016;
      break;
    case 2:
      result = 0xD000000000000014;
      break;
    case 3:
      result = 0xD000000000000014;
      break;
    case 4:
      return result;
    case 5:
      result = 0xD000000000000013;
      break;
    case 7:
      result = 0xD000000000000012;
      break;
    case 8:
      result = 0xD000000000000010;
      break;
    case 9:
      result = 0x6144746867696568;
      break;
    case 10:
      v3 = 0x52656E6F6870;
      goto LABEL_16;
    case 11:
      result = 0xD00000000000001ALL;
      break;
    case 12:
      result = 0x6575517065656C73;
      break;
    case 13:
      result = 0xD000000000000017;
      break;
    case 14:
      result = 0xD000000000000014;
      break;
    case 15:
      v3 = 0x526863746177;
LABEL_16:
      result = v3 & 0xFFFFFFFFFFFFLL | 0x6E69000000000000;
      break;
    default:
      result = 0xD000000000000014;
      break;
  }

  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance WellnessSnippets.BloodPressureDataLogCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type WellnessSnippets.BloodPressureDataLogCodingKeys and conformance WellnessSnippets.BloodPressureDataLogCodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance WellnessSnippets.BloodPressureDataLogCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type WellnessSnippets.BloodPressureDataLogCodingKeys and conformance WellnessSnippets.BloodPressureDataLogCodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance WellnessSnippets.BloodPressureDataQueryCodingKeys(uint64_t a1)
{
  Coding = lazy protocol witness table accessor for type WellnessSnippets.BloodPressureDataQueryCodingKeys and conformance WellnessSnippets.BloodPressureDataQueryCodingKeys();

  return MEMORY[0x2821FE718](a1, Coding);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance WellnessSnippets.BloodPressureDataQueryCodingKeys(uint64_t a1)
{
  Coding = lazy protocol witness table accessor for type WellnessSnippets.BloodPressureDataQueryCodingKeys and conformance WellnessSnippets.BloodPressureDataQueryCodingKeys();

  return MEMORY[0x2821FE720](a1, Coding);
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance WellnessSnippets.CodingKeys()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x2743E0CB0](v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance WellnessSnippets.CodingKeys()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x2743E0CB0](v1);
  return Hasher._finalize()();
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance WellnessSnippets.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = specialized WellnessSnippets.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance WellnessSnippets.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type WellnessSnippets.CodingKeys and conformance WellnessSnippets.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance WellnessSnippets.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type WellnessSnippets.CodingKeys and conformance WellnessSnippets.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance WellnessSnippets.CycleTrackingDataLogCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type WellnessSnippets.CycleTrackingDataLogCodingKeys and conformance WellnessSnippets.CycleTrackingDataLogCodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance WellnessSnippets.CycleTrackingDataLogCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type WellnessSnippets.CycleTrackingDataLogCodingKeys and conformance WellnessSnippets.CycleTrackingDataLogCodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance WellnessSnippets.GenericBinaryButtonCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type WellnessSnippets.GenericBinaryButtonCodingKeys and conformance WellnessSnippets.GenericBinaryButtonCodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance WellnessSnippets.GenericBinaryButtonCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type WellnessSnippets.GenericBinaryButtonCodingKeys and conformance WellnessSnippets.GenericBinaryButtonCodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance WellnessSnippets.GenericButtonCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type WellnessSnippets.GenericButtonCodingKeys and conformance WellnessSnippets.GenericButtonCodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance WellnessSnippets.GenericButtonCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type WellnessSnippets.GenericButtonCodingKeys and conformance WellnessSnippets.GenericButtonCodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance WellnessSnippets.GenericDataQueryCodingKeys(uint64_t a1)
{
  Coding = lazy protocol witness table accessor for type WellnessSnippets.GenericDataQueryCodingKeys and conformance WellnessSnippets.GenericDataQueryCodingKeys();

  return MEMORY[0x2821FE718](a1, Coding);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance WellnessSnippets.GenericDataQueryCodingKeys(uint64_t a1)
{
  Coding = lazy protocol witness table accessor for type WellnessSnippets.GenericDataQueryCodingKeys and conformance WellnessSnippets.GenericDataQueryCodingKeys();

  return MEMORY[0x2821FE720](a1, Coding);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance WellnessSnippets.GenericDataTypeLogCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type WellnessSnippets.GenericDataTypeLogCodingKeys and conformance WellnessSnippets.GenericDataTypeLogCodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance WellnessSnippets.GenericDataTypeLogCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type WellnessSnippets.GenericDataTypeLogCodingKeys and conformance WellnessSnippets.GenericDataTypeLogCodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance WellnessSnippets.GenericMedCompletedLogCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type WellnessSnippets.GenericMedCompletedLogCodingKeys and conformance WellnessSnippets.GenericMedCompletedLogCodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance WellnessSnippets.GenericMedCompletedLogCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type WellnessSnippets.GenericMedCompletedLogCodingKeys and conformance WellnessSnippets.GenericMedCompletedLogCodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance WellnessSnippets.HeightDataQueryCodingKeys(uint64_t a1)
{
  Coding = lazy protocol witness table accessor for type WellnessSnippets.HeightDataQueryCodingKeys and conformance WellnessSnippets.HeightDataQueryCodingKeys();

  return MEMORY[0x2821FE718](a1, Coding);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance WellnessSnippets.HeightDataQueryCodingKeys(uint64_t a1)
{
  Coding = lazy protocol witness table accessor for type WellnessSnippets.HeightDataQueryCodingKeys and conformance WellnessSnippets.HeightDataQueryCodingKeys();

  return MEMORY[0x2821FE720](a1, Coding);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance WellnessSnippets.PhoneRingsCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type WellnessSnippets.PhoneRingsCodingKeys and conformance WellnessSnippets.PhoneRingsCodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance WellnessSnippets.PhoneRingsCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type WellnessSnippets.PhoneRingsCodingKeys and conformance WellnessSnippets.PhoneRingsCodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance WellnessSnippets.SingleActivitySummaryQueryCodingKeys(uint64_t a1)
{
  Coding = lazy protocol witness table accessor for type WellnessSnippets.SingleActivitySummaryQueryCodingKeys and conformance WellnessSnippets.SingleActivitySummaryQueryCodingKeys();

  return MEMORY[0x2821FE718](a1, Coding);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance WellnessSnippets.SingleActivitySummaryQueryCodingKeys(uint64_t a1)
{
  Coding = lazy protocol witness table accessor for type WellnessSnippets.SingleActivitySummaryQueryCodingKeys and conformance WellnessSnippets.SingleActivitySummaryQueryCodingKeys();

  return MEMORY[0x2821FE720](a1, Coding);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance WellnessSnippets.SleepQueryCodingKeys(uint64_t a1)
{
  Coding = lazy protocol witness table accessor for type WellnessSnippets.SleepQueryCodingKeys and conformance WellnessSnippets.SleepQueryCodingKeys();

  return MEMORY[0x2821FE718](a1, Coding);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance WellnessSnippets.SleepQueryCodingKeys(uint64_t a1)
{
  Coding = lazy protocol witness table accessor for type WellnessSnippets.SleepQueryCodingKeys and conformance WellnessSnippets.SleepQueryCodingKeys();

  return MEMORY[0x2821FE720](a1, Coding);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance WellnessSnippets.SpecificMedCompletedLogCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type WellnessSnippets.SpecificMedCompletedLogCodingKeys and conformance WellnessSnippets.SpecificMedCompletedLogCodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance WellnessSnippets.SpecificMedCompletedLogCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type WellnessSnippets.SpecificMedCompletedLogCodingKeys and conformance WellnessSnippets.SpecificMedCompletedLogCodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance WellnessSnippets.TemperatureDataQueryCodingKeys(uint64_t a1)
{
  Coding = lazy protocol witness table accessor for type WellnessSnippets.TemperatureDataQueryCodingKeys and conformance WellnessSnippets.TemperatureDataQueryCodingKeys();

  return MEMORY[0x2821FE718](a1, Coding);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance WellnessSnippets.TemperatureDataQueryCodingKeys(uint64_t a1)
{
  Coding = lazy protocol witness table accessor for type WellnessSnippets.TemperatureDataQueryCodingKeys and conformance WellnessSnippets.TemperatureDataQueryCodingKeys();

  return MEMORY[0x2821FE720](a1, Coding);
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance WellnessSnippets.BloodOxygenDataQueryCodingKeys()
{
  Hasher.init(_seed:)();
  MEMORY[0x2743E0CB0](0);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance WellnessSnippets.BloodOxygenDataQueryCodingKeys()
{
  Hasher.init(_seed:)();
  MEMORY[0x2743E0CB0](0);
  return Hasher._finalize()();
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance WellnessSnippets.BloodOxygenDataQueryCodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 12383 && a2 == 0xE200000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance WellnessSnippets.WatchRingsCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type WellnessSnippets.WatchRingsCodingKeys and conformance WellnessSnippets.WatchRingsCodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance WellnessSnippets.WatchRingsCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type WellnessSnippets.WatchRingsCodingKeys and conformance WellnessSnippets.WatchRingsCodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t WellnessSnippets.encode(to:)(void *a1)
{
  v211 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy10WellnessUI0D8SnippetsO20WatchRingsCodingKeys33_8F889BD39DE2C26C0A5B37DC5873BF61LLOGMd, &_ss22KeyedEncodingContainerVy10WellnessUI0D8SnippetsO20WatchRingsCodingKeys33_8F889BD39DE2C26C0A5B37DC5873BF61LLOGMR);
  v210 = *(v211 - 8);
  v2 = *(v210 + 64);
  MEMORY[0x28223BE20](v211);
  v209 = &v140 - v3;
  v208 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy10WellnessUI0D8SnippetsO30TemperatureDataQueryCodingKeys33_8F889BD39DE2C26C0A5B37DC5873BF61LLOGMd, &_ss22KeyedEncodingContainerVy10WellnessUI0D8SnippetsO30TemperatureDataQueryCodingKeys33_8F889BD39DE2C26C0A5B37DC5873BF61LLOGMR);
  v207 = *(v208 - 8);
  v4 = *(v207 + 64);
  MEMORY[0x28223BE20](v208);
  v206 = &v140 - v5;
  Model = type metadata accessor for TemperatureQueryModel();
  v6 = *(*(Model - 8) + 64);
  MEMORY[0x28223BE20](Model);
  v205 = &v140 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy10WellnessUI0D8SnippetsO33SpecificMedCompletedLogCodingKeys33_8F889BD39DE2C26C0A5B37DC5873BF61LLOGMd, &_ss22KeyedEncodingContainerVy10WellnessUI0D8SnippetsO33SpecificMedCompletedLogCodingKeys33_8F889BD39DE2C26C0A5B37DC5873BF61LLOGMR);
  v202 = *(v8 - 8);
  v203 = v8;
  v9 = *(v202 + 64);
  MEMORY[0x28223BE20](v8);
  v201 = &v140 - v10;
  v199 = type metadata accessor for SpecificMedCompletedLogModel();
  v11 = *(*(v199 - 8) + 64);
  MEMORY[0x28223BE20](v199);
  v200 = &v140 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy10WellnessUI0D8SnippetsO20SleepQueryCodingKeys33_8F889BD39DE2C26C0A5B37DC5873BF61LLOGMd, &_ss22KeyedEncodingContainerVy10WellnessUI0D8SnippetsO20SleepQueryCodingKeys33_8F889BD39DE2C26C0A5B37DC5873BF61LLOGMR);
  v197 = *(v13 - 8);
  v198 = v13;
  v14 = *(v197 + 64);
  MEMORY[0x28223BE20](v13);
  v196 = &v140 - v15;
  v192 = type metadata accessor for SleepQueryModel();
  v16 = *(*(v192 - 8) + 64);
  MEMORY[0x28223BE20](v192);
  v195 = &v140 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy10WellnessUI0D8SnippetsO36SingleActivitySummaryQueryCodingKeys33_8F889BD39DE2C26C0A5B37DC5873BF61LLOGMd, &_ss22KeyedEncodingContainerVy10WellnessUI0D8SnippetsO36SingleActivitySummaryQueryCodingKeys33_8F889BD39DE2C26C0A5B37DC5873BF61LLOGMR);
  v190 = *(v18 - 8);
  v191 = v18;
  v19 = *(v190 + 64);
  MEMORY[0x28223BE20](v18);
  v188 = &v140 - v20;
  v186 = type metadata accessor for SingleActivitySummaryModel();
  v21 = *(*(v186 - 8) + 64);
  MEMORY[0x28223BE20](v186);
  v187 = &v140 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy10WellnessUI0D8SnippetsO20PhoneRingsCodingKeys33_8F889BD39DE2C26C0A5B37DC5873BF61LLOGMd, &_ss22KeyedEncodingContainerVy10WellnessUI0D8SnippetsO20PhoneRingsCodingKeys33_8F889BD39DE2C26C0A5B37DC5873BF61LLOGMR);
  v193 = *(v23 - 8);
  v194 = v23;
  v24 = *(v193 + 64);
  MEMORY[0x28223BE20](v23);
  v189 = &v140 - v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy10WellnessUI0D8SnippetsO25HeightDataQueryCodingKeys33_8F889BD39DE2C26C0A5B37DC5873BF61LLOGMd, &_ss22KeyedEncodingContainerVy10WellnessUI0D8SnippetsO25HeightDataQueryCodingKeys33_8F889BD39DE2C26C0A5B37DC5873BF61LLOGMR);
  v184 = *(v26 - 8);
  v185 = v26;
  v27 = *(v184 + 64);
  MEMORY[0x28223BE20](v26);
  v183 = &v140 - v28;
  v181 = type metadata accessor for HeightQueryModel();
  v29 = *(*(v181 - 8) + 64);
  MEMORY[0x28223BE20](v181);
  v182 = &v140 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy10WellnessUI0D8SnippetsO26GenericDataQueryCodingKeys33_8F889BD39DE2C26C0A5B37DC5873BF61LLOGMd, &_ss22KeyedEncodingContainerVy10WellnessUI0D8SnippetsO26GenericDataQueryCodingKeys33_8F889BD39DE2C26C0A5B37DC5873BF61LLOGMR);
  v179 = *(v31 - 8);
  v180 = v31;
  v32 = *(v179 + 64);
  MEMORY[0x28223BE20](v31);
  v178 = &v140 - v33;
  v176 = type metadata accessor for GenericQueryModel();
  v34 = *(*(v176 - 8) + 64);
  MEMORY[0x28223BE20](v176);
  v177 = &v140 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy10WellnessUI0D8SnippetsO28GenericDataTypeLogCodingKeys33_8F889BD39DE2C26C0A5B37DC5873BF61LLOGMd, &_ss22KeyedEncodingContainerVy10WellnessUI0D8SnippetsO28GenericDataTypeLogCodingKeys33_8F889BD39DE2C26C0A5B37DC5873BF61LLOGMR);
  v174 = *(v36 - 8);
  v175 = v36;
  v37 = *(v174 + 64);
  MEMORY[0x28223BE20](v36);
  v173 = &v140 - v38;
  v171 = type metadata accessor for HealthDataLogModel();
  v39 = *(*(v171 - 8) + 64);
  MEMORY[0x28223BE20](v171);
  v172 = &v140 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy10WellnessUI0D8SnippetsO32GenericMedCompletedLogCodingKeys33_8F889BD39DE2C26C0A5B37DC5873BF61LLOGMd, &_ss22KeyedEncodingContainerVy10WellnessUI0D8SnippetsO32GenericMedCompletedLogCodingKeys33_8F889BD39DE2C26C0A5B37DC5873BF61LLOGMR);
  v169 = *(v41 - 8);
  v170 = v41;
  v42 = *(v169 + 64);
  MEMORY[0x28223BE20](v41);
  v168 = &v140 - v43;
  v166 = type metadata accessor for GenericMedCompletedLogModel();
  v44 = *(*(v166 - 8) + 64);
  MEMORY[0x28223BE20](v166);
  v167 = &v140 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy10WellnessUI0D8SnippetsO29GenericBinaryButtonCodingKeys33_8F889BD39DE2C26C0A5B37DC5873BF61LLOGMd, &_ss22KeyedEncodingContainerVy10WellnessUI0D8SnippetsO29GenericBinaryButtonCodingKeys33_8F889BD39DE2C26C0A5B37DC5873BF61LLOGMR);
  v164 = *(v46 - 8);
  v165 = v46;
  v47 = *(v164 + 64);
  MEMORY[0x28223BE20](v46);
  v163 = &v140 - v48;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy10WellnessUI0D8SnippetsO23GenericButtonCodingKeys33_8F889BD39DE2C26C0A5B37DC5873BF61LLOGMd, &_ss22KeyedEncodingContainerVy10WellnessUI0D8SnippetsO23GenericButtonCodingKeys33_8F889BD39DE2C26C0A5B37DC5873BF61LLOGMR);
  v161 = *(v49 - 8);
  v162 = v49;
  v50 = *(v161 + 64);
  MEMORY[0x28223BE20](v49);
  v160 = &v140 - v51;
  v158 = type metadata accessor for GenericButtonModel();
  v52 = *(*(v158 - 8) + 64);
  MEMORY[0x28223BE20](v158);
  v159 = &v140 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy10WellnessUI0D8SnippetsO30CycleTrackingDataLogCodingKeys33_8F889BD39DE2C26C0A5B37DC5873BF61LLOGMd, &_ss22KeyedEncodingContainerVy10WellnessUI0D8SnippetsO30CycleTrackingDataLogCodingKeys33_8F889BD39DE2C26C0A5B37DC5873BF61LLOGMR);
  v156 = *(v54 - 8);
  v157 = v54;
  v55 = *(v156 + 64);
  MEMORY[0x28223BE20](v54);
  v155 = &v140 - v56;
  v153 = type metadata accessor for CycleTrackingLogModel();
  v57 = *(*(v153 - 8) + 64);
  MEMORY[0x28223BE20](v153);
  v154 = &v140 - ((v58 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy10WellnessUI0D8SnippetsO30BloodPressureDataLogCodingKeys33_8F889BD39DE2C26C0A5B37DC5873BF61LLOGMd, &_ss22KeyedEncodingContainerVy10WellnessUI0D8SnippetsO30BloodPressureDataLogCodingKeys33_8F889BD39DE2C26C0A5B37DC5873BF61LLOGMR);
  v151 = *(v59 - 8);
  v152 = v59;
  v60 = *(v151 + 64);
  MEMORY[0x28223BE20](v59);
  v150 = &v140 - v61;
  v148 = type metadata accessor for BloodPressureLogModel();
  v62 = *(*(v148 - 8) + 64);
  MEMORY[0x28223BE20](v148);
  v149 = &v140 - ((v63 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy10WellnessUI0D8SnippetsO32BloodPressureDataQueryCodingKeys33_8F889BD39DE2C26C0A5B37DC5873BF61LLOGMd, &_ss22KeyedEncodingContainerVy10WellnessUI0D8SnippetsO32BloodPressureDataQueryCodingKeys33_8F889BD39DE2C26C0A5B37DC5873BF61LLOGMR);
  v146 = *(v64 - 8);
  v147 = v64;
  v65 = *(v146 + 64);
  MEMORY[0x28223BE20](v64);
  v145 = &v140 - v66;
  v143 = type metadata accessor for BloodPressureQueryModel();
  v67 = *(*(v143 - 8) + 64);
  MEMORY[0x28223BE20](v143);
  v144 = &v140 - ((v68 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy10WellnessUI0D8SnippetsO30BloodOxygenDataQueryCodingKeys33_8F889BD39DE2C26C0A5B37DC5873BF61LLOGMd, &_ss22KeyedEncodingContainerVy10WellnessUI0D8SnippetsO30BloodOxygenDataQueryCodingKeys33_8F889BD39DE2C26C0A5B37DC5873BF61LLOGMR);
  v141 = *(v69 - 8);
  v142 = v69;
  v70 = *(v141 + 64);
  MEMORY[0x28223BE20](v69);
  v140 = &v140 - v71;
  v72 = type metadata accessor for OxygenSaturationQueryModel();
  v73 = *(*(v72 - 8) + 64);
  MEMORY[0x28223BE20](v72);
  v75 = &v140 - ((v74 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = type metadata accessor for WellnessSnippets();
  v77 = *(*(v76 - 8) + 64);
  MEMORY[0x28223BE20](v76);
  v79 = &v140 - ((v78 + 15) & 0xFFFFFFFFFFFFFFF0);
  v236 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy10WellnessUI0D8SnippetsO10CodingKeys33_8F889BD39DE2C26C0A5B37DC5873BF61LLOGMd, &_ss22KeyedEncodingContainerVy10WellnessUI0D8SnippetsO10CodingKeys33_8F889BD39DE2C26C0A5B37DC5873BF61LLOGMR);
  v214 = *(v236 - 8);
  v80 = *(v214 + 64);
  MEMORY[0x28223BE20](v236);
  v82 = &v140 - v81;
  v83 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type WellnessSnippets.CodingKeys and conformance WellnessSnippets.CodingKeys();
  v213 = v82;
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  outlined init with copy of WellnessSnippets(v212, v79);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v89 = v144;
      outlined init with take of TemperatureQueryModel(v79, v144, type metadata accessor for BloodPressureQueryModel);
      LOBYTE(v221) = 1;
      lazy protocol witness table accessor for type WellnessSnippets.BloodPressureDataQueryCodingKeys and conformance WellnessSnippets.BloodPressureDataQueryCodingKeys();
      v113 = v145;
      v91 = v236;
      v92 = v213;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      lazy protocol witness table accessor for type TemperatureQueryModel and conformance TemperatureQueryModel(&lazy protocol witness table cache variable for type BloodPressureQueryModel and conformance BloodPressureQueryModel, type metadata accessor for BloodPressureQueryModel);
      v114 = v147;
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      (*(v146 + 8))(v113, v114);
      v94 = type metadata accessor for BloodPressureQueryModel;
      goto LABEL_18;
    case 2u:
      v89 = v149;
      outlined init with take of TemperatureQueryModel(v79, v149, type metadata accessor for BloodPressureLogModel);
      LOBYTE(v221) = 2;
      lazy protocol witness table accessor for type WellnessSnippets.BloodPressureDataLogCodingKeys and conformance WellnessSnippets.BloodPressureDataLogCodingKeys();
      v103 = v150;
      v91 = v236;
      v92 = v213;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      lazy protocol witness table accessor for type TemperatureQueryModel and conformance TemperatureQueryModel(&lazy protocol witness table cache variable for type BloodPressureLogModel and conformance BloodPressureLogModel, type metadata accessor for BloodPressureLogModel);
      v104 = v152;
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      (*(v151 + 8))(v103, v104);
      v94 = type metadata accessor for BloodPressureLogModel;
      goto LABEL_18;
    case 3u:
      v89 = v154;
      outlined init with take of TemperatureQueryModel(v79, v154, type metadata accessor for CycleTrackingLogModel);
      LOBYTE(v221) = 3;
      lazy protocol witness table accessor for type WellnessSnippets.CycleTrackingDataLogCodingKeys and conformance WellnessSnippets.CycleTrackingDataLogCodingKeys();
      v109 = v155;
      v91 = v236;
      v92 = v213;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      lazy protocol witness table accessor for type TemperatureQueryModel and conformance TemperatureQueryModel(&lazy protocol witness table cache variable for type CycleTrackingLogModel and conformance CycleTrackingLogModel, type metadata accessor for CycleTrackingLogModel);
      v110 = v157;
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      (*(v156 + 8))(v109, v110);
      v94 = type metadata accessor for CycleTrackingLogModel;
      goto LABEL_18;
    case 4u:
      v89 = v159;
      outlined init with take of TemperatureQueryModel(v79, v159, type metadata accessor for GenericButtonModel);
      LOBYTE(v221) = 4;
      lazy protocol witness table accessor for type WellnessSnippets.GenericButtonCodingKeys and conformance WellnessSnippets.GenericButtonCodingKeys();
      v97 = v160;
      v91 = v236;
      v92 = v213;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      lazy protocol witness table accessor for type TemperatureQueryModel and conformance TemperatureQueryModel(&lazy protocol witness table cache variable for type GenericButtonModel and conformance GenericButtonModel, type metadata accessor for GenericButtonModel);
      v98 = v162;
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      (*(v161 + 8))(v97, v98);
      v94 = type metadata accessor for GenericButtonModel;
      goto LABEL_18;
    case 5u:
      v115 = *(v79 + 1);
      v212 = *v79;
      v116 = *(v79 + 3);
      v211 = *(v79 + 2);
      v118 = *(v79 + 4);
      v117 = *(v79 + 5);
      v119 = v79[48];
      LOBYTE(v221) = 5;
      lazy protocol witness table accessor for type WellnessSnippets.GenericBinaryButtonCodingKeys and conformance WellnessSnippets.GenericBinaryButtonCodingKeys();
      v120 = v163;
      v121 = v213;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      *&v221 = v212;
      *(&v221 + 1) = v115;
      *&v222 = v211;
      *(&v222 + 1) = v116;
      *&v223 = v118;
      *(&v223 + 1) = v117;
      LOBYTE(v224) = v119;
      lazy protocol witness table accessor for type GenericBinaryButtonModel and conformance GenericBinaryButtonModel();
      v122 = v165;
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      (*(v164 + 8))(v120, v122);
      (*(v214 + 8))(v121, v236);

    case 6u:
      v89 = v167;
      outlined init with take of TemperatureQueryModel(v79, v167, type metadata accessor for GenericMedCompletedLogModel);
      LOBYTE(v221) = 6;
      lazy protocol witness table accessor for type WellnessSnippets.GenericMedCompletedLogCodingKeys and conformance WellnessSnippets.GenericMedCompletedLogCodingKeys();
      v125 = v168;
      v91 = v236;
      v92 = v213;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      lazy protocol witness table accessor for type TemperatureQueryModel and conformance TemperatureQueryModel(&lazy protocol witness table cache variable for type GenericMedCompletedLogModel and conformance GenericMedCompletedLogModel, type metadata accessor for GenericMedCompletedLogModel);
      v126 = v170;
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      (*(v169 + 8))(v125, v126);
      v94 = type metadata accessor for GenericMedCompletedLogModel;
      goto LABEL_18;
    case 7u:
      v89 = v172;
      outlined init with take of TemperatureQueryModel(v79, v172, type metadata accessor for HealthDataLogModel);
      LOBYTE(v221) = 7;
      lazy protocol witness table accessor for type WellnessSnippets.GenericDataTypeLogCodingKeys and conformance WellnessSnippets.GenericDataTypeLogCodingKeys();
      v111 = v173;
      v91 = v236;
      v92 = v213;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      lazy protocol witness table accessor for type TemperatureQueryModel and conformance TemperatureQueryModel(&lazy protocol witness table cache variable for type HealthDataLogModel and conformance HealthDataLogModel, type metadata accessor for HealthDataLogModel);
      v112 = v175;
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      (*(v174 + 8))(v111, v112);
      v94 = type metadata accessor for HealthDataLogModel;
      goto LABEL_18;
    case 8u:
      v89 = v177;
      outlined init with take of TemperatureQueryModel(v79, v177, type metadata accessor for GenericQueryModel);
      LOBYTE(v221) = 8;
      lazy protocol witness table accessor for type WellnessSnippets.GenericDataQueryCodingKeys and conformance WellnessSnippets.GenericDataQueryCodingKeys();
      v138 = v178;
      v91 = v236;
      v92 = v213;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      lazy protocol witness table accessor for type TemperatureQueryModel and conformance TemperatureQueryModel(&lazy protocol witness table cache variable for type GenericQueryModel and conformance GenericQueryModel, type metadata accessor for GenericQueryModel);
      v139 = v180;
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      (*(v179 + 8))(v138, v139);
      v94 = type metadata accessor for GenericQueryModel;
      goto LABEL_18;
    case 9u:
      v89 = v182;
      outlined init with take of TemperatureQueryModel(v79, v182, type metadata accessor for HeightQueryModel);
      LOBYTE(v221) = 9;
      lazy protocol witness table accessor for type WellnessSnippets.HeightDataQueryCodingKeys and conformance WellnessSnippets.HeightDataQueryCodingKeys();
      v101 = v183;
      v91 = v236;
      v92 = v213;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      lazy protocol witness table accessor for type TemperatureQueryModel and conformance TemperatureQueryModel(&lazy protocol witness table cache variable for type HeightQueryModel and conformance HeightQueryModel, type metadata accessor for HeightQueryModel);
      v102 = v185;
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      (*(v184 + 8))(v101, v102);
      v94 = type metadata accessor for HeightQueryModel;
      goto LABEL_18;
    case 0xAu:
      v127 = *(v79 + 13);
      v232 = *(v79 + 12);
      v233 = v127;
      v234 = *(v79 + 14);
      v235 = v79[240];
      v128 = *(v79 + 9);
      v228 = *(v79 + 8);
      v229 = v128;
      v129 = *(v79 + 11);
      v230 = *(v79 + 10);
      v231 = v129;
      v130 = *(v79 + 5);
      v225[0] = *(v79 + 4);
      v225[1] = v130;
      v131 = *(v79 + 7);
      v226 = *(v79 + 6);
      v227 = v131;
      v132 = *(v79 + 1);
      v221 = *v79;
      v222 = v132;
      v133 = *(v79 + 3);
      v223 = *(v79 + 2);
      v224 = v133;
      LOBYTE(v215) = 10;
      lazy protocol witness table accessor for type WellnessSnippets.PhoneRingsCodingKeys and conformance WellnessSnippets.PhoneRingsCodingKeys();
      v134 = v189;
      v135 = v236;
      v136 = v213;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v219[8] = v232;
      v219[9] = v233;
      v219[10] = v234;
      v220 = v235;
      v219[4] = v228;
      v219[5] = v229;
      v219[6] = v230;
      v219[7] = v231;
      v219[0] = v225[0];
      v219[1] = v225[1];
      v219[2] = v226;
      v219[3] = v227;
      v215 = v221;
      v216 = v222;
      v217 = v223;
      v218 = v224;
      lazy protocol witness table accessor for type PhoneRingsModel and conformance PhoneRingsModel();
      v137 = v194;
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      (*(v193 + 8))(v134, v137);
      (*(v214 + 8))(v136, v135);
      return outlined destroy of PhoneRingsModel(&v221);
    case 0xBu:
      v89 = v187;
      outlined init with take of TemperatureQueryModel(v79, v187, type metadata accessor for SingleActivitySummaryModel);
      LOBYTE(v221) = 11;
      lazy protocol witness table accessor for type WellnessSnippets.SingleActivitySummaryQueryCodingKeys and conformance WellnessSnippets.SingleActivitySummaryQueryCodingKeys();
      v95 = v188;
      v91 = v236;
      v92 = v213;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      lazy protocol witness table accessor for type TemperatureQueryModel and conformance TemperatureQueryModel(&lazy protocol witness table cache variable for type SingleActivitySummaryModel and conformance SingleActivitySummaryModel, type metadata accessor for SingleActivitySummaryModel);
      v96 = v191;
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      (*(v190 + 8))(v95, v96);
      v94 = type metadata accessor for SingleActivitySummaryModel;
      goto LABEL_18;
    case 0xCu:
      v89 = v195;
      outlined init with take of TemperatureQueryModel(v79, v195, type metadata accessor for SleepQueryModel);
      LOBYTE(v221) = 12;
      lazy protocol witness table accessor for type WellnessSnippets.SleepQueryCodingKeys and conformance WellnessSnippets.SleepQueryCodingKeys();
      v99 = v196;
      v91 = v236;
      v92 = v213;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      lazy protocol witness table accessor for type TemperatureQueryModel and conformance TemperatureQueryModel(&lazy protocol witness table cache variable for type SleepQueryModel and conformance SleepQueryModel, type metadata accessor for SleepQueryModel);
      v100 = v198;
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      (*(v197 + 8))(v99, v100);
      v94 = type metadata accessor for SleepQueryModel;
      goto LABEL_18;
    case 0xDu:
      v89 = v200;
      outlined init with take of TemperatureQueryModel(v79, v200, type metadata accessor for SpecificMedCompletedLogModel);
      LOBYTE(v221) = 13;
      lazy protocol witness table accessor for type WellnessSnippets.SpecificMedCompletedLogCodingKeys and conformance WellnessSnippets.SpecificMedCompletedLogCodingKeys();
      v123 = v201;
      v91 = v236;
      v92 = v213;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      lazy protocol witness table accessor for type TemperatureQueryModel and conformance TemperatureQueryModel(&lazy protocol witness table cache variable for type SpecificMedCompletedLogModel and conformance SpecificMedCompletedLogModel, type metadata accessor for SpecificMedCompletedLogModel);
      v124 = v203;
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      (*(v202 + 8))(v123, v124);
      v94 = type metadata accessor for SpecificMedCompletedLogModel;
      goto LABEL_18;
    case 0xEu:
      v89 = v205;
      outlined init with take of TemperatureQueryModel(v79, v205, type metadata accessor for TemperatureQueryModel);
      LOBYTE(v221) = 14;
      lazy protocol witness table accessor for type WellnessSnippets.TemperatureDataQueryCodingKeys and conformance WellnessSnippets.TemperatureDataQueryCodingKeys();
      v90 = v206;
      v91 = v236;
      v92 = v213;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      lazy protocol witness table accessor for type TemperatureQueryModel and conformance TemperatureQueryModel(&lazy protocol witness table cache variable for type TemperatureQueryModel and conformance TemperatureQueryModel, type metadata accessor for TemperatureQueryModel);
      v93 = v208;
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      (*(v207 + 8))(v90, v93);
      v94 = type metadata accessor for TemperatureQueryModel;
LABEL_18:
      outlined destroy of TemperatureQueryModel(v89, v94);
      goto LABEL_19;
    case 0xFu:
      v105 = *(v79 + 3);
      v223 = *(v79 + 2);
      v224 = v105;
      v225[0] = *(v79 + 4);
      *(v225 + 9) = *(v79 + 73);
      v106 = *(v79 + 1);
      v221 = *v79;
      v222 = v106;
      LOBYTE(v215) = 15;
      lazy protocol witness table accessor for type WellnessSnippets.WatchRingsCodingKeys and conformance WellnessSnippets.WatchRingsCodingKeys();
      v107 = v209;
      v91 = v236;
      v92 = v213;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v217 = v223;
      v218 = v224;
      v219[0] = v225[0];
      *(v219 + 9) = *(v225 + 9);
      v215 = v221;
      v216 = v222;
      lazy protocol witness table accessor for type WatchRingsModel and conformance WatchRingsModel();
      v108 = v211;
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      (*(v210 + 8))(v107, v108);
LABEL_19:
      result = (*(v214 + 8))(v92, v91);
      break;
    default:
      outlined init with take of TemperatureQueryModel(v79, v75, type metadata accessor for OxygenSaturationQueryModel);
      LOBYTE(v221) = 0;
      lazy protocol witness table accessor for type WellnessSnippets.BloodOxygenDataQueryCodingKeys and conformance WellnessSnippets.BloodOxygenDataQueryCodingKeys();
      v84 = v140;
      v85 = v236;
      v86 = v213;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      lazy protocol witness table accessor for type TemperatureQueryModel and conformance TemperatureQueryModel(&lazy protocol witness table cache variable for type OxygenSaturationQueryModel and conformance OxygenSaturationQueryModel, type metadata accessor for OxygenSaturationQueryModel);
      v87 = v142;
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      (*(v141 + 8))(v84, v87);
      outlined destroy of TemperatureQueryModel(v75, type metadata accessor for OxygenSaturationQueryModel);
      result = (*(v214 + 8))(v86, v85);
      break;
  }

  return result;
}

uint64_t type metadata accessor for WellnessSnippets()
{
  result = type metadata singleton initialization cache for WellnessSnippets;
  if (!type metadata singleton initialization cache for WellnessSnippets)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type WellnessSnippets.CodingKeys and conformance WellnessSnippets.CodingKeys()
{
  result = lazy protocol witness table cache variable for type WellnessSnippets.CodingKeys and conformance WellnessSnippets.CodingKeys;
  if (!lazy protocol witness table cache variable for type WellnessSnippets.CodingKeys and conformance WellnessSnippets.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WellnessSnippets.CodingKeys and conformance WellnessSnippets.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type WellnessSnippets.CodingKeys and conformance WellnessSnippets.CodingKeys;
  if (!lazy protocol witness table cache variable for type WellnessSnippets.CodingKeys and conformance WellnessSnippets.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WellnessSnippets.CodingKeys and conformance WellnessSnippets.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type WellnessSnippets.CodingKeys and conformance WellnessSnippets.CodingKeys;
  if (!lazy protocol witness table cache variable for type WellnessSnippets.CodingKeys and conformance WellnessSnippets.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WellnessSnippets.CodingKeys and conformance WellnessSnippets.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type WellnessSnippets.CodingKeys and conformance WellnessSnippets.CodingKeys;
  if (!lazy protocol witness table cache variable for type WellnessSnippets.CodingKeys and conformance WellnessSnippets.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WellnessSnippets.CodingKeys and conformance WellnessSnippets.CodingKeys);
  }

  return result;
}

uint64_t outlined init with copy of WellnessSnippets(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WellnessSnippets();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t lazy protocol witness table accessor for type WellnessSnippets.WatchRingsCodingKeys and conformance WellnessSnippets.WatchRingsCodingKeys()
{
  result = lazy protocol witness table cache variable for type WellnessSnippets.WatchRingsCodingKeys and conformance WellnessSnippets.WatchRingsCodingKeys;
  if (!lazy protocol witness table cache variable for type WellnessSnippets.WatchRingsCodingKeys and conformance WellnessSnippets.WatchRingsCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WellnessSnippets.WatchRingsCodingKeys and conformance WellnessSnippets.WatchRingsCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type WellnessSnippets.WatchRingsCodingKeys and conformance WellnessSnippets.WatchRingsCodingKeys;
  if (!lazy protocol witness table cache variable for type WellnessSnippets.WatchRingsCodingKeys and conformance WellnessSnippets.WatchRingsCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WellnessSnippets.WatchRingsCodingKeys and conformance WellnessSnippets.WatchRingsCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type WellnessSnippets.WatchRingsCodingKeys and conformance WellnessSnippets.WatchRingsCodingKeys;
  if (!lazy protocol witness table cache variable for type WellnessSnippets.WatchRingsCodingKeys and conformance WellnessSnippets.WatchRingsCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WellnessSnippets.WatchRingsCodingKeys and conformance WellnessSnippets.WatchRingsCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type WellnessSnippets.WatchRingsCodingKeys and conformance WellnessSnippets.WatchRingsCodingKeys;
  if (!lazy protocol witness table cache variable for type WellnessSnippets.WatchRingsCodingKeys and conformance WellnessSnippets.WatchRingsCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WellnessSnippets.WatchRingsCodingKeys and conformance WellnessSnippets.WatchRingsCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type WatchRingsModel and conformance WatchRingsModel()
{
  result = lazy protocol witness table cache variable for type WatchRingsModel and conformance WatchRingsModel;
  if (!lazy protocol witness table cache variable for type WatchRingsModel and conformance WatchRingsModel)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WatchRingsModel and conformance WatchRingsModel);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type WatchRingsModel and conformance WatchRingsModel;
  if (!lazy protocol witness table cache variable for type WatchRingsModel and conformance WatchRingsModel)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WatchRingsModel and conformance WatchRingsModel);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type WellnessSnippets.TemperatureDataQueryCodingKeys and conformance WellnessSnippets.TemperatureDataQueryCodingKeys()
{
  result = lazy protocol witness table cache variable for type WellnessSnippets.TemperatureDataQueryCodingKeys and conformance WellnessSnippets.TemperatureDataQueryCodingKeys;
  if (!lazy protocol witness table cache variable for type WellnessSnippets.TemperatureDataQueryCodingKeys and conformance WellnessSnippets.TemperatureDataQueryCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WellnessSnippets.TemperatureDataQueryCodingKeys and conformance WellnessSnippets.TemperatureDataQueryCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type WellnessSnippets.TemperatureDataQueryCodingKeys and conformance WellnessSnippets.TemperatureDataQueryCodingKeys;
  if (!lazy protocol witness table cache variable for type WellnessSnippets.TemperatureDataQueryCodingKeys and conformance WellnessSnippets.TemperatureDataQueryCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WellnessSnippets.TemperatureDataQueryCodingKeys and conformance WellnessSnippets.TemperatureDataQueryCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type WellnessSnippets.TemperatureDataQueryCodingKeys and conformance WellnessSnippets.TemperatureDataQueryCodingKeys;
  if (!lazy protocol witness table cache variable for type WellnessSnippets.TemperatureDataQueryCodingKeys and conformance WellnessSnippets.TemperatureDataQueryCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WellnessSnippets.TemperatureDataQueryCodingKeys and conformance WellnessSnippets.TemperatureDataQueryCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type WellnessSnippets.TemperatureDataQueryCodingKeys and conformance WellnessSnippets.TemperatureDataQueryCodingKeys;
  if (!lazy protocol witness table cache variable for type WellnessSnippets.TemperatureDataQueryCodingKeys and conformance WellnessSnippets.TemperatureDataQueryCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WellnessSnippets.TemperatureDataQueryCodingKeys and conformance WellnessSnippets.TemperatureDataQueryCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type WellnessSnippets.SpecificMedCompletedLogCodingKeys and conformance WellnessSnippets.SpecificMedCompletedLogCodingKeys()
{
  result = lazy protocol witness table cache variable for type WellnessSnippets.SpecificMedCompletedLogCodingKeys and conformance WellnessSnippets.SpecificMedCompletedLogCodingKeys;
  if (!lazy protocol witness table cache variable for type WellnessSnippets.SpecificMedCompletedLogCodingKeys and conformance WellnessSnippets.SpecificMedCompletedLogCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WellnessSnippets.SpecificMedCompletedLogCodingKeys and conformance WellnessSnippets.SpecificMedCompletedLogCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type WellnessSnippets.SpecificMedCompletedLogCodingKeys and conformance WellnessSnippets.SpecificMedCompletedLogCodingKeys;
  if (!lazy protocol witness table cache variable for type WellnessSnippets.SpecificMedCompletedLogCodingKeys and conformance WellnessSnippets.SpecificMedCompletedLogCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WellnessSnippets.SpecificMedCompletedLogCodingKeys and conformance WellnessSnippets.SpecificMedCompletedLogCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type WellnessSnippets.SpecificMedCompletedLogCodingKeys and conformance WellnessSnippets.SpecificMedCompletedLogCodingKeys;
  if (!lazy protocol witness table cache variable for type WellnessSnippets.SpecificMedCompletedLogCodingKeys and conformance WellnessSnippets.SpecificMedCompletedLogCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WellnessSnippets.SpecificMedCompletedLogCodingKeys and conformance WellnessSnippets.SpecificMedCompletedLogCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type WellnessSnippets.SpecificMedCompletedLogCodingKeys and conformance WellnessSnippets.SpecificMedCompletedLogCodingKeys;
  if (!lazy protocol witness table cache variable for type WellnessSnippets.SpecificMedCompletedLogCodingKeys and conformance WellnessSnippets.SpecificMedCompletedLogCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WellnessSnippets.SpecificMedCompletedLogCodingKeys and conformance WellnessSnippets.SpecificMedCompletedLogCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type WellnessSnippets.SleepQueryCodingKeys and conformance WellnessSnippets.SleepQueryCodingKeys()
{
  result = lazy protocol witness table cache variable for type WellnessSnippets.SleepQueryCodingKeys and conformance WellnessSnippets.SleepQueryCodingKeys;
  if (!lazy protocol witness table cache variable for type WellnessSnippets.SleepQueryCodingKeys and conformance WellnessSnippets.SleepQueryCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WellnessSnippets.SleepQueryCodingKeys and conformance WellnessSnippets.SleepQueryCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type WellnessSnippets.SleepQueryCodingKeys and conformance WellnessSnippets.SleepQueryCodingKeys;
  if (!lazy protocol witness table cache variable for type WellnessSnippets.SleepQueryCodingKeys and conformance WellnessSnippets.SleepQueryCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WellnessSnippets.SleepQueryCodingKeys and conformance WellnessSnippets.SleepQueryCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type WellnessSnippets.SleepQueryCodingKeys and conformance WellnessSnippets.SleepQueryCodingKeys;
  if (!lazy protocol witness table cache variable for type WellnessSnippets.SleepQueryCodingKeys and conformance WellnessSnippets.SleepQueryCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WellnessSnippets.SleepQueryCodingKeys and conformance WellnessSnippets.SleepQueryCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type WellnessSnippets.SleepQueryCodingKeys and conformance WellnessSnippets.SleepQueryCodingKeys;
  if (!lazy protocol witness table cache variable for type WellnessSnippets.SleepQueryCodingKeys and conformance WellnessSnippets.SleepQueryCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WellnessSnippets.SleepQueryCodingKeys and conformance WellnessSnippets.SleepQueryCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type WellnessSnippets.SingleActivitySummaryQueryCodingKeys and conformance WellnessSnippets.SingleActivitySummaryQueryCodingKeys()
{
  result = lazy protocol witness table cache variable for type WellnessSnippets.SingleActivitySummaryQueryCodingKeys and conformance WellnessSnippets.SingleActivitySummaryQueryCodingKeys;
  if (!lazy protocol witness table cache variable for type WellnessSnippets.SingleActivitySummaryQueryCodingKeys and conformance WellnessSnippets.SingleActivitySummaryQueryCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WellnessSnippets.SingleActivitySummaryQueryCodingKeys and conformance WellnessSnippets.SingleActivitySummaryQueryCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type WellnessSnippets.SingleActivitySummaryQueryCodingKeys and conformance WellnessSnippets.SingleActivitySummaryQueryCodingKeys;
  if (!lazy protocol witness table cache variable for type WellnessSnippets.SingleActivitySummaryQueryCodingKeys and conformance WellnessSnippets.SingleActivitySummaryQueryCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WellnessSnippets.SingleActivitySummaryQueryCodingKeys and conformance WellnessSnippets.SingleActivitySummaryQueryCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type WellnessSnippets.SingleActivitySummaryQueryCodingKeys and conformance WellnessSnippets.SingleActivitySummaryQueryCodingKeys;
  if (!lazy protocol witness table cache variable for type WellnessSnippets.SingleActivitySummaryQueryCodingKeys and conformance WellnessSnippets.SingleActivitySummaryQueryCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WellnessSnippets.SingleActivitySummaryQueryCodingKeys and conformance WellnessSnippets.SingleActivitySummaryQueryCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type WellnessSnippets.SingleActivitySummaryQueryCodingKeys and conformance WellnessSnippets.SingleActivitySummaryQueryCodingKeys;
  if (!lazy protocol witness table cache variable for type WellnessSnippets.SingleActivitySummaryQueryCodingKeys and conformance WellnessSnippets.SingleActivitySummaryQueryCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WellnessSnippets.SingleActivitySummaryQueryCodingKeys and conformance WellnessSnippets.SingleActivitySummaryQueryCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type WellnessSnippets.PhoneRingsCodingKeys and conformance WellnessSnippets.PhoneRingsCodingKeys()
{
  result = lazy protocol witness table cache variable for type WellnessSnippets.PhoneRingsCodingKeys and conformance WellnessSnippets.PhoneRingsCodingKeys;
  if (!lazy protocol witness table cache variable for type WellnessSnippets.PhoneRingsCodingKeys and conformance WellnessSnippets.PhoneRingsCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WellnessSnippets.PhoneRingsCodingKeys and conformance WellnessSnippets.PhoneRingsCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type WellnessSnippets.PhoneRingsCodingKeys and conformance WellnessSnippets.PhoneRingsCodingKeys;
  if (!lazy protocol witness table cache variable for type WellnessSnippets.PhoneRingsCodingKeys and conformance WellnessSnippets.PhoneRingsCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WellnessSnippets.PhoneRingsCodingKeys and conformance WellnessSnippets.PhoneRingsCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type WellnessSnippets.PhoneRingsCodingKeys and conformance WellnessSnippets.PhoneRingsCodingKeys;
  if (!lazy protocol witness table cache variable for type WellnessSnippets.PhoneRingsCodingKeys and conformance WellnessSnippets.PhoneRingsCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WellnessSnippets.PhoneRingsCodingKeys and conformance WellnessSnippets.PhoneRingsCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type WellnessSnippets.PhoneRingsCodingKeys and conformance WellnessSnippets.PhoneRingsCodingKeys;
  if (!lazy protocol witness table cache variable for type WellnessSnippets.PhoneRingsCodingKeys and conformance WellnessSnippets.PhoneRingsCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WellnessSnippets.PhoneRingsCodingKeys and conformance WellnessSnippets.PhoneRingsCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PhoneRingsModel and conformance PhoneRingsModel()
{
  result = lazy protocol witness table cache variable for type PhoneRingsModel and conformance PhoneRingsModel;
  if (!lazy protocol witness table cache variable for type PhoneRingsModel and conformance PhoneRingsModel)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhoneRingsModel and conformance PhoneRingsModel);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PhoneRingsModel and conformance PhoneRingsModel;
  if (!lazy protocol witness table cache variable for type PhoneRingsModel and conformance PhoneRingsModel)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhoneRingsModel and conformance PhoneRingsModel);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type WellnessSnippets.HeightDataQueryCodingKeys and conformance WellnessSnippets.HeightDataQueryCodingKeys()
{
  result = lazy protocol witness table cache variable for type WellnessSnippets.HeightDataQueryCodingKeys and conformance WellnessSnippets.HeightDataQueryCodingKeys;
  if (!lazy protocol witness table cache variable for type WellnessSnippets.HeightDataQueryCodingKeys and conformance WellnessSnippets.HeightDataQueryCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WellnessSnippets.HeightDataQueryCodingKeys and conformance WellnessSnippets.HeightDataQueryCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type WellnessSnippets.HeightDataQueryCodingKeys and conformance WellnessSnippets.HeightDataQueryCodingKeys;
  if (!lazy protocol witness table cache variable for type WellnessSnippets.HeightDataQueryCodingKeys and conformance WellnessSnippets.HeightDataQueryCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WellnessSnippets.HeightDataQueryCodingKeys and conformance WellnessSnippets.HeightDataQueryCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type WellnessSnippets.HeightDataQueryCodingKeys and conformance WellnessSnippets.HeightDataQueryCodingKeys;
  if (!lazy protocol witness table cache variable for type WellnessSnippets.HeightDataQueryCodingKeys and conformance WellnessSnippets.HeightDataQueryCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WellnessSnippets.HeightDataQueryCodingKeys and conformance WellnessSnippets.HeightDataQueryCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type WellnessSnippets.HeightDataQueryCodingKeys and conformance WellnessSnippets.HeightDataQueryCodingKeys;
  if (!lazy protocol witness table cache variable for type WellnessSnippets.HeightDataQueryCodingKeys and conformance WellnessSnippets.HeightDataQueryCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WellnessSnippets.HeightDataQueryCodingKeys and conformance WellnessSnippets.HeightDataQueryCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type WellnessSnippets.GenericDataQueryCodingKeys and conformance WellnessSnippets.GenericDataQueryCodingKeys()
{
  result = lazy protocol witness table cache variable for type WellnessSnippets.GenericDataQueryCodingKeys and conformance WellnessSnippets.GenericDataQueryCodingKeys;
  if (!lazy protocol witness table cache variable for type WellnessSnippets.GenericDataQueryCodingKeys and conformance WellnessSnippets.GenericDataQueryCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WellnessSnippets.GenericDataQueryCodingKeys and conformance WellnessSnippets.GenericDataQueryCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type WellnessSnippets.GenericDataQueryCodingKeys and conformance WellnessSnippets.GenericDataQueryCodingKeys;
  if (!lazy protocol witness table cache variable for type WellnessSnippets.GenericDataQueryCodingKeys and conformance WellnessSnippets.GenericDataQueryCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WellnessSnippets.GenericDataQueryCodingKeys and conformance WellnessSnippets.GenericDataQueryCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type WellnessSnippets.GenericDataQueryCodingKeys and conformance WellnessSnippets.GenericDataQueryCodingKeys;
  if (!lazy protocol witness table cache variable for type WellnessSnippets.GenericDataQueryCodingKeys and conformance WellnessSnippets.GenericDataQueryCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WellnessSnippets.GenericDataQueryCodingKeys and conformance WellnessSnippets.GenericDataQueryCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type WellnessSnippets.GenericDataQueryCodingKeys and conformance WellnessSnippets.GenericDataQueryCodingKeys;
  if (!lazy protocol witness table cache variable for type WellnessSnippets.GenericDataQueryCodingKeys and conformance WellnessSnippets.GenericDataQueryCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WellnessSnippets.GenericDataQueryCodingKeys and conformance WellnessSnippets.GenericDataQueryCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type WellnessSnippets.GenericDataTypeLogCodingKeys and conformance WellnessSnippets.GenericDataTypeLogCodingKeys()
{
  result = lazy protocol witness table cache variable for type WellnessSnippets.GenericDataTypeLogCodingKeys and conformance WellnessSnippets.GenericDataTypeLogCodingKeys;
  if (!lazy protocol witness table cache variable for type WellnessSnippets.GenericDataTypeLogCodingKeys and conformance WellnessSnippets.GenericDataTypeLogCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WellnessSnippets.GenericDataTypeLogCodingKeys and conformance WellnessSnippets.GenericDataTypeLogCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type WellnessSnippets.GenericDataTypeLogCodingKeys and conformance WellnessSnippets.GenericDataTypeLogCodingKeys;
  if (!lazy protocol witness table cache variable for type WellnessSnippets.GenericDataTypeLogCodingKeys and conformance WellnessSnippets.GenericDataTypeLogCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WellnessSnippets.GenericDataTypeLogCodingKeys and conformance WellnessSnippets.GenericDataTypeLogCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type WellnessSnippets.GenericDataTypeLogCodingKeys and conformance WellnessSnippets.GenericDataTypeLogCodingKeys;
  if (!lazy protocol witness table cache variable for type WellnessSnippets.GenericDataTypeLogCodingKeys and conformance WellnessSnippets.GenericDataTypeLogCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WellnessSnippets.GenericDataTypeLogCodingKeys and conformance WellnessSnippets.GenericDataTypeLogCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type WellnessSnippets.GenericDataTypeLogCodingKeys and conformance WellnessSnippets.GenericDataTypeLogCodingKeys;
  if (!lazy protocol witness table cache variable for type WellnessSnippets.GenericDataTypeLogCodingKeys and conformance WellnessSnippets.GenericDataTypeLogCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WellnessSnippets.GenericDataTypeLogCodingKeys and conformance WellnessSnippets.GenericDataTypeLogCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type WellnessSnippets.GenericMedCompletedLogCodingKeys and conformance WellnessSnippets.GenericMedCompletedLogCodingKeys()
{
  result = lazy protocol witness table cache variable for type WellnessSnippets.GenericMedCompletedLogCodingKeys and conformance WellnessSnippets.GenericMedCompletedLogCodingKeys;
  if (!lazy protocol witness table cache variable for type WellnessSnippets.GenericMedCompletedLogCodingKeys and conformance WellnessSnippets.GenericMedCompletedLogCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WellnessSnippets.GenericMedCompletedLogCodingKeys and conformance WellnessSnippets.GenericMedCompletedLogCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type WellnessSnippets.GenericMedCompletedLogCodingKeys and conformance WellnessSnippets.GenericMedCompletedLogCodingKeys;
  if (!lazy protocol witness table cache variable for type WellnessSnippets.GenericMedCompletedLogCodingKeys and conformance WellnessSnippets.GenericMedCompletedLogCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WellnessSnippets.GenericMedCompletedLogCodingKeys and conformance WellnessSnippets.GenericMedCompletedLogCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type WellnessSnippets.GenericMedCompletedLogCodingKeys and conformance WellnessSnippets.GenericMedCompletedLogCodingKeys;
  if (!lazy protocol witness table cache variable for type WellnessSnippets.GenericMedCompletedLogCodingKeys and conformance WellnessSnippets.GenericMedCompletedLogCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WellnessSnippets.GenericMedCompletedLogCodingKeys and conformance WellnessSnippets.GenericMedCompletedLogCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type WellnessSnippets.GenericMedCompletedLogCodingKeys and conformance WellnessSnippets.GenericMedCompletedLogCodingKeys;
  if (!lazy protocol witness table cache variable for type WellnessSnippets.GenericMedCompletedLogCodingKeys and conformance WellnessSnippets.GenericMedCompletedLogCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WellnessSnippets.GenericMedCompletedLogCodingKeys and conformance WellnessSnippets.GenericMedCompletedLogCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type WellnessSnippets.GenericBinaryButtonCodingKeys and conformance WellnessSnippets.GenericBinaryButtonCodingKeys()
{
  result = lazy protocol witness table cache variable for type WellnessSnippets.GenericBinaryButtonCodingKeys and conformance WellnessSnippets.GenericBinaryButtonCodingKeys;
  if (!lazy protocol witness table cache variable for type WellnessSnippets.GenericBinaryButtonCodingKeys and conformance WellnessSnippets.GenericBinaryButtonCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WellnessSnippets.GenericBinaryButtonCodingKeys and conformance WellnessSnippets.GenericBinaryButtonCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type WellnessSnippets.GenericBinaryButtonCodingKeys and conformance WellnessSnippets.GenericBinaryButtonCodingKeys;
  if (!lazy protocol witness table cache variable for type WellnessSnippets.GenericBinaryButtonCodingKeys and conformance WellnessSnippets.GenericBinaryButtonCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WellnessSnippets.GenericBinaryButtonCodingKeys and conformance WellnessSnippets.GenericBinaryButtonCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type WellnessSnippets.GenericBinaryButtonCodingKeys and conformance WellnessSnippets.GenericBinaryButtonCodingKeys;
  if (!lazy protocol witness table cache variable for type WellnessSnippets.GenericBinaryButtonCodingKeys and conformance WellnessSnippets.GenericBinaryButtonCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WellnessSnippets.GenericBinaryButtonCodingKeys and conformance WellnessSnippets.GenericBinaryButtonCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type WellnessSnippets.GenericBinaryButtonCodingKeys and conformance WellnessSnippets.GenericBinaryButtonCodingKeys;
  if (!lazy protocol witness table cache variable for type WellnessSnippets.GenericBinaryButtonCodingKeys and conformance WellnessSnippets.GenericBinaryButtonCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WellnessSnippets.GenericBinaryButtonCodingKeys and conformance WellnessSnippets.GenericBinaryButtonCodingKeys);
  }

  return result;
}