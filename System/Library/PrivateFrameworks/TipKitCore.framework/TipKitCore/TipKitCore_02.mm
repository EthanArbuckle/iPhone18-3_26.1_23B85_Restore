uint64_t sub_197582D38@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1975F0FE4();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_197582D64()
{
  v1 = v0;
  v2 = sub_197615A60();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1ED8174E0 != -1)
  {
    swift_once();
  }

  if (byte_1ED8174EA != 1)
  {
    return 2;
  }

  if (qword_1ED816850 != -1)
  {
    swift_once();
  }

  if (!qword_1ED81D1D0)
  {
    return 2;
  }

  swift_getKeyPath();
  v7 = sub_1975DB3F8();

  if (v7 != 2)
  {
    return 2;
  }

  v8 = v1[7];
  v9 = v1[8];
  __swift_project_boxed_opaque_existential_1Tm(v1 + 4, v8);
  (*(v9 + 72))(v16, v8, v9);
  sub_19756D1E8(v16);
  if (v17 != 1)
  {
    return 2;
  }

  v10 = v1[7];
  v11 = v1[8];
  __swift_project_boxed_opaque_existential_1Tm(v1 + 4, v10);
  (*(v11 + 72))(v14, v10, v11);
  sub_19756D1E8(v14);
  if (v15 != 1)
  {
    return 2;
  }

  if (sub_19757F834() == 1)
  {
    v12 = CoreTip.constellationContent.getter();
    if (v12)
    {

      _s10Foundation4DateV10TipKitCoreE13bySubtracting17calendarComponent5count2toACSgAA8CalendarV0I0O_SiACtFZfA1__0();
      sub_1975DEFAC(v6);
      (*(v3 + 8))(v6, v2);
    }
  }

  return 1;
}

uint64_t sub_197582FAC(__int16 *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF35140, &qword_197621F80);
  v5 = OUTLINED_FUNCTION_5_2(v4);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v16 - v8;
  v10 = *a1;
  v11 = sub_1976165B0();
  __swift_storeEnumTagSinglePayload(v9, 1, 1, v11);
  sub_197616590();
  OUTLINED_FUNCTION_42();

  v12 = sub_197616580();
  v13 = swift_allocObject();
  v14 = MEMORY[0x1E69E85E0];
  *(v13 + 16) = v12;
  *(v13 + 24) = v14;
  *(v13 + 32) = v10;
  *(v13 + 40) = v2;
  sub_1975DB7FC(0, 0, v9, &unk_19761F308, v13);
}

uint64_t sub_1975830B0()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t CoreParameterProtocol.valueType.getter()
{
  swift_getAssociatedTypeWitness();
  swift_getMetatypeMetadata();
  return sub_197616200();
}

uint64_t sub_197583144(uint64_t *a1)
{
  OUTLINED_FUNCTION_16_0(a1);
  result = CoreParameterRecord.valueType.getter();
  *v1 = result;
  v1[1] = v3;
  return result;
}

void (*CoreTip.activeViews.modify(uint64_t *a1))(uint64_t *a1)
{
  a1[1] = v1;
  *a1 = CoreTip.activeViews.getter();
  return sub_197583BDC;
}

uint64_t sub_1975831B8()
{
  OUTLINED_FUNCTION_1();
  v1 = *(*v0 + 16);
  v2 = *v0;
  OUTLINED_FUNCTION_2();
  *v3 = v2;

  OUTLINED_FUNCTION_3();

  return v4();
}

uint64_t CoreParameterProtocol.value(from:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  if (a2 >> 60 == 15)
  {
    OUTLINED_FUNCTION_3_15();
    OUTLINED_FUNCTION_4_14();

    return __swift_storeEnumTagSinglePayload(v7, v8, v9, v10);
  }

  else
  {
    sub_1975766B8(a1, a2);
    swift_getAssociatedConformanceWitness();
    sub_197567980();
    __swift_storeEnumTagSinglePayload(a3, 0, 1, AssociatedTypeWitness);
    OUTLINED_FUNCTION_4_14();

    return sub_197576558(v13, v14);
  }
}

uint64_t static CoreParameterProtocol.valuesNotEqual(_:_:)(uint64_t a1, uint64_t a2)
{
  sub_1975674F0(a1, v19);
  if (v20)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34BD8, &qword_19761C8F0);
    v4 = OUTLINED_FUNCTION_0_17();
    if (v4)
    {
      if (v22)
      {
        OUTLINED_FUNCTION_5_11(v4, v5, v6, v7);
        v8 = v24;
        __swift_project_boxed_opaque_existential_1Tm(v23, v24);
        v9 = default argument 1 of Equatable.isNotEqual(_:checkReverse:)(v8) & 1;
        v10 = a2;
        v11 = v8;
LABEL_11:
        v17 = Equatable.isNotEqual(_:checkReverse:)(v10, v9, v11);
        __swift_destroy_boxed_opaque_existential_0Tm(v23);
        return v17 & 1;
      }
    }

    else
    {
      OUTLINED_FUNCTION_1_16();
    }
  }

  else
  {
    sub_19755C404(v19, &qword_1EAF34340, &unk_19761C8E0);
    OUTLINED_FUNCTION_2_12();
  }

  sub_19755C404(v21, &qword_1EAF34BE0, &qword_19761BB70);
  sub_1975674F0(a2, v19);
  if (v20)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34BD8, &qword_19761C8F0);
    v12 = OUTLINED_FUNCTION_0_17();
    if (v12)
    {
      if (v22)
      {
        OUTLINED_FUNCTION_5_11(v12, v13, v14, v15);
        v16 = v24;
        __swift_project_boxed_opaque_existential_1Tm(v23, v24);
        v9 = default argument 1 of Equatable.isNotEqual(_:checkReverse:)(v16) & 1;
        v10 = a1;
        v11 = v16;
        goto LABEL_11;
      }
    }

    else
    {
      OUTLINED_FUNCTION_1_16();
    }
  }

  else
  {
    sub_19755C404(v19, &qword_1EAF34340, &unk_19761C8E0);
    OUTLINED_FUNCTION_2_12();
  }

  sub_19755C404(v21, &qword_1EAF34BE0, &qword_19761BB70);
  v17 = *(a1 + 24) || *(a2 + 24);
  return v17 & 1;
}

uint64_t Equatable.isNotEqual(_:checkReverse:)(uint64_t a1, char a2, uint64_t a3)
{
  sub_197616860();
  OUTLINED_FUNCTION_14();
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v28[-v10];
  OUTLINED_FUNCTION_14();
  v13 = v12;
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_1_41();
  sub_1975674F0(a1, v17);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34340, &unk_19761C8E0);
  if (OUTLINED_FUNCTION_5_25())
  {
    __swift_storeEnumTagSinglePayload(v11, 0, 1, a3);
    v18 = OUTLINED_FUNCTION_3_33();
    v19(v18);
    OUTLINED_FUNCTION_9_20();
    sub_1976161A0();
    v20 = OUTLINED_FUNCTION_7_19();
    v21(v20);
    v22 = v3 ^ 1;
  }

  else
  {
    v22 = 1;
    v23 = OUTLINED_FUNCTION_8_23();
    v24(v23);
    if (a2)
    {
      sub_1975674F0(a1, v28);
      if (v29)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34BD8, &qword_19761C8F0);
        if (OUTLINED_FUNCTION_10_20())
        {
          if (v31)
          {
            v25 = OUTLINED_FUNCTION_2_34();
            (*(v13 + 16))(v25, v3, a3);
            v26 = OUTLINED_FUNCTION_4_37();
            v22 = Equatable.isNotEqual(_:checkReverse:)(v26);
            sub_19755C404(v30, &qword_1EAF34340, &unk_19761C8E0);
            __swift_destroy_boxed_opaque_existential_0Tm(v33);
            return v22 & 1;
          }
        }

        else
        {
          v32 = 0;
          OUTLINED_FUNCTION_6_19();
        }
      }

      else
      {
        sub_19755C404(v28, &qword_1EAF34340, &unk_19761C8E0);
        OUTLINED_FUNCTION_6_19();
        v32 = 0;
      }

      sub_19755C404(v30, &qword_1EAF34BE0, &qword_19761BB70);
    }
  }

  return v22 & 1;
}

uint64_t _ss17FixedWidthIntegerP10TipKitCoreE9decrement2byyx_tFfA__0(uint64_t a1, uint64_t a2)
{
  v2 = *(*(*(a2 + 8) + 24) + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4 = OUTLINED_FUNCTION_13(AssociatedTypeWitness);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  swift_getAssociatedConformanceWitness();
  sub_1976170C0();
  return sub_197616ED0();
}

uint64_t sub_197583A94(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t, uint64_t, void))
{
  OUTLINED_FUNCTION_14();
  v10 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_6_0();
  v16 = v15 - v14;
  (*(v10 + 32))(v15 - v14, v4, a2);
  a4(v16, a1, a2, *(*(*(a3 + 8) + 24) + 8));
  return (*(v10 + 8))(v16, a2);
}

void CoreTip.activeViews.setter(uint64_t a1)
{
  OUTLINED_FUNCTION_15_7(OBJC_IVAR____TtC10TipKitCore7CoreTip__activeViews);
  *(v1 + 8) = a1;

  os_unfair_lock_unlock(v1);
}

uint64_t static CoreTip.setLastTipDisplayed(id:date:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF35260, &qword_1976202C8);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = (&v14 - v8);
  if (qword_1ED817510 != -1)
  {
    swift_once();
  }

  result = swift_beginAccess();
  if ((byte_1ED817549 & 1) == 0 && !*(off_1ED817550 + 2) && (byte_1ED817558 & 1) == 0 && !((*(off_1ED817560 + 2) != 0) | byte_1ED817568 & 1))
  {
    if (byte_1ED817580 == 1)
    {
      if (qword_1ED816850 != -1)
      {
        swift_once();
      }

      if (qword_1ED81D1D0)
      {

        sub_1975EBF74(a1, a2, a3);
        sub_1975EC338();
      }
    }

    v11 = _s12DisplayEventVMa();
    v12 = *(v11 + 20);
    v13 = sub_197615A60();
    (*(*(v13 - 8) + 16))(v9 + v12, a3, v13);
    *v9 = a1;
    v9[1] = a2;
    __swift_storeEnumTagSinglePayload(v9, 0, 1, v11);

    return sub_197583FF0(v9);
  }

  return result;
}

uint64_t _s12DisplayEventVMa()
{
  result = qword_1ED816D50;
  if (!qword_1ED816D50)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_197583E64(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_197615A60();
    v8 = v5 + *(a4 + 20);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_197583EE4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF35260, &qword_1976202C8);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v3 = &v10 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF35270, &qword_1976204C8);
  __swift_allocate_value_buffer(v4, qword_1ED8160F0);
  v5 = __swift_project_value_buffer(v4, qword_1ED8160F0);
  v6 = _s12DisplayEventVMa();
  __swift_storeEnumTagSinglePayload(v3, 1, 1, v6);
  *v5 = 0;
  v7 = *(v4 + 28);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF35278, &qword_1976204D0);
  bzero(v5 + v7, *(*(v8 - 8) + 64));
  return sub_197584098(v3, v5 + v7);
}

uint64_t sub_197583FF0(uint64_t a1)
{
  if (qword_1ED8160E8 != -1)
  {
    OUTLINED_FUNCTION_2_23();
  }

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF35270, &qword_1976204C8);
  v3 = __swift_project_value_buffer(v2, qword_1ED8160F0);
  os_unfair_lock_lock(v3);
  v4 = *(v2 + 28);
  sub_197584108(v3 + v4);
  sub_197584170(a1, v3 + v4);
  os_unfair_lock_unlock(v3);

  return sub_197584108(a1);
}

uint64_t sub_197584098(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF35260, &qword_1976202C8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_197584108(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF35260, &qword_1976202C8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_197584170(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF35260, &qword_1976202C8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1975841F4(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_197615A60();
    v9 = a1 + *(a3 + 20);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

void sub_19758427C(char a1)
{
  os_unfair_lock_lock((v1 + 100));
  *(v1 + 104) = a1;

  os_unfair_lock_unlock((v1 + 100));
}

uint64_t sub_1975842BC()
{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_21_13();
  v4 = *(v1 + 16);
  v3 = *(v1 + 24);
  v5 = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_5_1(v5);
  *v6 = v7;
  v6[1] = sub_19755CDC8;

  return sub_197584374(v2, v0, v4);
}

uint64_t sub_197584374(uint64_t a1, uint64_t *a2, int *a3)
{
  v4 = *a2;
  v8 = (a3 + *a3);
  v5 = a3[1];
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_19755CCE8;

  return v8(v4);
}

void sub_197584468()
{
  OUTLINED_FUNCTION_15_12();
  OUTLINED_FUNCTION_35_5(v2, v3, v4, v5, v6, v7, v8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF346D0, &unk_197622090);
  OUTLINED_FUNCTION_0(v9);
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_27_8();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF346D8, &unk_197619120);
  v14 = OUTLINED_FUNCTION_5_2(v13);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_52_0();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_68_0();
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34AB8, &qword_197622080);
  OUTLINED_FUNCTION_5_2(v18);
  v20 = *(v19 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v21);
  v22 = OUTLINED_FUNCTION_85();
  v23 = OUTLINED_FUNCTION_0(v22);
  v25 = v24;
  v27 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_11_20();
  OUTLINED_FUNCTION_87();
  OUTLINED_FUNCTION_45_0(v0);
  if (v28)
  {
    sub_19755C7C8(v0, &qword_1EAF34AB8, &qword_197622080);
  }

  else
  {
    v29 = OUTLINED_FUNCTION_53_0();
    v30(v29);
    OUTLINED_FUNCTION_8_26();
    sub_19755FF88(v31, 255, v32);
    if (OUTLINED_FUNCTION_67())
    {
      v41 = *(v25 + 8);
      v42 = OUTLINED_FUNCTION_43();
      v43(v42);
    }

    else
    {
      OUTLINED_FUNCTION_106(0, v34, v35, v36, v37, v38, v39, v40, v67);
      MEMORY[0x1EEE9AC00](v44);
      OUTLINED_FUNCTION_19_11();
      OUTLINED_FUNCTION_55();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF346E0, &qword_1976220A0);
      v45 = OUTLINED_FUNCTION_38_3();
      __swift_storeEnumTagSinglePayload(v45, v46, v47, v48);
      v49 = OUTLINED_FUNCTION_29_5();
      sub_19755F9A0(v49, v50, v51, v52);
      v53 = OUTLINED_FUNCTION_74_0();
      MEMORY[0x1EEE9AC00](v53);
      OUTLINED_FUNCTION_2_38();
      swift_getKeyPath();
      OUTLINED_FUNCTION_4_7();
      swift_setAtWritableKeyPath();

      OUTLINED_FUNCTION_9_6();
      MEMORY[0x1EEE9AC00](v54);
      OUTLINED_FUNCTION_2_38();
      swift_getKeyPath();
      OUTLINED_FUNCTION_8_7();
      OUTLINED_FUNCTION_21_12(v68);
      swift_setAtWritableKeyPath();

      OUTLINED_FUNCTION_9_6();
      MEMORY[0x1EEE9AC00](v55);
      OUTLINED_FUNCTION_2_38();
      swift_getKeyPath();
      OUTLINED_FUNCTION_8_7();
      OUTLINED_FUNCTION_20_11(v69);
      swift_setAtWritableKeyPath();

      OUTLINED_FUNCTION_9_6();
      MEMORY[0x1EEE9AC00](v56);
      OUTLINED_FUNCTION_2_38();
      swift_getKeyPath();
      OUTLINED_FUNCTION_8_7();

      OUTLINED_FUNCTION_4_7();
      swift_setAtWritableKeyPath();

      OUTLINED_FUNCTION_9_6();
      MEMORY[0x1EEE9AC00](v57);
      OUTLINED_FUNCTION_2_38();
      swift_getKeyPath();
      OUTLINED_FUNCTION_8_7();
      OUTLINED_FUNCTION_125();
      OUTLINED_FUNCTION_4_7();
      swift_setAtWritableKeyPath();

      OUTLINED_FUNCTION_9_6();
      MEMORY[0x1EEE9AC00](v58);
      OUTLINED_FUNCTION_2_38();
      swift_getKeyPath();
      OUTLINED_FUNCTION_8_7();
      OUTLINED_FUNCTION_4_7();
      swift_setAtWritableKeyPath();

      v59 = OUTLINED_FUNCTION_73_0();
      if (v1)
      {

        v60 = OUTLINED_FUNCTION_15_15();
        v61(v60);
      }

      else
      {
        v64 = v59;
        v65 = OUTLINED_FUNCTION_15_15();
        v66(v65);
        sub_19758761C(v64);
        OUTLINED_FUNCTION_122();
      }

      sub_19755C7C8(&qword_1EAF34AB8, &qword_1EAF346D8, &unk_197619120);
      v62 = OUTLINED_FUNCTION_36_4();
      v63(v62);
      OUTLINED_FUNCTION_91();
    }
  }

  OUTLINED_FUNCTION_90();
  OUTLINED_FUNCTION_14_9();
}

uint64_t sub_19758493C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = sub_197615870();
  (*(*(v6 - 8) + 16))(a2, v3, v6);
  sub_197615860();
  sub_1975849D4(a1);
  return sub_197615860();
}

uint64_t sub_1975849D4(uint64_t a1)
{
  if (!swift_isOptionalType())
  {
    return a1;
  }

  result = sub_197615B70();
  if (!v3)
  {
    return a1;
  }

  if (v3 >= 1)
  {
    return *result;
  }

  __break(1u);
  return result;
}

uint64_t sub_197584A1C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_197616BE0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v11[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = sub_197615870();
  (*(*(v9 - 8) + 16))(a1, v2, v9);
  v12 = a1;
  sub_197584B7C();
  sub_197616EA0();
  (*(v5 + 8))(v8, v4);
  sub_197615A60();
  result = swift_dynamicCastMetatype();
  if (result)
  {
    return sub_19760EA00();
  }

  return result;
}

uint64_t sub_197584B7C()
{
  sub_197616BE0();
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EAF35700, &qword_197622C50);
  sub_197584C00();
  return sub_197616950();
}

unint64_t sub_197584C00()
{
  result = qword_1EAF33EC8;
  if (!qword_1EAF33EC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_1EAF35700, &qword_197622C50);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF33EC8);
  }

  return result;
}

uint64_t sub_197584C64()
{
  v1 = sub_197615570();
  OUTLINED_FUNCTION_1_43(v1);
  sub_197615560();
  sub_197615540();
  OUTLINED_FUNCTION_0_41();
  return v0;
}

double static Double.unixTimestamp.getter()
{
  v0 = sub_197615A60();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  _s10Foundation4DateV10TipKitCoreE13bySubtracting17calendarComponent5count2toACSgAA8CalendarV0I0O_SiACtFZfA1__0();
  sub_197615A20();
  v6 = v5;
  (*(v1 + 8))(v4, v0);
  return v6;
}

uint64_t CoreTip.options.getter()
{
  v1 = v0[7];
  v2 = v0[8];
  __swift_project_boxed_opaque_existential_1Tm(v0 + 4, v1);
  return (*(v2 + 72))(v1, v2);
}

uint64_t CoreTip.activeViews.getter()
{
  OUTLINED_FUNCTION_13_11(OBJC_IVAR____TtC10TipKitCore7CoreTip__activeViews);
  v1 = *(v0 + 8);
  os_unfair_lock_unlock(v0);
  return v1;
}

uint64_t sub_197584E4C(uint64_t a1, uint64_t *a2, void (*a3)(__int128 *__return_ptr))
{
  a3(&v7);
  v4 = *a2;
  v5 = a2[1];
  *a2 = v7;

  return sub_197576558(v4, v5);
}

uint64_t sub_197584EFC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_197615980();
  if (!v1)
  {
    *a1 = result;
    a1[1] = v4;
  }

  return result;
}

uint64_t sub_197584F28(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t DeviceProfile.ProfileContent.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v73 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF35260, &qword_1976202C8);
  OUTLINED_FUNCTION_5_2(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v6);
  v74 = v72 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34988, &qword_197620CA0);
  v9 = OUTLINED_FUNCTION_5_2(v8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_5();
  v75 = v12 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v16 = v72 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF353E8, &qword_197621688);
  v18 = OUTLINED_FUNCTION_0(v17);
  v76 = v19;
  v77 = v18;
  v21 = *(v20 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v22);
  v24 = v72 - v23;
  v25 = type metadata accessor for DeviceProfile.ProfileContent();
  v26 = OUTLINED_FUNCTION_13(v25);
  v28 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_6_0();
  v31 = (v30 - v29);
  v33 = *(v32 + 24);
  sub_197615A60();
  v79 = v33;
  OUTLINED_FUNCTION_4_36();
  __swift_storeEnumTagSinglePayload(v34, v35, v36, v37);
  v82 = *(v25 + 32);
  OUTLINED_FUNCTION_4_36();
  __swift_storeEnumTagSinglePayload(v38, v39, v40, v41);
  v42 = *(v25 + 36);
  v43 = _s12DisplayEventVMa();
  v81 = v42;
  v85 = v31;
  __swift_storeEnumTagSinglePayload(&v31[v42], 1, 1, v43);
  v84 = sub_1976160B0();
  v80 = sub_1976160B0();
  v44 = a1[3];
  v45 = a1[4];
  v83 = a1;
  __swift_project_boxed_opaque_existential_1Tm(a1, v44);
  sub_19758BF10();
  v46 = v78;
  sub_197617240();
  if (v46)
  {
    v48 = v79;
    v50 = v81;
    v49 = v82;
    __swift_destroy_boxed_opaque_existential_0Tm(v83);
    v51 = v85;
    sub_19755C7C8(&v85[v48], &qword_1EAF34988, &qword_197620CA0);

    sub_19755C7C8(&v51[v49], &qword_1EAF34988, &qword_197620CA0);
    sub_19755C7C8(&v51[v50], &qword_1EAF35260, &qword_1976202C8);
  }

  else
  {
    v78 = v43;
    v47 = v25;
    v87 = 0;
    sub_19758BF64();
    OUTLINED_FUNCTION_23_7();
    sub_197616DC0();
    v52 = v85;
    *v85 = v86;
    LOBYTE(v86) = 1;
    v72[1] = v24;
    v53 = sub_197616DA0();
    v54 = v79;
    v52[1] = v53 & 1;
    LOBYTE(v86) = 2;
    OUTLINED_FUNCTION_0_40();
    sub_1975F2D90(v55, v56);
    OUTLINED_FUNCTION_17_13();
    sub_197616D80();
    v57 = v81;
    sub_19758C390(v16, &v85[v54], &qword_1EAF34988, &qword_197620CA0);
    LOBYTE(v86) = 3;
    OUTLINED_FUNCTION_17_13();
    v58 = sub_197616D50();
    v59 = v47;
    v60 = &v85[v47[7]];
    *v60 = v58;
    v60[1] = v61;
    LOBYTE(v86) = 4;
    v62 = v75;
    OUTLINED_FUNCTION_17_13();
    sub_197616D80();
    sub_19758C390(v62, &v85[v82], &qword_1EAF34988, &qword_197620CA0);
    LOBYTE(v86) = 5;
    OUTLINED_FUNCTION_7_17();
    sub_1975F2D90(v63, v64);
    v65 = v74;
    OUTLINED_FUNCTION_17_13();
    sub_197616D80();
    sub_19758C390(v65, &v85[v57], &qword_1EAF35260, &qword_1976202C8);
    v87 = 6;
    sub_19758C3E0();
    OUTLINED_FUNCTION_23_7();
    OUTLINED_FUNCTION_17_13();
    sub_197616D80();
    v85[v59[10]] = v86;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34398, &qword_197618398);
    v87 = 7;
    sub_1975F2DD8(&qword_1ED816728, sub_19756BBB0);
    OUTLINED_FUNCTION_23_7();
    OUTLINED_FUNCTION_17_13();
    sub_197616DC0();

    v66 = v59[11];
    v84 = v86;
    *&v85[v66] = v86;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF353E0, &qword_197621680);
    v87 = 8;
    sub_1975F2CC8(&qword_1ED816238, sub_19758C610);
    OUTLINED_FUNCTION_23_7();
    OUTLINED_FUNCTION_17_13();
    sub_197616DC0();
    v67 = v59[12];
    v68 = OUTLINED_FUNCTION_11_17();
    v69(v68);

    v70 = v85;
    *&v85[v67] = v86;
    sub_19758C664(v70, v73);
    __swift_destroy_boxed_opaque_existential_0Tm(v83);
    return sub_1975F2E4C(v70, type metadata accessor for DeviceProfile.ProfileContent);
  }
}

unint64_t sub_1975856E8()
{
  result = qword_1ED816B00;
  if (!qword_1ED816B00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF35088, &qword_19761EF80);
    sub_197559AAC(&qword_1ED816AE0, &qword_1EAF35080, &qword_19761EF78);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED816B00);
  }

  return result;
}

uint64_t sub_1975857C4(uint64_t a1, uint64_t *a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34988, &qword_197620CA0);
  OUTLINED_FUNCTION_5_2(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_41_2();
  sub_19758110C(a1, v2);
  v9 = *a2;
  return CoreTipRecord.lastDisplayed.setter(v2);
}

uint64_t CoreTipRecord.lastDisplayed.setter(uint64_t a1)
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_49();
  OUTLINED_FUNCTION_0_35();
  sub_197560338(v2, v3);
  OUTLINED_FUNCTION_15_5();

  return sub_1975E62E4(a1, &qword_1EAF34988);
}

uint64_t sub_1975858F8()
{
  swift_getKeyPath();
  sub_197560338(&qword_1ED8170E0, type metadata accessor for CoreTipRecord);
  sub_197569718();
  sub_197615E70();
}

void sub_1975859D8()
{
  OUTLINED_FUNCTION_74();
  v2 = v1;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF35348, &qword_197620FD8);
  v18 = v2;
  v3 = sub_197568F10(v19);
  if (v19)
  {
    v4 = OUTLINED_FUNCTION_56();
    OUTLINED_FUNCTION_34_4();
    OUTLINED_FUNCTION_47();
    OUTLINED_FUNCTION_14();
    v6 = *(v5 + 64);
    MEMORY[0x1EEE9AC00](v7);
    OUTLINED_FUNCTION_6_0();
    v9 = OUTLINED_FUNCTION_15_9(v8);
    v10(v9);
    sub_197585BF0(*v0, 0x4479616C70736964, 0xEC00000073657461, v4, &v16);
    __swift_destroy_boxed_opaque_existential_0Tm(v17);
  }

  else
  {
    sub_1975E62E4(&v18, &qword_1EAF34698);
    v11 = sub_19755C610();
    if (v12)
    {
      v13 = v11;
      swift_isUniquelyReferenced_nonNull_native();
      v16 = v3;
      v14 = v3[3];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34D00, &unk_19761C4E0);
      sub_197616BF0();
      v15 = *(v3[6] + 16 * v13 + 8);

      sub_19756A94C((v3[7] + 32 * v13), v17);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF345E8, &qword_197619050);
      sub_197616C10();
    }

    else
    {
      OUTLINED_FUNCTION_32_2();
    }

    sub_1975E62E4(v17, &qword_1EAF34698);
  }

  sub_19757A368();
  OUTLINED_FUNCTION_75();
}

_OWORD *sub_197585BF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF35348, &qword_197620FD8);
  v27 = v9;
  *&v26 = a1;
  v10 = *a5;
  v11 = sub_19755C610();
  if (__OFADD__(v10[2], (v12 & 1) == 0))
  {
    __break(1u);
    goto LABEL_10;
  }

  v13 = v11;
  v14 = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34D00, &unk_19761C4E0);
  if ((sub_197616BF0() & 1) == 0)
  {
    goto LABEL_5;
  }

  v15 = *a5;
  v16 = sub_19755C610();
  if ((v14 & 1) != (v17 & 1))
  {
LABEL_10:
    result = sub_1976170F0();
    __break(1u);
    return result;
  }

  v13 = v16;
LABEL_5:
  v18 = *a5;
  if (v14)
  {
    v19 = (v18[7] + 32 * v13);
    __swift_destroy_boxed_opaque_existential_0Tm(v19);
    return sub_19756A94C(&v26, v19);
  }

  else
  {
    v21 = __swift_mutable_project_boxed_opaque_existential_1(&v26, v9);
    v22 = *(*(v9 - 8) + 64);
    MEMORY[0x1EEE9AC00](v21);
    v24 = (&v26 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v25 + 16))(v24);
    sub_1975E6718(v13, a2, a3, *v24, v18);
    __swift_destroy_boxed_opaque_existential_0Tm(&v26);
  }
}

uint64_t OUTLINED_FUNCTION_68()
{
  v3 = *(*(*(v1 - 136) + 48) + 16 * v0 + 8);
}

uint64_t sub_197585E28(void (*a1)(char *, char *), uint64_t a2, uint64_t a3, char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v49 = a8;
  v9 = v8;
  v63 = a2;
  v64 = a4;
  v62 = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v57 = *(AssociatedTypeWitness - 8);
  v15 = *(v57 + 64);
  v16 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v50 = a5;
  v51 = &v45 - v17;
  v48 = *(a5 - 8);
  v18 = *(v48 + 64);
  v19 = MEMORY[0x1EEE9AC00](v16);
  v60 = &v45 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v58 = &v45 - v21;
  v22 = sub_197616860();
  v46 = *(v22 - 8);
  v47 = v22;
  v23 = *(v46 + 64);
  v24 = MEMORY[0x1EEE9AC00](v22);
  v26 = &v45 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x1EEE9AC00](v24);
  v29 = &v45 - v28;
  v30 = *(*(a4 - 1) + 64);
  v31 = MEMORY[0x1EEE9AC00](v27);
  v59 = &v45 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = MEMORY[0x1EEE9AC00](v31);
  v56 = *(a3 - 8);
  v34 = *(v56 + 64);
  MEMORY[0x1EEE9AC00](v33);
  v55 = &v45 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = a6;
  v65 = swift_getAssociatedTypeWitness();
  v52 = *(v65 - 8);
  v36 = *(v52 + 64);
  MEMORY[0x1EEE9AC00](v65);
  v38 = &v45 - v37;
  v39 = sub_197616360();
  v66 = sub_197616B40();
  v61 = sub_197616B50();
  sub_197616AF0();
  (*(v56 + 16))(v55, v53, a3);
  v64 = v38;
  v56 = a3;
  result = sub_197616350();
  if (v39 < 0)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if (v39)
  {
    v41 = (v57 + 8);
    swift_getAssociatedConformanceWitness();
    while (1)
    {
      sub_197616890();
      result = __swift_getEnumTagSinglePayload(v29, 1, AssociatedTypeWitness);
      if (result == 1)
      {
        goto LABEL_17;
      }

      v62(v29, v58);
      if (v9)
      {
        (*(v52 + 8))(v64, v65);

        (*(v48 + 32))(v49, v58, v50);
        return (*v41)(v29, AssociatedTypeWitness);
      }

      v9 = 0;
      (*v41)(v29, AssociatedTypeWitness);
      sub_197616B30();
      if (!--v39)
      {
        goto LABEL_9;
      }
    }
  }

  swift_getAssociatedConformanceWitness();
LABEL_9:
  v42 = (v57 + 32);
  v43 = (v57 + 8);
  v44 = v51;
  while (1)
  {
    sub_197616890();
    if (__swift_getEnumTagSinglePayload(v26, 1, AssociatedTypeWitness) == 1)
    {
      (*(v52 + 8))(v64, v65);
      (*(v46 + 8))(v26, v47);
      return v66;
    }

    (*v42)(v44, v26, AssociatedTypeWitness);
    v62(v44, v60);
    if (v9)
    {
      break;
    }

    v9 = 0;
    (*v43)(v44, AssociatedTypeWitness);
    sub_197616B30();
  }

  (*v43)(v44, AssociatedTypeWitness);
  (*(v52 + 8))(v64, v65);

  return (*(v48 + 32))(v49, v60, v50);
}

uint64_t sub_1975864BC(char *a1, uint64_t (*a2)(uint64_t, char *), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  v11 = *a1;
  swift_getAssociatedTypeWitness();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  result = a2(v11, &a1[*(TupleTypeMetadata2 + 48)]);
  if (v7)
  {
    *a7 = v7;
  }

  return result;
}

BOOL sub_197586584(_BYTE *a1)
{
  if (qword_1ED817298 != -1)
  {
    OUTLINED_FUNCTION_0_6();
  }

  return *a1 == 0;
}

uint64_t sub_1975865D0(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

double sub_197586610@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  if (*(a2 + 16) && (v4 = sub_197586658(a1), (v5 & 1) != 0))
  {
    v6 = OUTLINED_FUNCTION_22_0(v4);
    sub_1975586C0(v6, v7);
  }

  else
  {
    result = 0.0;
    *a3 = 0u;
    a3[1] = 0u;
  }

  return result;
}

unint64_t sub_197586658(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  v5 = sub_197616980();

  return sub_197587CFC(a1, v5);
}

uint64_t sub_1975866F8()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_16();
  v3 = v2;
  OUTLINED_FUNCTION_110();
  *v4 = v3;
  v6 = *(v5 + 160);
  v7 = *v1;
  OUTLINED_FUNCTION_2();
  *v8 = v7;
  *(v3 + 168) = v0;

  if (!v0)
  {
    v10 = *(v3 + 120);

    return MEMORY[0x1EEE6DFA0](sub_1975867F4, v10, 0);
  }

  return result;
}

uint64_t sub_1975867F4()
{
  if (!v0[12])
  {
    v5 = v0[18];

    __swift_destroy_boxed_opaque_existential_0Tm(v0 + 2);
    OUTLINED_FUNCTION_3();
    goto LABEL_5;
  }

  v1 = v0[21];
  v2 = v0[18];
  sub_197586AD8(v0[12], v0[16], v0[17], sub_1975FFB50, 0);
  OUTLINED_FUNCTION_114();

  if (v1)
  {
    v3 = v0[18];
    sub_197615C90();

    __swift_destroy_boxed_opaque_existential_0Tm(v0 + 2);
    OUTLINED_FUNCTION_3();
LABEL_5:

    return v4();
  }

  if (v2)
  {
    v7 = v0[15];
    v8 = swift_allocObject();
    swift_weakInit();
    v9 = swift_allocObject();
    v0[22] = v9;
    *(v9 + 16) = v2;
    *(v9 + 24) = v8;
    v10 = swift_task_alloc();
    v0[23] = v10;
    *v10 = v0;
    v10[1] = sub_1975FF930;
    v11 = v0[14];

    return sub_1975C4064();
  }

  else
  {
    v12 = v0[18];
    sub_197615C90();
    v13 = v0[19];
    v14 = v0[15];
    v15 = v0[6];
    __swift_mutable_project_boxed_opaque_existential_1((v0 + 2), v0[5]);
    v16 = *(MEMORY[0x1E69E85B0] + 4);
    v17 = swift_task_alloc();
    v18 = OUTLINED_FUNCTION_104(v17);
    *v18 = v19;
    OUTLINED_FUNCTION_13_20();

    return MEMORY[0x1EEE6D8D0](v0 + 12);
  }
}

uint64_t sub_197586A60()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_197586A98()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_197586AD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  v12 = sub_197586B80(a1, v5, a2, a3, a4, a5);
  v13 = v12;
  if (!v6 && sub_197597500(v12) == *(v12 + 16) && (v14 & 0x100) != 0)
  {

    return 0;
  }

  return v13;
}

uint64_t sub_197586B80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v68 = a5;
  v69 = a6;
  v59 = a3;
  v11 = sub_197615FA0();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x1EEE9AC00](v11);
  v16 = &v50 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(a1 + 16);
  if (v17)
  {
    v51 = v16;
    v52 = v14;
    v75 = MEMORY[0x1E69E7CC0];
    sub_197587EBC(0, v17, 0);
    v18 = v75;
    result = sub_1975880BC(a1);
    v22 = 0;
    v65 = a1 + 64;
    v66 = v12 + 16;
    v67 = (v12 + 8);
    v50 = a1 + 72;
    v71 = v12;
    v57 = a4;
    v58 = a2;
    v54 = a1;
    v53 = v17;
    if ((result & 0x8000000000000000) == 0)
    {
      while (result < 1 << *(a1 + 32))
      {
        if ((*(v65 + 8 * (result >> 6)) & (1 << result)) == 0)
        {
          goto LABEL_41;
        }

        if (*(a1 + 36) != v20)
        {
          goto LABEL_42;
        }

        v61 = 1 << result;
        v62 = result >> 6;
        v56 = v21;
        v63 = result;
        v64 = v20;
        v60 = v22;
        v23 = sub_197587EDC(*(*(a1 + 56) + 8 * result), v59, a4);
        if (v7)
        {

LABEL_33:

          return v18;
        }

        v24 = *(v23 + 16);
        if (v24)
        {
          v55 = v18;
          v74 = MEMORY[0x1E69E7CC0];
          v72 = v23;
          sub_1975D20B0(0, v24, 0);
          result = v72;
          v25 = 0;
          v26 = v74;
          v70 = v72 + ((*(v12 + 80) + 32) & ~*(v12 + 80));
          v18 = v52;
          v27 = v51;
          while (v25 < *(result + 16))
          {
            (*(v12 + 16))(v27, v70 + *(v12 + 72) * v25, v18);
            v28 = sub_197615F90();
            MEMORY[0x1EEE9AC00](v28);
            v30 = v68;
            v29 = v69;
            *(&v50 - 4) = v27;
            *(&v50 - 3) = v30;
            *(&v50 - 2) = v29;
            v31 = sub_1976076A8(sub_1976079D0, (&v50 - 6), v28);
            if (v7)
            {

              (*v67)(v27, v18);

              goto LABEL_33;
            }

            v32 = v31;
            v73 = 0;
            v33 = v24;

            (*v67)(v27, v18);
            v74 = v26;
            v35 = *(v26 + 16);
            v34 = *(v26 + 24);
            if (v35 >= v34 >> 1)
            {
              sub_1975D20B0(v34 > 1, v35 + 1, 1);
              v27 = v51;
              v18 = v52;
              v26 = v74;
            }

            ++v25;
            *(v26 + 16) = v35 + 1;
            *(v26 + 8 * v35 + 32) = v32;
            v24 = v33;
            v36 = v33 == v25;
            v12 = v71;
            result = v72;
            v7 = v73;
            if (v36)
            {

              v18 = v55;
              goto LABEL_17;
            }
          }

          __break(1u);
          break;
        }

        v26 = MEMORY[0x1E69E7CC0];
LABEL_17:
        v75 = v18;
        v38 = *(v18 + 16);
        v37 = *(v18 + 24);
        result = v63;
        v39 = v64;
        v40 = v62;
        if (v38 >= v37 >> 1)
        {
          sub_197587EBC(v37 > 1, v38 + 1, 1);
          v40 = v62;
          result = v63;
          v39 = v64;
          v18 = v75;
        }

        *(v18 + 16) = v38 + 1;
        *(v18 + 8 * v38 + 32) = v26;
        a1 = v54;
        v41 = 1 << *(v54 + 32);
        if (result >= v41)
        {
          goto LABEL_43;
        }

        v42 = *(v65 + 8 * v40);
        if ((v42 & v61) == 0)
        {
          goto LABEL_44;
        }

        if (*(v54 + 36) != v39)
        {
          goto LABEL_45;
        }

        v43 = v42 & (-2 << (result & 0x3F));
        if (v43)
        {
          v41 = __clz(__rbit64(v43)) | result & 0x7FFFFFFFFFFFFFC0;
          v44 = v53;
        }

        else
        {
          v45 = v40 << 6;
          v46 = v40 + 1;
          v47 = (v50 + 8 * v40);
          v44 = v53;
          while (v46 < (v41 + 63) >> 6)
          {
            v49 = *v47++;
            v48 = v49;
            v45 += 64;
            ++v46;
            if (v49)
            {
              sub_1976079F0(result, v39, v56 & 1);
              v41 = __clz(__rbit64(v48)) + v45;
              goto LABEL_29;
            }
          }

          sub_1976079F0(result, v39, v56 & 1);
        }

LABEL_29:
        v22 = v60 + 1;
        a4 = v57;
        v12 = v71;
        if (v60 + 1 == v44)
        {

          goto LABEL_35;
        }

        v21 = 0;
        v20 = *(a1 + 36);
        result = v41;
        if (v41 < 0)
        {
          break;
        }
      }
    }

    __break(1u);
LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
  }

  else
  {

    v18 = MEMORY[0x1E69E7CC0];
LABEL_35:

    return v18;
  }

  return result;
}

unint64_t sub_1975870F8()
{
  result = qword_1ED816C20;
  if (!qword_1ED816C20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF356D8, &qword_1976227E8);
    sub_197588DA4(&qword_1ED816BE0, &qword_1EAF356D0, &qword_1976227E0);
    sub_197588E3C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED816C20);
  }

  return result;
}

uint64_t sub_19758719C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v23[1] = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF355A0, &qword_197622258);
  v6 = *(v5 - 8);
  v24 = v5;
  v25 = v6;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = v23 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34710, &unk_197622260);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = v23 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34750, &qword_1976193C8);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v19 = v23 - v18;
  v20 = *a1;
  sub_197559AAC(&qword_1ED816CE0, &qword_1EAF34710, &unk_197622260);
  sub_197615820();
  v26 = type metadata accessor for CoreTipRecord();
  v27 = sub_19755FF88(&qword_1ED8170E0, 255, type metadata accessor for CoreTipRecord);
  swift_getKeyPath();
  sub_197615700();

  (*(v11 + 8))(v14, v10);
  sub_197615F50();
  sub_197615810();
  a3[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF355A8, &unk_1976222B0);
  a3[4] = sub_197587590();
  __swift_allocate_boxed_opaque_existential_0(a3);
  sub_197559AAC(&qword_1ED816AE8, &qword_1EAF34750, &qword_1976193C8);
  sub_197559AAC(&qword_1ED816D10, &qword_1EAF355A0, &qword_197622258);
  sub_19755FF88(&qword_1ED816C88, 255, MEMORY[0x1E697BC90]);
  v21 = v24;
  sub_1976156F0();
  (*(v25 + 8))(v9, v21);
  return (*(v16 + 8))(v19, v15);
}

unint64_t sub_197587590()
{
  result = qword_1ED816B08;
  if (!qword_1ED816B08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF355A8, &unk_1976222B0);
    sub_197603898();
    sub_197595A48();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED816B08);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_51()
{

  return swift_allocObject();
}

uint64_t Double.seconds.getter(double a1)
{
  v1 = trunc(a1);
  if ((*&v1 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (v1 <= -9.22337204e18)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (v1 < 9.22337204e18)
  {
    return v1;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_19758781C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34988, &qword_197620CA0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  sub_19758110C(a2, &v8 - v6);
  v9 = v2;

  swift_setAtReferenceWritableKeyPath();
}

uint64_t sub_1975878F8()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_1975858F8();
}

uint64_t sub_197587914(uint64_t a1)
{
  sub_197568F10(a1);
  v1 = OUTLINED_FUNCTION_28_5();
  OUTLINED_FUNCTION_73(v1 & 0xFFFFFFFFFFFFLL | 0x4479000000000000, 0xEC00000073657461);

  if (v5)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF345E8, &qword_197619050);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF35348, &qword_197620FD8);
    if (swift_dynamicCast())
    {
      return v3;
    }
  }

  else
  {
    sub_1975E62E4(v4, &qword_1EAF34698);
  }

  return MEMORY[0x1E69E7CC0];
}

uint64_t sub_1975879D8(uint64_t a1)
{
  sub_197568F10(a1);
  OUTLINED_FUNCTION_18_6();
  OUTLINED_FUNCTION_59(16, v1);

  if (v5)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF345E8, &qword_197619050);
    if (OUTLINED_FUNCTION_31_5())
    {
      return v3;
    }
  }

  else
  {
    sub_1975E62E4(v4, &qword_1EAF34698);
  }

  return 1;
}

uint64_t sub_197587A7C(uint64_t a1)
{
  OUTLINED_FUNCTION_15_7(OBJC_IVAR____TtC10TipKitCore7CoreTip__firstEligible);
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34990, &qword_19761B1D0) + 28);
  sub_19755C7C8(v1 + v3, &qword_1EAF34988, &qword_197620CA0);
  sub_19758110C(a1, v1 + v3);
  os_unfair_lock_unlock(v1);
  return sub_19755C7C8(a1, &qword_1EAF34988, &qword_197620CA0);
}

uint64_t Sequence.mapEnumerated<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, char *a4, uint64_t a5)
{
  v10 = sub_197616C50();
  v11 = OUTLINED_FUNCTION_0(v10);
  v13 = v12;
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v17 = &v23[-v16];
  MEMORY[0x19A8E2B20](a3, a5);
  v24 = a3;
  v25 = a4;
  v26 = a5;
  v27 = a1;
  v28 = a2;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34C80, &qword_19761BF20);
  WitnessTable = swift_getWitnessTable();
  v20 = sub_197585E28(sub_197586494, v23, v10, a4, v18, WitnessTable, MEMORY[0x1E69E7288], &v29);
  (*(v13 + 8))(v17, v10);
  return v20;
}

uint64_t sub_197587CBC(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 24))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 16);
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

unint64_t sub_197587CFC(uint64_t a1, uint64_t a2)
{
  v4 = ~(-1 << *(v2 + 32));
  for (i = a2 & v4; ((1 << i) & *(v2 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v4)
  {
    sub_19758669C(*(v2 + 48) + 40 * i, v8);
    v6 = MEMORY[0x19A8E3130](v8, a1);
    sub_197587DC0(v8);
    if (v6)
    {
      break;
    }
  }

  return i;
}

uint64_t sub_197587E14@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 16);
  v5 = sub_197615F20();
  v6 = v5;
  if (v4)
  {
    (*(*(v5 - 8) + 16))(a2, a1 + ((*(*(v5 - 8) + 80) + 32) & ~*(*(v5 - 8) + 80)), v5);
    v7 = 0;
  }

  else
  {
    v7 = 1;
  }

  return __swift_storeEnumTagSinglePayload(a2, v7, 1, v6);
}

uint64_t sub_197587EBC(uint64_t a1, int64_t a2, char a3)
{
  result = sub_1975D27BC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_197587EDC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF35688, &qword_197622798);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v18[-v8];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF35690, &qword_1976227A0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v18[-v13];
  v19 = a1;
  v20 = a2;
  v21 = a3;
  v22 = sub_197615FA0();
  sub_197615AE0();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF35698, &qword_1976227A8);
  __swift_storeEnumTagSinglePayload(v9, 0, 1, v15);
  sub_197589034();
  sub_197615EA0();
  v16 = sub_197615C30();
  (*(v11 + 8))(v14, v10);
  return v16;
}

uint64_t sub_1975880BC(uint64_t a1)
{
  v2 = -1 << *(a1 + 32);
  result = sub_197616960();
  v4 = *(a1 + 36);
  return result;
}

uint64_t sub_1975880FC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v81 = a3;
  v82 = a4;
  v66 = a2;
  v87 = a5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF356A0, &qword_1976227B0);
  v7 = *(v6 - 8);
  v85 = v6;
  v86 = v7;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v84 = v61 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF356A8, &qword_1976227B8);
  v11 = *(v10 - 8);
  v88 = v10;
  v89 = v11;
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v83 = v61 - v13;
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34BB0, &qword_19761BAD0);
  v79 = *(v77 - 8);
  v14 = *(v79 + 64);
  MEMORY[0x1EEE9AC00](v77);
  v73 = v61 - v15;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF356B0, &qword_1976227C0);
  v92 = *(v74 - 8);
  v16 = *(v92 + 64);
  MEMORY[0x1EEE9AC00](v74);
  v69 = v61 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF356B8, &qword_1976227C8);
  v19 = *(v18 - 8);
  v75 = v18;
  v76 = v19;
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v72 = v61 - v21;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF356C0, &qword_1976227D0);
  v68 = *(v67 - 8);
  v22 = *(v68 + 64);
  MEMORY[0x1EEE9AC00](v67);
  v24 = v61 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF356C8, &qword_1976227D8);
  v26 = *(v25 - 8);
  v27 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](v25);
  v29 = v61 - v28;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF356D0, &qword_1976227E0);
  v65 = *(v64 - 8);
  v30 = *(v65 + 64);
  MEMORY[0x1EEE9AC00](v64);
  v32 = v61 - v31;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF356D8, &qword_1976227E8);
  v71 = *(v70 - 8);
  v33 = *(v71 + 64);
  MEMORY[0x1EEE9AC00](v70);
  v63 = v61 - v34;
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF356E0, &qword_1976227F0);
  v80 = *(v78 - 8);
  v35 = *(v80 + 64);
  MEMORY[0x1EEE9AC00](v78);
  v90 = *a1;
  v91 = v61 - v36;
  v37 = sub_197559AAC(&qword_1ED816BA8, &qword_1EAF356C8, &qword_1976227D8);
  sub_197615820();
  swift_getKeyPath();
  sub_197615700();

  v38 = *(v26 + 8);
  v38(v29, v25);
  v62 = v38;
  v61[3] = v26 + 8;
  v93 = v66;
  sub_197615810();
  v66 = MEMORY[0x1E6968D58];
  sub_197559AAC(&qword_1ED816BD8, &qword_1EAF356D0, &qword_1976227E0);
  v61[1] = MEMORY[0x1E6968D20];
  sub_197559AAC(&qword_1ED816C08, &qword_1EAF356C0, &qword_1976227D0);
  v39 = v64;
  v40 = v67;
  sub_1976156F0();
  (*(v68 + 8))(v24, v40);
  (*(v65 + 8))(v32, v39);
  v61[2] = v37;
  sub_197615820();
  swift_getKeyPath();
  v41 = v69;
  sub_197615700();

  v38(v29, v25);
  v93 = v81;
  v94 = v82;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34400, &qword_1976185C0);
  v42 = v73;
  sub_197615810();
  v81 = sub_197559AAC(&qword_1ED816BE8, &qword_1EAF356B0, &qword_1976227C0);
  sub_197559AAC(&qword_1ED816CF0, &qword_1EAF34BB0, &qword_19761BAD0);
  v68 = sub_19757B748(&qword_1ED816C68);
  v43 = v72;
  v44 = v41;
  v45 = v74;
  v46 = v77;
  sub_197615730();
  (*(v79 + 8))(v42, v46);
  v47 = *(v92 + 8);
  v92 += 8;
  v47(v44, v45);
  sub_197559AAC(&qword_1ED816C18, &qword_1EAF356D8, &qword_1976227E8);
  v82 = MEMORY[0x1E6968D90];
  sub_197559AAC(&qword_1ED816BB8, &qword_1EAF356B8, &qword_1976227C8);
  v48 = v63;
  v49 = v43;
  v50 = v70;
  v51 = v75;
  sub_197615780();
  (*(v76 + 8))(v49, v51);
  (*(v71 + 8))(v48, v50);
  sub_197615820();
  swift_getKeyPath();
  sub_197615700();

  v62(v29, v25);
  v52 = v84;
  sub_197615770();
  sub_197559AAC(&qword_1ED816C48, &qword_1EAF356A0, &qword_1976227B0);
  v53 = v83;
  v54 = v85;
  sub_197615730();
  (*(v86 + 8))(v52, v54);
  v47(v44, v45);
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF356E8, &qword_197622858);
  v56 = v87;
  v87[3] = v55;
  v56[4] = sub_197607A64();
  __swift_allocate_boxed_opaque_existential_0(v56);
  sub_197559AAC(&qword_1ED816C38, &qword_1EAF356E0, &qword_1976227F0);
  sub_197559AAC(&qword_1ED816BC8, &qword_1EAF356A8, &qword_1976227B8);
  v57 = v91;
  v58 = v78;
  v59 = v88;
  sub_197615780();
  (*(v89 + 8))(v53, v59);
  return (*(v80 + 8))(v57, v58);
}

uint64_t sub_197588CB4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_197615F70();
  *a1 = result;
  return result;
}

uint64_t sub_197588CE0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_197615F80();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_197588D18()
{
  result = qword_1ED816C40;
  if (!qword_1ED816C40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF356E0, &qword_1976227F0);
    sub_1975870F8();
    sub_197588EC0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED816C40);
  }

  return result;
}

uint64_t sub_197588DA4(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    sub_197559AAC(&qword_1ED816BB0, &qword_1EAF356C8, &qword_1976227D8);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_197588E3C()
{
  result = qword_1ED816C10;
  if (!qword_1ED816C10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF356C0, &qword_1976227D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED816C10);
  }

  return result;
}

unint64_t sub_197588EC0()
{
  result = qword_1ED816BC0;
  if (!qword_1ED816BC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF356B8, &qword_1976227C8);
    sub_197588DA4(&qword_1ED816BF0, &qword_1EAF356B0, &qword_1976227C0);
    sub_19757B7B4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED816BC0);
  }

  return result;
}

unint64_t sub_197588F64()
{
  result = qword_1ED816BD0;
  if (!qword_1ED816BD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF356A8, &qword_1976227B8);
    sub_197588DA4(&qword_1ED816BF0, &qword_1EAF356B0, &qword_1976227C0);
    sub_197559AAC(&qword_1ED816C50, &qword_1EAF356A0, &qword_1976227B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED816BD0);
  }

  return result;
}

unint64_t sub_197589034()
{
  result = qword_1ED816B70;
  if (!qword_1ED816B70)
  {
    sub_197615FA0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED816B70);
  }

  return result;
}

uint64_t sub_19758908C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v18 = *MEMORY[0x1E69E9840];
  sub_1975674F0(a1, &v15);
  if (!v16)
  {
    result = sub_19755643C(&v15);
LABEL_11:
    *a2 = 0u;
    *(a2 + 16) = 0u;
    goto LABEL_12;
  }

  sub_19756A94C(&v15, v17);
  sub_1975586C0(v17, &v15);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34D08, &qword_19761ECE0);
  if (!swift_dynamicCast())
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF345E8, &qword_197619050);
    sub_1976160B0();
  }

  v4 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF345E8, &qword_197619050);
  v5 = sub_1976160A0();

  *&v15 = 0;
  v6 = [v4 archivedDataWithRootObject:v5 requiringSecureCoding:1 error:&v15];

  v7 = v15;
  if (!v6)
  {
    v11 = v7;
    v12 = sub_197615830();

    swift_willThrow();
    if (qword_1ED816C98 != -1)
    {
      OUTLINED_FUNCTION_5_0();
    }

    v13 = type metadata accessor for logger();
    __swift_project_value_buffer(v13, qword_1ED816CA0);
    *&v15 = 0;
    *(&v15 + 1) = 0xE000000000000000;
    sub_197616A20();
    MEMORY[0x19A8E2A50](0xD000000000000032, 0x8000000197626950);
    swift_getErrorValue();
    sub_197616EB0();
    sub_197558864();

    result = __swift_destroy_boxed_opaque_existential_0Tm(v17);
    goto LABEL_11;
  }

  v8 = sub_1976159A0();
  v10 = v9;

  *(a2 + 24) = MEMORY[0x1E6969080];
  *a2 = v8;
  *(a2 + 8) = v10;
  result = __swift_destroy_boxed_opaque_existential_0Tm(v17);
LABEL_12:
  v14 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_197589344(uint64_t a1)
{
  result = MEMORY[0x19A8E2E80](*(a1 + 16), MEMORY[0x1E69E6158], MEMORY[0x1E69E6168]);
  v3 = 0;
  v9 = result;
  v4 = *(a1 + 16);
  for (i = (a1 + 40); ; i += 2)
  {
    if (v4 == v3)
    {

      return v9;
    }

    if (v3 >= *(a1 + 16))
    {
      break;
    }

    ++v3;
    v7 = *(i - 1);
    v6 = *i;

    sub_197575220(&v8, v7, v6);
  }

  __break(1u);
  return result;
}

uint64_t sub_197589404(uint64_t a1, char a2, uint64_t a3)
{
  v8 = sub_1975749A0();
  v14 = a1;
  v15 = a2;
  v11 = v3;
  v12 = a3;
  sub_1975894C8(sub_19758E2D0, v13, sub_1975EAFB0, &v10, v8);

  if (!v4)
  {
    result = sub_197615C20();
    if (result)
    {
      return sub_197615C70();
    }
  }

  return result;
}

uint64_t sub_1975894C8(uint64_t (*a1)(uint64_t *), uint64_t a2, void (*a3)(uint64_t *), uint64_t a4, uint64_t a5)
{
  result = sub_197567E4C(a5);
  v9 = result;
  for (i = 0; v9 != i; ++i)
  {
    if ((a5 & 0xC000000000000001) != 0)
    {
      result = MEMORY[0x19A8E31E0](i, a5);
      v11 = result;
    }

    else
    {
      if (i >= *((a5 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_15;
      }

      v11 = *(a5 + 8 * i + 32);
    }

    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_15:
      __break(1u);
      return result;
    }

    v14 = v11;
    v12 = a1(&v14);
    if (v5)
    {
    }

    if (v12)
    {
      a3(&v14);
    }
  }

  return result;
}

char *sub_1975895DC(uint64_t a1)
{
  v2 = v1;
  v106 = *v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF35390, &qword_1976214A8);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x1EEE9AC00](v4 - 8);
  v104 = &v92 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v105 = &v92 - v8;
  v9 = type metadata accessor for DeviceProfile.ProfileContent();
  v10 = *(*(v9 - 1) + 64);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v102 = &v92 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = &v92 - v14;
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v92 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34610, &qword_197621E30);
  v19 = *(*(v18 - 8) + 64);
  v20 = MEMORY[0x1EEE9AC00](v18 - 8);
  v103 = &v92 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v23 = &v92 - v22;
  v24 = sub_197615970();
  v25 = *(v24 - 8);
  v26 = *(v25 + 64);
  v27 = MEMORY[0x1EEE9AC00](v24);
  v29 = &v92 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v31 = &v92 - v30;
  if (qword_1ED8174E0 != -1)
  {
    swift_once();
  }

  if (byte_1ED8174EA != 1)
  {
    v32 = a1;
    goto LABEL_7;
  }

  sub_19755F9FC(a1, v23, &qword_1EAF34610, &qword_197621E30);
  if (__swift_getEnumTagSinglePayload(v23, 1, v24) != 1)
  {
    v100 = v17;
    (*(v25 + 32))(v31, v23, v24);
    if (qword_1ED816E70 != -1)
    {
      swift_once();
    }

    v101 = v31;
    if ((byte_1ED816549 & 1) == 0)
    {
      if (qword_1ED817510 != -1)
      {
        swift_once();
      }

      swift_beginAccess();
      if (qword_1ED817578)
      {
        v35 = qword_1ED817570;
        v36 = qword_1ED817578;
      }

      else
      {
        if (qword_1ED8174D8 != -1)
        {
          swift_once();
        }

        if (qword_1ED81D218)
        {
          v35 = qword_1ED81D210;
          v36 = qword_1ED81D218;
        }

        else
        {
          v99 = 0;
          type metadata accessor for CFBundle(0);
          v37 = sub_1975A5740();
          if (v38)
          {
            v35 = v37;
          }

          else
          {
            v35 = 0;
          }

          if (v38)
          {
            v36 = v38;
          }

          else
          {
            v36 = 0xE000000000000000;
          }
        }
      }

      if (v35 == 0x6C7070612E6D6F63 && v36 == 0xEF64737069742E65)
      {
        goto LABEL_34;
      }

      v40 = sub_197616EF0();

      v31 = v101;
      if (v40)
      {
        goto LABEL_35;
      }

      if (qword_1ED817578)
      {
        v41 = qword_1ED817570;
        v42 = qword_1ED817578;
      }

      else
      {
        if (qword_1ED8174D8 != -1)
        {
          swift_once();
        }

        if (qword_1ED81D218)
        {
          v41 = qword_1ED81D210;
          v42 = qword_1ED81D218;
        }

        else
        {
          v99 = 0;
          type metadata accessor for CFBundle(0);
          v81 = sub_1975A5740();
          if (v82)
          {
            v41 = v81;
            v42 = v82;
          }

          else
          {
            v41 = 0;
            v42 = 0xE000000000000000;
          }
        }
      }

      if (v41 == 0xD000000000000010 && 0x8000000197623CB0 == v42)
      {
LABEL_34:

        v31 = v101;
      }

      else
      {
        v91 = sub_197616EF0();

        v31 = v101;
        if ((v91 & 1) == 0)
        {
          sub_19755C7C8(a1, &qword_1EAF34610, &qword_197621E30);
          (*(v25 + 8))(v31, v24);
          goto LABEL_8;
        }
      }
    }

LABEL_35:
    v99 = a1;
    v106 = v25;
    v43 = *(v25 + 16);
    v43(&v2[OBJC_IVAR____TtC10TipKitCore13DeviceProfile_url], v31, v24);
    _s11FileHandlerCMa();
    v44 = swift_allocObject();
    swift_defaultActor_initialize();
    *(v44 + 112) = 0;
    *&v2[OBJC_IVAR____TtC10TipKitCore13DeviceProfile_fileHandler] = v44;
    v98 = v43;
    v43(v29, v31, v24);
    v45 = v9[6];
    v46 = sub_197615A60();
    v96 = v45;
    __swift_storeEnumTagSinglePayload(&v15[v45], 1, 1, v46);
    v47 = &v15[v9[7]];
    *v47 = 0;
    *(v47 + 1) = 0;
    v94 = v9[8];
    v93 = v46;
    __swift_storeEnumTagSinglePayload(&v15[v94], 1, 1, v46);
    v48 = v9[9];
    v49 = _s12DisplayEventVMa();
    v97 = v48;
    v92 = v49;
    __swift_storeEnumTagSinglePayload(&v15[v48], 1, 1, v49);
    v15[v9[10]] = 3;
    v50 = v9[11];
    v95 = sub_1976160B0();
    *&v15[v50] = v95;
    v51 = v9[12];
    *&v15[v51] = sub_1976160B0();
    v52 = objc_opt_self();
    v53 = [v52 defaultManager];
    LOBYTE(v45) = sub_19755F398();

    if (v45)
    {
      v54 = v103;
      v98(v103, v29, v24);
      __swift_storeEnumTagSinglePayload(v54, 0, 1, v24);
      v55 = v104;
      sub_19758B004(v54, 1, 0);
      v98 = *(v106 + 8);
      (v98)(v29, v24);
      sub_19755C7C8(v54, &qword_1EAF34610, &qword_197621E30);
      if (__swift_getEnumTagSinglePayload(v55, 1, v9) != 1)
      {
        v57 = v24;
        v58 = v52;
        v59 = v102;
        sub_1975ED1BC(v55, v102, type metadata accessor for DeviceProfile.ProfileContent);
        sub_19755C7C8(&v15[v96], &qword_1EAF34988, &qword_197620CA0);
        sub_19755C7C8(&v15[v94], &qword_1EAF34988, &qword_197620CA0);
        sub_19755C7C8(&v15[v97], &qword_1EAF35260, &qword_1976202C8);

        v60 = v59;
        v52 = v58;
        v24 = v57;
        sub_1975ED1BC(v60, v15, type metadata accessor for DeviceProfile.ProfileContent);
        v56 = v105;
        sub_19758C664(v15, v105);
        __swift_storeEnumTagSinglePayload(v56, 0, 1, v9);
        sub_19758CA58(v15, type metadata accessor for DeviceProfile.ProfileContent);
LABEL_41:
        v61 = v100;
        if (__swift_getEnumTagSinglePayload(v56, 1, v9) == 1)
        {
          v62 = v93;
          __swift_storeEnumTagSinglePayload(v61 + v9[6], 1, 1, v93);
          v63 = (v61 + v9[7]);
          *v63 = 0;
          v63[1] = 0;
          __swift_storeEnumTagSinglePayload(v61 + v9[8], 1, 1, v62);
          __swift_storeEnumTagSinglePayload(v61 + v9[9], 1, 1, v92);
          v64 = v52;
          v65 = v9[10];
          v66 = v9[11];
          *(v100 + v66) = sub_1976160B0();
          v67 = v9[12];
          v61 = v100;
          *(v61 + v67) = sub_1976160B0();
          *v61 = 0;
          *(v61 + v65) = 0;
          v52 = v64;
        }

        else
        {
          sub_1975ED1BC(v56, v61, type metadata accessor for DeviceProfile.ProfileContent);
        }

        sub_1975ED1BC(v61, &v2[OBJC_IVAR____TtC10TipKitCore13DeviceProfile_content], type metadata accessor for DeviceProfile.ProfileContent);
        v68 = [v52 defaultManager];
        v69 = sub_19755F398();

        if ((v69 & 1) == 0)
        {
          if (qword_1ED816C98 != -1)
          {
            swift_once();
          }

          v70 = type metadata accessor for logger();
          __swift_project_value_buffer(v70, qword_1ED816CA0);
          sub_197558864();
          sub_1975EC338();
        }

        if (qword_1ED817510 != -1)
        {
          swift_once();
        }

        swift_beginAccess();
        if (qword_1ED817578)
        {
          v71 = qword_1ED817570;
          v72 = qword_1ED817578;
        }

        else
        {
          if (qword_1ED8174D8 != -1)
          {
            swift_once();
          }

          if (qword_1ED81D218)
          {
            v71 = qword_1ED81D210;
            v72 = qword_1ED81D218;
          }

          else
          {
            type metadata accessor for CFBundle(0);
            v73 = sub_1975A5740();
            if (v74)
            {
              v71 = v73;
              v72 = v74;
            }

            else
            {
              v71 = 0;
              v72 = 0xE000000000000000;
            }
          }
        }

        if (v71 != 0x6C7070612E6D6F63 || v72 != 0xEF64737069742E65)
        {
          v76 = sub_197616EF0();

          if (v76)
          {
LABEL_90:
            sub_19755C7C8(v99, &qword_1EAF34610, &qword_197621E30);
            (v98)(v101, v24);
            return v2;
          }

          if (qword_1ED817578)
          {
            v77 = qword_1ED817570;
            v78 = qword_1ED817578;
          }

          else
          {
            if (qword_1ED8174D8 != -1)
            {
              swift_once();
            }

            if (qword_1ED81D218)
            {
              v77 = qword_1ED81D210;
              v78 = qword_1ED81D218;
            }

            else
            {
              type metadata accessor for CFBundle(0);
              v79 = sub_1975A5740();
              if (v80)
              {
                v77 = v79;
                v78 = v80;
              }

              else
              {
                v77 = 0;
                v78 = 0xE000000000000000;
              }
            }
          }

          if (v77 != 0xD000000000000010 || 0x8000000197623CB0 != v78)
          {
            v84 = sub_197616EF0();

            if ((v84 & 1) == 0)
            {
              if (qword_1ED816C98 != -1)
              {
                swift_once();
              }

              v85 = type metadata accessor for logger();
              __swift_project_value_buffer(v85, qword_1ED816CA0);
              v107 = 0;
              v108 = 0xE000000000000000;
              sub_197616A20();

              v107 = 0xD000000000000028;
              v108 = 0x8000000197625A00;
              v86 = v101;
              v87 = sub_197615920();
              MEMORY[0x19A8E2A50](v87);

              sub_197558864();

              v88 = *&v2[OBJC_IVAR____TtC10TipKitCore13DeviceProfile_fileHandler];
              sub_19758CDB8(v86);
            }

            goto LABEL_90;
          }
        }

        goto LABEL_90;
      }

      sub_19755C7C8(v55, &qword_1EAF35390, &qword_1976214A8);
    }

    else
    {
      v98 = *(v106 + 8);
      (v98)(v29, v24);
    }

    sub_19755C7C8(&v15[v96], &qword_1EAF34988, &qword_197620CA0);
    sub_19755C7C8(&v15[v94], &qword_1EAF34988, &qword_197620CA0);
    sub_19755C7C8(&v15[v97], &qword_1EAF35260, &qword_1976202C8);

    v56 = v105;
    __swift_storeEnumTagSinglePayload(v105, 1, 1, v9);
    goto LABEL_41;
  }

  sub_19755C7C8(a1, &qword_1EAF34610, &qword_197621E30);
  v32 = v23;
LABEL_7:
  sub_19755C7C8(v32, &qword_1EAF34610, &qword_197621E30);
LABEL_8:
  v33 = *(*v2 + 48);
  v34 = *(*v2 + 52);
  swift_deallocPartialClassInstance();
  return 0;
}

uint64_t sub_19758A52C@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_197615880();
  v3 = OUTLINED_FUNCTION_0(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_6_0();
  v10 = v9 - v8;
  v11 = sub_197615970();
  v12 = OUTLINED_FUNCTION_0(v11);
  v14 = v13;
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_6_0();
  v19 = v18 - v17;
  if (qword_1ED8174E0 != -1)
  {
    OUTLINED_FUNCTION_0_5();
  }

  if (byte_1ED8174EA == 1)
  {
    v20 = [objc_opt_self() defaultManager];
    URL.init(groupIdentifier:fileManager:)(0xD000000000000018, 0x8000000197623C40, v20);
    (*(v5 + 104))(v10, *MEMORY[0x1E6968F68], v2);
    sub_1975607A8();
    sub_197615950();
    (*(v5 + 8))(v10, v2);
    (*(v14 + 8))(v19, v11);
    return __swift_storeEnumTagSinglePayload(a1, 0, 1, v11);
  }

  else
  {

    return __swift_storeEnumTagSinglePayload(a1, 1, 1, v11);
  }
}

char *sub_19758A864()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34610, &qword_197621E30);
  OUTLINED_FUNCTION_5_2(v1);
  v3 = *(v2 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_8_9();
  sub_19758A52C(v0);
  v5 = type metadata accessor for DeviceProfile();
  v6 = *(v5 + 48);
  v7 = *(v5 + 52);
  swift_allocObject();
  result = sub_1975895DC(v0);
  qword_1ED81D1D0 = result;
  return result;
}

void sub_19758A8F0(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_197616860();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_19758A944()
{
  sub_19758A8F0(319, &qword_1ED816D88, MEMORY[0x1E6969530]);
  v1 = v0;
  if (v2 <= 0x3F)
  {
    sub_19758AEF0(319, &qword_1ED816C78);
    if (v4 > 0x3F)
    {
      return v3;
    }

    else
    {
      sub_19758A8F0(319, &qword_1ED816D48, _s12DisplayEventVMa);
      v1 = v5;
      if (v6 <= 0x3F)
      {
        sub_19758AEF0(319, &qword_1ED816848);
        v1 = v7;
        if (v8 <= 0x3F)
        {
          sub_19758AE98(319, &qword_1ED816808);
          v1 = v9;
          if (v10 <= 0x3F)
          {
            sub_19758AE98(319, &qword_1ED816720);
            v1 = v11;
            if (v12 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
              return 0;
            }
          }
        }
      }
    }
  }

  return v1;
}

uint64_t sub_19758AADC()
{
  result = sub_197615970();
  if (v1 <= 0x3F)
  {
    v3 = *(result - 8) + 64;
    result = type metadata accessor for DeviceProfile.ProfileContent();
    if (v2 <= 0x3F)
    {
      v4 = *(result - 8) + 64;
      result = swift_updateClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

void sub_19758ABB4()
{
  OUTLINED_FUNCTION_5_22();
  CoreTipRecord.status.getter();
  OUTLINED_FUNCTION_10_18();
  if (!v0)
  {
    if (qword_1ED816850 != -1)
    {
      swift_once();
    }

    if (qword_1ED81D1D0)
    {
      CoreTipRecord.id.getter();
      v1 = sub_19758D0A4();

      if (v1)
      {
        if (qword_1ED816C98 != -1)
        {
          OUTLINED_FUNCTION_5_0();
        }

        v2 = type metadata accessor for logger();
        __swift_project_value_buffer(v2, qword_1ED816CA0);
        OUTLINED_FUNCTION_2_30();
        sub_197616A20();

        OUTLINED_FUNCTION_1_36();
        MEMORY[0x19A8E2A50]();

        OUTLINED_FUNCTION_13_12();
        MEMORY[0x19A8E2A50](0xD000000000000021);
        OUTLINED_FUNCTION_6_17();
        sub_197558864();

        OUTLINED_FUNCTION_3_30();
        sub_1975E92FC(v3);
      }
    }
  }
}

void URL.init(groupIdentifier:fileManager:)(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = sub_1976161B0();
  v7 = [a3 containerURLForSecurityApplicationGroupIdentifier_];

  if (v7)
  {

    sub_197615910();
  }

  else
  {
    sub_197616A20();

    MEMORY[0x19A8E2A50](a1, a2);

    sub_19759228C();
    swift_allocError();
    *v8 = 0xD000000000000021;
    v8[1] = 0x8000000197626B20;
    swift_willThrow();
  }
}

uint64_t type metadata accessor for DeviceProfile.ProfileContent()
{
  result = qword_1ED816908;
  if (!qword_1ED816908)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_19758AE98(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_197616110();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

void sub_19758AEF0(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_197616860();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

uint64_t type metadata accessor for DeviceProfile()
{
  result = qword_1ED816838;
  if (!qword_1ED816838)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_19758AF88()
{
  result = sub_197615A60();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_19758B4F8(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, void *a4@<X8>)
{
  v5 = v4;
  v30[1] = *MEMORY[0x1E69E9840];
  v30[0] = 0;
  v29 = xmmword_19761D220;
  v10 = sub_1976158C0();
  v11 = swift_allocObject();
  v11[2] = &v29;
  v11[3] = a2;
  v11[4] = a3;
  v11[5] = v30;
  v12 = swift_allocObject();
  *(v12 + 16) = sub_19758BE54;
  *(v12 + 24) = v11;
  v27 = sub_19758BE88;
  v28 = v12;
  v23 = MEMORY[0x1E69E9820];
  v24 = 1107296256;
  v25 = sub_19758BD70;
  v26 = &block_descriptor;
  v13 = _Block_copy(&v23);

  v23 = 0;
  [v5 coordinateReadingItemAtURL:v10 options:a1 error:&v23 byAccessor:v13];
  _Block_release(v13);

  v14 = v23;
  LOBYTE(v10) = swift_isEscapingClosureAtFileLocation();

  if (v10)
  {
    __break(1u);
  }

  if (!v14)
  {
    if (v30[0])
    {
      v15 = v30[0];
    }

    else
    {
      v16 = *(&v29 + 1);
      if (*(&v29 + 1) >> 60 != 15)
      {
        v22 = v29;
        *a4 = v29;
        a4[1] = v16;
        sub_1975766B8(v22, v16);
        sub_197576558(v22, v16);

        goto LABEL_8;
      }

      v23 = 0;
      v24 = 0xE000000000000000;
      sub_197616A20();
      MEMORY[0x19A8E2A50](0xD000000000000031, 0x8000000197625A60);
      v17 = sub_1976158A0();
      MEMORY[0x19A8E2A50](v17);

      v18 = v23;
      v19 = v24;
      sub_19759228C();
      swift_allocError();
      *v20 = v18;
      v20[1] = v19;
    }
  }

  swift_willThrow();
  sub_197576558(v29, *(&v29 + 1));

LABEL_8:
  v21 = *MEMORY[0x1E69E9840];
}

void *sub_19758B804()
{
  v1 = v0;
  v2 = *v0;
  v0[3] = 0;
  if (sub_19758D65C())
  {
    sub_19758DA40();
    v3 = sub_19758DA88(0x6C7070612E6D6F63, 0xEF64737069742E65, 0);
    v0[2] = v3;
    [v3 synchronize];
    if (qword_1ED816C98 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for logger();
    __swift_project_value_buffer(v4, qword_1ED816CA0);
    sub_197558864();
  }

  else
  {
    v5 = v0[3];

    swift_deallocPartialClassInstance();
    return 0;
  }

  return v1;
}

void sub_19758B928()
{
  OUTLINED_FUNCTION_5_22();
  CoreTipRecord.status.getter();
  OUTLINED_FUNCTION_10_18();
  if (!v1 && !sub_1975785C8(v0) && (sub_1975879D8(0) & 1) != 0)
  {
    if (qword_1ED816B18 != -1)
    {
      swift_once();
    }

    if (qword_1ED81D1C0)
    {
      CoreTipRecord.id.getter();
      v4 = sub_19758BA90(v2, v3);

      if (v4)
      {
        if (qword_1ED816C98 != -1)
        {
          OUTLINED_FUNCTION_5_0();
        }

        v5 = type metadata accessor for logger();
        __swift_project_value_buffer(v5, qword_1ED816CA0);
        OUTLINED_FUNCTION_2_30();
        sub_197616A20();

        OUTLINED_FUNCTION_1_36();
        MEMORY[0x19A8E2A50]();

        OUTLINED_FUNCTION_13_12();
        MEMORY[0x19A8E2A50](0xD000000000000026);
        OUTLINED_FUNCTION_6_17();
        sub_197558864();

        OUTLINED_FUNCTION_3_30();
        sub_1975E92FC(v6);
      }
    }
  }
}

BOOL sub_19758BA90(uint64_t a1, uint64_t a2)
{
  if (qword_1ED817510 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  if (byte_1ED817569 == 1)
  {
    sub_19758BB78();
    v4 = OUTLINED_FUNCTION_0_54();
    v7 = sub_19757F524(v4, v5, v6);

    if (v7)
    {
      sub_1976139C4();
    }
  }

  v8 = sub_19758BB78();
  v9 = sub_19757F524(a1, a2, v8);

  return v9;
}

uint64_t sub_19758BB78()
{
  if (*(v0 + 24))
  {
    v1 = *(v0 + 24);
  }

  else
  {
    v2 = *(v0 + 16);
    if (!v2 || (v3 = sub_1976161B0(), v4 = [v2 arrayForKey_], v3, !v4) || (v5 = sub_197616460(), v4, v6 = sub_197553BF8(v5), , !v6))
    {

      v6 = MEMORY[0x1E69E7CC0];
    }

    v1 = sub_197589344(v6);
    v7 = *(v0 + 24);
    *(v0 + 24) = v1;
  }

  return v1;
}

uint64_t sub_19758BC6C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34988, &qword_197620CA0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_19758BCD4()
{
  result = sub_1976160B0();
  dword_1ED816B38 = 0;
  qword_1ED816B40 = result;
  return result;
}

unint64_t sub_19758BD1C()
{
  result = qword_1ED816650;
  if (!qword_1ED816650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED816650);
  }

  return result;
}

uint64_t sub_19758BD70(uint64_t a1)
{
  v2 = sub_197615970();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);
  sub_197615910();
  v8(v6);
  return (*(v3 + 8))(v6, v2);
}

uint64_t sub_19758BE54(uint64_t a1)
{
  v2 = *(v1 + 32);
  v3 = *(v1 + 40);
  return sub_197584E4C(a1, *(v1 + 16), *(v1 + 24));
}

uint64_t sub_19758BE90()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

unint64_t sub_19758BEBC()
{
  result = qword_1ED816658;
  if (!qword_1ED816658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED816658);
  }

  return result;
}

unint64_t sub_19758BF10()
{
  result = qword_1ED816660;
  if (!qword_1ED816660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED816660);
  }

  return result;
}

unint64_t sub_19758BF64()
{
  result = qword_1ED816568;
  if (!qword_1ED816568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED816568);
  }

  return result;
}

unint64_t sub_19758BFC0(char a1)
{
  result = 0x656D697265707865;
  switch(a1)
  {
    case 1:
      result = 3487349;
      break;
    case 2:
      result = 0xD000000000000018;
      break;
    case 3:
      result = 0xD00000000000001ALL;
      break;
    case 4:
      result = 0xD00000000000001CLL;
      break;
    case 5:
      result = 0xD000000000000010;
      break;
    case 6:
      result = 0x6570795472657375;
      break;
    case 7:
      result = 0xD000000000000012;
      break;
    case 8:
      result = 0x626967696C656E69;
      break;
    default:
      return result;
  }

  return result;
}

_BYTE *_s14ProfileContentV10CodingKeysOwst(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 8 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 8) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF8)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF7)
  {
    v6 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
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
        JUMPOUT(0x19758C1E4);
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
          *result = a2 + 8;
        }

        break;
    }
  }

  return result;
}

uint64_t _s14ProfileContentV10CodingKeysOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF8)
  {
    if (a2 + 8 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 8) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 9;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 9;
  v5 = v6 - 9;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

unint64_t sub_19758C2F4()
{
  result = qword_1ED816570;
  if (!qword_1ED816570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED816570);
  }

  return result;
}

unint64_t sub_19758C34C@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_19758C378(*a1);
  *a2 = result;
  return result;
}

unint64_t sub_19758C378(unint64_t result)
{
  if (result >= 3)
  {
    return 3;
  }

  return result;
}

uint64_t sub_19758C390(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = OUTLINED_FUNCTION_28_6(a1, a2, a3, a4);
  OUTLINED_FUNCTION_13(v6);
  (*(v7 + 40))(v4, v5);
  return v4;
}

unint64_t sub_19758C3E0()
{
  result = qword_1ED816558;
  if (!qword_1ED816558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED816558);
  }

  return result;
}

unint64_t sub_19758C494()
{
  result = qword_1ED816560;
  if (!qword_1ED816560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED816560);
  }

  return result;
}

_BYTE *sub_19758C4F0(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x19758C5BCLL);
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

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

unint64_t sub_19758C610()
{
  result = qword_1ED816240;
  if (!qword_1ED816240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED816240);
  }

  return result;
}

uint64_t sub_19758C664(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DeviceProfile.ProfileContent();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_19758C6C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v13 = sub_1975737F0(a1, a2, a3, a7, a8, a9);
  if (!v13)
  {
    goto LABEL_7;
  }

  v14 = v13;
  sub_19755A560(a4, v22);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF35068, &qword_19761ED00);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF35098, &qword_19761EFB8);
  if ((swift_dynamicCast() & 1) == 0)
  {

    v21 = 0;
    memset(v20, 0, sizeof(v20));
    sub_19755C404(v20, &qword_1EAF350A0, &qword_19761EFC0);
LABEL_7:
    v23 = 0;
    v24 = 0xE000000000000000;
    sub_197616A20();

    v23 = 0xD00000000000002BLL;
    v24 = 0x8000000197624AB0;
    v16 = (*(a9 + 24))(a8, a9);
    MEMORY[0x19A8E2A50](v16);

    MEMORY[0x19A8E2A50](41, 0xE100000000000000);
    v14 = v23;
    v17 = v24;
    sub_19759228C();
    swift_allocError();
    *v18 = v14;
    v18[1] = v17;
    swift_willThrow();
    return v14;
  }

  sub_1975558C4(v20, &v23);
  CoreRuleRecord.update(tip:parent:)(a5, a6);
  swift_getKeyPath();
  (*(a9 + 32))(v22, a8, a9);
  sub_197574C4C();

  swift_getKeyPath();
  (*(a9 + 56))(v22, a8, a9);
  sub_197574C4C();

  __swift_project_boxed_opaque_existential_1Tm(&v23, v25);
  type metadata accessor for CoreEventRecord();
  v15 = v26;
  sub_19758E36C();
  if (v15)
  {
  }

  else
  {
    sub_197592184();
  }

  __swift_destroy_boxed_opaque_existential_0Tm(&v23);
  return v14;
}

uint64_t sub_19758C9B0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = sub_197573DA8(a1);
  *a2 = result & 1;
  return result;
}

uint64_t sub_19758CA08()
{
  v1 = OUTLINED_FUNCTION_24_6();
  v3 = v2(v1);
  OUTLINED_FUNCTION_7_5(v3);
  (*(v4 + 8))(v0);
  return v0;
}

uint64_t sub_19758CA58(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_13(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_19758CAC4(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34988, &qword_197620CA0);
  v9 = OUTLINED_FUNCTION_31_2(v8);
  if (*(v10 + 84) == a3)
  {
    v11 = v9;
    v12 = a4[6];
  }

  else
  {
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF35260, &qword_1976202C8);
    result = OUTLINED_FUNCTION_31_2(v13);
    if (*(v15 + 84) != a3)
    {
      *(a1 + a4[11]) = (a2 - 1);
      return result;
    }

    v11 = result;
    v12 = a4[9];
  }

  return __swift_storeEnumTagSinglePayload(a1 + v12, a2, a2, v11);
}

uint64_t sub_19758CBD8(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34988, &qword_197620CA0);
  v7 = OUTLINED_FUNCTION_31_2(v6);
  if (*(v8 + 84) == a2)
  {
    v9 = v7;
    v10 = a3[6];
LABEL_5:

    return __swift_getEnumTagSinglePayload(a1 + v10, a2, v9);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF35260, &qword_1976202C8);
  v12 = OUTLINED_FUNCTION_31_2(v11);
  if (*(v13 + 84) == a2)
  {
    v9 = v12;
    v10 = a3[9];
    goto LABEL_5;
  }

  v15 = *(a1 + a3[11]);
  if (v15 >= 0xFFFFFFFF)
  {
    LODWORD(v15) = -1;
  }

  return (v15 + 1);
}

uint64_t sub_19758CCDC()
{
  v0 = type metadata accessor for logger();
  __swift_allocate_value_buffer(v0, qword_1ED816CA0);
  *OUTLINED_FUNCTION_13_18() = 7;
  if (qword_1ED817298 != -1)
  {
    OUTLINED_FUNCTION_0_6();
  }

  if (byte_1ED8172A4)
  {
    OUTLINED_FUNCTION_17_14();
  }

  v1 = qword_1ED816CA0 + *(v0 + 20);
  return sub_197615BA0();
}

uint64_t sub_19758CDB8(uint64_t a1)
{
  v3 = sub_197615970();
  v4 = OUTLINED_FUNCTION_0(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF35140, &qword_197621F80);
  v10 = OUTLINED_FUNCTION_5_2(v9);
  v12 = *(v11 + 64);
  result = MEMORY[0x1EEE9AC00](v10);
  v15 = &v26 - v14;
  if (!*(v1 + 112))
  {
    sub_1976165B0();
    OUTLINED_FUNCTION_36();
    __swift_storeEnumTagSinglePayload(v16, v17, v18, v19);
    v20 = swift_allocObject();
    swift_weakInit();
    (*(v6 + 16))(&v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
    v21 = (*(v6 + 80) + 40) & ~*(v6 + 80);
    v22 = swift_allocObject();
    *(v22 + 2) = 0;
    *(v22 + 3) = 0;
    *(v22 + 4) = v20;
    (*(v6 + 32))(&v22[v21], &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v3);
    sub_1975FB620(0, 0, v15, &unk_197621528, v22);
    v24 = v23;
    sub_19755C404(v15, &qword_1EAF35140, &qword_197621F80);
    v25 = *(v1 + 112);
    *(v1 + 112) = v24;
  }

  return result;
}

uint64_t sub_19758CFAC()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_19758CFE4()
{
  v1 = sub_197615970();
  OUTLINED_FUNCTION_0(v1);
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 40) & ~v4;
  v7 = *(v6 + 64);
  v8 = *(v0 + 16);
  swift_unknownObjectRelease();
  v9 = *(v0 + 32);

  (*(v3 + 8))(v0 + v5, v1);

  return MEMORY[0x1EEE6BDD0](v0, v5 + v7, v4 | 7);
}

uint64_t sub_19758D0A4()
{
  v1 = v0;
  if (qword_1ED817510 != -1)
  {
    OUTLINED_FUNCTION_1_0();
  }

  OUTLINED_FUNCTION_35();
  swift_beginAccess();
  if (byte_1ED817569 == 1)
  {
    v2 = v0 + OBJC_IVAR____TtC10TipKitCore13DeviceProfile_content;
    OUTLINED_FUNCTION_35();
    swift_beginAccess();
    if (*(*(v2 + *(type metadata accessor for DeviceProfile.ProfileContent() + 48)) + 16))
    {

      sub_19755C610();
      v4 = v3;

      if (v4)
      {
        sub_1975EC474();
      }
    }
  }

  v5 = v1 + OBJC_IVAR____TtC10TipKitCore13DeviceProfile_content;
  OUTLINED_FUNCTION_35();
  swift_beginAccess();
  if (*(*(v5 + *(type metadata accessor for DeviceProfile.ProfileContent() + 48)) + 16))
  {

    sub_19755C610();
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  return v7 & 1;
}

void CoreEventRecord.init(backingData:)()
{
  OUTLINED_FUNCTION_26_3();
  v2 = v1;
  v3 = *v0;
  v4 = sub_197615A60();
  v5 = OUTLINED_FUNCTION_0(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_6_0();
  v12 = v11 - v10;
  v0[6] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34CE0, &qword_19761C240);
  OUTLINED_FUNCTION_0_16();
  v15 = sub_1975611B4(v13, v14);
  v0[7] = OUTLINED_FUNCTION_15_3(v15);
  __swift_allocate_boxed_opaque_existential_0(v0 + 3);
  sub_197615DC0();
  sub_19758D4D8(0, 0xE000000000000000, v0 + 3);
  sub_197615A50();
  v16 = v0[7];
  __swift_project_boxed_opaque_existential_1Tm(v0 + 3, v0[6]);
  swift_getKeyPath();
  OUTLINED_FUNCTION_2_11();
  sub_1975611B4(v17, v18);
  sub_197615BE0();

  (*(v7 + 8))(v12, v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF345E8, &qword_197619050);
  v19 = sub_1976160B0();
  sub_19758D594(v19, v0 + 3);
  OUTLINED_FUNCTION_22_3();
  sub_1975C5AE0();
  OUTLINED_FUNCTION_22_3();
  sub_1975C5E2C();
  sub_197615B30();
  *(v0 + 8) = 0;
  OUTLINED_FUNCTION_43_0();
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 3);
  sub_1975558C4(v2, (v0 + 3));
  swift_endAccess();
  OUTLINED_FUNCTION_25_2();
}

uint64_t CoreEventRecord.__allocating_init(backingData:)()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();
  CoreEventRecord.init(backingData:)();
  return v3;
}

void *sub_19758D49C()
{
  type metadata accessor for TipsdUbiquitousStore();
  swift_allocObject();
  result = sub_19758B804();
  qword_1ED81D1C0 = result;
  return result;
}

uint64_t sub_19758D4D8(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a3[4];
  __swift_project_boxed_opaque_existential_1Tm(a3, a3[3]);
  swift_getKeyPath();
  sub_197615BE0();
}

uint64_t sub_19758D594(uint64_t a1, void *a2)
{
  v2 = a2[4];
  __swift_project_boxed_opaque_existential_1Tm(a2, a2[3]);
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34D08, &qword_19761ECE0);
  sub_197615BC0();
}

uint64_t sub_19758D630(uint64_t *a1)
{
  OUTLINED_FUNCTION_16_0(a1);
  result = sub_19758FA80();
  *v1 = result;
  return result;
}

BOOL sub_19758D65C()
{
  if (qword_1ED817510 != -1)
  {
    OUTLINED_FUNCTION_1_0();
  }

  swift_beginAccess();
  if (qword_1ED817578)
  {
    v0 = qword_1ED817570;
    v1 = qword_1ED817578;
  }

  else
  {
    if (qword_1ED8174D8 != -1)
    {
      OUTLINED_FUNCTION_4_3();
    }

    if (qword_1ED81D218)
    {
      v0 = qword_1ED81D210;
      v1 = qword_1ED81D218;
    }

    else
    {
      type metadata accessor for CFBundle(0);
      v2 = sub_1975A5740();
      if (v3)
      {
        v0 = v2;
      }

      else
      {
        v0 = 0;
      }

      if (v3)
      {
        v1 = v3;
      }

      else
      {
        v1 = 0xE000000000000000;
      }
    }
  }

  if (v0 == 0x6C7070612E6D6F63 && v1 == 0xEF64737069742E65)
  {

    return 1;
  }

  v5 = sub_197616EF0();

  if (v5)
  {
    return 1;
  }

  if (qword_1ED8174E0 != -1)
  {
    v6 = OUTLINED_FUNCTION_0_5();
  }

  if (byte_1ED8174EA != 1)
  {
    return 0;
  }

  if (qword_1ED817298 != -1)
  {
    v6 = OUTLINED_FUNCTION_0_6();
  }

  if ((byte_1ED8172A5 & 1) == 0)
  {
    if (qword_1ED8167C8 != -1)
    {
      v6 = swift_once();
    }

    v11[0] = 0x6C7070612E6D6F63;
    v11[1] = 0xEF64737069742E65;
    MEMORY[0x1EEE9AC00](v6);
    v10[2] = v11;
    return sub_1975544B4(sub_197556D58, v10, v9);
  }

  else
  {
    return 0;
  }
}

unint64_t sub_19758D8AC()
{
  result = qword_1ED8162C8;
  if (!qword_1ED8162C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF34CD8, &unk_19761C230);
    sub_197559AAC(&qword_1ED8162D0, &qword_1EAF34C68, &qword_19761BE88);
    sub_1975611B4(&qword_1ED8171B0, type metadata accessor for CoreDonationRecord);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8162C8);
  }

  return result;
}

uint64_t sub_19758D994()
{
  v0 = sub_197553EE0(0xD000000000000039, 0x8000000197625D90, &qword_1ED816F08, 0x1E695DEC8);
  if (v0 && (v1 = sub_197553BF8(v0), result = , v1))
  {
    qword_1ED81D1D8 = v1;
  }

  else
  {
    qword_1ED81D1D8 = MEMORY[0x1E69E7CC0];
  }

  return result;
}

unint64_t sub_19758DA40()
{
  result = qword_1ED816500;
  if (!qword_1ED816500)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ED816500);
  }

  return result;
}

id sub_19758DA88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v5 = sub_1976161B0();

  v6 = [v4 initWithStoreIdentifier:v5 type:a3];

  return v6;
}

uint64_t CoreEventRecord.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 3);
  v1 = OBJC_IVAR____TtC10TipKitCore15CoreEventRecord___observationRegistrar;
  v2 = sub_197615B40();
  OUTLINED_FUNCTION_7_5(v2);
  (*(v3 + 8))(v0 + v1);
  v4 = *(*v0 + 48);
  v5 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v4, v5);
}

uint64_t sub_19758DBE4()
{
  result = sub_197589344(MEMORY[0x1E69E7CC0]);
  dword_1ED816AC8 = 0;
  qword_1ED816AD0 = result;
  return result;
}

void sub_19758DC14()
{
  OUTLINED_FUNCTION_15_12();
  OUTLINED_FUNCTION_50(v3, v4, v5, v6, v7, v8, v9);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34BA8, &qword_19761BAC8);
  OUTLINED_FUNCTION_0(v10);
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_27_8();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34BA0, &qword_19761BAC0);
  v15 = OUTLINED_FUNCTION_5_2(v14);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_103();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_107();
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34AB8, &qword_197622080);
  OUTLINED_FUNCTION_5_2(v19);
  v21 = *(v20 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_30_0();
  v23 = sub_197615F50();
  v24 = OUTLINED_FUNCTION_0(v23);
  v26 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_11_20();
  v27 = OUTLINED_FUNCTION_29_5();
  sub_19755F9A0(v27, v28, &qword_1EAF34AB8, &qword_197622080);
  OUTLINED_FUNCTION_45_0(v2);
  if (v29)
  {
    sub_19755C7C8(v2, &qword_1EAF34AB8, &qword_197622080);
  }

  else
  {
    v30 = OUTLINED_FUNCTION_48_0();
    v31(v30);
    type metadata accessor for CoreParameterRecord();
    OUTLINED_FUNCTION_59_0();
    sub_19755FF88(v32, 255, v33);
    OUTLINED_FUNCTION_33_6();
    if (sub_197615C00())
    {
      v42 = OUTLINED_FUNCTION_25_9();
      v43(v42);
    }

    else
    {
      OUTLINED_FUNCTION_105(0, v35, v36, v37, v38, v39, v40, v41, v60);
      MEMORY[0x1EEE9AC00](v44);
      OUTLINED_FUNCTION_19_11();
      OUTLINED_FUNCTION_61();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34D28, &qword_19761C7E0);
      OUTLINED_FUNCTION_3_10();
      __swift_storeEnumTagSinglePayload(v45, v46, v47, v48);
      sub_19755F9A0(v1, v0, &qword_1EAF34BA0, &qword_19761BAC0);
      OUTLINED_FUNCTION_88();
      OUTLINED_FUNCTION_47_0();
      MEMORY[0x1EEE9AC00](v49);
      OUTLINED_FUNCTION_3_1();
      swift_getKeyPath();
      OUTLINED_FUNCTION_46_0();
      OUTLINED_FUNCTION_4_7();
      swift_setAtWritableKeyPath();

      OUTLINED_FUNCTION_47_0();
      MEMORY[0x1EEE9AC00](v50);
      OUTLINED_FUNCTION_3_1();
      swift_getKeyPath();
      OUTLINED_FUNCTION_46_0();
      OUTLINED_FUNCTION_21_12(v61);
      swift_setAtWritableKeyPath();

      OUTLINED_FUNCTION_47_0();
      MEMORY[0x1EEE9AC00](v51);
      OUTLINED_FUNCTION_3_1();
      swift_getKeyPath();
      OUTLINED_FUNCTION_46_0();
      OUTLINED_FUNCTION_20_11(v62);
      swift_setAtWritableKeyPath();

      OUTLINED_FUNCTION_47_0();
      MEMORY[0x1EEE9AC00](v52);
      OUTLINED_FUNCTION_3_1();
      swift_getKeyPath();
      OUTLINED_FUNCTION_46_0();
      OUTLINED_FUNCTION_125();
      OUTLINED_FUNCTION_4_7();
      swift_setAtWritableKeyPath();

      OUTLINED_FUNCTION_47_0();
      MEMORY[0x1EEE9AC00](v53);
      OUTLINED_FUNCTION_3_1();
      swift_getKeyPath();
      OUTLINED_FUNCTION_46_0();

      OUTLINED_FUNCTION_4_7();
      swift_setAtWritableKeyPath();

      OUTLINED_FUNCTION_47_0();
      MEMORY[0x1EEE9AC00](v54);
      OUTLINED_FUNCTION_3_1();
      swift_getKeyPath();
      OUTLINED_FUNCTION_46_0();
      OUTLINED_FUNCTION_4_7();
      swift_setAtWritableKeyPath();

      OUTLINED_FUNCTION_33_6();
      v57 = sub_197615C80();
      v58 = OUTLINED_FUNCTION_15_15();
      v59(v58);
      sub_197578D68(v57);
      OUTLINED_FUNCTION_122();
      sub_19755C7C8(v1, &qword_1EAF34BA0, &qword_19761BAC0);
      v55 = OUTLINED_FUNCTION_25_9();
      v56(v55);
      OUTLINED_FUNCTION_94();
    }
  }

  OUTLINED_FUNCTION_90();
  OUTLINED_FUNCTION_14_9();
}

uint64_t sub_19758E114@<X0>(uint64_t *a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34AB8, &qword_197622080);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v12 - v4;
  sub_19756E35C();
  sub_19758DC14();
  v7 = v6;
  result = sub_19756E748(v5);
  if (v7)
  {
    v9 = CoreParameterRecord.valueData.getter();
    v11 = v10;
  }

  else
  {
    v9 = 0;
    v11 = 0xF000000000000000;
  }

  *a1 = v9;
  a1[1] = v11;
  return result;
}

uint64_t sub_19758E208(uint64_t *a1, uint64_t a2, char a3)
{
  v5 = *a1;
  CoreRuleRecord.id.getter();
  v8 = sub_19757F524(v6, v7, a2);

  if (v8 || (sub_1975D3FA4(v9), CoreRuleRecord.id.getter(), v11 = v10, v13 = v12, , v14 = sub_19757F524(v11, v13, a2), v15 = , v14))
  {
    v16 = 0;
  }

  else
  {
    v16 = sub_197573DA8(v15) ^ a3 ^ 1;
  }

  return v16 & 1;
}

uint64_t sub_19758E2F4()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 16);
  sub_19758F7A0();

  v3 = OUTLINED_FUNCTION_4_13();

  return v4(v3);
}

void sub_19758E36C()
{
  OUTLINED_FUNCTION_20();
  v44 = v1;
  v45 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34AB8, &qword_197622080);
  v9 = OUTLINED_FUNCTION_5_2(v8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x1EEE9AC00](v9);
  v43 = &v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v38 - v14;
  v16 = sub_197615F50();
  v17 = OUTLINED_FUNCTION_0(v16);
  v42 = v18;
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v38 = &v38 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for CoreEvent();
  v40 = v5;
  v41 = v3;
  v22 = *(v3 + 8);
  v23 = *(v22 + 16);
  v39 = v7;
  v24 = v23(v5, v22);
  v26 = v25;
  v27 = static CoreEvent.modelIdentifiers.getter();
  sub_19756E674(v24, v26, v27);

  if (__swift_getEnumTagSinglePayload(v15, 1, v16) == 1)
  {
    sub_19755C7C8(v15, &qword_1EAF34AB8, &qword_197622080);
    v28 = v39;
    v29 = v40;
    v30 = v23(v40, v22);
    sub_19758E7D0(v30, v31, v28, v44, v29, v41);
  }

  else
  {
    v32 = v42;
    v33 = v38;
    (*(v42 + 32))(v38, v15, v16);
    v34 = v43;
    (*(v32 + 16))(v43, v33, v16);
    v35 = OUTLINED_FUNCTION_5_10();
    __swift_storeEnumTagSinglePayload(v35, v36, v37, v16);
    sub_1975E748C();
    sub_19755C7C8(v34, &qword_1EAF34AB8, &qword_197622080);
    (*(v32 + 8))(v33, v16);
  }

  OUTLINED_FUNCTION_19_0();
}

uint64_t sub_19758E680()
{
  OUTLINED_FUNCTION_1();
  v5 = *v0;
  v1 = *v0;
  OUTLINED_FUNCTION_2();
  *v2 = v1;
  OUTLINED_FUNCTION_3();

  return v3();
}

uint64_t sub_19758E768()
{
  sub_197615F50();
  result = sub_1976160B0();
  dword_1ED8161E0 = 0;
  qword_1ED8161E8 = result;
  return result;
}

char *sub_19758E7D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v85 = a6;
  v83 = a5;
  v87 = a4;
  v84 = a3;
  v89 = a2;
  v73 = sub_197615F50();
  v71 = *(v73 - 8);
  v7 = *(v71 + 64);
  v8 = MEMORY[0x1EEE9AC00](v73);
  v69 = &v68 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v70 = &v68 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34AC0, &qword_19761B6F0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v75 = &v68 - v13;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34AC8, &unk_197622310);
  v80 = *(v81 - 8);
  v14 = *(v80 + 64);
  MEMORY[0x1EEE9AC00](v81);
  v74 = &v68 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34AD0, &qword_19761B6F8);
  v88 = *(v16 - 8);
  v17 = *(v88 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v68 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34AD8, &unk_1976222C0);
  v21 = *(v20 - 8);
  v22 = v21;
  v23 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v20);
  v25 = &v68 - v24;
  swift_getKeyPath();
  sub_197567F60(&qword_1ED816CD8, MEMORY[0x1E6969530]);
  sub_197615640();
  v72 = a1;
  v98 = a1;
  v99 = v89;
  v26 = v86;
  v103 = v86;
  sub_197615AE0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34AE0, &unk_197622300);
  v27 = *(v21 + 72);
  v28 = (*(v22 + 80) + 32) & ~*(v22 + 80);
  v29 = swift_allocObject();
  *(v29 + 16) = xmmword_197618C10;
  v78 = v22;
  v30 = *(v22 + 16);
  v77 = v25;
  v31 = v25;
  v32 = v74;
  v79 = v20;
  v30(v29 + v28, v31, v20);
  v33 = v75;
  (*(v88 + 16))(v75, v19, v16);
  v82 = v16;
  __swift_storeEnumTagSinglePayload(v33, 0, 1, v16);
  v34 = sub_197567F60(&qword_1ED817218, type metadata accessor for CoreEventRecord);
  v35 = v87;
  swift_bridgeObjectRetain_n();
  v36 = MEMORY[0x1E69E7CC0];
  sub_197615D90();
  v96 = v26;
  v97 = v34;
  swift_getKeyPath();
  v100 = 1;
  LOBYTE(v101) = 0;
  swift_setAtWritableKeyPath();

  v94 = v26;
  v95 = v34;
  swift_getKeyPath();
  LOBYTE(v100) = 0;
  swift_setAtWritableKeyPath();

  v92 = v26;
  v93 = v34;
  swift_getKeyPath();
  v100 = v36;
  swift_setAtWritableKeyPath();

  v90 = v26;
  v91 = v34;
  swift_getKeyPath();
  v100 = v29;

  swift_setAtWritableKeyPath();

  v37 = v35;
  v38 = v76;
  v39 = sub_197615C80();
  if (v38)
  {
    (*(v80 + 8))(v32, v81);

    swift_bridgeObjectRelease_n();

    (*(v88 + 8))(v19, v82);
    (*(v78 + 8))(v77, v79);
    v100 = 0;
    v101 = -2.68156159e154;
    sub_197616A20();

    v100 = 0xD000000000000026;
    v101 = COERCE_DOUBLE(0x80000001976242A0);
    v40 = (*(*(v85 + 8) + 16))(v83);
    MEMORY[0x19A8E2A50](v40);

    MEMORY[0x19A8E2A50](41, 0xE100000000000000);
    v41 = v100;
    v42 = *&v101;
    sub_19759228C();
    swift_allocError();
    *v43 = v41;
    v43[1] = v42;
    swift_willThrow();
    return v26;
  }

  v44 = v39;
  v45 = v88;
  v68 = sub_197567E4C(v39);
  v76 = 0;
  if (v68)
  {
    sub_1975692BC(0, (v44 & 0xC000000000000001) == 0, v44);
    if ((v44 & 0xC000000000000001) != 0)
    {
      v75 = MEMORY[0x19A8E31E0](0, v44);
    }

    else
    {
      v75 = *(v44 + 32);
    }

    v37 = v87;
  }

  else
  {

    v46 = *(v86 + 12);
    v47 = *(v86 + 26);
    swift_allocObject();

    CoreEventRecord.init(id:)();
    v75 = v48;
    sub_197615CD0();
  }

  v49 = v79;
  v50 = v78;
  (*(v80 + 8))(v32, v81);

  swift_bridgeObjectRelease_n();
  (*(v45 + 8))(v19, v82);
  (*(v50 + 8))(v77, v49);
  if (sub_19756F1CC())
  {
    v51 = v85;
    v52 = *(v85 + 16);
    v53 = v83;
    v26 = v75;
    v52(&v100, v83, v85);
LABEL_24:
    sub_19758F948(v100);
    v52(&v100, v53, v51);
    sub_19758FDD0(*&v101, v102);
    v37 = v87;
    goto LABEL_25;
  }

  v52 = *(v85 + 16);
  v53 = v83;
  (v52)(&v100, v83);
  v54 = v100;
  v55 = v101;
  v56 = v102;
  v26 = v75;
  if (qword_1ED8174E0 != -1)
  {
    *&v88 = v101;
    swift_once();
    v55 = *&v88;
  }

  if (byte_1ED8174EA != 1)
  {
    v57 = v54 == 1000;
    v51 = v85;
    if (v57 && v56)
    {
      goto LABEL_25;
    }

    goto LABEL_23;
  }

  v57 = v54 == 200;
  v51 = v85;
  if (!v57 || (v55 != 63072000.0 ? (v58 = 1) : (v58 = v56), (v58 & 1) != 0))
  {
LABEL_23:
    v52(&v100, v53, v51);
    goto LABEL_24;
  }

LABEL_25:
  v59 = v73;
  v60 = v76;
  if (v68 && (sub_1975901DC(v37), v60) || (sub_197615C20() & 1) != 0 && (sub_197615C70(), v60))
  {
  }

  else
  {
    type metadata accessor for CoreEvent();
    v62 = v70;
    sub_197615DB0();
    v63 = static CoreEvent.modelIdentifiers.getter();
    v64 = v71;
    v65 = v69;
    (*(v71 + 16))(v69, v62, v59);
    v66 = v89;

    swift_isUniquelyReferenced_nonNull_native();
    v100 = v63;
    sub_19757B964(v65, v72, v66);

    v67 = v100;
    (*(v64 + 8))(v62, v59);
    static CoreEvent.modelIdentifiers.setter(v67);
  }

  return v26;
}

__n128 sub_19758F2A4(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_19758F2E0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v32 = a2;
  v33 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34AE8, &qword_19761B848);
  v34 = OUTLINED_FUNCTION_0(v6);
  v35 = v7;
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v32 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34AF0, &unk_197622320);
  OUTLINED_FUNCTION_0(v13);
  v15 = v14;
  v17 = *(v16 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v32 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34AF8, &qword_19761B850);
  OUTLINED_FUNCTION_0(v21);
  v23 = v22;
  v25 = *(v24 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v32 - v27;
  v29 = *a1;
  sub_197559AAC(&qword_1ED8164C0, &qword_1EAF34AF0, &unk_197622320);
  sub_197615820();
  swift_getKeyPath();
  sub_197615700();

  (*(v15 + 8))(v20, v13);
  v36 = v32;
  v37 = v33;
  sub_197615810();
  a4[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34B00, &qword_19761B880);
  a4[4] = sub_19758F80C();
  __swift_allocate_boxed_opaque_existential_0(a4);
  sub_197559AAC(&qword_1ED8164D0, &qword_1EAF34AF8, &qword_19761B850);
  sub_197559AAC(&qword_1ED816D00, &qword_1EAF34AE8, &qword_19761B848);
  v30 = v34;
  sub_1976156F0();
  (*(v35 + 8))(v12, v30);
  return (*(v23 + 8))(v28, v21);
}

uint64_t sub_19758F624@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  if (*(v3 + OBJC_IVAR____TtC10TipKitCore17MiniTipsDatastore_modelContainer))
  {
    v5 = result;
    v6 = *(v3 + OBJC_IVAR____TtC10TipKitCore17MiniTipsDatastore_modelContainer);

    if (pthread_main_np() == 1 && _CFRunLoopCurrentIsMain())
    {
      v7 = sub_197616590();
      MEMORY[0x1EEE9AC00](v7);
      OUTLINED_FUNCTION_32_4();
      *(v8 - 16) = a2;
      OUTLINED_FUNCTION_21_7();
      sub_1975DE738(v9, v10);
    }

    else
    {
      sub_197615CF0();
      v12 = *(v3 + 48);
      v11 = *(v3 + 56);

      sub_19755D67C();
      v5();
      sub_197615C90();
    }
  }

  else
  {
    *a3 = xmmword_19761D220;
  }

  return result;
}

uint64_t sub_19758F7A0()
{
  v1 = *(v0 + 56);
  swift_unownedRetainStrong();
  sub_19758F624(sub_19758E7B4, v0, &v3);

  return v3;
}

unint64_t sub_19758F80C()
{
  result = qword_1ED8164F0;
  if (!qword_1ED8164F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF34B00, &qword_19761B880);
    sub_19758F898();
    sub_197565874();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8164F0);
  }

  return result;
}

unint64_t sub_19758F898()
{
  result = qword_1ED8164D8;
  if (!qword_1ED8164D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF34AF8, &qword_19761B850);
    sub_197559AAC(&qword_1ED8164C8, &qword_1EAF34AF0, &unk_197622320);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8164D8);
  }

  return result;
}

uint64_t sub_19758F948(uint64_t a1)
{
  v15 = MEMORY[0x1E69E6530];
  *&v14 = a1;
  v1 = sub_19758FA80();
  sub_19756A94C(&v14, v12);
  swift_isUniquelyReferenced_nonNull_native();
  v11 = v1;
  v2 = v13;
  v3 = __swift_mutable_project_boxed_opaque_existential_1(v12, v13);
  v4 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_6_0();
  v7 = (v6 - v5);
  (*(v8 + 16))(v6 - v5);
  v9 = *v7;
  sub_19757B50C();
  __swift_destroy_boxed_opaque_existential_0Tm(v12);
  return sub_19758FC60(v11);
}

uint64_t sub_19758FA80()
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_10_4();
  v3 = sub_1975611B4(v2, v1);
  OUTLINED_FUNCTION_29(v3, v4, v5, v6, v7, v8, v9, v10, v13, v0);
  sub_197615B20();

  swift_getKeyPath();
  OUTLINED_FUNCTION_1_15();
  sub_1975611B4(v11, v1);
  sub_197615DE0();

  return v14;
}

uint64_t sub_19758FB54()
{
  OUTLINED_FUNCTION_1();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 40);
  v3 = *v0;
  OUTLINED_FUNCTION_2();
  *v4 = v3;

  return MEMORY[0x1EEE6DFA0](sub_19758E2F4, 0, 0);
}

uint64_t sub_19758FC60(uint64_t a1)
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_0_16();
  v5 = sub_1975611B4(v3, v4);
  OUTLINED_FUNCTION_13_5(v5, v6, sub_19758FD14, v7, v8, v5, v9, v10, v12, v13, v1, a1, v14, v15);
  sub_197615B10();
}

uint64_t sub_19758FD14()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_19758FD30();
}

uint64_t sub_19758FD30()
{
  swift_getKeyPath();
  sub_1975611B4(&qword_1ED817218, type metadata accessor for CoreEventRecord);
  sub_197615DF0();
}

uint64_t sub_19758FDD0(uint64_t a1, char a2)
{
  if (a2)
  {
    a1 = 0;
    v3 = 0;
    *(&v20 + 1) = 0;
    v21 = 0;
  }

  else
  {
    v3 = MEMORY[0x1E69E63B0];
  }

  *&v20 = a1;
  v22 = v3;
  v4 = sub_19758FA80();
  if (a2)
  {
    sub_19755C820(&v20, &qword_1EAF34698, &qword_197619048);
    v5 = sub_19755C610();
    if (v6)
    {
      v7 = v5;
      swift_isUniquelyReferenced_nonNull_native();
      v8 = v4[3];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34D00, &unk_19761C4E0);
      sub_197616BF0();
      v9 = *(v4[6] + 16 * v7 + 8);

      sub_19756A94C((v4[7] + 32 * v7), &v18);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF345E8, &qword_197619050);
      OUTLINED_FUNCTION_21_3();
      sub_197616C10();
    }

    else
    {
      v18 = 0u;
      v19 = 0u;
    }

    sub_19755C820(&v18, &qword_1EAF34698, &qword_197619048);
  }

  else
  {
    sub_19756A94C(&v20, &v18);
    swift_isUniquelyReferenced_nonNull_native();
    v17 = v4;
    v10 = *(&v19 + 1);
    v11 = __swift_mutable_project_boxed_opaque_existential_1(&v18, *(&v19 + 1));
    v12 = *(*(v10 - 8) + 64);
    MEMORY[0x1EEE9AC00](v11);
    OUTLINED_FUNCTION_6_0();
    (*(v15 + 16))(v14 - v13);
    sub_197590034();
    __swift_destroy_boxed_opaque_existential_0Tm(&v18);
    v4 = v17;
  }

  return sub_19758FC60(v4);
}

void sub_197590034()
{
  OUTLINED_FUNCTION_74();
  v3 = v2;
  OUTLINED_FUNCTION_43_3();
  v5 = v4;
  v27 = v6;
  __swift_allocate_boxed_opaque_existential_0(v26);
  OUTLINED_FUNCTION_18(v3);
  (*(v7 + 32))();
  v8 = *v1;
  v9 = sub_19755C610();
  OUTLINED_FUNCTION_30(v9, v10);
  if (v13)
  {
    __break(1u);
LABEL_11:
    sub_1976170F0();
    __break(1u);
    return;
  }

  v14 = v11;
  v15 = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34D00, &unk_19761C4E0);
  if (OUTLINED_FUNCTION_35_3())
  {
    v16 = *v1;
    sub_19755C610();
    OUTLINED_FUNCTION_42_2();
    if (!v18)
    {
      goto LABEL_11;
    }

    v14 = v17;
  }

  v19 = *v1;
  if (v15)
  {
    OUTLINED_FUNCTION_33_4();
  }

  else
  {
    __swift_mutable_project_boxed_opaque_existential_1(v26, v27);
    OUTLINED_FUNCTION_14();
    v21 = *(v20 + 64);
    MEMORY[0x1EEE9AC00](v22);
    OUTLINED_FUNCTION_6_0();
    v24 = OUTLINED_FUNCTION_62(v23);
    v25(v24);
    sub_1975E67C8(v14, v5, v0, v15, v19, v3);
    __swift_destroy_boxed_opaque_existential_0Tm(v26);
  }

  OUTLINED_FUNCTION_75();
}

uint64_t sub_1975901DC(uint64_t a1)
{
  v3 = sub_197615A60();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x1EEE9AC00](v3);
  v8 = v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = v22 - v9;
  sub_19759041C();
  if (v11)
  {
    type metadata accessor for CoreDonationRecord();
    v12 = CoreEventRecord.id.getter();
    v14 = v13;
    v15 = sub_197590604();
    sub_1975BDD44(v12, v14, v15, a1);
  }

  else
  {
    v22[1] = type metadata accessor for CoreDonationRecord();
    v16 = CoreEventRecord.id.getter();
    v22[0] = v1;
    v18 = v17;
    v19 = sub_197590604();
    _s10Foundation4DateV10TipKitCoreE13bySubtracting17calendarComponent5count2toACSgAA8CalendarV0I0O_SiACtFZfA1__0();
    _s10Foundation4DateV10TipKitCoreE6addingyACSdF_0();
    v20 = *(v4 + 8);
    v20(v8, v3);
    sub_1975906C4(v16, v18, v19, v10, a1);
    v20(v10, v3);
  }
}

uint64_t OUTLINED_FUNCTION_52@<X0>(uint64_t a1@<X8>, uint64_t a2)
{

  return sub_19758110C(v2, &a2 - a1);
}

uint64_t OUTLINED_FUNCTION_87()
{

  return sub_19755F9A0(v2, v1, v3, v0);
}

uint64_t sub_19759041C()
{
  v0 = sub_19758FA80();
  sub_197579604(0x74616E6F4478616DLL, 0xEE006567416E6F69, v0);

  if (v4)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF345E8, &qword_197619050);
    if (swift_dynamicCast())
    {
      return v2;
    }
  }

  else
  {
    sub_19755C820(v3, &qword_1EAF34698, &qword_197619048);
  }

  return 0;
}

uint64_t CoreEventRecord.id.getter()
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_10_4();
  sub_1975611B4(v2, v1);
  sub_197615B20();

  swift_getKeyPath();
  OUTLINED_FUNCTION_1_15();
  sub_1975611B4(v3, v1);
  sub_197615E50();

  return v0;
}

uint64_t sub_1975905D8(uint64_t *a1)
{
  OUTLINED_FUNCTION_16_0(a1);
  result = CoreEventRecord.id.getter();
  *v1 = result;
  v1[1] = v3;
  return result;
}

uint64_t sub_197590604()
{
  v0 = sub_19758FA80();
  sub_197579604(0xD000000000000010, 0x8000000197624570, v0);

  if (v4)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF345E8, &qword_197619050);
    if (swift_dynamicCast())
    {
      return v2;
    }
  }

  else
  {
    sub_19755C820(v3, &qword_1EAF34698, &qword_197619048);
  }

  return 1000;
}

uint64_t sub_1975906C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v68 = a4;
  v66 = a3;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34A48, &qword_19761B670);
  v10 = OUTLINED_FUNCTION_0(v9);
  v65 = v11;
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v15 = &v60 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34B08, &qword_19761B888);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x1EEE9AC00](v16 - 8);
  v20 = &v60 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x1EEE9AC00](v18);
  v23 = &v60 - v22;
  MEMORY[0x1EEE9AC00](v21);
  v25 = &v60 - v24;
  v67 = a1;
  v70 = a1;
  v71 = a2;
  v26 = a2;
  v27 = v5;
  v73 = v5;
  v28 = a5;
  sub_197615AE0();
  OUTLINED_FUNCTION_3_10();
  __swift_storeEnumTagSinglePayload(v29, v30, v31, v9);
  v32 = v69;
  sub_1975913B8();
  v34 = v33;
  result = sub_19755C404(v25, &qword_1EAF34B08, &qword_19761B888);
  if (!v32)
  {
    v62 = v20;
    v63 = v15;
    v64 = v27;
    if (v34)
    {
      v36 = v28;
      v37 = v26;
      v61 = v34;
      v69 = &v60;
      MEMORY[0x1EEE9AC00](result);
      v38 = v67;
      *(&v60 - 4) = v67;
      *(&v60 - 3) = v37;
      v40 = v39;
      *(&v60 - 2) = v39;
      OUTLINED_FUNCTION_5_8();
      sub_197615AE0();
      OUTLINED_FUNCTION_3_10();
      __swift_storeEnumTagSinglePayload(v41, v42, v43, v9);
      sub_1975913B8();
      v45 = v44;
      result = sub_19755C404(v23, &qword_1EAF34B08, &qword_19761B888);
      v46 = v66;
      if (v45 < v66 && v45 != v61)
      {
        MEMORY[0x1EEE9AC00](result);
        *(&v60 - 4) = v38;
        *(&v60 - 3) = v37;
        *(&v60 - 2) = v40;
        OUTLINED_FUNCTION_5_8();
        v56 = v63;
        sub_197615AE0();
        OUTLINED_FUNCTION_4_8();
        sub_1975FD26C();
        (*(v65 + 8))(v56, v9);
        if (qword_1ED816C98 != -1)
        {
          OUTLINED_FUNCTION_5_0();
        }

        v57 = type metadata accessor for logger();
        __swift_project_value_buffer(v57, qword_1ED816CA0);
        OUTLINED_FUNCTION_1_10();
        sub_197616A20();
        OUTLINED_FUNCTION_7_3();
        MEMORY[0x19A8E2A50](v67, v37);
        MEMORY[0x19A8E2A50](0xD000000000000028, 0x8000000197624370);
        v72 = v61;
        v58 = OUTLINED_FUNCTION_6_3();
        MEMORY[0x19A8E2A50](v58);

        MEMORY[0x19A8E2A50](540945696, 0xE400000000000000);
        v72 = v45;
LABEL_17:
        v59 = OUTLINED_FUNCTION_6_3();
        MEMORY[0x19A8E2A50](v59);

        sub_197558864();
      }

      if (v61 > v66)
      {
        KeyPath = swift_getKeyPath();
        MEMORY[0x1EEE9AC00](KeyPath);
        OUTLINED_FUNCTION_2_0();
        *(v49 - 16) = v38;
        *(v49 - 8) = v37;
        OUTLINED_FUNCTION_5_8();
        v50 = v62;
        sub_197615AE0();
        OUTLINED_FUNCTION_3_10();
        __swift_storeEnumTagSinglePayload(v51, v52, v53, v9);
        sub_1975BD798(v36, v46, KeyPath, 1, v50);
        sub_19755C404(v50, &qword_1EAF34B08, &qword_19761B888);

        if (qword_1ED816C98 != -1)
        {
          OUTLINED_FUNCTION_5_0();
        }

        v54 = type metadata accessor for logger();
        __swift_project_value_buffer(v54, qword_1ED816CA0);
        OUTLINED_FUNCTION_1_10();
        sub_197616A20();
        OUTLINED_FUNCTION_7_3();
        MEMORY[0x19A8E2A50](v67, v37);
        MEMORY[0x19A8E2A50](0xD000000000000029, 0x8000000197624340);
        v72 = v61;
        v55 = OUTLINED_FUNCTION_6_3();
        MEMORY[0x19A8E2A50](v55);

        OUTLINED_FUNCTION_9_4();
        v72 = v66;
        goto LABEL_17;
      }
    }
  }

  return result;
}

uint64_t sub_197590CAC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v46 = a2;
  v47 = a3;
  v48 = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34BB0, &qword_19761BAD0);
  v49 = OUTLINED_FUNCTION_0(v5);
  v50 = v6;
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_5_3();
  v43 = v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34B28, &qword_19761B8C8);
  OUTLINED_FUNCTION_0(v11);
  v13 = v12;
  v15 = *(v14 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v43 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34BB8, &qword_19761BAD8);
  OUTLINED_FUNCTION_0(v19);
  v21 = v20;
  v23 = *(v22 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v43 - v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34BC0, &qword_19761BAE0);
  v44 = OUTLINED_FUNCTION_0(v27);
  v45 = v28;
  v30 = *(v29 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v31);
  v33 = &v43 - v32;
  v34 = *a1;
  OUTLINED_FUNCTION_1_11();
  sub_197569AA4(v35);
  sub_197615820();
  swift_getKeyPath();
  sub_197615700();

  (*(v13 + 8))(v18, v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34AF8, &qword_19761B850);
  type metadata accessor for CoreEventRecord();
  sub_197569AA4(&unk_1ED816278);
  sub_197569AA4(&unk_1ED8164D0);
  sub_197615710();
  (*(v21 + 8))(v26, v19);
  v51 = v46;
  v52 = v47;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34400, &qword_1976185C0);
  v36 = v43;
  sub_197615810();
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34BC8, &qword_19761BAE8);
  v38 = v48;
  v48[3] = v37;
  v38[4] = sub_197591288();
  __swift_allocate_boxed_opaque_existential_0(v38);
  OUTLINED_FUNCTION_3_0();
  sub_197569AA4(v39);
  sub_197569AA4(&qword_1ED816CF0);
  OUTLINED_FUNCTION_4_10(&qword_1ED816C68);
  v40 = v44;
  v41 = v49;
  sub_1976156F0();
  (*(v50 + 8))(v36, v41);
  return (*(v45 + 8))(v33, v40);
}

uint64_t sub_197591148()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34AF0, &unk_197622320);
  OUTLINED_FUNCTION_0(v0);
  v2 = v1;
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v10 - v6;
  OUTLINED_FUNCTION_1_11();
  sub_197569AA4(v8);
  sub_197615820();
  swift_getKeyPath();
  sub_197615700();

  return (*(v2 + 8))(v7, v0);
}

unint64_t sub_197591288()
{
  result = qword_1ED816298;
  if (!qword_1ED816298)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF34BC8, &qword_19761BAE8);
    sub_197591314();
    sub_19757B7B4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED816298);
  }

  return result;
}

unint64_t sub_197591314()
{
  result = qword_1ED8162A8;
  if (!qword_1ED8162A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF34BC0, &qword_19761BAE0);
    sub_19757D7C0(&qword_1ED816280);
    sub_19758F898();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8162A8);
  }

  return result;
}

void sub_1975913B8()
{
  OUTLINED_FUNCTION_20();
  OUTLINED_FUNCTION_4_9();
  v0 = OUTLINED_FUNCTION_17_3();
  OUTLINED_FUNCTION_5_2(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_12_4();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34B40, &unk_197622360);
  OUTLINED_FUNCTION_0(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_3_11();
  type metadata accessor for CoreDonationRecord();
  OUTLINED_FUNCTION_6_4();
  sub_19759152C(v8, v9);
  OUTLINED_FUNCTION_8_6();
  swift_getKeyPath();
  OUTLINED_FUNCTION_5_9();

  OUTLINED_FUNCTION_9_5();
  v10 = OUTLINED_FUNCTION_2_9();
  v11(v10);
  OUTLINED_FUNCTION_11_4();
  OUTLINED_FUNCTION_19_0();
}

__n128 sub_197591510(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_19759152C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1975915DC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, unsigned int *a6@<X5>, uint64_t *a7@<X8>)
{
  v110 = a6;
  v96 = a5;
  v109 = a4;
  v98 = a3;
  v97 = a2;
  v115 = a7;
  v8 = sub_1976157A0();
  v9 = OUTLINED_FUNCTION_0(v8);
  v106 = v10;
  v107 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v104 = &v84 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34B20, &unk_19761E5E0);
  v111 = OUTLINED_FUNCTION_0(v14);
  v112 = v15;
  v17 = *(v16 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_5_3();
  v103 = v19;
  v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34B30, &qword_19761E5F0);
  OUTLINED_FUNCTION_0(v105);
  v108 = v20;
  v22 = *(v21 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_5_3();
  v99 = v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34B38, &qword_19761E620);
  v113 = OUTLINED_FUNCTION_0(v25);
  v114 = v26;
  v28 = *(v27 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_5_3();
  v102 = v30;
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34BB0, &qword_19761BAD0);
  OUTLINED_FUNCTION_0(v94);
  v95 = v31;
  v33 = *(v32 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_5_3();
  v93 = v35;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34B28, &qword_19761B8C8);
  OUTLINED_FUNCTION_0(v36);
  v38 = v37;
  v40 = *(v39 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v41);
  v43 = &v84 - v42;
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34BB8, &qword_19761BAD8);
  OUTLINED_FUNCTION_0(v85);
  v86 = v44;
  v46 = *(v45 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v47);
  v49 = &v84 - v48;
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34BC0, &qword_19761BAE0);
  OUTLINED_FUNCTION_0(v91);
  v92 = v50;
  v52 = *(v51 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v53);
  OUTLINED_FUNCTION_5_3();
  v84 = v54;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34BC8, &qword_19761BAE8);
  v100 = OUTLINED_FUNCTION_0(v55);
  v101 = v56;
  v58 = *(v57 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v59);
  OUTLINED_FUNCTION_5_3();
  v116 = v60;
  v90 = *a1;
  OUTLINED_FUNCTION_1_11();
  sub_197569AA4(v61);
  sub_197615820();
  swift_getKeyPath();
  sub_197615700();

  v62 = *(v38 + 8);
  v88 = v38 + 8;
  v89 = v62;
  v62(v43, v36);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34AF8, &qword_19761B850);
  type metadata accessor for CoreEventRecord();
  v87 = MEMORY[0x1E6968D58];
  sub_197569AA4(&unk_1ED816278);
  sub_197569AA4(&unk_1ED8164D0);
  v63 = v84;
  v64 = v85;
  sub_197615710();
  (*(v86 + 8))(v49, v64);
  v117 = v97;
  v118 = v98;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34400, &qword_1976185C0);
  v65 = v93;
  sub_197615810();
  OUTLINED_FUNCTION_3_0();
  sub_197569AA4(v66);
  sub_197569AA4(&qword_1ED816CF0);
  OUTLINED_FUNCTION_4_10(&qword_1ED816C68);
  v67 = v91;
  v68 = v94;
  sub_1976156F0();
  (*(v95 + 8))(v65, v68);
  (*(v92 + 8))(v63, v67);
  sub_197615820();
  swift_getKeyPath();
  v69 = v99;
  sub_197615700();

  v89(v43, v36);
  sub_197615A60();
  v70 = v103;
  sub_197615810();
  v72 = v106;
  v71 = v107;
  v73 = v104;
  (*(v106 + 104))(v104, *v110, v107);
  sub_197569AA4(&unk_1ED8161F8);
  sub_197569AA4(&unk_1ED8164E0);
  sub_197567EDC(&unk_1ED816CD8);
  v74 = v102;
  v75 = v70;
  v76 = v105;
  v77 = v111;
  sub_197615760();
  (*(v72 + 8))(v73, v71);
  (*(v112 + 8))(v75, v77);
  (*(v108 + 8))(v69, v76);
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34BD0, &qword_19761BB40);
  v79 = v115;
  v115[3] = v78;
  v79[4] = sub_197591F9C();
  __swift_allocate_boxed_opaque_existential_0(v79);
  sub_197569AA4(&unk_1ED816178);
  sub_197569AA4(&unk_1ED816188);
  v80 = v116;
  v81 = v100;
  v82 = v113;
  sub_197615780();
  (*(v114 + 8))(v74, v82);
  return (*(v101 + 8))(v80, v81);
}

unint64_t sub_197591F9C()
{
  result = qword_1ED816180;
  if (!qword_1ED816180)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF34BD0, &qword_19761BB40);
    sub_197591288();
    sub_1975920D8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED816180);
  }

  return result;
}

unint64_t sub_197592028()
{
  result = qword_1ED816200;
  if (!qword_1ED816200)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF34B30, &qword_19761E5F0);
    sub_197559AAC(&qword_1ED8164B8, &qword_1EAF34B28, &qword_19761B8C8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED816200);
  }

  return result;
}

unint64_t sub_1975920D8()
{
  result = qword_1ED816218;
  if (!qword_1ED816218)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF34B38, &qword_19761E620);
    sub_197592028();
    sub_19758275C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED816218);
  }

  return result;
}

uint64_t sub_19759220C(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = *a2;
  v5 = sub_1975611B4(&qword_1ED817218, type metadata accessor for CoreEventRecord);

  return MEMORY[0x1EEDD9288](v3, v4, v2, v5);
}

unint64_t sub_19759228C()
{
  result = qword_1ED815FD8;
  if (!qword_1ED815FD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED815FD8);
  }

  return result;
}

uint64_t TipsError.description.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

void sub_197592314()
{
  OUTLINED_FUNCTION_5_22();
  CoreTipRecord.status.getter();
  OUTLINED_FUNCTION_10_18();
  if (!v0 && (sub_197592490() & 1) != 0)
  {
    v1 = [objc_opt_self() standardUserDefaults];
    OUTLINED_FUNCTION_13_12();
    sub_1975578B4();
    v3 = v2;

    if (v3)
    {
      CoreTipRecord.id.getter();
      v6 = sub_19757F524(v4, v5, v3);

      if (v6)
      {
        if (qword_1ED816C98 != -1)
        {
          OUTLINED_FUNCTION_5_0();
        }

        v7 = type metadata accessor for logger();
        __swift_project_value_buffer(v7, qword_1ED816CA0);
        OUTLINED_FUNCTION_2_30();
        sub_197616A20();

        OUTLINED_FUNCTION_1_36();
        MEMORY[0x19A8E2A50]();

        MEMORY[0x19A8E2A50](0xD000000000000023, 0x8000000197625780);
        OUTLINED_FUNCTION_6_17();
        sub_197558864();

        OUTLINED_FUNCTION_3_30();
        sub_1975E92FC(v8);
      }
    }
  }
}

uint64_t sub_197592490()
{
  if (qword_1ED817510 != -1)
  {
    OUTLINED_FUNCTION_1_0();
  }

  if (qword_1ED817298 != -1)
  {
    OUTLINED_FUNCTION_0_6();
  }

  if (byte_1ED8172A1 == 2)
  {
    if (qword_1ED8174E0 != -1)
    {
      OUTLINED_FUNCTION_0_5();
    }

    v0 = byte_1ED8174EA ^ 1;
  }

  else
  {
    v0 = 0;
  }

  return v0 & 1;
}

uint64_t sub_197592568(uint64_t *a1)
{
  OUTLINED_FUNCTION_16_0(a1);
  result = sub_19759252C();
  *v1 = result;
  return result;
}

uint64_t sub_197592594(uint64_t a1)
{
  v4 = *v1;
  v5 = CoreRuleRecord.predicate.getter(a1);
  if (!v5)
  {
    goto LABEL_10;
  }

  v6 = v5;
  sub_1975928D4(&qword_1ED817280, type metadata accessor for CoreRuleRecord);
  v7 = sub_197615DD0();
  if (!v7)
  {

    goto LABEL_10;
  }

  v8 = v7;
  if (!a1 || (v9 = &v6[OBJC_IVAR___Predicate_argument], v6[OBJC_IVAR___Predicate_argument + 16] >= 2u))
  {

    goto LABEL_8;
  }

  v11 = *v9;
  v10 = *(v9 + 1);

  v12 = OUTLINED_FUNCTION_0_29();
  sub_19759291C(v12, v13, v14);
  type metadata accessor for CoreEventRecord();
  sub_1975928D4(&qword_1ED817218, type metadata accessor for CoreEventRecord);
  if (sub_197615E90())
  {
    v15 = OUTLINED_FUNCTION_0_29();
    sub_197580A80(v15, v16, v17);

LABEL_8:

LABEL_10:
    sub_197616A20();

    CoreRuleRecord.id.getter();
    MEMORY[0x19A8E2A50]();

    MEMORY[0x19A8E2A50](41, 0xE100000000000000);
    sub_19759228C();
    swift_allocError();
    *v18 = 0xD000000000000026;
    v18[1] = 0x8000000197624B50;
    return swift_willThrow();
  }

  type metadata accessor for CoreDonationRecord();
  sub_197593BC8(a1, v6, v8, &v26);
  if (v2)
  {
    v20 = OUTLINED_FUNCTION_0_29();
    sub_197580A80(v20, v21, v22);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34AA0, &qword_19761E6B0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_197618C10;
    *(inited + 32) = v11;
    *(inited + 40) = v10;
    sub_1975586C0(&v26, inited + 48);
    sub_1976160B0();
    v24 = sub_197593F84();

    if (v24)
    {
      v25 = 2;
    }

    else
    {
      v25 = 1;
    }

    sub_197577DBC(v25);
    __swift_destroy_boxed_opaque_existential_0Tm(&v26);
  }
}

uint64_t sub_1975928D4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_19759291C(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 1u)
  {
  }

  return result;
}

uint64_t sub_197592934(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v158 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34B40, &unk_197622360);
  v155 = *(v5 - 8);
  v6 = *(v155 + 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v148 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34B08, &qword_19761B888);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x1EEE9AC00](v9 - 8);
  v156 = &v148 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = &v148 - v14;
  MEMORY[0x1EEE9AC00](v13);
  v154 = &v148 - v16;
  v169 = sub_197615A60();
  v17 = *(v169 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v169);
  v161 = &v148 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34988, &qword_197620CA0);
  v21 = *(*(v20 - 8) + 64);
  v22 = MEMORY[0x1EEE9AC00](v20 - 8);
  v165 = (&v148 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v22);
  v162 = (&v148 - v24);
  v179 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34A48, &qword_19761B670);
  v173 = *(v179 - 8);
  v25 = *(v173 + 64);
  v26 = MEMORY[0x1EEE9AC00](v179);
  v164 = &v148 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = MEMORY[0x1EEE9AC00](v26);
  v163 = (&v148 - v29);
  v30 = MEMORY[0x1EEE9AC00](v28);
  v170 = &v148 - v31;
  v32 = MEMORY[0x1EEE9AC00](v30);
  v168 = &v148 - v33;
  v34 = MEMORY[0x1EEE9AC00](v32);
  v36 = &v148 - v35;
  v37 = MEMORY[0x1EEE9AC00](v34);
  v38 = MEMORY[0x1EEE9AC00](v37);
  v171 = &v148 - v39;
  v40 = MEMORY[0x1EEE9AC00](v38);
  v159 = &v148 - v41;
  v42 = MEMORY[0x1EEE9AC00](v40);
  v44 = &v148 - v43;
  v45 = MEMORY[0x1EEE9AC00](v42);
  v167 = &v148 - v46;
  v47 = MEMORY[0x1EEE9AC00](v45);
  MEMORY[0x1EEE9AC00](v47);
  v51 = *(a2 + OBJC_IVAR___Predicate_queries);
  if (!v51 || !*(v51 + 16))
  {
    v78 = v17;
    v159 = v49;
    v79 = CoreEventRecord.id.getter();
    v81 = v80;
    v82 = sub_19759041C();
    v155 = v36;
    sub_197593D50(v79, v81, v82, v83 & 1);

    v84 = *(a2 + OBJC_IVAR___Predicate_subpredicates);
    if (!v84)
    {
      v87 = 0;
LABEL_44:
      v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34B48, &qword_19761B8D0);
      v177 = v106;
      v107 = sub_197559AAC(&qword_1ED816158, &qword_1EAF34B48, &qword_19761B8D0);
      v108 = v107;
      v109 = MEMORY[0x1E69E7CC0];
      if (v87)
      {
        v109 = v87;
      }

      v178 = v107;
      v176[0] = v109;
      __swift_project_boxed_opaque_existential_1Tm(v176, v106);
      v110 = *(v108 + 8);
      v111 = v159;
      v112 = v155;
      v113 = v179;
      v114 = v157;
      sub_1976163A0();
      v115 = v173;
      v116 = *(v173 + 8);
      v116(v112, v113);
      __swift_destroy_boxed_opaque_existential_0Tm(v176);
      v117 = v156;
      (*(v115 + 16))(v156, v111, v113);
      __swift_storeEnumTagSinglePayload(v117, 0, 1, v113);
      sub_1975913B8();
      v119 = v118;
      sub_197593F1C(v117);
      if (v114)
      {
        return (v116)(v111, v113);
      }

      v120 = sub_197590604();
      v116(v111, v113);
      if (v120 >= v119)
      {
        return v119;
      }

      else
      {
        return v120;
      }
    }

    v153 = a1;
    v85 = 0;
    v171 = *(v84 + 2);
    v162 = (v78 + 32);
    v160 = (v78 + 8);
    v86 = v84 + 48;
    v87 = MEMORY[0x1E69E7CC0];
    v166 = (v173 + 32);
    v167 = v84;
    v88 = v164;
    while (1)
    {
      if (v171 == v85)
      {
        goto LABEL_44;
      }

      if (v85 >= *(v84 + 2))
      {
        __break(1u);
LABEL_61:
        __break(1u);
        return result;
      }

      v90 = *(v86 - 2);
      v89 = *(v86 - 1);
      if ((*v86 & 1) == 0)
      {
        MEMORY[0x1EEE9AC00](result);
        *(&v148 - 2) = v90;
        *(&v148 - 1) = v89;
        v174 = v172;
        v96 = v170;
        sub_197615AE0();
        v97 = v96;
        v98 = *v166;
        v99 = v179;
        goto LABEL_36;
      }

      if (qword_1ED816850 != -1)
      {
        swift_once();
      }

      if (!qword_1ED81D1D0)
      {
        break;
      }

      swift_getKeyPath();
      v91 = v165;
      sub_1975DB5E0();

      if (__swift_getEnumTagSinglePayload(v91, 1, v169) == 1)
      {
        goto LABEL_34;
      }

      v92 = v161;
      v93 = v169;
      v94 = (*v162)(v161, v165, v169);
      MEMORY[0x1EEE9AC00](v94);
      *(&v148 - 4) = v92;
      *(&v148 - 3) = v90;
      *(&v148 - 2) = v89;
      v174 = v172;
      v95 = v163;
      sub_197615AE0();
      (*v160)(v92, v93);
LABEL_35:
      v98 = *v166;
      v97 = v170;
      v99 = v179;
      (*v166)(v170, v95, v179);
      v88 = v164;
LABEL_36:
      v100 = v168;
      v98(v168, v97, v99);
      v98(v88, v100, v99);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1975BBE80(0, *(v87 + 16) + 1, 1, v87);
        v87 = v103;
      }

      v102 = *(v87 + 16);
      v101 = *(v87 + 24);
      if (v102 >= v101 >> 1)
      {
        sub_1975BBE80(v101 > 1, v102 + 1, 1, v87);
        v87 = v104;
      }

      *(v87 + 16) = v102 + 1;
      result = (v98)(v87 + ((*(v173 + 80) + 32) & ~*(v173 + 80)) + *(v173 + 72) * v102, v88, v99);
      v86 += 24;
      ++v85;
      v84 = v167;
    }

    __swift_storeEnumTagSinglePayload(v165, 1, 1, v169);
LABEL_34:
    v174 = v172;
    v95 = v163;
    sub_197615AE0();
    goto LABEL_35;
  }

  v151 = v15;
  v149 = v51;
  v152 = &v148 - v48;
  v156 = v5;
  v52 = v50;
  v53 = CoreEventRecord.id.getter();
  v55 = v54;
  v153 = a1;
  v56 = sub_19759041C();
  v150 = v52;
  sub_197593D50(v53, v55, v56, v57 & 1);

  v59 = *(a2 + OBJC_IVAR___Predicate_subpredicates);
  if (v59)
  {
    v148 = v8;
    v60 = 0;
    v168 = v59[2];
    v163 = (v17 + 8);
    v164 = (v17 + 32);
    v61 = v59 + 6;
    v62 = MEMORY[0x1E69E7CC0];
    v165 = (v173 + 32);
    v170 = ((v173 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000);
    v63 = v159;
    v166 = v59;
    v160 = v44;
    while (1)
    {
      if (v168 == v60)
      {
        v105 = v157;
        v8 = v148;
        goto LABEL_52;
      }

      if (v60 >= v59[2])
      {
        goto LABEL_61;
      }

      v64 = *(v61 - 2);
      v65 = *(v61 - 1);
      if ((*v61 & 1) == 0)
      {
        v70 = v63;
        MEMORY[0x1EEE9AC00](result);
        *(&v148 - 2) = v64;
        *(&v148 - 1) = v65;
        v174 = v172;
        sub_197615AE0();
        v71 = *v165;
        v72 = v179;
        goto LABEL_17;
      }

      if (qword_1ED816850 != -1)
      {
        swift_once();
      }

      if (!qword_1ED81D1D0)
      {
        break;
      }

      swift_getKeyPath();
      v66 = v162;
      sub_1975DB5E0();

      v63 = v159;
      if (__swift_getEnumTagSinglePayload(v66, 1, v169) == 1)
      {
        goto LABEL_15;
      }

      v67 = v161;
      v68 = v169;
      v69 = (*v164)(v161, v162, v169);
      MEMORY[0x1EEE9AC00](v69);
      *(&v148 - 4) = v67;
      *(&v148 - 3) = v64;
      *(&v148 - 2) = v65;
      v174 = v172;
      sub_197615AE0();
      (*v163)(v67, v68);
LABEL_16:
      v71 = *v165;
      v44 = v160;
      v70 = v63;
      v72 = v179;
      (*v165)(v160, v63, v179);
LABEL_17:
      v73 = v167;
      v71(v167, v44, v72);
      v71(v171, v73, v72);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1975BBE80(0, *(v62 + 16) + 1, 1, v62);
        v62 = v76;
      }

      v75 = *(v62 + 16);
      v74 = *(v62 + 24);
      v63 = v70;
      if (v75 >= v74 >> 1)
      {
        sub_1975BBE80(v74 > 1, v75 + 1, 1, v62);
        v62 = v77;
      }

      *(v62 + 16) = v75 + 1;
      result = (v71)(v62 + ((*(v173 + 80) + 32) & ~*(v173 + 80)) + *(v173 + 72) * v75, v171, v179);
      v61 += 24;
      ++v60;
      v59 = v166;
    }

    __swift_storeEnumTagSinglePayload(v162, 1, 1, v169);
LABEL_15:
    v174 = v172;
    sub_197615AE0();
    goto LABEL_16;
  }

  v62 = 0;
  v105 = v157;
LABEL_52:
  v121 = MEMORY[0x1E69E7CC0];
  v122 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34B48, &qword_19761B8D0);
  v177 = v122;
  v123 = sub_197559AAC(&qword_1ED816158, &qword_1EAF34B48, &qword_19761B8D0);
  v124 = v123;
  if (v62)
  {
    v125 = v62;
  }

  else
  {
    v125 = v121;
  }

  v178 = v123;
  v176[0] = v125;
  __swift_project_boxed_opaque_existential_1Tm(v176, v122);
  v126 = *(v124 + 8);
  v127 = v152;
  v128 = v150;
  v129 = v179;
  sub_1976163A0();
  v130 = v173;
  v131 = *(v173 + 8);
  v170 = v105;
  v171 = v131;
  (v131)(v128, v129);
  __swift_destroy_boxed_opaque_existential_0Tm(v176);
  v132 = v154;
  (*(v130 + 16))(v154, v127, v129);
  __swift_storeEnumTagSinglePayload(v132, 0, 1, v129);
  sub_19755FA5C(v132, v151, &qword_1EAF34B08, &qword_19761B888);
  v133 = sub_19759152C(&qword_1ED8171B0, type metadata accessor for CoreDonationRecord);
  v134 = v172;
  v135 = sub_197615D90();
  v136 = v8;
  MEMORY[0x1EEE9AC00](v135);
  *(&v148 - 2) = v134;
  *(&v148 - 1) = v133;
  swift_getKeyPath();
  v174 = 0;
  v175 = 1;
  swift_setAtWritableKeyPath();

  MEMORY[0x1EEE9AC00](v137);
  *(&v148 - 2) = v134;
  *(&v148 - 1) = v133;
  swift_getKeyPath();
  v174 = 0;
  v175 = 1;
  swift_setAtWritableKeyPath();

  MEMORY[0x1EEE9AC00](v138);
  *(&v148 - 2) = v134;
  *(&v148 - 1) = v133;
  swift_getKeyPath();
  LOBYTE(v174) = 0;
  swift_setAtWritableKeyPath();

  MEMORY[0x1EEE9AC00](v139);
  *(&v148 - 2) = v134;
  *(&v148 - 1) = v133;
  swift_getKeyPath();
  v140 = MEMORY[0x1E69E7CC0];
  v174 = MEMORY[0x1E69E7CC0];
  swift_setAtWritableKeyPath();

  MEMORY[0x1EEE9AC00](v141);
  *(&v148 - 2) = v134;
  *(&v148 - 1) = v133;
  swift_getKeyPath();
  v174 = v140;
  swift_setAtWritableKeyPath();

  MEMORY[0x1EEE9AC00](v142);
  *(&v148 - 2) = v134;
  *(&v148 - 1) = v133;
  swift_getKeyPath();
  v174 = v140;
  swift_setAtWritableKeyPath();

  v143 = v170;
  v144 = sub_197615C80();
  (*(v155 + 1))(v136, v156);
  sub_197593F1C(v132);
  if (v143)
  {
    return (v171)(v152, v129);
  }

  v145 = sub_1975BFB18(v149, v144);

  v146 = sub_197567E4C(v145);

  v147 = sub_197590604();
  (v171)(v152, v129);
  if (v147 >= v146)
  {
    return v146;
  }

  else
  {
    return v147;
  }
}

uint64_t sub_197593BC8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v6 = a2 + OBJC_IVAR___Predicate_argument;
  if (*(a2 + OBJC_IVAR___Predicate_argument + 16))
  {
    *&v9 = 0;
    *(&v9 + 1) = 0xE000000000000000;
    sub_197616A20();
    v12 = v9;
    MEMORY[0x19A8E2A50](0x746E656D75677261, 0xEE00206570797420);
    v10 = *v6;
    v11 = *(v6 + 16);
    sub_197616BC0();
    MEMORY[0x19A8E2A50](0xD00000000000001ELL, 0x80000001976243F0);
    sub_19759228C();
    swift_allocError();
    *v7 = v12;
    return swift_willThrow();
  }

  else
  {
    result = sub_197592934(a1, a2, a3);
    if (!v4)
    {
      a4[3] = MEMORY[0x1E69E6530];
      *a4 = result;
    }
  }

  return result;
}

uint64_t CoreEventRecord.persistentBackingData.setter(__int128 *a1)
{
  OUTLINED_FUNCTION_43_0();
  __swift_destroy_boxed_opaque_existential_0Tm((v1 + 24));
  sub_1975558C4(a1, v1 + 24);
  return swift_endAccess();
}

uint64_t sub_197593D50(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v8 = sub_197615A60();
  v9 = OUTLINED_FUNCTION_0(v8);
  v11 = v10;
  v13 = *(v12 + 64);
  v14 = MEMORY[0x1EEE9AC00](v9);
  v16 = &v23 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1EEE9AC00](v14);
  v19 = &v23 - v18;
  if (a4)
  {
    MEMORY[0x1EEE9AC00](v17);
    *(&v23 - 2) = a1;
    *(&v23 - 1) = a2;
    v24 = v4;
    return OUTLINED_FUNCTION_7_4();
  }

  else
  {
    _s10Foundation4DateV10TipKitCoreE13bySubtracting17calendarComponent5count2toACSgAA8CalendarV0I0O_SiACtFZfA1__0();
    _s10Foundation4DateV10TipKitCoreE6addingyACSdF_0();
    v21 = *(v11 + 8);
    v22 = v21(v16, v8);
    MEMORY[0x1EEE9AC00](v22);
    *(&v23 - 4) = a1;
    *(&v23 - 3) = a2;
    *(&v23 - 2) = v19;
    v24 = v4;
    OUTLINED_FUNCTION_7_4();
    return v21(v19, v8);
  }
}

uint64_t sub_197593F1C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34B08, &qword_19761B888);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_197593F84()
{
  v1 = (v0 + OBJC_IVAR___Predicate_argument);
  v2 = *(v0 + OBJC_IVAR___Predicate_argument + 16);
  if (v2 > 1)
  {
    v9 = 0x8000000197624800;
    sub_19759228C();
    swift_allocError();
    *v10 = 0xD00000000000002DLL;
    v10[1] = 0x8000000197624800;
    swift_willThrow();
  }

  else
  {
    v4 = *v1;
    v3 = v1[1];
    *&v17 = 36;
    *(&v17 + 1) = 0xE100000000000000;
    sub_19759291C(v4, v3, v2);
    MEMORY[0x19A8E2A50](v4, v3);
    sub_197580A80(v4, v3, v2);
    v5 = OUTLINED_FUNCTION_5_12();
    MEMORY[0x19A8E2A50](v5);
    LOBYTE(v16[0]) = *(v0 + OBJC_IVAR___Predicate_operation);
    v6 = CoreRule.Predicate.Operator.rawValue.getter();
    MEMORY[0x19A8E2A50](v6);

    MEMORY[0x19A8E2A50](4203808, 0xE300000000000000);
    v7 = v17;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34E30, &unk_19761E650);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_197618C10;
    sub_19755FA5C(v0 + OBJC_IVAR___Predicate_value, v16, &qword_1EAF34930, &unk_19761DB90);
    if (v16[3])
    {
      sub_1975586C0(v16, &v17);
      sub_19759425C(v16);
      sub_19756A94C(&v17, (v8 + 32));
    }

    else
    {
      sub_19755C404(v16, &qword_1EAF34930, &unk_19761DB90);
      v17 = 0u;
      v18 = 0u;
      v11 = objc_allocWithZone(MEMORY[0x1E695DFB0]);
      v12 = [v11 init];
      *(v8 + 56) = sub_19755404C(0, &qword_1ED8164F8, 0x1E695DFB0);
      *(v8 + 32) = v12;
      if (*(&v18 + 1))
      {
        sub_19755C404(&v17, &qword_1EAF34340, &unk_19761C8E0);
      }
    }

    sub_19755404C(0, &qword_1ED816508, 0x1E696AE18);
    v9 = sub_19759428C(v7, *(&v7 + 1), v8);
    v13 = sub_1976160A0();
    v14 = [v9 predicateWithSubstitutionVariables_];

    LOBYTE(v9) = [v14 evaluateWithObject_];
  }

  return v9 & 1;
}

id sub_19759428C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1976161B0();

  if (a3)
  {
    v5 = sub_197616450();
  }

  else
  {
    v5 = 0;
  }

  v6 = [swift_getObjCClassFromMetadata() predicateWithFormat:v4 argumentArray:v5];

  return v6;
}

uint64_t sub_197594328(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1975945CC;

  return sub_1975943C0(a1, v1 + 16);
}

uint64_t sub_1975943C0(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34AB8, &qword_197622080) - 8) + 64) + 15;
  v2[4] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_19759445C, 0, 0);
}

uint64_t sub_19759445C()
{
  v1 = v0[3];
  v2 = v0[4];
  type metadata accessor for CoreEvent();
  v4 = v1[3];
  v3 = v1[4];
  v5 = __swift_project_boxed_opaque_existential_1Tm(v1, v4);
  OUTLINED_FUNCTION_0_14(v5, *(v3 + 8));
  v7 = v6(v4);
  v9 = v8;
  v10 = static CoreEvent.modelIdentifiers.getter();
  sub_19756E674(v7, v9, v10);

  v11 = sub_197615F50();
  LODWORD(v3) = __swift_getEnumTagSinglePayload(v2, 1, v11);
  sub_19756E748(v2);
  if (v3 == 1)
  {
    v12 = v0[2];
    v14 = v1[3];
    v13 = v1[4];
    __swift_project_boxed_opaque_existential_1Tm(v0[3], v14);
    type metadata accessor for CoreEventRecord();
    sub_19758E36C();
  }

  v15 = v0[4];

  v16 = v0[1];

  return v16();
}

uint64_t sub_1975945CC()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_1975946C0()
{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_3_13();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_5_1(v0);
  *v1 = v2;
  v1[1] = sub_19755CDC8;
  v3 = OUTLINED_FUNCTION_1_13();

  return v4(v3);
}

uint64_t sub_197594764(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  *(v4 + 16) = a3;
  v8 = (a4 + *a4);
  v5 = a4[1];
  v6 = swift_task_alloc();
  *(v4 + 24) = v6;
  *v6 = v4;
  v6[1] = sub_197598C68;

  return v8();
}

uint64_t sub_19759485C(uint64_t a1, uint64_t *a2, uint64_t a3, int *a4)
{
  v8 = *a2;
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_19755CDC8;

  return sub_197594764(a1, v8, a3, a4);
}

uint64_t sub_197594924(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[8] = a4;
  v5[9] = a5;
  v5[6] = a2;
  v5[7] = a3;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34AB8, &qword_197622080) - 8) + 64) + 15;
  v5[10] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_197594A5C, 0, 0);
}

uint64_t sub_1975949C4()
{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_3_13();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_5_1(v0);
  *v1 = v2;
  v1[1] = sub_19755CCE8;
  v3 = OUTLINED_FUNCTION_1_13();

  return sub_197594924(v3, v4, v5, v6, v7);
}

uint64_t sub_197594A5C()
{
  v2 = v0[9];
  v1 = v0[10];
  v4 = v0[7];
  v3 = v0[8];
  v5 = v0[6];
  type metadata accessor for CoreDonationRecord();
  type metadata accessor for CoreEvent();
  v6 = static CoreEvent.modelIdentifiers.getter();
  sub_19756E674(v4, v3, v6);

  sub_197594C4C(v4, v3, v1, v2, v5);
  v7 = v0[10];

  sub_19756E748(v7);
  v8 = v0[10];

  OUTLINED_FUNCTION_3();

  return v9();
}

uint64_t *sub_197594C4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34AB8, &qword_197622080);
  OUTLINED_FUNCTION_5_2(v11);
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v30 - v15;
  v17 = sub_197615A60();
  v18 = OUTLINED_FUNCTION_5_2(v17);
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v22 = (&v30 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_197594F68();
  if (v23)
  {
    v24 = v23;
    _s10Foundation4DateV10TipKitCoreE13bySubtracting17calendarComponent5count2toACSgAA8CalendarV0I0O_SiACtFZfA1__0();
    v25 = *(v5 + 48);
    v26 = *(v5 + 52);
    swift_allocObject();

    v22 = CoreDonationRecord.init(date:event:donationInfo:)(v22, v24, a4);
    sub_197596728(v16);
    if (v6)
    {
    }

    else
    {
      sub_19756E748(v16);
      if (sub_197615C20())
      {
        sub_197615C70();
      }

      sub_1975968B0();
      sub_1975968F4(a1, a2, a4);
      type metadata accessor for CoreRuleRecord();
      sub_197597C40(v24, a5);
      if (sub_197615C20())
      {
        sub_197615C70();
      }

      if (qword_1ED816C98 != -1)
      {
        swift_once();
      }

      v29 = type metadata accessor for logger();
      __swift_project_value_buffer(v29, qword_1ED816CA0);
      v30 = 0;
      v31 = 0xE000000000000000;
      sub_197616A20();

      v30 = 0x646928746E657645;
      v31 = 0xEA0000000000203ALL;
      MEMORY[0x19A8E2A50](a1, a2);
      MEMORY[0x19A8E2A50](0xD000000000000010, 0x8000000197624300);
      sub_197558864();
    }
  }

  else
  {
    sub_19759228C();
    swift_allocError();
    *v27 = 0xD00000000000002ELL;
    v27[1] = 0x80000001976242D0;
    swift_willThrow();
  }

  return v22;
}

void sub_197594F68()
{
  OUTLINED_FUNCTION_15_12();
  OUTLINED_FUNCTION_50(v3, v4, v5, v6, v7, v8, v9);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34AC8, &unk_197622310);
  OUTLINED_FUNCTION_0(v10);
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_27_8();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34AC0, &qword_19761B6F0);
  v15 = OUTLINED_FUNCTION_5_2(v14);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_103();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_107();
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34AB8, &qword_197622080);
  OUTLINED_FUNCTION_5_2(v19);
  v21 = *(v20 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_30_0();
  v23 = sub_197615F50();
  v24 = OUTLINED_FUNCTION_0(v23);
  v26 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_11_20();
  v27 = OUTLINED_FUNCTION_29_5();
  sub_19755F9A0(v27, v28, &qword_1EAF34AB8, &qword_197622080);
  OUTLINED_FUNCTION_45_0(v2);
  if (v29)
  {
    sub_19755C7C8(v2, &qword_1EAF34AB8, &qword_197622080);
  }

  else
  {
    v30 = OUTLINED_FUNCTION_48_0();
    v31(v30);
    type metadata accessor for CoreEventRecord();
    OUTLINED_FUNCTION_58_0();
    sub_19755FF88(v32, 255, v33);
    OUTLINED_FUNCTION_33_6();
    if (sub_197615C00())
    {
      v42 = OUTLINED_FUNCTION_25_9();
      v43(v42);
    }

    else
    {
      OUTLINED_FUNCTION_105(0, v35, v36, v37, v38, v39, v40, v41, v60);
      MEMORY[0x1EEE9AC00](v44);
      OUTLINED_FUNCTION_19_11();
      OUTLINED_FUNCTION_61();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34AD0, &qword_19761B6F8);
      OUTLINED_FUNCTION_3_10();
      __swift_storeEnumTagSinglePayload(v45, v46, v47, v48);
      sub_19755F9A0(v1, v0, &qword_1EAF34AC0, &qword_19761B6F0);
      OUTLINED_FUNCTION_88();
      OUTLINED_FUNCTION_47_0();
      MEMORY[0x1EEE9AC00](v49);
      OUTLINED_FUNCTION_3_1();
      swift_getKeyPath();
      OUTLINED_FUNCTION_46_0();
      OUTLINED_FUNCTION_4_7();
      swift_setAtWritableKeyPath();

      OUTLINED_FUNCTION_47_0();
      MEMORY[0x1EEE9AC00](v50);
      OUTLINED_FUNCTION_3_1();
      swift_getKeyPath();
      OUTLINED_FUNCTION_46_0();
      OUTLINED_FUNCTION_21_12(v61);
      swift_setAtWritableKeyPath();

      OUTLINED_FUNCTION_47_0();
      MEMORY[0x1EEE9AC00](v51);
      OUTLINED_FUNCTION_3_1();
      swift_getKeyPath();
      OUTLINED_FUNCTION_46_0();
      OUTLINED_FUNCTION_20_11(v62);
      swift_setAtWritableKeyPath();

      OUTLINED_FUNCTION_47_0();
      MEMORY[0x1EEE9AC00](v52);
      OUTLINED_FUNCTION_3_1();
      swift_getKeyPath();
      OUTLINED_FUNCTION_46_0();
      OUTLINED_FUNCTION_125();
      OUTLINED_FUNCTION_4_7();
      swift_setAtWritableKeyPath();

      OUTLINED_FUNCTION_47_0();
      MEMORY[0x1EEE9AC00](v53);
      OUTLINED_FUNCTION_3_1();
      swift_getKeyPath();
      OUTLINED_FUNCTION_46_0();

      OUTLINED_FUNCTION_4_7();
      swift_setAtWritableKeyPath();

      OUTLINED_FUNCTION_47_0();
      MEMORY[0x1EEE9AC00](v54);
      OUTLINED_FUNCTION_3_1();
      swift_getKeyPath();
      OUTLINED_FUNCTION_46_0();
      OUTLINED_FUNCTION_4_7();
      swift_setAtWritableKeyPath();

      OUTLINED_FUNCTION_33_6();
      v57 = sub_197615C80();
      v58 = OUTLINED_FUNCTION_15_15();
      v59(v58);
      sub_197595B38(v57);
      OUTLINED_FUNCTION_122();
      sub_19755C7C8(v1, &qword_1EAF34AC0, &qword_19761B6F0);
      v55 = OUTLINED_FUNCTION_25_9();
      v56(v55);
      OUTLINED_FUNCTION_94();
    }
  }

  OUTLINED_FUNCTION_90();
  OUTLINED_FUNCTION_14_9();
}

__n128 sub_19759547C(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t OUTLINED_FUNCTION_53()
{

  return sub_197615E50();
}

uint64_t sub_197595528@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v23[1] = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF355A0, &qword_197622258);
  v6 = *(v5 - 8);
  v24 = v5;
  v25 = v6;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = v23 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34AF0, &unk_197622320);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = v23 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34C08, &qword_19761BD98);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v19 = v23 - v18;
  v20 = *a1;
  sub_197559AAC(&qword_1ED8164C0, &qword_1EAF34AF0, &unk_197622320);
  sub_197615820();
  v26 = type metadata accessor for CoreEventRecord();
  v27 = sub_19755FF88(&qword_1ED817218, 255, type metadata accessor for CoreEventRecord);
  swift_getKeyPath();
  sub_197615700();

  (*(v11 + 8))(v14, v10);
  sub_197615F50();
  sub_197615810();
  a3[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF355D0, &unk_197622390);
  a3[4] = sub_1975959BC();
  __swift_allocate_boxed_opaque_existential_0(a3);
  sub_197559AAC(&qword_1ED816000, &qword_1EAF34C08, &qword_19761BD98);
  sub_197559AAC(&qword_1ED816D10, &qword_1EAF355A0, &qword_197622258);
  sub_19755FF88(&qword_1ED816C88, 255, MEMORY[0x1E697BC90]);
  v21 = v24;
  sub_1976156F0();
  (*(v25 + 8))(v9, v21);
  return (*(v16 + 8))(v19, v15);
}

unint64_t sub_197595928(uint64_t a1)
{
  result = OUTLINED_FUNCTION_26(a1);
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v3, v4);
    sub_197569AA4(&qword_1ED816CE8);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_1975959BC()
{
  result = qword_1ED816010;
  if (!qword_1ED816010)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF355D0, &unk_197622390);
    sub_197603A94();
    sub_197595A48();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED816010);
  }

  return result;
}

unint64_t sub_197595A48()
{
  result = qword_1ED816D18;
  if (!qword_1ED816D18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF355A0, &qword_197622258);
    v1 = MEMORY[0x1E697BC90];
    sub_19755FF88(&qword_1ED816C80, 255, MEMORY[0x1E697BC90]);
    sub_19755FF88(&qword_1ED816C90, 255, v1);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED816D18);
  }

  return result;
}

uint64_t *CoreDonationRecord.init(date:event:donationInfo:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v5 = *v3;
  v6 = sub_197615A60();
  v7 = OUTLINED_FUNCTION_0(v6);
  v9 = v8;
  v27 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_6_0();
  v14 = v13 - v12;
  v3[6] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF349D8, &qword_19761B3B8);
  OUTLINED_FUNCTION_1_8();
  v17 = sub_197561290(v15, v16);
  v3[7] = OUTLINED_FUNCTION_15_3(v17);
  __swift_allocate_boxed_opaque_existential_1Tm(v3 + 3);
  sub_197615DC0();
  sub_197615A50();
  v18 = v3[7];
  __swift_project_boxed_opaque_existential_1Tm(v4 + 3, v4[6]);
  swift_getKeyPath();
  OUTLINED_FUNCTION_2_8();
  sub_197561290(v19, v20);
  sub_197615BE0();

  v21 = *(v9 + 8);
  v21(v14, v6);
  sub_197595E24(v4 + 3, v4 + 16);
  v22 = v3[7];
  __swift_project_boxed_opaque_existential_1Tm(v4 + 3, v4[6]);
  swift_getKeyPath();
  type metadata accessor for CoreEventRecord();
  OUTLINED_FUNCTION_5_7();
  sub_197561290(v23, v24);
  sub_197615BF0();

  *(v3 + 17) = 0;
  sub_197615B30();
  (*(v27 + 16))(v14, a1, v6);
  CoreDonationRecord.date.setter(v14);
  CoreDonationRecord.donationInfo.setter(a3);

  CoreDonationRecord.event.setter(v25);

  v21(a1, v6);
  return v3;
}

uint64_t sub_197595E24@<X0>(void *a1@<X1>, _BYTE *a2@<X8>)
{
  v3 = a1[4];
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34A68, &qword_19761B690);
  sub_197615BC0();

  *a2 = 0;
  return result;
}

uint64_t CoreDonationRecord.date.setter(uint64_t a1)
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_1_8();
  sub_197561290(v2, v3);
  sub_197615B10();

  v4 = sub_197615A60();
  OUTLINED_FUNCTION_13(v4);
  return (*(v5 + 8))(a1);
}

uint64_t sub_197595FD8()
{
  swift_getKeyPath();
  sub_197561290(&qword_1ED8171B0, type metadata accessor for CoreDonationRecord);
  sub_197561290(&qword_1ED816D90, MEMORY[0x1E6969530]);
  sub_197615E70();
}

uint64_t sub_1975960B0()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_197595FD8();
}

uint64_t CoreDonationRecord.persistentBackingData.getter@<X0>(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_35();
  swift_beginAccess();
  return sub_19755A560(v1 + 24, a1);
}

uint64_t sub_197596148@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = CoreDonationRecord.donationInfo.getter();
  *a2 = result;
  return result;
}

uint64_t sub_197596178(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_1_8();
  sub_197561290(v6, v7);
  sub_197615B10();

  return a4(a1);
}

uint64_t sub_197596238()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_197596254();
}

uint64_t sub_197596254()
{
  swift_getKeyPath();
  sub_197561290(&qword_1ED8171B0, type metadata accessor for CoreDonationRecord);
  sub_197615DF0();
}

uint64_t sub_197596328@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = CoreDonationRecord.event.getter();
  *a2 = result;
  return result;
}

uint64_t sub_197596358()
{
  swift_getKeyPath();
  sub_197561290(&qword_1ED8171B0, type metadata accessor for CoreDonationRecord);
  sub_197561290(&qword_1ED817218, type metadata accessor for CoreEventRecord);
  sub_197615E80();
}

uint64_t sub_197596430()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_197596358();
}

uint64_t *CoreDonationRecord.init(backingData:)(__int128 *a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = sub_197615A60();
  v6 = OUTLINED_FUNCTION_0(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_6_0();
  v13 = v12 - v11;
  v1[6] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF349D8, &qword_19761B3B8);
  OUTLINED_FUNCTION_1_8();
  v16 = sub_197561290(v14, v15);
  v1[7] = OUTLINED_FUNCTION_15_3(v16);
  __swift_allocate_boxed_opaque_existential_1Tm(v1 + 3);
  sub_197615DC0();
  sub_197615A50();
  v17 = v1[7];
  __swift_project_boxed_opaque_existential_1Tm(v2 + 3, v2[6]);
  swift_getKeyPath();
  OUTLINED_FUNCTION_2_8();
  sub_197561290(v18, v19);
  sub_197615BE0();

  (*(v8 + 8))(v13, v5);
  sub_197595E24(v2 + 3, v2 + 16);
  v20 = v1[7];
  __swift_project_boxed_opaque_existential_1Tm(v2 + 3, v2[6]);
  swift_getKeyPath();
  type metadata accessor for CoreEventRecord();
  OUTLINED_FUNCTION_5_7();
  sub_197561290(v21, v22);
  sub_197615BF0();

  *(v1 + 17) = 0;
  sub_197615B30();
  *(v1 + 8) = 0;
  OUTLINED_FUNCTION_43_0();
  __swift_destroy_boxed_opaque_existential_0Tm(v1 + 3);
  sub_1975558C4(a1, (v1 + 3));
  swift_endAccess();
  return v1;
}

uint64_t CoreDonationRecord.__allocating_init(backingData:)(__int128 *a1)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  v5 = swift_allocObject();
  CoreDonationRecord.init(backingData:)(a1);
  return v5;
}

uint64_t sub_197596728@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for CoreDonationRecord();
  sub_197567E50(&qword_1ED8171B0, type metadata accessor for CoreDonationRecord);
  if (sub_197615DD0())
  {
  }

  else
  {
    sub_197615CD0();
  }

  sub_197615DB0();
  v2 = sub_197615F50();
  return __swift_storeEnumTagSinglePayload(a1, 0, 1, v2);
}

uint64_t CoreDonationRecord.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 3);
  v1 = OBJC_IVAR____TtC10TipKitCore18CoreDonationRecord___observationRegistrar;
  v2 = sub_197615B40();
  OUTLINED_FUNCTION_13(v2);
  (*(v3 + 8))(v0 + v1);
  v4 = *(*v0 + 48);
  v5 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v4, v5);
}

unint64_t sub_1975968B0()
{
  result = qword_1ED816020;
  if (!qword_1ED816020)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ED816020);
  }

  return result;
}

void sub_1975968F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_197596B10(a1, a2, a3);
  if (v5)
  {
    v9 = v5;
    if (qword_1ED815ED0 != -1)
    {
      swift_once();
    }

    if (byte_1ED8157A8 == 1)
    {
      v6 = sub_1975A35CC();
      [v6 sendEvent_];

      if (qword_1ED816C98 != -1)
      {
        swift_once();
      }

      v7 = type metadata accessor for logger();
      __swift_project_value_buffer(v7, qword_1ED816CA0);
      sub_197616A20();

      MEMORY[0x19A8E2A50](a1, a2);
      MEMORY[0x19A8E2A50](0xD000000000000026, 0x8000000197623710);
      sub_197558864();
    }

    else
    {
      if (qword_1ED815ED8 != -1)
      {
        swift_once();
      }

      v8 = type metadata accessor for logger();
      __swift_project_value_buffer(v8, qword_1ED815EE0);
      sub_197558864();
    }
  }
}

id sub_197596B10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v19[3] = *MEMORY[0x1E69E9840];
  if (qword_1ED8174E0 != -1)
  {
    swift_once();
  }

  if (byte_1ED8174EA == 1)
  {
    if (qword_1ED817298 != -1)
    {
      swift_once();
    }

    if ((byte_1ED8172A5 & 1) == 0)
    {
      if (qword_1ED816168 != -1)
      {
        swift_once();
      }

      v7 = qword_1ED81D1A0;
      v8 = *algn_1ED81D1A8;
      if (a3)
      {
        v9 = objc_opt_self();

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF345E8, &qword_197619050);
        v10 = sub_1976160A0();
        v19[0] = 0;
        v11 = [v9 dataWithJSONObject:v10 options:0 error:v19];

        v12 = v19[0];
        if (v11)
        {
          a3 = sub_1976159A0();
          v14 = v13;

LABEL_18:
          objc_allocWithZone(MEMORY[0x1E698EBC0]);

          result = sub_19759701C(a1, a2, 0, 0, v7, v8, a3, v14);
          goto LABEL_19;
        }

        v15 = v12;
        v16 = sub_197615830();

        swift_willThrow();
        if (qword_1ED816C98 != -1)
        {
          swift_once();
        }

        v17 = type metadata accessor for logger();
        __swift_project_value_buffer(v17, qword_1ED816CA0);
        v19[0] = 0;
        v19[1] = 0xE000000000000000;
        sub_197616A20();
        MEMORY[0x19A8E2A50](0xD00000000000002DLL, 0x8000000197623740);
        swift_getErrorValue();
        sub_197616EB0();
        sub_197558864();

        a3 = 0;
      }

      else
      {
      }

      v14 = 0xF000000000000000;
      goto LABEL_18;
    }
  }

  result = 0;
LABEL_19:
  v18 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_197596E14()
{
  if (qword_1ED817298 != -1)
  {
    swift_once();
  }

  v0 = 0xE300000000000000;
  v1 = 5459817;
  switch(byte_1ED8172A1)
  {
    case 1:
      v0 = 0xE500000000000000;
      v1 = 0x534F63616DLL;
      break;
    case 2:
      v0 = 0xE400000000000000;
      v1 = 1397716596;
      break;
    case 3:
      v0 = 0xE800000000000000;
      v1 = 0x534F6E6F69736976;
      break;
    case 4:
      v0 = 0xE700000000000000;
      v1 = 0x534F6863746177;
      break;
    default:
      break;
  }

  MEMORY[0x19A8E2A50](v1, v0);

  MEMORY[0x19A8E2A50](45, 0xE100000000000000);
  if (qword_1ED816170 != -1)
  {
    swift_once();
  }

  v2 = qword_1ED81D1B0;
  v3 = *algn_1ED81D1B8;

  MEMORY[0x19A8E2A50](v2, v3);

  qword_1ED81D1A0 = 0;
  *algn_1ED81D1A8 = 0xE000000000000000;
  return result;
}

void sub_197596FA0()
{
  v0 = sub_1976161B0();
  v1 = MGGetStringAnswer();

  if (v1)
  {
    v2 = sub_1976161E0();
    v4 = v3;

    qword_1ED81D1B0 = v2;
    *algn_1ED81D1B8 = v4;
  }

  else
  {
    __break(1u);
  }
}

id sub_19759701C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, unint64_t a8)
{
  if (a2)
  {
    v13 = sub_1976161B0();

    if (a4)
    {
      goto LABEL_3;
    }

LABEL_6:
    v14 = 0;
    if (a6)
    {
      goto LABEL_4;
    }

    goto LABEL_7;
  }

  v13 = 0;
  if (!a4)
  {
    goto LABEL_6;
  }

LABEL_3:
  v14 = sub_1976161B0();

  if (a6)
  {
LABEL_4:
    v15 = sub_1976161B0();

    goto LABEL_8;
  }

LABEL_7:
  v15 = 0;
LABEL_8:
  if (a8 >> 60 == 15)
  {
    v16 = 0;
  }

  else
  {
    v16 = sub_197615990();
    sub_197576558(a7, a8);
  }

  v17 = [v8 initWithContentIdentifier:v13 context:v14 osBuild:v15 userInfo:v16];

  return v17;
}

uint64_t sub_197597140(uint64_t a1, uint64_t a2)
{
  v4 = sub_197553EE0(0xD000000000000022, 0x8000000197625E80, &qword_1ED816F08, 0x1E695DEC8);
  if (v4)
  {
    v5 = sub_197553BF8(v4);

    if (v5)
    {
      v32 = a1;
      v33 = a2;
      MEMORY[0x1EEE9AC00](v6);
      OUTLINED_FUNCTION_2_0();
      *(v7 - 16) = &v32;
      v9 = sub_1975544B4(sub_1975F8D28, v8, v5);

      if (v9)
      {
        goto LABEL_41;
      }
    }
  }

  v10 = sub_197553EE0(0xD00000000000001ELL, 0x8000000197625EB0, &qword_1ED816F08, 0x1E695DEC8);
  if (v10)
  {
    v11 = sub_197553BF8(v10);

    if (v11)
    {
      v32 = a1;
      v33 = a2;
      MEMORY[0x1EEE9AC00](v12);
      OUTLINED_FUNCTION_2_0();
      *(v13 - 16) = &v32;
      v15 = sub_1975544B4(sub_1975F8D28, v14, v11);

      if (v15)
      {
        goto LABEL_41;
      }
    }
  }

  v16 = OUTLINED_FUNCTION_19();
  v18 = sub_1975975F4(v16, v17);
  if (v19)
  {
    v20 = v18;
    v21 = v19;
    if (v18 == 0x6972772D64616572 && v19 == 0xEA00000000006574)
    {
      goto LABEL_40;
    }

    OUTLINED_FUNCTION_19();
    if (sub_197616EF0())
    {
      goto LABEL_40;
    }

    if (v20 == 0x6E6F2D6574697277 && v21 == 0xEA0000000000796CLL)
    {
      goto LABEL_40;
    }

    OUTLINED_FUNCTION_19();
    v24 = sub_197616EF0();

    if (v24)
    {
LABEL_41:
      v30 = 1;
      return v30 & 1;
    }
  }

  if (qword_1ED817510 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  if (qword_1ED817578)
  {
    v25 = qword_1ED817570;
    v26 = qword_1ED817578;
  }

  else
  {
    if (qword_1ED8174D8 != -1)
    {
      swift_once();
    }

    if (qword_1ED81D218)
    {
      v25 = qword_1ED81D210;
      v26 = qword_1ED81D218;
    }

    else
    {
      type metadata accessor for CFBundle(0);
      v27 = sub_1975A5740();
      if (v28)
      {
        v25 = v27;
      }

      else
      {
        v25 = 0;
      }

      if (v28)
      {
        v26 = v28;
      }

      else
      {
        v26 = 0xE000000000000000;
      }
    }
  }

  if (v25 == 0xD000000000000010 && 0x8000000197623CB0 == v26)
  {

LABEL_40:

    goto LABEL_41;
  }

  v30 = sub_197616EF0();

  return v30 & 1;
}

uint64_t sub_1975974C4()
{
  result = sub_197597140(0xD000000000000017, 0x8000000197623C60);
  byte_1ED8157A8 = result & 1;
  return result;
}

uint64_t sub_197597500(uint64_t a1)
{
  v1 = 0;
  v2 = *(a1 + 16);
  v3 = v2;
  v4 = a1 + 32;
  while (v2 != v1)
  {
    v5 = *(v4 + 8 * v1);
    if (sub_1975975B0(v5) != *(v5 + 16) || (v6 & 1) == 0)
    {
      sub_1975975B0(v5);
      return v1;
    }

    ++v1;
  }

  return v3;
}

uint64_t sub_1975975B0(uint64_t a1)
{
  v2 = 0;
  v3 = *(a1 + 16);
  result = v3;
  v5 = a1 + 32;
  while (v3 != v2)
  {
    if (*(*(v5 + 8 * v2) + 16))
    {
      return v2;
    }

    ++v2;
  }

  return result;
}

uint64_t sub_1975975F4(uint64_t a1, uint64_t a2)
{
  sub_1975976DC();
  if (!v4)
  {
    v7 = 0u;
    v8 = 0u;
    goto LABEL_8;
  }

  sub_197579604(a1, a2);

  if (!*(&v8 + 1))
  {
LABEL_8:
    sub_19755643C(&v7);
    return 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34390, &qword_197618390);
  if (OUTLINED_FUNCTION_3_35())
  {
    sub_197579604(1701080941, 0xE400000000000000);

    if (OUTLINED_FUNCTION_3_35())
    {
      return v6;
    }
  }

  return 0;
}

void sub_1975976DC()
{
  v0 = sub_197553EE0(0xD000000000000030, 0x8000000197625ED0, &qword_1ED816FC8, 0x1E695DF20);
  if (v0)
  {
    v1 = v0;
    v2 = v0 + 64;
    v3 = 1 << *(v0 + 32);
    v4 = -1;
    if (v3 < 64)
    {
      v4 = ~(-1 << v3);
    }

    v5 = v4 & *(v0 + 64);
    v6 = (v3 + 63) >> 6;

    v7 = 0;
    v8 = MEMORY[0x1E69E7CC0];
LABEL_5:
    if (v5)
    {
      goto LABEL_10;
    }

    while (1)
    {
      v9 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        break;
      }

      if (v9 >= v6)
      {

        v20 = 0;
        v21 = MEMORY[0x1E69E7CC0];
        v22 = *(v8 + 16);
        while (1)
        {
          while (1)
          {
            if (v22 == v20)
            {

              sub_1975F3370(v21);
              return;
            }

            if (v20 >= *(v8 + 16))
            {
              goto LABEL_43;
            }

            v23 = *(v8 + 8 * v20 + 32);
            if (*(v23 + 16))
            {
              break;
            }

LABEL_24:
            ++v20;
          }

          v24 = *(v8 + 8 * v20 + 32);

          v25 = sub_19755C610();
          if ((v26 & 1) == 0 || (sub_1975586C0(*(v23 + 56) + 32 * v25, v42), __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34390, &qword_197618390), (swift_dynamicCast() & 1) == 0))
          {

            goto LABEL_24;
          }

          v39 = v21;
          v27 = *(v40 + 16);
          if (v27)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF35480, &qword_197621CC8);
            v28 = swift_allocObject();
            v29 = _swift_stdlib_malloc_size(v28);
            *(v28 + 16) = v27;
            *(v28 + 24) = 2 * ((v29 - 32) / 48);
            v30 = sub_1975E9F00(v42, (v28 + 32), v27, v40);
            sub_1975A4D3C();
            if (v30 != v27)
            {
              goto LABEL_46;
            }
          }

          else
          {

            v28 = MEMORY[0x1E69E7CC0];
          }

          v31 = sub_1975B7DE4(v28);

          v32 = *(v31 + 16);
          v33 = *(v39 + 16);
          if (__OFADD__(v33, v32))
          {
            goto LABEL_44;
          }

          if (!swift_isUniquelyReferenced_nonNull_native() || (v34 = *(v39 + 24) >> 1, v34 < v33 + v32))
          {
            sub_1975BB55C();
            v39 = v35;
            v34 = *(v35 + 24) >> 1;
          }

          if (*(v31 + 16))
          {
            if (v34 - *(v39 + 16) < v32)
            {
              goto LABEL_47;
            }

            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF349B0, &qword_19761B200);
            swift_arrayInitWithCopy();

            v21 = v39;
            if (v32)
            {
              v36 = *(v39 + 16);
              v37 = __OFADD__(v36, v32);
              v38 = v36 + v32;
              if (v37)
              {
                goto LABEL_48;
              }

              *(v39 + 16) = v38;
            }
          }

          else
          {

            v21 = v39;
            if (v32)
            {
              goto LABEL_45;
            }
          }

          ++v20;
        }
      }

      v5 = *(v2 + 8 * v9);
      ++v7;
      if (v5)
      {
        v7 = v9;
LABEL_10:
        v10 = __clz(__rbit64(v5));
        v5 &= v5 - 1;
        v11 = v10 | (v7 << 6);
        v12 = (*(v1 + 48) + 16 * v11);
        v14 = *v12;
        v13 = v12[1];
        sub_1975586C0(*(v1 + 56) + 32 * v11, &v43);
        v42[0] = v14;
        v42[1] = v13;
        v40 = v14;

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34390, &qword_197618390);
        if ((swift_dynamicCast() & 1) != 0 && v41)
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v17 = *(v8 + 16);
            sub_1975BB46C();
            v8 = v18;
          }

          v15 = *(v8 + 16);
          v16 = v15 + 1;
          if (v15 >= *(v8 + 24) >> 1)
          {
            sub_1975BB46C();
            v16 = v15 + 1;
            v8 = v19;
          }

          *(v8 + 16) = v16;
          *(v8 + 8 * v15 + 32) = v41;
        }

        goto LABEL_5;
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
LABEL_47:
    __break(1u);
LABEL_48:
    __break(1u);
  }
}

uint64_t sub_197597B9C()
{
  v0 = type metadata accessor for logger();
  __swift_allocate_value_buffer(v0, qword_1ED815EE0);
  *OUTLINED_FUNCTION_13_18() = 4;
  if (qword_1ED817298 != -1)
  {
    OUTLINED_FUNCTION_0_6();
  }

  OUTLINED_FUNCTION_16_14();
  if (v1)
  {
    OUTLINED_FUNCTION_17_14();
  }

  return OUTLINED_FUNCTION_7_20();
}

uint64_t sub_197597C40(uint64_t a1, uint64_t a2)
{
  result = sub_197597D94(a2);
  if (!v2)
  {
    v5 = result;
    result = sub_197567E4C(result);
    if (result)
    {
      v6 = result;
      for (i = 0; v6 != i; ++i)
      {
        if ((v5 & 0xC000000000000001) != 0)
        {
          result = MEMORY[0x19A8E31E0](i, v5);
        }

        else
        {
          if (i >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_18;
          }

          v8 = *(v5 + 8 * i + 32);
        }

        if (__OFADD__(i, 1))
        {
          __break(1u);
LABEL_18:
          __break(1u);
          return result;
        }

        if (!sub_197576674())
        {
          goto LABEL_14;
        }

        if (CoreTipRecord.status.getter() == 2)
        {

LABEL_14:
        }

        sub_197592594(a1);
        sub_197577F90();
      }
    }
  }

  return result;
}

uint64_t sub_197597D94(uint64_t a1)
{
  v49 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34D10, &unk_19761C4F0);
  v2 = OUTLINED_FUNCTION_0(v1);
  v47 = v3;
  v48 = v2;
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v46 = &v44 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34D18, &unk_19761CC40);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x1EEE9AC00](v7 - 8);
  v11 = &v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v45 = &v44 - v12;
  if (qword_1ED817510 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  if (qword_1ED817578)
  {
    v13 = qword_1ED817570;
    v14 = qword_1ED817578;
  }

  else
  {
    if (qword_1ED8174D8 != -1)
    {
      OUTLINED_FUNCTION_4_3();
    }

    if (qword_1ED81D218)
    {
      v13 = qword_1ED81D210;
      v14 = qword_1ED81D218;
    }

    else
    {
      type metadata accessor for CFBundle(0);
      v15 = sub_1975A5740();
      if (v16)
      {
        v13 = v15;
      }

      else
      {
        v13 = 0;
      }

      if (v16)
      {
        v14 = v16;
      }

      else
      {
        v14 = 0xE000000000000000;
      }
    }
  }

  if (v13 == 0xD000000000000010 && 0x8000000197623CB0 == v14)
  {
    goto LABEL_45;
  }

  OUTLINED_FUNCTION_21_3();
  v18 = sub_197616EF0();

  if (v18)
  {
    goto LABEL_46;
  }

  if (qword_1ED817578)
  {
    v19 = qword_1ED817570;
    v20 = qword_1ED817578;
  }

  else
  {
    if (qword_1ED8174D8 != -1)
    {
      OUTLINED_FUNCTION_4_3();
    }

    if (qword_1ED81D218)
    {
      v19 = qword_1ED81D210;
      v20 = qword_1ED81D218;
    }

    else
    {
      type metadata accessor for CFBundle(0);
      v21 = sub_1975A5740();
      v19 = v22 ? v21 : 0;
      v20 = v22 ? v22 : 0xE000000000000000;
    }
  }

  if (v19 == 0x6C7070612E6D6F63 && v20 == 0xEF64737069742E65)
  {
LABEL_45:
  }

  else
  {
    OUTLINED_FUNCTION_21_3();
    v24 = sub_197616EF0();

    if (v24 & 1) == 0 && (sub_19756F1CC())
    {
      v25 = CoreEventRecord.id.getter();
      v27 = v26;
      type metadata accessor for CoreRule();
      v28 = sub_19757536C();
      v29 = HIBYTE(v27) & 0xF;
      if ((v27 & 0x2000000000000000) == 0)
      {
        v29 = v25 & 0xFFFFFFFFFFFFLL;
      }

      if (v29)
      {
        v30 = *(v28 + 16);

        if (v30)
        {
          v31 = sub_19757536C();
          v44 = &v44;
          *(&v44 - 4) = MEMORY[0x1EEE9AC00](v31);
          *(&v44 - 3) = v25;
          *(&v44 - 2) = v27;
          v52 = type metadata accessor for CoreRuleRecord();
          v32 = v45;
          sub_197615AE0();

          v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34D20, &qword_19761C500);
          __swift_storeEnumTagSinglePayload(v32, 0, 1, v33);
          sub_19757D6D4(v32, v11);
          sub_1975611B4(&qword_1ED817280, type metadata accessor for CoreRuleRecord);
          v34 = v46;
          v35 = sub_197615D90();
          MEMORY[0x1EEE9AC00](v35);
          OUTLINED_FUNCTION_3_1();
          swift_getKeyPath();
          v50 = 0;
          v51 = 1;
          OUTLINED_FUNCTION_14_1();

          MEMORY[0x1EEE9AC00](v36);
          OUTLINED_FUNCTION_3_1();
          swift_getKeyPath();
          v50 = 0;
          v51 = 1;
          OUTLINED_FUNCTION_14_1();

          OUTLINED_FUNCTION_21_0();
          MEMORY[0x1EEE9AC00](v37);
          OUTLINED_FUNCTION_3_1();
          swift_getKeyPath();
          LOBYTE(v50) = 0;
          OUTLINED_FUNCTION_14_1();

          OUTLINED_FUNCTION_21_0();
          MEMORY[0x1EEE9AC00](v38);
          OUTLINED_FUNCTION_3_1();
          swift_getKeyPath();
          OUTLINED_FUNCTION_8_8();

          OUTLINED_FUNCTION_21_0();
          MEMORY[0x1EEE9AC00](v39);
          OUTLINED_FUNCTION_3_1();
          swift_getKeyPath();
          OUTLINED_FUNCTION_8_8();

          OUTLINED_FUNCTION_21_0();
          MEMORY[0x1EEE9AC00](v40);
          OUTLINED_FUNCTION_3_1();
          swift_getKeyPath();
          OUTLINED_FUNCTION_8_8();

          v41 = sub_197615C80();
          (*(v47 + 8))(v34, v48);
          sub_19755C820(v32, &qword_1EAF34D18, &unk_19761CC40);
          return v41;
        }
      }

      else
      {
      }

      return MEMORY[0x1E69E7CC0];
    }
  }

LABEL_46:
  CoreEventRecord.rules.getter();
  if (v42)
  {
    return v42;
  }

  else
  {
    return MEMORY[0x1E69E7CC0];
  }
}

__n128 sub_197598428(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_197598484@<X0>(uint64_t a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  OUTLINED_FUNCTION_27_3(a1, a2, a3);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34BB0, &qword_19761BAD0);
  OUTLINED_FUNCTION_0(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_5_3();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF350E8, &qword_19761F0A8);
  OUTLINED_FUNCTION_0(v7);
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_5_3();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF350F0, &qword_19761F0B0);
  OUTLINED_FUNCTION_0(v11);
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_5_3();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF350F8, &qword_19761F0B8);
  OUTLINED_FUNCTION_0(v15);
  v17 = *(v16 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_5_3();
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF35080, &qword_19761EF78);
  OUTLINED_FUNCTION_0(v19);
  v21 = *(v20 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v22);
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF35088, &qword_19761EF80);
  OUTLINED_FUNCTION_0(v61);
  v24 = *(v23 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v25);
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF346F0, &qword_1976192E8);
  OUTLINED_FUNCTION_0(v60);
  v27 = *(v26 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v28);
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF350D8, &qword_19761F020);
  OUTLINED_FUNCTION_0(v62);
  v30 = *(v29 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_14_3(v32, v59);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34730, &qword_197619350);
  OUTLINED_FUNCTION_32_3();
  sub_197615810();
  OUTLINED_FUNCTION_1_11();
  sub_1975D4F2C(v33);
  OUTLINED_FUNCTION_25_4();
  swift_getKeyPath();
  OUTLINED_FUNCTION_20_6();

  v34 = OUTLINED_FUNCTION_16_8();
  v35(v34);
  OUTLINED_FUNCTION_3_21();
  sub_1975D4F2C(v36);
  OUTLINED_FUNCTION_7_12();
  sub_1975D4F2C(v37);
  OUTLINED_FUNCTION_5_15();
  sub_1975D4F2C(v38);
  OUTLINED_FUNCTION_9_11();
  v39 = OUTLINED_FUNCTION_24_5();
  v40(v39);
  v41 = OUTLINED_FUNCTION_22_6();
  v42(v41);
  OUTLINED_FUNCTION_26_5();
  swift_getKeyPath();
  OUTLINED_FUNCTION_19_5();

  v43 = OUTLINED_FUNCTION_17_7();
  v44(v43);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34AF8, &qword_19761B850);
  type metadata accessor for CoreEventRecord();
  sub_1975D4F2C(&unk_1ED815E98);
  sub_1975D4F2C(&qword_1ED8164D0);
  OUTLINED_FUNCTION_12_11();
  v45 = OUTLINED_FUNCTION_21_6();
  v46(v45);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34400, &qword_1976185C0);
  OUTLINED_FUNCTION_32_3();
  sub_197615810();
  OUTLINED_FUNCTION_3_0();
  sub_1975D4F2C(v47);
  sub_1975D4F2C(&qword_1ED816CF0);
  OUTLINED_FUNCTION_10_12(&qword_1ED816C68);
  OUTLINED_FUNCTION_11_11();
  v48 = OUTLINED_FUNCTION_29_3();
  v49(v48);
  v50 = OUTLINED_FUNCTION_28_3();
  v51(v50);
  v63[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF35100, &qword_19761F0E8);
  v63[4] = sub_19757D928(&unk_1ED815EC8);
  __swift_allocate_boxed_opaque_existential_0(v63);
  OUTLINED_FUNCTION_4_24();
  sub_1975D4F2C(v52);
  OUTLINED_FUNCTION_3_23();
  sub_1975D4F2C(v53);
  OUTLINED_FUNCTION_13_10();
  v54 = OUTLINED_FUNCTION_31_3();
  v55(v54);
  v56 = OUTLINED_FUNCTION_30_5();
  return v57(v56);
}

unint64_t sub_197598BC4()
{
  result = qword_1ED815EC0;
  if (!qword_1ED815EC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF350F0, &qword_19761F0B0);
    sub_1975D4E9C(&unk_1ED815EA0);
    sub_19758F898();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED815EC0);
  }

  return result;
}

uint64_t sub_197598C68()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_16();
  v2 = *(v1 + 24);
  v3 = *v0;
  OUTLINED_FUNCTION_2();
  *v4 = v3;

  return MEMORY[0x1EEE6DFA0](sub_197598D54, 0, 0);
}

uint64_t sub_197598D54()
{
  OUTLINED_FUNCTION_1();
  v1 = *(v0 + 16);
  swift_continuation_resume();
  OUTLINED_FUNCTION_3();

  return v2();
}

uint64_t sub_197598DAC()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_16();
  v2 = v1[6];
  v3 = v1[5];
  v4 = v1[4];
  v5 = *v0;
  OUTLINED_FUNCTION_2();
  *v6 = v5;

  return MEMORY[0x1EEE6DFA0](sub_197598ED0, 0, 0);
}

uint64_t sub_197598EF0(void *a1)
{
  v40 = sub_197615970();
  OUTLINED_FUNCTION_14();
  v38 = v3;
  v5 = *(v4 + 64);
  v7 = MEMORY[0x1EEE9AC00](v6);
  v37 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v37 - v9;
  v11 = sub_197615A60();
  OUTLINED_FUNCTION_14();
  v39 = v12;
  v14 = *(v13 + 64);
  v16 = MEMORY[0x1EEE9AC00](v15);
  v18 = &v37 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v37 - v19;
  v21 = a1[4];
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_197617250();
  sub_1975586C0(v1, v44);
  sub_19755404C(0, &qword_1ED8164F8, 0x1E695DFB0);
  if (!OUTLINED_FUNCTION_3_3())
  {
    OUTLINED_FUNCTION_10_0();
    if (swift_dynamicCast())
    {
      goto LABEL_4;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34320, &qword_197618338);
    if (OUTLINED_FUNCTION_3_3())
    {
      sub_1975558C4(&v43, v41);
      __swift_project_boxed_opaque_existential_1Tm(v41, v41[3]);
      OUTLINED_FUNCTION_2_2();
      sub_197616140();
      __swift_destroy_boxed_opaque_existential_0Tm(v41);
    }

    else if (OUTLINED_FUNCTION_3_3())
    {
      OUTLINED_FUNCTION_11_1();
      OUTLINED_FUNCTION_6();
      sub_197616FA0();
    }

    else if (OUTLINED_FUNCTION_3_3())
    {
      OUTLINED_FUNCTION_11_1();
      OUTLINED_FUNCTION_2_2();
      sub_197616FD0();
    }

    else if (OUTLINED_FUNCTION_3_3())
    {
      OUTLINED_FUNCTION_20_2();
      OUTLINED_FUNCTION_4_0();
      sub_197617000();
    }

    else if (OUTLINED_FUNCTION_3_3())
    {
      OUTLINED_FUNCTION_20_2();
      OUTLINED_FUNCTION_4_0();
      sub_197617010();
    }

    else if (OUTLINED_FUNCTION_3_3())
    {
      OUTLINED_FUNCTION_11_1();
      OUTLINED_FUNCTION_6();
      sub_197617020();
    }

    else if (OUTLINED_FUNCTION_3_3())
    {
      OUTLINED_FUNCTION_11_1();
      OUTLINED_FUNCTION_2_2();
      sub_197617030();
    }

    else if (OUTLINED_FUNCTION_3_3())
    {
      OUTLINED_FUNCTION_11_1();
      OUTLINED_FUNCTION_2_2();
      sub_197616FE0();
    }

    else if (OUTLINED_FUNCTION_3_3())
    {
      OUTLINED_FUNCTION_20_2();
      OUTLINED_FUNCTION_4_0();
      sub_197617040();
    }

    else if (OUTLINED_FUNCTION_3_3())
    {
      OUTLINED_FUNCTION_20_2();
      OUTLINED_FUNCTION_4_0();
      sub_197617050();
    }

    else if (OUTLINED_FUNCTION_3_3())
    {
      OUTLINED_FUNCTION_11_1();
      OUTLINED_FUNCTION_6();
      sub_197617060();
    }

    else if (OUTLINED_FUNCTION_3_3())
    {
      OUTLINED_FUNCTION_11_1();
      OUTLINED_FUNCTION_2_2();
      sub_197617070();
    }

    else if (OUTLINED_FUNCTION_3_3())
    {
      OUTLINED_FUNCTION_17();
      OUTLINED_FUNCTION_15_1();
      sub_197616FC0();
    }

    else if (OUTLINED_FUNCTION_3_3())
    {
      OUTLINED_FUNCTION_17();
      OUTLINED_FUNCTION_15_1();
      sub_197616FB0();
    }

    else
    {
      if (OUTLINED_FUNCTION_3_3())
      {
        __swift_mutable_project_boxed_opaque_existential_1(v45, v46);
        sub_197616F90();
      }

      else
      {
        OUTLINED_FUNCTION_10_0();
        if (swift_dynamicCast())
        {
          (*(v39 + 32))(v18, v20, v11);
          OUTLINED_FUNCTION_17();
          sub_19759F44C(&qword_1ED816D90, MEMORY[0x1E6969530]);
          sub_197616FF0();
          (*(v39 + 8))(v18, v11);
          goto LABEL_33;
        }

        OUTLINED_FUNCTION_10_0();
        if (swift_dynamicCast())
        {
          (*(v38 + 32))(v37, v10, v40);
          OUTLINED_FUNCTION_17();
          sub_19759F44C(&qword_1ED8161F0, MEMORY[0x1E6968FB0]);
          sub_197616FF0();
          (*(v38 + 8))(v37, v40);
          goto LABEL_33;
        }

        sub_19755404C(0, &qword_1ED816018, 0x1E696AD98);
        if (OUTLINED_FUNCTION_3_3())
        {
          v23 = v43;
          sub_19759DE6C(v43, v45);

          goto LABEL_33;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34328, &qword_197618340);
        if (OUTLINED_FUNCTION_3_3())
        {
          sub_1975F3078(v43);
          v25 = v24;

          v41[0] = v25;
          OUTLINED_FUNCTION_20_2();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34360, &qword_19761E170);
          sub_19759F3C0();
        }

        else
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34330, &qword_197618348);
          OUTLINED_FUNCTION_10_0();
          if ((swift_dynamicCast() & 1) == 0)
          {
            v33 = sub_197616A90();
            swift_allocError();
            v35 = v34;
            v36 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34338, &unk_197618350) + 48);
            sub_1975586C0(v1, v35);
            __swift_project_boxed_opaque_existential_1Tm(v45, v46);
            OUTLINED_FUNCTION_23();
            sub_197616F80();
            sub_197616A60();
            (*(*(v33 - 8) + 104))(v35, *MEMORY[0x1E69E6B30], v33);
            swift_willThrow();
            goto LABEL_33;
          }

          v40 = v41[0];
          v26 = *(v41[0] + 16);
          if (v26)
          {
            v42 = MEMORY[0x1E69E7CC0];
            sub_1975D1F14();
            v27 = v42;
            v28 = v40 + 32;
            do
            {
              v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34340, &unk_19761C8E0);
              v30 = swift_allocObject();
              sub_19755F9A0(v28, v30 + 16, &qword_1EAF34340, &unk_19761C8E0);
              v42 = v27;
              v31 = *(v27 + 16);
              if (v31 >= *(v27 + 24) >> 1)
              {
                sub_1975D1F14();
                v27 = v42;
              }

              *(v27 + 16) = v31 + 1;
              v32 = v27 + 32 * v31;
              *(v32 + 32) = v30;
              *(v32 + 40) = v43;
              *(v32 + 56) = v29;
              v28 += 32;
              --v26;
            }

            while (v26);
          }

          else
          {

            v27 = MEMORY[0x1E69E7CC0];
          }

          *&v43 = v27;
          OUTLINED_FUNCTION_20_2();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34348, &unk_197618360);
          sub_19759F2A0();
        }

        sub_197616FF0();
      }
    }

LABEL_33:
    __swift_destroy_boxed_opaque_existential_0Tm(v44);
    return __swift_destroy_boxed_opaque_existential_0Tm(v45);
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0Tm(v44);
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_15_1();
  sub_197617080();
  return __swift_destroy_boxed_opaque_existential_0Tm(v45);
}

uint64_t sub_19759989C@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  a3[3] = MEMORY[0x1E69E6158];
  *a3 = result;
  a3[1] = a2;
  return result;
}

uint64_t sub_1975998B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34400, &qword_1976185C0);
  a3[3] = result;
  *a3 = a1;
  a3[1] = a2;
  return result;
}

uint64_t sub_1975998FC()
{
  if (*(v0 + 40))
  {
    __swift_destroy_boxed_opaque_existential_0Tm((v0 + 16));
  }

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1975999BC()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1975999F4()
{
  v1 = *(v0 + 16);
  v2 = sub_197616620();
  OUTLINED_FUNCTION_0(v2);
  v4 = v3;
  v5 = *(v3 + 80);
  v6 = (v5 + 32) & ~v5;
  v8 = *(v7 + 64);
  v9 = *(v0 + 24);

  (*(v4 + 8))(v0 + v6, v2);

  return MEMORY[0x1EEE6BDD0](v0, v6 + v8, v5 | 7);
}

uint64_t sub_197599C04@<X0>(uint64_t *a1@<X8>)
{
  result = Configuration.bundleIdentifierOverride.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_197599C34@<X0>(_BYTE *a1@<X8>)
{
  result = Configuration.usesAppleDisplayFrequency.getter();
  *a1 = result & 1;
  return result;
}

uint64_t sub_197599C8C@<X0>(_BYTE *a1@<X8>)
{
  result = Configuration.usesCoreAnalytics.getter();
  *a1 = result & 1;
  return result;
}

uint64_t sub_197599CE4()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 40);

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

__n128 sub_197599D38(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_197599E10()
{
  v0 = sub_197616D20();

  if (v0 >= 4)
  {
    return 4;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_197599E5C(char a1)
{
  result = 0x656C746974;
  switch(a1)
  {
    case 1:
      result = 2036625250;
      break;
    case 2:
      result = OUTLINED_FUNCTION_36_0(0x69746361u);
      break;
    case 3:
      result = 1852793705;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_19759A1E0()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 49, 7);
}

uint64_t sub_19759A218()
{
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_19759A27C()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 48);

  v3 = *(v0 + 88);

  v4 = *(v0 + 96);
  swift_unownedRelease();

  return MEMORY[0x1EEE6BDD0](v0, 104, 7);
}

uint64_t sub_19759A2D4()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_19759A30C()
{
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 16));
  v1 = *(v0 + 56);

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

uint64_t sub_19759A34C()
{
  v1 = *(v0 + 24);

  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 40));

  return MEMORY[0x1EEE6BDD0](v0, 89, 7);
}

uint64_t sub_19759A394(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_197615A60();
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

uint64_t sub_19759A440(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_197615A60();
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

__n128 sub_19759A524(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

__n128 sub_19759A5E4(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_19759A68C()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_19759A6C8@<X0>(uint64_t *a1@<X8>)
{
  result = static CoreEvent.events.getter();
  *a1 = result;
  return result;
}

uint64_t sub_19759A6F4@<X0>(uint64_t *a1@<X8>)
{
  result = static CoreEvent.modelIdentifiers.getter();
  *a1 = result;
  return result;
}

uint64_t sub_19759A770@<X0>(uint64_t *a1@<X8>)
{
  result = static CoreParameter.parameters.getter();
  *a1 = result;
  return result;
}

uint64_t sub_19759A79C@<X0>(uint64_t *a1@<X8>)
{
  result = static CoreParameter.modelIdentifiers.getter();
  *a1 = result;
  return result;
}

uint64_t sub_19759A880@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1975CAF78(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_19759AA0C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1975D0B20(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_19759AAEC(uint64_t *a1)
{
  OUTLINED_FUNCTION_16_0(a1);
  result = CoreRuleRecord.status.getter();
  *v1 = result;
  return result;
}

uint64_t sub_19759AB14(unsigned __int8 *a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = *a1;
  return CoreRuleRecord.status.setter();
}

uint64_t sub_19759AB68(uint64_t *a1)
{
  OUTLINED_FUNCTION_16_0(a1);
  result = CoreTip.presentationStyle.getter();
  *v1 = result;
  return result;
}

uint64_t sub_19759ABB8(uint64_t *a1)
{
  OUTLINED_FUNCTION_16_0(a1);
  result = CoreTip.isHidden.getter();
  *v1 = result & 1;
  return result;
}

uint64_t sub_19759AC0C(uint64_t *a1)
{
  OUTLINED_FUNCTION_16_0(a1);
  result = CoreTip.activeViews.getter();
  *v1 = result;
  return result;
}

void *sub_19759AC5C(uint64_t *a1)
{
  OUTLINED_FUNCTION_16_0(a1);
  result = CoreTip.constellationContent.getter();
  *v1 = result;
  return result;
}

uint64_t sub_19759ACEC(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34610, &qword_197621E30);
    v9 = a1 + *(a3 + 32);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

uint64_t sub_19759AD80(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34610, &qword_197621E30);
    v8 = v5 + *(a4 + 32);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_19759AFB8()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 33, 7);
}

uint64_t sub_19759AFF0()
{
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

__n128 sub_19759B04C(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_19759B084()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_19759B0C4()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_19759B11C()
{
  v1 = sub_197615A60();
  OUTLINED_FUNCTION_1_31(v1);
  v3 = *(v2 + 80);
  v5 = *(v4 + 64);
  v6 = *(v0 + 24);

  v7 = OUTLINED_FUNCTION_19_6();
  v8(v7);

  return MEMORY[0x1EEE6BDD0](v0, ((v3 + 32) & ~v3) + v5, v3 | 7);
}

uint64_t sub_19759B1C8()
{
  v1 = sub_197615A60();
  OUTLINED_FUNCTION_1_31(v1);
  v3 = *(v2 + 80);
  v5 = (((*(v4 + 64) + ((v3 + 32) & ~v3) + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 24);

  v7 = OUTLINED_FUNCTION_19_6();
  v8(v7);
  v9 = *(v0 + v5 + 8);

  return MEMORY[0x1EEE6BDD0](v0, v5 + 47, v3 | 7);
}

uint64_t sub_19759B294()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34610, &qword_197621E30);
  OUTLINED_FUNCTION_20_0(v1);
  v3 = *(v2 + 80);
  v4 = (v3 + 48) & ~v3;
  v6 = *(v5 + 64);
  v7 = *(v0 + 24);

  v8 = *(v0 + 40);

  v9 = sub_197615970();
  if (!OUTLINED_FUNCTION_31_4(v0 + v4))
  {
    (*(*(v9 - 8) + 8))(v0 + v4, v9);
  }

  return MEMORY[0x1EEE6BDD0](v0, v4 + v6, v3 | 7);
}

uint64_t sub_19759B38C()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_19759B3C4()
{
  v1 = sub_197615A60();
  OUTLINED_FUNCTION_1_31(v1);
  v3 = *(v2 + 80);
  v5 = (*(v4 + 64) + ((v3 + 32) & ~v3) + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 24);

  v7 = OUTLINED_FUNCTION_19_6();
  v8(v7);
  v9 = *(v0 + v5 + 8);

  return MEMORY[0x1EEE6BDD0](v0, v5 + 47, v3 | 7);
}

uint64_t sub_19759B488()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_19759B4C0@<X0>(uint64_t *a1@<X8>)
{
  result = static CoreTip.tips.getter();
  *a1 = result;
  return result;
}

uint64_t sub_19759B4EC@<X0>(uint64_t *a1@<X8>)
{
  result = static CoreTip.modelIdentifiers.getter();
  *a1 = result;
  return result;
}

uint64_t sub_19759B570@<X0>(uint64_t *a1@<X8>)
{
  result = CoreTip.RecordStatus.rawValue.getter(*v1);
  *a1 = result;
  return result;
}

uint64_t sub_19759B614(char a1)
{
  if (a1)
  {
    return 0x6579616C70736964;
  }

  else
  {
    return 0x4449706974;
  }
}

uint64_t sub_19759B67C(uint64_t *a1)
{
  OUTLINED_FUNCTION_16_0(a1);
  result = CoreTipRecord.status.getter();
  *v1 = result;
  return result;
}

uint64_t sub_19759B6A4(unsigned __int8 *a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = *a1;
  return CoreTipRecord.status.setter();
}

uint64_t sub_19759B6CC(uint64_t *a1)
{
  OUTLINED_FUNCTION_16_0(a1);
  result = CoreTipRecord.invalidationReason.getter();
  *v1 = result;
  return result;
}

uint64_t sub_19759B6F4(unsigned __int8 *a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = *a1;
  return CoreTipRecord.invalidationReason.setter();
}

uint64_t sub_19759B76C()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_19759B7A4()
{
  v1 = sub_197615970();
  OUTLINED_FUNCTION_0(v1);
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 56) & ~v4;
  v7 = *(v6 + 64);
  v8 = *(v0 + 2);
  swift_unknownObjectRelease();
  v9 = *(v0 + 4);

  sub_197567790(*(v0 + 5), *(v0 + 6));
  (*(v3 + 8))(&v0[v5], v1);

  return MEMORY[0x1EEE6BDD0](v0, v5 + v7, v4 | 7);
}

uint64_t sub_19759B908()
{
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

__n128 sub_19759B954(uint64_t a1, _OWORD *a2)
{
  result = *a1;
  v3 = *(a1 + 16);
  *a2 = *a1;
  a2[1] = v3;
  return result;
}

__n128 sub_19759B974(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_19759B980()
{
  if (*(v0 + 40))
  {
    __swift_destroy_boxed_opaque_existential_0Tm((v0 + 16));
  }

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_19759BA58(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 248)
  {
    v4 = *a1;
    if (v4 >= 8)
    {
      return v4 - 7;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = sub_197615BB0();
    v9 = &a1[*(a3 + 20)];

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

_BYTE *sub_19759BAD8(_BYTE *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 248)
  {
    *result = a2 + 7;
  }

  else
  {
    v7 = sub_197615BB0();
    v8 = &v5[*(a4 + 20)];

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_19759BC5C()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

void sub_19759BC98()
{
  OUTLINED_FUNCTION_15_12();
  OUTLINED_FUNCTION_108(v2, v3, v4);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34AE8, &qword_19761B848);
  OUTLINED_FUNCTION_0(v5);
  v30 = v6;
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_27_8();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34710, &unk_197622260);
  OUTLINED_FUNCTION_0(v10);
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_30_0();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF346E8, &qword_1976192E0);
  OUTLINED_FUNCTION_0(v14);
  v16 = *(v15 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_69_0();
  v18 = *v0;
  OUTLINED_FUNCTION_14_11();
  sub_197559AAC(v19, v20, &unk_197622260);
  OUTLINED_FUNCTION_70_0();
  swift_getKeyPath();
  OUTLINED_FUNCTION_56_0();

  v21 = OUTLINED_FUNCTION_100();
  v22(v21);
  sub_197615810();
  v1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF35268, &unk_1976224A0);
  v1[4] = sub_1975710A4();
  __swift_allocate_boxed_opaque_existential_0(v1);
  OUTLINED_FUNCTION_4_20();
  sub_197559AAC(v23, &qword_1EAF346E8, &qword_1976192E0);
  OUTLINED_FUNCTION_3_21();
  sub_197559AAC(v24, &qword_1EAF34AE8, &qword_19761B848);
  OUTLINED_FUNCTION_44_0();
  v25 = *(v30 + 8);
  v26 = OUTLINED_FUNCTION_42_3();
  v27(v26);
  v28 = OUTLINED_FUNCTION_98();
  v29(v28);
  OUTLINED_FUNCTION_14_9();
}

void sub_19759BF14()
{
  OUTLINED_FUNCTION_15_12();
  OUTLINED_FUNCTION_108(v2, v3, v4);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34AE8, &qword_19761B848);
  OUTLINED_FUNCTION_0(v5);
  v30 = v6;
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_27_8();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34D70, &unk_1976223F0);
  OUTLINED_FUNCTION_0(v10);
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_30_0();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34D78, &qword_19761CE28);
  OUTLINED_FUNCTION_0(v14);
  v16 = *(v15 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_69_0();
  v18 = *v0;
  OUTLINED_FUNCTION_14_11();
  sub_197559AAC(v19, v20, &unk_1976223F0);
  OUTLINED_FUNCTION_70_0();
  swift_getKeyPath();
  OUTLINED_FUNCTION_56_0();

  v21 = OUTLINED_FUNCTION_100();
  v22(v21);
  sub_197615810();
  v1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34D80, &qword_19761CE58);
  v1[4] = sub_197565BFC();
  __swift_allocate_boxed_opaque_existential_0(v1);
  OUTLINED_FUNCTION_4_20();
  sub_197559AAC(v23, &qword_1EAF34D78, &qword_19761CE28);
  OUTLINED_FUNCTION_3_21();
  sub_197559AAC(v24, &qword_1EAF34AE8, &qword_19761B848);
  OUTLINED_FUNCTION_44_0();
  v25 = *(v30 + 8);
  v26 = OUTLINED_FUNCTION_42_3();
  v27(v26);
  v28 = OUTLINED_FUNCTION_98();
  v29(v28);
  OUTLINED_FUNCTION_14_9();
}

void sub_19759C190()
{
  OUTLINED_FUNCTION_15_12();
  OUTLINED_FUNCTION_108(v2, v3, v4);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34AE8, &qword_19761B848);
  OUTLINED_FUNCTION_0(v5);
  v30 = v6;
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_27_8();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34AF0, &unk_197622320);
  OUTLINED_FUNCTION_0(v10);
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_30_0();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34AF8, &qword_19761B850);
  OUTLINED_FUNCTION_0(v14);
  v16 = *(v15 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_69_0();
  v18 = *v0;
  OUTLINED_FUNCTION_14_11();
  sub_197559AAC(v19, v20, &unk_197622320);
  OUTLINED_FUNCTION_70_0();
  swift_getKeyPath();
  OUTLINED_FUNCTION_56_0();

  v21 = OUTLINED_FUNCTION_100();
  v22(v21);
  sub_197615810();
  v1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34B00, &qword_19761B880);
  v1[4] = sub_19758F80C();
  __swift_allocate_boxed_opaque_existential_0(v1);
  OUTLINED_FUNCTION_4_20();
  sub_197559AAC(v23, &qword_1EAF34AF8, &qword_19761B850);
  OUTLINED_FUNCTION_3_21();
  sub_197559AAC(v24, &qword_1EAF34AE8, &qword_19761B848);
  OUTLINED_FUNCTION_44_0();
  v25 = *(v30 + 8);
  v26 = OUTLINED_FUNCTION_42_3();
  v27(v26);
  v28 = OUTLINED_FUNCTION_98();
  v29(v28);
  OUTLINED_FUNCTION_14_9();
}

uint64_t sub_19759C43C()
{
  v1 = *(v0 + 40);

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_19759C484@<X0>(uint64_t *a1@<X8>)
{
  result = static MiniTipsDatastore.activeStores.getter();
  *a1 = result;
  return result;
}

__n128 sub_19759C524(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

__n128 sub_19759C6C0(__n128 *a1, __n128 *a2)
{
  result = *a1;
  a2[1].n128_u64[0] = a1[1].n128_u64[0];
  *a2 = result;
  return result;
}

uint64_t sub_19759C774()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_19759C7AC@<X0>(void *a1@<X8>)
{
  result = sub_197615A00();
  *a1 = v3;
  return result;
}

uint64_t sub_19759C7D8@<X0>(void *a1@<X8>)
{
  result = sub_1976159C0();
  *a1 = v3;
  return result;
}

uint64_t sub_19759C804@<X0>(void *a1@<X8>)
{
  result = sub_197615A20();
  *a1 = v3;
  return result;
}

uint64_t sub_19759C904@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1975F085C(*v1);
  *a1 = result;
  return result;
}

uint64_t sub_19759C930@<X0>(_BYTE *a1@<X8>)
{
  result = sub_19759C8D8();
  *a1 = result & 1;
  return result;
}

uint64_t sub_19759C95C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = sub_197616860();
  OUTLINED_FUNCTION_14();
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v19 - v12;
  (*(v8 + 16))(&v19 - v12, a1, v6);
  if (__swift_getEnumTagSinglePayload(v13, 1, a2) == 1)
  {
    a3[3] = MEMORY[0x1E69E6158];
    *a3 = 0x3E6C6C756E3CLL;
    a3[1] = 0xE600000000000000;
  }

  else
  {
    a3[3] = a2;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(a3);
    (*(*(a2 - 8) + 32))(boxed_opaque_existential_0, v13, a2);
  }

  v15 = *(v8 + 8);
  v16 = OUTLINED_FUNCTION_21();
  return v17(v16);
}

uint64_t sub_19759CAB0()
{
  sub_1975586C0(v0, v13);
  if (swift_dynamicCast())
  {
    memset(v12, 0, 32);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34340, &unk_19761C8E0);
    sub_197616200();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF343D0, &qword_1976183D0);
    if (swift_dynamicCast())
    {
      sub_1975558C4(v12, v11);
      __swift_project_boxed_opaque_existential_1Tm(v11, v11[3]);
      sub_197616E80();
      __swift_destroy_boxed_opaque_existential_0Tm(v11);
    }

    else
    {
      v1 = *(v0 + 24);
      v2 = OUTLINED_FUNCTION_19();
      __swift_project_boxed_opaque_existential_1Tm(v2, v3);
      OUTLINED_FUNCTION_14();
      v5 = *(v4 + 64);
      MEMORY[0x1EEE9AC00](v6);
      (*(v8 + 16))(&v11[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
      OUTLINED_FUNCTION_19();
      sub_197616200();
    }
  }

  __swift_destroy_boxed_opaque_existential_0Tm(v13);
  return OUTLINED_FUNCTION_21();
}

uint64_t sub_19759CC64()
{
  sub_1975586C0(v0, v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF343C8, &qword_1976183C8);
  if (swift_dynamicCast())
  {
    sub_1975558C4(&v5, v4);
    __swift_project_boxed_opaque_existential_1Tm(v4, v4[3]);
    v1 = sub_197616F00();
    MEMORY[0x19A8E2A50](v1);

    MEMORY[0x19A8E2A50](41, 0xE100000000000000);
    __swift_destroy_boxed_opaque_existential_0Tm(v4);
  }

  else
  {
    *&v5 = 0x6261646F43796E41;
    *(&v5 + 1) = 0xEB0000000028656CLL;
    v2 = sub_19759CAB0();
    MEMORY[0x19A8E2A50](v2);

    MEMORY[0x19A8E2A50](41, 0xE100000000000000);
  }

  __swift_destroy_boxed_opaque_existential_0Tm(v6);
  return OUTLINED_FUNCTION_21();
}

uint64_t sub_19759CD90()
{
  sub_197617190();
  sub_19759D83C(v1);
  return sub_1976171F0();
}

uint64_t sub_19759CDD0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = a1[4];
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  OUTLINED_FUNCTION_23();
  sub_197617230();
  if (!v2)
  {
    v6 = v13;
    __swift_project_boxed_opaque_existential_1Tm(v11, v12);
    OUTLINED_FUNCTION_23();
    if (sub_197616F70())
    {
      v7 = [objc_allocWithZone(MEMORY[0x1E695DFB0]) init];
      v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34428, &qword_1976185E8);
      v9 = v7 & 0xFFFFFFFFFFFFFF00;
    }

    else
    {
      v6 = v13;
      __swift_project_boxed_opaque_existential_1Tm(v11, v12);
      OUTLINED_FUNCTION_23();
      LOBYTE(v7) = sub_197616F20() & 1;
      v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34420, &qword_1976185E0);
      v9 = 0;
    }

    __swift_destroy_boxed_opaque_existential_0Tm(v11);
    *a2 = v9 | v7;
    *(a2 + 8) = v14;
    *(a2 + 15) = BYTE6(v6);
    *(a2 + 13) = WORD2(v6);
    *(a2 + 9) = v6;
    *(a2 + 24) = v8;
  }

  return __swift_destroy_boxed_opaque_existential_0Tm(a1);
}

uint64_t sub_19759D3A4(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_26_0(a1, a2);
  if (OUTLINED_FUNCTION_1_2())
  {
    goto LABEL_2;
  }

  if (OUTLINED_FUNCTION_1_2())
  {
LABEL_4:
    MEMORY[0x19A8E3940]();
    return __swift_destroy_boxed_opaque_existential_0Tm(v14);
  }

  if (!OUTLINED_FUNCTION_1_2())
  {
    if (OUTLINED_FUNCTION_1_2())
    {
LABEL_8:
      sub_1976171C0();
      return __swift_destroy_boxed_opaque_existential_0Tm(v14);
    }

    if (OUTLINED_FUNCTION_1_2())
    {
LABEL_10:
      sub_1976171D0();
      return __swift_destroy_boxed_opaque_existential_0Tm(v14);
    }

    if (OUTLINED_FUNCTION_1_2())
    {
      goto LABEL_12;
    }

    if (OUTLINED_FUNCTION_1_2())
    {
      goto LABEL_4;
    }

    if (!OUTLINED_FUNCTION_1_2())
    {
      if (OUTLINED_FUNCTION_1_2())
      {
        goto LABEL_8;
      }

      if (OUTLINED_FUNCTION_1_2())
      {
        goto LABEL_10;
      }

      if (!OUTLINED_FUNCTION_1_2())
      {
        if (OUTLINED_FUNCTION_1_2())
        {
          goto LABEL_10;
        }

        if (!OUTLINED_FUNCTION_1_2())
        {
          if (OUTLINED_FUNCTION_1_2())
          {
            sub_197616260();
          }

          else
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34360, &qword_19761E170);
            if (OUTLINED_FUNCTION_1_2())
            {
              v5 = OUTLINED_FUNCTION_19();
              sub_19759F710(v5, v6, v7, v8, v9);
            }

            else
            {
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34348, &unk_197618360);
              if (!OUTLINED_FUNCTION_1_2())
              {
                return __swift_destroy_boxed_opaque_existential_0Tm(v14);
              }

              v10 = OUTLINED_FUNCTION_19();
              sub_19759F6A8(v10, v11, v12);
            }
          }

          return __swift_destroy_boxed_opaque_existential_0Tm(v14);
        }

        v4 = v13;
        if (v13 == 0.0)
        {
          v4 = 0.0;
        }

        v3 = v4;
LABEL_13:
        MEMORY[0x19A8E3980](*&v3);
        return __swift_destroy_boxed_opaque_existential_0Tm(v14);
      }

LABEL_12:
      v3 = v13;
      goto LABEL_13;
    }
  }

LABEL_2:
  sub_1976171B0();
  return __swift_destroy_boxed_opaque_existential_0Tm(v14);
}