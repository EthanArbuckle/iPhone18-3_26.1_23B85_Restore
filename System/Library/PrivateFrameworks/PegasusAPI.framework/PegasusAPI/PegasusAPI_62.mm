uint64_t static Searchfoundation_ButtonCardSection.== infix(_:_:)()
{
  OUTLINED_FUNCTION_16();
  v107 = type metadata accessor for Searchfoundation_Image(0);
  v2 = OUTLINED_FUNCTION_59_1(v107);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_62();
  v103 = v6 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8EA8, &unk_1B96B77D0);
  OUTLINED_FUNCTION_183(v7);
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_185();
  v105 = v11;
  v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8EB0, &qword_1B964D6B0);
  OUTLINED_FUNCTION_59_1(v106);
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_185();
  v108 = v15;
  OUTLINED_FUNCTION_201();
  v16 = type metadata accessor for Searchfoundation_RichText();
  v17 = OUTLINED_FUNCTION_59_1(v16);
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_62();
  v104 = (v21 - v20);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACB1D0, &qword_1B96B9870);
  OUTLINED_FUNCTION_183(v22);
  v24 = *(v23 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v25);
  v27 = (&v100 - v26);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACB230, &unk_1B96B8870);
  OUTLINED_FUNCTION_59_1(v28);
  v30 = *(v29 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_185();
  v109 = v32;
  v33 = OUTLINED_FUNCTION_201();
  v34 = type metadata accessor for Searchfoundation_Color(v33);
  v35 = OUTLINED_FUNCTION_59_1(v34);
  v37 = *(v36 + 64);
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_62();
  v40 = v39 - v38;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACB050, &unk_1B96B7BD0);
  OUTLINED_FUNCTION_183(v41);
  v43 = *(v42 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v44);
  v46 = &v100 - v45;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACB058, &unk_1B96CA9D0);
  OUTLINED_FUNCTION_59_1(v47);
  v49 = *(v48 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v50);
  v52 = &v100 - v51;
  v53 = *v1;
  v54 = *v0;
  sub_1B8D67B1C();
  if ((v55 & 1) == 0)
  {
    goto LABEL_44;
  }

  v56 = v1[1] == v0[1] && v1[2] == v0[2];
  if (!v56 && (sub_1B964C9F0() & 1) == 0)
  {
    goto LABEL_44;
  }

  v57 = v1[3] == v0[3] && v1[4] == v0[4];
  if (!v57 && (sub_1B964C9F0() & 1) == 0)
  {
    goto LABEL_44;
  }

  if (*(v1 + 40) != *(v0 + 40) || *(v1 + 41) != *(v0 + 41) || *(v1 + 42) != *(v0 + 42))
  {
    goto LABEL_44;
  }

  v58 = v1[6] == v0[6] && v1[7] == v0[7];
  if (!v58 && (sub_1B964C9F0() & 1) == 0)
  {
    goto LABEL_44;
  }

  v59 = *(v0 + 72);
  if (!sub_1B8D92198(v1[8], *(v1 + 72), v0[8]))
  {
    goto LABEL_44;
  }

  v60 = type metadata accessor for Searchfoundation_ButtonCardSection();
  v61 = *(v60 + 52);
  v101 = v60;
  v102 = v61;
  v62 = *(v47 + 48);
  sub_1B8DD9078(v1 + v61, v52, &qword_1EBACB050, &unk_1B96B7BD0);
  v63 = v0 + v102;
  v102 = v62;
  sub_1B8DD9078(v63, &v52[v62], &qword_1EBACB050, &unk_1B96B7BD0);
  OUTLINED_FUNCTION_178(v52, 1, v34);
  if (v56)
  {
    OUTLINED_FUNCTION_178(&v52[v102], 1, v34);
    if (v56)
    {
      sub_1B8D9207C(v52, &qword_1EBACB050, &unk_1B96B7BD0);
      goto LABEL_34;
    }

    goto LABEL_29;
  }

  sub_1B8DD9078(v52, v46, &qword_1EBACB050, &unk_1B96B7BD0);
  v64 = v102;
  OUTLINED_FUNCTION_178(&v52[v102], 1, v34);
  if (v65)
  {
    sub_1B92D6AD8();
LABEL_29:
    v66 = &qword_1EBACB058;
    v67 = &unk_1B96CA9D0;
LABEL_30:
    v68 = v52;
LABEL_43:
    sub_1B8D9207C(v68, v66, v67);
    goto LABEL_44;
  }

  OUTLINED_FUNCTION_9_29();
  sub_1B92DB0F8(&v52[v64], v40, v69);
  v70 = *(v34 + 20);
  if (*&v46[v70] != *(v40 + v70))
  {
    v71 = *&v46[v70];

    sub_1B947FDE4();
    LODWORD(v102) = v72;

    if ((v102 & 1) == 0)
    {
      sub_1B92D6AD8();
      sub_1B92D6AD8();
      v66 = &qword_1EBACB050;
      v67 = &unk_1B96B7BD0;
      goto LABEL_30;
    }
  }

  sub_1B964C2B0();
  OUTLINED_FUNCTION_3_57();
  sub_1B92DB510(v73, v74);
  v75 = sub_1B964C850();
  sub_1B92D6AD8();
  sub_1B92D6AD8();
  sub_1B8D9207C(v52, &qword_1EBACB050, &unk_1B96B7BD0);
  if ((v75 & 1) == 0)
  {
    goto LABEL_44;
  }

LABEL_34:
  v76 = v101;
  v77 = *(v101 + 56);
  v78 = *(v28 + 48);
  v79 = v109;
  sub_1B8DD9078(v1 + v77, v109, &qword_1EBACB1D0, &qword_1B96B9870);
  sub_1B8DD9078(v0 + v77, v79 + v78, &qword_1EBACB1D0, &qword_1B96B9870);
  OUTLINED_FUNCTION_117(v79);
  if (v56)
  {
    OUTLINED_FUNCTION_117(v79 + v78);
    if (v56)
    {
      sub_1B8D9207C(v79, &qword_1EBACB1D0, &qword_1B96B9870);
      goto LABEL_47;
    }

LABEL_42:
    v66 = &qword_1EBACB230;
    v67 = &unk_1B96B8870;
    v68 = v79;
    goto LABEL_43;
  }

  sub_1B8DD9078(v79, v27, &qword_1EBACB1D0, &qword_1B96B9870);
  OUTLINED_FUNCTION_117(v79 + v78);
  if (v80)
  {
    sub_1B92D6AD8();
    goto LABEL_42;
  }

  v83 = v104;
  sub_1B92DB0F8(v79 + v78, v104, type metadata accessor for Searchfoundation_RichText);
  v84 = static Searchfoundation_RichText.== infix(_:_:)(v27, v83);
  sub_1B92D6AD8();
  sub_1B92D6AD8();
  sub_1B8D9207C(v79, &qword_1EBACB1D0, &qword_1B96B9870);
  if ((v84 & 1) == 0)
  {
    goto LABEL_44;
  }

LABEL_47:
  v85 = *(v76 + 60);
  v86 = *(v106 + 48);
  v52 = v108;
  sub_1B8DD9078(v1 + v85, v108, &qword_1EBAB8EA8, &unk_1B96B77D0);
  sub_1B8DD9078(v0 + v85, &v52[v86], &qword_1EBAB8EA8, &unk_1B96B77D0);
  v87 = v107;
  OUTLINED_FUNCTION_178(v52, 1, v107);
  if (v56)
  {
    OUTLINED_FUNCTION_117(&v52[v86]);
    if (v56)
    {
      sub_1B8D9207C(v52, &qword_1EBAB8EA8, &unk_1B96B77D0);
LABEL_60:
      v97 = *(v76 + 48);
      sub_1B964C2B0();
      OUTLINED_FUNCTION_3_57();
      sub_1B92DB510(v98, v99);
      v81 = sub_1B964C850();
      return v81 & 1;
    }

    goto LABEL_56;
  }

  v88 = v105;
  sub_1B8DD9078(v52, v105, &qword_1EBAB8EA8, &unk_1B96B77D0);
  OUTLINED_FUNCTION_117(&v52[v86]);
  if (v89)
  {
    sub_1B92D6AD8();
LABEL_56:
    v66 = &qword_1EBAB8EB0;
    v67 = &qword_1B964D6B0;
    goto LABEL_30;
  }

  OUTLINED_FUNCTION_7_36();
  v90 = v103;
  sub_1B92DB0F8(&v52[v86], v103, v91);
  if (*(v88 + *(v87 + 20)) != *(v90 + *(v87 + 20)))
  {

    sub_1B94C6890();
    v93 = v92;

    if ((v93 & 1) == 0)
    {
      sub_1B92D6AD8();
      sub_1B92D6AD8();
      v66 = &qword_1EBAB8EA8;
      v67 = &unk_1B96B77D0;
      goto LABEL_30;
    }
  }

  sub_1B964C2B0();
  OUTLINED_FUNCTION_3_57();
  sub_1B92DB510(v94, v95);
  v96 = sub_1B964C850();
  sub_1B92D6AD8();
  sub_1B92D6AD8();
  sub_1B8D9207C(v52, &qword_1EBAB8EA8, &unk_1B96B77D0);
  if (v96)
  {
    goto LABEL_60;
  }

LABEL_44:
  v81 = 0;
  return v81 & 1;
}

uint64_t Searchfoundation_ButtonCardSection.hashValue.getter()
{
  sub_1B964CA70();
  type metadata accessor for Searchfoundation_ButtonCardSection();
  sub_1B92DB510(&qword_1EBACB290, type metadata accessor for Searchfoundation_ButtonCardSection);
  sub_1B964C7E0();
  return sub_1B964CA90();
}

uint64_t sub_1B92DAF88(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B92DB510(&qword_1EBACB2B0, type metadata accessor for Searchfoundation_ButtonCardSection);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B92DB008(uint64_t a1)
{
  v2 = sub_1B92DB510(&qword_1EBACB2A0, type metadata accessor for Searchfoundation_ButtonCardSection);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B92DB078()
{
  sub_1B92DB510(&qword_1EBACB2A0, type metadata accessor for Searchfoundation_ButtonCardSection);

  return sub_1B964C5D0();
}

uint64_t sub_1B92DB0F8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a3(0);
  OUTLINED_FUNCTION_59_1(v4);
  v6 = *(v5 + 32);
  v7 = OUTLINED_FUNCTION_432();
  v8(v7);
  return a2;
}

uint64_t sub_1B92DB154(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a3(0);
  OUTLINED_FUNCTION_59_1(v4);
  v6 = *(v5 + 16);
  v7 = OUTLINED_FUNCTION_432();
  v8(v7);
  return a2;
}

void sub_1B92DB2F8()
{
  sub_1B92DB4AC(319, &qword_1ED9EB330, type metadata accessor for Searchfoundation_Punchout, MEMORY[0x1E69E62F8]);
  if (v0 <= 0x3F)
  {
    sub_1B964C2B0();
    if (v1 <= 0x3F)
    {
      sub_1B92DB4AC(319, &qword_1ED9F9780, type metadata accessor for Searchfoundation_Color, MEMORY[0x1E69E6720]);
      if (v2 <= 0x3F)
      {
        sub_1B92DB4AC(319, &qword_1ED9F2BC0, type metadata accessor for Searchfoundation_RichText, MEMORY[0x1E69E6720]);
        if (v3 <= 0x3F)
        {
          sub_1B92DB4AC(319, &qword_1ED9F9768, type metadata accessor for Searchfoundation_Image, MEMORY[0x1E69E6720]);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_1B92DB4AC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_1B92DB510(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t OUTLINED_FUNCTION_10_32()
{

  return type metadata accessor for Searchfoundation_ButtonCardSection();
}

uint64_t OUTLINED_FUNCTION_28_19()
{

  return sub_1B964C700();
}

uint64_t OUTLINED_FUNCTION_29_25()
{

  return sub_1B964C670();
}

uint64_t OUTLINED_FUNCTION_30_25(uint64_t a1)
{
  *(v1 + 32) = a1;

  return type metadata accessor for Searchfoundation_ButtonCardSection();
}

uint64_t Searchfoundation_Button.image.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8EA8, &unk_1B96B77D0);
  OUTLINED_FUNCTION_183(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_6_34();
  OUTLINED_FUNCTION_15_21(*(v7 + 24));
  v8 = type metadata accessor for Searchfoundation_Image(0);
  v9 = OUTLINED_FUNCTION_493();
  if (__swift_getEnumTagSinglePayload(v9, v10, v8) != 1)
  {
    return sub_1B92DD0FC(v1, a1);
  }

  _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
  v11 = *(v8 + 20);
  if (qword_1EBAB5600 != -1)
  {
    OUTLINED_FUNCTION_150_5();
  }

  *(a1 + v11) = qword_1EBAB5608;
  v12 = OUTLINED_FUNCTION_493();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v12, v13, v8);

  if (EnumTagSinglePayload != 1)
  {
    return sub_1B8D9207C(v1, &qword_1EBAB8EA8, &unk_1B96B77D0);
  }

  return result;
}

uint64_t type metadata accessor for Searchfoundation_Button()
{
  result = qword_1ED9F2EB0;
  if (!qword_1ED9F2EB0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1B92DB75C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8EA8, &unk_1B96B77D0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t Searchfoundation_Button.image.setter()
{
  v2 = *(OUTLINED_FUNCTION_16_26() + 24);
  sub_1B8D9207C(v1 + v2, &qword_1EBAB8EA8, &unk_1B96B77D0);
  sub_1B92DD0FC(v0, v1 + v2);
  type metadata accessor for Searchfoundation_Image(0);
  OUTLINED_FUNCTION_80();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

uint64_t (*Searchfoundation_Button.image.modify(void *a1))()
{
  v3 = __swift_coroFrameAllocStub(0x30uLL);
  *a1 = v3;
  *v3 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8EA8, &unk_1B96B77D0);
  OUTLINED_FUNCTION_183(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v3[1] = v6;
  v7 = type metadata accessor for Searchfoundation_Image(0);
  v3[2] = v7;
  OUTLINED_FUNCTION_59_1(v7);
  v9 = *(v8 + 64);
  v3[3] = __swift_coroFrameAllocStub(v9);
  v10 = __swift_coroFrameAllocStub(v9);
  v3[4] = v10;
  v11 = *(type metadata accessor for Searchfoundation_Button() + 24);
  *(v3 + 10) = v11;
  sub_1B92DB75C(v1 + v11, v6);
  if (OUTLINED_FUNCTION_50_1() == 1)
  {
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    v12 = *(v7 + 20);
    if (qword_1EBAB5600 != -1)
    {
      OUTLINED_FUNCTION_150_5();
    }

    *&v10[v12] = qword_1EBAB5608;
    v13 = OUTLINED_FUNCTION_50_1();

    if (v13 != 1)
    {
      sub_1B8D9207C(v6, &qword_1EBAB8EA8, &unk_1B96B77D0);
    }
  }

  else
  {
    sub_1B92DD0FC(v6, v10);
  }

  return sub_1B92DD49C;
}

uint64_t Searchfoundation_Button.hasImage.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8EA8, &unk_1B96B77D0);
  OUTLINED_FUNCTION_183(v1);
  v3 = *(v2 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v4);
  v5 = OUTLINED_FUNCTION_6_34();
  OUTLINED_FUNCTION_15_21(*(v5 + 24));
  type metadata accessor for Searchfoundation_Image(0);
  v6 = OUTLINED_FUNCTION_493();
  __swift_getEnumTagSinglePayload(v6, v7, v8);
  OUTLINED_FUNCTION_32_12();
  return v0;
}

Swift::Void __swiftcall Searchfoundation_Button.clearImage()()
{
  v1 = type metadata accessor for Searchfoundation_Button();
  sub_1B8D9207C(v0 + *(v1 + 24), &qword_1EBAB8EA8, &unk_1B96B77D0);
  type metadata accessor for Searchfoundation_Image(0);
  OUTLINED_FUNCTION_83();

  __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
}

uint64_t Searchfoundation_Button.selectedImage.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8EA8, &unk_1B96B77D0);
  OUTLINED_FUNCTION_183(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_6_34();
  OUTLINED_FUNCTION_15_21(*(v7 + 28));
  v8 = type metadata accessor for Searchfoundation_Image(0);
  v9 = OUTLINED_FUNCTION_493();
  if (__swift_getEnumTagSinglePayload(v9, v10, v8) != 1)
  {
    return sub_1B92DD0FC(v1, a1);
  }

  _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
  v11 = *(v8 + 20);
  if (qword_1EBAB5600 != -1)
  {
    OUTLINED_FUNCTION_150_5();
  }

  *(a1 + v11) = qword_1EBAB5608;
  v12 = OUTLINED_FUNCTION_493();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v12, v13, v8);

  if (EnumTagSinglePayload != 1)
  {
    return sub_1B8D9207C(v1, &qword_1EBAB8EA8, &unk_1B96B77D0);
  }

  return result;
}

uint64_t sub_1B92DBBC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(char *))
{
  v7 = type metadata accessor for Searchfoundation_Image(0);
  v8 = OUTLINED_FUNCTION_183(v7);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v14 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B92DD160(a1, v12);
  return a5(v12);
}

uint64_t Searchfoundation_Button.selectedImage.setter()
{
  v2 = *(OUTLINED_FUNCTION_16_26() + 28);
  sub_1B8D9207C(v1 + v2, &qword_1EBAB8EA8, &unk_1B96B77D0);
  sub_1B92DD0FC(v0, v1 + v2);
  type metadata accessor for Searchfoundation_Image(0);
  OUTLINED_FUNCTION_80();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

uint64_t (*Searchfoundation_Button.selectedImage.modify(void *a1))()
{
  v3 = __swift_coroFrameAllocStub(0x30uLL);
  *a1 = v3;
  *v3 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8EA8, &unk_1B96B77D0);
  OUTLINED_FUNCTION_183(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v3[1] = v6;
  v7 = type metadata accessor for Searchfoundation_Image(0);
  v3[2] = v7;
  OUTLINED_FUNCTION_59_1(v7);
  v9 = *(v8 + 64);
  v3[3] = __swift_coroFrameAllocStub(v9);
  v10 = __swift_coroFrameAllocStub(v9);
  v3[4] = v10;
  v11 = *(type metadata accessor for Searchfoundation_Button() + 28);
  *(v3 + 10) = v11;
  sub_1B92DB75C(v1 + v11, v6);
  if (OUTLINED_FUNCTION_50_1() == 1)
  {
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    v12 = *(v7 + 20);
    if (qword_1EBAB5600 != -1)
    {
      OUTLINED_FUNCTION_150_5();
    }

    *&v10[v12] = qword_1EBAB5608;
    v13 = OUTLINED_FUNCTION_50_1();

    if (v13 != 1)
    {
      sub_1B8D9207C(v6, &qword_1EBAB8EA8, &unk_1B96B77D0);
    }
  }

  else
  {
    sub_1B92DD0FC(v6, v10);
  }

  return sub_1B92DBE44;
}

void sub_1B92DBE48(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 10);
  v4 = (*a1)[3];
  v5 = (*a1)[4];
  v6 = (*a1)[1];
  v7 = (*a1)[2];
  v8 = **a1;
  if (a2)
  {
    sub_1B92DD160((*a1)[4], v4);
    sub_1B8D9207C(v8 + v3, &qword_1EBAB8EA8, &unk_1B96B77D0);
    sub_1B92DD0FC(v4, v8 + v3);
    OUTLINED_FUNCTION_80();
    __swift_storeEnumTagSinglePayload(v9, v10, v11, v7);
    sub_1B92DD1C4(v5);
  }

  else
  {
    sub_1B8D9207C(v8 + v3, &qword_1EBAB8EA8, &unk_1B96B77D0);
    sub_1B92DD0FC(v5, v8 + v3);
    OUTLINED_FUNCTION_80();
    __swift_storeEnumTagSinglePayload(v12, v13, v14, v7);
  }

  free(v5);
  free(v4);
  free(v6);

  free(v2);
}

uint64_t Searchfoundation_Button.hasSelectedImage.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8EA8, &unk_1B96B77D0);
  OUTLINED_FUNCTION_183(v1);
  v3 = *(v2 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v4);
  v5 = OUTLINED_FUNCTION_6_34();
  OUTLINED_FUNCTION_15_21(*(v5 + 28));
  type metadata accessor for Searchfoundation_Image(0);
  v6 = OUTLINED_FUNCTION_493();
  __swift_getEnumTagSinglePayload(v6, v7, v8);
  OUTLINED_FUNCTION_32_12();
  return v0;
}

Swift::Void __swiftcall Searchfoundation_Button.clearSelectedImage()()
{
  v1 = type metadata accessor for Searchfoundation_Button();
  sub_1B8D9207C(v0 + *(v1 + 28), &qword_1EBAB8EA8, &unk_1B96B77D0);
  type metadata accessor for Searchfoundation_Image(0);
  OUTLINED_FUNCTION_83();

  __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
}

uint64_t Searchfoundation_Button.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Searchfoundation_Button() + 20);
  v4 = sub_1B964C2B0();
  v5 = OUTLINED_FUNCTION_59_1(v4);
  v7 = *(v6 + 16);

  return v7(a1, v1 + v3, v5);
}

uint64_t Searchfoundation_Button.unknownFields.setter()
{
  v2 = *(OUTLINED_FUNCTION_16_26() + 20);
  v3 = sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1(v3);
  v5 = *(v4 + 40);

  return v5(v1 + v2, v0);
}

uint64_t Searchfoundation_Button.init()@<X0>(_BYTE *a1@<X8>)
{
  *a1 = 0;
  v2 = type metadata accessor for Searchfoundation_Button();
  v3 = &a1[v2[5]];
  _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
  v4 = v2[6];
  v5 = type metadata accessor for Searchfoundation_Image(0);
  OUTLINED_FUNCTION_83();
  __swift_storeEnumTagSinglePayload(v6, v7, v8, v5);
  v9 = v2[7];
  OUTLINED_FUNCTION_83();

  return __swift_storeEnumTagSinglePayload(v10, v11, v12, v5);
}

uint64_t sub_1B92DC224()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBACB2B8);
  __swift_project_value_buffer(v0, qword_1EBACB2B8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964EE60;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "image";
  *(v6 + 8) = 5;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "selectedImage";
  *(v10 + 1) = 13;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "isSelected";
  *(v12 + 1) = 10;
  v12[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t static Searchfoundation_Button._protobuf_nameMap.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EBAB7E10 != -1)
  {
    swift_once();
  }

  v2 = sub_1B964C780();
  v3 = __swift_project_value_buffer(v2, qword_1EBACB2B8);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t Searchfoundation_Button.decodeMessage<A>(decoder:)()
{
  while (1)
  {
    result = sub_1B964C3C0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    switch(result)
    {
      case 3:
        sub_1B964C400();
        break;
      case 2:
        OUTLINED_FUNCTION_9();
        sub_1B92DC61C();
        break;
      case 1:
        OUTLINED_FUNCTION_9();
        sub_1B92DC568();
        break;
    }
  }

  return result;
}

uint64_t sub_1B92DC568()
{
  v0 = *(type metadata accessor for Searchfoundation_Button() + 24);
  type metadata accessor for Searchfoundation_Image(0);
  sub_1B92DD454(&qword_1ED9D3080, type metadata accessor for Searchfoundation_Image);
  return sub_1B964C580();
}

uint64_t sub_1B92DC61C()
{
  v0 = *(type metadata accessor for Searchfoundation_Button() + 28);
  type metadata accessor for Searchfoundation_Image(0);
  sub_1B92DD454(&qword_1ED9D3080, type metadata accessor for Searchfoundation_Image);
  return sub_1B964C580();
}

uint64_t Searchfoundation_Button.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  v34 = a3;
  v36 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8EA8, &unk_1B96B77D0);
  v7 = OUTLINED_FUNCTION_183(v6);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_66();
  v12 = v10 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v34 - v14;
  v16 = type metadata accessor for Searchfoundation_Image(0);
  v17 = OUTLINED_FUNCTION_59_1(v16);
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_66();
  v22 = v20 - v21;
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v34 - v24;
  v35 = type metadata accessor for Searchfoundation_Button();
  sub_1B92DB75C(&v5[v35[6]], v15);
  if (__swift_getEnumTagSinglePayload(v15, 1, v16) == 1)
  {
    sub_1B8D9207C(v15, &qword_1EBAB8EA8, &unk_1B96B77D0);
  }

  else
  {
    sub_1B92DD0FC(v15, v25);
    OUTLINED_FUNCTION_5_35();
    sub_1B92DD454(v26, v27);
    sub_1B964C740();
    result = sub_1B92DD1C4(v25);
    if (v4)
    {
      return result;
    }
  }

  sub_1B92DB75C(&v5[v35[7]], v12);
  v29 = OUTLINED_FUNCTION_493();
  if (__swift_getEnumTagSinglePayload(v29, v30, v16) == 1)
  {
    sub_1B8D9207C(v12, &qword_1EBAB8EA8, &unk_1B96B77D0);
  }

  else
  {
    sub_1B92DD0FC(v12, v22);
    OUTLINED_FUNCTION_5_35();
    sub_1B92DD454(v31, v32);
    sub_1B964C740();
    result = sub_1B92DD1C4(v22);
    if (v4)
    {
      return result;
    }
  }

  if (*v5 != 1 || (result = sub_1B964C670(), !v4))
  {
    v33 = &v5[v35[5]];
    return sub_1B964C290();
  }

  return result;
}

uint64_t static Searchfoundation_Button.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v4 = type metadata accessor for Searchfoundation_Image(0);
  v5 = OUTLINED_FUNCTION_59_1(v4);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_66();
  v66 = v8 - v9;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v64 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8EA8, &unk_1B96B77D0);
  v14 = OUTLINED_FUNCTION_183(v13);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_66();
  v67 = v17 - v18;
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v64 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8EB0, &qword_1B964D6B0);
  v23 = OUTLINED_FUNCTION_59_1(v22);
  v25 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_66();
  v28 = v26 - v27;
  MEMORY[0x1EEE9AC00](v29);
  v31 = &v64 - v30;
  v68 = type metadata accessor for Searchfoundation_Button();
  v69 = a1;
  v32 = *(v68 + 24);
  v33 = *(v22 + 48);
  sub_1B92DB75C(&a1[v32], v31);
  sub_1B92DB75C(&a2[v32], &v31[v33]);
  OUTLINED_FUNCTION_90(v31);
  if (v34)
  {
    OUTLINED_FUNCTION_90(&v31[v33]);
    if (v34)
    {
      sub_1B8D9207C(v31, &qword_1EBAB8EA8, &unk_1B96B77D0);
      goto LABEL_14;
    }

    goto LABEL_9;
  }

  sub_1B92DB75C(v31, v21);
  OUTLINED_FUNCTION_90(&v31[v33]);
  if (v34)
  {
    sub_1B92DD1C4(v21);
LABEL_9:
    v35 = &qword_1EBAB8EB0;
    v36 = &qword_1B964D6B0;
LABEL_10:
    v37 = v31;
LABEL_24:
    sub_1B8D9207C(v37, v35, v36);
    goto LABEL_25;
  }

  v65 = a2;
  sub_1B92DD0FC(&v31[v33], v12);
  v38 = *(v4 + 20);
  if (*&v21[v38] != *&v12[v38])
  {
    v39 = *&v21[v38];

    sub_1B94C6890();
    v41 = v40;

    if ((v41 & 1) == 0)
    {
      sub_1B92DD1C4(v12);
      sub_1B92DD1C4(v21);
      v35 = &qword_1EBAB8EA8;
      v36 = &unk_1B96B77D0;
      goto LABEL_10;
    }
  }

  sub_1B964C2B0();
  OUTLINED_FUNCTION_1_69();
  sub_1B92DD454(v42, v43);
  v44 = sub_1B964C850();
  sub_1B92DD1C4(v12);
  sub_1B92DD1C4(v21);
  sub_1B8D9207C(v31, &qword_1EBAB8EA8, &unk_1B96B77D0);
  a2 = v65;
  if ((v44 & 1) == 0)
  {
    goto LABEL_25;
  }

LABEL_14:
  v46 = v68;
  v45 = v69;
  v47 = *(v68 + 28);
  v48 = *(v22 + 48);
  sub_1B92DB75C(&v69[v47], v28);
  sub_1B92DB75C(&a2[v47], v28 + v48);
  OUTLINED_FUNCTION_90(v28);
  if (!v34)
  {
    v49 = v67;
    sub_1B92DB75C(v28, v67);
    OUTLINED_FUNCTION_90(v28 + v48);
    if (!v50)
    {
      v53 = v66;
      sub_1B92DD0FC(v28 + v48, v66);
      v54 = *(v4 + 20);
      if (*(v49 + v54) == *(v53 + v54) || (v55 = *(v49 + v54), , , sub_1B94C6890(), v57 = v56, , , (v57 & 1) != 0))
      {
        sub_1B964C2B0();
        OUTLINED_FUNCTION_1_69();
        sub_1B92DD454(v58, v59);
        v60 = sub_1B964C850();
        sub_1B92DD1C4(v53);
        sub_1B92DD1C4(v49);
        sub_1B8D9207C(v28, &qword_1EBAB8EA8, &unk_1B96B77D0);
        if ((v60 & 1) == 0)
        {
          goto LABEL_25;
        }

        goto LABEL_30;
      }

      sub_1B92DD1C4(v53);
      sub_1B92DD1C4(v49);
      v35 = &qword_1EBAB8EA8;
      v36 = &unk_1B96B77D0;
      goto LABEL_23;
    }

    sub_1B92DD1C4(v49);
LABEL_22:
    v35 = &qword_1EBAB8EB0;
    v36 = &qword_1B964D6B0;
LABEL_23:
    v37 = v28;
    goto LABEL_24;
  }

  OUTLINED_FUNCTION_90(v28 + v48);
  if (!v34)
  {
    goto LABEL_22;
  }

  sub_1B8D9207C(v28, &qword_1EBAB8EA8, &unk_1B96B77D0);
LABEL_30:
  if (*v45 == *a2)
  {
    v61 = *(v46 + 20);
    sub_1B964C2B0();
    OUTLINED_FUNCTION_1_69();
    sub_1B92DD454(v62, v63);
    v51 = sub_1B964C850();
    return v51 & 1;
  }

LABEL_25:
  v51 = 0;
  return v51 & 1;
}

uint64_t Searchfoundation_Button.hashValue.getter()
{
  sub_1B964CA70();
  type metadata accessor for Searchfoundation_Button();
  sub_1B92DD454(&qword_1EBACB2D0, type metadata accessor for Searchfoundation_Button);
  sub_1B964C7E0();
  return sub_1B964CA90();
}

uint64_t sub_1B92DCF8C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B92DD454(&qword_1EBACB2F0, type metadata accessor for Searchfoundation_Button);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B92DD00C(uint64_t a1)
{
  v2 = sub_1B92DD454(&qword_1EBACB2E0, type metadata accessor for Searchfoundation_Button);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B92DD07C()
{
  sub_1B92DD454(&qword_1EBACB2E0, type metadata accessor for Searchfoundation_Button);

  return sub_1B964C5D0();
}

uint64_t sub_1B92DD0FC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Searchfoundation_Image(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B92DD160(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Searchfoundation_Image(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B92DD1C4(uint64_t a1)
{
  v2 = type metadata accessor for Searchfoundation_Image(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1B92DD368()
{
  sub_1B964C2B0();
  if (v0 <= 0x3F)
  {
    sub_1B92DD3FC();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1B92DD3FC()
{
  if (!qword_1ED9F9768)
  {
    type metadata accessor for Searchfoundation_Image(255);
    v0 = sub_1B964C930();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED9F9768);
    }
  }
}

uint64_t sub_1B92DD454(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t OUTLINED_FUNCTION_6_34()
{

  return type metadata accessor for Searchfoundation_Button();
}

uint64_t OUTLINED_FUNCTION_15_21@<X0>(uint64_t a1@<X8>)
{

  return sub_1B92DB75C(v1 + a1, v2);
}

uint64_t OUTLINED_FUNCTION_16_26()
{

  return type metadata accessor for Searchfoundation_Button();
}

uint64_t Searchfoundation_CardSectionType.init(rawValue:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v2 = 1;
  switch(result)
  {
    case 0:
    case 1:
    case 2:
    case 3:
    case 4:
    case 5:
    case 6:
    case 7:
    case 8:
    case 9:
    case 10:
    case 11:
    case 12:
    case 13:
    case 14:
    case 15:
    case 16:
    case 17:
    case 18:
    case 19:
    case 20:
    case 21:
    case 22:
    case 23:
    case 24:
    case 25:
    case 26:
    case 27:
    case 28:
    case 29:
    case 30:
    case 31:
    case 32:
    case 33:
    case 34:
    case 35:
    case 36:
    case 37:
    case 38:
    case 39:
    case 40:
    case 41:
    case 42:
    case 43:
    case 44:
    case 45:
    case 46:
    case 47:
    case 48:
    case 49:
    case 50:
    case 51:
    case 52:
    case 53:
    case 54:
    case 55:
    case 56:
    case 57:
    case 58:
    case 59:
    case 60:
    case 61:
      break;
    case 63:
      result = 62;
      break;
    case 64:
      result = 63;
      break;
    case 200:
      result = 64;
      break;
    case 201:
      result = 65;
      break;
    case 202:
      result = 66;
      break;
    case 203:
      result = 67;
      break;
    case 204:
      result = 68;
      break;
    case 205:
      result = 69;
      break;
    case 206:
      result = 70;
      break;
    case 207:
      result = 71;
      break;
    case 208:
      result = 72;
      break;
    case 209:
      result = 73;
      break;
    case 210:
      result = 74;
      break;
    case 211:
      result = 75;
      break;
    case 212:
      result = 76;
      break;
    case 213:
      result = 77;
      break;
    case 214:
      result = 78;
      break;
    case 215:
      result = 79;
      break;
    case 216:
      result = 80;
      break;
    case 217:
      result = 81;
      break;
    case 218:
      result = 82;
      break;
    case 219:
      result = 83;
      break;
    case 220:
      result = 84;
      break;
    case 221:
      result = 85;
      break;
    case 222:
      result = 86;
      break;
    case 223:
      result = 87;
      break;
    case 224:
      result = 88;
      break;
    case 225:
      result = 89;
      break;
    case 226:
      result = 90;
      break;
    case 227:
      result = 91;
      break;
    case 228:
      result = 92;
      break;
    case 229:
      result = 93;
      break;
    case 230:
      result = 94;
      break;
    case 231:
      result = 95;
      break;
    case 232:
      result = 96;
      break;
    case 233:
      result = 97;
      break;
    case 234:
      result = 98;
      break;
    case 235:
      result = 99;
      break;
    case 236:
      result = 100;
      break;
    case 237:
      result = 101;
      break;
    case 238:
      result = 102;
      break;
    case 239:
      result = 103;
      break;
    case 240:
      result = 104;
      break;
    case 241:
      result = 105;
      break;
    case 242:
      result = 106;
      break;
    case 243:
      result = 107;
      break;
    case 244:
      result = 108;
      break;
    case 245:
      result = 109;
      break;
    case 246:
      result = 110;
      break;
    default:
      v2 = 0;
      break;
  }

  *a2 = result;
  *(a2 + 8) = v2;
  *(a2 + 9) = 0;
  return result;
}

uint64_t Searchfoundation_CardSectionType.rawValue.getter()
{
  result = *v0;
  if (*(v0 + 8) == 1)
  {
    return qword_1B96B9110[result];
  }

  return result;
}

uint64_t sub_1B92DD734@<X0>(uint64_t *a1@<X8>)
{
  result = Searchfoundation_CardSectionType.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1B92DD768(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B92DF6FC();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t static Searchfoundation_CardSectionType.allCases.setter(void *a1)
{
  swift_beginAccess();
  off_1EBACB2F8 = a1;
}

uint64_t sub_1B92DD8CC@<X0>(uint64_t *a1@<X8>)
{
  result = static Searchfoundation_CardSectionType.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1B92DD8F4()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAB4F48);
  __swift_project_value_buffer(v0, qword_1EBAB4F48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v228 = swift_allocObject();
  *(v228 + 16) = xmmword_1B96B8DB0;
  v4 = v228 + v3 + v1[14];
  *(v228 + v3) = 0;
  *v4 = "CardSectionTypeNone";
  *(v4 + 8) = 19;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x1E69AADC8];
  v6 = sub_1B964C750();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v228 + v3 + v2 + v1[14];
  *(v228 + v3 + v2) = 1;
  *v8 = "CardSectionTypeAppLink";
  *(v8 + 8) = 22;
  *(v8 + 16) = 2;
  v7();
  v9 = (v228 + v3 + 2 * v2);
  v10 = v9 + v1[14];
  *v9 = 2;
  *v10 = "CardSectionTypeDescription";
  *(v10 + 1) = 26;
  v10[16] = 2;
  v7();
  v11 = (v228 + v3 + 3 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "CardSectionTypeKeyValueData";
  *(v12 + 1) = 27;
  v12[16] = 2;
  v7();
  v13 = (v228 + v3 + 4 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "CardSectionTypeMap";
  *(v14 + 1) = 18;
  v14[16] = 2;
  v7();
  v15 = (v228 + v3 + 5 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "CardSectionTypeMediaInfo";
  *(v16 + 1) = 24;
  v16[16] = 2;
  v7();
  v17 = (v228 + v3 + 6 * v2);
  v18 = v17 + v1[14];
  *v17 = 6;
  *v18 = "CardSectionTypeMediaPlayer";
  *(v18 + 1) = 26;
  v18[16] = 2;
  v7();
  v19 = (v228 + v3 + 7 * v2);
  v20 = v19 + v1[14];
  *v19 = 7;
  *v20 = "CardSectionTypeNowPlaying";
  *(v20 + 1) = 25;
  v20[16] = 2;
  v7();
  v21 = (v228 + v3 + 8 * v2);
  v22 = v21 + v1[14];
  *v21 = 8;
  *v22 = "CardSectionTypeRichTitle";
  *(v22 + 1) = 24;
  v22[16] = 2;
  v7();
  v23 = (v228 + v3 + 9 * v2);
  v24 = v23 + v1[14];
  *v23 = 9;
  *v24 = "CardSectionTypeRow";
  *(v24 + 1) = 18;
  v24[16] = 2;
  v7();
  v25 = (v228 + v3 + 10 * v2);
  v26 = v25 + v1[14];
  *v25 = 10;
  *v26 = "CardSectionTypeScoreboard";
  *(v26 + 1) = 25;
  v26[16] = 2;
  v7();
  v27 = (v228 + v3 + 11 * v2);
  v28 = v27 + v1[14];
  *v27 = 11;
  *v28 = "CardSectionTypeSocialMediaPost";
  *(v28 + 1) = 30;
  v28[16] = 2;
  v7();
  v29 = (v228 + v3 + 12 * v2);
  v30 = v29 + v1[14];
  *v29 = 12;
  *v30 = "CardSectionTypeStockChart";
  *(v30 + 1) = 25;
  v30[16] = 2;
  v7();
  v31 = (v228 + v3 + 13 * v2);
  v32 = v31 + v1[14];
  *v31 = 13;
  *v32 = "CardSectionTypeTableHeaderRow";
  *(v32 + 1) = 29;
  v32[16] = 2;
  v7();
  v33 = (v228 + v3 + 14 * v2);
  v34 = v33 + v1[14];
  *v33 = 14;
  *v34 = "CardSectionTypeTableRow";
  *(v34 + 1) = 23;
  v34[16] = 2;
  v7();
  v35 = (v228 + v3 + 15 * v2);
  v36 = v35 + v1[14];
  *v35 = 15;
  *v36 = "CardSectionTypeTextColumns";
  *(v36 + 1) = 26;
  v36[16] = 2;
  v7();
  v37 = (v228 + v3 + 16 * v2);
  v38 = v37 + v1[14];
  *v37 = 16;
  *v38 = "CardSectionTypeTitle";
  *(v38 + 1) = 20;
  v38[16] = 2;
  v7();
  v39 = (v228 + v3 + 17 * v2);
  v40 = v39 + v1[14];
  *v39 = 17;
  *v40 = "CardSectionTypeTrackList";
  *(v40 + 1) = 24;
  v40[16] = 2;
  v7();
  v41 = (v228 + v3 + 18 * v2);
  v42 = v41 + v1[14];
  *v41 = 18;
  *v42 = "CardSectionTypeAudioPlayback";
  *(v42 + 1) = 28;
  v42[16] = 2;
  v7();
  v43 = (v228 + v3 + 19 * v2);
  v44 = v43 + v1[14];
  *v43 = 19;
  *v44 = "CardSectionTypeFlight";
  *(v44 + 1) = 21;
  v44[16] = 2;
  v7();
  v45 = (v228 + v3 + 20 * v2);
  v46 = v45 + v1[14];
  *v45 = 20;
  *v46 = "CardSectionTypeActivityIndicator";
  *(v46 + 1) = 32;
  v46[16] = 2;
  v7();
  v47 = (v228 + v3 + 21 * v2);
  v48 = v47 + v1[14];
  *v47 = 21;
  *v48 = "CardSectionTypeWeb";
  *(v48 + 1) = 18;
  v48[16] = 2;
  v7();
  v49 = (v228 + v3 + 22 * v2);
  v50 = v49 + v1[14];
  *v49 = 22;
  *v50 = "CardSectionTypeMessage";
  *(v50 + 1) = 22;
  v50[16] = 2;
  v7();
  v51 = (v228 + v3 + 23 * v2);
  v52 = v51 + v1[14];
  *v51 = 23;
  *v52 = "CardSectionTypeDetailedRow";
  *(v52 + 1) = 26;
  v52[16] = 2;
  v7();
  v53 = (v228 + v3 + 24 * v2);
  v54 = v53 + v1[14];
  *v53 = 24;
  *v54 = "CardSectionTypeImages";
  *(v54 + 1) = 21;
  v54[16] = 2;
  v7();
  v55 = (v228 + v3 + 25 * v2);
  v56 = v55 + v1[14];
  *v55 = 25;
  *v56 = "CardSectionTypeSuggestion";
  *(v56 + 1) = 25;
  v56[16] = 2;
  v7();
  v57 = (v228 + v3 + 26 * v2);
  v58 = v57 + v1[14];
  *v57 = 26;
  *v58 = "CardSectionTypeSelectableGrid";
  *(v58 + 1) = 29;
  v58[16] = 2;
  v7();
  v59 = (v228 + v3 + 27 * v2);
  v60 = v59 + v1[14];
  *v59 = 27;
  *v60 = "CardSectionTypeSectionHeader";
  *(v60 + 1) = 28;
  v60[16] = 2;
  v7();
  v61 = (v228 + v3 + 28 * v2);
  v62 = v61 + v1[14];
  *v61 = 28;
  *v62 = "CardSectionTypeMetaInfo";
  *(v62 + 1) = 23;
  v62[16] = 2;
  v7();
  v63 = (v228 + v3 + 29 * v2);
  v64 = v63 + v1[14];
  *v63 = 29;
  *v64 = "CardSectionTypeWatchList";
  *(v64 + 1) = 24;
  v64[16] = 2;
  v7();
  v65 = (v228 + v3 + 30 * v2);
  v66 = v65 + v1[14];
  *v65 = 30;
  *v66 = "CardSectionTypeMapsDetailedRow";
  *(v66 + 1) = 30;
  v66[16] = 2;
  v7();
  v67 = (v228 + v3 + 31 * v2);
  v68 = v67 + v1[14];
  *v67 = 31;
  *v68 = "CardSectionTypeButton";
  *(v68 + 1) = 21;
  v68[16] = 2;
  v7();
  v69 = (v228 + v3 + 32 * v2);
  v70 = v69 + v1[14];
  *v69 = 32;
  *v70 = "CardSectionTypeHorizontalButtonCard";
  *(v70 + 1) = 35;
  v70[16] = 2;
  v7();
  v71 = (v228 + v3 + 33 * v2);
  v72 = v71 + v1[14];
  *v71 = 33;
  *v72 = "CardSectionTypeVerticalLayout";
  *(v72 + 1) = 29;
  v72[16] = 2;
  v7();
  v73 = (v228 + v3 + 34 * v2);
  v74 = v73 + v1[14];
  *v73 = 34;
  *v74 = "CardSectionTypeProduct";
  *(v74 + 1) = 22;
  v74[16] = 2;
  v7();
  v75 = (v228 + v3 + 35 * v2);
  v76 = v75 + v1[14];
  *v75 = 35;
  *v76 = "CardSectionTypeHorizontalScroll";
  *(v76 + 1) = 31;
  v76[16] = 2;
  v7();
  v77 = (v228 + v3 + 36 * v2);
  v78 = v77 + v1[14];
  *v77 = 36;
  *v78 = "CardSectionTypeMediaRemoteControl";
  *(v78 + 1) = 33;
  v78[16] = 2;
  v7();
  v79 = (v228 + v3 + 37 * v2);
  v80 = v79 + v1[14];
  *v79 = 37;
  *v80 = "CardSectionTypeMapPlace";
  *(v80 + 1) = 23;
  v80[16] = 2;
  v7();
  v81 = (v228 + v3 + 38 * v2);
  v82 = v81 + v1[14];
  *v81 = 38;
  *v82 = "CardSectionTypeCompactRow";
  *(v82 + 1) = 25;
  v82[16] = 2;
  v7();
  v83 = (v228 + v3 + 39 * v2);
  v84 = v83 + v1[14];
  *v83 = 39;
  *v84 = "CardSectionTypeWorldMap";
  *(v84 + 1) = 23;
  v84[16] = 2;
  v7();
  v85 = (v228 + v3 + 40 * v2);
  v86 = v85 + v1[14];
  *v85 = 40;
  *v86 = "CardSectionTypeAttributionFooter";
  *(v86 + 1) = 32;
  v86[16] = 2;
  v7();
  v87 = (v228 + v3 + 41 * v2);
  v88 = v87 + v1[14];
  *v87 = 41;
  *v88 = "CardSectionTypeGrid";
  *(v88 + 1) = 19;
  v88[16] = 2;
  v7();
  v89 = (v228 + v3 + 42 * v2);
  v90 = v89 + v1[14];
  *v89 = 42;
  *v90 = "CardSectionTypePersonHeader";
  *(v90 + 1) = 27;
  v90[16] = 2;
  v7();
  v91 = (v228 + v3 + 43 * v2);
  v92 = v91 + v1[14];
  *v91 = 43;
  *v92 = "CardSectionTypeColorBar";
  *(v92 + 1) = 23;
  v92[16] = 2;
  v7();
  v93 = (v228 + v3 + 44 * v2);
  v94 = v93 + v1[14];
  *v93 = 44;
  *v94 = "CardSectionTypeSplit";
  *(v94 + 1) = 20;
  v94[16] = 2;
  v7();
  v95 = (v228 + v3 + 45 * v2);
  v96 = v95 + v1[14];
  *v95 = 45;
  *v96 = "CardSectionTypeLinkPresentation";
  *(v96 + 1) = 31;
  v96[16] = 2;
  v7();
  v97 = (v228 + v3 + 46 * v2);
  v98 = v97 + v1[14];
  *v97 = 46;
  *v98 = "CardSectionTypeFindMy";
  *(v98 + 1) = 21;
  v98[16] = 2;
  v7();
  v99 = (v228 + v3 + 47 * v2);
  v100 = v99 + v1[14];
  *v99 = 47;
  *v100 = "CardSectionTypeHero";
  *(v100 + 1) = 19;
  v100[16] = 2;
  v7();
  v101 = (v228 + v3 + 48 * v2);
  v102 = v101 + v1[14];
  *v101 = 48;
  *v102 = "CardSectionTypeNews";
  *(v102 + 1) = 19;
  v102[16] = 2;
  v7();
  v103 = (v228 + v3 + 49 * v2);
  v104 = v103 + v1[14];
  *v103 = 49;
  *v104 = "CardSectionTypeMini";
  *(v104 + 1) = 19;
  v104[16] = 2;
  v7();
  v105 = (v228 + v3 + 50 * v2);
  v106 = v105 + v1[14];
  *v105 = 50;
  *v106 = "CardSectionTypeInfo";
  *(v106 + 1) = 19;
  v106[16] = 2;
  v7();
  v107 = (v228 + v3 + 51 * v2);
  v108 = v107 + v1[14];
  *v107 = 51;
  *v108 = "CardSectionTypeCollection";
  *(v108 + 1) = 25;
  v108[16] = 2;
  v7();
  v109 = (v228 + v3 + 52 * v2);
  v110 = v109 + v1[14];
  *v109 = 52;
  *v110 = "CardSectionTypeCombined";
  *(v110 + 1) = 23;
  v110[16] = 2;
  v7();
  v111 = (v228 + v3 + 53 * v2);
  v112 = v111 + v1[14];
  *v111 = 53;
  *v112 = "CardSectionTypeResponseWrapper";
  *(v112 + 1) = 30;
  v112[16] = 2;
  v7();
  v113 = (v228 + v3 + 54 * v2);
  v114 = v113 + v1[14];
  *v113 = 54;
  *v114 = "CardSectionTypeListenTo";
  *(v114 + 1) = 23;
  v114[16] = 2;
  v7();
  v115 = (v228 + v3 + 55 * v2);
  v116 = v115 + v1[14];
  *v115 = 55;
  *v116 = "CardSectionTypeWatchNow";
  *(v116 + 1) = 23;
  v116[16] = 2;
  v7();
  v117 = (v228 + v3 + 56 * v2);
  v118 = v117 + v1[14];
  *v117 = 56;
  *v118 = "CardSectionTypeStrokeAnimation";
  *(v118 + 1) = 30;
  v118[16] = 2;
  v7();
  v119 = (v228 + v3 + 57 * v2);
  v120 = v119 + v1[14];
  *v119 = 57;
  *v120 = "CardSectionTypeButtonList";
  *(v120 + 1) = 25;
  v120[16] = 2;
  v7();
  v121 = (v228 + v3 + 58 * v2);
  v122 = v121 + v1[14];
  *v121 = 58;
  *v122 = "CardSectionTypeCommandRow";
  *(v122 + 1) = 25;
  v122[16] = 2;
  v7();
  v123 = (v228 + v3 + 59 * v2);
  v124 = v123 + v1[14];
  *v123 = 59;
  *v124 = "CardSectionTypeLeadingTrailing";
  *(v124 + 1) = 30;
  v124[16] = 2;
  v7();
  v125 = (v228 + v3 + 60 * v2);
  v126 = v125 + v1[14];
  *v125 = 60;
  *v126 = "CardSectionTypeHeroTitle";
  *(v126 + 1) = 24;
  v126[16] = 2;
  v7();
  v127 = (v228 + v3 + 61 * v2);
  v128 = v127 + v1[14];
  *v127 = 61;
  *v128 = "CardSectionTypeArchiveView";
  *(v128 + 1) = 26;
  v128[16] = 2;
  v7();
  v129 = (v228 + v3 + 62 * v2);
  v130 = v129 + v1[14];
  *v129 = 63;
  *v130 = "CardSectionTypeAppIcon";
  *(v130 + 1) = 22;
  v130[16] = 2;
  v7();
  v131 = (v228 + v3 + 63 * v2);
  v132 = v131 + v1[14];
  *v131 = 64;
  *v132 = "CardSectionTypeLargeTitleDetailedRow";
  *(v132 + 1) = 36;
  v132[16] = 2;
  v7();
  v133 = (v228 + v3 + (v2 << 6));
  v134 = v133 + v1[14];
  *v133 = 200;
  *v134 = "CardSectionTypeRFSummaryItemShortNumber";
  *(v134 + 1) = 39;
  v134[16] = 2;
  v7();
  v135 = (v228 + v3 + 65 * v2);
  v136 = v135 + v1[14];
  *v135 = 201;
  *v136 = "CardSectionTypeRFSummaryItemText";
  *(v136 + 1) = 32;
  v136[16] = 2;
  v7();
  v137 = (v228 + v3 + 66 * v2);
  v138 = v137 + v1[14];
  *v137 = 202;
  *v138 = "CardSectionTypeRFSummaryItemStandard";
  *(v138 + 1) = 36;
  v138[16] = 2;
  v7();
  v139 = (v228 + v3 + 67 * v2);
  v140 = v139 + v1[14];
  *v139 = 203;
  *v140 = "CardSectionTypeRFFactItemShortNumber";
  *(v140 + 1) = 36;
  v140[16] = 2;
  v7();
  v141 = (v228 + v3 + 68 * v2);
  v142 = v141 + v1[14];
  *v141 = 204;
  *v142 = "CardSectionTypeRFFactItemStandard";
  *(v142 + 1) = 33;
  v142[16] = 2;
  v7();
  v143 = (v228 + v3 + 69 * v2);
  v144 = v143 + v1[14];
  *v143 = 205;
  *v144 = "CardSectionTypeRFLongItemStandard";
  *(v144 + 1) = 33;
  v144[16] = 2;
  v7();
  v145 = (v228 + v3 + 70 * v2);
  v146 = v145 + v1[14];
  *v145 = 206;
  *v146 = "CardSectionTypeRFPrimaryHeaderRich";
  *(v146 + 1) = 34;
  v146[16] = 2;
  v7();
  v147 = (v228 + v3 + 71 * v2);
  v148 = v147 + v1[14];
  *v147 = 207;
  *v148 = "CardSectionTypeRFPrimaryHeaderStandard";
  *(v148 + 1) = 38;
  v148[16] = 2;
  v7();
  v149 = (v228 + v3 + 72 * v2);
  v150 = v149 + v1[14];
  *v149 = 208;
  *v150 = "CardSectionTypeRFReferenceFootnote";
  *(v150 + 1) = 34;
  v150[16] = 2;
  v7();
  v151 = (v228 + v3 + 73 * v2);
  v152 = v151 + v1[14];
  *v151 = 209;
  *v152 = "CardSectionTypeRFReferenceRich";
  *(v152 + 1) = 30;
  v152[16] = 2;
  v7();
  v153 = (v228 + v3 + 74 * v2);
  v154 = v153 + v1[14];
  *v153 = 210;
  *v154 = "CardSectionTypeRFSimpleItemRich";
  *(v154 + 1) = 31;
  v154[16] = 2;
  v7();
  v155 = (v228 + v3 + 75 * v2);
  v156 = v155 + v1[14];
  *v155 = 211;
  *v156 = "CardSectionTypeRFSimpleItemStandard";
  *(v156 + 1) = 35;
  v156[16] = 2;
  v7();
  v157 = (v228 + v3 + 76 * v2);
  v158 = v157 + v1[14];
  *v157 = 212;
  *v158 = "CardSectionTypeRFSummaryItemAlignedText";
  *(v158 + 1) = 39;
  v158[16] = 2;
  v7();
  v159 = (v228 + v3 + 77 * v2);
  v160 = v159 + v1[14];
  *v159 = 213;
  *v160 = "CardSectionTypeRFExpandableStandard";
  *(v160 + 1) = 35;
  v160[16] = 2;
  v7();
  v161 = (v228 + v3 + 78 * v2);
  v162 = v161 + v1[14];
  *v161 = 214;
  *v162 = "CardSectionTypeRFFactItemButton";
  *(v162 + 1) = 31;
  v162[16] = 2;
  v7();
  v163 = (v228 + v3 + 79 * v2);
  v164 = v163 + v1[14];
  *v163 = 215;
  *v164 = "CardSectionTypeRFFactItemHeroNumber";
  *(v164 + 1) = 35;
  v164[16] = 2;
  v7();
  v165 = (v228 + v3 + 80 * v2);
  v166 = v165 + v1[14];
  *v165 = 216;
  *v166 = "CardSectionTypeRFPrimaryHeaderMarquee";
  *(v166 + 1) = 37;
  v166[16] = 2;
  v7();
  v167 = (v228 + v3 + 81 * v2);
  v168 = v167 + v1[14];
  *v167 = 217;
  *v168 = "CardSectionTypeRFSummaryItemDetailedText";
  *(v168 + 1) = 40;
  v168[16] = 2;
  v7();
  v169 = (v228 + v3 + 82 * v2);
  v170 = v169 + v1[14];
  *v169 = 218;
  *v170 = "CardSectionTypeRFSimpleItemPlayer";
  *(v170 + 1) = 33;
  v170[16] = 2;
  v7();
  v171 = (v228 + v3 + 83 * v2);
  v172 = v171 + v1[14];
  *v171 = 219;
  *v172 = "CardSectionTypeRFSummaryItemPair";
  *(v172 + 1) = 32;
  v172[16] = 2;
  v7();
  v173 = (v228 + v3 + 84 * v2);
  v174 = v173 + v1[14];
  *v173 = 220;
  *v174 = "CardSectionTypeRFSummaryItemPairNumber";
  *(v174 + 1) = 38;
  v174[16] = 2;
  v7();
  v175 = (v228 + v3 + 85 * v2);
  v176 = v175 + v1[14];
  *v175 = 221;
  *v176 = "CardSectionTypeRFFactItemShortHeroNumber";
  *(v176 + 1) = 40;
  v176[16] = 2;
  v7();
  v177 = (v228 + v3 + 86 * v2);
  v178 = v177 + v1[14];
  *v177 = 222;
  *v178 = "CardSectionTypeRFFactItemDetailedNumber";
  *(v178 + 1) = 39;
  v178[16] = 2;
  v7();
  v179 = (v228 + v3 + 87 * v2);
  v180 = v179 + v1[14];
  *v179 = 223;
  *v180 = "CardSectionTypeRFFactItemHeroButton";
  *(v180 + 1) = 35;
  v180[16] = 2;
  v7();
  v181 = (v228 + v3 + 88 * v2);
  v182 = v181 + v1[14];
  *v181 = 224;
  *v182 = "CardSectionTypeRFFactItemImageRight";
  *(v182 + 1) = 35;
  v182[16] = 2;
  v7();
  v183 = (v228 + v3 + 89 * v2);
  v184 = v183 + v1[14];
  *v183 = 225;
  *v184 = "CardSectionTypeRFSummaryItemSwitchV2";
  *(v184 + 1) = 36;
  v184[16] = 2;
  v7();
  v185 = (v228 + v3 + 90 * v2);
  v186 = v185 + v1[14];
  *v185 = 226;
  *v186 = "CardSectionTypeRFTableHeader";
  *(v186 + 1) = 28;
  v186[16] = 2;
  v7();
  v187 = (v228 + v3 + 91 * v2);
  v188 = v187 + v1[14];
  *v187 = 227;
  *v188 = "CardSectionTypeRFTableRow";
  *(v188 + 1) = 25;
  v188[16] = 2;
  v7();
  v189 = (v228 + v3 + 92 * v2);
  v190 = v189 + v1[14];
  *v189 = 228;
  *v190 = "CardSectionTypeRFSimpleItemVisualElement";
  *(v190 + 1) = 40;
  v190[16] = 2;
  v7();
  v191 = (v228 + v3 + 93 * v2);
  v192 = v191 + v1[14];
  *v191 = 229;
  *v192 = "CardSectionTypeRFSummaryItemPlayer";
  *(v192 + 1) = 34;
  v192[16] = 2;
  v7();
  v193 = (v228 + v3 + 94 * v2);
  v194 = v193 + v1[14];
  *v193 = 230;
  *v194 = "CardSectionTypeRFSummaryItemImageRight";
  *(v194 + 1) = 38;
  v194[16] = 2;
  v7();
  v195 = (v228 + v3 + 95 * v2);
  v196 = v195 + v1[14];
  *v195 = 231;
  *v196 = "CardSectionTypeRFSummaryItemButton";
  *(v196 + 1) = 34;
  v196[16] = 2;
  v7();
  v197 = (v228 + v3 + 96 * v2);
  v198 = v197 + v1[14];
  *v197 = 232;
  *v198 = "CardSectionTypeRFSimpleItemReverseRich";
  *(v198 + 1) = 38;
  v198[16] = 2;
  v7();
  v199 = (v228 + v3 + 97 * v2);
  v200 = v199 + v1[14];
  *v199 = 233;
  *v200 = "CardSectionTypeRFSimpleItemRichSearchResult";
  *(v200 + 1) = 43;
  v200[16] = 2;
  v7();
  v201 = (v228 + v3 + 98 * v2);
  v202 = v201 + v1[14];
  *v201 = 234;
  *v202 = "CardSectionTypeRFPrimaryHeaderStackedImage";
  *(v202 + 1) = 42;
  v202[16] = 2;
  v7();
  v203 = (v228 + v3 + 99 * v2);
  v204 = v203 + v1[14];
  *v203 = 235;
  *v204 = "CardSectionTypeRFReferenceItemLogo";
  *(v204 + 1) = 34;
  v204[16] = 2;
  v7();
  v205 = (v228 + v3 + 100 * v2);
  v206 = v205 + v1[14];
  *v205 = 236;
  *v206 = "CardSectionTypeRFReferenceItemButton";
  *(v206 + 1) = 36;
  v206[16] = 2;
  v7();
  v207 = (v228 + v3 + 101 * v2);
  v208 = v207 + v1[14];
  *v207 = 237;
  *v208 = "CardSectionTypeRFButton";
  *(v208 + 1) = 23;
  v208[16] = 2;
  v7();
  v209 = (v228 + v3 + 102 * v2);
  v210 = v209 + v1[14];
  *v209 = 238;
  *v210 = "CardSectionTypeRFBinaryButton";
  *(v210 + 1) = 29;
  v210[16] = 2;
  v7();
  v211 = (v228 + v3 + 103 * v2);
  v212 = v211 + v1[14];
  *v211 = 239;
  *v212 = "CardSectionTypeRFReferenceCentered";
  *(v212 + 1) = 34;
  v212[16] = 2;
  v7();
  v213 = (v228 + v3 + 104 * v2);
  v214 = v213 + v1[14];
  *v213 = 240;
  *v214 = "CardSectionTypeRFSecondaryHeaderStandard";
  *(v214 + 1) = 40;
  v214[16] = 2;
  v7();
  v215 = (v228 + v3 + 105 * v2);
  v216 = v215 + v1[14];
  *v215 = 241;
  *v216 = "CardSectionTypeRFSecondaryHeaderEmphasized";
  *(v216 + 1) = 42;
  v216[16] = 2;
  v7();
  v217 = (v228 + v3 + 106 * v2);
  v218 = v217 + v1[14];
  *v217 = 242;
  *v218 = "CardSectionTypeRFMap";
  *(v218 + 1) = 20;
  v218[16] = 2;
  v7();
  v219 = (v228 + v3 + 107 * v2);
  v220 = v219 + v1[14];
  *v219 = 243;
  *v220 = "CardSectionTypeRFReferenceStandard";
  *(v220 + 1) = 34;
  v220[16] = 2;
  v7();
  v221 = (v228 + v3 + 108 * v2);
  v222 = v221 + v1[14];
  *v221 = 244;
  *v222 = "CardSectionTypeRFMultiButton";
  *(v222 + 1) = 28;
  v222[16] = 2;
  v7();
  v223 = (v228 + v3 + 109 * v2);
  v224 = v223 + v1[14];
  *v223 = 245;
  *v224 = "CardSectionTypeRFDisambiguationTitle";
  *(v224 + 1) = 36;
  v224[16] = 2;
  v7();
  v225 = (v228 + v3 + 110 * v2);
  v226 = v225 + v1[14];
  *v225 = 246;
  *v226 = "CardSectionTypeRFSummaryItemExpandable";
  *(v226 + 1) = 38;
  v226[16] = 2;
  v7();
  return sub_1B964C760();
}

uint64_t static Searchfoundation_CardSectionType._protobuf_nameMap.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EBAB4F40 != -1)
  {
    swift_once();
  }

  v2 = sub_1B964C780();
  v3 = __swift_project_value_buffer(v2, qword_1EBAB4F48);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

unint64_t sub_1B92DF57C()
{
  result = qword_1ED9D2AF8;
  if (!qword_1ED9D2AF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED9D2AF8);
  }

  return result;
}

unint64_t sub_1B92DF5D4()
{
  result = qword_1ED9D2AE8;
  if (!qword_1ED9D2AE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED9D2AE8);
  }

  return result;
}

unint64_t sub_1B92DF62C()
{
  result = qword_1ED9D2AF0;
  if (!qword_1ED9D2AF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED9D2AF0);
  }

  return result;
}

unint64_t sub_1B92DF684()
{
  result = qword_1EBACB300;
  if (!qword_1EBACB300)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBACB308, &qword_1B96B8EA8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBACB300);
  }

  return result;
}

unint64_t sub_1B92DF6FC()
{
  result = qword_1ED9D2B00;
  if (!qword_1ED9D2B00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED9D2B00);
  }

  return result;
}

uint64_t Searchfoundation_DrillDownMetadata.init()@<X0>(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0xE000000000000000;
  v2 = MEMORY[0x1E69E7CC0];
  a1[2] = MEMORY[0x1E69E7CC0];
  a1[3] = v2;
  a1[4] = 0;
  a1[5] = 0xE000000000000000;
  a1[6] = 0;
  a1[7] = 0xE000000000000000;
  v3 = type metadata accessor for Searchfoundation_DrillDownMetadata(0);
  v4 = v3[9];
  type metadata accessor for Searchfoundation_DrillDownMetadata.OneOf_Metadata(0);
  OUTLINED_FUNCTION_83();
  __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
  v9 = (a1 + v3[10]);
  *v9 = 0;
  v9[1] = 0xE000000000000000;
  v10 = (a1 + v3[11]);
  *v10 = 0;
  v10[1] = 0xE000000000000000;
  v11 = a1 + v3[12];
  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

uint64_t Searchfoundation_CommandButtonItem.init()@<X0>(void *a1@<X8>)
{
  OUTLINED_FUNCTION_118_0(a1);
  *(v1 + 16) = MEMORY[0x1E69E7CC0];
  *(v1 + 24) = 0;
  *(v1 + 32) = 0;
  v3 = type metadata accessor for Searchfoundation_CommandButtonItem(0);
  OUTLINED_FUNCTION_415_0(v3);
  v4 = *(v2 + 36);
  v5 = type metadata accessor for Searchfoundation_Image(0);
  OUTLINED_FUNCTION_696_0(v5);
  v6 = *(v2 + 40);
  type metadata accessor for Searchfoundation_Command(0);
  v7 = OUTLINED_FUNCTION_40_3();

  return __swift_storeEnumTagSinglePayload(v7, v8, v9, v10);
}

uint64_t sub_1B92DF964(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B9463404();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t sub_1B92DFA44@<X0>(uint64_t *a1@<X8>)
{
  result = static Searchfoundation_CardType.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1B92DFA78(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B94633B0();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t sub_1B92DFB58@<X0>(uint64_t *a1@<X8>)
{
  result = static Searchfoundation_CardSource.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1B92DFB8C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B946335C();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t sub_1B92DFC6C@<X0>(uint64_t *a1@<X8>)
{
  result = static Searchfoundation_HierarchicalIncreasedContrastModeType.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1B92DFCB0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B944C528();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t sub_1B92DFD90@<X0>(uint64_t *a1@<X8>)
{
  result = static Searchfoundation_RowStyle.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1B92DFDD4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B944C57C();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t sub_1B92DFEB4@<X0>(uint64_t *a1@<X8>)
{
  result = static Searchfoundation_GridStyle.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1B92DFEF8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B944C5D0();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t sub_1B92DFFD8@<X0>(uint64_t *a1@<X8>)
{
  result = static Searchfoundation_TopicType.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1B92E000C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B944C6CC();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t sub_1B92E00EC@<X0>(uint64_t *a1@<X8>)
{
  result = static Searchfoundation_SiriServiceProvider.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1B92E0120(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B944C678();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t sub_1B92E0200@<X0>(uint64_t *a1@<X8>)
{
  result = static Searchfoundation_QuerySource.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1B92E0234(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B9463308();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t sub_1B92E0314@<X0>(uint64_t *a1@<X8>)
{
  result = static Searchfoundation_EntityType.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1B92E0364(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B944C720();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t sub_1B92E0444@<X0>(uint64_t *a1@<X8>)
{
  result = static Searchfoundation_ProactiveCategory.allCases.getter();
  *a1 = result;
  return result;
}

void Searchfoundation_MediaItemType.init(rawValue:)(uint64_t *a1@<X8>, unint64_t a2@<X0>)
{
  v2 = 21;
  if (a2 != 100)
  {
    v2 = a2;
  }

  if (a2 < 0x15)
  {
    v2 = a2;
  }

  *a1 = v2;
  OUTLINED_FUNCTION_7_3(a1);
}

uint64_t Searchfoundation_MediaItemType.rawValue.getter()
{
  result = *v0;
  if (*(v0 + 8) == 1)
  {
    return qword_1B96CA758[result];
  }

  return result;
}

uint64_t sub_1B92E04C8@<X0>(uint64_t *a1@<X8>)
{
  result = Searchfoundation_MediaItemType.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1B92E04FC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B944C774();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t sub_1B92E05F8@<X0>(uint64_t *a1@<X8>)
{
  result = static Searchfoundation_MediaItemType.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1B92E062C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B94632B4();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t sub_1B92E070C@<X0>(uint64_t *a1@<X8>)
{
  result = static Searchfoundation_PlaybackQueueLocation.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1B92E075C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B944C7C8();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t sub_1B92E083C@<X0>(uint64_t *a1@<X8>)
{
  result = static Searchfoundation_ContactActionType.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1B92E0870(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B944C81C();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t sub_1B92E0950@<X0>(uint64_t *a1@<X8>)
{
  result = static Searchfoundation_ButtonItemStyle.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1B92E0984(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B944C870();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t sub_1B92E0A64@<X0>(uint64_t *a1@<X8>)
{
  result = static Searchfoundation_ButtonItemRole.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1B92E0A98(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B944C8C4();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t sub_1B92E0B78@<X0>(uint64_t *a1@<X8>)
{
  result = static Searchfoundation_ButtonItemRenderingMode.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1B92E0BAC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B944C918();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t sub_1B92E0C8C@<X0>(uint64_t *a1@<X8>)
{
  result = static Searchfoundation_SportsItemType.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1B92E0CC0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B944C9C0();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t sub_1B92E0DA0@<X0>(uint64_t *a1@<X8>)
{
  result = static Searchfoundation_RFMultiButtonLayoutType.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1B92E0DE4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B9463260();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t sub_1B92E0EC4@<X0>(uint64_t *a1@<X8>)
{
  result = static Searchfoundation_ButtonAlignment.allCases.getter();
  *a1 = result;
  return result;
}

void sub_1B92E0F04(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  Searchfoundation_Card.title.setter();
}

uint64_t Searchfoundation_Card.title.modify()
{
  v2 = OUTLINED_FUNCTION_126();
  v3 = __swift_coroFrameAllocStub(v2);
  v4 = OUTLINED_FUNCTION_11_10(v3);
  v5 = type metadata accessor for Searchfoundation_Card(v4);
  OUTLINED_FUNCTION_66_1(v5);
  OUTLINED_FUNCTION_344_0();
  v6 = *(v0 + 24);
  *(v1 + 48) = *(v0 + 16);
  *(v1 + 56) = v6;

  return OUTLINED_FUNCTION_514();
}

void Searchfoundation_Card.type.getter()
{
  OUTLINED_FUNCTION_216_5();
  OUTLINED_FUNCTION_10_4();
  v1 = *(v0 + 40);
  OUTLINED_FUNCTION_66_2(*(v0 + 32));
}

void Searchfoundation_Card.type.setter()
{
  OUTLINED_FUNCTION_193_0();
  v6 = OUTLINED_FUNCTION_275_1(v5);
  v7 = OUTLINED_FUNCTION_933(v6);
  v8 = *(v1 + v4);
  if ((v7 & 1) == 0)
  {
    OUTLINED_FUNCTION_480_1();
    v9 = OUTLINED_FUNCTION_40_0();
    v8 = sub_1B9369C74(v9);
    *(v0 + v4) = v8;
  }

  OUTLINED_FUNCTION_9_3();
  *(v8 + 32) = v2;
  *(v8 + 40) = v3;
  OUTLINED_FUNCTION_192_1();
}

uint64_t Searchfoundation_Card.type.modify()
{
  v2 = OUTLINED_FUNCTION_196_1();
  v3 = __swift_coroFrameAllocStub(v2);
  v4 = OUTLINED_FUNCTION_37_3(v3);
  v5 = type metadata accessor for Searchfoundation_Card(v4);
  OUTLINED_FUNCTION_21_8(v5);
  OUTLINED_FUNCTION_62_0();
  v6 = *(v0 + 40);
  *(v1 + 72) = *(v0 + 32);
  *(v1 + 80) = v6;
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B92E1138()
{
  OUTLINED_FUNCTION_243();
  OUTLINED_FUNCTION_238(v5);
  v7 = OUTLINED_FUNCTION_138_2(v6);
  v8 = *(v4 + v1);
  if ((v7 & 1) == 0)
  {
    v9 = *(v0 + 84);
    v10 = *(v0 + 88);
    OUTLINED_FUNCTION_480_1();
    v11 = OUTLINED_FUNCTION_40_0();
    v12 = sub_1B9369C74(v11);
    OUTLINED_FUNCTION_73_2(v12);
  }

  OUTLINED_FUNCTION_11_4();
  *(v8 + 32) = v2;
  *(v8 + 40) = v3;
  OUTLINED_FUNCTION_242();

  free(v13);
}

uint64_t Searchfoundation_Card.cardSections.getter()
{
  v1 = type metadata accessor for Searchfoundation_Card(0);
  OUTLINED_FUNCTION_402_0(v1);
  OUTLINED_FUNCTION_10_4();
  v2 = *(v0 + 48);
}

uint64_t sub_1B92E1204(uint64_t *a1)
{
  v1 = *a1;

  return Searchfoundation_Card.cardSections.setter();
}

uint64_t Searchfoundation_Card.cardSections.setter()
{
  v3 = OUTLINED_FUNCTION_313();
  v4 = type metadata accessor for Searchfoundation_Card(v3);
  v5 = OUTLINED_FUNCTION_182_0(v4);
  v6 = *(v1 + v2);
  if ((v5 & 1) == 0)
  {
    OUTLINED_FUNCTION_480_1();
    v7 = OUTLINED_FUNCTION_40_0();
    v8 = sub_1B9369C74(v7);
    OUTLINED_FUNCTION_157_2(v8);
  }

  OUTLINED_FUNCTION_9_3();
  v9 = *(v6 + 48);
  *(v6 + 48) = v0;
}

uint64_t Searchfoundation_Card.cardSections.modify()
{
  v2 = OUTLINED_FUNCTION_194_0();
  v3 = __swift_coroFrameAllocStub(v2);
  v4 = OUTLINED_FUNCTION_30(v3);
  v5 = type metadata accessor for Searchfoundation_Card(v4);
  OUTLINED_FUNCTION_53_2(v5);
  OUTLINED_FUNCTION_62_0();
  *(v1 + 48) = *(v0 + 48);

  return OUTLINED_FUNCTION_514();
}

void sub_1B92E1304(uint64_t *a1)
{
  OUTLINED_FUNCTION_238(a1);
  v3 = *(v2 + 48);
  if (v4)
  {
    OUTLINED_FUNCTION_61_1();
    Searchfoundation_Card.cardSections.setter();
    v5 = *(v1 + 48);
  }

  else
  {
    v6 = *(v1 + 64);
    v7 = *(v1 + 56);
    v8 = *(v7 + v6);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *(v7 + v6);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v11 = *(v1 + 64);
      v12 = *(v1 + 56);
      OUTLINED_FUNCTION_480_1();
      v13 = OUTLINED_FUNCTION_40_0();
      v10 = sub_1B9369C74(v13);
      *(v12 + v11) = v10;
    }

    OUTLINED_FUNCTION_59_3();
    v14 = *(v10 + 48);
    *(v10 + 48) = v3;
  }

  free(v1);
}

uint64_t Searchfoundation_Card.intentMessageData.getter()
{
  OUTLINED_FUNCTION_216_5();
  OUTLINED_FUNCTION_10_4();
  v1 = *(v0 + 56);
  v2 = *(v0 + 64);
  v3 = OUTLINED_FUNCTION_432();
  sub_1B8D91FCC(v3, v4);
  return OUTLINED_FUNCTION_432();
}

void Searchfoundation_Card.intentMessageData.setter()
{
  OUTLINED_FUNCTION_193_0();
  v4 = OUTLINED_FUNCTION_11_13();
  v5 = OUTLINED_FUNCTION_933(v4);
  v6 = *(v1 + v3);
  if ((v5 & 1) == 0)
  {
    OUTLINED_FUNCTION_480_1();
    v7 = OUTLINED_FUNCTION_40_0();
    v8 = sub_1B9369C74(v7);
    OUTLINED_FUNCTION_135(v8);
  }

  OUTLINED_FUNCTION_9_3();
  v9 = *(v6 + 56);
  v10 = *(v6 + 64);
  *(v6 + 56) = v2;
  *(v6 + 64) = v0;
  sub_1B8D538A0(v9, v10);
  OUTLINED_FUNCTION_192_1();
}

uint64_t Searchfoundation_Card.intentMessageData.modify()
{
  v2 = OUTLINED_FUNCTION_126();
  v3 = __swift_coroFrameAllocStub(v2);
  v4 = OUTLINED_FUNCTION_11_10(v3);
  v5 = type metadata accessor for Searchfoundation_Card(v4);
  OUTLINED_FUNCTION_66_1(v5);
  OUTLINED_FUNCTION_62_0();
  v6 = *(v0 + 56);
  v7 = *(v0 + 64);
  *(v1 + 48) = v6;
  *(v1 + 56) = v7;
  sub_1B8D91FCC(v6, v7);
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B92E14F4(uint64_t a1)
{
  OUTLINED_FUNCTION_58_0(a1);
  if (v6)
  {
    v7 = *(v1 + 64);
    v8 = OUTLINED_FUNCTION_461();
    sub_1B8D91FCC(v8, v9);
    OUTLINED_FUNCTION_461();
    Searchfoundation_Card.intentMessageData.setter();
    v10 = *(v1 + 48);
    v11 = *(v1 + 56);
  }

  else
  {
    v12 = OUTLINED_FUNCTION_163_1();
    v13 = *(v5 + v2);
    if ((v12 & 1) == 0)
    {
      v14 = *(v1 + 72);
      v15 = *(v1 + 64);
      OUTLINED_FUNCTION_480_1();
      v16 = OUTLINED_FUNCTION_40_0();
      v17 = sub_1B9369C74(v16);
      OUTLINED_FUNCTION_168(v17);
    }

    OUTLINED_FUNCTION_59_3();
    v10 = *(v13 + 56);
    v11 = *(v13 + 64);
    *(v13 + 56) = v4;
    *(v13 + 64) = v3;
  }

  sub_1B8D538A0(v10, v11);

  free(v1);
}

uint64_t Searchfoundation_Card.intentMessageName.getter()
{
  OUTLINED_FUNCTION_216_5();
  OUTLINED_FUNCTION_10_4();
  v1 = *(v0 + 72);
  v2 = *(v0 + 80);

  return OUTLINED_FUNCTION_432();
}

void sub_1B92E15D0(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  Searchfoundation_Card.intentMessageName.setter();
}

void Searchfoundation_Card.intentMessageName.setter()
{
  OUTLINED_FUNCTION_193_0();
  v4 = OUTLINED_FUNCTION_11_13();
  v5 = OUTLINED_FUNCTION_933(v4);
  v6 = *(v1 + v3);
  if ((v5 & 1) == 0)
  {
    OUTLINED_FUNCTION_480_1();
    v7 = OUTLINED_FUNCTION_40_0();
    v8 = sub_1B9369C74(v7);
    OUTLINED_FUNCTION_135(v8);
  }

  OUTLINED_FUNCTION_9_3();
  v9 = *(v6 + 80);
  *(v6 + 72) = v2;
  *(v6 + 80) = v0;

  OUTLINED_FUNCTION_192_1();
}

uint64_t Searchfoundation_Card.intentMessageName.modify()
{
  v2 = OUTLINED_FUNCTION_126();
  v3 = __swift_coroFrameAllocStub(v2);
  v4 = OUTLINED_FUNCTION_11_10(v3);
  v5 = type metadata accessor for Searchfoundation_Card(v4);
  OUTLINED_FUNCTION_66_1(v5);
  OUTLINED_FUNCTION_62_0();
  v6 = *(v0 + 80);
  *(v1 + 48) = *(v0 + 72);
  *(v1 + 56) = v6;

  return OUTLINED_FUNCTION_514();
}

void sub_1B92E16DC(uint64_t a1)
{
  OUTLINED_FUNCTION_58_0(a1);
  if (v6)
  {
    OUTLINED_FUNCTION_191();
    OUTLINED_FUNCTION_461();
    Searchfoundation_Card.intentMessageName.setter();
    v7 = *(v1 + 56);
  }

  else
  {
    v8 = OUTLINED_FUNCTION_163_1();
    v9 = *(v5 + v2);
    if ((v8 & 1) == 0)
    {
      v10 = *(v1 + 72);
      v11 = *(v1 + 64);
      OUTLINED_FUNCTION_480_1();
      v12 = OUTLINED_FUNCTION_40_0();
      v13 = sub_1B9369C74(v12);
      OUTLINED_FUNCTION_168(v13);
    }

    OUTLINED_FUNCTION_59_3();
    v14 = *(v9 + 80);
    *(v9 + 72) = v4;
    *(v9 + 80) = v3;
  }

  free(v1);
}

uint64_t Searchfoundation_Card.intentResponseMessageData.getter()
{
  OUTLINED_FUNCTION_216_5();
  OUTLINED_FUNCTION_10_4();
  v1 = *(v0 + 88);
  v2 = *(v0 + 96);
  v3 = OUTLINED_FUNCTION_432();
  sub_1B8D91FCC(v3, v4);
  return OUTLINED_FUNCTION_432();
}

void Searchfoundation_Card.intentResponseMessageData.setter()
{
  OUTLINED_FUNCTION_193_0();
  v4 = OUTLINED_FUNCTION_11_13();
  v5 = OUTLINED_FUNCTION_933(v4);
  v6 = *(v1 + v3);
  if ((v5 & 1) == 0)
  {
    OUTLINED_FUNCTION_480_1();
    v7 = OUTLINED_FUNCTION_40_0();
    v8 = sub_1B9369C74(v7);
    OUTLINED_FUNCTION_135(v8);
  }

  OUTLINED_FUNCTION_9_3();
  v9 = *(v6 + 88);
  v10 = *(v6 + 96);
  *(v6 + 88) = v2;
  *(v6 + 96) = v0;
  sub_1B8D538A0(v9, v10);
  OUTLINED_FUNCTION_192_1();
}

uint64_t Searchfoundation_Card.intentResponseMessageData.modify()
{
  v2 = OUTLINED_FUNCTION_126();
  v3 = __swift_coroFrameAllocStub(v2);
  v4 = OUTLINED_FUNCTION_11_10(v3);
  v5 = type metadata accessor for Searchfoundation_Card(v4);
  OUTLINED_FUNCTION_66_1(v5);
  OUTLINED_FUNCTION_62_0();
  v6 = *(v0 + 88);
  v7 = *(v0 + 96);
  *(v1 + 48) = v6;
  *(v1 + 56) = v7;
  sub_1B8D91FCC(v6, v7);
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B92E18BC(uint64_t a1)
{
  OUTLINED_FUNCTION_58_0(a1);
  if (v6)
  {
    v7 = *(v1 + 64);
    v8 = OUTLINED_FUNCTION_461();
    sub_1B8D91FCC(v8, v9);
    OUTLINED_FUNCTION_461();
    Searchfoundation_Card.intentResponseMessageData.setter();
    v10 = *(v1 + 48);
    v11 = *(v1 + 56);
  }

  else
  {
    v12 = OUTLINED_FUNCTION_163_1();
    v13 = *(v5 + v2);
    if ((v12 & 1) == 0)
    {
      v14 = *(v1 + 72);
      v15 = *(v1 + 64);
      OUTLINED_FUNCTION_480_1();
      v16 = OUTLINED_FUNCTION_40_0();
      v17 = sub_1B9369C74(v16);
      OUTLINED_FUNCTION_168(v17);
    }

    OUTLINED_FUNCTION_59_3();
    v10 = *(v13 + 88);
    v11 = *(v13 + 96);
    *(v13 + 88) = v4;
    *(v13 + 96) = v3;
  }

  sub_1B8D538A0(v10, v11);

  free(v1);
}

uint64_t Searchfoundation_Card.intentResponseMessageName.getter()
{
  OUTLINED_FUNCTION_216_5();
  OUTLINED_FUNCTION_10_4();
  v1 = *(v0 + 104);
  v2 = *(v0 + 112);

  return OUTLINED_FUNCTION_432();
}

void sub_1B92E1998(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  Searchfoundation_Card.intentResponseMessageName.setter();
}

void Searchfoundation_Card.intentResponseMessageName.setter()
{
  OUTLINED_FUNCTION_193_0();
  v4 = OUTLINED_FUNCTION_11_13();
  v5 = OUTLINED_FUNCTION_933(v4);
  v6 = *(v1 + v3);
  if ((v5 & 1) == 0)
  {
    OUTLINED_FUNCTION_480_1();
    v7 = OUTLINED_FUNCTION_40_0();
    v8 = sub_1B9369C74(v7);
    OUTLINED_FUNCTION_135(v8);
  }

  OUTLINED_FUNCTION_9_3();
  v9 = *(v6 + 112);
  *(v6 + 104) = v2;
  *(v6 + 112) = v0;

  OUTLINED_FUNCTION_192_1();
}

uint64_t Searchfoundation_Card.intentResponseMessageName.modify()
{
  v2 = OUTLINED_FUNCTION_126();
  v3 = __swift_coroFrameAllocStub(v2);
  v4 = OUTLINED_FUNCTION_11_10(v3);
  v5 = type metadata accessor for Searchfoundation_Card(v4);
  OUTLINED_FUNCTION_66_1(v5);
  OUTLINED_FUNCTION_62_0();
  v6 = *(v0 + 112);
  *(v1 + 48) = *(v0 + 104);
  *(v1 + 56) = v6;

  return OUTLINED_FUNCTION_514();
}

void sub_1B92E1AA4(uint64_t a1)
{
  OUTLINED_FUNCTION_58_0(a1);
  if (v6)
  {
    OUTLINED_FUNCTION_191();
    OUTLINED_FUNCTION_461();
    Searchfoundation_Card.intentResponseMessageName.setter();
    v7 = *(v1 + 56);
  }

  else
  {
    v8 = OUTLINED_FUNCTION_163_1();
    v9 = *(v5 + v2);
    if ((v8 & 1) == 0)
    {
      v10 = *(v1 + 72);
      v11 = *(v1 + 64);
      OUTLINED_FUNCTION_480_1();
      v12 = OUTLINED_FUNCTION_40_0();
      v13 = sub_1B9369C74(v12);
      OUTLINED_FUNCTION_168(v13);
    }

    OUTLINED_FUNCTION_59_3();
    v14 = *(v9 + 112);
    *(v9 + 104) = v4;
    *(v9 + 112) = v3;
  }

  free(v1);
}

uint64_t Searchfoundation_Card.dismissalCommands.getter()
{
  v1 = type metadata accessor for Searchfoundation_Card(0);
  OUTLINED_FUNCTION_402_0(v1);
  OUTLINED_FUNCTION_10_4();
  v2 = *(v0 + 120);
}

uint64_t sub_1B92E1B78(uint64_t *a1)
{
  v1 = *a1;

  return Searchfoundation_Card.dismissalCommands.setter();
}

uint64_t Searchfoundation_Card.dismissalCommands.setter()
{
  v3 = OUTLINED_FUNCTION_313();
  v4 = type metadata accessor for Searchfoundation_Card(v3);
  v5 = OUTLINED_FUNCTION_182_0(v4);
  v6 = *(v1 + v2);
  if ((v5 & 1) == 0)
  {
    OUTLINED_FUNCTION_480_1();
    v7 = OUTLINED_FUNCTION_40_0();
    v8 = sub_1B9369C74(v7);
    OUTLINED_FUNCTION_157_2(v8);
  }

  OUTLINED_FUNCTION_9_3();
  v9 = *(v6 + 120);
  *(v6 + 120) = v0;
}

uint64_t Searchfoundation_Card.dismissalCommands.modify()
{
  v2 = OUTLINED_FUNCTION_194_0();
  v3 = __swift_coroFrameAllocStub(v2);
  v4 = OUTLINED_FUNCTION_30(v3);
  v5 = type metadata accessor for Searchfoundation_Card(v4);
  OUTLINED_FUNCTION_53_2(v5);
  OUTLINED_FUNCTION_62_0();
  *(v1 + 48) = *(v0 + 120);

  return OUTLINED_FUNCTION_514();
}

void sub_1B92E1C78(uint64_t *a1)
{
  OUTLINED_FUNCTION_238(a1);
  v3 = *(v2 + 48);
  if (v4)
  {
    OUTLINED_FUNCTION_61_1();
    Searchfoundation_Card.dismissalCommands.setter();
    v5 = *(v1 + 48);
  }

  else
  {
    v6 = *(v1 + 64);
    v7 = *(v1 + 56);
    v8 = *(v7 + v6);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *(v7 + v6);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v11 = *(v1 + 64);
      v12 = *(v1 + 56);
      OUTLINED_FUNCTION_480_1();
      v13 = OUTLINED_FUNCTION_40_0();
      v10 = sub_1B9369C74(v13);
      *(v12 + v11) = v10;
    }

    OUTLINED_FUNCTION_59_3();
    v14 = *(v10 + 120);
    *(v10 + 120) = v3;
  }

  free(v1);
}

uint64_t Searchfoundation_Card.cardID.getter()
{
  OUTLINED_FUNCTION_216_5();
  OUTLINED_FUNCTION_10_4();
  v1 = *(v0 + 128);
  v2 = *(v0 + 136);

  return OUTLINED_FUNCTION_432();
}

void sub_1B92E1D5C(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  Searchfoundation_Card.cardID.setter();
}

void Searchfoundation_Card.cardID.setter()
{
  OUTLINED_FUNCTION_193_0();
  v4 = OUTLINED_FUNCTION_11_13();
  v5 = OUTLINED_FUNCTION_933(v4);
  v6 = *(v1 + v3);
  if ((v5 & 1) == 0)
  {
    OUTLINED_FUNCTION_480_1();
    v7 = OUTLINED_FUNCTION_40_0();
    v8 = sub_1B9369C74(v7);
    OUTLINED_FUNCTION_135(v8);
  }

  OUTLINED_FUNCTION_9_3();
  v9 = *(v6 + 136);
  *(v6 + 128) = v2;
  *(v6 + 136) = v0;

  OUTLINED_FUNCTION_192_1();
}

uint64_t Searchfoundation_Card.cardID.modify()
{
  v2 = OUTLINED_FUNCTION_126();
  v3 = __swift_coroFrameAllocStub(v2);
  v4 = OUTLINED_FUNCTION_11_10(v3);
  v5 = type metadata accessor for Searchfoundation_Card(v4);
  OUTLINED_FUNCTION_66_1(v5);
  OUTLINED_FUNCTION_62_0();
  v6 = *(v0 + 136);
  *(v1 + 48) = *(v0 + 128);
  *(v1 + 56) = v6;

  return OUTLINED_FUNCTION_514();
}

void sub_1B92E1E68(uint64_t a1)
{
  OUTLINED_FUNCTION_58_0(a1);
  if (v6)
  {
    OUTLINED_FUNCTION_191();
    OUTLINED_FUNCTION_461();
    Searchfoundation_Card.cardID.setter();
    v7 = *(v1 + 56);
  }

  else
  {
    v8 = OUTLINED_FUNCTION_163_1();
    v9 = *(v5 + v2);
    if ((v8 & 1) == 0)
    {
      v10 = *(v1 + 72);
      v11 = *(v1 + 64);
      OUTLINED_FUNCTION_480_1();
      v12 = OUTLINED_FUNCTION_40_0();
      v13 = sub_1B9369C74(v12);
      OUTLINED_FUNCTION_168(v13);
    }

    OUTLINED_FUNCTION_59_3();
    v14 = *(v9 + 136);
    *(v9 + 128) = v4;
    *(v9 + 136) = v3;
  }

  free(v1);
}

uint64_t Searchfoundation_Card.contextReferenceIdentifier.getter()
{
  OUTLINED_FUNCTION_216_5();
  OUTLINED_FUNCTION_10_4();
  v1 = *(v0 + 144);
  v2 = *(v0 + 152);

  return OUTLINED_FUNCTION_432();
}

void sub_1B92E1F3C(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  Searchfoundation_Card.contextReferenceIdentifier.setter();
}

void Searchfoundation_Card.contextReferenceIdentifier.setter()
{
  OUTLINED_FUNCTION_193_0();
  v4 = OUTLINED_FUNCTION_11_13();
  v5 = OUTLINED_FUNCTION_933(v4);
  v6 = *(v1 + v3);
  if ((v5 & 1) == 0)
  {
    OUTLINED_FUNCTION_480_1();
    v7 = OUTLINED_FUNCTION_40_0();
    v8 = sub_1B9369C74(v7);
    OUTLINED_FUNCTION_135(v8);
  }

  OUTLINED_FUNCTION_9_3();
  v9 = *(v6 + 152);
  *(v6 + 144) = v2;
  *(v6 + 152) = v0;

  OUTLINED_FUNCTION_192_1();
}

uint64_t Searchfoundation_Card.contextReferenceIdentifier.modify()
{
  v2 = OUTLINED_FUNCTION_126();
  v3 = __swift_coroFrameAllocStub(v2);
  v4 = OUTLINED_FUNCTION_11_10(v3);
  v5 = type metadata accessor for Searchfoundation_Card(v4);
  OUTLINED_FUNCTION_66_1(v5);
  OUTLINED_FUNCTION_62_0();
  v6 = *(v0 + 152);
  *(v1 + 48) = *(v0 + 144);
  *(v1 + 56) = v6;

  return OUTLINED_FUNCTION_514();
}

void sub_1B92E2048(uint64_t a1)
{
  OUTLINED_FUNCTION_58_0(a1);
  if (v6)
  {
    OUTLINED_FUNCTION_191();
    OUTLINED_FUNCTION_461();
    Searchfoundation_Card.contextReferenceIdentifier.setter();
    v7 = *(v1 + 56);
  }

  else
  {
    v8 = OUTLINED_FUNCTION_163_1();
    v9 = *(v5 + v2);
    if ((v8 & 1) == 0)
    {
      v10 = *(v1 + 72);
      v11 = *(v1 + 64);
      OUTLINED_FUNCTION_480_1();
      v12 = OUTLINED_FUNCTION_40_0();
      v13 = sub_1B9369C74(v12);
      OUTLINED_FUNCTION_168(v13);
    }

    OUTLINED_FUNCTION_59_3();
    v14 = *(v9 + 152);
    *(v9 + 144) = v4;
    *(v9 + 152) = v3;
  }

  free(v1);
}

uint64_t Searchfoundation_Card.urlValue.getter()
{
  v1 = OUTLINED_FUNCTION_236();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_183(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_22_3();
  OUTLINED_FUNCTION_462_1(v7);
  OUTLINED_FUNCTION_101_0();
  OUTLINED_FUNCTION_39();
  v8 = type metadata accessor for Searchfoundation_URL();
  OUTLINED_FUNCTION_29_14(v8);
  if (v9)
  {
    OUTLINED_FUNCTION_132_2();
    OUTLINED_FUNCTION_520_1();
    result = OUTLINED_FUNCTION_9_2();
    if (!v9)
    {
      return sub_1B8D9207C(v0, &qword_1EBAB8E20, &unk_1B964D620);
    }
  }

  else
  {
    OUTLINED_FUNCTION_9_30();
    OUTLINED_FUNCTION_182();
    return sub_1B944B02C();
  }

  return result;
}

uint64_t Searchfoundation_Card.urlValue.setter()
{
  OUTLINED_FUNCTION_183_0();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8E20, &unk_1B964D620);
  OUTLINED_FUNCTION_183(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_31_2();
  v7 = OUTLINED_FUNCTION_933(v6);
  v8 = *(v0 + v1);
  if ((v7 & 1) == 0)
  {
    OUTLINED_FUNCTION_480_1();
    v9 = OUTLINED_FUNCTION_40_0();
    v10 = sub_1B9369C74(v9);
    OUTLINED_FUNCTION_135(v10);
  }

  OUTLINED_FUNCTION_9_30();
  OUTLINED_FUNCTION_294();
  sub_1B944B02C();
  type metadata accessor for Searchfoundation_URL();
  v11 = OUTLINED_FUNCTION_53_0();
  __swift_storeEnumTagSinglePayload(v11, v12, v13, v14);
  OUTLINED_FUNCTION_73_0();
  OUTLINED_FUNCTION_122_0();
  sub_1B8DAA170();
  return swift_endAccess();
}

void Searchfoundation_Card.urlValue.modify()
{
  OUTLINED_FUNCTION_284();
  v2 = OUTLINED_FUNCTION_185_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_66_0(v3);
  v4 = OUTLINED_FUNCTION_491();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_183(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  OUTLINED_FUNCTION_71(v8);
  v9 = type metadata accessor for Searchfoundation_URL();
  OUTLINED_FUNCTION_135_0(v9);
  v11 = __swift_coroFrameAllocStub(*(v10 + 64));
  v12 = OUTLINED_FUNCTION_187(v11);
  *(v1 + 48) = __swift_coroFrameAllocStub(v12);
  OUTLINED_FUNCTION_216_5();
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_55_2();
  sub_1B8D92024();
  OUTLINED_FUNCTION_17_2();
  if (v13)
  {
    OUTLINED_FUNCTION_110_4();
    OUTLINED_FUNCTION_282_2();
    OUTLINED_FUNCTION_17_2();
    if (!v13)
    {
      sub_1B8D9207C(v0, &qword_1EBAB8E20, &unk_1B964D620);
    }
  }

  else
  {
    OUTLINED_FUNCTION_9_30();
    OUTLINED_FUNCTION_246();
    sub_1B944B02C();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_283();
}

uint64_t Searchfoundation_Card.hasURLValue.getter()
{
  v0 = OUTLINED_FUNCTION_514();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_183(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_22_3();
  OUTLINED_FUNCTION_462_1(v6);
  OUTLINED_FUNCTION_284_0();
  OUTLINED_FUNCTION_238_2();
  v7 = type metadata accessor for Searchfoundation_URL();
  OUTLINED_FUNCTION_11(v7);
  return OUTLINED_FUNCTION_466_0();
}

Swift::Void __swiftcall Searchfoundation_Card.clearURLValue()()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8E20, &unk_1B964D620);
  OUTLINED_FUNCTION_183(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_31_2();
  v7 = type metadata accessor for Searchfoundation_Card(v6);
  v8 = OUTLINED_FUNCTION_182_0(v7);
  v9 = *(v0 + v1);
  if ((v8 & 1) == 0)
  {
    OUTLINED_FUNCTION_480_1();
    v10 = OUTLINED_FUNCTION_40_0();
    v11 = sub_1B9369C74(v10);
    OUTLINED_FUNCTION_157_2(v11);
  }

  v12 = type metadata accessor for Searchfoundation_URL();
  OUTLINED_FUNCTION_274_1(v12);
  OUTLINED_FUNCTION_290_0();
  OUTLINED_FUNCTION_122_0();
  sub_1B8DAA170();
  swift_endAccess();
}

uint64_t Searchfoundation_Card.source.modify()
{
  v0 = OUTLINED_FUNCTION_196_1();
  v1 = __swift_coroFrameAllocStub(v0);
  v2 = OUTLINED_FUNCTION_37_3(v1);
  v3 = type metadata accessor for Searchfoundation_Card(v2);
  OUTLINED_FUNCTION_264_1(v3);
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_117_0();
  return OUTLINED_FUNCTION_105_0();
}

uint64_t Searchfoundation_Card.entityIdentifier.modify()
{
  v2 = OUTLINED_FUNCTION_126();
  v3 = __swift_coroFrameAllocStub(v2);
  v4 = OUTLINED_FUNCTION_11_10(v3);
  v5 = type metadata accessor for Searchfoundation_Card(v4);
  OUTLINED_FUNCTION_254_1(v5);
  OUTLINED_FUNCTION_41();
  v6 = *v0;
  v7 = v0[1];
  *(v1 + 48) = *v0;
  *(v1 + 56) = v7;
  sub_1B8D91FCC(v6, v7);
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B92E27BC(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  Searchfoundation_Card.resultIdentifier.setter();
}

uint64_t Searchfoundation_Card.resultIdentifier.modify()
{
  v0 = OUTLINED_FUNCTION_126();
  v1 = __swift_coroFrameAllocStub(v0);
  v2 = OUTLINED_FUNCTION_11_10(v1);
  v3 = type metadata accessor for Searchfoundation_Card(v2);
  OUTLINED_FUNCTION_254_1(v3);
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_130_0();

  return OUTLINED_FUNCTION_514();
}

uint64_t Searchfoundation_Card.queryID.modify()
{
  v0 = OUTLINED_FUNCTION_196_1();
  v1 = __swift_coroFrameAllocStub(v0);
  v2 = OUTLINED_FUNCTION_138_3(v1);
  v3 = type metadata accessor for Searchfoundation_Card(v2);
  OUTLINED_FUNCTION_225_2(v3);
  OUTLINED_FUNCTION_68_0();
  OUTLINED_FUNCTION_838();
  return OUTLINED_FUNCTION_105_0();
}

uint64_t sub_1B92E2A18(uint64_t a1, void *a2)
{
  v3 = OUTLINED_FUNCTION_178_1();
  v5 = v4(v3);
  OUTLINED_FUNCTION_1372(v5);
  v7 = (v6 + *a2);
  OUTLINED_FUNCTION_6_2();
  v9 = *v7;
  v8 = v7[1];

  return OUTLINED_FUNCTION_288();
}

void sub_1B92E2A6C(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  Searchfoundation_Card.fbr.setter();
}

void sub_1B92E2AF4()
{
  OUTLINED_FUNCTION_184_0();
  v6 = v5;
  OUTLINED_FUNCTION_1362();
  v7 = v1;
  v8 = OUTLINED_FUNCTION_112();
  v10 = *(v9(v8) + 20);
  v11 = *(v1 + v10);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v13 = *(v1 + v10);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v14 = v4(0);
    OUTLINED_FUNCTION_57_0(v14);
    swift_allocObject();
    v15 = OUTLINED_FUNCTION_40_0();
    v13 = v3(v15);
    *(v7 + v10) = v13;
  }

  v16 = (v13 + *v6);
  OUTLINED_FUNCTION_211_0();
  v17 = v16[1];
  *v16 = v2;
  v16[1] = v0;

  OUTLINED_FUNCTION_183_2();
}

uint64_t Searchfoundation_Card.fbr.modify()
{
  v0 = OUTLINED_FUNCTION_126();
  v1 = __swift_coroFrameAllocStub(v0);
  v2 = OUTLINED_FUNCTION_11_10(v1);
  v3 = type metadata accessor for Searchfoundation_Card(v2);
  OUTLINED_FUNCTION_254_1(v3);
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_130_0();

  return OUTLINED_FUNCTION_514();
}

uint64_t Searchfoundation_Card.flexibleSectionOrder.modify()
{
  v0 = OUTLINED_FUNCTION_18_3();
  v1 = __swift_coroFrameAllocStub(v0);
  v2 = OUTLINED_FUNCTION_6_11(v1);
  v3 = type metadata accessor for Searchfoundation_Card(v2);
  OUTLINED_FUNCTION_124_0(v3);
  OUTLINED_FUNCTION_68_0();
  OUTLINED_FUNCTION_51();
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B92E2D64(uint64_t *a1)
{
  v1 = *a1;

  Searchfoundation_Card.entityProtobufMessages.setter();
}

uint64_t Searchfoundation_Card.entityProtobufMessages.modify()
{
  v0 = OUTLINED_FUNCTION_194_0();
  v1 = __swift_coroFrameAllocStub(v0);
  v2 = OUTLINED_FUNCTION_30(v1);
  v3 = type metadata accessor for Searchfoundation_Card(v2);
  OUTLINED_FUNCTION_53_2(v3);
  OUTLINED_FUNCTION_68_0();
  OUTLINED_FUNCTION_195_0();

  return OUTLINED_FUNCTION_514();
}

uint64_t Searchfoundation_Card.titleImage.getter@<X0>(int a1@<W8>)
{
  v3 = OUTLINED_FUNCTION_236();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v8);
  v9 = OUTLINED_FUNCTION_22_3();
  OUTLINED_FUNCTION_462_1(v9);
  OUTLINED_FUNCTION_101_0();
  OUTLINED_FUNCTION_39();
  v10 = type metadata accessor for Searchfoundation_Image(0);
  OUTLINED_FUNCTION_29_14(v10);
  if (v11)
  {
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    if (qword_1EBAB5600 != -1)
    {
      OUTLINED_FUNCTION_150_5();
    }

    result = OUTLINED_FUNCTION_59_0();
    if (a1 != 1)
    {
      return sub_1B8D9207C(v1, &qword_1EBAB8EA8, &unk_1B96B77D0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_4_47();
    OUTLINED_FUNCTION_182();
    return sub_1B944B02C();
  }

  return result;
}

uint64_t sub_1B92E2F90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t (*a7)(uint64_t))
{
  v9 = OUTLINED_FUNCTION_139_1();
  v11 = v10(v9);
  OUTLINED_FUNCTION_183(v11);
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_79();
  OUTLINED_FUNCTION_177_1();
  sub_1B944B080();
  return a7(v7);
}

uint64_t Searchfoundation_Card.titleImage.setter()
{
  OUTLINED_FUNCTION_183_0();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8EA8, &unk_1B96B77D0);
  OUTLINED_FUNCTION_183(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_31_2();
  v7 = OUTLINED_FUNCTION_933(v6);
  v8 = *(v0 + v1);
  if ((v7 & 1) == 0)
  {
    OUTLINED_FUNCTION_480_1();
    v9 = OUTLINED_FUNCTION_40_0();
    v10 = sub_1B9369C74(v9);
    OUTLINED_FUNCTION_135(v10);
  }

  OUTLINED_FUNCTION_4_47();
  OUTLINED_FUNCTION_294();
  sub_1B944B02C();
  type metadata accessor for Searchfoundation_Image(0);
  v11 = OUTLINED_FUNCTION_53_0();
  __swift_storeEnumTagSinglePayload(v11, v12, v13, v14);
  OUTLINED_FUNCTION_73_0();
  OUTLINED_FUNCTION_122_0();
  sub_1B8DAA170();
  return swift_endAccess();
}

void Searchfoundation_Card.titleImage.modify()
{
  OUTLINED_FUNCTION_284();
  v3 = OUTLINED_FUNCTION_185_0();
  v4 = __swift_coroFrameAllocStub(v3);
  OUTLINED_FUNCTION_66_0(v4);
  v5 = OUTLINED_FUNCTION_491();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(v5, v6);
  OUTLINED_FUNCTION_183(v7);
  v9 = __swift_coroFrameAllocStub(*(v8 + 64));
  v10 = OUTLINED_FUNCTION_71(v9);
  v11 = type metadata accessor for Searchfoundation_Image(v10);
  OUTLINED_FUNCTION_135_0(v11);
  v13 = __swift_coroFrameAllocStub(*(v12 + 64));
  v14 = OUTLINED_FUNCTION_187(v13);
  *(v2 + 48) = __swift_coroFrameAllocStub(v14);
  OUTLINED_FUNCTION_216_5();
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_55_2();
  sub_1B8D92024();
  OUTLINED_FUNCTION_17_2();
  if (v15)
  {
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    v16 = *(v0 + 20);
    if (qword_1EBAB5600 != -1)
    {
      OUTLINED_FUNCTION_150_5();
    }

    OUTLINED_FUNCTION_57_2();
    if (v0 != 1)
    {
      sub_1B8D9207C(v1, &qword_1EBAB8EA8, &unk_1B96B77D0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_4_47();
    OUTLINED_FUNCTION_246();
    sub_1B944B02C();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_283();
}

void sub_1B92E327C()
{
  OUTLINED_FUNCTION_243();
  v2 = v1;
  v3 = *(*v0 + 40);
  v4 = *(*v0 + 48);
  v5 = *(*v0 + 24);
  v6 = *(*v0 + 32);
  if (v7)
  {
    OUTLINED_FUNCTION_186();
    sub_1B944B080();
    v2(v3);
    OUTLINED_FUNCTION_690();
    sub_1B944B0D4();
  }

  else
  {
    v1(*(*v0 + 48));
  }

  free(v4);
  free(v3);
  free(v6);
  OUTLINED_FUNCTION_242();

  free(v8);
}

uint64_t Searchfoundation_Card.hasTitleImage.getter()
{
  v0 = OUTLINED_FUNCTION_514();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_183(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_22_3();
  OUTLINED_FUNCTION_462_1(v6);
  OUTLINED_FUNCTION_284_0();
  OUTLINED_FUNCTION_238_2();
  v7 = type metadata accessor for Searchfoundation_Image(0);
  OUTLINED_FUNCTION_11(v7);
  return OUTLINED_FUNCTION_466_0();
}

Swift::Void __swiftcall Searchfoundation_Card.clearTitleImage()()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8EA8, &unk_1B96B77D0);
  OUTLINED_FUNCTION_183(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_31_2();
  v7 = type metadata accessor for Searchfoundation_Card(v6);
  v8 = OUTLINED_FUNCTION_182_0(v7);
  v9 = *(v0 + v1);
  if ((v8 & 1) == 0)
  {
    OUTLINED_FUNCTION_480_1();
    v10 = OUTLINED_FUNCTION_40_0();
    v11 = sub_1B9369C74(v10);
    OUTLINED_FUNCTION_157_2(v11);
  }

  v12 = type metadata accessor for Searchfoundation_Image(0);
  OUTLINED_FUNCTION_274_1(v12);
  OUTLINED_FUNCTION_290_0();
  OUTLINED_FUNCTION_122_0();
  sub_1B8DAA170();
  swift_endAccess();
}

uint64_t Searchfoundation_Card.backgroundColor.getter@<X0>(int a1@<W8>)
{
  v3 = OUTLINED_FUNCTION_236();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v8);
  v9 = OUTLINED_FUNCTION_22_3();
  OUTLINED_FUNCTION_462_1(v9);
  OUTLINED_FUNCTION_101_0();
  OUTLINED_FUNCTION_39();
  v10 = type metadata accessor for Searchfoundation_Color(0);
  OUTLINED_FUNCTION_29_14(v10);
  if (v11)
  {
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    if (qword_1ED9CD1C0 != -1)
    {
      OUTLINED_FUNCTION_4_45();
    }

    result = OUTLINED_FUNCTION_59_0();
    if (a1 != 1)
    {
      return sub_1B8D9207C(v1, &qword_1EBACB050, &unk_1B96B7BD0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_5_36();
    OUTLINED_FUNCTION_182();
    return sub_1B944B02C();
  }

  return result;
}

uint64_t Searchfoundation_Card.backgroundColor.setter()
{
  OUTLINED_FUNCTION_183_0();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACB050, &unk_1B96B7BD0);
  OUTLINED_FUNCTION_183(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_31_2();
  v7 = OUTLINED_FUNCTION_933(v6);
  v8 = *(v0 + v1);
  if ((v7 & 1) == 0)
  {
    OUTLINED_FUNCTION_480_1();
    v9 = OUTLINED_FUNCTION_40_0();
    v10 = sub_1B9369C74(v9);
    OUTLINED_FUNCTION_135(v10);
  }

  OUTLINED_FUNCTION_5_36();
  OUTLINED_FUNCTION_294();
  sub_1B944B02C();
  type metadata accessor for Searchfoundation_Color(0);
  v11 = OUTLINED_FUNCTION_53_0();
  __swift_storeEnumTagSinglePayload(v11, v12, v13, v14);
  OUTLINED_FUNCTION_73_0();
  OUTLINED_FUNCTION_122_0();
  sub_1B8DAA170();
  return swift_endAccess();
}

void Searchfoundation_Card.backgroundColor.modify()
{
  OUTLINED_FUNCTION_284();
  v3 = OUTLINED_FUNCTION_185_0();
  v4 = __swift_coroFrameAllocStub(v3);
  OUTLINED_FUNCTION_66_0(v4);
  v5 = OUTLINED_FUNCTION_491();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(v5, v6);
  OUTLINED_FUNCTION_183(v7);
  v9 = __swift_coroFrameAllocStub(*(v8 + 64));
  v10 = OUTLINED_FUNCTION_71(v9);
  v11 = type metadata accessor for Searchfoundation_Color(v10);
  OUTLINED_FUNCTION_135_0(v11);
  v13 = __swift_coroFrameAllocStub(*(v12 + 64));
  v14 = OUTLINED_FUNCTION_187(v13);
  *(v2 + 48) = __swift_coroFrameAllocStub(v14);
  OUTLINED_FUNCTION_216_5();
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_55_2();
  sub_1B8D92024();
  OUTLINED_FUNCTION_17_2();
  if (v15)
  {
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    v16 = *(v0 + 20);
    if (qword_1ED9CD1C0 != -1)
    {
      OUTLINED_FUNCTION_4_45();
    }

    OUTLINED_FUNCTION_57_2();
    if (v0 != 1)
    {
      sub_1B8D9207C(v1, &qword_1EBACB050, &unk_1B96B7BD0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_5_36();
    OUTLINED_FUNCTION_246();
    sub_1B944B02C();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_283();
}

uint64_t Searchfoundation_Card.hasBackgroundColor.getter()
{
  v0 = OUTLINED_FUNCTION_514();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_183(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_22_3();
  OUTLINED_FUNCTION_462_1(v6);
  OUTLINED_FUNCTION_284_0();
  OUTLINED_FUNCTION_238_2();
  v7 = type metadata accessor for Searchfoundation_Color(0);
  OUTLINED_FUNCTION_11(v7);
  return OUTLINED_FUNCTION_466_0();
}

Swift::Void __swiftcall Searchfoundation_Card.clearBackgroundColor()()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACB050, &unk_1B96B7BD0);
  OUTLINED_FUNCTION_183(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_31_2();
  v7 = type metadata accessor for Searchfoundation_Card(v6);
  v8 = OUTLINED_FUNCTION_182_0(v7);
  v9 = *(v0 + v1);
  if ((v8 & 1) == 0)
  {
    OUTLINED_FUNCTION_480_1();
    v10 = OUTLINED_FUNCTION_40_0();
    v11 = sub_1B9369C74(v10);
    OUTLINED_FUNCTION_157_2(v11);
  }

  v12 = type metadata accessor for Searchfoundation_Color(0);
  OUTLINED_FUNCTION_274_1(v12);
  OUTLINED_FUNCTION_290_0();
  OUTLINED_FUNCTION_122_0();
  sub_1B8DAA170();
  swift_endAccess();
}

uint64_t Searchfoundation_Card.metadata.setter()
{
  OUTLINED_FUNCTION_183_0();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC3480, &unk_1B9685AF8);
  OUTLINED_FUNCTION_183(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_31_2();
  v7 = OUTLINED_FUNCTION_933(v6);
  v8 = *(v0 + v1);
  if ((v7 & 1) == 0)
  {
    OUTLINED_FUNCTION_480_1();
    v9 = OUTLINED_FUNCTION_40_0();
    v10 = sub_1B9369C74(v9);
    OUTLINED_FUNCTION_135(v10);
  }

  OUTLINED_FUNCTION_63_8();
  OUTLINED_FUNCTION_294();
  sub_1B944B02C();
  type metadata accessor for Searchfoundation_DrillDownMetadata(0);
  v11 = OUTLINED_FUNCTION_53_0();
  __swift_storeEnumTagSinglePayload(v11, v12, v13, v14);
  OUTLINED_FUNCTION_73_0();
  OUTLINED_FUNCTION_122_0();
  sub_1B8DAA170();
  return swift_endAccess();
}

void Searchfoundation_Card.metadata.modify()
{
  OUTLINED_FUNCTION_284();
  v3 = OUTLINED_FUNCTION_185_0();
  v4 = __swift_coroFrameAllocStub(v3);
  OUTLINED_FUNCTION_66_0(v4);
  v5 = OUTLINED_FUNCTION_491();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(v5, v6);
  OUTLINED_FUNCTION_183(v7);
  v9 = __swift_coroFrameAllocStub(*(v8 + 64));
  v10 = OUTLINED_FUNCTION_71(v9);
  v11 = type metadata accessor for Searchfoundation_DrillDownMetadata(v10);
  OUTLINED_FUNCTION_135_0(v11);
  v13 = __swift_coroFrameAllocStub(*(v12 + 64));
  v14 = OUTLINED_FUNCTION_187(v13);
  v15 = __swift_coroFrameAllocStub(v14);
  *(v2 + 48) = v15;
  OUTLINED_FUNCTION_216_5();
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_55_2();
  sub_1B8D92024();
  OUTLINED_FUNCTION_17_2();
  if (v16)
  {
    OUTLINED_FUNCTION_1360();
    v17 = MEMORY[0x1E69E7CC0];
    v15[2] = MEMORY[0x1E69E7CC0];
    v15[3] = v17;
    v15[4] = 0;
    v15[5] = v0;
    v15[6] = 0;
    v15[7] = v0;
    v18 = OUTLINED_FUNCTION_1180();
    type metadata accessor for Searchfoundation_DrillDownMetadata.OneOf_Metadata(v18);
    v19 = OUTLINED_FUNCTION_267_1();
    __swift_storeEnumTagSinglePayload(v19, v20, v21, v22);
    OUTLINED_FUNCTION_655_1();
    OUTLINED_FUNCTION_17_2();
    if (!v16)
    {
      sub_1B8D9207C(v1, &qword_1EBAC3480, &unk_1B9685AF8);
    }
  }

  else
  {
    OUTLINED_FUNCTION_63_8();
    OUTLINED_FUNCTION_246();
    sub_1B944B02C();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_283();
}

uint64_t Searchfoundation_Card.hasMetadata.getter()
{
  v0 = OUTLINED_FUNCTION_514();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_183(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_22_3();
  OUTLINED_FUNCTION_462_1(v6);
  OUTLINED_FUNCTION_284_0();
  OUTLINED_FUNCTION_238_2();
  v7 = type metadata accessor for Searchfoundation_DrillDownMetadata(0);
  OUTLINED_FUNCTION_11(v7);
  return OUTLINED_FUNCTION_466_0();
}

Swift::Void __swiftcall Searchfoundation_Card.clearMetadata()()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC3480, &unk_1B9685AF8);
  OUTLINED_FUNCTION_183(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_31_2();
  v7 = type metadata accessor for Searchfoundation_Card(v6);
  v8 = OUTLINED_FUNCTION_182_0(v7);
  v9 = *(v0 + v1);
  if ((v8 & 1) == 0)
  {
    OUTLINED_FUNCTION_480_1();
    v10 = OUTLINED_FUNCTION_40_0();
    v11 = sub_1B9369C74(v10);
    OUTLINED_FUNCTION_157_2(v11);
  }

  v12 = type metadata accessor for Searchfoundation_DrillDownMetadata(0);
  OUTLINED_FUNCTION_274_1(v12);
  OUTLINED_FUNCTION_290_0();
  OUTLINED_FUNCTION_122_0();
  sub_1B8DAA170();
  swift_endAccess();
}

uint64_t Searchfoundation_Card.drilldownMetadata.setter()
{
  OUTLINED_FUNCTION_183_0();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC3480, &unk_1B9685AF8);
  OUTLINED_FUNCTION_183(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_31_2();
  v7 = OUTLINED_FUNCTION_933(v6);
  v8 = *(v0 + v1);
  if ((v7 & 1) == 0)
  {
    OUTLINED_FUNCTION_480_1();
    v9 = OUTLINED_FUNCTION_40_0();
    v10 = sub_1B9369C74(v9);
    OUTLINED_FUNCTION_135(v10);
  }

  OUTLINED_FUNCTION_63_8();
  OUTLINED_FUNCTION_294();
  sub_1B944B02C();
  type metadata accessor for Searchfoundation_DrillDownMetadata(0);
  v11 = OUTLINED_FUNCTION_53_0();
  __swift_storeEnumTagSinglePayload(v11, v12, v13, v14);
  OUTLINED_FUNCTION_73_0();
  OUTLINED_FUNCTION_122_0();
  sub_1B8DAA170();
  return swift_endAccess();
}

void Searchfoundation_Card.drilldownMetadata.modify()
{
  OUTLINED_FUNCTION_284();
  v3 = OUTLINED_FUNCTION_185_0();
  v4 = __swift_coroFrameAllocStub(v3);
  OUTLINED_FUNCTION_66_0(v4);
  v5 = OUTLINED_FUNCTION_491();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(v5, v6);
  OUTLINED_FUNCTION_183(v7);
  v9 = __swift_coroFrameAllocStub(*(v8 + 64));
  v10 = OUTLINED_FUNCTION_71(v9);
  v11 = type metadata accessor for Searchfoundation_DrillDownMetadata(v10);
  OUTLINED_FUNCTION_135_0(v11);
  v13 = __swift_coroFrameAllocStub(*(v12 + 64));
  v14 = OUTLINED_FUNCTION_187(v13);
  v15 = __swift_coroFrameAllocStub(v14);
  *(v2 + 48) = v15;
  OUTLINED_FUNCTION_216_5();
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_55_2();
  sub_1B8D92024();
  OUTLINED_FUNCTION_17_2();
  if (v16)
  {
    OUTLINED_FUNCTION_1360();
    v17 = MEMORY[0x1E69E7CC0];
    v15[2] = MEMORY[0x1E69E7CC0];
    v15[3] = v17;
    v15[4] = 0;
    v15[5] = v0;
    v15[6] = 0;
    v15[7] = v0;
    v18 = OUTLINED_FUNCTION_1180();
    type metadata accessor for Searchfoundation_DrillDownMetadata.OneOf_Metadata(v18);
    v19 = OUTLINED_FUNCTION_267_1();
    __swift_storeEnumTagSinglePayload(v19, v20, v21, v22);
    OUTLINED_FUNCTION_655_1();
    OUTLINED_FUNCTION_17_2();
    if (!v16)
    {
      sub_1B8D9207C(v1, &qword_1EBAC3480, &unk_1B9685AF8);
    }
  }

  else
  {
    OUTLINED_FUNCTION_63_8();
    OUTLINED_FUNCTION_246();
    sub_1B944B02C();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_283();
}

uint64_t Searchfoundation_Card.hasDrilldownMetadata.getter()
{
  v0 = OUTLINED_FUNCTION_514();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_183(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_22_3();
  OUTLINED_FUNCTION_462_1(v6);
  OUTLINED_FUNCTION_284_0();
  OUTLINED_FUNCTION_238_2();
  v7 = type metadata accessor for Searchfoundation_DrillDownMetadata(0);
  OUTLINED_FUNCTION_11(v7);
  return OUTLINED_FUNCTION_466_0();
}

Swift::Void __swiftcall Searchfoundation_Card.clearDrilldownMetadata()()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC3480, &unk_1B9685AF8);
  OUTLINED_FUNCTION_183(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_31_2();
  v7 = type metadata accessor for Searchfoundation_Card(v6);
  v8 = OUTLINED_FUNCTION_182_0(v7);
  v9 = *(v0 + v1);
  if ((v8 & 1) == 0)
  {
    OUTLINED_FUNCTION_480_1();
    v10 = OUTLINED_FUNCTION_40_0();
    v11 = sub_1B9369C74(v10);
    OUTLINED_FUNCTION_157_2(v11);
  }

  v12 = type metadata accessor for Searchfoundation_DrillDownMetadata(0);
  OUTLINED_FUNCTION_274_1(v12);
  OUTLINED_FUNCTION_290_0();
  OUTLINED_FUNCTION_122_0();
  sub_1B8DAA170();
  swift_endAccess();
}

uint64_t Searchfoundation_Card.backgroundImage.getter@<X0>(int a1@<W8>)
{
  v3 = OUTLINED_FUNCTION_236();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v8);
  v9 = OUTLINED_FUNCTION_22_3();
  OUTLINED_FUNCTION_462_1(v9);
  OUTLINED_FUNCTION_101_0();
  OUTLINED_FUNCTION_39();
  v10 = type metadata accessor for Searchfoundation_Image(0);
  OUTLINED_FUNCTION_29_14(v10);
  if (v11)
  {
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    if (qword_1EBAB5600 != -1)
    {
      OUTLINED_FUNCTION_150_5();
    }

    result = OUTLINED_FUNCTION_59_0();
    if (a1 != 1)
    {
      return sub_1B8D9207C(v1, &qword_1EBAB8EA8, &unk_1B96B77D0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_4_47();
    OUTLINED_FUNCTION_182();
    return sub_1B944B02C();
  }

  return result;
}

uint64_t Searchfoundation_Card.backgroundImage.setter()
{
  OUTLINED_FUNCTION_183_0();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8EA8, &unk_1B96B77D0);
  OUTLINED_FUNCTION_183(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_31_2();
  v7 = OUTLINED_FUNCTION_933(v6);
  v8 = *(v0 + v1);
  if ((v7 & 1) == 0)
  {
    OUTLINED_FUNCTION_480_1();
    v9 = OUTLINED_FUNCTION_40_0();
    v10 = sub_1B9369C74(v9);
    OUTLINED_FUNCTION_135(v10);
  }

  OUTLINED_FUNCTION_4_47();
  OUTLINED_FUNCTION_294();
  sub_1B944B02C();
  type metadata accessor for Searchfoundation_Image(0);
  v11 = OUTLINED_FUNCTION_53_0();
  __swift_storeEnumTagSinglePayload(v11, v12, v13, v14);
  OUTLINED_FUNCTION_73_0();
  OUTLINED_FUNCTION_122_0();
  sub_1B8DAA170();
  return swift_endAccess();
}

void Searchfoundation_Card.backgroundImage.modify()
{
  OUTLINED_FUNCTION_284();
  v3 = OUTLINED_FUNCTION_185_0();
  v4 = __swift_coroFrameAllocStub(v3);
  OUTLINED_FUNCTION_66_0(v4);
  v5 = OUTLINED_FUNCTION_491();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(v5, v6);
  OUTLINED_FUNCTION_183(v7);
  v9 = __swift_coroFrameAllocStub(*(v8 + 64));
  v10 = OUTLINED_FUNCTION_71(v9);
  v11 = type metadata accessor for Searchfoundation_Image(v10);
  OUTLINED_FUNCTION_135_0(v11);
  v13 = __swift_coroFrameAllocStub(*(v12 + 64));
  v14 = OUTLINED_FUNCTION_187(v13);
  *(v2 + 48) = __swift_coroFrameAllocStub(v14);
  OUTLINED_FUNCTION_216_5();
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_55_2();
  sub_1B8D92024();
  OUTLINED_FUNCTION_17_2();
  if (v15)
  {
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    v16 = *(v0 + 20);
    if (qword_1EBAB5600 != -1)
    {
      OUTLINED_FUNCTION_150_5();
    }

    OUTLINED_FUNCTION_57_2();
    if (v0 != 1)
    {
      sub_1B8D9207C(v1, &qword_1EBAB8EA8, &unk_1B96B77D0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_4_47();
    OUTLINED_FUNCTION_246();
    sub_1B944B02C();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_283();
}

uint64_t Searchfoundation_Card.hasBackgroundImage.getter()
{
  v0 = OUTLINED_FUNCTION_514();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_183(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_22_3();
  OUTLINED_FUNCTION_462_1(v6);
  OUTLINED_FUNCTION_284_0();
  OUTLINED_FUNCTION_238_2();
  v7 = type metadata accessor for Searchfoundation_Image(0);
  OUTLINED_FUNCTION_11(v7);
  return OUTLINED_FUNCTION_466_0();
}

Swift::Void __swiftcall Searchfoundation_Card.clearBackgroundImage()()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8EA8, &unk_1B96B77D0);
  OUTLINED_FUNCTION_183(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_31_2();
  v7 = type metadata accessor for Searchfoundation_Card(v6);
  v8 = OUTLINED_FUNCTION_182_0(v7);
  v9 = *(v0 + v1);
  if ((v8 & 1) == 0)
  {
    OUTLINED_FUNCTION_480_1();
    v10 = OUTLINED_FUNCTION_40_0();
    v11 = sub_1B9369C74(v10);
    OUTLINED_FUNCTION_157_2(v11);
  }

  v12 = type metadata accessor for Searchfoundation_Image(0);
  OUTLINED_FUNCTION_274_1(v12);
  OUTLINED_FUNCTION_290_0();
  OUTLINED_FUNCTION_122_0();
  sub_1B8DAA170();
  swift_endAccess();
}

uint64_t Searchfoundation_CardMetadata.queryToSearchAcrossAllDomains.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);

  return OUTLINED_FUNCTION_432();
}

uint64_t Searchfoundation_CardMetadata.queryToSearchAcrossAllDomains.setter()
{
  OUTLINED_FUNCTION_16();
  v3 = *(v1 + 16);

  *(v1 + 8) = v2;
  *(v1 + 16) = v0;
  return result;
}

uint64_t Searchfoundation_CardMetadata.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  v1 = *(type metadata accessor for Searchfoundation_CardMetadata(v0) + 24);
  return OUTLINED_FUNCTION_25();
}

uint64_t Searchfoundation_CardMetadata.init()@<X0>(_BYTE *a1@<X8>)
{
  *a1 = 0;
  OUTLINED_FUNCTION_1377();
  v1 = type metadata accessor for Searchfoundation_CardMetadata(0);
  return OUTLINED_FUNCTION_279(v1);
}

uint64_t Searchfoundation_CardSearchMetadata.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  v1 = *(type metadata accessor for Searchfoundation_CardSearchMetadata(v0) + 32);
  return OUTLINED_FUNCTION_25();
}

uint64_t Searchfoundation_CardSearchMetadata.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  OUTLINED_FUNCTION_1377();
  *(a1 + 24) = 0;
  *(a1 + 32) = v2;
  *(a1 + 40) = 0;
  v3 = type metadata accessor for Searchfoundation_CardSearchMetadata(0);
  return OUTLINED_FUNCTION_690_0(v3);
}

uint64_t sub_1B92E48A4()
{
  v0 = OUTLINED_FUNCTION_338_0();
  v2 = *(v1(v0) + 32);
  v3 = sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1(v3);
  v5 = *(v4 + 16);
  v6 = OUTLINED_FUNCTION_18_1();

  return v7(v6);
}

uint64_t sub_1B92E4928()
{
  v0 = OUTLINED_FUNCTION_313();
  v2 = *(v1(v0) + 32);
  v3 = sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1(v3);
  v5 = *(v4 + 40);
  v6 = OUTLINED_FUNCTION_209();

  return v7(v6);
}

uint64_t Searchfoundation_EntitySearchMetadata.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  v1 = *(type metadata accessor for Searchfoundation_EntitySearchMetadata(v0) + 32);
  return OUTLINED_FUNCTION_25();
}

uint64_t Searchfoundation_DrillDownMetadata.cardDomains.setter(uint64_t a1)
{
  v3 = *(v1 + 24);

  *(v1 + 24) = a1;
  return result;
}

uint64_t Searchfoundation_DrillDownMetadata.metadata.getter()
{
  v0 = OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_1230(v0);
  return sub_1B8D92024();
}

uint64_t Searchfoundation_DrillDownMetadata.metadata.setter()
{
  v0 = OUTLINED_FUNCTION_313();
  OUTLINED_FUNCTION_1230(v0);
  return sub_1B8DAA170();
}

uint64_t Searchfoundation_DrillDownMetadata.metadata.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  OUTLINED_FUNCTION_1230(v0);
  return OUTLINED_FUNCTION_25();
}

uint64_t Searchfoundation_DrillDownMetadata.cardOnlyMetadata.getter@<X0>(_BYTE *a1@<X8>)
{
  v3 = OUTLINED_FUNCTION_236();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v8);
  v9 = OUTLINED_FUNCTION_22_3();
  OUTLINED_FUNCTION_1230(v9);
  OUTLINED_FUNCTION_100_0();
  v10 = type metadata accessor for Searchfoundation_DrillDownMetadata.OneOf_Metadata(0);
  OUTLINED_FUNCTION_29_14(v10);
  if (v11)
  {
    sub_1B8D9207C(v1, &qword_1EBACC1B8, &qword_1B96B94C0);
LABEL_6:
    *a1 = 0;
    OUTLINED_FUNCTION_1377();
    v13 = type metadata accessor for Searchfoundation_CardMetadata(0);
    return OUTLINED_FUNCTION_279(v13);
  }

  OUTLINED_FUNCTION_461();
  if (swift_getEnumCaseMultiPayload())
  {
    OUTLINED_FUNCTION_36_9();
    sub_1B944B0D4();
    goto LABEL_6;
  }

  OUTLINED_FUNCTION_219_4();
  return sub_1B944B02C();
}

void Searchfoundation_DrillDownMetadata.cardOnlyMetadata.modify()
{
  OUTLINED_FUNCTION_243();
  v2 = OUTLINED_FUNCTION_212();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_86(v3);
  v4 = OUTLINED_FUNCTION_686();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_183(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_85(v8);
  v10 = type metadata accessor for Searchfoundation_CardMetadata(v9);
  OUTLINED_FUNCTION_126_1(v10);
  v12 = *(v11 + 64);
  v13 = __swift_coroFrameAllocStub(v12);
  v14 = OUTLINED_FUNCTION_1176(v13);
  v15 = __swift_coroFrameAllocStub(v14);
  v16 = OUTLINED_FUNCTION_770(v15);
  OUTLINED_FUNCTION_1230(v16);
  OUTLINED_FUNCTION_64_0(v17);
  *(v1 + 32) = type metadata accessor for Searchfoundation_DrillDownMetadata.OneOf_Metadata(0);
  OUTLINED_FUNCTION_75_9();
  if (v18)
  {
    sub_1B8D9207C(v0, &qword_1EBACC1B8, &qword_1B96B94C0);
  }

  else
  {
    OUTLINED_FUNCTION_128();
    if (!swift_getEnumCaseMultiPayload())
    {
      OUTLINED_FUNCTION_249_4();
      sub_1B944B02C();
      goto LABEL_7;
    }

    OUTLINED_FUNCTION_36_9();
    sub_1B944B0D4();
  }

  *v12 = 0;
  *(v12 + 8) = 0;
  *(v12 + 16) = 0xE000000000000000;
  OUTLINED_FUNCTION_1201();
LABEL_7:
  OUTLINED_FUNCTION_46_1();
  OUTLINED_FUNCTION_242();
}

uint64_t Searchfoundation_DrillDownMetadata.entitySearchOnlyMetadata.getter()
{
  v1 = OUTLINED_FUNCTION_236();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_183(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_22_3();
  OUTLINED_FUNCTION_1230(v7);
  OUTLINED_FUNCTION_100_0();
  v8 = type metadata accessor for Searchfoundation_DrillDownMetadata.OneOf_Metadata(0);
  OUTLINED_FUNCTION_29_14(v8);
  if (v9)
  {
    sub_1B8D9207C(v0, &qword_1EBACC1B8, &qword_1B96B94C0);
  }

  else
  {
    OUTLINED_FUNCTION_461();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 1)
    {
      OUTLINED_FUNCTION_148_4();
      OUTLINED_FUNCTION_182();
      return sub_1B944B02C();
    }

    OUTLINED_FUNCTION_36_9();
    sub_1B944B0D4();
  }

  OUTLINED_FUNCTION_92_0();
  return OUTLINED_FUNCTION_1179(v12);
}

void Searchfoundation_DrillDownMetadata.entitySearchOnlyMetadata.modify()
{
  OUTLINED_FUNCTION_243();
  v2 = OUTLINED_FUNCTION_212();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_86(v3);
  v4 = OUTLINED_FUNCTION_686();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_183(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_85(v8);
  v10 = type metadata accessor for Searchfoundation_EntitySearchMetadata(v9);
  OUTLINED_FUNCTION_126_1(v10);
  v12 = *(v11 + 64);
  v13 = __swift_coroFrameAllocStub(v12);
  v14 = OUTLINED_FUNCTION_1176(v13);
  v15 = __swift_coroFrameAllocStub(v14);
  v16 = OUTLINED_FUNCTION_770(v15);
  OUTLINED_FUNCTION_1230(v16);
  OUTLINED_FUNCTION_64_0(v17);
  *(v1 + 32) = type metadata accessor for Searchfoundation_DrillDownMetadata.OneOf_Metadata(0);
  OUTLINED_FUNCTION_75_9();
  if (v18)
  {
    sub_1B8D9207C(v0, &qword_1EBACC1B8, &qword_1B96B94C0);
LABEL_7:
    OUTLINED_FUNCTION_77_2();
    v12[4] = 0;
    v12[5] = v20;
    v12[6] = 0;
    v12[7] = v20;
    OUTLINED_FUNCTION_1255();
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_128();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 1)
  {
    OUTLINED_FUNCTION_36_9();
    sub_1B944B0D4();
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_148_4();
  OUTLINED_FUNCTION_177_1();
  sub_1B944B02C();
LABEL_8:
  OUTLINED_FUNCTION_46_1();
  OUTLINED_FUNCTION_242();
}

uint64_t Searchfoundation_DrillDownMetadata.cardSearchMetadata.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OUTLINED_FUNCTION_236();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v8);
  v9 = OUTLINED_FUNCTION_22_3();
  OUTLINED_FUNCTION_1230(v9);
  OUTLINED_FUNCTION_100_0();
  v10 = type metadata accessor for Searchfoundation_DrillDownMetadata.OneOf_Metadata(0);
  OUTLINED_FUNCTION_29_14(v10);
  if (v11)
  {
    sub_1B8D9207C(v1, &qword_1EBACC1B8, &qword_1B96B94C0);
  }

  else
  {
    OUTLINED_FUNCTION_461();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 2)
    {
      OUTLINED_FUNCTION_219_4();
      return sub_1B944B02C();
    }

    OUTLINED_FUNCTION_36_9();
    sub_1B944B0D4();
  }

  *a1 = 0;
  OUTLINED_FUNCTION_1377();
  *(a1 + 24) = 0;
  *(a1 + 32) = v14;
  *(a1 + 40) = 0;
  v15 = type metadata accessor for Searchfoundation_CardSearchMetadata(0);
  return OUTLINED_FUNCTION_690_0(v15);
}

void Searchfoundation_DrillDownMetadata.cardSearchMetadata.modify()
{
  OUTLINED_FUNCTION_243();
  v2 = OUTLINED_FUNCTION_212();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_86(v3);
  v4 = OUTLINED_FUNCTION_686();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_183(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_85(v8);
  v10 = type metadata accessor for Searchfoundation_CardSearchMetadata(v9);
  OUTLINED_FUNCTION_126_1(v10);
  v12 = *(v11 + 64);
  v13 = __swift_coroFrameAllocStub(v12);
  v14 = OUTLINED_FUNCTION_1176(v13);
  v15 = __swift_coroFrameAllocStub(v14);
  v16 = OUTLINED_FUNCTION_770(v15);
  OUTLINED_FUNCTION_1230(v16);
  OUTLINED_FUNCTION_64_0(v17);
  *(v1 + 32) = type metadata accessor for Searchfoundation_DrillDownMetadata.OneOf_Metadata(0);
  OUTLINED_FUNCTION_75_9();
  if (v18)
  {
    sub_1B8D9207C(v0, &qword_1EBACC1B8, &qword_1B96B94C0);
LABEL_7:
    *v12 = 0;
    *(v12 + 8) = 0;
    *(v12 + 16) = 0xE000000000000000;
    *(v12 + 24) = 0;
    *(v12 + 32) = 0xE000000000000000;
    *(v12 + 40) = 0;
    OUTLINED_FUNCTION_1255();
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_128();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 2)
  {
    OUTLINED_FUNCTION_36_9();
    sub_1B944B0D4();
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_249_4();
  sub_1B944B02C();
LABEL_8:
  OUTLINED_FUNCTION_46_1();
  OUTLINED_FUNCTION_242();
}

uint64_t Searchfoundation_DrillDownMetadata.entitySearchMetadata.getter()
{
  v1 = OUTLINED_FUNCTION_236();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_183(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_22_3();
  OUTLINED_FUNCTION_1230(v7);
  OUTLINED_FUNCTION_100_0();
  v8 = type metadata accessor for Searchfoundation_DrillDownMetadata.OneOf_Metadata(0);
  OUTLINED_FUNCTION_29_14(v8);
  if (v9)
  {
    sub_1B8D9207C(v0, &qword_1EBACC1B8, &qword_1B96B94C0);
  }

  else
  {
    OUTLINED_FUNCTION_461();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 3)
    {
      OUTLINED_FUNCTION_148_4();
      OUTLINED_FUNCTION_182();
      return sub_1B944B02C();
    }

    OUTLINED_FUNCTION_36_9();
    sub_1B944B0D4();
  }

  OUTLINED_FUNCTION_92_0();
  return OUTLINED_FUNCTION_1179(v12);
}

uint64_t sub_1B92E53FC()
{
  v2 = OUTLINED_FUNCTION_139_1();
  v3 = type metadata accessor for Searchfoundation_DrillDownMetadata(v2);
  sub_1B8D9207C(v0 + *(v3 + 36), &qword_1EBACC1B8, &qword_1B96B94C0);
  sub_1B944B02C();
  type metadata accessor for Searchfoundation_DrillDownMetadata.OneOf_Metadata(0);
  OUTLINED_FUNCTION_1388();
  OUTLINED_FUNCTION_80();

  return __swift_storeEnumTagSinglePayload(v4, v5, v6, v1);
}

void Searchfoundation_DrillDownMetadata.entitySearchMetadata.modify()
{
  OUTLINED_FUNCTION_243();
  v2 = OUTLINED_FUNCTION_212();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_86(v3);
  v4 = OUTLINED_FUNCTION_686();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_183(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_85(v8);
  v10 = type metadata accessor for Searchfoundation_EntitySearchMetadata(v9);
  OUTLINED_FUNCTION_126_1(v10);
  v12 = *(v11 + 64);
  v13 = __swift_coroFrameAllocStub(v12);
  v14 = OUTLINED_FUNCTION_1176(v13);
  v15 = __swift_coroFrameAllocStub(v14);
  v16 = OUTLINED_FUNCTION_770(v15);
  OUTLINED_FUNCTION_1230(v16);
  OUTLINED_FUNCTION_64_0(v17);
  *(v1 + 32) = type metadata accessor for Searchfoundation_DrillDownMetadata.OneOf_Metadata(0);
  OUTLINED_FUNCTION_75_9();
  if (v18)
  {
    sub_1B8D9207C(v0, &qword_1EBACC1B8, &qword_1B96B94C0);
LABEL_7:
    OUTLINED_FUNCTION_77_2();
    v12[4] = 0;
    v12[5] = v20;
    v12[6] = 0;
    v12[7] = v20;
    OUTLINED_FUNCTION_1255();
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_128();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 3)
  {
    OUTLINED_FUNCTION_36_9();
    sub_1B944B0D4();
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_148_4();
  OUTLINED_FUNCTION_177_1();
  sub_1B944B02C();
LABEL_8:
  OUTLINED_FUNCTION_46_1();
  OUTLINED_FUNCTION_242();
}

void sub_1B92E55FC()
{
  OUTLINED_FUNCTION_284();
  OUTLINED_FUNCTION_905(v3);
  v4 = *(v0 + 10);
  v5 = v0[1];
  v6 = v0[2];
  v7 = *v0;
  if (v8)
  {
    OUTLINED_FUNCTION_461();
    sub_1B944B080();
    sub_1B8D9207C(v7 + v4, &qword_1EBACC1B8, &qword_1B96B94C0);
    sub_1B944B02C();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_80();
    __swift_storeEnumTagSinglePayload(v9, v10, v11, v2);
    OUTLINED_FUNCTION_1183();
    sub_1B944B0D4();
  }

  else
  {
    sub_1B8D9207C(v7 + v4, &qword_1EBACC1B8, &qword_1B96B94C0);
    sub_1B944B02C();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_80();
    __swift_storeEnumTagSinglePayload(v12, v13, v14, v2);
  }

  free(v1);
  free(v6);
  free(v5);
  OUTLINED_FUNCTION_283();

  free(v15);
}

uint64_t Searchfoundation_DrillDownMetadata.debugParams.getter()
{
  v1 = (v0 + *(type metadata accessor for Searchfoundation_DrillDownMetadata(0) + 40));
  v2 = *v1;
  v3 = v1[1];

  return OUTLINED_FUNCTION_432();
}

uint64_t Searchfoundation_DrillDownMetadata.debugParams.setter()
{
  v3 = OUTLINED_FUNCTION_112();
  v4 = (v1 + *(type metadata accessor for Searchfoundation_DrillDownMetadata(v3) + 40));
  v5 = v4[1];

  *v4 = v2;
  v4[1] = v0;
  return result;
}

uint64_t Searchfoundation_DrillDownMetadata.debugParams.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  v1 = *(type metadata accessor for Searchfoundation_DrillDownMetadata(v0) + 40);
  return OUTLINED_FUNCTION_25();
}

uint64_t Searchfoundation_DrillDownMetadata.params.getter()
{
  v1 = (v0 + *(type metadata accessor for Searchfoundation_DrillDownMetadata(0) + 44));
  v2 = *v1;
  v3 = v1[1];

  return OUTLINED_FUNCTION_432();
}

uint64_t Searchfoundation_DrillDownMetadata.params.setter()
{
  v3 = OUTLINED_FUNCTION_112();
  v4 = (v1 + *(type metadata accessor for Searchfoundation_DrillDownMetadata(v3) + 44));
  v5 = v4[1];

  *v4 = v2;
  v4[1] = v0;
  return result;
}

uint64_t Searchfoundation_DrillDownMetadata.params.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  v1 = *(type metadata accessor for Searchfoundation_DrillDownMetadata(v0) + 44);
  return OUTLINED_FUNCTION_25();
}

uint64_t Searchfoundation_DrillDownMetadata.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  v1 = *(type metadata accessor for Searchfoundation_DrillDownMetadata(v0) + 48);
  return OUTLINED_FUNCTION_25();
}

void static Searchfoundation_DrillDownMetadata.OneOf_Metadata.== infix(_:_:)()
{
  OUTLINED_FUNCTION_284();
  v4 = OUTLINED_FUNCTION_1356(v2, v3);
  v5 = type metadata accessor for Searchfoundation_CardSearchMetadata(v4);
  v6 = OUTLINED_FUNCTION_183(v5);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_21();
  v9 = OUTLINED_FUNCTION_201();
  v10 = type metadata accessor for Searchfoundation_EntitySearchMetadata(v9);
  v11 = OUTLINED_FUNCTION_183(v10);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_66();
  OUTLINED_FUNCTION_442();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_725();
  v43 = type metadata accessor for Searchfoundation_CardMetadata(0);
  v15 = OUTLINED_FUNCTION_59_1(v43);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_21();
  v44 = v18;
  v19 = OUTLINED_FUNCTION_201();
  v20 = type metadata accessor for Searchfoundation_DrillDownMetadata.OneOf_Metadata(v19);
  v21 = OUTLINED_FUNCTION_59_1(v20);
  v23 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_66();
  OUTLINED_FUNCTION_563();
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_839_0();
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_1246();
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_441();
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACC1C0, &qword_1B96B94C8);
  OUTLINED_FUNCTION_183(v27);
  v29 = *(v28 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_139();
  v32 = *(v31 + 56);
  sub_1B944B080();
  sub_1B944B080();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      OUTLINED_FUNCTION_256_3();
      sub_1B944B080();
      if (OUTLINED_FUNCTION_1280() != 1)
      {
        goto LABEL_13;
      }

      OUTLINED_FUNCTION_148_4();
      sub_1B944B02C();
      v37 = OUTLINED_FUNCTION_176_1();
      static Searchfoundation_EntitySearchMetadata.== infix(_:_:)(v37, v38);
      OUTLINED_FUNCTION_1032();
      sub_1B944B0D4();
      OUTLINED_FUNCTION_543();
      goto LABEL_10;
    case 2u:
      OUTLINED_FUNCTION_256_3();
      sub_1B944B080();
      if (OUTLINED_FUNCTION_1280() == 2)
      {
        sub_1B944B02C();
        v33 = OUTLINED_FUNCTION_236();
        static Searchfoundation_CardSearchMetadata.== infix(_:_:)(v33, v34);
        sub_1B944B0D4();
        goto LABEL_10;
      }

      OUTLINED_FUNCTION_931();
      goto LABEL_13;
    case 3u:
      OUTLINED_FUNCTION_256_3();
      sub_1B944B080();
      if (OUTLINED_FUNCTION_1280() != 3)
      {
        OUTLINED_FUNCTION_171_2();
        goto LABEL_13;
      }

      OUTLINED_FUNCTION_148_4();
      sub_1B944B02C();
      v35 = OUTLINED_FUNCTION_690();
      static Searchfoundation_EntitySearchMetadata.== infix(_:_:)(v35, v36);
      OUTLINED_FUNCTION_1032();
      sub_1B944B0D4();
LABEL_10:
      sub_1B944B0D4();
      OUTLINED_FUNCTION_36_9();
      sub_1B944B0D4();
      break;
    default:
      OUTLINED_FUNCTION_256_3();
      sub_1B944B080();
      if (OUTLINED_FUNCTION_1280())
      {
        OUTLINED_FUNCTION_222();
LABEL_13:
        sub_1B944B0D4();
        sub_1B8D9207C(v0, &qword_1EBACC1C0, &qword_1B96B94C8);
      }

      else
      {
        sub_1B944B02C();
        if (*v1 == *v44)
        {
          v39 = *(v1 + 1) == *(v44 + 1) && *(v1 + 2) == *(v44 + 2);
          if (v39 || (sub_1B964C9F0() & 1) != 0)
          {
            v40 = *(v43 + 24);
            sub_1B964C2B0();
            OUTLINED_FUNCTION_0_84();
            sub_1B8CD3068(v41, v42);
            OUTLINED_FUNCTION_604_1();
          }
        }

        OUTLINED_FUNCTION_1027();
        sub_1B944B0D4();
        OUTLINED_FUNCTION_128();
        sub_1B944B0D4();
        OUTLINED_FUNCTION_36_9();
        sub_1B944B0D4();
      }

      break;
  }

  OUTLINED_FUNCTION_283();
}

uint64_t static Searchfoundation_CardMetadata.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  OUTLINED_FUNCTION_1319(a1, a2);
  if (!v6)
  {
    return 0;
  }

  OUTLINED_FUNCTION_468();
  OUTLINED_FUNCTION_1355(v3);
  v6 = v6 && v4 == v5;
  if (!v6 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  v7 = type metadata accessor for Searchfoundation_CardMetadata(0);
  OUTLINED_FUNCTION_188_1(v7);
  OUTLINED_FUNCTION_0_84();
  sub_1B8CD3068(v8, v9);
  return OUTLINED_FUNCTION_634() & 1;
}

uint64_t static Searchfoundation_EntitySearchMetadata.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  OUTLINED_FUNCTION_17_1(a1, a2);
  v5 = v5 && v3 == v4;
  if (!v5 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_84_1();
  v8 = v5 && v6 == v7;
  if (!v8 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_40_5();
  v11 = v5 && v9 == v10;
  if (!v11 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  v12 = *(v2 + 48);
  v13 = *(v2 + 56);
  OUTLINED_FUNCTION_850();
  v16 = v5 && v14 == v15;
  if (!v16 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  v17 = type metadata accessor for Searchfoundation_EntitySearchMetadata(0);
  OUTLINED_FUNCTION_764(v17);
  OUTLINED_FUNCTION_0_84();
  sub_1B8CD3068(v18, v19);
  return OUTLINED_FUNCTION_634() & 1;
}

uint64_t static Searchfoundation_CardSearchMetadata.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  OUTLINED_FUNCTION_1319(a1, a2);
  if (!v7)
  {
    return 0;
  }

  OUTLINED_FUNCTION_468();
  OUTLINED_FUNCTION_1355(v4);
  v7 = v7 && v5 == v6;
  if (!v7 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  v8 = *(v3 + 24) == *(v2 + 24) && *(v3 + 32) == *(v2 + 32);
  if (!v8 && (sub_1B964C9F0() & 1) == 0 || *(v3 + 40) != *(v2 + 40))
  {
    return 0;
  }

  v10 = type metadata accessor for Searchfoundation_CardSearchMetadata(0);
  OUTLINED_FUNCTION_764(v10);
  OUTLINED_FUNCTION_0_84();
  sub_1B8CD3068(v11, v12);
  return OUTLINED_FUNCTION_634() & 1;
}

uint64_t Searchfoundation_NamedProtobufMessage.protobufMessageData.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = OUTLINED_FUNCTION_432();
  sub_1B8D91FCC(v3, v4);
  return OUTLINED_FUNCTION_432();
}

uint64_t Searchfoundation_NamedProtobufMessage.protobufMessageData.setter()
{
  OUTLINED_FUNCTION_16();
  result = sub_1B8D538A0(*v1, *(v1 + 8));
  *v1 = v2;
  *(v1 + 8) = v0;
  return result;
}

uint64_t sub_1B92E606C()
{
  v0 = OUTLINED_FUNCTION_338_0();
  v2 = *(v1(v0) + 24);
  v3 = sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1(v3);
  v5 = *(v4 + 16);
  v6 = OUTLINED_FUNCTION_18_1();

  return v7(v6);
}

uint64_t sub_1B92E60F0()
{
  v0 = OUTLINED_FUNCTION_313();
  v2 = *(v1(v0) + 24);
  v3 = sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1(v3);
  v5 = *(v4 + 40);
  v6 = OUTLINED_FUNCTION_209();

  return v7(v6);
}

uint64_t Searchfoundation_NamedProtobufMessage.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  v1 = *(type metadata accessor for Searchfoundation_NamedProtobufMessage(v0) + 24);
  return OUTLINED_FUNCTION_25();
}

void Searchfoundation_CardSection.type.getter()
{
  OUTLINED_FUNCTION_209_4();
  OUTLINED_FUNCTION_10_4();
  v1 = *(v0 + 24);
  OUTLINED_FUNCTION_66_2(*(v0 + 16));
}

void Searchfoundation_CardSection.type.setter()
{
  OUTLINED_FUNCTION_193_0();
  v6 = OUTLINED_FUNCTION_275_1(v5);
  v7 = OUTLINED_FUNCTION_1113(v6);
  v8 = *(v1 + v4);
  if ((v7 & 1) == 0)
  {
    OUTLINED_FUNCTION_658_0();
    v9 = OUTLINED_FUNCTION_40_0();
    v8 = sub_1B9372C5C(v9);
    *(v0 + v4) = v8;
  }

  OUTLINED_FUNCTION_9_3();
  *(v8 + 16) = v2;
  *(v8 + 24) = v3;
  OUTLINED_FUNCTION_192_1();
}

uint64_t Searchfoundation_CardSection.type.modify()
{
  v2 = OUTLINED_FUNCTION_196_1();
  v3 = __swift_coroFrameAllocStub(v2);
  v4 = OUTLINED_FUNCTION_37_3(v3);
  v5 = type metadata accessor for Searchfoundation_CardSection(v4);
  OUTLINED_FUNCTION_21_8(v5);
  OUTLINED_FUNCTION_344_0();
  v6 = *(v0 + 24);
  *(v1 + 72) = *(v0 + 16);
  *(v1 + 80) = v6;
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B92E62C0()
{
  OUTLINED_FUNCTION_243();
  OUTLINED_FUNCTION_238(v5);
  v7 = OUTLINED_FUNCTION_138_2(v6);
  v8 = *(v4 + v1);
  if ((v7 & 1) == 0)
  {
    v9 = *(v0 + 84);
    v10 = *(v0 + 88);
    OUTLINED_FUNCTION_658_0();
    v11 = OUTLINED_FUNCTION_40_0();
    v12 = sub_1B9372C5C(v11);
    OUTLINED_FUNCTION_73_2(v12);
  }

  OUTLINED_FUNCTION_11_4();
  *(v8 + 16) = v2;
  *(v8 + 24) = v3;
  OUTLINED_FUNCTION_242();

  free(v13);
}

uint64_t Searchfoundation_CardSection.value.getter@<X0>(int a1@<W8>)
{
  v3 = OUTLINED_FUNCTION_236();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v8);
  v9 = OUTLINED_FUNCTION_22_3();
  OUTLINED_FUNCTION_449_0(v9);
  OUTLINED_FUNCTION_101_0();
  OUTLINED_FUNCTION_39();
  v10 = type metadata accessor for Searchfoundation_CardSectionValue(0);
  OUTLINED_FUNCTION_29_14(v10);
  if (v11)
  {
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    if (qword_1ED9D2A58 != -1)
    {
      OUTLINED_FUNCTION_1112();
    }

    result = OUTLINED_FUNCTION_59_0();
    if (a1 != 1)
    {
      return sub_1B8D9207C(v1, &qword_1EBACC1C8, &unk_1B96B94D0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_219_4();
    return sub_1B944B02C();
  }

  return result;
}

uint64_t Searchfoundation_CardSection.value.setter()
{
  OUTLINED_FUNCTION_183_0();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACC1C8, &unk_1B96B94D0);
  OUTLINED_FUNCTION_183(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_31_2();
  v7 = OUTLINED_FUNCTION_1113(v6);
  v8 = *(v0 + v1);
  if ((v7 & 1) == 0)
  {
    OUTLINED_FUNCTION_658_0();
    v9 = OUTLINED_FUNCTION_40_0();
    v10 = sub_1B9372C5C(v9);
    OUTLINED_FUNCTION_135(v10);
  }

  OUTLINED_FUNCTION_339_1();
  OUTLINED_FUNCTION_294();
  sub_1B944B02C();
  type metadata accessor for Searchfoundation_CardSectionValue(0);
  v11 = OUTLINED_FUNCTION_53_0();
  __swift_storeEnumTagSinglePayload(v11, v12, v13, v14);
  OUTLINED_FUNCTION_73_0();
  OUTLINED_FUNCTION_122_0();
  sub_1B8DAA170();
  return swift_endAccess();
}

uint64_t sub_1B92E6570@<X0>(uint64_t (*a1)(void)@<X0>, void *a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
  v8 = *(a1(0) + 20);
  if (*a2 != -1)
  {
    OUTLINED_FUNCTION_461();
    swift_once();
  }

  *(a4 + v8) = *a3;
}

void Searchfoundation_CardSection.value.modify()
{
  OUTLINED_FUNCTION_284();
  v3 = OUTLINED_FUNCTION_185_0();
  v4 = __swift_coroFrameAllocStub(v3);
  OUTLINED_FUNCTION_66_0(v4);
  v5 = OUTLINED_FUNCTION_491();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(v5, v6);
  OUTLINED_FUNCTION_183(v7);
  v9 = __swift_coroFrameAllocStub(*(v8 + 64));
  v10 = OUTLINED_FUNCTION_71(v9);
  v11 = type metadata accessor for Searchfoundation_CardSectionValue(v10);
  OUTLINED_FUNCTION_135_0(v11);
  v13 = __swift_coroFrameAllocStub(*(v12 + 64));
  v14 = OUTLINED_FUNCTION_187(v13);
  *(v2 + 48) = __swift_coroFrameAllocStub(v14);
  OUTLINED_FUNCTION_209_4();
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_55_2();
  sub_1B8D92024();
  OUTLINED_FUNCTION_17_2();
  if (v15)
  {
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    v16 = *(v0 + 20);
    if (qword_1ED9D2A58 != -1)
    {
      OUTLINED_FUNCTION_1112();
    }

    OUTLINED_FUNCTION_57_2();
    if (v0 != 1)
    {
      sub_1B8D9207C(v1, &qword_1EBACC1C8, &unk_1B96B94D0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_339_1();
    OUTLINED_FUNCTION_246();
    sub_1B944B02C();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_283();
}

uint64_t Searchfoundation_CardSection.hasValue.getter()
{
  v0 = OUTLINED_FUNCTION_514();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_183(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_22_3();
  OUTLINED_FUNCTION_449_0(v6);
  OUTLINED_FUNCTION_284_0();
  OUTLINED_FUNCTION_238_2();
  v7 = type metadata accessor for Searchfoundation_CardSectionValue(0);
  OUTLINED_FUNCTION_11(v7);
  return OUTLINED_FUNCTION_466_0();
}

Swift::Void __swiftcall Searchfoundation_CardSection.clearValue()()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACC1C8, &unk_1B96B94D0);
  OUTLINED_FUNCTION_183(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_31_2();
  v7 = type metadata accessor for Searchfoundation_CardSection(v6);
  v8 = OUTLINED_FUNCTION_182_0(v7);
  v9 = *(v0 + v1);
  if ((v8 & 1) == 0)
  {
    OUTLINED_FUNCTION_658_0();
    v10 = OUTLINED_FUNCTION_40_0();
    v11 = sub_1B9372C5C(v10);
    OUTLINED_FUNCTION_157_2(v11);
  }

  v12 = type metadata accessor for Searchfoundation_CardSectionValue(0);
  OUTLINED_FUNCTION_274_1(v12);
  OUTLINED_FUNCTION_290_0();
  OUTLINED_FUNCTION_122_0();
  sub_1B8DAA170();
  swift_endAccess();
}

uint64_t Searchfoundation_CardSection.nextCard.getter@<X0>(int a1@<W8>)
{
  v3 = OUTLINED_FUNCTION_236();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v8);
  v9 = OUTLINED_FUNCTION_22_3();
  OUTLINED_FUNCTION_449_0(v9);
  OUTLINED_FUNCTION_101_0();
  OUTLINED_FUNCTION_39();
  v10 = type metadata accessor for Searchfoundation_Card(0);
  OUTLINED_FUNCTION_29_14(v10);
  if (v11)
  {
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    if (qword_1ED9D30A0 != -1)
    {
      OUTLINED_FUNCTION_153_3();
    }

    result = OUTLINED_FUNCTION_59_0();
    if (a1 != 1)
    {
      return sub_1B8D9207C(v1, &qword_1EBAC3D58, &unk_1B9689680);
    }
  }

  else
  {
    OUTLINED_FUNCTION_49_15();
    OUTLINED_FUNCTION_182();
    return sub_1B944B02C();
  }

  return result;
}

uint64_t Searchfoundation_CardSection.nextCard.setter()
{
  OUTLINED_FUNCTION_183_0();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC3D58, &unk_1B9689680);
  OUTLINED_FUNCTION_183(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_31_2();
  v7 = OUTLINED_FUNCTION_1113(v6);
  v8 = *(v0 + v1);
  if ((v7 & 1) == 0)
  {
    OUTLINED_FUNCTION_658_0();
    v9 = OUTLINED_FUNCTION_40_0();
    v10 = sub_1B9372C5C(v9);
    OUTLINED_FUNCTION_135(v10);
  }

  OUTLINED_FUNCTION_49_15();
  OUTLINED_FUNCTION_294();
  sub_1B944B02C();
  type metadata accessor for Searchfoundation_Card(0);
  v11 = OUTLINED_FUNCTION_53_0();
  __swift_storeEnumTagSinglePayload(v11, v12, v13, v14);
  OUTLINED_FUNCTION_73_0();
  OUTLINED_FUNCTION_122_0();
  sub_1B8DAA170();
  return swift_endAccess();
}

void Searchfoundation_CardSection.nextCard.modify()
{
  OUTLINED_FUNCTION_284();
  v3 = OUTLINED_FUNCTION_185_0();
  v4 = __swift_coroFrameAllocStub(v3);
  OUTLINED_FUNCTION_66_0(v4);
  v5 = OUTLINED_FUNCTION_491();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(v5, v6);
  OUTLINED_FUNCTION_183(v7);
  v9 = __swift_coroFrameAllocStub(*(v8 + 64));
  v10 = OUTLINED_FUNCTION_71(v9);
  v11 = type metadata accessor for Searchfoundation_Card(v10);
  OUTLINED_FUNCTION_135_0(v11);
  v13 = __swift_coroFrameAllocStub(*(v12 + 64));
  v14 = OUTLINED_FUNCTION_187(v13);
  *(v2 + 48) = __swift_coroFrameAllocStub(v14);
  OUTLINED_FUNCTION_209_4();
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_55_2();
  sub_1B8D92024();
  OUTLINED_FUNCTION_17_2();
  if (v15)
  {
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    v16 = *(v0 + 20);
    if (qword_1ED9D30A0 != -1)
    {
      OUTLINED_FUNCTION_153_3();
    }

    OUTLINED_FUNCTION_57_2();
    if (v0 != 1)
    {
      sub_1B8D9207C(v1, &qword_1EBAC3D58, &unk_1B9689680);
    }
  }

  else
  {
    OUTLINED_FUNCTION_49_15();
    OUTLINED_FUNCTION_246();
    sub_1B944B02C();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_283();
}

uint64_t Searchfoundation_CardSection.hasNextCard.getter()
{
  v0 = OUTLINED_FUNCTION_514();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_183(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_22_3();
  OUTLINED_FUNCTION_449_0(v6);
  OUTLINED_FUNCTION_284_0();
  OUTLINED_FUNCTION_238_2();
  v7 = type metadata accessor for Searchfoundation_Card(0);
  OUTLINED_FUNCTION_11(v7);
  return OUTLINED_FUNCTION_466_0();
}

Swift::Void __swiftcall Searchfoundation_CardSection.clearNextCard()()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC3D58, &unk_1B9689680);
  OUTLINED_FUNCTION_183(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_31_2();
  v7 = type metadata accessor for Searchfoundation_CardSection(v6);
  v8 = OUTLINED_FUNCTION_182_0(v7);
  v9 = *(v0 + v1);
  if ((v8 & 1) == 0)
  {
    OUTLINED_FUNCTION_658_0();
    v10 = OUTLINED_FUNCTION_40_0();
    v11 = sub_1B9372C5C(v10);
    OUTLINED_FUNCTION_157_2(v11);
  }

  v12 = type metadata accessor for Searchfoundation_Card(0);
  OUTLINED_FUNCTION_274_1(v12);
  OUTLINED_FUNCTION_290_0();
  OUTLINED_FUNCTION_122_0();
  sub_1B8DAA170();
  swift_endAccess();
}

uint64_t sub_1B92E6DB4(uint64_t a1, uint64_t a2)
{
  v4 = OUTLINED_FUNCTION_178_1();
  v6 = v5(v4);
  OUTLINED_FUNCTION_308_0(v6);
  v7 = *(v2 + a2);
}

void sub_1B92E6DF4(uint64_t *a1)
{
  v1 = *a1;

  Searchfoundation_CardSection.commands.setter();
}

void sub_1B92E6E68()
{
  OUTLINED_FUNCTION_184_0();
  OUTLINED_FUNCTION_353_0();
  v6 = OUTLINED_FUNCTION_313();
  v8 = v7(v6);
  v9 = OUTLINED_FUNCTION_216_1(v8);
  v10 = *(v1 + v5);
  if ((v9 & 1) == 0)
  {
    v11 = v4(0);
    OUTLINED_FUNCTION_57_0(v11);
    swift_allocObject();
    v12 = OUTLINED_FUNCTION_40_0();
    v13 = v3(v12);
    OUTLINED_FUNCTION_192_2(v13);
  }

  OUTLINED_FUNCTION_271_0();
  OUTLINED_FUNCTION_9_3();
  v14 = *(v10 + v2);
  *(v10 + v2) = v0;

  OUTLINED_FUNCTION_183_2();
}

uint64_t Searchfoundation_CardSection.commands.modify()
{
  v0 = OUTLINED_FUNCTION_194_0();
  v1 = __swift_coroFrameAllocStub(v0);
  v2 = OUTLINED_FUNCTION_30(v1);
  v3 = type metadata accessor for Searchfoundation_CardSection(v2);
  OUTLINED_FUNCTION_53_2(v3);
  OUTLINED_FUNCTION_68_0();
  OUTLINED_FUNCTION_195_0();

  return OUTLINED_FUNCTION_514();
}

void sub_1B92E6FC0(uint64_t *a1)
{
  v1 = *a1;

  Searchfoundation_CardSection.parameterKeyPaths.setter();
}

uint64_t Searchfoundation_CardSection.parameterKeyPaths.modify()
{
  v0 = OUTLINED_FUNCTION_194_0();
  v1 = __swift_coroFrameAllocStub(v0);
  v2 = OUTLINED_FUNCTION_30(v1);
  v3 = type metadata accessor for Searchfoundation_CardSection(v2);
  OUTLINED_FUNCTION_53_2(v3);
  OUTLINED_FUNCTION_68_0();
  OUTLINED_FUNCTION_195_0();

  return OUTLINED_FUNCTION_514();
}

void sub_1B92E7108(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  Searchfoundation_CardSection.cardSectionID.setter();
}

uint64_t Searchfoundation_CardSection.cardSectionID.modify()
{
  v0 = OUTLINED_FUNCTION_126();
  v1 = __swift_coroFrameAllocStub(v0);
  v2 = OUTLINED_FUNCTION_11_10(v1);
  v3 = type metadata accessor for Searchfoundation_CardSection(v2);
  OUTLINED_FUNCTION_254_1(v3);
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_130_0();

  return OUTLINED_FUNCTION_514();
}

void sub_1B92E7264(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  Searchfoundation_CardSection.resultIdentifier.setter();
}

uint64_t Searchfoundation_CardSection.resultIdentifier.modify()
{
  v0 = OUTLINED_FUNCTION_126();
  v1 = __swift_coroFrameAllocStub(v0);
  v2 = OUTLINED_FUNCTION_11_10(v1);
  v3 = type metadata accessor for Searchfoundation_CardSection(v2);
  OUTLINED_FUNCTION_254_1(v3);
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_130_0();

  return OUTLINED_FUNCTION_514();
}

uint64_t Searchfoundation_CardSection.userReportRequest.getter@<X0>(int a1@<W8>)
{
  v3 = OUTLINED_FUNCTION_236();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v8);
  v9 = OUTLINED_FUNCTION_22_3();
  OUTLINED_FUNCTION_449_0(v9);
  OUTLINED_FUNCTION_101_0();
  OUTLINED_FUNCTION_39();
  v10 = type metadata accessor for Searchfoundation_UserReportRequest(0);
  OUTLINED_FUNCTION_29_14(v10);
  if (v11)
  {
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    if (qword_1EBAB4DD8 != -1)
    {
      OUTLINED_FUNCTION_433_2();
    }

    result = OUTLINED_FUNCTION_59_0();
    if (a1 != 1)
    {
      return sub_1B8D9207C(v1, &qword_1EBACC1D0, &unk_1B96B94E0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_48_14();
    OUTLINED_FUNCTION_182();
    return sub_1B944B02C();
  }

  return result;
}

uint64_t Searchfoundation_CardSection.userReportRequest.setter()
{
  OUTLINED_FUNCTION_183_0();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACC1D0, &unk_1B96B94E0);
  OUTLINED_FUNCTION_183(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_31_2();
  v7 = OUTLINED_FUNCTION_1113(v6);
  v8 = *(v0 + v1);
  if ((v7 & 1) == 0)
  {
    OUTLINED_FUNCTION_658_0();
    v9 = OUTLINED_FUNCTION_40_0();
    v10 = sub_1B9372C5C(v9);
    OUTLINED_FUNCTION_135(v10);
  }

  OUTLINED_FUNCTION_48_14();
  OUTLINED_FUNCTION_294();
  sub_1B944B02C();
  type metadata accessor for Searchfoundation_UserReportRequest(0);
  v11 = OUTLINED_FUNCTION_53_0();
  __swift_storeEnumTagSinglePayload(v11, v12, v13, v14);
  OUTLINED_FUNCTION_73_0();
  OUTLINED_FUNCTION_122_0();
  sub_1B8DAA170();
  return swift_endAccess();
}

void Searchfoundation_CardSection.userReportRequest.modify()
{
  OUTLINED_FUNCTION_284();
  v3 = OUTLINED_FUNCTION_185_0();
  v4 = __swift_coroFrameAllocStub(v3);
  OUTLINED_FUNCTION_66_0(v4);
  v5 = OUTLINED_FUNCTION_491();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(v5, v6);
  OUTLINED_FUNCTION_183(v7);
  v9 = __swift_coroFrameAllocStub(*(v8 + 64));
  v10 = OUTLINED_FUNCTION_71(v9);
  v11 = type metadata accessor for Searchfoundation_UserReportRequest(v10);
  OUTLINED_FUNCTION_135_0(v11);
  v13 = __swift_coroFrameAllocStub(*(v12 + 64));
  v14 = OUTLINED_FUNCTION_187(v13);
  *(v2 + 48) = __swift_coroFrameAllocStub(v14);
  OUTLINED_FUNCTION_209_4();
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_55_2();
  sub_1B8D92024();
  OUTLINED_FUNCTION_17_2();
  if (v15)
  {
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    v16 = *(v0 + 20);
    if (qword_1EBAB4DD8 != -1)
    {
      OUTLINED_FUNCTION_433_2();
    }

    OUTLINED_FUNCTION_57_2();
    if (v0 != 1)
    {
      sub_1B8D9207C(v1, &qword_1EBACC1D0, &unk_1B96B94E0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_48_14();
    OUTLINED_FUNCTION_246();
    sub_1B944B02C();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_283();
}

uint64_t Searchfoundation_CardSection.hasUserReportRequest.getter()
{
  v0 = OUTLINED_FUNCTION_514();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_183(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_22_3();
  OUTLINED_FUNCTION_449_0(v6);
  OUTLINED_FUNCTION_284_0();
  OUTLINED_FUNCTION_238_2();
  v7 = type metadata accessor for Searchfoundation_UserReportRequest(0);
  OUTLINED_FUNCTION_11(v7);
  return OUTLINED_FUNCTION_466_0();
}

Swift::Void __swiftcall Searchfoundation_CardSection.clearUserReportRequest()()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACC1D0, &unk_1B96B94E0);
  OUTLINED_FUNCTION_183(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_31_2();
  v7 = type metadata accessor for Searchfoundation_CardSection(v6);
  v8 = OUTLINED_FUNCTION_182_0(v7);
  v9 = *(v0 + v1);
  if ((v8 & 1) == 0)
  {
    OUTLINED_FUNCTION_658_0();
    v10 = OUTLINED_FUNCTION_40_0();
    v11 = sub_1B9372C5C(v10);
    OUTLINED_FUNCTION_157_2(v11);
  }

  v12 = type metadata accessor for Searchfoundation_UserReportRequest(0);
  OUTLINED_FUNCTION_274_1(v12);
  OUTLINED_FUNCTION_290_0();
  OUTLINED_FUNCTION_122_0();
  sub_1B8DAA170();
  swift_endAccess();
}

uint64_t Searchfoundation_CardSection.command.getter@<X0>(int a1@<W8>)
{
  v3 = OUTLINED_FUNCTION_236();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v8);
  v9 = OUTLINED_FUNCTION_22_3();
  OUTLINED_FUNCTION_449_0(v9);
  OUTLINED_FUNCTION_101_0();
  OUTLINED_FUNCTION_39();
  v10 = type metadata accessor for Searchfoundation_Command(0);
  OUTLINED_FUNCTION_29_14(v10);
  if (v11)
  {
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    if (qword_1ED9D3048 != -1)
    {
      OUTLINED_FUNCTION_125_4();
    }

    result = OUTLINED_FUNCTION_59_0();
    if (a1 != 1)
    {
      return sub_1B8D9207C(v1, &qword_1EBAB8E98, &qword_1B964D698);
    }
  }

  else
  {
    OUTLINED_FUNCTION_17_24();
    OUTLINED_FUNCTION_182();
    return sub_1B944B02C();
  }

  return result;
}

uint64_t Searchfoundation_CardSection.command.setter()
{
  OUTLINED_FUNCTION_183_0();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8E98, &qword_1B964D698);
  OUTLINED_FUNCTION_183(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_31_2();
  v7 = OUTLINED_FUNCTION_1113(v6);
  v8 = *(v0 + v1);
  if ((v7 & 1) == 0)
  {
    OUTLINED_FUNCTION_658_0();
    v9 = OUTLINED_FUNCTION_40_0();
    v10 = sub_1B9372C5C(v9);
    OUTLINED_FUNCTION_135(v10);
  }

  OUTLINED_FUNCTION_17_24();
  OUTLINED_FUNCTION_294();
  sub_1B944B02C();
  OUTLINED_FUNCTION_652_1();
  v11 = OUTLINED_FUNCTION_53_0();
  __swift_storeEnumTagSinglePayload(v11, v12, v13, v14);
  OUTLINED_FUNCTION_73_0();
  OUTLINED_FUNCTION_122_0();
  sub_1B8DAA170();
  return swift_endAccess();
}

void Searchfoundation_CardSection.command.modify()
{
  OUTLINED_FUNCTION_284();
  v3 = OUTLINED_FUNCTION_185_0();
  v4 = __swift_coroFrameAllocStub(v3);
  OUTLINED_FUNCTION_66_0(v4);
  v5 = OUTLINED_FUNCTION_491();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(v5, v6);
  OUTLINED_FUNCTION_183(v7);
  v9 = __swift_coroFrameAllocStub(*(v8 + 64));
  v10 = OUTLINED_FUNCTION_71(v9);
  v11 = type metadata accessor for Searchfoundation_Command(v10);
  OUTLINED_FUNCTION_135_0(v11);
  v13 = __swift_coroFrameAllocStub(*(v12 + 64));
  v14 = OUTLINED_FUNCTION_187(v13);
  *(v2 + 48) = __swift_coroFrameAllocStub(v14);
  OUTLINED_FUNCTION_209_4();
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_55_2();
  sub_1B8D92024();
  OUTLINED_FUNCTION_17_2();
  if (v15)
  {
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    v16 = *(v0 + 20);
    if (qword_1ED9D3048 != -1)
    {
      OUTLINED_FUNCTION_125_4();
    }

    OUTLINED_FUNCTION_57_2();
    if (v0 != 1)
    {
      sub_1B8D9207C(v1, &qword_1EBAB8E98, &qword_1B964D698);
    }
  }

  else
  {
    OUTLINED_FUNCTION_17_24();
    OUTLINED_FUNCTION_246();
    sub_1B944B02C();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_283();
}

uint64_t Searchfoundation_CardSection.hasCommand.getter()
{
  v0 = OUTLINED_FUNCTION_514();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_183(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_22_3();
  OUTLINED_FUNCTION_449_0(v6);
  OUTLINED_FUNCTION_284_0();
  OUTLINED_FUNCTION_238_2();
  v7 = type metadata accessor for Searchfoundation_Command(0);
  OUTLINED_FUNCTION_11(v7);
  return OUTLINED_FUNCTION_466_0();
}

Swift::Void __swiftcall Searchfoundation_CardSection.clearCommand()()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8E98, &qword_1B964D698);
  OUTLINED_FUNCTION_183(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_31_2();
  v7 = type metadata accessor for Searchfoundation_CardSection(v6);
  v8 = OUTLINED_FUNCTION_182_0(v7);
  v9 = *(v0 + v1);
  if ((v8 & 1) == 0)
  {
    OUTLINED_FUNCTION_658_0();
    v10 = OUTLINED_FUNCTION_40_0();
    v11 = sub_1B9372C5C(v10);
    OUTLINED_FUNCTION_157_2(v11);
  }

  v12 = type metadata accessor for Searchfoundation_Command(0);
  OUTLINED_FUNCTION_274_1(v12);
  OUTLINED_FUNCTION_290_0();
  OUTLINED_FUNCTION_122_0();
  sub_1B8DAA170();
  swift_endAccess();
}

uint64_t Searchfoundation_CardSection.previewCommand.getter@<X0>(int a1@<W8>)
{
  v3 = OUTLINED_FUNCTION_236();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v8);
  v9 = OUTLINED_FUNCTION_22_3();
  OUTLINED_FUNCTION_449_0(v9);
  OUTLINED_FUNCTION_101_0();
  OUTLINED_FUNCTION_39();
  v10 = type metadata accessor for Searchfoundation_Command(0);
  OUTLINED_FUNCTION_29_14(v10);
  if (v11)
  {
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    if (qword_1ED9D3048 != -1)
    {
      OUTLINED_FUNCTION_125_4();
    }

    result = OUTLINED_FUNCTION_59_0();
    if (a1 != 1)
    {
      return sub_1B8D9207C(v1, &qword_1EBAB8E98, &qword_1B964D698);
    }
  }

  else
  {
    OUTLINED_FUNCTION_17_24();
    OUTLINED_FUNCTION_182();
    return sub_1B944B02C();
  }

  return result;
}

uint64_t Searchfoundation_CardSection.previewCommand.setter()
{
  OUTLINED_FUNCTION_183_0();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8E98, &qword_1B964D698);
  OUTLINED_FUNCTION_183(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_31_2();
  v7 = OUTLINED_FUNCTION_1113(v6);
  v8 = *(v0 + v1);
  if ((v7 & 1) == 0)
  {
    OUTLINED_FUNCTION_658_0();
    v9 = OUTLINED_FUNCTION_40_0();
    v10 = sub_1B9372C5C(v9);
    OUTLINED_FUNCTION_135(v10);
  }

  OUTLINED_FUNCTION_17_24();
  OUTLINED_FUNCTION_294();
  sub_1B944B02C();
  OUTLINED_FUNCTION_652_1();
  v11 = OUTLINED_FUNCTION_53_0();
  __swift_storeEnumTagSinglePayload(v11, v12, v13, v14);
  OUTLINED_FUNCTION_73_0();
  OUTLINED_FUNCTION_122_0();
  sub_1B8DAA170();
  return swift_endAccess();
}

void Searchfoundation_CardSection.previewCommand.modify()
{
  OUTLINED_FUNCTION_284();
  v3 = OUTLINED_FUNCTION_185_0();
  v4 = __swift_coroFrameAllocStub(v3);
  OUTLINED_FUNCTION_66_0(v4);
  v5 = OUTLINED_FUNCTION_491();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(v5, v6);
  OUTLINED_FUNCTION_183(v7);
  v9 = __swift_coroFrameAllocStub(*(v8 + 64));
  v10 = OUTLINED_FUNCTION_71(v9);
  v11 = type metadata accessor for Searchfoundation_Command(v10);
  OUTLINED_FUNCTION_135_0(v11);
  v13 = __swift_coroFrameAllocStub(*(v12 + 64));
  v14 = OUTLINED_FUNCTION_187(v13);
  *(v2 + 48) = __swift_coroFrameAllocStub(v14);
  OUTLINED_FUNCTION_209_4();
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_55_2();
  sub_1B8D92024();
  OUTLINED_FUNCTION_17_2();
  if (v15)
  {
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    v16 = *(v0 + 20);
    if (qword_1ED9D3048 != -1)
    {
      OUTLINED_FUNCTION_125_4();
    }

    OUTLINED_FUNCTION_57_2();
    if (v0 != 1)
    {
      sub_1B8D9207C(v1, &qword_1EBAB8E98, &qword_1B964D698);
    }
  }

  else
  {
    OUTLINED_FUNCTION_17_24();
    OUTLINED_FUNCTION_246();
    sub_1B944B02C();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_283();
}

uint64_t Searchfoundation_CardSection.hasPreviewCommand.getter()
{
  v0 = OUTLINED_FUNCTION_514();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_183(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_22_3();
  OUTLINED_FUNCTION_449_0(v6);
  OUTLINED_FUNCTION_284_0();
  OUTLINED_FUNCTION_238_2();
  v7 = type metadata accessor for Searchfoundation_Command(0);
  OUTLINED_FUNCTION_11(v7);
  return OUTLINED_FUNCTION_466_0();
}

Swift::Void __swiftcall Searchfoundation_CardSection.clearPreviewCommand()()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8E98, &qword_1B964D698);
  OUTLINED_FUNCTION_183(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_31_2();
  v7 = type metadata accessor for Searchfoundation_CardSection(v6);
  v8 = OUTLINED_FUNCTION_182_0(v7);
  v9 = *(v0 + v1);
  if ((v8 & 1) == 0)
  {
    OUTLINED_FUNCTION_658_0();
    v10 = OUTLINED_FUNCTION_40_0();
    v11 = sub_1B9372C5C(v10);
    OUTLINED_FUNCTION_157_2(v11);
  }

  v12 = type metadata accessor for Searchfoundation_Command(0);
  OUTLINED_FUNCTION_274_1(v12);
  OUTLINED_FUNCTION_290_0();
  OUTLINED_FUNCTION_122_0();
  sub_1B8DAA170();
  swift_endAccess();
}

void sub_1B92E8228(uint64_t *a1)
{
  v1 = *a1;

  Searchfoundation_CardSection.previewButtonItems.setter();
}

uint64_t Searchfoundation_CardSection.previewButtonItems.modify()
{
  v0 = OUTLINED_FUNCTION_194_0();
  v1 = __swift_coroFrameAllocStub(v0);
  v2 = OUTLINED_FUNCTION_30(v1);
  v3 = type metadata accessor for Searchfoundation_CardSection(v2);
  OUTLINED_FUNCTION_53_2(v3);
  OUTLINED_FUNCTION_68_0();
  OUTLINED_FUNCTION_195_0();

  return OUTLINED_FUNCTION_514();
}

void sub_1B92E8370(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  Searchfoundation_CardSection.cardSectionDetail.setter();
}

uint64_t Searchfoundation_CardSection.cardSectionDetail.modify()
{
  v0 = OUTLINED_FUNCTION_126();
  v1 = __swift_coroFrameAllocStub(v0);
  v2 = OUTLINED_FUNCTION_11_10(v1);
  v3 = type metadata accessor for Searchfoundation_CardSection(v2);
  OUTLINED_FUNCTION_254_1(v3);
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_130_0();

  return OUTLINED_FUNCTION_514();
}

void sub_1B92E84CC(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  Searchfoundation_CardSection.previewButtonItemsTitle.setter();
}

uint64_t Searchfoundation_CardSection.previewButtonItemsTitle.modify()
{
  v0 = OUTLINED_FUNCTION_126();
  v1 = __swift_coroFrameAllocStub(v0);
  v2 = OUTLINED_FUNCTION_11_10(v1);
  v3 = type metadata accessor for Searchfoundation_CardSection(v2);
  OUTLINED_FUNCTION_254_1(v3);
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_130_0();

  return OUTLINED_FUNCTION_514();
}

uint64_t Searchfoundation_CardSection.backgroundColor.getter@<X0>(int a1@<W8>)
{
  v3 = OUTLINED_FUNCTION_236();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v8);
  v9 = OUTLINED_FUNCTION_22_3();
  OUTLINED_FUNCTION_449_0(v9);
  OUTLINED_FUNCTION_101_0();
  OUTLINED_FUNCTION_39();
  v10 = type metadata accessor for Searchfoundation_Color(0);
  OUTLINED_FUNCTION_29_14(v10);
  if (v11)
  {
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    if (qword_1ED9CD1C0 != -1)
    {
      OUTLINED_FUNCTION_4_45();
    }

    result = OUTLINED_FUNCTION_59_0();
    if (a1 != 1)
    {
      return sub_1B8D9207C(v1, &qword_1EBACB050, &unk_1B96B7BD0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_5_36();
    OUTLINED_FUNCTION_182();
    return sub_1B944B02C();
  }

  return result;
}

uint64_t Searchfoundation_CardSection.backgroundColor.setter()
{
  OUTLINED_FUNCTION_183_0();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACB050, &unk_1B96B7BD0);
  OUTLINED_FUNCTION_183(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_31_2();
  v7 = OUTLINED_FUNCTION_1113(v6);
  v8 = *(v0 + v1);
  if ((v7 & 1) == 0)
  {
    OUTLINED_FUNCTION_658_0();
    v9 = OUTLINED_FUNCTION_40_0();
    v10 = sub_1B9372C5C(v9);
    OUTLINED_FUNCTION_135(v10);
  }

  OUTLINED_FUNCTION_5_36();
  OUTLINED_FUNCTION_294();
  sub_1B944B02C();
  type metadata accessor for Searchfoundation_Color(0);
  v11 = OUTLINED_FUNCTION_53_0();
  __swift_storeEnumTagSinglePayload(v11, v12, v13, v14);
  OUTLINED_FUNCTION_73_0();
  OUTLINED_FUNCTION_122_0();
  sub_1B8DAA170();
  return swift_endAccess();
}

void Searchfoundation_CardSection.backgroundColor.modify()
{
  OUTLINED_FUNCTION_284();
  v3 = OUTLINED_FUNCTION_185_0();
  v4 = __swift_coroFrameAllocStub(v3);
  OUTLINED_FUNCTION_66_0(v4);
  v5 = OUTLINED_FUNCTION_491();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(v5, v6);
  OUTLINED_FUNCTION_183(v7);
  v9 = __swift_coroFrameAllocStub(*(v8 + 64));
  v10 = OUTLINED_FUNCTION_71(v9);
  v11 = type metadata accessor for Searchfoundation_Color(v10);
  OUTLINED_FUNCTION_135_0(v11);
  v13 = __swift_coroFrameAllocStub(*(v12 + 64));
  v14 = OUTLINED_FUNCTION_187(v13);
  *(v2 + 48) = __swift_coroFrameAllocStub(v14);
  OUTLINED_FUNCTION_209_4();
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_55_2();
  sub_1B8D92024();
  OUTLINED_FUNCTION_17_2();
  if (v15)
  {
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    v16 = *(v0 + 20);
    if (qword_1ED9CD1C0 != -1)
    {
      OUTLINED_FUNCTION_4_45();
    }

    OUTLINED_FUNCTION_57_2();
    if (v0 != 1)
    {
      sub_1B8D9207C(v1, &qword_1EBACB050, &unk_1B96B7BD0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_5_36();
    OUTLINED_FUNCTION_246();
    sub_1B944B02C();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_283();
}

uint64_t Searchfoundation_CardSection.hasBackgroundColor.getter()
{
  v0 = OUTLINED_FUNCTION_514();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_183(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_22_3();
  OUTLINED_FUNCTION_449_0(v6);
  OUTLINED_FUNCTION_284_0();
  OUTLINED_FUNCTION_238_2();
  v7 = type metadata accessor for Searchfoundation_Color(0);
  OUTLINED_FUNCTION_11(v7);
  return OUTLINED_FUNCTION_466_0();
}

Swift::Void __swiftcall Searchfoundation_CardSection.clearBackgroundColor()()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACB050, &unk_1B96B7BD0);
  OUTLINED_FUNCTION_183(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_31_2();
  v7 = type metadata accessor for Searchfoundation_CardSection(v6);
  v8 = OUTLINED_FUNCTION_182_0(v7);
  v9 = *(v0 + v1);
  if ((v8 & 1) == 0)
  {
    OUTLINED_FUNCTION_658_0();
    v10 = OUTLINED_FUNCTION_40_0();
    v11 = sub_1B9372C5C(v10);
    OUTLINED_FUNCTION_157_2(v11);
  }

  v12 = type metadata accessor for Searchfoundation_Color(0);
  OUTLINED_FUNCTION_274_1(v12);
  OUTLINED_FUNCTION_290_0();
  OUTLINED_FUNCTION_122_0();
  sub_1B8DAA170();
  swift_endAccess();
}

uint64_t sub_1B92E8AE8(uint64_t a1, uint64_t a2)
{
  v4 = OUTLINED_FUNCTION_178_1();
  v6 = v5(v4);
  OUTLINED_FUNCTION_308_0(v6);
  return *(v2 + a2);
}

void sub_1B92E8B6C()
{
  OUTLINED_FUNCTION_184_0();
  OUTLINED_FUNCTION_353_0();
  v6 = OUTLINED_FUNCTION_313();
  v8 = v7(v6);
  v9 = OUTLINED_FUNCTION_216_1(v8);
  v10 = *(v1 + v5);
  if ((v9 & 1) == 0)
  {
    v11 = v4(0);
    OUTLINED_FUNCTION_57_0(v11);
    swift_allocObject();
    v12 = OUTLINED_FUNCTION_40_0();
    v13 = v3(v12);
    OUTLINED_FUNCTION_192_2(v13);
  }

  OUTLINED_FUNCTION_271_0();
  OUTLINED_FUNCTION_9_3();
  *(v10 + v2) = v0 & 1;
  OUTLINED_FUNCTION_183_2();
}

uint64_t Searchfoundation_CardSection.shouldHideInAmbientMode.modify()
{
  v0 = OUTLINED_FUNCTION_18_3();
  v1 = __swift_coroFrameAllocStub(v0);
  v2 = OUTLINED_FUNCTION_6_11(v1);
  v3 = type metadata accessor for Searchfoundation_CardSection(v2);
  OUTLINED_FUNCTION_124_0(v3);
  OUTLINED_FUNCTION_68_0();
  OUTLINED_FUNCTION_51();
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B92E8C84()
{
  OUTLINED_FUNCTION_284();
  OUTLINED_FUNCTION_353_0();
  v4 = *v3;
  v5 = *(*v3 + 80);
  v6 = *(*v3 + 72);
  v7 = *(*v3 + 84);
  v8 = *(v6 + v5);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *(v6 + v5);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v11 = *(v4 + 80);
    v12 = *(v4 + 72);
    v13 = v2(0);
    OUTLINED_FUNCTION_57_0(v13);
    swift_allocObject();
    v14 = OUTLINED_FUNCTION_40_0();
    v15 = v1(v14);
    OUTLINED_FUNCTION_529_0(v15);
  }

  OUTLINED_FUNCTION_271_0();
  OUTLINED_FUNCTION_11_4();
  *(v10 + v0) = v7;
  OUTLINED_FUNCTION_283();

  free(v16);
}

void sub_1B92E8D54(uint64_t *a1)
{
  v1 = *a1;

  Searchfoundation_CardSection.leadingSwipeButtonItems.setter();
}

uint64_t Searchfoundation_CardSection.leadingSwipeButtonItems.modify()
{
  v0 = OUTLINED_FUNCTION_194_0();
  v1 = __swift_coroFrameAllocStub(v0);
  v2 = OUTLINED_FUNCTION_30(v1);
  v3 = type metadata accessor for Searchfoundation_CardSection(v2);
  OUTLINED_FUNCTION_53_2(v3);
  OUTLINED_FUNCTION_68_0();
  OUTLINED_FUNCTION_195_0();

  return OUTLINED_FUNCTION_514();
}

void sub_1B92E8E9C(uint64_t *a1)
{
  v1 = *a1;

  Searchfoundation_CardSection.trailingSwipeButtonItems.setter();
}

uint64_t Searchfoundation_CardSection.trailingSwipeButtonItems.modify()
{
  v0 = OUTLINED_FUNCTION_194_0();
  v1 = __swift_coroFrameAllocStub(v0);
  v2 = OUTLINED_FUNCTION_30(v1);
  v3 = type metadata accessor for Searchfoundation_CardSection(v2);
  OUTLINED_FUNCTION_53_2(v3);
  OUTLINED_FUNCTION_68_0();
  OUTLINED_FUNCTION_195_0();

  return OUTLINED_FUNCTION_514();
}

void sub_1B92E8FE4(uint64_t *a1)
{
  v1 = *a1;

  Searchfoundation_CardSection.punchoutOptions.setter();
}

uint64_t Searchfoundation_CardSection.punchoutOptions.modify()
{
  v0 = OUTLINED_FUNCTION_194_0();
  v1 = __swift_coroFrameAllocStub(v0);
  v2 = OUTLINED_FUNCTION_30(v1);
  v3 = type metadata accessor for Searchfoundation_CardSection(v2);
  OUTLINED_FUNCTION_53_2(v3);
  OUTLINED_FUNCTION_68_0();
  OUTLINED_FUNCTION_195_0();

  return OUTLINED_FUNCTION_514();
}

void sub_1B92E912C(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  Searchfoundation_CardSection.punchoutPickerTitle.setter();
}

uint64_t Searchfoundation_CardSection.punchoutPickerTitle.modify()
{
  v0 = OUTLINED_FUNCTION_126();
  v1 = __swift_coroFrameAllocStub(v0);
  v2 = OUTLINED_FUNCTION_11_10(v1);
  v3 = type metadata accessor for Searchfoundation_CardSection(v2);
  OUTLINED_FUNCTION_254_1(v3);
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_130_0();

  return OUTLINED_FUNCTION_514();
}

void sub_1B92E9288(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  Searchfoundation_CardSection.punchoutPickerDismissText.setter();
}

uint64_t Searchfoundation_CardSection.punchoutPickerDismissText.modify()
{
  v0 = OUTLINED_FUNCTION_126();
  v1 = __swift_coroFrameAllocStub(v0);
  v2 = OUTLINED_FUNCTION_11_10(v1);
  v3 = type metadata accessor for Searchfoundation_CardSection(v2);
  OUTLINED_FUNCTION_254_1(v3);
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_130_0();

  return OUTLINED_FUNCTION_514();
}

uint64_t Searchfoundation_CardSection.canBeHidden.modify()
{
  v0 = OUTLINED_FUNCTION_18_3();
  v1 = __swift_coroFrameAllocStub(v0);
  v2 = OUTLINED_FUNCTION_6_11(v1);
  v3 = type metadata accessor for Searchfoundation_CardSection(v2);
  OUTLINED_FUNCTION_124_0(v3);
  OUTLINED_FUNCTION_68_0();
  OUTLINED_FUNCTION_51();
  return OUTLINED_FUNCTION_105_0();
}

uint64_t Searchfoundation_CardSection.hasTopPadding_p.modify()
{
  v0 = OUTLINED_FUNCTION_18_3();
  v1 = __swift_coroFrameAllocStub(v0);
  v2 = OUTLINED_FUNCTION_6_11(v1);
  v3 = type metadata accessor for Searchfoundation_CardSection(v2);
  OUTLINED_FUNCTION_124_0(v3);
  OUTLINED_FUNCTION_68_0();
  OUTLINED_FUNCTION_51();
  return OUTLINED_FUNCTION_105_0();
}

uint64_t Searchfoundation_CardSection.hasBottomPadding_p.modify()
{
  v0 = OUTLINED_FUNCTION_18_3();
  v1 = __swift_coroFrameAllocStub(v0);
  v2 = OUTLINED_FUNCTION_6_11(v1);
  v3 = type metadata accessor for Searchfoundation_CardSection(v2);
  OUTLINED_FUNCTION_124_0(v3);
  OUTLINED_FUNCTION_68_0();
  OUTLINED_FUNCTION_51();
  return OUTLINED_FUNCTION_105_0();
}

uint64_t sub_1B92E96E4@<X0>(uint64_t (*a1)(void)@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = a1(0);
  OUTLINED_FUNCTION_1372(v5);
  v7 = v6 + *a2;
  result = OUTLINED_FUNCTION_6_2();
  v9 = *(v7 + 8);
  *a3 = *v7;
  *(a3 + 8) = v9;
  return result;
}

void sub_1B92E9790()
{
  OUTLINED_FUNCTION_184_0();
  v4 = v3;
  OUTLINED_FUNCTION_451_0();
  v5 = v0;
  v7 = *v6;
  v8 = *(v6 + 8);
  v10 = *(v9(0) + 20);
  v11 = *(v0 + v10);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v13 = *(v0 + v10);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v14 = v2(0);
    OUTLINED_FUNCTION_57_0(v14);
    swift_allocObject();
    v15 = OUTLINED_FUNCTION_40_0();
    v13 = v1(v15);
    *(v5 + v10) = v13;
  }

  v16 = v13 + *v4;
  OUTLINED_FUNCTION_214_2();
  *v16 = v7;
  *(v16 + 8) = v8;
  OUTLINED_FUNCTION_183_2();
}

uint64_t Searchfoundation_CardSection.separatorStyle.modify()
{
  v0 = OUTLINED_FUNCTION_196_1();
  v1 = __swift_coroFrameAllocStub(v0);
  v2 = OUTLINED_FUNCTION_37_3(v1);
  v3 = type metadata accessor for Searchfoundation_CardSection(v2);
  OUTLINED_FUNCTION_264_1(v3);
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_117_0();
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B92E98C4()
{
  OUTLINED_FUNCTION_284();
  OUTLINED_FUNCTION_353_0();
  OUTLINED_FUNCTION_238(v4);
  v6 = *(v5 + 72);
  v7 = *(v0 + 84);
  v8 = *(v0 + 88);
  v9 = *(v0 + 80);
  v10 = *(v8 + v7);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v12 = *(v8 + v7);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v13 = *(v0 + 84);
    v14 = *(v0 + 88);
    v15 = v3(0);
    OUTLINED_FUNCTION_57_0(v15);
    swift_allocObject();
    v16 = OUTLINED_FUNCTION_40_0();
    v12 = v2(v16);
    *(v14 + v13) = v12;
  }

  v17 = v12 + *v1;
  OUTLINED_FUNCTION_211_0();
  *v17 = v6;
  *(v17 + 8) = v9;
  OUTLINED_FUNCTION_283();

  free(v18);
}

void sub_1B92E99A8(uint64_t *a1)
{
  v1 = *a1;

  Searchfoundation_CardSection.referencedCommands.setter();
}

uint64_t Searchfoundation_CardSection.referencedCommands.modify()
{
  v0 = OUTLINED_FUNCTION_194_0();
  v1 = __swift_coroFrameAllocStub(v0);
  v2 = OUTLINED_FUNCTION_30(v1);
  v3 = type metadata accessor for Searchfoundation_CardSection(v2);
  OUTLINED_FUNCTION_53_2(v3);
  OUTLINED_FUNCTION_68_0();
  OUTLINED_FUNCTION_195_0();

  return OUTLINED_FUNCTION_514();
}

uint64_t Searchfoundation_CardSection.forceEnable3Dtouch.modify()
{
  v0 = OUTLINED_FUNCTION_18_3();
  v1 = __swift_coroFrameAllocStub(v0);
  v2 = OUTLINED_FUNCTION_6_11(v1);
  v3 = type metadata accessor for Searchfoundation_CardSection(v2);
  OUTLINED_FUNCTION_124_0(v3);
  OUTLINED_FUNCTION_68_0();
  OUTLINED_FUNCTION_51();
  return OUTLINED_FUNCTION_105_0();
}

uint64_t Searchfoundation_CardSection.shouldShowInSmartDialog.modify()
{
  v0 = OUTLINED_FUNCTION_18_3();
  v1 = __swift_coroFrameAllocStub(v0);
  v2 = OUTLINED_FUNCTION_6_11(v1);
  v3 = type metadata accessor for Searchfoundation_CardSection(v2);
  OUTLINED_FUNCTION_124_0(v3);
  OUTLINED_FUNCTION_68_0();
  OUTLINED_FUNCTION_51();
  return OUTLINED_FUNCTION_105_0();
}

uint64_t Searchfoundation_CardSection.appEntityAnnotation.getter()
{
  v1 = OUTLINED_FUNCTION_236();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_183(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_22_3();
  OUTLINED_FUNCTION_449_0(v7);
  OUTLINED_FUNCTION_101_0();
  OUTLINED_FUNCTION_39();
  v8 = type metadata accessor for Searchfoundation_AppEntityAnnotation();
  OUTLINED_FUNCTION_29_14(v8);
  if (v9)
  {
    OUTLINED_FUNCTION_92_0();
    OUTLINED_FUNCTION_251_0();
    result = OUTLINED_FUNCTION_9_2();
    if (!v9)
    {
      return sub_1B8D9207C(v0, &unk_1EBACC1D8, &qword_1B96B94F0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_47_13();
    OUTLINED_FUNCTION_182();
    return sub_1B944B02C();
  }

  return result;
}

uint64_t Searchfoundation_CardSection.appEntityAnnotation.setter()
{
  OUTLINED_FUNCTION_183_0();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBACC1D8, &qword_1B96B94F0);
  OUTLINED_FUNCTION_183(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_31_2();
  v7 = OUTLINED_FUNCTION_1113(v6);
  v8 = *(v0 + v1);
  if ((v7 & 1) == 0)
  {
    OUTLINED_FUNCTION_658_0();
    v9 = OUTLINED_FUNCTION_40_0();
    v10 = sub_1B9372C5C(v9);
    OUTLINED_FUNCTION_135(v10);
  }

  OUTLINED_FUNCTION_47_13();
  OUTLINED_FUNCTION_294();
  sub_1B944B02C();
  type metadata accessor for Searchfoundation_AppEntityAnnotation();
  v11 = OUTLINED_FUNCTION_53_0();
  __swift_storeEnumTagSinglePayload(v11, v12, v13, v14);
  OUTLINED_FUNCTION_73_0();
  OUTLINED_FUNCTION_122_0();
  sub_1B8DAA170();
  return swift_endAccess();
}

void Searchfoundation_CardSection.appEntityAnnotation.modify()
{
  OUTLINED_FUNCTION_284();
  v2 = OUTLINED_FUNCTION_185_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_66_0(v3);
  v4 = OUTLINED_FUNCTION_491();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_183(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  OUTLINED_FUNCTION_71(v8);
  v9 = type metadata accessor for Searchfoundation_AppEntityAnnotation();
  OUTLINED_FUNCTION_135_0(v9);
  v11 = __swift_coroFrameAllocStub(*(v10 + 64));
  v12 = OUTLINED_FUNCTION_187(v11);
  *(v1 + 48) = __swift_coroFrameAllocStub(v12);
  OUTLINED_FUNCTION_209_4();
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_55_2();
  sub_1B8D92024();
  OUTLINED_FUNCTION_17_2();
  if (v13)
  {
    OUTLINED_FUNCTION_114_0();
    OUTLINED_FUNCTION_280_0();
    OUTLINED_FUNCTION_17_2();
    if (!v13)
    {
      sub_1B8D9207C(v0, &unk_1EBACC1D8, &qword_1B96B94F0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_47_13();
    OUTLINED_FUNCTION_246();
    sub_1B944B02C();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_283();
}

uint64_t Searchfoundation_CardSection.hasAppEntityAnnotation.getter()
{
  v0 = OUTLINED_FUNCTION_514();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_183(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_22_3();
  OUTLINED_FUNCTION_449_0(v6);
  OUTLINED_FUNCTION_284_0();
  OUTLINED_FUNCTION_238_2();
  v7 = type metadata accessor for Searchfoundation_AppEntityAnnotation();
  OUTLINED_FUNCTION_11(v7);
  return OUTLINED_FUNCTION_466_0();
}

Swift::Void __swiftcall Searchfoundation_CardSection.clearAppEntityAnnotation()()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBACC1D8, &qword_1B96B94F0);
  OUTLINED_FUNCTION_183(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_31_2();
  v7 = type metadata accessor for Searchfoundation_CardSection(v6);
  v8 = OUTLINED_FUNCTION_182_0(v7);
  v9 = *(v0 + v1);
  if ((v8 & 1) == 0)
  {
    OUTLINED_FUNCTION_658_0();
    v10 = OUTLINED_FUNCTION_40_0();
    v11 = sub_1B9372C5C(v10);
    OUTLINED_FUNCTION_157_2(v11);
  }

  v12 = type metadata accessor for Searchfoundation_AppEntityAnnotation();
  OUTLINED_FUNCTION_274_1(v12);
  OUTLINED_FUNCTION_290_0();
  OUTLINED_FUNCTION_122_0();
  sub_1B8DAA170();
  swift_endAccess();
}

void sub_1B92EA150(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  Searchfoundation_CardSection.emphasisSubjectID.setter();
}

uint64_t Searchfoundation_CardSection.emphasisSubjectID.modify()
{
  v0 = OUTLINED_FUNCTION_126();
  v1 = __swift_coroFrameAllocStub(v0);
  v2 = OUTLINED_FUNCTION_11_10(v1);
  v3 = type metadata accessor for Searchfoundation_CardSection(v2);
  OUTLINED_FUNCTION_254_1(v3);
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_130_0();

  return OUTLINED_FUNCTION_514();
}

uint64_t Searchfoundation_CardSection.increasedContrastMode.modify()
{
  v0 = OUTLINED_FUNCTION_196_1();
  v1 = __swift_coroFrameAllocStub(v0);
  v2 = OUTLINED_FUNCTION_37_3(v1);
  v3 = type metadata accessor for Searchfoundation_CardSection(v2);
  OUTLINED_FUNCTION_264_1(v3);
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_117_0();
  return OUTLINED_FUNCTION_105_0();
}

uint64_t Searchfoundation_CardSection.secondaryCommand.getter@<X0>(int a1@<W8>)
{
  v3 = OUTLINED_FUNCTION_236();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v8);
  v9 = OUTLINED_FUNCTION_22_3();
  OUTLINED_FUNCTION_449_0(v9);
  OUTLINED_FUNCTION_101_0();
  OUTLINED_FUNCTION_39();
  v10 = type metadata accessor for Searchfoundation_Command(0);
  OUTLINED_FUNCTION_29_14(v10);
  if (v11)
  {
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    if (qword_1ED9D3048 != -1)
    {
      OUTLINED_FUNCTION_125_4();
    }

    result = OUTLINED_FUNCTION_59_0();
    if (a1 != 1)
    {
      return sub_1B8D9207C(v1, &qword_1EBAB8E98, &qword_1B964D698);
    }
  }

  else
  {
    OUTLINED_FUNCTION_17_24();
    OUTLINED_FUNCTION_182();
    return sub_1B944B02C();
  }

  return result;
}

uint64_t Searchfoundation_CardSection.secondaryCommand.setter()
{
  OUTLINED_FUNCTION_183_0();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8E98, &qword_1B964D698);
  OUTLINED_FUNCTION_183(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_31_2();
  v7 = OUTLINED_FUNCTION_1113(v6);
  v8 = *(v0 + v1);
  if ((v7 & 1) == 0)
  {
    OUTLINED_FUNCTION_658_0();
    v9 = OUTLINED_FUNCTION_40_0();
    v10 = sub_1B9372C5C(v9);
    OUTLINED_FUNCTION_135(v10);
  }

  OUTLINED_FUNCTION_17_24();
  OUTLINED_FUNCTION_294();
  sub_1B944B02C();
  OUTLINED_FUNCTION_652_1();
  v11 = OUTLINED_FUNCTION_53_0();
  __swift_storeEnumTagSinglePayload(v11, v12, v13, v14);
  OUTLINED_FUNCTION_73_0();
  OUTLINED_FUNCTION_122_0();
  sub_1B8DAA170();
  return swift_endAccess();
}

void Searchfoundation_CardSection.secondaryCommand.modify()
{
  OUTLINED_FUNCTION_284();
  v3 = OUTLINED_FUNCTION_185_0();
  v4 = __swift_coroFrameAllocStub(v3);
  OUTLINED_FUNCTION_66_0(v4);
  v5 = OUTLINED_FUNCTION_491();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(v5, v6);
  OUTLINED_FUNCTION_183(v7);
  v9 = __swift_coroFrameAllocStub(*(v8 + 64));
  v10 = OUTLINED_FUNCTION_71(v9);
  v11 = type metadata accessor for Searchfoundation_Command(v10);
  OUTLINED_FUNCTION_135_0(v11);
  v13 = __swift_coroFrameAllocStub(*(v12 + 64));
  v14 = OUTLINED_FUNCTION_187(v13);
  *(v2 + 48) = __swift_coroFrameAllocStub(v14);
  OUTLINED_FUNCTION_209_4();
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_55_2();
  sub_1B8D92024();
  OUTLINED_FUNCTION_17_2();
  if (v15)
  {
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    v16 = *(v0 + 20);
    if (qword_1ED9D3048 != -1)
    {
      OUTLINED_FUNCTION_125_4();
    }

    OUTLINED_FUNCTION_57_2();
    if (v0 != 1)
    {
      sub_1B8D9207C(v1, &qword_1EBAB8E98, &qword_1B964D698);
    }
  }

  else
  {
    OUTLINED_FUNCTION_17_24();
    OUTLINED_FUNCTION_246();
    sub_1B944B02C();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_283();
}

uint64_t Searchfoundation_CardSection.hasSecondaryCommand.getter()
{
  v0 = OUTLINED_FUNCTION_514();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_183(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_22_3();
  OUTLINED_FUNCTION_449_0(v6);
  OUTLINED_FUNCTION_284_0();
  OUTLINED_FUNCTION_238_2();
  v7 = type metadata accessor for Searchfoundation_Command(0);
  OUTLINED_FUNCTION_11(v7);
  return OUTLINED_FUNCTION_466_0();
}

Swift::Void __swiftcall Searchfoundation_CardSection.clearSecondaryCommand()()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8E98, &qword_1B964D698);
  OUTLINED_FUNCTION_183(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_31_2();
  v7 = type metadata accessor for Searchfoundation_CardSection(v6);
  v8 = OUTLINED_FUNCTION_182_0(v7);
  v9 = *(v0 + v1);
  if ((v8 & 1) == 0)
  {
    OUTLINED_FUNCTION_658_0();
    v10 = OUTLINED_FUNCTION_40_0();
    v11 = sub_1B9372C5C(v10);
    OUTLINED_FUNCTION_157_2(v11);
  }

  v12 = type metadata accessor for Searchfoundation_Command(0);
  OUTLINED_FUNCTION_274_1(v12);
  OUTLINED_FUNCTION_290_0();
  OUTLINED_FUNCTION_122_0();
  sub_1B8DAA170();
  swift_endAccess();
}

uint64_t Searchfoundation_CardSection.requiredLevelOfDetail.modify()
{
  v0 = OUTLINED_FUNCTION_196_1();
  v1 = __swift_coroFrameAllocStub(v0);
  v2 = OUTLINED_FUNCTION_37_3(v1);
  v3 = type metadata accessor for Searchfoundation_CardSection(v2);
  OUTLINED_FUNCTION_264_1(v3);
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_117_0();
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B92EA964(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  Searchfoundation_CardSection.racFeedbackSubfeatureID.setter();
}

uint64_t Searchfoundation_CardSection.racFeedbackSubfeatureID.modify()
{
  v0 = OUTLINED_FUNCTION_126();
  v1 = __swift_coroFrameAllocStub(v0);
  v2 = OUTLINED_FUNCTION_11_10(v1);
  v3 = type metadata accessor for Searchfoundation_CardSection(v2);
  OUTLINED_FUNCTION_254_1(v3);
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_130_0();

  return OUTLINED_FUNCTION_514();
}

void sub_1B92EAAC0(uint64_t *a1)
{
  v1 = *a1;

  Searchfoundation_CardSection.racFeedbackLoggingContent.setter();
}

uint64_t Searchfoundation_CardSection.racFeedbackLoggingContent.modify()
{
  v0 = OUTLINED_FUNCTION_194_0();
  v1 = __swift_coroFrameAllocStub(v0);
  v2 = OUTLINED_FUNCTION_30(v1);
  v3 = type metadata accessor for Searchfoundation_CardSection(v2);
  OUTLINED_FUNCTION_53_2(v3);
  OUTLINED_FUNCTION_68_0();
  OUTLINED_FUNCTION_195_0();

  return OUTLINED_FUNCTION_514();
}

void sub_1B92EAC08(uint64_t *a1)
{
  v1 = *a1;

  Searchfoundation_CardSection.copyableItems.setter();
}

uint64_t Searchfoundation_CardSection.copyableItems.modify()
{
  v0 = OUTLINED_FUNCTION_194_0();
  v1 = __swift_coroFrameAllocStub(v0);
  v2 = OUTLINED_FUNCTION_30(v1);
  v3 = type metadata accessor for Searchfoundation_CardSection(v2);
  OUTLINED_FUNCTION_53_2(v3);
  OUTLINED_FUNCTION_68_0();
  OUTLINED_FUNCTION_195_0();

  return OUTLINED_FUNCTION_514();
}

uint64_t Searchfoundation_CardSectionValue.appLinkCardSection.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OUTLINED_FUNCTION_236();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v8);
  v9 = OUTLINED_FUNCTION_22_3();
  OUTLINED_FUNCTION_225_6(v9);
  OUTLINED_FUNCTION_101_0();
  OUTLINED_FUNCTION_39();
  v10 = type metadata accessor for Searchfoundation_AppLinkCardSection();
  OUTLINED_FUNCTION_29_14(v10);
  if (v11)
  {
    Searchfoundation_AppLinkCardSection.init()(a1);
    result = OUTLINED_FUNCTION_9_2();
    if (!v11)
    {
      return sub_1B8D9207C(v1, &unk_1EBACC1E0, &qword_1B96B94F8);
    }
  }

  else
  {
    OUTLINED_FUNCTION_219_4();
    return sub_1B944B02C();
  }

  return result;
}

uint64_t Searchfoundation_CardSectionValue.appLinkCardSection.setter()
{
  OUTLINED_FUNCTION_183_0();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBACC1E0, &qword_1B96B94F8);
  OUTLINED_FUNCTION_183(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_31_2();
  v7 = OUTLINED_FUNCTION_742_0(v6);
  v8 = *(v0 + v1);
  if ((v7 & 1) == 0)
  {
    OUTLINED_FUNCTION_424_1();
    v9 = OUTLINED_FUNCTION_40_0();
    v10 = sub_1B937BD18(v9);
    OUTLINED_FUNCTION_135(v10);
  }

  OUTLINED_FUNCTION_623_0();
  OUTLINED_FUNCTION_294();
  sub_1B944B02C();
  type metadata accessor for Searchfoundation_AppLinkCardSection();
  v11 = OUTLINED_FUNCTION_53_0();
  __swift_storeEnumTagSinglePayload(v11, v12, v13, v14);
  OUTLINED_FUNCTION_73_0();
  OUTLINED_FUNCTION_122_0();
  sub_1B8DAA170();
  return swift_endAccess();
}

void Searchfoundation_CardSectionValue.appLinkCardSection.modify()
{
  OUTLINED_FUNCTION_284();
  v1 = OUTLINED_FUNCTION_185_0();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_66_0(v2);
  v3 = OUTLINED_FUNCTION_491();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  OUTLINED_FUNCTION_71(v7);
  v8 = type metadata accessor for Searchfoundation_AppLinkCardSection();
  OUTLINED_FUNCTION_135_0(v8);
  v10 = __swift_coroFrameAllocStub(*(v9 + 64));
  v11 = OUTLINED_FUNCTION_187(v10);
  v12 = __swift_coroFrameAllocStub(v11);
  OUTLINED_FUNCTION_39_13(v12);
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_55_2();
  sub_1B8D92024();
  OUTLINED_FUNCTION_59_13();
  if (v13)
  {
    OUTLINED_FUNCTION_37_12(MEMORY[0x1E69E7CC0]);
    OUTLINED_FUNCTION_871_0(v14);
    v15 = OUTLINED_FUNCTION_1052();
    v16 = type metadata accessor for Searchfoundation_Color(v15);
    OUTLINED_FUNCTION_6_19(v16);
    if (!v13)
    {
      sub_1B8D9207C(v0, &unk_1EBACC1E0, &qword_1B96B94F8);
    }
  }

  else
  {
    OUTLINED_FUNCTION_623_0();
    OUTLINED_FUNCTION_246();
    sub_1B944B02C();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_283();
}

uint64_t Searchfoundation_CardSectionValue.hasAppLinkCardSection.getter()
{
  v0 = OUTLINED_FUNCTION_514();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_183(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_22_3();
  OUTLINED_FUNCTION_225_6(v6);
  OUTLINED_FUNCTION_284_0();
  OUTLINED_FUNCTION_238_2();
  v7 = type metadata accessor for Searchfoundation_AppLinkCardSection();
  OUTLINED_FUNCTION_11(v7);
  return OUTLINED_FUNCTION_466_0();
}

Swift::Void __swiftcall Searchfoundation_CardSectionValue.clearAppLinkCardSection()()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBACC1E0, &qword_1B96B94F8);
  OUTLINED_FUNCTION_183(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_31_2();
  v7 = OUTLINED_FUNCTION_741_0(v6);
  v8 = *(v0 + v1);
  if ((v7 & 1) == 0)
  {
    OUTLINED_FUNCTION_424_1();
    v9 = OUTLINED_FUNCTION_40_0();
    v10 = sub_1B937BD18(v9);
    OUTLINED_FUNCTION_157_2(v10);
  }

  v11 = type metadata accessor for Searchfoundation_AppLinkCardSection();
  OUTLINED_FUNCTION_274_1(v11);
  OUTLINED_FUNCTION_290_0();
  OUTLINED_FUNCTION_122_0();
  sub_1B8DAA170();
  swift_endAccess();
}

uint64_t Searchfoundation_CardSectionValue.descriptionCardSection.getter@<X0>(int a1@<W8>)
{
  v3 = OUTLINED_FUNCTION_236();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v8);
  v9 = OUTLINED_FUNCTION_22_3();
  OUTLINED_FUNCTION_225_6(v9);
  OUTLINED_FUNCTION_101_0();
  OUTLINED_FUNCTION_39();
  v10 = type metadata accessor for Searchfoundation_DescriptionCardSection(0);
  OUTLINED_FUNCTION_29_14(v10);
  if (v11)
  {
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    if (qword_1EBAB8390 != -1)
    {
      OUTLINED_FUNCTION_1111();
    }

    result = OUTLINED_FUNCTION_59_0();
    if (a1 != 1)
    {
      return sub_1B8D9207C(v1, &qword_1EBACC1E8, &qword_1B96B9500);
    }
  }

  else
  {
    OUTLINED_FUNCTION_219_4();
    return sub_1B944B02C();
  }

  return result;
}

uint64_t Searchfoundation_CardSectionValue.descriptionCardSection.setter()
{
  OUTLINED_FUNCTION_183_0();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACC1E8, &qword_1B96B9500);
  OUTLINED_FUNCTION_183(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_31_2();
  v7 = OUTLINED_FUNCTION_742_0(v6);
  v8 = *(v0 + v1);
  if ((v7 & 1) == 0)
  {
    OUTLINED_FUNCTION_424_1();
    v9 = OUTLINED_FUNCTION_40_0();
    v10 = sub_1B937BD18(v9);
    OUTLINED_FUNCTION_135(v10);
  }

  OUTLINED_FUNCTION_622_1();
  OUTLINED_FUNCTION_294();
  sub_1B944B02C();
  type metadata accessor for Searchfoundation_DescriptionCardSection(0);
  v11 = OUTLINED_FUNCTION_53_0();
  __swift_storeEnumTagSinglePayload(v11, v12, v13, v14);
  OUTLINED_FUNCTION_73_0();
  OUTLINED_FUNCTION_122_0();
  sub_1B8DAA170();
  return swift_endAccess();
}

void Searchfoundation_CardSectionValue.descriptionCardSection.modify()
{
  OUTLINED_FUNCTION_284();
  v2 = OUTLINED_FUNCTION_185_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_66_0(v3);
  v4 = OUTLINED_FUNCTION_491();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_183(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_71(v8);
  v10 = type metadata accessor for Searchfoundation_DescriptionCardSection(v9);
  OUTLINED_FUNCTION_135_0(v10);
  v12 = __swift_coroFrameAllocStub(*(v11 + 64));
  v13 = OUTLINED_FUNCTION_187(v12);
  v14 = __swift_coroFrameAllocStub(v13);
  OUTLINED_FUNCTION_39_13(v14);
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_55_2();
  sub_1B8D92024();
  OUTLINED_FUNCTION_17_2();
  if (v15)
  {
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    v16 = *(v0 + 20);
    if (qword_1EBAB8390 != -1)
    {
      OUTLINED_FUNCTION_1111();
    }

    OUTLINED_FUNCTION_57_2();
    if (v0 != 1)
    {
      sub_1B8D9207C(v1, &qword_1EBACC1E8, &qword_1B96B9500);
    }
  }

  else
  {
    OUTLINED_FUNCTION_622_1();
    OUTLINED_FUNCTION_246();
    sub_1B944B02C();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_283();
}

uint64_t Searchfoundation_CardSectionValue.hasDescriptionCardSection.getter()
{
  v0 = OUTLINED_FUNCTION_514();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_183(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_22_3();
  OUTLINED_FUNCTION_225_6(v6);
  OUTLINED_FUNCTION_284_0();
  OUTLINED_FUNCTION_238_2();
  v7 = type metadata accessor for Searchfoundation_DescriptionCardSection(0);
  OUTLINED_FUNCTION_11(v7);
  return OUTLINED_FUNCTION_466_0();
}

Swift::Void __swiftcall Searchfoundation_CardSectionValue.clearDescriptionCardSection()()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACC1E8, &qword_1B96B9500);
  OUTLINED_FUNCTION_183(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_31_2();
  v7 = OUTLINED_FUNCTION_741_0(v6);
  v8 = *(v0 + v1);
  if ((v7 & 1) == 0)
  {
    OUTLINED_FUNCTION_424_1();
    v9 = OUTLINED_FUNCTION_40_0();
    v10 = sub_1B937BD18(v9);
    OUTLINED_FUNCTION_157_2(v10);
  }

  v11 = type metadata accessor for Searchfoundation_DescriptionCardSection(0);
  OUTLINED_FUNCTION_274_1(v11);
  OUTLINED_FUNCTION_290_0();
  OUTLINED_FUNCTION_122_0();
  sub_1B8DAA170();
  swift_endAccess();
}

uint64_t Searchfoundation_CardSectionValue.keyValueDataCardSection.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OUTLINED_FUNCTION_236();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v8);
  v9 = OUTLINED_FUNCTION_22_3();
  OUTLINED_FUNCTION_225_6(v9);
  OUTLINED_FUNCTION_101_0();
  OUTLINED_FUNCTION_39();
  v10 = type metadata accessor for Searchfoundation_KeyValueDataCardSection();
  OUTLINED_FUNCTION_29_14(v10);
  if (v11)
  {
    Searchfoundation_KeyValueDataCardSection.init()(a1);
    result = OUTLINED_FUNCTION_9_2();
    if (!v11)
    {
      return sub_1B8D9207C(v1, &qword_1EBACC1F0, &qword_1B96B9508);
    }
  }

  else
  {
    OUTLINED_FUNCTION_219_4();
    return sub_1B944B02C();
  }

  return result;
}

uint64_t Searchfoundation_CardSectionValue.keyValueDataCardSection.setter()
{
  OUTLINED_FUNCTION_183_0();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACC1F0, &qword_1B96B9508);
  OUTLINED_FUNCTION_183(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_31_2();
  v7 = OUTLINED_FUNCTION_742_0(v6);
  v8 = *(v0 + v1);
  if ((v7 & 1) == 0)
  {
    OUTLINED_FUNCTION_424_1();
    v9 = OUTLINED_FUNCTION_40_0();
    v10 = sub_1B937BD18(v9);
    OUTLINED_FUNCTION_135(v10);
  }

  OUTLINED_FUNCTION_621_1();
  OUTLINED_FUNCTION_294();
  sub_1B944B02C();
  type metadata accessor for Searchfoundation_KeyValueDataCardSection();
  v11 = OUTLINED_FUNCTION_53_0();
  __swift_storeEnumTagSinglePayload(v11, v12, v13, v14);
  OUTLINED_FUNCTION_73_0();
  OUTLINED_FUNCTION_122_0();
  sub_1B8DAA170();
  return swift_endAccess();
}

void Searchfoundation_CardSectionValue.keyValueDataCardSection.modify()
{
  OUTLINED_FUNCTION_284();
  v1 = OUTLINED_FUNCTION_185_0();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_66_0(v2);
  v3 = OUTLINED_FUNCTION_491();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  OUTLINED_FUNCTION_71(v7);
  v8 = type metadata accessor for Searchfoundation_KeyValueDataCardSection();
  OUTLINED_FUNCTION_135_0(v8);
  v10 = __swift_coroFrameAllocStub(*(v9 + 64));
  v11 = OUTLINED_FUNCTION_187(v10);
  v12 = __swift_coroFrameAllocStub(v11);
  OUTLINED_FUNCTION_39_13(v12);
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_55_2();
  sub_1B8D92024();
  OUTLINED_FUNCTION_59_13();
  if (v13)
  {
    OUTLINED_FUNCTION_37_12(MEMORY[0x1E69E7CC0]);
    OUTLINED_FUNCTION_1215(v14);
    v15 = OUTLINED_FUNCTION_915();
    type metadata accessor for Searchfoundation_Color(v15);
    v16 = OUTLINED_FUNCTION_87_5();
    __swift_storeEnumTagSinglePayload(v16, v17, v18, v19);
    v20 = OUTLINED_FUNCTION_1020();
    v21 = type metadata accessor for Searchfoundation_Image(v20);
    OUTLINED_FUNCTION_6_19(v21);
    if (!v13)
    {
      sub_1B8D9207C(v0, &qword_1EBACC1F0, &qword_1B96B9508);
    }
  }

  else
  {
    OUTLINED_FUNCTION_621_1();
    OUTLINED_FUNCTION_246();
    sub_1B944B02C();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_283();
}

uint64_t Searchfoundation_CardSectionValue.hasKeyValueDataCardSection.getter()
{
  v0 = OUTLINED_FUNCTION_514();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_183(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_22_3();
  OUTLINED_FUNCTION_225_6(v6);
  OUTLINED_FUNCTION_284_0();
  OUTLINED_FUNCTION_238_2();
  v7 = type metadata accessor for Searchfoundation_KeyValueDataCardSection();
  OUTLINED_FUNCTION_11(v7);
  return OUTLINED_FUNCTION_466_0();
}

Swift::Void __swiftcall Searchfoundation_CardSectionValue.clearKeyValueDataCardSection()()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACC1F0, &qword_1B96B9508);
  OUTLINED_FUNCTION_183(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_31_2();
  v7 = OUTLINED_FUNCTION_741_0(v6);
  v8 = *(v0 + v1);
  if ((v7 & 1) == 0)
  {
    OUTLINED_FUNCTION_424_1();
    v9 = OUTLINED_FUNCTION_40_0();
    v10 = sub_1B937BD18(v9);
    OUTLINED_FUNCTION_157_2(v10);
  }

  v11 = type metadata accessor for Searchfoundation_KeyValueDataCardSection();
  OUTLINED_FUNCTION_274_1(v11);
  OUTLINED_FUNCTION_290_0();
  OUTLINED_FUNCTION_122_0();
  sub_1B8DAA170();
  swift_endAccess();
}

uint64_t Searchfoundation_CardSectionValue.mapCardSection.getter@<X0>(int a1@<W8>)
{
  v3 = OUTLINED_FUNCTION_236();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v8);
  v9 = OUTLINED_FUNCTION_22_3();
  OUTLINED_FUNCTION_225_6(v9);
  OUTLINED_FUNCTION_101_0();
  OUTLINED_FUNCTION_39();
  v10 = type metadata accessor for Searchfoundation_MapCardSection(0);
  OUTLINED_FUNCTION_29_14(v10);
  if (v11)
  {
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    if (qword_1EBAB8550 != -1)
    {
      OUTLINED_FUNCTION_1110();
    }

    result = OUTLINED_FUNCTION_59_0();
    if (a1 != 1)
    {
      return sub_1B8D9207C(v1, &unk_1EBACC1F8, &qword_1B96B9510);
    }
  }

  else
  {
    OUTLINED_FUNCTION_219_4();
    return sub_1B944B02C();
  }

  return result;
}

uint64_t Searchfoundation_CardSectionValue.mapCardSection.setter()
{
  OUTLINED_FUNCTION_183_0();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBACC1F8, &qword_1B96B9510);
  OUTLINED_FUNCTION_183(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_31_2();
  v7 = OUTLINED_FUNCTION_742_0(v6);
  v8 = *(v0 + v1);
  if ((v7 & 1) == 0)
  {
    OUTLINED_FUNCTION_424_1();
    v9 = OUTLINED_FUNCTION_40_0();
    v10 = sub_1B937BD18(v9);
    OUTLINED_FUNCTION_135(v10);
  }

  OUTLINED_FUNCTION_618_0();
  OUTLINED_FUNCTION_294();
  sub_1B944B02C();
  type metadata accessor for Searchfoundation_MapCardSection(0);
  v11 = OUTLINED_FUNCTION_53_0();
  __swift_storeEnumTagSinglePayload(v11, v12, v13, v14);
  OUTLINED_FUNCTION_73_0();
  OUTLINED_FUNCTION_122_0();
  sub_1B8DAA170();
  return swift_endAccess();
}

void Searchfoundation_CardSectionValue.mapCardSection.modify()
{
  OUTLINED_FUNCTION_284();
  v2 = OUTLINED_FUNCTION_185_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_66_0(v3);
  v4 = OUTLINED_FUNCTION_491();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_183(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_71(v8);
  v10 = type metadata accessor for Searchfoundation_MapCardSection(v9);
  OUTLINED_FUNCTION_135_0(v10);
  v12 = __swift_coroFrameAllocStub(*(v11 + 64));
  v13 = OUTLINED_FUNCTION_187(v12);
  v14 = __swift_coroFrameAllocStub(v13);
  OUTLINED_FUNCTION_39_13(v14);
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_55_2();
  sub_1B8D92024();
  OUTLINED_FUNCTION_17_2();
  if (v15)
  {
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    v16 = *(v0 + 20);
    if (qword_1EBAB8550 != -1)
    {
      OUTLINED_FUNCTION_1110();
    }

    OUTLINED_FUNCTION_57_2();
    if (v0 != 1)
    {
      sub_1B8D9207C(v1, &unk_1EBACC1F8, &qword_1B96B9510);
    }
  }

  else
  {
    OUTLINED_FUNCTION_618_0();
    OUTLINED_FUNCTION_246();
    sub_1B944B02C();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_283();
}

uint64_t Searchfoundation_CardSectionValue.hasMapCardSection.getter()
{
  v0 = OUTLINED_FUNCTION_514();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_183(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_22_3();
  OUTLINED_FUNCTION_225_6(v6);
  OUTLINED_FUNCTION_284_0();
  OUTLINED_FUNCTION_238_2();
  v7 = type metadata accessor for Searchfoundation_MapCardSection(0);
  OUTLINED_FUNCTION_11(v7);
  return OUTLINED_FUNCTION_466_0();
}

Swift::Void __swiftcall Searchfoundation_CardSectionValue.clearMapCardSection()()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBACC1F8, &qword_1B96B9510);
  OUTLINED_FUNCTION_183(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_31_2();
  v7 = OUTLINED_FUNCTION_741_0(v6);
  v8 = *(v0 + v1);
  if ((v7 & 1) == 0)
  {
    OUTLINED_FUNCTION_424_1();
    v9 = OUTLINED_FUNCTION_40_0();
    v10 = sub_1B937BD18(v9);
    OUTLINED_FUNCTION_157_2(v10);
  }

  v11 = type metadata accessor for Searchfoundation_MapCardSection(0);
  OUTLINED_FUNCTION_274_1(v11);
  OUTLINED_FUNCTION_290_0();
  OUTLINED_FUNCTION_122_0();
  sub_1B8DAA170();
  swift_endAccess();
}

uint64_t Searchfoundation_CardSectionValue.mediaInfoCardSection.getter@<X0>(int a1@<W8>)
{
  v3 = OUTLINED_FUNCTION_236();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v8);
  v9 = OUTLINED_FUNCTION_22_3();
  OUTLINED_FUNCTION_225_6(v9);
  OUTLINED_FUNCTION_101_0();
  OUTLINED_FUNCTION_39();
  v10 = type metadata accessor for Searchfoundation_MediaInfoCardSection(0);
  OUTLINED_FUNCTION_29_14(v10);
  if (v11)
  {
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    if (qword_1EBAB8590 != -1)
    {
      OUTLINED_FUNCTION_1109();
    }

    result = OUTLINED_FUNCTION_59_0();
    if (a1 != 1)
    {
      return sub_1B8D9207C(v1, &qword_1EBACC200, &qword_1B96B9518);
    }
  }

  else
  {
    OUTLINED_FUNCTION_219_4();
    return sub_1B944B02C();
  }

  return result;
}

uint64_t Searchfoundation_CardSectionValue.mediaInfoCardSection.setter()
{
  OUTLINED_FUNCTION_183_0();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACC200, &qword_1B96B9518);
  OUTLINED_FUNCTION_183(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_31_2();
  v7 = OUTLINED_FUNCTION_742_0(v6);
  v8 = *(v0 + v1);
  if ((v7 & 1) == 0)
  {
    OUTLINED_FUNCTION_424_1();
    v9 = OUTLINED_FUNCTION_40_0();
    v10 = sub_1B937BD18(v9);
    OUTLINED_FUNCTION_135(v10);
  }

  OUTLINED_FUNCTION_616_1();
  OUTLINED_FUNCTION_294();
  sub_1B944B02C();
  type metadata accessor for Searchfoundation_MediaInfoCardSection(0);
  v11 = OUTLINED_FUNCTION_53_0();
  __swift_storeEnumTagSinglePayload(v11, v12, v13, v14);
  OUTLINED_FUNCTION_73_0();
  OUTLINED_FUNCTION_122_0();
  sub_1B8DAA170();
  return swift_endAccess();
}

void Searchfoundation_CardSectionValue.mediaInfoCardSection.modify()
{
  OUTLINED_FUNCTION_284();
  v2 = OUTLINED_FUNCTION_185_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_66_0(v3);
  v4 = OUTLINED_FUNCTION_491();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_183(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_71(v8);
  v10 = type metadata accessor for Searchfoundation_MediaInfoCardSection(v9);
  OUTLINED_FUNCTION_135_0(v10);
  v12 = __swift_coroFrameAllocStub(*(v11 + 64));
  v13 = OUTLINED_FUNCTION_187(v12);
  v14 = __swift_coroFrameAllocStub(v13);
  OUTLINED_FUNCTION_39_13(v14);
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_55_2();
  sub_1B8D92024();
  OUTLINED_FUNCTION_17_2();
  if (v15)
  {
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    v16 = *(v0 + 20);
    if (qword_1EBAB8590 != -1)
    {
      OUTLINED_FUNCTION_1109();
    }

    OUTLINED_FUNCTION_57_2();
    if (v0 != 1)
    {
      sub_1B8D9207C(v1, &qword_1EBACC200, &qword_1B96B9518);
    }
  }

  else
  {
    OUTLINED_FUNCTION_616_1();
    OUTLINED_FUNCTION_246();
    sub_1B944B02C();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_283();
}

uint64_t Searchfoundation_CardSectionValue.hasMediaInfoCardSection.getter()
{
  v0 = OUTLINED_FUNCTION_514();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_183(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_22_3();
  OUTLINED_FUNCTION_225_6(v6);
  OUTLINED_FUNCTION_284_0();
  OUTLINED_FUNCTION_238_2();
  v7 = type metadata accessor for Searchfoundation_MediaInfoCardSection(0);
  OUTLINED_FUNCTION_11(v7);
  return OUTLINED_FUNCTION_466_0();
}

Swift::Void __swiftcall Searchfoundation_CardSectionValue.clearMediaInfoCardSection()()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACC200, &qword_1B96B9518);
  OUTLINED_FUNCTION_183(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_31_2();
  v7 = OUTLINED_FUNCTION_741_0(v6);
  v8 = *(v0 + v1);
  if ((v7 & 1) == 0)
  {
    OUTLINED_FUNCTION_424_1();
    v9 = OUTLINED_FUNCTION_40_0();
    v10 = sub_1B937BD18(v9);
    OUTLINED_FUNCTION_157_2(v10);
  }

  v11 = type metadata accessor for Searchfoundation_MediaInfoCardSection(0);
  OUTLINED_FUNCTION_274_1(v11);
  OUTLINED_FUNCTION_290_0();
  OUTLINED_FUNCTION_122_0();
  sub_1B8DAA170();
  swift_endAccess();
}

uint64_t Searchfoundation_CardSectionValue.mediaPlayerCardSection.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OUTLINED_FUNCTION_236();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v8);
  v9 = OUTLINED_FUNCTION_22_3();
  OUTLINED_FUNCTION_225_6(v9);
  OUTLINED_FUNCTION_101_0();
  OUTLINED_FUNCTION_39();
  v10 = type metadata accessor for Searchfoundation_MediaPlayerCardSection();
  OUTLINED_FUNCTION_29_14(v10);
  if (v11)
  {
    Searchfoundation_MediaPlayerCardSection.init()(a1);
    result = OUTLINED_FUNCTION_9_2();
    if (!v11)
    {
      return sub_1B8D9207C(v1, &unk_1EBACC208, &qword_1B96B9520);
    }
  }

  else
  {
    OUTLINED_FUNCTION_219_4();
    return sub_1B944B02C();
  }

  return result;
}

uint64_t Searchfoundation_CardSectionValue.mediaPlayerCardSection.setter()
{
  OUTLINED_FUNCTION_183_0();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBACC208, &qword_1B96B9520);
  OUTLINED_FUNCTION_183(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_31_2();
  v7 = OUTLINED_FUNCTION_742_0(v6);
  v8 = *(v0 + v1);
  if ((v7 & 1) == 0)
  {
    OUTLINED_FUNCTION_424_1();
    v9 = OUTLINED_FUNCTION_40_0();
    v10 = sub_1B937BD18(v9);
    OUTLINED_FUNCTION_135(v10);
  }

  OUTLINED_FUNCTION_615_1();
  OUTLINED_FUNCTION_294();
  sub_1B944B02C();
  type metadata accessor for Searchfoundation_MediaPlayerCardSection();
  v11 = OUTLINED_FUNCTION_53_0();
  __swift_storeEnumTagSinglePayload(v11, v12, v13, v14);
  OUTLINED_FUNCTION_73_0();
  OUTLINED_FUNCTION_122_0();
  sub_1B8DAA170();
  return swift_endAccess();
}

void Searchfoundation_CardSectionValue.mediaPlayerCardSection.modify()
{
  OUTLINED_FUNCTION_284();
  v1 = OUTLINED_FUNCTION_185_0();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_66_0(v2);
  v3 = OUTLINED_FUNCTION_491();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  OUTLINED_FUNCTION_71(v7);
  v8 = type metadata accessor for Searchfoundation_MediaPlayerCardSection();
  OUTLINED_FUNCTION_135_0(v8);
  v10 = __swift_coroFrameAllocStub(*(v9 + 64));
  v11 = OUTLINED_FUNCTION_187(v10);
  v12 = __swift_coroFrameAllocStub(v11);
  OUTLINED_FUNCTION_39_13(v12);
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_55_2();
  sub_1B8D92024();
  OUTLINED_FUNCTION_59_13();
  if (v13)
  {
    OUTLINED_FUNCTION_37_12(MEMORY[0x1E69E7CC0]);
    OUTLINED_FUNCTION_871_0(v14);
    v15 = OUTLINED_FUNCTION_1052();
    v16 = type metadata accessor for Searchfoundation_Color(v15);
    OUTLINED_FUNCTION_6_19(v16);
    if (!v13)
    {
      sub_1B8D9207C(v0, &unk_1EBACC208, &qword_1B96B9520);
    }
  }

  else
  {
    OUTLINED_FUNCTION_615_1();
    OUTLINED_FUNCTION_246();
    sub_1B944B02C();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_283();
}

uint64_t Searchfoundation_CardSectionValue.hasMediaPlayerCardSection.getter()
{
  v0 = OUTLINED_FUNCTION_514();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_183(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_22_3();
  OUTLINED_FUNCTION_225_6(v6);
  OUTLINED_FUNCTION_284_0();
  OUTLINED_FUNCTION_238_2();
  v7 = type metadata accessor for Searchfoundation_MediaPlayerCardSection();
  OUTLINED_FUNCTION_11(v7);
  return OUTLINED_FUNCTION_466_0();
}

Swift::Void __swiftcall Searchfoundation_CardSectionValue.clearMediaPlayerCardSection()()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBACC208, &qword_1B96B9520);
  OUTLINED_FUNCTION_183(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_31_2();
  v7 = OUTLINED_FUNCTION_741_0(v6);
  v8 = *(v0 + v1);
  if ((v7 & 1) == 0)
  {
    OUTLINED_FUNCTION_424_1();
    v9 = OUTLINED_FUNCTION_40_0();
    v10 = sub_1B937BD18(v9);
    OUTLINED_FUNCTION_157_2(v10);
  }

  v11 = type metadata accessor for Searchfoundation_MediaPlayerCardSection();
  OUTLINED_FUNCTION_274_1(v11);
  OUTLINED_FUNCTION_290_0();
  OUTLINED_FUNCTION_122_0();
  sub_1B8DAA170();
  swift_endAccess();
}

uint64_t Searchfoundation_CardSectionValue.nowPlayingCardSection.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OUTLINED_FUNCTION_236();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v8);
  v9 = OUTLINED_FUNCTION_22_3();
  OUTLINED_FUNCTION_225_6(v9);
  OUTLINED_FUNCTION_101_0();
  OUTLINED_FUNCTION_39();
  v10 = type metadata accessor for Searchfoundation_NowPlayingCardSection();
  OUTLINED_FUNCTION_29_14(v10);
  if (v11)
  {
    Searchfoundation_NowPlayingCardSection.init()(a1);
    result = OUTLINED_FUNCTION_9_2();
    if (!v11)
    {
      return sub_1B8D9207C(v1, &unk_1EBACC210, &qword_1B96B9528);
    }
  }

  else
  {
    OUTLINED_FUNCTION_219_4();
    return sub_1B944B02C();
  }

  return result;
}

uint64_t Searchfoundation_CardSectionValue.nowPlayingCardSection.setter()
{
  OUTLINED_FUNCTION_183_0();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBACC210, &qword_1B96B9528);
  OUTLINED_FUNCTION_183(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_31_2();
  v7 = OUTLINED_FUNCTION_742_0(v6);
  v8 = *(v0 + v1);
  if ((v7 & 1) == 0)
  {
    OUTLINED_FUNCTION_424_1();
    v9 = OUTLINED_FUNCTION_40_0();
    v10 = sub_1B937BD18(v9);
    OUTLINED_FUNCTION_135(v10);
  }

  OUTLINED_FUNCTION_614_1();
  OUTLINED_FUNCTION_294();
  sub_1B944B02C();
  type metadata accessor for Searchfoundation_NowPlayingCardSection();
  v11 = OUTLINED_FUNCTION_53_0();
  __swift_storeEnumTagSinglePayload(v11, v12, v13, v14);
  OUTLINED_FUNCTION_73_0();
  OUTLINED_FUNCTION_122_0();
  sub_1B8DAA170();
  return swift_endAccess();
}

void Searchfoundation_CardSectionValue.nowPlayingCardSection.modify()
{
  OUTLINED_FUNCTION_284();
  v1 = OUTLINED_FUNCTION_185_0();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_66_0(v2);
  v3 = OUTLINED_FUNCTION_491();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  OUTLINED_FUNCTION_71(v7);
  v8 = type metadata accessor for Searchfoundation_NowPlayingCardSection();
  OUTLINED_FUNCTION_135_0(v8);
  v10 = __swift_coroFrameAllocStub(*(v9 + 64));
  v11 = OUTLINED_FUNCTION_187(v10);
  v12 = __swift_coroFrameAllocStub(v11);
  OUTLINED_FUNCTION_39_13(v12);
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_55_2();
  sub_1B8D92024();
  OUTLINED_FUNCTION_59_13();
  if (v13)
  {
    OUTLINED_FUNCTION_37_12(MEMORY[0x1E69E7CC0]);
    OUTLINED_FUNCTION_871_0(v14);
    v15 = OUTLINED_FUNCTION_1052();
    v16 = type metadata accessor for Searchfoundation_Color(v15);
    OUTLINED_FUNCTION_6_19(v16);
    if (!v13)
    {
      sub_1B8D9207C(v0, &unk_1EBACC210, &qword_1B96B9528);
    }
  }

  else
  {
    OUTLINED_FUNCTION_614_1();
    OUTLINED_FUNCTION_246();
    sub_1B944B02C();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_283();
}

uint64_t Searchfoundation_CardSectionValue.hasNowPlayingCardSection.getter()
{
  v0 = OUTLINED_FUNCTION_514();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_183(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_22_3();
  OUTLINED_FUNCTION_225_6(v6);
  OUTLINED_FUNCTION_284_0();
  OUTLINED_FUNCTION_238_2();
  v7 = type metadata accessor for Searchfoundation_NowPlayingCardSection();
  OUTLINED_FUNCTION_11(v7);
  return OUTLINED_FUNCTION_466_0();
}

Swift::Void __swiftcall Searchfoundation_CardSectionValue.clearNowPlayingCardSection()()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBACC210, &qword_1B96B9528);
  OUTLINED_FUNCTION_183(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_31_2();
  v7 = OUTLINED_FUNCTION_741_0(v6);
  v8 = *(v0 + v1);
  if ((v7 & 1) == 0)
  {
    OUTLINED_FUNCTION_424_1();
    v9 = OUTLINED_FUNCTION_40_0();
    v10 = sub_1B937BD18(v9);
    OUTLINED_FUNCTION_157_2(v10);
  }

  v11 = type metadata accessor for Searchfoundation_NowPlayingCardSection();
  OUTLINED_FUNCTION_274_1(v11);
  OUTLINED_FUNCTION_290_0();
  OUTLINED_FUNCTION_122_0();
  sub_1B8DAA170();
  swift_endAccess();
}

uint64_t Searchfoundation_CardSectionValue.richTitleCardSection.getter@<X0>(int a1@<W8>)
{
  v3 = OUTLINED_FUNCTION_236();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v8);
  v9 = OUTLINED_FUNCTION_22_3();
  OUTLINED_FUNCTION_225_6(v9);
  OUTLINED_FUNCTION_101_0();
  OUTLINED_FUNCTION_39();
  v10 = type metadata accessor for Searchfoundation_RichTitleCardSection(0);
  OUTLINED_FUNCTION_29_14(v10);
  if (v11)
  {
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    if (qword_1EBAB82F8 != -1)
    {
      OUTLINED_FUNCTION_1108();
    }

    result = OUTLINED_FUNCTION_59_0();
    if (a1 != 1)
    {
      return sub_1B8D9207C(v1, &qword_1EBACC218, &qword_1B96B9530);
    }
  }

  else
  {
    OUTLINED_FUNCTION_219_4();
    return sub_1B944B02C();
  }

  return result;
}

uint64_t Searchfoundation_CardSectionValue.richTitleCardSection.setter()
{
  OUTLINED_FUNCTION_183_0();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACC218, &qword_1B96B9530);
  OUTLINED_FUNCTION_183(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_31_2();
  v7 = OUTLINED_FUNCTION_742_0(v6);
  v8 = *(v0 + v1);
  if ((v7 & 1) == 0)
  {
    OUTLINED_FUNCTION_424_1();
    v9 = OUTLINED_FUNCTION_40_0();
    v10 = sub_1B937BD18(v9);
    OUTLINED_FUNCTION_135(v10);
  }

  OUTLINED_FUNCTION_613_1();
  OUTLINED_FUNCTION_294();
  sub_1B944B02C();
  type metadata accessor for Searchfoundation_RichTitleCardSection(0);
  v11 = OUTLINED_FUNCTION_53_0();
  __swift_storeEnumTagSinglePayload(v11, v12, v13, v14);
  OUTLINED_FUNCTION_73_0();
  OUTLINED_FUNCTION_122_0();
  sub_1B8DAA170();
  return swift_endAccess();
}

void Searchfoundation_CardSectionValue.richTitleCardSection.modify()
{
  OUTLINED_FUNCTION_284();
  v2 = OUTLINED_FUNCTION_185_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_66_0(v3);
  v4 = OUTLINED_FUNCTION_491();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_183(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_71(v8);
  v10 = type metadata accessor for Searchfoundation_RichTitleCardSection(v9);
  OUTLINED_FUNCTION_135_0(v10);
  v12 = __swift_coroFrameAllocStub(*(v11 + 64));
  v13 = OUTLINED_FUNCTION_187(v12);
  v14 = __swift_coroFrameAllocStub(v13);
  OUTLINED_FUNCTION_39_13(v14);
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_55_2();
  sub_1B8D92024();
  OUTLINED_FUNCTION_17_2();
  if (v15)
  {
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    v16 = *(v0 + 20);
    if (qword_1EBAB82F8 != -1)
    {
      OUTLINED_FUNCTION_1108();
    }

    OUTLINED_FUNCTION_57_2();
    if (v0 != 1)
    {
      sub_1B8D9207C(v1, &qword_1EBACC218, &qword_1B96B9530);
    }
  }

  else
  {
    OUTLINED_FUNCTION_613_1();
    OUTLINED_FUNCTION_246();
    sub_1B944B02C();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_283();
}

uint64_t Searchfoundation_CardSectionValue.hasRichTitleCardSection.getter()
{
  v0 = OUTLINED_FUNCTION_514();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_183(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_22_3();
  OUTLINED_FUNCTION_225_6(v6);
  OUTLINED_FUNCTION_284_0();
  OUTLINED_FUNCTION_238_2();
  v7 = type metadata accessor for Searchfoundation_RichTitleCardSection(0);
  OUTLINED_FUNCTION_11(v7);
  return OUTLINED_FUNCTION_466_0();
}

Swift::Void __swiftcall Searchfoundation_CardSectionValue.clearRichTitleCardSection()()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACC218, &qword_1B96B9530);
  OUTLINED_FUNCTION_183(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_31_2();
  v7 = OUTLINED_FUNCTION_741_0(v6);
  v8 = *(v0 + v1);
  if ((v7 & 1) == 0)
  {
    OUTLINED_FUNCTION_424_1();
    v9 = OUTLINED_FUNCTION_40_0();
    v10 = sub_1B937BD18(v9);
    OUTLINED_FUNCTION_157_2(v10);
  }

  v11 = type metadata accessor for Searchfoundation_RichTitleCardSection(0);
  OUTLINED_FUNCTION_274_1(v11);
  OUTLINED_FUNCTION_290_0();
  OUTLINED_FUNCTION_122_0();
  sub_1B8DAA170();
  swift_endAccess();
}

uint64_t Searchfoundation_CardSectionValue.rowCardSection.getter@<X0>(int a1@<W8>)
{
  v3 = OUTLINED_FUNCTION_236();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v8);
  v9 = OUTLINED_FUNCTION_22_3();
  OUTLINED_FUNCTION_225_6(v9);
  OUTLINED_FUNCTION_101_0();
  OUTLINED_FUNCTION_39();
  v10 = type metadata accessor for Searchfoundation_RowCardSection(0);
  OUTLINED_FUNCTION_29_14(v10);
  if (v11)
  {
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    if (qword_1EBAB8A18 != -1)
    {
      OUTLINED_FUNCTION_1107();
    }

    result = OUTLINED_FUNCTION_59_0();
    if (a1 != 1)
    {
      return sub_1B8D9207C(v1, &qword_1EBACC220, &qword_1B96B9538);
    }
  }

  else
  {
    OUTLINED_FUNCTION_219_4();
    return sub_1B944B02C();
  }

  return result;
}

uint64_t Searchfoundation_CardSectionValue.rowCardSection.setter()
{
  OUTLINED_FUNCTION_183_0();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACC220, &qword_1B96B9538);
  OUTLINED_FUNCTION_183(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_31_2();
  v7 = OUTLINED_FUNCTION_742_0(v6);
  v8 = *(v0 + v1);
  if ((v7 & 1) == 0)
  {
    OUTLINED_FUNCTION_424_1();
    v9 = OUTLINED_FUNCTION_40_0();
    v10 = sub_1B937BD18(v9);
    OUTLINED_FUNCTION_135(v10);
  }

  OUTLINED_FUNCTION_612_1();
  OUTLINED_FUNCTION_294();
  sub_1B944B02C();
  type metadata accessor for Searchfoundation_RowCardSection(0);
  v11 = OUTLINED_FUNCTION_53_0();
  __swift_storeEnumTagSinglePayload(v11, v12, v13, v14);
  OUTLINED_FUNCTION_73_0();
  OUTLINED_FUNCTION_122_0();
  sub_1B8DAA170();
  return swift_endAccess();
}

void Searchfoundation_CardSectionValue.rowCardSection.modify()
{
  OUTLINED_FUNCTION_284();
  v2 = OUTLINED_FUNCTION_185_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_66_0(v3);
  v4 = OUTLINED_FUNCTION_491();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_183(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_71(v8);
  v10 = type metadata accessor for Searchfoundation_RowCardSection(v9);
  OUTLINED_FUNCTION_135_0(v10);
  v12 = __swift_coroFrameAllocStub(*(v11 + 64));
  v13 = OUTLINED_FUNCTION_187(v12);
  v14 = __swift_coroFrameAllocStub(v13);
  OUTLINED_FUNCTION_39_13(v14);
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_55_2();
  sub_1B8D92024();
  OUTLINED_FUNCTION_17_2();
  if (v15)
  {
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    v16 = *(v0 + 20);
    if (qword_1EBAB8A18 != -1)
    {
      OUTLINED_FUNCTION_1107();
    }

    OUTLINED_FUNCTION_57_2();
    if (v0 != 1)
    {
      sub_1B8D9207C(v1, &qword_1EBACC220, &qword_1B96B9538);
    }
  }

  else
  {
    OUTLINED_FUNCTION_612_1();
    OUTLINED_FUNCTION_246();
    sub_1B944B02C();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_283();
}

uint64_t Searchfoundation_CardSectionValue.hasRowCardSection.getter()
{
  v0 = OUTLINED_FUNCTION_514();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_183(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_22_3();
  OUTLINED_FUNCTION_225_6(v6);
  OUTLINED_FUNCTION_284_0();
  OUTLINED_FUNCTION_238_2();
  v7 = type metadata accessor for Searchfoundation_RowCardSection(0);
  OUTLINED_FUNCTION_11(v7);
  return OUTLINED_FUNCTION_466_0();
}

Swift::Void __swiftcall Searchfoundation_CardSectionValue.clearRowCardSection()()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACC220, &qword_1B96B9538);
  OUTLINED_FUNCTION_183(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_31_2();
  v7 = OUTLINED_FUNCTION_741_0(v6);
  v8 = *(v0 + v1);
  if ((v7 & 1) == 0)
  {
    OUTLINED_FUNCTION_424_1();
    v9 = OUTLINED_FUNCTION_40_0();
    v10 = sub_1B937BD18(v9);
    OUTLINED_FUNCTION_157_2(v10);
  }

  v11 = type metadata accessor for Searchfoundation_RowCardSection(0);
  OUTLINED_FUNCTION_274_1(v11);
  OUTLINED_FUNCTION_290_0();
  OUTLINED_FUNCTION_122_0();
  sub_1B8DAA170();
  swift_endAccess();
}

uint64_t Searchfoundation_CardSectionValue.scoreboardCardSection.getter@<X0>(int a1@<W8>)
{
  v3 = OUTLINED_FUNCTION_236();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v8);
  v9 = OUTLINED_FUNCTION_22_3();
  OUTLINED_FUNCTION_225_6(v9);
  OUTLINED_FUNCTION_101_0();
  OUTLINED_FUNCTION_39();
  v10 = type metadata accessor for Searchfoundation_ScoreboardCardSection(0);
  OUTLINED_FUNCTION_29_14(v10);
  if (v11)
  {
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    if (qword_1EBAB8288 != -1)
    {
      OUTLINED_FUNCTION_1106();
    }

    result = OUTLINED_FUNCTION_59_0();
    if (a1 != 1)
    {
      return sub_1B8D9207C(v1, &unk_1EBACC228, &qword_1B96B9540);
    }
  }

  else
  {
    OUTLINED_FUNCTION_219_4();
    return sub_1B944B02C();
  }

  return result;
}

uint64_t Searchfoundation_CardSectionValue.scoreboardCardSection.setter()
{
  OUTLINED_FUNCTION_183_0();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBACC228, &qword_1B96B9540);
  OUTLINED_FUNCTION_183(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_31_2();
  v7 = OUTLINED_FUNCTION_742_0(v6);
  v8 = *(v0 + v1);
  if ((v7 & 1) == 0)
  {
    OUTLINED_FUNCTION_424_1();
    v9 = OUTLINED_FUNCTION_40_0();
    v10 = sub_1B937BD18(v9);
    OUTLINED_FUNCTION_135(v10);
  }

  OUTLINED_FUNCTION_611_1();
  OUTLINED_FUNCTION_294();
  sub_1B944B02C();
  type metadata accessor for Searchfoundation_ScoreboardCardSection(0);
  v11 = OUTLINED_FUNCTION_53_0();
  __swift_storeEnumTagSinglePayload(v11, v12, v13, v14);
  OUTLINED_FUNCTION_73_0();
  OUTLINED_FUNCTION_122_0();
  sub_1B8DAA170();
  return swift_endAccess();
}

void Searchfoundation_CardSectionValue.scoreboardCardSection.modify()
{
  OUTLINED_FUNCTION_284();
  v2 = OUTLINED_FUNCTION_185_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_66_0(v3);
  v4 = OUTLINED_FUNCTION_491();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_183(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_71(v8);
  v10 = type metadata accessor for Searchfoundation_ScoreboardCardSection(v9);
  OUTLINED_FUNCTION_135_0(v10);
  v12 = __swift_coroFrameAllocStub(*(v11 + 64));
  v13 = OUTLINED_FUNCTION_187(v12);
  v14 = __swift_coroFrameAllocStub(v13);
  OUTLINED_FUNCTION_39_13(v14);
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_55_2();
  sub_1B8D92024();
  OUTLINED_FUNCTION_17_2();
  if (v15)
  {
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    v16 = *(v0 + 20);
    if (qword_1EBAB8288 != -1)
    {
      OUTLINED_FUNCTION_1106();
    }

    OUTLINED_FUNCTION_57_2();
    if (v0 != 1)
    {
      sub_1B8D9207C(v1, &unk_1EBACC228, &qword_1B96B9540);
    }
  }

  else
  {
    OUTLINED_FUNCTION_611_1();
    OUTLINED_FUNCTION_246();
    sub_1B944B02C();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_283();
}

uint64_t Searchfoundation_CardSectionValue.hasScoreboardCardSection.getter()
{
  v0 = OUTLINED_FUNCTION_514();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_183(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_22_3();
  OUTLINED_FUNCTION_225_6(v6);
  OUTLINED_FUNCTION_284_0();
  OUTLINED_FUNCTION_238_2();
  v7 = type metadata accessor for Searchfoundation_ScoreboardCardSection(0);
  OUTLINED_FUNCTION_11(v7);
  return OUTLINED_FUNCTION_466_0();
}

Swift::Void __swiftcall Searchfoundation_CardSectionValue.clearScoreboardCardSection()()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBACC228, &qword_1B96B9540);
  OUTLINED_FUNCTION_183(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_31_2();
  v7 = OUTLINED_FUNCTION_741_0(v6);
  v8 = *(v0 + v1);
  if ((v7 & 1) == 0)
  {
    OUTLINED_FUNCTION_424_1();
    v9 = OUTLINED_FUNCTION_40_0();
    v10 = sub_1B937BD18(v9);
    OUTLINED_FUNCTION_157_2(v10);
  }

  v11 = type metadata accessor for Searchfoundation_ScoreboardCardSection(0);
  OUTLINED_FUNCTION_274_1(v11);
  OUTLINED_FUNCTION_290_0();
  OUTLINED_FUNCTION_122_0();
  sub_1B8DAA170();
  swift_endAccess();
}

uint64_t Searchfoundation_CardSectionValue.socialMediaPostCardSection.getter@<X0>(int a1@<W8>)
{
  v3 = OUTLINED_FUNCTION_236();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v8);
  v9 = OUTLINED_FUNCTION_22_3();
  OUTLINED_FUNCTION_225_6(v9);
  OUTLINED_FUNCTION_101_0();
  OUTLINED_FUNCTION_39();
  v10 = type metadata accessor for Searchfoundation_SocialMediaPostCardSection(0);
  OUTLINED_FUNCTION_29_14(v10);
  if (v11)
  {
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    if (qword_1EBAB8AC8 != -1)
    {
      OUTLINED_FUNCTION_1105();
    }

    result = OUTLINED_FUNCTION_59_0();
    if (a1 != 1)
    {
      return sub_1B8D9207C(v1, &unk_1EBACC230, &qword_1B96B9548);
    }
  }

  else
  {
    OUTLINED_FUNCTION_219_4();
    return sub_1B944B02C();
  }

  return result;
}

uint64_t Searchfoundation_CardSectionValue.socialMediaPostCardSection.setter()
{
  OUTLINED_FUNCTION_183_0();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBACC230, &qword_1B96B9548);
  OUTLINED_FUNCTION_183(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_31_2();
  v7 = OUTLINED_FUNCTION_742_0(v6);
  v8 = *(v0 + v1);
  if ((v7 & 1) == 0)
  {
    OUTLINED_FUNCTION_424_1();
    v9 = OUTLINED_FUNCTION_40_0();
    v10 = sub_1B937BD18(v9);
    OUTLINED_FUNCTION_135(v10);
  }

  OUTLINED_FUNCTION_610_2();
  OUTLINED_FUNCTION_294();
  sub_1B944B02C();
  type metadata accessor for Searchfoundation_SocialMediaPostCardSection(0);
  v11 = OUTLINED_FUNCTION_53_0();
  __swift_storeEnumTagSinglePayload(v11, v12, v13, v14);
  OUTLINED_FUNCTION_73_0();
  OUTLINED_FUNCTION_122_0();
  sub_1B8DAA170();
  return swift_endAccess();
}

void Searchfoundation_CardSectionValue.socialMediaPostCardSection.modify()
{
  OUTLINED_FUNCTION_284();
  v2 = OUTLINED_FUNCTION_185_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_66_0(v3);
  v4 = OUTLINED_FUNCTION_491();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_183(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_71(v8);
  v10 = type metadata accessor for Searchfoundation_SocialMediaPostCardSection(v9);
  OUTLINED_FUNCTION_135_0(v10);
  v12 = __swift_coroFrameAllocStub(*(v11 + 64));
  v13 = OUTLINED_FUNCTION_187(v12);
  v14 = __swift_coroFrameAllocStub(v13);
  OUTLINED_FUNCTION_39_13(v14);
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_55_2();
  sub_1B8D92024();
  OUTLINED_FUNCTION_17_2();
  if (v15)
  {
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    v16 = *(v0 + 20);
    if (qword_1EBAB8AC8 != -1)
    {
      OUTLINED_FUNCTION_1105();
    }

    OUTLINED_FUNCTION_57_2();
    if (v0 != 1)
    {
      sub_1B8D9207C(v1, &unk_1EBACC230, &qword_1B96B9548);
    }
  }

  else
  {
    OUTLINED_FUNCTION_610_2();
    OUTLINED_FUNCTION_246();
    sub_1B944B02C();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_283();
}

uint64_t Searchfoundation_CardSectionValue.hasSocialMediaPostCardSection.getter()
{
  v0 = OUTLINED_FUNCTION_514();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_183(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_22_3();
  OUTLINED_FUNCTION_225_6(v6);
  OUTLINED_FUNCTION_284_0();
  OUTLINED_FUNCTION_238_2();
  v7 = type metadata accessor for Searchfoundation_SocialMediaPostCardSection(0);
  OUTLINED_FUNCTION_11(v7);
  return OUTLINED_FUNCTION_466_0();
}

Swift::Void __swiftcall Searchfoundation_CardSectionValue.clearSocialMediaPostCardSection()()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBACC230, &qword_1B96B9548);
  OUTLINED_FUNCTION_183(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_31_2();
  v7 = OUTLINED_FUNCTION_741_0(v6);
  v8 = *(v0 + v1);
  if ((v7 & 1) == 0)
  {
    OUTLINED_FUNCTION_424_1();
    v9 = OUTLINED_FUNCTION_40_0();
    v10 = sub_1B937BD18(v9);
    OUTLINED_FUNCTION_157_2(v10);
  }

  v11 = type metadata accessor for Searchfoundation_SocialMediaPostCardSection(0);
  OUTLINED_FUNCTION_274_1(v11);
  OUTLINED_FUNCTION_290_0();
  OUTLINED_FUNCTION_122_0();
  sub_1B8DAA170();
  swift_endAccess();
}

uint64_t Searchfoundation_CardSectionValue.stockChartCardSection.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OUTLINED_FUNCTION_236();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v8);
  v9 = OUTLINED_FUNCTION_22_3();
  OUTLINED_FUNCTION_225_6(v9);
  OUTLINED_FUNCTION_101_0();
  OUTLINED_FUNCTION_39();
  v10 = type metadata accessor for Searchfoundation_StockChartCardSection();
  OUTLINED_FUNCTION_29_14(v10);
  if (v11)
  {
    Searchfoundation_StockChartCardSection.init()(a1);
    result = OUTLINED_FUNCTION_9_2();
    if (!v11)
    {
      return sub_1B8D9207C(v1, &unk_1EBACC238, &qword_1B96B9550);
    }
  }

  else
  {
    OUTLINED_FUNCTION_219_4();
    return sub_1B944B02C();
  }

  return result;
}

uint64_t Searchfoundation_CardSectionValue.stockChartCardSection.setter()
{
  OUTLINED_FUNCTION_183_0();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBACC238, &qword_1B96B9550);
  OUTLINED_FUNCTION_183(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_31_2();
  v7 = OUTLINED_FUNCTION_742_0(v6);
  v8 = *(v0 + v1);
  if ((v7 & 1) == 0)
  {
    OUTLINED_FUNCTION_424_1();
    v9 = OUTLINED_FUNCTION_40_0();
    v10 = sub_1B937BD18(v9);
    OUTLINED_FUNCTION_135(v10);
  }

  OUTLINED_FUNCTION_609_2();
  OUTLINED_FUNCTION_294();
  sub_1B944B02C();
  type metadata accessor for Searchfoundation_StockChartCardSection();
  v11 = OUTLINED_FUNCTION_53_0();
  __swift_storeEnumTagSinglePayload(v11, v12, v13, v14);
  OUTLINED_FUNCTION_73_0();
  OUTLINED_FUNCTION_122_0();
  sub_1B8DAA170();
  return swift_endAccess();
}

void Searchfoundation_CardSectionValue.stockChartCardSection.modify()
{
  OUTLINED_FUNCTION_284();
  v1 = OUTLINED_FUNCTION_185_0();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_66_0(v2);
  v3 = OUTLINED_FUNCTION_491();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  OUTLINED_FUNCTION_71(v7);
  v8 = type metadata accessor for Searchfoundation_StockChartCardSection();
  OUTLINED_FUNCTION_135_0(v8);
  v10 = *(v9 + 64);
  v11 = __swift_coroFrameAllocStub(v10);
  v12 = OUTLINED_FUNCTION_187(v11);
  v13 = __swift_coroFrameAllocStub(v12);
  OUTLINED_FUNCTION_39_13(v13);
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_55_2();
  sub_1B8D92024();
  OUTLINED_FUNCTION_59_13();
  if (v14)
  {
    OUTLINED_FUNCTION_57_14(MEMORY[0x1E69E7CC0]);
    *(v10 + 80) = xmmword_1B9652FE0;
    OUTLINED_FUNCTION_1224();
    v15 = OUTLINED_FUNCTION_915();
    type metadata accessor for Searchfoundation_Color(v15);
    v16 = OUTLINED_FUNCTION_87_5();
    __swift_storeEnumTagSinglePayload(v16, v17, v18, v19);
    OUTLINED_FUNCTION_1020();
    v20 = type metadata accessor for Searchfoundation_URL();
    OUTLINED_FUNCTION_6_19(v20);
    if (!v14)
    {
      sub_1B8D9207C(v0, &unk_1EBACC238, &qword_1B96B9550);
    }
  }

  else
  {
    OUTLINED_FUNCTION_609_2();
    OUTLINED_FUNCTION_246();
    sub_1B944B02C();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_283();
}

uint64_t Searchfoundation_CardSectionValue.hasStockChartCardSection.getter()
{
  v0 = OUTLINED_FUNCTION_514();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_183(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_22_3();
  OUTLINED_FUNCTION_225_6(v6);
  OUTLINED_FUNCTION_284_0();
  OUTLINED_FUNCTION_238_2();
  v7 = type metadata accessor for Searchfoundation_StockChartCardSection();
  OUTLINED_FUNCTION_11(v7);
  return OUTLINED_FUNCTION_466_0();
}

Swift::Void __swiftcall Searchfoundation_CardSectionValue.clearStockChartCardSection()()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBACC238, &qword_1B96B9550);
  OUTLINED_FUNCTION_183(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_31_2();
  v7 = OUTLINED_FUNCTION_741_0(v6);
  v8 = *(v0 + v1);
  if ((v7 & 1) == 0)
  {
    OUTLINED_FUNCTION_424_1();
    v9 = OUTLINED_FUNCTION_40_0();
    v10 = sub_1B937BD18(v9);
    OUTLINED_FUNCTION_157_2(v10);
  }

  v11 = type metadata accessor for Searchfoundation_StockChartCardSection();
  OUTLINED_FUNCTION_274_1(v11);
  OUTLINED_FUNCTION_290_0();
  OUTLINED_FUNCTION_122_0();
  sub_1B8DAA170();
  swift_endAccess();
}

uint64_t Searchfoundation_CardSectionValue.tableHeaderRowCardSection.getter@<X0>(int a1@<W8>)
{
  v3 = OUTLINED_FUNCTION_236();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v8);
  v9 = OUTLINED_FUNCTION_22_3();
  OUTLINED_FUNCTION_225_6(v9);
  OUTLINED_FUNCTION_101_0();
  OUTLINED_FUNCTION_39();
  v10 = type metadata accessor for Searchfoundation_TableHeaderRowCardSection(0);
  OUTLINED_FUNCTION_29_14(v10);
  if (v11)
  {
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    if (qword_1EBAB8B10 != -1)
    {
      OUTLINED_FUNCTION_1104();
    }

    result = OUTLINED_FUNCTION_59_0();
    if (a1 != 1)
    {
      return sub_1B8D9207C(v1, &unk_1EBACC240, &qword_1B96B9558);
    }
  }

  else
  {
    OUTLINED_FUNCTION_219_4();
    return sub_1B944B02C();
  }

  return result;
}

uint64_t Searchfoundation_CardSectionValue.tableHeaderRowCardSection.setter()
{
  OUTLINED_FUNCTION_183_0();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBACC240, &qword_1B96B9558);
  OUTLINED_FUNCTION_183(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_31_2();
  v7 = OUTLINED_FUNCTION_742_0(v6);
  v8 = *(v0 + v1);
  if ((v7 & 1) == 0)
  {
    OUTLINED_FUNCTION_424_1();
    v9 = OUTLINED_FUNCTION_40_0();
    v10 = sub_1B937BD18(v9);
    OUTLINED_FUNCTION_135(v10);
  }

  OUTLINED_FUNCTION_608_1();
  OUTLINED_FUNCTION_294();
  sub_1B944B02C();
  type metadata accessor for Searchfoundation_TableHeaderRowCardSection(0);
  v11 = OUTLINED_FUNCTION_53_0();
  __swift_storeEnumTagSinglePayload(v11, v12, v13, v14);
  OUTLINED_FUNCTION_73_0();
  OUTLINED_FUNCTION_122_0();
  sub_1B8DAA170();
  return swift_endAccess();
}

void Searchfoundation_CardSectionValue.tableHeaderRowCardSection.modify()
{
  OUTLINED_FUNCTION_284();
  v2 = OUTLINED_FUNCTION_185_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_66_0(v3);
  v4 = OUTLINED_FUNCTION_491();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_183(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_71(v8);
  v10 = type metadata accessor for Searchfoundation_TableHeaderRowCardSection(v9);
  OUTLINED_FUNCTION_135_0(v10);
  v12 = __swift_coroFrameAllocStub(*(v11 + 64));
  v13 = OUTLINED_FUNCTION_187(v12);
  v14 = __swift_coroFrameAllocStub(v13);
  OUTLINED_FUNCTION_39_13(v14);
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_55_2();
  sub_1B8D92024();
  OUTLINED_FUNCTION_17_2();
  if (v15)
  {
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    v16 = *(v0 + 20);
    if (qword_1EBAB8B10 != -1)
    {
      OUTLINED_FUNCTION_1104();
    }

    OUTLINED_FUNCTION_57_2();
    if (v0 != 1)
    {
      sub_1B8D9207C(v1, &unk_1EBACC240, &qword_1B96B9558);
    }
  }

  else
  {
    OUTLINED_FUNCTION_608_1();
    OUTLINED_FUNCTION_246();
    sub_1B944B02C();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_283();
}

uint64_t Searchfoundation_CardSectionValue.hasTableHeaderRowCardSection.getter()
{
  v0 = OUTLINED_FUNCTION_514();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_183(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_22_3();
  OUTLINED_FUNCTION_225_6(v6);
  OUTLINED_FUNCTION_284_0();
  OUTLINED_FUNCTION_238_2();
  v7 = type metadata accessor for Searchfoundation_TableHeaderRowCardSection(0);
  OUTLINED_FUNCTION_11(v7);
  return OUTLINED_FUNCTION_466_0();
}

Swift::Void __swiftcall Searchfoundation_CardSectionValue.clearTableHeaderRowCardSection()()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBACC240, &qword_1B96B9558);
  OUTLINED_FUNCTION_183(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_31_2();
  v7 = OUTLINED_FUNCTION_741_0(v6);
  v8 = *(v0 + v1);
  if ((v7 & 1) == 0)
  {
    OUTLINED_FUNCTION_424_1();
    v9 = OUTLINED_FUNCTION_40_0();
    v10 = sub_1B937BD18(v9);
    OUTLINED_FUNCTION_157_2(v10);
  }

  v11 = type metadata accessor for Searchfoundation_TableHeaderRowCardSection(0);
  OUTLINED_FUNCTION_274_1(v11);
  OUTLINED_FUNCTION_290_0();
  OUTLINED_FUNCTION_122_0();
  sub_1B8DAA170();
  swift_endAccess();
}

uint64_t Searchfoundation_CardSectionValue.tableRowCardSection.getter@<X0>(int a1@<W8>)
{
  v3 = OUTLINED_FUNCTION_236();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v8);
  v9 = OUTLINED_FUNCTION_22_3();
  OUTLINED_FUNCTION_225_6(v9);
  OUTLINED_FUNCTION_101_0();
  OUTLINED_FUNCTION_39();
  v10 = type metadata accessor for Searchfoundation_TableRowCardSection(0);
  OUTLINED_FUNCTION_29_14(v10);
  if (v11)
  {
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    if (qword_1EBAB8B20 != -1)
    {
      OUTLINED_FUNCTION_1103();
    }

    result = OUTLINED_FUNCTION_59_0();
    if (a1 != 1)
    {
      return sub_1B8D9207C(v1, &qword_1EBACC248, &qword_1B96B9560);
    }
  }

  else
  {
    OUTLINED_FUNCTION_219_4();
    return sub_1B944B02C();
  }

  return result;
}

uint64_t Searchfoundation_CardSectionValue.tableRowCardSection.setter()
{
  OUTLINED_FUNCTION_183_0();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACC248, &qword_1B96B9560);
  OUTLINED_FUNCTION_183(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_31_2();
  v7 = OUTLINED_FUNCTION_742_0(v6);
  v8 = *(v0 + v1);
  if ((v7 & 1) == 0)
  {
    OUTLINED_FUNCTION_424_1();
    v9 = OUTLINED_FUNCTION_40_0();
    v10 = sub_1B937BD18(v9);
    OUTLINED_FUNCTION_135(v10);
  }

  OUTLINED_FUNCTION_607_1();
  OUTLINED_FUNCTION_294();
  sub_1B944B02C();
  type metadata accessor for Searchfoundation_TableRowCardSection(0);
  v11 = OUTLINED_FUNCTION_53_0();
  __swift_storeEnumTagSinglePayload(v11, v12, v13, v14);
  OUTLINED_FUNCTION_73_0();
  OUTLINED_FUNCTION_122_0();
  sub_1B8DAA170();
  return swift_endAccess();
}

void Searchfoundation_CardSectionValue.tableRowCardSection.modify()
{
  OUTLINED_FUNCTION_284();
  v2 = OUTLINED_FUNCTION_185_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_66_0(v3);
  v4 = OUTLINED_FUNCTION_491();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_183(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_71(v8);
  v10 = type metadata accessor for Searchfoundation_TableRowCardSection(v9);
  OUTLINED_FUNCTION_135_0(v10);
  v12 = __swift_coroFrameAllocStub(*(v11 + 64));
  v13 = OUTLINED_FUNCTION_187(v12);
  v14 = __swift_coroFrameAllocStub(v13);
  OUTLINED_FUNCTION_39_13(v14);
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_55_2();
  sub_1B8D92024();
  OUTLINED_FUNCTION_17_2();
  if (v15)
  {
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    v16 = *(v0 + 20);
    if (qword_1EBAB8B20 != -1)
    {
      OUTLINED_FUNCTION_1103();
    }

    OUTLINED_FUNCTION_57_2();
    if (v0 != 1)
    {
      sub_1B8D9207C(v1, &qword_1EBACC248, &qword_1B96B9560);
    }
  }

  else
  {
    OUTLINED_FUNCTION_607_1();
    OUTLINED_FUNCTION_246();
    sub_1B944B02C();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_283();
}

uint64_t Searchfoundation_CardSectionValue.hasTableRowCardSection.getter()
{
  v0 = OUTLINED_FUNCTION_514();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_183(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_22_3();
  OUTLINED_FUNCTION_225_6(v6);
  OUTLINED_FUNCTION_284_0();
  OUTLINED_FUNCTION_238_2();
  v7 = type metadata accessor for Searchfoundation_TableRowCardSection(0);
  OUTLINED_FUNCTION_11(v7);
  return OUTLINED_FUNCTION_466_0();
}

Swift::Void __swiftcall Searchfoundation_CardSectionValue.clearTableRowCardSection()()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACC248, &qword_1B96B9560);
  OUTLINED_FUNCTION_183(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_31_2();
  v7 = OUTLINED_FUNCTION_741_0(v6);
  v8 = *(v0 + v1);
  if ((v7 & 1) == 0)
  {
    OUTLINED_FUNCTION_424_1();
    v9 = OUTLINED_FUNCTION_40_0();
    v10 = sub_1B937BD18(v9);
    OUTLINED_FUNCTION_157_2(v10);
  }

  v11 = type metadata accessor for Searchfoundation_TableRowCardSection(0);
  OUTLINED_FUNCTION_274_1(v11);
  OUTLINED_FUNCTION_290_0();
  OUTLINED_FUNCTION_122_0();
  sub_1B8DAA170();
  swift_endAccess();
}

uint64_t Searchfoundation_CardSectionValue.textColumnsCardSection.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OUTLINED_FUNCTION_236();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v8);
  v9 = OUTLINED_FUNCTION_22_3();
  OUTLINED_FUNCTION_225_6(v9);
  OUTLINED_FUNCTION_101_0();
  OUTLINED_FUNCTION_39();
  v10 = type metadata accessor for Searchfoundation_TextColumnsCardSection(0);
  OUTLINED_FUNCTION_29_14(v10);
  if (v11)
  {
    Searchfoundation_TextColumnsCardSection.init()(a1);
    result = OUTLINED_FUNCTION_9_2();
    if (!v11)
    {
      return sub_1B8D9207C(v1, &unk_1EBACC250, &qword_1B96B9568);
    }
  }

  else
  {
    OUTLINED_FUNCTION_219_4();
    return sub_1B944B02C();
  }

  return result;
}

uint64_t Searchfoundation_CardSectionValue.textColumnsCardSection.setter()
{
  OUTLINED_FUNCTION_183_0();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBACC250, &qword_1B96B9568);
  OUTLINED_FUNCTION_183(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_31_2();
  v7 = OUTLINED_FUNCTION_742_0(v6);
  v8 = *(v0 + v1);
  if ((v7 & 1) == 0)
  {
    OUTLINED_FUNCTION_424_1();
    v9 = OUTLINED_FUNCTION_40_0();
    v10 = sub_1B937BD18(v9);
    OUTLINED_FUNCTION_135(v10);
  }

  OUTLINED_FUNCTION_606_2();
  OUTLINED_FUNCTION_294();
  sub_1B944B02C();
  type metadata accessor for Searchfoundation_TextColumnsCardSection(0);
  v11 = OUTLINED_FUNCTION_53_0();
  __swift_storeEnumTagSinglePayload(v11, v12, v13, v14);
  OUTLINED_FUNCTION_73_0();
  OUTLINED_FUNCTION_122_0();
  sub_1B8DAA170();
  return swift_endAccess();
}

void Searchfoundation_CardSectionValue.textColumnsCardSection.modify()
{
  OUTLINED_FUNCTION_284();
  v1 = OUTLINED_FUNCTION_185_0();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_66_0(v2);
  v3 = OUTLINED_FUNCTION_491();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v8 = OUTLINED_FUNCTION_71(v7);
  v9 = type metadata accessor for Searchfoundation_TextColumnsCardSection(v8);
  OUTLINED_FUNCTION_135_0(v9);
  v11 = *(v10 + 64);
  v12 = __swift_coroFrameAllocStub(v11);
  v13 = OUTLINED_FUNCTION_187(v12);
  v14 = __swift_coroFrameAllocStub(v13);
  OUTLINED_FUNCTION_39_13(v14);
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_55_2();
  sub_1B8D92024();
  OUTLINED_FUNCTION_59_13();
  if (v15)
  {
    OUTLINED_FUNCTION_37_12(MEMORY[0x1E69E7CC0]);
    *(v11 + 80) = 0;
    *(v11 + 88) = v16;
    *(v11 + 96) = 0;
    *(v11 + 104) = v17;
    OUTLINED_FUNCTION_1245();
    v18 = OUTLINED_FUNCTION_1052();
    v19 = type metadata accessor for Searchfoundation_Color(v18);
    OUTLINED_FUNCTION_6_19(v19);
    if (!v15)
    {
      sub_1B8D9207C(v0, &unk_1EBACC250, &qword_1B96B9568);
    }
  }

  else
  {
    OUTLINED_FUNCTION_606_2();
    OUTLINED_FUNCTION_246();
    sub_1B944B02C();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_283();
}

uint64_t Searchfoundation_CardSectionValue.hasTextColumnsCardSection.getter()
{
  v0 = OUTLINED_FUNCTION_514();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_183(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_22_3();
  OUTLINED_FUNCTION_225_6(v6);
  OUTLINED_FUNCTION_284_0();
  OUTLINED_FUNCTION_238_2();
  v7 = type metadata accessor for Searchfoundation_TextColumnsCardSection(0);
  OUTLINED_FUNCTION_11(v7);
  return OUTLINED_FUNCTION_466_0();
}

Swift::Void __swiftcall Searchfoundation_CardSectionValue.clearTextColumnsCardSection()()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBACC250, &qword_1B96B9568);
  OUTLINED_FUNCTION_183(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_31_2();
  v7 = OUTLINED_FUNCTION_741_0(v6);
  v8 = *(v0 + v1);
  if ((v7 & 1) == 0)
  {
    OUTLINED_FUNCTION_424_1();
    v9 = OUTLINED_FUNCTION_40_0();
    v10 = sub_1B937BD18(v9);
    OUTLINED_FUNCTION_157_2(v10);
  }

  v11 = type metadata accessor for Searchfoundation_TextColumnsCardSection(0);
  OUTLINED_FUNCTION_274_1(v11);
  OUTLINED_FUNCTION_290_0();
  OUTLINED_FUNCTION_122_0();
  sub_1B8DAA170();
  swift_endAccess();
}

uint64_t Searchfoundation_CardSectionValue.titleCardSection.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OUTLINED_FUNCTION_236();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v8);
  v9 = OUTLINED_FUNCTION_22_3();
  OUTLINED_FUNCTION_225_6(v9);
  OUTLINED_FUNCTION_101_0();
  OUTLINED_FUNCTION_39();
  v10 = type metadata accessor for Searchfoundation_TitleCardSection();
  OUTLINED_FUNCTION_29_14(v10);
  if (v11)
  {
    Searchfoundation_TitleCardSection.init()(a1);
    result = OUTLINED_FUNCTION_9_2();
    if (!v11)
    {
      return sub_1B8D9207C(v1, &unk_1EBACC258, &qword_1B96B9570);
    }
  }

  else
  {
    OUTLINED_FUNCTION_219_4();
    return sub_1B944B02C();
  }

  return result;
}

uint64_t Searchfoundation_CardSectionValue.titleCardSection.setter()
{
  OUTLINED_FUNCTION_183_0();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBACC258, &qword_1B96B9570);
  OUTLINED_FUNCTION_183(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_31_2();
  v7 = OUTLINED_FUNCTION_742_0(v6);
  v8 = *(v0 + v1);
  if ((v7 & 1) == 0)
  {
    OUTLINED_FUNCTION_424_1();
    v9 = OUTLINED_FUNCTION_40_0();
    v10 = sub_1B937BD18(v9);
    OUTLINED_FUNCTION_135(v10);
  }

  OUTLINED_FUNCTION_605_2();
  OUTLINED_FUNCTION_294();
  sub_1B944B02C();
  type metadata accessor for Searchfoundation_TitleCardSection();
  v11 = OUTLINED_FUNCTION_53_0();
  __swift_storeEnumTagSinglePayload(v11, v12, v13, v14);
  OUTLINED_FUNCTION_73_0();
  OUTLINED_FUNCTION_122_0();
  sub_1B8DAA170();
  return swift_endAccess();
}

void Searchfoundation_CardSectionValue.titleCardSection.modify()
{
  OUTLINED_FUNCTION_284();
  v1 = OUTLINED_FUNCTION_185_0();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_66_0(v2);
  v3 = OUTLINED_FUNCTION_491();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  OUTLINED_FUNCTION_71(v7);
  v8 = type metadata accessor for Searchfoundation_TitleCardSection();
  OUTLINED_FUNCTION_135_0(v8);
  v10 = *(v9 + 64);
  v11 = __swift_coroFrameAllocStub(v10);
  v12 = OUTLINED_FUNCTION_187(v11);
  v13 = __swift_coroFrameAllocStub(v12);
  OUTLINED_FUNCTION_39_13(v13);
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_55_2();
  sub_1B8D92024();
  OUTLINED_FUNCTION_59_13();
  if (v14)
  {
    OUTLINED_FUNCTION_57_14(MEMORY[0x1E69E7CC0]);
    *(v10 + 80) = 0;
    *(v10 + 88) = v15;
    *(v10 + 96) = 0;
    *(v10 + 104) = v15;
    *(v10 + 112) = 0;
    OUTLINED_FUNCTION_1245();
    v16 = OUTLINED_FUNCTION_1052();
    v17 = type metadata accessor for Searchfoundation_Color(v16);
    OUTLINED_FUNCTION_6_19(v17);
    if (!v14)
    {
      sub_1B8D9207C(v0, &unk_1EBACC258, &qword_1B96B9570);
    }
  }

  else
  {
    OUTLINED_FUNCTION_605_2();
    OUTLINED_FUNCTION_246();
    sub_1B944B02C();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_283();
}

uint64_t Searchfoundation_CardSectionValue.hasTitleCardSection.getter()
{
  v0 = OUTLINED_FUNCTION_514();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_183(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_22_3();
  OUTLINED_FUNCTION_225_6(v6);
  OUTLINED_FUNCTION_284_0();
  OUTLINED_FUNCTION_238_2();
  v7 = type metadata accessor for Searchfoundation_TitleCardSection();
  OUTLINED_FUNCTION_11(v7);
  return OUTLINED_FUNCTION_466_0();
}

Swift::Void __swiftcall Searchfoundation_CardSectionValue.clearTitleCardSection()()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBACC258, &qword_1B96B9570);
  OUTLINED_FUNCTION_183(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_31_2();
  v7 = OUTLINED_FUNCTION_741_0(v6);
  v8 = *(v0 + v1);
  if ((v7 & 1) == 0)
  {
    OUTLINED_FUNCTION_424_1();
    v9 = OUTLINED_FUNCTION_40_0();
    v10 = sub_1B937BD18(v9);
    OUTLINED_FUNCTION_157_2(v10);
  }

  v11 = type metadata accessor for Searchfoundation_TitleCardSection();
  OUTLINED_FUNCTION_274_1(v11);
  OUTLINED_FUNCTION_290_0();
  OUTLINED_FUNCTION_122_0();
  sub_1B8DAA170();
  swift_endAccess();
}