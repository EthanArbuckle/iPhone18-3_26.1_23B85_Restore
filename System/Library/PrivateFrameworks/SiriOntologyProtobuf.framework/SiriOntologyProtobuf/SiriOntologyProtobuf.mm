uint64_t get_enum_tag_for_layout_string_10Foundation4DataV15_RepresentationO(uint64_t a1)
{
  v1 = *(a1 + 8) >> 62;
  if (v1 == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return v1;
  }
}

uint64_t sub_2685B108C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xD && *(a1 + 16))
  {
    return (*a1 + 13);
  }

  v3 = (((*(a1 + 8) >> 60) >> 2) & 0xFFFFFFF3 | (4 * ((*(a1 + 8) >> 60) & 3))) ^ 0xF;
  if (v3 >= 0xC)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_2685B10E0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xD && *(a1 + 24))
  {
    return (*a1 + 13);
  }

  v3 = (((*(a1 + 16) >> 60) >> 2) & 0xFFFFFFF3 | (4 * ((*(a1 + 16) >> 60) & 3))) ^ 0xF;
  if (v3 >= 0xC)
  {
    v3 = -1;
  }

  return v3 + 1;
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_2685B1140(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xC)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 13;
    if (a3 >= 0xD)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0xD)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *(result + 8) = 0;
      *(result + 16) = (((-a2 >> 2) & 3) - 4 * a2) << 60;
    }
  }

  return result;
}

uint64_t sub_2685B1190(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xC)
  {
    *result = a2 - 13;
    *(result + 8) = 0;
    if (a3 >= 0xD)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0xD)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = (((-a2 >> 2) & 3) - 4 * a2) << 60;
    }
  }

  return result;
}

Swift::String __swiftcall Message.textFormatString()()
{
  v4 = 1;
  v2 = Message.textFormatString(options:)(&v4);
  object = v2._object;
  countAndFlagsBits = v2._countAndFlagsBits;
  result._object = object;
  result._countAndFlagsBits = countAndFlagsBits;
  return result;
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

__n128 sub_2685B14F0@<Q0>(uint64_t *a1@<X0>, char *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a2;
  sub_2685B1724(a1, v20);
  sub_2685B1724(v20, v16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28028C090, &qword_26868A790);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28028D3C0, &unk_268693140);
  if (swift_dynamicCast())
  {
    sub_2685B17CC(v14, &v17);
    __swift_project_boxed_opaque_existential_1(&v17, *(&v18 + 1));
    swift_getDynamicType();
    (*(v19 + 8))(v16);
    __swift_destroy_boxed_opaque_existential_1(&v17);
    v12 = v16[1];
    v13 = v16[0];
  }

  else
  {
    v15 = 0;
    memset(v14, 0, sizeof(v14));
    v13 = 0u;
    sub_2685B2E64(v14, &qword_28028D3C8, &unk_2686902F0);
    v12 = 0u;
  }

  sub_2685B1724(v20, v16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28028D3F0, &qword_268693150);
  if (swift_dynamicCast())
  {
    v6 = *(&v18 + 1);
    v7 = v19;
    __swift_project_boxed_opaque_existential_1(&v17, *(&v18 + 1));
    (*(v7 + 16))(v14, v6, v7);
    v8 = *&v14[0];
    __swift_destroy_boxed_opaque_existential_1(&v17);
  }

  else
  {
    v19 = 0;
    v17 = 0u;
    v18 = 0u;
    sub_2685B2E64(&v17, &qword_28028D3F8, &unk_268690680);
    v8 = 0;
  }

  v9 = MEMORY[0x277D84F90];
  v10 = sub_2685B2EC4(MEMORY[0x277D84F90]);
  __swift_destroy_boxed_opaque_existential_1(a1);
  __swift_destroy_boxed_opaque_existential_1(v20);
  sub_2685B2FBC(0);

  *a3 = v9;
  *(a3 + 8) = v9;
  result = v13;
  *(a3 + 16) = v13;
  *(a3 + 32) = v12;
  *(a3 + 48) = v10;
  *(a3 + 56) = v8;
  *(a3 + 64) = v5;
  return result;
}

uint64_t sub_2685B1724(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_2685B17CC(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_2685B1810(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v65 = a2;
  v8 = a1;
  v9 = *(a3 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](a1, a2);
  v64 = &v56 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11, v12);
  v15 = &v56 - v14;
  MEMORY[0x28223BE20](v13, v16);
  v72 = &v56 - v17;
  result = sub_268689B74();
  if (!result)
  {
    return result;
  }

  v57 = v10;
  v19 = 0;
  v66 = *(v5 + 64);
  v87 = (v9 + 16);
  v60 = (v9 + 32);
  v58 = a4 + 72;
  v59 = (v9 + 8);
  v63 = a4;
  v62 = v8;
  v61 = v9;
  v71 = v15;
  while (1)
  {
    v27 = sub_268689B64();
    sub_268689B24();
    if ((v27 & 1) == 0)
    {
      break;
    }

    v28 = *(v9 + 16);
    v28(v72, (v8 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v19), a3);
    v29 = v19 + 1;
    if (__OFADD__(v19, 1))
    {
      goto LABEL_37;
    }

LABEL_7:
    (*v60)(v15, v72, a3);
    sub_2685B301C(v65);
    sub_2685B403C(" {\n", 3, v30);
    v31 = v5[1];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v5[1] = v31;
    v70 = v29;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v31 = sub_2685B3F48(0, *(v31 + 2) + 1, 1, v31);
      v5[1] = v31;
    }

    v34 = *(v31 + 2);
    v33 = *(v31 + 3);
    v35 = v34 + 1;
    if (v34 >= v33 >> 1)
    {
      v31 = sub_2685B3F48((v33 > 1), v34 + 1, 1, v31);
    }

    *(v31 + 2) = v35;
    v31[v34 + 32] = 32;
    v5[1] = v31;
    v36 = *(v31 + 3);
    v37 = v34 + 2;
    if (v37 > (v36 >> 1))
    {
      v31 = sub_2685B3F48((v36 > 1), v37, 1, v31);
    }

    *(v31 + 2) = v37;
    v31[v35 + 32] = 32;
    v5[1] = v31;
    v81[3] = a3;
    v81[4] = a4;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v81);
    v28(boxed_opaque_existential_1, v15, a3);
    v39 = *v5;
    sub_2685B1724(v81, &v73);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28028C090, &qword_26868A790);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28028D3C0, &unk_268693140);
    if (swift_dynamicCast())
    {
      sub_2685B17CC(&v78, &v82);
      __swift_project_boxed_opaque_existential_1(&v82, *(&v83 + 1));
      swift_getDynamicType();
      (*(v84 + 8))(&v73);
      __swift_destroy_boxed_opaque_existential_1(&v82);
      v68 = v74;
      v40 = v73;
      v41 = &v84 + 8;
    }

    else
    {
      v80 = 0;
      v78 = 0u;
      v79 = 0u;
      sub_2685B2E64(&v78, &qword_28028D3C8, &unk_2686902F0);
      v40 = 0uLL;
      v69 = 0u;
      v41 = &v83 + 8;
    }

    *(v41 - 16) = v40;
    sub_2685B1724(v81, &v82);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28028D3F0, &qword_268693150);
    if (swift_dynamicCast())
    {
      v42 = *(&v79 + 1);
      v43 = v80;
      __swift_project_boxed_opaque_existential_1(&v78, *(&v79 + 1));
      v44 = *(v43 + 16);
      v45 = v43;
      a4 = v63;
      v44(&v73, v42, v45);
      v46 = v73;
      __swift_destroy_boxed_opaque_existential_1(&v78);
    }

    else
    {
      v80 = 0;
      v78 = 0u;
      v79 = 0u;
      sub_2685B2E64(&v78, &qword_28028D3F8, &unk_268690680);
      v46 = 0;
    }

    v47 = sub_2685B2EC4(MEMORY[0x277D84F90]);
    __swift_destroy_boxed_opaque_existential_1(v81);
    sub_2685B2FBC(0);

    *&v82 = v39;
    *(&v82 + 1) = v31;
    v83 = v69;
    v84 = v68;
    *&v85 = v47;
    *(&v85 + 1) = v46;
    v86 = v66;
    v28(v64, v71, a3);
    if (swift_dynamicCast())
    {
      v49 = *(&v73 + 1);
      v48 = v73;
      sub_26866A568(&v82);
      v50 = v49 >> 62;
      if ((v49 >> 62) > 1)
      {
        if (v50 != 2 || *(v48 + 16) == *(v48 + 24))
        {
          goto LABEL_31;
        }
      }

      else
      {
        if (!v50)
        {
          if ((v49 & 0xFF000000000000) == 0 || !v66)
          {
            goto LABEL_31;
          }

LABEL_30:
          v51 = v67;
          sub_26863B108(v48, v49);
          v52 = &v83;
          v67 = v51;
          if (v51)
          {
            goto LABEL_40;
          }

          goto LABEL_31;
        }

        if (v48 == v48 >> 32)
        {
LABEL_31:
          sub_2685B593C(v48, v49);

          a4 = v63;
          goto LABEL_4;
        }
      }

      if (v66)
      {
        goto LABEL_30;
      }

      goto LABEL_31;
    }

    v20 = v67;
    (*(a4 + 72))(&v82, &type metadata for TextFormatEncodingVisitor, &off_28792DA88, a3, a4);
    v21 = &v83;
    v67 = v20;
    if (v20)
    {
      goto LABEL_39;
    }

LABEL_4:
    v23 = *(&v82 + 1);
    v22 = v82;

    *v5 = __PAIR128__(v23, v22);
    sub_2685B4D0C(*(v23 + 16) - 1);
    sub_2685B4D0C(*(v5[1] + 16) - 1);
    v24 = v5[1];

    sub_2685B3560(v25);
    sub_2685B403C("}\n", 2, v26);
    v75 = v84;
    v76 = v85;
    v77 = v86;
    v74 = v83;
    v73 = v82;
    sub_2685B4DEC(&v73);
    v15 = v71;
    (*v59)(v71, a3);
    v8 = v62;
    result = sub_268689B74();
    ++v19;
    v9 = v61;
    if (v70 == result)
    {
      return result;
    }
  }

  v53 = sub_268689D14();
  v21 = v57;
  if (v57 != 8)
  {
    goto LABEL_38;
  }

  *&v82 = v53;
  v28 = *v87;
  (*v87)(v72, &v82, a3);
  swift_unknownObjectRelease();
  v29 = v19 + 1;
  if (!__OFADD__(v19, 1))
  {
    goto LABEL_7;
  }

LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  v54 = *(v21 - 32);
  swift_unexpectedError();
  __break(1u);
LABEL_40:
  v55 = *(v52 - 32);
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

uint64_t sub_2685B206C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(uint64_t, uint64_t))
{
  sub_2685B301C(a3);
  sub_2685B403C(": ", 2, v10);
  a6(a1, a2);
  v11 = *v6;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v6 = v11;
  if ((result & 1) == 0)
  {
    result = sub_2685B3F48(0, *(v11 + 16) + 1, 1, v11);
    v11 = result;
    *v6 = result;
  }

  v14 = *(v11 + 16);
  v13 = *(v11 + 24);
  if (v14 >= v13 >> 1)
  {
    result = sub_2685B3F48((v13 > 1), v14 + 1, 1, v11);
    v11 = result;
  }

  *(v11 + 16) = v14 + 1;
  *(v11 + v14 + 32) = 10;
  *v6 = v11;
  return result;
}

uint64_t Message.serializedData(partial:)(char a1, uint64_t a2, uint64_t a3)
{
  if (a1 & 1) != 0 || ((*(a3 + 32))(a2, a3))
  {
    v9[0] = 0;
    result = (*(a3 + 72))(v9, &type metadata for BinaryEncodingSizeVisitor, &off_28792CAA8, a2, a3);
    if (!v3)
    {
      v9[0] = sub_2685B5DAC(v9[0]);
      v9[1] = v7;
      MEMORY[0x28223BE20](v9[0], v7);
      sub_2685B2294(sub_2685B5F28);
      return v9[0];
    }
  }

  else
  {
    sub_26861C728();
    swift_allocError();
    *v8 = 1;
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_2685B2294(void (*a1)(uint64_t, uint64_t))
{
  v2 = v1;
  v23 = *MEMORY[0x277D85DE8];
  v5 = *v1;
  v4 = v1[1];
  v6 = v4 >> 62;
  if ((v4 >> 62) <= 1)
  {
    if (v6)
    {

      sub_2685B593C(v5, v4);
      *&v22 = v5;
      *(&v22 + 1) = v4 & 0x3FFFFFFFFFFFFFFFLL;
      *v2 = xmmword_26868A5E0;
      sub_2685B593C(0, 0xC000000000000000);
      result = sub_2685B5E4C(a1);
      v8 = v22;
      v9 = *(&v22 + 1) | 0x4000000000000000;
    }

    else
    {
      sub_2685B593C(v5, v4);
      *&v22 = v5;
      WORD4(v22) = v4;
      BYTE10(v22) = BYTE2(v4);
      BYTE11(v22) = BYTE3(v4);
      BYTE12(v22) = BYTE4(v4);
      BYTE13(v22) = BYTE5(v4);
      BYTE14(v22) = BYTE6(v4);
      result = (a1)(&v22, &v22 + BYTE6(v4));
      v8 = v22;
      v9 = DWORD2(v22) | ((WORD6(v22) | (BYTE14(v22) << 16)) << 32);
    }

    *v2 = v8;
    v2[1] = v9;
    goto LABEL_15;
  }

  if (v6 != 2)
  {
    *(&v22 + 7) = 0;
    *&v22 = 0;
    result = (a1)(&v22, &v22);
LABEL_15:
    v20 = *MEMORY[0x277D85DE8];
    return result;
  }

  sub_2685B593C(v5, v4);
  *&v22 = v5;
  *(&v22 + 1) = v4 & 0x3FFFFFFFFFFFFFFFLL;
  *v2 = xmmword_26868A5E0;
  sub_2685B593C(0, 0xC000000000000000);
  sub_2686897D4();
  v10 = *(&v22 + 1);
  v11 = *(v22 + 16);
  v12 = *(v22 + 24);
  result = sub_268689764();
  if (result)
  {
    v13 = result;
    v14 = sub_268689794();
    v15 = v11 - v14;
    if (__OFSUB__(v11, v14))
    {
      __break(1u);
    }

    else
    {
      v16 = __OFSUB__(v12, v11);
      v17 = v12 - v11;
      if (!v16)
      {
        v18 = sub_268689784();
        if (v18 >= v17)
        {
          v19 = v17;
        }

        else
        {
          v19 = v18;
        }

        result = (a1)(v13 + v15, v13 + v15 + v19);
        *v2 = v22;
        v2[1] = v10 | 0x8000000000000000;
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t Message.init(serializedData:extensions:partial:options:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v14 = *a5;
  v15 = *(a5 + 8);
  (*(a7 + 16))(a6, a7);
  v19 = v14;
  v20 = v15;
  v16 = v21;
  Message.merge(serializedData:extensions:partial:options:)(a1, a2, a3, a4, &v19, a6, a7);
  if (v16)
  {
    sub_2685B593C(a1, a2);
    sub_2685B55C0(a3);
    return (*(*(a6 - 8) + 8))(a8, a6);
  }

  else
  {
    sub_2685B55C0(a3);
    return sub_2685B593C(a1, a2);
  }
}

uint64_t sub_2685B2660(uint64_t (*a1)(uint64_t, uint64_t), uint64_t a2, uint64_t a3, unint64_t a4)
{
  v11[2] = *MEMORY[0x277D85DE8];
  v5 = a4 >> 62;
  if ((a4 >> 62) > 1)
  {
    if (v5 != 2)
    {
      memset(v11, 0, 14);
      v6 = v11;
      goto LABEL_9;
    }

    v7 = *(a3 + 16);
    v8 = *(a3 + 24);
  }

  else
  {
    if (!v5)
    {
      v11[0] = a3;
      LOWORD(v11[1]) = a4;
      BYTE2(v11[1]) = BYTE2(a4);
      BYTE3(v11[1]) = BYTE3(a4);
      BYTE4(v11[1]) = BYTE4(a4);
      BYTE5(v11[1]) = BYTE5(a4);
      v6 = v11 + BYTE6(a4);
LABEL_9:
      result = a1(v11, v6);
      goto LABEL_10;
    }

    v7 = a3;
    v8 = a3 >> 32;
    if (a3 >> 32 < a3)
    {
      __break(1u);
    }
  }

  result = sub_2685B28D0(v7, v8, a1);
LABEL_10:
  v10 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t Message.merge(serializedData:extensions:partial:options:)(uint64_t result, unint64_t a2, uint64_t a3, char a4, uint64_t *a5, uint64_t a6, uint64_t a7)
{
  v12 = *a5;
  v13 = *(a5 + 8);
  v14 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v14 != 2)
    {
      goto LABEL_10;
    }

    v15 = *(result + 16);
    v16 = *(result + 24);
LABEL_8:
    if (v15 == v16)
    {
      goto LABEL_10;
    }

LABEL_9:
    MEMORY[0x28223BE20](result, a2);
    v23[2] = a6;
    v23[3] = a7;
    v23[4] = v17;
    v24 = v18;
    v25 = v19;
    v26 = v7;
    result = sub_2685B2660(sub_2685B2AE4, v23, v21, v20);
    if (v8)
    {
      return result;
    }

    goto LABEL_10;
  }

  if (v14)
  {
    v15 = result;
    v16 = result >> 32;
    goto LABEL_8;
  }

  if ((a2 & 0xFF000000000000) != 0)
  {
    goto LABEL_9;
  }

LABEL_10:
  if ((a4 & 1) == 0)
  {
    result = (*(a7 + 32))(a6, a7);
    if ((result & 1) == 0)
    {
      sub_26861C77C();
      swift_allocError();
      *v22 = 4;
      return swift_willThrow();
    }
  }

  return result;
}

uint64_t sub_2685B28D0(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  result = sub_268689764();
  v7 = result;
  if (result)
  {
    result = sub_268689794();
    if (__OFSUB__(a1, result))
    {
LABEL_13:
      __break(1u);
      return result;
    }

    v7 += a1 - result;
  }

  v8 = __OFSUB__(a2, a1);
  v9 = a2 - a1;
  if (v8)
  {
    __break(1u);
    goto LABEL_13;
  }

  v10 = sub_268689784();
  if (v10 >= v9)
  {
    v11 = v9;
  }

  else
  {
    v11 = v10;
  }

  v12 = v11 + v7;
  if (v7)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  return a3(v7, v13);
}

uint64_t sub_2685B2978(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28028CD70, &unk_268690670);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2685B29E8(uint64_t result, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (result)
  {
    v8 = result;
    v9 = a2 - result;
    if (a2 - result >= 1)
    {
      sub_2685B2978(a5, v15);
      v17 = 1;
      memset(v18, 0, sizeof(v18));
      v19 = 0;
      v20 = 1;
      v24 = xmmword_26868BD70;
      v25 = xmmword_26868BD70;
      v16[0] = v8;
      v16[1] = v9;
      v16[2] = v8;
      v16[3] = 0;
      sub_2685B2B0C(v15, v18 + 8);
      v21 = a3;
      v22 = a4 & 1;
      v23 = a3;
      sub_2685B2B7C(a6, a7, a8);
      return sub_2685B4BE4(v16);
    }
  }

  return result;
}

uint64_t sub_2685B2B0C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28028CD70, &unk_268690670);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_2685B2B7C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3[15];
  v6 = __OFSUB__(v5, 1);
  v7 = v5 - 1;
  if (v6)
  {
    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v3[15] = v7;
  if (v7 < 0)
  {
    v13 = 6;
    goto LABEL_9;
  }

  result = (*(a3 + 64))(v3, &type metadata for BinaryDecoder, &off_28792F920, a2, a3);
  if (v4)
  {
    return result;
  }

  v11 = v3[15];
  v6 = __OFADD__(v11, 1);
  v12 = v11 + 1;
  if (v6)
  {
    goto LABEL_14;
  }

  v3[15] = v12;
  if (v3[13] < v12)
  {
LABEL_15:
    result = sub_268689DA4();
    __break(1u);
    return result;
  }

  if (v3[1])
  {
    v13 = 0;
LABEL_9:
    sub_26861C77C();
    swift_allocError();
    *v14 = v13;
    return swift_willThrow();
  }

  v15 = v3[17];
  if (v15 >> 60 != 15)
  {
    v16 = v3[16];
    v17 = *(a3 + 56);
    sub_2685BA80C(v16, v15);
    v18 = v17(v19, a2, a3);
    sub_268689854();
    v18(v19, 0);
    return sub_2685B98FC(v16, v15);
  }

  return result;
}

uint64_t Message.debugDescription.getter()
{
  swift_getDynamicType();
  swift_getMetatypeMetadata();
  v2 = sub_2686899C4();
  MEMORY[0x26D61D4B0](2618, 0xE200000000000000);
  v0 = Message.textFormatString()();

  MEMORY[0x26D61D4B0](v0._countAndFlagsBits, v0._object);

  return v2;
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

uint64_t sub_2685B2E64(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

unint64_t sub_2685B2EC4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28028DCB0, &qword_268693B00);
    v3 = sub_268689DD4();
    for (i = (a1 + 56); ; i += 32)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v7 = *(i - 1);
      v8 = *i;
      result = sub_2685B351C(v5);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      v11 = v3[7] + 24 * result;
      *v11 = v6;
      *(v11 + 8) = v7;
      *(v11 + 16) = v8;
      v12 = v3[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v3[2] = v14;
      if (!--v1)
      {
        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

uint64_t sub_2685B2FBC(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_2685B301C(uint64_t a1)
{
  v3 = v1;
  v4 = a1;
  if (*(v1 + 16))
  {
    v5 = *(v1 + 24);
    if (*(v5 + 16))
    {
      v6 = sub_2685B351C(a1);
      if (v7)
      {
        v8 = *(v5 + 56) + 80 * v6;
        v4 = *(v8 + 40);
        v9 = *(v8 + 48);
LABEL_10:
        v14 = *(v3 + 8);

        sub_2685B3560(v15);

        return sub_2685B403C(v4, v9, v16);
      }
    }
  }

  v10 = *(v3 + 48);
  if (*(v10 + 2))
  {
    v11 = sub_2685B351C(v4);
    if (v12)
    {
      v13 = *(v10 + 7) + 24 * v11;
      if ((*(v13 + 16) & 1) == 0)
      {
        v4 = *v13;
        if (*v13)
        {
          v9 = *(v13 + 8);
          goto LABEL_10;
        }

        goto LABEL_31;
      }

LABEL_30:
      __break(1u);
LABEL_31:
      __break(1u);
      goto LABEL_32;
    }
  }

  v18 = *(v3 + 56);
  if (!v18)
  {
LABEL_27:
    v41 = *(v3 + 8);

    v10 = v3;
    sub_2685B3560(v42);
    if ((v4 & 0x8000000000000000) == 0)
    {
      return sub_268663B88(v4);
    }

    __break(1u);
    goto LABEL_30;
  }

  if (!*(v18 + 16) || (v19 = sub_2685B351C(v4), (v20 & 1) == 0))
  {
    v50 = 0;
    v48 = 0u;
    v49 = 0u;
    goto LABEL_26;
  }

  sub_2685B1724(*(v18 + 56) + 40 * v19, &v48);
  if (!*(&v49 + 1))
  {
LABEL_26:
    sub_2685B2E64(&v48, &qword_28028C068, &unk_26868A6A0);
    goto LABEL_27;
  }

  v21 = *(&v49 + 1);
  v22 = v50;
  v23 = __swift_project_boxed_opaque_existential_1(&v48, *(&v49 + 1));
  v24 = *(v21 - 8);
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v23, v23);
  v27 = &v45[-1] - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v24 + 16))(v27);
  sub_2685B2E64(&v48, &qword_28028C068, &unk_26868A6A0);
  (*(v22 + 24))(v45, v21, v22);
  (*(v24 + 8))(v27, v21);
  v28 = v46;
  v29 = v47;
  __swift_project_boxed_opaque_existential_1(v45, v46);
  v2 = (*(v29 + 16))(v28, v29);
  v4 = v30;
  __swift_destroy_boxed_opaque_existential_1(v45);
  v31 = *(v3 + 8);

  sub_2685B3560(v32);
  v10 = *v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v3 = v10;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
LABEL_32:
    v10 = sub_2685B3F48(0, *(v10 + 2) + 1, 1, v10);
    *v3 = v10;
  }

  v35 = *(v10 + 2);
  v34 = *(v10 + 3);
  v36 = v35 + 1;
  if (v35 >= v34 >> 1)
  {
    v44 = v35 + 1;
    v43 = sub_2685B3F48((v34 > 1), v35 + 1, 1, v10);
    v36 = v44;
    v10 = v43;
  }

  *(v10 + 2) = v36;
  v10[v35 + 32] = 91;
  *v3 = v10;

  sub_2686689EC(v2, v4);
  v37 = *v3;
  v38 = swift_isUniquelyReferenced_nonNull_native();
  *v3 = v37;
  if ((v38 & 1) == 0)
  {
    v37 = sub_2685B3F48(0, *(v37 + 2) + 1, 1, v37);
    *v3 = v37;
  }

  v40 = *(v37 + 2);
  v39 = *(v37 + 3);
  if (v40 >= v39 >> 1)
  {
    v37 = sub_2685B3F48((v39 > 1), v40 + 1, 1, v37);
  }

  *(v37 + 2) = v40 + 1;
  v37[v40 + 32] = 93;
  *v3 = v37;
  return result;
}

uint64_t sub_2685B33F4(char a1, uint64_t a2)
{
  sub_2685B301C(a2);
  sub_2685B403C(": ", 2, v4);
  if (a1)
  {
    v5 = "true";
  }

  else
  {
    v5 = "false";
  }

  if (a1)
  {
    v6 = 4;
  }

  else
  {
    v6 = 5;
  }

  sub_2685B403C(v5, v6, 4);
  v7 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v7;
  if ((result & 1) == 0)
  {
    result = sub_2685B3F48(0, *(v7 + 16) + 1, 1, v7);
    v7 = result;
    *v2 = result;
  }

  v10 = *(v7 + 16);
  v9 = *(v7 + 24);
  if (v10 >= v9 >> 1)
  {
    result = sub_2685B3F48((v9 > 1), v10 + 1, 1, v7);
    v7 = result;
  }

  *(v7 + 16) = v10 + 1;
  *(v7 + v10 + 32) = 10;
  *v2 = v7;
  return result;
}

unint64_t sub_2685B351C(uint64_t a1)
{
  v3 = *(v1 + 40);
  v4 = sub_268689E84();

  return sub_2685B3654(a1, v4);
}

uint64_t sub_2685B3560(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  v7 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v1 = v3;
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  result = sub_2685B3F48(result, v12, 1, v3);
  v3 = result;
  *v1 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

unint64_t sub_2685B3654(uint64_t a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 8 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

void sub_2685B36C0()
{
  if (v0[5] >= 1)
  {
    v2 = v0[19];
    if (v2 >> 60 == 15)
    {
      if ((v0[4] & 1) == 0)
      {
        if (*(v0 + 112) == 1)
        {
          v3 = v0[3];
          if (v3)
          {
            *v0 = v3;
          }

          else
          {
            v22 = v0[1];
            v21 = v0[2];
            v23 = (*v0 - v21);
            v24 = __OFADD__(v22, v23);
            v25 = &v23[v22];
            if (v24)
            {
LABEL_50:
              __break(1u);
              goto LABEL_51;
            }

            *v0 = v21;
            v0[1] = v25;
            v26 = sub_26865CC60();
            if (v1)
            {
              return;
            }

            if ((v26 & 0x100000000) != 0)
            {
              sub_26861C77C();
              swift_allocError();
              v14 = 1;
              goto LABEL_23;
            }

            sub_26865C974(v26);
            v0[3] = *v0;
          }
        }

        else
        {
          sub_268655274();
          if (v1)
          {
            return;
          }

          v15 = v0[3];
          if (!v15)
          {
LABEL_51:
            __break(1u);
            return;
          }

          v16 = sub_26863BA00(v0[2], v15 - v0[2]);
          v18 = v17;
          v19 = v0[17];
          if (v19 >> 60 == 15)
          {
            sub_2685B98FC(v0[16], v19);
            v0[16] = v16;
            v0[17] = v18;
          }

          else
          {
            sub_268689854();
            sub_2685B593C(v16, v18);
          }
        }
      }
    }

    else
    {
      v5 = v0[17];
      v4 = v0[18];
      if (v5 >> 60 == 15)
      {
        v6 = v0[16];
        sub_2685BA80C(v0[18], v0[19]);
        sub_2685B98FC(v6, v5);
        v0[16] = v4;
        v0[17] = v2;
      }

      else
      {
        sub_2685BA80C(v0[18], v0[19]);
        sub_268689854();
        sub_2685B98FC(v4, v2);
      }

      sub_2685B98FC(v0[18], v0[19]);
      *(v0 + 9) = xmmword_26868BD70;
    }
  }

  v7 = v0[1];
  if (!v7)
  {
    return;
  }

  v8 = *v0;
  v0[2] = *v0;
  v0[3] = 0;
  v9 = *v8;
  v10 = sub_2685B428C(v9 & 7);
  if (v10 == 6)
  {
    goto LABEL_22;
  }

  *(v0 + 33) = v10;
  if ((v9 & 0x80) == 0)
  {
    *v0 = v8 + 1;
    if (!__OFSUB__(v7, 1))
    {
      v0[1] = (v7 - 1);
      v11 = (v9 >> 3);
      goto LABEL_16;
    }

    __break(1u);
    goto LABEL_50;
  }

  v12 = ((v9 >> 3) & 0xF);
  v0[5] = v12;
  if (v7 <= 1)
  {
    goto LABEL_22;
  }

  v20 = v8[1];
  if (v20 < 0)
  {
    v27 = (v9 >> 3) & 0xFLL | (16 * (v20 & 0x7F));
    v0[5] = v27;
    if (v7 != 2)
    {
      v28 = v8[2];
      v11 = (v27 | ((v28 & 0x7F) << 11));
      v0[5] = v11;
      if (v28 < 0)
      {
        if (v7 <= 3)
        {
          goto LABEL_22;
        }

        v31 = v8[3];
        v11 = (v11 | ((v31 & 0x7F) << 18));
        v0[5] = v11;
        if (v31 < 0)
        {
          if (v7 == 4)
          {
            goto LABEL_22;
          }

          v32 = v8[4];
          if (v32 >= 0x10)
          {
            goto LABEL_22;
          }

          v11 = (v11 | (v32 << 25));
          v0[5] = v11;
          v29 = v8 + 5;
          v30 = v7 - 5;
        }

        else
        {
          v29 = v8 + 4;
          v30 = v7 - 4;
        }
      }

      else
      {
        v29 = v8 + 3;
        v30 = v7 - 3;
      }

      *v0 = v29;
      v0[1] = v30;
      if (v11)
      {
        goto LABEL_17;
      }
    }

LABEL_22:
    sub_26861C77C();
    swift_allocError();
    v14 = 3;
LABEL_23:
    *v13 = v14;
    swift_willThrow();
    return;
  }

  *v0 = v8 + 2;
  v0[1] = (v7 - 2);
  v11 = (v12 | (16 * v20));
LABEL_16:
  v0[5] = v11;
  if (!v11)
  {
    goto LABEL_22;
  }

LABEL_17:
  *(v0 + 32) = 0;
  if (v10 == 4 && ((v0[12] & 1) != 0 || v0[11] != v11))
  {
    goto LABEL_22;
  }
}

uint64_t dispatch thunk of Decoder.decodeSingularBoolField(value:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  return (*(a3 + 312))();
}

{
  return (*(a3 + 320))();
}

uint64_t sub_2685B3ACC(uint64_t result)
{
  if (!*(v1 + 33))
  {
    v3 = result;
    result = sub_2685B3B10();
    if (!v2)
    {
      *v3 = result != 0;
      *(v1 + 32) = 1;
    }
  }

  return result;
}

uint64_t sub_2685B3B10()
{
  v1 = v0[1];
  v2 = v1 - 1;
  if (v1 < 1)
  {
    v4 = 1;
  }

  else
  {
    result = **v0;
    if ((result & 0x8000000000000000) == 0)
    {
      ++*v0;
LABEL_4:
      v0[1] = v2;
      return result;
    }

    if (v1 != 1)
    {
      result &= 0x7Fu;
      v6 = *v0 + 2;
      v7 = 7;
      v4 = 3;
      while (1)
      {
        result |= (*(v6 - 1) & 0x7F) << v7;
        if ((*(v6 - 1) & 0x80) == 0)
        {
          break;
        }

        if (v2 >= 2)
        {
          ++v6;
          --v2;
          v8 = v7 > 0x38;
          v7 += 7;
          if (!v8)
          {
            continue;
          }
        }

        goto LABEL_8;
      }

      --v2;
      *v0 = v6;
      goto LABEL_4;
    }

    v4 = 3;
  }

LABEL_8:
  sub_26861C77C();
  swift_allocError();
  *v5 = v4;
  return swift_willThrow();
}

unint64_t sub_2685B3BEC(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  v6 = *(a2 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](a1, a2);
  v10 = &v26[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  result = MEMORY[0x28223BE20](v8, v11);
  v15 = &v26[-v14];
  if (*(v2 + 33) == 2)
  {
    v16 = v13;
    v46 = result;
    result = sub_2685B3B10();
    if (!v3)
    {
      v17 = *(v2 + 8);
      if ((v17 & 0x8000000000000000) != 0)
      {
        __break(1u);
      }

      else
      {
        v18 = v17 >= result;
        v19 = v17 - result;
        if (v18)
        {
          v21 = *v2;
          *v2 += result;
          *(v2 + 8) = v19;
          v22 = *(v16 + 16);
          v28 = result;
          v29 = v16;
          v30 = 0;
          v22(a2);
          sub_2685B42A0(v2, v32);
          v23 = v33[7];
          v27 = v34;
          sub_2685B433C(v33, v31, &qword_28028CD70, &unk_268690670);
          v37 = 1;
          memset(v38, 0, sizeof(v38));
          v39 = 0;
          v40 = 1;
          v44 = xmmword_26868BD70;
          v45 = xmmword_26868BD70;
          v36[0] = v21;
          v36[1] = v28;
          v36[2] = v21;
          v36[3] = 0;
          sub_2685B4224(v31, &v38[8], &qword_28028CD70, &unk_268690670);
          v41 = v23;
          v42 = v27;
          v43 = v23;
          v24 = v35;
          sub_2685B4BE4(v32);
          v43 = v24;
          v25 = v30;
          sub_2685B2B7C(v15, a2, v29);
          if (v25)
          {
            (*(v6 + 8))(v15, a2);
            return sub_2685B4BE4(v36);
          }

          else
          {
            (*(v6 + 16))(v10, v15, a2);
            sub_268689BA4();
            sub_268689B84();
            (*(v6 + 8))(v15, a2);
            result = sub_2685B4BE4(v36);
            *(v4 + 32) = 1;
          }
        }

        else
        {
          sub_26861C77C();
          swift_allocError();
          *v20 = 1;
          return swift_willThrow();
        }
      }
    }
  }

  return result;
}

char *sub_2685B3F48(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28028CD58, &qword_26868F248);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

uint64_t sub_2685B403C@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = *v3;
  v6 = *(*v3 + 16);
  v7 = v6 + a2;
  if (__OFADD__(v6, a2))
  {
    __break(1u);
  }

  else
  {
    v4 = result;
    v9 = *v3;
    result = swift_isUniquelyReferenced_nonNull_native();
    *v3 = v5;
    if (!result || (v10 = *(v5 + 24) >> 1, v10 < v7))
    {
      if (v6 <= v7)
      {
        v11 = v7;
      }

      else
      {
        v11 = v6;
      }

      result = sub_2685B3F48(result, v11, 1, v5);
      v5 = result;
      *v3 = result;
      v10 = *(result + 24) >> 1;
    }

    v12 = *(v5 + 16);
    v13 = v10 - v12;
    if (!a2 || v10 == v12)
    {
      a3 = &v4[a2];
      if (!v4)
      {
        a3 = 0;
      }

      if (a2 <= 0)
      {
        v14 = 0;
LABEL_22:
        if (v14 != v13 || v4 == 0 || v4 == a3)
        {
          goto LABEL_30;
        }

        goto LABEL_33;
      }
    }

    else
    {
      if (a2 >= v13)
      {
        v14 = v10 - v12;
      }

      else
      {
        v14 = a2;
      }

      result = memcpy((v5 + v12 + 32), v4, v14);
      if (v13 >= a2)
      {
        a3 = &v4[a2];
        if (v14 >= 1)
        {
          v15 = *(v5 + 16);
          v16 = __OFADD__(v15, v14);
          v17 = v15 + v14;
          if (v16)
          {
            __break(1u);
            return result;
          }

          *(v5 + 16) = v17;
        }

        v4 += v14;
        goto LABEL_22;
      }
    }
  }

  __break(1u);
LABEL_33:
  v20 = *(v5 + 16);
  v23 = *v4;
  v21 = v4 + 1;
  v22 = v23;
  while (1)
  {
    v24 = *(v5 + 24);
    v25 = v24 >> 1;
    if ((v24 >> 1) < v20 + 1)
    {
      break;
    }

    if (v20 < v25)
    {
      goto LABEL_37;
    }

LABEL_34:
    *(v5 + 16) = v20;
  }

  v28 = v5;
  v29 = a3;
  result = sub_2685B3F48((v24 > 1), v20 + 1, 1, v28);
  a3 = v29;
  v5 = result;
  *v3 = result;
  v25 = *(result + 24) >> 1;
  if (v20 >= v25)
  {
    goto LABEL_34;
  }

LABEL_37:
  v26 = v20 + 32;
  while (1)
  {
    *(v5 + v26) = v22;
    if (v21 == a3)
    {
      break;
    }

    v27 = *v21++;
    v22 = v27;
    if (++v26 - v25 == 32)
    {
      v20 = v25;
      goto LABEL_34;
    }
  }

  *(v5 + 16) = v26 - 31;
LABEL_30:
  *v3 = v5;
  return result;
}

uint64_t sub_2685B4224(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

uint64_t sub_2685B428C(uint64_t result)
{
  if (result >= 6u)
  {
    return 6;
  }

  else
  {
    return result;
  }
}

uint64_t get_enum_tag_for_layout_string_20SiriOntologyProtobuf12ExtensionMap_pSg(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t get_enum_tag_for_layout_string_10Foundation4DataVSg(uint64_t a1)
{
  v1 = *(a1 + 8) >> 60;
  if (((4 * v1) & 0xC) != 0)
  {
    return 16 - ((4 * v1) & 0xC | (v1 >> 2));
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2685B433C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_2685B43A4(uint64_t a1, unint64_t a2)
{
  v5 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v5;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
LABEL_106:
    v5 = sub_2685B3F48(0, *(v5 + 2) + 1, 1, v5);
    *v2 = v5;
  }

  v8 = *(v5 + 2);
  v7 = *(v5 + 3);
  if (v8 >= v7 >> 1)
  {
    v5 = sub_2685B3F48((v7 > 1), v8 + 1, 1, v5);
  }

  *(v5 + 2) = v8 + 1;
  v5[v8 + 32] = 34;
  *v2 = v5;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v9 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v9 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v9)
  {
    v10 = a2 & 0xFFFFFFFFFFFFFFLL;
    v11 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;

    v5 = 0;
    v60 = a1;
    while (1)
    {
      if ((a2 & 0x1000000000000000) != 0)
      {
        v15 = sub_268689CD4();
        v17 = v16;
        if (v15 <= 11)
        {
          goto LABEL_18;
        }

        goto LABEL_25;
      }

      if ((a2 & 0x2000000000000000) != 0)
      {
        v61[0] = a1;
        v61[1] = v10;
        v14 = v61 + v5;
      }

      else
      {
        v13 = v11;
        if ((a1 & 0x1000000000000000) == 0)
        {
          v13 = sub_268689D24();
        }

        v14 = &v5[v13];
      }

      v15 = *v14;
      if ((*v14 & 0x80000000) == 0)
      {
        break;
      }

      v18 = (__clz(v15 ^ 0xFF) - 24);
      if (v18 > 2)
      {
        if (v18 == 3)
        {
          v30 = *(v14 + 1);
          v14 = *(v14 + 2);
          v15 = ((v15 & 0xF) << 12) | ((v30 & 0x3F) << 6) | v14 & 0x3F;
          v17 = 3;
          if (v15 <= 11)
          {
            goto LABEL_18;
          }
        }

        else
        {
          v41 = *(v14 + 1);
          v42 = *(v14 + 2);
          v14 = *(v14 + 3);
          v15 = ((v15 & 0xF) << 18) | ((v41 & 0x3F) << 12) | ((v42 & 0x3F) << 6) | v14 & 0x3F;
          v17 = 4;
          if (v15 <= 11)
          {
LABEL_18:
            if (v15 > 9)
            {
              if (v15 == 10)
              {
                v12 = "\\n";
              }

              else
              {
                if (v15 != 11)
                {
                  goto LABEL_42;
                }

                v12 = "\\v";
              }
            }

            else if (v15 == 8)
            {
              v12 = "\\b";
            }

            else
            {
              if (v15 != 9)
              {
                goto LABEL_42;
              }

              v12 = "\\t";
            }

            goto LABEL_10;
          }
        }
      }

      else
      {
        if (v18 == 1)
        {
          break;
        }

        v14 = *(v14 + 1) & 0x3F | ((v15 & 0x1F) << 6);
        v15 = v14;
        v17 = 2;
        if (v14 <= 11)
        {
          goto LABEL_18;
        }
      }

LABEL_25:
      if (v15 > 33)
      {
        if (v15 == 34)
        {
          v12 = "\\"";
        }

        else
        {
          if (v15 != 92)
          {
LABEL_42:
            if (v15 >= 0x20 && v15 != 127)
            {
              if (v15 <= 0x7F)
              {
                v43 = *v2;
                v44 = swift_isUniquelyReferenced_nonNull_native();
                *v2 = v43;
                if ((v44 & 1) == 0)
                {
                  v43 = sub_2685B3F48(0, *(v43 + 2) + 1, 1, v43);
                  *v2 = v43;
                }

                v46 = *(v43 + 2);
                v45 = *(v43 + 3);
                if (v46 >= v45 >> 1)
                {
                  v43 = sub_2685B3F48((v45 > 1), v46 + 1, 1, v43);
                }

                *(v43 + 2) = v46 + 1;
                v43[v46 + 32] = v15;
                *v2 = v43;
                goto LABEL_81;
              }

              if (v15 <= 0x7FF)
              {
                v19 = *v2;
                v47 = swift_isUniquelyReferenced_nonNull_native();
                *v2 = v19;
                if ((v47 & 1) == 0)
                {
                  v19 = sub_2685B3F48(0, *(v19 + 2) + 1, 1, v19);
                  *v2 = v19;
                }

                v49 = *(v19 + 2);
                v48 = *(v19 + 3);
                v50 = v49 + 1;
                if (v49 >= v48 >> 1)
                {
                  v19 = sub_2685B3F48((v48 > 1), v49 + 1, 1, v19);
                }

                *(v19 + 2) = v50;
                v19[v49 + 32] = (v15 >> 6) | 0xC0;
                *v2 = v19;
                v51 = *(v19 + 3);
                if ((v49 + 2) > (v51 >> 1))
                {
                  v19 = sub_2685B3F48((v51 > 1), v49 + 2, 1, v19);
                }

                v39 = v15 & 0x3F | 0x80;
                *(v19 + 2) = v49 + 2;
                v40 = &v19[v50];
              }

              else
              {
                if (HIWORD(v15))
                {
                  if ((((v15 >> 18) + 240) & 0x100) != 0)
                  {
                    __break(1u);
                    goto LABEL_106;
                  }

                  v19 = *v2;
                  v20 = swift_isUniquelyReferenced_nonNull_native();
                  *v2 = v19;
                  if ((v20 & 1) == 0)
                  {
                    v19 = sub_2685B3F48(0, *(v19 + 2) + 1, 1, v19);
                    *v2 = v19;
                  }

                  v22 = *(v19 + 2);
                  v21 = *(v19 + 3);
                  v23 = v22 + 1;
                  if (v22 >= v21 >> 1)
                  {
                    v19 = sub_2685B3F48((v21 > 1), v22 + 1, 1, v19);
                  }

                  *(v19 + 2) = v23;
                  v19[v22 + 32] = (v15 >> 18) - 16;
                  *v2 = v19;
                  v24 = *(v19 + 3);
                  v25 = v22 + 2;
                  if ((v22 + 2) > (v24 >> 1))
                  {
                    v19 = sub_2685B3F48((v24 > 1), v22 + 2, 1, v19);
                  }

                  *(v19 + 2) = v25;
                  v19[v23 + 32] = (v15 >> 12) & 0x3F | 0x80;
                  *v2 = v19;
                  v26 = *(v19 + 3);
                  v27 = v22 + 3;
                  if ((v22 + 3) > (v26 >> 1))
                  {
                    v19 = sub_2685B3F48((v26 > 1), v22 + 3, 1, v19);
                  }

                  *(v19 + 2) = v27;
                  v19[v25 + 32] = (v15 >> 6) & 0x3F | 0x80;
                  *v2 = v19;
                  v28 = *(v19 + 3);
                  v29 = v22 + 4;
                }

                else
                {
                  v19 = *v2;
                  v52 = swift_isUniquelyReferenced_nonNull_native();
                  *v2 = v19;
                  if ((v52 & 1) == 0)
                  {
                    v19 = sub_2685B3F48(0, *(v19 + 2) + 1, 1, v19);
                    *v2 = v19;
                  }

                  v54 = *(v19 + 2);
                  v53 = *(v19 + 3);
                  v55 = v54 + 1;
                  if (v54 >= v53 >> 1)
                  {
                    v19 = sub_2685B3F48((v53 > 1), v54 + 1, 1, v19);
                  }

                  *(v19 + 2) = v55;
                  v19[v54 + 32] = (v15 >> 12) | 0xE0;
                  *v2 = v19;
                  v56 = *(v19 + 3);
                  v27 = v54 + 2;
                  if ((v54 + 2) > (v56 >> 1))
                  {
                    v19 = sub_2685B3F48((v56 > 1), v54 + 2, 1, v19);
                  }

                  *(v19 + 2) = v27;
                  v19[v55 + 32] = (v15 >> 6) & 0x3F | 0x80;
                  *v2 = v19;
                  v28 = *(v19 + 3);
                  v29 = v54 + 3;
                }

                if (v29 > (v28 >> 1))
                {
                  v19 = sub_2685B3F48((v28 > 1), v29, 1, v19);
                }

                v39 = v15 & 0x3F | 0x80;
LABEL_72:
                *(v19 + 2) = v29;
                v40 = &v19[v27];
              }

              v40[32] = v39;
              *v2 = v19;
              a1 = v60;
LABEL_81:
              v11 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
              v10 = a2 & 0xFFFFFFFFFFFFFFLL;
              goto LABEL_11;
            }

            v19 = *v2;
            v31 = swift_isUniquelyReferenced_nonNull_native();
            *v2 = v19;
            if ((v31 & 1) == 0)
            {
              v19 = sub_2685B3F48(0, *(v19 + 2) + 1, 1, v19);
              *v2 = v19;
            }

            v33 = *(v19 + 2);
            v32 = *(v19 + 3);
            v34 = v33 + 1;
            if (v33 >= v32 >> 1)
            {
              v19 = sub_2685B3F48((v32 > 1), v33 + 1, 1, v19);
            }

            *(v19 + 2) = v34;
            v19[v33 + 32] = 92;
            *v2 = v19;
            v35 = *(v19 + 3);
            v36 = v33 + 2;
            if ((v33 + 2) > (v35 >> 1))
            {
              v19 = sub_2685B3F48((v35 > 1), v33 + 2, 1, v19);
            }

            *(v19 + 2) = v36;
            v19[v34 + 32] = (v15 >> 6) | 0x30;
            *v2 = v19;
            v37 = *(v19 + 3);
            v27 = v33 + 3;
            if ((v33 + 3) > (v37 >> 1))
            {
              v19 = sub_2685B3F48((v37 > 1), v33 + 3, 1, v19);
            }

            *(v19 + 2) = v27;
            v19[v36 + 32] = (v15 >> 3) & 7 | 0x30;
            *v2 = v19;
            v38 = *(v19 + 3);
            v29 = v33 + 4;
            if ((v33 + 4) > (v38 >> 1))
            {
              v19 = sub_2685B3F48((v38 > 1), v33 + 4, 1, v19);
            }

            v39 = v15 & 7 | 0x30;
            goto LABEL_72;
          }

          v12 = "\\\";
        }
      }

      else if (v15 == 12)
      {
        v12 = "\\f";
      }

      else
      {
        if (v15 != 13)
        {
          goto LABEL_42;
        }

        v12 = "\\r";
      }

LABEL_10:
      sub_2685B403C(v12, 2, v14);
LABEL_11:
      v5 += v17;
      if (v5 >= v9)
      {

        v5 = *v2;
        goto LABEL_100;
      }
    }

    v17 = 1;
    if (*v14 <= 0xBu)
    {
      goto LABEL_18;
    }

    goto LABEL_25;
  }

LABEL_100:
  result = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v5;
  if ((result & 1) == 0)
  {
    result = sub_2685B3F48(0, *(v5 + 2) + 1, 1, v5);
    v5 = result;
    *v2 = result;
  }

  v59 = *(v5 + 2);
  v58 = *(v5 + 3);
  if (v59 >= v58 >> 1)
  {
    result = sub_2685B3F48((v58 > 1), v59 + 1, 1, v5);
    v5 = result;
  }

  *(v5 + 2) = v59 + 1;
  v5[v59 + 32] = 34;
  *v2 = v5;
  return result;
}

unint64_t sub_2685B4C38(unint64_t result)
{
  if (*(v1 + 33) == 2)
  {
    v3 = result;
    result = sub_2685B3B10();
    if (!v2)
    {
      v4 = *(v1 + 8);
      if ((v4 & 0x8000000000000000) != 0)
      {
        __break(1u);
      }

      else
      {
        v5 = result;
        v6 = v4 >= result;
        v7 = v4 - result;
        if (v6)
        {
          v9 = *v1;
          *v1 += v5;
          *(v1 + 8) = v7;
          v10 = sub_2685B4E1C(v9, v5);
          if (v11)
          {
            v12 = v10;
            v13 = v11;
            v14 = v3[1];

            *v3 = v12;
            v3[1] = v13;
            *(v1 + 32) = 1;
            return result;
          }

          v8 = 2;
        }

        else
        {
          v8 = 1;
        }

        sub_26861C77C();
        swift_allocError();
        *v15 = v8;
        return swift_willThrow();
      }
    }
  }

  return result;
}

uint64_t sub_2685B4D0C(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v1 = v3;
  if ((result & 1) == 0)
  {
    result = sub_2685B4DB0(v3);
    v3 = result;
    *v1 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = *(v3 + a1 + 32);
    memmove((v3 + a1 + 32), (v3 + a1 + 33), v5 - 1 - a1);
    *(v3 + 16) = v6;
    *v1 = v3;
    return v7;
  }

  return result;
}

uint64_t dispatch thunk of Decoder.decodeSingularStringField(value:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  return (*(a3 + 336))();
}

{
  return (*(a3 + 344))();
}

uint64_t (*sub_2685B4E1C(char *a1, uint64_t a2))()
{
  if (!a2)
  {
    return 0;
  }

  v2 = 0;
  v17 = 0;
  v18 = 0;
  v3 = &a1[a2];
  v4 = a1;
  while (1)
  {
    while (!v2)
    {
      if (!v4 || v3 == v4)
      {
        return sub_268689A04();
      }

      v2 = 0;
      v6 = *v4++;
      v5 = v6;
      if (v6 < 0)
      {
        v7 = v17 & 0xFFFFFF00 | v5;
        v2 = 8;
LABEL_8:
        v8 = v4;
        if (v4 == v3)
        {
          goto LABEL_21;
        }

        ++v4;
        v7 = (*v8 << v2) | ((-255 << v2) - 1) & v7;
        v9 = v2 + 8;
        if ((v2 + 8) >= 0x20u)
        {
LABEL_20:
          v2 = v9;
          goto LABEL_21;
        }

        if (v4 == v3)
        {
          goto LABEL_18;
        }

        v4 = (v8 + 2);
        v7 = (v8[1] << (v2 + 8)) | ((-255 << (v2 + 8)) - 1) & v7;
        v9 = v2 + 16;
        if ((v2 + 16) > 0x1Fu)
        {
          goto LABEL_20;
        }

        if (v4 == v3)
        {
          goto LABEL_18;
        }

        v4 = (v8 + 3);
        v7 = (v8[2] << v9) | ((-255 << v9) - 1) & v7;
        v9 = v2 + 24;
        if ((v2 + 24) > 0x1Fu)
        {
          goto LABEL_20;
        }

        if (v4 == v3)
        {
          goto LABEL_18;
        }

        v4 = (v8 + 4);
        v7 = (v8[3] << v9) | ((-255 << v9) - 1) & v7;
        v9 = v2 + 32;
        if (v2 < 0xE0u)
        {
          goto LABEL_20;
        }

        if (v4 == v3 || (v4 = (v8 + 5), v7 = (v8[4] << v2) | ((-255 << v2) - 1) & v7, v9 = v2 + 40, v2 += 40, v2 < 0x20u))
        {
LABEL_18:
          v2 = v9;
          if (!v9)
          {
            return sub_268689A04();
          }
        }

LABEL_21:
        if ((v7 & 0xC0E0) == 0x80C0)
        {
          if ((v7 & 0x1E) == 0)
          {
            goto LABEL_39;
          }

          v10 = 16;
        }

        else if ((v7 & 0xC0C0F0) == 0x8080E0)
        {
          if ((v7 & 0x200F) == 0 || (v7 & 0x200F) == 0x200D)
          {
            goto LABEL_39;
          }

          v10 = 24;
        }

        else
        {
          if ((v7 & 0xC0C0C0F8) != 0x808080F0 || (v7 & 0x3007) == 0 || __rev16(v7 & 0x3007) > 0x400)
          {
LABEL_39:
            sub_268689F04();
            return 0;
          }

          v10 = 32;
        }

        v17 = v7 >> v10;
        v2 -= v10;
        v18 = v2;
      }
    }

    v7 = v17;
    if ((v17 & 0x80) != 0)
    {
      if (!v4)
      {
        goto LABEL_21;
      }

      goto LABEL_8;
    }

    v14 = a2;
    v15 = a1;
    sub_26861A150();
    result = sub_2685C9CB0();
    v13 = *(v12 + 4);
    if (!v13)
    {
      break;
    }

    *v12 >>= 8;
    *(v12 + 4) = v13 - 8;
    (result)(v16, 0);
    v2 = v18;
    a2 = v14;
    a1 = v15;
  }

  __break(1u);
  return result;
}

uint64_t get_enum_tag_for_layout_string_20SiriOntologyProtobuf8_NameMapVSg(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

unint64_t sub_2685B5164(unint64_t result)
{
  if (*(v2 + 33) != 2)
  {
    return result;
  }

  v6 = result;
  result = sub_2685B3B10();
  if (v3)
  {
    return result;
  }

  v7 = *(v2 + 8);
  if ((v7 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_16:
    result = sub_2685B54B4(0, *(v5 + 16) + 1, 1, v5);
    v5 = result;
    v15 = v6;
    *v6 = result;
    goto LABEL_9;
  }

  v8 = result;
  v9 = v7 >= result;
  v10 = v7 - result;
  if (!v9)
  {
    v11 = 1;
LABEL_13:
    sub_26861C77C();
    swift_allocError();
    *v20 = v11;
    return swift_willThrow();
  }

  v12 = *v2;
  *v2 += v8;
  *(v2 + 8) = v10;
  v13 = sub_2685B4E1C(v12, v8);
  if (!v14)
  {
    v11 = 2;
    goto LABEL_13;
  }

  v1 = v13;
  v4 = v14;
  v5 = *v6;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v6 = v5;
  if ((result & 1) == 0)
  {
    goto LABEL_16;
  }

  v15 = v6;
LABEL_9:
  v16 = *(v5 + 16);
  v17 = *(v5 + 24);
  v18 = v16 + 1;
  if (v16 >= v17 >> 1)
  {
    v23 = v16 + 1;
    v21 = v5;
    v22 = *(v5 + 16);
    result = sub_2685B54B4((v17 > 1), v16 + 1, 1, v21);
    v16 = v22;
    v18 = v23;
    v5 = result;
    v15 = v6;
  }

  *(v5 + 16) = v18;
  v19 = v5 + 16 * v16;
  *(v19 + 32) = v1;
  *(v19 + 40) = v4;
  *v15 = v5;
  *(v2 + 32) = 1;
  return result;
}

uint64_t sub_2685B530C(uint64_t result, uint64_t a2)
{
  v3 = *(result + 16);
  if (v3)
  {
    v5 = (result + 40);
    do
    {
      v6 = *(v5 - 1);
      v7 = *v5;

      sub_2685B301C(a2);
      sub_2685B403C(": ", 2, v8);
      sub_2685B43A4(v6, v7);

      v9 = *v2;
      result = swift_isUniquelyReferenced_nonNull_native();
      *v2 = v9;
      if ((result & 1) == 0)
      {
        result = sub_2685B3F48(0, *(v9 + 16) + 1, 1, v9);
        v9 = result;
        *v2 = result;
      }

      v11 = *(v9 + 16);
      v10 = *(v9 + 24);
      if (v11 >= v10 >> 1)
      {
        result = sub_2685B3F48((v10 > 1), v11 + 1, 1, v9);
        v9 = result;
      }

      *(v9 + 16) = v11 + 1;
      *(v9 + v11 + 32) = 10;
      *v2 = v9;
      v5 += 2;
      --v3;
    }

    while (v3);
  }

  return result;
}

unint64_t sub_2685B5450()
{
  result = qword_280FBCFF8;
  if (!qword_280FBCFF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28028C318, &unk_2686929B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FBCFF8);
  }

  return result;
}

char *sub_2685B54B4(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28028D958, &qword_268692510);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_2685B55C0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28028CD70, &unk_268690670);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2685B5628(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v34 = a4;
  v8 = *(a3 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](a1, a2);
  v31 = v11;
  v12 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = 8 * v10;
  v14 = 2;
  v15 = 3;
  v16 = 4;
  if ((8 * v10) >> 28)
  {
    v16 = 5;
  }

  if (v13 >= 0x200000)
  {
    v15 = v16;
  }

  if ((8 * v10) >> 14)
  {
    v14 = v15;
  }

  if (v13 >= 0x80)
  {
    v17 = v14;
  }

  else
  {
    v17 = 1;
  }

  result = sub_268689B74();
  v19 = result * v17;
  if ((result * v17) >> 64 != (result * v17) >> 63)
  {
    goto LABEL_44;
  }

  v20 = *v4 + v19;
  if (!__OFADD__(*v4, v19))
  {
    v21 = 0;
    *v4 = v20;
    v35 = (v8 + 16);
    v32 = v4;
    v33 = (v8 + 8);
    while (1)
    {
      result = sub_268689B74();
      if (v21 == result)
      {
        goto LABEL_39;
      }

      v22 = sub_268689B64();
      sub_268689B24();
      if (v22)
      {
        result = (*(v8 + 16))(v12, a1 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v21, a3);
        if (__OFADD__(v21, 1))
        {
          goto LABEL_38;
        }
      }

      else
      {
        result = sub_268689D14();
        if (v31 != 8)
        {
          goto LABEL_46;
        }

        v36 = result;
        (*v35)(v12, &v36, a3);
        result = swift_unknownObjectRelease();
        if (__OFADD__(v21, 1))
        {
LABEL_38:
          __break(1u);
LABEL_39:
          *v32 = v20;
          return result;
        }
      }

      v23 = sub_2685B59A8(a3, v34);
      if (v5)
      {
        v29 = v33;
        *v32 = v20;
        return (*v29)(v12, a3);
      }

      v24 = v23;
      result = (*v33)(v12, a3);
      if ((v24 & 0x8000000000000000) != 0)
      {
        __break(1u);
LABEL_42:
        __break(1u);
LABEL_43:
        __break(1u);
LABEL_44:
        __break(1u);
        break;
      }

      if (v24 > 0x7F)
      {
        if (v24 >> 35)
        {
          if (!(v24 >> 49))
          {
            v25 = 6;
            if (!(v24 >> 42))
            {
              goto LABEL_31;
            }

LABEL_30:
            ++v25;
            goto LABEL_31;
          }

          v26 = v24 >> 28;
          v25 = 8;
        }

        else
        {
          if (v24 < 0x200000)
          {
            v25 = 2;
            if (v24 < 0x4000)
            {
              goto LABEL_31;
            }

            goto LABEL_30;
          }

          v25 = 4;
          v26 = v24;
        }

        if (v26 >> 28)
        {
          goto LABEL_30;
        }
      }

      else
      {
        v25 = 1;
      }

LABEL_31:
      v27 = __OFADD__(v25, v24);
      v28 = v25 + v24;
      if (v27)
      {
        goto LABEL_42;
      }

      ++v21;
      v27 = __OFADD__(v20, v28);
      v20 += v28;
      if (v27)
      {
        goto LABEL_43;
      }
    }
  }

  __break(1u);
LABEL_46:
  __break(1u);
  return result;
}

uint64_t sub_2685B593C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_2685B59A8(uint64_t a1, uint64_t a2)
{
  v4 = 0;
  result = (*(a2 + 72))(&v4, &type metadata for BinaryEncodingSizeVisitor, &off_28792CAA8, a1, a2);
  if (!v2)
  {
    return v4;
  }

  return result;
}

uint64_t sub_2685B5A04(uint64_t a1, unint64_t a2, int a3)
{
  v4 = 8 * a3;
  if ((8 * a3) >= 0x80)
  {
    if (v4 >= 0x4000)
    {
      if (v4 >> 21)
      {
        if (v4 >> 28)
        {
          v5 = 5;
          if ((a2 & 0x1000000000000000) != 0)
          {
            goto LABEL_20;
          }
        }

        else
        {
          v5 = 4;
          if ((a2 & 0x1000000000000000) != 0)
          {
            goto LABEL_20;
          }
        }
      }

      else
      {
        v5 = 3;
        if ((a2 & 0x1000000000000000) != 0)
        {
          goto LABEL_20;
        }
      }

LABEL_3:
      if ((a2 & 0x2000000000000000) == 0)
      {
LABEL_4:
        v6 = a1 & 0xFFFFFFFFFFFFLL;
        goto LABEL_9;
      }

      goto LABEL_8;
    }

    v5 = 2;
    if ((a2 & 0x1000000000000000) == 0)
    {
      if ((a2 & 0x2000000000000000) == 0)
      {
        goto LABEL_4;
      }

LABEL_8:
      v6 = HIBYTE(a2) & 0xF;
      goto LABEL_9;
    }
  }

  else
  {
    v5 = 1;
    if ((a2 & 0x1000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

LABEL_20:
  v6 = sub_268689A84();
LABEL_9:
  result = sub_2685B5B0C(v6);
  v8 = v5 + result;
  if (__OFADD__(v5, result))
  {
    __break(1u);
    goto LABEL_22;
  }

  v9 = __OFADD__(v8, v6);
  v10 = v8 + v6;
  if (v9)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v9 = __OFADD__(*v3, v10);
  v11 = *v3 + v10;
  if (!v9)
  {
    *v3 = v11;
    return result;
  }

LABEL_23:
  __break(1u);
  return result;
}

uint64_t sub_2685B5B0C(unint64_t a1)
{
  if (a1 < 0x80)
  {
    return 1;
  }

  if ((a1 & 0x8000000000000000) != 0)
  {
    return 10;
  }

  if (!(a1 >> 35))
  {
    v2 = a1;
    if (!(a1 >> 21))
    {
      result = 2;
      if (v2 < 0x4000)
      {
        return result;
      }

      return ++result;
    }

    result = 4;
LABEL_14:
    if (!(v2 >> 28))
    {
      return result;
    }

    return ++result;
  }

  if (a1 >> 49)
  {
    v2 = a1 >> 28;
    result = 8;
    goto LABEL_14;
  }

  result = 6;
  if (a1 >> 42)
  {
    return ++result;
  }

  return result;
}

uint64_t sub_2685B5B88(uint64_t result)
{
  v2 = 8 * result;
  v3 = 3;
  v4 = 4;
  v5 = 5;
  if ((8 * result) >> 28)
  {
    v5 = 6;
  }

  if (v2 >= 0x200000)
  {
    v4 = v5;
  }

  if ((8 * result) >> 14)
  {
    v3 = v4;
  }

  if (v2 >= 0x80)
  {
    v6 = v3;
  }

  else
  {
    v6 = 2;
  }

  v7 = __OFADD__(*v1, v6);
  v8 = *v1 + v6;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    *v1 = v8;
  }

  return result;
}

unint64_t sub_2685B5BF4(unint64_t result, int a2)
{
  v4 = *(result + 16);
  if (!v4)
  {
    return result;
  }

  v5 = 8 * a2;
  v6 = *v2;
  for (i = (result + 40); ; i += 2)
  {
    v8 = *i;
    if (v5 > 0x7F)
    {
      if (v5 >= 0x4000)
      {
        if (v5 >= 0x200000)
        {
          if (v5 >> 28)
          {
            if ((v8 & 0x1000000000000000) == 0)
            {
              v9 = 5;
              if ((v8 & 0x2000000000000000) != 0)
              {
LABEL_15:
                result = HIBYTE(v8) & 0xF;
LABEL_16:
                v10 = 1;
                goto LABEL_17;
              }

              goto LABEL_6;
            }

            v14 = v3;
            v9 = 5;
          }

          else
          {
            if ((v8 & 0x1000000000000000) == 0)
            {
              v9 = 4;
              if ((v8 & 0x2000000000000000) != 0)
              {
                goto LABEL_15;
              }

              goto LABEL_6;
            }

            v14 = v3;
            v9 = 4;
          }
        }

        else
        {
          if ((v8 & 0x1000000000000000) == 0)
          {
            v9 = 3;
            if ((v8 & 0x2000000000000000) != 0)
            {
              goto LABEL_15;
            }

            goto LABEL_6;
          }

          v14 = v3;
          v9 = 3;
        }
      }

      else
      {
        if ((v8 & 0x1000000000000000) == 0)
        {
          v9 = 2;
          if ((v8 & 0x2000000000000000) != 0)
          {
            goto LABEL_15;
          }

          goto LABEL_6;
        }

        v14 = v3;
        v9 = 2;
      }
    }

    else
    {
      if ((v8 & 0x1000000000000000) == 0)
      {
        v9 = 1;
        if ((v8 & 0x2000000000000000) != 0)
        {
          goto LABEL_15;
        }

LABEL_6:
        result = *(i - 1) & 0xFFFFFFFFFFFFLL;
        if (result < 0x80)
        {
          goto LABEL_16;
        }

        goto LABEL_7;
      }

      v14 = v3;
      v9 = 1;
    }

    result = sub_268689A84();
    v3 = v14;
    if (result < 0x80)
    {
      goto LABEL_16;
    }

LABEL_7:
    if ((result & 0x8000000000000000) != 0)
    {
      v10 = 10;
      goto LABEL_17;
    }

    if (!(result >> 35))
    {
      if (result >= 0x200000)
      {
        v10 = 4;
        if (!(result >> 28))
        {
          goto LABEL_17;
        }
      }

      else
      {
        v10 = 2;
        if (result < 0x4000)
        {
          goto LABEL_17;
        }
      }

LABEL_39:
      ++v10;
      goto LABEL_17;
    }

    if (result >> 49)
    {
      v10 = 8;
      if (!HIBYTE(result))
      {
        goto LABEL_17;
      }

      goto LABEL_39;
    }

    v10 = result >> 42 ? 7 : 6;
LABEL_17:
    v11 = v10 + v9;
    v12 = __OFADD__(v11, result);
    v13 = v11 + result;
    if (v12)
    {
      break;
    }

    v12 = __OFADD__(v6, v13);
    v6 += v13;
    if (v12)
    {
      goto LABEL_50;
    }

    if (!--v4)
    {
      *v2 = v6;
      return result;
    }
  }

  __break(1u);
LABEL_50:
  __break(1u);
  return result;
}

uint64_t sub_2685B5DAC(uint64_t result)
{
  if (result)
  {
    v1 = result;
    if (result <= 14)
    {
      return sub_26863B928(result);
    }

    else
    {
      v2 = sub_2686897B4();
      v3 = *(v2 + 48);
      v4 = *(v2 + 52);
      swift_allocObject();
      sub_268689774();
      if (v1 >= 0x7FFFFFFF)
      {
        sub_268689804();
        result = swift_allocObject();
        *(result + 16) = 0;
        *(result + 24) = v1;
      }

      else
      {
        return v1 << 32;
      }
    }
  }

  return result;
}

uint64_t sub_2685B5E4C(void (*a1)(uint64_t, uint64_t))
{
  result = sub_2686897E4();
  v4 = *v1;
  v5 = v1[1];
  if (v5 < v4)
  {
    __break(1u);
    goto LABEL_9;
  }

  v12 = a1;
  v6 = *(v1 + 1);

  result = sub_268689764();
  if (!result)
  {
LABEL_10:
    __break(1u);
    return result;
  }

  v7 = result;
  result = sub_268689794();
  v8 = v4 - result;
  if (__OFSUB__(v4, result))
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v9 = v5 - v4;
  v10 = sub_268689784();
  if (v10 >= v9)
  {
    v11 = v9;
  }

  else
  {
    v11 = v10;
  }

  v12(v7 + v8, v7 + v8 + v11);
}

uint64_t sub_2685B5F28(uint64_t result, uint64_t a2)
{
  if (result)
  {
    if (a2 - result >= 1)
    {
      v8[1] = v3;
      v8[2] = v4;
      v5 = v2[3];
      v6 = v2[4];
      v7 = v2[2];
      v8[0] = result;
      return (*(v5 + 72))(v8, &type metadata for BinaryEncodingVisitor, &off_28792D5D8, v7);
    }
  }

  return result;
}

uint64_t Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v21 = a3;
  v22 = a6;
  v20 = a2;
  v10 = *(a4 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](a1, a2);
  v12 = v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_268689B74();
  if (result)
  {
    v17[0] = v11;
    v14 = 0;
    v18 = a5;
    v19 = (v10 + 16);
    v17[1] = a5 + 136;
    while (1)
    {
      v15 = sub_268689B64();
      sub_268689B24();
      if (v15)
      {
        result = (*(v10 + 16))(v12, a1 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(v10 + 72) * v14, a4);
        v16 = v14 + 1;
        if (__OFADD__(v14, 1))
        {
          goto LABEL_11;
        }
      }

      else
      {
        result = sub_268689D14();
        if (v17[0] != 8)
        {
          __break(1u);
          return result;
        }

        v23 = result;
        (*v19)(v12, &v23, a4);
        result = swift_unknownObjectRelease();
        v16 = v14 + 1;
        if (__OFADD__(v14, 1))
        {
LABEL_11:
          __break(1u);
          return result;
        }
      }

      (*(v18 + 136))(v12, v20, a4, v22, v21);
      result = (*(v10 + 8))(v12, a4);
      if (!v6)
      {
        result = sub_268689B74();
        ++v14;
        if (v16 != result)
        {
          continue;
        }
      }

      return result;
    }
  }

  return result;
}

uint64_t sub_2685B61CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_2685B628C(a2, 2u);
  result = sub_2685B59A8(a3, a4);
  if (!v5)
  {
    sub_2685B62D0(result);
    return (*(a4 + 72))(v4, &type metadata for BinaryEncodingVisitor, &off_28792D5D8, a3, a4);
  }

  return result;
}

uint64_t sub_2685B628C(uint64_t result, unsigned __int8 a2)
{
  v3 = (8 * (result & 0x1FFFFFFF)) | a2;
  v4 = *v2;
  if (v3 < 0x80)
  {
    LOBYTE(v5) = (8 * result) | a2;
  }

  else
  {
    do
    {
      *v4++ = v3 | 0x80;
      v5 = v3 >> 7;
      v6 = v3 >> 14;
      v3 >>= 7;
    }

    while (v6);
  }

  *v4 = v5;
  *v2 = v4 + 1;
  return result;
}

unint64_t sub_2685B62D4(unint64_t result)
{
  v2 = *v1;
  if (result < 0x80)
  {
    LOBYTE(v3) = result;
  }

  else
  {
    do
    {
      *v2++ = result | 0x80;
      v3 = result >> 7;
      v4 = result >> 14;
      result >>= 7;
    }

    while (v4);
  }

  *v2 = v3;
  *v1 = v2 + 1;
  return result;
}

unint64_t sub_2685B6398(unint64_t result, unint64_t a2)
{
  v4 = result;
  v5 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_37;
  }

  if ((a2 & 0x2000000000000000) == 0)
  {
    result &= 0xFFFFFFFFFFFFuLL;
    goto LABEL_4;
  }

  v6 = *v2;
  v7 = HIBYTE(a2) & 0xF;
LABEL_9:
  *v6 = v7;
  *v2 = v6 + 1;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v9 = v5;
  }

  else
  {
    v9 = v4 & 0xFFFFFFFFFFFFLL;
  }

  if (v9)
  {
    v10 = (v4 >> 59) & 1;
    if ((a2 & 0x1000000000000000) == 0)
    {
      LOBYTE(v10) = 1;
    }

    v11 = 4 << v10;
    v5 = 15;
    do
    {
      v13 = v5 & 0xC;
      result = v5;
      if (v13 == v11)
      {
        result = sub_26866A0F8(v5, v4, a2);
      }

      v14 = result >> 16;
      if (result >> 16 >= v9)
      {
        __break(1u);
LABEL_36:
        __break(1u);
LABEL_37:
        result = sub_268689A84();
LABEL_4:
        v6 = *v2;
        if (result < 0x80)
        {
          LOBYTE(v7) = result;
        }

        else
        {
          do
          {
            *v6++ = result | 0x80;
            v7 = result >> 7;
            v8 = result >> 14;
            result >>= 7;
          }

          while (v8);
        }

        goto LABEL_9;
      }

      if ((a2 & 0x1000000000000000) != 0)
      {
        result = sub_268689AB4();
        v15 = result;
        if (v13 != v11)
        {
          goto LABEL_28;
        }
      }

      else if ((a2 & 0x2000000000000000) != 0)
      {
        v16[0] = v4;
        v16[1] = a2 & 0xFFFFFFFFFFFFFFLL;
        v15 = *(v16 + v14);
        if (v13 != v11)
        {
          goto LABEL_28;
        }
      }

      else
      {
        result = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
        if ((v4 & 0x1000000000000000) == 0)
        {
          result = sub_268689D24();
        }

        v15 = *(result + v14);
        if (v13 != v11)
        {
LABEL_28:
          if ((a2 & 0x1000000000000000) == 0)
          {
            goto LABEL_16;
          }

          goto LABEL_29;
        }
      }

      result = sub_26866A0F8(v5, v4, a2);
      v5 = result;
      if ((a2 & 0x1000000000000000) == 0)
      {
LABEL_16:
        v5 = (v5 & 0xFFFFFFFFFFFF0000) + 65540;
        goto LABEL_17;
      }

LABEL_29:
      if (v9 <= v5 >> 16)
      {
        goto LABEL_36;
      }

      result = sub_268689A94();
      v5 = result;
LABEL_17:
      v12 = *v2;
      *v12 = v15;
      *v2 = v12 + 1;
    }

    while (4 * v9 != v5 >> 14);
  }

  return result;
}

unint64_t sub_2685B6580(unint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2)
  {
    v4 = (result + 40);
    do
    {
      v5 = *(v4 - 1);
      v6 = *v4;
      sub_2685B628C(a2, 2u);
      result = sub_2685B6398(v5, v6);
      v4 += 2;
      --v2;
    }

    while (v2);
  }

  return result;
}

uint64_t sub_2685B66C8@<X0>(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = v1[1];
  *a1 = *v1;
  a1[1] = v3;
  return sub_2685BA80C(v2, v3);
}

uint64_t sub_2685B66D4(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  result = sub_2685B593C(*v1, *(v1 + 8));
  *v1 = v2;
  *(v1 + 8) = v3;
  return result;
}

uint64_t sub_2685B67E0@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 16);
  swift_beginAccess();
  *a2 = *(v3 + 48);
}

uint64_t sub_2685B6838@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 16);
  result = swift_beginAccess();
  v5 = *(v3 + 96);
  *a2 = *(v3 + 88);
  *(a2 + 8) = v5;
  return result;
}

uint64_t sub_2685B6960@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 16);
  result = swift_beginAccess();
  v5 = *(v3 + 88);
  *a2 = *(v3 + 80);
  *(a2 + 8) = v5;
  return result;
}

uint64_t getEnumTagSinglePayload for Google_Protobuf_NullValue(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 9))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for Google_Protobuf_NullValue(uint64_t result, int a2, int a3)
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

uint64_t sub_2685B6A10(uint64_t a1)
{
  if (*(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2685B6A2C(uint64_t result, int a2)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 1;
  }

  else
  {
    *(result + 8) = 0;
  }

  return result;
}

uint64_t sub_2685B6A7C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 16);
  swift_beginAccess();
  v4 = *(v3 + 24);
  *a2 = *(v3 + 16);
  a2[1] = v4;
}

uint64_t sub_2685B6ACC@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 16);
  swift_beginAccess();
  *a2 = *(v3 + 32);
}

uint64_t sub_2685B6B1C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 16);
  swift_beginAccess();
  *a2 = *(v3 + 40);
}

uint64_t sub_2685B6B6C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 16);
  swift_beginAccess();
  v4 = *(v3 + 56);
  *a2 = *(v3 + 48);
  a2[1] = v4;
}

uint64_t sub_2685B6BC4@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 16);
  swift_beginAccess();
  *a2 = *(v3 + 96);
}

uint64_t sub_2685B6C14@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 16);
  result = swift_beginAccess();
  v5 = *(v3 + 112);
  *a2 = *(v3 + 104);
  *(a2 + 8) = v5;
  return result;
}

double sub_2685B6DB0@<D0>(uint64_t a1@<X8>)
{
  result = 0.0;
  *a1 = xmmword_26868A5E0;
  *(a1 + 16) = 0;
  *(a1 + 20) = 1;
  *(a1 + 24) = 0;
  *(a1 + 28) = 1;
  return result;
}

double sub_2685B6EE0@<D0>(uint64_t a1@<X8>)
{
  *a1 = MEMORY[0x277D84F90];
  result = 0.0;
  *(a1 + 8) = xmmword_26868A5E0;
  *(a1 + 24) = MEMORY[0x277D84F98];
  return result;
}

double sub_2685B6F4C@<D0>(uint64_t a1@<X8>)
{
  *a1 = MEMORY[0x277D84F90];
  result = 0.0;
  *(a1 + 8) = xmmword_26868A5E0;
  *(a1 + 24) = MEMORY[0x277D84F98];
  *(a1 + 32) = 2;
  return result;
}

double sub_2685B6F80@<D0>(uint64_t a1@<X8>)
{
  *a1 = MEMORY[0x277D84F90];
  result = 0.0;
  *(a1 + 8) = xmmword_26868A5E0;
  return result;
}

uint64_t sub_2685B71A0@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 16);
  swift_beginAccess();
  *a2 = *(v3 + 96);
}

uint64_t sub_2685B7294@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 16);
  swift_beginAccess();
  *a2 = *(v3 + 40);
}

double sub_2685B7404@<D0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *a1;
  v6 = *(a1 + 2);
  Google_Protobuf_DescriptorProto.options.getter(v7);
  result = *v7;
  v4 = v7[1];
  *a2 = v7[0];
  *(a2 + 16) = v4;
  *(a2 + 32) = v8;
  return result;
}

uint64_t sub_2685B7460@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 16);
  swift_beginAccess();
  *a2 = *(v3 + 120);
}

uint64_t sub_2685B74B0@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 16);
  swift_beginAccess();
  *a2 = *(v3 + 128);
}

uint64_t sub_2685B7500@<X0>(uint64_t a1@<X0>, _DWORD *a2@<X8>)
{
  v3 = *(a1 + 16);
  result = swift_beginAccess();
  v5 = *(v3 + 16);
  if (*(v3 + 20))
  {
    v5 = 0;
  }

  *a2 = v5;
  return result;
}

uint64_t sub_2685B7558@<X0>(uint64_t a1@<X0>, _DWORD *a2@<X8>)
{
  v3 = *(a1 + 16);
  result = swift_beginAccess();
  v5 = *(v3 + 24);
  if (*(v3 + 28))
  {
    v5 = 0;
  }

  *a2 = v5;
  return result;
}

uint64_t sub_2685B7608@<X0>(uint64_t result@<X0>, _DWORD *a2@<X8>)
{
  v2 = *(result + 16);
  if (*(result + 20))
  {
    v2 = 0;
  }

  *a2 = v2;
  return result;
}

_DWORD *sub_2685B7620(_DWORD *result, uint64_t a2)
{
  *(a2 + 16) = *result;
  *(a2 + 20) = 0;
  return result;
}

uint64_t sub_2685B7630@<X0>(uint64_t result@<X0>, _DWORD *a2@<X8>)
{
  v2 = *(result + 24);
  if (*(result + 28))
  {
    v2 = 0;
  }

  *a2 = v2;
  return result;
}

_DWORD *sub_2685B7648(_DWORD *result, uint64_t a2)
{
  *(a2 + 24) = *result;
  *(a2 + 28) = 0;
  return result;
}

uint64_t sub_2685B76E4@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *(a1 + 16);
  result = swift_beginAccess();
  v5 = *(v3 + 37);
  if (v5 == 3)
  {
    LOBYTE(v5) = 0;
  }

  *a2 = v5;
  return result;
}

uint64_t sub_2685B7738@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *(a1 + 16);
  result = swift_beginAccess();
  v5 = *(v3 + 38);
  if (v5 == 18)
  {
    LOBYTE(v5) = 0;
  }

  *a2 = v5;
  return result;
}

uint64_t sub_2685B77A4@<X0>(uint64_t a1@<X0>, _DWORD *a2@<X8>)
{
  v3 = *(a1 + 16);
  result = swift_beginAccess();
  v5 = *(v3 + 88);
  if (*(v3 + 92))
  {
    v5 = 0;
  }

  *a2 = v5;
  return result;
}

double sub_2685B7804@<D0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *a1;
  v6 = *(a1 + 2);
  Google_Protobuf_FieldDescriptorProto.options.getter(&v7);
  result = *&v7;
  v4 = *v8;
  *a2 = v7;
  *(a2 + 16) = v4;
  *(a2 + 30) = *&v8[14];
  return result;
}

uint64_t sub_2685B7BDC@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *(a1 + 16);
  result = swift_beginAccess();
  *a2 = *(v3 + 98) & 1;
  return result;
}

uint64_t sub_2685B7C2C@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *(a1 + 16);
  result = swift_beginAccess();
  *a2 = *(v3 + 99) & 1;
  return result;
}

uint64_t sub_2685B7C8C@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *(a1 + 24);
  result = swift_beginAccess();
  *a2 = *(v3 + 48) & 1;
  return result;
}

uint64_t sub_2685B7CDC@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *(a1 + 24);
  result = swift_beginAccess();
  *a2 = *(v3 + 49) & 1;
  return result;
}

uint64_t sub_2685B7D2C@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *(a1 + 24);
  result = swift_beginAccess();
  *a2 = *(v3 + 50) & 1;
  return result;
}

uint64_t sub_2685B7D7C@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *(a1 + 24);
  result = swift_beginAccess();
  v5 = *(v3 + 51);
  if (v5 == 3)
  {
    LOBYTE(v5) = 0;
  }

  *a2 = v5;
  return result;
}

uint64_t sub_2685B7DD8@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *(a1 + 24);
  result = swift_beginAccess();
  *a2 = *(v3 + 72) & 1;
  return result;
}

uint64_t sub_2685B7E28@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *(a1 + 24);
  result = swift_beginAccess();
  *a2 = *(v3 + 73) & 1;
  return result;
}

uint64_t sub_2685B7E78@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *(a1 + 24);
  result = swift_beginAccess();
  *a2 = *(v3 + 74) & 1;
  return result;
}

uint64_t sub_2685B7EC8@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *(a1 + 24);
  result = swift_beginAccess();
  *a2 = *(v3 + 75) & 1;
  return result;
}

uint64_t sub_2685B7F18@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *(a1 + 24);
  result = swift_beginAccess();
  *a2 = *(v3 + 76) & 1;
  return result;
}

uint64_t sub_2685B7F68@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *(a1 + 24);
  result = swift_beginAccess();
  *a2 = *(v3 + 77) & 1;
  return result;
}

uint64_t sub_2685B7FF0@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 24);
  swift_beginAccess();
  *a2 = *(v3 + 192);
}

uint64_t sub_2685B80B0@<X0>(uint64_t result@<X0>, _BYTE *a2@<X8>)
{
  v2 = *(result + 32);
  if (v2 == 3)
  {
    LOBYTE(v2) = 0;
  }

  *a2 = v2;
  return result;
}

uint64_t sub_2685B80EC@<X0>(uint64_t result@<X0>, _BYTE *a2@<X8>)
{
  v2 = *(result + 34);
  if (v2 == 3)
  {
    LOBYTE(v2) = 0;
  }

  *a2 = v2;
  return result;
}

uint64_t sub_2685B81B4@<X0>(uint64_t result@<X0>, _BYTE *a2@<X8>)
{
  v2 = *(result + 33);
  if (v2 == 3)
  {
    LOBYTE(v2) = 0;
  }

  *a2 = v2;
  return result;
}

uint64_t sub_2685B81D4@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 32);
  if (v3)
  {
    *a2 = *(a1 + 24);
    a2[1] = v3;
  }

  else
  {
    *a2 = 0;
    a2[1] = 0xE000000000000000;
  }
}

uint64_t sub_2685B8200(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = *(a2 + 32);

  *(a2 + 24) = v4;
  *(a2 + 32) = v3;
  return result;
}

uint64_t sub_2685B8244@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  v2 = *(result + 40);
  if (*(result + 48))
  {
    v2 = 0;
  }

  *a2 = v2;
  return result;
}

void *sub_2685B825C(void *result, uint64_t a2)
{
  *(a2 + 40) = *result;
  *(a2 + 48) = 0;
  return result;
}

uint64_t sub_2685B826C@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  v2 = *(result + 56);
  if (*(result + 64))
  {
    v2 = 0;
  }

  *a2 = v2;
  return result;
}

void *sub_2685B8284(void *result, uint64_t a2)
{
  *(a2 + 56) = *result;
  *(a2 + 64) = 0;
  return result;
}

uint64_t sub_2685B8294@<X0>(uint64_t result@<X0>, double *a2@<X8>)
{
  v2 = *(result + 72);
  if (*(result + 80))
  {
    v2 = 0.0;
  }

  *a2 = v2;
  return result;
}

void *sub_2685B82B0(void *result, uint64_t a2)
{
  *(a2 + 72) = *result;
  *(a2 + 80) = 0;
  return result;
}

uint64_t sub_2685B82C0@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 88);
  v2 = *(a1 + 96);
  if (v2 >> 60 == 15)
  {
    v4 = 0;
  }

  else
  {
    v4 = *(a1 + 88);
  }

  v5 = 0xC000000000000000;
  if (v2 >> 60 != 15)
  {
    v5 = *(a1 + 96);
  }

  *a2 = v4;
  a2[1] = v5;
  return sub_268614834(v3, v2);
}

uint64_t sub_2685B82E4(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = *(a2 + 88);
  v6 = *(a2 + 96);
  sub_2685BA80C(*a1, v4);
  result = sub_2685B98FC(v5, v6);
  *(a2 + 88) = v3;
  *(a2 + 96) = v4;
  return result;
}

uint64_t sub_2685B8338@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 112);
  if (v3)
  {
    *a2 = *(a1 + 104);
    a2[1] = v3;
  }

  else
  {
    *a2 = 0;
    a2[1] = 0xE000000000000000;
  }
}

uint64_t sub_2685B8364(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = *(a2 + 112);

  *(a2 + 104) = v4;
  *(a2 + 112) = v3;
  return result;
}

uint64_t sub_2685B83A8@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 24);
  if (v3)
  {
    *a2 = *(a1 + 16);
    a2[1] = v3;
  }

  else
  {
    *a2 = 0;
    a2[1] = 0xE000000000000000;
  }
}

uint64_t sub_2685B83D4(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = *(a2 + 24);

  *(a2 + 16) = v4;
  *(a2 + 24) = v3;
  return result;
}

uint64_t sub_2685B8418@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 48);
  if (v3)
  {
    *a2 = *(a1 + 40);
    a2[1] = v3;
  }

  else
  {
    *a2 = 0;
    a2[1] = 0xE000000000000000;
  }
}

uint64_t sub_2685B8444(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = *(a2 + 48);

  *(a2 + 40) = v4;
  *(a2 + 48) = v3;
  return result;
}

uint64_t sub_2685B8488@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 64);
  if (v3)
  {
    *a2 = *(a1 + 56);
    a2[1] = v3;
  }

  else
  {
    *a2 = 0;
    a2[1] = 0xE000000000000000;
  }
}

uint64_t sub_2685B84B4(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = *(a2 + 64);

  *(a2 + 56) = v4;
  *(a2 + 64) = v3;
  return result;
}

uint64_t sub_2685B84F8@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 32);
  if (v3)
  {
    *a2 = *(a1 + 24);
    a2[1] = v3;
  }

  else
  {
    *a2 = 0;
    a2[1] = 0xE000000000000000;
  }
}

uint64_t sub_2685B8524(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = *(a2 + 32);

  *(a2 + 24) = v4;
  *(a2 + 32) = v3;
  return result;
}

uint64_t sub_2685B8568@<X0>(uint64_t result@<X0>, _DWORD *a2@<X8>)
{
  v2 = *(result + 40);
  if (*(result + 44))
  {
    v2 = 0;
  }

  *a2 = v2;
  return result;
}

_DWORD *sub_2685B8580(_DWORD *result, uint64_t a2)
{
  *(a2 + 40) = *result;
  *(a2 + 44) = 0;
  return result;
}

uint64_t sub_2685B8590@<X0>(uint64_t result@<X0>, _DWORD *a2@<X8>)
{
  v2 = *(result + 48);
  if (*(result + 52))
  {
    v2 = 0;
  }

  *a2 = v2;
  return result;
}

_DWORD *sub_2685B85A8(_DWORD *result, uint64_t a2)
{
  *(a2 + 48) = *result;
  *(a2 + 52) = 0;
  return result;
}

uint64_t sub_2685B85E8()
{
  sub_2685B593C(v0[2], v0[3]);
  v1 = v0[5];

  return MEMORY[0x2821FE8E8](v0, 49, 7);
}

uint64_t sub_2685B8628()
{
  v1 = v0[2];

  sub_2685B593C(v0[3], v0[4]);
  v2 = v0[6];

  v3 = v0[14];
  if (v3 >> 60 != 15)
  {
    sub_2685B593C(v0[13], v3);
  }

  v4 = v0[16];

  return MEMORY[0x2821FE8E8](v0, 136, 7);
}

void sub_2685B8704(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
}

void sub_2685B8710(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  a1[3] = 0xF000000000000000;
}

void sub_2685B8720(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0xF000000000000000;
}

uint64_t sub_2685B8738@<X0>(uint64_t *a1@<X8>)
{
  *a1 = sub_2685B9910();
}

uint64_t sub_2685B8880()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_2685B88D8()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_2685B89A0(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a3 >> 60 != 15)
  {
    return sub_2685B593C(a2, a3);
  }

  return result;
}

uint64_t sub_2685B89BC(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a3 >> 60 != 15)
  {
    return sub_2685BA80C(a2, a3);
  }

  return result;
}

uint64_t sub_2685B89D8(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4 >> 60 != 15)
  {
    return sub_2685B593C(a3, a4);
  }

  return result;
}

uint64_t sub_2685B89F4(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4 >> 60 != 15)
  {
    return sub_2685BA80C(a3, a4);
  }

  return result;
}

uint64_t sub_2685B8ADC(int a1, uint64_t a2)
{
  v7 = *MEMORY[0x277D85DE8];
  result = sub_2685B628C(a2, 5u);
  v5 = *v2;
  *v5 = a1;
  *v2 = v5 + 1;
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_2685B8B50(uint64_t a1, uint64_t a2)
{
  v7 = *MEMORY[0x277D85DE8];
  result = sub_2685B628C(a2, 1u);
  v5 = *v2;
  *v5 = a1;
  *v2 = v5 + 1;
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_2685B8DA4(int a1, uint64_t a2)
{
  v2 = a1;
  MEMORY[0x26D61D8F0](a2);
  return MEMORY[0x26D61D920](v2);
}

uint64_t sub_2685B8DDC(unsigned int a1, uint64_t a2)
{
  v2 = a1;
  MEMORY[0x26D61D8F0](a2);
  return MEMORY[0x26D61D920](v2);
}

uint64_t sub_2685B8F44@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 16);
  swift_beginAccess();
  v4 = *(v3 + 24);
  *a2 = *(v3 + 16);
  a2[1] = v4;
}

uint64_t sub_2685B8F94@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *(a1 + 16);
  result = sub_26866CF00();
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_2685B8FFC()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_2685B9034()
{
  v1 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_2685B9088()
{
  v1 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_2685B933C()
{
  v1 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

void sub_2685B93AC(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 16);
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  v5 = *(v2 + 32);
  *a2 = v3;
  *(a2 + 8) = v4;
  *(a2 + 16) = v5;
  v6 = *(v2 + 40);
  *(a2 + 24) = v6;
  sub_2685D10A0(v3, v4, v5, v6);
}

void sub_2685B93D4(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = *a1;
  v3 = v1;
  Google_Protobuf_Value.nullValue.setter(&v2);
}

void sub_2685B9444(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  Google_Protobuf_Value.stringValue.setter(v1, v2);
}

uint64_t sub_2685B9514()
{
  sub_2685B593C(*(v0 + 16), *(v0 + 24));
  sub_2685B593C(*(v0 + 32), *(v0 + 40));

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_2685B9558()
{
  v1 = v0[2];

  sub_2685B593C(v0[3], v0[4]);
  v2 = v0[6];

  return MEMORY[0x2821FE8E8](v0, 69, 7);
}

uint64_t sub_2685B95A0()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  sub_2685B593C(v0[5], v0[6]);
  v4 = v0[8];

  v5 = v0[10];

  return MEMORY[0x2821FE8E8](v0, 88, 7);
}

uint64_t sub_2685B9600()
{
  sub_2685B593C(v0[2], v0[3]);
  v1 = v0[5];

  return MEMORY[0x2821FE8E8](v0, 49, 7);
}

uint64_t sub_2685B9640()
{
  v1 = v0[2];

  sub_2685B593C(v0[3], v0[4]);
  v2 = v0[6];

  v3 = v0[14];
  if (v3 >> 60 != 15)
  {
    sub_2685B593C(v0[13], v3);
  }

  v4 = v0[16];

  return MEMORY[0x2821FE8E8](v0, 136, 7);
}

uint64_t sub_2685B96C8()
{
  sub_2685B593C(v0[2], v0[3]);
  v1 = v0[4];

  v2 = v0[5];

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_2685B9720()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[8];

  v4 = v0[10];

  sub_2685B593C(v0[13], v0[14]);

  return MEMORY[0x2821FE8E8](v0, 120, 7);
}

uint64_t sub_2685B9778()
{
  v1 = v0[7];

  v2 = v0[9];

  v3 = v0[11];

  v4 = v0[13];

  v5 = v0[15];

  sub_2685B593C(v0[16], v0[17]);

  return MEMORY[0x2821FE8E8](v0, 144, 7);
}

double sub_2685B97F4@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = *a1;
  result = 0.0;
  *(a2 + 8) = xmmword_26868A5E0;
  return result;
}

double sub_2685B980C@<D0>(_DWORD *a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = *a1;
  result = 0.0;
  *(a2 + 8) = xmmword_26868A5E0;
  return result;
}

double sub_2685B9824@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];

  *a2 = v3;
  *(a2 + 8) = v4;
  result = 0.0;
  *(a2 + 16) = xmmword_26868A5E0;
  return result;
}

uint64_t sub_2685B98C4(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(v1 + 24);

  *(v1 + 24) = v2;
  return result;
}

uint64_t sub_2685B98F0@<X0>(uint64_t *a1@<X8>)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  *a1 = v2;
  a1[1] = v3;
  return sub_2685BA80C(v2, v3);
}

uint64_t sub_2685B98FC(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_2685B593C(a1, a2);
  }

  return a1;
}

uint64_t sub_2685B9918@<X0>(uint64_t *a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  *a1 = v2;
  a1[1] = v3;
  return sub_2685BA80C(v2, v3);
}

void sub_2685B9934(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0xC000000000000000;
}

double sub_2685B9944@<D0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  result = 0.0;
  *(a1 + 8) = xmmword_26868A5E0;
  return result;
}

uint64_t BinaryEncodingError.hashValue.getter()
{
  v1 = *v0;
  sub_268689E94();
  MEMORY[0x26D61D8F0](v1);
  return sub_268689EF4();
}

uint64_t sub_2685B9AEC()
{
  v1 = *v0;
  sub_268689E94();
  MEMORY[0x26D61D8F0](v1);
  return sub_268689EF4();
}

uint64_t sub_2685B9B34()
{
  v1 = *v0;
  sub_268689E94();
  MEMORY[0x26D61D8F0](v1);
  return sub_268689EF4();
}

unint64_t sub_2685B9B7C()
{
  result = qword_28028C050;
  if (!qword_28028C050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28028C050);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for BinaryEncodingError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for BinaryEncodingError(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

__n128 __swift_memcpy72_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_2685B9D74(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 72))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2685B9D94(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
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

  *(result + 72) = v3;
  return result;
}

uint64_t sub_2685B9DE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  MEMORY[0x26D61D8F0](a2);
  v5 = *(a4 + 8);
  return sub_268689924();
}

uint64_t sub_2685B9E88(uint64_t a1, uint64_t a2)
{
  MEMORY[0x26D61D8F0](a2);
  v3 = *(a1 + 16);
  result = MEMORY[0x26D61D8F0](v3);
  if (v3)
  {
    v5 = (a1 + 40);
    do
    {
      v6 = *(v5 - 1);
      v7 = *v5;
      sub_2685BA80C(v6, *v5);
      sub_268689844();
      result = sub_2685B593C(v6, v7);
      v5 += 2;
      --v3;
    }

    while (v3);
  }

  return result;
}

uint64_t sub_2685B9F14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  MEMORY[0x26D61D8F0](a2);
  v5 = *(a4 + 8);
  return sub_268689BB4();
}

uint64_t sub_2685B9F68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v20 = a4;
  v7 = *(a3 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](a1, a2);
  v16 = v9;
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = v4;
  MEMORY[0x26D61D8F0](v11);
  result = sub_268689B74();
  if (result)
  {
    v13 = 0;
    v17 = *(v20 + 80);
    v18 = (v7 + 16);
    do
    {
      v14 = sub_268689B64();
      sub_268689B24();
      if (v14)
      {
        result = (*(v7 + 16))(v10, a1 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v13, a3);
        v15 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
          goto LABEL_10;
        }
      }

      else
      {
        result = sub_268689D14();
        if (v16 != 8)
        {
          __break(1u);
          return result;
        }

        v21 = result;
        (*v18)(v10, &v21, a3);
        result = swift_unknownObjectRelease();
        v15 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
LABEL_10:
          __break(1u);
          return result;
        }
      }

      v17(v19, a3, v20);
      (*(v7 + 8))(v10, a3);
      result = sub_268689B74();
      ++v13;
    }

    while (v15 != result);
  }

  return result;
}

uint64_t sub_2685BA174(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  MEMORY[0x26D61D8F0](a2);
  v8 = *(a5 + 8);
  swift_getAssociatedTypeWitness();
  v9 = *(a6 + 8);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedConformanceWitness();
  return sub_268689904();
}

uint64_t sub_2685BA278(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  MEMORY[0x26D61D8F0](a2);
  v8 = *(a5 + 8);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v9 = *(a6 + 8);
  return sub_268689904();
}

uint64_t sub_2685BA334(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  MEMORY[0x26D61D8F0](a2);
  v6 = *(a5 + 8);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  return sub_268689904();
}

uint64_t sub_2685BA3F0(double a1)
{
  MEMORY[0x26D61D8F0]();
  v2 = 0.0;
  if (a1 != 0.0)
  {
    v2 = a1;
  }

  return MEMORY[0x26D61D920](*&v2);
}

uint64_t sub_2685BA5D0(uint64_t a1, uint64_t a2)
{
  MEMORY[0x26D61D8F0](a2);
  v3 = *(a1 + 16);
  result = MEMORY[0x26D61D8F0](v3);
  if (v3)
  {
    v5 = (a1 + 32);
    do
    {
      v6 = *v5++;
      result = sub_268689EC4();
      --v3;
    }

    while (v3);
  }

  return result;
}

uint64_t sub_2685BA62C(uint64_t a1, uint64_t a2)
{
  MEMORY[0x26D61D8F0](a2);
  v3 = *(a1 + 16);
  result = MEMORY[0x26D61D8F0](v3);
  if (v3)
  {
    v5 = (a1 + 32);
    do
    {
      v6 = *v5++;
      result = MEMORY[0x26D61D920](v6);
      --v3;
    }

    while (v3);
  }

  return result;
}

uint64_t sub_2685BA688(uint64_t a1, uint64_t a2)
{
  MEMORY[0x26D61D8F0](a2);
  v3 = *(a1 + 16);
  result = MEMORY[0x26D61D8F0](v3);
  if (v3)
  {
    v5 = (a1 + 32);
    do
    {
      v6 = *v5++;
      result = sub_268689EB4();
      --v3;
    }

    while (v3);
  }

  return result;
}

uint64_t sub_2685BA6E4(uint64_t a1, uint64_t a2)
{
  MEMORY[0x26D61D8F0](a2);
  v3 = *(a1 + 16);
  result = MEMORY[0x26D61D8F0](v3);
  if (v3)
  {
    v5 = (a1 + 40);
    do
    {
      v6 = *(v5 - 1);
      v7 = *v5;

      sub_268689A24();

      v5 += 2;
      --v3;
    }

    while (v3);
  }

  return result;
}

uint64_t sub_2685BA80C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

unint64_t sub_2685BA8C0(int a1)
{
  if ((a1 - 58) >= 0xFFFFFFF6)
  {
    v1 = 0;
    v2 = (a1 - 48);
    return v2 | (v1 << 32);
  }

  v1 = 0;
  v2 = 10;
  if (a1 <= 96)
  {
    if (a1 <= 67)
    {
      if (a1 != 65)
      {
        if (a1 != 66)
        {
          if (a1 != 67)
          {
            goto LABEL_17;
          }

          goto LABEL_13;
        }

        goto LABEL_23;
      }

      return v2 | (v1 << 32);
    }

    if (a1 != 68)
    {
      if (a1 != 69)
      {
        if (a1 != 70)
        {
LABEL_17:
          v2 = 0;
          v1 = 1;
          return v2 | (v1 << 32);
        }

LABEL_21:
        v1 = 0;
        v2 = 15;
        return v2 | (v1 << 32);
      }

      goto LABEL_24;
    }

    goto LABEL_22;
  }

  if (a1 > 99)
  {
    if (a1 != 100)
    {
      if (a1 != 101)
      {
        if (a1 != 102)
        {
          goto LABEL_17;
        }

        goto LABEL_21;
      }

LABEL_24:
      v1 = 0;
      v2 = 14;
      return v2 | (v1 << 32);
    }

LABEL_22:
    v1 = 0;
    v2 = 13;
    return v2 | (v1 << 32);
  }

  if (a1 != 97)
  {
    if (a1 != 98)
    {
LABEL_13:
      v1 = 0;
      v2 = 12;
      return v2 | (v1 << 32);
    }

LABEL_23:
    v1 = 0;
    v2 = 11;
  }

  return v2 | (v1 << 32);
}

uint64_t sub_2685BA9B8(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = *a3;
  if (*(result + *a3) != 34)
  {
    goto LABEL_4;
  }

  v6 = v5 + 1;
  *a3 = v5 + 1;
  if (v5 + 1 == a4)
  {
LABEL_3:
    *a3 = a4;
LABEL_4:
    sub_2685BD910();
    swift_allocError();
    *v7 = xmmword_26868A570;
    return swift_willThrow();
  }

  v8 = 0;
  v9 = 0;
  v10 = 0;
  v11 = v6;
  while (1)
  {
    v12 = *(result + v11);
    if (v12 <= 0x2E)
    {
      break;
    }

    if (v12 == 47)
    {
      goto LABEL_17;
    }

    if (v12 == 92)
    {
      if (++v11 == a4)
      {
        goto LABEL_3;
      }

      v12 = *(result + v11);
      if (v12 != 47)
      {
        *a3 = v11;
        goto LABEL_4;
      }

LABEL_17:
      v8 = 1;
      goto LABEL_18;
    }

    if (v12 != 95)
    {
      goto LABEL_18;
    }

LABEL_14:
    v9 = 1;
LABEL_18:
    if ((qword_287927B40[v12 + 4] & 0x8000000000000000) == 0 && __OFADD__(v10++, 1))
    {
      __break(1u);
LABEL_29:
      __break(1u);
      return result;
    }

    if (++v11 == a4)
    {
      goto LABEL_3;
    }
  }

  if (v12 == 43)
  {
    goto LABEL_17;
  }

  if (v12 == 45)
  {
    goto LABEL_14;
  }

  if (v12 != 34)
  {
    goto LABEL_18;
  }

  *a3 = v11;
  if (v8 & v9)
  {
    goto LABEL_4;
  }

  v14 = (v10 * 3) >> 64;
  v15 = 3 * v10;
  if (v14 != v15 >> 63)
  {
    goto LABEL_29;
  }

  v16 = result;
  v20 = sub_2685B5DAC(v15 / 4);
  v21 = v19;
  *a3 = v6;
  sub_2685BECEC(&v20, v16, a2, a3);
  if (v4)
  {
    return sub_2685B593C(v20, v21);
  }

  ++*a3;
  return v20;
}

_BYTE *sub_2685BAB8C(_BYTE *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  if (!result || a2 - result < 1)
  {
    return result;
  }

  v5 = 0;
  v6 = 0;
  for (i = *a5; ; *a5 = i)
  {
    v8 = *(a3 + i);
    v9 = qword_287927B40[*(a3 + i) + 4];
    if ((v9 & 0x8000000000000000) == 0)
    {
      goto LABEL_6;
    }

    ++i;
    while (v8 == 32)
    {
      *a5 = i;
      v8 = *(a3 + i);
      v9 = qword_287927B40[*(a3 + i++) + 4];
      if ((v9 & 0x8000000000000000) == 0)
      {
        --i;
        goto LABEL_6;
      }
    }

    if (v8 == 34)
    {
LABEL_25:
      switch(v6)
      {
        case 0:
          return result;
        case 3:
          *result = v5 >> 10;
          result[1] = v5 >> 2;
          return result;
        case 2:
          *result = v5 >> 4;
          return result;
      }

      goto LABEL_38;
    }

    if (v8 != 92)
    {
      break;
    }

    *a5 = i;
    if (*(a3 + i) != 47)
    {
      goto LABEL_38;
    }

    v9 = qword_287927CD8;
LABEL_6:
    v10 = __OFADD__(v6++, 1);
    if (v10)
    {
      __break(1u);
      return result;
    }

    v5 = v9 | (v5 << 6);
    if (v6 == 4)
    {
      v6 = 0;
      *result = BYTE2(v5);
      result[1] = BYTE1(v5);
      result[2] = v5;
      result += 3;
      i = *a5;
      v5 = 0;
    }

    ++i;
  }

  if (v8 != 61)
  {
    goto LABEL_38;
  }

  v11 = 0;
  do
  {
    if (v8 != 32)
    {
      if (v8 != 61)
      {
        goto LABEL_38;
      }

      v10 = __OFADD__(v11++, 1);
      if (v10)
      {
        __break(1u);
        goto LABEL_25;
      }
    }

    *a5 = i;
    v8 = *(a3 + i++);
  }

  while (v8 != 34);
  if (!v6)
  {
    if (!v11)
    {
      return result;
    }

    goto LABEL_38;
  }

  if (v6 == 2)
  {
    *result = v5 >> 4;
    if ((v11 | 2) == 2)
    {
      return result;
    }

    goto LABEL_38;
  }

  if (v6 != 3 || (*result = v5 >> 10, result[1] = v5 >> 2, v11 >= 2))
  {
LABEL_38:
    sub_2685BD910();
    swift_allocError();
    *v12 = xmmword_26868A570;
    return swift_willThrow();
  }

  return result;
}

unint64_t sub_2685BAD78(uint64_t a1, unint64_t a2)
{
  v104 = 0;
  v105 = 0xE000000000000000;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v3 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v3 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v3)
  {
    return 0;
  }

  v5 = 0;
  while (1)
  {
    if ((a2 & 0x1000000000000000) != 0)
    {
      v8 = sub_268689CD4();
      goto LABEL_16;
    }

    if ((a2 & 0x2000000000000000) != 0)
    {
      v102 = a1;
      v103 = a2 & 0xFFFFFFFFFFFFFFLL;
      v7 = &v102 + v5;
    }

    else
    {
      v6 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
      if ((a1 & 0x1000000000000000) == 0)
      {
        v6 = sub_268689D24();
      }

      v7 = (v6 + v5);
    }

    v8 = *v7;
    if ((*v7 & 0x80000000) == 0)
    {
LABEL_15:
      v9 = 1;
      goto LABEL_16;
    }

    v14 = (__clz(v8 ^ 0xFF) - 24);
    if (v14 > 2)
    {
      if (v14 == 3)
      {
        v8 = ((v8 & 0xF) << 12) | ((v7[1] & 0x3F) << 6) | v7[2] & 0x3F;
        v9 = 3;
      }

      else
      {
        v8 = ((v8 & 0xF) << 18) | ((v7[1] & 0x3F) << 12) | ((v7[2] & 0x3F) << 6) | v7[3] & 0x3F;
        v9 = 4;
      }
    }

    else
    {
      if (v14 == 1)
      {
        goto LABEL_15;
      }

      v8 = v7[1] & 0x3F | ((v8 & 0x1F) << 6);
      v9 = 2;
    }

LABEL_16:
    v5 += v9;
    if (v8 != 92)
    {
      goto LABEL_6;
    }

    if (v5 >= v3)
    {
      goto LABEL_242;
    }

    if ((a2 & 0x1000000000000000) != 0)
    {
      v12 = sub_268689CD4();
      goto LABEL_30;
    }

    if ((a2 & 0x2000000000000000) != 0)
    {
      v102 = a1;
      v103 = a2 & 0xFFFFFFFFFFFFFFLL;
      v11 = &v102 + v5;
    }

    else
    {
      v10 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
      if ((a1 & 0x1000000000000000) == 0)
      {
        v10 = sub_268689D24();
      }

      v11 = (v10 + v5);
    }

    v12 = *v11;
    if ((*v11 & 0x80000000) == 0)
    {
LABEL_29:
      v13 = 1;
      goto LABEL_30;
    }

    v17 = (__clz(v12 ^ 0xFF) - 24);
    if (v17 > 2)
    {
      if (v17 == 3)
      {
        v12 = ((v12 & 0xF) << 12) | ((v11[1] & 0x3F) << 6) | v11[2] & 0x3F;
        v13 = 3;
      }

      else
      {
        v12 = ((v12 & 0xF) << 18) | ((v11[1] & 0x3F) << 12) | ((v11[2] & 0x3F) << 6) | v11[3] & 0x3F;
        v13 = 4;
      }
    }

    else
    {
      if (v17 == 1)
      {
        goto LABEL_29;
      }

      v12 = v11[1] & 0x3F | ((v12 & 0x1F) << 6);
      v13 = 2;
    }

LABEL_30:
    v5 += v13;
    if (v12 <= 101)
    {
      if (((v12 - 34) > 0x3A || ((1 << (v12 - 34)) & 0x400000000002001) == 0) && v12 != 98)
      {
        goto LABEL_242;
      }

      goto LABEL_6;
    }

    if (v12 <= 113)
    {
      if (v12 != 102 && v12 != 110)
      {
        goto LABEL_242;
      }

      goto LABEL_6;
    }

    if (v12 == 114 || v12 == 116)
    {
      goto LABEL_6;
    }

    if (v12 != 117 || v5 >= v3)
    {
      goto LABEL_242;
    }

    if ((a2 & 0x1000000000000000) != 0)
    {
      v18 = sub_268689CD4();
      v20 = v19;
    }

    else
    {
      if ((a2 & 0x2000000000000000) != 0)
      {
        v102 = a1;
        v103 = a2 & 0xFFFFFFFFFFFFFFLL;
        v16 = &v102 + v5;
      }

      else
      {
        v15 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
        if ((a1 & 0x1000000000000000) == 0)
        {
          v15 = sub_268689D24();
        }

        v16 = (v15 + v5);
      }

      v18 = *v16;
      if ((*v16 & 0x80000000) == 0)
      {
        goto LABEL_62;
      }

      v29 = (__clz(v18 ^ 0xFF) - 24);
      if (v29 <= 2)
      {
        if (v29 != 1)
        {
          v18 = v16[1] & 0x3F | ((v18 & 0x1F) << 6);
          v20 = 2;
          goto LABEL_63;
        }

LABEL_62:
        v20 = 1;
        goto LABEL_63;
      }

      if (v29 == 3)
      {
        v18 = ((v18 & 0xF) << 12) | ((v16[1] & 0x3F) << 6) | v16[2] & 0x3F;
        v20 = 3;
      }

      else
      {
        v18 = ((v18 & 0xF) << 18) | ((v16[1] & 0x3F) << 12) | ((v16[2] & 0x3F) << 6) | v16[3] & 0x3F;
        v20 = 4;
      }
    }

LABEL_63:
    v21 = sub_2685BA8C0(v18);
    if ((v21 & 0x100000000) != 0)
    {
      goto LABEL_242;
    }

    v22 = v20 + v5;
    if (v20 + v5 >= v3)
    {
      goto LABEL_242;
    }

    v23 = v21;
    if ((a2 & 0x1000000000000000) != 0)
    {
      v26 = sub_268689CD4();
      v28 = v27;
    }

    else
    {
      if ((a2 & 0x2000000000000000) != 0)
      {
        v102 = a1;
        v103 = a2 & 0xFFFFFFFFFFFFFFLL;
        v25 = &v102 + v22;
      }

      else
      {
        v24 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
        if ((a1 & 0x1000000000000000) == 0)
        {
          v24 = sub_268689D24();
        }

        v25 = (v24 + v22);
      }

      v26 = *v25;
      if ((*v25 & 0x80000000) == 0)
      {
        goto LABEL_76;
      }

      v38 = (__clz(v26 ^ 0xFF) - 24);
      if (v38 <= 2)
      {
        if (v38 != 1)
        {
          v26 = v25[1] & 0x3F | ((v26 & 0x1F) << 6);
          v28 = 2;
          goto LABEL_77;
        }

LABEL_76:
        v28 = 1;
        goto LABEL_77;
      }

      if (v38 == 3)
      {
        v26 = ((v26 & 0xF) << 12) | ((v25[1] & 0x3F) << 6) | v25[2] & 0x3F;
        v28 = 3;
      }

      else
      {
        v26 = ((v26 & 0xF) << 18) | ((v25[1] & 0x3F) << 12) | ((v25[2] & 0x3F) << 6) | v25[3] & 0x3F;
        v28 = 4;
      }
    }

LABEL_77:
    v30 = sub_2685BA8C0(v26);
    if ((v30 & 0x100000000) != 0)
    {
      goto LABEL_242;
    }

    v31 = v28 + v22;
    if (v28 + v22 >= v3)
    {
      goto LABEL_242;
    }

    v32 = v30;
    if ((a2 & 0x1000000000000000) != 0)
    {
      v35 = sub_268689CD4();
      v37 = v36;
    }

    else
    {
      if ((a2 & 0x2000000000000000) != 0)
      {
        v102 = a1;
        v103 = a2 & 0xFFFFFFFFFFFFFFLL;
        v34 = &v102 + v31;
      }

      else
      {
        v33 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
        if ((a1 & 0x1000000000000000) == 0)
        {
          v33 = sub_268689D24();
        }

        v34 = (v33 + v31);
      }

      v35 = *v34;
      if ((*v34 & 0x80000000) == 0)
      {
        goto LABEL_92;
      }

      v47 = (__clz(v35 ^ 0xFF) - 24);
      if (v47 <= 2)
      {
        if (v47 != 1)
        {
          v35 = v34[1] & 0x3F | ((v35 & 0x1F) << 6);
          v37 = 2;
          goto LABEL_93;
        }

LABEL_92:
        v37 = 1;
        goto LABEL_93;
      }

      if (v47 == 3)
      {
        v35 = ((v35 & 0xF) << 12) | ((v34[1] & 0x3F) << 6) | v34[2] & 0x3F;
        v37 = 3;
      }

      else
      {
        v35 = ((v35 & 0xF) << 18) | ((v34[1] & 0x3F) << 12) | ((v34[2] & 0x3F) << 6) | v34[3] & 0x3F;
        v37 = 4;
      }
    }

LABEL_93:
    v39 = sub_2685BA8C0(v35);
    if ((v39 & 0x100000000) != 0)
    {
      goto LABEL_242;
    }

    v40 = v37 + v31;
    if (v40 >= v3)
    {
      goto LABEL_242;
    }

    v41 = v39;
    if ((a2 & 0x1000000000000000) != 0)
    {
      v44 = sub_268689CD4();
      v46 = v45;
      goto LABEL_110;
    }

    if ((a2 & 0x2000000000000000) != 0)
    {
      v102 = a1;
      v103 = a2 & 0xFFFFFFFFFFFFFFLL;
      v43 = &v102 + v40;
    }

    else
    {
      v42 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
      if ((a1 & 0x1000000000000000) == 0)
      {
        v42 = sub_268689D24();
      }

      v43 = (v42 + v40);
    }

    v44 = *v43;
    if ((*v43 & 0x80000000) == 0)
    {
LABEL_109:
      v46 = 1;
      goto LABEL_110;
    }

    v56 = (__clz(v44 ^ 0xFF) - 24);
    if (v56 > 2)
    {
      if (v56 == 3)
      {
        v44 = ((v44 & 0xF) << 12) | ((v43[1] & 0x3F) << 6) | v43[2] & 0x3F;
        v46 = 3;
      }

      else
      {
        v44 = ((v44 & 0xF) << 18) | ((v43[1] & 0x3F) << 12) | ((v43[2] & 0x3F) << 6) | v43[3] & 0x3F;
        v46 = 4;
      }
    }

    else
    {
      if (v56 == 1)
      {
        goto LABEL_109;
      }

      v44 = v43[1] & 0x3F | ((v44 & 0x1F) << 6);
      v46 = 2;
    }

LABEL_110:
    result = sub_2685BA8C0(v44);
    if ((result & 0x100000000) != 0)
    {
      goto LABEL_242;
    }

    if (v23 >> 28)
    {
      break;
    }

    v49 = v32 + 16 * v23;
    if (__CFADD__(v32, 16 * v23))
    {
      goto LABEL_247;
    }

    if (v49 >> 28)
    {
      goto LABEL_248;
    }

    v50 = __CFADD__(v41, 16 * v49);
    v51 = v41 + 16 * v49;
    if (v50)
    {
      goto LABEL_249;
    }

    if (v51 >> 28)
    {
      goto LABEL_250;
    }

    v50 = __CFADD__(result, 16 * v51);
    result = result + 16 * v51;
    if (v50)
    {
      goto LABEL_251;
    }

    v5 = v46 + v40;
    if (WORD1(result) > 0x10u || (result & 0xFFFFF800) == 0xD800)
    {
      if (result >= 0xE000 || result >> 10 >= 0x37 || v5 >= v3)
      {
        goto LABEL_242;
      }

      v101 = result;
      if ((a2 & 0x1000000000000000) != 0)
      {
        v54 = sub_268689CD4();
      }

      else
      {
        if ((a2 & 0x2000000000000000) != 0)
        {
          v102 = a1;
          v103 = a2 & 0xFFFFFFFFFFFFFFLL;
          v53 = &v102 + v5;
        }

        else
        {
          v52 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
          if ((a1 & 0x1000000000000000) == 0)
          {
            v52 = sub_268689D24();
          }

          v53 = (v52 + v5);
        }

        v54 = *v53;
        if (*v53 < 0)
        {
          v62 = (__clz(v54 ^ 0xFF) - 24);
          if (v62 > 2)
          {
            if (v62 == 3)
            {
              v54 = ((v54 & 0xF) << 12) | ((v53[1] & 0x3F) << 6) | v53[2] & 0x3F;
              v55 = 3;
            }

            else
            {
              v54 = ((v54 & 0xF) << 18) | ((v53[1] & 0x3F) << 12) | ((v53[2] & 0x3F) << 6) | v53[3] & 0x3F;
              v55 = 4;
            }
          }

          else
          {
            if (v62 == 1)
            {
              goto LABEL_136;
            }

            v54 = v53[1] & 0x3F | ((v54 & 0x1F) << 6);
            v55 = 2;
          }
        }

        else
        {
LABEL_136:
          v55 = 1;
        }
      }

      if (v54 != 92)
      {
        goto LABEL_242;
      }

      v57 = v55 + v5;
      if (v55 + v5 >= v3)
      {
        goto LABEL_242;
      }

      if ((a2 & 0x1000000000000000) != 0)
      {
        v60 = sub_268689CD4();
      }

      else
      {
        if ((a2 & 0x2000000000000000) != 0)
        {
          v102 = a1;
          v103 = a2 & 0xFFFFFFFFFFFFFFLL;
          v59 = &v102 + v57;
        }

        else
        {
          v58 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
          if ((a1 & 0x1000000000000000) == 0)
          {
            v58 = sub_268689D24();
          }

          v59 = (v58 + v57);
        }

        v60 = *v59;
        if (*v59 < 0)
        {
          v77 = (__clz(v60 ^ 0xFF) - 24);
          if (v77 > 2)
          {
            if (v77 == 3)
            {
              v60 = ((v60 & 0xF) << 12) | ((v59[1] & 0x3F) << 6) | v59[2] & 0x3F;
              v61 = 3;
            }

            else
            {
              v60 = ((v60 & 0xF) << 18) | ((v59[1] & 0x3F) << 12) | ((v59[2] & 0x3F) << 6) | v59[3] & 0x3F;
              v61 = 4;
            }
          }

          else
          {
            if (v77 == 1)
            {
              goto LABEL_153;
            }

            v60 = v59[1] & 0x3F | ((v60 & 0x1F) << 6);
            v61 = 2;
          }
        }

        else
        {
LABEL_153:
          v61 = 1;
        }
      }

      if (v60 != 117)
      {
        goto LABEL_242;
      }

      v63 = v61 + v57;
      if (v61 + v57 >= v3)
      {
        goto LABEL_242;
      }

      if ((a2 & 0x1000000000000000) != 0)
      {
        v66 = sub_268689CD4();
        v68 = v67;
      }

      else
      {
        if ((a2 & 0x2000000000000000) != 0)
        {
          v102 = a1;
          v103 = a2 & 0xFFFFFFFFFFFFFFLL;
          v65 = &v102 + v63;
        }

        else
        {
          v64 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
          if ((a1 & 0x1000000000000000) == 0)
          {
            v64 = sub_268689D24();
          }

          v65 = (v64 + v63);
        }

        v66 = *v65;
        if (*v65 < 0)
        {
          v78 = (__clz(v66 ^ 0xFF) - 24);
          if (v78 > 2)
          {
            if (v78 == 3)
            {
              v66 = ((v66 & 0xF) << 12) | ((v65[1] & 0x3F) << 6) | v65[2] & 0x3F;
              v68 = 3;
            }

            else
            {
              v66 = ((v66 & 0xF) << 18) | ((v65[1] & 0x3F) << 12) | ((v65[2] & 0x3F) << 6) | v65[3] & 0x3F;
              v68 = 4;
            }
          }

          else
          {
            if (v78 == 1)
            {
              goto LABEL_164;
            }

            v66 = v65[1] & 0x3F | ((v66 & 0x1F) << 6);
            v68 = 2;
          }
        }

        else
        {
LABEL_164:
          v68 = 1;
        }
      }

      v69 = sub_2685BA8C0(v66);
      if ((v69 & 0x100000000) != 0)
      {
        goto LABEL_242;
      }

      v70 = v68 + v63;
      if (v68 + v63 >= v3)
      {
        goto LABEL_242;
      }

      v71 = v69;
      if ((a2 & 0x1000000000000000) != 0)
      {
        v74 = sub_268689CD4();
        v76 = v75;
      }

      else
      {
        if ((a2 & 0x2000000000000000) != 0)
        {
          v102 = a1;
          v103 = a2 & 0xFFFFFFFFFFFFFFLL;
          v73 = &v102 + v70;
        }

        else
        {
          v72 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
          if ((a1 & 0x1000000000000000) == 0)
          {
            v72 = sub_268689D24();
          }

          v73 = (v72 + v70);
        }

        v74 = *v73;
        if (*v73 < 0)
        {
          v87 = (__clz(v74 ^ 0xFF) - 24);
          if (v87 > 2)
          {
            if (v87 == 3)
            {
              v74 = ((v74 & 0xF) << 12) | ((v73[1] & 0x3F) << 6) | v73[2] & 0x3F;
              v76 = 3;
            }

            else
            {
              v74 = ((v74 & 0xF) << 18) | ((v73[1] & 0x3F) << 12) | ((v73[2] & 0x3F) << 6) | v73[3] & 0x3F;
              v76 = 4;
            }
          }

          else
          {
            if (v87 == 1)
            {
              goto LABEL_184;
            }

            v74 = v73[1] & 0x3F | ((v74 & 0x1F) << 6);
            v76 = 2;
          }
        }

        else
        {
LABEL_184:
          v76 = 1;
        }
      }

      v79 = sub_2685BA8C0(v74);
      if ((v79 & 0x100000000) != 0)
      {
        goto LABEL_242;
      }

      v80 = v76 + v70;
      if (v76 + v70 >= v3)
      {
        goto LABEL_242;
      }

      v81 = v79;
      if ((a2 & 0x1000000000000000) != 0)
      {
        v84 = sub_268689CD4();
        v86 = v85;
      }

      else
      {
        if ((a2 & 0x2000000000000000) != 0)
        {
          v102 = a1;
          v103 = a2 & 0xFFFFFFFFFFFFFFLL;
          v83 = &v102 + v80;
        }

        else
        {
          v82 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
          if ((a1 & 0x1000000000000000) == 0)
          {
            v82 = sub_268689D24();
          }

          v83 = (v82 + v80);
        }

        v84 = *v83;
        if (*v83 < 0)
        {
          v96 = (__clz(v84 ^ 0xFF) - 24);
          if (v96 > 2)
          {
            if (v96 == 3)
            {
              v84 = ((v84 & 0xF) << 12) | ((v83[1] & 0x3F) << 6) | v83[2] & 0x3F;
              v86 = 3;
            }

            else
            {
              v84 = ((v84 & 0xF) << 18) | ((v83[1] & 0x3F) << 12) | ((v83[2] & 0x3F) << 6) | v83[3] & 0x3F;
              v86 = 4;
            }
          }

          else
          {
            if (v96 == 1)
            {
              goto LABEL_203;
            }

            v84 = v83[1] & 0x3F | ((v84 & 0x1F) << 6);
            v86 = 2;
          }
        }

        else
        {
LABEL_203:
          v86 = 1;
        }
      }

      v88 = sub_2685BA8C0(v84);
      if ((v88 & 0x100000000) != 0)
      {
        goto LABEL_242;
      }

      v89 = v86 + v80;
      if (v89 >= v3)
      {
        goto LABEL_242;
      }

      v90 = v88;
      if ((a2 & 0x1000000000000000) != 0)
      {
        v93 = sub_268689CD4();
        v95 = v94;
      }

      else
      {
        if ((a2 & 0x2000000000000000) != 0)
        {
          v102 = a1;
          v103 = a2 & 0xFFFFFFFFFFFFFFLL;
          v92 = &v102 + v89;
        }

        else
        {
          v91 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
          if ((a1 & 0x1000000000000000) == 0)
          {
            v91 = sub_268689D24();
          }

          v92 = (v91 + v89);
        }

        v93 = *v92;
        if (*v92 < 0)
        {
          v100 = (__clz(v93 ^ 0xFF) - 24);
          if (v100 > 2)
          {
            if (v100 == 3)
            {
              v93 = ((v93 & 0xF) << 12) | ((v92[1] & 0x3F) << 6) | v92[2] & 0x3F;
              v95 = 3;
            }

            else
            {
              v93 = ((v93 & 0xF) << 18) | ((v92[1] & 0x3F) << 12) | ((v92[2] & 0x3F) << 6) | v92[3] & 0x3F;
              v95 = 4;
            }
          }

          else
          {
            if (v100 == 1)
            {
              goto LABEL_221;
            }

            v93 = v92[1] & 0x3F | ((v93 & 0x1F) << 6);
            v95 = 2;
          }
        }

        else
        {
LABEL_221:
          v95 = 1;
        }
      }

      result = sub_2685BA8C0(v93);
      if ((result & 0x100000000) != 0)
      {
        goto LABEL_242;
      }

      if (v71 >> 28)
      {
        goto LABEL_252;
      }

      v97 = v81 + 16 * v71;
      if (__CFADD__(v81, 16 * v71))
      {
        goto LABEL_253;
      }

      if (v97 >> 28)
      {
        goto LABEL_254;
      }

      v50 = __CFADD__(v90, 16 * v97);
      v98 = v90 + 16 * v97;
      if (v50)
      {
        goto LABEL_255;
      }

      if (v98 >> 28)
      {
        goto LABEL_256;
      }

      v50 = __CFADD__(result, 16 * v98);
      v99 = result + 16 * v98;
      if (v50)
      {
        goto LABEL_257;
      }

      if (v99 >> 10 != 55)
      {
LABEL_242:

        return 0;
      }

      if (v101 < 0xD800)
      {
        goto LABEL_258;
      }

      v5 = v95 + v89;
    }

LABEL_6:
    sub_2686899F4();
    if (v5 >= v3)
    {

      return v104;
    }
  }

  __break(1u);
LABEL_247:
  __break(1u);
LABEL_248:
  __break(1u);
LABEL_249:
  __break(1u);
LABEL_250:
  __break(1u);
LABEL_251:
  __break(1u);
LABEL_252:
  __break(1u);
LABEL_253:
  __break(1u);
LABEL_254:
  __break(1u);
LABEL_255:
  __break(1u);
LABEL_256:
  __break(1u);
LABEL_257:
  __break(1u);
LABEL_258:
  __break(1u);
  return result;
}

void sub_2685BBB94()
{
  v1 = v0[1];
  v2 = v0[2];
  if (v2 != v1)
  {
    v3 = *v0;
    do
    {
      v4 = *(v3 + v2);
      v5 = v4 > 0x20;
      v6 = (1 << v4) & 0x100002600;
      if (v5 || v6 == 0)
      {
        break;
      }

      v0[2] = ++v2;
    }

    while (v1 != v2);
  }
}

uint64_t sub_2685BBBDC()
{
  v2 = v0[1];
  v1 = v0[2];
  if (v1 == v2)
  {
    goto LABEL_8;
  }

  v3 = *v0;
  while (1)
  {
    v4 = *(v3 + v1);
    v5 = v4 > 0x20;
    v6 = (1 << v4) & 0x100002600;
    if (v5 || v6 == 0)
    {
      break;
    }

    v0[2] = ++v1;
    if (v2 == v1)
    {
      goto LABEL_8;
    }
  }

  if (v2 == v1)
  {
LABEL_8:
    sub_2685BD910();
    swift_allocError();
    *v8 = xmmword_26868A580;
    return swift_willThrow();
  }

  else
  {
    v10 = *(*v0 + v1);
    return sub_268689A14();
  }
}

unint64_t sub_2685BBCE0(char *a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = *a3;
  if (*a3 == a4)
  {
    sub_2685BD910();
    swift_allocError();
    v7 = xmmword_26868A580;
LABEL_3:
    *v6 = v7;
    *&result = COERCE_DOUBLE(swift_willThrow());
    return result;
  }

  v10 = a1[v5];
  if (v10 != 48)
  {
    if ((v10 - 58) >= 0xFFFFFFF7)
    {
      *&result = 0.0;
      v12 = *a3;
      while (a4 != v12)
      {
        v13 = a1[v12];
        if ((v13 - 58) < 0xF6u)
        {
          if (a1[v12] <= 0x5Bu)
          {
            if (v13 == 46 || v13 == 69)
            {
              goto LABEL_33;
            }

            return result;
          }

          if (v13 == 92)
          {
            goto LABEL_10;
          }

          if (v13 != 101)
          {
            return result;
          }

          goto LABEL_33;
        }

        if (result > 0x1999999999999999 || (v14 = (v13 - 48), __CFADD__(v14, 10 * result)))
        {
          sub_2685BD910();
          swift_allocError();
          v7 = xmmword_26868A590;
          goto LABEL_3;
        }

        *a3 = ++v12;
        result = 10 * result + v14;
      }

      return result;
    }

    if (v10 != 92)
    {
LABEL_39:
      sub_2685BD910();
      swift_allocError();
      v7 = xmmword_26868A5A0;
      goto LABEL_3;
    }

    goto LABEL_10;
  }

  *a3 = v5 + 1;
  if (v5 + 1 == a4)
  {
LABEL_7:
    *&result = 0.0;
    return result;
  }

  v11 = a1[v5 + 1];
  if ((v11 - 58) >= 0xFFFFFFF6)
  {
    sub_2685BD910();
    swift_allocError();
    v7 = xmmword_26868A5B0;
    goto LABEL_3;
  }

  if (a1[v5 + 1] <= 0x5Bu)
  {
    if (v11 != 46 && v11 != 69)
    {
      goto LABEL_7;
    }

    goto LABEL_33;
  }

  if (v11 == 92)
  {
LABEL_10:
    *&result = 0.0;
    return result;
  }

  if (v11 != 101)
  {
    goto LABEL_7;
  }

LABEL_33:
  *a3 = v5;
  *&result = COERCE_DOUBLE(sub_2685BBF30(a1, a2, a3, a4));
  if (!v4)
  {
    if ((v15 & 1) == 0 && *&result > -1.0 && *&result < 1.84467441e19 && trunc(*&result) == *&result)
    {
      return *&result;
    }

    goto LABEL_39;
  }

  return result;
}

char *sub_2685BBF30(char *result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = *a3;
  if (*a3 == a4)
  {
    goto LABEL_2;
  }

  v8 = 0;
  v9 = result[v5];
  switch(v9)
  {
    case '\\':
    case 'N':
      return v8;
    case '-':
      v10 = v5 + 1;
      *a3 = v5 + 1;
      if (v5 + 1 == a4)
      {
        *a3 = v5;
LABEL_2:
        v6 = 13;
LABEL_3:
        sub_2685BD910();
        swift_allocError();
        *v7 = 0;
        v7[1] = v6;
        swift_willThrow();
        return v8;
      }

      v9 = result[v10];
      if (v9 == 92)
      {
        return 0;
      }

      break;
    case 'I':
      return 0;
    default:
      v10 = *a3;
      break;
  }

  if (v9 != 48)
  {
    if ((v9 - 58) >= 0xFFFFFFF7)
    {
      v11 = v10 + 1;
      while (1)
      {
        if ((v9 - 58) < 0xFFFFFFF6)
        {
          --v11;
          goto LABEL_29;
        }

        *a3 = v11;
        if (a4 == v11)
        {
          break;
        }

        v8 = 0;
        v9 = result[v11++];
        if (v9 == 92)
        {
          return v8;
        }
      }

      if (!result)
      {
LABEL_72:
        __break(1u);
        goto LABEL_73;
      }

      v12 = a4 - v5;
      if (!__OFSUB__(a4, v5))
      {
        goto LABEL_64;
      }

      __break(1u);
      goto LABEL_38;
    }

LABEL_18:
    v6 = 1;
    goto LABEL_3;
  }

  v11 = v10 + 1;
  *a3 = v11;
  if (v11 == a4)
  {
    return 0;
  }

  v9 = result[v11];
  if (v9 == 92)
  {
    return 0;
  }

  if ((v9 - 58) >= 0xFFFFFFF6)
  {
    v6 = 12;
    goto LABEL_3;
  }

LABEL_29:
  if (v9 == 46)
  {
    *a3 = v11 + 1;
    if (v11 + 1 == a4)
    {
      goto LABEL_2;
    }

    v9 = result[v11 + 1];
    if ((v9 - 58) < 0xFFFFFFF6)
    {
      v6 = 1;
      if (v9 == 92)
      {
        return 0;
      }

      goto LABEL_3;
    }

LABEL_38:
    v13 = v11 + 2;
    while (1)
    {
      if ((v9 - 58) < 0xFFFFFFF6)
      {
        v11 = v13 - 1;
        goto LABEL_44;
      }

      *a3 = v13;
      if (a4 == v13)
      {
        break;
      }

      v8 = 0;
      v9 = result[v13++];
      if (v9 == 92)
      {
        return v8;
      }
    }

    if (!result)
    {
      goto LABEL_74;
    }

    v12 = a4 - v5;
    if (!__OFSUB__(a4, v5))
    {
      goto LABEL_64;
    }

    __break(1u);
    goto LABEL_61;
  }

LABEL_44:
  if ((v9 | 0x20) != 0x65)
  {
    goto LABEL_62;
  }

  v14 = v11 + 1;
  *a3 = v11 + 1;
  if (v11 + 1 == a4)
  {
    goto LABEL_2;
  }

  v15 = result[v14];
  switch(v15)
  {
    case '+':
      goto LABEL_78;
    case '\\':
      return 0;
    case '-':
LABEL_78:
      v14 = v11 + 2;
      *a3 = v11 + 2;
      if (v11 + 2 == a4)
      {
        goto LABEL_2;
      }

      v15 = result[v14];
      if (v15 == 92)
      {
        return 0;
      }

      break;
  }

  if ((v15 - 58) < 0xFFFFFFF6)
  {
    goto LABEL_18;
  }

  v13 = v14 + 1;
  while ((v15 - 58) >= 0xFFFFFFF6)
  {
    *a3 = v13;
    if (a4 == v13)
    {
      if (!result)
      {
        goto LABEL_75;
      }

      v12 = a4 - v5;
      if (__OFSUB__(a4, v5))
      {
        __break(1u);
        goto LABEL_71;
      }

      goto LABEL_64;
    }

    v8 = 0;
    v15 = result[v13++];
    if (v15 == 92)
    {
      return v8;
    }
  }

LABEL_61:
  v11 = v13 - 1;
LABEL_62:
  if (result)
  {
    v12 = v11 - v5;
    if (!__OFSUB__(v11, v5))
    {
LABEL_64:
      v16 = *(v4 + 24);
      v17 = sub_26861A074(&result[v5], v12);
      if ((v18 & 1) == 0)
      {
        return v17;
      }

      v6 = 6;
      goto LABEL_3;
    }

LABEL_71:
    __break(1u);
    goto LABEL_72;
  }

LABEL_73:
  __break(1u);
LABEL_74:
  __break(1u);
LABEL_75:
  __break(1u);
  return result;
}

unint64_t sub_2685BC224(char *a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = *a3;
  if (*a3 == a4)
  {
    goto LABEL_2;
  }

  if (a1[v5] == 45)
  {
    v9 = v5 + 1;
    *a3 = v9;
    if (v9 == a4)
    {
LABEL_2:
      sub_2685BD910();
      swift_allocError();
      v7 = xmmword_26868A580;
LABEL_3:
      *v6 = v7;
      return swift_willThrow();
    }

    if (a1[v9] - 58 <= 0xFFFFFFF5)
    {
      sub_2685BD910();
      swift_allocError();
      v7 = xmmword_26868A5A0;
      goto LABEL_3;
    }

    result = sub_2685BBCE0(a1, a2, a3, a4);
    if (v4)
    {
      return result;
    }

    if ((v11 & 1) == 0)
    {
      if ((result & 0x8000000000000000) == 0)
      {
        return -result;
      }

      v12 = result;
      result = 0x8000000000000000;
      if (v12 != 0x8000000000000000)
      {
        goto LABEL_19;
      }

      return result;
    }

    return 0;
  }

  result = sub_2685BBCE0(a1, a2, a3, a4);
  if (v4)
  {
    return result;
  }

  if (v10)
  {
    return 0;
  }

  if ((result & 0x8000000000000000) != 0)
  {
LABEL_19:
    sub_2685BD910();
    swift_allocError();
    v7 = xmmword_26868A590;
    goto LABEL_3;
  }

  return result;
}

void sub_2685BC360()
{
  v1 = v0[1];
  v2 = v0[2] + 1;
  v0[2] = v2;
  if (v2 == v1)
  {
LABEL_9:
    v0[2] = v2;
    return;
  }

  v3 = 0;
  v4 = *v0;
  v5 = v2;
  while (1)
  {
    v6 = *(v4 + v5);
    if (v6 != 92)
    {
      break;
    }

    if (++v5 == v1)
    {
      v0[2] = v1;
      return;
    }

    v3 = 1;
LABEL_4:
    if (++v5 == v1)
    {
      v2 = v1;
      goto LABEL_9;
    }
  }

  if (v6 != 34)
  {
    goto LABEL_4;
  }

  v0[2] = v5;
  if (!v4)
  {
LABEL_17:
    __break(1u);
    return;
  }

  if (__OFSUB__(v5, v2))
  {
    __break(1u);
    goto LABEL_17;
  }

  v7 = sub_2685B4E1C((v4 + v2), v5 - v2);
  v0[2] = v5 + 1;
  if (((v8 != 0) & v3) == 1)
  {
    sub_2685BAD78(v7, v8);
  }
}

void sub_2685BC49C()
{
  v2 = v0[1];
  v1 = v0[2];
  if (v1 == v2)
  {
    goto LABEL_2;
  }

  v4 = *v0;
  v3 = 13;
  while (1)
  {
    v5 = *(v4 + v1);
    v6 = v5 > 0x20;
    v7 = (1 << v5) & 0x100002600;
    if (v6 || v7 == 0)
    {
      break;
    }

    v0[2] = ++v1;
    if (v2 == v1)
    {
      goto LABEL_9;
    }
  }

  if (v2 == v1)
  {
LABEL_2:
    v3 = 13;
LABEL_9:
    sub_2685BD910();
    swift_allocError();
    *v9 = 0;
    v9[1] = v3;
    swift_willThrow();
    return;
  }

  if (*(*v0 + v1) != 34 || (sub_2685BC360(), !v10))
  {
    v3 = 5;
    goto LABEL_9;
  }
}

unint64_t sub_2685BC564(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v4 == 2)
    {
      result = sub_2685BF134(*(a1 + 16), *(a1 + 24), a2 & 0x3FFFFFFFFFFFFFFFLL, a3);
      if (v3)
      {
        goto LABEL_15;
      }

      v7 = HIDWORD(result) & 1;
      goto LABEL_14;
    }

    memset(v9, 0, 14);
    v5 = v9;
    goto LABEL_11;
  }

  if (!v4)
  {
    v9[0] = a1;
    LOWORD(v9[1]) = a2;
    BYTE2(v9[1]) = BYTE2(a2);
    BYTE3(v9[1]) = BYTE3(a2);
    BYTE4(v9[1]) = BYTE4(a2);
    BYTE5(v9[1]) = BYTE5(a2);
    v5 = v9 + BYTE6(a2);
LABEL_11:
    result = sub_2685BD18C(v9, v5, a3, &v10);
    if (v3)
    {
      goto LABEL_15;
    }

    LODWORD(result) = v10;
    LOBYTE(v7) = v11;
    goto LABEL_14;
  }

  if (a1 >> 32 < a1)
  {
    __break(1u);
  }

  result = sub_2685BF134(a1, a1 >> 32, a2 & 0x3FFFFFFFFFFFFFFFLL, a3);
  if (!v3)
  {
    v7 = HIDWORD(result) & 1;
LABEL_14:
    LOBYTE(v9[0]) = v7;
    result = result | (v7 << 32);
  }

LABEL_15:
  v8 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_2685BC6D4(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t *, uint64_t), uint64_t (*a5)(uint64_t *, uint64_t, uint64_t *, uint64_t))
{
  v28 = *MEMORY[0x277D85DE8];
  v6 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v6)
    {
      v20 = a1;
      v21 = a2;
      v22 = BYTE2(a2);
      v23 = BYTE3(a2);
      v24 = BYTE4(a2);
      v7 = BYTE6(a2);
      v25 = BYTE5(a2);
      if (BYTE6(a2))
      {
        v18 = 0;
        v8 = *(a3 + 16);
        v26[0] = *a3;
        v26[1] = v8;
        v26[2] = *(a3 + 32);
        v27 = *(a3 + 48);
        sub_2685BF320(v26, v19);
        v10 = a5(&v20, v7, &v18, v7);
        if (v5)
        {
          result = sub_2685BF358(v26);
        }

        else
        {
          v15 = v10;
          v16 = v11;
          sub_2685BF358(v26);
          if (v16 & 1 | (v18 != v7))
          {
            result = 0;
          }

          else
          {
            result = v15;
          }
        }
      }

      else
      {
        result = 0;
      }

      goto LABEL_17;
    }

    v13 = a1;
    v14 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

LABEL_9:
    result = sub_2685BF074(v13, v14, a2 & 0x3FFFFFFFFFFFFFFFLL, a3, a4);
    goto LABEL_17;
  }

  if (v6 == 2)
  {
    v13 = *(a1 + 16);
    v14 = *(a1 + 24);
    goto LABEL_9;
  }

  *&v19[6] = 0;
  *v19 = 0;
  result = sub_2685BD784(v19, v19, a3, a4, &v20);
  if (!v5)
  {
    result = v20;
  }

LABEL_17:
  v17 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_2685BC90C(uint64_t (*a1)(uint64_t, uint64_t, uint64_t *, uint64_t), uint64_t (*a2)(uint64_t, uint64_t, uint64_t *, uint64_t))
{
  v6 = sub_2686899A4();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v10 = MEMORY[0x28223BE20](v6, v9);
  v12 = &v45 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = (v2 + 1);
  v14 = *(v2 + 2);
  v15 = *(v2 + 1);
  if (v14 == v15)
  {
    goto LABEL_8;
  }

  v16 = *v2;
  while (1)
  {
    v17 = *(v16 + v14);
    v18 = v17 > 0x20;
    v19 = (1 << v17) & 0x100002600;
    if (v18 || v19 == 0)
    {
      break;
    }

    *v13 = ++v14;
    if (v15 == v14)
    {
      goto LABEL_8;
    }
  }

  if (v15 == v14)
  {
    goto LABEL_8;
  }

  if (*(*v2 + v14) != 34)
  {
    v32 = v2[1];
    v51[0] = *v2;
    v33 = v2[2];
    v51[1] = v32;
    v51[2] = v33;
    v52 = *(v2 + 48);
    v34 = v51[0];
    sub_2685BF320(v51, v48);
    v2 = v51;
    v35 = a1(v34, *(&v34 + 1), v13, *(&v34 + 1));
    if (v3)
    {
      v31 = v51;
      goto LABEL_17;
    }

    v2 = v35;
    v41 = v36;
    sub_2685BF358(v51);
    if ((v41 & 1) == 0)
    {
      return v2;
    }

    goto LABEL_22;
  }

  v45 = v10;
  *(v2 + 2) = v14 + 1;
  v24 = v2[2];
  v49[1] = v2[1];
  v49[2] = v24;
  v50 = *(v2 + 48);
  v25 = *v2;
  v47 = v2;
  v49[0] = v25;
  v53 = *(&v25 + 1);
  v26 = v25;
  sub_2685BF320(v49, v48);
  v2 = v49;
  v46 = v26;
  v27 = v26;
  v28 = v53;
  v29 = a1(v27, v53, v13, v53);
  if (v3)
  {
    v31 = v49;
LABEL_17:
    sub_2685BF358(v31);
    return v2;
  }

  v2 = v29;
  v37 = v30;
  sub_2685BF358(v49);
  if ((v37 & 1) == 0)
  {
    v42 = *v13;
    if (*v13 != v28)
    {
      if (*(v46 + v42) == 34)
      {
        *v13 = v42 + 1;
        return v2;
      }

      goto LABEL_22;
    }

LABEL_8:
    sub_2685BD910();
    swift_allocError();
    v22 = xmmword_26868A580;
LABEL_9:
    *v21 = v22;
    swift_willThrow();
    return v2;
  }

  *(v47 + 2) = v14;
  sub_2685BC49C();
  sub_268689994();
  v38 = sub_268689954();
  v40 = v39;
  result = (*(v7 + 8))(v12, v45);
  if (v40 >> 60 != 15)
  {

    v2 = sub_2685BC6D4(v38, v40, v47, a2, a2);
    v44 = v43;
    sub_2685B98FC(v38, v40);
    if ((v44 & 1) == 0)
    {
      return v2;
    }

LABEL_22:
    sub_2685BD910();
    swift_allocError();
    v22 = xmmword_26868A5A0;
    goto LABEL_9;
  }

  __break(1u);
  return result;
}

void sub_2685BCCA0()
{
  v2 = sub_2686899A4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v6 = MEMORY[0x28223BE20](v2, v5);
  v8 = &v43[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v10 = (v0 + 16);
  v9 = *(v0 + 16);
  v11 = *(v0 + 8);
  if (v9 == v11)
  {
    goto LABEL_8;
  }

  v12 = *v0;
  while (1)
  {
    v13 = *(v12 + v9);
    v14 = v13 > 0x20;
    v15 = (1 << v13) & 0x100002600;
    if (v14 || v15 == 0)
    {
      break;
    }

    *v10 = ++v9;
    if (v11 == v9)
    {
      goto LABEL_8;
    }
  }

  if (v11 == v9)
  {
    goto LABEL_8;
  }

  if (*(*v0 + v9) != 34)
  {
    v24 = *(v0 + 16);
    v46[0] = *v0;
    v25 = *(v0 + 32);
    v46[1] = v24;
    v46[2] = v25;
    v47 = *(v0 + 48);
    v26 = v46[0];
    sub_2685BF320(v46, v43);
    v27 = sub_2685BBF30(v26, *(&v26 + 1), v10, *(&v26 + 1));
    if (v1)
    {
      v23 = v46;
      goto LABEL_17;
    }

    v34 = v28;
    v35 = *&v27;
    sub_2685BF358(v46);
    if ((v34 & 1) == 0)
    {
      v36 = v35;
      if ((LODWORD(v36) & 0x7FFFFFFFu) < 0x7F800000)
      {
        return;
      }
    }

LABEL_45:
    sub_2685BD910();
    swift_allocError();
    v18 = xmmword_26868A5A0;
    goto LABEL_9;
  }

  v42 = v6;
  *(v0 + 16) = v9 + 1;
  v19 = *(v0 + 32);
  v44[1] = *(v0 + 16);
  v44[2] = v19;
  v45 = *(v0 + 48);
  v20 = *v0;
  v48 = v0;
  v44[0] = v20;
  v21 = v20;
  sub_2685BF320(v44, v43);
  sub_2685BBF30(v21, *(&v21 + 1), v10, *(&v21 + 1));
  if (v1)
  {
    v23 = v44;
LABEL_17:
    sub_2685BF358(v23);
    return;
  }

  v29 = v22;
  sub_2685BF358(v44);
  if ((v29 & 1) == 0)
  {
    v37 = *v10;
    if (*v10 != *(&v21 + 1))
    {
      if (*(v21 + v37) == 34)
      {
        *v10 = v37 + 1;
        return;
      }

      goto LABEL_45;
    }

LABEL_8:
    sub_2685BD910();
    swift_allocError();
    v18 = xmmword_26868A580;
LABEL_9:
    *v17 = v18;
    swift_willThrow();
    return;
  }

  *(v48 + 16) = v9;
  sub_2685BC49C();
  v32 = v31;
  v33 = v30;
  if (v31 == 5136718 && v30 == 0xE300000000000000 || (sub_268689E14() & 1) != 0 || v32 == 6712905 && v33 == 0xE300000000000000 || (sub_268689E14() & 1) != 0 || v32 == 1718503725 && v33 == 0xE400000000000000 || (sub_268689E14() & 1) != 0 || v32 == 0x7974696E69666E49 && v33 == 0xE800000000000000 || (sub_268689E14() & 1) != 0 || v32 == 0x74696E69666E492DLL && v33 == 0xE900000000000079 || (sub_268689E14() & 1) != 0)
  {

    return;
  }

  sub_268689994();
  v38 = sub_268689954();
  v40 = v39;
  (*(v3 + 8))(v8, v42);
  if (v40 >> 60 == 15)
  {
    __break(1u);
    return;
  }

  v41 = sub_2685BC564(v38, v40, v48);
  sub_2685B98FC(v38, v40);
  if ((v41 & 0x100000000) != 0)
  {
    goto LABEL_45;
  }
}

uint64_t sub_2685BD18C@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  if (result)
  {
    v5 = a2 - result;
    if (a2 - result >= 1)
    {
      v6 = a4;
      v17 = 0;
      v7 = *(a3 + 16);
      v15[0] = *a3;
      v15[1] = v7;
      v15[2] = *(a3 + 32);
      v16 = *(a3 + 48);
      v8 = result;
      sub_2685BF320(v15, v14);
      v9 = sub_2685BBF30(v8, v5, &v17, v5);
      if (v4)
      {
        return sub_2685BF358(v15);
      }

      v11 = v10;
      v12 = *&v9;
      result = sub_2685BF358(v15);
      if ((v11 & 1) == 0 && v17 == v5)
      {
        v13 = v12;
        if ((LODWORD(v13) & 0x7FFFFFFFu) <= 0x7F7FFFFF)
        {
          *v6 = v13;
          *(v6 + 4) = 0;
          return result;
        }
      }

      a4 = v6;
    }
  }

  *a4 = 0;
  *(a4 + 4) = 1;
  return result;
}

void sub_2685BD298()
{
  v2 = sub_2686899A4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v6 = MEMORY[0x28223BE20](v2, v5);
  v8 = &v41[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v10 = (v0 + 16);
  v9 = *(v0 + 16);
  v11 = *(v0 + 8);
  if (v9 == v11)
  {
    goto LABEL_8;
  }

  v12 = *v0;
  while (1)
  {
    v13 = *(v12 + v9);
    v14 = v13 > 0x20;
    v15 = (1 << v13) & 0x100002600;
    if (v14 || v15 == 0)
    {
      break;
    }

    *v10 = ++v9;
    if (v11 == v9)
    {
      goto LABEL_8;
    }
  }

  if (v11 == v9)
  {
    goto LABEL_8;
  }

  if (*(*v0 + v9) != 34)
  {
    v24 = *(v0 + 16);
    v44[0] = *v0;
    v25 = *(v0 + 32);
    v44[1] = v24;
    v44[2] = v25;
    v45 = *(v0 + 48);
    v26 = v44[0];
    sub_2685BF320(v44, v41);
    sub_2685BBF30(v26, *(&v26 + 1), v10, *(&v26 + 1));
    if (v1)
    {
      v23 = v44;
      goto LABEL_16;
    }

    v33 = v27;
    sub_2685BF358(v44);
    if ((v33 & 1) == 0)
    {
      return;
    }

    goto LABEL_23;
  }

  v40 = v6;
  *(v0 + 16) = v9 + 1;
  v19 = *(v0 + 32);
  v42[1] = *(v0 + 16);
  v42[2] = v19;
  v43 = *(v0 + 48);
  v20 = *v0;
  v46 = v0;
  v42[0] = v20;
  v21 = v20;
  sub_2685BF320(v42, v41);
  sub_2685BBF30(v21, *(&v21 + 1), v10, *(&v21 + 1));
  if (v1)
  {
    v23 = v42;
LABEL_16:
    sub_2685BF358(v23);
    return;
  }

  v28 = v22;
  sub_2685BF358(v42);
  if ((v28 & 1) == 0)
  {
    v34 = *v10;
    if (*v10 != *(&v21 + 1))
    {
      if (*(v21 + v34) == 34)
      {
        *v10 = v34 + 1;
        return;
      }

LABEL_23:
      sub_2685BD910();
      swift_allocError();
      v18 = xmmword_26868A5A0;
      goto LABEL_9;
    }

LABEL_8:
    sub_2685BD910();
    swift_allocError();
    v18 = xmmword_26868A580;
LABEL_9:
    *v17 = v18;
    swift_willThrow();
    return;
  }

  *(v46 + 16) = v9;
  sub_2685BC49C();
  v31 = v30;
  v32 = v29;
  if (v30 == 5136718 && v29 == 0xE300000000000000 || (sub_268689E14() & 1) != 0 || v31 == 6712905 && v32 == 0xE300000000000000 || (sub_268689E14() & 1) != 0 || v31 == 1718503725 && v32 == 0xE400000000000000 || (sub_268689E14() & 1) != 0 || v31 == 0x7974696E69666E49 && v32 == 0xE800000000000000 || (sub_268689E14() & 1) != 0 || v31 == 0x74696E69666E492DLL && v32 == 0xE900000000000079 || (sub_268689E14() & 1) != 0)
  {

    return;
  }

  sub_268689994();
  v35 = sub_268689954();
  v37 = v36;
  (*(v3 + 8))(v8, v40);
  if (v37 >> 60 == 15)
  {
    __break(1u);
    return;
  }

  sub_2685BC6D4(v35, v37, v46, sub_2685BBF30, sub_2685BBF30);
  v39 = v38;
  sub_2685B98FC(v35, v37);
  if (v39)
  {
    goto LABEL_23;
  }
}

uint64_t sub_2685BD784@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t (*a4)(uint64_t, uint64_t, uint64_t *, uint64_t)@<X3>, uint64_t a5@<X8>)
{
  if (result)
  {
    v6 = a2 - result;
    if (a2 - result >= 1)
    {
      v8 = a5;
      v16 = 0;
      v9 = *(a3 + 16);
      v17[0] = *a3;
      v17[1] = v9;
      v17[2] = *(a3 + 32);
      v18 = *(a3 + 48);
      v10 = result;
      sub_2685BF320(v17, &v15);
      v11 = a4(v10, v6, &v16, v6);
      if (v5)
      {
        return sub_2685BF358(v17);
      }

      v13 = v12;
      v14 = v11;
      result = sub_2685BF358(v17);
      if ((v13 & 1) == 0 && v16 == v6)
      {
        *v8 = v14;
        *(v8 + 8) = 0;
        return result;
      }

      a5 = v8;
    }
  }

  *a5 = 0;
  *(a5 + 8) = 1;
  return result;
}

uint64_t sub_2685BD87C(uint64_t a1)
{
  v2 = v1[2];
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = (a1 + 32);
    v5 = v1[1];
    v6 = v1[2];
    while (v5 != v6 && *(*v1 + v6) == *v4)
    {
      v1[2] = ++v6;
      ++v4;
      if (!--v3)
      {
        if (v6 != v5)
        {
          goto LABEL_9;
        }

        return 1;
      }
    }
  }

  else
  {
    v6 = v1[2];
    if (v2 == v1[1])
    {
      return 1;
    }

LABEL_9:
    if ((*(*v1 + v6) & 0xDFu) - 91 < 0xFFFFFFE6)
    {
      return 1;
    }
  }

  result = 0;
  v1[2] = v2;
  return result;
}

unint64_t sub_2685BD910()
{
  result = qword_28028C058;
  if (!qword_28028C058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28028C058);
  }

  return result;
}

uint64_t sub_2685BD964()
{
  v2 = v0[1];
  v1 = v0[2];
  if (v1 == v2)
  {
    return 0;
  }

  v3 = *v0;
  while (1)
  {
    v4 = *(v3 + v1);
    v5 = v4 > 0x20;
    v6 = (1 << v4) & 0x100002600;
    if (v5 || v6 == 0)
    {
      break;
    }

    v0[2] = ++v1;
    if (v2 == v1)
    {
      return 0;
    }
  }

  if (v2 == v1 || *(*v0 + v1) != 110)
  {
    return 0;
  }

  else
  {
    return sub_2685BD87C(&unk_287928360);
  }
}

uint64_t sub_2685BD9D4()
{
  v2 = v0[1];
  v1 = v0[2];
  if (v1 == v2)
  {
    goto LABEL_2;
  }

  v4 = *v0;
  v3 = 13;
  do
  {
    v5 = *(v4 + v1);
    v6 = v5 > 0x20;
    v7 = (1 << v5) & 0x100002600;
    if (v6 || v7 == 0)
    {
      break;
    }

    v0[2] = ++v1;
  }

  while (v2 != v1);
  if (v2 == v1)
  {
LABEL_2:
    v3 = 13;
  }

  else
  {
    v12 = *(*v0 + v1);
    if (v12 == 116)
    {
      if (sub_2685BD87C(&unk_2879283B0))
      {
        v10 = 1;
        return v10 & 1;
      }
    }

    else if (v12 == 102 && (sub_2685BD87C(&unk_287928388) & 1) != 0)
    {
      v10 = 0;
      return v10 & 1;
    }

    v3 = 4;
  }

  sub_2685BD910();
  swift_allocError();
  *v9 = 0;
  v9[1] = v3;
  swift_willThrow();
  return v10 & 1;
}

uint64_t sub_2685BDAD0()
{
  v2 = v0[1];
  v1 = v0[2];
  if (v1 == v2)
  {
    goto LABEL_2;
  }

  v4 = *v0;
  v3 = 13;
  do
  {
    v5 = *(v4 + v1);
    v6 = v5 > 0x20;
    v7 = (1 << v5) & 0x100002600;
    if (v6 || v7 == 0)
    {
      break;
    }

    v0[2] = ++v1;
  }

  while (v2 != v1);
  if (v2 == v1)
  {
LABEL_2:
    v3 = 13;
  }

  else if (*(*v0 + v1) == 34)
  {
    sub_2685BC360();
    if (v13)
    {
      v14 = v12;
      v15 = v13;
      if (v12 == 0x65736C6166 && v13 == 0xE500000000000000 || (sub_268689E14() & 1) != 0)
      {

        v10 = 0;
        return v10 & 1;
      }

      if (v14 == 1702195828 && v15 == 0xE400000000000000)
      {

LABEL_23:
        v10 = 1;
        return v10 & 1;
      }

      v16 = sub_268689E14();

      if (v16)
      {
        goto LABEL_23;
      }
    }

    v3 = 4;
  }

  else
  {
    v3 = 11;
  }

  sub_2685BD910();
  swift_allocError();
  *v9 = 0;
  v9[1] = v3;
  swift_willThrow();
  return v10 & 1;
}

void sub_2685BDC58()
{
  v2 = v0[1];
  v1 = v0[2];
  if (v1 == v2)
  {
    goto LABEL_8;
  }

  v3 = *v0;
  while (1)
  {
    v4 = *(v3 + v1);
    v5 = v4 > 0x20;
    v6 = (1 << v4) & 0x100002600;
    if (v5 || v6 == 0)
    {
      break;
    }

    v0[2] = ++v1;
    if (v2 == v1)
    {
      goto LABEL_8;
    }
  }

  if (v2 == v1)
  {
    goto LABEL_8;
  }

  v9 = *v0;
  if (*(*v0 + v1) != 34)
  {
    return;
  }

  v0[2] = v1 + 1;
  if (v2 - 1 == v1)
  {
LABEL_16:
    v0[2] = v2;
LABEL_8:
    sub_2685BD910();
    swift_allocError();
    *v8 = xmmword_26868A580;
    swift_willThrow();
    return;
  }

  v10 = v1 + 1;
  while (1)
  {
    v11 = *(v9 + v10);
    if (v11 == 34)
    {
      break;
    }

    if (v11 == 92)
    {
      goto LABEL_22;
    }

    if (v2 == ++v10)
    {
      goto LABEL_16;
    }
  }

  v0[2] = v10;
  if (v9)
  {
    if (!__OFSUB__(v10, v1 + 1))
    {
      v1 = v10 + 1;
LABEL_22:
      v0[2] = v1;
      return;
    }

    __break(1u);
  }

  __break(1u);
}

uint64_t sub_2685BDD9C(uint64_t a1)
{
  v3 = v1;
  v4 = *(a1 + 24);
  sub_2685BDC58();
  if (v2)
  {
    return v3;
  }

  while (1)
  {
    v9 = *(v1 + 8);
    v8 = *(v1 + 16);
    if ((v7 & 1) == 0)
    {
      break;
    }

    if (v8 == v9)
    {
      goto LABEL_60;
    }

    v10 = *v1;
    while (1)
    {
      v11 = *(v10 + v8);
      v12 = v11 > 0x20;
      v13 = (1 << v11) & 0x100002600;
      if (v12 || v13 == 0)
      {
        break;
      }

      *(v1 + 16) = ++v8;
      if (v9 == v8)
      {
        goto LABEL_60;
      }
    }

    if (v9 == v8)
    {
      goto LABEL_60;
    }

    v19 = *v1;
    if (*(*v1 + v8) != 34 || (sub_2685BC360(), !v21))
    {
      sub_2685BD910();
      v45 = swift_allocError();
      v47 = xmmword_26868A570;
      goto LABEL_61;
    }

    v22 = *(v1 + 16);
    if (v22 == v9)
    {
      goto LABEL_59;
    }

    while (1)
    {
      v23 = *(v19 + v22);
      if (v23 > 0x20 || ((1 << v23) & 0x100002600) == 0)
      {
        break;
      }

      *(v1 + 16) = ++v22;
      if (v9 == v22)
      {
        goto LABEL_59;
      }
    }

    if (v9 == v22)
    {
LABEL_59:

LABEL_60:
      sub_2685BD910();
      v45 = swift_allocError();
      v47 = xmmword_26868A580;
LABEL_61:
      *v46 = v47;
LABEL_62:
      v3 = v45;
      swift_willThrow();
      return v3;
    }

    if (v23 != 58)
    {

LABEL_73:
      sub_2685BD910();
      v45 = swift_allocError();
      *v57 = 0;
      v57[1] = 0;
      goto LABEL_62;
    }

    *(v1 + 16) = v22 + 1;
    v40 = v20;
    v41 = v21;
    v42 = sub_2685BF1F0(v20, v21);
    if (*(v4 + 16))
    {
      v43 = sub_2685C32C0((v42 + 32), *(v42 + 16));
      if (v44)
      {
        v3 = *(*(v4 + 56) + 8 * v43);

        return v3;
      }
    }

    if ((*(v1 + 48) & 1) == 0)
    {
      sub_2685BD910();
      v45 = swift_allocError();
      *v58 = v40;
      v58[1] = v41;
      goto LABEL_62;
    }

LABEL_34:
    sub_2685BE2E4();
    v31 = *(v1 + 8);
    v30 = *(v1 + 16);
    if (v30 == v31)
    {
      goto LABEL_60;
    }

    v32 = *v1;
    while (1)
    {
      v33 = *(v32 + v30);
      v12 = v33 > 0x20;
      v34 = (1 << v33) & 0x100002600;
      if (v12 || v34 == 0)
      {
        break;
      }

      *(v1 + 16) = ++v30;
      if (v31 == v30)
      {
        goto LABEL_60;
      }
    }

    if (v31 == v30)
    {
      goto LABEL_60;
    }

    v36 = *v1;
    if (*(*v1 + v30) == 125)
    {
      *(v1 + 16) = v30 + 1;
      v54 = *(v1 + 40);
      v55 = __OFADD__(v54, 1);
      v56 = v54 + 1;
      if (!v55)
      {
        *(v1 + 40) = v56;
        if (*(v1 + 32) < v56)
        {
          goto LABEL_79;
        }

        return 0;
      }

      __break(1u);
LABEL_77:
      __break(1u);
      goto LABEL_78;
    }

    while (1)
    {
      v37 = *(v36 + v30);
      v12 = v37 > 0x20;
      v38 = (1 << v37) & 0x100002600;
      if (v12 || v38 == 0)
      {
        break;
      }

      *(v1 + 16) = ++v30;
      if (v31 == v30)
      {
        goto LABEL_60;
      }
    }

    if (v31 == v30)
    {
      goto LABEL_60;
    }

    if (*(*v1 + v30) != 44)
    {
      goto LABEL_73;
    }

    *(v1 + 16) = v30 + 1;
    sub_2685BDC58();
  }

  if (v8 == v9)
  {
    goto LABEL_60;
  }

  v15 = *v1;
  while (1)
  {
    v16 = *(v15 + v8);
    v12 = v16 > 0x20;
    v17 = (1 << v16) & 0x100002600;
    if (v12 || v17 == 0)
    {
      break;
    }

    *(v1 + 16) = ++v8;
    if (v9 == v8)
    {
      goto LABEL_60;
    }
  }

  if (v9 == v8)
  {
    goto LABEL_60;
  }

  if (*(*v1 + v8) != 58)
  {
    goto LABEL_73;
  }

  *(v1 + 16) = v8 + 1;
  if (*(v4 + 16))
  {
    v25 = v5;
    v26 = v6;
    v27 = sub_2685C32C0(v5, v6);
    v5 = v25;
    v29 = v28;
    v6 = v26;
    if (v29)
    {
      return *(*(v4 + 56) + 8 * v27);
    }
  }

  if (*(v1 + 48))
  {
    goto LABEL_34;
  }

  if (!v5)
  {
    goto LABEL_77;
  }

  v49 = sub_2685B4E1C(v5, v6);
  if (v50)
  {
    v51 = v49;
    v52 = v50;
    sub_2685BD910();
    v45 = swift_allocError();
    *v53 = v51;
    v53[1] = v52;
    goto LABEL_62;
  }

LABEL_78:
  __break(1u);
LABEL_79:
  result = sub_268689DA4();
  __break(1u);
  return result;
}

uint64_t sub_2685BE1FC(uint64_t result)
{
  v3 = v1[1];
  v2 = v1[2];
  if (v2 == v3)
  {
    goto LABEL_8;
  }

  v4 = *v1;
  while (1)
  {
    v5 = *(v4 + v2);
    v6 = v5 > 0x20;
    v7 = (1 << v5) & 0x100002600;
    if (v6 || v7 == 0)
    {
      break;
    }

    v1[2] = ++v2;
    if (v3 == v2)
    {
      goto LABEL_8;
    }
  }

  if (v3 == v2)
  {
LABEL_8:
    sub_2685BD910();
    swift_allocError();
    *v9 = xmmword_26868A580;
    return swift_willThrow();
  }

  if (*(*v1 + v2) != result)
  {
    sub_2685BD910();
    swift_allocError();
    *v10 = 0;
    v10[1] = 0;
    return swift_willThrow();
  }

  v1[2] = v2 + 1;
  return result;
}

void sub_2685BE2E4()
{
  v2 = v0[1];
  v1 = v0[2];
  if (v1 == v2)
  {
    goto LABEL_8;
  }

  v3 = *v0;
  while (1)
  {
    v4 = *(v3 + v1);
    v5 = v4 > 0x20;
    v6 = (1 << v4) & 0x100002600;
    if (v5 || v6 == 0)
    {
      break;
    }

    v0[2] = ++v1;
    if (v2 == v1)
    {
      goto LABEL_8;
    }
  }

  if (v2 == v1)
  {
    goto LABEL_8;
  }

  v9 = *(*v0 + v1);
  if (v9 <= 109)
  {
    switch(v9)
    {
      case '""':
        sub_2685BE954();
        return;
      case '[':
        sub_2685BEB3C();
        return;
      case 'f':
        v10 = &unk_287927A68;
        goto LABEL_24;
    }

LABEL_21:
    sub_2685BD298();
    return;
  }

  switch(v9)
  {
    case 'n':
      v10 = &unk_287927A40;
      break;
    case 't':
      v10 = &unk_287927A90;
      break;
    case '{':
      sub_2685BEA2C();
      return;
    default:
      goto LABEL_21;
  }

LABEL_24:
  if ((sub_2685BD87C(v10) & 1) == 0)
  {
LABEL_8:
    sub_2685BD910();
    swift_allocError();
    *v8 = xmmword_26868A580;
    swift_willThrow();
  }
}

uint64_t sub_2685BE428()
{
  v2 = v0[1];
  v1 = v0[2];
  if (v1 == v2)
  {
    return 0;
  }

  v3 = *v0;
  while (1)
  {
    v4 = *(v3 + v1);
    v5 = v4 > 0x20;
    v6 = (1 << v4) & 0x100002600;
    if (v5 || v6 == 0)
    {
      break;
    }

    v0[2] = ++v1;
    if (v2 == v1)
    {
      return 0;
    }
  }

  if (v2 == v1 || *(*v0 + v1) != 125)
  {
    return 0;
  }

  v0[2] = v1 + 1;
  v9 = v0[5];
  v10 = __OFADD__(v9, 1);
  v11 = v9 + 1;
  if (v10)
  {
    __break(1u);
  }

  else
  {
    v0[5] = v11;
    if (v0[4] >= v11)
    {
      return 1;
    }
  }

  result = sub_268689DA4();
  __break(1u);
  return result;
}

void sub_2685BE520(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v8 = sub_268689C74();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v12 = MEMORY[0x28223BE20](v8, v11);
  v14 = &v39 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v12, v15);
  v18 = &v39 - v17;
  v20 = MEMORY[0x28223BE20](v16, v19);
  v22 = &v39 - v21;
  v24 = v3[1];
  v23 = v3[2];
  if (v23 == v24)
  {
    goto LABEL_8;
  }

  v25 = *v3;
  while (1)
  {
    v26 = *(v25 + v23);
    v27 = v26 > 0x20;
    v28 = (1 << v26) & 0x100002600;
    if (v27 || v28 == 0)
    {
      break;
    }

    v3[2] = ++v23;
    if (v24 == v23)
    {
      goto LABEL_8;
    }
  }

  if (v24 == v23)
  {
LABEL_8:
    sub_2685BD910();
    swift_allocError();
    v31 = xmmword_26868A580;
LABEL_9:
    *v30 = v31;
    swift_willThrow();
    return;
  }

  v40 = v20;
  if (*(*v3 + v23) == 34)
  {
    sub_2685BDC58();
    if (!v4)
    {
      if (v34)
      {
        sub_2685BC49C();
        sub_2685C206C(v35, v36, a1, a2, v18);
        v37 = *(a1 - 8);
        if ((*(v37 + 48))(v18, 1, a1) == 1)
        {
          (*(v9 + 8))(v18, v40);
LABEL_22:
          sub_2685BD910();
          swift_allocError();
          v31 = xmmword_26868A5C0;
          goto LABEL_9;
        }

        v22 = v18;
      }

      else
      {
        sub_2685C1DCC(v32, v33, a1, a2, v22);
        v37 = *(a1 - 8);
        if ((*(v37 + 48))(v22, 1, a1) == 1)
        {
          (*(v9 + 8))(v22, v40);
          goto LABEL_22;
        }
      }

      goto LABEL_24;
    }
  }

  else
  {
    v38 = sub_2685BC90C(sub_2685BC224, sub_2685BC224);
    if (!v4)
    {
      (*(a2 + 32))(v38, a1, a2);
      v37 = *(a1 - 8);
      if ((*(v37 + 48))(v14, 1, a1) == 1)
      {
        (*(v9 + 8))(v14, v40);
        goto LABEL_22;
      }

      v22 = v14;
LABEL_24:
      (*(v37 + 32))(a3, v22, a1);
    }
  }
}

uint64_t sub_2685BE8E0()
{
  v2 = v0[1];
  v1 = v0[2];
  if (v1 == v2)
  {
    return 0;
  }

  v3 = *v0;
  while (1)
  {
    v4 = *(v3 + v1);
    v5 = v4 > 0x20;
    v6 = (1 << v4) & 0x100002600;
    if (v5 || v6 == 0)
    {
      break;
    }

    v0[2] = ++v1;
    if (v2 == v1)
    {
      return 0;
    }
  }

  if (v2 == v1 || *(*v0 + v1) != 93)
  {
    return 0;
  }

  v0[2] = v1 + 1;
  return 1;
}

void sub_2685BE954()
{
  v1 = *v0;
  v2 = v0[2];
  if (*(*v0 + v2) != 34)
  {
    v7 = 5;
LABEL_13:
    sub_2685BD910();
    swift_allocError();
    *v8 = 0;
    v8[1] = v7;
    swift_willThrow();
    return;
  }

  v3 = v2 + 1;
  v0[2] = v3;
  v4 = v0[1];
  if (v3 == v4)
  {
LABEL_12:
    v0[2] = v3;
    v7 = 13;
    goto LABEL_13;
  }

  while (1)
  {
    v5 = *(v1 + v3);
    if (v5 != 92)
    {
      break;
    }

    if (v3 + 1 == v4)
    {
LABEL_11:
      v3 = v0[1];
      goto LABEL_12;
    }

    v6 = 2;
LABEL_4:
    v3 += v6;
    if (v3 == v4)
    {
      goto LABEL_11;
    }
  }

  if (v5 != 34)
  {
    v6 = 1;
    goto LABEL_4;
  }

  v0[2] = v3 + 1;
}

void sub_2685BEA2C()
{
  sub_2685BE1FC(123);
  if (!v1)
  {
    v2 = v0[5];
    v3 = __OFSUB__(v2, 1);
    v4 = v2 - 1;
    if (v3)
    {
      __break(1u);
    }

    else
    {
      v0[5] = v4;
      if (v4 < 0)
      {
        sub_2685BD910();
        swift_allocError();
        *v13 = xmmword_26868A5D0;
        swift_willThrow();
      }

      else if ((sub_2685BE428() & 1) == 0)
      {
        while (1)
        {
          v5 = v0[1];
          v6 = v0[2];
          if (v6 != v5)
          {
            v7 = *v0;
            do
            {
              v8 = *(v7 + v6);
              v9 = v8 > 0x20;
              v10 = (1 << v8) & 0x100002600;
              if (v9 || v10 == 0)
              {
                break;
              }

              v0[2] = ++v6;
            }

            while (v5 != v6);
          }

          sub_2685BE954();
          v12 = sub_2685BE1FC(58);
          sub_2685BE2E4(v12);
          if (sub_2685BE428())
          {
            break;
          }

          sub_2685BE1FC(44);
        }
      }
    }
  }
}

uint64_t sub_2685BEB3C()
{
  result = sub_2685BE1FC(91);
  if (!v1)
  {
    v4 = v0[1];
    v3 = v0[2];
    if (v3 == v4)
    {
      goto LABEL_9;
    }

    v5 = *v0;
    while (1)
    {
      v6 = *(v5 + v3);
      v7 = v6 > 0x20;
      v8 = (1 << v6) & 0x100002600;
      if (v7 || v8 == 0)
      {
        break;
      }

      v0[2] = ++v3;
      if (v4 == v3)
      {
        goto LABEL_9;
      }
    }

    if (v4 == v3 || *(*v0 + v3) != 93)
    {
LABEL_9:
      for (result = sub_2685BE2E4(result); ; result = sub_2685BE2E4(result))
      {
        v10 = v0[1];
        v3 = v0[2];
        if (v3 == v10)
        {
          goto LABEL_29;
        }

        v11 = *v0;
        while (1)
        {
          v12 = *(v11 + v3);
          v7 = v12 > 0x20;
          v13 = (1 << v12) & 0x100002600;
          if (v7 || v13 == 0)
          {
            break;
          }

          v0[2] = ++v3;
          if (v10 == v3)
          {
            goto LABEL_29;
          }
        }

        if (v10 == v3)
        {
          goto LABEL_29;
        }

        v15 = *v0;
        if (*(*v0 + v3) == 93)
        {
          goto LABEL_34;
        }

        while (1)
        {
          v16 = *(v15 + v3);
          v7 = v16 > 0x20;
          v17 = (1 << v16) & 0x100002600;
          if (v7 || v17 == 0)
          {
            break;
          }

          v0[2] = ++v3;
          if (v10 == v3)
          {
            goto LABEL_29;
          }
        }

        if (v10 == v3)
        {
LABEL_29:
          sub_2685BD910();
          swift_allocError();
          *v19 = xmmword_26868A580;
          return swift_willThrow();
        }

        if (*(*v0 + v3) != 44)
        {
          break;
        }

        v0[2] = v3 + 1;
      }

      sub_2685BD910();
      swift_allocError();
      *v20 = 0;
      v20[1] = 0;
      return swift_willThrow();
    }

    else
    {
LABEL_34:
      v0[2] = v3 + 1;
    }
  }

  return result;
}

uint64_t sub_2685BECEC(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v30 = *MEMORY[0x277D85DE8];
  v9 = *a1;
  v8 = a1[1];
  v10 = v8 >> 62;
  if ((v8 >> 62) <= 1)
  {
    if (v10)
    {

      sub_2685B593C(v9, v8);
      *&v29 = v9;
      *(&v29 + 1) = v8 & 0x3FFFFFFFFFFFFFFFLL;
      *a1 = xmmword_26868A5E0;
      sub_2685B593C(0, 0xC000000000000000);
      result = sub_2685BEF9C(&v29, a2, a3, a4);
      v12 = v29;
      v13 = *(&v29 + 1) | 0x4000000000000000;
    }

    else
    {
      sub_2685B593C(v9, v8);
      *&v29 = v9;
      WORD4(v29) = v8;
      BYTE10(v29) = BYTE2(v8);
      BYTE11(v29) = BYTE3(v8);
      BYTE12(v29) = BYTE4(v8);
      BYTE13(v29) = BYTE5(v8);
      BYTE14(v29) = BYTE6(v8);
      result = sub_2685BAB8C(&v29, &v29 + BYTE6(v8), a2, a3, a4);
      v12 = v29;
      v13 = DWORD2(v29) | ((WORD6(v29) | (BYTE14(v29) << 16)) << 32);
    }

    *a1 = v12;
    a1[1] = v13;
    goto LABEL_15;
  }

  if (v10 != 2)
  {
    *(&v29 + 7) = 0;
    *&v29 = 0;
    result = sub_2685BAB8C(&v29, &v29, a2, a3, a4);
LABEL_15:
    v24 = *MEMORY[0x277D85DE8];
    return result;
  }

  sub_2685B593C(v9, v8);
  *&v29 = v9;
  *(&v29 + 1) = v8 & 0x3FFFFFFFFFFFFFFFLL;
  *a1 = xmmword_26868A5E0;
  sub_2685B593C(0, 0xC000000000000000);
  sub_2686897D4();
  v14 = *(&v29 + 1);
  v15 = *(v29 + 16);
  v16 = *(v29 + 24);
  result = sub_268689764();
  if (result)
  {
    v17 = result;
    v18 = sub_268689794();
    v19 = v15 - v18;
    if (__OFSUB__(v15, v18))
    {
      __break(1u);
    }

    else
    {
      v20 = __OFSUB__(v16, v15);
      v21 = v16 - v15;
      if (!v20)
      {
        v22 = sub_268689784();
        if (v22 >= v21)
        {
          v23 = v21;
        }

        else
        {
          v23 = v22;
        }

        result = sub_2685BAB8C((v17 + v19), v17 + v19 + v23, a2, a3, a4);
        *a1 = v29;
        a1[1] = v14 | 0x8000000000000000;
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}