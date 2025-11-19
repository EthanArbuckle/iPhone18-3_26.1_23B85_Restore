uint64_t sub_26A6F4D20@<X0>(uint64_t a1@<X1>, int a2@<W2>, uint64_t *a3@<X3>, uint64_t a4@<X4>, uint64_t *a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X8>, double a8@<D0>)
{
  v88 = a6;
  v87 = a5;
  v75 = a2;
  v77 = a1;
  v86 = a7;
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B4DF0);
  OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_82();
  OUTLINED_FUNCTION_10_0(v12);
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B4F38);
  OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_82();
  OUTLINED_FUNCTION_10_0(v14);
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B4DC0);
  OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_82();
  OUTLINED_FUNCTION_10_0(v16);
  v72 = sub_26A84F988();
  OUTLINED_FUNCTION_15();
  v71 = v17;
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_10_0(v20 - v19);
  v21 = sub_26A84FFA8();
  OUTLINED_FUNCTION_15();
  v23 = v22;
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_41();
  v27 = v26 - v25;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B4DE0) - 8;
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v29);
  v31 = &v69 - v30;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B4DD0) - 8;
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v33);
  v35 = &v69 - v34;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B4DB0);
  MEMORY[0x28223BE20](v36 - 8);
  OUTLINED_FUNCTION_19();
  v79 = v37;
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_10_0(&v69 - v39);
  v84 = a3;
  v85 = a4;
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v40);
  v42 = &v69 - v41;
  sub_26A84FFB8();
  sub_26A851448();
  OUTLINED_FUNCTION_9_47();
  LOBYTE(v70) = 1;
  OUTLINED_FUNCTION_4_62();
  OUTLINED_FUNCTION_17_25();
  v44 = *(v23 + 32);
  v43 = v23 + 32;
  v44(v31, v27, v21);
  memcpy(&v31[*(v28 + 44)], __src, 0x70uLL);
  v73 = sub_26A851448();
  v74 = v45;
  LOBYTE(v72) = 1;
  v71 = 0;
  LOBYTE(v70) = 1;
  OUTLINED_FUNCTION_4_62();
  OUTLINED_FUNCTION_16_25();
  sub_26A4DBDB4(v31, v35, &qword_2803B4DE0);
  memcpy(&v35[*(v32 + 44)], v91, 0x70uLL);
  if (v75)
  {
    if ((v77 & 1) == 0)
    {
LABEL_3:
      v46 = sub_26A850DF8();
      v47 = sub_26A850248();
      v48 = v74;
      sub_26A4DBD68(v35, v74, &qword_2803B4DD0);
      v49 = v48 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B4E00) + 36);
      *v49 = v46;
      *(v49 + 8) = v47;
      v50 = sub_26A850E88();
      KeyPath = swift_getKeyPath();
      v52 = (v48 + *(v83 + 36));
      *v52 = KeyPath;
      v52[1] = v50;
      v53 = &qword_2803B4DF0;
      sub_26A4DBD68(v48, v82, &qword_2803B4DF0);
      swift_storeEnumTagMultiPayload();
      sub_26A6F62B4();
      sub_26A6F64FC();
      OUTLINED_FUNCTION_15_28();
      goto LABEL_6;
    }
  }

  else
  {
    v54 = v77;

    sub_26A851EA8();
    v55 = sub_26A8501F8();
    sub_26A84EA78();

    v56 = v70;
    sub_26A84F978();
    swift_getAtKeyPath();
    sub_26A49035C(v54, 0);
    (*(v71 + 8))(v56, v72);
    if (v89 != 1)
    {
      goto LABEL_3;
    }
  }

  v48 = v73;
  v57 = v73 + *(v81 + 36);
  sub_26A8513E8();
  v58 = sub_26A850248();
  *(v57 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AF440) + 36)) = v58;
  sub_26A4DBD68(v35, v48, &qword_2803B4DD0);
  v53 = &qword_2803B4DC0;
  sub_26A4DBD68(v48, v82, &qword_2803B4DC0);
  swift_storeEnumTagMultiPayload();
  sub_26A6F62B4();
  sub_26A6F64FC();
  OUTLINED_FUNCTION_15_28();
LABEL_6:
  sub_26A84FDF8();
  sub_26A4DBD10(v48, v53);
  sub_26A4DBD10(v35, &qword_2803B4DD0);
  v59 = v78;
  sub_26A4DBDB4(v43, v78, &qword_2803B4DB0);
  sub_26A4DBDB4(v59, v42, &qword_2803B4DB0);
  v60 = &v42[*(v76 + 36)];
  *v60 = a8;
  *(v60 + 4) = 256;
  if (sub_26A84FFC8())
  {
    v61 = 0.98;
  }

  else
  {
    v61 = 1.0;
  }

  sub_26A8515A8();
  v63 = v62;
  v65 = v64;
  v66 = v86;
  sub_26A4DBDB4(v42, v86, v84);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(v87);
  v68 = v66 + *(result + 36);
  *v68 = v61;
  *(v68 + 8) = v61;
  *(v68 + 16) = v63;
  *(v68 + 24) = v65;
  return result;
}

uint64_t sub_26A6F54D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v96 = a2;
  v95 = a3;
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B4DF0);
  OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_82();
  v77 = v5;
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B4F38);
  OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_82();
  v92 = v7;
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B4DC0);
  OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_82();
  v76 = v9;
  sub_26A84F988();
  OUTLINED_FUNCTION_15();
  v74 = v11;
  v75 = v10;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_41();
  v73 = v13 - v12;
  v14 = sub_26A84FFA8();
  OUTLINED_FUNCTION_15();
  v16 = v15;
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_41();
  v20 = v19 - v18;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B4DE0) - 8;
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v22);
  v24 = &v72 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B4DD0) - 8;
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v26);
  v28 = &v72 - v27;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B4DB0);
  OUTLINED_FUNCTION_46();
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_19();
  v78 = v31;
  MEMORY[0x28223BE20](v32);
  v81 = &v72 - v33;
  v34 = *(v96 + 16);
  v79 = *(v96 + 24);
  v80 = v34;
  v82 = sub_26A84EF28();
  v83 = v29;
  sub_26A84F4F8();
  OUTLINED_FUNCTION_15();
  v87 = v35;
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_82();
  v85 = v37;
  v88 = v38;
  v39 = sub_26A84F4F8();
  OUTLINED_FUNCTION_15();
  v89 = v40;
  MEMORY[0x28223BE20](v41);
  OUTLINED_FUNCTION_19();
  v84 = v42;
  MEMORY[0x28223BE20](v43);
  v86 = &v72 - v44;
  v94 = a1;
  sub_26A84FFB8();
  sub_26A851448();
  OUTLINED_FUNCTION_9_47();
  LOBYTE(v73) = 1;
  OUTLINED_FUNCTION_4_62();
  OUTLINED_FUNCTION_17_25();
  (*(v16 + 32))(v24, v20, v14);
  memcpy(&v24[*(v21 + 44)], v103, 0x70uLL);
  v76 = sub_26A851448();
  v77 = v45;
  LOBYTE(v75) = 1;
  v74 = 0;
  LOBYTE(v73) = 1;
  OUTLINED_FUNCTION_4_62();
  OUTLINED_FUNCTION_16_25();
  sub_26A4DBDB4(v24, v28, &qword_2803B4DE0);
  memcpy(&v28[*(v25 + 44)], __src, 0x70uLL);
  v46 = v97 + *(v96 + 36);
  v47 = *v46;
  if (*(v46 + 8) != 1)
  {

    sub_26A851EA8();
    v58 = sub_26A8501F8();
    sub_26A84EA78();

    v59 = v73;
    sub_26A84F978();
    swift_getAtKeyPath();
    sub_26A49035C(v47, 0);
    (*(v74 + 8))(v59, v75);
    if (v102 != 1)
    {
      goto LABEL_3;
    }

LABEL_5:
    v50 = v76;
    v60 = v76 + *(v91 + 36);
    sub_26A8513E8();
    v61 = sub_26A850248();
    *(v60 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AF440) + 36)) = v61;
    sub_26A4DBD68(v28, v50, &qword_2803B4DD0);
    v56 = &qword_2803B4DC0;
    sub_26A4DBD68(v50, v92, &qword_2803B4DC0);
    swift_storeEnumTagMultiPayload();
    sub_26A6F62B4();
    sub_26A6F64FC();
    v57 = v78;
    goto LABEL_6;
  }

  if (v47)
  {
    goto LABEL_5;
  }

LABEL_3:
  v48 = sub_26A850DF8();
  v49 = sub_26A850248();
  v50 = v77;
  sub_26A4DBD68(v28, v77, &qword_2803B4DD0);
  v51 = v50 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B4E00) + 36);
  *v51 = v48;
  *(v51 + 8) = v49;
  v52 = sub_26A850E88();
  KeyPath = swift_getKeyPath();
  v54 = v92;
  v55 = (v50 + *(v93 + 36));
  *v55 = KeyPath;
  v55[1] = v52;
  v56 = &qword_2803B4DF0;
  sub_26A4DBD68(v50, v54, &qword_2803B4DF0);
  swift_storeEnumTagMultiPayload();
  sub_26A6F62B4();
  sub_26A6F64FC();
  v57 = v78;
LABEL_6:
  sub_26A84FDF8();
  sub_26A4DBD10(v50, v56);
  sub_26A4DBD10(v28, &qword_2803B4DD0);
  v62 = v81;
  sub_26A4DBDB4(v57, v81, &qword_2803B4DB0);
  v63 = sub_26A6F6228();
  v64 = v85;
  sub_26A850CC8();
  sub_26A4DBD10(v62, &qword_2803B4DB0);
  sub_26A84FFC8();
  WitnessTable = swift_getWitnessTable();
  v100 = v63;
  v101 = WitnessTable;
  v66 = v88;
  v67 = swift_getWitnessTable();
  sub_26A8515A8();
  v68 = v84;
  sub_26A8509C8();
  (*(v87 + 8))(v64, v66);
  v98 = v67;
  v99 = MEMORY[0x277CDF690];
  swift_getWitnessTable();
  v69 = v86;
  sub_26A80757C(v68);
  v70 = *(v89 + 8);
  v70(v68, v39);
  sub_26A80757C(v69);
  return (v70)(v69, v39);
}

uint64_t static ButtonStyle<>.siriStandard.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_2803A8D98 != -1)
  {
    swift_once();
  }

  v2 = sub_26A84F5F8();
  v3 = __swift_project_value_buffer(v2, qword_2803D2250);
  sub_26A6F5ED4(v3, a1);
  v4 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B4D68) + 36);
  result = swift_getKeyPath();
  *v4 = result;
  *(v4 + 8) = 0;
  return result;
}

uint64_t sub_26A6F5ED4(uint64_t a1, uint64_t a2)
{
  v4 = sub_26A84F5F8();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t static ButtonStyle<>.siriLeft.getter@<X0>(uint64_t a1@<X8>)
{
  result = swift_getKeyPath();
  *a1 = 0x402E000000000000;
  *(a1 + 8) = result;
  *(a1 + 16) = 0;
  return result;
}

uint64_t type metadata accessor for SiriStandardButtonStyle()
{
  result = qword_2803B4D70;
  if (!qword_2803B4D70)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_26A6F6038()
{
  sub_26A6F60A4();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_26A6F60A4()
{
  if (!qword_2803B4D80)
  {
    sub_26A84F5F8();
    sub_26A6F64B4(&qword_2803B0C28, MEMORY[0x277CDFC08]);
    v0 = type metadata accessor for SiriButtonStyle();
    if (!v1)
    {
      atomic_store(v0, &qword_2803B4D80);
    }
  }
}

unint64_t sub_26A6F6170()
{
  result = qword_2803B4D98;
  if (!qword_2803B4D98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B4DA0);
    sub_26A6F6228();
    sub_26A4DBCC8(&qword_28157FEA0, &qword_2803A9E58);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B4D98);
  }

  return result;
}

unint64_t sub_26A6F6228()
{
  result = qword_2803B4DA8;
  if (!qword_2803B4DA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B4DB0);
    sub_26A6F62B4();
    sub_26A6F64FC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B4DA8);
  }

  return result;
}

unint64_t sub_26A6F62B4()
{
  result = qword_2803B4DB8;
  if (!qword_2803B4DB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B4DC0);
    sub_26A6F636C();
    sub_26A4DBCC8(&qword_2803AF468, &qword_2803AF440);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B4DB8);
  }

  return result;
}

unint64_t sub_26A6F636C()
{
  result = qword_2803B4DC8;
  if (!qword_2803B4DC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B4DD0);
    sub_26A6F63F8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B4DC8);
  }

  return result;
}

unint64_t sub_26A6F63F8()
{
  result = qword_2803B4DD8;
  if (!qword_2803B4DD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B4DE0);
    sub_26A6F64B4(&qword_2803AE718, MEMORY[0x277CDE278]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B4DD8);
  }

  return result;
}

uint64_t sub_26A6F64B4(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_26A6F64FC()
{
  result = qword_2803B4DE8;
  if (!qword_2803B4DE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B4DF0);
    sub_26A6F65B4();
    sub_26A4DBCC8(&qword_2803ABF30, &qword_2803ABF38);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B4DE8);
  }

  return result;
}

unint64_t sub_26A6F65B4()
{
  result = qword_2803B4DF8;
  if (!qword_2803B4DF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B4E00);
    sub_26A6F636C();
    sub_26A4DBCC8(&qword_2803ADC60, &qword_2803ADC68);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B4DF8);
  }

  return result;
}

uint64_t sub_26A6F666C(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_26A6F66F0()
{
  result = qword_2803B4E18;
  if (!qword_2803B4E18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B4E20);
    sub_26A6F6228();
    sub_26A4DBCC8(&qword_2803B4E28, &qword_2803B4E30);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B4E18);
  }

  return result;
}

unint64_t sub_26A6F67A8()
{
  result = qword_2803B4E48;
  if (!qword_2803B4E48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B4E50);
    sub_26A6F6228();
    sub_26A4DBCC8(&qword_2803B4E58, qword_2803B4E60);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B4E48);
  }

  return result;
}

void sub_26A6F6880()
{
  swift_checkMetadataState();
  if (v0 <= 0x3F)
  {
    sub_26A5923A4();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_26A6F6908(uint64_t result, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(*(v4 - 8) + 84);
  v6 = *(*(v4 - 8) + 64);
  if (v5 <= 0xFE)
  {
    v7 = 254;
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
    if (v5 < 0xFE)
    {
      v16 = *(((result + v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 8);
      if (v16 > 1)
      {
        return (v16 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }

    else
    {
      return __swift_getEnumTagSinglePayload(result, v5, v4);
    }
  }

  else
  {
    v8 = ((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 9;
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

void sub_26A6F6A54(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v7 = *(*(v6 - 8) + 84);
  if (v7 <= 0xFE)
  {
    v8 = 254;
  }

  else
  {
    v8 = *(*(v6 - 8) + 84);
  }

  v9 = *(*(v6 - 8) + 64);
  v10 = ((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 9;
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
LABEL_43:
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
          if (v7 < 0xFE)
          {
            v17 = &a1[v9 + 7] & 0xFFFFFFFFFFFFFFF8;
            if (a2 > 0xFE)
            {
              *(v17 + 8) = 0;
              *v17 = (a2 - 255);
            }

            else
            {
              *(v17 + 8) = -a2;
            }
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
    bzero(a1, ((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 9);
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
        goto LABEL_43;
      case 4:
        *&a1[v10] = v16;
        break;
      default:
        return;
    }
  }
}

void sub_26A6F6CD0(double a1, double a2, double a3, double a4, double a5)
{
  sub_26A850538();
  v71.origin.x = OUTLINED_FUNCTION_1_78();
  MaxX = CGRectGetMaxX(v71);
  v72.origin.x = OUTLINED_FUNCTION_1_78();
  MinY = CGRectGetMinY(v72);
  v73.origin.x = OUTLINED_FUNCTION_1_78();
  v37 = CGRectGetMaxX(v73);
  v74.origin.x = OUTLINED_FUNCTION_1_78();
  MaxY = CGRectGetMaxY(v74);
  v75.origin.x = OUTLINED_FUNCTION_1_78();
  CGRectGetMinX(v75);
  v76.origin.x = OUTLINED_FUNCTION_1_78();
  CGRectGetMaxY(v76);
  v77.origin.x = OUTLINED_FUNCTION_1_78();
  MinX = CGRectGetMinX(v77);
  v78.origin.x = OUTLINED_FUNCTION_1_78();
  *&v43 = CGRectGetMinY(v78) + a5;
  v79.origin.x = OUTLINED_FUNCTION_1_78();
  *&v46 = CGRectGetMinX(v79) + a5;
  v80.origin.x = OUTLINED_FUNCTION_1_78();
  *&v34 = CGRectGetMinY(v80) + a5;
  v81.origin.x = OUTLINED_FUNCTION_1_78();
  CGRectGetMinX(v81);
  v82.origin.x = OUTLINED_FUNCTION_1_78();
  CGRectGetMaxY(v82);
  sub_26A850508();
  sub_26A850528();
  sub_26A850528();
  OUTLINED_FUNCTION_14_33();
  OUTLINED_FUNCTION_13_33(v6, v7, v8, v9, v10, v11, v12, v13, MaxY, v34, v37, MinY, v43, v46, MaxX, MinX, v55, v58, v60, v63, v65, v67, v69);
  sub_26A8504F8();
  v14 = sub_26A850528();
  OUTLINED_FUNCTION_13_33(v14, v15, v16, v17, v18, v19, v20, v21, v32, v35, v38, v41, v44, v47, v50, v53, v56, v59, v61, v64, v66, v68, v70);
  sub_26A8504F8();
  v22 = sub_26A850528();
  OUTLINED_FUNCTION_12_38(v22, v23, v24, v25, v26, v27, v28, v29, v33, v36, v39, v42, v45, v48, v51, v54, v30, v57, v62);
}

double sub_26A6F6E7C@<D0>(uint64_t a1@<X8>, double a2@<D0>, double a3@<D1>, double a4@<D2>, double a5@<D3>)
{
  sub_26A6F6CD0(a2, a3, a4, a5, *v5);
  result = *&v8;
  *a1 = v8;
  *(a1 + 16) = v9;
  *(a1 + 32) = v10;
  return result;
}

void (*sub_26A6F6EC4(void *a1))(void *)
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v2;
  v2[4] = sub_26A84ECD8();
  return sub_26A6F6F38;
}

uint64_t sub_26A6F6F3C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_26A6F75B8();

  return MEMORY[0x282133768](a1, a2, a3, v6);
}

uint64_t sub_26A6F6FA0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_26A6F75B8();

  return MEMORY[0x282133720](a1, a2, a3, v6);
}

uint64_t sub_26A6F7004(uint64_t a1)
{
  v2 = sub_26A6F75B8();

  return MEMORY[0x282133738](a1, v2);
}

unint64_t sub_26A6F7054()
{
  result = qword_2803B4EF8;
  if (!qword_2803B4EF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B4EF8);
  }

  return result;
}

unint64_t sub_26A6F70AC()
{
  result = qword_2803B4F00;
  if (!qword_2803B4F00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B4F00);
  }

  return result;
}

void sub_26A6F7144(double a1, double a2, double a3, double a4, double a5)
{
  sub_26A850538();
  v71.origin.x = OUTLINED_FUNCTION_0_75();
  MinX = CGRectGetMinX(v71);
  v72.origin.x = OUTLINED_FUNCTION_0_75();
  MinY = CGRectGetMinY(v72);
  v73.origin.x = OUTLINED_FUNCTION_0_75();
  *&v34 = CGRectGetMaxX(v73) - a5;
  v74.origin.x = OUTLINED_FUNCTION_0_75();
  v31 = CGRectGetMinY(v74);
  v75.origin.x = OUTLINED_FUNCTION_0_75();
  MaxX = CGRectGetMaxX(v75);
  v76.origin.x = OUTLINED_FUNCTION_0_75();
  *&v43 = CGRectGetMaxY(v76) - a5;
  v77.origin.x = OUTLINED_FUNCTION_0_75();
  v52 = CGRectGetMinX(v77);
  v78.origin.x = OUTLINED_FUNCTION_0_75();
  MaxY = CGRectGetMaxY(v78);
  v79.origin.x = OUTLINED_FUNCTION_0_75();
  CGRectGetMaxX(v79);
  v80.origin.x = OUTLINED_FUNCTION_0_75();
  CGRectGetMinY(v80);
  v81.origin.x = OUTLINED_FUNCTION_0_75();
  CGRectGetMaxX(v81);
  v82.origin.x = OUTLINED_FUNCTION_0_75();
  CGRectGetMaxY(v82);
  sub_26A850508();
  sub_26A850528();
  OUTLINED_FUNCTION_14_33();
  OUTLINED_FUNCTION_13_33(v6, v7, v8, v9, v10, v11, v12, v13, v31, v34, MinY, MinX, v43, MaxY, MaxX, v52, v55, v58, v60, v63, v65, v67, v69);
  sub_26A8504F8();
  v14 = sub_26A850528();
  OUTLINED_FUNCTION_13_33(v14, v15, v16, v17, v18, v19, v20, v21, v32, v35, v38, v41, v44, v47, v50, v53, v56, v59, v61, v64, v66, v68, v70);
  sub_26A8504F8();
  sub_26A850528();
  v22 = sub_26A850528();
  OUTLINED_FUNCTION_12_38(v22, v23, v24, v25, v26, v27, v28, v29, v33, v36, v39, v42, v45, v48, v51, v54, v30, v57, v62);
}

double sub_26A6F72E4@<D0>(uint64_t a1@<X8>, double a2@<D0>, double a3@<D1>, double a4@<D2>, double a5@<D3>)
{
  sub_26A6F7144(a2, a3, a4, a5, *v5);
  result = *&v8;
  *a1 = v8;
  *(a1 + 16) = v9;
  *(a1 + 32) = v10;
  return result;
}

void (*sub_26A6F732C(void *a1))(void *)
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v2;
  v2[4] = sub_26A84ECD8();
  return sub_26A6F7624;
}

uint64_t sub_26A6F73A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_26A6F7564();

  return MEMORY[0x282133768](a1, a2, a3, v6);
}

uint64_t sub_26A6F7404(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_26A6F7564();

  return MEMORY[0x282133720](a1, a2, a3, v6);
}

uint64_t sub_26A6F7468(uint64_t a1)
{
  v2 = sub_26A6F7564();

  return MEMORY[0x282133738](a1, v2);
}

unint64_t sub_26A6F74B8()
{
  result = qword_2803B4F18;
  if (!qword_2803B4F18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B4F18);
  }

  return result;
}

unint64_t sub_26A6F7510()
{
  result = qword_2803B4F20;
  if (!qword_2803B4F20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B4F20);
  }

  return result;
}

unint64_t sub_26A6F7564()
{
  result = qword_2803B4F28;
  if (!qword_2803B4F28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B4F28);
  }

  return result;
}

unint64_t sub_26A6F75B8()
{
  result = qword_2803B4F30;
  if (!qword_2803B4F30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B4F30);
  }

  return result;
}

__n128 OUTLINED_FUNCTION_12_38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, __n128 a17, __int128 a18, char a19)
{
  result = a17;
  *v19 = a17;
  *(v19 + 16) = a18;
  *(v19 + 32) = a19;
  return result;
}

uint64_t OUTLINED_FUNCTION_16_25()
{

  return sub_26A84F628();
}

uint64_t OUTLINED_FUNCTION_17_25()
{

  return sub_26A84F628();
}

uint64_t ReferenceCenteredView.init(text1:text2:text3:text4:addTint:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, int a5@<W4>, uint64_t a6@<X8>)
{
  v39 = a5;
  v36 = a4;
  v37 = a3;
  v35 = a2;
  v38 = a6;
  v7 = type metadata accessor for ReferenceCenteredView();
  OUTLINED_FUNCTION_46();
  MEMORY[0x28223BE20](v8);
  v10 = (&v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v10 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803A9190);
  swift_storeEnumTagMultiPayload();
  v11 = v10 + v7[5];
  *v11 = swift_getKeyPath();
  v11[8] = 0;
  v12 = v7[6];
  *(v10 + v12) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91A8);
  swift_storeEnumTagMultiPayload();
  v13 = v10 + v7[7];
  if (qword_2803A8C60 != -1)
  {
    swift_once();
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803ADE40);
  v15 = __swift_project_value_buffer(v14, qword_2803D1E30);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803ADE48);
  v17 = &v13[*(v16 + 32)];
  sub_26A51D0F8(v15, v17, &qword_2803ADE40);
  sub_26A6AEE74(__src);
  memcpy(v13, __src, 0xBFuLL);
  sub_26A580C48(v17 + *(v14 + 36), &v13[*(v16 + 28)]);
  v18 = a1[3];
  v19 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v18);
  *(v10 + v7[8]) = (*(v19 + 8))(v18, v19);
  v20 = v35;
  sub_26A51D0F8(v35, v40, &qword_2803A91B8);
  v21 = a1;
  if (v41)
  {
    v22 = OUTLINED_FUNCTION_0_76();
    v24 = v23(v22);
    __swift_destroy_boxed_opaque_existential_1(v40);
  }

  else
  {
    sub_26A4DBD10(v40, &qword_2803A91B8);
    v24 = 0;
  }

  v25 = v37;
  *(v10 + v7[9]) = v24;
  sub_26A51D0F8(v25, v40, &qword_2803A91B8);
  v26 = v36;
  if (v41)
  {
    v27 = OUTLINED_FUNCTION_0_76();
    v29 = v28(v27);
    __swift_destroy_boxed_opaque_existential_1(v40);
  }

  else
  {
    sub_26A4DBD10(v40, &qword_2803A91B8);
    v29 = 0;
  }

  *(v10 + v7[10]) = v29;
  sub_26A51D0F8(v26, v40, &qword_2803A91B8);
  if (v41)
  {
    v30 = OUTLINED_FUNCTION_0_76();
    v32 = v31(v30);
    sub_26A4DBD10(v26, &qword_2803A91B8);
    sub_26A4DBD10(v25, &qword_2803A91B8);
    sub_26A4DBD10(v20, &qword_2803A91B8);
    __swift_destroy_boxed_opaque_existential_1(v40);
  }

  else
  {
    OUTLINED_FUNCTION_9_0(v26);
    OUTLINED_FUNCTION_9_0(v25);
    OUTLINED_FUNCTION_9_0(v20);
    OUTLINED_FUNCTION_9_0(v40);
    v32 = 0;
  }

  *(v10 + v7[11]) = v32;
  *(v10 + v7[12]) = v39 & 1;
  sub_26A6F7B7C(v10, v38);
  return __swift_destroy_boxed_opaque_existential_1(v21);
}

uint64_t type metadata accessor for ReferenceCenteredView()
{
  result = qword_2803B4F58;
  if (!qword_2803B4F58)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_26A6F7B7C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ReferenceCenteredView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_26A6F7BE0@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_26A84F988();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803A9190);
  MEMORY[0x28223BE20](v8);
  v10 = &v13 - v9;
  sub_26A51D0F8(v2, &v13 - v9, &unk_2803A9190);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_26A51A3E0(v10, a1);
  }

  sub_26A851EA8();
  v12 = sub_26A8501F8();
  sub_26A84EA78();

  sub_26A84F978();
  swift_getAtKeyPath();

  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_26A6F7DB0()
{
  v1 = sub_26A84F988();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = v0 + *(type metadata accessor for ReferenceCenteredView() + 20);
  v6 = *v5;
  if ((*(v5 + 8) & 1) == 0)
  {

    sub_26A851EA8();
    v7 = sub_26A8501F8();
    sub_26A84EA78();

    sub_26A84F978();
    swift_getAtKeyPath();
    sub_26A4D82E8(v6, 0);
    (*(v2 + 8))(v4, v1);
    return v9[1];
  }

  return v6;
}

uint64_t sub_26A6F7F04@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_26A84F988();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91A8);
  MEMORY[0x28223BE20](v7);
  v9 = &v14 - v8;
  v10 = type metadata accessor for ReferenceCenteredView();
  sub_26A51D0F8(v1 + *(v10 + 24), v9, &qword_2803A91A8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_26A84F3A8();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    sub_26A851EA8();
    v13 = sub_26A8501F8();
    sub_26A84EA78();

    sub_26A84F978();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

uint64_t ReferenceCenteredView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91C0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v16[-v4];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91C8);
  MEMORY[0x28223BE20](v6 - 8);
  sub_26A6F7BE0(&v16[-v7]);
  v18 = 0u;
  v19 = 0u;
  v20 = 1;
  sub_26A6F7DB0();
  sub_26A6F7F04(v5);
  v8 = sub_26A84F3A8();
  __swift_storeEnumTagSinglePayload(v5, 0, 1, v8);
  v17 = v1;
  sub_26A4CD2B8();
  v9 = *(v1 + *(type metadata accessor for ReferenceCenteredView() + 48));
  *(a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B4F40) + 36)) = v9;
  v10 = swift_allocObject();
  *(v10 + 16) = sub_26A68CF04;
  *(v10 + 24) = 0;
  v11 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B4F48) + 36);
  *(v11 + 16) = swift_getKeyPath();
  *(v11 + 24) = 0;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91D8);
  v13 = *(v12 + 40);
  *(v11 + v13) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803A9190);
  swift_storeEnumTagMultiPayload();
  v14 = v11 + *(v12 + 44);
  *v14 = swift_getKeyPath();
  *(v14 + 8) = 0;
  *v11 = sub_26A4D1F7C;
  *(v11 + 8) = v10;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B4F50);
  *(a1 + *(result + 36)) = 33;
  return result;
}

void *sub_26A6F8390@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_26A84FBF8();
  v5 = a1 + *(type metadata accessor for ReferenceCenteredView() + 28);
  v6 = *(v5 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803ADE48) + 28));
  __src[0] = v4;
  __src[1] = v6;
  LOBYTE(__src[2]) = 0;
  sub_26A6F84A0(a1, &__src[3]);
  sub_26A851448();
  sub_26A84F628();
  memcpy(a2, __src, 0x4B8uLL);
  return memcpy((a2 + 1208), v9, 0x70uLL);
}

uint64_t sub_26A6F84A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for ReferenceCenteredView();
  v5 = *(a1 + v4[8]);
  if (qword_2803A9038 != -1)
  {
    swift_once();
  }

  sub_26A51D0F8(&unk_2803D2800, v26, &qword_2803AA880);
  sub_26A6AEE74(__src);
  memcpy(v25, __src, sizeof(v25));
  v26[11] = 0;
  v26[10] = sub_26A80A810;
  v24 = v5;
  v6 = *(a1 + v4[9]);
  sub_26A51D0F8(&unk_2803D2800, v23, &qword_2803AA880);

  sub_26A6AEE74(v28);
  memcpy(v22, v28, sizeof(v22));
  v23[11] = 0;
  v23[10] = sub_26A80A810;
  v21 = v6;
  v7 = *(a1 + v4[10]);
  v8 = qword_28157E6A0;

  if (v8 != -1)
  {
    swift_once();
  }

  sub_26A51D0F8(&unk_2815887F8, v20, &qword_2803AA880);
  sub_26A6AEE74(v29);
  memcpy(v19, v29, sizeof(v19));
  v20[11] = 0;
  v20[10] = sub_26A80A810;
  v18 = v7;
  v9 = *(a1 + v4[11]);
  sub_26A51D0F8(&unk_2815887F8, v17, &qword_2803AA880);

  sub_26A6AEE74(v30);
  memcpy(v16, v30, sizeof(v16));
  v17[11] = 0;
  v17[10] = sub_26A80A810;
  v15 = v9;
  sub_26A51D0F8(&v24, v14, &qword_2803A99A0);
  sub_26A51D0F8(&v21, v13, &qword_2803AAFE0);
  sub_26A51D0F8(&v18, v12, &qword_2803AAFE0);
  sub_26A51D0F8(&v15, v11, &qword_2803AAFE0);
  sub_26A51D0F8(v14, a2, &qword_2803A99A0);
  sub_26A51D0F8(v13, a2 + 296, &qword_2803AAFE0);
  sub_26A51D0F8(v12, a2 + 592, &qword_2803AAFE0);
  sub_26A51D0F8(v11, a2 + 888, &qword_2803AAFE0);

  sub_26A4DBD10(&v15, &qword_2803AAFE0);
  sub_26A4DBD10(&v18, &qword_2803AAFE0);
  sub_26A4DBD10(&v21, &qword_2803AAFE0);
  sub_26A4DBD10(&v24, &qword_2803A99A0);
  sub_26A4DBD10(v11, &qword_2803AAFE0);
  sub_26A4DBD10(v12, &qword_2803AAFE0);
  sub_26A4DBD10(v13, &qword_2803AAFE0);
  return sub_26A4DBD10(v14, &qword_2803A99A0);
}

void sub_26A6F884C()
{
  sub_26A4D27F4();
  if (v0 <= 0x3F)
  {
    sub_26A580EB4(319, &qword_2803A9218, type metadata accessor for VRXIdiom, MEMORY[0x277CDF468]);
    if (v1 <= 0x3F)
    {
      sub_26A580EB4(319, &qword_2803A9230, MEMORY[0x277CDFA28], MEMORY[0x277CDF468]);
      if (v2 <= 0x3F)
      {
        sub_26A580EB4(319, &qword_2803ADE78, type metadata accessor for ReferenceConstants, type metadata accessor for EnvironmentConstant);
        if (v3 <= 0x3F)
        {
          sub_26A4E5E18();
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

unint64_t sub_26A6F89BC()
{
  result = qword_2803B4F68;
  if (!qword_2803B4F68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B4F50);
    sub_26A6F8A48();
    sub_26A4DBA00();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B4F68);
  }

  return result;
}

unint64_t sub_26A6F8A48()
{
  result = qword_2803B4F70;
  if (!qword_2803B4F70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B4F48);
    sub_26A6F8B00();
    sub_26A4DBCC8(qword_28157DD90, &qword_2803A91D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B4F70);
  }

  return result;
}

unint64_t sub_26A6F8B00()
{
  result = qword_2803B4F78;
  if (!qword_2803B4F78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B4F40);
    sub_26A4DBCC8(&qword_2803B4F80, &qword_2803A9930);
    sub_26A5D1AA4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B4F78);
  }

  return result;
}

uint64_t type metadata accessor for SearchUIMultiButtonView()
{
  result = qword_2803B4F90;
  if (!qword_2803B4F90)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_26A6F8C64()
{
  sub_26A6F8EEC();
  if (v0 <= 0x3F)
  {
    sub_26A6F8FA4(319, &qword_2803B4FA8, MEMORY[0x277D839F8], MEMORY[0x277CE10B8]);
    if (v1 <= 0x3F)
    {
      sub_26A6F8F50(319, &qword_2803A9218, type metadata accessor for VRXIdiom);
      if (v2 <= 0x3F)
      {
        sub_26A6F8F50(319, &qword_2803A9230, MEMORY[0x277CDFA28]);
        if (v3 <= 0x3F)
        {
          sub_26A6F8FA4(319, &qword_2803AB788, MEMORY[0x277D839B0], MEMORY[0x277CDF468]);
          if (v4 <= 0x3F)
          {
            sub_26A6F8F50(319, &qword_2803B4FB0, MEMORY[0x277CDFAA0]);
            if (v5 <= 0x3F)
            {
              sub_26A6F8FA4(319, &qword_2803ADCF0, MEMORY[0x277D839F8], MEMORY[0x277CDF468]);
              if (v6 <= 0x3F)
              {
                sub_26A6F8F50(319, &qword_2803ADCF8, type metadata accessor for VRXVisualResponseLocation);
                if (v7 <= 0x3F)
                {
                  sub_26A6F8FA4(319, &qword_2803ADD00, &type metadata for ButtonViewConstants, type metadata accessor for EnvironmentConstant);
                  if (v8 <= 0x3F)
                  {
                    sub_26A6F8FF4();
                    if (v9 <= 0x3F)
                    {
                      type metadata accessor for SFButtonItemStyle();
                      if (v10 <= 0x3F)
                      {
                        swift_cvw_initStructMetadataWithLayoutString();
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

void sub_26A6F8EEC()
{
  if (!qword_2803B4FA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803AFE10);
    v0 = sub_26A851088();
    if (!v1)
    {
      atomic_store(v0, &qword_2803B4FA0);
    }
  }
}

void sub_26A6F8F50(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_26A84EEA8();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_26A6F8FA4(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_26A6F8FF4()
{
  if (!qword_2803B4FB8)
  {
    sub_26A4EC5B0(255, &qword_2803AFE28);
    v0 = sub_26A851B48();
    if (!v1)
    {
      atomic_store(v0, &qword_2803B4FB8);
    }
  }
}

_BYTE *storeEnumTagSinglePayload for SearchUIMultiButtonView.LayoutType(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFC)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
          *result = a2 + 4;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_26A6F9138(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 126))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 96);
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

uint64_t sub_26A6F9178(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 124) = 0;
    *(result + 120) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 126) = 1;
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
      *(result + 96) = (a2 - 1);
      return result;
    }

    *(result + 126) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_26A6F9208(uint64_t a1, int a2, char a3, char a4)
{
  v8 = type metadata accessor for SearchUIMultiButtonView();
  OUTLINED_FUNCTION_46();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_41();
  v12 = v11 - v10;
  *v12 = swift_getKeyPath();
  *(v12 + 9) = 0;
  swift_unknownObjectWeakInit();
  v27[0] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AFE10);
  sub_26A851048();
  *(v12 + 24) = v29[0];
  sub_26A4EC5B0(0, &qword_28157D880);
  switch(sub_26A63CD18())
  {
    case 1u:

      v13 = 0.0;
      break;
    case 4u:
      goto LABEL_4;
    default:
      v14 = sub_26A852598();

      v13 = 0.0;
      if ((v14 & 1) == 0)
      {
LABEL_4:
        v13 = 1.0;
      }

      break;
  }

  *v27 = v13;
  sub_26A851048();
  v15 = *(&v29[0] + 1);
  *(v12 + 40) = *&v29[0];
  *(v12 + 48) = v15;
  *(v12 + 56) = swift_getKeyPath();
  *(v12 + 64) = 0;
  v16 = v8[8];
  *(v12 + v16) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91A8);
  swift_storeEnumTagMultiPayload();
  KeyPath = swift_getKeyPath();
  OUTLINED_FUNCTION_162(KeyPath);
  v18 = swift_getKeyPath();
  OUTLINED_FUNCTION_162(v18);
  v19 = swift_getKeyPath();
  OUTLINED_FUNCTION_162(v19);
  v20 = swift_getKeyPath();
  OUTLINED_FUNCTION_162(v20);
  v21 = v8[13];
  *(v12 + v21) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B4FD8);
  swift_storeEnumTagMultiPayload();
  v22 = swift_getKeyPath();
  OUTLINED_FUNCTION_162(v22);
  v23 = swift_getKeyPath();
  OUTLINED_FUNCTION_162(v23);
  v24 = v8[16];
  if (qword_2803A8AE8 != -1)
  {
    swift_once();
  }

  memcpy(v29, qword_2803D1B00, sizeof(v29));
  memcpy(&v28[368], qword_2803D1B00, 0xD0uLL);
  sub_26A4D7E54();
  sub_26A6AEE74(v28);
  memcpy(v27, &v28[400], 0xB0uLL);
  memcpy(&v28[192], &v28[400], 0xB0uLL);
  memcpy((v12 + v24), v28, 0x240uLL);
  *(v12 + v8[17]) = a1;
  *(v12 + v8[18]) = a2;
  *(v12 + v8[20]) = a3;
  *(v12 + v8[19]) = a4 & 1;
  sub_26A6FD85C();
  return sub_26A54DFFC(v27, &v26);
}

id sub_26A6F9608@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v10 = a1;
  OUTLINED_FUNCTION_20_25(a1, MEMORY[0x277D839B0], a3, a4, a5, a6, a7, a8, v36, 0);
  sub_26A851288();
  *a9 = swift_getKeyPath();
  *(a9 + 9) = 0;
  swift_unknownObjectWeakInit();
  *(a9 + 24) = swift_getKeyPath();
  *(a9 + 32) = 0;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AFE10);
  OUTLINED_FUNCTION_20_25(v12, v13, v14, v15, v16, v17, v18, v19, v37, 0);
  v20 = sub_26A851048();
  *(a9 + 40) = v41;
  OUTLINED_FUNCTION_20_25(v20, v21, v22, v23, v24, v25, v26, v27, v38, 0);
  v28 = sub_26A851048();
  *(a9 + 56) = v41;
  OUTLINED_FUNCTION_20_25(v28, MEMORY[0x277D839F8], v29, v30, v31, v32, v33, v34, v39, 0);
  sub_26A851048();
  *(a9 + 72) = v41;
  *(a9 + 112) = v40;
  *(a9 + 120) = v10;
  *(a9 + 124) = a2;
  *(a9 + 125) = 1;
  *(a9 + 80) = *(&v41 + 1);
  *(a9 + 88) = v41;
  *(a9 + 104) = v42;

  return v40;
}

uint64_t sub_26A6F9740()
{
  sub_26A84F988();
  OUTLINED_FUNCTION_5_30();
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_74_0();
  v2 = *(v0 + 24);
  if ((*(v0 + 32) & 1) == 0)
  {

    sub_26A851EA8();
    v3 = sub_26A8501F8();
    OUTLINED_FUNCTION_55();

    sub_26A84F978();
    OUTLINED_FUNCTION_18_23();
    v4 = OUTLINED_FUNCTION_4_63();
    v5(v4);
    return v7;
  }

  return v2;
}

uint64_t sub_26A6F9838()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B50C0);
  OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_74_0();
  *v1 = sub_26A84FA78();
  *(v1 + 8) = 0;
  *(v1 + 16) = 1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B50C8);
  sub_26A6F9A88(v0, v1 + *(v4 + 44));
  sub_26A5376B0(v0, v16);
  OUTLINED_FUNCTION_22_27();
  v5 = swift_allocObject();
  sub_26A5A44A4(v16, v5 + 16);
  v6 = (v1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B50D0) + 36));
  *v6 = sub_26A6FE1E8;
  v6[1] = v5;
  v6[2] = 0;
  v6[3] = 0;
  sub_26A5376B0(v0, v16);
  OUTLINED_FUNCTION_22_27();
  v7 = swift_allocObject();
  sub_26A5A44A4(v16, v7 + 16);
  v8 = (v1 + *(v2 + 36));
  sub_26A84F198();
  sub_26A851BF8();
  *v8 = &unk_26A879688;
  v8[1] = v7;
  sub_26A5376B0(v0, v16);
  OUTLINED_FUNCTION_22_27();
  v9 = swift_allocObject();
  sub_26A5A44A4(v16, v9 + 16);
  type metadata accessor for SFButtonItemStyle();
  OUTLINED_FUNCTION_5_61();
  sub_26A6FE804(v10, v11, &unk_26A879668, v12);
  OUTLINED_FUNCTION_6_52();
  sub_26A6FE428(v13, v14);
  sub_26A850C78();

  return sub_26A4DBD10(v1, &qword_2803B50C0);
}

uint64_t sub_26A6F9A88@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B5100);
  v4 = *(v27 - 8);
  MEMORY[0x28223BE20](v27);
  v6 = &v24 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B5108);
  MEMORY[0x28223BE20](v7);
  v9 = &v24 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B5110);
  MEMORY[0x28223BE20](v10);
  v12 = &v24 - v11;
  v28[0] = *(a1 + 56);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B4FE8);
  sub_26A851058();
  if (v29)
  {
    swift_getKeyPath();
    sub_26A5376B0(a1, v28);
    v13 = swift_allocObject();
    sub_26A5A44A4(v28, v13 + 16);
    v26 = v10;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B5080);
    v25 = v7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B5120);
    sub_26A4DBCC8(&qword_2803B5090, &qword_2803B5080);
    sub_26A6FDCE0();
    sub_26A6FE478();
    sub_26A8512F8();
    v14 = *(a1 + 80);
    *&v28[0] = *(a1 + 72);
    *(&v28[0] + 1) = v14;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B50B8);
    sub_26A851058();
    v15 = v29;
    *&v12[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B5140) + 36)] = v15;
    sub_26A5376B0(a1, v28);
    v16 = swift_allocObject();
    sub_26A5A44A4(v28, v16 + 16);
    v17 = &v12[*(v26 + 36)];
    *v17 = sub_26A6FE7D0;
    v17[1] = v16;
    v17[2] = 0;
    v17[3] = 0;
    sub_26A4D7E54();
    swift_storeEnumTagMultiPayload();
    sub_26A6FE504();
    sub_26A6FE6A8();
    sub_26A84FDF8();
    sub_26A4DBD10(v12, &qword_2803B5110);
  }

  else
  {
    v25 = v4;
    v28[0] = *(a1 + 40);
    sub_26A851058();
    if (!v29)
    {
      v21 = 1;
      goto LABEL_6;
    }

    swift_getKeyPath();
    sub_26A5376B0(a1, v28);
    v18 = swift_allocObject();
    v26 = v10;
    sub_26A5A44A4(v28, v18 + 16);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B5080);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B5120);
    sub_26A4DBCC8(&qword_2803B5090, &qword_2803B5080);
    sub_26A6FDCE0();
    sub_26A6FE478();
    sub_26A8512F8();
    v19 = v25;
    v20 = v27;
    (*(v25 + 16))(v9, v6, v27);
    swift_storeEnumTagMultiPayload();
    sub_26A6FE504();
    sub_26A6FE6A8();
    sub_26A84FDF8();
    (*(v19 + 8))(v6, v20);
  }

  v21 = 0;
LABEL_6:
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B5118);
  return __swift_storeEnumTagSinglePayload(a2, v21, 1, v22);
}

uint64_t sub_26A6FA030()
{
  sub_26A8514C8();
  sub_26A84F1C8();
}

void *sub_26A6FA110()
{
  result = sub_26A6FA1A0();
  if (result)
  {
    if (sub_26A73670C(result))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B4FE8);
      return sub_26A851068();
    }

    else
    {
    }
  }

  return result;
}

void *sub_26A6FA1A0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AE150);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_26A8571A0;
  v2 = *(v0 + 120);
  v3 = sub_26A6F9740();
  *(v1 + 32) = sub_26A6FAA24(v2, v3);
  v4 = sub_26A5E7A38(v1, *(v0 + 124));

  return v4;
}

uint64_t sub_26A6FA240(uint64_t a1)
{
  v1[17] = a1;
  sub_26A851BD8();
  v1[18] = sub_26A851BC8();
  v3 = sub_26A851B78();
  v1[19] = v3;
  v1[20] = v2;

  return MEMORY[0x2822009F8](sub_26A6FA2D8, v3, v2);
}

uint64_t sub_26A6FA2D8()
{
  v1 = v0[17];
  v2 = *(v1 + 40);
  v3 = *(v1 + 48);
  v0[5] = v2;
  v0[6] = v3;
  v0[21] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B4FE8);
  sub_26A851058();
  if (v0[13] || (v4 = v0[17], v5 = *(v4 + 56), v0[22] = v5, v6 = *(v4 + 64), v0[7] = v5, v0[23] = v6, v0[8] = v6, sub_26A851058(), v0[14]))
  {

LABEL_4:
    OUTLINED_FUNCTION_2_9();

    return v7();
  }

  v9 = sub_26A6FA1A0();
  if (v9)
  {
    v10 = v9;
    if (sub_26A73670C())
    {

      v0[11] = v2;
      v0[12] = v3;
      v0[16] = v10;
      sub_26A851068();
      goto LABEL_4;
    }
  }

  v11 = swift_task_alloc();
  v0[24] = v11;
  *v11 = v0;
  v11[1] = sub_26A6FA474;

  return sub_26A6FA66C();
}

uint64_t sub_26A6FA474()
{
  OUTLINED_FUNCTION_1_10();
  v1 = *v0;
  OUTLINED_FUNCTION_2_48();
  *v3 = v2;
  v4 = *v0;
  OUTLINED_FUNCTION_2_48();
  *v5 = v4;
  *(v7 + 200) = v6;

  v8 = *(v1 + 160);
  v9 = *(v1 + 152);

  return MEMORY[0x2822009F8](sub_26A6FA590, v9, v8);
}

uint64_t sub_26A6FA590()
{
  OUTLINED_FUNCTION_1_10();
  v1 = *(v0 + 200);

  if (v1)
  {
    if (sub_26A73670C())
    {
      v2 = *(v0 + 200);
      *(v0 + 72) = *(v0 + 176);
      *(v0 + 120) = v2;
      sub_26A851068();
      goto LABEL_6;
    }
  }

  v3 = *(v0 + 136);
  v4 = *(v3 + 88);
  v5 = *(v3 + 96);
  LOBYTE(v3) = *(v3 + 104);
  *(v0 + 16) = v4;
  *(v0 + 24) = v5;
  *(v0 + 32) = v3;
  *(v0 + 33) = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803AC170);
  sub_26A851268();
LABEL_6:
  OUTLINED_FUNCTION_2_9();

  return v6();
}

uint64_t sub_26A6FA66C()
{
  v1[2] = v0;
  sub_26A851BD8();
  v1[3] = sub_26A851BC8();
  v3 = sub_26A851B78();
  v1[4] = v3;
  v1[5] = v2;

  return MEMORY[0x2822009F8](sub_26A6FA704, v3, v2);
}

uint64_t sub_26A6FA704()
{
  v1 = v0;
  v2 = *(v0 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AE150);
  v3 = swift_allocObject();
  *(v1 + 48) = v3;
  *(v3 + 16) = xmmword_26A8571A0;
  v4 = *(v2 + 120);
  v5 = sub_26A6F9740();
  *(v3 + 32) = sub_26A6FAA24(v4, v5);
  v6 = *(v2 + 124);
  v7 = swift_task_alloc();
  *(v1 + 56) = v7;
  *v7 = v1;
  v7[1] = sub_26A6FA810;

  return sub_26A5E7048(v3, v6);
}

uint64_t sub_26A6FA810()
{
  v1 = *v0;
  OUTLINED_FUNCTION_2_48();
  *v3 = v2;
  v4 = *v0;
  OUTLINED_FUNCTION_2_48();
  *v5 = v4;
  *(v7 + 64) = v6;

  v8 = *(v1 + 40);
  v9 = *(v1 + 32);

  return MEMORY[0x2822009F8](sub_26A6FA954, v9, v8);
}

uint64_t sub_26A6FA954()
{
  OUTLINED_FUNCTION_1_10();

  v1 = *(v0 + 8);
  v2 = *(v0 + 64);

  return v1(v2);
}

_DWORD *sub_26A6FA9B4(_DWORD *result, _DWORD *a2)
{
  if (*result != *a2)
  {
    sub_26A6FA1A0();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B4FE8);
    return sub_26A851068();
  }

  return result;
}

id sub_26A6FAA24(uint64_t a1, uint64_t a2)
{
  swift_getObjectType();
  v4 = [v23 buttonAppearance];
  if (v4)
  {
    v5 = v4;
    if (![v4 style])
    {
      if (a1)
      {
        [v5 copy];
        sub_26A852108();
        swift_unknownObjectRelease();
        sub_26A4EC5B0(0, &qword_2803B4FF0);
        if (swift_dynamicCast())
        {
          v10 = v25;
          [v25 setStyle_];

          goto LABEL_12;
        }
      }
    }
  }

  else
  {
    if (!a1)
    {
      goto LABEL_24;
    }

    v9 = [objc_allocWithZone(MEMORY[0x277D4C208]) init];
    if (v9)
    {
      v10 = v9;
      [v9 setStyle_];
LABEL_12:
      v7 = v10;
      v8 = v7;
      goto LABEL_13;
    }
  }

  v6 = [v23 buttonAppearance];
  if (!v6)
  {
    goto LABEL_24;
  }

  v7 = v6;
  v8 = 0;
LABEL_13:
  v11 = [v7 tintColor];
  if (v11)
  {
    v12 = v11;

    v7 = v12;
    goto LABEL_20;
  }

  if ([v7 style] - 3 > 1)
  {
    goto LABEL_20;
  }

  v13 = [v7 role];
  if (v13 != 3)
  {
    if (v13 == 1)
    {
      [v7 copy];
      sub_26A852108();
      swift_unknownObjectRelease();

      sub_26A4EC5B0(0, &qword_2803B4FF0);
      if (swift_dynamicCast())
      {
        goto LABEL_28;
      }

LABEL_29:

      goto LABEL_24;
    }

LABEL_20:

    if (!v8)
    {
      goto LABEL_24;
    }

    goto LABEL_21;
  }

  [v7 copy];
  sub_26A852108();
  swift_unknownObjectRelease();

  sub_26A4EC5B0(0, &qword_2803B4FF0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_29;
  }

LABEL_28:
  v8 = v25;
  sub_26A58368C(a2, v14, v15, v16, v17, v18, v19, v26);

  sub_26A638BC8(v26);
  v22 = sub_26A6FD5E0();

  [v25 setTintColor_];

LABEL_21:
  [v23 copy];
  sub_26A852108();
  swift_unknownObjectRelease();
  sub_26A4EC5B0(0, &qword_2803AFE28);
  if (swift_dynamicCast())
  {
    v20 = v24;
    [v20 setButtonAppearance_];

    return v20;
  }

LABEL_24:

  return v23;
}

unint64_t sub_26A6FADEC()
{
  result = qword_2803B4FC0;
  if (!qword_2803B4FC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B4FC0);
  }

  return result;
}

uint64_t sub_26A6FAE5C()
{
  sub_26A84F988();
  OUTLINED_FUNCTION_5_30();
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_74_0();
  v2 = *(v0 + 56);
  if ((*(v0 + 64) & 1) == 0)
  {

    sub_26A851EA8();
    v3 = sub_26A8501F8();
    OUTLINED_FUNCTION_55();

    sub_26A84F978();
    OUTLINED_FUNCTION_18_23();
    v4 = OUTLINED_FUNCTION_4_63();
    v5(v4);
    return v7;
  }

  return v2;
}

uint64_t sub_26A6FAF54()
{
  sub_26A84F988();
  OUTLINED_FUNCTION_5_30();
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_74_0();
  v2 = *(v0 + *(type metadata accessor for SearchUIMultiButtonView() + 44));
  OUTLINED_FUNCTION_49_2();
  if (!v3)
  {

    sub_26A851EA8();
    v4 = sub_26A8501F8();
    OUTLINED_FUNCTION_55();

    sub_26A84F978();
    swift_getAtKeyPath();
    v5 = OUTLINED_FUNCTION_4_63();
    v6(v5);
    LOBYTE(v2) = v8;
  }

  return v2 & 1;
}

uint64_t sub_26A6FB068@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_26A84F988();
  OUTLINED_FUNCTION_15();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_41();
  v9 = v8 - v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B4FD8);
  OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_74_0();
  type metadata accessor for SearchUIMultiButtonView();
  sub_26A4D7E54();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_26A84F4E8();
    OUTLINED_FUNCTION_46();
    return (*(v11 + 32))(a1, v1);
  }

  else
  {
    sub_26A851EA8();
    v13 = sub_26A8501F8();
    OUTLINED_FUNCTION_8_41();

    sub_26A84F978();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v9, v3);
  }
}

double sub_26A6FB23C()
{
  sub_26A84F988();
  OUTLINED_FUNCTION_5_30();
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_74_0();
  v2 = *(v0 + *(type metadata accessor for SearchUIMultiButtonView() + 56));
  OUTLINED_FUNCTION_49_2();
  if (v3)
  {
    return v2;
  }

  sub_26A851EA8();
  v4 = sub_26A8501F8();
  OUTLINED_FUNCTION_55();

  sub_26A84F978();
  OUTLINED_FUNCTION_18_23();
  v5 = OUTLINED_FUNCTION_4_63();
  v6(v5);
  return v8;
}

uint64_t sub_26A6FB348()
{
  sub_26A84F988();
  OUTLINED_FUNCTION_5_30();
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_41();
  v2 = type metadata accessor for SearchUIMultiButtonView();
  v3 = *(v0 + v2[9]);
  OUTLINED_FUNCTION_49_2();
  if (v4)
  {
    if (v3)
    {
      goto LABEL_9;
    }
  }

  else
  {

    sub_26A851EA8();
    v5 = sub_26A8501F8();
    OUTLINED_FUNCTION_8_41();

    sub_26A84F978();
    swift_getAtKeyPath();
    sub_26A49035C(v3, 0);
    v6 = OUTLINED_FUNCTION_5_21();
    v7(v6);
    if (v19)
    {
      goto LABEL_9;
    }
  }

  v8 = *(v0 + v2[10]);
  OUTLINED_FUNCTION_49_2();
  if (v4)
  {
    if ((v8 & 1) == 0)
    {
      goto LABEL_12;
    }

LABEL_9:
    LOBYTE(v9) = 0;
    return v9 & 1;
  }

  sub_26A851EA8();
  v11 = sub_26A8501F8();
  OUTLINED_FUNCTION_8_41();

  sub_26A84F978();
  swift_getAtKeyPath();
  sub_26A49035C(v8, 0);
  v12 = OUTLINED_FUNCTION_5_21();
  v13(v12);
  if (v18)
  {
    goto LABEL_9;
  }

LABEL_12:
  v9 = *(v0 + v2[12]);
  OUTLINED_FUNCTION_49_2();
  if (!v4)
  {

    sub_26A851EA8();
    v14 = sub_26A8501F8();
    OUTLINED_FUNCTION_8_41();

    sub_26A84F978();
    swift_getAtKeyPath();
    sub_26A49035C(v9, 0);
    v15 = OUTLINED_FUNCTION_5_21();
    v16(v15);
    LOBYTE(v9) = v17;
  }

  return v9 & 1;
}

uint64_t sub_26A6FB5C8@<X0>(uint64_t a1@<X8>)
{
  v3 = v2;
  type metadata accessor for SearchUIMultiButtonView();
  OUTLINED_FUNCTION_5_30();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  sub_26A84F988();
  OUTLINED_FUNCTION_15();
  v43 = v9;
  v44 = v8;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_41();
  v12 = v11 - v10;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B4FC8);
  OUTLINED_FUNCTION_79(v13);
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v14);
  v16 = &v39 - v15;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B4FD0);
  OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v17);
  v19 = &v39 - v18;
  sub_26A6FBA0C(v2, v16);
  v20 = 0.0;
  v21 = 0;
  v22 = 0;
  v23 = 0;
  if (sub_26A6FB348())
  {
    goto LABEL_11;
  }

  v24 = *(v2 + v1[9]);
  OUTLINED_FUNCTION_49_2();
  v41 = v6;
  v42 = a1;
  if (v25)
  {
    if (v24)
    {
LABEL_7:
      v26 = v1[15];
      v27 = *(v3 + v1[16] + 296);
      goto LABEL_8;
    }
  }

  else
  {

    sub_26A851EA8();
    v28 = sub_26A8501F8();
    OUTLINED_FUNCTION_8_41();

    sub_26A84F978();
    swift_getAtKeyPath();
    sub_26A49035C(v24, 0);
    (*(v43 + 8))(v12, v44);
    if (v46 == 1)
    {
      goto LABEL_7;
    }
  }

  v26 = v1[15];
  v27 = *(v3 + v1[16] + 280);
LABEL_8:
  v29 = *(v3 + v26);
  if ((*(v3 + v26 + 8) & 1) == 0)
  {
    v40 = v27;

    sub_26A851EA8();
    v30 = sub_26A8501F8();
    OUTLINED_FUNCTION_8_41();

    sub_26A84F978();
    swift_getAtKeyPath();
    sub_26A49035C(v29, 0);
    (*(v43 + 8))(v12, v44);
    v27 = v40;
    v29 = v46;
  }

  a1 = v42;
  v20 = v27(v29);
  v21 = v31;
  v22 = v32;
  v23 = v33;
LABEL_11:
  v34 = sub_26A850248();
  sub_26A4D7EA8();
  v35 = &v19[*(v45 + 36)];
  *v35 = v34;
  *(v35 + 1) = v20;
  *(v35 + 2) = v21;
  *(v35 + 3) = v22;
  *(v35 + 4) = v23;
  v35[40] = 0;
  sub_26A6FD8B0();
  v36 = swift_allocObject();
  sub_26A6FD85C();
  v37 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B4FE0) + 36));
  sub_26A84F198();
  sub_26A851BF8();
  *v37 = &unk_26A879528;
  v37[1] = v36;
  return sub_26A4D7EA8();
}

uint64_t sub_26A6FBA0C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v42 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B4FF8);
  MEMORY[0x28223BE20](v3 - 8);
  v38 = &v32 - v4;
  v35 = type metadata accessor for SearchUIButtonLayout(0);
  MEMORY[0x28223BE20](v35);
  v36 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v32 - v7;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B5000);
  MEMORY[0x28223BE20](v41);
  v37 = &v32 - v9;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B5008);
  MEMORY[0x28223BE20](v39);
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B5010);
  MEMORY[0x28223BE20](v40);
  v11 = &v32 - v10;
  v12 = sub_26A84F3A8();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for SearchUIMultiButtonView();
  sub_26A72003C(v15);
  v17 = sub_26A84F388();
  (*(v13 + 8))(v15, v12);
  if (v17)
  {
    sub_26A6FBEF8(v11);
    sub_26A4D7E54();
    swift_storeEnumTagMultiPayload();
    sub_26A6FD960();
    sub_26A6FDA18();
    sub_26A84FDF8();
    v18 = v11;
    v19 = &qword_2803B5010;
  }

  else
  {
    v34 = sub_26A73670C();
    v33 = sub_26A6FC0F4();
    v20 = *(a1 + *(v16 + 80)) != 3;
    v21 = sub_26A6FAE5C();
    v22 = sub_26A6FAF54();
    v23 = sub_26A6FB23C();
    v24 = v35;
    sub_26A6FB068(&v8[*(v35 + 40)]);
    v25 = a1 + *(v16 + 64);
    memcpy(v44, (v25 + 192), 0xB0uLL);
    v26 = v33;
    *v8 = v34;
    *(v8 + 1) = v26;
    v8[16] = v20;
    *(v8 + 3) = v21;
    v8[32] = v22 & 1;
    *(v8 + 5) = v23;
    memcpy(&v8[*(v24 + 44)], (v25 + 192), 0xB0uLL);
    v27 = v36;
    sub_26A6FD85C();
    v28 = v38;
    sub_26A6FD8B0();
    v29 = v37;
    sub_26A4D7E54();
    v30 = *(v41 + 44);
    sub_26A54DFFC(v44, &v43);
    sub_26A6FC238(a1, &v29[v30]);
    sub_26A4DBD10(v28, &qword_2803B4FF8);
    sub_26A6FD904(v27);
    sub_26A4D7E54();
    swift_storeEnumTagMultiPayload();
    sub_26A6FD960();
    sub_26A6FDA18();
    sub_26A84FDF8();
    v18 = v29;
    v19 = &qword_2803B5000;
  }

  return sub_26A4DBD10(v18, v19);
}

void *sub_26A6FBEF8@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B5028);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &__src[-v5];
  v7 = sub_26A84FBF8();
  v8 = type metadata accessor for SearchUIMultiButtonView();
  v9 = *(v2 + *(v8 + 64) + 200);
  *v6 = v7;
  *(v6 + 1) = v9;
  v6[16] = 0;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B5070);
  sub_26A6FD080(v2, &v6[*(v10 + 44)]);
  v11 = *(v2 + *(v8 + 68));
  sub_26A73670C(v11);
  sub_26A73670C(v11);
  sub_26A851448();
  sub_26A84F628();
  sub_26A4D7EA8();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B5010);
  return memcpy((a1 + *(v12 + 36)), __src, 0x70uLL);
}

uint64_t sub_26A6FC0F4()
{
  v1 = v0;
  v2 = type metadata accessor for SearchUIMultiButtonView();
  v3 = *(v0 + *(v2 + 80));
  v4 = 1;
  v5 = v2;
  switch(v3)
  {
    case 1:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B4FE8);
      sub_26A851058();
      v4 = sub_26A73670C();
      if (v7)
      {
      }

      break;
    case 2:
      return v4;
    case 3:
    case 4:
      v4 = *(v1 + *(v2 + 64) + 344);
      break;
    default:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B4FE8);
      sub_26A851058();
      v4 = sub_26A73670C();
      if (v7)
      {
      }

      if (*(v1 + *(v5 + 64) + 344) < v4)
      {
        v4 = 1;
      }

      break;
  }

  return v4;
}

uint64_t sub_26A6FC238@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for SearchUIMultiButtonView();
  MEMORY[0x28223BE20](v4);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B5058);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v19 - v7;
  v21 = *(a1 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B4FE8);
  sub_26A851058();
  v9 = v20;
  if (v20)
  {
    v10 = *(a1 + *(v4 + 68));

    sub_26A56C548(v9, v10);
    v19 = v8;
    v11 = a2;
    v13 = v12;

    *&v21 = v13;
    a2 = v11;
    swift_getKeyPath();
    sub_26A6FD8B0();
    v14 = swift_allocObject();
    sub_26A6FD85C();
    v15 = swift_allocObject();
    *(v15 + 16) = sub_26A6FDDD4;
    *(v15 + 24) = v14;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B50A8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B5068);
    sub_26A4DBCC8(&qword_2803B50B0, &qword_2803B50A8);
    sub_26A6FDCE0();
    sub_26A6FDBD8();
    v16 = v19;
    sub_26A8512F8();
    (*(v6 + 32))(v11, v16, v5);
    v17 = 0;
  }

  else
  {
    v17 = 1;
  }

  return __swift_storeEnumTagSinglePayload(a2, v17, 1, v5);
}

uint64_t sub_26A6FC578(void *a1)
{
  if ((sub_26A6FC984() & 1) == 0)
  {
    if (qword_2803A90A8 == -1)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

  if (qword_2803A90B0 != -1)
  {
LABEL_11:
    swift_once();
  }

LABEL_5:
  sub_26A4D7E54();
  sub_26A4D7E54();
  sub_26A6AEE74(v23);
  sub_26A4DBD10(&v14, &qword_2803AA880);
  memcpy(&v15[1], v23, 0xBFuLL);
  v15[36] = 0;
  v15[35] = sub_26A80A810;
  v15[0] = a1;
  KeyPath = swift_getKeyPath();
  v3 = swift_getKeyPath();
  v4 = qword_2803A8AE8;
  v5 = a1;
  if (v4 != -1)
  {
    swift_once();
  }

  memcpy(v11, qword_2803D1B00, sizeof(v11));
  memcpy(&v10[368], qword_2803D1B00, 0xD0uLL);
  sub_26A4D7E54();
  sub_26A6AEE74(v10);
  memcpy(v12, &v10[400], sizeof(v12));
  memcpy(&v10[192], &v10[400], 0xB0uLL);
  v13[592] = 0;
  v13[584] = 0;
  memcpy(&v13[7], v10, 0x240uLL);
  memcpy(v16, v15, sizeof(v16));
  sub_26A54DFFC(v12, v17);
  sub_26A851448();
  sub_26A84F628();
  memcpy(v17, v16, sizeof(v17));
  v18 = KeyPath;
  v19 = 0;
  v20 = v3;
  v21 = 0;
  memcpy(v22, v13, 0x247uLL);
  v22[583] = 0;
  sub_26A4EC5B0(0, &qword_28157D880);
  v6 = sub_26A63CD18();
  v7 = 0x6867696C746F7053;
  switch(v6)
  {
    case 1:
      goto LABEL_9;
    case 4:
      break;
    default:
      sub_26A852598();
LABEL_9:

      break;
  }

  MEMORY[0x28223BE20](v7);
  sub_26A607528(v8 & 1, sub_26A6FDE84);
  return sub_26A4DBD10(v17, &qword_2803B08A8);
}

id sub_26A6FC984()
{
  result = [v0 buttonAppearance];
  if (result)
  {
    v2 = result;
    v3 = [result role];

    return (v3 == 3);
  }

  return result;
}

double sub_26A6FC9DC@<D0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for SearchUIMultiButtonView();
  MEMORY[0x28223BE20](v2 - 8);
  sub_26A4D7E54();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B50B8);
  sub_26A851058();
  *(a1 + 1024) = v5;
  sub_26A6FD8B0();
  v3 = swift_allocObject();
  sub_26A6FD85C();
  *(a1 + 1032) = sub_26A6FE170;
  *(a1 + 1040) = v3;
  result = 0.0;
  *(a1 + 1048) = 0u;
  return result;
}

uint64_t sub_26A6FCC94(uint64_t a1)
{
  v1[5] = a1;
  sub_26A851BD8();
  v1[6] = sub_26A851BC8();
  v3 = sub_26A851B78();
  v1[7] = v3;
  v1[8] = v2;

  return MEMORY[0x2822009F8](sub_26A6FCD2C, v3, v2);
}

uint64_t sub_26A6FCD2C()
{
  v1 = v0[5];
  v2 = type metadata accessor for SearchUIMultiButtonView();
  v3 = *(v1 + *(v2 + 68));
  v4 = swift_task_alloc();
  *(v4 + 16) = v1;
  v5 = sub_26A4F920C(sub_26A6FD83C, v4, v3);
  v0[9] = v5;

  v6 = *(v1 + *(v2 + 76));
  v7 = swift_task_alloc();
  v0[10] = v7;
  *v7 = v0;
  v7[1] = sub_26A6FCE38;

  return sub_26A5E7048(v5, v6);
}

uint64_t sub_26A6FCE38()
{
  v1 = *v0;
  OUTLINED_FUNCTION_2_48();
  *v3 = v2;
  v4 = *v0;
  OUTLINED_FUNCTION_2_48();
  *v5 = v4;
  *(v7 + 88) = v6;

  v8 = *(v1 + 64);
  v9 = *(v1 + 56);

  return MEMORY[0x2822009F8](sub_26A6FCF7C, v9, v8);
}

uint64_t sub_26A6FCF7C()
{
  v1 = *(v0 + 88);
  v2 = *(v0 + 40);

  *(v0 + 16) = *(v2 + 24);
  *(v0 + 32) = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B4FE8);
  sub_26A851068();
  OUTLINED_FUNCTION_2_9();

  return v3();
}

id sub_26A6FD018@<X0>(uint64_t a1@<X1>, void *a2@<X8>)
{
  v3 = *(a1 + *(type metadata accessor for SearchUIMultiButtonView() + 72));
  v4 = sub_26A6FAE5C();
  result = sub_26A6FAA24(v3, v4);
  *a2 = result;
  return result;
}

uint64_t sub_26A6FD080@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for SearchUIMultiButtonView();
  MEMORY[0x28223BE20](v4 - 8);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B5078);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v11 - v7;
  v13 = *(a1 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B4FE8);
  sub_26A851058();
  if (v12)
  {
    *&v13 = v12;
    swift_getKeyPath();
    sub_26A6FD8B0();
    swift_allocObject();
    sub_26A6FD85C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B5080);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B5088);
    sub_26A4DBCC8(&qword_2803B5090, &qword_2803B5080);
    sub_26A6FDCE0();
    sub_26A6FDD48();
    sub_26A8512F8();
    (*(v6 + 32))(a2, v8, v5);
    v9 = 0;
  }

  else
  {
    v9 = 1;
  }

  return __swift_storeEnumTagSinglePayload(a2, v9, 1, v5);
}

id sub_26A6FD340@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  type metadata accessor for SearchUIMultiButtonView();
  sub_26A851448();
  sub_26A84F628();
  *a2 = v4;
  memcpy(a2 + 1, __src, 0x70uLL);

  return v4;
}

id sub_26A6FD460(int a1, id a2)
{
  result = [a2 view];
  if (!result)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_26A6FD4F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_26A6FEA58();

  return MEMORY[0x28212E3C8](a1, a2, a3, v6);
}

uint64_t sub_26A6FD554(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_26A6FEA58();

  return MEMORY[0x28212E358](a1, a2, a3, v6);
}

void sub_26A6FD5B8()
{
  sub_26A6FEA58();
  sub_26A84FD88();
  __break(1u);
}

id sub_26A6FD5E0()
{
  sub_26A4EC5B0(0, &qword_28157D7E8);

  v0 = sub_26A851FB8();
  v1 = [objc_allocWithZone(MEMORY[0x277D4C298]) init];
  v2 = [v0 CGColor];
  v3 = sub_26A851E28();

  if (!v3)
  {
    goto LABEL_8;
  }

  if (*(v3 + 16) < 4uLL)
  {

LABEL_8:

    return v1;
  }

  result = [v1 setRedComponent_];
  if (*(v3 + 16) < 2uLL)
  {
    __break(1u);
    goto LABEL_10;
  }

  result = [v1 setGreenComponent_];
  if (*(v3 + 16) < 3uLL)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  result = [v1 setBlueComponent_];
  if (*(v3 + 16) >= 4uLL)
  {
    v5 = *(v3 + 56);

    [v1 setAlphaComponent_];
    goto LABEL_8;
  }

LABEL_11:
  __break(1u);
  return result;
}

uint64_t sub_26A6FD734()
{
  sub_26A5376B0(v0, &v2);
  sub_26A53770C();
  return sub_26A851248();
}

uint64_t sub_26A6FD778()
{
  OUTLINED_FUNCTION_1_10();
  v2 = type metadata accessor for SearchUIMultiButtonView();
  OUTLINED_FUNCTION_79(v2);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_26A6FEAAC;

  return sub_26A6FCC94(v0 + v4);
}

uint64_t sub_26A6FD85C()
{
  OUTLINED_FUNCTION_145();
  v1(0);
  OUTLINED_FUNCTION_46();
  v2 = OUTLINED_FUNCTION_211();
  v3(v2);
  return v0;
}

uint64_t sub_26A6FD8B0()
{
  OUTLINED_FUNCTION_145();
  v1(0);
  OUTLINED_FUNCTION_46();
  v2 = OUTLINED_FUNCTION_211();
  v3(v2);
  return v0;
}

uint64_t sub_26A6FD904(uint64_t a1)
{
  v2 = type metadata accessor for SearchUIButtonLayout(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_26A6FD960()
{
  result = qword_2803B5018;
  if (!qword_2803B5018)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B5010);
    sub_26A4DBCC8(&qword_2803B5020, &qword_2803B5028);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B5018);
  }

  return result;
}

unint64_t sub_26A6FDA18()
{
  result = qword_2803B5030;
  if (!qword_2803B5030)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B5000);
    sub_26A4DBCC8(&qword_2803B5038, &qword_2803B4FF8);
    sub_26A6FDAD0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B5030);
  }

  return result;
}

unint64_t sub_26A6FDAD0()
{
  result = qword_2803B5040;
  if (!qword_2803B5040)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B5048);
    sub_26A6FDB54();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B5040);
  }

  return result;
}

unint64_t sub_26A6FDB54()
{
  result = qword_2803B5050;
  if (!qword_2803B5050)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B5058);
    sub_26A6FDBD8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B5050);
  }

  return result;
}

unint64_t sub_26A6FDBD8()
{
  result = qword_2803B5060;
  if (!qword_2803B5060)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B5068);
    sub_26A608E08();
    sub_26A608FAC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B5060);
  }

  return result;
}

id sub_26A6FDC64@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  v4 = type metadata accessor for SearchUIMultiButtonView();
  OUTLINED_FUNCTION_79(v4);

  return sub_26A6FD340(a1, a2);
}

unint64_t sub_26A6FDCE0()
{
  result = qword_2803B5098;
  if (!qword_2803B5098)
  {
    sub_26A4EC5B0(255, &qword_2803AFE30);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B5098);
  }

  return result;
}

unint64_t sub_26A6FDD48()
{
  result = qword_2803B50A0;
  if (!qword_2803B50A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B5088);
    sub_26A60917C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B50A0);
  }

  return result;
}

uint64_t sub_26A6FDDD4()
{
  v0 = type metadata accessor for SearchUIMultiButtonView();
  OUTLINED_FUNCTION_79(v0);
  v1 = OUTLINED_FUNCTION_5_21();

  return sub_26A6FC578(v1);
}

uint64_t objectdestroyTm_24()
{
  v1 = type metadata accessor for SearchUIMultiButtonView();
  v2 = (*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80);
  v3 = v0 + v2;
  if (*(v0 + v2 + 9))
  {
    if ((*(v3 + 8) & 1) == 0)
    {
      MEMORY[0x26D665710](v0 + v2);
    }
  }

  else
  {
  }

  MEMORY[0x26D665710](v3 + 16);

  sub_26A49035C(*(v3 + 56), *(v3 + 64));
  v4 = v1[8];
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

  OUTLINED_FUNCTION_7_8(v1[9]);
  OUTLINED_FUNCTION_7_8(v1[10]);
  OUTLINED_FUNCTION_7_8(v1[11]);
  OUTLINED_FUNCTION_7_8(v1[12]);
  v6 = v1[13];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B4FD8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_26A84F4E8();
    OUTLINED_FUNCTION_46();
    (*(v7 + 8))(v3 + v6);
  }

  else
  {
  }

  OUTLINED_FUNCTION_7_8(v1[14]);
  OUTLINED_FUNCTION_7_8(v1[15]);
  v8 = v3 + v1[16];
  sub_26A49035C(*v8, *(v8 + 8));
  sub_26A49035C(*(v8 + 16), *(v8 + 24));
  sub_26A49035C(*(v8 + 32), *(v8 + 40));
  sub_26A49035C(*(v8 + 48), *(v8 + 56));
  sub_26A49035C(*(v8 + 64), *(v8 + 72));
  sub_26A49035C(*(v8 + 80), *(v8 + 88));
  sub_26A49035C(*(v8 + 96), *(v8 + 104));
  sub_26A49035C(*(v8 + 112), *(v8 + 120));
  sub_26A49035C(*(v8 + 128), *(v8 + 136));
  sub_26A49035C(*(v8 + 144), *(v8 + 152));

  return swift_deallocObject();
}

void sub_26A6FE170()
{
  v0 = type metadata accessor for SearchUIMultiButtonView();
  OUTLINED_FUNCTION_79(v0);

  sub_26A6FCB5C();
}

uint64_t sub_26A6FE1F0()
{
  OUTLINED_FUNCTION_1_10();
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_26A6FE280;

  return sub_26A6FA240(v0 + 16);
}

uint64_t sub_26A6FE280()
{
  OUTLINED_FUNCTION_1_10();
  v1 = *v0;
  OUTLINED_FUNCTION_2_48();
  *v2 = v1;

  OUTLINED_FUNCTION_2_9();

  return v3();
}

unint64_t sub_26A6FE370()
{
  result = qword_2803B50E0;
  if (!qword_2803B50E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B50D0);
    sub_26A4DBCC8(&qword_2803B50E8, &qword_2803B50F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B50E0);
  }

  return result;
}

uint64_t sub_26A6FE428(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_26A6FE478()
{
  result = qword_2803B5128;
  if (!qword_2803B5128)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B5120);
    sub_26A60917C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B5128);
  }

  return result;
}

unint64_t sub_26A6FE504()
{
  result = qword_2803B5130;
  if (!qword_2803B5130)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B5110);
    sub_26A6FE590();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B5130);
  }

  return result;
}

unint64_t sub_26A6FE590()
{
  result = qword_2803B5138;
  if (!qword_2803B5138)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B5140);
    sub_26A6FE61C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B5138);
  }

  return result;
}

unint64_t sub_26A6FE61C()
{
  result = qword_2803B5148;
  if (!qword_2803B5148)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B5150);
    sub_26A6FE6A8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B5148);
  }

  return result;
}

unint64_t sub_26A6FE6A8()
{
  result = qword_2803B5158;
  if (!qword_2803B5158)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B5100);
    sub_26A6FE478();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B5158);
  }

  return result;
}

uint64_t objectdestroy_35Tm()
{
  if (*(v0 + 25))
  {
    if ((*(v0 + 24) & 1) == 0)
    {
      MEMORY[0x26D665710](v0 + 16);
    }
  }

  else
  {
  }

  MEMORY[0x26D665710](v0 + 32);
  sub_26A49035C(*(v0 + 40), *(v0 + 48));

  OUTLINED_FUNCTION_22_27();

  return swift_deallocObject();
}

uint64_t sub_26A6FE804(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    a4();
    sub_26A6FE428(&qword_2803A91E8, MEMORY[0x277CDD8B0]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_26A6FE8B8()
{
  result = qword_2803B5168;
  if (!qword_2803B5168)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B4FD0);
    sub_26A6FE944();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B5168);
  }

  return result;
}

unint64_t sub_26A6FE944()
{
  result = qword_2803B5170;
  if (!qword_2803B5170)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B4FC8);
    sub_26A6FE9C8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B5170);
  }

  return result;
}

unint64_t sub_26A6FE9C8()
{
  result = qword_2803B5178;
  if (!qword_2803B5178)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B5180);
    sub_26A6FD960();
    sub_26A6FDA18();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B5178);
  }

  return result;
}

unint64_t sub_26A6FEA58()
{
  result = qword_2803B5188;
  if (!qword_2803B5188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B5188);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_18_23()
{

  return swift_getAtKeyPath();
}

void sub_26A6FEB44(uint64_t a1@<X8>, double a2@<D0>)
{
  v3 = 0;
  v4 = v2[5];
  v5 = *(*v2 + 16);
  v6 = *v2 + 56;
  v7 = v5;
  if (v5)
  {
    while (1)
    {
      v8 = *(v6 + 1) << 8 == 512;
      v9 = __OFADD__(v3, v8);
      v3 += v8;
      if (v9)
      {
        break;
      }

      v6 += 48;
      if (!--v7)
      {
        goto LABEL_4;
      }
    }

    __break(1u);
    goto LABEL_10;
  }

LABEL_4:
  v9 = __OFSUB__(v5, v3);
  v10 = v5 - v3;
  if (v9)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v11 = v10 - 1;
  if (__OFSUB__(v10, 1))
  {
LABEL_11:
    __break(1u);
    return;
  }

  v12 = v11;
  if (v11 < 0)
  {
    v12 = 0.0;
  }

  v13 = v4 * v12;
  *a1 = a2;
  *(a1 + 8) = v4;
  *(a1 + 16) = v10;
  *(a1 + 24) = v3;
  *(a1 + 32) = v13;
  *(a1 + 40) = a2 - v13;
  *(a1 + 48) = 0;
}

uint64_t View.requestHostBackground<A, B>(_:accepted:denied:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v62 = a2;
  v58 = a6;
  v59 = a7;
  v55 = a3;
  v56 = a4;
  v54 = a1;
  v57 = a8;
  v53 = a11;
  OUTLINED_FUNCTION_2_34();
  v13 = v12;
  v15 = *(v14 + 64);
  v49 = a10;
  v63 = a9;
  MEMORY[0x28223BE20](v16);
  v52 = &v47 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v17);
  v20 = &v47 - v19;
  v60 = *v21;
  v50 = *(v13 + 16);
  v50(&v47 - v19, v23, v22, v18);
  v24 = (*(v13 + 80) + 80) & ~*(v13 + 80);
  v51 = v24 + v15;
  v48 = v24;
  v25 = (v24 + v15 + 7) & 0xFFFFFFFFFFFFFFF8;
  v26 = swift_allocObject();
  v27 = v58;
  v28 = v59;
  *(v26 + 2) = a5;
  *(v26 + 3) = v27;
  v29 = v63;
  *(v26 + 4) = v28;
  *(v26 + 5) = v29;
  v30 = v53;
  *(v26 + 6) = a10;
  *(v26 + 7) = v30;
  v31 = v62;
  *(v26 + 8) = v54;
  *(v26 + 9) = v31;
  v32 = *(v13 + 32);
  v32(&v26[v24], v20, a5);
  v33 = v61;
  *&v26[v25] = v60;
  v34 = v52;
  (v50)(v52, v33, a5);
  v35 = swift_allocObject();
  v35[2] = a5;
  v36 = v59;
  v35[3] = v58;
  v35[4] = v36;
  v37 = v49;
  v35[5] = v63;
  v35[6] = v37;
  v38 = v55;
  v39 = v56;
  v35[7] = v30;
  v35[8] = v38;
  v35[9] = v39;
  v40 = v34;
  v41 = a5;
  (v32)(v35 + v48, v40);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803AD658);
  v42 = sub_26A84F4F8();
  v43 = sub_26A6FF8AC();
  v68 = v37;
  v69 = v43;
  OUTLINED_FUNCTION_58();
  WitnessTable = swift_getWitnessTable();
  KeyPath = swift_getKeyPath();
  v71 = 0;
  v72 = sub_26A6FF7B8;
  v73 = v26;
  v74 = sub_26A6FF84C;
  v75 = v35;

  sub_26A54FFF4(v60);

  v64 = v42;
  v65 = v36;
  v66 = WitnessTable;
  v67 = v30;
  v45 = type metadata accessor for RequestHostBackgroundModifier();
  MEMORY[0x26D662ED0](&KeyPath, v41, v45, v63);
  return (*(*(v45 - 8) + 8))(&KeyPath, v45);
}

uint64_t sub_26A6FEF24(uint64_t *a1, void (*a2)(unint64_t *__return_ptr))
{
  a2(&v5);
  v3 = v5;
  result = *a1;
  if (v5 >> 60 != 15)
  {
    sub_26A550014(result);
    result = v3;
  }

  *a1 = result;
  return result;
}

uint64_t HostBackground.RFMaterial.hashValue.getter()
{
  v1 = *v0;
  sub_26A8526B8();
  MEMORY[0x26D664930](v1);
  return sub_26A8526F8();
}

BOOL static HostBackground.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (*a1 < 0)
  {
    return v3 < 0 && v3 == v2;
  }

  else if (v3 < 0)
  {
    return 0;
  }

  else
  {
    sub_26A550008(*a2);
    sub_26A550008(v2);
    v4 = sub_26A850D58();
    sub_26A550028(v3);
    sub_26A550028(v2);
    return v4 & 1;
  }
}

uint64_t sub_26A6FF0A8@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_26A84F988();
  OUTLINED_FUNCTION_2_34();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26A6FFC74(v2, &v12);
  if (v13 == 1)
  {
    return sub_26A5E89BC(&v12, a1);
  }

  sub_26A851EA8();
  v11 = sub_26A8501F8();
  sub_26A84EA78();

  sub_26A84F978();
  swift_getAtKeyPath();

  return (*(v6 + 8))(v9, v4);
}

uint64_t sub_26A6FF204@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  OUTLINED_FUNCTION_2_34();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  v9 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v42 = &v39 - v11;
  v13 = *(v12 + 24);
  OUTLINED_FUNCTION_2_34();
  v15 = v14;
  MEMORY[0x28223BE20](v16);
  MEMORY[0x28223BE20](v17);
  v19 = &v39 - v18;
  v46 = v20;
  sub_26A84FE08();
  OUTLINED_FUNCTION_2_34();
  v44 = v22;
  v45 = v21;
  MEMORY[0x28223BE20](v21);
  v24 = &v39 - v23;
  sub_26A6FF0A8(v49);
  v43 = a2;
  if (v49[8])
  {
    v25 = sub_26A6FFC0C(v49);
LABEL_7:
    (*(v2 + 32))(v25);
    v30 = *(a1 + 40);
    v33 = OUTLINED_FUNCTION_5_62();
    sub_26A80757C(v33);
    v34 = *(v15 + 8);
    v35 = OUTLINED_FUNCTION_5_62();
    v34(v35);
    sub_26A80757C(v19);
    v28 = *(a1 + 32);
    OUTLINED_FUNCTION_5_62();
    sub_26A801234();
    swift_unknownObjectRelease();
    v36 = OUTLINED_FUNCTION_5_62();
    v34(v36);
    (v34)(v19, v13);
    goto LABEL_8;
  }

  v41 = v9;
  Strong = swift_unknownObjectWeakLoadStrong();
  v25 = sub_26A5E8968(v49);
  if (!Strong)
  {
    goto LABEL_7;
  }

  v40 = v6;
  v25 = [Strong respondsToSelector_];
  if ((v25 & 1) == 0)
  {
    goto LABEL_7;
  }

  v25 = [Strong respondsToSelector_];
  if ((v25 & 1) == 0)
  {
    goto LABEL_7;
  }

  v27 = v41;
  (*(v2 + 16))();
  v28 = *(a1 + 32);
  v29 = v46;
  sub_26A80757C(v27);
  v40 = *(v40 + 8);
  (v40)(v27, v29);
  sub_26A80757C(v42);
  v30 = *(a1 + 40);
  sub_26A8012F4();
  swift_unknownObjectRelease();
  v31 = v27;
  v32 = v40;
  (v40)(v31, v29);
  v32(v42, v29);
LABEL_8:
  v47 = v30;
  v48 = v28;
  OUTLINED_FUNCTION_6_14();
  v37 = v45;
  swift_getWitnessTable();
  sub_26A80757C(v24);
  return (*(v44 + 8))(v24, v37);
}

uint64_t View.setHostBackground(_:)(uint64_t *a1)
{
  v2 = *a1;
  sub_26A550008(*a1);
  sub_26A6FF928();
  OUTLINED_FUNCTION_3_67();
  return sub_26A550014(v2);
}

uint64_t sub_26A6FF6A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = *(a6 - 8);
  v9 = MEMORY[0x28223BE20](a1);
  v11 = v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13(v12, v9);
  v15[1] = a4;
  sub_26A6FF928();
  sub_26A850958();
  return (*(v8 + 8))(v11, a6);
}

unint64_t sub_26A6FF8AC()
{
  result = qword_2803AD660[0];
  if (!qword_2803AD660[0])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803AD658);
    result = swift_getWitnessTable();
    atomic_store(result, qword_2803AD660);
  }

  return result;
}

unint64_t sub_26A6FF928()
{
  result = qword_2803B5190;
  if (!qword_2803B5190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B5190);
  }

  return result;
}

unint64_t sub_26A6FF980()
{
  result = qword_2803B5198[0];
  if (!qword_2803B5198[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_2803B5198);
  }

  return result;
}

uint64_t sub_26A6FF9E0(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xF && *(a1 + 8))
    {
      v2 = *a1 + 14;
    }

    else
    {
      v2 = (((*a1 >> 60) >> 3) & 0xFFFFFFF1 | (2 * ((*a1 >> 60) & 7))) ^ 0xF;
      if (v2 >= 0xE)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return v2 + 1;
}

uint64_t sub_26A6FFA2C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xE)
  {
    *result = a2 - 15;
    if (a3 >= 0xF)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0xF)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = (((-a2 >> 1) & 7) - 8 * a2) << 60;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for HostBackground.RFMaterial(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFC)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
          *result = a2 + 4;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_26A6FFB80()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_26A6FFC0C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803ACA10);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_26A6FFC74(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803AFDA0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t OUTLINED_FUNCTION_3_67()
{

  return sub_26A850958();
}

uint64_t SecondaryHeaderEmphasizedView.init(text1:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  *a2 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803A9190);
  swift_storeEnumTagMultiPayload();
  v4 = type metadata accessor for SecondaryHeaderEmphasizedView();
  v5 = a2 + v4[5];
  *v5 = swift_getKeyPath();
  v5[8] = 0;
  v6 = v4[6];
  *(a2 + v6) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91A8);
  swift_storeEnumTagMultiPayload();
  v7 = a1[3];
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v7);
  *(a2 + v4[7]) = (*(v8 + 8))(v7, v8);

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t type metadata accessor for SecondaryHeaderEmphasizedView()
{
  result = qword_2803B5228;
  if (!qword_2803B5228)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_26A6FFE74@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_26A84F988();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803A9190);
  MEMORY[0x28223BE20](v8);
  v10 = &v13 - v9;
  sub_26A4DBD68(v2, &v13 - v9, &unk_2803A9190);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_26A4DBDB4(v10, a1, &qword_2803A91C8);
  }

  sub_26A851EA8();
  v12 = sub_26A8501F8();
  sub_26A84EA78();

  sub_26A84F978();
  swift_getAtKeyPath();

  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_26A700054()
{
  v1 = sub_26A84F988();
  OUTLINED_FUNCTION_15();
  v3 = v2;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_41();
  v7 = v6 - v5;
  v8 = v0 + *(type metadata accessor for SecondaryHeaderEmphasizedView() + 20);
  v9 = *v8;
  if ((*(v8 + 8) & 1) == 0)
  {

    sub_26A851EA8();
    v10 = sub_26A8501F8();
    sub_26A84EA78();

    sub_26A84F978();
    swift_getAtKeyPath();
    sub_26A4D82E8(v9, 0);
    (*(v3 + 8))(v7, v1);
    return v12;
  }

  return v9;
}

uint64_t sub_26A700194@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_26A84F988();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91A8);
  MEMORY[0x28223BE20](v7);
  v9 = &v14 - v8;
  v10 = type metadata accessor for SecondaryHeaderEmphasizedView();
  sub_26A4DBD68(v1 + *(v10 + 24), v9, &qword_2803A91A8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_26A84F3A8();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    sub_26A851EA8();
    v13 = sub_26A8501F8();
    sub_26A84EA78();

    sub_26A84F978();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

uint64_t SecondaryHeaderEmphasizedView.init(model:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_26A84B888();
  OUTLINED_FUNCTION_15();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_41();
  v10 = v9 - v8;
  *a2 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803A9190);
  swift_storeEnumTagMultiPayload();
  v11 = type metadata accessor for SecondaryHeaderEmphasizedView();
  v12 = a2 + v11[5];
  *v12 = swift_getKeyPath();
  v12[8] = 0;
  v13 = v11[6];
  *(a2 + v13) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91A8);
  swift_storeEnumTagMultiPayload();
  sub_26A84DA68();
  v14 = TextProperty.asAnyView()();
  sub_26A84DA88();
  OUTLINED_FUNCTION_46();
  (*(v15 + 8))(a1);
  result = (*(v6 + 8))(v10, v4);
  *(a2 + v11[7]) = v14;
  return result;
}

uint64_t SecondaryHeaderEmphasizedView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91C0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v15[-v4];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91C8);
  MEMORY[0x28223BE20](v6 - 8);
  sub_26A6FFE74(&v15[-v7]);
  sub_26A70078C(v17);
  sub_26A700054();
  sub_26A700194(v5);
  v8 = sub_26A84F3A8();
  __swift_storeEnumTagSinglePayload(v5, 0, 1, v8);
  v16 = v1;
  sub_26A4CC18C();
  v9 = swift_allocObject();
  *(v9 + 16) = sub_26A68CE8C;
  *(v9 + 24) = 0;
  v10 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B2808) + 36);
  *(v10 + 16) = swift_getKeyPath();
  *(v10 + 24) = 0;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91D8);
  v12 = *(v11 + 40);
  *(v10 + v12) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803A9190);
  swift_storeEnumTagMultiPayload();
  v13 = v10 + *(v11 + 44);
  *v13 = swift_getKeyPath();
  *(v13 + 8) = 0;
  *v10 = sub_26A4D1F7C;
  *(v10 + 8) = v9;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B2810);
  *(a1 + *(result + 36)) = 22;
  return result;
}

void sub_26A70078C(uint64_t a1@<X8>)
{
  v3 = sub_26A84F988();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = v1 + *(type metadata accessor for SecondaryHeaderEmphasizedView() + 20);
  v8 = *v7;
  if ((*(v7 + 8) & 1) == 0)
  {

    sub_26A851EA8();
    v9 = sub_26A8501F8();
    sub_26A84EA78();

    sub_26A84F978();
    swift_getAtKeyPath();
    sub_26A4D82E8(v8, 0);
    (*(v4 + 8))(v6, v3);
    v8 = v22;
  }

  v10 = xmmword_26A8710F0;
  __asm { FMOV            V0.2D, #14.0 }

  v16 = 0;
  switch(v8)
  {
    case 1:
    case 2:
    case 3:
    case 4:
    case 8:
      break;
    case 5:
      if (qword_2803A8B00 != -1)
      {
        swift_once();
      }

      _Q0 = xmmword_2803D1BD8;
      v10 = *&qword_2803D1BE8;
      v16 = byte_2803D1BF8;
      break;
    case 6:
      _Q0 = 0uLL;
      v16 = 1;
      v10 = 0uLL;
      break;
    case 7:
      v16 = 0;
      v10 = xmmword_26A871100;
      __asm { FMOV            V0.2D, #16.0 }

      break;
    default:
      v19 = xmmword_26A8710F0;
      v20 = _Q0;
      v17 = sub_26A851E98();
      LOBYTE(v18) = 2;
      sub_26A7AEFE4(v17, 0, "SnippetUI/IdiomDependentStaticValue.swift", 41, 2, 89, "value(for:)", 11, v18, v8, v19, *(&v19 + 1), v20, *(&v20 + 1), v21, v22, v23, v24, v25, v26, v27, v28, v29, v30, vars0, vars8);
      v10 = v19;
      _Q0 = v20;
      v16 = 0;
      break;
  }

  *a1 = _Q0;
  *(a1 + 16) = v10;
  *(a1 + 32) = v16;
}

void *sub_26A7009E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + *(type metadata accessor for SecondaryHeaderEmphasizedView() + 28));
  if (qword_2803A9068 != -1)
  {
    swift_once();
  }

  sub_26A4DBD68(&unk_2803D29E0, &v5[25], &qword_2803AA880);
  sub_26A6AEE74(__src);
  memcpy(&v5[1], __src, 0xBFuLL);
  v5[35] = sub_26A80A810;
  v5[36] = 0;
  v5[0] = v3;

  sub_26A851458();
  sub_26A84F628();
  memcpy(a2, v5, 0x128uLL);
  return memcpy((a2 + 296), v7, 0x70uLL);
}

uint64_t sub_26A700B40(uint64_t a1)
{
  result = sub_26A701418(&qword_2803B5220, MEMORY[0x277D635A8]);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_26A700BC0()
{
  v64 = sub_26A84BAB8();
  OUTLINED_FUNCTION_15();
  v58 = v1;
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_41();
  v57 = v4 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B3800);
  MEMORY[0x28223BE20](v5 - 8);
  OUTLINED_FUNCTION_19();
  v62 = v6;
  MEMORY[0x28223BE20](v7);
  v63 = &v56 - v8;
  v61 = sub_26A84B888();
  OUTLINED_FUNCTION_15();
  v59 = v9;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_41();
  v13 = v12 - v11;
  v14 = sub_26A84DA88();
  OUTLINED_FUNCTION_15();
  v16 = v15;
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_41();
  v20 = v19 - v18;
  v21 = type metadata accessor for SecondaryHeaderEmphasizedView();
  v22 = (v21 - 8);
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_41();
  v25 = (v24 - v23);
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AAC00);
  OUTLINED_FUNCTION_46();
  MEMORY[0x28223BE20](v26);
  v28 = &v56 - v27;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AAC08);
  OUTLINED_FUNCTION_46();
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_19();
  v66 = v30;
  v32 = MEMORY[0x28223BE20](v31);
  v65 = &v56 - v33;
  (*(v16 + 16))(v20, v0, v14, v32);
  *v25 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803A9190);
  swift_storeEnumTagMultiPayload();
  v34 = v25 + v22[7];
  *v34 = swift_getKeyPath();
  v34[8] = 0;
  v35 = v22[8];
  *(v25 + v35) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91A8);
  swift_storeEnumTagMultiPayload();
  sub_26A84DA68();
  v36 = TextProperty.asAnyView()();
  v37 = v13;
  v38 = v62;
  (*(v59 + 8))(v37, v61);
  v39 = v20;
  v40 = v64;
  (*(v16 + 8))(v39, v14);
  *(v25 + v22[9]) = v36;
  v41 = v63;
  sub_26A84DA78();
  sub_26A4DBDB4(v41, v38, &qword_2803B3800);
  if (__swift_getEnumTagSinglePayload(v38, 1, v40) == 1)
  {
    sub_26A4DBD10(v38, &qword_2803B3800);
    KeyPath = swift_getKeyPath();
    v43 = &v28[*(v60 + 36)];
    v44 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803B36A0) + 28);
    v45 = type metadata accessor for ActionType();
    __swift_storeEnumTagSinglePayload(v43 + v44, 1, 1, v45);
    *v43 = KeyPath;
  }

  else
  {
    v46 = v57;
    v47 = *(v58 + 32);
    v47(v57, v38, v40);
    v48 = swift_getKeyPath();
    v49 = &v28[*(v60 + 36)];
    v50 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803B36A0) + 28);
    v47(v49 + v50, v46, v40);
    v51 = type metadata accessor for ActionType();
    swift_storeEnumTagMultiPayload();
    __swift_storeEnumTagSinglePayload(v49 + v50, 0, 1, v51);
    *v49 = v48;
  }

  sub_26A701188(v25, v28);
  v52 = sub_26A84DA48();
  v53 = v65;
  sub_26A4DE1E4(v52);

  sub_26A4DBD10(v28, &qword_2803AAC00);
  sub_26A4DBD68(v53, v66, &qword_2803AAC08);
  sub_26A7011EC();
  v54 = sub_26A851248();
  sub_26A4DBD10(v53, &qword_2803AAC08);
  return v54;
}

uint64_t sub_26A701188(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SecondaryHeaderEmphasizedView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_26A7011EC()
{
  result = qword_2803B5238;
  if (!qword_2803B5238)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803AAC08);
    sub_26A7012A4();
    sub_26A4DBCC8(&qword_28157FB60, &qword_2803A9438);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B5238);
  }

  return result;
}

unint64_t sub_26A7012A4()
{
  result = qword_2803B5240;
  if (!qword_2803B5240)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803AABF8);
    sub_26A701330();
    sub_26A4D31BC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B5240);
  }

  return result;
}

unint64_t sub_26A701330()
{
  result = qword_2803B5248;
  if (!qword_2803B5248)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803AAC00);
    sub_26A701418(&qword_2803AF8E8, type metadata accessor for SecondaryHeaderEmphasizedView);
    sub_26A4DBCC8(&qword_2803AA878, &unk_2803B36A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B5248);
  }

  return result;
}

uint64_t sub_26A701418(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_26A701460@<X0>(uint64_t (*a1)(uint64_t)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v4 = v3;
  v29 = a1;
  v27 = a3;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B52D0);
  MEMORY[0x28223BE20](v30);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v28 = &v26 - v9;
  v10 = a2 + 64;
  v11 = 1 << *(a2 + 32);
  v12 = -1;
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  v13 = v12 & *(a2 + 64);
  v14 = (v11 + 63) >> 6;
  v31 = a2;

  v16 = 0;
  if (v13)
  {
    while (1)
    {
      v32 = v4;
      v17 = v7;
      v18 = v16;
LABEL_9:
      v19 = *(*(v31 + 48) + 8 * (__clz(__rbit64(v13)) | (v18 << 6)));
      type metadata accessor for BadgeImageViewConstants.Configuration(0);
      v20 = v28;
      sub_26A701BBC();
      *v20 = v19;
      v7 = v17;
      sub_26A705888(v20, v17);

      v21 = v32;
      v22 = v29(v17);
      v4 = v21;
      if (v21)
      {
        sub_26A54A088();
      }

      if (v22)
      {
        break;
      }

      v13 &= v13 - 1;
      result = sub_26A54A088();
      v16 = v18;
      if (!v13)
      {
        goto LABEL_5;
      }
    }

    v25 = v27;
    sub_26A705888(v7, v27);
    v23 = v25;
    v24 = 0;
    return __swift_storeEnumTagSinglePayload(v23, v24, 1, v30);
  }

  else
  {
LABEL_5:
    while (1)
    {
      v18 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v18 >= v14)
      {

        v23 = v27;
        v24 = 1;
        return __swift_storeEnumTagSinglePayload(v23, v24, 1, v30);
      }

      v13 = *(v10 + 8 * v18);
      ++v16;
      if (v13)
      {
        v32 = v4;
        v17 = v7;
        goto LABEL_9;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_26A7016E0@<X0>(uint64_t a1@<X8>)
{
  *a1 = swift_getKeyPath();
  *(a1 + 8) = 0;
  *(a1 + 16) = swift_getKeyPath();
  *(a1 + 24) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AFAE8);
  sub_26A851048();
  type metadata accessor for CGSize();
  sub_26A851048();
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B5250);
  sub_26A851048();
  *(a1 + 72) = v4;
  type metadata accessor for BadgedImageView(0);
  sub_26A701BBC();
  v2 = sub_26A7019A0();
  sub_26A701C14();

  *(a1 + 32) = v2;
  *(a1 + 40) = 0;
  return result;
}

uint64_t sub_26A70186C()
{
  v1 = sub_26A84F988();
  OUTLINED_FUNCTION_15();
  v3 = v2;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_41();
  v7 = v6 - v5;
  v8 = *(v0 + 16);
  if (*(v0 + 24) != 1)
  {

    sub_26A851EA8();
    v9 = sub_26A8501F8();
    sub_26A84EA78();

    sub_26A84F978();
    swift_getAtKeyPath();
    sub_26A49035C(v8, 0);
    (*(v3 + 8))(v7, v1);
    LOBYTE(v8) = v11;
  }

  return v8 & 1;
}

uint64_t sub_26A7019A0()
{
  v0 = type metadata accessor for ImageSourceView.Model(0);
  v1 = OUTLINED_FUNCTION_79(v0);
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_41();
  v4 = (v3 - v2);
  type metadata accessor for ImageSourceModel();
  OUTLINED_FUNCTION_46();
  MEMORY[0x28223BE20](v5);
  MEMORY[0x28223BE20](v6);
  v8 = &v14 - v7;
  OUTLINED_FUNCTION_10_44();
  sub_26A701BBC();
  if (swift_getEnumCaseMultiPayload())
  {
    sub_26A701C14();
    OUTLINED_FUNCTION_10_44();
    sub_26A701BBC();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_26A704040();
      v9 = *v4;

      sub_26A701C14();
      if (v9)
      {

        return 2;
      }
    }

    else
    {
      sub_26A701C14();
    }

    return 1;
  }

  else
  {
    v11 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B2CF0) + 48);
    sub_26A84B1D8();
    OUTLINED_FUNCTION_1_4();
    (*(v12 + 8))(&v8[v11]);
    sub_26A84B158();
    OUTLINED_FUNCTION_1_4();
    (*(v13 + 8))(v8);
    return 0;
  }
}

uint64_t sub_26A701BBC()
{
  OUTLINED_FUNCTION_145();
  v2(0);
  OUTLINED_FUNCTION_46();
  (*(v3 + 16))(v0, v1);
  return v0;
}

uint64_t sub_26A701C14()
{
  OUTLINED_FUNCTION_196();
  v1(0);
  OUTLINED_FUNCTION_1_4();
  (*(v2 + 8))(v0);
  return v0;
}

void sub_26A701C8C()
{
  sub_26A701E00(319, &qword_2803A9218, type metadata accessor for VRXIdiom, MEMORY[0x277CDF468]);
  if (v0 <= 0x3F)
  {
    sub_26A5923A4();
    if (v1 <= 0x3F)
    {
      sub_26A701E64(319, &qword_2803B5258, &qword_2803AFAE8);
      if (v2 <= 0x3F)
      {
        sub_26A701E00(319, &qword_2803B5260, type metadata accessor for CGSize, MEMORY[0x277CE10B8]);
        if (v3 <= 0x3F)
        {
          sub_26A701E64(319, &qword_2803B5268, &qword_2803B5250);
          if (v4 <= 0x3F)
          {
            type metadata accessor for BadgedImageView.Model(319);
            if (v5 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void sub_26A701E00(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_26A701E64(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3);
    v4 = sub_26A851088();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_26A701EE0()
{
  result = type metadata accessor for ImageSourceModel();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_26A701F68()
{
  v1 = sub_26A84F988();
  v2 = *(v1 - 8);
  v3 = MEMORY[0x28223BE20](v1);
  v5 = v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v0;
  if ((*(v0 + 8) & 1) == 0)
  {

    sub_26A851EA8();
    v7 = sub_26A8501F8();
    sub_26A84EA78();

    sub_26A84F978();
    swift_getAtKeyPath();
    sub_26A49035C(v6, 0);
    (*(v2 + 8))(v5, v1);
    v6 = v9[1];
  }

  return sub_26A5A0528(v6, v3);
}

double sub_26A7020C0()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AF0C0);
  MEMORY[0x28223BE20](v1 - 8);
  v37 = &v32 - v2;
  v36 = sub_26A84B2B8();
  v33 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  v32 = &v32 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = type metadata accessor for ImageSourceModel();
  MEMORY[0x28223BE20](v38);
  v34 = type metadata accessor for ImageSourceView.Model(0);
  MEMORY[0x28223BE20](v34);
  v35 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_26A84B1D8();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for BadgeImageViewConstants(0);
  MEMORY[0x28223BE20](v9 - 8);
  v10 = type metadata accessor for BadgeImageViewConstants.Configuration(0);
  v11 = v10 - 8;
  MEMORY[0x28223BE20](v10);
  v13 = &v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26A701F68();
  type metadata accessor for BadgedImageView(0);
  sub_26A68AC4C();
  v14 = sub_26A70186C();
  sub_26A702710(v8, v14 & 1, v13);
  (*(v6 + 8))(v8, v5);
  sub_26A701C14();
  v15 = *&v13[*(v11 + 28)];
  v16 = v0;
  sub_26A701C14();
  sub_26A701BBC();
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    goto LABEL_4;
  }

  sub_26A704040();
  v17 = v37;
  sub_26A4EF6D0();
  v18 = v36;
  if (__swift_getEnumTagSinglePayload(v17, 1, v36) == 1)
  {
    sub_26A701C14();
    sub_26A54A088();
    return v15;
  }

  v21 = v32;
  v20 = v33;
  (*(v33 + 32))(v32, v17, v18);
  sub_26A7059AC();
  if (sub_26A84C978())
  {
    (*(v20 + 8))(v21, v18);
LABEL_4:
    sub_26A701C14();
    return v15;
  }

  sub_26A84B288();
  v23 = v22;
  sub_26A84B278();
  v24 = v16[7];
  v25 = v16[8];
  v40 = v16[6];
  v41 = v24;
  v42 = v25;
  if (v26 >= v23)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AECD0);
    sub_26A851058();
    sub_26A84B288();
    sub_26A84B278();
    (*(v20 + 8))(v21, v18);
    sub_26A701C14();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AECD0);
    sub_26A851058();
    v27 = v39;
    sub_26A84B278();
    v29 = v28;
    sub_26A84B288();
    v31 = v30;
    (*(v20 + 8))(v21, v18);
    sub_26A701C14();
    return v15 + v27 * (1.0 - (v29 / v31)) * -0.5;
  }

  return v15;
}

uint64_t sub_26A702710@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v49 = a2;
  v50 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B52C8);
  v6 = OUTLINED_FUNCTION_79(v5);
  MEMORY[0x28223BE20](v6);
  v8 = &v40 - v7;
  v9 = type metadata accessor for BadgeImageViewConstants.Configuration(0);
  OUTLINED_FUNCTION_46();
  MEMORY[0x28223BE20](v10);
  MEMORY[0x28223BE20](v11);
  v13 = &v40 - v12;
  v14 = *v3;
  v51 = a1;
  sub_26A701460(sub_26A705848, v14, v8);
  v46 = 0;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B52D0);
  v16 = a1;
  if (__swift_getEnumTagSinglePayload(v8, 1, v15) == 1)
  {
    sub_26A54A088();
    type metadata accessor for BadgeImageViewConstants(0);
    sub_26A701BBC();
  }

  else
  {

    sub_26A704040();
    sub_26A704040();
  }

  v47 = v13;
  v48 = v9;
  v17 = &v13[*(v9 + 20)];
  v18 = *v17;
  v19 = v17[1];
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B52D8);
  v21 = sub_26A84B1D8();
  OUTLINED_FUNCTION_15();
  v23 = v22;
  v25 = *(v24 + 72);
  v26 = (*(v22 + 80) + 32) & ~*(v22 + 80);
  v43 = v26 + 2 * v25;
  v44 = v20;
  v27 = swift_allocObject();
  v42 = xmmword_26A8570F0;
  *(v27 + 16) = xmmword_26A8570F0;
  v28 = *(v23 + 104);
  v28(v27 + v26, *MEMORY[0x277D62A90], v21);
  v29 = *MEMORY[0x277D62A98];
  v45 = v25;
  v30 = v28(v27 + v26 + v25, v29, v21);
  MEMORY[0x28223BE20](v30);
  v41 = v16;
  *(&v40 - 2) = v16;
  v31 = sub_26A8377E8(sub_26A705868, (&v40 - 4), v27);
  swift_setDeallocating();
  sub_26A7A0CF8();
  if (v31)
  {
    v32 = -1.0;
LABEL_8:
    if (v18 + v32 > 0.0)
    {
      v18 = v18 + v32;
    }

    else
    {
      v18 = 0.0;
    }

    v36 = v19 + v32;
    if (v36 > 0.0)
    {
      v19 = v36;
    }

    else
    {
      v19 = 0.0;
    }

    goto LABEL_14;
  }

  v33 = swift_allocObject();
  *(v33 + 16) = v42;
  v28(v33 + v26, *MEMORY[0x277D62AA8], v21);
  v34 = v28(v33 + v26 + v45, *MEMORY[0x277D62AB0], v21);
  MEMORY[0x28223BE20](v34);
  *(&v40 - 2) = v41;
  v35 = sub_26A8377E8(sub_26A705F1C, (&v40 - 4), v33);
  swift_setDeallocating();
  sub_26A7A0CF8();
  if (v35)
  {
    v32 = -2.0;
    goto LABEL_8;
  }

LABEL_14:
  if (v49)
  {
    v19 = 0.0;
  }

  v37 = v50;
  result = (*(v23 + 32))(v50, v47, v21);
  v39 = (v37 + *(v48 + 20));
  *v39 = v18;
  v39[1] = v19;
  return result;
}

uint64_t sub_26A702B7C@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for BadgedImageView(0);
  v43 = *(v2 - 8);
  v45 = *(v43 + 8);
  MEMORY[0x28223BE20](v2);
  v42 = &v40 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_26A84B1D8();
  OUTLINED_FUNCTION_15();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_41();
  v10 = v9 - v8;
  v11 = type metadata accessor for BadgeImageViewConstants(0);
  v12 = OUTLINED_FUNCTION_79(v11);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_41();
  v13 = type metadata accessor for BadgeImageViewConstants.Configuration(0);
  v14 = OUTLINED_FUNCTION_79(v13);
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_41();
  v17 = v16 - v15;
  v44 = v16 - v15;
  sub_26A701F68();
  sub_26A68AC4C();
  v18 = sub_26A70186C();
  sub_26A702710(v10, v18 & 1, v17);
  (*(v6 + 8))(v10, v4);
  sub_26A701C14();
  sub_26A68A2F0();
  v41 = v19;
  sub_26A701BBC();
  v40 = swift_allocObject();
  v43 = type metadata accessor for BadgedImageView;
  sub_26A704040();
  sub_26A701BBC();
  v20 = swift_allocObject();
  sub_26A704040();
  v21 = sub_26A851448();
  v23 = v22;
  v24 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B5270) + 36);
  sub_26A703D74(v24);
  v25 = (v24 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B5278) + 36));
  *v25 = v21;
  v25[1] = v23;
  v26 = v40;
  *a1 = v41;
  *(a1 + 8) = sub_26A704098;
  *(a1 + 16) = v26;
  *(a1 + 40) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 56) = sub_26A7046A8;
  *(a1 + 64) = v20;
  sub_26A701BBC();
  v27 = swift_allocObject();
  sub_26A704040();
  v28 = sub_26A851448();
  v30 = v29;
  v31 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B5280) + 36));
  *v31 = sub_26A8027E0;
  v31[1] = 0;
  v31[2] = v28;
  v31[3] = v30;
  v32 = swift_allocObject();
  *(v32 + 16) = sub_26A704730;
  *(v32 + 24) = v27;
  v33 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B5288) + 36));
  *v33 = sub_26A52E998;
  v33[1] = v32;
  v34 = sub_26A851428();
  v36 = v35;
  v37 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B5290) + 36));
  sub_26A703E88(v44, v37);
  v38 = (v37 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B5298) + 36));
  *v38 = v34;
  v38[1] = v36;
  return sub_26A701C14();
}

uint64_t sub_26A70302C(uint64_t a1)
{
  v2 = type metadata accessor for BadgedImageView(0);
  v31 = *(v2 - 8);
  v3 = *(v31 + 64);
  MEMORY[0x28223BE20](v2);
  v32 = &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AC090);
  MEMORY[0x28223BE20](v4 - 8);
  v33 = &v25 - v5;
  v6 = type metadata accessor for ImageSourceModel();
  MEMORY[0x28223BE20](v6);
  v7 = type metadata accessor for ImageSourceView.Model(0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a1 + 32);
  v11 = *(a1 + 40);
  LOBYTE(v35) = *(a1 + 32);
  v36 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B52B0);
  result = sub_26A851058();
  if (v34 == 2)
  {
    v28 = v9;
    v29 = v11;
    v30 = v10;
    v13 = *(a1 + 72);
    v14 = *(a1 + 80);
    v35 = v13;
    v36 = v14;
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B52B8);
    sub_26A851058();
    if (v34)
    {
    }

    v25 = v15;
    v26 = v14;
    v27 = v13;
    sub_26A701BBC();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v16 = v28;
      sub_26A704040();
      v17 = v30;
      v18 = v29;
      if (*v16)
      {
        v35 = *v16;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B52C0);
        swift_allocObject();
        swift_retain_n();
        MEMORY[0x26D661330](&v35);
        sub_26A84F0B8();
        v19 = sub_26A84F0A8();

        if (v19)
        {
          v20 = sub_26A851C18();
          v21 = v33;
          __swift_storeEnumTagSinglePayload(v33, 1, 1, v20);
          sub_26A701BBC();
          v22 = swift_allocObject();
          v22[2] = 0;
          v22[3] = 0;
          v22[4] = v19;
          sub_26A704040();
          v23 = v19;
          v24 = sub_26A703A2C(0, 0, v21, &unk_26A879F68, v22);
          sub_26A54A088();
          v35 = v27;
          v36 = v26;
          v34 = v24;
          sub_26A851068();

          return sub_26A701C14();
        }

        sub_26A701C14();
      }

      else
      {
        sub_26A701C14();
      }
    }

    else
    {
      sub_26A701C14();
      v17 = v30;
      v18 = v29;
    }

    LOBYTE(v35) = v17;
    v36 = v18;
    LOBYTE(v34) = 1;
    return sub_26A851068();
  }

  return result;
}

uint64_t sub_26A7034DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 48) = a4;
  *(v5 + 56) = a5;
  return MEMORY[0x2822009F8](sub_26A7034FC, 0, 0);
}

uint64_t sub_26A7034FC()
{
  OUTLINED_FUNCTION_1_10();
  v1 = v0[6];
  v0[2] = 1000;
  v0[3] = v1;
  v2 = v1;
  v3 = swift_task_alloc();
  v0[8] = v3;
  *v3 = v0;
  v3[1] = sub_26A7035A0;

  return sub_26A70383C();
}

uint64_t sub_26A7035A0()
{
  OUTLINED_FUNCTION_1_10();
  *(*v0 + 81) = v1;

  return MEMORY[0x2822009F8](sub_26A70369C, 0, 0);
}

uint64_t sub_26A70369C()
{
  OUTLINED_FUNCTION_1_10();
  sub_26A851BD8();
  *(v0 + 72) = sub_26A851BC8();
  v2 = sub_26A851B78();

  return MEMORY[0x2822009F8](sub_26A70372C, v2, v1);
}

uint64_t sub_26A70372C()
{
  v1 = *(v0 + 81);
  v2 = *(v0 + 56);

  v3 = *(v2 + 40);
  *(v0 + 32) = *(v2 + 32);
  *(v0 + 40) = v3;
  *(v0 + 80) = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B52B0);
  sub_26A851068();

  return MEMORY[0x2822009F8](sub_26A7037E0, 0, 0);
}

uint64_t sub_26A7037E0()
{
  OUTLINED_FUNCTION_1_10();

  v1 = *(v0 + 8);

  return v1();
}

const UInt8 *sub_26A70385C()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + 8);
  if (CGImageGetWidth(v2) < 1 || CGImageGetHeight(v2) < 1)
  {
    goto LABEL_21;
  }

  AlphaInfo = CGImageGetAlphaInfo(v2);
  if (AlphaInfo)
  {
    if (CGImageGetAlphaInfo(v2) == kCGImageAlphaNoneSkipFirst || CGImageGetAlphaInfo(v2) == kCGImageAlphaNoneSkipLast)
    {
      AlphaInfo = 0;
      goto LABEL_22;
    }

    if (!CGImageIsMask(v2))
    {
      v4 = *(v0 + 16);
      Width = CGImageGetWidth(v2);
      Height = CGImageGetHeight(v2);
      if (Height <= Width)
      {
        v7 = Width;
      }

      else
      {
        v7 = Height;
      }

      v8 = *v4;
      if (*v4 >= v7)
      {
LABEL_14:
        v11 = CGImageGetDataProvider(v2);
        if (v11)
        {
          v12 = v11;
          v13 = CGDataProviderCopyData(v11);
          if (v13)
          {
            v14 = v13;
            CGImageGetBitmapInfo(v2);
            result = CFDataGetBytePtr(v14);
            if (!result)
            {
              __break(1u);
              return result;
            }

            v16 = result;
            v17 = sub_26A704998(result, v8, v2);
            if (v17 > 1u)
            {
              v18 = v17;
              v19 = sub_26A704C28(v16, v8, v2);

              if (v19 >= 2)
              {
                AlphaInfo = v18 == 2 && v19 == 2;
                goto LABEL_22;
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

        goto LABEL_21;
      }

      v9 = sub_26A7047A4(v2, *v4, v2);
      if (v9)
      {
        v10 = v9;

        *(v1 + 8) = v10;
        v2 = v10;
        goto LABEL_14;
      }
    }

LABEL_21:
    AlphaInfo = 1;
  }

LABEL_22:
  v20 = *(v0 + 8);

  return v20(AlphaInfo);
}

uint64_t sub_26A703A2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AC090);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v23 - v9;
  sub_26A4EF6D0();
  v11 = sub_26A851C18();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v10, 1, v11);

  if (EnumTagSinglePayload == 1)
  {
    sub_26A54A088();
  }

  else
  {
    sub_26A851C08();
    (*(*(v11 - 8) + 8))(v10, v11);
  }

  v13 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v13)
  {
    swift_getObjectType();
    v14 = sub_26A851B78();
    v16 = v15;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v17 = sub_26A851818() + 32;
      v18 = swift_allocObject();
      *(v18 + 16) = a4;
      *(v18 + 24) = a5;

      if (v16 | v14)
      {
        v24[0] = 0;
        v24[1] = 0;
        v19 = v24;
        v24[2] = v14;
        v24[3] = v16;
      }

      else
      {
        v19 = 0;
      }

      v23[1] = 7;
      v23[2] = v19;
      v23[3] = v17;
      v21 = swift_task_create();

      return v21;
    }
  }

  else
  {
    v14 = 0;
    v16 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  v20 = swift_allocObject();
  *(v20 + 16) = a4;
  *(v20 + 24) = a5;
  if (v16 | v14)
  {
    v24[4] = 0;
    v24[5] = 0;
    v24[6] = v14;
    v24[7] = v16;
  }

  return swift_task_create();
}

uint64_t sub_26A703CD0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B52B8);
  sub_26A851058();
  if (v1)
  {
    sub_26A851C78();
  }

  return sub_26A851068();
}

uint64_t sub_26A703D74@<X0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B52B0);
  sub_26A851058();
  if (v5 == 2 || (v5 & 1) == 0)
  {
    v2 = 1;
  }

  else
  {
    sub_26A850E18();
    sub_26A501D68();

    v2 = 0;
  }

  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803ABB10);
  return __swift_storeEnumTagSinglePayload(a1, v2, 1, v3);
}

uint64_t sub_26A703E88@<X0>(uint64_t a1@<X1>, void *a2@<X8>)
{
  type metadata accessor for BadgedImageView(0);
  type metadata accessor for BadgedImageView.Model(0);
  sub_26A68A2F0();
  v5 = v4;
  KeyPath = swift_getKeyPath();
  v7 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AAFA0) + 36));
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AA440) + 28);
  v9 = sub_26A84B1D8();
  (*(*(v9 - 8) + 16))(v7 + v8, a1, v9);
  __swift_storeEnumTagSinglePayload(v7 + v8, 0, 1, v9);
  *v7 = KeyPath;
  *a2 = v5;
  v10 = swift_getKeyPath();
  v11 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B52A0) + 36);
  *v11 = v10;
  v11[8] = 0;
  v12 = sub_26A7020C0();
  v14 = v13;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B52A8);
  v16 = (a2 + *(result + 36));
  *v16 = v12;
  *(v16 + 1) = v14;
  return result;
}

uint64_t sub_26A704040()
{
  OUTLINED_FUNCTION_145();
  v2(0);
  OUTLINED_FUNCTION_46();
  (*(v3 + 32))(v0, v1);
  return v0;
}

uint64_t objectdestroyTm_25()
{
  type metadata accessor for BadgedImageView(0);
  OUTLINED_FUNCTION_6_3();
  OUTLINED_FUNCTION_18_24();

  v3 = v1 + *(v0 + 44);
  type metadata accessor for ImageSourceModel();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 0u:
      sub_26A84B158();
      OUTLINED_FUNCTION_1_4();
      (*(v4 + 8))(v3);
      v5 = &qword_2803B2CF0;
      goto LABEL_9;
    case 1u:

      v14 = type metadata accessor for ImageSourceView.Model(0);
      v15 = sub_26A84B2B8();
      if (!OUTLINED_FUNCTION_8_53(v15))
      {
        OUTLINED_FUNCTION_4_11();
        v16 = OUTLINED_FUNCTION_14_34();
        v17(v16);
      }

      v18 = v14[7];
      sub_26A84B1D8();
      OUTLINED_FUNCTION_1_4();
      (*(v19 + 8))(v3 + v18);
      v20 = v14[11];
      sub_26A84B2E8();
      OUTLINED_FUNCTION_1_4();
      (*(v21 + 8))(v3 + v20);
      v22 = sub_26A84DFA8();
      if (!OUTLINED_FUNCTION_8_53(v22))
      {
        OUTLINED_FUNCTION_4_11();
        v23 = OUTLINED_FUNCTION_14_34();
        v24(v23);
      }

      v13 = v14[13];
      sub_26A84B2F8();
      goto LABEL_15;
    case 2u:

      type metadata accessor for SymbolSourceView.Model(0);
      OUTLINED_FUNCTION_21_24();
      sub_26A84B1D8();
      OUTLINED_FUNCTION_1_4();
      (*(v6 + 8))(v3 + v2);
      v7 = sub_26A84B318();
      if (!OUTLINED_FUNCTION_8_53(v7))
      {
        OUTLINED_FUNCTION_4_11();
        v8 = OUTLINED_FUNCTION_14_34();
        v9(v8);
      }

      v10 = sub_26A84B238();
      if (OUTLINED_FUNCTION_3_68(v10))
      {
        break;
      }

      OUTLINED_FUNCTION_1_33();
      v11 = OUTLINED_FUNCTION_11_41();
      goto LABEL_16;
    case 3u:

      v5 = &qword_2803B2CD8;
LABEL_9:
      v13 = *(__swift_instantiateConcreteTypeFromMangledNameV2(v5) + 48);
      sub_26A84B1D8();
LABEL_15:
      OUTLINED_FUNCTION_1_4();
      v12 = *(v25 + 8);
      v11 = v3 + v13;
LABEL_16:
      v12(v11);
      break;
    case 4u:

      break;
    default:
      break;
  }

  type metadata accessor for BadgedImageView.Model(0);
  switch(OUTLINED_FUNCTION_23_19())
  {
    case 0u:
      sub_26A84B158();
      OUTLINED_FUNCTION_1_4();
      (*(v26 + 8))(v3);
      v27 = &qword_2803B2CF0;
      goto LABEL_25;
    case 1u:

      v38 = type metadata accessor for ImageSourceView.Model(0);
      OUTLINED_FUNCTION_21_24();
      v39 = sub_26A84B2B8();
      if (!OUTLINED_FUNCTION_3_68(v39))
      {
        OUTLINED_FUNCTION_1_33();
        v40 = OUTLINED_FUNCTION_11_41();
        v41(v40);
      }

      v42 = v38[7];
      sub_26A84B1D8();
      OUTLINED_FUNCTION_1_4();
      (*(v43 + 8))(v3 + v42);
      v44 = v38[11];
      sub_26A84B2E8();
      OUTLINED_FUNCTION_1_4();
      (*(v45 + 8))(v3 + v44);
      v46 = sub_26A84DFA8();
      if (!OUTLINED_FUNCTION_3_68(v46))
      {
        OUTLINED_FUNCTION_1_33();
        v47 = OUTLINED_FUNCTION_11_41();
        v48(v47);
      }

      v37 = v38[13];
      sub_26A84B2F8();
      goto LABEL_31;
    case 2u:

      v28 = type metadata accessor for SymbolSourceView.Model(0);
      v29 = *(v28 + 24);
      sub_26A84B1D8();
      OUTLINED_FUNCTION_1_4();
      (*(v30 + 8))(v3 + v29);
      v31 = sub_26A84B318();
      if (!OUTLINED_FUNCTION_3_68(v31))
      {
        OUTLINED_FUNCTION_1_33();
        v32 = OUTLINED_FUNCTION_11_41();
        v33(v32);
      }

      v34 = *(v28 + 36);
      v35 = sub_26A84B238();
      if (!OUTLINED_FUNCTION_24_22(v35))
      {
        OUTLINED_FUNCTION_4_11();
        (*(v36 + 8))(v3 + v34, v28);
      }

      break;
    case 3u:

      v27 = &qword_2803B2CD8;
LABEL_25:
      v37 = *(__swift_instantiateConcreteTypeFromMangledNameV2(v27) + 48);
      sub_26A84B1D8();
LABEL_31:
      OUTLINED_FUNCTION_1_4();
      (*(v49 + 8))(v3 + v37, v50);
      break;
    case 4u:

      break;
    default:
      break;
  }

  return swift_deallocObject();
}

uint64_t sub_26A7046C0(uint64_t (*a1)(uint64_t))
{
  v2 = type metadata accessor for BadgedImageView(0);
  OUTLINED_FUNCTION_79(v2);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return a1(v4);
}

uint64_t sub_26A704730()
{
  v0 = type metadata accessor for BadgedImageView(0);
  OUTLINED_FUNCTION_79(v0);

  return sub_26A703E2C();
}

int64_t sub_26A7047A4(CGImage *a1, int64_t a2, uint64_t a3)
{
  if (CGImageGetWidth(a1) < 1 || CGImageGetHeight(a1) < 1)
  {
    return 0;
  }

  Width = CGImageGetWidth(a1);
  result = CGImageGetHeight(a1);
  if (result)
  {
    if (Width != 0x8000000000000000 || result != -1)
    {
      v9 = sub_26A704F0C(a1, a2, a3, Width / result);
      v11 = 0;
      if (!v10)
      {
        return v11;
      }

      v12 = v9;
      if (!v9)
      {
        return v11;
      }

      v13 = v10;
      DeviceRGB = CGImageGetColorSpace(a1);
      if (!DeviceRGB)
      {
        DeviceRGB = CGColorSpaceCreateDeviceRGB();
      }

      BitmapInfo = CGImageGetBitmapInfo(a1);
      v16 = __CGBitmapContextCreate(v12, v13, DeviceRGB, BitmapInfo);

      if (v16)
      {
        CGContextSetRGBFillColor(v16, 0.0, 0.0, 0.0, 0.0);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B2870);
        v17 = swift_allocObject();
        *(v17 + 16) = xmmword_26A8570D0;
        *(v17 + 32) = 0;
        *(v17 + 40) = 0;
        *(v17 + 48) = v12;
        *(v17 + 56) = v13;
        sub_26A851E58();

        CGContextSetInterpolationQuality(v16, kCGInterpolationHigh);
        sub_26A851E48();
        Image = CGBitmapContextCreateImage(v16);
        if (Image)
        {
          v11 = Image;
          if (CGImageGetWidth(Image) >= 1 && CGImageGetHeight(v11) >= 1 && CGImageGetWidth(v11) <= a2)
          {
            Height = CGImageGetHeight(v11);

            v16 = v11;
            if (Height <= a2)
            {
              return v11;
            }
          }

          else
          {
          }
        }
      }

      return 0;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_26A704998(uint64_t a1, int a2, CGImageRef image)
{
  Height = CGImageGetHeight(image);
  v5 = sub_26A704EB4(Height);
  result = CGImageGetHeight(image);
  v7 = result - v5;
  if (__OFSUB__(result, v5))
  {
LABEL_49:
    __break(1u);
    goto LABEL_50;
  }

  if (v7 < v5)
  {
LABEL_50:
    __break(1u);
LABEL_51:
    __break(1u);
LABEL_52:
    __break(1u);
    goto LABEL_53;
  }

  if (v5 == v7)
  {
    return 0;
  }

  v22 = 0;
  v23 = 0;
  v24 = 0x100000001;
  v8 = v5;
  v9 = result - 2 * v5;
  do
  {
    if (v8 >= v7)
    {
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
LABEL_46:
      __break(1u);
LABEL_47:
      __break(1u);
LABEL_48:
      __break(1u);
      goto LABEL_49;
    }

    result = CGImageGetWidth(image);
    if (result >= -1)
    {
      v10 = (result / 2);
      result = CGImageGetWidth(image);
      if (v10 <= -9.22337204e18)
      {
        goto LABEL_41;
      }

      if (v10 >= 9.22337204e18)
      {
        goto LABEL_42;
      }

      if ((v8 & 0x8000000000000000) == 0)
      {
        v11 = v10;
        if (result > v10)
        {
          v12 = v8;
          result = CGImageGetHeight(image);
          if (v8 <= -9.22337204e18)
          {
            goto LABEL_43;
          }

          if (v12 >= 9.22337204e18)
          {
            goto LABEL_44;
          }

          v13 = v12;
          if (result > v12)
          {
            result = CGImageGetBytesPerRow(image);
            v14 = result * v13;
            if ((result * v13) >> 64 != (result * v13) >> 63)
            {
              goto LABEL_45;
            }

            result = CGImageGetBitsPerPixel(image);
            v15 = v11 * (result / 8);
            if ((v11 * (result / 8)) >> 64 != v15 >> 63)
            {
              goto LABEL_46;
            }

            v16 = v14 + v15;
            if (__OFADD__(v14, v15))
            {
              goto LABEL_47;
            }

            result = CGImageGetAlphaInfo(image);
            if (result == 4)
            {
              v17 = 0;
            }

            else
            {
              result = CGImageGetAlphaInfo(image);
              v17 = 3;
              if (result == 2)
              {
                v17 = 0;
              }
            }

            v18 = __OFADD__(v16, v17);
            v19 = v16 + v17;
            if (v18)
            {
              goto LABEL_48;
            }

            if (*(a1 + v19) >= 0xFAu)
            {
              if ((v24 & 0x100000000) != 0)
              {
                v23 = v8;
                v24 = 0;
                v22 = v8;
              }

              else
              {
                if (v24)
                {
                  return 1;
                }

                if (__OFADD__(v23, 1))
                {
                  goto LABEL_51;
                }

                if (v8 != v23 + 1)
                {
                  return 1;
                }

                v23 = v8;
                v24 = 0;
              }
            }
          }
        }
      }
    }

    ++v8;
    --v9;
  }

  while (v9);
  if ((HIDWORD(v24) | v24))
  {
    return 0;
  }

  if (v22 != v5)
  {
    return 2;
  }

  result = CGImageGetHeight(image);
  v20 = result - v5;
  if (__OFSUB__(result, v5))
  {
    goto LABEL_52;
  }

  v18 = __OFSUB__(v20, 1);
  v21 = v20 - 1;
  if (!v18)
  {
    if (v23 == v21)
    {
      return 3;
    }

    return 2;
  }

LABEL_53:
  __break(1u);
  return result;
}

uint64_t sub_26A704C28(uint64_t a1, int a2, CGImageRef image)
{
  Width = CGImageGetWidth(image);
  v5 = sub_26A704EB4(Width);
  result = CGImageGetWidth(image);
  v7 = result - v5;
  if (__OFSUB__(result, v5))
  {
LABEL_50:
    __break(1u);
    goto LABEL_51;
  }

  if (v7 < v5)
  {
LABEL_51:
    __break(1u);
LABEL_52:
    __break(1u);
LABEL_53:
    __break(1u);
    goto LABEL_54;
  }

  if (v5 == v7)
  {
    return 0;
  }

  v25 = 0;
  v26 = 0;
  v27 = 1;
  v8 = 1;
  v9 = v5;
  v10 = result - 2 * v5;
  do
  {
    if (v9 >= v7)
    {
      __break(1u);
LABEL_42:
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
LABEL_49:
      __break(1u);
      goto LABEL_50;
    }

    result = CGImageGetHeight(image);
    if ((v9 & 0x8000000000000000) == 0)
    {
      v11 = result;
      v12 = v9;
      result = CGImageGetWidth(image);
      if (v9 <= -9.22337204e18)
      {
        goto LABEL_42;
      }

      if (v12 >= 9.22337204e18)
      {
        goto LABEL_43;
      }

      v13 = v12;
      if (result > v12 && v11 >= -1)
      {
        v15 = (v11 / 2);
        result = CGImageGetHeight(image);
        if (v15 <= -9.22337204e18)
        {
          goto LABEL_44;
        }

        if (v15 >= 9.22337204e18)
        {
          goto LABEL_45;
        }

        v16 = v15;
        if (result > v15)
        {
          result = CGImageGetBytesPerRow(image);
          v17 = result * v16;
          if ((result * v16) >> 64 != (result * v16) >> 63)
          {
            goto LABEL_46;
          }

          result = CGImageGetBitsPerPixel(image);
          v18 = v13 * (result / 8);
          if ((v13 * (result / 8)) >> 64 != v18 >> 63)
          {
            goto LABEL_47;
          }

          v19 = __OFADD__(v17, v18);
          v20 = v17 + v18;
          if (v19)
          {
            goto LABEL_48;
          }

          result = CGImageGetAlphaInfo(image);
          if (result == 4)
          {
            v21 = 0;
          }

          else
          {
            result = CGImageGetAlphaInfo(image);
            v21 = 3;
            if (result == 2)
            {
              v21 = 0;
            }
          }

          v19 = __OFADD__(v20, v21);
          v22 = v20 + v21;
          if (v19)
          {
            goto LABEL_49;
          }

          if (*(a1 + v22) >= 0xFAu)
          {
            if (v8)
            {
              v27 = 0;
              v8 = 0;
              v25 = v9;
              v26 = v9;
            }

            else
            {
              if (v27)
              {
                return 1;
              }

              if (__OFADD__(v26, 1))
              {
                goto LABEL_52;
              }

              if (v9 != v26 + 1)
              {
                return 1;
              }

              v27 = 0;
              v8 = 0;
              v26 = v9;
            }
          }
        }
      }
    }

    ++v9;
    --v10;
  }

  while (v10);
  if ((v8 | v27))
  {
    return 0;
  }

  if (v25 != v5)
  {
    return 2;
  }

  result = CGImageGetWidth(image);
  v23 = result - v5;
  if (__OFSUB__(result, v5))
  {
    goto LABEL_53;
  }

  v19 = __OFSUB__(v23, 1);
  v24 = v23 - 1;
  if (!v19)
  {
    if (v26 == v24)
    {
      return 3;
    }

    return 2;
  }

LABEL_54:
  __break(1u);
  return result;
}

uint64_t sub_26A704EB4(uint64_t result)
{
  v1 = result * 0.05;
  if (COERCE__INT64(fabs(v1)) > 0x7FEFFFFFFFFFFFFFLL)
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

int64_t sub_26A704F0C(CGImage *a1, int64_t a2, uint64_t a3, uint64_t a4)
{
  Width = CGImageGetWidth(a1);
  Height = CGImageGetHeight(a1);
  if (Height <= Width)
  {
    v9 = Width;
  }

  else
  {
    v9 = Height;
  }

  if (v9 < a2)
  {
    a2 = v9;
  }

  v10 = CGImageGetWidth(a1);
  result = CGImageGetHeight(a1);
  if (result < v10)
  {
    if (a4)
    {
      if (a2 != 0x8000000000000000 || a4 != -1)
      {
        return a2;
      }

      goto LABEL_17;
    }

    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  result = a4 * a2;
  if ((a4 * a2) >> 64 != (a4 * a2) >> 63)
  {
    goto LABEL_16;
  }

  return result;
}

BOOL sub_26A704FB8(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v4[2] = a2;
  return sub_26A8377E8(sub_26A705F1C, v4, v2);
}

double sub_26A704FFC(uint64_t a1)
{
  __asm { FMOV            V0.2D, #2.0 }

  return OUTLINED_FUNCTION_4_64(a1, qword_2803D2268, _Q0);
}

double sub_26A70500C(uint64_t a1)
{
  __asm { FMOV            V0.2D, #2.0 }

  return OUTLINED_FUNCTION_4_64(a1, qword_2803D2280, _Q0);
}

__n128 sub_26A70501C(__n128 a1, __n128 a2, uint64_t a3, uint64_t *a4)
{
  v29 = type metadata accessor for BadgeImageViewConstants(0);
  __swift_allocate_value_buffer(v29, a4);
  v28 = __swift_project_value_buffer(v29, a4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B52E0);
  v5 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B52E8) - 8);
  v25 = *(*v5 + 72);
  v6 = (*(*v5 + 80) + 32) & ~*(*v5 + 80);
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_26A8570F0;
  v7 = (v26 + v6);
  v24 = v26 + v6 + v5[14];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B52D8);
  v8 = sub_26A84B1D8();
  OUTLINED_FUNCTION_15();
  v10 = v9;
  v12 = *(v11 + 72);
  v13 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_26A864670;
  v15 = *(v10 + 104);
  v15(v14 + v13, *MEMORY[0x277D62B28], v8);
  v15(v14 + v13 + v12, *MEMORY[0x277D62B30], v8);
  v15(v14 + v13 + 2 * v12, *MEMORY[0x277D62A90], v8);
  v15(v14 + v13 + 3 * v12, *MEMORY[0x277D62A98], v8);
  *v7 = v14;
  v15(v24, *MEMORY[0x277D62B08], v8);
  v16 = type metadata accessor for BadgeImageViewConstants.Configuration(0);
  *(v24 + *(v16 + 20)) = a1;
  v17 = (v7 + v25);
  v18 = v7 + v25 + v5[14];
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_26A864670;
  v20 = v19 + v13;
  v15(v20, *MEMORY[0x277D62B38], v8);
  v15(v20 + v12, *MEMORY[0x277D62B40], v8);
  v15(v20 + 2 * v12, *MEMORY[0x277D62AA8], v8);
  v15(v20 + 3 * v12, *MEMORY[0x277D62AB0], v8);
  *v17 = v19;
  v15(v18, *MEMORY[0x277D62B10], v8);
  *&v18[*(v16 + 20)] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B52F0);
  sub_26A7058F8();
  v21 = sub_26A8516A8();
  v22 = v28 + *(v29 + 20);
  v15(v22, *MEMORY[0x277D62AF8], v8);
  result = a1;
  *&v22[*(v16 + 20)] = a1;
  *v28 = v21;
  return result;
}

double sub_26A7053F8(uint64_t a1)
{
  __asm
  {
    FMOV            V0.2D, #4.0
    FMOV            V1.2D, #6.0
  }

  *&result = sub_26A70501C(_Q0, _Q1, a1, qword_2803D2298).n128_u64[0];
  return result;
}

double sub_26A70540C(uint64_t a1)
{
  __asm { FMOV            V0.2D, #3.0 }

  return OUTLINED_FUNCTION_4_64(a1, qword_2803D22B0, _Q0);
}

double sub_26A70541C(uint64_t a1)
{
  __asm
  {
    FMOV            V0.2D, #0.5
    FMOV            V1.2D, #2.0
  }

  *&result = sub_26A70501C(_Q0, _Q1, a1, qword_2803D22C8).n128_u64[0];
  return result;
}

uint64_t sub_26A705430(uint64_t a1)
{
  if (qword_2803A8DA0 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(a1, qword_2803D2268);
  return sub_26A701BBC();
}

uint64_t sub_26A705590(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  if (*a3 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(a1, a4);
  return sub_26A701BBC();
}

uint64_t sub_26A70560C(uint64_t a1)
{
  v3 = type metadata accessor for BadgedImageView(0);
  OUTLINED_FUNCTION_79(v3);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  v10 = OUTLINED_FUNCTION_7_9(v9);
  *v10 = v11;
  v10[1] = sub_26A6156E0;

  return sub_26A7034DC(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_26A7056F8()
{
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_7_9(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_4_8(v1);

  return v4(v3);
}

uint64_t sub_26A705790()
{
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_7_9(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_4_8(v1);

  return v4(v3);
}

uint64_t sub_26A705888(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B52D0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_26A7058F8()
{
  result = qword_2803B52F8;
  if (!qword_2803B52F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B52F0);
    sub_26A7059AC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B52F8);
  }

  return result;
}

unint64_t sub_26A7059AC()
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

uint64_t sub_26A705A98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t))
{
  result = a4(319);
  if (v7 <= 0x3F)
  {
    result = a5(319);
    if (v8 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

void sub_26A705B28()
{
  if (!qword_2803B5328)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B52F0);
    type metadata accessor for BadgeImageViewConstants.Configuration(255);
    sub_26A7058F8();
    v0 = sub_26A8516D8();
    if (!v1)
    {
      atomic_store(v0, &qword_2803B5328);
    }
  }
}

unint64_t sub_26A705BB0()
{
  result = qword_2803B5330;
  if (!qword_2803B5330)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B5290);
    sub_26A705C68();
    sub_26A4D7DCC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B5330);
  }

  return result;
}

unint64_t sub_26A705C68()
{
  result = qword_2803B5338;
  if (!qword_2803B5338)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B5288);
    sub_26A705D20();
    sub_26A4D7DCC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B5338);
  }

  return result;
}

unint64_t sub_26A705D20()
{
  result = qword_2803B5340;
  if (!qword_2803B5340)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B5280);
    sub_26A705DD8();
    sub_26A4D7DCC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B5340);
  }

  return result;
}

unint64_t sub_26A705DD8()
{
  result = qword_2803B5348;
  if (!qword_2803B5348)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B5270);
    sub_26A705E90();
    sub_26A4D7DCC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B5348);
  }

  return result;
}

unint64_t sub_26A705E90()
{
  result = qword_2803B5350;
  if (!qword_2803B5350)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B5358);
    sub_26A601788();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B5350);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_3_68(uint64_t a1)
{

  return __swift_getEnumTagSinglePayload(v1 + v2, 1, a1);
}

uint64_t OUTLINED_FUNCTION_8_53(uint64_t a1)
{

  return __swift_getEnumTagSinglePayload(v1 + v2, 1, a1);
}

uint64_t OUTLINED_FUNCTION_18_24()
{
  sub_26A49035C(*(v0 + v1), *(v0 + v1 + 8));
  sub_26A49035C(*(v0 + v1 + 16), *(v0 + v1 + 24));
}

uint64_t OUTLINED_FUNCTION_23_19()
{

  return swift_getEnumCaseMultiPayload();
}

uint64_t OUTLINED_FUNCTION_24_22(uint64_t a1)
{

  return __swift_getEnumTagSinglePayload(v1 + v2, 1, a1);
}

void *BinaryButtonView.init(primaryButton:secondaryButton:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  sub_26A50429C(a1, v15);
  sub_26A50429C(a2, v14);
  v13 = 0;
  memset(v12, 0, sizeof(v12));
  __src[0] = 0;
  sub_26A851288();
  v7[0] = v9;
  v7[1] = v10;
  v8 = v11;
  BinaryButtonView.init(primaryButton:secondaryButton:statusIndicator:statusState:duration:)(v15, v14, v12, v7, __src, 0.4);
  __swift_destroy_boxed_opaque_existential_1(a2);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return memcpy(a3, __src, 0x420uLL);
}

SnippetUI::BinaryButtonView::TransitionState_optional __swiftcall BinaryButtonView.TransitionState.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_26A8524B8();

  v5 = 4;
  if (v3 < 4)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t BinaryButtonView.TransitionState.rawValue.getter()
{
  result = 0x74747542776F6873;
  switch(*v0)
  {
    case 1:
      result = 0xD000000000000013;
      break;
    case 2:
      result = 0xD00000000000001ELL;
      break;
    case 3:
      result = 0xD000000000000020;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_26A706244@<X0>(unint64_t *a1@<X8>)
{
  result = BinaryButtonView.TransitionState.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t BinaryButtonView.init(primaryButton:secondaryButton:statusIndicator:statusState:duration:)@<X0>(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X3>, uint64_t a5@<X8>, double a6@<D0>)
{
  v49 = a4[1];
  v50 = *a4;
  v48 = *(a4 + 16);
  KeyPath = swift_getKeyPath();
  v66 = 0;
  v46 = swift_getKeyPath();
  v65 = 0;
  v45 = swift_getKeyPath();
  v64 = 0;
  v44 = swift_getKeyPath();
  v63 = 0;
  if (qword_2803A8AE8 != -1)
  {
    swift_once();
  }

  memcpy(__dst, qword_2803D1B00, 0xD0uLL);
  memcpy(&__src[368], qword_2803D1B00, 0xD0uLL);
  sub_26A4DBD68(__dst, v56, &qword_2803ACEF8);
  sub_26A6AEE74(__src);
  memcpy(v56, &__src[400], 0xB0uLL);
  memcpy(&__src[192], &__src[400], 0xB0uLL);
  memcpy(&v62[7], __src, 0x240uLL);
  sub_26A54DFFC(v56, &v51);
  if (qword_2803A8D08 != -1)
  {
    swift_once();
  }

  v43 = xmmword_2803D2028;
  v11 = qword_2803D2038;
  v12 = unk_2803D2040;
  v13 = qword_2803D2048;

  v42 = v11;

  sub_26A6AEE74(v61);
  v41 = swift_getKeyPath();
  v60 = 0;
  v40 = swift_getKeyPath();
  v59 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AA470);
  sub_26A851048();
  v38 = v53;
  v39 = v51;
  v58 = v52;
  sub_26A70678C();
  sub_26A84ED98();
  v37 = v51;
  v36 = v52;
  v35 = v53;
  sub_26A851048();
  v34 = v51;
  v33 = v52;
  sub_26A851048();
  v14 = v51;
  v32 = v52;
  v15 = a1[3];
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v15);
  v17 = (*(v16 + 8))(v15, v16);
  v18 = a2[3];
  v19 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v18);
  v20 = (*(v19 + 8))(v18, v19);
  sub_26A4DBD68(a3, &v51, &qword_2803A91B8);
  v21 = v54;
  if (v54)
  {
    v22 = v55;
    __swift_project_boxed_opaque_existential_1(&v51, v54);
    v23 = (*(v22 + 8))(v21, v22);
    sub_26A4D6FD8();
    __swift_destroy_boxed_opaque_existential_1(&v51);
  }

  else
  {
    sub_26A4D6FD8();
    sub_26A4D6FD8();
    v23 = 0;
  }

  v24 = v66;
  v25 = v65;
  v26 = v64;
  v27 = v63;
  v28 = v60;
  v29 = v59;
  v30 = v58;
  *a5 = KeyPath;
  *(a5 + 8) = v24;
  *(a5 + 16) = v46;
  *(a5 + 24) = 0;
  *(a5 + 25) = v25;
  *(a5 + 32) = v45;
  *(a5 + 40) = v26;
  *(a5 + 48) = v44;
  *(a5 + 56) = v27;
  memcpy((a5 + 57), v62, 0x247uLL);
  memcpy((a5 + 640), v61, 0xC0uLL);
  *(a5 + 832) = v13;
  *(a5 + 840) = v43;
  *(a5 + 856) = v42;
  *(a5 + 864) = v12;
  *(a5 + 872) = v13;
  *(a5 + 880) = v41;
  *(a5 + 888) = v28;
  *(a5 + 896) = v40;
  *(a5 + 904) = v29;
  *(a5 + 912) = v39;
  *(a5 + 920) = v30;
  *(a5 + 928) = v38;
  *(a5 + 936) = v37;
  *(a5 + 944) = v36;
  *(a5 + 952) = v35;
  *(a5 + 960) = v17;
  *(a5 + 968) = v20;
  *(a5 + 976) = 0;
  *(a5 + 984) = v50;
  *(a5 + 992) = v49;
  *(a5 + 1000) = v48;
  *(a5 + 1008) = v34;
  *(a5 + 1016) = v33;
  *(a5 + 1024) = v14;
  *(a5 + 1032) = v32;
  *(a5 + 1040) = v23;
  *(a5 + 1048) = a6;
  __swift_destroy_boxed_opaque_existential_1(a2);
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_26A70678C()
{
  result = qword_2803B5368;
  if (!qword_2803B5368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B5368);
  }

  return result;
}

uint64_t BinaryButtonView.body.getter@<X0>(uint64_t a1@<X8>)
{
  memcpy(v9, v1, sizeof(v9));
  sub_26A706930(v9, a1);
  v3 = swift_allocObject();
  *(v3 + 16) = sub_26A68CB74;
  *(v3 + 24) = 0;
  v4 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B5370) + 36);
  *(v4 + 16) = swift_getKeyPath();
  *(v4 + 24) = 0;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91D8);
  v6 = *(v5 + 40);
  *(v4 + v6) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803A9190);
  swift_storeEnumTagMultiPayload();
  v7 = v4 + *(v5 + 44);
  *v7 = swift_getKeyPath();
  *(v7 + 8) = 0;
  *v4 = sub_26A4D1F7C;
  *(v4 + 8) = v3;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B5378);
  *(a1 + *(result + 36)) = 24;
  return result;
}

uint64_t sub_26A706930@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v58 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B55C8);
  v48 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v47 = &v47 - v4;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B5478);
  MEMORY[0x28223BE20](v53);
  v49 = &v47 - v5;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B55D0);
  MEMORY[0x28223BE20](v55);
  v57 = &v47 - v6;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B55D8);
  MEMORY[0x28223BE20](v51);
  v52 = &v47 - v7;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B5400);
  MEMORY[0x28223BE20](v56);
  v54 = &v47 - v8;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B5410);
  MEMORY[0x28223BE20](v50);
  v10 = &v47 - v9;
  v11 = sub_26A84F988();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v47 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = *(a1 + 888);
  v15 = a1[110];
  v65 = v15;
  if (v66 == 1)
  {
    if ((v15 & 1) == 0)
    {
      goto LABEL_9;
    }
  }

  else
  {

    sub_26A851EA8();
    v16 = sub_26A8501F8();
    sub_26A84EA78();

    sub_26A84F978();
    swift_getAtKeyPath();
    sub_26A4D6FD8();
    (*(v12 + 8))(v14, v11);
    if (LOBYTE(v60[0]) != 1)
    {
      goto LABEL_9;
    }
  }

  v64 = *(a1 + 56);
  v17 = a1[6];
  v63 = v17;
  if ((v64 & 1) == 0)
  {

    sub_26A851EA8();
    v18 = v3;
    v19 = sub_26A8501F8();
    sub_26A84EA78();

    v3 = v18;
    sub_26A84F978();
    swift_getAtKeyPath();
    sub_26A4D6FD8();
    (*(v12 + 8))(v14, v11);
    v17 = *&v60[0];
  }

  if (v17 == 2)
  {
    memcpy(v60, a1, sizeof(v60));
    sub_26A707360(v10);
    sub_26A4DBD68(v10, v52, &qword_2803B5410);
    swift_storeEnumTagMultiPayload();
    sub_26A70C6B0();
    sub_26A70CA68();
    v20 = v54;
    sub_26A84FDF8();
    sub_26A4DBD68(v20, v57, &qword_2803B5400);
    swift_storeEnumTagMultiPayload();
    sub_26A70C624();
    v21 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B54A0);
    v22 = sub_26A70CCBC();
    v23 = sub_26A70BFE0();
    *&v60[0] = v21;
    *(&v60[0] + 1) = &type metadata for BinaryButtonView.TransitionState;
    *&v60[1] = v22;
    *(&v60[1] + 1) = v23;
    swift_getOpaqueTypeConformance2();
    sub_26A84FDF8();
    sub_26A4D6FD8();
    return sub_26A4D6FD8();
  }

LABEL_9:
  v62 = *(a1 + 8);
  v24 = *a1;
  v61 = *a1;
  if ((v62 & 1) == 0)
  {

    sub_26A851EA8();
    v25 = sub_26A8501F8();
    sub_26A84EA78();

    sub_26A84F978();
    swift_getAtKeyPath();
    sub_26A4D6FD8();
    (*(v12 + 8))(v14, v11);
    v24 = *&v60[0];
  }

  if (sub_26A61B05C(v24, &unk_287B13068))
  {
    memcpy(v60, a1, sizeof(v60));
    v26 = v49;
    sub_26A707978();
    v27 = swift_allocObject();
    memcpy((v27 + 16), a1, 0x420uLL);
    sub_26A4E22E0(a1, v59);
    v28 = sub_26A851448();
    v30 = v29;
    v31 = (v26 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B5498) + 36));
    *v31 = sub_26A8027E0;
    v31[1] = 0;
    v31[2] = v28;
    v31[3] = v30;
    v32 = swift_allocObject();
    *(v32 + 16) = sub_26A70DE4C;
    *(v32 + 24) = v27;
    v33 = (v26 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B5488) + 36));
    *v33 = sub_26A52E998;
    v33[1] = v32;
    v60[0] = *(a1 + 57);
    *&v60[1] = a1[116];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B55E0);
    sub_26A851058();
    sub_26A851448();
    sub_26A84F028();
    v34 = v52;
    v35 = (v26 + *(v53 + 36));
    v36 = v60[1];
    *v35 = v60[0];
    v35[1] = v36;
    v35[2] = v60[2];
    sub_26A4DBD68(v26, v34, &qword_2803B5478);
    swift_storeEnumTagMultiPayload();
    sub_26A70C6B0();
    sub_26A70CA68();
    v37 = v54;
    sub_26A84FDF8();
    sub_26A4DBD68(v37, v57, &qword_2803B5400);
    swift_storeEnumTagMultiPayload();
    sub_26A70C624();
    v38 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B54A0);
    v39 = sub_26A70CCBC();
    v40 = sub_26A70BFE0();
    v59[0] = v38;
    v59[1] = &type metadata for BinaryButtonView.TransitionState;
    v59[2] = v39;
    v59[3] = v40;
    swift_getOpaqueTypeConformance2();
    sub_26A84FDF8();
    sub_26A4D6FD8();
    return sub_26A4D6FD8();
  }

  memcpy(v60, a1, sizeof(v60));
  v42 = v47;
  sub_26A707978();
  v43 = v48;
  (*(v48 + 16))(v57, v42, v3);
  swift_storeEnumTagMultiPayload();
  sub_26A70C624();
  v44 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B54A0);
  v45 = sub_26A70CCBC();
  v46 = sub_26A70BFE0();
  *&v60[0] = v44;
  *(&v60[0] + 1) = &type metadata for BinaryButtonView.TransitionState;
  *&v60[1] = v45;
  *(&v60[1] + 1) = v46;
  swift_getOpaqueTypeConformance2();
  sub_26A84FDF8();
  return (*(v43 + 8))(v42, v3);
}

uint64_t sub_26A707360@<X0>(uint64_t a1@<X8>)
{
  v48 = a1;
  v2 = sub_26A84F988();
  v41 = *(v2 - 8);
  v42 = v2;
  MEMORY[0x28223BE20](v2);
  v40 = &v40 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803ADD80);
  v4 = *(v43 - 8);
  MEMORY[0x28223BE20](v43);
  v6 = &v40 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B5440);
  v8 = v7 - 8;
  MEMORY[0x28223BE20](v7);
  v10 = &v40 - v9;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B5430);
  MEMORY[0x28223BE20](v45);
  v46 = &v40 - v11;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B5420);
  MEMORY[0x28223BE20](v44);
  v47 = &v40 - v12;
  memcpy(v54, v1, 0x420uLL);
  v13 = swift_allocObject();
  memcpy((v13 + 16), v1, 0x420uLL);
  KeyPath = swift_getKeyPath();
  v51 = 0;
  v52 = sub_26A70DE54;
  v53 = v13;
  sub_26A4E22E0(v54, v49);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B5460);
  sub_26A4D7DCC();
  sub_26A850AF8();

  sub_26A57A104(sub_26A70ADA8, 0, v10);
  (*(v4 + 8))(v6, v43);
  v14 = sub_26A850278();
  sub_26A84ED48();
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v23 = &v10[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B5450) + 36)];
  *v23 = v14;
  *(v23 + 1) = v16;
  *(v23 + 2) = v18;
  *(v23 + 3) = v20;
  *(v23 + 4) = v22;
  v23[40] = 0;
  v24 = sub_26A850298();
  sub_26A84ED48();
  v25 = &v10[*(v8 + 44)];
  *v25 = v24;
  *(v25 + 1) = v26;
  *(v25 + 2) = v27;
  *(v25 + 3) = v28;
  *(v25 + 4) = v29;
  v25[40] = 0;
  v51 = v54[5];
  KeyPath = v54[4];
  if (LOBYTE(v54[5]) != 1)
  {

    sub_26A851EA8();
    v30 = sub_26A8501F8();
    sub_26A84EA78();

    v31 = v40;
    sub_26A84F978();
    swift_getAtKeyPath();
    sub_26A4D6FD8();
    (*(v41 + 8))(v31, v42);
  }

  sub_26A851448();
  sub_26A84F628();
  v32 = v46;
  sub_26A4DBDB4(v10, v46, &qword_2803B5440);
  memcpy((v32 + *(v45 + 36)), v49, 0x70uLL);
  v33 = v47;
  sub_26A4DBDB4(v32, v47, &qword_2803B5430);
  *(v33 + *(v44 + 36)) = 256;
  v34 = swift_getKeyPath();
  v35 = swift_getKeyPath();
  v36 = v33;
  v37 = v48;
  sub_26A4DBDB4(v36, v48, &qword_2803B5420);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B5410);
  v39 = v37 + *(result + 36);
  *v39 = v34;
  *(v39 + 8) = 0;
  *(v39 + 16) = v35;
  *(v39 + 24) = 256;
  return result;
}

uint64_t sub_26A707978()
{
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803ADD90);
  MEMORY[0x28223BE20](v78);
  v2 = &v77 - v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803ADD98);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v77 - v4;
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B54F8);
  MEMORY[0x28223BE20](v79);
  v92 = &v77 - v6;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B54E8);
  MEMORY[0x28223BE20](v81);
  v83 = &v77 - v7;
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B54D8);
  MEMORY[0x28223BE20](v82);
  v88 = &v77 - v8;
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B54C8);
  MEMORY[0x28223BE20](v85);
  v86 = &v77 - v9;
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B54B8);
  MEMORY[0x28223BE20](v84);
  v87 = &v77 - v10;
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B54A0);
  MEMORY[0x28223BE20](v89);
  v90 = &v77 - v11;
  v12 = sub_26A84F988();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v77 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  memcpy(v102, v0, 0x420uLL);
  v103 = *(v0 + 904);
  v16 = *(v0 + 896);
  v102[132] = v16;
  v93 = v12;
  v91 = v13;
  v80 = v5;
  if (v103 == 1)
  {
    if ((v16 & 1) == 0)
    {
      goto LABEL_8;
    }
  }

  else
  {

    sub_26A851EA8();
    v17 = sub_26A8501F8();
    sub_26A84EA78();

    v12 = v93;
    sub_26A84F978();
    swift_getAtKeyPath();
    sub_26A4D6FD8();
    (*(v13 + 8))(v15, v12);
    if (v96[0] != 1)
    {
LABEL_8:
      v20 = v102[43];
      v107 = v102[7];
      v21 = v102[6];
      v106 = v102[6];
      if (LOBYTE(v102[7]) == 1)
      {
      }

      else
      {

        sub_26A4DBD68(&v106, v96, &qword_2803AD800);
        sub_26A851EA8();
        v22 = sub_26A8501F8();
        sub_26A84EA78();

        sub_26A84F978();
        swift_getAtKeyPath();
        v12 = v93;
        sub_26A4D6FD8();
        (*(v91 + 8))(v15, v12);
        v21 = *v96;
      }

      v20(v21);

      goto LABEL_12;
    }
  }

  v105 = v102[1];
  v18 = v102[0];
  v104 = v102[0];
  if ((v102[1] & 1) == 0)
  {

    sub_26A851EA8();
    v19 = sub_26A8501F8();
    sub_26A84EA78();

    v12 = v93;
    sub_26A84F978();
    swift_getAtKeyPath();
    sub_26A4D6FD8();
    (*(v13 + 8))(v15, v12);
    v18 = *v96;
  }

  if (v18 != 1)
  {
    goto LABEL_8;
  }

LABEL_12:
  v23 = sub_26A84FBF8();
  LOBYTE(v110) = 1;
  sub_26A708808(v102, v96);
  memcpy(v98, v96, 0x4AuLL);
  memcpy(v99, v96, sizeof(v99));
  sub_26A4DBD68(v98, v101, &qword_2803B5620);
  sub_26A4D6FD8();
  memcpy(&v97[7], v98, 0x4AuLL);
  *v96 = v23;
  v96[16] = v110;
  memcpy(&v96[17], v97, 0x51uLL);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B5510);
  sub_26A4D7DCC();
  sub_26A850AF8();
  memcpy(v100, v96, sizeof(v100));
  sub_26A4D6FD8();
  KeyPath = swift_getKeyPath();
  v25 = &v2[*(v78 + 36)];
  *(v25 + 1) = 0;
  *(v25 + 2) = 0;
  *v25 = KeyPath;
  v25[24] = 2;
  v26 = swift_allocObject();
  memcpy((v26 + 16), v102, 0x420uLL);
  v27 = v80;
  sub_26A57A310(sub_26A70DEB0, v26, v80);
  sub_26A4E22E0(v102, v96);

  sub_26A4D6FD8();
  v28 = sub_26A850278();
  v109 = v102[1];
  v29 = v102[0];
  v108 = v102[0];
  v30 = v102[1];
  v31 = v102[0];
  if ((v102[1] & 1) == 0)
  {

    sub_26A851EA8();
    v32 = sub_26A8501F8();
    sub_26A84EA78();

    sub_26A84F978();
    swift_getAtKeyPath();
    sub_26A4D6FD8();
    (*(v91 + 8))(v15, v12);
    v31 = *v96;
  }

  if (sub_26A61B05C(v31, &unk_287B13090) && qword_2803A8BF0 != -1)
  {
    swift_once();
  }

  sub_26A84ED48();
  v34 = v33;
  v36 = v35;
  v38 = v37;
  v40 = v39;
  v41 = v92;
  sub_26A4DBDB4(v27, v92, &qword_2803ADD98);
  v42 = v41 + *(v79 + 36);
  *v42 = v28;
  *(v42 + 8) = v34;
  *(v42 + 16) = v36;
  *(v42 + 24) = v38;
  *(v42 + 32) = v40;
  *(v42 + 40) = 0;
  v43 = sub_26A850298();
  if ((v30 & 1) == 0)
  {

    sub_26A851EA8();
    v44 = sub_26A8501F8();
    sub_26A84EA78();

    sub_26A84F978();
    swift_getAtKeyPath();
    sub_26A4D6FD8();
    (*(v91 + 8))(v15, v93);
    v29 = *v96;
  }

  if (sub_26A61B05C(v29, &unk_287B13090) && qword_2803A8BF0 != -1)
  {
    swift_once();
  }

  sub_26A84ED48();
  v46 = v45;
  v48 = v47;
  v50 = v49;
  v52 = v51;
  v53 = v83;
  sub_26A4DBDB4(v92, v83, &qword_2803B54F8);
  v54 = v53 + *(v81 + 36);
  *v54 = v43;
  *(v54 + 8) = v46;
  *(v54 + 16) = v48;
  *(v54 + 24) = v50;
  *(v54 + 32) = v52;
  *(v54 + 40) = 0;
  v55 = sub_26A850268();
  memcpy(v96, v102, sizeof(v96));
  sub_26A709144();
  sub_26A84ED48();
  v57 = v56;
  v59 = v58;
  v61 = v60;
  v63 = v62;
  v64 = v88;
  sub_26A4DBDB4(v53, v88, &qword_2803B54E8);
  v65 = v64 + *(v82 + 36);
  *v65 = v55;
  *(v65 + 8) = v57;
  *(v65 + 16) = v59;
  *(v65 + 24) = v61;
  *(v65 + 32) = v63;
  *(v65 + 40) = 0;
  v111 = v102[5];
  v110 = v102[4];
  if (LOBYTE(v102[5]) != 1)
  {

    sub_26A851EA8();
    v66 = sub_26A8501F8();
    sub_26A84EA78();

    sub_26A84F978();
    swift_getAtKeyPath();
    sub_26A4D6FD8();
    (*(v91 + 8))(v15, v93);
  }

  sub_26A851448();
  sub_26A84F628();
  v67 = v86;
  sub_26A4DBDB4(v64, v86, &qword_2803B54D8);
  memcpy((v67 + *(v85 + 36)), v101, 0x70uLL);
  v68 = v87;
  sub_26A4DBDB4(v67, v87, &qword_2803B54C8);
  *(v68 + *(v84 + 36)) = 256;
  v69 = swift_getKeyPath();
  v70 = swift_getKeyPath();
  v71 = v68;
  v72 = v90;
  sub_26A4DBDB4(v71, v90, &qword_2803B54B8);
  v73 = v72 + *(v89 + 36);
  *v73 = v69;
  *(v73 + 8) = 0;
  *(v73 + 16) = v70;
  *(v73 + 24) = 256;
  *v96 = *&v102[123];
  v96[16] = v102[125];
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B5608);
  MEMORY[0x26D6634C0](&v95, v74);
  v94 = v95;
  v75 = swift_allocObject();
  memcpy((v75 + 16), v102, 0x420uLL);
  sub_26A4E22E0(v102, v96);
  sub_26A70CCBC();
  sub_26A70BFE0();
  sub_26A850C88();

  return sub_26A4D6FD8();
}

void *sub_26A708808@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = sub_26A84F9E8();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v39 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B5628);
  MEMORY[0x28223BE20](v11);
  v13 = &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v39 - v15;
  __src[0] = *(a1 + 1008);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AC190);
  sub_26A851058();
  if (v43 == 1)
  {
    v17 = *(a1 + 1040);
    KeyPath = swift_getKeyPath();
    __src[0] = *(a1 + 984);
    LOBYTE(__src[1]) = *(a1 + 1000);

    v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B5608);
    MEMORY[0x26D6634C0](&v53, v19);
    v20 = 0xEB00000000736E6FLL;
    v21 = 0x74747542776F6873;
    switch(v53)
    {
      case 1:
        v21 = 0xD000000000000013;
        v20 = 0x800000026A88AD20;
        break;
      case 2:
        v20 = 0x800000026A88AD40;
        v21 = 0xD00000000000001ELL;
        break;
      case 3:
        v20 = 0x800000026A88AD60;
        v21 = 0xD000000000000020;
        break;
      default:
        break;
    }

    v34 = sub_26A8514E8();
    v35 = sub_26A850018();
    sub_26A8515A8();
    v42 = 0;
    v43 = v17;
    v44 = KeyPath;
    LOBYTE(v45) = 1;
    v46 = v21;
    v47 = v20;
    v48 = v34;
    LODWORD(v49) = v35;
    v50 = v36;
    v51 = v37;
    v52 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B5640);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B5648);
    sub_26A70E160();
    sub_26A70E2D0();
    sub_26A84FDF8();
  }

  else
  {
    v39 = v7;
    v40 = v5;
    v41 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803ABEA8);
    v22 = swift_allocObject();
    *(v22 + 16) = xmmword_26A8570F0;
    v23 = sub_26A850208();
    *(v22 + 32) = v23;
    v24 = sub_26A850228();
    *(v22 + 33) = v24;
    v25 = sub_26A850218();
    sub_26A850218();
    if (sub_26A850218() != v23)
    {
      v25 = sub_26A850218();
    }

    sub_26A850218();
    if (sub_26A850218() != v24)
    {
      v25 = sub_26A850218();
    }

    *v16 = v25;
    v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B5630);
    sub_26A709814(a1, &v16[*(v26 + 44)]);
    sub_26A4DBD68(v16, v13, &qword_2803B5628);
    sub_26A4D7DCC();
    v27 = sub_26A851248();
    sub_26A4D6FD8();
    sub_26A84F9D8();
    v28 = v40;
    (*(v40 + 16))(v39, v10, v4);
    sub_26A70E11C();
    v29 = sub_26A84F058();
    (*(v28 + 8))(v10, v4);
    v30 = sub_26A8514E8();
    v31 = sub_26A850018();
    sub_26A8515A8();
    v53 = 1;
    v43 = v27;
    v44 = v29;
    v45 = 0xD000000000000013;
    v46 = 0x800000026A88AD20;
    v47 = v30;
    LODWORD(v48) = v31;
    v49 = v32;
    v50 = v33;
    LOBYTE(v51) = 1;
    HIBYTE(v52) = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B5640);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B5648);
    sub_26A70E160();
    sub_26A70E2D0();
    sub_26A84FDF8();
    a2 = v41;
  }

  return memcpy(a2, __src, 0x4AuLL);
}

uint64_t sub_26A708DCC(__int16 *a1, const void *a2)
{
  v2 = *a1;
  v3 = *(a1 + 1);
  memcpy(__dst, a2, sizeof(__dst));
  *v5 = v2;
  v6 = v3;
  return sub_26A708E24(v5) & 1;
}

uint64_t sub_26A708E24(unsigned __int8 *a1)
{
  v3 = sub_26A84F988();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  LODWORD(v5) = *a1;
  v7 = *(v1 + 48);
  v8 = *(v1 + 56);
  if (v5 != 74)
  {
    v11 = *(v1 + 360);
    if (*(v1 + 56))
    {
    }

    else
    {

      sub_26A4C24D0(v7, 0);
      sub_26A851EA8();
      v13 = sub_26A8501F8();
      sub_26A84EA78();

      sub_26A84F978();
      swift_getAtKeyPath();
      sub_26A49035C(v7, 0);
      (*(v4 + 8))(v6, v3);
      v7 = v17;
    }

    v11(v7);
    goto LABEL_14;
  }

  v9 = *(v1 + 344);
  v10 = *(v1 + 896);
  if (*(v1 + 904) == 1)
  {
    if (v10)
    {
      return 1;
    }

    goto LABEL_8;
  }

  sub_26A851EA8();
  v12 = sub_26A8501F8();
  sub_26A84EA78();

  sub_26A84F978();
  swift_getAtKeyPath();
  sub_26A49035C(v10, 0);
  (*(v4 + 8))(v6, v3);
  if ((v17 & 1) == 0)
  {
LABEL_8:
    if (v8)
    {
    }

    else
    {
      sub_26A4C24D0(v7, 0);

      sub_26A851EA8();
      v14 = sub_26A8501F8();
      sub_26A84EA78();

      sub_26A84F978();
      swift_getAtKeyPath();
      sub_26A49035C(v7, 0);
      (*(v4 + 8))(v6, v3);
      v7 = v17;
    }

    v9(v7);
LABEL_14:
  }

  return 1;
}

double sub_26A709144()
{
  v1 = sub_26A84F988();
  OUTLINED_FUNCTION_15();
  v3 = v2;
  MEMORY[0x28223BE20](v4);
  v6 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v0 + 16);
  v8 = *(v0 + 24);
  v9 = *(v0 + 48);
  v10 = *(v0 + 56);
  v11 = *(v0 + 344);
  v12 = *(v0 + 832);
  v13 = *(v0 + 896);
  v14 = *(v0 + 904);
  if (*(v0 + 25) == 1)
  {
    v33 = *(v0 + 16);
    v34 = v8 & 1;
  }

  else
  {
    v30 = *(v0 + 896);
    HIDWORD(v29) = v14;

    sub_26A851EA8();
    v15 = sub_26A8501F8();
    v31 = v6;
    v16 = v15;
    sub_26A84EA78();

    v6 = v31;
    sub_26A84F978();
    swift_getAtKeyPath();
    sub_26A4F5724(v7, v8, 0);
    v17 = OUTLINED_FUNCTION_6_53();
    v18(v17);
    v14 = HIDWORD(v29);
    v13 = v30;
    LOBYTE(v8) = v34;
    v7 = v33;
  }

  v19 = 0.0;
  if ((v8 & 1) != 0 && v7)
  {
    if (v14)
    {
      if (v13)
      {
        return v19;
      }
    }

    else
    {
      v20 = v13;

      sub_26A851EA8();
      v21 = sub_26A8501F8();
      sub_26A84EA78();

      sub_26A84F978();
      swift_getAtKeyPath();
      sub_26A49035C(v20, 0);
      v22 = OUTLINED_FUNCTION_6_53();
      v23(v22);
      if (v32)
      {
        return v19;
      }
    }

    if (!v10)
    {
      sub_26A4C24D0(v9, 0);
      sub_26A851EA8();
      v24 = v9;
      v25 = sub_26A8501F8();
      sub_26A84EA78();

      sub_26A84F978();
      swift_getAtKeyPath();
      sub_26A49035C(v24, 0);
      (*(v3 + 8))(v6, v1);
      v9 = v32;
    }

    v11(v9);
    v27 = v26;

    if (v27 - v12 > 0.0)
    {
      return v27 - v12;
    }

    else
    {
      return 0.0;
    }
  }

  return v19;
}

uint64_t sub_26A70947C()
{
  sub_26A851498();
  sub_26A84F1C8();

  sub_26A851498();
  sub_26A851488();

  sub_26A84F1C8();
}

uint64_t sub_26A70955C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B5608);
  MEMORY[0x26D6634C0](&v4, v0);
  switch(LOBYTE(v4))
  {
    case 1:
    case 2:
    case 3:
      v2 = sub_26A852598();

      v1 = 0.0;
      if (v2)
      {
        v1 = 1.0;
      }

      break;
    default:

      v1 = 1.0;
      break;
  }

  v4 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B50B8);
  return sub_26A851068();
}

uint64_t sub_26A7096BC()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B5608);
  MEMORY[0x26D6634C0](&v4, v0);
  switch(v4)
  {
    case 1:
    case 2:
    case 3:
      v2 = sub_26A852598();

      v1 = v2 ^ 1;
      break;
    default:

      v1 = 0;
      break;
  }

  LOBYTE(v4) = v1 & 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AC190);
  return sub_26A851068();
}

uint64_t sub_26A709814@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v56 = a2;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B5690);
  MEMORY[0x28223BE20](v53);
  v49 = (v43 - v3);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B5698);
  v54 = *(v4 - 8);
  v55 = v4;
  MEMORY[0x28223BE20](v4);
  v52 = v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v51 = v43 - v7;
  v8 = sub_26A850118();
  v9 = *(v8 - 8);
  v57 = v8;
  v58 = v9;
  MEMORY[0x28223BE20](v8);
  v11 = v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B56A0);
  MEMORY[0x28223BE20](v47);
  v13 = v43 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B56A8);
  v15 = v14 - 8;
  MEMORY[0x28223BE20](v14);
  v50 = v43 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = v43 - v18;
  v20 = *(a1 + 256);
  v48 = *(a1 + 264);
  *v13 = sub_26A84FA78();
  *(v13 + 1) = v20;
  v13[16] = 0;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B56B0);
  sub_26A70A7C0(a1, sub_26A709EB0, 1, sub_26A70A338, 0, &v13[*(v21 + 44)]);
  v63 = *(a1 + 936);
  v64 = *(a1 + 952);
  v61 = *(a1 + 936);
  v62 = *(a1 + 952);
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B56B8);
  sub_26A84ED78();
  v61 = v59;
  v62 = v60;
  LOBYTE(v59) = 0;
  sub_26A850108();
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B56C0);
  v45 = v22;
  v23 = sub_26A4D7DCC();
  v44 = sub_26A70E440();
  MEMORY[0x26D662C70](&v61, &v59, v11, v47, v22, v23, v44);
  v24 = *(v58 + 8);
  v58 += 8;
  v47 = v24;
  v24(v11, v57);

  sub_26A4D6FD8();
  KeyPath = swift_getKeyPath();
  v26 = &v19[*(v15 + 44)];
  v27 = v19;
  v43[1] = v19;
  *v26 = KeyPath;
  v26[8] = 1;
  v28 = sub_26A84FBF8();
  v29 = v48;
  v30 = v49;
  *v49 = v28;
  v30[1] = v29;
  *(v30 + 16) = 0;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B56D8);
  sub_26A70A7C0(a1, sub_26A70A338, 0, sub_26A709EB0, 1, v30 + *(v31 + 44));
  v61 = v63;
  v62 = v64;
  sub_26A84ED78();
  v61 = v59;
  v62 = v60;
  LOBYTE(v59) = 0;
  sub_26A850108();
  v32 = sub_26A4D7DCC();
  v33 = v51;
  MEMORY[0x26D662C70](&v61, &v59, v11, v53, v45, v32, v44);
  v47(v11, v57);

  sub_26A4D6FD8();
  v34 = v50;
  sub_26A4DBD68(v27, v50, &qword_2803B56A8);
  v36 = v54;
  v35 = v55;
  v37 = *(v54 + 16);
  v38 = v52;
  v37(v52, v33, v55);
  v39 = v56;
  sub_26A4DBD68(v34, v56, &qword_2803B56A8);
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B56E8);
  v37((v39 + *(v40 + 48)), v38, v35);
  v41 = *(v36 + 8);
  v41(v33, v35);
  sub_26A4D6FD8();
  v41(v38, v35);
  return sub_26A4D6FD8();
}

uint64_t sub_26A709EB0@<X0>(uint64_t a1@<X8>)
{
  v45 = a1;
  v2 = sub_26A84F988();
  v38 = *(v2 - 8);
  v39 = v2;
  MEMORY[0x28223BE20](v2);
  v37 = &v35[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B55F8);
  MEMORY[0x28223BE20](v4 - 8);
  v41 = &v35[-v5];
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B5600);
  MEMORY[0x28223BE20](v43);
  v44 = &v35[-v6];
  v7 = *v1;
  v54 = *(v1 + 8);
  v8 = *(v1 + 968);
  v9 = *(v1 + 976);
  v10 = *(v1 + 984);
  v11 = *(v1 + 992);
  v12 = *(v1 + 1000);
  v13 = *(v1 + 1024);
  v14 = *(v1 + 1032);
  v53 = *(v1 + 1040);
  v40 = v7;
  v47 = v7;
  v36 = v54;
  LOBYTE(v48[0]) = v54;
  memcpy(v48 + 1, (v1 + 9), 0x3BFuLL);
  v48[120] = v8;
  v42 = v9;
  v48[121] = v9;
  v48[122] = v10;
  v48[123] = v11;
  v49 = v12;
  v15 = v41;
  *v50 = *(v1 + 1001);
  *&v50[15] = *(v1 + 1016);
  v51 = v13;
  v52 = v14;
  sub_26A70B4C8(v8, 2, v41);
  v47 = v10;
  v48[0] = v11;
  LOBYTE(v48[1]) = v12;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B5608);
  MEMORY[0x26D6634C0](&v46, v16);
  switch(LOBYTE(v46))
  {
    case 3:

      if (v36)
      {
        goto LABEL_4;
      }

      goto LABEL_6;
    default:
      v17 = sub_26A852598();

      if ((v17 & 1) == 0)
      {
        goto LABEL_8;
      }

      if (v54)
      {
LABEL_4:
        v18 = v40;
      }

      else
      {
LABEL_6:
        v19 = v40;

        sub_26A851EA8();
        v20 = sub_26A8501F8();
        sub_26A84EA78();

        v21 = v37;
        sub_26A84F978();
        swift_getAtKeyPath();
        sub_26A49035C(v19, 0);
        (*(v38 + 8))(v21, v39);
        v18 = v47;
      }

      v22 = 1.0;
      if (sub_26A61B05C(v18, &unk_287B13248))
      {
LABEL_8:
        v47 = v13;
        v48[0] = v14;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B50B8);
        sub_26A851058();
        v22 = v46;
      }

      v23 = v15;
      v24 = v44;
      sub_26A4DBDB4(v23, v44, &qword_2803B55F8);
      *&v24[*(v43 + 36)] = v22;
      v25 = sub_26A8514E8();
      v26 = sub_26A850018();
      sub_26A8515A8();
      v28 = v27;
      v30 = v29;
      v31 = v24;
      v32 = v45;
      sub_26A4DBDB4(v31, v45, &qword_2803B5600);
      result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B55E8);
      v34 = v32 + *(result + 36);
      *v34 = 0xD000000000000020;
      *(v34 + 8) = 0x800000026A88AD60;
      *(v34 + 16) = v25;
      *(v34 + 24) = v26;
      *(v34 + 32) = v28;
      *(v34 + 40) = v30;
      *(v34 + 48) = 1;
      return result;
  }
}

uint64_t sub_26A70A338@<X0>(uint64_t a1@<X8>)
{
  v42 = a1;
  v2 = sub_26A84F988();
  v36 = *(v2 - 8);
  v37 = v2;
  MEMORY[0x28223BE20](v2);
  v35 = &v33[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B55F8);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v33[-v5];
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B5600);
  MEMORY[0x28223BE20](v40);
  v41 = &v33[-v7];
  v8 = *v1;
  v51 = *(v1 + 8);
  v9 = *(v1 + 976);
  v10 = *(v1 + 984);
  v11 = *(v1 + 992);
  v12 = *(v1 + 1000);
  v13 = *(v1 + 1024);
  v14 = *(v1 + 1032);
  v50 = *(v1 + 1040);
  v38 = v8;
  v44 = v8;
  v34 = v51;
  LOBYTE(v45[0]) = v51;
  memcpy(v45 + 1, (v1 + 9), 0x3C7uLL);
  v39 = v9;
  v45[121] = v9;
  v45[122] = v10;
  v45[123] = v11;
  v46 = v12;
  *v47 = *(v1 + 1001);
  *&v47[15] = *(v1 + 1016);
  v48 = v13;
  v49 = v14;
  sub_26A70B4C8(v45[119], 1, v6);
  v44 = v10;
  v45[0] = v11;
  LOBYTE(v45[1]) = v12;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B5608);
  MEMORY[0x26D6634C0](&v43, v15);
  switch(LOBYTE(v43))
  {
    case 2:

      if (v34)
      {
        goto LABEL_6;
      }

      goto LABEL_3;
    default:
      v20 = sub_26A852598();

      if ((v20 & 1) == 0)
      {
        goto LABEL_8;
      }

      if (v51)
      {
LABEL_6:
        v19 = v38;
      }

      else
      {
LABEL_3:
        v16 = v38;

        sub_26A851EA8();
        v17 = sub_26A8501F8();
        sub_26A84EA78();

        v18 = v35;
        sub_26A84F978();
        swift_getAtKeyPath();
        sub_26A49035C(v16, 0);
        (*(v36 + 8))(v18, v37);
        v19 = v44;
      }

      v21 = 1.0;
      if (sub_26A61B05C(v19, &unk_287B13248))
      {
LABEL_8:
        v44 = v13;
        v45[0] = v14;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B50B8);
        sub_26A851058();
        v21 = v43;
      }

      v22 = v41;
      sub_26A4DBDB4(v6, v41, &qword_2803B55F8);
      *&v22[*(v40 + 36)] = v21;
      v23 = sub_26A8514E8();
      v24 = sub_26A850018();
      sub_26A8515A8();
      v26 = v25;
      v28 = v27;
      v29 = v22;
      v30 = v42;
      sub_26A4DBDB4(v29, v42, &qword_2803B5600);
      result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B55E8);
      v32 = v30 + *(result + 36);
      *v32 = 0xD00000000000001ELL;
      *(v32 + 8) = 0x800000026A88AD40;
      *(v32 + 16) = v23;
      *(v32 + 24) = v24;
      *(v32 + 32) = v26;
      *(v32 + 40) = v28;
      *(v32 + 48) = 1;
      return result;
  }
}

uint64_t sub_26A70A7C0@<X0>(uint64_t a1@<X0>, void (*a2)(void *)@<X1>, char a3@<W2>, void (*a4)(void *)@<X3>, int a5@<W4>, char *a6@<X8>)
{
  v42 = a5;
  v40 = a4;
  v43 = a6;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B55E8);
  OUTLINED_FUNCTION_46();
  MEMORY[0x28223BE20](v9);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B56F0);
  OUTLINED_FUNCTION_15();
  v12 = v11;
  MEMORY[0x28223BE20](v13);
  v41 = v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v39 = v32 - v16;
  MEMORY[0x28223BE20](v17);
  v38 = v32 - v18;
  MEMORY[0x28223BE20](v19);
  v36 = v32 - v20;
  v21 = memcpy(v50, a1, sizeof(v50));
  a2(v21);
  v33 = a1;
  v35 = (a1 + 936);
  OUTLINED_FUNCTION_4_65((a1 + 936));
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B56B8);
  sub_26A84ED78();
  v47 = v44;
  v48 = v45;
  v49 = v46;
  LOBYTE(v44) = a3;
  v32[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B56C0);
  v32[0] = sub_26A70E4C4();
  sub_26A70E440();
  sub_26A850C08();

  sub_26A4D6FD8();
  v22 = memcpy(v50, v33, sizeof(v50));
  v40(v22);
  OUTLINED_FUNCTION_4_65(v35);
  sub_26A84ED78();
  v47 = v44;
  v48 = v45;
  v49 = v46;
  LOBYTE(v44) = v42;
  v23 = v38;
  sub_26A850C08();

  sub_26A4D6FD8();
  v24 = *(v12 + 16);
  v25 = v39;
  v26 = v36;
  v24(v39, v36, v10);
  v27 = v41;
  v24(v41, v23, v10);
  v28 = v43;
  v24(v43, v25, v10);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_2803B5718);
  v24(&v28[*(v29 + 48)], v27, v10);
  v30 = *(v12 + 8);
  v30(v23, v10);
  v30(v26, v10);
  v30(v27, v10);
  return (v30)(v25, v10);
}

uint64_t sub_26A70ABC0@<X0>(const void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B55E8);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v19[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  MEMORY[0x28223BE20](v7);
  v9 = &v19[-v8 - 8];
  MEMORY[0x28223BE20](v10);
  v12 = &v19[-v11 - 8];
  MEMORY[0x28223BE20](v13);
  v15 = &v19[-v14 - 8];
  memcpy(v19, a1, sizeof(v19));
  sub_26A70A338(v15);
  memcpy(v19, a1, sizeof(v19));
  sub_26A709EB0(v12);
  sub_26A4DBD68(v15, v9, &qword_2803B55E8);
  sub_26A4DBD68(v12, v6, &qword_2803B55E8);
  sub_26A4DBD68(v9, a2, &qword_2803B55E8);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B55F0);
  sub_26A4DBD68(v6, a2 + *(v16 + 48), &qword_2803B55E8);
  sub_26A4D6FD8();
  sub_26A4D6FD8();
  sub_26A4D6FD8();
  return sub_26A4D6FD8();
}

double sub_26A70ADB8(uint64_t a1, char a2)
{
  v4 = sub_26A84F988();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    return *&a1;
  }

  sub_26A851EA8();
  v9 = sub_26A8501F8();
  sub_26A84EA78();

  sub_26A84F978();
  swift_getAtKeyPath();
  sub_26A49035C(a1, 0);
  (*(v5 + 8))(v7, v4);
  return *&v10[1];
}

uint64_t sub_26A70AF00@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X5>, uint64_t a4@<X8>)
{
  v15 = a2;
  v16 = a1;
  v17 = a4;
  type metadata accessor for BinaryButtonView.AmbientConversationSpaceLayout.ButtonStackLayout();
  swift_getWitnessTable();
  v5 = sub_26A84F1A8();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v14[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v9);
  v11 = &v14[-v10];
  v20 = sub_26A70ADB8(v16, v15 & 1);
  sub_26A84F1B8();
  WitnessTable = swift_getWitnessTable();
  v19 = a3;
  swift_getWitnessTable();
  sub_26A80757C(v8);
  v12 = *(v6 + 8);
  v12(v8, v5);
  sub_26A80757C(v11);
  return (v12)(v11, v5);
}

uint64_t sub_26A70B110@<X0>(uint64_t a1@<X8>, double a2@<D0>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AD828);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v12 - v8;
  sub_26A83D698();
  sub_26A83D698();
  *a1 = sub_26A84FBF8();
  *(a1 + 8) = 20.0 / a2;
  *(a1 + 16) = 0;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B57B0);
  sub_26A70B244(v9, v6, a1 + *(v10 + 44));
  sub_26A4D6FD8();
  return sub_26A4D6FD8();
}

uint64_t sub_26A70B244@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AD828);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v14 - v10;
  sub_26A4DBD68(a1, &v14 - v10, &qword_2803AD828);
  sub_26A4DBD68(a2, v8, &qword_2803AD828);
  sub_26A4DBD68(v11, a3, &qword_2803AD828);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B57B8);
  sub_26A4DBD68(v8, a3 + *(v12 + 48), &qword_2803AD828);
  sub_26A4D6FD8();
  return sub_26A4D6FD8();
}

uint64_t sub_26A70B38C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x282130608](a1, a2, a3, a4, a5, WitnessTable);
}

uint64_t sub_26A70B4C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v31 = a1;
  v6 = type metadata accessor for RFButtonStyle();
  MEMORY[0x28223BE20](v6);
  v35 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B5610);
  v34 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v33 = &v29 - v9;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B5618);
  MEMORY[0x28223BE20](v32);
  v11 = &v29 - v10;
  v12 = sub_26A84F988();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *v3;
  if ((*(v3 + 8) & 1) == 0)
  {

    sub_26A851EA8();
    v17 = sub_26A8501F8();
    v30 = v8;
    v18 = a3;
    v19 = a2;
    v20 = v17;
    sub_26A84EA78();

    a2 = v19;
    a3 = v18;
    v8 = v30;
    sub_26A84F978();
    swift_getAtKeyPath();
    sub_26A49035C(v16, 0);
    (*(v13 + 8))(v15, v12);
    v16 = *&v37[0];
  }

  v21 = sub_26A61B05C(v16, &unk_287B13068);
  v36 = v31;
  memset(v37, 0, sizeof(v37));
  v38 = v21;
  if (v21)
  {
    v22 = 1;
  }

  else
  {
    v22 = 2;
  }

  static PrimitiveButtonStyle<>.rfButton(margin:hideIcon:)(v37, v22, v35);
  sub_26A70E11C();
  v23 = v33;
  sub_26A850978();
  sub_26A70DE5C();
  KeyPath = swift_getKeyPath();
  (*(v34 + 32))(v11, v23, v8);
  v25 = &v11[*(v32 + 36)];
  *v25 = KeyPath;
  v25[8] = 1;
  v26 = swift_getKeyPath();
  sub_26A4DBDB4(v11, a3, &qword_2803B5618);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B55F8);
  v28 = (a3 + *(result + 36));
  *v28 = v26;
  v28[1] = a2;
  return result;
}

uint64_t BinaryButton.view.getter()
{
  v1 = type metadata accessor for SnippetKitButton();
  OUTLINED_FUNCTION_46();
  MEMORY[0x28223BE20](v2);
  v4 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v27 - v6;
  v28 = v0;
  sub_26A84B078();
  v8 = &v7[*(v1 + 20)];
  *v8 = swift_getKeyPath();
  *(v8 + 1) = 0;
  v8[16] = 0;
  *(v8 + 3) = swift_getKeyPath();
  v8[32] = 0;
  v9 = type metadata accessor for ActionHandler(0);
  v10 = v9[6];
  *&v8[v10] = swift_getKeyPath();
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803A93D0);
  swift_storeEnumTagMultiPayload();
  v11 = &v8[v9[7]];
  *v11 = swift_getKeyPath();
  *(v11 + 1) = 0;
  v11[16] = 0;
  v12 = &v8[v9[8]];
  *v12 = swift_getKeyPath();
  v12[8] = 0;
  v13 = &v8[v9[9]];
  *v13 = swift_getKeyPath();
  v13[8] = 0;
  v14 = &v8[v9[10]];
  *v14 = swift_getKeyPath();
  v14[9] = 0;
  swift_unknownObjectWeakInit();
  v15 = v9[11];
  type metadata accessor for StandardActionHandler(0);
  OUTLINED_FUNCTION_2_75(&v8[v15]);
  sub_26A4D6FD8();
  OUTLINED_FUNCTION_2_75(&v8[v15]);
  sub_26A70BE04(v7, v4);
  sub_26A70E11C();
  v16 = sub_26A851248();
  sub_26A70DE5C();
  v29[3] = MEMORY[0x277CE11C8];
  v29[4] = &protocol witness table for AnyView;
  v29[0] = v16;
  sub_26A84B088();
  v17 = &v7[*(v1 + 20)];
  *v17 = swift_getKeyPath();
  *(v17 + 1) = 0;
  v17[16] = 0;
  *(v17 + 3) = swift_getKeyPath();
  v17[32] = 0;
  v18 = v9[6];
  *&v17[v18] = swift_getKeyPath();
  swift_storeEnumTagMultiPayload();
  v19 = &v17[v9[7]];
  *v19 = swift_getKeyPath();
  *(v19 + 1) = 0;
  v19[16] = 0;
  v20 = &v17[v9[8]];
  *v20 = swift_getKeyPath();
  v20[8] = 0;
  v21 = &v17[v9[9]];
  *v21 = swift_getKeyPath();
  v21[8] = 0;
  v22 = &v17[v9[10]];
  *v22 = swift_getKeyPath();
  v22[9] = 0;
  swift_unknownObjectWeakInit();
  v23 = v9[11];
  OUTLINED_FUNCTION_2_75(&v17[v23]);
  sub_26A4D6FD8();
  OUTLINED_FUNCTION_2_75(&v17[v23]);
  sub_26A70BE04(v7, v4);
  v24 = sub_26A851248();
  sub_26A70DE5C();
  v38[4] = &protocol witness table for AnyView;
  v38[3] = MEMORY[0x277CE11C8];
  v38[0] = v24;
  sub_26A50429C(v29, v40);
  sub_26A50429C(v38, v37);
  v36 = 0;
  memset(v35, 0, sizeof(v35));
  v39[0] = 0;
  sub_26A851288();
  v30[0] = v32;
  v30[1] = v33;
  v31 = v34;
  BinaryButtonView.init(primaryButton:secondaryButton:statusIndicator:statusState:duration:)(v40, v37, v35, v30, v39, 0.4);
  __swift_destroy_boxed_opaque_existential_1(v38);
  __swift_destroy_boxed_opaque_existential_1(v29);
  memcpy(v40, v39, 0x420uLL);
  sub_26A84B098();
  sub_26A4DC580();

  sub_26A70BE68(v40);
  sub_26A84B0A8();

  sub_26A4DBD68(v39, v29, &qword_2803B5388);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B5388);
  sub_26A70BE98();
  v25 = sub_26A851248();
  sub_26A4D6FD8();
  return v25;
}

uint64_t type metadata accessor for SnippetKitButton()
{
  result = qword_2803B5520;
  if (!qword_2803B5520)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_26A70BE04(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SnippetKitButton();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_26A70BE98()
{
  result = qword_2803B5390;
  if (!qword_2803B5390)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B5388);
    sub_26A70BF50();
    sub_26A4D7DCC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B5390);
  }

  return result;
}

unint64_t sub_26A70BF50()
{
  result = qword_2803B5398;
  if (!qword_2803B5398)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B53A0);
    sub_26A6993E0();
    sub_26A4D31BC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B5398);
  }

  return result;
}

unint64_t sub_26A70BFE0()
{
  result = qword_2803B53A8;
  if (!qword_2803B53A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B53A8);
  }

  return result;
}

unint64_t sub_26A70C094(uint64_t a1)
{
  result = sub_26A70E11C();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_26A70C0F4(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 1056))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 344);
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

uint64_t sub_26A70C134(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 1048) = 0;
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 1032) = 0u;
    *(result + 1016) = 0u;
    *(result + 1000) = 0u;
    *(result + 984) = 0u;
    *(result + 968) = 0u;
    *(result + 952) = 0u;
    *(result + 936) = 0u;
    *(result + 920) = 0u;
    *(result + 904) = 0u;
    *(result + 888) = 0u;
    *(result + 872) = 0u;
    *(result + 856) = 0u;
    *(result + 840) = 0u;
    *(result + 824) = 0u;
    *(result + 808) = 0u;
    *(result + 792) = 0u;
    *(result + 776) = 0u;
    *(result + 760) = 0u;
    *(result + 744) = 0u;
    *(result + 728) = 0u;
    *(result + 712) = 0u;
    *(result + 696) = 0u;
    *(result + 680) = 0u;
    *(result + 664) = 0u;
    *(result + 648) = 0u;
    *(result + 632) = 0u;
    *(result + 616) = 0u;
    *(result + 600) = 0u;
    *(result + 584) = 0u;
    *(result + 568) = 0u;
    *(result + 552) = 0u;
    *(result + 536) = 0u;
    *(result + 520) = 0u;
    *(result + 504) = 0u;
    *(result + 488) = 0u;
    *(result + 472) = 0u;
    *(result + 456) = 0u;
    *(result + 440) = 0u;
    *(result + 424) = 0u;
    *(result + 408) = 0u;
    *(result + 392) = 0u;
    *(result + 376) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 1056) = 1;
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
      *(result + 344) = (a2 - 1);
      return result;
    }

    *(result + 1056) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for BinaryButtonView.TransitionState(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_26A70C378()
{
  result = qword_2803B53C8;
  if (!qword_2803B53C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B5378);
    sub_26A70C404();
    sub_26A4DBA00();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B53C8);
  }

  return result;
}

unint64_t sub_26A70C404()
{
  result = qword_2803B53D0;
  if (!qword_2803B53D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B5370);
    sub_26A70C4BC();
    sub_26A4D7DCC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B53D0);
  }

  return result;
}

unint64_t sub_26A70C4BC()
{
  result = qword_2803B53D8;
  if (!qword_2803B53D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B53E0);
    sub_26A70C540();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B53D8);
  }

  return result;
}

unint64_t sub_26A70C540()
{
  result = qword_2803B53E8;
  if (!qword_2803B53E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B53F0);
    sub_26A70C624();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B54A0);
    sub_26A70CCBC();
    sub_26A70BFE0();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B53E8);
  }

  return result;
}

unint64_t sub_26A70C624()
{
  result = qword_2803B53F8;
  if (!qword_2803B53F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B5400);
    sub_26A70C6B0();
    sub_26A70CA68();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B53F8);
  }

  return result;
}

unint64_t sub_26A70C6B0()
{
  result = qword_2803B5408;
  if (!qword_2803B5408)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B5410);
    sub_26A70C73C();
    sub_26A4D38BC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B5408);
  }

  return result;
}

unint64_t sub_26A70C73C()
{
  result = qword_2803B5418;
  if (!qword_2803B5418)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B5420);
    sub_26A70C7C8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B5418);
  }

  return result;
}

unint64_t sub_26A70C7C8()
{
  result = qword_2803B5428;
  if (!qword_2803B5428)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B5430);
    sub_26A70C854();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B5428);
  }

  return result;
}

unint64_t sub_26A70C854()
{
  result = qword_2803B5438;
  if (!qword_2803B5438)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B5440);
    sub_26A70C8E0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B5438);
  }

  return result;
}

unint64_t sub_26A70C8E0()
{
  result = qword_2803B5448;
  if (!qword_2803B5448)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B5450);
    sub_26A70C96C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B5448);
  }

  return result;
}

unint64_t sub_26A70C96C()
{
  result = qword_2803B5458;
  if (!qword_2803B5458)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803ADD88);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B5460);
    sub_26A4D7DCC();
    swift_getOpaqueTypeConformance2();
    sub_26A4D6BF8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B5458);
  }

  return result;
}

unint64_t sub_26A70CA68()
{
  result = qword_2803B5470;
  if (!qword_2803B5470)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B5478);
    sub_26A70CAF4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B5470);
  }

  return result;
}

unint64_t sub_26A70CAF4()
{
  result = qword_2803B5480;
  if (!qword_2803B5480)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B5488);
    sub_26A70CBAC();
    sub_26A4D7DCC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B5480);
  }

  return result;
}

unint64_t sub_26A70CBAC()
{
  result = qword_2803B5490;
  if (!qword_2803B5490)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B5498);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B54A0);
    sub_26A70CCBC();
    sub_26A70BFE0();
    swift_getOpaqueTypeConformance2();
    sub_26A4D7DCC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B5490);
  }

  return result;
}

unint64_t sub_26A70CCBC()
{
  result = qword_2803B54A8;
  if (!qword_2803B54A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B54A0);
    sub_26A70CD48();
    sub_26A4D38BC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B54A8);
  }

  return result;
}

unint64_t sub_26A70CD48()
{
  result = qword_2803B54B0;
  if (!qword_2803B54B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B54B8);
    sub_26A70CDD4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B54B0);
  }

  return result;
}

unint64_t sub_26A70CDD4()
{
  result = qword_2803B54C0;
  if (!qword_2803B54C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B54C8);
    sub_26A70CE60();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B54C0);
  }

  return result;
}

unint64_t sub_26A70CE60()
{
  result = qword_2803B54D0;
  if (!qword_2803B54D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B54D8);
    sub_26A70CEEC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B54D0);
  }

  return result;
}

unint64_t sub_26A70CEEC()
{
  result = qword_2803B54E0;
  if (!qword_2803B54E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B54E8);
    sub_26A70CF78();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B54E0);
  }

  return result;
}

unint64_t sub_26A70CF78()
{
  result = qword_2803B54F0;
  if (!qword_2803B54F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B54F8);
    sub_26A70D004();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B54F0);
  }

  return result;
}

unint64_t sub_26A70D004()
{
  result = qword_2803B5500;
  if (!qword_2803B5500)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803ADD98);
    sub_26A70D090();
    sub_26A4D6BF8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B5500);
  }

  return result;
}

unint64_t sub_26A70D090()
{
  result = qword_2803B5508;
  if (!qword_2803B5508)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803ADD90);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B5510);
    sub_26A4D7DCC();
    swift_getOpaqueTypeConformance2();
    sub_26A4D7DCC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B5508);
  }

  return result;
}

uint64_t sub_26A70D1E0()
{
  result = sub_26A84E158();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for ActionHandler(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_26A70D264()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

_BYTE *storeEnumTagSinglePayload for BinaryButtonView.ButtonFocusable(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_26A70D3F4@<X0>(uint64_t a1@<X8>)
{
  v26 = a1;
  v2 = sub_26A84AD78();
  v24 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v4 = &v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v23 - v6;
  v8 = type metadata accessor for SnippetKitButton();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B1198);
  v11 = *(v25 - 8);
  MEMORY[0x28223BE20](v25);
  v13 = &v23 - v12;
  sub_26A70BE04(v1, &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v15 = swift_allocObject();
  sub_26A70DD58(&v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v15 + v14);
  v27 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B1148);
  sub_26A4D7DCC();
  v16 = v24;
  sub_26A8510D8();
  sub_26A84E0A8();
  (*(v16 + 32))(v4, v7, v2);
  v17 = (*(v16 + 88))(v4, v2);
  if (v17 != *MEMORY[0x277D62850])
  {
    if (v17 == *MEMORY[0x277D62858])
    {
      v18 = 1;
      goto LABEL_7;
    }

    if (v17 == *MEMORY[0x277D62848])
    {
      v18 = 2;
      goto LABEL_7;
    }

    (*(v16 + 8))(v4, v2);
  }

  v18 = 0;
LABEL_7:
  KeyPath = swift_getKeyPath();
  v20 = v26;
  (*(v11 + 32))(v26, v13, v25);
  v21 = v20 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B55B8) + 36);
  *v21 = KeyPath;
  *(v21 + 8) = v18;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B55C0);
  *(v20 + *(result + 36)) = v18;
  return result;
}

uint64_t sub_26A70D7AC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B3800);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v13[-v3];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B3910);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v13[-v6];
  v8 = a1 + *(type metadata accessor for SnippetKitButton() + 20);
  v9 = type metadata accessor for ActionHandler(0);
  sub_26A4DBD68(v8 + *(v9 + 44), v7, &qword_2803B3910);
  v10 = type metadata accessor for StandardActionHandler(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    return sub_26A4D6FD8();
  }

  sub_26A84E138();
  v12 = sub_26A84BAB8();
  __swift_storeEnumTagSinglePayload(v4, 0, 1, v12);
  v13[15] = 1;
  StandardActionHandler.perform(_:interactionType:)();
  sub_26A4D6FD8();
  return sub_26A70DE5C();
}

uint64_t sub_26A70D960()
{
  type metadata accessor for TextPropertyView();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B1168);
  sub_26A70E11C();
  sub_26A627020();
  return sub_26A850FC8();
}

uint64_t sub_26A70DA40@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_26A84B888();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v10 - v7;
  sub_26A84E108();
  (*(v3 + 16))(v5, v8, v2);
  TextPropertyView.init(_:)(v5, a1);
  return (*(v3 + 8))(v8, v2);
}

uint64_t sub_26A70DB5C@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_26A84BD28();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AAD50);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v12 - v7;
  sub_26A84E148();
  if (__swift_getEnumTagSinglePayload(v8, 1, v2) == 1)
  {
    sub_26A4D6FD8();
    v9 = 1;
  }

  else
  {
    (*(v3 + 16))(v5, v8, v2);
    VisualPropertyView.init(_:)(v5, a1);
    (*(v3 + 8))(v8, v2);
    v9 = 0;
  }

  v10 = type metadata accessor for VisualPropertyView();
  return __swift_storeEnumTagSinglePayload(a1, v9, 1, v10);
}

unint64_t sub_26A70DD04()
{
  result = qword_2803B55B0;
  if (!qword_2803B55B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B55B0);
  }

  return result;
}

uint64_t sub_26A70DD58(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SnippetKitButton();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_26A70DDBC()
{
  v1 = *(type metadata accessor for SnippetKitButton() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_26A70D7AC(v2);
}

uint64_t sub_26A70DE5C()
{
  OUTLINED_FUNCTION_196();
  v1(0);
  OUTLINED_FUNCTION_46();
  (*(v2 + 8))(v0);
  return v0;
}

uint64_t objectdestroy_83Tm()
{
  sub_26A49035C(*(v0 + 16), *(v0 + 24));
  sub_26A4F5724(*(v0 + 32), *(v0 + 40), *(v0 + 41));
  sub_26A49035C(*(v0 + 48), *(v0 + 56));
  sub_26A49035C(*(v0 + 64), *(v0 + 72));
  sub_26A49035C(*(v0 + 80), *(v0 + 88));
  sub_26A49035C(*(v0 + 96), *(v0 + 104));
  sub_26A49035C(*(v0 + 112), *(v0 + 120));
  sub_26A49035C(*(v0 + 128), *(v0 + 136));
  sub_26A49035C(*(v0 + 144), *(v0 + 152));
  sub_26A49035C(*(v0 + 160), *(v0 + 168));
  sub_26A49035C(*(v0 + 176), *(v0 + 184));
  sub_26A49035C(*(v0 + 192), *(v0 + 200));
  sub_26A49035C(*(v0 + 208), *(v0 + 216));
  sub_26A49035C(*(v0 + 224), *(v0 + 232));

  sub_26A49035C(*(v0 + 656), *(v0 + 664));
  sub_26A49035C(*(v0 + 672), *(v0 + 680));
  sub_26A49035C(*(v0 + 688), *(v0 + 696));
  sub_26A49035C(*(v0 + 704), *(v0 + 712));
  sub_26A49035C(*(v0 + 720), *(v0 + 728));
  sub_26A49035C(*(v0 + 736), *(v0 + 744));
  sub_26A49035C(*(v0 + 752), *(v0 + 760));
  sub_26A49035C(*(v0 + 768), *(v0 + 776));
  sub_26A49035C(*(v0 + 784), *(v0 + 792));
  sub_26A49035C(*(v0 + 800), *(v0 + 808));

  sub_26A49035C(*(v0 + 896), *(v0 + 904));
  sub_26A49035C(*(v0 + 912), *(v0 + 920));

  return swift_deallocObject();
}

unint64_t sub_26A70E11C()
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

unint64_t sub_26A70E160()
{
  result = qword_2803B5650;
  if (!qword_2803B5650)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B5640);
    sub_26A70E218();
    sub_26A4D7DCC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B5650);
  }

  return result;
}

unint64_t sub_26A70E218()
{
  result = qword_2803B5658;
  if (!qword_2803B5658)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B5660);
    sub_26A4EA164();
    sub_26A4D7DCC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B5658);
  }

  return result;
}

unint64_t sub_26A70E2D0()
{
  result = qword_2803B5678;
  if (!qword_2803B5678)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B5648);
    sub_26A70E388();
    sub_26A4D7DCC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B5678);
  }

  return result;
}

unint64_t sub_26A70E388()
{
  result = qword_2803B5680;
  if (!qword_2803B5680)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B5688);
    sub_26A4D7DCC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B5680);
  }

  return result;
}

unint64_t sub_26A70E440()
{
  result = qword_2803B56D0;
  if (!qword_2803B56D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B56C0);
    sub_26A70678C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B56D0);
  }

  return result;
}

unint64_t sub_26A70E4C4()
{
  result = qword_2803B56F8;
  if (!qword_2803B56F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B55E8);
    sub_26A70E57C();
    sub_26A4D7DCC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B56F8);
  }

  return result;
}

unint64_t sub_26A70E57C()
{
  result = qword_2803B5700;
  if (!qword_2803B5700)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B5600);
    sub_26A70E608();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B5700);
  }

  return result;
}

unint64_t sub_26A70E608()
{
  result = qword_2803B5708;
  if (!qword_2803B5708)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B55F8);
    sub_26A70E6C0();
    sub_26A4D7DCC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B5708);
  }

  return result;
}

unint64_t sub_26A70E6C0()
{
  result = qword_2803B5710;
  if (!qword_2803B5710)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B5618);
    type metadata accessor for RFButtonStyle();
    sub_26A70E11C();
    swift_getOpaqueTypeConformance2();
    sub_26A4D7DCC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B5710);
  }

  return result;
}

uint64_t sub_26A70E7EC()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

unint64_t sub_26A70E828()
{
  result = qword_2803B57A0;
  if (!qword_2803B57A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B55C0);
    sub_26A70E8E0();
    sub_26A4D7DCC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B57A0);
  }

  return result;
}

unint64_t sub_26A70E8E0()
{
  result = qword_2803B57A8;
  if (!qword_2803B57A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B55B8);
    sub_26A4D7DCC();
    sub_26A4D7DCC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B57A8);
  }

  return result;
}