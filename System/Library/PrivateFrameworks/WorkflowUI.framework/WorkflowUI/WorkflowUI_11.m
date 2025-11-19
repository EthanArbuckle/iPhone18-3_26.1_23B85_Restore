uint64_t sub_274810B18()
{
  v1 = *(v0 + 16);
  if (v1 == 254)
  {
LABEL_9:
    v2 = 2;
  }

  else
  {
    if (v1 != 255)
    {
      v3 = *v0;
      v4 = v0[1];
      MEMORY[0x277C5FB60](1);
      switch(v1)
      {
        case 1:
          v5 = 1;
          goto LABEL_12;
        case 2:
          v5 = 3;
LABEL_12:
          MEMORY[0x277C5FB60](v5);
          OUTLINED_FUNCTION_32_1();

          return sub_2749FCE24();
        case 3:
          if (!(v3 | v4))
          {
            goto LABEL_9;
          }

          v2 = 4;
          return MEMORY[0x277C5FB60](v2);
        default:
          MEMORY[0x277C5FB60](0);
          break;
      }
    }

    v2 = 0;
  }

  return MEMORY[0x277C5FB60](v2);
}

uint64_t sub_274810BEC()
{
  v2 = *v0;
  v1 = v0[1];
  v3 = *(v0 + 16);
  sub_2749FDDF4();
  if (v3 == 254)
  {
LABEL_9:
    v4 = 2;
  }

  else
  {
    if (v3 != 255)
    {
      MEMORY[0x277C5FB60](1);
      switch(v3)
      {
        case 1:
          v5 = 1;
          goto LABEL_13;
        case 2:
          v5 = 3;
LABEL_13:
          MEMORY[0x277C5FB60](v5);
          sub_2749FCE24();
          return sub_2749FDE44();
        case 3:
          if (!(v2 | v1))
          {
            goto LABEL_9;
          }

          v4 = 4;
          goto LABEL_10;
        default:
          MEMORY[0x277C5FB60](0);
          break;
      }
    }

    v4 = 0;
  }

LABEL_10:
  MEMORY[0x277C5FB60](v4);
  return sub_2749FDE44();
}

uint64_t sub_274810CDC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v57 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096A0A0);
  OUTLINED_FUNCTION_43();
  v52 = v3;
  v53 = v4;
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v5);
  v56 = &v49 - v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096A0A8);
  OUTLINED_FUNCTION_43();
  v54 = v8;
  v55 = v7;
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v9);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096A0B0);
  OUTLINED_FUNCTION_43();
  v51 = v11;
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v12);
  v14 = &v49 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096A0B8);
  OUTLINED_FUNCTION_43();
  v58 = v16;
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v17);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_274813B10();
  v18 = v61;
  sub_2749FDE74();
  if (v18)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v49 = v10;
  v50 = v14;
  v61 = a1;
  v19 = sub_2749FDBF4();
  result = sub_27493D810(v19, 0);
  v24 = v15;
  if (v22 == v23 >> 1)
  {
LABEL_9:
    v32 = sub_2749FD9B4();
    swift_allocError();
    v34 = v33;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096A0C8);
    *v34 = &type metadata for SmartShortcutPickerViewLayout.SectionFilter;
    sub_2749FDBA4();
    sub_2749FD9A4();
    (*(*(v32 - 8) + 104))(v34, *MEMORY[0x277D84160], v32);
    swift_willThrow();
    swift_unknownObjectRelease();
    v35 = OUTLINED_FUNCTION_20_11();
    v36(v35, v24);
    a1 = v61;
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  if (v22 < (v23 >> 1))
  {
    v25 = v15;
    v26 = *(v21 + v22);
    sub_27493D804(v22 + 1);
    v28 = v27;
    v30 = v29;
    swift_unknownObjectRelease();
    if (v28 == v30 >> 1)
    {
      if (v26)
      {
        if (v26 == 1)
        {
          LOBYTE(v59) = 1;
          sub_274813C04();
          OUTLINED_FUNCTION_21_10();
          v31 = v57;
          sub_274813C58();
          sub_2749FDBE4();
          swift_unknownObjectRelease();
          v43 = OUTLINED_FUNCTION_36_7();
          v44(v43);
          v45 = OUTLINED_FUNCTION_20_11();
          v46(v45, v25);
          v47 = v59;
          v48 = v60;
LABEL_14:
          *v31 = v47;
          *(v31 + 16) = v48;
          return __swift_destroy_boxed_opaque_existential_0(v61);
        }

        LOBYTE(v59) = 2;
        sub_274813BB0();
        v38 = v56;
        OUTLINED_FUNCTION_21_10();
        swift_unknownObjectRelease();
        (*(v53 + 8))(v38, v52);
        v41 = OUTLINED_FUNCTION_17_9();
        v42(v41);
        v47 = 0uLL;
        v48 = -2;
      }

      else
      {
        LOBYTE(v59) = 0;
        sub_274813CAC();
        v37 = v50;
        OUTLINED_FUNCTION_21_10();
        swift_unknownObjectRelease();
        (*(v51 + 8))(v37, v49);
        v39 = OUTLINED_FUNCTION_17_9();
        v40(v39);
        v47 = 0uLL;
        v48 = -1;
      }

      v31 = v57;
      goto LABEL_14;
    }

    v24 = v25;
    goto LABEL_9;
  }

  __break(1u);
  return result;
}

uint64_t sub_2748112E4()
{
  swift_getKeyPath();
  swift_getKeyPath();
  OUTLINED_FUNCTION_32_1();
  sub_2749FA904();

  return v1;
}

uint64_t sub_274811354()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_2749FA914();
}

uint64_t sub_2748113C8@<X0>(_BYTE *a1@<X8>)
{
  result = OUTLINED_FUNCTION_28_0();
  *a1 = result & 1;
  return result;
}

uint64_t sub_2748113F4(uint64_t a1)
{
  v2 = sub_274813CAC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_274811430(uint64_t a1)
{
  v2 = sub_274813CAC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_274811474@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_274810560(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_27481149C(uint64_t a1)
{
  v2 = sub_274813B10();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2748114D8(uint64_t a1)
{
  v2 = sub_274813B10();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_27481151C()
{
  sub_2749FDDF4();
  MEMORY[0x277C5FB60](0);
  return sub_2749FDE44();
}

uint64_t sub_274811560@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2748106CC(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_27481158C(uint64_t a1)
{
  v2 = sub_274813C04();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2748115C8(uint64_t a1)
{
  v2 = sub_274813C04();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_274811604(uint64_t a1)
{
  v2 = sub_274813BB0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_274811640(uint64_t a1)
{
  v2 = sub_274813BB0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2748116B4()
{
  sub_2749FDDF4();
  sub_274810B18();
  return sub_2749FDE44();
}

uint64_t sub_274811708(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = a2[1];
  v5 = *(a2 + 16);
  swift_beginAccess();
  type metadata accessor for SmartShortcutPickerDataSource();
  sub_2749FA8C4();
  swift_endAccess();
  v6 = v2 + OBJC_IVAR____TtC10WorkflowUI29SmartShortcutPickerViewLayout_filter;
  *v6 = v3;
  *(v6 + 8) = v4;
  *(v6 + 16) = v5;
  return v2;
}

void sub_2748117A8(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = *(a1 + 16);
  v6 = sub_2748122C0(a1);
  v7 = sub_2748121CC(v6);
  v96.n128_u64[0] = v6;
  sub_2747828F8(v7);
  v8 = *(v6 + 16);
  if (v5 == 2)
  {
    v9 = 0;
    v10 = 32;
    while (1)
    {
      if (v8 == v9)
      {

        *(a2 + 41) = 0u;
        a2[1] = 0u;
        a2[2] = 0u;
        *a2 = 0u;
        return;
      }

      if (v9 >= *(v6 + 16))
      {
        break;
      }

      *&v13 = OUTLINED_FUNCTION_6_15((v6 + v10)).n128_u64[0];
      switch(v97.n128_u8[0])
      {
        case 1u:

          v14 = OUTLINED_FUNCTION_11_0();
          goto LABEL_11;
        case 2u:

          v14 = OUTLINED_FUNCTION_12();
          goto LABEL_11;
        case 3u:
          if (*&v96 == 0)
          {
            OUTLINED_FUNCTION_48_1(v11, v12, v13);

            v60 = OUTLINED_FUNCTION_66();
            OUTLINED_FUNCTION_39_6(v60, v61);
            OUTLINED_FUNCTION_23_9();
            sub_27478C4DC(v62, v63, v64);
            v65 = v97;
            *a2 = v96;
            a2[1] = v65;
            a2[2] = *v98.arr;
            *(a2 + 41) = *&v98.arr[9];
            return;
          }

          v14 = OUTLINED_FUNCTION_66();
          v16 = 3;
LABEL_11:
          sub_27478C4DC(v14, v15, v16);
          OUTLINED_FUNCTION_23_9();
          sub_27478C4DC(v17, v18, v19);
          v10 += 64;
          ++v9;
          break;
        default:
          v14 = OUTLINED_FUNCTION_66();
          v16 = 0;
          goto LABEL_11;
      }
    }

    __break(1u);
LABEL_52:
    __break(1u);
    return;
  }

  v20 = 0;
  v21 = v5 != 3;
  v22 = v5 == 3;
  if (v3 | v4)
  {
    v22 = 0;
  }

  if (v4 != 1 || v3 != 0)
  {
    v21 = 1;
  }

  v87 = __PAIR64__(v21, v22);
  v24 = 32;
  while (2)
  {
    if (v8 == v20)
    {

      OUTLINED_FUNCTION_30_6(v52, v53, v54, v55, v56, v57, v58, v59, a2);
      return;
    }

    if (v20 >= *(v6 + 16))
    {
      goto LABEL_52;
    }

    *&v27 = OUTLINED_FUNCTION_6_15((v6 + v24)).n128_u64[0];
    switch(v97.n128_u8[0])
    {
      case 1u:
        if (v5 != 1)
        {
          v47 = OUTLINED_FUNCTION_0_23();
          v28 = OUTLINED_FUNCTION_14_4(v47, v48, 1u);
          v30 = 1;
          goto LABEL_39;
        }

        if (v96.n128_u64[0] == v4 && v96.n128_u64[1] == v3)
        {
          OUTLINED_FUNCTION_48_1(v25, v26, v27);
          v73 = OUTLINED_FUNCTION_11_0();
          sub_27477D408(v73, v74, v75);
          v76 = OUTLINED_FUNCTION_11_0();
          sub_27477D408(v76, v77, v78);
          v79 = OUTLINED_FUNCTION_11_0();
          sub_27478C4DC(v79, v80, v81);
          v82 = OUTLINED_FUNCTION_11_0();
          sub_27478C4DC(v82, v83, v84);
        }

        else
        {
          OUTLINED_FUNCTION_99();
          v34 = OUTLINED_FUNCTION_32_7();
          v35 = v34;
          OUTLINED_FUNCTION_48_1(v34, v36);
          v37 = OUTLINED_FUNCTION_11_0();
          v40 = OUTLINED_FUNCTION_14_4(v37, v38, v39);
          v42 = OUTLINED_FUNCTION_14_4(v40, v41, 1u);
          sub_27478C4DC(v42, v43, 1u);
          v44 = OUTLINED_FUNCTION_11_0();
          sub_27478C4DC(v44, v45, v46);
          if ((v35 & 1) == 0)
          {
            sub_2747D21CC(&v96);
            goto LABEL_40;
          }
        }

        goto LABEL_50;
      case 2u:
        v31 = OUTLINED_FUNCTION_0_23();
        v28 = OUTLINED_FUNCTION_14_4(v31, v32, 2u);
        v30 = 2;
        goto LABEL_39;
      case 3u:
        if (*&v96 != 0)
        {
          if ((v87 & 0x100000000) == 0)
          {
            OUTLINED_FUNCTION_48_1(v25, v26, v27);

            v71 = OUTLINED_FUNCTION_99();
            sub_27478C4DC(v71, v72, 3u);
            goto LABEL_48;
          }

          goto LABEL_38;
        }

        if ((v87 & 1) == 0)
        {
LABEL_38:
          v28 = OUTLINED_FUNCTION_0_23();
          v30 = 3;
LABEL_39:
          sub_27478C4DC(v28, v29, v30);
          v49 = OUTLINED_FUNCTION_3_30();
          sub_27478C4DC(v49, v50, v51);
LABEL_40:
          v24 += 64;
          ++v20;
          continue;
        }

        OUTLINED_FUNCTION_48_1(v25, v26, v27);

        v85 = OUTLINED_FUNCTION_99();
        OUTLINED_FUNCTION_39_6(v85, v86);
LABEL_48:
        OUTLINED_FUNCTION_23_9();
LABEL_49:
        sub_27478C4DC(v68, v69, v70);
LABEL_50:
        OUTLINED_FUNCTION_31_11(a2, v96, v97, a2, v87, v88, v89, v90, v91, v92, v93, v94, v95, v96.n128_i64[0], v96.n128_i64[1], v97.n128_i64[0], v97.n128_i64[1], v98);
        return;
      default:
        if (!v5)
        {
          OUTLINED_FUNCTION_48_1(v25, v26, v27);

          v66 = OUTLINED_FUNCTION_99();
          sub_27478C4DC(v66, v67, 0);
          v68 = OUTLINED_FUNCTION_66();
          v70 = 0;
          goto LABEL_49;
        }

        v28 = OUTLINED_FUNCTION_0_23();
        v30 = 0;
        goto LABEL_39;
    }
  }
}

void sub_274811B0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, __int128 a19, __int128 a20, __int128 a21, uint64_t a22, uint64_t a23, __int128 a24, __int128 a25, __int128 a26, void *a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42)
{
  OUTLINED_FUNCTION_28_8();
  a41 = v43;
  a42 = v44;
  v45 = sub_2748123B8();
  v46 = 0;
  v47 = MEMORY[0x277D84F90];
  v75 = v45;
  v76 = *(v45 + 16);
  v48 = 32;
  v49 = MEMORY[0x277D84F90];
  while (1)
  {
    if (v76 == v46)
    {

      OUTLINED_FUNCTION_29_8();
      return;
    }

    if (v46 >= *(v45 + 16))
    {
      break;
    }

    v50 = *(v45 + v48);
    v51 = *(v45 + v48 + 16);
    v52 = *(v45 + v48 + 32);
    *(&a26 + 9) = *(v45 + v48 + 41);
    a25 = v51;
    a26 = v52;
    a24 = v50;
    v53 = *(v45 + v48 + 16);
    a19 = *(v45 + v48);
    a20 = v53;
    a21 = *(v45 + v48 + 32);
    *(&a21 + 9) = *(v45 + v48 + 41);
    v54 = *(*v42 + 160);
    sub_2747B24E0(&a24, &a11);
    v54(&a11, &a19);
    v55 = v47;
    if (a11 - 3 >= 2)
    {
      v55 = a27;
      if ((a11 & 0xFF00) == 0x100 && ((v56 = a27[2], v56 >= 4) ? (v57 = 4) : (v57 = a27[2]), v56 > 4))
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280967A48);
        v58 = *(type metadata accessor for SmartShortcutPickerEntry() - 8);
        v59 = *(v58 + 72);
        v60 = (*(v58 + 80) + 32) & ~*(v58 + 80);
        v61 = swift_allocObject();
        v62 = _swift_stdlib_malloc_size(v61);
        if (!v59)
        {
          goto LABEL_37;
        }

        if (v62 - v60 == 0x8000000000000000 && v59 == -1)
        {
          goto LABEL_38;
        }

        v61[2] = v57;
        v61[3] = 2 * ((v62 - v60) / v59);
        swift_arrayInitWithCopy();
        v55 = v61;
        v45 = v75;
        v47 = MEMORY[0x277D84F90];
      }

      else
      {
      }
    }

    sub_2747D21CC(&a24);
    v64 = v55[2];
    v65 = *(v49 + 16);
    v66 = v65 + v64;
    if (__OFADD__(v65, v64))
    {
      goto LABEL_33;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (!isUniquelyReferenced_nonNull_native || (v68 = *(v49 + 24) >> 1, v68 < v66))
    {
      if (v65 <= v66)
      {
        v69 = v65 + v64;
      }

      else
      {
        v69 = v65;
      }

      sub_274763E3C(isUniquelyReferenced_nonNull_native, v69, 1, v49);
      v49 = v70;
      v68 = *(v70 + 24) >> 1;
    }

    if (v55[2])
    {
      v71 = v68 - *(v49 + 16);
      type metadata accessor for SmartShortcutPickerEntry();
      if (v71 < v64)
      {
        goto LABEL_35;
      }

      swift_arrayInitWithCopy();

      if (v64)
      {
        v72 = *(v49 + 16);
        v73 = __OFADD__(v72, v64);
        v74 = v72 + v64;
        if (v73)
        {
          goto LABEL_36;
        }

        *(v49 + 16) = v74;
      }
    }

    else
    {

      if (v64)
      {
        goto LABEL_34;
      }
    }

    v48 += 64;
    ++v46;
  }

  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
}

void sub_274811E1C()
{
  sub_2748112E4();
  v1 = SmartShortcutPickerDataSource.sections.getter();

  v2 = 0;
  v3 = *(v1 + 16);
  v4 = (v0 + OBJC_IVAR____TtC10WorkflowUI29SmartShortcutPickerViewLayout_filter);
  v105 = MEMORY[0x277D84F90];
LABEL_2:
  for (i = (v2 << 6) | 0x20; ; i += 64)
  {
    if (v3 == v2)
    {

      return;
    }

    if (v2 >= *(v1 + 16))
    {
      break;
    }

    *&v8 = OUTLINED_FUNCTION_6_15((v1 + i)).n128_u64[0];
    v9 = *(v4 + 16);
    if (v9 != 254)
    {
      if (v9 == 255)
      {
LABEL_43:
        OUTLINED_FUNCTION_48_1(v6, v7, v8);
      }

      else
      {
        v11 = *v4;
        v10 = v4[1];
        switch(v107)
        {
          case 1:
            if (v9 != 1)
            {
              v51 = OUTLINED_FUNCTION_12_13();
              sub_27481360C(v51, v52, v53);
              v54 = OUTLINED_FUNCTION_11_0();
              sub_27477D408(v54, v55, v56);
              v15 = OUTLINED_FUNCTION_11_0();
              goto LABEL_41;
            }

            if (v106 != v11 || *(&v106 + 1) != v10)
            {
              OUTLINED_FUNCTION_66();
              v35 = sub_2749FDCC4();
              v20 = v35;
              OUTLINED_FUNCTION_48_1(v35, v36);
              v37 = OUTLINED_FUNCTION_43_0();
              sub_27481360C(v37, v38, 1u);
              v39 = OUTLINED_FUNCTION_11_0();
              sub_27477D408(v39, v40, v41);
              v42 = OUTLINED_FUNCTION_11_0();
              sub_27478C4DC(v42, v43, v44);
              v30 = OUTLINED_FUNCTION_43_0();
              v32 = 1;
              goto LABEL_34;
            }

            OUTLINED_FUNCTION_48_1(v6, v7, v8);
            v79 = OUTLINED_FUNCTION_11_0();
            sub_27481360C(v79, v80, v81);
            v82 = OUTLINED_FUNCTION_11_0();
            sub_27477D408(v82, v83, v84);
            v85 = OUTLINED_FUNCTION_11_0();
            sub_27478C4DC(v85, v86, v87);
            v67 = OUTLINED_FUNCTION_11_0();
            goto LABEL_49;
          case 2:
            if (v9 != 2)
            {
              v45 = OUTLINED_FUNCTION_12_13();
              sub_27481360C(v45, v46, v47);
              v48 = OUTLINED_FUNCTION_12();
              sub_27477D408(v48, v49, v50);
              v15 = OUTLINED_FUNCTION_12();
              goto LABEL_41;
            }

            if (v106 == v11 && *(&v106 + 1) == v10)
            {
              OUTLINED_FUNCTION_48_1(v6, v7, v8);
              v70 = OUTLINED_FUNCTION_12();
              sub_27481360C(v70, v71, v72);
              v73 = OUTLINED_FUNCTION_12();
              sub_27477D408(v73, v74, v75);
              v76 = OUTLINED_FUNCTION_12();
              sub_27478C4DC(v76, v77, v78);
              v67 = OUTLINED_FUNCTION_12();
              goto LABEL_49;
            }

            OUTLINED_FUNCTION_66();
            v19 = sub_2749FDCC4();
            v20 = v19;
            OUTLINED_FUNCTION_48_1(v19, v21);
            v22 = OUTLINED_FUNCTION_43_0();
            sub_27481360C(v22, v23, 2u);
            v24 = OUTLINED_FUNCTION_12();
            sub_27477D408(v24, v25, v26);
            v27 = OUTLINED_FUNCTION_12();
            sub_27478C4DC(v27, v28, v29);
            v30 = OUTLINED_FUNCTION_43_0();
            v32 = 2;
LABEL_34:
            sub_27478C4DC(v30, v31, v32);
            if ((v20 & 1) == 0)
            {
              sub_2747D21CC(&v106);
              goto LABEL_42;
            }

            break;
          case 3:
            if (v106 == 0)
            {
              if (v9 != 3 || v10 | v11)
              {
                goto LABEL_40;
              }

              OUTLINED_FUNCTION_48_1(v6, v7, v8);
              OUTLINED_FUNCTION_23_9();
              sub_27481360C(v88, v89, v90);
              v91 = OUTLINED_FUNCTION_66();
              OUTLINED_FUNCTION_39_6(v91, v92);
            }

            else
            {
              v33 = v9 == 3 && v11 == 1;
              if (!v33 || v10)
              {
LABEL_40:
                v57 = OUTLINED_FUNCTION_12_13();
                sub_27477D408(v57, v58, v59);
                v15 = OUTLINED_FUNCTION_66();
                v17 = 3;
                goto LABEL_41;
              }

              OUTLINED_FUNCTION_48_1(v6, v7, v8);
              OUTLINED_FUNCTION_23_9();
              sub_27481360C(v93, v94, v95);
              v96 = OUTLINED_FUNCTION_66();
              sub_27478C4DC(v96, v97, 3u);
            }

            OUTLINED_FUNCTION_23_9();
LABEL_49:
            sub_27478C4DC(v67, v68, v69);
            break;
          default:
            if (!*(v4 + 16))
            {
              OUTLINED_FUNCTION_48_1(v6, v7, v8);
              v63 = OUTLINED_FUNCTION_43_0();
              sub_27481360C(v63, v64, 0);
              v65 = OUTLINED_FUNCTION_66();
              sub_27478C4DC(v65, v66, 0);
              v67 = OUTLINED_FUNCTION_43_0();
              v69 = 0;
              goto LABEL_49;
            }

            v12 = OUTLINED_FUNCTION_12_13();
            sub_27477D408(v12, v13, v14);
            v15 = OUTLINED_FUNCTION_66();
            v17 = 0;
LABEL_41:
            sub_27478C4DC(v15, v16, v17);
            v60 = OUTLINED_FUNCTION_12_13();
            sub_27478C4DC(v60, v61, v62);
            goto LABEL_42;
        }
      }

      v98 = v105;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v109 = v105;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_27476D6D8();
        v98 = v109;
      }

      v100 = *(v98 + 16);
      if (v100 >= *(v98 + 24) >> 1)
      {
        sub_27476D6D8();
        v98 = v109;
      }

      ++v2;
      *(v98 + 16) = v100 + 1;
      v105 = v98;
      v101 = (v98 + (v100 << 6));
      v102 = v106;
      v103 = v107;
      v104 = v108[0];
      *(v101 + 73) = *(v108 + 9);
      v101[3] = v103;
      v101[4] = v104;
      v101[2] = v102;
      goto LABEL_2;
    }

    if (v107 >= 2u && (v107 != 3 || v106 == 0))
    {
      goto LABEL_43;
    }

LABEL_42:
    ++v2;
  }

  __break(1u);
}

uint64_t static SmartShortcutPickerViewLayout.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + OBJC_IVAR____TtC10WorkflowUI29SmartShortcutPickerViewLayout_filter);
  v3 = *(a1 + OBJC_IVAR____TtC10WorkflowUI29SmartShortcutPickerViewLayout_filter + 8);
  v4 = *(a1 + OBJC_IVAR____TtC10WorkflowUI29SmartShortcutPickerViewLayout_filter + 16);
  v12[0] = v2;
  v12[1] = v3;
  v13 = v4;
  v6 = *(a2 + OBJC_IVAR____TtC10WorkflowUI29SmartShortcutPickerViewLayout_filter + 8);
  v7 = *(a2 + OBJC_IVAR____TtC10WorkflowUI29SmartShortcutPickerViewLayout_filter + 16);
  v10[0] = *(a2 + OBJC_IVAR____TtC10WorkflowUI29SmartShortcutPickerViewLayout_filter);
  v5 = v10[0];
  v10[1] = v6;
  v11 = v7;
  sub_27481360C(v2, v3, v4);
  sub_27481360C(v10[0], v6, v7);
  v8 = sub_27481041C(v12, v10);
  sub_274813620(v5, v6, v7);
  sub_274813620(v2, v3, v4);
  return v8 & 1;
}

uint64_t sub_27481256C()
{
  v1 = (v0 + OBJC_IVAR____TtC10WorkflowUI29SmartShortcutPickerViewLayout_filter);
  v2 = *(v0 + OBJC_IVAR____TtC10WorkflowUI29SmartShortcutPickerViewLayout_filter + 16);
  if (v2 == 254)
  {
LABEL_9:
    v3 = 2;
  }

  else
  {
    if (v2 != 255)
    {
      v4 = *v1;
      v5 = v1[1];
      MEMORY[0x277C5FB60](1);
      switch(v2)
      {
        case 1:
          v6 = 1;
          goto LABEL_12;
        case 2:
          v6 = 3;
LABEL_12:
          MEMORY[0x277C5FB60](v6);
          OUTLINED_FUNCTION_32_1();

          return sub_2749FCE24();
        case 3:
          if (!(v4 | v5))
          {
            goto LABEL_9;
          }

          v3 = 4;
          return MEMORY[0x277C5FB60](v3);
        default:
          MEMORY[0x277C5FB60](0);
          break;
      }
    }

    v3 = 0;
  }

  return MEMORY[0x277C5FB60](v3);
}

uint64_t SmartShortcutPickerViewLayout.deinit()
{
  v1 = OBJC_IVAR____TtC10WorkflowUI29SmartShortcutPickerViewLayout__dataSource;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096A030);
  OUTLINED_FUNCTION_1_2();
  (*(v2 + 8))(v0 + v1);
  OUTLINED_FUNCTION_34_4(OBJC_IVAR____TtC10WorkflowUI29SmartShortcutPickerViewLayout_filter);
  return v0;
}

uint64_t sub_2748126BC()
{
  sub_2749FDDF4();
  sub_27481256C();
  return sub_2749FDE44();
}

uint64_t sub_274812744()
{
  sub_2749FDDF4();
  sub_27481256C();
  return sub_2749FDE44();
}

uint64_t sub_2748127A8@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for SmartShortcutPickerViewLayout(0);
  result = sub_2749FA874();
  *a1 = result;
  return result;
}

uint64_t sub_2748127F4(uint64_t a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v3 >= 2 && (v3 == 2 || !(v1 | v2)))
  {
    type metadata accessor for UserLibrarySmartShortcutPickerViewLayout(0);
    v6 = sub_2748112E4();
    v10 = 0uLL;
    v11 = -2;
    return sub_2748128CC(v6, &v10);
  }

  else
  {
    OUTLINED_FUNCTION_41_8(&v10);
    OUTLINED_FUNCTION_41_8(__src);
    sub_2747D2AC8(&v10, v8);
    v4 = sub_2748112E4();
    v5 = OUTLINED_FUNCTION_42_4();
    sub_27477D408(v1, v2, v3);
    sub_274812BC4(__src, v4, v8);
  }

  return v5;
}

uint64_t sub_2748128CC(uint64_t a1, __int128 *a2)
{
  v4 = swift_allocObject();
  v5 = *(a2 + 16);
  v7 = *a2;
  v8 = v5;
  sub_274811708(a1, &v7);
  return v4;
}

uint64_t sub_274812934@<X0>(uint64_t result@<X0>, __int16 *a2@<X8>)
{
  v4 = 3;
  switch(*(result + 16))
  {
    case 1:
      goto LABEL_5;
    case 2:
      goto LABEL_4;
    case 3:
      if (*result != 0)
      {
LABEL_4:
        v4 = 4;
        goto LABEL_5;
      }

      v5 = *(*(result + 48) + 16);
      sub_274811E1C();
      v7 = *(v6 + 16) + 1;
      v8 = 48;
      break;
    default:
      v4 = 2 * (*(v2 + OBJC_IVAR____TtC10WorkflowUI37StaccatoSmartShortcutPickerViewLayout_style + 88) > 1u);
      goto LABEL_5;
  }

  while (--v7)
  {
    v9 = *(v6 + v8);
    v8 += 64;
    if (v9 == 2)
    {

LABEL_11:
      v10 = 1;
      goto LABEL_13;
    }
  }

  if (v5 >= 5)
  {
    goto LABEL_11;
  }

  v10 = 0;
LABEL_13:
  v4 = v10 << 8;
LABEL_5:
  *a2 = v4;
  return result;
}

uint64_t sub_274812A34(void *__src, uint64_t a2, void *a3)
{
  memcpy((v3 + *a3), __src, 0x59uLL);
  v6[0] = 0;
  v6[1] = 0;
  v7 = -1;
  sub_274811708(a2, v6);
  return v3;
}

uint64_t sub_274812A8C(uint64_t a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  OUTLINED_FUNCTION_41_8(v9);
  OUTLINED_FUNCTION_41_8(__src);
  sub_27477D408(v1, v2, v3);
  sub_2747D2AC8(v9, v7);
  v4 = sub_2748112E4();
  v5 = OUTLINED_FUNCTION_42_4();
  sub_274812BC4(__src, v4, v7);
  return v5;
}

uint64_t sub_274812B6C(uint64_t *a1)
{
  sub_27481308C(a1);
  v2 = *(*v1 + 48);
  v3 = *(*v1 + 52);

  return MEMORY[0x2821FE8D8](v1, v2, v3);
}

uint64_t sub_274812BC4(void *__src, uint64_t a2, __int128 *a3)
{
  v6 = *(a3 + 16);
  memcpy((v3 + OBJC_IVAR____TtC10WorkflowUI37ExpandedSmartShortcutPickerViewLayout_style), __src, 0x59uLL);
  v8 = *a3;
  v9 = v6;
  sub_274811708(a2, &v8);
  return v3;
}

uint64_t sub_274812C30@<X0>(uint64_t result@<X0>, char *a2@<X8>)
{
  if (*(v2 + OBJC_IVAR____TtC10WorkflowUI37ExpandedSmartShortcutPickerViewLayout_style + 88) > 1u)
  {
    v7 = 2 * (*(result + 16) == 0);
  }

  else
  {
    v4 = *(v2 + OBJC_IVAR____TtC10WorkflowUI29SmartShortcutPickerViewLayout_filter);
    v5 = *(v2 + OBJC_IVAR____TtC10WorkflowUI29SmartShortcutPickerViewLayout_filter + 8);
    v6 = *(v2 + OBJC_IVAR____TtC10WorkflowUI29SmartShortcutPickerViewLayout_filter + 16);
    if (v6 == 255)
    {
      sub_274813620(*(v2 + OBJC_IVAR____TtC10WorkflowUI29SmartShortcutPickerViewLayout_filter), *(v2 + OBJC_IVAR____TtC10WorkflowUI29SmartShortcutPickerViewLayout_filter + 8), 0xFFu);
      sub_274813620(0, 0, 0xFFu);
      v8 = (sub_2748112E4() + OBJC_IVAR____TtC10WorkflowUI29SmartShortcutPickerDataSource_searchText);
      swift_beginAccess();
      v10 = *v8;
      v9 = v8[1];

      v11 = HIBYTE(v9) & 0xF;
      if ((v9 & 0x2000000000000000) == 0)
      {
        v11 = v10 & 0xFFFFFFFFFFFFLL;
      }

      v7 = v11 != 0;
    }

    else
    {
      sub_27481360C(*(v2 + OBJC_IVAR____TtC10WorkflowUI29SmartShortcutPickerViewLayout_filter), *(v2 + OBJC_IVAR____TtC10WorkflowUI29SmartShortcutPickerViewLayout_filter + 8), *(v2 + OBJC_IVAR____TtC10WorkflowUI29SmartShortcutPickerViewLayout_filter + 16));
      sub_274813620(v4, v5, v6);
      result = sub_274813620(0, 0, 0xFFu);
      v7 = 2;
    }
  }

  *a2 = v7;
  return result;
}

uint64_t sub_274812D5C@<X0>(uint64_t a1@<X0>, _WORD *a2@<X8>)
{
  result = sub_274812C30(a1, &v4);
  *a2 = v4;
  return result;
}

void sub_274812D94(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *(a1 + 16);
  v5 = sub_2748122C0(a1);
  v6 = sub_2748121CC(v5);
  v98.n128_u64[0] = v5;
  sub_2747828F8(v6);
  v7 = 0;
  v8 = *(v5 + 16);
  v10 = v3 != 1 || v2 != 0;
  if (v2 | v3)
  {
    v11 = 0;
  }

  else
  {
    v11 = v4 == 3;
  }

  LODWORD(v89) = v11;
  HIDWORD(v89) = v4 != 3 || v10;
  v12 = 32;
  while (2)
  {
    if (v8 == v7)
    {

      OUTLINED_FUNCTION_30_6(v50, v51, v52, v53, v54, v55, v56, v57, a2);
      return;
    }

    if (v7 >= *(v5 + 16))
    {
      __break(1u);
      return;
    }

    *&v15 = OUTLINED_FUNCTION_6_15((v5 + v12)).n128_u64[0];
    switch(v99.n128_u8[0])
    {
      case 1u:
        if (v4 != 1)
        {
          v45 = OUTLINED_FUNCTION_0_23();
          v16 = OUTLINED_FUNCTION_14_4(v45, v46, 1u);
          v18 = 1;
          goto LABEL_37;
        }

        if (v98.n128_u64[0] != v3 || v98.n128_u64[1] != v2)
        {
          OUTLINED_FUNCTION_99();
          v34 = OUTLINED_FUNCTION_32_7();
          v21 = v34;
          OUTLINED_FUNCTION_48_1(v34, v35);
          v36 = OUTLINED_FUNCTION_11_0();
          v39 = OUTLINED_FUNCTION_14_4(v36, v37, v38);
          v41 = OUTLINED_FUNCTION_14_4(v39, v40, 1u);
          sub_27478C4DC(v41, v42, 1u);
          v30 = OUTLINED_FUNCTION_11_0();
          goto LABEL_31;
        }

        OUTLINED_FUNCTION_48_1(v13, v14, v15);
        v77 = OUTLINED_FUNCTION_11_0();
        sub_27477D408(v77, v78, v79);
        v80 = OUTLINED_FUNCTION_11_0();
        sub_27477D408(v80, v81, v82);
        v83 = OUTLINED_FUNCTION_11_0();
        sub_27478C4DC(v83, v84, v85);
        v74 = OUTLINED_FUNCTION_11_0();
        goto LABEL_43;
      case 2u:
        if (v4 != 2)
        {
          v43 = OUTLINED_FUNCTION_0_23();
          v16 = OUTLINED_FUNCTION_14_4(v43, v44, 2u);
          v18 = 2;
          goto LABEL_37;
        }

        if (v98.n128_u64[0] != v3 || v98.n128_u64[1] != v2)
        {
          OUTLINED_FUNCTION_99();
          v20 = OUTLINED_FUNCTION_32_7();
          v21 = v20;
          OUTLINED_FUNCTION_48_1(v20, v22);
          v23 = OUTLINED_FUNCTION_12();
          v26 = OUTLINED_FUNCTION_14_4(v23, v24, v25);
          v28 = OUTLINED_FUNCTION_14_4(v26, v27, 2u);
          sub_27478C4DC(v28, v29, 2u);
          v30 = OUTLINED_FUNCTION_12();
LABEL_31:
          sub_27478C4DC(v30, v31, v32);
          if (v21)
          {
            goto LABEL_44;
          }

          sub_2747D21CC(&v98);
LABEL_38:
          v12 += 64;
          ++v7;
          continue;
        }

        OUTLINED_FUNCTION_48_1(v13, v14, v15);
        v65 = OUTLINED_FUNCTION_12();
        sub_27477D408(v65, v66, v67);
        v68 = OUTLINED_FUNCTION_12();
        sub_27477D408(v68, v69, v70);
        v71 = OUTLINED_FUNCTION_12();
        sub_27478C4DC(v71, v72, v73);
        v74 = OUTLINED_FUNCTION_12();
LABEL_43:
        sub_27478C4DC(v74, v75, v76);
LABEL_44:

LABEL_48:
        OUTLINED_FUNCTION_31_11(a2, v98, v99, a2, v89, v90, v91, v92, v93, v94, v95, v96, v97, v98.n128_i64[0], v98.n128_i64[1], v99.n128_i64[0], v99.n128_i64[1], v100);
        return;
      case 3u:
        if (*&v98 == 0)
        {
          if (v89)
          {
            OUTLINED_FUNCTION_48_1(v13, v14, v15);

            v86 = OUTLINED_FUNCTION_99();
            OUTLINED_FUNCTION_39_6(v86, v87);
            goto LABEL_46;
          }
        }

        else if ((v89 & 0x100000000) == 0)
        {
          OUTLINED_FUNCTION_48_1(v13, v14, v15);

          v63 = OUTLINED_FUNCTION_99();
          sub_27478C4DC(v63, v64, 3u);
LABEL_46:
          OUTLINED_FUNCTION_23_9();
LABEL_47:
          sub_27478C4DC(v60, v61, v62);
          goto LABEL_48;
        }

        v16 = OUTLINED_FUNCTION_0_23();
        v18 = 3;
        goto LABEL_37;
      default:
        if (v4)
        {
          v16 = OUTLINED_FUNCTION_0_23();
          v18 = 0;
LABEL_37:
          sub_27478C4DC(v16, v17, v18);
          v47 = OUTLINED_FUNCTION_3_30();
          sub_27478C4DC(v47, v48, v49);
          goto LABEL_38;
        }

        OUTLINED_FUNCTION_48_1(v13, v14, v15);

        v58 = OUTLINED_FUNCTION_99();
        sub_27478C4DC(v58, v59, 0);
        v60 = OUTLINED_FUNCTION_66();
        v62 = 0;
        goto LABEL_47;
    }
  }
}

uint64_t sub_27481308C(uint64_t *a1)
{
  v3 = OBJC_IVAR____TtC10WorkflowUI29SmartShortcutPickerViewLayout__dataSource;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096A030);
  OUTLINED_FUNCTION_1_2();
  (*(v4 + 8))(v1 + v3);
  OUTLINED_FUNCTION_34_4(OBJC_IVAR____TtC10WorkflowUI29SmartShortcutPickerViewLayout_filter);
  OUTLINED_FUNCTION_16_0(*a1);
  return v1;
}

uint64_t _s10WorkflowUI29SmartShortcutPickerViewLayoutCfD_0()
{
  v1 = OBJC_IVAR____TtC10WorkflowUI29SmartShortcutPickerViewLayout__dataSource;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096A030);
  OUTLINED_FUNCTION_1_2();
  (*(v2 + 8))(v0 + v1);
  OUTLINED_FUNCTION_34_4(OBJC_IVAR____TtC10WorkflowUI29SmartShortcutPickerViewLayout_filter);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v3, v4);
}

unint64_t sub_274813234(unint64_t result, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v4 = *(a3 + 16);
  if (v4 < result || v4 < a2)
  {
    goto LABEL_9;
  }

  if ((a2 & 0x8000000000000000) == 0)
  {
    a4(0);
  }

LABEL_10:
  __break(1u);
  return result;
}

uint64_t sub_27481330C()
{
  OUTLINED_FUNCTION_37_6();
  if (!v0)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280967A38);
  v1 = swift_allocObject();
  OUTLINED_FUNCTION_40_7(v1);
  OUTLINED_FUNCTION_38_6(v2 / 8);
  return v0;
}

uint64_t sub_274813418()
{
  OUTLINED_FUNCTION_37_6();
  if (!v0)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280967A58);
  v1 = swift_allocObject();
  OUTLINED_FUNCTION_40_7(v1);
  OUTLINED_FUNCTION_38_6(v2 / 64);
  return v0;
}

uint64_t sub_274813484()
{
  OUTLINED_FUNCTION_37_6();
  if (!v0)
  {
    return MEMORY[0x277D84F90];
  }

  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28096C990);
  v3 = swift_allocObject();
  OUTLINED_FUNCTION_40_7(v3);
  *(v0 + 16) = v2;
  *(v0 + 24) = (2 * (v4 / 8)) | 1;
  return v0;
}

uint64_t sub_274813598()
{
  OUTLINED_FUNCTION_37_6();
  if (!v0)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096A120);
  v1 = swift_allocObject();
  OUTLINED_FUNCTION_40_7(v1);
  OUTLINED_FUNCTION_38_6(v2 / 40);
  return v0;
}

uint64_t sub_27481360C(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 0xFDu)
  {
    return sub_27477D408(a1, a2, a3);
  }

  return a1;
}

uint64_t sub_274813620(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 0xFDu)
  {
    return sub_27478C4DC(a1, a2, a3);
  }

  return a1;
}

unint64_t sub_274813638()
{
  result = qword_28096A038;
  if (!qword_28096A038)
  {
    type metadata accessor for SmartShortcutPickerViewLayout(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28096A038);
  }

  return result;
}

void sub_2748136B8()
{
  sub_274813864();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_274813864()
{
  if (!qword_28096A050)
  {
    type metadata accessor for SmartShortcutPickerDataSource();
    v0 = sub_2749FA924();
    if (!v1)
    {
      atomic_store(v0, &qword_28096A050);
    }
  }
}

uint64_t get_enum_tag_for_layout_string_10WorkflowUI29SmartShortcutPickerViewLayoutC13SectionFilterO(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 > 3)
  {
    return (v1 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2748139EC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFB && *(a1 + 17))
  {
    return (*a1 + 251);
  }

  v3 = *(a1 + 16);
  if (v3 > 3)
  {
    v4 = (v3 ^ 0xFF) + 1;
  }

  else
  {
    v4 = 0;
  }

  if (v4 >= 3)
  {
    return v4 - 2;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_274813A34(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFA)
  {
    *result = 0;
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 251;
    if (a3 >= 0xFB)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFB)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -2 - a2;
    }
  }

  return result;
}

uint64_t sub_274813A80(uint64_t result, unsigned int a2)
{
  if (a2 > 0xFC)
  {
    *(result + 16) = 0;
    *result = a2 - 253;
    *(result + 8) = 0;
  }

  else if (a2)
  {
    *(result + 16) = -a2;
  }

  return result;
}

unint64_t sub_274813ABC()
{
  result = qword_28096A098;
  if (!qword_28096A098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28096A098);
  }

  return result;
}

unint64_t sub_274813B10()
{
  result = qword_28096A0C0;
  if (!qword_28096A0C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28096A0C0);
  }

  return result;
}

uint64_t sub_274813B64(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = a3 - result;
  if (__OFSUB__(a3, result))
  {
    __break(1u);
LABEL_14:
    __break(1u);
    return result;
  }

  if (a2 < 1)
  {
    if (v3 <= 0 && v3 > a2)
    {
      return 0;
    }
  }

  else if ((v3 & 0x8000000000000000) == 0 && v3 < a2)
  {
    return 0;
  }

  v5 = __OFADD__(result, a2);
  result += a2;
  if (v5)
  {
    goto LABEL_14;
  }

  return result;
}

unint64_t sub_274813BB0()
{
  result = qword_28096A0D0;
  if (!qword_28096A0D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28096A0D0);
  }

  return result;
}

unint64_t sub_274813C04()
{
  result = qword_28096A0D8;
  if (!qword_28096A0D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28096A0D8);
  }

  return result;
}

unint64_t sub_274813C58()
{
  result = qword_28096A0E0;
  if (!qword_28096A0E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28096A0E0);
  }

  return result;
}

unint64_t sub_274813CAC()
{
  result = qword_28096A0E8;
  if (!qword_28096A0E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28096A0E8);
  }

  return result;
}

unint64_t sub_274813D00()
{
  result = qword_28096A110;
  if (!qword_28096A110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28096A110);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for SmartShortcutPickerViewLayout.SectionFilter.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for SmartShortcutPickerNavigationDestination(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_BYTE *storeEnumTagSinglePayload for SmartShortcutPickerViewLayout.SectionFilter.SectionCodingKeys(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
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
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

unint64_t sub_274813F54()
{
  result = qword_28096A138;
  if (!qword_28096A138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28096A138);
  }

  return result;
}

unint64_t sub_274813FAC()
{
  result = qword_28096A140;
  if (!qword_28096A140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28096A140);
  }

  return result;
}

unint64_t sub_274814004()
{
  result = qword_28096A148;
  if (!qword_28096A148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28096A148);
  }

  return result;
}

unint64_t sub_27481405C()
{
  result = qword_28096A150;
  if (!qword_28096A150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28096A150);
  }

  return result;
}

unint64_t sub_2748140B4()
{
  result = qword_28096A158;
  if (!qword_28096A158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28096A158);
  }

  return result;
}

unint64_t sub_27481410C()
{
  result = qword_28096A160;
  if (!qword_28096A160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28096A160);
  }

  return result;
}

unint64_t sub_274814164()
{
  result = qword_28096A168;
  if (!qword_28096A168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28096A168);
  }

  return result;
}

unint64_t sub_2748141BC()
{
  result = qword_28096A170;
  if (!qword_28096A170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28096A170);
  }

  return result;
}

unint64_t sub_274814214()
{
  result = qword_28096A178;
  if (!qword_28096A178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28096A178);
  }

  return result;
}

unint64_t sub_27481426C()
{
  result = qword_28096A180;
  if (!qword_28096A180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28096A180);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_33_7()
{

  return sub_2749FDC04();
}

uint64_t sub_274814318(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  OUTLINED_FUNCTION_30_0();
  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_274814344()
{
  OUTLINED_FUNCTION_79();
  sub_2749FD0A4();
  *(v0 + 32) = sub_2749FD094();
  v2 = sub_2749FD044();

  return MEMORY[0x2822009F8](sub_2748143D4, v2, v1);
}

uint64_t sub_2748143D4()
{
  v1 = *(v0 + 16);

  v1(v2);
  v3 = *(v0 + 40);
  v4 = *(v0 + 8);

  return v4(v3);
}

uint64_t sub_274814490(uint64_t a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC10WorkflowUI25WFActionDrawerCoordinator_drawerSheetView);
  if (v3)
  {
    v4 = v3;
    OUTLINED_FUNCTION_30_0();
    sub_2749F9B44();
  }

  sub_2749F9BF4();
  OUTLINED_FUNCTION_9();
  v7 = *(v6 + 8);

  return v7(a1, v5);
}

uint64_t sub_274814514@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_2749F9BF4();
  OUTLINED_FUNCTION_43();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_2_0();
  v8 = v7 - v6;
  v9 = *(v1 + OBJC_IVAR____TtC10WorkflowUI25WFActionDrawerCoordinator_drawerSheetView);
  if (v9)
  {
    v14 = v5;
    v10 = v9;
    sub_2749F9B84();

    return (*(v14 + 32))(a1, v8, v3);
  }

  else
  {
    v12 = *MEMORY[0x277D7BD38];
    v13 = *(v5 + 104);

    return v13(a1, v12, v3);
  }
}

void sub_274814634(double a1)
{
  if (*(v1 + OBJC_IVAR____TtC10WorkflowUI25WFActionDrawerCoordinator_bottomInset) != a1)
  {
    swift_getObjectType();

    sub_2748152F4(v1);
  }
}

void sub_274814684(double a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC10WorkflowUI25WFActionDrawerCoordinator_bottomInset);
  *(v1 + OBJC_IVAR____TtC10WorkflowUI25WFActionDrawerCoordinator_bottomInset) = a1;
  sub_274814634(v2);
}

void sub_27481469C(void *a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC10WorkflowUI25WFActionDrawerCoordinator_toolbar);
  *(v1 + OBJC_IVAR____TtC10WorkflowUI25WFActionDrawerCoordinator_toolbar) = a1;
  v3 = a1;

  sub_2748146F4();
}

void sub_2748146F4()
{
  OUTLINED_FUNCTION_48();
  v1 = sub_2749FCA74();
  OUTLINED_FUNCTION_43();
  v3 = v2;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_2_0();
  v7 = v6 - v5;
  sub_2749FCAA4();
  OUTLINED_FUNCTION_43();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_2_0();
  v11 = v10 - v9;
  sub_27471CF08(0, &qword_28159E4E0);
  v12 = sub_2749FD404();
  OUTLINED_FUNCTION_86();
  v13 = swift_allocObject();
  *(v13 + 16) = v0;
  OUTLINED_FUNCTION_5_21(v13);
  OUTLINED_FUNCTION_49_1(COERCE_DOUBLE(1107296256));
  v21[2] = v14;
  v21[3] = &block_descriptor_93_0;
  v15 = _Block_copy(v21);
  v16 = v0;
  sub_2749FCA94();
  OUTLINED_FUNCTION_7_14();
  sub_274720EB8(v17, 255, v18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28096DB60);
  sub_27473FCD0();
  sub_2749FD7B4();
  MEMORY[0x277C5F170](0, v11, v7, v15);
  _Block_release(v15);

  (*(v3 + 8))(v7, v1);
  v19 = OUTLINED_FUNCTION_34_2();
  v20(v19);

  OUTLINED_FUNCTION_46();
}

void sub_27481493C(uint64_t a1)
{
  v1 = *(a1 + OBJC_IVAR____TtC10WorkflowUI25WFActionDrawerCoordinator_drawerEmbeddedToolbarView);
  if (v1)
  {
    v2 = v1;
    sub_2747F3FC8();
  }
}

id sub_274814998(void *a1, void *a2)
{
  *&v2[OBJC_IVAR____TtC10WorkflowUI25WFActionDrawerCoordinator_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v2[OBJC_IVAR____TtC10WorkflowUI25WFActionDrawerCoordinator_presentationMode] = 0;
  *&v2[OBJC_IVAR____TtC10WorkflowUI25WFActionDrawerCoordinator_drawerViewController] = 0;
  *&v2[OBJC_IVAR____TtC10WorkflowUI25WFActionDrawerCoordinator_inspectorPaneNavigationController] = 0;
  *&v2[OBJC_IVAR____TtC10WorkflowUI25WFActionDrawerCoordinator_inspectorPaneRootViewController] = 0;
  *&v2[OBJC_IVAR____TtC10WorkflowUI25WFActionDrawerCoordinator_bottomInset] = 0;
  *&v2[OBJC_IVAR____TtC10WorkflowUI25WFActionDrawerCoordinator_toolbar] = 0;
  *&v2[OBJC_IVAR____TtC10WorkflowUI25WFActionDrawerCoordinator_drawerEmbeddedToolbarView] = 0;
  *&v2[OBJC_IVAR____TtC10WorkflowUI25WFActionDrawerCoordinator_drawerSheetView] = 0;
  *&v2[OBJC_IVAR____TtC10WorkflowUI25WFActionDrawerCoordinator_actionDetailsSheetView] = 0;
  *&v2[OBJC_IVAR____TtC10WorkflowUI25WFActionDrawerCoordinator_presentedPopover] = 0;
  *&v2[OBJC_IVAR____TtC10WorkflowUI25WFActionDrawerCoordinator_presentedInspectorPaneContentViewController] = 0;
  sub_2749F9724();
  *&v2[OBJC_IVAR____TtC10WorkflowUI25WFActionDrawerCoordinator_dataSource] = sub_2749F96D4();

  if (a2)
  {
    v5 = WFSerializableHomeIdentifier();
    _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
  }

  sub_2749F96C4();

  v8.receiver = v2;
  v8.super_class = type metadata accessor for WFActionDrawerCoordinator();
  v6 = objc_msgSendSuper2(&v8, sel_init);

  return v6;
}

void sub_274814B60()
{
  OUTLINED_FUNCTION_48();
  v2 = v1;
  v3 = sub_2749F9BF4();
  OUTLINED_FUNCTION_43();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_2_0();
  v9 = v8 - v7;
  if (*(v0 + OBJC_IVAR____TtC10WorkflowUI25WFActionDrawerCoordinator_presentationMode) == 1)
  {
    v10 = *(v0 + OBJC_IVAR____TtC10WorkflowUI25WFActionDrawerCoordinator_drawerSheetView);
    if (v10)
    {
      v11 = *(v0 + OBJC_IVAR____TtC10WorkflowUI25WFActionDrawerCoordinator_drawerViewController);
      if (v11)
      {
        if (v2)
        {
          v12 = objc_opt_self();
          v13 = v10;
          v14 = v11;
          v15 = [v12 systemShortcutsUserDefaults];
          v16 = [v15 BOOLForKey_];

          if ((v16 & 1) == 0)
          {
            sub_274814F3C();
            v17 = OUTLINED_FUNCTION_25_7();
            v18(v17);
            OUTLINED_FUNCTION_32_2();
            v19 = swift_allocObject();
            *(v19 + 16) = v13;
            *(v19 + 24) = v14;
            v20 = v13;
            v21 = v14;
            sub_2749F9B44();

            (*(v5 + 8))(v9, v3);
            goto LABEL_9;
          }
        }

        else
        {
          v22 = v10;
          v23 = v11;
        }

        v24 = OUTLINED_FUNCTION_25_7();
        v25(v24);
        sub_274814490(v9);
      }
    }
  }

LABEL_9:
  OUTLINED_FUNCTION_46();
}

id sub_274814D64(uint64_t a1, uint64_t a2)
{
  v3 = sub_2749F9BF4();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = v12 - v8;
  sub_2749F9B84();
  (*(v4 + 104))(v7, *MEMORY[0x277D7BD50], v3);
  sub_274720EB8(&qword_28096A288, 255, MEMORY[0x277D7BD58]);
  sub_2749FCEF4();
  sub_2749FCEF4();
  v10 = *(v4 + 8);
  v10(v7, v3);
  result = (v10)(v9, v3);
  if (v12[1] == v12[0])
  {
    [*(a2 + OBJC_IVAR____TtC10WorkflowUI22WFDrawerViewController_tableView) setContentOffset_];
    return sub_27483F8CC();
  }

  return result;
}

void sub_274814F3C()
{
  v1 = *(v0 + OBJC_IVAR____TtC10WorkflowUI25WFActionDrawerCoordinator_drawerViewController);
  if (v1)
  {
    v2 = *(v1 + OBJC_IVAR____TtC10WorkflowUI22WFDrawerViewController_searchControlsView);
    v3 = OBJC_IVAR____TtC10WorkflowUI26WFDrawerSearchControlsView_searchBar;
    v4 = *&v2[OBJC_IVAR____TtC10WorkflowUI26WFDrawerSearchControlsView_searchBar];
    v15 = v2;
    v5 = [v4 searchTextField];
    sub_27471CF08(0, &unk_28096B150);
    v6 = sub_2749FCF74();
    v7 = OUTLINED_FUNCTION_24_1();
    [v7 v8];

    v9 = [*&v2[v3] searchTextField];
    sub_2748205A0(0, 0xE000000000000000, v9);

    [*&v2[v3] resignFirstResponder];
    v10 = [*&v2[v3] delegate];
    if (v10)
    {
      if ([v10 respondsToSelector_])
      {
        v11 = *&v2[v3];
        v12 = sub_2749FCD64();
        v13 = OUTLINED_FUNCTION_24_1();
        [v13 v14];

        swift_unknownObjectRelease();
      }

      else
      {
        swift_unknownObjectRelease();
      }
    }

    sub_2749585BC(0);
  }
}

id sub_274815100()
{
  v1 = *(v0 + OBJC_IVAR____TtC10WorkflowUI25WFActionDrawerCoordinator_drawerViewController);
  if (v1)
  {
    return [*(*(v1 + OBJC_IVAR____TtC10WorkflowUI22WFDrawerViewController_searchControlsView) + OBJC_IVAR____TtC10WorkflowUI26WFDrawerSearchControlsView_searchBar) becomeFirstResponder];
  }

  return result;
}

void sub_27481514C(unsigned int *a1)
{
  sub_2749F9BF4();
  OUTLINED_FUNCTION_43();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_2_0();
  v7 = v6 - v5;
  if (*(v1 + OBJC_IVAR____TtC10WorkflowUI25WFActionDrawerCoordinator_presentationMode) == 1)
  {
    (*(v4 + 104))(v7, *a1);
    sub_274814490(v7);
  }
}

void sub_274815210(char a1)
{
  ObjectType = swift_getObjectType();
  if (a1)
  {
    v4 = *&v1[OBJC_IVAR____TtC10WorkflowUI25WFActionDrawerCoordinator_drawerSheetView];
    if (v4)
    {
      OUTLINED_FUNCTION_32_2();
      v5 = swift_allocObject();
      *(v5 + 16) = v1;
      *(v5 + 24) = ObjectType;
      v6 = v4;
      v7 = v1;
      sub_2749F9AB4();
    }
  }

  else
  {

    sub_2748152F4(v1);
  }
}

void sub_2748152F4(uint64_t a1)
{
  v2 = sub_2749F9BF4();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v19 - v7;
  v9 = OBJC_IVAR____TtC10WorkflowUI25WFActionDrawerCoordinator_drawerSheetView;
  v10 = *(a1 + OBJC_IVAR____TtC10WorkflowUI25WFActionDrawerCoordinator_drawerSheetView);
  if (v10)
  {
    v11 = v10;
    sub_2749F9AF4();
  }

  if (swift_unknownObjectWeakLoadStrong() && (v12 = sub_2748B630C(), swift_unknownObjectRelease(), v12))
  {
    v13 = *(a1 + v9);
    if (v13)
    {
      v14 = v13;
      sub_2749F9B74();
    }

    sub_274814514(v8);
    v15 = *(v3 + 104);
    v15(v6, *MEMORY[0x277D7BD50], v2);
    sub_274720EB8(&qword_28096A288, 255, MEMORY[0x277D7BD58]);
    sub_2749FCEF4();
    sub_2749FCEF4();
    v16 = *(v3 + 8);
    v16(v6, v2);
    v16(v8, v2);
    if (v22 == v21)
    {
      v15(v8, *MEMORY[0x277D7BD48], v2);
      sub_274814490(v8);
    }
  }

  else
  {
    v17 = *(a1 + v9);
    if (v17)
    {
      v20 = v17;
      sub_2749F9B74();
      v18 = v20;
    }
  }
}

void sub_2748155C8(void *a1, void *a2)
{
  v3 = v2;
  swift_getObjectType();
  sub_2749FA524();
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_2_0();
  v6 = sub_2749F9BF4();
  OUTLINED_FUNCTION_43();
  v8 = v7;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_2_0();
  v12 = v11 - v10;
  v13 = OBJC_IVAR____TtC10WorkflowUI25WFActionDrawerCoordinator_drawerViewController;
  v14 = *(v2 + OBJC_IVAR____TtC10WorkflowUI25WFActionDrawerCoordinator_drawerViewController);
  v15 = *(v2 + OBJC_IVAR____TtC10WorkflowUI25WFActionDrawerCoordinator_presentationMode);
  *(v2 + OBJC_IVAR____TtC10WorkflowUI25WFActionDrawerCoordinator_presentationMode) = 1;
  v101 = a1;
  if (v15 == 2)
  {
    if (v14)
    {
      v21 = v14;
      [v21 willMoveToParentViewController_];
      v22 = [v21 view];
      if (!v22)
      {
LABEL_47:
        __break(1u);
LABEL_48:
        __break(1u);
        goto LABEL_49;
      }

      v23 = v22;
      [v22 removeFromSuperview];

      [v21 removeFromParentViewController];
      v24 = OBJC_IVAR____TtC10WorkflowUI25WFActionDrawerCoordinator_inspectorPaneNavigationController;
      v25 = *(v3 + OBJC_IVAR____TtC10WorkflowUI25WFActionDrawerCoordinator_inspectorPaneNavigationController);
      if (v25)
      {
        [v25 willMoveToParentViewController_];
        v26 = *(v3 + v24);
        if (v26)
        {
          v27 = [v26 view];
          if (!v27)
          {
LABEL_51:
            __break(1u);
            goto LABEL_52;
          }

          v28 = v27;
          [v27 removeFromSuperview];

          v29 = *(v3 + v24);
          if (v29)
          {
            [v29 &selRef_intrinsicContentSize + 3];
          }
        }
      }

      v30 = *(v3 + v13);
      *(v3 + v13) = 0;

      v31 = *(v3 + v24);
      *(v3 + v24) = 0;

      v32 = *(v3 + OBJC_IVAR____TtC10WorkflowUI25WFActionDrawerCoordinator_inspectorPaneRootViewController);
      *(v3 + OBJC_IVAR____TtC10WorkflowUI25WFActionDrawerCoordinator_inspectorPaneRootViewController) = 0;

      v33 = *(v3 + OBJC_IVAR____TtC10WorkflowUI25WFActionDrawerCoordinator_presentedInspectorPaneContentViewController);
      *(v3 + OBJC_IVAR____TtC10WorkflowUI25WFActionDrawerCoordinator_presentedInspectorPaneContentViewController) = 0;

      v34 = OBJC_IVAR____TtC10WorkflowUI25WFActionDrawerCoordinator_presentedPopover;
      v35 = *(v3 + OBJC_IVAR____TtC10WorkflowUI25WFActionDrawerCoordinator_presentedPopover);
      if (v35)
      {
        v36 = v35;
        [v36 dismissViewControllerAnimated:1 completion:0];
      }

      v37 = *(v3 + v34);
      *(v3 + v34) = 0;

      a1 = v101;
    }

LABEL_18:
    v98 = v14;
    v99 = v6;
    (*(v8 + 104))(v12, *MEMORY[0x277D7BD50], v6);
    v39 = objc_allocWithZone(sub_2749F9BB4());
    v40 = sub_2749F9B04();
    OUTLINED_FUNCTION_8_17();
    sub_274720EB8(v41, v42, v43);
    swift_unknownObjectRetain();
    sub_2749F9B94();
    sub_2749F9B14();
    sub_2749F9AC4();
    v44 = v40;
    v45 = [a1 view];
    if (v45)
    {
      v46 = v45;
      [v45 bounds];
      OUTLINED_FUNCTION_36();

      v47 = OUTLINED_FUNCTION_4_0();
      [v48 v49];
      [v44 setAutoresizingMask_];

      v50 = *(v3 + OBJC_IVAR____TtC10WorkflowUI25WFActionDrawerCoordinator_drawerSheetView);
      *(v3 + OBJC_IVAR____TtC10WorkflowUI25WFActionDrawerCoordinator_drawerSheetView) = v44;
      v51 = v44;

      type metadata accessor for WFDrawerSearchControlsView();
      v52 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
      [v52 setAutoresizingMask_];
      v53 = sub_2749F9B64();
      [v53 frame];

      v54 = sub_2749F9B64();
      [v54 bounds];
      v56 = v55;
      v58 = v57;

      CGSizeMake([v52 sizeThatFits_]);
      [v52 frame];
      [v52 setFrame_];

      v59 = sub_2749F9B64();
      [v59 addSubview_];

      objc_allocWithZone(type metadata accessor for WFDrawerViewController());
      v60 = v52;

      v62 = sub_27483E180(v61, v52);
      *&v62[OBJC_IVAR____TtC10WorkflowUI22WFDrawerViewController_delegate + 8] = &off_288395648;
      swift_unknownObjectWeakAssign();
      v63 = v62;
      v64 = [v63 view];
      if (v64)
      {
        v65 = v64;
        [v64 setAutoresizingMask_];

        v66 = [v63 view];
        if (v66)
        {
          v67 = v66;
          v68 = sub_2749F9AE4();
          [v68 frame];
          OUTLINED_FUNCTION_36();

          v69 = OUTLINED_FUNCTION_4_0();
          [v70 v71];

          v72 = sub_2749F9AE4();
          v73 = [v63 view];
          if (v73)
          {
            v74 = v73;
            [v72 addSubview_];

            v75 = *&v63[OBJC_IVAR____TtC10WorkflowUI22WFDrawerViewController_tableView];
            sub_2749F9AD4();
            sub_2748152F4(v3);
            v76 = *(v3 + v13);
            *(v3 + v13) = v63;
            v77 = v63;

            v78 = *(v3 + OBJC_IVAR____TtC10WorkflowUI25WFActionDrawerCoordinator_toolbar);
            if (v78)
            {
              v79 = objc_allocWithZone(type metadata accessor for WFDrawerEmbeddedToolbarView());
              v80 = v78;
              v81 = sub_2747F2F2C(v80);
              v82 = sub_2749F9B64();
              [v82 bounds];
              OUTLINED_FUNCTION_36();

              v102.origin.x = OUTLINED_FUNCTION_4_0();
              CGRectGetWidth(v102);
              [v81 setFrame_];
              [v81 setAutoresizingMask_];

              v83 = sub_2749F9B64();
              [v83 addSubview_];

              v84 = *(v3 + OBJC_IVAR____TtC10WorkflowUI25WFActionDrawerCoordinator_drawerEmbeddedToolbarView);
              *(v3 + OBJC_IVAR____TtC10WorkflowUI25WFActionDrawerCoordinator_drawerEmbeddedToolbarView) = v81;
              v85 = v81;

              sub_2747F3FC8();
            }

            if (!a2)
            {
              v87 = v101;
              v90 = [v101 view];
              if (v90)
              {
                v89 = v90;
                [v90 addSubview_];
                goto LABEL_29;
              }

              goto LABEL_46;
            }

            v86 = a2;
            v87 = v101;
            v88 = [v101 view];
            if (v88)
            {
              v89 = v88;
              [v88 insertSubview:v51 belowSubview:v86];

LABEL_29:
              [v87 addChildViewController_];
              [v77 didMoveToParentViewController_];
              sub_2749FD374();
              sub_2749FA514();
              sub_2749FD384();

              v14 = v98;
              v6 = v99;
              goto LABEL_40;
            }

LABEL_45:
            __break(1u);
LABEL_46:
            __break(1u);
            goto LABEL_47;
          }

LABEL_44:
          __break(1u);
          goto LABEL_45;
        }

LABEL_43:
        __break(1u);
        goto LABEL_44;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_43;
  }

  if (v15 != 1)
  {
    v38 = v14;
    goto LABEL_18;
  }

  if (!v14)
  {
LABEL_40:
    sub_274814514(v12);
    sub_274817A64(v12, 1);

    (*(v8 + 8))(v12, v6);
    return;
  }

  v16 = v14;
  v17 = [v16 parentViewController];
  if (v17)
  {
    v18 = v17;
    sub_27471CF08(0, &unk_28159E510);
    v19 = v101;
    v20 = sub_2749FD604();

    if (v20)
    {

LABEL_39:
      goto LABEL_40;
    }
  }

  [v16 willMoveToParentViewController_];
  v91 = [v16 view];
  if (!v91)
  {
    goto LABEL_48;
  }

  v92 = v91;
  [v91 removeFromSuperview];

  [v16 removeFromParentViewController];
  [v101 addChildViewController_];
  if (a2)
  {
    v93 = a2;
    v94 = [v101 view];
    if (v94)
    {
      v95 = v94;
      v96 = [v16 view];

      if (v96)
      {
        [v95 insertSubview:v96 belowSubview:v93];

LABEL_38:
        [v16 didMoveToParentViewController_];
        goto LABEL_39;
      }

      goto LABEL_50;
    }

LABEL_49:
    __break(1u);
LABEL_50:
    __break(1u);
    goto LABEL_51;
  }

  v97 = [v101 view];
  if (!v97)
  {
LABEL_52:
    __break(1u);
    goto LABEL_53;
  }

  v95 = v97;
  v96 = [v16 view];

  if (v96)
  {
    [v95 addSubview_];
    goto LABEL_38;
  }

LABEL_53:
  __break(1u);
}

void sub_274815FE8(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC10WorkflowUI25WFActionDrawerCoordinator_drawerViewController;
  v5 = *(v1 + OBJC_IVAR____TtC10WorkflowUI25WFActionDrawerCoordinator_drawerViewController);
  v6 = *(v1 + OBJC_IVAR____TtC10WorkflowUI25WFActionDrawerCoordinator_presentationMode);
  *(v1 + OBJC_IVAR____TtC10WorkflowUI25WFActionDrawerCoordinator_presentationMode) = 2;
  if (v6 == 1)
  {
    if (v5)
    {
      v21 = v5;
      [v21 willMoveToParentViewController_];
      v22 = [v21 view];
      if (!v22)
      {
LABEL_35:
        __break(1u);
LABEL_36:
        __break(1u);
        goto LABEL_37;
      }

      v23 = v22;
      [v22 removeFromSuperview];

      [v21 removeFromParentViewController];
      v24 = *(v2 + v4);
      *(v2 + v4) = 0;

      v25 = OBJC_IVAR____TtC10WorkflowUI25WFActionDrawerCoordinator_drawerSheetView;
      v26 = *(v2 + OBJC_IVAR____TtC10WorkflowUI25WFActionDrawerCoordinator_drawerSheetView);
      if (v26)
      {
        v27 = v26;
        [v27 removeFromSuperview];
      }

      v28 = *(v2 + v25);
      *(v2 + v25) = 0;
    }

LABEL_17:
    v30 = OBJC_IVAR____TtC10WorkflowUI25WFActionDrawerCoordinator_inspectorPaneNavigationController;
    v31 = *(v2 + OBJC_IVAR____TtC10WorkflowUI25WFActionDrawerCoordinator_inspectorPaneNavigationController);
    if (v31)
    {
      v32 = v31;
      [v32 willMoveToParentViewController_];
      v33 = [v32 view];
      if (!v33)
      {
LABEL_34:
        __break(1u);
        goto LABEL_35;
      }

      v34 = v33;
      [v33 removeFromSuperview];

      [v32 removeFromParentViewController];
      v35 = *(v2 + v30);
      *(v2 + v30) = 0;
    }

    v36 = objc_allocWithZone(type metadata accessor for WFDrawerViewController());

    v38 = sub_27483E180(v37, 0);
    *&v38[OBJC_IVAR____TtC10WorkflowUI22WFDrawerViewController_delegate + 8] = &off_288395648;
    swift_unknownObjectWeakAssign();
    v39 = [v38 view];
    if (v39)
    {
      v40 = v39;
      v64 = v5;
      v41 = objc_allocWithZone(MEMORY[0x277D75348]);
      v42 = sub_2747CA0C4(sub_274816624, 0);
      [v40 setBackgroundColor_];

      v43 = *(v2 + v4);
      *(v2 + v4) = v38;
      v44 = v38;

      v45 = OBJC_IVAR____TtC10WorkflowUI25WFActionDrawerCoordinator_inspectorPaneRootViewController;
      v46 = *(v2 + OBJC_IVAR____TtC10WorkflowUI25WFActionDrawerCoordinator_inspectorPaneRootViewController);
      v47 = a1;
      if (v46)
      {
        v48 = *(v2 + OBJC_IVAR____TtC10WorkflowUI25WFActionDrawerCoordinator_inspectorPaneRootViewController);
        v49 = v48;
      }

      else
      {
        v49 = [objc_allocWithZone(MEMORY[0x277D75D28]) init];
        v48 = 0;
        v46 = *(v2 + v45);
      }

      *(v2 + v45) = v49;
      v50 = v49;
      v51 = v48;

      sub_274817338(v44);
      v52 = [objc_allocWithZone(WFComposeNavigationController) initWithRootViewController_];
      v53 = [objc_allocWithZone(MEMORY[0x277D75788]) init];
      v54 = [v50 navigationItem];
      v55 = v53;
      [v54 setScrollEdgeAppearance_];

      v56 = [v50 navigationItem];
      [v56 setCompactScrollEdgeAppearance_];

      v57 = v52;
      [a1 addChildViewController_];
      v58 = [a1 view];
      if (v58)
      {
        v59 = v58;
        v60 = [v57 view];

        if (v60)
        {
          [v59 addSubview_];

          [v57 didMoveToParentViewController_];
          *(v2 + v30) = v57;
          goto LABEL_27;
        }

        goto LABEL_33;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  if (v6 != 2)
  {
    v29 = v5;
    goto LABEL_17;
  }

  if (!v5)
  {
    OUTLINED_FUNCTION_56_1();
    return;
  }

  v7 = v5;
  v8 = [v7 parentViewController];
  if (v8)
  {
    v9 = v8;
    sub_27471CF08(0, &unk_28159E510);
    v10 = a1;
    v11 = sub_2749FD604();

    if (v11)
    {
      goto LABEL_10;
    }
  }

  [v7 willMoveToParentViewController_];
  v12 = [v7 view];
  if (!v12)
  {
    goto LABEL_36;
  }

  v13 = v12;
  [v12 removeFromSuperview];

  [v7 removeFromParentViewController];
  [a1 addChildViewController_];
  v14 = [a1 view];
  if (!v14)
  {
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  v15 = v14;
  v16 = [v7 view];
  if (!v16)
  {
LABEL_38:
    __break(1u);
    return;
  }

  v17 = v16;
  [v15 addSubview_];

  [v7 didMoveToParentViewController_];
LABEL_10:
  v18 = [objc_allocWithZone(MEMORY[0x277D75788]) init];
  v19 = [v7 navigationItem];
  v63 = v18;
  [v19 setScrollEdgeAppearance_];

  v20 = [v7 navigationItem];
  [v20 setCompactScrollEdgeAppearance_];

LABEL_27:
  OUTLINED_FUNCTION_56_1();
}

id sub_274816624(void *a1)
{
  if ([a1 userInterfaceStyle] == 2)
  {
    v1 = [objc_opt_self() systemGray4Color];
    v2 = [v1 colorWithAlphaComponent_];

    return v2;
  }

  else
  {
    v4 = objc_allocWithZone(MEMORY[0x277D75348]);

    return [v4 initWithRed:0.969 green:0.969 blue:0.976 alpha:1.0];
  }
}

void sub_2748166E4()
{
  v1 = v0;
  OUTLINED_FUNCTION_1_18();
  v3 = v2;
  v5 = v4;
  sub_2749FA524();
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_2_0();
  v7 = sub_2749F9CB4();
  OUTLINED_FUNCTION_43();
  v9 = v8;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_2_0();
  v13 = v12 - v11;
  sub_2749F9BF4();
  OUTLINED_FUNCTION_43();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_2_0();
  v19 = v18 - v17;
  v20 = *(v1 + OBJC_IVAR____TtC10WorkflowUI25WFActionDrawerCoordinator_drawerViewController);
  if (!v20)
  {
    goto LABEL_34;
  }

  v102 = v19;
  v103 = v16;
  v104 = v15;
  sub_2749F9D24();
  v107 = swift_dynamicCastClass();
  if (v107)
  {
    v21 = v5;
    if (v3)
    {
LABEL_4:
      v105 = v20;
      [v5 setModalPresentationStyle_];
      if (v107)
      {
        v22 = v107;
        v23 = sub_2749F9D04();
        CGSizeMake(v23);
        sub_2749F9CF4();
        [v5 setPreferredContentSize_];
      }

      else
      {
        [v5 setPreferredContentSize_];
      }

      v26 = [v5 popoverPresentationController];
      if (!v26)
      {
LABEL_13:
        [v105 presentViewController:v5 animated:1 completion:0];
        v39 = *(v1 + OBJC_IVAR____TtC10WorkflowUI25WFActionDrawerCoordinator_presentedPopover);
        *(v1 + OBJC_IVAR____TtC10WorkflowUI25WFActionDrawerCoordinator_presentedPopover) = v5;
        v40 = v5;

        if (v107)
        {
          OUTLINED_FUNCTION_86();
          swift_allocObject();
          OUTLINED_FUNCTION_29_9();

          sub_2749F9CE4();
        }

        goto LABEL_15;
      }

      v27 = v26;
      [v26 setDelegate_];
      v28 = v105;
      v29 = [v28 view];
      v30 = OUTLINED_FUNCTION_24_1();
      [v30 v31];

      v32 = [v28 view];
      if (v32)
      {
        v33 = OUTLINED_FUNCTION_26_8();
        [v34 v35];
        OUTLINED_FUNCTION_36();

        v36 = OUTLINED_FUNCTION_4_0();
        [v37 v38];

        goto LABEL_13;
      }

      __break(1u);
      goto LABEL_46;
    }
  }

  else
  {
    v107 = 0;
    if (v3)
    {
      goto LABEL_4;
    }
  }

  v24 = *(v1 + OBJC_IVAR____TtC10WorkflowUI25WFActionDrawerCoordinator_drawerSheetView);
  v101 = v20;
  v25 = v20;
  if (v24)
  {
    v106 = [v24 superview];
  }

  else
  {
    v106 = 0;
  }

  type metadata accessor for WFPreviewNavigationController();
  v43 = swift_dynamicCastClass();
  if (v43)
  {
    v44 = v43;
    v99 = *(v103 + 104);
    v99(v102, *MEMORY[0x277D7BD50], v104);
    v45 = objc_allocWithZone(sub_2749F9BB4());
    v46 = v5;
    v47 = sub_2749F9B04();
    sub_2749F9BA4();
    sub_2749F9B14();
    sub_2749F9AC4();
    v48 = v47;
    if (v106)
    {
      [v106 bounds];
      OUTLINED_FUNCTION_36();
    }

    else
    {
      v106 = 0;
    }

    v50 = OUTLINED_FUNCTION_4_0();
    [v51 v52];
    [v47 setAutoresizingMask_];

    (*(v9 + 104))(v13, *MEMORY[0x277D7BD90], v7);
    sub_2749F9B34();
    [v106 addSubview_];
    v53 = v46;
    v54 = [v44 view];
    if (!v54)
    {
LABEL_46:
      __break(1u);
      goto LABEL_47;
    }

    v55 = v54;
    v56 = sub_2749F9AE4();
    [v56 frame];
    OUTLINED_FUNCTION_36();

    v57 = OUTLINED_FUNCTION_4_0();
    [v58 v59];

    v60 = [v44 view];
    if (!v60)
    {
LABEL_47:
      __break(1u);
      goto LABEL_48;
    }

    v61 = v60;
    [v60 setAutoresizingMask_];

    v62 = sub_2749F9AE4();
    v63 = [v44 view];
    if (!v63)
    {
LABEL_48:
      __break(1u);
LABEL_49:
      __break(1u);
      goto LABEL_50;
    }

    v64 = v63;
    v65 = OUTLINED_FUNCTION_24_1();
    [v65 v66];

    v67 = *&v44[OBJC_IVAR___WFPreviewNavigationController_rootViewController];
    type metadata accessor for WFIconPickerViewController();
    v68 = swift_dynamicCastClass();
    if (v68)
    {
      v69 = *(v68 + OBJC_IVAR___WFIconPickerViewController_gridView);
      v70 = v67;
      v71 = v69;
      sub_2749F9AD4();
    }

    v72 = [v101 parentViewController];
    if (v72)
    {
      v73 = v72;
      [v72 addChildViewController_];
      [v44 didMoveToParentViewController_];
    }

    v99(v102, *MEMORY[0x277D7BD40], v104);
    OUTLINED_FUNCTION_30_0();
    sub_2749F9B44();
    (*(v103 + 8))(v102, v104);
    sub_2749FD374();
    sub_2749FA514();
    sub_2749FD384();

LABEL_34:
    OUTLINED_FUNCTION_31_12();
    return;
  }

  if (v107)
  {
    v49 = OBJC_IVAR____TtC10WorkflowUI25WFActionDrawerCoordinator_actionDetailsSheetView;
    if (!*(v1 + OBJC_IVAR____TtC10WorkflowUI25WFActionDrawerCoordinator_actionDetailsSheetView))
    {
      v100 = *(v103 + 104);
      v100(v102, *MEMORY[0x277D7BD50], v104);
      v74 = objc_allocWithZone(sub_2749F9BB4());
      v75 = sub_2749F9B04();
      OUTLINED_FUNCTION_8_17();
      sub_274720EB8(v76, v77, v78);
      swift_unknownObjectRetain();
      sub_2749F9B94();
      sub_2749F9B14();
      v79 = v107;
      sub_2749F9B24();
      v80 = v75;
      [v80 setAutoresizingMask_];
      if (v106)
      {
        [v106 bounds];
      }

      else
      {
        v106 = 0;
        v81 = *MEMORY[0x277CBF3A0];
        v82 = *(MEMORY[0x277CBF3A0] + 8);
        v83 = *(MEMORY[0x277CBF3A0] + 16);
        v84 = *(MEMORY[0x277CBF3A0] + 24);
      }

      [v80 setFrame_];

      [v106 addSubview_];
      v85 = v79;
      v86 = [v85 view];
      if (!v86)
      {
        goto LABEL_49;
      }

      v87 = v86;
      v88 = sub_2749F9AE4();
      [v88 frame];
      OUTLINED_FUNCTION_36();

      v89 = OUTLINED_FUNCTION_4_0();
      [v90 v91];

      v92 = [v85 view];
      if (!v92)
      {
LABEL_50:
        __break(1u);
        goto LABEL_51;
      }

      v93 = v92;
      [v92 setAutoresizingMask_];

      v94 = sub_2749F9AE4();
      v95 = [v85 view];

      if (!v95)
      {
LABEL_51:
        __break(1u);
        return;
      }

      [v94 addSubview_];

      v100(v102, *MEMORY[0x277D7BD40], v104);
      OUTLINED_FUNCTION_30_0();
      sub_2749F9B44();
      (*(v103 + 8))(v102, v104);
      v96 = OBJC_IVAR____TtC10WorkflowUI22WFDrawerViewController_searchControlsView;
      if ([*(*&v20[OBJC_IVAR____TtC10WorkflowUI22WFDrawerViewController_searchControlsView] + OBJC_IVAR____TtC10WorkflowUI26WFDrawerSearchControlsView_searchBar) isFirstResponder])
      {
        swift_unknownObjectWeakAssign();
        [*(*&v20[v96] + OBJC_IVAR____TtC10WorkflowUI26WFDrawerSearchControlsView_searchBar) resignFirstResponder];
      }

      v97 = *(v1 + v49);
      *(v1 + v49) = v80;
      v98 = v80;

      OUTLINED_FUNCTION_86();
      swift_allocObject();
      OUTLINED_FUNCTION_29_9();

      sub_2749F9CE4();

      goto LABEL_34;
    }
  }

  else
  {
  }

LABEL_15:
  OUTLINED_FUNCTION_31_12();
}

void sub_274817164()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = OBJC_IVAR____TtC10WorkflowUI25WFActionDrawerCoordinator_presentedPopover;
    v3 = *(Strong + OBJC_IVAR____TtC10WorkflowUI25WFActionDrawerCoordinator_presentedPopover);
    if (v3)
    {
      [v3 dismissViewControllerAnimated:1 completion:0];
      v4 = *&v1[v2];
    }

    else
    {
      v4 = 0;
    }

    *&v1[v2] = 0;
  }
}

void sub_2748171F4()
{
  v0 = sub_2749F9BF4();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v6 = *(Strong + OBJC_IVAR____TtC10WorkflowUI25WFActionDrawerCoordinator_actionDetailsSheetView);
    v7 = v6;

    if (v6)
    {
      (*(v1 + 104))(v3, *MEMORY[0x277D7BD50], v0);
      sub_2749F9B44();

      (*(v1 + 8))(v3, v0);
    }
  }
}

void sub_274817338(void *a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC10WorkflowUI25WFActionDrawerCoordinator_inspectorPaneRootViewController);
  if (!v2)
  {
    OUTLINED_FUNCTION_56_1();
    return;
  }

  v4 = OBJC_IVAR____TtC10WorkflowUI25WFActionDrawerCoordinator_presentedInspectorPaneContentViewController;
  v5 = *(v1 + OBJC_IVAR____TtC10WorkflowUI25WFActionDrawerCoordinator_presentedInspectorPaneContentViewController);
  if (v5)
  {
    v6 = v2;
    v7 = v5;
    [v7 willMoveToParentViewController_];
    v8 = [v7 view];
    if (!v8)
    {
LABEL_32:
      __break(1u);
      return;
    }

    v9 = v8;
    [v8 removeFromSuperview];

    [v7 removeFromParentViewController];
  }

  else
  {
    v10 = v2;
  }

  [v2 addChildViewController_];
  v11 = OUTLINED_FUNCTION_19_11();
  if (!v11)
  {
    __break(1u);
    goto LABEL_22;
  }

  v12 = v11;
  v13 = OUTLINED_FUNCTION_18_13();
  if (!v13)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v14 = v13;
  [v12 addSubview_];

  v15 = OUTLINED_FUNCTION_25_7();
  [v15 v16];
  v17 = *(v1 + v4);
  *(v1 + v4) = a1;
  v18 = a1;

  v19 = OUTLINED_FUNCTION_18_13();
  if (!v19)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v20 = v19;
  [v19 setTranslatesAutoresizingMaskIntoConstraints_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28096C990);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_274A108E0;
  v22 = OUTLINED_FUNCTION_18_13();
  if (!v22)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v23 = v22;
  v24 = [v22 topAnchor];

  v25 = OUTLINED_FUNCTION_19_11();
  if (!v25)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v26 = v25;
  v27 = [v25 topAnchor];

  v28 = OUTLINED_FUNCTION_17_10();
  *(v21 + 32) = v28;
  v29 = OUTLINED_FUNCTION_18_13();
  if (!v29)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v30 = v29;
  v31 = [v29 leadingAnchor];

  v32 = OUTLINED_FUNCTION_19_11();
  if (!v32)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v33 = v32;
  v34 = [v32 leadingAnchor];

  v35 = OUTLINED_FUNCTION_17_10();
  *(v21 + 40) = v35;
  v36 = OUTLINED_FUNCTION_18_13();
  if (!v36)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v37 = v36;
  v38 = [v36 trailingAnchor];

  v39 = OUTLINED_FUNCTION_19_11();
  if (!v39)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v40 = v39;
  v41 = [v39 trailingAnchor];

  v42 = OUTLINED_FUNCTION_17_10();
  *(v21 + 48) = v42;
  v43 = OUTLINED_FUNCTION_18_13();
  if (!v43)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v44 = v43;
  v45 = [v43 bottomAnchor];

  v46 = OUTLINED_FUNCTION_19_11();
  if (!v46)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v47 = v46;
  v48 = objc_opt_self();
  v49 = [v47 bottomAnchor];

  v50 = [v45 constraintEqualToAnchor_];
  *(v21 + 56) = v50;
  sub_27471CF08(0, &qword_280968040);
  v53 = sub_2749FCF74();

  [v48 activateConstraints_];

  OUTLINED_FUNCTION_56_1();
}

uint64_t sub_274817774(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_2749F9BF4();
  OUTLINED_FUNCTION_43();
  v8 = v7;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_2_0();
  v12 = v11 - v10;
  OUTLINED_FUNCTION_86();
  v13 = swift_allocObject();
  OUTLINED_FUNCTION_29_9();
  v14 = swift_allocObject();
  v14[2] = v13;
  v14[3] = a1;
  v14[4] = a2;
  if (*(v3 + OBJC_IVAR____TtC10WorkflowUI25WFActionDrawerCoordinator_presentationMode) == 2)
  {

    sub_274817958(v13, a1, a2);
  }

  else
  {
    v15 = *(v3 + OBJC_IVAR____TtC10WorkflowUI25WFActionDrawerCoordinator_drawerSheetView);
    if (v15)
    {
      v16 = OUTLINED_FUNCTION_25_7();
      v17(v16);

      v18 = v15;
      sub_2749F9B44();

      return (*(v8 + 8))(v12, v6);
    }
  }
}

void sub_274817958(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    v7 = *(Strong + OBJC_IVAR____TtC10WorkflowUI25WFActionDrawerCoordinator_drawerViewController);
    v8 = v7;

    if (v7)
    {
      sub_2748408FC(*MEMORY[0x277CFC5E8]);
      v9 = objc_opt_self();
      v10 = *&v8[OBJC_IVAR____TtC10WorkflowUI22WFDrawerViewController_tableView];
      v11 = objc_allocWithZone(MEMORY[0x277D44360]);
      v12 = v10;

      v13 = sub_27481A474(a2, a3, v12, 0, 0);
      [v9 runTestWithParameters_];
    }
  }
}

id sub_274817A64(uint64_t a1, char a2)
{
  v3 = v2;
  v6 = sub_2749F9BF4();
  OUTLINED_FUNCTION_43();
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v11);
  v12 = &v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_274814514(v12);
  OUTLINED_FUNCTION_9_13();
  sub_274720EB8(v13, 255, v14);
  v15 = sub_2749FCD54();
  v16 = *(v8 + 8);
  v17 = OUTLINED_FUNCTION_34_2();
  result = v16(v17);
  if (v15 & 1) == 0 || (a2)
  {
    v50 = v16;
    if (swift_unknownObjectWeakLoadStrong())
    {
      sub_2748B61E8();
      swift_unknownObjectRelease();
    }

    OUTLINED_FUNCTION_86();
    v19 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v20 = *(v8 + 16);
    v48 = v8 + 16;
    v49 = v20;
    v20(&v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v6);
    v51 = v3;
    v43 = *(v8 + 80);
    v46 = (v43 + 24) & ~v43;
    v21 = a1;
    v22 = swift_allocObject();
    *(v22 + 16) = v19;
    v47 = *(v8 + 32);
    OUTLINED_FUNCTION_22_11();
    v23();
    v24 = objc_allocWithZone(MEMORY[0x277D75D40]);
    v25 = sub_27480FE78(sub_27481A644, v22, 0.3, 1.0);
    [v25 startAnimation];

    v45 = *MEMORY[0x277D7BD50];
    v44 = *(v8 + 104);
    v44(&v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
    OUTLINED_FUNCTION_9_13();
    v42 = sub_274720EB8(v26, 255, v27);
    OUTLINED_FUNCTION_21_11();
    LOBYTE(v25) = sub_2749FCD34();
    v28 = OUTLINED_FUNCTION_34_2();
    v50(v28);
    if (v25)
    {
      v29 = 0.15;
    }

    else
    {
      v29 = 0.35;
    }

    OUTLINED_FUNCTION_86();
    v30 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v49(&v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v21, v6);
    v31 = v51;
    v32 = swift_allocObject();
    *(v32 + 16) = v30;
    OUTLINED_FUNCTION_22_11();
    v47();
    v33 = objc_allocWithZone(MEMORY[0x277D75D40]);
    v34 = sub_27480FE78(sub_27481A728, v32, v29, 1.0);
    v35 = v44;
    (v44)(v12, v45, v6);
    OUTLINED_FUNCTION_21_11();
    LOBYTE(v30) = sub_2749FCD34();
    v36 = OUTLINED_FUNCTION_34_2();
    v37 = v50;
    v50(v36);
    v38 = 0.06;
    if (v30)
    {
      v38 = 0.0;
    }

    [v34 startAnimationAfterDelay_];

    (v35)(v12, *MEMORY[0x277D7BD48], v6);
    v39 = sub_2749F9BE4();
    v40 = OUTLINED_FUNCTION_34_2();
    result = v37(v40);
    if (v39)
    {
      v41 = *(v31 + OBJC_IVAR____TtC10WorkflowUI25WFActionDrawerCoordinator_drawerViewController);
      if (v41)
      {
        return [*(*(v41 + OBJC_IVAR____TtC10WorkflowUI22WFDrawerViewController_searchControlsView) + OBJC_IVAR____TtC10WorkflowUI26WFDrawerSearchControlsView_searchBar) resignFirstResponder];
      }
    }
  }

  return result;
}

void sub_274817EE0()
{
  v0 = sub_2749F9BF4();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v11 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v6 = *(Strong + OBJC_IVAR____TtC10WorkflowUI25WFActionDrawerCoordinator_drawerViewController);
    v7 = v6;

    if (v6)
    {
      v8 = *&v7[OBJC_IVAR____TtC10WorkflowUI22WFDrawerViewController_contentContainer];

      (*(v1 + 104))(v3, *MEMORY[0x277D7BD50], v0);
      sub_274720EB8(&unk_28096A2A0, 255, MEMORY[0x277D7BD58]);
      v9 = sub_2749FCD34();
      (*(v1 + 8))(v3, v0);
      v10 = 0.0;
      if (v9)
      {
        v10 = 1.0;
      }

      [v8 setAlpha_];
    }
  }
}

void sub_2748180AC()
{
  v0 = sub_2749F9BF4();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v6 = *(Strong + OBJC_IVAR____TtC10WorkflowUI25WFActionDrawerCoordinator_drawerEmbeddedToolbarView);
    v7 = v6;

    if (v6)
    {
      (*(v1 + 104))(v3, *MEMORY[0x277D7BD50], v0);
      sub_274720EB8(&unk_28096A2A0, 255, MEMORY[0x277D7BD58]);
      v8 = sub_2749FCD34();
      (*(v1 + 8))(v3, v0);
      v9 = 1.0;
      if (v8)
      {
        v9 = 0.0;
      }

      [v7 setAlpha_];
    }
  }
}

id sub_27481829C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for WFActionDrawerCoordinator();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_2748183D0()
{
  v1 = *(v0 + OBJC_IVAR____TtC10WorkflowUI25WFActionDrawerCoordinator_presentedPopover);
  *(v0 + OBJC_IVAR____TtC10WorkflowUI25WFActionDrawerCoordinator_presentedPopover) = 0;
}

_BYTE *storeEnumTagSinglePayload for WFActionDrawerPresentationMode(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_27481852C()
{
  result = qword_28096A260;
  if (!qword_28096A260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28096A260);
  }

  return result;
}

void sub_274818580()
{
  OUTLINED_FUNCTION_48();
  v1 = v0;
  v3 = v2;
  sub_2749FCA74();
  OUTLINED_FUNCTION_43();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_2_0();
  v7 = v6 - v5;
  sub_2749FCAA4();
  OUTLINED_FUNCTION_43();
  v29 = v9;
  v30 = v8;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_2_0();
  v12 = v11 - v10;
  v13 = OBJC_IVAR____TtC10WorkflowUI25WFActionDrawerCoordinator_actionDetailsSheetView;
  v14 = *(v1 + OBJC_IVAR____TtC10WorkflowUI25WFActionDrawerCoordinator_actionDetailsSheetView);
  if (v14)
  {
    sub_2749F9BB4();
    v15 = v3;
    v16 = v14;
    v17 = sub_2749FD604();

    if (v17)
    {
      sub_27471CF08(0, &qword_28159E4E0);
      v28 = sub_2749FD404();
      OUTLINED_FUNCTION_86();
      v18 = swift_allocObject();
      swift_unknownObjectWeakInit();
      OUTLINED_FUNCTION_32_2();
      v19 = swift_allocObject();
      *(v19 + 16) = v18;
      *(v19 + 24) = v15;
      OUTLINED_FUNCTION_5_21(v19);
      OUTLINED_FUNCTION_49_1(COERCE_DOUBLE(1107296256));
      v31[2] = v20;
      v31[3] = &block_descriptor_19;
      v21 = _Block_copy(v31);
      v22 = v15;

      sub_2749FCA94();
      OUTLINED_FUNCTION_7_14();
      sub_274720EB8(v23, 255, v24);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28096DB60);
      sub_27473FCD0();
      sub_2749FD7B4();
      MEMORY[0x277C5F170](0, v12, v7, v21);
      _Block_release(v21);

      v25 = OUTLINED_FUNCTION_34_2();
      v26(v25);
      (*(v29 + 8))(v12, v30);

      v27 = *(v1 + v13);
      *(v1 + v13) = 0;
    }
  }

  OUTLINED_FUNCTION_46();
}

void sub_274818854()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = *(Strong + OBJC_IVAR____TtC10WorkflowUI25WFActionDrawerCoordinator_drawerViewController);
    v3 = v2;

    if (v2)
    {
      v4 = swift_unknownObjectWeakLoadStrong();

      if (v4)
      {
        sub_27471CF08(0, &qword_28159E390);
        v5 = sub_2749FD604();

        if (v5)
        {
          swift_beginAccess();
          v6 = swift_unknownObjectWeakLoadStrong();
          if (v6)
          {
            v7 = v6;
            v8 = *(v6 + OBJC_IVAR____TtC10WorkflowUI25WFActionDrawerCoordinator_drawerViewController);
            v9 = v8;

            if (v8)
            {
              swift_unknownObjectWeakAssign();
            }
          }

          swift_beginAccess();
          v10 = swift_unknownObjectWeakLoadStrong();
          if (v10)
          {
            v11 = v10;
            v12 = *(v10 + OBJC_IVAR____TtC10WorkflowUI25WFActionDrawerCoordinator_drawerViewController);
            v13 = v12;

            if (v12)
            {
              v14 = *&v13[OBJC_IVAR____TtC10WorkflowUI22WFDrawerViewController_searchControlsView];

              v15 = *&v14[OBJC_IVAR____TtC10WorkflowUI26WFDrawerSearchControlsView_searchBar];
              [v15 becomeFirstResponder];
            }
          }
        }
      }
    }
  }
}

void sub_274818A00(uint64_t a1, void *a2)
{
  v3 = *(v2 + OBJC_IVAR____TtC10WorkflowUI25WFActionDrawerCoordinator_drawerSheetView);
  if (v3)
  {
    sub_2749F9BB4();
    v6 = a2;
    v7 = v3;
    LOBYTE(a2) = sub_2749FD604();

    if (a2)
    {

      sub_274817A64(a1, 0);
    }
  }
}

void sub_274818AC8()
{
  OUTLINED_FUNCTION_48();
  v26 = v1;
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28096A270);
  v5 = OUTLINED_FUNCTION_27(v4);
  v7 = v6;
  MEMORY[0x28223BE20](v5);
  v9 = &v25 - v8;
  v10 = sub_2749F9444();
  OUTLINED_FUNCTION_43();
  v12 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v15);
  v16 = &v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28096C960);
  MEMORY[0x28223BE20](v17 - 8);
  v19 = &v25 - v18;
  if (*&v0[OBJC_IVAR____TtC10WorkflowUI25WFActionDrawerCoordinator_drawerSheetView] && *&v0[OBJC_IVAR____TtC10WorkflowUI25WFActionDrawerCoordinator_drawerViewController])
  {
    sub_274815210(1);
    sub_274814B60();
  }

  v20 = sub_2749FD0E4();
  __swift_storeEnumTagSinglePayload(v19, 1, 1, v20);
  (*(v12 + 16))(&v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), v3, v10);
  sub_27481944C(v26, v9);
  v21 = (*(v12 + 80) + 40) & ~*(v12 + 80);
  v22 = (v14 + *(v7 + 80) + v21) & ~*(v7 + 80);
  v23 = swift_allocObject();
  *(v23 + 2) = 0;
  *(v23 + 3) = 0;
  *(v23 + 4) = v0;
  (*(v12 + 32))(&v23[v21], v16, v10);
  sub_2748194BC(v9, &v23[v22]);
  v24 = v0;
  sub_2748828E4(0, 0, v19, &unk_274A16FD8, v23);

  sub_27472ECBC(v19, &unk_28096C960);
  OUTLINED_FUNCTION_46();
}

uint64_t sub_274818D58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  v7 = sub_2749FA4E4();
  v6[5] = v7;
  v6[6] = *(v7 - 8);
  v6[7] = swift_task_alloc();
  v8 = sub_2749F93E4();
  v6[8] = v8;
  v6[9] = *(v8 - 8);
  v6[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_274818E78, 0, 0);
}

uint64_t sub_274818E78()
{
  OUTLINED_FUNCTION_79();
  v1 = swift_task_alloc();
  v0[11] = v1;
  *v1 = v0;
  v1[1] = sub_274818F20;
  v2 = v0[10];
  v3 = v0[3];
  v4 = v0[4];

  return MEMORY[0x2821E4468](v2, v3, v4);
}

uint64_t sub_274818F20()
{
  OUTLINED_FUNCTION_79();
  v2 = *v1;
  OUTLINED_FUNCTION_8_1();
  *v3 = v2;
  *(v4 + 96) = v0;

  OUTLINED_FUNCTION_30_0();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_274819024()
{
  v1 = v0[10];
  v2 = v0[2];
  v3 = swift_task_alloc();
  v0[13] = v3;
  *(v3 + 16) = v1;
  *(v3 + 24) = v2;
  v4 = swift_task_alloc();
  v0[14] = v4;
  *v4 = v0;
  v4[1] = sub_274819100;

  return sub_274814318(sub_27481A570, v3);
}

void sub_274819100()
{
  v2 = *v1;
  OUTLINED_FUNCTION_8_1();
  *v3 = v2;

  if (v0)
  {
  }

  else
  {

    OUTLINED_FUNCTION_30_0();

    MEMORY[0x2822009F8](v4, v5, v6);
  }
}

uint64_t sub_274819230()
{
  OUTLINED_FUNCTION_79();
  (*(v0[9] + 8))(v0[10], v0[8]);

  OUTLINED_FUNCTION_48_0();

  return v1();
}

uint64_t sub_2748192AC()
{
  v1 = v0[12];
  sub_2749FA3D4();
  v2 = v1;
  v3 = sub_2749FA4D4();
  v4 = sub_2749FD2C4();

  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[12];
  if (v5)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    v9 = v6;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_274719000, v3, v4, "Error creating action for inserting: %@", v7, 0xCu);
    sub_27472ECBC(v8, &qword_28096A280);
    MEMORY[0x277C61040](v8, -1, -1);
    MEMORY[0x277C61040](v7, -1, -1);
  }

  else
  {
  }

  (*(v0[6] + 8))(v0[7], v0[5]);

  OUTLINED_FUNCTION_48_0();

  return v11();
}

uint64_t sub_27481944C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28096A270);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2748194BC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28096A270);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_27481952C(uint64_t a1)
{
  v3 = v2;
  v5 = sub_2749F9444();
  OUTLINED_FUNCTION_27(v5);
  v7 = (*(v6 + 80) + 40) & ~*(v6 + 80);
  v9 = v7 + *(v8 + 64);
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_28096A270) - 8);
  v11 = (v9 + *(v10 + 80)) & ~*(v10 + 80);
  v12 = v1[2];
  v13 = v1[3];
  v14 = v1[4];
  v15 = swift_task_alloc();
  *(v3 + 16) = v15;
  *v15 = v3;
  v15[1] = sub_274819690;

  return sub_274818D58(a1, v12, v13, v14, v1 + v7, v1 + v11);
}

uint64_t sub_274819690()
{
  OUTLINED_FUNCTION_79();
  v1 = *v0;
  OUTLINED_FUNCTION_8_1();
  *v2 = v1;

  OUTLINED_FUNCTION_48_0();

  return v3();
}

void sub_274819774(uint64_t a1@<X0>, BOOL *a2@<X8>)
{
  v4 = sub_2749F93E4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = (&v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v5 + 16))(v7, a1, v4);
  if ((*(v5 + 88))(v7, v4) == *MEMORY[0x277D7BE50])
  {
    (*(v5 + 96))(v7, v4);
    v8 = *v7;
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      sub_2748B6280();

      swift_unknownObjectRelease();
    }

    else
    {
    }

    *a2 = Strong == 0;
  }

  else
  {
    sub_2749FDCB4();
    __break(1u);
  }
}

void sub_2748198FC()
{
  OUTLINED_FUNCTION_1_18();
  v1 = sub_2749F9444();
  OUTLINED_FUNCTION_43();
  v3 = v2;
  v5 = *(v4 + 64);
  v7 = MEMORY[0x28223BE20](v6);
  MEMORY[0x28223BE20](v7);
  v8 = *&v0[OBJC_IVAR____TtC10WorkflowUI25WFActionDrawerCoordinator_drawerViewController];
  if (v8)
  {
    v9 = [v8 traitCollection];
    [v9 horizontalSizeClass];
  }

  v10 = *(v3 + 16);
  OUTLINED_FUNCTION_22_11();
  v10();
  OUTLINED_FUNCTION_22_11();
  v10();
  v11 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = v0;
  (*(v3 + 32))(v12 + v11, &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v1);
  v13 = objc_allocWithZone(sub_2749F9D24());
  v0;
  v14 = sub_2749F9D14();
  OUTLINED_FUNCTION_86();
  swift_allocObject();
  OUTLINED_FUNCTION_29_9();

  sub_2749F9CE4();

  OUTLINED_FUNCTION_26_8();
  sub_2748166E4();
}

uint64_t sub_274819B44(_BYTE *a1, uint64_t a2)
{
  v33 = a2;
  v3 = sub_2749FCA74();
  v38 = *(v3 - 8);
  v39 = v3;
  MEMORY[0x28223BE20](v3);
  v37 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_2749FCAA4();
  v35 = *(v5 - 8);
  v36 = v5;
  MEMORY[0x28223BE20](v5);
  v34 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2749F9444();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = sub_2749F9BF4();
  v32 = *(v10 - 8);
  v11 = MEMORY[0x28223BE20](v10);
  v13 = &v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v29 - v14;
  v16 = *&a1[OBJC_IVAR____TtC10WorkflowUI25WFActionDrawerCoordinator_drawerViewController];
  if (v16)
  {
    swift_unknownObjectWeakAssign();
    if (a1[OBJC_IVAR____TtC10WorkflowUI25WFActionDrawerCoordinator_presentationMode] == 1)
    {
      v17 = *&a1[OBJC_IVAR____TtC10WorkflowUI25WFActionDrawerCoordinator_drawerSheetView];
      if (v17)
      {
        v31 = v16;
        v30 = v17;
        sub_2749F9B84();
        v18 = v32;
        (*(v32 + 104))(v13, *MEMORY[0x277D7BD40], v10);
        v29 = sub_274720EB8(&qword_28096A288, 255, MEMORY[0x277D7BD58]);
        sub_2749FCEF4();
        sub_2749FCEF4();
        v19 = *(v18 + 8);
        v19(v13, v10);
        v19(v15, v10);
        if (aBlock[0] == v40)
        {
          sub_274814F3C();
        }
      }
    }
  }

  sub_274814B54();
  sub_27471CF08(0, &qword_28159E4E0);
  v20 = sub_2749FD404();
  (*(v8 + 16))(&v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v33, v7);
  v21 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v22 = swift_allocObject();
  (*(v8 + 32))(v22 + v21, &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v7);
  *(v22 + ((v9 + v21 + 7) & 0xFFFFFFFFFFFFFFF8)) = a1;
  aBlock[4] = sub_27481A5C0;
  aBlock[5] = v22;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_274760264;
  aBlock[3] = &block_descriptor_66_0;
  v23 = _Block_copy(aBlock);
  v24 = a1;

  v25 = v34;
  sub_2749FCA94();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_274720EB8(&qword_28159E580, 255, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28096DB60);
  sub_27473FCD0();
  v26 = v37;
  v27 = v39;
  sub_2749FD7B4();
  MEMORY[0x277C5F170](0, v25, v26, v23);
  _Block_release(v23);

  (*(v38 + 8))(v26, v27);
  return (*(v35 + 8))(v25, v36);
}

uint64_t sub_27481A0D8()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096A290);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v12 - v1;
  v3 = sub_2749F93E4();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = (&v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v5);
  v9 = &v12 - v8;
  sub_2749F93F4();
  if (__swift_getEnumTagSinglePayload(v2, 1, v3) == 1)
  {
    return sub_27472ECBC(v2, &qword_28096A290);
  }

  (*(v4 + 32))(v9, v2, v3);
  (*(v4 + 16))(v7, v9, v3);
  if ((*(v4 + 88))(v7, v3) == *MEMORY[0x277D7BE50])
  {
    (*(v4 + 96))(v7, v3);
    v11 = *v7;
    if (swift_unknownObjectWeakLoadStrong())
    {
      sub_2748B6280();
      swift_unknownObjectRelease();
    }

    return (*(v4 + 8))(v9, v3);
  }

  else
  {
    result = sub_2749FDCB4();
    __break(1u);
  }

  return result;
}

void sub_27481A328()
{
  v0 = sub_2749F9BF4();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v6 = *&Strong[OBJC_IVAR____TtC10WorkflowUI25WFActionDrawerCoordinator_actionDetailsSheetView];
    if (v6)
    {
      (*(v1 + 104))(v3, *MEMORY[0x277D7BD50], v0);
      v7 = v6;
      sub_2749F9B44();

      (*(v1 + 8))(v3, v0);
    }

    else
    {
    }
  }
}

id sub_27481A474(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  if (!a2)
  {
    v9 = 0;
    if (a4)
    {
      goto LABEL_3;
    }

LABEL_5:
    v10 = 0;
    goto LABEL_6;
  }

  v9 = sub_2749FCD64();

  if (!a4)
  {
    goto LABEL_5;
  }

LABEL_3:
  v13[4] = a4;
  v13[5] = a5;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 1107296256;
  v13[2] = sub_274760264;
  v13[3] = &block_descriptor_81;
  v10 = _Block_copy(v13);

LABEL_6:
  v11 = [v5 initWithTestName:v9 scrollView:a3 completionHandler:v10];
  _Block_release(v10);

  return v11;
}

uint64_t sub_27481A5C0()
{
  v0 = sub_2749F9444();
  OUTLINED_FUNCTION_27(v0);

  return sub_27481A0D8();
}

uint64_t objectdestroy_69Tm()
{
  v1 = sub_2749F9BF4();
  OUTLINED_FUNCTION_43();
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 24) & ~v4;
  v7 = *(v6 + 64);

  (*(v3 + 8))(v0 + v5, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + v7, v4 | 7);
}

uint64_t sub_27481A754(uint64_t (*a1)(void), uint64_t (*a2)(uint64_t, uint64_t))
{
  v3 = *(a1(0) - 8);
  v4 = *(v2 + 16);
  v5 = v2 + ((*(v3 + 80) + 24) & ~*(v3 + 80));

  return a2(v4, v5);
}

id OUTLINED_FUNCTION_18_13()
{

  return [v0 (v1 + 2808)];
}

void sub_27481A89C()
{
  sub_27481E138(319, &qword_28096A330, MEMORY[0x277D7D388], MEMORY[0x277CE11F8]);
  if (v0 <= 0x3F)
  {
    sub_27481E138(319, &qword_28096A338, MEMORY[0x277D7D388], MEMORY[0x277D83940]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_27481A9B4@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v95 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096A340);
  OUTLINED_FUNCTION_34(v3);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_10_1(&v80 - v5);
  v6 = sub_2749FBA94();
  v7 = OUTLINED_FUNCTION_0_0(v6, &v106);
  v92 = v8;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_20_1();
  OUTLINED_FUNCTION_10_1(v9);
  v10 = sub_2749FAF64();
  v11 = OUTLINED_FUNCTION_0_0(v10, &__src[96]);
  v88 = v12;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_20_1();
  OUTLINED_FUNCTION_10_1(v13);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096A348);
  OUTLINED_FUNCTION_34(v14);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v15);
  v17 = &v80 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096A350) - 8;
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v19);
  v21 = &v80 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096A358) - 8;
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v23);
  v25 = &v80 - v24;
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096A360);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v26);
  v28 = &v80 - v27;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096A368);
  OUTLINED_FUNCTION_0_0(v29, &__src[56]);
  v85 = v30;
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_10_1(&v80 - v32);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096A370);
  OUTLINED_FUNCTION_0_0(v33, &v105);
  v90 = v34;
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v35);
  v37 = &v80 - v36;
  v38 = sub_2749FB644();
  v39 = type metadata accessor for IconColorSchemePickerView(0);
  v40 = *(v2 + *(v39 + 24));
  *v17 = v38;
  *(v17 + 1) = v40;
  v17[16] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096A378);
  v81 = v2;
  sub_27481B1E0(v2);
  sub_2749FC914();
  sub_2749FB004();
  sub_2747D31F8(v17, v21, &qword_28096A348);
  memcpy(&v21[*(v18 + 44)], __src, 0x70uLL);
  v41 = sub_27481B740();
  sub_27481C0D4(*(v2 + *(v39 + 28)), v41);

  sub_2749FC914();
  sub_2749FABB4();
  v42 = v21;
  v43 = v37;
  sub_2747D31F8(v42, v25, &qword_28096A350);
  v44 = &v25[*(v22 + 44)];
  v45 = v105;
  *v44 = v104;
  *(v44 + 1) = v45;
  *(v44 + 2) = v106;
  LOBYTE(v39) = sub_2749FBCC4();
  sub_2749FA9E4();
  v47 = v46;
  v49 = v48;
  v51 = v50;
  v53 = v52;
  v54 = v25;
  v55 = v82;
  sub_2747D31F8(v54, v28, &qword_28096A358);
  v56 = v84;
  v57 = &v28[*(v84 + 36)];
  *v57 = v39;
  *(v57 + 1) = v47;
  *(v57 + 2) = v49;
  *(v57 + 3) = v51;
  *(v57 + 4) = v53;
  v57[40] = 0;
  v58 = v86;
  sub_2749FAF54();
  v59 = sub_27481C528();
  v60 = sub_27473DB28(&qword_28159E6A0, MEMORY[0x277CDDB18]);
  v61 = v83;
  v62 = v56;
  v63 = v87;
  sub_2749FBFC4();
  OUTLINED_FUNCTION_40_5();
  v64(v58, v63);
  sub_27472ECBC(v28, &qword_28096A360);
  v65 = v89;
  sub_2749FBA84();
  v99 = v62;
  v100 = v63;
  v101 = v59;
  v102 = v60;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_2749FC1A4();
  OUTLINED_FUNCTION_40_5();
  v67(v65, v93);
  OUTLINED_FUNCTION_40_5();
  v68(v61, v55);
  v69 = v81;
  v70 = sub_27481B740();
  v96 = v69;
  v71 = v94;
  sub_2748D83F8(sub_27481C6F8, v70, v94);

  v72 = v71;
  v73 = type metadata accessor for NamedColorScheme(0);
  if (__swift_getEnumTagSinglePayload(v72, 1, v73) == 1)
  {
    sub_27472ECBC(v72, &qword_28096A340);
    v74 = 0;
    v75 = 0xE000000000000000;
  }

  else
  {
    v76 = (v72 + *(v73 + 20));
    v74 = *v76;
    v75 = v76[1];

    sub_27481C738(v72);
  }

  v99 = v74;
  v100 = v75;
  v97 = v55;
  v98 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  sub_27475D0D0();
  v77 = v91;
  sub_2749FC104();

  OUTLINED_FUNCTION_40_5();
  return v78(v43, v77);
}

uint64_t sub_27481B1E0(uint64_t a1)
{
  v2 = type metadata accessor for IconColorSchemePickerView(0);
  v3 = v2 - 8;
  v4 = *(v2 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = sub_27481B740();
  sub_27481C0D4(*(a1 + *(v3 + 36)), v6);
  v8 = v7;

  v12[1] = v8;
  swift_getKeyPath();
  sub_27481DFB8(a1, v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for IconColorSchemePickerView);
  v9 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v10 = swift_allocObject();
  sub_27481DCA0(v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v10 + v9, type metadata accessor for IconColorSchemePickerView);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096A3A8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096A3B0);
  sub_27472AB6C(&qword_28096A3B8, &qword_28096A3A8);
  sub_27481DD68();
  sub_27472AB6C(&qword_28096A3D0, &qword_28096A3B0);
  return sub_2749FC754();
}

uint64_t sub_27481B41C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for IconColorSchemePickerView(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6 - 8);
  v10 = *a1;
  v11 = *(a2 + *(v9 + 32));
  *a3 = sub_2749FB524();
  *(a3 + 8) = v11;
  *(a3 + 16) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096A3D8);
  v15[1] = v10;
  swift_getKeyPath();
  sub_27481DFB8(a2, v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for IconColorSchemePickerView);
  v12 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v13 = swift_allocObject();
  sub_27481DCA0(v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v13 + v12, type metadata accessor for IconColorSchemePickerView);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280967BD0);
  type metadata accessor for ColorPickerButton(0);
  sub_27472AB6C(&qword_28096A3E0, &qword_280967BD0);
  sub_27473DB28(&qword_28096A3C8, type metadata accessor for NamedColorScheme);
  sub_27473DB28(&qword_28096A3E8, type metadata accessor for ColorPickerButton);
  return sub_2749FC754();
}

uint64_t sub_27481B688@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_27481DFB8(a1, a2, type metadata accessor for NamedColorScheme);
  v3 = type metadata accessor for ColorPickerButton(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280968C28);
  sub_2749FC6E4();
  v4 = *(v3 + 24);
  *(a2 + v4) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096D850);

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_27481B740()
{
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096A3A0);
  v1 = MEMORY[0x28223BE20](v48);
  v44 = &v34 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v1);
  v47 = &v34 - v3;
  v4 = type metadata accessor for NamedColorScheme(0);
  v45 = *(v4 - 8);
  v46 = v4;
  MEMORY[0x28223BE20](v4);
  v6 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = objc_opt_self();
  v8 = [v7 workflowPalette];
  sub_27481DC5C();
  v9 = sub_2749FCF84();

  v10 = [v7 workflowPaletteNames];
  v11 = sub_2749FCF84();

  sub_27481BC74(v9, v11);
  v13 = v12;

  v14 = *(v0 + *(type metadata accessor for IconColorSchemePickerView(0) + 20));
  v15 = *(v14 + 16);
  if (v15)
  {
    v35 = v13;
    v52 = MEMORY[0x277D84F90];
    sub_27476D948();
    v43 = *(v14 + 16);
    result = sub_2749F9EB4();
    v17 = 0;
    v18 = *(result - 8);
    v38 = v14 + ((*(v18 + 80) + 32) & ~*(v18 + 80));
    v39 = v14;
    v19 = v52;
    v40 = v18;
    v41 = result;
    v36 = v18 + 32;
    v37 = v18 + 16;
    v42 = v15;
    v20 = v18;
    v21 = v44;
    while (v43 != v17)
    {
      if (v17 >= *(v14 + 16))
      {
        goto LABEL_11;
      }

      v23 = v47;
      v22 = v48;
      v24 = *(v48 + 48);
      v25 = v38 + *(v20 + 72) * v17;
      v26 = *(v20 + 16);
      v49 = v19;
      v27 = v41;
      v26(&v47[v24], v25, v41);
      *v21 = v17;
      v28 = *(v22 + 48);
      (*(v20 + 32))(&v21[v28], &v23[v24], v27);
      v29 = v27;
      v19 = v49;
      v26(v6, &v21[v28], v29);
      strcpy(v51, "Custom Color ");
      HIWORD(v51[1]) = -4864;
      v50 = ++v17;
      v30 = sub_2749FDC74();
      MEMORY[0x277C5EBC0](v30);

      v31 = v51[1];
      v32 = &v6[*(v46 + 20)];
      *v32 = v51[0];
      *(v32 + 1) = v31;
      sub_27472ECBC(v21, &qword_28096A3A0);
      v52 = v19;
      v33 = *(v19 + 16);
      if (v33 >= *(v19 + 24) >> 1)
      {
        sub_27476D948();
        v19 = v52;
      }

      *(v19 + 16) = v33 + 1;
      result = sub_27481DCA0(v6, v19 + ((*(v45 + 80) + 32) & ~*(v45 + 80)) + *(v45 + 72) * v33, type metadata accessor for NamedColorScheme);
      v14 = v39;
      if (v42 == v17)
      {
        v13 = v35;
        goto LABEL_9;
      }
    }

    __break(1u);
LABEL_11:
    __break(1u);
  }

  else
  {
LABEL_9:
    v51[0] = v13;
    sub_274782C24();
    return v51[0];
  }

  return result;
}

uint64_t sub_27481BB74()
{
  v0 = sub_2749F9EB4();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280968C28);
  MEMORY[0x277C5E410](v4);
  v5 = sub_2749F9EA4();
  (*(v1 + 8))(v3, v0);
  return v5 & 1;
}

void sub_27481BC74(uint64_t a1, uint64_t a2)
{
  v44 = type metadata accessor for NamedColorScheme(0);
  v4 = *(v44 - 8);
  v5 = MEMORY[0x28223BE20](v44);
  v7 = (&v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v5);
  v9 = (&v36 - v8);
  v10 = sub_27472D918(a1);
  v11 = v10;
  v12 = *(a2 + 16);
  if (v12 >= v10)
  {
    v13 = v10;
  }

  else
  {
    v13 = *(a2 + 16);
  }

  v47 = MEMORY[0x277D84F90];
  sub_27476D948();
  if (v11 < 0)
  {
LABEL_48:
    __break(1u);
LABEL_49:

    __break(1u);
    return;
  }

  v15 = v47;
  v42 = *MEMORY[0x277D7D378];
  v46 = a1 >> 62;
  v41 = a1;
  v43 = v12;
  if (v13)
  {
    v16 = a2;
    v17 = 0;
    v45 = a1 & 0xC000000000000001;
    v18 = a1 & 0xFFFFFFFFFFFFFF8;
    v40 = a1 & 0xFFFFFFFFFFFFFF8;
    if (a1 < 0)
    {
      v18 = a1;
    }

    v39 = v18;
    v37 = v16;
    v38 = v9;
    v19 = (v16 + 40);
    while (1)
    {
      v14 = v46 ? sub_2749FD844() : *(v40 + 16);
      if (v17 == v14)
      {
        break;
      }

      if (v45)
      {
        v14 = MEMORY[0x277C5F6D0](v17, a1);
      }

      else
      {
        if (v17 >= *(v40 + 16))
        {
          goto LABEL_47;
        }

        v14 = *(a1 + 8 * v17 + 32);
      }

      if (v12 == v17)
      {
        goto LABEL_49;
      }

      v20 = *(v19 - 1);
      v21 = *v19;
      *v7 = v14;
      v22 = sub_2749F9EB4();
      (*(*(v22 - 8) + 104))(v7, v42, v22);
      v23 = (v7 + *(v44 + 20));
      *v23 = v20;
      v23[1] = v21;
      v47 = v15;
      v25 = *(v15 + 16);
      v24 = *(v15 + 24);

      if (v25 >= v24 >> 1)
      {
        sub_27476D948();
        v15 = v47;
      }

      ++v17;
      *(v15 + 16) = v25 + 1;
      sub_27481DCA0(v7, v15 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v25, type metadata accessor for NamedColorScheme);
      v19 += 2;
      a1 = v41;
      v12 = v43;
      if (v13 == v17)
      {
        a2 = v37;
        v9 = v38;
        v26 = v40;
        goto LABEL_23;
      }
    }

    __break(1u);
LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

  v26 = a1 & 0xFFFFFFFFFFFFFF8;
  v45 = a1 & 0xC000000000000001;
LABEL_23:
  if (a1 < 0)
  {
    v27 = a1;
  }

  else
  {
    v27 = v26;
  }

  v39 = v27;
  v40 = a1 + 32;
  for (i = (a2 + 16 * v13 + 40); ; i += 2)
  {
    v14 = v46 ? sub_2749FD844() : *(v26 + 16);
    if (v13 == v14)
    {
      break;
    }

    if (v45)
    {
      v14 = MEMORY[0x277C5F6D0](v13, v41);
    }

    else
    {
      if (v13 >= *(v26 + 16))
      {
        goto LABEL_45;
      }

      v14 = *(v40 + 8 * v13);
    }

    if (__OFADD__(v13, 1))
    {
      goto LABEL_44;
    }

    if (v12 == v13)
    {

      return;
    }

    if (v13 >= v12)
    {
      goto LABEL_46;
    }

    v29 = v26;
    v30 = *(i - 1);
    v31 = *i;
    *v9 = v14;
    v32 = sub_2749F9EB4();
    (*(*(v32 - 8) + 104))(v9, v42, v32);
    v33 = (v9 + *(v44 + 20));
    *v33 = v30;
    v33[1] = v31;
    v47 = v15;
    v35 = *(v15 + 16);
    v34 = *(v15 + 24);

    if (v35 >= v34 >> 1)
    {
      sub_27476D948();
      v15 = v47;
    }

    *(v15 + 16) = v35 + 1;
    sub_27481DCA0(v9, v15 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v35, type metadata accessor for NamedColorScheme);
    ++v13;
    v12 = v43;
    v26 = v29;
  }
}

void sub_27481C0D4(uint64_t a1, void *a2)
{
  if (a1)
  {
    v4 = a2[2];
    v5 = sub_2748DB104(0, v4, a1);
    v30 = MEMORY[0x277D84F90];
    sub_27476D9A0();
    if (v5 < 0)
    {
      goto LABEL_68;
    }

    if (!v5)
    {
      v10 = 0;
LABEL_32:
      v16 = MEMORY[0x277D84F90];
      while (1)
      {
        v17 = v4 >= v10;
        if (a1 > 0)
        {
          v17 = v10 >= v4;
        }

        if (v17)
        {
          return;
        }

        v18 = v10 + a1;
        if (__OFADD__(v10, a1))
        {
          v19 = ((v10 + a1) >> 63) ^ 0x8000000000000000;
        }

        else
        {
          v19 = v10 + a1;
        }

        if (__OFADD__(v10, a1))
        {
          __break(1u);
LABEL_61:
          __break(1u);
LABEL_62:
          __break(1u);
          goto LABEL_63;
        }

        if (v4 < v18)
        {
          v18 = v4;
        }

        v20 = v18 - v10;
        if (v18 < v10)
        {
          goto LABEL_61;
        }

        if (v10 < 0)
        {
          goto LABEL_62;
        }

        if (v4 == v20)
        {

          v21 = a2;
        }

        else
        {
          v21 = v16;
          if (v18 != v10)
          {
            if (v20 < 1)
            {
              v21 = v16;
            }

            else
            {
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280967BD8);
              v23 = *(type metadata accessor for NamedColorScheme(0) - 8);
              v27 = (*(v23 + 80) + 32) & ~*(v23 + 80);
              v29 = *(v23 + 72);
              v21 = swift_allocObject();
              v24 = _swift_stdlib_malloc_size(v21);
              if (!v29)
              {
                goto LABEL_69;
              }

              if (v24 - v27 == 0x8000000000000000 && v29 == -1)
              {
                goto LABEL_71;
              }

              v21[2] = v20;
              v21[3] = 2 * ((v24 - v27) / v29);
            }

            type metadata accessor for NamedColorScheme(0);
            swift_arrayInitWithCopy();
          }
        }

        v22 = *(v30 + 16);
        if (v22 >= *(v30 + 24) >> 1)
        {
          sub_27476D9A0();
        }

        *(v30 + 16) = v22 + 1;
        *(v30 + 8 * v22 + 32) = v21;
        v10 = v19;
      }
    }

    v6 = 0;
    v28 = *(type metadata accessor for NamedColorScheme(0) - 8);
    v7 = (*(v28 + 80) + 32) & ~*(v28 + 80);
    while (1)
    {
      v8 = v4 >= v6;
      if (a1 > 0)
      {
        v8 = v6 >= v4;
      }

      if (v8)
      {
        break;
      }

      v9 = v6 + a1;
      if (__OFADD__(v6, a1))
      {
        v10 = ((v6 + a1) >> 63) ^ 0x8000000000000000;
      }

      else
      {
        v10 = v6 + a1;
      }

      if (__OFADD__(v6, a1))
      {
        goto LABEL_64;
      }

      if (v4 < v9)
      {
        v9 = v4;
      }

      v11 = v9 - v6;
      if (v9 < v6)
      {
        goto LABEL_65;
      }

      if (v6 < 0)
      {
        goto LABEL_66;
      }

      if (v4 == v11)
      {

        v12 = a2;
      }

      else
      {
        v12 = MEMORY[0x277D84F90];
        if (v9 != v6)
        {
          if (v11 >= 1)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280967BD8);
            v26 = *(v28 + 72);
            v12 = swift_allocObject();
            v14 = _swift_stdlib_malloc_size(v12);
            if (!v26)
            {
              goto LABEL_70;
            }

            if (v14 - v7 == 0x8000000000000000 && v26 == -1)
            {
              goto LABEL_72;
            }

            v12[2] = v11;
            v12[3] = 2 * ((v14 - v7) / v26);
          }

          swift_arrayInitWithCopy();
        }
      }

      v13 = *(v30 + 16);
      if (v13 >= *(v30 + 24) >> 1)
      {
        sub_27476D9A0();
      }

      *(v30 + 16) = v13 + 1;
      *(v30 + 8 * v13 + 32) = v12;
      v6 = v10;
      if (!--v5)
      {
        goto LABEL_32;
      }
    }

LABEL_63:
    __break(1u);
LABEL_64:
    __break(1u);
LABEL_65:
    __break(1u);
LABEL_66:
    __break(1u);
  }

  __break(1u);
LABEL_68:
  __break(1u);
LABEL_69:
  __break(1u);
LABEL_70:
  __break(1u);
LABEL_71:
  __break(1u);
LABEL_72:
  __break(1u);
}

unint64_t sub_27481C528()
{
  result = qword_28096A380;
  if (!qword_28096A380)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28096A360);
    sub_27481C5B4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28096A380);
  }

  return result;
}

unint64_t sub_27481C5B4()
{
  result = qword_28096A388;
  if (!qword_28096A388)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28096A358);
    sub_27481C640();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28096A388);
  }

  return result;
}

unint64_t sub_27481C640()
{
  result = qword_28096A390;
  if (!qword_28096A390)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28096A350);
    sub_27472AB6C(&qword_28096A398, &qword_28096A348);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28096A390);
  }

  return result;
}

uint64_t sub_27481C738(uint64_t a1)
{
  v2 = type metadata accessor for NamedColorScheme(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_27481C794(uint64_t a1, uint64_t a2)
{
  if ((sub_2749F9EA4() & 1) == 0)
  {
    return 0;
  }

  v4 = *(type metadata accessor for NamedColorScheme(0) + 20);
  v5 = *(a1 + v4);
  v6 = *(a1 + v4 + 8);
  v7 = (a2 + v4);
  if (v5 == *v7 && v6 == v7[1])
  {
    return 1;
  }

  return sub_2749FDCC4();
}

uint64_t sub_27481C814()
{
  sub_2749F9EB4();
  sub_27473DB28(&qword_280967AF0, MEMORY[0x277D7D388]);
  sub_2749FCD04();
  type metadata accessor for NamedColorScheme(0);

  return sub_2749FCE24();
}

uint64_t sub_27481C8B4()
{
  sub_2749FDDF4();
  sub_2749F9EB4();
  sub_27473DB28(&qword_280967AF0, MEMORY[0x277D7D388]);
  sub_2749FCD04();
  type metadata accessor for NamedColorScheme(0);
  sub_2749FCE24();
  return sub_2749FDE44();
}

uint64_t sub_27481C960()
{
  sub_2749FDDF4();
  sub_2749F9EB4();
  sub_27473DB28(&qword_280967AF0, MEMORY[0x277D7D388]);
  sub_2749FCD04();
  sub_2749FCE24();
  return sub_2749FDE44();
}

uint64_t sub_27481CA08@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v48 = a1;
  v44 = sub_2749F9EB4();
  v41 = *(v44 - 8);
  MEMORY[0x28223BE20](v44);
  v39 = &v39 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = sub_2749FB5D4();
  v47 = *(v45 - 8);
  MEMORY[0x28223BE20](v45);
  v46 = &v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for ColorPickerButton(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096A428);
  MEMORY[0x28223BE20](v8);
  v10 = &v39 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096A430);
  v42 = *(v11 - 8);
  v43 = v11;
  MEMORY[0x28223BE20](v11);
  v13 = &v39 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096A438);
  MEMORY[0x28223BE20](v14 - 8);
  v40 = &v39 - v15;
  sub_27481DFB8(v2, &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ColorPickerButton);
  v16 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v17 = swift_allocObject();
  sub_27481DCA0(&v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v17 + v16, type metadata accessor for ColorPickerButton);
  v49 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096A440);
  sub_27472AB6C(&qword_28096A448, &qword_28096A440);
  v18 = v8;
  sub_2749FC624();
  sub_2749FC914();
  sub_2749FABB4();
  v19 = (v10 + *(v8 + 36));
  v20 = v55;
  *v19 = v54;
  v19[1] = v20;
  v19[2] = v56;
  v21 = (v2 + *(type metadata accessor for NamedColorScheme(0) + 20));
  v23 = *v21;
  v22 = v21[1];
  v53[0] = v23;
  v53[1] = v22;
  v24 = sub_27481E48C();
  v25 = sub_27475D0D0();
  sub_2749FC234();
  sub_27472ECBC(v10, &qword_28096A428);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280968C28);
  v27 = v39;
  MEMORY[0x277C5E410](v26);
  LOBYTE(v10) = sub_2749F9EA4();
  (*(v41 + 8))(v27, v44);
  if (v10)
  {
    v28 = v46;
    sub_2749FB594();
    v29 = v45;
  }

  else
  {
    v53[0] = MEMORY[0x277D84F90];
    sub_27473DB28(&unk_28159E630, MEMORY[0x277CE01F0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096A468);
    sub_27472AB6C(&qword_28159E538, &qword_28096A468);
    v30 = v45;
    v28 = v46;
    sub_2749FD7B4();
    v29 = v30;
  }

  v53[0] = v18;
  v53[1] = MEMORY[0x277D837D0];
  v53[2] = v24;
  v53[3] = v25;
  swift_getOpaqueTypeConformance2();
  v31 = v40;
  v32 = v43;
  sub_2749FC1D4();
  (*(v47 + 8))(v28, v29);
  (*(v42 + 8))(v13, v32);
  v33 = sub_2749FC914();
  v35 = v34;
  sub_27481DA40(v51);
  memcpy(v52, v51, 0x80uLL);
  v52[16] = v33;
  v52[17] = v35;
  v36 = v48;
  sub_2747D31F8(v31, v48, &qword_28096A438);
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096A470);
  memcpy((v36 + *(v37 + 36)), v52, 0x90uLL);
  memcpy(v53, v51, 0x80uLL);
  v53[16] = v33;
  v53[17] = v35;
  sub_27473ADB8(v52, &v50, &qword_28096A478);
  return sub_27472ECBC(v53, &qword_28096A478);
}

uint64_t sub_27481D0E8(uint64_t a1)
{
  v2 = sub_2749F9EB4();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v11 - v7;
  v9 = *(v3 + 16);
  v9(&v11 - v7, a1, v2);
  type metadata accessor for ColorPickerButton(0);
  v9(v6, v8, v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280968C28);
  sub_2749FC6C4();
  return (*(v3 + 8))(v8, v2);
}

uint64_t sub_27481D23C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  *a2 = sub_2749FC914();
  a2[1] = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096A480);
  return sub_27481D28C(a1, a2 + *(v5 + 44));
}

uint64_t sub_27481D28C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v65 = a1;
  v59 = a2;
  v56 = sub_2749FAA94();
  v61 = *(v56 - 8);
  v2 = MEMORY[0x28223BE20](v56);
  v58 = &v56 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v57 = &v56 - v4;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096A488);
  v5 = MEMORY[0x28223BE20](v62);
  v64 = &v56 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = (&v56 - v8);
  MEMORY[0x28223BE20](v7);
  v63 = &v56 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096A490);
  MEMORY[0x28223BE20](v11);
  v13 = &v56 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096A498);
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v56 - v16;
  v18 = sub_2749F9EB4();
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v21 = &v56 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096A4A0);
  v23 = MEMORY[0x28223BE20](v22 - 8);
  v60 = &v56 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v26 = &v56 - v25;
  (*(v19 + 16))(v21, v65, v18);
  v27 = (*(v19 + 88))(v21, v18);
  if (v27 == *MEMORY[0x277D7D378])
  {
    (*(v19 + 96))(v21, v18);
    v28 = *v21;
    v29 = [*v21 paletteGradient];
    v30 = sub_27481E55C();
    sub_2749FC5A4();

    (*(v15 + 16))(v13, v17, v14);
    swift_storeEnumTagMultiPayload();
    v66 = MEMORY[0x277CE1120];
    v67 = v30;
LABEL_5:
    swift_getOpaqueTypeConformance2();
    sub_2749FB7B4();

    (*(v15 + 8))(v17, v14);
    sub_2749FC454();
    type metadata accessor for ColorPickerButton(0);
    v33 = v57;
    sub_27473B1B4();
    v34 = v61;
    v35 = v58;
    v36 = v56;
    (*(v61 + 104))(v58, *MEMORY[0x277CDF3D0], v56);
    sub_2749FAA84();
    v37 = *(v34 + 8);
    v37(v35, v36);
    v37(v33, v36);
    v38 = sub_2749FC484();

    sub_2749FAB34();
    v39 = v66;
    v40 = v68;
    v41 = v69;
    v42 = v70;
    v43 = sub_2749FC914();
    v45 = v44;
    v46 = *(v62 + 36);
    v47 = *MEMORY[0x277CE13F0];
    v48 = sub_2749FC994();
    v49 = v67;
    (*(*(v48 - 8) + 104))(v9 + v46, v47, v48);
    *v9 = v39 * 0.5;
    v9[1] = v39;
    *(v9 + 2) = v49;
    *(v9 + 3) = v40;
    *(v9 + 4) = v41;
    *(v9 + 5) = v42;
    *(v9 + 6) = v38;
    *(v9 + 28) = 256;
    *(v9 + 8) = v43;
    *(v9 + 9) = v45;
    v50 = v63;
    sub_2747D31F8(v9, v63, &qword_28096A488);
    v51 = v60;
    sub_27473ADB8(v26, v60, &qword_28096A4A0);
    v52 = v64;
    sub_27473ADB8(v50, v64, &qword_28096A488);
    v53 = v59;
    sub_27473ADB8(v51, v59, &qword_28096A4A0);
    v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096A4B0);
    sub_27473ADB8(v52, v53 + *(v54 + 48), &qword_28096A488);
    sub_27472ECBC(v50, &qword_28096A488);
    sub_27472ECBC(v26, &qword_28096A4A0);
    sub_27472ECBC(v52, &qword_28096A488);
    return sub_27472ECBC(v51, &qword_28096A4A0);
  }

  if (v27 == *MEMORY[0x277D7D380])
  {
    (*(v19 + 96))(v21, v18);
    v28 = *(v21 + 1);

    v31 = sub_27481E55C();
    v32 = MEMORY[0x277CE1120];
    sub_2749FC5A4();
    (*(v15 + 16))(v13, v17, v14);
    swift_storeEnumTagMultiPayload();
    v66 = v32;
    v67 = v31;
    goto LABEL_5;
  }

  result = sub_2749FDCB4();
  __break(1u);
  return result;
}

void *sub_27481DA40@<X0>(void *a1@<X8>)
{
  v2 = sub_2749F9EB4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v19[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ColorPickerButton(0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280968C28);
  MEMORY[0x277C5E410](v6);
  v7 = sub_2749F9EA4();
  (*(v3 + 8))(v5, v2);
  if (v7)
  {
    v8 = [objc_opt_self() systemGray3Color];
    v9 = sub_2749FC3E4();
    sub_2749FAB34();
    v10 = v19[16];
    v11 = v19[18];
    v12 = v19[19];
    v13 = v19[20];
    v14 = sub_2749FC914();
    v16 = v15;
    sub_2749FC914();
    sub_2749FABB4();
    v19[0] = v10 * 0.5;
    v19[1] = v10;
    v19[2] = v19[17];
    v19[3] = v11;
    v19[4] = v12;
    v19[5] = v13;
    *&v19[6] = v9;
    LOWORD(v19[7]) = 256;
    *&v19[8] = v14;
    v19[9] = v16;
    CGSizeMake(v19);
    memcpy(v20, v19, sizeof(v20));
  }

  else
  {
    sub_27481E544(v20);
  }

  return memcpy(a1, v20, 0x80uLL);
}

unint64_t sub_27481DC5C()
{
  result = qword_280968670;
  if (!qword_280968670)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280968670);
  }

  return result;
}

uint64_t sub_27481DCA0(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_9();
  v4 = OUTLINED_FUNCTION_44();
  v5(v4);
  return a2;
}

uint64_t sub_27481DCFC()
{
  v0 = type metadata accessor for IconColorSchemePickerView(0);
  OUTLINED_FUNCTION_34(v0);
  v1 = OUTLINED_FUNCTION_8_0();

  return sub_27481B41C(v1, v2, v3);
}

unint64_t sub_27481DD68()
{
  result = qword_28096A3C0;
  if (!qword_28096A3C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280967BD0);
    sub_27473DB28(&qword_28096A3C8, type metadata accessor for NamedColorScheme);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28096A3C0);
  }

  return result;
}

uint64_t objectdestroyTm_1()
{
  v1 = *(type metadata accessor for IconColorSchemePickerView(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);

  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280968C28) + 32);
  sub_2749F9EB4();
  OUTLINED_FUNCTION_9();
  (*(v6 + 8))(v0 + v3 + v5);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_27481DF2C()
{
  v0 = type metadata accessor for IconColorSchemePickerView(0);
  OUTLINED_FUNCTION_34(v0);
  v1 = OUTLINED_FUNCTION_8_0();

  return sub_27481B688(v1, v2);
}

uint64_t sub_27481DFB8(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_9();
  v4 = OUTLINED_FUNCTION_44();
  v5(v4);
  return a2;
}

void sub_27481E03C()
{
  type metadata accessor for NamedColorScheme(319);
  if (v0 <= 0x3F)
  {
    sub_27481E138(319, &qword_28096A330, MEMORY[0x277D7D388], MEMORY[0x277CE11F8]);
    if (v1 <= 0x3F)
    {
      sub_27481E138(319, &qword_280968A60, MEMORY[0x277CDF3E0], MEMORY[0x277CDF468]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_27481E138(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_27481E1C4()
{
  result = sub_2749F9EB4();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_27481E238()
{
  result = qword_28096A410;
  if (!qword_28096A410)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28096A418);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28096A368);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28096A360);
    sub_2749FAF64();
    sub_27481C528();
    sub_27473DB28(&qword_28159E6A0, MEMORY[0x277CDDB18]);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_27473DB28(&qword_28159E5A0, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28096A410);
  }

  return result;
}

uint64_t sub_27481E428()
{
  v1 = type metadata accessor for ColorPickerButton(0);
  OUTLINED_FUNCTION_34(v1);
  v3 = v0 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return sub_27481D0E8(v3);
}

unint64_t sub_27481E48C()
{
  result = qword_28096A450;
  if (!qword_28096A450)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28096A428);
    sub_27472AB6C(&qword_28096A458, &qword_28096A460);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28096A450);
  }

  return result;
}

double sub_27481E544(_OWORD *a1)
{
  result = 0.0;
  a1[6] = 0u;
  a1[7] = 0u;
  a1[4] = 0u;
  a1[5] = 0u;
  a1[2] = 0u;
  a1[3] = 0u;
  *a1 = 0u;
  a1[1] = 0u;
  return result;
}

unint64_t sub_27481E55C()
{
  result = qword_28096A4A8;
  if (!qword_28096A4A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28096A4A8);
  }

  return result;
}

unint64_t sub_27481E5B0()
{
  result = qword_28096A4B8;
  if (!qword_28096A4B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28096A470);
    sub_27481E668();
    sub_27472AB6C(&qword_28096A4C8, &qword_28096A478);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28096A4B8);
  }

  return result;
}

unint64_t sub_27481E668()
{
  result = qword_28096A4C0;
  if (!qword_28096A4C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28096A438);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28096A428);
    sub_27481E48C();
    sub_27475D0D0();
    swift_getOpaqueTypeConformance2();
    sub_27473DB28(&qword_28159E5A0, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28096A4C0);
  }

  return result;
}

uint64_t SharingPromptModel.__allocating_init(workflow:applicationActivities:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  SharingPromptModel.init(workflow:applicationActivities:)(a1, a2);
  return v4;
}

uint64_t FileActivityModel.__allocating_init(viewController:)(uint64_t a1)
{
  v2 = swift_allocObject();
  sub_2749F9154();
  *(v2 + 16) = a1;
  return v2;
}

id WorkflowSharingPrompt.makeUIViewController(context:)()
{
  v2 = *(*v0 + 16);
  v1 = *(*v0 + 24);
  v3 = objc_allocWithZone(WFWorkflowActivityViewController);
  v4 = v2;

  return sub_27481ED80(v4, v1);
}

uint64_t sub_27481E878(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_27481EFC4();

  return MEMORY[0x28212EF70](a1, a2, a3, v6);
}

uint64_t sub_27481E8DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_27481EFC4();

  return MEMORY[0x28212EF38](a1, a2, a3, v6);
}

void sub_27481E940()
{
  sub_27481EFC4();
  sub_2749FBB74();
  __break(1u);
}

uint64_t SharingPromptModel.init(workflow:applicationActivities:)(uint64_t a1, uint64_t a2)
{
  sub_2749F9154();
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return v2;
}

uint64_t SharingPromptModel.deinit()
{

  v1 = OBJC_IVAR____TtC10WorkflowUI18SharingPromptModel_id;
  sub_2749F9164();
  OUTLINED_FUNCTION_9();
  (*(v2 + 8))(v0 + v1);
  return v0;
}

uint64_t SharingPromptModel.__deallocating_deinit()
{
  SharingPromptModel.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t sub_27481EA78@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for SharingPromptModel(0);
  result = sub_2749FA874();
  *a1 = result;
  return result;
}

uint64_t FileActivityModel.init(viewController:)(uint64_t a1)
{
  sub_2749F9154();
  *(v1 + 16) = a1;
  return v1;
}

uint64_t FileActivityModel.deinit()
{
  v1 = OBJC_IVAR____TtC10WorkflowUI17FileActivityModel_id;
  sub_2749F9164();
  OUTLINED_FUNCTION_9();
  (*(v2 + 8))(v0 + v1);
  return v0;
}

uint64_t FileActivityModel.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC10WorkflowUI17FileActivityModel_id;
  sub_2749F9164();
  OUTLINED_FUNCTION_9();
  (*(v2 + 8))(v0 + v1);
  v3 = *(*v0 + 12);
  v4 = *(*v0 + 26);

  return MEMORY[0x2821FE8D8](v0, v3, v4);
}

uint64_t sub_27481EC1C@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for FileActivityModel(0);
  result = sub_2749FA874();
  *a1 = result;
  return result;
}

uint64_t sub_27481EC90(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_27481EF70();

  return MEMORY[0x28212EF70](a1, a2, a3, v6);
}

uint64_t sub_27481ECF4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_27481EF70();

  return MEMORY[0x28212EF38](a1, a2, a3, v6);
}

void sub_27481ED58()
{
  sub_27481EF70();
  sub_2749FBB74();
  __break(1u);
}

id sub_27481ED80(void *a1, uint64_t a2)
{
  if (a2)
  {
    sub_27481F018();
    v4 = sub_2749FCF74();
  }

  else
  {
    v4 = 0;
  }

  v5 = [v2 initWithWorkflow:a1 applicationActivities:v4];

  return v5;
}

unint64_t sub_27481EE04()
{
  result = qword_2809707C0;
  if (!qword_2809707C0)
  {
    sub_2749F9164();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809707C0);
  }

  return result;
}

void *__swift_initWithCopy_strong(void *a1, void *a2)
{
  *a1 = *a2;

  return a1;
}

void *__swift_assignWithCopy_strong(void *a1, void *a2)
{
  *a1 = *a2;

  return a1;
}

void *__swift_assignWithTake_strong(void *a1, void *a2)
{
  *a1 = *a2;

  return a1;
}

unint64_t sub_27481EF70()
{
  result = qword_28096A4D0;
  if (!qword_28096A4D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28096A4D0);
  }

  return result;
}

unint64_t sub_27481EFC4()
{
  result = qword_28096A4D8;
  if (!qword_28096A4D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28096A4D8);
  }

  return result;
}

unint64_t sub_27481F018()
{
  result = qword_28096A4E0;
  if (!qword_28096A4E0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_28096A4E0);
  }

  return result;
}

double *sub_27481F080(uint64_t a1, uint64_t a2, double a3, double a4, double a5, double a6)
{
  v6[2] = a3;
  v6[3] = a4;
  v6[4] = a5;
  v6[5] = a6;
  swift_beginAccess();
  sub_2749FA8C4();
  swift_endAccess();
  v9 = (v6 + OBJC_IVAR____TtCVV10WorkflowUI15ShortcutChiclet17DownloadingButton5Model_action);
  *v9 = a1;
  v9[1] = a2;
  return v6;
}

uint64_t sub_27481F118()
{
  v1 = OBJC_IVAR____TtCVV10WorkflowUI15ShortcutChiclet17DownloadingButton5Model__pointSize;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280969F40);
  OUTLINED_FUNCTION_9();
  (*(v2 + 8))(v0 + v1);

  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v3, v4);
}

uint64_t _s14descr28838E601O17DownloadingButtonV5ModelCMa()
{
  result = qword_2815A0598;
  if (!qword_2815A0598)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_27481F220()
{
  sub_274809398();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_27481F2E4@<X0>(uint64_t *a1@<X8>)
{
  _s14descr28838E601O17DownloadingButtonV5ModelCMa();
  result = sub_2749FA874();
  *a1 = result;
  return result;
}

uint64_t sub_27481F324@<X0>(float64x2_t *a1@<X1>, int a2@<W2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v40 = a3;
  v39 = a2;
  v38 = a4;
  v5 = sub_2749FAF64();
  v6 = *(v5 - 8);
  v36 = v5;
  v37 = v6;
  MEMORY[0x28223BE20](v5);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096A4E8);
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v10);
  v12 = &v34 - v11;
  v35.f64[0] = *(a1->f64 + OBJC_IVAR____TtCVV10WorkflowUI15ShortcutChiclet17DownloadingButton5Model_action);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096A4F0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28096DBC0);
  v14 = sub_2749FBA34();
  v15 = sub_27472AB6C(&qword_28159E718, &qword_28096DBC0);
  v16 = sub_27481FA38(&qword_28096A4F8, MEMORY[0x277CDE330]);
  v43 = v13;
  v44 = v14;
  v45 = v15;
  v46 = v16;
  swift_getOpaqueTypeConformance2();
  sub_2749FC624();
  v17 = a1[2];
  __asm { FMOV            V2.2D, #3.5 }

  v35 = vaddq_f64(a1[1], _Q2);
  v34 = vaddq_f64(v17, xmmword_274A17630);
  LOBYTE(v15) = sub_2749FBC64();
  v23 = &v12[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096A500) + 36)];
  *v23 = v15;
  v24 = v35;
  *(v23 + 24) = v34;
  *(v23 + 8) = v24;
  v23[40] = 0;
  v25 = sub_2749FC474();
  KeyPath = swift_getKeyPath();
  v27 = &v12[*(v9 + 36)];
  *v27 = KeyPath;
  v27[1] = v25;
  sub_2749FAF54();
  sub_27481F8C8();
  sub_27481FA38(&qword_28159E6A0, MEMORY[0x277CDDB18]);
  v28 = v38;
  v29 = v36;
  sub_2749FBFC4();
  (*(v37 + 8))(v8, v29);
  sub_274747254(v12);
  v41 = v39;
  v42 = v40;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096B400);
  sub_2749FC5E4();
  v30 = v43;
  v31 = v44;
  LOBYTE(v29) = v45;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096A528);
  v33 = v28 + *(result + 36);
  *v33 = v30;
  *(v33 + 8) = v31;
  *(v33 + 16) = v29;
  return result;
}

uint64_t sub_27481F6B0()
{
  v0 = sub_2749FBA34();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096DBC0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v9 - v6;
  sub_2749FAB64();
  sub_2749FC474();
  sub_2749FBA14();
  sub_27472AB6C(&qword_28159E718, &qword_28096DBC0);
  sub_27481FA38(&qword_28096A4F8, MEMORY[0x277CDE330]);
  sub_2749FBF84();
  (*(v1 + 8))(v3, v0);
  return (*(v5 + 8))(v7, v4);
}

unint64_t sub_27481F8C8()
{
  result = qword_28096A508;
  if (!qword_28096A508)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28096A4E8);
    sub_27481F980();
    sub_27472AB6C(&unk_28159E5B0, &unk_28096CFD0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28096A508);
  }

  return result;
}

unint64_t sub_27481F980()
{
  result = qword_28096A510;
  if (!qword_28096A510)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28096A500);
    sub_27472AB6C(&qword_28096A518, &qword_28096A520);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28096A510);
  }

  return result;
}

uint64_t sub_27481FA38(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_27481FA80()
{
  result = qword_28096A530;
  if (!qword_28096A530)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28096A528);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28096A4E8);
    sub_2749FAF64();
    sub_27481F8C8();
    sub_27481FA38(&qword_28159E6A0, MEMORY[0x277CDDB18]);
    swift_getOpaqueTypeConformance2();
    sub_27473F5EC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28096A530);
  }

  return result;
}

void sub_27481FB98()
{
  v1 = *(v0 + OBJC_IVAR____TtC10WorkflowUI25WFCollectionNameFieldCell_textField);
  v2 = [v1 text];
  if (v2)
  {
    v3 = v2;
    v4 = _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  v7 = (v0 + OBJC_IVAR____TtC10WorkflowUI25WFCollectionNameFieldCell_text);
  v8 = *(v0 + OBJC_IVAR____TtC10WorkflowUI25WFCollectionNameFieldCell_text);
  v9 = *(v0 + OBJC_IVAR____TtC10WorkflowUI25WFCollectionNameFieldCell_text + 8);
  if (!v6)
  {
LABEL_11:

    sub_2748205A0(v8, v9, v1);
    goto LABEL_13;
  }

  if (v4 != v8 || v6 != v9)
  {
    v11 = sub_2749FDCC4();

    if (v11)
    {
      goto LABEL_13;
    }

    v8 = *v7;
    v9 = v7[1];
    goto LABEL_11;
  }

LABEL_13:
  v12 = *(v0 + OBJC_IVAR____TtC10WorkflowUI25WFCollectionNameFieldCell_textDidChangeHandler);
  if (v12)
  {
    v13 = *v7;
    v14 = v7[1];
    sub_27473A658(v12);

    v12(v13, v14);

    sub_27471F8A4(v12);
  }
}

char *sub_27481FCFC(double a1, double a2, double a3, double a4)
{
  v9 = &v4[OBJC_IVAR____TtC10WorkflowUI25WFCollectionNameFieldCell_textDidChangeHandler];
  *v9 = 0;
  *(v9 + 1) = 0;
  v10 = &v4[OBJC_IVAR____TtC10WorkflowUI25WFCollectionNameFieldCell_text];
  *v10 = 0;
  *(v10 + 1) = 0xE000000000000000;
  v11 = OBJC_IVAR____TtC10WorkflowUI25WFCollectionNameFieldCell_textField;
  *&v4[v11] = [objc_allocWithZone(MEMORY[0x277D75BB8]) init];
  v35.receiver = v4;
  v35.super_class = type metadata accessor for WFCollectionNameFieldCell();
  v12 = objc_msgSendSuper2(&v35, sel_initWithFrame_, a1, a2, a3, a4);
  v13 = OBJC_IVAR____TtC10WorkflowUI25WFCollectionNameFieldCell_textField;
  v14 = *&v12[OBJC_IVAR____TtC10WorkflowUI25WFCollectionNameFieldCell_textField];
  v15 = v12;
  [v14 setAutocapitalizationType_];
  [*&v12[v13] setTextAlignment_];
  v16 = *&v12[v13];
  v17 = objc_opt_self();
  v18 = v16;
  v19 = [v17 labelColor];
  [v18 setTextColor_];

  [*&v12[v13] setClearButtonMode_];
  v20 = *&v12[v13];
  v21 = objc_opt_self();
  v22 = *MEMORY[0x277D76A28];
  v23 = v20;
  v24 = [v21 preferredFontForTextStyle_];
  [v23 setFont_];

  v25 = *&v12[v13];
  [v25 setDelegate_];

  v26 = *&v12[v13];
  sub_2749FCE14();
  if (qword_28159E3A8 != -1)
  {
    swift_once();
  }

  v27 = qword_28159E448;
  v28 = sub_2749FCD64();
  v29 = sub_2749FCD64();

  v30 = [v27 localizedStringForKey:v28 value:v29 table:0];

  v31 = _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
  v33 = v32;

  sub_274885CE8(v31, v33, v26);
  [*&v12[v13] setAutoresizingMask_];
  [v15 addSubview_];
  [*&v12[v13] addTarget:v15 action:sel_textFieldValueDidChange forControlEvents:0x20000];

  return v15;
}

void sub_274820048()
{
  v1 = [*(v0 + OBJC_IVAR____TtC10WorkflowUI25WFCollectionNameFieldCell_textField) text];
  if (v1)
  {
    v2 = v1;
    v3 = _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
    v5 = v4;
  }

  else
  {
    v3 = 0;
    v5 = 0xE000000000000000;
  }

  v6 = (v0 + OBJC_IVAR____TtC10WorkflowUI25WFCollectionNameFieldCell_text);
  *v6 = v3;
  v6[1] = v5;

  sub_27481FB98();
}

id sub_274820120()
{
  v3.receiver = v0;
  v3.super_class = type metadata accessor for WFCollectionNameFieldCell();
  objc_msgSendSuper2(&v3, sel_layoutSubviews);
  v1 = *&v0[OBJC_IVAR____TtC10WorkflowUI25WFCollectionNameFieldCell_textField];
  [v0 bounds];
  CGRectGetWidth(v4);
  [v0 bounds];
  CGRectGetHeight(v5);
  return [v1 setFrame_];
}

void sub_274820208(void *a1)
{
  v2 = sub_2749760F0(a1);
  if (v3)
  {
    v13 = v2;
    v14 = v3;
    v11 = 606827356;
    v12 = 0xE400000000000000;
    v9 = 0;
    v10 = 0xE000000000000000;
    v7 = sub_27475D0D0();
    v8 = v7;
    v5 = MEMORY[0x277D837D0];
    v6 = v7;
    sub_2749FD724();

    v4 = sub_2749FCD64();
  }

  else
  {
    v4 = 0;
  }

  [a1 setText_];
}

void sub_2748203A0()
{
  v1 = (v0 + OBJC_IVAR____TtC10WorkflowUI25WFCollectionNameFieldCell_textDidChangeHandler);
  *v1 = 0;
  v1[1] = 0;
  v2 = (v0 + OBJC_IVAR____TtC10WorkflowUI25WFCollectionNameFieldCell_text);
  *v2 = 0;
  v2[1] = 0xE000000000000000;
  v3 = OBJC_IVAR____TtC10WorkflowUI25WFCollectionNameFieldCell_textField;
  *(v0 + v3) = [objc_allocWithZone(MEMORY[0x277D75BB8]) init];
  sub_2749FDAE4();
  __break(1u);
}

void sub_274820464()
{
  sub_27471F8A4(*(v0 + OBJC_IVAR____TtC10WorkflowUI25WFCollectionNameFieldCell_textDidChangeHandler));

  v1 = *(v0 + OBJC_IVAR____TtC10WorkflowUI25WFCollectionNameFieldCell_textField);
}

id sub_2748204BC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for WFCollectionNameFieldCell();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_274820578(uint64_t a1, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  v3 = v2 == 0;
  return !a2 || v3;
}

void sub_2748205A0(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_2749FCD64();

  [a3 setText_];
}

unint64_t StaticString._asString.getter(unint64_t result, uint64_t a2, char a3)
{
  if ((a3 & 1) == 0)
  {
    if (result)
    {
      return sub_2749FCE14();
    }

    __break(1u);
  }

  if (HIDWORD(result))
  {
    __break(1u);
    goto LABEL_9;
  }

  if ((result & 0xFFFFF800) != 0xD800)
  {
    if (result >> 16 <= 0x10)
    {
      return sub_2749FCE14();
    }

LABEL_9:
    __break(1u);
    return sub_2749FCE14();
  }

  __break(1u);
  return result;
}

id static NSBundle._current.getter()
{
  if (qword_28159E3A8 != -1)
  {
    swift_once();
  }

  v1 = qword_28159E448;

  return v1;
}

double sub_27482076C()
{
  v0 = objc_opt_self();
  v1 = *MEMORY[0x277D76988];
  v2 = [v0 preferredFontForTextStyle_];

  [v2 lineHeight];
  v4 = v3;

  result = v4 + 16.0;
  *&qword_2809891A0 = v4 + 16.0;
  return result;
}

id sub_274820800(double a1, double a2, double a3, double a4)
{
  v28.receiver = v4;
  v28.super_class = type metadata accessor for WFIconPickerContentUnavailableView();
  v9 = objc_msgSendSuper2(&v28, sel_initWithFrame_, a1, a2, a3, a4);
  v10 = objc_allocWithZone(MEMORY[0x277D756B8]);
  v11 = v9;
  v12 = [v10 init];
  [v12 setTextAlignment_];
  v13 = [objc_opt_self() tertiaryLabelColor];
  [v12 setTextColor_];

  sub_2749FCE14();
  if (qword_28159E3A8 != -1)
  {
    swift_once();
  }

  v14 = qword_28159E448;
  v15 = sub_2749FCD64();
  v16 = sub_2749FCD64();

  v17 = [v14 localizedStringForKey:v15 value:v16 table:0];

  v18 = _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
  v20 = v19;

  sub_27484E534(v18, v20, v12);
  v21 = [objc_opt_self() preferredFontForTextStyle_];
  [v12 setFont_];

  [v12 setNumberOfLines_];
  CGAffineTransformMakeTranslation(&v27, 0.0, 4.0);
  v25 = *&v27.c;
  v26 = *&v27.a;
  v24 = *&v27.tx;
  v22 = v12;
  *&v27.a = v26;
  *&v27.c = v25;
  *&v27.tx = v24;
  [v22 setTransform_];
  [v22 setAutoresizingMask_];

  [v11 addSubview_];
  return v11;
}

id sub_274820B30()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for WFIconPickerContentUnavailableView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t ShortcutChiclet.Progress.__allocating_init()()
{
  v0 = swift_allocObject();
  ShortcutChiclet.Progress.init()();
  return v0;
}

uint64_t ShortcutChiclet.Model.__allocating_init(metrics:isSelected:isHovered:isEditing:isGallery:isGalleryDetail:isAddedToLibrary:isDownloading:buttonType:buttonAction:)(__int128 *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t *a9, uint64_t a10, uint64_t a11)
{
  v19 = swift_allocObject();
  ShortcutChiclet.Model.init(metrics:isSelected:isHovered:isEditing:isGallery:isGalleryDetail:isAddedToLibrary:isDownloading:buttonType:buttonAction:)(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11);
  return v19;
}

uint64_t ShortcutChiclet.init(name:icon:textColor:renderUnderglow:associatedAppBundleIdentifier:model:progress:runAction:stopAction:accessibilitySelectionAction:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, void *a4@<X3>, char a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  v19 = type metadata accessor for ShortcutChiclet(0);
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_2_0();
  v23 = v22 - v21;
  *(v23 + 128) = swift_getKeyPath();
  *(v23 + 136) = 0;
  *(v23 + 144) = swift_getKeyPath();
  *(v23 + 152) = 0;
  v24 = v19[15];
  *(v23 + v24) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096D850);
  OUTLINED_FUNCTION_55_1();
  v25 = v19[16];
  *(v23 + v25) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096DA60);
  OUTLINED_FUNCTION_55_1();
  v26 = v23 + v19[17];
  OUTLINED_FUNCTION_72_2();
  sub_2749FC5B4();
  OUTLINED_FUNCTION_71_3();
  *v26 = v27;
  *(v26 + 8) = v28;
  v29 = v23 + v19[18];
  OUTLINED_FUNCTION_72_2();
  sub_2749FC5B4();
  OUTLINED_FUNCTION_71_3();
  *v29 = v30;
  *(v29 + 8) = v31;
  *v23 = a1;
  *(v23 + 8) = a2;
  sub_2747B960C(a3, v23 + 16);
  v53 = a3;
  if (a4)
  {
    v32 = a4;
  }

  else
  {
    v33 = a3[3];
    v34 = a3[4];
    __swift_project_boxed_opaque_existential_1(a3, v33);
    v32 = (*(v34 + 24))(v33, v34);
  }

  *(v23 + 89) = a5 & 1;
  *(v23 + 56) = v32;
  *(v23 + 64) = a6;
  *(v23 + 72) = a7;
  *(v23 + 80) = 0;
  type metadata accessor for ShortcutChiclet.Model(0);
  OUTLINED_FUNCTION_6_16();
  sub_27473AB0C(v35, v36);

  v37 = a4;
  *(v23 + 96) = sub_2749FAD84();
  *(v23 + 104) = v38;
  if (!a9)
  {
    type metadata accessor for ShortcutChiclet.Progress(0);
    swift_allocObject();
    ShortcutChiclet.Progress.init()();
  }

  v39 = (v23 + v19[19]);
  v40 = (v23 + v19[20]);
  v41 = (v23 + v19[21]);
  type metadata accessor for ShortcutChiclet.Progress(0);
  OUTLINED_FUNCTION_12_14();
  sub_27473AB0C(v42, v43);
  v44 = sub_2749FAD84();
  v46 = v45;

  *(v23 + 112) = v44;
  *(v23 + 120) = v46;
  *v39 = a10;
  v39[1] = a11;
  *v40 = a12;
  v40[1] = a13;
  *v41 = a14;
  v41[1] = a15;
  *(v23 + 88) = 0;
  OUTLINED_FUNCTION_36_8();
  sub_27473B9F0(v23, a8, v47);
  __swift_destroy_boxed_opaque_existential_0(v53);
  return sub_27473BA4C();
}

uint64_t sub_274820F94()
{
  OUTLINED_FUNCTION_14_7();
  v0 = sub_27473872C();
  return OUTLINED_FUNCTION_20(v0);
}

uint64_t CustomShortcutChicletIcon.iconDisplayMode.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for CustomShortcutChicletIcon(0) + 20);
  sub_2749FA2F4();
  OUTLINED_FUNCTION_9();
  v6 = *(v5 + 16);

  return v6(a1, v1 + v3, v4);
}

id CustomShortcutChicletIcon.foregroundColor.getter()
{
  v1 = *(v0 + *(type metadata accessor for CustomShortcutChicletIcon(0) + 24));

  return v1;
}

id CustomShortcutChicletIcon.backgroundGradient.getter()
{
  v1 = *(v0 + *(type metadata accessor for CustomShortcutChicletIcon(0) + 28));

  return v1;
}

uint64_t sub_274821184()
{
  v1 = sub_2749FB4C4();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v8[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = *(v0 + 128);
  if (*(v0 + 136) != 1)
  {

    sub_2749FD2D4();
    v6 = sub_2749FBC14();
    sub_2749FA424();

    sub_2749FB4B4();
    swift_getAtKeyPath();
    sub_2747F2F1C(v5, 0);
    (*(v2 + 8))(v4, v1);
    LOBYTE(v5) = v8[15];
  }

  return v5 & 1;
}

uint64_t sub_2748212CC()
{
  v1 = sub_2749FB4C4();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v8[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = *(v0 + 144);
  if (*(v0 + 152) != 1)
  {

    sub_2749FD2D4();
    v6 = sub_2749FBC14();
    sub_2749FA424();

    sub_2749FB4B4();
    swift_getAtKeyPath();
    sub_2747F2F1C(v5, 0);
    (*(v2 + 8))(v4, v1);
    LOBYTE(v5) = v8[15];
  }

  return v5 & 1;
}

uint64_t sub_274821414@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_2749FB4C4();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096D850);
  MEMORY[0x28223BE20](v7);
  v9 = &v14 - v8;
  v10 = type metadata accessor for ShortcutChiclet(0);
  sub_27473ADB8(v1 + *(v10 + 60), v9, &qword_28096D850);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_2749FAA94();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    sub_2749FD2D4();
    v13 = sub_2749FBC14();
    sub_2749FA424();

    sub_2749FB4B4();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

uint64_t sub_27482161C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_2749FB4C4();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096DA60);
  MEMORY[0x28223BE20](v7);
  v9 = &v14 - v8;
  v10 = type metadata accessor for ShortcutChiclet(0);
  sub_27473ADB8(v1 + *(v10 + 64), v9, &qword_28096DA60);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_2749FB614();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    sub_2749FD2D4();
    v13 = sub_2749FBC14();
    sub_2749FA424();

    sub_2749FB4B4();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

uint64_t ShortcutChiclet.init(name:icon:textColor:renderUnderglow:associatedAppBundleIdentifier:model:progress:runAction:stopAction:accessibilitySelectionAction:)(uint64_t a1, uint64_t a2, void *a3, void *a4, char a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v18 = type metadata accessor for ShortcutChiclet(0);
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_2_0();
  v22 = v21 - v20;
  *(v22 + 128) = swift_getKeyPath();
  *(v22 + 136) = 0;
  *(v22 + 144) = swift_getKeyPath();
  *(v22 + 152) = 0;
  v23 = v18[15];
  *(v22 + v23) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096D850);
  swift_storeEnumTagMultiPayload();
  v24 = v18[16];
  *(v22 + v24) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096DA60);
  swift_storeEnumTagMultiPayload();
  v25 = v22 + v18[17];
  OUTLINED_FUNCTION_72_2();
  sub_2749FC5B4();
  OUTLINED_FUNCTION_71_3();
  *v25 = v26;
  *(v25 + 8) = v27;
  v28 = v22 + v18[18];
  OUTLINED_FUNCTION_72_2();
  sub_2749FC5B4();
  OUTLINED_FUNCTION_71_3();
  *v28 = v29;
  *(v28 + 8) = v30;
  v31 = (v22 + v18[21]);
  *v31 = 0;
  v31[1] = 0;
  *v22 = a1;
  *(v22 + 8) = a2;
  sub_2747B960C(a3, v22 + 16);
  if (a4)
  {
    v32 = a4;
  }

  else
  {
    v33 = a3[3];
    v34 = a3[4];
    __swift_project_boxed_opaque_existential_1(a3, v33);
    v32 = (*(v34 + 24))(v33, v34);
  }

  v35 = (v22 + v18[19]);
  v36 = (v22 + v18[20]);
  *(v22 + 89) = a5 & 1;
  *(v22 + 56) = v32;
  *(v22 + 64) = a6;
  *(v22 + 72) = a7;
  *(v22 + 80) = 0;
  type metadata accessor for ShortcutChiclet.Model(0);
  OUTLINED_FUNCTION_6_16();
  sub_27473AB0C(v37, v38);
  v39 = a4;

  *(v22 + 96) = sub_2749FAD84();
  *(v22 + 104) = v40;
  type metadata accessor for ShortcutChiclet.Progress(0);
  OUTLINED_FUNCTION_12_14();
  sub_27473AB0C(v41, v42);
  v43 = sub_2749FAD84();
  v45 = v44;

  *(v22 + 112) = v43;
  *(v22 + 120) = v45;
  *v35 = a10;
  v35[1] = a11;
  *v36 = a12;
  v36[1] = a13;
  *(v22 + 88) = 0;
  OUTLINED_FUNCTION_36_8();
  sub_27473B9F0(v22, v46, v47);
  __swift_destroy_boxed_opaque_existential_0(a3);
  return sub_27473BA4C();
}

uint64_t ShortcutChiclet.init(reference:model:progress:renderUnderglow:runAction:stopAction:accessibilitySelectionAction:shouldUseClearBackground:)@<X0>(void *a1@<X0>, uint64_t a2@<X2>, char a3@<W3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>, uint64_t a9, uint64_t a10, unsigned __int8 a11)
{
  HIDWORD(v61) = a11;
  *(a8 + 128) = swift_getKeyPath();
  *(a8 + 136) = 0;
  *(a8 + 144) = swift_getKeyPath();
  *(a8 + 152) = 0;
  v14 = type metadata accessor for ShortcutChiclet(0);
  v15 = v14[15];
  *(a8 + v15) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096D850);
  OUTLINED_FUNCTION_55_1();
  v16 = v14[16];
  *(a8 + v16) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096DA60);
  OUTLINED_FUNCTION_55_1();
  HIBYTE(v76) = 0;
  v17 = sub_2749FC5B4();
  OUTLINED_FUNCTION_73_1(v17, v18, v19, v20, v21, v22, v23, v24, v53, a2, a9, a10, v61, a4, a5, a6, a7, v76, v78, v80);
  HIBYTE(v77) = 0;
  v25 = sub_2749FC5B4();
  OUTLINED_FUNCTION_73_1(v25, v26, v27, v28, v29, v30, v31, v32, v54, v56, v57, v59, v62, v65, v68, v71, v74, v77, v79, v81);
  v33 = (a8 + v14[19]);
  v34 = (a8 + v14[20]);
  v35 = (a8 + v14[21]);
  v36 = a1;
  v37 = [v36 name];
  v38 = _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
  v40 = v39;

  *a8 = v38;
  *(a8 + 8) = v40;
  v41 = [v36 icon];
  v42 = sub_27471CF08(0, &qword_28159E520);
  *(a8 + 40) = v42;
  *(a8 + 48) = &protocol witness table for WFWorkflowIcon;
  *(a8 + 16) = v41;
  __swift_project_boxed_opaque_existential_1((a8 + 16), v42);
  *(a8 + 56) = WFWorkflowIcon.foregroundColor.getter();
  *(a8 + 89) = a3;
  *(a8 + 64) = sub_274829F6C(v36);
  *(a8 + 72) = v43;
  *(a8 + 80) = v36;
  type metadata accessor for ShortcutChiclet.Model(0);
  OUTLINED_FUNCTION_6_16();
  sub_27473AB0C(v44, v45);

  *(a8 + 96) = sub_2749FAD84();
  *(a8 + 104) = v46;
  type metadata accessor for ShortcutChiclet.Progress(0);
  OUTLINED_FUNCTION_12_14();
  sub_27473AB0C(v47, v48);
  v49 = sub_2749FAD84();
  v51 = v50;

  *(a8 + 112) = v49;
  *(a8 + 120) = v51;
  *v33 = v66;
  v33[1] = v69;
  *v34 = v72;
  v34[1] = v75;
  *v35 = v58;
  v35[1] = v60;
  *(a8 + 88) = v63;
  return result;
}

uint64_t sub_274821E04()
{
  v1 = *v0;
  sub_2749FDDF4();
  if (v1)
  {
    MEMORY[0x277C5FB60](1);
    sub_2749F9164();
    OUTLINED_FUNCTION_5_22();
    sub_27473AB0C(v2, v3);
    sub_2749FCD04();
  }

  else
  {
    MEMORY[0x277C5FB60](0);
  }

  return sub_2749FDE44();
}

BOOL static ShortcutChiclet.MenuItem.== infix(_:_:)(void *a1, uint64_t *a2)
{
  v2 = *a2;
  if (*a1)
  {
    if (v2)
    {

      v3 = sub_2749F9134();

      return v3 & 1;
    }

    return 0;
  }

  return !v2;
}

uint64_t ShortcutChiclet.MenuItem.hash(into:)()
{
  if (!*v0)
  {
    return MEMORY[0x277C5FB60](0);
  }

  MEMORY[0x277C5FB60](1);
  sub_2749F9164();
  OUTLINED_FUNCTION_5_22();
  sub_27473AB0C(v1, v2);
  OUTLINED_FUNCTION_125();
  return sub_2749FCD04();
}

uint64_t sub_274821FE4()
{
  v1 = *v0;
  sub_2749FDDF4();
  if (v1)
  {
    MEMORY[0x277C5FB60](1);
    sub_2749F9164();
    sub_27473AB0C(&qword_2809707C0, MEMORY[0x277CC95F0]);
    sub_2749FCD04();
  }

  else
  {
    MEMORY[0x277C5FB60](0);
  }

  return sub_2749FDE44();
}

uint64_t sub_27482209C@<X0>(uint64_t *a1@<X8>)
{
  result = ShortcutChiclet.MenuItem.id.getter();
  *a1 = result;
  return result;
}

uint64_t ShortcutChiclet.MenuItemDataSource.__allocating_init(getMenuItems:)(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_12_0();
  result = swift_allocObject();
  *(result + 16) = a1;
  *(result + 24) = a2;
  return result;
}

uint64_t ShortcutChiclet.MenuItemDataSource.init(getMenuItems:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return v2;
}

uint64_t ShortcutChiclet.MenuItemDataSource.__deallocating_deinit()
{

  v0 = OUTLINED_FUNCTION_12_0();

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

double sub_274822218()
{
  OUTLINED_FUNCTION_44_0();
  sub_2748222A4();
  result = *&v2;
  *v0 = v2;
  *(v0 + 16) = v3;
  return result;
}

uint64_t sub_2748222A4()
{
  swift_getKeyPath();
  swift_getKeyPath();
  OUTLINED_FUNCTION_17_11();
}

uint64_t sub_274822308()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return OUTLINED_FUNCTION_54_5();
}

uint64_t (*sub_27482237C())()
{
  v1 = OUTLINED_FUNCTION_116();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_54(v2);
  KeyPath = swift_getKeyPath();
  OUTLINED_FUNCTION_125_1(KeyPath);
  v4 = swift_getKeyPath();
  *(v0 + 48) = OUTLINED_FUNCTION_33(v4);
  return sub_2747A7A20;
}

uint64_t sub_274822408()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096A5D0);
  OUTLINED_FUNCTION_1_29();
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v0);
  v2 = OUTLINED_FUNCTION_10_6(v1, v7);
  v3(v2);
  OUTLINED_FUNCTION_35();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096A5C8);
  OUTLINED_FUNCTION_65_0();
  swift_endAccess();
  v4 = OUTLINED_FUNCTION_30();
  return v5(v4);
}

uint64_t sub_2748224EC()
{
  v1 = OUTLINED_FUNCTION_98();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_32_0(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096A5D0);
  OUTLINED_FUNCTION_25_0(v3);
  *(v0 + 40) = v4;
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_104(v6);
  v8 = __swift_coroFrameAllocStub(v7);
  OUTLINED_FUNCTION_105(v8);
  OUTLINED_FUNCTION_42_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096A5C8);
  OUTLINED_FUNCTION_50();
  swift_endAccess();
  return OUTLINED_FUNCTION_102_0();
}

uint64_t ShortcutChiclet.MenuItemModel.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtCV10WorkflowUI15ShortcutChiclet13MenuItemModel_id;
  sub_2749F9164();
  OUTLINED_FUNCTION_9();
  v6 = *(v5 + 16);

  return v6(a1, v1 + v3, v4);
}

uint64_t ShortcutChiclet.MenuItemModel.__allocating_init(name:symbol:role:variant:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_allocObject();
  ShortcutChiclet.MenuItemModel.init(name:symbol:role:variant:)(a1, a2, a3, a4, a5);
  return v10;
}

void *ShortcutChiclet.MenuItemModel.init(name:symbol:role:variant:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_2749F9154();
  v5[2] = a1;
  v5[3] = a2;
  v5[4] = a3;
  v5[5] = a4;
  sub_27473ADB8(a5, v5 + OBJC_IVAR____TtCV10WorkflowUI15ShortcutChiclet13MenuItemModel_role, &qword_28096C020);
  OUTLINED_FUNCTION_10_3();
  sub_2749FA8C4();
  swift_endAccess();
  v11 = OUTLINED_FUNCTION_125();
  sub_2747359D0(v11, v12);
  return v5;
}

uint64_t sub_2748227C8()
{
  sub_2749F9164();
  OUTLINED_FUNCTION_5_22();
  sub_27473AB0C(v0, v1);
  OUTLINED_FUNCTION_125();
  return sub_2749FCD04();
}

uint64_t ShortcutChiclet.MenuItemModel.deinit()
{

  sub_2747359D0(v0 + OBJC_IVAR____TtCV10WorkflowUI15ShortcutChiclet13MenuItemModel_role, &qword_28096C020);
  v1 = OBJC_IVAR____TtCV10WorkflowUI15ShortcutChiclet13MenuItemModel__variant;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096A5C8);
  OUTLINED_FUNCTION_1_2();
  (*(v2 + 8))(v0 + v1);
  v3 = OBJC_IVAR____TtCV10WorkflowUI15ShortcutChiclet13MenuItemModel_id;
  sub_2749F9164();
  OUTLINED_FUNCTION_1_2();
  (*(v4 + 8))(v0 + v3);
  return v0;
}

uint64_t sub_274822914()
{
  sub_2749FDDF4();
  sub_2749F9164();
  OUTLINED_FUNCTION_5_22();
  sub_27473AB0C(v0, v1);
  sub_2749FCD04();
  return sub_2749FDE44();
}

uint64_t sub_2748229A0@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for ShortcutChiclet.MenuItemModel(0);
  result = sub_2749FA874();
  *a1 = result;
  return result;
}

uint64_t sub_274822A28()
{
  sub_2749FDDF4();
  sub_2748227C8();
  return sub_2749FDE44();
}

uint64_t sub_274822AB0@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v21 = a2;
  v20 = v30;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096A798);
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v18 - v8;
  v10 = *(a1 + 88);
  sub_2749FC8C4();
  v24 = a1;
  v22 = a1;
  v23 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096A7A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096A7A8);
  sub_27472AB6C(&qword_28096A7B0, &qword_28096A7A0);
  sub_27473AE24();
  sub_2749FC8D4();
  v27[0] = sub_2749FB644();
  v27[1] = 0;
  v28 = 1;
  sub_274822DF0(a1, v29);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_2749FA904();

  v18 = v26;
  v19 = *&v25[8];
  v29[376] = sub_2749FBC64();
  v11 = v20;
  v12 = v18;
  *v20 = v19;
  v11[1] = v12;
  v30[32] = 0;
  v13 = *(v4 + 16);
  v13(v7, v9, v3);
  sub_27473ADB8(v27, v25, &qword_28096A7F8);
  v14 = v21;
  v13(v21, v7, v3);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096A800);
  sub_27473ADB8(v25, &v14[*(v15 + 48)], &qword_28096A7F8);
  sub_2747359D0(v27, &qword_28096A7F8);
  v16 = *(v4 + 8);
  v16(v9, v3);
  sub_2747359D0(v25, &qword_28096A7F8);
  return (v16)(v7, v3);
}

uint64_t sub_274822DF0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v17[0] = sub_2749FB524();
  v17[1] = 0;
  v18 = 1;
  sub_274823070(a1, &v19);
  v4 = sub_2749FC914();
  v6 = v5;
  v7 = sub_2749FB524();
  LOBYTE(v23[0]) = 1;
  sub_2748231E8(a1, v15);
  memcpy(__dst, v15, 0xC3uLL);
  memcpy(v22, v15, 0xC3uLL);
  sub_27473ADB8(__dst, v24, &qword_28096A808);
  sub_2747359D0(v22, &qword_28096A808);
  memcpy(&__src[7], __dst, 0xC3uLL);
  v8 = v23[0];
  v23[0] = v7;
  v23[1] = 0;
  LOBYTE(v23[2]) = v8;
  memcpy(&v23[2] + 1, __src, 0xCAuLL);
  v23[28] = v4;
  v23[29] = v6;
  memcpy(v20, v23, sizeof(v20));
  v24[0] = v7;
  v24[1] = 0;
  v25 = v8;
  memcpy(v26, __src, sizeof(v26));
  v27 = v4;
  v28 = v6;
  sub_27473ADB8(v23, v15, &qword_28096A810);
  sub_2747359D0(v24, &qword_28096A810);
  v9 = 0;
  if ((sub_2749FC8B4() & 1) == 0)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_2749FA904();

    v9 = v15[5];
  }

  v11 = *a1;
  v10 = a1[1];
  v12 = a1[7];
  sub_27473ADB8(v17, v15, &qword_28096A818);
  sub_27473ADB8(v15, a2, &qword_28096A818);
  *(a2 + 336) = v9;
  *(a2 + 344) = 0;
  *(a2 + 352) = v11;
  *(a2 + 360) = v10;
  *(a2 + 368) = v12;
  swift_bridgeObjectRetain_n();
  v13 = v12;
  sub_2747359D0(v17, &qword_28096A818);

  return sub_2747359D0(v15, &qword_28096A818);
}

uint64_t sub_274823070@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_2749FA904();

  v4 = v12;
  sub_2747B960C((a1 + 2), v10);
  if (a1[9])
  {
    sub_27471CF08(0, &qword_28096BB10);

    v5 = sub_274903E28();
  }

  else
  {
    v6 = a1[5];
    v7 = a1[6];
    __swift_project_boxed_opaque_existential_1(a1 + 2, v6);
    v5 = (*(v7 + 8))(v6, v7);
  }

  v8 = v5;
  *&v13[0] = v4;
  sub_2747A45FC(v10, v13 + 8);
  v14 = v8;
  v12 = v8;
  v11[0] = v13[0];
  v11[1] = v13[1];
  v11[2] = v13[2];
  sub_27482BC30(v11, v13);
  sub_27482BC30(v13, a2);
  *(a2 + 56) = 0;
  *(a2 + 64) = 1;
  sub_27482BC68(v11);
  return sub_27482BC68(v13);
}

uint64_t sub_2748231E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for ShortcutChiclet(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  sub_27473C998();
  sub_27473CC30(&v32);
  switch(v32)
  {
    case 0uLL:
      goto LABEL_8;
    case 1uLL:
      sub_2748E538C(v25);
      memcpy(v26, v25, 0xB0uLL);
      sub_27482BC24(v26);
      memcpy(v33, v26, 0xB1uLL);
      sub_27473ADB8(v25, v31, &unk_280966D38);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280966D38);
      sub_27473DC18();
      sub_27473DC6C();
      sub_2749FB7B4();
      memcpy(v28, v31, 0xB1uLL);
      sub_27473DCF8(v28);
      memcpy(v33, v28, 0xB2uLL);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096A838);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096A840);
      sub_27473DDB4();
      sub_27473DD00();
      sub_2749FB7B4();
      memcpy(v31, v27, 0xB2uLL);
      sub_27473DE40(v31);
      memcpy(v33, v31, 0xB3uLL);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096A828);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096A830);
      sub_27482BB00();
      sub_27473DFDC();
      sub_2749FB7B4();
      sub_2747359D0(v25, &unk_280966D38);
      goto LABEL_13;
    case 2uLL:
      sub_27490EA94(v33);
      *&v33[1] = LOBYTE(v33[1]);
      LOBYTE(v33[2]) = 0;
      goto LABEL_6;
    case 3uLL:
      swift_getKeyPath();
      swift_getKeyPath();
      sub_2749FA904();

      sub_27473B9F0(a1, &v25[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)], type metadata accessor for ShortcutChiclet);
      v12 = (*(v5 + 80) + 16) & ~*(v5 + 80);
      v13 = swift_allocObject();
      sub_27473D980(&v25[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)], v13 + v12);
      _s14descr28838E601O9AddButtonV5ModelCMa();
      swift_allocObject();
      sub_274809150(sub_27482BB8C, v13, 0.0, 0.0, 0.0, 0.0);
      sub_27473AB0C(&qword_28096A860, _s14descr28838E601O9AddButtonV5ModelCMa);
      v14 = sub_2749FAD84();
      v16 = v15;
      v31[0] = 0;
      sub_2749FC5B4();
      v17 = LOBYTE(v33[0]);
      v18 = *(&v33[0] + 1);
      *&v33[0] = v14;
      *(&v33[0] + 1) = v16;
      *&v33[1] = v17;
      *(&v33[1] + 1) = v18;
      LOBYTE(v33[2]) = 1;
LABEL_6:
      sub_27473F2DC();
      sub_27473F330();

      sub_2749FB7B4();
      *v28 = *v31;
      *&v28[16] = *&v31[16];
      v28[32] = v31[32];
      sub_27482BC18(v28);
      goto LABEL_9;
    case 4uLL:
      swift_getKeyPath();
      swift_getKeyPath();
      sub_2749FA904();

      sub_27473B9F0(a1, &v25[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)], type metadata accessor for ShortcutChiclet);
      v7 = (*(v5 + 80) + 16) & ~*(v5 + 80);
      v8 = swift_allocObject();
      sub_27473D980(&v25[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)], v8 + v7);
      _s14descr28838E601O11CheckButtonV5ModelCMa();
      swift_allocObject();
      sub_274867B44(sub_27482BB8C, v8, 0.0, 0.0, 0.0, 0.0);
      sub_27473AB0C(&qword_28096A858, _s14descr28838E601O11CheckButtonV5ModelCMa);
      v9 = sub_2749FAD84();
      v11 = v10;
      v31[0] = 0;
      sub_2749FC5B4();
      *v31 = v9;
      *&v31[8] = v11;
      *&v31[16] = LOBYTE(v33[0]);
      *&v31[24] = *(&v33[0] + 1);
      v31[32] = 0;
      goto LABEL_11;
    case 5uLL:
      swift_getKeyPath();
      swift_getKeyPath();
      sub_2749FA904();

      sub_27473B9F0(a1, &v25[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)], type metadata accessor for ShortcutChiclet);
      v19 = (*(v5 + 80) + 16) & ~*(v5 + 80);
      v20 = swift_allocObject();
      sub_27473D980(&v25[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)], v20 + v19);
      _s14descr28838E601O17DownloadingButtonV5ModelCMa();
      swift_allocObject();
      sub_27481F080(sub_27482BB8C, v20, 0.0, 0.0, 0.0, 0.0);
      sub_27473AB0C(&qword_28096A850, _s14descr28838E601O17DownloadingButtonV5ModelCMa);
      v21 = sub_2749FAD84();
      v23 = v22;
      v31[0] = 0;
      sub_2749FC5B4();
      *v31 = v21;
      *&v31[8] = v23;
      *&v31[16] = LOBYTE(v33[0]);
      *&v31[24] = *(&v33[0] + 1);
      v31[32] = 1;
LABEL_11:
      sub_27473F504();
      sub_27473F558();

      sub_2749FB7B4();
      *v31 = v33[0];
      *&v31[16] = v33[1];
      *&v31[32] = LOBYTE(v33[2]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096A820);
      sub_27482BA68();
      sub_2749FB7B4();
      *v31 = v33[0];
      *&v31[16] = v33[1];
      *&v31[32] = v33[2];
      sub_27482BAF4(v31);
      goto LABEL_12;
    case 6uLL:
      memset(v31, 0, 32);
      *&v31[32] = 256;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096A820);
      sub_27482BA68();
      sub_2749FB7B4();
      *v31 = v33[0];
      *&v31[16] = v33[1];
      *&v31[32] = v33[2];
      sub_27482BAF4(v31);
      memcpy(v30, v31, 0xB3uLL);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096A828);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096A830);
      sub_27482BB00();
      sub_27473DFDC();
      sub_2749FB7B4();
      goto LABEL_14;
    default:
      sub_27473DC08(v32);
LABEL_8:
      sub_27473C998();
      sub_27473CC30(v31);
      sub_27473D108(v31, v33);
      sub_27473DC08(*v31);
      *v26 = v33[0];
      v26[16] = v33[1];
      *&v26[24] = *(&v33[1] + 1);
      sub_27473DC00(v26);
      memcpy(v33, v26, 0xB1uLL);

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280966D38);
      sub_27473DC18();
      sub_27473DC6C();
      sub_2749FB7B4();
      memcpy(v28, v31, 0xB1uLL);
      sub_27473DCF8(v28);
LABEL_9:
      memcpy(v33, v28, 0xB2uLL);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096A838);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096A840);
      sub_27473DDB4();
      sub_27473DD00();
      sub_2749FB7B4();
      memcpy(v31, v27, 0xB2uLL);
      sub_27473DE40(v31);
LABEL_12:
      memcpy(v33, v31, 0xB3uLL);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096A828);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096A830);
      sub_27482BB00();
      sub_27473DFDC();
      sub_2749FB7B4();

LABEL_13:
      memcpy(v33, v30, 0xB3uLL);
LABEL_14:
      memcpy(v31, v33, sizeof(v31));
      v27[0] = 1;
      memcpy(v30, v33, 0xB3uLL);
      memcpy(&v29[7], v33, 0xB3uLL);
      *a2 = 0;
      *(a2 + 8) = 1;
      memcpy((a2 + 9), v29, 0xBAuLL);
      sub_27473ADB8(v30, v28, &qword_28096A848);
      return sub_2747359D0(v31, &qword_28096A848);
  }
}

int *sub_274823DA4(uint64_t a1)
{
  v2 = *(a1 + 104);
  if (sub_27473D5F4())
  {
    result = type metadata accessor for ShortcutChiclet(0);
    v4 = result[21];
    goto LABEL_3;
  }

  sub_27473CC30(v10);
  if (v10[0] - 3 >= 3)
  {
    if (v10[0] == 1)
    {
      result = type metadata accessor for ShortcutChiclet(0);
      v4 = result[20];
LABEL_3:
      v5 = *(a1 + v4);
      if (v5)
      {
        return v5();
      }

      return result;
    }

    if (v10[0])
    {
      return sub_27473DC08(v10[0]);
    }

    else
    {
      result = type metadata accessor for ShortcutChiclet(0);
      v9 = (a1 + result[19]);
      if (*v9)
      {
        return (*v9)(0);
      }
    }
  }

  else
  {
    v6 = (v2 + OBJC_IVAR____TtCV10WorkflowUI15ShortcutChiclet5Model_buttonAction);
    result = swift_beginAccess();
    v7 = *v6;
    if (*v6)
    {

      v7(v8);
      return sub_27471F8A4(v7);
    }
  }

  return result;
}

uint64_t sub_274823EC0(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for ShortcutChiclet(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = *(a2 + 80);
  if (v6 && [v6 hasShortcutInputVariables])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096A768);
    sub_2749FA414();
    *(swift_allocObject() + 16) = xmmword_274A0EF10;
    sub_2749FA3F4();
  }

  sub_27473B9F0(a2, &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ShortcutChiclet);
  v7 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v8 = swift_allocObject();
  sub_27473D980(&v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v8 + v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280966C88);
  sub_2747547B8();
  sub_2749FC284();
}

uint64_t sub_2748240E0(uint64_t a1)
{
  v79 = a1;
  v81[4] = *MEMORY[0x277D85DE8];
  v2 = sub_2749FA4E4();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v70 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v70 - v7;
  v9 = type metadata accessor for ShortcutChiclet(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v70 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28096C960);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v70 - v14;
  v16 = *(v1 + 80);
  if (!v16)
  {
    return 0;
  }

  v17 = v16;
  if (![v17 hasShortcutInputVariables])
  {

    return 0;
  }

  v76 = v15;
  v77 = v10;
  v78 = v11;
  v18 = [objc_opt_self() defaultDatabase];
  sub_2747AFBB0();
  v81[0] = 0;
  v20 = sub_27482B730(v17, v19, v81, v18);

  v21 = v81[0];
  if (!v20)
  {
    v40 = v81[0];
    v41 = sub_2749F8FE4();

    swift_willThrow();
    sub_2749FA3D4();
    v42 = v41;
    v43 = sub_2749FA4D4();
    v44 = sub_2749FD2C4();

    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      v81[0] = v46;
      *v45 = 136315138;
      swift_getErrorValue();
      v47 = sub_2749FDD84();
      v49 = sub_2747AF460(v47, v48, v81);
      v75 = v17;
      v50 = v49;

      *(v45 + 4) = v50;
      _os_log_impl(&dword_274719000, v43, v44, "Failed to load record for chiclet item drop execution with error: %s", v45, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v46);
      MEMORY[0x277C61040](v46, -1, -1);
      MEMORY[0x277C61040](v45, -1, -1);
    }

    else
    {
    }

    (*(v3 + 8))(v6, v2);
    return 0;
  }

  v73 = v12;
  objc_opt_self();
  v22 = swift_dynamicCastObjCClass();
  v23 = v21;
  if (!v22)
  {

    sub_2749FA3D4();
    v57 = sub_2749FA4D4();
    v58 = sub_2749FD2C4();
    if (os_log_type_enabled(v57, v58))
    {
      v59 = swift_slowAlloc();
      *v59 = 0;
      _os_log_impl(&dword_274719000, v57, v58, "Failed to load record for chiclet item drop execution", v59, 2u);
      MEMORY[0x277C61040](v59, -1, -1);
    }

    else
    {
    }

    (*(v3 + 8))(v8, v2);
    return 0;
  }

  v72 = v1;
  v75 = v17;
  v24 = [v22 inputClasses];
  v25 = sub_2749FCF84();

  v26 = 0;
  v70 = 0;
  v27 = *(v25 + 16);
  v28 = MEMORY[0x277D84F90];
  v74 = MEMORY[0x277D84F90];
LABEL_6:
  v29 = (v25 + 40 + 16 * v26);
  while (v27 != v26)
  {
    if (v26 >= *(v25 + 16))
    {
      __break(1u);
LABEL_50:
      __break(1u);
LABEL_51:
      __break(1u);
      goto LABEL_52;
    }

    ++v26;
    v2 = (v29 + 2);
    v22 = *v29;

    v30 = sub_2749FCD64();
    v31 = NSClassFromString(v30);

    v29 = v2;
    if (v31)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_2747647F0();
        v28 = v34;
      }

      v32 = *(v28 + 16);
      v22 = (v32 + 1);
      if (v32 >= *(v28 + 24) >> 1)
      {
        sub_2747647F0();
        v28 = v35;
      }

      ObjCClassMetadata = swift_getObjCClassMetadata();
      *(v28 + 16) = v22;
      *(v28 + 8 * v32 + 32) = ObjCClassMetadata;
      goto LABEL_6;
    }
  }

  v71 = v28;

  v80 = MEMORY[0x277D84F90];
  v36 = v79;
  v20 = sub_27472D918(v79);
  v27 = 0;
  v22 = &qword_28096A778;
  while (v20 != v27)
  {
    if ((v36 & 0xC000000000000001) != 0)
    {
      v37 = MEMORY[0x277C5F6D0](v27, v79);
    }

    else
    {
      if (v27 >= *((v36 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_51;
      }

      v37 = *(v79 + 8 * v27 + 32);
    }

    v38 = v37;
    v2 = v27 + 1;
    if (__OFADD__(v27, 1))
    {
      goto LABEL_50;
    }

    sub_27471CF08(0, &qword_28096A770);
    v81[3] = sub_27471CF08(0, &qword_28096A778);
    v81[0] = v38;
    v39 = sub_274826414(v81);
    ++v27;
    if (v39)
    {
      MEMORY[0x277C5ECC0](v39);
      if (*((v80 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v80 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_2749FCFB4();
      }

      sub_2749FCFF4();
      v74 = v80;
      v27 = v2;
    }
  }

  v51 = v74;
  v52 = sub_27472D918(v74);
  if (v52)
  {
    v53 = v52;
    v20 = v75;
    v2 = v71;
    v27 = v72;
    if (v52 < 1)
    {
      __break(1u);
    }

    for (i = 0; i != v53; ++i)
    {
      if ((v51 & 0xC000000000000001) != 0)
      {
        v55 = MEMORY[0x277C5F6D0](i, v51);
      }

      else
      {
        v55 = *(v51 + 8 * i + 32);
      }

      v56 = v55;
      [v55 setUseNewLoadingAPI_];
    }
  }

  else
  {
    v20 = v75;
    v2 = v71;
    v27 = v72;
  }

  v22 = v73;
  if (!(v51 >> 62))
  {

    sub_2749FDCF4();
    sub_27471CF08(0, &qword_28096D760);
    goto LABEL_44;
  }

LABEL_52:
  sub_27471CF08(0, &qword_28096D760);

  sub_2749FDAF4();

LABEL_44:

  sub_27471CF08(0, &qword_28096A780);
  v60 = sub_27482648C();
  v61 = sub_2749FD0E4();
  v62 = 1;
  __swift_storeEnumTagSinglePayload(v76, 1, 1, v61);
  sub_27473B9F0(v27, v22, type metadata accessor for ShortcutChiclet);
  sub_2749FD0A4();
  v63 = v22;
  v64 = v60;
  v65 = sub_2749FD094();
  v66 = (*(v77 + 80) + 48) & ~*(v77 + 80);
  v67 = swift_allocObject();
  v68 = MEMORY[0x277D85700];
  v67[2] = v65;
  v67[3] = v68;
  v67[4] = v64;
  v67[5] = v2;
  sub_27473D980(v63, v67 + v66);
  sub_27479930C();

  return v62;
}

uint64_t sub_2748249E0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2747398D8();
  *a1 = result;
  return result;
}

id sub_274824A44@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v2 = *(*a1 + 16);
  *a2 = v2;
  return v2;
}

uint64_t sub_274824A54()
{
  sub_2749FC8C4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096A730);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28096B0A0);
  sub_27482B45C();
  sub_27473A74C();
  return sub_2749FC8D4();
}

uint64_t sub_274824B24@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v47 = a2;
  v43 = sub_2749FA2C4();
  v40 = *(v43 - 8);
  MEMORY[0x28223BE20](v43);
  v44 = (&v38 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = sub_2749FA304();
  v45 = *(v4 - 8);
  v46 = v4;
  MEMORY[0x28223BE20](v4);
  v42 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096A748);
  MEMORY[0x28223BE20](v39);
  v41 = &v38 - v6;
  v7 = sub_2749FA2F4();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v38 - v12;
  v14 = objc_opt_self();
  v15 = *MEMORY[0x277D74410];
  v16 = [v14 _preferredFontForTextStyle_weight_];
  if (!v16)
  {
    v16 = [v14 systemFontOfSize:22.0 weight:v15];
  }

  [v16 lineHeight];
  v18 = v17;
  v19 = a1[6];
  objc_opt_self();
  v38 = swift_dynamicCastObjCClass();
  v21 = a1[4];
  v20 = a1[5];
  __swift_project_boxed_opaque_existential_1(a1 + 1, v21);
  (*(v20 + 16))(v21, v20);
  *v11 = [objc_opt_self() whiteColor];
  v11[8] = 0;
  (*(v8 + 104))(v11, *MEMORY[0x277D7D6C0], v7);
  v22 = sub_2749FA2E4();
  v23 = *(v8 + 8);
  v23(v11, v7);
  v23(v13, v7);
  v24 = 1.0;
  if (v22)
  {
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      v24 = 1.0;
    }

    else
    {
      v24 = 0.88;
    }
  }

  v25 = v43;
  v26 = v44;
  *v44 = v18 + 2.0;
  (*(v40 + 104))(v26, *MEMORY[0x277D7D688], v25);
  v27 = a1[4];
  v28 = a1[5];
  __swift_project_boxed_opaque_existential_1(a1 + 1, v27);
  v29 = *(v28 + 16);
  v30 = v19;
  v29(v27, v28);
  v31 = v42;
  sub_2749FA314();

  v32 = v41;
  (*(v45 + 32))(v41, v31, v46);
  *(v32 + *(v39 + 36)) = v24;
  if (v38)
  {
    v33 = 0.6;
  }

  else
  {
    v33 = 0.0;
  }

  if (v38)
  {
    v34 = 0.0;
  }

  else
  {
    v34 = -1.0;
  }

  v35 = v47;
  sub_2747D31F8(v32, v47, &qword_28096A748);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096A730);
  v37 = (v35 + *(result + 36));
  *v37 = v34;
  v37[1] = v33;
  return result;
}

uint64_t sub_27482500C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_2749FA2F4();
  MEMORY[0x28223BE20](v4 - 8);
  v5 = sub_2749FA2C4();
  MEMORY[0x28223BE20](v5);
  v7 = (&v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = a1[6];
  *v7 = *a1;
  (*(v9 + 104))(v7, *MEMORY[0x277D7D688]);
  v10 = a1[4];
  v11 = a1[5];
  __swift_project_boxed_opaque_existential_1(a1 + 1, v10);
  v12 = *(v11 + 16);
  v13 = v8;
  v12(v10, v11);
  sub_2749FA314();
  KeyPath = swift_getKeyPath();
  v15 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_28096B0A0) + 36));
  v16 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096A760) + 28);
  v17 = *MEMORY[0x277D7D6A8];
  v18 = sub_2749FA2D4();
  result = (*(*(v18 - 8) + 104))(v15 + v16, v17, v18);
  *v15 = KeyPath;
  return result;
}

uint64_t sub_274825270(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void), uint64_t (*a6)(uint64_t))
{
  a5(0);
  OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_22();
  v9 = OUTLINED_FUNCTION_66();
  v10(v9);
  return a6(v6);
}

uint64_t sub_274825328@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096A6B8);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v19[-v10];
  sub_2749FC8C4();
  v23 = a1;
  v24 = a2;
  v25 = a3;
  v20 = a1;
  v21 = a2;
  v22 = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096A6C0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096A6C8);
  sub_27482B3C0();
  sub_27472AB6C(&qword_28096A708, &qword_28096A6C8);
  sub_2749FC8D4();
  sub_27473ACF4();
  sub_2749FC0D4();
  (*(v9 + 8))(v11, v8);
  *(a4 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096A718) + 36)) = 0x3FF0000000000000;
  KeyPath = swift_getKeyPath();
  v13 = a4 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096A720) + 36);
  *v13 = KeyPath;
  *(v13 + 8) = 0;
  v14 = a3;
  v15 = sub_2749FC414();
  v16 = swift_getKeyPath();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096A728);
  v18 = (a4 + *(result + 36));
  *v18 = v16;
  v18[1] = v15;
  return result;
}

double sub_27482559C@<D0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28096C0A0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v25[-v3];
  v5 = sub_2749FBE14();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v25[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = objc_opt_self();
  [v9 systemFontSize];
  v10 = [v9 systemFontOfSize_weight_];
  (*(v6 + 104))(v8, *MEMORY[0x277CE0A68], v5);
  v11 = sub_2749FBD24();
  __swift_storeEnumTagSinglePayload(v4, 1, 1, v11);

  sub_2749FBD74();
  sub_2747359D0(v4, &unk_28096C0A0);
  (*(v6 + 8))(v8, v5);
  sub_2749FBD54();
  sub_2749FBDA4();

  v12 = sub_2749FBEC4();
  v14 = v13;
  LOBYTE(v5) = v15;
  v17 = v16;

  [v10 descender];
  v19 = v18 + 3.0;
  KeyPath = swift_getKeyPath();
  v21 = swift_getKeyPath();
  LOBYTE(v5) = v5 & 1;
  v25[24] = v5;
  v25[16] = 0;
  [v10 descender];
  v23 = v22;

  result = -v23;
  *a1 = v12;
  *(a1 + 8) = v14;
  *(a1 + 16) = v5;
  *(a1 + 24) = v17;
  *(a1 + 32) = KeyPath;
  *(a1 + 40) = v19;
  *(a1 + 48) = v21;
  *(a1 + 56) = 2;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  *(a1 + 80) = -v23;
  return result;
}

uint64_t sub_274825864@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28096C0A0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v19 - v3;
  v5 = sub_2749FBE14();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2749FB644();
  v20 = 0;
  (*(v6 + 104))(v8, *MEMORY[0x277CE0AC0], v5);
  v10 = sub_2749FBD24();
  __swift_storeEnumTagSinglePayload(v4, 1, 1, v10);

  sub_2749FBD74();
  sub_2747359D0(v4, &unk_28096C0A0);
  (*(v6 + 8))(v8, v5);
  sub_2749FBD54();
  sub_2749FBDA4();

  v11 = sub_2749FBEC4();
  v13 = v12;
  LOBYTE(v5) = v14;
  v16 = v15;

  result = swift_getKeyPath();
  v18 = v20;
  *a1 = v9;
  *(a1 + 8) = 0;
  *(a1 + 16) = v18;
  *(a1 + 24) = v11;
  *(a1 + 32) = v13;
  *(a1 + 40) = v5 & 1;
  *(a1 + 48) = v16;
  *(a1 + 56) = result;
  *(a1 + 64) = 3;
  *(a1 + 72) = 0;
  return result;
}

uint64_t sub_274825AB4@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  *a2 = sub_2749FC914();
  a2[1] = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096A890);
  return sub_274825B04(a1, a2 + *(v5 + 44));
}

uint64_t sub_274825B04@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v35 = a2;
  v3 = sub_2749FB614();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v33[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v5);
  v9 = &v33[-v8];
  v10 = sub_2749FAA94();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v33[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v12);
  v16 = &v33[-v15];
  sub_274821414(&v33[-v15]);
  (*(v11 + 104))(v14, *MEMORY[0x277CDF3C0], v10);
  v34 = sub_2749FAA84();
  v17 = *(v11 + 8);
  v17(v14, v10);
  v17(v16, v10);
  sub_27482161C(v9);
  (*(v4 + 104))(v7, *MEMORY[0x277CE0220], v3);
  LOBYTE(v10) = sub_2749FAA84();
  v18 = *(v4 + 8);
  v18(v7, v3);
  v18(v9, v3);
  v19 = a1[5];
  v20 = a1[6];
  __swift_project_boxed_opaque_existential_1(a1 + 2, v19);
  v21 = (*(v20 + 32))(v19, v20);
  v22 = [v21 baseColorForDarkMode:v34 & 1 highContrast:v10 & 1];

  v23 = [v22 platformColor];
  v24 = v23;
  sub_2749FC3E4();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_2749FA904();

  v25 = v36;

  v26 = v35;
  sub_2749F9F94();
  v27 = sub_2749FC914();
  v29 = v28;
  v30 = v26 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096A898) + 36);
  sub_274825EC4(a1, v30, v25);

  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096A8A0);
  v32 = (v30 + *(result + 36));
  *v32 = v27;
  v32[1] = v29;
  return result;
}

uint64_t sub_274825EC4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  v6 = sub_2749FC404();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v33 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096A8A8);
  MEMORY[0x28223BE20](v9);
  v11 = (&v31 - v10);
  v12 = sub_2749FB4C4();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(a1 + 144);
  if (*(a1 + 152) != 1)
  {

    sub_2749FD2D4();
    v18 = sub_2749FBC14();
    v32 = v7;
    v19 = v9;
    v20 = v6;
    v21 = a2;
    v22 = v18;
    sub_2749FA424();

    a2 = v21;
    v6 = v20;
    v9 = v19;
    v7 = v32;
    sub_2749FB4B4();
    swift_getAtKeyPath();
    sub_2747F2F1C(v16, 0);
    (*(v13 + 8))(v15, v12);
    if (v34 != 1)
    {
      goto LABEL_3;
    }

LABEL_5:
    v23 = *(sub_2749FAFC4() + 20);
    v24 = *MEMORY[0x277CE0118];
    v25 = sub_2749FB584();
    (*(*(v25 - 8) + 104))(v11 + v23, v24, v25);
    *v11 = a3;
    v11[1] = a3;
    (*(v7 + 104))(v33, *MEMORY[0x277CE0EE0], v6);
    v26 = sub_2749FC4B4();
    *(v11 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096A8B0) + 36)) = v26;
    v27 = *(v9 + 36);
    v28 = *MEMORY[0x277CE13B8];
    v29 = sub_2749FC994();
    (*(*(v29 - 8) + 104))(v11 + v27, v28, v29);
    sub_2747D31F8(v11, a2, &qword_28096A8A8);
    v17 = 0;
    return __swift_storeEnumTagSinglePayload(a2, v17, 1, v9);
  }

  if (v16)
  {
    goto LABEL_5;
  }

LABEL_3:
  v17 = 1;
  return __swift_storeEnumTagSinglePayload(a2, v17, 1, v9);
}

id sub_274826264()
{
  v10[1] = *MEMORY[0x277D85DE8];
  v1 = [v0 baseColor];
  v2 = [v1 platformColor];

  v9 = 0.0;
  v10[0] = 0.0;
  v7 = 0.0;
  v8 = 0.0;
  [v2 getHue:v10 saturation:&v9 brightness:&v8 alpha:&v7];
  v3 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithHue:v10[0] saturation:v9 + -0.05 brightness:v8 + -0.15 alpha:v7];
  v4 = [objc_allocWithZone(MEMORY[0x277D79E20]) initWithPlatformColor_];

  sub_27471CF08(0, &qword_280968AA0);
  v5 = sub_274827220(v4, [v0 startColor], objc_msgSend(v0, sel_endColor));

  return v5;
}

id sub_274826414(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v2 = sub_2749FDCA4();
  v3 = [swift_getObjCClassFromMetadata() itemWithObject_];
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0(a1);
  return v3;
}

id sub_27482648C()
{
  sub_27471CF08(0, &qword_28096D760);
  v0 = sub_2749FCF74();

  v1 = [swift_getObjCClassFromMetadata() collectionWithItems_];

  return v1;
}

uint64_t sub_274826510(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[16] = a5;
  v6[17] = a6;
  v6[15] = a4;
  v7 = *(type metadata accessor for ShortcutChiclet(0) - 8);
  v6[18] = v7;
  v6[19] = *(v7 + 64);
  v6[20] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28096C960);
  v6[21] = swift_task_alloc();
  v8 = sub_2749FA4E4();
  v6[22] = v8;
  v6[23] = *(v8 - 8);
  v6[24] = swift_task_alloc();
  v6[25] = swift_task_alloc();
  v6[26] = swift_task_alloc();
  v6[27] = sub_2749FD0A4();
  v6[28] = sub_2749FD094();
  v10 = sub_2749FD044();
  v6[29] = v10;
  v6[30] = v9;

  return MEMORY[0x2822009F8](sub_2748266BC, v10, v9);
}

uint64_t sub_2748266BC()
{
  sub_27471CF08(0, &qword_28096A788);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096A790);
  inited = swift_initStackObject();
  v2 = MEMORY[0x277CFC608];
  *(inited + 16) = xmmword_274A0EF10;
  v3 = *v2;
  *(inited + 32) = *v2;
  v4 = *MEMORY[0x277CFC6C8];
  type metadata accessor for WFItemClassPrioritizationType(0);
  *(inited + 64) = v5;
  *(inited + 40) = v4;
  type metadata accessor for WFCoercionOptionName(0);
  sub_27473AB0C(&qword_280967310, type metadata accessor for WFCoercionOptionName);
  v6 = v3;
  v7 = v4;
  OUTLINED_FUNCTION_125();
  sub_2749FCCB4();
  v8 = sub_274826EF0();
  v0[31] = v8;
  v9 = swift_task_alloc();
  v0[32] = v9;
  *v9 = v0;
  v9[1] = sub_27482684C;
  v10 = v0[16];

  return MEMORY[0x28214EF80](v10, v8);
}

uint64_t sub_27482684C(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v5 = *v3;
  v5[33] = a1;
  v5[34] = a2;
  v5[35] = v2;

  v6 = v4[30];
  v7 = v4[29];
  if (v2)
  {
    v8 = sub_274826CEC;
  }

  else
  {
    v8 = sub_274826994;
  }

  return MEMORY[0x2822009F8](v8, v7, v6);
}

uint64_t sub_274826994()
{
  v1 = *(v0 + 272);
  v2 = *(v0 + 248);

  if (v1)
  {
    v3 = *(v0 + 272);
    v4 = *(v0 + 264);
    v5 = v3;
    v6 = [v5 items];
    sub_27471CF08(0, &qword_28096D760);
    v7 = sub_2749FCF84();

    v8 = sub_27472D918(v7);

    if (v8)
    {
      sub_2749FA3D4();
      v9 = sub_2749FA4D4();
      v10 = sub_2749FD2C4();
      v11 = os_log_type_enabled(v9, v10);
      v12 = *(v0 + 208);
      v13 = *(v0 + 176);
      v14 = *(v0 + 184);
      if (v11)
      {
        v15 = swift_slowAlloc();
        *v15 = 0;
        _os_log_impl(&dword_274719000, v9, v10, "Failed to coerce some content items", v15, 2u);
        OUTLINED_FUNCTION_31();
      }

      (*(v14 + 8))(v12, v13);
    }

    else
    {
    }

    v16 = *(v0 + 264);
    if (v16)
    {
      goto LABEL_12;
    }
  }

  else
  {
    v16 = *(v0 + 264);
    v17 = v16;
    if (v16)
    {
LABEL_12:
      v26 = *(v0 + 272);
      v28 = *(v0 + 160);
      v27 = *(v0 + 168);
      v30 = *(v0 + 144);
      v29 = *(v0 + 152);
      v31 = *(v0 + 136);
      v32 = sub_2749FD0E4();
      __swift_storeEnumTagSinglePayload(v27, 1, 1, v32);
      OUTLINED_FUNCTION_37_7();
      sub_27473B9F0(v31, v28, v33);
      v34 = v16;
      v35 = sub_2749FD094();
      v36 = (*(v30 + 80) + 32) & ~*(v30 + 80);
      v37 = swift_allocObject();
      v38 = MEMORY[0x277D85700];
      *(v37 + 16) = v35;
      *(v37 + 24) = v38;
      sub_27473D980(v28, v37 + v36);
      *(v37 + ((v29 + v36 + 7) & 0xFFFFFFFFFFFFFFF8)) = v34;
      sub_27479930C();

      goto LABEL_13;
    }
  }

  sub_2749FA3D4();
  v18 = sub_2749FA4D4();
  v19 = sub_2749FD2C4();
  v20 = os_log_type_enabled(v18, v19);
  v21 = *(v0 + 272);
  v22 = *(v0 + 200);
  v23 = *(v0 + 176);
  v24 = *(v0 + 184);
  if (v20)
  {
    v25 = swift_slowAlloc();
    *v25 = 0;
    _os_log_impl(&dword_274719000, v18, v19, "Coercion request returned nil", v25, 2u);
    OUTLINED_FUNCTION_31();
  }

  (*(v24 + 8))(v22, v23);
LABEL_13:

  OUTLINED_FUNCTION_48_0();

  return v39();
}

uint64_t sub_274826CEC()
{
  v20 = v0;
  v1 = *(v0 + 280);
  v2 = *(v0 + 248);

  sub_2749FA3D4();
  v3 = v1;
  v4 = sub_2749FA4D4();
  v5 = sub_2749FD2C4();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 280);
    v7 = *(v0 + 184);
    v18 = *(v0 + 192);
    v8 = *(v0 + 176);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v19 = v10;
    *v9 = 136315138;
    swift_getErrorValue();
    v11 = sub_2749FDD84();
    v13 = sub_2747AF460(v11, v12, &v19);

    *(v9 + 4) = v13;
    _os_log_impl(&dword_274719000, v4, v5, "Content collection failed with error: %s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v10);
    OUTLINED_FUNCTION_31();
    OUTLINED_FUNCTION_31();

    (*(v7 + 8))(v18, v8);
  }

  else
  {

    v14 = OUTLINED_FUNCTION_32();
    v15(v14);
  }

  OUTLINED_FUNCTION_48_0();

  return v16();
}

id sub_274826EF0()
{
  type metadata accessor for WFCoercionOptionName(0);
  sub_27473AB0C(&qword_280967310, type metadata accessor for WFCoercionOptionName);
  v0 = sub_2749FCC94();

  v1 = [swift_getObjCClassFromMetadata() optionsWithDictionary_];

  return v1;
}

uint64_t sub_274826FAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  sub_2749FD0A4();
  v5[4] = sub_2749FD094();
  v7 = sub_2749FD044();

  return MEMORY[0x2822009F8](sub_274827044, v7, v6);
}

uint64_t sub_274827044()
{
  v1 = *(v0 + 16);

  v2 = (v1 + *(type metadata accessor for ShortcutChiclet(0) + 76));
  if (*v2)
  {
    (*v2)(*(v0 + 24));
  }

  OUTLINED_FUNCTION_48_0();

  return v3();
}

uint64_t sub_2748270CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X8>)
{
  v10 = swift_allocObject();
  *(v10 + 16) = a2;
  *(v10 + 24) = a3;
  *(v10 + 32) = a4;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096A6A8);
  (*(*(v11 - 8) + 16))(a5, a1, v11);
  v12 = (a5 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096A6B0) + 36));
  *v12 = sub_27482B39C;
  v12[1] = v10;
}

id sub_274827220(void *a1, void *a2, void *a3)
{
  v6 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithBaseColor:a1 startColor:a2 endColor:a3];

  return v6;
}

double sub_2748272D0()
{
  OUTLINED_FUNCTION_44_0();
  sub_27473B150();
  *v0 = v2;
  v0[1] = v3;
  result = *&v4;
  v0[2] = v4;
  v0[3] = v5;
  return result;
}

uint64_t (*sub_274827334())()
{
  v1 = OUTLINED_FUNCTION_116();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_54(v2);
  KeyPath = swift_getKeyPath();
  OUTLINED_FUNCTION_125_1(KeyPath);
  v4 = swift_getKeyPath();
  *(v0 + 48) = OUTLINED_FUNCTION_33(v4);
  return sub_2747B2788;
}

uint64_t sub_2748273A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t a6, uint64_t (*a7)(uint64_t))
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a5);
  OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_22();
  v10 = OUTLINED_FUNCTION_66();
  v11(v10);
  return a7(v7);
}

uint64_t sub_274827478()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096A5F8);
  OUTLINED_FUNCTION_1_29();
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v0);
  v2 = OUTLINED_FUNCTION_10_6(v1, v7);
  v3(v2);
  OUTLINED_FUNCTION_35();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096A5F0);
  OUTLINED_FUNCTION_65_0();
  swift_endAccess();
  v4 = OUTLINED_FUNCTION_30();
  return v5(v4);
}

uint64_t sub_27482755C()
{
  v1 = OUTLINED_FUNCTION_98();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_32_0(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096A5F8);
  OUTLINED_FUNCTION_25_0(v3);
  *(v0 + 40) = v4;
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_104(v6);
  v8 = __swift_coroFrameAllocStub(v7);
  OUTLINED_FUNCTION_105(v8);
  OUTLINED_FUNCTION_42_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096A5F0);
  OUTLINED_FUNCTION_50();
  swift_endAccess();
  return OUTLINED_FUNCTION_102_0();
}

void sub_27482765C(uint64_t a1, char a2, void (*a3)(void *))
{
  v4 = *a1;
  v5 = *(*a1 + 48);
  v6 = *(*a1 + 56);
  if (a2)
  {
    v7 = v4[4];
    v8 = v4[5];
    (*(v8 + 16))(*(*a1 + 48), v6, v7);
    a3(v5);
    (*(v8 + 8))(v6, v7);
  }

  else
  {
    a3(*(*a1 + 56));
  }

  free(v6);
  free(v5);

  free(v4);
}

uint64_t sub_274827724@<X0>(_BYTE *a1@<X8>)
{
  result = sub_27473B638();
  *a1 = result & 1;
  return result;
}

uint64_t (*sub_27482777C())()
{
  v1 = OUTLINED_FUNCTION_116();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_54(v2);
  KeyPath = swift_getKeyPath();
  OUTLINED_FUNCTION_125_1(KeyPath);
  v4 = swift_getKeyPath();
  *(v0 + 48) = OUTLINED_FUNCTION_33(v4);
  return sub_2747B2788;
}

uint64_t sub_274827808()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096DB80);
  OUTLINED_FUNCTION_1_29();
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v0);
  v2 = OUTLINED_FUNCTION_10_6(v1, v7);
  v3(v2);
  OUTLINED_FUNCTION_35();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096C270);
  OUTLINED_FUNCTION_65_0();
  swift_endAccess();
  v4 = OUTLINED_FUNCTION_30();
  return v5(v4);
}

uint64_t sub_2748278EC()
{
  v1 = OUTLINED_FUNCTION_98();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_32_0(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096DB80);
  OUTLINED_FUNCTION_25_0(v3);
  *(v0 + 40) = v4;
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_104(v6);
  v8 = __swift_coroFrameAllocStub(v7);
  OUTLINED_FUNCTION_105(v8);
  OUTLINED_FUNCTION_42_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096C270);
  OUTLINED_FUNCTION_50();
  swift_endAccess();
  return OUTLINED_FUNCTION_102_0();
}

uint64_t sub_2748279EC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_27473C998();
  *a1 = result & 1;
  return result;
}

uint64_t (*sub_274827A44())()
{
  v1 = OUTLINED_FUNCTION_116();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_54(v2);
  KeyPath = swift_getKeyPath();
  OUTLINED_FUNCTION_125_1(KeyPath);
  v4 = swift_getKeyPath();
  *(v0 + 48) = OUTLINED_FUNCTION_33(v4);
  return sub_2747B2788;
}

uint64_t sub_274827AD0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096DB80);
  OUTLINED_FUNCTION_1_29();
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v0);
  v2 = OUTLINED_FUNCTION_10_6(v1, v7);
  v3(v2);
  OUTLINED_FUNCTION_35();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096C270);
  OUTLINED_FUNCTION_65_0();
  swift_endAccess();
  v4 = OUTLINED_FUNCTION_30();
  return v5(v4);
}

uint64_t sub_274827BB4()
{
  v1 = OUTLINED_FUNCTION_98();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_32_0(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096DB80);
  OUTLINED_FUNCTION_25_0(v3);
  *(v0 + 40) = v4;
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_104(v6);
  v8 = __swift_coroFrameAllocStub(v7);
  OUTLINED_FUNCTION_105(v8);
  OUTLINED_FUNCTION_42_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096C270);
  OUTLINED_FUNCTION_50();
  swift_endAccess();
  return OUTLINED_FUNCTION_102_0();
}

uint64_t sub_274827CB4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_27473D5F4();
  *a1 = result & 1;
  return result;
}

uint64_t (*sub_274827D0C())()
{
  v1 = OUTLINED_FUNCTION_116();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_54(v2);
  KeyPath = swift_getKeyPath();
  OUTLINED_FUNCTION_125_1(KeyPath);
  v4 = swift_getKeyPath();
  *(v0 + 48) = OUTLINED_FUNCTION_33(v4);
  return sub_2747B2788;
}

uint64_t sub_274827D98()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096DB80);
  OUTLINED_FUNCTION_1_29();
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v0);
  v2 = OUTLINED_FUNCTION_10_6(v1, v7);
  v3(v2);
  OUTLINED_FUNCTION_35();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096C270);
  OUTLINED_FUNCTION_65_0();
  swift_endAccess();
  v4 = OUTLINED_FUNCTION_30();
  return v5(v4);
}

uint64_t sub_274827E7C()
{
  v1 = OUTLINED_FUNCTION_98();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_32_0(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096DB80);
  OUTLINED_FUNCTION_25_0(v3);
  *(v0 + 40) = v4;
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_104(v6);
  v8 = __swift_coroFrameAllocStub(v7);
  OUTLINED_FUNCTION_105(v8);
  OUTLINED_FUNCTION_42_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096C270);
  OUTLINED_FUNCTION_50();
  swift_endAccess();
  return OUTLINED_FUNCTION_102_0();
}

uint64_t sub_274827F7C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_27473CF60();
  *a1 = result & 1;
  return result;
}

uint64_t (*sub_274827FD4())()
{
  v1 = OUTLINED_FUNCTION_116();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_54(v2);
  KeyPath = swift_getKeyPath();
  OUTLINED_FUNCTION_125_1(KeyPath);
  v4 = swift_getKeyPath();
  *(v0 + 48) = OUTLINED_FUNCTION_33(v4);
  return sub_2747B2788;
}

uint64_t sub_274828060()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096DB80);
  OUTLINED_FUNCTION_1_29();
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v0);
  v2 = OUTLINED_FUNCTION_10_6(v1, v7);
  v3(v2);
  OUTLINED_FUNCTION_35();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096C270);
  OUTLINED_FUNCTION_65_0();
  swift_endAccess();
  v4 = OUTLINED_FUNCTION_30();
  return v5(v4);
}

uint64_t sub_274828144()
{
  v1 = OUTLINED_FUNCTION_98();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_32_0(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096DB80);
  OUTLINED_FUNCTION_25_0(v3);
  *(v0 + 40) = v4;
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_104(v6);
  v8 = __swift_coroFrameAllocStub(v7);
  OUTLINED_FUNCTION_105(v8);
  OUTLINED_FUNCTION_42_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096C270);
  OUTLINED_FUNCTION_50();
  swift_endAccess();
  return OUTLINED_FUNCTION_102_0();
}

uint64_t sub_274828244@<X0>(_BYTE *a1@<X8>)
{
  result = sub_27473D0A8();
  *a1 = result & 1;
  return result;
}

uint64_t (*sub_27482829C())()
{
  v1 = OUTLINED_FUNCTION_116();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_54(v2);
  KeyPath = swift_getKeyPath();
  OUTLINED_FUNCTION_125_1(KeyPath);
  v4 = swift_getKeyPath();
  *(v0 + 48) = OUTLINED_FUNCTION_33(v4);
  return sub_2747B2788;
}

uint64_t sub_274828328()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096DB80);
  OUTLINED_FUNCTION_1_29();
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v0);
  v2 = OUTLINED_FUNCTION_10_6(v1, v7);
  v3(v2);
  OUTLINED_FUNCTION_35();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096C270);
  OUTLINED_FUNCTION_65_0();
  swift_endAccess();
  v4 = OUTLINED_FUNCTION_30();
  return v5(v4);
}

uint64_t sub_27482840C()
{
  v1 = OUTLINED_FUNCTION_98();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_32_0(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096DB80);
  OUTLINED_FUNCTION_25_0(v3);
  *(v0 + 40) = v4;
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_104(v6);
  v8 = __swift_coroFrameAllocStub(v7);
  OUTLINED_FUNCTION_105(v8);
  OUTLINED_FUNCTION_42_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096C270);
  OUTLINED_FUNCTION_50();
  swift_endAccess();
  return OUTLINED_FUNCTION_102_0();
}

uint64_t sub_27482850C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_274828564();
  *a1 = result & 1;
  return result;
}

uint64_t (*sub_274828578())()
{
  v1 = OUTLINED_FUNCTION_116();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_54(v2);
  KeyPath = swift_getKeyPath();
  OUTLINED_FUNCTION_125_1(KeyPath);
  v4 = swift_getKeyPath();
  *(v0 + 48) = OUTLINED_FUNCTION_33(v4);
  return sub_2747B2788;
}

uint64_t sub_274828604()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096DB80);
  OUTLINED_FUNCTION_1_29();
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v0);
  v2 = OUTLINED_FUNCTION_10_6(v1, v7);
  v3(v2);
  OUTLINED_FUNCTION_35();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096C270);
  OUTLINED_FUNCTION_65_0();
  swift_endAccess();
  v4 = OUTLINED_FUNCTION_30();
  return v5(v4);
}

uint64_t sub_2748286E8()
{
  v1 = OUTLINED_FUNCTION_98();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_32_0(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096DB80);
  OUTLINED_FUNCTION_25_0(v3);
  *(v0 + 40) = v4;
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_104(v6);
  v8 = __swift_coroFrameAllocStub(v7);
  OUTLINED_FUNCTION_105(v8);
  OUTLINED_FUNCTION_42_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096C270);
  OUTLINED_FUNCTION_50();
  swift_endAccess();
  return OUTLINED_FUNCTION_102_0();
}

uint64_t sub_2748287E8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_27473CE90();
  *a1 = result & 1;
  return result;
}

uint64_t (*sub_274828840())()
{
  v1 = OUTLINED_FUNCTION_116();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_54(v2);
  KeyPath = swift_getKeyPath();
  OUTLINED_FUNCTION_125_1(KeyPath);
  v4 = swift_getKeyPath();
  *(v0 + 48) = OUTLINED_FUNCTION_33(v4);
  return sub_2747B2788;
}

uint64_t sub_2748288CC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096DB80);
  OUTLINED_FUNCTION_1_29();
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v0);
  v2 = OUTLINED_FUNCTION_10_6(v1, v7);
  v3(v2);
  OUTLINED_FUNCTION_35();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096C270);
  OUTLINED_FUNCTION_65_0();
  swift_endAccess();
  v4 = OUTLINED_FUNCTION_30();
  return v5(v4);
}

uint64_t sub_2748289B0()
{
  v1 = OUTLINED_FUNCTION_98();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_32_0(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096DB80);
  OUTLINED_FUNCTION_25_0(v3);
  *(v0 + 40) = v4;
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_104(v6);
  v8 = __swift_coroFrameAllocStub(v7);
  OUTLINED_FUNCTION_105(v8);
  OUTLINED_FUNCTION_42_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096C270);
  OUTLINED_FUNCTION_50();
  swift_endAccess();
  return OUTLINED_FUNCTION_102_0();
}

uint64_t sub_274828AB0@<X0>(void *a1@<X8>)
{
  result = sub_274828B28();
  *a1 = v3;
  return result;
}

uint64_t sub_274828B28()
{
  swift_getKeyPath();
  swift_getKeyPath();
  OUTLINED_FUNCTION_17_11();
}

uint64_t (*sub_274828B8C())()
{
  v1 = OUTLINED_FUNCTION_116();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_54(v2);
  KeyPath = swift_getKeyPath();
  OUTLINED_FUNCTION_125_1(KeyPath);
  v4 = swift_getKeyPath();
  *(v0 + 48) = OUTLINED_FUNCTION_33(v4);
  return sub_2747B2788;
}

uint64_t sub_274828C18()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096A608);
  OUTLINED_FUNCTION_1_29();
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v0);
  v2 = OUTLINED_FUNCTION_10_6(v1, v7);
  v3(v2);
  OUTLINED_FUNCTION_35();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096A600);
  OUTLINED_FUNCTION_65_0();
  swift_endAccess();
  v4 = OUTLINED_FUNCTION_30();
  return v5(v4);
}

uint64_t sub_274828CFC()
{
  v1 = OUTLINED_FUNCTION_98();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_32_0(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096A608);
  OUTLINED_FUNCTION_25_0(v3);
  *(v0 + 40) = v4;
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_104(v6);
  v8 = __swift_coroFrameAllocStub(v7);
  OUTLINED_FUNCTION_105(v8);
  OUTLINED_FUNCTION_42_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096A600);
  OUTLINED_FUNCTION_50();
  swift_endAccess();
  return OUTLINED_FUNCTION_102_0();
}

uint64_t sub_274828DFC()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_2749FA914();
}

uint64_t (*sub_274828E6C())()
{
  v1 = OUTLINED_FUNCTION_116();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_54(v2);
  KeyPath = swift_getKeyPath();
  OUTLINED_FUNCTION_125_1(KeyPath);
  v4 = swift_getKeyPath();
  *(v0 + 48) = OUTLINED_FUNCTION_33(v4);
  return sub_2747B2788;
}

uint64_t sub_274828EF8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096A618);
  OUTLINED_FUNCTION_1_29();
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v0);
  v2 = OUTLINED_FUNCTION_10_6(v1, v7);
  v3(v2);
  OUTLINED_FUNCTION_35();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096A610);
  OUTLINED_FUNCTION_65_0();
  swift_endAccess();
  v4 = OUTLINED_FUNCTION_30();
  return v5(v4);
}

uint64_t sub_274828FDC()
{
  v1 = OUTLINED_FUNCTION_98();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_32_0(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096A618);
  OUTLINED_FUNCTION_25_0(v3);
  *(v0 + 40) = v4;
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_104(v6);
  v8 = __swift_coroFrameAllocStub(v7);
  OUTLINED_FUNCTION_105(v8);
  OUTLINED_FUNCTION_42_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096A610);
  OUTLINED_FUNCTION_50();
  swift_endAccess();
  return OUTLINED_FUNCTION_102_0();
}

uint64_t sub_2748290DC@<X0>(uint64_t (**a1)()@<X8>)
{
  result = sub_2748291DC();
  if (result)
  {
    v4 = result;
    v5 = v3;
    result = swift_allocObject();
    *(result + 16) = v4;
    *(result + 24) = v5;
    v6 = sub_27475D1DC;
  }

  else
  {
    v6 = 0;
  }

  *a1 = v6;
  a1[1] = result;
  return result;
}

uint64_t sub_27482914C(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  if (*a1)
  {
    v3 = swift_allocObject();
    *(v3 + 16) = v1;
    *(v3 + 24) = v2;
    v4 = sub_27475D1D4;
  }

  else
  {
    v4 = 0;
    v3 = 0;
  }

  sub_27473A658(v1);
  return sub_27473B5D8(v4, v3);
}

uint64_t sub_2748291DC()
{
  v1 = (v0 + OBJC_IVAR____TtCV10WorkflowUI15ShortcutChiclet5Model_buttonAction);
  swift_beginAccess();
  v2 = *v1;
  sub_27473A658(*v1);
  return v2;
}

uint64_t sub_274829290()
{
  __asm { FMOV            V1.2D, #22.0 }

  sub_27473B430();
  sub_27473A698();
  sub_27473A738();
  sub_27473A844();
  sub_27473A8E0();
  sub_27473A92C();
  sub_27473A958();
  sub_27473A9B8();
  sub_27473AA60();
  v6 = (v0 + OBJC_IVAR____TtCV10WorkflowUI15ShortcutChiclet5Model_buttonAction);
  swift_beginAccess();
  v7 = *v6;
  *v6 = 0;
  v6[1] = 0;
  sub_27471F8A4(v7);
  v8 = objc_allocWithZone(type metadata accessor for PopoverModel(0));
  sub_274736CE4();
  return sub_274828DFC();
}

uint64_t ShortcutChiclet.Model.deinit()
{
  v1 = OBJC_IVAR____TtCV10WorkflowUI15ShortcutChiclet5Model__metrics;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096A5F0);
  OUTLINED_FUNCTION_1_2();
  (*(v2 + 8))(v0 + v1);
  v3 = OBJC_IVAR____TtCV10WorkflowUI15ShortcutChiclet5Model__isSelected;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096C270);
  OUTLINED_FUNCTION_9();
  v6 = *(v5 + 8);
  v6(v0 + v3, v4);
  v7 = OUTLINED_FUNCTION_51(OBJC_IVAR____TtCV10WorkflowUI15ShortcutChiclet5Model__isHovered);
  (v6)(v7);
  v8 = OUTLINED_FUNCTION_51(OBJC_IVAR____TtCV10WorkflowUI15ShortcutChiclet5Model__isEditing);
  (v6)(v8);
  v9 = OUTLINED_FUNCTION_51(OBJC_IVAR____TtCV10WorkflowUI15ShortcutChiclet5Model__isGallery);
  (v6)(v9);
  v10 = OUTLINED_FUNCTION_51(OBJC_IVAR____TtCV10WorkflowUI15ShortcutChiclet5Model__isGalleryDetail);
  (v6)(v10);
  v11 = OUTLINED_FUNCTION_51(OBJC_IVAR____TtCV10WorkflowUI15ShortcutChiclet5Model__isAddedToLibrary);
  (v6)(v11);
  v12 = OUTLINED_FUNCTION_51(OBJC_IVAR____TtCV10WorkflowUI15ShortcutChiclet5Model__isDownloading);
  (v6)(v12);
  v13 = OBJC_IVAR____TtCV10WorkflowUI15ShortcutChiclet5Model__buttonType;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096A600);
  OUTLINED_FUNCTION_1_2();
  (*(v14 + 8))(v0 + v13);
  v15 = OBJC_IVAR____TtCV10WorkflowUI15ShortcutChiclet5Model__popoverModel;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096A610);
  OUTLINED_FUNCTION_1_2();
  (*(v16 + 8))(v0 + v15);
  sub_27471F8A4(*(v0 + OBJC_IVAR____TtCV10WorkflowUI15ShortcutChiclet5Model_buttonAction));
  return v0;
}

uint64_t sub_27482956C(void (*a1)(void))
{
  a1();
  v2 = *(*v1 + 48);
  v3 = *(*v1 + 52);

  return MEMORY[0x2821FE8D8](v1, v2, v3);
}

uint64_t sub_2748295C8()
{
  OUTLINED_FUNCTION_44_0();
  result = sub_274829864();
  *v0 = v2;
  *(v0 + 8) = v3;
  return result;
}

uint64_t sub_274829648()
{
  v0 = sub_2749FA4E4();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2749FA3D4();

  v4 = sub_2749FA4D4();
  v5 = sub_2749FD2B4();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v16 = v7;
    *v6 = 136315138;
    swift_getKeyPath();
    swift_getKeyPath();
    sub_2749FA904();

    v12[1] = v14;
    v13 = v15;
    v8 = sub_2749FCDD4();
    v10 = sub_2747AF460(v8, v9, &v16);

    *(v6 + 4) = v10;
    _os_log_impl(&dword_274719000, v4, v5, "Set running state to %s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v7);
    MEMORY[0x277C61040](v7, -1, -1);
    MEMORY[0x277C61040](v6, -1, -1);
  }

  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_274829864()
{
  swift_getKeyPath();
  swift_getKeyPath();
  OUTLINED_FUNCTION_17_11();
}

uint64_t sub_2748298C8()
{
  swift_getKeyPath();
  swift_getKeyPath();

  OUTLINED_FUNCTION_54_5();
  return sub_274829648();
}

uint64_t (*sub_274829940(uint64_t a1))()
{
  *(a1 + 16) = v1;
  swift_getKeyPath();
  swift_getKeyPath();
  OUTLINED_FUNCTION_17_11();

  return sub_2748299B8;
}