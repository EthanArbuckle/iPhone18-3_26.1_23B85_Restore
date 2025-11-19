uint64_t sub_26A7EB840@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v23 = a2;
  v3 = sub_26A84B1D8();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AA438);
  v8 = v7 - 8;
  MEMORY[0x28223BE20](v7);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = (&v21 - v12);
  v25[0] = sub_26A84FC08();
  v25[1] = 0;
  v26 = 0;
  sub_26A7EBB40(a1, &v27);
  v22 = *(a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB6F8) + 28) + 32);
  v14 = *(a1 + *(type metadata accessor for FactItemImageRightView() + 44));
  (*(v4 + 104))(v6, *MEMORY[0x277D62B38], v3);
  KeyPath = swift_getKeyPath();
  v16 = (v13 + *(v8 + 44));
  v17 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AA440) + 28);
  (*(v4 + 32))(v16 + v17, v6, v3);
  __swift_storeEnumTagSinglePayload(v16 + v17, 0, 1, v3);
  *v16 = KeyPath;
  *v13 = v14;
  sub_26A4DBD68(v25, v24, &qword_2803B8BD8);
  sub_26A4DBD68(v13, v10, &qword_2803AA438);
  v18 = v23;
  sub_26A4DBD68(v24, v23, &qword_2803B8BD8);
  *(v18 + 616) = v22;
  *(v18 + 624) = 0;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B8BE0);
  sub_26A4DBD68(v10, v18 + *(v19 + 64), &qword_2803AA438);

  sub_26A4DBD10(v13, &qword_2803AA438);
  sub_26A4DBD10(v25, &qword_2803B8BD8);
  sub_26A4DBD10(v10, &qword_2803AA438);
  return sub_26A4DBD10(v24, &qword_2803B8BD8);
}

uint64_t sub_26A7EBB40@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for FactItemImageRightView();
  v5 = *(a1 + *(v4 + 40));
  if (qword_2803A9008 != -1)
  {
    swift_once();
  }

  sub_26A4DBD68(&unk_2803B8B40, v16, &qword_2803AA880);
  sub_26A6AEE74(__src);
  memcpy(v15, __src, sizeof(v15));
  v16[11] = 0;
  v16[10] = sub_26A80A810;
  v14 = v5;
  v6 = *(a1 + *(v4 + 36));
  v7 = qword_2803A9048;

  if (v7 != -1)
  {
    swift_once();
  }

  sub_26A4DBD68(&unk_2803D28A0, v13, &qword_2803AA880);
  sub_26A6AEE74(v18);
  memcpy(v12, v18, sizeof(v12));
  v13[11] = 0;
  v13[10] = sub_26A80A810;
  v11 = v6;
  sub_26A4DBD68(&v14, v10, &qword_2803AAFE0);
  sub_26A4DBD68(&v11, v9, &qword_2803AAFE0);
  sub_26A4DBD68(v10, a2, &qword_2803AAFE0);
  sub_26A4DBD68(v9, a2 + 296, &qword_2803AAFE0);

  sub_26A4DBD10(&v11, &qword_2803AAFE0);
  sub_26A4DBD10(&v14, &qword_2803AAFE0);
  sub_26A4DBD10(v9, &qword_2803AAFE0);
  return sub_26A4DBD10(v10, &qword_2803AAFE0);
}

uint64_t sub_26A7EBD58@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v25 = a2;
  v3 = sub_26A84B1D8();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AA438);
  MEMORY[0x28223BE20](v23);
  v24 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = (&v23 - v9);
  v11 = type metadata accessor for FactItemImageRightView();
  v12 = *(a1 + v11[10]);
  if (qword_2803A9008 != -1)
  {
    swift_once();
  }

  sub_26A4DBD68(&unk_2803B8B40, v33, &qword_2803AA880);
  sub_26A6AEE74(v34);
  memcpy(v32, v34, sizeof(v32));
  v33[11] = 0;
  v33[10] = sub_26A80A810;
  v31 = v12;
  v13 = *(a1 + v11[9]);
  v14 = qword_2803A9048;

  if (v14 != -1)
  {
    swift_once();
  }

  sub_26A4DBD68(&unk_2803D28A0, v30, &qword_2803AA880);
  sub_26A6AEE74(v35);
  memcpy(v29, v35, sizeof(v29));
  v30[11] = 0;
  v30[10] = sub_26A80A810;
  v28 = v13;
  v15 = *(a1 + v11[11]);
  (*(v4 + 104))(v6, *MEMORY[0x277D62B38], v3);
  KeyPath = swift_getKeyPath();
  v17 = (v10 + *(v23 + 36));
  v18 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AA440) + 28);
  (*(v4 + 32))(v17 + v18, v6, v3);
  __swift_storeEnumTagSinglePayload(v17 + v18, 0, 1, v3);
  *v17 = KeyPath;
  *v10 = v15;
  sub_26A4DBD68(&v31, v27, &qword_2803AAFE0);
  sub_26A4DBD68(&v28, v26, &qword_2803AAFE0);
  v19 = v24;
  sub_26A4DBD68(v10, v24, &qword_2803AA438);
  v20 = v25;
  sub_26A4DBD68(v27, v25, &qword_2803AAFE0);
  sub_26A4DBD68(v26, v20 + 296, &qword_2803AAFE0);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B8BD0);
  sub_26A4DBD68(v19, v20 + *(v21 + 64), &qword_2803AA438);

  sub_26A4DBD10(v10, &qword_2803AA438);
  sub_26A4DBD10(&v28, &qword_2803AAFE0);
  sub_26A4DBD10(&v31, &qword_2803AAFE0);
  sub_26A4DBD10(v19, &qword_2803AA438);
  sub_26A4DBD10(v26, &qword_2803AAFE0);
  return sub_26A4DBD10(v27, &qword_2803AAFE0);
}

unint64_t sub_26A7EC1C0()
{
  result = qword_2803B8BA8;
  if (!qword_2803B8BA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B8B90);
    sub_26A4DBCC8(&qword_2803B8BB0, &qword_2803A95C8);
    sub_26A4DBCC8(qword_28157DD90, &qword_2803A91D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B8BA8);
  }

  return result;
}

void sub_26A7EC2A4()
{
  sub_26A8502D8();
  sub_26A8503C8();
  sub_26A850428();

  sub_26A84FEA8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B1D80);
  sub_26A4DBCC8(&qword_28157D8B8, &qword_2803B1D80);
  sub_26A8516A8();
  sub_26A80D690();
}

uint64_t OUTLINED_FUNCTION_4_84(uint64_t a1)
{

  return sub_26A4DBD10(a1, v1);
}

uint64_t sub_26A7EC39C(void (*a1)(uint64_t *__return_ptr, __int128 *), uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = (a3 + 32);
  v7 = MEMORY[0x277D84F90];
  if (v5)
  {
    while (1)
    {
      v13 = *v6;

      a1(&v14, &v13);
      if (v3)
      {
        break;
      }

      v8 = v14;
      if (v14)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_26A7A1AC0();
          v7 = v10;
        }

        v9 = *(v7 + 16);
        if (v9 >= *(v7 + 24) >> 1)
        {
          sub_26A7A1AC0();
          v7 = v11;
        }

        *(v7 + 16) = v9 + 1;
        *(v7 + 8 * v9 + 32) = v8;
      }

      ++v6;
      if (!--v5)
      {
        return v7;
      }
    }
  }

  return v7;
}

uint64_t sub_26A7EC4D0(void (*a1)(uint64_t *__return_ptr, void *), uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = (a3 + 40);
  v7 = MEMORY[0x277D84F90];
  if (v5)
  {
    while (1)
    {
      v8 = *v6;
      v14[0] = *(v6 - 1);
      v14[1] = v8;

      a1(&v15, v14);
      if (v3)
      {
        break;
      }

      v9 = v15;
      if (v15)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_26A7A2668();
          v7 = v11;
        }

        v10 = *(v7 + 16);
        if (v10 >= *(v7 + 24) >> 1)
        {
          sub_26A7A2668();
          v7 = v12;
        }

        *(v7 + 16) = v10 + 1;
        *(v7 + 8 * v10 + 32) = v9;
      }

      v6 += 2;
      if (!--v5)
      {
        return v7;
      }
    }
  }

  return v7;
}

void sub_26A7EC600()
{
  OUTLINED_FUNCTION_28_0();
  v1 = v0;
  v3 = v2;
  v4 = sub_26A84AF58();
  OUTLINED_FUNCTION_15();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_41();
  v10 = v9 - v8;
  if (qword_28157E660 != -1)
  {
    OUTLINED_FUNCTION_3();
  }

  v28 = xmmword_281588758[0];
  v29 = unk_281588768;
  v30 = xmmword_281588778;
  v31 = unk_281588788;
  v26 = unk_281588788;
  v27 = xmmword_281588778;
  sub_26A4D7E54();
  sub_26A6AEE74(v32);
  memcpy((v3 + 16), v32, 0xC0uLL);
  *(v3 + 208) = v27;
  *(v3 + 224) = v26;
  *(v3 + 240) = v28;
  *(v3 + 256) = v29;
  *(v3 + 272) = v30;
  *(v3 + 288) = v31;
  *(v3 + 304) = swift_getKeyPath();
  *(v3 + 312) = 0;
  v11 = type metadata accessor for RichTextView(0);
  v12 = v11[7];
  *(v3 + v12) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91A8);
  swift_storeEnumTagMultiPayload();
  KeyPath = swift_getKeyPath();
  OUTLINED_FUNCTION_162(KeyPath);
  v14 = swift_getKeyPath();
  OUTLINED_FUNCTION_162(v14);
  v15 = v3 + v11[10];
  *v15 = swift_getKeyPath();
  *(v15 + 8) = 0;
  v16 = swift_getKeyPath();
  OUTLINED_FUNCTION_162(v16);
  v17 = swift_getKeyPath();
  OUTLINED_FUNCTION_162(v17);
  v18 = v11[13];
  *(v3 + v18) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB430);
  swift_storeEnumTagMultiPayload();
  sub_26A84AF68();
  sub_26A84AF48();
  (*(v6 + 8))(v10, v4);
  type metadata accessor for RichTextView.ViewModel();
  v19 = swift_allocObject();
  sub_26A7EFF40();
  v21 = v20;

  *(v19 + 16) = v21;
  OUTLINED_FUNCTION_16_35();
  sub_26A7F50E8(v22);
  *v3 = sub_26A84F258();
  *(v3 + 8) = v23;
  v24 = v11[14];
  sub_26A84AFA8();
  OUTLINED_FUNCTION_46();
  (*(v25 + 32))(v3 + v24, v1);
  OUTLINED_FUNCTION_27_0();
}

id sub_26A7EC91C()
{
  v0 = sub_26A851788();

  v1 = [swift_getObjCClassFromMetadata() bundleWithIdentifier_];

  return v1;
}

uint64_t RichTextView.init(_:)@<X0>(uint64_t a1@<X8>)
{
  if (qword_28157E660 != -1)
  {
    OUTLINED_FUNCTION_3();
  }

  v17 = xmmword_281588758[0];
  v18 = unk_281588768;
  v19 = xmmword_281588778;
  v20 = xmmword_281588788;
  v15 = xmmword_281588788;
  v16 = xmmword_281588778;
  sub_26A4D7E54();
  sub_26A6AEE74(__src);
  memcpy((a1 + 16), __src, 0xC0uLL);
  *(a1 + 208) = v16;
  *(a1 + 224) = v15;
  *(a1 + 240) = v17;
  *(a1 + 256) = v18;
  *(a1 + 272) = v19;
  *(a1 + 288) = v20;
  *(a1 + 304) = swift_getKeyPath();
  *(a1 + 312) = 0;
  v2 = type metadata accessor for RichTextView(0);
  v3 = v2[7];
  *(a1 + v3) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91A8);
  swift_storeEnumTagMultiPayload();
  KeyPath = swift_getKeyPath();
  OUTLINED_FUNCTION_9_48(KeyPath);
  v5 = swift_getKeyPath();
  OUTLINED_FUNCTION_9_48(v5);
  v6 = a1 + v2[10];
  *v6 = swift_getKeyPath();
  *(v6 + 8) = 0;
  v7 = swift_getKeyPath();
  OUTLINED_FUNCTION_9_48(v7);
  v8 = swift_getKeyPath();
  OUTLINED_FUNCTION_9_48(v8);
  v9 = v2[13];
  *(a1 + v9) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB430);
  swift_storeEnumTagMultiPayload();
  type metadata accessor for RichTextView.ViewModel();
  v10 = swift_allocObject();
  sub_26A7EFF40();
  *(v10 + 16) = v11;
  OUTLINED_FUNCTION_16_35();
  sub_26A7F50E8(v12);
  *a1 = sub_26A84F258();
  *(a1 + 8) = v13;
  sub_26A8517E8();
}

uint64_t sub_26A7ECBE4()
{
  OUTLINED_FUNCTION_6_8();
  result = sub_26A711488();
  *v0 = result;
  return result;
}

uint64_t sub_26A7ECC30()
{
  OUTLINED_FUNCTION_6_8();
  result = sub_26A7115F4();
  *v0 = result;
  return result;
}

uint64_t sub_26A7ECC7C()
{
  OUTLINED_FUNCTION_6_8();
  result = sub_26A71186C();
  *v0 = result;
  *(v0 + 8) = v2 & 1;
  return result;
}

uint64_t sub_26A7ECCDC()
{
  OUTLINED_FUNCTION_6_8();
  result = sub_26A5DA688();
  *v0 = result;
  return result;
}

uint64_t sub_26A7ECD28()
{
  v1 = sub_26A84F988();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v9[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = v0 + *(type metadata accessor for RichTextView(0) + 44);
  v6 = *v5;
  if (*(v5 + 8) != 1)
  {

    sub_26A851EA8();
    v7 = sub_26A8501F8();
    sub_26A84EA78();

    sub_26A84F978();
    swift_getAtKeyPath();
    sub_26A49035C(v6, 0);
    (*(v2 + 8))(v4, v1);
    return v9[15];
  }

  return v6;
}

uint64_t sub_26A7ECE80()
{
  v1 = sub_26A84F988();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = (v0 + *(type metadata accessor for RichTextView(0) + 48));
  v6 = *v5;
  v7 = *(v5 + 8);

  if ((v7 & 1) == 0)
  {
    sub_26A851EA8();
    v8 = sub_26A8501F8();
    sub_26A84EA78();

    sub_26A84F978();
    swift_getAtKeyPath();
    j__swift_release();
    (*(v2 + 8))(v4, v1);
    return v10[1];
  }

  return v6;
}

uint64_t sub_26A7ECFD4@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_26A84F988();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB430);
  MEMORY[0x28223BE20](v6);
  v8 = &v12 - v7;
  type metadata accessor for RichTextView(0);
  sub_26A4D7E54();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = sub_26A84EE68();
    return (*(*(v9 - 8) + 32))(a1, v8, v9);
  }

  else
  {
    sub_26A851EA8();
    v11 = sub_26A8501F8();
    sub_26A84EA78();

    sub_26A84F978();
    swift_getAtKeyPath();

    return (*(v3 + 8))(v5, v2);
  }
}

void RichTextView.body.getter()
{
  OUTLINED_FUNCTION_28_0();
  v35 = v0;
  sub_26A84EE68();
  OUTLINED_FUNCTION_15();
  v33 = v2;
  v34 = v1;
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_41();
  v32 = v4 - v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B8BF8);
  OUTLINED_FUNCTION_46();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v6);
  v8 = &v31 - v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B8C00);
  OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v9);
  v11 = &v31 - v10;
  sub_26A7ED4B8();
  if (v15)
  {
    v16 = v12;
    v17 = v13;
    v18 = v14 & 1;
    v36 = v14 & 1;
    sub_26A7EDB70(v11);
    sub_26A7F3BE4();
    v19 = sub_26A851248();
    sub_26A4EC448(v16, v17, v18);
  }

  else
  {
    *v8 = sub_26A7EDFC4();
    *(v8 + 1) = 0;
    sub_26A7EE3C0();
    OUTLINED_FUNCTION_26_20();
    sub_26A4D7E54();
    sub_26A7F3AB0();
    v19 = sub_26A851248();
    OUTLINED_FUNCTION_14_5();
    sub_26A4DBD10(v20, v21);
  }

  KeyPath = swift_getKeyPath();
  v23 = sub_26A7ECD28();
  v25 = v33;
  v24 = v34;
  v26 = v32;
  if (v23 == 2 || (v23 & 1) == 0)
  {
    sub_26A7ECFD4(v32);
  }

  else
  {
    (*(v33 + 104))(v32, *MEMORY[0x277CDF3D0], v34);
  }

  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B8C30);
  v28 = v35;
  v29 = (v35 + *(v27 + 36));
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803A9E48);
  (*(v25 + 32))(v29 + *(v30 + 28), v26, v24);
  *v29 = KeyPath;
  *v28 = v19;
  OUTLINED_FUNCTION_27_0();
}

void sub_26A7ED4B8()
{
  OUTLINED_FUNCTION_28_0();
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B8D70);
  OUTLINED_FUNCTION_46();
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_19();
  v79 = v2;
  OUTLINED_FUNCTION_92();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_27_1();
  v95 = v4;
  OUTLINED_FUNCTION_25_2();
  v93 = sub_26A84A9C8();
  OUTLINED_FUNCTION_15();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_19();
  v92 = v8;
  OUTLINED_FUNCTION_92();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_15_23();
  v91 = v10;
  OUTLINED_FUNCTION_92();
  MEMORY[0x28223BE20](v11);
  v13 = &v71 - v12;
  v14 = type metadata accessor for RichTextView.Tokenizer.Token(0);
  MEMORY[0x28223BE20](v14);
  v16 = &v71 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v20 = *(v0 + 16);
  v21 = *(v20 + 16);
  v81 = v6;
  if (v21)
  {
    v22 = *(v18 + 80);
    v87 = v20;
    v23 = v20 + ((v22 + 32) & ~v22);
    v24 = *(v18 + 72);
    v25 = (v6 + 32);
    v26 = MEMORY[0x277D84F90];
    v89 = &v71 - v19;
    v90 = v14;
    v88 = v24;
    do
    {
      sub_26A7F46AC();
      OUTLINED_FUNCTION_9_64();
      sub_26A7F4FF8();
      if (swift_getEnumCaseMultiPayload())
      {
        sub_26A7F43B4(v16);
      }

      else
      {
        v27 = *v25;
        v28 = v13;
        v29 = v92;
        v30 = v26;
        v31 = v93;
        (*v25)(v92, v16, v93);
        v32 = v91;
        v33 = v29;
        v13 = v28;
        v27(v91, v33, v31);
        v34 = v31;
        v35 = v30;
        v27(v28, v32, v34);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_26A7A2B7C();
          v35 = v38;
        }

        v36 = *(v35 + 16);
        v37 = v35;
        v24 = v88;
        if (v36 >= *(v35 + 24) >> 1)
        {
          sub_26A7A2B7C();
          v37 = v39;
        }

        *(v37 + 16) = v36 + 1;
        v26 = v37;
        v27(v37 + ((*(v81 + 80) + 32) & ~*(v81 + 80)) + *(v81 + 72) * v36, v13, v93);
      }

      v23 += v24;
      --v21;
    }

    while (v21);
    v40 = *(v87 + 16);
    v6 = v81;
  }

  else
  {
    v40 = 0;
    v26 = MEMORY[0x277D84F90];
  }

  if (*(v26 + 16) == v40)
  {
    v76 = v40;
    v80 = v40;
    if (qword_2803A8BD0 != -1)
    {
LABEL_27:
      swift_once();
      v80 = *(v26 + 16);
    }

    v42 = *(&xmmword_2803B0080 + 1);
    v41 = xmmword_2803B0080;
    v43 = byte_2803B0090;
    v44 = qword_2803B0098;
    v45 = OUTLINED_FUNCTION_52_8();
    sub_26A4EF6C0(v45, v46, v43);
    v77 = v6 + 16;

    v47 = 0;
    v75 = v41;
    v74 = v42;
    v73 = v43;
    v72 = v44;
    v78 = v26;
    while (v80 != v47)
    {
      if (v47 >= *(v26 + 16))
      {
        __break(1u);
        goto LABEL_27;
      }

      OUTLINED_FUNCTION_22_34();
      v49 = v48 + *(v6 + 72) * v47;
      v50 = v95;
      v51 = *(v94 + 48);
      *v95 = v47;
      (*(v6 + 16))(&v50[v51], v49, v93);
      v92 = v47;
      if (v47 && v47 < v76)
      {
        if (qword_2803A8BE8 != -1)
        {
          swift_once();
        }

        v52 = *(&xmmword_2803B00E0 + 1);
        v53 = xmmword_2803B00E0;
        v54 = byte_2803B00F0;
        v55 = qword_2803B00F8;
        sub_26A4EF6C0(xmmword_2803B00E0, *(&xmmword_2803B00E0 + 1), byte_2803B00F0);
      }

      else
      {
        v53 = v75;
        v52 = v74;
        v54 = v73;
        sub_26A4EF6C0(v75, v74, v73);
        v55 = v72;
      }

      v82 = v54;
      v83 = v55;

      OUTLINED_FUNCTION_52_8();
      v56 = sub_26A8506F8();
      v90 = v43;
      v91 = v44;
      v57 = v56;
      v59 = v58;
      v61 = v60;
      sub_26A4D7E54();
      v62 = sub_26A850888();
      v88 = v42;
      v89 = v41;
      v64 = v63;
      v66 = v65;
      v67 = sub_26A8506F8();
      v86 = v68;
      v87 = v67;
      v84 = v69;
      v85 = v70;
      sub_26A4EC448(v53, v52, v82);

      sub_26A4EC448(v62, v64, v66 & 1);

      sub_26A4EC448(v57, v59, v61 & 1);

      sub_26A4EC448(v89, v88, v90 & 1);

      sub_26A4DBD10(v95, &qword_2803B8D70);
      v47 = v92 + 1;
      v42 = v86;
      v41 = v87;
      v43 = v84;
      v44 = v85;
      v6 = v81;
      v26 = v78;
    }
  }

  OUTLINED_FUNCTION_52_8();
  OUTLINED_FUNCTION_27_0();
}

uint64_t sub_26A7EDB70@<X0>(uint64_t a1@<X8>)
{
  v44 = a1;
  v2 = sub_26A84EE68();
  v42 = *(v2 - 8);
  v43 = v2;
  MEMORY[0x28223BE20](v2);
  v41 = &v37 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = sub_26A84B048();
  v4 = *(v38 - 8);
  MEMORY[0x28223BE20](v38);
  v6 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AD038);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v37 - v8;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B8C48);
  MEMORY[0x28223BE20](v39);
  v11 = &v37 - v10;
  sub_26A7EFC8C();
  v12 = sub_26A850738();
  v14 = v13;
  v16 = v15;
  v18 = v17;

  type metadata accessor for RichTextView(0);
  v40 = v1;
  sub_26A84AF88();
  v19 = sub_26A84DFA8();
  if (__swift_getEnumTagSinglePayload(v9, 1, v19) == 1)
  {
    sub_26A4DBD10(v9, &qword_2803AD038);
LABEL_5:
    sub_26A4EF6C0(v12, v14, v16 & 1);

    v21 = v12;
    v23 = v14;
    v25 = v16;
    v27 = v18;
    goto LABEL_6;
  }

  sub_26A84DF78();
  v20 = _ProtoColor.swiftValue.getter();
  (*(v4 + 8))(v6, v38);
  (*(*(v19 - 8) + 8))(v9, v19);
  if (!v20)
  {
    goto LABEL_5;
  }

  v21 = sub_26A8506A8();
  v23 = v22;
  v25 = v24;
  v27 = v26;

LABEL_6:
  sub_26A4EC448(v12, v14, v16 & 1);

  KeyPath = swift_getKeyPath();
  v29 = sub_26A7ECD28();
  if (v29 == 2 || (v29 & 1) == 0)
  {
    v31 = v41;
    sub_26A7ECFD4(v41);
    v30 = v42;
    v32 = v43;
  }

  else
  {
    v31 = v41;
    v30 = v42;
    v32 = v43;
    (*(v42 + 104))(v41, *MEMORY[0x277CDF3D0], v43);
  }

  v33 = &v11[*(v39 + 36)];
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803A9E48);
  (*(v30 + 32))(v33 + *(v34 + 28), v31, v32);
  *v33 = KeyPath;
  *v11 = v21;
  *(v11 + 1) = v23;
  v11[16] = v25 & 1;
  *(v11 + 3) = v27;
  v35 = v44;
  sub_26A4D7EA8();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B8C00);
  *(v35 + *(result + 36)) = 0;
  return result;
}

double sub_26A7EDFC4()
{
  v14 = sub_26A84F988();
  v0 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v2 = &v13 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91A8);
  MEMORY[0x28223BE20](v3);
  v5 = &v13 - v4;
  v6 = sub_26A84F3A8();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for RichTextView(0);
  sub_26A4D7E54();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v7 + 32))(v9, v5, v6);
  }

  else
  {
    sub_26A851EA8();
    v10 = sub_26A8501F8();
    sub_26A84EA78();

    sub_26A84F978();
    swift_getAtKeyPath();

    (*(v0 + 8))(v2, v14);
  }

  v11 = (*(v7 + 88))(v9, v6);
  if (v11 == *MEMORY[0x277CDF9F8])
  {
    return 3.6;
  }

  if (v11 == *MEMORY[0x277CDF9E0])
  {
    return 3.86;
  }

  result = 4.0;
  if (v11 != *MEMORY[0x277CDF9E8])
  {
    if (v11 == *MEMORY[0x277CDF9D8])
    {
      return 4.1;
    }

    else if (v11 == *MEMORY[0x277CDF9F0])
    {
      return 4.6;
    }

    else if (v11 == *MEMORY[0x277CDFA00])
    {
      return 4.8;
    }

    else
    {
      result = 5.0;
      if (v11 != *MEMORY[0x277CDFA10])
      {
        result = 6.0;
        if (v11 != *MEMORY[0x277CDF988])
        {
          result = 7.0;
          if (v11 != *MEMORY[0x277CDF998])
          {
            if (v11 == *MEMORY[0x277CDF9A8])
            {
              return 8.4;
            }

            else if (v11 == *MEMORY[0x277CDF9B8])
            {
              return 9.8;
            }

            else if (v11 == *MEMORY[0x277CDF9D0])
            {
              return 10.9;
            }

            else
            {
              (*(v7 + 8))(v9, v6, 7.0);
              return 5.0;
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_26A7EE3C0()
{
  v0 = type metadata accessor for RichTextView(0);
  MEMORY[0x28223BE20](v0 - 8);

  sub_26A56CB40();

  swift_getKeyPath();
  sub_26A7F46AC();
  swift_allocObject();
  sub_26A7F4FF8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B8CE0);
  sub_26A7F504C(&unk_2803B8CE8);
  return sub_26A8512F8();
}

uint64_t sub_26A7EE5A4@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AD968);
  result = sub_26A7EE608(a1 + *(v4 + 48), &v6);
  *a2 = v6;
  return result;
}

uint64_t sub_26A7EE608@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v88 = a1;
  v89 = a2;
  v77 = type metadata accessor for AppIconView();
  MEMORY[0x28223BE20](v77);
  v75 = (&v68 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B8CF0);
  MEMORY[0x28223BE20](v84);
  v79 = &v68 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v78 = &v68 - v5;
  v87 = sub_26A84A9C8();
  v76 = *(v87 - 8);
  MEMORY[0x28223BE20](v87);
  v7 = &v68 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v68 - v9;
  v11 = type metadata accessor for RichTextView(0);
  v72 = *(v11 - 8);
  v12 = *(v72 + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v74 = &v68 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v73 = &v68 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AF0D0);
  MEMORY[0x28223BE20](v15 - 8);
  v81 = &v68 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v82 = &v68 - v18;
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B8CF8);
  MEMORY[0x28223BE20](v85);
  v80 = &v68 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v83 = &v68 - v21;
  v86 = sub_26A84AB98();
  v22 = *(v86 - 8);
  MEMORY[0x28223BE20](v86);
  v24 = &v68 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AC918);
  v71 = *(v25 - 8);
  MEMORY[0x28223BE20](v25 - 8);
  MEMORY[0x28223BE20](v26);
  v28 = &v68 - v27;
  v29 = type metadata accessor for RichTextView.Tokenizer.Token(0);
  MEMORY[0x28223BE20](v29);
  v31 = (&v68 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_26A7F46AC();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v88 = *(v31 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B8CD8) + 48));
      v70 = v22;
      v57 = *(v22 + 32);
      v58 = v24;
      v59 = v24;
      v69 = v24;
      v60 = v86;
      v57(v59, v31, v86);
      v68 = v28;
      sub_26A4D7EA8();
      v61 = *(v22 + 16);
      v62 = v82;
      v61(v82, v58, v60);
      __swift_storeEnumTagSinglePayload(v62, 0, 1, v60);
      v87 = type metadata accessor for RichTextView;
      sub_26A7F46AC();
      sub_26A4D7E54();
      v63 = (((*(v72 + 80) + 16) & ~*(v72 + 80)) + v12 + 7) & 0xFFFFFFFFFFFFFFF8;
      v64 = swift_allocObject();
      sub_26A7F4FF8();
      *(v64 + v63) = v88;
      sub_26A4D7EA8();
      sub_26A7F46AC();
      v65 = swift_allocObject();
      sub_26A7F4FF8();
      sub_26A4D7E54();
      v66 = swift_allocObject();
      v66[2] = sub_26A7F49C8;
      v66[3] = v64;
      v66[4] = sub_26A7F4D58;
      v66[5] = v65;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B8D38);
      sub_26A7F4DD0();
      v67 = v83;
      sub_26A84ED28();
      sub_26A4DBD10(v62, &qword_2803AF0D0);
      *(v67 + *(v85 + 36)) = 1;
      sub_26A4D7E54();
      sub_26A7F4F14();
      v40 = sub_26A851248();

      sub_26A4DBD10(v67, &qword_2803B8CF8);
      sub_26A4DBD10(v68, &qword_2803AC918);
      result = (*(v70 + 8))(v69, v86);
      goto LABEL_7;
    case 2u:
      v42 = v31[2];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B8CD0);
      sub_26A4D7EA8();
      v43 = sub_26A850F08();
      sub_26A7EF31C(v43, v42, &v92);

      v44 = v92;
      v45 = v93;
      v46 = v94;
      v47 = v95;
      LOBYTE(v91[0]) = v95;
      v99 = v97;
      v98 = 1;
      sub_26A7F477C(v92, v93, v94, v95);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B8D08);
      sub_26A7F47CC(&unk_2803B8D10);
      v48 = sub_26A851248();

      sub_26A7F4964(v44, v45, v46, v47);
      result = sub_26A4DBD10(v28, &qword_2803AC918);
      *v89 = v48;
      break;
    case 3u:
      v49 = v31[4];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B8CC8);
      v50 = v28;
      sub_26A4D7EA8();
      sub_26A5B9068();
      sub_26A7EC91C();
      v51 = sub_26A850FB8();
      sub_26A7EF31C(v51, v49, &v92);
      v52 = v92;
      v53 = v93;
      v54 = v94;
      v55 = v95;
      v99 = v95;
      v90 = v97;
      *v96 = v91[0];
      *&v96[3] = *(v91 + 3);
      v98 = 1;
      sub_26A7F477C(v92, v93, v94, v95);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B8D08);
      sub_26A7F47CC(&unk_2803B8D10);
      v56 = sub_26A851248();

      sub_26A7F4964(v52, v53, v54, v55);
      result = sub_26A4DBD10(v50, &qword_2803AC918);
      *v89 = v56;
      break;
    case 4u:
      sub_26A83115C(*v31, v31[1], 0, 0, 1, v75);
      sub_26A7F50E8(&qword_28157F9B0);
      result = sub_26A851248();
      *v89 = result;
      break;
    default:
      v32 = v76;
      v33 = v87;
      (*(v76 + 32))(v10, v31, v87);
      (*(v32 + 16))(v7, v10, v33);
      v34 = sub_26A850888();
      v36 = v35;
      v38 = v37;
      v39 = v78;
      sub_26A7EDB70(v78);
      sub_26A4EC448(v34, v36, v38 & 1);

      *(v39 + *(v84 + 36)) = 0;
      sub_26A4D7E54();
      sub_26A7F47CC(&unk_2803B8D00);
      v40 = sub_26A851248();
      sub_26A4DBD10(v39, &qword_2803B8CF0);
      result = (*(v32 + 8))(v10, v87);
LABEL_7:
      *v89 = v40;
      break;
  }

  return result;
}

double sub_26A7EF31C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v21[1] = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AC918);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v21 - v6;
  v8 = sub_26A850F28();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_26A850F68();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = v21 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26A7EFB28(a2, v15);
  (*(v9 + 104))(v11, *MEMORY[0x277CE0FE0], v8);
  sub_26A850F98();
  (*(v9 + 8))(v11, v8);
  (*(v13 + 16))(v7, v15, v12);
  __swift_storeEnumTagSinglePayload(v7, 0, 1, v12);
  v16 = sub_26A850F38();

  sub_26A4DBD10(v7, &qword_2803AC918);
  if (a2)
  {
    KeyPath = swift_getKeyPath();
    v22 = v16;
    v23 = KeyPath;
    v24 = a2;
    v25 = 0;
  }

  else
  {
    v23 = 0;
    v24 = 0;
    v22 = v16;
    v25 = 1;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803ADE10);
  sub_26A57E8FC();
  sub_26A84FDF8();
  (*(v13 + 8))(v15, v12);
  result = *&v26;
  v19 = v27;
  v20 = v28;
  *a3 = v26;
  *(a3 + 16) = v19;
  *(a3 + 24) = v20;
  *(a3 + 32) = 0;
  *(a3 + 40) = 1;
  return result;
}

double sub_26A7EF634@<D0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  sub_26A7EF31C(a1, a2, &v10);
  v4 = v11;
  v5 = v12;
  v6 = v13;
  v7 = v14;
  v8 = v15;
  result = *&v10;
  *a3 = v10;
  *(a3 + 16) = v4;
  *(a3 + 24) = v5;
  *(a3 + 32) = v6;
  *(a3 + 40) = v7;
  *(a3 + 41) = v8;
  return result;
}

double sub_26A7EF6A0@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v33 = a1;
  v34 = a2;
  v32 = sub_26A850F28();
  v2 = *(v32 - 8);
  MEMORY[0x28223BE20](v32);
  v4 = &v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_26A850F68();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  *&v35 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AC918);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v29 - v12;
  MEMORY[0x28223BE20](v14);
  v16 = &v29 - v15;
  v31 = sub_26A850F08();
  v30 = sub_26A850DF8();
  v17 = *MEMORY[0x277CE1020];
  v18 = *(v6 + 104);
  v18(v16, v17, v5);
  __swift_storeEnumTagSinglePayload(v16, 0, 1, v5);
  sub_26A4D7E54();
  if (__swift_getEnumTagSinglePayload(v13, 1, v5) == 1)
  {
    sub_26A4DBD10(v13, &qword_2803AC918);
    v18(v35, v17, v5);
  }

  else
  {
    (*(v6 + 32))(v35, v13, v5);
  }

  v19 = v32;
  (*(v2 + 104))(v4, *MEMORY[0x277CE0FE0], v32);
  sub_26A850F98();
  (*(v2 + 8))(v4, v19);
  v20 = v35;
  (*(v6 + 16))(v10, v35, v5);
  __swift_storeEnumTagSinglePayload(v10, 0, 1, v5);
  v21 = sub_26A850F38();

  sub_26A4DBD10(v10, &qword_2803AC918);
  KeyPath = swift_getKeyPath();
  v36 = v21;
  v37 = KeyPath;
  v38 = v30;
  v39 = 0;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803ADE10);
  sub_26A57E8FC();
  sub_26A84FDF8();
  (*(v6 + 8))(v20, v5);

  v35 = v40;
  v23 = v41;
  v24 = v42;
  sub_26A4DBD10(v16, &qword_2803AC918);
  v25 = sub_26A7ECE80();
  v26 = swift_getKeyPath();
  v27 = v34;
  result = *&v35;
  *v34 = v35;
  *(v27 + 2) = v23;
  *(v27 + 24) = v24;
  *(v27 + 4) = 0;
  *(v27 + 20) = 1;
  *(v27 + 6) = v26;
  *(v27 + 7) = v25;
  return result;
}

uint64_t sub_26A7EFB28@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AC918);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v10 - v5;
  sub_26A4D7E54();
  v7 = sub_26A850F68();
  if (__swift_getEnumTagSinglePayload(v6, 1, v7) != 1)
  {
    return (*(*(v7 - 8) + 32))(a2, v6, v7);
  }

  sub_26A4DBD10(v6, &qword_2803AC918);
  if (a1)
  {
    v8 = MEMORY[0x277CE1020];
  }

  else
  {
    v8 = MEMORY[0x277CE1010];
  }

  return (*(*(v7 - 8) + 104))(a2, *v8, v7);
}

uint64_t sub_26A7EFC8C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AD040);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v19 - v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AD048);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v19 - v4;
  type metadata accessor for RichTextView(0);
  sub_26A84AF28();
  v6 = sub_26A84AEF8();
  if (__swift_getEnumTagSinglePayload(v5, 1, v6) == 1)
  {
    sub_26A4DBD10(v5, &qword_2803AD048);
  }

  else
  {
    v7 = sub_26A5500C8();
    (*(*(v6 - 8) + 8))(v5, v6);
    if (v7)
    {
      goto LABEL_7;
    }
  }

  v8 = sub_26A7ECE80();
  if (!v8)
  {
    v8 = sub_26A8502F8();
  }

  v7 = v8;
LABEL_7:
  v9 = sub_26A84AF18();
  if (v9 == 2 || (v9 & 1) == 0)
  {

    v10 = v7;
  }

  else
  {
    v10 = sub_26A850308();
  }

  v11 = sub_26A84AF78();
  if (v11 != 2 && (v11 & 1) != 0)
  {
    v12 = sub_26A8503D8();

    v10 = v12;
  }

  sub_26A84AED8();
  v13 = sub_26A84C858();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v2, 1, v13);
  if (EnumTagSinglePayload == 1)
  {

    sub_26A4DBD10(v2, &qword_2803AD040);
  }

  else
  {
    sub_26A5506E0(EnumTagSinglePayload);
    v16 = v15;
    (*(*(v13 - 8) + 8))(v2, v13);
    if (v16)
    {
    }

    else
    {
      v17 = sub_26A850428();

      return v17;
    }
  }

  return v10;
}

void sub_26A7EFF40()
{
  OUTLINED_FUNCTION_28_0();
  v113 = v0;
  v126 = v1;
  v2 = sub_26A84AA38();
  v3 = OUTLINED_FUNCTION_79(v2);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_41();
  v111 = v5 - v4;
  v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B8D78);
  OUTLINED_FUNCTION_46();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_19();
  v114 = v7;
  OUTLINED_FUNCTION_92();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_27_1();
  v125 = v9;
  OUTLINED_FUNCTION_25_2();
  v117 = sub_26A84AA98();
  OUTLINED_FUNCTION_15();
  v107 = v10;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_41();
  v116 = v13 - v12;
  v129 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B8278);
  OUTLINED_FUNCTION_46();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_19();
  v105 = v15;
  OUTLINED_FUNCTION_92();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_27_1();
  v124 = v17;
  OUTLINED_FUNCTION_25_2();
  v123 = sub_26A84A978();
  OUTLINED_FUNCTION_15();
  v110 = v18;
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_41();
  v122 = v21 - v20;
  OUTLINED_FUNCTION_25_2();
  v127 = sub_26A84A958();
  OUTLINED_FUNCTION_15();
  v106 = v22;
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_19();
  v128 = v24;
  OUTLINED_FUNCTION_92();
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_27_1();
  v118 = v26;
  OUTLINED_FUNCTION_25_2();
  v121 = sub_26A84A988();
  OUTLINED_FUNCTION_15();
  v109 = v27;
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_41();
  v104 = v30 - v29;
  v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B82A0);
  OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v31);
  v120 = &v103 - v32;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AF0D0);
  OUTLINED_FUNCTION_79(v33);
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v34);
  v35 = sub_26A84A8F8();
  OUTLINED_FUNCTION_15();
  v37 = v36;
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_41();
  v41 = v40 - v39;
  v42 = sub_26A84A908();
  OUTLINED_FUNCTION_15();
  v44 = v43;
  MEMORY[0x28223BE20](v45);
  OUTLINED_FUNCTION_41();
  v48 = v47 - v46;
  v49 = sub_26A84A928();
  v50 = OUTLINED_FUNCTION_79(v49);
  MEMORY[0x28223BE20](v50);
  OUTLINED_FUNCTION_41();
  v119 = sub_26A84A9C8();
  OUTLINED_FUNCTION_15();
  v52 = v51;
  MEMORY[0x28223BE20](v53);
  OUTLINED_FUNCTION_41();
  v56 = v55 - v54;
  v130[5] = MEMORY[0x277D84F90];
  KeyPath = swift_getKeyPath();
  (*(v44 + 104))(v48, *MEMORY[0x277CC8BB0], v42);
  (*(v37 + 104))(v41, *MEMORY[0x277CC8B98], v35);

  OUTLINED_FUNCTION_17_15();
  sub_26A84A918();
  sub_26A84AB98();
  OUTLINED_FUNCTION_81();
  __swift_storeEnumTagSinglePayload(v57, v58, v59, v60);
  _s26RichTextViewAttributeScopeVMa();
  sub_26A7F50E8(&unk_2803B20C8);
  sub_26A84A9B8();
  v126 = 0;
  v103 = v52;
  v61 = v104;
  v111 = v56;
  sub_26A84A998();
  v62 = v109;
  v64 = v120;
  v63 = v121;
  (*(v109 + 16))(v120, v61, v121);
  v65 = *(v108 + 36);
  v66 = sub_26A7F50E8(&qword_2803B82B0);
  v113 = v65;
  sub_26A851D88();
  (*(v62 + 8))(v61, v63);
  KeyPath = v110 + 8;
  v110 = v106 + 16;
  v109 = v106 + 32;
  v107 += 8;
  v106 += 8;
  v67 = v105;
  v68 = v124;
  v69 = v119;
  v108 = v66;
  while (1)
  {
    sub_26A851DD8();
    sub_26A7F50E8(&qword_2803B82B8);
    v70 = sub_26A851758();
    OUTLINED_FUNCTION_33_1();
    v71 = OUTLINED_FUNCTION_5_62();
    v72(v71);
    v73 = v125;
    if (v70)
    {
      sub_26A4DBD10(v64, &qword_2803B82A0);
      (*(v103 + 8))(v111, v69);
      OUTLINED_FUNCTION_27_0();
      return;
    }

    v74 = v67;
    v75 = sub_26A851E18();
    OUTLINED_FUNCTION_33_1();
    v76 = v118;
    v77 = v127;
    v78(v118);
    v75(v130, 0);
    sub_26A851DE8();
    OUTLINED_FUNCTION_33_1();
    v79(v128, v76, v77);
    sub_26A84A948();
    v80 = *(v129 + 36);
    v81 = sub_26A84A9A8();
    sub_26A7F50E8(&unk_2803B8D80);
    if ((sub_26A851738() & 1) == 0)
    {
      break;
    }

    v82 = *(v81 - 8);
    v83 = v82[2];
    v84 = OUTLINED_FUNCTION_22_4();
    v83(v84);
    v85 = v115;
    (v83)(v73 + *(v115 + 48), v68 + v80, v81);
    v86 = v114;
    sub_26A4D7E54();
    v87 = *(v85 + 48);
    v88 = v82[4];
    v67 = v74;
    OUTLINED_FUNCTION_14_5();
    v88();
    v89 = v85;
    v90 = v82[1];
    v90(v86 + v87, v81);
    sub_26A4D7EA8();
    (v88)(v67 + *(v129 + 36), v86 + *(v89 + 48), v81);
    v91 = OUTLINED_FUNCTION_211();
    (v90)(v91);
    sub_26A7F504C(&qword_2803B82A8);
    v92 = v116;
    sub_26A84AA08();
    OUTLINED_FUNCTION_17_15();
    v95 = sub_26A4DBD10(v93, v94);
    v96 = qword_2803B8BE8;
    MEMORY[0x28223BE20](v95);
    *(&v103 - 2) = v128;
    *(&v103 - 1) = v92;

    v97 = v126;
    v98 = sub_26A7EC39C(sub_26A7F5080, (&v103 - 4), v96);

    v99 = *(v98 + 16);
    v126 = v97;
    if (v99)
    {
      v100 = *(v98 + 32);

      sub_26A614B00(v100);
    }

    else
    {
    }

    v64 = v120;
    v69 = v119;
    v68 = v124;
    sub_26A4DBD10(v124, &qword_2803B8278);
    OUTLINED_FUNCTION_33_1();
    v101(v92, v117);
    OUTLINED_FUNCTION_33_1();
    v102(v128, v127);
  }

  __break(1u);
}

uint64_t sub_26A7F0BEC()
{

  return MEMORY[0x2821FE8D8](v0, 24, 7);
}

void sub_26A7F0C24()
{
  OUTLINED_FUNCTION_28_0();
  v224 = v0;
  v225 = v1;
  v211 = sub_26A850F68();
  OUTLINED_FUNCTION_15();
  v207 = v2;
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_41();
  v205 = v5 - v4;
  v210 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AC948);
  OUTLINED_FUNCTION_46();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_19();
  v209 = v7;
  OUTLINED_FUNCTION_92();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_15_23();
  v206 = v9;
  OUTLINED_FUNCTION_92();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_27_1();
  v208 = v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AC918);
  v13 = OUTLINED_FUNCTION_79(v12);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_19();
  v203 = v14;
  OUTLINED_FUNCTION_92();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_15_23();
  v214 = v16;
  OUTLINED_FUNCTION_92();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_15_23();
  v221 = v18;
  OUTLINED_FUNCTION_92();
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_15_23();
  v212 = v20;
  OUTLINED_FUNCTION_92();
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_15_23();
  v219 = v22;
  OUTLINED_FUNCTION_92();
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_15_23();
  v220 = v24;
  OUTLINED_FUNCTION_92();
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_15_23();
  v204 = v26;
  OUTLINED_FUNCTION_92();
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_15_23();
  v216 = v28;
  OUTLINED_FUNCTION_92();
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_27_1();
  v213 = v30;
  OUTLINED_FUNCTION_25_2();
  sub_26A84AB98();
  OUTLINED_FUNCTION_15();
  v222 = v31;
  v223 = v32;
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_41();
  v215 = v34 - v33;
  OUTLINED_FUNCTION_25_2();
  sub_26A84A9C8();
  OUTLINED_FUNCTION_15();
  v217 = v36;
  v218 = v35;
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_41();
  v39 = v38 - v37;
  type metadata accessor for RichTextView.Tokenizer.Token(0);
  OUTLINED_FUNCTION_46();
  MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_6_0();
  v43 = (v41 - v42);
  MEMORY[0x28223BE20](v44);
  v46 = (&v203 - v45);
  MEMORY[0x28223BE20](v47);
  v49 = (&v203 - v48);
  MEMORY[0x28223BE20](v50);
  v52 = &v203 - v51;
  MEMORY[0x28223BE20](v53);
  v55 = &v203 - v54;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B8CC0);
  OUTLINED_FUNCTION_79(v56);
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v57);
  v59 = &v203 - v58;
  v61 = (&v203 + *(v60 + 56) - v58);
  sub_26A7F46AC();
  sub_26A7F46AC();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_26A7F46AC();
      v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B8CD8);
      v93 = *(v92 + 48);
      v94 = *&v52[v93];
      v95 = *(v92 + 64);
      OUTLINED_FUNCTION_34_15();
      if (swift_getEnumCaseMultiPayload() != 1)
      {
        sub_26A4DBD10(&v52[v95], &qword_2803AC918);

        (*(v223 + 8))(v52, v222);
        goto LABEL_36;
      }

      v224 = *(v61 + v93);
      v225 = v94;
      v96 = v222;
      v97 = v223;
      v98 = v215;
      (*(v223 + 32))(v215, v61, v222);
      OUTLINED_FUNCTION_26_20();
      sub_26A4D7EA8();
      OUTLINED_FUNCTION_26_20();
      sub_26A4D7EA8();
      v99 = sub_26A84AB68();
      v102 = *(v97 + 8);
      v101 = v97 + 8;
      v100 = v102;
      v102(v52, v96);
      if ((v99 & 1) == 0)
      {

        OUTLINED_FUNCTION_14_5();
        sub_26A4DBD10(v116, v117);
        OUTLINED_FUNCTION_14_5();
        sub_26A4DBD10(v118, v119);
        v100(v98, v96);
        goto LABEL_97;
      }

      v223 = v101;
      if (v225)
      {
        v103 = v208;
        if (!v224)
        {
LABEL_79:

          OUTLINED_FUNCTION_14_5();
          sub_26A4DBD10(v143, v144);
          OUTLINED_FUNCTION_14_5();
          sub_26A4DBD10(v145, v146);
          v100(v215, v96);
          goto LABEL_97;
        }

        v104 = sub_26A850D58();

        if ((v104 & 1) == 0)
        {

          goto LABEL_79;
        }
      }

      else
      {
        v103 = v208;
        if (v224)
        {
          goto LABEL_79;
        }
      }

      v147 = *(v210 + 48);
      OUTLINED_FUNCTION_52_8();
      OUTLINED_FUNCTION_26_20();
      sub_26A4D7E54();
      OUTLINED_FUNCTION_26_20();
      sub_26A4D7E54();
      v148 = v211;
      OUTLINED_FUNCTION_29_21(v103, 1);
      if (v64)
      {

        OUTLINED_FUNCTION_14_5();
        sub_26A4DBD10(v149, v150);
        OUTLINED_FUNCTION_14_5();
        sub_26A4DBD10(v151, v152);
        v100(v215, v222);
        OUTLINED_FUNCTION_6_20(v103 + v147, 1, v148);
        if (v64)
        {
          sub_26A4DBD10(v103, &qword_2803AC918);
          goto LABEL_39;
        }
      }

      else
      {
        v166 = v204;
        sub_26A4D7E54();
        OUTLINED_FUNCTION_29_21(v103 + v147, 1);
        if (!v167)
        {
          OUTLINED_FUNCTION_39_11();
          v192 = v103 + v147;
          v193 = v205;
          v194(v205, v192, v148);
          OUTLINED_FUNCTION_8_68();
          sub_26A7F50E8(v195);
          LODWORD(v221) = sub_26A851758();

          v196 = *(v166 + 8);
          v196(v193, v148);
          OUTLINED_FUNCTION_17_15();
          sub_26A4DBD10(v197, v198);
          OUTLINED_FUNCTION_17_15();
          sub_26A4DBD10(v199, v200);
          v100(v215, v222);
          v196(v204, v148);
          OUTLINED_FUNCTION_17_15();
          sub_26A4DBD10(v201, v202);
          if ((v221 & 1) == 0)
          {
            goto LABEL_97;
          }

LABEL_39:
          v109 = v59;
          goto LABEL_98;
        }

        OUTLINED_FUNCTION_14_5();
        sub_26A4DBD10(v168, v169);
        OUTLINED_FUNCTION_14_5();
        sub_26A4DBD10(v170, v171);
        v100(v215, v222);
        v172 = OUTLINED_FUNCTION_22_4();
        v173(v172);
      }

      sub_26A4DBD10(v103, &qword_2803AC948);
LABEL_97:
      v109 = v59;
LABEL_98:
      sub_26A7F43B4(v109);
      goto LABEL_99;
    case 2u:
      sub_26A7F46AC();
      v67 = *v49;
      v66 = v49[1];
      v68 = v49[2];
      v69 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B8CD0) + 64);
      OUTLINED_FUNCTION_34_15();
      if (swift_getEnumCaseMultiPayload() != 2)
      {
        sub_26A4DBD10(v49 + v69, &qword_2803AC918);
        goto LABEL_34;
      }

      v225 = v68;
      v71 = *v61;
      v70 = v61[1];
      v224 = v61[2];
      sub_26A4D7EA8();
      sub_26A4D7EA8();
      if (v67 == v71 && v66 == v70)
      {

        v74 = v59;
      }

      else
      {
        v73 = sub_26A852598();

        v74 = v59;
        if ((v73 & 1) == 0)
        {

          OUTLINED_FUNCTION_14_5();
          sub_26A4DBD10(v75, v76);
LABEL_60:
          OUTLINED_FUNCTION_14_5();
LABEL_61:
          sub_26A4DBD10(v124, v125);
LABEL_62:
          v109 = v74;
          goto LABEL_98;
        }
      }

      if (v225)
      {
        v110 = v212;
        if (!v224)
        {
LABEL_59:

          OUTLINED_FUNCTION_14_5();
          sub_26A4DBD10(v122, v123);
          goto LABEL_60;
        }

        v111 = sub_26A850D58();

        if ((v111 & 1) == 0)
        {

          goto LABEL_59;
        }
      }

      else
      {
        v110 = v212;
        if (v224)
        {
          goto LABEL_59;
        }
      }

      v126 = *(v210 + 48);
      v127 = v206;
      OUTLINED_FUNCTION_14_5();
      sub_26A4D7E54();
      sub_26A4D7E54();
      v128 = v211;
      OUTLINED_FUNCTION_29_21(v127, 1);
      if (v64)
      {

        OUTLINED_FUNCTION_14_5();
        sub_26A4DBD10(v129, v130);
        OUTLINED_FUNCTION_14_5();
        sub_26A4DBD10(v131, v132);
        OUTLINED_FUNCTION_6_20(v127 + v126, 1, v128);
        if (v64)
        {
          sub_26A4DBD10(v127, &qword_2803AC918);
          goto LABEL_101;
        }
      }

      else
      {
        sub_26A4D7E54();
        OUTLINED_FUNCTION_29_21(v127 + v126, 1);
        if (!v153)
        {
          OUTLINED_FUNCTION_39_11();
          v174 = v127 + v126;
          v175 = v205;
          v176(v205, v174, v128);
          OUTLINED_FUNCTION_8_68();
          sub_26A7F50E8(v177);
          v178 = v128;
          v179 = sub_26A851758();

          v180 = *(v110 + 8);
          v180(v175, v178);
          OUTLINED_FUNCTION_17_15();
          sub_26A4DBD10(v181, v182);
          OUTLINED_FUNCTION_17_15();
          sub_26A4DBD10(v183, v184);
          v180(v212, v178);
          OUTLINED_FUNCTION_17_15();
          sub_26A4DBD10(v185, v186);
          if ((v179 & 1) == 0)
          {
            goto LABEL_62;
          }

LABEL_101:
          v109 = v74;
          goto LABEL_98;
        }

        OUTLINED_FUNCTION_14_5();
        sub_26A4DBD10(v154, v155);
        OUTLINED_FUNCTION_14_5();
        sub_26A4DBD10(v156, v157);
        v158 = OUTLINED_FUNCTION_22_4();
        v159(v158);
      }

      v125 = &qword_2803AC948;
      v124 = v127;
      goto LABEL_61;
    case 3u:
      sub_26A7F46AC();
      v78 = *v46;
      v77 = v46[1];
      v79 = v46[3];
      v225 = v46[2];
      v80 = v46[4];
      v81 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B8CC8) + 80);
      OUTLINED_FUNCTION_34_15();
      if (swift_getEnumCaseMultiPayload() == 3)
      {
        v222 = v59;
        v223 = v79;
        v220 = v80;
        v82 = *v61;
        v83 = v61[1];
        v84 = v61[3];
        v219 = v61[2];
        v224 = v61[4];
        sub_26A4D7EA8();
        v85 = v214;
        sub_26A4D7EA8();
        if (v78 == v82 && v77 == v83)
        {

          v88 = v222;
          v89 = v220;
        }

        else
        {
          OUTLINED_FUNCTION_5_62();
          v87 = sub_26A852598();

          v88 = v222;
          v89 = v220;
          if ((v87 & 1) == 0)
          {

            OUTLINED_FUNCTION_14_5();
            sub_26A4DBD10(v90, v91);
LABEL_70:
            OUTLINED_FUNCTION_14_5();
LABEL_71:
            sub_26A4DBD10(v135, v136);
LABEL_72:
            v109 = v88;
            goto LABEL_98;
          }
        }

        v112 = v224;
        v113 = v225 == v219 && v223 == v84;
        v114 = v221;
        if (v113)
        {
        }

        else
        {
          v115 = sub_26A852598();

          if ((v115 & 1) == 0)
          {
            goto LABEL_51;
          }
        }

        if (v89)
        {
          v120 = v209;
          if (!v112)
          {
            goto LABEL_69;
          }

          OUTLINED_FUNCTION_5_62();
          v121 = sub_26A850D58();

          if ((v121 & 1) == 0)
          {
LABEL_51:

LABEL_69:

            OUTLINED_FUNCTION_14_5();
            sub_26A4DBD10(v133, v134);
            goto LABEL_70;
          }
        }

        else
        {
          v120 = v209;
          if (v112)
          {
            goto LABEL_69;
          }
        }

        v137 = *(v210 + 48);
        OUTLINED_FUNCTION_26_20();
        sub_26A4D7E54();
        OUTLINED_FUNCTION_26_20();
        sub_26A4D7E54();
        v138 = v211;
        OUTLINED_FUNCTION_29_21(v120, 1);
        if (v64)
        {

          OUTLINED_FUNCTION_14_5();
          sub_26A4DBD10(v139, v140);
          OUTLINED_FUNCTION_14_5();
          sub_26A4DBD10(v141, v142);
          OUTLINED_FUNCTION_6_20(v120 + v137, 1, v138);
          if (v64)
          {
            sub_26A4DBD10(v120, &qword_2803AC918);
            goto LABEL_103;
          }
        }

        else
        {
          v160 = v203;
          sub_26A4D7E54();
          OUTLINED_FUNCTION_29_21(v120 + v137, 1);
          if (!v161)
          {
            OUTLINED_FUNCTION_39_11();
            v187 = v120 + v137;
            v188 = v205;
            v189(v205, v187, v138);
            OUTLINED_FUNCTION_8_68();
            sub_26A7F50E8(v190);
            LODWORD(v225) = sub_26A851758();

            v191 = *(v112 + 8);
            v191(v188, v138);
            sub_26A4DBD10(v85, &qword_2803AC918);
            sub_26A4DBD10(v114, &qword_2803AC918);
            v191(v160, v138);
            sub_26A4DBD10(v120, &qword_2803AC918);
            if ((v225 & 1) == 0)
            {
              goto LABEL_72;
            }

LABEL_103:
            v109 = v88;
            goto LABEL_98;
          }

          OUTLINED_FUNCTION_14_5();
          sub_26A4DBD10(v162, v163);
          OUTLINED_FUNCTION_14_5();
          sub_26A4DBD10(v164, v165);
          (*(v207 + 8))(v160, v138);
        }

        v136 = &qword_2803AC948;
        v135 = v120;
        goto LABEL_71;
      }

      sub_26A4DBD10(v46 + v81, &qword_2803AC918);

LABEL_34:

LABEL_36:
      sub_26A4DBD10(v59, &qword_2803B8CC0);
LABEL_99:
      OUTLINED_FUNCTION_27_0();
      return;
    case 4u:
      sub_26A7F46AC();
      v63 = *v43;
      v62 = v43[1];
      OUTLINED_FUNCTION_34_15();
      if (swift_getEnumCaseMultiPayload() != 4)
      {

        goto LABEL_36;
      }

      v64 = v63 == *v61 && v62 == v61[1];
      if (v64)
      {

        goto LABEL_39;
      }

      v65 = sub_26A852598();

      if (v65)
      {
        goto LABEL_39;
      }

      goto LABEL_97;
    default:
      sub_26A7F46AC();
      OUTLINED_FUNCTION_34_15();
      if (swift_getEnumCaseMultiPayload())
      {
        (*(v217 + 8))(v55, v218);
        goto LABEL_36;
      }

      v106 = v217;
      v105 = v218;
      (*(v217 + 32))(v39, v61, v218);
      OUTLINED_FUNCTION_5_62();
      sub_26A84A938();
      v107 = *(v106 + 8);
      v108 = OUTLINED_FUNCTION_22_4();
      v107(v108);
      (v107)(v55, v105);
      sub_26A7F43B4(v59);
      goto LABEL_99;
  }
}

uint64_t sub_26A7F1F38@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  nullsub_1(a1);
  result = _s26RichTextViewAttributeScopeVMa();
  *a2 = result;
  return result;
}

void sub_26A7F1F68()
{
  OUTLINED_FUNCTION_28_0();
  sub_26A84B048();
  OUTLINED_FUNCTION_15();
  v98 = v1;
  v99 = v0;
  MEMORY[0x28223BE20](v0);
  OUTLINED_FUNCTION_41();
  v97 = v3 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AD038);
  v5 = OUTLINED_FUNCTION_79(v4);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_19();
  v96 = v6;
  OUTLINED_FUNCTION_92();
  MEMORY[0x28223BE20](v7);
  v9 = &v94 - v8;
  MEMORY[0x28223BE20](v10);
  v12 = &v94 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AF0D0);
  OUTLINED_FUNCTION_79(v13);
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v14);
  v16 = &v94 - v15;
  v17 = sub_26A84AB98();
  OUTLINED_FUNCTION_15();
  v100 = v18;
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_41();
  v22 = v21 - v20;
  sub_26A84A8D8();
  OUTLINED_FUNCTION_46();
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_41();
  v26 = v25 - v24;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B8278);
  OUTLINED_FUNCTION_79(v27);
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v28);
  v101 = &v94 - v29;
  sub_26A84A948();
  sub_26A84AA78();
  OUTLINED_FUNCTION_7_73();
  sub_26A7F50E8(v30);
  v32 = sub_26A851958() == 33 && v31 == 0xE100000000000000;
  if (v32)
  {
  }

  else
  {
    v33 = sub_26A852598();

    if ((v33 & 1) == 0)
    {
      goto LABEL_46;
    }
  }

  sub_26A65E004();
  OUTLINED_FUNCTION_14_46();
  if (v103)
  {
    sub_26A84AB88();

    OUTLINED_FUNCTION_6_20(v16, 1, v17);
    if (!v32)
    {
      v43 = v100;
      (*(v100 + 32))(v22, v16, v17);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B7CC8);
      type metadata accessor for RichTextView.Tokenizer.Token(0);
      OUTLINED_FUNCTION_33_10();
      OUTLINED_FUNCTION_31_20();
      v46 = v45 & ~v44;
      v47 = swift_allocObject();
      *(v47 + 16) = xmmword_26A8570D0;
      v48 = v47 + v46;
      v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B8CD8);
      v96 = *(v49 + 48);
      (*(v43 + 16))(v47 + v46, v22, v17);
      v50 = sub_26A84DFA8();
      OUTLINED_FUNCTION_6_71();
      sub_26A7F50E8(v51);
      sub_26A84A968();
      OUTLINED_FUNCTION_6_20(v12, 1, v50);
      if (v52)
      {
        sub_26A4DBD10(v12, &qword_2803AD038);
        *(v48 + v96) = 0;
      }

      else
      {
        v95 = v49;
        v62 = v97;
        sub_26A84DF78();
        _ProtoColor.swiftValue.getter();
        OUTLINED_FUNCTION_40_13();
        v49 = v95;
        v63(v62);
        *(v48 + v96) = v62;
        OUTLINED_FUNCTION_4_11();
        (*(v64 + 8))(v12, v50);
      }

      v65 = *(v49 + 64);
      sub_26A65E154();
      OUTLINED_FUNCTION_14_46();
      if (v102 == 2)
      {
        sub_26A850F68();
        OUTLINED_FUNCTION_81();
      }

      else
      {
        sub_26A850F68();
        OUTLINED_FUNCTION_46();
        OUTLINED_FUNCTION_37_18();
        v70(v48 + v65);
        OUTLINED_FUNCTION_38_13();
      }

      __swift_storeEnumTagSinglePayload(v66, v67, v68, v69);
      OUTLINED_FUNCTION_5_62();
      swift_storeEnumTagMultiPayload();
      (*(v100 + 8))(v22, v17);
      goto LABEL_46;
    }

    sub_26A4DBD10(v16, &qword_2803AF0D0);
  }

  sub_26A65E058();
  OUTLINED_FUNCTION_14_46();
  v34 = v103;
  if (!v103)
  {
LABEL_21:
    sub_26A65E0AC();
    OUTLINED_FUNCTION_14_46();
    v53 = v103;
    if (v103)
    {
      v54 = v102;
      v55 = HIBYTE(v103) & 0xF;
      if ((v103 & 0x2000000000000000) == 0)
      {
        v55 = v102 & 0xFFFFFFFFFFFFLL;
      }

      if (v55)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B7CC8);
        v56 = OUTLINED_FUNCTION_35_14();
        type metadata accessor for RichTextView.Tokenizer.Token(v56);
        OUTLINED_FUNCTION_33_10();
        OUTLINED_FUNCTION_31_20();
        v57 = OUTLINED_FUNCTION_55_5();
        *(v57 + 16) = xmmword_26A8570D0;
        v58 = (v57 + v26);
        *v58 = v54;
        *(v58 + 1) = v53;
        v59 = sub_26A84DFA8();
        OUTLINED_FUNCTION_6_71();
        sub_26A7F50E8(v60);
        v61 = v96;
        sub_26A84A968();
        OUTLINED_FUNCTION_6_20(v61, 1, v59);
        if (v32)
        {
          sub_26A4DBD10(v61, &qword_2803AD038);
          *(v58 + 2) = 0;
        }

        else
        {
          v89 = v97;
          sub_26A84DF78();
          _ProtoColor.swiftValue.getter();
          OUTLINED_FUNCTION_40_13();
          v90(v89);
          *(v58 + 2) = v89;
          OUTLINED_FUNCTION_4_11();
          (*(v91 + 8))(v61, v59);
        }

        v92 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B8CD0) + 64);
        sub_26A65E154();
        OUTLINED_FUNCTION_14_46();
        if (v102 != 2)
        {
          sub_26A850F68();
          OUTLINED_FUNCTION_46();
          OUTLINED_FUNCTION_37_18();
          v93(&v58[v92]);
          OUTLINED_FUNCTION_38_13();
          goto LABEL_44;
        }

        goto LABEL_42;
      }
    }

    sub_26A65E100();
    OUTLINED_FUNCTION_14_46();
    v80 = v103;
    if (!v103)
    {
      goto LABEL_46;
    }

    v81 = v102;
    v82 = HIBYTE(v103) & 0xF;
    if ((v103 & 0x2000000000000000) == 0)
    {
      v82 = v102 & 0xFFFFFFFFFFFFLL;
    }

    if (!v82)
    {
      sub_26A4DBD10(v101, &qword_2803B8278);

      goto LABEL_47;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B7CC8);
    v83 = OUTLINED_FUNCTION_35_14();
    type metadata accessor for RichTextView.Tokenizer.Token(v83);
    OUTLINED_FUNCTION_33_10();
    OUTLINED_FUNCTION_31_20();
    v86 = v85 & ~v84;
    v87 = swift_allocObject();
    *(v87 + 16) = xmmword_26A8570D0;
    v88 = (v87 + v86);
    *v88 = v81;
    v88[1] = v80;
    goto LABEL_45;
  }

  v35 = v102;
  sub_26A65E1A8();
  OUTLINED_FUNCTION_14_46();
  v36 = v103;
  if (!v103)
  {

    goto LABEL_21;
  }

  v37 = v102;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B7CC8);
  v38 = OUTLINED_FUNCTION_35_14();
  type metadata accessor for RichTextView.Tokenizer.Token(v38);
  OUTLINED_FUNCTION_33_10();
  OUTLINED_FUNCTION_31_20();
  v39 = OUTLINED_FUNCTION_55_5();
  *(v39 + 16) = xmmword_26A8570D0;
  v40 = (v39 + v26);
  *v40 = v37;
  *(v40 + 1) = v36;
  *(v40 + 2) = v35;
  *(v40 + 3) = v34;
  v41 = sub_26A84DFA8();
  OUTLINED_FUNCTION_6_71();
  sub_26A7F50E8(v42);
  sub_26A84A968();
  OUTLINED_FUNCTION_6_20(v9, 1, v41);
  if (v32)
  {
    sub_26A4DBD10(v9, &qword_2803AD038);
    *(v40 + 4) = 0;
  }

  else
  {
    v71 = v97;
    sub_26A84DF78();
    _ProtoColor.swiftValue.getter();
    OUTLINED_FUNCTION_40_13();
    v72(v71);
    *(v40 + 4) = v71;
    OUTLINED_FUNCTION_4_11();
    (*(v73 + 8))(v9, v41);
  }

  v74 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B8CC8) + 80);
  sub_26A65E154();
  OUTLINED_FUNCTION_14_46();
  if (v102 == 2)
  {
LABEL_42:
    sub_26A850F68();
    OUTLINED_FUNCTION_81();
    goto LABEL_44;
  }

  sub_26A850F68();
  OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_37_18();
  v75(&v40[v74]);
  OUTLINED_FUNCTION_38_13();
LABEL_44:
  __swift_storeEnumTagSinglePayload(v76, v77, v78, v79);
LABEL_45:
  swift_storeEnumTagMultiPayload();
LABEL_46:
  sub_26A4DBD10(v101, &qword_2803B8278);
LABEL_47:
  OUTLINED_FUNCTION_27_0();
}

void sub_26A7F2B0C()
{
  OUTLINED_FUNCTION_28_0();
  v39 = v0;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B4AB8);
  v2 = OUTLINED_FUNCTION_79(v1);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_19();
  v40 = v3;
  OUTLINED_FUNCTION_92();
  MEMORY[0x28223BE20](v4);
  v6 = &v38 - v5;
  v7 = sub_26A84AA98();
  OUTLINED_FUNCTION_15();
  v9 = v8;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_41();
  v13 = v12 - v11;
  sub_26A84A9C8();
  OUTLINED_FUNCTION_15();
  v41 = v15;
  v42 = v14;
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_41();
  v18 = v17 - v16;
  v19 = sub_26A850668();
  OUTLINED_FUNCTION_15();
  v21 = v20;
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_6_0();
  v25 = v23 - v24;
  MEMORY[0x28223BE20](v26);
  v28 = &v38 - v27;
  sub_26A65E1FC();
  sub_26A84A968();
  if (v43 != 2)
  {
    sub_26A65D6FC(v43 & 1);
    (*(v21 + 32))(v28, v25, v19);
    (*(v9 + 16))(v13, v39, v7);
    sub_26A84AA18();
    (*(v21 + 16))(v6, v28, v19);
    __swift_storeEnumTagSinglePayload(v6, 0, 1, v19);
    sub_26A4D7E54();
    sub_26A6ED544();
    sub_26A84A9E8();
    sub_26A4DBD10(v6, &qword_2803B4AB8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B7CC8);
    v29 = OUTLINED_FUNCTION_35_14();
    type metadata accessor for RichTextView.Tokenizer.Token(v29);
    OUTLINED_FUNCTION_33_10();
    OUTLINED_FUNCTION_31_20();
    v32 = v31 & ~v30;
    v33 = swift_allocObject();
    *(v33 + 16) = xmmword_26A8570D0;
    (*(v41 + 16))(v33 + v32, v18, v42);
    swift_storeEnumTagMultiPayload();
    v34 = OUTLINED_FUNCTION_34_15();
    v35(v34);
    v36 = OUTLINED_FUNCTION_22_4();
    v37(v36);
  }

  OUTLINED_FUNCTION_27_0();
}

void sub_26A7F2EDC()
{
  OUTLINED_FUNCTION_28_0();
  v1 = v0;
  type metadata accessor for RichTextView.Tokenizer.Token(0);
  OUTLINED_FUNCTION_15();
  v45 = v3;
  v46 = v2;
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_41();
  v41 = v5 - v4;
  OUTLINED_FUNCTION_25_2();
  v6 = sub_26A84A9C8();
  OUTLINED_FUNCTION_15();
  v8 = v7;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_19();
  v44 = v10;
  OUTLINED_FUNCTION_92();
  MEMORY[0x28223BE20](v11);
  v13 = &v40 - v12;
  v14 = sub_26A84A838();
  OUTLINED_FUNCTION_15();
  v16 = v15;
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_41();
  v20 = v19 - v18;
  sub_26A84A8D8();
  OUTLINED_FUNCTION_46();
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_41();
  sub_26A84AA78();
  OUTLINED_FUNCTION_7_73();
  sub_26A7F50E8(v22);
  v47 = sub_26A851958();
  v48 = v23;
  sub_26A84A828();
  sub_26A53ACC8();
  v24 = sub_26A8520A8();
  (*(v16 + 8))(v20, v14);
  v25 = v24;

  v26 = *(v24 + 16);
  if (v26)
  {
    v43 = v1;
    OUTLINED_FUNCTION_44_11();
    sub_26A7DD3B8();
    v27 = v47;
    v28 = v25 + 40;
    do
    {

      sub_26A84A8E8();
      v47 = v27;
      v29 = *(v27 + 16);
      if (v29 >= *(v27 + 24) >> 1)
      {
        sub_26A7DD3B8();
        v27 = v47;
      }

      *(v27 + 16) = v29 + 1;
      OUTLINED_FUNCTION_22_34();
      (*(v8 + 32))(v30 + *(v8 + 72) * v29, v13, v6);
      v28 += 16;
      --v26;
    }

    while (v26);

    v1 = v43;
  }

  else
  {

    v27 = MEMORY[0x277D84F90];
  }

  MEMORY[0x28223BE20](v31);
  *(&v40 - 2) = v1;
  v32 = sub_26A4F9380(sub_26A7F50C8, (&v40 - 4), v27);

  v33 = *(v32 + 16);
  v34 = v41;
  if (v33)
  {
    OUTLINED_FUNCTION_44_11();
    sub_26A7DD360();
    v35 = 0;
    v36 = v47;
    v43 = v32 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
    v42 = v8 + 8;
    while (v35 < *(v32 + 16))
    {
      v37 = v44;
      v38 = *(v8 + 16);
      v38(v44, v43 + *(v8 + 72) * v35, v6);
      v38(v34, v37, v6);
      swift_storeEnumTagMultiPayload();
      (*(v8 + 8))(v37, v6);
      OUTLINED_FUNCTION_49_7();
      if (v39)
      {
        sub_26A7DD360();
        v36 = v47;
      }

      ++v35;
      *(v36 + 16) = v37;
      OUTLINED_FUNCTION_22_34();
      OUTLINED_FUNCTION_9_64();
      sub_26A7F4FF8();
      if (v33 == v35)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_14:

    OUTLINED_FUNCTION_27_0();
  }
}

uint64_t sub_26A7F3394@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AF0D0);
  MEMORY[0x28223BE20](v4 - 8);
  v21[1] = v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = v21 - v7;
  v9 = sub_26A84B048();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AD038);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = v21 - v14;
  v16 = sub_26A84A9C8();
  (*(*(v16 - 8) + 16))(a2, a1, v16);
  sub_26A65DF5C();
  sub_26A84A968();
  v17 = 1;
  switch(v22)
  {
    case 1:
      v17 = 2;
      goto LABEL_4;
    case 2:
      v17 = 32;
      goto LABEL_4;
    case 3:
      goto LABEL_5;
    default:
LABEL_4:
      v22 = v17;
      LOBYTE(v23) = 0;
      sub_26A7F51D0();
      sub_26A84A9E8();
LABEL_5:
      v18 = sub_26A84DFA8();
      sub_26A7F50E8(&unk_2803B8D90);
      sub_26A84A968();
      if (__swift_getEnumTagSinglePayload(v15, 1, v18) == 1)
      {
        sub_26A4DBD10(v15, &qword_2803AD038);
      }

      else
      {
        sub_26A84DF78();
        v19 = _ProtoColor.swiftValue.getter();
        (*(v10 + 8))(v12, v9);
        (*(*(v18 - 8) + 8))(v15, v18);
        if (v19)
        {
          v22 = v19;
          sub_26A7F517C();
          sub_26A84A9E8();
        }
      }

      sub_26A65DFB0();
      result = sub_26A84A968();
      if (v23)
      {
        sub_26A84AB88();

        sub_26A4D7E54();
        sub_26A7F5128();
        sub_26A84A9E8();
        return sub_26A4DBD10(v8, &qword_2803AF0D0);
      }

      return result;
  }
}

void sub_26A7F378C()
{
  OUTLINED_FUNCTION_28_0();
  v0 = sub_26A84AA38();
  v1 = OUTLINED_FUNCTION_79(v0);
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_41();
  type metadata accessor for RichTextView.Tokenizer.Token(0);
  OUTLINED_FUNCTION_15();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_41();
  v3 = sub_26A84A838();
  OUTLINED_FUNCTION_15();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_41();
  v9 = v8 - v7;
  sub_26A84A8D8();
  OUTLINED_FUNCTION_46();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_41();
  sub_26A84AA78();
  OUTLINED_FUNCTION_7_73();
  sub_26A7F50E8(v11);
  sub_26A851958();
  sub_26A84A828();
  sub_26A53ACC8();
  v12 = sub_26A8520A8();
  (*(v5 + 8))(v9, v3);

  v13 = *(v12 + 16);
  if (v13)
  {
    v18 = MEMORY[0x277D84F90];
    sub_26A7DD360();
    v14 = v18;
    v15 = v12 + 40;
    do
    {
      v16 = *(v15 - 8);

      sub_26A84AA28();
      sub_26A84A9D8();
      swift_storeEnumTagMultiPayload();
      OUTLINED_FUNCTION_49_7();
      if (v17)
      {
        sub_26A7DD360();
        v14 = v18;
      }

      *(v14 + 16) = v16;
      OUTLINED_FUNCTION_22_34();
      OUTLINED_FUNCTION_9_64();
      sub_26A7F4FF8();
      v15 += 16;
      --v13;
    }

    while (v13);
  }

  OUTLINED_FUNCTION_27_0();
}

unint64_t sub_26A7F3AB0()
{
  result = qword_2803B8C08;
  if (!qword_2803B8C08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B8BF8);
    sub_26A7F504C(&unk_2803B8C10);
    sub_26A7F3B68();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B8C08);
  }

  return result;
}

unint64_t sub_26A7F3B68()
{
  result = qword_2803B8C20;
  if (!qword_2803B8C20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B8C28);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B8C20);
  }

  return result;
}

unint64_t sub_26A7F3BE4()
{
  result = qword_2803B8C38;
  if (!qword_2803B8C38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B8C00);
    sub_26A7F3FD8(&unk_2803B8C40);
    sub_26A7F504C(&unk_2803B8C50);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B8C38);
  }

  return result;
}

uint64_t sub_26A7F3D00()
{
  sub_26A7F3EF8();
  v1 = v0;
  if (v2 <= 0x3F)
  {
    sub_26A580F18();
    v1 = v3;
    if (v4 <= 0x3F)
    {
      sub_26A7F3F88(319, &qword_2803A9218, type metadata accessor for VRXIdiom);
      v1 = v5;
      if (v6 <= 0x3F)
      {
        sub_26A7F3F88(319, &qword_2803A9230, MEMORY[0x277CDFA28]);
        v1 = v7;
        if (v8 <= 0x3F)
        {
          sub_26A5F7324(319, &qword_2803B2E18, &qword_2803AFAE8);
          v1 = v9;
          if (v10 <= 0x3F)
          {
            sub_26A5F7324(319, &qword_2803B8C78, &qword_2803B5888);
            if (v12 > 0x3F)
            {
              return v11;
            }

            else
            {
              sub_26A5F7324(319, &qword_2803B2890, &qword_2803B2898);
              v1 = v13;
              if (v14 <= 0x3F)
              {
                sub_26A7F3F88(319, &qword_2803AC3D8, MEMORY[0x277CDF3E0]);
                v1 = v15;
                if (v16 <= 0x3F)
                {
                  v1 = sub_26A84AFA8();
                  if (v17 <= 0x3F)
                  {
                    swift_cvw_initStructMetadataWithLayoutString();
                    return 0;
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  return v1;
}

void sub_26A7F3EF8()
{
  if (!qword_2803B8C70)
  {
    type metadata accessor for RichTextView.ViewModel();
    sub_26A7F50E8(&unk_2803B8BF0);
    v0 = sub_26A84F288();
    if (!v1)
    {
      atomic_store(v0, &qword_2803B8C70);
    }
  }
}

void sub_26A7F3F88(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    OUTLINED_FUNCTION_10_6();
    v4 = sub_26A84EEA8();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_26A7F3FD8(uint64_t a1)
{
  result = OUTLINED_FUNCTION_32_1(a1);
  if (!result)
  {
    OUTLINED_FUNCTION_63_0(0, v3);
    sub_26A7F504C(&unk_2803A9E40);
    result = OUTLINED_FUNCTION_15_40();
    atomic_store(result, v1);
  }

  return result;
}

void sub_26A7F407C()
{
  sub_26A84A9C8();
  if (v0 <= 0x3F)
  {
    sub_26A7F412C();
    if (v1 <= 0x3F)
    {
      sub_26A7F41D0();
      if (v2 <= 0x3F)
      {
        sub_26A7F4264();
        if (v3 <= 0x3F)
        {
          sub_26A7F438C();
          if (v4 <= 0x3F)
          {
            swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_26A7F412C()
{
  if (!qword_2803B8C98)
  {
    sub_26A84AB98();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B8CA0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803AC918);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_2803B8C98);
    }
  }
}

void sub_26A7F41D0()
{
  if (!qword_2803B8CA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B8CA0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803AC918);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_2803B8CA8);
    }
  }
}

void sub_26A7F4264()
{
  if (!qword_2803B8CB0)
  {
    MEMORY[0x28223BE20](0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B8CA0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803AC918);
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata, &qword_2803B8CB0);
    }
  }
}

uint64_t sub_26A7F438C()
{
  result = qword_2803B8CB8;
  if (!qword_2803B8CB8)
  {
    result = MEMORY[0x277D837D0];
    atomic_store(MEMORY[0x277D837D0], &qword_2803B8CB8);
  }

  return result;
}

uint64_t sub_26A7F43B4(uint64_t a1)
{
  v2 = type metadata accessor for RichTextView.Tokenizer.Token(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_26A7F4410@<X0>(void (*a1)(_BYTE *__return_ptr)@<X1>, void (*a2)(_BYTE *__return_ptr)@<X3>, void *a3@<X8>)
{
  if (sub_26A84F338())
  {
    a1(__src);
    v6 = *__src;
    v7 = *&__src[16];
    LOBYTE(__dst[0]) = __src[24];
    v8 = __src[24];
    v16 = 0;
    v15[0] = *__src;
    *&v15[1] = *&__src[16];
    BYTE8(v15[1]) = __src[24];
    *&v15[2] = *&__src[32];
    WORD4(v15[2]) = *&__src[40];
    LOBYTE(v15[4]) = 0;
    sub_26A7F477C(*__src, *&__src[8], *&__src[16], __src[24]);
    sub_26A7F477C(v6, *(&v6 + 1), v7, v8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B8D20);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B8D50);
    sub_26A7F484C();
    sub_26A7F4E5C();
    sub_26A84FDF8();

    sub_26A7F4964(v6, *(&v6 + 1), v7, v8);
    sub_26A7F4964(v6, *(&v6 + 1), v7, v8);
  }

  else
  {
    a2(__src);
    v10 = *__src;
    v11 = *&__src[16];
    v12 = *&__src[32];
    v13 = *&__src[48];
    __dst[0] = *__src;
    __dst[1] = *&__src[16];
    __dst[2] = *&__src[32];
    __dst[3] = *&__src[48];
    sub_26A4D7E54();
    sub_26A4DBD10(__dst, &qword_2803B8D50);
    v15[0] = v10;
    v15[1] = v11;
    v15[2] = v12;
    v15[3] = v13;
    v16 = 1;
    LOBYTE(v15[4]) = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B8D20);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B8D50);
    sub_26A7F484C();
    sub_26A7F4E5C();
    sub_26A84FDF8();
  }

  memcpy(__dst, __src, 0x41uLL);
  memcpy(a3, __src, 0x41uLL);
  memcpy(v15, __src, 0x41uLL);
  sub_26A4D7E54();
  return sub_26A4DBD10(v15, &qword_2803B8D38);
}

uint64_t sub_26A7F46AC()
{
  OUTLINED_FUNCTION_145();
  v1(0);
  OUTLINED_FUNCTION_46();
  v2 = OUTLINED_FUNCTION_211();
  v3(v2);
  return v0;
}

uint64_t sub_26A7F4700@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = type metadata accessor for RichTextView(0);
  OUTLINED_FUNCTION_79(v4);

  return sub_26A7EE5A4(a1, a2);
}

uint64_t sub_26A7F477C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if ((a4 & 1) == 0)
  {
  }
}

unint64_t sub_26A7F47CC(uint64_t a1)
{
  result = OUTLINED_FUNCTION_32_1(a1);
  if (!result)
  {
    OUTLINED_FUNCTION_63_0(0, v4);
    v2();
    sub_26A7F504C(&unk_2803B8C50);
    result = OUTLINED_FUNCTION_15_40();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_26A7F484C()
{
  result = qword_2803B8D18;
  if (!qword_2803B8D18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B8D20);
    sub_26A7F48D8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B8D18);
  }

  return result;
}

unint64_t sub_26A7F48D8()
{
  result = qword_2803B8D28;
  if (!qword_2803B8D28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B8D30);
    sub_26A57E8FC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B8D28);
  }

  return result;
}

uint64_t sub_26A7F4964(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{

  if ((a4 & 1) == 0)
  {
  }

  return result;
}

double sub_26A7F49C8@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for RichTextView(0) - 8);
  v6 = (*(v5 + 64) + ((*(v5 + 80) + 16) & ~*(v5 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AC918);
  OUTLINED_FUNCTION_79(v7);
  v8 = *(v2 + v6);

  return sub_26A7EF634(a1, v8, a2);
}

uint64_t objectdestroyTm_30()
{
  v1 = type metadata accessor for RichTextView(0);
  OUTLINED_FUNCTION_33_10();
  v3 = v0 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  sub_26A49035C(*(v3 + 16), *(v3 + 24));
  sub_26A49035C(*(v3 + 32), *(v3 + 40));
  sub_26A49035C(*(v3 + 48), *(v3 + 56));
  sub_26A49035C(*(v3 + 64), *(v3 + 72));
  sub_26A49035C(*(v3 + 80), *(v3 + 88));
  sub_26A49035C(*(v3 + 96), *(v3 + 104));
  sub_26A49035C(*(v3 + 112), *(v3 + 120));
  sub_26A49035C(*(v3 + 128), *(v3 + 136));
  sub_26A49035C(*(v3 + 144), *(v3 + 152));
  sub_26A49035C(*(v3 + 160), *(v3 + 168));

  sub_26A49035C(*(v3 + 304), *(v3 + 312));
  v4 = v1[7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91A8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_26A84F3A8();
    OUTLINED_FUNCTION_46();
    (*(v5 + 8))(v3 + v4);
  }

  else
  {
  }

  v6 = OUTLINED_FUNCTION_6_47(v1[8]);
  sub_26A49035C(v6, v7);
  v8 = OUTLINED_FUNCTION_6_47(v1[9]);
  sub_26A49035C(v8, v9);
  sub_26A4F5724(*(v3 + v1[10]), *(v3 + v1[10] + 8), *(v3 + v1[10] + 9));
  v10 = OUTLINED_FUNCTION_6_47(v1[11]);
  sub_26A49035C(v10, v11);
  OUTLINED_FUNCTION_6_47(v1[12]);
  j__swift_release();
  v12 = v1[13];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB430);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_26A84EE68();
    OUTLINED_FUNCTION_46();
    (*(v13 + 8))(v3 + v12);
  }

  else
  {
  }

  v14 = v1[14];
  sub_26A84AFA8();
  OUTLINED_FUNCTION_46();
  (*(v15 + 8))(v3 + v14);

  return swift_deallocObject();
}

double sub_26A7F4D58@<D0>(_OWORD *a1@<X8>)
{
  v3 = type metadata accessor for RichTextView(0);
  OUTLINED_FUNCTION_79(v3);
  v5 = v1 + ((*(v4 + 80) + 16) & ~*(v4 + 80));

  return sub_26A7EF6A0(v5, a1);
}

unint64_t sub_26A7F4DD0()
{
  result = qword_2803B8D40;
  if (!qword_2803B8D40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B8D38);
    sub_26A7F484C();
    sub_26A7F4E5C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B8D40);
  }

  return result;
}

unint64_t sub_26A7F4E5C()
{
  result = qword_2803B8D48;
  if (!qword_2803B8D48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B8D50);
    sub_26A7F484C();
    sub_26A7F504C(&qword_28157FB78);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B8D48);
  }

  return result;
}

unint64_t sub_26A7F4F14()
{
  result = qword_2803B8D58;
  if (!qword_2803B8D58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B8CF8);
    sub_26A7F504C(&unk_2803B8D60);
    sub_26A7F504C(&unk_2803B8C50);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B8D58);
  }

  return result;
}

uint64_t sub_26A7F4FF8()
{
  OUTLINED_FUNCTION_145();
  v1(0);
  OUTLINED_FUNCTION_46();
  v2 = OUTLINED_FUNCTION_211();
  v3(v2);
  return v0;
}

unint64_t sub_26A7F504C(uint64_t a1)
{
  result = OUTLINED_FUNCTION_32_1(a1);
  if (!result)
  {
    OUTLINED_FUNCTION_63_0(0, v3);
    OUTLINED_FUNCTION_10_6();
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

uint64_t sub_26A7F5080@<X0>(uint64_t (**a1)(void, void)@<X0>, uint64_t *a2@<X8>)
{
  result = (*a1)(*(v2 + 16), *(v2 + 24));
  *a2 = result;
  return result;
}

unint64_t sub_26A7F50E8(uint64_t a1)
{
  result = OUTLINED_FUNCTION_32_1(a1);
  if (!result)
  {
    v4(v3);
    OUTLINED_FUNCTION_10_6();
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_26A7F5128()
{
  result = qword_2803B8D98;
  if (!qword_2803B8D98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B8D98);
  }

  return result;
}

unint64_t sub_26A7F517C()
{
  result = qword_2803B8DA0;
  if (!qword_2803B8DA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B8DA0);
  }

  return result;
}

unint64_t sub_26A7F51D0()
{
  result = qword_2803B8DA8;
  if (!qword_2803B8DA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B8DA8);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_14_46()
{

  return sub_26A84A968();
}

uint64_t OUTLINED_FUNCTION_15_40()
{

  return swift_getWitnessTable();
}

uint64_t OUTLINED_FUNCTION_55_5()
{

  return swift_allocObject();
}

uint64_t sub_26A7F5ACC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_26A51D0F8(a1, &v7, qword_2803B0718);
  if (v8)
  {
    sub_26A576F3C(&v7, v9);
    sub_26A831B48();

    sub_26A4DBD10(a1, qword_2803B0718);
    return __swift_destroy_boxed_opaque_existential_1(v9);
  }

  else
  {
    sub_26A4DBD10(&v7, qword_2803B0718);
    sub_26A832258(a2, a3);

    return sub_26A4DBD10(a1, qword_2803B0718);
  }
}

id sub_26A7F5CA4(uint64_t a1)
{
  v2 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v3 = sub_26A84AC88();
  v4 = [v2 initWithNSUUID_];

  sub_26A84ACC8();
  OUTLINED_FUNCTION_46();
  (*(v5 + 8))(a1);
  return v4;
}

uint64_t sub_26A7F5D38()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B8DE8);
  sub_26A84A7D8();
  *(swift_allocObject() + 16) = xmmword_26A8570F0;
  sub_26A84A7C8();
  sub_26A84A7B8();
  sub_26A7F79DC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B8DF8);
  sub_26A7F7A34();
  return sub_26A852118();
}

id sub_26A7F5E5C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_26A84E408();
  OUTLINED_FUNCTION_15();
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v12);
  v13 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = &v3[OBJC_IVAR____TtC9SnippetUI21RFVisualResponseShown_instrumentationClient];
  v15 = type metadata accessor for StandardSELFInstrumentationClient();
  v16 = swift_allocObject();
  v14[3] = v15;
  v14[4] = &off_287B17ED8;
  *v14 = v16;
  v17 = OBJC_IVAR____TtC9SnippetUI21RFVisualResponseShown_preferences;
  *&v3[v17] = [objc_opt_self() sharedPreferences];
  v18 = OBJC_IVAR____TtC9SnippetUI21RFVisualResponseShown_remoteAssetManager;
  if (qword_28157EA98 != -1)
  {
    OUTLINED_FUNCTION_1_102();
  }

  *&v3[v18] = qword_2815889B8;
  v19 = &v3[OBJC_IVAR____TtC9SnippetUI21RFVisualResponseShown_patternId];
  *v19 = a2;
  *(v19 + 1) = a3;
  v20 = &v3[OBJC_IVAR____TtC9SnippetUI21RFVisualResponseShown_responseViewId];
  *v20 = 0;
  *(v20 + 1) = 0;
  (*(v9 + 16))(&v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v7);
  v21 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v22 = swift_allocObject();
  (*(v9 + 32))(v22 + v21, v13, v7);
  v23 = &v3[OBJC_IVAR____TtC9SnippetUI21RFVisualResponseShown_instrumentationPayload];
  *v23 = sub_26A7F7844;
  *(v23 + 1) = v22;
  v24 = type metadata accessor for RFVisualResponseShown();
  v27.receiver = v3;
  v27.super_class = v24;

  v25 = objc_msgSendSuper2(&v27, sel_init);
  (*(v9 + 8))(a1, v7);
  return v25;
}

id sub_26A7F6094(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = &v5[OBJC_IVAR____TtC9SnippetUI21RFVisualResponseShown_instrumentationClient];
  v12 = type metadata accessor for StandardSELFInstrumentationClient();
  v13 = swift_allocObject();
  v11[3] = v12;
  v11[4] = &off_287B17ED8;
  *v11 = v13;
  v14 = OBJC_IVAR____TtC9SnippetUI21RFVisualResponseShown_preferences;
  *&v5[v14] = [objc_opt_self() sharedPreferences];
  v15 = OBJC_IVAR____TtC9SnippetUI21RFVisualResponseShown_remoteAssetManager;
  if (qword_28157EA98 != -1)
  {
    OUTLINED_FUNCTION_1_102();
  }

  *&v5[v15] = qword_2815889B8;
  v16 = &v5[OBJC_IVAR____TtC9SnippetUI21RFVisualResponseShown_responseViewId];
  *v16 = a4;
  *(v16 + 1) = a5;
  v17 = &v5[OBJC_IVAR____TtC9SnippetUI21RFVisualResponseShown_patternId];
  *v17 = 0;
  *(v17 + 1) = 0;
  sub_26A50429C(a1, v23);
  v18 = swift_allocObject();
  sub_26A514388(v23, v18 + 16);
  *(v18 + 56) = a2;
  *(v18 + 64) = a3;
  v19 = &v5[OBJC_IVAR____TtC9SnippetUI21RFVisualResponseShown_instrumentationPayload];
  *v19 = sub_26A7F7824;
  v19[1] = v18;
  v22.receiver = v5;
  v22.super_class = type metadata accessor for RFVisualResponseShown();

  v20 = objc_msgSendSuper2(&v22, sel_init);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v20;
}

uint64_t sub_26A7F6220@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  sub_26A50429C(a1, v11);

  result = sub_26A793B24(v11, a2, a3, &v12);
  v8 = v14;
  if (v14)
  {
    v9 = v13;
    *a4 = v12;
    *(a4 + 16) = v9;
    *(a4 + 24) = v8;
  }

  else
  {
    sub_26A793A7C();
    swift_allocError();
    *v10 = 1;
    return swift_willThrow();
  }

  return result;
}

id RFVisualResponseShown.init(cardData:responseViewId:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = &v4[OBJC_IVAR____TtC9SnippetUI21RFVisualResponseShown_instrumentationClient];
  v10 = type metadata accessor for StandardSELFInstrumentationClient();
  v11 = swift_allocObject();
  v9[3] = v10;
  v9[4] = &off_287B17ED8;
  *v9 = v11;
  v12 = OBJC_IVAR____TtC9SnippetUI21RFVisualResponseShown_preferences;
  *&v4[v12] = [objc_opt_self() sharedPreferences];
  v13 = OBJC_IVAR____TtC9SnippetUI21RFVisualResponseShown_remoteAssetManager;
  if (qword_28157EA98 != -1)
  {
    OUTLINED_FUNCTION_1_102();
  }

  *&v4[v13] = qword_2815889B8;
  v14 = &v4[OBJC_IVAR____TtC9SnippetUI21RFVisualResponseShown_responseViewId];
  *v14 = a3;
  *(v14 + 1) = a4;
  v15 = &v4[OBJC_IVAR____TtC9SnippetUI21RFVisualResponseShown_patternId];
  *v15 = 0;
  *(v15 + 1) = 0;
  v16 = swift_allocObject();
  *(v16 + 16) = a1;
  *(v16 + 24) = a2;
  v17 = &v4[OBJC_IVAR____TtC9SnippetUI21RFVisualResponseShown_instrumentationPayload];
  *v17 = sub_26A7F64BC;
  v17[1] = v16;
  v19.receiver = v4;
  v19.super_class = type metadata accessor for RFVisualResponseShown();

  return objc_msgSendSuper2(&v19, sel_init);
}

uint64_t sub_26A7F6488@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  *a3 = a1;
  a3[1] = a2 | 0x2000000000000000;
  a3[2] = 0;
  a3[3] = 0;
  return sub_26A54D260(a1, a2);
}

uint64_t sub_26A7F6584(uint64_t a1)
{
  v3 = sub_26A84ACC8();
  OUTLINED_FUNCTION_15();
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AC090);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v17 - v10;
  v12 = sub_26A851C18();
  __swift_storeEnumTagSinglePayload(v11, 1, 1, v12);
  (*(v5 + 16))(&v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
  v13 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v14 = swift_allocObject();
  *(v14 + 2) = 0;
  *(v14 + 3) = 0;
  *(v14 + 4) = v1;
  (*(v5 + 32))(&v14[v13], &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v3);
  v15 = v1;
  sub_26A601D48(0, 0, v11, &unk_26A887100, v14);
}

uint64_t sub_26A7F672C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v6 = sub_26A84ACC8();
  v5[4] = v6;
  v5[5] = *(v6 - 8);
  v5[6] = swift_task_alloc();
  v7 = swift_task_alloc();
  v5[7] = v7;
  *v7 = v5;
  v7[1] = sub_26A7F681C;

  return sub_26A7F6F24();
}

uint64_t sub_26A7F681C()
{
  OUTLINED_FUNCTION_1_10();
  *(*v0 + 64) = v1;

  v2 = OUTLINED_FUNCTION_5_80();

  return MEMORY[0x2822009F8](v2, v3, v4);
}

uint64_t sub_26A7F6B98(uint64_t a1)
{
  v4 = *(sub_26A84ACC8() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_26A6156E0;

  return sub_26A7F672C(a1, v6, v7, v8, v1 + v5);
}

id sub_26A7F6C90@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 visualResponseShownTier1];
  *a2 = result;
  return result;
}

id sub_26A7F6CCC@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 visualResponseShownLink];
  *a2 = result;
  return result;
}

uint64_t sub_26A7F6F24()
{
  *(v1 + 16) = v0;
  v2 = OUTLINED_FUNCTION_5_80();
  return MEMORY[0x2822009F8](v2, v3, v4);
}

uint64_t sub_26A7F6F4C()
{
  OUTLINED_FUNCTION_1_10();
  v1 = v0[2];
  v2 = v1 + OBJC_IVAR____TtC9SnippetUI21RFVisualResponseShown_patternId;
  v0[3] = *(v1 + OBJC_IVAR____TtC9SnippetUI21RFVisualResponseShown_patternId);
  v3 = *(v2 + 8);
  v0[4] = v3;
  if (v3)
  {
    v4 = *(v1 + OBJC_IVAR____TtC9SnippetUI21RFVisualResponseShown_remoteAssetManager);
    v0[5] = v4;
    v5 = sub_26A7F705C;
LABEL_5:
    v8 = v5;

    return MEMORY[0x2822009F8](v8, v4, 0);
  }

  v6 = v1 + OBJC_IVAR____TtC9SnippetUI21RFVisualResponseShown_responseViewId;
  v0[7] = *(v1 + OBJC_IVAR____TtC9SnippetUI21RFVisualResponseShown_responseViewId);
  v7 = *(v6 + 8);
  v0[8] = v7;
  if (v7)
  {
    v4 = *(v1 + OBJC_IVAR____TtC9SnippetUI21RFVisualResponseShown_remoteAssetManager);
    v0[9] = v4;
    v5 = sub_26A7F7144;
    goto LABEL_5;
  }

  v9 = v0[1];

  return v9(0);
}

uint64_t sub_26A7F705C()
{
  OUTLINED_FUNCTION_1_10();
  *(v0 + 48) = sub_26A7F53EC();

  v1 = OUTLINED_FUNCTION_5_80();

  return MEMORY[0x2822009F8](v1, v2, v3);
}

uint64_t sub_26A7F70C4()
{
  OUTLINED_FUNCTION_1_10();
  if (v0[6])
  {
    v1 = sub_26A4E3590(v0[3], v0[4], v0[6]);
  }

  else
  {
    v1 = 0;
  }

  v2 = v0[1];

  return v2(v1 & 1);
}

uint64_t sub_26A7F7144()
{
  OUTLINED_FUNCTION_1_10();
  *(v0 + 80) = sub_26A7F53EC();

  v1 = OUTLINED_FUNCTION_5_80();

  return MEMORY[0x2822009F8](v1, v2, v3);
}

uint64_t sub_26A7F71AC()
{
  OUTLINED_FUNCTION_1_10();
  if (v0[10])
  {
    v1 = sub_26A4E46AC(v0[7], v0[8], v0[10]);
  }

  else
  {
    v1 = 0;
  }

  v2 = v0[1];

  return v2(v1 & 1);
}

void *sub_26A7F722C()
{
  v1 = sub_26A84A7D8();
  OUTLINED_FUNCTION_15();
  v3 = v2;
  MEMORY[0x28223BE20](v4);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [objc_allocWithZone(MEMORY[0x277D5A350]) init];
  v8 = v7;
  if (v7)
  {
    v9 = *(v0 + OBJC_IVAR____TtC9SnippetUI21RFVisualResponseShown_patternId + 8);
    v10 = v7;
    if (v9)
    {
      v9 = sub_26A851788();
    }

    [v8 setPatternId_];

    v11 = *(v0 + OBJC_IVAR____TtC9SnippetUI21RFVisualResponseShown_responseViewId + 8);
    v12 = v8;
    if (v11)
    {
      v11 = sub_26A851788();
    }

    [v8 setResponseViewId_];

    v13 = *(v0 + OBJC_IVAR____TtC9SnippetUI21RFVisualResponseShown_instrumentationPayload);
    v14 = v8;
    v13(v31);
    v15 = v31[1];
    v26 = v31[0];
    v16 = v31[2];
    v17 = v31[3];
    sub_26A84A818();
    sub_26A7F5D38();
    sub_26A710E2C(v6);
    (*(v3 + 8))(v6, v1);
    v27 = v26;
    v28 = v15;
    v29 = v16;
    v30 = v17;
    sub_26A7F78B0();
    v19 = sub_26A84A7F8();
    v21 = v20;
    v22 = sub_26A84ABD8();
    v25 = v23;
    sub_26A513D40(v19, v21);

    OUTLINED_FUNCTION_6_72();
    sub_26A7F7978(v22, v25, v14);
  }

  return v8;
}

id sub_26A7F7598(uint64_t a1)
{
  v2 = sub_26A84ACC8();
  OUTLINED_FUNCTION_15();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [objc_allocWithZone(MEMORY[0x277D5A348]) init];
  if (v8)
  {
    sub_26A646DC4();
    (*(v4 + 16))(v7, a1, v2);
    v9 = v8;
    v10 = sub_26A7F5CA4(v7);
    [v9 setTurnId_];
  }

  return v8;
}

id RFVisualResponseShown.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id RFVisualResponseShown.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for RFVisualResponseShown();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_26A7F78B0()
{
  result = qword_2803B8DE0;
  if (!qword_2803B8DE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B8DE0);
  }

  return result;
}

uint64_t sub_26A7F7904(uint64_t result, unint64_t a2)
{
  switch((a2 >> 60) & 3)
  {
    case 1uLL:
    case 2uLL:
      v3 = a2 & 0xCFFFFFFFFFFFFFFFLL;

      result = sub_26A513D40(result, v3);
      break;
    case 3uLL:
      return result;
    default:
      sub_26A513D40(result, a2);

      break;
  }

  return result;
}

void sub_26A7F7978(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_26A851788();

  [a3 setResponseModel_];
}

unint64_t sub_26A7F79DC()
{
  result = qword_2803B8DF0;
  if (!qword_2803B8DF0)
  {
    sub_26A84A7D8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B8DF0);
  }

  return result;
}

unint64_t sub_26A7F7A34()
{
  result = qword_2803B8E00;
  if (!qword_2803B8E00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B8DF8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B8E00);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_1_102()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_6_72()
{

  return sub_26A7F7904(v0, v1);
}

uint64_t sub_26A7F7B00(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v6 = a5 >> 1;
    result = sub_26A4C1EA8(a4, result, a5 >> 1, a2, a3, a4, a5);
    if (v7)
    {
      v8 = v6;
    }

    else
    {
      v8 = result;
    }

    if (v8 >= a4)
    {
      sub_26A796B98(a4);
      OUTLINED_FUNCTION_8_69();
      swift_unknownObjectRelease();
      return OUTLINED_FUNCTION_10_55();
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_26A7F7BCC(uint64_t result, uint64_t a2, uint64_t (*a3)(void, uint64_t, uint64_t, uint64_t), void (*a4)(void))
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
      v7 = v5;
    }

    else
    {
      v7 = result;
    }

    if ((v7 & 0x8000000000000000) == 0)
    {
      a4(0);
      OUTLINED_FUNCTION_8_69();

      return OUTLINED_FUNCTION_10_55();
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_26A7F7C54()
{
  v1 = sub_26A84F988();
  OUTLINED_FUNCTION_15();
  v3 = v2;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_41();
  v7 = v6 - v5;
  v8 = *(v0 + 16);
  if ((*(v0 + 24) & 1) == 0)
  {

    sub_26A851EA8();
    v9 = sub_26A8501F8();
    sub_26A84EA78();

    sub_26A84F978();
    swift_getAtKeyPath();
    sub_26A4D82E8(v8, 0);
    (*(v3 + 8))(v7, v1);
    return v11;
  }

  return v8;
}

uint64_t sub_26A7F7D84()
{
  v1 = sub_26A84F988();
  OUTLINED_FUNCTION_15();
  v3 = v2;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_41();
  v7 = v6 - v5;
  v9 = *(v0 + 120);
  v8 = *(v0 + 128);
  v10 = *(v0 + 136);
  if (*(v0 + 137) == 1)
  {
    sub_26A67F998(*(v0 + 120), *(v0 + 128));
  }

  else
  {

    sub_26A851EA8();
    v11 = sub_26A8501F8();
    sub_26A84EA78();

    sub_26A84F978();
    swift_getAtKeyPath();
    sub_26A7FADD8(v9, v8, v10, 0);
    (*(v3 + 8))(v7, v1);
    return v13;
  }

  return v9;
}

uint64_t sub_26A7F7EE8()
{
  v1 = *v0;
  if (*v0)
  {
    v6 = 0xD000000000000012;
    v7 = 0x800000026A893050;
    v2 = v1;
    sub_26A8521C8();
    sub_26A61BBC8();

    sub_26A507CB4();

    sub_26A5497BC(v5);
    if (v8)
    {
      result = swift_dynamicCast();
      if (result)
      {
        return v4;
      }
    }

    else
    {
      sub_26A4D6FD8();
      return 0;
    }
  }

  else
  {
    type metadata accessor for Context();
    sub_26A7FB720();
    result = sub_26A84F668();
    __break(1u);
  }

  return result;
}

uint64_t ButtonContainerView.init(buttons:)@<X0>(uint64_t (*a1)(uint64_t)@<X0>, uint64_t a2@<X8>)
{
  type metadata accessor for Context();
  OUTLINED_FUNCTION_5_81();
  sub_26A7FB720();
  *a2 = sub_26A84F678();
  *(a2 + 8) = v4;
  *(a2 + 16) = swift_getKeyPath();
  *(a2 + 24) = 0;
  *(a2 + 40) = 0;
  sub_26A851048();
  *(a2 + 48) = v11;
  *(a2 + 56) = v12;
  sub_26A851048();
  *(a2 + 64) = v11;
  *(a2 + 72) = v12;
  sub_26A84ED98();
  *(a2 + 80) = v11;
  *(a2 + 88) = v12;
  *(a2 + 96) = v13;
  *(a2 + 112) = v14;
  *(a2 + 120) = swift_getKeyPath();
  *(a2 + 128) = 0;
  *(a2 + 136) = 0;
  *(a2 + 144) = swift_getKeyPath();
  *(a2 + 153) = 0;
  v5 = swift_unknownObjectWeakInit();
  v6 = *(a1(v5) + 16);
  if (v6)
  {
    v10 = MEMORY[0x277D84F90];
    sub_26A8522F8();
    v7 = 32;
    do
    {
      swift_getKeyPath();
      swift_retain_n();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B8E08);
      sub_26A7F8298();
      sub_26A851248();

      sub_26A8522C8();
      sub_26A852308();
      OUTLINED_FUNCTION_25_1();
      sub_26A852318();
      sub_26A8522D8();
      v7 += 8;
      --v6;
    }

    while (v6);

    v9 = v10;
  }

  else
  {

    v9 = MEMORY[0x277D84F90];
  }

  *(a2 + 32) = v9;
  return result;
}

unint64_t sub_26A7F8298()
{
  result = qword_2803B8E10;
  if (!qword_2803B8E10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B8E08);
    sub_26A4D7DCC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B8E10);
  }

  return result;
}

uint64_t sub_26A7F8350@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  type metadata accessor for Context();
  OUTLINED_FUNCTION_5_81();
  sub_26A7FB720();
  *a2 = sub_26A84F678();
  *(a2 + 8) = v4;
  *(a2 + 16) = swift_getKeyPath();
  *(a2 + 24) = 0;
  *(a2 + 40) = 0;
  sub_26A851048();
  *(a2 + 48) = v6;
  *(a2 + 56) = v7;
  sub_26A851048();
  *(a2 + 64) = v6;
  *(a2 + 72) = v7;
  sub_26A84ED98();
  *(a2 + 80) = v6;
  *(a2 + 88) = v7;
  *(a2 + 96) = v8;
  *(a2 + 112) = v9;
  *(a2 + 120) = swift_getKeyPath();
  *(a2 + 128) = 0;
  *(a2 + 136) = 0;
  *(a2 + 144) = swift_getKeyPath();
  *(a2 + 153) = 0;
  result = swift_unknownObjectWeakInit();
  *(a2 + 32) = a1;
  return result;
}

uint64_t ButtonContainerView.body.getter()
{
  type metadata accessor for RFButtonStyle();
  OUTLINED_FUNCTION_46();
  MEMORY[0x28223BE20](v0);
  OUTLINED_FUNCTION_41();
  v3 = v2 - v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B8E18);
  OUTLINED_FUNCTION_46();
  MEMORY[0x28223BE20](v4);
  sub_26A7F85F8();
  static PrimitiveButtonStyle<>.rfButton.getter(v3);
  sub_26A7F891C();
  OUTLINED_FUNCTION_4_85();
  sub_26A7FB720();
  sub_26A850978();
  sub_26A7FB764();
  return sub_26A4D6FD8();
}

uint64_t sub_26A7F85F8()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B8E80);
  MEMORY[0x28223BE20](v0);
  v2 = __src - v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B8E90);
  MEMORY[0x28223BE20](v3);
  v5 = __src - v4;
  v6 = sub_26A7F7C54();
  if (sub_26A61B05C(v6, &unk_287B13068))
  {
    sub_26A7F8C70(__src);
    memcpy(v5, __src, 0x60uLL);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B8E40);
    sub_26A7F8A58();
    sub_26A4D7DCC();
    return sub_26A84FDF8();
  }

  else
  {
    *v2 = sub_26A84FBF8();
    *(v2 + 1) = 0;
    v2[16] = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B8E98);
    sub_26A56CD7C();
    __src[0] = v8;
    swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B8EA0);
    sub_26A4D7DCC();
    sub_26A8512F8();
    sub_26A514320(v2, v5, &qword_2803B8E80);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B8E40);
    sub_26A7F8A58();
    sub_26A4D7DCC();
    sub_26A84FDF8();
    return sub_26A4D6FD8();
  }
}

unint64_t sub_26A7F891C()
{
  result = qword_2803B8E20;
  if (!qword_2803B8E20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B8E18);
    sub_26A7F89A0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B8E20);
  }

  return result;
}

unint64_t sub_26A7F89A0()
{
  result = qword_2803B8E28;
  if (!qword_2803B8E28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B8E30);
    sub_26A7F8A58();
    sub_26A4D7DCC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B8E28);
  }

  return result;
}

unint64_t sub_26A7F8A58()
{
  result = qword_2803B8E38;
  if (!qword_2803B8E38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B8E40);
    sub_26A7F8AE4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B8E38);
  }

  return result;
}

unint64_t sub_26A7F8AE4()
{
  result = qword_2803B8E48;
  if (!qword_2803B8E48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B8E50);
    sub_26A7F8B9C();
    sub_26A4D7DCC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B8E48);
  }

  return result;
}

unint64_t sub_26A7F8B9C()
{
  result = qword_2803B8E58;
  if (!qword_2803B8E58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B8E60);
    sub_26A4D7DCC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B8E58);
  }

  return result;
}

uint64_t sub_26A7F8C70@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  sub_26A850468();
  sub_26A8503A8();
  v4 = sub_26A850428();

  v5 = sub_26A84FA78();
  v6 = *(v1 + 56);
  v11[0] = *(v1 + 48);
  v12 = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AC190);
  sub_26A851058();
  if (v13 == 1)
  {
    v7 = sub_26A7F8DCC();
  }

  else
  {
    v7 = 0;
  }

  sub_26A7FADA0(v2, v11);
  v8 = swift_allocObject();
  sub_26A7FADE4(v11, v8 + 16);
  v11[0] = 0;
  result = swift_getKeyPath();
  v10 = v11[0];
  *a1 = v5;
  *(a1 + 8) = 0;
  *(a1 + 16) = v10;
  *(a1 + 24) = v7;
  *(a1 + 32) = sub_26A7FAE1C;
  *(a1 + 40) = v8;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = result;
  *(a1 + 72) = v4;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  return result;
}

uint64_t sub_26A7F8D9C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_26A7F8D94();
  *a1 = result;
  return result;
}

uint64_t sub_26A7F8DCC()
{
  v1 = v0;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B8EB0);
  MEMORY[0x28223BE20](v49);
  v3 = v47 - v2;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AE268) - 8;
  MEMORY[0x28223BE20](v53);
  v5 = v47 - v4;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AE270);
  MEMORY[0x28223BE20](v55);
  v50 = v47 - v6;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B8EB8);
  v52 = *(v54 - 8);
  MEMORY[0x28223BE20](v54);
  v51 = v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v48 = v47 - v9;
  v10 = *(v0 + 32);

  v11 = sub_26A7F7BCC(3, v10, sub_26A8496F0, sub_26A8496F8);
  v13 = v12;
  v15 = v14;
  v17 = v16;
  *v3 = sub_26A84FA78();
  *(v3 + 1) = 0x4024000000000000;
  v3[16] = 0;
  v47[1] = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B8EC0) + 44);
  swift_unknownObjectRetain();
  sub_26A56CED0();
  v19 = v18;
  swift_unknownObjectRelease();
  v56 = v19;
  swift_getKeyPath();
  sub_26A7FADA0(v1, &v57);
  v20 = swift_allocObject();
  sub_26A7FADE4(&v57, (v20 + 2));
  v20[23] = v11;
  v20[24] = v13;
  v20[25] = v15;
  v20[26] = v17;
  v21 = swift_allocObject();
  *(v21 + 16) = sub_26A7FAE24;
  *(v21 + 24) = v20;
  swift_unknownObjectRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B8EA0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B8EC8);
  sub_26A4D7DCC();
  sub_26A7FAE34();
  sub_26A8512F8();
  v22 = *(v1 + 88);
  v23 = *(v1 + 112);
  v57 = *(v1 + 80);
  LOBYTE(v58) = v22;
  v59 = *(v1 + 96);
  v60 = v23;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B8F08);
  sub_26A84ED58();
  sub_26A7FADA0(v1, &v57);
  v24 = swift_allocObject();
  sub_26A7FADE4(&v57, v24 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB3B8);
  sub_26A4D7DCC();
  sub_26A7FB200(&qword_2803AFA58);
  sub_26A850C88();

  sub_26A4D6FD8();
  LOBYTE(v15) = sub_26A850238();
  sub_26A84ED48();
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v32 = v31;
  v33 = &v5[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B8F18) + 36)];
  *v33 = v15;
  *(v33 + 1) = v26;
  *(v33 + 2) = v28;
  *(v33 + 3) = v30;
  *(v33 + 4) = v32;
  v33[40] = 0;
  LOBYTE(v15) = sub_26A850268();
  v34 = sub_26A84ED48();
  v35 = &v5[*(v53 + 44)];
  *v35 = v15;
  *(v35 + 1) = v36;
  *(v35 + 2) = v37;
  *(v35 + 3) = v38;
  *(v35 + 4) = v39;
  v35[40] = 0;
  sub_26A58C7F4(v34, 10.0, 0.0);
  sub_26A4D6FD8();
  v40 = sub_26A7FB26C();
  v41 = v48;
  v42 = v55;
  sub_26A850AF8();
  sub_26A4D6FD8();
  v43 = v52;
  v44 = v54;
  (*(v52 + 16))(v51, v41, v54);
  v57 = v42;
  v58 = v40;
  swift_getOpaqueTypeConformance2();
  v45 = sub_26A851248();
  swift_unknownObjectRelease();
  (*(v43 + 8))(v41, v44);
  return v45;
}

uint64_t sub_26A7F94D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X5>, unint64_t a5@<X6>, unint64_t a6@<X8>)
{
  v51 = a5;
  v52 = a4;
  v46 = type metadata accessor for RFButtonStyle();
  MEMORY[0x28223BE20](v46);
  v11 = &v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B8F38);
  v42 = *(v43 - 8);
  MEMORY[0x28223BE20](v43);
  v13 = &v41 - v12;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B8EE8);
  MEMORY[0x28223BE20](v44);
  v15 = &v41 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B8F40);
  v50 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v49 = &v41 - v17;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B8EE0);
  MEMORY[0x28223BE20](v47);
  v48 = &v41 - v18;
  v19 = *(a3 + 80);
  v20 = *(a3 + 88);
  v21 = *(a3 + 112);
  v56 = a2;
  *&__src[0] = v19;
  BYTE8(__src[0]) = v20;
  __src[1] = *(a3 + 96);
  LOBYTE(__src[2]) = v21;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B8F08);
  sub_26A84ED78();
  __src[0] = v53;
  *&__src[1] = v54;
  BYTE8(__src[1]) = v55;
  v45 = a1;
  *&v53 = a1;
  BYTE8(v53) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB3B8);
  sub_26A7FB200(&qword_2803B8EF8);
  sub_26A850C08();

  if (*a3)
  {
    v22 = *a3;
    v23 = sub_26A61B310();
    v25 = v24;

    v26 = (v51 >> 1) - v52;
    if (__OFSUB__(v51 >> 1, v52))
    {
      __break(1u);
    }

    else
    {
      v52 = v16;
      v16 = v26 - 1;
      if (!__OFSUB__(v26, 1))
      {
        v51 = a6;
        v27 = sub_26A7F7D84();
        v29 = v28;
        v31 = v30;
        (*(v42 + 32))(v15, v13, v43);
        v32 = &v15[*(v44 + 36)];
        *v32 = v23;
        v32[8] = v25 & 1;
        v33 = v45;
        *(v32 + 2) = v16;
        *(v32 + 3) = v33;
        *(v32 + 4) = v27;
        *(v32 + 5) = v29;
        v32[48] = v31;
        static PrimitiveButtonStyle<>.rfButton.getter(v11);
        sub_26A7FB004();
        sub_26A7FB720();
        v16 = v49;
        sub_26A850978();
        sub_26A7FB764();
        sub_26A4D6FD8();
        sub_26A851448();
LABEL_5:
        sub_26A84F628();
        v34 = v48;
        (*(v50 + 32))(v48, v16, v52);
        memcpy(&v34[*(v47 + 36)], __src, 0x70uLL);
        KeyPath = swift_getKeyPath();
        v36 = v34;
        v37 = v51;
        sub_26A4BE9B8(v36, v51);
        result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B8EC8);
        v39 = v37 + *(result + 36);
        *v39 = KeyPath;
        *(v39 + 8) = 1;
        return result;
      }
    }

    __break(1u);
    sub_26A851EA8();
    v40 = sub_26A8501F8();
    sub_26A84EA78();

    goto LABEL_5;
  }

  type metadata accessor for Context();
  sub_26A7FB720();
  result = sub_26A84F668();
  __break(1u);
  return result;
}

uint64_t sub_26A7F9B2C(uint64_t a1)
{
  sub_26A4F5FCC(a1 + 160, v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B8F08);
  sub_26A84ED58();
  if (v6 == 1)
  {
    v1 = sub_26A84A758();
  }

  else
  {
    v1 = v5;
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return sub_26A53F320(v7);
  }

  v3 = Strong;
  if ([Strong respondsToSelector_])
  {
    [v3 snippetFocusDidChange_];
    swift_unknownObjectRelease();
    return sub_26A53F320(v7);
  }

  sub_26A53F320(v7);
  return swift_unknownObjectRelease();
}

uint64_t sub_26A7F9D08(char a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AC190);
  result = sub_26A851058();
  if ((v3 & 1) == 0)
  {
    if (a1)
    {
      MEMORY[0x28223BE20](result);
      sub_26A8514B8();
      sub_26A84F1C8();
    }

    else
    {
      return sub_26A851068();
    }
  }

  return result;
}

uint64_t sub_26A7F9E74@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v32 = a1;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B8F68);
  OUTLINED_FUNCTION_46();
  MEMORY[0x28223BE20](v4);
  v6 = (v31 - v5);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B8F70);
  OUTLINED_FUNCTION_15();
  v9 = v8;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v11);
  v13 = v31 - v12;
  v14 = *(v2 + 40);
  if (v14)
  {
    v16 = *(v2 + 24);
    v15 = *(v2 + 32);
    v17 = *(v2 + 48);
    v18 = *(v2 + 16) & ~(*(v2 + 16) >> 63);
    if (*v2 >= v18)
    {
      v19 = *(v2 + 16) & ~(*(v2 + 16) >> 63);
    }

    else
    {
      v19 = *v2;
    }

    if (*v2 >= 0)
    {
      v20 = v19;
    }

    else
    {
      v20 = 0;
    }

    if ((*(v2 + 8) & 1) == 0)
    {
      v18 = v20;
    }

    v31[2] = *(v2 + 32);
    v34 = v15;
    v35 = v14;
    LOBYTE(v36) = v17 & 1;
    v38 = v18 == v16;

    v31[1] = a2;
    v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B8F78);
    OUTLINED_FUNCTION_3_23();
    v22 = sub_26A4D7DCC();
    v23 = MEMORY[0x277D839B0];
    sub_26A850C08();
    v24 = OUTLINED_FUNCTION_25_1();
    v25(v24);
    v34 = v21;
    v35 = v23;
    v36 = v22;
    v37 = MEMORY[0x277D839C0];
    swift_getOpaqueTypeConformance2();
    v26 = sub_26A851248();
    (*(v9 + 8))(v13, v7);
    *v6 = v26;
    swift_storeEnumTagMultiPayload();
    sub_26A84FDF8();
  }

  else
  {
    v28 = OUTLINED_FUNCTION_211();
    v29 = __swift_instantiateConcreteTypeFromMangledNameV2(v28);
    OUTLINED_FUNCTION_46();
    (*(v30 + 16))(v6, v32, v29);
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_3_23();
    sub_26A4D7DCC();
    return sub_26A84FDF8();
  }
}

unint64_t sub_26A7FA1D4(uint64_t a1)
{
  result = sub_26A7FB720();
  *(a1 + 8) = result;
  return result;
}

uint64_t get_enum_tag_for_layout_string_7SwiftUI10FocusStateV7BindingVySb_GSg(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_26A7FA250(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 168))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 32);
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

uint64_t sub_26A7FA290(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 136) = 0u;
    *(result + 152) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 168) = 1;
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
      *(result + 32) = (a2 - 1);
      return result;
    }

    *(result + 168) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_26A7FA308@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_26A84BDB8();
  OUTLINED_FUNCTION_15();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_41();
  v8 = v7 - v6;
  v9 = sub_26A84BDD8();
  v10 = *(v9 + 16);
  if (v10)
  {
    v18 = MEMORY[0x277D84F90];
    sub_26A8522F8();
    v11 = v4 + 16;
    v17 = *(v4 + 16);
    v12 = v9 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v13 = *(v4 + 72);
    v14 = (v11 - 8);
    do
    {
      v17(v8, v12, v2);
      sub_26A7FA4A8();
      (*v14)(v8, v2);
      sub_26A8522C8();
      sub_26A852308();
      OUTLINED_FUNCTION_25_1();
      sub_26A852318();
      sub_26A8522D8();
      v12 += v13;
      --v10;
    }

    while (v10);

    v15 = v18;
  }

  else
  {

    v15 = MEMORY[0x277D84F90];
  }

  return sub_26A7F8350(v15, a1);
}

uint64_t sub_26A7FA4A8()
{
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B8F48);
  OUTLINED_FUNCTION_46();
  MEMORY[0x28223BE20](v0);
  OUTLINED_FUNCTION_6_0();
  v81 = v1 - v2;
  MEMORY[0x28223BE20](v3);
  v82 = &v79 - v4;
  v83 = sub_26A84B158();
  OUTLINED_FUNCTION_15();
  v80 = v5;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_41();
  v79 = v8 - v7;
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B8F50);
  OUTLINED_FUNCTION_46();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_6_0();
  v91 = v10 - v11;
  MEMORY[0x28223BE20](v12);
  v14 = &v79 - v13;
  v15 = sub_26A84BAB8();
  MEMORY[0x28223BE20](v15 - 8);
  OUTLINED_FUNCTION_6_0();
  v88 = v16 - v17;
  MEMORY[0x28223BE20](v18);
  v87 = &v79 - v19;
  v20 = sub_26A84E158();
  OUTLINED_FUNCTION_15();
  v22 = v21;
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_6_0();
  v26 = (v24 - v25);
  MEMORY[0x28223BE20](v27);
  v29 = &v79 - v28;
  v86 = type metadata accessor for StandardPlayerButtonView();
  OUTLINED_FUNCTION_46();
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_6_0();
  v33 = v31 - v32;
  MEMORY[0x28223BE20](v34);
  v85 = &v79 - v35;
  sub_26A84B798();
  OUTLINED_FUNCTION_15();
  v89 = v37;
  v90 = v36;
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_41();
  v40 = v39 - v38;
  v41 = sub_26A84BDB8();
  OUTLINED_FUNCTION_15();
  v43 = v42;
  MEMORY[0x28223BE20](v44);
  OUTLINED_FUNCTION_41();
  v47 = v46 - v45;
  (*(v43 + 16))(v46 - v45, v93, v41);
  v48 = (*(v43 + 88))(v47, v41);
  if (v48 == *MEMORY[0x277D631C8])
  {
    v49 = OUTLINED_FUNCTION_7_74();
    v50(v49);
    (*(v22 + 32))(v29, v47, v20);
    v51 = type metadata accessor for ButtonView(0);
    (*(v22 + 16))(&v14[*(v51 + 20)], v29, v20);
    *v14 = swift_getKeyPath();
    v14[8] = 0;
    v52 = &v14[*(v51 + 24)];
    *v52 = 0;
    *(v52 + 1) = 0;
    KeyPath = swift_getKeyPath();
    v54 = v91;
    v55 = &v14[*(v92 + 36)];
    *v55 = KeyPath;
    v55[8] = 23;
    sub_26A514320(v14, v54, &qword_2803B8F50);
    sub_26A7FB5D4();
    v56 = sub_26A851248();
    sub_26A4D6FD8();
    (*(v22 + 8))(v29, v20);
  }

  else if (v48 == *MEMORY[0x277D631B0])
  {
    v57 = OUTLINED_FUNCTION_7_74();
    v58(v57);
    v59 = OUTLINED_FUNCTION_211();
    v60(v59);
    sub_26A84B778();
    sub_26A84E138();
    v61 = *(v22 + 8);
    v61(v29, v20);
    sub_26A84B788();
    sub_26A84E138();
    v61(v26, v20);
    v62 = v85;
    v63 = OUTLINED_FUNCTION_25_1();
    sub_26A6B4CF0(v63, v64, v65);
    sub_26A7FB6BC(v62, v33);
    sub_26A7FB720();
    v56 = sub_26A851248();
    sub_26A7FB764();
    (*(v89 + 8))(v40, v90);
  }

  else if (v48 == *MEMORY[0x277D631B8])
  {
    v66 = OUTLINED_FUNCTION_7_74();
    v67(v66);
    v69 = v79;
    v68 = v80;
    v70 = v83;
    (*(v80 + 32))(v79, v47, v83);
    v71 = v82;
    (*(v68 + 16))(v82, v69, v70);
    v72 = type metadata accessor for CustomCanvasView();
    v73 = (v71 + v72[5]);
    *v73 = 0xD000000000000023;
    v73[1] = 0x800000026A88B1A0;
    v74 = v71 + v72[6];
    *v74 = swift_getKeyPath();
    *(v74 + 8) = 0;
    v75 = v71 + v72[7];
    *v75 = swift_getKeyPath();
    *(v75 + 8) = 0;
    v76 = swift_getKeyPath();
    v77 = v71 + *(v84 + 36);
    *v77 = v76;
    *(v77 + 8) = 0;
    sub_26A514320(v71, v81, &qword_2803B8F48);
    sub_26A7FB4EC();
    v56 = sub_26A851248();
    sub_26A4D6FD8();
    (*(v68 + 8))(v69, v70);
  }

  else if (v48 == *MEMORY[0x277D631C0])
  {
    v94 = &sub_26A7FAD00;
    v95 = 0;
    v96 = 0;
    v97 = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803ACE68);
    sub_26A551788();
    return sub_26A851248();
  }

  else
  {
    v94 = &sub_26A7FAD50;
    v95 = 0;
    v96 = 0;
    v97 = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803ACE68);
    sub_26A551788();
    v56 = sub_26A851248();
    (*(v43 + 8))(v47, v41);
  }

  return v56;
}

uint64_t sub_26A7FADD8(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a4)
  {
    return sub_26A7799BC(a1, a2);
  }

  else
  {
  }
}

unint64_t sub_26A7FAE34()
{
  result = qword_2803B8ED0;
  if (!qword_2803B8ED0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B8EC8);
    sub_26A7FAEEC();
    sub_26A4D7DCC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B8ED0);
  }

  return result;
}

unint64_t sub_26A7FAEEC()
{
  result = qword_2803B8ED8;
  if (!qword_2803B8ED8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B8EE0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B8EE8);
    type metadata accessor for RFButtonStyle();
    sub_26A7FB004();
    sub_26A7FB720();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B8ED8);
  }

  return result;
}

unint64_t sub_26A7FB004()
{
  result = qword_2803B8EF0;
  if (!qword_2803B8EF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B8EE8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803AB3B8);
    sub_26A7FB200(&qword_2803B8EF8);
    swift_getOpaqueTypeConformance2();
    sub_26A7FB104();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B8EF0);
  }

  return result;
}

unint64_t sub_26A7FB104()
{
  result = qword_2803B8F00;
  if (!qword_2803B8F00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B8F00);
  }

  return result;
}

uint64_t objectdestroyTm_31()
{
  sub_26A4D82E8(*(v0 + 32), *(v0 + 40));

  sub_26A7FADD8(*(v0 + 136), *(v0 + 144), *(v0 + 152), *(v0 + 153));
  if (*(v0 + 169))
  {
    if ((*(v0 + 168) & 1) == 0)
    {
      MEMORY[0x26D665710](v0 + 160);
    }
  }

  else
  {
  }

  MEMORY[0x26D665710](v0 + 176);

  return swift_deallocObject();
}

uint64_t sub_26A7FB200(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803AB3B8);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_26A7FB26C()
{
  result = qword_2803B8F20;
  if (!qword_2803B8F20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803AE270);
    sub_26A7FB2F8();
    sub_26A4D6BF8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B8F20);
  }

  return result;
}

unint64_t sub_26A7FB2F8()
{
  result = qword_2803B8F28;
  if (!qword_2803B8F28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803AE268);
    sub_26A7FB384();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B8F28);
  }

  return result;
}

unint64_t sub_26A7FB384()
{
  result = qword_2803B8F30;
  if (!qword_2803B8F30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B8F18);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B8EB0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803AB3B8);
    sub_26A4D7DCC();
    sub_26A7FB200(&qword_2803AFA58);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B8F30);
  }

  return result;
}

unint64_t sub_26A7FB4EC()
{
  result = qword_2803B8F58;
  if (!qword_2803B8F58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B8F48);
    sub_26A7FB720();
    sub_26A4D7DCC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B8F58);
  }

  return result;
}

unint64_t sub_26A7FB5D4()
{
  result = qword_2803B8F60;
  if (!qword_2803B8F60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B8F50);
    sub_26A7FB720();
    sub_26A4D7DCC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B8F60);
  }

  return result;
}

uint64_t sub_26A7FB6BC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StandardPlayerButtonView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_26A7FB720()
{
  OUTLINED_FUNCTION_196();
  result = *v2;
  if (!result)
  {
    v1(255);
    result = swift_getWitnessTable();
    atomic_store(result, v0);
  }

  return result;
}

uint64_t sub_26A7FB764()
{
  OUTLINED_FUNCTION_196();
  v1(0);
  OUTLINED_FUNCTION_46();
  (*(v2 + 8))(v0);
  return v0;
}

__n128 __swift_memcpy49_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_26A7FB7D4(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 49))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 40);
      if (v3 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_26A7FB828(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 49) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 49) = 0;
    }

    if (a2)
    {
      *(result + 40) = a2;
    }
  }

  return result;
}

unint64_t sub_26A7FB8B8()
{
  result = qword_2803B8F88;
  if (!qword_2803B8F88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B8F90);
    sub_26A4D7DCC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B8F88);
  }

  return result;
}

uint64_t static ButtonStyle<>.siriCapsule.getter@<X0>(uint64_t a1@<X8>)
{
  *a1 = swift_getKeyPath();
  *(a1 + 8) = 0;
  result = sub_26A851048();
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  return result;
}

uint64_t CapsuleSiriButtonStyle.makeBody(configuration:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v41 = a1;
  v47 = a2;
  v3 = sub_26A84FFA8();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B8F98) - 8;
  MEMORY[0x28223BE20](v42);
  v8 = &v38 - v7;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B8FA0) - 8;
  MEMORY[0x28223BE20](v45);
  v43 = &v38 - v9;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B8FA8);
  OUTLINED_FUNCTION_46();
  MEMORY[0x28223BE20](v10);
  v44 = &v38 - v11;
  v12 = *v2;
  v13 = *(v2 + 8);
  v14 = *(v2 + 16);
  v15 = *(v2 + 24);
  sub_26A84FFB8();
  LOWORD(v48) = 0;
  sub_26A7157B0();
  sub_26A7FBF38();
  sub_26A850948();
  (*(v4 + 8))(v6, v3);
  sub_26A850238();
  v39 = v12;
  v48 = v12;
  v49 = v13;
  v40 = v14;
  v50 = v14;
  v51 = v15;
  sub_26A7FBF8C();
  sub_26A84ED48();
  OUTLINED_FUNCTION_75_0();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B8FB8);
  OUTLINED_FUNCTION_1_103(v16);
  sub_26A8502A8();
  v48 = v12;
  v49 = v13;
  v50 = v14;
  v51 = v15;
  sub_26A7FBF8C();
  sub_26A84ED48();
  OUTLINED_FUNCTION_75_0();
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B8FC0);
  OUTLINED_FUNCTION_1_103(v17);
  v18 = sub_26A84FE98();
  LOBYTE(v3) = sub_26A850248();
  v19 = &v8[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B8FC8) + 36)];
  *v19 = v18;
  v19[4] = v3;
  v20 = &v8[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B8FD0) + 36)];
  v21 = *MEMORY[0x277CE0118];
  v22 = sub_26A84FB88();
  OUTLINED_FUNCTION_46();
  v24 = *(v23 + 104);
  v24(v20, v21, v22);
  *&v20[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B14D0) + 36)] = 256;
  v25 = &v8[*(v42 + 44)];
  v24(v25, v21, v22);
  v25[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B14E0) + 36)] = 0;
  if (sub_26A84FFC8())
  {
    v26 = 0.5;
  }

  else
  {
    v26 = 0.8;
  }

  v27 = v43;
  sub_26A544EC8(v8, v43, &qword_2803B8F98);
  *(v27 + *(v45 + 44)) = v26;
  if (sub_26A84FFC8())
  {
    v28 = 0.98;
  }

  else
  {
    v28 = 1.0;
  }

  sub_26A8515A8();
  v30 = v29;
  v32 = v31;
  v33 = v44;
  sub_26A544EC8(v27, v44, &qword_2803B8FA0);
  v34 = v33 + *(v46 + 36);
  *v34 = v28;
  *(v34 + 8) = v28;
  *(v34 + 16) = v30;
  *(v34 + 24) = v32;
  LOBYTE(v48) = sub_26A84FFC8() & 1;
  v35 = swift_allocObject();
  v36 = v39;
  *(v35 + 16) = v39;
  *(v35 + 24) = v13;
  *(v35 + 32) = v40;
  *(v35 + 40) = v15;
  sub_26A4C24D0(v36, v13);
  sub_26A7FC1B0();

  sub_26A850C78();

  return sub_26A4BEA80(v33);
}

unint64_t sub_26A7FBF38()
{
  result = qword_2803B8FB0;
  if (!qword_2803B8FB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B8FB0);
  }

  return result;
}

unint64_t sub_26A7FC1B0()
{
  result = qword_2803B8FD8;
  if (!qword_2803B8FD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B8FA8);
    sub_26A7FC23C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B8FD8);
  }

  return result;
}

unint64_t sub_26A7FC23C()
{
  result = qword_2803B8FE0;
  if (!qword_2803B8FE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B8FA0);
    sub_26A7FC2C8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B8FE0);
  }

  return result;
}

unint64_t sub_26A7FC2C8()
{
  result = qword_2803B8FE8;
  if (!qword_2803B8FE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B8F98);
    sub_26A7FC380();
    sub_26A4DBCC8(&qword_2803B14D8, &qword_2803B14E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B8FE8);
  }

  return result;
}

unint64_t sub_26A7FC380()
{
  result = qword_2803B8FF0;
  if (!qword_2803B8FF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B8FD0);
    sub_26A7FC438();
    sub_26A4DBCC8(&qword_2803B14C8, &qword_2803B14D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B8FF0);
  }

  return result;
}

unint64_t sub_26A7FC438()
{
  result = qword_2803B8FF8;
  if (!qword_2803B8FF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B8FC8);
    sub_26A7FC4F0();
    sub_26A4DBCC8(&qword_2803B4A28, &qword_2803B4A30);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B8FF8);
  }

  return result;
}

unint64_t sub_26A7FC4F0()
{
  result = qword_2803B9000;
  if (!qword_2803B9000)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B8FC0);
    sub_26A7FC57C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B9000);
  }

  return result;
}

unint64_t sub_26A7FC57C()
{
  result = qword_2803B9008;
  if (!qword_2803B9008)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B8FB8);
    sub_26A84FFA8();
    sub_26A7157B0();
    sub_26A7FBF38();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B9008);
  }

  return result;
}

uint64_t sub_26A7FC674(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 32))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 24);
      if (v3 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_26A7FC6C8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2;
    }
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_1_103(uint64_t result)
{
  v7 = v2 + *(result + 36);
  *v7 = v1;
  *(v7 + 8) = v3;
  *(v7 + 16) = v4;
  *(v7 + 24) = v5;
  *(v7 + 32) = v6;
  *(v7 + 40) = 0;
  return result;
}

void sub_26A7FC768()
{
  OUTLINED_FUNCTION_7_75();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v45 = sub_26A84F108();
  OUTLINED_FUNCTION_15();
  v11 = v10;
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_6_0();
  v15 = v13 - v14;
  MEMORY[0x28223BE20](v16);
  v46 = &v42 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B0168) - 8;
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v19);
  v21 = &v42 - v20;
  if (v7)
  {
    v22 = 10.0;
  }

  else
  {
    v22 = v9;
  }

  v23 = sub_26A7FCA98(v5);
  v24 = sub_26A84F218();
  OUTLINED_FUNCTION_46();
  (*(v25 + 16))(v21, v5, v24);
  v26 = *(v18 + 44);
  OUTLINED_FUNCTION_1_104(&qword_28157FE70);
  sub_26A851D88();
  v44 = (v11 + 16);
  v27 = (v11 + 32);
  v28 = (v11 + 8);
  v29 = v23 + v1;
  v43 = v23;
  v30 = 0.0;
  v31 = v45;
  while (1)
  {
    sub_26A851DD8();
    if (*&v21[v26] == v48)
    {
      break;
    }

    v32 = sub_26A851E18();
    v33 = v46;
    (*v44)(v46);
    v32(&v48, 0);
    sub_26A851DE8();
    (*v27)(v15, v33, v31);
    sub_26A84F598();
    LOBYTE(v48) = v34 & 1;
    v47 = v35 & 1;
    sub_26A84F0E8();
    v37 = v36;
    v39 = v38;
    sub_26A7FD7BC();
    sub_26A84F118();
    (*v28)(v15, v31);
    if (v48 == 1)
    {
      v40 = 1.0;
      if (v39 > 1.0)
      {
        v40 = v39;
      }

      v37 = v43 * (v37 / v40);
    }

    v41 = 0.0;
    if (v22 < v30 + v37)
    {
      v23 = v29 + v23;
    }

    else
    {
      v41 = v30;
    }

    v30 = v37 + v3 + v41;
  }

  sub_26A4DBD10(v21, &qword_2803B0168);
  OUTLINED_FUNCTION_6_73();
}

double sub_26A7FCA98(uint64_t a1)
{
  v2 = sub_26A84F108();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v51 = &v44 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v50 = &v44 - v6;
  MEMORY[0x28223BE20](v7);
  v9 = &v44 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B0168);
  v11 = v10 - 8;
  MEMORY[0x28223BE20](v10);
  v13 = &v44 - v12;
  v14 = sub_26A84F218();
  v15 = MEMORY[0x28223BE20](v14);
  (*(v17 + 16))(&v44 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v14, v15);
  sub_26A5F35C4(&qword_28157FE78);
  sub_26A851998();
  v18 = *(v11 + 44);
  sub_26A5F35C4(&qword_28157FE70);
  v19 = v3;
  v20 = (v3 + 16);
  v21 = (v3 + 8);
  v47 = v19;
  v48 = (v19 + 32);
  v49 = MEMORY[0x277D84F90];
  while (1)
  {
    sub_26A851DD8();
    if (*&v13[v18] == v53[0])
    {
      break;
    }

    v22 = sub_26A851E18();
    (*v20)(v9);
    v22(v53, 0);
    sub_26A851DE8();
    sub_26A7FD7BC();
    sub_26A84F118();
    if (LOBYTE(v53[0]))
    {
      (*v21)(v9, v2);
    }

    else
    {
      v46 = *v48;
      v46(v50, v9, v2);
      v23 = v49;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v54 = v23;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_26A7DD410();
        v23 = v54;
      }

      v25 = *(v23 + 16);
      v26 = v25 + 1;
      if (v25 >= *(v23 + 24) >> 1)
      {
        v49 = v25 + 1;
        v45 = v25;
        sub_26A7DD410();
        v26 = v49;
        v25 = v45;
        v23 = v54;
      }

      *(v23 + 16) = v26;
      v27 = (*(v47 + 80) + 32) & ~*(v47 + 80);
      v49 = v23;
      v46((v23 + v27 + *(v47 + 72) * v25), v50, v2);
    }
  }

  sub_26A4DBD10(v13, &qword_2803B0168);
  v28 = *(v49 + 16);
  if (v28)
  {
    v53[0] = MEMORY[0x277D84F90];
    v29 = v49;
    sub_26A7DCC7C(0, v28, 0);
    v30 = v53[0];
    v31 = v29 + ((*(v47 + 80) + 32) & ~*(v47 + 80));
    v50 = *(v47 + 72);
    v32 = *(v47 + 16);
    do
    {
      v33 = v51;
      v32(v51, v31, v2);
      sub_26A84F598();
      LOBYTE(v54) = v34 & 1;
      v52 = v35 & 1;
      sub_26A84F0E8();
      v37 = v36;
      (*v21)(v33, v2);
      v53[0] = v30;
      v39 = *(v30 + 16);
      v38 = *(v30 + 24);
      if (v39 >= v38 >> 1)
      {
        sub_26A7DCC7C(v38 > 1, v39 + 1, 1);
        v30 = v53[0];
      }

      *(v30 + 16) = v39 + 1;
      *(v30 + 8 * v39 + 32) = v37;
      v31 += v50;
      --v28;
    }

    while (v28);
  }

  else
  {

    v30 = MEMORY[0x277D84F90];
  }

  v40 = *(v30 + 16);
  v41 = 0.0;
  for (i = 32; v40; --v40)
  {
    if (v41 <= *(v30 + i))
    {
      v41 = *(v30 + i);
    }

    i += 8;
  }

  return v41;
}

void sub_26A7FD010()
{
  OUTLINED_FUNCTION_7_75();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B2BA8);
  OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v6);
  v71 = &v65 - v7;
  v8 = sub_26A84F108();
  OUTLINED_FUNCTION_15();
  v75 = v9;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_6_0();
  v76 = v11 - v12;
  MEMORY[0x28223BE20](v13);
  v15 = &v65 - v14;
  MEMORY[0x28223BE20](v16);
  v70 = &v65 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B2B90);
  MEMORY[0x28223BE20](v18 - 8);
  OUTLINED_FUNCTION_6_0();
  v79 = v19 - v20;
  MEMORY[0x28223BE20](v21);
  v23 = &v65 - v22;
  v24 = sub_26A84F218();
  OUTLINED_FUNCTION_15();
  v26 = v25;
  MEMORY[0x28223BE20](v27);
  v29 = &v65 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B2B98);
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v30);
  v32 = &v65 - v31;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B2BA0) - 8;
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v34);
  v36 = &v65 - v35;
  v85.origin.x = OUTLINED_FUNCTION_12_50();
  MinX = CGRectGetMinX(v85);
  v86.origin.x = OUTLINED_FUNCTION_12_50();
  MinY = CGRectGetMinY(v86);
  v78 = v3;
  v39 = sub_26A7FCA98(v5);
  v40 = *(v26 + 16);
  v77 = v5;
  v40(v32, v5, v24);
  (*(v26 + 32))(v29, v32, v24);
  sub_26A5F35C4(&qword_28157FE78);
  v80 = v24;
  sub_26A851998();
  v68 = *(v33 + 44);
  *&v36[v68] = 0;
  v41 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B0168) + 36);
  OUTLINED_FUNCTION_1_104(&qword_28157FE70);
  v42 = 0;
  v69 = (v75 + 16);
  v82 = (v75 + 32);
  v66 = v39 + v1;
  v67 = v39;
  v73 = v39;
  v72 = (v75 + 8);
  v75 = v8;
  while (1)
  {
    sub_26A851DD8();
    if (*&v36[v41] == v84)
    {
      v43 = 1;
      v44 = v81;
      v45 = v79;
      goto LABEL_6;
    }

    v46 = sub_26A851E18();
    v74 = v42;
    v47 = v46;
    v48 = v70;
    (*v69)(v70);
    v47(&v84, 0);
    v49 = v74;
    sub_26A851DE8();
    v44 = v81;
    v50 = v82;
    v51 = *(v81 + 48);
    v52 = v71;
    *v71 = v49;
    (*v50)(&v52[v51], v48, v8);
    v53 = __OFADD__(v49, 1);
    v42 = v49 + 1;
    if (v53)
    {
      break;
    }

    *&v36[v68] = v42;
    v54 = v52;
    v45 = v79;
    sub_26A544EC8(v54, v79, &qword_2803B2BA8);
    v43 = 0;
LABEL_6:
    __swift_storeEnumTagSinglePayload(v45, v43, 1, v44);
    sub_26A544EC8(v45, v23, &qword_2803B2B90);
    if (__swift_getEnumTagSinglePayload(v23, 1, v44) == 1)
    {
      sub_26A4DBD10(v36, &qword_2803B2BA0);
      OUTLINED_FUNCTION_6_73();
      return;
    }

    (*v82)(v15, &v23[*(v44 + 48)], v8);
    sub_26A84F598();
    LOBYTE(v84) = v55 & 1;
    v83 = v56 & 1;
    sub_26A84F0E8();
    v58 = v57;
    v60 = v59;
    sub_26A7FD7BC();
    sub_26A84F118();
    if (v84 == 1)
    {
      v61 = 1.0;
      if (v60 > 1.0)
      {
        v61 = v60;
      }

      v58 = v67 * (v58 / v61);
    }

    v87.origin.x = OUTLINED_FUNCTION_12_50();
    if (CGRectGetMaxX(v87) < MinX + v58)
    {
      MinY = v66 + MinY;
      v88.origin.x = OUTLINED_FUNCTION_12_50();
      MinX = CGRectGetMinX(v88);
    }

    v62 = v76;
    sub_26A84F228();
    sub_26A851568();
    LOBYTE(v84) = 0;
    v83 = 0;
    sub_26A84F0F8();
    v63 = *v72;
    v64 = v62;
    v8 = v75;
    (*v72)(v64, v75);
    v63(v15, v8);
    MinX = v58 + v78 + MinX;
  }

  __break(1u);
}

void (*sub_26A7FD6F0(void *a1))(void *a1)
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v2;
  v2[4] = sub_26A84ECD8();
  return sub_26A4F6448;
}

unint64_t sub_26A7FD768()
{
  result = qword_2803B9010;
  if (!qword_2803B9010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B9010);
  }

  return result;
}

unint64_t sub_26A7FD7BC()
{
  result = qword_2803B9018;
  if (!qword_2803B9018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B9018);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for RichTextFlowLayout.ContentType(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_26A7FD8F0()
{
  result = qword_2803B9020;
  if (!qword_2803B9020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B9020);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_1_104(unint64_t *a1)
{

  return sub_26A5F35C4(a1);
}

uint64_t CoreChartElementView.init(model:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = a2 + *(type metadata accessor for CoreChartElementView() + 20);
  *v4 = swift_getKeyPath();
  *(v4 + 8) = 0;
  v5 = sub_26A84E518();
  v6 = *(*(v5 - 8) + 32);

  return v6(a2, a1, v5);
}

uint64_t type metadata accessor for CoreChartElementView()
{
  result = qword_28157E810;
  if (!qword_28157E810)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t CoreChartElementView.body.getter@<X0>(uint64_t a1@<X8>)
{
  sub_26A84E508();
  sub_26A84B0F8();
  v2 = type metadata accessor for CustomCanvasView();
  v3 = (a1 + v2[5]);
  *v3 = 0xD000000000000023;
  v3[1] = 0x800000026A88B1A0;
  v4 = a1 + v2[6];
  *v4 = swift_getKeyPath();
  *(v4 + 8) = 0;
  v5 = a1 + v2[7];
  result = swift_getKeyPath();
  *v5 = result;
  *(v5 + 8) = 0;
  return result;
}

void sub_26A7FDBD4()
{
  sub_26A84E518();
  if (v0 <= 0x3F)
  {
    sub_26A6B40F8();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_26A7FDC58()
{
  result = qword_2803ABC08;
  if (!qword_2803ABC08)
  {
    type metadata accessor for CustomCanvasView();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803ABC08);
  }

  return result;
}

unint64_t sub_26A7FDD14()
{
  result = qword_2803B9028;
  if (!qword_2803B9028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B9028);
  }

  return result;
}

unint64_t sub_26A7FDD68()
{
  result = qword_2803A9440;
  if (!qword_2803A9440)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803A9448);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803A9440);
  }

  return result;
}

unsigned __int8 *sub_26A7FDDDC(unsigned __int8 *result, void *(*a2)(uint64_t *__return_ptr))
{
  v2 = result;
  v3 = *result;
  if (v3 == 2)
  {
    result = a2(&v4);
    LOBYTE(v3) = v4;
  }

  *v2 = v3;
  return result;
}

uint64_t sub_26A7FDE74()
{
  result = sub_26A84BBF8();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_26A7FDF28()
{
  type metadata accessor for ComponentSeparatorsConfiguration(319);
  if (v0 <= 0x3F)
  {
    sub_26A7FDFC0();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_26A7FDFC0()
{
  if (!qword_28157DD48[0])
  {
    type metadata accessor for ComponentSeparatorsConfiguration(255);
    v0 = sub_26A852068();
    if (!v1)
    {
      atomic_store(v0, qword_28157DD48);
    }
  }
}

BOOL sub_26A7FE0BC()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AAD50);
  *&v2 = MEMORY[0x28223BE20](v1 - 8).n128_u64[0];
  v4 = &v9 - v3;
  v5 = [v0 thumbnail];
  if (v5)
  {
    RFVisualProperty.asVisualProperty()();

    v6 = sub_26A84BD28();
    v7 = 0;
  }

  else
  {
    v6 = sub_26A84BD28();
    v7 = 1;
  }

  __swift_storeEnumTagSinglePayload(v4, v7, 1, v6);
  sub_26A565064(v4);
  return v5 != 0;
}

void sub_26A7FE194(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = [v1 text_1];
  if (v4)
  {
    v5 = v4;
    v18[3] = &type metadata for PartialText;
    v18[4] = &protocol witness table for PartialText;
    v18[0] = swift_allocObject();
    RFTextProperty.asPartialText()(v18[0] + 16);
    v6 = [v1 text_2];
    if (v6)
    {
      v7 = v6;
      *(&v16 + 1) = &type metadata for PartialText;
      v17 = &protocol witness table for PartialText;
      *&v15 = swift_allocObject();
      RFTextProperty.asPartialText()(v15 + 16);
    }

    else
    {
      v17 = 0;
      v15 = 0u;
      v16 = 0u;
    }

    v10 = [v2 thumbnail];
    if (v10)
    {
      v11 = v10;
      *(&v13 + 1) = sub_26A84BD28();
      v14 = &protocol witness table for VisualProperty;
      __swift_allocate_boxed_opaque_existential_1(&v12);
      RFVisualProperty.asVisualProperty()();
    }

    else
    {
      v14 = 0;
      v12 = 0u;
      v13 = 0u;
    }

    ReferenceRichView.init(text1:text2:thumbnail:addTint:)(v18, &v15, &v12, [v2 addTint], a1);
  }

  else
  {
    sub_26A4E353C();
    swift_allocError();
    *v8 = v1;
    *(v8 + 8) = &unk_287B13568;
    *(v8 + 16) = 0;
    swift_willThrow();
    v9 = v1;
  }
}

unint64_t sub_26A7FE3BC()
{
  result = qword_2803B1BD8;
  if (!qword_2803B1BD8)
  {
    type metadata accessor for ReferenceRichView();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B1BD8);
  }

  return result;
}

BOOL sub_26A7FE43C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AAD50);
  *&v2 = MEMORY[0x28223BE20](v1 - 8).n128_u64[0];
  v4 = &v9 - v3;
  v5 = [v0 thumbnail];
  if (v5)
  {
    RFVisualProperty.asVisualProperty()();

    v6 = sub_26A84BD28();
    v7 = 0;
  }

  else
  {
    v6 = sub_26A84BD28();
    v7 = 1;
  }

  __swift_storeEnumTagSinglePayload(v4, v7, 1, v6);
  sub_26A4E2544(v4, &qword_2803AAD50);
  return v5 != 0;
}

id sub_26A7FE524@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = [v1 text_1];
  if (v4)
  {
    v5 = v4;
    RFTextProperty.asPartialText()(v151);
    v6 = [v1 text_2];
    if (v6)
    {
      v7 = v6;
      *(&v149 + 1) = &type metadata for PartialText;
      v150 = &protocol witness table for PartialText;
      OUTLINED_FUNCTION_1_9();
      v148[0] = swift_allocObject();
      RFTextProperty.asPartialText()(v148[0] + 16);
    }

    else
    {
      v150 = 0;
      *v148 = 0u;
      v149 = 0u;
    }

    v10 = sub_26A54AB40(v2, &selRef_text_3);
    if (v10)
    {
      sub_26A51B744(v10, __src);
      memcpy(__dst, __src, 0x41uLL);
      sub_26A54AAEC();
      v10 = sub_26A851248();
      v11 = &protocol witness table for AnyView;
      v12 = MEMORY[0x277CE11C8];
    }

    else
    {
      v12 = 0;
      v11 = 0;
      v147[2] = 0;
      v147[1] = 0;
    }

    v147[0] = v10;
    v147[3] = v12;
    v147[4] = v11;
    v13 = [v2 text_4];
    if (v13)
    {
      v14 = v13;
      *(&v145 + 1) = &type metadata for PartialText;
      v146 = &protocol witness table for PartialText;
      OUTLINED_FUNCTION_1_9();
      v144[0] = swift_allocObject();
      RFTextProperty.asPartialText()(v144[0] + 16);
    }

    else
    {
      v146 = 0;
      *v144 = 0u;
      v145 = 0u;
    }

    v15 = [v2 text_5];
    if (v15)
    {
      v16 = v15;
      *(&v142 + 1) = &type metadata for PartialText;
      v143 = &protocol witness table for PartialText;
      OUTLINED_FUNCTION_1_9();
      v141[0] = swift_allocObject();
      RFTextProperty.asPartialText()(v141[0] + 16);
    }

    else
    {
      v143 = 0;
      *v141 = 0u;
      v142 = 0u;
    }

    v17 = sub_26A54AB40(v2, &selRef_text_6);
    if (v17)
    {
      sub_26A51B744(v17, __dst);
      sub_26A54AAEC();
      v17 = sub_26A851248();
      v18 = &protocol witness table for AnyView;
      v19 = MEMORY[0x277CE11C8];
    }

    else
    {
      v19 = 0;
      v18 = 0;
      v140[2] = 0;
      v140[1] = 0;
    }

    v140[0] = v17;
    v140[3] = v19;
    v140[4] = v18;
    v20 = [v2 thumbnail];
    if (v20)
    {
      v21 = v20;
      *(&v138 + 1) = sub_26A84BD28();
      v139 = &protocol witness table for VisualProperty;
      __swift_allocate_boxed_opaque_existential_1(v137);
      RFVisualProperty.asVisualProperty()();
    }

    else
    {
      v139 = 0;
      *v137 = 0u;
      v138 = 0u;
    }

    *a1 = swift_getKeyPath();
    *(a1 + 8) = 0;
    v22 = type metadata accessor for SummaryItemAlignedTextView();
    v23 = v22[5];
    *(a1 + v23) = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803A9190);
    swift_storeEnumTagMultiPayload();
    v24 = v22[6];
    *(a1 + v24) = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91A8);
    swift_storeEnumTagMultiPayload();
    v25 = memcpy(__dst, v151, 0xFAuLL);
    OUTLINED_FUNCTION_2_101(v25, v26, v27, v28, v29, v30, v31, v32, v102, v103, v104, v105, v106, v107, v108, v109, v110, v111, v112, v113, v114, v115, v116, v117, v118, v119, v120, v121, v122, v123, v124, v125, v126, v127, v128, v129, v130, v131, v132, v133, v134[0]);
    sub_26A4EC458(__dst, &v102);
    sub_26A4EC4B4();
    *(a1 + v22[7]) = sub_26A851248();
    sub_26A5582C8(v148, v134);
    if (v135)
    {
      __swift_project_boxed_opaque_existential_1(v134, v135);
      v33 = OUTLINED_FUNCTION_16_5();
      v35 = v34(v33);
      OUTLINED_FUNCTION_4_27(v35, v36, v37, v38, v39, v40, v41, v42, v102, v103, v104, v105, v106, v107, v108, v109, v110, v111, v112, v113, v114, v115, v116, v117, v118, v119, v120, v121, v122, v123, v124, v125, v126, v127, v128, v129, v130, v131, v132, v133, v134[0]);
    }

    else
    {
      sub_26A4E2544(v134, &qword_2803A91B8);
      v24 = 0;
    }

    *(a1 + v22[8]) = v24;
    sub_26A5582C8(v147, v134);
    if (v135)
    {
      __swift_project_boxed_opaque_existential_1(v134, v135);
      v43 = OUTLINED_FUNCTION_16_5();
      v45 = v44(v43);
      OUTLINED_FUNCTION_4_27(v45, v46, v47, v48, v49, v50, v51, v52, v102, v103, v104, v105, v106, v107, v108, v109, v110, v111, v112, v113, v114, v115, v116, v117, v118, v119, v120, v121, v122, v123, v124, v125, v126, v127, v128, v129, v130, v131, v132, v133, v134[0]);
    }

    else
    {
      sub_26A4E2544(v134, &qword_2803A91B8);
      v24 = 0;
    }

    *(a1 + v22[9]) = v24;
    sub_26A5582C8(v144, v134);
    if (v135)
    {
      __swift_project_boxed_opaque_existential_1(v134, v135);
      v53 = OUTLINED_FUNCTION_16_5();
      v55 = v54(v53);
      OUTLINED_FUNCTION_4_27(v55, v56, v57, v58, v59, v60, v61, v62, v102, v103, v104, v105, v106, v107, v108, v109, v110, v111, v112, v113, v114, v115, v116, v117, v118, v119, v120, v121, v122, v123, v124, v125, v126, v127, v128, v129, v130, v131, v132, v133, v134[0]);
    }

    else
    {
      sub_26A4E2544(v134, &qword_2803A91B8);
      v24 = 0;
    }

    *(a1 + v22[10]) = v24;
    sub_26A5582C8(v141, v134);
    if (v135)
    {
      __swift_project_boxed_opaque_existential_1(v134, v135);
      v63 = OUTLINED_FUNCTION_16_5();
      v65 = v64(v63);
      OUTLINED_FUNCTION_4_27(v65, v66, v67, v68, v69, v70, v71, v72, v102, v103, v104, v105, v106, v107, v108, v109, v110, v111, v112, v113, v114, v115, v116, v117, v118, v119, v120, v121, v122, v123, v124, v125, v126, v127, v128, v129, v130, v131, v132, v133, v134[0]);
    }

    else
    {
      sub_26A4E2544(v134, &qword_2803A91B8);
      v24 = 0;
    }

    *(a1 + v22[11]) = v24;
    sub_26A5582C8(v140, v134);
    if (v135)
    {
      __swift_project_boxed_opaque_existential_1(v134, v135);
      v73 = OUTLINED_FUNCTION_16_5();
      v75 = v74(v73);
      OUTLINED_FUNCTION_4_27(v75, v76, v77, v78, v79, v80, v81, v82, v102, v103, v104, v105, v106, v107, v108, v109, v110, v111, v112, v113, v114, v115, v116, v117, v118, v119, v120, v121, v122, v123, v124, v125, v126, v127, v128, v129, v130, v131, v132, v133, v134[0]);
    }

    else
    {
      sub_26A4E2544(v134, &qword_2803A91B8);
      v24 = 0;
    }

    *(a1 + v22[12]) = v24;
    v83 = sub_26A5582C8(v137, &v102);
    if (v105)
    {
      __swift_project_boxed_opaque_existential_1(&v102, v105);
      v91 = OUTLINED_FUNCTION_16_5();
      v93 = v92(v91);

      OUTLINED_FUNCTION_2_101(v94, v95, v96, v97, v98, v99, v100, v101, v102, v103, v104, v105, v106, v107, v108, v109, v110, v111, v112, v113, v114, v115, v116, v117, v118, v119, v120, v121, v122, v123, v124, v125, v126, v127, v128, v129, v130, v131, v132, v133, v134[0]);
      sub_26A4EC508(v134);
      OUTLINED_FUNCTION_3_29(v137);
      OUTLINED_FUNCTION_3_29(v140);
      OUTLINED_FUNCTION_3_29(v141);
      OUTLINED_FUNCTION_3_29(v144);
      OUTLINED_FUNCTION_3_29(v147);
      OUTLINED_FUNCTION_3_29(v148);
      result = __swift_destroy_boxed_opaque_existential_1(&v102);
    }

    else
    {
      OUTLINED_FUNCTION_2_101(v83, v84, v85, v86, v87, v88, v89, v90, v102, v103, v104, 0, v106, v107, v108, v109, v110, v111, v112, v113, v114, v115, v116, v117, v118, v119, v120, v121, v122, v123, v124, v125, v126, v127, v128, v129, v130, v131, v132, v133, v134[0]);
      sub_26A4EC508(v134);

      OUTLINED_FUNCTION_2_8(v137);
      OUTLINED_FUNCTION_2_8(v140);
      OUTLINED_FUNCTION_2_8(v141);
      OUTLINED_FUNCTION_2_8(v144);
      OUTLINED_FUNCTION_2_8(v147);
      OUTLINED_FUNCTION_2_8(v148);
      result = OUTLINED_FUNCTION_2_8(&v102);
      v93 = 0;
    }

    *(a1 + v22[13]) = v93;
  }

  else
  {
    sub_26A4E353C();
    swift_allocError();
    *v8 = v1;
    *(v8 + 8) = &unk_287B13968;
    *(v8 + 16) = 0;
    swift_willThrow();
    return v1;
  }

  return result;
}

unint64_t sub_26A7FEC34()
{
  result = qword_2803B9030;
  if (!qword_2803B9030)
  {
    type metadata accessor for SummaryItemAlignedTextView();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B9030);
  }

  return result;
}

void *OUTLINED_FUNCTION_2_101(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t __dst)
{

  return memcpy(&__dst, &STACK[0x3F8], 0xFAuLL);
}

uint64_t type metadata accessor for ToggleControlView()
{
  result = qword_2803B9038;
  if (!qword_2803B9038)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_26A7FED1C()
{
  sub_26A7FEDD0();
  if (v0 <= 0x3F)
  {
    sub_26A7FEE28();
    if (v1 <= 0x3F)
    {
      sub_26A84E968();
      if (v2 <= 0x3F)
      {
        sub_26A84E978();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_26A7FEDD0()
{
  if (!qword_2803B4670)
  {
    sub_26A84F138();
    v0 = sub_26A84EEA8();
    if (!v1)
    {
      atomic_store(v0, &qword_2803B4670);
    }
  }
}

void sub_26A7FEE28()
{
  if (!qword_2803B9048)
  {
    v0 = type metadata accessor for EnvironmentConstant();
    if (!v1)
    {
      atomic_store(v0, &qword_2803B9048);
    }
  }
}

uint64_t sub_26A7FEEB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AC090);
  OUTLINED_FUNCTION_79(v8);
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v9);
  v11 = v22 - v10;
  sub_26A520DB0(a3, v22 - v10);
  v12 = sub_26A851C18();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v11, 1, v12);

  if (EnumTagSinglePayload == 1)
  {
    sub_26A4DBD10(v11, &qword_2803AC090);
  }

  else
  {
    sub_26A851C08();
    (*(*(v12 - 8) + 8))(v11, v12);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = sub_26A851B78();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v22[0] = a2;
      v18 = sub_26A851818() + 32;

      if (v17 | v15)
      {
        v23[0] = 0;
        v23[1] = 0;
        v19 = v23;
        v23[2] = v15;
        v23[3] = v17;
      }

      else
      {
        v19 = 0;
      }

      v22[1] = 7;
      v22[2] = v19;
      v22[3] = v18;
      v20 = swift_task_create();

      sub_26A4DBD10(a3, &qword_2803AC090);

      return v20;
    }
  }

  else
  {
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_26A4DBD10(a3, &qword_2803AC090);
  if (v17 | v15)
  {
    v23[4] = 0;
    v23[5] = 0;
    v23[6] = v15;
    v23[7] = v17;
  }

  return swift_task_create();
}

uint64_t sub_26A7FF128@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  *a3 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B4560);
  swift_storeEnumTagMultiPayload();
  v6 = type metadata accessor for ToggleControlView();
  v7 = v6[5];
  if (qword_2803A8DD8 != -1)
  {
    swift_once();
  }

  v8 = a3 + v7;
  v9 = *(&xmmword_2803D2330 + 1);
  v10 = qword_2803D2340;
  v11 = unk_2803D2348;
  v12 = xmmword_2803D2350;
  v13 = qword_2803D2360;
  *(v8 + 27) = xmmword_2803D2330;
  *(v8 + 28) = v9;
  *(v8 + 29) = v10;
  *(v8 + 30) = v11;
  *(v8 + 248) = v12;
  *(v8 + 33) = v13;

  sub_26A6AEE74(v17);
  memcpy(v8, v17, 0xBFuLL);
  *(v8 + 12) = v12;
  *(v8 + 26) = v13;
  v14 = v6[6];
  sub_26A84E968();
  OUTLINED_FUNCTION_46();
  result = (*(v15 + 32))(a3 + v14, a1);
  *(a3 + v6[7]) = a2;
  return result;
}

uint64_t sub_26A7FF294()
{
  v1 = type metadata accessor for ToggleControlView();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1 - 8);
  sub_26A800758(v0, v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_26A851BD8();
  v4 = sub_26A851BC8();
  v5 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v6 = swift_allocObject();
  v7 = MEMORY[0x277D85700];
  *(v6 + 16) = v4;
  *(v6 + 24) = v7;
  sub_26A800818(v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v6 + v5, type metadata accessor for ToggleControlView);
  sub_26A800758(v0, v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = sub_26A851BC8();
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = v7;
  sub_26A800818(v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v9 + v5, type metadata accessor for ToggleControlView);
  sub_26A851278();
  return v11[1];
}

uint64_t sub_26A7FF448@<X0>(_BYTE *a1@<X8>)
{
  type metadata accessor for ToggleControlView();
  result = sub_26A84E908();
  *a1 = result & 1;
  return result;
}

uint64_t sub_26A7FF490(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for ToggleControlView();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AC090);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v18 - v10;
  v12 = sub_26A851C18();
  __swift_storeEnumTagSinglePayload(v11, 1, 1, v12);
  sub_26A800758(a4, v8);
  sub_26A851BD8();
  v13 = sub_26A851BC8();
  v14 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v15 = swift_allocObject();
  v16 = MEMORY[0x277D85700];
  *(v15 + 16) = v13;
  *(v15 + 24) = v16;
  sub_26A800818(v8, v15 + v14, type metadata accessor for ToggleControlView);
  sub_26A7FEEB0(0, 0, v11, &unk_26A887EF8, v15);
}

uint64_t sub_26A7FF644(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  sub_26A851BD8();
  v4[3] = sub_26A851BC8();
  v6 = sub_26A851B78();
  v4[4] = v6;
  v4[5] = v5;

  return MEMORY[0x2822009F8](sub_26A7FF6DC, v6, v5);
}

uint64_t sub_26A7FF6DC()
{
  OUTLINED_FUNCTION_1_10();
  type metadata accessor for ToggleControlView();
  v3 = (*MEMORY[0x277CFA4C0] + MEMORY[0x277CFA4C0]);
  v1 = swift_task_alloc();
  *(v0 + 48) = v1;
  *v1 = v0;
  v1[1] = sub_26A7FF78C;

  return v3();
}

uint64_t sub_26A7FF78C()
{
  v2 = *v1;
  *(*v1 + 56) = v0;

  v3 = *(v2 + 40);
  v4 = *(v2 + 32);
  if (v0)
  {
    v5 = sub_26A7FF928;
  }

  else
  {
    v5 = sub_26A7FF8C8;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_26A7FF8C8()
{
  OUTLINED_FUNCTION_1_10();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_26A7FF928()
{
  OUTLINED_FUNCTION_1_10();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_26A7FF988()
{
  v0 = sub_26A84E948();
  OUTLINED_FUNCTION_15();
  v2 = v1;
  MEMORY[0x28223BE20](v3);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v13 - v7;
  type metadata accessor for ToggleControlView();
  sub_26A84E8E8();
  v9 = sub_26A84E928();
  v10 = *(v2 + 8);
  v10(v8, v0);
  if (!v9)
  {
    return 0;
  }

  sub_26A84E8F8();
  v11 = sub_26A84E928();
  v10(v5, v0);
  if (!v11)
  {
    return 0;
  }

  return 1;
}

uint64_t sub_26A7FFADC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B4780);
  OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_35_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B9050);
  OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v2);
  v4 = &v6 - v3;
  if (sub_26A7FF988())
  {
    sub_26A7FFBD8(v4);
    sub_26A800878();
  }

  else
  {
    sub_26A7FFF8C(v0);
    sub_26A6E7FC4();
  }

  return sub_26A851248();
}

uint64_t sub_26A7FFBD8@<X0>(uint64_t a1@<X8>)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B9078);
  OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_35_0();
  v7 = sub_26A84E948();
  OUTLINED_FUNCTION_15();
  v9 = v8;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_41();
  v13 = v12 - v11;
  *&v44 = sub_26A7FF294();
  *(&v44 + 1) = v14;
  LOBYTE(v45) = v15 & 1;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803AC170);
  MEMORY[0x26D6634C0](&v43, v16);
  v17 = v43;

  v18 = type metadata accessor for ToggleControlView();
  if (v17 == 1)
  {
    sub_26A84E8E8();
  }

  else
  {
    sub_26A84E8F8();
  }

  v19 = sub_26A84E928();
  if (v19)
  {
    v20 = v19;
    v39 = sub_26A850328();
    KeyPath = swift_getKeyPath();
    if (sub_26A84E938())
    {

      v21 = sub_26A850E18();
    }

    else
    {
      v21 = sub_26A850E78();
    }

    v37 = v21;
    v36 = swift_getKeyPath();
    LOBYTE(v43) = 0;
    v25 = v3 + *(v18 + 20);
    sub_26A851448();
    OUTLINED_FUNCTION_11_58();
    *&v42[6] = v44;
    *&v42[22] = v45;
    *&v42[38] = v46;
    v26 = sub_26A84E938();
    v40 = v7;
    v41 = a1;
    if (!v26)
    {
      v26 = sub_26A850DF8();
    }

    v27 = v26;
    v28 = sub_26A850248();
    v29 = *(v25 + 200);
    v30 = (v2 + *(v5 + 36));
    v31 = *(sub_26A84F5F8() + 20);
    v32 = *MEMORY[0x277CE0118];
    sub_26A84FB88();
    OUTLINED_FUNCTION_46();
    (*(v33 + 104))(&v30[v31], v32);
    *v30 = v29;
    *(v30 + 1) = v29;
    *&v30[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A9E58) + 36)] = 256;
    *(v2 + 50) = *v42;
    *v2 = v20;
    *(v2 + 8) = KeyPath;
    *(v2 + 16) = v39;
    *(v2 + 24) = v36;
    *(v2 + 32) = v37;
    *(v2 + 40) = 0x3FF0000000000000;
    *(v2 + 48) = 0;
    *(v2 + 66) = *&v42[16];
    *(v2 + 82) = *&v42[32];
    *(v2 + 96) = *&v42[46];
    *(v2 + 104) = v27;
    *(v2 + 112) = v28;
    sub_26A850298();
    sub_26A84ED48();
    OUTLINED_FUNCTION_75_0();
    (*(v9 + 8))(v13, v40);
    sub_26A800D80(v2, v41);
    v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B9068);
    OUTLINED_FUNCTION_3_91(v34);
    v23 = v41;
    v24 = 0;
  }

  else
  {
    (*(v9 + 8))(v13, v7);
    v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B9068);
    v23 = a1;
    v24 = 1;
  }

  return __swift_storeEnumTagSinglePayload(v23, v24, 1, v22);
}

uint64_t sub_26A7FFF8C@<X0>(uint64_t a1@<X8>)
{
  v16 = sub_26A850F08();
  v3 = sub_26A850E18();
  v4 = sub_26A850328();
  KeyPath = swift_getKeyPath();
  v6 = v1 + *(type metadata accessor for ToggleControlView() + 20);
  sub_26A851448();
  OUTLINED_FUNCTION_11_58();
  *&v17[6] = v18;
  *&v17[22] = v19;
  *&v17[38] = v20;
  v7 = sub_26A850D98();
  v8 = sub_26A850248();
  v9 = *(v6 + 200);
  v10 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B4798) + 36));
  v11 = *(sub_26A84F5F8() + 20);
  v12 = *MEMORY[0x277CE0118];
  sub_26A84FB88();
  OUTLINED_FUNCTION_46();
  (*(v13 + 104))(&v10[v11], v12);
  *v10 = v9;
  *(v10 + 1) = v9;
  *&v10[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A9E58) + 36)] = 256;
  *(a1 + 42) = *v17;
  *a1 = v16;
  *(a1 + 8) = v3;
  *(a1 + 16) = KeyPath;
  *(a1 + 24) = v4;
  *(a1 + 32) = 0x3FF0000000000000;
  *(a1 + 40) = 0;
  *(a1 + 58) = *&v17[16];
  *(a1 + 74) = *&v17[32];
  *(a1 + 88) = *(&v20 + 1);
  *(a1 + 96) = v7;
  *(a1 + 104) = v8;
  sub_26A850298();
  sub_26A84ED48();
  OUTLINED_FUNCTION_75_0();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B4780);
  return OUTLINED_FUNCTION_3_91(v14);
}

uint64_t sub_26A800160@<X0>(uint64_t a1@<X8>)
{
  v31 = a1;
  v3 = type metadata accessor for ToggleControlView();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = type metadata accessor for SummaryItemSwitchV2View();
  v7 = OUTLINED_FUNCTION_79(v6);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_35_0();
  v8 = sub_26A7FF294();
  v10 = v9;
  v12 = v11;
  v13 = sub_26A84E918();
  v40[3] = MEMORY[0x277D837D0];
  v40[4] = &protocol witness table for String;
  if (v14)
  {
    v15 = v13;
  }

  else
  {
    v15 = 0;
  }

  v16 = 0xE000000000000000;
  if (v14)
  {
    v16 = v14;
  }

  v40[0] = v15;
  v40[1] = v16;
  v17 = sub_26A84E958();
  if (v18)
  {
    v19 = &protocol witness table for String;
    v20 = MEMORY[0x277D837D0];
  }

  else
  {
    v17 = 0;
    v20 = 0;
    v19 = 0;
    v39[2] = 0;
  }

  v39[0] = v17;
  v39[1] = v18;
  v39[3] = v20;
  v39[4] = v19;
  v38 = 0;
  memset(v37, 0, sizeof(v37));
  v21 = sub_26A7FFADC();
  SummaryItemSwitchV2View.init(isOn:text1:text2:text3:text4:thumbnail:)(v8, v10, v12 & 1, v40, v39, v37, &v35, v32, v31, v21, v33, v34, MEMORY[0x277CE11C8], &protocol witness table for AnyView, 0, 0, 0, 0, 0, v36);
  sub_26A800758(v1, &v32[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0) - 8]);
  v22 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v23 = swift_allocObject();
  sub_26A800818(&v32[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0) - 8], v23 + v22, type metadata accessor for ToggleControlView);
  KeyPath = swift_getKeyPath();
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AAA98);
  v26 = v31;
  v27 = (v31 + *(v25 + 36));
  v28 = v27 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803B36A0) + 28);
  *v28 = sub_26A8007BC;
  *(v28 + 8) = v23;
  *(v28 + 16) = 0;
  v29 = type metadata accessor for ActionType();
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v28, 0, 1, v29);
  *v27 = KeyPath;
  return sub_26A800818(v2, v26, type metadata accessor for SummaryItemSwitchV2View);
}

uint64_t sub_26A80044C()
{
  v0 = sub_26A84F138();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AF0D0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v12 - v5;
  v7 = sub_26A84AB98();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v12 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ToggleControlView();
  sub_26A84E8D8();
  if (__swift_getEnumTagSinglePayload(v6, 1, v7) == 1)
  {
    return sub_26A4DBD10(v6, &qword_2803AF0D0);
  }

  (*(v8 + 32))(v10, v6, v7);
  sub_26A7204B8(v3);
  sub_26A84F128();
  (*(v1 + 8))(v3, v0);
  return (*(v8 + 8))(v10, v7);
}

uint64_t sub_26A8006A4(uint64_t a1)
{
  sub_26A84F138();
  OUTLINED_FUNCTION_15();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_35_0();
  (*(v4 + 16))(v1, a1);
  return sub_26A84F7C8();
}

uint64_t sub_26A800758(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ToggleControlView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_26A8007BC()
{
  v0 = type metadata accessor for ToggleControlView();
  OUTLINED_FUNCTION_79(v0);

  return sub_26A80044C();
}

uint64_t sub_26A800818(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_46();
  (*(v5 + 32))(a2, a1);
  return a2;
}

unint64_t sub_26A800878()
{
  result = qword_2803B9058;
  if (!qword_2803B9058)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B9050);
    sub_26A8008FC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B9058);
  }

  return result;
}

unint64_t sub_26A8008FC()
{
  result = qword_2803B9060;
  if (!qword_2803B9060)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B9068);
    sub_26A800988();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B9060);
  }

  return result;
}

unint64_t sub_26A800988()
{
  result = qword_2803B9070;
  if (!qword_2803B9070)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B9078);
    sub_26A800A40();
    sub_26A4DBCC8(&qword_28157FEA0, &qword_2803A9E58);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B9070);
  }

  return result;
}

unint64_t sub_26A800A40()
{
  result = qword_2803B9080;
  if (!qword_2803B9080)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B9088);
    sub_26A800AF8();
    sub_26A4DBCC8(&qword_2803ADC60, &qword_2803ADC68);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B9080);
  }

  return result;
}

unint64_t sub_26A800AF8()
{
  result = qword_2803B9090;
  if (!qword_2803B9090)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B9098);
    sub_26A800B84();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B9090);
  }

  return result;
}

unint64_t sub_26A800B84()
{
  result = qword_2803B90A0;
  if (!qword_2803B90A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B6F60);
    sub_26A800C10();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B90A0);
  }

  return result;
}

unint64_t sub_26A800C10()
{
  result = qword_2803B90A8;
  if (!qword_2803B90A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B90B0);
    sub_26A800CC8();
    sub_26A4DBCC8(&qword_2803ABF30, &qword_2803ABF38);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B90A8);
  }

  return result;
}

unint64_t sub_26A800CC8()
{
  result = qword_2803B90B8;
  if (!qword_2803B90B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B90C0);
    sub_26A4DBCC8(&qword_28157FB78, &qword_2803AC4A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B90B8);
  }

  return result;
}

uint64_t sub_26A800D80(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B9078);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_26A800DF0@<X0>(_BYTE *a1@<X8>)
{
  v2 = type metadata accessor for ToggleControlView();
  OUTLINED_FUNCTION_79(v2);

  return sub_26A7FF448(a1);
}

uint64_t sub_26A800E60(uint64_t a1)
{
  v3 = type metadata accessor for ToggleControlView();
  OUTLINED_FUNCTION_79(v3);
  v5 = *(v1 + 16);
  v6 = *(v1 + 24);
  v7 = v1 + ((*(v4 + 80) + 32) & ~*(v4 + 80));

  return sub_26A7FF490(a1, v5, v6, v7);
}

uint64_t objectdestroy_11Tm()
{
  type metadata accessor for ToggleControlView();
  OUTLINED_FUNCTION_37_0();
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B4560);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_26A84F138();
    OUTLINED_FUNCTION_46();
    (*(v4 + 8))(v1 + v3);
  }

  else
  {
  }

  OUTLINED_FUNCTION_1_105();

  v5 = *(v0 + 24);
  sub_26A84E968();
  OUTLINED_FUNCTION_46();
  (*(v6 + 8))(v1 + v3 + v5);

  return swift_deallocObject();
}

uint64_t sub_26A801030(uint64_t a1)
{
  v4 = type metadata accessor for ToggleControlView();
  OUTLINED_FUNCTION_79(v4);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = *(v1 + 16);
  v8 = *(v1 + 24);
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_26A6156E0;

  return sub_26A7FF644(a1, v7, v8, v1 + v6);
}

uint64_t OUTLINED_FUNCTION_1_105()
{
  v2 = v1 + *(v0 + 20);
  sub_26A49035C(*v2, *(v2 + 8));
  sub_26A49035C(*(v2 + 16), *(v2 + 24));
  sub_26A49035C(*(v2 + 32), *(v2 + 40));
  sub_26A49035C(*(v2 + 48), *(v2 + 56));
  sub_26A49035C(*(v2 + 64), *(v2 + 72));
  sub_26A49035C(*(v2 + 80), *(v2 + 88));
  sub_26A49035C(*(v2 + 96), *(v2 + 104));
  sub_26A49035C(*(v2 + 112), *(v2 + 120));
  sub_26A49035C(*(v2 + 128), *(v2 + 136));
  sub_26A49035C(*(v2 + 144), *(v2 + 152));
}

uint64_t OUTLINED_FUNCTION_3_91(uint64_t result)
{
  v7 = v1 + *(result + 36);
  *v7 = v2;
  *(v7 + 8) = v3;
  *(v7 + 16) = v4;
  *(v7 + 24) = v5;
  *(v7 + 32) = v6;
  *(v7 + 40) = 0;
  return result;
}

uint64_t OUTLINED_FUNCTION_11_58()
{

  return sub_26A84F028();
}

uint64_t sub_26A801234()
{
  OUTLINED_FUNCTION_15_41();
  v3 = v2;
  sub_26A84FDE8();
  OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_14_47();
  (*(*(v0 - 8) + 16))(v1, v3, v0);
  swift_storeEnumTagMultiPayload();
  return OUTLINED_FUNCTION_23_26();
}

uint64_t sub_26A8012F4()
{
  OUTLINED_FUNCTION_15_41();
  v3 = v2;
  sub_26A84FDE8();
  OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_14_47();
  (*(*(v0 - 8) + 16))(v1, v3, v0);
  swift_storeEnumTagMultiPayload();
  return OUTLINED_FUNCTION_23_26();
}

uint64_t View.eraseToAnyView()(uint64_t a1)
{
  OUTLINED_FUNCTION_15();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_4_2();
  (*(v5 + 16))(v2, v1, a1);
  return sub_26A851248();
}

void View.readSize(onChange:)()
{
  OUTLINED_FUNCTION_28_0();
  v1 = v0;
  v7 = v2;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803A9C18);
  sub_26A84F4F8();
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B90C8);
  OUTLINED_FUNCTION_9_65();
  sub_26A506A30();
  sub_26A851448();
  sub_26A850928();
  v4 = swift_allocObject();
  *(v4 + 16) = v7;
  *(v4 + 24) = v1;
  OUTLINED_FUNCTION_11_59();
  sub_26A506A30();

  OUTLINED_FUNCTION_58();
  swift_getWitnessTable();
  sub_26A802820();
  sub_26A807538();
  sub_26A850B38();

  v5 = OUTLINED_FUNCTION_49_4();
  v6(v5);
  OUTLINED_FUNCTION_27_0();
}

void View.if<A>(_:transform:)()
{
  OUTLINED_FUNCTION_28_0();
  v43 = v0;
  v45 = v4;
  v46 = v3;
  v6 = v5;
  v8 = v7;
  v39 = v10;
  v40 = v9;
  v42 = v11;
  v13 = v12;
  OUTLINED_FUNCTION_2_34();
  v41 = v14;
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_6_0();
  v18 = (v16 - v17);
  MEMORY[0x28223BE20](v19);
  v21 = &v39 - v20;
  OUTLINED_FUNCTION_2_34();
  v23 = v22;
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_6_0();
  v27 = v25 - v26;
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_13_6();
  v44 = sub_26A84FE08();
  OUTLINED_FUNCTION_15();
  v30 = v29;
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_14_47();
  if (v42)
  {
    v40(v43);
    v32 = *(v23 + 16);
    v33 = OUTLINED_FUNCTION_49_4();
    v32(v33);
    v43 = v13;
    v34 = *(v23 + 8);
    v34(v27, v6);
    (v32)(v27, v1, v6);
    sub_26A801234();
    v34(v27, v6);
    v34(v1, v6);
    v13 = v43;
  }

  else
  {
    v35 = v41;
    v36 = *(v41 + 16);
    v36(v21, v43, v8);
    v36(v18, v21, v8);
    sub_26A8012F4();
    v37 = *(v35 + 8);
    v37(v18, v8);
    v37(v21, v8);
  }

  v47 = v45;
  v48 = v46;
  OUTLINED_FUNCTION_6_14();
  v38 = v44;
  swift_getWitnessTable();
  (*(v30 + 16))(v13, v2, v38);
  (*(v30 + 8))(v2, v38);
  OUTLINED_FUNCTION_27_0();
}

void View.ifLet<A, B>(_:transform:)()
{
  OUTLINED_FUNCTION_28_0();
  v73 = v2;
  v74 = v1;
  v72 = v3;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v64 = v11;
  v65 = v10;
  v13 = v12;
  OUTLINED_FUNCTION_2_34();
  v68 = v14;
  v69 = v0;
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_6_0();
  v66 = (v16 - v17);
  MEMORY[0x28223BE20](v18);
  v63 = &v59 - v19;
  OUTLINED_FUNCTION_2_34();
  v67 = v20;
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_6_0();
  v24 = (v22 - v23);
  MEMORY[0x28223BE20](v25);
  v62 = &v59 - v26;
  v27 = sub_26A852068();
  OUTLINED_FUNCTION_15();
  v29 = v28;
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v30);
  v32 = &v59 - v31;
  OUTLINED_FUNCTION_2_34();
  v61 = v33;
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_41();
  v37 = v36 - v35;
  v71 = v9;
  v70 = sub_26A84FE08();
  OUTLINED_FUNCTION_15();
  v39 = v38;
  OUTLINED_FUNCTION_77();
  v41 = MEMORY[0x28223BE20](v40);
  v43 = &v59 - v42;
  (*(v29 + 16))(v32, v13, v27, v41);
  if (__swift_getEnumTagSinglePayload(v32, 1, v7) == 1)
  {
    (*(v29 + 8))(v32, v27);
    v44 = v68;
    v45 = *(v68 + 16);
    v46 = v63;
    v47 = v71;
    v45(v63, v69, v71);
    v48 = v66;
    v45(v66, v46, v47);
    OUTLINED_FUNCTION_22_35();
    sub_26A8012F4();
    v49 = *(v44 + 8);
    v49(v48, v47);
    v49(v46, v47);
  }

  else
  {
    v68 = v39;
    v50 = v61;
    v51 = *(v61 + 32);
    v60 = v7;
    v51(v37, v32, v7);
    v65(v69, v37);
    v52 = v67;
    v53 = *(v67 + 16);
    v54 = v62;
    v53(v62, v24, v5);
    v55 = *(v52 + 8);
    v56 = OUTLINED_FUNCTION_4_58();
    v55(v56);
    v53(v24, v54, v5);
    OUTLINED_FUNCTION_4_58();
    v45 = v72;
    sub_26A801234();
    v57 = OUTLINED_FUNCTION_4_58();
    v55(v57);
    (v55)(v54, v5);
    (*(v50 + 8))(v37, v60);
    v39 = v68;
  }

  v75 = v74;
  v76 = v45;
  OUTLINED_FUNCTION_6_14();
  v58 = v70;
  swift_getWitnessTable();
  (*(v39 + 16))(v73, v43, v58);
  (*(v39 + 8))(v43, v58);
  OUTLINED_FUNCTION_27_0();
}

void View.onTapGestureWhereSupported(perform:)()
{
  OUTLINED_FUNCTION_28_0();
  v1 = v0;
  v16[0] = v2;
  v16[1] = v3;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  OUTLINED_FUNCTION_15();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_6_0();
  v10 = v8 - v9;
  MEMORY[0x28223BE20](v11);
  v13 = v16 - v12;
  sub_26A850A38();
  v14 = *(v6 + 16);
  v14(v13, v10, OpaqueTypeMetadata2);
  v15 = *(v6 + 8);
  v15(v10, OpaqueTypeMetadata2);
  v14(v1, v13, OpaqueTypeMetadata2);
  v15(v13, OpaqueTypeMetadata2);
  OUTLINED_FUNCTION_27_0();
}

void View.if<A, B>(_:if:else:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  OUTLINED_FUNCTION_28_0();
  v70 = v23;
  v26 = v25;
  v28 = v27;
  v67 = v30;
  v68 = v29;
  v65 = v32;
  v66 = v31;
  v34 = v33;
  v73 = v35;
  OUTLINED_FUNCTION_2_34();
  v69 = v36;
  v72 = a23;
  v74 = a22;
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_6_0();
  v40 = (v38 - v39);
  MEMORY[0x28223BE20](v41);
  v43 = &v65 - v42;
  OUTLINED_FUNCTION_2_34();
  v45 = v44;
  MEMORY[0x28223BE20](v46);
  OUTLINED_FUNCTION_6_0();
  v49 = (v47 - v48);
  MEMORY[0x28223BE20](v50);
  v52 = &v65 - v51;
  v71 = sub_26A84FE08();
  OUTLINED_FUNCTION_15();
  v54 = v53;
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v55);
  OUTLINED_FUNCTION_14_47();
  if (v34)
  {
    v66(v70);
    v56 = v45 + 16;
    v57 = *(v45 + 16);
    v57(v52, v49, v28);
    v58 = *(v45 + 8);
    v59 = OUTLINED_FUNCTION_4_58();
    v58(v59);
    v57(v49, v52, v28);
    OUTLINED_FUNCTION_4_58();
    OUTLINED_FUNCTION_22_35();
    sub_26A801234();
    v60 = OUTLINED_FUNCTION_4_58();
    v58(v60);
    (v58)(v52, v28);
  }

  else
  {
    v68(v70);
    v61 = v69;
    v56 = v69 + 16;
    v62 = *(v69 + 16);
    v62(v43, v40, v26);
    v63 = *(v61 + 8);
    v63(v40, v26);
    v62(v40, v43, v26);
    OUTLINED_FUNCTION_22_35();
    sub_26A8012F4();
    v63(v40, v26);
    v63(v43, v26);
  }

  v75 = v74;
  v76 = v56;
  OUTLINED_FUNCTION_6_14();
  v64 = v71;
  swift_getWitnessTable();
  (*(v54 + 16))(v73, v24, v64);
  (*(v54 + 8))(v24, v64);
  OUTLINED_FUNCTION_27_0();
}

uint64_t sub_26A80234C()
{
  swift_getKeyPath();
  sub_26A8509A8();
}

uint64_t View.externalPrimaryGesture(_:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  OUTLINED_FUNCTION_2_34();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_4_2();
  v9 = *(v7 + 16);
  v9(v3, v2, a1);
  v9(a2, v3, a1);
  v10 = OUTLINED_FUNCTION_49_4();
  return v11(v10);
}

void View.addMaterialBackground()()
{
  OUTLINED_FUNCTION_28_0();
  v24 = v0;
  v25 = v1;
  v3 = v2;
  v4 = sub_26A8513F8();
  OUTLINED_FUNCTION_15();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_41();
  v10 = v9 - v8;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803AF440);
  v11 = sub_26A84F4F8();
  OUTLINED_FUNCTION_15();
  v13 = v12;
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_6_0();
  v17 = v15 - v16;
  MEMORY[0x28223BE20](v18);
  v20 = &v24 - v19;
  sub_26A8513E8();
  sub_26A5BEDF4();
  sub_26A850918();
  (*(v6 + 8))(v10, v4);
  v21 = sub_26A506A30();
  v26 = v3;
  v27 = v21;
  OUTLINED_FUNCTION_58();
  swift_getWitnessTable();
  v22 = *(v13 + 16);
  v22(v20, v17, v11);
  v23 = *(v13 + 8);
  v23(v17, v11);
  v22(v25, v20, v11);
  v23(v20, v11);
  OUTLINED_FUNCTION_27_0();
}

uint64_t _s7SwiftUI4ViewP07SnippetB0E16applyHoverEffectQryF_0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  OUTLINED_FUNCTION_15();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_41();
  v9 = v8 - v7;
  v10 = *(v5 + 16);
  v10(v8 - v7);
  (v10)(a2, v9, a1);
  return (*(v5 + 8))(v9, a1);
}

uint64_t sub_26A8027E0@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_26A850DF8();
  result = sub_26A84F068();
  *a1 = v2;
  a1[1] = v4;
  a1[2] = v5;
  return result;
}

unint64_t sub_26A802820()
{
  result = qword_2803B90D8;
  if (!qword_2803B90D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B90D8);
  }

  return result;
}

double sub_26A802874@<D0>(uint64_t a1@<X8>)
{
  sub_26A5DA8F8();
  result = *&v3;
  *a1 = v3;
  *(a1 + 16) = v4;
  return result;
}

uint64_t sub_26A8028B8(__int128 *a1)
{
  v1 = *(a1 + 16);
  v3 = *a1;
  v4 = v1;
  return sub_26A5DA938(&v3);
}

uint64_t get_witness_table_7SwiftUI4ViewRzlAA15ModifiedContentVyxAA24_BackgroundStyleModifierVyAA8MaterialVGGAaBHPxAaBHD1__AiA0cH0HPyHCHCTm()
{
  OUTLINED_FUNCTION_15_41();
  v2 = OUTLINED_FUNCTION_50_0(v0, v1);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v2);
  sub_26A84F4F8();
  sub_26A506A30();
  OUTLINED_FUNCTION_58();
  return swift_getWitnessTable();
}

uint64_t sub_26A8029FC()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t get_enum_tag_for_layout_string_xq_Ri_zRi0_zRi__Ri0__r0_lySSSgytIsegnr_Sg(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_26A802A5C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 104))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 80);
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

uint64_t sub_26A802A9C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 88) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 104) = 1;
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
      *(result + 80) = (a2 - 1);
      return result;
    }

    *(result + 104) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_26A802B50()
{
  sub_26A84F988();
  OUTLINED_FUNCTION_15();
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_4_2();
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  if (*(v0 + 25) != 1)
  {

    sub_26A851EA8();
    v4 = sub_26A8501F8();
    sub_26A84EA78();

    sub_26A84F978();
    swift_getAtKeyPath();
    sub_26A4F5724(v2, v3, 0);
    v5 = OUTLINED_FUNCTION_49_4();
    v6(v5);
    return v8;
  }

  return v2;
}

uint64_t (*sub_26A802C90())(uint64_t a1, uint64_t a2)
{
  sub_26A84F988();
  OUTLINED_FUNCTION_15();
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_4_2();
  v2 = *(v0 + 32);
  v8 = *(v0 + 32);
  if (*(v0 + 48) == 1)
  {
    sub_26A759CE4(v2);
    v3 = v8;
  }

  else
  {

    sub_26A851EA8();
    v4 = sub_26A8501F8();
    sub_26A84EA78();

    sub_26A84F978();
    swift_getAtKeyPath();
    sub_26A58FF48(v2, *(&v8 + 1), 0);
    v5 = OUTLINED_FUNCTION_49_4();
    v6(v5);
    v3 = v9;
  }

  if (!v3)
  {
    return 0;
  }

  *(swift_allocObject() + 16) = v3;
  return sub_26A8072E0;
}

void sub_26A802E24()
{
  OUTLINED_FUNCTION_28_0();
  v3 = v2;
  v17 = v4;
  OUTLINED_FUNCTION_10_56();
  swift_getWitnessTable();
  sub_26A84FE88();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B9168);
  v5 = sub_26A84F4F8();
  OUTLINED_FUNCTION_15();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_6_0();
  v11 = v9 - v10;
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_13_6();
  sub_26A850838();
  v13 = *(v3 - 8);
  (*(v13 + 16))(v18, v0, v3);
  v14 = swift_allocObject();
  *(v14 + 16) = *(v3 + 16);
  (*(v13 + 32))(v14 + 32, v18, v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B9170);
  OUTLINED_FUNCTION_2_31();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_9_65();
  sub_26A506A30();
  sub_26A851448();
  sub_26A850B78();

  OUTLINED_FUNCTION_12_54();
  sub_26A506A30();
  OUTLINED_FUNCTION_58();
  swift_getWitnessTable();
  v15 = *(v7 + 16);
  v15(v1, v11, v5);
  v16 = *(v7 + 8);
  v16(v11, v5);
  v15(v17, v1, v5);
  v16(v1, v5);
  OUTLINED_FUNCTION_27_0();
}

uint64_t sub_26A8030E8@<X0>(uint64_t *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t (**a5)@<X0>(uint64_t a1@<X0>, char *a2@<X8>)@<X8>)
{
  v56 = a3;
  v57 = a4;
  v8 = sub_26A850798();
  v50 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v55 = &v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB4A0);
  MEMORY[0x28223BE20](v53);
  v11 = &v45 - v10;
  v12 = sub_26A850828();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v45 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_26A8507A8();
  MEMORY[0x28223BE20](v16);
  v21 = MEMORY[0x28223BE20](v17);
  v23 = &v45 - v22;
  v24 = *a1;
  if (*(*a1 + 16))
  {
    v47 = v19;
    v54 = v8;
    v48 = a2;
    v49 = a5;
    v25 = (*(v13 + 80) + 32) & ~*(v13 + 80);
    v26 = *(v13 + 16);
    v51 = v18;
    v52 = v20;
    v58 = v24;
    v26(v15, v24 + v25, v12, v21);
    sub_26A850808();
    v27 = *(v13 + 8);
    v27(v15, v12);
    (v26)(v15, v58 + v25, v12);
    v46 = sub_26A850818();
    v27(v15, v12);
    v58 = MEMORY[0x277D84F90];
    v60 = MEMORY[0x277D84F90];
    v28 = *(v52 + 16);
    v45 = v23;
    v28(v51, v23, v16);
    sub_26A807538();
    sub_26A851998();
    v29 = *(v53 + 36);
    sub_26A807538();
    v30 = (v50 + 16);
    v53 = v50 + 8;
    v31 = v54;
    while (1)
    {
      sub_26A851DD8();
      if (*&v11[v29] == v59[0])
      {
        break;
      }

      v32 = sub_26A851E18();
      v33 = v55;
      (*v30)(v55);
      v32(v59, 0);
      sub_26A851DE8();
      sub_26A803744(&v60, v33, v56, v57, v59);
      (*v53)(v33, v31);

      v58 = v59[0];
      v60 = v59[0];
    }

    sub_26A505D1C();
    v34 = v52 + 32;
    v55 = *(v52 + 32);
    v35 = v51;
    (v55)(v51, v45, v16);
    v36 = type metadata accessor for EngageableGestureHandler();
    v37 = *(v36 - 8);
    (*(v37 + 16))(v59, v48, v36);
    v38 = (*(v34 + 48) + 32) & ~*(v34 + 48);
    v39 = (v47 + v38 + 7) & 0xFFFFFFFFFFFFFFF8;
    v40 = (v39 + 111) & 0xFFFFFFFFFFFFFFF8;
    v41 = swift_allocObject();
    v42 = v57;
    *(v41 + 16) = v56;
    *(v41 + 24) = v42;
    (v55)(v41 + v38, v35, v16);
    result = (*(v37 + 32))(v41 + v39, v59, v36);
    *(v41 + v40) = v46;
    *(v41 + ((v40 + 15) & 0xFFFFFFFFFFFFFFF8)) = v58;
    v44 = v49;
    *v49 = sub_26A806850;
    v44[1] = v41;
  }

  else
  {
    __break(1u);

    (*v53)(a5, v12);
    sub_26A505D1C();

    __break(1u);
  }

  return result;
}

uint64_t sub_26A803744@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v31 = a4;
  v29 = a3;
  v25 = a5;
  v30 = sub_26A850758();
  v8 = *(v30 - 8);
  MEMORY[0x28223BE20](v30);
  v28 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_26A850798();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB498);
  v15 = v14 - 8;
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v24 - v17;
  v33 = *a1;
  (*(v11 + 16))(v13, a2, v10, v16);
  sub_26A807538();

  sub_26A851998();
  v19 = *(v15 + 44);
  sub_26A807538();
  v26 = (v8 + 16);
  for (i = (v8 + 8); ; (*i)(v21, v22))
  {
    sub_26A851DD8();
    if (*&v18[v19] == v32[0])
    {
      result = sub_26A505D1C();
      *v25 = v33;
      return result;
    }

    v20 = sub_26A851E18();
    v21 = v28;
    v22 = v30;
    (*v26)(v28);
    v20(v32, 0);
    sub_26A851DE8();
    sub_26A803AD8(&v33, v21, v29);
    if (v5)
    {
      break;
    }
  }

  (*i)(v21, v22);
  sub_26A505D1C();

  __break(1u);
  return result;
}

uint64_t sub_26A803AD8(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v33 = a1;
  v30 = type metadata accessor for MenuOverlayData();
  v32 = *(v30 - 8);
  MEMORY[0x28223BE20](v30);
  v31 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_26A852068();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v30 - v7;
  v9 = *(a3 - 8);
  MEMORY[0x28223BE20](v10);
  v12 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v30 - v14;
  sub_26A850768();
  if (__swift_getEnumTagSinglePayload(v8, 1, a3) == 1)
  {
    return (*(v6 + 8))(v8, v5);
  }

  (*(v9 + 32))(v15, v8, a3);
  (*(v9 + 16))(v12, v15, a3);
  if ((swift_dynamicCast() & 1) == 0)
  {
    return (*(v9 + 8))(v15, a3);
  }

  v17 = v34;
  if (!LOBYTE(v35))
  {
    v18 = v34;
    v19 = 0;
    goto LABEL_8;
  }

  if (LOBYTE(v35) == 1)
  {
    v18 = v34;
    v19 = 1;
LABEL_8:
    sub_26A5066FC(v18, v19);
    return (*(v9 + 8))(v15, a3);
  }

  sub_26A850748();
  v20 = v34;
  v21 = v36;
  v22 = v35 - v37;
  v23 = v37 + v38;
  v24 = v31;
  sub_26A84ACB8();
  v25 = v30;
  v26 = v24 + *(v30 + 20);
  *v26 = v20;
  *(v26 + 8) = v22;
  *(v26 + 16) = v21;
  *(v26 + 24) = v23;
  *(v24 + *(v25 + 24)) = v17;
  v27 = v33;
  sub_26A72A680();
  v28 = *(*v27 + 16);
  sub_26A72A70C(v28);
  sub_26A5066FC(v17, 2u);
  (*(v9 + 8))(v15, a3);
  v29 = *v27;
  *(v29 + 16) = v28 + 1;
  result = sub_26A806D64(v24, v29 + ((*(v32 + 80) + 32) & ~*(v32 + 80)) + *(v32 + 72) * v28);
  *v27 = v29;
  return result;
}

uint64_t sub_26A803E70@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char *a6@<X8>)
{
  v64 = a5;
  v61 = a4;
  v58 = a1;
  v66 = a6;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B9188);
  v63 = *(v65 - 8);
  MEMORY[0x28223BE20](v65);
  v62 = v53 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v69 = v53 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB440);
  v12 = *(v11 - 8);
  v59 = v11;
  v60 = v12;
  MEMORY[0x28223BE20](v11);
  v55 = v53 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB448);
  v53[2] = v14;
  MEMORY[0x28223BE20](v14);
  v16 = v53 - v15;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B9190);
  v68 = *(v57 - 8);
  MEMORY[0x28223BE20](v57);
  v56 = v53 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v67 = v53 - v19;
  v54 = type metadata accessor for EngageableGestureHandler();
  v53[1] = a3;
  v20 = sub_26A802B50();
  v22 = v21;
  v23 = sub_26A8507A8();
  v24 = *(*(v23 - 8) + 16);
  v24(v16, a2, v23);
  v25 = _s15TextLayoutShapeVMa();
  v26 = &v16[*(v25 + 20)];
  *v26 = v20;
  v26[8] = v22 & 1;
  v27 = sub_26A850DF8();
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB450);
  *&v16[*(v28 + 52)] = v27;
  *&v16[*(v28 + 56)] = 256;
  v29 = sub_26A802B50();
  v31 = v30;
  v32 = &v16[*(v14 + 36)];
  v24(v32, a2, v23);
  v33 = &v32[*(v25 + 20)];
  *v33 = v29;
  v33[8] = v31 & 1;
  v32[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB458) + 36)] = 0;
  v34 = v58;
  sub_26A84F068();
  type metadata accessor for CGPoint();
  sub_26A84F098();
  v36 = v54;
  v35 = v55;
  sub_26A804430(a2, v34, v54, v55, v70, v71);
  sub_26A4F5B58();
  sub_26A506A30();
  sub_26A84EEB8();
  v37 = v67;
  v38 = v59;
  sub_26A850C28();
  (*(v60 + 8))(v35, v38);
  sub_26A505D1C();
  v39 = v69;
  sub_26A804868(v64, v36);
  v40 = *(v68 + 16);
  v41 = v56;
  v42 = v57;
  v40(v56, v37, v57);
  v43 = v62;
  v44 = v63;
  v45 = *(v63 + 16);
  v46 = v39;
  v47 = v65;
  v45(v62, v46, v65);
  v48 = v66;
  v40(v66, v41, v42);
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B9198);
  v45(&v48[*(v49 + 48)], v43, v47);
  v50 = *(v44 + 8);
  v50(v69, v47);
  v51 = *(v68 + 8);
  v51(v67, v42);
  v50(v43, v47);
  return (v51)(v41, v42);
}

uint64_t sub_26A804430@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>, double a5@<D2>, double a6@<D3>)
{
  v32 = a3;
  v36 = a2;
  v31 = a1;
  v38 = a4;
  v8 = sub_26A84F088();
  v28 = v8;
  v9 = *(v8 - 8);
  v34 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_26A8507A8();
  v29 = v12;
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v30 = &v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_26A84FE18();
  MEMORY[0x28223BE20](v15);
  v35 = sub_26A84FA18();
  v37 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v17 = &v27 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26A84FF48();
  sub_26A84FA08();
  (*(v13 + 16))(&v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), v31, v12);
  v18 = v32;
  v19 = *(v32 - 8);
  (*(v19 + 16))(v39, v33, v32);
  v20 = v11;
  (*(v9 + 16))(v11, v36, v8);
  v21 = (*(v13 + 80) + 48) & ~*(v13 + 80);
  v22 = (v14 + v21 + 7) & 0xFFFFFFFFFFFFFFF8;
  v23 = (*(v9 + 80) + v22 + 104) & ~*(v9 + 80);
  v24 = swift_allocObject();
  *(v24 + 16) = *(v18 + 16);
  *(v24 + 32) = a5;
  *(v24 + 40) = a6;
  (*(v13 + 32))(v24 + v21, v30, v29);
  (*(v19 + 32))(v24 + v22, v39, v18);
  (*(v9 + 32))(v24 + v23, v20, v28);
  sub_26A807538();
  v25 = v35;
  sub_26A851338();

  return (*(v37 + 8))(v17, v25);
}

uint64_t sub_26A804868(uint64_t a1, uint64_t a2)
{
  v8 = a1;
  v4 = *(a2 - 8);
  (*(v4 + 16))(v7, v2, a2);
  v5 = swift_allocObject();
  *(v5 + 16) = *(a2 + 16);
  (*(v4 + 32))(v5 + 32, v7, a2);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B91A0);
  sub_26A84ACC8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B91A8);
  sub_26A506A30();
  sub_26A80692C();
  sub_26A807538();
  return sub_26A851308();
}

uint64_t sub_26A804A40@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v64 = a5;
  v65 = sub_26A84EF68();
  v63 = *(v65 - 8);
  MEMORY[0x28223BE20](v65);
  v62 = &v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = sub_26A850008();
  v60 = *(v59 - 8);
  MEMORY[0x28223BE20](v59);
  v56 = &v50 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for MenuOverlayData();
  v12 = *(v11 - 8);
  v61 = v11 - 8;
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v50 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B91F0);
  v57 = *(v54 - 8);
  MEMORY[0x28223BE20](v54);
  v51 = &v50 - v15;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B91E8);
  MEMORY[0x28223BE20](v55);
  v52 = &v50 - v16;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B91D0);
  MEMORY[0x28223BE20](v58);
  v53 = &v50 - v17;
  sub_26A806D00(a1, v14);
  v18 = a4;
  v19 = type metadata accessor for EngageableGestureHandler();
  v20 = *(v19 - 8);
  (*(v20 + 16))(v70, a2, v19);
  v21 = (*(v12 + 80) + 32) & ~*(v12 + 80);
  v22 = (v13 + v21 + 7) & 0xFFFFFFFFFFFFFFF8;
  v23 = swift_allocObject();
  *(v23 + 16) = a3;
  *(v23 + 24) = v18;
  sub_26A806D64(v14, v23 + v21);
  (*(v20 + 32))(v23 + v22, v70, v19);
  v66 = a3;
  v67 = v18;
  v68 = a1;
  v24 = a1;
  v69 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B9220);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B9228);
  sub_26A506A30();
  sub_26A806E7C();
  v25 = v51;
  sub_26A8504E8();
  v26 = v56;
  sub_26A84FFF8();
  sub_26A506A30();
  sub_26A807538();
  v27 = v52;
  v28 = v54;
  v29 = v59;
  sub_26A850CF8();
  (*(v60 + 8))(v26, v29);
  (*(v57 + 8))(v25, v28);
  KeyPath = swift_getKeyPath();
  v31 = &v27[*(v55 + 36)];
  *v31 = KeyPath;
  v31[8] = 2;
  sub_26A806B3C();
  sub_26A850A68();
  sub_26A505D1C();
  v32 = v62;
  sub_26A84EF58();
  sub_26A806A80();
  v33 = v64;
  sub_26A8509E8();
  (*(v63 + 8))(v32, v65);
  sub_26A505D1C();
  v34 = (v24 + *(v61 + 28));
  v35 = *v34;
  v36 = v34[1];
  v37 = v34[2];
  v38 = v34[3];
  v71.origin.x = *v34;
  v71.origin.y = v36;
  v71.size.width = v37;
  v71.size.height = v38;
  CGRectGetWidth(v71);
  v72.origin.x = v35;
  v72.origin.y = v36;
  v72.size.width = v37;
  v72.size.height = v38;
  CGRectGetHeight(v72);
  sub_26A851448();
  sub_26A84F028();
  v39 = (v33 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B91C8) + 36));
  v40 = v70[1];
  *v39 = v70[0];
  v39[1] = v40;
  v39[2] = v70[2];
  v41 = v35;
  *&v40 = v36;
  v42 = v37;
  v43 = v38;
  MinX = CGRectGetMinX(*(&v40 - 8));
  v73.origin.x = v35;
  v73.origin.y = v36;
  v73.size.width = v37;
  v73.size.height = v38;
  v45 = MinX + CGRectGetWidth(v73) * 0.5;
  v74.origin.x = v35;
  v74.origin.y = v36;
  v74.size.width = v37;
  v74.size.height = v38;
  MinY = CGRectGetMinY(v74);
  v75.origin.x = v35;
  v75.origin.y = v36;
  v75.size.width = v37;
  v75.size.height = v38;
  v47 = MinY + CGRectGetHeight(v75) * 0.5;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B91A8);
  v49 = (v33 + *(result + 36));
  *v49 = v45;
  v49[1] = v47;
  return result;
}

uint64_t sub_26A805254(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result)
  {
    v4 = *(a2 + *(type metadata accessor for MenuOverlayData() + 24));
    sub_26A4F5FCC(a3 + 72, v5);
    sub_26A6A7470(v4, v5);
    return sub_26A53F320(v5);
  }

  return result;
}

uint64_t sub_26A8052B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12 = *(a1 + *(type metadata accessor for MenuOverlayData() + 24));
  swift_getKeyPath();
  v7 = type metadata accessor for EngageableGestureHandler();
  v8 = *(v7 - 8);
  (*(v8 + 16))(v11, a2, v7);
  v9 = swift_allocObject();
  *(v9 + 16) = a3;
  *(v9 + 24) = a4;
  (*(v8 + 32))(v9 + 32, v11, v7);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B9260);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B9248);
  sub_26A506A30();
  sub_26A806F00();
  return sub_26A8512F8();
}

uint64_t sub_26A805470@<X0>(uint64_t *a1@<X8>)
{
  result = EngageableListItem.hashValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_26A8054BC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v23[1] = a5;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B9258);
  v24 = *(v25 - 8);
  MEMORY[0x28223BE20](v25);
  v10 = v23 - v9;
  v11 = *a1;
  v12 = a1[1];
  v13 = a1[2];
  v14 = *(a1 + 24);
  v15 = type metadata accessor for EngageableGestureHandler();
  v16 = *(v15 - 8);
  (*(v16 + 16))(v32, a2, v15);
  v17 = swift_allocObject();
  *(v17 + 16) = a3;
  *(v17 + 24) = a4;
  *(v17 + 32) = v11;
  *(v17 + 40) = v12;
  *(v17 + 48) = v13;
  *(v17 + 56) = v14;
  (*(v16 + 32))(v17 + 64, v32, v15);
  v26 = v11;
  v27 = v12;
  v28 = v13;
  v29 = v14;

  sub_26A5065E0(v13, v14);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B9270);
  sub_26A8070A8();
  sub_26A8510D8();
  v32[0] = 0;
  v32[1] = 0xE000000000000000;
  sub_26A852248();

  v30 = 0xD000000000000013;
  v31 = 0x800000026A893070;
  sub_26A8526B8();
  sub_26A851848();
  if (v14)
  {
    if (v14 != 1)
    {
      MEMORY[0x26D664930](2);
      sub_26A759300(v32, v13);
      goto LABEL_7;
    }

    v18 = 1;
  }

  else
  {
    v18 = 0;
  }

  MEMORY[0x26D664930](v18);
  sub_26A852008();
LABEL_7:
  v19 = v25;
  v20 = v24;
  v32[0] = sub_26A8526F8();
  v21 = sub_26A852568();
  MEMORY[0x26D663B00](v21);

  sub_26A506A30();
  sub_26A850A68();

  return (*(v20 + 8))(v10, v19);
}

void sub_26A805818(uint64_t a1, uint64_t a2, void *a3, char a4)
{
  if (a4)
  {
    if (a4 != 1)
    {
      return;
    }

    type metadata accessor for EngageableGestureHandler();
    v5 = a3;
    sub_26A805C50();
    v6 = sub_26A802C90();
    if (v6)
    {
      v7 = v6;
      v8 = [v5 aceId];
      if (v8)
      {
        v9 = v8;
        v10 = sub_26A8517B8();
        v12 = v11;
      }

      else
      {
        v10 = 0;
        v12 = 0;
      }

      v7(v10, v12);
      v22 = a3;
      v23 = 1;
LABEL_19:
      sub_26A5066FC(v22, v23);

      sub_26A4C24DC(v7);
      return;
    }

    v20 = a3;
    v21 = 1;
  }

  else
  {
    type metadata accessor for EngageableGestureHandler();
    v13 = a3;
    sub_26A8059E4(a3);
    v14 = sub_26A802C90();
    if (v14)
    {
      v7 = v14;
      v15 = [v13 referenceIdentifier];
      if (v15)
      {
        v16 = v15;
        v17 = sub_26A8517B8();
        v19 = v18;
      }

      else
      {
        v17 = 0;
        v19 = 0;
      }

      v7(v17, v19);
      v22 = a3;
      v23 = 0;
      goto LABEL_19;
    }

    v20 = a3;
    v21 = 0;
  }

  sub_26A5066FC(v20, v21);
}

void sub_26A8059E4(void *a1)
{
  v3 = sub_26A84F988();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v7 = *v1;
    v18 = v1;
    v8 = *(v1 + 8);
    v19 = a1;
    if (v8 == 1)
    {
      sub_26A759954(v7, 1);
    }

    else
    {
      sub_26A759954(v7, 0);
      sub_26A851EA8();
      v9 = sub_26A8501F8();
      sub_26A84EA78();

      sub_26A84F978();
      swift_getAtKeyPath();
      sub_26A4F5714(v7, 0);
      (*(v4 + 8))(v6, v3);
      v7 = v20;
    }

    v10 = sub_26A73670C();
    for (i = 0; ; ++i)
    {
      if (v10 == i)
      {

        return;
      }

      if ((v7 & 0xC000000000000001) != 0)
      {
        v12 = MEMORY[0x26D6644E0](i, v7);
      }

      else
      {
        if (i >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_19;
        }

        v12 = *(v7 + 8 * i + 32);
      }

      v13 = v12;
      if (__OFADD__(i, 1))
      {
        break;
      }

      v14 = [v12 commandReference];
      if (v14)
      {
        v15 = v14;
        v16 = [v14 isEqual_];

        if (v16)
        {

          sub_26A4F5FCC(v18 + 72, &v20);
          InteractionDelegateWrapper.perform(sfCommand:)();

          sub_26A53F320(&v20);
          return;
        }
      }
    }

    __break(1u);
LABEL_19:
    __break(1u);
  }
}

uint64_t sub_26A805C50()
{
  sub_26A4F5FCC(v0 + 72, v2);
  sub_26A5E8BF0();
  return sub_26A53F320(v2);
}

uint64_t sub_26A805C98@<X0>(uint64_t a1@<X8>)
{
  sub_26A53ACC8();

  v2 = sub_26A850898();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B9288) + 36));
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B9298) + 28);
  v11 = *MEMORY[0x277CE0B30];
  v12 = sub_26A850678();
  (*(*(v12 - 8) + 104))(v9 + v10, v11, v12);
  *v9 = swift_getKeyPath();
  *a1 = v2;
  *(a1 + 8) = v4;
  *(a1 + 16) = v6 & 1;
  *(a1 + 24) = v8;
  KeyPath = swift_getKeyPath();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B9270);
  v15 = a1 + *(result + 36);
  *v15 = KeyPath;
  *(v15 + 8) = 1;
  *(v15 + 16) = 0;
  return result;
}

uint64_t sub_26A805DE8@<X0>(uint64_t a1@<X8>)
{
  result = sub_26A850DF8();
  *a1 = result;
  *(a1 + 8) = 256;
  return result;
}

uint64_t sub_26A805E18(double a1, double a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v75 = a8;
  v60 = a6;
  v59 = a5;
  v68 = sub_26A852068();
  v65 = *(v68 - 8);
  MEMORY[0x28223BE20](v68);
  v74 = &v58 - v12;
  v77 = a7;
  v76 = *(a7 - 8);
  MEMORY[0x28223BE20](v13);
  v84 = &v58 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = sub_26A850758();
  v63 = *(v72 - 8);
  MEMORY[0x28223BE20](v72);
  v85 = &v58 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v73 = &v58 - v17;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB498);
  MEMORY[0x28223BE20](v62);
  v19 = &v58 - v18;
  v86 = sub_26A850798();
  v20 = *(v86 - 8);
  MEMORY[0x28223BE20](v86);
  v22 = &v58 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v25 = &v58 - v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB4A0);
  v27 = v26 - 8;
  MEMORY[0x28223BE20](v26);
  v29 = &v58 - v28;
  sub_26A84F9F8();
  v31 = v30 - a1;
  sub_26A84F9F8();
  v100.origin.y = v32 - a2;
  v100.size.width = 0.0;
  v100.size.height = 0.0;
  v100.origin.x = v31;
  v101 = CGRectInset(v100, -8.0, -8.0);
  x = v101.origin.x;
  y = v101.origin.y;
  width = v101.size.width;
  height = v101.size.height;
  v37 = sub_26A8507A8();
  (*(*(v37 - 8) + 16))(v29, a4, v37);
  v38 = *(v27 + 44);
  v39 = sub_26A807538();
  v82 = v38;
  v83 = v37;
  sub_26A851D88();
  v64 = 0;
  v81 = (v20 + 16);
  v79 = (v20 + 32);
  v78 = (v20 + 8);
  v40 = v25;
  v41 = v22;
  v71 = (v63 + 16);
  v70 = (v63 + 32);
  v67 = (v76 + 4);
  v66 = v76 + 1;
  v76 = (v63 + 8);
  ++v65;
  for (i = v29; ; v29 = i)
  {
    sub_26A851DD8();
    if (*&v29[v82] == v87[0])
    {
      break;
    }

    v42 = v39;
    v43 = sub_26A851E18();
    v44 = *v81;
    v45 = v86;
    (*v81)(v40);
    v43(v87, 0);
    sub_26A851DE8();
    (*v79)(v41, v40, v45);
    sub_26A850778();
    *&v102.origin.x = v87[4];
    *&v102.size.width = v87[6];
    v102.origin.y = *&v87[5] - v88;
    v102.size.height = v88 + v89;
    v104.origin.x = x;
    v104.origin.y = y;
    v104.size.width = width;
    v104.size.height = height;
    if (CGRectIntersectsRect(v102, v104))
    {
      v61 = v40;
      (v44)(v19, v41, v45);
      v46 = *(v62 + 36);
      sub_26A807538();
      v63 = v41;
      sub_26A851D88();
      v69 = v19;
      while (1)
      {
        sub_26A851DD8();
        if (*&v19[v46] == v87[0])
        {
          break;
        }

        v47 = v85;
        v48 = v84;
        v49 = sub_26A851E18();
        v50 = v73;
        v51 = v72;
        (*v71)(v73);
        v49(v87, 0);
        sub_26A851DE8();
        (*v70)(v47, v50, v51);
        v52 = v74;
        v53 = v77;
        sub_26A850768();
        if (__swift_getEnumTagSinglePayload(v52, 1, v53) == 1)
        {
          (*v76)(v47, v51);
          (*v65)(v52, v68);
          v19 = v69;
          v39 = v42;
        }

        else
        {
          (*v67)(v48, v52, v53);
          sub_26A850748();
          v103.origin.x = v90;
          v103.size.width = v92;
          v103.origin.y = v91 - v93;
          v103.size.height = v93 + v94;
          v105.origin.x = x;
          v105.origin.y = y;
          v105.size.width = width;
          v105.size.height = height;
          v39 = v42;
          if (CGRectIntersectsRect(v103, v105))
          {
            if ((v64 & 1) == 0)
            {
              v54 = *(v59 + 88);
              v55 = v85;
              sub_26A850748();
              v56 = v84;
              v54(v84, v60, v95, v96 - v98, v97, v98 + v99);
              (*v66)(v56, v77);
              (*v76)(v55, v51);
              v64 = 1;
              v19 = v69;
              break;
            }

            (*v66)(v84, v77);
          }

          else
          {
            (*v66)(v84, v53);
          }

          (*v76)(v85, v51);
          v19 = v69;
        }
      }

      sub_26A505D1C();
      v41 = v63;
      (*v78)(v63, v86);
      v40 = v61;
    }

    else
    {
      (*v78)(v41, v45);
    }
  }

  return sub_26A505D1C();
}

uint64_t sub_26A806850@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v5 = sub_26A8507A8();
  OUTLINED_FUNCTION_2_5(v5);
  v7 = v6;
  v9 = v8;
  v10 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v11 = (*(v9 + 64) + v10 + 7) & 0xFFFFFFFFFFFFFFF8;
  v12 = (v11 + 111) & 0xFFFFFFFFFFFFFFF8;
  v13 = *(v2 + v12);
  v14 = *(v2 + ((v12 + 15) & 0xFFFFFFFFFFFFFFF8));

  return sub_26A803E70(a1, v2 + v10, v2 + v11, v13, v14, a2);
}

unint64_t sub_26A80692C()
{
  result = qword_2803B91B8;
  if (!qword_2803B91B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B91A8);
    sub_26A8069B8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B91B8);
  }

  return result;
}

unint64_t sub_26A8069B8()
{
  result = qword_2803B91C0;
  if (!qword_2803B91C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B91C8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B91D0);
    sub_26A806A80();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B91C0);
  }

  return result;
}

unint64_t sub_26A806A80()
{
  result = qword_2803B91D8;
  if (!qword_2803B91D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B91D0);
    sub_26A806B3C();
    sub_26A807538();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B91D8);
  }

  return result;
}

unint64_t sub_26A806B3C()
{
  result = qword_2803B91E0;
  if (!qword_2803B91E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B91E8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B91F0);
    sub_26A850008();
    sub_26A506A30();
    sub_26A807538();
    swift_getOpaqueTypeConformance2();
    sub_26A506A30();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B91E0);
  }

  return result;
}

uint64_t type metadata accessor for MenuOverlayData()
{
  result = qword_2803B92A0;
  if (!qword_2803B92A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_26A806D00(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MenuOverlayData();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_26A806D64(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MenuOverlayData();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_26A806DC8(uint64_t a1)
{
  v3 = type metadata accessor for MenuOverlayData();
  OUTLINED_FUNCTION_2_5(v3);
  v5 = v4;
  v7 = v6;
  v8 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v9 = v1 + ((*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8);

  return sub_26A805254(a1, v1 + v8, v9);
}

unint64_t sub_26A806E7C()
{
  result = qword_2803B9238;
  if (!qword_2803B9238)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B9228);
    sub_26A806F00();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B9238);
  }

  return result;
}

unint64_t sub_26A806F00()
{
  result = qword_2803B9240;
  if (!qword_2803B9240)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B9248);
    sub_26A506A30();
    sub_26A807538();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B9240);
  }

  return result;
}

uint64_t objectdestroy_16Tm()
{
  sub_26A4F5714(*(v0 + 32), *(v0 + 40));
  sub_26A4F5724(*(v0 + 48), *(v0 + 56), *(v0 + 57));
  sub_26A58FF48(*(v0 + 64), *(v0 + 72), *(v0 + 80));
  if (*(v0 + 97))
  {
    if ((*(v0 + 96) & 1) == 0)
    {
      MEMORY[0x26D665710](v0 + 88);
    }
  }

  else
  {
  }

  MEMORY[0x26D665710](v0 + 104);

  return swift_deallocObject();
}

unint64_t sub_26A8070A8()
{
  result = qword_2803B9278;
  if (!qword_2803B9278)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B9270);
    sub_26A807160();
    sub_26A506A30();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B9278);
  }

  return result;
}

unint64_t sub_26A807160()
{
  result = qword_2803B9280;
  if (!qword_2803B9280)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B9288);
    sub_26A506A30();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B9280);
  }

  return result;
}

uint64_t sub_26A807218(uint64_t a1)
{
  v2 = sub_26A850678();
  v3 = MEMORY[0x28223BE20](v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
  return sub_26A84F738();
}

uint64_t sub_26A8072E8(uint64_t a1)
{
  v3 = *(v1 + 2);
  v4 = *(v1 + 3);
  v5 = sub_26A8507A8();
  OUTLINED_FUNCTION_2_5(v5);
  v7 = (*(v6 + 80) + 48) & ~*(v6 + 80);
  v9 = (*(v8 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = *(sub_26A84F088() - 8);
  v11 = v1[4];
  v12 = v1[5];
  v13 = v1 + ((v9 + *(v10 + 80) + 104) & ~*(v10 + 80));

  return sub_26A805E18(v11, v12, a1, v1 + v7, v1 + v9, v13, v3, v4);
}

void sub_26A807404()
{
  sub_26A84ACC8();
  if (v0 <= 0x3F)
  {
    type metadata accessor for CGRect();
    if (v1 <= 0x3F)
    {
      sub_26A8074A0();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_26A8074A0()
{
  if (!qword_2803B92B0)
  {
    v0 = sub_26A851B48();
    if (!v1)
    {
      atomic_store(v0, &qword_2803B92B0);
    }
  }
}

unint64_t sub_26A807538()
{
  OUTLINED_FUNCTION_196();
  result = *v2;
  if (!result)
  {
    v1(255);
    result = swift_getWitnessTable();
    atomic_store(result, v0);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_20_33()
{
  sub_26A4F5714(*v0, *(v0 + 8));
  sub_26A4F5724(*(v0 + 16), *(v0 + 24), *(v0 + 25));
  return sub_26A58FF48(*(v0 + 32), *(v0 + 40), *(v0 + 48));
}

uint64_t OUTLINED_FUNCTION_23_26()
{

  return sub_26A84FDF8();
}

uint64_t sub_26A8076A4()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B1F98);
  v3 = OUTLINED_FUNCTION_79(v2);
  MEMORY[0x28223BE20](v3);
  v5 = &v33 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B1FA8);
  v7 = OUTLINED_FUNCTION_79(v6);
  MEMORY[0x28223BE20](v7);
  v9 = &v33 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B1FB0);
  v11 = OUTLINED_FUNCTION_79(v10);
  MEMORY[0x28223BE20](v11);
  v13 = &v33 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B1FA0);
  v15 = OUTLINED_FUNCTION_79(v14);
  v16 = MEMORY[0x28223BE20](v15);
  v18 = &v33 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = &v33 - v19;
  v21 = sub_26A850648();
  v22 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v24 = &v33 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26A8079F0([v1 style]);
  if (__swift_getEnumTagSinglePayload(v20, 1, v21) == 1)
  {
    sub_26A807AA4(v20);
  }

  else
  {
    (*(v22 + 32))(v24, v20, v21);
    v25 = sub_26A850608();
    __swift_storeEnumTagSinglePayload(v13, 1, 1, v25);
    v26 = sub_26A850618();
    __swift_storeEnumTagSinglePayload(v9, 1, 1, v26);
    (*(v22 + 16))(v18, v24, v21);
    __swift_storeEnumTagSinglePayload(v18, 0, 1, v21);
    v27 = sub_26A8505E8();
    __swift_storeEnumTagSinglePayload(v5, 1, 1, v27);
    sub_26A850658();
    (*(v22 + 8))(v24, v21);
  }

  sub_26A850668();
  v28 = OUTLINED_FUNCTION_0_99();
  return __swift_storeEnumTagSinglePayload(v28, v29, v30, v31);
}

uint64_t sub_26A807AA4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B1FA0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_26A807B70()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_26A84EC18();

  return v1;
}

uint64_t sub_26A807BE4()
{
  swift_getKeyPath();
  swift_getKeyPath();
  v1 = v0;
  return sub_26A84EC28();
}

id sub_26A807C50()
{
  v1 = OBJC_IVAR____TtC9SnippetUI12MapViewModel____lazy_storage___locationManager;
  v2 = *&v0[OBJC_IVAR____TtC9SnippetUI12MapViewModel____lazy_storage___locationManager];
  if (v2)
  {
    v3 = *&v0[OBJC_IVAR____TtC9SnippetUI12MapViewModel____lazy_storage___locationManager];
  }

  else
  {
    v4 = sub_26A807CB4(v0);
    v5 = *&v0[v1];
    *&v0[v1] = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}