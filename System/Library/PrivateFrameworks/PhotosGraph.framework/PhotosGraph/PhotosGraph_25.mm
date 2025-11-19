unint64_t sub_22F2D4C5C()
{
  result = qword_27DAB32B0;
  if (!qword_27DAB32B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB32B0);
  }

  return result;
}

uint64_t block_copy_helper_22(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_22F2D4CF0(void *a1, uint64_t a2)
{
  v3 = *(v2 + 40);
  v4 = *(v2 + 48);
  sub_22F2D3858(a1, a2, *(v2 + 16), *(v2 + 24), *(v2 + 32));
}

uint64_t sub_22F2D4D00(unint64_t a1)
{
  if (a1 > 0xE)
  {
    return 0;
  }

  else
  {
    return word_22F782C02[a1];
  }
}

uint64_t get_enum_tag_for_layout_string_11PhotosGraph23SearchEntityAccumulatorC5ErrorO(uint64_t a1)
{
  if ((*(a1 + 16) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 16) & 3;
  }
}

void sub_22F2D4D78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v37 = a4;
  v38 = a5;
  v35 = a2;
  v36 = a3;
  v40 = MEMORY[0x277D84F90];
  v7 = a1 + 64;
  v8 = 1 << *(a1 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & *(a1 + 64);
  v11 = (v8 + 63) >> 6;
  v39 = a1;

  v12 = 0;
  v13 = 0;
  while (v10)
  {
LABEL_8:
    v15 = (v12 << 9) | (8 * __clz(__rbit64(v10)));
    v16 = *(*(v39 + 56) + v15);
    v17 = *(*(v39 + 48) + v15);

    v18 = [v17 integerValue];
    if (v18 <= 3)
    {
      if (v18 == 2)
      {
        MEMORY[0x28223BE20](2);
        v28 = v35;
        v29 = 1802;
        v30 = v6;
        v31 = v37;
        v32 = v38;
        v33 = v36;
      }

      else
      {
        if (v18 != 3)
        {
LABEL_22:
          if (qword_2810A9400 != -1)
          {
            swift_once();
          }

          v20 = sub_22F740B90();
          __swift_project_value_buffer(v20, qword_2810B4CE0);
          v21 = sub_22F740B70();
          v22 = sub_22F7415E0();
          if (os_log_type_enabled(v21, v22))
          {
            v23 = swift_slowAlloc();
            v34 = v13;
            v24 = v6;
            v25 = v23;
            *v23 = 0;
            _os_log_impl(&dword_22F0FC000, v21, v22, "GraphSearchEntity+Keywords.publicEventSearchEntities: Mask value not supported", v23, 2u);
            v26 = v25;
            v6 = v24;
            v13 = v34;
            MEMORY[0x2319033A0](v26, -1, -1);
          }

          v17 = v21;
          goto LABEL_20;
        }

        MEMORY[0x28223BE20](3);
        v28 = v35;
        v29 = 1800;
        v30 = v6;
        v31 = v37;
        v32 = v38;
        v33 = v36;
      }
    }

    else
    {
      switch(v18)
      {
        case 4:
          MEMORY[0x28223BE20](4);
          v28 = v35;
          v29 = 1801;
          v30 = v6;
          v31 = v37;
          v32 = v38;
          v33 = v36;
          break;
        case 17:
          MEMORY[0x28223BE20](17);
          v28 = v35;
          v29 = 1700;
          v30 = v6;
          v31 = v37;
          v32 = v38;
          v33 = v36;
          break;
        case 18:
          MEMORY[0x28223BE20](18);
          v28 = v35;
          v29 = 1701;
          v30 = v6;
          v31 = v37;
          v32 = v38;
          v33 = v36;
          break;
        default:
          goto LABEL_22;
      }
    }

    v19 = sub_22F2D029C(sub_22F2D4D58, &v27, v16);
    swift_beginAccess();
    sub_22F145844(v19);
    swift_endAccess();

LABEL_20:
    v10 &= v10 - 1;
  }

  while (1)
  {
    v14 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v14 >= v11)
    {

      swift_beginAccess();
      return;
    }

    v10 = *(v7 + 8 * v14);
    ++v12;
    if (v10)
    {
      v12 = v14;
      goto LABEL_8;
    }
  }

  __break(1u);
}

uint64_t sub_22F2D5198(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v65 = a4;
  v62 = a2;
  v63 = a3;
  v6 = a1;
  v75 = MEMORY[0x277D84F90];
  v7 = a1 + 64;
  v8 = 1 << *(a1 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & *(a1 + 64);
  v11 = (v8 + 63) >> 6;

  v13 = 0;
  v67 = 0;
  v66 = xmmword_22F771340;
  v64 = result;
  v60 = v11;
  v61 = v7;
  for (i = v4; v10; result = sub_22F120ADC(&v72, &qword_27DAB32C0, qword_22F782C20))
  {
LABEL_11:
    while (1)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
      v16 = v15 | (v13 << 6);
      v17 = *(*(v6 + 48) + 8 * v16);
      sub_22F13A100(*(v6 + 56) + 32 * v16, v74);
      v72 = v17;
      sub_22F107D08(v74, &v73);
      sub_22F13BA9C(&v72, &v70, &qword_27DAB32C0, qword_22F782C20);
      v18 = v70;
      v19 = v17;
      v20 = [v18 integerValue];

      __swift_destroy_boxed_opaque_existential_0(&v71);
      if (v20 == 14)
      {
        break;
      }

      if (v20 != 13)
      {
        if (qword_2810A9400 != -1)
        {
          swift_once();
        }

        v39 = sub_22F740B90();
        __swift_project_value_buffer(v39, qword_2810B4CE0);
        v40 = sub_22F740B70();
        v41 = sub_22F7415E0();
        if (!os_log_type_enabled(v40, v41))
        {
          goto LABEL_6;
        }

        v42 = swift_slowAlloc();
        *v42 = 0;
        v43 = v41;
        v44 = v40;
        v45 = "GraphSearchEntity+Keywords.homeAndWorkSearchEntities: Mask value not supported";
        goto LABEL_5;
      }

      v21 = PLSearchLocalizedHomeString();
      v22 = sub_22F740E20();
      v24 = v23;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB11D8, &qword_22F771608);
      inited = swift_initStackObject();
      *(inited + 16) = v66;
      *(inited + 32) = v22;
      *(inited + 40) = v24;

      v26 = PLSearchLocalizedHomeSynonyms();
      v27 = sub_22F741420();

      v28 = *(v27 + 16);
      if (v28)
      {
        v29 = sub_22F10B348(*(v27 + 16), 0);
        v30 = sub_22F11A438(&v70, v29 + 4, v28, v27);
        result = sub_22F1534EC();
        if (v30 != v28)
        {
          goto LABEL_32;
        }
      }

      else
      {

        v29 = MEMORY[0x277D84F90];
      }

      *(inited + 48) = v29;
      v48 = sub_22F14FCC8(inited);
      swift_setDeallocating();
      sub_22F120ADC(inited + 32, &unk_27DAB11E0, &unk_22F771610);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAB1110, &unk_22F771270);
      v49 = swift_initStackObject();
      *(v49 + 16) = v66;
      *(v49 + 32) = v22;
      *(v49 + 40) = v24;
      MEMORY[0x28223BE20](v49);
      v53 = v48;
      v54 = 1000;
      v5 = i;
      v55 = i;
      v56 = v63;
      v57 = v65;
      v58 = v62;
      v50 = v67;
      v51 = sub_22F2D029C(sub_22F2D4D58, v52, v49);
      v67 = v50;
      swift_setDeallocating();
      sub_22F1DF3B0(v49 + 32);

      swift_beginAccess();
      v38 = v51;
LABEL_28:
      sub_22F145844(v38);
      swift_endAccess();
      result = sub_22F120ADC(&v72, &qword_27DAB32C0, qword_22F782C20);
      v6 = v64;
      v11 = v60;
      v7 = v61;
      if (!v10)
      {
        goto LABEL_7;
      }
    }

    sub_22F13BA9C(&v72, &v70, &qword_27DAB32C0, qword_22F782C20);

    if (swift_dynamicCast())
    {
      v31 = v68;
      v32 = v69;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAB1110, &unk_22F771270);
      v33 = swift_initStackObject();
      *(v33 + 16) = v66;
      *(v33 + 32) = v31;
      *(v33 + 40) = v32;
      v34 = sub_22F14FCC8(MEMORY[0x277D84F90]);
      MEMORY[0x28223BE20](v34);
      v53 = v35;
      v54 = 1001;
      v55 = v5;
      v56 = v63;
      v57 = v65;
      v58 = v62;
      v36 = v67;
      v37 = sub_22F2D029C(sub_22F2D42E4, v52, v33);
      v67 = v36;
      swift_setDeallocating();
      sub_22F1DF3B0(v33 + 32);

      swift_beginAccess();
      v38 = v37;
      goto LABEL_28;
    }

    if (qword_2810A9400 != -1)
    {
      swift_once();
    }

    v46 = sub_22F740B90();
    __swift_project_value_buffer(v46, qword_2810B4CE0);
    v40 = sub_22F740B70();
    v47 = sub_22F7415E0();
    if (os_log_type_enabled(v40, v47))
    {
      v42 = swift_slowAlloc();
      *v42 = 0;
      v43 = v47;
      v44 = v40;
      v45 = "GraphSearchEntity+Keywords.homeAndWorkSearchEntities: Could not extract localized string for Work";
LABEL_5:
      _os_log_impl(&dword_22F0FC000, v44, v43, v45, v42, 2u);
      MEMORY[0x2319033A0](v42, -1, -1);
    }

LABEL_6:
  }

LABEL_7:
  while (1)
  {
    v14 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v14 >= v11)
    {

      swift_beginAccess();
      return v75;
    }

    v10 = *(v7 + 8 * v14);
    ++v13;
    if (v10)
    {
      v13 = v14;
      goto LABEL_11;
    }
  }

  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_22F2D5804@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, void *a7@<X8>)
{
  v39 = a5;
  v37 = a4;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB40E0, &unk_22F779200);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v16 = &v34 - v15;
  v17 = *a1;
  v18 = a1[1];
  result = sub_22F740F10();
  if (result < 1)
  {
    v33 = 0;
  }

  else
  {
    v20 = *(a2 + 16);
    v35 = a7;
    v36 = v7;
    if (v20 && (v21 = sub_22F1229E8(v17, v18), (v22 & 1) != 0))
    {
      v23 = *(*(a2 + 56) + 8 * v21);
    }

    else
    {
      v23 = MEMORY[0x277D84F90];
    }

    v24 = sub_22F1EE324(v17, v18, a3);
    v26 = v25;
    sub_22F13BA9C(a6, v16, &qword_27DAB40E0, &unk_22F779200);
    v27 = type metadata accessor for GraphSearchEntity();
    v28 = objc_allocWithZone(v27);
    *&v28[OBJC_IVAR___PGGraphSearchEntity_type] = a3;
    v29 = &v28[OBJC_IVAR___PGGraphSearchEntity_label];
    *v29 = v17;
    v29[1] = v18;
    v30 = &v28[OBJC_IVAR___PGGraphSearchEntity_identifier];
    *v30 = v24;
    v30[1] = v26;
    *&v28[OBJC_IVAR___PGGraphSearchEntity_confidence] = 0x3FF0000000000000;
    *&v28[OBJC_IVAR___PGGraphSearchEntity_rankingScore] = 0;
    v31 = &v28[OBJC_IVAR___PGGraphSearchEntity_localeIdentifier];
    v32 = v39;
    *v31 = v37;
    *(v31 + 1) = v32;
    sub_22F13BA9C(v16, &v28[OBJC_IVAR___PGGraphSearchEntity_dateInterval], &qword_27DAB40E0, &unk_22F779200);
    *&v28[OBJC_IVAR___PGGraphSearchEntity_synonyms] = v23;
    v38.receiver = v28;
    v38.super_class = v27;

    v33 = objc_msgSendSuper2(&v38, sel_init);
    result = sub_22F120ADC(v16, &qword_27DAB40E0, &unk_22F779200);
    a7 = v35;
  }

  *a7 = v33;
  return result;
}

uint64_t sub_22F2D5A54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v48 = a4;
  v49 = a5;
  v46 = a2;
  v47 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB40E0, &unk_22F779200);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v45 = &v41 - v8;
  v9 = MEMORY[0x277D84F90];
  v51 = MEMORY[0x277D84F90];
  v10 = 1 << *(a1 + 32);
  v11 = -1;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  v12 = v11 & *(a1 + 64);
  v13 = (v10 + 63) >> 6;

  v15 = 0;
  while (1)
  {
    v16 = v15;
    if (!v12)
    {
      break;
    }

LABEL_8:
    v17 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
    v18 = (v15 << 10) | (16 * v17);
    v19 = (*(a1 + 48) + v18);
    v20 = *v19;
    v21 = v19[1];
    v22 = (*(a1 + 56) + v18);
    v24 = *v22;
    v23 = v22[1];

    if (sub_22F740F10() >= 1)
    {
      v25 = v46;
      if (*(v46 + 16) && (v26 = sub_22F1229E8(v24, v23), (v27 & 1) != 0))
      {
        v44 = *(*(v25 + 56) + 8 * v26);
      }

      else
      {
        v44 = MEMORY[0x277D84F90];
      }

      v28 = sub_22F740DF0();
      v29 = identifierForMeaningLabel(v28);

      if (v29)
      {
        v30 = sub_22F740E20();
        v41 = v31;
        v42 = v30;
      }

      else
      {
        v41 = 0;
        v42 = 0;
      }

      v32 = v45;
      sub_22F13BA9C(v47, v45, &qword_27DAB40E0, &unk_22F779200);
      v43 = type metadata accessor for GraphSearchEntity();
      v33 = objc_allocWithZone(v43);
      *&v33[OBJC_IVAR___PGGraphSearchEntity_type] = 1600;
      v34 = &v33[OBJC_IVAR___PGGraphSearchEntity_label];
      *v34 = v24;
      v34[1] = v23;
      v35 = &v33[OBJC_IVAR___PGGraphSearchEntity_identifier];
      v36 = v41;
      *v35 = v42;
      v35[1] = v36;
      *&v33[OBJC_IVAR___PGGraphSearchEntity_confidence] = 0x3FF0000000000000;
      *&v33[OBJC_IVAR___PGGraphSearchEntity_rankingScore] = 0;
      v37 = &v33[OBJC_IVAR___PGGraphSearchEntity_localeIdentifier];
      v38 = v49;
      *v37 = v48;
      *(v37 + 1) = v38;
      sub_22F13BA9C(v32, &v33[OBJC_IVAR___PGGraphSearchEntity_dateInterval], &qword_27DAB40E0, &unk_22F779200);
      *&v33[OBJC_IVAR___PGGraphSearchEntity_synonyms] = v44;
      v50.receiver = v33;
      v50.super_class = v43;

      objc_msgSendSuper2(&v50, sel_init);
      sub_22F120ADC(v32, &qword_27DAB40E0, &unk_22F779200);

      MEMORY[0x231900D00](v39);
      if (*((v51 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v51 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v40 = *((v51 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_22F7411C0();
      }

      result = sub_22F741220();
      v9 = v51;
    }

    else
    {
    }
  }

  while (1)
  {
    v15 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v15 >= v13)
    {

      return v9;
    }

    v12 = *(a1 + 64 + 8 * v15);
    ++v16;
    if (v12)
    {
      goto LABEL_8;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_22F2D5DEC(uint64_t a1, uint64_t (*a2)(void))
{
  v2 = *(a1 + 16);
  v3 = MEMORY[0x277D84F90];
  if (!v2)
  {
    return v3;
  }

  v29 = MEMORY[0x277D84F90];
  sub_22F146454(0, v2, 0);
  v3 = v29;
  v5 = -1 << *(a1 + 32);
  v28 = a1 + 56;
  result = sub_22F741980();
  v7 = result;
  v8 = 0;
  v26 = v2;
  while ((v7 & 0x8000000000000000) == 0 && v7 < 1 << *(a1 + 32))
  {
    v11 = v7 >> 6;
    if ((*(v28 + 8 * (v7 >> 6)) & (1 << v7)) == 0)
    {
      goto LABEL_21;
    }

    v12 = *(a1 + 36);
    result = a2(*(*(a1 + 48) + v7));
    v15 = *(v29 + 16);
    v14 = *(v29 + 24);
    if (v15 >= v14 >> 1)
    {
      v24 = v13;
      v25 = result;
      sub_22F146454((v14 > 1), v15 + 1, 1);
      v13 = v24;
      result = v25;
    }

    *(v29 + 16) = v15 + 1;
    v16 = v29 + 16 * v15;
    *(v16 + 32) = result;
    *(v16 + 40) = v13;
    v9 = 1 << *(a1 + 32);
    if (v7 >= v9)
    {
      goto LABEL_22;
    }

    v17 = *(v28 + 8 * v11);
    if ((v17 & (1 << v7)) == 0)
    {
      goto LABEL_23;
    }

    if (v12 != *(a1 + 36))
    {
      goto LABEL_24;
    }

    v18 = v17 & (-2 << (v7 & 0x3F));
    if (v18)
    {
      v9 = __clz(__rbit64(v18)) | v7 & 0x7FFFFFFFFFFFFFC0;
      v10 = v26;
    }

    else
    {
      v19 = v11 << 6;
      v20 = v11 + 1;
      v10 = v26;
      v21 = (a1 + 64 + 8 * v11);
      while (v20 < (v9 + 63) >> 6)
      {
        v23 = *v21++;
        v22 = v23;
        v19 += 64;
        ++v20;
        if (v23)
        {
          result = sub_22F107D18(v7, v12, 0);
          v9 = __clz(__rbit64(v22)) + v19;
          goto LABEL_4;
        }
      }

      result = sub_22F107D18(v7, v12, 0);
    }

LABEL_4:
    ++v8;
    v7 = v9;
    if (v8 == v10)
    {
      return v3;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

uint64_t sub_22F2D601C(char *a1)
{
  v3 = v1;
  v4 = *&a1[OBJC_IVAR____TtC11PhotosGraph4Node_labels];
  v5 = *(v4 + 16);
  if (v5)
  {
    v6 = sub_22F10B348(*(v4 + 16), 0);
    v7 = sub_22F11A438(&v31, v6 + 4, v5, v4);
    v2 = v32;

    sub_22F0FF590();
    if (v7 == v5)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  v6 = MEMORY[0x277D84F90];
LABEL_5:
  v31 = v6;
  sub_22F1AB0EC(&v31);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0E90, &qword_22F7714A0);
  sub_22F15A2C0();
  v8 = sub_22F740DA0();
  v10 = v9;

  v11 = sub_22F2B4BB8();
  v13 = v12;
  v14 = *v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v31 = *v3;
  v16 = v31;
  v18 = sub_22F1229E8(v8, v10);
  v19 = *(v16 + 2);
  v20 = (v17 & 1) == 0;
  v21 = v19 + v20;
  if (__OFADD__(v19, v20))
  {
    __break(1u);
    goto LABEL_15;
  }

  v2 = v17;
  if (*(v16 + 3) >= v21)
  {
    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_10;
    }

LABEL_15:
    sub_22F136EDC();
    goto LABEL_10;
  }

  sub_22F12A57C(v21, isUniquelyReferenced_nonNull_native);
  v22 = sub_22F1229E8(v8, v10);
  if ((v2 & 1) != (v23 & 1))
  {
    result = sub_22F7420C0();
    __break(1u);
    return result;
  }

  v18 = v22;
LABEL_10:
  v24 = v31;
  *v3 = v31;
  if (v2)
  {
  }

  else
  {
    sub_22F1534CC(v18, v8, v10, MEMORY[0x277D84F98], v24);
  }

  v25 = *(v24 + 7);
  v26 = a1;
  v27 = *(v25 + 8 * v18);
  v28 = swift_isUniquelyReferenced_nonNull_native();
  v31 = *(v25 + 8 * v18);
  *(v25 + 8 * v18) = 0x8000000000000000;
  sub_22F131F70(v26, v11, v13, v28);

  *(v25 + 8 * v18) = v31;
  return result;
}

uint64_t sub_22F2D6290(char *a1)
{
  v3 = *&a1[OBJC_IVAR____TtC11PhotosGraph4Edge_labels];
  v4 = *(v3 + 16);
  if (v4)
  {
    v5 = sub_22F10B348(*(v3 + 16), 0);
    v6 = sub_22F11A438(&v32, v5 + 4, v4, v3);
    v1 = v33;
    swift_bridgeObjectRetain_n();
    sub_22F0FF590();
    if (v6 == v4)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  v5 = MEMORY[0x277D84F90];
LABEL_5:
  v32 = v5;
  sub_22F1AB0EC(&v32);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0E90, &qword_22F7714A0);
  sub_22F15A2C0();
  v7 = sub_22F740DA0();
  v9 = v8;

  v10 = *&a1[OBJC_IVAR____TtC11PhotosGraph4Edge_sourceNode];
  v11 = *&a1[OBJC_IVAR____TtC11PhotosGraph4Edge_targetNode];
  swift_getObjectType();
  swift_getObjectType();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v12 = sub_22F2D6C28();
  v14 = v13;
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  v15 = *(v31 + 8);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v32 = *(v31 + 8);
  v17 = v32;
  v19 = sub_22F1229E8(v7, v9);
  v20 = *(v17 + 2);
  v21 = (v18 & 1) == 0;
  v22 = v20 + v21;
  if (__OFADD__(v20, v21))
  {
    __break(1u);
    goto LABEL_15;
  }

  v1 = v18;
  if (*(v17 + 3) >= v22)
  {
    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_10;
    }

LABEL_15:
    sub_22F136EF0();
    goto LABEL_10;
  }

  sub_22F12A590(v22, isUniquelyReferenced_nonNull_native);
  v23 = sub_22F1229E8(v7, v9);
  if ((v1 & 1) != (v24 & 1))
  {
    result = sub_22F7420C0();
    __break(1u);
    return result;
  }

  v19 = v23;
LABEL_10:
  v25 = v32;
  *(v31 + 8) = v32;
  if (v1)
  {
  }

  else
  {
    sub_22F1534CC(v19, v7, v9, MEMORY[0x277D84F98], v25);
  }

  v26 = *(v25 + 7);
  v27 = a1;
  v28 = *(v26 + 8 * v19);
  v29 = swift_isUniquelyReferenced_nonNull_native();
  v32 = *(v26 + 8 * v19);
  *(v26 + 8 * v19) = 0x8000000000000000;
  sub_22F131F98(v27, v12, v14, v29);

  *(v26 + 8 * v19) = v32;
  return result;
}

uint64_t sub_22F2D657C(uint64_t a1, uint64_t a2)
{
  v3 = 0;
  v4 = sub_22F2D5DEC(a1, sub_22F2B493C);
  v5 = sub_22F1515F8(v4);

  v6 = *(v5 + 16);
  if (v6)
  {
    v19 = a2;
    v7 = sub_22F10B348(v6, 0);
    v8 = sub_22F11A438(&v20, v7 + 4, v6, v5);

    sub_22F0FF590();
    if (v8 != v6)
    {
      __break(1u);
      goto LABEL_14;
    }

    a2 = v19;
  }

  else
  {
    v7 = MEMORY[0x277D84F90];
  }

  v20 = v7;
  sub_22F1AB0EC(&v20);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0E90, &qword_22F7714A0);
  sub_22F15A2C0();
  v9 = sub_22F740DA0();
  v11 = v10;

  if (*(a2 + 16))
  {
    v12 = sub_22F1229E8(v9, v11);
    v14 = v13;

    if (v14)
    {
      v15 = *(*(a2 + 56) + 8 * v12);

      v3 = *(v15 + 16);
      if (!v3)
      {
LABEL_8:

        return MEMORY[0x277D84F90];
      }

      goto LABEL_11;
    }
  }

  else
  {
  }

  v15 = MEMORY[0x277D84F98];
  v3 = *(MEMORY[0x277D84F98] + 16);
  if (!v3)
  {
    goto LABEL_8;
  }

LABEL_11:
  v16 = sub_22F120B48(v3, 0);
  v17 = sub_22F120B44(&v20, v16 + 4, v3, v15);
  sub_22F0FF590();
  if (v17 == v3)
  {
    return v16;
  }

LABEL_14:
  __break(1u);

  __break(1u);
  return result;
}

uint64_t sub_22F2D67A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_22F2D5DEC(a1, sub_22F2B493C);
  v6 = sub_22F1515F8(v5);

  v7 = *(v6 + 16);
  if (!v7)
  {
    v8 = MEMORY[0x277D84F90];
    goto LABEL_5;
  }

  v8 = sub_22F10B348(v7, 0);
  v9 = sub_22F11A438(&v23, v8 + 4, v7, v6);

  sub_22F0FF590();
  if (v9 == v7)
  {
LABEL_5:
    v23 = v8;
    sub_22F1AB0EC(&v23);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0E90, &qword_22F7714A0);
    sub_22F15A2C0();
    v10 = sub_22F740DA0();
    v12 = v11;

    if (*(a4 + 16))
    {
      v13 = sub_22F1229E8(v10, v12);
      v15 = v14;

      if ((v15 & 1) == 0)
      {
        return 0;
      }

      v16 = *(*(a4 + 56) + 8 * v13);
      if (!*(v16 + 16))
      {
        return 0;
      }

      v17 = sub_22F1229E8(a2, a3);
      if (v18)
      {
        v19 = *(*(v16 + 56) + 8 * v17);

        return v19;
      }
    }

    return 0;
  }

  __break(1u);

  __break(1u);
  return result;
}

uint64_t sub_22F2D6994(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_22F2D5DEC(a1, sub_22F2897A0);
  v6 = sub_22F1515F8(v5);

  v7 = *(v6 + 16);
  if (v7)
  {
    v30 = a4;
    v8 = sub_22F10B348(v7, 0);
    v9 = sub_22F11A438(&v31, v8 + 4, v7, v6);

    sub_22F0FF590();
    if (v9 != v7)
    {
      __break(1u);

      __break(1u);
      return result;
    }

    a4 = v30;
  }

  else
  {
    v8 = MEMORY[0x277D84F90];
  }

  v31 = v8;
  sub_22F1AB0EC(&v31);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0E90, &qword_22F7714A0);
  sub_22F15A2C0();
  v10 = sub_22F740DA0();
  v12 = v11;

  v31 = sub_22F2B4BB8();
  v32 = v13;

  MEMORY[0x231900B10](124, 0xE100000000000000);

  v15 = v31;
  v14 = v32;
  v16 = sub_22F2B4BB8();
  v18 = v17;
  v31 = v15;
  v32 = v14;

  MEMORY[0x231900B10](v16, v18);

  v19 = v32;
  if (*(a4 + 16))
  {
    v20 = v31;
    v21 = sub_22F1229E8(v10, v12);
    v23 = v22;

    if (v23)
    {
      v24 = *(*(a4 + 56) + 8 * v21);
      if (*(v24 + 16))
      {

        v25 = sub_22F1229E8(v20, v19);
        v27 = v26;

        if (v27)
        {
          v28 = *(*(v24 + 56) + 8 * v25);

          return v28;
        }
      }
    }
  }

  else
  {
  }

  return 0;
}

uint64_t sub_22F2D6C28()
{
  v4 = sub_22F2B4BB8();

  MEMORY[0x231900B10](124, 0xE100000000000000);

  v0 = sub_22F2B4BB8();
  v2 = v1;

  MEMORY[0x231900B10](v0, v2);

  return v4;
}

uint64_t sub_22F2D6CE0(void *a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  v16[0] = a4;
  v16[1] = a5;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB32E0, &qword_22F782DC0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - v12;
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22F2D7200();
  sub_22F742210();
  v17 = a2;
  v18 = a3;
  v19 = 0;
  sub_22F15C3C4(a2, a3);
  sub_22F15C9A0();
  sub_22F741FE0();
  sub_22F133BF0(v17, v18);
  if (!v5)
  {
    LOBYTE(v17) = 1;
    sub_22F741F80();
  }

  return (*(v10 + 8))(v13, v9);
}

uint64_t sub_22F2D6E7C()
{
  if (*v0)
  {
    result = 0x6564496870617267;
  }

  else
  {
    result = 1635017060;
  }

  *v0;
  return result;
}

uint64_t sub_22F2D6EBC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1635017060 && a2 == 0xE400000000000000;
  if (v5 || (sub_22F742040() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6564496870617267 && a2 == 0xEF7265696669746ELL)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_22F742040();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_22F2D6FA0(uint64_t a1)
{
  v2 = sub_22F2D7200();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22F2D6FDC(uint64_t a1)
{
  v2 = sub_22F2D7200();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22F2D7018@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_22F2D7254(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
    a2[3] = v7;
  }

  return result;
}

uint64_t sub_22F2D7068()
{
  v1 = OBJC_IVAR____TtC11PhotosGraph21InputStreamTokenStore_url;
  v2 = sub_22F73F470();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_22F20AD9C(*(v0 + OBJC_IVAR____TtC11PhotosGraph21InputStreamTokenStore_token), *(v0 + OBJC_IVAR____TtC11PhotosGraph21InputStreamTokenStore_token + 8), *(v0 + OBJC_IVAR____TtC11PhotosGraph21InputStreamTokenStore_token + 16), *(v0 + OBJC_IVAR____TtC11PhotosGraph21InputStreamTokenStore_token + 24));
  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t type metadata accessor for InputStreamTokenStore()
{
  result = qword_27DAB32D0;
  if (!qword_27DAB32D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_22F2D714C()
{
  result = sub_22F73F470();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

unint64_t sub_22F2D7200()
{
  result = qword_27DAB32E8;
  if (!qword_27DAB32E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB32E8);
  }

  return result;
}

uint64_t sub_22F2D7254(uint64_t *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB32F0, &qword_22F782DC8);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v11 - v6;
  v8 = a1[3];
  __swift_project_boxed_opaque_existential_1(a1, v8);
  sub_22F2D7200();
  sub_22F742200();
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_0(a1);
  }

  else
  {
    v12 = 0;
    sub_22F15C370();
    sub_22F741F10();
    v8 = v11[0];
    v10 = v11[1];
    LOBYTE(v11[0]) = 1;
    sub_22F741EB0();
    (*(v4 + 8))(v7, v3);
    sub_22F15C3C4(v8, v10);

    __swift_destroy_boxed_opaque_existential_0(a1);
    sub_22F133BF0(v8, v10);
  }

  return v8;
}

unint64_t sub_22F2D7490()
{
  result = qword_27DAB32F8;
  if (!qword_27DAB32F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB32F8);
  }

  return result;
}

unint64_t sub_22F2D74E8()
{
  result = qword_27DAB3300;
  if (!qword_27DAB3300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB3300);
  }

  return result;
}

unint64_t sub_22F2D7540()
{
  result = qword_27DAB3308;
  if (!qword_27DAB3308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB3308);
  }

  return result;
}

uint64_t sub_22F2D7594(unint64_t a1, unint64_t a2, int64_t a3, uint64_t a4)
{
  v9 = a1;
  if (a1 >> 62)
  {
LABEL_67:
    v59 = a4;
    v10 = sub_22F741A00();
    if (v10 < v59)
    {
LABEL_3:
      v11 = MEMORY[0x277D84F90];
      v70 = a2;
      if (v10)
      {
        v79[0] = MEMORY[0x277D84F90];
        v12 = v79;
        sub_22F146454(0, v10 & ~(v10 >> 63), 0);
        if (v10 < 0)
        {
          __break(1u);
          goto LABEL_85;
        }

        v13 = a3;
        v4 = 0;
        v14 = v79[0];
        do
        {
          if ((v9 & 0xC000000000000001) != 0)
          {
            v15 = MEMORY[0x2319016F0](v4, v9);
          }

          else
          {
            v15 = *(v9 + 8 * v4 + 32);
            swift_unknownObjectRetain();
          }

          v16 = [v15 uid];
          v5 = sub_22F740E20();
          v6 = v17;
          swift_unknownObjectRelease();

          v79[0] = v14;
          v19 = *(v14 + 16);
          v18 = *(v14 + 24);
          if (v19 >= v18 >> 1)
          {
            sub_22F146454((v18 > 1), v19 + 1, 1);
            v14 = v79[0];
          }

          ++v4;
          *(v14 + 16) = v19 + 1;
          v20 = v14 + 16 * v19;
          *(v20 + 32) = v5;
          *(v20 + 40) = v6;
        }

        while (v10 != v4);
        a3 = v13;
        v11 = MEMORY[0x277D84F90];
      }

      else
      {
        v14 = MEMORY[0x277D84F90];
      }

      v78 = sub_22F1515F8(v14);

      v80 = v11;
      v67 = a2 >> 62;
      if (a2 >> 62)
      {
        v21 = sub_22F741A00();
        if (v21)
        {
          goto LABEL_16;
        }
      }

      else
      {
        v21 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v21)
        {
LABEL_16:
          v22 = 0;
          v73 = a2 & 0xFFFFFFFFFFFFFF8;
          v74 = a2 & 0xC000000000000001;
          v71 = v21;
          v72 = a2 + 32;
          v77 = v78 + 56;
          v68 = a3;
          v69 = v9;
          while (1)
          {
            if (v74)
            {
              v24 = MEMORY[0x2319016F0](v22, a2);
              v25 = __OFADD__(v22, 1);
              v26 = v22 + 1;
              if (v25)
              {
LABEL_59:
                __break(1u);
LABEL_60:
                v5 = v80;
                goto LABEL_71;
              }
            }

            else
            {
              if (v22 >= *(v73 + 16))
              {
LABEL_66:
                __break(1u);
                goto LABEL_67;
              }

              v23 = *(v72 + 8 * v22);
              v24 = swift_unknownObjectRetain();
              v25 = __OFADD__(v22, 1);
              v26 = v22 + 1;
              if (v25)
              {
                goto LABEL_59;
              }
            }

            v75 = v26;
            v76 = v24;
            v27 = [v24 uid];
            v28 = sub_22F740E20();
            v30 = v29;

            if (*(v78 + 16) && (v31 = *(v78 + 40), sub_22F742170(), sub_22F740D60(), v32 = sub_22F7421D0(), v33 = -1 << *(v78 + 32), v34 = v32 & ~v33, ((*(v77 + ((v34 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v34) & 1) != 0))
            {
              v35 = ~v33;
              while (1)
              {
                v36 = (*(v78 + 48) + 16 * v34);
                v37 = *v36 == v28 && v36[1] == v30;
                if (v37 || (sub_22F742040() & 1) != 0)
                {
                  break;
                }

                v34 = (v34 + 1) & v35;
                if (((*(v77 + ((v34 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v34) & 1) == 0)
                {
                  goto LABEL_32;
                }
              }

              swift_unknownObjectRelease();
            }

            else
            {
LABEL_32:

              v38 = [v76 weightedKeywords];
              sub_22F170D8C();
              a2 = sub_22F740CA0();

              v39 = 1 << *(a2 + 32);
              if (v39 < 64)
              {
                v40 = ~(-1 << v39);
              }

              else
              {
                v40 = -1;
              }

              v9 = v40 & *(a2 + 64);
              a3 = (v39 + 63) >> 6;

              v41 = 0;
              v42 = MEMORY[0x277D84F90];
              while (v9)
              {
LABEL_42:
                v44 = (*(a2 + 48) + ((v41 << 10) | (16 * __clz(__rbit64(v9)))));
                v46 = *v44;
                v45 = v44[1];
                v79[0] = v46;
                v79[1] = v45;
                sub_22F160DE4();
                v47 = sub_22F7418B0();
                v48 = *(v47 + 16);
                v4 = *(v42 + 2);
                v6 = (v4 + v48);
                if (__OFADD__(v4, v48))
                {
LABEL_62:
                  __break(1u);
LABEL_63:
                  __break(1u);
LABEL_64:
                  __break(1u);
LABEL_65:
                  __break(1u);
                  goto LABEL_66;
                }

                v5 = v47;
                isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                if ((isUniquelyReferenced_nonNull_native & 1) == 0 || v6 > *(v42 + 3) >> 1)
                {
                  if (v4 <= v6)
                  {
                    v50 = v4 + v48;
                  }

                  else
                  {
                    v50 = v4;
                  }

                  v42 = sub_22F13E1A8(isUniquelyReferenced_nonNull_native, v50, 1, v42);
                }

                v9 &= v9 - 1;
                if (*(v5 + 16))
                {
                  if ((*(v42 + 3) >> 1) - *(v42 + 2) < v48)
                  {
                    goto LABEL_64;
                  }

                  swift_arrayInitWithCopy();

                  if (v48)
                  {
                    v51 = *(v42 + 2);
                    v25 = __OFADD__(v51, v48);
                    v52 = v51 + v48;
                    if (v25)
                    {
                      goto LABEL_65;
                    }

                    *(v42 + 2) = v52;
                  }
                }

                else
                {

                  if (v48)
                  {
                    goto LABEL_63;
                  }
                }
              }

              while (1)
              {
                v43 = v41 + 1;
                if (__OFADD__(v41, 1))
                {
                  __break(1u);
                  goto LABEL_62;
                }

                if (v43 >= a3)
                {
                  break;
                }

                v9 = *(a2 + 64 + 8 * v43);
                ++v41;
                if (v9)
                {
                  v41 = v43;
                  goto LABEL_42;
                }
              }

              v53 = sub_22F1515F8(v42);

              a3 = v68;

              v55 = sub_22F1515F8(v54);

              v56 = sub_22F1ABBB4(v55, v53);

              v57 = *(v56 + 16);

              if (v57)
              {
                sub_22F741BA0();
                v58 = *(v80 + 16);
                sub_22F741BE0();
                sub_22F741BF0();
                sub_22F741BB0();
              }

              else
              {
                swift_unknownObjectRelease();
              }

              v9 = v69;
              a2 = v70;
            }

            v22 = v75;
            if (v75 == v71)
            {
              goto LABEL_60;
            }
          }
        }
      }

      v5 = MEMORY[0x277D84F90];
LABEL_71:

      if (qword_2810A9460 != -1)
      {
        swift_once();
      }

      v60 = sub_22F740B90();
      __swift_project_value_buffer(v60, qword_2810B4D90);
      swift_retain_n();
      swift_bridgeObjectRetain_n();

      v12 = sub_22F740B70();
      LOBYTE(v10) = sub_22F7415C0();

      if (!os_log_type_enabled(v12, v10))
      {

        swift_bridgeObjectRelease_n();
LABEL_82:
        v79[0] = v9;

        sub_22F144F8C(v5);
        return v79[0];
      }

      v4 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      v79[0] = v6;
      *v4 = 136315650;
      v61 = MEMORY[0x231900D40](a3, MEMORY[0x277D837D0]);
      v63 = sub_22F145F20(v61, v62, v79);

      *(v4 + 4) = v63;
      *(v4 + 12) = 2048;
      if ((v5 & 0x8000000000000000) == 0 && (v5 & 0x4000000000000000) == 0)
      {
        v64 = *(v5 + 16);
LABEL_77:

        *(v4 + 14) = v64;

        *(v4 + 22) = 2048;
        if (v67)
        {
          v65 = sub_22F741A00();
        }

        else
        {
          v65 = *((v70 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        *(v4 + 24) = v65;

        _os_log_impl(&dword_22F0FC000, v12, v10, "[Flex Keyword Padder] Songs with any keywords from %s found: %ld out of %ld", v4, 0x20u);
        __swift_destroy_boxed_opaque_existential_0(v6);
        MEMORY[0x2319033A0](v6, -1, -1);
        MEMORY[0x2319033A0](v4, -1, -1);

        goto LABEL_82;
      }

LABEL_85:
      v64 = sub_22F741A00();
      goto LABEL_77;
    }
  }

  else
  {
    v10 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v10 < a4)
    {
      goto LABEL_3;
    }
  }

  return v9;
}

id AtHomeOrWorkFeatureExtractor.__allocating_init()()
{
  v6[1] = *MEMORY[0x277D85DE8];
  v6[0] = 0;
  v1 = [objc_allocWithZone(v0) initWithError_];
  if (v1)
  {
    v2 = v6[0];
  }

  else
  {
    v3 = v6[0];
    sub_22F73F370();

    swift_willThrow();
  }

  v4 = *MEMORY[0x277D85DE8];
  return v1;
}

id AtHomeOrWorkFeatureExtractor.init()()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = swift_allocObject();
  *(v3 + 16) = 0;
  v4 = swift_allocObject();
  *(v4 + 16) = 0;
  v5 = swift_allocObject();
  v5[2] = v3;
  v5[3] = v4;
  v5[4] = ObjectType;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAB1110, &unk_22F771270);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_22F7707D0;
  *(v6 + 32) = sub_22F740E20();
  *(v6 + 40) = v7;
  *(v6 + 48) = sub_22F740E20();
  *(v6 + 56) = v8;
  *(v6 + 64) = sub_22F740E20();
  *(v6 + 72) = v9;

  v10 = @"AtHomeOrWork";
  v11 = sub_22F741160();

  sub_22F120634(0, &qword_2810A90E0, off_27887B100);
  v12 = [swift_getObjCClassFromMetadata() filter];
  v13 = [v12 relation];

  aBlock[4] = sub_22F2D83C4;
  aBlock[5] = v5;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_22F2D83D0;
  aBlock[3] = &block_descriptor_23;
  v14 = _Block_copy(aBlock);

  v17.receiver = v1;
  v17.super_class = ObjectType;
  v15 = objc_msgSendSuper2(&v17, sel_initWithName_featureNames_relation_labelForTargetBlock_, v10, v11, v13, v14);

  _Block_release(v14);

  return v15;
}

uint64_t sub_22F2D80AC(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  objc_opt_self();
  v8 = swift_dynamicCastObjCClass();
  if (v8)
  {
    v9 = v8;
    swift_beginAccess();
    if (*(a3 + 16) && (swift_beginAccess(), *(a4 + 16)))
    {
      v10 = a1;
    }

    else
    {
      v11 = a1;
      if ([v9 graph])
      {
        objc_opt_self();
        v12 = swift_dynamicCastObjCClass();
        if (v12)
        {
          v13 = v12;
          v14 = sub_22F2D8708(v12);
          swift_beginAccess();
          v15 = *(a3 + 16);
          *(a3 + 16) = v14;

          v24 = sub_22F2D8A00(v13);
          swift_unknownObjectRelease();
          swift_beginAccess();
          v25 = *(a4 + 16);
          *(a4 + 16) = v24;
        }

        else
        {
          swift_unknownObjectRelease();
        }
      }
    }

    swift_beginAccess();
    v17 = *(a3 + 16);
    if (v17)
    {
      v18 = v17;
      if ([v18 containsNode_])
      {
        v19 = sub_22F740E20();

        return v19;
      }
    }

    swift_beginAccess();
    v20 = *(a4 + 16);
    if (v20)
    {
      v21 = v20;
      if ([v21 containsNode_])
      {
        v22 = sub_22F740E20();

        return v22;
      }
    }

    v19 = sub_22F740E20();

    return v19;
  }

  if (a2)
  {
    sub_22F2D86B4();
    v16 = swift_allocError();
    *a2 = sub_22F73F360();
  }

  return 0;
}

id sub_22F2D83D0(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4();
  v7 = v6;

  if (v7)
  {
    v8 = sub_22F740DF0();
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

uint64_t block_copy_helper_23(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

id AtHomeOrWorkFeatureExtractor.__allocating_init(name:featureNames:relation:labelForTargetBlock:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  if (a2)
  {
    v11 = sub_22F740DF0();
  }

  else
  {
    v11 = 0;
  }

  v12 = objc_allocWithZone(v7);
  v13 = sub_22F741160();

  v17[4] = a5;
  v17[5] = a6;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 1107296256;
  v17[2] = sub_22F2D83D0;
  v17[3] = &block_descriptor_7;
  v14 = _Block_copy(v17);
  v15 = [v12 initWithName:v11 featureNames:v13 relation:a4 labelForTargetBlock:v14];

  _Block_release(v14);

  return v15;
}

id AtHomeOrWorkFeatureExtractor.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_22F2D86B4()
{
  result = qword_27DAB3310;
  if (!qword_27DAB3310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB3310);
  }

  return result;
}

uint64_t sub_22F2D8708(void *a1)
{
  v1 = [a1 meNodeCollection];
  v2 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB13D0, &qword_22F7717F0);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_22F782F40;
  sub_22F120634(0, &qword_27DAB3318, off_27887AF38);
  v4 = [swift_getObjCClassFromMetadata() filter];
  v5 = [v4 inRelation];

  *(v3 + 32) = v5;
  *(v3 + 40) = [objc_opt_self() addressOfHomeWork];
  *(v3 + 48) = [objc_opt_self() momentOfAddress];
  sub_22F120634(0, &qword_2810A9218, 0x277D22C90);
  v6 = sub_22F741160();

  v7 = [v2 chain_];

  v8 = v1;
  v9 = v7;
  v10 = [objc_msgSend(v8 graph)];
  swift_unknownObjectRelease();
  v11 = [v10 concreteGraph];

  if (v11)
  {
    v12 = [v8 elementIdentifiers];
    v13 = [v11 adjacencyWithSources:v12 relation:v9];

    v14 = objc_allocWithZone(PGGraphMomentNodeCollection);
    v15 = [v13 targets];
    v16 = [v14 initWithGraph:v11 elementIdentifiers:v15];
    swift_unknownObjectRelease();

    return v16;
  }

  else
  {
    result = sub_22F741D40();
    __break(1u);
  }

  return result;
}

uint64_t sub_22F2D8A00(uint64_t a1)
{
  sub_22F120634(0, &qword_2810A8F90, off_27887AE30);
  v2 = [swift_getObjCClassFromMetadata() nodesInGraph_];
  v3 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB13D0, &qword_22F7717F0);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22F771350;
  *(v4 + 32) = [objc_opt_self() addressOfHomeWork];
  *(v4 + 40) = [objc_opt_self() momentOfAddress];
  sub_22F120634(0, &qword_2810A9218, 0x277D22C90);
  v5 = sub_22F741160();

  v6 = [v3 chain_];

  v7 = v2;
  v8 = v6;
  v9 = [objc_msgSend(v7 graph)];
  swift_unknownObjectRelease();
  v10 = [v9 concreteGraph];

  if (v10)
  {
    v11 = [v7 elementIdentifiers];
    v12 = [v10 adjacencyWithSources:v11 relation:v8];

    v13 = objc_allocWithZone(PGGraphMomentNodeCollection);
    v14 = [v12 targets];
    v15 = [v13 initWithGraph:v10 elementIdentifiers:v14];
    swift_unknownObjectRelease();

    return v15;
  }

  else
  {
    result = sub_22F741D40();
    __break(1u);
  }

  return result;
}

unint64_t sub_22F2D8CDC()
{
  result = qword_27DAB3320;
  if (!qword_27DAB3320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB3320);
  }

  return result;
}

uint64_t MusicCache.songsForMemoryDisplayCached(before:progressReporter:)()
{
  sub_22F120634(0, &qword_2810A91E0, 0x277CCAC30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB11A0, &qword_22F772940);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_22F770DF0;
  *(v0 + 56) = MEMORY[0x277D837D0];
  *(v0 + 64) = sub_22F153470();
  *(v0 + 32) = 0x7461446568636163;
  *(v0 + 40) = 0xE900000000000065;
  v1 = sub_22F73F5B0();
  *(v0 + 96) = sub_22F120634(0, &qword_2810A8F00, 0x277CBEAA8);
  *(v0 + 104) = sub_22F15FD58();
  *(v0 + 72) = v1;
  v2 = sub_22F741560();
  v3 = sub_22F2DA3D8(v2);

  return v3;
}

void MusicCache.evictSongsForMemoryDisplay(before:progressReporter:)(uint64_t a1)
{
  v3 = v1;
  v5 = sub_22F740AD0();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22F741740();
  if (qword_2810A8E80 != -1)
  {
    swift_once();
  }

  sub_22F740AC0();
  sub_22F740A90();
  v10 = *(v6 + 8);
  v10(v9, v5);
  sub_22F741690();
  if (!v2)
  {
    v11 = sub_22F7416D0();
    v18[1] = v18;
    v12 = *(v1 + OBJC_IVAR___PGMusicCache_managedObjectContext);
    v13 = MEMORY[0x28223BE20](v11);
    v18[-6] = a1;
    v18[-5] = v13;
    v14 = v13;
    v18[-4] = v3;
    v18[-3] = v15;
    v19 = v15;
    v17 = v16;
    v18[-2] = v16;
    sub_22F7417A0();
    sub_22F741730();
    sub_22F740AC0();
    sub_22F740A90();

    v10(v9, v5);
  }
}

void MusicCache.removeAllSongsForMemoryDisplay(progressReporter:)()
{
  v2 = sub_22F740AD0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22F741740();
  if (qword_2810A8E80 != -1)
  {
    swift_once();
  }

  sub_22F740AC0();
  sub_22F740A90();
  v7 = *(v3 + 8);
  v7(v6, v2);
  sub_22F741690();
  if (!v1)
  {
    v19 = 0;
    v8 = sub_22F7416D0();
    v10 = v9;
    v12 = v11;
    v20 = &v18;
    v13 = *(v0 + OBJC_IVAR___PGMusicCache_managedObjectContext);
    MEMORY[0x28223BE20](v8);
    *(&v18 - 6) = 0;
    *(&v18 - 5) = v14;
    *(&v18 - 4) = v15;
    *(&v18 - 3) = v10;
    *(&v18 - 2) = v16;
    v17 = v19;
    sub_22F7417A0();

    if (!v17)
    {
      sub_22F741730();
      sub_22F740AC0();
      sub_22F740A90();
      v7(v6, v2);
    }
  }
}

uint64_t MusicCache.readSongsForMemoryDisplay(with:progressReporter:)(uint64_t a1)
{
  sub_22F120634(0, &qword_2810A91E0, 0x277CCAC30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB11A0, &qword_22F772940);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_22F770DF0;
  *(v2 + 56) = MEMORY[0x277D837D0];
  *(v2 + 64) = sub_22F153470();
  *(v2 + 32) = 0x44496D616461;
  *(v2 + 40) = 0xE600000000000000;
  *(v2 + 96) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0E90, &qword_22F7714A0);
  *(v2 + 104) = sub_22F25F050();
  *(v2 + 72) = a1;

  v3 = sub_22F741560();
  v4 = sub_22F2DA3D8(v3);

  return v4;
}

uint64_t MusicCache.writeMemoryDisplay(songs:date:progressReporter:)(void *a1, uint64_t (*a2)(uint64_t, unint64_t))
{
  v4 = v3;
  v5 = v2;
  v55 = a2;
  v7 = type metadata accessor for Song();
  v56 = *(v7 - 8);
  v8 = *(v56 + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v59 = &v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v58 = (&v46 - v11);
  v12 = sub_22F740AD0();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  isUniquelyReferenced_nonNull_native = &v46 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22F741740();
  if (qword_2810A8E80 != -1)
  {
LABEL_23:
    swift_once();
  }

  v17 = qword_2810A8E88;
  sub_22F740AC0();
  sub_22F740A90();
  v20 = *(v13 + 8);
  v19 = v13 + 8;
  v18 = v20;
  v20(isUniquelyReferenced_nonNull_native, v12);
  result = sub_22F741690();
  if (!v4)
  {
    v57 = v17;
    v53 = v5;
    v54 = 0;
    v47 = isUniquelyReferenced_nonNull_native;
    v48 = v19;
    v49 = v12;
    v22 = sub_22F7416D0();
    v51 = v23;
    v52 = v22;
    v50 = v24;
    v5 = a1[2];
    v46 = v18;
    if (v5)
    {
      v4 = a1 + ((*(v56 + 80) + 32) & ~*(v56 + 80));
      a1 = MEMORY[0x277D84F98];
      v25 = v58;
      v56 = *(v56 + 72);
      while (1)
      {
        sub_22F15CAA0(v4, v25);
        v13 = *v25;
        v27 = v25[1];
        sub_22F15CAA0(v25, v59);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v60 = a1;
        v12 = sub_22F1229E8(v13, v27);
        v29 = a1[2];
        v30 = (v28 & 1) == 0;
        v31 = v29 + v30;
        if (__OFADD__(v29, v30))
        {
          __break(1u);
LABEL_22:
          __break(1u);
          goto LABEL_23;
        }

        v32 = v28;
        if (a1[3] >= v31)
        {
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_22F134A90();
          }
        }

        else
        {
          sub_22F126640(v31, isUniquelyReferenced_nonNull_native);
          v33 = sub_22F1229E8(v13, v27);
          if ((v32 & 1) != (v34 & 1))
          {
            result = sub_22F7420C0();
            __break(1u);
            return result;
          }

          v12 = v33;
        }

        isUniquelyReferenced_nonNull_native = v57;
        a1 = v60;
        if (v32)
        {
          v26 = v56;
          sub_22F1A2A44(v59, v60[7] + v12 * v56);
        }

        else
        {
          v60[(v12 >> 6) + 8] |= 1 << v12;
          v35 = (a1[6] + 16 * v12);
          *v35 = v13;
          v35[1] = v27;
          v26 = v56;
          sub_22F15CB04(v59, a1[7] + v12 * v56);
          v36 = a1[2];
          v37 = __OFADD__(v36, 1);
          v38 = v36 + 1;
          if (v37)
          {
            goto LABEL_22;
          }

          a1[2] = v38;
        }

        v25 = v58;
        v22 = sub_22F15CBD8(v58);
        v4 += v26;
        if (!--v5)
        {
          goto LABEL_17;
        }
      }
    }

    a1 = MEMORY[0x277D84F98];
LABEL_17:
    v39 = *(v53 + OBJC_IVAR___PGMusicCache_managedObjectContext);
    MEMORY[0x28223BE20](v22);
    v41 = v51;
    v40 = v52;
    *(&v46 - 6) = a1;
    *(&v46 - 5) = v40;
    v42 = v54;
    *(&v46 - 4) = v55;
    *(&v46 - 3) = v43;
    v44 = v50;
    *(&v46 - 2) = v41;
    *(&v46 - 1) = v44;
    sub_22F7417A0();
    if (v42)
    {
    }

    else
    {

      sub_22F741730();
      v45 = v47;
      sub_22F740AC0();
      sub_22F740A90();

      return v46(v45, v49);
    }
  }

  return result;
}

void sub_22F2D9968(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v110 = a6;
  v111 = a5;
  v113 = a4;
  v116 = a3;
  v127[5] = *MEMORY[0x277D85DE8];
  v10 = type metadata accessor for Song();
  v115 = *(v10 - 8);
  v11 = *(v115 + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v125 = (&v110 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v13);
  v114 = &v110 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB3328, &qword_22F783030);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v118 = (&v110 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v18);
  v117 = (&v110 - v19);
  v20 = objc_allocWithZone(MEMORY[0x277CBE428]);

  v21 = sub_22F740DF0();

  v112 = [v20 initWithEntityName_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB11A0, &qword_22F772940);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_22F770DF0;
  *(v22 + 56) = MEMORY[0x277D837D0];
  *(v22 + 64) = sub_22F153470();
  *(v22 + 32) = 0x44496D616461;
  *(v22 + 40) = 0xE600000000000000;
  v23 = a1[2];
  v123 = a1;
  if (v23)
  {
    v124 = a2;
    v126 = v6;
    v24 = sub_22F10B348(v23, 0);
    v25 = sub_22F120B3C(v127, v24 + 4, v23, a1);
    isUniquelyReferenced_nonNull_native = v127[4];

    sub_22F1534EC();
    if (v25 != v23)
    {
      goto LABEL_37;
    }

    v7 = v126;
  }

  else
  {
    v24 = MEMORY[0x277D84F90];
  }

  sub_22F120634(0, &qword_2810A91E0, 0x277CCAC30);
  *(v22 + 96) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0E90, &qword_22F7714A0);
  *(v22 + 104) = sub_22F25F050();
  *(v22 + 72) = v24;
  v27 = sub_22F741560();
  v28 = v112;
  [v112 setPredicate_];

  v127[0] = 0;
  v29 = [v28 execute_];
  v30 = v127[0];
  if (!v29)
  {
    v33 = v127[0];
    sub_22F73F370();

    swift_willThrow();
    goto LABEL_70;
  }

  v31 = v29;
  type metadata accessor for MemoryDisplaySongEntry();
  isUniquelyReferenced_nonNull_native = sub_22F741180();
  v32 = v30;

  sub_22F7416A0();
  if (v7)
  {

    goto LABEL_70;
  }

  v124 = 0;
  sub_22F2146C0(MEMORY[0x277D84F98]);
  a1 = v34;
  if (isUniquelyReferenced_nonNull_native >> 62)
  {
LABEL_38:
    v35 = sub_22F741A00();
    if (v35)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v35 = *((isUniquelyReferenced_nonNull_native & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v35)
    {
LABEL_11:
      v36 = 0;
      v121 = isUniquelyReferenced_nonNull_native & 0xFFFFFFFFFFFFFF8;
      v122 = isUniquelyReferenced_nonNull_native & 0xC000000000000001;
      v119 = v35;
      v120 = isUniquelyReferenced_nonNull_native;
      do
      {
        if (v122)
        {
          v39 = MEMORY[0x2319016F0](v36, isUniquelyReferenced_nonNull_native);
        }

        else
        {
          if (v36 >= *(v121 + 16))
          {
            goto LABEL_34;
          }

          v39 = *(isUniquelyReferenced_nonNull_native + 8 * v36 + 32);
        }

        v40 = v39;
        isUniquelyReferenced_nonNull_native = v36 + 1;
        if (__OFADD__(v36, 1))
        {
          __break(1u);
LABEL_34:
          __break(1u);
LABEL_35:
          __break(1u);
LABEL_36:
          __break(1u);
LABEL_37:
          __break(1u);
          goto LABEL_38;
        }

        v41 = [v39 adamID];
        v126 = (v36 + 1);
        if (v41)
        {
          v42 = v41;
          v43 = sub_22F740E20();
          v45 = v44;
        }

        else
        {
          v43 = 0;
          v45 = 0;
        }

        v46 = v40;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v127[0] = a1;
        v48 = sub_22F123310(v43, v45);
        v49 = a1[2];
        v50 = (v47 & 1) == 0;
        v51 = v49 + v50;
        if (__OFADD__(v49, v50))
        {
          goto LABEL_35;
        }

        v52 = v47;
        if (a1[3] >= v51)
        {
          if (isUniquelyReferenced_nonNull_native)
          {
            if (v47)
            {
              goto LABEL_12;
            }
          }

          else
          {
            sub_22F136F04();
            if (v52)
            {
              goto LABEL_12;
            }
          }
        }

        else
        {
          sub_22F12A5A4(v51, isUniquelyReferenced_nonNull_native);
          v53 = sub_22F123310(v43, v45);
          if ((v52 & 1) != (v54 & 1))
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB1048, &qword_22F78B5C0);
            sub_22F7420C0();
            __break(1u);
            return;
          }

          v48 = v53;
          if (v52)
          {
LABEL_12:

            a1 = v127[0];
            v37 = *(v127[0] + 7);
            v38 = *(v37 + 8 * v48);
            *(v37 + 8 * v48) = v46;

            goto LABEL_13;
          }
        }

        a1 = v127[0];
        *(v127[0] + (v48 >> 6) + 8) |= 1 << v48;
        v55 = (a1[6] + 16 * v48);
        *v55 = v43;
        v55[1] = v45;
        *(a1[7] + 8 * v48) = v46;

        v56 = a1[2];
        v57 = __OFADD__(v56, 1);
        v58 = v56 + 1;
        if (v57)
        {
          goto LABEL_36;
        }

        a1[2] = v58;
LABEL_13:
        ++v36;
        isUniquelyReferenced_nonNull_native = v120;
      }

      while (v126 != v119);
    }
  }

  v59 = v123[8];
  v121 = (v123 + 8);
  v60 = 1 << *(v123 + 32);
  v61 = -1;
  if (v60 < 64)
  {
    v61 = ~(-1 << v60);
  }

  v62 = v61 & v59;
  v122 = OBJC_IVAR___PGMusicCache_managedObjectContext;
  v120 = (v60 + 63) >> 6;

  v64 = 0;
  v65 = &unk_27DAB3330;
  v66 = &unk_22F783038;
  v126 = a1;
  while (1)
  {
    if (v62)
    {
      v67 = v64;
LABEL_52:
      v70 = __clz(__rbit64(v62));
      v62 &= v62 - 1;
      v71 = v70 | (v67 << 6);
      v72 = (*(v63 + 48) + 16 * v71);
      v74 = *v72;
      v73 = v72[1];
      v75 = v114;
      sub_22F15CAA0(*(v63 + 56) + *(v115 + 72) * v71, v114);
      v76 = __swift_instantiateConcreteTypeFromMangledNameV2(v65, v66);
      v77 = *(v76 + 48);
      v78 = v66;
      v79 = v65;
      v80 = v118;
      *v118 = v74;
      v80[1] = v73;
      sub_22F15CB04(v75, v80 + v77);
      (*(*(v76 - 8) + 56))(v80, 0, 1, v76);

      v69 = v67;
      v81 = v80;
      v65 = v79;
      v66 = v78;
      a1 = v126;
    }

    else
    {
      v68 = v120 <= v64 + 1 ? v64 + 1 : v120;
      v69 = v68 - 1;
      while (1)
      {
        v67 = v64 + 1;
        if (__OFADD__(v64, 1))
        {
          __break(1u);
        }

        if (v67 >= v120)
        {
          break;
        }

        v62 = *(v121 + 8 * v67);
        ++v64;
        if (v62)
        {
          goto LABEL_52;
        }
      }

      v96 = __swift_instantiateConcreteTypeFromMangledNameV2(v65, v66);
      v97 = v118;
      (*(*(v96 - 8) + 56))(v118, 1, 1, v96);
      v81 = v97;
      v62 = 0;
    }

    v82 = v117;
    sub_22F2DBC84(v81, v117);
    v83 = __swift_instantiateConcreteTypeFromMangledNameV2(v65, v66);
    if ((*(*(v83 - 8) + 48))(v82, 1, v83) == 1)
    {
      break;
    }

    v84 = v82;
    v86 = *v82;
    v85 = v82[1];
    sub_22F15CB04(v84 + *(v83 + 48), v125);
    if (a1[2])
    {
      v87 = sub_22F123310(v86, v85);
      v89 = v88;

      if (v89)
      {
        v90 = *(a1[7] + 8 * v87);
        v92 = v124;
        v91 = v125;
        sub_22F3C3D98(v125);
        v124 = v92;
        if (v92)
        {
          sub_22F15CBD8(v91);

          goto LABEL_69;
        }

        sub_22F15CBD8(v91);

        goto LABEL_42;
      }
    }

    else
    {
    }

    v94 = v124;
    v93 = v125;
    v95 = sub_22F3C4C44(*(v113 + v122), v125);
    v124 = v94;
    if (v94)
    {
      sub_22F15CBD8(v93);

LABEL_69:

      goto LABEL_70;
    }

    sub_22F15CBD8(v93);
LABEL_42:
    v64 = v69;
    v63 = v123;
  }

  v98 = v124;
  sub_22F7416A0();
  if (v98)
  {
  }

  else
  {
    v99 = *(v113 + v122);
    v127[0] = 0;
    v100 = [v99 save_];
    v101 = v112;
    if (v100)
    {
      v102 = v127[0];
      sub_22F7416A0();
    }

    else
    {
      v104 = v127[0];
      v105 = sub_22F73F370();

      swift_willThrow();
      swift_getErrorValue();
      v106 = sub_22F7420F0();
      v108 = v107;
      sub_22F1A297C();
      swift_allocError();
      *v109 = v106;
      *(v109 + 8) = v108;
      *(v109 + 16) = 0;
      swift_willThrow();
    }
  }

LABEL_70:
  v103 = *MEMORY[0x277D85DE8];
}

uint64_t sub_22F2DA3D8(uint64_t a1)
{
  v3 = sub_22F740AD0();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22F741740();
  if (qword_2810A8E80 != -1)
  {
    swift_once();
  }

  sub_22F740AC0();
  sub_22F740A90();
  v8 = *(v4 + 8);
  v8(v7, v3);
  result = sub_22F741690();
  if (!v1)
  {
    v17 = MEMORY[0x277D84F90];
    v10 = sub_22F7416B0();
    v12 = v11;
    v15 = &v15;
    v13 = *&v16[OBJC_IVAR___PGMusicCache_managedObjectContext];
    v14 = MEMORY[0x28223BE20](v10);
    *(&v15 - 4) = a1;
    *(&v15 - 3) = v14;
    v16 = v14;
    *(&v15 - 2) = &v17;
    *(&v15 - 1) = v12;
    sub_22F7417A0();
    sub_22F741730();
    sub_22F740AC0();
    sub_22F740A90();

    v8(v7, v3);
    return v17;
  }

  return result;
}

void sub_22F2DA688(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v31[1] = *MEMORY[0x277D85DE8];
  v5 = objc_allocWithZone(MEMORY[0x277CBE428]);

  v6 = sub_22F740DF0();

  v7 = [v5 initWithEntityName_];

  sub_22F120634(0, &qword_2810A91E0, 0x277CCAC30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB11A0, &qword_22F772940);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_22F770DF0;
  *(v8 + 56) = MEMORY[0x277D837D0];
  *(v8 + 64) = sub_22F153470();
  *(v8 + 32) = 0x7461446568636163;
  *(v8 + 40) = 0xE900000000000065;
  v9 = sub_22F73F5B0();
  *(v8 + 96) = sub_22F120634(0, &qword_2810A8F00, 0x277CBEAA8);
  *(v8 + 104) = sub_22F15FD58();
  *(v8 + 72) = v9;
  v10 = sub_22F741560();
  [v7 setPredicate_];

  v31[0] = 0;
  v11 = [v7 execute_];
  v12 = v31[0];
  if (!v11)
  {
    v16 = v31[0];
    sub_22F73F370();

    swift_willThrow();
LABEL_18:

    goto LABEL_19;
  }

  v13 = v11;
  type metadata accessor for MemoryDisplaySongEntry();
  v14 = sub_22F741180();
  v15 = v12;

  sub_22F7416A0();
  if (!v3)
  {
    if (v14 >> 62)
    {
      v17 = sub_22F741A00();
      if (v17)
      {
        goto LABEL_7;
      }
    }

    else
    {
      v17 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v17)
      {
LABEL_7:
        if (v17 < 1)
        {
          __break(1u);
        }

        v18 = 0;
        v19 = *(a3 + OBJC_IVAR___PGMusicCache_managedObjectContext);
        do
        {
          if ((v14 & 0xC000000000000001) != 0)
          {
            v20 = MEMORY[0x2319016F0](v18, v14);
          }

          else
          {
            v20 = *(v14 + 8 * v18 + 32);
          }

          v21 = v20;
          ++v18;
          [v19 deleteObject_];
        }

        while (v17 != v18);
      }
    }

    sub_22F7416A0();
    v22 = *(a3 + OBJC_IVAR___PGMusicCache_managedObjectContext);
    v31[0] = 0;
    if ([v22 save_])
    {
      v23 = v31[0];
      sub_22F7416A0();
    }

    else
    {
      v24 = v31[0];
      v25 = sub_22F73F370();

      swift_willThrow();
      swift_getErrorValue();
      v26 = sub_22F7420F0();
      v28 = v27;
      sub_22F1A297C();
      swift_allocError();
      *v29 = v26;
      *(v29 + 8) = v28;
      *(v29 + 16) = 0;
      swift_willThrow();
    }

    goto LABEL_18;
  }

LABEL_19:
  v30 = *MEMORY[0x277D85DE8];
}

void sub_22F2DAA70()
{
  v1 = v0[5];
  v2 = v0[6];
  sub_22F2DA688(v0[2], v0[3], v0[4]);
}

void MusicCache.removeSongsForMemoryDisplay(with:progressReporter:)(uint64_t a1)
{
  v3 = sub_22F740AD0();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22F741740();
  if (qword_2810A8E80 != -1)
  {
    swift_once();
  }

  v8 = qword_2810A8E88;
  sub_22F740AC0();
  sub_22F740A90();
  v9 = *(v4 + 8);
  v9(v7, v3);
  sub_22F120634(0, &qword_2810A91E0, 0x277CCAC30);
  v24 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB11A0, &qword_22F772940);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_22F770DF0;
  *(v10 + 56) = MEMORY[0x277D837D0];
  *(v10 + 64) = sub_22F153470();
  *(v10 + 32) = 0x44496D616461;
  *(v10 + 40) = 0xE600000000000000;
  *(v10 + 96) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0E90, &qword_22F7714A0);
  *(v10 + 104) = sub_22F25F050();
  *(v10 + 72) = a1;

  v11 = sub_22F741560();
  sub_22F741690();
  if (v1)
  {
  }

  else
  {
    v22 = v9;
    v23 = v8;
    v12 = sub_22F7416D0();
    v14 = v13;
    v16 = v15;
    v17 = *(v25 + OBJC_IVAR___PGMusicCache_managedObjectContext);
    MEMORY[0x28223BE20](v12);
    *(&v21 - 6) = v11;
    *(&v21 - 5) = v18;
    *(&v21 - 4) = v19;
    *(&v21 - 3) = v14;
    *(&v21 - 2) = v20;
    sub_22F7417A0();

    sub_22F741730();
    sub_22F740AC0();
    sub_22F740A90();

    v22(v7, v24);
  }
}

uint64_t MusicCache.cacheDates(for:progressReporter:)()
{
  result = sub_22F741690();
  if (!v1)
  {
    v3 = sub_22F7416B0();
    v5 = v4;
    v7 = MEMORY[0x277D84F98];
    v6 = *(v0 + OBJC_IVAR___PGMusicCache_managedObjectContext);
    MEMORY[0x28223BE20](v3);
    sub_22F7417A0();

    return v7;
  }

  return result;
}

void sub_22F2DAF0C(uint64_t a1, uint64_t a2, id *a3, uint64_t a4)
{
  v76[1] = *MEMORY[0x277D85DE8];
  v75 = sub_22F73F690();
  v71 = *(v75 - 8);
  v8 = *(v71 + 64);
  MEMORY[0x28223BE20](v75);
  v74 = &v60 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v73 = &v60 - v11;
  v12 = objc_allocWithZone(MEMORY[0x277CBE428]);

  v13 = sub_22F740DF0();

  v14 = [v12 initWithEntityName_];

  sub_22F120634(0, &qword_2810A91E0, 0x277CCAC30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB11A0, &qword_22F772940);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_22F770DF0;
  *(v15 + 56) = MEMORY[0x277D837D0];
  *(v15 + 64) = sub_22F153470();
  *(v15 + 32) = 0x44496D616461;
  *(v15 + 40) = 0xE600000000000000;
  *(v15 + 96) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0E90, &qword_22F7714A0);
  *(v15 + 104) = sub_22F25F050();
  *(v15 + 72) = a1;

  v16 = sub_22F741560();
  [v14 setPredicate_];

  v76[0] = 0;
  v17 = [v14 execute_];
  v18 = v76[0];
  if (!v17)
  {
    v22 = v76[0];
    sub_22F73F370();

    swift_willThrow();
    goto LABEL_36;
  }

  v19 = v17;
  type metadata accessor for MemoryDisplaySongEntry();
  v20 = sub_22F741180();
  v21 = v18;

  sub_22F7416A0();
  if (v4)
  {

LABEL_36:
    v59 = *MEMORY[0x277D85DE8];
    return;
  }

  v61 = v14;
  v62 = a4;
  v60 = 0;
  v72 = a3;
  if (v20 >> 62)
  {
LABEL_34:
    v23 = sub_22F741A00();
    if (v23)
    {
      goto LABEL_7;
    }

LABEL_35:

    sub_22F7416A0();

    goto LABEL_36;
  }

  v23 = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v23)
  {
    goto LABEL_35;
  }

LABEL_7:
  v24 = 0;
  v25 = v20 & 0xC000000000000001;
  v64 = v71 + 32;
  v65 = v20 & 0xFFFFFFFFFFFFFF8;
  v69 = v71 + 8;
  v70 = (v71 + 16);
  v63 = v71 + 40;
  v67 = v23;
  v68 = v20;
  v66 = v20 & 0xC000000000000001;
  while (1)
  {
    if (v25)
    {
      v26 = MEMORY[0x2319016F0](v24, v20);
    }

    else
    {
      if (v24 >= *(v65 + 16))
      {
        goto LABEL_32;
      }

      v26 = *(v20 + 8 * v24 + 32);
    }

    v27 = v26;
    v28 = v24 + 1;
    if (__OFADD__(v24, 1))
    {
      __break(1u);
LABEL_31:
      __break(1u);
LABEL_32:
      __break(1u);
LABEL_33:
      __break(1u);
      goto LABEL_34;
    }

    v29 = [v26 adamID];
    if (!v29)
    {
      goto LABEL_9;
    }

    v30 = v29;
    v31 = sub_22F740E20();
    v33 = v32;

    v34 = [v27 cacheDate];
    if (v34)
    {
      break;
    }

LABEL_9:

LABEL_10:
    ++v24;
    if (v28 == v23)
    {
      goto LABEL_35;
    }
  }

  v35 = v73;
  v36 = v34;
  sub_22F73F640();

  (*v70)(v74, v35, v75);
  v37 = v72;
  v38 = *v72;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v76[0] = *v37;
  v40 = v76[0];
  *v37 = 0x8000000000000000;
  v20 = v31;
  v42 = sub_22F1229E8(v31, v33);
  v43 = v40[2];
  v44 = (v41 & 1) == 0;
  v45 = v43 + v44;
  if (__OFADD__(v43, v44))
  {
    goto LABEL_31;
  }

  v46 = v41;
  if (v40[3] >= v45)
  {
    if (isUniquelyReferenced_nonNull_native)
    {
      if ((v41 & 1) == 0)
      {
        goto LABEL_27;
      }
    }

    else
    {
      sub_22F134004();
      if ((v46 & 1) == 0)
      {
        goto LABEL_27;
      }
    }

    goto LABEL_25;
  }

  sub_22F125428(v45, isUniquelyReferenced_nonNull_native);
  v47 = sub_22F1229E8(v20, v33);
  if ((v46 & 1) == (v48 & 1))
  {
    v42 = v47;
    if ((v46 & 1) == 0)
    {
LABEL_27:
      v52 = v75;
      v49 = v76[0];
      *(v76[0] + (v42 >> 6) + 8) |= 1 << v42;
      v53 = (v49[6] + 16 * v42);
      *v53 = v20;
      v53[1] = v33;
      v54 = v71;
      (*(v71 + 32))(v49[7] + *(v71 + 72) * v42, v74, v52);

      (*(v54 + 8))(v73, v52);
      v55 = v49[2];
      v56 = __OFADD__(v55, 1);
      v57 = v55 + 1;
      if (v56)
      {
        goto LABEL_33;
      }

      v49[2] = v57;
      goto LABEL_29;
    }

LABEL_25:

    v50 = v75;
    v49 = v76[0];
    v51 = v71;
    (*(v71 + 40))(*(v76[0] + 7) + *(v71 + 72) * v42, v74, v75);

    (*(v51 + 8))(v73, v50);
LABEL_29:
    v58 = *v72;
    *v72 = v49;

    v23 = v67;
    v20 = v68;
    v25 = v66;
    goto LABEL_10;
  }

  sub_22F7420C0();
  __break(1u);
}

void sub_22F2DB520(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v29[1] = *MEMORY[0x277D85DE8];
  v6 = objc_allocWithZone(MEMORY[0x277CBE428]);

  v7 = sub_22F740DF0();

  v8 = [v6 initWithEntityName_];

  [v8 setPredicate_];
  v29[0] = 0;
  v9 = [v8 execute_];
  v10 = v29[0];
  if (!v9)
  {
    v14 = v29[0];
    sub_22F73F370();

    swift_willThrow();
LABEL_18:

    goto LABEL_19;
  }

  v11 = v9;
  type metadata accessor for MemoryDisplaySongEntry();
  v12 = sub_22F741180();
  v13 = v10;

  sub_22F7416A0();
  if (!v3)
  {
    if (v12 >> 62)
    {
      v15 = sub_22F741A00();
      if (v15)
      {
        goto LABEL_7;
      }
    }

    else
    {
      v15 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v15)
      {
LABEL_7:
        if (v15 < 1)
        {
          __break(1u);
        }

        v16 = 0;
        v17 = *(a3 + OBJC_IVAR___PGMusicCache_managedObjectContext);
        do
        {
          if ((v12 & 0xC000000000000001) != 0)
          {
            v18 = MEMORY[0x2319016F0](v16, v12);
          }

          else
          {
            v18 = *(v12 + 8 * v16 + 32);
          }

          v19 = v18;
          ++v16;
          [v17 deleteObject_];
        }

        while (v15 != v16);
      }
    }

    sub_22F7416A0();
    v20 = *(a3 + OBJC_IVAR___PGMusicCache_managedObjectContext);
    v29[0] = 0;
    if ([v20 save_])
    {
      v21 = v29[0];
      sub_22F7416A0();
    }

    else
    {
      v22 = v29[0];
      v23 = sub_22F73F370();

      swift_willThrow();
      swift_getErrorValue();
      v24 = sub_22F7420F0();
      v26 = v25;
      sub_22F1A297C();
      swift_allocError();
      *v27 = v24;
      *(v27 + 8) = v26;
      *(v27 + 16) = 0;
      swift_willThrow();
    }

    goto LABEL_18;
  }

LABEL_19:
  v28 = *MEMORY[0x277D85DE8];
}

void sub_22F2DB848(uint64_t a1, uint64_t a2, size_t *a3, uint64_t a4)
{
  v35 = a4;
  v41 = a3;
  v43[1] = *MEMORY[0x277D85DE8];
  v6 = type metadata accessor for Song();
  v39 = *(v6 - 8);
  v7 = *(v39 + 64);
  v8 = MEMORY[0x28223BE20](v6 - 8);
  v40 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v42 = &v35 - v10;
  v11 = objc_allocWithZone(MEMORY[0x277CBE428]);

  v12 = sub_22F740DF0();

  v13 = [v11 initWithEntityName_];

  [v13 setPredicate_];
  v43[0] = 0;
  v14 = [v13 execute_];
  v15 = v43[0];
  if (!v14)
  {
    v19 = v43[0];
    sub_22F73F370();

    swift_willThrow();
    goto LABEL_24;
  }

  v16 = v14;
  type metadata accessor for MemoryDisplaySongEntry();
  v17 = sub_22F741180();
  v18 = v15;

  sub_22F7416A0();
  if (!v4)
  {
    if (v17 >> 62)
    {
      goto LABEL_22;
    }

    for (i = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_22F741A00())
    {
      v21 = 0;
      v37 = v17 & 0xFFFFFFFFFFFFFF8;
      v38 = v17 & 0xC000000000000001;
      v36 = v13;
      while (v38)
      {
        v23 = v17;
        v24 = MEMORY[0x2319016F0](v21, v17);
        v22 = v42;
        v17 = v21 + 1;
        if (__OFADD__(v21, 1))
        {
          goto LABEL_20;
        }

LABEL_11:
        sub_22F3C428C(v22);
        sub_22F15CAA0(v22, v40);
        v25 = v41;
        v26 = *v41;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *v25 = v26;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v26 = sub_22F13E558(0, v26[2] + 1, 1, v26);
          *v41 = v26;
        }

        v29 = v26[2];
        v28 = v26[3];
        if (v29 >= v28 >> 1)
        {
          v33 = sub_22F13E558(v28 > 1, v29 + 1, 1, v26);
          *v41 = v33;
        }

        sub_22F15CBD8(v42);
        v30 = v40;
        v31 = *v41;
        *(v31 + 16) = v29 + 1;
        sub_22F15CB04(v30, v31 + ((*(v39 + 80) + 32) & ~*(v39 + 80)) + *(v39 + 72) * v29);
        ++v21;
        v32 = v17 == i;
        v13 = v36;
        v17 = v23;
        if (v32)
        {
          goto LABEL_23;
        }
      }

      v22 = v42;
      if (v21 >= *(v37 + 16))
      {
        goto LABEL_21;
      }

      v23 = v17;
      v24 = *(v17 + 8 * v21 + 32);
      v17 = v21 + 1;
      if (!__OFADD__(v21, 1))
      {
        goto LABEL_11;
      }

LABEL_20:
      __break(1u);
LABEL_21:
      __break(1u);
LABEL_22:
      ;
    }

LABEL_23:

    sub_22F7416A0();
LABEL_24:

    goto LABEL_25;
  }

LABEL_25:
  v34 = *MEMORY[0x277D85DE8];
}

void sub_22F2DBC40()
{
  v1 = v0[5];
  v2 = v0[6];
  sub_22F2DB520(v0[2], v0[3], v0[4]);
}

uint64_t sub_22F2DBC84(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB3328, &qword_22F783030);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_22F2DBD2C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC11PhotosGraph18RecentSocialGroups_triggerResults;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
}

uint64_t sub_22F2DBD94()
{
  v1 = OBJC_IVAR____TtC11PhotosGraph18RecentSocialGroups_triggerResults;
  swift_beginAccess();
  v2 = *(v0 + v1);
}

uint64_t sub_22F2DBDDC(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC11PhotosGraph18RecentSocialGroups_triggerResults;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t sub_22F2DBE94()
{
  v1 = OBJC_IVAR____TtC11PhotosGraph18RecentSocialGroups_supportsFutureLookup;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_22F2DBED8(char a1)
{
  v3 = OBJC_IVAR____TtC11PhotosGraph18RecentSocialGroups_supportsFutureLookup;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_22F2DBF88(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC11PhotosGraph18RecentSocialGroups_futureLookupResults;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
}

uint64_t sub_22F2DBFF0()
{
  v1 = OBJC_IVAR____TtC11PhotosGraph18RecentSocialGroups_futureLookupResults;
  swift_beginAccess();
  v2 = *(v0 + v1);
}

uint64_t sub_22F2DC038(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC11PhotosGraph18RecentSocialGroups_futureLookupResults;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

unint64_t sub_22F2DC0F0(unsigned __int8 *a1, uint64_t *a2)
{
  v3 = v2;
  v92 = *v3;
  v85 = sub_22F740460();
  v84 = *(v85 - 8);
  v6 = *(v84 + 64);
  MEMORY[0x28223BE20](v85);
  v83 = &v80 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0920, &qword_22F770B20);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v80 - v10;
  v12 = sub_22F740560();
  v89 = *(v12 - 8);
  v90 = v12;
  v13 = *(v89 + 64);
  MEMORY[0x28223BE20](v12);
  v91 = &v80 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_22F73F990();
  v87 = *(v15 - 8);
  v88 = v15;
  v16 = *(v87 + 64);
  MEMORY[0x28223BE20](v15);
  v86 = &v80 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v98 = sub_22F73F9B0();
  v95 = *(v98 - 8);
  v18 = *(v95 + 64);
  MEMORY[0x28223BE20](v98);
  v20 = &v80 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v101 = sub_22F73F690();
  v99 = *(v101 - 8);
  v21 = v99[8];
  MEMORY[0x28223BE20](v101);
  v23 = &v80 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB40E0, &unk_22F779200);
  v25 = *(*(v24 - 8) + 64);
  MEMORY[0x28223BE20](v24 - 8);
  v27 = &v80 - v26;
  v28 = sub_22F73F090();
  v96 = *(v28 - 8);
  v97 = v28;
  v29 = *(v96 + 64);
  MEMORY[0x28223BE20](v28);
  v100 = &v80 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v94 = *a1;
  *(v3 + 16) = 1;
  sub_22F740B80();
  *(v3 + OBJC_IVAR____TtC11PhotosGraph18RecentSocialGroups_supportsFutureLookup) = 0;
  *(v3 + OBJC_IVAR____TtC11PhotosGraph18RecentSocialGroups_futureLookupResults) = 0;
  v82 = OBJC_IVAR____TtC11PhotosGraph18RecentSocialGroups_triggerResults;
  *(v3 + OBJC_IVAR____TtC11PhotosGraph18RecentSocialGroups_triggerResults) = MEMORY[0x277D84F90];
  v31 = a2[3];
  v32 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v31);
  v33 = (*(v32 + 16))(v31, v32);
  v102 = a2;
  if (!v33)
  {
    v37 = sub_22F740B70();
    v38 = sub_22F7415C0();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      v103 = v40;
      *v39 = 136315138;
      v41 = sub_22F742240();
      v43 = sub_22F145F20(v41, v42, &v103);

      *(v39 + 4) = v43;
      _os_log_impl(&dword_22F0FC000, v37, v38, "GraphWorkingContext not available. Skipping %s trigger", v39, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v40);
      MEMORY[0x2319033A0](v40, -1, -1);
      MEMORY[0x2319033A0](v39, -1, -1);
    }

    v36 = v102;
    goto LABEL_21;
  }

  v93 = v33;
  v81 = v3;
  v34 = a2[3];
  v35 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v34);
  (*(v35 + 8))(v34, v35);
  sub_22F73F970();
  v36 = a2;
  if (v94)
  {
    sub_22F73F890();
  }

  else
  {
    v45 = v86;
    v44 = v87;
    v46 = v88;
    (*(v87 + 104))(v86, *MEMORY[0x277CC9940], v88);
    sub_22F73F8C0();
    (*(v44 + 8))(v45, v46);
  }

  v48 = v96;
  v47 = v97;
  v49 = v99;
  (*(v95 + 8))(v20, v98);
  (v49[1])(v23, v101);
  if ((*(v48 + 48))(v27, 1, v47) == 1)
  {

    sub_22F120ADC(v27, &qword_27DAB40E0, &unk_22F779200);
    v3 = v81;
LABEL_21:
    __swift_destroy_boxed_opaque_existential_0(v36);
    return v3;
  }

  v50 = v100;
  (*(v48 + 32))(v100, v27, v47);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0E68, &qword_22F771210);
  v51 = *(v48 + 72);
  v52 = (*(v48 + 80) + 32) & ~*(v48 + 80);
  v53 = swift_allocObject();
  *(v53 + 16) = xmmword_22F771340;
  v54 = (*(v48 + 16))(v53 + v52, v50, v47);
  MEMORY[0x28223BE20](v54);
  v55 = v93;
  *(&v80 - 2) = v53;
  *(&v80 - 1) = v55;
  sub_22F2A1FCC(sub_22F2DD0BC, (&v80 - 4));

  v36 = v102;
  v56 = v102[3];
  v57 = v102[4];
  __swift_project_boxed_opaque_existential_1(v102, v56);
  (*(v57 + 24))(v56, v57);
  (*(v89 + 104))(v91, *MEMORY[0x277D3C570], v90);
  v58 = sub_22F740570();
  v59 = *(v58 + 48);
  v60 = *(v58 + 52);
  swift_allocObject();
  v61 = sub_22F740550();
  sub_22F740230();
  v62 = sub_22F740210();

  v104 = MEMORY[0x277D84F90];
  v99 = v62;
  result = [v62 count];
  if ((result & 0x8000000000000000) == 0)
  {
    v64 = result;
    v95 = v61;
    if (result)
    {
      v65 = 0;
      v98 = MEMORY[0x277D84F90];
      v66 = (v49 + 7);
      do
      {
        v67 = objc_autoreleasePoolPush();
        v68 = [v99 objectAtIndexedSubscript_];
        v70 = v36[3];
        v69 = v36[4];
        __swift_project_boxed_opaque_existential_1(v36, v70);
        sub_22F73F060();
        (*v66)(v11, 0, 1, v101);
        v71 = CurationPlannerContext.isValidSocialGroupForElection(_:after:)(v68, v11, v70, v69);
        sub_22F120ADC(v11, &qword_27DAB0920, &qword_22F770B20);
        if (v71)
        {
          v72 = v68;
          MEMORY[0x231900D00]();
          v36 = v102;
          if (*((v104 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v104 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            v73 = *((v104 & 0xFFFFFFFFFFFFFF8) + 0x10);
            sub_22F7411C0();
            v36 = v102;
          }

          sub_22F741220();

          v98 = v104;
        }

        else
        {

          v36 = v102;
        }

        ++v65;
        objc_autoreleasePoolPop(v67);
      }

      while (v64 != v65);
    }

    else
    {
      v98 = MEMORY[0x277D84F90];
    }

    v74 = v84;
    v75 = v83;
    v76 = v85;
    (*(v84 + 104))(v83, *MEMORY[0x277D3C438], v85);
    v77 = static CollectionTrigger.generateTriggerResults(from:type:)(v98, v75);

    (*(v74 + 8))(v75, v76);
    (*(v96 + 8))(v100, v97);
    v3 = v81;
    v78 = v82;
    swift_beginAccess();
    v79 = *(v3 + v78);
    *(v3 + v78) = v77;

    goto LABEL_21;
  }

  __break(1u);
  return result;
}

uint64_t RecentSocialGroups.deinit()
{
  v1 = OBJC_IVAR____TtC11PhotosGraph18RecentSocialGroups_logger;
  v2 = sub_22F740B90();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC11PhotosGraph18RecentSocialGroups_triggerResults);

  v4 = *(v0 + OBJC_IVAR____TtC11PhotosGraph18RecentSocialGroups_futureLookupResults);

  return v0;
}

uint64_t RecentSocialGroups.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC11PhotosGraph18RecentSocialGroups_logger;
  v2 = sub_22F740B90();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC11PhotosGraph18RecentSocialGroups_triggerResults);

  v4 = *(v0 + OBJC_IVAR____TtC11PhotosGraph18RecentSocialGroups_futureLookupResults);

  v5 = *(*v0 + 48);
  v6 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_22F2DCD04()
{
  v1 = *v0;
  v2 = OBJC_IVAR____TtC11PhotosGraph18RecentSocialGroups_triggerResults;
  swift_beginAccess();
  v3 = *(v1 + v2);
}

uint64_t sub_22F2DCD50()
{
  v1 = *v0;
  v2 = OBJC_IVAR____TtC11PhotosGraph18RecentSocialGroups_supportsFutureLookup;
  swift_beginAccess();
  return *(v1 + v2);
}

uint64_t sub_22F2DCD98()
{
  v1 = *v0;
  v2 = OBJC_IVAR____TtC11PhotosGraph18RecentSocialGroups_futureLookupResults;
  swift_beginAccess();
  v3 = *(v1 + v2);
}

uint64_t type metadata accessor for RecentSocialGroups()
{
  result = qword_2810AB0E8;
  if (!qword_2810AB0E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_22F2DCE38()
{
  result = sub_22F740B90();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_22F2DD0C4(uint64_t a1)
{
  v2 = sub_22F2DFE3C();

  return MEMORY[0x28211F4B8](a1, v2);
}

uint64_t sub_22F2DD100(uint64_t a1)
{
  v2 = sub_22F2DFE3C();

  return MEMORY[0x28211F4A8](a1, v2);
}

uint64_t sub_22F2DD160(uint64_t a1)
{
  v2 = sub_22F2DFF40();

  return MEMORY[0x28219CB78](a1, v2);
}

id static SocialGroupCuration.selectKeyFace(for:curationManager:curationContext:)(void *a1, void *a2, void *a3)
{
  if (qword_2810A9BB0 != -1)
  {
    swift_once();
  }

  v6 = qword_2810B4E80;
  *&v7 = CACurrentMediaTime();
  sub_22F1B560C("SocialGroupHelper.selectKeyFace", 31, 2u, v7, 0, v6, v43);
  v8 = objc_autoreleasePoolPush();
  v9 = [a3 photoLibrary];
  sub_22F2DE254(a1, v9);
  v11 = v10;
  v13 = v12;

  if (v13 >> 62)
  {
    if (sub_22F741A00() >= 1)
    {
      goto LABEL_5;
    }
  }

  else if (*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 1)
  {
LABEL_5:
    v14 = objc_opt_self();
    sub_22F120634(0, &qword_2810A8EE0, 0x277CD97A8);
    v15 = sub_22F741160();
    [v14 prefetchOnAssets:v15 options:13 curationContext:a3];

    v16 = [a3 curationSession];
    v17 = sub_22F741160();
    [v16 prepareAssets_];

    v18 = sub_22F741160();

    sub_22F1515F8(v19);

    v20 = sub_22F741410();

    v21 = *(v11 + 16);

    LOBYTE(v41) = 1;
    v22 = [a2 bestAssetInAssets:v18 forReferencePersonLocalIdentifiers:v20 requiredMinimumNumberOfReferencePersons:v21 forMemories:1 forSocialGroup:1 allowGuestAsset:1 wantsGoodSquareCropScore:v41];

    goto LABEL_8;
  }

  v22 = 0;
LABEL_8:
  objc_autoreleasePoolPop(v8);
  if (qword_2810A9450 != -1)
  {
    swift_once();
  }

  v23 = sub_22F740B90();
  __swift_project_value_buffer(v23, qword_2810B4D78);
  v24 = a1;
  v25 = sub_22F740B70();
  v26 = sub_22F7415F0();

  if (os_log_type_enabled(v25, v26))
  {
    v27 = 1701736302;
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v42 = v29;
    *v28 = 136315394;
    if (v22 && (v30 = [v22 uuid]) != 0)
    {
      v31 = v30;
      v27 = sub_22F740E20();
      v33 = v32;
    }

    else
    {
      v33 = 0xE400000000000000;
    }

    v34 = sub_22F145F20(v27, v33, &v42);

    *(v28 + 4) = v34;
    *(v28 + 12) = 2080;
    v35 = [v24 localIdentifier];
    v36 = sub_22F740E20();
    v38 = v37;

    v39 = sub_22F145F20(v36, v38, &v42);

    *(v28 + 14) = v39;
    _os_log_impl(&dword_22F0FC000, v25, v26, "[keyAsset] selected %s for social group %s", v28, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x2319033A0](v29, -1, -1);
    MEMORY[0x2319033A0](v28, -1, -1);
  }

  sub_22F1B2BBC(v22 == 0);

  return v22;
}

void static SocialGroupCuration.keyAssetUUIDOfSocialGroup(with:candidateAssetUUIDs:photoLibrary:)(uint64_t a1, uint64_t a2, void *a3)
{
  v67 = sub_22F73F470();
  v6 = *(v67 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v67);
  v9 = &v62 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = [objc_opt_self() graphServicesURLWithPhotoLibrary_];
  sub_22F73F430();

  v11 = objc_allocWithZone(PGCurationManager);
  v66 = v9;
  v12 = sub_22F73F3F0();
  v13 = [v11 initWithPhotoLibrary:a3 cacheURL:v12];

  v14 = [objc_allocWithZone(MEMORY[0x277D3C790]) initWithPhotoLibrary_];
  sub_22F120634(0, &qword_2810A8EA0, 0x277CD9938);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v65 = a1;
  v16 = sub_22F741410();
  v17 = [ObjCClassFromMetadata localIdentifiersWithUUIDs_];

  if (!v17)
  {
    __break(1u);
    goto LABEL_32;
  }

  v18 = sub_22F741420();

  v19 = *(v18 + 16);
  v69 = v14;
  if (v19)
  {
    v20 = sub_22F10B348(v19, 0);
    v21 = sub_22F11A438(v68, v20 + 4, v19, v18);
    sub_22F1534EC();
    if (v21 == v19)
    {
      goto LABEL_6;
    }

    __break(1u);
  }

LABEL_6:
  v22 = objc_opt_self();
  v23 = sub_22F741160();

  v24 = [a3 librarySpecificFetchOptions];
  v25 = [v22 fetchPersonsWithLocalIdentifiers:v23 options:v24];

  v26 = [v25 fetchedObjects];
  if (!v26)
  {
    v28 = v13;
    if (qword_2810A9450 == -1)
    {
LABEL_11:
      v31 = sub_22F740B90();
      __swift_project_value_buffer(v31, qword_2810B4D78);

      v32 = sub_22F740B70();
      v33 = sub_22F7415E0();

      if (os_log_type_enabled(v32, v33))
      {
        v34 = swift_slowAlloc();
        v35 = swift_slowAlloc();
        v68[0] = v35;
        *v34 = 136315138;
        v36 = sub_22F741430();
        v38 = sub_22F145F20(v36, v37, v68);

        *(v34 + 4) = v38;
        _os_log_impl(&dword_22F0FC000, v32, v33, "Failed to fetch persons with identifiers: %s", v34, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v35);
        MEMORY[0x2319033A0](v35, -1, -1);
        MEMORY[0x2319033A0](v34, -1, -1);
      }

      v39 = v66;
      v40 = v69;
      goto LABEL_28;
    }

LABEL_30:
    swift_once();
    goto LABEL_11;
  }

  v27 = sub_22F741180();

  v28 = *(a2 + 16);
  if (!v28)
  {
    goto LABEL_14;
  }

  v63 = v13;
  v64 = v6;
  v29 = sub_22F10B348(v28, 0);
  v30 = sub_22F11A438(v68, v29 + 4, v28, a2);
  v6 = v68[4];

  sub_22F1534EC();
  if (v30 != v28)
  {
    __break(1u);
    goto LABEL_30;
  }

  v13 = v63;
  v6 = v64;
LABEL_14:
  v41 = objc_opt_self();
  v42 = sub_22F741160();

  v43 = [a3 librarySpecificFetchOptions];
  v44 = [v41 fetchAssetsWithUUIDs:v42 options:v43];

  if (v44)
  {
    v45 = [v44 fetchedObjects];

    v40 = v69;
    if (v45)
    {
      sub_22F120634(0, &qword_2810A8EE0, 0x277CD97A8);
      v46 = sub_22F741180();

      v47 = _s11PhotosGraph19SocialGroupCurationC14selectKeyAsset3for15containedAssets15curationManager0L7ContextSo7PHAssetCSgSaySo8PHPersonCG_SayAJGSo010PGCurationM0CSo011CLSCurationN0CtFZ_0(v27, v46, v13, v40);

      if (v47)
      {
        v48 = [v47 pl_uuid];
        sub_22F740E20();

        (*(v6 + 8))(v66, v67);
        return;
      }

      v28 = v13;
      if (qword_2810A9450 != -1)
      {
        swift_once();
      }

      v58 = sub_22F740B90();
      __swift_project_value_buffer(v58, qword_2810B4D78);

      v50 = sub_22F740B70();
      v51 = sub_22F7415E0();

      if (!os_log_type_enabled(v50, v51))
      {
        goto LABEL_27;
      }

      v52 = swift_slowAlloc();
      v53 = swift_slowAlloc();
      v68[0] = v53;
      *v52 = 136315138;
      v59 = sub_22F741430();
      v61 = sub_22F145F20(v59, v60, v68);
      v40 = v69;

      *(v52 + 4) = v61;
      v57 = "No key asset candidate for social group with personUUIDs: %s";
    }

    else
    {
      v28 = v13;

      if (qword_2810A9450 != -1)
      {
        swift_once();
      }

      v49 = sub_22F740B90();
      __swift_project_value_buffer(v49, qword_2810B4D78);

      v50 = sub_22F740B70();
      v51 = sub_22F7415E0();

      if (!os_log_type_enabled(v50, v51))
      {
        goto LABEL_27;
      }

      v52 = swift_slowAlloc();
      v53 = swift_slowAlloc();
      v68[0] = v53;
      *v52 = 136315138;
      v54 = sub_22F741430();
      v56 = sub_22F145F20(v54, v55, v68);
      v40 = v69;

      *(v52 + 4) = v56;
      v57 = "Failed to fetch candidate assets for persons with identifiers: %s";
    }

    _os_log_impl(&dword_22F0FC000, v50, v51, v57, v52, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v53);
    MEMORY[0x2319033A0](v53, -1, -1);
    MEMORY[0x2319033A0](v52, -1, -1);
LABEL_27:

    v39 = v66;
LABEL_28:
    sub_22F2DECDC();
    swift_allocError();
    swift_willThrow();

    (*(v6 + 8))(v39, v67);
    return;
  }

LABEL_32:
  __break(1u);
}

id SocialGroupCuration.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id SocialGroupCuration.init()()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_init);
}

id SocialGroupCuration.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_22F2DDF84(void *a1, uint64_t a2, char a3)
{
  result = [a1 photoLibrary];
  if (result)
  {
    v7 = result;
    v8 = [result librarySpecificFetchOptions];

    v9 = [objc_opt_self() assetPropertySetsForCuration];
    if (!v9)
    {
      sub_22F741180();
      v9 = sub_22F741160();
    }

    [v8 setFetchPropertySets_];

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB13D0, &qword_22F7717F0);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_22F771350;
    v11 = objc_allocWithZone(MEMORY[0x277CCAC98]);
    v12 = sub_22F740DF0();
    v13 = [v11 initWithKey:v12 ascending:0];

    *(v10 + 32) = v13;
    v14 = objc_allocWithZone(MEMORY[0x277CCAC98]);
    v15 = sub_22F740DF0();
    v16 = [v14 initWithKey:v15 ascending:1];

    *(v10 + 40) = v16;
    sub_22F120634(0, &qword_2810A9138, 0x277CCAC98);
    v17 = sub_22F741160();

    [v8 setSortDescriptors_];

    [v8 setFetchLimit_];
    v18 = swift_allocObject();
    *(v18 + 16) = xmmword_22F771EB0;
    *(v18 + 32) = [a1 exclusiveAssetInternalPredicateWithPeopleCount:a2 exactCount:a3 & 1];
    sub_22F120634(0, &qword_2810A91E0, 0x277CCAC30);
    v19 = sub_22F741160();

    v20 = [objc_opt_self() andPredicateWithSubpredicates_];

    [v8 setInternalPredicate_];
    return v8;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_22F2DE254(void *a1, id a2)
{
  v3 = [a2 librarySpecificFetchOptions];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAB1110, &unk_22F771270);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22F771340;
  v5 = *MEMORY[0x277CD9C60];
  *(v4 + 32) = sub_22F740E20();
  *(v4 + 40) = v6;
  v7 = sub_22F741160();

  [v3 setFetchPropertySets_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB13D0, &qword_22F7717F0);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_22F771350;
  *(v8 + 32) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithShort_];
  *(v8 + 40) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithShort_];
  sub_22F120634(0, &qword_2810A8ED0, 0x277CCABB0);
  v9 = sub_22F741160();

  [v3 setIncludedDetectionTypes_];

  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_22F782F40;
  v11 = objc_allocWithZone(MEMORY[0x277CCAC98]);
  v12 = sub_22F740DF0();
  v13 = [v11 initWithKey:v12 ascending:1];

  *(v10 + 32) = v13;
  v14 = objc_allocWithZone(MEMORY[0x277CCAC98]);
  v15 = sub_22F740DF0();
  v16 = [v14 initWithKey:v15 ascending:0];

  *(v10 + 40) = v16;
  v17 = objc_allocWithZone(MEMORY[0x277CCAC98]);
  v18 = sub_22F740DF0();
  v19 = [v17 initWithKey:v18 ascending:1];

  *(v10 + 48) = v19;
  sub_22F120634(0, &qword_2810A9138, 0x277CCAC98);
  v20 = sub_22F741160();

  [v3 setSortDescriptors_];

  v21 = [objc_opt_self() fetchPersonsInSocialGroup:a1 option:v3];
  v22 = [v21 fetchedObjects];
  if (!v22)
  {
    goto LABEL_34;
  }

  v23 = v22;
  sub_22F120634(0, &qword_2810A8EA0, 0x277CD9938);
  v24 = sub_22F741180();
  v25 = v24;
  v26 = v24 >> 62;
  if (!(v24 >> 62))
  {
    v27 = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v27 >= 1)
    {
      goto LABEL_4;
    }

    goto LABEL_33;
  }

  v27 = sub_22F741A00();
  if (v27 < 1)
  {
LABEL_33:

LABEL_34:
    if (qword_2810A9450 != -1)
    {
      swift_once();
    }

    v72 = sub_22F740B90();
    __swift_project_value_buffer(v72, qword_2810B4D78);
    v73 = a1;
    v47 = sub_22F740B70();
    v74 = sub_22F7415E0();

    if (os_log_type_enabled(v47, v74))
    {
      v75 = swift_slowAlloc();
      v76 = swift_slowAlloc();
      v87 = v76;
      *v75 = 136315138;
      v77 = [v73 localIdentifier];
      v78 = sub_22F740E20();
      v80 = v79;

      v81 = sub_22F145F20(v78, v80, &v87);

      *(v75 + 4) = v81;
      _os_log_impl(&dword_22F0FC000, v47, v74, "[keyAsset] No members for social group %s", v75, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v76);
      MEMORY[0x2319033A0](v76, -1, -1);
      MEMORY[0x2319033A0](v75, -1, -1);

      return;
    }

    goto LABEL_39;
  }

LABEL_4:
  v83 = v26;
  v85 = v3;
  v28 = sub_22F2DDF84(a1, v27, 1);
  v29 = objc_opt_self();
  v86 = v28;
  v30 = [v29 fetchAssetsContainingAllPersons:v23 options:v28];
  if (!v30)
  {

    __break(1u);
    goto LABEL_42;
  }

  v31 = v30;
  if ([v30 count])
  {
    goto LABEL_8;
  }

  v32 = sub_22F2DDF84(a1, v27, 0);

  v33 = [v29 fetchAssetsContainingAllPersons:v23 options:v32];
  if (!v33)
  {
LABEL_42:
    __break(1u);
    return;
  }

  v23 = v31;
  v86 = v32;
  v31 = v33;
LABEL_8:

  v84 = v31;
  v34 = [v31 fetchedObjects];
  if (!v34)
  {

    if (qword_2810A9450 != -1)
    {
      swift_once();
    }

    v45 = sub_22F740B90();
    __swift_project_value_buffer(v45, qword_2810B4D78);
    v46 = a1;
    v47 = sub_22F740B70();
    v48 = sub_22F7415E0();

    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      v50 = swift_slowAlloc();
      v87 = v50;
      *v49 = 136315138;
      v51 = [v46 localIdentifier];
      v52 = sub_22F740E20();
      v54 = v53;

      v55 = sub_22F145F20(v52, v54, &v87);

      *(v49 + 4) = v55;
      _os_log_impl(&dword_22F0FC000, v47, v48, "[keyAsset] No candidate assets for social group %s", v49, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v50);
      MEMORY[0x2319033A0](v50, -1, -1);
      MEMORY[0x2319033A0](v49, -1, -1);

      return;
    }

LABEL_39:
    return;
  }

  v35 = v34;
  sub_22F120634(0, &qword_2810A8EE0, 0x277CD97A8);
  v36 = sub_22F741180();

  if (qword_2810A9450 != -1)
  {
    swift_once();
  }

  v37 = sub_22F740B90();
  __swift_project_value_buffer(v37, qword_2810B4D78);

  v38 = v21;
  v39 = a1;
  v40 = sub_22F740B70();
  v41 = sub_22F7415F0();

  if (os_log_type_enabled(v40, v41))
  {
    v42 = swift_slowAlloc();
    v82 = swift_slowAlloc();
    v87 = v82;
    *v42 = 134218754;
    if (v36 >> 62)
    {
      v43 = sub_22F741A00();
    }

    else
    {
      v43 = *((v36 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v42 + 4) = v43;

    *(v42 + 12) = 2048;
    if (v83)
    {
      v44 = sub_22F741A00();
    }

    else
    {
      v44 = *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v42 + 14) = v44;

    *(v42 + 22) = 2048;
    *(v42 + 24) = [v38 count];

    *(v42 + 32) = 2080;
    v56 = [v39 localIdentifier];
    v57 = sub_22F740E20();
    v59 = v58;

    v60 = sub_22F145F20(v57, v59, &v87);

    *(v42 + 34) = v60;
    _os_log_impl(&dword_22F0FC000, v40, v41, "[keyAsset] Found %ld candidates with %ld/%ld members for %s", v42, 0x2Au);
    __swift_destroy_boxed_opaque_existential_0(v82);
    MEMORY[0x2319033A0](v82, -1, -1);
    MEMORY[0x2319033A0](v42, -1, -1);
  }

  else
  {
  }

  v87 = MEMORY[0x277D84F90];
  sub_22F146454(0, v27, 0);
  v61 = 0;
  v62 = v87;
  do
  {
    if ((v25 & 0xC000000000000001) != 0)
    {
      v63 = MEMORY[0x2319016F0](v61, v25);
    }

    else
    {
      v63 = *(v25 + 8 * v61 + 32);
    }

    v64 = v63;
    v65 = [v63 localIdentifier];
    v66 = sub_22F740E20();
    v68 = v67;

    v87 = v62;
    v70 = *(v62 + 16);
    v69 = *(v62 + 24);
    if (v70 >= v69 >> 1)
    {
      sub_22F146454((v69 > 1), v70 + 1, 1);
      v62 = v87;
    }

    ++v61;
    *(v62 + 16) = v70 + 1;
    v71 = v62 + 16 * v70;
    *(v71 + 32) = v66;
    *(v71 + 40) = v68;
  }

  while (v27 != v61);
}

unint64_t sub_22F2DECDC()
{
  result = qword_27DAB3338;
  if (!qword_27DAB3338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB3338);
  }

  return result;
}

uint64_t sub_22F2DED30(uint64_t a1, uint64_t a2)
{
  sub_22F120634(0, &qword_2810A91E0, 0x277CCAC30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB11A0, &qword_22F772940);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_22F770DF0;
  *(v3 + 56) = MEMORY[0x277D837D0];
  v4 = sub_22F153470();
  strcpy((v3 + 32), "detectedFaces");
  *(v3 + 46) = -4864;
  v5 = MEMORY[0x277D83C10];
  *(v3 + 96) = MEMORY[0x277D83B88];
  *(v3 + 104) = v5;
  *(v3 + 64) = v4;
  *(v3 + 72) = a2;
  return sub_22F741560();
}

id sub_22F2DEE2C(unint64_t a1, char a2, id a3, unint64_t a4)
{
  LOBYTE(v5) = a2;
  v7 = [a3 librarySpecificFetchOptions];
  v8 = [objc_opt_self() assetPropertySetsForCuration];
  if (!v8)
  {
    sub_22F741180();
    v8 = sub_22F741160();
  }

  [v7 setFetchPropertySets_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB13D0, &qword_22F7717F0);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_22F771350;
  v10 = objc_allocWithZone(MEMORY[0x277CCAC98]);
  v11 = sub_22F740DF0();
  v12 = [v10 initWithKey:v11 ascending:0];

  *(v9 + 32) = v12;
  v13 = objc_allocWithZone(MEMORY[0x277CCAC98]);
  v14 = sub_22F740DF0();
  v15 = [v13 initWithKey:v14 ascending:1];

  *(v9 + 40) = v15;
  sub_22F120634(0, &qword_2810A9138, 0x277CCAC98);
  v16 = sub_22F741160();

  [v7 setSortDescriptors_];

  [v7 setFetchLimit_];
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_22F771350;
  if (a1 >> 62)
  {
LABEL_25:
    v18 = sub_22F741A00();
  }

  else
  {
    v18 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v37 = v17;
  *(v17 + 32) = sub_22F2DED30(v5 & 1, v18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB11A0, &qword_22F772940);
  v36 = swift_allocObject();
  *(v36 + 16) = xmmword_22F771340;
  v17 = a4 & 0xFFFFFFFFFFFFFF8;
  if (!(a4 >> 62))
  {
    v19 = *((a4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v19)
    {
      goto LABEL_7;
    }

LABEL_27:
    v20 = MEMORY[0x277D84F90];
    goto LABEL_28;
  }

  v19 = sub_22F741A00();
  if (!v19)
  {
    goto LABEL_27;
  }

LABEL_7:
  v5 = 0;
  v20 = MEMORY[0x277D84F90];
  do
  {
    v21 = v5;
    while (1)
    {
      if ((a4 & 0xC000000000000001) != 0)
      {
        v22 = MEMORY[0x2319016F0](v21, a4);
      }

      else
      {
        if (v21 >= *((a4 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_24;
        }

        v22 = *(a4 + 8 * v21 + 32);
      }

      v23 = v22;
      v5 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
LABEL_24:
        __break(1u);
        goto LABEL_25;
      }

      v24 = [v22 uuid];
      if (v24)
      {
        break;
      }

      ++v21;
      if (v5 == v19)
      {
        goto LABEL_28;
      }
    }

    v35 = v7;
    v25 = v24;
    v26 = sub_22F740E20();
    v34 = v27;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v20 = sub_22F13E1A8(0, *(v20 + 2) + 1, 1, v20);
    }

    v29 = *(v20 + 2);
    v28 = *(v20 + 3);
    if (v29 >= v28 >> 1)
    {
      v20 = sub_22F13E1A8((v28 > 1), v29 + 1, 1, v20);
    }

    *(v20 + 2) = v29 + 1;
    v30 = &v20[16 * v29];
    v7 = v35;
    *(v30 + 4) = v26;
    *(v30 + 5) = v34;
  }

  while (v5 != v19);
LABEL_28:
  sub_22F120634(0, &qword_2810A91E0, 0x277CCAC30);
  *(v36 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0E90, &qword_22F7714A0);
  *(v36 + 64) = sub_22F25F050();
  *(v36 + 32) = v20;
  *(v37 + 40) = sub_22F741560();
  v31 = sub_22F741160();

  v32 = [objc_opt_self() andPredicateWithSubpredicates_];

  [v7 setInternalPredicate_];
  return v7;
}

void sub_22F2DF2C4(unint64_t a1, unint64_t a2, void *a3)
{
  v6 = sub_22F2DEE2C(a1, 1, a3, a2);
  v7 = objc_opt_self();
  v8 = sub_22F120634(0, &qword_2810A8EA0, 0x277CD9938);
  v9 = v6;
  v10 = sub_22F741160();
  v11 = [v7 fetchAssetsContainingAllPersons:v10 options:v9];

  if (!v11)
  {
    __break(1u);
    goto LABEL_37;
  }

  if ([v11 count])
  {
    goto LABEL_5;
  }

  v12 = sub_22F2DEE2C(a1, 0, a3, a2);

  v9 = v12;
  v13 = sub_22F741160();
  v14 = [v7 fetchAssetsContainingAllPersons:v13 options:v9];

  if (!v14)
  {
LABEL_37:
    __break(1u);
    return;
  }

  v11 = v14;
LABEL_5:
  v15 = [v11 fetchedObjects];
  if (v15)
  {
    v16 = v15;
    sub_22F120634(0, &qword_2810A8EE0, 0x277CD97A8);
    v8 = sub_22F741180();

    if (qword_2810A9450 != -1)
    {
      swift_once();
    }

    v17 = sub_22F740B90();
    __swift_project_value_buffer(v17, qword_2810B4D78);

    v18 = sub_22F740B70();
    v19 = sub_22F7415F0();
    v20 = a1 >> 62;
    if (os_log_type_enabled(v18, v19))
    {
      v21 = swift_slowAlloc();
      *v21 = 134218496;
      if (v8 >> 62)
      {
        v22 = sub_22F741A00();
      }

      else
      {
        v22 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      *(v21 + 4) = v22;

      *(v21 + 12) = 2048;
      if (v20)
      {
        *(v21 + 14) = sub_22F741A00();
        *(v21 + 22) = 2048;
        v23 = sub_22F741A00();
      }

      else
      {
        v23 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
        *(v21 + 14) = v23;
        *(v21 + 22) = 2048;
      }

      *(v21 + 24) = v23;

      _os_log_impl(&dword_22F0FC000, v18, v19, "[keyAsset] Found %ld candidates with %ld/%ld members", v21, 0x20u);
      MEMORY[0x2319033A0](v21, -1, -1);
    }

    else
    {
    }

    if (v20)
    {
      v32 = sub_22F741A00();
      if (v32)
      {
        goto LABEL_21;
      }
    }

    else
    {
      v32 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v32)
      {
LABEL_21:
        v47 = MEMORY[0x277D84F90];
        sub_22F146454(0, v32 & ~(v32 >> 63), 0);
        if ((v32 & 0x8000000000000000) == 0)
        {
          v44 = v8;
          v45 = v11;
          v46 = v9;
          v33 = 0;
          v34 = v47;
          do
          {
            if ((a1 & 0xC000000000000001) != 0)
            {
              v35 = MEMORY[0x2319016F0](v33, a1);
            }

            else
            {
              v35 = *(a1 + 8 * v33 + 32);
            }

            v36 = v35;
            v37 = [v35 localIdentifier];
            v38 = sub_22F740E20();
            v40 = v39;

            v47 = v34;
            v42 = *(v34 + 16);
            v41 = *(v34 + 24);
            if (v42 >= v41 >> 1)
            {
              sub_22F146454((v41 > 1), v42 + 1, 1);
              v34 = v47;
            }

            ++v33;
            *(v34 + 16) = v42 + 1;
            v43 = v34 + 16 * v42;
            *(v43 + 32) = v38;
            *(v43 + 40) = v40;
          }

          while (v32 != v33);

          return;
        }

        __break(1u);
        goto LABEL_33;
      }
    }

    return;
  }

  if (qword_2810A9450 != -1)
  {
LABEL_33:
    swift_once();
  }

  v24 = sub_22F740B90();
  __swift_project_value_buffer(v24, qword_2810B4D78);

  v25 = sub_22F740B70();
  v26 = sub_22F7415E0();

  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v47 = v28;
    *v27 = 136315138;
    v29 = MEMORY[0x231900D40](a1, v8);
    v31 = sub_22F145F20(v29, v30, &v47);

    *(v27 + 4) = v31;
    _os_log_impl(&dword_22F0FC000, v25, v26, "[keyAsset] No candidate assets for members %s", v27, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v28);
    MEMORY[0x2319033A0](v28, -1, -1);
    MEMORY[0x2319033A0](v27, -1, -1);
  }
}

id _s11PhotosGraph19SocialGroupCurationC14selectKeyAsset3for15containedAssets15curationManager0L7ContextSo7PHAssetCSgSaySo8PHPersonCG_SayAJGSo010PGCurationM0CSo011CLSCurationN0CtFZ_0(unint64_t a1, unint64_t a2, void *a3, void *a4)
{
  if (a1 >> 62)
  {
    if (sub_22F741A00())
    {
LABEL_3:
      if (qword_2810A9BB0 != -1)
      {
        swift_once();
      }

      v8 = qword_2810B4E80;
      *&v9 = CACurrentMediaTime();
      sub_22F1B560C("SocialGroupHelper.selectKeyFace", 31, 2u, v9, 0, v8, v52);
      v10 = objc_autoreleasePoolPush();
      v11 = [a4 photoLibrary];
      sub_22F2DF2C4(a1, a2, v11);
      v13 = v12;
      v15 = v14;

      if (v15 >> 62)
      {
        if (sub_22F741A00() >= 1)
        {
          goto LABEL_7;
        }
      }

      else if (*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 1)
      {
LABEL_7:
        v16 = objc_opt_self();
        sub_22F120634(0, &qword_2810A8EE0, 0x277CD97A8);
        v17 = sub_22F741160();
        [v16 prefetchOnAssets:v17 options:13 curationContext:a4];

        v18 = [a4 curationSession];
        v19 = sub_22F741160();
        [v18 prepareAssets_];

        v20 = sub_22F741160();

        sub_22F1515F8(v21);

        v22 = sub_22F741410();

        v23 = *(v13 + 16);

        LOBYTE(v50) = 1;
        v24 = [a3 bestAssetInAssets:v20 forReferencePersonLocalIdentifiers:v22 requiredMinimumNumberOfReferencePersons:v23 forMemories:1 forSocialGroup:1 allowGuestAsset:1 wantsGoodSquareCropScore:v50];

LABEL_16:
        objc_autoreleasePoolPop(v10);
        if (qword_2810A9450 != -1)
        {
          swift_once();
        }

        v34 = sub_22F740B90();
        __swift_project_value_buffer(v34, qword_2810B4D78);

        v35 = sub_22F740B70();
        v36 = sub_22F7415F0();

        if (os_log_type_enabled(v35, v36))
        {
          v37 = 1701736302;
          v38 = swift_slowAlloc();
          v39 = swift_slowAlloc();
          v51 = v39;
          *v38 = 136315394;
          if (v24 && (v40 = [v24 uuid]) != 0)
          {
            v41 = v40;
            v37 = sub_22F740E20();
            v43 = v42;
          }

          else
          {
            v43 = 0xE400000000000000;
          }

          v44 = sub_22F145F20(v37, v43, &v51);

          *(v38 + 4) = v44;
          *(v38 + 12) = 2080;
          v45 = sub_22F120634(0, &qword_2810A8EA0, 0x277CD9938);
          v46 = MEMORY[0x231900D40](a1, v45);
          v48 = sub_22F145F20(v46, v47, &v51);

          *(v38 + 14) = v48;
          _os_log_impl(&dword_22F0FC000, v35, v36, "[keyAsset] selected %s for the members %s", v38, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x2319033A0](v39, -1, -1);
          MEMORY[0x2319033A0](v38, -1, -1);
        }

        sub_22F1B2BBC(v24 == 0);

        return v24;
      }

      v24 = 0;
      goto LABEL_16;
    }
  }

  else if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_3;
  }

  if (qword_2810A9450 != -1)
  {
    swift_once();
  }

  v25 = sub_22F740B90();
  __swift_project_value_buffer(v25, qword_2810B4D78);

  v26 = sub_22F740B70();
  v27 = sub_22F7415F0();

  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v52[0] = v29;
    *v28 = 136315138;
    v30 = sub_22F120634(0, &qword_2810A8EA0, 0x277CD9938);
    v31 = MEMORY[0x231900D40](a1, v30);
    v33 = sub_22F145F20(v31, v32, v52);

    *(v28 + 4) = v33;
    _os_log_impl(&dword_22F0FC000, v26, v27, "[keyAsset] not selected as members array is empty %s", v28, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v29);
    MEMORY[0x2319033A0](v29, -1, -1);
    MEMORY[0x2319033A0](v28, -1, -1);
  }

  return 0;
}

unint64_t sub_22F2DFE3C()
{
  result = qword_27DAB3340;
  if (!qword_27DAB3340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB3340);
  }

  return result;
}

unint64_t sub_22F2DFE94()
{
  result = qword_27DAB3348;
  if (!qword_27DAB3348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB3348);
  }

  return result;
}

unint64_t sub_22F2DFEEC()
{
  result = qword_27DAB3350;
  if (!qword_27DAB3350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB3350);
  }

  return result;
}

unint64_t sub_22F2DFF40()
{
  result = qword_27DAB3358;
  if (!qword_27DAB3358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB3358);
  }

  return result;
}

id MusicCuration.__allocating_init(curatorVersion:bestMusicSuggestions:musicForYou:musicForLocation:musicForTime:musicForPerformer:musicCurationInfo:musicCurationDebugInfo:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t *a7, uint64_t *a8)
{
  v17 = objc_allocWithZone(v8);
  v18 = *a7;
  v19 = *a8;
  *&v17[OBJC_IVAR___PGMusicCuration_curatorVersion] = a1;
  *&v17[OBJC_IVAR___PGMusicCuration_bestMusicSuggestions] = a2;
  *&v17[OBJC_IVAR___PGMusicCuration_musicForYou] = a3;
  *&v17[OBJC_IVAR___PGMusicCuration_musicForLocation] = a4;
  *&v17[OBJC_IVAR___PGMusicCuration_musicForTime] = a5;
  *&v17[OBJC_IVAR___PGMusicCuration_musicForPerformer] = a6;
  v20 = &v17[OBJC_IVAR___PGMusicCuration_musicCurationInfo];
  *v20 = v18;
  *(v20 + 8) = *(a7 + 1);
  *&v17[OBJC_IVAR___PGMusicCuration_musicCurationDebugInfo] = v19;
  v22.receiver = v17;
  v22.super_class = v8;
  return objc_msgSendSuper2(&v22, sel_init);
}

uint64_t MusicCuration.description.getter()
{
  v1 = type metadata accessor for Song();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v5 = &v84 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v89 = 0;
  *&v90 = 0xE000000000000000;
  sub_22F741B00();
  v91 = v89;
  v92 = v90;
  MEMORY[0x231900B10](0xD000000000000010, 0x800000022F798FC0);
  v89 = *(v0 + OBJC_IVAR___PGMusicCuration_curatorVersion);
  v6 = sub_22F742010();
  MEMORY[0x231900B10](v6);

  MEMORY[0x231900B10](0xD00000000000001CLL, 0x800000022F798FE0);
  v88 = v0;
  v7 = *(v0 + OBJC_IVAR___PGMusicCuration_bestMusicSuggestions);
  v8 = *(v7 + 16);
  v9 = MEMORY[0x277D84F90];
  v85 = v2;
  if (v8)
  {
    v89 = MEMORY[0x277D84F90];
    sub_22F146454(0, v8, 0);
    v9 = v89;
    v10 = v7 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
    v11 = *(v2 + 72);
    do
    {
      sub_22F15CAA0(v10, v5);
      v12 = Song.compactDescription.getter();
      v14 = v13;
      sub_22F15CBD8(v5);
      v89 = v9;
      v16 = *(v9 + 16);
      v15 = *(v9 + 24);
      if (v16 >= v15 >> 1)
      {
        sub_22F146454((v15 > 1), v16 + 1, 1);
        v9 = v89;
      }

      *(v9 + 16) = v16 + 1;
      v17 = v9 + 16 * v16;
      *(v17 + 32) = v12;
      *(v17 + 40) = v14;
      v10 += v11;
      --v8;
    }

    while (v8);
    v2 = v85;
  }

  v89 = v9;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0E90, &qword_22F7714A0);
  v86 = sub_22F15A2C0();
  v87 = v18;
  v19 = sub_22F740DA0();
  v21 = v20;

  MEMORY[0x231900B10](v19, v21);

  MEMORY[0x231900B10](0xD000000000000014, 0x800000022F799000);
  v22 = *(v88 + OBJC_IVAR___PGMusicCuration_musicForYou);
  v23 = *(v22 + 16);
  v24 = MEMORY[0x277D84F90];
  if (v23)
  {
    v89 = MEMORY[0x277D84F90];
    sub_22F146454(0, v23, 0);
    v24 = v89;
    v25 = v22 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
    v26 = *(v2 + 72);
    do
    {
      sub_22F15CAA0(v25, v5);
      v27 = Song.compactDescription.getter();
      v29 = v28;
      sub_22F15CBD8(v5);
      v89 = v24;
      v31 = *(v24 + 16);
      v30 = *(v24 + 24);
      if (v31 >= v30 >> 1)
      {
        sub_22F146454((v30 > 1), v31 + 1, 1);
        v24 = v89;
      }

      *(v24 + 16) = v31 + 1;
      v32 = v24 + 16 * v31;
      *(v32 + 32) = v27;
      *(v32 + 40) = v29;
      v25 += v26;
      --v23;
    }

    while (v23);
    v2 = v85;
  }

  v89 = v24;
  v33 = sub_22F740DA0();
  v35 = v34;

  MEMORY[0x231900B10](v33, v35);

  MEMORY[0x231900B10](0xD000000000000019, 0x800000022F799020);
  v36 = *(v88 + OBJC_IVAR___PGMusicCuration_musicForLocation);
  v37 = *(v36 + 16);
  v38 = MEMORY[0x277D84F90];
  if (v37)
  {
    v89 = MEMORY[0x277D84F90];
    sub_22F146454(0, v37, 0);
    v38 = v89;
    v39 = v36 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
    v40 = *(v2 + 72);
    do
    {
      sub_22F15CAA0(v39, v5);
      v41 = Song.compactDescription.getter();
      v43 = v42;
      sub_22F15CBD8(v5);
      v89 = v38;
      v45 = *(v38 + 16);
      v44 = *(v38 + 24);
      if (v45 >= v44 >> 1)
      {
        sub_22F146454((v44 > 1), v45 + 1, 1);
        v38 = v89;
      }

      *(v38 + 16) = v45 + 1;
      v46 = v38 + 16 * v45;
      *(v46 + 32) = v41;
      *(v46 + 40) = v43;
      v39 += v40;
      --v37;
    }

    while (v37);
    v2 = v85;
  }

  v89 = v38;
  v47 = sub_22F740DA0();
  v49 = v48;

  MEMORY[0x231900B10](v47, v49);

  MEMORY[0x231900B10](0xD000000000000015, 0x800000022F791F90);
  v50 = *(v88 + OBJC_IVAR___PGMusicCuration_musicForTime);
  v51 = *(v50 + 16);
  v52 = MEMORY[0x277D84F90];
  if (v51)
  {
    v89 = MEMORY[0x277D84F90];
    sub_22F146454(0, v51, 0);
    v52 = v89;
    v53 = v50 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
    v54 = *(v2 + 72);
    do
    {
      sub_22F15CAA0(v53, v5);
      v55 = Song.compactDescription.getter();
      v57 = v56;
      sub_22F15CBD8(v5);
      v89 = v52;
      v59 = *(v52 + 16);
      v58 = *(v52 + 24);
      if (v59 >= v58 >> 1)
      {
        sub_22F146454((v58 > 1), v59 + 1, 1);
        v52 = v89;
      }

      *(v52 + 16) = v59 + 1;
      v60 = v52 + 16 * v59;
      *(v60 + 32) = v55;
      *(v60 + 40) = v57;
      v53 += v54;
      --v51;
    }

    while (v51);
    v2 = v85;
  }

  v89 = v52;
  v61 = sub_22F740DA0();
  v63 = v62;

  MEMORY[0x231900B10](v61, v63);

  MEMORY[0x231900B10](0xD00000000000001ALL, 0x800000022F791FD0);
  v64 = *(v88 + OBJC_IVAR___PGMusicCuration_musicForPerformer);
  v65 = *(v64 + 16);
  v66 = MEMORY[0x277D84F90];
  if (v65)
  {
    v89 = MEMORY[0x277D84F90];
    sub_22F146454(0, v65, 0);
    v66 = v89;
    v67 = v64 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
    v68 = *(v2 + 72);
    do
    {
      sub_22F15CAA0(v67, v5);
      v69 = Song.compactDescription.getter();
      v71 = v70;
      sub_22F15CBD8(v5);
      v89 = v66;
      v73 = *(v66 + 16);
      v72 = *(v66 + 24);
      if (v73 >= v72 >> 1)
      {
        sub_22F146454((v72 > 1), v73 + 1, 1);
        v66 = v89;
      }

      *(v66 + 16) = v73 + 1;
      v74 = v66 + 16 * v73;
      *(v74 + 32) = v69;
      *(v74 + 40) = v71;
      v67 += v68;
      --v65;
    }

    while (v65);
  }

  v89 = v66;
  v75 = sub_22F740DA0();
  v77 = v76;

  MEMORY[0x231900B10](v75, v77);

  MEMORY[0x231900B10](0xD00000000000001ALL, 0x800000022F799040);
  v78 = v88;
  v89 = *(v88 + OBJC_IVAR___PGMusicCuration_musicCurationInfo);
  v90 = *(v88 + OBJC_IVAR___PGMusicCuration_musicCurationInfo + 8);
  v79 = MusicCurationInfo.description.getter();
  MEMORY[0x231900B10](v79);

  MEMORY[0x231900B10](0xD000000000000020, 0x800000022F799060);
  v89 = *(v78 + OBJC_IVAR___PGMusicCuration_musicCurationDebugInfo);

  v80 = sub_22F740DA0();
  v82 = v81;

  MEMORY[0x231900B10](v80, v82);

  return v91;
}

id MusicCuration.replaceFirstSongInBestSongSuggestions(with:)(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  v6 = type metadata accessor for Song();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v54 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v12 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v12)
  {
    v13 = *(v9 + 60);
    v14 = v9;
    v15 = sub_22F73F7C0();
    (*(*(v15 - 8) + 56))(&v11[v13], 1, 1, v15);
    v16 = v14[16];
    v17 = sub_22F73F690();
    (*(*(v17 - 8) + 56))(&v11[v16], 1, 1, v17);
    *v11 = a1;
    *(v11 + 1) = a2;
    *(v11 + 1) = 0u;
    *(v11 + 2) = 0u;
    *(v11 + 3) = 0u;
    *(v11 + 8) = 0;
    v11[72] = 2;
    *(v11 + 10) = 0;
    v11[88] = 1;
    *(v11 + 23) = 0;
    v11[96] = 1;
    *(v11 + 104) = 0u;
    *(v11 + 120) = 0u;
    *(v11 + 136) = 0u;
    v18 = &v11[v14[26]];
    *v18 = 1;
    *(v18 + 24) = 0u;
    *(v18 + 37) = 0;
    *(v18 + 8) = 0u;
    *&v11[v14[17]] = 0;
    v19 = &v11[v14[18]];
    *v19 = 0;
    v19[4] = 1;
    v20 = &v11[v14[19]];
    *v20 = 0;
    v20[4] = 1;
    v21 = &v11[v14[20]];
    *v21 = 0;
    v21[4] = 1;
    v22 = &v11[v14[21]];
    *v22 = 0;
    v22[4] = 1;
    v23 = &v11[v14[22]];
    *v23 = 0;
    v23[4] = 1;
    v24 = &v11[v14[23]];
    *v24 = 0;
    v24[4] = 1;
    v11[v14[24]] = 2;
    v25 = &v11[v14[25]];
    *v25 = 0;
    *(v25 + 1) = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0570, &qword_22F770810);
    v26 = *(v7 + 72);
    v27 = (*(v7 + 80) + 32) & ~*(v7 + 80);
    v28 = swift_allocObject();
    *(v28 + 16) = xmmword_22F771340;
    sub_22F15CAA0(v11, v28 + v27);
    v29 = sub_22F2E42E4(1uLL, *(v3 + OBJC_IVAR___PGMusicCuration_bestMusicSuggestions));
    v31 = v30;
    v33 = v32;
    v35 = v34;
    v58 = v28;

    sub_22F145294(v29, v31, v33, v35);
    sub_22F15CBD8(v11);
    v55 = v58;
  }

  else
  {
    if (qword_2810A9460 != -1)
    {
      swift_once();
    }

    v36 = sub_22F740B90();
    __swift_project_value_buffer(v36, qword_2810B4D90);

    v37 = sub_22F740B70();
    v38 = sub_22F7415E0();

    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      v58 = v40;
      *v39 = 136315138;
      *(v39 + 4) = sub_22F145F20(a1, a2, &v58);
      _os_log_impl(&dword_22F0FC000, v37, v38, "[MusicCuration] Unable to replace 1st song with ID: %s", v39, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v40);
      MEMORY[0x2319033A0](v40, -1, -1);
      MEMORY[0x2319033A0](v39, -1, -1);
    }

    v55 = *(v3 + OBJC_IVAR___PGMusicCuration_bestMusicSuggestions);
  }

  v41 = *(v3 + OBJC_IVAR___PGMusicCuration_curatorVersion);
  v42 = *(v3 + OBJC_IVAR___PGMusicCuration_musicForYou);
  v43 = *(v3 + OBJC_IVAR___PGMusicCuration_musicForLocation);
  v44 = *(v3 + OBJC_IVAR___PGMusicCuration_musicForTime);
  v45 = *(v3 + OBJC_IVAR___PGMusicCuration_musicForPerformer);
  v46 = *(v3 + OBJC_IVAR___PGMusicCuration_musicCurationInfo);
  v47 = *(v3 + OBJC_IVAR___PGMusicCuration_musicCurationInfo + 8);
  v48 = *(v3 + OBJC_IVAR___PGMusicCuration_musicCurationInfo + 16);
  v49 = *(v3 + OBJC_IVAR___PGMusicCuration_musicCurationDebugInfo);
  v50 = ObjectType;
  v51 = objc_allocWithZone(ObjectType);
  *&v51[OBJC_IVAR___PGMusicCuration_curatorVersion] = v41;
  *&v51[OBJC_IVAR___PGMusicCuration_bestMusicSuggestions] = v55;
  *&v51[OBJC_IVAR___PGMusicCuration_musicForYou] = v42;
  *&v51[OBJC_IVAR___PGMusicCuration_musicForLocation] = v43;
  *&v51[OBJC_IVAR___PGMusicCuration_musicForTime] = v44;
  *&v51[OBJC_IVAR___PGMusicCuration_musicForPerformer] = v45;
  v52 = &v51[OBJC_IVAR___PGMusicCuration_musicCurationInfo];
  *v52 = v46;
  *(v52 + 1) = v47;
  *(v52 + 2) = v48;
  *&v51[OBJC_IVAR___PGMusicCuration_musicCurationDebugInfo] = v49;
  v57.receiver = v51;
  v57.super_class = v50;

  return objc_msgSendSuper2(&v57, sel_init);
}

PhotosGraph::MusicCurationInfo __swiftcall MusicCurationInfo.init(performerNames:locationName:)(Swift::OpaquePointer performerNames, Swift::String_optional locationName)
{
  *v2 = performerNames;
  *(v2 + 8) = locationName;
  result.locationName = locationName;
  result.performerNames = performerNames;
  return result;
}

uint64_t MusicCurationInfo.locationName.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);

  return v1;
}

unint64_t MusicCurationInfo.description.getter()
{
  v1 = *v0;

  sub_22F741B00();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0E90, &qword_22F7714A0);
  sub_22F15A2C0();
  v2 = sub_22F740DA0();
  v4 = v3;

  MEMORY[0x231900B10](v2, v4);

  return 0xD000000000000010;
}

uint64_t static MusicCurationInfo.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = a1[2];
  v4 = a2[1];
  v5 = a2[2];
  if (sub_22F17ADF4(*a1, *a2))
  {
    if (v3)
    {
      if (v5 && (v2 == v4 && v3 == v5 || (sub_22F742040() & 1) != 0))
      {
        return 1;
      }
    }

    else if (!v5)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t sub_22F2E0F60()
{
  if (*v0)
  {
    result = 0x6E6F697461636F6CLL;
  }

  else
  {
    result = 0x656D726F66726570;
  }

  *v0;
  return result;
}

uint64_t sub_22F2E0FB0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x656D726F66726570 && a2 == 0xEE0073656D614E72;
  if (v6 || (sub_22F742040() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6E6F697461636F6CLL && a2 == 0xEC000000656D614ELL)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_22F742040();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_22F2E1098(uint64_t a1)
{
  v2 = sub_22F2E43EC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22F2E10D4(uint64_t a1)
{
  v2 = sub_22F2E43EC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MusicCurationInfo.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB33A0, &qword_22F783250);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v13 - v7;
  v10 = *v1;
  v9 = v1[1];
  v13[1] = v1[2];
  v13[2] = v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22F2E43EC();

  sub_22F742210();
  v16 = v10;
  v15 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0E90, &qword_22F7714A0);
  sub_22F1BA494(&qword_2810A92E8);
  sub_22F741FE0();

  if (!v2)
  {
    v14 = 1;
    sub_22F741F20();
  }

  return (*(v5 + 8))(v8, v4);
}

uint64_t MusicCurationInfo.init(from:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB33A8, &qword_22F783258);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v16[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22F2E43EC();
  sub_22F742200();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0E90, &qword_22F7714A0);
  v16[15] = 0;
  sub_22F1BA494(&qword_2810A92D8);
  sub_22F741F10();
  v11 = v17;
  v16[14] = 1;
  v12 = sub_22F741E50();
  v14 = v13;
  (*(v6 + 8))(v9, v5);
  *a2 = v11;
  a2[1] = v12;
  a2[2] = v14;

  __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t sub_22F2E155C(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = a1[2];
  v4 = a2[1];
  v5 = a2[2];
  if (sub_22F17ADF4(*a1, *a2))
  {
    if (v3)
    {
      if (v5 && (v2 == v4 && v3 == v5 || (sub_22F742040() & 1) != 0))
      {
        return 1;
      }
    }

    else if (!v5)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t MusicCurationDebugInfo.description.getter()
{
  v3 = *v0;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0E90, &qword_22F7714A0);
  sub_22F15A2C0();
  v1 = sub_22F740DA0();

  return v1;
}

uint64_t sub_22F2E1698@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x75626544676E6F73 && a2 == 0xED00006F666E4967)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_22F742040();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_22F2E1728(uint64_t a1)
{
  v2 = sub_22F2E4440();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22F2E1764(uint64_t a1)
{
  v2 = sub_22F2E4440();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MusicCurationDebugInfo.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB33B0, &qword_22F783260);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v11 - v6;
  v8 = *v1;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22F2E4440();

  sub_22F742210();
  v11[1] = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0E90, &qword_22F7714A0);
  sub_22F1BA494(&qword_2810A92E8);
  sub_22F741FE0();

  return (*(v4 + 8))(v7, v3);
}

uint64_t MusicCurationDebugInfo.init(from:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB33B8, &qword_22F783268);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v12 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22F2E4440();
  sub_22F742200();
  if (!v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0E90, &qword_22F7714A0);
    sub_22F1BA494(&qword_2810A92D8);
    sub_22F741F10();
    (*(v6 + 8))(v9, v5);
    *a2 = v12[1];
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t MusicCuration.musicCurationInfo.getter@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + OBJC_IVAR___PGMusicCuration_musicCurationInfo + 8);
  v3 = *(v1 + OBJC_IVAR___PGMusicCuration_musicCurationInfo + 16);
  *a1 = *(v1 + OBJC_IVAR___PGMusicCuration_musicCurationInfo);
  a1[1] = v2;
  a1[2] = v3;
}

id MusicCuration.init(curatorVersion:bestMusicSuggestions:musicForYou:musicForLocation:musicForTime:musicForPerformer:musicCurationInfo:musicCurationDebugInfo:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t *a7, uint64_t *a8)
{
  ObjectType = swift_getObjectType();
  v18 = *a7;
  v19 = *a8;
  *&v8[OBJC_IVAR___PGMusicCuration_curatorVersion] = a1;
  *&v8[OBJC_IVAR___PGMusicCuration_bestMusicSuggestions] = a2;
  *&v8[OBJC_IVAR___PGMusicCuration_musicForYou] = a3;
  *&v8[OBJC_IVAR___PGMusicCuration_musicForLocation] = a4;
  *&v8[OBJC_IVAR___PGMusicCuration_musicForTime] = a5;
  *&v8[OBJC_IVAR___PGMusicCuration_musicForPerformer] = a6;
  v20 = &v8[OBJC_IVAR___PGMusicCuration_musicCurationInfo];
  *v20 = v18;
  *(v20 + 8) = *(a7 + 1);
  *&v8[OBJC_IVAR___PGMusicCuration_musicCurationDebugInfo] = v19;
  v22.receiver = v8;
  v22.super_class = ObjectType;
  return objc_msgSendSuper2(&v22, sel_init);
}

uint64_t MusicCuration.jsonDescription.getter()
{
  v1 = type metadata accessor for Song();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v5 = (&v87 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v93 = 0;
  v94 = 0xE000000000000000;
  sub_22F741B00();
  MEMORY[0x231900B10](0xD000000000000016, 0x800000022F7990B0);
  v92 = *(v0 + OBJC_IVAR___PGMusicCuration_curatorVersion);
  v6 = sub_22F742010();
  MEMORY[0x231900B10](v6);

  MEMORY[0x231900B10](0xD00000000000001DLL, 0x800000022F7990D0);
  v91 = v0;
  v7 = *(v0 + OBJC_IVAR___PGMusicCuration_bestMusicSuggestions);
  v8 = *(v7 + 16);
  v9 = MEMORY[0x277D84F90];
  v88 = v2;
  if (v8)
  {
    v92 = MEMORY[0x277D84F90];
    sub_22F146454(0, v8, 0);
    v9 = v92;
    v10 = v7 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
    v11 = *(v2 + 72);
    do
    {
      sub_22F15CAA0(v10, v5);
      v12 = *v5;
      v13 = v5[1];

      sub_22F15CBD8(v5);
      v92 = v9;
      v15 = *(v9 + 16);
      v14 = *(v9 + 24);
      if (v15 >= v14 >> 1)
      {
        sub_22F146454((v14 > 1), v15 + 1, 1);
        v9 = v92;
      }

      *(v9 + 16) = v15 + 1;
      v16 = v9 + 16 * v15;
      *(v16 + 32) = v12;
      *(v16 + 40) = v13;
      v10 += v11;
      --v8;
    }

    while (v8);
    v2 = v88;
  }

  v92 = v9;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0E90, &qword_22F7714A0);
  v18 = sub_22F15A2C0();
  v19 = sub_22F740DA0();
  v21 = v20;

  MEMORY[0x231900B10](v19, v21);

  MEMORY[0x231900B10](0xD000000000000014, 0x800000022F7990F0);
  v22 = *(v91 + OBJC_IVAR___PGMusicCuration_musicForYou);
  v23 = *(v22 + 16);
  v24 = MEMORY[0x277D84F90];
  v89 = v18;
  v90 = v17;
  if (v23)
  {
    v92 = MEMORY[0x277D84F90];
    sub_22F146454(0, v23, 0);
    v24 = v92;
    v25 = v22 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
    v26 = *(v2 + 72);
    do
    {
      sub_22F15CAA0(v25, v5);
      v27 = *v5;
      v28 = v5[1];

      sub_22F15CBD8(v5);
      v92 = v24;
      v30 = *(v24 + 16);
      v29 = *(v24 + 24);
      if (v30 >= v29 >> 1)
      {
        sub_22F146454((v29 > 1), v30 + 1, 1);
        v24 = v92;
      }

      *(v24 + 16) = v30 + 1;
      v31 = v24 + 16 * v30;
      *(v31 + 32) = v27;
      *(v31 + 40) = v28;
      v25 += v26;
      --v23;
    }

    while (v23);
    v2 = v88;
  }

  v92 = v24;
  v32 = sub_22F740DA0();
  v34 = v33;

  MEMORY[0x231900B10](v32, v34);

  MEMORY[0x231900B10](0xD000000000000019, 0x800000022F799110);
  v35 = *(v91 + OBJC_IVAR___PGMusicCuration_musicForLocation);
  v36 = *(v35 + 16);
  v37 = MEMORY[0x277D84F90];
  if (v36)
  {
    v92 = MEMORY[0x277D84F90];
    sub_22F146454(0, v36, 0);
    v37 = v92;
    v38 = v35 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
    v39 = *(v2 + 72);
    do
    {
      sub_22F15CAA0(v38, v5);
      v40 = *v5;
      v41 = v5[1];

      sub_22F15CBD8(v5);
      v92 = v37;
      v43 = *(v37 + 16);
      v42 = *(v37 + 24);
      if (v43 >= v42 >> 1)
      {
        sub_22F146454((v42 > 1), v43 + 1, 1);
        v37 = v92;
      }

      *(v37 + 16) = v43 + 1;
      v44 = v37 + 16 * v43;
      *(v44 + 32) = v40;
      *(v44 + 40) = v41;
      v38 += v39;
      --v36;
    }

    while (v36);
    v2 = v88;
  }

  v92 = v37;
  v45 = sub_22F740DA0();
  v47 = v46;

  MEMORY[0x231900B10](v45, v47);

  MEMORY[0x231900B10](0xD000000000000015, 0x800000022F792070);
  v48 = *(v91 + OBJC_IVAR___PGMusicCuration_musicForTime);
  v49 = *(v48 + 16);
  v50 = MEMORY[0x277D84F90];
  if (v49)
  {
    v92 = MEMORY[0x277D84F90];
    sub_22F146454(0, v49, 0);
    v50 = v92;
    v51 = v48 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
    v52 = *(v2 + 72);
    do
    {
      sub_22F15CAA0(v51, v5);
      v53 = *v5;
      v54 = v5[1];

      sub_22F15CBD8(v5);
      v92 = v50;
      v56 = *(v50 + 16);
      v55 = *(v50 + 24);
      if (v56 >= v55 >> 1)
      {
        sub_22F146454((v55 > 1), v56 + 1, 1);
        v50 = v92;
      }

      *(v50 + 16) = v56 + 1;
      v57 = v50 + 16 * v56;
      *(v57 + 32) = v53;
      *(v57 + 40) = v54;
      v51 += v52;
      --v49;
    }

    while (v49);
    v2 = v88;
  }

  v92 = v50;
  v58 = sub_22F740DA0();
  v60 = v59;

  MEMORY[0x231900B10](v58, v60);

  MEMORY[0x231900B10](0xD00000000000001ALL, 0x800000022F7920B0);
  v61 = *(v91 + OBJC_IVAR___PGMusicCuration_musicForPerformer);
  v62 = *(v61 + 16);
  v63 = MEMORY[0x277D84F90];
  if (v62)
  {
    v92 = MEMORY[0x277D84F90];
    sub_22F146454(0, v62, 0);
    v63 = v92;
    v64 = v61 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
    v65 = *(v2 + 72);
    do
    {
      sub_22F15CAA0(v64, v5);
      v66 = *v5;
      v67 = v5[1];

      sub_22F15CBD8(v5);
      v92 = v63;
      v69 = *(v63 + 16);
      v68 = *(v63 + 24);
      if (v69 >= v68 >> 1)
      {
        sub_22F146454((v68 > 1), v69 + 1, 1);
        v63 = v92;
      }

      *(v63 + 16) = v69 + 1;
      v70 = v63 + 16 * v69;
      *(v70 + 32) = v66;
      *(v70 + 40) = v67;
      v64 += v65;
      --v62;
    }

    while (v62);
  }

  v92 = v63;
  v71 = sub_22F740DA0();
  v73 = v72;

  MEMORY[0x231900B10](v71, v73);

  MEMORY[0x231900B10](0xD00000000000001FLL, 0x800000022F799130);
  v74 = *(v91 + OBJC_IVAR___PGMusicCuration_musicCurationDebugInfo);
  v75 = *(v74 + 16);
  v76 = MEMORY[0x277D84F90];
  if (v75)
  {
    v92 = MEMORY[0x277D84F90];
    sub_22F146454(0, v75, 0);
    v76 = v92;
    v77 = (v74 + 40);
    do
    {
      v78 = *(v77 - 1);
      v79 = *v77;
      v92 = v76;
      v81 = *(v76 + 16);
      v80 = *(v76 + 24);

      if (v81 >= v80 >> 1)
      {
        sub_22F146454((v80 > 1), v81 + 1, 1);
        v76 = v92;
      }

      *(v76 + 16) = v81 + 1;
      v82 = v76 + 16 * v81;
      *(v82 + 32) = v78;
      *(v82 + 40) = v79;
      v77 += 2;
      --v75;
    }

    while (v75);
  }

  v92 = v76;
  v83 = sub_22F740DA0();
  v85 = v84;

  MEMORY[0x231900B10](v83, v85);

  MEMORY[0x231900B10](8194653, 0xE300000000000000);
  return v93;
}

Swift::String_optional __swiftcall MusicCuration.jsonRepresentation()()
{
  swift_getObjectType();
  v0 = sub_22F740E80();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = sub_22F73EFB0();
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  swift_allocObject();
  sub_22F73EFA0();
  sub_22F2E4654(&qword_2810ABF28, v5, type metadata accessor for MusicCuration);
  v8 = sub_22F73EF90();
  v10 = v9;

  sub_22F740E70();
  v11 = sub_22F740E40();
  v13 = v12;
  sub_22F133BF0(v8, v10);
  if (v13)
  {
    v7 = v13;
    v6 = v11;
  }

  else
  {
    v6 = 0;
    v7 = 0;
  }

  result.value._object = v7;
  result.value._countAndFlagsBits = v6;
  return result;
}

id MusicCuration.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

unint64_t sub_22F2E27C4()
{
  v1 = *v0;
  if (v1 > 3)
  {
    v5 = 0xD000000000000011;
    if (v1 != 6)
    {
      v5 = 0xD000000000000016;
    }

    v6 = 0x726F46636973756DLL;
    if (v1 != 4)
    {
      v6 = 0xD000000000000011;
    }

    if (*v0 <= 5u)
    {
      return v6;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v2 = 0x56726F7461727563;
    v3 = 0x726F46636973756DLL;
    if (v1 != 2)
    {
      v3 = 0xD000000000000010;
    }

    if (*v0)
    {
      v2 = 0xD000000000000014;
    }

    if (*v0 <= 1u)
    {
      return v2;
    }

    else
    {
      return v3;
    }
  }
}

uint64_t sub_22F2E28EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22F2E4C64(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_22F2E2914(uint64_t a1)
{
  v2 = sub_22F2E44B8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22F2E2950(uint64_t a1)
{
  v2 = sub_22F2E44B8();

  return MEMORY[0x2821FE720](a1, v2);
}

id MusicCuration.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t MusicCuration.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB33C0, &qword_22F783270);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v15 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22F2E44B8();
  sub_22F742210();
  v11 = *(v3 + OBJC_IVAR___PGMusicCuration_curatorVersion);
  LOBYTE(v15[0]) = 0;
  sub_22F741FD0();
  if (!v2)
  {
    v15[0] = *(v3 + OBJC_IVAR___PGMusicCuration_bestMusicSuggestions);
    v16 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB33C8, &qword_22F783278);
    sub_22F2E45B4(&qword_2810A9300, &qword_2810A99B8);
    sub_22F741FE0();
    v15[0] = *(v3 + OBJC_IVAR___PGMusicCuration_musicForYou);
    v16 = 2;
    sub_22F741FE0();
    v15[0] = *(v3 + OBJC_IVAR___PGMusicCuration_musicForLocation);
    v16 = 3;
    sub_22F741FE0();
    v15[0] = *(v3 + OBJC_IVAR___PGMusicCuration_musicForTime);
    v16 = 4;
    sub_22F741FE0();
    v15[0] = *(v3 + OBJC_IVAR___PGMusicCuration_musicForPerformer);
    v16 = 5;
    sub_22F741FE0();
    v12 = *(v3 + OBJC_IVAR___PGMusicCuration_musicCurationInfo + 8);
    v13 = *(v3 + OBJC_IVAR___PGMusicCuration_musicCurationInfo + 16);
    v15[0] = *(v3 + OBJC_IVAR___PGMusicCuration_musicCurationInfo);
    v15[1] = v12;
    v15[2] = v13;
    v16 = 6;
    sub_22F2E450C();

    sub_22F741FE0();

    v15[0] = *(v3 + OBJC_IVAR___PGMusicCuration_musicCurationDebugInfo);
    v16 = 7;
    sub_22F2E4560();

    sub_22F741FE0();
  }

  return (*(v6 + 8))(v9, v5);
}

id MusicCuration.init(from:)(uint64_t *a1)
{
  v3 = v1;
  ObjectType = swift_getObjectType();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB33D0, &unk_22F783280);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v13 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22F2E44B8();
  sub_22F742200();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_0(a1);
    swift_deallocPartialClassInstance();
  }

  else
  {
    LOBYTE(v16) = 0;
    *&v1[OBJC_IVAR___PGMusicCuration_curatorVersion] = sub_22F741F00();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB33C8, &qword_22F783278);
    v18 = 1;
    sub_22F2E45B4(&qword_27DAB33D8, &qword_27DAB33E0);
    sub_22F741F10();
    *&v1[OBJC_IVAR___PGMusicCuration_bestMusicSuggestions] = v16;
    v18 = 2;
    sub_22F741F10();
    *&v1[OBJC_IVAR___PGMusicCuration_musicForYou] = v16;
    v18 = 3;
    sub_22F741F10();
    v13[1] = 0;
    *&v1[OBJC_IVAR___PGMusicCuration_musicForLocation] = v16;
    v18 = 4;
    sub_22F741F10();
    *&v1[OBJC_IVAR___PGMusicCuration_musicForTime] = v16;
    v18 = 5;
    sub_22F741F10();
    *&v1[OBJC_IVAR___PGMusicCuration_musicForPerformer] = v16;
    v18 = 6;
    sub_22F2E469C();
    sub_22F741F10();
    v12 = &v1[OBJC_IVAR___PGMusicCuration_musicCurationInfo];
    *v12 = v16;
    *(v12 + 8) = v17;
    v18 = 7;
    sub_22F2E46F0();
    sub_22F741F10();
    *&v1[OBJC_IVAR___PGMusicCuration_musicCurationDebugInfo] = v16;
    v15.receiver = v1;
    v15.super_class = ObjectType;
    v3 = objc_msgSendSuper2(&v15, sel_init);
    (*(v6 + 8))(v9, v5);
    __swift_destroy_boxed_opaque_existential_0(a1);
  }

  return v3;
}

id sub_22F2E3450@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v6 = objc_allocWithZone(v2);
  result = MusicCuration.init(from:)(a1);
  if (!v3)
  {
    *a2 = result;
  }

  return result;
}

uint64_t MusicCuration.isEqual(_:)(uint64_t a1)
{
  swift_getObjectType();
  sub_22F1BCD04(a1, v16);
  if (!v17)
  {
    sub_22F1BCC9C(v16);
    goto LABEL_11;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_11:
    v13 = 0;
    return v13 & 1;
  }

  if (*(v1 + OBJC_IVAR___PGMusicCuration_curatorVersion) != *&v15[OBJC_IVAR___PGMusicCuration_curatorVersion])
  {
    goto LABEL_10;
  }

  v3 = *(v1 + OBJC_IVAR___PGMusicCuration_bestMusicSuggestions);
  v4 = *&v15[OBJC_IVAR___PGMusicCuration_bestMusicSuggestions];

  LOBYTE(v3) = sub_22F17B438(v3, v4);

  if ((v3 & 1) == 0)
  {
    goto LABEL_10;
  }

  v5 = *(v1 + OBJC_IVAR___PGMusicCuration_musicForYou);
  v6 = *&v15[OBJC_IVAR___PGMusicCuration_musicForYou];

  LOBYTE(v5) = sub_22F17B438(v5, v6);

  if ((v5 & 1) == 0)
  {
    goto LABEL_10;
  }

  v7 = *(v1 + OBJC_IVAR___PGMusicCuration_musicForLocation);
  v8 = *&v15[OBJC_IVAR___PGMusicCuration_musicForLocation];

  LOBYTE(v7) = sub_22F17B438(v7, v8);

  if ((v7 & 1) == 0 || (v9 = *(v1 + OBJC_IVAR___PGMusicCuration_musicForTime), v10 = *&v15[OBJC_IVAR___PGMusicCuration_musicForTime], , LOBYTE(v9) = sub_22F17B438(v9, v10), , (v9 & 1) == 0))
  {
LABEL_10:

    goto LABEL_11;
  }

  v11 = *(v1 + OBJC_IVAR___PGMusicCuration_musicForPerformer);
  v12 = *&v15[OBJC_IVAR___PGMusicCuration_musicForPerformer];

  v13 = sub_22F17B438(v11, v12);

  return v13 & 1;
}

uint64_t MusicCuration.keySongAdamID.getter()
{
  v1 = *(v0 + OBJC_IVAR___PGMusicCuration_bestMusicSuggestions);
  if (!*(v1 + 16))
  {
    return 0;
  }

  v2 = *(type metadata accessor for Song() - 8);
  v3 = (v1 + ((*(v2 + 80) + 32) & ~*(v2 + 80)));
  v4 = *v3;
  v5 = v3[1];

  return v4;
}

uint64_t MusicCuration.keySongTitle.getter()
{
  v1 = *(v0 + OBJC_IVAR___PGMusicCuration_bestMusicSuggestions);
  if (!*(v1 + 16))
  {
    return 0;
  }

  v2 = *(type metadata accessor for Song() - 8);
  v3 = v1 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v4 = *(v3 + 16);
  v5 = *(v3 + 24);

  return v4;
}

uint64_t MusicCuration.keySongArtist.getter()
{
  v1 = *(v0 + OBJC_IVAR___PGMusicCuration_bestMusicSuggestions);
  if (!*(v1 + 16))
  {
    return 0;
  }

  v2 = *(type metadata accessor for Song() - 8);
  v3 = v1 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v4 = *(v3 + 32);
  v5 = *(v3 + 40);

  return v4;
}

uint64_t MusicCuration.keySongArousal.getter()
{
  v1 = *(v0 + OBJC_IVAR___PGMusicCuration_bestMusicSuggestions);
  if (!*(v1 + 16))
  {
    return 0;
  }

  v2 = type metadata accessor for Song();
  v3 = v1 + *(v2 + 72) + ((*(*(v2 - 8) + 80) + 32) & ~*(*(v2 - 8) + 80));
  if (*(v3 + 4))
  {
    return 0;
  }

  v5 = *v3;
  sub_22F170D8C();
  return sub_22F7417D0();
}

uint64_t MusicCuration.keySongValence.getter()
{
  v1 = *(v0 + OBJC_IVAR___PGMusicCuration_bestMusicSuggestions);
  if (!*(v1 + 16))
  {
    return 0;
  }

  v2 = type metadata accessor for Song();
  v3 = v1 + *(v2 + 76) + ((*(*(v2 - 8) + 80) + 32) & ~*(*(v2 - 8) + 80));
  if (*(v3 + 4))
  {
    return 0;
  }

  v5 = *v3;
  sub_22F170D8C();
  return sub_22F7417D0();
}

uint64_t sub_22F2E3C74()
{
  v1 = type metadata accessor for Song();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v5 = (&v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = *(v0 + OBJC_IVAR___PGMusicCuration_musicForYou);
  v26 = *(v0 + OBJC_IVAR___PGMusicCuration_bestMusicSuggestions);

  sub_22F14585C(v7);
  v8 = *(v0 + OBJC_IVAR___PGMusicCuration_musicForLocation);

  sub_22F14585C(v9);
  v10 = *(v0 + OBJC_IVAR___PGMusicCuration_musicForTime);

  sub_22F14585C(v11);
  v12 = *(v0 + OBJC_IVAR___PGMusicCuration_musicForPerformer);

  sub_22F14585C(v13);
  v14 = v26;
  v15 = *(v26 + 16);
  if (v15)
  {
    v25 = MEMORY[0x277D84F90];
    sub_22F146454(0, v15, 0);
    v16 = v25;
    v17 = v14 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
    v18 = *(v2 + 72);
    do
    {
      sub_22F15CAA0(v17, v5);
      v20 = *v5;
      v19 = v5[1];

      sub_22F15CBD8(v5);
      v25 = v16;
      v22 = *(v16 + 16);
      v21 = *(v16 + 24);
      if (v22 >= v21 >> 1)
      {
        sub_22F146454((v21 > 1), v22 + 1, 1);
        v16 = v25;
      }

      *(v16 + 16) = v22 + 1;
      v23 = v16 + 16 * v22;
      *(v23 + 32) = v20;
      *(v23 + 40) = v19;
      v17 += v18;
      --v15;
    }

    while (v15);
  }

  else
  {

    return MEMORY[0x277D84F90];
  }

  return v16;
}

id MusicCuration.replaceBestMusicSuggestions(adamIds:)(uint64_t a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v4 = type metadata accessor for Song();
  v45 = *(v4 - 1);
  v5 = *(v45 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 + 16);
  v9 = MEMORY[0x277D84F90];
  if (v8)
  {
    v40 = v1;
    v47 = MEMORY[0x277D84F90];
    sub_22F146514(0, v8, 0);
    v9 = v47;
    v44 = sub_22F73F7C0();
    v10 = *(v44 - 8);
    v11 = *(v10 + 56);
    v42 = v10 + 56;
    v43 = v11;
    v12 = (a1 + 40);
    do
    {
      v14 = *(v12 - 1);
      v13 = *v12;
      v43(&v7[v4[15]], 1, 1, v44);
      v15 = v4[16];
      v16 = sub_22F73F690();
      (*(*(v16 - 8) + 56))(&v7[v15], 1, 1, v16);
      *v7 = v14;
      *(v7 + 1) = v13;
      *(v7 + 1) = 0u;
      *(v7 + 2) = 0u;
      *(v7 + 3) = 0u;
      *(v7 + 8) = 0;
      v7[72] = 2;
      *(v7 + 10) = 0;
      v7[88] = 1;
      *(v7 + 23) = 0;
      v7[96] = 1;
      *(v7 + 104) = 0u;
      *(v7 + 120) = 0u;
      *(v7 + 136) = 0u;
      v17 = &v7[v4[26]];
      *v17 = 1;
      *(v17 + 24) = 0u;
      *(v17 + 37) = 0;
      *(v17 + 8) = 0u;
      *&v7[v4[17]] = 0;
      v18 = &v7[v4[18]];
      *v18 = 0;
      v18[4] = 1;
      v19 = &v7[v4[19]];
      *v19 = 0;
      v19[4] = 1;
      v20 = &v7[v4[20]];
      *v20 = 0;
      v20[4] = 1;
      v21 = &v7[v4[21]];
      *v21 = 0;
      v21[4] = 1;
      v22 = &v7[v4[22]];
      *v22 = 0;
      v22[4] = 1;
      v23 = &v7[v4[23]];
      *v23 = 0;
      v23[4] = 1;
      v7[v4[24]] = 2;
      v24 = &v7[v4[25]];
      *v24 = 0;
      *(v24 + 1) = 0;
      v47 = v9;
      v26 = *(v9 + 16);
      v25 = *(v9 + 24);

      if (v26 >= v25 >> 1)
      {
        sub_22F146514(v25 > 1, v26 + 1, 1);
        v9 = v47;
      }

      *(v9 + 16) = v26 + 1;
      sub_22F15CB04(v7, v9 + ((*(v45 + 80) + 32) & ~*(v45 + 80)) + *(v45 + 72) * v26);
      v12 += 2;
      --v8;
    }

    while (v8);
    v2 = v40;
  }

  v45 = *(v2 + OBJC_IVAR___PGMusicCuration_curatorVersion);
  v27 = *(v2 + OBJC_IVAR___PGMusicCuration_musicForYou);
  v28 = *(v2 + OBJC_IVAR___PGMusicCuration_musicForLocation);
  v29 = *(v2 + OBJC_IVAR___PGMusicCuration_musicForTime);
  v30 = *(v2 + OBJC_IVAR___PGMusicCuration_musicForPerformer);
  v32 = *(v2 + OBJC_IVAR___PGMusicCuration_musicCurationInfo);
  v31 = *(v2 + OBJC_IVAR___PGMusicCuration_musicCurationInfo + 8);
  v33 = *(v2 + OBJC_IVAR___PGMusicCuration_musicCurationInfo + 16);
  v34 = *(v2 + OBJC_IVAR___PGMusicCuration_musicCurationDebugInfo);
  v35 = ObjectType;
  v36 = objc_allocWithZone(ObjectType);
  *&v36[OBJC_IVAR___PGMusicCuration_curatorVersion] = v45;
  *&v36[OBJC_IVAR___PGMusicCuration_bestMusicSuggestions] = v9;
  *&v36[OBJC_IVAR___PGMusicCuration_musicForYou] = v27;
  *&v36[OBJC_IVAR___PGMusicCuration_musicForLocation] = v28;
  *&v36[OBJC_IVAR___PGMusicCuration_musicForTime] = v29;
  *&v36[OBJC_IVAR___PGMusicCuration_musicForPerformer] = v30;
  v37 = &v36[OBJC_IVAR___PGMusicCuration_musicCurationInfo];
  *v37 = v32;
  *(v37 + 1) = v31;
  *(v37 + 2) = v33;
  *&v36[OBJC_IVAR___PGMusicCuration_musicCurationDebugInfo] = v34;
  v46.receiver = v36;
  v46.super_class = v35;

  return objc_msgSendSuper2(&v46, sel_init);
}

unint64_t sub_22F2E42E4(unint64_t result, uint64_t a2)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v3 = *(a2 + 16);
    if ((v3 - result) >= 1 && v3 < result)
    {
      __break(1u);
    }

    v4 = *(type metadata accessor for Song() - 8);
    v5 = a2 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    return a2;
  }

  return result;
}

unint64_t sub_22F2E43EC()
{
  result = qword_2810AB2E0;
  if (!qword_2810AB2E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810AB2E0);
  }

  return result;
}

unint64_t sub_22F2E4440()
{
  result = qword_2810AA660;
  if (!qword_2810AA660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810AA660);
  }

  return result;
}

unint64_t sub_22F2E44B8()
{
  result = qword_2810ABF40[0];
  if (!qword_2810ABF40[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_2810ABF40);
  }

  return result;
}

unint64_t sub_22F2E450C()
{
  result = qword_2810AB2C8;
  if (!qword_2810AB2C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810AB2C8);
  }

  return result;
}

unint64_t sub_22F2E4560()
{
  result = qword_2810AA650;
  if (!qword_2810AA650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810AA650);
  }

  return result;
}

uint64_t sub_22F2E45B4(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DAB33C8, &qword_22F783278);
    sub_22F2E4654(a2, 255, type metadata accessor for Song);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_22F2E4654(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_22F2E469C()
{
  result = qword_27DAB33E8;
  if (!qword_27DAB33E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB33E8);
  }

  return result;
}

unint64_t sub_22F2E46F0()
{
  result = qword_27DAB33F0;
  if (!qword_27DAB33F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB33F0);
  }

  return result;
}

unint64_t sub_22F2E47EC()
{
  result = qword_27DAB33F8;
  if (!qword_27DAB33F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB33F8);
  }

  return result;
}

unint64_t sub_22F2E4844()
{
  result = qword_27DAB3400;
  if (!qword_27DAB3400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB3400);
  }

  return result;
}

unint64_t sub_22F2E489C()
{
  result = qword_27DAB3408;
  if (!qword_27DAB3408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB3408);
  }

  return result;
}

unint64_t sub_22F2E48F4()
{
  result = qword_2810ABF30;
  if (!qword_2810ABF30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810ABF30);
  }

  return result;
}

unint64_t sub_22F2E494C()
{
  result = qword_2810ABF38;
  if (!qword_2810ABF38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810ABF38);
  }

  return result;
}

unint64_t sub_22F2E49A4()
{
  result = qword_2810AA668[0];
  if (!qword_2810AA668[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_2810AA668);
  }

  return result;
}

unint64_t sub_22F2E49FC()
{
  result = qword_2810AA658;
  if (!qword_2810AA658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810AA658);
  }

  return result;
}

unint64_t sub_22F2E4A54()
{
  result = qword_2810AB2D0;
  if (!qword_2810AB2D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810AB2D0);
  }

  return result;
}

unint64_t sub_22F2E4AAC()
{
  result = qword_2810AB2D8;
  if (!qword_2810AB2D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810AB2D8);
  }

  return result;
}

uint64_t sub_22F2E4B00(uint64_t result, unint64_t a2)
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_13;
  }

  v2 = a2;
  v3 = a2 >> 62;
  if (a2 >> 62)
  {
LABEL_13:
    v7 = result;
    result = sub_22F741A00();
    v8 = result - v7;
    if (__OFSUB__(result, v7))
    {
LABEL_26:
      __break(1u);
      goto LABEL_27;
    }

    v9 = sub_22F741A00();
    result = sub_22F741A00();
    if (result < 0)
    {
LABEL_27:
      __break(1u);
      return result;
    }

    if (v8 <= v9)
    {
      v10 = v8 & ~(v8 >> 63);
    }

    else
    {
      v10 = v9;
    }

    if (v9 < 0 || v8 < 1)
    {
      v5 = v8 & ~(v8 >> 63);
    }

    else
    {
      v5 = v10;
    }

    result = sub_22F741A00();
    if (result >= v5)
    {
      goto LABEL_4;
    }

LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v4 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v5 = (v4 - result) & ~((v4 - result) >> 63);
  if (v4 < v5)
  {
    goto LABEL_25;
  }

LABEL_4:
  if ((v2 & 0xC000000000000001) != 0)
  {

    if (v5)
    {
      for (i = 0; i != v5; ++i)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB1228, &unk_22F771660);
        sub_22F741B20();
      }
    }

    if (!v3)
    {
      return v2 & 0xFFFFFFFFFFFFFF8;
    }
  }

  else
  {

    if (!v3)
    {
      return v2 & 0xFFFFFFFFFFFFFF8;
    }
  }

  return sub_22F741DB0();
}

uint64_t sub_22F2E4C64(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x56726F7461727563 && a2 == 0xEE006E6F69737265;
  if (v4 || (sub_22F742040() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000014 && 0x800000022F799190 == a2 || (sub_22F742040() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x726F46636973756DLL && a2 == 0xEB00000000756F59 || (sub_22F742040() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000010 && 0x800000022F7991C0 == a2 || (sub_22F742040() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x726F46636973756DLL && a2 == 0xEC000000656D6954 || (sub_22F742040() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000011 && 0x800000022F7924F0 == a2 || (sub_22F742040() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000011 && 0x800000022F7991E0 == a2 || (sub_22F742040() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000016 && 0x800000022F799200 == a2)
  {

    return 7;
  }

  else
  {
    v6 = sub_22F742040();

    if (v6)
    {
      return 7;
    }

    else
    {
      return 8;
    }
  }
}

PhotosGraph::EventClusterScoredLabels __swiftcall EventClusterScoredLabels.init(identifier:eventLabelConfidences:)(Swift::String identifier, Swift::OpaquePointer eventLabelConfidences)
{
  *v2 = identifier;
  *(v2 + 16) = eventLabelConfidences;
  result.identifier = identifier;
  result.eventLabelConfidences = eventLabelConfidences;
  return result;
}

uint64_t EventClusterScoredLabels.identifier.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t getEnumTagSinglePayload for EventLabelConfidence(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xEA && a1[16])
  {
    return (*a1 + 234);
  }

  v3 = *a1;
  v4 = v3 >= 0x17;
  v5 = v3 - 23;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for EventLabelConfidence(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xE9)
  {
    *result = a2 - 234;
    *(result + 8) = 0;
    if (a3 >= 0xEA)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0xEA)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = a2 + 22;
    }
  }

  return result;
}

uint64_t CachedBackedMomentsProducer.init(cache:features:prefetchFeaturesFor:photoLibrary:graph:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  *a6 = result;
  a6[1] = a2;
  a6[2] = a3;
  a6[3] = a4;
  a6[4] = a5;
  return result;
}

void sub_22F2E50A0()
{
  v2 = *v0;
  v1 = v0[1];
  v3 = v0[2];
  v4 = v0[4];
  EventLabelingFeaturesFileCache.synchronize()();
  if (!v5)
  {
    v6 = *(v2 + OBJC_IVAR___PGEventLabelingFeaturesFileCache_featureExtractorsForCaching);

    v8 = sub_22F173D70(v7);

    v85 = v3;
    v9 = *(v1 + 16);
    v10 = MEMORY[0x277D84F90];
    if (v9)
    {
      for (i = 0; i != v9; ++i)
      {
        v14 = *(v1 + 32 + i);
        v15 = *(v8 + 16);
        v16 = (v8 + 32);
        while (v15)
        {
          v17 = *v16++;
          --v15;
          if (v17 == v14)
          {
            goto LABEL_7;
          }
        }

        *&v87 = v10;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_22F146700(0, *(v10 + 16) + 1, 1);
          v10 = v87;
        }

        v13 = *(v10 + 16);
        v12 = *(v10 + 24);
        if (v13 >= v12 >> 1)
        {
          sub_22F146700((v12 > 1), v13 + 1, 1);
          v10 = v87;
        }

        *(v10 + 16) = v13 + 1;
        *(v10 + v13 + 32) = v14;
LABEL_7:
        ;
      }
    }

    static MomentGraphFeature.extractors(for:with:in:)(v10, v85, v4, &v87);

    v18 = v87;
    v20 = v88;
    v19 = v89;
    v73 = EventLabelingFeaturesFileCache.readFeatures()();
    v21 = [v85 momentNodeByMomentUUID];
    v22 = sub_22F2E57E8();
    v23 = sub_22F740CA0();

    v24 = v73;
    v25 = *(v73 + 16);
    if (v25)
    {
      v71 = v19;
      v72 = v23;
      v68 = v22;
      *&v87 = MEMORY[0x277D84F90];
      v69 = v25;
      sub_22F741BD0();
      v26 = 0;
      v27 = 0x277CCA000uLL;
      v70 = v20;
      while (2)
      {
        if (v26 >= *(v24 + 16))
        {
LABEL_46:
          __break(1u);
          return;
        }

        v30 = v27;
        v78 = v26;
        v31 = (v73 + 32 + 24 * v26);
        v32 = *v31;
        v33 = v31[1];
        v34 = v31[2];
        v35 = *(v72 + 16);
        swift_bridgeObjectRetain_n();
        v82 = v34;

        if (!v35 || (v36 = sub_22F1229E8(v32, v33), (v37 & 1) == 0))
        {

          sub_22F176540();
          swift_allocError();
          *v67 = v32;
          v67[1] = v33;
          v67[2] = v68;
          swift_willThrow();

          return;
        }

        v38 = v36;
        v79 = v78 + 1;

        v39 = *(*(v72 + 56) + 8 * v38);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAB0878, &unk_22F7838B0);
        v40 = sub_22F741DC0();
        v41 = v40;
        v75 = v34 + 64;
        v42 = 1 << *(v34 + 32);
        if (v42 < 64)
        {
          v43 = ~(-1 << v42);
        }

        else
        {
          v43 = -1;
        }

        v44 = v43 & *(v34 + 64);
        v45 = (v42 + 63) >> 6;
        v80 = v40 + 64;
        v74 = v39;
        v46 = 0;
        v27 = v30;
        v47 = MEMORY[0x277D84F90];
        v77 = v41;
        v76 = v45;
        if (v44)
        {
          while (1)
          {
            v48 = __clz(__rbit64(v44));
            v86 = (v44 - 1) & v44;
LABEL_32:
            v51 = v48 | (v46 << 6);
            v52 = (*(v82 + 48) + 16 * v51);
            v83 = *v52;
            v84 = v51;
            v53 = *(*(v82 + 56) + 8 * v51);
            v54 = *(v53 + 16);
            if (v54)
            {
              v81 = v52[1];

              sub_22F741BD0();
              v55 = 32;
              do
              {
                v56 = *(v53 + v55);
                v57 = objc_allocWithZone(*(v27 + 2992));
                LODWORD(v58) = v56;
                [v57 initWithFloat_];
                sub_22F741BA0();
                v59 = *(v47 + 16);
                sub_22F741BE0();
                v27 = v30;
                sub_22F741BF0();
                sub_22F741BB0();
                v55 += 4;
                --v54;
              }

              while (v54);

              v60 = v47;
              v47 = MEMORY[0x277D84F90];
              v41 = v77;
              v45 = v76;
              v61 = v81;
            }

            else
            {

              v60 = v47;
            }

            v44 = v86;
            *(v80 + ((v84 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v84;
            v62 = (v41[6] + 16 * v84);
            *v62 = v83;
            v62[1] = v61;
            *(v41[7] + 8 * v84) = v60;
            v63 = v41[2];
            v64 = __OFADD__(v63, 1);
            v65 = v63 + 1;
            if (v64)
            {
              break;
            }

            v41[2] = v65;
            if (!v86)
            {
              goto LABEL_27;
            }
          }

LABEL_45:
          __break(1u);
          goto LABEL_46;
        }

LABEL_27:
        v49 = v46;
        while (1)
        {
          v46 = v49 + 1;
          if (__OFADD__(v49, 1))
          {
            __break(1u);
            goto LABEL_45;
          }

          if (v46 >= v45)
          {
            break;
          }

          v50 = *(v75 + 8 * v46);
          ++v49;
          if (v50)
          {
            v48 = __clz(__rbit64(v50));
            v86 = (v50 - 1) & v50;
            goto LABEL_32;
          }
        }

        type metadata accessor for CachedMomentGraphCluster();
        v28 = swift_allocObject();
        *(v28 + 16) = v74;
        *(v28 + 24) = v41;
        *(v28 + 32) = v18;
        *(v28 + 48) = v70;
        *(v28 + 56) = v71;

        sub_22F741BA0();
        v29 = *(v87 + 16);
        sub_22F741BE0();
        sub_22F741BF0();
        sub_22F741BB0();
        v26 = v79;
        v24 = v73;
        if (v79 != v69)
        {
          continue;
        }

        break;
      }

      v66 = v87;
    }

    else
    {

      v66 = MEMORY[0x277D84F90];
    }

    sub_22F161A38(v66);
  }
}

uint64_t sub_22F2E5748(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_22F2E5790(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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
      *result = (a2 - 1);
      return result;
    }

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_22F2E57E8()
{
  result = qword_2810A90E0;
  if (!qword_2810A90E0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2810A90E0);
  }

  return result;
}

id FeatureExtractorStoredCLIP.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

Swift::Bool __swiftcall PHAsset.hasValidSceneAnalysisVersionForCLIP()()
{
  v1 = [v0 sceneAnalysisProperties];
  if (v1)
  {
    v2 = v1;
    v3 = [v1 sceneAnalysisVersion];

    v4 = objc_opt_self();
    v5 = [v4 baseSceneAnalysisVersionWithSceneAnalysisVersion_];
    LOBYTE(v1) = v5 == [v4 latestVersion];
  }

  else
  {
    __break(1u);
  }

  return v1;
}

id FeatureExtractorStoredCLIP.init()()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_init);
}

id FeatureExtractorStoredCLIP.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_22F2E5B50(void *a1)
{
  v1 = [a1 clsSceneprint];
  if (!v1)
  {
    goto LABEL_8;
  }

  v2 = v1;
  v3 = [v1 descriptorData];
  if (!v3)
  {

LABEL_8:
    sub_22F2E5F80();
    swift_allocError();
    *v10 = 1;
    swift_willThrow();
    return;
  }

  v4 = v3;
  v5 = sub_22F73F510();
  v7 = v6;

  v8 = v7 >> 62;
  if ((v7 >> 62) > 1)
  {
    if (v8 != 2)
    {
LABEL_20:
      v16 = MEMORY[0x277D84F90];
      v9 = *(MEMORY[0x277D84F90] + 16);
LABEL_21:
      if (!(v9 >> 61))
      {
        sub_22F15C418();
        sub_22F73EFF0();
        v17 = objc_allocWithZone(sub_22F73FBE0());
        v18 = MEMORY[0x2318FF780](v16);
        [objc_allocWithZone(MEMORY[0x277D22C40]) initWithWrapper_];

        sub_22F133BF0(v5, v7);
        return;
      }

      goto LABEL_24;
    }

    v12 = *(v5 + 16);
    v11 = *(v5 + 24);
    v13 = __OFSUB__(v11, v12);
    v14 = v11 - v12;
    if (!v13)
    {
      goto LABEL_15;
    }

    __break(1u);
  }

  else if (!v8)
  {
    v9 = BYTE6(v7) >> 2;
    if (BYTE6(v7) <= 3uLL)
    {
      goto LABEL_20;
    }

LABEL_19:
    v16 = sub_22F741200();
    *(v16 + 16) = v9;
    bzero((v16 + 32), 4 * v9);
    goto LABEL_21;
  }

  LODWORD(v14) = HIDWORD(v5) - v5;
  if (!__OFSUB__(HIDWORD(v5), v5))
  {
    v14 = v14;
LABEL_15:
    v15 = v14 + 3;
    if (v14 >= 0)
    {
      v15 = v14;
    }

    if (v14 < -3)
    {
      __break(1u);
LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

    v9 = v15 >> 2;
    if (v14 <= 3)
    {
      goto LABEL_20;
    }

    goto LABEL_19;
  }

LABEL_25:
  __break(1u);
}

void sub_22F2E5D58(void *a1)
{
  v2 = [a1 sceneAnalysisProperties];
  if (v2)
  {
    v3 = v2;
    v4 = [v2 sceneAnalysisVersion];

    v5 = objc_opt_self();
    v6 = [v5 baseSceneAnalysisVersionWithSceneAnalysisVersion_];
    if (v6 == [v5 latestVersion])
    {
      sub_22F2E5B50(a1);
    }

    else
    {
      sub_22F2E5F80();
      swift_allocError();
      *v7 = 0;
      swift_willThrow();
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t _s11PhotosGraph26FeatureExtractorStoredCLIPC12featureNamesSaySSGvg_0()
{
  v9 = MEMORY[0x277D84F90];
  sub_22F146454(0, 768, 0);
  v0 = 0;
  do
  {
    v7 = sub_22F740E20();
    v8 = v1;
    MEMORY[0x231900B10](95, 0xE100000000000000);
    v2 = sub_22F742010();
    MEMORY[0x231900B10](v2);

    v4 = *(v9 + 16);
    v3 = *(v9 + 24);
    if (v4 >= v3 >> 1)
    {
      sub_22F146454((v3 > 1), v4 + 1, 1);
    }

    ++v0;
    *(v9 + 16) = v4 + 1;
    v5 = v9 + 16 * v4;
    *(v5 + 32) = v7;
    *(v5 + 40) = v8;
  }

  while (v0 != 768);
  return v9;
}

unint64_t sub_22F2E5F80()
{
  result = qword_27DAB3410;
  if (!qword_27DAB3410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB3410);
  }

  return result;
}

unint64_t sub_22F2E5FE8()
{
  result = qword_27DAB3418;
  if (!qword_27DAB3418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB3418);
  }

  return result;
}

uint64_t sub_22F2E603C(uint64_t a1, char a2)
{
  v9 = *MEMORY[0x277D85DE8];
  *(v3 + 264) = a2;
  *(v3 + 200) = a1;
  *(v3 + 208) = v2;
  v4 = sub_22F740B90();
  *(v3 + 216) = v4;
  v5 = *(v4 - 8);
  *(v3 + 224) = v5;
  v6 = *(v5 + 64) + 15;
  *(v3 + 232) = swift_task_alloc();
  v7 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_22F2E612C, 0, 0);
}

uint64_t sub_22F2E612C()
{
  v42 = *MEMORY[0x277D85DE8];
  if (qword_2810A9400 != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 224);
  v1 = *(v0 + 232);
  v3 = *(v0 + 216);
  v4 = __swift_project_value_buffer(v3, qword_2810B4CE0);
  (*(v2 + 16))(v1, v4, v3);
  v5 = sub_22F740B70();
  v6 = sub_22F7415F0();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = *(v0 + 264);
    v8 = swift_slowAlloc();
    *v8 = 67109120;
    *(v8 + 4) = v7;
    _os_log_impl(&dword_22F0FC000, v5, v6, "PetRelationshipDonator: Donating pet relationship inferences to Cascade, isRebuild: %{BOOL}d", v8, 8u);
    MEMORY[0x2319033A0](v8, -1, -1);
  }

  v9 = *(v0 + 264);

  if (v9 == 1)
  {
    v10 = *(v0 + 208);
    v11 = objc_opt_self();
    v12 = *(v10 + OBJC_IVAR___PGGraphPetRelationshipDonator_sourceIdentifier);
    v13 = *(v10 + OBJC_IVAR___PGGraphPetRelationshipDonator_sourceIdentifier + 8);
    v14 = sub_22F740DF0();
    *(v0 + 144) = 0;
    v15 = [v11 sourceIdentifierWithValue:v14 error:v0 + 144];
    *(v0 + 240) = v15;

    v16 = *(v0 + 144);
    if (v15)
    {
      v17 = objc_opt_self();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB13D0, &qword_22F7717F0);
      v18 = swift_allocObject();
      *(v18 + 16) = xmmword_22F771EB0;
      *(v18 + 32) = v15;
      sub_22F120634(0, &unk_2810A9178, 0x277CF9500);
      v19 = v16;
      v20 = v15;
      v21 = sub_22F741160();
      *(v0 + 248) = v21;

      *(v0 + 16) = v0;
      *(v0 + 56) = v0 + 152;
      *(v0 + 24) = sub_22F2E65C0;
      v22 = swift_continuation_init();
      *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB3428, &qword_22F783A90);
      *(v0 + 80) = MEMORY[0x277D85DD0];
      *(v0 + 88) = 1107296256;
      *(v0 + 96) = sub_22F2E6DA0;
      *(v0 + 104) = &block_descriptor_24;
      *(v0 + 112) = v22;
      [v17 fullSetDonationWithItemType:59688 descriptors:v21 completion:v0 + 80];
      v23 = *MEMORY[0x277D85DE8];

      return MEMORY[0x282200938](v0 + 16);
    }

    v36 = *(v0 + 224);
    v35 = *(v0 + 232);
    v37 = *(v0 + 216);
    v38 = v16;
    sub_22F73F370();

    swift_willThrow();
    (*(v36 + 8))(v35, v37);
    v39 = *(v0 + 232);

    v33 = *(v0 + 8);
    v40 = *MEMORY[0x277D85DE8];
  }

  else
  {
    v24 = *(v0 + 232);
    v25 = sub_22F740B70();
    v26 = sub_22F7415F0();
    v27 = os_log_type_enabled(v25, v26);
    v29 = *(v0 + 224);
    v28 = *(v0 + 232);
    v30 = *(v0 + 216);
    if (v27)
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      _os_log_impl(&dword_22F0FC000, v25, v26, "PetRelationshipDonator: early return, currently only donate inferences when doing a full rebuild", v31, 2u);
      MEMORY[0x2319033A0](v31, -1, -1);
    }

    (*(v29 + 8))(v28, v30);
    v32 = *(v0 + 232);

    v33 = *(v0 + 8);
    v34 = *MEMORY[0x277D85DE8];
  }

  return v33();
}

uint64_t sub_22F2E65C0()
{
  v6 = *MEMORY[0x277D85DE8];
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 256) = v2;
  if (v2)
  {
    v3 = sub_22F2E6CC8;
  }

  else
  {
    v3 = sub_22F2E66FC;
  }

  v4 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_22F2E66FC()
{
  v78 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 200);
  v2 = *(v0 + 152);

  v71 = v1 >> 62;
  v72 = v1;
  if (v1 >> 62)
  {
    goto LABEL_41;
  }

  for (i = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_22F741A00())
  {
    v4 = *(v0 + 200);
    v5 = 0;
    sub_22F120634(0, &qword_2810A8ED0, 0x277CCABB0);
    v73 = v4 + 32;
    while (1)
    {
      if ((v72 & 0xC000000000000001) != 0)
      {
        v6 = MEMORY[0x2319016F0](v5, *(v0 + 200));
      }

      else
      {
        if (v5 >= *((v72 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_40;
        }

        v6 = *(v73 + 8 * v5);
      }

      v7 = v6;
      v8 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      v9 = [v6 petSpecies];
      if (v9 == 1)
      {
        v10 = 2;
      }

      else
      {
        v10 = v9 == 2;
      }

      v11 = sub_22F7417E0();
      v12 = objc_allocWithZone(MEMORY[0x277D210D8]);
      *(v0 + 160) = 0;
      v13 = [v12 initWithIsUsersPet:v11 type:v10 error:v0 + 160];
      v14 = *(v0 + 160);
      if (!v13)
      {
        v45 = *(v0 + 240);
        v75 = *(v0 + 232);
        v46 = v2;
        v47 = *(v0 + 216);
        v48 = *(v0 + 224);
        v49 = v14;
        sub_22F73F370();

        swift_willThrow();
        (*(v48 + 8))(v75, v47);
        goto LABEL_30;
      }

      v15 = v13;
      v16 = v14;

      v1 = v7;
      v17 = [v7 localIdentifier];
      if (!v17)
      {
        sub_22F740E20();
        v17 = sub_22F740DF0();
      }

      v18 = v2;
      v19 = objc_allocWithZone(MEMORY[0x277D210E0]);
      *(v0 + 168) = 0;
      v20 = [v19 initWithSourceItemIdentifier:v17 error:v0 + 168];

      v21 = *(v0 + 168);
      if (!v20)
      {
        v50 = *(v0 + 240);
        v76 = *(v0 + 232);
        v51 = *(v0 + 216);
        v52 = *(v0 + 224);
        v53 = v21;
        sub_22F73F370();

        swift_willThrow();
LABEL_29:

        (*(v52 + 8))(v76, v51);
        goto LABEL_30;
      }

      v22 = objc_allocWithZone(MEMORY[0x277CF94C8]);
      *(v0 + 176) = 0;
      v23 = v21;
      v24 = [v22 initWithContent:v15 metaContent:v20 error:v0 + 176];
      v25 = *(v0 + 176);
      if (!v24)
      {
        v54 = *(v0 + 240);
        v55 = *(v0 + 224);
        v74 = *(v0 + 216);
        v77 = *(v0 + 232);
        v56 = v25;
        sub_22F73F370();

        swift_willThrow();
        (*(v55 + 8))(v77, v74);
        goto LABEL_30;
      }

      v26 = v24;
      v27 = v25;

      *(v0 + 184) = 0;
      v2 = v18;
      v28 = [v18 registerItem:v26 error:v0 + 184];
      v29 = *(v0 + 184);
      if ((v28 & 1) == 0)
      {
        v50 = *(v0 + 240);
        v76 = *(v0 + 232);
        v51 = *(v0 + 216);
        v52 = *(v0 + 224);
        v58 = v29;
        sub_22F73F370();

        swift_willThrow();
        goto LABEL_29;
      }

      v30 = v29;

      ++v5;
      if (v8 == i)
      {
        goto LABEL_19;
      }
    }

    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    v69 = *(v0 + 200);
    if (v1 < 0)
    {
      v70 = *(v0 + 200);
    }
  }

LABEL_19:
  *(v0 + 192) = 0;
  v31 = [v2 finish_];
  v32 = *(v0 + 192);
  if (v31)
  {
    v33 = *(v0 + 232);
    v34 = *(v0 + 200);
    v35 = v32;

    v36 = sub_22F740B70();
    v37 = sub_22F7415F0();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      *v38 = 134217984;
      if (v71)
      {
        v62 = *(v0 + 200);
        if (v72 < 0)
        {
          v63 = *(v0 + 200);
        }

        v39 = sub_22F741A00();
      }

      else
      {
        v39 = *((v72 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v64 = *(v0 + 240);
      v65 = *(v0 + 200);
      *(v38 + 4) = v39;

      _os_log_impl(&dword_22F0FC000, v36, v37, "PetRelationshipDonator: finished registering %ld pet relationship inferences", v38, 0xCu);
      MEMORY[0x2319033A0](v38, -1, -1);

      v36 = v64;
    }

    else
    {
      v57 = *(v0 + 200);
    }

    (*(*(v0 + 224) + 8))(*(v0 + 232), *(v0 + 216));
    v66 = *(v0 + 232);

    v60 = *(v0 + 8);
    v67 = *MEMORY[0x277D85DE8];
  }

  else
  {
    v41 = *(v0 + 232);
    v40 = *(v0 + 240);
    v42 = *(v0 + 216);
    v43 = *(v0 + 224);
    v44 = v32;
    sub_22F73F370();

    swift_willThrow();
    (*(v43 + 8))(v41, v42);
LABEL_30:
    v59 = *(v0 + 232);

    v60 = *(v0 + 8);
    v61 = *MEMORY[0x277D85DE8];
  }

  return v60();
}

uint64_t sub_22F2E6CC8()
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = v0[31];
  v1 = v0[32];
  v3 = v0[29];
  v4 = v0[30];
  v5 = v0[27];
  v6 = v0[28];
  swift_willThrow();

  (*(v6 + 8))(v3, v5);
  v7 = v0[32];
  v8 = v0[29];

  v9 = v0[1];
  v10 = *MEMORY[0x277D85DE8];

  return v9();
}

uint64_t sub_22F2E6DA0(uint64_t a1, void *a2, void *a3)
{
  v5 = __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  v6 = *v5;
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB1518, &qword_22F77A7E0);
    v7 = swift_allocError();
    *v8 = a3;
    v9 = a3;

    return MEMORY[0x282200958](v6, v7);
  }

  else
  {
    if (a2)
    {
      **(v6[8] + 40) = a2;
      v10 = a2;
      v5 = v6;
    }

    else
    {
      __break(1u);
    }

    return MEMORY[0x282200950](v5);
  }
}

uint64_t sub_22F2E7008(int a1, char a2, void *aBlock, void *a4)
{
  v4[2] = a4;
  v4[3] = _Block_copy(aBlock);
  sub_22F120634(0, &qword_2810A91A0, off_27887B268);
  v7 = sub_22F741180();
  v4[4] = v7;
  a4;
  v8 = swift_task_alloc();
  v4[5] = v8;
  *v8 = v4;
  v8[1] = sub_22F2E70F8;

  return sub_22F2E603C(v7, a2);
}

uint64_t sub_22F2E70F8()
{
  v2 = v0;
  v4 = *v1;
  v3 = *v1;
  v5 = *(*v1 + 40);
  v6 = *(*v1 + 32);
  v7 = *(*v1 + 16);
  v8 = *v1;

  v9 = *(v3 + 24);
  if (v2)
  {
    v10 = sub_22F73F360();

    (*(v9 + 16))(v9, v10);
  }

  else
  {
    (*(v9 + 16))(*(v3 + 24), 0);
  }

  _Block_release(*(v4 + 24));
  v11 = *(v8 + 8);

  return v11();
}

uint64_t sub_22F2E7338()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v5 = *(v0 + 32);
  v4 = *(v0 + 40);
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_22F12094C;

  return sub_22F2E7008(v2, v3, v5, v4);
}

uint64_t sub_22F2E73FC()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_22F20B7C0;

  return sub_22F33C37C(v2, v3, v5);
}

uint64_t objectdestroy_4Tm()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

unint64_t sub_22F2E7514(void *a1, uint64_t a2)
{
  v56 = a2;
  v60 = a1;
  v2 = type metadata accessor for TriggerResult();
  v54 = *(v2 - 8);
  v55 = v2;
  v3 = *(v54 + 64);
  MEMORY[0x28223BE20](v2);
  v57 = &v43 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v45 = &v43 - v6;
  v53 = sub_22F740460();
  v50 = *(v53 - 8);
  v7 = *(v50 + 64);
  MEMORY[0x28223BE20](v53);
  v52 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = sub_22F740390();
  v47 = *(v44 - 8);
  v9 = *(v47 + 64);
  MEMORY[0x28223BE20](v44);
  v11 = &v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_22F73F690();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v43 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v43 - v18;
  MEMORY[0x28223BE20](v20);
  v22 = &v43 - v21;
  v23 = sub_22F73F9B0();
  v24 = *(v23 - 8);
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v23);
  v27 = &v43 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = sub_22F73F090();
  v46 = *(v59 - 8);
  v28 = *(v46 + 64);
  MEMORY[0x28223BE20](v59);
  v30 = &v43 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22F73F970();
  sub_22F73F650();
  sub_22F73F800();
  (*(v13 + 16))(v16, v19, v12);
  v58 = v30;
  sub_22F73F050();
  v31 = *(v13 + 8);
  v31(v19, v12);
  v31(v22, v12);
  (*(v24 + 8))(v27, v23);
  result = [v60 count];
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    if (result)
    {
      v33 = 0;
      v49 = (v47 + 16);
      v50 += 16;
      v47 += 8;
      v48 = (v46 + 16);
      v34 = MEMORY[0x277D84F90];
      v35 = v57;
      v37 = v44;
      v36 = v45;
      v51 = result;
      do
      {
        v38 = [v60 objectAtIndexedSubscript_];
        (*v50)(v52, v56, v53);
        v39 = v38;
        sub_22F740360();
        (*v49)(v36, v11, v37);
        (*v48)(v36 + *(v55 + 20), v58, v59);
        sub_22F13C46C(v36, v35);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v34 = sub_22F13DB78(0, v34[2] + 1, 1, v34);
        }

        v41 = v34[2];
        v40 = v34[3];
        if (v41 >= v40 >> 1)
        {
          v34 = sub_22F13DB78(v40 > 1, v41 + 1, 1, v34);
        }

        ++v33;

        sub_22F13DBA0(v36);
        (*v47)(v11, v37);
        v34[2] = v41 + 1;
        v42 = v34 + ((*(v54 + 80) + 32) & ~*(v54 + 80)) + *(v54 + 72) * v41;
        v35 = v57;
        sub_22F13DBFC(v57, v42);
      }

      while (v51 != v33);
    }

    else
    {
      v34 = MEMORY[0x277D84F90];
    }

    (*(v46 + 8))(v58, v59);
    return v34;
  }

  return result;
}

uint64_t sub_22F2E7BA8()
{
  v1 = OBJC_IVAR____TtC11PhotosGraph12RecentPeople_supportsFutureLookup;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_22F2E7BEC(char a1)
{
  v3 = OBJC_IVAR____TtC11PhotosGraph12RecentPeople_supportsFutureLookup;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t *sub_22F2E7D14(char *a1, uint64_t *a2)
{
  v3 = v2;
  v73 = *v3;
  v6 = sub_22F740460();
  v67 = *(v6 - 8);
  v68 = v6;
  v7 = *(v67 + 64);
  MEMORY[0x28223BE20](v6);
  v66 = &v66 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_22F73F990();
  v70 = *(v9 - 8);
  v71 = v9;
  v10 = *(v70 + 64);
  MEMORY[0x28223BE20](v9);
  v69 = &v66 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_22F73F9B0();
  v77 = *(v12 - 8);
  v78 = v12;
  v13 = *(v77 + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v66 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_22F73F690();
  v75 = *(v16 - 8);
  v76 = v16;
  v17 = *(v75 + 64);
  MEMORY[0x28223BE20](v16);
  v19 = &v66 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB40E0, &unk_22F779200);
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x28223BE20](v20 - 8);
  v23 = &v66 - v22;
  v24 = sub_22F73F090();
  v80 = *(v24 - 8);
  v81 = v24;
  v25 = *(v80 + 64);
  MEMORY[0x28223BE20](v24);
  v79 = &v66 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = *a1;
  *(v3 + 16) = 1;
  sub_22F740B80();
  *(v3 + OBJC_IVAR____TtC11PhotosGraph12RecentPeople_supportsFutureLookup) = 0;
  *(v3 + OBJC_IVAR____TtC11PhotosGraph12RecentPeople_futureLookupResults) = 0;
  v72 = OBJC_IVAR____TtC11PhotosGraph12RecentPeople_triggerResults;
  *(v3 + OBJC_IVAR____TtC11PhotosGraph12RecentPeople_triggerResults) = MEMORY[0x277D84F90];
  v29 = a2[3];
  v28 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v29);
  v30 = (*(v28 + 16))(v29, v28);
  if (v30)
  {
    v31 = v30;
    v32 = a2[3];
    v33 = a2[4];
    v74 = a2;
    __swift_project_boxed_opaque_existential_1(a2, v32);
    (*(v33 + 8))(v32, v33);
    sub_22F73F970();
    if (v27)
    {
      sub_22F73F890();
    }

    else
    {
      v43 = v69;
      v42 = v70;
      v44 = v71;
      (*(v70 + 104))(v69, *MEMORY[0x277CC9940], v71);
      sub_22F73F8C0();
      (*(v42 + 8))(v43, v44);
    }

    v45 = v79;
    (*(v77 + 8))(v15, v78);
    (*(v75 + 8))(v19, v76);
    v47 = v80;
    v46 = v81;
    if ((*(v80 + 48))(v23, 1, v81) == 1)
    {

      sub_22F1EDFCC(v23);
    }

    else
    {
      (*(v47 + 32))(v45, v23, v46);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0E68, &qword_22F771210);
      v48 = *(v47 + 72);
      v49 = (*(v47 + 80) + 32) & ~*(v47 + 80);
      v50 = swift_allocObject();
      *(v50 + 16) = xmmword_22F771340;
      v51 = (*(v47 + 16))(v50 + v49, v45, v46);
      MEMORY[0x28223BE20](v51);
      *(&v66 - 2) = v50;
      *(&v66 - 1) = v31;
      v52 = sub_22F2A1FCC(sub_22F29B650, (&v66 - 4));

      v53 = v74[3];
      v54 = v74[4];
      __swift_project_boxed_opaque_existential_1(v74, v53);
      v55 = sub_22F2A6EB8(v52, v53, v54);

      if (v55)
      {
        v56 = v45;
        v58 = v66;
        v57 = v67;
        v59 = v68;
        (*(v67 + 104))(v66, *MEMORY[0x277D3C468], v68);
        v60 = static CollectionTrigger.generateTriggerResults(from:type:)(v55, v58);

        (*(v57 + 8))(v58, v59);
        (*(v47 + 8))(v56, v46);
        v61 = v72;
        swift_beginAccess();
        v62 = *(v3 + v61);
        *(v3 + v61) = v60;
      }

      else
      {

        (*(v47 + 8))(v45, v46);
        v63 = v72;
        swift_beginAccess();
        v64 = *(v3 + v63);
        *(v3 + v63) = MEMORY[0x277D84F90];
      }
    }

    v41 = v74;
  }

  else
  {
    v34 = sub_22F740B70();
    v35 = sub_22F7415C0();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v82 = v37;
      *v36 = 136315138;
      v38 = sub_22F742240();
      v40 = sub_22F145F20(v38, v39, &v82);

      *(v36 + 4) = v40;
      _os_log_impl(&dword_22F0FC000, v34, v35, "GraphWorkingContext not available. Skipping %s trigger", v36, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v37);
      MEMORY[0x2319033A0](v37, -1, -1);
      MEMORY[0x2319033A0](v36, -1, -1);
    }

    v41 = a2;
  }

  __swift_destroy_boxed_opaque_existential_0(v41);
  return v3;
}

uint64_t sub_22F2E852C()
{
  v1 = *v0;
  v2 = OBJC_IVAR____TtC11PhotosGraph12RecentPeople_supportsFutureLookup;
  swift_beginAccess();
  return *(v1 + v2);
}

uint64_t sub_22F2E85F8()
{
  v1 = OBJC_IVAR____TtC11PhotosGraph10RecentPets_supportsFutureLookup;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_22F2E863C(char a1)
{
  v3 = OBJC_IVAR____TtC11PhotosGraph10RecentPets_supportsFutureLookup;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_22F2E8764(char *a1, uint64_t *a2)
{
  v3 = v2;
  v6 = sub_22F740460();
  v77 = *(v6 - 8);
  v78 = v6;
  v7 = *(v77 + 64);
  MEMORY[0x28223BE20](v6);
  v76 = &v73 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_22F73F990();
  v80 = *(v9 - 8);
  v81 = v9;
  v10 = *(v80 + 64);
  MEMORY[0x28223BE20](v9);
  v79 = &v73 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_22F73F9B0();
  v85 = *(v12 - 8);
  v86 = v12;
  v13 = *(v85 + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v73 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_22F73F690();
  v83 = *(v16 - 8);
  v84 = v16;
  v17 = *(v83 + 64);
  MEMORY[0x28223BE20](v16);
  v19 = &v73 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB40E0, &unk_22F779200);
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x28223BE20](v20 - 8);
  v23 = &v73 - v22;
  v24 = sub_22F73F090();
  v25 = *(v24 - 8);
  v87 = v24;
  v88 = v25;
  v26 = *(v25 + 64);
  MEMORY[0x28223BE20](v24);
  v82 = &v73 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = *a1;
  *(v3 + 16) = 1;
  sub_22F740B80();
  *(v3 + OBJC_IVAR____TtC11PhotosGraph10RecentPets_supportsFutureLookup) = 0;
  *(v3 + OBJC_IVAR____TtC11PhotosGraph10RecentPets_futureLookupResults) = 0;
  v75 = OBJC_IVAR____TtC11PhotosGraph10RecentPets_triggerResults;
  *(v3 + OBJC_IVAR____TtC11PhotosGraph10RecentPets_triggerResults) = MEMORY[0x277D84F90];
  v29 = a2[3];
  v30 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v29);
  v31 = (*(v30 + 16))(v29, v30);
  if (!v31)
  {
    v36 = a2;
    v37 = sub_22F740B70();
    v38 = sub_22F7415C0();
    v39 = v3;
    if (os_log_type_enabled(v37, v38))
    {
      v40 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      v89 = v41;
      *v40 = 136315138;
      *(v40 + 4) = sub_22F145F20(0x6550746E65636552, 0xEA00000000007374, &v89);
      _os_log_impl(&dword_22F0FC000, v37, v38, "GraphWorkingContext not available. Skipping %s trigger", v40, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v41);
      MEMORY[0x2319033A0](v41, -1, -1);
      MEMORY[0x2319033A0](v40, -1, -1);
    }

    goto LABEL_15;
  }

  v32 = v31;
  v74 = v3;
  v33 = a2[3];
  v34 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v33);
  (*(v34 + 8))(v33, v34);
  sub_22F73F970();
  v35 = a2;
  if (v28)
  {
    sub_22F73F890();
  }

  else
  {
    v43 = v79;
    v42 = v80;
    v44 = v81;
    (*(v80 + 104))(v79, *MEMORY[0x277CC9940], v81);
    sub_22F73F8C0();
    (*(v42 + 8))(v43, v44);
  }

  v45 = v87;
  (*(v85 + 8))(v15, v86);
  (*(v83 + 8))(v19, v84);
  v46 = v88;
  if ((*(v88 + 48))(v23, 1, v45) != 1)
  {
    v47 = v82;
    (*(v46 + 32))(v82, v23, v45);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0E68, &qword_22F771210);
    v48 = *(v46 + 72);
    v49 = (*(v46 + 80) + 32) & ~*(v46 + 80);
    v50 = swift_allocObject();
    *(v50 + 16) = xmmword_22F771340;
    v51 = (*(v46 + 16))(v50 + v49, v47, v45);
    MEMORY[0x28223BE20](v51);
    *(&v73 - 2) = v50;
    *(&v73 - 1) = v32;
    v52 = v35;
    v53 = sub_22F2A1FCC(sub_22F29B648, (&v73 - 4));

    v54 = v52[3];
    v55 = v52[4];
    v36 = v52;
    __swift_project_boxed_opaque_existential_1(v52, v54);
    v56 = (*(v55 + 24))(v54, v55);
    v57 = [v56 librarySpecificFetchOptions];

    [v57 setPersonContext_];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB13D0, &qword_22F7717F0);
    v58 = swift_allocObject();
    *(v58 + 16) = xmmword_22F771350;
    *(v58 + 32) = sub_22F742140();
    *(v58 + 40) = sub_22F742140();
    sub_22F170D8C();
    v59 = sub_22F741160();

    [v57 setIncludedDetectionTypes_];

    v60 = *(v53 + 16);
    if (v60)
    {
      v61 = sub_22F10B348(*(v53 + 16), 0);
      v62 = sub_22F11A438(&v89, v61 + 4, v60, v53);
      sub_22F1534EC();
      if (v62 == v60)
      {
LABEL_14:
        v39 = v74;
        v63 = objc_opt_self();
        v64 = sub_22F741160();

        v65 = [v63 fetchPersonsWithLocalIdentifiers:v64 options:v57];

        v67 = v76;
        v66 = v77;
        v68 = v78;
        (*(v77 + 104))(v76, *MEMORY[0x277D3C468], v78);
        v69 = sub_22F2E7514(v65, v67);

        (*(v66 + 8))(v67, v68);
        (*(v88 + 8))(v82, v45);
        v70 = v75;
        swift_beginAccess();
        v71 = *(v39 + v70);
        *(v39 + v70) = v69;

LABEL_15:
        v35 = v36;
        goto LABEL_16;
      }

      __break(1u);
    }

    goto LABEL_14;
  }

  sub_22F1EDFCC(v23);
  v39 = v74;
LABEL_16:
  __swift_destroy_boxed_opaque_existential_0(v35);
  return v39;
}

uint64_t sub_22F2E9078()
{
  v1 = *v0;
  v2 = OBJC_IVAR____TtC11PhotosGraph10RecentPets_supportsFutureLookup;
  swift_beginAccess();
  return *(v1 + v2);
}

uint64_t sub_22F2E92E4()
{
  result = sub_22F740B90();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

id static MusicFeatureExtractionContext.flexMusicFeatureExtractionContext(photoLibrary:useMoodKeywords:flexSongProvider:)(void *a1, void *a2, void *a3)
{
  v8 = &type metadata for FlexMusicSongKeywordProvider;
  v9 = &protocol witness table for FlexMusicSongKeywordProvider;
  v7 = -1;
  v6[0] = _s11PhotosGraph16FlexMusicCuratorC06usableC5Songs4fromSayAA0cD12SongProtocol_pGAA0cdi8ProviderJ0_pSg_tFZ_0(a3);
  v6[1] = 0;
  return sub_22F2E9C2C(a1, v6, a2);
}

uint64_t MusicFeatureExtractionContext.keywordsDataFrame()()
{
  v1 = v0 + OBJC_IVAR___PGMusicFeatureExtractionContext_songKeywordProvider;
  swift_beginAccess();
  v2 = *(v1 + 24);
  v3 = *(v1 + 32);
  __swift_mutable_project_boxed_opaque_existential_1(v1, v2);
  v4 = (*(v3 + 8))(v2, v3);
  LOBYTE(v2) = v5;
  swift_endAccess();
  if (v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB1518, &qword_22F77A7E0);
    swift_willThrowTypedImpl();
  }

  return v4;
}

uint64_t MusicFeatureExtractionContext.flexSongProvider.getter()
{
  v1 = *(v0 + OBJC_IVAR___PGMusicFeatureExtractionContext_flexSongProvider);
  v2 = *(v0 + OBJC_IVAR___PGMusicFeatureExtractionContext_flexSongProvider + 8);

  return v1;
}

id MusicFeatureExtractionContext.__allocating_init(configuration:photoLibrary:songKeywordProvider:useMoodKeywords:flexSongProvider:)(const void *a1, uint64_t a2, uint64_t *a3, char a4, uint64_t a5, uint64_t a6)
{
  v13 = a3[3];
  v14 = a3[4];
  v15 = __swift_mutable_project_boxed_opaque_existential_1(a3, v13);
  v16 = sub_22F2E9E54(a1, a2, v15, a4, a5, a6, v6, v13, v14);
  __swift_destroy_boxed_opaque_existential_0(a3);
  return v16;
}

id MusicFeatureExtractionContext.init(configuration:photoLibrary:songKeywordProvider:useMoodKeywords:flexSongProvider:)(const void *a1, uint64_t a2, uint64_t *a3, char a4, uint64_t a5, uint64_t a6)
{
  v13 = a3[3];
  v14 = a3[4];
  v15 = __swift_mutable_project_boxed_opaque_existential_1(a3, v13);
  v16 = *(*(v13 - 8) + 64);
  v17 = MEMORY[0x28223BE20](v15);
  v19 = &v23 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v20 + 16))(v19, v17);
  v21 = sub_22F2E9B04(a1, a2, v19, a4, a5, a6, v6, v13, v14);
  __swift_destroy_boxed_opaque_existential_0(a3);
  return v21;
}

id MusicFeatureExtractionContext.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id MusicFeatureExtractionContext.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_22F2E9B04(const void *a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, _BYTE *a7, uint64_t a8, uint64_t a9)
{
  ObjectType = swift_getObjectType();
  v23[3] = a8;
  v23[4] = a9;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v23);
  (*(*(a8 - 8) + 32))(boxed_opaque_existential_1, a3, a8);
  memcpy(&a7[OBJC_IVAR___PGMusicFeatureExtractionContext_configuration], a1, 0x16CuLL);
  *&a7[OBJC_IVAR___PGMusicFeatureExtractionContext_photoLibrary] = a2;
  sub_22F15C30C(v23, &a7[OBJC_IVAR___PGMusicFeatureExtractionContext_songKeywordProvider]);
  a7[OBJC_IVAR___PGMusicFeatureExtractionContext_useMoodKeywords] = a4;
  v19 = &a7[OBJC_IVAR___PGMusicFeatureExtractionContext_flexSongProvider];
  *v19 = a5;
  v19[1] = a6;
  v22.receiver = a7;
  v22.super_class = ObjectType;
  v20 = objc_msgSendSuper2(&v22, sel_init);
  __swift_destroy_boxed_opaque_existential_0(v23);
  return v20;
}

id sub_22F2E9C2C(void *a1, uint64_t *a2, id a3)
{
  static MusicCuratorConfiguration.defaultConfiguration()(__src);
  if (v3)
  {
    __swift_destroy_boxed_opaque_existential_0(a2);
  }

  else
  {
    memcpy(__dst, __src, sizeof(__dst));
    sub_22F15C30C(a2, v12);
    v7 = type metadata accessor for MusicFeatureExtractionContext();
    v8 = objc_allocWithZone(v7);
    memcpy(&v8[OBJC_IVAR___PGMusicFeatureExtractionContext_configuration], __dst, 0x16CuLL);
    *&v8[OBJC_IVAR___PGMusicFeatureExtractionContext_photoLibrary] = a1;
    sub_22F15C30C(v12, &v8[OBJC_IVAR___PGMusicFeatureExtractionContext_songKeywordProvider]);
    v8[OBJC_IVAR___PGMusicFeatureExtractionContext_useMoodKeywords] = a3 & 1;
    v9 = &v8[OBJC_IVAR___PGMusicFeatureExtractionContext_flexSongProvider];
    *v9 = 0;
    v9[1] = 0;
    v11.receiver = v8;
    v11.super_class = v7;
    a3 = objc_msgSendSuper2(&v11, sel_init);
    __swift_destroy_boxed_opaque_existential_0(a2);
    __swift_destroy_boxed_opaque_existential_0(v12);
  }

  return a3;
}

id _s11PhotosGraph29MusicFeatureExtractionContextC05applecdeF04withAcA0c7CuratorF0C_tFZ_0(uint64_t a1)
{
  memcpy(__dst, (a1 + OBJC_IVAR___PGMusicCuratorContext_configuration), sizeof(__dst));
  v2 = *(a1 + OBJC_IVAR___PGMusicCuratorContext_photoLibrary);
  v3 = type metadata accessor for MusicFeatureExtractionContext();
  v4 = objc_allocWithZone(v3);
  v12 = &type metadata for AppleMusicSongKeywordProvider;
  v13 = &protocol witness table for AppleMusicSongKeywordProvider;
  v10 = 0;
  v11 = -1;
  memcpy(&v4[OBJC_IVAR___PGMusicFeatureExtractionContext_configuration], __dst, 0x16CuLL);
  *&v4[OBJC_IVAR___PGMusicFeatureExtractionContext_photoLibrary] = v2;
  sub_22F15C30C(&v10, &v4[OBJC_IVAR___PGMusicFeatureExtractionContext_songKeywordProvider]);
  v4[OBJC_IVAR___PGMusicFeatureExtractionContext_useMoodKeywords] = 0;
  v5 = &v4[OBJC_IVAR___PGMusicFeatureExtractionContext_flexSongProvider];
  *v5 = 0;
  v5[1] = 0;
  v9.receiver = v4;
  v9.super_class = v3;
  v6 = v2;
  v7 = objc_msgSendSuper2(&v9, sel_init);
  __swift_destroy_boxed_opaque_existential_0(&v10);
  return v7;
}

id sub_22F2E9E54(const void *a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v23 = a6;
  v15 = *(a8 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](a1);
  v18 = &v22 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = objc_allocWithZone(v19);
  (*(v15 + 16))(v18, a3, a8);
  return sub_22F2E9B04(a1, a2, v18, a4, a5, v23, v20, a8, a9);
}

id _s11PhotosGraph29MusicFeatureExtractionContextC04flexcdeF04withAcA0c7CuratorF0C_tFZ_0(uint64_t a1)
{
  memcpy(__dst, (a1 + OBJC_IVAR___PGMusicCuratorContext_configuration), sizeof(__dst));
  v2 = *(a1 + OBJC_IVAR___PGMusicCuratorContext_photoLibrary);
  v3 = sub_22F2A8AE4();
  v4 = type metadata accessor for MusicFeatureExtractionContext();
  v5 = objc_allocWithZone(v4);
  v13 = &type metadata for FlexMusicSongKeywordProvider;
  v14 = &protocol witness table for FlexMusicSongKeywordProvider;
  v11[0] = v3;
  v11[1] = 0;
  v12 = -1;
  memcpy(&v5[OBJC_IVAR___PGMusicFeatureExtractionContext_configuration], __dst, 0x16CuLL);
  *&v5[OBJC_IVAR___PGMusicFeatureExtractionContext_photoLibrary] = v2;
  sub_22F15C30C(v11, &v5[OBJC_IVAR___PGMusicFeatureExtractionContext_songKeywordProvider]);
  v5[OBJC_IVAR___PGMusicFeatureExtractionContext_useMoodKeywords] = 0;
  v6 = &v5[OBJC_IVAR___PGMusicFeatureExtractionContext_flexSongProvider];
  *v6 = 0;
  v6[1] = 0;

  sub_22F256018(0, 255);
  v10.receiver = v5;
  v10.super_class = v4;
  v7 = v2;
  v8 = objc_msgSendSuper2(&v10, sel_init);

  sub_22F255F20(0, 255);
  __swift_destroy_boxed_opaque_existential_0(v11);
  return v8;
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

uint64_t sub_22F2EA170(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (!v1)
  {
    return v2;
  }

  v30 = MEMORY[0x277D84F90];
  sub_22F146454(0, v1, 0);
  v2 = v30;
  v4 = -1 << *(a1 + 32);
  v29 = a1 + 56;
  result = sub_22F741980();
  v6 = result;
  v7 = 0;
  v28 = v1;
  while ((v6 & 0x8000000000000000) == 0 && v6 < 1 << *(a1 + 32))
  {
    v10 = v6 >> 6;
    if ((*(v29 + 8 * (v6 >> 6)) & (1 << v6)) == 0)
    {
      goto LABEL_21;
    }

    v11 = *(a1 + 36);
    v12 = (*(a1 + 48) + 16 * v6);
    v13 = *v12;
    v14 = v12[1];
    result = sub_22F740EA0();
    v17 = *(v30 + 16);
    v16 = *(v30 + 24);
    if (v17 >= v16 >> 1)
    {
      v26 = v15;
      v27 = result;
      sub_22F146454((v16 > 1), v17 + 1, 1);
      v15 = v26;
      result = v27;
    }

    *(v30 + 16) = v17 + 1;
    v18 = v30 + 16 * v17;
    *(v18 + 32) = result;
    *(v18 + 40) = v15;
    v8 = 1 << *(a1 + 32);
    if (v6 >= v8)
    {
      goto LABEL_22;
    }

    v19 = *(v29 + 8 * v10);
    if ((v19 & (1 << v6)) == 0)
    {
      goto LABEL_23;
    }

    if (v11 != *(a1 + 36))
    {
      goto LABEL_24;
    }

    v20 = v19 & (-2 << (v6 & 0x3F));
    if (v20)
    {
      v8 = __clz(__rbit64(v20)) | v6 & 0x7FFFFFFFFFFFFFC0;
      v9 = v28;
    }

    else
    {
      v21 = v10 << 6;
      v22 = v10 + 1;
      v9 = v28;
      v23 = (a1 + 64 + 8 * v10);
      while (v22 < (v8 + 63) >> 6)
      {
        v25 = *v23++;
        v24 = v25;
        v21 += 64;
        ++v22;
        if (v25)
        {
          result = sub_22F107D18(v6, v11, 0);
          v8 = __clz(__rbit64(v24)) + v21;
          goto LABEL_4;
        }
      }

      result = sub_22F107D18(v6, v11, 0);
    }

LABEL_4:
    ++v7;
    v6 = v8;
    if (v7 == v9)
    {
      return v2;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

void sub_22F2EA398(unint64_t a1)
{
  v1 = a1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    sub_22F7419C0();
    type metadata accessor for SongEntry();
    sub_22F2F4568();
    sub_22F741470();
    v1 = v14[1];
    v2 = v14[2];
    v3 = v14[3];
    v4 = v14[4];
    v5 = v14[5];
  }

  else
  {
    v4 = 0;
    v6 = -1 << *(a1 + 32);
    v2 = (a1 + 56);
    v3 = ~v6;
    v7 = -v6;
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v5 = (v8 & *(a1 + 56));
  }

  if ((v1 & 0x8000000000000000) != 0)
  {
    goto LABEL_14;
  }

  while (1)
  {
    v9 = v4;
    v10 = v5;
    v11 = v4;
    if (!v5)
    {
      break;
    }

LABEL_12:
    v12 = (v10 - 1) & v10;
    v13 = *(*(v1 + 48) + ((v11 << 9) | (8 * __clz(__rbit64(v10)))));
    if (!v13)
    {
LABEL_18:
      sub_22F0FF590();
      return;
    }

    while (1)
    {
      sub_22F10C6E4(v14, v13);

      v4 = v11;
      v5 = v12;
      if ((v1 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_14:
      if (sub_22F741A40())
      {
        type metadata accessor for SongEntry();
        swift_dynamicCast();
        v13 = v14[0];
        v11 = v4;
        v12 = v5;
        if (v14[0])
        {
          continue;
        }
      }

      goto LABEL_18;
    }
  }

  while (1)
  {
    v11 = (v9 + 1);
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v11 >= ((v3 + 64) >> 6))
    {
      goto LABEL_18;
    }

    v10 = v2[v11];
    ++v9;
    if (v10)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
}

uint64_t sub_22F2EA558(uint64_t a1)
{
  v2 = type metadata accessor for Song();
  v21 = *(v2 - 8);
  v3 = *(v21 + 64);
  v4 = MEMORY[0x28223BE20](v2 - 8);
  v6 = (&v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v20 - v8;
  result = MEMORY[0x28223BE20](v7);
  v12 = &v20 - v11;
  v13 = 0;
  v14 = 1 << *(a1 + 32);
  v15 = -1;
  if (v14 < 64)
  {
    v15 = ~(-1 << v14);
  }

  v16 = v15 & *(a1 + 56);
  for (i = (v14 + 63) >> 6; v16; result = sub_22F2F4070(v9, type metadata accessor for Song))
  {
    v18 = v13;
LABEL_9:
    v19 = __clz(__rbit64(v16));
    v16 &= v16 - 1;
    sub_22F2F3FA0(*(a1 + 48) + *(v21 + 72) * (v19 | (v18 << 6)), v12, type metadata accessor for Song);
    sub_22F2F4008(v12, v6, type metadata accessor for Song);
    sub_22F10C40C(v9, v6);
  }

  while (1)
  {
    v18 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v18 >= i)
    {
    }

    v16 = *(a1 + 56 + 8 * v18);
    ++v13;
    if (v16)
    {
      v13 = v18;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

void sub_22F2EA740(uint64_t a1)
{
  v2 = type metadata accessor for Song();
  v20 = *(v2 - 8);
  v3 = *(v20 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = (&v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v6);
  v8 = &v19 - v7;
  MEMORY[0x28223BE20](v9);
  v11 = &v19 - v10;
  v12 = 0;
  v13 = 1 << *(a1 + 32);
  v14 = -1;
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  v15 = v14 & *(a1 + 64);
  v16 = (v13 + 63) >> 6;
  while (v15)
  {
    v17 = v12;
LABEL_9:
    v18 = __clz(__rbit64(v15));
    v15 &= v15 - 1;
    sub_22F2F3FA0(*(a1 + 48) + *(v20 + 72) * (v18 | (v17 << 6)), v11, type metadata accessor for Song);
    sub_22F2F4008(v11, v5, type metadata accessor for Song);
    sub_22F10C40C(v8, v5);
    sub_22F2F4070(v8, type metadata accessor for Song);
  }

  while (1)
  {
    v17 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v17 >= v16)
    {

      return;
    }

    v15 = *(a1 + 64 + 8 * v17);
    ++v12;
    if (v15)
    {
      v12 = v17;
      goto LABEL_9;
    }
  }

  __break(1u);
}

uint64_t sub_22F2EA928(uint64_t result)
{
  v1 = result;
  v2 = 0;
  v3 = result + 64;
  v4 = 1 << *(result + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(result + 64);
  v7 = (v4 + 63) >> 6;
  if (v6)
  {
    while (1)
    {
      v8 = v2;
LABEL_9:
      v9 = __clz(__rbit64(v6));
      v6 &= v6 - 1;
      v10 = (*(v1 + 48) + ((v8 << 10) | (16 * v9)));
      v11 = *v10;
      v12 = v10[1];

      sub_22F10BBDC(&v13, v11, v12);

      if (!v6)
      {
        goto LABEL_5;
      }
    }
  }

  while (1)
  {
LABEL_5:
    v8 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      __break(1u);
      return result;
    }

    if (v8 >= v7)
    {
      break;
    }

    v6 = *(v3 + 8 * v8);
    ++v2;
    if (v6)
    {
      v2 = v8;
      goto LABEL_9;
    }
  }
}

uint64_t sub_22F2EAA2C(uint64_t result)
{
  v1 = result;
  v2 = 0;
  v3 = result + 56;
  v4 = 1 << *(result + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(result + 56);
  v7 = (v4 + 63) >> 6;
  if (v6)
  {
    while (1)
    {
      v8 = v2;
LABEL_9:
      v9 = __clz(__rbit64(v6));
      v6 &= v6 - 1;
      v10 = (*(v1 + 48) + ((v8 << 10) | (16 * v9)));
      v11 = *v10;
      v12 = v10[1];

      sub_22F10BBDC(&v13, v11, v12);

      if (!v6)
      {
        goto LABEL_5;
      }
    }
  }

  while (1)
  {
LABEL_5:
    v8 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      __break(1u);
      return result;
    }

    if (v8 >= v7)
    {
      break;
    }

    v6 = *(v3 + 8 * v8);
    ++v2;
    if (v6)
    {
      v2 = v8;
      goto LABEL_9;
    }
  }
}

void sub_22F2EAB30(void **a1)
{
  v2 = *(sub_22F73FFC0() - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_22F3F6594(v3);
  }

  v4 = v3[2];
  v5[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v5[1] = v4;
  sub_22F2F1038(v5);
  *a1 = v3;
}

uint64_t sub_22F2EABD8()
{
  v0 = sub_22F740B90();
  __swift_allocate_value_buffer(v0, qword_2810B5038);
  v1 = __swift_project_value_buffer(v0, qword_2810B5038);
  if (qword_2810A9438 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_2810B4D30);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t PersonalTraitMomentGraphDataSource.init(configuration:storyPhotoLibraryContext:graph:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  if (qword_2810A9B88 != -1)
  {
    swift_once();
  }

  v8 = qword_2810B4E68;
  *&v9 = CACurrentMediaTime();
  sub_22F1B560C("PersonalTraitMomentGraphDataSource init", 39, 2u, v9, 0, v8, v57);
  v10 = sub_22F740820();
  v54 = *(v10 - 8);
  (*(v54 + 16))(a4, a1, v10);
  v11 = type metadata accessor for PersonalTraitMomentGraphDataSource(0);
  v12 = v11[5];
  v13 = sub_22F740620();
  v52 = *(v13 - 8);
  v53 = v13;
  (*(v52 + 16))(a4 + v12, a2);
  *(a4 + v11[6]) = a3;
  v58 = a3;
  v14 = sub_22F740800();
  v15 = *(v14 + 16);
  v55 = v10;
  if (v15)
  {
    v16 = sub_22F10B348(v15, 0);
    v17 = sub_22F11A438(&v56, v16 + 4, v15, v14);
    sub_22F0FF590();
    if (v17 != v15)
    {
      __break(1u);
      goto LABEL_12;
    }
  }

  else
  {
  }

  v18 = objc_opt_self();
  v19 = sub_22F741160();

  v20 = v58;
  v21 = [v18 meaningNodesWithMeaningLabels:v19 inGraph:v58];

  v22 = objc_opt_self();
  v23 = v21;
  v24 = [v22 highPrecisionFilter];
  v25 = [v24 inRelation];

  v26 = [objc_msgSend(v23 graph)];
  swift_unknownObjectRelease();
  v27 = [v26 concreteGraph];

  if (v27)
  {
    v50 = a2;
    v51 = a1;
    v28 = [v23 elementIdentifiers];
    v29 = [v27 adjacencyWithSources:v28 relation:v25];

    v30 = (a4 + v11[7]);
    *v30 = v29;
    v30[1] = v27;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB3478, &unk_22F783BA0);
    v31 = [swift_getObjCClassFromMetadata() nodesInGraph_];
    v32 = objc_opt_self();
    v33 = v31;
    v34 = [v32 anniversaryMomentOfPerson];
    v35 = [objc_msgSend(v33 graph)];
    swift_unknownObjectRelease();
    v36 = [v35 concreteGraph];

    if (v36)
    {
      v37 = [v33 elementIdentifiers];
      v38 = [v36 adjacencyWithSources:v37 relation:v34];

      swift_unknownObjectRetain();
      v39 = [v38 transposed];
      swift_unknownObjectRelease();

      v40 = (a4 + v11[8]);
      *v40 = v39;
      v40[1] = v36;
      v41 = v33;
      v42 = [v32 birthdayMomentOfPerson];
      v43 = [objc_msgSend(v41 graph)];
      swift_unknownObjectRelease();
      v44 = [v43 concreteGraph];

      if (v44)
      {
        v45 = [v41 elementIdentifiers];
        v46 = [v44 adjacencyWithSources:v45 relation:v42];

        swift_unknownObjectRetain();
        v47 = [v46 transposed];
        swift_unknownObjectRelease();

        v48 = (a4 + v11[9]);
        *v48 = v47;
        v48[1] = v44;
        sub_22F1B2BBC(0);

        (*(v52 + 8))(v50, v53);
        return (*(v54 + 8))(v51, v55);
      }
    }
  }

LABEL_12:
  result = sub_22F741D40();
  __break(1u);
  return result;
}