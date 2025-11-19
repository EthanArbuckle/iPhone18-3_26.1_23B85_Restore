double ndShapeTo5dShape(shape:)@<D0>(uint64_t a1@<X1>, uint64_t a2@<X2>, unint64_t a3@<X3>, _OWORD *a4@<X8>)
{
  sub_21A4196D8(a1, a2, a3, v8);
  result = *v8;
  v6 = v8[1];
  v7 = v8[2];
  *a4 = v8[0];
  a4[1] = v6;
  a4[2] = v7;
  return result;
}

uint64_t sub_21A418D40@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  type metadata accessor for EspressoMILTrainer();
  swift_allocObject();
  v4 = sub_21A4195BC(a1);

  *a2 = v4;
  return result;
}

uint64_t sub_21A418DBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *v4;
  v7 = 1;
  return sub_21A4134D0(a1, a2, &v7, a3, a4, MEMORY[0x277D84F90]);
}

unint64_t sub_21A418E2C(uint64_t *a1)
{
  v2 = *v1;
  v5 = *a1;
  swift_beginAccess();
  v3 = sub_21A415150(&v5, (v2 + 152));
  swift_endAccess();
  return v3;
}

uint64_t sub_21A418F30(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_21A4516C4() + 1) & ~v5;
    do
    {
      v10 = *(a2 + 40);
      v11 = (*(a2 + 48) + 16 * v6);
      v12 = *v11;
      v13 = v11[1];
      sub_21A451B04();

      sub_21A451144();
      v14 = sub_21A451B24();

      v15 = v14 & v7;
      if (v3 >= v8)
      {
        if (v15 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v15 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v15)
      {
LABEL_10:
        v16 = *(a2 + 48);
        v17 = (v16 + 16 * v3);
        v18 = (v16 + 16 * v6);
        if (v3 != v6 || v17 >= v18 + 1)
        {
          *v17 = *v18;
        }

        v19 = *(a2 + 56);
        v20 = (v19 + 32 * v3);
        v21 = (v19 + 32 * v6);
        if (v3 != v6 || v20 >= v21 + 2)
        {
          v9 = v21[1];
          *v20 = *v21;
          v20[1] = v9;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
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

uint64_t sub_21A4190E0(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_21A4516C4() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = (*(a2 + 48) + 16 * v6);
      v11 = *v10;
      v12 = v10[1];
      sub_21A451B04();

      sub_21A451144();
      v13 = sub_21A451B24();

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

char *sub_21A419290(char *result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_21A4516C4() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = (*(a2 + 48) + 16 * v6);
      v11 = *v10;
      v12 = v10[1];
      sub_21A451B04();

      sub_21A451144();
      v13 = sub_21A451B24();

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
        result = (v18 + 168 * v3);
        v19 = (v18 + 168 * v6);
        if (v3 != v6 || result >= v19 + 168)
        {
          result = memmove(result, v19, 0xA8uLL);
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v20 = *(a2 + 16);
  v21 = __OFSUB__(v20, 1);
  v22 = v20 - 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v22;
    ++*(a2 + 36);
  }

  return result;
}

_OWORD *sub_21A419444(unint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_21A3D3B38(a4, (a5[7] + 32 * a1));
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

unint64_t sub_21A4194B0(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
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

unint64_t sub_21A4194F8(unint64_t result, uint64_t a2, uint64_t a3, void *a4, double a5)
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

unint64_t sub_21A419540(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  v5 = (a5[6] + 16 * result);
  *v5 = a2;
  v5[1] = a3;
  v6 = a5[7] + 168 * result;
  v7 = *(a4 + 80);
  *(v6 + 64) = *(a4 + 64);
  *(v6 + 80) = v7;
  *(v6 + 160) = *(a4 + 160);
  v8 = *(a4 + 144);
  *(v6 + 128) = *(a4 + 128);
  *(v6 + 144) = v8;
  v9 = *(a4 + 112);
  *(v6 + 96) = *(a4 + 96);
  *(v6 + 112) = v9;
  v10 = *(a4 + 16);
  *v6 = *a4;
  *(v6 + 16) = v10;
  v11 = *(a4 + 48);
  *(v6 + 32) = *(a4 + 32);
  *(v6 + 48) = v11;
  v12 = a5[2];
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v14;
  }

  return result;
}

uint64_t sub_21A4195BC(uint64_t a1)
{
  *(v1 + 80) = 0;
  *(v1 + 88) = 0xE000000000000000;
  *(v1 + 96) = 1;
  *(v1 + 112) = 1;
  v3 = MEMORY[0x277D84F90];
  *(v1 + 120) = sub_21A3E58A4(MEMORY[0x277D84F90]);
  *(v1 + 128) = sub_21A3E5690(v3);
  *(v1 + 136) = sub_21A3E58A4(v3);
  *(v1 + 144) = sub_21A3E5690(v3);
  *(v1 + 152) = sub_21A3E58A4(v3);
  *(v1 + 160) = sub_21A3E5690(v3);
  *(v1 + 168) = sub_21A3E58A4(v3);
  *(v1 + 176) = 0u;
  *(v1 + 192) = 0u;
  *(v1 + 208) = 0u;
  *(v1 + 224) = 0u;
  *(v1 + 240) = 0u;
  *(v1 + 256) = 0u;
  *(v1 + 272) = 0u;
  *(v1 + 288) = 0u;
  *(v1 + 304) = 0u;
  *(v1 + 320) = 0u;
  *(v1 + 336) = 0;
  *(v1 + 344) = v3;
  *(v1 + 352) = v3;
  *(v1 + 360) = v3;
  *(v1 + 16) = a1;

  result = espresso_create_context();
  if (!result)
  {
    __break(1u);
    goto LABEL_6;
  }

  *(v1 + 24) = result;
  *(v1 + 32) = 0;
  *(v1 + 40) = 0;
  result = espresso_create_plan();
  if (!result)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  *(v1 + 48) = result;
  *(v1 + 56) = 0;
  *(v1 + 64) = 0;
  v5 = *(v1 + 24);
  result = espresso_create_plan();
  if (result)
  {
    *(v1 + 72) = result;
    *(v1 + 104) = -1;
    return v1;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_21A4196D8@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v4 = a3 >> 1;
  v5 = (a3 >> 1) - a2;
  if (__OFSUB__(a3 >> 1, a2))
  {
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  if (v5 < 1)
  {
    v7 = 1;
    v8 = 1;
    v6 = 1;
    goto LABEL_15;
  }

  if (v5 <= a2 || v5 > v4)
  {
    goto LABEL_24;
  }

  v6 = *(result + 8 * v5 - 8);
  if (v5 == 1)
  {
    v7 = 1;
    v8 = 1;
LABEL_15:
    v11 = 1;
    goto LABEL_16;
  }

  v9 = v5 - 2;
  if (v5 - 2 < a2 || v9 >= v4)
  {
    goto LABEL_25;
  }

  v8 = *(result + 8 * v9);
  v10 = v5 - 3;
  if (v5 < 3)
  {
    v7 = 1;
    goto LABEL_15;
  }

  if (v10 < a2)
  {
    goto LABEL_26;
  }

  v11 = *(result + 8 * v10);
  if (v5 == 3)
  {
    v7 = 1;
LABEL_16:
    v12 = 1;
LABEL_17:
    *a4 = v6;
    a4[1] = v8;
    a4[2] = v11;
    a4[3] = v7;
    a4[4] = v12;
    a4[5] = v5;
    return result;
  }

  v13 = v5 - 4;
  if (v5 - 4 < a2 || v13 >= v4)
  {
    goto LABEL_27;
  }

  v7 = *(result + 8 * v13);
  v14 = v5 - 5;
  if (v5 < 5)
  {
    goto LABEL_16;
  }

  if (v14 >= a2)
  {
    v12 = *(result + 8 * v14);
    goto LABEL_17;
  }

LABEL_28:
  __break(1u);
  return result;
}

uint64_t sub_21A4197C8(uint64_t result, uint64_t a2, uint64_t a3, void *a4, uint64_t *a5)
{
  v95 = *MEMORY[0x277D85DE8];
  v62 = *(a3 + 16);
  if (!v62)
  {
LABEL_51:
    v60 = *MEMORY[0x277D85DE8];
    return result;
  }

  v5 = a4;
  v6 = 0;
  v7 = 0;
  v94 = 0;
  memset(v93, 0, sizeof(v93));
  v61 = a3 + 32;
  while (1)
  {
    v9 = (v61 + 16 * v6);
    v11 = *v9;
    v10 = v9[1];

    v12 = *v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v83 = *v5;
    sub_21A4035A8(v93, v11, v10, isUniquelyReferenced_nonNull_native);
    *v5 = v83;
    v14 = sub_21A414C78();
    v17 = v16;
    v67 = v16 >> 1;
    v63 = v15;
    if (v16 < 2)
    {
      v18 = 1;
      goto LABEL_12;
    }

    v19 = v15;
    v20 = v16 >> 1;
    v18 = 1;
    do
    {
      v21 = *v19++;
      v22 = v18 * v21;
      if ((v18 * v21) >> 64 != (v18 * v21) >> 63)
      {
        __break(1u);
LABEL_53:
        __break(1u);
LABEL_54:
        __break(1u);
        goto LABEL_55;
      }

      v18 = v22;
      --v20;
    }

    while (v20);
    if (v22 < 0)
    {
      goto LABEL_53;
    }

    if (v22)
    {
LABEL_12:
      v23 = v14;

      v24 = sub_21A451344();
      *(v24 + 16) = v18;
      bzero((v24 + 32), 4 * v18);
    }

    else
    {
      v23 = v14;

      v24 = MEMORY[0x277D84F90];
    }

    v25 = *a5;
    v26 = swift_isUniquelyReferenced_nonNull_native();
    *&v83 = *a5;
    sub_21A4032A0(v24, v11, v10, v26);

    *a5 = v83;
    v27 = swift_isUniquelyReferenced_nonNull_native();
    *&v83 = *a5;
    v28 = v83;
    v30 = sub_21A3DCA2C(v11, v10);
    v31 = *(v28 + 16);
    v32 = (v29 & 1) == 0;
    v33 = v31 + v32;
    if (__OFADD__(v31, v32))
    {
      goto LABEL_54;
    }

    v34 = v29;
    if (*(v28 + 24) >= v33)
    {
      if (v27)
      {
        if ((v29 & 1) == 0)
        {
          goto LABEL_55;
        }

        goto LABEL_20;
      }

      sub_21A3E4280();
      if (v34)
      {
        goto LABEL_20;
      }

LABEL_55:
      __break(1u);
LABEL_56:
      __break(1u);
LABEL_57:
      __break(1u);
LABEL_58:
      __break(1u);
LABEL_59:
      __break(1u);
    }

    sub_21A3E32BC(v33, v27);
    v35 = sub_21A3DCA2C(v11, v10);
    if ((v34 & 1) != (v36 & 1))
    {
      goto LABEL_60;
    }

    v30 = v35;
    if ((v34 & 1) == 0)
    {
      goto LABEL_55;
    }

LABEL_20:
    v37 = v83;
    v38 = *(*(v83 + 56) + 8 * v30);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v38 = sub_21A410F90(v38);
    }

    v39 = *(v38 + 2);
    if (v39 >> 61)
    {
      goto LABEL_56;
    }

    sub_21A414D84((v38 + 32), &v38[4 * v39 + 32], a4, v11, v10);
    *(*(v37 + 56) + 8 * v30) = v38;
    *a5 = v37;
    v64 = v7;
    if ((v17 & 1) == 0)
    {
      v40 = v23;
      swift_unknownObjectRetain();
      v5 = a4;
      goto LABEL_25;
    }

    sub_21A451A34();
    v40 = v23;
    swift_unknownObjectRetain_n();
    v41 = swift_dynamicCastClass();
    if (!v41)
    {
      swift_unknownObjectRelease();
      v41 = MEMORY[0x277D84F90];
    }

    v42 = *(v41 + 16);

    v5 = a4;
    if (v42 == v67)
    {
      v43 = swift_dynamicCastClass();
      swift_unknownObjectRelease();
      if (!v43)
      {
        goto LABEL_30;
      }
    }

    else
    {
      swift_unknownObjectRelease();
LABEL_25:
      sub_21A41F920(v40, v63, 0, v17);
LABEL_30:
      swift_unknownObjectRelease();
    }

    v44 = *v5;
    v45 = swift_isUniquelyReferenced_nonNull_native();
    v46 = *v5;
    v68 = *v5;
    v48 = sub_21A3DCA2C(v11, v10);
    v49 = v46[2];
    v50 = (v47 & 1) == 0;
    v51 = v49 + v50;
    if (__OFADD__(v49, v50))
    {
      goto LABEL_57;
    }

    v52 = v47;
    if (v46[3] < v51)
    {
      break;
    }

    if ((v45 & 1) == 0)
    {
      sub_21A3E4570();
    }

LABEL_37:
    if (v52)
    {
      memmove(__dst, (v68[7] + 168 * v48), 0xA8uLL);
      sub_21A419F0C(__dst);
    }

    else
    {
      sub_21A419E74(__dst);
    }

    v91 = __dst[8];
    v92[0] = v82[0];
    *(v92 + 9) = *(v82 + 9);
    v87 = __dst[4];
    v88 = __dst[5];
    v89 = __dst[6];
    v90 = __dst[7];
    v83 = __dst[0];
    v84 = __dst[1];
    v85 = __dst[2];
    v86 = __dst[3];
    v82[0] = v92[0];
    *(v82 + 9) = *(v92 + 9);
    if (sub_21A419E9C(__dst) == 1)
    {
      goto LABEL_59;
    }

    espresso_buffer_pack_tensor_shape();
    v77 = v91;
    *v78 = v92[0];
    *&v78[9] = *(v92 + 9);
    v73 = v87;
    v74 = v88;
    v75 = v89;
    v76 = v90;
    v69 = v83;
    v70 = v84;
    v71 = v85;
    v72 = v86;
    v79[8] = v91;
    v80[0] = v92[0];
    *(v80 + 9) = *(v92 + 9);
    v79[4] = v87;
    v79[5] = v88;
    v79[6] = v89;
    v79[7] = v90;
    v79[0] = v83;
    v79[1] = v84;
    v79[2] = v85;
    v79[3] = v86;
    if (sub_21A419E9C(v79) == 1)
    {

      if (v52)
      {
        sub_21A419EB8(v68[6] + 16 * v48);
        sub_21A419290(v48, v68);
      }
    }

    else if (v52)
    {

      v8 = v68[7] + 168 * v48;
      *(v8 + 128) = v77;
      *(v8 + 144) = *v78;
      *(v8 + 160) = *&v78[16];
      *(v8 + 64) = v73;
      *(v8 + 80) = v74;
      *(v8 + 96) = v75;
      *(v8 + 112) = v76;
      *v8 = v69;
      *(v8 + 16) = v70;
      *(v8 + 32) = v71;
      *(v8 + 48) = v72;
    }

    else
    {
      v68[(v48 >> 6) + 8] |= 1 << v48;
      v55 = (v68[6] + 16 * v48);
      *v55 = v11;
      v55[1] = v10;
      v56 = v68[7] + 168 * v48;
      *v56 = v69;
      *(v56 + 16) = v70;
      *(v56 + 64) = v73;
      *(v56 + 80) = v74;
      *(v56 + 32) = v71;
      *(v56 + 48) = v72;
      *(v56 + 160) = *&v78[16];
      *(v56 + 128) = v77;
      *(v56 + 144) = *v78;
      *(v56 + 96) = v75;
      *(v56 + 112) = v76;
      v57 = v68[2];
      v58 = __OFADD__(v57, 1);
      v59 = v57 + 1;
      if (v58)
      {
        goto LABEL_58;
      }

      v68[2] = v59;
    }

    ++v6;
    swift_unknownObjectRelease();
    *v5 = v68;

    v7 = v64;
    if (v6 == v62)
    {
      goto LABEL_51;
    }
  }

  sub_21A3E3828(v51, v45);
  v53 = sub_21A3DCA2C(v11, v10);
  if ((v52 & 1) == (v54 & 1))
  {
    v48 = v53;
    goto LABEL_37;
  }

LABEL_60:
  result = sub_21A451A94();
  __break(1u);
  return result;
}

double sub_21A419E74(uint64_t a1)
{
  *(a1 + 160) = 0;
  result = 0.0;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 168) = 1;
  return result;
}

uint64_t sub_21A419E9C(uint64_t a1)
{
  if (*(a1 + 168))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_21A41A150(uint64_t result, uint64_t a2, uint64_t a3, void *a4)
{
  v71 = *MEMORY[0x277D85DE8];
  v4 = *(a3 + 16);
  if (!v4)
  {
LABEL_35:
    v38 = *MEMORY[0x277D85DE8];
    return result;
  }

  v5 = (a3 + 40);
  while (1)
  {
    v39 = v4;
    v7 = *(v5 - 1);
    v8 = *v5;

    v41 = v7;
    sub_21A414C78();
    v10 = v9;
    v12 = v11;
    v13 = v11 >> 1;
    if (v11)
    {
      sub_21A451A34();
      swift_unknownObjectRetain_n();
      v19 = swift_dynamicCastClass();
      if (!v19)
      {
        swift_unknownObjectRelease();
        v19 = MEMORY[0x277D84F90];
      }

      v20 = *(v19 + 16);

      if (v20 == v13)
      {
        v21 = swift_dynamicCastClass();
        swift_unknownObjectRelease();
        if (v21)
        {
          goto LABEL_16;
        }

        goto LABEL_15;
      }

      swift_unknownObjectRelease();
      if (v12 >= 2)
      {
LABEL_8:
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD28678, &qword_21A456A10);
        v14 = 8 * v13;
        v15 = v13;
        v16 = swift_allocObject();
        v17 = _swift_stdlib_malloc_size(v16);
        v18 = v17 - 32;
        if (v17 < 32)
        {
          v18 = v17 - 25;
        }

        v16[2] = v15;
        v16[3] = 2 * (v18 >> 3);
        memcpy(v16 + 4, v10, v14);
      }
    }

    else
    {
      swift_unknownObjectRetain();
      if (v12 >= 2)
      {
        goto LABEL_8;
      }
    }

LABEL_15:
    swift_unknownObjectRelease();
LABEL_16:
    v22 = *a4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = *a4;
    v26 = sub_21A3DCA2C(v41, v8);
    v27 = v24[2];
    v28 = (v25 & 1) == 0;
    v29 = v27 + v28;
    if (__OFADD__(v27, v28))
    {
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
    }

    v30 = v25;
    if (v24[3] < v29)
    {
      break;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      if ((v25 & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    else
    {
      sub_21A3E4570();
      if ((v30 & 1) == 0)
      {
LABEL_20:
        sub_21A419E74(__dst);
        v69 = v59;
        v70[0] = v60[0];
        *(v70 + 9) = *(v60 + 9);
        v65 = v55;
        v66 = v56;
        v67 = v57;
        v68 = v58;
        goto LABEL_24;
      }
    }

LABEL_23:
    memmove(__dst, (v24[7] + 168 * v26), 0xA8uLL);
    sub_21A419F0C(__dst);
    v68 = v58;
    v69 = v59;
    v70[0] = v60[0];
    *(v70 + 9) = *(v60 + 9);
    v65 = v55;
    v66 = v56;
    v67 = v57;
LABEL_24:
    v61 = __dst[0];
    v62 = __dst[1];
    v63 = __dst[2];
    v64 = __dst[3];
    v59 = v69;
    v60[0] = v70[0];
    *(v60 + 9) = *(v70 + 9);
    v55 = v65;
    v56 = v66;
    v57 = v67;
    v58 = v68;
    if (sub_21A419E9C(__dst) == 1)
    {
      goto LABEL_38;
    }

    espresso_buffer_pack_tensor_shape();
    v50 = v69;
    *v51 = v70[0];
    *&v51[9] = *(v70 + 9);
    v46 = v65;
    v47 = v66;
    v48 = v67;
    v49 = v68;
    v42 = v61;
    v43 = v62;
    v44 = v63;
    v45 = v64;
    v52[7] = v68;
    v52[8] = v69;
    v53[0] = v70[0];
    *(v53 + 9) = *(v70 + 9);
    v52[4] = v65;
    v52[5] = v66;
    v52[6] = v67;
    v52[0] = v61;
    v52[1] = v62;
    v52[2] = v63;
    v52[3] = v64;
    if (sub_21A419E9C(v52) == 1)
    {

      if (v30)
      {
        sub_21A419EB8(v24[6] + 16 * v26);
        sub_21A419290(v26, v24);
      }

      goto LABEL_4;
    }

    if (v30)
    {

      v6 = v24[7] + 168 * v26;
      *(v6 + 128) = v50;
      *(v6 + 144) = *v51;
      *(v6 + 160) = *&v51[16];
      *(v6 + 64) = v46;
      *(v6 + 80) = v47;
      *(v6 + 96) = v48;
      *(v6 + 112) = v49;
      *v6 = v42;
      *(v6 + 16) = v43;
      *(v6 + 32) = v44;
      *(v6 + 48) = v45;
LABEL_4:
      swift_unknownObjectRelease();
      goto LABEL_5;
    }

    v24[(v26 >> 6) + 8] |= 1 << v26;
    v33 = (v24[6] + 16 * v26);
    *v33 = v41;
    v33[1] = v8;
    v34 = v24[7] + 168 * v26;
    *v34 = v42;
    *(v34 + 16) = v43;
    *(v34 + 64) = v46;
    *(v34 + 80) = v47;
    *(v34 + 32) = v44;
    *(v34 + 48) = v45;
    *(v34 + 160) = *&v51[16];
    *(v34 + 128) = v50;
    *(v34 + 144) = *v51;
    *(v34 + 96) = v48;
    *(v34 + 112) = v49;
    swift_unknownObjectRelease();
    v35 = v24[2];
    v36 = __OFADD__(v35, 1);
    v37 = v35 + 1;
    if (v36)
    {
      goto LABEL_37;
    }

    v24[2] = v37;
LABEL_5:
    *a4 = v24;

    v5 += 2;
    v4 = v39 - 1;
    if (v39 == 1)
    {
      goto LABEL_35;
    }
  }

  sub_21A3E3828(v29, isUniquelyReferenced_nonNull_native);
  v31 = sub_21A3DCA2C(v41, v8);
  if ((v30 & 1) == (v32 & 1))
  {
    v26 = v31;
    if ((v30 & 1) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_23;
  }

  result = sub_21A451A94();
  __break(1u);
  return result;
}

uint64_t PFLStats.StdMethod.hashValue.getter()
{
  v1 = *v0;
  sub_21A451B04();
  MEMORY[0x21CEDA220](v1);
  return sub_21A451B24();
}

uint64_t static PFLStats.meanAndStd(_:)(uint64_t a1)
{
  v3 = 1;
  v1 = sub_21A41AAA4(a1, &v3);
  return v1 | ((HIDWORD(v1) & 1) << 32);
}

uint64_t static PFLStats.l2Norm(_:)(uint64_t a1)
{
  if (*(a1 + 16) >> 31)
  {
    __break(1u);
  }

  return MEMORY[0x282108C30]();
}

float static PFLStats.mean(_:)(uint64_t a1)
{
  v5 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 16);
  __C = NAN;
  vDSP_meanv((a1 + 32), 1, &__C, v1);
  result = __C;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

float static PFLStats.sum(_:)(uint64_t a1)
{
  v5 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 16);
  __C = NAN;
  vDSP_sve((a1 + 32), 1, &__C, v1);
  result = __C;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t static PFLStats.cumsum(vector:)(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x277D84F90];
  }

  v3 = *(a1 + 16);
  v4 = sub_21A451344();
  *(v4 + 16) = v1;
  bzero((v4 + 32), 4 * v1);
  v5 = 0.0;
  v6 = 32;
  do
  {
    v5 = v5 + *(a1 + v6);
    *(v4 + v6) = v5;
    v6 += 4;
    --v1;
  }

  while (v1);
  return v4;
}

uint64_t sub_21A41A914(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(char *, uint64_t, uint64_t, uint64_t))
{
  v19 = a5;
  v8 = *(a3 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](a1);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_21A451374();
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v13 = result;
    if (result)
    {
      v14 = sub_21A451344();
      *(v14 + 16) = v13;
      bzero((v14 + 32), v13);
      v15 = 0;
      v16 = (v8 + 8);
      while (1)
      {
        sub_21A4513D4();
        v17 = v19(v11, a2, a3, a4);
        (*v16)(v11, a3);
        if (v17)
        {
          if (v15 >= *(v14 + 16))
          {
            __break(1u);
            return MEMORY[0x277D84F90];
          }

          *(v14 + v15 + 32) = 1;
        }

        if (v13 == ++v15)
        {
          return v14;
        }
      }
    }

    return MEMORY[0x277D84F90];
  }

  return result;
}

unint64_t sub_21A41AAA4(uint64_t a1, _BYTE *a2)
{
  __Mean[1] = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 16);
  if (v2 <= 1)
  {
    if (v2)
    {
      v4 = 0;
      v5 = *(a1 + 32);
    }

    else
    {
      v5 = 0;
      v4 = 1;
    }
  }

  else
  {
    __Mean[0] = 0;
    vDSP_normalize((a1 + 32), 1, 0, 1, __Mean + 1, __Mean, v2);
    *a2;
    v4 = 0;
    v5 = HIDWORD(__Mean[0]);
  }

  BYTE4(__Mean[0]) = v4;
  v6 = *MEMORY[0x277D85DE8];
  return v5 | (v4 << 32);
}

unint64_t sub_21A41AB90()
{
  result = qword_27CD289D0;
  if (!qword_27CD289D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD289D0);
  }

  return result;
}

PrivateFederatedLearning::PFLTaskDiscoveryError_optional __swiftcall PFLTaskDiscoveryError.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 0;
  v3 = 37;
  switch(rawValue)
  {
    case 9500:
      goto LABEL_51;
    case 9501:
      v2 = 1;
      goto LABEL_51;
    case 9502:
      v2 = 2;
      goto LABEL_51;
    case 9503:
      v2 = 3;
      goto LABEL_51;
    case 9504:
      v2 = 4;
      goto LABEL_51;
    case 9505:
      v2 = 5;
      goto LABEL_51;
    case 9506:
      v2 = 6;
      goto LABEL_51;
    case 9507:
      v2 = 7;
      goto LABEL_51;
    case 9508:
      v2 = 8;
      goto LABEL_51;
    case 9509:
      v2 = 9;
      goto LABEL_51;
    case 9510:
      v2 = 10;
      goto LABEL_51;
    case 9511:
      v2 = 11;
      goto LABEL_51;
    case 9512:
      v2 = 12;
      goto LABEL_51;
    case 9513:
      v2 = 13;
      goto LABEL_51;
    case 9514:
      v2 = 14;
      goto LABEL_51;
    case 9515:
      v2 = 15;
      goto LABEL_51;
    case 9516:
      v2 = 16;
      goto LABEL_51;
    case 9517:
      v2 = 17;
      goto LABEL_51;
    case 9518:
      v2 = 18;
      goto LABEL_51;
    case 9519:
      v2 = 19;
      goto LABEL_51;
    case 9520:
      v2 = 20;
      goto LABEL_51;
    case 9521:
      v2 = 21;
      goto LABEL_51;
    case 9522:
      v2 = 22;
      goto LABEL_51;
    case 9523:
      v2 = 23;
      goto LABEL_51;
    case 9524:
      v2 = 24;
      goto LABEL_51;
    case 9525:
      v2 = 25;
      goto LABEL_51;
    case 9526:
      v2 = 26;
      goto LABEL_51;
    case 9527:
      v2 = 27;
      goto LABEL_51;
    case 9528:
      v2 = 28;
      goto LABEL_51;
    case 9529:
      v2 = 29;
      goto LABEL_51;
    case 9530:
      v2 = 30;
      goto LABEL_51;
    case 9531:
      v2 = 31;
      goto LABEL_51;
    case 9532:
      v2 = 32;
      goto LABEL_51;
    case 9533:
      v2 = 33;
      goto LABEL_51;
    case 9534:
      v2 = 34;
      goto LABEL_51;
    case 9535:
      v2 = 35;
      goto LABEL_51;
    case 9536:
      v2 = 36;
LABEL_51:
      v3 = v2;
      goto LABEL_52;
    case 9537:
LABEL_52:
      *v1 = v3;
      break;
    case 9538:
      *v1 = 38;
      break;
    case 9539:
      *v1 = 39;
      break;
    case 9540:
      *v1 = 40;
      break;
    case 9541:
      *v1 = 41;
      break;
    case 9542:
      *v1 = 42;
      break;
    case 9543:
      *v1 = 43;
      break;
    case 9544:
      *v1 = 44;
      break;
    case 9545:
      *v1 = 45;
      break;
    case 9546:
      *v1 = 46;
      break;
    case 9547:
      *v1 = 47;
      break;
    case 9548:
      *v1 = 48;
      break;
    case 9549:
      *v1 = 49;
      break;
    case 9550:
      *v1 = 50;
      break;
    case 9551:
      *v1 = 51;
      break;
    case 9552:
      *v1 = 52;
      break;
    case 9553:
      *v1 = 53;
      break;
    case 9554:
      *v1 = 54;
      break;
    default:
      *v1 = 55;
      break;
  }

  return rawValue;
}

unint64_t sub_21A41AE50()
{
  result = qword_27CD289D8;
  if (!qword_27CD289D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD289D8);
  }

  return result;
}

uint64_t sub_21A41AEA4()
{
  v1 = *v0;
  sub_21A451B04();
  MEMORY[0x21CEDA220](v1 + 9500);
  return sub_21A451B24();
}

uint64_t sub_21A41AF24()
{
  v1 = *v0;
  sub_21A451B04();
  MEMORY[0x21CEDA220](v1 + 9500);
  return sub_21A451B24();
}

unint64_t sub_21A41AF88(uint64_t a1)
{
  result = sub_21A3EC940();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_21A41AFB0(uint64_t a1, uint64_t a2)
{
  v4 = sub_21A41B158();
  v5 = sub_21A41B1AC();

  return MEMORY[0x2821FE2D0](a1, a2, v4, v5);
}

uint64_t getEnumTagSinglePayload for PFLTaskDiscoveryError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xCA)
  {
    goto LABEL_17;
  }

  if (a2 + 54 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 54) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 54;
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

      return (*a1 | (v4 << 8)) - 54;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 54;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x37;
  v8 = v6 - 55;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for PFLTaskDiscoveryError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 54 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 54) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xCA)
  {
    v4 = 0;
  }

  if (a2 > 0xC9)
  {
    v5 = ((a2 - 202) >> 8) + 1;
    *result = a2 + 54;
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
    *result = a2 + 54;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_21A41B158()
{
  result = qword_27CD289E0;
  if (!qword_27CD289E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD289E0);
  }

  return result;
}

unint64_t sub_21A41B1AC()
{
  result = qword_27CD289E8;
  if (!qword_27CD289E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD289E8);
  }

  return result;
}

uint64_t EspressoEIRTrainer.__allocating_init(_:)(uint64_t a1)
{
  swift_allocObject();
  v2 = sub_21A41FAA8(a1);

  return v2;
}

uint64_t EspressoEIRTrainer.init(_:)(uint64_t a1)
{
  v1 = sub_21A41FAA8(a1);

  return v1;
}

void *EspressoEIRTrainer.deinit()
{
  v1 = v0[6];
  espresso_plan_destroy();
  v2 = v0[5];
  espresso_context_destroy();
  v3 = v0[2];

  v4 = v0[8];

  v5 = v0[12];

  v6 = v0[13];

  v7 = v0[14];

  v8 = v0[15];

  v9 = v0[16];

  v10 = v0[60];

  v11 = v0[61];

  v12 = v0[62];

  return v0;
}

uint64_t EspressoEIRTrainer.__deallocating_deinit()
{
  EspressoEIRTrainer.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_21A41B32C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v11 = *a3;
  v12 = *(v7 + 64);
  *(v7 + 56) = a1;
  *(v7 + 64) = a2;

  *(v7 + 72) = v11;
  v13 = *(v7 + 16);

  Current = CFAbsoluteTimeGetCurrent();
  swift_beginAccess();
  v15 = *(v13 + 16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v43 = *(v13 + 16);
  *(v13 + 16) = 0x8000000000000000;
  sub_21A4033E8(0x6F4C2E6C65646F4DLL, 0xEA00000000006461, isUniquelyReferenced_nonNull_native, Current);
  *(v13 + 16) = v43;
  swift_endAccess();

  v17 = *(v7 + 48);
  sub_21A4510E4();
  swift_beginAccess();
  v18 = espresso_plan_add_network();
  swift_endAccess();

  if (v18)
  {
    v19 = 8;
LABEL_11:
    sub_21A3DCAA4();
    swift_allocError();
    *v36 = v19;
    return swift_willThrow();
  }

  else
  {
    v42 = a6;
    v20 = (a4 + 40);
    v21 = *(a4 + 16) + 1;
    v22 = a4;
    v23 = a4;
    while (--v21)
    {
      v24 = v20 + 2;
      v25 = *(v20 - 1);
      v26 = *v20;
      v27 = *(v7 + 24);
      v28 = *(v7 + 32);
      sub_21A4510E4();
      v18 = v18 & 0xFFFFFFFF00000000 | v28;
      LODWORD(v27) = espresso_network_declare_input();

      v22 = v23;
      v20 = v24;
      if (v27)
      {
        v19 = 2;
        goto LABEL_11;
      }
    }

    v29 = (a5 + 40);
    v30 = *(a5 + 16) + 1;
    while (--v30)
    {
      v31 = v29 + 2;
      v32 = *(v29 - 1);
      v33 = *v29;
      v34 = *(v7 + 24);
      v35 = *(v7 + 32);
      sub_21A4510E4();
      v18 = v18 & 0xFFFFFFFF00000000 | v35;
      LODWORD(v34) = espresso_network_declare_output();

      v22 = v23;
      v29 = v31;
      if (v34)
      {
        v19 = 3;
        goto LABEL_11;
      }
    }

    v38 = *(v7 + 480);
    *(v7 + 480) = v22;

    v39 = *(v7 + 488);
    *(v7 + 488) = a5;

    v40 = *(v7 + 496);
    *(v7 + 496) = v42;

    v41 = *(v7 + 16);

    sub_21A402C48(0x6F4C2E6C65646F4DLL, 0xEA00000000006461);
  }
}

uint64_t sub_21A41B624(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = 1;
  result = sub_21A41B32C(a1, a2, &v7, a3, a4, MEMORY[0x277D84F90]);
  if (!v5)
  {
    *(v4 + 136) = 0;
  }

  return result;
}

uint64_t sub_21A41B668(uint64_t a1, uint64_t a2)
{
  *(v2 + 80) = a1;
  if ((*(v2 + 72) & 2) != 0)
  {
    if ((a2 & 0x100000000) != 0)
    {
      sub_21A3DCAA4();
      swift_allocError();
      *v11 = 21;
      return swift_willThrow();
    }

    *(v2 + 88) = a2;
  }

  sub_21A41C7E4(v13);
  v14[0] = v13[0];
  v14[1] = v13[1];
  v14[2] = v13[2];
  sub_21A41F11C(v14);
  if (v3)
  {
    goto LABEL_7;
  }

  v4 = *(v2 + 480);
  swift_beginAccess();
  swift_beginAccess();

  sub_21A41DA94(v5, (v2 + 96), (v2 + 104));
  swift_endAccess();
  swift_endAccess();

  v6 = *(v2 + 488);
  swift_beginAccess();
  swift_beginAccess();

  sub_21A41DA94(v7, (v2 + 112), (v2 + 120));
  swift_endAccess();
  swift_endAccess();

  v8 = *(v2 + 496);
  swift_beginAccess();

  sub_21A41E464(v9, (v2 + 128));
  swift_endAccess();

  sub_21A41CC80();
  if (*(v2 + 136) != 1)
  {
LABEL_7:
  }

  else
  {
    sub_21A41C718();
    result = swift_beginAccess();
    v12 = *(v2 + 312);
    if (v12)
    {

      *v12 = *(v2 + 88);
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

unint64_t sub_21A41B8A8()
{
  v1 = v0;
  v2 = *(v0 + 496);
  v43 = *(v2 + 16);
  if (v43)
  {

    result = swift_beginAccess();
    v4 = 0;
    for (i = 0; i != v43; ++i)
    {
      if (i >= *(v2 + 16))
      {
        goto LABEL_39;
      }

      v6 = (v2 + 32 + 16 * i);
      v7 = *v6;
      v8 = v6[1];
      v9 = *(v1 + 24);
      v10 = *(v1 + 32);

      sub_21A414C78();
      v12 = v11;
      v14 = v13;
      v16 = v15;

      v17 = (v16 >> 1) - v14;
      if (v16 >> 1 != v14)
      {
        if ((v16 >> 1) <= v14)
        {
          goto LABEL_47;
        }

        v19 = (v12 + 8 * v14);
        v20 = 1;
        while (1)
        {
          v21 = *v19++;
          v18 = v20 * v21;
          if ((v20 * v21) >> 64 != (v20 * v21) >> 63)
          {
            break;
          }

          v20 = v18;
          if (!--v17)
          {
            goto LABEL_10;
          }
        }

        __break(1u);
LABEL_38:
        __break(1u);
LABEL_39:
        __break(1u);
LABEL_40:
        __break(1u);
        goto LABEL_41;
      }

      v18 = 1;
LABEL_10:
      result = swift_unknownObjectRelease();
      v22 = __OFADD__(v4, v18);
      v4 += v18;
      if (v22)
      {
        goto LABEL_40;
      }
    }

    if (v4 < 0)
    {
      goto LABEL_49;
    }

    if (v4)
    {
      v23 = sub_21A451344();
      *(v23 + 16) = v4;
      memset_pattern16((v23 + 32), &unk_21A456140, 4 * v4);
      goto LABEL_16;
    }
  }

  v23 = MEMORY[0x277D84F90];
LABEL_16:
  v24 = *(v1 + 496);
  v44 = *(v24 + 16);
  if (!v44)
  {
    return v23;
  }

  swift_beginAccess();
  result = swift_beginAccess();
  v25 = 0;
  v26 = 0;
  while (v25 < *(v24 + 16))
  {
    v27 = (v24 + 32 + 16 * v25);
    v28 = *v27;
    v29 = v27[1];
    v30 = *(v1 + 24);
    v31 = *(v1 + 32);

    result = sub_21A414C78();
    v35 = (v34 >> 1) - v33;
    if (v34 >> 1 != v33)
    {
      if ((v34 >> 1) <= v33)
      {
        goto LABEL_48;
      }

      v37 = (v32 + 8 * v33);
      v36 = 1;
      while (1)
      {
        v38 = *v37++;
        v39 = v36 * v38;
        if ((v36 * v38) >> 64 != (v36 * v38) >> 63)
        {
          goto LABEL_38;
        }

        v36 = v39;
        if (!--v35)
        {
          swift_unknownObjectRelease();
          result = swift_isUniquelyReferenced_nonNull_native();
          if ((result & 1) == 0)
          {
            goto LABEL_35;
          }

          goto LABEL_27;
        }
      }
    }

    swift_unknownObjectRelease();
    result = swift_isUniquelyReferenced_nonNull_native();
    v36 = 1;
    if (result)
    {
      v36 = 1;
    }

    else
    {
LABEL_35:
      result = sub_21A410F90(v23);
      v23 = result;
LABEL_27:
      if (v36 < 0xFFFFFFFF80000000)
      {
        goto LABEL_42;
      }

      if (v36 > 0x7FFFFFFF)
      {
        goto LABEL_43;
      }
    }

    v40 = *(v1 + 128);
    if (!*(v40 + 16))
    {
      goto LABEL_44;
    }

    v41 = *(v1 + 128);

    result = sub_21A3DCA2C(v28, v29);
    if ((v42 & 1) == 0)
    {
      goto LABEL_45;
    }

    if (!*(*(v40 + 56) + 168 * result))
    {
      goto LABEL_50;
    }

    cblas_scopy_NEWLAPACK();

    v22 = __OFADD__(v26, v36);
    v26 += v36;
    if (v22)
    {
      goto LABEL_46;
    }

    if (++v25 == v44)
    {

      return v23;
    }
  }

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
LABEL_49:
  __break(1u);
LABEL_50:
  __break(1u);
  return result;
}

uint64_t sub_21A41BC10()
{
  v1 = *(v0 + 488);
  v39 = *(v1 + 16);
  if (v39)
  {
    v2 = v0;
    v38 = v1 + 32;

    swift_beginAccess();
    swift_beginAccess();
    v3 = 0;
    v4 = MEMORY[0x277D84F98];
    v37 = v2;
    while (v3 < *(v1 + 16))
    {
      v5 = (v38 + 16 * v3);
      v7 = *v5;
      v6 = v5[1];
      v8 = *(v2 + 24);
      v9 = *(v2 + 32);

      sub_21A414C78();
      v13 = (v12 >> 1) - v11;
      if (v12 >> 1 == v11)
      {
        swift_unknownObjectRelease();
        v14 = 1;
      }

      else
      {
        if ((v12 >> 1) <= v11)
        {
          goto LABEL_43;
        }

        v15 = (v10 + 8 * v11);
        v14 = 1;
        do
        {
          v16 = *v15++;
          v17 = v14 * v16;
          if ((v14 * v16) >> 64 != (v14 * v16) >> 63)
          {
            __break(1u);
            goto LABEL_37;
          }

          v14 = v17;
          --v13;
        }

        while (v13);
        swift_unknownObjectRelease();
        if (v14 < 0)
        {
          goto LABEL_38;
        }

        if (!v14)
        {

          v18 = MEMORY[0x277D84F90];
          goto LABEL_15;
        }
      }

      v18 = sub_21A451344();
      *(v18 + 16) = v14;
      bzero((v18 + 32), 4 * v14);
LABEL_15:
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v41 = v4;
      sub_21A4032A0(v18, v7, v6, isUniquelyReferenced_nonNull_native);

      if (v14 >> 31)
      {
        goto LABEL_39;
      }

      v20 = *(v2 + 112);
      if (!*(v20 + 16))
      {
        goto LABEL_40;
      }

      v21 = v41;
      v22 = *(v2 + 112);

      v23 = sub_21A3DCA2C(v7, v6);
      if ((v24 & 1) == 0)
      {
        goto LABEL_41;
      }

      v40 = v3;
      if (!*(*(v20 + 56) + 168 * v23))
      {
        goto LABEL_44;
      }

      v25 = v1;

      v26 = swift_isUniquelyReferenced_nonNull_native();
      v41 = v21;
      v4 = v21;
      v28 = sub_21A3DCA2C(v7, v6);
      v29 = v21[2];
      v30 = (v27 & 1) == 0;
      v31 = v29 + v30;
      if (__OFADD__(v29, v30))
      {
        goto LABEL_42;
      }

      v32 = v27;
      if (v21[3] >= v31)
      {
        if (v26)
        {
          if ((v27 & 1) == 0)
          {
            goto LABEL_32;
          }
        }

        else
        {
          v4 = &v41;
          sub_21A3E4280();
          if ((v32 & 1) == 0)
          {
            goto LABEL_32;
          }
        }
      }

      else
      {
        sub_21A3E32BC(v31, v26);
        v4 = v41;
        v33 = sub_21A3DCA2C(v7, v6);
        if ((v32 & 1) != (v34 & 1))
        {
          goto LABEL_45;
        }

        v28 = v33;
        if ((v32 & 1) == 0)
        {
LABEL_32:
          __break(1u);
LABEL_33:

          return v4;
        }
      }

      v35 = *(v41[7] + 8 * v28);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v35 = sub_21A407D80(0, *(v35 + 2), 0, v35);
      }

      v1 = v25;

      cblas_scopy_NEWLAPACK();
      v2 = v37;
      if (v35)
      {

        v4 = v41;
        *(v41[7] + 8 * v28) = v35;
      }

      else
      {

        v4 = v41;
        sub_21A419EB8(v41[6] + 16 * v28);
        sub_21A4190E0(v28, v4);
      }

      ++v3;

      if (v40 + 1 == v39)
      {
        goto LABEL_33;
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
LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
LABEL_45:
    result = sub_21A451A94();
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_21A41BFC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v4;
  v6 = v3;
  sub_21A3DCAA4();
  v9 = swift_allocError();
  *v10 = 19;
  if ((*(v3 + 72) & 1) == 0)
  {
LABEL_73:
    swift_willThrow();
    return a3;
  }

  if (*(v3 + 136))
  {
    result = swift_beginAccess();
    v12 = *(v3 + 144);
    if (!v12)
    {
LABEL_110:
      __break(1u);
      goto LABEL_111;
    }

    *v12 = 0;
  }

  v13 = *(v3 + 80);
  if (!v13)
  {
LABEL_93:
    __break(1u);
LABEL_94:
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
    goto LABEL_106;
  }

  if (a3 == 0x8000000000000000 && v13 == -1)
  {
LABEL_106:
    __break(1u);
LABEL_107:
    __break(1u);
LABEL_108:
    a3 = sub_21A4082B4(0, *(a3 + 16) + 1, 1, a3);
LABEL_77:
    v65 = *(a3 + 16);
    v64 = *(a3 + 24);
    if (v65 >= v64 >> 1)
    {
      a3 = sub_21A4082B4((v64 > 1), v65 + 1, 1, a3);
    }

    *(a3 + 16) = v65 + 1;
    *(a3 + 8 * v65 + 32) = v5;
    sub_21A41F58C(v77);
    if (!v69)
    {
      return a3;
    }

LABEL_44:

    return a3;
  }

  v14 = a3 / v13;
  if (a3 / v13 < 0)
  {
    goto LABEL_94;
  }

  v67 = *(v3 + 80);
  v68 = a3;
  v69 = v4;
  v74 = a2;
  if (v14)
  {
    v15 = 0;
    a3 = MEMORY[0x277D84F90];
    v16 = a1;
    v17 = a1 + 64;
    v70 = v14;
    while (2)
    {
      v77 = v15;
      v71 = v15 + 1;
      v73 = a3;
      v18 = 1 << *(v16 + 32);
      if (v18 < 64)
      {
        v19 = ~(-1 << v18);
      }

      else
      {
        v19 = -1;
      }

      v20 = v19 & *(v16 + 64);

      swift_beginAccess();
      v21 = 0;
      v5 = (v18 + 63) >> 6;
      v75 = v5;
      if (v20)
      {
        while (1)
        {
          v22 = v21;
          v23 = a1;
LABEL_20:
          if (!v23[2])
          {
            break;
          }

          v24 = (v23[6] + ((v22 << 10) | (16 * __clz(__rbit64(v20)))));
          v25 = *v24;
          v26 = v24[1];

          v27 = sub_21A3DCA2C(v25, v26);
          if ((v28 & 1) == 0)
          {
            goto LABEL_82;
          }

          v29 = *(v6 + 96);
          if (!*(v29 + 16))
          {
            goto LABEL_83;
          }

          a3 = v6;
          v30 = *(v23[7] + 8 * v27);

          v31 = sub_21A3DCA2C(v25, v26);
          if ((v32 & 1) == 0)
          {
            goto LABEL_84;
          }

          v5 = *(*(v29 + 56) + 168 * v31);

          if (!*(v74 + 16))
          {
            goto LABEL_85;
          }

          v33 = sub_21A3DCA2C(v25, v26);
          if ((v34 & 1) == 0)
          {
            goto LABEL_86;
          }

          v35 = *(*(v74 + 56) + 8 * v33);
          v36 = *(a3 + 80);
          v37 = v35 * v36;
          if ((v35 * v36) >> 64 != (v35 * v36) >> 63)
          {
            goto LABEL_87;
          }

          if (v37 < 0xFFFFFFFF80000000)
          {
            goto LABEL_88;
          }

          if (v37 > 0x7FFFFFFF)
          {
            goto LABEL_89;
          }

          if ((v35 * v77) >> 64 != (v35 * v77) >> 63)
          {
            goto LABEL_90;
          }

          if ((v35 * v77 * v36) >> 64 != (v35 * v77 * v36) >> 63)
          {
            goto LABEL_91;
          }

          if (!v5)
          {
            goto LABEL_107;
          }

          v20 &= v20 - 1;

          cblas_scopy_NEWLAPACK();

          v21 = v22;
          v6 = a3;
          v17 = a1 + 64;
          v5 = v75;
          if (!v20)
          {
            goto LABEL_16;
          }
        }

        __break(1u);
LABEL_82:
        __break(1u);
LABEL_83:
        __break(1u);
LABEL_84:
        __break(1u);
LABEL_85:
        __break(1u);
LABEL_86:
        __break(1u);
LABEL_87:
        __break(1u);
LABEL_88:
        __break(1u);
LABEL_89:
        __break(1u);
LABEL_90:
        __break(1u);
LABEL_91:
        __break(1u);
LABEL_92:
        __break(1u);
        goto LABEL_93;
      }

LABEL_16:
      v23 = a1;
      while (1)
      {
        v22 = v21 + 1;
        if (__OFADD__(v21, 1))
        {
          __break(1u);
LABEL_76:
          v5 = sub_21A41BC10();
          a3 = v73;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            goto LABEL_108;
          }

          goto LABEL_77;
        }

        if (v22 >= v5)
        {
          break;
        }

        v20 = *(v17 + 8 * v22);
        ++v21;
        if (v20)
        {
          goto LABEL_20;
        }
      }

      v38 = *(v6 + 48);
      if (espresso_plan_execute_sync())
      {
LABEL_72:

        swift_allocError();
        *v63 = 20;
        goto LABEL_73;
      }

      v39 = sub_21A41BC10();
      a3 = v73;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        a3 = sub_21A4082B4(0, v73[2] + 1, 1, v73);
      }

      v14 = v70;
      v41 = *(a3 + 16);
      v40 = *(a3 + 24);
      if (v41 >= v40 >> 1)
      {
        a3 = sub_21A4082B4((v40 > 1), v41 + 1, 1, a3);
      }

      *(a3 + 16) = v41 + 1;
      *(a3 + 8 * v41 + 32) = v39;
      v15 = v71;
      v16 = a1;
      if (v71 != v70)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    a3 = MEMORY[0x277D84F90];
  }

  if (v68 - v14 * v67 < 1)
  {
    return a3;
  }

  v42 = *(v6 + 80);
  sub_21A41F58C(v68 - v14 * v67);
  if (v4)
  {
    goto LABEL_44;
  }

  if (*(v6 + 136) != 1)
  {
LABEL_49:
    v76 = v68 - v14 * v67;
    v77 = v42;
    v73 = a3;
    v69 = 0;
    a3 = a1 + 64;
    v44 = 1 << *(a1 + 32);
    v45 = -1;
    if (v44 < 64)
    {
      v45 = ~(-1 << v44);
    }

    v46 = v45 & *(a1 + 64);

    swift_beginAccess();
    v47 = 0;
    v5 = (v44 + 63) >> 6;
    v66 = v6;
    for (i = v5; v46; v5 = i)
    {
      v48 = v47;
      v49 = a1;
LABEL_57:
      if (!v49[2])
      {
        goto LABEL_95;
      }

      v50 = (v49[6] + ((v48 << 10) | (16 * __clz(__rbit64(v46)))));
      v52 = *v50;
      v51 = v50[1];

      v53 = sub_21A3DCA2C(v52, v51);
      if ((v54 & 1) == 0)
      {
        goto LABEL_96;
      }

      a3 = v14;
      v55 = *(v6 + 96);
      if (!*(v55 + 16))
      {
        goto LABEL_97;
      }

      v56 = *(v49[7] + 8 * v53);

      v57 = sub_21A3DCA2C(v52, v51);
      if ((v58 & 1) == 0)
      {
        goto LABEL_98;
      }

      v5 = *(*(v55 + 56) + 168 * v57);

      if (!*(v74 + 16))
      {
        goto LABEL_99;
      }

      result = sub_21A3DCA2C(v52, v51);
      if ((v59 & 1) == 0)
      {
        goto LABEL_100;
      }

      v60 = *(*(v74 + 56) + 8 * result);
      v61 = v60 * v76;
      if ((v60 * v76) >> 64 != (v60 * v76) >> 63)
      {
        goto LABEL_101;
      }

      if (v61 < 0xFFFFFFFF80000000)
      {
        goto LABEL_102;
      }

      if (v61 > 0x7FFFFFFF)
      {
        goto LABEL_103;
      }

      if ((v60 * a3) >> 64 != (v60 * a3) >> 63)
      {
        goto LABEL_104;
      }

      if ((v60 * a3 * v77) >> 64 != (v60 * a3 * v77) >> 63)
      {
        goto LABEL_105;
      }

      if (!v5)
      {
        __break(1u);
        goto LABEL_110;
      }

      v14 = a3;
      v46 &= v46 - 1;

      cblas_scopy_NEWLAPACK();

      v47 = v48;
      v6 = v66;
      a3 = a1 + 64;
    }

    v49 = a1;
    while (1)
    {
      v48 = v47 + 1;
      if (__OFADD__(v47, 1))
      {
        goto LABEL_92;
      }

      if (v48 >= v5)
      {

        v62 = *(v6 + 48);
        if (!espresso_plan_execute_sync())
        {
          goto LABEL_76;
        }

        goto LABEL_72;
      }

      v46 = *(a3 + 8 * v48);
      ++v47;
      if (v46)
      {
        goto LABEL_57;
      }
    }
  }

  result = swift_beginAccess();
  v43 = *(v6 + 144);
  if (v43)
  {
    *v43 = 0;
    goto LABEL_49;
  }

LABEL_111:
  __break(1u);
  return result;
}

uint64_t sub_21A41C718()
{
  swift_beginAccess();
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  if (espresso_network_set_function_name())
  {
    v3 = 13;
  }

  else
  {
    v4 = *(v0 + 48);
    if (espresso_plan_execute_sync())
    {
      v3 = 12;
    }

    else
    {
      v5 = *(v0 + 24);
      v6 = *(v0 + 32);
      get_main_function_name();
      result = espresso_network_set_function_name();
      if (!result)
      {
        return result;
      }

      v3 = 14;
    }
  }

  sub_21A3DCAA4();
  swift_allocError();
  *v8 = v3;
  return swift_willThrow();
}

uint64_t sub_21A41C7E4@<X0>(uint64_t *a1@<X8>)
{
  v2 = *(v1 + 480);
  v3 = *(v2 + 16);
  if (!v3)
  {
    v15 = MEMORY[0x277D84F90];
    v45 = MEMORY[0x277D84F90];
    v46 = MEMORY[0x277D84F90];
    v47 = MEMORY[0x277D84F90];
    v44 = MEMORY[0x277D84F90];
LABEL_13:
    v42 = v15;
    v43 = v15;
    goto LABEL_14;
  }

  v4 = sub_21A451344();
  *(v4 + 16) = v3;
  v47 = v4;
  bzero((v4 + 32), 4 * v3);
  v2 = *(v1 + 480);
  v3 = *(v2 + 16);
  if (!v3)
  {
    v15 = MEMORY[0x277D84F90];
    v45 = MEMORY[0x277D84F90];
    v46 = MEMORY[0x277D84F90];
    v44 = MEMORY[0x277D84F90];
    goto LABEL_13;
  }

  v5 = *(v2 + 16);
  v6 = sub_21A451344();
  *(v6 + 16) = v3;
  v46 = v6;
  bzero((v6 + 32), 4 * v3);
  v2 = *(v1 + 480);
  v3 = *(v2 + 16);
  if (!v3)
  {
    v15 = MEMORY[0x277D84F90];
    v44 = MEMORY[0x277D84F90];
    v45 = MEMORY[0x277D84F90];
    goto LABEL_13;
  }

  v7 = *(v2 + 16);
  v8 = sub_21A451344();
  *(v8 + 16) = v3;
  v45 = v8;
  bzero((v8 + 32), 4 * v3);
  v2 = *(v1 + 480);
  v3 = *(v2 + 16);
  if (!v3)
  {
    v15 = MEMORY[0x277D84F90];
    v44 = MEMORY[0x277D84F90];
    goto LABEL_13;
  }

  v9 = *(v2 + 16);
  v10 = sub_21A451344();
  *(v10 + 16) = v3;
  v44 = v10;
  bzero((v10 + 32), 4 * v3);
  v2 = *(v1 + 480);
  v3 = *(v2 + 16);
  if (!v3)
  {
    v15 = MEMORY[0x277D84F90];
    goto LABEL_13;
  }

  v11 = *(v2 + 16);
  v12 = sub_21A451344();
  *(v12 + 16) = v3;
  v43 = v12;
  bzero((v12 + 32), 4 * v3);
  v2 = *(v1 + 480);
  v3 = *(v2 + 16);
  if (v3)
  {
    v13 = *(v2 + 16);
    v14 = sub_21A451344();
    *(v14 + 16) = v3;
    v42 = v14;
    bzero((v14 + 32), 4 * v3);
    v2 = *(v1 + 480);
    v3 = *(v2 + 16);
  }

  else
  {
    v42 = MEMORY[0x277D84F90];
  }

LABEL_14:

  result = swift_beginAccess();
  if (v3)
  {
    v17 = 0;
    v41 = v1;
    v39 = v3;
    v18 = (v2 + 40);
    v40 = v2;
    while (v17 < *(v2 + 16))
    {
      v19 = *(v18 - 1);
      v20 = *v18;
      v21 = *(v1 + 24);
      v22 = *(v1 + 32);

      sub_21A414C78();
      v24 = v23;
      v26 = v25;
      v28 = v27;

      v29 = *(v1 + 80);
      if ((v28 & 1) == 0 || (result = swift_isUniquelyReferenced_nonNull(), (result & 1) == 0))
      {
        sub_21A41F9F0(v24, v26, v28);
        v24 = v30;
        v26 = v31;
        v28 = v32;
        result = swift_unknownObjectRelease();
      }

      if (v28 < 2 || v26 > 0)
      {
        goto LABEL_44;
      }

      *v24 = v29;
      result = sub_21A4196D8(v24, v26, v28, v48);
      if (v48[0] < 0xFFFFFFFF80000000)
      {
        goto LABEL_45;
      }

      if (v48[0] > 0x7FFFFFFF)
      {
        goto LABEL_46;
      }

      if (v17 >= *(v47 + 16))
      {
        goto LABEL_47;
      }

      v34 = v48[1];
      v33 = v48[2];
      v36 = v48[3];
      v35 = v48[4];
      v37 = v48[5];
      *(v47 + 32 + 4 * v17) = v48[0];
      if (v34 < 0xFFFFFFFF80000000)
      {
        goto LABEL_48;
      }

      if (v34 > 0x7FFFFFFF)
      {
        goto LABEL_49;
      }

      if (v17 >= *(v46 + 16))
      {
        goto LABEL_50;
      }

      *(v46 + 32 + 4 * v17) = v34;
      if (v33 < 0xFFFFFFFF80000000)
      {
        goto LABEL_51;
      }

      if (v33 > 0x7FFFFFFF)
      {
        goto LABEL_52;
      }

      if (v17 >= *(v45 + 16))
      {
        goto LABEL_53;
      }

      *(v45 + 32 + 4 * v17) = v33;
      if (v36 < 0xFFFFFFFF80000000)
      {
        goto LABEL_54;
      }

      if (v36 > 0x7FFFFFFF)
      {
        goto LABEL_55;
      }

      if (v17 >= *(v44 + 16))
      {
        goto LABEL_56;
      }

      *(v44 + 32 + 4 * v17) = v36;
      if (v35 < 0xFFFFFFFF80000000)
      {
        goto LABEL_57;
      }

      if (v35 > 0x7FFFFFFF)
      {
        goto LABEL_58;
      }

      if (v17 >= *(v43 + 16))
      {
        goto LABEL_59;
      }

      *(v43 + 32 + 4 * v17) = v35;
      if (v37 < 0xFFFFFFFF80000000)
      {
        goto LABEL_60;
      }

      if (v37 > 0x7FFFFFFF)
      {
        goto LABEL_61;
      }

      if (v17 >= *(v42 + 16))
      {
        goto LABEL_62;
      }

      *(v42 + 32 + 4 * v17) = v37;
      result = swift_unknownObjectRelease();
      v18 += 2;
      ++v17;
      v2 = v40;
      v1 = v41;
      if (v39 == v17)
      {
        goto LABEL_41;
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
LABEL_48:
    __break(1u);
LABEL_49:
    __break(1u);
LABEL_50:
    __break(1u);
LABEL_51:
    __break(1u);
LABEL_52:
    __break(1u);
LABEL_53:
    __break(1u);
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
    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
  }

  else
  {
LABEL_41:

    *a1 = v47;
    a1[1] = v46;
    a1[2] = v45;
    a1[3] = v44;
    a1[4] = v43;
    a1[5] = v42;
  }

  return result;
}

void sub_21A41CC80()
{
  v1 = v0;
  v167 = *MEMORY[0x277D85DE8];
  v2 = v0[60];
  v3 = *(v2 + 16);
  v95 = v1;
  if (!v3)
  {
LABEL_28:
    v31 = v1[61];
    v32 = *(v31 + 16);
    if (v32)
    {
      v33 = v1[61];

      swift_beginAccess();
      if (!*(v31 + 16))
      {
LABEL_52:
        __break(1u);
LABEL_53:

        sub_21A3DCAA4();
        swift_allocError();
        v30 = 5;
        goto LABEL_59;
      }

      v34 = 0;
      v35 = (v31 + 40);
      v90 = v32 - 1;
      v92 = v31;
      while (1)
      {
        v99 = v35;
        v102 = v34;
        v36 = *(v35 - 1);
        v37 = *v35;
        v38 = v1[3];
        v39 = *(v1 + 8);
        sub_21A4510E4();
        swift_beginAccess();

        v40 = v1[14];
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v42 = v1[14];
        v115 = v42;
        v1[14] = 0x8000000000000000;
        v94 = v36;
        v44 = sub_21A3DCA2C(v36, v37);
        v45 = v42[2];
        v46 = (v43 & 1) == 0;
        v47 = v45 + v46;
        if (__OFADD__(v45, v46))
        {
          goto LABEL_88;
        }

        v48 = v43;
        if (v42[3] >= v47)
        {
          if (isUniquelyReferenced_nonNull_native)
          {
            if (v43)
            {
              goto LABEL_38;
            }
          }

          else
          {
            sub_21A3E4570();
            if (v48)
            {
              goto LABEL_38;
            }
          }
        }

        else
        {
          sub_21A3E3828(v47, isUniquelyReferenced_nonNull_native);
          v49 = sub_21A3DCA2C(v94, v37);
          if ((v48 & 1) != (v50 & 1))
          {
            goto LABEL_96;
          }

          v44 = v49;
          if (v48)
          {
LABEL_38:
            memmove(&__dst, (v42[7] + 168 * v44), 0xA8uLL);
            sub_21A419F0C(&__dst);
            goto LABEL_41;
          }
        }

        sub_21A419E74(&__dst);
LABEL_41:
        v165 = v155;
        v166[0] = v156[0];
        *(v166 + 9) = *(v156 + 9);
        v161 = v151;
        v162 = v152;
        v163 = v153;
        v164 = v154;
        v157 = __dst;
        v158 = v148;
        v159 = v149;
        v160 = v150;
        v156[0] = v166[0];
        *(v156 + 9) = *(v166 + 9);
        if (sub_21A419E9C(&__dst) == 1)
        {
          goto LABEL_94;
        }

        v51 = espresso_network_bind_buffer();
        v123 = v164;
        v124 = v165;
        *v125 = v166[0];
        *&v125[9] = *(v166 + 9);
        v120 = v161;
        v121 = v162;
        v122 = v163;
        v116 = v157;
        v117 = v158;
        v118 = v159;
        v119 = v160;
        v145 = v165;
        v146[0] = v166[0];
        *(v146 + 9) = *(v166 + 9);
        v141 = v161;
        v142 = v162;
        v143 = v163;
        v144 = v164;
        v137 = v157;
        v138 = v158;
        v139 = v159;
        v140 = v160;
        if (sub_21A419E9C(&v137) == 1)
        {

          v52 = v115;
          if (v48)
          {
            sub_21A419EB8(v115[6] + 16 * v44);
            sub_21A419290(v44, v115);
          }
        }

        else if (v48)
        {

          v52 = v115;
          v53 = v115[7] + 168 * v44;
          *(v53 + 128) = v124;
          *(v53 + 144) = *v125;
          *(v53 + 160) = *&v125[16];
          *(v53 + 64) = v120;
          *(v53 + 80) = v121;
          *(v53 + 96) = v122;
          *(v53 + 112) = v123;
          *v53 = v116;
          *(v53 + 16) = v117;
          *(v53 + 32) = v118;
          *(v53 + 48) = v119;
        }

        else
        {
          v52 = v115;
          v115[(v44 >> 6) + 8] |= 1 << v44;
          v54 = (v115[6] + 16 * v44);
          *v54 = v94;
          v54[1] = v37;
          v55 = v115[7] + 168 * v44;
          *v55 = v116;
          *(v55 + 16) = v117;
          *(v55 + 64) = v120;
          *(v55 + 80) = v121;
          *(v55 + 32) = v118;
          *(v55 + 48) = v119;
          *(v55 + 160) = *&v125[16];
          *(v55 + 128) = v124;
          *(v55 + 144) = *v125;
          *(v55 + 96) = v122;
          *(v55 + 112) = v123;
          v56 = v115[2];
          v27 = __OFADD__(v56, 1);
          v57 = v56 + 1;
          if (v27)
          {
            goto LABEL_90;
          }

          v115[2] = v57;
        }

        v1 = v95;
        v95[14] = v52;
        swift_endAccess();

        if (v51)
        {
          goto LABEL_53;
        }

        if (v90 == v102)
        {

          break;
        }

        v96 = v96 & 0xFFFFFFFF00000000 | v39;
        v34 = v102 + 1;
        v35 = v99 + 2;
        if ((v102 + 1) >= *(v92 + 16))
        {
          goto LABEL_52;
        }
      }
    }

    if (*(v1 + 136) != 1)
    {
      goto LABEL_86;
    }

    swift_beginAccess();
    v58 = v1[3];
    v59 = *(v1 + 8);
    sub_21A4510E4();
    swift_beginAccess();
    LODWORD(v58) = espresso_network_bind_buffer_to_global();
    swift_endAccess();

    if (v58 || (v60 = v1[3], v61 = *(v1 + 8), sub_21A4510E4(), swift_beginAccess(), LODWORD(v60) = espresso_network_bind_buffer_to_global(), swift_endAccess(), , v60))
    {
      sub_21A3DCAA4();
      swift_allocError();
      v30 = 7;
      goto LABEL_59;
    }

    v62 = *(v1[62] + 16);
    if (!v62)
    {
LABEL_86:
      v88 = *MEMORY[0x277D85DE8];
      return;
    }

    v64 = 0;
    v65 = (v63 + 40);
    v93 = v63;
    while (1)
    {
      v97 = v65;
      v100 = v64;
      v67 = *(v65 - 1);
      v66 = *v65;
      v103 = v1[3];
      v68 = *(v1 + 8);
      sub_21A4510E4();
      swift_beginAccess();

      v69 = v1[16];
      v70 = swift_isUniquelyReferenced_nonNull_native();
      v71 = v1[16];
      v104 = v71;
      v1[16] = 0x8000000000000000;
      v73 = sub_21A3DCA2C(v67, v66);
      v74 = v71[2];
      v75 = (v72 & 1) == 0;
      v76 = v74 + v75;
      if (__OFADD__(v74, v75))
      {
        goto LABEL_91;
      }

      v77 = v72;
      if (v71[3] >= v76)
      {
        if (v70)
        {
          if ((v72 & 1) == 0)
          {
            goto LABEL_71;
          }
        }

        else
        {
          sub_21A3E4570();
          if ((v77 & 1) == 0)
          {
            goto LABEL_71;
          }
        }
      }

      else
      {
        sub_21A3E3828(v76, v70);
        v78 = sub_21A3DCA2C(v67, v66);
        if ((v77 & 1) != (v79 & 1))
        {
          goto LABEL_96;
        }

        v73 = v78;
        if ((v77 & 1) == 0)
        {
LABEL_71:
          sub_21A419E74(&__dst);
          goto LABEL_72;
        }
      }

      memmove(&__dst, (v71[7] + 168 * v73), 0xA8uLL);
      sub_21A419F0C(&__dst);
LABEL_72:
      v165 = v155;
      v166[0] = v156[0];
      *(v166 + 9) = *(v156 + 9);
      v161 = v151;
      v162 = v152;
      v163 = v153;
      v164 = v154;
      v157 = __dst;
      v158 = v148;
      v159 = v149;
      v160 = v150;
      v156[0] = v166[0];
      *(v156 + 9) = *(v166 + 9);
      if (sub_21A419E9C(&__dst) == 1)
      {
        __break(1u);
        goto LABEL_96;
      }

      v80 = v94 & 0xFFFFFFFF00000000 | v68;
      v81 = espresso_network_bind_buffer_to_global();
      v113 = v165;
      *v114 = v166[0];
      *&v114[9] = *(v166 + 9);
      v109 = v161;
      v110 = v162;
      v111 = v163;
      v112 = v164;
      v105 = v157;
      v106 = v158;
      v107 = v159;
      v108 = v160;
      v145 = v165;
      v146[0] = v166[0];
      *(v146 + 9) = *(v166 + 9);
      v141 = v161;
      v142 = v162;
      v143 = v163;
      v144 = v164;
      v137 = v157;
      v138 = v158;
      v139 = v159;
      v140 = v160;
      if (sub_21A419E9C(&v137) == 1)
      {

        v82 = v104;
        if (v77)
        {
          sub_21A419EB8(v104[6] + 16 * v73);
          sub_21A419290(v73, v104);
        }
      }

      else if (v77)
      {

        v82 = v104;
        v83 = v104[7] + 168 * v73;
        *(v83 + 128) = v113;
        *(v83 + 144) = *v114;
        *(v83 + 160) = *&v114[16];
        *(v83 + 64) = v109;
        *(v83 + 80) = v110;
        *(v83 + 96) = v111;
        *(v83 + 112) = v112;
        *v83 = v105;
        *(v83 + 16) = v106;
        *(v83 + 32) = v107;
        *(v83 + 48) = v108;
      }

      else
      {
        v82 = v104;
        v104[(v73 >> 6) + 8] |= 1 << v73;
        v84 = (v104[6] + 16 * v73);
        *v84 = v67;
        v84[1] = v66;
        v85 = v104[7] + 168 * v73;
        *v85 = v105;
        *(v85 + 16) = v106;
        *(v85 + 64) = v109;
        *(v85 + 80) = v110;
        *(v85 + 32) = v107;
        *(v85 + 48) = v108;
        *(v85 + 160) = *&v114[16];
        *(v85 + 128) = v113;
        *(v85 + 144) = *v114;
        *(v85 + 96) = v111;
        *(v85 + 112) = v112;
        v86 = v104[2];
        v27 = __OFADD__(v86, 1);
        v87 = v86 + 1;
        if (v27)
        {
          goto LABEL_92;
        }

        v104[2] = v87;
      }

      v1 = v95;
      v95[16] = v82;
      swift_endAccess();

      if (v81)
      {
        goto LABEL_84;
      }

      if (v62 - 1 == v100)
      {

        goto LABEL_86;
      }

      v94 = v80;
      v64 = v100 + 1;
      v65 = v97 + 2;
      if ((v100 + 1) >= *(v93 + 16))
      {
        __break(1u);
LABEL_84:

        sub_21A3DCAA4();
        swift_allocError();
        v30 = 6;
LABEL_59:
        *v29 = v30;
        swift_willThrow();
        goto LABEL_86;
      }
    }
  }

  swift_beginAccess();
  if (!*(v2 + 16))
  {
LABEL_25:
    __break(1u);
LABEL_26:

    sub_21A3DCAA4();
    swift_allocError();
    v30 = 4;
    goto LABEL_59;
  }

  v4 = 0;
  v5 = (v2 + 40);
  v89 = v3 - 1;
  v91 = v2;
  while (1)
  {
    v98 = v5;
    v101 = v4;
    v6 = *(v5 - 1);
    v7 = *v5;
    v8 = v1[3];
    v9 = *(v1 + 8);
    sub_21A4510E4();
    swift_beginAccess();

    v10 = v1[12];
    v11 = swift_isUniquelyReferenced_nonNull_native();
    v12 = v1[12];
    v126 = v12;
    v1[12] = 0x8000000000000000;
    v94 = v6;
    v14 = sub_21A3DCA2C(v6, v7);
    v15 = v12[2];
    v16 = (v13 & 1) == 0;
    v17 = v15 + v16;
    if (__OFADD__(v15, v16))
    {
      __break(1u);
LABEL_88:
      __break(1u);
LABEL_89:
      __break(1u);
LABEL_90:
      __break(1u);
LABEL_91:
      __break(1u);
LABEL_92:
      __break(1u);
LABEL_93:
      __break(1u);
LABEL_94:
      __break(1u);
    }

    v18 = v13;
    if (v12[3] < v17)
    {
      break;
    }

    if (v11)
    {
      if (v13)
      {
        goto LABEL_11;
      }
    }

    else
    {
      sub_21A3E4570();
      if (v18)
      {
LABEL_11:
        memmove(&__dst, (v12[7] + 168 * v14), 0xA8uLL);
        sub_21A419F0C(&__dst);
        v164 = v154;
        v165 = v155;
        v166[0] = v156[0];
        *(v166 + 9) = *(v156 + 9);
        v161 = v151;
        v162 = v152;
        v163 = v153;
        goto LABEL_14;
      }
    }

LABEL_13:
    sub_21A419E74(&__dst);
    v165 = v155;
    v166[0] = v156[0];
    *(v166 + 9) = *(v156 + 9);
    v161 = v151;
    v162 = v152;
    v163 = v153;
    v164 = v154;
LABEL_14:
    v157 = __dst;
    v158 = v148;
    v159 = v149;
    v160 = v150;
    v155 = v165;
    v156[0] = v166[0];
    *(v156 + 9) = *(v166 + 9);
    v151 = v161;
    v152 = v162;
    v153 = v163;
    v154 = v164;
    if (sub_21A419E9C(&__dst) == 1)
    {
      goto LABEL_93;
    }

    v21 = espresso_network_bind_buffer();
    v134 = v164;
    v135 = v165;
    *v136 = v166[0];
    *&v136[9] = *(v166 + 9);
    v131 = v161;
    v132 = v162;
    v133 = v163;
    v127 = v157;
    v128 = v158;
    v129 = v159;
    v130 = v160;
    v144 = v164;
    v145 = v165;
    v146[0] = v166[0];
    *(v146 + 9) = *(v166 + 9);
    v141 = v161;
    v142 = v162;
    v143 = v163;
    v137 = v157;
    v138 = v158;
    v139 = v159;
    v140 = v160;
    if (sub_21A419E9C(&v137) == 1)
    {

      v22 = v126;
      if (v18)
      {
        sub_21A419EB8(v126[6] + 16 * v14);
        sub_21A419290(v14, v126);
      }
    }

    else if (v18)
    {

      v22 = v126;
      v23 = v126[7] + 168 * v14;
      *(v23 + 128) = v135;
      *(v23 + 144) = *v136;
      *(v23 + 160) = *&v136[16];
      *(v23 + 64) = v131;
      *(v23 + 80) = v132;
      *(v23 + 96) = v133;
      *(v23 + 112) = v134;
      *v23 = v127;
      *(v23 + 16) = v128;
      *(v23 + 32) = v129;
      *(v23 + 48) = v130;
    }

    else
    {
      v22 = v126;
      v126[(v14 >> 6) + 8] |= 1 << v14;
      v24 = (v126[6] + 16 * v14);
      *v24 = v94;
      v24[1] = v7;
      v25 = v126[7] + 168 * v14;
      *v25 = v127;
      *(v25 + 16) = v128;
      *(v25 + 64) = v131;
      *(v25 + 80) = v132;
      *(v25 + 32) = v129;
      *(v25 + 48) = v130;
      *(v25 + 160) = *&v136[16];
      *(v25 + 128) = v135;
      *(v25 + 144) = *v136;
      *(v25 + 96) = v133;
      *(v25 + 112) = v134;
      v26 = v126[2];
      v27 = __OFADD__(v26, 1);
      v28 = v26 + 1;
      if (v27)
      {
        goto LABEL_89;
      }

      v126[2] = v28;
    }

    v1 = v95;
    v95[12] = v22;
    swift_endAccess();

    if (v21)
    {
      goto LABEL_26;
    }

    if (v89 == v101)
    {

      goto LABEL_28;
    }

    v96 = v96 & 0xFFFFFFFF00000000 | v9;
    v4 = v101 + 1;
    v5 = v98 + 2;
    if ((v101 + 1) >= *(v91 + 16))
    {
      goto LABEL_25;
    }
  }

  sub_21A3E3828(v17, v11);
  v19 = sub_21A3DCA2C(v94, v7);
  if ((v18 & 1) == (v20 & 1))
  {
    v14 = v19;
    if (v18)
    {
      goto LABEL_11;
    }

    goto LABEL_13;
  }

LABEL_96:
  sub_21A451A94();
  __break(1u);
}

uint64_t sub_21A41DA94(uint64_t result, void *a2, uint64_t *a3)
{
  v98 = *MEMORY[0x277D85DE8];
  v61 = *(result + 16);
  if (!v61)
  {
LABEL_52:
    v59 = *MEMORY[0x277D85DE8];
    return result;
  }

  v97 = 0;
  v60 = result + 32;
  memset(v96, 0, sizeof(v96));
  swift_beginAccess();
  v4 = 0;
  v5 = 0;
  v67 = a2;
  while (1)
  {
    v6 = (v60 + 16 * v4);
    v8 = *v6;
    v7 = v6[1];

    v9 = *a2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v84 = *a2;
    sub_21A4035A8(v96, v8, v7, isUniquelyReferenced_nonNull_native);
    *a2 = v84;
    v11 = *(v62 + 24);
    v12 = *(v62 + 32);
    v13 = sub_21A414C78();
    v17 = v15;
    v18 = v16;
    v19 = v16 >> 1;
    v20 = (v16 >> 1) - v15;
    v65 = v4;
    v66 = v13;
    v63 = v14;
    if (v16 >> 1 == v15)
    {
      v21 = 1;
      goto LABEL_13;
    }

    if ((v16 >> 1) <= v15)
    {
      goto LABEL_60;
    }

    v22 = (v14 + 8 * v15);
    v21 = 1;
    do
    {
      v23 = *v22++;
      v24 = v21 * v23;
      if ((v21 * v23) >> 64 != (v21 * v23) >> 63)
      {
        __break(1u);
LABEL_54:
        __break(1u);
LABEL_55:
        __break(1u);
        goto LABEL_56;
      }

      v21 = v24;
      --v20;
    }

    while (v20);
    if (v24 < 0)
    {
      goto LABEL_54;
    }

    if (v24)
    {
LABEL_13:

      v25 = sub_21A451344();
      *(v25 + 16) = v21;
      bzero((v25 + 32), 4 * v21);
    }

    else
    {

      v25 = MEMORY[0x277D84F90];
    }

    v26 = *a3;
    v27 = swift_isUniquelyReferenced_nonNull_native();
    *&v84 = *a3;
    sub_21A4032A0(v25, v8, v7, v27);

    *a3 = v84;
    v28 = swift_isUniquelyReferenced_nonNull_native();
    *&v84 = *a3;
    v29 = v84;
    v31 = sub_21A3DCA2C(v8, v7);
    v32 = *(v29 + 16);
    v33 = (v30 & 1) == 0;
    v34 = v32 + v33;
    if (__OFADD__(v32, v33))
    {
      goto LABEL_55;
    }

    v35 = v30;
    if (*(v29 + 24) >= v34)
    {
      if (v28)
      {
        if ((v30 & 1) == 0)
        {
          goto LABEL_56;
        }

        goto LABEL_21;
      }

      sub_21A3E4280();
      if (v35)
      {
        goto LABEL_21;
      }

LABEL_56:
      __break(1u);
LABEL_57:
      __break(1u);
LABEL_58:
      __break(1u);
LABEL_59:
      __break(1u);
LABEL_60:
      __break(1u);
LABEL_61:
      __break(1u);
    }

    sub_21A3E32BC(v34, v28);
    v36 = sub_21A3DCA2C(v8, v7);
    if ((v35 & 1) != (v37 & 1))
    {
      goto LABEL_62;
    }

    v31 = v36;
    if ((v35 & 1) == 0)
    {
      goto LABEL_56;
    }

LABEL_21:
    v38 = v84;
    v39 = *(*(v84 + 56) + 8 * v31);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v39 = sub_21A410F90(v39);
    }

    v40 = *(v39 + 2);
    if (v40 >> 61)
    {
      goto LABEL_57;
    }

    sub_21A41E140((v39 + 32), &v39[4 * v40 + 32], v67, v8, v7);
    *(*(v38 + 56) + 8 * v31) = v39;
    *a3 = v38;
    v41 = v19 - v17;
    v64 = v5;
    if (__OFSUB__(v19, v17))
    {
      goto LABEL_58;
    }

    if ((v18 & 1) == 0)
    {
      v42 = v66;
      swift_unknownObjectRetain();
      goto LABEL_27;
    }

    sub_21A451A34();
    v42 = v66;
    swift_unknownObjectRetain_n();
    v43 = swift_dynamicCastClass();
    if (!v43)
    {
      swift_unknownObjectRelease();
      v43 = MEMORY[0x277D84F90];
    }

    v44 = *(v43 + 16);

    if (v44 == v41)
    {
      v45 = swift_dynamicCastClass();
      swift_unknownObjectRelease();
      a2 = v67;
      if (!v45)
      {
        goto LABEL_32;
      }
    }

    else
    {
      swift_unknownObjectRelease();
LABEL_27:
      a2 = v67;
      sub_21A41F920(v42, v63, v17, v18);
LABEL_32:
      swift_unknownObjectRelease();
    }

    v46 = *a2;
    v47 = swift_isUniquelyReferenced_nonNull_native();
    v48 = *a2;
    v69 = *a2;
    v50 = sub_21A3DCA2C(v8, v7);
    v51 = *(v48 + 16);
    v52 = (v49 & 1) == 0;
    v53 = v51 + v52;
    if (__OFADD__(v51, v52))
    {
      goto LABEL_59;
    }

    v54 = v49;
    if (*(v48 + 24) < v53)
    {
      break;
    }

    if ((v47 & 1) == 0)
    {
      sub_21A3E4570();
    }

LABEL_39:
    if (v54)
    {
      memmove(__dst, (v69[7] + 168 * v50), 0xA8uLL);
      sub_21A419F0C(__dst);
    }

    else
    {
      sub_21A419E74(__dst);
    }

    v92 = __dst[8];
    v93[0] = v83[0];
    *(v93 + 9) = *(v83 + 9);
    v88 = __dst[4];
    v89 = __dst[5];
    v90 = __dst[6];
    v91 = __dst[7];
    v84 = __dst[0];
    v85 = __dst[1];
    v86 = __dst[2];
    v87 = __dst[3];
    v83[0] = v93[0];
    *(v83 + 9) = *(v93 + 9);
    if (sub_21A419E9C(__dst) == 1)
    {
      goto LABEL_61;
    }

    espresso_buffer_pack_tensor_shape();
    v78 = v92;
    *v79 = v93[0];
    *&v79[9] = *(v93 + 9);
    v74 = v88;
    v75 = v89;
    v76 = v90;
    v77 = v91;
    v70 = v84;
    v71 = v85;
    v72 = v86;
    v73 = v87;
    v80[8] = v92;
    v81[0] = v93[0];
    *(v81 + 9) = *(v93 + 9);
    v80[4] = v88;
    v80[5] = v89;
    v80[6] = v90;
    v80[7] = v91;
    v80[0] = v84;
    v80[1] = v85;
    v80[2] = v86;
    v80[3] = v87;
    if (sub_21A419E9C(v80) == 1)
    {

      v57 = v65;
      if (v54)
      {
        sub_21A419EB8(v69[6] + 16 * v50);
        sub_21A419290(v50, v69);
      }
    }

    else
    {
      v94[8] = v78;
      v94[9] = *v79;
      v95 = *&v79[16];
      v94[4] = v74;
      v94[5] = v75;
      v94[6] = v76;
      v94[7] = v77;
      v94[0] = v70;
      v94[1] = v71;
      v94[2] = v72;
      v94[3] = v73;
      v57 = v65;
      if (v54)
      {

        v58 = v69[7] + 168 * v50;
        *(v58 + 128) = v78;
        *(v58 + 144) = *v79;
        *(v58 + 160) = *&v79[16];
        *(v58 + 64) = v74;
        *(v58 + 80) = v75;
        *(v58 + 96) = v76;
        *(v58 + 112) = v77;
        *v58 = v70;
        *(v58 + 16) = v71;
        *(v58 + 32) = v72;
        *(v58 + 48) = v73;
      }

      else
      {
        sub_21A419540(v50, v8, v7, v94, v69);
      }
    }

    v4 = v57 + 1;
    swift_unknownObjectRelease();
    *a2 = v69;

    v5 = v64;
    if (v4 == v61)
    {
      goto LABEL_52;
    }
  }

  sub_21A3E3828(v53, v47);
  v55 = sub_21A3DCA2C(v8, v7);
  if ((v54 & 1) == (v56 & 1))
  {
    v50 = v55;
    goto LABEL_39;
  }

LABEL_62:
  result = sub_21A451A94();
  __break(1u);
  return result;
}

uint64_t sub_21A41E140(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  if (!a1)
  {
    __break(1u);
    goto LABEL_22;
  }

  v10 = *a3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v63 = *a3;
  v12 = v63;
  *a3 = 0x8000000000000000;
  v14 = sub_21A3DCA2C(a4, a5);
  v15 = v12[2];
  v16 = (v13 & 1) == 0;
  v17 = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
LABEL_11:
    sub_21A3E4570();
    if (v5)
    {
      goto LABEL_9;
    }

    goto LABEL_12;
  }

  v5 = v13;
  if (v12[3] < v17)
  {
    sub_21A3E3828(v17, isUniquelyReferenced_nonNull_native);
    v18 = sub_21A3DCA2C(a4, a5);
    if ((v5 & 1) != (v19 & 1))
    {
LABEL_23:
      result = sub_21A451A94();
      __break(1u);
      return result;
    }

    v14 = v18;
    if ((v5 & 1) == 0)
    {
      goto LABEL_12;
    }

LABEL_9:
    memmove(&__dst, (v63[7] + 168 * v14), 0xA8uLL);
    sub_21A419F0C(&__dst);
    goto LABEL_13;
  }

  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    goto LABEL_11;
  }

  if (v13)
  {
    goto LABEL_9;
  }

LABEL_12:
  sub_21A419E74(&__dst);
LABEL_13:
  v60 = v49;
  v61 = v50;
  v62 = v51;
  v56 = v45;
  v57 = v46;
  v58 = v47;
  v59 = v48;
  v52 = v41;
  v53 = v42;
  v54 = v43;
  v55 = v44;
  if (sub_21A419E9C(&__dst) == 1)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v36 = v59;
  v37 = v60;
  v38 = v61;
  v32 = v55;
  v33 = v56;
  v34 = v57;
  v35 = v58;
  v29 = v52;
  v30 = v53;
  v39 = v62;
  v31 = v54;
  v28 = a1;
  result = sub_21A419E9C(&v28);
  if (result == 1)
  {
    v21 = v63;
    if (v5)
    {
      sub_21A419EB8(v63[6] + 16 * v14);
      result = sub_21A419290(v14, v21);
    }
  }

  else
  {
    *&v64[104] = v58;
    *&v64[120] = v59;
    *&v64[136] = v60;
    *&v64[152] = v61;
    *&v64[40] = v54;
    *&v64[56] = v55;
    *&v64[72] = v56;
    *&v64[88] = v57;
    *&v64[8] = v52;
    *v64 = a1;
    *&v64[24] = v53;
    v21 = v63;
    if (v5)
    {
      v22 = v63[7] + 168 * v14;
      v23 = *&v64[144];
      *(v22 + 128) = *&v64[128];
      *(v22 + 144) = v23;
      *(v22 + 160) = *&v64[160];
      v24 = *&v64[80];
      *(v22 + 64) = *&v64[64];
      *(v22 + 80) = v24;
      v25 = *&v64[112];
      *(v22 + 96) = *&v64[96];
      *(v22 + 112) = v25;
      v26 = *&v64[16];
      *v22 = *v64;
      *(v22 + 16) = v26;
      v27 = *&v64[48];
      *(v22 + 32) = *&v64[32];
      *(v22 + 48) = v27;
    }

    else
    {
      sub_21A419540(v14, a4, a5, v64, v63);
    }
  }

  *a3 = v21;
  return result;
}

uint64_t sub_21A41E464(uint64_t result, void *a2)
{
  v118 = *MEMORY[0x277D85DE8];
  v3 = *(result + 16);
  if (!v3)
  {
LABEL_50:
    v72 = *MEMORY[0x277D85DE8];
    return result;
  }

  v4 = v2;
  v6 = result;
  v117 = 0;
  v115 = 0u;
  v116 = 0u;
  v113 = 0u;
  v114 = 0u;
  v111 = 0u;
  v112 = 0u;
  v109 = 0u;
  v110 = 0u;
  v107 = 0u;
  v108 = 0u;
  swift_beginAccess();
  v7 = (v6 + 40);
  v73 = v4;
  v76 = a2;
  while (1)
  {
    v9 = *(v7 - 1);
    v10 = *v7;
    v75 = v7;

    v11 = *a2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v97 = *a2;
    v13 = v97;
    v77 = v9;
    v14 = sub_21A3DCA2C(v9, v10);
    v16 = *(v13 + 16);
    v17 = (v15 & 1) == 0;
    v18 = __OFADD__(v16, v17);
    v19 = v16 + v17;
    if (v18)
    {
      __break(1u);
LABEL_52:
      __break(1u);
LABEL_53:
      __break(1u);
LABEL_54:
      __break(1u);
LABEL_55:
      __break(1u);
LABEL_56:
      __break(1u);
LABEL_57:
      swift_unknownObjectRelease();
      __break(1u);
    }

    v20 = v15;
    if (*(v13 + 24) >= v19)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v71 = v14;
        sub_21A3E4570();
        v14 = v71;
      }
    }

    else
    {
      sub_21A3E3828(v19, isUniquelyReferenced_nonNull_native);
      v14 = sub_21A3DCA2C(v77, v10);
      if ((v20 & 1) != (v21 & 1))
      {
        goto LABEL_58;
      }
    }

    v22 = v97;
    v74 = v3;
    if (v20)
    {
      v23 = *(v97 + 56) + 168 * v14;
      v24 = v116;
      *(v23 + 128) = v115;
      *(v23 + 144) = v24;
      *(v23 + 160) = v117;
      v25 = v112;
      *(v23 + 64) = v111;
      *(v23 + 80) = v25;
      v26 = v114;
      *(v23 + 96) = v113;
      *(v23 + 112) = v26;
      v27 = v108;
      *v23 = v107;
      *(v23 + 16) = v27;
      v28 = v110;
      *(v23 + 32) = v109;
      *(v23 + 48) = v28;
    }

    else
    {
      *(v97 + 8 * (v14 >> 6) + 64) |= 1 << v14;
      v29 = (v22[6] + 16 * v14);
      *v29 = v77;
      v29[1] = v10;
      v30 = v22[7] + 168 * v14;
      v31 = v112;
      *(v30 + 64) = v111;
      *(v30 + 80) = v31;
      *(v30 + 160) = v117;
      v32 = v116;
      *(v30 + 128) = v115;
      *(v30 + 144) = v32;
      v33 = v114;
      *(v30 + 96) = v113;
      *(v30 + 112) = v33;
      v34 = v108;
      *v30 = v107;
      *(v30 + 16) = v34;
      v35 = v110;
      *(v30 + 32) = v109;
      *(v30 + 48) = v35;
      v36 = v22[2];
      v18 = __OFADD__(v36, 1);
      v37 = v36 + 1;
      if (v18)
      {
        goto LABEL_54;
      }

      v22[2] = v37;
    }

    *a2 = v22;
    v38 = *(v4 + 24);
    v39 = *(v4 + 32);
    sub_21A414C78();
    v43 = v42 >> 1;
    v44 = (v42 >> 1) - v41;
    if (__OFSUB__(v42 >> 1, v41))
    {
      goto LABEL_52;
    }

    v45 = v40;
    v46 = v41;
    if (v42)
    {
      sub_21A451A34();
      swift_unknownObjectRetain_n();
      v52 = swift_dynamicCastClass();
      if (!v52)
      {
        swift_unknownObjectRelease();
        v52 = MEMORY[0x277D84F90];
      }

      v53 = *(v52 + 16);

      if (v53 == v44)
      {
        v54 = swift_dynamicCastClass();
        swift_unknownObjectRelease();
        v4 = v73;
        if (v54)
        {
          goto LABEL_32;
        }

        goto LABEL_31;
      }

      swift_unknownObjectRelease();
      v4 = v73;
      if (v44)
      {
LABEL_19:
        if (v44 < 1)
        {
          v51 = MEMORY[0x277D84F90];
          if (v46 == v43)
          {
            goto LABEL_57;
          }
        }

        else
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD28678, &qword_21A456A10);
          v47 = v4;
          v48 = swift_allocObject();
          v49 = _swift_stdlib_malloc_size(v48);
          v50 = v49 - 32;
          if (v49 < 32)
          {
            v50 = v49 - 25;
          }

          v48[2] = v44;
          v48[3] = 2 * (v50 >> 3);
          v51 = v48;
          v4 = v47;
          if (v46 == v43)
          {
            goto LABEL_57;
          }
        }

        memcpy(v51 + 4, (v45 + 8 * v46), 8 * v44);
      }
    }

    else
    {
      swift_unknownObjectRetain();
      if (v44)
      {
        goto LABEL_19;
      }
    }

LABEL_31:
    swift_unknownObjectRelease();
LABEL_32:
    v55 = *v76;
    v56 = swift_isUniquelyReferenced_nonNull_native();
    v57 = *v76;
    v59 = sub_21A3DCA2C(v77, v10);
    v60 = v57[2];
    v61 = (v58 & 1) == 0;
    v62 = v60 + v61;
    if (__OFADD__(v60, v61))
    {
      goto LABEL_53;
    }

    v63 = v58;
    if (v57[3] < v62)
    {
      break;
    }

    if ((v56 & 1) == 0)
    {
      sub_21A3E4570();
    }

LABEL_38:
    if (v63)
    {
      memmove(__dst, (v57[7] + 168 * v59), 0xA8uLL);
      sub_21A419F0C(__dst);
      v104 = v94;
      v105 = v95;
      v106[0] = v96[0];
      *(v106 + 9) = *(v96 + 9);
      v101 = v91;
      v102 = v92;
      v103 = v93;
    }

    else
    {
      sub_21A419E74(__dst);
      v105 = v95;
      v106[0] = v96[0];
      *(v106 + 9) = *(v96 + 9);
      v101 = v91;
      v102 = v92;
      v103 = v93;
      v104 = v94;
    }

    v97 = __dst[0];
    v98 = __dst[1];
    v99 = __dst[2];
    v100 = __dst[3];
    v95 = v105;
    v96[0] = v106[0];
    *(v96 + 9) = *(v106 + 9);
    v91 = v101;
    v92 = v102;
    v93 = v103;
    v94 = v104;
    if (sub_21A419E9C(__dst) == 1)
    {
      goto LABEL_56;
    }

    espresso_buffer_pack_tensor_shape();
    v86 = v105;
    *v87 = v106[0];
    *&v87[9] = *(v106 + 9);
    v82 = v101;
    v83 = v102;
    v84 = v103;
    v85 = v104;
    v78 = v97;
    v79 = v98;
    v80 = v99;
    v81 = v100;
    v88[7] = v104;
    v88[8] = v105;
    v89[0] = v106[0];
    *(v89 + 9) = *(v106 + 9);
    v88[4] = v101;
    v88[5] = v102;
    v88[6] = v103;
    v88[0] = v97;
    v88[1] = v98;
    v88[2] = v99;
    v88[3] = v100;
    if (sub_21A419E9C(v88) == 1)
    {

      v66 = v74;
      if (v63)
      {
        sub_21A419EB8(v57[6] + 16 * v59);
        sub_21A419290(v59, v57);
      }

      goto LABEL_4;
    }

    v66 = v74;
    if (v63)
    {

      v8 = v57[7] + 168 * v59;
      *(v8 + 128) = v86;
      *(v8 + 144) = *v87;
      *(v8 + 160) = *&v87[16];
      *(v8 + 64) = v82;
      *(v8 + 80) = v83;
      *(v8 + 96) = v84;
      *(v8 + 112) = v85;
      *v8 = v78;
      *(v8 + 16) = v79;
      *(v8 + 32) = v80;
      *(v8 + 48) = v81;
LABEL_4:
      swift_unknownObjectRelease();
      goto LABEL_5;
    }

    v57[(v59 >> 6) + 8] |= 1 << v59;
    v67 = (v57[6] + 16 * v59);
    *v67 = v77;
    v67[1] = v10;
    v68 = v57[7] + 168 * v59;
    *v68 = v78;
    *(v68 + 16) = v79;
    *(v68 + 64) = v82;
    *(v68 + 80) = v83;
    *(v68 + 32) = v80;
    *(v68 + 48) = v81;
    *(v68 + 160) = *&v87[16];
    *(v68 + 128) = v86;
    *(v68 + 144) = *v87;
    *(v68 + 96) = v84;
    *(v68 + 112) = v85;
    swift_unknownObjectRelease();
    v69 = v57[2];
    v18 = __OFADD__(v69, 1);
    v70 = v69 + 1;
    if (v18)
    {
      goto LABEL_55;
    }

    v57[2] = v70;
LABEL_5:
    a2 = v76;
    *v76 = v57;

    v7 = v75 + 2;
    v3 = v66 - 1;
    if (!v3)
    {
      goto LABEL_50;
    }
  }

  sub_21A3E3828(v62, v56);
  v64 = sub_21A3DCA2C(v77, v10);
  if ((v63 & 1) == (v65 & 1))
  {
    v59 = v64;
    goto LABEL_38;
  }

LABEL_58:
  result = sub_21A451A94();
  __break(1u);
  return result;
}

uint64_t sub_21A41EB58(uint64_t result, void *a2)
{
  v81 = *MEMORY[0x277D85DE8];
  if (!*(result + 16))
  {
LABEL_44:
    v45 = *MEMORY[0x277D85DE8];
    return result;
  }

  v3 = result;
  v49 = *(result + 16);
  swift_beginAccess();
  v4 = *(v3 + 32);
  v5 = *(v3 + 40);
  v6 = *(v47 + 24);
  v7 = *(v47 + 32);

  v50 = v4;
  sub_21A414C78();
  v11 = v10 >> 1;
  v12 = (v10 >> 1) - v9;
  if (__OFSUB__(v10 >> 1, v9))
  {
LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
LABEL_47:
    __break(1u);
LABEL_48:
    __break(1u);
LABEL_49:
    swift_unknownObjectRelease();
    __break(1u);
  }

  v13 = v8;
  v14 = v9;
  v15 = (v3 + 56);
  v46 = a2;
  while (1)
  {
    v48 = v15;
    if (v10)
    {
      sub_21A451A34();
      swift_unknownObjectRetain_n();
      v20 = swift_dynamicCastClass();
      if (!v20)
      {
        swift_unknownObjectRelease();
        v20 = MEMORY[0x277D84F90];
      }

      v21 = *(v20 + 16);

      if (v21 == v12)
      {
        v22 = swift_dynamicCastClass();
        swift_unknownObjectRelease();
        a2 = v46;
        if (v22)
        {
          goto LABEL_19;
        }

        goto LABEL_18;
      }

      swift_unknownObjectRelease();
      a2 = v46;
      if (v12)
      {
LABEL_6:
        if (v12 < 1)
        {
          v19 = MEMORY[0x277D84F90];
          if (v14 == v11)
          {
            goto LABEL_49;
          }
        }

        else
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD28678, &qword_21A456A10);
          v16 = swift_allocObject();
          v17 = _swift_stdlib_malloc_size(v16);
          v18 = v17 - 32;
          if (v17 < 32)
          {
            v18 = v17 - 25;
          }

          v16[2] = v12;
          v16[3] = 2 * (v18 >> 3);
          v19 = v16;
          if (v14 == v11)
          {
            goto LABEL_49;
          }
        }

        memcpy(v19 + 4, (v13 + 8 * v14), 8 * v12);
      }
    }

    else
    {
      swift_unknownObjectRetain();
      if (v12)
      {
        goto LABEL_6;
      }
    }

LABEL_18:
    swift_unknownObjectRelease();
LABEL_19:
    v23 = *a2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v25 = *a2;
    v51 = *a2;
    v27 = sub_21A3DCA2C(v50, v5);
    v28 = *(v25 + 16);
    v29 = (v26 & 1) == 0;
    v30 = v28 + v29;
    if (__OFADD__(v28, v29))
    {
      goto LABEL_46;
    }

    v31 = v26;
    if (*(v25 + 24) < v30)
    {
      break;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      if ((v26 & 1) == 0)
      {
        goto LABEL_23;
      }
    }

    else
    {
      sub_21A3E4570();
      if ((v31 & 1) == 0)
      {
LABEL_23:
        sub_21A419E74(__dst);
        v79 = v69;
        v80[0] = v70[0];
        *(v80 + 9) = *(v70 + 9);
        v75 = v65;
        v76 = v66;
        v77 = v67;
        v78 = v68;
        goto LABEL_27;
      }
    }

LABEL_26:
    memmove(__dst, (v51[7] + 168 * v27), 0xA8uLL);
    sub_21A419F0C(__dst);
    v78 = v68;
    v79 = v69;
    v80[0] = v70[0];
    *(v80 + 9) = *(v70 + 9);
    v75 = v65;
    v76 = v66;
    v77 = v67;
LABEL_27:
    v71 = __dst[0];
    v72 = __dst[1];
    v73 = __dst[2];
    v74 = __dst[3];
    v69 = v79;
    v70[0] = v80[0];
    *(v70 + 9) = *(v80 + 9);
    v65 = v75;
    v66 = v76;
    v67 = v77;
    v68 = v78;
    if (sub_21A419E9C(__dst) == 1)
    {
      goto LABEL_48;
    }

    espresso_buffer_pack_tensor_shape();
    v60 = v79;
    *v61 = v80[0];
    *&v61[9] = *(v80 + 9);
    v56 = v75;
    v57 = v76;
    v58 = v77;
    v59 = v78;
    v52 = v71;
    v53 = v72;
    v54 = v73;
    v55 = v74;
    v62[7] = v78;
    v62[8] = v79;
    v63[0] = v80[0];
    *(v63 + 9) = *(v80 + 9);
    v62[4] = v75;
    v62[5] = v76;
    v62[6] = v77;
    v62[0] = v71;
    v62[1] = v72;
    v62[2] = v73;
    v62[3] = v74;
    if (sub_21A419E9C(v62) == 1)
    {

      if (v31)
      {
        sub_21A419EB8(v51[6] + 16 * v27);
        sub_21A419290(v27, v51);
      }
    }

    else
    {
      if ((v31 & 1) == 0)
      {
        v51[(v27 >> 6) + 8] |= 1 << v27;
        v35 = (v51[6] + 16 * v27);
        *v35 = v50;
        v35[1] = v5;
        v36 = v51[7] + 168 * v27;
        *v36 = v52;
        *(v36 + 16) = v53;
        *(v36 + 64) = v56;
        *(v36 + 80) = v57;
        *(v36 + 32) = v54;
        *(v36 + 48) = v55;
        *(v36 + 160) = *&v61[16];
        *(v36 + 128) = v60;
        *(v36 + 144) = *v61;
        *(v36 + 96) = v58;
        *(v36 + 112) = v59;
        swift_unknownObjectRelease();
        v37 = v51[2];
        v38 = __OFADD__(v37, 1);
        v39 = v37 + 1;
        if (v38)
        {
          goto LABEL_47;
        }

        v51[2] = v39;
        goto LABEL_36;
      }

      v34 = v51[7] + 168 * v27;
      *(v34 + 128) = v60;
      *(v34 + 144) = *v61;
      *(v34 + 160) = *&v61[16];
      *(v34 + 64) = v56;
      *(v34 + 80) = v57;
      *(v34 + 96) = v58;
      *(v34 + 112) = v59;
      *v34 = v52;
      *(v34 + 16) = v53;
      *(v34 + 32) = v54;
      *(v34 + 48) = v55;
    }

    swift_unknownObjectRelease();
LABEL_36:
    *a2 = v51;

    if (v49 == 1)
    {
      goto LABEL_44;
    }

    --v49;
    v15 = v48 + 2;
    v40 = *(v48 - 1);
    v5 = *v48;
    v41 = *(v47 + 24);
    v42 = *(v47 + 32);

    v50 = v40;
    sub_21A414C78();
    v13 = v43;
    v14 = v44;
    v11 = v10 >> 1;
    v12 = (v10 >> 1) - v44;
    if (__OFSUB__(v10 >> 1, v44))
    {
      goto LABEL_45;
    }
  }

  sub_21A3E3828(v30, isUniquelyReferenced_nonNull_native);
  v32 = sub_21A3DCA2C(v50, v5);
  if ((v31 & 1) == (v33 & 1))
  {
    v27 = v32;
    if ((v31 & 1) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_26;
  }

  result = sub_21A451A94();
  __break(1u);
  return result;
}

uint64_t sub_21A41F11C(uint64_t result)
{
  if (*(*(v1 + 480) + 16) >> 60)
  {
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
    return result;
  }

  v2 = result;
  v3 = swift_slowAlloc();
  v4 = v3;
  v5 = *(v1 + 480);
  v6 = *(v5 + 16);
  v7 = MEMORY[0x277D84F90];
  v38 = v1;
  if (v6)
  {
    v35 = v2;
    v37 = v3;
    v41 = MEMORY[0x277D84F90];

    result = sub_21A3E48FC(0, v6, 0);
    v8 = 0;
    v7 = v41;
    v9 = (v5 + 40);
    while (1)
    {
      if (v8 >= *(v5 + 16))
      {
        __break(1u);
        goto LABEL_43;
      }

      v10 = *v9;
      if ((*v9 & 0x1000000000000000) != 0)
      {
        break;
      }

      if ((v10 & 0x2000000000000000) != 0)
      {
        *__s1 = *(v9 - 1);
        v40 = v10 & 0xFFFFFFFFFFFFFFLL;

        v12 = __s1;
      }

      else
      {
        if ((*(v9 - 1) & 0x1000000000000000) == 0)
        {
          break;
        }

        v11 = *v9;

        v12 = ((v10 & 0xFFFFFFFFFFFFFFFLL) + 32);
      }

      result = strdup(v12);
      v13 = result;
      if (!result)
      {
        goto LABEL_45;
      }

LABEL_11:

      v41 = v7;
      v15 = v7[2];
      v14 = v7[3];
      if (v15 >= v14 >> 1)
      {
        result = sub_21A3E48FC((v14 > 1), v15 + 1, 1);
        v7 = v41;
      }

      ++v8;
      v7[2] = v15 + 1;
      v7[v15 + 4] = v13;
      v9 += 2;
      if (v6 == v8)
      {

        v4 = v37;
        v17 = 8 * *(*(v1 + 480) + 16);
        v2 = v35;
        goto LABEL_18;
      }
    }

    v16 = *v9;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD288C0, &unk_21A4570D0);
    result = sub_21A451724();
    v13 = *__s1;
    if (!*__s1)
    {
      goto LABEL_45;
    }

    goto LABEL_11;
  }

  v17 = 0;
LABEL_18:
  memcpy(v4, v7 + 4, v17);

  result = swift_beginAccess();
  if (*(*(v1 + 480) + 16) >> 31)
  {
    goto LABEL_44;
  }

  v36 = *(v1 + 24);
  v34 = *(v1 + 32);
  v18 = *v2;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v18 = sub_21A408BB4(0, *(v18 + 2), 0, v18);
  }

  *v2 = v18;
  v19 = v2[1];

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v19 = sub_21A408BB4(0, *(v19 + 2), 0, v19);
  }

  v2[1] = v19;
  v20 = v2[2];

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v20 = sub_21A408BB4(0, *(v20 + 2), 0, v20);
  }

  v2[2] = v20;
  v21 = v2[3];

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v21 = sub_21A408BB4(0, *(v21 + 2), 0, v21);
  }

  v2[3] = v21;
  v22 = v2[4];

  v23 = v4;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v22 = sub_21A408BB4(0, *(v22 + 2), 0, v22);
  }

  v2[4] = v22;
  v24 = v2;
  v25 = v2[5];

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v25 = sub_21A408BB4(0, *(v25 + 2), 0, v25);
  }

  v24[5] = v25;
  v26 = espresso_network_change_input_blob_shapes_seq_rank();

  if (v26)
  {
    v27 = 1;
LABEL_40:
    sub_21A3DCAA4();
    swift_allocError();
    *v33 = v27;
    return swift_willThrow();
  }

  v28 = *(*(v38 + 480) + 16);
  if (v28)
  {
    v29 = v23;
    do
    {
      v31 = *v29++;
      v30 = v31;
      if (v31)
      {
        MEMORY[0x21CEDB220](v30, -1, -1);
      }

      --v28;
    }

    while (v28);
  }

  MEMORY[0x21CEDB220](v23, -1, -1);
  v32 = *(v38 + 48);
  result = espresso_plan_build();
  if (result)
  {
    v27 = 9;
    goto LABEL_40;
  }

  return result;
}

uint64_t sub_21A41F58C(uint64_t a1)
{
  *(v1 + 80) = a1;
  sub_21A41C7E4(v11);
  v12[0] = v11[0];
  v12[1] = v11[1];
  v12[2] = v11[2];
  v12[3] = v11[3];
  v12[4] = v11[4];
  v12[5] = v11[5];
  v3 = *(v1 + 48);
  if (espresso_plan_build_clean())
  {

    sub_21A3DCAA4();
    swift_allocError();
    *v4 = 22;
    return swift_willThrow();
  }

  else
  {
    sub_21A41F11C(v12);
    if (v2)
    {
      goto LABEL_7;
    }

    v6 = *(v1 + 480);
    swift_beginAccess();

    sub_21A41EB58(v7, (v1 + 96));
    swift_endAccess();

    v8 = *(v1 + 488);
    swift_beginAccess();

    sub_21A41EB58(v9, (v1 + 112));
    swift_endAccess();

    sub_21A41CC80();
    if (*(v1 + 136) != 1)
    {
LABEL_7:
    }

    else
    {
      result = swift_beginAccess();
      v10 = *(v1 + 312);
      if (v10)
      {

        *v10 = *(v1 + 88);
        return sub_21A41C718();
      }

      else
      {
        __break(1u);
      }
    }
  }

  return result;
}

uint64_t sub_21A41F79C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  type metadata accessor for EspressoEIRTrainer();
  swift_allocObject();
  v4 = sub_21A41FAA8(a1);

  *a2 = v4;
  return result;
}

uint64_t sub_21A41F818(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *v4;
  v8 = 1;
  result = sub_21A41B32C(a1, a2, &v8, a3, a4, MEMORY[0x277D84F90]);
  if (!v5)
  {
    *(v6 + 136) = 0;
  }

  return result;
}

void sub_21A41F920(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_11:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      v8 = MEMORY[0x277D84F90];
      if (v4 != a3)
      {
LABEL_7:
        memcpy(v8 + 4, (a2 + 8 * a3), 8 * v5);
        return;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD28678, &qword_21A456A10);
      v8 = swift_allocObject();
      v9 = _swift_stdlib_malloc_size(v8);
      v10 = v9 - 32;
      if (v9 < 32)
      {
        v10 = v9 - 25;
      }

      v8[2] = v5;
      v8[3] = 2 * (v10 >> 3);
      if (v4 != a3)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
    goto LABEL_11;
  }
}

char *sub_21A41F9F0(char *result, uint64_t a2, unint64_t a3)
{
  v3 = a3 >> 1;
  v4 = (a3 >> 1) - a2;
  if (__OFSUB__(a3 >> 1, a2))
  {
    __break(1u);
    goto LABEL_9;
  }

  v6 = result;
  result = sub_21A44FB28((a3 >> 1) - a2, (a3 >> 1) - a2);
  if (v3 < a2)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v7 = result;
  result = memcpy(result + 32, &v6[8 * a2], 8 * v4);
  if (__OFSUB__(0, a2))
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v8 = *(v7 + 2);
  v9 = __OFADD__(a2, v8);
  v10 = a2 + v8;
  if (v9)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if (v10 < a2)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if ((v10 & 0x8000000000000000) == 0)
  {
    return v7;
  }

LABEL_13:
  __break(1u);
  return result;
}

uint64_t sub_21A41FAA8(uint64_t a1)
{
  *(v1 + 56) = 0;
  *(v1 + 64) = 0xE000000000000000;
  *(v1 + 72) = 1;
  *(v1 + 88) = 0;
  v3 = MEMORY[0x277D84F90];
  *(v1 + 96) = sub_21A3E58A4(MEMORY[0x277D84F90]);
  *(v1 + 104) = sub_21A3E5690(v3);
  *(v1 + 112) = sub_21A3E58A4(v3);
  *(v1 + 120) = sub_21A3E5690(v3);
  *(v1 + 128) = sub_21A3E58A4(v3);
  *(v1 + 136) = 1;
  *(v1 + 144) = 0u;
  *(v1 + 160) = 0u;
  *(v1 + 176) = 0u;
  *(v1 + 192) = 0u;
  *(v1 + 208) = 0u;
  *(v1 + 224) = 0u;
  *(v1 + 240) = 0u;
  *(v1 + 256) = 0u;
  *(v1 + 272) = 0u;
  *(v1 + 288) = 0u;
  *(v1 + 304) = 0u;
  *(v1 + 320) = 0u;
  *(v1 + 336) = 0u;
  *(v1 + 352) = 0u;
  *(v1 + 368) = 0u;
  *(v1 + 384) = 0u;
  *(v1 + 400) = 0u;
  *(v1 + 416) = 0u;
  *(v1 + 432) = 0u;
  *(v1 + 448) = 0u;
  *(v1 + 464) = 0u;
  *(v1 + 480) = v3;
  *(v1 + 488) = v3;
  *(v1 + 496) = v3;
  *(v1 + 16) = a1;
  *(v1 + 24) = 0;
  *(v1 + 32) = 0;

  result = espresso_create_context();
  if (result)
  {
    *(v1 + 40) = result;
    result = espresso_create_plan();
    if (result)
    {
      *(v1 + 48) = result;
      *(v1 + 80) = -1;
      return v1;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_21A41FBAC(uint64_t a1, uint64_t a2, int64_t a3, int a4, unsigned __int8 *a5)
{
  v6 = v5;
  v9 = *a5;
  sub_21A3DCAA4();
  v10 = swift_allocError();
  *v11 = 18;
  if ((*(v5 + 72) & 2) == 0)
  {
    return swift_willThrow();
  }

  v84 = v9;
  v85 = a4;

  result = swift_beginAccess();
  v13 = *(v5 + 144);
  if (v13)
  {
    *v13 = 1065353216;
    v14 = a1 + 64;
    v15 = 1 << *(a1 + 32);
    v16 = -1;
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    v17 = v16 & *(a1 + 64);

    swift_beginAccess();
    swift_beginAccess();
    v18 = 0;
    v94 = (v15 + 63) >> 6;
    v96 = v5;
    v89 = a1 + 64;
    v90 = a1;
    while (v17)
    {
LABEL_12:
      if (!*(v6[12] + 16))
      {
        goto LABEL_92;
      }

      v20 = (*(a1 + 48) + ((v18 << 10) | (16 * __clz(__rbit64(v17)))));
      v22 = *v20;
      v21 = v20[1];

      sub_21A3DCA2C(v22, v21);
      v24 = v23;

      if ((v24 & 1) == 0 || !*(a2 + 16) || (v25 = sub_21A3DCA2C(v22, v21), (v26 & 1) == 0))
      {

LABEL_92:
        swift_allocError();
        v80 = 10;
        goto LABEL_96;
      }

      v27 = *(*(a2 + 56) + 8 * v25);
      v28 = *(v5 + 24);
      v29 = *(v5 + 32);
      result = sub_21A414C78();
      v33 = (v32 >> 1) - v31;
      if (v32 >> 1 == v31)
      {
        result = swift_unknownObjectRelease();
        if (v27 <= 0)
        {
LABEL_94:

LABEL_95:
          swift_allocError();
          v80 = 11;
LABEL_96:
          *v79 = v80;
          swift_willThrow();
        }

        v34 = 1;
      }

      else
      {
        if ((v32 >> 1) <= v31)
        {
          goto LABEL_124;
        }

        v35 = (v30 + 8 * v31);
        v34 = 1;
        do
        {
          v36 = *v35++;
          v37 = v34 * v36;
          if ((v34 * v36) >> 64 != (v34 * v36) >> 63)
          {
            __break(1u);
            goto LABEL_107;
          }

          v34 = v37;
          --v33;
        }

        while (v33);
        result = swift_unknownObjectRelease();
        if (v27 <= 0)
        {
          goto LABEL_94;
        }
      }

      if ((v27 * a3) >> 64 != (v27 * a3) >> 63)
      {
        goto LABEL_120;
      }

      if (!*(v90 + 16))
      {
        goto LABEL_121;
      }

      v38 = sub_21A3DCA2C(v22, v21);
      v40 = v39;

      if ((v40 & 1) == 0)
      {
        goto LABEL_122;
      }

      a1 = v90;
      v6 = v5;
      v14 = v89;
      if (v27 * a3 == *(*(*(v90 + 56) + 8 * v38) + 16))
      {
        v41 = *(v5 + 80);
        if ((v41 * v27) >> 64 != (v41 * v27) >> 63)
        {
          goto LABEL_123;
        }

        v17 &= v17 - 1;
        if (v34 == v41 * v27)
        {
          continue;
        }
      }

      goto LABEL_95;
    }

    while (1)
    {
      v19 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
LABEL_108:
        __break(1u);
      }

      if (v19 >= v94)
      {
        break;
      }

      v17 = *(v14 + 8 * v19);
      ++v18;
      if (v17)
      {
        v18 = v19;
        goto LABEL_12;
      }
    }

    result = sub_21A4113F8(0, a3, 1);
    v42 = result;
    if (!v85)
    {
    }

    v43 = 0;
    while (1)
    {
      if (v84)
      {
        v44 = *(v42 + 2);
        v45 = v44 - 2;
        if (v44 >= 2)
        {
          break;
        }
      }

LABEL_50:
      v55 = v6[10];
      if (!v55)
      {
        goto LABEL_125;
      }

      v82 = v43;
      if (a3 == 0x8000000000000000 && v55 == -1)
      {
        goto LABEL_127;
      }

      if (a3 / v55 < 0)
      {
        goto LABEL_126;
      }

      v95 = v42;
      if (a3 / v55)
      {
        v56 = 0;
        v57 = v42 + 32;
        v83 = a3 / v55;
        do
        {
          v86 = v56 + 1;
          v58 = 1 << *(a1 + 32);
          if (v58 < 64)
          {
            v59 = ~(-1 << v58);
          }

          else
          {
            v59 = -1;
          }

          v60 = v59 & *(a1 + 64);

          result = swift_beginAccess();
          v61 = 0;
          v62 = (v58 + 63) >> 6;
          v87 = v62;
          while (v60)
          {
            if (!*(a1 + 16))
            {
              goto LABEL_111;
            }

LABEL_63:
            v63 = (*(a1 + 48) + ((v61 << 10) | (16 * __clz(__rbit64(v60)))));
            v64 = *v63;
            v65 = v63[1];

            result = sub_21A3DCA2C(v64, v65);
            if ((v66 & 1) == 0)
            {
              goto LABEL_112;
            }

            v67 = v6[12];
            if (!*(v67 + 16))
            {
              goto LABEL_113;
            }

            v91 = *(*(a1 + 56) + 8 * result);

            result = sub_21A3DCA2C(v64, v65);
            if ((v68 & 1) == 0)
            {
              goto LABEL_114;
            }

            v92 = v65;
            v69 = *(*(v67 + 56) + 168 * result);

            if (!*(a2 + 16))
            {
              goto LABEL_115;
            }

            result = sub_21A3DCA2C(v64, v92);
            if ((v70 & 1) == 0)
            {
              goto LABEL_116;
            }

            v71 = v6[10];
            if (v71 < 0)
            {
              goto LABEL_117;
            }

            if (v71)
            {
              v72 = 0;
              v73 = *(*(a2 + 56) + 8 * result);
              while (1)
              {
                v74 = v96[10];
                v75 = v56 * v74;
                if ((v56 * v74) >> 64 != (v56 * v74) >> 63)
                {
                  break;
                }

                v52 = __OFADD__(v75, v72);
                v76 = v75 + v72;
                if (v52)
                {
                  goto LABEL_98;
                }

                if (v73 < 0xFFFFFFFF80000000)
                {
                  goto LABEL_99;
                }

                if (v73 > 0x7FFFFFFF)
                {
                  goto LABEL_100;
                }

                if ((v76 & 0x8000000000000000) != 0)
                {
                  goto LABEL_101;
                }

                if (v76 >= *(v95 + 2))
                {
                  goto LABEL_102;
                }

                if ((v73 * *&v57[8 * v76]) >> 64 != (v73 * *&v57[8 * v76]) >> 63)
                {
                  goto LABEL_103;
                }

                if (!v69)
                {
                  goto LABEL_128;
                }

                if ((v73 * v72) >> 64 != (v73 * v72) >> 63)
                {
                  goto LABEL_104;
                }

                ++v72;
                result = cblas_scopy_NEWLAPACK();
                if (v71 == v72)
                {
                  goto LABEL_60;
                }
              }

              __break(1u);
LABEL_98:
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
              swift_allocError();
              *v81 = 15;
              swift_willThrow();
            }

LABEL_60:
            v60 &= v60 - 1;

            v14 = v89;
            a1 = v90;
            v6 = v96;
            v62 = v87;
          }

          while (1)
          {
            v77 = v61 + 1;
            if (__OFADD__(v61, 1))
            {
LABEL_107:
              __break(1u);
              goto LABEL_108;
            }

            if (v77 >= v62)
            {
              break;
            }

            v60 = *(v14 + 8 * v77);
            ++v61;
            if (v60)
            {
              v61 = v77;
              if (*(a1 + 16))
              {
                goto LABEL_63;
              }

              goto LABEL_111;
            }
          }

          v78 = v6[6];
          result = espresso_plan_execute_sync();
          if (result)
          {
            goto LABEL_105;
          }

          ++v56;
        }

        while (v86 != v83);
      }

      v43 = v82 + 1;
      v42 = v95;
      if (v82 + 1 == v85)
      {
      }
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v42 = sub_21A410FA4(v42);
    }

    v46 = 0;
    v47 = v42 + 32;
    while (1)
    {
      v97 = 0;
      result = MEMORY[0x21CEDB240](&v97, 8);
      v50 = (v97 * v44) >> 64;
      if (v44 > v97 * v44)
      {
        v51 = -v44 % v44;
        if (v51 > v97 * v44)
        {
          do
          {
            v97 = 0;
            result = MEMORY[0x21CEDB240](&v97, 8);
          }

          while (v51 > v97 * v44);
          v50 = (v97 * v44) >> 64;
        }
      }

      v52 = __OFADD__(v46, v50);
      v53 = v46 + v50;
      if (v52)
      {
        break;
      }

      if (v46 != v53)
      {
        v54 = *(v42 + 2);
        if (v46 >= v54)
        {
          goto LABEL_118;
        }

        if (v53 >= v54)
        {
          goto LABEL_119;
        }

        v48 = *&v47[8 * v46];
        *&v47[8 * v46] = *&v47[8 * v53];
        *&v47[8 * v53] = v48;
      }

      --v44;
      if (v46++ == v45)
      {
        v14 = v89;
        goto LABEL_50;
      }
    }

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
LABEL_121:
    __break(1u);
LABEL_122:
    __break(1u);
LABEL_123:
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
  }

  __break(1u);
  return result;
}

PrivateFederatedLearning::EspressoError_optional __swiftcall EspressoError.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 0;
  v3 = 30;
  switch(rawValue)
  {
    case 9100:
      goto LABEL_46;
    case 9101:
      v2 = 1;
      goto LABEL_46;
    case 9102:
      v2 = 2;
      goto LABEL_46;
    case 9103:
      v2 = 3;
      goto LABEL_46;
    case 9104:
      v2 = 4;
      goto LABEL_46;
    case 9105:
      v2 = 5;
      goto LABEL_46;
    case 9106:
      v2 = 6;
      goto LABEL_46;
    case 9107:
      v2 = 7;
      goto LABEL_46;
    case 9108:
      v2 = 8;
      goto LABEL_46;
    case 9109:
      v2 = 9;
      goto LABEL_46;
    case 9110:
      v2 = 10;
      goto LABEL_46;
    case 9111:
      v2 = 11;
      goto LABEL_46;
    case 9112:
      v2 = 12;
      goto LABEL_46;
    case 9113:
      v2 = 13;
      goto LABEL_46;
    case 9114:
      v2 = 14;
      goto LABEL_46;
    case 9115:
      v2 = 15;
      goto LABEL_46;
    case 9116:
      v2 = 16;
      goto LABEL_46;
    case 9117:
      v2 = 17;
      goto LABEL_46;
    case 9118:
      v2 = 18;
      goto LABEL_46;
    case 9119:
      v2 = 19;
      goto LABEL_46;
    case 9120:
      v2 = 20;
      goto LABEL_46;
    case 9121:
      v2 = 21;
      goto LABEL_46;
    case 9122:
      v2 = 22;
      goto LABEL_46;
    case 9123:
      v2 = 23;
      goto LABEL_46;
    case 9124:
      v2 = 24;
      goto LABEL_46;
    case 9125:
      v2 = 25;
      goto LABEL_46;
    case 9126:
      v2 = 26;
      goto LABEL_46;
    case 9150:
      v2 = 27;
      goto LABEL_46;
    case 9151:
      v2 = 28;
      goto LABEL_46;
    case 9152:
      v2 = 29;
LABEL_46:
      v3 = v2;
      goto LABEL_47;
    case 9153:
LABEL_47:
      *v1 = v3;
      break;
    case 9154:
      *v1 = 31;
      break;
    case 9155:
      *v1 = 32;
      break;
    case 9156:
      *v1 = 33;
      break;
    case 9157:
      *v1 = 34;
      break;
    case 9158:
      *v1 = 35;
      break;
    case 9159:
      *v1 = 36;
      break;
    case 9160:
      *v1 = 37;
      break;
    case 9161:
      *v1 = 38;
      break;
    case 9162:
      *v1 = 39;
      break;
    case 9163:
      *v1 = 40;
      break;
    case 9164:
      *v1 = 41;
      break;
    case 9165:
      *v1 = 42;
      break;
    case 9166:
      *v1 = 43;
      break;
    case 9180:
      *v1 = 44;
      break;
    case 9181:
      *v1 = 45;
      break;
    case 9182:
      *v1 = 46;
      break;
    case 9183:
      *v1 = 47;
      break;
    default:
      *v1 = 48;
      break;
  }

  return rawValue;
}

unint64_t sub_21A4207FC()
{
  result = qword_27CD289F0;
  if (!qword_27CD289F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD289F0);
  }

  return result;
}

uint64_t sub_21A420850()
{
  v1 = *v0;
  sub_21A451B04();
  MEMORY[0x21CEDA220](qword_21A457C00[v1]);
  return sub_21A451B24();
}

uint64_t sub_21A4208D8()
{
  v1 = *v0;
  sub_21A451B04();
  MEMORY[0x21CEDA220](qword_21A457C00[v1]);
  return sub_21A451B24();
}

unint64_t sub_21A420944(uint64_t a1)
{
  result = sub_21A3DCAA4();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_21A42096C(uint64_t a1, uint64_t a2)
{
  v4 = sub_21A420B14();
  v5 = sub_21A41B1AC();

  return MEMORY[0x2821FE2D0](a1, a2, v4, v5);
}

uint64_t getEnumTagSinglePayload for EspressoError(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for EspressoError(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_21A420B14()
{
  result = qword_27CD289F8;
  if (!qword_27CD289F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD289F8);
  }

  return result;
}

PrivateFederatedLearning::PFLError_optional __swiftcall PFLError.init(rawValue:)(Swift::Int rawValue)
{
  v2 = rawValue - 40;
  if ((rawValue - 9000) >= 7)
  {
    v2 = 7;
  }

  *v1 = v2;
  return rawValue;
}

unint64_t sub_21A420B98()
{
  result = qword_27CD28A00;
  if (!qword_27CD28A00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD28A00);
  }

  return result;
}

uint64_t sub_21A420BEC()
{
  v1 = *v0;
  sub_21A451B04();
  MEMORY[0x21CEDA220](v1 + 9000);
  return sub_21A451B24();
}

uint64_t sub_21A420C6C()
{
  v1 = *v0;
  sub_21A451B04();
  MEMORY[0x21CEDA220](v1 + 9000);
  return sub_21A451B24();
}

unint64_t sub_21A420CD0(uint64_t a1)
{
  result = sub_21A3DCAF8();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_21A420CF8(uint64_t a1, uint64_t a2)
{
  v4 = sub_21A420EA0();
  v5 = sub_21A41B1AC();

  return MEMORY[0x2821FE2D0](a1, a2, v4, v5);
}

uint64_t getEnumTagSinglePayload for PFLError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFA)
  {
    goto LABEL_17;
  }

  if (a2 + 6 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 6) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 6;
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

      return (*a1 | (v4 << 8)) - 6;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 6;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v8 = v6 - 7;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for PFLError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFA)
  {
    v4 = 0;
  }

  if (a2 > 0xF9)
  {
    v5 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
    *result = a2 + 6;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_21A420EA0()
{
  result = qword_27CD28A08;
  if (!qword_27CD28A08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD28A08);
  }

  return result;
}

uint64_t sub_21A420EF4(uint64_t a1, uint64_t a2)
{
  sub_21A3E7060(a1, v24, &qword_27CD28468, &unk_21A455FB0);
  if (!v25)
  {
    sub_21A3D3BF0(v24, &qword_27CD28468, &unk_21A455FB0);
    goto LABEL_24;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD28440, &unk_21A456490);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_24:
    v11 = 0;
    return v11 & 1;
  }

  if (*(v22 + 16))
  {
    v3 = sub_21A3DCA2C(28783, 0xE200000000000000);
    if (v4)
    {
      sub_21A3D3B94(*(v22 + 56) + 32 * v3, v24);
      if (swift_dynamicCast())
      {
        v5 = sub_21A4242FC(&unk_282B3F980);
        swift_arrayDestroy();
        v21 = sub_21A4242FC(&unk_282B3F9D0);
        swift_arrayDestroy();
        v20 = sub_21A4242FC(&unk_282B3FA10);
        swift_arrayDestroy();
        v19 = sub_21A4242FC(&unk_282B3FAB0);
        swift_arrayDestroy();
        v6 = sub_21A4242FC(&unk_282B3FAF0);
        swift_arrayDestroy();
        v7 = sub_21A4242FC(&unk_282B3FB30);
        swift_arrayDestroy();
        v8 = sub_21A4242FC(&unk_282B3FB70);
        sub_21A419EB8(&unk_282B3FB90);
        v9 = sub_21A4236B4(v22, v23, v5);

        if (v9)
        {

          v10 = sub_21A42249C(v22, a2);
LABEL_22:
          v11 = v10;

          return v11 & 1;
        }

        v12 = sub_21A4236B4(v22, v23, v21);

        if (v12)
        {

          v10 = sub_21A4219D8(v22, a2);
          goto LABEL_22;
        }

        v13 = sub_21A4236B4(v22, v23, v20);

        if (v13)
        {

          v10 = sub_21A421B64(v22, a2);
          goto LABEL_22;
        }

        v14 = sub_21A4236B4(v22, v23, v19);

        if (v14)
        {

          v10 = sub_21A421EBC(v22, a2);
          goto LABEL_22;
        }

        v15 = sub_21A4236B4(v22, v23, v6);

        if (v15)
        {

          v10 = sub_21A4221A0(v22, a2);
          goto LABEL_22;
        }

        v16 = sub_21A4236B4(v22, v23, v7);

        if (v16)
        {

          v10 = sub_21A423268(v22, a2);
          goto LABEL_22;
        }

        v17 = sub_21A4236B4(v22, v23, v8);

        if (v17)
        {
          v10 = sub_21A422904(v22, a2);
          goto LABEL_22;
        }
      }
    }

    goto LABEL_24;
  }

  v11 = 1;
  return v11 & 1;
}

uint64_t sub_21A421374@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v4 = sub_21A424464(a1);
  sub_21A3E7060(a2, &v46, &qword_27CD28468, &unk_21A455FB0);
  v5 = *(v4 + 16);
  if (!v5)
  {
LABEL_85:

    v39 = v47;
    *a3 = v46;
    a3[1] = v39;
    return result;
  }

  v6 = 0;
  while (1)
  {
    if (v6 >= *(v4 + 16))
    {
      __break(1u);
LABEL_93:

LABEL_94:

      v41 = a3;
      result = sub_21A3D3BF0(&v46, &qword_27CD28468, &unk_21A455FB0);
      goto LABEL_95;
    }

    v7 = (v4 + 32 + 16 * v6);
    v8 = *v7;
    v9 = v7[1];
    sub_21A3E7060(&v46, &v44, &qword_27CD28468, &unk_21A455FB0);
    if (!*(&v45 + 1))
    {

      sub_21A3D3BF0(&v46, &qword_27CD28468, &unk_21A455FB0);
      result = sub_21A3D3BF0(&v44, &qword_27CD28468, &unk_21A455FB0);
      *a3 = 0u;
      a3[1] = 0u;
      return result;
    }

    sub_21A3D3BF0(&v44, &qword_27CD28468, &unk_21A455FB0);
    sub_21A3E7060(&v46, &v44, &qword_27CD28468, &unk_21A455FB0);
    if (!*(&v45 + 1))
    {
      break;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD28440, &unk_21A456490);
    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_13;
    }

    if (!*(v43 + 16))
    {

LABEL_45:

      sub_21A3D3BF0(&v46, &qword_27CD28468, &unk_21A455FB0);
      v44 = 0u;
      v45 = 0u;
      goto LABEL_4;
    }

    v10 = sub_21A3DCA2C(v8, v9);
    v12 = v11;

    if ((v12 & 1) == 0)
    {
      goto LABEL_45;
    }

    sub_21A3D3B94(*(v43 + 56) + 32 * v10, &v44);
    sub_21A3D3BF0(&v46, &qword_27CD28468, &unk_21A455FB0);

LABEL_4:
    v46 = v44;
    v47 = v45;
    if (++v6 == v5)
    {
      goto LABEL_85;
    }
  }

  sub_21A3D3BF0(&v44, &qword_27CD28468, &unk_21A455FB0);
LABEL_13:
  sub_21A3E7060(&v46, &v44, &qword_27CD28468, &unk_21A455FB0);
  if (!*(&v45 + 1))
  {

    sub_21A3D3BF0(&v46, &qword_27CD28468, &unk_21A455FB0);
    v40 = &v44;
    goto LABEL_90;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD284A8, &unk_21A458EE0);
  result = swift_dynamicCast();
  if ((result & 1) == 0)
  {

    v40 = &v46;
LABEL_90:
    result = sub_21A3D3BF0(v40, &qword_27CD28468, &unk_21A455FB0);
LABEL_91:
    v41 = a3;
LABEL_95:
    *v41 = 0u;
    v41[1] = 0u;
    return result;
  }

  v14 = v43;
  v15 = HIBYTE(v9) & 0xF;
  v16 = v8 & 0xFFFFFFFFFFFFLL;
  if ((v9 & 0x2000000000000000) != 0)
  {
    v17 = HIBYTE(v9) & 0xF;
  }

  else
  {
    v17 = v8 & 0xFFFFFFFFFFFFLL;
  }

  if (!v17)
  {
    goto LABEL_93;
  }

  if ((v9 & 0x1000000000000000) != 0)
  {
    v19 = sub_21A4238FC(v8, v9, 10);
    v37 = v38;
    goto LABEL_79;
  }

  if ((v9 & 0x2000000000000000) != 0)
  {
    *&v44 = v8;
    *(&v44 + 1) = v9 & 0xFFFFFFFFFFFFFFLL;
    if (v8 == 43)
    {
      if (!v15)
      {
        goto LABEL_97;
      }

      if (--v15)
      {
        v19 = 0;
        v29 = &v44 + 1;
        while (1)
        {
          v30 = *v29 - 48;
          if (v30 > 9)
          {
            break;
          }

          v31 = 10 * v19;
          if ((v19 * 10) >> 64 != (10 * v19) >> 63)
          {
            break;
          }

          v19 = v31 + v30;
          if (__OFADD__(v31, v30))
          {
            break;
          }

          ++v29;
          if (!--v15)
          {
            goto LABEL_78;
          }
        }
      }
    }

    else if (v8 == 45)
    {
      if (!v15)
      {
        goto LABEL_99;
      }

      if (--v15)
      {
        v19 = 0;
        v23 = &v44 + 1;
        while (1)
        {
          v24 = *v23 - 48;
          if (v24 > 9)
          {
            break;
          }

          v25 = 10 * v19;
          if ((v19 * 10) >> 64 != (10 * v19) >> 63)
          {
            break;
          }

          v19 = v25 - v24;
          if (__OFSUB__(v25, v24))
          {
            break;
          }

          ++v23;
          if (!--v15)
          {
            goto LABEL_78;
          }
        }
      }
    }

    else if (v15)
    {
      v19 = 0;
      v34 = &v44;
      while (1)
      {
        v35 = *v34 - 48;
        if (v35 > 9)
        {
          break;
        }

        v36 = 10 * v19;
        if ((v19 * 10) >> 64 != (10 * v19) >> 63)
        {
          break;
        }

        v19 = v36 + v35;
        if (__OFADD__(v36, v35))
        {
          break;
        }

        ++v34;
        if (!--v15)
        {
          goto LABEL_78;
        }
      }
    }

LABEL_77:
    v19 = 0;
    LOBYTE(v15) = 1;
    goto LABEL_78;
  }

  if ((v8 & 0x1000000000000000) != 0)
  {
    result = (v9 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    result = sub_21A4517E4();
  }

  v18 = *result;
  if (v18 == 43)
  {
    if (v16 < 1)
    {
      goto LABEL_98;
    }

    v15 = v16 - 1;
    if (v16 != 1)
    {
      v19 = 0;
      if (!result)
      {
        goto LABEL_69;
      }

      v26 = (result + 1);
      while (1)
      {
        v27 = *v26 - 48;
        if (v27 > 9)
        {
          break;
        }

        v28 = 10 * v19;
        if ((v19 * 10) >> 64 != (10 * v19) >> 63)
        {
          break;
        }

        v19 = v28 + v27;
        if (__OFADD__(v28, v27))
        {
          break;
        }

        ++v26;
        if (!--v15)
        {
          goto LABEL_78;
        }
      }
    }

    goto LABEL_77;
  }

  if (v18 != 45)
  {
    if (!v16)
    {
      goto LABEL_77;
    }

    v19 = 0;
    if (!result)
    {
      goto LABEL_69;
    }

    while (1)
    {
      v32 = *result - 48;
      if (v32 > 9)
      {
        goto LABEL_77;
      }

      v33 = 10 * v19;
      if ((v19 * 10) >> 64 != (10 * v19) >> 63)
      {
        goto LABEL_77;
      }

      v19 = v33 + v32;
      if (__OFADD__(v33, v32))
      {
        goto LABEL_77;
      }

      ++result;
      if (!--v16)
      {
        goto LABEL_69;
      }
    }
  }

  if (v16 >= 1)
  {
    v15 = v16 - 1;
    if (v16 == 1)
    {
      goto LABEL_77;
    }

    v19 = 0;
    if (result)
    {
      v20 = (result + 1);
      while (1)
      {
        v21 = *v20 - 48;
        if (v21 > 9)
        {
          goto LABEL_77;
        }

        v22 = 10 * v19;
        if ((v19 * 10) >> 64 != (10 * v19) >> 63)
        {
          goto LABEL_77;
        }

        v19 = v22 - v21;
        if (__OFSUB__(v22, v21))
        {
          goto LABEL_77;
        }

        ++v20;
        if (!--v15)
        {
          goto LABEL_78;
        }
      }
    }

LABEL_69:
    LOBYTE(v15) = 0;
LABEL_78:
    LOBYTE(v43) = v15;
    v37 = v15;
LABEL_79:

    if (v37)
    {
      goto LABEL_94;
    }

    if (v19 < 0 || v19 >= *(v14 + 16))
    {
      sub_21A3D3BF0(&v46, &qword_27CD28468, &unk_21A455FB0);

      goto LABEL_91;
    }

    sub_21A3D3B94(v14 + 32 * v19 + 32, &v44);

    sub_21A3D3BF0(&v46, &qword_27CD28468, &unk_21A455FB0);
    goto LABEL_4;
  }

  __break(1u);
LABEL_97:
  __break(1u);
LABEL_98:
  __break(1u);
LABEL_99:
  __break(1u);
  return result;
}

uint64_t sub_21A4219D8(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 16))
  {
    v3 = a2;
    v4 = sub_21A3DCA2C(1752457584, 0xE400000000000000);
    if (v5)
    {
      sub_21A3D3B94(*(a1 + 56) + 32 * v4, &v13);
    }

    else
    {
      v13 = 0u;
      v14 = 0u;
    }

    a2 = v3;
  }

  else
  {
    v13 = 0u;
    v14 = 0u;
  }

  sub_21A421374(&v13, a2, &v15);
  sub_21A3D3BF0(&v13, &qword_27CD28468, &unk_21A455FB0);
  if (*(a1 + 16) && (v6 = sub_21A3DCA2C(28783, 0xE200000000000000), (v7 & 1) != 0) && (sub_21A3D3B94(*(a1 + 56) + 32 * v6, &v13), (swift_dynamicCast() & 1) != 0))
  {
    v8 = v16;
    if (v12)
    {
      if (v11 == 0x64656E69666564 && v12 == 0xE700000000000000)
      {

        v9 = 1;
      }

      else
      {
        v9 = sub_21A4519B4();
      }
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
    v8 = v16;
  }

  sub_21A3D3BF0(&v15, &qword_27CD28468, &unk_21A455FB0);
  return ((v8 == 0) ^ v9) & 1;
}

uint64_t sub_21A421B64(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 16) && (v4 = sub_21A3DCA2C(28783, 0xE200000000000000), (v5 & 1) != 0) && (sub_21A3D3B94(*(a1 + 56) + 32 * v4, v27), (swift_dynamicCast() & 1) != 0))
  {
    v6 = *(&v25 + 1);
    v7 = v25;
  }

  else
  {
    v7 = 0;
    v6 = 0xE000000000000000;
  }

  v28 = v7;
  v29 = v6;
  if (!*(a1 + 16) || (v8 = sub_21A3DCA2C(0x65756C6176, 0xE500000000000000), (v9 & 1) == 0) || (sub_21A3D3B94(*(a1 + 56) + 32 * v8, v27), (swift_dynamicCast() & 1) == 0))
  {

LABEL_13:
    v13 = 0;
    return v13 & 1;
  }

  v10 = v25;
  if (*(a1 + 16) && (v11 = sub_21A3DCA2C(1752457584, 0xE400000000000000), (v12 & 1) != 0))
  {
    sub_21A3D3B94(*(a1 + 56) + 32 * v11, v24);
  }

  else
  {
    memset(v24, 0, sizeof(v24));
  }

  sub_21A421374(v24, a2, &v25);
  sub_21A3D3BF0(v24, &qword_27CD28468, &unk_21A455FB0);
  if (!v26)
  {

    sub_21A3D3BF0(&v25, &qword_27CD28468, &unk_21A455FB0);
    goto LABEL_13;
  }

  sub_21A3D3B38(&v25, v27);
  sub_21A3D3B94(v27, &v25);
  if (swift_dynamicCast())
  {
    v15 = *(&v24[0] + 1);
    v16 = *&v24[0];
  }

  else
  {
    *&v25 = 0;
    *(&v25 + 1) = 0xE000000000000000;
    sub_21A451804();
    v15 = *(&v25 + 1);
    v16 = v25;
  }

  v17 = sub_21A451234();
  if (v17)
  {
    sub_21A421E54(v17);

    v18 = sub_21A4510D4();
    v20 = v19;

    v21 = sub_21A4510D4();
    v23 = v22;

    v13 = sub_21A4246EC(v28, v29, v18, v20, v21, v23);
  }

  else
  {
    v13 = sub_21A4246EC(v7, v6, v16, v15, v10, *(&v10 + 1));
  }

  __swift_destroy_boxed_opaque_existential_0(v27);
  return v13 & 1;
}

uint64_t sub_21A421E54(uint64_t a1)
{
  v2 = v1[1];
  if ((v2 & 0x2000000000000000) == 0)
  {
    if ((*v1 & 0xFFFFFFFFFFFFLL) != 0)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  if ((v2 & 0xF00000000000000) == 0)
  {
    __break(1u);
    return MEMORY[0x2821FBE70](a1);
  }

LABEL_5:
  a1 = sub_21A451174();

  return MEMORY[0x2821FBE70](a1);
}

BOOL sub_21A421EBC(uint64_t a1, uint64_t a2)
{
  if (!*(a1 + 16))
  {
    return 0;
  }

  v4 = sub_21A3DCA2C(28783, 0xE200000000000000);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  sub_21A3D3B94(*(a1 + 56) + 32 * v4, v22);
  if ((swift_dynamicCast() & 1) == 0)
  {
    return 0;
  }

  if (!*(a1 + 16))
  {
    goto LABEL_10;
  }

  v6 = sub_21A3DCA2C(0x65756C6176, 0xE500000000000000);
  if ((v7 & 1) == 0)
  {
    goto LABEL_10;
  }

  sub_21A3D3B94(*(a1 + 56) + 32 * v6, v22);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_10;
  }

  v8 = v20;
  if (*(a1 + 16) && (v9 = sub_21A3DCA2C(1752457584, 0xE400000000000000), (v10 & 1) != 0))
  {
    sub_21A3D3B94(*(a1 + 56) + 32 * v9, v19);
  }

  else
  {
    memset(v19, 0, sizeof(v19));
  }

  sub_21A421374(v19, a2, &v20);
  sub_21A3D3BF0(v19, &qword_27CD28468, &unk_21A455FB0);
  if (!v21)
  {

    sub_21A3D3BF0(&v20, &qword_27CD28468, &unk_21A455FB0);
    return 0;
  }

  sub_21A3D3B38(&v20, v22);
  sub_21A3D3B94(v22, &v20);
  if (!swift_dynamicCast())
  {
    *&v20 = 0;
    *(&v20 + 1) = 0xE000000000000000;
    sub_21A451804();
  }

  v12 = sub_21A451234();

  v13 = objc_allocWithZone(MEMORY[0x277CCAC68]);
  v14 = sub_21A4237AC(v8, *(&v8 + 1), v12 & 1);
  if (!v14)
  {
    __swift_destroy_boxed_opaque_existential_0(v22);
LABEL_10:

    return 0;
  }

  v15 = v14;
  v16 = sub_21A451054();
  v17 = sub_21A451154();

  v18 = [v15 numberOfMatchesInString:v16 options:0 range:{0, v17}];

  __swift_destroy_boxed_opaque_existential_0(v22);
  return v18 > 0;
}

BOOL sub_21A4221A0(uint64_t a1, uint64_t a2)
{
  if (!*(a1 + 16))
  {
    return 0;
  }

  v4 = sub_21A3DCA2C(28783, 0xE200000000000000);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  sub_21A3D3B94(*(a1 + 56) + 32 * v4, v22);
  if ((swift_dynamicCast() & 1) == 0)
  {
    return 0;
  }

  v6 = *(&v20 + 1);
  if (!*(a1 + 16))
  {
    goto LABEL_19;
  }

  v7 = v20;
  v8 = sub_21A3DCA2C(0x65756C6176, 0xE500000000000000);
  if ((v9 & 1) == 0)
  {
    goto LABEL_19;
  }

  sub_21A3D3B94(*(a1 + 56) + 32 * v8, v22);
  sub_21A3ED284(0, &qword_27CD28450, 0x277CCABB0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_19;
  }

  v10 = v20;
  if (*(a1 + 16) && (v11 = sub_21A3DCA2C(1752457584, 0xE400000000000000), (v12 & 1) != 0))
  {
    sub_21A3D3B94(*(a1 + 56) + 32 * v11, &v18);
  }

  else
  {
    v18 = 0u;
    v19 = 0u;
  }

  sub_21A421374(&v18, a2, &v20);
  sub_21A3D3BF0(&v18, &qword_27CD28468, &unk_21A455FB0);
  if (!v21)
  {

    sub_21A3D3BF0(&v20, &qword_27CD28468, &unk_21A455FB0);
    return 0;
  }

  sub_21A3D3B38(&v20, v22);
  sub_21A3D3B94(v22, &v20);
  if ((swift_dynamicCast() & 1) == 0)
  {
    __swift_destroy_boxed_opaque_existential_0(v22);

LABEL_19:

    return 0;
  }

  v13 = v18;
  if (v7 == 1936942444 && v6 == 0xE400000000000000 || (sub_21A4519B4() & 1) != 0)
  {

    v14 = [v13 compare_];

    __swift_destroy_boxed_opaque_existential_0(v22);
    return v14 == -1;
  }

  if (v7 == 1701998445 && v6 == 0xE400000000000000)
  {

LABEL_26:
    v17 = [v13 compare_];

    __swift_destroy_boxed_opaque_existential_0(v22);
    return v17 == 1;
  }

  v16 = sub_21A4519B4();

  if (v16)
  {
    goto LABEL_26;
  }

  __swift_destroy_boxed_opaque_existential_0(v22);

  return 0;
}

uint64_t sub_21A42249C(uint64_t a1, uint64_t a2)
{
  if (!*(a1 + 16))
  {
    return 0;
  }

  v4 = sub_21A3DCA2C(28783, 0xE200000000000000);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  sub_21A3D3B94(*(a1 + 56) + 32 * v4, v33);
  if ((swift_dynamicCast() & 1) == 0)
  {
    return 0;
  }

  v6 = *(&v32[0] + 1);
  if (!*(a1 + 16) || (v7 = *&v32[0], v8 = sub_21A3DCA2C(0x796C707061, 0xE500000000000000), (v9 & 1) == 0) || (sub_21A3D3B94(*(a1 + 56) + 32 * v8, v33), __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD284A8, &unk_21A458EE0), (swift_dynamicCast() & 1) == 0))
  {

    return 0;
  }

  v10 = *&v32[0];
  if (*(a1 + 16) && (v11 = sub_21A3DCA2C(1752457584, 0xE400000000000000), (v12 & 1) != 0))
  {
    sub_21A3D3B94(*(a1 + 56) + 32 * v11, v32);
  }

  else
  {
    memset(v32, 0, sizeof(v32));
  }

  sub_21A421374(v32, a2, v33);
  sub_21A3D3BF0(v32, &qword_27CD28468, &unk_21A455FB0);
  if ((v7 != 6581857 || v6 != 0xE300000000000000) && (sub_21A4519B4() & 1) == 0)
  {
    if (v7 == 7630702 && v6 == 0xE300000000000000 || (sub_21A4519B4() & 1) != 0)
    {

      result = v10 + 32;
      v21 = -*(v10 + 16);
      v22 = -1;
      do
      {
        v23 = v21 + v22 == -1;
        if (v21 + v22 == -1)
        {
          break;
        }

        if (++v22 >= *(v10 + 16))
        {
          goto LABEL_41;
        }

        v24 = result + 32;
        sub_21A3D3B94(result, v32);
        sub_21A3D3B94(v32, v31);
        v25 = sub_21A420EF4(v31, v33);
        sub_21A3D3BF0(v31, &qword_27CD28468, &unk_21A455FB0);
        __swift_destroy_boxed_opaque_existential_0(v32);
        result = v24;
      }

      while ((v25 & 1) == 0);
LABEL_29:

      sub_21A3D3BF0(v33, &qword_27CD28468, &unk_21A455FB0);
      return v23;
    }

    if (v7 == 29295 && v6 == 0xE200000000000000)
    {

      goto LABEL_34;
    }

    v26 = sub_21A4519B4();

    if (v26)
    {
LABEL_34:
      result = v10 + 32;
      v27 = -*(v10 + 16);
      v28 = -1;
      do
      {
        v23 = v27 + v28 != -1;
        if (v27 + v28 == -1)
        {
          break;
        }

        if (++v28 >= *(v10 + 16))
        {
          goto LABEL_42;
        }

        v29 = result + 32;
        sub_21A3D3B94(result, v32);
        sub_21A3D3B94(v32, v31);
        v30 = sub_21A420EF4(v31, v33);
        sub_21A3D3BF0(v31, &qword_27CD28468, &unk_21A455FB0);
        __swift_destroy_boxed_opaque_existential_0(v32);
        result = v29;
      }

      while ((v30 & 1) == 0);
      goto LABEL_29;
    }

    sub_21A3D3BF0(v33, &qword_27CD28468, &unk_21A455FB0);
    return 0;
  }

  result = v10 + 32;
  v14 = -*(v10 + 16);
  v15 = -1;
  while (1)
  {
    v16 = v14 + v15 == -1;
    if (v14 + v15 == -1)
    {
LABEL_21:
      v20 = v16;

      sub_21A3D3BF0(v33, &qword_27CD28468, &unk_21A455FB0);
      return v20;
    }

    if (++v15 >= *(v10 + 16))
    {
      break;
    }

    v17 = result + 32;
    v18 = v16;
    sub_21A3D3B94(result, v32);
    sub_21A3D3B94(v32, v31);
    v19 = sub_21A420EF4(v31, v33);
    sub_21A3D3BF0(v31, &qword_27CD28468, &unk_21A455FB0);
    __swift_destroy_boxed_opaque_existential_0(v32);
    v16 = v18;
    result = v17;
    if ((v19 & 1) == 0)
    {
      goto LABEL_21;
    }
  }

  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
  return result;
}

uint64_t sub_21A422904(uint64_t a1, uint64_t a2)
{
  if (!*(a1 + 16))
  {
    goto LABEL_39;
  }

  v4 = sub_21A3DCA2C(0x65756C6176, 0xE500000000000000);
  if ((v5 & 1) == 0)
  {
    goto LABEL_39;
  }

  sub_21A3D3B94(*(a1 + 56) + 32 * v4, v31);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_39;
  }

  v6 = v29;
  if (*(a1 + 16) && (v7 = sub_21A3DCA2C(1752457584, 0xE400000000000000), (v8 & 1) != 0))
  {
    sub_21A3D3B94(*(a1 + 56) + 32 * v7, &v27);
  }

  else
  {
    v27 = 0u;
    v28 = 0u;
  }

  sub_21A421374(&v27, a2, &v29);
  sub_21A3D3BF0(&v27, &qword_27CD28468, &unk_21A455FB0);
  if (!v30)
  {
    sub_21A3D3BF0(&v29, &qword_27CD28468, &unk_21A455FB0);
    if (v6 == __PAIR128__(0xE900000000000064, 0x656E696665646E75))
    {

      v10 = 1;
    }

    else
    {
      v10 = sub_21A4519B4();
    }

    return v10 & 1;
  }

  sub_21A3D3B38(&v29, v31);
  if (v6 != __PAIR128__(0xE600000000000000, 0x676E69727473) && (sub_21A4519B4() & 1) == 0)
  {
    if (v6 == __PAIR128__(0xE600000000000000, 0x7265626D756ELL) || (sub_21A4519B4() & 1) != 0)
    {

      v11 = sub_21A42492C(v31);
LABEL_19:
      v10 = v11;
      __swift_destroy_boxed_opaque_existential_0(v31);
      return v10 & 1;
    }

    if (v6 == __PAIR128__(0xE700000000000000, 0x6E61656C6F6F62) || (sub_21A4519B4() & 1) != 0)
    {

      sub_21A3D3B38(v31, &v29);
      v10 = swift_dynamicCast();
      return v10 & 1;
    }

    if (v6 == __PAIR128__(0xE600000000000000, 0x7463656A626FLL) || (sub_21A4519B4() & 1) != 0)
    {

      sub_21A3D3B38(v31, &v29);
      v12 = &qword_27CD28440;
      v13 = &unk_21A456490;
      goto LABEL_26;
    }

    if (v6 == __PAIR128__(0xE500000000000000, 0x7961727261) || (sub_21A4519B4() & 1) != 0)
    {

      sub_21A3D3B38(v31, &v29);
      v12 = &qword_27CD284A8;
      v13 = &unk_21A458EE0;
LABEL_26:
      __swift_instantiateConcreteTypeFromMangledNameV2(v12, v13);
      v14 = swift_dynamicCast();
      v10 = v14;
      if (!v14)
      {
        return v10 & 1;
      }

      goto LABEL_12;
    }

    if (v6 == __PAIR128__(0xE400000000000000, 1819047278) || (sub_21A4519B4() & 1) != 0)
    {

      sub_21A3D3B94(v31, &v29);
      sub_21A3ED284(0, &qword_27CD28A18, 0x277CBEB68);
      if (swift_dynamicCast())
      {
        __swift_destroy_boxed_opaque_existential_0(v31);

        v10 = 1;
        return v10 & 1;
      }

      v11 = sub_21A4249CC(v31);
      goto LABEL_19;
    }

    if (v6 == __PAIR128__(0xE900000000000064, 0x656E696665646E75) || (sub_21A4519B4() & 1) != 0)
    {
      __swift_destroy_boxed_opaque_existential_0(v31);

LABEL_39:
      v10 = 0;
      return v10 & 1;
    }

    if (v6 == __PAIR128__(0xE400000000000000, 1702125924) || (sub_21A4519B4() & 1) != 0)
    {

      sub_21A3D3B94(v31, &v29);
      sub_21A3E7060(&v29, &v27, &qword_27CD28468, &unk_21A455FB0);
      if (*(&v28 + 1))
      {
        if ((swift_dynamicCast() & 1) == 0)
        {
LABEL_47:
          sub_21A3D3BF0(&v29, &qword_27CD28468, &unk_21A455FB0);
LABEL_48:
          __swift_destroy_boxed_opaque_existential_0(v31);
          goto LABEL_39;
        }

        v16 = objc_allocWithZone(MEMORY[0x277CCAC68]);
        v17 = sub_21A4237AC(0xD00000000000001FLL, 0x800000021A45CA60, 0);
        if (v17)
        {
LABEL_56:
          v19 = v17;
          v20 = sub_21A451054();
          v21 = sub_21A451154();

          v22 = [v19 matchesInString:v20 options:0 range:{0, v21}];

          sub_21A3ED284(0, &qword_27CD28A10, 0x277CCACC0);
          v23 = sub_21A4512E4();

          if (v23 >> 62)
          {
            v24 = sub_21A451844();
          }

          else
          {
            v24 = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          sub_21A3D3BF0(&v29, &qword_27CD28468, &unk_21A455FB0);
          __swift_destroy_boxed_opaque_existential_0(v31);
          v10 = v24 == 1;
          return v10 & 1;
        }

LABEL_46:

        goto LABEL_47;
      }
    }

    else if (v6 == __PAIR128__(0xE900000000000065, 0x6D69742D65746164) || (sub_21A4519B4() & 1) != 0)
    {

      sub_21A3D3B94(v31, &v29);
      sub_21A3E7060(&v29, &v27, &qword_27CD28468, &unk_21A455FB0);
      if (*(&v28 + 1))
      {
        if ((swift_dynamicCast() & 1) == 0)
        {
          goto LABEL_47;
        }

        v18 = objc_allocWithZone(MEMORY[0x277CCAC68]);
        v17 = sub_21A4237AC(0xD00000000000006ELL, 0x800000021A45C9F0, 0);
        if (v17)
        {
          goto LABEL_56;
        }

        goto LABEL_46;
      }
    }

    else
    {
      if (v6 == __PAIR128__(0xE400000000000000, 1701669236))
      {
      }

      else
      {
        v25 = sub_21A4519B4();

        if ((v25 & 1) == 0)
        {
          goto LABEL_48;
        }
      }

      sub_21A3D3B94(v31, &v29);
      sub_21A3E7060(&v29, &v27, &qword_27CD28468, &unk_21A455FB0);
      if (*(&v28 + 1))
      {
        if ((swift_dynamicCast() & 1) == 0)
        {
          goto LABEL_47;
        }

        v26 = objc_allocWithZone(MEMORY[0x277CCAC68]);
        v17 = sub_21A4237AC(0xD00000000000004DLL, 0x800000021A45C9A0, 0);
        if (v17)
        {
          goto LABEL_56;
        }

        goto LABEL_46;
      }
    }

    sub_21A3D3BF0(&v29, &qword_27CD28468, &unk_21A455FB0);
    __swift_destroy_boxed_opaque_existential_0(v31);
    sub_21A3D3BF0(&v27, &qword_27CD28468, &unk_21A455FB0);
    goto LABEL_39;
  }

  sub_21A3D3B38(v31, &v29);
  v9 = swift_dynamicCast();
  v10 = v9;
  if (v9)
  {
LABEL_12:
  }

  return v10 & 1;
}

uint64_t sub_21A423268(uint64_t a1, uint64_t a2)
{
  if (!*(a1 + 16))
  {
    return 0;
  }

  v4 = sub_21A3DCA2C(0x65756C6176, 0xE500000000000000);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  sub_21A3D3B94(*(a1 + 56) + 32 * v4, v26);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD284A8, &unk_21A458EE0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    return 0;
  }

  v6 = v24;
  if (*(a1 + 16) && (v7 = sub_21A3DCA2C(1752457584, 0xE400000000000000), (v8 & 1) != 0))
  {
    sub_21A3D3B94(*(a1 + 56) + 32 * v7, &v24);
  }

  else
  {
    v24 = 0u;
    v25 = 0u;
  }

  sub_21A421374(&v24, a2, v26);
  sub_21A3D3BF0(&v24, &qword_27CD28468, &unk_21A455FB0);
  sub_21A3E7060(v26, v22, &qword_27CD28468, &unk_21A455FB0);
  if (!v23)
  {
    sub_21A3D3BF0(v26, &qword_27CD28468, &unk_21A455FB0);

    sub_21A3D3BF0(v22, &qword_27CD28468, &unk_21A455FB0);
    return 0;
  }

  result = sub_21A3D3B38(v22, &v24);
  if (*(a1 + 16) && (result = sub_21A3DCA2C(28783, 0xE200000000000000), (v10 & 1) != 0) && (sub_21A3D3B94(*(a1 + 56) + 32 * result, v22), result = swift_dynamicCast(), (result & 1) != 0))
  {
    if (v20 == 2977385 && v21 == 0xE300000000000000)
    {

      v17 = 1;
      v11 = *(v6 + 16);
      if (!v11)
      {
        goto LABEL_30;
      }

      goto LABEL_17;
    }

    v17 = sub_21A4519B4();

    v11 = *(v6 + 16);
    if (!v11)
    {
LABEL_30:

      sub_21A3D3BF0(v26, &qword_27CD28468, &unk_21A455FB0);
      __swift_destroy_boxed_opaque_existential_0(&v24);
      return 0;
    }
  }

  else
  {
    v17 = 0;
    v11 = *(v6 + 16);
    if (!v11)
    {
      goto LABEL_30;
    }
  }

LABEL_17:
  v12 = 0;
  v13 = v6 + 32;
  while (v12 < *(v6 + 16))
  {
    sub_21A3D3B94(v13, v22);
    sub_21A3D3B94(&v24, &v20);
    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_19;
    }

    sub_21A3D3B94(v22, &v20);
    if ((swift_dynamicCast() & 1) == 0)
    {

LABEL_19:
      __swift_project_boxed_opaque_existential_1(v22, v23);
      v14 = sub_21A4519A4();
      __swift_project_boxed_opaque_existential_1(&v24, *(&v25 + 1));
      v15 = [v14 isEqual_];
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      if (v15)
      {
        goto LABEL_32;
      }

      goto LABEL_20;
    }

    if ((v17 & 1) == 0)
    {

LABEL_32:
      sub_21A3D3BF0(v26, &qword_27CD28468, &unk_21A455FB0);

      __swift_destroy_boxed_opaque_existential_0(v22);
      __swift_destroy_boxed_opaque_existential_0(&v24);
      return 1;
    }

    v20 = v18;
    v21 = v19;
    sub_21A3ED2CC();
    v16 = sub_21A451664();

    if (!v16)
    {
      goto LABEL_32;
    }

LABEL_20:
    ++v12;
    result = __swift_destroy_boxed_opaque_existential_0(v22);
    v13 += 32;
    if (v11 == v12)
    {
      goto LABEL_30;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_21A4236B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v6 = *(a3 + 40);
  sub_21A451B04();
  sub_21A451144();
  v7 = sub_21A451B24();
  v8 = -1 << *(a3 + 32);
  v9 = v7 & ~v8;
  if (((*(a3 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
  {
    return 0;
  }

  v10 = ~v8;
  while (1)
  {
    v11 = (*(a3 + 48) + 16 * v9);
    v12 = *v11 == a1 && v11[1] == a2;
    if (v12 || (sub_21A4519B4() & 1) != 0)
    {
      break;
    }

    v9 = (v9 + 1) & v10;
    if (((*(a3 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
    {
      return 0;
    }
  }

  return 1;
}

id sub_21A4237AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v11[1] = *MEMORY[0x277D85DE8];
  v5 = sub_21A451054();

  v11[0] = 0;
  v6 = [v3 initWithPattern:v5 options:a3 error:v11];

  if (v6)
  {
    v7 = v11[0];
  }

  else
  {
    v8 = v11[0];
    sub_21A450A84();

    swift_willThrow();
  }

  v9 = *MEMORY[0x277D85DE8];
  return v6;
}

void *sub_21A423888(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD28550, &unk_21A456260);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

unsigned __int8 *sub_21A4238FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v62 = a1;
  v63 = a2;

  result = sub_21A451274();
  v6 = result;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_21A423E88();
    v35 = v34;

    v5 = v35;
    if ((v35 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      result = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v7 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = sub_21A4517E4();
      v7 = v61;
    }

    v8 = *result;
    if (v8 == 43)
    {
      if (v7 >= 1)
      {
        v19 = v7 - 1;
        if (v19)
        {
          v20 = a3 + 48;
          v21 = a3 + 55;
          v22 = a3 + 87;
          if (a3 > 10)
          {
            v20 = 58;
          }

          else
          {
            v22 = 97;
            v21 = 65;
          }

          if (result)
          {
            v13 = 0;
            v23 = result + 1;
            do
            {
              v24 = *v23;
              if (v24 < 0x30 || v24 >= v20)
              {
                if (v24 < 0x41 || v24 >= v21)
                {
                  v17 = 0;
                  if (v24 < 0x61 || v24 >= v22)
                  {
                    goto LABEL_127;
                  }

                  v25 = -87;
                }

                else
                {
                  v25 = -55;
                }
              }

              else
              {
                v25 = -48;
              }

              v26 = v13 * a3;
              if ((v13 * a3) >> 64 != (v13 * a3) >> 63)
              {
                goto LABEL_126;
              }

              v13 = v26 + (v24 + v25);
              if (__OFADD__(v26, (v24 + v25)))
              {
                goto LABEL_126;
              }

              ++v23;
              --v19;
            }

            while (v19);
LABEL_46:
            v17 = v13;
            goto LABEL_127;
          }

          goto LABEL_66;
        }

LABEL_126:
        v17 = 0;
        goto LABEL_127;
      }

      goto LABEL_131;
    }

    if (v8 != 45)
    {
      if (v7)
      {
        v27 = a3 + 48;
        v28 = a3 + 55;
        v29 = a3 + 87;
        if (a3 > 10)
        {
          v27 = 58;
        }

        else
        {
          v29 = 97;
          v28 = 65;
        }

        if (result)
        {
          v30 = 0;
          do
          {
            v31 = *result;
            if (v31 < 0x30 || v31 >= v27)
            {
              if (v31 < 0x41 || v31 >= v28)
              {
                v17 = 0;
                if (v31 < 0x61 || v31 >= v29)
                {
                  goto LABEL_127;
                }

                v32 = -87;
              }

              else
              {
                v32 = -55;
              }
            }

            else
            {
              v32 = -48;
            }

            v33 = v30 * a3;
            if ((v30 * a3) >> 64 != (v30 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v30 = v33 + (v31 + v32);
            if (__OFADD__(v33, (v31 + v32)))
            {
              goto LABEL_126;
            }

            ++result;
            --v7;
          }

          while (v7);
          v17 = v33 + (v31 + v32);
          goto LABEL_127;
        }

        goto LABEL_66;
      }

      goto LABEL_126;
    }

    if (v7 >= 1)
    {
      v9 = v7 - 1;
      if (v9)
      {
        v10 = a3 + 48;
        v11 = a3 + 55;
        v12 = a3 + 87;
        if (a3 > 10)
        {
          v10 = 58;
        }

        else
        {
          v12 = 97;
          v11 = 65;
        }

        if (result)
        {
          v13 = 0;
          v14 = result + 1;
          while (1)
          {
            v15 = *v14;
            if (v15 < 0x30 || v15 >= v10)
            {
              if (v15 < 0x41 || v15 >= v11)
              {
                v17 = 0;
                if (v15 < 0x61 || v15 >= v12)
                {
                  goto LABEL_127;
                }

                v16 = -87;
              }

              else
              {
                v16 = -55;
              }
            }

            else
            {
              v16 = -48;
            }

            v18 = v13 * a3;
            if ((v13 * a3) >> 64 != (v13 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v13 = v18 - (v15 + v16);
            if (__OFSUB__(v18, (v15 + v16)))
            {
              goto LABEL_126;
            }

            ++v14;
            if (!--v9)
            {
              goto LABEL_46;
            }
          }
        }

LABEL_66:
        v17 = 0;
LABEL_127:

        return v17;
      }

      goto LABEL_126;
    }

    __break(1u);
LABEL_130:
    __break(1u);
LABEL_131:
    __break(1u);
    goto LABEL_132;
  }

  v36 = HIBYTE(v5) & 0xF;
  v62 = v6;
  v63 = v5 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v36)
      {
        v38 = 0;
        v54 = a3 + 48;
        v55 = a3 + 55;
        v56 = a3 + 87;
        if (a3 > 10)
        {
          v54 = 58;
        }

        else
        {
          v56 = 97;
          v55 = 65;
        }

        v57 = &v62;
        while (1)
        {
          v58 = *v57;
          if (v58 < 0x30 || v58 >= v54)
          {
            if (v58 < 0x41 || v58 >= v55)
            {
              v17 = 0;
              if (v58 < 0x61 || v58 >= v56)
              {
                goto LABEL_127;
              }

              v59 = -87;
            }

            else
            {
              v59 = -55;
            }
          }

          else
          {
            v59 = -48;
          }

          v60 = v38 * a3;
          if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v38 = v60 + (v58 + v59);
          if (__OFADD__(v60, (v58 + v59)))
          {
            goto LABEL_126;
          }

          v57 = (v57 + 1);
          if (!--v36)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    if (v36)
    {
      v37 = v36 - 1;
      if (v37)
      {
        v38 = 0;
        v39 = a3 + 48;
        v40 = a3 + 55;
        v41 = a3 + 87;
        if (a3 > 10)
        {
          v39 = 58;
        }

        else
        {
          v41 = 97;
          v40 = 65;
        }

        v42 = &v62 + 1;
        while (1)
        {
          v43 = *v42;
          if (v43 < 0x30 || v43 >= v39)
          {
            if (v43 < 0x41 || v43 >= v40)
            {
              v17 = 0;
              if (v43 < 0x61 || v43 >= v41)
              {
                goto LABEL_127;
              }

              v44 = -87;
            }

            else
            {
              v44 = -55;
            }
          }

          else
          {
            v44 = -48;
          }

          v45 = v38 * a3;
          if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v38 = v45 - (v43 + v44);
          if (__OFSUB__(v45, (v43 + v44)))
          {
            goto LABEL_126;
          }

          ++v42;
          if (!--v37)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    goto LABEL_130;
  }

  if (v36)
  {
    v46 = v36 - 1;
    if (v46)
    {
      v38 = 0;
      v47 = a3 + 48;
      v48 = a3 + 55;
      v49 = a3 + 87;
      if (a3 > 10)
      {
        v47 = 58;
      }

      else
      {
        v49 = 97;
        v48 = 65;
      }

      v50 = &v62 + 1;
      do
      {
        v51 = *v50;
        if (v51 < 0x30 || v51 >= v47)
        {
          if (v51 < 0x41 || v51 >= v48)
          {
            v17 = 0;
            if (v51 < 0x61 || v51 >= v49)
            {
              goto LABEL_127;
            }

            v52 = -87;
          }

          else
          {
            v52 = -55;
          }
        }

        else
        {
          v52 = -48;
        }

        v53 = v38 * a3;
        if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
        {
          goto LABEL_126;
        }

        v38 = v53 + (v51 + v52);
        if (__OFADD__(v53, (v51 + v52)))
        {
          goto LABEL_126;
        }

        ++v50;
        --v46;
      }

      while (v46);
LABEL_125:
      v17 = v38;
      goto LABEL_127;
    }

    goto LABEL_126;
  }

LABEL_132:
  __break(1u);
  return result;
}

uint64_t sub_21A423E88()
{
  v0 = sub_21A451284();
  v4 = sub_21A423F08(v0, v1, v2, v3);

  return v4;
}

uint64_t sub_21A423F08(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) == 0)
  {
    if ((a4 & 0x2000000000000000) != 0)
    {
      v15[0] = a3;
      v15[1] = a4 & 0xFFFFFFFFFFFFFFLL;
      return sub_21A451134();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }

    goto LABEL_11;
  }

  v9 = sub_21A451624();
  if (!v9)
  {
    v11 = MEMORY[0x277D84F90];
    goto LABEL_13;
  }

  v10 = v9;
  v11 = sub_21A423888(v9, 0);
  v12 = sub_21A424060(v15, (v11 + 4), v10, a1, a2, a3, a4);

  if (v12 == v10)
  {
LABEL_13:
    v13 = v11[2];
    v14 = sub_21A451134();

    return v14;
  }

  __break(1u);
LABEL_11:
  sub_21A4517E4();
LABEL_4:

  return sub_21A451134();
}

unint64_t sub_21A424060(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
{
  v9 = result;
  if (!a2)
  {
    goto LABEL_5;
  }

  if (!a3)
  {
    v12 = a4;
    v11 = 0;
    goto LABEL_34;
  }

  if (a3 < 0)
  {
    goto LABEL_38;
  }

  v10 = a5 >> 14;
  v27 = a4 >> 14;
  if (a4 >> 14 == a5 >> 14)
  {
LABEL_5:
    v11 = 0;
    v12 = a4;
LABEL_34:
    *v9 = a4;
    v9[1] = a5;
    v9[2] = a6;
    v9[3] = a7;
    v9[4] = v12;
    return v11;
  }

  v11 = 0;
  v14 = (a6 >> 59) & 1;
  if ((a7 & 0x1000000000000000) == 0)
  {
    LOBYTE(v14) = 1;
  }

  v15 = 4 << v14;
  v21 = (a7 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v22 = a7 & 0xFFFFFFFFFFFFFFLL;
  v16 = HIBYTE(a7) & 0xF;
  if ((a7 & 0x2000000000000000) == 0)
  {
    v16 = a6 & 0xFFFFFFFFFFFFLL;
  }

  v23 = v16;
  v26 = a3 - 1;
  v12 = a4;
  while (1)
  {
    v17 = v12 & 0xC;
    result = v12;
    if (v17 == v15)
    {
      result = sub_21A424280(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = sub_21A451204();
      v19 = result;
      if (v17 != v15)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v18 = result >> 16;
      if ((a7 & 0x2000000000000000) != 0)
      {
        v28[0] = a6;
        v28[1] = v22;
        v19 = *(v28 + v18);
        if (v17 != v15)
        {
          goto LABEL_23;
        }
      }

      else
      {
        result = v21;
        if ((a6 & 0x1000000000000000) == 0)
        {
          result = sub_21A4517E4();
        }

        v19 = *(result + v18);
        if (v17 != v15)
        {
LABEL_23:
          if ((a7 & 0x1000000000000000) == 0)
          {
            goto LABEL_24;
          }

          goto LABEL_27;
        }
      }
    }

    result = sub_21A424280(v12, a6, a7);
    v12 = result;
    if ((a7 & 0x1000000000000000) == 0)
    {
LABEL_24:
      v12 = (v12 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_29;
    }

LABEL_27:
    if (v23 <= v12 >> 16)
    {
      goto LABEL_37;
    }

    result = sub_21A4511E4();
    v12 = result;
LABEL_29:
    *(a2 + v11) = v19;
    if (v26 == v11)
    {
      v11 = a3;
      goto LABEL_34;
    }

    if (__OFADD__(v11 + 1, 1))
    {
      goto LABEL_36;
    }

    ++v11;
    if (v10 == v12 >> 14)
    {
      goto LABEL_34;
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
  return result;
}

uint64_t sub_21A424280(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_21A451214();
    v11 = v10 + (v4 << 16);
    v12 = v10 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v13 = v11 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v13 = v12;
    }

    return v13 | 4;
  }

  else
  {
    v5 = MEMORY[0x21CED9900](15, a1 >> 16);
    v6 = v5 + (v4 << 16);
    v7 = v5 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v8 = v6 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v8 = v7;
    }

    return v8 | 8;
  }
}

uint64_t sub_21A4242FC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD28460, &unk_21A455FA0);
    v3 = sub_21A451704();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (2)
    {
      v7 = (v6 + 16 * v4);
      v9 = *v7;
      v8 = v7[1];
      v10 = *(v3 + 40);
      sub_21A451B04();

      sub_21A451144();
      result = sub_21A451B24();
      v12 = ~(-1 << *(v3 + 32));
      for (i = result & v12; ; i = (i + 1) & v12)
      {
        v14 = *(v5 + 8 * (i >> 6));
        if (((1 << i) & v14) == 0)
        {
          break;
        }

        v15 = (*(v3 + 48) + 16 * i);
        if (*v15 != v9 || v15[1] != v8)
        {
          result = sub_21A4519B4();
          if ((result & 1) == 0)
          {
            continue;
          }
        }

        goto LABEL_4;
      }

      *(v5 + 8 * (i >> 6)) = (1 << i) | v14;
      v17 = (*(v3 + 48) + 16 * i);
      *v17 = v9;
      v17[1] = v8;
      v18 = *(v3 + 16);
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (!v19)
      {
        *(v3 + 16) = v20;
LABEL_4:
        if (++v4 == v1)
        {
          return v3;
        }

        continue;
      }

      break;
    }

    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84FA0];
  }

  return result;
}

uint64_t sub_21A424464(uint64_t a1)
{
  sub_21A3E7060(a1, &v19, &qword_27CD28468, &unk_21A455FB0);
  if (!v21)
  {
    sub_21A3D3BF0(&v19, &qword_27CD28468, &unk_21A455FB0);
    return MEMORY[0x277D84F90];
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
    return MEMORY[0x277D84F90];
  }

  v19 = v17;
  v20 = v18;
  sub_21A3ED2CC();
  v1 = sub_21A451644();

  v2 = *(v1 + 16);
  v3 = v2 != 0;
  if (v2 <= 1)
  {

    return MEMORY[0x277D84F90];
  }

  v16 = MEMORY[0x277D84F90];
  result = sub_21A3E48DC(0, (v2 - v3) & ~((v2 - v3) >> 63), 0);
  if (((v2 - v3) & 0x8000000000000000) == 0)
  {
    v4 = v16;
    v15 = v2;
    v6 = (v1 + 16 * v3 + 40);
    while (v3 < v2)
    {
      v7 = *v6;
      v19 = *(v6 - 1);
      v20 = v7;

      v19 = sub_21A451654();
      v20 = v8;
      v9 = sub_21A451654();
      v11 = v10;

      v13 = *(v16 + 16);
      v12 = *(v16 + 24);
      if (v13 >= v12 >> 1)
      {
        result = sub_21A3E48DC((v12 > 1), v13 + 1, 1);
      }

      *(v16 + 16) = v13 + 1;
      v14 = v16 + 16 * v13;
      *(v14 + 32) = v9;
      *(v14 + 40) = v11;
      ++v3;
      v6 += 2;
      v2 = v15;
      if (v15 == v3)
      {

        return v4;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_21A4246EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = a1 == 0x737472617473 && a2 == 0xE600000000000000;
  if (v9 || (sub_21A4519B4() & 1) != 0)
  {

    return sub_21A451224();
  }

  if (a1 == 1935961701 && a2 == 0xE400000000000000 || (sub_21A4519B4() & 1) != 0)
  {

    return sub_21A451234();
  }

  if (a1 == 0x736E6961746E6F63 && a2 == 0xE800000000000000 || (v14 = sub_21A4519B4(), v15 = a3, v16 = a4, (v14 & 1) != 0))
  {
    sub_21A3ED2CC();
    v17 = sub_21A451684();
    return v17 & 1;
  }

  if (a1 != 1953719668 || a2 != 0xE400000000000000)
  {
    v18 = sub_21A4519B4();
    v15 = a3;
    v16 = a4;
    v19 = v18;
    v17 = 0;
    if ((v19 & 1) == 0)
    {
      return v17 & 1;
    }
  }

  if (v15 == a5 && v16 == a6)
  {
    v17 = 1;
    return v17 & 1;
  }

  return sub_21A4519B4();
}

uint64_t sub_21A42492C(uint64_t a1)
{
  sub_21A3D3B94(a1, v4);
  sub_21A3ED284(0, &qword_27CD28450, 0x277CCABB0);
  result = swift_dynamicCast();
  if (result)
  {

    sub_21A3D3B94(a1, v4);
    return swift_dynamicCast() ^ 1;
  }

  return result;
}

uint64_t sub_21A4249CC(uint64_t a1)
{
  v2 = sub_21A451B44();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v39 = &v37[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD28A20, &qword_21A457EC0);
  v7 = v6 - 8;
  v8 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v37[-v9];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD28A28, &qword_21A457EC8);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v11 - 8);
  v42 = &v37[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v37[-v16];
  MEMORY[0x28223BE20](v15);
  v19 = &v37[-v18];
  v20 = sub_21A451B74();
  v40 = *(v20 - 8);
  v41 = v20;
  v21 = *(v40 + 64);
  MEMORY[0x28223BE20](v20);
  v23 = &v37[-((v22 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_21A3D3B94(a1, v43);
  sub_21A451B34();
  sub_21A451B54();
  (*(v3 + 104))(v17, *MEMORY[0x277D84C18], v2);
  (*(v3 + 56))(v17, 0, 1, v2);
  v24 = *(v7 + 56);
  sub_21A3E7060(v19, v10, &qword_27CD28A28, &qword_21A457EC8);
  sub_21A3E7060(v17, &v10[v24], &qword_27CD28A28, &qword_21A457EC8);
  v25 = *(v3 + 48);
  if (v25(v10, 1, v2) == 1)
  {
    sub_21A3D3BF0(v17, &qword_27CD28A28, &qword_21A457EC8);
    sub_21A3D3BF0(v19, &qword_27CD28A28, &qword_21A457EC8);
    if (v25(&v10[v24], 1, v2) == 1)
    {
      sub_21A3D3BF0(v10, &qword_27CD28A28, &qword_21A457EC8);
      goto LABEL_9;
    }

    goto LABEL_6;
  }

  sub_21A3E7060(v10, v42, &qword_27CD28A28, &qword_21A457EC8);
  if (v25(&v10[v24], 1, v2) == 1)
  {
    sub_21A3D3BF0(v17, &qword_27CD28A28, &qword_21A457EC8);
    sub_21A3D3BF0(v19, &qword_27CD28A28, &qword_21A457EC8);
    (*(v3 + 8))(v42, v2);
LABEL_6:
    sub_21A3D3BF0(v10, &qword_27CD28A20, &qword_21A457EC0);
LABEL_7:
    v26 = 0;
LABEL_11:
    (*(v40 + 8))(v23, v41);
    return v26 & 1;
  }

  v27 = v39;
  (*(v3 + 32))(v39, &v10[v24], v2);
  v28 = v42;
  v38 = sub_21A451004();
  v29 = *(v3 + 8);
  v29(v27, v2);
  sub_21A3D3BF0(v17, &qword_27CD28A28, &qword_21A457EC8);
  sub_21A3D3BF0(v19, &qword_27CD28A28, &qword_21A457EC8);
  v29(v28, v2);
  sub_21A3D3BF0(v10, &qword_27CD28A28, &qword_21A457EC8);
  if ((v38 & 1) == 0)
  {
    goto LABEL_7;
  }

LABEL_9:
  v30 = sub_21A451B64();
  v31 = v30[2];
  v32 = v30[3];
  v33 = v30[4];
  v34 = v30[5];
  swift_getObjectType();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v35 = sub_21A451764();
  swift_getObjectType();
  result = sub_21A451764();
  if (v35 == result)
  {
    v26 = sub_21A451774();

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    goto LABEL_11;
  }

  __break(1u);
  return result;
}

uint64_t sub_21A424F34(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD28A30, &unk_21A457ED0);
    v3 = sub_21A451704();
    v4 = 0;
    v5 = v3 + 56;
    v27 = v1;
    v28 = a1 + 32;
    v6 = v1;
    while (1)
    {
      v7 = *(v28 + 8 * v4);
      v8 = *(v3 + 40);
      sub_21A451084();
      sub_21A451B04();
      v29 = v7;
      sub_21A451144();
      v9 = sub_21A451B24();

      v11 = -1 << *(v3 + 32);
      v12 = v9 & ~v11;
      v13 = v12 >> 6;
      v14 = *(v5 + 8 * (v12 >> 6));
      v15 = 1 << v12;
      if (((1 << v12) & v14) == 0)
      {
        goto LABEL_15;
      }

      v16 = ~v11;
      do
      {
        v17 = *(*(v3 + 48) + 8 * v12);
        v18 = sub_21A451084();
        v20 = v19;
        if (v18 == sub_21A451084() && v20 == v21)
        {

LABEL_4:
          v6 = v27;
          goto LABEL_5;
        }

        v23 = sub_21A4519B4();

        if (v23)
        {

          goto LABEL_4;
        }

        v12 = (v12 + 1) & v16;
        v13 = v12 >> 6;
        v14 = *(v5 + 8 * (v12 >> 6));
        v15 = 1 << v12;
      }

      while (((1 << v12) & v14) != 0);
      v6 = v27;
LABEL_15:
      *(v5 + 8 * v13) = v15 | v14;
      *(*(v3 + 48) + 8 * v12) = v29;
      v24 = *(v3 + 16);
      v25 = __OFADD__(v24, 1);
      v26 = v24 + 1;
      if (v25)
      {
        __break(1u);
        return result;
      }

      *(v3 + 16) = v26;
LABEL_5:
      if (++v4 == v6)
      {
        return v3;
      }
    }
  }

  return MEMORY[0x277D84FA0];
}

uint64_t sub_21A425138(uint64_t a1, char *a2)
{
  v4 = v2;
  v14 = *MEMORY[0x277D85DE8];
  v5 = *a2;
  *(v2 + 16) = a1;
  type metadata accessor for TensorDescriptor();
  swift_allocObject();
  v6 = sub_21A409738();
  if (!v3)
  {
    v7 = v6;
    *(v4 + 24) = v6;
    type metadata accessor for Buffer();
    swift_allocObject();
    v8 = *(v7 + 16);

    v9 = e5rt_tensor_desc_alloc_buffer_object();
    sub_21A3DCF54(v9);
    sub_21A3DCAF8();
    swift_allocError();
    *v10 = 6;
    swift_willThrow();

    swift_deallocPartialClassInstance();
    v11 = *(v4 + 24);
  }

  type metadata accessor for IOPort();
  swift_deallocPartialClassInstance();
  v12 = *MEMORY[0x277D85DE8];
  return v4;
}

void *sub_21A425320(uint64_t a1)
{
  v1[2] = a1;
  type metadata accessor for TensorDescriptor();
  swift_allocObject();
  v3 = sub_21A409738();
  if (v2)
  {
    type metadata accessor for IOPort();
    swift_deallocPartialClassInstance();
  }

  else
  {
    v1[3] = v3;

    sub_21A409638();

    type metadata accessor for Buffer();
    swift_allocObject();
    v4 = Buffer.init(from:size:)();
    v1[4] = v4;
    v6 = v1[2];
    v7 = *(v4 + 16);
    v8 = e5rt_io_port_bind_buffer_object();
    sub_21A3DCF54(v8);
  }

  return v1;
}

void *sub_21A425434(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  type metadata accessor for TensorDescriptor();
  swift_allocObject();
  v5 = sub_21A409738();
  if (v3)
  {

    type metadata accessor for IOPort();
    swift_deallocPartialClassInstance();
  }

  else
  {
    v2[3] = v5;
    v2[4] = a2;
    v6 = v2[2];
    v7 = *(a2 + 16);

    v8 = e5rt_io_port_bind_buffer_object();
    sub_21A3DCF54(v8);
  }

  return v2;
}

void *sub_21A425508(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;

  sub_21A409638();
  type metadata accessor for Buffer();
  swift_allocObject();
  v4 = Buffer.init(from:size:)();
  if (v3)
  {

    v5 = v2[3];

    type metadata accessor for IOPort();
    swift_deallocPartialClassInstance();
  }

  else
  {
    v2[4] = v4;
    v6 = v2[2];
    v7 = *(v4 + 16);
    v8 = e5rt_io_port_bind_buffer_object();
    sub_21A3DCF54(v8);
  }

  return v2;
}

void *IOPort.deinit()
{
  v6 = *MEMORY[0x277D85DE8];
  v5 = v0[2];
  e5rt_io_port_release();
  v1 = v0[3];

  v2 = v0[4];

  v3 = *MEMORY[0x277D85DE8];
  return v0;
}

uint64_t IOPort.__deallocating_deinit()
{
  v6 = *MEMORY[0x277D85DE8];
  v5 = v0[2];
  e5rt_io_port_release();
  v1 = v0[3];

  v2 = v0[4];

  result = swift_deallocClassInstance();
  v4 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_21A425718(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEA0000000000646FLL;
  v3 = 0x72505F4C4D646F44;
  v4 = a1;
  v5 = 0x69676174535F4B43;
  v6 = 0xEA0000000000676ELL;
  if (a1 != 5)
  {
    v5 = 0x69445F6C61636F4CLL;
    v6 = 0xEF79726F74636572;
  }

  v7 = 0xE700000000000000;
  v8 = 0x646F72505F4B43;
  if (a1 != 3)
  {
    v8 = 0x79727261435F4B43;
    v7 = 0xE800000000000000;
  }

  if (a1 <= 4u)
  {
    v5 = v8;
    v6 = v7;
  }

  v9 = 0x61435F4C4D646F44;
  v10 = 0xEB00000000797272;
  if (a1 != 1)
  {
    v9 = 0x74535F4C4D646F44;
    v10 = 0xED0000676E696761;
  }

  if (!a1)
  {
    v9 = 0x72505F4C4D646F44;
    v10 = 0xEA0000000000646FLL;
  }

  if (a1 <= 2u)
  {
    v11 = v9;
  }

  else
  {
    v11 = v5;
  }

  if (v4 <= 2)
  {
    v12 = v10;
  }

  else
  {
    v12 = v6;
  }

  if (a2 <= 2u)
  {
    if (a2)
    {
      if (a2 == 1)
      {
        v2 = 0xEB00000000797272;
        if (v11 != 0x61435F4C4D646F44)
        {
          goto LABEL_36;
        }
      }

      else
      {
        v2 = 0xED0000676E696761;
        if (v11 != 0x74535F4C4D646F44)
        {
          goto LABEL_36;
        }
      }

      goto LABEL_33;
    }
  }

  else
  {
    if (a2 > 4u)
    {
      if (a2 == 5)
      {
        v2 = 0xEA0000000000676ELL;
        if (v11 != 0x69676174535F4B43)
        {
          goto LABEL_36;
        }
      }

      else
      {
        v2 = 0xEF79726F74636572;
        if (v11 != 0x69445F6C61636F4CLL)
        {
          goto LABEL_36;
        }
      }

      goto LABEL_33;
    }

    if (a2 == 3)
    {
      v2 = 0xE700000000000000;
      if (v11 != 0x646F72505F4B43)
      {
        goto LABEL_36;
      }

      goto LABEL_33;
    }

    v2 = 0xE800000000000000;
    v3 = 0x79727261435F4B43;
  }

  if (v11 != v3)
  {
LABEL_36:
    v13 = sub_21A4519B4();
    goto LABEL_37;
  }

LABEL_33:
  if (v12 != v2)
  {
    goto LABEL_36;
  }

  v13 = 1;
LABEL_37:

  return v13 & 1;
}