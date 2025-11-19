uint64_t sub_217847F30(uint64_t *a1)
{
  v1 = *a1;
  if (OUTLINED_FUNCTION_43())
  {
    sub_21796693C();
  }

  else
  {
    sub_21796682C();
  }

  return sub_21796698C();
}

uint64_t sub_217847F88(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  if (OUTLINED_FUNCTION_43())
  {
    sub_21796693C();
    OUTLINED_FUNCTION_4();
    sub_21796698C();
    sub_21785BFD0();
  }

  else
  {
    sub_21796682C();
    OUTLINED_FUNCTION_4();
    sub_21796698C();
    sub_217863A38(&qword_27CB8A490, MEMORY[0x277CDD8B0]);
  }

  OUTLINED_FUNCTION_1();
  return swift_getWitnessTable();
}

uint64_t sub_21784803C(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v3 = a1[3];
  if (OUTLINED_FUNCTION_72())
  {
    OUTLINED_FUNCTION_60();
    sub_2179671CC();

    return sub_21796698C();
  }

  else
  {
    OUTLINED_FUNCTION_60();
    sub_217966A3C();
    OUTLINED_FUNCTION_27();
    swift_getWitnessTable();
    OUTLINED_FUNCTION_9();
    sub_2179670AC();
    OUTLINED_FUNCTION_9();
    sub_21796698C();
    sub_21796944C();
    OUTLINED_FUNCTION_26();
    swift_getWitnessTable();
    OUTLINED_FUNCTION_9();
    sub_217966A3C();
    swift_getWitnessTable();
    OUTLINED_FUNCTION_4();
    sub_2179670AC();
    return sub_21796698C();
  }
}

uint64_t sub_217848154(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v4 = a1[2];
  v3 = a1[3];
  if (OUTLINED_FUNCTION_72())
  {
    OUTLINED_FUNCTION_36();
    sub_2179671CC();
    OUTLINED_FUNCTION_12();
    sub_21796698C();
    swift_getWitnessTable();
    OUTLINED_FUNCTION_1();
  }

  else
  {
    OUTLINED_FUNCTION_36();
    sub_217966A3C();
    OUTLINED_FUNCTION_27();
    swift_getWitnessTable();
    OUTLINED_FUNCTION_9();
    sub_2179670AC();
    OUTLINED_FUNCTION_12();
    sub_21796698C();
    OUTLINED_FUNCTION_33();
    sub_21796944C();
    OUTLINED_FUNCTION_26();
    swift_getWitnessTable();
    OUTLINED_FUNCTION_9();
    sub_217966A3C();
    swift_getWitnessTable();
    OUTLINED_FUNCTION_9();
    sub_2179670AC();
    OUTLINED_FUNCTION_12();
    sub_21796698C();
    swift_getWitnessTable();
    swift_getWitnessTable();
    swift_getWitnessTable();
  }

  return swift_getWitnessTable();
}

void sub_2178482F0(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  sub_217848324();
  *a2 = v4;
  *(a2 + 8) = v5 & 1;
}

uint64_t sub_21784837C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8A580, &unk_21796A780);
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = a1;
LABEL_10:

    return __swift_getEnumTagSinglePayload(v8, a2, v7);
  }

  if (a2 != 2147483646)
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CB8A598, &unk_21796AD60);
    v8 = a1 + *(a3 + 52);
    goto LABEL_10;
  }

  v9 = *(a1 + *(a3 + 36) + 16);
  if (v9 >= 0xFFFFFFFF)
  {
    LODWORD(v9) = -1;
  }

  v10 = v9 - 1;
  if (v10 < 0)
  {
    v10 = -1;
  }

  return (v10 + 1);
}

uint64_t sub_217848474(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8A580, &unk_21796A780);
  if (*(*(result - 8) + 84) == a3)
  {
    v9 = result;
    v10 = a1;
  }

  else
  {
    if (a3 == 2147483646)
    {
      *(a1 + *(a4 + 36) + 16) = a2;
      return result;
    }

    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CB8A598, &unk_21796AD60);
    v10 = a1 + *(a4 + 52);
  }

  return __swift_storeEnumTagSinglePayload(v10, a2, a2, v9);
}

uint64_t sub_217848564()
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = _s15AlbumDetailViewVMa();
  OUTLINED_FUNCTION_13(v4);
  v6 = *(v5 + 80);
  v47 = *(v7 + 64);
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8A6E8, &qword_21796A8E8);
  OUTLINED_FUNCTION_2(v49);
  v9 = v8;
  v10 = *(v8 + 80);
  v48 = *(v11 + 64);
  v12 = v1 + ((v6 + 32) & ~v6);
  v13 = sub_2179689AC();
  OUTLINED_FUNCTION_3(v13);
  (*(v14 + 8))(v12);
  v15 = *(v12 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8A580, &unk_21796A780) + 28));

  v16 = v12 + v0[9];
  v17 = *(v16 + 16);

  sub_2178643E0(*(v16 + 24));
  v18 = *(v12 + v0[11]);

  v19 = v12 + v0[12];
  if (*(v19 + 40))
  {
    if (*(v19 + 24))
    {
      __swift_destroy_boxed_opaque_existential_1(v19);
    }
  }

  else
  {
    v20 = *v19;
  }

  v21 = v12 + v0[13];
  v22 = _s5AlertVMa(0);
  if (!OUTLINED_FUNCTION_56(v21))
  {
    v23 = *(v21 + 8);

    v24 = *(v21 + 24);

    v25 = v21 + *(v22 + 24);
    v26 = _s5AlertV7ControlVMa(0);
    if (!__swift_getEnumTagSinglePayload(v25, 1, v26))
    {
      v27 = *(v25 + 8);

      v46 = *(v26 + 20);
      v45 = sub_2179665FC();
      if (!__swift_getEnumTagSinglePayload(v25 + v46, 1, v45))
      {
        OUTLINED_FUNCTION_10(v45);
        (*(v28 + 8))(v25 + v29);
      }
    }

    v30 = v21 + *(v22 + 28);
    if (!__swift_getEnumTagSinglePayload(v30, 1, v26))
    {
      v31 = *(v30 + 8);

      v32 = *(v26 + 20);
      v33 = sub_2179665FC();
      if (!__swift_getEnumTagSinglePayload(v30 + v32, 1, v33))
      {
        OUTLINED_FUNCTION_10(v33);
        (*(v34 + 8))(v30 + v32, v33);
      }
    }
  }

  v35 = *(v21 + *(__swift_instantiateConcreteTypeFromMangledNameV2(qword_27CB8A598, &unk_21796AD60) + 28));

  v36 = v12 + v0[14];
  v37 = *(v36 + 8);

  v38 = *(v36 + 16);

  v39 = *(v12 + v0[15] + 8);

  sub_2178643E0(*(v12 + v0[16]));
  v40 = v12 + v0[17];
  v41 = *(v40 + 16);

  sub_2178643E0(*(v40 + 24));
  v42 = v12 + v0[18];
  v43 = *(v42 + 16);

  sub_2178643E0(*(v42 + 24));
  (*(v9 + 8))(v1 + ((((v6 + 32) & ~v6) + v47 + v10) & ~v10), v49);

  return swift_deallocObject();
}

uint64_t sub_2178488F0(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  sub_2179689AC();
  OUTLINED_FUNCTION_0();
  sub_217863A38(v3, v4);
  OUTLINED_FUNCTION_61();
  _s19ContainerHeaderCellVMa();
  OUTLINED_FUNCTION_29();
  swift_getOpaqueTypeMetadata2();
  OUTLINED_FUNCTION_33();
  sub_21796732C();
  OUTLINED_FUNCTION_12();
  sub_21796698C();
  sub_21796698C();
  OUTLINED_FUNCTION_8();
  sub_21796698C();
  OUTLINED_FUNCTION_8();
  sub_21796698C();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8A6D8, &unk_21796AF80);
  OUTLINED_FUNCTION_12();
  sub_21796698C();
  OUTLINED_FUNCTION_33();
  _s20FailureAlertModifierVMa();
  OUTLINED_FUNCTION_4();
  sub_21796698C();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8A6E0, &qword_21796A8E0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8A6E8, &qword_21796A8E8);
  OUTLINED_FUNCTION_36();
  _s14AlbumTrackCellVMa();
  OUTLINED_FUNCTION_25();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_61();
  swift_getOpaqueTypeMetadata2();
  OUTLINED_FUNCTION_8();
  sub_21796698C();
  OUTLINED_FUNCTION_8();
  sub_21796698C();
  OUTLINED_FUNCTION_8();
  sub_21796698C();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8A6F0, &qword_21796A8F0);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_75();
  OUTLINED_FUNCTION_8();
  sub_217967E9C();
  OUTLINED_FUNCTION_24();
  sub_217864B2C(v5, &qword_27CB8A6E8, &qword_21796A8E8);
  sub_21786438C();
  OUTLINED_FUNCTION_61();
  sub_217967D9C();
  OUTLINED_FUNCTION_8();
  sub_21796698C();
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_75();
  OUTLINED_FUNCTION_8();
  sub_217967E9C();
  OUTLINED_FUNCTION_8();
  sub_21796944C();
  OUTLINED_FUNCTION_61();
  _s14ContainerShelfVMa();
  OUTLINED_FUNCTION_8();
  sub_21796944C();
  swift_getTupleTypeMetadata3();
  OUTLINED_FUNCTION_8();
  sub_217967E9C();
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_4();
  sub_21796665C();
  OUTLINED_FUNCTION_41();
  sub_21796698C();
  OUTLINED_FUNCTION_33();
  sub_2179669FC();
  OUTLINED_FUNCTION_15();
  swift_getWitnessTable();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_22();
  sub_217863A38(v6, v7);
  OUTLINED_FUNCTION_21();
  swift_getOpaqueTypeMetadata2();
  sub_217966F9C();
  swift_getOpaqueTypeConformance2();
  OUTLINED_FUNCTION_20();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_9();
  sub_21796666C();
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_4();
  sub_21796686C();
  OUTLINED_FUNCTION_12();
  sub_21796698C();
  _s18NavigationBarStyleVMa();
  OUTLINED_FUNCTION_41();
  sub_21796698C();
  OUTLINED_FUNCTION_19();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_18();
  sub_217863A38(v8, v9);
  swift_getWitnessTable();
  OUTLINED_FUNCTION_17();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  OUTLINED_FUNCTION_33();
  _s15DoneToolbarItemVMa();
  OUTLINED_FUNCTION_16();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  sub_21796698C();
  swift_getOpaqueTypeConformance2();
  sub_217864644();
  return swift_getWitnessTable();
}

uint64_t sub_217848EB8()
{
  v1 = sub_217968E3C();
  OUTLINED_FUNCTION_3(v1);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = *(v2 + 64) + v3;
  (*(v2 + 8))(v0 + v3);

  return swift_deallocObject();
}

uint64_t sub_217848F64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CB8A598, &unk_21796AD60);
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = a1 + *(a3 + 56);

    return __swift_getEnumTagSinglePayload(v8, a2, v7);
  }

  else
  {
    v10 = *(a1 + *(a3 + 60) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_217849024(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CB8A598, &unk_21796AD60);
  if (*(*(result - 8) + 84) == a3)
  {
    v9 = result;
    v10 = a1 + *(a4 + 56);

    return __swift_storeEnumTagSinglePayload(v10, a2, a2, v9);
  }

  else
  {
    *(a1 + *(a4 + 60) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_217849100()
{
  OUTLINED_FUNCTION_86();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8AAF0, &qword_21796AFA8);
  OUTLINED_FUNCTION_3(v1);
  v3 = *(v2 + 16);
  v4 = OUTLINED_FUNCTION_63_0();
  v5(v4);
  return v0;
}

uint64_t sub_217849160(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8AAF0, &qword_21796AFA8);
  OUTLINED_FUNCTION_3(v2);
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_2178491C0()
{
  OUTLINED_FUNCTION_86();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8AB48, &qword_21796B120);
  OUTLINED_FUNCTION_3(v1);
  v3 = *(v2 + 32);
  v4 = OUTLINED_FUNCTION_63_0();
  v5(v4);
  return v0;
}

uint64_t sub_217849220()
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = _s18PlaylistDetailViewVMa();
  OUTLINED_FUNCTION_13(v4);
  v6 = *(v5 + 80);
  v44 = *(v7 + 64);
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8AAE8, &qword_21796AFA0);
  OUTLINED_FUNCTION_2(v46);
  v9 = v8;
  v10 = *(v8 + 80);
  v45 = *(v11 + 64);
  v12 = (v1 + ((v6 + 32) & ~v6));
  v13 = *v12;

  if (v12[7])
  {
    if (v12[5])
    {
      __swift_destroy_boxed_opaque_existential_1(v12 + 2);
    }
  }

  else
  {
    v14 = v12[2];
  }

  OUTLINED_FUNCTION_62_0();
  v15 = v12[14];

  v16 = v12[16];

  v17 = v12 + v0[14];
  v18 = _s5AlertVMa(0);
  if (!__swift_getEnumTagSinglePayload(v17, 1, v18))
  {
    v19 = *(v17 + 8);

    v20 = *(v17 + 24);

    v21 = v17 + *(v18 + 24);
    v22 = _s5AlertV7ControlVMa(0);
    if (!__swift_getEnumTagSinglePayload(v21, 1, v22))
    {
      v23 = *(v21 + 8);

      v43 = *(v22 + 20);
      v42 = sub_2179665FC();
      if (!__swift_getEnumTagSinglePayload(v21 + v43, 1, v42))
      {
        OUTLINED_FUNCTION_10(v42);
        (*(v24 + 8))(v21 + v25);
      }
    }

    v26 = v17 + *(v18 + 28);
    if (!__swift_getEnumTagSinglePayload(v26, 1, v22))
    {
      v27 = *(v26 + 8);

      v28 = *(v22 + 20);
      v29 = sub_2179665FC();
      if (!__swift_getEnumTagSinglePayload(v26 + v28, 1, v29))
      {
        OUTLINED_FUNCTION_10(v29);
        (*(v30 + 8))(v26 + v28, v29);
      }
    }
  }

  v31 = *(v17 + *(__swift_instantiateConcreteTypeFromMangledNameV2(qword_27CB8A598, &unk_21796AD60) + 28));

  v32 = v12 + v0[15];
  v33 = *(v32 + 8);

  v34 = *(v32 + 24);

  sub_2178643E0(*(v12 + v0[17]));
  v35 = v12 + v0[18];
  v36 = *(v35 + 16);

  sub_2178643E0(*(v35 + 24));
  v37 = v12 + v0[19];
  v38 = *(v37 + 16);

  sub_2178643E0(*(v37 + 24));
  v39 = v12 + v0[20];
  v40 = *(v39 + 16);

  sub_2178643E0(*(v39 + 24));
  OUTLINED_FUNCTION_58_0();
  (*(v9 + 8))(v1 + ((((v6 + 32) & ~v6) + v44 + v10) & ~v10), v46);

  return swift_deallocObject();
}

uint64_t sub_217849564()
{
  v1 = *(v0 + 40);

  return swift_deallocObject();
}

uint64_t sub_21784959C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8AAE8, &qword_21796AFA0);
  OUTLINED_FUNCTION_2(v3);
  v5 = v4;
  v6 = *(v4 + 80);
  v7 = (v6 + 40) & ~v6;
  v9 = v7 + *(v8 + 64);
  OUTLINED_FUNCTION_45();
  v10 = _s18PlaylistDetailViewVMa();
  OUTLINED_FUNCTION_13(v10);
  v12 = (v9 + *(v11 + 80)) & ~*(v11 + 80);
  v37 = *(v13 + 64);
  v15 = *(v5 + 8);
  v14 = v5 + 8;
  v15(v0 + v7, v3);
  v16 = (v0 + v12);
  v17 = *(v0 + v12);

  if (*(v0 + v12 + 56))
  {
    if (v16[5])
    {
      __swift_destroy_boxed_opaque_existential_1(v16 + 2);
    }
  }

  else
  {
    v18 = v16[2];
  }

  OUTLINED_FUNCTION_62_0();
  v19 = v16[14];

  v20 = v16[16];

  v21 = OUTLINED_FUNCTION_79();
  if (!OUTLINED_FUNCTION_52_0(v21))
  {
    v22 = *(v2 + 8);

    v23 = *(v2 + 24);

    v24 = OUTLINED_FUNCTION_78();
    if (!OUTLINED_FUNCTION_55_0(v24))
    {
      v25 = *(((v6 + 40) & ~v6) + 8);

      v26 = *(v14 + 20);
      v36 = sub_2179665FC();
      if (!__swift_getEnumTagSinglePayload(v7 + v26, 1, v36))
      {
        OUTLINED_FUNCTION_10(v36);
        (*(v27 + 8))(v7 + v28);
      }
    }

    if (!OUTLINED_FUNCTION_44_0())
    {
      v29 = *(v3 + 8);

      v30 = *(v14 + 20);
      v31 = sub_2179665FC();
      if (!OUTLINED_FUNCTION_54_0(v31))
      {
        OUTLINED_FUNCTION_10(v14);
        (*(v32 + 8))(v3 + v30, v14);
      }
    }
  }

  v33 = *(v2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(qword_27CB8A598, &unk_21796AD60) + 28));

  OUTLINED_FUNCTION_76_0();
  v34 = *(v2 + 24);

  OUTLINED_FUNCTION_50_0();
  OUTLINED_FUNCTION_67_0();
  OUTLINED_FUNCTION_66_0();
  sub_2178643E0(*(v2 + 24));
  OUTLINED_FUNCTION_58_0();

  return swift_deallocObject();
}

uint64_t sub_217849834(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  sub_217968E3C();
  OUTLINED_FUNCTION_3_0();
  sub_217874614(v3, v4);
  OUTLINED_FUNCTION_61();
  _s19ContainerHeaderCellVMa();
  OUTLINED_FUNCTION_27_0();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_26_0();
  swift_getOpaqueTypeMetadata2();
  sub_21796732C();
  OUTLINED_FUNCTION_48_0();
  sub_21796698C();
  sub_21796698C();
  OUTLINED_FUNCTION_8();
  sub_21796698C();
  OUTLINED_FUNCTION_8();
  sub_21796698C();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8A6D8, &unk_21796AF80);
  OUTLINED_FUNCTION_48_0();
  sub_21796698C();
  _s20FailureAlertModifierVMa();
  OUTLINED_FUNCTION_9();
  sub_21796698C();
  OUTLINED_FUNCTION_8();
  sub_21796944C();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8A6E0, &qword_21796A8E0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8AAD0, &unk_21796AF90);
  OUTLINED_FUNCTION_41();
  _s17PlaylistEntryCellVMa();
  OUTLINED_FUNCTION_48_0();
  sub_21796698C();
  OUTLINED_FUNCTION_23_0();
  swift_getWitnessTable();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_61();
  swift_getOpaqueTypeMetadata2();
  OUTLINED_FUNCTION_8();
  sub_21796698C();
  OUTLINED_FUNCTION_8();
  sub_21796698C();
  OUTLINED_FUNCTION_8();
  sub_21796698C();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8A6F0, &qword_21796A8F0);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_60_0();
  swift_getTupleTypeMetadata2();
  OUTLINED_FUNCTION_8();
  sub_217967E9C();
  sub_217873B84();
  OUTLINED_FUNCTION_61();
  sub_217967D9C();
  OUTLINED_FUNCTION_8();
  sub_21796698C();
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_60_0();
  swift_getTupleTypeMetadata2();
  OUTLINED_FUNCTION_8();
  sub_217967E9C();
  OUTLINED_FUNCTION_8();
  sub_21796944C();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8AAF0, &qword_21796AFA8);
  sub_217968AFC();
  OUTLINED_FUNCTION_20_0();
  sub_217874614(v5, v6);
  OUTLINED_FUNCTION_61();
  _s14ContainerShelfVMa();
  OUTLINED_FUNCTION_8();
  sub_21796944C();
  OUTLINED_FUNCTION_60_0();
  swift_getTupleTypeMetadata();
  OUTLINED_FUNCTION_8();
  sub_217967E9C();
  OUTLINED_FUNCTION_19_0();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_9();
  sub_21796665C();
  sub_21796698C();
  sub_2179669FC();
  OUTLINED_FUNCTION_18_0();
  swift_getWitnessTable();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_17_0();
  sub_217874614(v7, v8);
  swift_getOpaqueTypeMetadata2();
  sub_217966F9C();
  swift_getOpaqueTypeConformance2();
  OUTLINED_FUNCTION_20();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_9();
  sub_21796666C();
  OUTLINED_FUNCTION_35_0();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_9();
  sub_21796686C();
  sub_21796698C();
  OUTLINED_FUNCTION_41();
  _s18NavigationBarStyleVMa();
  sub_21796698C();
  OUTLINED_FUNCTION_19();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_32_0();
  sub_217874614(v9, v10);
  swift_getWitnessTable();
  OUTLINED_FUNCTION_17();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_51_0();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  OUTLINED_FUNCTION_41();
  _s15DoneToolbarItemVMa();
  OUTLINED_FUNCTION_16();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_29_0();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  sub_217873C34();
  swift_getOpaqueTypeMetadata2();
  OUTLINED_FUNCTION_41();
  _s18PlaylistDetailViewV11SearchStateVMa();
  OUTLINED_FUNCTION_28_0();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_9();
  sub_217966DDC();
  sub_21796698C();
  _s23PlaylistDetailViewModelC12LoadingStateOMa(255);
  swift_getOpaqueTypeConformance2();
  OUTLINED_FUNCTION_25_0();
  swift_getWitnessTable();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_24_0();
  sub_217874614(v11, v12);
  swift_getOpaqueTypeMetadata2();
  OUTLINED_FUNCTION_41();
  sub_21796919C();
  swift_getOpaqueTypeConformance2();
  v14 = *(*(v1 + 16) + 8);
  OUTLINED_FUNCTION_21_0();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_61();
  swift_getOpaqueTypeMetadata2();
  sub_21796698C();
  swift_getOpaqueTypeConformance2();
  sub_217864644();
  OUTLINED_FUNCTION_49();
  return swift_getWitnessTable();
}

uint64_t sub_21784A060(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  swift_getAssociatedTypeWitness();

  return swift_getAssociatedConformanceWitness();
}

uint64_t sub_21784A0D4(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = *(a3 + 16);
    v9 = *(*(a3 + 24) + 8);
    v10 = sub_21796810C();
    v11 = a1 + *(a3 + 36);

    return __swift_getEnumTagSinglePayload(v11, a2, v10);
  }
}

uint64_t sub_21784A164(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = *(a4 + 16);
    v8 = *(*(a4 + 24) + 8);
    v9 = sub_21796810C();
    v10 = v5 + *(a4 + 36);

    return __swift_storeEnumTagSinglePayload(v10, a2, a2, v9);
  }

  return result;
}

uint64_t sub_21784A1F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CB8ACD8, &qword_21796B3A8);
  if (*(*(v6 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 76) + 8);
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    return (v8 + 1);
  }
}

uint64_t sub_21784A2B0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CB8ACD8, &qword_21796B3A8);
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 76) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_21784A36C()
{
  v3 = *(v1 + 4);
  v4 = *(v1 + 5);
  v5 = _s16ArtistDetailViewVMa();
  OUTLINED_FUNCTION_13(v5);
  v7 = (*(v6 + 80) + 48) & ~*(v6 + 80);
  v9 = *(v8 + 64);
  v10 = *(v1 + 2);
  swift_unknownObjectRelease();
  v11 = sub_217968AFC();
  OUTLINED_FUNCTION_4_1(v11);
  (*(v12 + 8))(&v1[v7]);
  v13 = *&v1[v7 + *(__swift_instantiateConcreteTypeFromMangledNameV2(qword_27CB8ACD8, &qword_21796B3A8) + 28)];

  OUTLINED_FUNCTION_59_1(v0[9]);
  sub_2178643E0(*(v2 + 24));
  v14 = *&v1[v7 + v0[11]];

  v15 = &v1[v7 + v0[12]];
  if (v15[5])
  {
    if (v15[3])
    {
      __swift_destroy_boxed_opaque_existential_1(v15);
    }
  }

  else
  {
    v16 = *v15;
  }

  OUTLINED_FUNCTION_57_1(v0[13]);

  sub_2178643E0(*&v1[v7 + v0[14]]);
  OUTLINED_FUNCTION_59_1(v0[15]);
  sub_2178643E0(*(v2 + 24));
  OUTLINED_FUNCTION_59_1(v0[16]);
  sub_2178643E0(*(v2 + 24));
  OUTLINED_FUNCTION_59_1(v0[17]);
  sub_2178643E0(*(v2 + 24));
  OUTLINED_FUNCTION_57_1(v0[19]);

  OUTLINED_FUNCTION_57_1(v0[20]);

  return swift_deallocObject();
}

uint64_t sub_21784A508@<X0>(uint64_t a1@<X8>)
{
  result = sub_217966C6C();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_21784A540@<X0>(_BYTE *a1@<X8>)
{
  result = sub_217966C0C();
  *a1 = result;
  return result;
}

uint64_t sub_21784A594()
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = _s16ArtistDetailViewVMa();
  OUTLINED_FUNCTION_13(v5);
  v7 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v9 = *(v8 + 64);
  v10 = sub_21796681C();
  OUTLINED_FUNCTION_2(v10);
  v12 = v11;
  v13 = *(v11 + 80);
  v26 = *(v14 + 64);
  v15 = v1 + v7;
  v16 = sub_217968AFC();
  OUTLINED_FUNCTION_4_1(v16);
  (*(v17 + 8))(v1 + v7);
  v18 = *(v1 + v7 + *(__swift_instantiateConcreteTypeFromMangledNameV2(qword_27CB8ACD8, &qword_21796B3A8) + 28));

  OUTLINED_FUNCTION_87_0(v0[9]);
  sub_2178643E0(*(v2 + 24));
  v19 = *(v1 + v7 + v0[11]);

  v20 = v1 + v7 + v0[12];
  if (*(v20 + 40))
  {
    if (*(v20 + 24))
    {
      __swift_destroy_boxed_opaque_existential_1(v20);
    }
  }

  else
  {
    v21 = *v20;
  }

  v22 = *(v15 + v0[13] + 8);

  sub_2178643E0(*(v15 + v0[14]));
  OUTLINED_FUNCTION_87_0(v0[15]);
  sub_2178643E0(*(v2 + 24));
  OUTLINED_FUNCTION_87_0(v0[16]);
  sub_2178643E0(*(v2 + 24));
  OUTLINED_FUNCTION_87_0(v0[17]);
  sub_2178643E0(*(v2 + 24));
  v23 = *(v15 + v0[19] + 8);

  v24 = *(v15 + v0[20] + 8);

  (*(v12 + 8))(v1 + ((v7 + v9 + v13) & ~v13), v10);

  return swift_deallocObject();
}

uint64_t sub_21784A7D4(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_21784A7EC()
{
  v1 = *(v0 + 48);

  sub_2178643E0(*(v0 + 56));

  return swift_deallocObject();
}

void sub_21784A82C()
{
  OUTLINED_FUNCTION_81();
  v1 = *v0;
  v16 = v0[1];
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8ADE8, &qword_21796BE90);
  sub_2179689AC();
  OUTLINED_FUNCTION_23_1();
  sub_21788D650(v2);
  OUTLINED_FUNCTION_11_0();
  _s19ContainerHeaderCellVMa();
  OUTLINED_FUNCTION_36_1();
  OUTLINED_FUNCTION_11_0();
  sub_21796688C();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8ADF0, &qword_21796B500);
  OUTLINED_FUNCTION_9();
  sub_21796698C();
  sub_2179669FC();
  OUTLINED_FUNCTION_41_0();
  OUTLINED_FUNCTION_20_1();
  v4 = sub_21788D5B8(v3);
  OUTLINED_FUNCTION_12_0(v4);
  swift_getWitnessTable();
  OUTLINED_FUNCTION_18_1();
  sub_21788D650(v5);
  swift_getOpaqueTypeMetadata2();
  OUTLINED_FUNCTION_50_1();
  sub_21796732C();
  OUTLINED_FUNCTION_42_0();
  sub_21796698C();
  OUTLINED_FUNCTION_50_1();
  sub_217966FAC();
  swift_getOpaqueTypeConformance2();
  OUTLINED_FUNCTION_1_0();
  sub_21788D650(v6);
  swift_getWitnessTable();
  OUTLINED_FUNCTION_16_0();
  sub_21788D650(v7);
  OUTLINED_FUNCTION_11_0();
  swift_getOpaqueTypeMetadata2();
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_60_0();
  swift_getTupleTypeMetadata2();
  OUTLINED_FUNCTION_8();
  sub_217967E9C();
  OUTLINED_FUNCTION_19_0();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_9();
  sub_217967CDC();
  sub_21796698C();
  OUTLINED_FUNCTION_8();
  sub_21796698C();
  OUTLINED_FUNCTION_8();
  sub_21796698C();
  OUTLINED_FUNCTION_8();
  sub_21796944C();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8AE08, &unk_21796B508);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8A778, &unk_21796A950);
  OUTLINED_FUNCTION_39_1();
  _s13ItemShelfCellVMa();
  OUTLINED_FUNCTION_8();
  sub_21796698C();
  OUTLINED_FUNCTION_24();
  sub_21788D5B8(v8);
  sub_21786438C();
  OUTLINED_FUNCTION_39_1();
  sub_217967D9C();
  OUTLINED_FUNCTION_8();
  sub_21796698C();
  OUTLINED_FUNCTION_8();
  sub_21796698C();
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_60_0();
  swift_getTupleTypeMetadata2();
  OUTLINED_FUNCTION_8();
  sub_217967E9C();
  OUTLINED_FUNCTION_8();
  sub_21796944C();
  sub_2179688CC();
  OUTLINED_FUNCTION_29_1();
  sub_21788D650(v9);
  OUTLINED_FUNCTION_39_1();
  _s9ItemShelfVMa();
  OUTLINED_FUNCTION_8();
  sub_21796698C();
  OUTLINED_FUNCTION_8();
  sub_21796698C();
  OUTLINED_FUNCTION_8();
  sub_21796944C();
  OUTLINED_FUNCTION_39_1();
  _s14ContainerShelfVMa();
  OUTLINED_FUNCTION_12();
  sub_21796698C();
  OUTLINED_FUNCTION_8();
  sub_21796944C();
  sub_217968E3C();
  OUTLINED_FUNCTION_27_1();
  sub_21788D650(v10);
  OUTLINED_FUNCTION_39_1();
  _s14ContainerShelfVMa();
  OUTLINED_FUNCTION_8();
  sub_21796944C();
  OUTLINED_FUNCTION_12();
  sub_21796944C();
  OUTLINED_FUNCTION_60_0();
  swift_getTupleTypeMetadata();
  OUTLINED_FUNCTION_8();
  sub_217967E9C();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_9();
  sub_21796665C();
  sub_217966F9C();
  OUTLINED_FUNCTION_18_0();
  WitnessTable = swift_getWitnessTable();
  OUTLINED_FUNCTION_13_0(WitnessTable, MEMORY[0x277CE1410]);
  swift_getWitnessTable();
  OUTLINED_FUNCTION_9();
  sub_21796666C();
  sub_21796698C();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8AE18, &qword_21796B518);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8ADE8, &qword_21796BE90);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8A778, &unk_21796A950);
  OUTLINED_FUNCTION_11_0();
  _s9VItemCellVMa();
  sub_21796698C();
  OUTLINED_FUNCTION_11_0();
  sub_217967D9C();
  OUTLINED_FUNCTION_22_0();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_56_1();
  swift_getWitnessTable();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_9();
  sub_217967E8C();
  OUTLINED_FUNCTION_8();
  sub_21796698C();
  OUTLINED_FUNCTION_8();
  sub_21796698C();
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_60_0();
  swift_getTupleTypeMetadata2();
  OUTLINED_FUNCTION_8();
  sub_217967E9C();
  OUTLINED_FUNCTION_8();
  sub_21796944C();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8AE08, &unk_21796B508);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8AE20, &qword_21796B520);
  OUTLINED_FUNCTION_93();
  sub_21796852C();
  OUTLINED_FUNCTION_21_1();
  sub_21788D650(v12);
  OUTLINED_FUNCTION_11_0();
  _s13ItemShelfCellVMa();
  OUTLINED_FUNCTION_42_0();
  sub_21796698C();
  sub_21788D5B8(&unk_27CB8AE28);
  OUTLINED_FUNCTION_11_0();
  sub_217967D9C();
  OUTLINED_FUNCTION_12();
  sub_21796698C();
  OUTLINED_FUNCTION_19_1();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_9();
  sub_21796665C();
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_60_0();
  swift_getTupleTypeMetadata2();
  OUTLINED_FUNCTION_8();
  sub_217967E9C();
  OUTLINED_FUNCTION_8();
  sub_21796944C();
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_60_0();
  swift_getTupleTypeMetadata2();
  OUTLINED_FUNCTION_8();
  sub_217967E9C();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_9();
  sub_217967CDC();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8AE30, &unk_21796B528);
  swift_getTupleTypeMetadata3();
  OUTLINED_FUNCTION_8();
  sub_217967E9C();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_9();
  sub_21796666C();
  OUTLINED_FUNCTION_12();
  sub_21796698C();
  OUTLINED_FUNCTION_17_1();
  swift_getWitnessTable();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_9();
  sub_217967CDC();
  sub_217966F9C();
  swift_getWitnessTable();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_14_1();
  swift_getWitnessTable();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_9();
  sub_21796686C();
  OUTLINED_FUNCTION_19();
  swift_getWitnessTable();
  sub_217873C34();
  swift_getOpaqueTypeMetadata2();
  OUTLINED_FUNCTION_66_1();
  swift_getOpaqueTypeMetadata2();
  _s18NavigationBarStyleVMa();
  sub_21796698C();
  v13 = OUTLINED_FUNCTION_56_1();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v13, v14);
  OUTLINED_FUNCTION_9();
  sub_21796698C();
  OUTLINED_FUNCTION_49_0();
  OUTLINED_FUNCTION_17();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_64();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_37_0(&unk_27CB8A890);
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  OUTLINED_FUNCTION_49_0();
  OUTLINED_FUNCTION_9();
  sub_217967CDC();
  _s15DoneToolbarItemVMa();
  OUTLINED_FUNCTION_16();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  swift_getWitnessTable();
  v15 = OUTLINED_FUNCTION_66_1();
  OUTLINED_FUNCTION_26_1(v15);
  swift_getOpaqueTypeMetadata2();
  sub_21796698C();
  OUTLINED_FUNCTION_49_0();
  sub_217864644();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_80();
}

uint64_t sub_21784B3D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CB8B0F8, &qword_21796B7F8);
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = a1 + *(a3 + 36);

    return __swift_getEnumTagSinglePayload(v8, a2, v7);
  }

  else
  {
    v10 = *(a1 + *(a3 + 44) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_21784B490(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CB8B0F8, &qword_21796B7F8);
  if (*(*(result - 8) + 84) == a3)
  {
    v9 = result;
    v10 = a1 + *(a4 + 36);

    return __swift_storeEnumTagSinglePayload(v10, a2, a2, v9);
  }

  else
  {
    *(a1 + *(a4 + 44) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_21784B5F8(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8B5F8, &qword_21796BEC8);
  OUTLINED_FUNCTION_3(v3);
  v5 = *(v4 + 32);
  v6 = OUTLINED_FUNCTION_63_0();
  v7(v6);
  return a2;
}

uint64_t sub_21784B65C()
{
  v18 = *(v0 + 16);
  v19 = *(v0 + 32);
  v1 = (_s19ContainerHeaderCellVMa() - 8);
  v2 = (*(*v1 + 80) + 48) & ~*(*v1 + 80);
  v3 = *(*v1 + 64);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8AB40, &qword_21796BEC0);
  OUTLINED_FUNCTION_2(v4);
  v6 = v5;
  v7 = (v2 + v3 + *(v6 + 80)) & ~*(v6 + 80);
  v9 = *(v8 + 64);
  v10 = v0 + v2;
  (*(*(v18 - 8) + 8))(v0 + v2);
  v11 = v0 + v2 + v1[15];
  v12 = *(v11 + 16);

  sub_2178643E0(*(v11 + 24));
  OUTLINED_FUNCTION_15_1(v1[16]);

  OUTLINED_FUNCTION_15_1(v1[17]);

  OUTLINED_FUNCTION_15_1(v1[18]);

  OUTLINED_FUNCTION_15_1(v1[19]);

  v13 = (v10 + v1[20]);
  v14 = *v13;

  v15 = v13[1];

  v16 = *(v10 + v1[21]);

  (*(v6 + 8))(v0 + v7, v4);
  return swift_deallocObject();
}

uint64_t sub_21784B850(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[2];
  _s11ArtworkViewVMa();
  sub_21796732C();
  sub_21796698C();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8B410, &qword_21796BCC0);
  OUTLINED_FUNCTION_9();
  sub_21796698C();
  sub_21796698C();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8B418, &unk_21796BCC8);
  _s9CellTitleVMa();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8A898, &unk_21796ACA0);
  OUTLINED_FUNCTION_9();
  sub_21796698C();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8B420, &qword_21796BCD8);
  OUTLINED_FUNCTION_9();
  sub_21796698C();
  OUTLINED_FUNCTION_8();
  sub_21796698C();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8B428, &qword_21796BCE0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8B430, &qword_21796BCE8);
  OUTLINED_FUNCTION_9_1();
  OUTLINED_FUNCTION_8();
  sub_217967E9C();
  OUTLINED_FUNCTION_5_1();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_4();
  sub_217967CDC();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8B438, &unk_21796BCF0);
  OUTLINED_FUNCTION_9_1();
  OUTLINED_FUNCTION_8();
  sub_217967E9C();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_4();
  sub_217967CAC();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8ADF0, &qword_21796B500);
  OUTLINED_FUNCTION_4();
  sub_21796698C();
  OUTLINED_FUNCTION_10_2();
  OUTLINED_FUNCTION_8_2(&unk_27CB8ADF8);
  OUTLINED_FUNCTION_1();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_9();
  sub_217967CDC();
  sub_217966FAC();
  OUTLINED_FUNCTION_7_1();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_6_0();
  sub_21789908C(v3);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_21784BB08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21796715C();
  v7 = OUTLINED_FUNCTION_1_1(v6);
  if (*(v8 + 84) == a2)
  {
    v9 = v7;
    v10 = a1;
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8B6C8, &qword_21796C0D0);
    v12 = OUTLINED_FUNCTION_1_1(v11);
    if (*(v13 + 84) == a2)
    {
      v9 = v12;
      v14 = *(a3 + 20);
    }

    else
    {
      v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8B6D0, &qword_21796C0D8);
      v14 = *(a3 + 28);
    }

    v10 = a1 + v14;
  }

  return __swift_getEnumTagSinglePayload(v10, a2, v9);
}

uint64_t sub_21784BBF8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_21796715C();
  v9 = OUTLINED_FUNCTION_1_1(v8);
  if (*(v10 + 84) == a3)
  {
    v11 = v9;
    v12 = a1;
  }

  else
  {
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8B6C8, &qword_21796C0D0);
    v14 = OUTLINED_FUNCTION_1_1(v13);
    if (*(v15 + 84) == a3)
    {
      v11 = v14;
      v16 = *(a4 + 20);
    }

    else
    {
      v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8B6D0, &qword_21796C0D8);
      v16 = *(a4 + 28);
    }

    v12 = a1 + v16;
  }

  return __swift_storeEnumTagSinglePayload(v12, a2, a2, v11);
}

uint64_t sub_21784BD58(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8B730, &qword_21796C180);
  OUTLINED_FUNCTION_3(v4);
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_21784BDC0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8B730, &qword_21796C180);
  OUTLINED_FUNCTION_3(v2);
  (*(v3 + 8))(a1);
  return a1;
}

__n128 sub_21784BE48(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_21784BE54@<X0>(uint64_t *a1@<X8>)
{
  result = sub_217966B9C();
  *a1 = result;
  return result;
}

uint64_t sub_21784BE8C()
{
  v1 = sub_21796843C();
  OUTLINED_FUNCTION_0_1();
  v3 = v2;
  v4 = *(v2 + 80);
  v6 = *(v5 + 64);
  v7 = *(v0 + 32);

  if (*(v0 + 88))
  {
    if (*(v0 + 72))
    {
      __swift_destroy_boxed_opaque_existential_1((v0 + 48));
    }
  }

  else
  {
    v8 = *(v0 + 48);
  }

  v9 = *(v0 + 104);

  v10 = *(v0 + 128);

  sub_2178643E0(*(v0 + 136));
  v11 = *(v0 + 144);

  v12 = *(v0 + 168);

  sub_2178643E0(*(v0 + 176));
  v13 = *(v0 + 200);

  sub_2178643E0(*(v0 + 208));
  v14 = *(v0 + 232);

  sub_2178643E0(*(v0 + 240));
  (*(v3 + 8))(v0 + ((v4 + 344) & ~v4), v1);

  return swift_deallocObject();
}

uint64_t sub_21784BFE4(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8B7F8, &qword_21796C650);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8B800, &unk_21796C658);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8A6E0, &qword_21796A8E0);
  sub_21796595C();
  OUTLINED_FUNCTION_17_3();
  sub_2178AA01C(v3);
  OUTLINED_FUNCTION_67();
  _s16SearchResultCellVMa();
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_75();
  OUTLINED_FUNCTION_8();
  sub_217967E9C();
  OUTLINED_FUNCTION_14_2();
  sub_217898FF8(v4);
  OUTLINED_FUNCTION_67();
  sub_217967D9C();
  sub_21796698C();
  OUTLINED_FUNCTION_11_2();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_10_3();
  swift_getWitnessTable();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_9();
  sub_21796665C();
  OUTLINED_FUNCTION_4_2();
  OUTLINED_FUNCTION_75();
  OUTLINED_FUNCTION_8();
  sub_217967E9C();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_4_2();
  sub_217967CDC();
  OUTLINED_FUNCTION_36();
  sub_21796698C();
  OUTLINED_FUNCTION_7_1();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  sub_21796732C();
  OUTLINED_FUNCTION_36();
  sub_21796698C();
  OUTLINED_FUNCTION_8();
  sub_21796944C();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8B818, &qword_21796C668);
  sub_2179682DC();
  OUTLINED_FUNCTION_16_1();
  sub_2178AA01C(v5);
  OUTLINED_FUNCTION_67();
  _s17SearchContentViewVMa();
  OUTLINED_FUNCTION_8();
  sub_21796698C();
  OUTLINED_FUNCTION_8();
  sub_21796944C();
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_75();
  OUTLINED_FUNCTION_8();
  sub_217967E9C();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_4_2();
  sub_217967CDC();
  OUTLINED_FUNCTION_67();
  _s17SearchContentViewVMa();
  OUTLINED_FUNCTION_36();
  sub_21796698C();
  sub_21796944C();
  OUTLINED_FUNCTION_15_2();
  swift_getWitnessTable();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_0_3();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_3_1();
  sub_21796665C();
  sub_217966F9C();
  OUTLINED_FUNCTION_36();
  sub_217966F9C();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_18_0();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_67();
  swift_getOpaqueTypeMetadata2();
  OUTLINED_FUNCTION_8();
  sub_21796698C();
  OUTLINED_FUNCTION_8();
  sub_21796944C();
  OUTLINED_FUNCTION_67();
  swift_getOpaqueTypeMetadata2();
  OUTLINED_FUNCTION_8();
  sub_21796698C();
  OUTLINED_FUNCTION_8();
  sub_21796944C();
  swift_getTupleTypeMetadata3();
  OUTLINED_FUNCTION_8();
  sub_217967E9C();
  OUTLINED_FUNCTION_41();
  sub_217967B7C();
  OUTLINED_FUNCTION_48_0();
  sub_21796698C();
  sub_21796698C();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_20_2();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_18_2();
  sub_2178AA01C(v6);
  swift_getWitnessTable();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_4_2();
  sub_21796666C();
  OUTLINED_FUNCTION_41();
  sub_21796698C();
  OUTLINED_FUNCTION_21_2();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_9();
  sub_21796686C();
  _s13SearchContextVMa();
  OUTLINED_FUNCTION_8();
  sub_21796698C();
  OUTLINED_FUNCTION_8();
  sub_21796944C();
  OUTLINED_FUNCTION_48_0();
  _s11ColumnsViewVMa();
  OUTLINED_FUNCTION_8();
  sub_21796698C();
  OUTLINED_FUNCTION_8();
  sub_21796944C();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8B828, &qword_21796C670);
  OUTLINED_FUNCTION_9();
  sub_217966F9C();
  OUTLINED_FUNCTION_8();
  sub_21796944C();
  OUTLINED_FUNCTION_3_1();
  OUTLINED_FUNCTION_75();
  OUTLINED_FUNCTION_8();
  sub_217967E9C();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_3_1();
  sub_217967CDC();
  OUTLINED_FUNCTION_41();
  sub_21796698C();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  OUTLINED_FUNCTION_7_2();
  swift_getWitnessTable();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  sub_21796698C();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8B830, &qword_21796C678);
  OUTLINED_FUNCTION_9();
  sub_21796698C();
  swift_getOpaqueTypeConformance2();
  sub_217864644();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_13_2();
  sub_217898FF8(v7);
  return swift_getWitnessTable();
}

uint64_t sub_21784C7B8()
{
  v1 = *(v0 + 48);

  sub_2178643E0(*(v0 + 56));

  return swift_deallocObject();
}

uint64_t sub_21784C7F8()
{
  v1 = sub_21796681C();
  OUTLINED_FUNCTION_3(v1);
  v3 = *(v2 + 64);
  (*(v2 + 8))(v0 + ((*(v2 + 80) + 32) & ~*(v2 + 80)));

  return swift_deallocObject();
}

uint64_t sub_21784C878(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8AEC8, &qword_21796B618);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8B0A8, &unk_21796B760);
  sub_2179688CC();
  OUTLINED_FUNCTION_8_3();
  sub_2178AEB74(v3, v4);
  OUTLINED_FUNCTION_12_1();
  _s13ItemShelfCellVMa();
  OUTLINED_FUNCTION_24();
  sub_217864B2C(v5, &qword_27CB8B0A8, &unk_21796B760);
  sub_21786438C();
  OUTLINED_FUNCTION_12_1();
  sub_217967D9C();
  sub_21796698C();
  OUTLINED_FUNCTION_9();
  swift_getTupleTypeMetadata2();
  OUTLINED_FUNCTION_8();
  sub_217967E9C();
  sub_21796944C();
  OUTLINED_FUNCTION_19_0();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_0_3();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_9();
  sub_217967CDC();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_9();
  sub_21796666C();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_9();
  sub_21796686C();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8BCA8, &qword_21796CB88);
  _s15LibraryMenuViewVMa();
  OUTLINED_FUNCTION_8();
  sub_21796698C();
  OUTLINED_FUNCTION_8();
  sub_21796698C();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8BCB0, &qword_21796CB90);
  OUTLINED_FUNCTION_12_1();
  _s9ItemShelfVMa();
  OUTLINED_FUNCTION_14_2();
  sub_217864B2C(v6, &qword_27CB8BCB0, &qword_21796CB90);
  sub_2178AE958();
  OUTLINED_FUNCTION_12_1();
  sub_217967D9C();
  OUTLINED_FUNCTION_8();
  sub_21796698C();
  swift_getTupleTypeMetadata3();
  OUTLINED_FUNCTION_8();
  sub_217967E9C();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_4();
  sub_217967CDC();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_4();
  sub_21796666C();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_4();
  sub_21796686C();
  sub_217966F9C();
  sub_21796698C();
  OUTLINED_FUNCTION_4_3();
  swift_getWitnessTable();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_20();
  swift_getWitnessTable();
  sub_217864644();
  OUTLINED_FUNCTION_1();
  return swift_getWitnessTable();
}

uint64_t sub_21784CC18(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  type metadata accessor for ArtworkPlaceholder();

  return swift_getWitnessTable();
}

uint64_t sub_21784CC60(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_217968C2C();
  v7 = OUTLINED_FUNCTION_1_1(v6);
  if (*(v8 + 84) == a2)
  {
    v9 = v7;
    v10 = a1;
LABEL_6:

    return __swift_getEnumTagSinglePayload(v10, a2, v9);
  }

  v11 = sub_21796633C();
  v12 = OUTLINED_FUNCTION_1_1(v11);
  if (*(v13 + 84) == a2)
  {
    v9 = v12;
    v14 = a3[15];
LABEL_5:
    v10 = a1 + v14;
    goto LABEL_6;
  }

  if (a2 != 0x7FFFFFFF)
  {
    v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8BD60, &qword_21796CC60);
    v18 = OUTLINED_FUNCTION_1_1(v17);
    if (*(v19 + 84) == a2)
    {
      v9 = v18;
      v14 = a3[20];
    }

    else
    {
      v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8BD68, &qword_21796CC68);
      v14 = a3[21];
    }

    goto LABEL_5;
  }

  v16 = *(a1 + a3[16]);
  if (v16 >= 0xFFFFFFFF)
  {
    LODWORD(v16) = -1;
  }

  return (v16 + 1);
}

uint64_t sub_21784CDC4(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_217968C2C();
  v9 = OUTLINED_FUNCTION_1_1(v8);
  if (*(v10 + 84) == a3)
  {
    v11 = v9;
    v12 = a1;
  }

  else
  {
    v13 = sub_21796633C();
    result = OUTLINED_FUNCTION_1_1(v13);
    if (*(v15 + 84) == a3)
    {
      v11 = result;
      v16 = a4[15];
    }

    else
    {
      if (a3 == 0x7FFFFFFF)
      {
        *(a1 + a4[16]) = (a2 - 1);
        return result;
      }

      v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8BD60, &qword_21796CC60);
      v18 = OUTLINED_FUNCTION_1_1(v17);
      if (*(v19 + 84) == a3)
      {
        v11 = v18;
        v16 = a4[20];
      }

      else
      {
        v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8BD68, &qword_21796CC68);
        v16 = a4[21];
      }
    }

    v12 = a1 + v16;
  }

  return __swift_storeEnumTagSinglePayload(v12, a2, a2, v11);
}

uint64_t sub_21784CF24()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_21784CF5C(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_27CB8BD70, &qword_21796CCE8);
  sub_21796944C();
  swift_getWitnessTable();
  sub_217966A7C();
  sub_21796698C();
  sub_2178B0110();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_21784D050(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = *(a3 + 16);
    v9 = *(*(a3 + 32) + 8);
    v10 = sub_21796810C();
    v11 = a1 + *(a3 + 52);

    return __swift_getEnumTagSinglePayload(v11, a2, v10);
  }
}

uint64_t sub_21784D0E4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = *(a4 + 16);
    v8 = *(*(a4 + 32) + 8);
    v9 = sub_21796810C();
    v10 = v5 + *(a4 + 52);

    return __swift_storeEnumTagSinglePayload(v10, a2, a2, v9);
  }

  return result;
}

uint64_t sub_21784D170(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8BE78, &qword_21796CE80);
  OUTLINED_FUNCTION_3(v4);
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_21784D1D8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8BE78, &qword_21796CE80);
  OUTLINED_FUNCTION_3(v2);
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_21784D238()
{
  v17 = *(v0 + 32);
  v18 = *(v0 + 16);
  v1 = _s14ContainerShelfVMa();
  v2 = *(*(v1 - 1) + 64);
  v3 = v0 + ((*(*(v1 - 1) + 80) + 48) & ~*(*(v1 - 1) + 80));
  v4 = *(v3 + 8);

  v5 = v1[13];
  v6 = *(v17 + 8);
  v7 = sub_21796810C();
  OUTLINED_FUNCTION_3(v7);
  (*(v8 + 8))(v3 + v5);
  sub_2178643E0(*(v3 + v1[14]));
  v9 = *(v3 + v1[19]);

  v10 = v3 + v1[20];
  if (*(v10 + 40))
  {
    if (*(v10 + 24))
    {
      __swift_destroy_boxed_opaque_existential_1(v10);
    }
  }

  else
  {
    v11 = *v10;
  }

  v12 = v3 + v1[21];
  v13 = *(v12 + 16);

  sub_2178643E0(*(v12 + 24));
  v14 = v3 + v1[22];
  v15 = *(v14 + 16);

  sub_2178643E0(*(v14 + 24));
  return swift_deallocObject();
}

uint64_t sub_21784D3B4(__int128 *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8BE78, &qword_21796CE80);
  v8 = *a1;
  v2 = *(a1 + 2);
  v3 = *(v2 + 8);
  sub_21796810C();
  v4 = *(v2 + 40);
  swift_getAssociatedTypeWitness();
  _s9VItemCellVMa();
  sub_21796732C();
  OUTLINED_FUNCTION_9();
  sub_21796698C();
  OUTLINED_FUNCTION_12_2();
  sub_21796698C();
  sub_21796698C();
  OUTLINED_FUNCTION_6_1();
  swift_getWitnessTable();
  swift_getAssociatedConformanceWitness();
  sub_217967D9C();
  OUTLINED_FUNCTION_3_2();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_4_4();
  sub_2178B423C(v5, v6);
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_10_3();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_9();
  sub_217967CAC();
  OUTLINED_FUNCTION_9_2();
  OUTLINED_FUNCTION_9();
  sub_21796666C();
  OUTLINED_FUNCTION_9();
  swift_getTupleTypeMetadata2();
  sub_217967E9C();
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_9();
  sub_217967CDC();
  sub_21796698C();
  sub_21796944C();
  OUTLINED_FUNCTION_7_1();
  swift_getWitnessTable();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_0_3();
  return swift_getWitnessTable();
}

uint64_t sub_21784D650@<X0>(uint64_t *a1@<X8>)
{
  result = sub_217956C60();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_21784D680()
{
  v1 = *(v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_21784D6B8()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return swift_deallocObject();
}

uint64_t sub_21784D6F8(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8BF08, &qword_21796CF28);
  sub_21796698C();
  sub_2178B4BCC();
  return swift_getWitnessTable();
}

uint64_t sub_21784D7E0(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  sub_217968AFC();
  OUTLINED_FUNCTION_8_4();
  sub_2178B7FA4(v3, v4);
  _s15LibraryMenuCellVMa();
  OUTLINED_FUNCTION_8();
  sub_21796944C();
  sub_2179689AC();
  OUTLINED_FUNCTION_4_5();
  sub_2178B7FA4(v5, v6);
  OUTLINED_FUNCTION_10_4();
  OUTLINED_FUNCTION_8();
  sub_21796944C();
  sub_2179688CC();
  OUTLINED_FUNCTION_3_3();
  sub_2178B7FA4(v7, v8);
  OUTLINED_FUNCTION_10_4();
  OUTLINED_FUNCTION_8();
  sub_21796944C();
  sub_217968CFC();
  v9 = MEMORY[0x277D2B358];
  sub_2178B7FA4(&qword_27CB8BF98, MEMORY[0x277D2B358]);
  OUTLINED_FUNCTION_7_3();
  sub_2178B7FA4(v10, v9);
  OUTLINED_FUNCTION_10_4();
  OUTLINED_FUNCTION_8();
  sub_21796944C();
  sub_21796591C();
  v11 = MEMORY[0x277D2A350];
  sub_2178B7FA4(&qword_27CB8BFA8, MEMORY[0x277D2A350]);
  OUTLINED_FUNCTION_5_2();
  sub_2178B7FA4(v12, v11);
  OUTLINED_FUNCTION_10_4();
  OUTLINED_FUNCTION_8();
  sub_21796944C();
  OUTLINED_FUNCTION_12_3();
  OUTLINED_FUNCTION_8();
  sub_217967E9C();
  sub_217967B7C();
  sub_2179669FC();
  OUTLINED_FUNCTION_19_0();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_20_2();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_6_2();
  sub_2178B7FA4(v13, v14);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_21784DA9C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2179688CC();
  if (*(*(v6 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 32) + 8);
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    return (v8 + 1);
  }
}

uint64_t sub_21784DB4C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_2179688CC();
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 32) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_21784DC20(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8C028, &qword_21796D1A8);
  OUTLINED_FUNCTION_3(v3);
  v5 = *(v4 + 16);
  v6 = OUTLINED_FUNCTION_63_0();
  v7(v6);
  return a2;
}

uint64_t sub_21784DC84(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8C028, &qword_21796D1A8);
  OUTLINED_FUNCTION_3(v2);
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_21784DD64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
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
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CB8C090, &qword_21796D2E8);
    v10 = a1 + *(a3 + 48);

    return __swift_getEnumTagSinglePayload(v10, a2, v9);
  }
}

uint64_t sub_21784DE04(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 8) = a2;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CB8C090, &qword_21796D2E8);
    v8 = v5 + *(a4 + 48);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

__n128 sub_21784DE9C(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_21784DEB8@<X0>(void *a1@<X8>)
{
  result = sub_217966BEC();
  *a1 = v3;
  return result;
}

uint64_t sub_21784DF0C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8C168, &qword_21796D490);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21784DF7C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8C168, &qword_21796D490);
  OUTLINED_FUNCTION_4_1(v2);
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_21784DFD8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_217966C2C();
  *a1 = result;
  return result;
}

uint64_t sub_21784E008(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  sub_2179668AC();
  OUTLINED_FUNCTION_0_5();
  _s11ContentViewVMa();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8C130, &qword_21796D3F0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8C138, &unk_21796D3F8);
  OUTLINED_FUNCTION_0_5();
  _s15DoneToolbarItemVMa();
  swift_getTupleTypeMetadata3();
  OUTLINED_FUNCTION_8();
  sub_217966E8C();
  OUTLINED_FUNCTION_5_4();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_4_6();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  OUTLINED_FUNCTION_0_5();
  _s18NavigationBarStyleVMa();
  sub_21796698C();
  swift_getOpaqueTypeConformance2();
  OUTLINED_FUNCTION_17();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  OUTLINED_FUNCTION_6_3();
  sub_217873C34();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  OUTLINED_FUNCTION_6_3();
  swift_getOpaqueTypeMetadata2();
  OUTLINED_FUNCTION_6_3();
  swift_getOpaqueTypeMetadata2();
  OUTLINED_FUNCTION_6_3();
  swift_getOpaqueTypeMetadata2();
  OUTLINED_FUNCTION_6_3();
  swift_getOpaqueTypeMetadata2();
  OUTLINED_FUNCTION_6_3();
  swift_getOpaqueTypeMetadata2();
  OUTLINED_FUNCTION_0_5();
  _s34NavigationDestinationsViewModifierVMa();
  sub_21796698C();
  OUTLINED_FUNCTION_6_3();
  OUTLINED_FUNCTION_1_2();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_2179669AC();
  sub_21796732C();
  OUTLINED_FUNCTION_9();
  sub_21796698C();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8B600, &unk_21796BED0);
  OUTLINED_FUNCTION_0_5();
  _s20DismissAlertModifierVMa();
  OUTLINED_FUNCTION_9();
  sub_21796698C();
  OUTLINED_FUNCTION_9();
  swift_getTupleTypeMetadata2();
  OUTLINED_FUNCTION_8();
  sub_217967E9C();
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_12();
  sub_217967CFC();
  OUTLINED_FUNCTION_12();
  sub_21796698C();
  OUTLINED_FUNCTION_3_5();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_21784E4A8()
{
  v1 = v0[2];
  sub_21796944C();
  v2 = (OUTLINED_FUNCTION_9_4() - 8);
  v3 = (*(*v2 + 80) + 49) & ~*(*v2 + 80);
  v4 = v3 + *(*v2 + 64);
  v5 = (v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v4 + 39) & 0xFFFFFFFFFFFFFFF8;
  v7 = v0[4];

  v8 = v0[5];

  v9 = v0 + v3;
  v10 = *v9;

  v11 = *(v9 + 1);

  v12 = v2[10];
  if (!__swift_getEnumTagSinglePayload(&v9[v12], 1, v1))
  {
    (*(*(v1 - 8) + 8))(&v9[v12], v1);
  }

  v13 = *(v0 + v5);

  v14 = *(v0 + v5 + 8);

  v15 = *(v0 + v5 + 16);

  v16 = *(v0 + v6 + 8);
  if (v16 != 255)
  {
    sub_2178BF424(*(v0 + v6), v16);
  }

  v17 = (v4 + 55) & 0xFFFFFFFFFFFFFFF8;
  v18 = (v17 + 15) & 0xFFFFFFFFFFFFFFF8;
  v19 = *(v0 + v17);

  v20 = *(v0 + v18 + 8);

  return swift_deallocObject();
}

uint64_t sub_21784E684(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  OUTLINED_FUNCTION_6_4();
  _s8MainViewVMa();
  sub_21796698C();
  OUTLINED_FUNCTION_6_4();
  _s9ViewModelCMa();
  sub_21796944C();
  sub_21796731C();
  sub_21796698C();
  OUTLINED_FUNCTION_6_4();
  _s33MainViewContainerDismissalWrapperVMa();
  OUTLINED_FUNCTION_1_3();
  swift_getWitnessTable();
  sub_217966F6C();
  sub_21796698C();
  OUTLINED_FUNCTION_3_6();
  swift_getWitnessTable();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_2_1();
  swift_getWitnessTable();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_4_7();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_21784E7E0(uint64_t a1, uint64_t a2)
{
  v4 = sub_217965A3C();

  return __swift_getEnumTagSinglePayload(a1, a2, v4);
}

uint64_t sub_21784E828(uint64_t a1, uint64_t a2)
{
  v4 = sub_217965A3C();

  return __swift_storeEnumTagSinglePayload(a1, a2, a2, v4);
}

uint64_t sub_21784E874()
{
  v1 = *(v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_21784E8AC()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8C2D8, &qword_21796D6D8);
  OUTLINED_FUNCTION_3(v1);
  v3 = *(v2 + 64);
  (*(v2 + 8))(v0 + ((*(v2 + 80) + 16) & ~*(v2 + 80)));

  return swift_deallocObject();
}

uint64_t sub_21784E964(uint64_t a1, uint64_t a2)
{
  v4 = sub_2179688CC();

  return __swift_getEnumTagSinglePayload(a1, a2, v4);
}

uint64_t sub_21784E9AC(uint64_t a1, uint64_t a2)
{
  v4 = sub_2179688CC();

  return __swift_storeEnumTagSinglePayload(a1, a2, a2, v4);
}

uint64_t sub_21784E9F8()
{
  v1 = *(v0 + 32);

  return swift_deallocObject();
}

uint64_t sub_21784EA30@<X0>(_BYTE *a1@<X8>)
{
  result = sub_217966C4C();
  *a1 = result & 1;
  return result;
}

uint64_t sub_21784EA88@<X0>(uint64_t *a1@<X8>)
{
  result = sub_217966C8C();
  *a1 = result;
  return result;
}

uint64_t sub_21784EAC8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8C3C0, &qword_21796D930);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21784EB38(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8C3C0, &qword_21796D930);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_21784EBA0()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8C3A0, &qword_21796D920);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8C398, &qword_21796D918);
  OUTLINED_FUNCTION_1_6();
  sub_217864B2C(v0, &qword_27CB8C398, &qword_21796D918);
  OUTLINED_FUNCTION_0_8();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_21784EC8C(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v4 = a1[2];
  v3 = a1[3];
  type metadata accessor for MusicPicker.SheetPresentationModifier();
  OUTLINED_FUNCTION_0_5();
  sub_21796698C();
  OUTLINED_FUNCTION_1_8();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_1();
  return swift_getWitnessTable();
}

uint64_t sub_21784ED34()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = type metadata accessor for MusicPicker.SheetPresentationModifier();
  v4 = *(*(v3 - 1) + 64);
  v5 = (v0 + ((*(*(v3 - 1) + 80) + 32) & ~*(*(v3 - 1) + 80)));
  v6 = *v5;

  v7 = v5[1];

  v8 = v5 + v3[9];
  v9 = *v8;

  v10 = *(v8 + 1);

  sub_21796944C();
  v11 = *(sub_217967D5C() + 32);
  if (!__swift_getEnumTagSinglePayload(&v8[v11], 1, v2))
  {
    (*(*(v2 - 8) + 8))(&v8[v11], v2);
  }

  v12 = (v5 + v3[10]);
  v13 = *v12;

  v14 = v12[1];

  v15 = v12[2];

  v16 = v5 + v3[12];
  v17 = v16[8];
  if (v17 != 255)
  {
    sub_2178BF424(*v16, v17);
  }

  v18 = *(v5 + v3[13] + 8);

  return swift_deallocObject();
}

uint64_t sub_21784EEC8(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  OUTLINED_FUNCTION_0_5();
  type metadata accessor for MusicPicker.SheetPresentationModifier();
  OUTLINED_FUNCTION_1_8();
  swift_getWitnessTable();
  sub_2179670BC();
  OUTLINED_FUNCTION_0_5();
  _s17MainViewContainerVMa();
  sub_21796698C();
  swift_getWitnessTable();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_1();
  swift_getWitnessTable();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_21784EFC8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_21784F000(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  sub_21796698C();
  sub_2178C6D34();
  return swift_getWitnessTable();
}

uint64_t sub_21784F064()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8C458, &qword_21796DBE8);
  sub_2179664EC();
  sub_2178C6E30();
  sub_2178C6E94();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_21784F14C()
{
  swift_weakDestroy();
  OUTLINED_FUNCTION_27_2();

  return swift_deallocObject();
}

uint64_t sub_21784F180()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return swift_deallocObject();
}

uint64_t sub_21784F1C8()
{
  v1 = sub_2179688CC();
  OUTLINED_FUNCTION_2(v1);
  v3 = v2;
  v4 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v6 = (*(v5 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v0 + 16);
  swift_unknownObjectRelease();
  (*(v3 + 8))(v0 + v4, v1);
  v8 = *(v0 + v6);

  return swift_deallocObject();
}

uint64_t sub_21784F294()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return swift_deallocObject();
}

uint64_t sub_21784F2D4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = sub_2178C93B0();
  *a2 = result & 1;
  return result;
}

uint64_t sub_21784F304(unsigned __int8 *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  return sub_2178C9424();
}

uint64_t sub_21784F330(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_217968DFC();
  if (*(*(v6 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 36) + 16);
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    v9 = v8 - 1;
    if (v9 < 0)
    {
      v9 = -1;
    }

    return (v9 + 1);
  }
}

uint64_t sub_21784F3EC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_217968DFC();
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 36) + 16) = a2;
  }

  return result;
}

uint64_t sub_21784F498()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = (_s17PlaylistEntryCellVMa() - 8);
  v4 = *(*v3 + 64);
  v5 = v0 + ((*(*v3 + 80) + 32) & ~*(*v3 + 80));
  v6 = sub_217968DFC();
  OUTLINED_FUNCTION_3(v6);
  (*(v7 + 8))(v5);
  v8 = v5 + v3[11];
  v9 = *(v8 + 16);

  sub_2178643E0(*(v8 + 24));

  return swift_deallocObject();
}

uint64_t sub_21784F588(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  sub_217968DFC();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8C708, &qword_21796E010);
  OUTLINED_FUNCTION_3_10();
  sub_2178CF218(v3, v4);
  OUTLINED_FUNCTION_2_5();
  sub_217864B2C(v5, &qword_27CB8C708, &qword_21796E010);
  _s9HItemCellVMa();
  sub_217966FAC();
  OUTLINED_FUNCTION_5_5();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_4_9();
  sub_2178CF218(v6, v7);
  swift_getOpaqueTypeMetadata2();
  sub_21796698C();
  sub_21796698C();
  swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_21784F758(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a3 + 16);
  v7 = *(*(a3 + 32) + 8);
  v8 = sub_21796810C();
  if (*(*(v8 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(a1, a2, v8);
  }

  else
  {
    v10 = *(a1 + *(a3 + 52) + 16);
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

uint64_t sub_21784F820(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = *(a4 + 16);
  v9 = *(*(a4 + 32) + 8);
  result = sub_21796810C();
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 52) + 16) = a2;
  }

  return result;
}

uint64_t sub_21784F8D8()
{
  v9 = *(v0 + 32);
  v10 = *(v0 + 16);
  v1 = (_s17SearchContentViewVMa() - 8);
  v2 = *(*v1 + 64);
  v3 = v0 + ((*(*v1 + 80) + 48) & ~*(*v1 + 80));
  v4 = *(v9 + 8);
  v5 = sub_21796810C();
  (*(*(v5 - 8) + 8))(v3, v5);
  v6 = v3 + v1[15];
  v7 = *(v6 + 16);

  sub_2178643E0(*(v6 + 24));
  return swift_deallocObject();
}

uint64_t sub_21784F9EC(__int128 *a1)
{
  v5 = *a1;
  v1 = *(a1 + 2);
  v2 = *(v1 + 8);
  sub_21796810C();
  v3 = *(v1 + 40);
  swift_getAssociatedTypeWitness();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8A6E0, &qword_21796A8E0);
  _s16SearchResultCellVMa();
  swift_getTupleTypeMetadata2();
  sub_217967E9C();
  OUTLINED_FUNCTION_6_1();
  swift_getWitnessTable();
  swift_getAssociatedConformanceWitness();
  sub_217967D9C();
  sub_21796698C();
  OUTLINED_FUNCTION_19_0();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_10_3();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_1();
  swift_getWitnessTable();
  sub_21796665C();
  OUTLINED_FUNCTION_18_0();
  return swift_getWitnessTable();
}

uint64_t sub_21784FB84()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return swift_deallocObject();
}

uint64_t sub_21784FBC8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_217968C2C();
  if (*(*(v6 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 24));
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    v9 = v8 - 1;
    if (v9 < 0)
    {
      v9 = -1;
    }

    return (v9 + 1);
  }
}

uint64_t sub_21784FC80(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_217968C2C();
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24)) = a2;
  }

  return result;
}

uint64_t sub_21784FD28()
{
  OUTLINED_FUNCTION_0_10();
  result = MusicSubscriptionOffer.Options.figaroCampaignToken.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_21784FD7C()
{
  OUTLINED_FUNCTION_0_10();
  result = MusicSubscriptionOffer.Options.figaroCampaignGroup.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_21784FDD0()
{
  OUTLINED_FUNCTION_0_10();
  result = MusicSubscriptionOffer.Options.homePodSerialNumber.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_21784FE24()
{
  OUTLINED_FUNCTION_0_10();
  result = MusicSubscriptionOffer.Options.homePodUniqueDeviceIdentifier.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_21784FE9C()
{
  swift_weakDestroy();
  OUTLINED_FUNCTION_27_2();

  return swift_deallocObject();
}

uint64_t sub_21784FED0()
{
  v1 = *(v0 + 32);

  OUTLINED_FUNCTION_137();

  return swift_deallocObject();
}

__n128 sub_21784FF10(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_21784FF38()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  sub_2178BF424(*(v0 + 48), *(v0 + 56));
  v2 = *(v0 + 64);

  OUTLINED_FUNCTION_116();

  return swift_deallocObject();
}

uint64_t sub_21784FFDC()
{
  v1 = *(v0 + 24);

  OUTLINED_FUNCTION_171();

  return swift_deallocObject();
}

uint64_t sub_21785003C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  _s9ViewModelCMa();
  OUTLINED_FUNCTION_95_0();
  v3 = sub_2179687DC();
  OUTLINED_FUNCTION_4_1(v3);
  v5 = *(v4 + 64);
  (*(v4 + 8))(v0 + ((*(v4 + 80) + 32) & ~*(v4 + 80)));

  return swift_deallocObject();
}

uint64_t sub_2178500C4()
{
  v1 = *(v0 + 4);
  v2 = *(v0 + 5);
  _s9ViewModelCMa();
  OUTLINED_FUNCTION_95_0();
  v3 = sub_2179687DC();
  OUTLINED_FUNCTION_2(v3);
  v5 = v4;
  v6 = (*(v4 + 80) + 48) & ~*(v4 + 80);
  v8 = *(v7 + 64);
  v9 = *(v0 + 2);
  swift_unknownObjectRelease();
  (*(v5 + 8))(&v0[v6], v3);

  return swift_deallocObject();
}

uint64_t sub_217850188(uint64_t *a1)
{
  OUTLINED_FUNCTION_79_1(a1);
  sub_2178DA64C();
  return OUTLINED_FUNCTION_225(v1);
}

void sub_2178501D8(uint64_t *a1)
{
  OUTLINED_FUNCTION_79_1(a1);
  sub_2178D8A04();
  *v1 = v2;
}

uint64_t sub_2178503FC(uint64_t *a1)
{
  OUTLINED_FUNCTION_79_1(a1);
  result = sub_2178D86A8();
  *v1 = result;
  return result;
}

void sub_217850454(uint64_t *a1)
{
  OUTLINED_FUNCTION_79_1(a1);
  sub_2178D8634();
  *v1 = v2;
}

void sub_217850484(uint64_t *a1)
{
  OUTLINED_FUNCTION_79_1(a1);
  sub_2178D860C();
  *v1 = v2;
}

uint64_t sub_2178506A8(uint64_t *a1)
{
  OUTLINED_FUNCTION_79_1(a1);
  sub_2178D83B0();
  return OUTLINED_FUNCTION_225(v1);
}

uint64_t sub_2178506F8(uint64_t *a1)
{
  OUTLINED_FUNCTION_79_1(a1);
  sub_2178D8388();
  return OUTLINED_FUNCTION_225(v1);
}

uint64_t sub_2178507C8(uint64_t *a1)
{
  OUTLINED_FUNCTION_79_1(a1);
  result = sub_2178D8034();
  *v1 = result;
  v1[1] = v3;
  return result;
}

uint64_t sub_2178507F8(uint64_t *a1)
{
  OUTLINED_FUNCTION_79_1(a1);
  sub_2178D75C4();
  return OUTLINED_FUNCTION_225(v1);
}

void sub_217850848(uint64_t *a1)
{
  OUTLINED_FUNCTION_79_1(a1);
  sub_2178D759C();
  *v1 = v2;
}

uint64_t sub_2178508AC()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 48);

  return swift_deallocObject();
}

uint64_t sub_2178508F4()
{
  OUTLINED_FUNCTION_81();
  v1 = *(v0 + 5);
  v2 = sub_21796595C();
  OUTLINED_FUNCTION_2(v2);
  v4 = v3;
  v5 = (*(v3 + 80) + 72) & ~*(v3 + 80);
  v7 = *(v1 - 8);
  v8 = (v5 + *(v6 + 64) + *(v7 + 80)) & ~*(v7 + 80);
  v9 = *(v7 + 64);
  v10 = *(v0 + 2);
  swift_unknownObjectRelease();
  v11 = *(v0 + 8);

  (*(v4 + 8))(&v0[v5], v2);
  (*(v7 + 8))(&v0[v8], v1);
  OUTLINED_FUNCTION_80();

  return swift_deallocObject();
}

uint64_t sub_217850B6C()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_217850BA4()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 80);

  return swift_deallocObject();
}

uint64_t sub_217850BFC()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_217850C3C(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_217967BCC();
    v9 = a1 + *(a3 + 72);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

uint64_t sub_217850CC4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_217967BCC();
    v8 = v5 + *(a4 + 72);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_217850D44(uint64_t *a1)
{
  v1 = a1[3];
  v9 = *a1;
  v10 = a1[2];
  v11 = a1[5];
  swift_getOpaqueTypeMetadata2();
  OUTLINED_FUNCTION_33();
  sub_21796732C();
  OUTLINED_FUNCTION_12();
  sub_21796698C();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8CDF8, &unk_21796F438);
  _s9CellTitleVMa();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8A898, &unk_21796ACA0);
  OUTLINED_FUNCTION_4();
  sub_21796698C();
  OUTLINED_FUNCTION_8();
  sub_21796698C();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8CE00, &qword_21796F448);
  OUTLINED_FUNCTION_23_3();
  OUTLINED_FUNCTION_25_2();
  OUTLINED_FUNCTION_8();
  sub_217967E9C();
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_25_2();
  OUTLINED_FUNCTION_8();
  sub_217967E9C();
  OUTLINED_FUNCTION_12();
  sub_217966F9C();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8CE08, &unk_21796F450);
  OUTLINED_FUNCTION_25_2();
  OUTLINED_FUNCTION_8();
  sub_217967E9C();
  sub_217966F9C();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_30_3();
  swift_getWitnessTable();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_30_3();
  swift_getWitnessTable();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_9();
  sub_217967CDC();
  sub_21796698C();
  OUTLINED_FUNCTION_25_2();
  OUTLINED_FUNCTION_8();
  sub_217967E9C();
  OUTLINED_FUNCTION_30_3();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_4();
  sub_217967CAC();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8BB08, &qword_21796C8C0);
  OUTLINED_FUNCTION_9();
  sub_21796698C();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8CE10, &qword_21796F460);
  swift_getWitnessTable();
  OUTLINED_FUNCTION_20_1();
  sub_2178FE83C(v2, &qword_27CB8BB08);
  OUTLINED_FUNCTION_8_9();
  swift_getWitnessTable();
  sub_2178FD4F0();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  OUTLINED_FUNCTION_8();
  sub_21796698C();
  OUTLINED_FUNCTION_33();
  _s38IndividualItemBasedAccessibilityActionVMa();
  OUTLINED_FUNCTION_4();
  sub_21796698C();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8CE30, &unk_21796F470);
  OUTLINED_FUNCTION_4();
  swift_getTupleTypeMetadata2();
  OUTLINED_FUNCTION_8();
  sub_217967E9C();
  OUTLINED_FUNCTION_30_3();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_4();
  sub_217967CAC();
  sub_21796698C();
  sub_21796698C();
  sub_21796698C();
  _s20FailureAlertModifierVMa();
  OUTLINED_FUNCTION_9();
  sub_21796698C();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8C400, &unk_21796F480);
  OUTLINED_FUNCTION_9();
  sub_21796698C();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8ADF0, &qword_21796B500);
  OUTLINED_FUNCTION_12();
  sub_21796698C();
  sub_2179669FC();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_13_8();
  sub_2178FE970(v3, v4);
  swift_getWitnessTable();
  OUTLINED_FUNCTION_14_4();
  sub_2178FE83C(v5, &qword_27CB8C400);
  OUTLINED_FUNCTION_10_7();
  swift_getWitnessTable();
  sub_2178FE83C(&qword_27CB8ADF8, &qword_27CB8ADF0);
  swift_getWitnessTable();
  OUTLINED_FUNCTION_9_7();
  sub_2178FE970(v6, v7);
  swift_getOpaqueTypeMetadata2();
  sub_21796688C();
  OUTLINED_FUNCTION_22_2();
  sub_21796698C();
  OUTLINED_FUNCTION_11_7();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  OUTLINED_FUNCTION_9();
  sub_217966F9C();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  return swift_getWitnessTable();
}

uint64_t sub_2178514B4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2178FEEDC(*v1);
  *a1 = result;
  a1[1] = 0xE700000000000000;
  return result;
}

uint64_t sub_217851510(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_217968A2C();
  if (*(*(v6 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 40) + 8);
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    return (v8 + 1);
  }
}

uint64_t sub_2178515C0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_217968A2C();
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 40) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_21785166C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = (_s14AlbumTrackCellVMa() - 8);
  v4 = *(*v3 + 64);
  v5 = v0 + ((*(*v3 + 80) + 32) & ~*(*v3 + 80));
  v6 = sub_217968A2C();
  OUTLINED_FUNCTION_3(v6);
  (*(v7 + 8))(v5);
  v8 = v5 + v3[11];
  v9 = *(v8 + 16);

  sub_2178643E0(*(v8 + 24));
  v10 = *(v5 + v3[12] + 8);

  return swift_deallocObject();
}

uint64_t sub_21785178C(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  sub_217968A2C();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8D190, &qword_21796FB20);
  OUTLINED_FUNCTION_4_12();
  sub_2179027DC(v3, v4);
  OUTLINED_FUNCTION_2_5();
  sub_2178FE83C(v5, &qword_27CB8D190);
  _s9HItemCellVMa();
  sub_217966FAC();
  OUTLINED_FUNCTION_5_5();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_5_7();
  sub_2179027DC(v6, v7);
  swift_getOpaqueTypeMetadata2();
  sub_21796698C();
  sub_21796698C();
  swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_217851A64()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_217851A9C()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  OUTLINED_FUNCTION_137();

  return swift_deallocObject();
}

uint64_t sub_217851AD8()
{
  v1 = *(_s23PlaylistDetailViewModelC12LoadingStateOMa(0) - 8);
  v2 = (*(v1 + 80) + 40) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = *(v0 + 16);
  swift_unknownObjectRelease();
  v5 = *(v0 + 32);

  v6 = v0 + v2;
  OUTLINED_FUNCTION_68_2();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
    v9 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8AB18, &unk_21796FEE0) + 48);
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8AAE8, &qword_21796AFA0);
    OUTLINED_FUNCTION_4_1(v10);
    (*(v11 + 8))(v6 + v9);
  }

  else if (!EnumCaseMultiPayload)
  {
    v8 = *(v6 + 8);
  }

  return swift_deallocObject();
}

uint64_t sub_217851C00@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  result = sub_217903B40();
  *a2 = result;
  *(a2 + 8) = v5 & 1;
  return result;
}

uint64_t sub_217851C38(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = *(a3 + 16);
    v9 = *(a3 + 24);
    v10 = sub_21796821C();
    v11 = a1 + *(a3 + 48);

    return __swift_getEnumTagSinglePayload(v11, a2, v10);
  }
}

uint64_t sub_217851CC4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = *(a4 + 16);
    v8 = *(a4 + 24);
    v9 = sub_21796821C();
    v10 = v5 + *(a4 + 48);

    return __swift_storeEnumTagSinglePayload(v10, a2, a2, v9);
  }

  return result;
}

uint64_t sub_217851D84()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = (_s11ArtworkViewVMa() - 8);
  v4 = (*(*v3 + 80) + 32) & ~*(*v3 + 80);
  v5 = *(*v3 + 64);
  (*(*(v2 - 8) + 8))(v0 + v4, v2);
  v6 = *(v0 + v4 + v3[14] + 8);

  return swift_deallocObject();
}

uint64_t sub_217851EC0(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[2];
  OUTLINED_FUNCTION_48_0();
  _s11ArtworkViewVMa();
  sub_21796698C();
  sub_21796732C();
  sub_21796698C();
  OUTLINED_FUNCTION_48_0();
  _s9CellTitleVMa();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8A898, &unk_21796ACA0);
  OUTLINED_FUNCTION_9();
  sub_21796698C();
  OUTLINED_FUNCTION_8();
  sub_21796698C();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8D790, &qword_2179704F8);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_75();
  OUTLINED_FUNCTION_8();
  sub_217967E9C();
  OUTLINED_FUNCTION_8();
  sub_217967B7C();
  OUTLINED_FUNCTION_8();
  sub_21796698C();
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_75();
  OUTLINED_FUNCTION_8();
  sub_217967E9C();
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_9();
  sub_217967CDC();
  OUTLINED_FUNCTION_7_11();
  sub_21796688C();
  OUTLINED_FUNCTION_48_0();
  sub_21796698C();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8ADF0, &qword_21796B500);
  OUTLINED_FUNCTION_9();
  sub_21796698C();
  sub_2179669FC();
  OUTLINED_FUNCTION_11_7();
  swift_getWitnessTable();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_20_1();
  sub_217864B2C(v3, &qword_27CB8ADF0, &qword_21796B500);
  swift_getWitnessTable();
  OUTLINED_FUNCTION_1_16();
  sub_217910E88(v4, v5);
  swift_getOpaqueTypeMetadata2();
  sub_217966FAC();
  swift_getOpaqueTypeConformance2();
  OUTLINED_FUNCTION_3_14();
  sub_217910E88(v6, v7);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_2178521C0()
{
  v1 = *(v0 + 32);

  return swift_deallocObject();
}

uint64_t sub_2178521FC(uint64_t *a1)
{
  v20 = *a1;
  v21 = a1[1];
  _s34NavigationDestinationsViewModifierVMa();
  OUTLINED_FUNCTION_58_3();
  OUTLINED_FUNCTION_12();
  sub_2179670BC();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8B0C0, &unk_2179705C0);
  OUTLINED_FUNCTION_61_2();
  _s15AlbumDetailViewVMa();
  sub_21796698C();
  OUTLINED_FUNCTION_61_2();
  _s16ArtistDetailViewVMa();
  sub_21796698C();
  sub_217966F9C();
  OUTLINED_FUNCTION_61_2();
  _s18PlaylistDetailViewVMa();
  OUTLINED_FUNCTION_61_2();
  _s24PlaylistFolderDetailViewVMa();
  sub_217966F9C();
  sub_217966F9C();
  sub_217966F9C();
  OUTLINED_FUNCTION_45_2();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_44_2();
  sub_217864B2C(v1, &qword_27CB8B0C0, &unk_2179705C0);
  OUTLINED_FUNCTION_3_15();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_56_4();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_2_10();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_1_17();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_0_15();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8AF58, &qword_21796B660);
  swift_getOpaqueTypeConformance2();
  sub_217864B2C(&qword_27CB8AF70, &qword_27CB8AF58, &qword_21796B660);
  OUTLINED_FUNCTION_29_4();
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8D820, &qword_2179705D0);
  OUTLINED_FUNCTION_43_2();
  sub_217864B2C(&qword_27CB8D828, &qword_27CB8D820, &qword_2179705D0);
  OUTLINED_FUNCTION_13_9();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8D830, &qword_2179705D8);
  OUTLINED_FUNCTION_25_4();
  sub_217864B2C(&qword_27CB8D838, &qword_27CB8D830, &qword_2179705D8);
  OUTLINED_FUNCTION_13_9();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8D840, &qword_2179705E0);
  OUTLINED_FUNCTION_25_4();
  sub_217864B2C(&qword_27CB8D848, &qword_27CB8D840, &qword_2179705E0);
  OUTLINED_FUNCTION_13_9();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8D850, &qword_2179705E8);
  OUTLINED_FUNCTION_25_4();
  sub_217864B2C(&qword_27CB8D858, &qword_27CB8D850, &qword_2179705E8);
  OUTLINED_FUNCTION_13_9();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8D860, &qword_2179705F0);
  OUTLINED_FUNCTION_25_4();
  sub_217864B2C(&qword_27CB8D868, &qword_27CB8D860, &qword_2179705F0);
  OUTLINED_FUNCTION_13_9();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8D870, &qword_2179705F8);
  OUTLINED_FUNCTION_25_4();
  sub_217864B2C(&qword_27CB8D878, &qword_27CB8D870, &qword_2179705F8);
  OUTLINED_FUNCTION_13_9();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8D880, &qword_217970600);
  OUTLINED_FUNCTION_43_2();
  sub_217864B2C(&qword_27CB8D888, &qword_27CB8D880, &qword_217970600);
  OUTLINED_FUNCTION_24_7();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8D890, &qword_217970608);
  sub_2179688CC();
  OUTLINED_FUNCTION_52_3();
  sub_217916A20(v2, v3);
  OUTLINED_FUNCTION_29_4();
  _s21AdditionalContentViewVMa();
  OUTLINED_FUNCTION_43_2();
  sub_217864B2C(&qword_27CB8D898, &qword_27CB8D890, &qword_217970608);
  OUTLINED_FUNCTION_15_6();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_24_7();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8D8A0, &qword_217970610);
  sub_217968A2C();
  OUTLINED_FUNCTION_50_3();
  sub_217916A20(v4, v5);
  OUTLINED_FUNCTION_29_4();
  _s21AdditionalContentViewVMa();
  swift_getOpaqueTypeConformance2();
  sub_217864B2C(&qword_27CB8D8A8, &qword_27CB8D8A0, &qword_217970610);
  swift_getWitnessTable();
  OUTLINED_FUNCTION_29_4();
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8D8B0, &qword_217970618);
  sub_217968E3C();
  OUTLINED_FUNCTION_49_3();
  sub_217916A20(v6, v7);
  OUTLINED_FUNCTION_29_4();
  _s21AdditionalContentViewVMa();
  OUTLINED_FUNCTION_95_1();
  sub_217864B2C(&qword_27CB8D8B8, &qword_27CB8D8B0, &qword_217970618);
  swift_getWitnessTable();
  OUTLINED_FUNCTION_29_4();
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8D8C0, &qword_217970620);
  sub_2179689AC();
  OUTLINED_FUNCTION_47_3();
  sub_217916A20(v8, v9);
  OUTLINED_FUNCTION_29_4();
  _s21AdditionalContentViewVMa();
  swift_getOpaqueTypeConformance2();
  sub_217864B2C(&qword_27CB8D8C8, &qword_27CB8D8C0, &qword_217970620);
  OUTLINED_FUNCTION_65_4();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_29_4();
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8D8D0, &qword_217970628);
  sub_217968AFC();
  OUTLINED_FUNCTION_55_3();
  sub_217916A20(v10, v11);
  OUTLINED_FUNCTION_29_4();
  _s21AdditionalContentViewVMa();
  swift_getOpaqueTypeConformance2();
  sub_217864B2C(&qword_27CB8D8D8, &qword_27CB8D8D0, &qword_217970628);
  swift_getWitnessTable();
  OUTLINED_FUNCTION_29_4();
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8D8E0, &qword_217970630);
  OUTLINED_FUNCTION_29_4();
  _s25LibrarySectionContentViewVMa();
  sub_21796732C();
  sub_21796698C();
  swift_getOpaqueTypeConformance2();
  OUTLINED_FUNCTION_53_2();
  sub_217864B2C(v12, &qword_27CB8D8E0, &qword_217970630);
  OUTLINED_FUNCTION_17_8();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_16_5();
  sub_217916A20(v13, v14);
  swift_getWitnessTable();
  OUTLINED_FUNCTION_29_4();
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8D8F0, &qword_217970638);
  OUTLINED_FUNCTION_29_4();
  _s25LibrarySectionContentViewVMa();
  OUTLINED_FUNCTION_12();
  sub_21796698C();
  swift_getOpaqueTypeConformance2();
  sub_217864B2C(&qword_27CB8D8F8, &qword_27CB8D8F0, &qword_217970638);
  swift_getWitnessTable();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_29_4();
  OUTLINED_FUNCTION_76_2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8D900, &qword_217970640);
  OUTLINED_FUNCTION_29_4();
  _s25LibrarySectionContentViewVMa();
  OUTLINED_FUNCTION_12();
  sub_21796698C();
  swift_getOpaqueTypeConformance2();
  sub_217864B2C(&qword_27CB8D908, &qword_27CB8D900, &qword_217970640);
  swift_getWitnessTable();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_29_4();
  OUTLINED_FUNCTION_76_2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8D910, &qword_217970648);
  sub_21796591C();
  v15 = MEMORY[0x277D2A350];
  sub_217916A20(&qword_27CB8BFA8, MEMORY[0x277D2A350]);
  OUTLINED_FUNCTION_5_2();
  sub_217916A20(v16, v15);
  OUTLINED_FUNCTION_29_4();
  _s25LibrarySectionContentViewVMa();
  OUTLINED_FUNCTION_27_4();
  sub_21796698C();
  swift_getOpaqueTypeConformance2();
  sub_217864B2C(&qword_27CB8D918, &qword_27CB8D910, &qword_217970648);
  swift_getWitnessTable();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_29_4();
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8D920, &qword_217970650);
  sub_217968CFC();
  v17 = MEMORY[0x277D2B358];
  sub_217916A20(&qword_27CB8BF98, MEMORY[0x277D2B358]);
  OUTLINED_FUNCTION_7_3();
  sub_217916A20(v18, v17);
  OUTLINED_FUNCTION_29_4();
  _s25LibrarySectionContentViewVMa();
  OUTLINED_FUNCTION_27_4();
  sub_21796698C();
  OUTLINED_FUNCTION_95_1();
  sub_217864B2C(&qword_27CB8D928, &qword_27CB8D920, &qword_217970650);
  swift_getWitnessTable();
  swift_getWitnessTable();
  return OUTLINED_FUNCTION_95_1();
}

uint64_t sub_2178532B0(__int128 *a1)
{
  v6 = *a1;
  v7 = a1[1];
  _s11ArtworkViewVMa();
  sub_21796698C();
  sub_21796698C();
  sub_21796698C();
  sub_21796732C();
  sub_21796698C();
  OUTLINED_FUNCTION_3_17();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_4_4();
  sub_2178B423C(v1, v2);
  swift_getWitnessTable();
  _s9HItemCellVMa();
  OUTLINED_FUNCTION_5_11();
  swift_getOpaqueTypeMetadata2();
  sub_21796698C();
  sub_21796698C();
  sub_21796698C();
  swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  sub_217966FAC();
  swift_getOpaqueTypeConformance2();
  OUTLINED_FUNCTION_1_20();
  sub_2178B423C(v3, v4);
  OUTLINED_FUNCTION_4_14();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_2178535D4(uint64_t a1, int a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    return OUTLINED_FUNCTION_11_10();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8DA90, &qword_2179713F0);
  v5 = OUTLINED_FUNCTION_15_8(*(a3 + 24));

  return __swift_getEnumTagSinglePayload(v5, v6, v7);
}

void sub_217853654()
{
  OUTLINED_FUNCTION_16_7();
  if (v3)
  {
    *(v1 + 8) = (v0 - 1);
  }

  else
  {
    v4 = v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8DA90, &qword_2179713F0);
    v5 = OUTLINED_FUNCTION_15_8(*(v4 + 24));

    __swift_storeEnumTagSinglePayload(v5, v6, v0, v7);
  }
}

uint64_t sub_2178536D0(uint64_t a1, int a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    return OUTLINED_FUNCTION_11_10();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8BA20, &qword_217971410);
  v5 = OUTLINED_FUNCTION_15_8(*(a3 + 20));

  return __swift_getEnumTagSinglePayload(v5, v6, v7);
}

void sub_217853750()
{
  OUTLINED_FUNCTION_16_7();
  if (v3)
  {
    *(v1 + 8) = (v0 - 1);
  }

  else
  {
    v4 = v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8BA20, &qword_217971410);
    v5 = OUTLINED_FUNCTION_15_8(*(v4 + 20));

    __swift_storeEnumTagSinglePayload(v5, v6, v0, v7);
  }
}

uint64_t sub_2178537CC(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8B218, &unk_217970AE0);
    v9 = a1 + *(a3 + 24);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

uint64_t sub_217853860(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8B218, &unk_217970AE0);
    v8 = v5 + *(a4 + 24);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_217853950(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = *(a3 + 16);
    v9 = *(*(a3 + 32) + 8);
    v10 = sub_21796810C();
    if (*(*(v10 - 8) + 84) == a2)
    {
      v11 = v10;
      v12 = *(a3 + 52);
    }

    else
    {
      v11 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CB8DB98, &qword_217970CE0);
      v12 = *(a3 + 84);
    }

    return __swift_getEnumTagSinglePayload(a1 + v12, a2, v11);
  }
}

uint64_t sub_217853A34(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = *(a4 + 16);
    v9 = *(*(a4 + 32) + 8);
    v10 = sub_21796810C();
    if (*(*(v10 - 8) + 84) == a3)
    {
      v11 = v10;
      v12 = *(a4 + 52);
    }

    else
    {
      v11 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CB8DB98, &qword_217970CE0);
      v12 = *(a4 + 84);
    }

    return __swift_storeEnumTagSinglePayload(v5 + v12, a2, a2, v11);
  }

  return result;
}

uint64_t sub_217853B20(__int128 *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8DD30, &qword_217970EE8);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8DD38, &qword_217970EF0);
  v3 = *a1;
  v4 = a1[1];
  _s12ItemShelfRowVMa();
  sub_21796698C();
  sub_217926268();
  sub_217967D9C();
  OUTLINED_FUNCTION_11_11();
  swift_getWitnessTable();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_10_3();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_9();
  sub_217967CAC();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8BB08, &qword_21796C8C0);
  OUTLINED_FUNCTION_9();
  sub_21796698C();
  OUTLINED_FUNCTION_14_6();
  OUTLINED_FUNCTION_16_8(&unk_27CB8BB00);
  swift_getWitnessTable();
  OUTLINED_FUNCTION_7_13();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  OUTLINED_FUNCTION_9();
  sub_21796666C();
  OUTLINED_FUNCTION_36();
  sub_21796698C();
  sub_21796736C();
  OUTLINED_FUNCTION_15_9();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_5_12();
  swift_getOpaqueTypeMetadata2();
  sub_21796698C();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8DD50, &qword_217970EF8);
  OUTLINED_FUNCTION_9();
  sub_21796698C();
  sub_21796717C();
  OUTLINED_FUNCTION_9();
  sub_21796698C();
  sub_21796698C();
  OUTLINED_FUNCTION_9();
  swift_getTupleTypeMetadata2();
  sub_217967E9C();
  OUTLINED_FUNCTION_19_0();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_9();
  sub_217967CDC();
  sub_21796698C();
  sub_21796698C();
  OUTLINED_FUNCTION_36();
  sub_21796944C();
  OUTLINED_FUNCTION_7_1();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_0_3();
  return swift_getWitnessTable();
}

uint64_t sub_217853E84()
{
  v1 = *(v0 + 32);

  sub_2178643E0(*(v0 + 40));

  return swift_deallocObject();
}

uint64_t sub_217853EC4(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = *(a3 + 16);
    v9 = *(*(a3 + 32) + 8);
    sub_21796810C();
    v10 = sub_217967C4C();
    v11 = a1 + *(a3 + 72);

    return __swift_getEnumTagSinglePayload(v11, a2, v10);
  }
}

uint64_t sub_217853F64(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = *(a4 + 16);
    v8 = *(*(a4 + 32) + 8);
    sub_21796810C();
    v9 = sub_217967C4C();
    v10 = v5 + *(a4 + 72);

    return __swift_storeEnumTagSinglePayload(v10, a2, a2, v9);
  }

  return result;
}

uint64_t sub_217854000()
{
  v25 = *(v1 + 16);
  v24 = *(v1 + 32);
  v2 = OUTLINED_FUNCTION_29_5();
  OUTLINED_FUNCTION_13(v2);
  v5 = *(v4 + 64);
  v6 = (*(v3 + 80) + 48) & ~*(v3 + 80);
  v7 = v25;
  OUTLINED_FUNCTION_0_1();
  v9 = v8;
  v10 = *(v8 + 80);
  *&v25 = *(v11 + 64);
  v12 = v1 + v6;
  v13 = *(v1 + v6 + 8);

  v14 = *(v1 + v6 + 40);

  sub_2178643E0(*(v1 + v6 + 48));
  v15 = *(v1 + v6 + 64);

  if (*(v1 + v6 + 120))
  {
    if (*(v12 + 104))
    {
      __swift_destroy_boxed_opaque_existential_1((v12 + 80));
    }
  }

  else
  {
    v16 = *(v12 + 80);
  }

  v17 = (v6 + v5 + v10) & ~v10;
  v18 = v12 + *(v0 + 72);
  v19 = *(v24 + 8);
  v20 = sub_21796810C();
  OUTLINED_FUNCTION_3(v20);
  (*(v21 + 8))(v18, v20);
  v22 = *(v18 + *(sub_217967C4C() + 28));

  OUTLINED_FUNCTION_25_5();
  OUTLINED_FUNCTION_24_8();
  OUTLINED_FUNCTION_15_10();
  sub_2178643E0(*(v0 + 24));
  (*(v9 + 8))(v1 + v17, v7);
  return swift_deallocObject();
}

uint64_t sub_2178541E4()
{
  v27 = *(v1 + 32);
  v26 = *(v1 + 48);
  v3 = OUTLINED_FUNCTION_29_5();
  OUTLINED_FUNCTION_13(v3);
  v5 = (*(v4 + 80) + 64) & ~*(v4 + 80);
  v7 = *(v6 + 64);
  v8 = *(v1 + 16);
  swift_unknownObjectRelease();
  v9 = v1 + v5;
  v10 = *(v1 + v5 + 8);

  v11 = *(v1 + v5 + 40);

  sub_2178643E0(*(v1 + v5 + 48));
  v12 = *(v1 + v5 + 64);

  if (*(v1 + v5 + 120))
  {
    if (*(v9 + 104))
    {
      v13 = __swift_destroy_boxed_opaque_existential_1((v9 + 80));
    }
  }

  else
  {
    v21 = *(v9 + 80);
  }

  v22 = OUTLINED_FUNCTION_16_9(v13, v14, v15, v16, v17, v18, v19, v20, v26);
  OUTLINED_FUNCTION_3(v22);
  (*(v23 + 8))(v2, v22);
  v24 = *(v2 + *(sub_217967C4C() + 28));

  OUTLINED_FUNCTION_25_5();
  OUTLINED_FUNCTION_24_8();
  OUTLINED_FUNCTION_15_10();
  sub_2178643E0(*(v0 + 24));
  return swift_deallocObject();
}

uint64_t sub_217854334(uint64_t *a1)
{
  v1 = *a1;
  v9 = a1[1];
  v2 = a1[2];
  v3 = a1[3];
  v4 = *(v2 + 8);
  sub_21796810C();
  v5 = *(v2 + 40);
  swift_getAssociatedTypeWitness();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8A6E0, &qword_21796A8E0);
  _s13ItemShelfCellVMa();
  OUTLINED_FUNCTION_13_11();
  swift_getOpaqueTypeMetadata2();
  sub_21796732C();
  sub_21796698C();
  sub_21796698C();
  OUTLINED_FUNCTION_8();
  sub_21796698C();
  sub_21796698C();
  OUTLINED_FUNCTION_2_13();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_9();
  sub_217966DCC();
  OUTLINED_FUNCTION_9();
  sub_21796698C();
  OUTLINED_FUNCTION_9();
  swift_getTupleTypeMetadata2();
  OUTLINED_FUNCTION_8();
  sub_217967E9C();
  OUTLINED_FUNCTION_6_1();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_27_5();
  swift_getAssociatedConformanceWitness();
  sub_217967D9C();
  OUTLINED_FUNCTION_19_0();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_10_3();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_9();
  sub_21796665C();
  OUTLINED_FUNCTION_18_0();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  OUTLINED_FUNCTION_8();
  sub_21796698C();
  sub_21796698C();
  OUTLINED_FUNCTION_23_6();
  OUTLINED_FUNCTION_4_16();
  sub_21792C55C(v6, v7);
  swift_getWitnessTable();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_9();
  sub_21796666C();
  OUTLINED_FUNCTION_12_9();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_9();
  sub_21796686C();
  OUTLINED_FUNCTION_19();
  swift_getWitnessTable();
  sub_217873C34();
  swift_getOpaqueTypeMetadata2();
  _s18NavigationBarStyleVMa();
  sub_21796698C();
  _s15DoneToolbarItemVMa();
  OUTLINED_FUNCTION_16();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  OUTLINED_FUNCTION_17();
  swift_getWitnessTable();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_23_6();
  swift_getOpaqueTypeMetadata2();
  sub_21796698C();
  sub_21796698C();
  OUTLINED_FUNCTION_23_6();
  sub_217864644();
  OUTLINED_FUNCTION_27_5();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_217854800@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = MusicLibraryPlaylistViewModel.rawCoverArtworkRecipe.getter();
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_217854830()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  _s18NavigationBarStyleVMa();
  OUTLINED_FUNCTION_0_19();
  swift_getWitnessTable();
  v3 = sub_2179670BC();
  v4 = *(v3 - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = (*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v4 + 8))(v0 + v5, v3);
  v7 = *(v0 + v6);

  return swift_deallocObject();
}

uint64_t sub_2178548F0(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  _s18NavigationBarStyleVMa();
  OUTLINED_FUNCTION_0_19();
  swift_getWitnessTable();
  sub_2179670BC();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8E030, &qword_217971330);
  OUTLINED_FUNCTION_45_2();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  sub_217967E0C();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  OUTLINED_FUNCTION_3_19();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  sub_21792EBC8();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  sub_21796686C();
  OUTLINED_FUNCTION_19();
  return swift_getWitnessTable();
}

uint64_t sub_217854B78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8A788, &qword_21796A960);
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

uint64_t sub_217854C30(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8A788, &qword_21796A960);
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

uint64_t sub_217854CE4()
{
  v4 = _s20FailureAlertModifierVMa();
  OUTLINED_FUNCTION_13(v4);
  v7 = *(v6 + 64);
  v8 = (v1 + ((*(v5 + 80) + 16) & ~*(v5 + 80)));
  v9 = *v8;

  v10 = v8[1];

  v11 = v8 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8A788, &qword_21796A960) + 32);
  v12 = _s5AlertVMa(0);
  if (!OUTLINED_FUNCTION_52_0(v12))
  {
    v13 = *(v11 + 1);

    v14 = *(v11 + 3);

    v15 = &v11[*(v2 + 24)];
    v16 = _s5AlertV7ControlVMa(0);
    if (!OUTLINED_FUNCTION_55_0(v16))
    {
      v17 = *(v15 + 1);

      v18 = *(v3 + 20);
      v19 = sub_2179665FC();
      if (!OUTLINED_FUNCTION_4_17(v19))
      {
        OUTLINED_FUNCTION_10(v27);
        (*(v20 + 8))(&v15[v21]);
      }
    }

    if (!OUTLINED_FUNCTION_3_20())
    {
      v22 = *(v11 + 1);

      v23 = *(v3 + 20);
      v24 = sub_2179665FC();
      if (!OUTLINED_FUNCTION_8_12(v24))
      {
        OUTLINED_FUNCTION_10(v2);
        (*(v25 + 8))(&v11[v23], v2);
      }
    }
  }

  OUTLINED_FUNCTION_10_9(*(v0 + 20));
  OUTLINED_FUNCTION_10_9(*(v0 + 24));

  return swift_deallocObject();
}

uint64_t sub_217854EA4()
{
  OUTLINED_FUNCTION_86();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8E0C0, &qword_2179713F8);
  OUTLINED_FUNCTION_3(v1);
  v3 = *(v2 + 16);
  v4 = OUTLINED_FUNCTION_63_0();
  v5(v4);
  return v0;
}

uint64_t sub_217854F04()
{
  OUTLINED_FUNCTION_86();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8E0B8, &qword_2179713E8);
  OUTLINED_FUNCTION_3(v1);
  v3 = *(v2 + 32);
  v4 = OUTLINED_FUNCTION_63_0();
  v5(v4);
  return v0;
}

uint64_t sub_217854F68()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8E060, &qword_2179713B0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8A578, &qword_21796A750);
  sub_217930670();
  sub_217930878();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_217855020()
{
  sub_217968A2C();
  v0 = OUTLINED_FUNCTION_3_21();

  return __swift_storeEnumTagSinglePayload(v0, v1, v2, v3);
}

uint64_t sub_217855080()
{
  sub_21796870C();
  v0 = OUTLINED_FUNCTION_3_21();

  return __swift_storeEnumTagSinglePayload(v0, v1, v2, v3);
}

uint64_t sub_2178550F0(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  _s38IndividualItemBasedAccessibilityActionVMa();
  OUTLINED_FUNCTION_14_7();
  OUTLINED_FUNCTION_4();
  sub_2179670BC();
  sub_21796732C();
  OUTLINED_FUNCTION_4();
  sub_21796698C();
  OUTLINED_FUNCTION_45_2();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_36_5();
  sub_21793F4A4(v3, v4);
  OUTLINED_FUNCTION_1();
  return swift_getWitnessTable();
}

uint64_t sub_21785518C(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[2];
  _s38IndividualItemBasedAccessibilityActionVMa();
  OUTLINED_FUNCTION_14_7();
  OUTLINED_FUNCTION_4();
  sub_2179670BC();
  sub_21796732C();
  OUTLINED_FUNCTION_4();
  sub_21796698C();
  sub_217966F9C();
  OUTLINED_FUNCTION_45_2();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_36_5();
  sub_21793F4A4(v3, v4);
  OUTLINED_FUNCTION_1();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_21785526C(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(a1[1] + 8);
  _s38IndividualItemBasedAccessibilityActionVMa();
  OUTLINED_FUNCTION_14_7();
  OUTLINED_FUNCTION_4();
  sub_2179670BC();
  OUTLINED_FUNCTION_45_2();

  return swift_getWitnessTable();
}

uint64_t sub_2178552BC()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_217855384()
{
  v9 = *(v0 + 16);
  v10 = *(v0 + 32);
  v1 = (_s16SearchResultCellVMa() - 8);
  v2 = *(*v1 + 64);
  v3 = v0 + ((*(*v1 + 80) + 48) & ~*(*v1 + 80));
  OUTLINED_FUNCTION_10(v9);
  (*(v4 + 8))(v3);
  v5 = v3 + v1[15];
  v6 = *(v5 + 16);

  sub_2178643E0(*(v5 + 24));
  v7 = *(v3 + v1[16] + 8);

  return swift_deallocObject();
}

uint64_t sub_217855494(__int128 *a1)
{
  v6 = *a1;
  v7 = a1[1];
  _s11ArtworkViewVMa();
  sub_21796698C();
  sub_21796698C();
  sub_21796732C();
  sub_21796698C();
  sub_21796944C();
  OUTLINED_FUNCTION_3_17();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_1_23();
  sub_2179425A4(v1, v2);
  swift_getWitnessTable();
  OUTLINED_FUNCTION_0_3();
  swift_getWitnessTable();
  _s9HItemCellVMa();
  OUTLINED_FUNCTION_5_5();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  sub_21796698C();
  sub_217966FAC();
  swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_3_24();
  sub_2179425A4(v3, v4);
  swift_getOpaqueTypeMetadata2();
  sub_21796698C();
  sub_21796698C();
  swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_217855770(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 32);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = *(a3 + 16);
    v9 = *(a3 + 32);
    v10 = sub_21796821C();
    v11 = a1 + *(a3 + 92);

    return __swift_getEnumTagSinglePayload(v11, a2, v10);
  }
}

uint64_t sub_217855800(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 32) = (a2 - 1);
  }

  else
  {
    v7 = *(a4 + 16);
    v8 = *(a4 + 32);
    v9 = sub_21796821C();
    v10 = v5 + *(a4 + 92);

    return __swift_storeEnumTagSinglePayload(v10, a2, a2, v9);
  }

  return result;
}

uint64_t sub_21785588C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8ECF8, &qword_217972160);
  OUTLINED_FUNCTION_3(v4);
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_217855AB0(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[2];
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8EE30, &unk_2179728A0);
  sub_21796698C();
  sub_217864B2C(&qword_27CB8EE38, &qword_27CB8EE30, &unk_2179728A0);
  return swift_getWitnessTable();
}

uint64_t sub_217855B60(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8B0A0, &qword_21796B758);
    v9 = a1 + *(a3 + 24);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

uint64_t sub_217855BF4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 16) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8B0A0, &qword_21796B758);
    v8 = v5 + *(a4 + 24);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_217855D04()
{
  v1 = *(v0 + 40);

  sub_2178643E0(*(v0 + 48));

  return swift_deallocObject();
}

uint64_t sub_217855D44(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = *(a3 + 16);
    v9 = *(a3 + 32);
    v10 = sub_21796821C();
    if (*(*(v10 - 8) + 84) == a2)
    {
      v11 = v10;
      v12 = *(a3 + 72);
    }

    else
    {
      v13 = *(v9 + 8);
      OUTLINED_FUNCTION_36();
      sub_21796810C();
      OUTLINED_FUNCTION_8();
      sub_21796944C();
      OUTLINED_FUNCTION_95_0();
      v11 = sub_217967C4C();
      v12 = *(a3 + 88);
    }

    return __swift_getEnumTagSinglePayload(a1 + v12, a2, v11);
  }
}

uint64_t sub_217855E40(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = *(a4 + 16);
    v9 = *(a4 + 32);
    v10 = sub_21796821C();
    if (*(*(v10 - 8) + 84) == a3)
    {
      v11 = v10;
      v12 = *(a4 + 72);
    }

    else
    {
      v13 = *(v9 + 8);
      OUTLINED_FUNCTION_36();
      sub_21796810C();
      OUTLINED_FUNCTION_8();
      sub_21796944C();
      OUTLINED_FUNCTION_95_0();
      v11 = sub_217967C4C();
      v12 = *(a4 + 88);
    }

    return __swift_storeEnumTagSinglePayload(v5 + v12, a2, a2, v11);
  }

  return result;
}

uint64_t sub_217855F40()
{
  v41 = *(v1 + 16);
  v38 = *(v1 + 32);
  v42 = *(v1 + 48);
  v2 = _s25LibrarySectionContentViewVMa();
  OUTLINED_FUNCTION_13(v2);
  v40 = *(v4 + 64);
  v5 = (*(v3 + 80) + 56) & ~*(v3 + 80);
  v6 = *(v38 + 8);
  v7 = sub_21796810C();
  OUTLINED_FUNCTION_0_1();
  v9 = v8;
  v10 = *(v8 + 80);
  *&v41 = *(v11 + 64);
  v39 = v5;
  v12 = v1 + v5;
  v13 = *(v1 + v5 + 8);

  v14 = *(v1 + v5 + 24);

  v15 = *(v1 + v5 + 56);

  sub_2178643E0(*(v1 + v5 + 64));
  v16 = v0[18];
  v17 = sub_21796821C();
  OUTLINED_FUNCTION_3(v17);
  (*(v18 + 8))(v12 + v16);
  v19 = *(v12 + v0[19]);

  v20 = v12 + v0[20];
  if (*(v20 + 40))
  {
    if (*(v20 + 24))
    {
      __swift_destroy_boxed_opaque_existential_1(v20);
    }
  }

  else
  {
    v21 = *v20;
  }

  v22 = v12 + v0[21];
  v23 = *(v22 + 8);

  v24 = *(v22 + 16);

  if (!OUTLINED_FUNCTION_47_5(v0[22]))
  {
    v25 = *(v9 + 8);
    v26 = OUTLINED_FUNCTION_153();
    v27(v26);
  }

  OUTLINED_FUNCTION_48_0();
  sub_21796944C();
  OUTLINED_FUNCTION_95_0();
  v28 = sub_217967C4C();
  v29 = *(v22 + *(v28 + 28));

  if (!OUTLINED_FUNCTION_47_5(v0[23]))
  {
    v30 = *(v9 + 8);
    v31 = OUTLINED_FUNCTION_153();
    v32(v31);
  }

  v33 = *(v22 + *(v28 + 28));

  sub_2178643E0(*(v12 + v0[24]));
  v34 = v12 + v0[25];
  v35 = *(v34 + 16);

  sub_2178643E0(*(v34 + 24));
  v36 = *(v12 + v0[26] + 8);

  (*(v9 + 8))(v1 + ((v39 + v40 + v10) & ~v10), v7);
  return swift_deallocObject();
}

uint64_t sub_2178561F4(__int128 *a1)
{
  v5 = *a1;
  v6 = *(a1 + 24);
  v1 = *(*(a1 + 2) + 8);
  sub_21796810C();
  v2 = *(v6 + 40);
  swift_getAssociatedTypeWitness();
  _s13ItemShelfCellVMa();
  sub_21796698C();
  OUTLINED_FUNCTION_46_4();
  OUTLINED_FUNCTION_7_15();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_11_13();
  swift_getOpaqueTypeMetadata2();
  sub_21796732C();
  OUTLINED_FUNCTION_9();
  sub_21796698C();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8A6E0, &qword_21796A8E0);
  OUTLINED_FUNCTION_9();
  swift_getTupleTypeMetadata2();
  OUTLINED_FUNCTION_8();
  sub_217967E9C();
  OUTLINED_FUNCTION_6_1();
  swift_getWitnessTable();
  swift_getAssociatedConformanceWitness();
  sub_217967D9C();
  sub_21796944C();
  OUTLINED_FUNCTION_6_12();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_10_3();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_0_3();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_9();
  sub_21796665C();
  OUTLINED_FUNCTION_23_8();
  OUTLINED_FUNCTION_9();
  sub_21796666C();
  OUTLINED_FUNCTION_22_6();
  OUTLINED_FUNCTION_9();
  sub_21796686C();
  OUTLINED_FUNCTION_19();
  swift_getWitnessTable();
  sub_217873C34();
  swift_getOpaqueTypeMetadata2();
  OUTLINED_FUNCTION_41_4();
  _s18NavigationBarStyleVMa();
  OUTLINED_FUNCTION_48_0();
  sub_21796698C();
  OUTLINED_FUNCTION_41_4();
  _s15DoneToolbarItemVMa();
  OUTLINED_FUNCTION_16();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  OUTLINED_FUNCTION_17();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  OUTLINED_FUNCTION_16_11();
  swift_getOpaqueTypeMetadata2();
  OUTLINED_FUNCTION_28_5();
  OUTLINED_FUNCTION_15_12();
  swift_getOpaqueTypeMetadata2();
  OUTLINED_FUNCTION_28_5();
  OUTLINED_FUNCTION_14_8();
  swift_getOpaqueTypeMetadata2();
  OUTLINED_FUNCTION_28_5();
  OUTLINED_FUNCTION_13_12();
  swift_getOpaqueTypeMetadata2();
  OUTLINED_FUNCTION_28_5();
  swift_getOpaqueTypeMetadata2();
  sub_21796698C();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8EFE0, &unk_217972DD0);
  OUTLINED_FUNCTION_9();
  sub_21796698C();
  OUTLINED_FUNCTION_28_5();
  sub_217864644();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_13_2();
  sub_217864B2C(v3, &qword_27CB8EFE0, &unk_217972DD0);
  return swift_getWitnessTable();
}

uint64_t sub_2178567B4(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = *(a3 + 16);
    v9 = *(*(a3 + 32) + 8);
    v10 = sub_21796810C();
    v11 = a1 + *(a3 + 52);

    return __swift_getEnumTagSinglePayload(v11, a2, v10);
  }
}

uint64_t sub_217856848(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = *(a4 + 16);
    v8 = *(*(a4 + 32) + 8);
    v9 = sub_21796810C();
    v10 = v5 + *(a4 + 52);

    return __swift_storeEnumTagSinglePayload(v10, a2, a2, v9);
  }

  return result;
}

uint64_t sub_2178568D4()
{
  v16 = *(v0 + 32);
  v17 = *(v0 + 16);
  v1 = (_s12ItemShelfRowVMa() - 8);
  v2 = *(*v1 + 64);
  v3 = (v0 + ((*(*v1 + 80) + 48) & ~*(*v1 + 80)));
  v4 = *v3;

  v5 = *(v3 + 1);

  v6 = v1[15];
  v7 = *(v16 + 8);
  v8 = sub_21796810C();
  OUTLINED_FUNCTION_3(v8);
  (*(v9 + 8))(&v3[v6]);
  v10 = &v3[v1[16]];
  v11 = *v10;

  v12 = *(v10 + 1);

  v13 = &v3[v1[18]];
  v14 = *(v13 + 2);

  sub_2178643E0(*(v13 + 3));
  return swift_deallocObject();
}

uint64_t sub_217856A14(__int128 *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8DD38, &qword_217970EF0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8A6E0, &qword_21796A8E0);
  v5 = *a1;
  v6 = a1[1];
  _s13ItemShelfCellVMa();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8F0C0, &unk_217972EA0);
  OUTLINED_FUNCTION_9();
  sub_21796698C();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8BB08, &qword_21796C8C0);
  OUTLINED_FUNCTION_9();
  sub_21796698C();
  OUTLINED_FUNCTION_9();
  swift_getTupleTypeMetadata2();
  sub_217967E9C();
  sub_217926268();
  sub_217967D9C();
  OUTLINED_FUNCTION_19_0();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_10_3();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_9();
  sub_217967CDC();
  sub_2179669FC();
  OUTLINED_FUNCTION_7_1();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_2_17();
  sub_217952480(v2, v3);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_217856BBC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CB8F0E0, &qword_217972EC8);
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = a1 + *(a3 + 36);

    return __swift_getEnumTagSinglePayload(v8, a2, v7);
  }

  else
  {
    v10 = *(a1 + *(a3 + 40));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_217856C78(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CB8F0E0, &qword_217972EC8);
  if (*(*(result - 8) + 84) == a3)
  {
    v9 = result;
    v10 = a1 + *(a4 + 36);

    return __swift_storeEnumTagSinglePayload(v10, a2, a2, v9);
  }

  else
  {
    *(a1 + *(a4 + 40)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_217856D30()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = (_s11ColumnsViewVMa() - 8);
  v4 = *(*v3 + 64);
  v5 = (v0 + ((*(*v3 + 80) + 32) & ~*(*v3 + 80)));
  v6 = *v5;

  v7 = v5 + v3[11];
  v8 = sub_217965A3C();
  OUTLINED_FUNCTION_3(v8);
  (*(v9 + 8))(v7);
  v10 = *&v7[*(__swift_instantiateConcreteTypeFromMangledNameV2(qword_27CB8F0E0, &qword_217972EC8) + 28)];

  v11 = *(v5 + v3[12] + 8);

  return swift_deallocObject();
}

uint64_t sub_217856E50()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8F180, &qword_217972F50);
  _s12SearchColumnVMa();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8F178, &qword_217972F48);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8AFA8, &qword_21796B6C0);
  OUTLINED_FUNCTION_2_18();
  sub_217864B2C(v0, &qword_27CB8F178, &qword_217972F48);
  OUTLINED_FUNCTION_4_21();
  sub_217864B2C(v1, &qword_27CB8AFA8, &qword_21796B6C0);
  OUTLINED_FUNCTION_3_27();
  swift_getOpaqueTypeConformance2();
  OUTLINED_FUNCTION_0_21();
  sub_217952E40(v2, v3);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_217856F94@<X0>(_BYTE *a1@<X8>)
{
  result = sub_217966B3C();
  *a1 = result & 1;
  return result;
}

uint64_t sub_217856FE8(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CB8F1A0, &qword_217972FE8);
    v9 = a1 + *(a3 + 52);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

uint64_t sub_21785707C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CB8F1A0, &qword_217972FE8);
    v8 = v5 + *(a4 + 52);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_21785710C(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  _s17SearchResultsViewVMa();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8A6D8, &unk_21796AF80);
  OUTLINED_FUNCTION_9();
  sub_21796698C();
  _s15LandingPageViewVMa();
  sub_21796732C();
  OUTLINED_FUNCTION_9();
  sub_21796698C();
  sub_217966F9C();
  OUTLINED_FUNCTION_1_24();
  swift_getWitnessTable();
  sub_21795427C();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_0_22();
  swift_getWitnessTable();
  sub_2178BD980();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_20();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_2178572B0(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8F238, &qword_217973060);
    v9 = a1 + *(a3 + 32);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

uint64_t sub_217857344(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8F238, &qword_217973060);
    v8 = v5 + *(a4 + 32);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_2178573E8()
{
  v1 = *(v0 + 40);

  return swift_deallocObject();
}

uint64_t sub_217857420(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  sub_2179664CC();
  OUTLINED_FUNCTION_0_23();

  return swift_getWitnessTable();
}

uint64_t sub_217857458@<X0>(uint64_t *a1@<X8>)
{
  result = sub_217956F70();
  *a1 = result;
  return result;
}

uint64_t sub_217857488()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_2178574C0(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  sub_21796698C();
  sub_2179579D0();
  return swift_getWitnessTable();
}

uint64_t sub_217857528()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8F3D0, &qword_2179734D0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8F3C8, &qword_2179734C8);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8F3E8, &qword_2179734E8);
  sub_217957B90();
  sub_217957D00();
  swift_getOpaqueTypeConformance2();
  sub_217957EA4();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_217857660()
{
  v1 = *(v0 + 32);

  sub_2178643E0(*(v0 + 40));

  return swift_deallocObject();
}

uint64_t sub_2178576A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_217968D2C();
  v7 = OUTLINED_FUNCTION_1_1(v6);
  if (*(v8 + 84) == a2)
  {
    v9 = v7;
    v10 = a1;
LABEL_5:

    return __swift_getEnumTagSinglePayload(v10, a2, v9);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CB8F498, &qword_217973888);
  v12 = OUTLINED_FUNCTION_1_1(v11);
  if (*(v13 + 84) == a2)
  {
    v9 = v12;
    v10 = a1 + *(a3 + 48);
    goto LABEL_5;
  }

  v15 = *(a1 + *(a3 + 52) + 8);
  if (v15 >= 0xFFFFFFFF)
  {
    LODWORD(v15) = -1;
  }

  return (v15 + 1);
}

uint64_t sub_21785779C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_217968D2C();
  v9 = OUTLINED_FUNCTION_1_1(v8);
  if (*(v10 + 84) == a3)
  {
    v11 = v9;
    v12 = a1;
  }

  else
  {
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CB8F498, &qword_217973888);
    result = OUTLINED_FUNCTION_1_1(v13);
    if (*(v15 + 84) != a3)
    {
      *(a1 + *(a4 + 52) + 8) = (a2 - 1);
      return result;
    }

    v11 = result;
    v12 = a1 + *(a4 + 48);
  }

  return __swift_storeEnumTagSinglePayload(v12, a2, a2, v11);
}

uint64_t sub_2178578A0(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8CC80, &qword_21796F110);
  OUTLINED_FUNCTION_33();
  sub_217968CFC();
  OUTLINED_FUNCTION_4_23();
  sub_21795F794(v3, v4);
  _s13ItemShelfCellVMa();
  sub_21796698C();
  OUTLINED_FUNCTION_8();
  sub_21796698C();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8A6E0, &qword_21796A8E0);
  OUTLINED_FUNCTION_9();
  swift_getTupleTypeMetadata2();
  OUTLINED_FUNCTION_8();
  sub_217967E9C();
  OUTLINED_FUNCTION_24();
  sub_217864B2C(v5, &qword_27CB8CC80, &qword_21796F110);
  sub_21786438C();
  sub_217967D9C();
  OUTLINED_FUNCTION_33();
  sub_21796944C();
  OUTLINED_FUNCTION_19_0();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_10_3();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_0_3();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_9();
  sub_21796665C();
  OUTLINED_FUNCTION_21_9();
  OUTLINED_FUNCTION_9();
  sub_21796666C();
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_9();
  sub_21796686C();
  OUTLINED_FUNCTION_19();
  swift_getWitnessTable();
  sub_217873C34();
  swift_getOpaqueTypeMetadata2();
  _s18NavigationBarStyleVMa();
  sub_21796698C();
  swift_getOpaqueTypeConformance2();
  OUTLINED_FUNCTION_17();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  _s15DoneToolbarItemVMa();
  OUTLINED_FUNCTION_16();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  OUTLINED_FUNCTION_22_7();
  swift_getOpaqueTypeMetadata2();
  OUTLINED_FUNCTION_22_7();
  swift_getOpaqueTypeMetadata2();
  OUTLINED_FUNCTION_22_7();
  swift_getOpaqueTypeMetadata2();
  OUTLINED_FUNCTION_22_7();
  swift_getOpaqueTypeMetadata2();
  OUTLINED_FUNCTION_22_7();
  swift_getOpaqueTypeMetadata2();
  OUTLINED_FUNCTION_22_7();
  swift_getOpaqueTypeMetadata2();
  sub_21796698C();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8EFE0, &unk_217972DD0);
  OUTLINED_FUNCTION_9();
  sub_21796698C();
  OUTLINED_FUNCTION_22_7();
  sub_217864644();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_13_2();
  sub_217864B2C(v6, &qword_27CB8EFE0, &unk_217972DD0);
  return swift_getWitnessTable();
}

__n128 sub_217857E94(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_217857EA0(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  _s20DismissAlertModifierVMa();
  OUTLINED_FUNCTION_9_18();
  swift_getWitnessTable();
  sub_2179670BC();
  sub_21796919C();
  OUTLINED_FUNCTION_45_2();
  swift_getWitnessTable();
  v6 = *(*(v2 + 16) + 8);
  OUTLINED_FUNCTION_6_15();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  OUTLINED_FUNCTION_7_16();
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8A578, &qword_21796A750);
  swift_getOpaqueTypeConformance2();
  sub_217930878();
  swift_getOpaqueTypeMetadata2();
  _s20FailureAlertModifierVMa();
  sub_21796698C();
  sub_217966F9C();
  swift_getOpaqueTypeConformance2();
  OUTLINED_FUNCTION_1_27();
  sub_217961740(v3, v4);
  OUTLINED_FUNCTION_1();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_20();
  return swift_getWitnessTable();
}

unint64_t sub_2178580FC@<X0>(uint64_t a1@<X0>, void *a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  LODWORD(v48) = a3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8A578, &qword_21796A750);
  OUTLINED_FUNCTION_48(v7);
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_47();
  MEMORY[0x28223BE20](v10);
  v12 = &v46 - v11;
  v47 = *a2;
  v13 = a2[2];
  v49 = a2[1];
  v46 = v13;
  v14 = a2[3];
  v15 = _s15AlbumDetailViewVMa();
  v16 = (a4 + v15[11]);
  _s9ViewModelCMa();
  OUTLINED_FUNCTION_23();
  swift_getWitnessTable();
  *v16 = sub_217966ACC();
  v16[1] = v17;
  v18 = a4 + v15[12];
  *v18 = swift_getKeyPath();
  *(v18 + 40) = 0;
  v19 = v15[13];
  v20 = _s5AlertVMa(0);
  __swift_storeEnumTagSinglePayload(v12, 1, 1, v20);
  sub_217858434(v12);
  v21 = (a4 + v15[14]);
  *v21 = sub_2178584F0();
  v21[1] = v22;
  v21[2] = v23;
  v24 = a4 + v15[15];
  *v24 = sub_21785853C() & 1;
  *(v24 + 8) = v25;
  v26 = (a4 + v15[19]);
  *v26 = xmmword_21796A2F0;
  v26[1] = xmmword_21796A300;
  v26[2] = xmmword_21796A310;
  v27 = sub_2179689AC();
  v28 = *(v27 - 8);
  (*(v28 + 16))(a4, a1, v27);
  *(a4 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8A580, &unk_21796A780) + 28)) = 0;
  v29 = a4 + v15[9];
  v30 = v47;
  *v29 = v47;
  *(v29 + 8) = v49;
  *(v29 + 16) = v13;
  *(v29 + 24) = v14;
  *(a4 + v15[10]) = v48;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8A588, &unk_21796ACE0);
  v48 = swift_allocBox();
  v33 = v32;
  v34 = v32 + *(v31 + 48);
  (*(v28 + 32))(v32, a1, v27);
  v35 = *MEMORY[0x277D2A400];
  v36 = sub_21796595C();
  OUTLINED_FUNCTION_3(v36);
  (*(v37 + 104))(v33, v35);
  *v34 = v30;
  v38 = v48;
  v39 = v46;
  *(v34 + 8) = v49;
  *(v34 + 16) = v39;
  *(v34 + 24) = v14;
  v40 = v38 | 0x2000000000000000;
  v41 = v15[16];
  *(a4 + v41) = v40;
  v42 = a4 + v15[17];
  *v42 = 0;
  *(v42 + 8) = 0;
  *(v42 + 16) = 0;
  *(v42 + 24) = v40;
  v43 = *(a4 + v41);
  v44 = a4 + v15[18];
  *v44 = 1;
  *(v44 + 8) = 0;
  *(v44 + 16) = 0;
  *(v44 + 24) = v43;

  sub_217863EC4(v14);
  sub_217863EC4(v40);
  return sub_217863EC4(v43);
}

uint64_t sub_217858434(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8A578, &qword_21796A750);
  OUTLINED_FUNCTION_3(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_47();
  MEMORY[0x28223BE20](v5);
  sub_217864D70(a1, &v8 - v6, &qword_27CB8A578, &qword_21796A750);
  sub_217967C0C();
  return sub_2178653BC(a1, &qword_27CB8A578, &qword_21796A750);
}

uint64_t sub_2178584F0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8A590, &unk_21796A790);
  sub_217967C0C();
  return v1;
}

uint64_t sub_217858578()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8A580, &unk_21796A780);

  return sub_217967C1C();
}

uint64_t sub_2178585C0(uint64_t a1)
{
  v2 = sub_2179689AC();
  v3 = OUTLINED_FUNCTION_2(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_14();
  v8 = *(v5 + 16);
  OUTLINED_FUNCTION_45();
  v9();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8A580, &unk_21796A780);
  sub_217967C2C();
  return (*(v5 + 8))(a1, v2);
}

uint64_t sub_2178586AC()
{
  v0 = sub_2179689AC();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20]();
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8A770, &qword_21796A948) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v7 = &v13 - v6;
  sub_217858578();
  sub_21796894C();
  (*(v1 + 8))(v4, v0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8A778, &unk_21796A950);
  if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
  {
    sub_2178653BC(v7, &qword_27CB8A770, &qword_21796A948);
  }

  else
  {
    v9 = sub_2179680DC();
    v11 = v10;
    (*(*(v8 - 8) + 8))(v7, v8);
    if (v11)
    {
      return v9;
    }
  }

  if (qword_27CB8A380 != -1)
  {
    swift_once();
  }

  return sub_21796560C();
}

uint64_t sub_2178588FC(uint64_t a1)
{
  v2 = v1;
  v4 = sub_2179689AC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_217858578();
  sub_217937BD0();
  v10 = v9;
  (*(v5 + 8))(v8, v4);
  if (v10)
  {
    v11 = (v2 + *(a1 + 44));
    v12 = *v11;
    v13 = v11[1];
    v14 = *(a1 + 16);
    v15 = *(a1 + 24);
    _s9ViewModelCMa();
    swift_getWitnessTable();
    sub_217966A9C();
    sub_2178D83B0();
    v17 = v16;

    v18 = v17 ^ 1;
  }

  else
  {
    v18 = 0;
  }

  return v18 & 1;
}

uint64_t sub_217858A4C(uint64_t a1)
{
  v94 = a1;
  v2 = sub_21796852C();
  v90 = *(v2 - 8);
  v3 = *(v90 + 64);
  MEMORY[0x28223BE20](v2);
  v80 = &v72 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = sub_2179688CC();
  v89 = *(v81 - 8);
  v5 = *(v89 + 64);
  MEMORY[0x28223BE20](v81);
  v79 = &v72 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_217968A2C();
  v88 = *(v7 - 8);
  v8 = *(v88 + 8);
  v9 = MEMORY[0x28223BE20](v7);
  v93 = &v72 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v92 = &v72 - v11;
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8A820, &qword_21796A9C0);
  v12 = *(*(v91 - 8) + 64);
  MEMORY[0x28223BE20](v91);
  v14 = &v72 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8A720, &unk_21796A910);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v18 = &v72 - v17;
  v19 = sub_2179689AC();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19);
  v23 = &v72 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8A6E8, &qword_21796A8E8);
  v96 = *(v24 - 8);
  v25 = *(v96 + 64);
  MEMORY[0x28223BE20](v24);
  v27 = &v72 - v26;
  v95 = v1;
  sub_217858578();
  sub_21796897C();
  (*(v20 + 8))(v23, v19);
  if (__swift_getEnumTagSinglePayload(v18, 1, v24) == 1)
  {
    sub_2178653BC(v18, &qword_27CB8A720, &unk_21796A910);
    return 0;
  }

  v29 = v96;
  v30 = v27;
  (*(v96 + 32))(v27, v18, v24);
  (*(v29 + 16))(v14, v27, v24);
  v31 = *(v91 + 36);
  v91 = sub_217864B2C(&qword_27CB8A768, &qword_27CB8A6E8, &qword_21796A8E8);
  sub_2179692AC();
  v72 = 0;
  v84 = (v88 + 32);
  v85 = (v88 + 16);
  v83 = (v88 + 88);
  HIDWORD(v82) = *MEMORY[0x277CD8368];
  v86 = (v88 + 96);
  v77 = (v90 + 32);
  HIDWORD(v76) = *MEMORY[0x277CD8350];
  v75 = (v90 + 8);
  v74 = (v89 + 32);
  v73 = (v89 + 8);
  v32 = v81;
  v89 = v24;
  v90 = v7;
  v33 = v29;
  v87 = v31;
  v88 = v30;
  v78 = v2;
  do
  {
    while (1)
    {
      sub_2179692EC();
      if (*&v14[v31] == v97[0])
      {
        sub_2178653BC(v14, &qword_27CB8A820, &qword_21796A9C0);
        (*(v33 + 8))(v30, v24);
        return v72;
      }

      v34 = sub_21796934C();
      v35 = v92;
      (*v85)(v92);
      v34(v97, 0);
      sub_2179692FC();
      v36 = v93;
      (*v84)(v93, v35, v7);
      v37 = (*v83)(v36, v7);
      if (v37 == HIDWORD(v82))
      {
        break;
      }

      if (v37 != HIDWORD(v76))
      {
        goto LABEL_22;
      }

      (*v86)(v36, v7);
      v55 = v80;
      (*v77)(v80, v36, v2);
      v56 = (v95 + *(v94 + 44));
      v57 = *v56;
      v58 = v56[1];
      v59 = *(v94 + 16);
      v60 = *(v94 + 24);
      _s9ViewModelCMa();
      swift_getWitnessTable();
      sub_217966A9C();
      v61 = sub_217863A38(&qword_27CB8A828, MEMORY[0x277CD7E58]);
      sub_2178E0E64(v55, v2, v61, v62, v63, v64, v65, v66, v72, v73, v74, v75, v76, v77, v78, v79, v80, v81, v82, v83);
      v67 = v2;
      v69 = v68;

      if (v69)
      {
        sub_217966A9C();
        sub_2178E1804();
        v71 = v70;

        (*v75)(v55, v67);
        v2 = v67;
        v32 = v81;
        v24 = v89;
        v7 = v90;
        v33 = v96;
        v31 = v87;
        v30 = v88;
        if ((v71 & 1) == 0)
        {
          v54 = v72 + 1;
          if (__OFADD__(v72, 1))
          {
            goto LABEL_21;
          }

LABEL_15:
          v72 = v54;
        }
      }

      else
      {
        (*v75)(v55, v67);
        v2 = v67;
        v32 = v81;
LABEL_18:
        v24 = v89;
        v7 = v90;
        v33 = v96;
        v31 = v87;
        v30 = v88;
      }
    }

    (*v86)(v36, v7);
    v38 = v79;
    (*v74)(v79, v36, v32);
    v39 = (v95 + *(v94 + 44));
    v40 = *v39;
    v41 = v39[1];
    v42 = *(v94 + 16);
    v43 = *(v94 + 24);
    _s9ViewModelCMa();
    swift_getWitnessTable();
    sub_217966A9C();
    v44 = sub_217863A38(&qword_27CB8A830, MEMORY[0x277CD8238]);
    sub_2178E0E64(v38, v32, v44, v45, v46, v47, v48, v49, v72, v73, v74, v75, v76, v77, v78, v79, v80, v81, v82, v83);
    v51 = v50;

    if ((v51 & 1) == 0)
    {
      (*v73)(v38, v32);
      v2 = v78;
      goto LABEL_18;
    }

    sub_217966A9C();
    sub_2178E1804();
    v53 = v52;

    (*v73)(v38, v32);
    v2 = v78;
    v24 = v89;
    v7 = v90;
    v33 = v96;
    v31 = v87;
    v30 = v88;
  }

  while ((v53 & 1) != 0);
  v54 = v72 + 1;
  if (!__OFADD__(v72, 1))
  {
    goto LABEL_15;
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  result = sub_21796959C();
  __break(1u);
  return result;
}

uint64_t sub_217859448@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v145 = a2;
  v144 = sub_21796923C();
  v3 = OUTLINED_FUNCTION_2(v144);
  v143 = v4;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_52(v8 - v7);
  v147 = a1;
  v154 = *(a1 - 8);
  v9 = *(v154 + 64);
  MEMORY[0x28223BE20](v10);
  v152 = v11;
  v153 = &v123 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_2179689AC();
  v146 = v12;
  v13 = *(a1 + 16);
  OUTLINED_FUNCTION_0();
  v141 = sub_217863A38(v14, v15);
  v16 = *(a1 + 24);
  v163 = v12;
  v164 = v13;
  v165 = v141;
  v166[0] = v16;
  OUTLINED_FUNCTION_67();
  _s19ContainerHeaderCellVMa();
  v17 = OUTLINED_FUNCTION_29();
  v163 = a1;
  v164 = v17;
  swift_getOpaqueTypeMetadata2();
  OUTLINED_FUNCTION_33();
  v18 = sub_21796732C();
  OUTLINED_FUNCTION_12();
  v151 = v18;
  sub_21796698C();
  sub_21796698C();
  OUTLINED_FUNCTION_8();
  sub_21796698C();
  OUTLINED_FUNCTION_8();
  sub_21796698C();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8A6D8, &unk_21796AF80);
  OUTLINED_FUNCTION_12();
  sub_21796698C();
  OUTLINED_FUNCTION_33();
  _s20FailureAlertModifierVMa();
  OUTLINED_FUNCTION_4();
  v140 = sub_21796698C();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8A6E0, &qword_21796A8E0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8A6E8, &qword_21796A8E8);
  OUTLINED_FUNCTION_41();
  v20 = _s14AlbumTrackCellVMa();
  OUTLINED_FUNCTION_25();
  WitnessTable = swift_getWitnessTable();
  v163 = v20;
  v164 = WitnessTable;
  OUTLINED_FUNCTION_67();
  swift_getOpaqueTypeMetadata2();
  OUTLINED_FUNCTION_8();
  sub_21796698C();
  OUTLINED_FUNCTION_8();
  sub_21796698C();
  OUTLINED_FUNCTION_8();
  sub_21796698C();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8A6F0, &qword_21796A8F0);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_75();
  OUTLINED_FUNCTION_8();
  v22 = sub_217967E9C();
  OUTLINED_FUNCTION_24();
  v24 = sub_217864B2C(v23, &qword_27CB8A6E8, &qword_21796A8E8);
  v25 = sub_21786438C();
  v163 = v19;
  v164 = MEMORY[0x277CD7E90];
  v165 = v22;
  v166[0] = v24;
  v166[1] = v25;
  OUTLINED_FUNCTION_67();
  sub_217967D9C();
  OUTLINED_FUNCTION_8();
  sub_21796698C();
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_75();
  OUTLINED_FUNCTION_8();
  sub_217967E9C();
  OUTLINED_FUNCTION_8();
  v26 = sub_21796944C();
  v163 = v146;
  v164 = v13;
  v165 = v141;
  v166[0] = v16;
  OUTLINED_FUNCTION_67();
  _s14ContainerShelfVMa();
  OUTLINED_FUNCTION_8();
  sub_21796944C();
  swift_getTupleTypeMetadata3();
  OUTLINED_FUNCTION_8();
  sub_217967E9C();
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_4();
  sub_21796665C();
  OUTLINED_FUNCTION_36();
  sub_21796698C();
  OUTLINED_FUNCTION_33();
  sub_2179669FC();
  OUTLINED_FUNCTION_15();
  v162[5] = swift_getWitnessTable();
  v162[6] = MEMORY[0x277CE0880];
  v27 = swift_getWitnessTable();
  OUTLINED_FUNCTION_22();
  v30 = sub_217863A38(v28, v29);
  v163 = v26;
  v164 = v18;
  v165 = v27;
  v166[0] = v30;
  OUTLINED_FUNCTION_21();
  swift_getOpaqueTypeMetadata2();
  sub_217966F9C();
  v163 = v26;
  v164 = v18;
  v165 = v27;
  v166[0] = v30;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v162[3] = MEMORY[0x277CE1410];
  v162[4] = OpaqueTypeConformance2;
  OUTLINED_FUNCTION_20();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_9();
  sub_21796666C();
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_4();
  v32 = sub_21796686C();
  v33 = sub_21796698C();
  OUTLINED_FUNCTION_2(v33);
  v137 = v34;
  v36 = *(v35 + 64);
  OUTLINED_FUNCTION_47();
  MEMORY[0x28223BE20](v37);
  v39 = &v123 - v38;
  OUTLINED_FUNCTION_41();
  v40 = v16;
  _s18NavigationBarStyleVMa();
  v41 = sub_21796698C();
  OUTLINED_FUNCTION_2(v41);
  v140 = v42;
  v44 = *(v43 + 64);
  OUTLINED_FUNCTION_47();
  MEMORY[0x28223BE20](v45);
  OUTLINED_FUNCTION_52(&v123 - v46);
  OUTLINED_FUNCTION_19();
  v133 = v32;
  v47 = swift_getWitnessTable();
  OUTLINED_FUNCTION_18();
  v50 = sub_217863A38(v48, v49);
  v124 = v47;
  v162[1] = v47;
  v162[2] = v50;
  v51 = swift_getWitnessTable();
  OUTLINED_FUNCTION_17();
  v52 = swift_getWitnessTable();
  v123 = v51;
  v161 = v51;
  v162[0] = v52;
  v53 = swift_getWitnessTable();
  v163 = v41;
  v164 = v53;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  OUTLINED_FUNCTION_2(OpaqueTypeMetadata2);
  v138 = v55;
  v57 = *(v56 + 64);
  OUTLINED_FUNCTION_47();
  MEMORY[0x28223BE20](v58);
  OUTLINED_FUNCTION_52(&v123 - v59);
  v148 = v13;
  v149 = v40;
  done = _s15DoneToolbarItemVMa();
  OUTLINED_FUNCTION_16();
  v61 = swift_getWitnessTable();
  v163 = done;
  v164 = v61;
  v62 = swift_getOpaqueTypeMetadata2();
  v141 = v41;
  v163 = v41;
  v164 = v53;
  v126 = v53;
  v63 = swift_getOpaqueTypeConformance2();
  v163 = done;
  v164 = v61;
  v64 = swift_getOpaqueTypeConformance2();
  v139 = OpaqueTypeMetadata2;
  v163 = OpaqueTypeMetadata2;
  v164 = v62;
  v125 = v62;
  v131 = v63;
  v165 = v63;
  v166[0] = v64;
  v127 = v64;
  v65 = swift_getOpaqueTypeMetadata2();
  OUTLINED_FUNCTION_2(v65);
  v130 = v66;
  v68 = *(v67 + 64);
  OUTLINED_FUNCTION_47();
  MEMORY[0x28223BE20](v69);
  OUTLINED_FUNCTION_52(&v123 - v70);
  v132 = v71;
  v136 = sub_21796698C();
  v72 = OUTLINED_FUNCTION_2(v136);
  v135 = v73;
  v75 = *(v74 + 64);
  v76 = MEMORY[0x28223BE20](v72);
  v128 = &v123 - ((v77 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v76);
  OUTLINED_FUNCTION_52(&v123 - v78);
  v79 = v147;
  v80 = v150;
  sub_21785A280(v147, &v163);
  v159 = v163;
  v160 = v164;
  if (qword_27CB8A390 != -1)
  {
    swift_once();
  }

  v81 = qword_27CB978D0;
  v157 = qword_27CB978C0;
  v158 = *algn_27CB978C8;

  MEMORY[0x21CEA7F50](46, 0xE100000000000000);

  MEMORY[0x21CEA7F50](0x7465446D75626C41, 0xEF776569566C6961);

  sub_2178ED854(v157, v158, v81);

  v82 = v148;
  v83 = v149;
  sub_21792D7FC(1, v148, v33, v148, v123);
  OUTLINED_FUNCTION_54(&v163);
  v84(v39, v33);
  v85 = v154;
  v86 = *(v154 + 16);
  v133 = v154 + 16;
  v137 = v86;
  v87 = v82;
  v88 = v153;
  v86(v153, v80, v79);
  sub_21796920C();
  v89 = sub_2179691FC();
  v90 = *(v85 + 80);
  v91 = swift_allocObject();
  v92 = MEMORY[0x277D85700];
  *(v91 + 2) = v89;
  *(v91 + 3) = v92;
  *(v91 + 4) = v87;
  *(v91 + 5) = v83;
  v124 = *(v85 + 32);
  v154 = v85 + 32;
  v124(&v91[(v90 + 48) & ~v90], v88, v79);
  v93 = v142;
  sub_21796921C();
  v94 = v141;
  v95 = v134;
  v96 = v151;
  sub_21785C01C(0, 0, v93, 0xD000000000000035, 0x8000000217973E60, 104, &unk_21796A900, v91, v141, v126);
  OUTLINED_FUNCTION_54(&v167);
  v97(v93, v144);
  OUTLINED_FUNCTION_54(v166);
  v99 = v98(v96, v94);
  MEMORY[0x28223BE20](v99);
  v100 = v149;
  v101 = swift_checkMetadataState();
  v102 = v139;
  v103 = v131;
  v104 = v127;
  sub_217967A1C();
  OUTLINED_FUNCTION_54(&v164);
  v105(v95, v102);
  v106 = v153;
  v107 = v147;
  v137(v153, v150, v147);
  v108 = swift_allocObject();
  *(v108 + 16) = v148;
  *(v108 + 24) = v100;
  v124((v108 + ((v90 + 32) & ~v90)), v106, v107);
  v163 = v102;
  v164 = v101;
  v165 = v103;
  v166[0] = v104;
  v109 = swift_getOpaqueTypeConformance2();
  v110 = v128;
  v111 = v132;
  v112 = v146;
  sub_2178D0790(sub_21786462C, v108, v132, v109);

  OUTLINED_FUNCTION_54(v162);
  v113(v112, v111);
  v114 = sub_217864644();
  v155 = v109;
  v156 = v114;
  OUTLINED_FUNCTION_1();
  v115 = v136;
  swift_getWitnessTable();
  v116 = v129;
  OUTLINED_FUNCTION_60();
  sub_2179560E4(v117, v118);
  v119 = *(v135 + 8);
  v119(v110, v115);
  OUTLINED_FUNCTION_60();
  sub_2179560E4(v120, v121);
  return (v119)(v116, v115);
}

uint64_t sub_21785A280@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v30 = a2;
  v3 = *(a1 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](a1);
  (*(v3 + 16))(&v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v6 = swift_allocObject();
  v29 = v6;
  v7 = *(a1 + 16);
  v8 = *(a1 + 24);
  *(v6 + 16) = v7;
  *(v6 + 24) = v8;
  (*(v3 + 32))(v6 + v5, &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  v9 = sub_2179689AC();
  v28 = v9;
  v27 = sub_217863A38(&qword_27CB8A6D0, MEMORY[0x277CD82C8]);
  v35 = v9;
  v36 = v7;
  v37 = v27;
  v38 = v8;
  v10 = _s19ContainerHeaderCellVMa();
  WitnessTable = swift_getWitnessTable();
  v35 = v10;
  v36 = WitnessTable;
  swift_getOpaqueTypeMetadata2();
  sub_21796732C();
  sub_21796698C();
  sub_21796698C();
  sub_21796698C();
  sub_21796698C();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8A6D8, &unk_21796AF80);
  sub_21796698C();
  _s20FailureAlertModifierVMa();
  v26 = sub_21796698C();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8A6E0, &qword_21796A8E0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8A6E8, &qword_21796A8E8);
  v13 = _s14AlbumTrackCellVMa();
  v14 = swift_getWitnessTable();
  v35 = v13;
  v36 = v14;
  swift_getOpaqueTypeMetadata2();
  sub_21796698C();
  sub_21796698C();
  sub_21796698C();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8A6F0, &qword_21796A8F0);
  swift_getTupleTypeMetadata2();
  v15 = sub_217967E9C();
  v16 = sub_217864B2C(&qword_27CB8A6F8, &qword_27CB8A6E8, &qword_21796A8E8);
  v17 = sub_21786438C();
  v35 = v12;
  v36 = MEMORY[0x277CD7E90];
  v37 = v15;
  v38 = v16;
  v39 = v17;
  sub_217967D9C();
  sub_21796698C();
  swift_getTupleTypeMetadata2();
  sub_217967E9C();
  sub_21796944C();
  v35 = v28;
  v36 = v7;
  v37 = v27;
  v38 = v8;
  _s14ContainerShelfVMa();
  sub_21796944C();
  swift_getTupleTypeMetadata3();
  sub_217967E9C();
  swift_getWitnessTable();
  sub_21796665C();
  v18 = sub_21796698C();
  v19 = sub_2179669FC();
  v33 = swift_getWitnessTable();
  v34 = MEMORY[0x277CE0880];
  v20 = swift_getWitnessTable();
  v21 = sub_217863A38(&qword_27CB8A708, MEMORY[0x277CDDB18]);
  v35 = v18;
  v36 = v19;
  v37 = v20;
  v38 = v21;
  swift_getOpaqueTypeMetadata2();
  sub_217966F9C();
  v35 = v18;
  v36 = v19;
  v37 = v20;
  v38 = v21;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v31 = MEMORY[0x277CE1410];
  v32 = OpaqueTypeConformance2;
  swift_getWitnessTable();
  sub_21796666C();
  swift_getWitnessTable();
  result = sub_21796685C();
  v24 = v30;
  *v30 = result;
  v24[1] = v25;
  return result;
}

uint64_t sub_21785A884()
{
  v0[2] = sub_21796920C();
  v0[3] = sub_2179691FC();
  v1 = swift_task_alloc();
  v0[4] = v1;
  v2 = _s15AlbumDetailViewVMa();
  *v1 = v0;
  v1[1] = sub_21785A954;

  return sub_21785AADC(v2);
}

uint64_t sub_21785A954()
{
  OUTLINED_FUNCTION_62();
  v1 = *(*v0 + 32);
  v2 = *(*v0 + 24);
  v3 = *(*v0 + 16);
  v4 = *v0;
  OUTLINED_FUNCTION_6();
  *v5 = v4;

  v7 = sub_2179691BC();

  return MEMORY[0x2822009F8](sub_21785AA84, v7, v6);
}

uint64_t sub_21785AA84()
{
  OUTLINED_FUNCTION_62();
  v1 = *(v0 + 24);

  OUTLINED_FUNCTION_39();

  return v2();
}

uint64_t sub_21785AADC(uint64_t a1)
{
  v2[21] = a1;
  v2[22] = v1;
  v3 = *(a1 - 8);
  v2[23] = v3;
  v4 = *(v3 + 64) + 15;
  v2[24] = swift_task_alloc();
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8A720, &unk_21796A910) - 8) + 64) + 15;
  v2[25] = swift_task_alloc();
  v6 = sub_21796822C();
  v2[26] = v6;
  v7 = *(v6 - 8);
  v2[27] = v7;
  v8 = *(v7 + 64) + 15;
  v2[28] = swift_task_alloc();
  v9 = sub_2179689AC();
  v2[29] = v9;
  v10 = *(v9 - 8);
  v2[30] = v10;
  v11 = *(v10 + 64) + 15;
  v2[31] = swift_task_alloc();
  v2[32] = swift_task_alloc();
  v2[33] = swift_task_alloc();
  v2[34] = swift_task_alloc();
  v2[35] = swift_task_alloc();
  v2[36] = swift_task_alloc();
  sub_21796920C();
  v2[37] = sub_2179691FC();
  v13 = sub_2179691BC();
  v2[38] = v13;
  v2[39] = v12;

  return MEMORY[0x2822009F8](sub_21785ACF0, v13, v12);
}

uint64_t sub_21785ACF0()
{
  v1 = v0[22];
  if (sub_2178588FC(v0[21]))
  {
    v2 = v0[34];
    v3 = v0[22];
    sub_217858578();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8A728, &qword_21796B550);
    v4 = swift_allocObject();
    v0[40] = v4;
    *(v4 + 16) = xmmword_21796A330;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8A730, &unk_21796A920);
    *(v4 + 32) = sub_217967F4C();
    *(v4 + 40) = sub_217967F3C();
    v5 = *(MEMORY[0x277CD7D08] + 4);
    v6 = swift_task_alloc();
    v0[41] = v6;
    *v6 = v0;
    v6[1] = sub_21785AF70;
    v8 = v0[34];
    v7 = v0[35];
    v9 = v0[29];
    v10 = MEMORY[0x277CD82A0];

    return MEMORY[0x2821246D8](v7, v4, v9, v10);
  }

  else
  {
    v11 = v0[32];
    v13 = v0[27];
    v12 = v0[28];
    v14 = v0[26];
    v15 = v0[22];
    sub_217858578();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8A728, &qword_21796B550);
    v16 = swift_allocObject();
    v0[44] = v16;
    *(v16 + 16) = xmmword_21796A320;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8A730, &unk_21796A920);
    *(v16 + 32) = sub_217967F4C();
    *(v16 + 40) = sub_217967F3C();
    *(v16 + 48) = sub_217967F2C();
    (*(v13 + 104))(v12, *MEMORY[0x277CD7CF8], v14);
    v17 = *(MEMORY[0x277CD7DE8] + 4);
    v18 = swift_task_alloc();
    v0[45] = v18;
    OUTLINED_FUNCTION_0();
    v21 = sub_217863A38(v19, v20);
    *v18 = v0;
    v18[1] = sub_21785B774;
    v23 = v0[32];
    v22 = v0[33];
    v24 = v0[28];
    v25 = v0[29];
    v26 = MEMORY[0x277CD82B8];
    v27 = MEMORY[0x277CD82A0];

    return MEMORY[0x282124808](v22, v16, v24, v25, v26, v27, v21);
  }
}

uint64_t sub_21785AF70()
{
  v2 = *v1;
  v3 = *v1;
  OUTLINED_FUNCTION_6();
  *v4 = v3;
  v5 = v2[41];
  v6 = v2[40];
  v7 = v2[34];
  v8 = v2[30];
  v9 = v2[29];
  *v4 = *v1;
  v3[42] = v0;

  v10 = *(v8 + 8);
  v3[43] = v10;
  v10(v7, v9);

  OUTLINED_FUNCTION_66();
  v12 = *(v11 + 312);
  v13 = v2[38];
  if (v0)
  {
    v14 = sub_21785B4C0;
  }

  else
  {
    v14 = sub_21785B124;
  }

  return MEMORY[0x2822009F8](v14, v13, v12);
}

uint64_t sub_21785B124()
{
  v45 = v0;
  v43 = v0[43];
  v3 = v0[36];
  v2 = v0[37];
  v4 = v0[35];
  v6 = v0[30];
  v5 = v0[31];
  v7 = v0[29];
  v8 = v0[22];

  v9 = OUTLINED_FUNCTION_55();
  v10(v9);
  v11 = OUTLINED_FUNCTION_63();
  v12(v11);
  sub_2178585C0(v5);
  if (qword_27CB8A368 != -1)
  {
    OUTLINED_FUNCTION_34();
  }

  v13 = v0[36];
  v14 = v0[25];
  OUTLINED_FUNCTION_46(&qword_27CB97840);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8A758, &unk_21796B1B0);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_21796A340;
  sub_21796897C();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8A6E8, &qword_21796A8E8);
  OUTLINED_FUNCTION_76(v16);
  if (v17)
  {
    sub_2178653BC(v13, &qword_27CB8A720, &unk_21796A910);
    v18 = 0;
  }

  else
  {
    OUTLINED_FUNCTION_32(&qword_27CB8A768, &qword_27CB8A6E8, &qword_21796A8E8);
    OUTLINED_FUNCTION_65();
    sub_2179692AC();
    OUTLINED_FUNCTION_65();
    sub_2179692EC();
    v18 = OUTLINED_FUNCTION_70();
    OUTLINED_FUNCTION_10(v1);
    (*(v19 + 8))(v13, v1);
  }

  v20 = v0[21];
  v21 = v0[22];
  v22 = MEMORY[0x277D83C10];
  *(v15 + 56) = MEMORY[0x277D83B88];
  *(v15 + 64) = v22;
  *(v15 + 32) = v18;

  OUTLINED_FUNCTION_42();

  v23 = sub_217968F3C();
  v25 = v24;

  v0[12] = v23;
  v0[13] = v25;
  v26 = sub_21796903C();
  OUTLINED_FUNCTION_40(v26, v27);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8A760, &qword_21796A940);
  sub_217967C2C();
  OUTLINED_FUNCTION_38();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8A740, &unk_21796B560);
  sub_217967C2C();
  v28 = v21 + *(v20 + 48);
  sub_217956100();
  v29 = v0[5];
  v30 = v0[36];
  v31 = v0[29];
  v32 = v0[30];
  if (v29)
  {
    v34 = v0[21];
    v33 = v0[22];
    v35 = v0[6];
    __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
    v44 = *(v33 + *(v34 + 64));
    v36 = *(v35 + 8);
    sub_217863EC4(v44);
    v36(&v44, v29, v35);
    sub_2178643E0(v44);
    v37 = OUTLINED_FUNCTION_7();
    v38(v37);
    __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  }

  else
  {
    v39 = OUTLINED_FUNCTION_7();
    v40(v39);
    sub_2178653BC((v0 + 2), &qword_27CB8A630, qword_21796A7B0);
  }

  OUTLINED_FUNCTION_11();

  OUTLINED_FUNCTION_39();

  return v41();
}

uint64_t sub_21785B4C0()
{
  v42 = v0;
  v1 = v0[42];
  v2 = v0[43];
  v3 = v0[37];
  v5 = v0[21];
  v4 = v0[22];

  OUTLINED_FUNCTION_35();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8A740, &unk_21796B560);
  sub_217967C2C();
  if (qword_27CB8A480 != -1)
  {
    OUTLINED_FUNCTION_31();
  }

  v7 = v0[23];
  v6 = v0[24];
  v9 = v0[21];
  v8 = v0[22];
  v10 = sub_21796653C();
  __swift_project_value_buffer(v10, qword_27CB97B00);
  v11 = OUTLINED_FUNCTION_53();
  v12(v11);
  v13 = v1;
  v14 = sub_21796651C();
  LOBYTE(v6) = sub_21796937C();

  if (os_log_type_enabled(v14, v6))
  {
    v15 = OUTLINED_FUNCTION_37();
    v39 = swift_slowAlloc();
    v41 = v39;
    *v15 = 136446466;
    sub_217858578();
    v16 = *(v9 + 8);
    v17 = OUTLINED_FUNCTION_64();
    v18(v17);
    OUTLINED_FUNCTION_0();
    sub_217863A38(v19, v20);
    sub_21796966C();
    v21 = OUTLINED_FUNCTION_44();
    v22(v21);
    v23 = OUTLINED_FUNCTION_64();
    sub_217957F4C(v23, v24, v25);

    OUTLINED_FUNCTION_58();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8A750, &unk_21796A930);
    v26 = sub_217968F8C();
    v28 = sub_217957F4C(v26, v27, &v41);

    *(v15 + 14) = v28;
    OUTLINED_FUNCTION_57(&dword_217846000, v29, v30, "Failed to load additional content for %{public}s. Error = %{public}s", v31, v32, v33, v34, v37, v38, v39, *v40, v40[4]);
    OUTLINED_FUNCTION_68();
    OUTLINED_FUNCTION_73();
    OUTLINED_FUNCTION_73();
  }

  else
  {
    (*(v0[23] + 8))(v0[24], v0[21]);
  }

  OUTLINED_FUNCTION_11();

  OUTLINED_FUNCTION_39();

  return v35();
}

uint64_t sub_21785B774()
{
  v2 = *v1;
  v3 = *v1;
  OUTLINED_FUNCTION_6();
  *v4 = v3;
  v5 = v2[45];
  v6 = v2[44];
  v22 = v2[32];
  OUTLINED_FUNCTION_66();
  v8 = *(v7 + 240);
  v21 = v2[29];
  OUTLINED_FUNCTION_66();
  v10 = *(v9 + 224);
  v11 = v2[27];
  v12 = v2[26];
  v13 = *v1;
  OUTLINED_FUNCTION_6();
  *v14 = v13;
  v3[46] = v0;

  (*(v11 + 8))(v10, v12);
  v15 = *(v8 + 8);
  v3[47] = v15;
  v15(v22, v21);
  OUTLINED_FUNCTION_66();
  v17 = *(v16 + 312);
  v18 = v2[38];
  if (v0)
  {
    v19 = sub_21785BD18;
  }

  else
  {
    v19 = sub_21785B97C;
  }

  return MEMORY[0x2822009F8](v19, v18, v17);
}

uint64_t sub_21785B97C()
{
  v45 = v0;
  v43 = v0[47];
  v2 = v0[33];
  v4 = v0[36];
  v3 = v0[37];
  v6 = v0[30];
  v5 = v0[31];
  v7 = v0[29];
  v8 = v0[22];

  v9 = OUTLINED_FUNCTION_55();
  v10(v9);
  v11 = OUTLINED_FUNCTION_63();
  v12(v11);
  sub_2178585C0(v5);
  if (qword_27CB8A368 != -1)
  {
    OUTLINED_FUNCTION_34();
  }

  v13 = v0[36];
  v14 = v0[25];
  OUTLINED_FUNCTION_46(&qword_27CB97840);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8A758, &unk_21796B1B0);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_21796A340;
  sub_21796897C();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8A6E8, &qword_21796A8E8);
  OUTLINED_FUNCTION_76(v16);
  if (v17)
  {
    sub_2178653BC(v13, &qword_27CB8A720, &unk_21796A910);
    v18 = 0;
  }

  else
  {
    OUTLINED_FUNCTION_32(&qword_27CB8A768, &qword_27CB8A6E8, &qword_21796A8E8);
    OUTLINED_FUNCTION_65();
    sub_2179692AC();
    OUTLINED_FUNCTION_65();
    sub_2179692EC();
    v18 = OUTLINED_FUNCTION_70();
    OUTLINED_FUNCTION_10(v1);
    (*(v19 + 8))(v13, v1);
  }

  v20 = v0[21];
  v21 = v0[22];
  v22 = MEMORY[0x277D83C10];
  *(v15 + 56) = MEMORY[0x277D83B88];
  *(v15 + 64) = v22;
  *(v15 + 32) = v18;

  OUTLINED_FUNCTION_42();

  v23 = sub_217968F3C();
  v25 = v24;

  v0[12] = v23;
  v0[13] = v25;
  v26 = sub_21796903C();
  OUTLINED_FUNCTION_40(v26, v27);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8A760, &qword_21796A940);
  sub_217967C2C();
  OUTLINED_FUNCTION_38();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8A740, &unk_21796B560);
  sub_217967C2C();
  v28 = v21 + *(v20 + 48);
  sub_217956100();
  v29 = v0[5];
  v30 = v0[36];
  v31 = v0[29];
  v32 = v0[30];
  if (v29)
  {
    v34 = v0[21];
    v33 = v0[22];
    v35 = v0[6];
    __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
    v44 = *(v33 + *(v34 + 64));
    v36 = *(v35 + 8);
    sub_217863EC4(v44);
    v36(&v44, v29, v35);
    sub_2178643E0(v44);
    v37 = OUTLINED_FUNCTION_7();
    v38(v37);
    __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  }

  else
  {
    v39 = OUTLINED_FUNCTION_7();
    v40(v39);
    sub_2178653BC((v0 + 2), &qword_27CB8A630, qword_21796A7B0);
  }

  OUTLINED_FUNCTION_11();

  OUTLINED_FUNCTION_39();

  return v41();
}

uint64_t sub_21785BD18()
{
  v42 = v0;
  v1 = v0[46];
  v2 = v0[47];
  v3 = v0[37];
  v5 = v0[21];
  v4 = v0[22];

  OUTLINED_FUNCTION_35();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8A740, &unk_21796B560);
  sub_217967C2C();
  if (qword_27CB8A480 != -1)
  {
    OUTLINED_FUNCTION_31();
  }

  v7 = v0[23];
  v6 = v0[24];
  v9 = v0[21];
  v8 = v0[22];
  v10 = sub_21796653C();
  __swift_project_value_buffer(v10, qword_27CB97B00);
  v11 = OUTLINED_FUNCTION_53();
  v12(v11);
  v13 = v1;
  v14 = sub_21796651C();
  LOBYTE(v6) = sub_21796937C();

  if (os_log_type_enabled(v14, v6))
  {
    v15 = OUTLINED_FUNCTION_37();
    v39 = swift_slowAlloc();
    v41 = v39;
    *v15 = 136446466;
    sub_217858578();
    v16 = *(v9 + 8);
    v17 = OUTLINED_FUNCTION_64();
    v18(v17);
    OUTLINED_FUNCTION_0();
    sub_217863A38(v19, v20);
    sub_21796966C();
    v21 = OUTLINED_FUNCTION_44();
    v22(v21);
    v23 = OUTLINED_FUNCTION_64();
    sub_217957F4C(v23, v24, v25);

    OUTLINED_FUNCTION_58();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8A750, &unk_21796A930);
    v26 = sub_217968F8C();
    v28 = sub_217957F4C(v26, v27, &v41);

    *(v15 + 14) = v28;
    OUTLINED_FUNCTION_57(&dword_217846000, v29, v30, "Failed to load additional content for %{public}s. Error = %{public}s", v31, v32, v33, v34, v37, v38, v39, *v40, v40[4]);
    OUTLINED_FUNCTION_68();
    OUTLINED_FUNCTION_73();
    OUTLINED_FUNCTION_73();
  }

  else
  {
    (*(v0[23] + 8))(v0[24], v0[21]);
  }

  OUTLINED_FUNCTION_11();

  OUTLINED_FUNCTION_39();

  return v35();
}

unint64_t sub_21785BFD0()
{
  result = qword_27CB8A488;
  if (!qword_27CB8A488)
  {
    sub_21796693C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB8A488);
  }

  return result;
}

uint64_t sub_21785C01C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  if (OUTLINED_FUNCTION_43())
  {
    v14 = sub_21796693C();
    v15 = OUTLINED_FUNCTION_2(v14);
    v17 = v16;
    v19 = *(v18 + 64);
    MEMORY[0x28223BE20](v15);
    OUTLINED_FUNCTION_14();
    v22 = v21 - v20;
    if (!a2)
    {
      sub_21796950C();

      MEMORY[0x21CEA7F50](a4, a5);
      MEMORY[0x21CEA7F50](58, 0xE100000000000000);
      v35 = sub_21796966C();
      MEMORY[0x21CEA7F50](v35);
    }

    v36 = sub_21796923C();
    v37 = OUTLINED_FUNCTION_2(v36);
    v39 = *(v38 + 64);
    MEMORY[0x28223BE20](v37);
    OUTLINED_FUNCTION_14();
    (*(v42 + 16))(v41 - v40, a3);

    sub_21796692C();
    MEMORY[0x21CEA69A0](v22, a9, v14, a10);

    return (*(v17 + 8))(v22, v14);
  }

  else
  {
    v23 = sub_21796682C();
    v24 = OUTLINED_FUNCTION_3(v23);
    v26 = *(v25 + 64);
    MEMORY[0x28223BE20](v24);
    OUTLINED_FUNCTION_14();
    v29 = (v28 - v27);
    v31 = *(v30 + 20);
    v32 = sub_21796923C();
    OUTLINED_FUNCTION_3(v32);
    (*(v33 + 16))(&v29[v31], a3);
    *v29 = a7;
    *(v29 + 1) = a8;
    MEMORY[0x21CEA69A0](v29, a9, v23, a10);
    return sub_217865300(v29, MEMORY[0x277CDD8B0]);
  }
}

uint64_t sub_21785C33C()
{
  *&v4 = sub_2178C3764();
  *(&v4 + 1) = v0;
  done = _s15DoneToolbarItemVMa();
  WitnessTable = swift_getWitnessTable();
  sub_2178B9358(&v4, done, &v5);

  v4 = v5;
  MEMORY[0x21CEA6000](&v4, done, WitnessTable);
}

uint64_t sub_21785C3F8(uint64_t a1)
{
  v2 = sub_21796595C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2179689AC();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = _s15AlbumDetailViewVMa();
  v13 = v12;
  if (*(a1 + *(v12 + 40)) == 1)
  {
    v14 = (a1 + *(v12 + 44));
    v28 = v6;
    v29 = v3;
    v15 = v2;
    v16 = *v14;
    v17 = v14[1];
    _s9ViewModelCMa();
    swift_getWitnessTable();
    v2 = v15;
    v6 = v28;
    v3 = v29;
    sub_217966A9C();
    sub_217858578();
    sub_217863A38(&qword_27CB8A6D0, MEMORY[0x277CD82C8]);
    sub_2178D1C94();

    (*(v8 + 8))(v11, v7);
  }

  v18 = a1 + *(v13 + 48);
  sub_217956100();
  v19 = v36;
  if (!v36)
  {
    return sub_2178653BC(v35, &qword_27CB8A630, qword_21796A7B0);
  }

  v20 = v37;
  __swift_project_boxed_opaque_existential_1(v35, v36);
  sub_217858578();
  (*(v3 + 104))(v6, *MEMORY[0x277D2A400], v2);
  v34 = 4;
  v21 = (a1 + *(v13 + 36));
  v23 = *(v21 + 1);
  v22 = *(v21 + 2);
  v24 = *(v21 + 3);
  v30[0] = *v21;
  v31 = v23;
  v32 = v22;
  v33 = v24;
  v25 = *(v20 + 24);

  sub_217863EC4(v24);
  v25(v6, &v34, v30, v19, v20);
  v26 = v33;

  sub_2178643E0(v26);
  (*(v3 + 8))(v6, v2);
  return __swift_destroy_boxed_opaque_existential_1(v35);
}

uint64_t sub_21785C740@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v25 = a2;
  v26 = a1;
  v27 = a5;
  v24[2] = sub_2179689AC();
  v24[1] = sub_217863A38(&qword_27CB8A6D0, MEMORY[0x277CD82C8]);
  _s19ContainerHeaderCellVMa();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  sub_21796732C();
  sub_21796698C();
  sub_21796698C();
  sub_21796698C();
  sub_21796698C();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8A6D8, &unk_21796AF80);
  sub_21796698C();
  _s20FailureAlertModifierVMa();
  v24[0] = sub_21796698C();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8A6E0, &qword_21796A8E0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8A6E8, &qword_21796A8E8);
  _s14AlbumTrackCellVMa();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  sub_21796698C();
  sub_21796698C();
  sub_21796698C();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8A6F0, &qword_21796A8F0);
  swift_getTupleTypeMetadata2();
  sub_217967E9C();
  sub_217864B2C(&qword_27CB8A6F8, &qword_27CB8A6E8, &qword_21796A8E8);
  v40 = sub_21786438C();
  sub_217967D9C();
  sub_21796698C();
  swift_getTupleTypeMetadata2();
  sub_217967E9C();
  sub_21796944C();
  v7 = a3;
  v8 = a4;
  _s14ContainerShelfVMa();
  sub_21796944C();
  swift_getTupleTypeMetadata3();
  sub_217967E9C();
  swift_getWitnessTable();
  sub_21796665C();
  v9 = sub_21796698C();
  v10 = sub_2179669FC();
  WitnessTable = swift_getWitnessTable();
  v35 = MEMORY[0x277CE0880];
  v11 = swift_getWitnessTable();
  v12 = sub_217863A38(&qword_27CB8A708, MEMORY[0x277CDDB18]);
  swift_getOpaqueTypeMetadata2();
  sub_217966F9C();
  v36 = v9;
  v37 = v10;
  v38 = v11;
  v39 = v12;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v32 = MEMORY[0x277CE1410];
  v33 = OpaqueTypeConformance2;
  swift_getWitnessTable();
  v14 = sub_21796666C();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x28223BE20](v14);
  v19 = v24 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = v24 - v20;
  sub_2179673DC();
  v28 = v7;
  v29 = v8;
  v30 = v25;
  v31 = v26;
  sub_21789AA60();
  swift_getWitnessTable();
  sub_2179560E4(v19, v14);
  v22 = *(v15 + 8);
  v22(v19, v14);
  sub_2179560E4(v21, v14);
  return (v22)(v21, v14);
}

uint64_t sub_21785CD70@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v78 = a2;
  v87 = a1;
  v88 = a5;
  v90 = sub_2179669FC();
  v80 = *(v90 - 8);
  v7 = *(v80 + 64);
  MEMORY[0x28223BE20](v90);
  v79 = &v68 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_21796708C();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v77 = &v68 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_2179689AC();
  v89 = v12;
  v86 = sub_217863A38(&qword_27CB8A6D0, MEMORY[0x277CD82C8]);
  v96 = v12;
  v97 = a3;
  v13 = a3;
  v98 = v86;
  v99 = a4;
  v81 = a4;
  v14 = _s19ContainerHeaderCellVMa();
  WitnessTable = swift_getWitnessTable();
  v96 = v14;
  v97 = WitnessTable;
  swift_getOpaqueTypeMetadata2();
  sub_21796732C();
  sub_21796698C();
  sub_21796698C();
  sub_21796698C();
  sub_21796698C();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8A6D8, &unk_21796AF80);
  sub_21796698C();
  _s20FailureAlertModifierVMa();
  v85 = sub_21796698C();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8A6E0, &qword_21796A8E0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8A6E8, &qword_21796A8E8);
  v17 = _s14AlbumTrackCellVMa();
  v18 = swift_getWitnessTable();
  v96 = v17;
  v97 = v18;
  swift_getOpaqueTypeMetadata2();
  sub_21796698C();
  sub_21796698C();
  sub_21796698C();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8A6F0, &qword_21796A8F0);
  swift_getTupleTypeMetadata2();
  v19 = sub_217967E9C();
  v20 = sub_217864B2C(&qword_27CB8A6F8, &qword_27CB8A6E8, &qword_21796A8E8);
  v21 = sub_21786438C();
  v96 = v16;
  v97 = MEMORY[0x277CD7E90];
  v98 = v19;
  v99 = v20;
  v100 = v21;
  sub_217967D9C();
  sub_21796698C();
  swift_getTupleTypeMetadata2();
  sub_217967E9C();
  sub_21796944C();
  v96 = v89;
  v97 = v13;
  v22 = v81;
  v98 = v86;
  v99 = v81;
  _s14ContainerShelfVMa();
  sub_21796944C();
  swift_getTupleTypeMetadata3();
  v23 = sub_217967E9C();
  swift_getWitnessTable();
  v74 = v23;
  v24 = sub_21796665C();
  v75 = *(v24 - 8);
  v25 = *(v75 + 64);
  MEMORY[0x28223BE20](v24);
  v72 = &v68 - v26;
  v27 = sub_21796698C();
  v76 = *(v27 - 8);
  v28 = *(v76 + 64);
  MEMORY[0x28223BE20](v27);
  v73 = &v68 - v29;
  v71 = v24;
  v94 = swift_getWitnessTable();
  v95 = MEMORY[0x277CE0880];
  v30 = swift_getWitnessTable();
  v31 = sub_217863A38(&qword_27CB8A708, MEMORY[0x277CDDB18]);
  v96 = v27;
  v97 = v90;
  v85 = v31;
  v86 = v30;
  v98 = v30;
  v99 = v31;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v70 = *(OpaqueTypeMetadata2 - 8);
  v33 = *(v70 + 64);
  v34 = MEMORY[0x28223BE20](OpaqueTypeMetadata2);
  v36 = &v68 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v34);
  v38 = &v68 - v37;
  v82 = v39;
  v40 = sub_217966F9C();
  v83 = *(v40 - 8);
  v84 = v40;
  v41 = *(v83 + 64);
  MEMORY[0x28223BE20](v40);
  v89 = &v68 - v42;
  v43 = v13;
  v44 = v22;
  v45 = _s15AlbumDetailViewVMa();
  v46 = v87;
  v47 = (v87 + *(v45 + 60));
  v48 = *v47;
  v49 = *(v47 + 1);
  LOBYTE(v96) = v48;
  v97 = v49;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8A740, &unk_21796B560);
  sub_217967C1C();
  v50 = MEMORY[0x277CE1410];
  if (v93 == 1)
  {
    v51 = v90;
    v96 = v27;
    v97 = v90;
    v53 = v85;
    v52 = v86;
    v98 = v86;
    v99 = v85;
    swift_getOpaqueTypeConformance2();
    sub_217952EE8();
  }

  else
  {
    v54 = sub_217966E6C();
    v69 = v27;
    v68 = &v68;
    v55 = *(v46 + *(v45 + 76) + 32);
    MEMORY[0x28223BE20](v54);
    *(&v68 - 4) = v43;
    *(&v68 - 3) = v44;
    v56 = v78;
    *(&v68 - 2) = v57;
    *(&v68 - 1) = v56;
    sub_21789A9E0();
    v58 = v72;
    v27 = v69;
    sub_21796664C();
    sub_2179669BC();
    v59 = v71;
    sub_2178B950C();
    v60 = v73;
    sub_2179677DC();
    (*(v75 + 8))(v58, v59);
    v61 = v79;
    sub_2179669EC();
    v51 = v90;
    v53 = v85;
    v52 = v86;
    sub_2179676FC();
    (*(v80 + 8))(v61, v51);
    (*(v76 + 8))(v60, v27);
    v96 = v27;
    v97 = v51;
    v98 = v52;
    v99 = v53;
    swift_getOpaqueTypeConformance2();
    v62 = v82;
    sub_2179560E4(v36, v82);
    v63 = *(v70 + 8);
    v63(v36, v62);
    sub_2179560E4(v38, v62);
    sub_217952FA4();
    v63(v36, v62);
    v63(v38, v62);
    v50 = MEMORY[0x277CE1410];
  }

  v96 = v27;
  v97 = v51;
  v98 = v52;
  v99 = v53;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v91 = v50;
  v92 = OpaqueTypeConformance2;
  v65 = v84;
  swift_getWitnessTable();
  v66 = v89;
  sub_2179560E4(v89, v65);
  return (*(v83 + 8))(v66, v65);
}

uint64_t sub_21785D88C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v269 = a2;
  v332 = a1;
  v314 = a5;
  v340 = sub_2179689AC();
  v334 = sub_217863A38(&qword_27CB8A6D0, MEMORY[0x277CD82C8]);
  v365 = v340;
  v366 = a3;
  v367 = v334;
  v368 = a4;
  v7 = _s14ContainerShelfVMa();
  v272 = *(v7 - 8);
  v8 = *(v272 + 64);
  v9 = MEMORY[0x28223BE20](v7);
  v271 = v248 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v270 = v248 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8A770, &qword_21796A948);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v307 = v248 - v14;
  v308 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8A778, &unk_21796A950);
  v268 = *(v308 - 8);
  v15 = *(v268 + 64);
  v16 = MEMORY[0x28223BE20](v308);
  v266 = v248 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v267 = v248 - v18;
  v313 = v7;
  v312 = sub_21796944C();
  v309 = *(v312 - 8);
  v19 = *(v309 + 64);
  v20 = MEMORY[0x28223BE20](v312);
  v311 = v248 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v310 = v248 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8A6E0, &qword_21796A8E0);
  v24 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8A6E8, &qword_21796A8E8);
  v25 = _s14AlbumTrackCellVMa();
  WitnessTable = swift_getWitnessTable();
  v365 = v25;
  v366 = WitnessTable;
  swift_getOpaqueTypeMetadata2();
  sub_21796732C();
  sub_21796698C();
  sub_21796698C();
  sub_21796698C();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8A6F0, &qword_21796A8F0);
  swift_getTupleTypeMetadata2();
  v27 = sub_217967E9C();
  v28 = sub_217864B2C(&qword_27CB8A6F8, &qword_27CB8A6E8, &qword_21796A8E8);
  v29 = sub_21786438C();
  v365 = v24;
  v366 = MEMORY[0x277CD7E90];
  v256 = v27;
  v367 = v27;
  v368 = v28;
  v255 = v28;
  v369 = v29;
  v30 = sub_217967D9C();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8A6D8, &unk_21796AF80);
  v31 = sub_21796698C();
  swift_getTupleTypeMetadata2();
  v32 = sub_217967E9C();
  v263 = *(v32 - 8);
  v33 = *(v263 + 64);
  v34 = MEMORY[0x28223BE20](v32);
  v262 = v248 - v35;
  v260 = v30;
  v254 = *(v30 - 8);
  v36 = *(v254 + 64);
  v37 = MEMORY[0x28223BE20](v34);
  v253 = v248 - v38;
  v264 = v31;
  v257 = *(v31 - 8);
  v39 = *(v257 + 64);
  v40 = MEMORY[0x28223BE20](v37);
  v261 = v248 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v40);
  v259 = v248 - v42;
  v251 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8A780, &qword_21796C770);
  v43 = *(*(v251 - 8) + 64);
  v44 = MEMORY[0x28223BE20](v251);
  v250 = v248 - v45;
  v265 = v23;
  v46 = *(*(v23 - 8) + 64);
  v47 = MEMORY[0x28223BE20](v44);
  v258 = v248 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v47);
  v306 = v248 - v49;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8A720, &unk_21796A910);
  v51 = *(*(v50 - 8) + 64);
  v52 = MEMORY[0x28223BE20](v50 - 8);
  v303 = v248 - v53;
  v323 = v24;
  v305 = *(v24 - 8);
  v54 = *(v305 + 64);
  v55 = MEMORY[0x28223BE20](v52);
  v249 = v248 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = MEMORY[0x28223BE20](v55);
  v252 = v248 - v58;
  v248[1] = v59;
  MEMORY[0x28223BE20](v57);
  v322 = v248 - v60;
  v330 = v32;
  v329 = sub_21796944C();
  v328 = *(v329 - 8);
  v61 = *(v328 + 64);
  v62 = MEMORY[0x28223BE20](v329);
  v338 = v248 - ((v63 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v62);
  v337 = v248 - v64;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8A788, &qword_21796A960);
  v66 = *(*(v65 - 8) + 64);
  MEMORY[0x28223BE20](v65 - 8);
  v302 = v248 - v67;
  v295 = sub_21796722C();
  v293 = *(v295 - 8);
  v68 = *(v293 + 64);
  MEMORY[0x28223BE20](v295);
  v285 = v248 - ((v69 + 15) & 0xFFFFFFFFFFFFFFF0);
  v339 = a3;
  v70 = _s15AlbumDetailViewVMa();
  v71 = *(v70 - 8);
  v331 = *(v71 + 64);
  v72 = MEMORY[0x28223BE20](v70);
  v324 = v248 - v73;
  v326 = *(v340 - 1);
  v74 = *(v326 + 64);
  v75 = MEMORY[0x28223BE20](v72);
  v304 = v248 - ((v76 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = MEMORY[0x28223BE20](v75);
  v301 = v248 - v78;
  MEMORY[0x28223BE20](v77);
  v275 = v248 - v79;
  v365 = v80;
  v366 = a3;
  v367 = v334;
  v368 = a4;
  v81 = _s19ContainerHeaderCellVMa();
  v279 = v81;
  v280 = *(v81 - 8);
  v82 = *(v280 + 64);
  MEMORY[0x28223BE20](v81);
  v278 = v248 - v83;
  v277 = swift_getWitnessTable();
  v365 = v81;
  v366 = v277;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v281 = *(OpaqueTypeMetadata2 - 8);
  v85 = *(v281 + 64);
  MEMORY[0x28223BE20](OpaqueTypeMetadata2);
  v276 = v248 - v86;
  v282 = v87;
  v88 = sub_21796698C();
  v287 = *(v88 - 8);
  v89 = *(v287 + 64);
  MEMORY[0x28223BE20](v88);
  v284 = v248 - v90;
  v289 = v91;
  v92 = sub_21796698C();
  v290 = *(v92 - 8);
  v93 = *(v290 + 64);
  MEMORY[0x28223BE20](v92);
  v286 = v248 - v94;
  v291 = v95;
  v96 = sub_21796698C();
  v292 = *(v96 - 8);
  v97 = *(v292 + 64);
  MEMORY[0x28223BE20](v96);
  v288 = v248 - v98;
  v294 = v99;
  v100 = sub_21796698C();
  v296 = *(v100 - 8);
  v101 = *(v296 + 64);
  MEMORY[0x28223BE20](v100);
  v283 = v248 - v102;
  v297 = v103;
  v104 = sub_21796698C();
  v299 = *(v104 - 8);
  v105 = *(v299 + 64);
  MEMORY[0x28223BE20](v104);
  v298 = v248 - v106;
  _s20FailureAlertModifierVMa();
  v300 = v104;
  v327 = sub_21796698C();
  v325 = *(v327 - 8);
  v107 = *(v325 + 64);
  v108 = MEMORY[0x28223BE20](v327);
  v336 = v248 - ((v109 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v108);
  v335 = v248 - v110;
  v111 = v332;
  sub_217858578();
  v112 = v111 + *(v70 + 68);
  v114 = *(v112 + 8);
  v113 = *(v112 + 16);
  v115 = *(v112 + 24);
  LOBYTE(v365) = *v112;
  v366 = v114;
  v367 = v113;
  v368 = v115;
  v116 = (v111 + *(v70 + 56));
  v117 = *(v116 + 2);
  v363 = *v116;
  v364 = v117;

  sub_217863EC4(v115);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8A760, &qword_21796A940);
  sub_217967C1C();
  v274 = v346;
  v273 = v347;
  LOBYTE(v363) = sub_21785FD10(v70);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8A790, &qword_21796A968);
  sub_217967C0C();
  v361 = v346;
  v362 = v347;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8A798, &qword_21796A970);
  sub_217967C3C();

  v118 = v363;
  LOBYTE(v30) = v364;
  v119 = *(v71 + 16);
  v120 = v324;
  v317 = v71 + 16;
  v316 = v119;
  v119(v324, v111, v70);
  v121 = *(v71 + 80);
  v122 = (v121 + 32) & ~v121;
  v315 = v122 + v331;
  v319 = v121 | 7;
  v123 = swift_allocObject();
  v124 = v339;
  *(v123 + 16) = v339;
  *(v123 + 24) = a4;
  v125 = *(v71 + 32);
  v320 = v122;
  v333 = v70;
  v126 = v70;
  v127 = v277;
  v321 = v71 + 32;
  v318 = v125;
  v125(v123 + v122, v120, v126);
  v331 = a4;
  v128 = v276;
  v129 = v278;
  sub_217890BD0(v275, &v365, 0, 0, 0, 0, v274, v273, v278, v118, *(&v118 + 1), v30, v124, sub_2178647AC, v123, v340, v124, v334);
  v130 = v285;
  sub_21796720C();
  v131 = v279;
  sub_2179678AC();
  v132 = v130;
  v133 = v131;
  (*(v293 + 8))(v132, v295);
  (*(v280 + 8))(v129, v131);
  if (qword_27CB8A3F8 != -1)
  {
    swift_once();
  }

  v134 = qword_27CB979F8;
  v135 = unk_27CB97A00;
  v136 = qword_27CB97A08;
  v365 = v133;
  v366 = v127;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v138 = v284;
  v139 = v282;
  sub_2178ED854(v134, v135, v136);
  (*(v281 + 8))(v128, v139);
  sub_21796742C();
  v140 = v333;
  v141 = v332;
  v142 = (v332 + *(v333 + 76));
  v143 = *v142;
  v144 = sub_217863A38(&qword_27CB8A710, MEMORY[0x277CDE470]);
  v359 = OpaqueTypeConformance2;
  v360 = v144;
  v145 = v289;
  v146 = swift_getWitnessTable();
  v147 = v286;
  sub_217967A0C();
  (*(v287 + 8))(v138, v145);
  sub_21796743C();
  v148 = v142[1];
  v149 = MEMORY[0x277CDF918];
  v357 = v146;
  v358 = MEMORY[0x277CDF918];
  v150 = v291;
  v151 = swift_getWitnessTable();
  v152 = v288;
  sub_217967A0C();
  (*(v290 + 8))(v147, v150);
  sub_21796744C();
  v355 = v151;
  v356 = v149;
  v153 = v149;
  v154 = v294;
  v155 = swift_getWitnessTable();
  v156 = v283;
  sub_217967A0C();
  (*(v292 + 8))(v152, v154);
  v157 = v141;
  v158 = v140;
  if (qword_27CB8A340 != -1)
  {
    swift_once();
  }

  v365 = qword_27CB977B8;
  v353 = v155;
  v354 = v153;

  v159 = v297;
  v160 = swift_getWitnessTable();
  sub_217952FA0();
  v161 = v298;
  sub_21796768C();

  (*(v296 + 8))(v156, v159);
  v162 = *(v158 + 52);
  v163 = v158;
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CB8A598, &unk_21796AD60);
  v164 = v157;
  v165 = v302;
  sub_217967C3C();
  v166 = v324;
  v167 = v163;
  v316(v324, v157, v163);
  v168 = swift_allocObject();
  v169 = v331;
  *(v168 + 16) = v339;
  *(v168 + 24) = v169;
  v318(v168 + v320, v166, v167);
  v170 = sub_217864B2C(&qword_27CB8A7A0, &qword_27CB8A6D8, &unk_21796AF80);
  v351 = v160;
  v297 = v170;
  v352 = v170;
  v171 = v300;
  v172 = swift_getWitnessTable();
  v173 = v336;
  sub_21792EC54(v165, sub_217864A88, v168, v171, v172);

  sub_2178653BC(v165, &qword_27CB8A788, &qword_21796A960);
  (*(v299 + 8))(v161, v171);
  v174 = sub_217863A38(&qword_27CB8A7A8, _s20FailureAlertModifierVMa);
  v349 = v172;
  v350 = v174;
  v175 = v327;
  v299 = swift_getWitnessTable();
  sub_2179560E4(v173, v175);
  v176 = *(v325 + 8);
  v302 = (v325 + 8);
  v300 = v176;
  v176(v173, v175);
  v177 = v301;
  sub_217858578();
  v178 = v303;
  sub_21796897C();
  v179 = v326 + 8;
  v180 = *(v326 + 8);
  v181 = v333;
  v182 = v340;
  (v180)(v177, v340);
  v183 = v323;
  if (__swift_getEnumTagSinglePayload(v178, 1, v323) == 1)
  {
    sub_2178653BC(v178, &qword_27CB8A720, &unk_21796A910);
    v184 = v338;
    __swift_storeEnumTagSinglePayload(v338, 1, 1, v330);
  }

  else
  {
    v185 = v305;
    v326 = v179;
    v301 = *(v305 + 32);
    (v301)(v322, v178, v183);
    v303 = v180;
    v186 = v250;
    sub_217967D6C();
    v187 = sub_21796742C();
    sub_21796660C();
    v188 = v251;
    v189 = v186 + *(v251 + 36);
    *v189 = v187;
    *(v189 + 8) = v190;
    *(v189 + 16) = v191;
    *(v189 + 24) = v192;
    *(v189 + 32) = v193;
    *(v189 + 40) = 0;
    v194 = v306;
    sub_217864D20(v186, v306, &qword_27CB8A780, &qword_21796C770);
    __swift_storeEnumTagSinglePayload(v194, 0, 1, v188);
    v195 = v185;
    v196 = *(v185 + 16);
    v197 = v322;
    v196(v252, v322, v183);
    v316(v166, v164, v181);
    v198 = v249;
    v196(v249, v197, v183);
    v199 = (v315 + *(v195 + 80)) & ~*(v195 + 80);
    v200 = swift_allocObject();
    v201 = v331;
    *(v200 + 16) = v339;
    *(v200 + 24) = v201;
    v318(v200 + v320, v166, v181);
    (v301)(v200 + v199, v198, v183);
    v324 = MEMORY[0x277CE14C0];
    v202 = swift_getWitnessTable();
    sub_217863A38(&qword_27CB8A7B0, MEMORY[0x277CD83B8]);
    v203 = v253;
    sub_217967D8C();
    v365 = qword_27CB977B8;
    v343 = v202;

    v204 = v260;
    v205 = swift_getWitnessTable();
    sub_217952FA0();
    v206 = v261;
    sub_21796768C();

    (*(v254 + 8))(v203, v204);
    v341 = v205;
    v342 = v297;
    v207 = v264;
    v208 = swift_getWitnessTable();
    v209 = v259;
    sub_2179560E4(v206, v207);
    v210 = v257;
    v211 = *(v257 + 8);
    v211(v206, v207);
    v212 = v306;
    v213 = v258;
    sub_217864D70(v306, v258, &qword_27CB8A6E0, &qword_21796A8E0);
    v365 = v213;
    (*(v210 + 16))(v206, v209, v207);
    v366 = v206;
    *&v363 = v265;
    *(&v363 + 1) = v207;
    v346 = sub_217864DC0(&qword_27CB8A7B8, &qword_27CB8A6E0, &qword_21796A8E0, sub_217864C64);
    v347 = v208;
    v214 = v262;
    sub_2178B9390(&v365, 2, &v363);
    v211(v209, v207);
    sub_2178653BC(v212, &qword_27CB8A6E0, &qword_21796A8E0);
    (*(v305 + 8))(v322, v323);
    v215 = v207;
    v164 = v332;
    v211(v206, v215);
    v180 = v303;
    v216 = v213;
    v182 = v340;
    sub_2178653BC(v216, &qword_27CB8A6E0, &qword_21796A8E0);
    v184 = v338;
    v217 = v330;
    (*(v263 + 32))(v338, v214, v330);
    __swift_storeEnumTagSinglePayload(v184, 0, 1, v217);
  }

  swift_getWitnessTable();
  sub_2178AEE20(v184, v337);
  v324 = *(v328 + 8);
  (v324)(v184, v329);
  v218 = v313;
  v219 = v304;
  sub_217858578();
  v220 = v307;
  sub_21796894C();
  (v180)(v219, v182);
  v221 = v308;
  if (__swift_getEnumTagSinglePayload(v220, 1, v308) == 1)
  {
    sub_2178653BC(v220, &qword_27CB8A770, &qword_21796A948);
    v222 = v311;
    __swift_storeEnumTagSinglePayload(v311, 1, 1, v218);
    swift_getWitnessTable();
  }

  else
  {
    v223 = v268;
    v224 = v164;
    v225 = v267;
    (*(v268 + 32))(v267, v220, v221);
    v226 = v333;
    v227 = sub_2178586AC();
    v229 = v228;
    v230 = v266;
    (*(v223 + 16))(v266, v225, v221);
    v365 = *(v224 + *(v226 + 64));
    sub_217863EC4(v365);
    sub_21796680C();
    v247 = v182;
    v231 = v271;
    sub_2178B0304(v227, v229, v230, &v365, 11, 0, 1, v271, v232, v247, v339, v334);
    (*(v223 + 8))(v225, v221);
    swift_getWitnessTable();
    v233 = v270;
    sub_2179560E4(v231, v218);
    v234 = v272;
    v235 = *(v272 + 8);
    v235(v231, v218);
    sub_2179560E4(v233, v218);
    v235(v233, v218);
    v222 = v311;
    (*(v234 + 32))(v311, v231, v218);
    __swift_storeEnumTagSinglePayload(v222, 0, 1, v218);
  }

  v236 = v310;
  sub_2178AEE20(v222, v310);
  v237 = v309;
  v340 = *(v309 + 8);
  v238 = v312;
  (v340)(v222, v312);
  v239 = v336;
  v240 = v327;
  (*(v325 + 16))(v336, v335, v327);
  v365 = v239;
  v241 = v338;
  v242 = v329;
  (*(v328 + 16))(v338, v337, v329);
  v366 = v241;
  (*(v237 + 16))(v222, v236, v238);
  v367 = v222;
  *&v363 = v240;
  *(&v363 + 1) = v242;
  v364 = v238;
  v346 = v299;
  v345 = swift_getWitnessTable();
  v347 = swift_getWitnessTable();
  v344 = swift_getWitnessTable();
  v348 = swift_getWitnessTable();
  sub_2178B9390(&v365, 3, &v363);
  v243 = v340;
  (v340)(v236, v238);
  v244 = v324;
  (v324)(v337, v242);
  v245 = v300;
  v300(v335, v240);
  v243(v222, v238);
  v244(v338, v242);
  return v245(v336, v240);
}

uint64_t sub_21785FD10(uint64_t a1)
{
  v79 = a1;
  v66 = sub_21796852C();
  v76 = *(v66 - 8);
  v2 = *(v76 + 64);
  MEMORY[0x28223BE20](v66);
  v65 = &v59 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = sub_2179688CC();
  v77 = *(v72 - 8);
  v4 = *(v77 + 64);
  MEMORY[0x28223BE20](v72);
  v71 = &v59 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = sub_217968A2C();
  v78 = *(v73 - 8);
  v6 = *(v78 + 8);
  v7 = MEMORY[0x28223BE20](v73);
  v9 = &v59 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v85 = &v59 - v10;
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8A820, &qword_21796A9C0);
  v11 = *(*(v84 - 8) + 64);
  MEMORY[0x28223BE20](v84);
  v13 = &v59 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8A720, &unk_21796A910);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v17 = &v59 - v16;
  v18 = sub_2179689AC();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  v22 = &v59 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8A6E8, &qword_21796A8E8);
  v24 = *(v23 - 8);
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v23);
  v27 = &v59 - v26;
  v80 = v1;
  sub_217858578();
  sub_21796897C();
  (*(v19 + 8))(v22, v18);
  if (__swift_getEnumTagSinglePayload(v17, 1, v23) == 1)
  {
    sub_2178653BC(v17, &qword_27CB8A720, &unk_21796A910);
    return 4;
  }

  else
  {
    (*(v24 + 32))(v27, v17, v23);
    v60 = v24;
    (*(v24 + 16))(v13, v27, v23);
    v29 = *(v84 + 36);
    v30 = sub_217864B2C(&qword_27CB8A768, &qword_27CB8A6E8, &qword_21796A8E8);
    v31 = v77;
    v32 = v30;
    v59 = v27;
    sub_2179692AC();
    v83 = (v78 + 32);
    v84 = (v78 + 16);
    v82 = (v78 + 88);
    v81 = *MEMORY[0x277CD8368];
    v64 = (v78 + 8);
    v74 = (v78 + 96);
    v63 = (v76 + 32);
    v70 = *MEMORY[0x277CD8350];
    v62 = (v76 + 8);
    v69 = (v31 + 32);
    v68 = (v31 + 8);
    v33 = 4;
    v34 = v73;
    v77 = v23;
    v78 = v9;
    v75 = v32;
    v76 = v29;
    while (2)
    {
      v61 = v33;
      do
      {
        while (1)
        {
          while (1)
          {
            sub_2179692EC();
            if (*&v13[v29] == v86[0])
            {
              sub_2178653BC(v13, &qword_27CB8A820, &qword_21796A9C0);
              (*(v60 + 8))(v59, v23);
              return v61;
            }

            v35 = sub_21796934C();
            v36 = v85;
            (*v84)(v85);
            v35(v86, 0);
            sub_2179692FC();
            (*v83)(v9, v36, v34);
            v37 = (*v82)(v9, v34);
            if (v37 != v81)
            {
              break;
            }

            (*v74)(v9, v34);
            v39 = v71;
            v38 = v72;
            (*v69)(v71, v9, v72);
            v40 = (v80 + *(v79 + 44));
            v41 = *v40;
            v42 = v40[1];
            v43 = *(v79 + 16);
            v44 = *(v79 + 24);
            _s9ViewModelCMa();
            swift_getWitnessTable();
            sub_217966A9C();
            sub_217863A38(&qword_27CB8A830, MEMORY[0x277CD8238]);
            sub_2178E0BC8();
            v46 = v45;

            v23 = v77;
            v9 = v78;
            v29 = v76;
            sub_217966A9C();
            sub_2178E1804();
            v48 = v47;

            v49 = v38;
            v34 = v73;
            (*v68)(v39, v49);
            if (v46)
            {
              goto LABEL_13;
            }
          }

          if (v37 == v70)
          {
            break;
          }

          (*v64)(v9, v34);
        }

        (*v74)(v9, v34);
        v50 = v65;
        v51 = v66;
        (*v63)(v65, v9, v66);
        v52 = (v80 + *(v79 + 44));
        v54 = *v52;
        v53 = v52[1];
        v55 = *(v79 + 16);
        v56 = *(v79 + 24);
        _s9ViewModelCMa();
        swift_getWitnessTable();
        sub_217966A9C();
        sub_217863A38(&qword_27CB8A828, MEMORY[0x277CD7E58]);
        sub_2178E0BC8();
        v67 = v57;

        v29 = v76;
        v23 = v77;
        sub_217966A9C();
        v9 = v78;
        sub_2178E1804();
        v48 = v58;

        (*v62)(v50, v51);
      }

      while ((v67 & 1) == 0);
LABEL_13:
      v33 = 1;
      if (v48)
      {
        continue;
      }

      break;
    }

    sub_2178653BC(v13, &qword_27CB8A820, &qword_21796A9C0);
    (*(v60 + 8))(v59, v23);
    return 0;
  }
}

uint64_t sub_21786068C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8A720, &unk_21796A910);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v43 = &v41 - v4;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8A6E8, &qword_21796A8E8);
  v42 = *(v44 - 8);
  v5 = *(v42 + 64);
  MEMORY[0x28223BE20](v44);
  v41 = &v41 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8A578, &qword_21796A750);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v7 - 8);
  v45 = &v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v46 = (&v41 - v11);
  v12 = sub_2179689AC();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v41 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v41 - v18;
  v20 = _s15AlbumDetailViewVMa();
  v21 = (a1 + *(v20 + 44));
  v23 = *v21;
  v22 = v21[1];
  _s9ViewModelCMa();
  swift_getWitnessTable();
  sub_217966A9C();
  sub_217858578();
  sub_217863A38(&qword_27CB8A6D0, MEMORY[0x277CD82C8]);
  sub_2178E2AD0();
  v25 = v24;

  v26 = *(v13 + 8);
  v26(v19, v12);
  if ((v25 & 1) == 0)
  {
    if (sub_217858A4C(v20) >= 1)
    {
      sub_217858578();
      v32 = v43;
      sub_21796897C();
      v26(v17, v12);
      v33 = v44;
      if (__swift_getEnumTagSinglePayload(v32, 1, v44) != 1)
      {
        v35 = v41;
        v34 = v42;
        (*(v42 + 32))(v41, v32, v33);
        v36 = sub_217858A4C(v20);
        sub_217864B2C(&qword_27CB8A768, &qword_27CB8A6E8, &qword_21796A8E8);
        sub_2179692AC();
        sub_2179692EC();
        v37 = sub_2179692DC();
        v38 = v46;
        sub_21791E5A8(v36, v37, v46);
        v39 = _s5AlertVMa(0);
        __swift_storeEnumTagSinglePayload(v38, 0, 1, v39);
        v40 = *(v20 + 52);
        sub_217864D70(v38, v45, &qword_27CB8A578, &qword_21796A750);
        __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CB8A598, &unk_21796AD60);
        sub_217967C2C();
        sub_2178653BC(v38, &qword_27CB8A578, &qword_21796A750);
        return (*(v34 + 8))(v35, v33);
      }

      sub_2178653BC(v32, &qword_27CB8A720, &unk_21796A910);
    }

    return sub_217860C40(v20);
  }

  if (qword_27CB8A430 != -1)
  {
    swift_once();
  }

  v27 = _s5AlertVMa(0);
  v28 = __swift_project_value_buffer(v27, qword_27CB97AA8);
  v29 = v46;
  sub_217864EC8(v28, v46);
  __swift_storeEnumTagSinglePayload(v29, 0, 1, v27);
  v30 = *(v20 + 52);
  sub_217864D70(v29, v45, &qword_27CB8A578, &qword_21796A750);
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CB8A598, &unk_21796AD60);
  sub_217967C2C();
  return sub_2178653BC(v29, &qword_27CB8A578, &qword_21796A750);
}

uint64_t sub_217860C40(uint64_t a1)
{
  v78 = a1;
  v67 = sub_21796852C();
  v75 = *(v67 - 8);
  v2 = *(v75 + 64);
  MEMORY[0x28223BE20](v67);
  v66 = &v59 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = sub_2179688CC();
  v74 = *(v65 - 8);
  v4 = *(v74 + 8);
  MEMORY[0x28223BE20](v65);
  v64 = &v59 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_217968A2C();
  v68 = *(v6 - 8);
  v7 = *(v68 + 64);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v59 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v76 = &v59 - v11;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8A820, &qword_21796A9C0);
  v12 = *(*(v72 - 8) + 64);
  MEMORY[0x28223BE20](v72);
  v14 = &v59 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8A720, &unk_21796A910);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v18 = &v59 - v17;
  v19 = sub_2179689AC();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19);
  v23 = &v59 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8A6E8, &qword_21796A8E8);
  v77 = *(v24 - 8);
  v25 = *(v77 + 64);
  MEMORY[0x28223BE20](v24);
  v27 = &v59 - v26;
  v79 = v1;
  sub_217858578();
  sub_21796897C();
  (*(v20 + 8))(v23, v19);
  if (__swift_getEnumTagSinglePayload(v18, 1, v24) == 1)
  {
    return sub_2178653BC(v18, &qword_27CB8A720, &unk_21796A910);
  }

  v29 = v77;
  (*(v77 + 32))(v27, v18, v24);
  v30 = sub_21785FD10(v78);
  if (v30 == 4)
  {
    return (*(v29 + 8))(v27, v24);
  }

  v73 = v30 != 0;
  (*(v29 + 16))(v14, v27, v24);
  v31 = *(v72 + 36);
  sub_217864B2C(&qword_27CB8A768, &qword_27CB8A6E8, &qword_21796A8E8);
  sub_2179692AC();
  v71 = (v68 + 32);
  v72 = v68 + 16;
  v70 = (v68 + 88);
  HIDWORD(v69) = *MEMORY[0x277CD8368];
  v68 += 96;
  v63 = (v75 + 32);
  HIDWORD(v62) = *MEMORY[0x277CD8350];
  v61 = (v75 + 8);
  v60 = (v74 + 32);
  v59 = (v74 + 8);
  v74 = v27;
  v75 = v6;
  while (1)
  {
    while (1)
    {
      sub_2179692EC();
      if (*&v14[v31] == v80[0])
      {
        sub_2178653BC(v14, &qword_27CB8A820, &qword_21796A9C0);
        return (*(v29 + 8))(v27, v24);
      }

      v32 = sub_21796934C();
      v33 = v76;
      (*v72)(v76);
      v32(v80, 0);
      sub_2179692FC();
      (*v71)(v10, v33, v6);
      v34 = (*v70)(v10, v6);
      if (v34 != HIDWORD(v69))
      {
        break;
      }

      (*v68)(v10, v6);
      v36 = v64;
      v35 = v65;
      (*v60)(v64, v10, v65);
      v37 = (v79 + *(v78 + 44));
      v38 = *v37;
      v39 = v37[1];
      v40 = *(v78 + 16);
      v41 = *(v78 + 24);
      _s9ViewModelCMa();
      swift_getWitnessTable();
      v27 = v74;
      sub_217966A9C();
      v42 = sub_217863A38(&qword_27CB8A830, MEMORY[0x277CD8238]);
      sub_2178E1B6C(v36, 11, v73, v35, v42, v43, v44, v45, v59, v60, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70);

      v46 = v36;
      v6 = v75;
      (*v59)(v46, v35);
      v29 = v77;
    }

    if (v34 != HIDWORD(v62))
    {
      break;
    }

    (*v68)(v10, v6);
    v48 = v66;
    v47 = v67;
    (*v63)(v66, v10, v67);
    v49 = (v79 + *(v78 + 44));
    v50 = *v49;
    v51 = v49[1];
    v52 = *(v78 + 16);
    v53 = *(v78 + 24);
    _s9ViewModelCMa();
    swift_getWitnessTable();
    sub_217966A9C();
    v54 = sub_217863A38(&qword_27CB8A828, MEMORY[0x277CD7E58]);
    sub_2178E1B6C(v48, 11, v73, v47, v54, v55, v56, v57, v59, v60, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70);

    v58 = v48;
    v6 = v75;
    (*v61)(v58, v47);
    v29 = v77;
    v27 = v74;
  }

  result = sub_21796959C();
  __break(1u);
  return result;
}

uint64_t sub_2178614E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v46 = a2;
  v47 = a3;
  v4 = _s15AlbumDetailViewVMa();
  v45 = *(v4 - 8);
  v43 = *(v45 + 64);
  MEMORY[0x28223BE20](v4);
  v44 = &v41 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8A810, &unk_21796A9A0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v42 = &v41 - v8;
  v9 = _s5AlertVMa(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8A818, &qword_21796F490);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v41 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8A578, &qword_21796A750);
  v18 = *(*(v17 - 8) + 64);
  v19 = MEMORY[0x28223BE20](v17 - 8);
  v21 = &v41 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v19);
  v24 = &v41 - v23;
  MEMORY[0x28223BE20](v22);
  v26 = &v41 - v25;
  v27 = *(v4 + 52);
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CB8A598, &unk_21796AD60);
  v48 = a1;
  sub_217967C1C();
  if (qword_27CB8A430 != -1)
  {
    swift_once();
  }

  v28 = __swift_project_value_buffer(v9, qword_27CB97AA8);
  sub_217864EC8(v28, v24);
  __swift_storeEnumTagSinglePayload(v24, 0, 1, v9);
  v29 = *(v13 + 48);
  sub_217864D70(v26, v16, &qword_27CB8A578, &qword_21796A750);
  sub_217864D70(v24, &v16[v29], &qword_27CB8A578, &qword_21796A750);
  if (__swift_getEnumTagSinglePayload(v16, 1, v9) != 1)
  {
    sub_217864D70(v16, v21, &qword_27CB8A578, &qword_21796A750);
    if (__swift_getEnumTagSinglePayload(&v16[v29], 1, v9) != 1)
    {
      sub_217865358(&v16[v29], v12);
      sub_21791EA90();
      v32 = v31;
      sub_217865300(v12, _s5AlertVMa);
      sub_2178653BC(v24, &qword_27CB8A578, &qword_21796A750);
      sub_2178653BC(v26, &qword_27CB8A578, &qword_21796A750);
      sub_217865300(v21, _s5AlertVMa);
      sub_2178653BC(v16, &qword_27CB8A578, &qword_21796A750);
      if (v32)
      {
        goto LABEL_11;
      }

      return sub_217860C40(v4);
    }

    sub_2178653BC(v24, &qword_27CB8A578, &qword_21796A750);
    sub_2178653BC(v26, &qword_27CB8A578, &qword_21796A750);
    sub_217865300(v21, _s5AlertVMa);
LABEL_8:
    sub_2178653BC(v16, &qword_27CB8A818, &qword_21796F490);
    return sub_217860C40(v4);
  }

  sub_2178653BC(v24, &qword_27CB8A578, &qword_21796A750);
  sub_2178653BC(v26, &qword_27CB8A578, &qword_21796A750);
  if (__swift_getEnumTagSinglePayload(&v16[v29], 1, v9) != 1)
  {
    goto LABEL_8;
  }

  sub_2178653BC(v16, &qword_27CB8A578, &qword_21796A750);
LABEL_11:
  v33 = sub_21796923C();
  __swift_storeEnumTagSinglePayload(v42, 1, 1, v33);
  v35 = v44;
  v34 = v45;
  (*(v45 + 16))(v44, v48, v4);
  sub_21796920C();
  v36 = sub_2179691FC();
  v37 = (*(v34 + 80) + 48) & ~*(v34 + 80);
  v38 = swift_allocObject();
  v39 = MEMORY[0x277D85700];
  *(v38 + 2) = v36;
  *(v38 + 3) = v39;
  v40 = v47;
  *(v38 + 4) = v46;
  *(v38 + 5) = v40;
  (*(v34 + 32))(&v38[v37], v35, v4);
  sub_2178D2328();
}

uint64_t sub_217861A68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[4] = a5;
  v6[5] = a6;
  v6[2] = a1;
  v6[3] = a4;
  sub_21796920C();
  v6[6] = sub_2179691FC();
  v8 = sub_2179691BC();
  v6[7] = v8;
  v6[8] = v7;

  return MEMORY[0x2822009F8](sub_217861B04, v8, v7);
}

uint64_t sub_217861B04()
{
  v1 = v0[4];
  v2 = v0[5];
  v3 = v0[3];
  v4 = (v3 + *(_s15AlbumDetailViewVMa() + 44));
  v5 = *v4;
  v6 = v4[1];
  _s9ViewModelCMa();
  OUTLINED_FUNCTION_23();
  swift_getWitnessTable();
  v0[9] = sub_217966A9C();
  v7 = swift_task_alloc();
  v0[10] = v7;
  *v7 = v0;
  v7[1] = sub_217861BF8;

  return sub_2178E2CD0();
}

uint64_t sub_217861BF8()
{
  v2 = *v1;
  v3 = *v1;
  OUTLINED_FUNCTION_6();
  *v4 = v3;
  v5 = v2[10];
  *v4 = *v1;
  v3[11] = v0;

  v6 = v2[9];
  if (v0)
  {

    v7 = v3[7];
    v8 = v3[8];
    v9 = sub_2178655CC;
  }

  else
  {

    v7 = v3[7];
    v8 = v3[8];
    v9 = sub_217861D38;
  }

  return MEMORY[0x2822009F8](v9, v7, v8);
}

uint64_t sub_217861D38()
{
  OUTLINED_FUNCTION_62();
  v1 = v0[11];
  v2 = v0[6];
  v3 = v0[2];

  *v3 = v1 != 0;
  OUTLINED_FUNCTION_39();

  return v4();
}

uint64_t sub_217861DA4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v139 = a5;
  v134 = a4;
  v155 = a3;
  v165 = a2;
  v169 = a1;
  v163 = a6;
  v154 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8A7D0, &qword_21796A978);
  v6 = *(*(v154 - 8) + 64);
  MEMORY[0x28223BE20](v154);
  v156 = &v131 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8A7D8, &unk_21796A980);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8 - 8);
  v133 = &v131 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v164 = &v131 - v13;
  MEMORY[0x28223BE20](v12);
  v153 = &v131 - v14;
  v152 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8A780, &qword_21796C770);
  v15 = *(*(v152 - 8) + 64);
  MEMORY[0x28223BE20](v152);
  v168 = &v131 - v16;
  v160 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8A7E0, &unk_21796B170);
  v17 = *(*(v160 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v160);
  v158 = &v131 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v157 = &v131 - v20;
  v159 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8A6F0, &qword_21796A8F0);
  v21 = *(*(v159 - 8) + 64);
  v22 = MEMORY[0x28223BE20](v159);
  v162 = &v131 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v161 = &v131 - v24;
  v137 = sub_21796722C();
  v136 = *(v137 - 8);
  v25 = *(v136 + 64);
  MEMORY[0x28223BE20](v137);
  v27 = &v131 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_217968A2C();
  v29 = *(v28 - 8);
  v30 = *(v29 + 64);
  MEMORY[0x28223BE20](v28);
  v32 = &v131 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = _s14AlbumTrackCellVMa();
  v34 = *(v33 - 8);
  v35 = *(v34 + 64);
  MEMORY[0x28223BE20](v33);
  v37 = &v131 - v36;
  WitnessTable = swift_getWitnessTable();
  v173 = v33;
  v174 = WitnessTable;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v140 = *(OpaqueTypeMetadata2 - 8);
  v40 = *(v140 + 64);
  MEMORY[0x28223BE20](OpaqueTypeMetadata2);
  v42 = &v131 - v41;
  sub_21796732C();
  v141 = OpaqueTypeMetadata2;
  v43 = sub_21796698C();
  v144 = *(v43 - 8);
  v44 = *(v144 + 64);
  MEMORY[0x28223BE20](v43);
  v142 = &v131 - v45;
  v138 = v46;
  v47 = sub_21796698C();
  v145 = *(v47 - 8);
  v48 = *(v145 + 64);
  MEMORY[0x28223BE20](v47);
  v143 = &v131 - v49;
  v146 = v50;
  v150 = sub_21796698C();
  v166 = *(v150 - 8);
  v51 = *(v166 + 64);
  v52 = MEMORY[0x28223BE20](v150);
  v149 = &v131 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v52);
  v167 = &v131 - v54;
  v132 = v29;
  v55 = *(v29 + 16);
  v151 = v28;
  v148 = v29 + 16;
  v147 = v55;
  v55(v32, v169, v28);
  v135 = _s15AlbumDetailViewVMa();
  v56 = v165 + *(v135 + 72);
  v58 = *(v56 + 8);
  v57 = *(v56 + 16);
  v59 = *(v56 + 24);
  LOBYTE(v173) = *v56;
  v174 = v58;
  v175 = v57;
  v176 = v59;

  sub_217863EC4(v59);
  v131 = v32;
  sub_2178FFABC(&v173, v37);
  sub_21796720C();
  v139 = v42;
  sub_2179678AC();
  (*(v136 + 8))(v27, v137);
  (*(v34 + 8))(v37, v33);
  if (qword_27CB8A3E8 != -1)
  {
    swift_once();
  }

  v60 = qword_27CB979C8;
  v61 = unk_27CB979D0;
  v62 = qword_27CB979D8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8A7E8, &unk_21796A990);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_21796A340;
  *(inited + 32) = 25705;
  *(inited + 40) = 0xE200000000000000;

  v64 = sub_217968A0C();
  *(inited + 72) = MEMORY[0x277CD7E90];
  *(inited + 48) = v64;
  *(inited + 56) = v65;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8A7F0, &unk_21796B180);
  v66 = sub_217968EAC();
  v173 = v60;
  v174 = v61;

  MEMORY[0x21CEA7F50](46, 0xE100000000000000);

  MEMORY[0x21CEA7F50](0x6172546D75626C61, 0xEA00000000006B63);

  sub_2178ED924(v66, v173, v174, v62);
  v68 = v67;
  v70 = v69;
  v72 = v71;

  v173 = v33;
  v174 = WitnessTable;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v74 = v142;
  v75 = v68;
  v76 = v141;
  v77 = v139;
  sub_2178ED854(v75, v70, v72);

  (*(v140 + 8))(v77, v76);
  sub_21796742C();
  v78 = (v165 + *(v135 + 76));
  v79 = v78[2];
  v80 = sub_217863A38(&qword_27CB8A710, MEMORY[0x277CDE470]);
  v172[6] = OpaqueTypeConformance2;
  v172[7] = v80;
  v81 = v138;
  v82 = swift_getWitnessTable();
  v83 = v143;
  sub_217967A0C();
  (*(v144 + 8))(v74, v81);
  sub_21796743C();
  v84 = v78[3];
  v85 = MEMORY[0x277CDF918];
  v172[4] = v82;
  v172[5] = MEMORY[0x277CDF918];
  v86 = v146;
  v87 = swift_getWitnessTable();
  v88 = v149;
  sub_217967A0C();
  (*(v145 + 8))(v83, v86);
  v172[2] = v87;
  v172[3] = v85;
  v89 = v150;
  v145 = swift_getWitnessTable();
  sub_2179560E4(v88, v89);
  v90 = *(v166 + 8);
  v165 = v166 + 8;
  v146 = v90;
  v90(v88, v89);
  v91 = v168;
  sub_217967D6C();
  LOBYTE(v77) = sub_21796742C();
  v92 = v78[5];
  sub_21796660C();
  v93 = v91 + *(v152 + 36);
  *v93 = v77;
  *(v93 + 8) = v94;
  *(v93 + 16) = v95;
  *(v93 + 24) = v96;
  *(v93 + 32) = v97;
  *(v93 + 40) = 0;
  v98 = v153;
  v99 = v151;
  v147(v153, v169, v151);
  v100 = __swift_storeEnumTagSinglePayload(v98, 0, 1, v99);
  v101 = v164;
  sub_2178D2640(v100, v102, v103, v104, v105, v106, v107, v108, v131, v132, v133, v134, v135, v136, v137, v138, v139, v140, v141, v142, v143, v144);
  v109 = *(v154 + 48);
  v110 = v156;
  sub_217864D70(v98, v156, &qword_27CB8A7D8, &unk_21796A980);
  sub_217864D70(v101, v110 + v109, &qword_27CB8A7D8, &unk_21796A980);
  v111 = v88;
  if (__swift_getEnumTagSinglePayload(v110, 1, v99) == 1)
  {
    sub_2178653BC(v101, &qword_27CB8A7D8, &unk_21796A980);
    sub_2178653BC(v98, &qword_27CB8A7D8, &unk_21796A980);
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v110 + v109, 1, v99);
    v113 = v167;
    if (EnumTagSinglePayload == 1)
    {
      sub_2178653BC(v110, &qword_27CB8A7D8, &unk_21796A980);
      v114 = 0.0;
      goto LABEL_13;
    }

LABEL_8:
    sub_2178653BC(v110, &qword_27CB8A7D0, &qword_21796A978);
    v114 = 1.0;
    goto LABEL_13;
  }

  v115 = v99;
  v116 = v133;
  sub_217864D70(v110, v133, &qword_27CB8A7D8, &unk_21796A980);
  if (__swift_getEnumTagSinglePayload(v110 + v109, 1, v115) == 1)
  {
    sub_2178653BC(v164, &qword_27CB8A7D8, &unk_21796A980);
    sub_2178653BC(v98, &qword_27CB8A7D8, &unk_21796A980);
    (*(v132 + 8))(v116, v115);
    v113 = v167;
    goto LABEL_8;
  }

  v117 = v132;
  v118 = v110 + v109;
  v119 = v131;
  (*(v132 + 32))(v131, v118, v115);
  sub_217863A38(&qword_27CB8A808, MEMORY[0x277CD83B8]);
  LODWORD(v169) = sub_217968F1C();
  v120 = *(v117 + 8);
  v120(v119, v115);
  sub_2178653BC(v164, &qword_27CB8A7D8, &unk_21796A980);
  v111 = v88;
  sub_2178653BC(v98, &qword_27CB8A7D8, &unk_21796A980);
  v120(v116, v115);
  sub_2178653BC(v110, &qword_27CB8A7D8, &unk_21796A980);
  if (v169)
  {
    v114 = 0.0;
  }

  else
  {
    v114 = 1.0;
  }

  v113 = v167;
LABEL_13:
  v121 = v166;
  v122 = v158;
  sub_217864D20(v168, v158, &qword_27CB8A780, &qword_21796C770);
  v123 = v160;
  *(v122 + *(v160 + 36)) = v114;
  v124 = v122;
  v125 = v157;
  sub_217864D20(v124, v157, &qword_27CB8A7E0, &unk_21796B170);
  v126 = v125;
  v127 = v161;
  sub_217864D20(v126, v161, &qword_27CB8A7E0, &unk_21796B170);
  __swift_storeEnumTagSinglePayload(v127, 0, 1, v123);
  (*(v121 + 16))(v111, v113, v89);
  v173 = v111;
  v128 = v162;
  sub_217864D70(v127, v162, &qword_27CB8A6F0, &qword_21796A8F0);
  v174 = v128;
  v172[0] = v89;
  v172[1] = v159;
  v170 = v145;
  v171 = sub_217864DC0(&qword_27CB8A7F8, &qword_27CB8A6F0, &qword_21796A8F0, sub_217864E3C);
  sub_2178B9390(&v173, 2, v172);
  sub_2178653BC(v127, &qword_27CB8A6F0, &qword_21796A8F0);
  v129 = v146;
  v146(v113, v89);
  sub_2178653BC(v128, &qword_27CB8A6F0, &qword_21796A8F0);
  return v129(v111, v89);
}

uint64_t sub_217862EF8()
{
  v1 = *v0;
  if (*v0 == 0.0)
  {
    v1 = 0.0;
  }

  MEMORY[0x21CEA86D0](*&v1);
  v2 = v0[1];
  if (v2 == 0.0)
  {
    v2 = 0.0;
  }

  MEMORY[0x21CEA86D0](*&v2);
  v3 = v0[2];
  if (v3 == 0.0)
  {
    v3 = 0.0;
  }

  MEMORY[0x21CEA86D0](*&v3);
  v4 = v0[3];
  if (v4 == 0.0)
  {
    v4 = 0.0;
  }

  MEMORY[0x21CEA86D0](*&v4);
  v5 = v0[4];
  if (v5 == 0.0)
  {
    v5 = 0.0;
  }

  MEMORY[0x21CEA86D0](*&v5);
  v6 = v0[5];
  if (v6 == 0.0)
  {
    v6 = 0.0;
  }

  return MEMORY[0x21CEA86D0](*&v6);
}

uint64_t sub_217862FA0()
{
  sub_21796973C();
  sub_217862EF8();
  return sub_21796977C();
}

BOOL sub_217862FE8(_OWORD *a1, __int128 *a2, uint64_t a3)
{
  v3 = a1[1];
  v10[0] = *a1;
  v10[1] = v3;
  v4 = *a2;
  v5 = a2[1];
  v10[2] = a1[2];
  v11[0] = v4;
  v6 = a2[2];
  v11[1] = v5;
  v11[2] = v6;
  v8 = *(a3 + 16);
  v7 = *(a3 + 24);
  return sub_217862E8C(v10, v11);
}

uint64_t sub_217863038()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = v0[2];
  return sub_217862FA0();
}

uint64_t sub_217863074()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = v0[2];
  return sub_217862EF8();
}

uint64_t sub_2178630B0()
{
  sub_21796973C();
  v2 = *v0;
  v3 = v0[1];
  v4 = v0[2];
  sub_217862EF8();
  return sub_21796977C();
}

uint64_t sub_217863114(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_217863128(uint64_t a1, id *a2)
{
  result = sub_217968F4C();
  *a2 = 0;
  return result;
}

uint64_t sub_2178631A0(uint64_t a1, id *a2)
{
  v3 = sub_217968F5C();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_217863220@<X0>(uint64_t *a1@<X8>)
{
  result = nullsub_1(*v1);
  *a1 = result;
  return result;
}

uint64_t sub_217863278@<X0>(uint64_t *a1@<X8>)
{
  result = sub_217865594();
  *a1 = result;
  return result;
}

uint64_t sub_2178632A8()
{
  v0 = sub_217968F6C();
  v1 = MEMORY[0x21CEA7F80](v0);

  return v1;
}

uint64_t sub_2178632E8()
{
  sub_217968F6C();
  sub_217968FCC();
}

uint64_t sub_217863344()
{
  sub_217968F6C();
  sub_21796973C();
  sub_217968FCC();
  v0 = sub_21796977C();

  return v0;
}

uint64_t sub_2178633E4(uint64_t a1)
{
  v2 = sub_217863A38(&qword_27CB8A560, type metadata accessor for AVError);

  return MEMORY[0x28211CAD0](a1, v2);
}

uint64_t sub_217863450(uint64_t a1)
{
  v2 = sub_217863A38(&qword_27CB8A560, type metadata accessor for AVError);

  return MEMORY[0x28211CA88](a1, v2);
}

uint64_t sub_2178634BC(void *a1, uint64_t a2)
{
  v4 = sub_217863A38(&qword_27CB8A560, type metadata accessor for AVError);
  v5 = a1;

  return MEMORY[0x28211CA70](v5, a2, v4);
}

uint64_t sub_217863554(uint64_t a1, uint64_t a2)
{
  v4 = sub_217863A38(&qword_27CB8A560, type metadata accessor for AVError);

  return MEMORY[0x28211CAB8](a1, a2, v4);
}

uint64_t sub_2178635D0()
{
  v2 = *v0;
  sub_21796973C();
  sub_217968ECC();
  return sub_21796977C();
}

uint64_t sub_217863630(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  return sub_2178FEF0C();
}

uint64_t sub_21786363C(uint64_t a1)
{
  v2 = sub_217863A38(&qword_27CB8A528, type metadata accessor for AVError);

  return MEMORY[0x28211F4B8](a1, v2);
}

uint64_t sub_2178636A8(uint64_t a1)
{
  v2 = sub_217863A38(&qword_27CB8A528, type metadata accessor for AVError);

  return MEMORY[0x28211F4A8](a1, v2);
}

uint64_t sub_217863718(uint64_t a1)
{
  v2 = sub_217863A38(&qword_27CB8A560, type metadata accessor for AVError);

  return MEMORY[0x28211CA68](a1, v2);
}

uint64_t sub_217863784(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_217863A38(&qword_27CB8A560, type metadata accessor for AVError);

  return MEMORY[0x28211CA98](a1, a2, a3, v6);
}

uint64_t sub_217863814@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_217968F2C();

  *a2 = v5;
  return result;
}

uint64_t sub_21786385C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_217863888(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_21786388C(uint64_t a1)
{
  v2 = sub_217863A38(&qword_27CB8A858, type metadata accessor for Key);
  v3 = sub_217863A38(&qword_27CB8A860, type metadata accessor for Key);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_217863980(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2178639A0(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 16) = v3;
  return result;
}

uint64_t sub_217863A38(unint64_t *a1, void (*a2)(uint64_t))
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

__n128 __swift_memcpy24_4(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_217863A94(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 24))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_217863AB4(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = (a2 - 1);
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

  *(result + 24) = v3;
  return result;
}

unint64_t sub_217863D0C()
{
  result = qword_27CB8A550;
  if (!qword_27CB8A550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB8A550);
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

unint64_t sub_217863EC4(unint64_t result)
{
  v1 = result >> 61;
  if (!(result >> 61) || v1 == 2 || v1 == 1)
  {
  }

  return result;
}

void sub_217863EF0(uint64_t a1)
{
  sub_21786415C();
  if (v2 <= 0x3F)
  {
    v3 = *(a1 + 16);
    v4 = *(a1 + 24);
    _s9ViewModelCMa();
    swift_getWitnessTable();
    sub_217966ADC();
    if (v5 <= 0x3F)
    {
      sub_2178641FC(319, &qword_27CB8A628, &qword_27CB8A630, qword_21796A7B0, MEMORY[0x277CDF468]);
      if (v6 <= 0x3F)
      {
        sub_2178641FC(319, &qword_27CB8A638, &qword_27CB8A578, &qword_21796A750, MEMORY[0x277CE10B8]);
        if (v7 <= 0x3F)
        {
          sub_2178641FC(319, &qword_27CB8A640, &qword_27CB8A590, &unk_21796A790, MEMORY[0x277CE10B8]);
          if (v8 <= 0x3F)
          {
            sub_21786546C(319, qword_27CB8A648, MEMORY[0x277D839B0], MEMORY[0x277CE10B8]);
            if (v9 <= 0x3F)
            {
              _s15AlbumDetailViewV9ConstantsVMa();
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

void sub_21786415C()
{
  if (!qword_27CB8A620)
  {
    sub_2179689AC();
    v0 = sub_217967C4C();
    if (!v1)
    {
      atomic_store(v0, &qword_27CB8A620);
    }
  }
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

void sub_2178641FC(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_217864278()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 __swift_memcpy48_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_2178642D4(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 48))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2178642F4(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = (a2 - 1);
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

  *(result + 48) = v3;
  return result;
}

unint64_t sub_21786438C()
{
  result = qword_27CB8A700;
  if (!qword_27CB8A700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB8A700);
  }

  return result;
}

unint64_t sub_2178643E0(unint64_t result)
{
  v1 = result >> 61;
  if (!(result >> 61) || v1 == 2 || v1 == 1)
  {
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

uint64_t sub_217864450()
{
  v2 = v0[4];
  v3 = v0[5];
  OUTLINED_FUNCTION_45();
  v4 = _s15AlbumDetailViewVMa();
  OUTLINED_FUNCTION_48(v4);
  v6 = (*(v5 + 80) + 48) & ~*(v5 + 80);
  v7 = v0[2];
  v8 = v0[3];
  v9 = swift_task_alloc();
  *(v1 + 16) = v9;
  *v9 = v1;
  v9[1] = sub_217864540;

  return sub_21785A884();
}

uint64_t sub_217864540()
{
  OUTLINED_FUNCTION_62();
  v1 = *(*v0 + 16);
  v2 = *v0;
  OUTLINED_FUNCTION_6();
  *v3 = v2;

  OUTLINED_FUNCTION_39();

  return v4();
}

uint64_t sub_217864624()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_21785C33C();
}

unint64_t sub_217864644()
{
  result = qword_27CB8A718;
  if (!qword_27CB8A718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB8A718);
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

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_217864714()
{
  v5 = OUTLINED_FUNCTION_50();
  OUTLINED_FUNCTION_48(v5);
  v7 = v1 + ((*(v6 + 80) + 32) & ~*(v6 + 80));

  return sub_21785C740(v0, v7, v3, v4, v2);
}

uint64_t objectdestroy_42Tm()
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = _s15AlbumDetailViewVMa();
  OUTLINED_FUNCTION_13(v6);
  v9 = *(v8 + 64);
  v10 = v1 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
  v11 = sub_2179689AC();
  OUTLINED_FUNCTION_3(v11);
  (*(v12 + 8))(v10);
  v13 = *(v10 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8A580, &unk_21796A780) + 28));

  OUTLINED_FUNCTION_74(v0[9]);
  sub_2178643E0(*(v2 + 24));
  v14 = *(v10 + v0[11]);

  v15 = v10 + v0[12];
  if (*(v15 + 40))
  {
    if (*(v15 + 24))
    {
      __swift_destroy_boxed_opaque_existential_1(v15);
    }
  }

  else
  {
    v16 = *v15;
  }

  v17 = v10 + v0[13];
  v18 = _s5AlertVMa(0);
  if (!OUTLINED_FUNCTION_71(v18))
  {
    v19 = *(v17 + 8);

    v20 = *(v17 + 24);

    v21 = v17 + *(v3 + 24);
    v22 = _s5AlertV7ControlVMa(0);
    if (!OUTLINED_FUNCTION_56(v21))
    {
      v23 = *(v21 + 8);

      v24 = *(v22 + 20);
      v25 = sub_2179665FC();
      if (!OUTLINED_FUNCTION_51(v25))
      {
        OUTLINED_FUNCTION_10(v24);
        (*(v26 + 8))(v21 + v40, v24);
      }
    }

    v27 = v17 + *(v3 + 28);
    if (!OUTLINED_FUNCTION_56(v27))
    {
      v28 = *(v27 + 8);

      v29 = *(v22 + 20);
      v30 = sub_2179665FC();
      if (!OUTLINED_FUNCTION_56(v27 + v29))
      {
        OUTLINED_FUNCTION_10(v30);
        (*(v31 + 8))(v27 + v29, v30);
      }
    }
  }

  v32 = *(v17 + *(__swift_instantiateConcreteTypeFromMangledNameV2(qword_27CB8A598, &unk_21796AD60) + 28));

  v33 = (v10 + v0[14]);
  v34 = v33[1];

  v35 = v33[2];

  v36 = *(v10 + v0[15] + 8);

  sub_2178643E0(*(v10 + v0[16]));
  OUTLINED_FUNCTION_74(v0[17]);
  sub_2178643E0(v33[3]);
  v37 = v10 + v0[18];
  v38 = *(v37 + 16);

  sub_2178643E0(*(v37 + 24));

  return swift_deallocObject();
}

uint64_t sub_217864AA0(uint64_t (*a1)(void))
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  OUTLINED_FUNCTION_45();
  v4 = _s15AlbumDetailViewVMa();
  OUTLINED_FUNCTION_48(v4);
  v6 = *(v5 + 80);
  OUTLINED_FUNCTION_45();

  return a1();
}

uint64_t sub_217864B2C(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t sub_217864B74()
{
  v5 = *(OUTLINED_FUNCTION_50() - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8A6E8, &qword_21796A8E8);
  OUTLINED_FUNCTION_48(v8);
  v10 = v1 + ((v6 + v7 + *(v9 + 80)) & ~*(v9 + 80));

  return sub_217861DA4(v0, v1 + v6, v10, v3, v4, v2);
}

unint64_t sub_217864C64()
{
  result = qword_27CB8A7C0;
  if (!qword_27CB8A7C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8A780, &qword_21796C770);
    sub_217863A38(&qword_27CB8A7C8, MEMORY[0x277CDF088]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB8A7C0);
  }

  return result;
}

uint64_t sub_217864D20(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = OUTLINED_FUNCTION_69(a1, a2, a3, a4);
  OUTLINED_FUNCTION_3(v6);
  (*(v7 + 32))(v4, v5);
  return v4;
}

uint64_t sub_217864D70(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = OUTLINED_FUNCTION_69(a1, a2, a3, a4);
  OUTLINED_FUNCTION_3(v6);
  (*(v7 + 16))(v4, v5);
  return v4;
}

uint64_t sub_217864DC0(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_217864E3C()
{
  result = qword_27CB8A800;
  if (!qword_27CB8A800)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8A7E0, &unk_21796B170);
    sub_217864C64();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB8A800);
  }

  return result;
}

uint64_t sub_217864EC8(uint64_t a1, uint64_t a2)
{
  v4 = _s5AlertVMa(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t objectdestroyTm()
{
  v4 = *(v1 + 4);
  v5 = *(v1 + 5);
  v6 = _s15AlbumDetailViewVMa();
  OUTLINED_FUNCTION_13(v6);
  v8 = (*(v7 + 80) + 48) & ~*(v7 + 80);
  v10 = *(v9 + 64);
  v11 = *(v1 + 2);
  swift_unknownObjectRelease();
  v12 = &v1[v8];
  v13 = sub_2179689AC();
  OUTLINED_FUNCTION_3(v13);
  (*(v14 + 8))(&v1[v8]);
  v15 = *&v1[v8 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8A580, &unk_21796A780) + 28)];

  OUTLINED_FUNCTION_74(v0[9]);
  sub_2178643E0(*(v2 + 24));
  v16 = *&v1[v8 + v0[11]];

  v17 = &v1[v8 + v0[12]];
  if (v17[5])
  {
    if (v17[3])
    {
      __swift_destroy_boxed_opaque_existential_1(v17);
    }
  }

  else
  {
    v18 = *v17;
  }

  v19 = &v12[v0[13]];
  v20 = _s5AlertVMa(0);
  if (!OUTLINED_FUNCTION_71(v20))
  {
    v21 = *(v19 + 1);

    v22 = *(v19 + 3);

    v23 = &v19[*(v3 + 24)];
    v24 = _s5AlertV7ControlVMa(0);
    if (!OUTLINED_FUNCTION_56(v23))
    {
      v25 = *(v23 + 8);

      v26 = *(v24 + 20);
      v27 = sub_2179665FC();
      if (!OUTLINED_FUNCTION_51(v27))
      {
        OUTLINED_FUNCTION_10(v26);
        (*(v28 + 8))(v23 + v42, v26);
      }
    }

    v29 = &v19[*(v3 + 28)];
    if (!OUTLINED_FUNCTION_56(v29))
    {
      v30 = *(v29 + 8);

      v31 = *(v24 + 20);
      v32 = sub_2179665FC();
      if (!OUTLINED_FUNCTION_56(v29 + v31))
      {
        OUTLINED_FUNCTION_10(v32);
        (*(v33 + 8))(v29 + v31, v32);
      }
    }
  }

  v34 = *&v19[*(__swift_instantiateConcreteTypeFromMangledNameV2(qword_27CB8A598, &unk_21796AD60) + 28)];

  v35 = &v12[v0[14]];
  v36 = *(v35 + 1);

  v37 = *(v35 + 2);

  v38 = *&v12[v0[15] + 8];

  sub_2178643E0(*&v12[v0[16]]);
  OUTLINED_FUNCTION_74(v0[17]);
  sub_2178643E0(*(v35 + 3));
  v39 = &v12[v0[18]];
  v40 = *(v39 + 2);

  sub_2178643E0(*(v39 + 3));

  return swift_deallocObject();
}

uint64_t sub_2178651F8(uint64_t a1)
{
  v4 = v1[4];
  v5 = v1[5];
  v6 = _s15AlbumDetailViewVMa();
  OUTLINED_FUNCTION_48(v6);
  v8 = (*(v7 + 80) + 48) & ~*(v7 + 80);
  v9 = v1[2];
  v10 = v1[3];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_2178655D0;

  return sub_217861A68(a1, v9, v10, v1 + v8, v4, v5);
}

uint64_t sub_217865300(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_3(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_217865358(uint64_t a1, uint64_t a2)
{
  v4 = _s5AlertVMa(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2178653BC(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  OUTLINED_FUNCTION_3(v4);
  (*(v5 + 8))(a1);
  return a1;
}

void sub_21786546C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_217865594()
{
  sub_217968F6C();
  v0 = sub_217968F2C();

  return v0;
}

uint64_t OUTLINED_FUNCTION_11()
{
  v3 = v0[35];
  v2 = v0[36];
  v5 = v0[33];
  v4 = v0[34];
  v7 = v0[31];
  v6 = v0[32];
  v8 = v0[28];
  v10 = v0[24];
  v9 = v0[25];
}

uint64_t OUTLINED_FUNCTION_28()
{

  return swift_getWitnessTable();
}

uint64_t OUTLINED_FUNCTION_29()
{

  return swift_getWitnessTable();
}

uint64_t OUTLINED_FUNCTION_30()
{

  return swift_getWitnessTable();
}

uint64_t OUTLINED_FUNCTION_31()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_32(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{

  return sub_217864B2C(a1, a2, a3);
}

uint64_t OUTLINED_FUNCTION_34()
{

  return swift_once();
}

void OUTLINED_FUNCTION_35()
{
  v3 = (v0 + *(v1 + 60));
  v4 = *v3;
  v5 = *(v3 + 1);
  *(v2 + 80) = v4;
  *(v2 + 88) = v5;
  *(v2 + 384) = 0;
}

uint64_t OUTLINED_FUNCTION_37()
{
  v2 = v0[31];
  v8 = v0[30];
  v3 = v0[29];
  v5 = v0[23];
  v4 = v0[24];
  v6 = v0[21];

  return swift_slowAlloc();
}

void OUTLINED_FUNCTION_38()
{
  v3 = (v2 + *(v1 + 60));
  v4 = *v3;
  v5 = *(v3 + 1);
  *(v0 + 128) = v4;
  *(v0 + 136) = v5;
  *(v0 + 385) = 0;
}

uint64_t OUTLINED_FUNCTION_39()
{
  result = v0 + 8;
  v2 = *(v0 + 8);
  return result;
}

__n128 OUTLINED_FUNCTION_40(uint64_t a1, uint64_t a2)
{
  v5 = (v4 + *(v3 + 56));
  v6 = v5[1].n128_u64[0];
  result = *v5;
  *(v2 + 56) = *v5;
  *(v2 + 72) = v6;
  *(v2 + 112) = a1;
  *(v2 + 120) = a2;
  return result;
}