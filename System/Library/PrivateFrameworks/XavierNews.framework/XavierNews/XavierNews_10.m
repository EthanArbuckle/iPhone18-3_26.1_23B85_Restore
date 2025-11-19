unint64_t sub_217F30800(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, double a6)
{
  if (*(a3 + 8) == 1.0 || *a3 == 0.0)
  {
    v17 = MEMORY[0x277D84F90];

    return sub_217ECBFEC(v17);
  }

  else
  {
    v10 = *(a3 + 16);
    v11 = a2[3];
    v12 = a2[4];
    __swift_project_boxed_opaque_existential_1(a2, v11);
    ReadonlyAggregateType.personalizationValue.getter(v11, v12);
    v18[2] = a4;
    v18[3] = a5;
    v18[4] = a2;
    *&v18[5] = a6;
    v18[6] = MEMORY[0x28223BE20](v14, v15);
    *&v18[7] = v10;
    return sub_217ECCA70(MEMORY[0x277D84F98], sub_217F3AD30, v18, a1);
  }
}

uint64_t sub_217F3092C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, __int128 *a6, uint64_t a7, uint64_t *a8, double a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v18 = *(a5 + 80);
  v33[4] = *(a5 + 64);
  v34[0] = v18;
  *(v34 + 15) = *(a5 + 95);
  v19 = *(a5 + 16);
  v33[0] = *a5;
  v33[1] = v19;
  v20 = *(a5 + 48);
  v33[2] = *(a5 + 32);
  v33[3] = v20;
  v21 = *a6;
  v22 = a6[1];
  v23 = a6[2];
  v24 = a6[3];
  v32 = *(a6 + 8);
  v31[2] = v23;
  v31[3] = v24;
  v31[0] = v21;
  v31[1] = v22;
  v25 = *a8;
  v26 = swift_allocObject();
  v27 = MEMORY[0x277D84F98];
  *(v26 + 16) = MEMORY[0x277D84F98];
  v30[2] = a11;
  v30[3] = a12;
  v30[4] = v26;
  v30[5] = v31;
  v30[6] = a7;
  v30[7] = v25;
  v30[8] = a2;
  v30[9] = a3;
  v30[10] = a4;
  v30[11] = v33;
  *&v30[12] = a9;
  v30[13] = a10;
  v28 = sub_217ED174C(v27, sub_217F3AC08, v30, a1);

  return v28;
}

uint64_t sub_217F30A54(uint64_t *a1, uint64_t a2, void *a3, int64_t a4, uint64_t a5, void *__src, uint64_t a7, uint64_t a8, double a9, double a10, double a11, double a12, double a13, double a14, double a15, double a16, uint64_t a17, char a18, uint64_t a19, double a20, uint64_t a21, double a22, uint64_t a23, unint64_t a24, uint64_t a25, char a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32)
{
  *v75 = a9;
  *&v75[1] = a10;
  *&v75[2] = a11;
  *&v75[3] = a12;
  memcpy(__dst, __src, 0x3CBuLL);
  v32 = *(a7 + 48);
  v72[2] = *(a7 + 32);
  v72[3] = v32;
  v73 = *(a7 + 64);
  v33 = *(a7 + 16);
  v72[0] = *a7;
  v72[1] = v33;
  v70 = a19;
  v71 = a17;
  v68[0] = a18;
  v69 = a13;
  v35 = *(a2 + 8);
  v34 = *(a2 + 16);
  if (*(a25 + 16) && (v36 = sub_217E8E88C(*(a2 + 8), *(a2 + 16)), (v37 & 1) != 0))
  {
    v62 = *(*(a25 + 56) + 8 * v36);
  }

  else
  {
    v62 = sub_217ECC4E0(MEMORY[0x277D84F90]);
  }

  if (*(a27 + 16) && (v38 = sub_217E8E88C(v35, v34), (v39 & 1) != 0))
  {
    v60 = 0;
    v61 = *(*(a27 + 56) + 8 * v38);
  }

  else
  {
    v61 = 0.0;
    v60 = 1;
  }

  v40 = type metadata accessor for ClassicArticleData();
  v48 = 1.0;
  if (*(a29 + 16))
  {
    v49 = sub_217E8E88C(*(a2 + *(v40 + 56)), *(a2 + *(v40 + 56) + 8));
    if (v50)
    {
      v48 = *(*(a29 + 56) + 8 * v49);
    }
  }

  v51 = a22;
  v52 = a20;
  if (*(a30 + 16))
  {
    v53 = sub_217E8E88C(v35, v34);
    if (v54)
    {
      v55 = *(*(a30 + 56) + 8 * v53);
    }

    else
    {
      v55 = 0;
    }

    v51 = a22;
    v52 = a20;
  }

  else
  {
    v55 = 0;
  }

  v56 = sub_217F38910(a3, a4, a2, v48, v75, a5, __dst, v72, a8, v41, v42, v43, v44, v45, v46, v47, &v71, v68, v52, v51, a23, a24, v62, a26 & 1, v61, v60, a28, v55, a31, a32);

  v57 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  __dst[0] = *a1;
  result = sub_217F1A318(v56, a2, isUniquelyReferenced_nonNull_native);
  *a1 = __dst[0];
  return result;
}

uint64_t sub_217F30D2C(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *(a2 + 8);
  v6 = *(a2 + 16);
  v7 = a1 + 64;
  v8 = 1 << *(a1 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & *(a1 + 64);
  v11 = (v8 + 63) >> 6;

  v12 = 0;
  v13 = MEMORY[0x277D84FA0];
  if (v10)
  {
    while (1)
    {
      v14 = v12;
LABEL_9:
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
      v16 = v15 | (v14 << 6);
      v2 = *(*(a1 + 48) + 16 * v16 + 8);
      v17 = *(*(a1 + 56) + 8 * v16);

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v70 = v13;
      sub_217ED12EC(isUniquelyReferenced_nonNull_native, v17);

      if (!v10)
      {
        goto LABEL_5;
      }
    }
  }

  while (1)
  {
LABEL_5:
    v14 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      __break(1u);
LABEL_53:
      __break(1u);
      goto LABEL_54;
    }

    if (v14 >= v11)
    {
      break;
    }

    v10 = *(v7 + 8 * v14);
    ++v12;
    if (v10)
    {
      v12 = v14;
      goto LABEL_9;
    }
  }

  v19 = *(v13 + 16);
  if (!v19)
  {
    goto LABEL_14;
  }

  v20 = sub_217E8E808(*(v13 + 16), 0);
  v69 = sub_217E97088(&v70, v20 + 4, v19, v13);

  sub_217E7F7A0();
  if (v69 != v19)
  {
    __break(1u);
LABEL_14:
    v20 = MEMORY[0x277D84F90];
  }

  v70 = v20;
  sub_217F357FC(&v70);

  v21 = v70;
  v2 = *(v70 + 2);
  if (!v2)
  {
    v23 = MEMORY[0x277D84F98];
LABEL_30:

    v38 = 1 << *(a1 + 32);
    v39 = -1;
    if (v38 < 64)
    {
      v39 = ~(-1 << v38);
    }

    v40 = v39 & *(a1 + 64);
    v41 = (v38 + 63) >> 6;
    v42 = v5 * v6;
    v43 = v5 + (*(v23 + 2) - 1);

    v2 = 0;
    v44 = MEMORY[0x277D84F98];
    while (v40)
    {
      v45 = v40;
LABEL_39:
      v40 = (v45 - 1) & v45;
      if (*(v23 + 2))
      {
        v47 = __clz(__rbit64(v45)) | (v2 << 6);
        v48 = (*(a1 + 48) + 16 * v47);
        v50 = *v48;
        v49 = v48[1];
        v51 = sub_217E8EA70(*(*(a1 + 56) + 8 * v47));
        if (v52)
        {
          v53 = *(*(v23 + 7) + 8 * v51);
          swift_bridgeObjectRetain_n();
          v67 = swift_isUniquelyReferenced_nonNull_native();
          v70 = v44;
          v55 = sub_217E8E88C(v50, v49);
          v56 = *(v44 + 2);
          v68 = v54;
          v57 = (v54 & 1) == 0;
          v58 = v56 + v57;
          if (__OFADD__(v56, v57))
          {
            goto LABEL_57;
          }

          if (*(v44 + 3) >= v58)
          {
            v61 = v54;
            if ((v67 & 1) == 0)
            {
              sub_217E8F918();
              v61 = v68;
            }
          }

          else
          {
            sub_217E924FC(v58, v67);
            v59 = sub_217E8E88C(v50, v49);
            v61 = v68;
            if ((v68 & 1) != (v60 & 1))
            {
              goto LABEL_60;
            }

            v55 = v59;
          }

          v62 = 1.0 - pow((v42 + v53) / v43, v4);
          if (v61)
          {

            v44 = v70;
            *(*(v70 + 7) + 8 * v55) = v62;
          }

          else
          {
            v44 = v70;
            *&v70[8 * (v55 >> 6) + 64] |= 1 << v55;
            v63 = (*(v44 + 6) + 16 * v55);
            *v63 = v50;
            v63[1] = v49;
            *(*(v44 + 7) + 8 * v55) = v62;

            v64 = *(v44 + 2);
            v30 = __OFADD__(v64, 1);
            v65 = v64 + 1;
            if (v30)
            {
              goto LABEL_58;
            }

            *(v44 + 2) = v65;
          }
        }
      }
    }

    while (1)
    {
      v46 = v2 + 1;
      if (__OFADD__(v2, 1))
      {
        goto LABEL_53;
      }

      if (v46 >= v41)
      {

        return v44;
      }

      v45 = *(v7 + 8 * v46);
      ++v2;
      if (v45)
      {
        v2 = v46;
        goto LABEL_39;
      }
    }
  }

  v22 = 0;
  v23 = MEMORY[0x277D84F98];
  while (v22 < *(v21 + 2))
  {
    v24 = *&v21[8 * v22 + 32];
    v25 = swift_isUniquelyReferenced_nonNull_native();
    v70 = v23;
    v26 = sub_217E8EA70(v24);
    v28 = *(v23 + 2);
    v29 = (v27 & 1) == 0;
    v30 = __OFADD__(v28, v29);
    v31 = v28 + v29;
    if (v30)
    {
      goto LABEL_55;
    }

    v32 = v27;
    if (*(v23 + 3) >= v31)
    {
      if ((v25 & 1) == 0)
      {
        v37 = v26;
        sub_217E900EC();
        v26 = v37;
      }
    }

    else
    {
      sub_217E93348(v31, v25);
      v26 = sub_217E8EA70(v24);
      if ((v32 & 1) != (v33 & 1))
      {
        goto LABEL_59;
      }
    }

    v34 = v22;
    v23 = v70;
    if (v32)
    {
      *(*(v70 + 7) + 8 * v26) = v34;
    }

    else
    {
      *&v70[8 * (v26 >> 6) + 64] |= 1 << v26;
      *(*(v23 + 6) + 8 * v26) = v24;
      *(*(v23 + 7) + 8 * v26) = v34;
      v35 = *(v23 + 2);
      v30 = __OFADD__(v35, 1);
      v36 = v35 + 1;
      if (v30)
      {
        goto LABEL_56;
      }

      *(v23 + 2) = v36;
    }

    if (v2 == ++v22)
    {
      goto LABEL_30;
    }
  }

LABEL_54:
  __break(1u);
LABEL_55:
  __break(1u);
LABEL_56:
  __break(1u);
LABEL_57:
  __break(1u);
LABEL_58:
  __break(1u);
LABEL_59:
  sub_217F4B1C4();
  __break(1u);
LABEL_60:
  sub_217F4B1C4();
  __break(1u);
  MEMORY[0x21CEAF510](v2);

  __break(1u);
  return result;
}

uint64_t sub_217F31278(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v30 = a1;
  v29[3] = a3;
  v29[1] = *(a5 + 8);
  v29[2] = a4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = sub_217F4AD74();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v11 = MEMORY[0x28223BE20](v7, v10);
  v13 = v29 - v12;
  v14 = *(AssociatedTypeWitness - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v11, v16);
  v18 = v29 - v17;
  v19 = *a2;
  v20 = a2[1];
  v31 = 2831206;
  v32 = 0xE300000000000000;
  MEMORY[0x21CEAEAC0](v19, v20);
  sub_217F4AAC4();

  if ((*(v14 + 48))(v13, 1, AssociatedTypeWitness) == 1)
  {
    (*(v8 + 8))(v13, v7);
    v21 = v30;
    v22 = *v30;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v31 = *v21;
    result = sub_217F1A0A8(v19, v20, isUniquelyReferenced_nonNull_native, 0.0);
  }

  else
  {
    (*(v14 + 32))(v18, v13, AssociatedTypeWitness);
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v26 = (*(AssociatedConformanceWitness + 32))(AssociatedTypeWitness, AssociatedConformanceWitness);
    v21 = v30;
    v27 = *v30;
    v28 = swift_isUniquelyReferenced_nonNull_native();
    v31 = *v21;
    sub_217F1A0A8(v19, v20, v28, v26);
    result = (*(v14 + 8))(v18, AssociatedTypeWitness);
  }

  *v21 = v31;
  return result;
}

unint64_t sub_217F31550(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a4 + 144);
  v57[8] = *(a4 + 128);
  v58 = v7;
  v59 = *(a4 + 160);
  v60 = *(a4 + 176);
  v8 = *(a4 + 80);
  v57[4] = *(a4 + 64);
  v57[5] = v8;
  v9 = *(a4 + 112);
  v57[6] = *(a4 + 96);
  v57[7] = v9;
  v10 = *(a4 + 16);
  v57[0] = *a4;
  v57[1] = v10;
  v11 = *(a4 + 48);
  v57[2] = *(a4 + 32);
  v57[3] = v11;
  v12 = type metadata accessor for ClassicArticleData();
  v13 = *(a1 + *(v12 + 92));
  result = sub_217F31900(v57, a1, a3);
  v16 = result;
  if (v59)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF52D0, &qword_217F4C930);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_217F4BC20;
    v18 = (a1 + *(v12 + 56));
    v19 = v18[1];
    *(inited + 32) = *v18;
    *(inited + 40) = v19;
    v56 = v16;

    result = sub_217E80630(inited);
  }

  v20 = 0;
  v21 = 0;
  v22 = 1 << *(v13 + 32);
  v23 = -1;
  if (v22 < 64)
  {
    v23 = ~(-1 << v22);
  }

  v24 = v23 & *(v13 + 64);
  v25 = 1.0;
  if (!v24)
  {
    goto LABEL_8;
  }

  do
  {
LABEL_6:
    while (1)
    {
      v26 = __clz(__rbit64(v24));
      v24 &= v24 - 1;
      v27 = *(v13 + 56) + 80 * (v26 | (v20 << 6));
      v21 |= *(v27 + 73);
      if ((*(v27 + 40) & 1) == 0)
      {
        break;
      }

      if (!v24)
      {
        goto LABEL_8;
      }
    }

    if (*(v27 + 32) < v25)
    {
      v25 = *(v27 + 32);
    }
  }

  while (v24);
  while (1)
  {
LABEL_8:
    v28 = v20 + 1;
    if (__OFADD__(v20, 1))
    {
      __break(1u);
      goto LABEL_38;
    }

    if (v28 >= ((v22 + 63) >> 6))
    {
      break;
    }

    v24 = *(v13 + 64 + 8 * v28);
    ++v20;
    if (v24)
    {
      v20 = v28;
      goto LABEL_6;
    }
  }

  if (*&v58 < v25)
  {
    v52[2] = MEMORY[0x28223BE20](result, v15);
    v52[3] = a2;
    v52[4] = v13;
    v52[5] = a1;
    v52[6] = v57;
    v53 = v29 & 1;
    v54 = v30 & 1;
    v55 = v31;
    v32 = sub_217ECCE80(MEMORY[0x277D84F98], sub_217F3ABD8, v52, v16);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF5378, &qword_217F4CBE0);
    result = sub_217F4AEB4();
    v33 = result;
    v34 = 0;
    v35 = 1 << *(v32 + 32);
    v36 = -1;
    if (v35 < 64)
    {
      v36 = ~(-1 << v35);
    }

    v37 = v36 & *(v32 + 64);
    v38 = (v35 + 63) >> 6;
    for (i = result + 64; v37; result = )
    {
      v40 = __clz(__rbit64(v37));
      v37 &= v37 - 1;
LABEL_26:
      v43 = v40 | (v34 << 6);
      v44 = (*(v32 + 48) + 16 * v43);
      v45 = *v44;
      result = v44[1];
      v46 = *(*(v32 + 56) + 8 * v43);
      v47 = (*&v46 & 0xFFFFFFFFFFFFFLL) != 0 ? 0.0 : *(*(v32 + 56) + 8 * v43);
      if ((~*&v46 & 0x7FF0000000000000) == 0)
      {
        v46 = v47;
      }

      *(i + ((v43 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v43;
      v48 = (v33[6] + 16 * v43);
      *v48 = v45;
      v48[1] = result;
      *(v33[7] + 8 * v43) = v46;
      v49 = v33[2];
      v50 = __OFADD__(v49, 1);
      v51 = v49 + 1;
      if (v50)
      {
        goto LABEL_39;
      }

      v33[2] = v51;
    }

    v41 = v34;
    while (1)
    {
      v34 = v41 + 1;
      if (__OFADD__(v41, 1))
      {
        break;
      }

      if (v34 >= v38)
      {

        return v33;
      }

      v42 = *(v32 + 64 + 8 * v34);
      ++v41;
      if (v42)
      {
        v40 = __clz(__rbit64(v42));
        v37 = (v42 - 1) & v42;
        goto LABEL_26;
      }
    }

LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
    return result;
  }

  return sub_217ECBFEC(MEMORY[0x277D84F90]);
}

uint64_t sub_217F31900(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 48);
  result = type metadata accessor for ClassicArticleData();
  v7 = *(result + 64);
  v8 = *(a2 + v7);
  if (v5)
  {
    v9 = *(v8 + 16);
    if (v9)
    {
      v10 = 0;
      v11 = a3 + 56;
      v12 = MEMORY[0x277D84F90];
      while (1)
      {
        v13 = v10;
        while (1)
        {
          if (v13 >= *(v8 + 16))
          {
            __break(1u);
            return result;
          }

          v10 = v13 + 1;
          if (*(a3 + 16))
          {
            break;
          }

LABEL_6:
          v13 = v10;
          if (v10 == v9)
          {
            return v12;
          }
        }

        v14 = (v8 + 32 + 16 * v13);
        v16 = *v14;
        v15 = v14[1];
        v17 = *(a3 + 40);
        sub_217F4B224();

        sub_217F4AB24();
        v18 = sub_217F4B254();
        v19 = -1 << *(a3 + 32);
        v20 = v18 & ~v19;
        if (((*(v11 + ((v20 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v20) & 1) == 0)
        {
          break;
        }

        v21 = ~v19;
        while (1)
        {
          v22 = (*(a3 + 48) + 16 * v20);
          v23 = *v22 == v16 && v22[1] == v15;
          if (v23 || (sub_217F4B144() & 1) != 0)
          {
            break;
          }

          v20 = (v20 + 1) & v21;
          if (((*(v11 + ((v20 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v20) & 1) == 0)
          {
            goto LABEL_5;
          }
        }

        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          result = sub_217E8DB18(0, *(v12 + 16) + 1, 1, v12);
          v12 = result;
        }

        v25 = *(v12 + 16);
        v24 = *(v12 + 24);
        if (v25 >= v24 >> 1)
        {
          result = sub_217E8DB18((v24 > 1), v25 + 1, 1, v12);
          v12 = result;
        }

        *(v12 + 16) = v25 + 1;
        v26 = v12 + 16 * v25;
        *(v26 + 32) = v16;
        *(v26 + 40) = v15;
        if (v10 == v9)
        {
          return v12;
        }
      }

LABEL_5:

      goto LABEL_6;
    }

    return MEMORY[0x277D84F90];
  }

  else
  {
    v27 = *(a2 + v7);

    return v8;
  }
}

unint64_t sub_217F31AF8(unint64_t result, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, int a8, double a9, double a10)
{
  v16 = result;
  v17 = *a2;
  v18 = a2[1];
  v19 = 0.0;
  if (*(a3 + 16))
  {
    result = sub_217E8E88C(*a2, a2[1]);
    if (v21)
    {
      v19 = *(*(a3 + 56) + 8 * result);
    }
  }

  if (*(a4 + 16))
  {
    result = sub_217E8E88C(v17, v18);
    if (v22)
    {
      v23 = *(a4 + 56) + 80 * result;
      v24 = *v23;
      v25 = *(v23 + 8);
      v26 = *(v23 + 16);
      v27 = *(v23 + 24);
      v41 = *(v23 + 73);
      v28 = (a5 + *(type metadata accessor for ClassicArticleData() + 56));
      if (v17 == *v28 && v18 == v28[1])
      {
        v30 = 1;
        v31 = 1.0 - a9;
        if ((v25 & 1) == 0)
        {
LABEL_14:
          v32 = v31 * v19;
          if (v27)
          {
            v26 = *(a6 + 16);
          }

          v33 = 176;
          if (v30)
          {
            v33 = 136;
          }

          v34 = 168;
          if (v30)
          {
            v34 = 128;
          }

          v35 = *(a6 + v33);
          v36 = v32 + pow(1.0 - v24, *(a6 + v34)) * a9;
          v37 = pow(1.0 - v26, v35) * v36;
          v38 = *v16;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v43 = *v16;
          if ((v41 | a7 & a8))
          {
            v40 = (1.0 - a10) * v37 + a10;
          }

          else
          {
            v40 = v37;
          }

          result = sub_217F1A0A8(v17, v18, isUniquelyReferenced_nonNull_native, v40);
          *v16 = v43;
          return result;
        }
      }

      else
      {
        v30 = sub_217F4B144();
        v31 = 1.0 - a9;
        if ((v25 & 1) == 0)
        {
          goto LABEL_14;
        }
      }

      v24 = *(a6 + 8);
      goto LABEL_14;
    }
  }

  return result;
}

uint64_t sub_217F31D00(uint64_t *a1, uint64_t a2, void *a3, Swift::Double a4, double a5, double a6)
{
  sub_217F3AD5C(a2, v24, &qword_27CBF5D18, &unk_217F5A2E0);
  v12 = v24[0];
  v11 = v24[1];
  sub_217F3AB48(&v25, v26);
  v13 = v27;
  v14 = v28;
  __swift_project_boxed_opaque_existential_1(v26, v27);
  v15 = (*(v14 + 32))(v13, v14);
  v16 = v27;
  v17 = v28;
  __swift_project_boxed_opaque_existential_1(v26, v27);
  v18 = ReadonlyAggregateType.personalizationValue(baseline:decayRate:)(a3, v16, v17, a4);
  v19 = 1.0;
  if (v18 < a5)
  {
    v20 = v15;
    if (v15 > a6)
    {
      v20 = a6;
    }

    v19 = 1.0 - v20 / a6 * (1.0 - v18 / a5);
  }

  v21 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v24[0] = *a1;
  sub_217F1A0A8(v12, v11, isUniquelyReferenced_nonNull_native, v19);

  *a1 = v24[0];
  return __swift_destroy_boxed_opaque_existential_1(v26);
}

double sub_217F31E6C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  v3 = *(a1 + 16);
  result = 1.0;
  if (v3)
  {
    v5 = v2 == 1.0;
  }

  else
  {
    v5 = 1;
  }

  if (!v5)
  {
    v6 = *a2;
    if (*a2 != 0.0)
    {
      v7 = (a1 + 32);
      v8 = *(a1 + 32);
      v9 = v3 - 1;
      if (v3 != 1)
      {
        v10 = (a1 + 40);
        do
        {
          v11 = *v10++;
          v12 = v11;
          if (v11 < v8)
          {
            v8 = v12;
          }

          --v9;
        }

        while (v9);
      }

      v14 = *(a2 + 24);
      v13 = *(a2 + 32);
      v15 = 1.0;
      do
      {
        v16 = *v7++;
        v15 = v15 * v16;
        --v3;
      }

      while (v3);
      v17 = v14 * pow(v8, *(a2 + 32));
      v18 = v6 * (1.0 - (v17 + (1.0 - v14) * pow(v15, v13)));

      return pow(v2, v18);
    }
  }

  return result;
}

double sub_217F31F60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5)
{
  v5 = 1.0;
  if (!*(a2 + 16))
  {
    return v5;
  }

  v6 = *(a4 + 104);
  if (v6 <= 0.0)
  {
    return v5;
  }

  v48 = *(a4 + 112);
  v10 = *(a4 + 120);
  v11 = a1 + 56;
  v12 = 1 << *(a1 + 32);
  v13 = -1;
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  v14 = v13 & *(a1 + 56);
  v15 = (v12 + 63) >> 6;
  v16 = *(a4 + 96) * a5;

  v18 = 0;
  v19 = MEMORY[0x277D84F90];
  while (v14)
  {
LABEL_13:
    v21 = (*(a1 + 48) + ((v18 << 10) | (16 * __clz(__rbit64(v14)))));
    v23 = *v21;
    v22 = v21[1];
    v24 = *(a2 + 16);

    v25 = 0.0;
    if (v24)
    {
      v26 = sub_217E8E88C(v23, v22);
      if (v27)
      {
        v25 = *(*(a2 + 56) + 8 * v26);
      }
    }

    v28 = a5;
    if (*(a3 + 16))
    {
      v29 = sub_217E8E88C(v23, v22);
      v28 = a5;
      if (v30)
      {
        v31 = *(a3 + 56) + 24 * v29;
        if (*(v31 + 16))
        {
          v28 = a5;
        }

        else
        {
          v28 = *(v31 + 8);
        }
      }
    }

    if (v16 >= v28)
    {
      v32 = v48;
    }

    else
    {
      v32 = 0;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (v32 == 1)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v19 = sub_217E8E218(0, *(v19 + 2) + 1, 1, v19);
      }

      v35 = *(v19 + 2);
      v34 = *(v19 + 3);
      v36 = v35 + 1;
      if (v35 >= v34 >> 1)
      {
        v19 = sub_217E8E218((v34 > 1), v35 + 1, 1, v19);
      }

      result = 1.0;
    }

    else
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v19 = sub_217E8E218(0, *(v19 + 2) + 1, 1, v19);
      }

      v35 = *(v19 + 2);
      v37 = *(v19 + 3);
      v36 = v35 + 1;
      if (v35 >= v37 >> 1)
      {
        v19 = sub_217E8E218((v37 > 1), v35 + 1, 1, v19);
      }

      result = pow(v6 * v25 + 1.0, v28);
    }

    v14 &= v14 - 1;
    *(v19 + 2) = v36;
    *&v19[8 * v35 + 32] = result;
  }

  while (1)
  {
    v20 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      __break(1u);
      return result;
    }

    if (v20 >= v15)
    {
      break;
    }

    v14 = *(v11 + 8 * v20);
    ++v18;
    if (v14)
    {
      v18 = v20;
      goto LABEL_13;
    }
  }

  v38 = *(v19 + 2);
  if (v10 == 0.0)
  {
    if (v38)
    {
      v5 = *(v19 + 4);
      v39 = v38 - 1;
      if (v38 != 1)
      {
        v40 = (v19 + 40);
        do
        {
          v41 = *v40++;
          v42 = v41;
          if (v5 < v41)
          {
            v5 = v42;
          }

          --v39;
        }

        while (v39);
      }
    }

    else
    {
      v5 = 1.0;
    }

    return v5;
  }

  if (v38)
  {
    v43 = (v19 + 32);
    v44 = 0.0;
    do
    {
      v45 = *v43++;
      v46 = log(v45);
      v44 = v44 + pow(v46, 1.0 / v10);
      --v38;
    }

    while (v38);
  }

  else
  {
    v44 = 0.0;
  }

  v47 = pow(v44, v10);

  return exp(v47);
}

double sub_217F322DC(uint64_t a1, uint64_t a2)
{

  v4 = sub_217F38740(a2, a1, sub_217F38328, sub_217F38328);

  v5 = sub_217F2DF90(v4);

  v6 = *(v5 + 16);
  if (v6)
  {
    v7 = (v5 + 32);
    v8 = 1.0;
    do
    {
      v9 = *v7++;
      v8 = v8 * v9;
      --v6;
    }

    while (v6);
  }

  else
  {
    v8 = 1.0;
  }

  return v8;
}

uint64_t sub_217F32398(uint64_t a1, uint64_t a2)
{

  v4 = sub_217F38740(a2, a1, sub_217F38528, sub_217F38528);

  v5 = sub_217F2E298(v4);

  v6 = *(v5 + 16);
  if (v6)
  {
    v7 = *(v5 + 32);
    v8 = v6 - 1;
    if (v6 != 1)
    {
      v9 = (v5 + 40);
      do
      {
        v10 = *v9++;
        v11 = v10;
        if (v10 < v7)
        {
          v7 = v11;
        }

        --v8;
      }

      while (v8);
    }

    v12 = v7;
  }

  else
  {
    v12 = 0.0;
  }

  return *&v12;
}

uint64_t sub_217F32468(void *a1, int64_t a2, uint64_t a3, _OWORD *a4, uint64_t a5, void *__src, uint64_t a7, uint64_t a8, uint64_t *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, unint64_t a15, uint64_t a16, uint64_t a17, char a18, __int128 a19, uint64_t a20, uint64_t a21)
{
  memcpy(__dst, __src, 0x3CBuLL);
  v23 = *(a7 + 48);
  v44[2] = *(a7 + 32);
  v44[3] = v23;
  v45 = *(a7 + 64);
  v24 = *(a7 + 16);
  v44[0] = *a7;
  v44[1] = v24;
  v25 = *a9;
  v26 = *a10;
  *&v24 = *(a10 + 8);
  v27 = *(a10 + 16);
  v28 = a4[1];
  v47[0] = *a4;
  v47[1] = v28;
  v42 = v27;
  v43 = v25;
  v40[0] = v26;
  v41 = v24;
  return sub_217F38910(a1, a2, a3, 1.0, v47, a5, __dst, v44, a8, *v47, *&v28, v29, v30, v31, v32, v33, &v43, v40, *&a11, *&a13, a14, a15, a16, 0, *&a17, a18 & 1, a19, *(&a19 + 1), a20, a21);
}

void *sub_217F32598@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *(a2 + 328);
  v5 = *(a2 + 336);
  v6 = *(a2 + 600);
  v7 = *(a2 + 608);
  v19 = *(a2 + 296);
  v20 = *(a2 + 312);
  v15 = *(a2 + 568);
  v16 = *(a2 + 584);
  v17 = *(a2 + 824);
  v18 = *(a2 + 840);
  v8 = *(a2 + 856);
  v9 = *(a2 + 864);
  v10 = a1[3];
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v10);
  result = (*(v11 + 48))(&v21, v10, v11);
  v13 = v19;
  v14 = v20;
  if (v21 >= 2u)
  {
    v4 = v8;
    v5 = v9;
    v13 = v17;
    v14 = v18;
    if (v21 == 2)
    {
      v4 = v6;
      v5 = v7;
      v13 = v15;
      v14 = v16;
    }
  }

  *a3 = v13;
  *(a3 + 16) = v14;
  *(a3 + 32) = v4;
  *(a3 + 40) = v5;
  return result;
}

uint64_t sub_217F3267C(uint64_t *a1, __int128 *a2, uint64_t a3, double *a4, uint64_t a5, uint64_t a6)
{
  v11 = a2[1];
  v33 = *a2;
  v34 = v11;
  v35 = a2[2];
  v36 = *(a2 + 48);
  v12 = type metadata accessor for ClassicArticleData();
  v13 = 1.0;
  if (v36 <= 2u)
  {
    if (v36 == 1)
    {
      v13 = 0.0;
    }

    else if (v36 == 2)
    {
      v13 = *a4;
    }

    goto LABEL_32;
  }

  v14 = *(a3 + *(v12 + 92));
  if (v36 == 3)
  {
    if (*(a5 + 16))
    {
      v19 = sub_217E8E88C(v35, *(&v35 + 1));
      if (v20)
      {
        v13 = *(*(a5 + 56) + (v19 << 6) + 24);
        goto LABEL_32;
      }
    }

    if (*(v14 + 16))
    {
      v21 = sub_217E8E88C(v35, *(&v35 + 1));
      if (v22)
      {
        v23 = *(v14 + 56) + 80 * v21;
        if ((*(v23 + 56) & 1) == 0)
        {
          if (*(a6 + 16))
          {
            v24 = sub_217E8E904(*(v23 + 48));
            if (v25)
            {
              goto LABEL_24;
            }
          }
        }
      }
    }
  }

  else if (v36 == 4)
  {
    v15 = (a3 + *(v12 + 56));
    v13 = a4[7];
    v16 = v34 == *v15 && *(&v34 + 1) == v15[1];
    if (!v16 && (sub_217F4B144() & 1) == 0)
    {
      if (*(a5 + 16))
      {
        v17 = sub_217E8E88C(v34, *(&v34 + 1));
        if (v18)
        {
          v13 = *(*(a5 + 56) + (v17 << 6) + 48);
          goto LABEL_32;
        }
      }

      if (!*(v14 + 16) || (v26 = sub_217E8E88C(v34, *(&v34 + 1)), (v27 & 1) == 0) || (v28 = *(v14 + 56) + 80 * v26, (*(v28 + 56) & 1) != 0) || !*(a6 + 16))
      {
        v13 = 1.0;
        goto LABEL_32;
      }

      v24 = sub_217E8E904(*(v28 + 48));
      v13 = 1.0;
      if ((v29 & 1) == 0)
      {
        goto LABEL_32;
      }

LABEL_24:
      v13 = *(*(a6 + 56) + 8 * v24);
    }
  }

LABEL_32:
  v30 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v37 = *a1;
  result = sub_217F1A4A8(&v33, isUniquelyReferenced_nonNull_native, v13);
  *a1 = v37;
  return result;
}

unint64_t sub_217F328A0(unint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t *a6, uint64_t a7)
{
  v7 = *(result + 48);
  if (v7 <= 2)
  {
    if (v7 == 2)
    {
      v8 = *a4;
    }

    return result;
  }

  v10 = *a6;
  if (v7 == 4)
  {
    v16 = a4[7];
    v17 = *(result + 16);
    v18 = *(result + 24);
    if (v17 != a2 || v18 != a3)
    {
      v20 = a7;
      v21 = *(result + 16);
      result = sub_217F4B144();
      if ((result & 1) == 0)
      {
        if (*(a5 + 16))
        {
          result = sub_217E8E88C(v17, v18);
          if (v22)
          {
            v23 = *(*(a5 + 56) + (result << 6) + 48);
            return result;
          }
        }

        if (*(v20 + 16))
        {
          result = sub_217E8E88C(v17, v18);
          if (v31)
          {
            v27 = *(v20 + 56);
            goto LABEL_21;
          }
        }
      }
    }
  }

  else
  {
    if (v7 != 3)
    {
      return result;
    }

    v11 = *(result + 32);
    v12 = *(result + 40);
    if (*(a5 + 16))
    {
      v13 = a7;
      result = sub_217E8E88C(*(result + 32), v12);
      a7 = v13;
      if (v14)
      {
        v15 = *(*(a5 + 56) + (result << 6) + 24);
        return result;
      }
    }

    if (*(a7 + 16))
    {
      v24 = v11;
      v25 = a7;
      result = sub_217E8E88C(v24, v12);
      if (v26)
      {
        v27 = *(v25 + 56);
LABEL_21:
        v28 = v27 + 80 * result;
        if ((*(v28 + 56) & 1) == 0)
        {
          if (*(v10 + 16))
          {
            result = sub_217E8E904(*(v28 + 48));
            if (v29)
            {
              v30 = *(*(v10 + 56) + 8 * result);
            }
          }
        }
      }
    }
  }

  return result;
}

double sub_217F32A40(char *a1, unsigned __int8 *a2, uint64_t a3, int64_t a4)
{
  v32[0] = 2831206;
  v32[1] = 0xE300000000000000;
  MEMORY[0x21CEAEAC0]();
  v7 = 2831206;
  v8 = 0xE300000000000000;

  v9 = sub_217E8DE90(0, 1, 1, MEMORY[0x277D84F90]);
  v11 = *(v9 + 2);
  v10 = *(v9 + 3);
  v12 = v11 + 1;
  if (v11 >= v10 >> 1)
  {
    goto LABEL_17;
  }

  while (1)
  {
    *(v9 + 2) = v12;
    v13 = &v9[56 * v11];
    *(v13 + 4) = v7;
    *(v13 + 5) = v8;
    *(v13 + 6) = a1;
    *(v13 + 7) = a2;
    *(v13 + 8) = 0;
    *(v13 + 9) = 0;
    v13[80] = 4;
    v35 = v9;
    v14 = a3;
    a3 = 0;
    sub_217F2E5A0(v14, &v35);
    a1 = v35;
    v11 = *(v35 + 2);
    if (!v11)
    {
      break;
    }

    v7 = 0;
    v15 = v35 + 80;
    v26 = v35 + 80;
    v16 = 0.0;
LABEL_4:
    a2 = &v15[56 * v7];
    v12 = a4;
    while (1)
    {
      v10 = *(a1 + 2);
      if (v7 >= v10)
      {
        break;
      }

      v17 = *(a2 - 6);
      v8 = *(a2 - 5);
      v19 = *(a2 - 4);
      v18 = *(a2 - 3);
      v28 = *(a2 - 2);
      v29 = *(a2 - 1);
      v30 = *a2;

      if (*(v12 + 16))
      {
        sub_217E81030(v17, v8, v19, v18, v28, v29, v30);
        v20 = sub_217E8E88C(v17, v8);
        a3 = v21;

        if (a3)
        {
          sub_217E844C0(*(a4 + 56) + 40 * v20, v31);
          sub_217F3AB48(v31, v32);
          a3 = v33;
          v22 = v34;
          __swift_project_boxed_opaque_existential_1(v32, v33);
          v23 = (*(v22 + 24))(a3, v22);
          sub_217E810D0(v17, v8, v19, v18, v28, v29, v30);
          v16 = v16 + v23;
          __swift_destroy_boxed_opaque_existential_1(v32);
          v24 = v11 - 1 == v7++;
          v15 = v26;
          if (v24)
          {
            goto LABEL_15;
          }

          goto LABEL_4;
        }

        sub_217E810D0(v17, v8, v19, v18, v28, v29, v30);
        v12 = a4;
      }

      else
      {
      }

      ++v7;
      a2 += 56;
      if (v11 == v7)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_17:
    v9 = sub_217E8DE90((v10 > 1), v12, 1, v9);
  }

  v16 = 0.0;
LABEL_15:

  return v16;
}

uint64_t sub_217F32CCC(uint64_t a1)
{
  v2 = MEMORY[0x277D84F98];
  v31 = MEMORY[0x277D84F98];
  v3 = a1 + 64;
  v4 = 1 << *(a1 + 32);
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  else
  {
    v5 = -1;
  }

  v6 = v5 & *(a1 + 64);
  v7 = (v4 + 63) >> 6;

  v9 = 0;
  if (v6)
  {
    while (1)
    {
LABEL_5:
      while (1)
      {
        v10 = __clz(__rbit64(v6));
        v6 &= v6 - 1;
        v11 = v10 | (v9 << 6);
        v12 = *(a1 + 56) + 80 * v11;
        if ((*(v12 + 40) & 1) == 0)
        {
          break;
        }

        if (!v6)
        {
          goto LABEL_7;
        }
      }

      v14 = (*(a1 + 48) + 16 * v11);
      v29 = v14[1];
      v30 = *v14;
      v15 = *(v12 + 32);
      v16 = *(v2 + 16);
      if (*(v2 + 24) <= v16)
      {

        sub_217E924FC(v16 + 1, 1);
        v2 = v31;
      }

      else
      {
      }

      v17 = *(v2 + 40);
      sub_217F4B224();
      sub_217F4AB24();
      result = sub_217F4B254();
      v18 = v2 + 64;
      v19 = -1 << *(v2 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v2 + 64 + 8 * (v20 >> 6))) == 0)
      {
        break;
      }

      v22 = __clz(__rbit64((-1 << v20) & ~*(v2 + 64 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
      v23 = v29;
LABEL_24:
      *(v18 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
      v28 = (*(v2 + 48) + 16 * v22);
      *v28 = v30;
      v28[1] = v23;
      *(*(v2 + 56) + 8 * v22) = v15;
      ++*(v2 + 16);
      if (!v6)
      {
        goto LABEL_7;
      }
    }

    v24 = 0;
    v25 = (63 - v19) >> 6;
    v23 = v29;
    while (++v21 != v25 || (v24 & 1) == 0)
    {
      v26 = v21 == v25;
      if (v21 == v25)
      {
        v21 = 0;
      }

      v24 |= v26;
      v27 = *(v18 + 8 * v21);
      if (v27 != -1)
      {
        v22 = __clz(__rbit64(~v27)) + (v21 << 6);
        goto LABEL_24;
      }
    }
  }

  else
  {
LABEL_7:
    while (1)
    {
      v13 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        break;
      }

      if (v13 >= v7)
      {

        return v2;
      }

      v6 = *(v3 + 8 * v13);
      ++v9;
      if (v6)
      {
        v9 = v13;
        goto LABEL_5;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

double sub_217F32F24(char a1, long double *a2, double a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if ((a1 & 1) == 0)
  {
    return 1.0;
  }

  v7 = a2[77];
  v8 = a2[78];
  v9 = a2[79];
  v10 = a2[80];
  v11 = *(a6 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  ReadonlyAggregateType.personalizationValue.getter(AssociatedTypeWitness, AssociatedConformanceWitness);
  if (v14 >= a3)
  {
    if (v14 != 0.0)
    {
      v7 = v7 * pow(a3 / v14, v10);
    }
  }

  else if (v14 != 1.0)
  {
    v7 = 1.0 - (1.0 - v7) * pow((1.0 - a3) / (1.0 - v14), v9);
  }

  return pow(v7, v8);
}

uint64_t sub_217F3304C(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  if (result)
  {
    v6 = a4;
    v7 = *(a2 + 144);
    v66 = *(a2 + 128);
    v67 = v7;
    v68 = *(a2 + 160);
    v8 = *(a2 + 168);
    v9 = a4 + 64;
    v10 = 1 << *(a4 + 32);
    v11 = -1;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    v12 = v11 & *(a4 + 64);
    v13 = (v10 + 63) >> 6;

    v14 = 0;
    v58 = MEMORY[0x277D84F98];
    v59 = v6;
    v60 = v13;
    v61 = v9;
LABEL_5:
    v15 = v14;
    while (v12)
    {
      v14 = v15;
LABEL_13:
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
      v17 = v16 | (v14 << 6);
      v18 = *(v6 + 48) + 56 * v17;
      v20 = *v18;
      v19 = *(v18 + 8);
      v21 = *(v18 + 24);
      v62 = *(v18 + 16);
      v23 = *(v18 + 32);
      v22 = *(v18 + 40);
      v24 = *(v18 + 48);
      v25 = *(*(v6 + 56) + 8 * v17);

      if (*(a5 + 16))
      {
        sub_217E81030(v20, v19, v62, v21, v23, v22, v24);
        v26 = sub_217E8E88C(v20, v19);
        if (v27)
        {
          v55 = v20;
          v56 = v19;
          v28 = *(*(a5 + 56) + 8 * v26);
          v29 = 1.0;
          if (v8 > 0.0)
          {
            v29 = pow(v25, v8);
          }

          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *&v63[0] = v58;
          v32 = sub_217E8E88C(v20, v56);
          v33 = v58[2];
          v34 = (v31 & 1) == 0;
          v35 = v33 + v34;
          if (__OFADD__(v33, v34))
          {
            goto LABEL_37;
          }

          v36 = v31;
          if (v58[3] >= v35)
          {
            v40 = isUniquelyReferenced_nonNull_native;
            v39 = v31;
            v6 = v59;
            if ((v40 & 1) == 0)
            {
              sub_217E8F918();
              goto LABEL_22;
            }
          }

          else
          {
            sub_217E924FC(v35, isUniquelyReferenced_nonNull_native);
            v37 = sub_217E8E88C(v55, v56);
            if ((v36 & 1) != (v38 & 1))
            {
              goto LABEL_39;
            }

            v32 = v37;
            v39 = v36;
LABEL_22:
            v6 = v59;
          }

          v41 = pow(v28, v29);
          v42 = v41;
          if (v39)
          {
            v43 = v56;

            v58 = *&v63[0];
            *(*(*&v63[0] + 56) + 8 * v32) = v42;
            v44 = v24;
          }

          else
          {
            v45 = *&v63[0];
            *(*&v63[0] + 8 * (v32 >> 6) + 64) |= 1 << v32;
            v46 = (v45[6] + 16 * v32);
            v43 = v56;
            *v46 = v55;
            v46[1] = v56;
            *(v45[7] + 8 * v32) = v41;
            v47 = v45[2];
            v48 = __OFADD__(v47, 1);
            v49 = v47 + 1;
            v44 = v24;
            if (v48)
            {
              goto LABEL_38;
            }

            v58 = v45;
            v45[2] = v49;
          }

          sub_217E810D0(v55, v43, v62, v21, v23, v22, v44);
          v13 = v60;
          v9 = v61;
          goto LABEL_5;
        }

        sub_217E810D0(v20, v19, v62, v21, v23, v22, v24);
        v15 = v14;
        v6 = v59;
      }

      else
      {

        v15 = v14;
      }

      v13 = v60;
      v9 = v61;
    }

    while (1)
    {
      v14 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v14 >= v13)
      {

        v50 = *a3;
        *a3 = v58;

        v51 = *a3;
        v52 = *(*a3 + 16);
        if (!v52)
        {
          goto LABEL_33;
        }

        v53 = sub_217E8E808(*(*a3 + 16), 0);
        v54 = sub_217E97188(v63, v53 + 4, v52, v51);

        sub_217E7F7A0();
        if (v54 != v52)
        {
          __break(1u);
LABEL_33:
          v53 = MEMORY[0x277D84F90];
        }

        v63[0] = v66;
        v63[1] = v67;
        v64 = v68;
        v65 = v8;
        sub_217F31E6C(v53, v63);
      }

      v12 = *(v9 + 8 * v14);
      ++v15;
      if (v12)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
LABEL_39:
    result = sub_217F4B1C4();
    __break(1u);
  }

  return result;
}

double sub_217F33468(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 *a4, long double a5)
{
  v6 = *(a4 + 1);
  sub_217F340B0(*a4, *(a4 + 2), a3, a1, a2);

  return pow(v7, a5);
}

double sub_217F334B8(uint64_t a1)
{
  v1 = *(a1 + 24);
  v2 = 0.0;
  if (*(v1 + 16))
  {
    v3 = sub_217E8E88C(42, 0xE100000000000000);
    if (v4)
    {
      v5 = *(v1 + 56) + 24 * v3;
      v6 = *(v5 + 16);
      if (v6 > 0.0)
      {
        return *(v5 + 8) / v6;
      }
    }
  }

  return v2;
}

uint64_t sub_217F33520@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void (*a3)(void *__return_ptr, uint64_t)@<X2>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  swift_beginAccess();
  v10 = *(a4 + 16);
  if (*(v10 + 16) && (v11 = sub_217E8E88C(a1, a2), (v12 & 1) != 0))
  {
    v13 = *(v10 + 56) + 24 * v11;
    v14 = *v13;
    v15 = *(v13 + 8);
    v16 = *(v13 + 16);
  }

  else
  {
    v17 = swift_endAccess();
    a3(v22, v17);
    v14 = *v22;
    v15 = v22[1];
    v16 = v23;
    swift_beginAccess();
    v18 = *(a4 + 16);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v21 = *(a4 + 16);
    *(a4 + 16) = 0x8000000000000000;
    sub_217F1A5B0(v15, v16, a1, a2, isUniquelyReferenced_nonNull_native, v14);
    *(a4 + 16) = v21;
  }

  result = swift_endAccess();
  *a5 = v14;
  *(a5 + 8) = v15;
  *(a5 + 16) = v16;
  return result;
}

uint64_t sub_217F33654(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, double a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v35 = type metadata accessor for ClassicArticleData();
  v17 = (a2 + *(v35 + 56));
  v18 = *v17;
  v19 = v17[1];
  v73 = 2831206;
  v74 = 0xE300000000000000;
  MEMORY[0x21CEAEAC0](v18, v19);
  v57 = a13;
  v58 = a14;
  v59 = v18;
  v60 = v19;
  v61 = a4;
  v62 = a5;
  v63 = a6;
  v64 = a2;
  v65 = 2831206;
  v66 = 0xE300000000000000;
  v67 = a7;
  v68 = a8;
  v69 = a10;
  v70 = a11;
  v71 = a9;
  sub_217F33520(2831206, 0xE300000000000000, sub_217F3AC50, a3, &v73);

  v20 = *&v73;
  v21 = v74;
  v22 = v75;
  v23 = MEMORY[0x277D84F98];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v72 = v23;
  sub_217F1A5B0(v21, v22, v18, v19, isUniquelyReferenced_nonNull_native, v20);
  v25 = *(a2 + *(v35 + 64));
  v76 = v23;
  v41 = a13;
  v42 = a14;
  v43 = a12;
  v44 = a11;
  v45 = v18;
  v46 = v19;
  v47 = a7;
  v48 = &v76;
  v49 = a3;
  v50 = a4;
  v51 = a5;
  v52 = a6;
  v53 = a2;
  v54 = a8;
  v55 = a10;
  v56 = a9;
  sub_217F2E770(sub_217F3AC94, v40, v25);
  v26 = *(a2 + 8);
  v27 = *(a2 + 16);
  v28 = v76;

  v29 = *a1;
  v30 = swift_isUniquelyReferenced_nonNull_native();
  v73 = *a1;
  sub_217F1A710(v28, v26, v27, v30);

  *a1 = v73;
  return result;
}

uint64_t sub_217F3389C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X6>, uint64_t a5@<X7>, uint64_t a6@<X8>, Swift::Double a7@<D0>, uint64_t a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v18 = *(a3 + 56);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF52D0, &qword_217F4C930);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_217F4BC20;
  *(inited + 32) = a4;
  *(inited + 40) = a5;

  v20 = sub_217F2E804(a1, a2, inited, a8, a9, a10, a11, a7, a12, a13);
  LOBYTE(a4) = v21;
  swift_setDeallocating();
  result = sub_217E97320(inited + 32);
  *a6 = v18;
  *(a6 + 8) = v20;
  *(a6 + 16) = a4 & 1;
  return result;
}

double sub_217F339AC(uint64_t a1, uint64_t a2, char a3, char a4, uint64_t a5, uint64_t a6, uint64_t *a7, uint64_t a8)
{
  if (a3)
  {
    return *(a5 + 56);
  }

  v11 = *a7;
  if (*(a6 + 16) && (v12 = a1, v13 = a2, v15 = sub_217E8E88C(a1, a2), a1 = v12, v17 = v16, a2 = v13, (v17 & 1) != 0))
  {
    v18 = *(a6 + 56) + (v15 << 6);
    v19 = 48;
    if (a4)
    {
      v19 = 24;
    }

    return *(v18 + v19);
  }

  else
  {
    result = 1.0;
    if (*(a8 + 16))
    {
      v20 = sub_217E8E88C(a1, a2);
      if ((v21 & 1) != 0 && (v22 = *(a8 + 56) + 80 * v20, (*(v22 + 56) & 1) == 0) && *(v11 + 16))
      {
        v23 = sub_217E8E904(*(v22 + 48));
        result = 1.0;
        if (v24)
        {
          return *(*(v11 + 56) + 8 * v23);
        }
      }

      else
      {
        return 1.0;
      }
    }
  }

  return result;
}

uint64_t sub_217F33A98(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t *a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  v18 = *a1;
  v17 = a1[1];
  *&v53 = 2831206;
  *(&v53 + 1) = 0xE300000000000000;
  MEMORY[0x21CEAEAC0](v18, v17);
  v19 = v53;
  v58 = v53;
  v20 = *(a2 + 16);

  if (v20 && (v21 = sub_217E8E88C(v18, v17), (v22 & 1) != 0))
  {
    v23 = (*(a2 + 56) + 16 * v21);
    v25 = *v23;
    v24 = v23[1];
    *&v53 = 2831206;
    *(&v53 + 1) = 0xE300000000000000;

    MEMORY[0x21CEAEAC0](v25, v24);

    v26 = v53;
    v27 = sub_217E8DB18(0, 1, 1, MEMORY[0x277D84F90]);
    v29 = *(v27 + 2);
    v28 = *(v27 + 3);
    if (v29 >= v28 >> 1)
    {
      v27 = sub_217E8DB18((v28 > 1), v29 + 1, 1, v27);
    }

    *(v27 + 2) = v29 + 1;
    *&v27[16 * v29 + 32] = v26;
  }

  else
  {
    v27 = MEMORY[0x277D84F90];
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v27 = sub_217E8DB18(0, *(v27 + 2) + 1, 1, v27);
  }

  v31 = *(v27 + 2);
  v30 = *(v27 + 3);
  if (v31 >= v30 >> 1)
  {
    v27 = sub_217E8DB18((v30 > 1), v31 + 1, 1, v27);
  }

  v32 = a16;
  v33 = a10;
  *(v27 + 2) = v31 + 1;
  *&v27[16 * v31 + 32] = v19;
  v57 = v27;
  v35 = *(&v19 + 1);
  v34 = v19;
  if (*(a3 + 8))
  {
    *&v53 = 2831462;
    *(&v53 + 1) = 0xE300000000000000;
    MEMORY[0x21CEAEAC0](a4, a5);
    MEMORY[0x21CEAEAC0](43, 0xE100000000000000);
    MEMORY[0x21CEAEAC0](v18, v17);
    v35 = 0xE300000000000000;
    v34 = 2831462;
    v37 = *(v27 + 2);
    v36 = *(v27 + 3);

    if (v37 >= v36 >> 1)
    {
      v27 = sub_217E8DB18((v36 > 1), v37 + 1, 1, v27);
    }

    *(v27 + 2) = v37 + 1;
    v38 = &v27[16 * v37];
    *(v38 + 4) = 2831462;
    *(v38 + 5) = 0xE300000000000000;
    v57 = v27;
    if (*(a6 + 16) && (v39 = sub_217E8E88C(2831462, 0xE300000000000000), (v40 & 1) != 0))
    {
      sub_217E844C0(*(a6 + 56) + 40 * v39, &v53);
      sub_217F3ADC4(&v53, &qword_27CBF73D0, &qword_217F5A2D8);

      *&v58 = 2831462;
      *(&v58 + 1) = 0xE300000000000000;
    }

    else
    {
      v55 = 0;
      v53 = 0u;
      v54 = 0u;

      sub_217F3ADC4(&v53, &qword_27CBF73D0, &qword_217F5A2D8);
      v35 = *(&v19 + 1);
      v34 = v19;
    }

    v33 = a10;
    v32 = a16;
  }

  MEMORY[0x28223BE20](v33, v32);

  sub_217F33520(v34, v35, sub_217F3ACE4, a8, &v53);

  v41 = v53;
  v42 = v54;
  v43 = *a7;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v56 = *a7;
  *a7 = 0x8000000000000000;
  sub_217F1A5B0(*(&v41 + 1), v42, v18, v17, isUniquelyReferenced_nonNull_native, *&v41);
  v45 = *a7;
  *a7 = v56;
}

uint64_t sub_217F33F0C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>, Swift::Double a9@<D0>, uint64_t a10, uint64_t *a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  if (*a3 == a4 && a3[1] == a5)
  {
    v23 = 1;
  }

  else
  {
    v23 = sub_217F4B144();
  }

  v24 = *(a10 + *(type metadata accessor for ClassicArticleData() + 92));
  if (*(a6 + 16) && (v25 = sub_217E8E88C(a1, a2), (v26 & 1) != 0))
  {
    v27 = 24;
    if (v23)
    {
      v27 = 48;
    }

    v28 = *(*(a6 + 56) + (v25 << 6) + v27);
  }

  else
  {
    v28 = 1.0;
    if (*(v24 + 16))
    {
      v29 = sub_217E8E88C(a1, a2);
      if (v30)
      {
        v31 = *(v24 + 56) + 80 * v29;
        if ((*(v31 + 56) & 1) == 0)
        {
          if (*(a7 + 16))
          {
            v32 = sub_217E8E904(*(v31 + 48));
            if (v33)
            {
              v28 = *(*(a7 + 56) + 8 * v32);
            }
          }
        }
      }
    }
  }

  v34 = *a11;

  v35 = sub_217F2E804(a1, a2, v34, a12, a13, a14, a15, a9, a16, a17);
  v37 = v36;

  *a8 = v28;
  *(a8 + 8) = v35;
  *(a8 + 16) = v37 & 1;
  return result;
}

uint64_t sub_217F340B0(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (result <= 1u)
  {
    if (result)
    {
      v13 = 1 << *(a3 + 32);
      v14 = -1;
      if (v13 < 64)
      {
        v14 = ~(-1 << v13);
      }

      v15 = v14 & *(a3 + 64);
      v16 = (v13 + 63) >> 6;

      v17 = 0;
      v163 = MEMORY[0x277D84F90];
      while (v15)
      {
LABEL_16:
        v19 = __clz(__rbit64(v15));
        v15 &= v15 - 1;
        v20 = *(a3 + 56) + 80 * (v19 | (v17 << 6));
        if ((*(v20 + 64) & 1) == 0 && (*(v20 + 72) & 1) == 0)
        {
          v21 = *(v20 + 68);
          v175 = *(v20 + 60);
          v167 = sub_217F4B104();
          v171 = v22;
          v23 = sub_217F4B104();
          MEMORY[0x21CEAEAC0](v23);

          if (*(a2 + 16))
          {
            v24 = sub_217E8E88C(v167, v171);
            v26 = v25;

            if (v26)
            {
              v27 = *(*(a2 + 56) + 8 * v24);
              result = swift_isUniquelyReferenced_nonNull_native();
              if ((result & 1) == 0)
              {
                result = sub_217E8E218(0, *(v163 + 16) + 1, 1, v163);
                v163 = result;
              }

              v28 = v163;
              v30 = *(v163 + 16);
              v29 = *(v163 + 24);
              if (v30 >= v29 >> 1)
              {
                result = sub_217E8E218((v29 > 1), v30 + 1, 1, v163);
                v28 = result;
              }

              *(v28 + 16) = v30 + 1;
              v163 = v28;
              *(v28 + 8 * v30 + 32) = v27;
            }
          }

          else
          {
          }
        }
      }

      while (1)
      {
        v18 = v17 + 1;
        if (__OFADD__(v17, 1))
        {
          break;
        }

        if (v18 >= v16)
        {

          v60 = *(v163 + 16);
          if (v60)
          {
            v61 = *(v163 + 32);
            v62 = v60 - 1;
            if (v62)
            {
              v63 = (v163 + 40);
              do
              {
                v64 = *v63++;
                v65 = v64;
                if (v64 < v61)
                {
                  v61 = v65;
                }

                --v62;
              }

              while (v62);
            }
          }
        }

        v15 = *(a3 + 64 + 8 * v18);
        ++v17;
        if (v15)
        {
          v17 = v18;
          goto LABEL_16;
        }
      }

LABEL_161:
      __break(1u);
LABEL_162:
      __break(1u);
LABEL_163:
      __break(1u);
LABEL_164:
      __break(1u);
LABEL_165:
      __break(1u);
    }
  }

  else
  {
    if (result != 2)
    {
      if (result == 3)
      {
        if (*(a3 + 16))
        {
          v8 = sub_217E8E88C(a4, a5);
          if (v9)
          {
            v10 = *(a3 + 56) + 80 * v8;
            v11 = *(v10 + 60);
            v12 = *(v10 + 64);
          }

          else
          {
            v11 = 0;
            v12 = 1;
          }

          v156 = v11;
          v155 = v12;
          if (*(a3 + 16) && (v68 = sub_217E8E88C(a4, a5), (v69 & 1) != 0))
          {
            v70 = *(a3 + 56) + 80 * v68;
            v157 = *(v70 + 68);
            v66 = *(v70 + 72);
          }

          else
          {
            v157 = 0;
            v66 = 1;
          }
        }

        else
        {
          v156 = 0;
          v157 = 0;
          v66 = 1;
          v155 = 1;
        }

        v154 = v66;
        v71 = 1 << *(a3 + 32);
        v72 = -1;
        if (v71 < 64)
        {
          v72 = ~(-1 << v71);
        }

        v73 = v72 & *(a3 + 64);
        v74 = (v71 + 63) >> 6;

        v75 = 0;
        v76 = MEMORY[0x277D84F90];
        v77 = a5;
        while (v73)
        {
LABEL_76:
          v79 = __clz(__rbit64(v73));
          v73 &= v73 - 1;
          v80 = v79 | (v75 << 6);
          v81 = (*(a3 + 48) + 16 * v80);
          result = *v81;
          if (*v81 != a4 || v81[1] != v77)
          {
            v83 = *(a3 + 56) + 80 * v80;
            v160 = *(v83 + 68);
            v158 = *(v83 + 60);
            v84 = *(v83 + 72);
            v85 = *(v83 + 64);
            result = sub_217F4B144();
            v77 = a5;
            if ((result & 1) == 0 && (v85 & 1) == 0 && (v84 & 1) == 0)
            {
              result = swift_isUniquelyReferenced_nonNull_native();
              if ((result & 1) == 0)
              {
                result = sub_217E8E31C(0, *(v76 + 16) + 1, 1, v76);
                v76 = result;
              }

              v87 = *(v76 + 16);
              v86 = *(v76 + 24);
              v88 = v87 + 1;
              v77 = a5;
              if (v87 >= v86 >> 1)
              {
                result = sub_217E8E31C((v86 > 1), v87 + 1, 1, v76);
                v77 = a5;
                v88 = v87 + 1;
                v76 = result;
              }

              *(v76 + 16) = v88;
              v89 = v76 + 8 * v87;
              *(v89 + 32) = v158;
              *(v89 + 36) = v160;
            }
          }
        }

        while (1)
        {
          v78 = v75 + 1;
          if (__OFADD__(v75, 1))
          {
            goto LABEL_162;
          }

          if (v78 >= v74)
          {
            break;
          }

          v73 = *(a3 + 64 + 8 * v78);
          ++v75;
          if (v73)
          {
            v75 = v78;
            goto LABEL_76;
          }
        }

        v90 = *(v76 + 16);
        if (v90)
        {
          v91 = 0;
          v92 = v76 + 36;
          v93 = MEMORY[0x277D84F90];
          while (1)
          {
            v165 = v93;
            v94 = (v92 + 8 * v91);
            v95 = v91;
            while (1)
            {
              if (v95 >= *(v76 + 16))
              {
                goto LABEL_164;
              }

              v96 = *v94;
              v177 = *(v94 - 1);
              v169 = sub_217F4B104();
              v173 = v97;
              v98 = sub_217F4B104();
              MEMORY[0x21CEAEAC0](v98);

              if (*(a2 + 16))
              {
                break;
              }

LABEL_92:
              ++v95;
              v94 += 2;
              if (v90 == v95)
              {
                v93 = v165;
LABEL_103:

                v105 = *(v93 + 16);
                if (v105)
                {
                  v106 = *(v93 + 32);
                  v107 = v105 - 1;
                  if (v107)
                  {
                    v108 = (v93 + 40);
                    do
                    {
                      v109 = *v108++;
                      v110 = v109;
                      if (v109 < v106)
                      {
                        v106 = v110;
                      }

                      --v107;
                    }

                    while (v107);
                  }
                }
              }
            }

            v99 = sub_217E8E88C(v169, v173);
            v101 = v100;

            if ((v101 & 1) == 0)
            {
              goto LABEL_92;
            }

            v102 = *(*(a2 + 56) + 8 * v99);
            v93 = v165;
            result = swift_isUniquelyReferenced_nonNull_native();
            if ((result & 1) == 0)
            {
              result = sub_217E8E218(0, *(v165 + 16) + 1, 1, v165);
              v93 = result;
            }

            v104 = *(v93 + 16);
            v103 = *(v93 + 24);
            if (v104 >= v103 >> 1)
            {
              result = sub_217E8E218((v103 > 1), v104 + 1, 1, v93);
              v93 = result;
            }

            v91 = v95 + 1;
            *(v93 + 16) = v104 + 1;
            *(v93 + 8 * v104 + 32) = v102;
            v92 = v76 + 36;
            if (v90 - 1 == v95)
            {
              goto LABEL_103;
            }
          }
        }

        goto LABEL_159;
      }

      if (*(a3 + 16))
      {
        v49 = sub_217E8E88C(a4, a5);
        if (v50)
        {
          v51 = *(a3 + 56) + 80 * v49;
          v52 = *(v51 + 60);
          v53 = *(v51 + 64);
        }

        else
        {
          v52 = 0;
          v53 = 1;
        }

        v156 = v52;
        v155 = v53;
        if (*(a3 + 16) && (v111 = sub_217E8E88C(a4, a5), (v112 & 1) != 0))
        {
          v113 = *(a3 + 56) + 80 * v111;
          v157 = *(v113 + 68);
          v67 = *(v113 + 72);
        }

        else
        {
          v157 = 0;
          v67 = 1;
        }
      }

      else
      {
        v156 = 0;
        v157 = 0;
        v67 = 1;
        v155 = 1;
      }

      v154 = v67;
      v114 = 1 << *(a3 + 32);
      v115 = -1;
      if (v114 < 64)
      {
        v115 = ~(-1 << v114);
      }

      v116 = v115 & *(a3 + 64);
      v117 = (v114 + 63) >> 6;

      v118 = 0;
      v119 = MEMORY[0x277D84F90];
      v120 = a5;
      while (v116)
      {
LABEL_124:
        v122 = __clz(__rbit64(v116));
        v116 &= v116 - 1;
        v123 = v122 | (v118 << 6);
        v124 = (*(a3 + 48) + 16 * v123);
        result = *v124;
        if (*v124 != a4 || v124[1] != v120)
        {
          v126 = *(a3 + 56) + 80 * v123;
          v161 = *(v126 + 68);
          v159 = *(v126 + 60);
          v127 = *(v126 + 72);
          v128 = *(v126 + 64);
          result = sub_217F4B144();
          v120 = a5;
          if ((result & 1) == 0 && (v128 & 1) == 0 && (v127 & 1) == 0)
          {
            result = swift_isUniquelyReferenced_nonNull_native();
            if ((result & 1) == 0)
            {
              result = sub_217E8E31C(0, *(v119 + 16) + 1, 1, v119);
              v119 = result;
            }

            v130 = *(v119 + 16);
            v129 = *(v119 + 24);
            v131 = v130 + 1;
            v120 = a5;
            if (v130 >= v129 >> 1)
            {
              result = sub_217E8E31C((v129 > 1), v130 + 1, 1, v119);
              v120 = a5;
              v131 = v130 + 1;
              v119 = result;
            }

            *(v119 + 16) = v131;
            v132 = v119 + 8 * v130;
            *(v132 + 32) = v159;
            *(v132 + 36) = v161;
          }
        }
      }

      while (1)
      {
        v121 = v118 + 1;
        if (__OFADD__(v118, 1))
        {
          goto LABEL_163;
        }

        if (v121 >= v117)
        {
          break;
        }

        v116 = *(a3 + 64 + 8 * v121);
        ++v118;
        if (v116)
        {
          v118 = v121;
          goto LABEL_124;
        }
      }

      v133 = *(v119 + 16);
      if (!v133)
      {
LABEL_159:

        return sub_217ED34EC(v156 | (v155 << 32), v157 | (v154 << 32));
      }

      v134 = 0;
      v135 = v119 + 36;
      v136 = MEMORY[0x277D84F90];
LABEL_138:
      v166 = v136;
      v137 = (v135 + 8 * v134);
      v138 = v134;
      while (1)
      {
        if (v138 >= *(v119 + 16))
        {
          goto LABEL_165;
        }

        v139 = *v137;
        v178 = *(v137 - 1);
        v170 = sub_217F4B104();
        v174 = v140;
        v141 = sub_217F4B104();
        MEMORY[0x21CEAEAC0](v141);

        if (*(a2 + 16))
        {
          v142 = sub_217E8E88C(v170, v174);
          v144 = v143;

          if (v144)
          {
            v145 = *(*(a2 + 56) + 8 * v142);
            v136 = v166;
            result = swift_isUniquelyReferenced_nonNull_native();
            if ((result & 1) == 0)
            {
              result = sub_217E8E218(0, *(v166 + 16) + 1, 1, v166);
              v136 = result;
            }

            v147 = *(v136 + 16);
            v146 = *(v136 + 24);
            if (v147 >= v146 >> 1)
            {
              result = sub_217E8E218((v146 > 1), v147 + 1, 1, v136);
              v136 = result;
            }

            v134 = v138 + 1;
            *(v136 + 16) = v147 + 1;
            *(v136 + 8 * v147 + 32) = v145;
            v135 = v119 + 36;
            if (v133 - 1 == v138)
            {
              goto LABEL_151;
            }

            goto LABEL_138;
          }
        }

        else
        {
        }

        ++v138;
        v137 += 2;
        if (v133 == v138)
        {
          v136 = v166;
LABEL_151:

          v148 = *(v136 + 16);
          if (v148)
          {
            v149 = *(v136 + 32);
            v150 = v148 - 1;
            if (v150)
            {
              v151 = (v136 + 40);
              do
              {
                v152 = *v151++;
                v153 = v152;
                if (v149 < v152)
                {
                  v149 = v153;
                }

                --v150;
              }

              while (v150);
            }
          }
        }
      }
    }

    v31 = 1 << *(a3 + 32);
    v32 = -1;
    if (v31 < 64)
    {
      v32 = ~(-1 << v31);
    }

    v33 = v32 & *(a3 + 64);
    v34 = (v31 + 63) >> 6;

    v35 = 0;
    v164 = MEMORY[0x277D84F90];
    while (v33)
    {
LABEL_34:
      v37 = __clz(__rbit64(v33));
      v33 &= v33 - 1;
      v38 = *(a3 + 56) + 80 * (v37 | (v35 << 6));
      if ((*(v38 + 64) & 1) == 0 && (*(v38 + 72) & 1) == 0)
      {
        v39 = *(v38 + 68);
        v176 = *(v38 + 60);
        v168 = sub_217F4B104();
        v172 = v40;
        v41 = sub_217F4B104();
        MEMORY[0x21CEAEAC0](v41);

        if (*(a2 + 16))
        {
          v42 = sub_217E8E88C(v168, v172);
          v44 = v43;

          if (v44)
          {
            v45 = *(*(a2 + 56) + 8 * v42);
            result = swift_isUniquelyReferenced_nonNull_native();
            if ((result & 1) == 0)
            {
              result = sub_217E8E218(0, *(v164 + 16) + 1, 1, v164);
              v164 = result;
            }

            v46 = v164;
            v48 = *(v164 + 16);
            v47 = *(v164 + 24);
            if (v48 >= v47 >> 1)
            {
              result = sub_217E8E218((v47 > 1), v48 + 1, 1, v164);
              v46 = result;
            }

            *(v46 + 16) = v48 + 1;
            v164 = v46;
            *(v46 + 8 * v48 + 32) = v45;
          }
        }

        else
        {
        }
      }
    }

    while (1)
    {
      v36 = v35 + 1;
      if (__OFADD__(v35, 1))
      {
        __break(1u);
        goto LABEL_161;
      }

      if (v36 >= v34)
      {
        break;
      }

      v33 = *(a3 + 64 + 8 * v36);
      ++v35;
      if (v33)
      {
        v35 = v36;
        goto LABEL_34;
      }
    }

    v54 = *(v164 + 16);
    if (v54)
    {
      v55 = *(v164 + 32);
      v56 = v54 - 1;
      if (v56)
      {
        v57 = (v164 + 40);
        do
        {
          v58 = *v57++;
          v59 = v58;
          if (v55 < v58)
          {
            v55 = v59;
          }

          --v56;
        }

        while (v56);
      }
    }
  }

  return result;
}

uint64_t sub_217F34CC4(void *a1, char a2, void *a3)
{
  v4 = a1[2];
  if (!v4)
  {
  }

  LOBYTE(v6) = a2;
  v8 = a1[7];
  v7 = a1[8];
  v9 = a1[6];
  v11 = a1[4];
  v10 = a1[5];

  if (!v10)
  {
  }

  v12 = *a3;
  v13 = sub_217E8E88C(v11, v10);
  v15 = v12[2];
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v19 = v14;
  if (v12[3] < v18)
  {
    sub_217E90DD8(v18, v6 & 1);
    v20 = *a3;
    v13 = sub_217E8E88C(v11, v10);
    if ((v19 & 1) == (v21 & 1))
    {
      goto LABEL_8;
    }

LABEL_6:
    v13 = sub_217F4B1C4();
    __break(1u);
  }

  if (v6)
  {
LABEL_8:
    if (v19)
    {
      goto LABEL_9;
    }

    goto LABEL_12;
  }

  v24 = v13;
  sub_217E8EC20();
  v13 = v24;
  if (v19)
  {
LABEL_9:
    v22 = swift_allocError();
    swift_willThrow();
    MEMORY[0x21CEAF520](v22);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF5268, &unk_217F4BF20);
    if ((swift_dynamicCast() & 1) == 0)
    {

      return MEMORY[0x21CEAF510](v22);
    }

    goto LABEL_27;
  }

LABEL_12:
  v25 = *a3;
  *(*a3 + 8 * (v13 >> 6) + 64) |= 1 << v13;
  v26 = (v25[6] + 16 * v13);
  *v26 = v11;
  v26[1] = v10;
  v27 = (v25[7] + 24 * v13);
  *v27 = v9;
  v27[1] = v8;
  v27[2] = v7;
  v28 = v25[2];
  v17 = __OFADD__(v28, 1);
  v29 = v28 + 1;
  if (!v17)
  {
    v25[2] = v29;
    if (v4 != 1)
    {
      v6 = a1 + 13;
      v30 = 1;
      while (v30 < a1[2])
      {
        v8 = *(v6 - 1);
        v7 = *v6;
        v9 = *(v6 - 2);
        v11 = *(v6 - 4);
        v10 = *(v6 - 3);

        if (!v10)
        {
        }

        v31 = *a3;
        v32 = sub_217E8E88C(v11, v10);
        v34 = v31[2];
        v35 = (v33 & 1) == 0;
        v17 = __OFADD__(v34, v35);
        v36 = v34 + v35;
        if (v17)
        {
          goto LABEL_24;
        }

        v19 = v33;
        if (v31[3] < v36)
        {
          sub_217E90DD8(v36, 1);
          v37 = *a3;
          v32 = sub_217E8E88C(v11, v10);
          if ((v19 & 1) != (v38 & 1))
          {
            goto LABEL_6;
          }
        }

        if (v19)
        {
          goto LABEL_9;
        }

        v39 = *a3;
        *(*a3 + 8 * (v32 >> 6) + 64) |= 1 << v32;
        v40 = (v39[6] + 16 * v32);
        *v40 = v11;
        v40[1] = v10;
        v41 = (v39[7] + 24 * v32);
        *v41 = v9;
        v41[1] = v8;
        v41[2] = v7;
        v42 = v39[2];
        v17 = __OFADD__(v42, 1);
        v43 = v42 + 1;
        if (v17)
        {
          goto LABEL_25;
        }

        ++v30;
        v39[2] = v43;
        v6 += 5;
        if (v4 == v30)
        {
        }
      }

      goto LABEL_26;
    }
  }

LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  sub_217F4ADD4();
  MEMORY[0x21CEAEAC0](0xD00000000000001BLL, 0x8000000217F5D3B0);
  sub_217F4AE54();
  MEMORY[0x21CEAEAC0](39, 0xE100000000000000);
  result = sub_217F4AE94();
  __break(1u);
  return result;
}

uint64_t sub_217F35070(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_217F4AD94() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = (*(a2 + 48) + 16 * v6);
      v11 = *v10;
      v12 = v10[1];
      sub_217F4B224();

      sub_217F4AB24();
      v13 = sub_217F4B254();

      v14 = v13 & v7;
      if (v3 >= v8)
      {
        if (v14 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v14 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v14)
      {
LABEL_10:
        v15 = *(a2 + 48);
        v16 = (v15 + 16 * v3);
        v17 = (v15 + 16 * v6);
        if (v3 != v6 || v16 >= v17 + 1)
        {
          *v16 = *v17;
        }

        v18 = *(a2 + 56);
        v19 = (v18 + 8 * v3);
        v20 = (v18 + 8 * v6);
        if (v3 != v6 || v19 >= v20 + 1)
        {
          *v19 = *v20;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v21 = *(a2 + 16);
  v22 = __OFSUB__(v21, 1);
  v23 = v21 - 1;
  if (v22)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v23;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_217F35220(unint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_217F4AD94() + 1) & ~v5;
    while (1)
    {
      v9 = 32 * v6;
      v10 = *(a2 + 40);
      v11 = (*(a2 + 48) + 32 * v6);
      v12 = *(v11 + 13);
      *v26 = *v11;
      *&v26[13] = v12;
      sub_217F4B224();
      sub_217E98168(v26, v25);
      sub_217F4AB24();
      v13 = sub_217F4B254();
      result = sub_217F23FA4(v26);
      v14 = v13 & v7;
      if (v3 >= v8)
      {
        if (v14 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v14 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v14)
      {
LABEL_10:
        v15 = *(a2 + 48);
        v16 = (v15 + 32 * v3);
        v17 = (v15 + v9);
        if (32 * v3 != v9 || v16 >= v17 + 2)
        {
          v18 = v17[1];
          *v16 = *v17;
          v16[1] = v18;
        }

        v19 = *(a2 + 56);
        v20 = (v19 + 8 * v3);
        v21 = (v19 + 8 * v6);
        if (v3 != v6 || v20 >= v21 + 1)
        {
          *v20 = *v21;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
      if (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
      {
        *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
        goto LABEL_18;
      }
    }
  }

  *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
LABEL_18:
  v22 = *(a2 + 16);
  v23 = __OFSUB__(v22, 1);
  v24 = v22 - 1;
  if (v23)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v24;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_217F35410(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  a6[(result >> 6) + 8] |= 1 << result;
  v6 = (a6[6] + 16 * result);
  *v6 = a2;
  v6[1] = a3;
  v7 = (a6[7] + 16 * result);
  *v7 = a4;
  v7[1] = a5;
  v8 = a6[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a6[2] = v10;
  }

  return result;
}

unint64_t sub_217F35460(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  v5 = (a5[6] + 16 * result);
  *v5 = a2;
  v5[1] = a3;
  *(a5[7] + 8 * result) = a4;
  v6 = a5[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v8;
  }

  return result;
}

unint64_t sub_217F354A8(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, char a5, void *a6)
{
  a6[(result >> 6) + 8] |= 1 << result;
  v6 = (a6[6] + 16 * result);
  *v6 = a2;
  v6[1] = a3;
  v7 = a6[7] + 16 * result;
  *v7 = a4;
  *(v7 + 8) = a5 & 1;
  v8 = a6[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a6[2] = v10;
  }

  return result;
}

unint64_t sub_217F35500(unint64_t result, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  v5 = (a5[6] + 16 * result);
  *v5 = a2;
  v5[1] = a3;
  v6 = (a5[7] + 48 * result);
  v7 = a4[1];
  *v6 = *a4;
  v6[1] = v7;
  v6[2] = a4[2];
  v8 = a5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v10;
  }

  return result;
}

unint64_t sub_217F3555C(unint64_t result, uint64_t a2, uint64_t a3, void *a4, double a5)
{
  a4[(result >> 6) + 8] |= 1 << result;
  v5 = (a4[6] + 16 * result);
  *v5 = a2;
  v5[1] = a3;
  *(a4[7] + 8 * result) = a5;
  v6 = a4[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v8;
  }

  return result;
}

unint64_t sub_217F355A4(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  v5 = (a5[6] + 16 * result);
  *v5 = a2;
  v5[1] = a3;
  v6 = a5[7] + 40 * result;
  v7 = *(a4 + 16);
  *v6 = *a4;
  *(v6 + 16) = v7;
  *(v6 + 32) = *(a4 + 32);
  v8 = a5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v10;
  }

  return result;
}

unint64_t sub_217F35600(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, double a7)
{
  a6[(result >> 6) + 8] |= 1 << result;
  v7 = a6[6] + 32 * result;
  *v7 = a2;
  *(v7 + 8) = a3;
  *(v7 + 16) = a7;
  *(v7 + 28) = BYTE4(a4);
  *(v7 + 24) = a4;
  *(a6[7] + 8 * result) = a5;
  v8 = a6[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a6[2] = v10;
  }

  return result;
}

uint64_t sub_217F35658(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = type metadata accessor for ClassicArticleData();
  result = sub_217ECC728(a2, v8 + *(*(v9 - 8) + 72) * a1);
  *(a4[7] + 8 * a1) = a3;
  v11 = a4[2];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v13;
  }

  return result;
}

unint64_t sub_217F356F8(unint64_t result, uint64_t a2, void *a3, double a4)
{
  a3[(result >> 6) + 8] |= 1 << result;
  v4 = a3[6] + 56 * result;
  v5 = *(a2 + 16);
  *v4 = *a2;
  *(v4 + 16) = v5;
  *(v4 + 32) = *(a2 + 32);
  *(v4 + 48) = *(a2 + 48);
  *(a3[7] + 8 * result) = a4;
  v6 = a3[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a3[2] = v8;
  }

  return result;
}

unint64_t sub_217F35758(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, char a5, void *a6, double a7)
{
  a6[(result >> 6) + 8] |= 1 << result;
  v7 = (a6[6] + 16 * result);
  *v7 = a2;
  v7[1] = a3;
  v8 = a6[7] + 24 * result;
  *v8 = a7;
  *(v8 + 8) = a4;
  *(v8 + 16) = a5 & 1;
  v9 = a6[2];
  v10 = __OFADD__(v9, 1);
  v11 = v9 + 1;
  if (v10)
  {
    __break(1u);
  }

  else
  {
    a6[2] = v11;
  }

  return result;
}

unint64_t sub_217F357B4(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  v5 = (a5[6] + 16 * result);
  *v5 = a2;
  v5[1] = a3;
  *(a5[7] + 8 * result) = a4;
  v6 = a5[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v8;
  }

  return result;
}

uint64_t sub_217F357FC(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_217F372D8(v2);
  }

  v3 = *(v2 + 2);
  v18[0] = (v2 + 32);
  v18[1] = v3;
  result = sub_217F4B0F4();
  if (result >= v3)
  {
    if (v3 >= 2)
    {
      v8 = -1;
      v9 = 1;
      v10 = v2 + 32;
      do
      {
        v11 = *&v2[8 * v9 + 32];
        v12 = v8;
        v13 = v10;
        do
        {
          v14 = *v13;
          if (v11 >= *v13)
          {
            break;
          }

          *v13 = v11;
          v13[1] = v14;
          --v13;
        }

        while (!__CFADD__(v12++, 1));
        ++v9;
        v10 += 8;
        --v8;
      }

      while (v9 != v3);
    }
  }

  else
  {
    v5 = result;
    v6 = v3 >> 1;
    if (v3 >= 2)
    {
      v7 = sub_217F4AC54();
      *(v7 + 16) = v6;
    }

    else
    {
      v7 = MEMORY[0x277D84F90];
    }

    v16[0] = v7 + 32;
    v16[1] = v6;
    sub_217F35930(v16, v17, v18, v5);
    *(v7 + 16) = 0;
  }

  *a1 = v2;
  return result;
}

uint64_t sub_217F35930(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v84 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x277D84F90];
LABEL_88:
    v5 = *v84;
    if (!*v84)
    {
      goto LABEL_128;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_122:
      result = sub_217F3610C(v8);
      v8 = result;
    }

    v76 = (v8 + 16);
    v77 = *(v8 + 16);
    if (v77 >= 2)
    {
      while (*a3)
      {
        v78 = (v8 + 16 * v77);
        v79 = *v78;
        v80 = &v76[2 * v77];
        v81 = v80[1];
        sub_217F35E8C((*a3 + 8 * *v78), (*a3 + 8 * *v80), (*a3 + 8 * v81), v5);
        if (v4)
        {
        }

        if (v81 < v79)
        {
          goto LABEL_114;
        }

        if (v77 - 2 >= *v76)
        {
          goto LABEL_115;
        }

        *v78 = v79;
        v78[1] = v81;
        v82 = *v76 - v77;
        if (*v76 < v77)
        {
          goto LABEL_116;
        }

        v77 = *v76 - 1;
        result = memmove(v80, v80 + 2, 16 * v82);
        *v76 = v77;
        if (v77 <= 1)
        {
        }
      }

      goto LABEL_126;
    }
  }

  v7 = 0;
  v8 = MEMORY[0x277D84F90];
  v83 = a4;
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = *(*a3 + 8 * v7);
      v11 = *(*a3 + 8 * v9);
      v12 = v9 + 2;
      v13 = v10;
      while (v6 != v12)
      {
        v14 = *(*a3 + 8 * v12);
        v15 = v14 >= v13;
        ++v12;
        v13 = v14;
        if ((((v10 < v11) ^ v15) & 1) == 0)
        {
          v7 = v12 - 1;
          if (v10 >= v11)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v7 = v6;
      if (v10 >= v11)
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v7 < v9)
      {
        goto LABEL_119;
      }

      if (v9 < v7)
      {
        v16 = 8 * v7 - 8;
        v17 = 8 * v9;
        v18 = v7;
        v19 = v9;
        do
        {
          if (v19 != --v18)
          {
            v21 = *a3;
            if (!*a3)
            {
              goto LABEL_125;
            }

            v20 = *(v21 + v17);
            *(v21 + v17) = *(v21 + v16);
            *(v21 + v16) = v20;
          }

          ++v19;
          v16 -= 8;
          v17 += 8;
        }

        while (v19 < v18);
        v6 = a3[1];
      }
    }

LABEL_20:
    if (v7 < v6)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_118;
      }

      if (v7 - v9 < a4)
      {
        if (__OFADD__(v9, a4))
        {
          goto LABEL_120;
        }

        if (v9 + a4 < v6)
        {
          v6 = v9 + a4;
        }

        if (v6 < v9)
        {
LABEL_121:
          __break(1u);
          goto LABEL_122;
        }

        if (v7 != v6)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v7 < v9)
    {
      goto LABEL_117;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_217E8DA14(0, *(v8 + 16) + 1, 1, v8);
      v8 = result;
    }

    v5 = *(v8 + 16);
    v30 = *(v8 + 24);
    v31 = v5 + 1;
    if (v5 >= v30 >> 1)
    {
      result = sub_217E8DA14((v30 > 1), v5 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 16) = v31;
    v32 = v8 + 32;
    v33 = (v8 + 32 + 16 * v5);
    *v33 = v9;
    v33[1] = v7;
    v85 = *v84;
    if (!*v84)
    {
      goto LABEL_127;
    }

    if (v5)
    {
      while (1)
      {
        v5 = v31 - 1;
        if (v31 >= 4)
        {
          break;
        }

        if (v31 == 3)
        {
          v34 = *(v8 + 32);
          v35 = *(v8 + 40);
          v44 = __OFSUB__(v35, v34);
          v36 = v35 - v34;
          v37 = v44;
LABEL_57:
          if (v37)
          {
            goto LABEL_104;
          }

          v50 = (v8 + 16 * v31);
          v52 = *v50;
          v51 = v50[1];
          v53 = __OFSUB__(v51, v52);
          v54 = v51 - v52;
          v55 = v53;
          if (v53)
          {
            goto LABEL_106;
          }

          v56 = (v32 + 16 * v5);
          v58 = *v56;
          v57 = v56[1];
          v44 = __OFSUB__(v57, v58);
          v59 = v57 - v58;
          if (v44)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v54, v59))
          {
            goto LABEL_111;
          }

          if (v54 + v59 >= v36)
          {
            if (v36 < v59)
            {
              v5 = v31 - 2;
            }

            goto LABEL_79;
          }

          goto LABEL_72;
        }

        if (v31 < 2)
        {
          goto LABEL_112;
        }

        v60 = (v8 + 16 * v31);
        v62 = *v60;
        v61 = v60[1];
        v44 = __OFSUB__(v61, v62);
        v54 = v61 - v62;
        v55 = v44;
LABEL_72:
        if (v55)
        {
          goto LABEL_108;
        }

        v63 = (v32 + 16 * v5);
        v65 = *v63;
        v64 = v63[1];
        v44 = __OFSUB__(v64, v65);
        v66 = v64 - v65;
        if (v44)
        {
          goto LABEL_110;
        }

        if (v66 < v54)
        {
          goto LABEL_3;
        }

LABEL_79:
        if (v5 - 1 >= v31)
        {
          __break(1u);
LABEL_99:
          __break(1u);
LABEL_100:
          __break(1u);
LABEL_101:
          __break(1u);
LABEL_102:
          __break(1u);
LABEL_103:
          __break(1u);
LABEL_104:
          __break(1u);
LABEL_105:
          __break(1u);
LABEL_106:
          __break(1u);
LABEL_107:
          __break(1u);
LABEL_108:
          __break(1u);
LABEL_109:
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
          goto LABEL_121;
        }

        if (!*a3)
        {
          goto LABEL_124;
        }

        v71 = (v32 + 16 * (v5 - 1));
        v72 = *v71;
        v73 = (v32 + 16 * v5);
        v74 = v73[1];
        sub_217F35E8C((*a3 + 8 * *v71), (*a3 + 8 * *v73), (*a3 + 8 * v74), v85);
        if (v4)
        {
        }

        if (v74 < v72)
        {
          goto LABEL_99;
        }

        if (v5 > *(v8 + 16))
        {
          goto LABEL_100;
        }

        *v71 = v72;
        v71[1] = v74;
        v75 = *(v8 + 16);
        if (v5 >= v75)
        {
          goto LABEL_101;
        }

        v31 = v75 - 1;
        result = memmove((v32 + 16 * v5), v73 + 2, 16 * (v75 - 1 - v5));
        *(v8 + 16) = v75 - 1;
        if (v75 <= 2)
        {
          goto LABEL_3;
        }
      }

      v38 = v32 + 16 * v31;
      v39 = *(v38 - 64);
      v40 = *(v38 - 56);
      v44 = __OFSUB__(v40, v39);
      v41 = v40 - v39;
      if (v44)
      {
        goto LABEL_102;
      }

      v43 = *(v38 - 48);
      v42 = *(v38 - 40);
      v44 = __OFSUB__(v42, v43);
      v36 = v42 - v43;
      v37 = v44;
      if (v44)
      {
        goto LABEL_103;
      }

      v45 = (v8 + 16 * v31);
      v47 = *v45;
      v46 = v45[1];
      v44 = __OFSUB__(v46, v47);
      v48 = v46 - v47;
      if (v44)
      {
        goto LABEL_105;
      }

      v44 = __OFADD__(v36, v48);
      v49 = v36 + v48;
      if (v44)
      {
        goto LABEL_107;
      }

      if (v49 >= v41)
      {
        v67 = (v32 + 16 * v5);
        v69 = *v67;
        v68 = v67[1];
        v44 = __OFSUB__(v68, v69);
        v70 = v68 - v69;
        if (v44)
        {
          goto LABEL_113;
        }

        if (v36 < v70)
        {
          v5 = v31 - 2;
        }

        goto LABEL_79;
      }

      goto LABEL_57;
    }

LABEL_3:
    v6 = a3[1];
    a4 = v83;
    if (v7 >= v6)
    {
      goto LABEL_88;
    }
  }

  v22 = *a3;
  v23 = *a3 + 8 * v7 - 8;
  v24 = v9 - v7;
LABEL_30:
  v25 = *(v22 + 8 * v7);
  v26 = v24;
  v27 = v23;
  while (1)
  {
    v28 = *v27;
    if (v25 >= *v27)
    {
LABEL_29:
      ++v7;
      v23 += 8;
      --v24;
      if (v7 != v6)
      {
        goto LABEL_30;
      }

      v7 = v6;
      goto LABEL_37;
    }

    if (!v22)
    {
      break;
    }

    *v27 = v25;
    v27[1] = v28;
    --v27;
    if (__CFADD__(v26++, 1))
    {
      goto LABEL_29;
    }
  }

  __break(1u);
LABEL_124:
  __break(1u);
LABEL_125:
  __break(1u);
LABEL_126:
  __break(1u);
LABEL_127:
  __break(1u);
LABEL_128:
  __break(1u);
  return result;
}

uint64_t sub_217F35E8C(double *__dst, double *__src, double *a3, double *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 7;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 3;
  v11 = a3 - __src;
  v12 = a3 - __src + 7;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 3;
  if (v10 < v12 >> 3)
  {
    if (a4 != __dst || &__dst[v10] <= a4)
    {
      memmove(a4, __dst, 8 * v10);
    }

    v14 = &v4[v10];
    if (v8 < 8)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_35;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      v15 = *v6;
      if (*v6 < *v4)
      {
        break;
      }

      v15 = *v4;
      v16 = v7 == v4++;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      ++v7;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v16 = v7 == v6++;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = v15;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[v13] <= a4)
  {
    memmove(a4, __src, 8 * v13);
  }

  v14 = &v4[v13];
  if (v11 >= 8 && v6 > v7)
  {
LABEL_24:
    v17 = v6 - 1;
    --v5;
    v18 = v14;
    do
    {
      v19 = v5 + 1;
      v20 = *(v18 - 8);
      v18 -= 8;
      v21 = v20;
      if (v20 < *v17)
      {
        if (v19 != v6)
        {
          *v5 = *v17;
        }

        if (v14 <= v4 || (--v6, v17 <= v7))
        {
          v6 = v17;
          goto LABEL_35;
        }

        goto LABEL_24;
      }

      if (v19 != v14)
      {
        *v5 = v21;
      }

      --v5;
      v14 = v18;
    }

    while (v18 > v4);
    v14 = v18;
  }

LABEL_35:
  v22 = v14 - v4 + (v14 - v4 < 0 ? 7uLL : 0);
  if (v6 != v4 || v6 >= (v4 + (v22 & 0xFFFFFFFFFFFFFFF8)))
  {
    memmove(v6, v4, 8 * (v22 >> 3));
  }

  return 1;
}

uint64_t sub_217F36080(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_217F3610C(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    v9 = *(v7 + 40);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

char *sub_217F36120(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF53B0, &qword_217F4CC20);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_2(v10);
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
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

void *sub_217F36224(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v6 = result;
      v7 = a2;
      bzero(result, 8 * a2);
      result = v6;
      a2 = v7;
    }

    v8 = sub_217F36C60(result, a2, a3, a4);

    return v8;
  }

  return result;
}

void *sub_217F362B4(void *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void *, uint64_t, uint64_t, uint64_t))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v9 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    v10 = a5(v9, a2, a3, a4);
    swift_bridgeObjectRelease_n();

    return v10;
  }

  return result;
}

uint64_t sub_217F36358(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {
    return MEMORY[0x277D84F98];
  }

  v4 = a4;
  v5 = a3;
  if (*(a4 + 16) == a3)
  {

    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF5440, &qword_217F4CCB0);
  result = sub_217F4AED4();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 64;
  v33 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_16:
    v16 = v13 | (v11 << 6);
    v17 = *(v4 + 56);
    v18 = (*(v4 + 48) + 16 * v16);
    v19 = *v18;
    v20 = v18[1];
    v21 = *(v17 + 8 * v16);
    v22 = *(v9 + 40);
    sub_217F4B224();

    sub_217F4AB24();
    result = sub_217F4B254();
    v23 = -1 << *(v9 + 32);
    v24 = result & ~v23;
    v25 = v24 >> 6;
    if (((-1 << v24) & ~*(v12 + 8 * (v24 >> 6))) == 0)
    {
      v27 = 0;
      v28 = (63 - v23) >> 6;
      while (++v25 != v28 || (v27 & 1) == 0)
      {
        v29 = v25 == v28;
        if (v25 == v28)
        {
          v25 = 0;
        }

        v27 |= v29;
        v30 = *(v12 + 8 * v25);
        if (v30 != -1)
        {
          v26 = __clz(__rbit64(~v30)) + (v25 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v26 = __clz(__rbit64((-1 << v24) & ~*(v12 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v12 + ((v26 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v26;
    v31 = (*(v9 + 48) + 16 * v26);
    *v31 = v19;
    v31[1] = v20;
    *(*(v9 + 56) + 8 * v26) = v21;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    v4 = v33;
    if (!v5)
    {
      return v9;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      return v9;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_217F3659C(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {
    return MEMORY[0x277D84F98];
  }

  v4 = a4;
  v5 = a3;
  if (*(a4 + 16) == a3)
  {

    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF53C8, &unk_217F5A300);
  result = sub_217F4AED4();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 64;
  v36 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v37 = (v10 - 1) & v10;
LABEL_16:
    v16 = v13 | (v11 << 6);
    v17 = (*(v4 + 48) + 16 * v16);
    v18 = *v17;
    v19 = v17[1];
    v20 = *(v4 + 56) + 40 * v16;
    v21 = *(v20 + 8);
    v39 = *v20;
    v38 = *(v20 + 16);
    v22 = *(v20 + 24);
    v23 = *(v20 + 32);
    v24 = *(v9 + 40);
    sub_217F4B224();

    sub_217F4AB24();
    result = sub_217F4B254();
    v25 = -1 << *(v9 + 32);
    v26 = result & ~v25;
    v27 = v26 >> 6;
    if (((-1 << v26) & ~*(v12 + 8 * (v26 >> 6))) == 0)
    {
      v29 = 0;
      v30 = (63 - v25) >> 6;
      while (++v27 != v30 || (v29 & 1) == 0)
      {
        v31 = v27 == v30;
        if (v27 == v30)
        {
          v27 = 0;
        }

        v29 |= v31;
        v32 = *(v12 + 8 * v27);
        if (v32 != -1)
        {
          v28 = __clz(__rbit64(~v32)) + (v27 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v28 = __clz(__rbit64((-1 << v26) & ~*(v12 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v12 + ((v28 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v28;
    v33 = (*(v9 + 48) + 16 * v28);
    *v33 = v18;
    v33[1] = v19;
    v34 = *(v9 + 56) + 40 * v28;
    *v34 = v39;
    *(v34 + 8) = v21;
    *(v34 + 16) = v38;
    *(v34 + 24) = v22;
    *(v34 + 32) = v23;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    v4 = v36;
    v10 = v37;
    if (!v5)
    {
      return v9;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      return v9;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v37 = (v15 - 1) & v15;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_217F36838(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {
    return MEMORY[0x277D84F98];
  }

  v4 = a4;
  v5 = a3;
  if (*(a4 + 16) == a3)
  {

    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF5350, &qword_217F5A2D0);
  result = sub_217F4AED4();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 64;
  v34 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_16:
    v16 = v13 | (v11 << 6);
    v17 = *(v4 + 56);
    v18 = (*(v4 + 48) + 16 * v16);
    v19 = *v18;
    v20 = v18[1];
    v21 = (v17 + (v16 << 6));
    v35 = *v21;
    v36 = v21[1];
    *v37 = v21[2];
    *&v37[9] = *(v21 + 41);
    v22 = *(v9 + 40);
    sub_217F4B224();

    sub_217F4AB24();
    result = sub_217F4B254();
    v23 = -1 << *(v9 + 32);
    v24 = result & ~v23;
    v25 = v24 >> 6;
    if (((-1 << v24) & ~*(v12 + 8 * (v24 >> 6))) == 0)
    {
      v27 = 0;
      v28 = (63 - v23) >> 6;
      while (++v25 != v28 || (v27 & 1) == 0)
      {
        v29 = v25 == v28;
        if (v25 == v28)
        {
          v25 = 0;
        }

        v27 |= v29;
        v30 = *(v12 + 8 * v25);
        if (v30 != -1)
        {
          v26 = __clz(__rbit64(~v30)) + (v25 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v26 = __clz(__rbit64((-1 << v24) & ~*(v12 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v12 + ((v26 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v26;
    v31 = (*(v9 + 48) + 16 * v26);
    *v31 = v19;
    v31[1] = v20;
    v32 = (*(v9 + 56) + (v26 << 6));
    *v32 = v35;
    v32[1] = v36;
    v32[2] = *v37;
    *(v32 + 41) = *&v37[9];
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    v4 = v34;
    if (!v5)
    {
      return v9;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      return v9;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_217F36A9C(uint64_t a1, uint64_t a2)
{
  v14[1] = *MEMORY[0x277D85DE8];
  v4 = *(a2 + 32);
  v5 = v4 & 0x3F;
  v6 = ((1 << v4) + 63) >> 6;
  v7 = 8 * v6;

  if (v5 <= 0xD || (isStackAllocationSafe = swift_stdlib_isStackAllocationSafe(), (isStackAllocationSafe & 1) != 0))
  {
    MEMORY[0x28223BE20](isStackAllocationSafe, v9);
    bzero(v14 - ((v7 + 15) & 0x3FFFFFFFFFFFFFF0), v7);
    v10 = sub_217F36C60(v14 - ((v7 + 15) & 0x3FFFFFFFFFFFFFF0), v6, a2, a1);
  }

  else
  {
    v13 = swift_slowAlloc();

    v10 = sub_217F36224(v13, v6, a2, a1);

    MEMORY[0x21CEAF6B0](v13, -1, -1);
  }

  v11 = *MEMORY[0x277D85DE8];
  return v10;
}

uint64_t sub_217F36C60(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v5 = a3;
  v52 = result;
  if (*(a4 + 16) >= *(a3 + 16))
  {
    v55 = 0;
    v13 = 0;
    v14 = a3 + 56;
    v15 = 1 << *(a3 + 32);
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v17 = v16 & *(a3 + 56);
    v18 = (v15 + 63) >> 6;
    v19 = a4 + 56;
    while (v17)
    {
      v20 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_18:
      v53 = v20 | (v13 << 6);
      v23 = (*(a3 + 48) + 16 * v53);
      v25 = *v23;
      v24 = v23[1];
      v26 = *(v4 + 40);
      sub_217F4B224();

      sub_217F4AB24();
      v27 = sub_217F4B254();
      v28 = -1 << *(v4 + 32);
      v29 = v27 & ~v28;
      if ((*(v19 + ((v29 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v29))
      {
        v30 = ~v28;
        while (1)
        {
          v31 = (*(a4 + 48) + 16 * v29);
          v32 = *v31 == v25 && v31[1] == v24;
          if (v32 || (sub_217F4B144() & 1) != 0)
          {
            break;
          }

          v29 = (v29 + 1) & v30;
          if (((*(v19 + ((v29 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v29) & 1) == 0)
          {
            goto LABEL_10;
          }
        }

        *(v52 + ((v53 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v53;
        v33 = __OFADD__(v55++, 1);
        v4 = a4;
        if (v33)
        {
          __break(1u);
LABEL_30:
          v5 = a3;
LABEL_31:

          return sub_217F3703C(v52, a2, v55, v5);
        }
      }

      else
      {
LABEL_10:

        v4 = a4;
      }
    }

    v21 = v13;
    while (1)
    {
      v13 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v13 >= v18)
      {
        goto LABEL_30;
      }

      v22 = *(v14 + 8 * v13);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v17 = (v22 - 1) & v22;
        goto LABEL_18;
      }
    }

LABEL_54:
    __break(1u);
  }

  else
  {
    v55 = 0;
    v6 = 0;
    v7 = a4 + 56;
    v8 = 1 << *(a4 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(a4 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = a3 + 56;
    v51 = v11;
    while (v10)
    {
      v34 = __clz(__rbit64(v10));
      v54 = (v10 - 1) & v10;
LABEL_41:
      v37 = (*(v4 + 48) + 16 * (v34 | (v6 << 6)));
      v39 = *v37;
      v38 = v37[1];
      v40 = *(v5 + 40);
      sub_217F4B224();

      sub_217F4AB24();
      v41 = sub_217F4B254();
      v42 = -1 << *(v5 + 32);
      v43 = v41 & ~v42;
      v44 = v43 >> 6;
      v45 = 1 << v43;
      if (((1 << v43) & *(v12 + 8 * (v43 >> 6))) != 0)
      {
        v46 = (*(v5 + 48) + 16 * v43);
        if (*v46 != v39 || v46[1] != v38)
        {
          v48 = ~v42;
          while ((sub_217F4B144() & 1) == 0)
          {
            v43 = (v43 + 1) & v48;
            v44 = v43 >> 6;
            v45 = 1 << v43;
            if (((1 << v43) & *(v12 + 8 * (v43 >> 6))) == 0)
            {
              v5 = a3;
              goto LABEL_33;
            }

            v49 = (*(a3 + 48) + 16 * v43);
            if (*v49 == v39 && v49[1] == v38)
            {
              break;
            }
          }
        }

        v11 = v51;
        v52[v44] |= v45;
        v5 = a3;
        v33 = __OFADD__(v55++, 1);
        v4 = a4;
        v10 = v54;
        if (v33)
        {
          __break(1u);
          goto LABEL_54;
        }
      }

      else
      {
LABEL_33:

        v4 = a4;
        v11 = v51;
        v10 = v54;
      }
    }

    v35 = v6;
    while (1)
    {
      v6 = v35 + 1;
      if (__OFADD__(v35, 1))
      {
        break;
      }

      if (v6 >= v11)
      {
        goto LABEL_31;
      }

      v36 = *(v7 + 8 * v6);
      ++v35;
      if (v36)
      {
        v34 = __clz(__rbit64(v36));
        v54 = (v36 - 1) & v36;
        goto LABEL_41;
      }
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_217F3703C(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = MEMORY[0x277D84FA0];
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF5D28, &qword_217F520D8);
  result = sub_217F4ADC4();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 56;
  v30 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_17:
    v16 = (*(v4 + 48) + 16 * (v13 | (v11 << 6)));
    v17 = *v16;
    v18 = v16[1];
    v19 = *(v9 + 40);
    sub_217F4B224();

    sub_217F4AB24();
    result = sub_217F4B254();
    v20 = -1 << *(v9 + 32);
    v21 = result & ~v20;
    v22 = v21 >> 6;
    if (((-1 << v21) & ~*(v12 + 8 * (v21 >> 6))) == 0)
    {
      v24 = 0;
      v25 = (63 - v20) >> 6;
      while (++v22 != v25 || (v24 & 1) == 0)
      {
        v26 = v22 == v25;
        if (v22 == v25)
        {
          v22 = 0;
        }

        v24 |= v26;
        v27 = *(v12 + 8 * v22);
        if (v27 != -1)
        {
          v23 = __clz(__rbit64(~v27)) + (v22 << 6);
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v23 = __clz(__rbit64((-1 << v21) & ~*(v12 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v12 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
    v28 = (*(v9 + 48) + 16 * v23);
    *v28 = v17;
    v28[1] = v18;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    v4 = v30;
    if (!v5)
    {
      goto LABEL_6;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      goto LABEL_6;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

char *sub_217F372EC(uint64_t a1, char a2, uint64_t a3)
{
  v95 = a3;
  LOBYTE(v3) = a2;
  v5 = 2831206;
  v101 = type metadata accessor for ClassicArticleData();
  v102 = sub_217F3AB60();
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v100);
  sub_217E9D964(a1, boxed_opaque_existential_1);
  v7 = v101;
  v8 = v102;
  __swift_project_boxed_opaque_existential_1(v100, v101);
  v9 = (*(v8 + 112))(v7, v8);
  v11 = v10;
  v97 = 2831206;
  v98 = 0xE300000000000000;
  MEMORY[0x21CEAEAC0]();
  v12 = 2831206;
  v13 = 0xE300000000000000;
  v14 = sub_217E8DE90(0, 1, 1, MEMORY[0x277D84F90]);
  v16 = *(v14 + 2);
  v15 = *(v14 + 3);
  v17 = v16 + 1;
  if (v16 >= v15 >> 1)
  {
    goto LABEL_99;
  }

  while (1)
  {
    *(v14 + 2) = v17;
    v18 = &v14[56 * v16];
    *(v18 + 4) = v12;
    *(v18 + 5) = v13;
    *(v18 + 6) = v9;
    *(v18 + 7) = v11;
    *(v18 + 8) = 0;
    *(v18 + 9) = 0;
    v18[80] = 4;
    v99 = v14;
    if (v3 == 25)
    {
      v19 = 0xED00006E6F697469;
      v20 = 0x6445664F74736542;
    }

    else
    {
      if (v3 != 5)
      {
        goto LABEL_9;
      }

      v19 = 0xEF736569726F7453;
      v20 = 0x676E69646E657254;
    }

    v97 = v5 + 768;
    v98 = 0xE300000000000000;
    MEMORY[0x21CEAEAC0](v20, v19);

    v21 = v97;
    v22 = v98;
    v11 = *(v14 + 2);
    v23 = *(v14 + 3);
    if (v11 >= v23 >> 1)
    {
      v14 = sub_217E8DE90((v23 > 1), v11 + 1, 1, v14);
    }

    *(v14 + 2) = v11 + 1;
    v24 = &v14[56 * v11];
    *(v24 + 4) = v21;
    *(v24 + 5) = v22;
    *(v24 + 3) = 0u;
    *(v24 + 4) = 0u;
    v24[80] = 5;
    v99 = v14;
LABEL_9:
    v25 = v101;
    v26 = v102;
    v5 = v100;
    __swift_project_boxed_opaque_existential_1(v100, v101);
    v27 = (*(v26 + 120))(v25, v26);
    v9 = &v94;
    MEMORY[0x28223BE20](v27, v28);
    v93[2] = v100;
    v17 = sub_217F3F6FC(sub_217F3ABB8, v93, v27);

    v16 = *(v17 + 16);
    v14 = MEMORY[0x277D84F90];
    if (!v16)
    {
      break;
    }

    v29 = 0;
    v13 = v17 + 32;
    v3 = &_s14descr2829CD401O7FeatureON;
    while (1)
    {
      v15 = *(v17 + 16);
      if (v29 >= v15)
      {
        break;
      }

      v11 = *(v13 + 8 * v29);
      v9 = *(v11 + 16);
      v5 = *(v14 + 2);
      v12 = v9 + v5;
      if (__OFADD__(v5, v9))
      {
        goto LABEL_95;
      }

      v30 = *(v13 + 8 * v29);

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (isUniquelyReferenced_nonNull_native && v12 <= *(v14 + 3) >> 1)
      {
        if (*(v11 + 16))
        {
          goto LABEL_23;
        }
      }

      else
      {
        if (v5 <= v12)
        {
          v32 = v9 + v5;
        }

        else
        {
          v32 = v5;
        }

        v14 = sub_217E8DE90(isUniquelyReferenced_nonNull_native, v32, 1, v14);
        if (*(v11 + 16))
        {
LABEL_23:
          v15 = *(v14 + 2);
          if (((*(v14 + 3) >> 1) - v15) < v9)
          {
            goto LABEL_97;
          }

          swift_arrayInitWithCopy();

          if (v9)
          {
            v33 = *(v14 + 2);
            v34 = __OFADD__(v33, v9);
            v15 = v9 + v33;
            if (v34)
            {
              goto LABEL_98;
            }

            *(v14 + 2) = v15;
          }

          goto LABEL_12;
        }
      }

      if (v9)
      {
        goto LABEL_96;
      }

LABEL_12:
      if (v16 == ++v29)
      {
        goto LABEL_27;
      }
    }

    __break(1u);
LABEL_95:
    __break(1u);
LABEL_96:
    __break(1u);
LABEL_97:
    __break(1u);
LABEL_98:
    __break(1u);
LABEL_99:
    v14 = sub_217E8DE90((v15 > 1), v17, 1, v14);
  }

LABEL_27:

  sub_217E80F38(v14);
  v35 = v101;
  v36 = v102;
  __swift_project_boxed_opaque_existential_1(v100, v101);
  v37 = (*(v36 + 40))(v35, v36);
  if (v38)
  {
    goto LABEL_60;
  }

  v39 = *(v95 + 16);
  if (v37 < 1)
  {
    if ((*&v39 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
    {
      goto LABEL_38;
    }

    __break(1u);
LABEL_101:
    __break(1u);
    goto LABEL_102;
  }

  if ((*&v39 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_103:
    __break(1u);
    goto LABEL_104;
  }

  if (v39 <= -9.22337204e18)
  {
LABEL_104:
    __break(1u);
    goto LABEL_105;
  }

  if (v39 >= 9.22337204e18)
  {
LABEL_105:
    __break(1u);
LABEL_106:
    __break(1u);
    goto LABEL_107;
  }

  if (v37 <= v39)
  {
    v5 = v99;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      goto LABEL_34;
    }

    goto LABEL_113;
  }

LABEL_38:
  if (v39 <= -9.22337204e18)
  {
    goto LABEL_101;
  }

  if (v39 >= 9.22337204e18)
  {
LABEL_102:
    __break(1u);
    goto LABEL_103;
  }

  v44 = *(v95 + 8);
  if (v37 <= v39)
  {
    if ((*&v44 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
    {
      goto LABEL_51;
    }

    goto LABEL_106;
  }

  if ((*&v44 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_111;
  }

  if (v44 <= -9.22337204e18)
  {
LABEL_111:
    __break(1u);
    goto LABEL_112;
  }

  if (v44 < 9.22337204e18)
  {
    if (v37 <= v44)
    {
      v5 = v99;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v5 = sub_217E8DE90(0, *(v5 + 16) + 1, 1, v5);
      }

      v46 = *(v5 + 16);
      v45 = *(v5 + 24);
      if (v46 >= v45 >> 1)
      {
        v5 = sub_217E8DE90((v45 > 1), v46 + 1, 1, v5);
      }

      *(v5 + 16) = v46 + 1;
      v42 = v5 + 56 * v46;
      v43 = xmmword_217F5A200;
      goto LABEL_59;
    }

LABEL_51:
    if (v44 > -9.22337204e18)
    {
      if (v44 < 9.22337204e18)
      {
        if (v37 > v44)
        {
          v5 = v99;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v5 = sub_217E8DE90(0, *(v5 + 16) + 1, 1, v5);
          }

          v48 = *(v5 + 16);
          v47 = *(v5 + 24);
          if (v48 >= v47 >> 1)
          {
            v5 = sub_217E8DE90((v47 > 1), v48 + 1, 1, v5);
          }

          *(v5 + 16) = v48 + 1;
          v42 = v5 + 56 * v48;
          v43 = xmmword_217F5A210;
          goto LABEL_59;
        }

        goto LABEL_60;
      }

LABEL_108:
      __break(1u);
LABEL_109:
      v5 = sub_217E8DE90(0, *(v5 + 16) + 1, 1, v5);
LABEL_63:
      v55 = *(v5 + 16);
      v54 = *(v5 + 24);
      if (v55 >= v54 >> 1)
      {
        v5 = sub_217E8DE90((v54 > 1), v55 + 1, 1, v5);
      }

      *(v5 + 16) = v55 + 1;
      v56 = v5 + 56 * v55;
      v57 = xmmword_217F5A230;
      goto LABEL_71;
    }

LABEL_107:
    __break(1u);
    goto LABEL_108;
  }

LABEL_112:
  __break(1u);
LABEL_113:
  v5 = sub_217E8DE90(0, *(v5 + 16) + 1, 1, v5);
LABEL_34:
  v41 = *(v5 + 16);
  v40 = *(v5 + 24);
  if (v41 >= v40 >> 1)
  {
    v5 = sub_217E8DE90((v40 > 1), v41 + 1, 1, v5);
  }

  *(v5 + 16) = v41 + 1;
  v42 = v5 + 56 * v41;
  v43 = xmmword_217F5A1F0;
LABEL_59:
  *(v42 + 32) = v43;
  *(v42 + 48) = 0u;
  *(v42 + 64) = 0u;
  *(v42 + 80) = 0;
  v99 = v5;
LABEL_60:
  v49 = v101;
  v50 = v102;
  __swift_project_boxed_opaque_existential_1(v100, v101);
  v51 = (*(v50 + 56))(v49, v50);
  if (v51 != 2)
  {
    v52 = v51;
    v5 = v99;
    v53 = swift_isUniquelyReferenced_nonNull_native();
    if (v52)
    {
      if ((v53 & 1) == 0)
      {
        goto LABEL_109;
      }

      goto LABEL_63;
    }

    if ((v53 & 1) == 0)
    {
      v5 = sub_217E8DE90(0, *(v5 + 16) + 1, 1, v5);
    }

    v59 = *(v5 + 16);
    v58 = *(v5 + 24);
    if (v59 >= v58 >> 1)
    {
      v5 = sub_217E8DE90((v58 > 1), v59 + 1, 1, v5);
    }

    *(v5 + 16) = v59 + 1;
    v56 = v5 + 56 * v59;
    v57 = xmmword_217F5A220;
LABEL_71:
    *(v56 + 32) = v57;
    *(v56 + 48) = 0u;
    *(v56 + 64) = 0u;
    *(v56 + 80) = 0;
    v99 = v5;
  }

  v60 = v101;
  v61 = v102;
  __swift_project_boxed_opaque_existential_1(v100, v101);
  if ((*(v61 + 64))(v60, v61))
  {
    v62 = v101;
    v63 = v102;
    __swift_project_boxed_opaque_existential_1(v100, v101);
    v64 = (*(v63 + 112))(v62, v63);
    v97 = 2831718;
    v98 = 0xE300000000000000;
    MEMORY[0x21CEAEAC0](v64);

    v65 = v97;
    v66 = v98;
    v67 = v99;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v67 = sub_217E8DE90(0, *(v67 + 2) + 1, 1, v67);
    }

    v69 = *(v67 + 2);
    v68 = *(v67 + 3);
    if (v69 >= v68 >> 1)
    {
      v67 = sub_217E8DE90((v68 > 1), v69 + 1, 1, v67);
    }

    *(v67 + 2) = v69 + 1;
    v70 = &v67[56 * v69];
    *(v70 + 4) = v65;
    *(v70 + 5) = v66;
    *(v70 + 3) = 0u;
    *(v70 + 4) = 0u;
    v70[80] = 0;
    v99 = v67;
  }

  v71 = v101;
  v72 = v102;
  __swift_project_boxed_opaque_existential_1(v100, v101);
  if ((*(v72 + 48))(v71, v72))
  {
    v73 = v99;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v73 = sub_217E8DE90(0, *(v73 + 2) + 1, 1, v73);
    }

    v75 = *(v73 + 2);
    v74 = *(v73 + 3);
    if (v75 >= v74 >> 1)
    {
      v73 = sub_217E8DE90((v74 > 1), v75 + 1, 1, v73);
    }

    *(v73 + 2) = v75 + 1;
    v76 = &v73[56 * v75];
    *(v76 + 2) = xmmword_217F5A240;
    *(v76 + 3) = 0u;
    *(v76 + 4) = 0u;
    v76[80] = 0;
    v99 = v73;
  }

  v77 = v101;
  v78 = v102;
  __swift_project_boxed_opaque_existential_1(v100, v101);
  v79 = (*(v78 + 24))(v77, v78);
  if (v79)
  {
    v80 = *(v79 + 16);
    if (v80)
    {
      v96 = MEMORY[0x277D84F90];
      v81 = v79;
      sub_217EA0D80(0, v80, 0);
      v82 = v96;
      v95 = v81;
      v83 = (v81 + 40);
      do
      {
        v84 = *(v83 - 1);
        v85 = *v83;
        v97 = 724656486;
        v98 = 0xE400000000000000;

        MEMORY[0x21CEAEAC0](v84, v85);

        v86 = v97;
        v87 = v98;
        v96 = v82;
        v89 = *(v82 + 16);
        v88 = *(v82 + 24);
        if (v89 >= v88 >> 1)
        {
          sub_217EA0D80((v88 > 1), v89 + 1, 1);
          v82 = v96;
        }

        *(v82 + 16) = v89 + 1;
        v90 = v82 + 56 * v89;
        *(v90 + 32) = v86;
        *(v90 + 40) = v87;
        *(v90 + 48) = 0u;
        *(v90 + 64) = 0u;
        *(v90 + 80) = 1;
        v83 += 2;
        --v80;
      }

      while (v80);
    }

    else
    {

      v82 = MEMORY[0x277D84F90];
    }

    sub_217E80F38(v82);
  }

  v91 = v99;
  __swift_destroy_boxed_opaque_existential_1(v100);
  return v91;
}

uint64_t sub_217F37DD8(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    v2 = (result + 32);
    do
    {
      v3 = v2[3];
      v10[2] = v2[2];
      v10[3] = v3;
      v11[0] = v2[4];
      *(v11 + 9) = *(v2 + 73);
      v4 = *v2;
      v5 = v2[1];
      v2 += 6;
      v10[0] = v4;
      v10[1] = v5;
      sub_217E98218(v10, v8);
      sub_217F19600(v6, v10);
      v8[2] = v6[2];
      v8[3] = v6[3];
      v9[0] = v7[0];
      *(v9 + 9) = *(v7 + 9);
      v8[0] = v6[0];
      v8[1] = v6[1];
      result = sub_217E98274(v8);
      --v1;
    }

    while (v1);
  }

  return result;
}

uint64_t sub_217F37E7C(uint64_t a1, uint64_t (*a2)(__int128 *, uint64_t, uint64_t, __int128 *))
{
  v2 = *(a1 + 16);
  v3 = MEMORY[0x277D84F90];
  if (!v2)
  {
    return v3;
  }

  v4 = a1;
  v46 = MEMORY[0x277D84F90];
  sub_217EA0844(0, v2, 0);
  v3 = v46;
  v5 = v4 + 64;
  v6 = -1 << *(v4 + 32);
  result = sub_217F4AD84();
  v8 = result;
  v9 = 0;
  v41 = *(v4 + 36);
  v34 = v4 + 72;
  v35 = v2;
  v36 = v4 + 64;
  while ((v8 & 0x8000000000000000) == 0 && v8 < 1 << *(v4 + 32))
  {
    v11 = v8 >> 6;
    if ((*(v5 + 8 * (v8 >> 6)) & (1 << v8)) == 0)
    {
      goto LABEL_22;
    }

    if (v41 != *(v4 + 36))
    {
      goto LABEL_23;
    }

    v38 = v9;
    v12 = (*(v4 + 48) + 16 * v8);
    v14 = *v12;
    v13 = v12[1];
    v15 = *(v4 + 56) + 24 * v8;
    v39 = *v15;
    v16 = *(v15 + 16);

    v42 = v39;
    v43 = v16;
    v17 = a2(&v44, v14, v13, &v42);
    v19 = v18;

    v20 = v44;
    v21 = v45;
    v46 = v3;
    v22 = v4;
    v24 = *(v3 + 16);
    v23 = *(v3 + 24);
    v25 = v3;
    if (v24 >= v23 >> 1)
    {
      v40 = v44;
      result = sub_217EA0844((v23 > 1), v24 + 1, 1);
      v20 = v40;
      v25 = v46;
    }

    *(v25 + 16) = v24 + 1;
    v26 = v25 + 40 * v24;
    *(v26 + 32) = v17;
    *(v26 + 40) = v19;
    *(v26 + 48) = v20;
    *(v26 + 64) = v21;
    v10 = 1 << *(v22 + 32);
    if (v8 >= v10)
    {
      goto LABEL_24;
    }

    v4 = v22;
    v5 = v36;
    v27 = *(v36 + 8 * v11);
    if ((v27 & (1 << v8)) == 0)
    {
      goto LABEL_25;
    }

    v3 = v25;
    if (v41 != *(v4 + 36))
    {
      goto LABEL_26;
    }

    v28 = v27 & (-2 << (v8 & 0x3F));
    if (v28)
    {
      v10 = __clz(__rbit64(v28)) | v8 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v29 = v11 << 6;
      v30 = v11 + 1;
      v31 = (v34 + 8 * v11);
      while (v30 < (v10 + 63) >> 6)
      {
        v33 = *v31++;
        v32 = v33;
        v29 += 64;
        ++v30;
        if (v33)
        {
          result = sub_217F3AB3C(v8, v41, 0);
          v10 = __clz(__rbit64(v32)) + v29;
          goto LABEL_4;
        }
      }

      result = sub_217F3AB3C(v8, v41, 0);
    }

LABEL_4:
    v9 = v38 + 1;
    v8 = v10;
    if (v38 + 1 == v35)
    {
      return v3;
    }
  }

  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_217F38150(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    v2 = (result + 40);
    do
    {
      v4 = *(v2 - 1);
      v3 = *v2;

      sub_217F194B0(&v5, v4, v3);

      v2 += 2;
      --v1;
    }

    while (v1);
  }

  return result;
}

uint64_t sub_217F381C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  (*(*(a4 + 8) + 40))(a3, *(a4 + 8));
  swift_getAssociatedTypeWitness();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF5398, &qword_217F4CC08);
  v4 = sub_217F4AEA4();

  return v4;
}

uint64_t sub_217F38328(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v26 = result;
  v28 = 0;
  v5 = 0;
  v6 = a3 + 64;
  v7 = 1 << *(a3 + 32);
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a3 + 64);
  v10 = (v7 + 63) >> 6;
  v30 = a4 + 56;
  while (v9)
  {
    v11 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
LABEL_13:
    if (*(a4 + 16))
    {
      v27 = v11 | (v5 << 6);
      v14 = (*(a3 + 48) + 16 * v27);
      v16 = *v14;
      v15 = v14[1];
      v17 = *(a4 + 40);
      sub_217F4B224();

      sub_217F4AB24();
      v18 = sub_217F4B254();
      v19 = -1 << *(a4 + 32);
      v20 = v18 & ~v19;
      if ((*(v30 + ((v20 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v20))
      {
        v21 = ~v19;
        while (1)
        {
          v22 = (*(a4 + 48) + 16 * v20);
          v23 = *v22 == v16 && v22[1] == v15;
          if (v23 || (sub_217F4B144() & 1) != 0)
          {
            break;
          }

          v20 = (v20 + 1) & v21;
          if (((*(v30 + ((v20 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v20) & 1) == 0)
          {
            goto LABEL_5;
          }
        }

        *(v26 + ((v27 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v27;
        if (__OFADD__(v28++, 1))
        {
          __break(1u);
          return sub_217F36838(v26, a2, v28, a3);
        }
      }

      else
      {
LABEL_5:
      }
    }
  }

  v12 = v5;
  while (1)
  {
    v5 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v5 >= v10)
    {
      return sub_217F36838(v26, a2, v28, a3);
    }

    v13 = *(v6 + 8 * v5);
    ++v12;
    if (v13)
    {
      v11 = __clz(__rbit64(v13));
      v9 = (v13 - 1) & v13;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_217F38528(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v27 = result;
  v28 = 0;
  v5 = 0;
  v6 = a3 + 64;
  v7 = 1 << *(a3 + 32);
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a3 + 64);
  v10 = (v7 + 63) >> 6;
  v32 = a4 + 56;
  while (v9)
  {
    v11 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
LABEL_13:
    v14 = v11 | (v5 << 6);
    if (*(a4 + 16))
    {
      v15 = (*(a3 + 48) + 16 * v14);
      v17 = *v15;
      v16 = v15[1];
      v30 = *(*(a3 + 56) + (v14 << 6) + 56);
      v18 = *(a4 + 40);
      sub_217F4B224();

      sub_217F4AB24();
      v19 = sub_217F4B254();
      v20 = -1 << *(a4 + 32);
      v21 = v19 & ~v20;
      if ((*(v32 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21))
      {
        v29 = v14;
        v22 = ~v20;
        while (1)
        {
          v23 = (*(a4 + 48) + 16 * v21);
          v24 = *v23 == v17 && v23[1] == v16;
          if (v24 || (sub_217F4B144() & 1) != 0)
          {
            break;
          }

          v21 = (v21 + 1) & v22;
          if (((*(v32 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21) & 1) == 0)
          {
            goto LABEL_5;
          }
        }

        if (v30)
        {
          *(v27 + ((v29 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v29;
          if (__OFADD__(v28++, 1))
          {
            __break(1u);
            return sub_217F36838(v27, a2, v28, a3);
          }
        }
      }

      else
      {
LABEL_5:
      }
    }
  }

  v12 = v5;
  while (1)
  {
    v5 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v5 >= v10)
    {
      return sub_217F36838(v27, a2, v28, a3);
    }

    v13 = *(v6 + 8 * v5);
    ++v12;
    if (v13)
    {
      v11 = __clz(__rbit64(v13));
      v9 = (v13 - 1) & v13;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

void *sub_217F38740(uint64_t a1, uint64_t a2, uint64_t (*a3)(char *, unint64_t, uint64_t, uint64_t), uint64_t (*a4)(void *, uint64_t, uint64_t, uint64_t))
{
  v19[1] = *MEMORY[0x277D85DE8];
  v9 = *(a1 + 32);
  v10 = v9 & 0x3F;
  v11 = ((1 << v9) + 63) >> 6;
  v12 = 8 * v11;
  v13 = swift_bridgeObjectRetain_n();
  if (v10 > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v18 = swift_slowAlloc();

      v15 = sub_217F362B4(v18, v11, a1, a2, a4);
      MEMORY[0x21CEAF6B0](v18, -1, -1);
      swift_bridgeObjectRelease_n();
      goto LABEL_6;
    }
  }

  MEMORY[0x28223BE20](v13, v14);
  bzero(v19 - ((v12 + 15) & 0x3FFFFFFFFFFFFFF0), v12);

  v15 = a3(v19 - ((v12 + 15) & 0x3FFFFFFFFFFFFFF0), v11, a1, a2);

  if (v4)
  {
    swift_willThrow();
  }

  swift_bridgeObjectRelease_n();
LABEL_6:
  v16 = *MEMORY[0x277D85DE8];
  return v15;
}

uint64_t sub_217F38910(void *a1, int64_t a2, uint64_t a3, double a4, uint64_t a5, uint64_t a6, const void *a7, __int128 *a8, uint64_t a9, double a10, double a11, double a12, double a13, double a14, double a15, double a16, double *a17, unsigned __int8 *a18, double a19, double a20, uint64_t a21, unint64_t a22, uint64_t a23, char a24, double a25, unsigned __int8 a26, int64_t a27, uint64_t a28, uint64_t a29, uint64_t a30)
{
  v450 = a4;
  v461 = *&a9;
  v458 = a6;
  v475 = *&a2;
  v441 = a1;
  v471 = a30;
  v476 = a20;
  v474 = a22;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF54C0, &qword_217F4D500);
  v27 = *(*(v26 - 8) + 64);
  MEMORY[0x28223BE20](v26 - 8, v28);
  v449 = &v409 - v29;
  v30 = COERCE_DOUBLE(sub_217F4A9F4());
  v31 = *(*&v30 - 8);
  v447 = v30;
  v448 = v31;
  v32 = *(*&v31 + 64);
  MEMORY[0x28223BE20](*&v30, v33);
  v440 = &v409 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  memcpy(v482, a7, 0x3CBuLL);
  memcpy(v487, a7, sizeof(v487));
  v35 = a8[3];
  v483[2] = a8[2];
  v483[3] = v35;
  v484 = *(a8 + 8);
  v36 = *a8;
  v483[1] = a8[1];
  v483[0] = v36;
  v473 = *a17;
  v418 = *a18;
  v37 = *(a18 + 1);
  v417 = *(a18 + 2);
  v38 = COERCE_DOUBLE(type metadata accessor for ClassicArticleData());
  v39 = *(a3 + *(*&v38 + 64));

  *&v41 = COERCE_DOUBLE(sub_217E97288(v40));
  v438 = v39;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF52D0, &qword_217F4C930);
  v42 = swift_allocObject();
  *(v42 + 16) = xmmword_217F4BC20;
  v43 = a3 + *(*&v38 + 56);
  v44 = *v43;
  v45 = *(v43 + 8);
  *(v42 + 32) = *v43;
  *(v42 + 40) = v45;

  v477 = sub_217ED150C(v42, v41);
  swift_setDeallocating();
  sub_217E97320(v42 + 32);
  swift_deallocClassInstance();
  memcpy(v480, a7, 0x3CBuLL);
  v46 = v441;
  v463 = a29;
  sub_217F32598(v441, v480, v481);
  v485[8] = v482[32];
  v485[9] = v482[33];
  v485[10] = v482[34];
  v485[4] = v482[28];
  v485[5] = v482[29];
  v485[6] = v482[30];
  v485[7] = v482[31];
  v485[0] = v482[24];
  v485[1] = v482[25];
  v485[2] = v482[26];
  v485[3] = v482[27];
  v480[8] = v482[32];
  v480[9] = v482[33];
  v480[10] = v482[34];
  v480[4] = v482[28];
  v480[5] = v482[29];
  v47 = *v481;
  v48 = *&v481[1];
  v480[6] = v482[30];
  v480[7] = v482[31];
  v49 = *&v481[2];
  v455 = *&v481[3];
  v480[0] = v482[24];
  v480[1] = v482[25];
  v50 = *&v481[4];
  v51 = *&v481[5];
  v486 = *&v482[35];
  *&v480[11] = *&v482[35];
  v480[2] = v482[26];
  v480[3] = v482[27];
  v474 = sub_217F31550(a3, *&v476, v474, v480);
  v52 = sub_217F372EC(a3, 75, v483);
  v478[2] = a3;
  v478[3] = v483;
  *&v478[4] = v461;
  *&v478[5] = v473;
  v53 = sub_217ECCF40(MEMORY[0x277D84F98], sub_217F3AAB8, v478, v52);

  v473 = *&v44;
  v476 = v45;
  v54 = *&v45;
  v55 = v46;
  v459 = *&v41;
  v452 = sub_217F32A40(v44, v54, v41, *&v475);
  LODWORD(v457) = *(a3 + 59);
  v470 = v38;
  if (LODWORD(v457) != 1)
  {
    goto LABEL_5;
  }

  v56 = v46[3];
  v57 = v46[4];
  __swift_project_boxed_opaque_existential_1(v55, v55[3]);
  v58 = (*(v57 + 64))(v56, v57);
  LOBYTE(v56) = sub_217EA3608(*&v473, *&v476, v58);

  if ((v56 & 1) == 0)
  {
    v62 = v55[3];
    v63 = v55[4];
    __swift_project_boxed_opaque_existential_1(v55, v62);
    (*(v63 + 48))(v480, v62, v63);
    v38 = v470;
    if (LOBYTE(v480[0]) != 1)
    {
      v92 = v55[3];
      v93 = v55[4];
      __swift_project_boxed_opaque_existential_1(v55, v92);
      v94 = (*(v93 + 56))(v92, v93);
      LOBYTE(v92) = sub_217EA3608(*&v473, *&v476, v94);

      v60 = *(a3 + *(*&v38 + 68));
      if (v92)
      {
        v61 = 1;
        v59 = v470;
        goto LABEL_7;
      }

      v59 = v470;
      goto LABEL_6;
    }

LABEL_5:
    v60 = *(a3 + *(*&v38 + 68));
    v59 = v38;
LABEL_6:
    v61 = 0;
    goto LABEL_7;
  }

  v59 = v470;
  v60 = *(a3 + *(*&v470 + 68));
  v61 = 1;
LABEL_7:
  v64 = *(v60 + 16);
  v437 = v53;
  if (v64 && (v65 = sub_217E8EB28(v61), (v66 & 1) != 0))
  {
    v467 = *(*(v60 + 56) + 8 * v65);
  }

  else
  {
    v467 = sub_217ECC3C4(MEMORY[0x277D84F90]);
  }

  v67 = *(a3 + 58);
  LODWORD(v431) = v67;
  if (v67 == 2 || (v67 & 1) == 0)
  {
    v68 = 0;
  }

  else
  {
    v68 = *(a3 + *(*&v59 + 100)) ^ 1;
  }

  v69 = *(a3 + 8);
  v443 = *(a3 + 16);
  v444 = *&v69;
  v70 = *(a3 + *(*&v59 + 80));
  v71 = *&v59;
  v72 = *(a3 + *(*&v59 + 84));
  v74 = v71[23];
  v73 = v71[24];
  v75 = a3;
  v76 = *(a3 + v73);
  v464 = v75;
  v416 = *(v75 + v74);
  v77 = sub_217F32CCC(v416);
  v422 = 0;
  v439 = COERCE_DOUBLE(_s14descr2829CD401O14CohortProviderCMa());
  v78 = swift_allocObject();
  *(v78 + 16) = v467;
  *(v78 + 32) = v61;
  v79 = v476;
  *(v78 + 40) = v473;
  *(v78 + 48) = v79;
  memcpy(v480, v487, 0x3CBuLL);
  nullsub_154(v480);
  v80 = memcpy((v78 + 56), v480, 0x3CBuLL);
  *(v78 + 1027) = v68 & 1;
  LODWORD(v442) = v70;
  *(v78 + 1028) = v70;
  *(v78 + 1029) = v72;
  *(v78 + 1030) = v76;
  *(v78 + 1032) = v77;
  v472 = v78;
  *(v78 + 1040) = a24 & 1;
  v419 = v37;
  v435 = v50;
  v436 = v47;
  v433 = v48;
  v434 = v49;
  v432 = v51;
  if ((v482[4] & 1) != 0 && *(v77 + 16))
  {
    MEMORY[0x28223BE20](v80, v81);
    *(&v409 - 80) = v82;
    *(&v409 - 9) = v482;
    *(&v409 - 64) = LOBYTE(v442);
    *(&v409 - 63) = v72;
    *(&v409 - 62) = v76;
    v83 = v473;
    *(&v409 - 7) = v77;
    *(&v409 - 6) = v83;
    *(&v409 - 5) = v476;
    *(&v409 - 32) = v61;
    *(&v409 - 31) = v84;
    v85 = v443;
    *(&v409 - 3) = v444;
    *(&v409 - 2) = v85;

    v86 = v467;

    v87 = v422;
    v88 = sub_217F37E7C(v86, sub_217F3AADC);
    if (v87)
    {
      goto LABEL_292;
    }

    v89 = v88;

    if (*(v89 + 16))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF5370, &qword_217F4CBD8);
      v90 = sub_217F4AED4();
    }

    else
    {
      v90 = MEMORY[0x277D84F98];
    }

    v481[0] = v90;

    sub_217F34CC4(v95, 1, v481);
    v422 = 0;

    v91 = v481[0];
    *(v472 + 24) = v481[0];
  }

  else
  {
    v91 = v467;
    *(v472 + 24) = v467;
    swift_bridgeObjectRetain_n();
  }

  v429 = a28;
  v475 = *&a27;
  v469 = a23;
  v430 = a21;
  v451 = a19;
  v462 = a26;
  v456 = a25;
  v96 = 1 << *(v91 + 32);
  v97 = -1;
  if (v96 < 64)
  {
    v97 = ~(-1 << v96);
  }

  v98 = v97 & *(v91 + 64);
  v99 = *(&v482[54] + 1);
  v100 = *(&v482[55] + 1);
  v453 = *(&v482[57] + 1);
  v468 = *&v482[57];
  v465 = *(&v482[45] + 1);
  v460 = *(&v482[58] + 1);
  v466 = *&v482[58];
  v101 = (v96 + 63) >> 6;
  LODWORD(v454) = LOBYTE(v482[56]) ^ 1 | BYTE8(v482[60]) & 1;
  v102 = 1.0;
  if (*(&v482[54] + 1) != 0.0)
  {
    v102 = *(&v482[54] + 1);
  }

  v446 = v102;

  v103 = 0;
  v104 = 0.0;
  v105 = 0.0;
  v106 = 0.0;
  while (v98)
  {
LABEL_36:
    v112 = __clz(__rbit64(v98));
    v98 &= v98 - 1;
    v113 = v112 | (v103 << 6);
    v114 = (*(v91 + 48) + 16 * v113);
    v115 = *v114;
    v116 = v114[1];
    if (*v114 != 42 || v116 != 0xE100000000000000)
    {
      v107 = (*(v91 + 56) + 24 * v113);
      v109 = v107[1];
      v108 = v107[2];
      v110 = *v107;
      if ((sub_217F4B144() & 1) == 0)
      {
        v117 = 0.0;
        if ((LOBYTE(v454) & 1) == 0 && *(v474 + 16))
        {

          v118 = sub_217E8E88C(v115, v116);
          v119 = 0.0;
          if (v120)
          {
            v119 = *(*(v474 + 56) + 8 * v118);
          }

          v445 = v119;

          v117 = v445;
        }

        v121 = v99 == 0.0 || v108 <= 0.0;
        v122 = (v110 * v117 + v109 * (1.0 - v117)) / v108;
        if (v121)
        {
          v122 = 0.0;
        }

        v106 = v106 + v446;
        v105 = v105 + v122 * v446;
        v104 = v104 + 1.0;
      }
    }
  }

  while (1)
  {
    v111 = v103 + 1;
    if (__OFADD__(v103, 1))
    {
      break;
    }

    if (v111 >= v101)
    {

      v123 = pow(v460 + v100 * v104 + (1.0 - v100) * v106, v465);
      v420 = v99;
      if (v123 <= 0.0)
      {
        v124 = 0.0;
        v125 = v453;
        if (v466 > 0.0)
        {
          goto LABEL_54;
        }

LABEL_52:
        v126 = v468;
      }

      else
      {
        v124 = v105 / v123;
        v125 = v453;
        if (v466 <= 0.0)
        {
          goto LABEL_52;
        }

LABEL_54:
        v126 = v468;
        if (v125 > 0.0)
        {
          v127 = v466 + -1.0;
          v128 = exp2(-v452 / v125);
          v126 = v468 * (v127 * v128 + 1.0);
        }
      }

      v129 = v472;
      v130 = 0;
      v454 = (1.0 - v126) * v124 + v126 * sub_217F334B8(v472);
      v131 = *(v129 + 24);
      v132 = 1 << *(v131 + 32);
      v133 = -1;
      if (v132 < 64)
      {
        v133 = ~(-1 << v132);
      }

      v134 = v133 & *(v131 + 64);
      v135 = (v132 + 63) >> 6;
      v136 = 0.0;
      v137 = 0.0;
      v138 = 0.0;
      while (v134)
      {
LABEL_65:
        v144 = __clz(__rbit64(v134));
        v134 &= v134 - 1;
        v145 = v144 | (v130 << 6);
        v146 = (*(v131 + 48) + 16 * v145);
        if (*v146 != 42 || v146[1] != 0xE100000000000000)
        {
          v139 = (*(v131 + 56) + 24 * v145);
          v141 = v139[1];
          v140 = v139[2];
          v142 = *v139;
          if ((sub_217F4B144() & 1) == 0)
          {
            v147 = v420 == 0.0 || v140 <= 0.0;
            v148 = (v142 + v141 * 0.0) / v140;
            if (v147)
            {
              v148 = 0.0;
            }

            v138 = v138 + v446;
            v137 = v137 + v148 * v446;
            v136 = v136 + 1.0;
          }
        }
      }

      while (1)
      {
        v143 = v130 + 1;
        if (__OFADD__(v130, 1))
        {
          goto LABEL_284;
        }

        if (v143 >= v135)
        {
          break;
        }

        v134 = *(v131 + 64 + 8 * v143);
        ++v130;
        if (v134)
        {
          v130 = v143;
          goto LABEL_65;
        }
      }

      v149 = pow(v460 + v100 * v136 + (1.0 - v100) * v138, v465);
      if (v149 <= 0.0)
      {
        v150 = v449;
        if (v466 <= 0.0)
        {
          v425 = 0.0;
          goto LABEL_81;
        }

        v425 = 0.0;
      }

      else
      {
        v150 = v449;
        v425 = v137 / v149;
        if (v466 <= 0.0)
        {
          goto LABEL_81;
        }
      }

      if (v453 > 0.0)
      {
        v151 = v466 + -1.0;
        v152 = exp2(-v452 / v453);
        v468 = v468 * (v151 * v152 + 1.0);
      }

LABEL_81:
      v424 = sub_217F334B8(v472);
      v153 = 696;
      if (LODWORD(v457))
      {
        v153 = 720;
      }

      v154 = *(v482 + v153);
      v155 = *(v471 + 8);
      swift_getAssociatedTypeWitness();
      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
      v157 = *(AssociatedConformanceWitness + 32);
      v158 = swift_checkMetadataState();
      v159 = v157(v158, AssociatedConformanceWitness);
      if (*(&v482[44] + 1) > 0.0 && *&v482[44] > 0.0)
      {
        v160 = *(&v482[44] + 1) + -1.0;
        v154 = v154 * (v160 * exp2(-v159 / *&v482[44]) + 1.0);
      }

      v161 = v55[3];
      v162 = v55[4];
      __swift_project_boxed_opaque_existential_1(v55, v161);
      v163 = (*(v162 + 8))(v161, v162);
      v164 = sub_217EA3608(*&v473, *&v476, v163);

      if (v164)
      {
        v165 = *(&v482[17] + 1);
      }

      else
      {
        v165 = 0.0;
      }

      v166 = v55[3];
      v167 = v55[4];
      __swift_project_boxed_opaque_existential_1(v55, v166);
      v168 = *(v167 + 8);
      v169 = *&v459;

      v170 = v168(v166, v167);
      v171 = sub_217F36A9C(v170, v169);

      v172 = *(v171 + 16);

      if (v172)
      {
        v173 = v464;
        v174 = v448;
        if (v172 == 2)
        {
          v175 = *&v482[50];
        }

        else if (v172 == 1)
        {
          v175 = *&v482[49];
        }

        else
        {
          v175 = *(&v482[49] + 1);
        }
      }

      else
      {
        v175 = *(&v482[50] + 1);
        v173 = v464;
        v174 = v448;
      }

      v176 = v55[3];
      v177 = v55[4];
      __swift_project_boxed_opaque_existential_1(v55, v176);
      v178 = (*(v177 + 16))(v176, v177);
      v179 = sub_217F36A9C(v178, *&v459);

      v180 = *(v179 + 16);

      if ((v164 & 1) == 0)
      {
        v181 = v55[3];
        v182 = v55[4];
        __swift_project_boxed_opaque_existential_1(v55, v181);
        v183 = (*(v182 + 16))(v181, v182);
        LOBYTE(v181) = sub_217EA3608(*&v473, *&v476, v183);

        v180 += v181 & 1;
      }

      if (v180)
      {
        v184 = *&v470;
        if (v180 == 2)
        {
          v185 = *&v482[2];
        }

        else if (v180 == 1)
        {
          v185 = *&v482[1];
        }

        else
        {
          v185 = *(&v482[1] + 1);
        }
      }

      else
      {
        v185 = *(&v482[2] + 1);
        v184 = *&v470;
      }

      v186 = v447;
      v187 = 0.0;
      if (v462)
      {
        v188 = 0.0;
      }

      else
      {
        v188 = *&v482[51];
      }

      v189 = *&v482[47];
      v190 = *(&v482[46] + 1);
      v191 = *(v482 + 1);
      v460 = *(&v482[47] + 1) + v188 + v154 + *&v482[47] + *(&v482[46] + 1) + *(v482 + 1);
      if (v460 > 0.0)
      {
        v192 = *(v173 + v184[26]);
        v193 = *&v482[48] * v192;
        v121 = v192 <= 0.0;
        v194 = 0.0;
        v195 = 1.0;
        if (v121)
        {
          v195 = 0.0;
        }

        v196 = v193 + *(&v482[48] + 1) * v195;
        if ((v462 & 1) == 0)
        {
          v194 = v456;
        }

        v187 = (v194 * *&v482[51] + v454 * v154 + v175 * *&v482[47] + v165 * *(&v482[46] + 1) + v185 * *(v482 + 1) + *(&v482[47] + 1) * v196) / v460;
      }

      sub_217F3AD5C(v173 + v184[13], v150, &qword_27CBF54C0, &qword_217F4D500);
      v197 = *(*&v174 + 48);
      v198 = v197(v150, 1, *&v186);
      v453 = v154;
      v448 = v175;
      *&v449 = v165;
      v446 = v191;
      v447 = v190;
      v445 = v185;
      v466 = v187;
      if (v198 == 1)
      {
        v199 = v150;
        v200 = v440;
        (*(*&v174 + 16))(v440, COERCE_DOUBLE(*&v451), COERCE_DOUBLE(*&v186));
        v201 = v197(v199, 1, *&v186);
        v202 = v200;
        if (v201 != 1)
        {
          sub_217F3ADC4(v199, &qword_27CBF54C0, &qword_217F4D500);
        }
      }

      else
      {
        v202 = v440;
        (*(*&v174 + 32))(v440, v150, COERCE_DOUBLE(*&v186));
      }

      v459 = v189;
      sub_217F4A9B4();
      v204 = v203;
      (*(*&v174 + 8))(v202, COERCE_DOUBLE(*&v186));
      v451 = v204 * 1000.0;
      LODWORD(v440) = LOBYTE(v482[23]);
      v205 = *(v173 + v184[18]);
      swift_allocObject();
      v439 = COERCE_DOUBLE(sub_217E8A06C(v205));
      v206 = *(*&v439 + 24);
      v207 = 1 << *(v206 + 32);
      v208 = -1;
      if (v207 < 64)
      {
        v208 = ~(-1 << v207);
      }

      v209 = v208 & *(v206 + 64);
      v210 = *&v482[12];
      v211 = BYTE8(v482[12]);
      v212 = *(&v482[13] + 1);
      v427 = *&v482[3];
      v213 = *(&v482[14] + 1);
      v428 = *&v482[14];
      v426 = *&v482[15];
      v413 = LOBYTE(v482[17]);
      v214 = (v207 + 63) >> 6;
      v415 = *&v482[11];
      v215 = v482[17] & 1;
      v423 = v205;
      swift_bridgeObjectRetain_n();

      v216 = 0;
      v217 = v211 ^ 1;
      v414 = v217 | v215;
      v218 = 0.0;
      v421 = 0.0;
      v219 = 0.0;
      while (1)
      {
LABEL_123:
        if (v209)
        {
          goto LABEL_128;
        }

        do
        {
          v224 = v216 + 1;
          if (__OFADD__(v216, 1))
          {
            goto LABEL_285;
          }

          if (v224 >= v214)
          {
            v241 = v469;

            v242 = v474;

            v243 = pow(v426 + v210 * v218 + (1.0 - v210) * v219, v427);
            if (v243 <= 0.0)
            {
              v245 = 0.0;
              v244 = v213 <= 0.0;
            }

            else
            {
              v244 = v213 <= 0.0;
              v245 = v421 / v243;
            }

            v246 = *&v461;
            v247 = v440;
            if (!v244 && v428 > 0.0)
            {
              v212 = v212 * ((v213 + -1.0) * exp2(-v452 / v428) + 1.0);
            }

            v248 = sub_217F334B8(*&v439);

            v249 = (1.0 - v212) * v245 + v212 * v248;
            v250 = 1.0;
            v252 = v433;
            v251 = v434;
            if (v247)
            {
              v250 = sub_217F31F60(v477, v242, v241, v485, v420);
            }

            v440 = *&v249;
            v253 = v455 * v249;
            v254 = v477;
            v255 = sub_217F322DC(v477, v246);
            v256 = v55[3];
            v257 = v55[4];
            __swift_project_boxed_opaque_existential_1(v55, v256);
            v258 = (*(v257 + 56))(v256, v257);
            v259 = sub_217EA3608(*&v473, *&v476, v258);

            if (LODWORD(v457))
            {
              v260 = 1.0;
            }

            else
            {
              v260 = v252;
            }

            if (v259)
            {
              v261 = v260;
            }

            else
            {
              v261 = 1.0;
            }

            if ((v259 & 1 & LOBYTE(v457)) != 0)
            {
              v262 = v251;
            }

            else
            {
              v262 = 1.0;
            }

            if (LODWORD(v442))
            {
              v263 = v432;
            }

            else
            {
              v263 = 1.0;
            }

            v264 = v436;
            if (*(v464 + *(*&v470 + 88)))
            {
              v265 = v435;
            }

            else
            {
              v265 = 1.0;
            }

            if (!*(v464 + *(*&v470 + 76)))
            {
              v264 = 1.0;
            }

            v461 = v264;
            v266 = v55[3];
            v267 = v55[4];
            __swift_project_boxed_opaque_existential_1(v55, v266);
            v268 = *(v267 + 104);

            v269 = v268(v266, v267);
            v270 = sub_217F36A9C(v269, v254);

            v271 = *(v270 + 16);

            v439 = v261;
            v434 = v262;
            if (v271)
            {
              v272 = *&v482[42];
              if (v262 >= 1.0)
              {
                v273 = v262;
              }

              else
              {
                v273 = 1.0;
              }
            }

            else
            {
              v272 = 1.0;
              if (v262 >= 1.0)
              {
                v273 = v262;
              }

              else
              {
                v273 = 1.0;
              }
            }

            v274 = fmin(v262, 1.0);
            v275 = MEMORY[0x277D84F98];
            v276 = v437;
            if (v261 < 1.0)
            {
              v274 = v261 * v274;
            }

            else
            {
              v273 = v261 * v273;
            }

            v457 = v253 + 1.0;
            v277 = 1.0;
            if (v263 < 1.0)
            {
              v274 = v263 * v274;
            }

            else
            {
              v273 = v263 * v273;
            }

            if (v265 < 1.0)
            {
              v274 = v265 * v274;
            }

            else
            {
              v273 = v265 * v273;
            }

            if (v461 < 1.0)
            {
              v274 = v461 * v274;
            }

            else
            {
              v273 = v461 * v273;
            }

            if (v272 >= 1.0)
            {
              v278 = v272 * v273;
            }

            else
            {
              v278 = v273;
            }

            if (v272 >= 1.0)
            {
              v279 = v274;
            }

            else
            {
              v279 = v272 * v274;
            }

            v435 = sub_217F32F24(v247 & 1, v482, v466, v458, v463, v471);
            v436 = v278;
            v280 = pow(v278, v435);
            if (LODWORD(v431) == 2 || (LOBYTE(v431) & 1) == 0)
            {
              if (v247)
              {
LABEL_205:
                v277 = v457 * v250 * v255 * v280 * v277 * v450;
              }
            }

            else if (v247)
            {
              v277 = *v482;
              goto LABEL_205;
            }

            v432 = v250;
            v433 = v280;
            v442 = v255;
            v281 = BYTE8(v482[7]);
            v479 = v275;
            sub_217F3304C(BYTE8(v482[7]) & 1, v482, &v479, v276, v430);
            v283 = v282;

            v284 = *(&v482[23] + 1);
            v285 = v55[3];
            v286 = v55[4];
            __swift_project_boxed_opaque_existential_1(v55, v285);
            v287 = *(v286 + 24);
            v288 = v477;

            v289 = v287(v285, v286);
            v290 = sub_217F36A9C(v289, v288);

            v291 = *(v290 + 16);

            v292 = pow(v284, v291);
            v293 = v55[3];
            v294 = v55[4];
            __swift_project_boxed_opaque_existential_1(v55, v293);
            v295 = (*(v294 + 88))(v293, v294);
            v297 = v443;
            v296 = *&v444;
            LOBYTE(v293) = sub_217EA3608(*&v444, v443, v295);

            v298 = *&v482[43];
            if ((v293 & 1) == 0)
            {
              v298 = 0.0;
            }

            *&v471 = v298;
            v299 = v55[3];
            v300 = v55[4];
            __swift_project_boxed_opaque_existential_1(v55, v299);
            v301 = (*(v300 + 72))(v299, v300);
            LOBYTE(v299) = sub_217EA3608(v296, v297, v301);

            v302 = *&v482[41];
            if ((v299 & 1) == 0)
            {
              v302 = 0.0;
            }

            *&v463 = v302;
            v303 = v55[3];
            v304 = v55[4];
            __swift_project_boxed_opaque_existential_1(v55, v303);
            v305 = (*(v304 + 80))(v303, v304);
            LOBYTE(v303) = sub_217EA3608(v296, v297, v305);

            v306 = *(&v482[22] + 1);
            if ((v303 & 1) == 0)
            {
              v306 = 0.0;
            }

            v452 = v306;
            if (*(v438 + 16))
            {
              v307 = 0.0;
            }

            else
            {
              v307 = *&v482[46];
            }

            *&v458 = v307;
            v308 = 1.0;
            v309 = 1.0;
            if (v281)
            {
              v310 = *(&v482[40] + 1);
              sub_217F340B0(v418, v417, v416, *&v473, *&v476);
              v309 = pow(v311, v310);
              v308 = v279 * (v283 * v292) * (1.0 - *&v471) * (1.0 - *&v463) * (1.0 - v452) * (1.0 - *&v458) * v309;
            }

            v443 = *&v309;
            v444 = v292;
            v312 = v451;
            if ((BYTE8(v482[42]) & 1) != 0 && *(v464 + 56) != 1)
            {
              v313 = 48;
            }

            else
            {
              v313 = 40;
            }

            v314 = v460;
            v315 = *(v464 + v313);
            if (*(v464 + *(*&v470 + 88)) == 1)
            {
              v316 = *&v482[18];
              goto LABEL_225;
            }

            v317 = COERCE_DOUBLE(sub_217F32398(v477, v246));
            if (v318)
            {
              v316 = *(&v482[21] + 1);
LABEL_225:
              v470 = v316;
            }

            else
            {
              v470 = v317;
            }

            v476 = 1.0;
            if (v312 <= 0.0)
            {
              v473 = 1.0;
            }

            else
            {
              v473 = 1.0;
              if (v315 > 0.0)
              {
                v319 = v312 / v315;
                v473 = exp2(-(v470 * v319));
                v476 = exp2(-(*&v482[22] * v319));
              }
            }

            v320 = 0.0;
            if (v314 > 0.0)
            {
              v321 = v456;
              if (v462)
              {
                v321 = 0.0;
              }

              v320 = (v454 * (v453 * v476) + v473 * (v448 * v459 + *&v449 * v447 + v445 * v446 + v321 * *&v482[51])) / v314;
            }

            v322 = 0;
            v323 = v477 + 56;
            v324 = 1 << *(v477 + 32);
            v325 = -1;
            if (v324 < 64)
            {
              v325 = ~(-1 << v324);
            }

            v326 = v325 & *(v477 + 56);
            v327 = (v324 + 63) >> 6;
            for (i = MEMORY[0x277D84F98]; ; i[2] = v377)
            {
              while (1)
              {
LABEL_239:
                if (!v326)
                {
                  v332 = *&v475;
                  while (1)
                  {
                    v333 = v322 + 1;
                    if (__OFADD__(v322, 1))
                    {
                      goto LABEL_286;
                    }

                    if (v333 >= v327)
                    {
                      v475 = v265;

                      v378 = v479;
                      v379 = v429;
                      v431 = v283;
                      if (v429)
                      {
                        v380 = *(v429 + 320);
                        v381 = *(v429 + 328);
                        swift_beginAccess();
                        v382 = *(v379 + 296);
                      }

                      else
                      {
                        v382 = 0;
                        v380 = 0;
                        v381 = 1;
                      }

                      v383 = v474;
                      v384 = (1.0 - v468) * v425 + v468 * v424;
                      v385 = v466;
                      v386 = v308 * (v277 * v320);
                      v387 = *&v482[51];
                      _s14descr2829CD401O20HeadlineScoreProfileCMa();
                      result = swift_allocObject();
                      v389 = v445;
                      *(result + 24) = v461;
                      *(result + 32) = v389;
                      v390 = v434;
                      *(result + 40) = v439;
                      *(result + 48) = v390;
                      *(result + 56) = v455;
                      v391 = v440;
                      *(result + 72) = v457;
                      *(result + 80) = v391;
                      v392 = v465;
                      *(result + 88) = v433;
                      *(result + 96) = v392;
                      *(result + 16) = v467;
                      *(result + 64) = v423;
                      *(result + 104) = v475;
                      *(result + 112) = v263;
                      v393 = v432;
                      *(result + 120) = v470;
                      *(result + 128) = v393;
                      v394 = *&v444;
                      *(result + 136) = v435;
                      *(result + 144) = v394;
                      *(result + 152) = v431;
                      *(result + 160) = v383;
                      *(result + 168) = v378;
                      v395 = v442;
                      *(result + 176) = v385 * v277 * v308;
                      *(result + 184) = v395;
                      v396 = v463;
                      *(result + 192) = v385;
                      *(result + 200) = v396;
                      v397 = v471;
                      *(result + 208) = v452;
                      *(result + 216) = v397;
                      v398 = v453;
                      *(result + 224) = v454;
                      *(result + 232) = v384;
                      v399 = v458;
                      *(result + 240) = v398;
                      *(result + 248) = v399;
                      v401 = v448;
                      v400 = v449;
                      *(result + 256) = v436;
                      *(result + 264) = v400;
                      v402 = v473;
                      *(result + 272) = v401;
                      *(result + 280) = v402;
                      *(result + 288) = v476;
                      *(result + 296) = v386;
                      *(result + 304) = i;
                      *(result + 312) = v443;
                      *(result + 320) = v456;
                      *(result + 328) = v462 & 1;
                      v403 = v446;
                      *(result + 336) = v450;
                      *(result + 344) = v403;
                      v404 = v447;
                      *(result + 352) = v459;
                      *(result + 360) = v404;
                      *(result + 368) = v387;
                      *(result + 376) = v277;
                      *(result + 384) = v308;
                      *(result + 392) = v380;
                      *(result + 400) = v381;
                      *(result + 408) = v382;
                      *(result + 416) = v379 == 0;
                      return result;
                    }

                    v326 = *(v323 + 8 * v333);
                    ++v322;
                    if (v326)
                    {
                      v322 = v333;
                      goto LABEL_246;
                    }
                  }
                }

                v332 = *&v475;
LABEL_246:
                v334 = __clz(__rbit64(v326));
                v326 &= v326 - 1;
                v335 = (*(v477 + 48) + ((v322 << 10) | (16 * v334)));
                v337 = *v335;
                v336 = v335[1];
                if (!v332)
                {
                  break;
                }

                v338 = *(v332 + 16);
                v339 = v335[1];

                if (!v338)
                {
                  goto LABEL_238;
                }

                v340 = sub_217E8E88C(v337, v336);
                if ((v341 & 1) == 0)
                {
                  goto LABEL_238;
                }

                v342 = *(*(v332 + 56) + 8 * v340);
                isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                v481[0] = i;
                v344 = sub_217E8E88C(v337, v336);
                v346 = i[2];
                v347 = (v345 & 1) == 0;
                v348 = __OFADD__(v346, v347);
                v349 = v346 + v347;
                if (v348)
                {
                  goto LABEL_287;
                }

                if (i[3] >= v349)
                {
                  if (isUniquelyReferenced_nonNull_native)
                  {
                    if (v345)
                    {
                      goto LABEL_271;
                    }
                  }

                  else
                  {
                    v371 = v344;
                    v372 = v345;
                    sub_217E8F918();
                    v344 = v371;
                    if (v372)
                    {
                      goto LABEL_271;
                    }
                  }
                }

                else
                {
                  v350 = v345;
                  sub_217E924FC(v349, isUniquelyReferenced_nonNull_native);
                  v344 = sub_217E8E88C(v337, v336);
                  if ((v350 & 1) != (v351 & 1))
                  {
                    goto LABEL_291;
                  }

                  if (v350)
                  {
                    goto LABEL_271;
                  }
                }

                i = v481[0];
                *(v481[0] + 8 * (v344 >> 6) + 64) |= 1 << v344;
                v367 = (i[6] + 16 * v344);
                *v367 = v337;
                v367[1] = v336;
                *(i[7] + 8 * v344) = v342;
                v368 = i[2];
                v348 = __OFADD__(v368, 1);
                v369 = v368 + 1;
                if (v348)
                {
                  goto LABEL_288;
                }

                i[2] = v369;
              }

              v352 = v469;
              v353 = *(v469 + 16);
              v354 = v335[1];

              if (!v353 || (v355 = sub_217E8E88C(v337, v336), (v356 & 1) == 0) || (v357 = *(v352 + 56) + 24 * v355, (*(v357 + 16) & 1) != 0))
              {
LABEL_238:
                v329 = sub_217E8E88C(v337, v336);
                v331 = v330;

                if (v331)
                {
                  v365 = swift_isUniquelyReferenced_nonNull_native();
                  v481[0] = i;
                  if (!v365)
                  {
                    sub_217E8F918();
                    i = v481[0];
                  }

                  v366 = *(i[6] + 16 * v329 + 8);

                  sub_217F35070(v329, i);
                }

                goto LABEL_239;
              }

              v342 = *(v357 + 8);
              v358 = swift_isUniquelyReferenced_nonNull_native();
              v481[0] = i;
              v344 = sub_217E8E88C(v337, v336);
              v360 = i[2];
              v361 = (v359 & 1) == 0;
              v348 = __OFADD__(v360, v361);
              v362 = v360 + v361;
              if (v348)
              {
                goto LABEL_289;
              }

              if (i[3] >= v362)
              {
                if (v358)
                {
                  if (v359)
                  {
                    goto LABEL_271;
                  }
                }

                else
                {
                  v373 = v344;
                  v374 = v359;
                  sub_217E8F918();
                  v344 = v373;
                  if (v374)
                  {
                    goto LABEL_271;
                  }
                }
              }

              else
              {
                v363 = v359;
                sub_217E924FC(v362, v358);
                v344 = sub_217E8E88C(v337, v336);
                if ((v363 & 1) != (v364 & 1))
                {
                  goto LABEL_291;
                }

                if (v363)
                {
LABEL_271:
                  v370 = v344;

                  i = v481[0];
                  *(*(v481[0] + 56) + 8 * v370) = v342;
                  goto LABEL_239;
                }
              }

              i = v481[0];
              *(v481[0] + 8 * (v344 >> 6) + 64) |= 1 << v344;
              v375 = (i[6] + 16 * v344);
              *v375 = v337;
              v375[1] = v336;
              *(i[7] + 8 * v344) = v342;
              v376 = i[2];
              v348 = __OFADD__(v376, 1);
              v377 = v376 + 1;
              if (v348)
              {
                goto LABEL_290;
              }
            }
          }

          v209 = *(v206 + 64 + 8 * v224);
          ++v216;
        }

        while (!v209);
        v216 = v224;
LABEL_128:
        v225 = __clz(__rbit64(v209));
        v209 &= v209 - 1;
        v226 = v225 | (v216 << 6);
        v227 = (*(v206 + 48) + 16 * v226);
        v228 = *v227;
        v229 = v227[1];
        if (*v227 != 42 || v229 != 0xE100000000000000)
        {
          v220 = (*(v206 + 56) + 24 * v226);
          v222 = v220[1];
          v221 = v220[2];
          v223 = *v220;
          if ((sub_217F4B144() & 1) == 0)
          {
            break;
          }
        }
      }

      v411 = v217;
      v230 = v469;
      v412 = *(v469 + 16);

      if (v412 == 0.0 || (v231 = sub_217E8E88C(v228, v229), (v232 & 1) == 0))
      {
        v410 = 1.0;
        v235 = 0.0;
        v234 = v415;
        if ((v414 & 1) == 0)
        {
          goto LABEL_138;
        }
      }

      else
      {
        v233 = *(v230 + 56) + 24 * v231;
        v234 = *(v233 + 8);
        v410 = *v233;
        if (*(v233 + 16))
        {
          v234 = v415;
        }

        v235 = 0.0;
        if (v411 & 1 | v413 & (v234 <= v415))
        {
          goto LABEL_142;
        }

LABEL_138:
        v236 = v474;
        if (*(v474 + 16))
        {
          v412 = v234;
          v237 = sub_217E8E88C(v228, v229);
          if (v238)
          {
            v235 = *(*(v236 + 56) + 8 * v237);
            v234 = v412;
          }

          else
          {
            v234 = v412;
            v235 = 0.0;
          }
        }
      }

LABEL_142:
      v409 = v235;
      v412 = v234;

      if (v221 <= 0.0)
      {
        v239 = v412;
        if (v412 == 0.0)
        {
          v239 = 1.0;
        }

        v240 = 0.0;
      }

      else
      {
        v239 = v412;
        if (v412 == 0.0)
        {
          v239 = 1.0;
          v240 = 0.0;
        }

        else
        {
          v240 = (v223 * v409 + v222 * (1.0 - v409)) / v221;
        }
      }

      v217 = v411;
      v219 = v219 + v410 * v239;
      v421 = v421 + v240 * (v410 * v239);
      v218 = v218 + v410;
      goto LABEL_123;
    }

    v98 = *(v91 + 64 + 8 * v111);
    ++v103;
    if (v98)
    {
      v103 = v111;
      goto LABEL_36;
    }
  }

  __break(1u);
LABEL_284:
  __break(1u);
LABEL_285:
  __break(1u);
LABEL_286:
  __break(1u);
LABEL_287:
  __break(1u);
LABEL_288:
  __break(1u);
LABEL_289:
  __break(1u);
LABEL_290:
  __break(1u);
LABEL_291:
  sub_217F4B1C4();
  __break(1u);
LABEL_292:

  v405 = v472;
  v406 = *(v472 + 16);

  v407 = *(v405 + 48);

  v408 = *(v405 + 1032);

  swift_deallocPartialClassInstance();
  __break(1u);
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

uint64_t _s14descr2829CD401O20UserCohortMembershipVwet(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 17))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t _s14descr2829CD401O20UserCohortMembershipVwst(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
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

  *(result + 17) = v3;
  return result;
}

uint64_t sub_217F3A9D4(unsigned int *a1, int a2)
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

_WORD *sub_217F3AA24(_WORD *result, int a2, int a3)
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

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

uint64_t sub_217F3AB3C(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t sub_217F3AB48(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

unint64_t sub_217F3AB60()
{
  result = qword_280C29548;
  if (!qword_280C29548)
  {
    type metadata accessor for ClassicArticleData();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C29548);
  }

  return result;
}

uint64_t sub_217F3AC50@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 56);
  v3 = *(v1 + 64);
  v4 = *(v1 + 72);
  return sub_217F3389C(*(v1 + 32), *(v1 + 40), *(v1 + 48), *(v1 + 80), *(v1 + 88), a1, *(v1 + 128), *(v1 + 96), *(v1 + 104), *(v1 + 112), *(v1 + 120), *(v1 + 16), *(v1 + 24));
}

uint64_t sub_217F3AD30(uint64_t *a1, uint64_t a2)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  return sub_217F31D00(a1, a2, *(v2 + 32), *(v2 + 40), *(v2 + 48), *(v2 + 56));
}

uint64_t sub_217F3AD5C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_217F3ADC4(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_217F3AE2C()
{
  sub_217F4AC94();
  swift_getWitnessTable();
  sub_217F4AB64();
  return v1;
}

uint64_t sub_217F3AED4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = *(v3 + 24);
  v6 = *(v3 + 32);
  v7 = *a1;
  result = v5(a2);
  if (__OFADD__(v7, result & 1))
  {
    __break(1u);
  }

  else
  {
    *a3 = v7 + (result & 1);
  }

  return result;
}

uint64_t sub_217F3AF2C(uint64_t a1, uint64_t a2)
{
  v3 = 0;
  v4 = (a1 + 56);
  v5 = *(a1 + 16) + 1;
  do
  {
    if (!--v5)
    {
      return v3;
    }

    result = *(v4 - 1);
    if (result == *(a2 + 16) && *v4 == *(a2 + 24))
    {
      v6 = 1;
    }

    else
    {
      result = sub_217F4B144();
      v6 = result & 1;
    }

    v4 += 12;
    v7 = __OFADD__(v3, v6);
    v3 += v6;
  }

  while (!v7);
  __break(1u);
  return result;
}

uint64_t sub_217F3AFAC(uint64_t result, uint64_t a2, uint64_t a3)
{
  v5 = 0;
  v6 = 0;
  v7 = *(result + 16);
  v25 = v7;
  v26 = result + 32;
  do
  {
    if (v5 == v7)
    {
      return v6;
    }

    v10 = (v26 + 96 * v5);
    v11 = v10[4];
    if (*(v11 + 16))
    {
      v27 = v6;
      v12 = v10[1];
      v13 = v10[3];
      v14 = v10[5];
      v15 = v10[6];
      v17 = v10[9];
      v16 = v10[10];
      v18 = *(v11 + 40);
      sub_217F4B224();

      v28 = v17;
      sub_217EA34A8(v17, v16);
      sub_217F4AB24();
      v19 = sub_217F4B254();
      v20 = -1 << *(v11 + 32);
      v21 = v19 & ~v20;
      if ((*(v11 + 56 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21))
      {
        v22 = ~v20;
        while (1)
        {
          v23 = (*(v11 + 48) + 16 * v21);
          v24 = *v23 == a2 && v23[1] == a3;
          if (v24 || (sub_217F4B144() & 1) != 0)
          {
            break;
          }

          v21 = (v21 + 1) & v22;
          if (((*(v11 + 56 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21) & 1) == 0)
          {
            goto LABEL_14;
          }
        }

        v8 = 1;
      }

      else
      {
LABEL_14:
        v8 = 0;
      }

      v7 = v25;

      result = sub_217EB9ED4(v28, v16);
      v6 = v27;
    }

    else
    {
      v8 = 0;
    }

    ++v5;
    v9 = __OFADD__(v6, v8);
    v6 += v8;
  }

  while (!v9);
  __break(1u);
  return result;
}

uint64_t sub_217F3B228(double a1)
{
  result = swift_beginAccess();
  *(v1 + 120) = a1;
  return result;
}

uint64_t sub_217F3B394(double a1)
{
  result = swift_beginAccess();
  *(v1 + 296) = a1;
  return result;
}

uint64_t sub_217F3B438()
{
  result = *(v0 + 320);
  v2 = *(v0 + 328);
  return result;
}

uint64_t sub_217F3B47C()
{
  result = *(v0 + 392);
  v2 = *(v0 + 400);
  return result;
}

uint64_t sub_217F3B488()
{
  result = *(v0 + 408);
  v2 = *(v0 + 416);
  return result;
}

unint64_t sub_217F3B494(char a1)
{
  result = 0x43656C6369747261;
  switch(a1)
  {
    case 1:
      return 0x6C754D6F69647561;
    case 2:
    case 12:
    case 15:
    case 18:
      return 0xD000000000000012;
    case 3:
      return 0xD000000000000014;
    case 4:
      return 0xD000000000000014;
    case 5:
    case 21:
    case 36:
    case 39:
      return 0xD000000000000015;
    case 6:
    case 16:
    case 20:
    case 29:
    case 37:
      return 0xD000000000000011;
    case 7:
      return 0xD000000000000014;
    case 8:
      return 0x69737265766E6F63;
    case 9:
      return 0xD000000000000018;
    case 10:
    case 42:
      return 0xD000000000000020;
    case 11:
    case 13:
      return 0xD000000000000013;
    case 14:
    case 17:
    case 28:
    case 31:
    case 47:
      return 0xD000000000000016;
    case 19:
      return 0xD00000000000001ALL;
    case 22:
      return 0xD000000000000014;
    case 23:
      v4 = 1684104562;
      return v4 | 0x616E655000000000;
    case 24:
      return 0x64656E657473696CLL;
    case 25:
      v4 = 1852138867;
      return v4 | 0x616E655000000000;
    case 26:
      return 0x6353726576726573;
    case 27:
      return 0x6576726553776172;
    case 30:
    case 33:
    case 35:
      return 0xD000000000000010;
    case 32:
      return 0xD000000000000014;
    case 34:
      return 0xD00000000000001CLL;
    case 38:
      return 0x726F635369626174;
    case 40:
      v3 = 9;
      goto LABEL_15;
    case 41:
      v3 = 11;
LABEL_15:
      result = v3 | 0xD000000000000014;
      break;
    case 43:
      result = 0xD000000000000014;
      break;
    case 44:
      result = 0x696C7069746C756DLL;
      break;
    case 45:
      result = 0x72656E65706D6164;
      break;
    case 46:
      result = 0x6154776F64616873;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_217F3B918()
{
  v1 = *v0;
  sub_217F4B224();
  MEMORY[0x21CEAF1C0](v1);
  return sub_217F4B254();
}

uint64_t sub_217F3B98C()
{
  v1 = *v0;
  sub_217F4B224();
  MEMORY[0x21CEAF1C0](v1);
  return sub_217F4B254();
}

uint64_t sub_217F3B9D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_217F3D4E0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_217F3BA18(uint64_t a1)
{
  v2 = sub_217F3C4A0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217F3BA54(uint64_t a1)
{
  v2 = sub_217F3C4A0();

  return MEMORY[0x2821FE720](a1, v2);
}

void *sub_217F3BA90()
{
  v1 = v0[2];

  v2 = v0[8];

  v3 = v0[20];

  v4 = v0[21];

  v5 = v0[38];

  return v0;
}

uint64_t sub_217F3BAD0()
{
  v1 = v0[2];

  v2 = v0[8];

  v3 = v0[20];

  v4 = v0[21];

  v5 = v0[38];

  return swift_deallocClassInstance();
}

uint64_t sub_217F3BB28(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF73D8, &unk_217F5A310);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5, v8);
  v10 = &v59[-v9];
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217F3C4A0();
  sub_217F4B294();
  v62 = *(v3 + 16);
  LOBYTE(v61) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF5508, &qword_217F4D520);
  sub_217F3D0A0(&qword_27CBF5500, sub_217E9C860);
  sub_217F4B0C4();
  if (!v2)
  {
    v12 = *(v3 + 24);
    LOBYTE(v62) = 1;
    sub_217F4B0A4();
    v13 = *(v3 + 32);
    LOBYTE(v62) = 2;
    sub_217F4B0A4();
    v14 = *(v3 + 40);
    LOBYTE(v62) = 3;
    sub_217F4B0A4();
    v15 = *(v3 + 48);
    LOBYTE(v62) = 4;
    sub_217F4B0A4();
    v16 = *(v3 + 56);
    LOBYTE(v62) = 5;
    sub_217F4B0A4();
    v62 = *(v3 + 64);
    LOBYTE(v61) = 6;
    sub_217F4B0C4();
    v17 = *(v3 + 72);
    LOBYTE(v62) = 7;
    sub_217F4B0A4();
    v18 = *(v3 + 80);
    LOBYTE(v62) = 8;
    sub_217F4B0A4();
    v20 = *(v3 + 88);
    LOBYTE(v62) = 9;
    sub_217F4B0A4();
    v21 = *(v3 + 96);
    LOBYTE(v62) = 10;
    sub_217F4B0A4();
    v22 = *(v3 + 104);
    LOBYTE(v62) = 11;
    sub_217F4B0A4();
    v23 = *(v3 + 112);
    LOBYTE(v62) = 12;
    sub_217F4B0A4();
    swift_beginAccess();
    v24 = *(v3 + 120);
    LOBYTE(v61) = 13;
    sub_217F4B0A4();
    v25 = *(v3 + 128);
    LOBYTE(v61) = 14;
    sub_217F4B0A4();
    v26 = *(v3 + 136);
    LOBYTE(v61) = 15;
    sub_217F4B0A4();
    v27 = *(v3 + 144);
    LOBYTE(v61) = 16;
    sub_217F4B0A4();
    v28 = *(v3 + 152);
    LOBYTE(v61) = 17;
    sub_217F4B0A4();
    v61 = *(v3 + 160);
    LOBYTE(v60) = 18;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF5D60, &qword_217F5A320);
    sub_217F3D124(&qword_27CBF5D68);
    sub_217F4B0C4();
    v61 = *(v3 + 168);
    LOBYTE(v60) = 19;
    sub_217F4B0C4();
    v29 = *(v3 + 176);
    LOBYTE(v61) = 20;
    sub_217F4B0A4();
    v30 = *(v3 + 184);
    LOBYTE(v61) = 21;
    sub_217F4B0A4();
    v31 = *(v3 + 192);
    LOBYTE(v61) = 22;
    sub_217F4B0A4();
    v32 = *(v3 + 200);
    LOBYTE(v61) = 23;
    sub_217F4B0A4();
    v33 = *(v3 + 208);
    LOBYTE(v61) = 24;
    sub_217F4B0A4();
    v34 = *(v3 + 216);
    LOBYTE(v61) = 25;
    sub_217F4B0A4();
    v35 = *(v3 + 224);
    LOBYTE(v61) = 26;
    sub_217F4B0A4();
    v36 = *(v3 + 232);
    LOBYTE(v61) = 27;
    sub_217F4B0A4();
    v37 = *(v3 + 240);
    LOBYTE(v61) = 28;
    sub_217F4B0A4();
    v38 = *(v3 + 248);
    LOBYTE(v61) = 29;
    sub_217F4B0A4();
    v39 = *(v3 + 256);
    LOBYTE(v61) = 30;
    sub_217F4B0A4();
    v40 = *(v3 + 264);
    LOBYTE(v61) = 31;
    sub_217F4B0A4();
    v41 = *(v3 + 272);
    LOBYTE(v61) = 32;
    sub_217F4B0A4();
    v42 = *(v3 + 280);
    LOBYTE(v61) = 33;
    sub_217F4B0A4();
    v43 = *(v3 + 288);
    LOBYTE(v61) = 34;
    sub_217F4B0A4();
    swift_beginAccess();
    v44 = *(v3 + 296);
    LOBYTE(v60) = 35;
    sub_217F4B0A4();
    v60 = *(v3 + 304);
    v59[7] = 36;
    sub_217F4B0C4();
    v45 = *(v3 + 312);
    LOBYTE(v60) = 37;
    sub_217F4B0A4();
    v46 = *(v3 + 320);
    v47 = *(v3 + 328);
    LOBYTE(v60) = 38;
    sub_217F4B034();
    v48 = *(v3 + 336);
    LOBYTE(v60) = 39;
    sub_217F4B0A4();
    v49 = *(v3 + 344);
    LOBYTE(v60) = 40;
    sub_217F4B0A4();
    v50 = *(v3 + 352);
    LOBYTE(v60) = 41;
    sub_217F4B0A4();
    v51 = *(v3 + 360);
    LOBYTE(v60) = 42;
    sub_217F4B0A4();
    v52 = *(v3 + 368);
    LOBYTE(v60) = 43;
    sub_217F4B0A4();
    v53 = *(v3 + 376);
    LOBYTE(v60) = 44;
    sub_217F4B0A4();
    v54 = *(v3 + 384);
    LOBYTE(v60) = 45;
    sub_217F4B0A4();
    v55 = *(v3 + 392);
    v56 = *(v3 + 400);
    LOBYTE(v60) = 46;
    sub_217F4B034();
    v57 = *(v3 + 408);
    v58 = *(v3 + 416);
    LOBYTE(v60) = 47;
    sub_217F4B034();
  }

  return (*(v6 + 8))(v10, v5);
}

unint64_t sub_217F3C4A0()
{
  result = qword_27CBF73E0;
  if (!qword_27CBF73E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBF73E0);
  }

  return result;
}

uint64_t sub_217F3C4F4(uint64_t *a1)
{
  v2 = swift_allocObject();
  sub_217F3C544(a1);
  return v2;
}

uint64_t *sub_217F3C544(uint64_t *a1)
{
  v3 = v1;
  v58 = *v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF73E8, qword_217F5A328);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5, v8);
  v10 = &v58 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217F3C4A0();
  sub_217F4B274();
  if (v2)
  {
    swift_deallocPartialClassInstance();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF5508, &qword_217F4D520);
    v59 = 0;
    sub_217F3D0A0(&qword_27CBF5550, sub_217E9D8BC);
    sub_217F4AFC4();
    v1[2] = v60;
    LOBYTE(v60) = 1;
    sub_217F4AFA4();
    v1[3] = v12;
    LOBYTE(v60) = 2;
    sub_217F4AFA4();
    v1[4] = v13;
    LOBYTE(v60) = 3;
    sub_217F4AFA4();
    v1[5] = v14;
    LOBYTE(v60) = 4;
    sub_217F4AFA4();
    v1[6] = v15;
    LOBYTE(v60) = 5;
    sub_217F4AFA4();
    v1[7] = v16;
    v59 = 6;
    sub_217F4AFC4();
    v1[8] = v60;
    LOBYTE(v60) = 7;
    sub_217F4AFA4();
    v1[9] = v18;
    LOBYTE(v60) = 8;
    sub_217F4AFA4();
    v1[10] = v19;
    LOBYTE(v60) = 9;
    sub_217F4AFA4();
    v1[11] = v20;
    LOBYTE(v60) = 10;
    sub_217F4AFA4();
    v1[12] = v21;
    LOBYTE(v60) = 11;
    sub_217F4AFA4();
    v1[13] = v22;
    LOBYTE(v60) = 12;
    sub_217F4AFA4();
    v1[14] = v23;
    LOBYTE(v60) = 13;
    sub_217F4AFA4();
    v1[15] = v24;
    LOBYTE(v60) = 14;
    sub_217F4AFA4();
    v1[16] = v25;
    LOBYTE(v60) = 15;
    sub_217F4AFA4();
    v1[17] = v26;
    LOBYTE(v60) = 16;
    sub_217F4AFA4();
    v1[18] = v27;
    LOBYTE(v60) = 17;
    sub_217F4AFA4();
    v1[19] = v28;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF5D60, &qword_217F5A320);
    v59 = 18;
    sub_217F3D124(&qword_27CBF5D80);
    sub_217F4AFC4();
    v1[20] = v60;
    v59 = 19;
    sub_217F4AFC4();
    v1[21] = v60;
    LOBYTE(v60) = 20;
    sub_217F4AFA4();
    v1[22] = v29;
    LOBYTE(v60) = 21;
    sub_217F4AFA4();
    v1[23] = v30;
    LOBYTE(v60) = 22;
    sub_217F4AFA4();
    v1[24] = v31;
    LOBYTE(v60) = 23;
    sub_217F4AFA4();
    v1[25] = v32;
    LOBYTE(v60) = 24;
    sub_217F4AFA4();
    v1[26] = v33;
    LOBYTE(v60) = 25;
    sub_217F4AFA4();
    v1[27] = v34;
    LOBYTE(v60) = 26;
    sub_217F4AFA4();
    v1[28] = v35;
    LOBYTE(v60) = 27;
    sub_217F4AFA4();
    v1[29] = v36;
    LOBYTE(v60) = 28;
    sub_217F4AFA4();
    v1[30] = v37;
    LOBYTE(v60) = 29;
    sub_217F4AFA4();
    v1[31] = v38;
    LOBYTE(v60) = 30;
    sub_217F4AFA4();
    v1[32] = v39;
    LOBYTE(v60) = 31;
    sub_217F4AFA4();
    v1[33] = v40;
    LOBYTE(v60) = 32;
    sub_217F4AFA4();
    v1[34] = v41;
    LOBYTE(v60) = 33;
    sub_217F4AFA4();
    v1[35] = v42;
    LOBYTE(v60) = 34;
    sub_217F4AFA4();
    v1[36] = v43;
    LOBYTE(v60) = 35;
    sub_217F4AFA4();
    v1[37] = v44;
    v59 = 36;
    sub_217F4AFC4();
    v1[38] = v60;
    LOBYTE(v60) = 37;
    sub_217F4AFA4();
    v1[39] = v45;
    LOBYTE(v60) = 38;
    v1[40] = sub_217F4AF34();
    *(v1 + 328) = v46 & 1;
    LOBYTE(v60) = 39;
    sub_217F4AFA4();
    v1[42] = v47;
    LOBYTE(v60) = 40;
    sub_217F4AFA4();
    v1[43] = v48;
    LOBYTE(v60) = 41;
    sub_217F4AFA4();
    v1[44] = v49;
    LOBYTE(v60) = 42;
    sub_217F4AFA4();
    v1[45] = v50;
    LOBYTE(v60) = 43;
    sub_217F4AFA4();
    v1[46] = v51;
    LOBYTE(v60) = 44;
    sub_217F4AFA4();
    v1[47] = v52;
    LOBYTE(v60) = 45;
    sub_217F4AFA4();
    v1[48] = v53;
    LOBYTE(v60) = 46;
    v1[49] = sub_217F4AF34();
    *(v1 + 400) = v54 & 1;
    LOBYTE(v60) = 47;
    v55 = sub_217F4AF34();
    v57 = v56;
    (*(v6 + 8))(v10, v5);
    v3[51] = v55;
    *(v3 + 416) = v57 & 1;
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v3;
}

uint64_t sub_217F3D0A0(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CBF5508, &qword_217F4D520);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_217F3D124(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CBF5D60, &qword_217F5A320);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t *sub_217F3D194@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = swift_allocObject();
  result = sub_217F3C544(a1);
  if (!v2)
  {
    *a2 = v5;
  }

  return result;
}

uint64_t _s14descr2829CD401O20HeadlineScoreProfileC10CodingKeysOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xD1)
  {
    goto LABEL_17;
  }

  if (a2 + 47 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 47) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 47;
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

      return (*a1 | (v4 << 8)) - 47;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 47;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x30;
  v8 = v6 - 48;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t _s14descr2829CD401O20HeadlineScoreProfileC10CodingKeysOwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 47 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 47) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xD1)
  {
    v4 = 0;
  }

  if (a2 > 0xD0)
  {
    v5 = ((a2 - 209) >> 8) + 1;
    *result = a2 + 47;
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
    *result = a2 + 47;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_217F3D3DC()
{
  result = qword_27CBF73F0;
  if (!qword_27CBF73F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBF73F0);
  }

  return result;
}

unint64_t sub_217F3D434()
{
  result = qword_27CBF73F8;
  if (!qword_27CBF73F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBF73F8);
  }

  return result;
}

unint64_t sub_217F3D48C()
{
  result = qword_27CBF7400;
  if (!qword_27CBF7400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBF7400);
  }

  return result;
}

uint64_t sub_217F3D4E0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x43656C6369747261 && a2 == 0xEE007374726F686FLL;
  if (v4 || (sub_217F4B144() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6C754D6F69647561 && a2 == 0xEF7265696C706974 || (sub_217F4B144() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000012 && 0x8000000217F61040 == a2 || (sub_217F4B144() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000014 && 0x8000000217F5FB70 == a2 || (sub_217F4B144() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000014 && 0x8000000217F5FB90 == a2 || (sub_217F4B144() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000015 && 0x8000000217F5FBB0 == a2 || (sub_217F4B144() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000011 && 0x8000000217F61060 == a2 || (sub_217F4B144() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000014 && 0x8000000217F61080 == a2 || (sub_217F4B144() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x69737265766E6F63 && a2 == 0xEF65726F63536E6FLL || (sub_217F4B144() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0xD000000000000018 && 0x8000000217F610B0 == a2 || (sub_217F4B144() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0xD000000000000020 && 0x8000000217F5F780 == a2 || (sub_217F4B144() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0xD000000000000013 && 0x8000000217F5FBD0 == a2 || (sub_217F4B144() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0xD000000000000012 && 0x8000000217F5FBF0 == a2 || (sub_217F4B144() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0xD000000000000013 && 0x8000000217F5F560 == a2 || (sub_217F4B144() & 1) != 0)
  {

    return 13;
  }

  else if (a1 == 0xD000000000000016 && 0x8000000217F610D0 == a2 || (sub_217F4B144() & 1) != 0)
  {

    return 14;
  }

  else if (a1 == 0xD000000000000012 && 0x8000000217F610F0 == a2 || (sub_217F4B144() & 1) != 0)
  {

    return 15;
  }

  else if (a1 == 0xD000000000000011 && 0x8000000217F5F5C0 == a2 || (sub_217F4B144() & 1) != 0)
  {

    return 16;
  }

  else if (a1 == 0xD000000000000016 && 0x8000000217F61110 == a2 || (sub_217F4B144() & 1) != 0)
  {

    return 17;
  }

  else if (a1 == 0xD000000000000012 && 0x8000000217F61130 == a2 || (sub_217F4B144() & 1) != 0)
  {

    return 18;
  }

  else if (a1 == 0xD00000000000001ALL && 0x8000000217F61150 == a2 || (sub_217F4B144() & 1) != 0)
  {

    return 19;
  }

  else if (a1 == 0xD000000000000011 && 0x8000000217F5C8C0 == a2 || (sub_217F4B144() & 1) != 0)
  {

    return 20;
  }

  else if (a1 == 0xD000000000000015 && 0x8000000217F61170 == a2 || (sub_217F4B144() & 1) != 0)
  {

    return 21;
  }

  else if (a1 == 0xD000000000000014 && 0x8000000217F61190 == a2 || (sub_217F4B144() & 1) != 0)
  {

    return 22;
  }

  else if (a1 == 0x616E655064616572 && a2 == 0xEB0000000079746CLL || (sub_217F4B144() & 1) != 0)
  {

    return 23;
  }

  else if (a1 == 0x64656E657473696CLL && a2 == 0xEF79746C616E6550 || (sub_217F4B144() & 1) != 0)
  {

    return 24;
  }

  else if (a1 == 0x616E65506E656573 && a2 == 0xEB0000000079746CLL || (sub_217F4B144() & 1) != 0)
  {

    return 25;
  }

  else if (a1 == 0x6353726576726573 && a2 == 0xEB0000000065726FLL || (sub_217F4B144() & 1) != 0)
  {

    return 26;
  }

  else if (a1 == 0x6576726553776172 && a2 == 0xEE0065726F635372 || (sub_217F4B144() & 1) != 0)
  {

    return 27;
  }

  else if (a1 == 0xD000000000000016 && 0x8000000217F611F0 == a2 || (sub_217F4B144() & 1) != 0)
  {

    return 28;
  }

  else if (a1 == 0xD000000000000011 && 0x8000000217F5F7B0 == a2 || (sub_217F4B144() & 1) != 0)
  {

    return 29;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000217F61210 == a2 || (sub_217F4B144() & 1) != 0)
  {

    return 30;
  }

  else if (a1 == 0xD000000000000016 && 0x8000000217F61230 == a2 || (sub_217F4B144() & 1) != 0)
  {

    return 31;
  }

  else if (a1 == 0xD000000000000014 && 0x8000000217F61250 == a2 || (sub_217F4B144() & 1) != 0)
  {

    return 32;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000217F61270 == a2 || (sub_217F4B144() & 1) != 0)
  {

    return 33;
  }

  else if (a1 == 0xD00000000000001CLL && 0x8000000217F61290 == a2 || (sub_217F4B144() & 1) != 0)
  {

    return 34;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000217F612B0 == a2 || (sub_217F4B144() & 1) != 0)
  {

    return 35;
  }

  else if (a1 == 0xD000000000000015 && 0x8000000217F612D0 == a2 || (sub_217F4B144() & 1) != 0)
  {

    return 36;
  }

  else if (a1 == 0xD000000000000011 && 0x8000000217F612F0 == a2 || (sub_217F4B144() & 1) != 0)
  {

    return 37;
  }

  else if (a1 == 0x726F635369626174 && a2 == 0xE900000000000065 || (sub_217F4B144() & 1) != 0)
  {

    return 38;
  }

  else if (a1 == 0xD000000000000015 && 0x8000000217F61310 == a2 || (sub_217F4B144() & 1) != 0)
  {

    return 39;
  }

  else if (a1 == 0xD00000000000001DLL && 0x8000000217F5F280 == a2 || (sub_217F4B144() & 1) != 0)
  {

    return 40;
  }

  else if (a1 == 0xD00000000000001FLL && 0x8000000217F5F800 == a2 || (sub_217F4B144() & 1) != 0)
  {

    return 41;
  }

  else if (a1 == 0xD000000000000020 && 0x8000000217F5F7D0 == a2 || (sub_217F4B144() & 1) != 0)
  {

    return 42;
  }

  else if (a1 == 0xD000000000000014 && 0x8000000217F5F8C0 == a2 || (sub_217F4B144() & 1) != 0)
  {

    return 43;
  }

  else if (a1 == 0x696C7069746C756DLL && a2 == 0xEA00000000007265 || (sub_217F4B144() & 1) != 0)
  {

    return 44;
  }

  else if (a1 == 0x72656E65706D6164 && a2 == 0xE800000000000000 || (sub_217F4B144() & 1) != 0)
  {

    return 45;
  }

  else if (a1 == 0x6154776F64616873 && a2 == 0xEF65726F63536962 || (sub_217F4B144() & 1) != 0)
  {

    return 46;
  }

  else if (a1 == 0xD000000000000016 && 0x8000000217F61360 == a2)
  {

    return 47;
  }

  else
  {
    v6 = sub_217F4B144();

    if (v6)
    {
      return 47;
    }

    else
    {
      return 48;
    }
  }
}

uint64_t ClassicEventData.groupBackingTagID.getter(uint64_t a1)
{
  v1 = sub_217F3EFCC(a1);

  return v1;
}

uint64_t ClassicEventData.init(articleData:groupType:groupBackingTagID:)@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v9 = *a2;
  (*(*(a5 - 8) + 32))(a6, a1, a5);
  result = type metadata accessor for ClassicEventData();
  *(a6 + *(result + 36)) = v9;
  v11 = (a6 + *(result + 40));
  *v11 = a3;
  v11[1] = a4;
  return result;
}

uint64_t sub_217F3E478()
{
  v0 = sub_217F4AEE4();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_217F3E4C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x277D837F8];

  return MEMORY[0x2821FE040](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_217F3E53C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();
  v5 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FC1A0](a1, a2, WitnessTable, v5);
}

uint64_t sub_217F3E5A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FC1B0](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_217F3E618(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FC1A8](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_217F3E688@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = *(a2 + 16);
  v7 = *(a2 + 24);
  result = sub_217F3E478();
  *a3 = result;
  return result;
}

uint64_t sub_217F3E6C0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  result = sub_217E7F8A0(*v2);
  *a2 = result;
  a2[1] = v7;
  return result;
}

uint64_t sub_217F3E6F0(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  return sub_217E7F8A0(*v1);
}

uint64_t sub_217F3E6FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  result = sub_217F3E4C4(a1, a2, *(a3 + 16), *(a3 + 24));
  *a4 = result;
  return result;
}

uint64_t sub_217F3E738@<X0>(uint64_t a1@<X1>, _BYTE *a2@<X8>)
{
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  result = sub_217F3F6D4();
  *a2 = result;
  return result;
}

uint64_t sub_217F3E764(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t sub_217F3E7B8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t ClassicEventData.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v22 = a3;
  v23 = *(a2 - 8);
  v5 = *(v23 + 64);
  MEMORY[0x28223BE20](a1, a2);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = v8;
  type metadata accessor for ClassicEventData.CodingKeys();
  swift_getWitnessTable();
  v25 = sub_217F4AFF4();
  v9 = *(v25 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v25, v11);
  v13 = &v21 - v12;
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v15 = v26;
  sub_217F4B274();
  if (!v15)
  {
    v28[3] = 0;
    v16 = *(v24 + 8);
    sub_217F4AFC4();
    v28[1] = 1;
    sub_217F3F00C();
    sub_217F4AFC4();
    v28[0] = v28[2];
    v27 = 2;
    v18 = sub_217F4AF14();
    v20 = v19;
    (*(v9 + 8))(v13, v25);
    ClassicEventData.init(articleData:groupType:groupBackingTagID:)(v7, v28, v18, v20, a2, v22);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t ClassicEventData.encode(to:)(void *a1, uint64_t a2)
{
  v19[0] = a2;
  v3 = *(a2 + 24);
  v19[2] = *(a2 + 16);
  type metadata accessor for ClassicEventData.CodingKeys();
  swift_getWitnessTable();
  v4 = sub_217F4B0E4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4, v7);
  v9 = v19 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v11 = v19[1];
  sub_217F4B294();
  v23 = 0;
  v12 = *(v3 + 16);
  v13 = v19[3];
  sub_217F4B0C4();
  if (!v13)
  {
    v14 = v19[0];
    v22 = *(v11 + *(v19[0] + 36));
    v21 = 1;
    sub_217F3F060();
    sub_217F4B0C4();
    v15 = (v11 + *(v14 + 40));
    v16 = *v15;
    v17 = v15[1];
    v20 = 2;
    sub_217F4B014();
  }

  return (*(v5 + 8))(v9, v4);
}

uint64_t sub_217F3EEB8(uint64_t a1)
{
  v1 = sub_217F3EFCC(a1);

  return v1;
}

uint64_t ClassicEventData.debugDescription.getter(uint64_t a1)
{
  BYTE8(v5) = 0;
  sub_217F4ADD4();
  MEMORY[0x21CEAEAC0](0x20656C6369747241, 0xE800000000000000);
  v3 = *(a1 + 16);
  sub_217F4B124();
  MEMORY[0x21CEAEAC0](0x2070756F7247202CLL, 0xED00002065707954);
  *&v5 = *(v1 + *(a1 + 36));
  sub_217F4AE54();
  return *(&v5 + 1);
}

uint64_t sub_217F3EFCC(uint64_t a1)
{
  v2 = (v1 + *(a1 + 40));
  result = *v2;
  v4 = v2[1];
  return result;
}

unint64_t sub_217F3F00C()
{
  result = qword_27CBF7408;
  if (!qword_27CBF7408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBF7408);
  }

  return result;
}

unint64_t sub_217F3F060()
{
  result = qword_27CBF7410[0];
  if (!qword_27CBF7410[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27CBF7410);
  }

  return result;
}

uint64_t sub_217F3F0BC(uint64_t a1)
{
  *(a1 + 8) = swift_getWitnessTable();
  result = swift_getWitnessTable();
  *(a1 + 16) = result;
  return result;
}

void sub_217F3F14C(uint64_t a1)
{
  v1 = *(a1 + 16);
  swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    sub_217F3F4D4();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_217F3F1DC(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (v5 <= 0x7FFFFFFE)
  {
    v7 = 2147483646;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
    goto LABEL_28;
  }

  v8 = (v6 & 0xFFFFFFFFFFFFFFF8) + 24;
  v9 = a2 - v7;
  v10 = v8 & 0xFFFFFFF8;
  if ((v8 & 0xFFFFFFF8) != 0)
  {
    v11 = 2;
  }

  else
  {
    v11 = v9 + 1;
  }

  if (v11 >= 0x10000)
  {
    v12 = 4;
  }

  else
  {
    v12 = 2;
  }

  if (v11 < 0x100)
  {
    v12 = 1;
  }

  if (v11 >= 2)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v13 || (v14 = *(a1 + v8)) == 0)
  {
LABEL_28:
    if (v5 >= 0x7FFFFFFE)
    {
      return (*(v4 + 48))();
    }

    v17 = *(((a1 + v6) & 0xFFFFFFFFFFFFFFF8) + 16);
    if (v17 >= 0xFFFFFFFF)
    {
      LODWORD(v17) = -1;
    }

    if ((v17 + 1) >= 2)
    {
      return v17;
    }

    else
    {
      return 0;
    }
  }

  v16 = v14 - 1;
  if (v10)
  {
    v16 = 0;
    LODWORD(v10) = *a1;
  }

  return v7 + (v10 | v16) + 1;
}