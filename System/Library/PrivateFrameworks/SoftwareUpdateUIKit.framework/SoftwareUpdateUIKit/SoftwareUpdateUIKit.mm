uint64_t __os_log_helper_16_2_2_8_32_8_66(uint64_t result, uint64_t a2, uint64_t a3)
{
  *result = 2;
  *(result + 1) = 2;
  *(result + 2) = 32;
  *(result + 3) = 8;
  *(result + 4) = a2;
  *(result + 12) = 66;
  *(result + 13) = 8;
  *(result + 14) = a3;
  return result;
}

uint64_t __os_log_helper_16_2_1_8_32(uint64_t result, uint64_t a2)
{
  *result = 2;
  *(result + 1) = 1;
  *(result + 2) = 32;
  *(result + 3) = 8;
  *(result + 4) = a2;
  return result;
}

uint64_t __os_log_helper_16_2_4_8_32_8_0_8_0_8_0(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *result = 2;
  *(result + 1) = 4;
  *(result + 2) = 32;
  *(result + 3) = 8;
  *(result + 4) = a2;
  *(result + 12) = 0;
  *(result + 13) = 8;
  *(result + 14) = a3;
  *(result + 22) = 0;
  *(result + 23) = 8;
  *(result + 24) = a4;
  *(result + 32) = 0;
  *(result + 33) = 8;
  *(result + 34) = a5;
  return result;
}

id SUUITermsConditionsActionToString(uint64_t a1)
{
  if (a1)
  {
    if (a1 == 1)
    {
      v2 = MEMORY[0x277D82BE0](@"SUUITermsAndConditionsActionDecline");
    }

    else if (a1 == 2)
    {
      v2 = MEMORY[0x277D82BE0](@"SUUITermsAndConditionsActionCancel");
    }
  }

  else
  {
    v2 = MEMORY[0x277D82BE0](@"SUUITermsAndConditionsActionAgree");
  }

  return v2;
}

void sub_26AE8CB64(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, _Unwind_Exception *exception_object, uint64_t a12, uint64_t a13, uint64_t a14, id *location, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, int a48, int a49, uint64_t a50)
{
  objc_destroyWeak(location);
  objc_destroyWeak((v50 - 256));
  _Unwind_Resume(a1);
}

uint64_t __os_log_helper_16_2_3_8_32_8_66_8_66(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *result = 2;
  *(result + 1) = 3;
  *(result + 2) = 32;
  *(result + 3) = 8;
  *(result + 4) = a2;
  *(result + 12) = 66;
  *(result + 13) = 8;
  *(result + 14) = a3;
  *(result + 22) = 66;
  *(result + 23) = 8;
  *(result + 24) = a4;
  return result;
}

uint64_t __os_log_helper_16_2_2_8_32_8_0(uint64_t result, uint64_t a2, uint64_t a3)
{
  *result = 2;
  *(result + 1) = 2;
  *(result + 2) = 32;
  *(result + 3) = 8;
  *(result + 4) = a2;
  *(result + 12) = 0;
  *(result + 13) = 8;
  *(result + 14) = a3;
  return result;
}

uint64_t __os_log_helper_16_2_3_8_32_8_0_8_66(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *result = 2;
  *(result + 1) = 3;
  *(result + 2) = 32;
  *(result + 3) = 8;
  *(result + 4) = a2;
  *(result + 12) = 0;
  *(result + 13) = 8;
  *(result + 14) = a3;
  *(result + 22) = 66;
  *(result + 23) = 8;
  *(result + 24) = a4;
  return result;
}

uint64_t sub_26AE91518()
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DB510);
  sub_26B078A10();

  return v1;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1)
{
  v4 = *a1;
  if (!*a1)
  {
    TypeByMangledNameInContext2 = swift_getTypeByMangledNameInContext2();
    *a1 = TypeByMangledNameInContext2;
    return TypeByMangledNameInContext2;
  }

  return v4;
}

uint64_t sub_26AE91614()
{
  v2 = *v0;

  return v2;
}

uint64_t sub_26AE9165C(uint64_t a1, char a2)
{

  *v2 = a1;
  *(v2 + 8) = a2 & 1;
}

uint64_t sub_26AE916DC@<X0>(uint64_t a1@<X8>)
{
  v5[2] = a1;
  v8 = 0;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DEB80);
  v5[0] = (*(*(v6 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v6);
  v1 = (v5 - v5[0]);
  v7 = v5 - v5[0];
  v8 = v2;
  v3 = type metadata accessor for TermsAndConditionsSheetView();
  sub_26AE9181C((v5[1] + *(v3 + 20)), v1);
  sub_26B078A10();
  return sub_26AE918F0(v7);
}

uint64_t type metadata accessor for TermsAndConditionsSheetView()
{
  v1 = qword_2803DB878;
  if (!qword_2803DB878)
  {
    return swift_getSingletonMetadata();
  }

  return v1;
}

void *sub_26AE9181C(uint64_t *a1, void *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DB520);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v2 = sub_26B078AD0();
    (*(*(v2 - 8) + 16))(a2, a1);
  }

  else
  {
    v4 = *a1;

    *a2 = v4;
  }

  swift_storeEnumTagMultiPayload();
  return a2;
}

uint64_t sub_26AE918F0(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DB520);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v1 = sub_26B078AD0();
    (*(*(v1 - 8) + 8))(a1);
  }

  else
  {
  }

  return a1;
}

uint64_t sub_26AE919CC(uint64_t a1)
{
  v7 = a1;
  v9 = 0;
  v8 = 0;
  v5 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DEB80) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v6 = &v4 - v5;
  v9 = MEMORY[0x28223BE20](v7);
  v8 = v1;
  sub_26AE9181C(v9, (&v4 - v5));
  v2 = type metadata accessor for TermsAndConditionsSheetView();
  sub_26AE91A90(v6, (v1 + *(v2 + 20)));
  return sub_26AE918F0(v7);
}

void *sub_26AE91A90(const void *a1, void *a2)
{
  if (a2 != a1)
  {
    sub_26AE91B7C(a2);
    v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DB520);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v2 = sub_26B078AD0();
      (*(*(v2 - 8) + 32))(a2, a1);
      swift_storeEnumTagMultiPayload();
    }

    else
    {
      memcpy(a2, a1, *(*(v4 - 8) + 64));
    }
  }

  return a2;
}

uint64_t sub_26AE91B7C(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DB520);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v1 = sub_26B078AD0();
    (*(*(v1 - 8) + 8))(a1);
  }

  else
  {
  }

  return a1;
}

uint64_t sub_26AE91C6C()
{
  type metadata accessor for TermsAndConditionsSheetView();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DC9D0);
  sub_26B0798B0();

  return v1 & 1;
}

uint64_t sub_26AE91D04()
{
  type metadata accessor for TermsAndConditionsSheetView();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DC9D0);
  sub_26B0798C0();
  sub_26AE91DC8();
}

uint64_t sub_26AE91DF4()
{
  type metadata accessor for TermsAndConditionsSheetView();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DC9D0);
  sub_26B0798D0();

  return v1;
}

uint64_t sub_26AE91EA4()
{
  v2 = *(v0 + *(type metadata accessor for TermsAndConditionsSheetView() + 24));

  return v2 & 1;
}

uint64_t sub_26AE91EF8(char a1, uint64_t a2)
{

  v3 = v2 + *(type metadata accessor for TermsAndConditionsSheetView() + 24);
  *v3 = a1;
  *(v3 + 8) = a2;
}

uint64_t TermsAndConditionsSheetView.documentation.getter()
{
  v2 = *(v0 + *(type metadata accessor for TermsAndConditionsSheetView() + 28));
  swift_unknownObjectRetain();
  return v2;
}

uint64_t TermsAndConditionsSheetView.completion.getter()
{
  v2 = *(v0 + *(type metadata accessor for TermsAndConditionsSheetView() + 32));

  return v2;
}

uint64_t TermsAndConditionsSheetView.init(displaying:completion:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v24 = a4;
  v26 = a1;
  v23 = a2;
  v25 = a3;
  v33 = 0;
  v32 = 0;
  v30 = 0;
  v31 = 0;
  v22 = type metadata accessor for TermsAndConditionsSheetView();
  v18 = (*(*(v22 - 1) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v27 = (&v17 - v18);
  v33 = &v17 - v18;
  v32 = MEMORY[0x28223BE20](v26);
  v30 = v4;
  v31 = v5;
  swift_getKeyPath();
  sub_26B078A30();
  v6 = v22;
  v7 = v27;
  v8 = v29;
  *v27 = v28;
  v20 = 1;
  *(v7 + 8) = v8 & 1;
  v19 = v6[5];
  swift_getKeyPath();
  sub_26B078A30();
  v21 = v22[6];
  v9 = sub_26AE91C18();
  v10 = v27 + v21;
  *v10 = v9 & v20;
  *(v10 + 1) = v11;
  swift_unknownObjectRetain();
  *(v27 + v22[7]) = v26;

  v12 = v27;
  v13 = v24;
  v14 = v25;
  v15 = (v27 + v22[8]);
  *v15 = v23;
  v15[1] = v14;
  sub_26AE950C8(v12, v13);

  swift_unknownObjectRelease();
  return sub_26AE952CC(v27);
}

uint64_t TermsAndConditionsSheetView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v11 = a1;
  v8 = sub_26AE953DC;
  v21 = 0;
  v20 = 0;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DB530);
  v9 = *(v15 - 8);
  v10 = v15 - 8;
  v4 = (*(v9 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v15);
  v13 = &v4 - v4;
  v5 = (v2 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](&v4 - v4);
  v14 = &v4 - v5;
  v21 = &v4 - v5;
  v20 = v1;
  v6 = &v18;
  v19 = v1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DB538);
  sub_26AE953E4();
  sub_26B078BB0();
  v12 = sub_26AE95A74();
  sub_26AE9463C(v13, v15, v14);
  v17 = *(v9 + 8);
  v16 = v9 + 8;
  v17(v13, v15);
  (*(v9 + 16))(v13, v14, v15);
  sub_26AE94B4C(v13, v15, v11);
  v17(v13, v15);
  return (v17)(v14, v15);
}

uint64_t sub_26AE923BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v60 = a2;
  v37 = a1;
  v29 = MEMORY[0x277CDE8A0];
  v40 = MEMORY[0x277CDED18];
  v42 = MEMORY[0x277CDE130];
  v44 = sub_26AE9BCEC;
  v52 = MEMORY[0x277CDEEF8];
  v82 = 0;
  v81 = 0;
  *v54 = 0;
  v33 = sub_26B078D60();
  v30 = *(v33 - 8);
  v31 = v33 - 8;
  v10 = (*(v30 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](0);
  v32 = &v9 - v10;
  v11 = (*(*(sub_26B078300() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](*v54);
  v22 = &v9 - v11;
  v3 = sub_26B079DE0();
  v12 = (*(*(v3 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v3);
  v20 = &v9 - v12;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DB560);
  v13 = (*(*(v25 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v25);
  v24 = &v9 - v13;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DB558);
  v34 = *(v38 - 8);
  v35 = v38 - 8;
  v14 = (*(v34 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v38);
  v36 = &v9 - v14;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DB548);
  v45 = *(v48 - 8);
  v46 = v48 - 8;
  v15 = (*(v45 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v48);
  v47 = &v9 - v15;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DBA98);
  v56 = *(v59 - 8);
  v57 = v59 - 8;
  v16 = (*(v56 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v59);
  v58 = &v9 - v16;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DB538);
  v18 = *(*(v61 - 8) + 64);
  v17 = (v18 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v61);
  v63 = &v9 - v17;
  v19 = (v18 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](&v9 - v17);
  v64 = &v9 - v19;
  v82 = &v9 - v19;
  v81 = a1;
  sub_26AE92D44(v4);
  *&v54[8] = 1;
  sub_26B079D00();
  sub_26B079D80();
  v21 = *sub_26B02D0D0();
  MEMORY[0x277D82BE0](v21);
  sub_26AEFB5C4();
  v79[2] = 0;
  v79[3] = 0;
  v80 = *&v54[7] & 0x100;
  v5 = sub_26B079E40();
  v23 = v79;
  v79[0] = v5;
  v79[1] = v6;
  v27 = sub_26AE95688();
  v28 = sub_26AE95974();
  v26 = MEMORY[0x277D837D0];
  sub_26B0794F0();
  sub_26AE9BCC0();
  sub_26AE96258(v24);
  (*(v30 + 104))(v32, *MEMORY[0x277CDDDC0], v33);
  v75 = v25;
  v76 = v26;
  v77 = v27;
  v78 = v28;
  v53 = 1;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_26B0795A0();
  (*(v30 + 8))(v32, v33);
  (*(v34 + 8))(v36, v38);
  v43 = &v65;
  v66 = v37;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DB550);
  v73 = v38;
  v74 = OpaqueTypeConformance2;
  v50 = swift_getOpaqueTypeConformance2();
  v41 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803DB5A8);
  v7 = sub_26AE959EC();
  v71 = v41;
  v72 = v7;
  v51 = swift_getOpaqueTypeConformance2();
  sub_26B079690();
  (*(v45 + 8))(v47, v48);
  v55 = sub_26B0791C0();
  v67 = v48;
  v68 = v49;
  v69 = v50;
  v70 = v51;
  swift_getOpaqueTypeConformance2();
  sub_26B079680();
  (*(v56 + 8))(v58, v59);
  v62 = sub_26AE953E4();
  sub_26AE9463C(v63, v61, v64);
  sub_26AE9BCF4(v63);
  sub_26AE9BD5C(v64, v63);
  sub_26AE94B4C(v63, v61, v60);
  sub_26AE9BCF4(v63);
  return sub_26AE9BCF4(v64);
}

uint64_t sub_26AE92D44@<X0>(uint64_t a1@<X8>)
{
  v46 = a1;
  v98 = 0;
  v97 = 0;
  v96 = 0;
  v95 = 0;
  v75 = 0;
  v72 = 0;
  v73 = 0;
  v68 = 0;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DB598);
  v48 = (*(*(v47 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v47);
  v49 = &v17 - v48;
  v50 = (v2 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](&v17 - v48);
  v51 = &v17 - v50;
  v52 = (v3 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](&v17 - v50);
  v53 = &v17 - v52;
  v98 = &v17 - v52;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DB578);
  v55 = (*(*(v54 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v54);
  v56 = &v17 - v55;
  v57 = (v4 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](&v17 - v55);
  v58 = &v17 - v57;
  v59 = (v5 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](&v17 - v57);
  v60 = &v17 - v59;
  v97 = &v17 - v59;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DB560);
  v62 = (*(*(v61 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v61);
  v63 = (&v17 - v62);
  v64 = (v6 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](&v17 - v62);
  v65 = (&v17 - v64);
  v96 = &v17 - v64;
  v95 = v1;
  v66 = *(v1 + *(type metadata accessor for TermsAndConditionsSheetView() + 28));
  swift_unknownObjectRetain();
  swift_getObjectType();
  v67 = [v66 licenseAgreement];
  if (v67)
  {
    v45 = v67;
    v40 = v67;
    v41 = sub_26B0781D0();
    v42 = v7;
    MEMORY[0x277D82BD8](v40);
    v43 = v41;
    v44 = v42;
  }

  else
  {
    v43 = 0;
    v44 = 0xF000000000000000;
  }

  v38 = v44;
  v39 = v43;
  if ((v44 & 0xF000000000000000) == 0xF000000000000000)
  {
    swift_unknownObjectRelease();
    HIDWORD(v24) = 1;
    sub_26B079D00();
    sub_26B078E10();
    v92 = 0;
    v93 = 0;
    v94 = *(&v24 + 3) & 0x100;
    v88 = sub_26B0792C0();
    v89 = v9;
    v90 = v10;
    v91 = v11;
    v18 = v88;
    v19 = v9;
    v20 = v10;
    v21 = v11;
    v17 = sub_26B079210();
    v84 = v18;
    v85 = v19;
    v86 = v20 & 1 & BYTE4(v24);
    v87 = v21;
    v80 = sub_26B0792A0();
    v81 = v12;
    v82 = v13;
    v83 = v14;
    v22 = v80;
    v23 = v12;
    LODWORD(v24) = v13;
    v25 = v14;

    sub_26AE95AFC(v18, v19, v20 & 1);

    v26 = v77;
    v77[0] = v22;
    v77[1] = v23;
    v78 = v24 & 1 & BYTE4(v24);
    v79 = v25;
    v76 = 12;
    View.suuiIdentifiable(_:)();
    sub_26AE95B40(v26);
    v27 = sub_26AE958D0();
    sub_26AE9463C(v51, v47, v53);
    sub_26AE95B88(v51);
    v75 = v51;
    sub_26AE95C2C(v53, v49);
    sub_26AE94B4C(v49, v47, v51);
    sub_26AE95B88(v49);
    sub_26AE95C2C(v51, v49);
    v15 = sub_26AE95730();
    sub_26AE94CA8(v49, v54, v47, v15, v27, v63);
    sub_26AE95B88(v49);
    sub_26AE95D6C(v63, v65);
    sub_26AE95B88(v51);
    sub_26AE95B88(v53);
  }

  else
  {
    v36 = v39;
    v37 = v38;
    v29 = v38;
    v28 = v39;
    v72 = v39;
    v73 = v38;
    swift_unknownObjectRelease();
    sub_26AE961DC(v28, v29);
    v30 = v71;
    UpdateRemoteContentView.init(data:)(v28, v29, v71);
    v31 = v74;
    v32 = 57;
    memcpy(v74, v30, 0x39uLL);
    v34 = v70;
    memcpy(v70, v74, 0x39uLL);
    v33 = &v69;
    v69 = 12;
    sub_26AE957D8();
    View.suuiIdentifiable(_:)();
    sub_26AE96494(v34);
    v35 = sub_26AE95730();
    sub_26AE9463C(v58, v54, v60);
    sub_26AE964FC(v58);
    v68 = v58;
    sub_26AE965C0(v60, v56);
    sub_26AE94B4C(v56, v54, v58);
    sub_26AE964FC(v56);
    sub_26AE965C0(v58, v56);
    v8 = sub_26AE958D0();
    sub_26AE94BB0(v56, v54, v47, v35, v8, v63);
    sub_26AE964FC(v56);
    sub_26AE95D6C(v63, v65);
    sub_26AE964FC(v58);
    sub_26AE964FC(v60);
    sub_26AE96418(v28, v29);
  }

  sub_26AE95EF8(v65, v63);
  sub_26AE95688();
  sub_26AE94B4C(v63, v61, v46);
  sub_26AE96258(v63);
  return sub_26AE96258(v65);
}

uint64_t sub_26AE934A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v17 = a2;
  v10 = a1;
  v11 = sub_26AE9BE08;
  v27 = 0;
  v26 = 0;
  v2 = sub_26B078FA0();
  v6 = (*(*(v2 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v2);
  v14 = &v6 - v6;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DB5A8);
  v15 = *(v21 - 8);
  v16 = v21 - 8;
  v8 = *(v15 + 64);
  v7 = (v8 + 15) & 0xFFFFFFFFFFFFFFF0;
  v3 = MEMORY[0x28223BE20](v10);
  v19 = &v6 - v7;
  v9 = (v8 + 15) & 0xFFFFFFFFFFFFFFF0;
  v4 = MEMORY[0x28223BE20](v3);
  v20 = &v6 - v9;
  v27 = &v6 - v9;
  v26 = v4;
  sub_26B078F90();
  v12 = &v24;
  v25 = v10;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DBAA0);
  sub_26AE9BE10();
  sub_26B078C30();
  v18 = sub_26AE959EC();
  sub_26B0264D4(v19, v21, v20);
  v23 = *(v15 + 8);
  v22 = v15 + 8;
  v23(v19, v21);
  (*(v15 + 16))(v19, v20, v21);
  MEMORY[0x26D66C1B0](v19, v21, v18);
  v23(v19, v21);
  return (v23)(v20, v21);
}

uint64_t sub_26AE93710@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v63 = a2;
  v41 = a1;
  v26 = sub_26AE9C1C0;
  v47 = sub_26AE9C7D8;
  v88 = 0;
  v87 = 0;
  v86 = 0;
  v35 = &v81;
  v81 = 0;
  v82 = 0;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DBAB0);
  v13 = (*(*(v59 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v59);
  v65 = &v12 - v13;
  v14 = (v3 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](&v12 - v13);
  v67 = &v12 - v14;
  v88 = &v12 - v14;
  v38 = 0;
  v15 = *(type metadata accessor for TermsAndConditionsSheetView() - 8);
  v24 = v15;
  v43 = *(v15 + 64);
  v16 = (v43 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v38);
  v46 = &v12 - v16;
  v17 = (*(*(sub_26B078300() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v38);
  v40 = &v12 - v17;
  v4 = sub_26B079DE0();
  v18 = (*(*(v4 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v4);
  v37 = &v12 - v18;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DDD20);
  v30 = *(v54 - 8);
  v31 = v54 - 8;
  v19 = (*(v30 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v54);
  v53 = &v12 - v19;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DBAC0);
  v20 = (*(*(v32 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v32);
  v34 = &v12 - v20;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DBAC8);
  v21 = (*(*(v57 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v57);
  v66 = &v12 - v21;
  v22 = (v5 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](&v12 - v21);
  v68 = &v12 - v22;
  v87 = &v12 - v22;
  v86 = a1;
  *&v36[1] = 1;
  sub_26B079D00();
  sub_26B079D80();
  v23 = *sub_26B02D0D0();
  MEMORY[0x277D82BE0](v23);
  sub_26AEFB5C4();
  v84[2] = 0;
  v84[3] = 0;
  v85 = *v36 & 0x100;
  v6 = sub_26B079E40();
  v28 = v84;
  v84[0] = v6;
  v84[1] = v7;
  sub_26AE950C8(a1, v46);
  v42 = *(v24 + 80);
  v25 = (v42 + 16) & ~v42;
  v44 = 7;
  v27 = swift_allocObject();
  sub_26AE9C048(v46, v27 + v25);
  v50 = sub_26AE95974();
  v49 = MEMORY[0x277D837D0];
  sub_26B079920();
  v29 = sub_26AE91C6C();
  v52 = sub_26AE9C224();
  sub_26B0796A0();
  v56 = *(v30 + 8);
  v55 = v30 + 8;
  v56(v53, v54);
  v33 = &v83;
  v83 = 14;
  sub_26AE9C2AC();
  View.suuiIdentifiable(_:)();
  sub_26AE9C3DC(v34);
  v60 = sub_26AE9C480();
  sub_26AE9463C(v66, v57, v68);
  sub_26AE9C528(v66);
  v79 = sub_26B079970();
  v80 = v8 & 1 & v36[1];
  v58 = MEMORY[0x277CE1180];
  v61 = MEMORY[0x277CE1170];
  sub_26AE9463C(&v79, MEMORY[0x277CE1180], v35);
  sub_26B079D00();
  sub_26B079D80();
  v39 = *sub_26B02D0D0();
  MEMORY[0x277D82BE0](v39);
  sub_26AEFB5C4();
  v77[2] = 0;
  v77[3] = 0;
  v78 = *v36 & 0x100;
  v9 = sub_26B079E40();
  v51 = v77;
  v77[0] = v9;
  v77[1] = v10;
  sub_26AE950C8(v41, v46);
  v45 = (v42 + 16) & ~v42;
  v48 = swift_allocObject();
  sub_26AE9C048(v46, v48 + v45);
  sub_26B079920();
  v76 = 13;
  View.suuiIdentifiable(_:)();
  v56(v53, v54);
  v62 = sub_26AE9C83C();
  sub_26AE9463C(v65, v59, v67);
  sub_26AE9C8E4(v65);
  sub_26AE9C9A8(v68, v66);
  v64 = v75;
  v75[0] = v66;
  v73 = v81;
  v74 = v82;
  v75[1] = &v73;
  sub_26AE9CB08(v67, v65);
  v75[2] = v65;
  v72[0] = v57;
  v72[1] = v58;
  v72[2] = v59;
  v69 = v60;
  v70 = v61;
  v71 = v62;
  sub_26AFD49C4(v64, 3uLL, v72, v63);
  sub_26AE9C8E4(v65);
  sub_26AE9C528(v66);
  sub_26AE9C8E4(v67);
  return sub_26AE9C528(v68);
}

uint64_t sub_26AE94180(uint64_t a1)
{
  v32 = a1;
  v39 = 0;
  v47 = 0;
  v27 = 0;
  v28 = sub_26B078AD0();
  v29 = *(v28 - 8);
  v30 = v29;
  MEMORY[0x28223BE20](0);
  v31 = &v8[-((v1 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v33 = sub_26B078580();
  v34 = *(v33 - 8);
  v35 = v34;
  v2 = MEMORY[0x28223BE20](v32);
  v36 = &v8[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v47 = v2;
  sub_26B078550();
  v41 = sub_26B078570();
  v37 = v41;
  v40 = sub_26B07A2A0();
  v38 = v40;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DBB00);
  v42 = sub_26B07A760();
  if (os_log_type_enabled(v41, v40))
  {
    v4 = v27;
    v18 = sub_26B07A420();
    v14 = v18;
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DCED0);
    v16 = 0;
    v19 = sub_26AEA3B70(0);
    v17 = v19;
    v20 = sub_26AEA3B70(v16);
    v46 = v18;
    v45 = v19;
    v44 = v20;
    v21 = 0;
    v22 = &v46;
    sub_26AEA3BC4(0, &v46);
    sub_26AEA3BC4(v21, v22);
    v43 = v42;
    v23 = v8;
    MEMORY[0x28223BE20](v8);
    v24 = &v8[-48];
    *&v8[-32] = v5;
    *&v8[-24] = &v45;
    *&v8[-16] = &v44;
    v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DBB10);
    sub_26AE9CC18();
    sub_26B079FF0();
    v26 = v4;
    if (v4)
    {
      __break(1u);
    }

    else
    {
      _os_log_impl(&dword_26AE88000, v37, v38, "User Action: Clicked 'Disagree' on the TermsAndConditionsSheetView", v14, 2u);
      v12 = 0;
      sub_26AEA3C24(v17);
      sub_26AEA3C24(v20);
      sub_26B07A400();

      v13 = v26;
    }
  }

  else
  {

    v13 = v27;
  }

  (*(v35 + 8))(v36, v33);
  v9 = 1;
  sub_26AE91D04();
  v6 = v32 + *(type metadata accessor for TermsAndConditionsSheetView() + 32);
  v10 = *v6;
  v11 = *(v6 + 8);

  v10(v9);

  sub_26AE916DC(v31);
  sub_26B078AC0();
  return (*(v30 + 8))(v31, v28);
}

uint64_t sub_26AE946A0(uint64_t a1)
{
  v31 = a1;
  v38 = 0;
  v46 = 0;
  v26 = 0;
  v27 = sub_26B078AD0();
  v28 = *(v27 - 8);
  v29 = v28;
  MEMORY[0x28223BE20](0);
  v30 = &v8 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = sub_26B078580();
  v33 = *(v32 - 8);
  v34 = v33;
  v2 = MEMORY[0x28223BE20](v31);
  v35 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = v2;
  sub_26B078550();
  v40 = sub_26B078570();
  v36 = v40;
  v39 = sub_26B07A2A0();
  v37 = v39;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DBB00);
  v41 = sub_26B07A760();
  if (os_log_type_enabled(v40, v39))
  {
    v4 = v26;
    v17 = sub_26B07A420();
    v13 = v17;
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DCED0);
    v15 = 0;
    v18 = sub_26AEA3B70(0);
    v16 = v18;
    v19 = sub_26AEA3B70(v15);
    v45 = v17;
    v44 = v18;
    v43 = v19;
    v20 = 0;
    v21 = &v45;
    sub_26AEA3BC4(0, &v45);
    sub_26AEA3BC4(v20, v21);
    v42 = v41;
    v22 = &v8;
    MEMORY[0x28223BE20](&v8);
    v23 = &v8 - 6;
    *(&v8 - 4) = v5;
    *(&v8 - 3) = &v44;
    *(&v8 - 2) = &v43;
    v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DBB10);
    sub_26AE9CC18();
    sub_26B079FF0();
    v25 = v4;
    if (v4)
    {
      __break(1u);
    }

    else
    {
      _os_log_impl(&dword_26AE88000, v36, v37, "User Action: Clicked 'Agree' on the TermsAndConditionsSheetView", v13, 2u);
      v11 = 0;
      sub_26AEA3C24(v16);
      sub_26AEA3C24(v19);
      sub_26B07A400();

      v12 = v25;
    }
  }

  else
  {

    v12 = v26;
  }

  (*(v34 + 8))(v35, v32);
  v8 = 0;
  v6 = v31 + *(type metadata accessor for TermsAndConditionsSheetView() + 32);
  v9 = *v6;
  v10 = *(v6 + 8);

  v9(v8);

  sub_26AE916DC(v30);
  sub_26B078AC0();
  return (*(v29 + 8))(v30, v27);
}

uint64_t sub_26AE94BB0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v11 = a6;
  v8[1] = a1;
  v13 = a2;
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v18 = a2;
  v17 = a3;
  v10 = sub_26B078F30();
  v9 = (*(*(v10 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v10);
  v12 = v8 - v9;
  (*(*(v6 - 8) + 16))();
  swift_storeEnumTagMultiPayload();
  return sub_26B078F40();
}

uint64_t sub_26AE94CA8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v11 = a6;
  v8[1] = a1;
  v13 = a2;
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v18 = a2;
  v17 = a3;
  v10 = sub_26B078F30();
  v9 = (*(*(v10 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v10);
  v12 = v8 - v9;
  (*(*(v6 - 8) + 16))();
  swift_storeEnumTagMultiPayload();
  return sub_26B078F40();
}

uint64_t sub_26AE94E04@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v10 = a2;
  v8[1] = a1;
  v13 = sub_26B078D30();
  v11 = *(v13 - 8);
  v12 = v13 - 8;
  v9 = (*(v11 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v13);
  v14 = v8 - v9;
  (*(v11 + 16))(v8 - v9);
  v2 = EnvironmentValues.reactiveManager.getter();
  v3 = v11;
  v4 = v13;
  v5 = v2;
  v6 = v14;
  *v10 = v5;
  return (*(v3 + 8))(v6, v4);
}

uint64_t sub_26AE94F38@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v10 = a2;
  v6 = a1;
  v4[1] = 0;
  v12 = sub_26B078AD0();
  v8 = *(v12 - 8);
  v9 = v12 - 8;
  v5 = (*(v8 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](0);
  v11 = v4 - v5;
  v15 = sub_26B078D30();
  v13 = *(v15 - 8);
  v14 = v15 - 8;
  v7 = (*(v13 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = MEMORY[0x28223BE20](v15);
  v16 = v4 - v7;
  (*(v13 + 16))(v4 - v7, v2);
  sub_26B078CD0();
  (*(v8 + 32))(v10, v11, v12);
  return (*(v13 + 8))(v16, v15);
}

uint64_t sub_26AE950C8(uint64_t *a1, uint64_t a2)
{
  v14 = *a1;
  v15 = *(a1 + 8);

  *a2 = v14;
  *(a2 + 8) = v15 & 1;
  v17 = type metadata accessor for TermsAndConditionsSheetView();
  v18 = v17[5];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DB520);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v2 = sub_26B078AD0();
    (*(*(v2 - 8) + 16))();
  }

  else
  {
    v13 = *(a1 + v18);

    *(a2 + v18) = v13;
  }

  swift_storeEnumTagMultiPayload();
  v3 = v17[6];
  v6 = a2 + v3;
  *(a2 + v3) = *(a1 + v3);
  v7 = *(a1 + v3 + 8);

  *(v6 + 8) = v7;
  v8 = v17[7];
  v9 = *(a1 + v8);
  swift_unknownObjectRetain();
  *(a2 + v8) = v9;
  v4 = v17[8];
  v11 = (a2 + v4);
  v10 = *(a1 + v4);
  v12 = *(a1 + v4 + 8);

  result = a2;
  *v11 = v10;
  v11[1] = v12;
  return result;
}

uint64_t sub_26AE952CC(uint64_t a1)
{

  v3 = *(type metadata accessor for TermsAndConditionsSheetView() + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DB520);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v1 = sub_26B078AD0();
    (*(*(v1 - 8) + 8))(a1 + v3);
  }

  else
  {
  }

  swift_unknownObjectRelease();

  return a1;
}

unint64_t sub_26AE953E4()
{
  v2 = qword_2803DB540;
  if (!qword_2803DB540)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803DB538);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803DB548);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803DB550);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803DB558);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803DB560);
    sub_26AE95688();
    sub_26AE95974();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803DB5A8);
    sub_26AE959EC();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DB540);
    return WitnessTable;
  }

  return v2;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1)
{
  v4 = *a1;
  if (!*a1)
  {
    TypeByMangledNameInContextInMetadataState2 = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = TypeByMangledNameInContextInMetadataState2;
    return TypeByMangledNameInContextInMetadataState2;
  }

  return v4;
}

unint64_t sub_26AE95688()
{
  v2 = qword_2803DB568;
  if (!qword_2803DB568)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803DB560);
    sub_26AE95730();
    sub_26AE958D0();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DB568);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_26AE95730()
{
  v2 = qword_2803DB570;
  if (!qword_2803DB570)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803DB578);
    sub_26AE957D8();
    sub_26AE95850();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DB570);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_26AE957D8()
{
  v2 = qword_2803DB580;
  if (!qword_2803DB580)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DB580);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_26AE95850()
{
  v2 = qword_2803DD240;
  if (!qword_2803DD240)
  {
    sub_26B079100();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DD240);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_26AE958D0()
{
  v2 = qword_2803DB590;
  if (!qword_2803DB590)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803DB598);
    sub_26AE95850();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DB590);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_26AE95974()
{
  v2 = qword_2803DB5A0;
  if (!qword_2803DB5A0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DB5A0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_26AE959EC()
{
  v2 = qword_2803DB5B0;
  if (!qword_2803DB5B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803DB5A8);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DB5B0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_26AE95A74()
{
  v2 = qword_2803DB5B8;
  if (!qword_2803DB5B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803DB530);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DB5B8);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_26AE95AFC(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_26AE95B40(uint64_t a1)
{
  sub_26AE95AFC(*a1, *(a1 + 8), *(a1 + 16) & 1);

  return a1;
}

uint64_t sub_26AE95B88(uint64_t a1)
{
  sub_26AE95AFC(*a1, *(a1 + 8), *(a1 + 16) & 1);

  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DB598) + 36);
  v1 = sub_26B079100();
  (*(*(v1 - 8) + 8))(a1 + v3);
  return a1;
}

uint64_t sub_26AE95C2C(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v5 = *(a1 + 8);
  v6 = *(a1 + 16);
  sub_26AE95D28(*a1, v5, v6 & 1);
  *a2 = v4;
  *(a2 + 8) = v5;
  *(a2 + 16) = v6 & 1;
  v7 = *(a1 + 24);
  sub_26B078640();
  *(a2 + 24) = v7;
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DB598) + 36);
  v2 = sub_26B079100();
  (*(*(v2 - 8) + 16))(a2 + v8, a1 + v8);
  return a2;
}

uint64_t sub_26AE95D28(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
    return sub_26B078640();
  }
}

_OWORD *sub_26AE95D6C(_OWORD *a1, _OWORD *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DB5C0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    *a2 = *a1;
    a2[1] = a1[1];
    v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DB598);
    v8 = a2 + *(v4 + 36);
    v7 = a1 + *(v4 + 36);
    v5 = sub_26B079100();
    (*(*(v5 - 8) + 32))(v8, v7);
  }

  else
  {
    memcpy(a2, a1, 0x39uLL);
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DB578);
    v10 = a2 + *(v2 + 36);
    v9 = a1 + *(v2 + 36);
    v3 = sub_26B079100();
    (*(*(v3 - 8) + 32))(v10, v9);
  }

  swift_storeEnumTagMultiPayload();
  return a2;
}

uint64_t sub_26AE95EF8(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DB5C0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = *a1;
    v8 = *(a1 + 8);
    v9 = *(a1 + 16);
    sub_26AE95D28(*a1, v8, v9 & 1);
    *a2 = v7;
    *(a2 + 8) = v8;
    *(a2 + 16) = v9 & 1;
    v10 = *(a1 + 24);
    sub_26B078640();
    *(a2 + 24) = v10;
    v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DB598);
    v12 = a2 + *(v4 + 36);
    v11 = a1 + *(v4 + 36);
    v5 = sub_26B079100();
    (*(*(v5 - 8) + 16))(v12, v11);
    swift_storeEnumTagMultiPayload();
  }

  else
  {
    v17 = *a1;
    v18 = *(a1 + 8);
    v19 = *(a1 + 16);
    sub_26AE96194(*a1, v18, v19 & 1);
    *a2 = v17;
    *(a2 + 8) = v18;
    *(a2 + 16) = v19 & 1;
    *(a2 + 24) = *(a1 + 24);
    *(a2 + 32) = *(a1 + 32);
    if (*(a1 + 48))
    {
      v15 = *(a1 + 40);

      *(a2 + 40) = v15;
      v16 = *(a1 + 48);

      *(a2 + 48) = v16;
    }

    else
    {
      *(a2 + 40) = *(a1 + 40);
    }

    *(a2 + 56) = *(a1 + 56);
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DB578);
    v14 = a2 + *(v2 + 36);
    v13 = a1 + *(v2 + 36);
    v3 = sub_26B079100();
    (*(*(v3 - 8) + 16))(v14, v13);
    swift_storeEnumTagMultiPayload();
  }

  return a2;
}

uint64_t sub_26AE96194(uint64_t a1, unint64_t a2, char a3)
{
  if (a3)
  {
    return sub_26AE961DC(a1, a2);
  }

  else
  {
    return sub_26B078640();
  }
}

uint64_t sub_26AE961DC(uint64_t a1, unint64_t a2)
{
  v3 = (a2 >> 62) & 3;
  if (v3 == 1)
  {
  }

  if (v3 == 2)
  {
  }

  return result;
}

uint64_t sub_26AE96258(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DB5C0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_26AE95AFC(*a1, *(a1 + 8), *(a1 + 16) & 1);

    v4 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DB598) + 36);
    v2 = sub_26B079100();
    (*(*(v2 - 8) + 8))(v4);
  }

  else
  {
    sub_26AE963D0(*a1, *(a1 + 8), *(a1 + 16) & 1);
    if (*(a1 + 48))
    {
    }

    v5 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DB578) + 36);
    v1 = sub_26B079100();
    (*(*(v1 - 8) + 8))(v5);
  }

  return a1;
}

uint64_t sub_26AE963D0(uint64_t a1, unint64_t a2, char a3)
{
  if (a3)
  {
    return sub_26AE96418(a1, a2);
  }

  else
  {
  }
}

uint64_t sub_26AE96418(uint64_t a1, unint64_t a2)
{
  v3 = (a2 >> 62) & 3;
  if (v3 == 1)
  {
  }

  if (v3 == 2)
  {
  }

  return result;
}

uint64_t sub_26AE96494(uint64_t a1)
{
  sub_26AE963D0(*a1, *(a1 + 8), *(a1 + 16) & 1);
  if (*(a1 + 48))
  {
  }

  return a1;
}

uint64_t sub_26AE964FC(uint64_t a1)
{
  sub_26AE963D0(*a1, *(a1 + 8), *(a1 + 16) & 1);
  if (*(a1 + 48))
  {
  }

  v3 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DB578) + 36);
  v1 = sub_26B079100();
  (*(*(v1 - 8) + 8))(v3);
  return a1;
}

uint64_t sub_26AE965C0(uint64_t a1, uint64_t a2)
{
  v9 = *a1;
  v10 = *(a1 + 8);
  v11 = *(a1 + 16);
  sub_26AE96194(*a1, v10, v11 & 1);
  *a2 = v9;
  *(a2 + 8) = v10;
  *(a2 + 16) = v11 & 1;
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 32) = *(a1 + 32);
  if (*(a1 + 48))
  {
    v7 = *(a1 + 40);

    *(a2 + 40) = v7;
    v8 = *(a1 + 48);

    *(a2 + 48) = v8;
  }

  else
  {
    *(a2 + 40) = *(a1 + 40);
  }

  *(a2 + 56) = *(a1 + 56);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DB578);
  v6 = a2 + *(v2 + 36);
  v5 = a1 + *(v2 + 36);
  v3 = sub_26B079100();
  (*(*(v3 - 8) + 16))(v6, v5);
  return a2;
}

uint64_t sub_26AE96780(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DEB80);
  if (a2 == *(*(v9 - 8) + 84))
  {
    return (*(*(v9 - 8) + 48))(a1 + *(a3 + 20), a2, v9);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v4 = -1;
    if (*(a1 + *(a3 + 28)) < 0x100000000uLL)
    {
      v4 = *(a1 + *(a3 + 28));
    }

    return (v4 + 1);
  }

  else
  {
    __break(1u);
  }

  return v5;
}

uint64_t sub_26AE968D8(uint64_t a1, unsigned int a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DEB80);
  if (a3 == *(*(result - 8) + 84))
  {
    return (*(*(result - 8) + 56))(a1 + *(a4 + 20), a2, a2, result);
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 28)) = a2 - 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_26AE969E0()
{
  v6 = sub_26AE96B4C();
  if (v0 <= 0x3F)
  {
    v6 = sub_26AE96BE8();
    if (v1 <= 0x3F)
    {
      v6 = sub_26AE96C84();
      if (v2 <= 0x3F)
      {
        v6 = sub_26AE96D18();
        if (v3 <= 0x3F)
        {
          v6 = sub_26AE96D98();
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
            return 0;
          }
        }
      }
    }
  }

  return v6;
}

uint64_t sub_26AE96B4C()
{
  v4 = qword_2803DDCF0;
  if (!qword_2803DDCF0)
  {
    type metadata accessor for ReactiveUIManager();
    v3 = sub_26B078A20();
    v4 = v3;
    if (!v0)
    {
      v1 = v3;
      atomic_store(v3, &qword_2803DDCF0);
      return v1;
    }
  }

  return v4;
}

uint64_t sub_26AE96BE8()
{
  v4 = qword_2803DB890;
  if (!qword_2803DB890)
  {
    sub_26B078AD0();
    v3 = sub_26B078A20();
    v4 = v3;
    if (!v0)
    {
      v1 = v3;
      atomic_store(v3, &qword_2803DB890);
      return v1;
    }
  }

  return v4;
}

uint64_t sub_26AE96C84()
{
  v4 = qword_2803DCEA0;
  if (!qword_2803DCEA0)
  {
    v3 = sub_26B0798E0();
    v4 = v3;
    if (!v0)
    {
      v1 = v3;
      atomic_store(v3, &qword_2803DCEA0);
      return v1;
    }
  }

  return v4;
}

unint64_t sub_26AE96D18()
{
  v2 = qword_2803DB8A0;
  if (!qword_2803DB8A0)
  {
    ExistentialTypeMetadata = swift_getExistentialTypeMetadata();
    atomic_store(ExistentialTypeMetadata, &qword_2803DB8A0);
    return ExistentialTypeMetadata;
  }

  return v2;
}

unint64_t sub_26AE96D98()
{
  v2 = qword_2803DD670;
  if (!qword_2803DD670)
  {
    FunctionTypeMetadata0 = swift_getFunctionTypeMetadata0();
    atomic_store(FunctionTypeMetadata0, &qword_2803DD670);
    return FunctionTypeMetadata0;
  }

  return v2;
}

uint64_t type metadata accessor for SUUIUpdateContinuousOperationType()
{
  v4 = qword_2803DB8A8;
  if (!qword_2803DB8A8)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2803DB8A8);
      return v1;
    }
  }

  return v4;
}

uint64_t type metadata accessor for State()
{
  v4 = qword_2803DB8B0;
  if (!qword_2803DB8B0)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2803DB8B0);
      return v1;
    }
  }

  return v4;
}

uint64_t type metadata accessor for Unit()
{
  v4 = qword_2803DB8B8;
  if (!qword_2803DB8B8)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2803DB8B8);
      return v1;
    }
  }

  return v4;
}

uint64_t type metadata accessor for SUUIDownloadPhase()
{
  v4 = qword_2803DB8C0;
  if (!qword_2803DB8C0)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2803DB8C0);
      return v1;
    }
  }

  return v4;
}

uint64_t type metadata accessor for SUUIStatefulErrorTokenType()
{
  v4 = qword_2803DB8C8;
  if (!qword_2803DB8C8)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2803DB8C8);
      return v1;
    }
  }

  return v4;
}

uint64_t type metadata accessor for SUUIStatefulUIEnvironmentOptions()
{
  v4 = qword_2803DB8D0;
  if (!qword_2803DB8D0)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2803DB8D0);
      return v1;
    }
  }

  return v4;
}

uint64_t type metadata accessor for ComparisonResult()
{
  v4 = qword_2803DB8D8;
  if (!qword_2803DB8D8)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2803DB8D8);
      return v1;
    }
  }

  return v4;
}

uint64_t type metadata accessor for SUUIUserInteractionResponse()
{
  v4 = qword_2803DB8E0;
  if (!qword_2803DB8E0)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2803DB8E0);
      return v1;
    }
  }

  return v4;
}

uint64_t type metadata accessor for SUUIAnalyticsEventInteractionType()
{
  v4 = qword_2803DB8E8;
  if (!qword_2803DB8E8)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2803DB8E8);
      return v1;
    }
  }

  return v4;
}

uint64_t type metadata accessor for NSKeyValueObservingOptions()
{
  v4 = qword_2803DB8F0;
  if (!qword_2803DB8F0)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2803DB8F0);
      return v1;
    }
  }

  return v4;
}

uint64_t type metadata accessor for SUUIStatefulDescriptorRole()
{
  v4 = qword_2803DB8F8;
  if (!qword_2803DB8F8)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2803DB8F8);
      return v1;
    }
  }

  return v4;
}

uint64_t type metadata accessor for Options()
{
  v4 = qword_2803DB900;
  if (!qword_2803DB900)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2803DB900);
      return v1;
    }
  }

  return v4;
}

uint64_t type metadata accessor for SUUIStatefulDescriptorState()
{
  v4 = qword_2803DB908;
  if (!qword_2803DB908)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2803DB908);
      return v1;
    }
  }

  return v4;
}

uint64_t type metadata accessor for SUUIAudienceType()
{
  v4 = qword_2803DB910;
  if (!qword_2803DB910)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2803DB910);
      return v1;
    }
  }

  return v4;
}

uint64_t type metadata accessor for MatchingOptions()
{
  v4 = qword_2803DB918;
  if (!qword_2803DB918)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2803DB918);
      return v1;
    }
  }

  return v4;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_26AE9772C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (*(a1 + 16))
    {
      v3 = *a1;
    }

    else
    {
      v3 = -1;
    }
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

uint64_t sub_26AE97838(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    if (a3)
    {
      *(result + 16) = 1;
    }
  }

  else if (a3)
  {
    *(result + 16) = 0;
  }

  return result;
}

uint64_t type metadata accessor for CGSize()
{
  v4 = qword_2803DB920;
  if (!qword_2803DB920)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2803DB920);
      return v1;
    }
  }

  return v4;
}

uint64_t type metadata accessor for WKNavigationType()
{
  v4 = qword_2803DB928;
  if (!qword_2803DB928)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2803DB928);
      return v1;
    }
  }

  return v4;
}

uint64_t type metadata accessor for SUUIStatefulUIState()
{
  v4 = qword_2803DB930;
  if (!qword_2803DB930)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2803DB930);
      return v1;
    }
  }

  return v4;
}

uint64_t type metadata accessor for SUUIError()
{
  v4 = qword_2803DB938;
  if (!qword_2803DB938)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2803DB938);
      return v1;
    }
  }

  return v4;
}

uint64_t type metadata accessor for EventSubtype()
{
  v4 = qword_2803DB940;
  if (!qword_2803DB940)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2803DB940);
      return v1;
    }
  }

  return v4;
}

void sub_26AE97CF0(uint64_t a1@<X8>)
{
  sub_26AE97D2C();
  *a1 = v1;
  *(a1 + 8) = v2 & 1;
}

void sub_26AE97D9C(uint64_t a1@<X8>)
{
  sub_26AE97DD8();
  *a1 = v1;
  *(a1 + 8) = v2 & 1;
}

uint64_t sub_26AE97E94()
{
  sub_26AE9B748();
  sub_26AE9B7C8();
  return sub_26B07A9F0();
}

uint64_t sub_26AE98098()
{
  sub_26AE9B748();
  sub_26AE9B7C8();
  return sub_26B07A9E0();
}

uint64_t sub_26AE980DC()
{
  sub_26AE9B748();
  sub_26AE9B7C8();
  return sub_26B07A9C0();
}

uint64_t sub_26AE98120()
{
  sub_26AE9B748();
  sub_26AE9B7C8();
  return sub_26B07A9D0();
}

uint64_t sub_26AE98240()
{
  sub_26AE9B940();
  sub_26AE9B7C8();
  return sub_26B07A9F0();
}

uint64_t sub_26AE98444()
{
  sub_26AE9B940();
  sub_26AE9B7C8();
  return sub_26B07A9E0();
}

uint64_t sub_26AE98488()
{
  sub_26AE9B940();
  sub_26AE9B7C8();
  return sub_26B07A9C0();
}

uint64_t sub_26AE984CC()
{
  sub_26AE9B940();
  sub_26AE9B7C8();
  return sub_26B07A9D0();
}

void sub_26AE985EC(uint64_t a1@<X8>)
{
  sub_26AE98628();
  *a1 = v1;
  *(a1 + 8) = v2 & 1;
}

uint64_t sub_26AE98698()
{
  sub_26AE9B9C0();
  sub_26AE9B7C8();
  return sub_26B07A9F0();
}

uint64_t sub_26AE9889C()
{
  sub_26AE9B9C0();
  sub_26AE9B7C8();
  return sub_26B07A9E0();
}

uint64_t sub_26AE988E0()
{
  sub_26AE9B9C0();
  sub_26AE9B7C8();
  return sub_26B07A9C0();
}

uint64_t sub_26AE98924()
{
  sub_26AE9B9C0();
  sub_26AE9B7C8();
  return sub_26B07A9D0();
}

void sub_26AE98A44(uint64_t a1@<X8>)
{
  sub_26AE98A80();
  *a1 = v1;
  *(a1 + 8) = v2 & 1;
}

void sub_26AE98AF0(uint64_t a1@<X8>)
{
  sub_26AE98B2C();
  *a1 = v1;
  *(a1 + 8) = v2 & 1;
}

void sub_26AE98C6C(uint64_t a1@<X8>)
{
  sub_26AE98CA8();
  *a1 = v1;
  *(a1 + 8) = v2 & 1;
}

void sub_26AE98D64(uint64_t a1@<X8>)
{
  sub_26AE98DA0();
  *a1 = v1;
  *(a1 + 8) = v2 & 1;
}

void sub_26AE98E10(uint64_t a1@<X8>)
{
  sub_26AE98E4C();
  *a1 = v1;
  *(a1 + 8) = v2 & 1;
}

uint64_t sub_26AE98F08@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = nullsub_3(*a1);
  *a2 = result;
  return result;
}

void sub_26AE98F84(uint64_t a1@<X8>)
{
  sub_26AE98FC0();
  *a1 = v1;
  *(a1 + 8) = v2 & 1;
}

uint64_t sub_26AE99030()
{
  sub_26AE9BC40();
  sub_26AE9B7C8();
  return sub_26B07A9F0();
}

uint64_t sub_26AE99234()
{
  sub_26AE9BC40();
  sub_26AE9B7C8();
  return sub_26B07A9E0();
}

uint64_t sub_26AE99278()
{
  sub_26AE9BC40();
  sub_26AE9B7C8();
  return sub_26B07A9C0();
}

uint64_t sub_26AE992BC()
{
  sub_26AE9BC40();
  sub_26AE9B7C8();
  return sub_26B07A9D0();
}

void sub_26AE99428(uint64_t a1@<X8>)
{
  sub_26AE99464();
  *a1 = v1;
  *(a1 + 8) = v2 & 1;
}

void sub_26AE994D4(uint64_t a1@<X8>)
{
  sub_26AE99510();
  *a1 = v1;
  *(a1 + 8) = v2 & 1;
}

uint64_t sub_26AE99580()
{
  sub_26AE9BB40();
  sub_26AE9B7C8();
  return sub_26B07A9F0();
}

uint64_t sub_26AE99784()
{
  sub_26AE9BB40();
  sub_26AE9B7C8();
  return sub_26B07A9E0();
}

uint64_t sub_26AE997C8()
{
  sub_26AE9BB40();
  sub_26AE9B7C8();
  return sub_26B07A9C0();
}

uint64_t sub_26AE9980C()
{
  sub_26AE9BB40();
  sub_26AE9B7C8();
  return sub_26B07A9D0();
}

uint64_t sub_26AE999D4()
{
  result = *v0;
  sub_26AE999F0();
  return result;
}

uint64_t sub_26AE99A20@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_26AE99A4C(a1);
  *a2 = result;
  return result;
}

uint64_t sub_26AE99A4C(uint64_t a1)
{
  MEMORY[0x277D82BE0]();
  MEMORY[0x277D82BD8](a1);
  return a1;
}

void sub_26AE99A8C(uint64_t a1@<X8>)
{
  sub_26AE99AC8();
  *a1 = v1;
  *(a1 + 8) = v2 & 1;
}

uint64_t sub_26AE99BC4@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = nullsub_5(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_26AE99C84@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = nullsub_1(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_26AE99D40@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = nullsub_2(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_26AE99D70@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  result = nullsub_3(*a1);
  *a2 = result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_26AE99DB0@<X0>(uint64_t *a1@<X8>)
{
  result = nullsub_6(*v1);
  *a1 = result;
  return result;
}

uint64_t sub_26AE99E70@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = nullsub_4(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_26AE99F44()
{
  v1 = *MEMORY[0x277D64C28];
  MEMORY[0x277D82BE0](*MEMORY[0x277D64C28]);
  v2 = sub_26B079E00();
  MEMORY[0x277D82BD8](v1);
  return v2;
}

uint64_t sub_26AE9A008(uint64_t a1)
{
  MEMORY[0x277D82BE0](a1);
  sub_26AE9B67C();
  return sub_26B0780A0();
}

uint64_t sub_26AE9A084()
{
  v1 = sub_26B078080();
  v2 = sub_26B07A3C0();
  MEMORY[0x277D82BD8](v1);
  return v2;
}

void sub_26AE9A12C(uint64_t a1@<X8>)
{
  sub_26AE9A168();
  *a1 = v1;
  *(a1 + 8) = v2 & 1;
}

uint64_t sub_26AE9A1D8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  result = nullsub_5(*a1);
  *a2 = result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_26AE9A218@<X0>(uint64_t *a1@<X8>)
{
  result = nullsub_7(*v1);
  *a1 = result;
  return result;
}

uint64_t sub_26AE9A24C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  result = nullsub_1(*a1);
  *a2 = result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_26AE9A28C@<X0>(uint64_t *a1@<X8>)
{
  result = nullsub_8(*v1);
  *a1 = result;
  return result;
}

uint64_t sub_26AE9A2C0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  result = nullsub_2(*a1);
  *a2 = result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_26AE9A300@<X0>(uint64_t *a1@<X8>)
{
  result = nullsub_9(*v1);
  *a1 = result;
  return result;
}

uint64_t sub_26AE9A334@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  result = nullsub_4(*a1);
  *a2 = result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_26AE9A374@<X0>(uint64_t *a1@<X8>)
{
  result = nullsub_10(*v1);
  *a1 = result;
  return result;
}

unint64_t sub_26AE9A404()
{
  v2 = qword_2803DB948;
  if (!qword_2803DB948)
  {
    type metadata accessor for SUUIError();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DB948);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_26AE9A49C()
{
  v2 = qword_2803DB950;
  if (!qword_2803DB950)
  {
    type metadata accessor for SUUIError();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DB950);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_26AE9A54C()
{
  v2 = qword_2803DB958;
  if (!qword_2803DB958)
  {
    type metadata accessor for MatchingOptions();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DB958);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_26AE9A5E4()
{
  v2 = qword_2803DB960;
  if (!qword_2803DB960)
  {
    type metadata accessor for MatchingOptions();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DB960);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_26AE9A67C()
{
  v2 = qword_2803DB968;
  if (!qword_2803DB968)
  {
    type metadata accessor for Options();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DB968);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_26AE9A714()
{
  v2 = qword_2803DB970;
  if (!qword_2803DB970)
  {
    type metadata accessor for Options();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DB970);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_26AE9A7AC()
{
  v2 = qword_2803DB978;
  if (!qword_2803DB978)
  {
    type metadata accessor for NSKeyValueObservingOptions();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DB978);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_26AE9A844()
{
  v2 = qword_2803DB980;
  if (!qword_2803DB980)
  {
    type metadata accessor for NSKeyValueObservingOptions();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DB980);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_26AE9A8DC()
{
  v2 = qword_2803DB988;
  if (!qword_2803DB988)
  {
    type metadata accessor for Unit();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DB988);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_26AE9A974()
{
  v2 = qword_2803DB990;
  if (!qword_2803DB990)
  {
    type metadata accessor for Unit();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DB990);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_26AE9AA0C()
{
  v2 = qword_2803DB998;
  if (!qword_2803DB998)
  {
    type metadata accessor for Unit();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DB998);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_26AE9AAA4()
{
  v2 = qword_2803DB9A0;
  if (!qword_2803DB9A0)
  {
    type metadata accessor for Unit();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DB9A0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_26AE9AB3C()
{
  v2 = qword_2803DB9A8;
  if (!qword_2803DB9A8)
  {
    type metadata accessor for SUUIStatefulUIEnvironmentOptions();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DB9A8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_26AE9ABD4()
{
  v2 = qword_2803DB9B0;
  if (!qword_2803DB9B0)
  {
    type metadata accessor for SUUIStatefulUIEnvironmentOptions();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DB9B0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_26AE9AC6C()
{
  v2 = qword_2803DB9B8;
  if (!qword_2803DB9B8)
  {
    type metadata accessor for SUUIStatefulUIEnvironmentOptions();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DB9B8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_26AE9AD04()
{
  v2 = qword_2803DB9C0;
  if (!qword_2803DB9C0)
  {
    type metadata accessor for SUUIStatefulUIEnvironmentOptions();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DB9C0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_26AE9AD9C()
{
  v2 = qword_2803DDC90;
  if (!qword_2803DDC90)
  {
    type metadata accessor for SUUIStatefulUIState();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DDC90);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_26AE9AE34()
{
  v2 = qword_2803DB9D0;
  if (!qword_2803DB9D0)
  {
    type metadata accessor for NSKeyValueObservingOptions();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DB9D0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_26AE9AECC()
{
  v2 = qword_2803DB9D8;
  if (!qword_2803DB9D8)
  {
    type metadata accessor for NSKeyValueObservingOptions();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DB9D8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_26AE9AF64()
{
  v2 = qword_2803DB9E0;
  if (!qword_2803DB9E0)
  {
    type metadata accessor for Options();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DB9E0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_26AE9AFFC()
{
  v2 = qword_2803DB9E8;
  if (!qword_2803DB9E8)
  {
    type metadata accessor for Options();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DB9E8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_26AE9B094()
{
  v2 = qword_2803DB9F0;
  if (!qword_2803DB9F0)
  {
    type metadata accessor for MatchingOptions();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DB9F0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_26AE9B12C()
{
  v2 = qword_2803DB9F8;
  if (!qword_2803DB9F8)
  {
    type metadata accessor for MatchingOptions();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DB9F8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_26AE9B1C4()
{
  v2 = qword_2803DBA00;
  if (!qword_2803DBA00)
  {
    type metadata accessor for SUUIError();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DBA00);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_26AE9B25C()
{
  v2 = qword_2803DBA08;
  if (!qword_2803DBA08)
  {
    type metadata accessor for SUUIError();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DBA08);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_26AE9B2F4()
{
  v2 = qword_2803DBA10;
  if (!qword_2803DBA10)
  {
    type metadata accessor for SUUIError();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DBA10);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_26AE9B38C()
{
  v2 = qword_2803DBA18;
  if (!qword_2803DBA18)
  {
    type metadata accessor for Code();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DBA18);
    return WitnessTable;
  }

  return v2;
}

uint64_t type metadata accessor for Code()
{
  v4 = qword_2803DBB38;
  if (!qword_2803DBB38)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2803DBB38);
      return v1;
    }
  }

  return v4;
}

unint64_t sub_26AE9B4BC()
{
  v2 = qword_2803DBA20;
  if (!qword_2803DBA20)
  {
    type metadata accessor for Code();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DBA20);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_26AE9B554()
{
  v2 = qword_2803DBA28;
  if (!qword_2803DBA28)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DBA28);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_26AE9B5E4()
{
  v2 = qword_2803DBA30;
  if (!qword_2803DBA30)
  {
    type metadata accessor for Code();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DBA30);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_26AE9B67C()
{
  v2 = qword_2803DBA38;
  if (!qword_2803DBA38)
  {
    type metadata accessor for SUUIError();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DBA38);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_26AE9B748()
{
  v2 = qword_2803DBA40;
  if (!qword_2803DBA40)
  {
    type metadata accessor for MatchingOptions();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DBA40);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_26AE9B7C8()
{
  v2 = qword_2803DBA48;
  if (!qword_2803DBA48)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DBA48);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_26AE9B840()
{
  v2 = qword_2803DBA50;
  if (!qword_2803DBA50)
  {
    type metadata accessor for SUUIAudienceType();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DBA50);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_26AE9B8C0()
{
  v2 = qword_2803DC570;
  if (!qword_2803DC570)
  {
    type metadata accessor for SUUIStatefulDescriptorState();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DC570);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_26AE9B940()
{
  v2 = qword_2803DBA60;
  if (!qword_2803DBA60)
  {
    type metadata accessor for Options();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DBA60);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_26AE9B9C0()
{
  v2 = qword_2803DBA68;
  if (!qword_2803DBA68)
  {
    type metadata accessor for NSKeyValueObservingOptions();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DBA68);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_26AE9BA40()
{
  v2 = qword_2803DBA70;
  if (!qword_2803DBA70)
  {
    type metadata accessor for SUUIStatefulUIState();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DBA70);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_26AE9BAC0()
{
  v2 = qword_2803DD570;
  if (!qword_2803DD570)
  {
    type metadata accessor for ComparisonResult();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DD570);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_26AE9BB40()
{
  v2 = qword_2803DBA80;
  if (!qword_2803DBA80)
  {
    type metadata accessor for SUUIStatefulUIEnvironmentOptions();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DBA80);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_26AE9BBC0()
{
  v2 = qword_2803DE5D0;
  if (!qword_2803DE5D0)
  {
    type metadata accessor for SUUIDownloadPhase();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DE5D0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_26AE9BC40()
{
  v2 = qword_2803DBA90;
  if (!qword_2803DBA90)
  {
    type metadata accessor for Unit();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DBA90);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_26AE9BCF4(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DBA98);
  (*(*(v1 - 8) + 8))(a1);
  return a1;
}

uint64_t sub_26AE9BD5C(uint64_t a1, uint64_t a2)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DBA98);
  (*(*(v2 - 8) + 16))(a2, a1);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DB538);
  memcpy((a2 + *(v3 + 36)), (a1 + *(v3 + 36)), 0x29uLL);
  return a2;
}

unint64_t sub_26AE9BE10()
{
  v2 = qword_2803DBAA8;
  if (!qword_2803DBAA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803DBAA0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DBAA8);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_26AE9BE98()
{
  v5 = type metadata accessor for TermsAndConditionsSheetView();
  v0 = *(*(v5 - 8) + 80);
  v4 = (v0 + 16) & ~v0;

  v6 = *(v5 + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DB520);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v1 = sub_26B078AD0();
    (*(*(v1 - 8) + 8))(v3 + v4 + v6);
  }

  else
  {
  }

  swift_unknownObjectRelease();

  return swift_deallocObject();
}

__n128 sub_26AE9C048(uint64_t a1, uint64_t a2)
{
  *a2 = *a1;
  *(a2 + 8) = *(a1 + 8);
  v8 = type metadata accessor for TermsAndConditionsSheetView();
  v9 = v8[5];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DB520);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v2 = sub_26B078AD0();
    (*(*(v2 - 8) + 32))();
    swift_storeEnumTagMultiPayload();
  }

  else
  {
    memcpy((a2 + v9), (a1 + v9), *(*(v11 - 8) + 64));
  }

  result = *(a1 + v8[6]);
  *(a2 + v8[6]) = result;
  *(a2 + v8[7]) = *(a1 + v8[7]);
  v4 = v8[8];
  v5 = (a2 + v4);
  v6 = *(a1 + v4 + 8);
  *v5 = *(a1 + v4);
  v5[1] = v6;
  return result;
}

uint64_t sub_26AE9C1C0()
{
  v1 = *(type metadata accessor for TermsAndConditionsSheetView() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_26AE94180(v2);
}

unint64_t sub_26AE9C224()
{
  v2 = qword_2803DBAD0;
  if (!qword_2803DBAD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_2803DDD20);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DBAD0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_26AE9C2AC()
{
  v2 = qword_2803DBAD8;
  if (!qword_2803DBAD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803DBAC0);
    sub_26AE9C224();
    sub_26AE9C354();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DBAD8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_26AE9C354()
{
  v2 = qword_2803DBAE0;
  if (!qword_2803DBAE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803DDC50);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DBAE0);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_26AE9C3DC(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DDD20);
  (*(*(v1 - 8) + 8))(a1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DBAC0);

  return a1;
}

unint64_t sub_26AE9C480()
{
  v2 = qword_2803DBAF0;
  if (!qword_2803DBAF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803DBAC8);
    sub_26AE9C2AC();
    sub_26AE95850();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DBAF0);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_26AE9C528(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DDD20);
  (*(*(v1 - 8) + 8))(a1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DBAC0);

  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DBAC8) + 36);
  v2 = sub_26B079100();
  (*(*(v2 - 8) + 8))(a1 + v4);
  return a1;
}

uint64_t sub_26AE9C628()
{
  v5 = type metadata accessor for TermsAndConditionsSheetView();
  v0 = *(*(v5 - 8) + 80);
  v4 = (v0 + 16) & ~v0;

  v6 = *(v5 + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DB520);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v1 = sub_26B078AD0();
    (*(*(v1 - 8) + 8))(v3 + v4 + v6);
  }

  else
  {
  }

  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_26AE9C7D8()
{
  v1 = *(type metadata accessor for TermsAndConditionsSheetView() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_26AE946A0(v2);
}

unint64_t sub_26AE9C83C()
{
  v2 = qword_2803DBAF8;
  if (!qword_2803DBAF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_2803DBAB0);
    sub_26AE9C224();
    sub_26AE95850();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DBAF8);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_26AE9C8E4(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DDD20);
  (*(*(v1 - 8) + 8))(a1);
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DBAB0) + 36);
  v2 = sub_26B079100();
  (*(*(v2 - 8) + 8))(a1 + v4);
  return a1;
}

uint64_t sub_26AE9C9A8(uint64_t a1, uint64_t a2)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DDD20);
  (*(*(v2 - 8) + 16))(a2, a1);
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DBAC0) + 36);
  v6 = *(a1 + v5);

  v8 = a2 + v5;
  *(a2 + v5) = v6;
  v7 = *(a1 + v5 + 8);
  v9 = *(a1 + v5 + 16);

  *(v8 + 8) = v7;
  *(v8 + 16) = v9;
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DBAC8) + 36);
  v3 = sub_26B079100();
  (*(*(v3 - 8) + 16))(a2 + v10, a1 + v10);
  return a2;
}

uint64_t sub_26AE9CB08(uint64_t a1, uint64_t a2)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DDD20);
  (*(*(v2 - 8) + 16))(a2, a1);
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DBAB0) + 36);
  v3 = sub_26B079100();
  (*(*(v3 - 8) + 16))(a2 + v5, a1 + v5);
  return a2;
}

unint64_t sub_26AE9CC18()
{
  v2 = qword_2803DCC10;
  if (!qword_2803DCC10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_2803DBB10);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DCC10);
    return WitnessTable;
  }

  return v2;
}

void *sub_26AE9CCD0(uint64_t *a1, void *a2)
{
  v4 = *a1;

  result = a2;
  *a2 = v4;
  return result;
}

uint64_t type metadata accessor for CompareOptions()
{
  v4 = qword_2803DBB20;
  if (!qword_2803DBB20)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2803DBB20);
      return v1;
    }
  }

  return v4;
}

uint64_t type metadata accessor for SUUISoftwareUpdateVersionType()
{
  v4 = qword_2803DBB28;
  if (!qword_2803DBB28)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2803DBB28);
      return v1;
    }
  }

  return v4;
}

uint64_t _s3__C7OptionsVMa_0()
{
  v4 = qword_2803DBB30;
  if (!qword_2803DBB30)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2803DBB30);
      return v1;
    }
  }

  return v4;
}

uint64_t sub_26AE9CED0()
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DB510);
  sub_26B078A10();

  return v1;
}

uint64_t sub_26AE9CFA8(uint64_t a1, char a2)
{

  *v2 = a1;
  *(v2 + 8) = a2 & 1;
}

uint64_t sub_26AE9D030()
{
  swift_getKeyPath();
  sub_26B078A30();

  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  sub_26AE9F404();
  return v1;
}

uint64_t sub_26AE9D10C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unsigned __int8 a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v51 = a5;
  v27 = a1;
  v29 = MEMORY[0x277D85700];
  v32 = sub_26AE9F48C;
  v31 = sub_26AE9F50C;
  v40 = sub_26AE9F560;
  v48 = MEMORY[0x277CDEE28];
  v69 = 0;
  v68 = 0;
  v65 = 0;
  v66 = 0;
  v67 = 0;
  v70 = a2;
  v71 = a3;
  v72 = a4;
  v34 = a2;
  v35 = a3;
  v37 = a4;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DBC68);
  v49 = *(v55 - 8);
  v50 = v55 - 8;
  v24 = *(v49 + 64);
  v23 = (v24 + 15) & 0xFFFFFFFFFFFFFFF0;
  v5 = MEMORY[0x28223BE20](v34);
  v53 = &v22 - v23;
  v6 = MEMORY[0x28223BE20](v5);
  v54 = &v22 - v7;
  v69 = &v22 - v7;
  v68 = v27;
  v65 = v6;
  v36 = 1;
  LOBYTE(v66) = v35 & 1;
  v67 = v8;

  swift_unknownObjectRetain();
  v39 = 0;
  v25 = sub_26B07A130();
  v26 = sub_26B07A120();
  v33 = 7;
  v9 = swift_allocObject();
  v10 = v29;
  v11 = v34;
  v12 = v35;
  v13 = v36;
  v14 = v37;
  v30 = v9;
  *(v9 + 16) = v26;
  *(v9 + 24) = v10;
  *(v9 + 32) = v11;
  *(v9 + 40) = v12 & 1 & v13;
  *(v9 + 48) = v14;
  v28 = sub_26B07A120();
  v15 = swift_allocObject();
  v16 = v29;
  *(v15 + 16) = v28;
  *(v15 + 24) = v16;
  sub_26B0799F0();
  v42 = v62;
  v43 = v63;
  v38 = v64;

  swift_unknownObjectRetain();
  v17 = swift_allocObject();
  v18 = v35;
  v19 = v36;
  v20 = v37;
  v41 = v17;
  *(v17 + 16) = v34;
  *(v17 + 24) = v18 & 1 & v19;
  *(v17 + 32) = v20;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DBC70);
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DBC78);
  v46 = sub_26AE9F598();
  v47 = sub_26AE9F620();
  sub_26B079610();

  v58 = v44;
  v59 = v45;
  v60 = v46;
  v61 = v47;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_26AE9463C(v53, v55, v54);
  v57 = *(v49 + 8);
  v56 = v49 + 8;
  v57(v53, v55);
  (*(v49 + 16))(v53, v54, v55);
  sub_26AE94B4C(v53, v55, v51);
  v57(v53, v55);
  return (v57)(v54, v55);
}

uint64_t sub_26AE9D67C@<X0>(uint64_t a1@<X2>, char a2@<W3>, uint64_t a3@<X4>, unsigned __int8 *a4@<X8>)
{
  v18 = a1;
  v19 = a2;
  v20 = a3;
  v15 = a1;
  v16 = a2 & 1;
  v17 = a3;

  v13 = a1;
  v14 = a2 & 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DB510);
  sub_26B078A10();

  ReactiveUIManager.presentedDialog.getter(v11);
  if (v12 == 255)
  {
  }

  else
  {
    v6 = v11[0];
    if (v12 == 2)
    {

      swift_getObjectType();
      swift_unknownObjectRetain();
      swift_getObjectType();
      v5 = [v6 isEqual_];
      swift_unknownObjectRelease();
      *a4 = v5;
      return swift_unknownObjectRelease();
    }

    sub_26AEA00D4(v11[0], v11[1], v11[2], v11[3], v11[4], v12);
  }

  *a4 = 0;
  return result;
}

uint64_t sub_26AE9D8E0@<X0>(uint64_t a1@<X0>, unsigned __int8 a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v32 = a4;
  v33 = sub_26AEA02C8;
  v34 = MEMORY[0x277CDECD0];
  v78 = 0;
  v77 = 0;
  v74 = 0;
  v75 = 0;
  v76 = 0;
  v68 = 0;
  v67 = 0;
  v63 = 0;
  v82[6] = a1;
  v83 = a2;
  v84 = a3;
  v58 = a1;
  v56 = a2;
  v47 = a3;
  v35 = type metadata accessor for TermsAndConditionsSheetView();
  v36 = (*(*(v35 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v35);
  v37 = v17 - v36;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DBC98);
  v39 = *(v38 - 8);
  v40 = v38 - 8;
  v41 = (*(v39 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v38);
  v42 = v17 - v41;
  v43 = (v4 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v17 - v41);
  v44 = v17 - v43;
  v45 = (v5 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v17 - v43);
  v46 = v17 - v45;
  v78 = v17 - v45;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DBC78);
  v52 = *(*(v48 - 8) + 64);
  v49 = (v52 + 15) & 0xFFFFFFFFFFFFFFF0;
  v6 = MEMORY[0x28223BE20](v58);
  v50 = v17 - v49;
  v51 = (v52 + 15) & 0xFFFFFFFFFFFFFFF0;
  v7 = MEMORY[0x28223BE20](v6);
  v53 = v17 - v51;
  v54 = (v52 + 15) & 0xFFFFFFFFFFFFFFF0;
  v8 = MEMORY[0x28223BE20](v7);
  v55 = v17 - v54;
  v77 = v17 - v54;
  v74 = v8;
  v57 = 1;
  LOBYTE(v75) = v56 & 1;
  v76 = v9;

  v72[7] = v58;
  v73 = v56 & 1 & v57;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DB510);
  sub_26B078A10();
  v60 = v72[6];

  v59 = v72;
  ReactiveUIManager.presentedDialog.getter(v72);
  v61 = __dst;
  v62 = 41;
  memcpy(__dst, v59, 0x29uLL);

  sub_26AE9FB6C(v61, v71);
  memcpy(__src, v61, v62);
  if (__src[40] == 255)
  {
    goto LABEL_7;
  }

  v30 = v81;
  v31 = 41;
  memcpy(v81, __src, 0x29uLL);
  memcpy(v82, v81, 0x29uLL);
  if (LOBYTE(v82[5]) != 2)
  {
    sub_26AEA0208(v81);
LABEL_7:
    (*(v39 + 56))(v50, 1, 1, v38);
    v15 = sub_26AE9F700();
    v69 = v35;
    v70 = v15;
    swift_getOpaqueTypeConformance2();
    sub_26AF09CCC(v50, v38, v53);
    sub_26AE9FD60(v50);
    sub_26AE9FE14(v53, v55);
    goto LABEL_8;
  }

  v28 = v82[0];
  v68 = v82[0];

  swift_getObjectType();
  swift_unknownObjectRetain();
  v29 = [v28 documentation];
  if (!v29)
  {
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    goto LABEL_7;
  }

  v27 = v29;
  v10 = v37;
  v20 = v29;
  v67 = v29;
  swift_unknownObjectRelease();
  swift_unknownObjectRetain();

  swift_unknownObjectRetain();
  v19 = __dst;
  sub_26AE9FB6C(__dst, v66);
  v11 = swift_allocObject();
  v12 = v56;
  v13 = v47;
  v14 = v19;
  v21 = v11;
  *(v11 + 16) = v58;
  v22 = 1;
  *(v11 + 24) = v12 & 1;
  *(v11 + 32) = v13;
  memcpy((v11 + 40), v14, 0x29uLL);
  TermsAndConditionsSheetView.init(displaying:completion:)(v20, v33, v21, v10);
  v23 = sub_26AE9F700();
  sub_26B079590();
  sub_26AE952CC(v37);
  v64 = v35;
  v65 = v23;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_26AE9463C(v44, v38, v46);
  v25 = *(v39 + 8);
  v26 = v39 + 8;
  v25(v44, v38);
  v63 = v44;
  v18 = *(v39 + 16);
  v17[1] = v39 + 16;
  v18(v42, v46, v38);
  sub_26AE94B4C(v42, v38, v44);
  v25(v42, v38);
  v18(v50, v44, v38);
  (*(v39 + 56))(v50, 0, 1, v38);
  sub_26AF09CCC(v50, v38, v53);
  sub_26AE9FD60(v50);
  sub_26AE9FE14(v53, v55);
  v25(v44, v38);
  v25(v46, v38);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
LABEL_8:
  sub_26AE9FF48(v55, v53);
  sub_26AE9F620();
  sub_26AE94B4C(v53, v48, v32);
  sub_26AE9FD60(v53);
  sub_26AE9FD60(v55);
  return sub_26AEA007C(__dst);
}

uint64_t sub_26AE9E074(uint64_t a1, uint64_t a2, unsigned __int8 a3, uint64_t a4, char *a5)
{
  v30 = a1;
  v29 = a5;
  v24 = MEMORY[0x277D85700];
  v33 = &unk_26B087710;
  v35[11] = a2;
  v36 = a3;
  v37 = a4;
  v25 = a2;
  v26 = a3;
  v28 = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DCC00);
  v5 = MEMORY[0x28223BE20](v30);
  v32 = &v22 - v6;
  v35[10] = v5;
  v35[7] = v25;
  v27 = 1;
  v35[8] = v26 & 1;
  v35[9] = v7;
  v35[6] = v8;
  v31 = 0;
  v9 = sub_26B07A160();
  (*(*(v9 - 8) + 56))(v32, v27);

  swift_unknownObjectRetain();
  sub_26AE9FB6C(v29, v35);
  sub_26B07A130();
  v23 = sub_26B07A120();
  v10 = swift_allocObject();
  v11 = v24;
  v12 = v25;
  v13 = v26;
  v14 = v27;
  v15 = v28;
  v16 = v29;
  v34 = v10;
  *(v10 + 16) = v23;
  *(v10 + 24) = v11;
  *(v10 + 32) = v12;
  *(v10 + 40) = v13 & 1 & v14;
  *(v10 + 48) = v15;
  memcpy((v10 + 56), v16, 0x29uLL);
  v17 = v31;
  v18 = v32;
  v19 = v33;
  v20 = v34;
  *(v34 + 104) = v30;
  sub_26AEBC0C4(v17, v17, v18, v19, v20, MEMORY[0x277D84F78] + 8);
}

uint64_t sub_26AE9E2A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 144) = a8;
  *(v8 + 136) = a7;
  *(v8 + 104) = v8;
  *(v8 + 64) = 0;
  *(v8 + 72) = 0;
  *(v8 + 80) = 0;
  *(v8 + 112) = 0;
  *(v8 + 120) = 0;
  *(v8 + 152) = a4;
  *(v8 + 57) = a5 & 1;
  *(v8 + 160) = a6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DCC00);
  *(v8 + 168) = swift_task_alloc();
  *(v8 + 64) = a4;
  *(v8 + 72) = a5 & 1;
  *(v8 + 80) = a6;
  *(v8 + 112) = a7;
  *(v8 + 120) = a8;
  sub_26B07A130();
  *(v8 + 176) = sub_26B07A120();
  v16 = sub_26B07A0C0();

  return MEMORY[0x2822009F8](sub_26AE9E438, v16, v9);
}

uint64_t sub_26AE9E438()
{
  v16 = v0;
  v10 = *(v0 + 168);
  v7 = *(v0 + 160);
  v6 = *(v0 + 57);
  v5 = *(v0 + 152);
  v8 = *(v0 + 144);
  __src = *(v0 + 136);
  *(v0 + 104) = v0;

  *(v0 + 88) = v5;
  *(v0 + 96) = v6 & 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DB510);
  sub_26B078A10();

  v11 = 0uLL;
  v12 = 0;
  v13 = 0;
  v14 = 0;
  v15 = -1;
  ReactiveUIManager.presentedDialog.setter(&v11);

  sub_26B07A140();
  v1 = sub_26B07A160();
  (*(*(v1 - 8) + 56))(v10, 0, 1);
  sub_26AE9FB6C(__src, (v0 + 16));

  swift_unknownObjectRetain();
  v9 = swift_allocObject();
  *(v9 + 16) = 0;
  *(v9 + 24) = 0;
  memcpy((v9 + 32), __src, 0x29uLL);
  *(v9 + 80) = v5;
  *(v9 + 88) = v6 & 1;
  *(v9 + 96) = v7;
  *(v9 + 104) = v8;
  sub_26AF449A0(0, 0, v10, &unk_26B087720, v9, MEMORY[0x277D84F78] + 8);
  sub_26AEA08A4(v10);

  v2 = *(*(v0 + 104) + 8);

  return v2();
}

uint64_t sub_26AE9E6B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 280) = a8;
  *(v8 + 272) = a4;
  *(v8 + 248) = v8;
  *(v8 + 256) = 0;
  *(v8 + 208) = 0;
  *(v8 + 216) = 0;
  *(v8 + 224) = 0;
  *(v8 + 264) = 0;
  *(v8 + 232) = 0;
  *(v8 + 240) = 0;
  *(v8 + 288) = a5;
  *(v8 + 57) = a6 & 1;
  *(v8 + 296) = a7;
  v9 = sub_26B078580();
  *(v8 + 304) = v9;
  *(v8 + 312) = *(v9 - 8);
  *(v8 + 320) = swift_task_alloc();
  *(v8 + 256) = a4;
  *(v8 + 208) = a5;
  *(v8 + 216) = a6 & 1;
  *(v8 + 224) = a7;
  *(v8 + 264) = a8;

  return MEMORY[0x2822009F8](sub_26AE9E850, 0, 0);
}

uint64_t sub_26AE9E850()
{
  v37 = v0;
  v1 = *(v0 + 272);
  v31 = v1;
  *(v0 + 248) = v0;
  sub_26AE9FB6C(v1, (v0 + 160));
  memcpy((v0 + 112), v31, 0x29uLL);
  if (*(v0 + 152) != 255)
  {
    memcpy((v30 + 64), (v30 + 112), 0x29uLL);
    memcpy((v30 + 16), (v30 + 64), 0x29uLL);
    if (*(v30 + 56) == 2)
    {
      v16 = *(v30 + 296);
      v15 = *(v30 + 57);
      v14 = *(v30 + 288);
      v13 = *(v30 + 24);
      v2 = *(v30 + 32);
      *(v30 + 232) = v13;
      *(v30 + 240) = v2;
      swift_unknownObjectRelease();
      sub_26B078550();

      swift_unknownObjectRetain();
      v17 = swift_allocObject();
      *(v17 + 16) = v14;
      *(v17 + 24) = v15 & 1;
      *(v17 + 32) = v16;
      v28 = sub_26B078570();
      v29 = sub_26B07A2A0();
      v21 = swift_allocObject();
      *(v21 + 16) = 32;
      v22 = swift_allocObject();
      *(v22 + 16) = 8;
      v18 = swift_allocObject();
      *(v18 + 16) = sub_26AEA0994;
      *(v18 + 24) = v17;
      v19 = swift_allocObject();
      *(v19 + 16) = sub_26AEA0A74;
      *(v19 + 24) = v18;
      v23 = swift_allocObject();
      *(v23 + 16) = sub_26AEA0AC0;
      *(v23 + 24) = v19;
      v24 = swift_allocObject();
      *(v24 + 16) = 32;
      v25 = swift_allocObject();
      *(v25 + 16) = 8;
      v20 = swift_allocObject();
      *(v20 + 16) = sub_26AE9F30C;
      *(v20 + 24) = 0;
      v26 = swift_allocObject();
      *(v26 + 16) = sub_26AEA0BC0;
      *(v26 + 24) = v20;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DBB00);
      sub_26B07A760();
      v27 = v3;

      *v27 = sub_26AEA09F8;
      v27[1] = v21;

      v27[2] = sub_26AEA0A2C;
      v27[3] = v22;

      v27[4] = sub_26AEA0B0C;
      v27[5] = v23;

      v27[6] = sub_26AEA0B44;
      v27[7] = v24;

      v27[8] = sub_26AEA0B78;
      v27[9] = v25;

      v27[10] = sub_26AEA0C0C;
      v27[11] = v26;
      sub_26AEA3B2C();

      if (os_log_type_enabled(v28, v29))
      {
        buf = sub_26B07A420();
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DCED0);
        v11 = sub_26AEA3B70(0);
        v12 = sub_26AEA3B70(2);
        v32 = buf;
        v33 = v11;
        v34 = v12;
        sub_26AEA3BC4(2, &v32);
        sub_26AEA3BC4(2, &v32);
        v35 = sub_26AEA09F8;
        v36 = v21;
        sub_26AEA3BD8(&v35, &v32, &v33, &v34);
        v35 = sub_26AEA0A2C;
        v36 = v22;
        sub_26AEA3BD8(&v35, &v32, &v33, &v34);
        v35 = sub_26AEA0B0C;
        v36 = v23;
        sub_26AEA3BD8(&v35, &v32, &v33, &v34);
        v35 = sub_26AEA0B44;
        v36 = v24;
        sub_26AEA3BD8(&v35, &v32, &v33, &v34);
        v35 = sub_26AEA0B78;
        v36 = v25;
        sub_26AEA3BD8(&v35, &v32, &v33, &v34);
        v35 = sub_26AEA0C0C;
        v36 = v26;
        sub_26AEA3BD8(&v35, &v32, &v33, &v34);
        _os_log_impl(&dword_26AE88000, v28, v29, "%s.%s: TermsAndConditionsSheetView called back", buf, 0x16u);
        sub_26AEA3C24(v11);
        sub_26AEA3C24(v12);
        sub_26B07A400();
      }

      else
      {
      }

      v7 = *(v30 + 320);
      v8 = *(v30 + 304);
      v9 = *(v30 + 280);
      v6 = *(v30 + 312);
      MEMORY[0x277D82BD8](v28);
      (*(v6 + 8))(v7, v8);

      v13(v9);
    }

    else
    {
      sub_26AEA0208(v30 + 64);
    }
  }

  v4 = *(*(v30 + 248) + 8);

  return v4();
}

uint64_t sub_26AE9F43C()
{
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  return swift_deallocObject();
}

uint64_t sub_26AE9F518()
{

  swift_unknownObjectRelease();
  return swift_deallocObject();
}

unint64_t sub_26AE9F598()
{
  v2 = qword_2803DBC80;
  if (!qword_2803DBC80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803DBC70);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DBC80);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_26AE9F620()
{
  v2 = qword_2803DBC88;
  if (!qword_2803DBC88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803DBC78);
    type metadata accessor for TermsAndConditionsSheetView();
    sub_26AE9F700();
    swift_getOpaqueTypeConformance2();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DBC88);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_26AE9F700()
{
  v2 = qword_2803DBC90;
  if (!qword_2803DBC90)
  {
    type metadata accessor for TermsAndConditionsSheetView();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DBC90);
    return WitnessTable;
  }

  return v2;
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  return result;
}

uint64_t sub_26AE9F7A0(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 24))
    {
      v4 = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v3 = -1;
      if (!HIDWORD(*(a1 + 16)))
      {
        v3 = *(a1 + 16);
      }

      v4 = v3;
    }
  }

  else
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_26AE9F8B8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFF)
  {
    *result = a2 + 0x80000000;
    *(result + 8) = 0;
    *(result + 16) = 0;
    if (a3 > 0x7FFFFFFF)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 > 0x7FFFFFFF)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2 - 1;
    }
  }

  return result;
}

uint64_t sub_26AE9FA98()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803DBC70);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803DBC78);
  sub_26AE9F598();
  sub_26AE9F620();
  return swift_getOpaqueTypeConformance2();
}

uint64_t *sub_26AE9FB6C(char *a1, uint64_t *a2)
{
  if (a1[40] == 255)
  {
    memcpy(a2, a1, 0x29uLL);
  }

  else
  {
    v3 = *a1;
    v4 = *(a1 + 1);
    v5 = *(a1 + 2);
    v6 = *(a1 + 3);
    v7 = *(a1 + 4);
    v8 = a1[40];
    sub_26AE9FC2C(*a1, v4, v5, v6, v7, v8);
    *a2 = v3;
    a2[1] = v4;
    a2[2] = v5;
    a2[3] = v6;
    a2[4] = v7;
    *(a2 + 40) = v8;
  }

  return a2;
}

uint64_t sub_26AE9FC2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  switch(a6)
  {
    case 0:
      goto LABEL_8;
    case 1:
    case 2:
      swift_unknownObjectRetain();

    case 3:
LABEL_8:
      swift_unknownObjectRetain();
      swift_unknownObjectRetain();

    case 4:

    case 5:
      swift_unknownObjectRetain();
      swift_unknownObjectRetain();
  }

  return result;
}

uint64_t sub_26AE9FD60(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DBC98);
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(a1, 1))
  {
    (*(v4 + 8))(a1, v3);
  }

  return a1;
}

void *sub_26AE9FE14(const void *a1, void *a2)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DBC98);
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a1, 1))
  {
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DBC78);
    memcpy(a2, a1, *(*(v2 - 8) + 64));
  }

  else
  {
    (*(v7 + 32))(a2, a1, v6);
    (*(v7 + 56))(a2, 0, 1, v6);
  }

  return a2;
}

void *sub_26AE9FF48(const void *a1, void *a2)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DBC98);
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a1, 1))
  {
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DBC78);
    memcpy(a2, a1, *(*(v2 - 8) + 64));
  }

  else
  {
    (*(v7 + 16))(a2, a1, v6);
    (*(v7 + 56))(a2, 0, 1, v6);
  }

  return a2;
}

uint64_t sub_26AEA007C(uint64_t a1)
{
  if (*(a1 + 40) != 255)
  {
    sub_26AEA00D4(*a1, *(a1 + 8), *(a1 + 16), *(a1 + 24), *(a1 + 32), *(a1 + 40));
  }

  return a1;
}

uint64_t sub_26AEA00D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  switch(a6)
  {
    case 0:
      goto LABEL_8;
    case 1:
    case 2:
      swift_unknownObjectRelease();

    case 3:
LABEL_8:
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();

    case 4:

    case 5:
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_26AEA024C()
{

  swift_unknownObjectRelease();
  if (*(v0 + 80) != 255)
  {
    sub_26AEA00D4(*(v2 + 40), *(v2 + 48), *(v2 + 56), *(v2 + 64), *(v2 + 72), *(v2 + 80));
  }

  return swift_deallocObject();
}

uint64_t sub_26AEA0304()
{
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  if (*(v0 + 96) != 255)
  {
    sub_26AEA00D4(*(v2 + 56), *(v2 + 64), *(v2 + 72), *(v2 + 80), *(v2 + 88), *(v2 + 96));
  }

  return swift_deallocObject();
}

uint64_t sub_26AEA0388(uint64_t a1)
{
  v5 = v2;
  *(v2 + 16) = v2;
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + 32);
  v9 = *(v1 + 40) & 1;
  v10 = *(v1 + 48);
  v11 = *(v1 + 104);
  v3 = swift_task_alloc();
  *(v5 + 24) = v3;
  *v3 = *(v5 + 16);
  v3[1] = sub_26AEA04A8;

  return sub_26AE9E2A0(a1, v6, v7, v8, v9, v10, v1 + 56, v11);
}

uint64_t sub_26AEA04A8()
{
  v3 = *v0;
  *(v3 + 16) = *v0;

  v1 = *(*(v3 + 16) + 8);

  return v1();
}

uint64_t sub_26AEA05D0()
{
  swift_unknownObjectRelease();
  if (*(v0 + 72) != 255)
  {
    sub_26AEA00D4(*(v2 + 32), *(v2 + 40), *(v2 + 48), *(v2 + 56), *(v2 + 64), *(v2 + 72));
  }

  swift_unknownObjectRelease();
  return swift_deallocObject();
}

uint64_t sub_26AEA065C(uint64_t a1)
{
  v5 = v2;
  *(v2 + 16) = v2;
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + 80);
  v9 = *(v1 + 88) & 1;
  v10 = *(v1 + 96);
  v11 = *(v1 + 104);
  v3 = swift_task_alloc();
  *(v5 + 24) = v3;
  *v3 = *(v5 + 16);
  v3[1] = sub_26AEA077C;

  return sub_26AE9E6B4(a1, v6, v7, v1 + 32, v8, v9, v10, v11);
}

uint64_t sub_26AEA077C()
{
  v3 = *v0;
  *(v3 + 16) = *v0;

  v1 = *(*(v3 + 16) + 8);

  return v1();
}

uint64_t sub_26AEA08A4(uint64_t a1)
{
  v3 = sub_26B07A160();
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(a1, 1))
  {
    (*(v4 + 8))(a1, v3);
  }

  return a1;
}

uint64_t sub_26AEA094C()
{

  swift_unknownObjectRelease();
  return swift_deallocObject();
}

uint64_t sub_26AEA0C18()
{
  v2 = *(v0 + 16);

  return v2;
}

uint64_t DeepLinkHandler.init(reactiveManager:)(uint64_t a1)
{

  *(v1 + 16) = a1;

  return v4;
}

uint64_t DeepLinkHandler.resolve(_:)(uint64_t a1, uint64_t a2)
{
  v3[12] = v2;
  v3[11] = a2;
  v3[10] = a1;
  v3[7] = v3;
  v3[8] = 0;
  v3[9] = 0;
  v4 = sub_26B078580();
  v3[13] = v4;
  v3[14] = *(v4 - 8);
  v3[15] = swift_task_alloc();
  v3[8] = a2;
  v3[9] = v2;

  return MEMORY[0x2822009F8](sub_26AEA0E08, 0, 0);
}

uint64_t sub_26AEA0E08()
{
  v34 = v0;
  *(v0 + 56) = v0;

  v28 = DeepLinkParameters.hasParameters.getter();

  if (v28)
  {
    sub_26AEA1AD0(v27[11], (v27 + 2));
    v1 = swift_task_alloc();
    v27[16] = v1;
    *v1 = v27[7];
    v1[1] = sub_26AEA17AC;
    v2 = v27[11];
    v3 = v27[10];

    return sub_26AEA2868(v3, (v27 + 2), v2);
  }

  else
  {
    v14 = v27[12];
    sub_26B078550();

    v25 = sub_26B078570();
    v26 = sub_26B07A2A0();
    v18 = swift_allocObject();
    *(v18 + 16) = 32;
    v19 = swift_allocObject();
    *(v19 + 16) = 8;
    v15 = swift_allocObject();
    *(v15 + 16) = sub_26AEA1AC8;
    *(v15 + 24) = v14;
    v16 = swift_allocObject();
    *(v16 + 16) = sub_26AEA5A10;
    *(v16 + 24) = v15;
    v20 = swift_allocObject();
    *(v20 + 16) = sub_26AEA5A5C;
    *(v20 + 24) = v16;
    v21 = swift_allocObject();
    *(v21 + 16) = 32;
    v22 = swift_allocObject();
    *(v22 + 16) = 8;
    v17 = swift_allocObject();
    *(v17 + 16) = sub_26AEA1A98;
    *(v17 + 24) = 0;
    v23 = swift_allocObject();
    *(v23 + 16) = sub_26AEA5B5C;
    *(v23 + 24) = v17;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DBB00);
    sub_26B07A760();
    v24 = v5;

    *v24 = sub_26AEA5994;
    v24[1] = v18;

    v24[2] = sub_26AEA59C8;
    v24[3] = v19;

    v24[4] = sub_26AEA5AA8;
    v24[5] = v20;

    v24[6] = sub_26AEA5AE0;
    v24[7] = v21;

    v24[8] = sub_26AEA5B14;
    v24[9] = v22;

    v24[10] = sub_26AEA5BA8;
    v24[11] = v23;
    sub_26AEA3B2C();

    if (os_log_type_enabled(v25, v26))
    {
      buf = sub_26B07A420();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DCED0);
      v12 = sub_26AEA3B70(0);
      v13 = sub_26AEA3B70(2);
      v29 = buf;
      v30 = v12;
      v31 = v13;
      sub_26AEA3BC4(2, &v29);
      sub_26AEA3BC4(2, &v29);
      v32 = sub_26AEA5994;
      v33 = v18;
      sub_26AEA3BD8(&v32, &v29, &v30, &v31);
      v32 = sub_26AEA59C8;
      v33 = v19;
      sub_26AEA3BD8(&v32, &v29, &v30, &v31);
      v32 = sub_26AEA5AA8;
      v33 = v20;
      sub_26AEA3BD8(&v32, &v29, &v30, &v31);
      v32 = sub_26AEA5AE0;
      v33 = v21;
      sub_26AEA3BD8(&v32, &v29, &v30, &v31);
      v32 = sub_26AEA5B14;
      v33 = v22;
      sub_26AEA3BD8(&v32, &v29, &v30, &v31);
      v32 = sub_26AEA5BA8;
      v33 = v23;
      sub_26AEA3BD8(&v32, &v29, &v30, &v31);
      _os_log_impl(&dword_26AE88000, v25, v26, "%s.%s: No parameters provided to handle deep link.", buf, 0x16u);
      sub_26AEA3C24(v12);
      sub_26AEA3C24(v13);
      sub_26B07A400();
    }

    else
    {
    }

    v8 = v27[15];
    v9 = v27[13];
    v10 = v27[10];
    v7 = v27[14];
    MEMORY[0x277D82BD8](v25);
    (*(v7 + 8))(v8, v9);
    *v10 = 0x7FFFFFEFCLL;
    v10[1] = 0;

    v6 = *(v27[7] + 8);

    return v6();
  }
}

uint64_t sub_26AEA17AC()
{
  v4 = *v1;
  *(v4 + 56) = *v1;
  *(v4 + 136) = v0;

  if (v0)
  {
    v2 = sub_26AEA19C0;
  }

  else
  {
    v2 = sub_26AEA1914;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_26AEA1914()
{
  *(v0 + 56) = v0;
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);

  v1 = *(*(v0 + 56) + 8);

  return v1();
}

uint64_t sub_26AEA19C0()
{
  *(v0 + 56) = v0;
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);

  v1 = *(*(v3 + 56) + 8);

  return v1();
}

uint64_t sub_26AEA1AD0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v89 = a2;
  v103 = a1;
  v91 = sub_26AEA5C54;
  v92 = sub_26AEA5D04;
  v93 = sub_26AEA5D50;
  v94 = sub_26AEA3958;
  v95 = sub_26AEA5E50;
  v96 = sub_26AEA5C88;
  v97 = sub_26AEA5CBC;
  v98 = sub_26AEA5D9C;
  v99 = sub_26AEA5DD4;
  v100 = sub_26AEA5E08;
  v101 = sub_26AEA5E9C;
  v126 = 0;
  v125 = 0;
  v123 = 0;
  v124 = 0;
  v121 = 0;
  v119 = 0;
  v120 = 0;
  v117 = 0;
  v102 = 0;
  v104 = sub_26B078580();
  v105 = *(v104 - 8);
  v106 = v104 - 8;
  v107 = (*(v105 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v108 = v39 - v107;
  v126 = MEMORY[0x28223BE20](v103);
  v125 = v2;
  v109 = *(v126 + OBJC_IVAR____TtC19SoftwareUpdateUIKit15DeepLinkRequest_parameters);

  v110 = DeepLinkParameters.path.getter();
  v111 = v3;
  if (v3)
  {
    v87 = v110;
    v88 = v111;
    v85 = v111;
    v84 = v110;
    v119 = v110;
    v120 = v111;

    LOBYTE(v4) = sub_26B03521C(v84, v85);
    v86 = v118;
    if (v118 != 3)
    {
      v83 = v86;
      v82 = v83;
      v117 = v83;
      if (v83)
      {
        if (v82 == 1)
        {
          v7 = v89;
          *(v89 + 24) = &type metadata for BetaUpdatesDeepLinkCommand;
          *(v7 + 32) = &protocol witness table for BetaUpdatesDeepLinkCommand;
          nullsub_37(v4);
        }

        else
        {
          sub_26B078550();

          v80 = sub_26B078570();
          v81 = sub_26B07A2C0();
          v66 = 17;
          v69 = 7;
          v71 = swift_allocObject();
          v65 = 32;
          *(v71 + 16) = 32;
          v72 = swift_allocObject();
          v67 = 8;
          *(v72 + 16) = 8;
          v68 = 32;
          v8 = swift_allocObject();
          v9 = v90;
          v63 = v8;
          *(v8 + 16) = v91;
          *(v8 + 24) = v9;
          v10 = swift_allocObject();
          v11 = v63;
          v64 = v10;
          *(v10 + 16) = v92;
          *(v10 + 24) = v11;
          v12 = swift_allocObject();
          v13 = v64;
          v73 = v12;
          *(v12 + 16) = v93;
          *(v12 + 24) = v13;
          v74 = swift_allocObject();
          *(v74 + 16) = v65;
          v75 = swift_allocObject();
          *(v75 + 16) = v67;
          v14 = swift_allocObject();
          v70 = v14;
          *(v14 + 16) = v94;
          *(v14 + 24) = 0;
          v15 = swift_allocObject();
          v16 = v70;
          v77 = v15;
          *(v15 + 16) = v95;
          *(v15 + 24) = v16;
          v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DBB00);
          v76 = sub_26B07A760();
          v78 = v17;

          v18 = v71;
          v19 = v78;
          *v78 = v96;
          v19[1] = v18;

          v20 = v72;
          v21 = v78;
          v78[2] = v97;
          v21[3] = v20;

          v22 = v73;
          v23 = v78;
          v78[4] = v98;
          v23[5] = v22;

          v24 = v74;
          v25 = v78;
          v78[6] = v99;
          v25[7] = v24;

          v26 = v75;
          v27 = v78;
          v78[8] = v100;
          v27[9] = v26;

          v28 = v77;
          v29 = v78;
          v78[10] = v101;
          v29[11] = v28;
          sub_26AEA3B2C();

          if (os_log_type_enabled(v80, v81))
          {
            v30 = v102;
            v55 = sub_26B07A420();
            v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DCED0);
            v56 = sub_26AEA3B70(0);
            v57 = sub_26AEA3B70(2);
            v59 = &v116;
            v116 = v55;
            v60 = &v115;
            v115 = v56;
            v61 = &v114;
            v114 = v57;
            v58 = 2;
            sub_26AEA3BC4(2, &v116);
            sub_26AEA3BC4(v58, v59);
            v112 = v96;
            v113 = v71;
            sub_26AEA3BD8(&v112, v59, v60, v61);
            v62 = v30;
            if (v30)
            {

              __break(1u);
            }

            else
            {
              v112 = v97;
              v113 = v72;
              sub_26AEA3BD8(&v112, &v116, &v115, &v114);
              v53 = 0;
              v112 = v98;
              v113 = v73;
              sub_26AEA3BD8(&v112, &v116, &v115, &v114);
              v52 = 0;
              v112 = v99;
              v113 = v74;
              sub_26AEA3BD8(&v112, &v116, &v115, &v114);
              v51 = 0;
              v112 = v100;
              v113 = v75;
              sub_26AEA3BD8(&v112, &v116, &v115, &v114);
              v50 = 0;
              v112 = v101;
              v113 = v77;
              sub_26AEA3BD8(&v112, &v116, &v115, &v114);
              _os_log_impl(&dword_26AE88000, v80, v81, "%s.%s: alsoAvailable destination is not supported for direct invoke", v55, 0x16u);
              sub_26AEA3C24(v56);
              sub_26AEA3C24(v57);
              sub_26B07A400();
            }
          }

          else
          {
          }

          MEMORY[0x277D82BD8](v80);
          v31 = (*(v105 + 8))(v108, v104);
          v32 = v89;
          *(v89 + 24) = &type metadata for DefaultDeepLinkCommand;
          *(v32 + 32) = &protocol witness table for DefaultDeepLinkCommand;
          nullsub_29(v31);
        }
      }

      else
      {
        v5 = v89;
        *(v89 + 24) = &type metadata for AutomaticUpdatesDeepLinkCommand;
        *(v5 + 32) = &protocol witness table for AutomaticUpdatesDeepLinkCommand;
        nullsub_36(v4);
      }
    }
  }

  else
  {
  }

  v48 = *(v103 + OBJC_IVAR____TtC19SoftwareUpdateUIKit15DeepLinkRequest_parameters);

  updated = DeepLinkParameters.showLatestUpdatePane.getter();

  if (updated)
  {
    v33 = v89;
    *(v89 + 24) = &type metadata for LatestUpdateDeepLinkCommand;
    *(v33 + 32) = &protocol witness table for LatestUpdateDeepLinkCommand;
    return nullsub_21();
  }

  v45 = *(v103 + OBJC_IVAR____TtC19SoftwareUpdateUIKit15DeepLinkRequest_parameters);

  v46 = DeepLinkParameters.performAction.getter();
  v47 = v34;
  if (v34)
  {
    v43 = v46;
    v44 = v47;
    v41 = v47;
    v40 = v46;
    v123 = v46;
    v124 = v47;

    sub_26B078640();
    sub_26AFC4C54(v40, v41, &v122);
    v42 = v122;
    if (v122 != 2)
    {
      v39[1] = v42;
      v36 = v89;
      v37 = v42;
      v121 = v42 & 1;
      *(v89 + 24) = &type metadata for UpdateActionDeepLinkCommand;
      *(v36 + 32) = &protocol witness table for UpdateActionDeepLinkCommand;
      *v36 = v37 & 1;
    }
  }

  else
  {
  }

  v38 = v89;
  *(v89 + 24) = &type metadata for DefaultDeepLinkCommand;
  *(v38 + 32) = &protocol witness table for DefaultDeepLinkCommand;
  return nullsub_29(v35);
}

uint64_t sub_26AEA2868(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[15] = v3;
  v4[14] = a3;
  v4[13] = a2;
  v4[12] = a1;
  v4[7] = v4;
  v4[8] = 0;
  v4[9] = 0;
  v4[10] = 0;
  v4[11] = 0;
  v5 = sub_26B078580();
  v4[16] = v5;
  v4[17] = *(v5 - 8);
  v4[18] = swift_task_alloc();
  v4[8] = a2;
  v4[9] = a3;
  v4[10] = v3;

  return MEMORY[0x2822009F8](sub_26AEA29A4, 0, 0);
}

uint64_t sub_26AEA29A4()
{
  v42 = v0;
  v19 = v0[15];
  v18 = v0[13];
  v0[7] = v0;
  sub_26B078550();

  sub_26AEA5EB0(v18, (v0 + 2));
  v23 = swift_allocObject();
  sub_26AEA5F5C(v0 + 2, (v23 + 16));
  v35 = sub_26B078570();
  v36 = sub_26B07A2A0();
  v25 = swift_allocObject();
  *(v25 + 16) = 32;
  v26 = swift_allocObject();
  *(v26 + 16) = 8;
  v20 = swift_allocObject();
  *(v20 + 16) = sub_26AEA5EA8;
  *(v20 + 24) = v19;
  v21 = swift_allocObject();
  *(v21 + 16) = sub_26AEA6048;
  *(v21 + 24) = v20;
  v27 = swift_allocObject();
  *(v27 + 16) = sub_26AEA6094;
  *(v27 + 24) = v21;
  v28 = swift_allocObject();
  *(v28 + 16) = 32;
  v29 = swift_allocObject();
  *(v29 + 16) = 8;
  v22 = swift_allocObject();
  *(v22 + 16) = sub_26AEA3A3C;
  *(v22 + 24) = 0;
  v30 = swift_allocObject();
  *(v30 + 16) = sub_26AEA6194;
  *(v30 + 24) = v22;
  v31 = swift_allocObject();
  *(v31 + 16) = 32;
  v32 = swift_allocObject();
  *(v32 + 16) = 8;
  v24 = swift_allocObject();
  *(v24 + 16) = sub_26AEA5F98;
  *(v24 + 24) = v23;
  v33 = swift_allocObject();
  *(v33 + 16) = sub_26AEA6294;
  *(v33 + 24) = v24;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DBB00);
  sub_26B07A760();
  v34 = v1;

  *v34 = sub_26AEA5FCC;
  v34[1] = v25;

  v34[2] = sub_26AEA6000;
  v34[3] = v26;

  v34[4] = sub_26AEA60E0;
  v34[5] = v27;

  v34[6] = sub_26AEA6118;
  v34[7] = v28;

  v34[8] = sub_26AEA614C;
  v34[9] = v29;

  v34[10] = sub_26AEA61E0;
  v34[11] = v30;

  v34[12] = sub_26AEA6218;
  v34[13] = v31;

  v34[14] = sub_26AEA624C;
  v34[15] = v32;

  v34[16] = sub_26AEA62E0;
  v34[17] = v33;
  sub_26AEA3B2C();

  if (os_log_type_enabled(v35, v36))
  {
    buf = sub_26B07A420();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DCED0);
    v15 = sub_26AEA3B70(0);
    v16 = sub_26AEA3B70(3);
    v37 = buf;
    v38 = v15;
    v39 = v16;
    sub_26AEA3BC4(2, &v37);
    sub_26AEA3BC4(3, &v37);
    v40 = sub_26AEA5FCC;
    v41 = v25;
    sub_26AEA3BD8(&v40, &v37, &v38, &v39);
    v40 = sub_26AEA6000;
    v41 = v26;
    sub_26AEA3BD8(&v40, &v37, &v38, &v39);
    v40 = sub_26AEA60E0;
    v41 = v27;
    sub_26AEA3BD8(&v40, &v37, &v38, &v39);
    v40 = sub_26AEA6118;
    v41 = v28;
    sub_26AEA3BD8(&v40, &v37, &v38, &v39);
    v40 = sub_26AEA614C;
    v41 = v29;
    sub_26AEA3BD8(&v40, &v37, &v38, &v39);
    v40 = sub_26AEA61E0;
    v41 = v30;
    sub_26AEA3BD8(&v40, &v37, &v38, &v39);
    v40 = sub_26AEA6218;
    v41 = v31;
    sub_26AEA3BD8(&v40, &v37, &v38, &v39);
    v40 = sub_26AEA624C;
    v41 = v32;
    sub_26AEA3BD8(&v40, &v37, &v38, &v39);
    v40 = sub_26AEA62E0;
    v41 = v33;
    sub_26AEA3BD8(&v40, &v37, &v38, &v39);
    _os_log_impl(&dword_26AE88000, v35, v36, "%s.%s: Resolving deep link command: %s", buf, 0x20u);
    sub_26AEA3C24(v15);
    sub_26AEA3C24(v16);
    sub_26B07A400();
  }

  else
  {
  }

  v6 = v17[18];
  v7 = v17[16];
  v8 = v17[14];
  v9 = v17[13];
  v5 = v17[17];
  MEMORY[0x277D82BD8](v35);
  (*(v5 + 8))(v6, v7);
  v10 = sub_26AEA3988(v9, v8);
  v17[19] = v10;
  v17[11] = v10;
  v11 = v9[3];
  v12 = v9[4];
  __swift_project_boxed_opaque_existential_1(v9, v11);
  v13 = (*(v12 + 8) + **(v12 + 8));
  v2 = swift_task_alloc();
  v17[20] = v2;
  *v2 = v17[7];
  v2[1] = sub_26AEA3660;
  v3 = v17[12];

  return v13(v3, v10, v11, v12);
}

uint64_t sub_26AEA3660()
{
  v4 = *v1;
  *(v4 + 56) = *v1;
  *(v4 + 168) = v0;

  if (v0)
  {
    v2 = sub_26AEA3874;
  }

  else
  {
    v2 = sub_26AEA37C8;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_26AEA37C8()
{
  *(v0 + 56) = v0;

  v1 = *(*(v0 + 56) + 8);

  return v1();
}

uint64_t sub_26AEA3874()
{
  *(v0 + 56) = v0;

  v1 = *(*(v0 + 56) + 8);

  return v1();
}

uint64_t sub_26AEA3988(uint64_t a1, uint64_t a2)
{
  type metadata accessor for DeepLinkContext();

  v6 = *(v4 + 16);

  v2 = sub_26AEA3A00();
  return DeepLinkContext.__allocating_init(request:reactiveManager:stateChangeTimeout:)(a2, v6, v2);
}

uint64_t sub_26AEA3A6C(uint64_t a1)
{
  sub_26AEA5EB0(a1, v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DBCA0);
  return sub_26B079E60();
}

uint64_t sub_26AEA3B70(uint64_t a1)
{
  if (a1)
  {
    return sub_26B07A420();
  }

  else
  {
    return 0;
  }
}

uint64_t sub_26AEA3BC4(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

uint64_t sub_26AEA3C24(uint64_t result)
{
  if (result)
  {
    sub_26B07A410();
    return sub_26B07A400();
  }

  return result;
}

void *sub_26AEA3CF4(void *a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v4 = a4();
  sub_26AEA3D90(v4, v5, a3);
  v8 = *a1;

  sub_26B07A450();
  result = a1;
  *a1 = v8 + 8;
  return result;
}

uint64_t sub_26AEA3D90(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  sub_26B078640();
  v14 = sub_26AEA3F34(&v17, 0, 0, 1, a1, a2);
  v15 = v3;
  v16 = v4;
  v11 = v17;
  swift_unknownObjectRetain();
  if (v14)
  {
    swift_unknownObjectRelease();

    v12[3] = swift_getObjectType();
    swift_unknownObjectRetain();
    v12[0] = v14;
    v6 = *a3;
    if (*a3)
    {
      sub_26AEA6474(v12, v6);
      swift_unknownObjectRelease();
      *a3 = v6 + 32;
    }

    else
    {
      swift_unknownObjectRelease();
    }

    __swift_destroy_boxed_opaque_existential_0(v12);
  }

  else
  {
    v13[3] = MEMORY[0x277D840A0];
    v13[0] = a1;
    v13[1] = a2;
    v7 = *a3;
    if (*a3)
    {
      sub_26AEA6474(v13, v7);
      swift_unknownObjectRelease();
      *a3 = v7 + 32;
    }

    else
    {
      swift_unknownObjectRelease();
    }

    __swift_destroy_boxed_opaque_existential_0(v13);
  }

  return v11;
}

uint64_t sub_26AEA3F34(uint64_t result, char *a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6)
{
  v19 = result;
  v25 = a6;
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (a2)
      {
        if (!a3)
        {
          __break(1u);
        }

        v18 = a3 - a2;
      }

      else
      {
        v18 = 0;
      }

      v17 = (a6 & 0xF00000000000000uLL) >> 56;
      if (v17 < v18)
      {
        if (a2)
        {
          v16 = a2;
        }

        else
        {
          sub_26B07A650();
          __break(1u);
        }

        v22[0] = a5;
        v22[1] = a6 & (-bswap64(0xFFuLL) - 1);
        sub_26AEA42EC(v22, v17, v16);
        sub_26B07A460();
        *v19 = v16;
        v12 = 0;
        v13 = v17;
        v14 = 1;
        v15 = 0;
        goto LABEL_28;
      }
    }

    goto LABEL_14;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
LABEL_14:
    v6 = sub_26AEA4468(a5, a6);
    *v19 = v7;
    v12 = v6;
    v13 = v8;
    v14 = 0;
    v15 = 1;
LABEL_28:
    v22[2] = v12;
    v22[3] = v13;
    v23 = v14 & 1;
    v24 = v15 & 1;
    return v12;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    if ((a6 & 0xFFFFFFFFFFFFFFFLL) != 0xFFFFFFFFFFFFFFE0)
    {
      v11 = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
      goto LABEL_23;
    }

    __break(1u);
  }

  result = sub_26B07A580();
  if (result)
  {
    v10 = result;
  }

  else
  {
    result = sub_26B07A650();
    __break(1u);
  }

  v11 = v10;
LABEL_23:
  *v19 = v11;
  if (a6 < 0)
  {
    v9 = 0;
LABEL_27:
    v12 = v9;
    v13 = a5 & 0xFFFFFFFFFFFFLL;
    v14 = 0;
    v15 = 0;
    goto LABEL_28;
  }

  if ((a6 & 0xFFFFFFFFFFFFFFFLL) != 0)
  {
    swift_unknownObjectRetain();
    v9 = a6 & 0xFFFFFFFFFFFFFFFLL;
    goto LABEL_27;
  }

  __break(1u);
  return result;
}

char *sub_26AEA42EC(char *result, int64_t a2, char *a3)
{
  if (a2 < 0)
  {
LABEL_7:
    result = sub_26B07A690();
    __break(1u);
    goto LABEL_8;
  }

  if ((a2 * 1) >> 64 == a2 >> 63)
  {
    if (result >= &a3[a2] || a3 >= &result[a2])
    {
      memcpy(a3, result, a2);
      return a3;
    }

    sub_26B07A690();
    __break(1u);
    goto LABEL_7;
  }

LABEL_8:
  __break(1u);
  return result;
}

uint64_t sub_26AEA4468(uint64_t a1, uint64_t a2)
{
  v7 = sub_26AEA4524(a1, a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DBCA8);
  inited = swift_initStackObject();
  v3 = sub_26AEA4D34(inited, 1);
  *v4 = 0;
  sub_26AEA4D80();
  sub_26AEA4DB4(v3);

  v8 = sub_26AEA515C(v7);

  result = v8;
  if (!__OFSUB__(v8, 1))
  {
    return v7;
  }

  __break(1u);
  return result;
}

uint64_t sub_26AEA4524(uint64_t a1, uint64_t a2)
{
  v16[15] = a2;
  if ((a2 & 0x1000000000000000) != 0)
  {
    v13 = sub_26B079F40();
  }

  else
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      v12 = (a2 & 0xF00000000000000uLL) >> 56;
    }

    else
    {
      v12 = a1 & 0xFFFFFFFFFFFFLL;
    }

    v13 = v12;
  }

  if (!v13)
  {
    return sub_26AEA567C();
  }

  v10 = sub_26AEA5174(v13, 0);

  v11 = (v10 + 4);

  if (v13 < 0)
  {
LABEL_30:
    sub_26B07A690();
    __break(1u);
    return sub_26AEA567C();
  }

  v16[12] = a2;
  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      v16[0] = a1;
      v16[1] = a2 & (-bswap64(0xFFuLL) - 1);
      if (v13 >= ((a2 & 0xF00000000000000uLL) >> 56))
      {
        sub_26AEA52B8(v16, (a2 & 0xF00000000000000uLL) >> 56, v11);
        v8 = (a2 & 0xF00000000000000uLL) >> 56;
        goto LABEL_26;
      }

      goto LABEL_29;
    }

    if ((a1 & 0x1000000000000000) != 0)
    {
      if ((a2 & 0xFFFFFFFFFFFFFFFLL) != 0xFFFFFFFFFFFFFFE0)
      {
        v6 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
        v7 = a1 & 0xFFFFFFFFFFFFLL;
        goto LABEL_22;
      }

      __break(1u);
    }

    v6 = sub_26B07A580();
    v7 = v3;
LABEL_22:
    if (v13 >= v7)
    {
      if (!v6)
      {
        __break(1u);
      }

      sub_26AEA52B8(v6, v7, v11);
      v8 = v7;
      goto LABEL_26;
    }

    goto LABEL_29;
  }

  v9 = sub_26B07A560();
  if (v2)
  {
LABEL_29:
    sub_26B07A650();
    __break(1u);
    goto LABEL_30;
  }

  v8 = v9;
LABEL_26:
  v16[11] = 0xE000000000000000;
  sub_26B078640();
  v16[13] = 0;
  v16[14] = 0xE000000000000000;
  v16[10] = 0xE000000000000000;
  if (v8 != v13)
  {
    sub_26B07A650();
    __break(1u);
  }

  sub_26AEA650C();
  return v10;
}

uint64_t sub_26AEA4D34(uint64_t a1, uint64_t a2)
{

  *(a1 + 16) = a2;
  *(a1 + 24) = 2 * a2;

  return a1;
}

void sub_26AEA4DB4(uint64_t a1)
{
  v18 = sub_26AEA515C(a1);
  v2 = sub_26AEA515C(*v1);
  v19 = v2 + v18;
  if (__OFADD__(v2, v18))
  {
    goto LABEL_31;
  }

  v14 = *v17;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v17 = v14;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0 || v19 > *(*v17 + 24) >> 1)
  {
    if (*(*v17 + 16) < v19)
    {
      v13 = v19;
    }

    else
    {
      v13 = *(*v17 + 16);
    }

    v12 = *v17;
    sub_26B078640();
    *v17 = sub_26AEA56B8(isUniquelyReferenced_nonNull_native, v13, 1, v12);
  }

  v4 = *(*v17 + 16);
  v10 = (*v17 + 32 + v4);
  v5 = *(*v17 + 24) >> 1;
  v11 = v5 - v4;
  if (__OFSUB__(v5, v4))
  {
    goto LABEL_32;
  }

  if (v11 < 0)
  {
LABEL_30:
    sub_26B07A690();
    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  if (!sub_26AEA5824(a1))
  {
LABEL_21:

    if (v18 <= 0)
    {
      goto LABEL_28;
    }

    sub_26B07A650();
    __break(1u);
    goto LABEL_30;
  }

  if (v11 < v18)
  {
    sub_26B07A650();
    __break(1u);
    goto LABEL_21;
  }

  sub_26AEA52B8((a1 + 32), v18, v10);
  sub_26B078640();

  swift_unknownObjectRelease();
  if (v18 <= 0)
  {
    goto LABEL_28;
  }

  v7 = *(*v17 + 16);
  v9 = v7 + v18;
  if (!__OFADD__(v7, v18))
  {
    *(*v17 + 16) = v9;
LABEL_28:
    sub_26AEA56AC();
    return;
  }

LABEL_33:
  __break(1u);
}

void *sub_26AEA5174(uint64_t a1, uint64_t a2)
{
  if (a2 < a1)
  {
    v7 = a1;
  }

  else
  {
    v7 = a2;
  }

  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DBCA8);
    v6 = swift_allocObject();

    if (_swift_stdlib_has_malloc_size())
    {
      v4 = _swift_stdlib_malloc_size(v6) - 32;
      v6[2] = a1;
      v6[3] = 2 * v4;
    }

    else
    {
      v6[2] = a1;
      v6[3] = 2 * v7;
    }

    return v6;
  }

  else
  {
    v3 = MEMORY[0x277D84F90];

    return v3;
  }
}

void *sub_26AEA52B8(char *a1, size_t a2, char *a3)
{
  if ((a2 & 0x8000000000000000) == 0)
  {
    if (a1 >= &a3[a2] || a3 >= &a1[a2])
    {
      return memcpy(a3, a1, a2);
    }

    sub_26B07A690();
    __break(1u);
  }

  result = sub_26B07A690();
  __break(1u);
  return result;
}

uint64_t sub_26AEA5408(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v11 = a1;
  if ((a3 & 0x1000000000000000) != 0 && (a2 & 0x800000000000000) == 0)
  {
    v10 = a1 >> 16;
    if ((a3 & 0x1000000000000000) != 0)
    {
      v9 = MEMORY[0x26D66D140](15, v10, a2, a3);
LABEL_11:
      if (v11 >> 14)
      {
        v7 = ((v9 >> 16) + (v11 >> 14)) << 16;
      }

      else
      {
        v7 = v9 & 0xFFFFFFFFFFFFFFFCLL | v11 & 3;
      }

      return v7 | 8;
    }

    if ((v10 & 0x8000000000000000) == 0)
    {
      v8 = (a3 & 0x2000000000000000) != 0 ? (a3 & 0xF00000000000000uLL) >> 56 : a2 & 0xFFFFFFFFFFFFLL;
      if (v8 >= v10)
      {
        v9 = (v10 << 16) | 4;
        goto LABEL_11;
      }
    }

    sub_26B07A650();
    __break(1u);
  }

  v5 = sub_26B079FA0();
  if (v11 >> 14)
  {
    v4 = ((v5 >> 16) + (v11 >> 14)) << 16;
  }

  else
  {
    v4 = v5 & 0xFFFFFFFFFFFFFFFCLL | v11 & 3;
  }

  return v4 | 4;
}

uint64_t sub_26AEA567C()
{
  v1 = MEMORY[0x277D84F90];

  return v1;
}

char *sub_26AEA56B8(char *result, uint64_t a2, char a3, uint64_t a4)
{
  v7 = result;
  v9 = *(a4 + 24) >> 1;
  if (a3)
  {
    if (v9 < a2)
    {
      if ((v9 * 2) >> 64 != (2 * v9) >> 63)
      {
        __break(1u);
        return result;
      }

      if (2 * v9 < a2)
      {
        v6 = a2;
      }

      else
      {
        v6 = 2 * v9;
      }
    }

    else
    {
      v6 = *(a4 + 24) >> 1;
    }
  }

  else
  {
    v6 = a2;
  }

  v4 = *(a4 + 16);
  v5 = sub_26AEA5174(v4, v6);
  if (v7)
  {
    sub_26AEA582C((a4 + 32), v4, v5 + 32);
    sub_26B078640();

    *(a4 + 16) = 0;
  }

  else
  {
    sub_26B078640();

    sub_26AEA52B8((a4 + 32), v4, v5 + 32);
    swift_unknownObjectRelease();
  }

  return v5;
}

char *sub_26AEA582C(char *result, size_t a2, char *a3)
{
  if ((a2 & 0x8000000000000000) != 0)
  {
    result = sub_26B07A690();
    __break(1u);
  }

  else if (a3 < result || a3 >= &result[a2] || a3 != result)
  {
    return memmove(a3, result, a2);
  }

  return result;
}

_BYTE **sub_26AEA5954(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

uint64_t __swift_destroy_boxed_opaque_existential_1(uint64_t a1)
{
  v2 = *(a1 + 24);
  if ((*(*(v2 - 8) + 80) & 0x20000) != 0)
  {
  }

  else
  {
    return (*(*(v2 - 8) + 8))(a1);
  }
}

uint64_t sub_26AEA5EB0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 24);
  *(a2 + 24) = v2;
  *(a2 + 32) = *(a1 + 32);
  (**(v2 - 8))(a2);
  return a2;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  v2 = *(*(a2 - 8) + 80);
  if ((v2 & 0x20000) != 0)
  {
    return (*result + ((v2 + 16) & ~v2));
  }

  return result;
}

uint64_t __swift_destroy_boxed_opaque_existential_0(uint64_t a1)
{
  v2 = *(a1 + 24);
  if ((*(*(v2 - 8) + 80) & 0x20000) != 0)
  {
  }

  else
  {
    return (*(*(v2 - 8) + 8))(a1);
  }
}

uint64_t sub_26AEA6474(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 24);
  *(a2 + 24) = v2;
  (**(v2 - 8))(a2);
  return a2;
}

uint64_t sub_26AEA6588()
{
  v3 = &unk_287B90D80;
  v4 = sub_26AEA65E8();
  v1 = sub_26B078370();
  __swift_destroy_boxed_opaque_existential_1(v2);
  return v1 & 1;
}

unint64_t sub_26AEA65E8()
{
  v2 = qword_2803DBCB0;
  if (!qword_2803DBCB0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DBCB0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_26AEA6718()
{
  v2 = qword_2803DBCB8;
  if (!qword_2803DBCB8)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DBCB8);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_26AEA682C(unsigned __int8 *a1, int a2)
{
  if (a2)
  {
    v6 = 1;
    if ((a2 + 1) >= 0x100)
    {
      if ((a2 + 1) >= 0x10000)
      {
        v2 = 4;
      }

      else
      {
        v2 = 2;
      }

      v6 = v2;
    }

    if (v6 == 1)
    {
      v5 = *a1;
    }

    else if (v6 == 2)
    {
      v5 = *a1;
    }

    else
    {
      v5 = *a1;
    }

    if (v5)
    {
      v4 = v5 - 1;
    }

    else
    {
      v4 = -1;
    }
  }

  else
  {
    v4 = -1;
  }

  return (v4 + 1);
}

_BYTE *sub_26AEA697C(_BYTE *result, int a2, int a3)
{
  v5 = 0;
  if (a3)
  {
    v4 = 1;
    if ((a3 + 1) >= 0x100)
    {
      if ((a3 + 1) >= 0x10000)
      {
        v3 = 4;
      }

      else
      {
        v3 = 2;
      }

      v4 = v3;
    }

    v5 = v4;
  }

  if (a2)
  {
    if (v5)
    {
      if (v5 == 1)
      {
        *result = a2;
      }

      else if (v5 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }
  }

  else if (v5)
  {
    if (v5 == 1)
    {
      *result = 0;
    }

    else if (v5 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  return result;
}

unint64_t sub_26AEA6B80()
{
  v2 = qword_2803DBCC0;
  if (!qword_2803DBCC0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DBCC0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_26AEA6CF4()
{
  v2 = qword_2803DBCC8;
  if (!qword_2803DBCC8)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DBCC8);
    return WitnessTable;
  }

  return v2;
}

uint64_t getEnumTagSinglePayload for DeepLinkError(unsigned __int8 *a1, int a2)
{
  if (a2)
  {
    v6 = 1;
    if ((a2 + 1) >= 0x100)
    {
      if ((a2 + 1) >= 0x10000)
      {
        v2 = 4;
      }

      else
      {
        v2 = 2;
      }

      v6 = v2;
    }

    if (v6 == 1)
    {
      v5 = *a1;
    }

    else if (v6 == 2)
    {
      v5 = *a1;
    }

    else
    {
      v5 = *a1;
    }

    if (v5)
    {
      v4 = v5 - 1;
    }

    else
    {
      v4 = -1;
    }
  }

  else
  {
    v4 = -1;
  }

  return (v4 + 1);
}

_BYTE *storeEnumTagSinglePayload for DeepLinkError(_BYTE *result, int a2, int a3)
{
  v5 = 0;
  if (a3)
  {
    v4 = 1;
    if ((a3 + 1) >= 0x100)
    {
      if ((a3 + 1) >= 0x10000)
      {
        v3 = 4;
      }

      else
      {
        v3 = 2;
      }

      v4 = v3;
    }

    v5 = v4;
  }

  if (a2)
  {
    if (v5)
    {
      if (v5 == 1)
      {
        *result = a2;
      }

      else if (v5 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }
  }

  else if (v5)
  {
    if (v5 == 1)
    {
      *result = 0;
    }

    else if (v5 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  return result;
}

Swift::Void __swiftcall UIWindow.motionEnded(_:with:)(UIEventSubtype _, UIEvent_optional with)
{
  v14 = 0;
  v16 = _;
  isa = with.value.super.isa;
  v13 = _;
  v12 = 1;
  v7 = type metadata accessor for EventSubtype();
  sub_26AEA72BC();
  if (sub_26B07A790())
  {
    v5 = [objc_opt_self() defaultCenter];
    v6 = *sub_26AEA733C();
    v2 = v6;
    v8 = 0;
    v9 = 0;
    v10 = 0;
    v11 = 0;
    v4 = 0;
    v3 = 0;
    [v5 postNotificationName:v6 object:?];
    swift_unknownObjectRelease();
  }
}

unint64_t sub_26AEA72BC()
{
  v2 = qword_2803DBCD0;
  if (!qword_2803DBCD0)
  {
    type metadata accessor for EventSubtype();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DBCD0);
    return WitnessTable;
  }

  return v2;
}

uint64_t *sub_26AEA733C()
{
  if (qword_2803DB360 != -1)
  {
    swift_once();
  }

  return &qword_2803E56E8;
}

void *__swift_project_boxed_opaque_existential_0(void *result, uint64_t a2)
{
  v2 = *(*(a2 - 8) + 80);
  if ((v2 & 0x20000) != 0)
  {
    return (*result + ((v2 + 16) & ~v2));
  }

  return result;
}

uint64_t sub_26AEA7408(uint64_t a1, uint64_t a2, UIEventSubtype a3, objc_class *a4)
{
  swift_getObjectType();
  MEMORY[0x277D82BE0](a4);
  MEMORY[0x277D82BE0](a1);
  v9.value.super.isa = a4;
  UIWindow.motionEnded(_:with:)(a3, v9);
  MEMORY[0x277D82BD8](a1);
  return MEMORY[0x277D82BD8](a4);
}

uint64_t sub_26AEA7490()
{
  sub_26B079D00();
  sub_26B078640();
  v1 = sub_26B079DF0();
  MEMORY[0x277D82BE0](v1);

  MEMORY[0x277D82BD8](v1);
  result = v1;
  qword_2803E56E8 = v1;
  return result;
}

uint64_t sub_26AEA7520()
{
  v0 = sub_26AEA733C();
  v2 = *v0;
  MEMORY[0x277D82BE0](*v0);
  return v2;
}

uint64_t sub_26AEA7594@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v30 = a4;
  v19 = a2;
  v20 = a3;
  v21 = sub_26AEA7A40;
  v38 = 0;
  v37 = 0;
  v35 = 0;
  v36 = 0;
  v16 = 0;
  v28 = sub_26B07A300();
  v25 = *(v28 - 8);
  v26 = v28 - 8;
  v11 = (*(v25 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v28);
  v27 = &v11 - v11;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DBCD8);
  v12 = (*(*(v22 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v22);
  v29 = &v11 - v12;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DBCE0);
  v13 = (*(*(v31 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v31);
  v33 = &v11 - v13;
  v14 = (v5 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](&v11 - v13);
  v34 = &v11 - v14;
  v38 = &v11 - v14;
  v37 = a1;
  v35 = v6;
  v36 = v7;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DBCE8);
  sub_26AEA7910();
  sub_26B0796C0();
  v18 = [objc_opt_self() defaultCenter];
  v17 = *sub_26AEA733C();
  MEMORY[0x277D82BE0](v17);
  sub_26B07A310();
  MEMORY[0x277D82BD8](v17);
  MEMORY[0x277D82BD8](v18);

  v8 = swift_allocObject();
  v9 = v20;
  v24 = v8;
  *(v8 + 16) = v19;
  *(v8 + 24) = v9;
  v23 = sub_26AEA7A4C();
  sub_26AEA7AF0();
  sub_26B079720();

  (*(v25 + 8))(v27, v28);
  sub_26AEA7B70(v29);
  v32 = sub_26AEA7C50();
  sub_26AE9463C(v33, v31, v34);
  sub_26AEA7CD8(v33);
  sub_26AEA7E30(v34, v33);
  sub_26AE94B4C(v33, v31, v30);
  sub_26AEA7CD8(v33);
  return sub_26AEA7CD8(v34);
}

unint64_t sub_26AEA7910()
{
  v2 = qword_2803DBCF0;
  if (!qword_2803DBCF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803DBCE8);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DBCF0);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_26AEA7998(uint64_t a1, void (*a2)(uint64_t))
{

  a2(v2);
}

unint64_t sub_26AEA7A4C()
{
  v2 = qword_2803DBCF8;
  if (!qword_2803DBCF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803DBCD8);
    sub_26AEA7910();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DBCF8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_26AEA7AF0()
{
  v2 = qword_2803DBD00;
  if (!qword_2803DBD00)
  {
    sub_26B07A300();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DBD00);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_26AEA7B70(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DBCE8);
  (*(*(v1 - 8) + 8))(a1);
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DBCD8) + 36);
  if (*(a1 + v4))
  {
  }

  if (*(a1 + v4 + 16))
  {
  }

  return a1;
}

unint64_t sub_26AEA7C50()
{
  v2 = qword_2803DBD08;
  if (!qword_2803DBD08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803DBCE0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DBD08);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_26AEA7CD8(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DBCE8);
  (*(*(v1 - 8) + 8))(a1);
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DBCD8) + 36);
  if (*(a1 + v6))
  {
  }

  if (*(a1 + v6 + 16))
  {
  }

  v4 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DBCE0) + 52);
  v2 = sub_26B07A300();
  (*(*(v2 - 8) + 8))(v4);

  return a1;
}

uint64_t sub_26AEA7E30(uint64_t a1, uint64_t a2)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DBCE8);
  (*(*(v2 - 8) + 16))(a2, a1);
  v21 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DBCD8) + 36);
  if (*(a1 + v21))
  {
    v17 = *(a1 + v21);
    v18 = *(a1 + v21 + 8);

    v3 = (a2 + v21);
    *v3 = v17;
    v3[1] = v18;
  }

  else
  {
    *(a2 + v21) = *(a1 + v21);
  }

  v15 = a2 + v21;
  v16 = a1 + v21;
  if (*(a1 + v21 + 16))
  {
    v13 = *(v16 + 16);
    v14 = *(a1 + v21 + 24);

    *(v15 + 16) = v13;
    *(a2 + v21 + 24) = v14;
  }

  else
  {
    *(v15 + 16) = *(v16 + 16);
  }

  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DBCE0);
  v8 = a2 + *(v9 + 52);
  v7 = a1 + *(v9 + 52);
  v4 = sub_26B07A300();
  (*(*(v4 - 8) + 16))(v8, v7);
  v11 = (a2 + *(v9 + 56));
  v5 = (a1 + *(v9 + 56));
  v10 = *v5;
  v12 = v5[1];

  result = a2;
  *v11 = v10;
  v11[1] = v12;
  return result;
}

void *View.onShake(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v12 = a3;
  v10 = a1;
  v11 = a2;
  v9 = v3;

  v8[0] = nullsub_15(a1, a2);
  v8[1] = v4;
  MEMORY[0x26D66C890]();
  result = v8;
  sub_26AEA8190();
  return result;
}

uint64_t sub_26AEA81BC(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 > 0x7FFFFFFF && *(a1 + 16))
    {
      v4 = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v3 = -1;
      if (*a1 < 0x100000000uLL)
      {
        v3 = *a1;
      }

      v4 = v3;
    }
  }

  else
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_26AEA8300(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFF)
  {
    *result = a2 + 0x80000000;
    if (a3 > 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 > 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = a2 - 1;
    }
  }

  return result;
}

uint64_t sub_26AEA84FC()
{
  sub_26B078BF0();
  sub_26AEA857C();
  return swift_getWitnessTable();
}

unint64_t sub_26AEA857C()
{
  v2 = qword_2803DBD10[0];
  if (!qword_2803DBD10[0])
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, qword_2803DBD10);
    return WitnessTable;
  }

  return v2;
}

BOOL sub_26AEA862C(char a1, char a2)
{
  if (a1)
  {
    if (a1 == 1)
    {
      v4 = 1;
    }

    else
    {
      v4 = 2;
    }
  }

  else
  {
    v4 = 0;
  }

  if (a2)
  {
    if (a2 == 1)
    {
      v3 = 1;
    }

    else
    {
      v3 = 2;
    }
  }

  else
  {
    v3 = 0;
  }

  return v4 == v3;
}

uint64_t sub_26AEA87D0()
{
  type metadata accessor for AdaptiveContainerBase.ContainerType();
  swift_getWitnessTable();
  return sub_26B07A550();
}

uint64_t sub_26AEA894C(unsigned int a1)
{

  sub_26AEA8A14();
  return a1;
}

uint64_t sub_26AEA8A40@<X0>(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v73 = a7;
  v49 = a1;
  v50 = a2;
  v51 = a3;
  v52 = a4;
  v47 = a5;
  v48 = a6;
  v24 = MEMORY[0x277CDD6E0];
  v35 = MEMORY[0x277D4D750];
  v25 = MEMORY[0x277CDE5A0];
  v26 = MEMORY[0x277CDE580];
  v37 = MEMORY[0x277CE0340];
  v39 = MEMORY[0x277CDF7D8];
  v65 = MEMORY[0x277CDEB58];
  v56 = sub_26AEAA4A4;
  v72 = MEMORY[0x277CDFAD8];
  v88 = 0;
  v84 = 0;
  v85 = 0;
  v86 = 0;
  v87 = 0;
  v111 = a5;
  v67 = 0;
  v61 = sub_26B078F70();
  v58 = *(v61 - 8);
  v59 = v61 - 8;
  v23 = (*(v58 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v61);
  v60 = &v22 - v23;
  v38 = 255;
  v27 = sub_26B0789A0();
  WitnessTable = swift_getWitnessTable();
  v109 = v27;
  v110 = WitnessTable;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v105 = MEMORY[0x277D84A98];
  v106 = v47;
  v107 = MEMORY[0x277D84AA8];
  v108 = v48;
  v29 = sub_26B079270();
  v30 = swift_getWitnessTable();
  v103 = v29;
  v104 = v30;
  v43 = swift_getOpaqueTypeMetadata2();
  v32 = sub_26B078F50();
  v33 = sub_26B079250();
  v34 = swift_getWitnessTable();
  v101 = v33;
  v102 = v34;
  v44 = swift_getOpaqueTypeMetadata2();
  v53 = sub_26B078F50();
  v99 = v27;
  v100 = WitnessTable;
  v66 = 1;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v97 = v29;
  v98 = v30;
  v7 = swift_getOpaqueTypeConformance2();
  v95 = OpaqueTypeConformance2;
  v96 = v7;
  v36 = swift_getWitnessTable();
  v93 = v33;
  v94 = v34;
  v8 = swift_getOpaqueTypeConformance2();
  v91 = v36;
  v92 = v8;
  v54 = swift_getWitnessTable();
  v57 = sub_26B078B60();
  v64 = swift_getWitnessTable();
  v89 = v57;
  v90 = v64;
  v76 = swift_getOpaqueTypeMetadata2();
  v68 = *(v76 - 8);
  v69 = v76 - 8;
  v40 = (*(v68 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v67);
  v70 = &v22 - v40;
  v77 = sub_26B078BF0();
  v45 = *(*(v77 - 8) + 64);
  v42 = (v45 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v67);
  v75 = &v22 - v42;
  swift_checkMetadataState();
  swift_checkMetadataState();
  swift_checkMetadataState();
  v46 = (v45 + 15) & 0xFFFFFFFFFFFFFFF0;
  v9 = MEMORY[0x28223BE20](v51);
  v78 = &v22 - v46;
  v88 = &v22 - v46;
  LOBYTE(v84) = v10;
  v85 = v11;
  v86 = v9;
  v87 = v12;

  v13 = swift_allocObject();
  v14 = v48;
  v15 = v49;
  v16 = v50;
  v17 = v51;
  v18 = v52;
  v55 = v13;
  *(v13 + 16) = v47;
  *(v13 + 24) = v14;
  *(v13 + 32) = v15;
  *(v13 + 40) = v16;
  *(v13 + 48) = v17;
  *(v13 + 56) = v18;
  swift_checkMetadataState();
  v19 = sub_26B078B50();
  v62 = v83;
  v83[0] = v19;
  v83[1] = v20;
  sub_26B078F60();
  v63 = swift_checkMetadataState();
  sub_26AEAAAAC();
  sub_26B079560();
  (*(v58 + 8))(v60, v61);
  sub_26AEAABA8();
  v81 = v63;
  v82 = v64;
  v71 = swift_getOpaqueTypeConformance2();
  sub_26AEAABD4();
  sub_26B079600();
  (*(v68 + 8))(v70, v76);
  v79 = v71;
  v80 = MEMORY[0x277CDFC60];
  v74 = swift_getWitnessTable();
  sub_26AE9463C(v75, v77, v78);
  sub_26AEAABF8(v75, v76);
  sub_26AEAAC44(v78, v75, v76, v77);
  sub_26AE94B4C(v75, v77, v73);
  sub_26AEAABF8(v75, v76);
  result = v78;
  sub_26AEAABF8(v78, v76);
  return result;
}

uint64_t sub_26AEA91A8@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, int a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v125 = a7;
  v126 = a6;
  v162 = a5;
  v161 = a4;
  v160 = a3;
  v165 = a2;
  v164 = a1;
  v100 = a8;
  v163 = a2;
  v101 = a5;
  v102 = a2;
  v146 = 0;
  v224 = 0;
  v217 = 0;
  v214 = 0;
  v213 = 0;
  v212 = 0;
  v211 = 0;
  v210 = 0;
  v209 = 0;
  v208 = 0;
  v205 = 0;
  v186 = 0;
  v177 = 0;
  v227 = a6;
  v108 = sub_26B079250();
  v103 = v108;
  v104 = *(v108 - 8);
  v105 = v104;
  v106 = (*(v104 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v108 - 8);
  v107 = v53 - v106;
  WitnessTable = swift_getWitnessTable();
  v225 = v108;
  v226 = WitnessTable;
  v135 = MEMORY[0x277D4D750];
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v110 = OpaqueTypeMetadata2;
  v111 = *(OpaqueTypeMetadata2 - 8);
  v112 = v111;
  v114 = *(v111 + 64);
  v8 = MEMORY[0x28223BE20](v146);
  v116 = (v114 + 15) & 0xFFFFFFFFFFFFFFF0;
  v113 = v53 - v116;
  v9 = MEMORY[0x28223BE20](v8);
  v115 = v53 - v116;
  MEMORY[0x28223BE20](v9);
  v117 = v53 - v116;
  v224 = v53 - v116;
  v220 = MEMORY[0x277D84A98];
  v221 = v10;
  v222 = MEMORY[0x277D84AA8];
  v223 = v11;
  v123 = sub_26B079270();
  v118 = v123;
  v119 = *(v123 - 8);
  v120 = v119;
  v121 = (*(v119 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v123 - 8);
  v122 = v53 - v121;
  v124 = swift_getWitnessTable();
  v218 = v123;
  v219 = v124;
  v138 = swift_getOpaqueTypeMetadata2();
  v127 = v138;
  v128 = *(v138 - 8);
  v129 = v128;
  v131 = *(v128 + 64);
  MEMORY[0x28223BE20](v138 - 8);
  v133 = (v131 + 15) & 0xFFFFFFFFFFFFFFF0;
  v130 = v53 - v133;
  v12 = MEMORY[0x28223BE20](v53 - v133);
  v132 = v53 - v133;
  MEMORY[0x28223BE20](v12);
  v134 = v53 - v133;
  v217 = v53 - v133;
  v136 = 255;
  v140 = sub_26B0789A0();
  v137 = swift_getWitnessTable();
  v215 = v140;
  v216 = v137;
  v144 = swift_getOpaqueTypeMetadata2();
  v139 = v144;
  v147 = sub_26B078F50();
  v141 = v147;
  v142 = (*(*(v147 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v146);
  v143 = v53 - v142;
  v148 = swift_checkMetadataState();
  v149 = *(v148 - 8);
  v150 = v149;
  v151 = (*(v149 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v13 = MEMORY[0x28223BE20](v146);
  v152 = v53 - v151;
  v153 = *(v14 - 8);
  v154 = v153;
  v156 = *(v153 + 64);
  v15 = MEMORY[0x28223BE20](v13);
  v158 = (v156 + 15) & 0xFFFFFFFFFFFFFFF0;
  v155 = v53 - v158;
  v16 = MEMORY[0x28223BE20](v15);
  v157 = v53 - v158;
  MEMORY[0x28223BE20](v16);
  v159 = v53 - v158;
  v214 = v53 - v158;
  v166 = sub_26B078F50();
  v167 = *(*(v166 - 8) + 64);
  v17 = MEMORY[0x28223BE20](v164);
  v169 = (v167 + 15) & 0xFFFFFFFFFFFFFFF0;
  v168 = v53 - v169;
  v18 = MEMORY[0x28223BE20](v17);
  v170 = v53 - v169;
  v213 = v53 - v169;
  v212 = v18;
  LOBYTE(v208) = v19;
  v209 = v20;
  v210 = v21;
  v211 = v22;
  if (v23)
  {
    if (v102 == 1)
    {

      v82 = v53;
      MEMORY[0x28223BE20](v53);
      v32 = v101;
      v33 = v161;
      v81 = v53;
      v53[-8] = v34;
      v53[-7] = v35;
      LOBYTE(v53[-6]) = v36;
      v53[-5] = v37;
      v53[-4] = v33;
      LOBYTE(v53[-3]) = v32 & 1;
      v52 = v38;
      sub_26B079260();

      sub_26B079370();
      (*(v120 + 8))(v122, v118);
      v187 = v118;
      v188 = v124;
      OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
      sub_26AE9463C(v132, v127, v134);
      v84 = *(v129 + 8);
      v85 = (v129 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v84(v132, v127);
      v186 = v132;
      v74 = *(v129 + 16);
      v73 = v129 + 16;
      v74(v130, v134, v127);
      sub_26AE94B4C(v130, v127, v132);
      v84(v130, v127);
      v74(v130, v132, v127);
      v184 = v148;
      v185 = v137;
      v76 = MEMORY[0x277D4D750];
      v77 = 1;
      v75 = swift_getOpaqueTypeConformance2();
      sub_26AE94CA8(v130, v139, v127, v75, OpaqueTypeConformance2, v143);
      v84(v130, v127);
      v182 = v75;
      v183 = OpaqueTypeConformance2;
      v78 = swift_getWitnessTable();
      v180 = v103;
      v181 = WitnessTable;
      v39 = swift_getOpaqueTypeConformance2();
      sub_26AE94BB0(v143, v141, v110, v78, v39, v168);
      v79 = 0;
      v80 = sub_26B078F30();
      sub_26AEAD578(v143, v139, v127);
      sub_26B078F30();
      v52 = v166;
      sub_26AEAD1A0(v168, v170, v139, v127, v80, v141, v110);
      v84(v132, v127);
      v84(v134, v127);
    }

    else
    {

      v69 = v53;
      MEMORY[0x28223BE20](v53);
      v40 = v101;
      v41 = v161;
      v68 = v53;
      v53[-8] = v42;
      v53[-7] = v43;
      LOBYTE(v53[-6]) = v44;
      v53[-5] = v45;
      v53[-4] = v41;
      LOBYTE(v53[-3]) = v40 & 1;
      v52 = v46;
      sub_26B079240();

      sub_26B079370();
      (*(v105 + 8))(v107, v103);
      v206 = v103;
      v207 = WitnessTable;
      v70 = swift_getOpaqueTypeConformance2();
      sub_26AE9463C(v115, v110, v117);
      v71 = *(v112 + 8);
      v72 = (v112 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v71(v115, v110);
      v205 = v115;
      v62 = *(v112 + 16);
      v61 = v112 + 16;
      v62(v113, v117, v110);
      sub_26AE94B4C(v113, v110, v115);
      v71(v113, v110);
      v62(v113, v115, v110);
      v203 = v148;
      v204 = v137;
      v63 = MEMORY[0x277D4D750];
      v64 = 1;
      v65 = swift_getOpaqueTypeConformance2();
      v201 = v118;
      v202 = v124;
      v47 = swift_getOpaqueTypeConformance2();
      v199 = v65;
      v200 = v47;
      v48 = swift_getWitnessTable();
      sub_26AE94CA8(v113, v141, v110, v48, v70, v168);
      v71(v113, v110);
      v66 = 0;
      v67 = sub_26B078F30();
      sub_26B078F30();
      v52 = v166;
      sub_26AEAD1A0(v168, v170, v139, v127, v67, v141, v110);
      v71(v115, v110);
      v71(v117, v110);
    }
  }

  else
  {

    v96 = v53;
    v24 = MEMORY[0x28223BE20](v126);
    v25 = v101;
    v26 = v161;
    v94 = v53;
    v95 = &v53[-10];
    v53[-8] = v24;
    v53[-7] = v27;
    LOBYTE(v53[-6]) = v28;
    v53[-5] = v29;
    v53[-4] = v26;
    LOBYTE(v53[-3]) = v25 & 1;
    v52 = v30;
    sub_26AEBC690();
    sub_26AEBC6B4();

    sub_26B079370();
    (*(v150 + 8))(v152, v148);
    v178 = v148;
    v179 = v137;
    v97 = swift_getOpaqueTypeConformance2();
    sub_26AE9463C(v157, v139, v159);
    v98 = *(v154 + 8);
    v99 = (v154 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v98(v157, v139);
    v177 = v157;
    v87 = *(v154 + 16);
    v86 = v154 + 16;
    v87(v155, v159, v139);
    sub_26AE94B4C(v155, v139, v157);
    v98(v155, v139);
    v87(v155, v157, v139);
    v175 = v118;
    v176 = v124;
    v89 = MEMORY[0x277D4D750];
    v90 = 1;
    v88 = swift_getOpaqueTypeConformance2();
    sub_26AE94BB0(v155, v139, v127, v97, v88, v143);
    v98(v155, v139);
    v173 = v97;
    v174 = v88;
    v91 = swift_getWitnessTable();
    v171 = v103;
    v172 = WitnessTable;
    v31 = swift_getOpaqueTypeConformance2();
    sub_26AE94BB0(v143, v141, v110, v91, v31, v168);
    v92 = 0;
    v93 = sub_26B078F30();
    sub_26AEAD578(v143, v139, v127);
    sub_26B078F30();
    v52 = v166;
    sub_26AEAD1A0(v168, v170, v139, v127, v93, v141, v110);
    v98(v157, v139);
    v98(v159, v139);
  }

  v53[1] = 0;
  v59 = sub_26B078F30();
  v60 = sub_26B078F30();
  v52 = v166;
  sub_26AEAD2F4(v170, v168, v139, v127, v59, v141, v110);
  v197 = v148;
  v198 = v137;
  v55 = MEMORY[0x277D4D750];
  v56 = 1;
  v54 = swift_getOpaqueTypeConformance2();
  v195 = v118;
  v196 = v124;
  v49 = swift_getOpaqueTypeConformance2();
  v193 = v54;
  v194 = v49;
  v58 = MEMORY[0x277CE0340];
  v57 = swift_getWitnessTable();
  v191 = v103;
  v192 = WitnessTable;
  v50 = swift_getOpaqueTypeConformance2();
  v189 = v57;
  v190 = v50;
  swift_getWitnessTable();
  sub_26AE94B4C(v168, v166, v100);
  sub_26AEAD448(v168, v139, v127, v59, v141, v110);
  return sub_26AEAD448(v170, v139, v127, v59, v141, v110);
}

uint64_t sub_26AEAA4D0@<X0>(uint64_t a1@<X0>, void (*a2)(uint64_t)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X8>)
{
  v23 = a7;
  v19 = a2;
  v20 = a3;
  v18 = a4;
  v27 = a5;
  v24 = a6;
  v35 = 0;
  v31 = 0;
  v32 = 0;
  v33 = 0;
  v34 = 0;
  v30 = 0;
  v36 = a5;
  v21 = *(a5 - 8);
  v22 = a5 - 8;
  v16 = (*(v21 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v8 = MEMORY[0x28223BE20](a1);
  v25 = &v15 - v16;
  v17 = (v9 + 15) & 0xFFFFFFFFFFFFFFF0;
  v10 = MEMORY[0x28223BE20](v8);
  v26 = &v15 - v17;
  v35 = &v15 - v17;
  LOBYTE(v31) = v10;
  v32 = v11;
  v33 = a3;
  v34 = v12;
  v30 = v13;

  v19(v18);
  sub_26AE9463C(v25, v27, v26);
  v29 = *(v21 + 8);
  v28 = v21 + 8;
  v29(v25, v27);

  (*(v21 + 16))(v25, v26, v27);
  sub_26AE94B4C(v25, v27, v23);
  v29(v25, v27);
  return (v29)(v26, v27);
}

uint64_t sub_26AEAA6C4@<X0>(uint64_t a1@<X0>, void (*a2)(uint64_t)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X8>)
{
  v23 = a7;
  v19 = a2;
  v20 = a3;
  v18 = a4;
  v27 = a5;
  v24 = a6;
  v35 = 0;
  v31 = 0;
  v32 = 0;
  v33 = 0;
  v34 = 0;
  v30 = 0;
  v36 = a5;
  v21 = *(a5 - 8);
  v22 = a5 - 8;
  v16 = (*(v21 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v8 = MEMORY[0x28223BE20](a1);
  v25 = &v15 - v16;
  v17 = (v9 + 15) & 0xFFFFFFFFFFFFFFF0;
  v10 = MEMORY[0x28223BE20](v8);
  v26 = &v15 - v17;
  v35 = &v15 - v17;
  LOBYTE(v31) = v10;
  v32 = v11;
  v33 = a3;
  v34 = v12;
  v30 = v13;

  v19(v18);
  sub_26AE9463C(v25, v27, v26);
  v29 = *(v21 + 8);
  v28 = v21 + 8;
  v29(v25, v27);

  (*(v21 + 16))(v25, v26, v27);
  sub_26AE94B4C(v25, v27, v23);
  v29(v25, v27);
  return (v29)(v26, v27);
}

uint64_t sub_26AEAA8B8@<X0>(uint64_t a1@<X0>, void (*a2)(uint64_t)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X8>)
{
  v23 = a7;
  v19 = a2;
  v20 = a3;
  v18 = a4;
  v27 = a5;
  v24 = a6;
  v35 = 0;
  v31 = 0;
  v32 = 0;
  v33 = 0;
  v34 = 0;
  v30 = 0;
  v36 = a5;
  v21 = *(a5 - 8);
  v22 = a5 - 8;
  v16 = (*(v21 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v8 = MEMORY[0x28223BE20](a1);
  v25 = &v15 - v16;
  v17 = (v9 + 15) & 0xFFFFFFFFFFFFFFF0;
  v10 = MEMORY[0x28223BE20](v8);
  v26 = &v15 - v17;
  v35 = &v15 - v17;
  LOBYTE(v31) = v10;
  v32 = v11;
  v33 = a3;
  v34 = v12;
  v30 = v13;

  v19(v18);
  sub_26AE9463C(v25, v27, v26);
  v29 = *(v21 + 8);
  v28 = v21 + 8;
  v29(v25, v27);

  (*(v21 + 16))(v25, v26, v27);
  sub_26AE94B4C(v25, v27, v23);
  v29(v25, v27);
  return (v29)(v26, v27);
}

uint64_t sub_26AEAAAAC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DBF98);
  inited = swift_initStackObject();
  v5 = sub_26AEACE6C(inited, 1);
  *v1 = sub_26B079150();
  sub_26AEACEB8();
  v6 = sub_26B079140();
  v2 = sub_26AEACEEC();
  v7 = sub_26AEACEF8(0, v2 & 1, v5);

  sub_26B079140();
  if (sub_26B079140() == v7)
  {
    return v6;
  }

  else
  {
    return sub_26B079140();
  }
}

uint64_t sub_26AEAAC44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  (*(*(a3 - 8) + 16))();
  memcpy((a2 + *(a4 + 36)), (a1 + *(a4 + 36)), 0x70uLL);
  return a2;
}

uint64_t sub_26AEAAD4C()
{
  v2 = *v0;

  return v2;
}

uint64_t *AdaptiveScrollView.init(enabledWhen:content:)@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = 0;
  v11 = 0;
  v12 = 0;
  v13 = a4;

  v10 = a2;
  v11 = a3;
  v12 = a1;
  sub_26AEAAE64(&v10, a5);

  result = &v10;
  sub_26AEAAEBC();
  return result;
}

uint64_t sub_26AEAAE64(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v5 = a1[1];

  result = a2;
  *a2 = v4;
  *(a2 + 8) = v5;
  *(a2 + 16) = *(a1 + 16);
  return result;
}

uint64_t *AdaptiveScrollView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v25 = 0;
  v20 = 0;
  v21 = 0;
  v22 = 0;
  v23 = 0;
  v24 = *(a1 + 16);

  v16[0] = sub_26AEA894C(0);
  v17 = v2;
  v18 = v3;
  v19 = v4 & 1;
  v11 = type metadata accessor for AdaptiveContainerBase();
  swift_getWitnessTable();
  sub_26AE9463C(v16, v11, &v20);
  sub_26AEA8A14();
  v6 = v20;
  v7 = v21;
  v8 = v22;
  v9 = v23;

  v12[0] = v6;
  v13 = v7;
  v14 = v8;
  v15 = v9;
  sub_26AE94B4C(v12, v11, a2);
  sub_26AEA8A14();
  result = &v20;
  sub_26AEA8A14();
  return result;
}

uint64_t sub_26AEAB10C()
{
  v2 = *v0;

  return v2;
}

uint64_t *AdaptiveList.init(enabledWhen:content:)@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = 0;
  v11 = 0;
  v12 = 0;
  v13 = a4;

  v10 = a2;
  v11 = a3;
  v12 = a1;
  sub_26AEAB224(&v10, a5);

  result = &v10;
  sub_26AEAB27C();
  return result;
}

uint64_t sub_26AEAB224(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v5 = a1[1];

  result = a2;
  *a2 = v4;
  *(a2 + 8) = v5;
  *(a2 + 16) = *(a1 + 16);
  return result;
}

uint64_t *AdaptiveList.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v25 = 0;
  v20 = 0;
  v21 = 0;
  v22 = 0;
  v23 = 0;
  v24 = *(a1 + 16);

  v16[0] = sub_26AEA894C(1u);
  v17 = v2;
  v18 = v3;
  v19 = v4 & 1;
  v11 = type metadata accessor for AdaptiveContainerBase();
  swift_getWitnessTable();
  sub_26AE9463C(v16, v11, &v20);
  sub_26AEA8A14();
  v6 = v20;
  v7 = v21;
  v8 = v22;
  v9 = v23;

  v12[0] = v6;
  v13 = v7;
  v14 = v8;
  v15 = v9;
  sub_26AE94B4C(v12, v11, a2);
  sub_26AEA8A14();
  result = &v20;
  sub_26AEA8A14();
  return result;
}

uint64_t sub_26AEAB49C()
{
  v2 = *v0;

  return v2;
}

uint64_t *AdaptiveForm.init(enabledWhen:content:)@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = 0;
  v11 = 0;
  v12 = 0;
  v13 = a4;

  v10 = a2;
  v11 = a3;
  v12 = a1;
  sub_26AEAB5B4(&v10, a5);

  result = &v10;
  sub_26AEAB60C();
  return result;
}

uint64_t sub_26AEAB5B4(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v5 = a1[1];

  result = a2;
  *a2 = v4;
  *(a2 + 8) = v5;
  *(a2 + 16) = *(a1 + 16);
  return result;
}

uint64_t *AdaptiveForm.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v25 = 0;
  v20 = 0;
  v21 = 0;
  v22 = 0;
  v23 = 0;
  v24 = *(a1 + 16);

  v16[0] = sub_26AEA894C(2u);
  v17 = v2;
  v18 = v3;
  v19 = v4 & 1;
  v11 = type metadata accessor for AdaptiveContainerBase();
  swift_getWitnessTable();
  sub_26AE9463C(v16, v11, &v20);
  sub_26AEA8A14();
  v6 = v20;
  v7 = v21;
  v8 = v22;
  v9 = v23;

  v12[0] = v6;
  v13 = v7;
  v14 = v8;
  v15 = v9;
  sub_26AE94B4C(v12, v11, a2);
  sub_26AEA8A14();
  result = &v20;
  sub_26AEA8A14();
  return result;
}

uint64_t sub_26AEAB938()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 __swift_memcpy25_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 9);
  *(a1 + 9) = result;
  return result;
}

uint64_t sub_26AEAB9A0(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 25))
    {
      v4 = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v3 = -1;
      if (!HIDWORD(*(a1 + 8)))
      {
        v3 = *(a1 + 8);
      }

      v4 = v3;
    }
  }

  else
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_26AEABAB8(uint64_t result, int a2, int a3)
{
  v3 = (result + 25);
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 8) = 0;
    *result = a2 + 0x80000000;
    if (a3 < 0)
    {
      *v3 = 1;
    }
  }

  else
  {
    if (a3 < 0)
    {
      *v3 = 0;
    }

    if (a2)
    {
      *(result + 8) = (a2 - 1);
    }
  }

  return result;
}

uint64_t sub_26AEABCAC(unsigned __int8 *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 <= 0xFD)
    {
      goto LABEL_15;
    }

    v7 = ((a2 + 2) >> 8) + 1;
    v8 = 1;
    if (v7 >= 0x100)
    {
      if (v7 >= 0x10000)
      {
        v2 = 4;
      }

      else
      {
        v2 = 2;
      }

      v8 = v2;
    }

    if (v8 == 1)
    {
      v6 = a1[1];
    }

    else
    {
      v6 = v8 == 2 ? *(a1 + 1) : *(a1 + 1);
    }

    if (v6)
    {
      v5 = (*a1 | ((v6 - 1) << 8)) + 253;
    }

    else
    {
LABEL_15:
      v3 = *a1 - 3;
      if (v3 < 0)
      {
        v3 = -1;
      }

      v5 = v3;
    }
  }

  else
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *sub_26AEABE14(_BYTE *result, unsigned int a2, unsigned int a3)
{
  v7 = 0;
  if (a3 > 0xFD)
  {
    v5 = ((a3 + 2) >> 8) + 1;
    v6 = 1;
    if (v5 >= 0x100)
    {
      if (v5 >= 0x10000)
      {
        v3 = 4;
      }

      else
      {
        v3 = 2;
      }

      v6 = v3;
    }

    v7 = v6;
  }

  if (a2 > 0xFD)
  {
    v4 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    if (v7)
    {
      if (v7 == 1)
      {
        result[1] = v4;
      }

      else if (v7 == 2)
      {
        *(result + 1) = v4;
      }

      else
      {
        *(result + 1) = v4;
      }
    }
  }

  else
  {
    if (v7)
    {
      if (v7 == 1)
      {
        result[1] = 0;
      }

      else if (v7 == 2)
      {
        *(result + 1) = 0;
      }

      else
      {
        *(result + 1) = 0;
      }
    }

    if (a2)
    {
      *result = a2 + 2;
    }
  }

  return result;
}

uint64_t sub_26AEAC024()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  return result;
}

uint64_t sub_26AEAC08C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 17))
    {
      v4 = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v3 = -1;
      if (!HIDWORD(*a1))
      {
        v3 = *a1;
      }

      v4 = v3;
    }
  }

  else
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_26AEAC1A4(uint64_t result, int a2, int a3)
{
  v3 = (result + 17);
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *result = a2 + 0x80000000;
    *(result + 16) = 0;
    if (a3 < 0)
    {
      *v3 = 1;
    }
  }

  else
  {
    if (a3 < 0)
    {
      *v3 = 0;
    }

    if (a2)
    {
      *result = (a2 - 1);
    }
  }

  return result;
}

uint64_t sub_26AEAC384()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_26AEAC3D8(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 17))
    {
      v4 = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v3 = -1;
      if (!HIDWORD(*a1))
      {
        v3 = *a1;
      }

      v4 = v3;
    }
  }

  else
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_26AEAC4F0(uint64_t result, int a2, int a3)
{
  v3 = (result + 17);
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *result = a2 + 0x80000000;
    *(result + 16) = 0;
    if (a3 < 0)
    {
      *v3 = 1;
    }
  }

  else
  {
    if (a3 < 0)
    {
      *v3 = 0;
    }

    if (a2)
    {
      *result = (a2 - 1);
    }
  }

  return result;
}

uint64_t sub_26AEAC6D0()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_26AEAC724(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 17))
    {
      v4 = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v3 = -1;
      if (!HIDWORD(*a1))
      {
        v3 = *a1;
      }

      v4 = v3;
    }
  }

  else
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_26AEAC83C(uint64_t result, int a2, int a3)
{
  v3 = (result + 17);
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *result = a2 + 0x80000000;
    *(result + 16) = 0;
    if (a3 < 0)
    {
      *v3 = 1;
    }
  }

  else
  {
    if (a3 < 0)
    {
      *v3 = 0;
    }

    if (a2)
    {
      *result = (a2 - 1);
    }
  }

  return result;
}

uint64_t sub_26AEACA1C()
{
  sub_26B0789A0();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  sub_26B079270();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  sub_26B078F50();
  sub_26B079250();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  sub_26B078F50();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  sub_26B078B60();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  sub_26B078BF0();
  swift_getOpaqueTypeConformance2();
  return swift_getWitnessTable();
}

uint64_t sub_26AEACE6C(uint64_t a1, uint64_t a2)
{

  *(a1 + 16) = a2;
  *(a1 + 24) = 2 * a2;

  return a1;
}

uint64_t sub_26AEACEF8(uint64_t a1, char a2, uint64_t a3)
{
  if (a2)
  {
    return *(a3 + 32 + a1);
  }

  result = sub_26AEACF94(a1, a3);
  __break(1u);
  return result;
}

uint64_t sub_26AEACF94(uint64_t result, uint64_t a2)
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (result >= *(a2 + 16))
  {
LABEL_7:
    __break(1u);
    return result;
  }

  v6 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x20 + 8 * result);
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  if ((swift_dynamicCast() & 1) == 0)
  {
    sub_26AED2444(82);
    v2 = sub_26B079D00();
    MEMORY[0x26D66D100](v2);

    v3 = sub_26B079D00();
    MEMORY[0x26D66D100](v3);

    v4 = sub_26B079D00();
    MEMORY[0x26D66D100](v4);

    swift_getObjectType();
    v5 = sub_26B07AA00();
    MEMORY[0x26D66D100](v5);

    sub_26B078640();
    sub_26B079EB0();
    sub_26B07A670();
    __break(1u);
  }

  return v6;
}

uint64_t sub_26AEAD1A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(*(a7 - 8) + 32))(a2, a1);
    swift_storeEnumTagMultiPayload();
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      (*(*(a4 - 8) + 32))(a2, a1);
    }

    else
    {
      (*(*(a3 - 8) + 32))(a2, a1);
    }

    swift_storeEnumTagMultiPayload();
    swift_storeEnumTagMultiPayload();
  }

  return a2;
}

uint64_t sub_26AEAD2F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(*(a7 - 8) + 16))(a2, a1);
    swift_storeEnumTagMultiPayload();
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      (*(*(a4 - 8) + 16))(a2, a1);
    }

    else
    {
      (*(*(a3 - 8) + 16))(a2, a1);
    }

    swift_storeEnumTagMultiPayload();
    swift_storeEnumTagMultiPayload();
  }

  return a2;
}

uint64_t sub_26AEAD448(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(*(a6 - 8) + 8))(a1);
  }

  else if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(*(a3 - 8) + 8))(a1);
  }

  else
  {
    (*(*(a2 - 8) + 8))(a1);
  }

  return a1;
}

uint64_t sub_26AEAD578(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(*(a3 - 8) + 8))(a1);
  }

  else
  {
    (*(*(a2 - 8) + 8))(a1);
  }

  return a1;
}

BOOL static UpdateAction.== infix(_:_:)(_BYTE *a1, _BYTE *a2)
{
  v5 = *a1;
  v6 = *a2;
  if (*a1)
  {
    switch(v5)
    {
      case 1:
        v4 = 1;
        break;
      case 2:
        v4 = 2;
        break;
      case 3:
        v4 = 3;
        break;
      case 4:
        v4 = 4;
        break;
      default:
        v4 = 5;
        break;
    }
  }

  else
  {
    v4 = 0;
  }

  if (*a2)
  {
    switch(v6)
    {
      case 1:
        v3 = 1;
        break;
      case 2:
        v3 = 2;
        break;
      case 3:
        v3 = 3;
        break;
      case 4:
        v3 = 4;
        break;
      default:
        v3 = 5;
        break;
    }
  }

  else
  {
    v3 = 0;
  }

  return v4 == v3;
}

unint64_t sub_26AEAD98C()
{
  v2 = qword_2803DBFA0;
  if (!qword_2803DBFA0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DBFA0);
    return WitnessTable;
  }

  return v2;
}

uint64_t UpdateActionResult.success.getter()
{
  v8 = *v0;
  v9 = *(v0 + 8);
  if (*(v0 + 8))
  {
    switch(v9)
    {
      case 1:
        MEMORY[0x277D82BE0](v8);
        MEMORY[0x277D82BE0](v8);
        v5 = [v8 isSuccess];
        MEMORY[0x277D82BD8](v8);
        MEMORY[0x277D82BD8](v8);
        v7 = v5;
        break;
      case 2:
        MEMORY[0x277D82BE0](v8);
        MEMORY[0x277D82BE0](v8);
        v4 = [v8 isSuccess];
        MEMORY[0x277D82BD8](v8);
        MEMORY[0x277D82BD8](v8);
        v7 = v4;
        break;
      case 3:
        MEMORY[0x277D82BE0](v8);
        MEMORY[0x277D82BE0](v8);
        v3 = [v8 isSuccess];
        MEMORY[0x277D82BD8](v8);
        MEMORY[0x277D82BD8](v8);
        v7 = v3;
        break;
      case 4:
        MEMORY[0x277D82BE0](v8);
        MEMORY[0x277D82BE0](v8);
        v2 = [v8 isSuccess];
        MEMORY[0x277D82BD8](v8);
        MEMORY[0x277D82BD8](v8);
        v7 = v2;
        break;
      default:
        v7 = 0;
        break;
    }
  }

  else
  {
    MEMORY[0x277D82BE0](v8);
    MEMORY[0x277D82BE0](v8);
    v6 = [v8 isSuccess];
    MEMORY[0x277D82BD8](v8);
    MEMORY[0x277D82BD8](v8);
    v7 = v6;
  }

  return v7 & 1;
}

uint64_t ReactiveUIManager.initiateUpdateAction(_:for:delegate:)(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  *(v5 + 72) = v4;
  *(v5 + 64) = a4;
  *(v5 + 56) = a3;
  *(v5 + 48) = a1;
  *(v5 + 16) = v5;
  *(v5 + 184) = 0;
  *(v5 + 24) = 0;
  *(v5 + 32) = 0;
  *(v5 + 40) = 0;
  v6 = sub_26B078580();
  *(v5 + 80) = v6;
  *(v5 + 88) = *(v6 - 8);
  *(v5 + 96) = swift_task_alloc();
  v7 = *a2;
  *(v5 + 185) = *a2;
  *(v5 + 184) = v7;
  *(v5 + 24) = a3;
  *(v5 + 32) = a4;
  *(v5 + 40) = v4;

  return MEMORY[0x2822009F8](sub_26AEADED0, 0, 0);
}

uint64_t sub_26AEADED0()
{
  v53 = v0;
  v1 = *(v0 + 185);
  *(v0 + 16) = v0;
  if (v1)
  {
    switch(v1)
    {
      case 1:
        v6 = swift_task_alloc();
        *(v47 + 104) = v6;
        *v6 = *(v47 + 16);
        v6[1] = sub_26AEAEE7C;
        v7 = *(v47 + 64);
        v8 = *(v47 + 56);

        return ReactiveUIManager.downloadAndInstall(_:delegate:)(v8, v7);
      case 2:
        v9 = swift_task_alloc();
        *(v47 + 120) = v9;
        *v9 = *(v47 + 16);
        v9[1] = sub_26AEAF124;
        v10 = *(v47 + 64);
        v11 = *(v47 + 56);

        return ReactiveUIManager.downloadAndSchedule(_:delegate:)(v11, v10);
      case 3:
        v12 = swift_task_alloc();
        *(v47 + 136) = v12;
        *v12 = *(v47 + 16);
        v12[1] = sub_26AEAF3D0;
        v13 = *(v47 + 64);
        v14 = *(v47 + 56);

        return ReactiveUIManager.download(_:delegate:)(v14, v13);
      case 4:
        v15 = swift_task_alloc();
        *(v47 + 152) = v15;
        *v15 = *(v47 + 16);
        v15[1] = sub_26AEAF67C;
        v16 = *(v47 + 64);
        v17 = *(v47 + 56);

        return ReactiveUIManager.install(_:delegate:)(v17, v16);
      default:
        v18 = swift_task_alloc();
        *(v47 + 168) = v18;
        *v18 = *(v47 + 16);
        v18[1] = sub_26AEAF928;
        v19 = *(v47 + 64);
        v20 = *(v47 + 56);

        return ReactiveUIManager.schedule(_:delegate:)(v20, v19);
    }
  }

  else
  {
    v28 = *(v47 + 185);
    v29 = *(v47 + 72);
    sub_26B078540();

    v33 = swift_allocObject();
    *(v33 + 16) = v28;
    v45 = sub_26B078570();
    v46 = sub_26B07A2D0();
    v35 = swift_allocObject();
    *(v35 + 16) = 32;
    v36 = swift_allocObject();
    *(v36 + 16) = 8;
    v30 = swift_allocObject();
    *(v30 + 16) = sub_26AEAFC68;
    *(v30 + 24) = v29;
    v31 = swift_allocObject();
    *(v31 + 16) = sub_26AEAFD4C;
    *(v31 + 24) = v30;
    v37 = swift_allocObject();
    *(v37 + 16) = sub_26AEAFD98;
    *(v37 + 24) = v31;
    v38 = swift_allocObject();
    *(v38 + 16) = 32;
    v39 = swift_allocObject();
    *(v39 + 16) = 8;
    v32 = swift_allocObject();
    *(v32 + 16) = sub_26AEAFC00;
    *(v32 + 24) = 0;
    v40 = swift_allocObject();
    *(v40 + 16) = sub_26AEAFE98;
    *(v40 + 24) = v32;
    v41 = swift_allocObject();
    *(v41 + 16) = 32;
    v42 = swift_allocObject();
    *(v42 + 16) = 8;
    v34 = swift_allocObject();
    *(v34 + 16) = sub_26AEAFC9C;
    *(v34 + 24) = v33;
    v43 = swift_allocObject();
    *(v43 + 16) = sub_26AEAFF98;
    *(v43 + 24) = v34;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DBB00);
    sub_26B07A760();
    v44 = v2;

    *v44 = sub_26AEAFCD0;
    v44[1] = v35;

    v44[2] = sub_26AEAFD04;
    v44[3] = v36;

    v44[4] = sub_26AEAFDE4;
    v44[5] = v37;

    v44[6] = sub_26AEAFE1C;
    v44[7] = v38;

    v44[8] = sub_26AEAFE50;
    v44[9] = v39;

    v44[10] = sub_26AEAFEE4;
    v44[11] = v40;

    v44[12] = sub_26AEAFF1C;
    v44[13] = v41;

    v44[14] = sub_26AEAFF50;
    v44[15] = v42;

    v44[16] = sub_26AEAFFE4;
    v44[17] = v43;
    sub_26AEA3B2C();

    if (os_log_type_enabled(v45, v46))
    {
      buf = sub_26B07A420();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DCED0);
      v26 = sub_26AEA3B70(0);
      v27 = sub_26AEA3B70(3);
      v48 = buf;
      v49 = v26;
      v50 = v27;
      sub_26AEA3BC4(2, &v48);
      sub_26AEA3BC4(3, &v48);
      v51 = sub_26AEAFCD0;
      v52 = v35;
      sub_26AEA3BD8(&v51, &v48, &v49, &v50);
      v51 = sub_26AEAFD04;
      v52 = v36;
      sub_26AEA3BD8(&v51, &v48, &v49, &v50);
      v51 = sub_26AEAFDE4;
      v52 = v37;
      sub_26AEA3BD8(&v51, &v48, &v49, &v50);
      v51 = sub_26AEAFE1C;
      v52 = v38;
      sub_26AEA3BD8(&v51, &v48, &v49, &v50);
      v51 = sub_26AEAFE50;
      v52 = v39;
      sub_26AEA3BD8(&v51, &v48, &v49, &v50);
      v51 = sub_26AEAFEE4;
      v52 = v40;
      sub_26AEA3BD8(&v51, &v48, &v49, &v50);
      v51 = sub_26AEAFF1C;
      v52 = v41;
      sub_26AEA3BD8(&v51, &v48, &v49, &v50);
      v51 = sub_26AEAFF50;
      v52 = v42;
      sub_26AEA3BD8(&v51, &v48, &v49, &v50);
      v51 = sub_26AEAFFE4;
      v52 = v43;
      sub_26AEA3BD8(&v51, &v48, &v49, &v50);
      _os_log_impl(&dword_26AE88000, v45, v46, "%s.%s: Invalid update action: %s", buf, 0x20u);
      sub_26AEA3C24(v26);
      sub_26AEA3C24(v27);
      sub_26B07A400();
    }

    else
    {
    }

    v22 = *(v47 + 96);
    v23 = *(v47 + 80);
    v24 = *(v47 + 48);
    v21 = *(v47 + 88);
    v3 = MEMORY[0x277D82BD8](v45);
    (*(v21 + 8))(v22, v23, v3);
    *v24 = 0;
    *(v24 + 8) = 5;

    v4 = *(*(v47 + 16) + 8);

    return v4();
  }
}

uint64_t sub_26AEAEE7C(uint64_t a1)
{
  v5 = *v2;
  *(v5 + 16) = *v2;
  *(v5 + 112) = a1;

  if (v1)
  {

    v3 = *(*(v5 + 16) + 8);

    return v3();
  }

  else
  {

    return MEMORY[0x2822009F8](sub_26AEAF058, 0, 0);
  }
}

uint64_t sub_26AEAF058()
{
  v1 = v0[14];
  v2 = v0[6];
  v0[2] = v0;
  *v2 = v1;
  *(v2 + 8) = 0;

  v3 = *(v0[2] + 8);

  return v3();
}

uint64_t sub_26AEAF124(uint64_t a1)
{
  v5 = *v2;
  *(v5 + 16) = *v2;
  *(v5 + 128) = a1;

  if (v1)
  {

    v3 = *(*(v5 + 16) + 8);

    return v3();
  }

  else
  {

    return MEMORY[0x2822009F8](sub_26AEAF300, 0, 0);
  }
}

uint64_t sub_26AEAF300()
{
  v1 = v0[16];
  v2 = v0[6];
  v0[2] = v0;
  *v2 = v1;
  *(v2 + 8) = 1;

  v3 = *(v0[2] + 8);

  return v3();
}

uint64_t sub_26AEAF3D0(uint64_t a1)
{
  v5 = *v2;
  *(v5 + 16) = *v2;
  *(v5 + 144) = a1;

  if (v1)
  {

    v3 = *(*(v5 + 16) + 8);

    return v3();
  }

  else
  {

    return MEMORY[0x2822009F8](sub_26AEAF5AC, 0, 0);
  }
}

uint64_t sub_26AEAF5AC()
{
  v1 = v0[18];
  v2 = v0[6];
  v0[2] = v0;
  *v2 = v1;
  *(v2 + 8) = 2;

  v3 = *(v0[2] + 8);

  return v3();
}

uint64_t sub_26AEAF67C(uint64_t a1)
{
  v5 = *v2;
  *(v5 + 16) = *v2;
  *(v5 + 160) = a1;

  if (v1)
  {

    v3 = *(*(v5 + 16) + 8);

    return v3();
  }

  else
  {

    return MEMORY[0x2822009F8](sub_26AEAF858, 0, 0);
  }
}

uint64_t sub_26AEAF858()
{
  v1 = v0[20];
  v2 = v0[6];
  v0[2] = v0;
  *v2 = v1;
  *(v2 + 8) = 3;

  v3 = *(v0[2] + 8);

  return v3();
}

uint64_t sub_26AEAF928(uint64_t a1)
{
  v5 = *v2;
  *(v5 + 16) = *v2;
  *(v5 + 176) = a1;

  if (v1)
  {

    v3 = *(*(v5 + 16) + 8);

    return v3();
  }

  else
  {

    return MEMORY[0x2822009F8](sub_26AEAFB04, 0, 0);
  }
}

uint64_t sub_26AEAFB04()
{
  v1 = v0[22];
  v2 = v0[6];
  v0[2] = v0;
  *v2 = v1;
  *(v2 + 8) = 4;

  v3 = *(v0[2] + 8);

  return v3();
}

unint64_t sub_26AEB0008()
{
  v2 = qword_2803DBFA8;
  if (!qword_2803DBFA8)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DBFA8);
    return WitnessTable;
  }

  return v2;
}

uint64_t getEnumTagSinglePayload for UpdateAction(unsigned __int8 *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 <= 0xFA)
    {
      goto LABEL_15;
    }

    v7 = ((a2 + 5) >> 8) + 1;
    v8 = 1;
    if (v7 >= 0x100)
    {
      if (v7 >= 0x10000)
      {
        v2 = 4;
      }

      else
      {
        v2 = 2;
      }

      v8 = v2;
    }

    if (v8 == 1)
    {
      v6 = a1[1];
    }

    else
    {
      v6 = v8 == 2 ? *(a1 + 1) : *(a1 + 1);
    }

    if (v6)
    {
      v5 = (*a1 | ((v6 - 1) << 8)) + 250;
    }

    else
    {
LABEL_15:
      v3 = *a1 - 6;
      if (v3 < 0)
      {
        v3 = -1;
      }

      v5 = v3;
    }
  }

  else
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for UpdateAction(_BYTE *result, unsigned int a2, unsigned int a3)
{
  v7 = 0;
  if (a3 > 0xFA)
  {
    v5 = ((a3 + 5) >> 8) + 1;
    v6 = 1;
    if (v5 >= 0x100)
    {
      if (v5 >= 0x10000)
      {
        v3 = 4;
      }

      else
      {
        v3 = 2;
      }

      v6 = v3;
    }

    v7 = v6;
  }

  if (a2 > 0xFA)
  {
    v4 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
    if (v7)
    {
      if (v7 == 1)
      {
        result[1] = v4;
      }

      else if (v7 == 2)
      {
        *(result + 1) = v4;
      }

      else
      {
        *(result + 1) = v4;
      }
    }
  }

  else
  {
    if (v7)
    {
      if (v7 == 1)
      {
        result[1] = 0;
      }

      else if (v7 == 2)
      {
        *(result + 1) = 0;
      }

      else
      {
        *(result + 1) = 0;
      }
    }

    if (a2)
    {
      *result = a2 + 5;
    }
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_19SoftwareUpdateUIKit0B12ActionResultO(uint64_t a1)
{
  if ((*(a1 + 8) & 7u) < 5)
  {
    return *(a1 + 8) & 7;
  }

  else
  {
    return *a1 + 5;
  }
}

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t a2)
{
  *result = *a2;
  *(result + 8) = *(a2 + 8);
  return result;
}

uint64_t sub_26AEB0440(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 > 0xFA && *(a1 + 9))
    {
      v4 = *a1 + 250;
    }

    else
    {
      v2 = 255 - *(a1 + 8);
      if (v2 >= 0xFA)
      {
        v2 = -1;
      }

      v4 = v2;
    }
  }

  else
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_26AEB0564(uint64_t result, unsigned int a2, unsigned int a3)
{
  v3 = result;
  v4 = (result + 9);
  if (a2 > 0xFA)
  {
    result = 0;
    *(v3 + 8) = 0;
    *v3 = a2 - 251;
    if (a3 >= 0xFB)
    {
      *v4 = 1;
    }
  }

  else
  {
    if (a3 >= 0xFB)
    {
      *v4 = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t sub_26AEB071C(uint64_t result, unsigned int a2)
{
  if (a2 < 5)
  {
    *(result + 8) = a2;
  }

  else
  {
    *result = a2 - 5;
    *(result + 8) = 5;
  }

  return result;
}

BOOL static ScanFailedView.FailureReason.== infix(_:_:)(_BYTE *a1, _BYTE *a2)
{
  if (*a1)
  {
    if (*a1 == 1)
    {
      v4 = 1;
    }

    else
    {
      v4 = 2;
    }
  }

  else
  {
    v4 = 0;
  }

  if (*a2)
  {
    if (*a2 == 1)
    {
      v3 = 1;
    }

    else
    {
      v3 = 2;
    }
  }

  else
  {
    v3 = 0;
  }

  return v4 == v3;
}

unint64_t sub_26AEB0960()
{
  v2 = qword_2803DBFB0;
  if (!qword_2803DBFB0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DBFB0);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_26AEB0A40()
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DBFB8);
  sub_26B078A10();

  return v1;
}

uint64_t sub_26AEB0ACC()
{
  v2 = *v0;

  return v2;
}

uint64_t sub_26AEB0B10(uint64_t a1, char a2)
{

  *v2 = a1;
  *(v2 + 8) = a2 & 1;
}

uint64_t sub_26AEB0BB0()
{
  v2 = *(v0 + 16);
  sub_26AEB0BF0(v2);
  return v2;
}

uint64_t sub_26AEB0BF0(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t ScanFailedView.init(reason:tryAgainAction:)@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v11 = 0u;
  v12 = 0u;
  v5 = *a1;
  swift_getKeyPath();
  sub_26B078A30();
  *&v11 = v9;
  BYTE8(v11) = v10 & 1;
  BYTE9(v11) = v5;
  sub_26AEB0BF0(a2);
  *&v12 = a2;
  *(&v12 + 1) = a3;
  sub_26AEB31A0(&v11, a4);
  sub_26AEB3258(a2);
  return sub_26AEB328C(&v11);
}

uint64_t ScanFailedView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v25 = a1;
  v13 = 0;
  v20 = sub_26AEB1130;
  v14 = sub_26AEB32D8;
  v16 = sub_26AEB3324;
  v44 = 0;
  v42 = 0u;
  v43 = 0u;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DBFC0);
  v23 = *(v29 - 8);
  v24 = v29 - 8;
  v5 = (*(v23 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v29);
  v27 = &v4 - v5;
  v6 = (v2 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](&v4 - v5);
  v28 = &v4 - v6;
  v44 = &v4 - v6;
  v21 = *v1;
  v7 = *(v1 + 8);
  v9 = *(v1 + 9);
  v22 = *(v1 + 1);
  *&v42 = v21;
  v8 = 1;
  BYTE8(v42) = v7 & 1;
  BYTE9(v42) = v9;
  v43 = v22;

  sub_26AEB0BF0(v22);
  v15 = &v37;
  v38 = v21;
  v39 = v7 & 1 & v8;
  v40 = v9;
  v41 = v22;

  sub_26AEB0BF0(v22);
  v17 = &v32;
  v33 = v21;
  v34 = v7 & 1 & v8;
  v35 = v9;
  v36 = v22;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DBFC8);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DCBB0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DBFD0);
  v11 = sub_26AEB3370();
  v12 = sub_26AEB33F8();
  sub_26AEB3538();
  sub_26B079000();

  sub_26AEB3258(v22);

  sub_26AEB3258(v22);
  v26 = sub_26AEB35D0();
  sub_26AE9463C(v27, v29, v28);
  v31 = *(v23 + 8);
  v30 = v23 + 8;
  v31(v27, v29);
  (*(v23 + 16))(v27, v28, v29);
  sub_26AE94B4C(v27, v29, v25);
  v31(v27, v29);
  return (v31)(v28, v29);
}

uint64_t sub_26AEB1130@<X0>(uint64_t a1@<X8>)
{
  v22 = a1;
  v32 = 0;
  v13 = 0;
  v8 = (*(*(sub_26B078300() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](0);
  v15 = &v7 - v8;
  v1 = sub_26B079DE0();
  v9 = (*(*(v1 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v1);
  v12 = &v7 - v9;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DBFC8);
  v20 = *(v26 - 8);
  v21 = v26 - 8;
  v10 = (*(v20 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v26);
  v24 = &v7 - v10;
  v11 = (v2 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](&v7 - v10);
  v25 = &v7 - v11;
  v32 = &v7 - v11;
  v16 = 1;
  sub_26B079D00();
  sub_26B079D80();
  v14 = *sub_26B02D0D0();
  MEMORY[0x277D82BE0](v14);
  sub_26AEFB5C4();
  v29[2] = 0;
  v29[3] = 0;
  v30 = 0;
  v31 = v16 & 1;
  v3 = sub_26B079E40();
  v19 = v29;
  v29[0] = v3;
  v29[1] = v4;
  v17 = sub_26B079D00();
  v18 = v5;
  sub_26AE95974();
  sub_26B079890();
  v23 = sub_26AEB3370();
  sub_26AE9463C(v24, v26, v25);
  v28 = *(v20 + 8);
  v27 = v20 + 8;
  v28(v24, v26);
  (*(v20 + 16))(v24, v25, v26);
  sub_26AE94B4C(v24, v26, v22);
  v28(v24, v26);
  return (v28)(v25, v26);
}

uint64_t sub_26AEB145C@<X0>(uint64_t a1@<X0>, __int16 a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v170 = 0u;
  memset(__b, 0, 0x22uLL);
  v167 = 0u;
  v168 = 0u;
  v154 = 0u;
  v155 = 0u;
  v137 = 0u;
  v138 = 0u;
  v123 = 0u;
  v124 = 0u;
  v105 = 0u;
  v106 = 0u;
  v91 = 0u;
  v92 = 0u;
  v173 = a1;
  v174 = a2;
  v175 = a3;
  v176 = a4;
  *&v170 = a1;
  WORD4(v170) = a2 & 0xFF01;
  v171 = a3;
  v172 = a4;
  if (HIBYTE(a2))
  {
    if (HIBYTE(a2) == 1)
    {
      v132 = a1;
      v133 = a2 & 1;
      v134 = 1;
      v135 = a3;
      v136 = a4;
      v128 = sub_26AEB1FB4();
      v129 = v9;
      v130 = v10;
      v131 = v11;
      v125[0] = v128;
      v125[1] = v9;
      v126 = v10 & 1;
      v127 = v11;
      v41 = MEMORY[0x277CE0BD8];
      v42 = MEMORY[0x277CE0BC8];
      sub_26AE9463C(v125, MEMORY[0x277CE0BD8], &v137);
      sub_26AE95B40(v125);
      v34 = v137;
      v35 = v138;
      v36 = *(&v138 + 1);
      sub_26AE95D28(v137, *(&v137 + 1), v138 & 1);
      sub_26B078640();
      v120 = v34;
      v121 = v35 & 1;
      v122 = v36;
      sub_26AE94B4C(&v120, v41, &v123);
      sub_26AE95B40(&v120);
      v37 = v123;
      v38 = v124;
      v39 = *(&v124 + 1);
      sub_26AE95D28(v123, *(&v123 + 1), v124 & 1);
      sub_26B078640();
      v109 = v37;
      v110 = v38 & 1;
      v111 = v39;
      sub_26AE94CA8(&v109, v41, v41, v42, v42, v112);
      sub_26AE95B40(&v109);
      v107[0] = v112[0];
      v107[1] = v112[1];
      v107[2] = v112[2];
      v107[3] = v112[3];
      v108 = v113 & 1;
      v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DCB40);
      v12 = sub_26AEB349C();
      sub_26AE94BB0(v107, v40, v41, v12, v42, &v114);
      sub_26AEB450C(v107);
      v44 = v114;
      v45 = v115;
      v46 = v116;
      v47 = v117;
      v48 = v118;
      v43 = v119;
      sub_26AEB42EC(v114, v115, v116, v117, v118, v119 & 1);
      __b[0] = v44;
      __b[1] = v45;
      __b[2] = v46;
      __b[3] = v47;
      LOBYTE(__b[4]) = v48;
      BYTE1(__b[4]) = v43 & 1;
      sub_26AE95B40(&v123);
      sub_26AE95B40(&v137);
      v64 = v44;
      v65 = v45;
      v66 = v46;
      v67 = v47;
      v68 = v48;
      v69 = v43;
    }

    else
    {
      v163 = a1;
      v164 = a2 & 0xFF01;
      v165 = a3;
      v166 = a4;
      v159 = sub_26AEB20C8();
      v160 = v13;
      v161 = v14;
      v162 = v15;
      v156[0] = v159;
      v156[1] = v13;
      v157 = v14 & 1;
      v158 = v15;
      v26 = MEMORY[0x277CE0BD8];
      v27 = MEMORY[0x277CE0BC8];
      sub_26AE9463C(v156, MEMORY[0x277CE0BD8], &v167);
      sub_26AE95B40(v156);
      v19 = v167;
      v20 = v168;
      v21 = *(&v168 + 1);
      sub_26AE95D28(v167, *(&v167 + 1), v168 & 1);
      sub_26B078640();
      v151 = v19;
      v152 = v20 & 1;
      v153 = v21;
      sub_26AE94B4C(&v151, v26, &v154);
      sub_26AE95B40(&v151);
      v22 = v154;
      v23 = v155;
      v24 = *(&v155 + 1);
      sub_26AE95D28(v154, *(&v154 + 1), v155 & 1);
      sub_26B078640();
      v142 = v22;
      v143 = v23 & 1;
      v144 = v24;
      v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DCB40);
      v16 = sub_26AEB349C();
      sub_26AE94CA8(&v142, v25, v26, v16, v27, &v145);
      sub_26AE95B40(&v142);
      v29 = v145;
      v30 = v146;
      v31 = v147;
      v32 = v148;
      v33 = v149;
      v28 = v150;
      sub_26AEB42EC(v145, v146, v147, v148, v149, v150 & 1);
      __b[0] = v29;
      __b[1] = v30;
      __b[2] = v31;
      __b[3] = v32;
      LOBYTE(__b[4]) = v33;
      BYTE1(__b[4]) = v28 & 1;
      sub_26AE95B40(&v154);
      sub_26AE95B40(&v167);
      v64 = v29;
      v65 = v30;
      v66 = v31;
      v67 = v32;
      v68 = v33;
      v69 = v28;
    }
  }

  else
  {
    v100 = a1;
    v101 = a2 & 1;
    v102 = 0;
    v103 = a3;
    v104 = a4;
    v96 = sub_26AEB1E6C();
    v97 = v5;
    v98 = v6;
    v99 = v7;
    v93[0] = v96;
    v93[1] = v5;
    v94 = v6 & 1;
    v95 = v7;
    v56 = MEMORY[0x277CE0BD8];
    v57 = MEMORY[0x277CE0BC8];
    sub_26AE9463C(v93, MEMORY[0x277CE0BD8], &v105);
    sub_26AE95B40(v93);
    v49 = v105;
    v50 = v106;
    v51 = *(&v106 + 1);
    sub_26AE95D28(v105, *(&v105 + 1), v106 & 1);
    sub_26B078640();
    v88 = v49;
    v89 = v50 & 1;
    v90 = v51;
    sub_26AE94B4C(&v88, v56, &v91);
    sub_26AE95B40(&v88);
    v52 = v91;
    v53 = v92;
    v54 = *(&v92 + 1);
    sub_26AE95D28(v91, *(&v91 + 1), v92 & 1);
    sub_26B078640();
    v77 = v52;
    v78 = v53 & 1;
    v79 = v54;
    sub_26AE94BB0(&v77, v56, v56, v57, v57, v80);
    sub_26AE95B40(&v77);
    v75[0] = v80[0];
    v75[1] = v80[1];
    v75[2] = v80[2];
    v75[3] = v80[3];
    v76 = v81 & 1;
    v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DCB40);
    v8 = sub_26AEB349C();
    sub_26AE94BB0(v75, v55, v56, v8, v57, &v82);
    sub_26AEB450C(v75);
    v59 = v82;
    v60 = v83;
    v61 = v84;
    v62 = v85;
    v63 = v86;
    v58 = v87;
    sub_26AEB42EC(v82, v83, v84, v85, v86, v87 & 1);
    __b[0] = v59;
    __b[1] = v60;
    __b[2] = v61;
    __b[3] = v62;
    LOBYTE(__b[4]) = v63;
    BYTE1(__b[4]) = v58 & 1;
    sub_26AE95B40(&v91);
    sub_26AE95B40(&v105);
    v64 = v59;
    v65 = v60;
    v66 = v61;
    v67 = v62;
    v68 = v63;
    v69 = v58;
  }

  v139[0] = v64;
  v139[1] = v65;
  v139[2] = v66;
  v139[3] = v67;
  v140 = v68;
  v141 = v69 & 1;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DCBB0);
  sub_26AEB33F8();
  sub_26AE94B4C(v139, v18, a5);
  sub_26AEB43D8(v139);
  return sub_26AEB43D8(__b);
}

uint64_t sub_26AEB1E6C()
{
  sub_26B079D00();
  sub_26B078E10();
  v0 = sub_26B02D0D0();
  MEMORY[0x277D82BE0](*v0);
  return sub_26B0792C0();
}

uint64_t sub_26AEB1FB4()
{
  sub_26B079D00();
  sub_26B078E10();
  return sub_26B0792C0();
}

uint64_t sub_26AEB20C8()
{
  sub_26AEB0A40();
  sub_26B078500();

  sub_26B079D00();
  sub_26B078E10();
  v0 = sub_26B02D0D0();
  MEMORY[0x277D82BE0](*v0);
  return sub_26B0792C0();
}

uint64_t sub_26AEB2360@<X0>(uint64_t a1@<X0>, __int16 a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v32 = a5;
  v33 = sub_26AEB42B0;
  v68 = 0;
  v67 = 0;
  v65 = 0u;
  v66 = 0u;
  v63 = 0;
  v64 = 0;
  v60 = 0;
  v69 = a1;
  v70 = a2;
  v71 = a3;
  v72 = a4;
  v56 = a1;
  v57 = a2;
  v48 = HIBYTE(a2);
  v59 = a3;
  v49 = a4;
  v34 = 0;
  v35 = (*(*(sub_26B078300() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](0);
  v36 = v19 - v35;
  v5 = sub_26B079DE0();
  v37 = (*(*(v5 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v5);
  v38 = v19 - v37;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DDD20);
  v40 = *(v39 - 8);
  v41 = v39 - 8;
  v42 = (*(v40 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v39);
  v43 = v19 - v42;
  v44 = (v6 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v19 - v42);
  v45 = v19 - v44;
  v46 = (v7 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v19 - v44);
  v47 = v19 - v46;
  v68 = v19 - v46;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DBFD0);
  v54 = *(*(v50 - 8) + 64);
  v51 = (v54 + 15) & 0xFFFFFFFFFFFFFFF0;
  v8 = MEMORY[0x28223BE20](v59);
  v52 = v19 - v51;
  v53 = (v54 + 15) & 0xFFFFFFFFFFFFFFF0;
  v9 = MEMORY[0x28223BE20](v8);
  v55 = v19 - v53;
  v10 = MEMORY[0x28223BE20](v9);
  v58 = v19 - v11;
  v67 = v19 - v11;
  *&v65 = v56;
  BYTE8(v65) = v57 & 1;
  BYTE9(v65) = v12;
  *&v66 = v10;
  *(&v66 + 1) = v13;
  sub_26AEB0BF0(v10);
  if (v59)
  {
    v30 = v59;
    v31 = v49;
    v24 = v49;
    v23 = v59;
    v63 = v59;
    v64 = v49;
    *&v21[1] = 1;
    sub_26B079D00();
    sub_26B079D80();
    v22 = *sub_26B02D0D0();
    MEMORY[0x277D82BE0](v22);
    sub_26AEFB5C4();
    v61[2] = 0;
    v61[3] = 0;
    v62 = *v21 & 0x100;
    v14 = sub_26B079E40();
    v26 = v61;
    v61[0] = v14;
    v61[1] = v15;

    v16 = swift_allocObject();
    v17 = v24;
    v25 = v16;
    *(v16 + 16) = v23;
    *(v16 + 24) = v17;
    sub_26AE95974();
    sub_26B079920();
    v27 = sub_26AE9C224();
    sub_26AE9463C(v45, v39, v47);
    v28 = *(v40 + 8);
    v29 = v40 + 8;
    v28(v45, v39);
    v60 = v45;
    v20 = *(v40 + 16);
    v19[1] = v40 + 16;
    v20(v43, v47, v39);
    sub_26AE94B4C(v43, v39, v45);
    v28(v43, v39);
    v20(v52, v45, v39);
    (*(v40 + 56))(v52, 0, 1, v39);
    sub_26AF09CCC(v52, v39, v55);
    sub_26AEB3F54(v52);
    sub_26AEB4008(v55, v58);
    v28(v45, v39);
    v28(v47, v39);
  }

  else
  {
    (*(v40 + 56))(v52, 1, 1, v39);
    sub_26AE9C224();
    sub_26AF09CCC(v52, v39, v55);
    sub_26AEB3F54(v52);
    sub_26AEB4008(v55, v58);
  }

  sub_26AEB413C(v58, v55);
  sub_26AEB3538();
  sub_26AE94B4C(v55, v50, v32);
  sub_26AEB3F54(v55);
  return sub_26AEB3F54(v58);
}

uint64_t sub_26AEB2B64(void (*a1)(uint64_t), uint64_t a2)
{
  v26 = a2;
  v25 = a1;
  v33 = 0;
  v42 = 0;
  v41 = 0;
  v24 = 0;
  v27 = sub_26B078580();
  v28 = *(v27 - 8);
  v29 = v28;
  v2 = MEMORY[0x28223BE20](v25);
  v30 = v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = v2;
  v42 = v4;
  sub_26B078550();
  v35 = sub_26B078570();
  v31 = v35;
  v34 = sub_26B07A2A0();
  v32 = v34;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DBB00);
  v36 = sub_26B07A760();
  if (os_log_type_enabled(v35, v34))
  {
    v5 = v24;
    v15 = sub_26B07A420();
    v11 = v15;
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DCED0);
    v13 = 0;
    v16 = sub_26AEA3B70(0);
    v14 = v16;
    v17 = sub_26AEA3B70(v13);
    v40 = v15;
    v39 = v16;
    v38 = v17;
    v18 = 0;
    v19 = &v40;
    sub_26AEA3BC4(0, &v40);
    sub_26AEA3BC4(v18, v19);
    v37 = v36;
    v20 = v9;
    MEMORY[0x28223BE20](v9);
    v21 = &v9[-6];
    v9[-4] = v6;
    v9[-3] = &v39;
    v9[-2] = &v38;
    v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DBB10);
    sub_26AE9CC18();
    sub_26B079FF0();
    v23 = v5;
    if (v5)
    {
      __break(1u);
    }

    else
    {
      _os_log_impl(&dword_26AE88000, v31, v32, "User Action: Clicked 'Try Again' on the ScanFailedView", v11, 2u);
      v9[1] = 0;
      sub_26AEA3C24(v14);
      sub_26AEA3C24(v17);
      sub_26B07A400();

      v10 = v23;
    }
  }

  else
  {

    v10 = v24;
  }

  (*(v29 + 8))(v30, v27);

  v25(v7);
}

uint64_t static ScanFailedView.networkUnavailable(tryAgainAction:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v8 = a1;
  v9 = a2;
  v7 = 0;
  sub_26AEB0BF0(a1);
  return ScanFailedView.init(reason:tryAgainAction:)(&v7, a1, a2, a3);
}

uint64_t static ScanFailedView.generalError(tryAgainAction:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v8 = a1;
  v9 = a2;
  v7 = 2;
  sub_26AEB0BF0(a1);
  return ScanFailedView.init(reason:tryAgainAction:)(&v7, a1, a2, a3);
}

uint64_t sub_26AEB303C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v10 = a2;
  v8[1] = a1;
  v13 = sub_26B078D30();
  v11 = *(v13 - 8);
  v12 = v13 - 8;
  v9 = (*(v11 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v13);
  v14 = v8 - v9;
  (*(v11 + 16))(v8 - v9);
  v2 = EnvironmentValues.reactivePlatform.getter();
  v3 = v11;
  v4 = v13;
  v5 = v2;
  v6 = v14;
  *v10 = v5;
  return (*(v3 + 8))(v6, v4);
}

uint64_t sub_26AEB31A0(uint64_t *a1, uint64_t a2)
{
  v6 = *a1;
  v7 = *(a1 + 8);

  *a2 = v6;
  *(a2 + 8) = v7 & 1;
  *(a2 + 9) = *(a1 + 9);
  if (a1[2])
  {
    v3 = a1[2];
    v4 = a1[3];

    *(a2 + 16) = v3;
    *(a2 + 24) = v4;
  }

  else
  {
    *(a2 + 16) = *(a1 + 1);
  }

  return a2;
}

uint64_t sub_26AEB3258(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_26AEB328C(uint64_t a1)
{

  if (*(a1 + 16))
  {
  }

  return a1;
}

uint64_t sub_26AEB32D8@<X0>(uint64_t a1@<X8>)
{
  LOBYTE(v3) = *(v1 + 24) & 1;
  HIBYTE(v3) = *(v1 + 25);
  return sub_26AEB145C(*(v1 + 16), v3, *(v1 + 32), *(v1 + 40), a1);
}

uint64_t sub_26AEB3324@<X0>(uint64_t a1@<X8>)
{
  LOBYTE(v3) = *(v1 + 24) & 1;
  HIBYTE(v3) = *(v1 + 25);
  return sub_26AEB2360(*(v1 + 16), v3, *(v1 + 32), *(v1 + 40), a1);
}

unint64_t sub_26AEB3370()
{
  v2 = qword_2803DEC20;
  if (!qword_2803DEC20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803DBFC8);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DEC20);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_26AEB33F8()
{
  v2 = qword_2803DBFD8;
  if (!qword_2803DBFD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_2803DCBB0);
    sub_26AEB349C();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DBFD8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_26AEB349C()
{
  v2 = qword_2803DD6D0;
  if (!qword_2803DD6D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803DCB40);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DD6D0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_26AEB3538()
{
  v2 = qword_2803DBFE0;
  if (!qword_2803DBFE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803DBFD0);
    sub_26AE9C224();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DBFE0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_26AEB35D0()
{
  v2 = qword_2803DBFE8;
  if (!qword_2803DBFE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803DBFC0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DBFE8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_26AEB3670()
{
  v2 = qword_2803DBFF0;
  if (!qword_2803DBFF0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DBFF0);
    return WitnessTable;
  }

  return v2;
}

uint64_t get_enum_tag_for_layout_string_Ieg_Sg(void *a1)
{
  v2 = -1;
  if (*a1 < 0x100000000uLL)
  {
    v2 = *a1;
  }

  return (v2 + 1);
}

__n128 __swift_memcpy32_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_26AEB387C(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 > 0x7FFFFFFE && *(a1 + 32))
    {
      v5 = *a1 + 2147483646;
    }

    else
    {
      v4 = -1;
      if (*(a1 + 16) < 0x100000000uLL)
      {
        v4 = *(a1 + 16);
      }

      v2 = v4 - 1;
      if (v4 - 1 < 0)
      {
        v2 = -1;
      }

      v5 = v2;
    }
  }

  else
  {
    v5 = -1;
  }

  return (v5 + 1);
}