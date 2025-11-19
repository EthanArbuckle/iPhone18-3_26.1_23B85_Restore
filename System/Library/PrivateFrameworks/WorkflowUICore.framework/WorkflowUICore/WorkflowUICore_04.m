id sub_274B43B98@<X0>(uint64_t a1@<X8>)
{
  *a1 = sub_274BF38F4();
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098BDC0);
  return sub_274B43BEC(v1, a1 + *(v3 + 44));
}

id sub_274B43BEC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280989DC0);
  MEMORY[0x28223BE20](v4 - 8);
  v82 = &v69 - v5;
  v81 = sub_274BF3FF4();
  v85 = *(v81 - 8);
  MEMORY[0x28223BE20](v81);
  v7 = &v69 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098BDC8);
  MEMORY[0x28223BE20](v83);
  v9 = (&v69 - v8);
  v10 = sub_274BF27E4();
  MEMORY[0x28223BE20](v10 - 8);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098BDD0);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v69 - v12;
  v14 = sub_274BF27C4();
  MEMORY[0x28223BE20](v14 - 8);
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098BDD8);
  v78 = *(v84 - 8);
  MEMORY[0x28223BE20](v84);
  v16 = &v69 - v15;
  v17 = _s14WorkflowUICore11PreviewViewVMa_0();
  result = [*(a1 + *(v17 + 20)) mapItem];
  if (result)
  {
    v19 = result;
    v79 = v9;
    v80 = a2;
    v20 = [result placemark];

    if (*(a1 + *(v17 + 24)))
    {
      v21 = v20;
      v22 = sub_274B44770(v21);
      if (v23)
      {
        v24 = v22;
      }

      else
      {
        v24 = 0;
      }

      v25 = 0xE000000000000000;
      if (v23)
      {
        v25 = v23;
      }

      v88 = v24;
      v89 = v25;
      v74 = sub_274ADDF6C();
      v26 = sub_274BF4104();
      v28 = v27;
      v30 = v29;
      v78 = v31;
      v32 = *MEMORY[0x277CE0A68];
      v33 = v85;
      v34 = v81;
      v71 = v85[13];
      v72 = (v85 + 13);
      v71(v7, v32, v81);
      v35 = sub_274BF3EF4();
      v36 = v82;
      v70 = v35;
      __swift_storeEnumTagSinglePayload(v82, 1, 1, v35);
      sub_274BF3F54();
      sub_274B447E0(v36);
      v37 = v33[1];
      v85 = v33 + 1;
      v37(v7, v34);
      v38 = sub_274BF40D4();
      v75 = v39;
      v76 = v38;
      v73 = v40;
      v77 = v41;

      sub_274AFA1D0(v26, v28, v30 & 1);

      v42 = [v21 postalAddress];
      v78 = v21;

      if (v42)
      {
        v43 = [v42 street];

        v42 = sub_274BF4F44();
        v45 = v44;
      }

      else
      {
        v45 = 0xE000000000000000;
      }

      v88 = v42;
      v89 = v45;
      v50 = sub_274BF4104();
      v52 = v51;
      v54 = v53;
      v55 = v81;
      v71(v7, *MEMORY[0x277CE0AB0], v81);
      v56 = v82;
      __swift_storeEnumTagSinglePayload(v82, 1, 1, v70);
      sub_274BF3F54();
      sub_274B447E0(v56);
      v37(v7, v55);
      v57 = sub_274BF40D4();
      v59 = v58;
      v61 = v60;
      v63 = v62;

      sub_274AFA1D0(v50, v52, v54 & 1);

      LOBYTE(v50) = v73 & 1;
      LOBYTE(v88) = v73 & 1;
      v87 = v73 & 1;
      v61 &= 1u;
      v86 = v61;
      v64 = v75;
      v65 = v76;
      sub_274AF396C(v76, v75, v73 & 1);
      v66 = v77;

      sub_274AF396C(v57, v59, v61);

      sub_274AF396C(v65, v64, v50);

      sub_274AF396C(v57, v59, v61);

      sub_274AFA1D0(v57, v59, v61);
      v67 = v63;
      v85 = v63;

      sub_274AFA1D0(v65, v64, v88);

      v68 = v79;
      *v79 = v65;
      v68[1] = v64;
      *(v68 + 16) = v50;
      v68[3] = v66;
      v68[4] = v57;
      v68[5] = v59;
      *(v68 + 48) = v61;
      v68[7] = v67;
      v68[8] = 0x3FE999999999999ALL;
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098BDE0);
      sub_274AFA930(&qword_28098BDE8, &qword_28098BDD8);
      sub_274AFA930(&qword_28098BDF0, &qword_28098BDE0);
      sub_274BF3A64();

      sub_274AFA1D0(v57, v59, v61);

      sub_274AFA1D0(v65, v64, v50);
    }

    else
    {
      v85 = v20;
      sub_274B43A8C();
      v46 = sub_274BF2794();
      v47 = __swift_storeEnumTagSinglePayload(v13, 1, 1, v46);
      MEMORY[0x28223BE20](v47);
      sub_274BF27D4();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098BDF8);
      sub_274AFA930(&qword_28098BE00, &qword_28098BDF8);
      sub_274BF2774();
      v48 = v78;
      v49 = v84;
      (*(v78 + 2))(v79, v16, v84);
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098BDE0);
      sub_274AFA930(&qword_28098BDE8, &qword_28098BDD8);
      sub_274AFA930(&qword_28098BDF0, &qword_28098BDE0);
      sub_274BF3A64();

      return v48[1](v16, v49);
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_274B44530(uint64_t a1)
{
  if ([*(a1 + *(_s14WorkflowUICore11PreviewViewVMa_0() + 20)) mapItem])
  {
  }

  else
  {
    __break(1u);
  }

  return MEMORY[0x282136F98]();
}

unint64_t sub_274B44598()
{
  result = qword_28098BD88;
  if (!qword_28098BD88)
  {
    _s14WorkflowUICore11PreviewViewVMa_0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28098BD88);
  }

  return result;
}

void sub_274B44620()
{
  sub_274B446AC();
  if (v0 <= 0x3F)
  {
    sub_274B44710();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_274B446AC()
{
  if (!qword_28098BDA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28098BDB0);
    v0 = sub_274BF2F64();
    if (!v1)
    {
      atomic_store(v0, &qword_28098BDA8);
    }
  }
}

unint64_t sub_274B44710()
{
  result = qword_28098BDB8;
  if (!qword_28098BDB8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_28098BDB8);
  }

  return result;
}

uint64_t sub_274B44770(void *a1)
{
  v2 = [a1 name];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_274BF4F44();

  return v3;
}

uint64_t sub_274B447E0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280989DC0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_274B44878(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *(a1 + 32);
  if (a2)
  {
    ObjectType = swift_getObjectType();
    *&v11 = a2;
    sub_274B29EBC(&v11, v13);
  }

  else
  {
    memset(v13, 0, sizeof(v13));
  }

  swift_unknownObjectRetain();
  v9(v13, a3, a4, a5);
  return sub_274B48948(v13);
}

NSAttributedString __swiftcall TextEditorContentDisplayStyle.style(_:)(NSAttributedString a1)
{
  v2 = v1[1];
  if (v2 != 1)
  {
    v3 = *v1;
    isa = a1.super.isa;
    v4 = [(objc_class *)a1.super.isa string];
    sub_274BF4F44();

    v5 = sub_274BF5004();

    if (v3 < v5)
    {
      v6 = [(objc_class *)isa attributedSubstringFromRange:0, v3];
      v7 = [v6 mutableCopy];

      if (v7)
      {
        if (v2)
        {
          sub_274AD8430(0, qword_28098A8F0);
          v9 = v2;
          v10 = sub_274B17D10();
          [v7 appendAttributedString_];
          [v7 appendAttributedString_];

          v11 = OUTLINED_FUNCTION_4_8();
          sub_274B295C0(v11, v12);
        }

        return v7;
      }

      else
      {
        __break(1u);
      }

      return result;
    }

    a1.super.isa = isa;
  }

  return a1.super.isa;
}

Swift::Void __swiftcall TextEditorContentDisplayStyle.transitionToFull()()
{
  v1 = v0[1];
  if (v1 != 1)
  {
    sub_274B295C0(*v0, v1);
    *v0 = xmmword_274BFBC10;
  }
}

id sub_274B44AE4()
{
  OUTLINED_FUNCTION_9_1();
  v1 = *(v0 + 24);

  return v1;
}

void sub_274B44B1C(uint64_t a1)
{
  OUTLINED_FUNCTION_24_3();
  v3 = *(v1 + 24);
  *(v1 + 24) = a1;
}

uint64_t sub_274B44B58(uint64_t result)
{
  if (*(result + 8) != 2)
  {
    return sub_274B45DC0();
  }

  return result;
}

uint64_t sub_274B44B6C@<X0>(uint64_t *a1@<X8>)
{
  v2 = *(v1 + 40);
  v3 = *(v1 + 48);
  *a1 = v2;
  a1[1] = v3;
  return sub_274B48928(v2, v3);
}

void sub_274B44B78(_OWORD *a1)
{
  v2 = *(v1 + 40);
  v3 = *(v1 + 48);
  *(v1 + 40) = *a1;
  sub_274B48928(v2, v3);
  sub_274B295B0(v2, v3);
  v4[0] = v2;
  v4[1] = v3;
  sub_274B44B58(v4);

  sub_274B295B0(v2, v3);
}

void (*sub_274B44BEC(uint64_t *a1))(void *a1, char a2)
{
  a1[2] = v1;
  v3 = *(v1 + 40);
  v4 = *(v1 + 48);
  *a1 = v3;
  a1[1] = v4;
  sub_274B48928(v3, v4);
  return sub_274B44C38;
}

void sub_274B44C38(void *a1, char a2)
{
  v2 = a1[1];
  if (a2)
  {
    *&v7 = *a1;
    *(&v7 + 1) = v2;
    v3 = OUTLINED_FUNCTION_4_8();
    sub_274B48928(v3, v4);
    sub_274B44B78(&v7);
    v5 = OUTLINED_FUNCTION_4_8();

    sub_274B295B0(v5, v6);
  }

  else
  {
    *&v7 = *a1;
    *(&v7 + 1) = v2;
    sub_274B44B78(&v7);
  }
}

uint64_t sub_274B44CC4(uint64_t result, uint64_t a2, char a3)
{
  *(v3 + 56) = result;
  *(v3 + 64) = a2;
  *(v3 + 72) = a3 & 1;
  return result;
}

uint64_t sub_274B44CD4(uint64_t a1)
{
  swift_getAssociatedTypeWitness();
  v2 = sub_274BF5724();
  v3 = MEMORY[0x28223BE20](v2);
  v5 = &v8 - v4;
  (*(v6 + 16))(&v8 - v4, a1, v3);
  return sub_274B44E70(v5);
}

uint64_t sub_274B44DC0@<X0>(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_1_2();
  v4 = *(v3 + 136);
  OUTLINED_FUNCTION_9_1();
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_26_2();
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_30_2();
  OUTLINED_FUNCTION_0_2();
  return (*(v5 + 16))(a1, v1 + v4);
}

uint64_t sub_274B44E70(uint64_t a1)
{
  OUTLINED_FUNCTION_1_2();
  v4 = *(v3 + 136);
  OUTLINED_FUNCTION_14_3();
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_26_2();
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_30_2();
  OUTLINED_FUNCTION_0_2();
  (*(v5 + 40))(v1 + v4, a1);
  return swift_endAccess();
}

uint64_t (*sub_274B44F28())()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_13_7();
  return j__swift_endAccess;
}

uint64_t sub_274B44F84()
{
  OUTLINED_FUNCTION_18();
  v2 = *(v0 + *(v1 + 144));
  sub_274ADDED0(v2);
  return v2;
}

uint64_t sub_274B44FCC()
{
  OUTLINED_FUNCTION_18();
  v2 = (v0 + *(v1 + 144));
  v3 = *v2;
  *v2 = v4;
  v2[1] = v5;
  return sub_274AD81C4(v3);
}

id sub_274B45030()
{
  OUTLINED_FUNCTION_18();
  v2 = *(v1 + 152);
  OUTLINED_FUNCTION_9_1();
  v3 = *(v0 + v2);

  return v3;
}

void sub_274B45080(void *a1)
{
  OUTLINED_FUNCTION_18();
  v4 = *(v3 + 152);
  OUTLINED_FUNCTION_24_3();
  v5 = *(v1 + v4);
  *(v1 + v4) = a1;
  v6 = a1;

  sub_274B45170();
}

uint64_t (*sub_274B450E4(uint64_t a1))()
{
  *(a1 + 24) = v1;
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_13_7();
  return sub_274B45140;
}

void sub_274B45170()
{
  v0 = sub_274B44AE4();
  v2 = [v0 mutableCopy];

  if (v2)
  {
    OUTLINED_FUNCTION_7_12();
    sub_274B45BE4(v1);
  }

  else
  {
    __break(1u);
  }
}

id sub_274B451DC()
{
  OUTLINED_FUNCTION_18();
  v2 = *(v1 + 160);
  OUTLINED_FUNCTION_9_1();
  v3 = *(v0 + v2);

  return v3;
}

void sub_274B4522C(void *a1)
{
  OUTLINED_FUNCTION_18();
  v4 = *(v3 + 160);
  OUTLINED_FUNCTION_24_3();
  v5 = *(v1 + v4);
  *(v1 + v4) = a1;
  v6 = a1;

  sub_274B45170();
}

uint64_t (*sub_274B45290(uint64_t a1))()
{
  *(a1 + 24) = v1;
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_13_7();
  return sub_274B48AC4;
}

void sub_274B452EC(uint64_t a1, char a2)
{
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    sub_274B45170();
  }
}

uint64_t AttributedTextEditingSession.ChangeSource.hashValue.getter()
{
  v1 = *v0;
  sub_274BF5CD4();
  MEMORY[0x277C65580](v1);
  return sub_274BF5D44();
}

uint64_t sub_274B453DC()
{
  sub_274BF5CD4();
  AttributedTextEditingSession.ChangeSource.hash(into:)();
  return sub_274BF5D44();
}

uint64_t AttributedTextEditingSession.__allocating_init(initialValue:font:)()
{
  v0 = swift_allocObject();
  v1 = OUTLINED_FUNCTION_4_8();
  AttributedTextEditingSession.init(initialValue:font:)(v1, v2);
  return v0;
}

void *AttributedTextEditingSession.init(initialValue:font:)(uint64_t a1, void *a2)
{
  v3 = v2;
  v6 = *v2;
  type metadata accessor for AttributedTextFieldTransitionCoordinator();
  v7 = swift_allocObject();
  sub_274B47730();
  v3[4] = v7;
  *(v3 + 5) = xmmword_274BFF0E0;
  v3[7] = 0;
  v3[8] = 0;
  *(v3 + 72) = 1;
  OUTLINED_FUNCTION_4_10();
  v9 = *(v8 + 136);
  v10 = *(v6 + 88);
  v11 = *(v6 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  __swift_storeEnumTagSinglePayload(v3 + v9, 1, 1, AssociatedTypeWitness);
  OUTLINED_FUNCTION_4_10();
  v14 = (v3 + *(v13 + 144));
  *v14 = 0;
  v14[1] = 0;
  OUTLINED_FUNCTION_4_10();
  v16 = *(v15 + 168);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098B2C0);
  swift_allocObject();
  *(v3 + v16) = sub_274BF2CF4();
  OUTLINED_FUNCTION_4_10();
  v18 = MEMORY[0x277D84F90];
  *(v3 + *(v17 + 176)) = MEMORY[0x277D84F90];
  if (sub_274B19804(v18))
  {
    sub_274B47AAC(MEMORY[0x277D84F90]);
  }

  OUTLINED_FUNCTION_4_10();
  *(v3 + *(v19 + 184)) = v20;
  OUTLINED_FUNCTION_4_10();
  v22 = *(v21 + 192);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098DE20);
  swift_allocObject();
  *(v3 + v22) = sub_274BF2CF4();
  OUTLINED_FUNCTION_4_10();
  v24 = *(v23 + 200);
  swift_allocObject();
  *(v3 + v24) = sub_274BF2CF4();
  OUTLINED_FUNCTION_4_10();
  v26 = *(v25 + 208);
  swift_allocObject();
  *(v3 + v26) = sub_274BF2CF4();
  *(v3 + 4) = 0;
  v3[3] = [objc_allocWithZone(MEMORY[0x277CCA898]) init];
  v27 = [objc_opt_self() labelColor];
  OUTLINED_FUNCTION_4_10();
  *(v3 + *(v28 + 160)) = v29;
  if (!a2)
  {
    v30 = [objc_opt_self() preferredFontForTextStyle_];
  }

  OUTLINED_FUNCTION_4_10();
  *(v3 + *(v31 + 152)) = v32;
  v33 = *(v10 + 24);
  v34 = a2;
  v35 = v33(v11, v10);
  v36 = [objc_allocWithZone(MEMORY[0x277CCAB48]) initWithAttributedString_];

  OUTLINED_FUNCTION_7_12();
  sub_274B45BE4(v36);

  (*(*(v11 - 8) + 8))(a1, v11);
  return v3;
}

uint64_t type metadata accessor for AttributedTextFieldTransitionCoordinator()
{
  result = qword_28098BFC0;
  if (!qword_28098BFC0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_274B45814(uint64_t a1)
{
  v1 = MEMORY[0x28223BE20](a1);
  v3 = &v6 - v2;
  (*(v4 + 16))(&v6 - v2, v1);
  return sub_274B45944(v3);
}

uint64_t sub_274B458D4()
{
  OUTLINED_FUNCTION_1_2();
  sub_274B44AE4();
  OUTLINED_FUNCTION_1_2();
  return (*(*(v0 + 88) + 32))();
}

uint64_t sub_274B45944(uint64_t a1)
{
  OUTLINED_FUNCTION_19_4();
  v4 = *(v3 + 80);
  v5 = (*(*(v2 + 88) + 24))(v4);
  v6 = [objc_allocWithZone(MEMORY[0x277CCAB48]) initWithAttributedString_];

  OUTLINED_FUNCTION_7_12();
  sub_274B45BE4(v6);

  v7 = *(*(v4 - 8) + 8);

  return v7(a1, v4);
}

void (*sub_274B45A38(void *a1))(uint64_t a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v3;
  *v3 = v1;
  OUTLINED_FUNCTION_18();
  *(v5 + 8) = *(v4 + 80);
  OUTLINED_FUNCTION_0_5();
  *(v6 + 16) = v7;
  v9 = *(v8 + 64);
  v3[3] = __swift_coroFrameAllocStub(v9);
  v3[4] = __swift_coroFrameAllocStub(v9);
  sub_274B458D4();
  return sub_274B45B0C;
}

void sub_274B45B0C(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 24);
  v4 = *(*a1 + 32);
  if (a2)
  {
    v5 = v2[1];
    v6 = v2[2];
    (*(v6 + 16))(*(*a1 + 24), v4, v5);
    sub_274B45944(v3);
    (*(v6 + 8))(v4, v5);
  }

  else
  {
    sub_274B45944(*(*a1 + 32));
  }

  free(v4);
  free(v3);

  free(v2);
}

uint64_t sub_274B45BC0(uint64_t result, uint64_t a2)
{
  *(v2 + 56) = result;
  *(v2 + 64) = a2;
  *(v2 + 72) = 0;
  return result;
}

uint64_t sub_274B45BCC()
{
  result = *(v0 + 56);
  *(v0 + 56) = 0;
  *(v0 + 64) = 0;
  *(v0 + 72) = 1;
  return result;
}

void sub_274B45BE4(void *a1)
{
  v2 = v1;
  OUTLINED_FUNCTION_27_2();
  v5 = *v4;
  [v6 beginEditing];
  sub_274B45E38(a1);
  v7 = sub_274B4672C();
  v8 = *(v7 + 16);
  if (v8)
  {
    v9 = v7 + 40;
    do
    {
      v10 = *(v9 - 8);
      v15 = a1;

      v10(&v15);

      v9 += 16;
      --v8;
    }

    while (v8);
  }

  [a1 endEditing];
  v11 = sub_274B44AE4();
  v12 = [v11 isEqualToAttributedString_];

  if ((v12 & 1) == 0)
  {
    if (v5)
    {
      type metadata accessor for AttributedTextEditingSession();
      OUTLINED_FUNCTION_5_9();
      OUTLINED_FUNCTION_46();
      sub_274BF2CE4();
      sub_274BF2D04();
    }

    v13 = [a1 copy];
    if (v13)
    {
      sub_274B44B1C(v13);
      v14 = sub_274B44AE4();
      sub_274B474D4(v14);

      if (v5)
      {
        ++*(v2 + 16);
      }

      OUTLINED_FUNCTION_4_10();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098DE20);
      sub_274B48A20(qword_28098B360);
      sub_274BF2D14();
    }

    else
    {
      __break(1u);
    }
  }
}

uint64_t sub_274B45DC0()
{
  OUTLINED_FUNCTION_19_4();
  type metadata accessor for AttributedTextEditingSession();
  OUTLINED_FUNCTION_5_9();
  OUTLINED_FUNCTION_46();
  sub_274BF2CE4();
  sub_274BF2D04();

  ++*(v0 + 16);
  return result;
}

uint64_t sub_274B45E38(void *a1)
{
  v2 = v1;
  v4 = [a1 length];
  v5 = *MEMORY[0x277D740C0];
  OUTLINED_FUNCTION_35();
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = v2;
  OUTLINED_FUNCTION_35();
  v7 = swift_allocObject();
  *(v7 + 16) = sub_274B4887C;
  *(v7 + 24) = v6;
  v21 = sub_274B48AB4;
  v22 = v7;
  v17 = MEMORY[0x277D85DD0];
  v18 = 1107296256;
  v19 = sub_274B44878;
  v20 = &block_descriptor_74;
  v8 = _Block_copy(&v17);
  v9 = a1;

  [v9 enumerateAttribute:v5 inRange:0 options:v4 usingBlock:{0, v8}];
  _Block_release(v8);
  LOBYTE(v5) = swift_isEscapingClosureAtFileLocation();

  if (v5)
  {
    __break(1u);
    goto LABEL_5;
  }

  v11 = *MEMORY[0x277D740A8];
  OUTLINED_FUNCTION_35();
  v12 = swift_allocObject();
  *(v12 + 16) = v9;
  *(v12 + 24) = v2;
  OUTLINED_FUNCTION_35();
  v13 = swift_allocObject();
  *(v13 + 16) = sub_274B488F0;
  *(v13 + 24) = v12;
  v21 = sub_274B48AB4;
  v22 = v13;
  v17 = MEMORY[0x277D85DD0];
  v18 = 1107296256;
  v19 = sub_274B44878;
  v20 = &block_descriptor_84;
  v14 = _Block_copy(&v17);
  v15 = v9;

  [v15 &selRef:v11 systemLayoutSizeFittingSize:{0, v4, 0, v14}];
  _Block_release(v14);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
LABEL_5:
    __break(1u);
  }

  return result;
}

void sub_274B46104(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t *a7, uint64_t (*a8)(void))
{
  if (!*(a1 + 24))
  {
    v12 = *a7;
    v13 = a8();
    [a5 addAttribute:v12 value:v13 range:{a2, a3}];
  }
}

uint64_t sub_274B461A8@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_274BF2BE4();
  OUTLINED_FUNCTION_0_5();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_274B44F84();
  if (!v8)
  {
    sub_274BF2A54();
    v15 = sub_274BF2BD4();
    v16 = sub_274BF54A4();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_274AD4000, v15, v16, "Requested frame of an attachment, but the attachment locator is not set.", v17, 2u);
      MEMORY[0x277C664A0](v17, -1, -1);
    }

    result = (*(v4 + 8))(v7, v2);
    goto LABEL_8;
  }

  v9 = v8;
  sub_274B46390();
  if (!*&v20[0])
  {
    result = sub_274AD81C4(v9);
LABEL_8:
    v13 = 0uLL;
    v11 = 1;
    v14 = 0uLL;
    goto LABEL_9;
  }

  v10 = *&v20[0];
  v9(v20);
  v18 = v20[1];
  v19 = v20[0];
  v11 = v21;

  result = sub_274AD81C4(v9);
  v14 = v18;
  v13 = v19;
LABEL_9:
  *a1 = v13;
  *(a1 + 16) = v14;
  *(a1 + 32) = v11;
  return result;
}

uint64_t sub_274B46390()
{
  OUTLINED_FUNCTION_27_2();
  v0[1] = 0;
  v0[2] = 0;
  *v0 = 0;
  v5[1] = *(v1 + 80);
  v6 = v2;
  v7 = v3;
  v8 = v0;
  return sub_274B4646C(sub_274B47CBC, v5);
}

void sub_274B46400(void *a1, _BYTE *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t a5)
{
  v7 = *a1;
  v8 = a1[1];
  v9 = a1[2];
  if (a3(*a1))
  {
    v10 = *a5;
    *a5 = v7;
    *(a5 + 8) = v8;
    *(a5 + 16) = v9;
    v11 = v7;

    *a2 = 1;
  }
}

uint64_t sub_274B4646C(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = sub_274B44AE4();
  v7 = *MEMORY[0x277D74060];
  v8 = sub_274B44AE4();
  v9 = [v8 length];

  v10 = swift_allocObject();
  v10[2] = *(v5 + 80);
  v10[3] = *(v5 + 88);
  v10[4] = a1;
  v10[5] = a2;
  OUTLINED_FUNCTION_35();
  v11 = swift_allocObject();
  *(v11 + 16) = sub_274B47CCC;
  *(v11 + 24) = v10;
  v14[4] = sub_274B47CD8;
  v14[5] = v11;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 1107296256;
  v14[2] = sub_274B44878;
  v14[3] = &block_descriptor_6;
  v12 = _Block_copy(v14);

  [v6 enumerateAttribute:v7 inRange:0 options:v9 usingBlock:{0, v12}];

  _Block_release(v12);
  LOBYTE(v6) = swift_isEscapingClosureAtFileLocation();

  if (v6)
  {
    __break(1u);
  }

  return result;
}

void sub_274B4663C(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4, void (*a5)(void *, char *))
{
  v12 = 0;
  sub_274B489B0(a1, v11);
  if (v11[3])
  {
    swift_getAssociatedTypeWitness();
    if (swift_dynamicCast())
    {
      v11[0] = v10;
      v11[1] = a2;
      v11[2] = a3;
      v9 = v10;
      a5(v11, &v12);
    }
  }

  else
  {
    sub_274B48948(v11);
  }

  *a4 = v12;
}

uint64_t sub_274B4672C()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_9_1();
}

void sub_274B46770(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  OUTLINED_FUNCTION_35();
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  OUTLINED_FUNCTION_4_10();
  v8 = *(v7 + 176);
  OUTLINED_FUNCTION_14_3();

  sub_274B478E8(sub_274BBB0E4);
  v9 = *(*(v3 + v8) + 16);
  sub_274B03F08(v9);
  v10 = *(v3 + v8);
  *(v10 + 16) = v9 + 1;
  v11 = v10 + 16 * v9;
  *(v11 + 32) = sub_274B47D18;
  *(v11 + 40) = v6;
  *(v3 + v8) = v10;
  swift_endAccess();
  v12 = sub_274B44AE4();
  v13 = [v12 mutableCopy];

  if (v13)
  {
    sub_274B45BE4(v13);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_274B468B0(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_4_10();
  OUTLINED_FUNCTION_35();
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098DE20);
  OUTLINED_FUNCTION_6_10(qword_28098BE18);
  OUTLINED_FUNCTION_29_2();

  OUTLINED_FUNCTION_4_10();
  OUTLINED_FUNCTION_14_3();
  sub_274BF2CA4();
  swift_endAccess();
}

uint64_t sub_274B46A20(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_4_10();
  OUTLINED_FUNCTION_35();
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098DE20);
  OUTLINED_FUNCTION_6_10(qword_28098BE18);
  OUTLINED_FUNCTION_29_2();

  OUTLINED_FUNCTION_4_10();
  OUTLINED_FUNCTION_14_3();
  sub_274BF2CA4();
  swift_endAccess();
}

uint64_t sub_274B46B20(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = *(*v2 + 80);
  OUTLINED_FUNCTION_0_5();
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v7);
  v8 = sub_274B44AE4();
  v9 = [v8 attributedSubstringFromRange_];

  v10 = *(v5 + 88);
  v11 = *(v10 + 32);
  v12 = v9;
  v11();
  v13 = (*(v10 + 40))(v6, v10);

  v14 = OUTLINED_FUNCTION_4_8();
  v15(v14);
  return v13 & 1;
}

uint64_t sub_274B46C80(uint64_t a1, uint64_t a2)
{
  v5 = sub_274B46B20(a1, a2);
  if (v5)
  {
    sub_274B46FA4(0, a1, a2);
    *(v2 + 56) = a1;
    *(v2 + 64) = 0;
    *(v2 + 72) = 0;
  }

  return v5 & 1;
}

uint64_t sub_274B46CD4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v31 = a2;
  v32 = a1;
  OUTLINED_FUNCTION_19_4();
  v5 = *(v4 + 88);
  v7 = *(v6 + 80);
  OUTLINED_FUNCTION_26_2();
  swift_getAssociatedTypeWitness();
  v8 = OUTLINED_FUNCTION_30_2();
  OUTLINED_FUNCTION_0_5();
  v10 = v9;
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v11);
  v13 = &v29 - v12;
  sub_274BF5724();
  OUTLINED_FUNCTION_0_5();
  v29 = v15;
  v30 = v14;
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v16);
  v18 = &v29 - v17;
  OUTLINED_FUNCTION_0_5();
  v20 = v19;
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v21);
  v23 = &v29 - v22;
  sub_274B44DC0(v13);
  (*(v5 + 48))(v13, v7, v5);
  (*(v10 + 8))(v13, v8);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v18, 1, v7);
  if (EnumTagSinglePayload == 1)
  {
    (*(v29 + 8))(v18, v30);
    return EnumTagSinglePayload != 1;
  }

  (*(v20 + 32))(v23, v18, v7);
  v25 = (*(v5 + 24))(v7, v5);
  v26 = v32;
  sub_274B46FA4(v25, v32, v31);
  v27 = [v25 length];

  result = (*(v20 + 8))(v23, v7);
  if (!__OFADD__(v26, v27))
  {
    *(v3 + 56) = &v27[v26];
    *(v3 + 64) = 0;
    *(v3 + 72) = 0;
    return EnumTagSinglePayload != 1;
  }

  __break(1u);
  return result;
}

void sub_274B46FA4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_274B44AE4();
  v16 = [v6 attributedSubstringFromRange_];

  v7 = sub_274B44AE4();
  v8 = __OFADD__(a2, a3);
  v9 = a2 + a3;
  if (v8)
  {
    __break(1u);
    goto LABEL_9;
  }

  v10 = v7;
  v11 = sub_274B44AE4();
  v12 = [v11 length];

  if (__OFSUB__(v12, v9))
  {
LABEL_9:
    __break(1u);
    return;
  }

  v13 = [v10 attributedSubstringFromRange_];

  v14 = [objc_allocWithZone(MEMORY[0x277CCAB48]) initWithAttributedString_];
  v15 = v14;
  if (a1)
  {
    [v14 appendAttributedString_];
  }

  [v15 appendAttributedString_];
  OUTLINED_FUNCTION_7_12();
  sub_274B45BE4(v15);
}

uint64_t AttributedTextEditingSession.deinit()
{

  sub_274B295B0(*(v0 + 40), *(v0 + 48));
  OUTLINED_FUNCTION_18();
  v2 = *(v1 + 136);
  OUTLINED_FUNCTION_26_2();
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_30_2();
  OUTLINED_FUNCTION_0_2();
  (*(v3 + 8))(v0 + v2);
  OUTLINED_FUNCTION_18();
  sub_274AD81C4(*(v0 + *(v4 + 144)));
  OUTLINED_FUNCTION_18();

  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_18();

  OUTLINED_FUNCTION_18();

  OUTLINED_FUNCTION_18();

  OUTLINED_FUNCTION_18();

  OUTLINED_FUNCTION_18();

  OUTLINED_FUNCTION_18();

  return v0;
}

uint64_t AttributedTextEditingSession.__deallocating_deinit()
{
  AttributedTextEditingSession.deinit();
  OUTLINED_FUNCTION_27_2();
  v2 = *(v1 + 48);
  v3 = *(v1 + 52);

  return MEMORY[0x2821FE8D8](v0, v2, v3);
}

uint64_t sub_274B472CC@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for AttributedTextEditingSession();
  result = sub_274BF2CE4();
  *a1 = result;
  return result;
}

uint64_t sub_274B47344()
{
  sub_274BF5CD4();
  sub_274BF5D14();
  return sub_274BF5D44();
}

uint64_t sub_274B4738C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_274BF2D64();

  return v1;
}

uint64_t sub_274B47400()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_274BF2D74();
}

uint64_t sub_274B47484()
{
  sub_274BF5CD4();
  sub_274BF5D14();
  return sub_274BF5D44();
}

uint64_t sub_274B474D4(void *a1)
{
  v2 = [a1 containsAttachmentsInRange_];
  result = sub_274B4738C();
  if (v2 != result)
  {
    result = sub_274B47400();
    v4 = OBJC_IVAR____TtC14WorkflowUICore40AttributedTextFieldTransitionCoordinator_lastSelectedTextRangeMode;
    v5 = *(v1 + OBJC_IVAR____TtC14WorkflowUICore40AttributedTextFieldTransitionCoordinator_lastSelectedTextRangeMode);
    if (v5 == 2 || ((v2 ^ v5) & 1) != 0)
    {
      v7 = *(v1 + OBJC_IVAR____TtC14WorkflowUICore40AttributedTextFieldTransitionCoordinator_lastSelectedTextRange + 16);
      v8 = v1 + OBJC_IVAR____TtC14WorkflowUICore40AttributedTextFieldTransitionCoordinator_pendingSelectedTextRange;
      *v8 = *(v1 + OBJC_IVAR____TtC14WorkflowUICore40AttributedTextFieldTransitionCoordinator_lastSelectedTextRange);
      *(v8 + 16) = v7;
    }

    else
    {
      v6 = v1 + OBJC_IVAR____TtC14WorkflowUICore40AttributedTextFieldTransitionCoordinator_pendingSelectedTextRange;
      *v6 = 0;
      *(v6 + 8) = 0;
      *(v6 + 16) = 1;
    }

    v9 = v1 + OBJC_IVAR____TtC14WorkflowUICore40AttributedTextFieldTransitionCoordinator_lastSelectedTextRange;
    *v9 = 0;
    *(v9 + 8) = 0;
    *(v9 + 16) = 1;
    *(v1 + v4) = 2;
  }

  return result;
}

uint64_t sub_274B475AC(char a1)
{
  if ((a1 & 1) != sub_274B4738C())
  {
    return 0;
  }

  v2 = v1 + OBJC_IVAR____TtC14WorkflowUICore40AttributedTextFieldTransitionCoordinator_pendingSelectedTextRange;
  result = *(v1 + OBJC_IVAR____TtC14WorkflowUICore40AttributedTextFieldTransitionCoordinator_pendingSelectedTextRange);
  if ((*(v1 + OBJC_IVAR____TtC14WorkflowUICore40AttributedTextFieldTransitionCoordinator_pendingSelectedTextRange + 16) & 1) == 0)
  {
    *v2 = 0;
    *(v2 + 8) = 0;
    *(v2 + 16) = 1;
    *(v1 + OBJC_IVAR____TtC14WorkflowUICore40AttributedTextFieldTransitionCoordinator_lastSelectedTextRangeMode) = 2;
  }

  return result;
}

uint64_t sub_274B47624(uint64_t a1, uint64_t a2, char a3, char a4)
{
  result = sub_274B4738C();
  if ((a4 & 1) == result)
  {
    v10 = v4 + OBJC_IVAR____TtC14WorkflowUICore40AttributedTextFieldTransitionCoordinator_lastSelectedTextRange;
    *v10 = a1;
    *(v10 + 8) = a2;
    *(v10 + 16) = a3 & 1;
    *(v4 + OBJC_IVAR____TtC14WorkflowUICore40AttributedTextFieldTransitionCoordinator_lastSelectedTextRangeMode) = result;
  }

  return result;
}

uint64_t sub_274B47694()
{
  v1 = OBJC_IVAR____TtC14WorkflowUICore40AttributedTextFieldTransitionCoordinator__mode;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098BFF0);
  OUTLINED_FUNCTION_0_2();
  (*(v2 + 8))(v0 + v1);
  OUTLINED_FUNCTION_27_2();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);

  return MEMORY[0x2821FE8D8](v0, v4, v5);
}

uint64_t sub_274B47730()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098BFF0);
  OUTLINED_FUNCTION_0_5();
  v3 = v2;
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v4);
  v6 = &v11[-v5];
  v7 = OBJC_IVAR____TtC14WorkflowUICore40AttributedTextFieldTransitionCoordinator__mode;
  v11[15] = 0;
  sub_274BF2D24();
  (*(v3 + 32))(v0 + v7, v6, v1);
  v8 = v0 + OBJC_IVAR____TtC14WorkflowUICore40AttributedTextFieldTransitionCoordinator_pendingSelectedTextRange;
  *v8 = 0;
  *(v8 + 8) = 0;
  *(v8 + 16) = 1;
  *(v0 + OBJC_IVAR____TtC14WorkflowUICore40AttributedTextFieldTransitionCoordinator_lastSelectedTextRangeMode) = 2;
  v9 = v0 + OBJC_IVAR____TtC14WorkflowUICore40AttributedTextFieldTransitionCoordinator_lastSelectedTextRange;
  *v9 = 0;
  *(v9 + 8) = 0;
  *(v9 + 16) = 1;
  return v0;
}

uint64_t sub_274B47854@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for AttributedTextFieldTransitionCoordinator();
  result = sub_274BF2CE4();
  *a1 = result;
  return result;
}

uint64_t sub_274B478E8(uint64_t (*a1)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v1 = v3;
  if (!result)
  {
    result = a1(result, *(v3 + 16) + 1, 1, v3);
    *v1 = result;
  }

  return result;
}

void sub_274B47944(unint64_t a1)
{
  v4 = a1;
  if (sub_274B22B94(a1))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098BFE8);
    OUTLINED_FUNCTION_46();
    v1 = v5;
    v6 = sub_274BF5954();
  }

  else
  {
    v6 = MEMORY[0x277D84FA0];
  }

  v18 = sub_274B19804(v4);
  if (v18)
  {
    OUTLINED_FUNCTION_11_5();
    while (1)
    {
      v7 = OUTLINED_FUNCTION_23_2();
      sub_274B17EC8(v7, v8);
      v9 = v1 ? MEMORY[0x277C65230](v2, v4) : *(v16 + 8 * v2);
      v10 = v9;
      v11 = __OFADD__(v2++, 1);
      if (v11)
      {
        break;
      }

      v1 = v9;
      sub_274BF5614();
      OUTLINED_FUNCTION_25_2();
      while (1)
      {
        OUTLINED_FUNCTION_22_1();
        if (v13)
        {
          break;
        }

        sub_274AD8430(0, &qword_28098B318);
        v14 = *(*(v6 + 48) + 8 * v3);
        v1 = sub_274BF5624();

        if (v1)
        {

          goto LABEL_17;
        }
      }

      OUTLINED_FUNCTION_15_4(v12);
      if (v11)
      {
        goto LABEL_20;
      }

      *(v6 + 16) = v15;
LABEL_17:
      v4 = v17;
      if (v2 == v18)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
  }

  else
  {
LABEL_18:
  }
}

uint64_t sub_274B47AAC(unint64_t a1)
{
  v1 = a1;
  if (sub_274B22B94(a1))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098C000);
    v2 = sub_274BF5954();
  }

  else
  {
    v2 = MEMORY[0x277D84FA0];
  }

  v18 = sub_274B19804(v1);
  if (v18)
  {
    v3 = 0;
    v4 = v2 + 56;
    v16 = v1;
    v17 = v1 & 0xC000000000000001;
    v15 = v1 + 32;
    while (1)
    {
      sub_274B17EC8(v3, v17 == 0);
      if (v17)
      {
        result = MEMORY[0x277C65230](v3, v1);
        v6 = result;
      }

      else
      {
        v6 = *(v15 + 8 * v3);
      }

      v7 = __OFADD__(v3++, 1);
      if (v7)
      {
        break;
      }

      sub_274BF2CB4();
      sub_274B48A6C(&qword_28098C008);
      result = sub_274BF4E94();
      v8 = ~(-1 << *(v2 + 32));
      while (1)
      {
        v9 = result & v8;
        v10 = (result & v8) >> 6;
        v11 = *(v4 + 8 * v10);
        v12 = 1 << (result & v8);
        if ((v12 & v11) == 0)
        {
          break;
        }

        sub_274B48A6C(&qword_28098C010);
        if (sub_274BF4EF4())
        {

          goto LABEL_17;
        }

        result = v9 + 1;
      }

      *(v4 + 8 * v10) = v12 | v11;
      *(*(v2 + 48) + 8 * v9) = v6;
      v13 = *(v2 + 16);
      v7 = __OFADD__(v13, 1);
      v14 = v13 + 1;
      if (v7)
      {
        goto LABEL_20;
      }

      *(v2 + 16) = v14;
LABEL_17:
      v1 = v16;
      if (v3 == v18)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
  }

  else
  {
LABEL_18:

    return v2;
  }

  return result;
}

uint64_t block_copy_helper_6(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_274B47DB0()
{
  swift_getAssociatedTypeWitness();
  result = sub_274BF5724();
  if (v1 <= 0x3F)
  {
    return swift_initClassMetadata2();
  }

  return result;
}

uint64_t sub_274B48310()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

void sub_274B4836C()
{
  sub_274B48410();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_274B48410()
{
  if (!qword_28098BFD0)
  {
    v0 = sub_274BF2D94();
    if (!v1)
    {
      atomic_store(v0, &qword_28098BFD0);
    }
  }
}

uint64_t get_enum_tag_for_layout_string_14WorkflowUICore29TextEditorContentDisplayStyleO(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_274B48484(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 16))
  {
    return (*a1 + 2147483646);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  if ((v4 + 1) >= 2)
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_274B484E0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 1;
    }
  }

  return result;
}

void *sub_274B4853C(void *result, unsigned int a2)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    result[1] = 0;
  }

  else if (a2)
  {
    result[1] = a2;
  }

  return result;
}

_BYTE *sub_274B48578(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_274B48668()
{
  result = qword_28098BFD8;
  if (!qword_28098BFD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28098BFD8);
  }

  return result;
}

unint64_t sub_274B486C0()
{
  result = qword_28098BFE0;
  if (!qword_28098BFE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28098BFE0);
  }

  return result;
}

void sub_274B48714(unint64_t a1)
{
  v4 = a1;
  if (sub_274B22B94(a1))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098BFF8);
    OUTLINED_FUNCTION_46();
    v1 = v5;
    v6 = sub_274BF5954();
  }

  else
  {
    v6 = MEMORY[0x277D84FA0];
  }

  v18 = sub_274B19804(v4);
  if (v18)
  {
    OUTLINED_FUNCTION_11_5();
    while (1)
    {
      v7 = OUTLINED_FUNCTION_23_2();
      sub_274B17EC8(v7, v8);
      v9 = v1 ? MEMORY[0x277C65230](v2, v4) : *(v16 + 8 * v2);
      v10 = v9;
      v11 = __OFADD__(v2++, 1);
      if (v11)
      {
        break;
      }

      v1 = v9;
      sub_274BF5614();
      OUTLINED_FUNCTION_25_2();
      while (1)
      {
        OUTLINED_FUNCTION_22_1();
        if (v13)
        {
          break;
        }

        sub_274AD8430(0, &qword_28098A118);
        v14 = *(*(v6 + 48) + 8 * v3);
        v1 = sub_274BF5624();

        if (v1)
        {

          goto LABEL_17;
        }
      }

      OUTLINED_FUNCTION_15_4(v12);
      if (v11)
      {
        goto LABEL_20;
      }

      *(v6 + 16) = v15;
LABEL_17:
      v4 = v17;
      if (v2 == v18)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
  }

  else
  {
LABEL_18:
  }
}

uint64_t objectdestroy_66Tm()
{

  OUTLINED_FUNCTION_35();

  return swift_deallocObject();
}

uint64_t sub_274B48928(uint64_t a1, void *a2)
{
  if (a2 != 2)
  {
    return sub_274B48938(a1, a2);
  }

  return a1;
}

id sub_274B48938(uint64_t a1, void *a2)
{
  if (a2 != 1)
  {
    return a2;
  }

  return result;
}

uint64_t sub_274B48948(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098B300);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_274B489B0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098B300);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_274B48A20(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28098DE20);
    OUTLINED_FUNCTION_46();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_274B48A6C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_274BF2CB4();
    OUTLINED_FUNCTION_46();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_6_10(unint64_t *a1)
{

  return sub_274B48A20(a1);
}

uint64_t OUTLINED_FUNCTION_13_7()
{

  return swift_beginAccess();
}

uint64_t sub_274B48B10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_274B48D74();

  return MEMORY[0x282130D40](a1, a2, a3, a4, v8);
}

uint64_t EnvironmentValues.triggerManager.getter()
{
  sub_274B48BB0();
  sub_274BF37A4();
  return v1;
}

unint64_t sub_274B48BB0()
{
  result = qword_28098C018;
  if (!qword_28098C018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28098C018);
  }

  return result;
}

void (*EnvironmentValues.triggerManager.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 16) = v1;
  *(a1 + 24) = sub_274B48BB0();
  sub_274BF37A4();
  return sub_274B48CD0;
}

void sub_274B48CD0(uint64_t a1, char a2)
{
  v2 = *a1;
  *(a1 + 8) = *a1;
  if (a2)
  {
    v4 = v2;
    sub_274BF37B4();
    v5 = *a1;
  }

  else
  {
    sub_274BF37B4();
  }
}

unint64_t sub_274B48D74()
{
  result = qword_28098C020;
  if (!qword_28098C020)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28098C028);
    sub_274B48DF8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28098C020);
  }

  return result;
}

unint64_t sub_274B48DF8()
{
  result = qword_28098C030;
  if (!qword_28098C030)
  {
    sub_274B48E50();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28098C030);
  }

  return result;
}

unint64_t sub_274B48E50()
{
  result = qword_28098C038;
  if (!qword_28098C038)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_28098C038);
  }

  return result;
}

uint64_t WFEmailAddressContentItem.preview(configuration:)()
{
  sub_274B48EDC();
  v1 = v0;
  return sub_274BF48B4();
}

unint64_t sub_274B48EDC()
{
  result = qword_28098C040;
  if (!qword_28098C040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28098C040);
  }

  return result;
}

id sub_274B48F88@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = sub_274BF3804();
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098C048);
  return sub_274B48FE0(a1, a2 + *(v4 + 44));
}

id sub_274B48FE0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v66 = a2;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098C050);
  MEMORY[0x28223BE20](v65);
  v4 = &v56 - v3;
  v5 = sub_274BF3C04();
  v60 = *(v5 - 8);
  v61 = v5;
  MEMORY[0x28223BE20](v5);
  v59 = &v56 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_274BF1D34();
  MEMORY[0x28223BE20](v7 - 8);
  v58 = &v56 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098C058);
  MEMORY[0x28223BE20](v64);
  v10 = &v56 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098EEE0);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v56 - v12;
  v14 = sub_274BF1F54();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v67 = &v56 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098C060);
  MEMORY[0x28223BE20](v17 - 8);
  v63 = &v56 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v20 = MEMORY[0x28223BE20](v19).n128_u64[0];
  v62 = &v56 - v21;
  v68 = 0x3A6F746C69616DLL;
  v69 = 0xE700000000000000;
  v22 = a1;
  result = [a1 emailAddress];
  if (result)
  {
    v24 = result;
    v25 = [result address];

    v26 = sub_274BF4F44();
    v28 = v27;

    MEMORY[0x277C648E0](v26, v28);

    sub_274BF1F34();

    if (__swift_getEnumTagSinglePayload(v13, 1, v14) != 1)
    {
      v38 = *(v15 + 32);
      v39 = v67;
      v57 = v14;
      v38(v67, v13, v14);
      sub_274B4968C(v22, v39);
      v40 = sub_274BF40F4();
      v42 = v41;
      v68 = v40;
      v69 = v41;
      v44 = v43 & 1;
      v70 = v43 & 1;
      v71 = v45;
      v46 = v59;
      sub_274BF3BF4();
      v47 = v61;
      sub_274BF4274();
      (*(v60 + 8))(v46, v47);
      sub_274AFA1D0(v40, v42, v44);

      KeyPath = swift_getKeyPath();
      v49 = &v10[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098BD40) + 36)];
      *v49 = KeyPath;
      v49[8] = 0;
      v50 = sub_274BF45B4();
      v51 = swift_getKeyPath();
      v52 = &v10[*(v64 + 36)];
      *v52 = v51;
      v52[1] = v50;
      sub_274B066B4(v10, v4, &qword_28098C058);
      swift_storeEnumTagMultiPayload();
      sub_274B498A8();
      v37 = v62;
      sub_274BF3A64();
      sub_274B0671C(v10, &qword_28098C058);
      (*(v15 + 8))(v67, v57);
      goto LABEL_6;
    }

    sub_274B43660(v13);
    result = [v22 emailAddress];
    if (result)
    {
      v29 = result;
      v30 = [result address];

      v31 = sub_274BF4F44();
      v33 = v32;

      v68 = v31;
      v69 = v33;
      sub_274ADDF6C();
      *v4 = sub_274BF4104();
      *(v4 + 1) = v34;
      v4[16] = v35 & 1;
      *(v4 + 3) = v36;
      swift_storeEnumTagMultiPayload();
      sub_274B498A8();
      v37 = v62;
      sub_274BF3A64();
LABEL_6:
      v53 = v63;
      sub_274B066B4(v37, v63, &qword_28098C060);
      v54 = v66;
      sub_274B066B4(v53, v66, &qword_28098C060);
      v55 = v54 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098C070) + 48);
      *v55 = 0;
      *(v55 + 8) = 1;
      sub_274B0671C(v37, &qword_28098C060);
      return sub_274B0671C(v53, &qword_28098C060);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

id sub_274B4968C(void *a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098EEE0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = v15 - v8;
  v10 = sub_274BF1DA4();
  result = [a1 emailAddress];
  if (result)
  {
    v12 = result;
    v13 = [result address];

    sub_274BF4F44();
    sub_274BF1D94();
    sub_274BF1D44();
    v14 = sub_274BF1F54();
    (*(*(v14 - 8) + 16))(v9, a2, v14);
    __swift_storeEnumTagSinglePayload(v9, 0, 1, v14);
    sub_274B4359C(v9, v6);
    sub_274B4360C();
    sub_274BF1D54();
    sub_274B43660(v9);
    v15[1] = sub_274BF45B4();
    sub_274B436C8();
    return sub_274BF1D54();
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_274B498A8()
{
  result = qword_28098C068;
  if (!qword_28098C068)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28098C058);
    sub_274B434A0();
    sub_274AFA930(&qword_2815A2F88, &qword_280989AC8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28098C068);
  }

  return result;
}

uint64_t View.quickLookPreview(contentItem:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  v11 = MEMORY[0x28223BE20](a1);
  v13 = &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v14 + 16))(v13, v5, v15, v11);
  sub_274B49A70(v13, a1, a2, a3, 0, a4, a5);
  v16 = a3;
}

uint64_t sub_274B49A70@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char *a7@<X8>)
{
  v14 = type metadata accessor for ContentItemQuickLookModal();
  result = (*(*(a6 - 8) + 32))(&a7[*(v14 + 40)], a1, a6);
  *a7 = a2;
  *(a7 + 1) = a3;
  *(a7 + 2) = a4;
  *(a7 + 3) = a5;
  return result;
}

uint64_t View.quickLookPreview(contentItem:allContentItems:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char *a6@<X8>)
{
  v13 = MEMORY[0x28223BE20](a1);
  v15 = &v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v16 + 16))(v15, v6, v17, v13);
  sub_274B49A70(v15, a1, a2, a3, a4, a5, a6);
  v18 = a3;
}

void sub_274B49C4C()
{
  sub_274B4A124(319, &qword_28098C108, &qword_28098AA48, &unk_274BFCB60, MEMORY[0x277CE11F8]);
  if (v0 <= 0x3F)
  {
    sub_274B4A124(319, &qword_28098C110, qword_28098C118, &unk_274BFF7A8, MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      swift_checkMetadataState();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_274B49D44(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(v4 - 8);
  v6 = *(v5 + 84);
  v7 = *(v5 + 80);
  if (v6 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v5 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v9 = a2 - v8;
  if (a2 <= v8)
  {
    goto LABEL_23;
  }

  v10 = ((v7 + 32) & ~v7) + *(*(v4 - 8) + 64);
  v11 = 8 * v10;
  if (v10 <= 3)
  {
    v14 = ((v9 + ~(-1 << v11)) >> v11) + 1;
    if (HIWORD(v14))
    {
      v12 = *(a1 + v10);
      if (!v12)
      {
        goto LABEL_23;
      }

      goto LABEL_15;
    }

    if (v14 > 0xFF)
    {
      v12 = *(a1 + v10);
      if (!*(a1 + v10))
      {
        goto LABEL_23;
      }

      goto LABEL_15;
    }

    if (v14 < 2)
    {
LABEL_23:
      if ((v6 & 0x80000000) != 0)
      {
        return __swift_getEnumTagSinglePayload((((a1 + 31) & 0xFFFFFFFFFFFFFFF8) + v7 + 8) & ~v7, v6, v4);
      }

      v16 = *(a1 + 1);
      if (v16 >= 0xFFFFFFFF)
      {
        LODWORD(v16) = -1;
      }

      return (v16 + 1);
    }
  }

  v12 = *(a1 + v10);
  if (!*(a1 + v10))
  {
    goto LABEL_23;
  }

LABEL_15:
  v15 = (v12 - 1) << v11;
  if (v10 > 3)
  {
    v15 = 0;
  }

  if (v10)
  {
    if (v10 > 3)
    {
      LODWORD(v10) = 4;
    }

    switch(v10)
    {
      case 2:
        LODWORD(v10) = *a1;
        break;
      case 3:
        LODWORD(v10) = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        LODWORD(v10) = *a1;
        break;
      default:
        LODWORD(v10) = *a1;
        break;
    }
  }

  return v8 + (v10 | v15) + 1;
}

void sub_274B49ECC(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  if (v8 <= 0x7FFFFFFF)
  {
    v9 = 0x7FFFFFFF;
  }

  else
  {
    v9 = *(v7 + 84);
  }

  v10 = *(v7 + 80);
  v11 = ((v10 + 32) & ~v10) + *(*(v6 - 8) + 64);
  v12 = 8 * v11;
  v13 = a3 >= v9;
  v14 = a3 - v9;
  if (v14 != 0 && v13)
  {
    if (v11 <= 3)
    {
      v18 = ((v14 + ~(-1 << v12)) >> v12) + 1;
      if (HIWORD(v18))
      {
        v15 = 4;
      }

      else
      {
        if (v18 < 0x100)
        {
          v19 = 1;
        }

        else
        {
          v19 = 2;
        }

        if (v18 >= 2)
        {
          v15 = v19;
        }

        else
        {
          v15 = 0;
        }
      }
    }

    else
    {
      v15 = 1;
    }
  }

  else
  {
    v15 = 0;
  }

  if (v9 >= a2)
  {
    switch(v15)
    {
      case 1:
        a1[v11] = 0;
        if (a2)
        {
          goto LABEL_27;
        }

        break;
      case 2:
        *&a1[v11] = 0;
        if (a2)
        {
          goto LABEL_27;
        }

        break;
      case 3:
LABEL_44:
        __break(1u);
        break;
      case 4:
        *&a1[v11] = 0;
        goto LABEL_26;
      default:
LABEL_26:
        if (a2)
        {
LABEL_27:
          if ((v8 & 0x80000000) != 0)
          {
            v21 = (((a1 + 31) & 0xFFFFFFFFFFFFFFF8) + v10 + 8) & ~v10;

            __swift_storeEnumTagSinglePayload(v21, a2, v8, v6);
          }

          else if ((a2 & 0x80000000) != 0)
          {
            *(a1 + 1) = 0;
            *(a1 + 2) = 0;
            *a1 = a2 & 0x7FFFFFFF;
          }

          else
          {
            *(a1 + 1) = (a2 - 1);
          }
        }

        break;
    }
  }

  else
  {
    v16 = ~v9 + a2;
    if (v11 < 4)
    {
      v17 = (v16 >> v12) + 1;
      if (v11)
      {
        v20 = v16 & ~(-1 << v12);
        bzero(a1, v11);
        if (v11 == 3)
        {
          *a1 = v20;
          a1[2] = BYTE2(v20);
        }

        else if (v11 == 2)
        {
          *a1 = v20;
        }

        else
        {
          *a1 = v16;
        }
      }
    }

    else
    {
      bzero(a1, v11);
      *a1 = v16;
      v17 = 1;
    }

    switch(v15)
    {
      case 1:
        a1[v11] = v17;
        break;
      case 2:
        *&a1[v11] = v17;
        break;
      case 3:
        goto LABEL_44;
      case 4:
        *&a1[v11] = v17;
        break;
      default:
        return;
    }
  }
}

void sub_274B4A124(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_274B4A1CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = *(a1 + 16);
  v77 = *(a1 + 24);
  v78 = a2;
  v6 = type metadata accessor for ContentItemQuickLookModalContent();
  v7 = sub_274BF3A74();
  v72 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v71 = &v62 - v8;
  v66 = *(a1 - 8);
  MEMORY[0x28223BE20](v9);
  v67 = v10;
  v68 = &v62 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(v5 - 8);
  MEMORY[0x28223BE20](v12);
  v65 = &v62 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v62 - v15;
  v70 = *(v6 - 8);
  MEMORY[0x28223BE20](v17);
  v19 = &v62 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v69 = &v62 - v21;
  v76 = v22;
  v23 = v5;
  v24 = sub_274BF3A74();
  v74 = *(v24 - 8);
  v75 = v24;
  MEMORY[0x28223BE20](v24);
  v73 = &v62 - v25;
  v26 = *(v3 + 3);
  if (v26 && sub_274B22B94(*(v3 + 3)))
  {
    v27 = *(v3 + 2);
    v90 = *v3;
    v91 = v27;

    v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098A110);
    MEMORY[0x277C64160](&v89, v28);
    v29 = v89;
    if (v89)
    {
      v30 = *(v11 + 16);
      v31 = v3 + *(a1 + 40);
      v64 = v16;
      v32 = v23;
      v63 = v23;
      v30(v16, v31, v23);
      v33 = v66;
      v34 = v68;
      (*(v66 + 16))(v68, v3, a1);
      v35 = (*(v33 + 80) + 32) & ~*(v33 + 80);
      v36 = swift_allocObject();
      *(v36 + 16) = v32;
      v37 = v77;
      *(v36 + 24) = v77;
      (*(v33 + 32))(v36 + v35, v34, a1);
      v68 = v29;
      sub_274B4AAE4(v64, v68, v26, sub_274B4C590, v36, v63, v19);
      WitnessTable = swift_getWitnessTable();
      v39 = v69;
      sub_274ADB48C(v19, v6, WitnessTable);
      v40 = *(v70 + 8);
      v40(v19, v6);
      sub_274ADB48C(v39, v6, WitnessTable);
      v41 = v71;
      sub_274ADB9A0();
      v79 = WitnessTable;
      v80 = WitnessTable;
      v42 = v76;
      swift_getWitnessTable();
      v43 = v73;
      goto LABEL_8;
    }
  }

  v44 = *(v3 + 2);
  v90 = *v3;
  v91 = v44;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098A110);
  MEMORY[0x277C64160](&v89, v45);
  v46 = v89;
  if (!v89)
  {
    v55 = v16;
    v56 = v23;
    v37 = v77;
    sub_274ADB48C(v3 + *(a1 + 40), v23, v77);
    v57 = v65;
    sub_274ADB48C(v16, v56, v37);
    v87 = swift_getWitnessTable();
    v88 = v87;
    swift_getWitnessTable();
    v43 = v73;
    sub_274B2CC88();
    v58 = *(v11 + 8);
    v58(v57, v56);
    v58(v55, v56);
    goto LABEL_10;
  }

  v47 = v66;
  (*(v11 + 16))(v16, v3 + *(a1 + 40), v23);
  v48 = v68;
  (*(v47 + 16))(v68, v3, a1);
  v49 = (*(v47 + 80) + 32) & ~*(v47 + 80);
  v50 = swift_allocObject();
  *(v50 + 16) = v23;
  v67 = v6;
  v51 = v23;
  v52 = v77;
  *(v50 + 24) = v77;
  (*(v47 + 32))(v50 + v49, v48, a1);
  v68 = v46;
  v53 = v51;
  v6 = v67;
  sub_274B4AAE4(v16, v68, 0, sub_274B4AC6C, v50, v53, v19);
  v54 = swift_getWitnessTable();
  v39 = v69;
  sub_274ADB48C(v19, v6, v54);
  v40 = *(v70 + 8);
  v40(v19, v6);
  sub_274ADB48C(v39, v6, v54);
  v41 = v71;
  sub_274B2CC88();
  v81 = v54;
  v82 = v54;
  v42 = v76;
  swift_getWitnessTable();
  v43 = v73;
  v37 = v52;
LABEL_8:
  sub_274ADB9A0();

  (*(v72 + 8))(v41, v42);
  v40(v19, v6);
  v40(v39, v6);
LABEL_10:
  v85 = swift_getWitnessTable();
  v86 = v85;
  v83 = swift_getWitnessTable();
  v84 = v37;
  v59 = v75;
  v60 = swift_getWitnessTable();
  sub_274ADB48C(v43, v59, v60);
  return (*(v74 + 8))(v43, v59);
}

id sub_274B4AAE4@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  (*(*(a6 - 8) + 32))(a7, a1, a6);
  v11 = type metadata accessor for ContentItemQuickLookModalContent();
  *(a7 + v11[9]) = a2;
  *(a7 + v11[10]) = a3;
  v12 = (a7 + v11[11]);
  *v12 = a4;
  v12[1] = a5;
  v13 = swift_allocObject();
  *(v13 + 16) = a2;
  *(v13 + 24) = a3;
  v14 = a7 + v11[12];
  *v14 = sub_274B4BDAC;
  *(v14 + 8) = v13;
  *(v14 + 16) = 0;

  return a2;
}

uint64_t sub_274B4AC70(void *a1, uint64_t a2)
{
  type metadata accessor for ContentItemQuickLookModel();
  swift_allocObject();

  return sub_274B82274(a1, a2, 0);
}

id sub_274B4ACD0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v126 = a2;
  v4 = *(a1 + 24);
  v144 = *(a1 + 16);
  v5 = v144;
  v145 = v4;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v139 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x28223BE20](OpaqueTypeMetadata2);
  v116 = (&v113 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v8);
  v115 = &v113 - v9;
  v129 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098EEE0);
  MEMORY[0x28223BE20](v129);
  v11 = &v113 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v113 - v13;
  v141 = sub_274BF1F54();
  v132 = *(v141 - 1);
  MEMORY[0x28223BE20](v141);
  v130 = a1;
  v131 = &v113 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v128 = *(a1 - 8);
  MEMORY[0x28223BE20](v16);
  v136 = v17;
  v137 = &v113 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098C1B0);
  MEMORY[0x28223BE20](v18 - 8);
  v114 = (&v113 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v20);
  v121 = &v113 - v21;
  v22 = *(v5 - 1);
  MEMORY[0x28223BE20](v23);
  v25 = &v113 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28098C1B8);
  v27 = sub_274B4C328();
  v144 = v5;
  v145 = v26;
  v133 = v27;
  v134 = v26;
  v138 = v4;
  v146 = v4;
  v147 = v27;
  v28 = swift_getOpaqueTypeMetadata2();
  v120 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v119 = &v113 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30);
  v117 = &v113 - v31;
  MEMORY[0x28223BE20](v32);
  v118 = &v113 - v33;
  v122 = v34;
  v140 = OpaqueTypeMetadata2;
  v125 = sub_274BF3A74();
  v124 = *(v125 - 8);
  MEMORY[0x28223BE20](v125);
  v123 = &v113 - v35;
  type metadata accessor for ContentItemQuickLookModel();
  sub_274B4C28C();
  v36 = *(sub_274BF2F94() + 40);

  v135 = v5;
  v127 = v2;
  if (v36)
  {
    v114 = v22;
    v37 = v22[2];
    v113 = v25;
    (v37)(v25, v2, v5);
    v38 = v128;
    v39 = *(v128 + 16);
    v115 = (v128 + 16);
    v116 = v39;
    v40 = v130;
    v39(v137, v2, v130);
    sub_274BF51E4();
    v41 = sub_274BF51D4();
    v42 = (*(v38 + 80) + 48) & ~*(v38 + 80);
    v43 = swift_allocObject();
    v139 = v36;
    v44 = MEMORY[0x277D85700];
    v43[2] = v41;
    v43[3] = v44;
    v45 = v138;
    v43[4] = v5;
    v43[5] = v45;
    v46 = *(v38 + 32);
    v47 = v42;
    v48 = v43 + v42;
    v49 = v137;
    v46(v48, v137, v40);
    v116(v49, v127, v40);
    v50 = sub_274BF51D4();
    v51 = swift_allocObject();
    *(v51 + 2) = v50;
    v52 = v135;
    *(v51 + 3) = MEMORY[0x277D85700];
    *(v51 + 4) = v52;
    v53 = v137;
    *(v51 + 5) = v138;
    v46(&v51[v47], v53, v40);
    v54 = v121;
    v55 = v139;
    sub_274BF48F4();
    result = sub_274B22B94(v55);
    v57 = result;
    v58 = 0;
    v59 = v55 & 0xC000000000000001;
    v60 = v55 & 0xFFFFFFFFFFFFFF8;
    v136 = (v132 + 32);
    v137 = MEMORY[0x277D84F90];
LABEL_3:
    for (i = v54; ; i = v54)
    {
      if (v57 == v58)
      {

        v144 = v137;
        v73 = v117;
        v74 = i;
        v75 = v135;
        v76 = v134;
        v77 = v138;
        v78 = v133;
        v79 = v113;
        sub_274BF4124();

        sub_274B0671C(v74, &qword_28098C1B0);
        v114[1](v79, v75);
        v144 = v75;
        v145 = v76;
        v146 = v77;
        v147 = v78;
        OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
        v81 = v118;
        v82 = v122;
        sub_274ADB48C(v73, v122, OpaqueTypeConformance2);
        v83 = *(v120 + 8);
        v83(v73, v82);
        v84 = v119;
        sub_274ADB48C(v81, v82, OpaqueTypeConformance2);
        v144 = v75;
        v145 = v77;
        swift_getOpaqueTypeConformance2();
        v85 = v123;
        sub_274ADB9A0();
        v83(v84, v82);
        v83(v81, v82);
        v87 = v133;
        v86 = v134;
        goto LABEL_22;
      }

      if (v59)
      {
        result = MEMORY[0x277C65230](v58, v55);
      }

      else
      {
        if (v58 >= *(v60 + 16))
        {
          goto LABEL_24;
        }

        result = *(v55 + 8 * v58 + 32);
      }

      v62 = result;
      v63 = v58 + 1;
      if (__OFADD__(v58, 1))
      {
        break;
      }

      v64 = [result previewItemURL];
      if (v64)
      {
        v65 = v64;
        sub_274BF1F04();

        v66 = 0;
      }

      else
      {
        v66 = 1;
      }

      v67 = v141;
      __swift_storeEnumTagSinglePayload(v11, v66, 1, v141);
      sub_274AF7970(v11, v14);
      if (__swift_getEnumTagSinglePayload(v14, 1, v67) != 1)
      {
        v68 = *v136;
        (*v136)(v131, v14, v141);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_274BBB1A8();
          v137 = v71;
        }

        v69 = *(v137 + 2);
        if (v69 >= *(v137 + 3) >> 1)
        {
          sub_274BBB1A8();
          v137 = v72;
        }

        v70 = v137;
        *(v137 + 2) = v69 + 1;
        result = v68(&v70[((*(v132 + 80) + 32) & ~*(v132 + 80)) + *(v132 + 72) * v69], v131, v141);
        v58 = v63;
        v55 = v139;
        goto LABEL_3;
      }

      result = sub_274B0671C(v14, &qword_28098EEE0);
      ++v58;
      v55 = v139;
    }

    __break(1u);
LABEL_24:
    __break(1u);
  }

  else
  {
    v88 = v128;
    v141 = *(v128 + 16);
    v89 = v137;
    v90 = v130;
    (v141)(v137, v2, v130);
    sub_274BF51E4();
    v91 = sub_274BF51D4();
    v92 = (*(v88 + 80) + 48) & ~*(v88 + 80);
    v93 = swift_allocObject();
    v94 = MEMORY[0x277D85700];
    v93[2] = v91;
    v93[3] = v94;
    v95 = v138;
    v93[4] = v5;
    v93[5] = v95;
    v132 = *(v88 + 32);
    (v132)(v93 + v92, v89, v90);
    (v141)(v89, v127, v90);
    v96 = sub_274BF51D4();
    v97 = swift_allocObject();
    v97[2] = v96;
    v98 = v135;
    v97[3] = MEMORY[0x277D85700];
    v97[4] = v98;
    v99 = v138;
    v97[5] = v138;
    (v132)(v97 + v92, v89, v90);
    v75 = v135;
    v100 = v114;
    sub_274BF48F4();
    v101 = v116;
    sub_274BF4134();
    sub_274B0671C(v100, &qword_28098C1B0);
    v144 = v75;
    v145 = v99;
    v102 = v99;
    v103 = swift_getOpaqueTypeConformance2();
    v104 = v115;
    v105 = v140;
    sub_274ADB48C(v101, v140, v103);
    v106 = *(v139 + 8);
    v106(v101, v105);
    sub_274ADB48C(v104, v105, v103);
    v107 = v134;
    v144 = v75;
    v145 = v134;
    v146 = v102;
    v87 = v133;
    v147 = v133;
    swift_getOpaqueTypeConformance2();
    v108 = v123;
    sub_274B2CC88();
    v106(v101, v105);
    v106(v104, v105);
    v77 = v138;
    v86 = v107;
    v85 = v108;
LABEL_22:
    v144 = v75;
    v145 = v86;
    v146 = v77;
    v147 = v87;
    v109 = swift_getOpaqueTypeConformance2();
    v144 = v75;
    v145 = v77;
    v110 = swift_getOpaqueTypeConformance2();
    v142 = v109;
    v143 = v110;
    v111 = v125;
    WitnessTable = swift_getWitnessTable();
    sub_274ADB48C(v85, v111, WitnessTable);
    return (*(v124 + 8))(v85, v111);
  }

  return result;
}

uint64_t sub_274B4BAC0@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for ContentItemQuickLookModalContent();
  type metadata accessor for ContentItemQuickLookModel();
  sub_274B4C28C();
  v2 = *(sub_274BF2F94() + 32);

  v3 = [v2 previewItemURL];

  if (v3)
  {
    sub_274BF1F04();

    v4 = 0;
  }

  else
  {
    v4 = 1;
  }

  v5 = sub_274BF1F54();

  return __swift_storeEnumTagSinglePayload(a1, v4, 1, v5);
}

uint64_t sub_274B4BBBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_274BF1F54();
  result = __swift_getEnumTagSinglePayload(a1, 1, v6);
  if (result == 1)
  {
    v8 = type metadata accessor for ContentItemQuickLookModalContent();
    return (*(a4 + *(v8 + 44)))();
  }

  return result;
}

uint64_t objectdestroyTm_6()
{
  v2 = *(v0 + 16);
  type metadata accessor for ContentItemQuickLookModal();
  OUTLINED_FUNCTION_0_15();
  v4 = v0 + ((*(v3 + 80) + 32) & ~*(v3 + 80));

  (*(*(v2 - 8) + 8))(v4 + *(v1 + 48), v2);

  return swift_deallocObject();
}

void sub_274B4BDBC()
{
  swift_checkMetadataState();
  if (v0 <= 0x3F)
  {
    sub_274B08760();
    if (v1 <= 0x3F)
    {
      sub_274B4A124(319, &qword_28098C110, qword_28098C118, &unk_274BFF7A8, MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        sub_274AD8470();
        if (v3 <= 0x3F)
        {
          sub_274B4C228();
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t sub_274B4BEB8(uint64_t result, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(*(v4 - 8) + 84);
  v6 = *(*(v4 - 8) + 64);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(*(v4 - 8) + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
LABEL_26:
    if (v5 < 0x7FFFFFFF)
    {
      v16 = *((result + v6 + 7) & 0xFFFFFFFFFFFFFFF8);
      if (v16 >= 0xFFFFFFFF)
      {
        LODWORD(v16) = -1;
      }

      return (v16 + 1);
    }

    else
    {
      return __swift_getEnumTagSinglePayload(result, v5, v4);
    }
  }

  else
  {
    v8 = ((((((((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 17;
    v9 = (a2 - v7 + 255) >> 8;
    if (v8 <= 3)
    {
      v10 = v9 + 1;
    }

    else
    {
      v10 = 2;
    }

    if (v10 >= 0x10000)
    {
      v11 = 4;
    }

    else
    {
      v11 = 2;
    }

    if (v10 < 0x100)
    {
      v11 = 1;
    }

    if (v10 >= 2)
    {
      v12 = v11;
    }

    else
    {
      v12 = 0;
    }

    switch(v12)
    {
      case 1:
        v13 = *(result + v8);
        if (!*(result + v8))
        {
          goto LABEL_26;
        }

        goto LABEL_22;
      case 2:
        v13 = *(result + v8);
        if (!*(result + v8))
        {
          goto LABEL_26;
        }

        goto LABEL_22;
      case 3:
        __break(1u);
        return result;
      case 4:
        v13 = *(result + v8);
        if (!v13)
        {
          goto LABEL_26;
        }

LABEL_22:
        v14 = (v13 - 1) << (8 * v8);
        if (v8 <= 3)
        {
          v15 = *result;
        }

        else
        {
          v14 = 0;
          v15 = *result;
        }

        result = v7 + (v15 | v14) + 1;
        break;
      default:
        goto LABEL_26;
    }
  }

  return result;
}

void sub_274B4C024(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v7 = *(*(v6 - 8) + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(*(v6 - 8) + 84);
  }

  v9 = *(*(v6 - 8) + 64);
  v10 = ((((((((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 17;
  if (v8 >= a3)
  {
    v14 = 0;
  }

  else
  {
    v11 = (a3 - v8 + 255) >> 8;
    if (v10 <= 3)
    {
      v12 = v11 + 1;
    }

    else
    {
      v12 = 2;
    }

    if (v12 >= 0x10000)
    {
      v13 = 4;
    }

    else
    {
      v13 = 2;
    }

    if (v12 < 0x100)
    {
      v13 = 1;
    }

    if (v12 >= 2)
    {
      v14 = v13;
    }

    else
    {
      v14 = 0;
    }
  }

  if (v8 >= a2)
  {
    switch(v14)
    {
      case 1:
        a1[v10] = 0;
        if (a2)
        {
          goto LABEL_31;
        }

        break;
      case 2:
        *&a1[v10] = 0;
        if (a2)
        {
          goto LABEL_31;
        }

        break;
      case 3:
LABEL_44:
        __break(1u);
        break;
      case 4:
        *&a1[v10] = 0;
        goto LABEL_30;
      default:
LABEL_30:
        if (a2)
        {
LABEL_31:
          if (v7 < 0x7FFFFFFF)
          {
            v17 = (&a1[v9 + 7] & 0xFFFFFFFFFFFFFFF8);
            if ((a2 & 0x80000000) != 0)
            {
              v18 = a2 & 0x7FFFFFFF;
            }

            else
            {
              v18 = (a2 - 1);
            }

            *v17 = v18;
          }

          else
          {

            __swift_storeEnumTagSinglePayload(a1, a2, v7, v6);
          }
        }

        break;
    }
  }

  else
  {
    v15 = ~v8 + a2;
    bzero(a1, ((((((((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 17);
    if (v10 <= 3)
    {
      v16 = (v15 >> 8) + 1;
    }

    else
    {
      v16 = 1;
    }

    if (v10 > 3)
    {
      *a1 = v15;
    }

    else
    {
      *a1 = v15;
    }

    switch(v14)
    {
      case 1:
        a1[v10] = v16;
        break;
      case 2:
        *&a1[v10] = v16;
        break;
      case 3:
        goto LABEL_44;
      case 4:
        *&a1[v10] = v16;
        break;
      default:
        return;
    }
  }
}

void sub_274B4C228()
{
  if (!qword_28098C1A0)
  {
    type metadata accessor for ContentItemQuickLookModel();
    sub_274B4C28C();
    v0 = sub_274BF2FA4();
    if (!v1)
    {
      atomic_store(v0, &qword_28098C1A0);
    }
  }
}

unint64_t sub_274B4C28C()
{
  result = qword_28098C1A8;
  if (!qword_28098C1A8)
  {
    type metadata accessor for ContentItemQuickLookModel();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28098C1A8);
  }

  return result;
}

unint64_t sub_274B4C328()
{
  result = qword_28098C1C0;
  if (!qword_28098C1C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28098C1B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28098C1C0);
  }

  return result;
}

uint64_t objectdestroy_18Tm()
{
  v2 = *(v0 + 32);
  type metadata accessor for ContentItemQuickLookModalContent();
  OUTLINED_FUNCTION_0_15();
  v4 = (*(v3 + 80) + 48) & ~*(v3 + 80);
  swift_unknownObjectRelease();
  (*(*(v2 - 8) + 8))(v0 + v4, v2);

  sub_274B4C38C();

  return swift_deallocObject();
}

double ContentCollectionPreviewStylePicker.init(styles:contentCollection:state:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  v7 = *a3;
  v8 = a3[1];
  v9 = a3[2];
  v10 = a3[3];
  v11 = *(a3 + 32);
  v12 = *(type metadata accessor for ContentCollectionPreviewStylePicker() + 32);
  *(a4 + v12) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098A7C0);
  swift_storeEnumTagMultiPayload();
  *a4 = a2;
  *(a4 + 8) = a1;
  *(a4 + 16) = v7;
  *(a4 + 24) = v8;
  *(a4 + 32) = v9;
  *(a4 + 40) = v10;
  *(a4 + 48) = v11;
  v18 = v7;
  v19 = v8;
  v20 = v9;
  v21 = v10;
  v22 = v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098C1C8);
  MEMORY[0x277C64160](&v16, v13);
  v14 = v17;
  result = *&v16;
  *(a4 + 56) = v16;
  *(a4 + 72) = v14;
  return result;
}

uint64_t type metadata accessor for ContentCollectionPreviewStylePicker()
{
  result = qword_28098C1F0;
  if (!qword_28098C1F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t ContentCollectionPreviewStylePicker.body.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for ContentCollectionPreviewStylePicker();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  sub_274B4C994(v1, &v14[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)]);
  sub_274BF51E4();
  v7 = sub_274BF51D4();
  v8 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v9 = swift_allocObject();
  v10 = MEMORY[0x277D85700];
  *(v9 + 16) = v7;
  *(v9 + 24) = v10;
  sub_274B4CA70(&v14[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)], v9 + v8);
  sub_274B4C994(v1, &v14[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)]);
  v11 = sub_274BF51D4();
  v12 = swift_allocObject();
  *(v12 + 16) = v11;
  *(v12 + 24) = v10;
  sub_274B4CA70(&v14[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)], v12 + v8);
  sub_274BF48F4();
  v16 = v19;
  v17 = v20;
  v18 = v21;
  v15 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098C1D0);
  sub_274B4D008();
  sub_274B4D05C();
  sub_274BF4854();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098C1E8);
  *(a1 + *(result + 36)) = 257;
  return result;
}

void sub_274B4C90C(_BYTE *a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098C1C8);
  MEMORY[0x277C64160](v4, v2);
  v3 = v5;
  sub_274B4C9F8(v4[0], v4[1], v5);
  *a1 = 0x10200u >> ((v3 >> 3) & 0x18);
}

uint64_t sub_274B4C994(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ContentCollectionPreviewStylePicker();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_274B4C9F8(void *a1, void *a2, unsigned __int8 a3)
{
  v3 = a2;
  switch(a3 >> 6)
  {
    case 1:
    case 2:
      goto LABEL_3;
    case 3:
      return;
    default:

      a1 = v3;
      LOBYTE(a2) = a3;
LABEL_3:

      sub_274B21754(a1, a2);
      break;
  }
}

uint64_t sub_274B4CA70(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ContentCollectionPreviewStylePicker();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_274B4CAD4(_BYTE *a1@<X8>)
{
  type metadata accessor for ContentCollectionPreviewStylePicker();

  sub_274B4C90C(a1);
}

void sub_274B4CB48(char *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *a1;
  v7 = *(a4 + 16);
  v6 = *(a4 + 24);
  v8 = *(a4 + 32);
  v9 = *(a4 + 40);
  v10 = *(a4 + 48);
  v18 = v8;
  v19 = v9;
  v20 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098C1C8);
  MEMORY[0x277C64160](&v21);
  v17 = v21;
  LOBYTE(v18) = v22;
  v16 = v5;
  LODWORD(v11) = *(a4 + 72);
  if (v11 >> 6)
  {
    v11 = *(a4 + 64);
  }

  v15 = 0x201u >> (8 * v11);
  ContentCollectionPreviewView.PreviewState.state(transitioningTo:selectionType:contentCollection:)(&v16, &v15, *a4, &v23);
  sub_274B4C9F8(v17, *(&v17 + 1), v18);
  *&v17 = v7;
  *(&v17 + 1) = v6;
  v18 = v8;
  v19 = v9;
  v20 = v10;
  v21 = v23;
  v22 = v24;

  sub_274B4D900(v8, v9, v10);
  sub_274BF48D4();
  v12 = v18;
  v13 = v19;
  v14 = v20;

  sub_274B4C9F8(v12, v13, v14);
}

uint64_t objectdestroyTm_7()
{
  v1 = (type metadata accessor for ContentCollectionPreviewStylePicker() - 8);
  v2 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  swift_unknownObjectRelease();
  v3 = v0 + v2;

  sub_274B4C9F8(*(v3 + 32), *(v3 + 40), *(v3 + 48));
  sub_274B4C9F8(*(v3 + 56), *(v3 + 64), *(v3 + 72));
  v4 = v1[10];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098A7C0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = sub_274BF2F04();
    (*(*(v5 - 8) + 8))(v3 + v4, v5);
  }

  else
  {
  }

  return swift_deallocObject();
}

void sub_274B4CDF8(char *a1)
{
  v3 = *(type metadata accessor for ContentCollectionPreviewStylePicker() - 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));

  sub_274B4CB48(a1, v4, v5, v6);
}

uint64_t sub_274B4CE6C()
{
  swift_getKeyPath();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098C258);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098C260);
  sub_274AFA930(&qword_28098C268, &qword_28098C258);
  sub_274B4D008();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280989418);
  sub_274ADDF6C();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  return sub_274BF4944();
}

unint64_t sub_274B4D008()
{
  result = qword_28098C1D8;
  if (!qword_28098C1D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28098C1D8);
  }

  return result;
}

unint64_t sub_274B4D05C()
{
  result = qword_28098C1E0;
  if (!qword_28098C1E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28098C1D0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280989418);
    sub_274ADDF6C();
    swift_getOpaqueTypeConformance2();
    sub_274B4D008();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28098C1E0);
  }

  return result;
}

uint64_t sub_274B4D194@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280989418);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v18 - v6;
  v8 = *a1;
  v18[3] = sub_274BF46D4();
  sub_274BF4FE4();
  if (qword_2809893B8 != -1)
  {
    swift_once();
  }

  v9 = qword_28098C7C0;
  v10 = sub_274BF4F04();
  v11 = sub_274BF4F04();

  v12 = [v9 localizedStringForKey:v10 value:v11 table:0];

  v13 = sub_274BF4F44();
  v15 = v14;

  v18[1] = v13;
  v18[2] = v15;
  sub_274ADDF6C();
  sub_274BF43A4();

  (*(v5 + 32))(a2, v7, v4);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280989420);
  v17 = (a2 + *(result + 36));
  *v17 = v8;
  v17[1] = 1;
  return result;
}

void sub_274B4D464()
{
  sub_274B4D564();
  if (v0 <= 0x3F)
  {
    sub_274B4D5A8(319, &qword_28098C208, &type metadata for ContentCollectionPreviewView.PreviewState.PageStyle, MEMORY[0x277D83940]);
    if (v1 <= 0x3F)
    {
      sub_274B4D5A8(319, &qword_28098C210, &type metadata for ContentCollectionPreviewView.PreviewState, MEMORY[0x277CE11F8]);
      if (v2 <= 0x3F)
      {
        sub_274B171AC();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

unint64_t sub_274B4D564()
{
  result = qword_28098C200;
  if (!qword_28098C200)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_28098C200);
  }

  return result;
}

void sub_274B4D5A8(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

unint64_t sub_274B4D5F8()
{
  result = qword_28098C218;
  if (!qword_28098C218)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28098C1E8);
    sub_274B4D684();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28098C218);
  }

  return result;
}

unint64_t sub_274B4D684()
{
  result = qword_28098C220;
  if (!qword_28098C220)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28098C228);
    sub_274AFA930(&qword_28098C230, &qword_28098C238);
    sub_274B4D73C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28098C220);
  }

  return result;
}

unint64_t sub_274B4D73C()
{
  result = qword_28098C240;
  if (!qword_28098C240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28098C240);
  }

  return result;
}

uint64_t sub_274B4D7BC()
{
  v0 = sub_274BF3B04();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_274BF3AF4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098C248);
  sub_274AFA930(&qword_28098C250, &qword_28098C248);
  sub_274BF4224();
  return (*(v1 + 8))(v3, v0);
}

id sub_274B4D900(id result, void *a2, unsigned __int8 a3)
{
  v3 = a2;
  switch(a3 >> 6)
  {
    case 1:
    case 2:
      goto LABEL_3;
    case 3:
      return result;
    default:
      v5 = result;
      result = v3;
      LOBYTE(a2) = a3;
LABEL_3:

      result = sub_274B217DC(result, a2);
      break;
  }

  return result;
}

void __swiftcall WFMarkdownView.Attribution.init(symbolName:title:message:menuElements:)(WorkflowUICore::WFMarkdownView::Attribution *__return_ptr retstr, Swift::String symbolName, Swift::String title, Swift::String message, Swift::OpaquePointer menuElements)
{
  retstr->symbolName = symbolName;
  retstr->title = title;
  retstr->message._object = message._object;
  retstr->menuElements = menuElements;
  retstr->message._countAndFlagsBits = message._countAndFlagsBits;
}

void sub_274B4D98C(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098C418);
  MEMORY[0x28223BE20](v3);
  v5 = &v15 - v4;
  v6 = *v1;
  v7 = v1[1];
  v8 = *(*v1 + 16);
  if (v7 == v8)
  {

    __swift_storeEnumTagSinglePayload(a1, 1, 1, v3);
  }

  else
  {
    if (v7 >= v8)
    {
      __break(1u);
    }

    else
    {
      v9 = sub_274BF1D34();
      v10 = *(v9 - 8);
      v11 = *(v10 + 16);
      v12 = v6 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(v10 + 72) * v7;
      v1[1] = v7 + 1;
      v13 = *(v3 + 48);
      v14 = v1[2];
      *v5 = v14;
      v11(&v5[v13], v12, v9);
      if (!__OFADD__(v14, 1))
      {
        v1[2] = v14 + 1;
        sub_274B21EA8(v5, a1, &qword_28098C418);
        __swift_storeEnumTagSinglePayload(a1, 0, 1, v3);
        return;
      }
    }

    __break(1u);
  }
}

id sub_274B4DB08(void *a1)
{
  v2 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  OUTLINED_FUNCTION_4_8();
  sub_274BF4F04();
  OUTLINED_FUNCTION_67_0();
  v3 = [v2 initWithString_];

  return v3;
}

uint64_t sub_274B4DB70(uint64_t result, double a2)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v2 = result;
    if (result)
    {
      result = sub_274BF5174();
      v4 = 0;
      *(result + 16) = v2;
      v5 = vdupq_n_s64(v2 - 1);
      do
      {
        v6 = vmovn_s64(vcgeq_u64(v5, vorrq_s8(vdupq_n_s64(v4), xmmword_274BFBC10)));
        v7 = result + 8 * v4;
        if (v6.i8[0])
        {
          *(v7 + 32) = a2;
        }

        if (v6.i8[4])
        {
          *(v7 + 40) = a2;
        }

        v4 += 2;
      }

      while (((v2 + 1) & 0xFFFFFFFFFFFFFFFELL) != v4);
    }

    else
    {
      return MEMORY[0x277D84F90];
    }
  }

  return result;
}

uint64_t WFMarkdownViewRepresentable.sizeThatFits(_:uiView:context:)(uint64_t a1, char a2, int a3, int a4, id a5)
{
  if (a2)
  {
    return 0;
  }

  else
  {
    return CGSizeMake([a5 sizeThatFits_]);
  }
}

void WFMarkdownViewRepresentable.makeUIView(context:)()
{
  OUTLINED_FUNCTION_89();
  v93 = *(v0 + 8);
  v94 = *v0;
  v101 = *(v0 + 40);
  v103 = *(v0 + 32);
  v97 = *(v0 + 56);
  v99 = *(v0 + 48);
  v11 = *(v0 + 72);
  v95 = *(v0 + 64);
  v12 = *(v0 + 80);
  v90 = *(MEMORY[0x277CBF3A0] + 8);
  v91 = *MEMORY[0x277CBF3A0];
  v89 = *(MEMORY[0x277CBF3A0] + 16);
  v92 = *(MEMORY[0x277CBF3A0] + 24);
  if (*(v0 + 17) == 1)
  {
    if (qword_2809893B0 != -1)
    {
      swift_once();
    }

    v13 = memcpy(__dst, &unk_28099BB80, 0x188uLL);
    OUTLINED_FUNCTION_15_5(v13, v14, v15, v16, v17, v18, v19, v20, v32, v34, v35, v37, v38, v40, v41, v43, v44, v46, v47, v49, v50, v52, v53, v55, v56, v58, v59, v61, v62, v64, v65, v67, v68, v70, v71, v73, v74, v76, v77, v79, v80, v82, v83, v85, v86, v87, v89, v90, v91, v92, v93, v94, v95, v97, v99, v101, v103, v105);
    v21 = 42.0;
  }

  else
  {
    if (qword_2809893A8 != -1)
    {
      swift_once();
    }

    v22 = memcpy(__dst, &unk_28099B9F8, 0x188uLL);
    OUTLINED_FUNCTION_15_5(v22, v23, v24, v25, v26, v27, v28, v29, v32, v34, v35, v37, v38, v40, v41, v43, v44, v46, v47, v49, v50, v52, v53, v55, v56, v58, v59, v61, v62, v64, v65, v67, v68, v70, v71, v73, v74, v76, v77, v79, v80, v82, v83, v85, v86, v87, v89, v90, v91, v92, v93, v94, v95, v97, v99, v101, v103, v105);
    v21 = 27.0;
  }

  v107[0] = v33;
  v107[1] = v36;
  v107[2] = v39;
  v107[3] = v42;
  v107[4] = v45;
  v108 = v3;
  v109 = v8;
  v110 = v7;
  v111 = v48;
  v113 = v51;
  v114 = v54;
  v115 = v57;
  v112 = v2;
  v116 = v1;
  v117 = v60;
  v118 = v63;
  v119 = v6;
  v120 = v66;
  v121 = &__dst[35];
  v122 = v5;
  v123 = v4;
  v124 = v10;
  v125 = v0;
  v126 = v69;
  v127 = v72;
  v128 = v75;
  v129 = v78;
  v130 = v81;
  v131 = v84;
  v132 = v9;
  v133 = v88;
  v30 = objc_allocWithZone(type metadata accessor for WFMarkdownView());
  v31 = sub_274B4ECD0(v107);
  sub_274B4F164();
  __dst[0] = v104;
  __dst[1] = v102;
  __dst[2] = v100;
  __dst[3] = v98;
  __dst[4] = v96;
  __dst[5] = v11;
  __dst[6] = v12;
  sub_274B0B680(v104, v102);
  sub_274B4EAA0(__dst);
  [v31 setScrollIndicatorInsets_];
  OUTLINED_FUNCTION_90();
}

uint64_t sub_274B4DF24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_274B68530();

  return MEMORY[0x28212E3C8](a1, a2, a3, v6);
}

uint64_t sub_274B4DF88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_274B68530();

  return MEMORY[0x28212E358](a1, a2, a3, v6);
}

void sub_274B4DFEC()
{
  sub_274B68530();
  sub_274BF3A24();
  __break(1u);
}

double sub_274B4E0B4@<D0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v4 = [objc_opt_self() lightGrayColor];
  v126 = [v4 colorWithAlphaComponent_];

  v125 = OUTLINED_FUNCTION_45_0();
  v124 = OUTLINED_FUNCTION_45_0();
  v5 = OUTLINED_FUNCTION_45_0();
  OUTLINED_FUNCTION_56_0();
  v123 = [v6 v7];

  v122 = OUTLINED_FUNCTION_45_0();
  v8 = OUTLINED_FUNCTION_45_0();
  OUTLINED_FUNCTION_56_0();
  v121 = [v9 v10];

  v11 = OUTLINED_FUNCTION_45_0();
  OUTLINED_FUNCTION_56_0();
  v120 = [v12 v13];

  v119 = OUTLINED_FUNCTION_45_0();
  v14 = OUTLINED_FUNCTION_45_0();
  OUTLINED_FUNCTION_56_0();
  v118 = [v15 v16];

  v117 = OUTLINED_FUNCTION_45_0();
  v17 = OUTLINED_FUNCTION_45_0();
  OUTLINED_FUNCTION_56_0();
  v116 = [v18 v19];

  v20 = OUTLINED_FUNCTION_45_0();
  v115 = [v20 colorWithAlphaComponent_];

  v21 = [objc_opt_self() defaultMetrics];
  v22 = objc_opt_self();
  v23 = v22;
  if (a1)
  {
    v24 = 1.17647059;
  }

  else
  {
    v24 = 1.0;
  }

  if (a1)
  {
    v25 = 20.0;
  }

  else
  {
    v25 = 17.0;
  }

  if (a1)
  {
    v26 = 25.0;
  }

  else
  {
    v26 = 22.0;
  }

  if (a1)
  {
    v27 = 23.0;
  }

  else
  {
    v27 = 20.0;
  }

  if (a1)
  {
    v28 = 16.0;
  }

  else
  {
    v28 = 14.0;
  }

  v29 = 18.0;
  if (a1)
  {
    v29 = 21.0;
  }

  v114 = v29;
  v30 = [v22 systemFontOfSize_];
  v113 = [v21 scaledFontForFont_];

  v31 = OUTLINED_FUNCTION_31_2();
  v32 = *MEMORY[0x277D743F8];
  v112 = OUTLINED_FUNCTION_22_2([v23 systemFontOfSize:v26 weight:*MEMORY[0x277D743F8]]);

  v33 = OUTLINED_FUNCTION_31_2();
  v111 = OUTLINED_FUNCTION_22_2([v23 systemFontOfSize:v27 weight:v32]);

  v34 = OUTLINED_FUNCTION_31_2();
  v35 = OUTLINED_FUNCTION_79_0();
  v110 = OUTLINED_FUNCTION_22_2([v36 v37]);

  v38 = OUTLINED_FUNCTION_31_2();
  v39 = *MEMORY[0x277D74418];
  v40 = OUTLINED_FUNCTION_79_0();
  v109 = OUTLINED_FUNCTION_22_2([v41 v42]);

  v43 = OUTLINED_FUNCTION_31_2();
  v44 = [v23 systemFontOfSize:17.0 weight:v32];
  v108 = [v43 scaledFontForFont_];

  v45 = OUTLINED_FUNCTION_31_2();
  v46 = [v23 &selRef:17.0 setContentSize:?];
  v47 = [v45 scaledFontForFont_];

  v48 = OUTLINED_FUNCTION_31_2();
  v49 = [v23 monospacedSystemFontOfSize:v28 weight:v39];
  v50 = OUTLINED_FUNCTION_61_0(v49, sel_scaledFontForFont_);

  v51 = OUTLINED_FUNCTION_31_2();
  v52 = OUTLINED_FUNCTION_79_0();
  v55 = [v53 v54];
  v56 = OUTLINED_FUNCTION_61_0(v55, sel_scaledFontForFont_);

  v57 = OUTLINED_FUNCTION_31_2();
  v58 = round(v24 * 3.0);
  [v57 scaledValueForValue_];
  v107 = v59;

  v60 = OUTLINED_FUNCTION_31_2();
  OUTLINED_FUNCTION_71_0();
  [v61 v62];
  v106 = v63;

  v64 = OUTLINED_FUNCTION_31_2();
  OUTLINED_FUNCTION_62_0(v64, -4.0);
  v105 = v65;

  v66 = OUTLINED_FUNCTION_31_2();
  v67 = round(v24 * 12.0);
  [v66 scaledValueForValue_];
  v104 = v68;

  v69 = OUTLINED_FUNCTION_31_2();
  v70 = round(v24 * 10.0);
  [v69 scaledValueForValue_];
  v103 = v71;

  v72 = OUTLINED_FUNCTION_31_2();
  [v72 scaledValueForValue_];
  v102 = v73;

  v74 = OUTLINED_FUNCTION_31_2();
  [v74 scaledValueForValue_];
  v76 = v75;

  v77 = OUTLINED_FUNCTION_31_2();
  OUTLINED_FUNCTION_62_0(v77, 22.0);
  v79 = v78;

  v80 = OUTLINED_FUNCTION_31_2();
  OUTLINED_FUNCTION_71_0();
  [v81 v82];
  v84 = v83;

  v85 = OUTLINED_FUNCTION_31_2();
  OUTLINED_FUNCTION_71_0();
  [v86 v87];
  v89 = v88;

  v90 = OUTLINED_FUNCTION_31_2();
  OUTLINED_FUNCTION_71_0();
  [v91 v92];
  v94 = v93;

  v95 = OUTLINED_FUNCTION_31_2();
  OUTLINED_FUNCTION_62_0(v95, 16.0);
  v97 = v96;

  v98 = OUTLINED_FUNCTION_31_2();
  [v98 scaledValueForValue_];
  v100 = v99;

  *a2 = v113;
  *(a2 + 8) = v112;
  *(a2 + 16) = v111;
  *(a2 + 24) = v110;
  *(a2 + 32) = v109;
  *(a2 + 40) = v126;
  *(a2 + 48) = v125;
  *(a2 + 56) = v124;
  *(a2 + 64) = v123;
  *(a2 + 72) = v122;
  *(a2 + 80) = v121;
  *(a2 + 88) = xmmword_274BFFA60;
  *(a2 + 104) = v120;
  *(a2 + 112) = v108;
  *(a2 + 120) = v47;
  *(a2 + 128) = v100;
  *(a2 + 136) = 0x402E000000000000;
  *(a2 + 144) = v100;
  *(a2 + 152) = 0x402E000000000000;
  *(a2 + 160) = v50;
  *(a2 + 168) = v119;
  *(a2 + 176) = v118;
  *(a2 + 184) = 0x4036000000000000;
  *(a2 + 192) = v97;
  *(a2 + 200) = xmmword_274BFFA70;
  *(a2 + 216) = 0x402E000000000000;
  *(a2 + 224) = v56;
  *(a2 + 232) = v117;
  *(a2 + 240) = v116;
  *(a2 + 248) = xmmword_274BFFA80;
  *(a2 + 264) = v94;
  *(a2 + 272) = v115;
  *(a2 + 280) = 0x4000000000000000;
  *(a2 + 288) = xmmword_274BFFA90;
  *(a2 + 304) = v107;
  *(a2 + 312) = v106;
  *(a2 + 320) = v105;
  *(a2 + 328) = v104;
  *(a2 + 336) = v103;
  *(a2 + 344) = v102;
  *(a2 + 352) = v76;
  *(a2 + 360) = v79;
  *(a2 + 368) = v84;
  *(a2 + 376) = v89;
  result = v114;
  *(a2 + 384) = v114;
  return result;
}

double sub_274B4E990@<D0>(uint64_t a1@<X8>)
{
  sub_274B4EA38(v5);
  v2 = v7;
  v3 = v5[1];
  *a1 = v5[0];
  *(a1 + 16) = v3;
  result = *&v6;
  *(a1 + 32) = v6;
  *(a1 + 48) = v2;
  return result;
}

void sub_274B4E9DC(uint64_t *a1)
{
  v1 = a1[1];
  v2 = a1[2];
  v3 = a1[3];
  v4 = a1[4];
  v5 = a1[5];
  v6 = a1[6];
  v7[0] = *a1;
  v7[1] = v1;
  v7[2] = v2;
  v7[3] = v3;
  v7[4] = v4;
  v7[5] = v5;
  v7[6] = v6;
  sub_274B0B680(v7[0], v1);
  sub_274B4EAA0(v7);
}

uint64_t sub_274B4EA38@<X0>(uint64_t *a1@<X8>)
{
  v3 = (v1 + OBJC_IVAR____TtC14WorkflowUICore14WFMarkdownView_attribution);
  OUTLINED_FUNCTION_37_0();
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[2];
  v7 = v3[3];
  v8 = v3[4];
  v9 = v3[5];
  v10 = v3[6];
  *a1 = *v3;
  a1[1] = v5;
  a1[2] = v6;
  a1[3] = v7;
  a1[4] = v8;
  a1[5] = v9;
  a1[6] = v10;
  return sub_274B0B680(v4, v5);
}

void sub_274B4EAA0(uint64_t a1)
{
  v8 = *(a1 + 32);
  v3 = *(a1 + 48);
  v4 = v1 + OBJC_IVAR____TtC14WorkflowUICore14WFMarkdownView_attribution;
  swift_beginAccess();
  v5 = *v4;
  v6 = *(v4 + 8);
  v7 = *(a1 + 16);
  *v4 = *a1;
  *(v4 + 16) = v7;
  *(v4 + 32) = v8;
  *(v4 + 48) = v3;
  sub_274B4FD84(v5, v6);
  sub_274B5A770();
}

void (*sub_274B4EB28(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_274B4EB8C;
}

void sub_274B4EB8C(uint64_t a1, char a2)
{
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    sub_274B5A770();
  }
}

id sub_274B4EBC0()
{
  v1 = OBJC_IVAR____TtC14WorkflowUICore14WFMarkdownView____lazy_storage___stackView;
  v2 = *(v0 + OBJC_IVAR____TtC14WorkflowUICore14WFMarkdownView____lazy_storage___stackView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC14WorkflowUICore14WFMarkdownView____lazy_storage___stackView);
  }

  else
  {
    v4 = sub_274B4EC24(v0);
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_274B4EC24(uint64_t a1)
{
  v2 = [objc_allocWithZone(MEMORY[0x277D75A68]) init];
  [v2 setAxis_];
  [v2 setSpacing_];
  [v2 setAlignment_];
  [v2 setDistribution_];
  [v2 setTranslatesAutoresizingMaskIntoConstraints_];
  return v2;
}

char *sub_274B4ECD0(double *a1)
{
  OUTLINED_FUNCTION_78_0();
  *(v1 + OBJC_IVAR____TtC14WorkflowUICore14WFMarkdownView_attributionView) = 0;
  v3 = v1 + OBJC_IVAR____TtC14WorkflowUICore14WFMarkdownView_attribution;
  *v3 = 0u;
  *(v3 + 16) = 0u;
  *(v3 + 32) = 0u;
  *(v3 + 48) = 0;
  *(v1 + OBJC_IVAR____TtC14WorkflowUICore14WFMarkdownView____lazy_storage___stackView) = 0;
  memcpy((v1 + OBJC_IVAR____TtC14WorkflowUICore14WFMarkdownView_style), a1, 0x188uLL);
  sub_274B4E058(a1, v46);
  type metadata accessor for WFMarkdownView();
  v4 = OUTLINED_FUNCTION_73();
  v7 = objc_msgSendSuper2(v5, v6, v4);
  v8 = sub_274B4EBC0();
  [v7 addSubview_];

  v45 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280989FC8);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_274BFFAA0;
  v10 = OBJC_IVAR____TtC14WorkflowUICore14WFMarkdownView____lazy_storage___stackView;
  v11 = [*&v7[OBJC_IVAR____TtC14WorkflowUICore14WFMarkdownView____lazy_storage___stackView] topAnchor];
  v12 = [v7 contentLayoutGuide];
  v13 = [v12 topAnchor];

  v14 = a1[48];
  v15 = OUTLINED_FUNCTION_52_0();
  v17 = [v15 v16];

  *(v9 + 32) = v17;
  v18 = [*&v7[v10] leadingAnchor];
  v19 = OUTLINED_FUNCTION_63_0();
  v20 = [v19 leadingAnchor];

  v21 = OUTLINED_FUNCTION_52_0();
  v23 = [v21 v22];

  *(v9 + 40) = v23;
  v24 = [*&v7[v10] trailingAnchor];
  v25 = OUTLINED_FUNCTION_63_0();
  v26 = [v25 trailingAnchor];

  v27 = OUTLINED_FUNCTION_52_0();
  v29 = [v27 v28];

  *(v9 + 48) = v29;
  v30 = [*&v7[v10] bottomAnchor];
  v31 = OUTLINED_FUNCTION_63_0();
  v32 = [v31 bottomAnchor];

  v33 = OUTLINED_FUNCTION_52_0();
  v35 = [v33 v34];

  *(v9 + 56) = v35;
  v36 = [*&v7[v10] widthAnchor];
  v37 = [v7 frameLayoutGuide];
  v38 = [v37 widthAnchor];

  v39 = OUTLINED_FUNCTION_52_0();
  v41 = [v39 v40];

  *(v9 + 64) = v41;
  sub_274AD8430(0, &qword_28098C428);
  v42 = sub_274BF5134();

  [v45 activateConstraints_];

  OUTLINED_FUNCTION_98(v43, sel_setAutomaticallyAdjustsScrollIndicatorInsets_);
  [v7 setContentInsetAdjustmentBehavior_];

  sub_274B68500(a1);
  return v7;
}

void sub_274B4F0BC()
{
  *(v0 + OBJC_IVAR____TtC14WorkflowUICore14WFMarkdownView_attributionView) = 0;
  v1 = v0 + OBJC_IVAR____TtC14WorkflowUICore14WFMarkdownView_attribution;
  *v1 = 0u;
  *(v1 + 16) = 0u;
  *(v1 + 32) = 0u;
  *(v1 + 48) = 0;
  *(v0 + OBJC_IVAR____TtC14WorkflowUICore14WFMarkdownView____lazy_storage___stackView) = 0;
  sub_274BF5AC4();
  __break(1u);
}

void sub_274B4F164()
{
  OUTLINED_FUNCTION_34_1();
  v2 = v1;
  v4 = v3;
  v147 = sub_274BF1D34();
  OUTLINED_FUNCTION_1();
  v144 = v5;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_9();
  v143 = v7;
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v8);
  v142 = &v128 - v9;
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_38_1();
  v141 = v11;
  OUTLINED_FUNCTION_70();
  v149 = type metadata accessor for WFMarkdownStringFormatter.Block();
  OUTLINED_FUNCTION_1();
  v140 = v12;
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_4();
  v16 = (v15 - v14);
  sub_274B4FDE8(v4, v2);
  v19 = sub_274B5066C(v17, v18);
  v21 = v20;

  v156 = v19;
  v157 = v21;
  v129 = OBJC_IVAR____TtC14WorkflowUICore14WFMarkdownView_attributionView;
  v132 = *(v0 + OBJC_IVAR____TtC14WorkflowUICore14WFMarkdownView_attributionView);
  v133 = v132;
  v148 = v21;

  v146 = v0;
  v22 = sub_274B4EBC0();
  v23 = [v22 arrangedSubviews];

  sub_274AD8430(0, &qword_28098C280);
  v24 = sub_274BF5144();

  v25 = sub_274B22B94(v24);
  for (i = 0; v25 != i; ++i)
  {
    if ((v24 & 0xC000000000000001) != 0)
    {
      v27 = MEMORY[0x277C65230](i, v24);
    }

    else
    {
      if (i >= *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_56;
      }

      v27 = *(v24 + 8 * i + 32);
    }

    v28 = v27;
    if (__OFADD__(i, 1))
    {
      goto LABEL_55;
    }

    [v27 removeFromSuperview];
  }

  v150 = v19;
  v151 = v148;
  v154 = 2573;
  v155 = 0xE200000000000000;
  v152 = 10;
  v153 = 0xE100000000000000;
  sub_274ADDF6C();
  OUTLINED_FUNCTION_37_0();
  v29 = sub_274BF5794();
  v31 = v30;

  v150 = v29;
  v151 = v31;
  v32 = OUTLINED_FUNCTION_26_3();
  v33 = MEMORY[0x277C65050](v32);

  v34 = *(v33 + 16);
  if (v34)
  {
    v150 = MEMORY[0x277D84F90];
    sub_274B63DF4();
    v35 = 0;
    v36 = v150;
    v37 = v33 + 56;
    while (v35 < *(v33 + 16))
    {

      v38 = OUTLINED_FUNCTION_58_0();
      v39 = MEMORY[0x277C64860](v38);
      v41 = v40;

      v150 = v36;
      v42 = *(v36 + 16);
      if (v42 >= *(v36 + 24) >> 1)
      {
        sub_274B63DF4();
        v36 = v150;
      }

      ++v35;
      *(v36 + 16) = v42 + 1;
      v43 = v36 + 16 * v42;
      *(v43 + 32) = v39;
      *(v43 + 40) = v41;
      v37 += 32;
      if (v34 == v35)
      {
        goto LABEL_15;
      }
    }

    goto LABEL_57;
  }

LABEL_15:

  v44 = sub_274B50BF8();
  OUTLINED_FUNCTION_60(v44);

  OUTLINED_FUNCTION_36();
  v45 = swift_allocObject();
  v46 = [objc_allocWithZone(MEMORY[0x277CCAB48]) init];
  v137 = v45;
  *(v45 + 16) = v46;
  v47 = (v45 + 16);
  v48 = [objc_allocWithZone(MEMORY[0x277D74240]) init];
  v49 = v146;
  v50 = &v146[OBJC_IVAR____TtC14WorkflowUICore14WFMarkdownView_style];
  [v48 setParagraphSpacing_];
  v51 = *(v50 + 304);
  v135 = v48;
  [v48 setLineSpacing_];
  v52 = [objc_allocWithZone(MEMORY[0x277D74240]) init];
  v53 = *(v50 + 344);
  [v52 setHeadIndent_];
  [v52 setFirstLineHeadIndent_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280989FC8);
  OUTLINED_FUNCTION_7_10();
  v54 = swift_allocObject();
  *(v54 + 16) = xmmword_274BFFAB0;
  v55 = sub_274AD8430(0, &qword_28098C290);
  type metadata accessor for OptionKey(0);
  OUTLINED_FUNCTION_20_2();
  sub_274B68818(v56, v57);
  sub_274BF4E14();
  *(v54 + 32) = sub_274B5267C(0, v53);
  sub_274B67A10(v54, v52);
  v130 = v50;
  [v52 setParagraphSpacing_];
  v131 = v52;
  [v52 setLineSpacing_];
  v58 = *(v134 + 16);
  v59 = &qword_28098C000;
  if (v58)
  {
    v136 = OBJC_IVAR____TtC14WorkflowUICore14WFMarkdownView____lazy_storage___stackView;
    v60 = v140;
    v61 = v134 + ((*(v140 + 80) + 32) & ~*(v140 + 80));
    swift_beginAccess();
    v62 = 0;
    v63 = v144;
    v148 = *(v60 + 72);
    ++v144;
    v145 = (v63 + 4);
    v64 = 0x1FAD8E000uLL;
    v140 = v47;
    v138 = v58;
    v139 = v61;
LABEL_17:
    v65 = v61 + v148 * v62++;
    sub_274B67A94(v65, v16);
    switch(swift_getEnumCaseMultiPayload())
    {
      case 1u:
        (*v145)(v142, v16, v147);
        if (OUTLINED_FUNCTION_23_3() >= 1)
        {
          sub_274AD8430(0, qword_28098A8F0);
          v104 = OUTLINED_FUNCTION_43();
          OUTLINED_FUNCTION_18_4(v104);
        }

        v55 = v49;
        sub_274B53524(v142, v135, v98, v99, v100, v101, v102, v103, v128, v129, v130, v131, v132, v133, v134, v135, v136, v137, v138, v139, v140, v141);
        goto LABEL_38;
      case 2u:
        v75 = *v16;
        if (OUTLINED_FUNCTION_23_3() < 1)
        {
          goto LABEL_46;
        }

        break;
      case 3u:
        v87 = *v16;
        v86 = v16[1];
        v88 = v16[2];
        if (OUTLINED_FUNCTION_23_3() >= 1)
        {
          v90 = [&qword_28098C000 string];
          sub_274BF4F44();

          OUTLINED_FUNCTION_26_3();
          LOBYTE(v90) = sub_274BF5084();

          if ((v90 & 1) == 0)
          {
            v91 = sub_274AD8430(0, qword_28098A8F0);
            OUTLINED_FUNCTION_26_3();
            sub_274B17D10();
            OUTLINED_FUNCTION_84_0();
            OUTLINED_FUNCTION_46_0(v92, v93);
          }

          v94 = sub_274AD8430(0, qword_28098A8F0);
          OUTLINED_FUNCTION_26_3();
          sub_274B17D10();
          OUTLINED_FUNCTION_84_0();
          OUTLINED_FUNCTION_46_0(v95, v96);
        }

        v55 = v146;
        v97 = sub_274B53D84(v87, v89, v86, v88);

        v49 = v55;

        [&qword_28098C000 appendAttributedString_];

        v47 = v140;
        v58 = v138;
        goto LABEL_31;
      case 4u:

        v72 = OUTLINED_FUNCTION_42_0();
        sub_274B52754(v72);
        v73 = OUTLINED_FUNCTION_86();
        v55 = sub_274B58BE4(v73, v74);

        goto LABEL_47;
      case 5u:
        (*v145)(v143, v16, v147);
        if (OUTLINED_FUNCTION_23_3() >= 1)
        {
          sub_274AD8430(0, qword_28098A8F0);
          v113 = OUTLINED_FUNCTION_43();
          OUTLINED_FUNCTION_18_4(v113);
        }

        v55 = v49;
        sub_274B55A10(v143, v106, v107, v108, v109, v110, v111, v112, v128, v129, v130, v131, v132, v133, v134, v135, v136, v137, v138, v139, v140, v141);
LABEL_38:
        OUTLINED_FUNCTION_18_4(v105);

        v114 = OUTLINED_FUNCTION_39_1();
        v115(v114, v147);
        goto LABEL_42;
      case 6u:
        if (OUTLINED_FUNCTION_23_3() >= 1)
        {
          sub_274AD8430(0, qword_28098A8F0);
          v116 = OUTLINED_FUNCTION_43();
          OUTLINED_FUNCTION_18_4(v116);
        }

        v55 = v49;
        v117 = sub_274B52978();
        OUTLINED_FUNCTION_18_4(v117);

LABEL_42:
        v64 = 0x1FAD8E000;
        goto LABEL_48;
      default:
        v66 = *(v16 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098C2A0) + 48));
        (*v145)(v141, v16, v147);
        if (OUTLINED_FUNCTION_23_3() >= 1)
        {
          sub_274AD8430(0, qword_28098A8F0);
          v67 = OUTLINED_FUNCTION_43();
          OUTLINED_FUNCTION_46_0(v67, sel_appendAttributedString_);
        }

        v68 = v66;
        v49 = v146;
        v69 = sub_274B52928(v68, v146);
        v70 = v141;
        sub_274B52C18();
        v55 = v71;
        OUTLINED_FUNCTION_46_0(v71, sel_appendAttributedString_);

        (*v144)(v70, v147);
        v47 = v140;
LABEL_31:
        v61 = v139;
        goto LABEL_48;
    }

    while (1)
    {
      v83 = [&qword_28098C000 string];
      sub_274BF4F44();

      OUTLINED_FUNCTION_26_3();
      LOBYTE(v83) = sub_274BF5084();

      if ((v83 & 1) == 0)
      {
        v118 = [&qword_28098C000 (v64 + 1784)];
        v49 = v146;
        if (v118 >= 1)
        {
          v119 = &qword_28098C000;
          v120 = sub_274B57170(v119);

          v121 = sub_274B4EBC0();
          [v121 addArrangedSubview_];

          v49 = v146;
        }

        *v47 = [objc_allocWithZone(MEMORY[0x277CCAB48]) init];

LABEL_46:
        sub_274B574A4(v75, v76, v77, v78, v79, v80, v81, v82, v128, v129, v130, v131, v132, v133, v134, v135, v136, v137, v138, v139, v140, v141, v142, v143, v144, v145, v146, v147);
        v55 = v122;

        v58 = v138;
        if (v55)
        {
LABEL_47:
          OUTLINED_FUNCTION_70_0();
          [*&v49[v123] addArrangedSubview_];
        }

LABEL_48:
        if (v62 == v58)
        {

          v59 = &qword_28098C000;
          goto LABEL_51;
        }

        goto LABEL_17;
      }

      v84 = &qword_28098C000;
      v85 = [v84 (v64 + 1784)];
      if (__OFSUB__(v85, 1))
      {
        break;
      }

      [v84 deleteCharactersInRange_];
    }

    __break(1u);
LABEL_55:
    __break(1u);
LABEL_56:
    __break(1u);
LABEL_57:
    __break(1u);
    return;
  }

LABEL_51:
  v124 = OUTLINED_FUNCTION_42_0();
  sub_274B52754(v124);
  v125 = v133;
  v126 = v132;
  if (v132)
  {
    [*&v49[v59[83]] addArrangedSubview_];
    v127 = *&v49[v129];
    *&v49[v129] = v126;
  }

  [*&v49[v59[83]] setSpacing_];
  [v49 invalidateIntrinsicContentSize];
  [v49 setNeedsLayout];

  OUTLINED_FUNCTION_42_0();

  OUTLINED_FUNCTION_33_1();
}

uint64_t sub_274B4FD84(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

void sub_274B4FDE8(unint64_t a1, unint64_t a2)
{
  v4 = sub_274BF1B34();
  v66 = *(v4 - 8);
  v67 = v4;
  MEMORY[0x28223BE20](v4);
  v65 = &v60 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098C358);
  MEMORY[0x28223BE20](v6 - 8);
  v69 = &v60 - v7;
  v76 = a1;
  v77 = a2;
  v68 = 0x8000000274C0B700;
  v64 = "LATEX_DISPLAY_START";
  swift_bridgeObjectRetain_n();
  v8 = 15;
LABEL_2:
  v9 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v9 = a1 & 0xFFFFFFFFFFFFLL;
  }

  v10 = 4 * v9;
  while (1)
  {

    if (v10 <= v8 >> 14)
    {
      break;
    }

    v74 = a1;
    v75 = a2;
    v72 = 23388;
    v73 = 0xE200000000000000;
    v11 = sub_274BF21B4();
    v12 = v69;
    __swift_storeEnumTagSinglePayload(v69, 1, 1, v11);
    sub_274ADDF6C();

    v13 = sub_274BF57A4();
    v15 = v14;
    v17 = v16;
    sub_274AFA708(v12, &qword_28098C358);

    if (v17)
    {
      break;
    }

    v74 = a1;
    v75 = a2;
    v72 = 23900;
    v73 = 0xE200000000000000;
    if (v10 < v15 >> 14)
    {
      goto LABEL_38;
    }

    v18 = v69;
    __swift_storeEnumTagSinglePayload(v69, 1, 1, v11);

    v19 = sub_274BF57A4();
    v21 = v20;
    v23 = v22;
    sub_274AFA708(v18, &qword_28098C358);

    if ((v23 & 1) == 0)
    {
      if (v15 >> 14 <= v19 >> 14)
      {
        v24 = sub_274BF50D4();
        v25 = MEMORY[0x277C64860](v24);
        v27 = v26;

        v74 = 0xD000000000000013;
        v75 = v68;
        MEMORY[0x277C648E0](v25, v27);

        MEMORY[0x277C648E0](0xD000000000000011, v64 | 0x8000000000000000);
        if (v21 >> 14 >= v13 >> 14)
        {
          sub_274B68860();
          sub_274BF4FD4();
          a1 = v76;
          a2 = v77;

          sub_274BF5004();

          v8 = sub_274BF5034();
          goto LABEL_2;
        }

        goto LABEL_42;
      }

LABEL_41:
      __break(1u);
LABEL_42:
      __break(1u);
      return;
    }

    v8 = sub_274BF5014();
  }

  v74 = a1;
  v75 = a2;
  v28 = v65;
  sub_274BF1B24();
  v68 = sub_274ADDF6C();
  v29 = sub_274BF5754();
  (*(v66 + 1))(v28, v67);

  v65 = *(v29 + 16);
  if (v65)
  {
    v30 = 0;
    v64 = v29 + 32;
    v62 = 0x8000000274C0B740;
    v31 = MEMORY[0x277D84F90];
    v61 = "LATEX_INLINE_START";
    v63 = v29;
    while (v30 < *(v29 + 16))
    {
      v32 = (v64 + 16 * v30);
      v34 = *v32;
      v33 = v32[1];
      v66 = v30 + 1;
      v67 = v31;
      v74 = v34;
      v75 = v33;
      swift_bridgeObjectRetain_n();
      v35 = 15;
LABEL_17:
      v36 = HIBYTE(v33) & 0xF;
      if ((v33 & 0x2000000000000000) == 0)
      {
        v36 = v34 & 0xFFFFFFFFFFFFLL;
      }

      v37 = 4 * v36;
      while (1)
      {

        if (v37 <= v35 >> 14)
        {
          break;
        }

        v72 = v34;
        v73 = v33;
        v70 = 10332;
        v71 = 0xE200000000000000;
        v38 = sub_274BF21B4();
        v39 = v69;
        __swift_storeEnumTagSinglePayload(v69, 1, 1, v38);

        v40 = sub_274BF57A4();
        v42 = v41;
        v44 = v43;
        sub_274AFA708(v39, &qword_28098C358);

        if (v44)
        {
          break;
        }

        v72 = v34;
        v73 = v33;
        v70 = 10588;
        v71 = 0xE200000000000000;
        if (v37 < v42 >> 14)
        {
          __break(1u);
          goto LABEL_37;
        }

        v45 = v69;
        __swift_storeEnumTagSinglePayload(v69, 1, 1, v38);

        v46 = sub_274BF57A4();
        v48 = v47;
        v50 = v49;
        sub_274AFA708(v45, &qword_28098C358);

        if ((v50 & 1) == 0)
        {
          if (v42 >> 14 > v46 >> 14)
          {
            goto LABEL_39;
          }

          v51 = sub_274BF50D4();
          v52 = MEMORY[0x277C64860](v51);
          v54 = v53;

          v72 = 0xD000000000000012;
          v73 = v62;
          MEMORY[0x277C648E0](v52, v54);

          MEMORY[0x277C648E0](0xD000000000000010, v61 | 0x8000000000000000);
          if (v48 >> 14 >= v40 >> 14)
          {
            sub_274B68860();
            sub_274BF4FD4();
            v34 = v74;
            v33 = v75;

            sub_274BF5004();

            v35 = sub_274BF5034();
            goto LABEL_17;
          }

          goto LABEL_40;
        }

        v35 = sub_274BF5014();
      }

      v31 = v67;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_274BBAD94();
        v31 = v58;
      }

      v29 = v63;
      v55 = v66;
      v56 = *(v31 + 16);
      if (v56 >= *(v31 + 24) >> 1)
      {
        sub_274BBAD94();
        v31 = v59;
      }

      *(v31 + 16) = v56 + 1;
      v57 = v31 + 16 * v56;
      *(v57 + 32) = v34;
      *(v57 + 40) = v33;
      v30 = v55;
      if (v55 == v65)
      {

        goto LABEL_35;
      }
    }

LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  v31 = MEMORY[0x277D84F90];
LABEL_35:
  v74 = v31;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280989650);
  sub_274AFA930(&qword_28098A4E0, &qword_280989650);
  sub_274BF4EB4();
}

uint64_t sub_274B5066C(uint64_t a1, uint64_t a2)
{
  v4 = sub_274BF2BE4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = objc_allocWithZone(MEMORY[0x277CCAC68]);
  v9 = sub_274BDA754(0xD000000000000017, 0x8000000274C0B800, 0);
  v14 = v9;
  if (v9)
  {
    v15 = sub_274BF4F04();
    v16 = sub_274BF4F04();
    v53 = v15;
    v17 = [v15 length];
    v48 = v14;
    v18 = [v14 matchesInString:v16 options:0 range:{0, v17}];

    sub_274AD8430(0, &unk_28098EF10);
    v19 = sub_274BF5144();

    if (v19 >> 62)
    {
      goto LABEL_30;
    }

    for (i = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_274BF5874())
    {
      v21 = v19 & 0xC000000000000001;
      v49 = v19 + 32;
      v50 = v19 & 0xFFFFFFFFFFFFFF8;

      v22 = &qword_279EF5000;
      v51 = v19 & 0xC000000000000001;
      v52 = v19;
      while (!__OFSUB__(i--, 1))
      {
        if (v21)
        {
          v24 = MEMORY[0x277C65230](i, v19);
        }

        else
        {
          if ((i & 0x8000000000000000) != 0)
          {
            goto LABEL_28;
          }

          if (i >= *(v50 + 16))
          {
            goto LABEL_29;
          }

          v24 = *(v49 + 8 * i);
        }

        v25 = v24;
        if ([v24 v22[443]] >= 3)
        {
          v56 = a1;
          v57 = a2;
          v26 = [v25 rangeAtIndex_];
          v54 = v27;
          v55 = v26;
          v28 = [v25 rangeAtIndex_];
          v30 = v29;
          v31 = [v25 rangeAtIndex_];
          v33 = v32;
          v34 = v53;
          v35 = [v53 substringWithRange_];
          v36 = sub_274BF4F44();
          v38 = v37;

          v39 = [v34 substringWithRange_];
          v40 = sub_274BF4F44();
          v42 = v41;

          if ((sub_274BF5074() & 1) == 0 && (sub_274BF5074() & 1) == 0 && (sub_274BF5074() & 1) == 0 && (sub_274BF5074() & 1) == 0)
          {
            v58 = 0x2F2F3A7370747468;
            v59 = 0xE800000000000000;
            MEMORY[0x277C648E0](v40, v42);

            v40 = v58;
            v42 = v59;
          }

          v58 = 91;
          v59 = 0xE100000000000000;
          MEMORY[0x277C648E0](v36, v38);

          MEMORY[0x277C648E0](10333, 0xE200000000000000);
          MEMORY[0x277C648E0](v40, v42);

          MEMORY[0x277C648E0](41, 0xE100000000000000);
          v43 = sub_274BF4F04();

          v44 = sub_274BF4F04();

          v45 = [v43 stringByReplacingCharactersInRange:v55 withString:{v54, v44}];

          a1 = sub_274BF4F44();
          a2 = v46;

          v21 = v51;
          v19 = v52;
          v22 = &qword_279EF5000;
          if (!i)
          {
LABEL_26:

            return a1;
          }
        }

        else
        {

          if (!i)
          {
            goto LABEL_26;
          }
        }
      }

      __break(1u);
LABEL_28:
      __break(1u);
LABEL_29:
      __break(1u);
LABEL_30:
      ;
    }
  }

  else
  {
    sub_274BF2A54();
    v10 = sub_274BF2BD4();
    v11 = sub_274BF54A4();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_274AD4000, v10, v11, "Failed to create regular expression for markdown link syntax.", v12, 2u);
      MEMORY[0x277C664A0](v12, -1, -1);
    }

    (*(v5 + 8))(v7, v4);
  }

  return a1;
}

uint64_t sub_274B50BF8()
{
  v0 = sub_274BF1DA4();
  MEMORY[0x28223BE20](v0 - 8);
  v1 = sub_274BF1D34();
  MEMORY[0x28223BE20](v1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280989650);
  sub_274AFA930(&qword_28098A4E0, &qword_280989650);
  v2 = sub_274BF4EB4();
  v4 = sub_274B50E94(v2, v3);

  return v4;
}

uint64_t sub_274B50E94(uint64_t a1, uint64_t a2)
{
  v149 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098C438);
  MEMORY[0x28223BE20](v3 - 8);
  v143 = (&v123 - v4);
  v142 = type metadata accessor for WFMarkdownStringFormatter.Block();
  v130 = *(v142 - 8);
  MEMORY[0x28223BE20](v142);
  v132 = &v123 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v131 = &v123 - v7;
  v177 = sub_274BF1DE4();
  v147 = *(v177 - 8);
  MEMORY[0x28223BE20](v177);
  v176 = &v123 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v166 = sub_274BF1E24();
  v134 = *(v166 - 8);
  MEMORY[0x28223BE20](v166);
  v157 = &v123 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098C440);
  MEMORY[0x28223BE20](v10 - 8);
  v163 = &v123 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v141 = &v123 - v13;
  MEMORY[0x28223BE20](v14);
  v154 = &v123 - v15;
  v153 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098C448);
  MEMORY[0x28223BE20](v153);
  v152 = (&v123 - v16);
  v140 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098C388);
  MEMORY[0x28223BE20](v140);
  v158 = &v123 - v17;
  v151 = sub_274BF1C14();
  v148 = *(v151 - 8);
  MEMORY[0x28223BE20](v151);
  v150 = &v123 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v167 = sub_274BF1CD4();
  v146 = *(v167 - 8);
  MEMORY[0x28223BE20](v167);
  v172 = &v123 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v173 = sub_274BF1CB4();
  v133 = *(v173 - 8);
  MEMORY[0x28223BE20](v173);
  v156 = &v123 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v162 = &v123 - v22;
  MEMORY[0x28223BE20](v23);
  v175 = &v123 - v24;
  MEMORY[0x28223BE20](v25);
  v161 = &v123 - v26;
  v165 = sub_274BF1CE4();
  v137 = *(v165 - 8);
  MEMORY[0x28223BE20](v165);
  v136 = &v123 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v135 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098C390);
  MEMORY[0x28223BE20](v135);
  v155 = &v123 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v174 = (&v123 - v30);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098EEE0);
  MEMORY[0x28223BE20](v31 - 8);
  v170 = (&v123 - v32);
  v169 = sub_274BF1C54();
  v164 = *(v169 - 1);
  MEMORY[0x28223BE20](v169);
  v168 = &v123 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_274BF1C64();
  v35 = *(v34 - 8);
  MEMORY[0x28223BE20](v34);
  v37 = &v123 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = sub_274BF1C84();
  MEMORY[0x28223BE20](v38 - 8);
  v145 = sub_274BF1D34();
  v138 = *(v145 - 8);
  MEMORY[0x28223BE20](v145);
  v139 = &v123 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v40);
  v42 = &v123 - v41;
  v43 = sub_274BF4F94();
  v44 = *(v43 - 8);
  MEMORY[0x28223BE20](v43);
  v46 = &v123 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_274BF4F84();
  v144 = a2;
  v47 = sub_274BF4F54();
  v49 = v48;
  v50 = v43;
  v51 = v49;
  (*(v44 + 8))(v46, v50);
  if (v51 >> 60 == 15)
  {
    sub_274B6867C();
    swift_allocError();
    return swift_willThrow();
  }

  else
  {
    (*(v35 + 104))(v37, *MEMORY[0x277CC8BB0], v34);
    (*(v164 + 104))(v168, *MEMORY[0x277CC8B98], v169);
    sub_274B68344(v47, v51);
    sub_274BF1C74();
    v53 = sub_274BF1F54();
    __swift_storeEnumTagSinglePayload(v170, 1, 1, v53);
    v54 = v171;
    sub_274BF1D14();
    if (v54)
    {
      return sub_274B6839C(v47, v51);
    }

    else
    {
      v127 = 0;
      v128 = v47;
      v129 = v51;
      v55 = v136;
      v160 = v42;
      sub_274BF1CF4();
      v56 = v137;
      v57 = *(v137 + 16);
      v58 = v165;
      v126 = v137 + 16;
      v125 = v57;
      v57(v174, v55, v165);
      v59 = *(v135 + 36);
      v60 = sub_274B68818(&qword_28098C3A8, MEMORY[0x277CC8C08]);
      sub_274BF5344();
      v61 = *(v56 + 8);
      v137 = v56 + 8;
      v124 = v61;
      v61(v55, v58);
      v171 = (v146 + 8);
      v169 = (v133 + 32);
      v170 = (v133 + 16);
      ++v148;
      ++v138;
      v168 = (v133 + 8);
      v164 = v60;
      v159 = v59;
      while (1)
      {
        v62 = v172;
        v63 = v174;
        sub_274BF5374();
        v64 = sub_274B68818(&qword_28098C3B0, MEMORY[0x277CC8BF8]);
        v65 = v60;
        v66 = v167;
        v67 = v58;
        v68 = sub_274BF4EF4();
        v69 = *v171;
        (*v171)(v62, v66);
        if (v68)
        {
          break;
        }

        v70 = sub_274BF5414();
        v71 = v161;
        v72 = v173;
        (*v170)(v161);
        v70(&v180, 0);
        sub_274BF5384();
        v73 = v175;
        (*v169)(v175, v71, v72);
        sub_274B683B0();
        sub_274BF1CC4();
        v58 = v67;
        v60 = v65;
        if ((v181 & 1) == 0 && v180 == 64)
        {
          v74 = v150;
          sub_274BF1BF4();
          v75 = v158;
          sub_274BF1CA4();
          v76 = v152;
          sub_274BF1C24();
          sub_274AFA708(v75, &qword_28098C388);
          (*v148)(v74, v151);
          sub_274B68818(&qword_28098C458, MEMORY[0x277CC8B68]);
          v73 = v175;
          v77 = sub_274BF5364();
          sub_274AFA708(v76, &qword_28098C448);
          v78 = v77 == 1;
          v58 = v165;
          if (v78)
          {
            v146 = sub_274B686D0();
            sub_274BF1CC4();
            v79 = v158;
            sub_274BF1CA4();
            v80 = v139;
            sub_274BF1BE4();
            sub_274AFA930(&qword_28098C3C0, &qword_28098C388);
            sub_274B68818(&qword_28098C408, MEMORY[0x277CC8C40]);
            v81 = v145;
            sub_274BF1C04();
            (*v138)(v80, v81);
            sub_274AFA708(v79, &qword_28098C388);
            sub_274BF1CA4();
            v82 = sub_274BF1D64();
            v178 = 128;
            v179 = 0;
            sub_274BF1E54();
            v82(&v180, 0);
            sub_274AFA708(v79, &qword_28098C388);
            sub_274BF1CA4();
            v83 = sub_274BF1D64();
            v84 = v154;
            sub_274B22670(v154, v141, &qword_28098C440);
            sub_274BF1E54();
            v83(&v180, 0);
            v58 = v165;
            v85 = v175;
            sub_274AFA708(v79, &qword_28098C388);
            v60 = v164;
            v73 = v85;
            sub_274AFA708(v84, &qword_28098C440);
          }
        }

        (*v168)(v73, v173);
      }

      v159 = v69;
      v161 = v64;
      sub_274AFA708(v63, &qword_28098C390);
      v178 = MEMORY[0x277D84FA0];
      v86 = v136;
      sub_274BF1CF4();
      v87 = v155;
      v125(v155, v86, v67);
      v158 = *(v135 + 36);
      sub_274BF5344();
      v124(v86, v67);
      v153 = (v134 + 32);
      v174 = (v147 + 8);
      v175 = (v147 + 16);
      v152 = (v134 + 8);
      v151 = MEMORY[0x277D84F90];
      v88 = v156;
      v89 = v167;
      while (1)
      {
        v90 = v172;
        sub_274BF5374();
        v91 = sub_274BF4EF4();
        v159(v90, v89);
        if (v91)
        {
          break;
        }

        v92 = sub_274BF5414();
        v93 = v162;
        v94 = v173;
        (*v170)(v162);
        v92(&v180, 0);
        sub_274BF5384();
        (*v169)(v88, v93, v94);
        sub_274B686D0();
        v95 = v163;
        sub_274BF1CC4();
        v96 = v166;
        if (__swift_getEnumTagSinglePayload(v95, 1, v166) == 1)
        {
          (*v168)(v88, v94);
          sub_274AFA708(v95, &qword_28098C440);
        }

        else
        {
          v97 = v157;
          (*v153)(v157, v95, v96);
          v98 = sub_274BF1DF4();
          v99 = *(v98 + 16);
          if (v99)
          {
            v180 = MEMORY[0x277D84F90];
            sub_274B63E4C();
            v100 = v180;
            v101 = (*(v147 + 80) + 32) & ~*(v147 + 80);
            v154 = v98;
            v102 = v98 + v101;
            v103 = *(v147 + 72);
            v104 = *(v147 + 16);
            do
            {
              v105 = v176;
              v106 = v177;
              v104(v176, v102, v177);
              v107 = sub_274BF1DD4();
              (*v174)(v105, v106);
              v180 = v100;
              v108 = *(v100 + 16);
              if (v108 >= *(v100 + 24) >> 1)
              {
                sub_274B63E4C();
                v100 = v180;
              }

              *(v100 + 16) = v108 + 1;
              *(v100 + 8 * v108 + 32) = v107;
              v102 += v103;
              --v99;
            }

            while (v99);

            v96 = v166;
            v97 = v157;
          }

          else
          {

            v100 = MEMORY[0x277D84F90];
          }

          v180 = MEMORY[0x277C64B60](*(v100 + 16), MEMORY[0x277D83B88], MEMORY[0x277D83B98]);
          v109 = *(v100 + 16);
          v89 = v167;
          if (v109)
          {
            v110 = (v100 + 32);
            do
            {
              v111 = *v110++;
              sub_274B9107C(&v182, v111);
              --v109;
            }

            while (v109);
          }

          v112 = v180;
          if (sub_274B5D528(v180, v178))
          {
            sub_274B5D660(v112);
            v113 = v143;
            v88 = v156;
            sub_274B5D740(v160, v149, v144, v143);
            EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v113, 1, v142);
            v115 = v173;
            if (EnumTagSinglePayload == 1)
            {
              (*v152)(v97, v96);
              (*v168)(v88, v115);
              sub_274AFA708(v113, &qword_28098C438);
            }

            else
            {
              v116 = v113;
              v117 = v131;
              sub_274B68724(v116, v131);
              sub_274B67A94(v117, v132);
              v118 = v151;
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                sub_274BBB538();
                v118 = v121;
              }

              v119 = *(v118 + 16);
              if (v119 >= *(v118 + 24) >> 1)
              {
                sub_274BBB538();
                v118 = v122;
              }

              sub_274B68210(v131);
              (*v152)(v97, v96);
              (*v168)(v88, v173);
              *(v118 + 16) = v119 + 1;
              v120 = (*(v130 + 80) + 32) & ~*(v130 + 80);
              v151 = v118;
              sub_274B68724(v132, v118 + v120 + *(v130 + 72) * v119);
            }
          }

          else
          {

            (*v152)(v97, v96);
            v88 = v156;
            (*v168)(v156, v173);
          }

          v87 = v155;
        }
      }

      sub_274B6839C(v128, v129);
      sub_274AFA708(v87, &qword_28098C390);
      (*v138)(v160, v145);

      return v151;
    }
  }
}

id sub_274B5267C(uint64_t a1, double a2)
{
  v4 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  type metadata accessor for OptionKey(0);
  sub_274B68818(&qword_280989590, type metadata accessor for OptionKey);
  v5 = sub_274BF4DE4();

  v6 = [v4 initWithTextAlignment:a1 location:v5 options:a2];

  return v6;
}

void sub_274B52754(uint64_t a1)
{
  swift_beginAccess();
  if ([*(a1 + 16) length] >= 1)
  {
    swift_beginAccess();
    swift_beginAccess();
    while (1)
    {
      v2 = [*(a1 + 16) string];
      sub_274BF4F44();

      LOBYTE(v2) = sub_274BF5084();

      if ((v2 & 1) == 0)
      {
        break;
      }

      v3 = *(a1 + 16);
      v4 = [v3 length];
      if (__OFSUB__(v4, 1))
      {
        __break(1u);
        return;
      }

      [v3 deleteCharactersInRange_];
    }

    swift_beginAccess();
    if ([*(a1 + 16) length] >= 1)
    {
      swift_beginAccess();
      v5 = *(a1 + 16);
      v6 = sub_274B57170(v5);

      v7 = sub_274B4EBC0();
      [v7 addArrangedSubview_];
    }

    v8 = [objc_allocWithZone(MEMORY[0x277CCAB48]) init];
    swift_beginAccess();
    v9 = *(a1 + 16);
    *(a1 + 16) = v8;
  }
}

id sub_274B52928(uint64_t a1, uint64_t a2)
{
  v2 = 8;
  if (a1 == 2)
  {
    v2 = 16;
  }

  if (a1 == 3)
  {
    v2 = 24;
  }

  return *(a2 + OBJC_IVAR____TtC14WorkflowUICore14WFMarkdownView_style + v2);
}

uint64_t sub_274B52958(char a1, char a2)
{
  v2 = a1 & 2;
  if ((a1 & 2) != 0)
  {
    v3 = 3;
  }

  else
  {
    v3 = 1;
  }

  if (a1)
  {
    v2 = v3;
  }

  if (a2)
  {
    return 0;
  }

  else
  {
    return v2;
  }
}

id sub_274B52978()
{
  v1 = v0;
  sub_274AD8430(0, &unk_28098EEF0);
  v2 = sub_274B4DB08(0xA0C2);
  v3 = [objc_allocWithZone(MEMORY[0x277D74240]) init];
  v4 = v1 + OBJC_IVAR____TtC14WorkflowUICore14WFMarkdownView_style;
  [v3 setParagraphSpacing_];
  [v3 setAlignment_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098C398);
  inited = swift_initStackObject();
  v6 = MEMORY[0x277D740A8];
  *(inited + 16) = xmmword_274BFFAC0;
  v7 = *v6;
  *(inited + 32) = *v6;
  v8 = objc_opt_self();
  v9 = *(v4 + 328);
  v10 = v7;
  v11 = [v8 systemFontOfSize_];
  v12 = sub_274AD8430(0, &qword_28098EF20);
  *(inited + 40) = v11;
  v13 = *MEMORY[0x277D740C0];
  *(inited + 64) = v12;
  *(inited + 72) = v13;
  v14 = objc_opt_self();
  v15 = v13;
  v16 = [v14 clearColor];
  v17 = sub_274AD8430(0, &qword_28098C3A0);
  *(inited + 80) = v16;
  v18 = *MEMORY[0x277D74118];
  *(inited + 104) = v17;
  *(inited + 112) = v18;
  *(inited + 144) = sub_274AD8430(0, &unk_28098B2E0);
  *(inited + 120) = v3;
  type metadata accessor for Key(0);
  OUTLINED_FUNCTION_0_17();
  sub_274B68818(v19, v20);
  v21 = v18;
  v22 = v3;
  sub_274BF4E14();
  v23 = sub_274BF4DE4();

  v24 = v2;
  [v24 addAttributes:v23 range:{0, objc_msgSend(v24, sel_length)}];

  return v24;
}

void sub_274B52C18()
{
  OUTLINED_FUNCTION_34_1();
  v2 = v1;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098C388);
  OUTLINED_FUNCTION_69(v5);
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_13_0();
  OUTLINED_FUNCTION_11_6(v7);
  v8 = sub_274BF1CD4();
  OUTLINED_FUNCTION_50_0(v8);
  OUTLINED_FUNCTION_1();
  v93 = v9;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_3_10();
  OUTLINED_FUNCTION_11_6(v11);
  v12 = sub_274BF1CB4();
  OUTLINED_FUNCTION_1();
  v92 = v13;
  MEMORY[0x28223BE20](v14);
  v16 = v77 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_38_1();
  OUTLINED_FUNCTION_11_6(v18);
  v96 = sub_274BF1CE4();
  OUTLINED_FUNCTION_1();
  v94 = v19;
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_3_10();
  v90 = v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098C390) - 8;
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_88();
  v24 = sub_274BF1D34();
  OUTLINED_FUNCTION_1();
  v26 = v25;
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_4();
  sub_274AD8430(0, &unk_28098EEF0);
  v28 = OUTLINED_FUNCTION_82();
  v88 = v24;
  v87 = v26 + 16;
  v85 = v29;
  (v29)(v28);
  OUTLINED_FUNCTION_85(&v100);
  v95 = sub_274BF5584();
  v30 = v90;
  v91 = v4;
  sub_274BF1CF4();
  v31 = v94;
  v32 = v30;
  v33 = v30;
  v34 = v96;
  (*(v94 + 16))(v0, v32, v96);
  v35 = *(v22 + 44);
  OUTLINED_FUNCTION_5_10();
  sub_274B68818(v36, v37);
  sub_274BF5344();
  (*(v31 + 8))(v33, v34);
  v94 = v77[1] + OBJC_IVAR____TtC14WorkflowUICore14WFMarkdownView_style;
  OUTLINED_FUNCTION_57_0();
  v84 = v92 + 16;
  v83 = v92 + 32;
  v82 = v92 + 8;
  v81 = *MEMORY[0x277D740A8];
  v80 = *MEMORY[0x277D740C0];
  v78 = xmmword_274BFA880;
  v92 = v2;
  v90 = v12;
  v79 = v35;
  while (1)
  {
    sub_274BF5374();
    OUTLINED_FUNCTION_4_11();
    sub_274B68818(&qword_28098C3B0, v38);
    v39 = sub_274BF4EF4();
    OUTLINED_FUNCTION_21_2();
    v40 = OUTLINED_FUNCTION_4_8();
    v41(v40);
    if (v39)
    {
      break;
    }

    v42 = sub_274BF5414();
    OUTLINED_FUNCTION_21_2();
    v43 = v89;
    v44(v89);
    v45 = OUTLINED_FUNCTION_47();
    v42(v45);
    sub_274BF5384();
    OUTLINED_FUNCTION_21_2();
    v46(v16, v43, v12);
    sub_274B683B0();
    sub_274BF1CC4();
    if ((v99 & 1) == 0)
    {
      v47 = v98 & 2;
      if ((v98 & 2) != 0)
      {
        v48 = 3;
      }

      else
      {
        v48 = 1;
      }

      if (v98)
      {
        v47 = v48;
      }

      else if ((v98 & 2) == 0)
      {
        goto LABEL_13;
      }

      v49 = [v2 fontDescriptor];
      v50 = [v49 fontDescriptorWithSymbolicTraits_];

      if (v50)
      {
        [v2 pointSize];
        v52 = [objc_opt_self() fontWithDescriptor:v50 size:v51];

        goto LABEL_14;
      }
    }

LABEL_13:
    v52 = v2;
LABEL_14:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098C398);
    inited = swift_initStackObject();
    OUTLINED_FUNCTION_40_0(inited, &v97);
    v54 = v81;
    *(v55 + 32) = v81;
    v56 = sub_274AD8430(0, &qword_28098EF20);
    inited[2].n128_u64[1] = v52;
    v57 = v80;
    inited[4].n128_u64[0] = v56;
    inited[4].n128_u64[1] = v57;
    OUTLINED_FUNCTION_70_0();
    v59 = *(v58 + 48);
    inited[6].n128_u64[1] = sub_274AD8430(0, &qword_28098C3A0);
    inited[5].n128_u64[0] = v59;
    type metadata accessor for Key(0);
    OUTLINED_FUNCTION_0_17();
    sub_274B68818(&qword_280989580, v60);
    v61 = v54;
    v62 = v52;
    v63 = v57;
    v64 = v59;
    sub_274BF4E14();
    v65 = sub_274BF4DE4();

    sub_274BF1CA4();
    v85(v86, v91, v88);
    OUTLINED_FUNCTION_2_19();
    sub_274AFA930(&qword_28098C3C0, &qword_28098C388);
    OUTLINED_FUNCTION_7_13();
    sub_274B68818(&qword_28098C408, v66);
    sub_274BF56F4();
    v67 = OUTLINED_FUNCTION_42_0();
    [v67 v68];

    OUTLINED_FUNCTION_21_2();
    v12 = v90;
    v69(v16, v90);
    v2 = v92;
  }

  sub_274AFA708(v0, &qword_28098C390);
  v70 = [objc_allocWithZone(MEMORY[0x277D74240]) init];
  v71 = v70;
  v72 = v94;
  v73 = *(v94 + 320);
  if (v73 < 0.0)
  {
    v73 = 0.0;
  }

  [v70 setParagraphSpacing_];
  [v71 setLineSpacing_];
  v74 = *MEMORY[0x277D74118];
  v75 = v71;
  v76 = v95;
  [v76 addAttribute:v74 value:v75 range:{0, objc_msgSend(v76, sel_length)}];

  sub_274B5953C(v76);
  OUTLINED_FUNCTION_33_1();
}

void sub_274B53524(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_34_1();
  a21 = v22;
  a22 = v23;
  v101[0] = v24;
  v26 = v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098C388);
  OUTLINED_FUNCTION_60(v27);
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_13_0();
  OUTLINED_FUNCTION_11_6(v29);
  v30 = sub_274BF1CD4();
  OUTLINED_FUNCTION_50_0(v30);
  OUTLINED_FUNCTION_1();
  v115 = v31;
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_3_10();
  OUTLINED_FUNCTION_11_6(v33);
  v34 = sub_274BF1CB4();
  OUTLINED_FUNCTION_69(v34);
  OUTLINED_FUNCTION_1();
  v112 = v35;
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_3_10();
  OUTLINED_FUNCTION_11_6(v37);
  v38 = sub_274BF1CE4();
  OUTLINED_FUNCTION_1();
  v40 = v39;
  MEMORY[0x28223BE20](v41);
  OUTLINED_FUNCTION_4();
  v44 = v43 - v42;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098C390) - 8;
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v46);
  v48 = v101 - v47;
  v49 = sub_274BF1D34();
  OUTLINED_FUNCTION_1();
  v51 = v50;
  MEMORY[0x28223BE20](v52);
  OUTLINED_FUNCTION_4();
  v55 = v54 - v53;
  sub_274AD8430(0, &unk_28098EEF0);
  v56 = *(v51 + 16);
  v111 = v49;
  v110 = v51 + 16;
  v108 = v56;
  v56(v55, v26, v49);
  v109 = v55;
  v116 = sub_274BF5584();
  v114 = v26;
  sub_274BF1CF4();
  (*(v40 + 16))(v48, v44, v38);
  v57 = *(v45 + 44);
  OUTLINED_FUNCTION_5_10();
  v60 = sub_274B68818(v58, v59);
  sub_274BF5344();
  (*(v40 + 8))(v44, v38);
  v119 = v101[1] + OBJC_IVAR____TtC14WorkflowUICore14WFMarkdownView_style;
  OUTLINED_FUNCTION_70_0();
  v115 = v61 + 8;
  OUTLINED_FUNCTION_27_3(&a12);
  v106 = *MEMORY[0x277D740A8];
  v104 = *MEMORY[0x277D740C0];
  v102 = xmmword_274BFA880;
  v112 = v38;
  v107 = v57;
  v105 = v60;
  v62 = v106;
  while (1)
  {
    v63 = v117;
    sub_274BF5374();
    OUTLINED_FUNCTION_4_11();
    sub_274B68818(&qword_28098C3B0, v64);
    v65 = v118;
    v66 = sub_274BF4EF4();
    OUTLINED_FUNCTION_21_2();
    v67(v63, v65);
    if (v66)
    {
      break;
    }

    v68 = sub_274BF5414();
    OUTLINED_FUNCTION_21_2();
    v69 = v103;
    v70 = v113;
    v71(v103);
    v72 = OUTLINED_FUNCTION_47();
    v68(v72);
    sub_274BF5384();
    sub_274BF1CA4();
    v108(v109, v114, v111);
    OUTLINED_FUNCTION_2_19();
    sub_274AFA930(&qword_28098C3C0, &qword_28098C388);
    OUTLINED_FUNCTION_7_13();
    sub_274B68818(&qword_28098C408, v73);
    OUTLINED_FUNCTION_58_0();
    v74 = sub_274BF56F4();
    v76 = v75;
    sub_274B683B0();
    sub_274BF1CC4();
    OUTLINED_FUNCTION_21_2();
    v77(v69, v70);
    if (v122 == 1)
    {
      v78 = *v119;
LABEL_5:
      v79 = v78;
      goto LABEL_15;
    }

    v80 = v121 & 2;
    if (v121)
    {
      if ((v121 & 2) != 0)
      {
        v80 = 3;
      }

      else
      {
        v80 = 1;
      }

      v78 = *v119;
    }

    else
    {
      v78 = *v119;
      if ((v121 & 2) == 0)
      {
        goto LABEL_5;
      }
    }

    v79 = v78;
    v81 = [v79 fontDescriptor];
    v82 = [v81 fontDescriptorWithSymbolicTraits_];

    if (v82)
    {
      [v79 pointSize];
      v84 = [objc_opt_self() fontWithDescriptor:v82 size:v83];

      v79 = v84;
    }

LABEL_15:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098C398);
    inited = swift_initStackObject();
    OUTLINED_FUNCTION_40_0(inited, &v120);
    *(v86 + 32) = v62;
    v87 = sub_274AD8430(0, &qword_28098EF20);
    inited[2].n128_u64[1] = v79;
    v88 = v104;
    inited[4].n128_u64[0] = v87;
    inited[4].n128_u64[1] = v88;
    v89 = *(v119 + 56);
    inited[6].n128_u64[1] = sub_274AD8430(0, &qword_28098C3A0);
    inited[5].n128_u64[0] = v89;
    type metadata accessor for Key(0);
    OUTLINED_FUNCTION_0_17();
    sub_274B68818(&qword_280989580, v90);
    v91 = v62;
    v92 = v79;
    v93 = v88;
    v94 = v89;
    OUTLINED_FUNCTION_72_0();
    sub_274BF4E14();
    OUTLINED_FUNCTION_72_0();
    v95 = sub_274BF4DE4();

    v96 = OUTLINED_FUNCTION_42_0();
    [v96 v97];
  }

  sub_274AFA708(v48, &qword_28098C390);
  v98 = *MEMORY[0x277D74118];
  v99 = v116;
  v100 = [v99 length];
  [v99 addAttribute:v98 value:v101[0] range:{0, v100}];
  sub_274B5953C(v99);

  OUTLINED_FUNCTION_33_1();
}

uint64_t sub_274B53D84(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v205 = a4;
  v206 = a3;
  v196 = sub_274BF1B34();
  OUTLINED_FUNCTION_1();
  v243 = v6;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_3_10();
  v195 = v8;
  v223 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098C388);
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_13_0();
  v222 = v10;
  OUTLINED_FUNCTION_70();
  v228 = sub_274BF1CD4();
  OUTLINED_FUNCTION_1();
  v241 = v11;
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_3_10();
  v227 = v13;
  OUTLINED_FUNCTION_70();
  v211 = sub_274BF1CB4();
  OUTLINED_FUNCTION_1();
  v15 = v14;
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_9();
  v245 = v17;
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_38_1();
  v221 = v19;
  OUTLINED_FUNCTION_70();
  v242 = sub_274BF1CE4();
  v20 = *(v242 - 8);
  MEMORY[0x28223BE20](v242 - 8);
  OUTLINED_FUNCTION_3_10();
  v200 = v21;
  v199 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098C390);
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v22);
  v24 = &v186 - v23;
  v203 = sub_274BF1BD4();
  OUTLINED_FUNCTION_0_2();
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_3_10();
  v202 = v26;
  OUTLINED_FUNCTION_70();
  v231 = sub_274BF1D34();
  OUTLINED_FUNCTION_1();
  v28 = v27;
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_9();
  v230 = v30;
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_38_1();
  v232 = v32;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098C410);
  v34 = OUTLINED_FUNCTION_7_1(v33);
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_9();
  v204 = v35;
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v36);
  v38 = (&v186 - v37);
  v39 = [objc_allocWithZone(MEMORY[0x277CCAB48]) init];
  v40 = [objc_allocWithZone(MEMORY[0x277D74240]) init];
  v215 = v4;
  v41 = v4 + OBJC_IVAR____TtC14WorkflowUICore14WFMarkdownView_style;
  [v40 setParagraphSpacing_];
  v244 = v41;
  v42 = *(v41 + 304);
  v187 = v40;
  v43 = OUTLINED_FUNCTION_79_0();
  [v44 v45];
  *&v248 = 0;
  v247 = a1;
  v201 = (v28 + 32);
  v188 = v206 + 32;
  v189 = v205 + 32;
  v229 = (v28 + 16);
  v197 = v20 + 8;
  v198 = (v20 + 16);
  v46 = v38;
  v47 = v39;
  v226 = v241 + 8;
  v219 = v15 + 32;
  v220 = v15 + 16;
  v234 = *MEMORY[0x277D740A8];
  v233 = *MEMORY[0x277D740C0];
  v218 = (v15 + 8);
  v194 = v243 + 8;
  v217 = *MEMORY[0x277D74118];
  v190 = (v28 + 8);
  v193 = a1;

  v208 = xmmword_274BFFAC0;
  v212 = xmmword_274BFFAB0;
  v216 = xmmword_274BFA880;
  v237 = v24;
  v191 = v38;
  v192 = v39;
  while (1)
  {
    v48 = v204;
    sub_274B4D98C(v204);
    sub_274B21EA8(v48, v46, &qword_28098C410);
    v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098C418);
    if (__swift_getEnumTagSinglePayload(v46, 1, v49) == 1)
    {

      OUTLINED_FUNCTION_7_10();
      v168 = swift_allocObject();
      *(v168 + 16) = 0;
      *(v168 + 24) = 0;
      *(v168 + 32) = 1;
      v86 = v47;
      if ([v86 length] >= 1)
      {
        v169 = [v86 string];
        v170 = sub_274BF4F44();
        v172 = v171;

        *&v249[0] = v170;
        *(&v249[0] + 1) = v172;

        v173 = [v86 string];
        v174 = sub_274BF4F44();
        v176 = v175;

        v177 = HIBYTE(v176) & 0xF;
        if ((v176 & 0x2000000000000000) == 0)
        {
          v177 = v174;
        }

        v178 = 7;
        if (((v176 >> 60) & ((v174 & 0x800000000000000) == 0)) != 0)
        {
          v178 = 11;
        }

        *&v247 = 15;
        *(&v247 + 1) = v178 | (v177 << 16);
        v179 = swift_allocObject();
        *(v179 + 16) = v168;
        *(v179 + 24) = v86;
        v180 = v86;

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098C360);
        sub_274ADDF6C();
        OUTLINED_FUNCTION_2_19();
        sub_274AFA930(v181, &qword_28098C360);
        sub_274BF5784();
      }

      OUTLINED_FUNCTION_37_0();
      swift_beginAccess();
      if (*(v168 + 32) == 1)
      {
        goto LABEL_82;
      }

      v88 = *(v168 + 16);
      v87 = *(v168 + 24);
      if (v88 == sub_274BF1A84())
      {
        goto LABEL_82;
      }

      if ([v86 attribute:v217 atIndex:v88 effectiveRange:0])
      {
        sub_274BF57C4();
        swift_unknownObjectRelease();
      }

      else
      {
LABEL_78:
        v247 = 0u;
        v248 = 0u;
      }

      v249[0] = v247;
      v249[1] = v248;
      if (!*(&v248 + 1))
      {

        sub_274AFA708(v249, &qword_28098B300);

        return v86;
      }

      sub_274AD8430(0, &qword_28098C350);
      if ((swift_dynamicCast() & 1) == 0)
      {
LABEL_82:
      }

      else
      {
        v182 = v246;
        [v246 mutableCopy];
        sub_274BF57C4();
        swift_unknownObjectRelease();
        sub_274AD8430(0, &unk_28098B2E0);
        swift_dynamicCast();
        v183 = v247;
        v184 = v187;
        [v187 paragraphSpacing];
        [v183 setParagraphSpacing_];
        [v184 lineSpacing];
        [v183 setLineSpacing_];
        v185 = v183;
        [v86 addAttribute:v217 value:v185 range:{v88, v87}];
      }

      return v86;
    }

    v207 = *v46;
    (*v201)(v232, v46 + *(v49 + 48), v231);
    sub_274BF1BC4();
    sub_274B68818(&qword_28098C420, MEMORY[0x277CC8B30]);
    v50 = sub_274BF50C4();
    v52 = HIBYTE(v51) & 0xF;
    if ((v51 & 0x2000000000000000) == 0)
    {
      v52 = v50 & 0xFFFFFFFFFFFFLL;
    }

    v53 = 4 * v52;
    v54 = 15;
    v55 = v211;
    while (v53 != v54 >> 14)
    {
      OUTLINED_FUNCTION_75();
      if (sub_274BF50B4() == 32 && v56 == 0xE100000000000000)
      {
      }

      else
      {
        v58 = sub_274BF5C24();

        if ((v58 & 1) == 0)
        {
          break;
        }
      }

      OUTLINED_FUNCTION_75();
      v54 = sub_274BF5014();
    }

    sub_274BF50D4();

    v60 = 0.0;
    if (v207 >= *(v206 + 16))
    {
      goto LABEL_18;
    }

    if (v207 < 0)
    {
      break;
    }

    v60 = *(v188 + 8 * v207) * 30.0;
LABEL_18:
    v61 = *(v244 + 344);
    v62 = *(v244 + 352);
    if (v207 >= *(v205 + 16) || (v63 = (v189 + 16 * v207), (v63[1] & 1) != 0))
    {
      *&v210 = 161644770;
      *(&v210 + 1) = 0xA400000000000000;
    }

    else
    {
      v250 = *v63;
      *&v249[0] = sub_274BF5BE4();
      *(&v249[0] + 1) = v64;
      MEMORY[0x277C648E0](2350, 0xE200000000000000);
      v210 = v249[0];
    }

    v65 = sub_274AD8430(0, &unk_28098EEF0);
    v243 = *v229;
    (v243)(v230, v232, v231);
    v209 = v65;
    v66 = sub_274BF5584();
    OUTLINED_FUNCTION_58_0();
    v67 = sub_274BF5734();

    if (v67 >= 1 && [v66 length] >= v67)
    {
      [v66 deleteCharactersInRange_];
    }

    v68 = v60 + v61;
    v69 = v60 + v62;
    v70 = v200;
    sub_274BF1CF4();
    v71 = v242;
    (*v198)(v24, v70, v242);
    v72 = *(v199 + 36);
    OUTLINED_FUNCTION_5_10();
    v74 = sub_274B68818(&qword_28098C3A8, v73);
    sub_274BF5344();
    v75 = OUTLINED_FUNCTION_39_1();
    v76(v75, v71);
    v238 = v67;
    v239 = v66;
    v240 = v74;
    v241 = v72;
    while (1)
    {
      sub_274BF5374();
      OUTLINED_FUNCTION_4_11();
      sub_274B68818(&qword_28098C3B0, v77);
      v78 = sub_274BF4EF4();
      v79 = OUTLINED_FUNCTION_75();
      v80(v79);
      if (v78)
      {
        break;
      }

      v81 = sub_274BF5414();
      v82 = OUTLINED_FUNCTION_39_1();
      v83(v82);
      v81(v249, 0);
      sub_274BF5384();
      v84 = OUTLINED_FUNCTION_86();
      v85(v84);
      v86 = v222;
      sub_274BF1CA4();
      v87 = v231;
      (v243)(v230, v232, v231);
      OUTLINED_FUNCTION_2_19();
      v88 = sub_274AFA930(&qword_28098C3C0, &qword_28098C388);
      OUTLINED_FUNCTION_7_13();
      sub_274B68818(&qword_28098C408, v89);
      OUTLINED_FUNCTION_58_0();
      v90 = sub_274BF56F4();
      if (__OFSUB__(v90, v67))
      {
        __break(1u);
LABEL_73:
        __break(1u);
LABEL_74:
        __break(1u);
LABEL_75:
        __break(1u);
LABEL_76:
        __break(1u);
LABEL_77:
        __break(1u);
        goto LABEL_78;
      }

      v92 = v91;
      v93 = (v90 - v67) & ~((v90 - v67) >> 63);
      v88 = (v93 + v91);
      if (__OFADD__(v93, v91))
      {
        goto LABEL_73;
      }

      if ([v66 length] >= v88)
      {
        sub_274B683B0();
        sub_274BF1CC4();
        if (BYTE8(v249[0]) == 1)
        {
          v94 = *v244;
          goto LABEL_32;
        }

        v96 = v249[0] & 2;
        if (v249[0])
        {
          if ((v249[0] & 2) != 0)
          {
            v96 = 3;
          }

          else
          {
            v96 = 1;
          }

          v94 = *v244;
LABEL_40:
          v95 = v94;
          v97 = [v95 fontDescriptor];
          v98 = [v97 fontDescriptorWithSymbolicTraits_];

          if (v98)
          {
            [v95 pointSize];
            v100 = [objc_opt_self() fontWithDescriptor:v98 size:v99];

            v95 = v100;
          }
        }

        else
        {
          v94 = *v244;
          if ((v249[0] & 2) != 0)
          {
            goto LABEL_40;
          }

LABEL_32:
          v95 = v94;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098C398);
        inited = swift_initStackObject();
        inited[1] = v216;
        v102 = v234;
        inited[2].n128_u64[0] = v234;
        v103 = sub_274AD8430(0, &qword_28098EF20);
        inited[2].n128_u64[1] = v95;
        v104 = v233;
        inited[4].n128_u64[0] = v103;
        inited[4].n128_u64[1] = v104;
        v105 = *(v244 + 56);
        inited[6].n128_u64[1] = sub_274AD8430(0, &qword_28098C3A0);
        inited[5].n128_u64[0] = v105;
        type metadata accessor for Key(0);
        OUTLINED_FUNCTION_0_17();
        sub_274B68818(&qword_280989580, v106);
        v107 = v102;
        v108 = v95;
        v109 = v104;
        v110 = v105;
        OUTLINED_FUNCTION_72_0();
        sub_274BF4E14();
        OUTLINED_FUNCTION_72_0();
        v111 = sub_274BF4DE4();

        v66 = v239;
        [v239 addAttributes:v111 range:{v93, v92}];

        v55 = v211;
        v24 = v237;
        v67 = v238;
      }

      (*v218)(v245, v55);
    }

    sub_274AFA708(v24, &qword_28098C390);
    v112 = [v66 string];
    v113 = sub_274BF4F44();
    v87 = v114;

    *&v249[0] = v113;
    *(&v249[0] + 1) = v87;
    sub_274BF1B24();
    sub_274ADDF6C();
    v88 = sub_274BF5754();
    v115 = OUTLINED_FUNCTION_39_1();
    v116(v115, v196);

    v238 = [objc_allocWithZone(MEMORY[0x277CCAB48]) init];
    v117 = 0;
    v118 = 0;
    v224 = v88[2];
    v225 = v88;
    v119 = v88 + 5;
    v86 = &qword_279EF5000;
    while (v224 != v118)
    {
      if (v118 >= v225[2])
      {
        goto LABEL_74;
      }

      v121 = *(v119 - 1);
      v120 = *v119;
      v240 = v119;

      v241 = sub_274BF5004();
      v243 = v117;
      if (v118)
      {
        v122 = sub_274AD8430(0, qword_28098A8F0);
        OUTLINED_FUNCTION_26_3();
        sub_274B17D10();
        OUTLINED_FUNCTION_84_0();
        [v238 v123];

        v87 = &selRef_setOutline_;
        v124 = [objc_allocWithZone(MEMORY[0x277D74240]) init];
        [v124 setHeadIndent_];
        [v124 setFirstLineHeadIndent_];
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280989FC8);
        OUTLINED_FUNCTION_7_10();
        v86 = swift_allocObject();
        *(v86 + 1) = v212;
        sub_274AD8430(0, &qword_28098C290);
        type metadata accessor for OptionKey(0);
        OUTLINED_FUNCTION_20_2();
        sub_274B68818(&qword_280989590, v125);
        sub_274BF4E14();
        v86[4] = sub_274B5267C(0, v68);
        sub_274B67A10(v86, v124);
        [v124 setParagraphSpacing_];
        [v124 setLineSpacing_];
        v126 = [objc_allocWithZone(MEMORY[0x277CCAB48]) init];
        v88 = &v117[v241];
        if (__OFADD__(v117, v241))
        {
          goto LABEL_77;
        }

        v87 = v126;
        v127 = v241;
        v128 = v239;
        if ([v239 length] >= v88)
        {

          v141 = v128;
          v88 = [v128 attributedSubstringFromRange_];
          v86 = &qword_279EF5000;
          v137 = v238;
        }

        else
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098C398);
          v129 = swift_initStackObject();
          OUTLINED_FUNCTION_51(v129, v216);
          v214 = *v128;
          v130 = v214;
          v131 = sub_274AD8430(0, &qword_28098EF20);
          v129[2].n128_u64[1] = v130;
          v235 = v121;
          v132 = v233;
          v129[4].n128_u64[0] = v131;
          v129[4].n128_u64[1] = v132;
          v133 = v128[7];
          v129[6].n128_u64[1] = sub_274AD8430(0, &qword_28098C3A0);
          v129[5].n128_u64[0] = v133;
          type metadata accessor for Key(0);
          v213 = v134;
          OUTLINED_FUNCTION_0_17();
          sub_274B68818(&qword_280989580, v135);
          v136 = v120;
          v137 = v238;
          v138 = v214;
          v139 = v132;
          v140 = v133;
          v141 = v239;
          v142 = sub_274BF4E14();
          v143 = objc_allocWithZone(MEMORY[0x277CCA898]);
          v88 = sub_274B636A0(v235, v236, v142);
          v86 = &qword_279EF5000;
        }

        [v87 v86[297]];

        v163 = [v87 length];
        [v87 addAttribute:v217 value:v124 range:{0, v163}];
        [v137 v86[297]];
      }

      else
      {
        v144 = sub_274B55518(v215, v69, v68);
        v213 = v144;

        v124 = sub_274B4DB08(v210);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098C398);
        v145 = swift_initStackObject();
        OUTLINED_FUNCTION_51(v145, v208);
        v214 = *v86;
        v146 = v214;
        v147 = sub_274AD8430(0, &qword_28098EF20);
        v145[2].n128_u64[1] = v146;
        v148 = v233;
        v145[4].n128_u64[0] = v147;
        v145[4].n128_u64[1] = v148;
        v149 = v86[8];
        v150 = sub_274AD8430(0, &qword_28098C3A0);
        v145[5].n128_u64[0] = v149;
        v235 = v121;
        v151 = v217;
        v145[6].n128_u64[1] = v150;
        v145[7].n128_u64[0] = v151;
        v145[9].n128_u64[0] = sub_274AD8430(0, &qword_28098C350);
        v145[7].n128_u64[1] = v144;
        type metadata accessor for Key(0);
        OUTLINED_FUNCTION_0_17();
        sub_274B68818(&qword_280989580, v152);
        v153 = v120;
        v154 = v238;
        v155 = v214;
        v156 = v148;
        v157 = v149;
        v158 = v151;
        v159 = v213;
        sub_274BF4E14();
        v160 = sub_274BF4DE4();

        [v124 length];
        v161 = OUTLINED_FUNCTION_81_0();
        [v161 v162];

        v86 = &qword_279EF5000;
        v127 = v241;
        v88 = v236;
        v141 = v239;
        v87 = sub_274B5569C(v243, v241, v235, v236, v159, v239, v215);

        [v154 appendAttributedString_];
        [v154 appendAttributedString_];
      }

      v164 = v127 + 1;
      if (__OFADD__(v127, 1))
      {
        goto LABEL_75;
      }

      v119 = (v240 + 16);
      ++v118;
      v117 = &v243[v164];
      v24 = v237;
      v66 = v141;
      if (__OFADD__(v243, v164))
      {
        goto LABEL_76;
      }
    }

    v165 = v238;
    sub_274B5953C(v238);
    v47 = v192;
    [v192 v86[297]];
    if (v207 >= *(v193 + 16) - 1)
    {
      (*v190)(v232, v231);
    }

    else
    {
      v166 = sub_274AD8430(0, qword_28098A8F0);
      OUTLINED_FUNCTION_26_3();
      sub_274B17D10();
      OUTLINED_FUNCTION_84_0();
      [v47 v167];

      (*v190)(v232, v231);
    }

    v46 = v191;
  }

  __break(1u);
  return result;
}

id sub_274B55518(uint64_t a1, double a2, double a3)
{
  v6 = [objc_allocWithZone(MEMORY[0x277D74240]) init];
  [v6 setHeadIndent_];
  [v6 setFirstLineHeadIndent_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280989FC8);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_274BFFAB0;
  sub_274AD8430(0, &qword_28098C290);
  type metadata accessor for OptionKey(0);
  sub_274B68818(&qword_280989590, type metadata accessor for OptionKey);
  sub_274BF4E14();
  *(v7 + 32) = sub_274B5267C(0, a3);
  sub_274B67A10(v7, v6);
  v8 = a1 + OBJC_IVAR____TtC14WorkflowUICore14WFMarkdownView_style;
  [v6 setParagraphSpacing_];
  [v6 setLineSpacing_];
  return v6;
}

id sub_274B5569C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7)
{
  result = [objc_allocWithZone(MEMORY[0x277CCAB48]) init];
  if (__OFADD__(a1, a2))
  {
    __break(1u);
  }

  else
  {
    v15 = result;
    v16 = &selRef_setOutline_;
    if ([a6 length] >= a1 + a2)
    {
      v31 = [a6 attributedSubstringFromRange_];
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098C398);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_274BFA880;
      v18 = *MEMORY[0x277D740A8];
      *(inited + 32) = *MEMORY[0x277D740A8];
      v19 = a7 + OBJC_IVAR____TtC14WorkflowUICore14WFMarkdownView_style;
      v20 = *v19;
      v21 = sub_274AD8430(0, &qword_28098EF20);
      *(inited + 40) = v20;
      v33 = a3;
      v22 = *MEMORY[0x277D740C0];
      *(inited + 64) = v21;
      *(inited + 72) = v22;
      v23 = a5;
      v24 = *(v19 + 56);
      *(inited + 104) = sub_274AD8430(0, &qword_28098C3A0);
      *(inited + 80) = v24;
      type metadata accessor for Key(0);
      sub_274B68818(&qword_280989580, type metadata accessor for Key);

      v25 = v18;
      v26 = v20;
      v27 = v22;
      v28 = v24;
      a5 = v23;
      v16 = &selRef_setOutline_;
      v29 = sub_274BF4E14();
      v30 = objc_allocWithZone(MEMORY[0x277CCA898]);
      v31 = sub_274B636A0(v33, a4, v29);
    }

    v32 = v31;
    [v15 appendAttributedString_];

    [v15 addAttribute:*MEMORY[0x277D74118] value:a5 range:{0, objc_msgSend(v15, v16[314])}];
    return v15;
  }

  return result;
}

uint64_t sub_274B55904(int a1, int a2, int a3, int a4, int a5, int a6, _BYTE *a7, uint64_t a8, id a9)
{
  v11 = [a9 string];
  sub_274BF4F44();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098C360);
  sub_274AFA930(&qword_28098EF00, &qword_28098C360);
  sub_274ADDF6C();
  v12 = sub_274BF5704();
  v14 = v13;
  result = swift_beginAccess();
  *(a8 + 16) = v12;
  *(a8 + 24) = v14;
  *(a8 + 32) = 0;
  *a7 = 1;
  return result;
}

void sub_274B55A10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_34_1();
  a21 = v23;
  a22 = v24;
  OUTLINED_FUNCTION_50_0(v25);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098C388);
  OUTLINED_FUNCTION_60(v26);
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_13_0();
  OUTLINED_FUNCTION_11_6(v28);
  v119 = sub_274BF1CD4();
  OUTLINED_FUNCTION_1();
  v117 = v29;
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_3_10();
  OUTLINED_FUNCTION_11_6(v31);
  v32 = sub_274BF1CB4();
  OUTLINED_FUNCTION_69(v32);
  OUTLINED_FUNCTION_1();
  v114 = v33;
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_3_10();
  OUTLINED_FUNCTION_11_6(v35);
  v36 = sub_274BF1CE4();
  OUTLINED_FUNCTION_1();
  v38 = v37;
  MEMORY[0x28223BE20](v39);
  OUTLINED_FUNCTION_4();
  v42 = v41 - v40;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098C390) - 8;
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v44);
  v46 = &v103 - v45;
  v47 = sub_274BF1D34();
  OUTLINED_FUNCTION_1();
  v49 = v48;
  MEMORY[0x28223BE20](v50);
  OUTLINED_FUNCTION_4();
  v53 = v52 - v51;
  v54 = [objc_allocWithZone(MEMORY[0x277D74240]) init];
  v104 = v22;
  v55 = (v22 + OBJC_IVAR____TtC14WorkflowUICore14WFMarkdownView_style);
  v56 = v55[33] + v55[31] + v55[37];
  [v54 setHeadIndent_];
  [v54 setFirstLineHeadIndent_];
  [v54 setParagraphSpacing_];
  v121 = v55;
  v57 = OUTLINED_FUNCTION_85(&v122);
  [v57 v58];
  sub_274AD8430(0, &unk_28098EEF0);
  v59 = *(v49 + 16);
  v113 = v47;
  v112 = v49 + 16;
  v110 = v59;
  v59(v53, v120, v47);
  v111 = v53;
  v118 = sub_274BF5584();
  sub_274BF1CF4();
  v60 = OUTLINED_FUNCTION_30_3();
  v61(v60);
  v62 = *(v43 + 44);
  OUTLINED_FUNCTION_5_10();
  v65 = sub_274B68818(v63, v64);
  sub_274BF5344();
  (*(v38 + 8))(v42, v36);
  OUTLINED_FUNCTION_57_0();
  OUTLINED_FUNCTION_27_3(&a11);
  v109 = *MEMORY[0x277D740A8];
  v107 = *MEMORY[0x277D740C0];
  v105 = xmmword_274BFA880;
  v114 = v36;
  v108 = v62;
  v106 = v65;
  while (1)
  {
    sub_274BF5374();
    OUTLINED_FUNCTION_4_11();
    sub_274B68818(&qword_28098C3B0, v66);
    v67 = sub_274BF4EF4();
    OUTLINED_FUNCTION_21_2();
    v68 = OUTLINED_FUNCTION_4_8();
    v69(v68);
    if (v67)
    {
      break;
    }

    v70 = sub_274BF5414();
    OUTLINED_FUNCTION_21_2();
    v71 = v115;
    v72 = v116;
    v73(v115);
    v74 = OUTLINED_FUNCTION_47();
    v70(v74);
    sub_274BF5384();
    sub_274BF1CA4();
    v110(v111, v120, v113);
    OUTLINED_FUNCTION_2_19();
    sub_274AFA930(&qword_28098C3C0, &qword_28098C388);
    OUTLINED_FUNCTION_7_13();
    sub_274B68818(&qword_28098C408, v75);
    v76 = sub_274BF56F4();
    v78 = v77;
    sub_274B683B0();
    sub_274BF1CC4();
    OUTLINED_FUNCTION_21_2();
    v79(v71, v72);
    if (v125 == 1)
    {
      v80 = *(v121 + 28);
LABEL_5:
      v81 = v80;
      goto LABEL_15;
    }

    v82 = v124 & 2;
    if (v124)
    {
      if ((v124 & 2) != 0)
      {
        v82 = 3;
      }

      else
      {
        v82 = 1;
      }

      v80 = *(v121 + 28);
    }

    else
    {
      v80 = *(v121 + 28);
      if ((v124 & 2) == 0)
      {
        goto LABEL_5;
      }
    }

    v81 = v80;
    v83 = [v81 fontDescriptor];
    v84 = [v83 fontDescriptorWithSymbolicTraits_];

    if (v84)
    {
      [v81 pointSize];
      v86 = [objc_opt_self() fontWithDescriptor:v84 size:v85];

      v81 = v86;
    }

LABEL_15:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098C398);
    inited = swift_initStackObject();
    OUTLINED_FUNCTION_40_0(inited, &v123);
    v88 = v109;
    *(v89 + 32) = v109;
    v90 = sub_274AD8430(0, &qword_28098EF20);
    inited[2].n128_u64[1] = v81;
    v91 = v107;
    inited[4].n128_u64[0] = v90;
    inited[4].n128_u64[1] = v91;
    v92 = *(v121 + 29);
    inited[6].n128_u64[1] = sub_274AD8430(0, &qword_28098C3A0);
    inited[5].n128_u64[0] = v92;
    type metadata accessor for Key(0);
    OUTLINED_FUNCTION_0_17();
    sub_274B68818(&qword_280989580, v93);
    v94 = v88;
    v95 = v81;
    v96 = v91;
    v97 = v92;
    sub_274BF4E14();
    v98 = sub_274BF4DE4();

    [v118 addAttributes:v98 range:{v76, v78}];
  }

  sub_274AFA708(v46, &qword_28098C390);
  v99 = *MEMORY[0x277D74118];
  v100 = v103;
  OUTLINED_FUNCTION_70_0();
  v102 = v101;
  [v102 addAttribute:v99 value:v100 range:{0, objc_msgSend(v102, sel_length)}];

  sub_274B5953C(v102);
  OUTLINED_FUNCTION_33_1();
}

void sub_274B562F0()
{
  OUTLINED_FUNCTION_34_1();
  v106 = v0;
  v119 = v1;
  v109 = v2;
  v4 = v3;
  v6 = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098C388);
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_13_0();
  v121 = v8;
  OUTLINED_FUNCTION_70();
  sub_274BF1CD4();
  OUTLINED_FUNCTION_1();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_3_10();
  OUTLINED_FUNCTION_70();
  v122 = sub_274BF1CB4();
  OUTLINED_FUNCTION_1();
  v102 = v10;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_9();
  v124 = v12;
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_38_1();
  v117 = v14;
  OUTLINED_FUNCTION_70();
  v118 = sub_274BF1CE4();
  OUTLINED_FUNCTION_1();
  v107 = v15;
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_3_10();
  v101 = v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098C390);
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_13_0();
  v123 = v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098EEE0);
  OUTLINED_FUNCTION_7_1(v20);
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_13_0();
  v116 = v22;
  OUTLINED_FUNCTION_70();
  v115 = sub_274BF1C54();
  OUTLINED_FUNCTION_1();
  v113 = v23;
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_3_10();
  v114 = v25;
  OUTLINED_FUNCTION_70();
  sub_274BF1C64();
  OUTLINED_FUNCTION_1();
  v110 = v27;
  v112 = v26;
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_4();
  v30 = v29 - v28;
  v31 = sub_274BF1C84();
  v32 = OUTLINED_FUNCTION_7_1(v31);
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_3_10();
  OUTLINED_FUNCTION_70();
  sub_274BF1D34();
  OUTLINED_FUNCTION_1();
  v104 = v34;
  v105 = v33;
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_9();
  v103 = v35;
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_38_1();
  v120 = v37;
  OUTLINED_FUNCTION_70();
  v38 = sub_274BF4F94();
  OUTLINED_FUNCTION_1();
  v40 = v39;
  MEMORY[0x28223BE20](v41);
  OUTLINED_FUNCTION_4();
  v44 = v43 - v42;
  sub_274BF4F84();
  v45 = v6;
  v46 = v4;
  v47 = sub_274BF4F54();
  v49 = v48;
  (*(v40 + 8))(v44, v38);
  if (v49 >> 60 != 15)
  {
    (*(v110 + 104))(v30, *MEMORY[0x277CC8BB0], v112);
    (*(v113 + 104))(v114, *MEMORY[0x277CC8B98], v115);
    sub_274B68344(v47, v49);
    sub_274BF1C74();
    v62 = sub_274BF1F54();
    __swift_storeEnumTagSinglePayload(v116, 1, 1, v62);
    sub_274BF1D14();
    v100 = v47;
    v99 = v49;
    sub_274BF1CF4();
    (*(v107 + 16))(v123, v101, v118);
    OUTLINED_FUNCTION_5_10();
    sub_274B68818(v63, v64);
    sub_274BF5344();
    v65 = OUTLINED_FUNCTION_30_3();
    v66(v65);
    v108 = v106 + OBJC_IVAR____TtC14WorkflowUICore14WFMarkdownView_style;
    while (1)
    {
      sub_274BF5374();
      OUTLINED_FUNCTION_4_11();
      sub_274B68818(&qword_28098C3B0, v67);
      v68 = sub_274BF4EF4();
      v69 = OUTLINED_FUNCTION_75();
      v70(v69);
      if (v68)
      {
        sub_274AFA708(v123, &qword_28098C390);
        sub_274AD8430(0, &unk_28098EEF0);
        (*(v104 + 16))(v103, v120, v105);
        v93 = sub_274BF5584();
        v94 = [objc_allocWithZone(MEMORY[0x277D74240]) init];
        [v94 setLineSpacing_];
        v95 = v94;
        v96 = v93;
        [v96 length];
        v97 = OUTLINED_FUNCTION_55_0();
        [v97 v98];

        sub_274B5953C(v96);
        sub_274B6839C(v100, v99);
        (*(v104 + 8))(v120, v105);
        goto LABEL_22;
      }

      v71 = sub_274BF5414();
      (*(v102 + 16))(v117);
      v72 = OUTLINED_FUNCTION_44_0();
      v71(v72);
      sub_274BF5384();
      (*(v102 + 32))(v124, v117, v122);
      sub_274B683B0();
      sub_274BF1CC4();
      if ((v126 & 1) == 0 && v125 == 4)
      {
        sub_274BF1CA4();
        v73 = *(v108 + 32);
        OUTLINED_FUNCTION_2_19();
        sub_274AFA930(&qword_28098C3C0, &qword_28098C388);
        v74 = sub_274BF1D64();
        sub_274B68404();
        OUTLINED_FUNCTION_54_0();
        sub_274BF1E54();
        v75 = OUTLINED_FUNCTION_44_0();
        v74(v75);
        sub_274AFA708(v121, &qword_28098C388);
        sub_274BF1CA4();
        v76 = *(v108 + 40);
        OUTLINED_FUNCTION_87();
        v77 = sub_274BF1D64();
        sub_274B684AC();
        OUTLINED_FUNCTION_54_0();
        sub_274BF1E54();
        v78 = OUTLINED_FUNCTION_44_0();
        v77(v78);
        sub_274AFA708(v121, &qword_28098C388);
        sub_274BF1CA4();
        v79 = v119;
        OUTLINED_FUNCTION_87();
        v80 = sub_274BF1D64();
        sub_274B68458();
        OUTLINED_FUNCTION_54_0();
        sub_274BF1E54();
        v81 = OUTLINED_FUNCTION_44_0();
        v80(v81);
        goto LABEL_20;
      }

      sub_274BF1CC4();
      if (v126)
      {
        break;
      }

      v82 = v125 & 2;
      v83 = (v125 & 2) != 0 ? 3 : 1;
      if (v125)
      {
        v82 = v83;
      }

      else if ((v125 & 2) == 0)
      {
        break;
      }

      v84 = [v109 fontDescriptor];
      v85 = [v84 fontDescriptorWithSymbolicTraits_];

      if (!v85)
      {
        break;
      }

      [v109 pointSize];
      v87 = [objc_opt_self() fontWithDescriptor:v85 size:v86];

LABEL_19:
      sub_274BF1CA4();
      v111 = v87;
      OUTLINED_FUNCTION_2_19();
      sub_274AFA930(&qword_28098C3C0, &qword_28098C388);
      v88 = sub_274BF1D64();
      sub_274B68404();
      OUTLINED_FUNCTION_54_0();
      sub_274BF1E54();
      v89 = OUTLINED_FUNCTION_44_0();
      v88(v89);
      sub_274AFA708(v121, &qword_28098C388);
      sub_274BF1CA4();
      v90 = v119;
      v91 = sub_274BF1D64();
      sub_274B68458();
      OUTLINED_FUNCTION_54_0();
      sub_274BF1E54();
      v92 = OUTLINED_FUNCTION_44_0();
      v91(v92);

LABEL_20:
      sub_274AFA708(v121, &qword_28098C388);
      (*(v102 + 8))(v124, v122);
    }

    v87 = v109;
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098C398);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_274BFA880;
  v51 = *MEMORY[0x277D740A8];
  *(inited + 32) = *MEMORY[0x277D740A8];
  v52 = sub_274AD8430(0, &qword_28098EF20);
  *(inited + 40) = v109;
  v53 = *MEMORY[0x277D740C0];
  *(inited + 64) = v52;
  *(inited + 72) = v53;
  *(inited + 104) = sub_274AD8430(0, &qword_28098C3A0);
  *(inited + 80) = v119;
  type metadata accessor for Key(0);
  OUTLINED_FUNCTION_0_17();
  sub_274B68818(v54, v55);
  v56 = v119;
  v57 = v109;

  v58 = v51;
  v59 = v53;
  OUTLINED_FUNCTION_86();
  v60 = sub_274BF4E14();
  v61 = objc_allocWithZone(MEMORY[0x277CCA898]);
  sub_274B636A0(v45, v46, v60);
LABEL_22:
  OUTLINED_FUNCTION_33_1();
}

char *sub_274B57170(uint64_t a1)
{
  v2 = v1;
  type metadata accessor for WFMarkdownTextDrawingView();
  v4 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  memcpy(__dst, &v2[OBJC_IVAR____TtC14WorkflowUICore14WFMarkdownView_style], sizeof(__dst));
  v5 = *&__dst[45];
  memcpy(__src, &v2[OBJC_IVAR____TtC14WorkflowUICore14WFMarkdownView_style], sizeof(__src));
  CGSizeMake(__src);
  memcpy(v26, &v4[OBJC_IVAR____TtC14WorkflowUICoreP33_3E9D7953B2AD67C52890490469C980A825WFMarkdownTextDrawingView_style], sizeof(v26));
  memcpy(&v4[OBJC_IVAR____TtC14WorkflowUICoreP33_3E9D7953B2AD67C52890490469C980A825WFMarkdownTextDrawingView_style], __src, 0x188uLL);
  sub_274B4E058(__dst, &v23);
  sub_274AFA708(v26, &qword_28098C340);
  v6 = v4;
  OUTLINED_FUNCTION_98([v6 setEditable_], sel_setScrollEnabled_);
  [v6 setSelectable_];
  v7 = objc_opt_self();
  v8 = v6;
  v9 = [v7 clearColor];
  [v8 setBackgroundColor_];

  [v8 setTextContainerInset_];
  v10 = [v8 textContainer];
  [v10 setLineFragmentPadding_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098C398);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_274BFA880;
  v12 = *MEMORY[0x277D740C0];
  *(v11 + 32) = *MEMORY[0x277D740C0];
  v13 = v12;
  v14 = [v2 tintColor];
  *(v11 + 64) = sub_274AD8430(0, &qword_28098C3A0);
  if (!v14)
  {
    v14 = [v7 systemBlueColor];
  }

  *(v11 + 40) = v14;
  v15 = *MEMORY[0x277D741F0];
  *(v11 + 104) = MEMORY[0x277D83B88];
  *(v11 + 72) = v15;
  *(v11 + 80) = 1;
  type metadata accessor for Key(0);
  OUTLINED_FUNCTION_0_17();
  sub_274B68818(v16, v17);
  v18 = v15;
  v19 = sub_274BF4E14();
  sub_274B685AC(v19, v8);
  [v8 setAttributedText_];
  LODWORD(v20) = 1148846080;
  [v8 setContentHuggingPriority:1 forAxis:v20];
  LODWORD(v21) = 1148846080;
  [v8 setContentCompressionResistancePriority:1 forAxis:v21];

  return v8;
}

void sub_274B574A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28)
{
  OUTLINED_FUNCTION_89();
  a27 = v30;
  a28 = v31;
  v33 = v32;
  v34 = sub_274BF4C94();
  OUTLINED_FUNCTION_1();
  v36 = v35;
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_88();
  sub_274BF4CD4();
  OUTLINED_FUNCTION_1();
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_4();
  v43 = v42 - v41;
  v211 = *(v33 + 16);
  if (!v211)
  {
    goto LABEL_22;
  }

  v210 = v33 + 32;
  v44 = *(*(v33 + 32) + 16);
  if (!v44)
  {
    goto LABEL_22;
  }

  v202 = v43;
  v203 = v40;
  v204 = v29;
  v205 = v39;
  v206 = v36;
  v207 = v34;
  v45 = [objc_opt_self() defaultMetrics];
  [v45 scaledValueForValue_];
  v47 = v46;

  v48 = *(v28 + OBJC_IVAR____TtC14WorkflowUICore14WFMarkdownView_style + 136);
  v212 = v28 + OBJC_IVAR____TtC14WorkflowUICore14WFMarkdownView_style;
  v49 = *(v28 + OBJC_IVAR____TtC14WorkflowUICore14WFMarkdownView_style + 152);
  v50 = v47 - (v48 + v49);
  OUTLINED_FUNCTION_36();
  v51 = swift_allocObject();
  v52 = sub_274B4DB70(v44, 0.0);
  v53 = 0;
  v223 = v51;
  *(v51 + 16) = v52;
  v213 = v44;
  v221 = -v44;
LABEL_4:
  if (v53 == v211)
  {
    v72 = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
    [v72 setTranslatesAutoresizingMaskIntoConstraints_];
    v73 = [objc_allocWithZone(MEMORY[0x277D75D18]) &selRef_replacePointerAtIndex_withPointer_];
    [v73 &selRef_actionUserInterfaceListener + 2];
    [v73 setBackgroundColor_];
    v74 = [v73 layer];
    [v74 setCornerRadius_];

    [v73 setClipsToBounds_];
    [v72 addSubview_];
    v75 = objc_opt_self();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280989FC8);
    v76 = swift_allocObject();
    *(v76 + 16) = xmmword_274BFFAD0;
    v77 = [v73 topAnchor];
    v78 = [v72 &selRef_isHighlighted];
    v79 = OUTLINED_FUNCTION_55_0();
    v81 = [v79 v80];

    *(v76 + 32) = v81;
    v82 = [v73 bottomAnchor];
    v83 = [v72 &selRef_setOptions_ + 5];
    v84 = OUTLINED_FUNCTION_55_0();
    v86 = [v84 v85];

    *(v76 + 40) = v86;
    v87 = [v73 leadingAnchor];
    v88 = [v72 &selRef_updateConstraints + 1];
    v89 = *(v212 + 376);
    v90 = OUTLINED_FUNCTION_55_0();
    v92 = [v90 v91];

    *(v76 + 48) = v92;
    v93 = [v73 trailingAnchor];
    v94 = [v72 &selRef_legibilityWeight + 4];
    v95 = OUTLINED_FUNCTION_55_0();
    v97 = [v95 v96];

    *(v76 + 56) = v97;
    sub_274AD8430(0, &qword_28098C428);
    OUTLINED_FUNCTION_58_0();
    v98 = sub_274BF5134();

    [v75 activateConstraints_];

    v99 = [objc_allocWithZone(MEMORY[0x277D759D8]) init];
    OUTLINED_FUNCTION_98([v99 setTranslatesAutoresizingMaskIntoConstraints_], sel_setShowsVerticalScrollIndicator_);
    v100 = OUTLINED_FUNCTION_74_0();
    [v99 v101];
    [v73 addSubview_];
    v102 = swift_allocObject();
    v103 = [v99 topAnchor];
    v104 = [v73 topAnchor];
    v105 = [v103 constraintEqualToAnchor_];

    v102[2].n128_u64[0] = v105;
    v106 = [v99 leadingAnchor];
    v107 = OUTLINED_FUNCTION_35_1([v73 leadingAnchor]);

    v102[2].n128_u64[1] = v107;
    v108 = [v99 trailingAnchor];
    v109 = OUTLINED_FUNCTION_35_1([v73 trailingAnchor]);

    v102[3].n128_u64[0] = v109;
    v110 = [v99 bottomAnchor];

    v201 = v73;
    v219 = v75;
    v111 = OUTLINED_FUNCTION_35_1([v73 bottomAnchor]);

    v102[3].n128_u64[1] = v111;
    OUTLINED_FUNCTION_82();
    sub_274BF5134();
    OUTLINED_FUNCTION_67_0();
    v112 = OUTLINED_FUNCTION_81_0();
    [v112 v113];

    v114 = [objc_allocWithZone(MEMORY[0x277D75A68]) init];
    [v114 setAxis_];
    [v114 setSpacing_];
    [v114 setAlignment_];
    v115 = v114;
    [v115 setTranslatesAutoresizingMaskIntoConstraints_];
    [v99 addSubview_];
    v116 = swift_allocObject();
    *(v116 + 16) = xmmword_274BFFAA0;
    v117 = [v115 topAnchor];
    v118 = [v99 contentLayoutGuide];
    v119 = [v118 topAnchor];

    v120 = OUTLINED_FUNCTION_25_3();
    *(v116 + 32) = v120;
    v121 = [v115 leadingAnchor];
    v122 = OUTLINED_FUNCTION_64_0();
    v123 = [v122 leadingAnchor];

    v124 = OUTLINED_FUNCTION_25_3();
    *(v116 + 40) = v124;
    v125 = [v115 trailingAnchor];
    v126 = OUTLINED_FUNCTION_64_0();
    v127 = [v126 trailingAnchor];

    v128 = OUTLINED_FUNCTION_25_3();
    *(v116 + 48) = v128;
    v129 = [v115 bottomAnchor];
    v130 = OUTLINED_FUNCTION_64_0();
    v131 = [v130 bottomAnchor];

    v132 = OUTLINED_FUNCTION_25_3();
    *(v116 + 56) = v132;
    v133 = [v115 heightAnchor];
    v208 = v115;

    v200 = v99;
    v134 = [v99 frameLayoutGuide];
    v135 = [v134 heightAnchor];

    v136 = OUTLINED_FUNCTION_25_3();
    *(v116 + 64) = v136;
    OUTLINED_FUNCTION_82();
    sub_274BF5134();
    OUTLINED_FUNCTION_67_0();
    v137 = OUTLINED_FUNCTION_81_0();
    [v137 v138];

    v139 = 0;
    v140 = v223;
LABEL_24:
    if (v139 != v211)
    {
      v141 = *(v210 + 8 * v139);
      v209 = v139 + 1;
      v142 = objc_allocWithZone(MEMORY[0x277D75A68]);

      v143 = [v142 init];
      [v143 setAxis_];
      [v143 setSpacing_];
      [v143 setAlignment_];
      [v143 setDistribution_];
      v144 = OUTLINED_FUNCTION_85(&a25);
      [v144 v145];
      v214 = v139;
      v146 = 120;
      if (!v139)
      {
        v146 = 112;
      }

      v147 = *(v212 + v146);
      v215 = objc_opt_self();
      v216 = *(v141 + 16);
      OUTLINED_FUNCTION_50_0(v147);
      v148 = 0;
      v149 = v141 + 40;
      while (1)
      {
        v222 = v149;
        if (v148 < v216)
        {
          if (v148 >= *(v141 + 16))
          {
            goto LABEL_46;
          }
        }

        v150 = [objc_allocWithZone(MEMORY[0x277D75C40]) init];
        [v150 setEditable_];
        [v150 setScrollEnabled_];
        [v150 setSelectable_];
        v151 = v150;
        v152 = [v215 clearColor];
        [v151 setBackgroundColor_];

        [v151 setTranslatesAutoresizingMaskIntoConstraints_];
        OUTLINED_FUNCTION_93(v151, sel_setTextContainerInset_);
        v153 = [v151 textContainer];
        [v153 setLineFragmentPadding_];

        OUTLINED_FUNCTION_4_8();
        sub_274B562F0();
        v155 = v154;

        [v151 setAttributedText_];
        LODWORD(v156) = 1132068864;
        [v151 setContentHuggingPriority:0 forAxis:v156];
        LODWORD(v157) = 1148846080;
        [v151 setContentCompressionResistancePriority:1 forAxis:v157];
        v158 = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
        [v158 setTranslatesAutoresizingMaskIntoConstraints_];
        [v158 addSubview_];
        v159 = swift_allocObject();
        v160 = [v151 centerYAnchor];
        v161 = [v158 centerYAnchor];
        v162 = OUTLINED_FUNCTION_61_0(v161, sel_constraintEqualToAnchor_);

        v159[2].n128_u64[0] = v162;
        v163 = [v151 leadingAnchor];
        v164 = [v158 leadingAnchor];
        v165 = OUTLINED_FUNCTION_61_0(v164, sel_constraintEqualToAnchor_);

        v159[2].n128_u64[1] = v165;
        v166 = [v151 trailingAnchor];
        v167 = [v158 trailingAnchor];
        v168 = OUTLINED_FUNCTION_61_0(v167, sel_constraintEqualToAnchor_);

        v159[3].n128_u64[0] = v168;
        v169 = [v151 topAnchor];
        v170 = [v158 topAnchor];
        v171 = OUTLINED_FUNCTION_61_0(v170, sel_constraintGreaterThanOrEqualToAnchor_);

        v159[3].n128_u64[1] = v171;
        v172 = [v151 bottomAnchor];

        v173 = [v158 bottomAnchor];
        v174 = OUTLINED_FUNCTION_61_0(v173, sel_constraintLessThanOrEqualToAnchor_);

        v159[4].n128_u64[0] = v174;
        v175 = [v158 widthAnchor];
        v176 = *(v140 + 16);
        if (v148 >= *(v176 + 16))
        {
          goto LABEL_44;
        }

        v177 = v175;
        v178 = [v175 constraintEqualToConstant_];

        v159[4].n128_u64[1] = v178;
        v179 = sub_274BF5134();

        [v219 activateConstraints_];

        if (v214)
        {
          v180 = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
          [v180 setBackgroundColor_];
          [v180 setTranslatesAutoresizingMaskIntoConstraints_];
          [v158 addSubview_];
          if (v148)
          {
            v181 = 0.0;
          }

          else
          {
            v181 = v48;
          }

          v182 = swift_allocObject();
          v183 = [v180 topAnchor];
          v184 = [v158 topAnchor];
          v185 = [v183 constraintEqualToAnchor_];

          v182[2].n128_u64[0] = v185;
          v186 = [v180 leadingAnchor];
          v187 = [v158 leadingAnchor];
          v188 = [v186 constraintEqualToAnchor:v187 constant:v181];

          v182[2].n128_u64[1] = v188;
          v189 = [v180 trailingAnchor];
          v190 = [v158 trailingAnchor];
          v191 = -0.0;
          if (v213 - 1 == v148)
          {
            v191 = -v49;
          }

          v192 = [v189 constraintEqualToAnchor:v190 constant:v191];

          v182[3].n128_u64[0] = v192;
          v193 = [v180 heightAnchor];
          v194 = [v193 constraintEqualToConstant_];

          v182[3].n128_u64[1] = v194;
          v195 = sub_274BF5134();

          [v219 activateConstraints_];

          v140 = v223;
        }

        ++v148;
        [v217 addArrangedSubview_];

        v149 = v222 + 16;
        if (v213 == v148)
        {

          [v208 addArrangedSubview_];

          v139 = v209;
          goto LABEL_24;
        }
      }
    }

    sub_274AD8430(0, &qword_280989F80);
    v224 = sub_274BF5504();
    OUTLINED_FUNCTION_7_10();
    v196 = swift_allocObject();
    v196[2] = v140;
    v196[3] = v200;
    v196[4] = v208;
    v225[4] = sub_274B68670;
    v225[5] = v196;
    v225[0] = MEMORY[0x277D85DD0];
    v225[1] = 1107296256;
    v225[2] = sub_274B02D5C;
    v225[3] = &block_descriptor_95;
    v197 = _Block_copy(v225);
    v198 = v200;
    v199 = v208;

    sub_274BF4CB4();
    v225[0] = MEMORY[0x277D84F90];
    sub_274B68818(&qword_280989F88, MEMORY[0x277D85198]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280989F90);
    sub_274AFA930(&qword_280989F98, &qword_280989F90);
    sub_274BF57F4();
    MEMORY[0x277C64DC0](0, v202, v204, v197);
    _Block_release(v197);

    (*(v206 + 8))(v204, v207);
    (*(v203 + 8))(v202, v205);

LABEL_22:
    OUTLINED_FUNCTION_90();
    return;
  }

  v54 = *(v210 + 8 * v53);
  v220 = v53 + 1;
  v55 = v53 == 0;
  v56 = 112;
  if (!v55)
  {
    v56 = 0;
  }

  v57 = *(v212 + v56);
  v58 = *(v54 + 16);

  v59 = v57;
  v60 = v54 + 40;
  v61 = 4;
  while (1)
  {
    v62 = v61 - 4;
    if (v61 - 4 < v58)
    {
      if (v62 >= *(v54 + 16))
      {
        goto LABEL_45;
      }
    }

    sub_274B562F0();
    v64 = v63;

    [v64 boundingRectWithSize:3 options:0 context:{1.79769313e308, 1.79769313e308}];
    Width = CGRectGetWidth(v226);
    v66 = *(v223 + 16);
    if (v62 >= *(v66 + 16))
    {
      break;
    }

    v67 = ceil(Width);
    if (v50 < v67)
    {
      v67 = v50;
    }

    v68 = v48 + v49 + v67;
    if (*(v66 + 8 * v61) > v68)
    {
      v69 = *(v66 + 8 * v61);
    }

    else
    {
      v69 = v68;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v223 + 16) = v66;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_274BA5210(v66);
      v66 = v71;
    }

    if (v62 >= *(v66 + 16))
    {
      goto LABEL_43;
    }

    *(v66 + 8 * v61) = v69;
    *(v223 + 16) = v66;
    ++v61;
    v60 += 16;
    if (v221 + v61 == 4)
    {

      v53 = v220;
      goto LABEL_4;
    }
  }

  __break(1u);
LABEL_43:
  __break(1u);
LABEL_44:
  __break(1u);
LABEL_45:
  __break(1u);
LABEL_46:
  __break(1u);
}

void sub_274B58A5C(uint64_t a1, void *a2, void *a3)
{
  swift_beginAccess();
  v6 = *(a1 + 16);
  v7 = *(v6 + 16);
  if (v7)
  {
    v8 = (v6 + 32);
    v9 = 0.0;
    do
    {
      v10 = *v8++;
      v9 = v9 + v10;
      --v7;
    }

    while (v7);
  }

  else
  {
    v9 = 0.0;
  }

  [a2 frame];
  Width = CGRectGetWidth(v17);
  [a2 setShowsHorizontalScrollIndicator_];
  [a2 setAlwaysBounceHorizontal_];
  v12 = [a3 widthAnchor];
  v13 = v12;
  if (Width >= v9)
  {
    v15 = [a2 frameLayoutGuide];
    v16 = [v15 widthAnchor];

    v14 = [v13 constraintEqualToAnchor_];
    v13 = v16;
  }

  else
  {
    v14 = [v12 constraintEqualToConstant_];
  }

  [v14 setActive_];
}

void *sub_274B58BE4(uint64_t a1, uint64_t a2)
{
  v5 = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
  [v5 setTranslatesAutoresizingMaskIntoConstraints_];
  v6 = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
  v7 = v2 + OBJC_IVAR____TtC14WorkflowUICore14WFMarkdownView_style;
  [v6 setBackgroundColor_];
  v8 = [v6 layer];
  [v8 setCornerRadius_];

  [v6 setClipsToBounds_];
  [v6 setTranslatesAutoresizingMaskIntoConstraints_];
  [v5 addSubview_];
  v9 = [objc_allocWithZone(MEMORY[0x277D759D8]) init];
  [v9 setTranslatesAutoresizingMaskIntoConstraints_];
  [v9 setShowsHorizontalScrollIndicator_];
  [v9 setShowsVerticalScrollIndicator_];
  [v9 setAlwaysBounceHorizontal_];
  OUTLINED_FUNCTION_93(v9, sel_setContentInset_);
  v10 = OUTLINED_FUNCTION_74_0();
  [v9 v11];
  v12 = OUTLINED_FUNCTION_81_0();
  [v12 v13];
  v14 = [objc_allocWithZone(MEMORY[0x277D75C40]) init];
  OUTLINED_FUNCTION_98([v14 setEditable_], sel_setScrollEnabled_);
  [v14 setSelectable_];
  v15 = objc_opt_self();
  v16 = v14;
  v17 = [v15 clearColor];
  OUTLINED_FUNCTION_46_0(v17, sel_setBackgroundColor_);

  [v16 setFont_];
  [v16 setTextColor_];
  sub_274BDB47C(a1, a2, v16);
  [v16 setTranslatesAutoresizingMaskIntoConstraints_];
  [v16 setTextContainerInset_];
  v18 = [v16 textContainer];
  [v18 setLineFragmentPadding_];

  *&v19 = OUTLINED_FUNCTION_80_0();
  [v20 v21];
  *&v22 = OUTLINED_FUNCTION_80_0();
  [v23 v24];
  *&v25 = OUTLINED_FUNCTION_80_0();
  [v26 v27];
  *&v28 = OUTLINED_FUNCTION_80_0();
  [v29 v30];
  [v9 addSubview_];
  v105 = [v9 contentLayoutGuide];
  v104 = [v9 frameLayoutGuide];
  v106 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280989FC8);
  v31 = swift_allocObject();
  *(v31 + 16) = xmmword_274BFFAF0;
  v32 = [v6 topAnchor];
  v33 = v5;
  v34 = [v5 &selRef_isHighlighted];
  v35 = [v32 constraintEqualToAnchor_];

  *(v31 + 32) = v35;
  v36 = [v6 bottomAnchor];
  v37 = [v33 &selRef_setOptions_ + 5];
  OUTLINED_FUNCTION_49_0();
  v38 = OUTLINED_FUNCTION_19_5();
  v40 = [v38 v39];

  *(v31 + 40) = v40;
  v41 = [v6 leadingAnchor];
  v42 = [v33 &selRef_updateConstraints + 1];
  v43 = *(v7 + 368);
  v44 = OUTLINED_FUNCTION_19_5();
  v46 = [v44 v45];

  *(v31 + 48) = v46;
  v47 = [v6 trailingAnchor];
  v48 = [v33 &selRef_legibilityWeight + 4];
  v49 = OUTLINED_FUNCTION_19_5();
  v51 = [v49 v50];

  *(v31 + 56) = v51;
  v52 = [v9 topAnchor];
  v53 = [v6 topAnchor];
  OUTLINED_FUNCTION_49_0();
  v54 = OUTLINED_FUNCTION_19_5();
  v56 = [v54 v55];

  *(v31 + 64) = v56;
  v57 = [v9 leadingAnchor];
  v58 = [v6 leadingAnchor];
  OUTLINED_FUNCTION_49_0();
  v59 = OUTLINED_FUNCTION_19_5();
  v61 = [v59 v60];

  *(v31 + 72) = v61;
  v62 = [v9 trailingAnchor];
  v63 = [v6 trailingAnchor];
  OUTLINED_FUNCTION_49_0();
  v64 = OUTLINED_FUNCTION_19_5();
  v66 = [v64 v65];

  *(v31 + 80) = v66;
  v67 = [v9 bottomAnchor];

  v68 = [v6 bottomAnchor];
  OUTLINED_FUNCTION_49_0();
  v69 = OUTLINED_FUNCTION_19_5();
  v71 = [v69 v70];

  *(v31 + 88) = v71;
  v72 = [v105 heightAnchor];
  v73 = [v104 heightAnchor];
  v74 = OUTLINED_FUNCTION_19_5();
  v76 = [v74 v75];

  *(v31 + 96) = v76;
  v77 = [v16 topAnchor];
  v78 = [v105 topAnchor];
  v79 = OUTLINED_FUNCTION_19_5();
  v81 = [v79 v80];

  *(v31 + 104) = v81;
  v82 = [v16 leadingAnchor];
  v83 = [v105 leadingAnchor];
  v84 = OUTLINED_FUNCTION_19_5();
  v86 = [v84 v85];

  *(v31 + 112) = v86;
  v87 = [v16 trailingAnchor];
  v88 = [v105 trailingAnchor];
  v89 = OUTLINED_FUNCTION_19_5();
  v91 = [v89 v90];

  *(v31 + 120) = v91;
  v92 = [v16 bottomAnchor];
  v93 = [v105 bottomAnchor];
  v94 = OUTLINED_FUNCTION_19_5();
  v96 = [v94 v95];

  *(v31 + 128) = v96;
  v97 = [v16 widthAnchor];

  v98 = [v104 widthAnchor];
  v99 = OUTLINED_FUNCTION_19_5();
  v101 = [v99 v100];

  *(v31 + 136) = v101;
  sub_274AD8430(0, &qword_28098C428);
  v102 = sub_274BF5134();

  [v106 activateConstraints_];

  return v33;
}

uint64_t sub_274B5953C(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098C358);
  OUTLINED_FUNCTION_7_1(v3);
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_88();
  v5 = &qword_279EF5000;
  v6 = [a1 string];
  sub_274BF4F44();

  OUTLINED_FUNCTION_86();
  v7 = sub_274B59B0C();

  v8 = *(v7 + 16);
  if (v8)
  {
    v32 = v1;
    v30 = OBJC_IVAR____TtC14WorkflowUICore14WFMarkdownView_style;
    v29 = v7;
    v9 = (v7 + 64);
    v33 = a1;
    do
    {
      if ((*v9 & 1) == 0)
      {
        v34 = v8;

        v10 = OUTLINED_FUNCTION_11();
        v11 = MEMORY[0x277C64860](v10);
        v13 = v12;
        v14 = [a1 v5[315]];
        sub_274BF4F44();

        MEMORY[0x277C648E0](v11, v13);
        MEMORY[0x277C648E0](0xD000000000000011, 0x8000000274C0B720);
        sub_274BF21B4();
        OUTLINED_FUNCTION_92();
        sub_274ADDF6C();
        OUTLINED_FUNCTION_37_0();
        sub_274BF57A4();
        v16 = v15;
        sub_274AFA708(v32, &qword_28098C358);

        if (v16)
        {
          v17 = [v33 string];
          sub_274BF4F44();

          MEMORY[0x277C648E0](v11, v13);
          MEMORY[0x277C648E0](0xD000000000000010, 0x8000000274C0B760);
          OUTLINED_FUNCTION_92();
          sub_274BF57A4();
          v19 = v18;
          sub_274AFA708(v32, &qword_28098C358);

          if (v19)
          {

            OUTLINED_FUNCTION_65_0();
            a1 = v33;
            v5 = &qword_279EF5000;
          }

          else
          {
            a1 = v33;
            v24 = [v33 string];
            sub_274BF4F44();

            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098C360);
            OUTLINED_FUNCTION_2_19();
            sub_274AFA930(&qword_28098EF00, &qword_28098C360);
            OUTLINED_FUNCTION_68_0();
            sub_274BF5704();
            type metadata accessor for WFLatexRenderer();
            [*(v31 + v30) pointSize];
            v26 = sub_274B5A5DC(v11, v25);

            v27 = [objc_opt_self() attributedStringWithAttachment_];
            OUTLINED_FUNCTION_91(v27, sel_replaceCharactersInRange_withAttributedString_);
            OUTLINED_FUNCTION_65_0();

            v5 = &qword_279EF5000;
          }
        }

        else
        {
          v5 = &qword_279EF5000;
          a1 = v33;
          v20 = [v33 string];
          sub_274BF4F44();

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098C360);
          OUTLINED_FUNCTION_2_19();
          sub_274AFA930(&qword_28098EF00, &qword_28098C360);
          OUTLINED_FUNCTION_68_0();
          sub_274BF5704();
          type metadata accessor for WFLatexRenderer();
          [*(v31 + v30) pointSize];
          v22 = sub_274B5A5DC(v11, v21);

          v23 = [objc_opt_self() attributedStringWithAttachment_];
          OUTLINED_FUNCTION_91(v23, sel_replaceCharactersInRange_withAttributedString_);
          OUTLINED_FUNCTION_65_0();
        }

        v8 = v34;
      }

      v9 += 40;
      --v8;
    }

    while (v8);
  }
}

uint64_t sub_274B59B0C()
{
  v154 = sub_274BF4F04();
  v0 = 0x277CCA000uLL;
  v1 = objc_opt_self();
  v2 = sub_274BF4F04();
  v3 = [v1 escapedPatternForString_];

  v4 = sub_274BF4F44();
  v6 = v5;

  v158 = v4;
  v159 = v6;
  MEMORY[0x277C648E0](0x293F2A2E28, 0xE500000000000000);
  v7 = sub_274BF4F04();
  v8 = [v1 escapedPatternForString_];

  v9 = sub_274BF4F44();
  v11 = v10;

  MEMORY[0x277C648E0](v9, v11);

  v12 = v158;
  v13 = v159;
  v14 = sub_274BF4F04();
  v15 = [v1 escapedPatternForString_];

  v16 = sub_274BF4F44();
  v18 = v17;

  v158 = v16;
  v159 = v18;
  MEMORY[0x277C648E0](0x293F2A2E28, 0xE500000000000000);
  v19 = sub_274BF4F04();
  v20 = [v1 escapedPatternForString_];

  v21 = sub_274BF4F44();
  v23 = v22;

  MEMORY[0x277C648E0](v21, v23);

  v24 = v158;
  v25 = v18;
  v26 = objc_allocWithZone(MEMORY[0x277CCAC68]);
  v27 = sub_274BDA754(v12, v13, 8);
  v28 = &qword_279EF5000;
  v29 = &qword_279EF5000;
  v35 = v27;
  if (v27)
  {
    v148 = v25;
    v149 = v158;
    v36 = sub_274BF4F04();
    v31 = v154;
    v37 = [v35 matchesInString:v36 options:0 range:{0, objc_msgSend(v154, sel_length)}];

    sub_274AD8430(0, &unk_28098EF10);
    v38 = sub_274BF5144();

    result = sub_274B22B94(v38);
    if (result)
    {
      v40 = result;
      v146 = v35;
      if (result < 1)
      {
        __break(1u);
        goto LABEL_84;
      }

      v41 = 0;
      v42 = v38 & 0xC000000000000001;
      v43 = MEMORY[0x277D84F90];
      v155 = result;
      do
      {
        if (v42)
        {
          v44 = MEMORY[0x277C65230](v41, v38);
        }

        else
        {
          v44 = *(v38 + 8 * v41 + 32);
        }

        v45 = v44;
        if ([v44 v29[443]] >= 2)
        {
          v46 = [v45 rangeAtIndex_];
          v48 = v47;
          v49 = [v45 rangeAtIndex_];
          v51 = [v154 substringWithRange_];
          v52 = sub_274BF4F44();
          v54 = v53;

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_274BBB630();
            v43 = v59;
          }

          v55 = v43;
          v56 = *(v43 + 16);
          v57 = v55;
          if (v56 >= *(v55 + 24) >> 1)
          {
            sub_274BBB630();
            v57 = v60;
          }

          *(v57 + 16) = v56 + 1;
          v58 = (v57 + 32 * v56);
          v43 = v57;
          v58[4] = v46;
          v58[5] = v48;
          v58[6] = v52;
          v58[7] = v54;
          v29 = &qword_279EF5000;
          v40 = v155;
          v42 = v38 & 0xC000000000000001;
        }

        else
        {
        }

        ++v41;
      }

      while (v40 != v41);
      v30 = v43;

      v31 = v154;
      v0 = 0x277CCA000;
      v28 = &qword_279EF5000;
      v25 = v148;
      v24 = v149;
    }

    else
    {

      v30 = MEMORY[0x277D84F90];
      v24 = v158;
    }
  }

  else
  {
    v30 = MEMORY[0x277D84F90];
    v31 = v154;
  }

  v32 = objc_allocWithZone(*(v0 + 3176));
  v33 = sub_274BDA754(v24, v25, 8);
  v61 = v33;
  if (v33)
  {
    v62 = sub_274BF4F04();
    v63 = [v61 v28[442]];

    sub_274AD8430(0, &unk_28098EF10);
    v64 = sub_274BF5144();

    result = sub_274B22B94(v64);
    v65 = v61;
    v34 = v30;
    if (!result)
    {
LABEL_37:

      goto LABEL_38;
    }

    v66 = result;
    v147 = v65;
    if (result >= 1)
    {
      v67 = 0;
      v68 = v64 & 0xC000000000000001;
      v150 = v64 & 0xC000000000000001;
      v152 = result;
      v156 = v64;
      do
      {
        if (v68)
        {
          v69 = MEMORY[0x277C65230](v67, v64);
        }

        else
        {
          v69 = *(v64 + 8 * v67 + 32);
        }

        v70 = v69;
        if ([v69 v29[443]] >= 2)
        {
          v71 = [v70 rangeAtIndex_];
          v73 = v72;
          v74 = [v70 rangeAtIndex_];
          v76 = [v154 substringWithRange_];
          v77 = sub_274BF4F44();
          v79 = v78;

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_274BBB630();
            v34 = v83;
          }

          v80 = *(v34 + 16);
          v81 = v34;
          if (v80 >= *(v34 + 24) >> 1)
          {
            sub_274BBB630();
            v81 = v84;
          }

          *(v81 + 16) = v80 + 1;
          v82 = (v81 + 32 * v80);
          v34 = v81;
          v82[4] = v71;
          v82[5] = v73;
          v82[6] = v77;
          v82[7] = v79;
          v29 = &qword_279EF5000;
          v64 = v156;
          v68 = v150;
          v66 = v152;
        }

        else
        {
        }

        ++v67;
      }

      while (v66 != v67);
      v65 = v147;
      goto LABEL_37;
    }

LABEL_84:
    __break(1u);
    return result;
  }

  v34 = v30;
LABEL_38:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    goto LABEL_82;
  }

  while (1)
  {
    v85 = *(v34 + 16);
    v158 = v34 + 32;
    v159 = v85;
    sub_274B64D48(&v158);
    v86 = *(v34 + 16);
    if (!v86)
    {
      break;
    }

    v87 = 0;
    v88 = v34 + 56;
    v89 = MEMORY[0x277D84F90];
    while (1)
    {
      v90 = *(v88 - 24);
      v157 = *(v88 - 16);
      if (v87 >= v90)
      {
      }

      else
      {
        if (__OFSUB__(v90, v87))
        {
          goto LABEL_81;
        }

        v91 = [v154 substringWithRange_];
        v92 = sub_274BF4F44();
        v94 = v93;

        v95 = HIBYTE(v94) & 0xF;
        if ((v94 & 0x2000000000000000) == 0)
        {
          v95 = v92 & 0xFFFFFFFFFFFFLL;
        }

        if (v95)
        {
          v96 = sub_274BF5744();
          v151 = v98;
          v153 = v97;
          v100 = v99;
          v101 = v96;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_274BBB600();
            v89 = v115;
          }

          v102 = *(v89 + 16);
          if (v102 >= *(v89 + 24) >> 1)
          {
            sub_274BBB600();
            v89 = v116;
          }

          *(v89 + 16) = v102 + 1;
          v103 = v89 + 40 * v102;
          *(v103 + 32) = v101;
          *(v103 + 40) = v100;
          *(v103 + 48) = v153;
          *(v103 + 56) = v151;
          *(v103 + 64) = 1;
        }

        else
        {
        }
      }

      v104 = sub_274BF5744();
      v106 = v105;
      v108 = v107;
      v110 = v109;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_274BBB600();
        v89 = v113;
      }

      v111 = *(v89 + 16);
      if (v111 >= *(v89 + 24) >> 1)
      {
        sub_274BBB600();
        v89 = v114;
      }

      *(v89 + 16) = v111 + 1;
      v112 = v89 + 40 * v111;
      *(v112 + 32) = v104;
      *(v112 + 40) = v106;
      *(v112 + 48) = v108;
      *(v112 + 56) = v110;
      *(v112 + 64) = 0;
      v87 = v90 + v157;
      if (__OFADD__(v90, v157))
      {
        break;
      }

      v88 += 32;
      if (!--v86)
      {
        goto LABEL_61;
      }
    }

    __break(1u);
LABEL_81:
    __break(1u);
LABEL_82:
    sub_274BA51FC();
    v34 = v141;
  }

  v87 = 0;
  v89 = MEMORY[0x277D84F90];
LABEL_61:

  v117 = v154;
  if (v87 < [v154 length])
  {
    v118 = [v154 substringFromIndex_];
    v119 = sub_274BF4F44();
    v121 = v120;

    v122 = HIBYTE(v121) & 0xF;
    if ((v121 & 0x2000000000000000) == 0)
    {
      v122 = v119 & 0xFFFFFFFFFFFFLL;
    }

    if (v122)
    {
      v123 = sub_274BF5744();
      v125 = v124;
      v127 = v126;
      v129 = v128;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_274BBB600();
        v89 = v144;
      }

      v130 = *(v89 + 16);
      if (v130 >= *(v89 + 24) >> 1)
      {
        sub_274BBB600();
        v89 = v145;
      }

      *(v89 + 16) = v130 + 1;
      v131 = v89 + 40 * v130;
      *(v131 + 32) = v123;
      *(v131 + 40) = v125;
      *(v131 + 48) = v127;
      *(v131 + 56) = v129;
      *(v131 + 64) = 1;
      v117 = v154;
    }

    else
    {
    }
  }

  if (*(v89 + 16))
  {
  }

  else
  {

    v132 = sub_274BF5744();
    v134 = v133;
    v136 = v135;
    v138 = v137;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_274BBB600();
      v89 = v142;
    }

    v139 = *(v89 + 16);
    if (v139 >= *(v89 + 24) >> 1)
    {
      sub_274BBB600();
      v89 = v143;
    }

    *(v89 + 16) = v139 + 1;
    v140 = v89 + 40 * v139;
    *(v140 + 32) = v132;
    *(v140 + 40) = v134;
    *(v140 + 48) = v136;
    *(v140 + 56) = v138;
    *(v140 + 64) = 1;
  }

  return v89;
}

id sub_274B5A5DC(char *a1, double a2)
{
  v4 = [objc_allocWithZone(MEMORY[0x277D74270]) init];
  v5 = sub_274B62B6C(a1);
  if (v5)
  {
    v6 = v5;
    [v4 setImage_];
    [v6 size];
    v8 = v7;
    [v6 size];
    [v4 setBounds_];
  }

  else
  {
    v10 = [objc_opt_self() defaultMetrics];
    [v10 scaledValueForValue_];
    v12 = v11;

    sub_274AD8430(0, &unk_28098EFB0);
    v13 = sub_274B09D00();
    [v4 setImage_];

    [v4 setBounds_];
  }

  return v4;
}

void sub_274B5A770()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098C4B8);
  OUTLINED_FUNCTION_7_1(v2);
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v3);
  v5 = &v99 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098C4C0);
  OUTLINED_FUNCTION_7_1(v6);
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v7);
  v9 = &v99 - v8;
  v10 = sub_274BF56D4();
  OUTLINED_FUNCTION_50_0(v10);
  OUTLINED_FUNCTION_1();
  v114 = v11;
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_88();
  v13 = OBJC_IVAR____TtC14WorkflowUICore14WFMarkdownView_attributionView;
  [*(v0 + OBJC_IVAR____TtC14WorkflowUICore14WFMarkdownView_attributionView) removeFromSuperview];
  v14 = *(v0 + v13);
  *(v0 + v13) = 0;

  v116 = v0;
  v15 = (v0 + OBJC_IVAR____TtC14WorkflowUICore14WFMarkdownView_attribution);
  OUTLINED_FUNCTION_37_0();
  swift_beginAccess();
  v16 = v15[1];
  if (v16)
  {
    v105 = v13;
    v17 = *v15;
    v18 = v15[3];
    v113 = v15[4];
    v107 = v5;
    v19 = v15[6];
    v112 = v15[5];
    v111 = v19;
    v20 = objc_allocWithZone(MEMORY[0x277D75D18]);

    [OUTLINED_FUNCTION_69(objc_msgSend(v20 init))];
    v106 = [objc_opt_self() buttonWithType_];
    [v106 &selRef_actionUserInterfaceListener + 2];
    v21 = objc_opt_self();
    v22 = [OUTLINED_FUNCTION_60(v21) defaultMetrics];
    v109 = objc_opt_self();
    v23 = *MEMORY[0x277D74420];
    v24 = [v109 systemFontOfSize:13.0 weight:*MEMORY[0x277D74420]];
    v25 = [v22 scaledFontForFont_];

    sub_274BF56B4();
    sub_274AD8430(0, &unk_28098EFB0);

    sub_274B09D00();
    sub_274BF56A4();

    OUTLINED_FUNCTION_85(v119);
    v101 = v18;
    sub_274BF56C4();
    sub_274BF5664();
    v26 = objc_opt_self();
    v27 = [v26 systemBlueColor];
    sub_274BF5684();
    v28 = [v26 clearColor];
    v29 = sub_274BF5654();
    sub_274BF2C74();
    v29(&v117, 0);
    sub_274BF5674();
    OUTLINED_FUNCTION_36();
    *(swift_allocObject() + 16) = v25;
    v30 = v25;
    sub_274BF2C94();
    v31 = sub_274BF2C84();
    __swift_storeEnumTagSinglePayload(v9, 0, 1, v31);
    sub_274BF5694();
    v32 = objc_opt_self();
    v100 = v30;
    v33 = [v32 configurationWithFont:v30 scale:2];

    v99 = v33;
    v102 = v17;
    v103 = v16;
    v34 = v16;
    v35 = v106;
    sub_274BD7B08(v17, v34, v33);
    sub_274BF56A4();
    v36 = *(v114 + 16);
    v37 = v107;
    v104 = v1;
    v38 = v115;
    v36(v107, v1, v115);
    __swift_storeEnumTagSinglePayload(v37, 0, 1, v38);
    sub_274BF56E4();
    sub_274AD8430(0, &qword_28098C4C8);

    OUTLINED_FUNCTION_37_0();
    v107 = sub_274BF55F4();
    [v35 setMenu_];
    [v35 setShowsMenuAsPrimaryAction_];
    OUTLINED_FUNCTION_95(v35, sel_setContentHuggingPriority_forAxis_, v39);
    OUTLINED_FUNCTION_95(v35, sel_setContentCompressionResistancePriority_forAxis_, v40);
    v41 = v108;
    [v108 addSubview_];
    [v35 systemLayoutSizeFittingSize_];
    v43 = v42;
    v44 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
    v45 = objc_allocWithZone(MEMORY[0x277D75348]);
    v46 = sub_274B2080C(sub_274B5B518, 0);
    [v44 setTextColor_];

    v47 = [v110 defaultMetrics];
    v48 = [v109 systemFontOfSize:13.0 weight:v23];
    v49 = [v47 scaledFontForFont_];

    [v44 setFont_];
    [v44 setNumberOfLines_];
    [v44 setLineBreakMode_];
    v50 = v44;
    [v50 setTranslatesAutoresizingMaskIntoConstraints_];
    OUTLINED_FUNCTION_95(v50, sel_setContentHuggingPriority_forAxis_, v51);
    OUTLINED_FUNCTION_95(v50, sel_setContentCompressionResistancePriority_forAxis_, v52);
    v53 = [objc_allocWithZone(MEMORY[0x277D74240]) init];
    [v53 setFirstLineHeadIndent_];
    [v53 setHeadIndent_];
    [v53 setLineSpacing_];
    v117 = 547520738;
    v118 = 0xA400000000000000;
    v54 = OUTLINED_FUNCTION_42_0();
    MEMORY[0x277C648E0](v54, v112);
    v55 = v117;
    v56 = v118;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098C398);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_274BF8D80;
    v58 = *MEMORY[0x277D74118];
    *(inited + 32) = *MEMORY[0x277D74118];
    *(inited + 64) = sub_274AD8430(0, &unk_28098B2E0);
    *(inited + 40) = v53;
    type metadata accessor for Key(0);
    OUTLINED_FUNCTION_0_17();
    sub_274B68818(v59, v60);
    v61 = v58;
    OUTLINED_FUNCTION_60(v53);
    OUTLINED_FUNCTION_82();
    v62 = sub_274BF4E14();
    v63 = objc_allocWithZone(MEMORY[0x277CCA898]);
    v64 = sub_274B636A0(v55, v56, v62);
    [v50 setAttributedText_];

    [v41 addSubview_];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280989FC8);
    v65 = swift_allocObject();
    *(v65 + 16) = xmmword_274BFFAE0;
    v66 = [v35 leadingAnchor];
    v67 = [v41 leadingAnchor];
    v68 = (v116 + OBJC_IVAR____TtC14WorkflowUICore14WFMarkdownView_style);
    v69 = *(v116 + OBJC_IVAR____TtC14WorkflowUICore14WFMarkdownView_style + 360);
    v70 = OUTLINED_FUNCTION_48_0();
    v72 = [v70 v71];

    *(v65 + 32) = v72;
    v73 = [v35 topAnchor];

    v74 = [v41 topAnchor];
    [*v68 pointSize];
    v75 = OUTLINED_FUNCTION_48_0();
    v77 = [v75 v76];

    *(v65 + 40) = v77;
    v78 = [v50 leadingAnchor];
    v79 = [v41 leadingAnchor];
    v80 = OUTLINED_FUNCTION_48_0();
    v82 = [v80 v81];

    *(v65 + 48) = v82;
    v83 = [v50 firstBaselineAnchor];
    v84 = [v35 titleLabel];
    if (v84)
    {
      v85 = v84;
      sub_274B4FD84(v102, v103);
      v86 = objc_opt_self();
      v87 = [v85 firstBaselineAnchor];

      v88 = [v83 constraintEqualToAnchor_];
      *(v65 + 56) = v88;
      v89 = [v50 trailingAnchor];
      v90 = [v41 trailingAnchor];
      v91 = [v89 constraintEqualToAnchor:v90 constant:-v69];

      *(v65 + 64) = v91;
      v92 = [v41 bottomAnchor];
      v93 = [v50 bottomAnchor];

      v94 = [v92 constraintEqualToAnchor:v93 constant:2.0];
      *(v65 + 72) = v94;
      sub_274AD8430(0, &qword_28098C428);
      v95 = sub_274BF5134();

      [v86 activateConstraints_];

      v96 = v116;
      v97 = sub_274B4EBC0();
      [v97 addArrangedSubview_];

      (*(v114 + 8))(v104, v115);
      v98 = *(v96 + v105);
      *(v96 + v105) = v41;
    }

    else
    {
      __break(1u);
    }
  }
}

uint64_t type metadata accessor for WFMarkdownStringFormatter.Block()
{
  result = qword_28098C2B8;
  if (!qword_28098C2B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_274B5B478@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_274BF1DA4();
  (*(*(v6 - 8) + 16))(a3, a1, v6);
  sub_274B68404();
  v7 = a2;
  return sub_274BF1DB4();
}

id sub_274B5B518(void *a1)
{
  v2 = [objc_opt_self() labelColor];
  v3 = [v2 colorWithAlphaComponent_];

  return v3;
}

double sub_274B5B5A4(double a1)
{
  v3 = sub_274B4EBC0();
  v4 = [v3 arrangedSubviews];

  sub_274AD8430(0, &qword_28098C280);
  v5 = sub_274BF5144();

  sub_274B22B94(v5);
  OUTLINED_FUNCTION_67_0();
  if (v4)
  {
    [v1 frame];
    v7 = v6;
    v9 = v8;
    v11 = v10;
    v13 = v12;
    [v1 setFrame_];
    [v1 setNeedsLayout];
    [v1 layoutIfNeeded];
    v14 = *&v1[OBJC_IVAR____TtC14WorkflowUICore14WFMarkdownView_attributionView];
    [v14 setNeedsLayout];
    [v14 layoutIfNeeded];

    LODWORD(v15) = 1148846080;
    LODWORD(v16) = 1112014848;
    [*&v1[OBJC_IVAR____TtC14WorkflowUICore14WFMarkdownView____lazy_storage___stackView] systemLayoutSizeFittingSize:a1 withHorizontalFittingPriority:*(MEMORY[0x277D76C80] + 8) verticalFittingPriority:{v15, v16}];
    [v1 setFrame_];
  }

  return a1;
}

id sub_274B5B7E4()
{
  v1 = sub_274B4EBC0();
  v2 = [v1 arrangedSubviews];

  sub_274AD8430(0, &qword_28098C280);
  v3 = sub_274BF5144();

  sub_274B22B94(v3);
  result = OUTLINED_FUNCTION_67_0();
  if (v2)
  {
    [v0 bounds];
    if (CGRectGetWidth(v6) <= 0.0)
    {
      Width = 300.0;
    }

    else
    {
      [v0 bounds];
      Width = CGRectGetWidth(v7);
    }

    return [v0 sizeThatFits_];
  }

  return result;
}

id WFMarkdownView.__allocating_init(frame:)()
{
  OUTLINED_FUNCTION_78_0();
  v1 = objc_allocWithZone(v0);
  v4 = OUTLINED_FUNCTION_73();

  return [v2 v3];
}

void sub_274B5BA5C(double a1, double a2, double a3, double a4)
{
  v65.receiver = v4;
  v65.super_class = type metadata accessor for WFMarkdownTextDrawingView();
  objc_msgSendSuper2(&v65, sel_drawRect_, a1, a2, a3, a4);
  v9 = [v4 attributedText];
  if (!v9)
  {
    return;
  }

  v10 = v9;
  v11 = [v4 textLayoutManager];
  if (!v11)
  {

    return;
  }

  v12 = v11;
  memcpy(__dst, &v4[OBJC_IVAR____TtC14WorkflowUICoreP33_3E9D7953B2AD67C52890490469C980A825WFMarkdownTextDrawingView_style], sizeof(__dst));
  memcpy(__src, &v4[OBJC_IVAR____TtC14WorkflowUICoreP33_3E9D7953B2AD67C52890490469C980A825WFMarkdownTextDrawingView_style], sizeof(__src));
  if (sub_274B68274(__src) == 1)
  {

    return;
  }

  memcpy(v66, __src, sizeof(v66));
  memcpy(v62, __dst, sizeof(v62));
  sub_274B4E058(v62, v61);
  v13 = [v10 length];
  v14 = [v12 documentRange];
  v15 = OBJC_IVAR____TtC14WorkflowUICoreP33_3E9D7953B2AD67C52890490469C980A825WFMarkdownTextDrawingView_blockQuoteRanges;
  *&v4[OBJC_IVAR____TtC14WorkflowUICoreP33_3E9D7953B2AD67C52890490469C980A825WFMarkdownTextDrawingView_blockQuoteRanges] = MEMORY[0x277D84F90];

  v16 = *MEMORY[0x277D74118];
  v17 = swift_allocObject();
  memcpy((v17 + 16), v66, 0x188uLL);
  *(v17 + 408) = v4;
  v18 = swift_allocObject();
  *(v18 + 16) = sub_274B6828C;
  *(v18 + 24) = v17;
  v59 = sub_274B29E94;
  v60 = v18;
  aBlock = MEMORY[0x277D85DD0];
  v56 = 1107296256;
  v57 = sub_274B44878;
  v58 = &block_descriptor_7;
  v19 = _Block_copy(&aBlock);
  sub_274B22670(__dst, v61, &qword_28098C340);
  v53 = v4;

  v49 = v10;
  v48 = v13;
  [v10 enumerateAttribute:v16 inRange:0 options:v13 usingBlock:{0, v19}];
  _Block_release(v19);
  LOBYTE(v16) = swift_isEscapingClosureAtFileLocation();

  if (v16)
  {
    goto LABEL_32;
  }

  v20 = *(*&v4[v15] + 16);
  if (!v20)
  {
    v21 = 0;
LABEL_29:
    v52 = *MEMORY[0x277D740A8];
    v42 = swift_allocObject();
    memcpy(v42 + 2, v66, 0x188uLL);
    v42[51] = v12;
    v42[52] = v14;
    v42[53] = v53;
    v43 = swift_allocObject();
    *(v43 + 16) = sub_274B682B0;
    *(v43 + 24) = v42;
    v59 = sub_274B68A94;
    v60 = v43;
    aBlock = MEMORY[0x277D85DD0];
    v56 = 1107296256;
    v57 = sub_274B44878;
    v58 = &block_descriptor_52_0;
    v44 = _Block_copy(&aBlock);
    sub_274B22670(__dst, v61, &qword_28098C340);
    v45 = v53;
    v46 = v12;
    v47 = v14;

    [v49 enumerateAttribute:v52 inRange:0 options:v48 usingBlock:{0, v44}];

    sub_274AFA708(__dst, &qword_28098C340);
    _Block_release(v44);
    LOBYTE(v44) = swift_isEscapingClosureAtFileLocation();

    sub_274AD81C4(v21);

    if (v44)
    {
      goto LABEL_33;
    }

    return;
  }

  v21 = 0;
  v22 = ( + 40);
  v23 = &qword_279EF5000;
  v50 = v14;
  while (1)
  {
    v24 = *v22;
    v25 = v23;
    v26 = [v12 v23[424]];
    swift_unknownObjectRelease();
    if (v26)
    {
      break;
    }

    v23 = v25;
LABEL_26:
    v22 += 2;
    if (!--v20)
    {

      goto LABEL_29;
    }
  }

  v27 = [v12 v25 + 2296];
  if (!v27)
  {
    goto LABEL_18;
  }

  v28 = v27;
  sub_274AD8430(0, &qword_28098C348);
  swift_unknownObjectRetain();
  v29 = swift_unknownObjectRetain();
  v30 = sub_274B5C400(v29, v28);
  if (!v30)
  {
    swift_unknownObjectRelease();
LABEL_18:
    swift_unknownObjectRelease();
LABEL_25:
    v23 = &qword_279EF5000;
    goto LABEL_26;
  }

  v31 = v30;
  v54 = -1.79769313e308;
  aBlock = 1.79769313e308;
  v32 = swift_allocObject();
  v32[2] = v53;
  v32[3] = &aBlock;
  v32[4] = &v54;
  v51 = v53;
  sub_274AD81C4(v21);
  v33 = swift_allocObject();
  *(v33 + 16) = sub_274B682C0;
  *(v33 + 24) = v32;
  v61[4] = sub_274B682CC;
  v61[5] = v33;
  v61[0] = MEMORY[0x277D85DD0];
  v61[1] = 1107296256;
  v61[2] = sub_274B5C584;
  v61[3] = &block_descriptor_61;
  v34 = _Block_copy(v61);

  [v12 enumerateTextSegmentsInRange:v31 type:0 options:0 usingBlock:v34];
  _Block_release(v34);
  LOBYTE(v34) = swift_isEscapingClosureAtFileLocation();

  if ((v34 & 1) == 0)
  {
    if (aBlock == 1.79769313e308)
    {
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();

      v14 = v50;
    }

    else
    {
      v35 = v31;
      v14 = v50;
      if (v54 == -1.79769313e308)
      {
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
      }

      else
      {
        [v51 textContainerInset];
        v36 = *&__src[31];
        v38 = v37 + *&__src[37];
        v39 = aBlock;
        v40 = v54 - aBlock;
        v67.origin.x = v37 + *&__src[37];
        v67.origin.y = aBlock;
        *&v67.size.width = __src[31];
        v67.size.height = v54 - aBlock;
        if (CGRectGetHeight(v67) > 0.0)
        {
          v41 = [objc_opt_self() bezierPathWithRoundedRect:v38 cornerRadius:{v39, v36, v40, *&__src[32]}];
          [__src[30] setFill];
          [v41 fill];
        }

        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
      }
    }

    v21 = sub_274B682C0;
    goto LABEL_25;
  }

  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  __break(1u);
}

void sub_274B5C2CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double *a5, uint64_t a6)
{
  sub_274B22670(a1, v16, &qword_28098B300);
  if (v17)
  {
    sub_274AD8430(0, &qword_28098C350);
    if (swift_dynamicCast())
    {
      [v15 headIndent];
      if (v10 == a5[37] + a5[31] + a5[33])
      {
        v11 = OBJC_IVAR____TtC14WorkflowUICoreP33_3E9D7953B2AD67C52890490469C980A825WFMarkdownTextDrawingView_blockQuoteRanges;
        sub_274B478D0();
        v12 = *(*(a6 + v11) + 16);
        sub_274B03F20(v12);
        v13 = *(a6 + v11);
        *(v13 + 16) = v12 + 1;
        v14 = v13 + 16 * v12;
        *(v14 + 32) = a2;
        *(v14 + 40) = a3;
        *(a6 + v11) = v13;
      }
    }
  }

  else
  {
    sub_274AFA708(v16, &qword_28098B300);
  }
}

id sub_274B5C400(uint64_t a1, uint64_t a2)
{
  v2 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithLocation:a1 endLocation:a2];
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  return v2;
}

uint64_t sub_274B5C464(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4, uint64_t a5, uint64_t a6, void *a7, double *a8, double *a9)
{
  MinX = CGRectGetMinX(*&a1);
  [a7 textContainerInset];
  v18 = MinX + v17;
  v29.origin.x = a1;
  v29.origin.y = a2;
  v29.size.width = a3;
  v29.size.height = a4;
  MinY = CGRectGetMinY(v29);
  [a7 textContainerInset];
  v21 = MinY + v20;
  v30.origin.x = a1;
  v30.origin.y = a2;
  v30.size.width = a3;
  v30.size.height = a4;
  Width = CGRectGetWidth(v30);
  v31.origin.x = a1;
  v31.origin.y = a2;
  v31.size.width = a3;
  v31.size.height = a4;
  Height = CGRectGetHeight(v31);
  v24 = *a8;
  v32.origin.x = v18;
  v32.origin.y = v21;
  v32.size.width = Width;
  v32.size.height = Height;
  v25 = CGRectGetMinY(v32);
  if (v25 >= v24)
  {
    v25 = v24;
  }

  *a8 = v25;
  v26 = *a9;
  v33.origin.x = v18;
  v33.origin.y = v21;
  v33.size.width = Width;
  v33.size.height = Height;
  MaxY = CGRectGetMaxY(v33);
  if (v26 > MaxY)
  {
    MaxY = v26;
  }

  *a9 = MaxY;
  return 1;
}

uint64_t sub_274B5C584(uint64_t a1, void *a2, void *a3, double a4, double a5, double a6, double a7, double a8)
{
  v15 = *(a1 + 32);
  v16 = a2;
  v17 = a3;
  v18 = v15(a2, v17, a4, a5, a6, a7, a8);

  return v18 & 1;
}

void sub_274B5C62C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double *a5, void *a6, void *a7, void *a8)
{
  sub_274B22670(a1, v28, &qword_28098B300);
  if (!v29)
  {
LABEL_9:
    sub_274AFA708(v28, &qword_28098B300);
    return;
  }

  sub_274AD8430(0, &qword_28098EF20);
  if ((swift_dynamicCast() & 1) == 0)
  {
    return;
  }

  v14 = aBlock[0];
  [aBlock[0] pointSize];
  if (v15 == a5[41])
  {
    v16 = [a6 locationFromLocation:objc_msgSend(a7 withOffset:{sel_location), a2}];
    swift_unknownObjectRelease();
    if (v16)
    {
      v17 = [a6 locationFromLocation:v16 withOffset:a3];
      if (v17)
      {
        v18 = v17;
        sub_274AD8430(0, &qword_28098C348);
        swift_unknownObjectRetain();
        v19 = swift_unknownObjectRetain();
        v20 = sub_274B5C400(v19, v18);
        if (v20)
        {
          v21 = v20;
          v22 = swift_allocObject();
          *(v22 + 16) = a8;
          v23 = v22;
          memcpy((v22 + 24), a5, 0x188uLL);
          v24 = swift_allocObject();
          v24[2] = sub_274B682F8;
          v24[3] = v23;
          aBlock[4] = sub_274B68AA4;
          aBlock[5] = v24;
          aBlock[0] = MEMORY[0x277D85DD0];
          aBlock[1] = 1107296256;
          aBlock[2] = sub_274B5C584;
          aBlock[3] = &block_descriptor_71;
          v25 = _Block_copy(aBlock);
          v26 = a8;
          sub_274B4E058(a5, v28);

          [a6 enumerateTextSegmentsInRange:v21 type:0 options:0 usingBlock:v25];

          swift_unknownObjectRelease();
          swift_unknownObjectRelease();
          _Block_release(v25);
          isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

          if ((isEscapingClosureAtFileLocation & 1) == 0)
          {
            return;
          }

          __break(1u);
          goto LABEL_9;
        }

        swift_unknownObjectRelease();
      }

      swift_unknownObjectRelease();
    }
  }
}