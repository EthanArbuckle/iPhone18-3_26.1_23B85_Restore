uint64_t sub_26A0B99B0(uint64_t a1, uint64_t a2, int *a3)
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
    v8 = sub_26A424794();
    v9 = OUTLINED_FUNCTION_179(v8);
    if (*(v10 + 84) == a2)
    {
      v11 = v9;
      v12 = a3[5];
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
      v14 = OUTLINED_FUNCTION_179(v13);
      if (*(v15 + 84) == a2)
      {
        v11 = v14;
        v12 = a3[6];
      }

      else
      {
        v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&off_28036C7C0, &off_26A427400);
        v12 = a3[7];
      }
    }

    return __swift_getEnumTagSinglePayload(a1 + v12, a2, v11);
  }
}

uint64_t sub_26A0B9AD0(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = sub_26A424794();
    v9 = OUTLINED_FUNCTION_179(v8);
    if (*(v10 + 84) == a3)
    {
      v11 = v9;
      v12 = a4[5];
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
      v14 = OUTLINED_FUNCTION_179(v13);
      if (*(v15 + 84) == a3)
      {
        v11 = v14;
        v12 = a4[6];
      }

      else
      {
        v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&off_28036C7C0, &off_26A427400);
        v12 = a4[7];
      }
    }

    return __swift_storeEnumTagSinglePayload(v5 + v12, a2, a2, v11);
  }

  return result;
}

uint64_t sub_26A0B9C0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for TextProperty(0);
  if (*(*(v6 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 20) + 8);
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    return (v8 + 1);
  }
}

uint64_t sub_26A0B9CBC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for TextProperty(0);
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_26A0B9E6C@<X0>(uint64_t *a1@<X8>)
{
  result = SummaryItemPlayer.componentName.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_26A0B9E98@<X0>(uint64_t *a1@<X8>)
{
  result = SummaryItemPlayer.linkIdentifier.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_26A0B9EC4()
{
  v2 = OUTLINED_FUNCTION_251();

  return __swift_getEnumTagSinglePayload(v1, v0, v2);
}

uint64_t sub_26A0B9EFC()
{
  v2 = OUTLINED_FUNCTION_251();

  return __swift_storeEnumTagSinglePayload(v1, v0, v0, v2);
}

uint64_t sub_26A0B9FB4@<X0>(uint64_t *a1@<X8>)
{
  result = ControlSlider.componentName.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_26A0B9FE0()
{
  v2 = OUTLINED_FUNCTION_24_1();

  return __swift_getEnumTagSinglePayload(v1, v0, v2);
}

uint64_t sub_26A0BA018()
{
  v2 = OUTLINED_FUNCTION_24_1();

  return __swift_storeEnumTagSinglePayload(v1, v0, v0, v2);
}

uint64_t sub_26A0BA054@<X0>(uint64_t *a1@<X8>)
{
  result = SecondaryHeaderStandard.componentName.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_26A0BA080()
{
  v2 = OUTLINED_FUNCTION_15_1();

  return __swift_getEnumTagSinglePayload(v1, v0, v2);
}

uint64_t sub_26A0BA0B8()
{
  v2 = OUTLINED_FUNCTION_15_1();

  return __swift_storeEnumTagSinglePayload(v1, v0, v0, v2);
}

uint64_t sub_26A0BA320@<X0>(uint64_t *a1@<X8>)
{
  result = _ProtoSectionHeader_Rich.componentName.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_26A0BA350(uint64_t a1, uint64_t a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    return OUTLINED_FUNCTION_44_1(*(a1 + 8));
  }

  v7 = sub_26A424794();
  v8 = OUTLINED_FUNCTION_179(v7);
  if (*(v9 + 84) == a2)
  {
    v10 = v8;
    v11 = a3[5];
  }

  else
  {
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
    v13 = OUTLINED_FUNCTION_179(v12);
    if (*(v14 + 84) == a2)
    {
      v10 = v13;
      v11 = a3[6];
    }

    else
    {
      v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&off_28036C7C0, &off_26A427400);
      v11 = a3[7];
    }
  }

  return __swift_getEnumTagSinglePayload(a1 + v11, a2, v10);
}

uint64_t sub_26A0BA464(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = sub_26A424794();
    v9 = OUTLINED_FUNCTION_179(v8);
    if (*(v10 + 84) == a3)
    {
      v11 = v9;
      v12 = a4[5];
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
      v14 = OUTLINED_FUNCTION_179(v13);
      if (*(v15 + 84) == a3)
      {
        v11 = v14;
        v12 = a4[6];
      }

      else
      {
        v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&off_28036C7C0, &off_26A427400);
        v12 = a4[7];
      }
    }

    return __swift_storeEnumTagSinglePayload(v5 + v12, a2, a2, v11);
  }

  return result;
}

uint64_t sub_26A0BA580(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_110();
  v6 = sub_26A424794();
  v7 = OUTLINED_FUNCTION_179(v6);
  if (*(v8 + 84) != a2)
  {
    return OUTLINED_FUNCTION_44_1(*(v3 + *(a3 + 20)));
  }

  return __swift_getEnumTagSinglePayload(v3, a2, v7);
}

uint64_t sub_26A0BA618(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_26A424794();
  result = OUTLINED_FUNCTION_179(v8);
  if (*(v10 + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_26A0BA6CC()
{
  v2 = OUTLINED_FUNCTION_26_2();

  return __swift_getEnumTagSinglePayload(v1, v0, v2);
}

uint64_t sub_26A0BA704()
{
  v2 = OUTLINED_FUNCTION_26_2();

  return __swift_storeEnumTagSinglePayload(v1, v0, v0, v2);
}

uint64_t sub_26A0BA8BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C8F8, &unk_26A426440);
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = a1;
LABEL_8:

    return __swift_getEnumTagSinglePayload(v8, a2, v7);
  }

  if (a2 != 0x7FFFFFFF)
  {
    v7 = sub_26A424794();
    v8 = a1 + *(a3 + 28);
    goto LABEL_8;
  }

  v9 = *(a1 + *(a3 + 20));
  if (v9 >= 0xFFFFFFFF)
  {
    LODWORD(v9) = -1;
  }

  return (v9 + 1);
}

uint64_t sub_26A0BA998(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C8F8, &unk_26A426440);
  if (*(*(result - 8) + 84) == a3)
  {
    v9 = result;
    v10 = a1;
  }

  else
  {
    if (a3 == 0x7FFFFFFF)
    {
      *(a1 + *(a4 + 20)) = (a2 - 1);
      return result;
    }

    v9 = sub_26A424794();
    v10 = a1 + *(a4 + 28);
  }

  return __swift_storeEnumTagSinglePayload(v10, a2, a2, v9);
}

uint64_t sub_26A0BAA70@<X0>(uint64_t *a1@<X8>)
{
  result = SummaryItemSwitch.componentName.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_26A0BAA9C@<X0>(uint64_t *a1@<X8>)
{
  result = SummaryItemSwitch.linkIdentifier.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_26A0BAAC8()
{
  v2 = OUTLINED_FUNCTION_55_1();

  return __swift_getEnumTagSinglePayload(v1, v0, v2);
}

uint64_t sub_26A0BAB00()
{
  v2 = OUTLINED_FUNCTION_55_1();

  return __swift_storeEnumTagSinglePayload(v1, v0, v0, v2);
}

uint64_t sub_26A0BAB90@<X0>(uint64_t *a1@<X8>)
{
  result = SummaryItemPair.componentName.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_26A0BABBC@<X0>(uint64_t *a1@<X8>)
{
  result = SummaryItemPair.linkIdentifier.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_26A0BABE8()
{
  v2 = OUTLINED_FUNCTION_49_2();

  return __swift_getEnumTagSinglePayload(v1, v0, v2);
}

uint64_t sub_26A0BAC20()
{
  v2 = OUTLINED_FUNCTION_49_2();

  return __swift_storeEnumTagSinglePayload(v1, v0, v0, v2);
}

uint64_t sub_26A0BACB0@<X0>(uint64_t *a1@<X8>)
{
  result = ControlSwitch.componentName.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_26A0BACDC()
{
  v2 = OUTLINED_FUNCTION_40_2();

  return __swift_getEnumTagSinglePayload(v1, v0, v2);
}

uint64_t sub_26A0BAD14()
{
  v2 = OUTLINED_FUNCTION_40_2();

  return __swift_storeEnumTagSinglePayload(v1, v0, v0, v2);
}

uint64_t sub_26A0BAD98@<X0>(uint64_t *a1@<X8>)
{
  result = FactItemHeroNumber.componentName.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_26A0BADC4@<X0>(uint64_t *a1@<X8>)
{
  result = FactItemHeroNumber.linkIdentifier.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_26A0BADF0()
{
  v2 = OUTLINED_FUNCTION_58_2();

  return __swift_getEnumTagSinglePayload(v1, v0, v2);
}

uint64_t sub_26A0BAE28()
{
  v2 = OUTLINED_FUNCTION_58_2();

  return __swift_storeEnumTagSinglePayload(v1, v0, v0, v2);
}

uint64_t sub_26A0BAE64@<X0>(uint64_t *a1@<X8>)
{
  result = TertiaryHeaderStandard.componentName.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_26A0BAE90()
{
  v2 = OUTLINED_FUNCTION_15_4();

  return __swift_getEnumTagSinglePayload(v1, v0, v2);
}

uint64_t sub_26A0BAEC8()
{
  v2 = OUTLINED_FUNCTION_15_4();

  return __swift_storeEnumTagSinglePayload(v1, v0, v0, v2);
}

uint64_t sub_26A0BAFB8(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_26A424794();
    if (*(*(v8 - 8) + 84) == a2)
    {
      v9 = v8;
      v10 = *(a3 + 28);
    }

    else
    {
      v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&off_28036C7C0, &off_26A427400);
      v10 = *(a3 + 32);
    }

    return __swift_getEnumTagSinglePayload(a1 + v10, a2, v9);
  }
}

void *sub_26A0BB090(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v8 = sub_26A424794();
    if (*(*(v8 - 8) + 84) == a3)
    {
      v9 = v8;
      v10 = *(a4 + 28);
    }

    else
    {
      v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&off_28036C7C0, &off_26A427400);
      v10 = *(a4 + 32);
    }

    return __swift_storeEnumTagSinglePayload(v5 + v10, a2, a2, v9);
  }

  return result;
}

uint64_t sub_26A0BB164@<X0>(uint64_t *a1@<X8>)
{
  result = SummaryItemPairNumberV2.componentName.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_26A0BB190@<X0>(uint64_t *a1@<X8>)
{
  result = SummaryItemPairNumberV2.linkIdentifier.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_26A0BB1BC()
{
  v2 = OUTLINED_FUNCTION_53_2();

  return __swift_getEnumTagSinglePayload(v1, v0, v2);
}

uint64_t sub_26A0BB1F4()
{
  v2 = OUTLINED_FUNCTION_53_2();

  return __swift_storeEnumTagSinglePayload(v1, v0, v0, v2);
}

uint64_t sub_26A0BB230@<X0>(uint64_t *a1@<X8>)
{
  result = PrimaryHeaderStandard.componentName.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_26A0BB25C()
{
  v2 = OUTLINED_FUNCTION_25_6();

  return __swift_getEnumTagSinglePayload(v1, v0, v2);
}

uint64_t sub_26A0BB294()
{
  v2 = OUTLINED_FUNCTION_25_6();

  return __swift_storeEnumTagSinglePayload(v1, v0, v0, v2);
}

uint64_t sub_26A0BB2D0()
{
  OUTLINED_FUNCTION_1_9();
  result = AppPunchout.punchOutUri.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_26A0BB2F4()
{
  OUTLINED_FUNCTION_1_9();
  result = AppPunchout.bundleId.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_26A0BB318()
{
  OUTLINED_FUNCTION_1_9();
  result = AppPunchout.appDisplayName.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_26A0BB33C()
{
  v2 = OUTLINED_FUNCTION_3_8();

  return __swift_getEnumTagSinglePayload(v1, v0, v2);
}

uint64_t sub_26A0BB374()
{
  v2 = OUTLINED_FUNCTION_3_8();

  return __swift_storeEnumTagSinglePayload(v1, v0, v0, v2);
}

uint64_t sub_26A0BB474(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_26A424794();
    if (*(*(v8 - 8) + 84) == a2)
    {
      v9 = v8;
      v10 = *(a3 + 28);
    }

    else
    {
      v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&off_28036C7C0, &off_26A427400);
      v10 = *(a3 + 32);
    }

    return __swift_getEnumTagSinglePayload(a1 + v10, a2, v9);
  }
}

uint64_t sub_26A0BB54C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = sub_26A424794();
    if (*(*(v8 - 8) + 84) == a3)
    {
      v9 = v8;
      v10 = *(a4 + 28);
    }

    else
    {
      v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&off_28036C7C0, &off_26A427400);
      v10 = *(a4 + 32);
    }

    return __swift_storeEnumTagSinglePayload(v5 + v10, a2, a2, v9);
  }

  return result;
}

uint64_t sub_26A0BB790()
{
  OUTLINED_FUNCTION_41_3();
  if (v1)
  {
    return OUTLINED_FUNCTION_31_3();
  }

  v3 = v0;
  sub_26A424794();
  v4 = OUTLINED_FUNCTION_42_2(*(v3 + 20));

  return __swift_getEnumTagSinglePayload(v4, v5, v6);
}

void sub_26A0BB7F8()
{
  OUTLINED_FUNCTION_30_2();
  if (v3)
  {
    *v1 = (v0 - 1);
  }

  else
  {
    v4 = v2;
    sub_26A424794();
    v5 = OUTLINED_FUNCTION_42_2(*(v4 + 20));

    __swift_storeEnumTagSinglePayload(v5, v6, v0, v7);
  }
}

uint64_t sub_26A0BB910()
{
  v2 = OUTLINED_FUNCTION_39_3();
  v3 = type metadata accessor for _ProtoImageElement.Symbol(v2);

  return __swift_getEnumTagSinglePayload(v1, v0, v3);
}

uint64_t sub_26A0BB94C()
{
  v0 = OUTLINED_FUNCTION_39_3();
  type metadata accessor for _ProtoImageElement.Symbol(v0);
  v1 = OUTLINED_FUNCTION_77_0();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

uint64_t sub_26A0BB980()
{
  v2 = OUTLINED_FUNCTION_39_3();
  v3 = type metadata accessor for _ProtoImageElement.Symbol.Background(v2);

  return __swift_getEnumTagSinglePayload(v1, v0, v3);
}

uint64_t sub_26A0BB9BC()
{
  v0 = OUTLINED_FUNCTION_39_3();
  type metadata accessor for _ProtoImageElement.Symbol.Background(v0);
  v1 = OUTLINED_FUNCTION_77_0();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

uint64_t sub_26A0BB9F0@<X0>(uint64_t *a1@<X8>)
{
  result = ImageElement.Symbol.name.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_26A0BBA1C@<X0>(uint64_t *a1@<X8>)
{
  result = ImageElement.Symbol.darkModeName.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_26A0BBA48@<X0>(uint64_t *a1@<X8>)
{
  result = ReferenceFootnote.componentName.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_26A0BBA74()
{
  v2 = OUTLINED_FUNCTION_35_4();

  return __swift_getEnumTagSinglePayload(v1, v0, v2);
}

uint64_t sub_26A0BBAAC()
{
  v2 = OUTLINED_FUNCTION_35_4();

  return __swift_storeEnumTagSinglePayload(v1, v0, v0, v2);
}

uint64_t sub_26A0BBAE8()
{
  v2 = OUTLINED_FUNCTION_1_12();

  return __swift_getEnumTagSinglePayload(v1, v0, v2);
}

uint64_t sub_26A0BBB20()
{
  v2 = OUTLINED_FUNCTION_1_12();

  return __swift_storeEnumTagSinglePayload(v1, v0, v0, v2);
}

uint64_t sub_26A0BBB5C@<X0>(uint64_t *a1@<X8>)
{
  result = FactItemStandard.componentName.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_26A0BBB88@<X0>(uint64_t *a1@<X8>)
{
  result = FactItemStandard.linkIdentifier.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_26A0BBBB4()
{
  v2 = OUTLINED_FUNCTION_57_3();

  return __swift_getEnumTagSinglePayload(v1, v0, v2);
}

uint64_t sub_26A0BBBEC()
{
  v2 = OUTLINED_FUNCTION_57_3();

  return __swift_storeEnumTagSinglePayload(v1, v0, v0, v2);
}

uint64_t sub_26A0BBC28(char a1)
{
  if (!a1)
  {
    return 0x656475746974616CLL;
  }

  if (a1 == 1)
  {
    return 0x64757469676E6F6CLL;
  }

  return 1953393012;
}

uint64_t sub_26A0BBCA4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_26A151DDC();
  *a1 = result;
  return result;
}

uint64_t sub_26A0BBD14@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_26A152534(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_26A0BBE60@<X0>(uint64_t *a1@<X8>)
{
  result = StatusIndicatorInProgress.componentName.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_26A0BBE8C()
{
  v2 = OUTLINED_FUNCTION_18_8();

  return __swift_getEnumTagSinglePayload(v1, v0, v2);
}

uint64_t sub_26A0BBEC4()
{
  v2 = OUTLINED_FUNCTION_18_8();

  return __swift_storeEnumTagSinglePayload(v1, v0, v0, v2);
}

uint64_t sub_26A0BBF84()
{
  OUTLINED_FUNCTION_1_9();
  result = _ProtoSlider.identifier.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_26A0BC114()
{
  OUTLINED_FUNCTION_1_9();
  result = _ProtoSlider.invocationPayload.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_26A0BC20C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_26A424794();
  if (*(*(v6 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 20));
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    return (v8 + 1);
  }
}

uint64_t sub_26A0BC2B8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_26A424794();
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_26A0BC360@<X0>(uint64_t *a1@<X8>)
{
  result = SecondaryHeaderEmphasized.componentName.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_26A0BC38C()
{
  v2 = OUTLINED_FUNCTION_15_8();

  return __swift_getEnumTagSinglePayload(v1, v0, v2);
}

uint64_t sub_26A0BC3C4()
{
  v2 = OUTLINED_FUNCTION_15_8();

  return __swift_storeEnumTagSinglePayload(v1, v0, v0, v2);
}

char *sub_26A0BC4B8(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[40 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_1_14(a3, result);
  }

  return result;
}

uint64_t sub_26A0BC540(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C918, &unk_26A42C5A0);
  if (*(*(v4 - 8) + 84) == a2)
  {
    v5 = v4;
    v6 = a1;
  }

  else
  {
    sub_26A424794();
    v6 = OUTLINED_FUNCTION_16_9();
  }

  return __swift_getEnumTagSinglePayload(v6, a2, v5);
}

uint64_t sub_26A0BC5E4(uint64_t a1, uint64_t a2, int a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C918, &unk_26A42C5A0);
  if (*(*(v6 - 8) + 84) == a3)
  {
    v7 = v6;
    v8 = a1;
  }

  else
  {
    sub_26A424794();
    v8 = OUTLINED_FUNCTION_16_9();
  }

  return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
}

uint64_t sub_26A0BC690(uint64_t a1, uint64_t a2)
{
  if (a2 == 0x7FFFFFFF)
  {
    v2 = *(a1 + 8);
    if (v2 >= 0xFFFFFFFF)
    {
      LODWORD(v2) = -1;
    }

    return (v2 + 1);
  }

  else
  {
    sub_26A424794();
    v5 = OUTLINED_FUNCTION_16_9();

    return __swift_getEnumTagSinglePayload(v5, a2, v6);
  }
}

uint64_t sub_26A0BC714(uint64_t result, uint64_t a2, int a3)
{
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    sub_26A424794();
    v4 = OUTLINED_FUNCTION_16_9();

    return __swift_storeEnumTagSinglePayload(v4, a2, a2, v5);
  }

  return result;
}

uint64_t sub_26A0BCC28()
{
  OUTLINED_FUNCTION_1_9();
  result = _ProtoSummaryItem_Standard.componentName.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_26A0BCC50()
{
  OUTLINED_FUNCTION_1_9();
  result = _ProtoSummaryItem_Standard.linkIdentifier.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_26A0BCFB8()
{
  OUTLINED_FUNCTION_1_9();
  result = _ProtoSummaryItem_ShortNumber.componentName.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_26A0BCFE0()
{
  OUTLINED_FUNCTION_1_9();
  result = _ProtoSummaryItem_ShortNumber.linkIdentifier.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_26A0BD2E0()
{
  OUTLINED_FUNCTION_1_9();
  result = _ProtoSummaryItem_Text.componentName.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_26A0BD308()
{
  OUTLINED_FUNCTION_1_9();
  result = _ProtoSummaryItem_Text.linkIdentifier.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_26A0BD4D0()
{
  OUTLINED_FUNCTION_1_9();
  result = _ProtoSummaryItem_LargeText.componentName.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_26A0BD4F8()
{
  OUTLINED_FUNCTION_1_9();
  result = _ProtoSummaryItem_LargeText.linkIdentifier.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_26A0BD860()
{
  OUTLINED_FUNCTION_1_9();
  result = _ProtoSummaryItem_DetailedText.componentName.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_26A0BD888()
{
  OUTLINED_FUNCTION_1_9();
  result = _ProtoSummaryItem_DetailedText.linkIdentifier.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_26A0BDDF8()
{
  OUTLINED_FUNCTION_1_9();
  result = _ProtoSummaryItem_Pair.componentName.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_26A0BDE20()
{
  OUTLINED_FUNCTION_1_9();
  result = _ProtoSummaryItem_Pair.linkIdentifier.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_26A0BE0B8()
{
  OUTLINED_FUNCTION_1_9();
  result = _ProtoSummaryItem_PairV2.componentName.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_26A0BE0E0()
{
  OUTLINED_FUNCTION_1_9();
  result = _ProtoSummaryItem_PairV2.linkIdentifier.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_26A0BE6B8()
{
  OUTLINED_FUNCTION_1_9();
  result = _ProtoSummaryItem_PairNumber.componentName.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_26A0BE6E0()
{
  OUTLINED_FUNCTION_1_9();
  result = _ProtoSummaryItem_PairNumber.linkIdentifier.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_26A0BEB18()
{
  OUTLINED_FUNCTION_1_9();
  result = _ProtoSummaryItem_PairNumberV2.componentName.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_26A0BEB40()
{
  OUTLINED_FUNCTION_1_9();
  result = _ProtoSummaryItem_PairNumberV2.linkIdentifier.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_26A0BEF10()
{
  OUTLINED_FUNCTION_1_9();
  result = _ProtoSummaryItem_Button.componentName.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_26A0BEF38()
{
  OUTLINED_FUNCTION_1_9();
  result = _ProtoSummaryItem_Button.linkIdentifier.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_26A0BEF60()
{
  OUTLINED_FUNCTION_1_9();
  result = _ProtoSummaryItem_Player.player.getter();
  *v0 = result;
  return result;
}

uint64_t sub_26A0BF1F8()
{
  OUTLINED_FUNCTION_1_9();
  result = _ProtoSummaryItem_Player.componentName.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_26A0BF220()
{
  OUTLINED_FUNCTION_1_9();
  result = _ProtoSummaryItem_Player.linkIdentifier.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_26A0BF520()
{
  OUTLINED_FUNCTION_1_9();
  result = _ProtoSummaryItem_Switch.componentName.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_26A0BF548()
{
  OUTLINED_FUNCTION_1_9();
  result = _ProtoSummaryItem_Switch.linkIdentifier.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_26A0BF848()
{
  OUTLINED_FUNCTION_1_9();
  result = _ProtoSummaryItem_SwitchV2.componentName.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_26A0BF870()
{
  OUTLINED_FUNCTION_1_9();
  result = _ProtoSummaryItem_SwitchV2.linkIdentifier.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_26A0BF9E0(uint64_t a1, uint64_t a2)
{
  v4 = OUTLINED_FUNCTION_16_11();
  v5 = type metadata accessor for _ProtoColor(v4);

  return __swift_getEnumTagSinglePayload(v2, a2, v5);
}

uint64_t sub_26A0BFA24(uint64_t a1, uint64_t a2)
{
  v4 = OUTLINED_FUNCTION_16_11();
  v5 = type metadata accessor for _ProtoColor(v4);

  return __swift_storeEnumTagSinglePayload(v2, a2, a2, v5);
}

uint64_t sub_26A0BFCD8()
{
  OUTLINED_FUNCTION_1_9();
  result = _ProtoControl_Switch.componentName.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_26A0BFF18()
{
  OUTLINED_FUNCTION_1_9();
  result = _ProtoControl_PlayerButton.player.getter();
  *v0 = result;
  return result;
}

uint64_t sub_26A0BFF40()
{
  OUTLINED_FUNCTION_1_9();
  result = _ProtoControl_PlayerButton.componentName.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_26A0BFF68()
{
  OUTLINED_FUNCTION_1_9();
  result = _ProtoControl_PlayerButton.linkIdentifier.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_26A0BFF98(uint64_t a1, uint64_t a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    return OUTLINED_FUNCTION_44_1(*(a1 + 8));
  }

  v7 = sub_26A424794();
  v8 = OUTLINED_FUNCTION_179(v7);
  if (*(v9 + 84) == a2)
  {
    v10 = v8;
    v11 = a3[5];
  }

  else
  {
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036D078, &qword_26A42C830);
    v13 = OUTLINED_FUNCTION_179(v12);
    if (*(v14 + 84) == a2)
    {
      v10 = v13;
      v11 = a3[6];
    }

    else
    {
      v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
      v16 = OUTLINED_FUNCTION_179(v15);
      if (*(v17 + 84) == a2)
      {
        v10 = v16;
        v11 = a3[7];
      }

      else
      {
        v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&off_28036C7C0, &off_26A427400);
        v11 = a3[8];
      }
    }
  }

  return __swift_getEnumTagSinglePayload(a1 + v11, a2, v10);
}

uint64_t sub_26A0C00F8(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = sub_26A424794();
    v9 = OUTLINED_FUNCTION_179(v8);
    if (*(v10 + 84) == a3)
    {
      v11 = v9;
      v12 = a4[5];
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036D078, &qword_26A42C830);
      v14 = OUTLINED_FUNCTION_179(v13);
      if (*(v15 + 84) == a3)
      {
        v11 = v14;
        v12 = a4[6];
      }

      else
      {
        v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
        v17 = OUTLINED_FUNCTION_179(v16);
        if (*(v18 + 84) == a3)
        {
          v11 = v17;
          v12 = a4[7];
        }

        else
        {
          v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&off_28036C7C0, &off_26A427400);
          v12 = a4[8];
        }
      }
    }

    return __swift_storeEnumTagSinglePayload(v5 + v12, a2, a2, v11);
  }

  return result;
}

uint64_t sub_26A0C0284@<X0>(uint64_t *a1@<X8>)
{
  result = Button.componentName.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_26A0C02B0@<X0>(uint64_t *a1@<X8>)
{
  result = Button.linkIdentifier.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_26A0C02DC()
{
  v2 = OUTLINED_FUNCTION_33_5();

  return __swift_getEnumTagSinglePayload(v1, v0, v2);
}

uint64_t sub_26A0C0314()
{
  v2 = OUTLINED_FUNCTION_33_5();

  return __swift_storeEnumTagSinglePayload(v1, v0, v0, v2);
}

uint64_t sub_26A0C03D8()
{
  v2 = OUTLINED_FUNCTION_2_13();

  return __swift_getEnumTagSinglePayload(v1, v0, v2);
}

uint64_t sub_26A0C0410()
{
  v2 = OUTLINED_FUNCTION_2_13();

  return __swift_storeEnumTagSinglePayload(v1, v0, v0, v2);
}

uint64_t sub_26A0C04BC()
{
  OUTLINED_FUNCTION_1_9();
  result = _ProtoCommand.noOp.getter();
  *v0 = result & 1;
  return result;
}

uint64_t sub_26A0C050C()
{
  OUTLINED_FUNCTION_1_9();
  result = _ProtoCommand.aceCommand.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_26A0C0534()
{
  OUTLINED_FUNCTION_1_9();
  result = _ProtoCommand.response.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_26A0C055C()
{
  OUTLINED_FUNCTION_1_9();
  result = _ProtoCommand.utterance.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_26A0C05FC()
{
  OUTLINED_FUNCTION_1_9();
  result = _ProtoCommand.sfCommand.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_26A0C0624()
{
  OUTLINED_FUNCTION_1_9();
  result = _ProtoCommand.directInvocation.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_26A0C07B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C858, &dword_26A42D080);
  v7 = OUTLINED_FUNCTION_179(v6);
  if (*(v8 + 84) == a2)
  {
    v9 = v7;
    v10 = a1;
  }

  else
  {
    if (a2 == 254)
    {
      v11 = *(a1 + *(a3 + 20));
      if (v11 >= 2)
      {
        return ((v11 + 2147483646) & 0x7FFFFFFF) + 1;
      }

      else
      {
        return 0;
      }
    }

    v9 = sub_26A424794();
    v10 = a1 + *(a3 + 28);
  }

  return __swift_getEnumTagSinglePayload(v10, a2, v9);
}

uint64_t sub_26A0C0898(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C858, &dword_26A42D080);
  result = OUTLINED_FUNCTION_179(v8);
  if (*(v10 + 84) == a3)
  {
    v11 = result;
    v12 = a1;
  }

  else
  {
    if (a3 == 254)
    {
      *(a1 + *(a4 + 20)) = a2 + 1;
      return result;
    }

    v11 = sub_26A424794();
    v12 = a1 + *(a4 + 28);
  }

  return __swift_storeEnumTagSinglePayload(v12, a2, a2, v11);
}

uint64_t sub_26A0C0968()
{
  OUTLINED_FUNCTION_41_3();
  if (v1)
  {
    return OUTLINED_FUNCTION_44_1(*(v0 + 8));
  }

  OUTLINED_FUNCTION_53_6();
  v3 = OUTLINED_FUNCTION_44_9();

  return __swift_getEnumTagSinglePayload(v3, v4, v5);
}

void sub_26A0C09C4()
{
  OUTLINED_FUNCTION_30_2();
  if (v2)
  {
    *(v1 + 8) = (v0 - 1);
  }

  else
  {
    sub_26A424794();
    v3 = OUTLINED_FUNCTION_44_9();

    __swift_storeEnumTagSinglePayload(v3, v4, v0, v5);
  }
}

uint64_t sub_26A0C0A2C()
{
  OUTLINED_FUNCTION_41_3();
  if (v1)
  {
    return OUTLINED_FUNCTION_44_1(*v0);
  }

  OUTLINED_FUNCTION_53_6();
  v3 = OUTLINED_FUNCTION_44_9();

  return __swift_getEnumTagSinglePayload(v3, v4, v5);
}

void sub_26A0C0A88()
{
  OUTLINED_FUNCTION_30_2();
  if (v2)
  {
    *v1 = (v0 - 1);
  }

  else
  {
    sub_26A424794();
    v3 = OUTLINED_FUNCTION_44_9();

    __swift_storeEnumTagSinglePayload(v3, v4, v0, v5);
  }
}

uint64_t sub_26A0C0AF0()
{
  OUTLINED_FUNCTION_41_3();
  if (v2)
  {
    return OUTLINED_FUNCTION_44_1(*(v0 + 8));
  }

  OUTLINED_FUNCTION_53_6();
  v4 = OUTLINED_FUNCTION_42_2(*(v1 + 28));

  return __swift_getEnumTagSinglePayload(v4, v5, v6);
}

void sub_26A0C0B50()
{
  OUTLINED_FUNCTION_30_2();
  if (v3)
  {
    *(v1 + 8) = (v0 - 1);
  }

  else
  {
    v4 = v2;
    sub_26A424794();
    v5 = OUTLINED_FUNCTION_42_2(*(v4 + 28));

    __swift_storeEnumTagSinglePayload(v5, v6, v0, v7);
  }
}

uint64_t sub_26A0C0BBC()
{
  OUTLINED_FUNCTION_41_3();
  if (v3)
  {
    return OUTLINED_FUNCTION_44_1(*v1);
  }

  v5 = OUTLINED_FUNCTION_53_6();
  OUTLINED_FUNCTION_179(v5);
  if (*(v6 + 84) == v0)
  {
    v7 = *(v2 + 24);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C868, &qword_26A42D090);
    v7 = *(v2 + 28);
  }

  v8 = OUTLINED_FUNCTION_42_2(v7);

  return __swift_getEnumTagSinglePayload(v8, v9, v10);
}

void sub_26A0C0C68()
{
  OUTLINED_FUNCTION_30_2();
  if (v4)
  {
    *v1 = (v0 - 1);
  }

  else
  {
    v5 = v3;
    v6 = v2;
    v7 = sub_26A424794();
    OUTLINED_FUNCTION_179(v7);
    if (*(v8 + 84) == v6)
    {
      v9 = *(v5 + 24);
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C868, &qword_26A42D090);
      v9 = *(v5 + 28);
    }

    v10 = OUTLINED_FUNCTION_42_2(v9);

    __swift_storeEnumTagSinglePayload(v10, v11, v0, v12);
  }
}

uint64_t sub_26A0C0E50()
{
  v2 = OUTLINED_FUNCTION_135_1();

  return __swift_getEnumTagSinglePayload(v1, v0, v2);
}

uint64_t sub_26A0C0E88()
{
  v2 = OUTLINED_FUNCTION_135_1();

  return __swift_storeEnumTagSinglePayload(v1, v0, v0, v2);
}

uint64_t sub_26A0C10C8@<X0>(uint64_t *a1@<X8>)
{
  result = _ProtoHeroHeader.componentName.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_26A0C10F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_26A424794();
  if (*(*(v6 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 20));
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    return (v8 + 1);
  }
}

uint64_t sub_26A0C11A4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_26A424794();
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_26A0C1250()
{
  v2 = OUTLINED_FUNCTION_18_13();

  return __swift_getEnumTagSinglePayload(v1, v0, v2);
}

uint64_t sub_26A0C1288()
{
  v2 = OUTLINED_FUNCTION_18_13();

  return __swift_storeEnumTagSinglePayload(v1, v0, v0, v2);
}

uint64_t sub_26A0C12E0(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_26A424794();
    v9 = a1 + *(a3 + 44);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

uint64_t sub_26A0C1368(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_26A424794();
    v8 = v5 + *(a4 + 44);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_26A0C1630@<X0>(uint64_t *a1@<X8>)
{
  result = _ProtoHorizontalList_Standard.Item.componentName.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_26A0C1660(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    return OUTLINED_FUNCTION_44_1(*a1);
  }

  v7 = sub_26A424794();
  v8 = OUTLINED_FUNCTION_179(v7);
  if (*(v9 + 84) == a2)
  {
    v10 = v8;
    v11 = *(a3 + 24);
  }

  else
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
    v11 = *(a3 + 28);
  }

  return __swift_getEnumTagSinglePayload(a1 + v11, a2, v10);
}

void *sub_26A0C1728(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v8 = sub_26A424794();
    v9 = OUTLINED_FUNCTION_179(v8);
    if (*(v10 + 84) == a3)
    {
      v11 = v9;
      v12 = *(a4 + 24);
    }

    else
    {
      v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
      v12 = *(a4 + 28);
    }

    return __swift_storeEnumTagSinglePayload(v5 + v12, a2, a2, v11);
  }

  return result;
}

uint64_t sub_26A0C17F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_110();
  v6 = sub_26A424794();
  v7 = OUTLINED_FUNCTION_179(v6);
  if (*(v8 + 84) != a2)
  {
    return OUTLINED_FUNCTION_44_1(*(v3 + *(a3 + 20)));
  }

  return __swift_getEnumTagSinglePayload(v3, a2, v7);
}

uint64_t sub_26A0C1890(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_26A424794();
  result = OUTLINED_FUNCTION_179(v8);
  if (*(v10 + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_26A0C195C(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_26A424794();
    if (*(*(v8 - 8) + 84) == a2)
    {
      v9 = v8;
      v10 = *(a3 + 24);
    }

    else
    {
      v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C848, &qword_26A426690);
      v10 = *(a3 + 28);
    }

    return __swift_getEnumTagSinglePayload(a1 + v10, a2, v9);
  }
}

void *sub_26A0C1A34(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v8 = sub_26A424794();
    if (*(*(v8 - 8) + 84) == a3)
    {
      v9 = v8;
      v10 = *(a4 + 24);
    }

    else
    {
      v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C848, &qword_26A426690);
      v10 = *(a4 + 28);
    }

    return __swift_storeEnumTagSinglePayload(v5 + v10, a2, a2, v9);
  }

  return result;
}

uint64_t sub_26A0C1B30(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_26A424794();
    if (*(*(v8 - 8) + 84) == a2)
    {
      v9 = v8;
      v10 = *(a3 + 24);
    }

    else
    {
      v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C848, &qword_26A426690);
      v10 = *(a3 + 28);
    }

    return __swift_getEnumTagSinglePayload(a1 + v10, a2, v9);
  }
}

void *sub_26A0C1C08(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v8 = sub_26A424794();
    if (*(*(v8 - 8) + 84) == a3)
    {
      v9 = v8;
      v10 = *(a4 + 24);
    }

    else
    {
      v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C848, &qword_26A426690);
      v10 = *(a4 + 28);
    }

    return __swift_storeEnumTagSinglePayload(v5 + v10, a2, a2, v9);
  }

  return result;
}

uint64_t sub_26A0C1CDC@<X0>(uint64_t *a1@<X8>)
{
  result = SimpleItemRich.componentName.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_26A0C1D08@<X0>(uint64_t *a1@<X8>)
{
  result = SimpleItemRich.linkIdentifier.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_26A0C1D34()
{
  v2 = OUTLINED_FUNCTION_64_5();

  return __swift_getEnumTagSinglePayload(v1, v0, v2);
}

uint64_t sub_26A0C1D6C()
{
  v2 = OUTLINED_FUNCTION_64_5();

  return __swift_storeEnumTagSinglePayload(v1, v0, v0, v2);
}

uint64_t sub_26A0C1DA8@<X0>(uint64_t *a1@<X8>)
{
  result = SummaryItemPairNumber.componentName.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_26A0C1DD4@<X0>(uint64_t *a1@<X8>)
{
  result = SummaryItemPairNumber.linkIdentifier.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_26A0C1E00()
{
  v2 = OUTLINED_FUNCTION_53_8();

  return __swift_getEnumTagSinglePayload(v1, v0, v2);
}

uint64_t sub_26A0C1E38()
{
  v2 = OUTLINED_FUNCTION_53_8();

  return __swift_storeEnumTagSinglePayload(v1, v0, v0, v2);
}

uint64_t sub_26A0C1EC8@<X0>(uint64_t *a1@<X8>)
{
  result = SummaryItemSwitchV2.componentName.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_26A0C1EF4@<X0>(uint64_t *a1@<X8>)
{
  result = SummaryItemSwitchV2.linkIdentifier.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_26A0C1F20()
{
  v2 = OUTLINED_FUNCTION_55_7();

  return __swift_getEnumTagSinglePayload(v1, v0, v2);
}

uint64_t sub_26A0C1F58()
{
  v2 = OUTLINED_FUNCTION_55_7();

  return __swift_storeEnumTagSinglePayload(v1, v0, v0, v2);
}

uint64_t sub_26A0C24E4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_26A0C24A8();
  *a1 = result & 1;
  return result;
}

uint64_t sub_26A0C2540@<X0>(uint64_t *a1@<X8>)
{
  result = SummaryItemLargeText.componentName.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_26A0C256C@<X0>(uint64_t *a1@<X8>)
{
  result = SummaryItemLargeText.linkIdentifier.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_26A0C2598()
{
  v2 = OUTLINED_FUNCTION_29_9();

  return __swift_getEnumTagSinglePayload(v1, v0, v2);
}

uint64_t sub_26A0C25D0()
{
  v2 = OUTLINED_FUNCTION_29_9();

  return __swift_storeEnumTagSinglePayload(v1, v0, v0, v2);
}

uint64_t sub_26A0C2630()
{
  v2 = OUTLINED_FUNCTION_1_25();

  return __swift_getEnumTagSinglePayload(v1, v0, v2);
}

uint64_t sub_26A0C2668()
{
  v2 = OUTLINED_FUNCTION_1_25();

  return __swift_storeEnumTagSinglePayload(v1, v0, v0, v2);
}

uint64_t sub_26A0C29CC(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *a1;
    v5 = v4 >= 2;
    v6 = (v4 + 2147483646) & 0x7FFFFFFF;
    if (v5)
    {
      return (v6 + 1);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v10 = sub_26A424794();
    v11 = &a1[*(a3 + 20)];

    return __swift_getEnumTagSinglePayload(v11, a2, v10);
  }
}

void sub_26A0C2A54()
{
  OUTLINED_FUNCTION_6_13();
  if (v3 == 254)
  {
    *v1 = v0 + 1;
  }

  else
  {
    v4 = v2;
    v5 = sub_26A424794();
    v6 = &v1[*(v4 + 20)];

    __swift_storeEnumTagSinglePayload(v6, v0, v0, v5);
  }
}

void sub_26A0C2AD0()
{
  OUTLINED_FUNCTION_16_14();
  v1 = OUTLINED_FUNCTION_5_21();
  v2 = OUTLINED_FUNCTION_41(v1);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = OUTLINED_FUNCTION_24_8();
  v6 = type metadata accessor for _ProtoResponse(v5);
  v7 = OUTLINED_FUNCTION_8_12(v6);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_2_22();
  sub_26A22F934(&qword_28036F7A8, type metadata accessor for _ProtoResponse);
  OUTLINED_FUNCTION_1_27();
  if (!v0)
  {
    OUTLINED_FUNCTION_12_14();
  }

  OUTLINED_FUNCTION_9_18();
  OUTLINED_FUNCTION_15_17();
}

uint64_t sub_26A0C2BDC@<X0>(uint64_t *a1@<X8>)
{
  result = FactItemButton.componentName.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_26A0C2C08@<X0>(uint64_t *a1@<X8>)
{
  result = FactItemButton.linkIdentifier.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_26A0C2C34()
{
  v2 = OUTLINED_FUNCTION_77_3();

  return __swift_getEnumTagSinglePayload(v1, v0, v2);
}

uint64_t sub_26A0C2C6C()
{
  v2 = OUTLINED_FUNCTION_77_3();

  return __swift_storeEnumTagSinglePayload(v1, v0, v0, v2);
}

BOOL sub_26A0C2CB4(uint64_t a1, char a2, uint64_t a3, char a4)
{
  v4 = a1 != 0;
  if ((a2 & 1) == 0)
  {
    v4 = a1;
  }

  v5 = a3 != 0;
  if ((a4 & 1) == 0)
  {
    v5 = a3;
  }

  return v4 == v5;
}

uint64_t sub_26A0C2DA4@<X0>(uint64_t *a1@<X8>)
{
  result = _ProtoImageElement.ContentMode.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_26A0C2DEC@<X0>(uint64_t *a1@<X8>)
{
  result = _ProtoImageElement.CornerRoundingMode.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_26A0C2EA8()
{
  OUTLINED_FUNCTION_213_0();
  sub_26A252D8C();
  OUTLINED_FUNCTION_246_1();
  return sub_26A424894();
}

uint64_t sub_26A0C372C()
{
  OUTLINED_FUNCTION_1_9();
  result = _ProtoImageElement.Url.source.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_26A0C3B3C()
{
  OUTLINED_FUNCTION_1_9();
  result = _ProtoImageElement.Url.darkModeSource.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_26A0C3EE0()
{
  OUTLINED_FUNCTION_41_3();
  if (v1)
  {
    return OUTLINED_FUNCTION_44_1(*v0);
  }

  OUTLINED_FUNCTION_53_6();
  OUTLINED_FUNCTION_241_1();
  v4 = OUTLINED_FUNCTION_42_2(v3);

  return __swift_getEnumTagSinglePayload(v4, v5, v6);
}

void sub_26A0C3F3C()
{
  OUTLINED_FUNCTION_30_2();
  if (v2)
  {
    *v1 = (v0 - 1);
  }

  else
  {
    OUTLINED_FUNCTION_257_1();
    OUTLINED_FUNCTION_240_1();
    v4 = OUTLINED_FUNCTION_84_4(v3);

    __swift_storeEnumTagSinglePayload(v4, v5, v6, v7);
  }
}

uint64_t _s10SnippetKit17_ProtoTextElementV4FontV9NamedFontOwet_0(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 9))
  {
    return OUTLINED_FUNCTION_229_1(a1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_26A0C3FB0(uint64_t a1)
{
  if (*(a1 + 8))
  {
    return OUTLINED_FUNCTION_229_1(a1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_26A0C3FCC()
{
  OUTLINED_FUNCTION_244_1();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036D9D0, &qword_26A432980);
  v3 = OUTLINED_FUNCTION_179(v2);
  if (*(v4 + 84) == v0)
  {
    v5 = v3;
    v6 = v1;
  }

  else
  {
    sub_26A424794();
    OUTLINED_FUNCTION_241_1();
    v6 = v1 + v7;
  }

  return __swift_getEnumTagSinglePayload(v6, v0, v5);
}

uint64_t sub_26A0C4060()
{
  OUTLINED_FUNCTION_130_2();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036D9D0, &qword_26A432980);
  OUTLINED_FUNCTION_179(v1);
  if (*(v2 + 84) == v0)
  {
    OUTLINED_FUNCTION_218_1();
  }

  else
  {
    sub_26A424794();
    OUTLINED_FUNCTION_240_1();
  }

  OUTLINED_FUNCTION_147_2();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

uint64_t sub_26A0C40F0()
{
  OUTLINED_FUNCTION_41_3();
  if (v2)
  {
    return OUTLINED_FUNCTION_44_1(*(v0 + 8));
  }

  OUTLINED_FUNCTION_53_6();
  v4 = OUTLINED_FUNCTION_42_2(*(v1 + 20));

  return __swift_getEnumTagSinglePayload(v4, v5, v6);
}

void sub_26A0C4150()
{
  OUTLINED_FUNCTION_30_2();
  if (v1)
  {
    OUTLINED_FUNCTION_243_1();
  }

  else
  {
    OUTLINED_FUNCTION_257_1();
    v2 = OUTLINED_FUNCTION_84_4(*(v0 + 20));

    __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
  }
}

uint64_t sub_26A0C41AC()
{
  OUTLINED_FUNCTION_41_3();
  if (v2)
  {
    return OUTLINED_FUNCTION_44_1(*v0);
  }

  OUTLINED_FUNCTION_53_6();
  v4 = OUTLINED_FUNCTION_42_2(*(v1 + 20));

  return __swift_getEnumTagSinglePayload(v4, v5, v6);
}

void sub_26A0C420C()
{
  OUTLINED_FUNCTION_30_2();
  if (v3)
  {
    *v1 = (v0 - 1);
  }

  else
  {
    OUTLINED_FUNCTION_257_1();
    v4 = OUTLINED_FUNCTION_84_4(*(v2 + 20));

    __swift_storeEnumTagSinglePayload(v4, v5, v6, v7);
  }
}

uint64_t sub_26A0C426C()
{
  OUTLINED_FUNCTION_41_3();
  if (v1)
  {
    return OUTLINED_FUNCTION_44_1(*(v0 + 8));
  }

  OUTLINED_FUNCTION_53_6();
  OUTLINED_FUNCTION_241_1();
  v4 = OUTLINED_FUNCTION_42_2(v3);

  return __swift_getEnumTagSinglePayload(v4, v5, v6);
}

void sub_26A0C42C8()
{
  OUTLINED_FUNCTION_30_2();
  if (v0)
  {
    OUTLINED_FUNCTION_243_1();
  }

  else
  {
    OUTLINED_FUNCTION_257_1();
    OUTLINED_FUNCTION_240_1();
    v2 = OUTLINED_FUNCTION_84_4(v1);

    __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
  }
}

uint64_t sub_26A0C4320(uint64_t a1, int a2)
{
  if (a2 == 12)
  {
    v4 = *(a1 + 8) >> 60;
    if (((4 * v4) & 0xC) != 0)
    {
      return 16 - ((4 * v4) & 0xC | (v4 >> 2));
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v6 = OUTLINED_FUNCTION_53_6();
    OUTLINED_FUNCTION_179(v6);
    if (*(v7 + 84) == v2)
    {
      v8 = v3[8];
    }

    else
    {
      v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036D1A0, &qword_26A427150);
      OUTLINED_FUNCTION_179(v9);
      if (*(v10 + 84) == v2)
      {
        v8 = v3[9];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036D198, &qword_26A432940);
        v8 = v3[10];
      }
    }

    v11 = OUTLINED_FUNCTION_42_2(v8);

    return __swift_getEnumTagSinglePayload(v11, v12, v13);
  }
}

void sub_26A0C443C()
{
  OUTLINED_FUNCTION_6_13();
  if (v4 == 12)
  {
    *v1 = 0;
    v1[1] = (((-v0 >> 2) & 3) - 4 * v0) << 60;
  }

  else
  {
    v5 = OUTLINED_FUNCTION_228_1();
    OUTLINED_FUNCTION_179(v5);
    if (*(v6 + 84) == v3)
    {
      v7 = v2[8];
    }

    else
    {
      v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036D1A0, &qword_26A427150);
      OUTLINED_FUNCTION_179(v8);
      if (*(v9 + 84) == v3)
      {
        v7 = v2[9];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036D198, &qword_26A432940);
        v7 = v2[10];
      }
    }

    v10 = OUTLINED_FUNCTION_84_4(v7);

    __swift_storeEnumTagSinglePayload(v10, v11, v12, v13);
  }
}

uint64_t sub_26A0C4544()
{
  OUTLINED_FUNCTION_41_3();
  if (v3)
  {
    return OUTLINED_FUNCTION_44_1(*(v1 + 8));
  }

  v5 = OUTLINED_FUNCTION_53_6();
  OUTLINED_FUNCTION_179(v5);
  if (*(v6 + 84) == v0)
  {
    v7 = v2[9];
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036D1A0, &qword_26A427150);
    OUTLINED_FUNCTION_179(v8);
    if (*(v9 + 84) == v0)
    {
      v7 = v2[10];
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036D198, &qword_26A432940);
      v7 = v2[11];
    }
  }

  v10 = OUTLINED_FUNCTION_42_2(v7);

  return __swift_getEnumTagSinglePayload(v10, v11, v12);
}

void sub_26A0C463C()
{
  OUTLINED_FUNCTION_30_2();
  if (v2)
  {
    OUTLINED_FUNCTION_243_1();
  }

  else
  {
    v3 = OUTLINED_FUNCTION_228_1();
    OUTLINED_FUNCTION_179(v3);
    if (*(v4 + 84) == v1)
    {
      v5 = v0[9];
    }

    else
    {
      v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036D1A0, &qword_26A427150);
      OUTLINED_FUNCTION_179(v6);
      if (*(v7 + 84) == v1)
      {
        v5 = v0[10];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036D198, &qword_26A432940);
        v5 = v0[11];
      }
    }

    v8 = OUTLINED_FUNCTION_84_4(v5);

    __swift_storeEnumTagSinglePayload(v8, v9, v10, v11);
  }
}

uint64_t sub_26A0C4730()
{
  OUTLINED_FUNCTION_41_3();
  if (v3)
  {
    return OUTLINED_FUNCTION_44_1(*(v1 + 8));
  }

  v5 = OUTLINED_FUNCTION_53_6();
  OUTLINED_FUNCTION_179(v5);
  if (*(v6 + 84) == v0)
  {
    v7 = v2[11];
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CCD8, &unk_26A432950);
    OUTLINED_FUNCTION_179(v8);
    if (*(v9 + 84) == v0)
    {
      v7 = v2[12];
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036D4C8, &qword_26A428228);
      v7 = v2[13];
    }
  }

  v10 = OUTLINED_FUNCTION_42_2(v7);

  return __swift_getEnumTagSinglePayload(v10, v11, v12);
}

void sub_26A0C4828()
{
  OUTLINED_FUNCTION_30_2();
  if (v2)
  {
    OUTLINED_FUNCTION_243_1();
  }

  else
  {
    v3 = OUTLINED_FUNCTION_228_1();
    OUTLINED_FUNCTION_179(v3);
    if (*(v4 + 84) == v1)
    {
      v5 = v0[11];
    }

    else
    {
      v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CCD8, &unk_26A432950);
      OUTLINED_FUNCTION_179(v6);
      if (*(v7 + 84) == v1)
      {
        v5 = v0[12];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036D4C8, &qword_26A428228);
        v5 = v0[13];
      }
    }

    v8 = OUTLINED_FUNCTION_84_4(v5);

    __swift_storeEnumTagSinglePayload(v8, v9, v10, v11);
  }
}

uint64_t sub_26A0C491C()
{
  OUTLINED_FUNCTION_244_1();
  v3 = sub_26A424794();
  v4 = OUTLINED_FUNCTION_179(v3);
  if (*(v5 + 84) == v0)
  {
    v6 = v4;
    v7 = v1;
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CCD8, &unk_26A432950);
    v9 = OUTLINED_FUNCTION_179(v8);
    if (*(v10 + 84) == v0)
    {
      v6 = v9;
      v11 = *(v2 + 20);
    }

    else
    {
      v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036D1A0, &qword_26A427150);
      OUTLINED_FUNCTION_179(v12);
      if (*(v13 + 84) == v0)
      {
        OUTLINED_FUNCTION_241_1();
      }

      else
      {
        v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036D198, &qword_26A432940);
        v11 = *(v2 + 28);
      }
    }

    v7 = v1 + v11;
  }

  return __swift_getEnumTagSinglePayload(v7, v0, v6);
}

uint64_t sub_26A0C4A48()
{
  OUTLINED_FUNCTION_130_2();
  v2 = sub_26A424794();
  OUTLINED_FUNCTION_179(v2);
  if (*(v3 + 84) == v1)
  {
    OUTLINED_FUNCTION_218_1();
  }

  else
  {
    v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CCD8, &unk_26A432950);
    OUTLINED_FUNCTION_179(v4);
    if (*(v5 + 84) == v1)
    {
      v6 = *(v0 + 20);
    }

    else
    {
      v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036D1A0, &qword_26A427150);
      OUTLINED_FUNCTION_179(v7);
      if (*(v8 + 84) == v1)
      {
        OUTLINED_FUNCTION_240_1();
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036D198, &qword_26A432940);
        v9 = *(v0 + 28);
      }
    }
  }

  OUTLINED_FUNCTION_147_2();

  return __swift_storeEnumTagSinglePayload(v10, v11, v12, v13);
}

uint64_t sub_26A0C4B70()
{
  OUTLINED_FUNCTION_6_13();
  v3 = *(v2 + 24);
  v4 = sub_26A424794();

  return __swift_getEnumTagSinglePayload(v1 + v3, v0, v4);
}

uint64_t sub_26A0C4BBC()
{
  OUTLINED_FUNCTION_6_13();
  v1 = *(v0 + 24);
  sub_26A424794();
  OUTLINED_FUNCTION_147_2();

  return __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
}

uint64_t sub_26A0C4F00()
{
  OUTLINED_FUNCTION_1_9();
  result = _ProtoSimpleItem_Standard.componentName.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_26A0C4FF8()
{
  OUTLINED_FUNCTION_1_9();
  result = _ProtoSimpleItem_Standard.linkIdentifier.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_26A0C52F8()
{
  OUTLINED_FUNCTION_1_9();
  result = _ProtoSimpleItem_Rich.componentName.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_26A0C5458()
{
  OUTLINED_FUNCTION_1_9();
  result = _ProtoSimpleItem_Rich.linkIdentifier.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_26A0C5688()
{
  OUTLINED_FUNCTION_1_9();
  result = _ProtoSimpleItem_ReverseRich.componentName.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_26A0C5718()
{
  OUTLINED_FUNCTION_1_9();
  result = _ProtoSimpleItem_ReverseRich.linkIdentifier.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_26A0C5810()
{
  OUTLINED_FUNCTION_1_9();
  result = _ProtoSimpleItem_Player.player.getter();
  *v0 = result;
  return result;
}

uint64_t sub_26A0C59D8()
{
  OUTLINED_FUNCTION_1_9();
  result = _ProtoSimpleItem_Player.componentName.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_26A0C5A00()
{
  OUTLINED_FUNCTION_1_9();
  result = _ProtoSimpleItem_Player.linkIdentifier.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_26A0C5EA0()
{
  OUTLINED_FUNCTION_1_9();
  result = _ProtoSimpleItem_RichSearchResult.componentName.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_26A0C5EC8()
{
  OUTLINED_FUNCTION_1_9();
  result = _ProtoSimpleItem_RichSearchResult.linkIdentifier.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_26A0C5EF8(unint64_t *a1, uint64_t a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    return OUTLINED_FUNCTION_44_1(*a1);
  }

  v7 = sub_26A424794();
  v8 = OUTLINED_FUNCTION_179(v7);
  if (*(v9 + 84) == a2)
  {
    v10 = v8;
    v11 = a3[7];
  }

  else
  {
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&off_28036C7C0, &off_26A427400);
    v13 = OUTLINED_FUNCTION_179(v12);
    if (*(v14 + 84) == a2)
    {
      v10 = v13;
      v11 = a3[8];
    }

    else
    {
      v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
      v11 = a3[9];
    }
  }

  return __swift_getEnumTagSinglePayload(a1 + v11, a2, v10);
}

void *sub_26A0C600C(void *result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v8 = sub_26A424794();
    v9 = OUTLINED_FUNCTION_179(v8);
    if (*(v10 + 84) == a3)
    {
      v11 = v9;
      v12 = a4[7];
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&off_28036C7C0, &off_26A427400);
      v14 = OUTLINED_FUNCTION_179(v13);
      if (*(v15 + 84) == a3)
      {
        v11 = v14;
        v12 = a4[8];
      }

      else
      {
        v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
        v12 = a4[9];
      }
    }

    return __swift_storeEnumTagSinglePayload(v5 + v12, a2, a2, v11);
  }

  return result;
}

uint64_t sub_26A0C61F8(uint64_t a1, uint64_t a2, int *a3)
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
    v8 = sub_26A424794();
    v9 = OUTLINED_FUNCTION_179(v8);
    if (*(v10 + 84) == a2)
    {
      v11 = v9;
      v12 = a3[5];
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
      v14 = OUTLINED_FUNCTION_179(v13);
      if (*(v15 + 84) == a2)
      {
        v11 = v14;
        v12 = a3[6];
      }

      else
      {
        v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&off_28036C7C0, &off_26A427400);
        v12 = a3[7];
      }
    }

    return __swift_getEnumTagSinglePayload(a1 + v12, a2, v11);
  }
}

uint64_t sub_26A0C6318(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = sub_26A424794();
    v9 = OUTLINED_FUNCTION_179(v8);
    if (*(v10 + 84) == a3)
    {
      v11 = v9;
      v12 = a4[5];
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
      v14 = OUTLINED_FUNCTION_179(v13);
      if (*(v15 + 84) == a3)
      {
        v11 = v14;
        v12 = a4[6];
      }

      else
      {
        v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&off_28036C7C0, &off_26A427400);
        v12 = a4[7];
      }
    }

    return __swift_storeEnumTagSinglePayload(v5 + v12, a2, a2, v11);
  }

  return result;
}

uint64_t sub_26A0C6438()
{
  v2 = OUTLINED_FUNCTION_19_15();

  return __swift_getEnumTagSinglePayload(v1, v0, v2);
}

uint64_t sub_26A0C6470()
{
  v2 = OUTLINED_FUNCTION_19_15();

  return __swift_storeEnumTagSinglePayload(v1, v0, v0, v2);
}

uint64_t sub_26A0C64AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_26A284BB8(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_26A0C6554()
{
  v1 = OUTLINED_FUNCTION_53();
  type metadata accessor for RFImage.Source(v1);
  v2 = OUTLINED_FUNCTION_84_5();

  return __swift_getEnumTagSinglePayload(v2, v0, v3);
}

uint64_t sub_26A0C6590()
{
  v0 = OUTLINED_FUNCTION_53();
  type metadata accessor for RFImage.Source(v0);
  v1 = OUTLINED_FUNCTION_77_0();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

uint64_t sub_26A0C65EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_53();
  if (*(*(sub_26A424614() - 8) + 84) == v3)
  {
    v6 = OUTLINED_FUNCTION_84_5();
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036D500, &qword_26A435570);
    v6 = v4 + *(a3 + 20);
  }

  return __swift_getEnumTagSinglePayload(v6, v3, v7);
}

uint64_t sub_26A0C6688(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  OUTLINED_FUNCTION_53();
  v8 = sub_26A424614();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = v5;
  }

  else
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036D500, &qword_26A435570);
    v10 = v5 + *(a4 + 20);
  }

  return __swift_storeEnumTagSinglePayload(v10, v4, v4, v9);
}

uint64_t sub_26A0C6730()
{
  v1 = OUTLINED_FUNCTION_53();
  type metadata accessor for RFImage.Source(v1);
  v2 = OUTLINED_FUNCTION_84_5();

  return __swift_getEnumTagSinglePayload(v2, v0, v3);
}

uint64_t sub_26A0C676C()
{
  v0 = OUTLINED_FUNCTION_53();
  type metadata accessor for RFImage.Source(v0);
  v1 = OUTLINED_FUNCTION_77_0();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

uint64_t sub_26A0C68D8()
{
  OUTLINED_FUNCTION_51_11();
  v1 = OUTLINED_FUNCTION_84_5();

  return __swift_getEnumTagSinglePayload(v1, v0, v2);
}

uint64_t sub_26A0C690C()
{
  v2 = OUTLINED_FUNCTION_51_11();

  return __swift_storeEnumTagSinglePayload(v1, v0, v0, v2);
}

void *sub_26A0C697C@<X0>(void *a1@<X8>)
{
  result = ColorElement.idioms.getter();
  *a1 = result;
  return result;
}

uint64_t sub_26A0C69A8(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_16_11();
  v4 = type metadata accessor for _ProtoColorElement();

  return __swift_getEnumTagSinglePayload(v2, a2, v4);
}

uint64_t sub_26A0C69EC(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_16_11();
  v4 = type metadata accessor for _ProtoColorElement();

  return __swift_storeEnumTagSinglePayload(v2, a2, a2, v4);
}

uint64_t sub_26A0C6A34@<X0>(uint64_t *a1@<X8>)
{
  result = StandardPlayerButton.componentName.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_26A0C6A60@<X0>(uint64_t *a1@<X8>)
{
  result = StandardPlayerButton.linkIdentifier.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_26A0C6A8C(uint64_t a1, uint64_t a2)
{
  v4 = OUTLINED_FUNCTION_16_11();
  v5 = type metadata accessor for _ProtoStandardPlayerButton(v4);

  return __swift_getEnumTagSinglePayload(v2, a2, v5);
}

uint64_t sub_26A0C6AD0(uint64_t a1, uint64_t a2)
{
  v4 = OUTLINED_FUNCTION_16_11();
  v5 = type metadata accessor for _ProtoStandardPlayerButton(v4);

  return __swift_storeEnumTagSinglePayload(v2, a2, a2, v5);
}

uint64_t sub_26A0C6B18@<X0>(uint64_t *a1@<X8>)
{
  result = BinaryButton.componentName.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_26A0C6B44@<X0>(uint64_t *a1@<X8>)
{
  result = BinaryButton.linkIdentifier.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_26A0C6B70()
{
  v2 = OUTLINED_FUNCTION_21_17();

  return __swift_getEnumTagSinglePayload(v1, v0, v2);
}

uint64_t sub_26A0C6BA8()
{
  v2 = OUTLINED_FUNCTION_21_17();

  return __swift_storeEnumTagSinglePayload(v1, v0, v0, v2);
}

uint64_t sub_26A0C6C10@<X0>(uint64_t *a1@<X8>)
{
  result = HorizontalListStandard.componentName.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_26A0C6C3C@<X0>(uint64_t *a1@<X8>)
{
  result = HorizontalListStandard.Item.componentName.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_26A0C6C68()
{
  v2 = OUTLINED_FUNCTION_39_3();
  v3 = type metadata accessor for _ProtoHorizontalList_Standard(v2);

  return __swift_getEnumTagSinglePayload(v1, v0, v3);
}

uint64_t sub_26A0C6CA4()
{
  v0 = OUTLINED_FUNCTION_39_3();
  type metadata accessor for _ProtoHorizontalList_Standard(v0);
  v1 = OUTLINED_FUNCTION_77_0();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

uint64_t sub_26A0C6CD8()
{
  v2 = OUTLINED_FUNCTION_39_3();
  v3 = type metadata accessor for _ProtoHorizontalList_Standard.Item(v2);

  return __swift_getEnumTagSinglePayload(v1, v0, v3);
}

uint64_t sub_26A0C6D14()
{
  v0 = OUTLINED_FUNCTION_39_3();
  type metadata accessor for _ProtoHorizontalList_Standard.Item(v0);
  v1 = OUTLINED_FUNCTION_77_0();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

uint64_t sub_26A0C6D48@<X0>(uint64_t *a1@<X8>)
{
  result = SimpleItemRichSearchResult.componentName.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_26A0C6D74@<X0>(uint64_t *a1@<X8>)
{
  result = SimpleItemRichSearchResult.linkIdentifier.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_26A0C6DA0()
{
  v2 = OUTLINED_FUNCTION_59_11();

  return __swift_getEnumTagSinglePayload(v1, v0, v2);
}

uint64_t sub_26A0C6DD8()
{
  v2 = OUTLINED_FUNCTION_59_11();

  return __swift_storeEnumTagSinglePayload(v1, v0, v0, v2);
}

uint64_t sub_26A0C6E60@<X0>(uint64_t *a1@<X8>)
{
  result = _ProtoButton.ButtonRole.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_26A0C7080@<X0>(uint64_t *a1@<X8>)
{
  result = _ProtoButton.componentName.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_26A0C70B0@<X0>(uint64_t *a1@<X8>)
{
  result = _ProtoButton.linkIdentifier.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_26A0C7400(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_110();
  v6 = sub_26A424794();
  v7 = OUTLINED_FUNCTION_179(v6);
  if (*(v8 + 84) != a2)
  {
    return OUTLINED_FUNCTION_44_1(*(v3 + *(a3 + 20)));
  }

  return __swift_getEnumTagSinglePayload(v3, a2, v7);
}

uint64_t sub_26A0C7498()
{
  v4 = OUTLINED_FUNCTION_77_5();
  result = OUTLINED_FUNCTION_179(v4);
  if (*(v6 + 84) == v3)
  {
    OUTLINED_FUNCTION_147_2();

    return __swift_storeEnumTagSinglePayload(v7, v8, v9, v10);
  }

  else
  {
    *(v1 + *(v2 + 20)) = (v0 - 1);
  }

  return result;
}

uint64_t sub_26A0C7570(uint64_t a1, uint64_t a2)
{
  v4 = sub_26A424794();
  v5 = OUTLINED_FUNCTION_179(v4);
  if (*(v6 + 84) == a2)
  {
    v7 = v5;
    v8 = a1;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036EC48, &unk_26A4385C0);
    v8 = OUTLINED_FUNCTION_16_9();
  }

  return __swift_getEnumTagSinglePayload(v8, a2, v7);
}

uint64_t sub_26A0C7610()
{
  v1 = OUTLINED_FUNCTION_77_5();
  OUTLINED_FUNCTION_179(v1);
  if (*(v2 + 84) != v0)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036EC48, &unk_26A4385C0);
    OUTLINED_FUNCTION_16_9();
  }

  OUTLINED_FUNCTION_147_2();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

uint64_t sub_26A0C769C(uint64_t a1, uint64_t a2)
{
  if (a2 == 0x7FFFFFFF)
  {
    return OUTLINED_FUNCTION_44_1(*(a1 + 8));
  }

  sub_26A424794();
  v4 = OUTLINED_FUNCTION_16_9();

  return __swift_getEnumTagSinglePayload(v4, a2, v5);
}

void sub_26A0C7714()
{
  OUTLINED_FUNCTION_100_2();
  if (v2)
  {
    *(v1 + 8) = (v0 - 1);
  }

  else
  {
    sub_26A424794();
    OUTLINED_FUNCTION_16_9();
    OUTLINED_FUNCTION_147_2();

    __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
  }
}

uint64_t sub_26A0C7780@<X0>(uint64_t *a1@<X8>)
{
  result = SimpleItemReverseRich.componentName.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_26A0C77AC@<X0>(uint64_t *a1@<X8>)
{
  result = SimpleItemReverseRich.linkIdentifier.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_26A0C77D8()
{
  v2 = OUTLINED_FUNCTION_49_15();

  return __swift_getEnumTagSinglePayload(v1, v0, v2);
}

uint64_t sub_26A0C7810()
{
  v2 = OUTLINED_FUNCTION_49_15();

  return __swift_storeEnumTagSinglePayload(v1, v0, v0, v2);
}

uint64_t sub_26A0C7A5C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C838, &qword_26A439300);
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = a1;
  }

  else
  {
    v7 = sub_26A424794();
    v8 = a1 + *(a3 + 20);
  }

  return __swift_getEnumTagSinglePayload(v8, a2, v7);
}

uint64_t sub_26A0C7B04(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C838, &qword_26A439300);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = a1;
  }

  else
  {
    v9 = sub_26A424794();
    v10 = a1 + *(a4 + 20);
  }

  return __swift_storeEnumTagSinglePayload(v10, a2, a2, v9);
}

uint64_t sub_26A0C7BB4@<X0>(uint64_t *a1@<X8>)
{
  result = LongItemText.componentName.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_26A0C7BE0()
{
  v2 = OUTLINED_FUNCTION_15_21();

  return __swift_getEnumTagSinglePayload(v1, v0, v2);
}

uint64_t sub_26A0C7C18()
{
  v2 = OUTLINED_FUNCTION_15_21();

  return __swift_storeEnumTagSinglePayload(v1, v0, v0, v2);
}

uint64_t sub_26A0C7C54()
{
  OUTLINED_FUNCTION_34_12();
  result = KeyValueStandard.pairs.getter();
  *v0 = result;
  return result;
}

uint64_t sub_26A0C7C7C()
{
  OUTLINED_FUNCTION_34_12();
  result = KeyValueStandard.componentName.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_26A0C7CA4()
{
  OUTLINED_FUNCTION_34_12();
  result = TextProperty.allTextElements.getter();
  *v0 = result;
  return result;
}

uint64_t sub_26A0C7CCC()
{
  v2 = OUTLINED_FUNCTION_39_3();
  v3 = type metadata accessor for _ProtoKeyValue_Standard(v2);

  return __swift_getEnumTagSinglePayload(v1, v0, v3);
}

uint64_t sub_26A0C7D08()
{
  v0 = OUTLINED_FUNCTION_39_3();
  type metadata accessor for _ProtoKeyValue_Standard(v0);
  v1 = OUTLINED_FUNCTION_77_0();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

uint64_t sub_26A0C7D3C()
{
  v2 = OUTLINED_FUNCTION_39_3();
  v3 = type metadata accessor for _ProtoKeyValue_Standard.Pair(v2);

  return __swift_getEnumTagSinglePayload(v1, v0, v3);
}

uint64_t sub_26A0C7D78()
{
  v0 = OUTLINED_FUNCTION_39_3();
  type metadata accessor for _ProtoKeyValue_Standard.Pair(v0);
  v1 = OUTLINED_FUNCTION_77_0();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

uint64_t sub_26A0C7DB4()
{
  v2 = OUTLINED_FUNCTION_39_3();
  v3 = type metadata accessor for _ProtoIntentsUI_Standard(v2);

  return __swift_getEnumTagSinglePayload(v1, v0, v3);
}

uint64_t sub_26A0C7DF0()
{
  v0 = OUTLINED_FUNCTION_39_3();
  type metadata accessor for _ProtoIntentsUI_Standard(v0);
  v1 = OUTLINED_FUNCTION_77_0();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

uint64_t sub_26A0C7E24()
{
  v2 = OUTLINED_FUNCTION_39_3();
  v3 = type metadata accessor for _ProtoIntentsUI_Standard.Slot(v2);

  return __swift_getEnumTagSinglePayload(v1, v0, v3);
}

uint64_t sub_26A0C7E60()
{
  v0 = OUTLINED_FUNCTION_39_3();
  type metadata accessor for _ProtoIntentsUI_Standard.Slot(v0);
  v1 = OUTLINED_FUNCTION_77_0();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

uint64_t sub_26A0C7ECC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 24);
  v6 = sub_26A424794();

  return __swift_getEnumTagSinglePayload(a1 + v5, a2, v6);
}

uint64_t sub_26A0C7F20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 24);
  v7 = sub_26A424794();

  return __swift_storeEnumTagSinglePayload(a1 + v6, a2, a2, v7);
}

uint64_t sub_26A0C7F78@<X0>(uint64_t *a1@<X8>)
{
  result = SummaryItemStandard.componentName.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_26A0C7FA4@<X0>(uint64_t *a1@<X8>)
{
  result = SummaryItemStandard.linkIdentifier.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_26A0C7FD0()
{
  v2 = OUTLINED_FUNCTION_53_12();

  return __swift_getEnumTagSinglePayload(v1, v0, v2);
}

uint64_t sub_26A0C8008()
{
  v2 = OUTLINED_FUNCTION_53_12();

  return __swift_storeEnumTagSinglePayload(v1, v0, v0, v2);
}

uint64_t sub_26A0C8050()
{
  v2 = OUTLINED_FUNCTION_15_24();

  return __swift_getEnumTagSinglePayload(v1, v0, v2);
}

uint64_t sub_26A0C8088()
{
  v2 = OUTLINED_FUNCTION_15_24();

  return __swift_storeEnumTagSinglePayload(v1, v0, v0, v2);
}

uint64_t sub_26A0C8444()
{
  OUTLINED_FUNCTION_1_9();
  result = _ProtoFactItem_Standard.componentName.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_26A0C846C()
{
  OUTLINED_FUNCTION_1_9();
  result = _ProtoFactItem_Standard.linkIdentifier.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_26A0C876C()
{
  OUTLINED_FUNCTION_1_9();
  result = _ProtoFactItem_ShortNumber.componentName.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_26A0C87FC()
{
  OUTLINED_FUNCTION_1_9();
  result = _ProtoFactItem_ShortNumber.linkIdentifier.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_26A0C8A94()
{
  OUTLINED_FUNCTION_1_9();
  result = _ProtoFactItem_HeroNumber.componentName.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_26A0C8B24()
{
  OUTLINED_FUNCTION_1_9();
  result = _ProtoFactItem_HeroNumber.linkIdentifier.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_26A0C8EF4()
{
  OUTLINED_FUNCTION_1_9();
  result = _ProtoFactItem_Button.componentName.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_26A0C8F84()
{
  OUTLINED_FUNCTION_1_9();
  result = _ProtoFactItem_Button.linkIdentifier.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_26A0C90FC()
{
  v2 = OUTLINED_FUNCTION_6_23();

  return __swift_getEnumTagSinglePayload(v1, v0, v2);
}

uint64_t sub_26A0C9134()
{
  v2 = OUTLINED_FUNCTION_6_23();

  return __swift_storeEnumTagSinglePayload(v1, v0, v0, v2);
}

uint64_t sub_26A0C9170@<X0>(uint64_t *a1@<X8>)
{
  result = SystemTextClarificationTitle.componentName.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_26A0C919C()
{
  v2 = OUTLINED_FUNCTION_15_26();

  return __swift_getEnumTagSinglePayload(v1, v0, v2);
}

uint64_t sub_26A0C91D4()
{
  v2 = OUTLINED_FUNCTION_15_26();

  return __swift_storeEnumTagSinglePayload(v1, v0, v0, v2);
}

uint64_t sub_26A0C9210@<X0>(uint64_t *a1@<X8>)
{
  result = VisualizationMap.componentName.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_26A0C923C@<X0>(uint64_t *a1@<X8>)
{
  result = VisualizationMap.linkIdentifier.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_26A0C9268()
{
  v2 = OUTLINED_FUNCTION_29_15();

  return __swift_getEnumTagSinglePayload(v1, v0, v2);
}

uint64_t sub_26A0C92A0()
{
  v2 = OUTLINED_FUNCTION_29_15();

  return __swift_storeEnumTagSinglePayload(v1, v0, v0, v2);
}

uint64_t sub_26A0C92E0()
{
  v2 = OUTLINED_FUNCTION_21_21();

  return __swift_getEnumTagSinglePayload(v1, v0, v2);
}

uint64_t sub_26A0C9318()
{
  v2 = OUTLINED_FUNCTION_21_21();

  return __swift_storeEnumTagSinglePayload(v1, v0, v0, v2);
}

uint64_t sub_26A0C9380@<X0>(uint64_t *a1@<X8>)
{
  result = SimpleItemPlayer.componentName.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_26A0C93AC@<X0>(uint64_t *a1@<X8>)
{
  result = SimpleItemPlayer.linkIdentifier.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_26A0C93D8()
{
  v2 = OUTLINED_FUNCTION_55_13();

  return __swift_getEnumTagSinglePayload(v1, v0, v2);
}

uint64_t sub_26A0C9410()
{
  v2 = OUTLINED_FUNCTION_55_13();

  return __swift_storeEnumTagSinglePayload(v1, v0, v0, v2);
}

uint64_t sub_26A0C9690()
{
  OUTLINED_FUNCTION_1_9();
  result = _ProtoSash_Standard.componentName.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_26A0C96B8()
{
  OUTLINED_FUNCTION_1_9();
  result = _ProtoSash_Standard.showOnWatch.getter();
  *v0 = result & 1;
  return result;
}

uint64_t sub_26A0C9708()
{
  OUTLINED_FUNCTION_1_9();
  result = _ProtoSash_Standard.SashTitle.applicationBundleIdentifier.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_26A0C9730()
{
  OUTLINED_FUNCTION_1_9();
  result = _ProtoSash_Standard.SashTitle.text.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_26A0C9758(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_110();
  v6 = sub_26A424794();
  if (*(*(v6 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(v3, a2, v6);
  }

  else
  {
    v8 = *(v3 + *(a3 + 20));
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    return (v8 + 1);
  }
}

uint64_t sub_26A0C9800(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_26A424794();
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_26A0C98A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 253)
  {
    v4 = *(a1 + 16);
    if (v4 <= 1)
    {
      return 0;
    }

    else
    {
      return v4 ^ 0xFF;
    }
  }

  else
  {
    v8 = sub_26A424794();
    v9 = a1 + *(a3 + 20);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

uint64_t sub_26A0C9928(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 253)
  {
    *(result + 16) = ~a2;
  }

  else
  {
    v7 = sub_26A424794();
    v8 = v5 + *(a4 + 20);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_26A0C99A4@<X0>(uint64_t *a1@<X8>)
{
  result = VisualizationChart.componentName.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_26A0C99D0@<X0>(uint64_t *a1@<X8>)
{
  result = VisualizationChart.linkIdentifier.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_26A0C99FC()
{
  v2 = OUTLINED_FUNCTION_29_16();

  return __swift_getEnumTagSinglePayload(v1, v0, v2);
}

uint64_t sub_26A0C9A34()
{
  v2 = OUTLINED_FUNCTION_29_16();

  return __swift_storeEnumTagSinglePayload(v1, v0, v0, v2);
}

uint64_t sub_26A0C9B34@<X0>(uint64_t *a1@<X8>)
{
  result = SummaryItemPairV2.componentName.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_26A0C9B60@<X0>(uint64_t *a1@<X8>)
{
  result = SummaryItemPairV2.linkIdentifier.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_26A0C9B8C()
{
  v2 = OUTLINED_FUNCTION_41_13();

  return __swift_getEnumTagSinglePayload(v1, v0, v2);
}

uint64_t sub_26A0C9BC4()
{
  v2 = OUTLINED_FUNCTION_41_13();

  return __swift_storeEnumTagSinglePayload(v1, v0, v0, v2);
}

uint64_t sub_26A0C9C00@<X0>(uint64_t *a1@<X8>)
{
  result = Switch.identifier.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_26A0C9C2C()
{
  v2 = OUTLINED_FUNCTION_20_23();

  return __swift_getEnumTagSinglePayload(v1, v0, v2);
}

uint64_t sub_26A0C9C64()
{
  v2 = OUTLINED_FUNCTION_20_23();

  return __swift_storeEnumTagSinglePayload(v1, v0, v0, v2);
}

uint64_t sub_26A0C9CA8@<X0>(uint64_t *a1@<X8>)
{
  result = HeroHeader.componentName.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_26A0C9CD4()
{
  v2 = OUTLINED_FUNCTION_32_15();

  return __swift_getEnumTagSinglePayload(v1, v0, v2);
}

uint64_t sub_26A0C9D0C()
{
  v2 = OUTLINED_FUNCTION_32_15();

  return __swift_storeEnumTagSinglePayload(v1, v0, v0, v2);
}

uint64_t sub_26A0CA0CC@<X0>(uint64_t *a1@<X8>)
{
  result = _ProtoReference_Rich.componentName.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_26A0CA3D4@<X0>(uint64_t *a1@<X8>)
{
  result = _ProtoReference_Footnote.componentName.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_26A0CA45C()
{
  OUTLINED_FUNCTION_117_3();
  if (v1 == v3)
  {
    return OUTLINED_FUNCTION_44_1(*(v0 + 8));
  }

  v5 = v2;
  v6 = v1;
  v7 = sub_26A424794();
  OUTLINED_FUNCTION_179(v7);
  if (*(v8 + 84) == v6)
  {
    v9 = v5[6];
  }

  else
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
    OUTLINED_FUNCTION_179(v10);
    if (*(v11 + 84) == v6)
    {
      v9 = v5[7];
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&off_28036C7C0, &off_26A427400);
      v9 = v5[8];
    }
  }

  v12 = OUTLINED_FUNCTION_42_2(v9);

  return __swift_getEnumTagSinglePayload(v12, v13, v14);
}

void sub_26A0CA568(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_117_3();
  if (v4 == v6)
  {
    *(v2 + 8) = (a2 - 1);
  }

  else
  {
    v7 = v5;
    v8 = v4;
    v9 = sub_26A424794();
    OUTLINED_FUNCTION_179(v9);
    if (*(v10 + 84) == v8)
    {
      v11 = v7[6];
    }

    else
    {
      v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
      OUTLINED_FUNCTION_179(v12);
      if (*(v13 + 84) == v8)
      {
        v11 = v7[7];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&off_28036C7C0, &off_26A427400);
        v11 = v7[8];
      }
    }

    v14 = OUTLINED_FUNCTION_42_2(v11);

    __swift_storeEnumTagSinglePayload(v14, v15, a2, v16);
  }
}

uint64_t sub_26A0CA684@<X0>(uint64_t *a1@<X8>)
{
  result = PrimaryHeaderMarquee.componentName.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_26A0CA6B0()
{
  v2 = OUTLINED_FUNCTION_30_13();

  return __swift_getEnumTagSinglePayload(v1, v0, v2);
}

uint64_t sub_26A0CA6E8()
{
  v2 = OUTLINED_FUNCTION_30_13();

  return __swift_storeEnumTagSinglePayload(v1, v0, v0, v2);
}

uint64_t sub_26A0CA724(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_26A424794();
    v9 = a1 + *(a3 + 24);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

void *sub_26A0CA7AC(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_26A424794();
    v8 = v5 + *(a4 + 24);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_26A0CAA08(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_26A424794();
    if (*(*(v8 - 8) + 84) == a2)
    {
      v9 = v8;
      v10 = *(a3 + 20);
    }

    else
    {
      v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CCB0, &qword_26A426740);
      v10 = *(a3 + 24);
    }

    return __swift_getEnumTagSinglePayload(a1 + v10, a2, v9);
  }
}

void *sub_26A0CAAE0(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v8 = sub_26A424794();
    if (*(*(v8 - 8) + 84) == a3)
    {
      v9 = v8;
      v10 = *(a4 + 20);
    }

    else
    {
      v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CCB0, &qword_26A426740);
      v10 = *(a4 + 24);
    }

    return __swift_storeEnumTagSinglePayload(v5 + v10, a2, a2, v9);
  }

  return result;
}

uint64_t sub_26A0CADA4()
{
  OUTLINED_FUNCTION_1_9();
  result = _ProtoVisualization_Chart.componentName.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_26A0CADCC()
{
  OUTLINED_FUNCTION_1_9();
  result = _ProtoVisualization_Chart.linkIdentifier.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_26A0CAF94()
{
  OUTLINED_FUNCTION_1_9();
  result = _ProtoVisualization_Image.componentName.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_26A0CAFBC()
{
  OUTLINED_FUNCTION_1_9();
  result = _ProtoVisualization_Image.linkIdentifier.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_26A0CB184()
{
  OUTLINED_FUNCTION_1_9();
  result = _ProtoVisualization_Map.componentName.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_26A0CB1AC()
{
  OUTLINED_FUNCTION_1_9();
  result = _ProtoVisualization_Map.linkIdentifier.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_26A0CB1F0()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  OUTLINED_FUNCTION_9_36();

  return MEMORY[0x2821FE8E8]();
}

uint64_t sub_26A0CB25C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(a3 + 24);
  v7 = sub_26A425184();

  return __swift_getEnumTagSinglePayload(a1, a2, v7);
}

uint64_t sub_26A0CB2A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v7 = *(a4 + 24);
  v8 = sub_26A425184();

  return __swift_storeEnumTagSinglePayload(a1, a2, a2, v8);
}

uint64_t sub_26A0CB304@<X0>(uint64_t *a1@<X8>)
{
  result = SectionHeaderRich.componentName.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_26A0CB330()
{
  v2 = OUTLINED_FUNCTION_23_27();

  return __swift_getEnumTagSinglePayload(v1, v0, v2);
}

uint64_t sub_26A0CB368()
{
  v2 = OUTLINED_FUNCTION_23_27();

  return __swift_storeEnumTagSinglePayload(v1, v0, v0, v2);
}

uint64_t sub_26A0CB404()
{
  v2 = OUTLINED_FUNCTION_22_17();

  return __swift_getEnumTagSinglePayload(v1, v0, v2);
}

uint64_t sub_26A0CB43C()
{
  v2 = OUTLINED_FUNCTION_22_17();

  return __swift_storeEnumTagSinglePayload(v1, v0, v0, v2);
}

uint64_t sub_26A0CB478@<X0>(uint64_t *a1@<X8>)
{
  result = SashStandard.componentName.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_26A0CB4A4()
{
  v2 = OUTLINED_FUNCTION_41_14();

  return __swift_getEnumTagSinglePayload(v1, v0, v2);
}

uint64_t sub_26A0CB4DC()
{
  v2 = OUTLINED_FUNCTION_41_14();

  return __swift_storeEnumTagSinglePayload(v1, v0, v0, v2);
}

uint64_t sub_26A0CB564@<X0>(uint64_t *a1@<X8>)
{
  result = ActionElement.allTextElements.getter();
  *a1 = result;
  return result;
}

void *sub_26A0CB590@<X0>(void *a1@<X8>)
{
  result = ActionElement.idioms.getter();
  *a1 = result;
  return result;
}

uint64_t sub_26A0CB608(uint64_t a1, uint64_t a2)
{
  v4 = OUTLINED_FUNCTION_16_11();
  v5 = type metadata accessor for _ProtoActionElement(v4);

  return __swift_getEnumTagSinglePayload(v2, a2, v5);
}

uint64_t sub_26A0CB64C(uint64_t a1, uint64_t a2)
{
  v4 = OUTLINED_FUNCTION_16_11();
  v5 = type metadata accessor for _ProtoActionElement(v4);

  return __swift_storeEnumTagSinglePayload(v2, a2, a2, v5);
}

uint64_t sub_26A0CB6BC@<X0>(uint64_t *a1@<X8>)
{
  result = SimpleItemVisual.thumbnails.getter();
  *a1 = result;
  return result;
}

uint64_t sub_26A0CB6E8@<X0>(uint64_t *a1@<X8>)
{
  result = SimpleItemVisual.componentName.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_26A0CB714@<X0>(uint64_t *a1@<X8>)
{
  result = SimpleItemVisual.linkIdentifier.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_26A0CB740()
{
  v2 = OUTLINED_FUNCTION_23_30();

  return __swift_getEnumTagSinglePayload(v1, v0, v2);
}

uint64_t sub_26A0CB778()
{
  v2 = OUTLINED_FUNCTION_23_30();

  return __swift_storeEnumTagSinglePayload(v1, v0, v0, v2);
}

void *sub_26A0CB834@<X0>(void *a1@<X8>)
{
  result = TextElement.idioms.getter();
  *a1 = result;
  return result;
}

uint64_t sub_26A0CB860()
{
  v2 = OUTLINED_FUNCTION_52_17();

  return __swift_getEnumTagSinglePayload(v1, v0, v2);
}

uint64_t sub_26A0CB898()
{
  v2 = OUTLINED_FUNCTION_52_17();

  return __swift_storeEnumTagSinglePayload(v1, v0, v0, v2);
}

uint64_t sub_26A0CB900@<X0>(uint64_t *a1@<X8>)
{
  result = _ProtoTextElement.Font.NamedFont.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_26A0CB970@<X0>(uint64_t *a1@<X8>)
{
  result = _ProtoTextElement.plain.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_26A0CB9A0@<X0>(uint64_t *a1@<X8>)
{
  result = _ProtoTextElement.attributed.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_26A0CBC88(uint64_t a1, uint64_t a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_26A424794();
    v9 = OUTLINED_FUNCTION_179(v8);
    if (*(v10 + 84) == a2)
    {
      v11 = v9;
      v12 = a3[7];
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803729B0, &qword_26A43E300);
      v14 = OUTLINED_FUNCTION_179(v13);
      if (*(v15 + 84) == a2)
      {
        v11 = v14;
        v12 = a3[8];
      }

      else
      {
        v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803729A8, &qword_26A43DE90);
        v17 = OUTLINED_FUNCTION_179(v16);
        if (*(v18 + 84) == a2)
        {
          v11 = v17;
          v12 = a3[9];
        }

        else
        {
          v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CCD8, &unk_26A432950);
          v20 = OUTLINED_FUNCTION_179(v19);
          if (*(v21 + 84) == a2)
          {
            v11 = v20;
            v12 = a3[10];
          }

          else
          {
            v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036D198, &qword_26A432940);
            v12 = a3[11];
          }
        }
      }
    }

    return __swift_getEnumTagSinglePayload(a1 + v12, a2, v11);
  }
}

void sub_26A0CBE40()
{
  OUTLINED_FUNCTION_6_13();
  if (v2 == 0x7FFFFFFF)
  {
    *(v1 + 24) = (v0 - 1);
  }

  else
  {
    v4 = v3;
    v5 = v2;
    v6 = sub_26A424794();
    v7 = OUTLINED_FUNCTION_179(v6);
    if (*(v8 + 84) == v5)
    {
      v9 = v7;
      v10 = v4[7];
    }

    else
    {
      v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803729B0, &qword_26A43E300);
      v12 = OUTLINED_FUNCTION_179(v11);
      if (*(v13 + 84) == v5)
      {
        v9 = v12;
        v10 = v4[8];
      }

      else
      {
        v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803729A8, &qword_26A43DE90);
        v15 = OUTLINED_FUNCTION_179(v14);
        if (*(v16 + 84) == v5)
        {
          v9 = v15;
          v10 = v4[9];
        }

        else
        {
          v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CCD8, &unk_26A432950);
          v18 = OUTLINED_FUNCTION_179(v17);
          if (*(v19 + 84) == v5)
          {
            v9 = v18;
            v10 = v4[10];
          }

          else
          {
            v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036D198, &qword_26A432940);
            v10 = v4[11];
          }
        }
      }
    }

    __swift_storeEnumTagSinglePayload(v1 + v10, v0, v0, v9);
  }
}

uint64_t sub_26A0CBFEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803729B8, &unk_26A43DED0);
  v7 = OUTLINED_FUNCTION_179(v6);
  if (*(v8 + 84) == a2)
  {
    v9 = v7;
    v10 = a1;
  }

  else
  {
    v9 = sub_26A424794();
    v10 = a1 + *(a3 + 20);
  }

  return __swift_getEnumTagSinglePayload(v10, a2, v9);
}

uint64_t sub_26A0CC090(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803729B8, &unk_26A43DED0);
  v9 = OUTLINED_FUNCTION_179(v8);
  if (*(v10 + 84) == a3)
  {
    v11 = v9;
    v12 = a1;
  }

  else
  {
    v11 = sub_26A424794();
    v12 = a1 + *(a4 + 20);
  }

  return __swift_storeEnumTagSinglePayload(v12, a2, a2, v11);
}

uint64_t sub_26A0CC13C()
{
  OUTLINED_FUNCTION_6_13();
  v1 = *(v0 + 28);
  sub_26A424794();
  v2 = OUTLINED_FUNCTION_219_0();

  return __swift_getEnumTagSinglePayload(v2, v3, v4);
}

uint64_t sub_26A0CC184()
{
  OUTLINED_FUNCTION_6_13();
  v2 = *(v1 + 28);
  sub_26A424794();
  v3 = OUTLINED_FUNCTION_219_0();

  return __swift_storeEnumTagSinglePayload(v3, v4, v0, v5);
}

uint64_t sub_26A0CC1D0()
{
  OUTLINED_FUNCTION_6_13();
  v1 = *(v0 + 20);
  sub_26A424794();
  v2 = OUTLINED_FUNCTION_219_0();

  return __swift_getEnumTagSinglePayload(v2, v3, v4);
}

uint64_t sub_26A0CC218()
{
  OUTLINED_FUNCTION_6_13();
  v2 = *(v1 + 20);
  sub_26A424794();
  v3 = OUTLINED_FUNCTION_219_0();

  return __swift_storeEnumTagSinglePayload(v3, v4, v0, v5);
}

uint64_t sub_26A0CC264()
{
  OUTLINED_FUNCTION_1_9();
  result = TextInput.identifier.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_26A0CC288()
{
  OUTLINED_FUNCTION_1_9();
  result = TextInput.initialValue.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_26A0CC2AC()
{
  OUTLINED_FUNCTION_1_9();
  result = TextInput.placeholderText.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_26A0CC2D0@<X0>(uint64_t *a1@<X8>)
{
  result = TextInput.invocationPayload.getter();
  *a1 = result;
  return result;
}

uint64_t sub_26A0CC2FC()
{
  OUTLINED_FUNCTION_1_9();
  result = TextInput.componentName.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_26A0CC320()
{
  v2 = OUTLINED_FUNCTION_16_23();

  return __swift_getEnumTagSinglePayload(v1, v0, v2);
}

uint64_t sub_26A0CC358()
{
  v2 = OUTLINED_FUNCTION_16_23();

  return __swift_storeEnumTagSinglePayload(v1, v0, v0, v2);
}

uint64_t sub_26A0CC3BC(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_26A424794();
    if (*(*(v8 - 8) + 84) == a2)
    {
      v9 = v8;
      v10 = *(a3 + 20);
    }

    else
    {
      v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CCD8, &unk_26A432950);
      v10 = *(a3 + 24);
    }

    return __swift_getEnumTagSinglePayload(a1 + v10, a2, v9);
  }
}

void *sub_26A0CC494(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v8 = sub_26A424794();
    if (*(*(v8 - 8) + 84) == a3)
    {
      v9 = v8;
      v10 = *(a4 + 20);
    }

    else
    {
      v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CCD8, &unk_26A432950);
      v10 = *(a4 + 24);
    }

    return __swift_storeEnumTagSinglePayload(v5 + v10, a2, a2, v9);
  }

  return result;
}

uint64_t sub_26A0CC578@<X0>(uint64_t *a1@<X8>)
{
  result = TableHeader.componentName.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_26A0CC5A4()
{
  v2 = OUTLINED_FUNCTION_15_33();

  return __swift_getEnumTagSinglePayload(v1, v0, v2);
}

uint64_t sub_26A0CC5DC()
{
  v2 = OUTLINED_FUNCTION_15_33();

  return __swift_storeEnumTagSinglePayload(v1, v0, v0, v2);
}

uint64_t sub_26A0CC628(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 12)
  {
    v4 = *(a1 + 8) >> 60;
    if (((4 * v4) & 0xC) != 0)
    {
      return 16 - ((4 * v4) & 0xC | (v4 >> 2));
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = sub_26A424794();
    v9 = a1 + *(a3 + 20);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

void *sub_26A0CC6BC(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 12)
  {
    *result = 0;
    result[1] = (((-a2 >> 2) & 3) - 4 * a2) << 60;
  }

  else
  {
    v7 = sub_26A424794();
    v8 = v5 + *(a4 + 20);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_26A0CC744()
{
  OUTLINED_FUNCTION_1_9();
  result = Slider.identifier.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_26A0CC7B0@<X0>(uint64_t a1@<X8>)
{
  result = Slider.step.getter();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_26A0CC7E4@<X0>(uint64_t a1@<X8>)
{
  result = Slider.initialValue.getter();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_26A0CC818()
{
  v2 = OUTLINED_FUNCTION_14_26();

  return __swift_getEnumTagSinglePayload(v1, v0, v2);
}

uint64_t sub_26A0CC850()
{
  v2 = OUTLINED_FUNCTION_14_26();

  return __swift_storeEnumTagSinglePayload(v1, v0, v0, v2);
}

uint64_t sub_26A0CC88C@<X0>(uint64_t *a1@<X8>)
{
  result = VisualizationImage.componentName.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_26A0CC8B8@<X0>(uint64_t *a1@<X8>)
{
  result = VisualizationImage.linkIdentifier.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_26A0CC8E4()
{
  v2 = OUTLINED_FUNCTION_29_19();

  return __swift_getEnumTagSinglePayload(v1, v0, v2);
}

uint64_t sub_26A0CC91C()
{
  v2 = OUTLINED_FUNCTION_29_19();

  return __swift_storeEnumTagSinglePayload(v1, v0, v0, v2);
}

uint64_t sub_26A0CC958@<X0>(uint64_t *a1@<X8>)
{
  result = ReferenceStandard.componentName.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_26A0CC984()
{
  v2 = OUTLINED_FUNCTION_15_35();

  return __swift_getEnumTagSinglePayload(v1, v0, v2);
}

uint64_t sub_26A0CC9BC()
{
  v2 = OUTLINED_FUNCTION_15_35();

  return __swift_storeEnumTagSinglePayload(v1, v0, v0, v2);
}

uint64_t sub_26A0CD934@<X0>(uint64_t *a1@<X8>)
{
  result = _ProtoResponse.Component.groupID.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_26A0CE9CC@<X0>(uint64_t *a1@<X8>)
{
  result = _ProtoIntentsUI_Standard.Slot.parameterKeyPaths.getter();
  *a1 = result;
  return result;
}

uint64_t sub_26A0CEA74()
{
  OUTLINED_FUNCTION_41_3();
  if (v2)
  {
    return OUTLINED_FUNCTION_44_1(*(v0 + 8));
  }

  OUTLINED_FUNCTION_53_6();
  v4 = OUTLINED_FUNCTION_42_2(*(v1 + 40));

  return __swift_getEnumTagSinglePayload(v4, v5, v6);
}

void sub_26A0CEAD4()
{
  OUTLINED_FUNCTION_30_2();
  if (v3)
  {
    *(v1 + 8) = (v0 - 1);
  }

  else
  {
    v4 = v2;
    sub_26A424794();
    v5 = OUTLINED_FUNCTION_84_4(*(v4 + 40));

    __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
  }
}

uint64_t sub_26A0CEB3C()
{
  OUTLINED_FUNCTION_41_3();
  if (v2)
  {
    return OUTLINED_FUNCTION_44_1(*v0);
  }

  OUTLINED_FUNCTION_53_6();
  v4 = OUTLINED_FUNCTION_42_2(*(v1 + 32));

  return __swift_getEnumTagSinglePayload(v4, v5, v6);
}

void sub_26A0CEB9C()
{
  OUTLINED_FUNCTION_30_2();
  if (v3)
  {
    *v1 = (v0 - 1);
  }

  else
  {
    v4 = v2;
    sub_26A424794();
    v5 = OUTLINED_FUNCTION_84_4(*(v4 + 32));

    __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
  }
}

uint64_t sub_26A0CEC04()
{
  OUTLINED_FUNCTION_41_3();
  if (v2)
  {
    return OUTLINED_FUNCTION_44_1(*(v0 + 8));
  }

  OUTLINED_FUNCTION_53_6();
  v4 = OUTLINED_FUNCTION_42_2(*(v1 + 24));

  return __swift_getEnumTagSinglePayload(v4, v5, v6);
}

void sub_26A0CEC64()
{
  OUTLINED_FUNCTION_30_2();
  if (v3)
  {
    *(v1 + 8) = (v0 - 1);
  }

  else
  {
    v4 = v2;
    sub_26A424794();
    v5 = OUTLINED_FUNCTION_84_4(*(v4 + 24));

    __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
  }
}

uint64_t sub_26A0CECCC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C828, &unk_26A4276D0);
  v7 = OUTLINED_FUNCTION_179(v6);
  if (*(v8 + 84) == a2)
  {
    v9 = v7;
    v10 = a1;
  }

  else
  {
    v11 = sub_26A424794();
    v12 = OUTLINED_FUNCTION_179(v11);
    if (*(v13 + 84) == a2)
    {
      v9 = v12;
      v14 = *(a3 + 20);
    }

    else
    {
      v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C818, &unk_26A42D9A0);
      v14 = *(a3 + 24);
    }

    v10 = a1 + v14;
  }

  return __swift_getEnumTagSinglePayload(v10, a2, v9);
}

uint64_t sub_26A0CEDBC()
{
  OUTLINED_FUNCTION_130_2();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C828, &unk_26A4276D0);
  OUTLINED_FUNCTION_179(v4);
  if (*(v5 + 84) == v3)
  {
    v6 = OUTLINED_FUNCTION_218_1();
  }

  else
  {
    v8 = sub_26A424794();
    v9 = OUTLINED_FUNCTION_179(v8);
    if (*(v10 + 84) == v3)
    {
      v7 = v9;
      v11 = *(v2 + 20);
    }

    else
    {
      v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C818, &unk_26A42D9A0);
      v11 = *(v2 + 24);
    }

    v6 = v1 + v11;
  }

  return __swift_storeEnumTagSinglePayload(v6, v0, v0, v7);
}

uint64_t sub_26A0CEEA0()
{
  OUTLINED_FUNCTION_41_3();
  if (v3)
  {
    return OUTLINED_FUNCTION_44_1(*(v1 + 16));
  }

  v5 = OUTLINED_FUNCTION_53_6();
  OUTLINED_FUNCTION_179(v5);
  if (*(v6 + 84) == v0)
  {
    v7 = *(v2 + 32);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&off_28036C7C0, &off_26A427400);
    v7 = *(v2 + 36);
  }

  v8 = OUTLINED_FUNCTION_42_2(v7);

  return __swift_getEnumTagSinglePayload(v8, v9, v10);
}

void sub_26A0CEF4C()
{
  OUTLINED_FUNCTION_30_2();
  if (v4)
  {
    *(v1 + 16) = (v0 - 1);
  }

  else
  {
    v5 = v3;
    v6 = v2;
    v7 = sub_26A424794();
    OUTLINED_FUNCTION_179(v7);
    if (*(v8 + 84) == v6)
    {
      v9 = *(v5 + 32);
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&off_28036C7C0, &off_26A427400);
      v9 = *(v5 + 36);
    }

    v10 = OUTLINED_FUNCTION_84_4(v9);

    __swift_storeEnumTagSinglePayload(v10, v11, v12, v13);
  }
}

uint64_t sub_26A0CF004(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_110();
  v6 = sub_26A424794();
  v7 = OUTLINED_FUNCTION_179(v6);
  if (*(v8 + 84) != a2)
  {
    return OUTLINED_FUNCTION_44_1(*(v3 + *(a3 + 20)));
  }

  return __swift_getEnumTagSinglePayload(v3, a2, v7);
}

uint64_t sub_26A0CF09C()
{
  OUTLINED_FUNCTION_130_2();
  v4 = sub_26A424794();
  result = OUTLINED_FUNCTION_179(v4);
  if (*(v6 + 84) == v3)
  {
    v7 = OUTLINED_FUNCTION_218_1();

    return __swift_storeEnumTagSinglePayload(v7, v0, v0, v8);
  }

  else
  {
    *(v1 + *(v2 + 20)) = (v0 - 1);
  }

  return result;
}

uint64_t sub_26A0CF12C@<X0>(uint64_t *a1@<X8>)
{
  result = SimpleItemStandard.componentName.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_26A0CF158@<X0>(uint64_t *a1@<X8>)
{
  result = SimpleItemStandard.linkIdentifier.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_26A0CF184()
{
  v2 = OUTLINED_FUNCTION_50_15();

  return __swift_getEnumTagSinglePayload(v1, v0, v2);
}

uint64_t sub_26A0CF1BC()
{
  v2 = OUTLINED_FUNCTION_50_15();

  return __swift_storeEnumTagSinglePayload(v1, v0, v0, v2);
}

uint64_t sub_26A0CF1F8@<X0>(uint64_t *a1@<X8>)
{
  result = ActionProperty.allActionElements.getter();
  *a1 = result;
  return result;
}

uint64_t sub_26A0CF224@<X0>(uint64_t *a1@<X8>)
{
  result = ActionProperty.actionName.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_26A0CF250()
{
  v2 = OUTLINED_FUNCTION_14_27();

  return __swift_getEnumTagSinglePayload(v1, v0, v2);
}

uint64_t sub_26A0CF288()
{
  v2 = OUTLINED_FUNCTION_14_27();

  return __swift_storeEnumTagSinglePayload(v1, v0, v0, v2);
}

uint64_t sub_26A0CF2F0@<X0>(uint64_t *a1@<X8>)
{
  result = ControlPlayerButton.componentName.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_26A0CF31C@<X0>(uint64_t *a1@<X8>)
{
  result = ControlPlayerButton.linkIdentifier.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_26A0CF348()
{
  v2 = OUTLINED_FUNCTION_28_19();

  return __swift_getEnumTagSinglePayload(v1, v0, v2);
}

uint64_t sub_26A0CF380()
{
  v2 = OUTLINED_FUNCTION_28_19();

  return __swift_storeEnumTagSinglePayload(v1, v0, v0, v2);
}

uint64_t sub_26A0CF3C0()
{
  v2 = OUTLINED_FUNCTION_17_24();

  return __swift_getEnumTagSinglePayload(v1, v0, v2);
}

uint64_t sub_26A0CF3F8()
{
  v2 = OUTLINED_FUNCTION_17_24();

  return __swift_storeEnumTagSinglePayload(v1, v0, v0, v2);
}

uint64_t sub_26A0CF434(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_26A424614();
  v7 = OUTLINED_FUNCTION_179(v6);
  if (*(v8 + 84) == a2)
  {
    v9 = v7;
    v10 = a1;
  }

  else
  {
    v11 = type metadata accessor for RFImage.Url(0);
    v12 = OUTLINED_FUNCTION_179(v11);
    if (*(v13 + 84) == a2)
    {
      v9 = v12;
      v14 = *(a3 + 20);
    }

    else
    {
      v9 = type metadata accessor for _ProtoImageElement.Url(0);
      v14 = *(a3 + 24);
    }

    v10 = a1 + v14;
  }

  return __swift_getEnumTagSinglePayload(v10, a2, v9);
}

uint64_t sub_26A0CF50C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_26A424614();
  v9 = OUTLINED_FUNCTION_179(v8);
  if (*(v10 + 84) == a3)
  {
    v11 = v9;
    v12 = a1;
  }

  else
  {
    v13 = type metadata accessor for RFImage.Url(0);
    v14 = OUTLINED_FUNCTION_179(v13);
    if (*(v15 + 84) == a3)
    {
      v11 = v14;
      v16 = *(a4 + 20);
    }

    else
    {
      v11 = type metadata accessor for _ProtoImageElement.Url(0);
      v16 = *(a4 + 24);
    }

    v12 = a1 + v16;
  }

  return __swift_storeEnumTagSinglePayload(v12, a2, a2, v11);
}

uint64_t sub_26A0CF63C@<X0>(uint64_t *a1@<X8>)
{
  result = SummaryItemText.componentName.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_26A0CF668@<X0>(uint64_t *a1@<X8>)
{
  result = SummaryItemText.linkIdentifier.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_26A0CF694()
{
  v2 = OUTLINED_FUNCTION_48_20();

  return __swift_getEnumTagSinglePayload(v1, v0, v2);
}

uint64_t sub_26A0CF6CC()
{
  v2 = OUTLINED_FUNCTION_48_20();

  return __swift_storeEnumTagSinglePayload(v1, v0, v0, v2);
}

void *sub_26A0CF78C@<X0>(void *a1@<X8>)
{
  result = ImageElement.idioms.getter();
  *a1 = result;
  return result;
}

uint64_t sub_26A0CFD60()
{
  OUTLINED_FUNCTION_41_3();
  if (v3)
  {
    return OUTLINED_FUNCTION_44_1(*(v1 + 8));
  }

  v5 = OUTLINED_FUNCTION_53_6();
  OUTLINED_FUNCTION_179(v5);
  if (*(v6 + 84) == v0)
  {
    v7 = *(v2 + 28);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280373400, &qword_26A440D98);
    v7 = *(v2 + 32);
  }

  v8 = OUTLINED_FUNCTION_42_2(v7);

  return __swift_getEnumTagSinglePayload(v8, v9, v10);
}

void sub_26A0CFE0C()
{
  OUTLINED_FUNCTION_6_13();
  if (v2 == 0x7FFFFFFF)
  {
    *(v1 + 8) = (v0 - 1);
  }

  else
  {
    v4 = v3;
    v5 = v2;
    v6 = sub_26A424794();
    OUTLINED_FUNCTION_179(v6);
    if (*(v7 + 84) == v5)
    {
      v8 = *(v4 + 28);
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280373400, &qword_26A440D98);
      v9 = *(v4 + 32);
    }

    OUTLINED_FUNCTION_147_2();

    __swift_storeEnumTagSinglePayload(v10, v11, v12, v13);
  }
}

uint64_t sub_26A0CFED0()
{
  OUTLINED_FUNCTION_41_3();
  if (v1)
  {
    return OUTLINED_FUNCTION_44_1(*v0);
  }

  OUTLINED_FUNCTION_53_6();
  OUTLINED_FUNCTION_241_1();
  v4 = OUTLINED_FUNCTION_42_2(v3);

  return __swift_getEnumTagSinglePayload(v4, v5, v6);
}

void sub_26A0CFF2C()
{
  OUTLINED_FUNCTION_6_13();
  if (v3 == 0x7FFFFFFF)
  {
    *v1 = (v0 - 1);
  }

  else
  {
    v4 = v2;
    sub_26A424794();
    v5 = *(v4 + 24);
    OUTLINED_FUNCTION_147_2();

    __swift_storeEnumTagSinglePayload(v6, v7, v8, v9);
  }
}

uint64_t sub_26A0CFFA0()
{
  OUTLINED_FUNCTION_41_3();
  if (v3)
  {
    return OUTLINED_FUNCTION_44_1(*v1);
  }

  v5 = OUTLINED_FUNCTION_53_6();
  OUTLINED_FUNCTION_179(v5);
  if (*(v6 + 84) == v0)
  {
    v7 = *(v2 + 28);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&off_28036C7C0, &off_26A427400);
    v7 = *(v2 + 32);
  }

  v8 = OUTLINED_FUNCTION_42_2(v7);

  return __swift_getEnumTagSinglePayload(v8, v9, v10);
}

void sub_26A0D004C()
{
  OUTLINED_FUNCTION_6_13();
  if (v2 == 0x7FFFFFFF)
  {
    *v1 = (v0 - 1);
  }

  else
  {
    v4 = v3;
    v5 = v2;
    v6 = sub_26A424794();
    OUTLINED_FUNCTION_179(v6);
    if (*(v7 + 84) == v5)
    {
      v8 = *(v4 + 28);
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&off_28036C7C0, &off_26A427400);
      v9 = *(v4 + 32);
    }

    OUTLINED_FUNCTION_147_2();

    __swift_storeEnumTagSinglePayload(v10, v11, v12, v13);
  }
}

uint64_t sub_26A0D0110()
{
  OUTLINED_FUNCTION_244_1();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C8B0, &unk_26A425E60);
  OUTLINED_FUNCTION_179(v3);
  if (*(v4 + 84) == v0)
  {
    v5 = OUTLINED_FUNCTION_84_5();
  }

  else
  {
    v7 = sub_26A424794();
    v8 = OUTLINED_FUNCTION_179(v7);
    if (*(v9 + 84) == v0)
    {
      v6 = v8;
      v10 = *(v2 + 20);
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C898, &qword_26A425E48);
      OUTLINED_FUNCTION_241_1();
    }

    v5 = v1 + v10;
  }

  return __swift_getEnumTagSinglePayload(v5, v0, v6);
}

uint64_t sub_26A0D01EC()
{
  OUTLINED_FUNCTION_130_2();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C8B0, &unk_26A425E60);
  OUTLINED_FUNCTION_179(v2);
  if (*(v3 + 84) == v1)
  {
    OUTLINED_FUNCTION_218_1();
  }

  else
  {
    v4 = sub_26A424794();
    OUTLINED_FUNCTION_179(v4);
    if (*(v5 + 84) == v1)
    {
      v6 = *(v0 + 20);
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C898, &qword_26A425E48);
      v7 = *(v0 + 24);
    }
  }

  OUTLINED_FUNCTION_147_2();

  return __swift_storeEnumTagSinglePayload(v8, v9, v10, v11);
}

uint64_t sub_26A0D02CC()
{
  OUTLINED_FUNCTION_244_1();
  v2 = sub_26A424794();
  OUTLINED_FUNCTION_179(v2);
  if (*(v3 + 84) == v0)
  {
    OUTLINED_FUNCTION_241_1();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C888, &qword_26A440D90);
    v4 = *(v1 + 28);
  }

  v5 = OUTLINED_FUNCTION_42_2(v4);

  return __swift_getEnumTagSinglePayload(v5, v6, v7);
}

uint64_t sub_26A0D035C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v6 = sub_26A424794();
  OUTLINED_FUNCTION_179(v6);
  if (*(v7 + 84) == a3)
  {
    v8 = *(a4 + 24);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C888, &qword_26A440D90);
    v9 = *(a4 + 28);
  }

  OUTLINED_FUNCTION_147_2();

  return __swift_storeEnumTagSinglePayload(v10, v11, v12, v13);
}

uint64_t sub_26A0D0404()
{
  OUTLINED_FUNCTION_244_1();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C8D8, &qword_26A425E88);
  OUTLINED_FUNCTION_179(v3);
  if (*(v4 + 84) == v0)
  {
    v5 = OUTLINED_FUNCTION_84_5();
  }

  else
  {
    v6 = sub_26A424794();
    v5 = v1 + *(v2 + 20);
  }

  return __swift_getEnumTagSinglePayload(v5, v0, v6);
}

uint64_t sub_26A0D0498()
{
  OUTLINED_FUNCTION_130_2();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C8D8, &qword_26A425E88);
  OUTLINED_FUNCTION_179(v3);
  if (*(v4 + 84) == v2)
  {
    OUTLINED_FUNCTION_218_1();
  }

  else
  {
    sub_26A424794();
    v5 = v0 + *(v1 + 20);
  }

  OUTLINED_FUNCTION_147_2();

  return __swift_storeEnumTagSinglePayload(v6, v7, v8, v9);
}

uint64_t sub_26A0D052C()
{
  OUTLINED_FUNCTION_128_3();
  v1 = OUTLINED_FUNCTION_84_5();

  return __swift_getEnumTagSinglePayload(v1, v0, v2);
}

uint64_t sub_26A0D0560()
{
  OUTLINED_FUNCTION_128_3();
  OUTLINED_FUNCTION_218_1();
  OUTLINED_FUNCTION_147_2();

  return __swift_storeEnumTagSinglePayload(v0, v1, v2, v3);
}

uint64_t sub_26A0D0598()
{
  OUTLINED_FUNCTION_244_1();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C8C0, &qword_26A425E70);
  OUTLINED_FUNCTION_179(v2);
  if (*(v3 + 84) == v0)
  {
    v4 = OUTLINED_FUNCTION_84_5();
  }

  else
  {
    sub_26A424794();
    OUTLINED_FUNCTION_241_1();
    v4 = v1 + v6;
  }

  return __swift_getEnumTagSinglePayload(v4, v0, v5);
}

uint64_t sub_26A0D0628()
{
  OUTLINED_FUNCTION_130_2();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C8C0, &qword_26A425E70);
  OUTLINED_FUNCTION_179(v3);
  if (*(v4 + 84) == v2)
  {
    OUTLINED_FUNCTION_218_1();
  }

  else
  {
    sub_26A424794();
    v5 = v0 + *(v1 + 24);
  }

  OUTLINED_FUNCTION_147_2();

  return __swift_storeEnumTagSinglePayload(v6, v7, v8, v9);
}

uint64_t sub_26A0D06BC()
{
  OUTLINED_FUNCTION_6_13();
  v3 = *(v2 + 20);
  v4 = sub_26A424794();

  return __swift_getEnumTagSinglePayload(v1 + v3, v0, v4);
}

uint64_t sub_26A0D0708()
{
  OUTLINED_FUNCTION_6_13();
  v1 = *(v0 + 20);
  sub_26A424794();
  OUTLINED_FUNCTION_74_4();
  OUTLINED_FUNCTION_147_2();

  return __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
}

void sub_26A0D0760()
{
  OUTLINED_FUNCTION_16_14();
  v1 = OUTLINED_FUNCTION_15_38();
  v2 = OUTLINED_FUNCTION_41(v1);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = OUTLINED_FUNCTION_24_8();
  v6 = type metadata accessor for _ProtoSummaryItem_Player(v5);
  v7 = OUTLINED_FUNCTION_8_12(v6);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_2_52();
  sub_26A4247A4();
  OUTLINED_FUNCTION_141_4();
  sub_26A3AED00();
  OUTLINED_FUNCTION_4_46();
  if (!v0)
  {
    OUTLINED_FUNCTION_37_0();
    sub_26A3AF978();
  }

  OUTLINED_FUNCTION_9_18();
  OUTLINED_FUNCTION_15_17();
}

void sub_26A0D083C()
{
  OUTLINED_FUNCTION_16_14();
  v1 = OUTLINED_FUNCTION_15_38();
  v2 = OUTLINED_FUNCTION_41(v1);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = OUTLINED_FUNCTION_24_8();
  v6 = type metadata accessor for _ProtoControl_Slider(v5);
  v7 = OUTLINED_FUNCTION_8_12(v6);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_2_52();
  sub_26A4247A4();
  OUTLINED_FUNCTION_138_3();
  sub_26A3AED00();
  OUTLINED_FUNCTION_4_46();
  if (!v0)
  {
    OUTLINED_FUNCTION_37_0();
    sub_26A3AF978();
  }

  OUTLINED_FUNCTION_9_18();
  OUTLINED_FUNCTION_15_17();
}

void sub_26A0D0918()
{
  OUTLINED_FUNCTION_16_14();
  v1 = OUTLINED_FUNCTION_15_38();
  v2 = OUTLINED_FUNCTION_41(v1);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = OUTLINED_FUNCTION_24_8();
  v6 = type metadata accessor for _ProtoSecondaryHeader_Standard(v5);
  v7 = OUTLINED_FUNCTION_8_12(v6);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_2_52();
  sub_26A4247A4();
  OUTLINED_FUNCTION_137_5();
  sub_26A3AED00();
  OUTLINED_FUNCTION_4_46();
  if (!v0)
  {
    OUTLINED_FUNCTION_37_0();
    sub_26A3AF978();
  }

  OUTLINED_FUNCTION_9_18();
  OUTLINED_FUNCTION_15_17();
}

void sub_26A0D09F4()
{
  OUTLINED_FUNCTION_16_14();
  v1 = OUTLINED_FUNCTION_15_38();
  v2 = OUTLINED_FUNCTION_41(v1);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = OUTLINED_FUNCTION_24_8();
  v6 = type metadata accessor for _ProtoControl_Switch(v5);
  v7 = OUTLINED_FUNCTION_8_12(v6);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_2_52();
  sub_26A4247A4();
  OUTLINED_FUNCTION_136_5();
  sub_26A3AED00();
  OUTLINED_FUNCTION_4_46();
  if (!v0)
  {
    OUTLINED_FUNCTION_37_0();
    sub_26A3AF978();
  }

  OUTLINED_FUNCTION_9_18();
  OUTLINED_FUNCTION_15_17();
}

void sub_26A0D0AD0()
{
  OUTLINED_FUNCTION_16_14();
  v1 = OUTLINED_FUNCTION_15_38();
  v2 = OUTLINED_FUNCTION_41(v1);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = OUTLINED_FUNCTION_24_8();
  v6 = type metadata accessor for _ProtoFactItem_HeroNumber(v5);
  v7 = OUTLINED_FUNCTION_8_12(v6);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_2_52();
  sub_26A4247A4();
  OUTLINED_FUNCTION_135_6();
  sub_26A3AED00();
  OUTLINED_FUNCTION_4_46();
  if (!v0)
  {
    OUTLINED_FUNCTION_37_0();
    sub_26A3AF978();
  }

  OUTLINED_FUNCTION_9_18();
  OUTLINED_FUNCTION_15_17();
}

void sub_26A0D0BAC()
{
  OUTLINED_FUNCTION_16_14();
  v1 = OUTLINED_FUNCTION_15_38();
  v2 = OUTLINED_FUNCTION_41(v1);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_24_8();
  v5 = type metadata accessor for _ProtoTertiaryHeader_Standard();
  v6 = OUTLINED_FUNCTION_8_12(v5);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_2_52();
  sub_26A4247A4();
  OUTLINED_FUNCTION_134_2();
  sub_26A3AED00();
  OUTLINED_FUNCTION_4_46();
  if (!v0)
  {
    OUTLINED_FUNCTION_37_0();
    sub_26A3AF978();
  }

  OUTLINED_FUNCTION_9_18();
  OUTLINED_FUNCTION_15_17();
}

void sub_26A0D0C88()
{
  OUTLINED_FUNCTION_16_14();
  v1 = OUTLINED_FUNCTION_15_38();
  v2 = OUTLINED_FUNCTION_41(v1);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = OUTLINED_FUNCTION_24_8();
  v6 = type metadata accessor for _ProtoSummaryItem_PairNumberV2(v5);
  v7 = OUTLINED_FUNCTION_8_12(v6);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_2_52();
  sub_26A4247A4();
  OUTLINED_FUNCTION_133_5();
  sub_26A3AED00();
  OUTLINED_FUNCTION_4_46();
  if (!v0)
  {
    OUTLINED_FUNCTION_37_0();
    sub_26A3AF978();
  }

  OUTLINED_FUNCTION_9_18();
  OUTLINED_FUNCTION_15_17();
}

void sub_26A0D0D64()
{
  OUTLINED_FUNCTION_16_14();
  v1 = OUTLINED_FUNCTION_15_38();
  v2 = OUTLINED_FUNCTION_41(v1);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = OUTLINED_FUNCTION_24_8();
  v6 = type metadata accessor for _ProtoPrimaryHeader_Standard(v5);
  v7 = OUTLINED_FUNCTION_8_12(v6);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_2_52();
  sub_26A4247A4();
  OUTLINED_FUNCTION_132_4();
  sub_26A3AED00();
  OUTLINED_FUNCTION_4_46();
  if (!v0)
  {
    OUTLINED_FUNCTION_37_0();
    sub_26A3AF978();
  }

  OUTLINED_FUNCTION_9_18();
  OUTLINED_FUNCTION_15_17();
}

void sub_26A0D0E40()
{
  OUTLINED_FUNCTION_16_14();
  v1 = OUTLINED_FUNCTION_15_38();
  v2 = OUTLINED_FUNCTION_41(v1);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = OUTLINED_FUNCTION_24_8();
  v6 = type metadata accessor for _ProtoReference_Footnote(v5);
  v7 = OUTLINED_FUNCTION_8_12(v6);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_2_52();
  sub_26A4247A4();
  OUTLINED_FUNCTION_131_6();
  sub_26A3AED00();
  OUTLINED_FUNCTION_4_46();
  if (!v0)
  {
    OUTLINED_FUNCTION_37_0();
    sub_26A3AF978();
  }

  OUTLINED_FUNCTION_9_18();
  OUTLINED_FUNCTION_15_17();
}

void sub_26A0D0F1C()
{
  OUTLINED_FUNCTION_16_14();
  v1 = OUTLINED_FUNCTION_15_38();
  v2 = OUTLINED_FUNCTION_41(v1);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = OUTLINED_FUNCTION_24_8();
  v6 = type metadata accessor for _ProtoFactItem_Standard(v5);
  v7 = OUTLINED_FUNCTION_8_12(v6);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_2_52();
  sub_26A4247A4();
  OUTLINED_FUNCTION_130_5();
  sub_26A3AED00();
  OUTLINED_FUNCTION_4_46();
  if (!v0)
  {
    OUTLINED_FUNCTION_37_0();
    sub_26A3AF978();
  }

  OUTLINED_FUNCTION_9_18();
  OUTLINED_FUNCTION_15_17();
}

void sub_26A0D0FF8()
{
  OUTLINED_FUNCTION_16_14();
  v1 = OUTLINED_FUNCTION_15_38();
  v2 = OUTLINED_FUNCTION_41(v1);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = OUTLINED_FUNCTION_24_8();
  v6 = type metadata accessor for _ProtoStatusIndicator_InProgress(v5);
  v7 = OUTLINED_FUNCTION_8_12(v6);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_2_52();
  sub_26A4247A4();
  OUTLINED_FUNCTION_129_3();
  sub_26A3AED00();
  OUTLINED_FUNCTION_4_46();
  if (!v0)
  {
    OUTLINED_FUNCTION_37_0();
    sub_26A3AF978();
  }

  OUTLINED_FUNCTION_9_18();
  OUTLINED_FUNCTION_15_17();
}

void sub_26A0D10D4()
{
  OUTLINED_FUNCTION_16_14();
  v1 = OUTLINED_FUNCTION_15_38();
  v2 = OUTLINED_FUNCTION_41(v1);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = OUTLINED_FUNCTION_24_8();
  v6 = type metadata accessor for _ProtoSecondaryHeader_Emphasized(v5);
  v7 = OUTLINED_FUNCTION_8_12(v6);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_2_52();
  sub_26A4247A4();
  OUTLINED_FUNCTION_128_4();
  sub_26A3AED00();
  OUTLINED_FUNCTION_4_46();
  if (!v0)
  {
    OUTLINED_FUNCTION_37_0();
    sub_26A3AF978();
  }

  OUTLINED_FUNCTION_9_18();
  OUTLINED_FUNCTION_15_17();
}

void sub_26A0D11B0()
{
  OUTLINED_FUNCTION_16_14();
  v1 = OUTLINED_FUNCTION_15_38();
  v2 = OUTLINED_FUNCTION_41(v1);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = OUTLINED_FUNCTION_24_8();
  v6 = type metadata accessor for _ProtoButton(v5);
  v7 = OUTLINED_FUNCTION_8_12(v6);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_2_52();
  sub_26A4247A4();
  OUTLINED_FUNCTION_127_5();
  sub_26A3AED00();
  OUTLINED_FUNCTION_4_46();
  if (!v0)
  {
    OUTLINED_FUNCTION_37_0();
    sub_26A3AF978();
  }

  OUTLINED_FUNCTION_9_18();
  OUTLINED_FUNCTION_15_17();
}

void sub_26A0D128C()
{
  OUTLINED_FUNCTION_16_14();
  v1 = OUTLINED_FUNCTION_15_38();
  v2 = OUTLINED_FUNCTION_41(v1);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = OUTLINED_FUNCTION_24_8();
  v6 = type metadata accessor for _ProtoStatusIndicator_Error(v5);
  v7 = OUTLINED_FUNCTION_8_12(v6);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_2_52();
  sub_26A4247A4();
  OUTLINED_FUNCTION_126_6();
  sub_26A3AED00();
  OUTLINED_FUNCTION_4_46();
  if (!v0)
  {
    OUTLINED_FUNCTION_37_0();
    sub_26A3AF978();
  }

  OUTLINED_FUNCTION_9_18();
  OUTLINED_FUNCTION_15_17();
}

void sub_26A0D1368()
{
  OUTLINED_FUNCTION_16_14();
  v1 = OUTLINED_FUNCTION_15_38();
  v2 = OUTLINED_FUNCTION_41(v1);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = OUTLINED_FUNCTION_24_8();
  v6 = type metadata accessor for _ProtoSimpleItem_Rich(v5);
  v7 = OUTLINED_FUNCTION_8_12(v6);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_2_52();
  sub_26A4247A4();
  OUTLINED_FUNCTION_125_5();
  sub_26A3AED00();
  OUTLINED_FUNCTION_4_46();
  if (!v0)
  {
    OUTLINED_FUNCTION_37_0();
    sub_26A3AF978();
  }

  OUTLINED_FUNCTION_9_18();
  OUTLINED_FUNCTION_15_17();
}

void sub_26A0D1444()
{
  OUTLINED_FUNCTION_16_14();
  v1 = OUTLINED_FUNCTION_15_38();
  v2 = OUTLINED_FUNCTION_41(v1);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = OUTLINED_FUNCTION_24_8();
  v6 = type metadata accessor for _ProtoSummaryItem_SwitchV2(v5);
  v7 = OUTLINED_FUNCTION_8_12(v6);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_2_52();
  sub_26A4247A4();
  OUTLINED_FUNCTION_124_3();
  sub_26A3AED00();
  OUTLINED_FUNCTION_4_46();
  if (!v0)
  {
    OUTLINED_FUNCTION_37_0();
    sub_26A3AF978();
  }

  OUTLINED_FUNCTION_9_18();
  OUTLINED_FUNCTION_15_17();
}

void sub_26A0D1520()
{
  OUTLINED_FUNCTION_16_14();
  v1 = OUTLINED_FUNCTION_15_38();
  v2 = OUTLINED_FUNCTION_41(v1);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = OUTLINED_FUNCTION_24_8();
  v6 = type metadata accessor for _ProtoSummaryItem_LargeText(v5);
  v7 = OUTLINED_FUNCTION_8_12(v6);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_2_52();
  sub_26A4247A4();
  OUTLINED_FUNCTION_123_6();
  sub_26A3AED00();
  OUTLINED_FUNCTION_4_46();
  if (!v0)
  {
    OUTLINED_FUNCTION_37_0();
    sub_26A3AF978();
  }

  OUTLINED_FUNCTION_9_18();
  OUTLINED_FUNCTION_15_17();
}

void sub_26A0D15FC()
{
  OUTLINED_FUNCTION_16_14();
  v1 = OUTLINED_FUNCTION_15_38();
  v2 = OUTLINED_FUNCTION_41(v1);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = OUTLINED_FUNCTION_24_8();
  v6 = type metadata accessor for _ProtoFactItem_Button(v5);
  v7 = OUTLINED_FUNCTION_8_12(v6);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_2_52();
  sub_26A4247A4();
  OUTLINED_FUNCTION_122_5();
  sub_26A3AED00();
  OUTLINED_FUNCTION_4_46();
  if (!v0)
  {
    OUTLINED_FUNCTION_37_0();
    sub_26A3AF978();
  }

  OUTLINED_FUNCTION_9_18();
  OUTLINED_FUNCTION_15_17();
}

void sub_26A0D16D8()
{
  OUTLINED_FUNCTION_16_14();
  v1 = OUTLINED_FUNCTION_15_38();
  v2 = OUTLINED_FUNCTION_41(v1);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = OUTLINED_FUNCTION_24_8();
  v6 = type metadata accessor for _ProtoStatusIndicator_Success(v5);
  v7 = OUTLINED_FUNCTION_8_12(v6);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_2_52();
  sub_26A4247A4();
  OUTLINED_FUNCTION_121_2();
  sub_26A3AED00();
  OUTLINED_FUNCTION_4_46();
  if (!v0)
  {
    OUTLINED_FUNCTION_37_0();
    sub_26A3AF978();
  }

  OUTLINED_FUNCTION_9_18();
  OUTLINED_FUNCTION_15_17();
}

void sub_26A0D17B4()
{
  OUTLINED_FUNCTION_16_14();
  v1 = OUTLINED_FUNCTION_15_38();
  v2 = OUTLINED_FUNCTION_41(v1);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = OUTLINED_FUNCTION_24_8();
  v6 = type metadata accessor for _ProtoButton_Container(v5);
  v7 = OUTLINED_FUNCTION_8_12(v6);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_2_52();
  sub_26A4247A4();
  OUTLINED_FUNCTION_120_3();
  sub_26A3AED00();
  OUTLINED_FUNCTION_4_46();
  if (!v0)
  {
    OUTLINED_FUNCTION_37_0();
    sub_26A3AF978();
  }

  OUTLINED_FUNCTION_9_18();
  OUTLINED_FUNCTION_15_17();
}

void sub_26A0D1890()
{
  OUTLINED_FUNCTION_16_14();
  v1 = OUTLINED_FUNCTION_15_38();
  v2 = OUTLINED_FUNCTION_41(v1);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = OUTLINED_FUNCTION_24_8();
  v6 = type metadata accessor for _ProtoBinaryButton(v5);
  v7 = OUTLINED_FUNCTION_8_12(v6);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_2_52();
  sub_26A4247A4();
  OUTLINED_FUNCTION_119_3();
  sub_26A3AED00();
  OUTLINED_FUNCTION_4_46();
  if (!v0)
  {
    OUTLINED_FUNCTION_37_0();
    sub_26A3AF978();
  }

  OUTLINED_FUNCTION_9_18();
  OUTLINED_FUNCTION_15_17();
}

void sub_26A0D196C()
{
  OUTLINED_FUNCTION_16_14();
  v1 = OUTLINED_FUNCTION_15_38();
  v2 = OUTLINED_FUNCTION_41(v1);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = OUTLINED_FUNCTION_24_8();
  v6 = type metadata accessor for _ProtoHorizontalList_Standard(v5);
  v7 = OUTLINED_FUNCTION_8_12(v6);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_2_52();
  sub_26A4247A4();
  OUTLINED_FUNCTION_118_2();
  sub_26A3AED00();
  OUTLINED_FUNCTION_4_46();
  if (!v0)
  {
    OUTLINED_FUNCTION_37_0();
    sub_26A3AF978();
  }

  OUTLINED_FUNCTION_9_18();
  OUTLINED_FUNCTION_15_17();
}

void sub_26A0D1A48()
{
  OUTLINED_FUNCTION_16_14();
  v1 = OUTLINED_FUNCTION_15_38();
  v2 = OUTLINED_FUNCTION_41(v1);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = OUTLINED_FUNCTION_24_8();
  v6 = type metadata accessor for _ProtoSimpleItem_RichSearchResult(v5);
  v7 = OUTLINED_FUNCTION_8_12(v6);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_2_52();
  sub_26A4247A4();
  OUTLINED_FUNCTION_117_5();
  sub_26A3AED00();
  OUTLINED_FUNCTION_4_46();
  if (!v0)
  {
    OUTLINED_FUNCTION_37_0();
    sub_26A3AF978();
  }

  OUTLINED_FUNCTION_9_18();
  OUTLINED_FUNCTION_15_17();
}

void sub_26A0D1B24()
{
  OUTLINED_FUNCTION_16_14();
  v1 = OUTLINED_FUNCTION_15_38();
  v2 = OUTLINED_FUNCTION_41(v1);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = OUTLINED_FUNCTION_24_8();
  v6 = type metadata accessor for _ProtoSimpleItem_ReverseRich(v5);
  v7 = OUTLINED_FUNCTION_8_12(v6);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_2_52();
  sub_26A4247A4();
  OUTLINED_FUNCTION_115_4();
  sub_26A3AED00();
  OUTLINED_FUNCTION_4_46();
  if (!v0)
  {
    OUTLINED_FUNCTION_37_0();
    sub_26A3AF978();
  }

  OUTLINED_FUNCTION_9_18();
  OUTLINED_FUNCTION_15_17();
}

void sub_26A0D1C00()
{
  OUTLINED_FUNCTION_16_14();
  v1 = OUTLINED_FUNCTION_15_38();
  v2 = OUTLINED_FUNCTION_41(v1);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_24_8();
  v5 = type metadata accessor for _ProtoLongItem_Text();
  v6 = OUTLINED_FUNCTION_8_12(v5);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_2_52();
  sub_26A4247A4();
  OUTLINED_FUNCTION_114_3();
  sub_26A3AED00();
  OUTLINED_FUNCTION_4_46();
  if (!v0)
  {
    OUTLINED_FUNCTION_37_0();
    sub_26A3AF978();
  }

  OUTLINED_FUNCTION_9_18();
  OUTLINED_FUNCTION_15_17();
}

void sub_26A0D1CDC()
{
  OUTLINED_FUNCTION_16_14();
  v1 = OUTLINED_FUNCTION_15_38();
  v2 = OUTLINED_FUNCTION_41(v1);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = OUTLINED_FUNCTION_24_8();
  v6 = type metadata accessor for _ProtoKeyValue_Standard(v5);
  v7 = OUTLINED_FUNCTION_8_12(v6);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_2_52();
  sub_26A4247A4();
  OUTLINED_FUNCTION_113_4();
  sub_26A3AED00();
  OUTLINED_FUNCTION_4_46();
  if (!v0)
  {
    OUTLINED_FUNCTION_37_0();
    sub_26A3AF978();
  }

  OUTLINED_FUNCTION_9_18();
  OUTLINED_FUNCTION_15_17();
}

void sub_26A0D1DB8()
{
  OUTLINED_FUNCTION_16_14();
  v1 = OUTLINED_FUNCTION_15_38();
  v2 = OUTLINED_FUNCTION_41(v1);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = OUTLINED_FUNCTION_24_8();
  v6 = type metadata accessor for _ProtoIntentsUI_Standard(v5);
  v7 = OUTLINED_FUNCTION_8_12(v6);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_2_52();
  sub_26A4247A4();
  OUTLINED_FUNCTION_112_5();
  sub_26A3AED00();
  OUTLINED_FUNCTION_4_46();
  if (!v0)
  {
    OUTLINED_FUNCTION_37_0();
    sub_26A3AF978();
  }

  OUTLINED_FUNCTION_9_18();
  OUTLINED_FUNCTION_15_17();
}

void sub_26A0D1E94()
{
  OUTLINED_FUNCTION_16_14();
  v1 = OUTLINED_FUNCTION_15_38();
  v2 = OUTLINED_FUNCTION_41(v1);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = OUTLINED_FUNCTION_24_8();
  v6 = type metadata accessor for _ProtoSummaryItem_Standard(v5);
  v7 = OUTLINED_FUNCTION_8_12(v6);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_2_52();
  sub_26A4247A4();
  OUTLINED_FUNCTION_111_5();
  sub_26A3AED00();
  OUTLINED_FUNCTION_4_46();
  if (!v0)
  {
    OUTLINED_FUNCTION_37_0();
    sub_26A3AF978();
  }

  OUTLINED_FUNCTION_9_18();
  OUTLINED_FUNCTION_15_17();
}

void sub_26A0D1F70()
{
  OUTLINED_FUNCTION_16_14();
  v1 = OUTLINED_FUNCTION_15_38();
  v2 = OUTLINED_FUNCTION_41(v1);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_24_8();
  v5 = type metadata accessor for _ProtoCustomCanvas();
  v6 = OUTLINED_FUNCTION_8_12(v5);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_2_52();
  sub_26A4247A4();
  sub_26A3AED00();
  OUTLINED_FUNCTION_4_46();
  if (!v0)
  {
    OUTLINED_FUNCTION_37_0();
    sub_26A3AF978();
  }

  OUTLINED_FUNCTION_9_18();
  OUTLINED_FUNCTION_15_17();
}

void sub_26A0D205C()
{
  OUTLINED_FUNCTION_16_14();
  v1 = OUTLINED_FUNCTION_15_38();
  v2 = OUTLINED_FUNCTION_41(v1);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_24_8();
  v5 = type metadata accessor for _ProtoSystemText_ClarificationTitle();
  v6 = OUTLINED_FUNCTION_8_12(v5);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_2_52();
  sub_26A4247A4();
  OUTLINED_FUNCTION_110_3();
  sub_26A3AED00();
  OUTLINED_FUNCTION_4_46();
  if (!v0)
  {
    OUTLINED_FUNCTION_37_0();
    sub_26A3AF978();
  }

  OUTLINED_FUNCTION_9_18();
  OUTLINED_FUNCTION_15_17();
}

void sub_26A0D2138()
{
  OUTLINED_FUNCTION_16_14();
  v1 = OUTLINED_FUNCTION_15_38();
  v2 = OUTLINED_FUNCTION_41(v1);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = OUTLINED_FUNCTION_24_8();
  v6 = type metadata accessor for _ProtoVisualization_Map(v5);
  v7 = OUTLINED_FUNCTION_8_12(v6);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_2_52();
  sub_26A4247A4();
  OUTLINED_FUNCTION_109_7();
  sub_26A3AED00();
  OUTLINED_FUNCTION_4_46();
  if (!v0)
  {
    OUTLINED_FUNCTION_37_0();
    sub_26A3AF978();
  }

  OUTLINED_FUNCTION_9_18();
  OUTLINED_FUNCTION_15_17();
}

void sub_26A0D2214()
{
  OUTLINED_FUNCTION_16_14();
  v1 = OUTLINED_FUNCTION_15_38();
  v2 = OUTLINED_FUNCTION_41(v1);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = OUTLINED_FUNCTION_24_8();
  v6 = type metadata accessor for _ProtoSimpleItem_Player(v5);
  v7 = OUTLINED_FUNCTION_8_12(v6);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_2_52();
  sub_26A4247A4();
  OUTLINED_FUNCTION_107_8();
  sub_26A3AED00();
  OUTLINED_FUNCTION_4_46();
  if (!v0)
  {
    OUTLINED_FUNCTION_37_0();
    sub_26A3AF978();
  }

  OUTLINED_FUNCTION_9_18();
  OUTLINED_FUNCTION_15_17();
}

void sub_26A0D22F0()
{
  OUTLINED_FUNCTION_16_14();
  v1 = OUTLINED_FUNCTION_15_38();
  v2 = OUTLINED_FUNCTION_41(v1);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = OUTLINED_FUNCTION_24_8();
  v6 = type metadata accessor for _ProtoVisualization_Chart(v5);
  v7 = OUTLINED_FUNCTION_8_12(v6);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_2_52();
  sub_26A4247A4();
  OUTLINED_FUNCTION_106_8();
  sub_26A3AED00();
  OUTLINED_FUNCTION_4_46();
  if (!v0)
  {
    OUTLINED_FUNCTION_37_0();
    sub_26A3AF978();
  }

  OUTLINED_FUNCTION_9_18();
  OUTLINED_FUNCTION_15_17();
}

void sub_26A0D23CC()
{
  OUTLINED_FUNCTION_16_14();
  v1 = OUTLINED_FUNCTION_15_38();
  v2 = OUTLINED_FUNCTION_41(v1);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = OUTLINED_FUNCTION_24_8();
  v6 = type metadata accessor for _ProtoSummaryItem_PairV2(v5);
  v7 = OUTLINED_FUNCTION_8_12(v6);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_2_52();
  sub_26A4247A4();
  OUTLINED_FUNCTION_104_6();
  sub_26A3AED00();
  OUTLINED_FUNCTION_4_46();
  if (!v0)
  {
    OUTLINED_FUNCTION_37_0();
    sub_26A3AF978();
  }

  OUTLINED_FUNCTION_9_18();
  OUTLINED_FUNCTION_15_17();
}

void sub_26A0D24A8()
{
  OUTLINED_FUNCTION_16_14();
  v1 = OUTLINED_FUNCTION_15_38();
  v2 = OUTLINED_FUNCTION_41(v1);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = OUTLINED_FUNCTION_24_8();
  v6 = type metadata accessor for _ProtoHeroHeader(v5);
  v7 = OUTLINED_FUNCTION_8_12(v6);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_2_52();
  sub_26A4247A4();
  OUTLINED_FUNCTION_103_6();
  sub_26A3AED00();
  OUTLINED_FUNCTION_4_46();
  if (!v0)
  {
    OUTLINED_FUNCTION_37_0();
    sub_26A3AF978();
  }

  OUTLINED_FUNCTION_9_18();
  OUTLINED_FUNCTION_15_17();
}

void sub_26A0D2584()
{
  OUTLINED_FUNCTION_16_14();
  v1 = OUTLINED_FUNCTION_15_38();
  v2 = OUTLINED_FUNCTION_41(v1);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = OUTLINED_FUNCTION_24_8();
  v6 = type metadata accessor for _ProtoPrimaryHeader_Marquee(v5);
  v7 = OUTLINED_FUNCTION_8_12(v6);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_2_52();
  sub_26A4247A4();
  OUTLINED_FUNCTION_101_8();
  sub_26A3AED00();
  OUTLINED_FUNCTION_4_46();
  if (!v0)
  {
    OUTLINED_FUNCTION_37_0();
    sub_26A3AF978();
  }

  OUTLINED_FUNCTION_9_18();
  OUTLINED_FUNCTION_15_17();
}

void sub_26A0D2660()
{
  OUTLINED_FUNCTION_16_14();
  v1 = OUTLINED_FUNCTION_15_38();
  v2 = OUTLINED_FUNCTION_41(v1);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = OUTLINED_FUNCTION_24_8();
  v6 = type metadata accessor for _ProtoSectionHeader_Rich(v5);
  v7 = OUTLINED_FUNCTION_8_12(v6);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_2_52();
  sub_26A4247A4();
  OUTLINED_FUNCTION_100_7();
  sub_26A3AED00();
  OUTLINED_FUNCTION_4_46();
  if (!v0)
  {
    OUTLINED_FUNCTION_37_0();
    sub_26A3AF978();
  }

  OUTLINED_FUNCTION_9_18();
  OUTLINED_FUNCTION_15_17();
}

void sub_26A0D273C()
{
  OUTLINED_FUNCTION_16_14();
  v1 = OUTLINED_FUNCTION_15_38();
  v2 = OUTLINED_FUNCTION_41(v1);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = OUTLINED_FUNCTION_24_8();
  v6 = type metadata accessor for _ProtoSash_Standard(v5);
  v7 = OUTLINED_FUNCTION_8_12(v6);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_2_52();
  sub_26A4247A4();
  OUTLINED_FUNCTION_97_7();
  sub_26A3AED00();
  OUTLINED_FUNCTION_4_46();
  if (!v0)
  {
    OUTLINED_FUNCTION_37_0();
    sub_26A3AF978();
  }

  OUTLINED_FUNCTION_9_18();
  OUTLINED_FUNCTION_15_17();
}

void sub_26A0D2818()
{
  OUTLINED_FUNCTION_16_14();
  v1 = OUTLINED_FUNCTION_15_38();
  v2 = OUTLINED_FUNCTION_41(v1);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = OUTLINED_FUNCTION_24_8();
  v6 = type metadata accessor for _ProtoReference_Logo(v5);
  v7 = OUTLINED_FUNCTION_8_12(v6);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_2_52();
  sub_26A4247A4();
  OUTLINED_FUNCTION_95_9();
  sub_26A3AED00();
  OUTLINED_FUNCTION_4_46();
  if (!v0)
  {
    OUTLINED_FUNCTION_37_0();
    sub_26A3AF978();
  }

  OUTLINED_FUNCTION_9_18();
  OUTLINED_FUNCTION_15_17();
}

void sub_26A0D28F4()
{
  OUTLINED_FUNCTION_16_14();
  v1 = OUTLINED_FUNCTION_15_38();
  v2 = OUTLINED_FUNCTION_41(v1);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = OUTLINED_FUNCTION_24_8();
  v6 = type metadata accessor for _ProtoReference_Rich(v5);
  v7 = OUTLINED_FUNCTION_8_12(v6);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_2_52();
  sub_26A4247A4();
  OUTLINED_FUNCTION_93_9();
  sub_26A3AED00();
  OUTLINED_FUNCTION_4_46();
  if (!v0)
  {
    OUTLINED_FUNCTION_37_0();
    sub_26A3AF978();
  }

  OUTLINED_FUNCTION_9_18();
  OUTLINED_FUNCTION_15_17();
}

void sub_26A0D29D0()
{
  OUTLINED_FUNCTION_16_14();
  v1 = OUTLINED_FUNCTION_15_38();
  v2 = OUTLINED_FUNCTION_41(v1);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = OUTLINED_FUNCTION_24_8();
  v6 = type metadata accessor for _ProtoReference_Button(v5);
  v7 = OUTLINED_FUNCTION_8_12(v6);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_2_52();
  sub_26A4247A4();
  OUTLINED_FUNCTION_88_12();
  sub_26A3AED00();
  OUTLINED_FUNCTION_4_46();
  if (!v0)
  {
    OUTLINED_FUNCTION_37_0();
    sub_26A3AF978();
  }

  OUTLINED_FUNCTION_9_18();
  OUTLINED_FUNCTION_15_17();
}

void sub_26A0D2AAC()
{
  OUTLINED_FUNCTION_16_14();
  v1 = OUTLINED_FUNCTION_15_38();
  v2 = OUTLINED_FUNCTION_41(v1);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = OUTLINED_FUNCTION_24_8();
  v6 = type metadata accessor for _ProtoSummaryItem_Text(v5);
  v7 = OUTLINED_FUNCTION_8_12(v6);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_2_52();
  sub_26A4247A4();
  OUTLINED_FUNCTION_87_10();
  sub_26A3AED00();
  OUTLINED_FUNCTION_4_46();
  if (!v0)
  {
    OUTLINED_FUNCTION_37_0();
    sub_26A3AF978();
  }

  OUTLINED_FUNCTION_9_18();
  OUTLINED_FUNCTION_15_17();
}

void sub_26A0D2B88()
{
  OUTLINED_FUNCTION_16_14();
  v1 = OUTLINED_FUNCTION_15_38();
  v2 = OUTLINED_FUNCTION_41(v1);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = OUTLINED_FUNCTION_24_8();
  v6 = type metadata accessor for _ProtoSimpleItem_Visual(v5);
  v7 = OUTLINED_FUNCTION_8_12(v6);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_2_52();
  sub_26A4247A4();
  OUTLINED_FUNCTION_86_12();
  sub_26A3AED00();
  OUTLINED_FUNCTION_4_46();
  if (!v0)
  {
    OUTLINED_FUNCTION_37_0();
    sub_26A3AF978();
  }

  OUTLINED_FUNCTION_9_18();
  OUTLINED_FUNCTION_15_17();
}

void sub_26A0D2C64()
{
  OUTLINED_FUNCTION_16_14();
  v1 = OUTLINED_FUNCTION_15_38();
  v2 = OUTLINED_FUNCTION_41(v1);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = OUTLINED_FUNCTION_24_8();
  v6 = type metadata accessor for _ProtoPrimaryHeader_Rich(v5);
  v7 = OUTLINED_FUNCTION_8_12(v6);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_2_52();
  sub_26A4247A4();
  OUTLINED_FUNCTION_84_8();
  sub_26A3AED00();
  OUTLINED_FUNCTION_4_46();
  if (!v0)
  {
    OUTLINED_FUNCTION_37_0();
    sub_26A3AF978();
  }

  OUTLINED_FUNCTION_9_18();
  OUTLINED_FUNCTION_15_17();
}

void sub_26A0D2D40()
{
  OUTLINED_FUNCTION_16_14();
  v1 = OUTLINED_FUNCTION_15_38();
  v2 = OUTLINED_FUNCTION_41(v1);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = OUTLINED_FUNCTION_24_8();
  v6 = type metadata accessor for _ProtoReference_Standard(v5);
  v7 = OUTLINED_FUNCTION_8_12(v6);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_2_52();
  sub_26A4247A4();
  OUTLINED_FUNCTION_83_10();
  sub_26A3AED00();
  OUTLINED_FUNCTION_4_46();
  if (!v0)
  {
    OUTLINED_FUNCTION_37_0();
    sub_26A3AF978();
  }

  OUTLINED_FUNCTION_9_18();
  OUTLINED_FUNCTION_15_17();
}

void sub_26A0D2E1C()
{
  OUTLINED_FUNCTION_16_14();
  v1 = OUTLINED_FUNCTION_15_38();
  v2 = OUTLINED_FUNCTION_41(v1);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = OUTLINED_FUNCTION_24_8();
  v6 = type metadata accessor for _ProtoSummaryItem_Button(v5);
  v7 = OUTLINED_FUNCTION_8_12(v6);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_2_52();
  sub_26A4247A4();
  OUTLINED_FUNCTION_81_9();
  sub_26A3AED00();
  OUTLINED_FUNCTION_4_46();
  if (!v0)
  {
    OUTLINED_FUNCTION_37_0();
    sub_26A3AF978();
  }

  OUTLINED_FUNCTION_9_18();
  OUTLINED_FUNCTION_15_17();
}

void sub_26A0D2EF8()
{
  OUTLINED_FUNCTION_16_14();
  v1 = OUTLINED_FUNCTION_15_38();
  v2 = OUTLINED_FUNCTION_41(v1);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = OUTLINED_FUNCTION_24_8();
  v6 = type metadata accessor for _ProtoSimpleItem_Standard(v5);
  v7 = OUTLINED_FUNCTION_8_12(v6);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_2_52();
  sub_26A4247A4();
  OUTLINED_FUNCTION_80_10();
  sub_26A3AED00();
  OUTLINED_FUNCTION_4_46();
  if (!v0)
  {
    OUTLINED_FUNCTION_37_0();
    sub_26A3AF978();
  }

  OUTLINED_FUNCTION_9_18();
  OUTLINED_FUNCTION_15_17();
}

void sub_26A0D2FD4()
{
  OUTLINED_FUNCTION_16_14();
  v1 = OUTLINED_FUNCTION_15_38();
  v2 = OUTLINED_FUNCTION_41(v1);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = OUTLINED_FUNCTION_24_8();
  v6 = type metadata accessor for _ProtoVisualization_Image(v5);
  v7 = OUTLINED_FUNCTION_8_12(v6);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_2_52();
  sub_26A4247A4();
  OUTLINED_FUNCTION_79_10();
  sub_26A3AED00();
  OUTLINED_FUNCTION_4_46();
  if (!v0)
  {
    OUTLINED_FUNCTION_37_0();
    sub_26A3AF978();
  }

  OUTLINED_FUNCTION_9_18();
  OUTLINED_FUNCTION_15_17();
}

void sub_26A0D30B0()
{
  OUTLINED_FUNCTION_16_14();
  v1 = OUTLINED_FUNCTION_15_38();
  v2 = OUTLINED_FUNCTION_41(v1);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = OUTLINED_FUNCTION_24_8();
  v6 = type metadata accessor for _ProtoControl_PlayerButton(v5);
  v7 = OUTLINED_FUNCTION_8_12(v6);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_2_52();
  sub_26A4247A4();
  OUTLINED_FUNCTION_77_10();
  sub_26A3AED00();
  OUTLINED_FUNCTION_4_46();
  if (!v0)
  {
    OUTLINED_FUNCTION_37_0();
    sub_26A3AF978();
  }

  OUTLINED_FUNCTION_9_18();
  OUTLINED_FUNCTION_15_17();
}

void sub_26A0D318C()
{
  OUTLINED_FUNCTION_16_14();
  v1 = OUTLINED_FUNCTION_15_38();
  v2 = OUTLINED_FUNCTION_41(v1);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = OUTLINED_FUNCTION_24_8();
  v6 = type metadata accessor for _ProtoFactItem_ShortNumber(v5);
  v7 = OUTLINED_FUNCTION_8_12(v6);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_2_52();
  sub_26A4247A4();
  OUTLINED_FUNCTION_76_11();
  sub_26A3AED00();
  OUTLINED_FUNCTION_4_46();
  if (!v0)
  {
    OUTLINED_FUNCTION_37_0();
    sub_26A3AF978();
  }

  OUTLINED_FUNCTION_9_18();
  OUTLINED_FUNCTION_15_17();
}

void sub_26A0D3268()
{
  OUTLINED_FUNCTION_16_14();
  v1 = OUTLINED_FUNCTION_15_38();
  v2 = OUTLINED_FUNCTION_41(v1);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = OUTLINED_FUNCTION_24_8();
  v6 = type metadata accessor for _ProtoSectionHeader_Standard(v5);
  v7 = OUTLINED_FUNCTION_8_12(v6);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_2_52();
  sub_26A4247A4();
  OUTLINED_FUNCTION_75_12();
  sub_26A3AED00();
  OUTLINED_FUNCTION_4_46();
  if (!v0)
  {
    OUTLINED_FUNCTION_37_0();
    sub_26A3AF978();
  }

  OUTLINED_FUNCTION_9_18();
  OUTLINED_FUNCTION_15_17();
}

void sub_26A0D3344()
{
  OUTLINED_FUNCTION_16_14();
  v1 = OUTLINED_FUNCTION_15_38();
  v2 = OUTLINED_FUNCTION_41(v1);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = OUTLINED_FUNCTION_24_8();
  v6 = type metadata accessor for _ProtoSummaryItem_ShortNumber(v5);
  v7 = OUTLINED_FUNCTION_8_12(v6);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_2_52();
  sub_26A4247A4();
  OUTLINED_FUNCTION_74_10();
  sub_26A3AED00();
  OUTLINED_FUNCTION_4_46();
  if (!v0)
  {
    OUTLINED_FUNCTION_37_0();
    sub_26A3AF978();
  }

  OUTLINED_FUNCTION_9_18();
  OUTLINED_FUNCTION_15_17();
}

void sub_26A0D3420()
{
  OUTLINED_FUNCTION_16_14();
  v1 = OUTLINED_FUNCTION_15_38();
  v2 = OUTLINED_FUNCTION_41(v1);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = OUTLINED_FUNCTION_24_8();
  v6 = type metadata accessor for _ProtoSummaryItem_DetailedText(v5);
  v7 = OUTLINED_FUNCTION_8_12(v6);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_2_52();
  sub_26A4247A4();
  OUTLINED_FUNCTION_73_13();
  sub_26A3AED00();
  OUTLINED_FUNCTION_4_46();
  if (!v0)
  {
    OUTLINED_FUNCTION_37_0();
    sub_26A3AF978();
  }

  OUTLINED_FUNCTION_9_18();
  OUTLINED_FUNCTION_15_17();
}

void sub_26A0D34FC()
{
  OUTLINED_FUNCTION_16_14();
  v1 = OUTLINED_FUNCTION_15_38();
  v2 = OUTLINED_FUNCTION_41(v1);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = OUTLINED_FUNCTION_24_8();
  v6 = type metadata accessor for _ProtoStatusIndicator_Cancelled(v5);
  v7 = OUTLINED_FUNCTION_8_12(v6);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_2_52();
  sub_26A4247A4();
  OUTLINED_FUNCTION_71_7();
  sub_26A3AED00();
  OUTLINED_FUNCTION_4_46();
  if (!v0)
  {
    OUTLINED_FUNCTION_37_0();
    sub_26A3AF978();
  }

  OUTLINED_FUNCTION_9_18();
  OUTLINED_FUNCTION_15_17();
}

void sub_26A0D35D8()
{
  OUTLINED_FUNCTION_16_14();
  v1 = OUTLINED_FUNCTION_15_38();
  v2 = OUTLINED_FUNCTION_41(v1);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = OUTLINED_FUNCTION_24_8();
  v6 = type metadata accessor for _ProtoTable(v5);
  v7 = OUTLINED_FUNCTION_8_12(v6);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_2_52();
  sub_26A4247A4();
  OUTLINED_FUNCTION_70_9();
  sub_26A3AED00();
  OUTLINED_FUNCTION_4_46();
  if (!v0)
  {
    OUTLINED_FUNCTION_37_0();
    sub_26A3AF978();
  }

  OUTLINED_FUNCTION_9_18();
  OUTLINED_FUNCTION_15_17();
}

void sub_26A0D36B4()
{
  OUTLINED_FUNCTION_16_14();
  v1 = OUTLINED_FUNCTION_15_38();
  v2 = OUTLINED_FUNCTION_41(v1);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_24_8();
  v5 = type metadata accessor for _ProtoTextInput();
  v6 = OUTLINED_FUNCTION_8_12(v5);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_2_52();
  sub_26A4247A4();
  sub_26A3AED00();
  OUTLINED_FUNCTION_4_46();
  if (!v0)
  {
    OUTLINED_FUNCTION_37_0();
    sub_26A3AF978();
  }

  OUTLINED_FUNCTION_9_18();
  OUTLINED_FUNCTION_15_17();
}

uint64_t sub_26A0D3990()
{
  OUTLINED_FUNCTION_34_12();
  result = IntentsUIStandard.slots.getter();
  *v0 = result;
  return result;
}

uint64_t sub_26A0D39B8()
{
  OUTLINED_FUNCTION_34_12();
  result = IntentsUIStandard.componentName.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

void sub_26A0D39E0()
{
  OUTLINED_FUNCTION_34_12();
  Table.rows.getter();
  *v0 = v1;
}

uint64_t sub_26A0D3A08()
{
  OUTLINED_FUNCTION_34_12();
  result = StatusIndicatorCancelled.componentName.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_26A0D3A34()
{
  OUTLINED_FUNCTION_34_12();
  result = StatusIndicatorError.componentName.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_26A0D3A5C()
{
  OUTLINED_FUNCTION_34_12();
  result = StatusIndicatorSuccess.componentName.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_26A0D3A84()
{
  OUTLINED_FUNCTION_34_12();
  result = ReferenceButton.componentName.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_26A0D3AAC()
{
  OUTLINED_FUNCTION_34_12();
  result = CustomCanvas.bundleName.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_26A0D3AD4()
{
  OUTLINED_FUNCTION_34_12();
  result = CustomCanvas.viewId.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_26A0D3AFC()
{
  OUTLINED_FUNCTION_34_12();
  result = CustomCanvas.componentName.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_26A0D3B24()
{
  OUTLINED_FUNCTION_34_12();
  result = TableRow.backgrounds.getter();
  *v0 = result;
  return result;
}

uint64_t sub_26A0D3B4C()
{
  OUTLINED_FUNCTION_34_12();
  result = TableRow.componentName.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

void sub_26A0D3B74()
{
  OUTLINED_FUNCTION_34_12();
  VisualProperty.allVisualElements.getter();
  *v0 = v1;
}

uint64_t sub_26A0D3B9C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for _ProtoTable.Row(0);
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = a1;
  }

  else
  {
    v7 = sub_26A424734();
    v8 = a1 + *(a3 + 20);
  }

  return __swift_getEnumTagSinglePayload(v8, a2, v7);
}

uint64_t sub_26A0D3C38(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for _ProtoTable.Row(0);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = a1;
  }

  else
  {
    v9 = sub_26A424734();
    v10 = a1 + *(a4 + 20);
  }

  return __swift_storeEnumTagSinglePayload(v10, a2, a2, v9);
}

uint64_t sub_26A0D3E44(uint64_t *a1, uint64_t a2)
{
  if (a2 == 0x7FFFFFFF)
  {
    v2 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v2) = -1;
    }

    return (v2 + 1);
  }

  else
  {
    sub_26A424794();
    v5 = OUTLINED_FUNCTION_16_9();

    return __swift_getEnumTagSinglePayload(v5, a2, v6);
  }
}

void *sub_26A0D3EC8(void *result, uint64_t a2, int a3)
{
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    sub_26A424794();
    v4 = OUTLINED_FUNCTION_16_9();

    return __swift_storeEnumTagSinglePayload(v4, a2, a2, v5);
  }

  return result;
}

uint64_t sub_26A0D3F44(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C8E8, &qword_26A437B80);
  if (*(*(v4 - 8) + 84) == a2)
  {
    v5 = v4;
    v6 = a1;
  }

  else
  {
    sub_26A424794();
    v6 = OUTLINED_FUNCTION_16_9();
  }

  return __swift_getEnumTagSinglePayload(v6, a2, v5);
}

uint64_t sub_26A0D3FE8(uint64_t a1, uint64_t a2, int a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C8E8, &qword_26A437B80);
  if (*(*(v6 - 8) + 84) == a3)
  {
    v7 = v6;
    v8 = a1;
  }

  else
  {
    sub_26A424794();
    v8 = OUTLINED_FUNCTION_16_9();
  }

  return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
}

uint64_t sub_26A0D4094(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_16_11();
  v4 = type metadata accessor for _ProtoBackgroundElement();

  return __swift_getEnumTagSinglePayload(v2, a2, v4);
}

uint64_t sub_26A0D40D8(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_16_11();
  v4 = type metadata accessor for _ProtoBackgroundElement();

  return __swift_storeEnumTagSinglePayload(v2, a2, a2, v4);
}

uint64_t sub_26A0D4210@<X0>(uint64_t *a1@<X8>)
{
  result = ComponentGroup.id.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_26A0D423C(uint64_t a1, uint64_t a2)
{
  v4 = OUTLINED_FUNCTION_16_11();
  v5 = type metadata accessor for _ProtoResponse.Group(v4);

  return __swift_getEnumTagSinglePayload(v2, a2, v5);
}

uint64_t sub_26A0D4280(uint64_t a1, uint64_t a2)
{
  v4 = OUTLINED_FUNCTION_16_11();
  v5 = type metadata accessor for _ProtoResponse.Group(v4);

  return __swift_storeEnumTagSinglePayload(v2, a2, a2, v5);
}

uint64_t sub_26A0D4318@<X0>(uint64_t *a1@<X8>)
{
  result = SummaryItemButton.componentName.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_26A0D4344@<X0>(uint64_t *a1@<X8>)
{
  result = SummaryItemButton.linkIdentifier.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_26A0D4370()
{
  v2 = OUTLINED_FUNCTION_68_12();

  return __swift_getEnumTagSinglePayload(v1, v0, v2);
}

uint64_t sub_26A0D43A8()
{
  v2 = OUTLINED_FUNCTION_68_12();

  return __swift_storeEnumTagSinglePayload(v1, v0, v0, v2);
}

uint64_t sub_26A0D43E4@<X0>(uint64_t *a1@<X8>)
{
  result = SummaryItemDetailedText.componentName.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_26A0D4410@<X0>(uint64_t *a1@<X8>)
{
  result = SummaryItemDetailedText.linkIdentifier.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_26A0D443C()
{
  v2 = OUTLINED_FUNCTION_58_17();

  return __swift_getEnumTagSinglePayload(v1, v0, v2);
}

uint64_t sub_26A0D4474()
{
  v2 = OUTLINED_FUNCTION_58_17();

  return __swift_storeEnumTagSinglePayload(v1, v0, v0, v2);
}

void *sub_26A0D44B0@<X0>(void *a1@<X8>)
{
  result = CustomElement.idioms.getter();
  *a1 = result;
  return result;
}

uint64_t sub_26A0D44DC(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_16_11();
  v4 = type metadata accessor for _ProtoCustomElement();

  return __swift_getEnumTagSinglePayload(v2, a2, v4);
}

uint64_t sub_26A0D4520(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_16_11();
  v4 = type metadata accessor for _ProtoCustomElement();

  return __swift_storeEnumTagSinglePayload(v2, a2, a2, v4);
}

uint64_t sub_26A0D45B0(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_26A424794();
    if (*(*(v8 - 8) + 84) == a2)
    {
      v9 = v8;
      v10 = *(a3 + 44);
    }

    else
    {
      v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
      v10 = *(a3 + 48);
    }

    return __swift_getEnumTagSinglePayload(a1 + v10, a2, v9);
  }
}

uint64_t sub_26A0D4688(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = sub_26A424794();
    if (*(*(v8 - 8) + 84) == a3)
    {
      v9 = v8;
      v10 = *(a4 + 44);
    }

    else
    {
      v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
      v10 = *(a4 + 48);
    }

    return __swift_storeEnumTagSinglePayload(v5 + v10, a2, a2, v9);
  }

  return result;
}

uint64_t sub_26A0D475C()
{
  v2 = OUTLINED_FUNCTION_16_27();

  return __swift_getEnumTagSinglePayload(v1, v0, v2);
}

uint64_t sub_26A0D4794()
{
  v2 = OUTLINED_FUNCTION_16_27();

  return __swift_storeEnumTagSinglePayload(v1, v0, v0, v2);
}

uint64_t sub_26A0D47D0()
{
  OUTLINED_FUNCTION_34_12();
  result = Response.sections.getter();
  *v0 = result;
  return result;
}

uint64_t sub_26A0D47F8()
{
  OUTLINED_FUNCTION_34_12();
  result = Response.group.getter();
  *v0 = result;
  return result;
}

uint64_t sub_26A0D4820()
{
  OUTLINED_FUNCTION_34_12();
  result = Response.backgrounds.getter();
  *v0 = result;
  return result;
}

uint64_t sub_26A0D4848()
{
  OUTLINED_FUNCTION_34_12();
  result = Response.ornaments.getter();
  *v0 = result;
  return result;
}

uint64_t sub_26A0D4870()
{
  v2 = OUTLINED_FUNCTION_27_28();

  return __swift_getEnumTagSinglePayload(v1, v0, v2);
}

uint64_t sub_26A0D48A8()
{
  v2 = OUTLINED_FUNCTION_27_28();

  return __swift_storeEnumTagSinglePayload(v1, v0, v0, v2);
}

uint64_t sub_26A0D4994(uint64_t a1, uint64_t a2, int *a3)
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
    v8 = sub_26A424794();
    v9 = OUTLINED_FUNCTION_179(v8);
    if (*(v10 + 84) == a2)
    {
      v11 = v9;
      v12 = a3[5];
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
      v14 = OUTLINED_FUNCTION_179(v13);
      if (*(v15 + 84) == a2)
      {
        v11 = v14;
        v12 = a3[6];
      }

      else
      {
        v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&off_28036C7C0, &off_26A427400);
        v12 = a3[7];
      }
    }

    return __swift_getEnumTagSinglePayload(a1 + v12, a2, v11);
  }
}

uint64_t sub_26A0D4AB4(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = sub_26A424794();
    v9 = OUTLINED_FUNCTION_179(v8);
    if (*(v10 + 84) == a3)
    {
      v11 = v9;
      v12 = a4[5];
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
      v14 = OUTLINED_FUNCTION_179(v13);
      if (*(v15 + 84) == a3)
      {
        v11 = v14;
        v12 = a4[6];
      }

      else
      {
        v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&off_28036C7C0, &off_26A427400);
        v12 = a4[7];
      }
    }

    return __swift_storeEnumTagSinglePayload(v5 + v12, a2, a2, v11);
  }

  return result;
}

uint64_t sub_26A0D4BD0()
{
  v2 = OUTLINED_FUNCTION_2_55();

  return __swift_getEnumTagSinglePayload(v1, v0, v2);
}

uint64_t sub_26A0D4C08()
{
  v2 = OUTLINED_FUNCTION_2_55();

  return __swift_storeEnumTagSinglePayload(v1, v0, v0, v2);
}

uint64_t sub_26A0D4C6C(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_26A424794();
    if (*(*(v8 - 8) + 84) == a2)
    {
      v9 = v8;
      v10 = *(a3 + 20);
    }

    else
    {
      v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CCC0, &qword_26A426750);
      v10 = *(a3 + 24);
    }

    return __swift_getEnumTagSinglePayload(a1 + v10, a2, v9);
  }
}

void *sub_26A0D4D44(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v8 = sub_26A424794();
    if (*(*(v8 - 8) + 84) == a3)
    {
      v9 = v8;
      v10 = *(a4 + 20);
    }

    else
    {
      v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CCC0, &qword_26A426750);
      v10 = *(a4 + 24);
    }

    return __swift_storeEnumTagSinglePayload(v5 + v10, a2, a2, v9);
  }

  return result;
}

uint64_t sub_26A0D4E1C()
{
  v0 = OUTLINED_FUNCTION_39_3();
  type metadata accessor for _ProtoTextProperty(v0);
  v1 = OUTLINED_FUNCTION_246();

  return __swift_getEnumTagSinglePayload(v1, v2, v3);
}

uint64_t sub_26A0D4E54()
{
  v1 = OUTLINED_FUNCTION_39_3();
  type metadata accessor for _ProtoTextProperty(v1);
  v2 = OUTLINED_FUNCTION_246();

  return __swift_storeEnumTagSinglePayload(v2, v3, v0, v4);
}

uint64_t sub_26A0D4E90()
{
  v0 = OUTLINED_FUNCTION_39_3();
  type metadata accessor for _ProtoMultilineTextProperty(v0);
  v1 = OUTLINED_FUNCTION_246();

  return __swift_getEnumTagSinglePayload(v1, v2, v3);
}

uint64_t sub_26A0D4EC8()
{
  v1 = OUTLINED_FUNCTION_39_3();
  type metadata accessor for _ProtoMultilineTextProperty(v1);
  v2 = OUTLINED_FUNCTION_246();

  return __swift_storeEnumTagSinglePayload(v2, v3, v0, v4);
}

void *sub_26A0D4F04@<X0>(void *a1@<X8>)
{
  result = CoreChartElement.idioms.getter();
  *a1 = result;
  return result;
}

uint64_t sub_26A0D4F30(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_16_11();
  v4 = type metadata accessor for _ProtoCoreChartElement();

  return __swift_getEnumTagSinglePayload(v2, a2, v4);
}

uint64_t sub_26A0D4F74(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_16_11();
  v4 = type metadata accessor for _ProtoCoreChartElement();

  return __swift_storeEnumTagSinglePayload(v2, a2, a2, v4);
}

uint64_t sub_26A0D5058()
{
  OUTLINED_FUNCTION_34_12();
  result = ImageElement.AppIcon.applicationBundleIdentifier.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_26A0D5080()
{
  OUTLINED_FUNCTION_34_12();
  result = ImageElement.Bundle.name.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_26A0D50A8()
{
  OUTLINED_FUNCTION_34_12();
  result = ImageElement.Bundle.darkModeName.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_26A0D50D0()
{
  OUTLINED_FUNCTION_34_12();
  result = ImageElement.Bundle.bundleId.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_26A0D50F8()
{
  OUTLINED_FUNCTION_34_12();
  result = ImageElement.Bundle.bundlePath.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_26A0D5168()
{
  OUTLINED_FUNCTION_34_12();
  result = ImageElement.PNGData.darkModeData.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_26A0D51B4@<X0>(uint64_t *a1@<X8>)
{
  result = FactItemShortNumber.componentName.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_26A0D51E0@<X0>(uint64_t *a1@<X8>)
{
  result = FactItemShortNumber.linkIdentifier.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_26A0D520C()
{
  v2 = OUTLINED_FUNCTION_62_15();

  return __swift_getEnumTagSinglePayload(v1, v0, v2);
}

uint64_t sub_26A0D5244()
{
  v2 = OUTLINED_FUNCTION_62_15();

  return __swift_storeEnumTagSinglePayload(v1, v0, v0, v2);
}

uint64_t sub_26A0D52A4()
{
  v2 = OUTLINED_FUNCTION_17_34();

  return __swift_getEnumTagSinglePayload(v1, v0, v2);
}

uint64_t sub_26A0D52DC()
{
  v2 = OUTLINED_FUNCTION_17_34();

  return __swift_storeEnumTagSinglePayload(v1, v0, v0, v2);
}

uint64_t sub_26A0D5340@<X0>(uint64_t *a1@<X8>)
{
  result = ReferenceLogo.componentName.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_26A0D536C()
{
  v2 = OUTLINED_FUNCTION_15_43();

  return __swift_getEnumTagSinglePayload(v1, v0, v2);
}

uint64_t sub_26A0D53A4()
{
  v2 = OUTLINED_FUNCTION_15_43();

  return __swift_storeEnumTagSinglePayload(v1, v0, v0, v2);
}

uint64_t sub_26A0D53E0@<X0>(uint64_t *a1@<X8>)
{
  result = SectionHeaderStandard.componentName.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_26A0D540C()
{
  v2 = OUTLINED_FUNCTION_15_44();

  return __swift_getEnumTagSinglePayload(v1, v0, v2);
}

uint64_t sub_26A0D5444()
{
  v2 = OUTLINED_FUNCTION_15_44();

  return __swift_storeEnumTagSinglePayload(v1, v0, v0, v2);
}

uint64_t sub_26A0D54A8()
{
  v2 = OUTLINED_FUNCTION_30_19();

  return __swift_getEnumTagSinglePayload(v1, v0, v2);
}

uint64_t sub_26A0D54E0()
{
  v2 = OUTLINED_FUNCTION_30_19();

  return __swift_storeEnumTagSinglePayload(v1, v0, v0, v2);
}

uint64_t sub_26A0D551C(uint64_t a1, uint64_t a2)
{
  v4 = OUTLINED_FUNCTION_16_11();
  v5 = type metadata accessor for _ProtoPlayerButton(v4);

  return __swift_getEnumTagSinglePayload(v2, a2, v5);
}

uint64_t sub_26A0D5560(uint64_t a1, uint64_t a2)
{
  v4 = OUTLINED_FUNCTION_16_11();
  v5 = type metadata accessor for _ProtoPlayerButton(v4);

  return __swift_storeEnumTagSinglePayload(v2, a2, a2, v5);
}

uint64_t sub_26A0D57BC()
{
  OUTLINED_FUNCTION_1_9();
  result = _ProtoPrimaryHeader_Standard.componentName.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_26A0D5984()
{
  OUTLINED_FUNCTION_1_9();
  result = _ProtoPrimaryHeader_Marquee.componentName.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_26A0D5C1C()
{
  OUTLINED_FUNCTION_1_9();
  result = _ProtoPrimaryHeader_Rich.componentName.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_26A0D5C5C@<X0>(uint64_t *a1@<X8>)
{
  result = SummaryItemShortNumber.componentName.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_26A0D5C88@<X0>(uint64_t *a1@<X8>)
{
  result = SummaryItemShortNumber.linkIdentifier.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_26A0D5CB4()
{
  v2 = OUTLINED_FUNCTION_65_17();

  return __swift_getEnumTagSinglePayload(v1, v0, v2);
}

uint64_t sub_26A0D5CEC()
{
  v2 = OUTLINED_FUNCTION_65_17();

  return __swift_storeEnumTagSinglePayload(v1, v0, v0, v2);
}

uint64_t sub_26A0D5D2C()
{
  v2 = OUTLINED_FUNCTION_16_31();

  return __swift_getEnumTagSinglePayload(v1, v0, v2);
}

uint64_t sub_26A0D5D64()
{
  v2 = OUTLINED_FUNCTION_16_31();

  return __swift_storeEnumTagSinglePayload(v1, v0, v0, v2);
}

uint64_t sub_26A0D5DF4@<X0>(uint64_t *a1@<X8>)
{
  result = ReferenceRich.componentName.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_26A0D5E20()
{
  v2 = OUTLINED_FUNCTION_32_22();

  return __swift_getEnumTagSinglePayload(v1, v0, v2);
}

uint64_t sub_26A0D5E58()
{
  v2 = OUTLINED_FUNCTION_32_22();

  return __swift_storeEnumTagSinglePayload(v1, v0, v0, v2);
}

uint64_t sub_26A0D5F00()
{
  v2 = OUTLINED_FUNCTION_35_29();

  return __swift_getEnumTagSinglePayload(v1, v0, v2);
}

uint64_t sub_26A0D5F38()
{
  v2 = OUTLINED_FUNCTION_35_29();

  return __swift_storeEnumTagSinglePayload(v1, v0, v0, v2);
}

uint64_t sub_26A0D5F9C()
{
  v2 = OUTLINED_FUNCTION_0_98();

  return __swift_getEnumTagSinglePayload(v1, v0, v2);
}

uint64_t sub_26A0D5FD4()
{
  v2 = OUTLINED_FUNCTION_0_98();

  return __swift_storeEnumTagSinglePayload(v1, v0, v0, v2);
}

uint64_t sub_26A0D6014()
{
  v2 = OUTLINED_FUNCTION_17_35();

  return __swift_getEnumTagSinglePayload(v1, v0, v2);
}

uint64_t sub_26A0D604C()
{
  v2 = OUTLINED_FUNCTION_17_35();

  return __swift_storeEnumTagSinglePayload(v1, v0, v0, v2);
}

void *sub_26A0D6100@<X0>(void *a1@<X8>)
{
  result = Player.idioms.getter();
  *a1 = result;
  return result;
}

uint64_t sub_26A0D612C@<X0>(uint64_t *a1@<X8>)
{
  result = Player.identifier.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_26A0D6158(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_16_11();
  type metadata accessor for _ProtoPlayer(v3);
  v4 = OUTLINED_FUNCTION_84_5();

  return __swift_getEnumTagSinglePayload(v4, a2, v5);
}

uint64_t sub_26A0D6198(uint64_t a1, uint64_t a2)
{
  v4 = OUTLINED_FUNCTION_16_11();
  v5 = type metadata accessor for _ProtoPlayer(v4);

  return __swift_storeEnumTagSinglePayload(v2, a2, a2, v5);
}

uint64_t sub_26A0D61EC()
{
  v0 = OUTLINED_FUNCTION_39_3();
  type metadata accessor for _ProtoImageElement.Contact(v0);
  v1 = OUTLINED_FUNCTION_14_36();

  return __swift_getEnumTagSinglePayload(v1, v2, v3);
}

uint64_t sub_26A0D6220()
{
  v0 = OUTLINED_FUNCTION_39_3();
  type metadata accessor for _ProtoImageElement.Contact(v0);
  v1 = OUTLINED_FUNCTION_77_0();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

uint64_t sub_26A0D6254()
{
  v0 = OUTLINED_FUNCTION_39_3();
  type metadata accessor for _ProtoImageElement.Contact.Monogram(v0);
  v1 = OUTLINED_FUNCTION_14_36();

  return __swift_getEnumTagSinglePayload(v1, v2, v3);
}

uint64_t sub_26A0D6288()
{
  v0 = OUTLINED_FUNCTION_39_3();
  type metadata accessor for _ProtoImageElement.Contact.Monogram(v0);
  v1 = OUTLINED_FUNCTION_77_0();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

uint64_t sub_26A0D62BC()
{
  v0 = OUTLINED_FUNCTION_39_3();
  type metadata accessor for _ProtoImageElement.Contact.Avatar(v0);
  v1 = OUTLINED_FUNCTION_14_36();

  return __swift_getEnumTagSinglePayload(v1, v2, v3);
}

uint64_t sub_26A0D62F0()
{
  v0 = OUTLINED_FUNCTION_39_3();
  type metadata accessor for _ProtoImageElement.Contact.Avatar(v0);
  v1 = OUTLINED_FUNCTION_77_0();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

uint64_t sub_26A0D6324@<X0>(uint64_t *a1@<X8>)
{
  result = PrimaryHeaderRich.componentName.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_26A0D6350()
{
  v2 = OUTLINED_FUNCTION_48_25();

  return __swift_getEnumTagSinglePayload(v1, v0, v2);
}

uint64_t sub_26A0D6388()
{
  v2 = OUTLINED_FUNCTION_48_25();

  return __swift_storeEnumTagSinglePayload(v1, v0, v0, v2);
}

uint64_t sub_26A0D63EC()
{
  OUTLINED_FUNCTION_41_3();
  if (v1)
  {
    return OUTLINED_FUNCTION_31_3();
  }

  v3 = v0;
  sub_26A424794();
  v4 = OUTLINED_FUNCTION_42_2(*(v3 + 24));

  return __swift_getEnumTagSinglePayload(v4, v5, v6);
}

void sub_26A0D6454()
{
  OUTLINED_FUNCTION_30_2();
  if (v3)
  {
    *v1 = (v0 - 1);
  }

  else
  {
    v4 = v2;
    sub_26A424794();
    v5 = OUTLINED_FUNCTION_42_2(*(v4 + 24));

    __swift_storeEnumTagSinglePayload(v5, v6, v0, v7);
  }
}

uint64_t sub_26A0D64C0()
{
  OUTLINED_FUNCTION_41_3();
  if (v2)
  {
    return OUTLINED_FUNCTION_31_3();
  }

  v4 = v1;
  v5 = v0;
  v6 = *(sub_26A424794() - 8);
  if (*(v6 + 84) == v5)
  {
    v7 = *(v4 + 20);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
    v7 = *(v4 + 24);
  }

  v8 = OUTLINED_FUNCTION_42_2(v7);

  return __swift_getEnumTagSinglePayload(v8, v9, v10);
}

void sub_26A0D6578()
{
  OUTLINED_FUNCTION_30_2();
  if (v4)
  {
    *v1 = (v0 - 1);
  }

  else
  {
    v5 = v3;
    v6 = v2;
    v7 = *(sub_26A424794() - 8);
    if (*(v7 + 84) == v6)
    {
      v8 = *(v5 + 20);
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
      v8 = *(v5 + 24);
    }

    v9 = OUTLINED_FUNCTION_42_2(v8);

    __swift_storeEnumTagSinglePayload(v9, v10, v0, v11);
  }
}

uint64_t storeEnumTagSinglePayload for _ProtoIdiom(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = 0;
    *(result + 8) = 0;
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

  *(result + 9) = v3;
  return result;
}

uint64_t sub_26A0D66E0(uint64_t result, int a2)
{
  if (a2)
  {
    *result = (a2 - 1);
    v2 = 1;
  }

  else
  {
    v2 = 0;
  }

  *(result + 8) = v2;
  return result;
}

uint64_t sub_26A0D671C(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_26A0D6768(uint64_t a1, uint64_t a2, char a3)
{
  if (a3 != -1)
  {
    return sub_26A0D6740();
  }

  return result;
}

uint64_t _ProtoSystemText_ClarificationTitle.text1.getter@<X0>(uint64_t a1@<X8>)
{
  v4 = OUTLINED_FUNCTION_115();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_41(v6);
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_113();
  v10 = type metadata accessor for _ProtoSystemText_ClarificationTitle();
  sub_26A0E4894(v2 + *(v10 + 24), v1, &qword_28036C7B8, &unk_26A425BF0);
  v11 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_23(v1);
  if (v12)
  {
    *a1 = MEMORY[0x277D84F90];
    *(a1 + 8) = 0;
    v13 = a1 + v11[7];
    _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
    v14 = v11[8];
    v15 = type metadata accessor for _ProtoActionProperty();
    OUTLINED_FUNCTION_92();
    __swift_storeEnumTagSinglePayload(v16, v17, v18, v15);
    v19 = v11[9];
    OUTLINED_FUNCTION_92();
    __swift_storeEnumTagSinglePayload(v20, v21, v22, v15);
    result = OUTLINED_FUNCTION_23(v1);
    if (!v12)
    {
      return sub_26A0E48F0(v1, &qword_28036C7B8, &unk_26A425BF0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_97();
    return sub_26A0E4948();
  }

  return result;
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

uint64_t type metadata accessor for _ProtoSystemText_ClarificationTitle()
{
  result = qword_28036C7F8;
  if (!qword_28036C7F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t _ProtoSystemText_ClarificationTitle.text1.setter()
{
  OUTLINED_FUNCTION_110();
  v1 = type metadata accessor for _ProtoSystemText_ClarificationTitle();
  sub_26A0E48F0(v0 + *(v1 + 24), &qword_28036C7B8, &unk_26A425BF0);
  OUTLINED_FUNCTION_32();
  sub_26A0E4948();
  type metadata accessor for _ProtoTextProperty(0);
  v2 = OUTLINED_FUNCTION_169();

  return __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
}

void (*_ProtoSystemText_ClarificationTitle.text1.modify(void *a1))(uint64_t **a1)
{
  v3 = __swift_coroFrameAllocStub(0x30uLL);
  *a1 = v3;
  *v3 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  OUTLINED_FUNCTION_41(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v3[1] = v6;
  v7 = type metadata accessor for _ProtoTextProperty(0);
  v3[2] = v7;
  OUTLINED_FUNCTION_12(v7);
  v9 = *(v8 + 64);
  v3[3] = __swift_coroFrameAllocStub(v9);
  v10 = __swift_coroFrameAllocStub(v9);
  v3[4] = v10;
  v11 = *(type metadata accessor for _ProtoSystemText_ClarificationTitle() + 24);
  *(v3 + 10) = v11;
  sub_26A0E4894(v1 + v11, v6, &qword_28036C7B8, &unk_26A425BF0);
  OUTLINED_FUNCTION_15(v6);
  if (v12)
  {
    *v10 = MEMORY[0x277D84F90];
    v10[4] = 0;
    v13 = v10 + v7[7];
    _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
    v14 = v7[8];
    v15 = type metadata accessor for _ProtoActionProperty();
    OUTLINED_FUNCTION_92();
    __swift_storeEnumTagSinglePayload(v16, v17, v18, v15);
    v19 = v7[9];
    OUTLINED_FUNCTION_92();
    __swift_storeEnumTagSinglePayload(v20, v21, v22, v15);
    OUTLINED_FUNCTION_15(v6);
    if (!v12)
    {
      sub_26A0E48F0(v6, &qword_28036C7B8, &unk_26A425BF0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_88();
    sub_26A0E4948();
  }

  return sub_26A0D6C3C;
}

void sub_26A0D6C3C(uint64_t **a1)
{
  OUTLINED_FUNCTION_108(a1);
  if (v7)
  {
    OUTLINED_FUNCTION_157();
    sub_26A0E499C();
    sub_26A0E48F0(v6 + v5, &qword_28036C7B8, &unk_26A425BF0);
    OUTLINED_FUNCTION_32();
    sub_26A0E4948();
    OUTLINED_FUNCTION_70();
    sub_26A0E49F0();
  }

  else
  {
    sub_26A0E48F0(v6 + v5, &qword_28036C7B8, &unk_26A425BF0);
    OUTLINED_FUNCTION_32();
    sub_26A0E4948();
    OUTLINED_FUNCTION_70();
  }

  free(v4);
  free(v2);
  free(v3);

  free(v1);
}

void *__swift_coroFrameAllocStub(size_t a1)
{
  if (MEMORY[0x277D84FD8])
  {
    return swift_coroFrameAlloc();
  }

  return malloc(a1);
}

uint64_t _ProtoSystemText_ClarificationTitle.hasText1.getter()
{
  v0 = OUTLINED_FUNCTION_133();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_41(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_46();
  v6 = type metadata accessor for _ProtoSystemText_ClarificationTitle();
  v7 = OUTLINED_FUNCTION_176(*(v6 + 24));
  OUTLINED_FUNCTION_140(v7, v8);
  type metadata accessor for _ProtoTextProperty(0);
  v9 = OUTLINED_FUNCTION_71();
  OUTLINED_FUNCTION_37(v9, v10, v11);
  if (v12)
  {
    v13 = 0;
  }

  else
  {
    v13 = 1;
  }

  v14 = OUTLINED_FUNCTION_44();
  sub_26A0E48F0(v14, v15, &unk_26A425BF0);
  return v13;
}

Swift::Void __swiftcall _ProtoSystemText_ClarificationTitle.clearText1()()
{
  v1 = type metadata accessor for _ProtoSystemText_ClarificationTitle();
  sub_26A0E48F0(v0 + *(v1 + 24), &qword_28036C7B8, &unk_26A425BF0);
  type metadata accessor for _ProtoTextProperty(0);
  v2 = OUTLINED_FUNCTION_58();

  __swift_storeEnumTagSinglePayload(v2, v3, 1, v4);
}

uint64_t _ProtoSystemText_ClarificationTitle.action.getter@<X0>(void *a1@<X8>)
{
  v3 = OUTLINED_FUNCTION_115();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_41(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_46();
  v9 = type metadata accessor for _ProtoSystemText_ClarificationTitle();
  v10 = OUTLINED_FUNCTION_176(*(v9 + 28));
  sub_26A0E4894(v10, v11, &off_28036C7C0, &off_26A427400);
  v12 = type metadata accessor for _ProtoActionProperty();
  OUTLINED_FUNCTION_23(v1);
  if (v13)
  {
    *a1 = MEMORY[0x277D84F90];
    a1[1] = 0;
    a1[2] = 0xE000000000000000;
    v14 = a1 + *(v12 + 24);
    _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
    result = OUTLINED_FUNCTION_23(v1);
    if (!v13)
    {
      return sub_26A0E48F0(v1, &off_28036C7C0, &off_26A427400);
    }
  }

  else
  {
    OUTLINED_FUNCTION_44();
    return sub_26A0E4948();
  }

  return result;
}

uint64_t sub_26A0D6FD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t a6, uint64_t (*a7)(char *))
{
  v8 = a5(0);
  OUTLINED_FUNCTION_41(v8);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v11);
  v13 = &v15 - v12;
  sub_26A0E499C();
  return a7(v13);
}

uint64_t _ProtoSystemText_ClarificationTitle.action.setter()
{
  OUTLINED_FUNCTION_110();
  v1 = type metadata accessor for _ProtoSystemText_ClarificationTitle();
  sub_26A0E48F0(v0 + *(v1 + 28), &off_28036C7C0, &off_26A427400);
  OUTLINED_FUNCTION_14();
  sub_26A0E4948();
  type metadata accessor for _ProtoActionProperty();
  v2 = OUTLINED_FUNCTION_169();

  return __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
}

void (*_ProtoSystemText_ClarificationTitle.action.modify(void *a1))(uint64_t **a1)
{
  v3 = __swift_coroFrameAllocStub(0x30uLL);
  *a1 = v3;
  *v3 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&off_28036C7C0, &off_26A427400);
  OUTLINED_FUNCTION_41(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v3[1] = v6;
  v7 = type metadata accessor for _ProtoActionProperty();
  v3[2] = v7;
  OUTLINED_FUNCTION_12(v7);
  v9 = *(v8 + 64);
  v3[3] = __swift_coroFrameAllocStub(v9);
  v10 = __swift_coroFrameAllocStub(v9);
  v3[4] = v10;
  v11 = *(type metadata accessor for _ProtoSystemText_ClarificationTitle() + 28);
  *(v3 + 10) = v11;
  v12 = OUTLINED_FUNCTION_176(v11);
  sub_26A0E4894(v12, v13, &off_28036C7C0, &off_26A427400);
  v14 = OUTLINED_FUNCTION_71();
  OUTLINED_FUNCTION_37(v14, v15, v7);
  if (v16)
  {
    *v10 = MEMORY[0x277D84F90];
    v10[1] = 0;
    v10[2] = 0xE000000000000000;
    v17 = v10 + *(v7 + 24);
    _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
    v18 = OUTLINED_FUNCTION_71();
    OUTLINED_FUNCTION_37(v18, v19, v7);
    if (!v16)
    {
      sub_26A0E48F0(v6, &off_28036C7C0, &off_26A427400);
    }
  }

  else
  {
    OUTLINED_FUNCTION_125();
    sub_26A0E4948();
  }

  return sub_26A0D726C;
}

void sub_26A0D726C(uint64_t **a1)
{
  OUTLINED_FUNCTION_108(a1);
  if (v7)
  {
    OUTLINED_FUNCTION_157();
    sub_26A0E499C();
    sub_26A0E48F0(v6 + v5, &off_28036C7C0, &off_26A427400);
    OUTLINED_FUNCTION_14();
    sub_26A0E4948();
    OUTLINED_FUNCTION_70();
    sub_26A0E49F0();
  }

  else
  {
    sub_26A0E48F0(v6 + v5, &off_28036C7C0, &off_26A427400);
    OUTLINED_FUNCTION_14();
    sub_26A0E4948();
    OUTLINED_FUNCTION_70();
  }

  free(v4);
  free(v2);
  free(v3);

  free(v1);
}

uint64_t _ProtoSystemText_ClarificationTitle.hasAction.getter()
{
  v0 = OUTLINED_FUNCTION_133();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_41(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_46();
  v6 = type metadata accessor for _ProtoSystemText_ClarificationTitle();
  v7 = OUTLINED_FUNCTION_176(*(v6 + 28));
  OUTLINED_FUNCTION_140(v7, v8);
  type metadata accessor for _ProtoActionProperty();
  v9 = OUTLINED_FUNCTION_71();
  OUTLINED_FUNCTION_37(v9, v10, v11);
  if (v12)
  {
    v13 = 0;
  }

  else
  {
    v13 = 1;
  }

  v14 = OUTLINED_FUNCTION_44();
  sub_26A0E48F0(v14, v15, &off_26A427400);
  return v13;
}

Swift::Void __swiftcall _ProtoSystemText_ClarificationTitle.clearAction()()
{
  v1 = type metadata accessor for _ProtoSystemText_ClarificationTitle();
  sub_26A0E48F0(v0 + *(v1 + 28), &off_28036C7C0, &off_26A427400);
  type metadata accessor for _ProtoActionProperty();
  v2 = OUTLINED_FUNCTION_58();

  __swift_storeEnumTagSinglePayload(v2, v3, 1, v4);
}

uint64_t _ProtoSystemText_ClarificationTitle.componentName.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return OUTLINED_FUNCTION_175();
}

uint64_t _ProtoSystemText_ClarificationTitle.componentName.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t _ProtoSystemText_ClarificationTitle.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for _ProtoSystemText_ClarificationTitle() + 20);
  v4 = sub_26A424794();
  v5 = OUTLINED_FUNCTION_12(v4);
  v7 = *(v6 + 16);

  return v7(a1, v1 + v3, v5);
}

uint64_t _ProtoSystemText_ClarificationTitle.unknownFields.setter()
{
  OUTLINED_FUNCTION_110();
  v2 = *(type metadata accessor for _ProtoSystemText_ClarificationTitle() + 20);
  v3 = sub_26A424794();
  OUTLINED_FUNCTION_12(v3);
  v5 = *(v4 + 40);

  return v5(v1 + v2, v0);
}

uint64_t (*_ProtoSystemText_ClarificationTitle.unknownFields.modify())()
{
  OUTLINED_FUNCTION_110();
  v0 = *(type metadata accessor for _ProtoSystemText_ClarificationTitle() + 20);
  return nullsub_1;
}

uint64_t _ProtoSystemText_ClarificationTitle.init()@<X0>(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0xE000000000000000;
  v2 = type metadata accessor for _ProtoSystemText_ClarificationTitle();
  v3 = a1 + v2[5];
  _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
  v4 = v2[6];
  type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
  v9 = v2[7];
  type metadata accessor for _ProtoActionProperty();
  OUTLINED_FUNCTION_92();

  return __swift_storeEnumTagSinglePayload(v10, v11, v12, v13);
}

uint64_t sub_26A0D76C0()
{
  v0 = sub_26A424AC4();
  __swift_allocate_value_buffer(v0, qword_28036BFD8);
  __swift_project_value_buffer(v0, qword_28036BFD8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C938, &qword_26A42DDA0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C940, &unk_26A425EE0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_26A425BE0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "text_1";
  *(v6 + 8) = 6;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21888];
  v8 = sub_26A424A94();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = 0x26A44B000;
  *(v10 + 1) = 6;
  v10[16] = 2;
  v11 = *MEMORY[0x277D21870];
  v9();
  v12 = (v5 + 2 * v2);
  v13 = v12 + v1[14];
  *v12 = 3;
  *v13 = "component_name";
  *(v13 + 1) = 14;
  v13[16] = 2;
  v9();
  return sub_26A424AA4();
}

uint64_t static _ProtoSystemText_ClarificationTitle._protobuf_nameMap.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_28036BFD0 != -1)
  {
    swift_once();
  }

  v2 = sub_26A424AC4();
  v3 = __swift_project_value_buffer(v2, qword_28036BFD8);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t _ProtoSystemText_ClarificationTitle.decodeMessage<A>(decoder:)()
{
  while (1)
  {
    OUTLINED_FUNCTION_103();
    result = sub_26A424834();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    switch(result)
    {
      case 3:
        OUTLINED_FUNCTION_132();
        sub_26A424924();
        break;
      case 2:
        OUTLINED_FUNCTION_82();
        sub_26A0D7AF8();
        break;
      case 1:
        OUTLINED_FUNCTION_82();
        sub_26A0D7A44();
        break;
    }
  }

  return result;
}

uint64_t sub_26A0D7A44()
{
  v0 = *(type metadata accessor for _ProtoSystemText_ClarificationTitle() + 24);
  type metadata accessor for _ProtoTextProperty(0);
  sub_26A0E4A44(&qword_28036C930, type metadata accessor for _ProtoTextProperty);
  return sub_26A424944();
}

uint64_t sub_26A0D7AF8()
{
  v0 = *(type metadata accessor for _ProtoSystemText_ClarificationTitle() + 28);
  type metadata accessor for _ProtoActionProperty();
  sub_26A0E4A44(&qword_28036C928, type metadata accessor for _ProtoActionProperty);
  return sub_26A424944();
}

uint64_t _ProtoSystemText_ClarificationTitle.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_156();
  OUTLINED_FUNCTION_87();
  result = sub_26A0D7C74(v2, v3, v4, v5);
  if (!v1)
  {
    OUTLINED_FUNCTION_124();
    OUTLINED_FUNCTION_87();
    sub_26A0D7E54(v7, v8, v9, v10);
    v11 = *v0;
    v12 = v0[1];
    v13 = HIBYTE(v12) & 0xF;
    if ((v12 & 0x2000000000000000) == 0)
    {
      v13 = *v0 & 0xFFFFFFFFFFFFLL;
    }

    if (v13)
    {
      sub_26A424A64();
    }

    v14 = v0 + *(type metadata accessor for _ProtoSystemText_ClarificationTitle() + 20);
    OUTLINED_FUNCTION_126();
    return sub_26A424774();
  }

  return result;
}

uint64_t sub_26A0D7C74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v13 - v7;
  v9 = type metadata accessor for _ProtoTextProperty(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v11 = type metadata accessor for _ProtoSystemText_ClarificationTitle();
  sub_26A0E4894(a1 + *(v11 + 24), v8, &qword_28036C7B8, &unk_26A425BF0);
  if (__swift_getEnumTagSinglePayload(v8, 1, v9) == 1)
  {
    return sub_26A0E48F0(v8, &qword_28036C7B8, &unk_26A425BF0);
  }

  sub_26A0E4948();
  sub_26A0E4A44(&qword_28036C930, type metadata accessor for _ProtoTextProperty);
  sub_26A424A84();
  return sub_26A0E49F0();
}

uint64_t sub_26A0D7E54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&off_28036C7C0, &off_26A427400);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v13 - v7;
  v9 = type metadata accessor for _ProtoActionProperty();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v11 = type metadata accessor for _ProtoSystemText_ClarificationTitle();
  sub_26A0E4894(a1 + *(v11 + 28), v8, &off_28036C7C0, &off_26A427400);
  if (__swift_getEnumTagSinglePayload(v8, 1, v9) == 1)
  {
    return sub_26A0E48F0(v8, &off_28036C7C0, &off_26A427400);
  }

  sub_26A0E4948();
  sub_26A0E4A44(&qword_28036C928, type metadata accessor for _ProtoActionProperty);
  sub_26A424A84();
  return sub_26A0E49F0();
}

void static _ProtoSystemText_ClarificationTitle.== infix(_:_:)()
{
  OUTLINED_FUNCTION_76();
  v2 = v1;
  v4 = v3;
  v70 = type metadata accessor for _ProtoActionProperty();
  v5 = OUTLINED_FUNCTION_12(v70);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_11();
  v66 = v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&off_28036C7C0, &off_26A427400);
  OUTLINED_FUNCTION_41(v9);
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_42();
  v67 = v13;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7C8, &qword_26A425C00);
  OUTLINED_FUNCTION_12(v68);
  v15 = *(v14 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_42();
  v71 = v17;
  v18 = OUTLINED_FUNCTION_45();
  v19 = type metadata accessor for _ProtoTextProperty(v18);
  v20 = OUTLINED_FUNCTION_12(v19);
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_18();
  v23 = OUTLINED_FUNCTION_104();
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(v23, v24);
  OUTLINED_FUNCTION_41(v25);
  v27 = *(v26 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_113();
  v29 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7D0, &qword_26A426DE0) - 8);
  v30 = *(*v29 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v31);
  v33 = &v66 - v32;
  v69 = type metadata accessor for _ProtoSystemText_ClarificationTitle();
  v34 = *(v69 + 24);
  v35 = v29[14];
  v72 = v4;
  sub_26A0E4894(v4 + v34, v33, &qword_28036C7B8, &unk_26A425BF0);
  v73 = v2;
  sub_26A0E4894(v2 + v34, &v33[v35], &qword_28036C7B8, &unk_26A425BF0);
  OUTLINED_FUNCTION_23(v33);
  if (v36)
  {
    OUTLINED_FUNCTION_23(&v33[v35]);
    if (v36)
    {
      sub_26A0E48F0(v33, &qword_28036C7B8, &unk_26A425BF0);
      goto LABEL_11;
    }

LABEL_9:
    v37 = &qword_28036C7D0;
    v38 = &qword_26A426DE0;
    v39 = v33;
LABEL_36:
    sub_26A0E48F0(v39, v37, v38);
    goto LABEL_37;
  }

  sub_26A0E4894(v33, v0, &qword_28036C7B8, &unk_26A425BF0);
  OUTLINED_FUNCTION_23(&v33[v35]);
  if (v36)
  {
    sub_26A0E49F0();
    goto LABEL_9;
  }

  sub_26A0E4948();
  v40 = OUTLINED_FUNCTION_98();
  v42 = static _ProtoTextProperty.== infix(_:_:)(v40, v41);
  sub_26A0E49F0();
  OUTLINED_FUNCTION_132();
  sub_26A0E49F0();
  sub_26A0E48F0(v33, &qword_28036C7B8, &unk_26A425BF0);
  if ((v42 & 1) == 0)
  {
    goto LABEL_37;
  }

LABEL_11:
  v43 = v69;
  v44 = *(v69 + 28);
  v45 = *(v68 + 48);
  v47 = v71;
  v46 = v72;
  OUTLINED_FUNCTION_140(v72 + v44, v71);
  v48 = v73;
  OUTLINED_FUNCTION_140(v73 + v44, v47 + v45);
  v49 = OUTLINED_FUNCTION_107();
  v50 = v70;
  OUTLINED_FUNCTION_37(v49, v51, v70);
  if (!v36)
  {
    v56 = v67;
    sub_26A0E4894(v47, v67, &off_28036C7C0, &off_26A427400);
    OUTLINED_FUNCTION_37(v47 + v45, 1, v50);
    if (!v57)
    {
      v58 = v66;
      sub_26A0E4948();
      v59 = *v56;
      v60 = *v58;
      sub_26A0E36D8();
      if (v61)
      {
        v62 = v56[1] == v58[1] && v56[2] == v58[2];
        if (v62 || (sub_26A425354() & 1) != 0)
        {
          v63 = *(v50 + 24);
          sub_26A424794();
          OUTLINED_FUNCTION_1();
          sub_26A0E4A44(v64, v65);
          LOBYTE(v63) = OUTLINED_FUNCTION_141();
          sub_26A0E49F0();
          OUTLINED_FUNCTION_168();
          sub_26A0E49F0();
          sub_26A0E48F0(v47, &off_28036C7C0, &off_26A427400);
          if ((v63 & 1) == 0)
          {
            goto LABEL_37;
          }

          goto LABEL_16;
        }
      }

      sub_26A0E49F0();
      OUTLINED_FUNCTION_109();
      sub_26A0E49F0();
      v37 = &off_28036C7C0;
      v38 = &off_26A427400;
      goto LABEL_35;
    }

    sub_26A0E49F0();
LABEL_25:
    v37 = &qword_28036C7C8;
    v38 = &qword_26A425C00;
LABEL_35:
    v39 = v47;
    goto LABEL_36;
  }

  OUTLINED_FUNCTION_37(v47 + v45, 1, v50);
  if (!v36)
  {
    goto LABEL_25;
  }

  sub_26A0E48F0(v47, &off_28036C7C0, &off_26A427400);
LABEL_16:
  v52 = *v46 == *v48 && v46[1] == v48[1];
  if (v52 || (sub_26A425354() & 1) != 0)
  {
    v53 = *(v43 + 20);
    sub_26A424794();
    OUTLINED_FUNCTION_1();
    sub_26A0E4A44(v54, v55);
    OUTLINED_FUNCTION_117();
  }

LABEL_37:
  OUTLINED_FUNCTION_75();
}

uint64_t _ProtoSystemText_ClarificationTitle.hashValue.getter()
{
  sub_26A425504();
  type metadata accessor for _ProtoSystemText_ClarificationTitle();
  sub_26A0E4A44(&dword_28036C7D8, type metadata accessor for _ProtoSystemText_ClarificationTitle);
  sub_26A424B44();
  return sub_26A425554();
}

uint64_t (*sub_26A0D8664(uint64_t a1, uint64_t a2))()
{
  result = nullsub_1;
  v4 = v2 + *(a2 + 20);
  return result;
}

uint64_t sub_26A0D86B8(uint64_t a1, uint64_t a2)
{
  v4 = sub_26A0E4A44(&qword_28036C810, type metadata accessor for _ProtoSystemText_ClarificationTitle);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_26A0D8738(uint64_t a1)
{
  v2 = sub_26A0E4A44(&qword_28036C7E8, type metadata accessor for _ProtoSystemText_ClarificationTitle);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_26A0D87A8()
{
  sub_26A0E4A44(&qword_28036C7E8, type metadata accessor for _ProtoSystemText_ClarificationTitle);

  return sub_26A4249B4();
}

uint64_t sub_26A0D8824()
{
  sub_26A425504();
  sub_26A424B44();
  return sub_26A425554();
}

void sub_26A0D887C()
{
  OUTLINED_FUNCTION_76();
  v2 = v1;
  OUTLINED_FUNCTION_110();
  v3 = type metadata accessor for _ProtoSeparators();
  v4 = OUTLINED_FUNCTION_12(v3);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_159(v7);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C818, &unk_26A42D9A0);
  OUTLINED_FUNCTION_41(v8);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_42();
  v92 = v12;
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C820, &unk_26A425DD0);
  OUTLINED_FUNCTION_12(v94);
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_42();
  v101 = v16;
  v17 = OUTLINED_FUNCTION_45();
  v98 = type metadata accessor for _ProtoResponse.Component.OneOf_Value(v17);
  v18 = OUTLINED_FUNCTION_12(v98);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_18();
  v23 = v22 - v21;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C828, &unk_26A4276D0);
  OUTLINED_FUNCTION_41(v24);
  v26 = *(v25 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_42();
  v93 = v28;
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C830, &unk_26A425DE0);
  OUTLINED_FUNCTION_12(v95);
  v30 = *(v29 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_42();
  v100 = v32;
  v33 = OUTLINED_FUNCTION_45();
  v34 = type metadata accessor for _ProtoResponse.Component(v33);
  v35 = OUTLINED_FUNCTION_10(v34);
  v37 = *(v36 + 64);
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_21();
  v96 = v38 - v39;
  OUTLINED_FUNCTION_95();
  MEMORY[0x28223BE20](v40);
  v43 = &v86 - v42;
  v44 = *(v0 + 16);
  if (v44 != *(v2 + 16) || !v44 || v0 == v2)
  {
    goto LABEL_62;
  }

  OUTLINED_FUNCTION_20(v41);
  v99 = v0 + v45;
  v46 = v2 + v45;
  v48 = *(v47 + 72);
  v87 = v23;
  v88 = v48;
  v90 = v43;
  v91 = v3;
  v49 = v96;
  v89 = v34;
  while (1)
  {
    sub_26A0E499C();
    sub_26A0E499C();
    v50 = *(v95 + 48);
    v51 = v100;
    sub_26A0E4894(v43, v100, &qword_28036C828, &unk_26A4276D0);
    sub_26A0E4894(v49, v51 + v50, &qword_28036C828, &unk_26A4276D0);
    OUTLINED_FUNCTION_37(v51, 1, v98);
    if (v56)
    {
      OUTLINED_FUNCTION_37(v100 + v50, 1, v98);
      if (!v56)
      {
        goto LABEL_58;
      }

      v52 = OUTLINED_FUNCTION_151();
      sub_26A0E48F0(v52, v53, &unk_26A4276D0);
    }

    else
    {
      v54 = v100;
      v55 = v93;
      sub_26A0E4894(v100, v93, &qword_28036C828, &unk_26A4276D0);
      OUTLINED_FUNCTION_37(v54 + v50, 1, v98);
      if (v56)
      {
        sub_26A0E49F0();
LABEL_58:
        sub_26A0E48F0(v100, &qword_28036C830, &unk_26A425DE0);
        goto LABEL_61;
      }

      v57 = v87;
      sub_26A0E4948();
      static _ProtoResponse.Component.OneOf_Value.== infix(_:_:)(v55, v57, v58, v59, v60, v61, v62, v63, v86, v87, v88, v89, v90, v91, v92, v93, v94, v95, v96, v97);
      OUTLINED_FUNCTION_29();
      v34 = v89;
      sub_26A0E49F0();
      sub_26A0E49F0();
      v64 = OUTLINED_FUNCTION_66();
      sub_26A0E48F0(v64, v65, &unk_26A4276D0);
      if ((v50 & 1) == 0)
      {
        goto LABEL_61;
      }
    }

    v66 = *(v34 + 24);
    v67 = v43;
    v68 = *(v94 + 48);
    v69 = v101;
    sub_26A0E4894(&v67[v66], v101, &qword_28036C818, &unk_26A42D9A0);
    OUTLINED_FUNCTION_143(v49 + v66, v69 + v68);
    v70 = OUTLINED_FUNCTION_155();
    v71 = v91;
    OUTLINED_FUNCTION_25(v70, v72);
    if (v56)
    {
      OUTLINED_FUNCTION_15(v101 + v68);
      if (!v56)
      {
        goto LABEL_60;
      }

      sub_26A0E48F0(v101, &qword_28036C818, &unk_26A42D9A0);
      v43 = v90;
      v49 = v96;
      goto LABEL_29;
    }

    v73 = v46;
    v74 = v101;
    v69 = v92;
    OUTLINED_FUNCTION_143(v101, v92);
    OUTLINED_FUNCTION_15(v74 + v68);
    if (v75)
    {
      break;
    }

    v76 = v97;
    sub_26A0E4948();
    v77 = *v69;
    v78 = *v76;
    if (*(v76 + 8) == 1)
    {
      v46 = v73;
      switch(v78)
      {
        case 1:
          if (v77 != 1)
          {
            goto LABEL_55;
          }

          goto LABEL_23;
        case 2:
          if (v77 != 2)
          {
            goto LABEL_55;
          }

          goto LABEL_23;
        case 3:
          if (v77 != 3)
          {
            goto LABEL_55;
          }

          goto LABEL_23;
        case 4:
          if (v77 != 4)
          {
            goto LABEL_55;
          }

          goto LABEL_23;
        case 5:
          if (v77 != 5)
          {
            goto LABEL_55;
          }

          goto LABEL_23;
        case 6:
          if (v77 != 6)
          {
            goto LABEL_55;
          }

          goto LABEL_23;
        default:
          if (v77)
          {
            goto LABEL_55;
          }

          goto LABEL_23;
      }
    }

    v46 = v73;
    if (v77 != v78)
    {
LABEL_55:
      sub_26A0E49F0();
      sub_26A0E49F0();
      sub_26A0E48F0(v101, &qword_28036C818, &unk_26A42D9A0);
      goto LABEL_61;
    }

LABEL_23:
    v79 = *(v69 + 16);
    v80 = *(v97 + 16);
    if (*(v97 + 24) == 1)
    {
      switch(v80)
      {
        case 1:
          if (v79 != 1)
          {
            goto LABEL_55;
          }

          goto LABEL_28;
        case 2:
          if (v79 != 2)
          {
            goto LABEL_55;
          }

          goto LABEL_28;
        case 3:
          if (v79 != 3)
          {
            goto LABEL_55;
          }

          goto LABEL_28;
        case 4:
          if (v79 != 4)
          {
            goto LABEL_55;
          }

          goto LABEL_28;
        case 5:
          if (v79 != 5)
          {
            goto LABEL_55;
          }

          goto LABEL_28;
        case 6:
          if (v79 != 6)
          {
            goto LABEL_55;
          }

          goto LABEL_28;
        default:
          if (v79)
          {
            goto LABEL_55;
          }

          goto LABEL_28;
      }
    }

    if (v79 != v80)
    {
      goto LABEL_55;
    }

LABEL_28:
    v81 = *(v71 + 24);
    sub_26A424794();
    OUTLINED_FUNCTION_0();
    sub_26A0E4A44(qword_2815792E0, v82);
    sub_26A424B64();
    OUTLINED_FUNCTION_26();
    v34 = v89;
    v83 = v101;
    sub_26A0E49F0();
    sub_26A0E49F0();
    sub_26A0E48F0(v83, &qword_28036C818, &unk_26A42D9A0);
    v49 = v96;
    v43 = v90;
    if ((v69 & 1) == 0)
    {
      goto LABEL_61;
    }

LABEL_29:
    v84 = *(v34 + 20);
    sub_26A424794();
    OUTLINED_FUNCTION_0();
    sub_26A0E4A44(qword_2815792E0, v85);
    sub_26A424B64();
    OUTLINED_FUNCTION_27();
    sub_26A0E49F0();
    sub_26A0E49F0();
    if (v69)
    {
      v46 += v88;
      v99 += v88;
      if (--v44)
      {
        continue;
      }
    }

    goto LABEL_62;
  }

  sub_26A0E49F0();
LABEL_60:
  sub_26A0E48F0(v101, &qword_28036C820, &unk_26A425DD0);
LABEL_61:
  sub_26A0E49F0();
  sub_26A0E49F0();
LABEL_62:
  OUTLINED_FUNCTION_57();
  OUTLINED_FUNCTION_75();
}