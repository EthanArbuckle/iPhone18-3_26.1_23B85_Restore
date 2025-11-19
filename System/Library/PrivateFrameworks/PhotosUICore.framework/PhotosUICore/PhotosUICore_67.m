uint64_t sub_1A44A0BD4@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  result = (*(v4 + 16))(v3, v4);
  *a2 = result;
  a2[1] = v6;
  return result;
}

uint64_t sub_1A44A0CA8@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v32 = a2;
  v35 = a3;
  sub_1A44A5D0C(0, &qword_1EB127480, MEMORY[0x1E6981148], MEMORY[0x1E6981138], MEMORY[0x1E697D670]);
  v34 = v4;
  v31 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v30 - v5;
  sub_1A44A577C();
  v33 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A44A5260();
  v11 = v10;
  v12 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a1[3];
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v15);
  v17 = *((*(v16 + 40))(v15, v16) + 16);

  v18 = a1[3];
  v19 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v18);
  v20 = (*(v19 + 16))(v18, v19);
  if (v17)
  {
    *&v37[0] = v20;
    *(&v37[0] + 1) = v21;
    MEMORY[0x1EEE9AC00](v20);
    v22 = v32;
    *(&v30 - 2) = a1;
    *(&v30 - 1) = v22;
    sub_1A44A52C8();
    sub_1A44A5560();
    sub_1A3D5F9DC();
    sub_1A524BA14();
    (*(v12 + 16))(v9, v14, v11);
    swift_storeEnumTagMultiPayload();
    sub_1A44A54D4();
    sub_1A44A2FD0(&qword_1EB127490, &qword_1EB127480, MEMORY[0x1E6981148], MEMORY[0x1E6981138]);
    sub_1A5249744();
    return (*(v12 + 8))(v14, v11);
  }

  else
  {
    v39 = v20;
    v40 = v21;
    sub_1A44A402C(v32, v37);
    sub_1A3C341C8(a1, v36);
    v24 = swift_allocObject();
    v25 = v37[5];
    v24[5] = v37[4];
    v24[6] = v25;
    v24[7] = v38[0];
    *(v24 + 121) = *(v38 + 9);
    v26 = v37[1];
    v24[1] = v37[0];
    v24[2] = v26;
    v27 = v37[3];
    v24[3] = v37[2];
    v24[4] = v27;
    sub_1A3C34460(v36, (v24 + 9));
    sub_1A3D5F9DC();
    sub_1A524B754();
    v28 = v31;
    v29 = v34;
    (*(v31 + 16))(v9, v6, v34);
    swift_storeEnumTagMultiPayload();
    sub_1A44A54D4();
    sub_1A44A2FD0(&qword_1EB127490, &qword_1EB127480, MEMORY[0x1E6981148], MEMORY[0x1E6981138]);
    sub_1A5249744();
    return (*(v28 + 8))(v6, v29);
  }
}

uint64_t sub_1A44A115C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1A5249234();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v13[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = *(a1 + 112);
  v9 = *(a1 + 120);

  if ((v9 & 1) == 0)
  {
    sub_1A524D254();
    v11 = sub_1A524A014();
    sub_1A5246DF4();

    sub_1A5249224();
    swift_getAtKeyPath();
    j__swift_release(v8, 0);
    result = (*(v5 + 8))(v7, v4);
    v8 = v14[0];
  }

  if (v8)
  {

    v12 = sub_1A457FAB4();

    (*(a1 + 48))(v12, a2);
    sub_1A3C341C8(a2, v14);
    sub_1A44A46E4(v14, v13, sub_1A44A3F94);
    sub_1A449BAB0(0, &qword_1EB13BE68, sub_1A44A3F94, MEMORY[0x1E6981790]);
    sub_1A524B6B4();

    return sub_1A449BA1C(v14, sub_1A44A3F94);
  }

  return result;
}

void sub_1A44A137C(uint64_t a1@<X8>)
{
  *a1 = sub_1A5249314();
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  sub_1A44A4E24(0, &qword_1EB13BDE8, sub_1A44A4E90);
  sub_1A44A0628(v1);
}

void sub_1A44A13F0()
{
  if (*(v0 + 32))
  {
    sub_1A5249574();
  }

  else
  {
    sub_1A5249584();
  }

  sub_1A3D5F9DC();
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

double sub_1A44A16BC@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = v2;
  v5 = sub_1A3D5C0BC(a1);
  if (v6)
  {
    v7 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    v11 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1A44A1D78();
      v9 = v11;
    }

    sub_1A3D5FAFC(*(v9 + 48) + 40 * v7);
    sub_1A3C57128((*(v9 + 56) + 32 * v7), a2);
    sub_1A44A1A0C(v7, v9);
    *v3 = v9;
  }

  else
  {
    result = 0.0;
    *a2 = 0u;
    a2[1] = 0u;
  }

  return result;
}

uint64_t sub_1A44A1760(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_1A3FDA25C();
  result = sub_1A524E774();
  v7 = result;
  if (*(v5 + 16))
  {
    v34 = v2;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v19 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v22 = v19 | (v8 << 6);
      v23 = *(v5 + 48) + 40 * v22;
      if (a2)
      {
        v24 = *v23;
        v25 = *(v23 + 16);
        v38 = *(v23 + 32);
        v36 = v24;
        v37 = v25;
        sub_1A3C57128((*(v5 + 56) + 32 * v22), v35);
      }

      else
      {
        sub_1A3D5FB50(v23, &v36);
        sub_1A3C2F0BC(*(v5 + 56) + 32 * v22, v35);
      }

      result = sub_1A524E354();
      v26 = -1 << *(v7 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v14 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v14 + 8 * v28);
          if (v32 != -1)
          {
            v15 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v27) & ~*(v14 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = *(v7 + 48) + 40 * v15;
      v17 = v36;
      v18 = v37;
      *(v16 + 32) = v38;
      *v16 = v17;
      *(v16 + 16) = v18;
      result = sub_1A3C57128(v35, (*(v7 + 56) + 32 * v15));
      ++*(v7 + 16);
    }

    v20 = v8;
    while (1)
    {
      v8 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v21 = v9[v8];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v12 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if (a2)
    {
      v33 = 1 << *(v5 + 32);
      if (v33 >= 64)
      {
        bzero((v5 + 64), ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v33;
      }

      *(v5 + 16) = 0;
    }

    v3 = v34;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

uint64_t sub_1A44A1A0C(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1A524E244() + 1) & ~v5;
    do
    {
      sub_1A3D5FB50(*(a2 + 48) + 40 * v6, v25);
      v10 = sub_1A524E354();
      result = sub_1A3D5FAFC(v25);
      v11 = v10 & v7;
      if (v3 >= v8)
      {
        if (v11 >= v8 && v3 >= v11)
        {
LABEL_15:
          v14 = *(a2 + 48);
          v15 = v14 + 40 * v3;
          v16 = (v14 + 40 * v6);
          if (v3 != v6 || v15 >= v16 + 40)
          {
            v17 = *v16;
            v18 = v16[1];
            *(v15 + 32) = *(v16 + 4);
            *v15 = v17;
            *(v15 + 16) = v18;
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
      }

      else if (v11 >= v8 || v3 >= v11)
      {
        goto LABEL_15;
      }

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

_OWORD *sub_1A44A1BB0(_OWORD *a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v10 = sub_1A3D5C0BC(a2);
  v11 = v8[2];
  v12 = (v9 & 1) == 0;
  v13 = v11 + v12;
  if (__OFADD__(v11, v12))
  {
    __break(1u);
    goto LABEL_15;
  }

  v14 = v9;
  v15 = v8[3];
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 >= v13 && (a3 & 1) == 0)
    {
      sub_1A44A1D78();
      goto LABEL_7;
    }

    sub_1A44A1760(v13, a3 & 1);
    v19 = sub_1A3D5C0BC(a2);
    if ((v14 & 1) == (v20 & 1))
    {
      v10 = v19;
      v16 = *v4;
      if (v14)
      {
        goto LABEL_8;
      }

LABEL_13:
      sub_1A3D5FB50(a2, v21);
      return sub_1A44A1CFC(v10, v21, a1, v16);
    }

LABEL_15:
    result = sub_1A524EB84();
    __break(1u);
    return result;
  }

LABEL_7:
  v16 = *v4;
  if ((v14 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v17 = (v16[7] + 32 * v10);
  __swift_destroy_boxed_opaque_existential_0(v17);

  return sub_1A3C57128(a1, v17);
}

_OWORD *sub_1A44A1CFC(unint64_t a1, uint64_t a2, _OWORD *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v5 = a4[6] + 40 * a1;
  v6 = *(a2 + 16);
  *v5 = *a2;
  *(v5 + 16) = v6;
  *(v5 + 32) = *(a2 + 32);
  result = sub_1A3C57128(a3, (a4[7] + 32 * a1));
  v8 = a4[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v10;
  }

  return result;
}

void *sub_1A44A1D78()
{
  v1 = v0;
  sub_1A3FDA25C();
  v2 = *v0;
  v3 = sub_1A524E764();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = 40 * v17;
        sub_1A3D5FB50(*(v2 + 48) + 40 * v17, v23);
        v17 *= 32;
        sub_1A3C2F0BC(*(v2 + 56) + v17, v22);
        v19 = *(v4 + 48) + v18;
        v20 = v23[0];
        v21 = v23[1];
        *(v19 + 32) = v24;
        *v19 = v20;
        *(v19 + 16) = v21;
        result = sub_1A3C57128(v22, (*(v4 + 56) + v17));
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

uint64_t sub_1A44A1F10(uint64_t a1)
{
  v2 = sub_1A5249484();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v37 = &v30 - v7;
  v8 = *(a1 + 16);
  if (v8)
  {
    sub_1A44A3904();
    v9 = sub_1A524E3D4();
    v10 = 0;
    v12 = *(v3 + 16);
    v11 = v3 + 16;
    v35 = v12;
    v36 = v9 + 56;
    v13 = *(v11 + 64);
    v32 = v8;
    v33 = a1 + ((v13 + 32) & ~v13);
    v14 = *(v11 + 56);
    v15 = (v11 - 8);
    v31 = (v11 + 16);
    while (1)
    {
      v34 = v10;
      v35(v37, v33 + v14 * v10, v2);
      sub_1A449C0A0(&qword_1EB13DA40, MEMORY[0x1E697C4F8]);
      v16 = sub_1A524C4A4();
      v17 = ~(-1 << *(v9 + 32));
      v18 = v16 & v17;
      v19 = (v16 & v17) >> 6;
      v20 = *(v36 + 8 * v19);
      v21 = 1 << (v16 & v17);
      if ((v21 & v20) != 0)
      {
        while (1)
        {
          v22 = v11;
          v35(v5, *(v9 + 48) + v18 * v14, v2);
          sub_1A449C0A0(&qword_1EB13BD00, MEMORY[0x1E697C4F8]);
          v23 = sub_1A524C594();
          v24 = *v15;
          (*v15)(v5, v2);
          if (v23)
          {
            break;
          }

          v18 = (v18 + 1) & v17;
          v19 = v18 >> 6;
          v20 = *(v36 + 8 * (v18 >> 6));
          v21 = 1 << v18;
          v11 = v22;
          if (((1 << v18) & v20) == 0)
          {
            goto LABEL_8;
          }
        }

        v24(v37, v2);
        v11 = v22;
      }

      else
      {
LABEL_8:
        v25 = v37;
        *(v36 + 8 * v19) = v21 | v20;
        result = (*v31)(*(v9 + 48) + v18 * v14, v25, v2);
        v27 = *(v9 + 16);
        v28 = __OFADD__(v27, 1);
        v29 = v27 + 1;
        if (v28)
        {
          __break(1u);
          return result;
        }

        *(v9 + 16) = v29;
      }

      v10 = v34 + 1;
      if (v34 + 1 == v32)
      {
        return v9;
      }
    }
  }

  return MEMORY[0x1E69E7CD0];
}

uint64_t sub_1A44A2224(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TTRWorkflowView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_1A44A2288(_BYTE *a1, _BYTE *a2)
{
  type metadata accessor for TTRWorkflowView(0);

  sub_1A449C158(a1, a2);
}

unint64_t sub_1A44A2308()
{
  result = qword_1EB13BBE0;
  if (!qword_1EB13BBE0)
  {
    sub_1A449BE94(255);
    sub_1A449BB14(255);
    sub_1A449BFC0();
    swift_getOpaqueTypeConformance2();
    sub_1A449C0A0(&qword_1EB13BBE8, sub_1A449C0E8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13BBE0);
  }

  return result;
}

uint64_t sub_1A44A23E8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1A44A2448()
{
  if (!qword_1EB13BBF0)
  {
    sub_1A44A24DC();
    sub_1A44A2574(255, &qword_1EB1277F0, &qword_1EB127560, MEMORY[0x1E69815C0], MEMORY[0x1E6980A08]);
    v0 = sub_1A5248804();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB13BBF0);
    }
  }
}

void sub_1A44A24DC()
{
  if (!qword_1EB13BBF8)
  {
    sub_1A449BE94(255);
    sub_1A44A2308();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB13BBF8);
    }
  }
}

void sub_1A44A2574(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    sub_1A44A6498(255, a3, a4, MEMORY[0x1E69E6720]);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_1A44A2634()
{
  sub_1A449BAB0(319, &qword_1EB1201F0, sub_1A3C3637C, MEMORY[0x1E69E6720]);
  if (v0 <= 0x3F)
  {
    type metadata accessor for TTRWorkflowDataSource();
    if (v1 <= 0x3F)
    {
      sub_1A449BAB0(319, &qword_1EB13BBC8, type metadata accessor for TTRWorkflowViewModel, MEMORY[0x1E697DA80]);
      if (v2 <= 0x3F)
      {
        sub_1A449BA7C(319);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_1A44A2768()
{
  result = sub_1A5241614();
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

unint64_t sub_1A44A2828()
{
  result = qword_1EB13BC00;
  if (!qword_1EB13BC00)
  {
    sub_1A44A2448();
    sub_1A449BE94(255);
    sub_1A44A2308();
    swift_getOpaqueTypeConformance2();
    sub_1A3F94B48();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13BC00);
  }

  return result;
}

void sub_1A44A292C()
{
  if (!qword_1EB13BC10)
  {
    sub_1A44A29FC(255);
    sub_1A44A319C(&qword_1EB13BC98, sub_1A44A29FC, sub_1A44A3160);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB13BC10);
    }
  }
}

void sub_1A44A2A38(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3(255);
    v10 = a5(a1, v9, a4);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

void sub_1A44A2B1C()
{
  if (!qword_1EB13BC30)
  {
    sub_1A44A2BB0(255);
    sub_1A449C0A0(&qword_1EB13BC90, sub_1A44A2BB0);
    v0 = sub_1A524B894();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB13BC30);
    }
  }
}

void sub_1A44A2BE4()
{
  if (!qword_1EB13BC40)
  {
    sub_1A44A2C90();
    sub_1A44A6498(255, &qword_1EB127690, MEMORY[0x1E6981148], MEMORY[0x1E69E6720]);
    sub_1A44A3034();
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata, &qword_1EB13BC40);
    }
  }
}

void sub_1A44A2C90()
{
  if (!qword_1EB13BC48)
  {
    sub_1A44A2D24();
    sub_1A44A5D0C(255, &qword_1EB1284E0, MEMORY[0x1E6981840], MEMORY[0x1E697E048], MEMORY[0x1E697E830]);
    v0 = sub_1A5249754();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB13BC48);
    }
  }
}

void sub_1A44A2D24()
{
  if (!qword_1EB13BC50)
  {
    sub_1A44A2DB8(255);
    sub_1A449C0A0(&qword_1EB13BC70, sub_1A44A2DB8);
    v0 = sub_1A524B784();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB13BC50);
    }
  }
}

void sub_1A44A2E14()
{
  if (!qword_1EB13BC68)
  {
    sub_1A44A2EA8();
    sub_1A44A2574(255, &qword_1EB1277F0, &qword_1EB127560, MEMORY[0x1E69815C0], MEMORY[0x1E6980A08]);
    v0 = sub_1A5248804();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB13BC68);
    }
  }
}

void sub_1A44A2EA8()
{
  if (!qword_1EB121F28)
  {
    v0 = MEMORY[0x1E6981E70];
    v1 = MEMORY[0x1E6981E60];
    sub_1A44A5D0C(255, &unk_1EB121A38, MEMORY[0x1E6981E70], MEMORY[0x1E6981E60], MEMORY[0x1E697D670]);
    sub_1A5242424();
    sub_1A44A2FD0(&qword_1EB121A48, &unk_1EB121A38, v0, v1);
    sub_1A449C0A0(&qword_1EB124F48, MEMORY[0x1E69C1E30]);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v3)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB121F28);
    }
  }
}

uint64_t sub_1A44A2FD0(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_1A44A5D0C(255, a2, a3, a4, MEMORY[0x1E697D670]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1A44A3034()
{
  if (!qword_1EB13BC78)
  {
    sub_1A44A6498(255, &qword_1EB13BC80, &type metadata for TTRWorkflowAction, MEMORY[0x1E69E62F8]);
    sub_1A44A30E4();
    v0 = sub_1A524B9D4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB13BC78);
    }
  }
}

unint64_t sub_1A44A30E4()
{
  result = qword_1EB13BC88;
  if (!qword_1EB13BC88)
  {
    sub_1A44A6498(255, &qword_1EB13BC80, &type metadata for TTRWorkflowAction, MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13BC88);
  }

  return result;
}

uint64_t sub_1A44A319C(unint64_t *a1, void (*a2)(uint64_t), void (*a3)(void))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    a3();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1A44A321C()
{
  result = qword_1EB13BCA8;
  if (!qword_1EB13BCA8)
  {
    sub_1A44A2AE0(255);
    sub_1A449C0A0(&qword_1EB13BCB0, sub_1A44A2B1C);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13BCA8);
  }

  return result;
}

unint64_t sub_1A44A32CC()
{
  result = qword_1EB13BCB8;
  if (!qword_1EB13BCB8)
  {
    sub_1A449BEC8(255, &qword_1EB13BC08, sub_1A44A292C, sub_1A410AB24);
    sub_1A44A29FC(255);
    sub_1A44A319C(&qword_1EB13BC98, sub_1A44A29FC, sub_1A44A3160);
    swift_getOpaqueTypeConformance2();
    sub_1A449C0A0(&unk_1EB127B30, sub_1A410AB24);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13BCB8);
  }

  return result;
}

unint64_t sub_1A44A349C()
{
  result = qword_1EB1C36F8;
  if (!qword_1EB1C36F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1C36F8);
  }

  return result;
}

void sub_1A44A354C()
{
  if (!qword_1EB13BCD0)
  {
    sub_1A44A2D24();
    sub_1A44A5D0C(255, &qword_1EB1284E0, MEMORY[0x1E6981840], MEMORY[0x1E697E048], MEMORY[0x1E697E830]);
    v0 = sub_1A5249734();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB13BCD0);
    }
  }
}

uint64_t sub_1A44A35E0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t objectdestroy_45Tm()
{

  j__swift_release(*(v0 + 80), *(v0 + 88));

  return swift_deallocObject();
}

uint64_t sub_1A44A36BC(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t a4)
{
  sub_1A44A6498(0, a3, a4, MEMORY[0x1E69E6720]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1A44A373C(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_1A44A37A0()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = *(v2 + 24);
  v4 = *(v2 + 32);
  v6 = *(v1 + 16);
  v5 = *(v1 + 32);
  v7 = *(v1 + 48);
  *(v2 + 24) = *v1;
  *(v2 + 72) = v7;
  *(v2 + 56) = v5;
  *(v2 + 40) = v6;
  sub_1A44A36BC(v1, v9, &qword_1EB13BCE8, &type metadata for TTRWorkflowStep);
  return sub_1A44A373C(v3, v4);
}

void sub_1A44A384C(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }
}

unint64_t sub_1A44A38B0()
{
  result = qword_1EB13BCF0;
  if (!qword_1EB13BCF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13BCF0);
  }

  return result;
}

void sub_1A44A3904()
{
  if (!qword_1EB13BCF8)
  {
    sub_1A5249484();
    sub_1A449C0A0(&qword_1EB13DA40, MEMORY[0x1E697C4F8]);
    v0 = sub_1A524E3E4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB13BCF8);
    }
  }
}

void sub_1A44A3998(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for TTRWorkflowView(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  sub_1A449B798(a1, v6, a2);
}

uint64_t sub_1A44A3A18(uint64_t a1)
{
  sub_1A44A2574(0, &qword_1EB13BD10, &qword_1EB13BCE8, &type metadata for TTRWorkflowStep, MEMORY[0x1E6981948]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t objectdestroy_8Tm_0()
{
  v1 = type metadata accessor for TTRWorkflowView(0);
  v2 = v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80));

  j__swift_release(*(v2 + 64), *(v2 + 72));

  if (*(v2 + 104))
  {
  }

  v3 = v2 + *(v1 + 32);
  sub_1A449BAB0(0, &qword_1EB13BBD0, type metadata accessor for TTRWorkflowViewModel, MEMORY[0x1E6981E90]);
  (*(*(v4 - 8) + 8))(v3, v4);
  sub_1A449BAB0(0, &qword_1EB13BBD8, type metadata accessor for TTRWorkflowViewModel, MEMORY[0x1E6981E98]);

  v5 = *(v1 + 36);
  sub_1A449BAB0(0, &unk_1EB128A60, MEMORY[0x1E697BF90], MEMORY[0x1E697DCB8]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_1A5248284();
    (*(*(v6 - 8) + 8))(v2 + v5, v6);
  }

  else
  {
  }

  return swift_deallocObject();
}

unint64_t sub_1A44A3D70()
{
  result = qword_1EB1C3708[0];
  if (!qword_1EB1C3708[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB1C3708);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_12PhotosUICore14TTRRadarObjectCIegg_Sg(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t get_enum_tag_for_layout_string_12PhotosUICore17TTRWorkflowActionO(uint64_t a1)
{
  if ((*(a1 + 72) & 4) != 0)
  {
    return (*a1 + 4);
  }

  else
  {
    return *(a1 + 72) & 7;
  }
}

uint64_t sub_1A44A3E08(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFC && *(a1 + 73))
  {
    return (*a1 + 252);
  }

  v3 = *(a1 + 72);
  if (v3 <= 4)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1A44A3E50(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFB)
  {
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 72) = 0;
    *result = a2 - 252;
    if (a3 >= 0xFC)
    {
      *(result + 73) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFC)
    {
      *(result + 73) = 0;
    }

    if (a2)
    {
      *(result + 72) = -a2;
    }
  }

  return result;
}

void sub_1A44A3EC8()
{
  if (!qword_1EB13BD20)
  {
    sub_1A449BEC8(255, &qword_1EB13BC08, sub_1A44A292C, sub_1A410AB24);
    sub_1A44A32CC();
    v0 = sub_1A5247D04();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB13BD20);
    }
  }
}

unint64_t sub_1A44A3FC8()
{
  result = qword_1EB13BD30;
  if (!qword_1EB13BD30)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EB13BD30);
  }

  return result;
}

unint64_t sub_1A44A4064()
{
  result = qword_1EB1C3890;
  if (!qword_1EB1C3890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1C3890);
  }

  return result;
}

unint64_t sub_1A44A40B8()
{
  result = qword_1EB1C3898;
  if (!qword_1EB1C3898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1C3898);
  }

  return result;
}

uint64_t sub_1A44A410C(uint64_t a1, uint64_t a2)
{
  sub_1A44A5D0C(0, &qword_1EB13BD38, &type metadata for TTRActionSwitchView, &type metadata for TTRActionMenuView, MEMORY[0x1E697F960]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1A44A419C()
{
  if (!qword_1EB13BD40)
  {
    v0 = MEMORY[0x1E697F960];
    sub_1A44A5D0C(255, &qword_1EB13BD48, &type metadata for TTRActionButtonView, &type metadata for TTRActionButtonView, MEMORY[0x1E697F960]);
    sub_1A44A5D0C(255, &qword_1EB13BD50, &type metadata for TTRActionSwitchView, &type metadata for TTRActionSwitchView, v0);
    v1 = sub_1A5249754();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB13BD40);
    }
  }
}

unint64_t sub_1A44A4250()
{
  result = qword_1EB13BD58;
  if (!qword_1EB13BD58)
  {
    sub_1A44A419C();
    sub_1A44A437C(&qword_1EB13BD60, &qword_1EB13BD48, &type metadata for TTRActionButtonView, sub_1A44A4328);
    sub_1A44A437C(&qword_1EB13BD68, &qword_1EB13BD50, &type metadata for TTRActionSwitchView, sub_1A44A4064);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13BD58);
  }

  return result;
}

unint64_t sub_1A44A4328()
{
  result = qword_1EB1C38A0[0];
  if (!qword_1EB1C38A0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB1C38A0);
  }

  return result;
}

uint64_t sub_1A44A437C(unint64_t *a1, unint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_1A44A5D0C(255, a2, a3, a3, MEMORY[0x1E697F960]);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1A44A440C()
{
  result = qword_1EB13BD70;
  if (!qword_1EB13BD70)
  {
    sub_1A44A5D0C(255, &qword_1EB13BD38, &type metadata for TTRActionSwitchView, &type metadata for TTRActionMenuView, MEMORY[0x1E697F960]);
    sub_1A44A4064();
    sub_1A44A40B8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13BD70);
  }

  return result;
}

uint64_t sub_1A44A44B8(uint64_t a1)
{
  sub_1A44A5D0C(0, &qword_1EB13BD38, &type metadata for TTRActionSwitchView, &type metadata for TTRActionMenuView, MEMORY[0x1E697F960]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1A44A4674()
{
  if (!qword_1EB13BD88)
  {
    sub_1A43203D4(255);
    sub_1A40745F4();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB13BD88);
    }
  }
}

uint64_t sub_1A44A46E4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t get_enum_tag_for_layout_string_12PhotosUICore17TTRWorkflowActionO8MenuItem_pSg(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 __swift_memcpy121_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  result = a2[4];
  v6 = a2[5];
  v7 = a2[6];
  *(a1 + 105) = *(a2 + 105);
  *(a1 + 80) = v6;
  *(a1 + 96) = v7;
  *(a1 + 64) = result;
  return result;
}

uint64_t sub_1A44A4790(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 121))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1A44A47D8(uint64_t result, int a2, int a3)
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
    *(result + 120) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 121) = 1;
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
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 121) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1A44A4848(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 81))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1A44A4890(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 80) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 81) = 1;
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
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 81) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1A44A48F8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 89))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1A44A4940(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 88) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 89) = 1;
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
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 89) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1A44A49A8()
{
  result = qword_1EB13BD90;
  if (!qword_1EB13BD90)
  {
    sub_1A44A4A28();
    sub_1A44A4250();
    sub_1A44A440C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13BD90);
  }

  return result;
}

void sub_1A44A4A28()
{
  if (!qword_1EB13BD98)
  {
    sub_1A44A419C();
    sub_1A44A5D0C(255, &qword_1EB13BD38, &type metadata for TTRActionSwitchView, &type metadata for TTRActionMenuView, MEMORY[0x1E697F960]);
    v0 = sub_1A5249754();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB13BD98);
    }
  }
}

void sub_1A44A4ABC()
{
  if (!qword_1EB13BDA8)
  {
    sub_1A44A4640(255);
    sub_1A449C0A0(&qword_1EB13BDB0, sub_1A44A4640);
    v0 = sub_1A524B784();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB13BDA8);
    }
  }
}

void sub_1A44A4BD8()
{
  if (!qword_1EB13BDC8)
  {
    sub_1A44A4C40();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB13BDC8);
    }
  }
}

void sub_1A44A4C40()
{
  if (!qword_1EB13BDD0)
  {
    sub_1A44A4D08();
    sub_1A449C0A0(&qword_1EB13BDE0, sub_1A44A4D08);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB13BDD0);
    }
  }
}

void sub_1A44A4D08()
{
  if (!qword_1EB13BDD8)
  {
    sub_1A44A4D64();
    v0 = sub_1A524B874();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB13BDD8);
    }
  }
}

unint64_t sub_1A44A4D64()
{
  result = qword_1EB16C640[0];
  if (!qword_1EB16C640[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB16C640);
  }

  return result;
}

uint64_t sub_1A44A4DB8@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = v2[1];
  v7 = *v2;
  v6 = v3;
  *(a1 + 32) = *(v2 + 32);
  *a1 = *v2;
  *(a1 + 16) = v3;
  sub_1A3F30668(&v7, v5);
  return sub_1A44A36BC(&v6, v5, &qword_1EB126FA0, MEMORY[0x1E69E6158]);
}

void sub_1A44A4E24(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1A52483B4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1A44A4EEC(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v5)
    {
      atomic_store(TupleTypeMetadata3, a2);
    }
  }
}

void sub_1A44A4F60()
{
  if (!qword_1EB13BE00)
  {
    sub_1A44A5014();
    sub_1A449C0A0(&qword_1EB13BE60, sub_1A44A5014);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB13BE00);
    }
  }
}

void sub_1A44A5014()
{
  if (!qword_1EB13BE08)
  {
    sub_1A3E429B4();
    sub_1A44A50D0();
    sub_1A449C0A0(&qword_1EB1274F0, sub_1A3E429B4);
    sub_1A44A53BC();
    v0 = sub_1A524A2F4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB13BE08);
    }
  }
}

void sub_1A44A50D0()
{
  if (!qword_1EB13BE10)
  {
    sub_1A44A5198(255);
    sub_1A44A51CC();
    sub_1A449C0A0(&qword_1EB13BE38, sub_1A44A5198);
    v0 = sub_1A524B9D4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB13BE10);
    }
  }
}

void sub_1A44A51CC()
{
  if (!qword_1EB13BE20)
  {
    sub_1A44A5260();
    sub_1A44A5D0C(255, &qword_1EB127480, MEMORY[0x1E6981148], MEMORY[0x1E6981138], MEMORY[0x1E697D670]);
    v0 = sub_1A5249754();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB13BE20);
    }
  }
}

void sub_1A44A5260()
{
  if (!qword_1EB13BE28)
  {
    sub_1A44A52C8();
    v0 = sub_1A524BA74();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB13BE28);
    }
  }
}

void sub_1A44A52C8()
{
  if (!qword_1EB13BE30)
  {
    sub_1A44A5198(255);
    sub_1A44A5D0C(255, &qword_1EB127480, MEMORY[0x1E6981148], MEMORY[0x1E6981138], MEMORY[0x1E697D670]);
    sub_1A449C0A0(&qword_1EB13BE38, sub_1A44A5198);
    v0 = sub_1A524B9D4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB13BE30);
    }
  }
}

unint64_t sub_1A44A53BC()
{
  result = qword_1EB13BE40;
  if (!qword_1EB13BE40)
  {
    sub_1A44A50D0();
    sub_1A44A5434();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13BE40);
  }

  return result;
}

unint64_t sub_1A44A5434()
{
  result = qword_1EB13BE48;
  if (!qword_1EB13BE48)
  {
    sub_1A44A51CC();
    sub_1A44A54D4();
    sub_1A44A2FD0(&qword_1EB127490, &qword_1EB127480, MEMORY[0x1E6981148], MEMORY[0x1E6981138]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13BE48);
  }

  return result;
}

unint64_t sub_1A44A54D4()
{
  result = qword_1EB13BE50;
  if (!qword_1EB13BE50)
  {
    sub_1A44A5260();
    sub_1A44A5560();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13BE50);
  }

  return result;
}

unint64_t sub_1A44A5560()
{
  result = qword_1EB13BE58;
  if (!qword_1EB13BE58)
  {
    sub_1A44A52C8();
    sub_1A44A2FD0(&qword_1EB127490, &qword_1EB127480, MEMORY[0x1E6981148], MEMORY[0x1E6981138]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13BE58);
  }

  return result;
}

void sub_1A44A55F8()
{
  v1 = *(v0 + 16);
  v8 = *(v1 + 40);
  swift_getKeyPath();
  sub_1A44A402C(v1, v6);
  v2 = swift_allocObject();
  v3 = v6[5];
  v2[5] = v6[4];
  v2[6] = v3;
  v2[7] = v7[0];
  *(v2 + 121) = *(v7 + 9);
  v4 = v6[1];
  v2[1] = v6[0];
  v2[2] = v4;
  v5 = v6[3];
  v2[3] = v6[2];
  v2[4] = v5;
  sub_1A44A5198(0);
  sub_1A44A51CC();
  sub_1A449C0A0(&qword_1EB13BE38, sub_1A44A5198);
  sub_1A44A5434();
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

void sub_1A44A577C()
{
  if (!qword_1EB13BE70)
  {
    sub_1A44A5260();
    sub_1A44A5D0C(255, &qword_1EB127480, MEMORY[0x1E6981148], MEMORY[0x1E6981138], MEMORY[0x1E697D670]);
    v0 = sub_1A5249734();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB13BE70);
    }
  }
}

uint64_t sub_1A44A581C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = v1[3];
  v4 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v3);
  v14 = (*(v4 + 40))(v3, v4);
  swift_getKeyPath();
  sub_1A44A402C(v2, v12);
  v5 = swift_allocObject();
  v6 = v12[5];
  v5[5] = v12[4];
  v5[6] = v6;
  v5[7] = v13[0];
  *(v5 + 121) = *(v13 + 9);
  v7 = v12[1];
  v5[1] = v12[0];
  v5[2] = v7;
  v8 = v12[3];
  v5[3] = v12[2];
  v5[4] = v8;
  sub_1A44A5198(0);
  v9 = MEMORY[0x1E6981148];
  v10 = MEMORY[0x1E6981138];
  sub_1A44A5D0C(0, &qword_1EB127480, MEMORY[0x1E6981148], MEMORY[0x1E6981138], MEMORY[0x1E697D670]);
  sub_1A449C0A0(&qword_1EB13BE38, sub_1A44A5198);
  sub_1A44A2FD0(&qword_1EB127490, &qword_1EB127480, v9, v10);
  return sub_1A524B9B4();
}

uint64_t objectdestroy_102Tm()
{

  if (*(v0 + 104))
  {
    __swift_destroy_boxed_opaque_existential_0(v0 + 80);
  }

  j__swift_release(*(v0 + 128), *(v0 + 136));

  return swift_deallocObject();
}

uint64_t sub_1A44A5A54(void *a1)
{
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  v14 = (*(v4 + 16))(v3, v4);
  v15 = v5;
  sub_1A44A402C(v1 + 16, v12);
  sub_1A3C341C8(a1, v11);
  v6 = swift_allocObject();
  v7 = v12[5];
  v6[5] = v12[4];
  v6[6] = v7;
  v6[7] = v13[0];
  *(v6 + 121) = *(v13 + 9);
  v8 = v12[1];
  v6[1] = v12[0];
  v6[2] = v8;
  v9 = v12[3];
  v6[3] = v12[2];
  v6[4] = v9;
  sub_1A3C34460(v11, (v6 + 9));
  sub_1A3D5F9DC();
  return sub_1A524B754();
}

uint64_t objectdestroy_105Tm()
{

  if (*(v0 + 104))
  {
    __swift_destroy_boxed_opaque_existential_0(v0 + 80);
  }

  j__swift_release(*(v0 + 128), *(v0 + 136));
  __swift_destroy_boxed_opaque_existential_0(v0 + 144);

  return swift_deallocObject();
}

void sub_1A44A5BE4()
{
  if (!qword_1EB13BE78)
  {
    sub_1A44A5C80();
    sub_1A44A319C(&qword_1EB13BE90, sub_1A44A5C80, sub_1A44A5D60);
    v0 = sub_1A524B764();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB13BE78);
    }
  }
}

void sub_1A44A5C80()
{
  if (!qword_1EB13BE80)
  {
    sub_1A44A5D0C(255, &qword_1EB13BE88, &type metadata for TTRActionLabelView, MEMORY[0x1E697E5E0], MEMORY[0x1E697E830]);
    v0 = sub_1A5248804();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB13BE80);
    }
  }
}

void sub_1A44A5D0C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = a5(0, a3, a4);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

unint64_t sub_1A44A5D60()
{
  result = qword_1EB13BE98;
  if (!qword_1EB13BE98)
  {
    sub_1A44A5D0C(255, &qword_1EB13BE88, &type metadata for TTRActionLabelView, MEMORY[0x1E697E5E0], MEMORY[0x1E697E830]);
    sub_1A44A4D64();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13BE98);
  }

  return result;
}

double sub_1A44A5E14@<D0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = *v3;
  v29 = v3[1];
  v30 = v4;
  sub_1A3F30668(&v30, v21);
  sub_1A44A36BC(&v29, v21, &qword_1EB126FA0, MEMORY[0x1E69E6158]);
  v5 = sub_1A524A0C4();
  sub_1A5247BC4();
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v18 = *v3;
  v19 = v3[1];
  LOBYTE(v20) = *(v3 + 32);
  sub_1A524BC74();
  sub_1A5248AD4();
  *&v21[55] = v25;
  *&v21[71] = v26;
  *&v21[87] = v27;
  *&v21[103] = v28;
  *&v21[7] = v22;
  *&v21[23] = v23;
  *&v21[39] = v24;
  *(a1 + 32) = v20;
  *a1 = v18;
  *(a1 + 16) = v19;
  *(a1 + 40) = v5;
  *(a1 + 48) = v7;
  *(a1 + 56) = v9;
  *(a1 + 64) = v11;
  *(a1 + 72) = v13;
  *(a1 + 80) = 0;
  *(a1 + 145) = *&v21[64];
  v14 = *&v21[96];
  *(a1 + 161) = *&v21[80];
  *(a1 + 177) = v14;
  *(a1 + 192) = *&v21[111];
  v15 = *&v21[16];
  *(a1 + 81) = *v21;
  *(a1 + 97) = v15;
  result = *&v21[32];
  v17 = *&v21[48];
  *(a1 + 113) = *&v21[32];
  *(a1 + 129) = v17;
  return result;
}

void sub_1A44A5F94()
{
  if (!qword_1EB13BEA0)
  {
    sub_1A44A60D0();
    sub_1A44A5BE4();
    sub_1A5249E64();
    sub_1A449C0A0(&qword_1EB13BEB0, sub_1A44A5BE4);
    sub_1A449C0A0(&qword_1EB127A50, MEMORY[0x1E697CB70]);
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB13BEA0);
    }
  }
}

void sub_1A44A60D0()
{
  if (!qword_1EB13BEA8)
  {
    sub_1A44A5BE4();
    sub_1A5249E64();
    sub_1A449C0A0(&qword_1EB13BEB0, sub_1A44A5BE4);
    sub_1A449C0A0(&qword_1EB127A50, MEMORY[0x1E697CB70]);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB13BEA8);
    }
  }
}

void sub_1A44A61E4()
{
  if (!qword_1EB13BEC0)
  {
    sub_1A44A4BA4(255);
    sub_1A449C0A0(&qword_1EB13BEC8, sub_1A44A4BA4);
    v0 = sub_1A524B784();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB13BEC0);
    }
  }
}

void sub_1A44A6278()
{
  if (!qword_1EB13BED8)
  {
    sub_1A44A4E90(255);
    sub_1A449C0A0(&qword_1EB13BEE0, sub_1A44A4E90);
    v0 = sub_1A524B784();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB13BED8);
    }
  }
}

unint64_t sub_1A44A6328()
{
  result = qword_1EB13BEE8;
  if (!qword_1EB13BEE8)
  {
    sub_1A44A63D8();
    sub_1A449C0A0(&qword_1EB13BEF8, sub_1A4455020);
    sub_1A3FF8FF4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13BEE8);
  }

  return result;
}

void sub_1A44A63D8()
{
  if (!qword_1EB13BEF0)
  {
    sub_1A4455020();
    sub_1A44A6498(255, &unk_1EB127840, MEMORY[0x1E697E1E0], MEMORY[0x1E6980A08]);
    v0 = sub_1A5248804();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB13BEF0);
    }
  }
}

void sub_1A44A6498(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_1A44A6504(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (*((*(a5 + 16))(a4, a5) + 16))
  {
    sub_1A44A8850(a1);
    if (v8)
    {
      _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
    }
  }

  v9 = MEMORY[0x1E69E7CC0];

  v14[0] = a2;
  v14[1] = a3;
  MEMORY[0x1EEE9AC00](v10);
  v13[2] = v14;
  v11 = sub_1A3D3E5DC(sub_1A3D3E6C0, v13, v9);

  return v11 & 1;
}

void sub_1A44A6604()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1A44A93D4(&qword_1EB1294B8, type metadata accessor for NotificationsDismissalMutableController);

  sub_1A5245714();
}

uint64_t sub_1A44A66C8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 96))();
  *a2 = result;
  return result;
}

void sub_1A44A6714()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1A44A93D4(&qword_1EB1294B8, type metadata accessor for NotificationsDismissalMutableController);
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

void sub_1A44A67D4()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1A44A93D4(&qword_1EB1294B8, type metadata accessor for NotificationsDismissalMutableController);

  sub_1A5245724();
}

id sub_1A44A6880()
{
  result = [objc_opt_self() weakToWeakObjectsMapTable];
  qword_1EB178BD8 = result;
  return result;
}

id sub_1A44A68BC(uint64_t a1)
{
  v2 = sub_1A44A90F0();
  MEMORY[0x1EEE9AC00](v2);
  v3 = sub_1A524BFF4();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = (v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1A3C52C70(0, &qword_1EB12B180);
  *v6 = sub_1A524D474();
  (*(v4 + 104))(v6, *MEMORY[0x1E69E8020], v3);
  v7 = sub_1A524C024();
  (*(v4 + 8))(v6, v3);
  if (v7)
  {
    if (qword_1EB178BD0 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v8 = [qword_1EB178BD8 objectForKey_];
  if (!v8)
  {
    type metadata accessor for NotificationsDismissalMutableController(0);
    swift_allocObject();
    v9 = sub_1A44A8FEC(MEMORY[0x1E69E7CC0]);
    v11[0] = 1;
    v11[1] = v9;
    sub_1A44A9B7C(0, &qword_1EB126FF0, MEMORY[0x1E69E5E28]);
    sub_1A44A93D4(&qword_1EB1294B8, type metadata accessor for NotificationsDismissalMutableController);
    sub_1A44A8F58();
    sub_1A5245754();
  }

  return v8;
}

void sub_1A44A6BE0()
{
  v0 = sub_1A44A90F0();
  MEMORY[0x1EEE9AC00](v0);
  swift_allocObject();
  sub_1A44A8FEC(MEMORY[0x1E69E7CC0]);
  sub_1A44A9B7C(0, &qword_1EB126FF0, MEMORY[0x1E69E5E28]);
  sub_1A44A93D4(&qword_1EB1294B8, type metadata accessor for NotificationsDismissalMutableController);
  sub_1A44A8F58();
  sub_1A5245754();
}

void sub_1A44A6D94(char a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  *(v6 + 32) = a3;
  type metadata accessor for NotificationsDismissalMutableController(0);
  sub_1A44A93D4(&qword_1EB1294A8, type metadata accessor for NotificationsDismissalMutableController);
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

void sub_1A44A6E84()
{
  v1 = sub_1A5246F24();
  v2 = *(v1 - 8);
  v3 = MEMORY[0x1EEE9AC00](v1);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v23 - v6;
  v8 = [objc_opt_self() standardUserDefaults];
  v9 = sub_1A44A8FEC(MEMORY[0x1E69E7CC0]);
  v10 = sub_1A405764C();
  v12 = v10[2];
  if (v12)
  {
    v24 = v0;
    v32 = (v2 + 16);
    v33 = 0x80000001A53D9120;
    v31 = (v2 + 8);
    v13 = 32;
    *&v11 = 136446210;
    v25 = v11;
    *&v11 = 134218242;
    v26 = v11;
    v29 = v5;
    v30 = v1;
    v27 = v8;
    v28 = v7;
    v34 = v10;
    do
    {
      v14 = *(v10 + v13);
      if (v14 <= 1)
      {
        v36 = 0;
        v37 = 0xE000000000000000;
        sub_1A524E404();

        v36 = 0xD000000000000019;
        v37 = v33;
        v15 = sub_1A4057658(v14);
        MEMORY[0x1A5907B60](v15);

        v16 = sub_1A524C634();

        v17 = [v8 stringArrayForKey_];

        if (v17)
        {
          v35 = v9;
          sub_1A524CA34();

          v18 = sub_1A45350E8();
          (*v32)(v7, v18, v1);
          _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
        }

        v19 = sub_1A45350E8();
        (*v32)(v5, v19, v1);
        v20 = sub_1A5246F04();
        v21 = sub_1A524D264();
        if (os_log_type_enabled(v20, v21))
        {
          v22 = swift_slowAlloc();
          v36 = swift_slowAlloc();
          *v22 = v25;
          sub_1A4057658(v14);
          sub_1A3C2EF94();
        }

        (*v31)(v5, v1);
        v10 = v34;
      }

      ++v13;
      --v12;
    }

    while (v12);

    v0 = v24;
  }

  else
  {
  }

  v36 = v0;
  *(swift_allocObject() + 16) = v9;
  type metadata accessor for NotificationsDismissalMutableController(0);
  sub_1A44A93D4(&qword_1EB1294A8, type metadata accessor for NotificationsDismissalMutableController);
  sub_1A5245F44();
}

void sub_1A44A73D8(uint64_t a1)
{
  v8 = sub_1A5246F24();
  MEMORY[0x1EEE9AC00](v8);
  v4 = MEMORY[0x1EEE9AC00](v3);
  if (*((*(*v1 + 96))(v4) + 16))
  {
    sub_1A44A8850(a1);
    if (v5)
    {
      _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
    }
  }

  v6 = MEMORY[0x1E69E7CC0];

  if (a1)
  {
    if (a1 != 1)
    {
      goto LABEL_10;
    }

    v7 = 1;
  }

  else
  {
    v7 = 50;
  }

  if (*(v6 + 16) > v7)
  {
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

LABEL_10:
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

unint64_t sub_1A44A796C(unint64_t result, uint64_t a2)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    __break(1u);
    __break(1u);
    __break(1u);
    __break(1u);
  }

  else
  {
    v3 = result;
    if (result)
    {
      if (*(a2 + 16) >= result)
      {
        v4 = result;
      }

      else
      {
        v4 = *(a2 + 16);
      }

      v6 = MEMORY[0x1E69E7CC0];
      sub_1A3C57108(0, v4, 0);
      v5 = v6;
      if (*(a2 + 16))
      {
        if (*(v6 + 16) < v3)
        {
          _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
        }

        _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
      }
    }

    else
    {

      return MEMORY[0x1E69E7CC0];
    }

    return v5;
  }

  return result;
}

uint64_t sub_1A44A7BB8(uint64_t a1, uint64_t a2)
{
  v24 = sub_1A5246F24();
  v5 = *(v24 - 8);
  v6 = MEMORY[0x1EEE9AC00](v24);
  v8 = v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *((*(*v2 + 96))(v6) + 16);
  v21 = v2;
  v22 = v8;
  v23 = v5;
  if (v9)
  {
    sub_1A44A8850(a1);
    if (v10)
    {
      _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
    }
  }

  v11 = MEMORY[0x1E69E7CC0];

  v12 = *(a2 + 16);
  v25 = v11;
  if (v12)
  {
    v27 = MEMORY[0x1E69E7CC0];
    sub_1A3C57108(0, v12, 0);
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  v20[3] = a1;
  v13 = sub_1A3C4467C(MEMORY[0x1E69E7CC0]);

  v15 = *(v11 + 16);
  if (v15)
  {
    v26 = v11 + 32;
    v16 = MEMORY[0x1E69E7CC0];
    v17 = 0;
    while (v17 < *(v11 + 16))
    {
      v18 = v17 + 1;
      if (*(v13 + 16))
      {
        sub_1A524EC94();
        _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
      }

      ++v17;
      if (v18 == v15)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
  }

  else
  {
    v16 = MEMORY[0x1E69E7CC0];
LABEL_13:

    if (*(v16 + 16) != *(v11 + 16))
    {
      v19 = sub_1A45350E8();
      (*(v23 + 16))(v22, v19, v24);
      swift_retain_n();
      _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
    }
  }

  return result;
}

void sub_1A44A81B0()
{
  type metadata accessor for NotificationsDismissalMutableController.Mutator(0);
  swift_allocObject();
  swift_getKeyPath();
  sub_1A44A93D4(&qword_1EB1294C8, type metadata accessor for NotificationsDismissalMutableController.Mutator);
  sub_1A52456D4();
}

void sub_1A44A8268()
{
  swift_allocObject();
  swift_getKeyPath();
  sub_1A44A93D4(&qword_1EB1294C8, type metadata accessor for NotificationsDismissalMutableController.Mutator);
  sub_1A52456D4();
}

void sub_1A44A8314()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1A52456A4();
}

uint64_t sub_1A44A8388@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 104))();
  *a2 = result;
  return result;
}

void sub_1A44A8428()
{
  swift_getKeyPath();
  swift_getKeyPath();

  sub_1A52456B4();
}

void sub_1A44A8498(uint64_t *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  sub_1A5245694();
}

uint64_t sub_1A44A853C()
{

  v1 = OBJC_IVAR____TtCC12PhotosUICore39NotificationsDismissalMutableController7Mutator__dismissedIdentifiers;
  v2 = sub_1A44A9618();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_1A44A85E0()
{
  v1 = OBJC_IVAR____TtC12PhotosUICore39NotificationsDismissalMutableController__dismissedIdentifiers;
  v2 = sub_1A44A90F0();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_1A44A86D4@<X0>(uint64_t *a1@<X8>)
{
  result = (*(**v1 + 168))();
  *a1 = result;
  return result;
}

void sub_1A44A8720()
{
  type metadata accessor for NotificationsDismissalMutableController(0);
  sub_1A44A93D4(&qword_1EB1294B8, type metadata accessor for NotificationsDismissalMutableController);

  sub_1A5245C54();
}

void sub_1A44A87AC()
{
  type metadata accessor for NotificationsDismissalMutableController(0);
  sub_1A44A93D4(&qword_1EB1294A8, type metadata accessor for NotificationsDismissalMutableController);

  sub_1A5245F44();
}

id sub_1A44A8838@<X0>(void *a1@<X8>)
{
  v2 = *(*v1 + OBJC_IVAR____TtC12PhotosUICore39NotificationsDismissalMutableController_observable);
  *a1 = v2;
  return v2;
}

unint64_t sub_1A44A8850(uint64_t a1)
{
  sub_1A44A8F04();
  v2 = sub_1A524C4A4();
  return sub_1A44A88BC(a1, v2);
}

unint64_t sub_1A44A88BC(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    sub_1A4058CB0();
    do
    {
      if (sub_1A524C594())
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

uint64_t sub_1A44A8984(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_1A44A9B7C(0, &qword_1EB13BF30, MEMORY[0x1E69E6EC8]);
  v32 = a2;
  result = sub_1A524E774();
  v7 = result;
  if (*(v5 + 16))
  {
    v31 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(v5 + 56);
      v21 = *(*(v5 + 48) + v19);
      v22 = *(v20 + 8 * v19);
      if ((v32 & 1) == 0)
      {
        _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
      }

      sub_1A44A8F04();
      result = sub_1A524C4A4();
      v23 = -1 << *(v7 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v14 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v14 + 8 * v25);
          if (v29 != -1)
          {
            v15 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v24) & ~*(v14 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + v15) = v21;
      *(*(v7 + 56) + 8 * v15) = v22;
      ++*(v7 + 16);
      v5 = v31;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if ((v32 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v30 = 1 << *(v5 + 32);
    v3 = v2;
    if (v30 >= 64)
    {
      bzero(v9, ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v30;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

void *sub_1A44A8C2C()
{
  v1 = v0;
  sub_1A44A9B7C(0, &qword_1EB13BF30, MEMORY[0x1E69E6EC8]);
  v2 = *v0;
  v3 = sub_1A524E764();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      v13 = __clz(__rbit64(v11 & v10));
      goto LABEL_17;
    }

    v14 = 0;
    while (1)
    {
      v8 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v8 >= v12)
      {
        goto LABEL_18;
      }

      v15 = *(v2 + 64 + 8 * v8);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
LABEL_17:
        v16 = v13 | (v8 << 6);
        v17 = *(*(v2 + 56) + 8 * v16);
        *(*(v4 + 48) + v16) = *(*(v2 + 48) + v16);
        *(*(v4 + 56) + 8 * v16) = v17;
        _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
      }
    }

    __break(1u);
  }

  else
  {
LABEL_18:

    *v1 = v4;
  }

  return result;
}

unint64_t sub_1A44A8D98(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  result = sub_1A44A8850(a2);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 < v14 || (a3 & 1) != 0)
    {
      sub_1A44A8984(v14, a3 & 1);
      result = sub_1A44A8850(a2);
      if ((v15 & 1) != (v18 & 1))
      {
LABEL_16:
        result = sub_1A524EB84();
        __break(1u);
        return result;
      }
    }

    else
    {
      v17 = result;
      sub_1A44A8C2C();
      result = v17;
    }
  }

  v19 = *v4;
  if ((v15 & 1) == 0)
  {
    v19[(result >> 6) + 8] |= 1 << result;
    *(v19[6] + result) = a2;
    *(v19[7] + 8 * result) = a1;
    v20 = v19[2];
    v13 = __OFADD__(v20, 1);
    v21 = v20 + 1;
    if (!v13)
    {
      v19[2] = v21;
      return result;
    }

    goto LABEL_15;
  }

  *(v19[7] + 8 * result) = a1;
}

unint64_t sub_1A44A8F04()
{
  result = qword_1EB12A0F8;
  if (!qword_1EB12A0F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB12A0F8);
  }

  return result;
}

unint64_t sub_1A44A8F58()
{
  result = qword_1EB126FE8;
  if (!qword_1EB126FE8)
  {
    sub_1A44A9B7C(255, &qword_1EB126FF0, MEMORY[0x1E69E5E28]);
    sub_1A403594C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB126FE8);
  }

  return result;
}

uint64_t sub_1A44A8FEC(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_1A44A9B7C(0, &qword_1EB13BF30, MEMORY[0x1E69E6EC8]);
    sub_1A524E794();

    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  return MEMORY[0x1E69E7CC8];
}

uint64_t sub_1A44A90F0()
{
  result = qword_1EB128F08;
  if (!qword_1EB128F08)
  {
    type metadata accessor for NotificationsDismissalMutableController(255);
    sub_1A44A9B7C(255, &qword_1EB126FF0, MEMORY[0x1E69E5E28]);
    sub_1A44A93D4(&qword_1EB1294B8, type metadata accessor for NotificationsDismissalMutableController);
    sub_1A5245764();
  }

  return result;
}

uint64_t sub_1A44A93D4(unint64_t *a1, void (*a2)(uint64_t))
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

char *sub_1A44A941C(char *result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v8 = a4 >> 1;
  v9 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
    __break(1u);
    goto LABEL_18;
  }

  v10 = *v4;
  v6 = *(*v4 + 16);
  v7 = v6 + v9;
  if (__OFADD__(v6, v9))
  {
LABEL_18:
    __break(1u);
LABEL_19:
    if (v6 <= v7)
    {
      v11 = v7;
    }

    else
    {
      v11 = v6;
    }

    goto LABEL_11;
  }

  v5 = a3;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v4 = v10;
  if (!result)
  {
    goto LABEL_8;
  }

  if (v7 > *(v10 + 24) >> 1)
  {
    goto LABEL_19;
  }

  if (v8 == v5)
  {
    while (v9 > 0)
    {
      __break(1u);
LABEL_8:
      if (v6 <= v7)
      {
        v11 = v7;
      }

      else
      {
        v11 = v6;
      }

LABEL_11:
      result = sub_1A3C57108(result, v11, 1);
      v10 = *v4;
      if (v8 != v5)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_16;
  }

LABEL_12:
  if ((*(v10 + 24) >> 1) - *(v10 + 16) < v9)
  {
    __break(1u);
  }

  else
  {
    result = swift_arrayInitWithCopy();
    if (v9 <= 0)
    {
LABEL_16:
      *v4 = v10;
      return result;
    }

    v12 = *(v10 + 16);
    v13 = __OFADD__(v12, v9);
    v14 = v12 + v9;
    if (!v13)
    {
      *(v10 + 16) = v14;
      goto LABEL_16;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1A44A9618()
{
  result = qword_1EB128F58;
  if (!qword_1EB128F58)
  {
    type metadata accessor for NotificationsDismissalMutableController.Mutator(255);
    sub_1A44A9B7C(255, &qword_1EB126FF0, MEMORY[0x1E69E5E28]);
    sub_1A44A93D4(&qword_1EB1294C8, type metadata accessor for NotificationsDismissalMutableController.Mutator);
    sub_1A52456C4();
  }

  return result;
}

unint64_t sub_1A44A96E4()
{
  result = qword_1EB13BF00;
  if (!qword_1EB13BF00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13BF00);
  }

  return result;
}

unint64_t sub_1A44A973C()
{
  result = qword_1EB13BF08;
  if (!qword_1EB13BF08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13BF08);
  }

  return result;
}

unint64_t sub_1A44A9794()
{
  result = qword_1EB13BF10;
  if (!qword_1EB13BF10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13BF10);
  }

  return result;
}

unint64_t sub_1A44A97EC()
{
  result = qword_1EB13BF18;
  if (!qword_1EB13BF18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13BF18);
  }

  return result;
}

unint64_t sub_1A44A9844()
{
  result = qword_1EB13BF20;
  if (!qword_1EB13BF20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13BF20);
  }

  return result;
}

uint64_t sub_1A44A9898(uint64_t a1)
{
  result = sub_1A44A93D4(&qword_1EB1294C0, type metadata accessor for NotificationsDismissalMutableController);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1A44A9984()
{
  result = qword_1EB13BF28;
  if (!qword_1EB13BF28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13BF28);
  }

  return result;
}

uint64_t sub_1A44A9A38()
{
  result = sub_1A44A90F0();
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1A44A9ADC()
{
  result = sub_1A44A9618();
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

void sub_1A44A9B7C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, uint64_t, unint64_t))
{
  if (!*a2)
  {
    sub_1A3C2DF58(255, &qword_1EB126ED0, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
    v7 = v6;
    v8 = sub_1A44A8F04();
    v9 = a3(a1, &type metadata for NotificationIdentifier.Subtype, v7, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

id sub_1A44A9D00(void *a1)
{
  [a1 setPrefersExportLayoutMatchesPlayback_];

  return [a1 setMusicReadinessStatus_];
}

uint64_t sub_1A44A9D50@<X0>(char *a1@<X0>, char *a2@<X8>)
{
  v33 = a2;
  v35 = sub_1A524BFC4();
  v3 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35);
  v5 = v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = v32 - v7;
  v9 = *&a1[OBJC_IVAR____TtCC12PhotosUICore28StoryThumbnailImageGeneratorP33_2AC47450565EC896EF788DB342AA90677Request_storyModel];
  if (!v9)
  {
    goto LABEL_14;
  }

  v43 = 0;
  v44 = 0;
  v10 = *&a1[OBJC_IVAR____TtCC12PhotosUICore28StoryThumbnailImageGeneratorP33_2AC47450565EC896EF788DB342AA90677Request_storyQueue];
  v11 = swift_allocObject();
  v11[2] = v9;
  v11[3] = a1;
  v11[4] = &v44;
  v11[5] = &v43;
  v12 = swift_allocObject();
  *(v12 + 16) = sub_1A44AC5A4;
  *(v12 + 24) = v11;
  v32[1] = v11;
  v41 = sub_1A3DDBE10;
  v42 = v12;
  aBlock = MEMORY[0x1E69E9820];
  v38 = 1107296256;
  v39 = sub_1A3C71444;
  v40 = &block_descriptor_92_0;
  v13 = _Block_copy(&aBlock);
  v36 = v9;
  v14 = a1;

  v15 = v10;
  dispatch_sync(v10, v13);
  _Block_release(v13);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
    v17 = dispatch_semaphore_create(0);
    MEMORY[0x1EEE9AC00](v17);
    sub_1A44AC888(0, &qword_1EB13C018, sub_1A44AC8EC, MEMORY[0x1E69E6720]);
    v18 = v34;
    sub_1A524D484();
    v34 = v18;
    v19 = aBlock;
    sub_1A524BFA4();
    sub_1A524C014();
    v20 = *(v3 + 8);
    v21 = v35;
    v20(v5, v35);
    sub_1A524D6F4();
    v20(v8, v21);
    if (sub_1A524BED4())
    {
      v22 = v36;
      sub_1A524D244();
      v23 = PLStoryGetLog();
      if (v23)
      {
        v24 = v23;
        sub_1A5246DF4();

        if (v19)
        {
          [swift_unknownObjectRetain() cancel];
          swift_unknownObjectRelease_n();
        }

        v25 = 0;
        v26 = 0;
        v27 = 0;
        goto LABEL_10;
      }

      goto LABEL_13;
    }

    v27 = swift_allocObject();
    *(v27 + 16) = &v43;
    *(v27 + 24) = &v44;
    v28 = swift_allocObject();
    *(v28 + 16) = sub_1A44AC950;
    *(v28 + 24) = v27;
    v41 = sub_1A3DDBE10;
    v42 = v28;
    aBlock = MEMORY[0x1E69E9820];
    v38 = 1107296256;
    v39 = sub_1A3C71444;
    v40 = &block_descriptor_102_3;
    v29 = _Block_copy(&aBlock);

    dispatch_sync(v15, v29);

    swift_unknownObjectRelease();
    _Block_release(v29);
    LOBYTE(v29) = swift_isEscapingClosureAtFileLocation();

    if ((v29 & 1) == 0)
    {
      v26 = sub_1A44AC950;
      v25 = 1;
LABEL_10:
      *v33 = v25;

      v30 = v44;

      return sub_1A3C784D4(v26, v27);
    }
  }

  __break(1u);
LABEL_13:
  __break(1u);
LABEL_14:
  result = sub_1A524E6E4();
  __break(1u);
  return result;
}

id sub_1A44AA2EC(void *a1)
{
  [a1 setIsSongResourcesPreloadingEnabled_];

  return [a1 setIsActive_];
}

void sub_1A44AA34C(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

NSObject *sub_1A44AA3E0(void *a1)
{
  if (!a1)
  {
    return 0;
  }

  v3 = objc_allocWithZone(MEMORY[0x1E695F658]);
  v4 = a1;
  v5 = [v3 initWithCVPixelBuffer_];
  v6 = v5;
  if (*(v1 + OBJC_IVAR____TtCC12PhotosUICore28StoryThumbnailImageGeneratorP33_2AC47450565EC896EF788DB342AA90677Request_convertToYUV) != 1)
  {
    goto LABEL_24;
  }

  [v5 extent];
  v8 = v7;
  v10 = v9;
  sub_1A44AC888(0, &qword_1EB1261F0, sub_1A3C5D744, MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1A52F8E10;
  *(inited + 32) = sub_1A524C674();
  *(inited + 40) = v12;
  sub_1A40AF590();
  *(inited + 72) = v13;
  *(inited + 48) = MEMORY[0x1E69E7CC8];
  sub_1A3C5D7A8(inited);
  swift_setDeallocating();
  result = sub_1A3C5DDD4(inited + 32);
  pixelBufferOut[0] = 0;
  if (v8 <= -9.22337204e18)
  {
    __break(1u);
    goto LABEL_28;
  }

  if (v8 >= 9.22337204e18)
  {
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((*&v8 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || (*&v10 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_29;
  }

  if (v10 <= -9.22337204e18)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  if (v10 >= 9.22337204e18)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v15 = sub_1A524C3D4();

  v16 = CVPixelBufferCreate(0, v8, v10, 0x34323066u, v15, pixelBufferOut);

  v17 = pixelBufferOut[0];
  if (pixelBufferOut[0])
  {
    v18 = objc_allocWithZone(MEMORY[0x1E695F678]);
    v19 = v17;
    v20 = [v18 initWithPixelBuffer_];
    [v20 setAlphaMode_];
    v21 = [objc_allocWithZone(MEMORY[0x1E695F620]) init];
    v41 = 0;
    v22 = [v21 startTaskToRender:v6 toDestination:v20 error:&v41];

    v23 = v41;
    if (v22)
    {
      v41 = 0;
      v24 = v23;
      v25 = [v22 waitUntilCompletedAndReturnError_];
      if (v25)
      {
        v26 = v25;
        v27 = v41;

        v28 = [objc_allocWithZone(MEMORY[0x1E695F658]) initWithCVPixelBuffer_];
LABEL_13:

LABEL_25:
        v29 = [objc_allocWithZone(MEMORY[0x1E69DCAB8]) initWithCIImage_];

        return v29;
      }

      v35 = v41;
      v32 = sub_1A5240B84();

      v28 = v32;
      swift_willThrow();
    }

    else
    {
      v34 = v41;
      v32 = sub_1A5240B84();

      v28 = v32;
      swift_willThrow();
    }
  }

  else
  {
    PXDisplayCollectionDetailedCountsMake(v16);
    v31 = v30;
    sub_1A44ACAE4();
    v32 = swift_allocError();
    *v33 = v31;
    v28 = v32;
    swift_willThrow();
  }

  if (!v32)
  {
    goto LABEL_13;
  }

  v36 = sub_1A524D244();
  result = PLStoryGetLog();
  if (result)
  {
    v37 = result;
    if (os_log_type_enabled(result, v36))
    {
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      pixelBufferOut[0] = v32;
      pixelBufferOut[1] = v39;
      *v38 = 136446210;
      v40 = v32;
      sub_1A3DBD9A0();
      sub_1A524C714();
      sub_1A3C2EF94();
    }

LABEL_24:
    v28 = v6;
    goto LABEL_25;
  }

LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_1A44AA8F4@<X0>(uint64_t a1@<X0>, NSObject **a2@<X8>)
{
  v49 = a2;
  v3 = sub_1A524BFC4();
  v53 = *(v3 - 8);
  v54 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v5 = v47 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v52 = v47 - v7;
  v8 = *(a1 + OBJC_IVAR____TtCC12PhotosUICore28StoryThumbnailImageGeneratorP33_2AC47450565EC896EF788DB342AA90677Request_pixelBufferRenderDestination);
  if (!v8)
  {
    goto LABEL_16;
  }

  v9 = *(a1 + OBJC_IVAR____TtCC12PhotosUICore28StoryThumbnailImageGeneratorP33_2AC47450565EC896EF788DB342AA90677Request_storyLayout);
  if (!v9)
  {
    goto LABEL_16;
  }

  v10 = *(a1 + OBJC_IVAR____TtCC12PhotosUICore28StoryThumbnailImageGeneratorP33_2AC47450565EC896EF788DB342AA90677Request_engine);
  if (!v10)
  {
    goto LABEL_16;
  }

  v11 = v8;
  v12 = v9;
  v13 = a1;
  v14 = v10;
  v15 = dispatch_semaphore_create(0);
  v16 = swift_allocObject();
  *(v16 + 16) = 0;
  v47[0] = v16 + 16;
  v51 = v13;
  v17 = *(v13 + OBJC_IVAR____TtCC12PhotosUICore28StoryThumbnailImageGeneratorP33_2AC47450565EC896EF788DB342AA90677Request_storyQueue);
  v18 = swift_allocObject();
  v18[2] = v11;
  v18[3] = v16;
  v18[4] = v15;
  v18[5] = v12;
  v18[6] = v14;
  v19 = swift_allocObject();
  *(v19 + 16) = sub_1A44AC09C;
  *(v19 + 24) = v18;
  v47[1] = v18;
  v61 = sub_1A3C7146C;
  v62 = v19;
  aBlock = MEMORY[0x1E69E9820];
  v58 = 1107296256;
  v59 = sub_1A3C71444;
  v60 = &block_descriptor_46_7;
  v20 = _Block_copy(&aBlock);
  v50 = v11;
  v55 = v12;
  v21 = v14;
  v48 = v16;

  v22 = v15;

  v56 = v17;
  dispatch_sync(v17, v20);
  _Block_release(v20);
  LOBYTE(v20) = swift_isEscapingClosureAtFileLocation();

  if (v20)
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  sub_1A524BFA4();
  v24 = v51;
  v23 = v52;
  sub_1A524C014();
  v25 = v54;
  v26 = *(v53 + 8);
  v26(v5, v54);
  sub_1A524D6F4();
  v26(v23, v25);
  v27 = v24;
  if ((sub_1A524BED4() & 1) == 0)
  {
    v37 = 0;
    v31 = 0;
LABEL_10:
    v38 = v50;
    [v50 setRenderCompletionBlock_];
    v39 = swift_allocObject();
    *(v39 + 16) = v21;
    v40 = swift_allocObject();
    *(v40 + 16) = sub_1A44AC1B4;
    *(v40 + 24) = v39;
    v61 = sub_1A3DDBE10;
    v62 = v40;
    aBlock = MEMORY[0x1E69E9820];
    v58 = 1107296256;
    v59 = sub_1A3C71444;
    v60 = &block_descriptor_56_2;
    v41 = _Block_copy(&aBlock);
    v42 = v21;

    dispatch_sync(v56, v41);
    _Block_release(v41);
    LOBYTE(v41) = swift_isEscapingClosureAtFileLocation();

    if ((v41 & 1) == 0)
    {
      swift_beginAccess();
      v43 = *(v48 + 16);
      v44 = v43;
      v45 = sub_1A44AA3E0(v43);

      sub_1A3C784D4(v37, v31);

      *v49 = v45;
      return result;
    }

    goto LABEL_13;
  }

  sub_1A524D244();
  v28 = PLStoryGetLog();
  if (v28)
  {
    v29 = v28;
    sub_1A5246DF4();

    v30 = OBJC_IVAR____TtCC12PhotosUICore28StoryThumbnailImageGeneratorP33_2AC47450565EC896EF788DB342AA90677Request_allowDegradedSnapshot;
    *(v24 + OBJC_IVAR____TtCC12PhotosUICore28StoryThumbnailImageGeneratorP33_2AC47450565EC896EF788DB342AA90677Request_allowDegradedSnapshot) = 1;
    v31 = swift_allocObject();
    v32 = v55;
    *(v31 + 16) = v55;
    *(v31 + 24) = v21;
    v33 = swift_allocObject();
    *(v33 + 16) = sub_1A44AC20C;
    *(v33 + 24) = v31;
    v61 = sub_1A3DDBE10;
    v62 = v33;
    aBlock = MEMORY[0x1E69E9820];
    v58 = 1107296256;
    v59 = sub_1A3C71444;
    v60 = &block_descriptor_66_0;
    v34 = _Block_copy(&aBlock);
    v35 = v32;
    v36 = v21;

    dispatch_sync(v56, v34);
    _Block_release(v34);
    LOBYTE(v34) = swift_isEscapingClosureAtFileLocation();

    if (v34)
    {
LABEL_14:
      __break(1u);
      goto LABEL_15;
    }

    sub_1A524D704();
    *(v27 + v30) = 0;
    v37 = sub_1A44AC20C;
    goto LABEL_10;
  }

LABEL_15:
  __break(1u);
LABEL_16:
  result = sub_1A524E6E4();
  __break(1u);
  return result;
}

void sub_1A44AAFAC(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

uint64_t sub_1A44AB020()
{
  v1 = sub_1A5246E54();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = PLStoryGetLog();
  if (!v5)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v6 = v5;
  v7 = v0;
  v8 = v6;
  sub_1A5246E14();
  sub_1A524D654();
  sub_1A5246E04();
  v9 = objc_autoreleasePoolPush();
  v10 = OBJC_IVAR____TtCC12PhotosUICore28StoryThumbnailImageGeneratorP33_2AC47450565EC896EF788DB342AA90677Request_storyModel;
  if (!*&v7[OBJC_IVAR____TtCC12PhotosUICore28StoryThumbnailImageGeneratorP33_2AC47450565EC896EF788DB342AA90677Request_storyModel])
  {
    MEMORY[0x1EEE9AC00](v9);
    v11 = v2;
    v12 = v1;
    v14 = v13;
    sub_1A44AC034();
    sub_1A524D484();
    v15 = *&v7[v10];
    *&v7[v10] = aBlock[0];

    v9 = v14;
    v1 = v12;
    v2 = v11;
  }

  objc_autoreleasePoolPop(v9);
  v16 = objc_autoreleasePoolPush();
  sub_1A44A9D50(v7, aBlock);
  objc_autoreleasePoolPop(v16);
  if (LOBYTE(aBlock[0]) != 1)
  {
    v26 = 0;
    goto LABEL_10;
  }

  v17 = objc_autoreleasePoolPush();
  v18 = *&v7[OBJC_IVAR____TtCC12PhotosUICore28StoryThumbnailImageGeneratorP33_2AC47450565EC896EF788DB342AA90677Request_storyModel];
  if (v18)
  {
    if (*&v7[OBJC_IVAR____TtCC12PhotosUICore28StoryThumbnailImageGeneratorP33_2AC47450565EC896EF788DB342AA90677Request_storyLayout] || (v29 = *&v7[OBJC_IVAR____TtCC12PhotosUICore28StoryThumbnailImageGeneratorP33_2AC47450565EC896EF788DB342AA90677Request_storyQueue], v30 = v17, v19 = swift_allocObject(), *(v19 + 16) = v18, *(v19 + 24) = v7, v20 = swift_allocObject(), v20[2].isa = sub_1A44AC2C4, v20[3].isa = v19, aBlock[4] = sub_1A3DDBE10, aBlock[5] = v20, aBlock[0] = MEMORY[0x1E69E9820], aBlock[1] = 1107296256, aBlock[2] = sub_1A3C71444, aBlock[3] = &block_descriptor_82_3, v21 = _Block_copy(aBlock), v22 = v18, v23 = v7, , , dispatch_sync(v29, v21), v22, _Block_release(v21), isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation(), , , v17 = v30, (isEscapingClosureAtFileLocation & 1) == 0))
    {
      objc_autoreleasePoolPop(v17);
      v25 = objc_autoreleasePoolPush();
      sub_1A44AA8F4(v7, aBlock);
      objc_autoreleasePoolPop(v25);
      v26 = aBlock[0];
LABEL_10:
      sub_1A524D644();
      sub_1A5246E04();

      (*(v2 + 8))(v4, v1);
      return v26;
    }

    __break(1u);
    goto LABEL_12;
  }

LABEL_13:
  result = sub_1A524E6E4();
  __break(1u);
  return result;
}

uint64_t sub_1A44AB448(void *a1, void *a2, void *a3)
{
  v23 = 0;
  v6 = [a1 entityManager];
  v7 = [v6 loadingStatus];

  v8 = [v7 states];
  [a2 visibleRect];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v17 = swift_allocObject();
  *(v17 + 16) = v8;
  *(v17 + 24) = &v23;
  v18 = swift_allocObject();
  *(v18 + 16) = sub_1A44ABD34;
  *(v18 + 24) = v17;
  aBlock[4] = sub_1A44ABD6C;
  aBlock[5] = v18;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1A44AB670;
  aBlock[3] = &block_descriptor_195;
  v19 = _Block_copy(aBlock);

  [a3 enumerateSpritesInRect:v19 usingBlock:{v10, v12, v14, v16}];

  _Block_release(v19);
  LOBYTE(a3) = swift_isEscapingClosureAtFileLocation();

  if (a3)
  {
    __break(1u);
  }

  else
  {
    if (v23 == 1)
    {
      v21 = *(v3 + OBJC_IVAR____TtCC12PhotosUICore28StoryThumbnailImageGeneratorP33_2AC47450565EC896EF788DB342AA90677Request_allowDegradedSnapshot);
    }

    else
    {
      v21 = 1;
    }

    *(v3 + OBJC_IVAR____TtCC12PhotosUICore28StoryThumbnailImageGeneratorP33_2AC47450565EC896EF788DB342AA90677Request_waitingForResources) = v21 ^ 1;

    return v21;
  }

  return result;
}

id StoryThumbnailImageGenerator.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id StoryThumbnailImageGenerator.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for StoryThumbnailImageGenerator();
  return objc_msgSendSuper2(&v2, sel_init);
}

id sub_1A44AB8FC(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_1A44AB934(void *a1, int a2, double a3, double a4, double a5, double a6, double a7)
{
  v29 = a2;
  v28 = a1;
  v12 = sub_1A524D414();
  MEMORY[0x1EEE9AC00](v12);
  v13 = sub_1A524BF64();
  MEMORY[0x1EEE9AC00](v13 - 8);
  v14 = sub_1A524D464();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v27 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = type metadata accessor for StoryThumbnailImageGenerator.Request();
  v18 = objc_allocWithZone(v27);
  v19 = OBJC_IVAR____TtCC12PhotosUICore28StoryThumbnailImageGeneratorP33_2AC47450565EC896EF788DB342AA90677Request_storyQueue;
  sub_1A3C52C70(0, &qword_1EB12B180);
  (*(v15 + 104))(v17, *MEMORY[0x1E69E8098], v14);
  sub_1A524BF14();
  v31 = MEMORY[0x1E69E7CC0];
  sub_1A3C70F38();
  sub_1A44AC888(0, &qword_1EB126E40, MEMORY[0x1E69E8030], MEMORY[0x1E69E62F8]);
  sub_1A3C70F90();
  sub_1A524E224();
  v20 = sub_1A524D4B4();
  *&v18[v19] = v20;
  *&v18[OBJC_IVAR____TtCC12PhotosUICore28StoryThumbnailImageGeneratorP33_2AC47450565EC896EF788DB342AA90677Request_storyModel] = 0;
  *&v18[OBJC_IVAR____TtCC12PhotosUICore28StoryThumbnailImageGeneratorP33_2AC47450565EC896EF788DB342AA90677Request_storyLayout] = 0;
  *&v18[OBJC_IVAR____TtCC12PhotosUICore28StoryThumbnailImageGeneratorP33_2AC47450565EC896EF788DB342AA90677Request_engine] = 0;
  *&v18[OBJC_IVAR____TtCC12PhotosUICore28StoryThumbnailImageGeneratorP33_2AC47450565EC896EF788DB342AA90677Request_pixelBufferRenderDestination] = 0;
  v18[OBJC_IVAR____TtCC12PhotosUICore28StoryThumbnailImageGeneratorP33_2AC47450565EC896EF788DB342AA90677Request_allowDegradedSnapshot] = 0;
  v18[OBJC_IVAR____TtCC12PhotosUICore28StoryThumbnailImageGeneratorP33_2AC47450565EC896EF788DB342AA90677Request_waitingForResources] = 0;
  v21 = [v28 copyWithStoryQueue_];
  v22 = [v21 copyWithAdditionalOptions_];

  *&v18[OBJC_IVAR____TtCC12PhotosUICore28StoryThumbnailImageGeneratorP33_2AC47450565EC896EF788DB342AA90677Request_storyConfiguration] = v22;
  v23 = [objc_allocWithZone(PXStoryExtendedTraitCollection) initWithLayoutReferenceSize:a3 displayScale:{a4, a5}];
  *&v18[OBJC_IVAR____TtCC12PhotosUICore28StoryThumbnailImageGeneratorP33_2AC47450565EC896EF788DB342AA90677Request_storyTraitCollection] = v23;
  v18[OBJC_IVAR____TtCC12PhotosUICore28StoryThumbnailImageGeneratorP33_2AC47450565EC896EF788DB342AA90677Request_convertToYUV] = v29;
  *&v18[OBJC_IVAR____TtCC12PhotosUICore28StoryThumbnailImageGeneratorP33_2AC47450565EC896EF788DB342AA90677Request_storyLoadTimeOut] = a6;
  *&v18[OBJC_IVAR____TtCC12PhotosUICore28StoryThumbnailImageGeneratorP33_2AC47450565EC896EF788DB342AA90677Request_nonDegradedTimeout] = a7;
  v30.receiver = v18;
  v30.super_class = v27;
  v24 = objc_msgSendSuper2(&v30, sel_init);
  v25 = sub_1A44AB020();

  return v25;
}

void sub_1A44ABD34(uint64_t a1, unsigned int *a2, uint64_t a3, uint64_t a4, uint64_t a5, _BYTE *a6)
{
  v7 = *(*(v6 + 16) + *a2);
  v8 = v7 > 4;
  v9 = (1 << v7) & 0x16;
  if (!v8 && v9 != 0)
  {
    **(v6 + 24) = 1;
    *a6 = 1;
  }
}

void sub_1A44ABD94(void *a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v2 + OBJC_IVAR____TtCC12PhotosUICore28StoryThumbnailImageGeneratorP33_2AC47450565EC896EF788DB342AA90677Request_storyConfiguration);
  v4 = [v3 timelineProducer];
  if (!v4)
  {
    v4 = PXStoryTimelineProducerCreateDefault();
  }

  v5 = [objc_allocWithZone(PXStoryRecipeManager) initWithConfiguration_];
  v6 = [objc_allocWithZone(PXStoryResourcesDataSourceManager) initWithRecipeManager_];
  v7 = [objc_allocWithZone(PXStoryStyleManager) initWithRecipeManager:v5 errorReporter:0];
  v8 = *(v2 + OBJC_IVAR____TtCC12PhotosUICore28StoryThumbnailImageGeneratorP33_2AC47450565EC896EF788DB342AA90677Request_storyTraitCollection);
  v9 = objc_allocWithZone(PXStoryTimelineSpecManager);
  v10 = v8;
  v11 = [v9 initWithExtendedTraitCollection:v10 configuration:v3];
  v12 = [objc_opt_self() timelineManagerWithTimelineProducer:v4 resourcesDataSourceManager:v6 styleManager:v7 specManager:v11 configuration:v3 loadingCoordinator:0 paperTrailOptions:0];
  v13 = [objc_allocWithZone(PXStoryLayoutSpecManager) initWithExtendedTraitCollection:v10 options:0 storyConfigurationOptions:{objc_msgSend(v3, sel_options)}];

  v14 = [objc_allocWithZone(PXStoryModel) initWithTimelineManager:v12 layoutSpecManager:v13 configuration:v3];
  aBlock[4] = sub_1A44A9D00;
  aBlock[5] = 0;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1A3D59380;
  aBlock[3] = &block_descriptor_123_0;
  v15 = _Block_copy(aBlock);
  [v14 performChanges_];
  _Block_release(v15);
  v16 = [objc_allocWithZone(PXStorySongController) initWithModel_];

  swift_unknownObjectRelease();
  *a1 = v14;
}

void sub_1A44AC034()
{
  if (!qword_1EB13C000)
  {
    sub_1A3C52C70(255, &qword_1EB126C80);
    v0 = sub_1A524DF24();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB13C000);
    }
  }
}

id sub_1A44AC09C()
{
  v1 = v0[2];
  v2 = v0[3];
  v4 = v0[4];
  v3 = v0[5];
  v5 = v0[6];
  v6 = swift_allocObject();
  *(v6 + 16) = v2;
  *(v6 + 24) = v4;
  v10[4] = sub_1A44AC254;
  v10[5] = v6;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 1107296256;
  v10[2] = sub_1A44AAFAC;
  v10[3] = &block_descriptor_72_0;
  v7 = _Block_copy(v10);

  v8 = v4;

  [v1 setRenderCompletionBlock_];
  _Block_release(v7);
  [v3 setNeedsUpdate];
  return [v5 updateIfNeeded];
}

void sub_1A44AC1B4()
{
  v1 = [*(v0 + 16) textureManager];
  [v1 releaseCachedResources];
}

id sub_1A44AC20C()
{
  v1 = *(v0 + 24);
  [*(v0 + 16) setNeedsUpdate];

  return [v1 updateIfNeeded];
}

uint64_t sub_1A44AC254(void *a1)
{
  v3 = *(v1 + 16);
  result = swift_beginAccess();
  if (!*(v3 + 16))
  {
    swift_beginAccess();
    *(v3 + 16) = a1;
    v5 = a1;
    return sub_1A524D714();
  }

  return result;
}

void sub_1A44AC2C4()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = [objc_allocWithZone(PXStoryLayout) initWithModel_];
  v4 = [v2 extendedTraitCollection];
  [v4 displayScale];
  v6 = v5;

  [v3 setDisplayScale_];
  v7 = *(v1 + OBJC_IVAR____TtCC12PhotosUICore28StoryThumbnailImageGeneratorP33_2AC47450565EC896EF788DB342AA90677Request_storyTraitCollection);
  [v7 layoutReferenceSize];
  [v7 displayScale];
  PXSizeScale();
}

void sub_1A44AC5A4()
{
  v1 = v0[2];
  v3 = v0[4];
  v2 = v0[5];
  v4 = [*(v0[3] + OBJC_IVAR____TtCC12PhotosUICore28StoryThumbnailImageGeneratorP33_2AC47450565EC896EF788DB342AA90677Request_storyConfiguration) mediaProvider];
  v5 = [objc_allocWithZone(PXStoryResourcesPreloadingController) initWithModel:v1 mediaProvider:v4];

  [v5 setIsPreloadingEnabled_];
  v6 = *v3;
  *v3 = v5;
  v7 = v5;

  v16 = sub_1A44AA2EC;
  v17 = 0;
  v12 = MEMORY[0x1E69E9820];
  v13 = 1107296256;
  v14 = sub_1A421179C;
  v15 = &block_descriptor_117;
  v8 = _Block_copy(&v12);
  [v7 performChanges_];
  _Block_release(v8);
  v9 = [objc_allocWithZone(PXStoryBufferingController) initWithModel_];
  v16 = sub_1A44AA33C;
  v17 = 0;
  v12 = MEMORY[0x1E69E9820];
  v13 = 1107296256;
  v14 = sub_1A421179C;
  v15 = &block_descriptor_120_3;
  v10 = _Block_copy(&v12);
  [v9 performChanges_];

  _Block_release(v10);
  v11 = *v2;
  *v2 = v9;
}

void sub_1A44AC780(void *a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = swift_allocObject();
  *(v5 + 16) = v3;
  *(v5 + 24) = v4;
  v10[4] = sub_1A44ACAA0;
  v10[5] = v5;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 1107296256;
  v10[2] = sub_1A44AA34C;
  v10[3] = &block_descriptor_114_1;
  v6 = _Block_copy(v10);
  v7 = v3;
  v8 = v4;

  v9 = [v7 pxStory:0x200000 enumerateStatesByWatchingChanges:v6 usingBlock:?];
  _Block_release(v6);
  *a1 = v9;
}

void sub_1A44AC888(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_1A44AC8EC()
{
  result = qword_1EB13C080;
  if (!qword_1EB13C080)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EB13C080);
  }

  return result;
}

void sub_1A44AC950()
{
  v1 = *(v0 + 24);
  v2 = **(v0 + 16);
  if (v2)
  {
    v12 = sub_1A44AA3D0;
    v13 = 0;
    v8 = MEMORY[0x1E69E9820];
    v9 = 1107296256;
    v10 = sub_1A421179C;
    v11 = &block_descriptor_105_1;
    v3 = _Block_copy(&v8);
    v4 = v2;
    [v4 performChanges_];
    _Block_release(v3);
  }

  v5 = *v1;
  if (*v1)
  {
    v12 = sub_1A44ACD60;
    v13 = 0;
    v8 = MEMORY[0x1E69E9820];
    v9 = 1107296256;
    v10 = sub_1A421179C;
    v11 = &block_descriptor_108_1;
    v6 = _Block_copy(&v8);
    v7 = v5;
    [v7 performChanges_];
    _Block_release(v6);
  }
}

id sub_1A44ACAA0(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  result = [*(v3 + 16) readinessStatus];
  if (result == 3)
  {
    result = sub_1A524D714();
    *a3 = 1;
  }

  return result;
}

unint64_t sub_1A44ACAE4()
{
  result = qword_1EB13C090;
  if (!qword_1EB13C090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13C090);
  }

  return result;
}

uint64_t sub_1A44ACB38(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 != 1 && *(a1 + 32))
  {
    return (*a1 + 2);
  }

  if (*a1)
  {
    v3 = -1;
  }

  else
  {
    v3 = 0;
  }

  return (v3 + 1);
}

uint64_t sub_1A44ACB7C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 1)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 2;
    *(result + 8) = 0;
    if (a3 >= 2)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 2)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *result = 0;
    }
  }

  return result;
}

uint64_t sub_1A44ACBE4(unsigned __int8 *a1, int a2)
{
  if (a2)
  {
    if ((a2 + 255) >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 255) >> 8 < 0xFF)
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
        return (*a1 | (v4 << 8)) - 255;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (*(a1 + 1))
      {
        return (*a1 | (v4 << 8)) - 255;
      }
    }

    else
    {
      v4 = a1[1];
      if (a1[1])
      {
        return (*a1 | (v4 << 8)) - 255;
      }
    }
  }

  return 0;
}

uint64_t sub_1A44ACC50(uint64_t result, int a2, int a3)
{
  if ((a3 + 255) >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 255) >> 8 < 0xFF)
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
    v5 = ((a2 - 1) >> 8) + 1;
    *result = a2 - 1;
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
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *(result + 1) = 0;
    }

    else
    {
      *(result + 1) = 0;
    }
  }

  else if (v4)
  {
    *(result + 1) = 0;
  }

  return result;
}

unint64_t sub_1A44ACDD4()
{
  result = qword_1EB176F20;
  if (!qword_1EB176F20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB176F20);
  }

  return result;
}

unint64_t sub_1A44ACE84()
{
  result = qword_1EB1776A8[0];
  if (!qword_1EB1776A8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB1776A8);
  }

  return result;
}

unint64_t sub_1A44ACF60()
{
  result = qword_1EB179740[0];
  if (!qword_1EB179740[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB179740);
  }

  return result;
}

uint64_t sub_1A44AD04C()
{
  result = sub_1A3C5A374();
  byte_1EB176F38 = result & 1;
  return result;
}

uint64_t sub_1A44AD070@<X0>(_BYTE *a1@<X8>)
{
  if (qword_1EB176F30 != -1)
  {
    v1 = a1;
    result = swift_once();
    a1 = v1;
  }

  *a1 = byte_1EB176F38;
  return result;
}

id PXInternalImageQualityFeedbackAssetActionPerformer.__allocating_init(actionType:)()
{
  v1 = objc_allocWithZone(v0);
  v2 = sub_1A524C634();

  v3 = [v1 initWithActionType_];

  return v3;
}

id PXInternalImageQualityFeedbackAssetActionPerformer.init(actionType:)()
{
  v1 = sub_1A524C634();

  v4.receiver = v0;
  v4.super_class = type metadata accessor for PXInternalImageQualityFeedbackAssetActionPerformer();
  v2 = objc_msgSendSuper2(&v4, sel_initWithActionType_, v1);

  return v2;
}

id PXInternalImageQualityFeedbackAssetActionPerformer.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PXInternalImageQualityFeedbackAssetActionPerformer();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_1A44AD260()
{
  result = [objc_allocWithZone(type metadata accessor for PXEditTipsHelper()) init];
  qword_1EB16D3E8 = result;
  return result;
}

id PXEditTipsHelper.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id static PXEditTipsHelper.shared.getter()
{
  if (qword_1EB16D3E0 != -1)
  {
    swift_once();
  }

  v1 = qword_1EB16D3E8;

  return v1;
}

void sub_1A44AD414(uint64_t a1, uint64_t (*a2)(void), void *a3, void *a4)
{
  v6 = a2();
  v8 = *v6;
  v7 = v6[1];
  *a3 = v8;
  *a4 = v7;

  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

void sub_1A44AD484(void *a1)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t sub_1A44AD508(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[9] = a4;
  v5 = sub_1A524BEE4();
  v4[10] = v5;
  v4[11] = *(v5 - 8);
  v4[12] = swift_task_alloc();
  v6 = sub_1A524BF64();
  v4[13] = v6;
  v4[14] = *(v6 - 8);
  v4[15] = swift_task_alloc();
  sub_1A524CC54();
  v4[16] = sub_1A524CC44();
  v8 = sub_1A524CBC4();

  return MEMORY[0x1EEE6DFA0](sub_1A44AD658, v8, v7);
}

uint64_t sub_1A44AD658()
{
  v1 = v0[15];
  v10 = v0[14];
  v11 = v0[13];
  v3 = v0[11];
  v2 = v0[12];
  v4 = v0[10];

  type metadata accessor for PXTipsHelper();
  static PXTipsHelper.setup()();
  sub_1A3C29A58();
  v5 = sub_1A524D474();
  v6 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v0[6] = sub_1A44AE2CC;
  v0[7] = v6;
  v0[2] = MEMORY[0x1E69E9820];
  v0[3] = 1107296256;
  v0[4] = sub_1A3C2E0D0;
  v0[5] = &block_descriptor_196;
  v7 = _Block_copy(v0 + 2);

  sub_1A524BF14();
  v0[8] = MEMORY[0x1E69E7CC0];
  sub_1A4059F40();
  sub_1A3C56408(0, &qword_1EB12B1C0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
  sub_1A3C5DE88();
  sub_1A524E224();
  MEMORY[0x1A5908800](0, v1, v2, v7);
  _Block_release(v7);

  (*(v3 + 8))(v2, v4);
  (*(v10 + 8))(v1, v11);

  v8 = v0[1];

  return v8();
}

void static PXEditTipsHelper.setTipsPresentationDelegate(_:)()
{
  sub_1A3C56408(0, &qword_1EB12B270, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v0 - 8);
  sub_1A3FA19C0();
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t sub_1A44ADA74()
{
  v2 = *(v0 + 32);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1A3D60150;

  return sub_1A44AD508(v3, v4, v5, v2);
}

uint64_t static PXEditTipsHelper.setTip(_:isPresentable:)(uint64_t a1, uint64_t a2, char a3)
{
  v6 = sub_1A3FA19C0();
  v7 = *v6 == a1 && v6[1] == a2;
  if (v7 || (sub_1A524EAB4() & 1) != 0)
  {

    return sub_1A3FA19EC(a3 & 1);
  }

  else
  {
    v9 = sub_1A3FA19CC();
    v10 = *v9 == a1 && v9[1] == a2;
    if (v10 || (result = sub_1A524EAB4(), (result & 1) != 0))
    {

      return sub_1A3FA2110(a3 & 1);
    }
  }

  return result;
}

id PXEditTipsHelper.init()(uint64_t a1)
{
  PXDisplayCollectionDetailedCountsMake(a1);
  PXDisplayCollectionDetailedCountsMake(v2);
  v1[OBJC_IVAR___PXEditTipsHelper_Swift_hasStartedTips] = 0;
  v4.receiver = v1;
  v4.super_class = type metadata accessor for PXEditTipsHelper();
  return objc_msgSendSuper2(&v4, sel_init);
}

id PXEditTipsHelper.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PXEditTipsHelper();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t _s12PhotosUICore16PXEditTipsHelperC21setTipActionPerformedyySSFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1A5247634();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1A45C1604();
  result = swift_beginAccess();
  if (*v8 != 1)
  {
    return result;
  }

  v10 = sub_1A45C1034();
  swift_beginAccess();
  v11 = *v10;
  if (!v11 || !*(v11 + 16) || (v12 = sub_1A3C5DCA4(a1, a2), (v13 & 1) == 0))
  {
    v18 = 0;
    v16 = 0u;
    v17 = 0u;
    return sub_1A3CB4DE8(&v16, &qword_1EB128BC8, sub_1A3CB4F50);
  }

  sub_1A3C341C8(*(v11 + 56) + 40 * v12, &v16);
  if (!*(&v17 + 1))
  {
    return sub_1A3CB4DE8(&v16, &qword_1EB128BC8, sub_1A3CB4F50);
  }

  sub_1A3C34460(&v16, v19);
  __swift_project_boxed_opaque_existential_1(v19, v19[3]);
  (*(v5 + 104))(v7, *MEMORY[0x1E6982AE0], v4);
  sub_1A5247424();
  (*(v5 + 8))(v7, v4);
  v14 = sub_1A3FA19CC();
  if (*v14 == a1 && v14[1] == a2 || (sub_1A524EAB4() & 1) != 0)
  {
    type metadata accessor for PXOneUpTipsHelper();
    static PXOneUpTipsHelper.signalDidCleanUp()();
  }

  return __swift_destroy_boxed_opaque_existential_0(v19);
}

BOOL _s12PhotosUICore16PXEditTipsHelperC10isTipValidySbSSFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1A5247794();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1A45C1604();
  swift_beginAccess();
  if (*v8 == 1)
  {
    v9 = sub_1A45C1034();
    swift_beginAccess();
    v10 = *v9;
    if (v10 && *(v10 + 16) && (v11 = sub_1A3C5DCA4(a1, a2), (v12 & 1) != 0))
    {
      sub_1A3C341C8(*(v10 + 56) + 40 * v11, &v16);
      if (*(&v17 + 1))
      {
        sub_1A3C34460(&v16, v19);
        __swift_project_boxed_opaque_existential_1(v19, v19[3]);
        sub_1A5247474();
        v13 = (*(v5 + 88))(v7, v4) != *MEMORY[0x1E6982B68];
        (*(v5 + 8))(v7, v4);
        __swift_destroy_boxed_opaque_existential_0(v19);
        return v13;
      }
    }

    else
    {
      v18 = 0;
      v16 = 0u;
      v17 = 0u;
    }

    sub_1A3CB4DE8(&v16, &qword_1EB128BC8, sub_1A3CB4F50);
  }

  return 0;
}

void sub_1A44AE2CC()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = MEMORY[0x1E69E7D40];
    (*((*MEMORY[0x1E69E7D40] & *Strong) + 0xB8))();
    v3 = *((*v2 & *v1) + 0x90);
    v4 = sub_1A44AE3D8();
    v5 = v3(v4, &type metadata for StylesSetupTip, v4);
    (*((*v2 & *v1) + 0xD0))(v5);
    v6 = sub_1A44AE42C();
    v3(v6, &type metadata for CleanUpTip, v6);
  }
}

unint64_t sub_1A44AE3D8()
{
  result = qword_1EB125BC0;
  if (!qword_1EB125BC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB125BC0);
  }

  return result;
}

unint64_t sub_1A44AE42C()
{
  result = qword_1EB125E00;
  if (!qword_1EB125E00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB125E00);
  }

  return result;
}

double sub_1A44AE480@<D0>(uint64_t a1@<X8>)
{
  v2 = sub_1A524B3C4();
  v3 = sub_1A524B434();
  v4 = sub_1A524B294();
  v5 = sub_1A524B484();
  *a1 = xmmword_1A53412C0;
  *(a1 + 16) = 0x4020000000000000;
  *(a1 + 24) = v2;
  *(a1 + 32) = v3;
  *(a1 + 40) = v4;
  *(a1 + 48) = v5;
  *(a1 + 56) = 0x4059000000000000;
  *(a1 + 64) = 2;
  *(a1 + 72) = 0;
  *(a1 + 80) = 1;
  *(a1 + 88) = 0;
  result = 5.0;
  *(a1 + 96) = xmmword_1A53412D0;
  *(a1 + 112) = xmmword_1A53412E0;
  *(a1 + 128) = 0x4008000000000000;
  return result;
}

uint64_t sub_1A44AE528(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 136))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1A44AE570(uint64_t result, int a2, int a3)
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
    *(result + 120) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 136) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 136) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

id sub_1A44AE5E0(void *a1, char a2, char a3)
{
  if (a2)
  {
    type metadata accessor for LemonadeDetailsNavigationBar();
    v5 = objc_allocWithZone(type metadata accessor for LemonadeDetailsNavigationController());
    v6 = [v5 initWithNavigationBarClass:swift_getObjCClassFromMetadata() toolbarClass:0];
    [v6 pushViewController:a1 animated:0];
    v7 = v6;
    [v7 setModalPresentationStyle_];
    v8 = [v7 navigationBar];

    [v8 setHidden_];
    return v7;
  }

  else
  {

    return a1;
  }
}

uint64_t sub_1A44AEBC4(void *a1, double a2, double a3)
{
  v17.receiver = v3;
  v17.super_class = type metadata accessor for LemonadeDetailsNavigationBar();
  v7 = objc_msgSendSuper2(&v17, sel_hitTest_withEvent_, a1, a2, a3);
  if (v7)
  {
    sub_1A3C52C70(0, &qword_1EB126550);
    if ([v7 isKindOfClass_])
    {
      return v7;
    }
  }

  v16 = 0;
  v8 = swift_allocObject();
  *(v8 + 16) = a2;
  *(v8 + 24) = a3;
  *(v8 + 32) = v3;
  *(v8 + 40) = a1;
  *(v8 + 48) = &v16;
  v9 = swift_allocObject();
  *(v9 + 16) = sub_1A44AEF8C;
  *(v9 + 24) = v8;
  aBlock[4] = sub_1A3D9C868;
  aBlock[5] = v9;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1A3D9A79C;
  aBlock[3] = &block_descriptor_197;
  v10 = _Block_copy(aBlock);
  v11 = v3;
  v12 = a1;

  [v11 px:v10 enumerateDescendantSubviewsUsingBlock:?];

  _Block_release(v10);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if ((isEscapingClosureAtFileLocation & 1) == 0)
  {
    v7 = v16;

    return v7;
  }

  __break(1u);
  return result;
}

id sub_1A44AEEC0(void *a1, uint64_t a2, void *a3, uint64_t (*a4)(void))
{
  v8.receiver = a1;
  v8.super_class = a4();
  v5 = a3;
  v6 = objc_msgSendSuper2(&v8, sel_initWithCoder_, v5);

  if (v6)
  {
  }

  return v6;
}

id sub_1A44AEF54(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

void sub_1A44AEF8C(void *a1, _BYTE *a2)
{
  v5 = v2[2];
  v6 = v2[3];
  v8 = *(v2 + 4);
  v7 = *(v2 + 5);
  v9 = *(v2 + 6);
  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    [a1 convertPoint:v8 fromCoordinateSpace:{v5, v6}];
    v14.value.super.isa = v7;
    if (UIView.point(inside:withEvent:)(__PAIR128__(v11, v10), v14))
    {
      v12 = *v9;
      *v9 = a1;
      v13 = a1;

      *a2 = 1;
    }
  }
}

void sub_1A44AF078(void *a1)
{
  v2 = v1;
  *(v2 + 48) = 0;
  *(v2 + 16) = 0u;
  *(v2 + 32) = 0u;
  *(v2 + 64) = 0;
  *(v2 + 72) = 0;
  sub_1A5241604();
  *(v2 + 56) = a1;
  swift_allocObject();
  swift_weakInit();
  a1;

  sub_1A524D1A4();
}

uint64_t sub_1A44AF1EC(uint64_t a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v3 = result;
    if ((a1 & 0x10000000000000) != 0)
    {
      sub_1A44AF600(v8);
      KeyPath = swift_getKeyPath();
      v5 = MEMORY[0x1EEE9AC00](KeyPath);
      v6 = v3;
      v7 = v8;
      (*(*v3 + 232))(v5);

      return sub_1A3EA8D18(v8, &qword_1EB124D38, &qword_1EB124D50);
    }

    else
    {
    }
  }

  return result;
}

uint64_t sub_1A44AF320@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  (*(*v1 + 224))();

  swift_beginAccess();
  return sub_1A3F1B4DC(v1 + 16, a1, &qword_1EB124D38, &qword_1EB124D50);
}

uint64_t sub_1A44AF40C(uint64_t a1, uint64_t *a2)
{
  sub_1A3F1B4DC(a1, v7, &qword_1EB124D38, &qword_1EB124D50);
  v3 = *a2;
  swift_getKeyPath();
  v5 = v3;
  v6 = v7;
  (*(*v3 + 232))();

  return sub_1A3EA8D18(v7, &qword_1EB124D38, &qword_1EB124D50);
}

uint64_t sub_1A44AF4F4(uint64_t a1)
{
  swift_getKeyPath();
  v4 = v1;
  v5 = a1;
  (*(*v1 + 232))();

  return sub_1A3EA8D18(a1, &qword_1EB124D38, &qword_1EB124D50);
}

uint64_t sub_1A44AF5AC(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  sub_1A401EC28(a2, a1 + 16);
  return swift_endAccess();
}

double sub_1A44AF600@<D0>(uint64_t a1@<X8>)
{
  PXPhotosViewModel.bannerProvider.getter(&v6);
  if (v7)
  {
    sub_1A40204C4(&v6, v8);
    PXPhotosViewModel.bannerModel.getter(&v6);
    v2 = v9;
    v3 = v10;
    v4 = __swift_project_boxed_opaque_existential_1(v8, v9);
    sub_1A44AF700(v4, &v6, v2, v3, a1);
    sub_1A3EA8D18(&v6, &qword_1EB12ACC8, &qword_1EB12ACD0);
    __swift_destroy_boxed_opaque_existential_0(v8);
  }

  else
  {
    sub_1A3EA8D18(&v6, &qword_1EB12AC28, &qword_1EB12AC30);
    *(a1 + 32) = 0;
    result = 0.0;
    *a1 = 0u;
    *(a1 + 16) = 0u;
  }

  return result;
}

double sub_1A44AF700@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v30 = a2;
  v31 = a5;
  v28[1] = a1;
  v29 = a3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = sub_1A524DF24();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v28 - v9;
  v11 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](v12);
  v14 = v28 - v13;
  sub_1A3F1B4DC(v30, v32, &qword_1EB12ACC8, &qword_1EB12ACD0);
  sub_1A3E792C4(0, &qword_1EB12ACC8, &qword_1EB12ACD0);
  v15 = swift_dynamicCast();
  v16 = *(v11 + 56);
  if (v15)
  {
    v16(v10, 0, 1, AssociatedTypeWitness);
    (*(v11 + 32))(v14, v10, AssociatedTypeWitness);
    v17 = *(a4 + 48);
    v18 = v29;
    v19 = swift_getAssociatedTypeWitness();
    v20 = v31;
    v31[3] = v19;
    v20[4] = swift_getAssociatedConformanceWitness();
    __swift_allocate_boxed_opaque_existential_1(v20);
    v17(v14, v18, a4);
    (*(v11 + 8))(v14, AssociatedTypeWitness);
  }

  else
  {
    v22 = v31;
    v16(v10, 1, 1, AssociatedTypeWitness);
    (*(v8 + 8))(v10, v7);
    if (qword_1EB1C3C80 != -1)
    {
      swift_once();
    }

    v23 = sub_1A5246F24();
    __swift_project_value_buffer(v23, qword_1EB15B468);
    v24 = sub_1A5246F04();
    v25 = sub_1A524D244();
    v26 = v22;
    if (os_log_type_enabled(v24, v25))
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&dword_1A3C1C000, v24, v25, "unexpected banner model type", v27, 2u);
      MEMORY[0x1A590EEC0](v27, -1, -1);
    }

    v26[4] = 0;
    result = 0.0;
    *v26 = 0u;
    *(v26 + 1) = 0u;
  }

  return result;
}

unint64_t sub_1A44AFAE4()
{
  result = qword_1EB125E90;
  if (!qword_1EB125E90)
  {
    type metadata accessor for PhotosDetailsViewHeaderBannerModel();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB125E90);
  }

  return result;
}

uint64_t type metadata accessor for PhotosDetailsViewHeaderBannerModel()
{
  result = qword_1EB172080;
  if (!qword_1EB172080)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1A44AFC14()
{
  sub_1A3EA8D18(v0 + 16, &qword_1EB124D38, &qword_1EB124D50);

  swift_unknownObjectRelease();
  v1 = OBJC_IVAR____TtC12PhotosUICore34PhotosDetailsViewHeaderBannerModel___observationRegistrar;
  v2 = sub_1A5241614();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_1A44AFCE8()
{
  result = sub_1A5241614();
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

void sub_1A44AFD9C()
{
  v0 = sub_1A5246F24();
  __swift_allocate_value_buffer(v0, qword_1EB15B468);
  __swift_project_value_buffer(v0, qword_1EB15B468);
  sub_1A5246EF4();
}

uint64_t sub_1A44AFE18@<X0>(uint64_t a1@<X8>)
{
  sub_1A3C4C218(0, &qword_1EB1292E0, MEMORY[0x1E69C1CC0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v17[-v3];
  v5 = type metadata accessor for LemonadeItemsLayoutSpec.Style(0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v17[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (shouldUseNewCollectionsLayout()())
  {
    v8 = sub_1A3C5A374();

    return sub_1A42E7F0C(0, 1, v8, a1);
  }

  else
  {
    v10 = sub_1A3C47918();
    v12 = v11;
    v13 = sub_1A3C47918();
    v15 = v14;
    v16 = sub_1A3C4ED50();
    v17[8] = 1;
    *v7 = xmmword_1A5341460;
    v7[16] = 1;
    *(v7 + 3) = 0;
    v7[32] = 1;
    *(v7 + 5) = v10;
    *(v7 + 6) = v12;
    *(v7 + 7) = v13;
    *(v7 + 8) = v15;
    *(v7 + 72) = xmmword_1A5305D30;
    v7[88] = 0;
    v7[89] = v16;
    swift_storeEnumTagMultiPayload();
    sub_1A3C4ED54(v4);
    return sub_1A3C52D78(v7, 0, v4, a1);
  }
}

uint64_t sub_1A44AFFE0()
{
  sub_1A524EC94();
  sub_1A524DC04();
  sub_1A414D218();
  sub_1A524C4B4();
  return sub_1A524ECE4();
}

uint64_t sub_1A44B0054()
{
  sub_1A524DC04();
  sub_1A414D218();
  return sub_1A524C4B4();
}

uint64_t sub_1A44B00B4()
{
  sub_1A524EC94();
  sub_1A524DC04();
  sub_1A414D218();
  sub_1A524C4B4();
  return sub_1A524ECE4();
}

BOOL sub_1A44B0124(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  sub_1A3C52C70(0, &qword_1EB12B160);
  if (sub_1A524DBF4())
  {
    v7 = v2;
    v6 = v3;
    return static PeopleUnifiedManagerSourceType.== infix(_:_:)(&v7, &v6);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1A44B01B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for LemonadeVisionPeopleShelfCell();
  MEMORY[0x1EEE9AC00](v4);
  v6 = (&v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1A44B2608(0, &qword_1EB13C118, MEMORY[0x1E697F948]);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v25 - v8;
  sub_1A44B1AB8();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (shouldUseNewCollectionsLayout()())
  {
    sub_1A5242954();
    v14 = *(v32 + 16);
    v30 = a2;
    v31 = v4;
    v29 = v11;
    if (v14 < 0 || (*(v32 + 24) & 1) == 0)
    {

      v27 = 0;
      v28 = 0;
    }

    else
    {
      v15 = sub_1A5244294();
      v27 = v16;
      v28 = v15;
    }

    v20 = sub_1A5242964();
    v25 = v21;
    v26 = v20;
    sub_1A3D61454();
    sub_1A3D61558();
    sub_1A44B27D4(&qword_1EB124E88, sub_1A3D61454);
    sub_1A44B27D4(&qword_1EB124E80, sub_1A3D61454);
    sub_1A44B27D4(&qword_1EB124E78, sub_1A3D61454);

    v22 = sub_1A41F7694();

    LemonadeFavoritingMaterialTitleCell.init(_:glyphName:title:keyAsset:aspectRatio:background:)(v23, v28, v27, v26, v25, 0, sub_1A44B1BD0, a1, v13, v22);
    sub_1A44B276C(v13, v9, sub_1A44B1AB8);
    swift_storeEnumTagMultiPayload();
    sub_1A44B27D4(&qword_1EB125280, sub_1A44B1AB8);
    sub_1A44B27D4(&qword_1EB1254F0, type metadata accessor for LemonadeVisionPeopleShelfCell);
    sub_1A5249744();
    v18 = sub_1A44B1AB8;
    v19 = v13;
  }

  else
  {

    sub_1A3D61770(v17, v6);
    sub_1A44B276C(v6, v9, type metadata accessor for LemonadeVisionPeopleShelfCell);
    swift_storeEnumTagMultiPayload();
    sub_1A44B27D4(&qword_1EB125280, sub_1A44B1AB8);
    sub_1A44B27D4(&qword_1EB1254F0, type metadata accessor for LemonadeVisionPeopleShelfCell);
    sub_1A5249744();
    v18 = type metadata accessor for LemonadeVisionPeopleShelfCell;
    v19 = v6;
  }

  return sub_1A44B1E9C(v19, v18);
}

id sub_1A44B0624@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v3 = *(a1 + *(type metadata accessor for LemonadeShelfDisclosureOptions(0) + 24));
  result = [*(v3 + 24) observableViewMode];
  if (result)
  {
    v5 = 2;
  }

  else
  {
    type metadata accessor for LemonadePeopleProgressStatus();
    sub_1A3F53C40(*(v3 + 16));
    v6 = sub_1A3F546F4() != 4;

    v5 = 2 * v6;
  }

  *a2 = v5;
  return result;
}

uint64_t sub_1A44B06AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(v2 + 8);
  if (v3 > 1)
  {
    sub_1A524E404();
    MEMORY[0x1A5907B60](0xD000000000000023, 0x80000001A53D98B0);
    sub_1A524E624();
    result = sub_1A524E6E4();
    __break(1u);
  }

  else
  {
    v6 = *(v2 + 9);
    v15 = *v2;
    v16 = v3;
    v17 = v6;
    v7 = sub_1A3C36888();

    v8 = sub_1A42E6C64(&type metadata for LemonadePeopleShelfProvider, v7);
    v14 = v3;
    sub_1A414D2C8(a1, v8, v9, &v14, &v18);
    v10 = v19;
    v11 = v20;
    *a2 = v18;
    *(a2 + 16) = v10;
    *(a2 + 24) = v11;
    v12 = type metadata accessor for LemonadeNavigationDestination();
    swift_storeEnumTagMultiPayload();
    return (*(*(v12 - 8) + 56))(a2, 0, 1, v12);
  }

  return result;
}

uint64_t sub_1A44B0868@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *v3;
  v7 = *(v3 + 8);
  v8 = *(v3 + 9);
  v9 = *(a2 + 40);
  if (v9)
  {
    v10 = (*((*MEMORY[0x1E69E7D40] & *v9) + 0x2D0))();
    if (MEMORY[0x1A590D320]())
    {
      goto LABEL_3;
    }

LABEL_6:
    v20 = v6;
    v13 = v9 != 0;
    v21 = v7;
    v22 = v8;
    v14 = sub_1A3C36904();
    v15 = sub_1A3C66934(&v20, &type metadata for LemonadePeopleShelfProvider, v14);
    v20 = a1;
    type metadata accessor for PeopleUnifiedItemListManager();
    v16 = type metadata accessor for PeopleUnifiedItem();
    v17 = sub_1A44B27D4(&qword_1EB129918, type metadata accessor for PeopleUnifiedItemListManager);

    sub_1A426FECC(v15, &v20, v13, v10, v16, v17, a3);
    goto LABEL_8;
  }

  v10 = 0;
  if ((MEMORY[0x1A590D320]() & 1) == 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  v11 = *(a1 + 16);
  if (v11 < 0)
  {
    v18 = *((v11 & 0x7FFFFFFFFFFFFFFFLL) + 0x10);

    sub_1A4270930(v18);
  }

  else
  {
    v12 = *(v11 + 16);

    sub_1A4270424(v12);
  }

LABEL_8:
  type metadata accessor for LemonadeNavigationDestination();
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1A44B0A58(uint64_t a1, void *a2)
{
  v3 = *(a1 + 16);
  if (v3 < 0)
  {
    v8 = v3 & 0x7FFFFFFFFFFFFFFFLL;
    v9 = a2[5];
    if (v9)
    {
      v10 = *((*MEMORY[0x1E69E7D40] & *v9) + 0x2D0);

      v12 = v10(v11);
    }

    else
    {
    }

    if ((MEMORY[0x1A590D320](v12) & 1) == 0)
    {
      v18 = sub_1A3C36888();
      sub_1A414D84C(a2, &type metadata for LemonadePeopleShelfProvider, v18);
    }

    v17 = *(v8 + 16);

    sub_1A4270930(v17);
  }

  else
  {
    v4 = a2[5];
    if (v4)
    {
      v5 = *((*MEMORY[0x1E69E7D40] & *v4) + 0x2D0);

      v7 = v5(v6);
    }

    else
    {
    }

    if ((MEMORY[0x1A590D320](v7) & 1) == 0)
    {
      v14 = sub_1A3C36888();
      v15 = sub_1A3C6E9EC();
      v16 = sub_1A3C30368();
      sub_1A414DB94(a2, 0, 1, v15, 0, v16 & 1, &type metadata for LemonadePeopleShelfProvider, v14);
    }

    v13 = *(v3 + 16);

    sub_1A4270424(v13);
  }

  type metadata accessor for LemonadeNavigationDestination();
  return swift_storeEnumTagMultiPayload();
}

void *sub_1A44B0DB8(uint64_t a1, char a2, void *a3)
{
  v28 = a1;
  sub_1A3C4C218(0, &qword_1EB129890, type metadata accessor for LemonadeNavigationDestination, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v28 - v7;
  v9 = type metadata accessor for LemonadeNavigationDestination();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v29 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v28 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v28 - v16;
  v18 = *v3;
  v19 = *(v3 + 8);
  v20 = *(v3 + 9);
  if (sub_1A3DBEE68(a2 & 1, 0))
  {
    v30 = v18;
    v31 = v19;
    v32 = v20;
    sub_1A44B06AC(a3, v8);
    if ((*(v10 + 48))(v8, 1, v9) == 1)
    {
      sub_1A43DD648(v8);
      v21 = MEMORY[0x1E69E7CC0];
    }

    else
    {
      sub_1A40B671C(v8, v17);
      sub_1A44B276C(v17, v14, type metadata accessor for LemonadeNavigationDestination);
      v21 = sub_1A4249320(0, 1, 1, MEMORY[0x1E69E7CC0]);
      v23 = v21[2];
      v22 = v21[3];
      if (v23 >= v22 >> 1)
      {
        v21 = sub_1A4249320(v22 > 1, v23 + 1, 1, v21);
      }

      sub_1A44B1E9C(v17, type metadata accessor for LemonadeNavigationDestination);
      v21[2] = v23 + 1;
      sub_1A40B671C(v14, v21 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(v10 + 72) * v23);
    }
  }

  else
  {
    v21 = MEMORY[0x1E69E7CC0];
  }

  v24 = v29;
  sub_1A44B0A58(v28, a3);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v21 = sub_1A4249320(0, v21[2] + 1, 1, v21);
  }

  v26 = v21[2];
  v25 = v21[3];
  if (v26 >= v25 >> 1)
  {
    v21 = sub_1A4249320(v25 > 1, v26 + 1, 1, v21);
  }

  v21[2] = v26 + 1;
  sub_1A40B671C(v24, v21 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(v10 + 72) * v26);
  return v21;
}

uint64_t sub_1A44B1108@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v32 = a2;
  sub_1A44B1FA4(0, &qword_1EB13C120);
  v31 = v3;
  v28 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v28 - v4;
  sub_1A44B1EFC(0, &qword_1EB13D150, MEMORY[0x1E697F948]);
  v30 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v28 - v7;
  v9 = sub_1A5243624();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A44B1FA4(0, &qword_1EB125960);
  v14 = v13;
  v29 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = (&v28 - v15);
  sub_1A5242954();
  Kind = v34[1].Kind;
  v33 = v34;
  if ((Kind & 0x8000000000000000) == 0)
  {
    (*(v10 + 104))(v12, *MEMORY[0x1E69C2538], v9);
    v18 = sub_1A3C36888();

    v19 = sub_1A3C30368();
    v20 = sub_1A3C5A374();
    sub_1A414D324(Kind, v12, v19 & 1, v20 & 1, v16);
    (*(v10 + 8))(v12, v9);
    v21 = v29;
    (*(v29 + 16))(v8, v16, v14);
    swift_storeEnumTagMultiPayload();
    v34 = &type metadata for LemonadePeopleShelfProvider;
    v35 = v18;
    swift_getOpaqueTypeConformance2();
    v34 = &type metadata for LemonadePeopleShelfProvider;
    v35 = v18;
    swift_getOpaqueTypeConformance2();
    sub_1A5249744();

    return (*(v21 + 8))(v16, v14);
  }

  v23 = v31;

  if (PhotoKitItem.expectsKeyAssets.getter())
  {
    v24 = PhotoKitItem.keyAssets.getter();
    if (!v24)
    {
      v25 = 1;
      goto LABEL_7;
    }
  }

  v25 = 0;
LABEL_7:
  v26 = sub_1A3C36888();
  sub_1A414D6DC(a1, Kind & 0x7FFFFFFFFFFFFFFFLL, v25);
  v27 = v28;
  (*(v28 + 16))(v8, v5, v23);
  swift_storeEnumTagMultiPayload();
  v34 = &type metadata for LemonadePeopleShelfProvider;
  v35 = v26;
  swift_getOpaqueTypeConformance2();
  v34 = &type metadata for LemonadePeopleShelfProvider;
  v35 = v26;
  swift_getOpaqueTypeConformance2();
  sub_1A5249744();

  return (*(v27 + 8))(v5, v23);
}

uint64_t sub_1A44B15E8()
{
  v1 = *(v0 + 8);
  v2 = v1 >= 2;
  if (v1 >= 2)
  {
    v3 = "rModel";
  }

  else
  {
    v3 = "enuBuilder+PXMenuAction.swift";
  }

  if (v2)
  {
    v4 = 0xD00000000000002CLL;
  }

  else
  {
    v4 = 0xD000000000000020;
  }

  v5 = v3 | 0x8000000000000000;
  return LemonadeLocalizedPeopleAndPetsTitle(for:key:)(*v0, *&v4)._countAndFlagsBits;
}

uint64_t sub_1A44B1668@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if ([a1 px_isPeopleVirtualCollection])
  {
    return sub_1A44B06AC(a2, a3);
  }

  v6 = type metadata accessor for LemonadeNavigationDestination();
  v7 = *(*(v6 - 8) + 56);

  return v7(a3, 1, 1, v6);
}

uint64_t sub_1A44B175C(void *a1)
{
  if (*a1)
  {
    sub_1A3E4BB24();
  }

  return 0;
}

uint64_t sub_1A44B17D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1A44B27D4(&qword_1EB12A458, type metadata accessor for PeopleUnifiedItem);

  return sub_1A4201830(a1, a2, a3, v6);
}

BOOL sub_1A44B1854()
{
  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    return 1;
  }

  objc_opt_self();
  return swift_dynamicCastObjCClass() != 0;
}

uint64_t sub_1A44B18B8@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  type metadata accessor for PeopleUnifiedItem();
  v4 = sub_1A3C5A374();
  result = sub_1A44B6BAC(a1, v4 & 1);
  *a2 = result;
  return result;
}

uint64_t sub_1A44B1910@<X0>(uint64_t a1@<X8>)
{

  return sub_1A490E030(v2, 0, 1, a1);
}

unint64_t sub_1A44B1960(uint64_t a1)
{
  v2 = sub_1A3C36888();

  return sub_1A42E6E80(a1, v2);
}

void sub_1A44B199C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  v4 = [objc_opt_self() sharedScheduler];
  v6[4] = sub_1A44B281C;
  v6[5] = a2;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 1107296256;
  v6[2] = sub_1A3C2E0D0;
  v6[3] = &block_descriptor_198;
  v5 = _Block_copy(v6);

  [v4 scheduleMainQueueTask_];
  _Block_release(v5);

  LOBYTE(v6[0]) = v3;
  sub_1A3C36888();
  sub_1A414E050();
}

void sub_1A44B1AB8()
{
  if (!qword_1EB125278)
  {
    sub_1A3D61454();
    sub_1A3D61558();
    sub_1A44B27D4(&qword_1EB124E88, sub_1A3D61454);
    sub_1A44B27D4(&qword_1EB124E80, sub_1A3D61454);
    sub_1A44B27D4(&qword_1EB124E78, sub_1A3D61454);
    v0 = type metadata accessor for LemonadeFavoritingMaterialTitleCell();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB125278);
    }
  }
}

void sub_1A44B1BD0(void *a1@<X8>)
{

  PXDisplayCollectionDetailedCountsMake(v2);
  *a1 = v3;
}

void sub_1A44B1C00()
{
  sub_1A5242964();
  if (!v0)
  {
    sub_1A5242954();
    v1 = *(v2 + 16);

    if (v1 < 0)
    {

      sub_1A3C38BD4();
    }

    else
    {
      PhotoKitItem<>.isPet.getter();
      sub_1A3C38BD4();
    }
  }

  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

void sub_1A44B1E34(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_1A3C52C70(255, a3);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_1A44B1E9C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1A44B1EFC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    sub_1A44B1FA4(255, &qword_1EB125960);
    v7 = v6;
    sub_1A44B1FA4(255, &qword_1EB13C120);
    v9 = a3(a1, v7, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_1A44B1FA4(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    sub_1A3C36888();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v4)
    {
      atomic_store(OpaqueTypeMetadata2, a2);
    }
  }
}

uint64_t sub_1A44B2018(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LemonadeBookmark.CollectionIdentifier(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = (&v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1A44B276C(a1, v6, type metadata accessor for LemonadeBookmark.CollectionIdentifier);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    v8 = *v6;
    v9 = v6[1];
    type metadata accessor for PeopleUnifiedItemListManager();
    sub_1A3D9E6B8();
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_1A52F8E10;
    *(v10 + 32) = v8;
    *(v10 + 40) = v9;
    LOBYTE(v14) = 0;

    goto LABEL_5;
  }

  if (EnumCaseMultiPayload == 9)
  {
    type metadata accessor for PeopleUnifiedItemListManager();

    sub_1A3C649C4(&v14);
    v11 = a2;
LABEL_5:
    PeopleUnifiedItemListManager.__allocating_init(_:localIdentifiers:wantMagicItems:sourceType:peopleFetchLimit:peopleSoftCap:)(v11);
  }

  v14 = 0;
  v15 = 0xE000000000000000;
  sub_1A524E404();

  v14 = 0xD00000000000001BLL;
  v15 = 0x80000001A53B42A0;
  sub_1A44B27D4(&unk_1EB139AE0, type metadata accessor for LemonadeBookmark.CollectionIdentifier);
  v12 = sub_1A524EA44();
  MEMORY[0x1A5907B60](v12);

  result = sub_1A524E6E4();
  __break(1u);
  return result;
}

unint64_t sub_1A44B2250()
{
  result = qword_1EB125610;
  if (!qword_1EB125610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB125610);
  }

  return result;
}

uint64_t sub_1A44B22DC(unint64_t *a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_1A44B1E34(255, a2, a3, a4, type metadata accessor for PhotoKitItemListManager);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1A44B2344()
{
  result = qword_1EB125618;
  if (!qword_1EB125618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB125618);
  }

  return result;
}

unint64_t sub_1A44B2444(uint64_t a1)
{
  result = sub_1A3C36888();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1A44B250C()
{
  result = qword_1EB122858;
  if (!qword_1EB122858)
  {
    sub_1A44B2608(255, &qword_1EB122850, MEMORY[0x1E697F960]);
    sub_1A44B27D4(&qword_1EB125280, sub_1A44B1AB8);
    sub_1A44B27D4(&qword_1EB1254F0, type metadata accessor for LemonadeVisionPeopleShelfCell);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB122858);
  }

  return result;
}

void sub_1A44B2608(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    sub_1A44B1AB8();
    v7 = v6;
    v8 = type metadata accessor for LemonadeVisionPeopleShelfCell();
    v9 = a3(a1, v7, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

unint64_t sub_1A44B2678()
{
  result = qword_1EB13C130;
  if (!qword_1EB13C130)
  {
    sub_1A44B1EFC(255, &unk_1EB13D140, MEMORY[0x1E697F960]);
    sub_1A3C36888();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13C130);
  }

  return result;
}

uint64_t sub_1A44B276C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A44B27D4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1A44B281C()
{
  type metadata accessor for LemonadePeopleProgressStatus();
  sub_1A3F53C40(*(v0 + 16));
  sub_1A3F54B78();
}

uint64_t sub_1A44B28A0()
{
  v1 = *(v0 + 16);
  v2 = sub_1A3C593BC(*(v0 + 24));
  if ((*(v2 + 35) & 1) == 0)
  {
    *(v2 + 35) = 1;
    sub_1A3C2F3D4();
  }

  v4 = *(v1 + 16);
  v5 = *(v4 + 16);
  if (v5)
  {
    result = swift_beginAccess();
    if (!*(v4 + 16))
    {
LABEL_17:
      __break(1u);
      return result;
    }

    v6 = 0;
    v7 = v5 - 1;
    while (1)
    {
      v8 = *(v1 + 32);
      if (!*(v8 + 16))
      {
        goto LABEL_7;
      }

      result = sub_1A3C2F228(*(v4 + 32 + v6));
      if ((v9 & 1) == 0)
      {
        goto LABEL_7;
      }

      v10 = *(*(v8 + 56) + 8 * result);
      if (v10[33] != 1)
      {
        break;
      }

      if (v7 == v6 || (v10[34] & 1) == 0)
      {
        return result;
      }

LABEL_8:
      if (++v6 >= *(v4 + 16))
      {
        goto LABEL_17;
      }
    }

    if (v10[32] == 1)
    {

      sub_1A3C2F3D4();
    }

LABEL_7:
    if (v7 == v6)
    {
      return result;
    }

    goto LABEL_8;
  }

  return result;
}

uint64_t sub_1A44B29B8()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1A44B2A00()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1A44B2A48()
{
  v1 = 0x6465646E65747865;
  v2 = 0x686372616573;
  if (*v0 != 2)
  {
    v2 = 0x6E75614C74736F70;
  }

  if (*v0)
  {
    v1 = 0x7365766C656873;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

void *sub_1A44B2AE4()
{
  v1 = v0;
  sub_1A3C2EE34();
  v2 = *v0;
  v3 = sub_1A524E764();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + v17) = *(*(v2 + 48) + v17);
        *(*(v4 + 56) + 8 * v17) = v18;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

uint64_t sub_1A44B2C40@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1A5249234();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A44B3670(0, &qword_1EB128AA0, MEMORY[0x1E69C2218], MEMORY[0x1E697DCB8]);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v14 - v8;
  v10 = type metadata accessor for LemonadeSharedAlbumsCellAvatarView();
  sub_1A3D61D44(v1 + *(v10 + 32), v9);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_1A5242D14();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    sub_1A524D254();
    v13 = sub_1A524A014();
    sub_1A5246DF4();

    sub_1A5249224();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

uint64_t type metadata accessor for LemonadeSharedAlbumsCellAvatarView()
{
  result = qword_1EB17ACB0;
  if (!qword_1EB17ACB0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1A44B2EA0@<X0>(void *a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, __int16 a5@<W4>, uint64_t a6@<X8>)
{
  v12 = type metadata accessor for LemonadeSharedAlbumsCellAvatarView();
  v13 = v12[8];
  *(a6 + v13) = swift_getKeyPath();
  v14 = MEMORY[0x1E697DCB8];
  sub_1A44B3670(0, &qword_1EB128AA0, MEMORY[0x1E69C2218], MEMORY[0x1E697DCB8]);
  swift_storeEnumTagMultiPayload();
  v15 = a6 + v12[9];
  *v15 = swift_getKeyPath();
  *(v15 + 8) = 0;
  v16 = v12[10];
  *(a6 + v16) = swift_getKeyPath();
  sub_1A44B3670(0, &qword_1EB128A50, MEMORY[0x1E697E730], v14);
  swift_storeEnumTagMultiPayload();
  *a6 = a1;
  *(a6 + 8) = a2;
  *(a6 + 16) = a3;
  *(a6 + 24) = a4;
  *(a6 + 32) = a5;
  *(a6 + 33) = HIBYTE(a5) & 1;
  *(swift_allocObject() + 16) = a1;
  type metadata accessor for ShareParticipantImageConfigurationsFetcher(0);
  v17 = a1;
  return sub_1A5247C74();
}

uint64_t sub_1A44B3034@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(v1 + 16);
  type metadata accessor for ShareParticipantImageConfigurationsFetcher(0);
  result = sub_1A481EE44(v3);
  *a1 = result;
  return result;
}

uint64_t LemonadeSharedAlbumsCellAvatarView.body.getter@<X0>(uint64_t a1@<X8>)
{
  *a1 = sub_1A5249574();
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  return sub_1A44B30B4();
}

uint64_t sub_1A44B30B4()
{
  type metadata accessor for LemonadeSharedAlbumsCellAvatarView();
  sub_1A44B3670(0, &qword_1EB124910, type metadata accessor for ShareParticipantImageConfigurationsFetcher, MEMORY[0x1E697DA80]);
  v0 = sub_1A5247C84();
  v1 = (*(**&v8[0] + 128))(v0);

  if (v1)
  {
    if (*(v1 + 16))
    {
      sub_1A3C52C70(0, &qword_1EB126910);
      v2 = [swift_getObjCClassFromMetadata() sharedInstance];
      [v2 showParticipantCountBadges];

      v3 = sub_1A44B32A4();
      v5 = v4;
      sub_1A44B3450(v8);
      sub_1A493E1C4(v3, v5 & 1, v1, v8, v7);
      sub_1A44B3B70(v7, v8);
      v9 = 0;
      sub_1A44B3B1C();
      sub_1A5249744();
      return sub_1A44B3BCC(v7);
    }
  }

  sub_1A44B3B1C();
  return sub_1A5249744();
}

uint64_t sub_1A44B32A4()
{
  v1 = sub_1A5242D14();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v12 - v6;
  if (*(v0 + 33))
  {
    sub_1A44B2C40(&v12 - v6);
    (*(v2 + 104))(v4, *MEMORY[0x1E69C2210], v1);
    v8 = sub_1A5242D04();
    v9 = *(v2 + 8);
    v9(v4, v1);
    v9(v7, v1);
    if (v8)
    {
      return 0x404E000000000000;
    }

LABEL_10:
    if (*(v0 + 8))
    {
      return 0x4041000000000000;
    }

    else
    {
      return 0x403A000000000000;
    }
  }

  result = *(v0 + 16);
  if ((*(v0 + 32) & 1) == 0)
  {
    return result;
  }

  v11 = *(v0 + 24);
  if (!(result | v11))
  {
    goto LABEL_10;
  }

  if (result ^ 1 | v11)
  {
    return 0;
  }

  else
  {
    return 0x404E000000000000;
  }
}

uint64_t sub_1A44B3450@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1A5242D14();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v16 - v8;
  if ((*(v1 + 33) & 1) == 0)
  {
    v13 = *(v1 + 24);
    if ((*(v1 + 32) & 1) == 0)
    {
      v14 = sub_1A493B664();
      result = sub_1A4207508(v14, a1);
      *a1 = v13 > 0.0;
      *(a1 + 32) = v13;
      return result;
    }

    if (!(*(v1 + 16) ^ 1 | *&v13))
    {
      goto LABEL_3;
    }

LABEL_7:
    if (*(v1 + 8) == 1)
    {
      v12 = sub_1A493B8E0();
    }

    else
    {
      v12 = sub_1A493B664();
    }

    return sub_1A4207508(v12, a1);
  }

  sub_1A44B2C40(&v16 - v8);
  (*(v4 + 104))(v6, *MEMORY[0x1E69C2210], v3);
  v10 = sub_1A5242D04();
  v11 = *(v4 + 8);
  v11(v6, v3);
  v11(v9, v3);
  if ((v10 & 1) == 0)
  {
    goto LABEL_7;
  }

LABEL_3:
  if (*(v1 + 8) == 1)
  {
    v12 = sub_1A493BDDC();
  }

  else
  {
    v12 = sub_1A493BB5C();
  }

  return sub_1A4207508(v12, a1);
}

uint64_t sub_1A44B3620@<X0>(uint64_t a1@<X8>)
{
  *a1 = sub_1A5249574();
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  return sub_1A44B30B4();
}

void sub_1A44B3670(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1A44B36E8()
{
  sub_1A3C52C70(319, &qword_1EB126AC0);
  if (v0 <= 0x3F)
  {
    sub_1A44B38BC(319, &qword_1EB125300, &type metadata for LemonadeSharedAlbumsCellAvatarView.SizeClass, MEMORY[0x1E69E6720]);
    if (v1 <= 0x3F)
    {
      sub_1A44B3670(319, &qword_1EB124910, type metadata accessor for ShareParticipantImageConfigurationsFetcher, MEMORY[0x1E697DA80]);
      if (v2 <= 0x3F)
      {
        sub_1A44B3670(319, &qword_1EB124870, MEMORY[0x1E69C2218], MEMORY[0x1E697DCC0]);
        if (v3 <= 0x3F)
        {
          sub_1A44B38BC(319, &unk_1EB1247A0, &type metadata for LemonadeHorizontalSizeClass, MEMORY[0x1E697DCC0]);
          if (v4 <= 0x3F)
          {
            sub_1A44B3670(319, &qword_1EB124718, MEMORY[0x1E697E730], MEMORY[0x1E697DCC0]);
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

void sub_1A44B38BC(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t storeEnumTagSinglePayload for LemonadeSharedAlbumsCellAvatarView.SizeClass(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = 0;
    *(result + 8) = 0;
    *(result + 16) = 0;
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

  *(result + 17) = v3;
  return result;
}

uint64_t sub_1A44B393C(uint64_t a1)
{
  if (*(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1A44B3958(uint64_t result, int a2)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
    *(result + 16) = 1;
  }

  else
  {
    *(result + 16) = 0;
  }

  return result;
}

unint64_t sub_1A44B3988()
{
  result = qword_1EB13C138;
  if (!qword_1EB13C138)
  {
    sub_1A44B39E0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13C138);
  }

  return result;
}

void sub_1A44B39E0()
{
  if (!qword_1EB13C140)
  {
    sub_1A44B3A44();
    sub_1A44B3A9C();
    v0 = sub_1A524B894();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB13C140);
    }
  }
}

void sub_1A44B3A44()
{
  if (!qword_1EB13C148)
  {
    v0 = sub_1A5249754();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB13C148);
    }
  }
}

unint64_t sub_1A44B3A9C()
{
  result = qword_1EB13C150;
  if (!qword_1EB13C150)
  {
    sub_1A44B3A44();
    sub_1A44B3B1C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13C150);
  }

  return result;
}

unint64_t sub_1A44B3B1C()
{
  result = qword_1EB13C158;
  if (!qword_1EB13C158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13C158);
  }

  return result;
}

uint64_t type metadata accessor for GenerativeStoryBackgroundView()
{
  result = qword_1EB164B30;
  if (!qword_1EB164B30)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1A44B3C6C@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X8>)
{
  v94 = a2;
  sub_1A44B5480(0, &qword_1EB122C48, type metadata accessor for GenerativeStoryIntelligenceBackgroundView, MEMORY[0x1E697F948]);
  v80 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v76 - v4;
  sub_1A44B544C(0);
  v92 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v82 = &v76 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = type metadata accessor for GenerativeStoryIntelligenceBackgroundView(0);
  MEMORY[0x1EEE9AC00](v81);
  v78 = (&v76 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1A44B5378(0);
  v87 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v79 = &v76 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1E697F948];
  sub_1A44B62C4(0, &qword_1EB13C1C8, sub_1A44B513C, sub_1A44B544C, MEMORY[0x1E697F948]);
  v88 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v90 = &v76 - v13;
  sub_1A44B62C4(0, &qword_1EB13C1D0, sub_1A44B5184, sub_1A44B5378, v11);
  v83 = v14;
  MEMORY[0x1EEE9AC00](v14);
  v85 = &v76 - v15;
  sub_1A44B513C(0);
  v89 = v16;
  MEMORY[0x1EEE9AC00](v16);
  v86 = &v76 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A44B5184(0);
  v84 = v18;
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v76 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A44B50F4(0);
  MEMORY[0x1EEE9AC00](v21 - 8);
  v93 = &v76 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v91 = &v76 - v24;
  v25 = sub_1A5241FC4();
  v26 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25);
  v28 = &v76 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_1A5244084();
  v30 = *(v29 - 8);
  MEMORY[0x1EEE9AC00](v29);
  v32 = &v76 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = 0.0;
  if (a1[9] == 1)
  {
    type metadata accessor for GenerativeStoryBackgroundView();
    sub_1A3F75AC0(v32);
    sub_1A5244044();
    (*(v30 + 8))(v32, v29);
    sub_1A5241F94();
    v33 = v34;
    (*(v26 + 8))(v28, v25);
  }

  sub_1A3C56110();
  v35 = [swift_getObjCClassFromMetadata() sharedInstance];
  v36 = v35;
  v37 = &selRef_fullScreenBackgroundMode;
  if (a1[8] != 1)
  {
    v37 = &selRef_entryPointBackgroundMode;
  }

  v38 = [v35 *v37];

  if (v38 == 2)
  {
    v54 = v78;
    sub_1A4297E48(v78, v33);
    sub_1A44B67FC(v54, v5, type metadata accessor for GenerativeStoryIntelligenceBackgroundView);
    swift_storeEnumTagMultiPayload();
    sub_1A44B68C4(&qword_1EB1250B0, type metadata accessor for GenerativeStoryIntelligenceBackgroundView);
    sub_1A44B6348();
    v55 = v82;
    sub_1A5249744();
    sub_1A44B67FC(v55, v90, sub_1A44B544C);
    swift_storeEnumTagMultiPayload();
    sub_1A44B639C();
    sub_1A44B66E4();
    v45 = v91;
    sub_1A5249744();
    sub_1A44B6864(v55, sub_1A44B544C);
    v46 = type metadata accessor for GenerativeStoryIntelligenceBackgroundView;
    v47 = v54;
LABEL_14:
    sub_1A44B6864(v47, v46);
    goto LABEL_18;
  }

  if (v38 != 1)
  {
    if (v38)
    {
      swift_storeEnumTagMultiPayload();
      sub_1A44B68C4(&qword_1EB1250B0, type metadata accessor for GenerativeStoryIntelligenceBackgroundView);
      sub_1A44B6348();
      v56 = v82;
      sub_1A5249744();
      sub_1A44B67FC(v56, v90, sub_1A44B544C);
      swift_storeEnumTagMultiPayload();
      sub_1A44B639C();
      sub_1A44B66E4();
      v45 = v91;
      sub_1A5249744();
      v46 = sub_1A44B544C;
      v47 = v56;
    }

    else
    {
      sub_1A44B4A88();
      v39 = &v20[*(v84 + 36)];
      v40 = *(sub_1A5248A14() + 20);
      v41 = *MEMORY[0x1E697F468];
      v42 = sub_1A52494A4();
      (*(*(v42 - 8) + 104))(v39 + v40, v41, v42);
      *v39 = v33;
      v39[1] = v33;
      sub_1A3E42C88();
      *(v39 + *(v43 + 36)) = 256;
      sub_1A44B67FC(v20, v85, sub_1A44B5184);
      swift_storeEnumTagMultiPayload();
      sub_1A44B647C(&qword_1EB124178, sub_1A44B5184, sub_1A44B6530);
      sub_1A44B647C(&qword_1EB13C1E0, sub_1A44B5378, sub_1A44B65E0);
      v44 = v86;
      sub_1A5249744();
      sub_1A44B67FC(v44, v90, sub_1A44B513C);
      swift_storeEnumTagMultiPayload();
      sub_1A44B639C();
      sub_1A44B66E4();
      v45 = v91;
      sub_1A5249744();
      sub_1A44B6864(v44, sub_1A44B513C);
      v46 = sub_1A44B5184;
      v47 = v20;
    }

    goto LABEL_14;
  }

  v48 = *a1;
  v49 = (*(**a1 + 240))();
  v45 = v91;
  v77 = a1;
  if (!v49)
  {
    goto LABEL_16;
  }

  v50 = v49;
  if ([v49 count] < 1)
  {
    swift_unknownObjectRelease();
LABEL_16:
    v95 = 0;
    v96 = 0;
    v97 = 256;
    sub_1A44B69C0(0, &qword_1EB125338, MEMORY[0x1E69E5FE0], MEMORY[0x1E69E5FE8], type metadata accessor for GenerativeStoryMovieBackgroundView);
    sub_1A44B6660();
    sub_1A44B6348();
    sub_1A5249744();
    goto LABEL_17;
  }

  v95 = *(v48 + 16);
  v51 = a1[8];
  swift_unknownObjectRetain();
  v52 = MEMORY[0x1E69E5FE0];
  v53 = MEMORY[0x1E69E5FE8];
  sub_1A42C81EC(&v95, v50, v51, MEMORY[0x1E69E5FE0], &v98);
  v95 = v98;
  v96 = v99;
  v97 = v100;
  sub_1A44B69C0(0, &qword_1EB125338, v52, v53, type metadata accessor for GenerativeStoryMovieBackgroundView);
  sub_1A44B6660();
  sub_1A44B6348();
  swift_unknownObjectRetain();
  sub_1A5249744();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
LABEL_17:
  v57 = v98;
  v58 = v99;
  v59 = v100;
  v60 = v101;
  v61 = v79;
  v62 = &v79[*(v87 + 36)];
  v63 = *(sub_1A5248A14() + 20);
  v64 = *MEMORY[0x1E697F468];
  v65 = sub_1A52494A4();
  (*(*(v65 - 8) + 104))(v62 + v63, v64, v65);
  *v62 = v33;
  v62[1] = v33;
  sub_1A3E42C88();
  *(v62 + *(v66 + 36)) = 256;
  *v61 = v57;
  *(v61 + 8) = v58;
  *(v61 + 16) = v59;
  *(v61 + 17) = v60;
  sub_1A44B67FC(v61, v85, sub_1A44B5378);
  swift_storeEnumTagMultiPayload();
  sub_1A44B647C(&qword_1EB124178, sub_1A44B5184, sub_1A44B6530);
  sub_1A44B647C(&qword_1EB13C1E0, sub_1A44B5378, sub_1A44B65E0);
  v67 = v86;
  sub_1A5249744();
  sub_1A44B67FC(v67, v90, sub_1A44B513C);
  swift_storeEnumTagMultiPayload();
  sub_1A44B639C();
  sub_1A44B66E4();
  sub_1A5249744();
  sub_1A44B6864(v67, sub_1A44B513C);
  sub_1A44B6864(v61, sub_1A44B5378);
  a1 = v77;
LABEL_18:
  if (a1[10] == 1)
  {
    sub_1A524B404();
    v68 = sub_1A524B474();

    v69 = sub_1A5248874();
    v70 = sub_1A524A064();
  }

  else
  {
    v68 = 0;
    v69 = 0;
    v70 = 0;
  }

  v71 = v93;
  sub_1A44B67FC(v45, v93, sub_1A44B50F4);
  v72 = v94;
  sub_1A44B67FC(v71, v94, sub_1A44B50F4);
  sub_1A44B50C0(0);
  v74 = v72 + *(v73 + 48);
  *v74 = v68;
  *(v74 + 8) = v69;
  *(v74 + 16) = v70;
  sub_1A44B6864(v45, sub_1A44B50F4);

  return sub_1A44B6864(v71, sub_1A44B50F4);
}

uint64_t sub_1A44B4A88()
{
  sub_1A44B5480(0, &qword_1EB13C1F0, sub_1A44B5200, MEMORY[0x1E697F948]);
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v13 - v2;
  sub_1A44B5200();
  v5 = MEMORY[0x1EEE9AC00](v4);
  v7 = (&v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = (*(**v0 + 240))(v5);
  if (v8 && (v9 = [v8 firstObject], swift_unknownObjectRelease(), v9))
  {
    *v7 = sub_1A524BC74();
    v7[1] = v10;
    sub_1A44B6794();
    sub_1A44B5614(v9, v7 + *(v11 + 44));
    sub_1A44B67FC(v7, v3, sub_1A44B5200);
    swift_storeEnumTagMultiPayload();
    sub_1A44B68C4(&qword_1EB1215C0, sub_1A44B5200);
    sub_1A44B6348();
    sub_1A5249744();
    swift_unknownObjectRelease();
    return sub_1A44B6864(v7, sub_1A44B5200);
  }

  else
  {
    swift_storeEnumTagMultiPayload();
    sub_1A44B68C4(&qword_1EB1215C0, sub_1A44B5200);
    sub_1A44B6348();
    return sub_1A5249744();
  }
}

uint64_t sub_1A44B4D1C(uint64_t a1)
{
  v1[2] = a1;
  sub_1A524CC54();
  v1[3] = sub_1A524CC44();
  v3 = sub_1A524CBC4();
  v1[4] = v3;
  v1[5] = v2;

  return MEMORY[0x1EEE6DFA0](sub_1A44B4DB4, v3, v2);
}

uint64_t sub_1A44B4DB4()
{
  v3 = (*(***(v0 + 16) + 568) + **(***(v0 + 16) + 568));
  v1 = swift_task_alloc();
  *(v0 + 48) = v1;
  *v1 = v0;
  v1[1] = sub_1A44B4ED4;

  return v3();
}

uint64_t sub_1A44B4ED4()
{
  v1 = *v0;

  v2 = *(v1 + 40);
  v3 = *(v1 + 32);

  return MEMORY[0x1EEE6DFA0](sub_1A3E539B8, v3, v2);
}

uint64_t sub_1A44B4FF4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for GenerativeStoryBackgroundView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_1A44B5200()
{
  if (!qword_1EB1215B8)
  {
    sub_1A44B5294(255);
    sub_1A44B68C4(&qword_1EB121380, sub_1A44B5294);
    v0 = sub_1A524B8B4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB1215B8);
    }
  }
}

void sub_1A44B52FC(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t), void (*a4)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    a4(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v7)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

void sub_1A44B53C0()
{
  if (!qword_1EB13C198)
  {
    sub_1A44B69C0(255, &qword_1EB125338, MEMORY[0x1E69E5FE0], MEMORY[0x1E69E5FE8], type metadata accessor for GenerativeStoryMovieBackgroundView);
    v0 = sub_1A5249754();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB13C198);
    }
  }
}

void sub_1A44B5480(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t, ValueMetadata *))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7, &type metadata for PlaceholderBackgroundView);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_1A44B54EC()
{
  if (!qword_1EB123D50)
  {
    sub_1A44B69C0(255, &qword_1EB123D58, MEMORY[0x1E69815C0], MEMORY[0x1E6980A38], MEMORY[0x1E697E830]);
    v0 = sub_1A524DF24();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB123D50);
    }
  }
}

void sub_1A44B5570()
{
  if (!qword_1EB13C1A0)
  {
    sub_1A44B62C4(255, &qword_1EB13C160, sub_1A44B5058, MEMORY[0x1E697C028], MEMORY[0x1E697E830]);
    v0 = sub_1A5248804();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB13C1A0);
    }
  }
}

uint64_t sub_1A44B5614@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v42 = a1;
  v48 = a2;
  v2 = sub_1A5242CB4();
  v43 = *(v2 - 8);
  v44 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v38 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1A5242CD4();
  v46 = *(v5 - 8);
  v47 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v45 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v49 = &v38 - v8;
  v9 = sub_1A5243834();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3C6B6DC(0, &unk_1EB129180, MEMORY[0x1E69C2060], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v38 - v14;
  v16 = sub_1A5243EC4();
  v41 = *(v16 - 8);
  v17 = v41;
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v38 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v38 - v21;
  v50 = 0u;
  v51 = 0u;
  v52 = 1;
  v23 = sub_1A52429A4();
  (*(*(v23 - 8) + 56))(v15, 1, 1, v23);
  (*(v10 + 104))(v12, *MEMORY[0x1E69C2678], v9);
  swift_unknownObjectRetain();
  v24 = v22;
  v40 = v22;
  sub_1A5243ED4();
  sub_1A524BE94();
  sub_1A524BE84();
  (*(v43 + 104))(v4, *MEMORY[0x1E69C21C0], v44);
  v25 = v49;
  sub_1A5242C94();
  v26 = *(v17 + 16);
  v38 = v16;
  v39 = v19;
  v26(v19, v24, v16);
  v27 = v45;
  v28 = v46;
  v29 = *(v46 + 16);
  v30 = v25;
  v31 = v47;
  v29(v45, v30, v47);
  v32 = v48;
  v26(v48, v19, v16);
  sub_1A44B52C8(0);
  v29(&v32[*(v33 + 48)], v27, v31);
  v34 = *(v28 + 8);
  v34(v49, v31);
  v35 = *(v41 + 8);
  v36 = v38;
  v35(v40, v38);
  v34(v27, v31);
  return (v35)(v39, v36);
}

uint64_t sub_1A44B5B14@<X0>(uint64_t a1@<X0>, char a2@<W1>, char a3@<W2>, char a4@<W3>, uint64_t a5@<X8>)
{
  *a5 = a1;
  *(a5 + 8) = a2;
  *(a5 + 9) = a3;
  *(a5 + 10) = a4;
  v6 = *(type metadata accessor for GenerativeStoryBackgroundView() + 32);
  *(a5 + v6) = swift_getKeyPath();
  sub_1A3C6B6DC(0, &qword_1EB128A90, MEMORY[0x1E69C2948], MEMORY[0x1E697DCB8]);

  return swift_storeEnumTagMultiPayload();
}

void sub_1A44B5BD0(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](a1 - 8);
  sub_1A44B3C6C(v2, a2);
  sub_1A44B67FC(v2, &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for GenerativeStoryBackgroundView);
  v6 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v7 = swift_allocObject();
  sub_1A44B4FF4(&v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v7 + v6);
  sub_1A44B62C4(0, &qword_1EB13C160, sub_1A44B5058, MEMORY[0x1E697C028], MEMORY[0x1E697E830]);
  v9 = (a2 + *(v8 + 36));
  sub_1A5248394();
  sub_1A524CC74();
  *v9 = &unk_1A5341950;
  v9[1] = v7;
  v10 = sub_1A5248874();
  LOBYTE(v9) = sub_1A524A064();
  sub_1A44B5570();
  v12 = a2 + *(v11 + 36);
  *v12 = v10;
  *(v12 + 8) = v9;
}

void sub_1A44B5D94()
{
  type metadata accessor for GenerativeStorySuggestionViewModel(319);
  if (v0 <= 0x3F)
  {
    sub_1A3C6B6DC(319, &qword_1EB124840, MEMORY[0x1E69C2948], MEMORY[0x1E697DCC0]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_1A44B5E5C()
{
  result = qword_1EB13C1A8;
  if (!qword_1EB13C1A8)
  {
    sub_1A44B5570();
    sub_1A44B5EDC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13C1A8);
  }

  return result;
}

unint64_t sub_1A44B5EDC()
{
  result = qword_1EB13C1B0;
  if (!qword_1EB13C1B0)
  {
    sub_1A44B62C4(255, &qword_1EB13C160, sub_1A44B5058, MEMORY[0x1E697C028], MEMORY[0x1E697E830]);
    sub_1A44B5FD0();
    sub_1A44B68C4(&qword_1EB128940, MEMORY[0x1E697C028]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13C1B0);
  }

  return result;
}

unint64_t sub_1A44B5FD0()
{
  result = qword_1EB13C1B8;
  if (!qword_1EB13C1B8)
  {
    sub_1A44B5058(255);
    sub_1A44B68C4(&qword_1EB13C1C0, sub_1A44B508C);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13C1B8);
  }

  return result;
}

uint64_t objectdestroyTm_54()
{
  v1 = (type metadata accessor for GenerativeStoryBackgroundView() - 8);
  v2 = v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80));

  v3 = v1[10];
  sub_1A3C6B6DC(0, &qword_1EB128A90, MEMORY[0x1E69C2948], MEMORY[0x1E697DCB8]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = sub_1A5244084();
    (*(*(v4 - 8) + 8))(v2 + v3, v4);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1A44B61F8()
{
  v2 = *(type metadata accessor for GenerativeStoryBackgroundView() - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1A3D60150;

  return sub_1A44B4D1C(v0 + v3);
}

void sub_1A44B62C4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3(255);
    v10 = a4(255);
    v11 = a5(a1, v9, v10);
    if (!v12)
    {
      atomic_store(v11, a2);
    }
  }
}

unint64_t sub_1A44B6348()
{
  result = qword_1EB1674B0[0];
  if (!qword_1EB1674B0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB1674B0);
  }

  return result;
}

unint64_t sub_1A44B639C()
{
  result = qword_1EB13C1D8;
  if (!qword_1EB13C1D8)
  {
    sub_1A44B513C(255);
    sub_1A44B647C(&qword_1EB124178, sub_1A44B5184, sub_1A44B6530);
    sub_1A44B647C(&qword_1EB13C1E0, sub_1A44B5378, sub_1A44B65E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13C1D8);
  }

  return result;
}

uint64_t sub_1A44B647C(unint64_t *a1, void (*a2)(uint64_t), void (*a3)(void))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    a3();
    sub_1A44B68C4(&qword_1EB128A00, sub_1A3E42C88);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1A44B6530()
{
  result = qword_1EB1225D8;
  if (!qword_1EB1225D8)
  {
    sub_1A44B51CC(255);
    sub_1A44B68C4(&qword_1EB1215C0, sub_1A44B5200);
    sub_1A44B6348();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1225D8);
  }

  return result;
}

unint64_t sub_1A44B65E0()
{
  result = qword_1EB13C1E8;
  if (!qword_1EB13C1E8)
  {
    sub_1A44B53C0();
    sub_1A44B6660();
    sub_1A44B6348();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13C1E8);
  }

  return result;
}

unint64_t sub_1A44B6660()
{
  result = qword_1EB125340;
  if (!qword_1EB125340)
  {
    sub_1A44B69C0(255, &qword_1EB125338, MEMORY[0x1E69E5FE0], MEMORY[0x1E69E5FE8], type metadata accessor for GenerativeStoryMovieBackgroundView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB125340);
  }

  return result;
}

unint64_t sub_1A44B66E4()
{
  result = qword_1EB122838;
  if (!qword_1EB122838)
  {
    sub_1A44B544C(255);
    sub_1A44B68C4(&qword_1EB1250B0, type metadata accessor for GenerativeStoryIntelligenceBackgroundView);
    sub_1A44B6348();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB122838);
  }

  return result;
}

void sub_1A44B6794()
{
  if (!qword_1EB13C1F8)
  {
    sub_1A44B5294(255);
    v0 = sub_1A52483B4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB13C1F8);
    }
  }
}

uint64_t sub_1A44B67FC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A44B6864(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1A44B68C4(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1A44B690C()
{
  if (!qword_1EB13C208)
  {
    sub_1A44B69C0(255, &qword_1EB13C210, MEMORY[0x1E697E790], MEMORY[0x1E697E788], MEMORY[0x1E69809C0]);
    sub_1A3D6F4A4();
    sub_1A44B6A14();
    v0 = sub_1A5247D54();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB13C208);
    }
  }
}

void sub_1A44B69C0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = a5(0, a3, a4);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

unint64_t sub_1A44B6A14()
{
  result = qword_1EB13C218;
  if (!qword_1EB13C218)
  {
    sub_1A44B69C0(255, &qword_1EB13C210, MEMORY[0x1E697E790], MEMORY[0x1E697E788], MEMORY[0x1E69809C0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13C218);
  }

  return result;
}

uint64_t sub_1A44B6AA8(uint64_t a1, char a2)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  *(result + 24) = a2;
  return result;
}

uint64_t sub_1A44B6AEC(uint64_t a1, char a2)
{
  result = swift_allocObject();
  *(result + 16) = a1 | 0x8000000000000000;
  *(result + 24) = a2;
  return result;
}

uint64_t PeopleUnifiedItem.selectionIdentifier.getter()
{
  v1 = *((*(v0 + 16) & 0x7FFFFFFFFFFFFFFFLL) + 0x10);
  v2 = [v1 localIdentifier];

  v3 = sub_1A524C674();
  return v3;
}

uint64_t sub_1A44B6BAC(void *a1, char a2)
{
  objc_opt_self();
  v4 = swift_dynamicCastObjCClass();
  if (v4)
  {
    v5 = v4;
    v6 = a1;
    return sub_1A44B793C(v5, a2 & 1);
  }

  else
  {
    objc_opt_self();
    result = swift_dynamicCastObjCClass();
    if (result)
    {
      v8 = result;
      v9 = a1;
      return sub_1A44B77D4(v8, a2 & 1);
    }
  }

  return result;
}

uint64_t sub_1A44B6C3C(uint64_t a1, char a2)
{
  sub_1A3C341C8(a1, v7);
  sub_1A3E4C7D0();
  sub_1A3C379F4(0, &qword_1EB125C68, &qword_1EB126C28);
  if (swift_dynamicCast())
  {
    v3 = swift_allocObject();
    v4 = v3;
    *(v3 + 16) = v6 | 0x8000000000000000;
  }

  else
  {
    sub_1A3C379F4(0, &qword_1EB125C30, &qword_1EB1265C0);
    if (!swift_dynamicCast())
    {
      v4 = 0;
      goto LABEL_7;
    }

    v3 = swift_allocObject();
    v4 = v3;
    *(v3 + 16) = v6;
  }

  *(v3 + 24) = a2 & 1;
LABEL_7:
  __swift_destroy_boxed_opaque_existential_0(v7);
  return v4;
}

id PeopleUnifiedItem.id.getter()
{
  v1 = *((*(v0 + 16) & 0x7FFFFFFFFFFFFFFFLL) + 0x10);
  v2 = PHObject.itemID.getter();

  return v2;
}

uint64_t PeopleUnifiedItem.name.getter()
{
  v1 = *(v0 + 16);
  if (v1 < 0)
  {
    v3 = v1 & 0x7FFFFFFFFFFFFFFFLL;
    v4 = *(v3 + 48);

    if ((sub_1A3D61684(3, v4) & 1) == 0)
    {
      v7 = [*(v3 + 16) px_title];
      v5 = sub_1A524C674();

      return v5;
    }

    v2 = PhotoKitItem<>.title.getter();
  }

  else
  {

    v2 = PhotoKitItem<>.name.getter();
  }

  v5 = v2;

  return v5;
}

uint64_t PeopleUnifiedItem.collectionSymbolName.getter()
{
  if ((*(v0 + 16) & 0x8000000000000000) != 0)
  {
    return 0x322E6E6F73726570;
  }

  v1 = PhotoKitItem<>.isPet.getter();

  if (v1)
  {
    return 0x746E697270776170;
  }

  else
  {
    return 0x662E6E6F73726570;
  }
}

uint64_t PeopleUnifiedItem.description.getter()
{
  sub_1A524E404();
  MEMORY[0x1A5907B60](0xD000000000000012, 0x80000001A53D9B10);
  sub_1A524E624();
  return 0;
}

uint64_t PeopleUnifiedItem.diagnosticDescription.getter()
{
  MEMORY[0x1A5907B60](0x49676E696B636162, 0xED0000203A6D6574);
  sub_1A524E624();
  return 0;
}

uint64_t PeopleUnifiedItem.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

id sub_1A44B7084@<X0>(void *a1@<X8>)
{
  result = *((*(*v1 + 16) & 0x7FFFFFFFFFFFFFFFLL) + 0x10);
  *a1 = result;
  return result;
}

uint64_t sub_1A44B70BC()
{
  v1 = *((*(*v0 + 16) & 0x7FFFFFFFFFFFFFFFLL) + 0x10);
  v2 = [v1 localIdentifier];

  v3 = sub_1A524C674();
  return v3;
}

uint64_t sub_1A44B7134()
{
  if ((*(*v0 + 16) & 0x8000000000000000) != 0)
  {
    return 0x322E6E6F73726570;
  }

  v1 = PhotoKitItem<>.isPet.getter();

  if (v1)
  {
    return 0x746E697270776170;
  }

  else
  {
    return 0x662E6E6F73726570;
  }
}

uint64_t sub_1A44B71DC()
{
  sub_1A524E404();
  MEMORY[0x1A5907B60](0xD000000000000012, 0x80000001A53D9B10);
  sub_1A524E624();
  return 0;
}

uint64_t sub_1A44B7270()
{
  MEMORY[0x1A5907B60](0x49676E696B636162, 0xED0000203A6D6574);
  sub_1A524E624();
  return 0;
}

void sub_1A44B72F8()
{
  sub_1A44B7C90(&qword_1EB12A450);

    ;
  }
}

void sub_1A44B7354(void *a1@<X8>)
{
  v3 = *((*(*v1 + 16) & 0x7FFFFFFFFFFFFFFFLL) + 0x10);
  v4 = PHObject.itemID.getter();

  *a1 = v4;
}

uint64_t PeopleUnifiedItem.isFavorite.getter()
{
  if ((*(v0 + 16) & 0x8000000000000000) != 0)
  {
    return 0;
  }

  v1 = PhotoKitItem<>.isFavorite.getter(&protocol witness table for PHPerson);

  return v1 & 1;
}

Swift::Void __swiftcall PeopleUnifiedItem.setIsFavorite(_:undoManager:)(Swift::Bool _, NSUndoManager_optional undoManager)
{
  if ((*(v2 + 16) & 0x8000000000000000) != 0)
  {
    sub_1A524E6E4();
    __break(1u);
  }

  else
  {
    isa = undoManager.value.super.isa;

    PhotoKitItem<>.setIsFavorite(_:undoManager:)(_, isa, &protocol witness table for PHPerson);
  }
}

uint64_t PeopleUnifiedItem.isPet.getter()
{
  if ((*(v0 + 16) & 0x8000000000000000) != 0)
  {
    return 0;
  }

  v1 = PhotoKitItem<>.isPet.getter();

  return v1 & 1;
}

uint64_t sub_1A44B753C()
{
  if ((*(*v0 + 16) & 0x8000000000000000) != 0)
  {
    return 0;
  }

  v1 = PhotoKitItem<>.isPet.getter();

  return v1 & 1;
}

uint64_t sub_1A44B7588()
{
  if ((*(*v0 + 16) & 0x8000000000000000) != 0)
  {
    return 0;
  }

  v1 = PhotoKitItem<>.isFavorite.getter(&protocol witness table for PHPerson);

  return v1 & 1;
}

uint64_t sub_1A44B75DC(char a1, uint64_t a2)
{
  if ((*(*v2 + 16) & 0x8000000000000000) != 0)
  {
    result = sub_1A524E6E4();
    __break(1u);
  }

  else
  {

    PhotoKitItem<>.setIsFavorite(_:undoManager:)(a1 & 1, a2, &protocol witness table for PHPerson);
  }

  return result;
}

id PXPeopleUnifiedItemFactory.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id PXPeopleUnifiedItemFactory.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PXPeopleUnifiedItemFactory();
  return objc_msgSendSuper2(&v2, sel_init);
}

id PXPeopleUnifiedItemFactory.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PXPeopleUnifiedItemFactory();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1A44B77D4(uint64_t a1, char a2)
{
  sub_1A3C379F4(0, &qword_1EB125C30, &qword_1EB1265C0);
  v23[0] = 2;
  sub_1A3C6C180(&v21);
  v19 = v21;
  v20 = v22;
  v4 = sub_1A42011B0();
  sub_1A3C6C18C(&v17);
  v15 = v17;
  v16 = v18;
  v5 = sub_1A3C5A374();
  v6 = sub_1A3C30368();
  v7 = sub_1A3C5A374();
  v8 = sub_1A3C5A374();
  v9 = sub_1A3C5A374();
  PhotoKitItemListManagerOptions.init(relationship:referencePerson:metadata:initialFetchLimit:metadataImmediateFetchSize:excludeEmptyItems:promisedSortOrder:curationContext:shouldPrepareCounts:isTransient:isFeaturedContent:assetFilterPredicate:)(&v19, 0, v4, 0, 1, &v15, v5 & 1, v23, v14, v6, v7 & 1, v8 & 1, v9 & 1, 0);
  sub_1A3C52C70(0, &qword_1EB1265C0);
  v10 = sub_1A3F6298C();
  PhotoKitItem.__allocating_init(value:options:metadata:)(a1, v14, v10);
  v12 = v11;
  type metadata accessor for PeopleUnifiedItem();
  result = swift_allocObject();
  *(result + 16) = v12;
  *(result + 24) = a2;
  return result;
}

uint64_t sub_1A44B793C(uint64_t a1, char a2)
{
  sub_1A3C379F4(0, &qword_1EB125C68, &qword_1EB126C28);
  v23[0] = 2;
  sub_1A3C6C180(&v21);
  v19 = v21;
  v20 = v22;
  v4 = sub_1A42011B0();
  sub_1A3C6C18C(&v17);
  v15 = v17;
  v16 = v18;
  v5 = sub_1A3C5A374();
  v6 = sub_1A3C30368();
  v7 = sub_1A3C5A374();
  v8 = sub_1A3C5A374();
  v9 = sub_1A3C5A374();
  PhotoKitItemListManagerOptions.init(relationship:referencePerson:metadata:initialFetchLimit:metadataImmediateFetchSize:excludeEmptyItems:promisedSortOrder:curationContext:shouldPrepareCounts:isTransient:isFeaturedContent:assetFilterPredicate:)(&v19, 0, v4, 0, 1, &v15, v5 & 1, v23, v14, v6, v7 & 1, v8 & 1, v9 & 1, 0);
  sub_1A3C52C70(0, &qword_1EB126C28);
  v10 = sub_1A3F6298C();
  PhotoKitItem.__allocating_init(value:options:metadata:)(a1, v14, v10);
  v12 = v11;
  type metadata accessor for PeopleUnifiedItem();
  result = swift_allocObject();
  *(result + 16) = v12 | 0x8000000000000000;
  *(result + 24) = a2;
  return result;
}

uint64_t sub_1A44B7C90(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for PeopleUnifiedItem();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static PXMusicCurator.audioAssetFetchResultForExport(forAdamID:photoLibrary:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[4] = a2;
  v3[5] = a3;
  v3[3] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1A44B7D0C, 0, 0);
}

uint64_t sub_1A44B7D0C()
{
  v1 = *(v0 + 24);
  v2 = swift_task_alloc();
  *(v0 + 48) = v2;
  v3 = *(v0 + 32);
  *(v2 + 16) = v1;
  *(v2 + 24) = v3;
  v4 = swift_task_alloc();
  *(v0 + 56) = v4;
  sub_1A44B807C();
  *v4 = v0;
  v4[1] = sub_1A3D93F08;

  return MEMORY[0x1EEE6DE38](v0 + 16, 0, 0, 0xD000000000000037, 0x80000001A53D9C30, sub_1A44B8070, v2, v5);
}

void sub_1A44B7E10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1A44B8138();
  MEMORY[0x1EEE9AC00](v5);
  [objc_msgSend(objc_allocWithZone(PXMusicCuratorAudioAssetRequestOptions) init)];
  objc_opt_self();
  sub_1A3D9E6B8();
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1A52F8E10;
  *(v6 + 32) = a2;
  *(v6 + 40) = a3;
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

void sub_1A44B807C()
{
  if (!qword_1EB13C220)
  {
    sub_1A44B80D4();
    v0 = sub_1A524DF24();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB13C220);
    }
  }
}

unint64_t sub_1A44B80D4()
{
  result = qword_1EB13C228;
  if (!qword_1EB13C228)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EB13C228);
  }

  return result;
}

void sub_1A44B8138()
{
  if (!qword_1EB13C230)
  {
    sub_1A44B807C();
    sub_1A3DBD9A0();
    v0 = sub_1A524CBF4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB13C230);
    }
  }
}

uint64_t sub_1A44B81A8(uint64_t a1, void *a2)
{
  sub_1A44B8138();
  if (a2)
  {
    v3 = a2;
    return sub_1A524CBD4();
  }

  else
  {
    swift_unknownObjectRetain();
    return sub_1A524CBE4();
  }
}

id sub_1A44B8288@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  sub_1A4126630(a1, a4);
  v7 = type metadata accessor for SharedAlbumAddToView(0);
  v8 = (a4 + v7[5]);
  *v8 = a2;
  v8[1] = a3;
  v9 = (a4 + v7[6]);
  type metadata accessor for SharedAlbumActionViewModel();
  sub_1A524B694();
  *v9 = v12;
  v9[1] = v13;
  v10 = v7[7];
  result = [objc_allocWithZone(MEMORY[0x1E697B678]) init];
  *(a4 + v10) = result;
  return result;
}

id sub_1A44B8590()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PXSharedAlbumAddToViewFactory();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1A44B85C4@<X0>(char *a1@<X8>)
{
  v2 = sub_1A524E824();

  if (v2 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (!v2)
  {
    v4 = 0;
  }

  *a1 = v4;
  return result;
}

void sub_1A44B8624(uint64_t a1@<X8>)
{
  v17 = a1;
  v1 = sub_1A5247E04();
  MEMORY[0x1EEE9AC00](v1);
  MEMORY[0x1EEE9AC00](v2);
  sub_1A44C2B68(0, &qword_1EB132C88, sub_1A4126ED4, MEMORY[0x1E697E5E0], MEMORY[0x1E697E830]);
  MEMORY[0x1EEE9AC00](v3);
  v5 = v12 - v4;
  sub_1A4126DE0(0);
  v12[2] = v6;
  MEMORY[0x1EEE9AC00](v6);
  sub_1A4126DAC(0);
  v12[1] = v7;
  MEMORY[0x1EEE9AC00](v7);
  v16 = v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  MEMORY[0x1EEE9AC00](v10);
  v15 = sub_1A524B3D4();
  v14 = sub_1A5248874();
  v13 = sub_1A524A064();
  *v5 = sub_1A5249574();
  *(v5 + 1) = 0x4034000000000000;
  v5[16] = 0;
  sub_1A4129BE8();
  sub_1A44B8AE8(&v5[*(v11 + 44)]);
}

void sub_1A44B8AE8(uint64_t a1@<X8>)
{
  sub_1A4127004(0);
  v3 = v2 - 8;
  MEMORY[0x1EEE9AC00](v2);
  v33 = &v31[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v31[-v6];
  type metadata accessor for SharedAlbumActionProgressView(0);
  v8 = sub_1A524C634();
  v9 = PXLocalizedSharedAlbumsString(v8);

  v10 = sub_1A524C674();
  v12 = v11;

  v34 = v10;
  v35 = v12;
  sub_1A3D5F9DC();
  v13 = sub_1A524A464();
  v15 = v14;
  v17 = v16;
  sub_1A524A184();
  v18 = sub_1A524A344();
  v20 = v19;
  v32 = v21;
  v23 = v22;
  sub_1A3E04DF4(v13, v15, v17 & 1);

  sub_1A5248074();
  v24 = &v7[*(v3 + 44)];
  sub_1A3E74608(0);
  v26 = *(v25 + 28);
  v27 = *MEMORY[0x1E697DC10];
  v28 = sub_1A5247E14();
  (*(*(v28 - 8) + 104))(v24 + v26, v27, v28);
  *v24 = swift_getKeyPath();
  v29 = v33;
  sub_1A44C800C(v7, v33, sub_1A4127004);
  *a1 = v18;
  *(a1 + 8) = v20;
  LOBYTE(v24) = v32 & 1;
  *(a1 + 16) = v32 & 1;
  *(a1 + 24) = v23;
  sub_1A4126F9C();
  sub_1A44C800C(v29, a1 + *(v30 + 48), sub_1A4127004);
  sub_1A3E75E68(v18, v20, v24);
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t sub_1A44B8DAC@<X0>(char a1@<W0>, uint64_t *a2@<X8>)
{
  *a2 = swift_getKeyPath();
  sub_1A44C24C0(0, &qword_1EB128A70, MEMORY[0x1E697DBD0], MEMORY[0x1E697DCB8]);
  swift_storeEnumTagMultiPayload();
  result = type metadata accessor for SharedAlbumActionProgressView(0);
  *(a2 + *(result + 20)) = a1 & 1;
  return result;
}

uint64_t sub_1A44B8F40@<X0>(unint64_t *a1@<X1>, uint64_t (*a2)(uint64_t)@<X2>, uint64_t *a3@<X8>)
{
  *a3 = swift_getKeyPath();
  sub_1A44C24C0(0, a1, a2, MEMORY[0x1E697DCB8]);

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1A44B8FBC()
{
  type metadata accessor for HostingViewControllerProvider();
  sub_1A44C2BD4(&qword_1EB131170, type metadata accessor for HostingViewControllerProvider);

  return sub_1A5248BB4();
}

uint64_t SharedAlbumAddToView.viewModel.getter()
{
  type metadata accessor for SharedAlbumAddToView(0);
  sub_1A44C24C0(0, &qword_1EB13ADC0, type metadata accessor for SharedAlbumActionViewModel, MEMORY[0x1E6981790]);
  sub_1A524B6A4();
  return v1;
}

uint64_t sub_1A44B90B4@<X0>(void *a1@<X8>)
{
  type metadata accessor for SharedAlbumAddToView(0);
  sub_1A44C24C0(0, &qword_1EB13ADC0, type metadata accessor for SharedAlbumActionViewModel, MEMORY[0x1E6981790]);
  result = sub_1A524B6A4();
  *a1 = v3;
  return result;
}

uint64_t sub_1A44B914C(void **a1)
{
  v1 = *a1;
  type metadata accessor for SharedAlbumAddToView(0);
  sub_1A44C24C0(0, &qword_1EB13ADC0, type metadata accessor for SharedAlbumActionViewModel, MEMORY[0x1E6981790]);
  v2 = v1;
  return sub_1A524B6B4();
}

uint64_t SharedAlbumAddToView.viewModel.setter()
{
  type metadata accessor for SharedAlbumAddToView(0);
  sub_1A44C24C0(0, &qword_1EB13ADC0, type metadata accessor for SharedAlbumActionViewModel, MEMORY[0x1E6981790]);
  return sub_1A524B6B4();
}

void (*SharedAlbumAddToView.viewModel.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x48uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = v1 + *(type metadata accessor for SharedAlbumAddToView(0) + 24);
  v7 = *v5;
  v6 = *(v5 + 8);
  v4[6] = *v5;
  v4[7] = v6;
  *v4 = v7;
  v4[1] = v6;
  sub_1A44C24C0(0, &qword_1EB13ADC0, type metadata accessor for SharedAlbumActionViewModel, MEMORY[0x1E6981790]);
  v4[8] = v8;
  v9 = v7;

  sub_1A524B6A4();
  return sub_1A3D9CCC4;
}

uint64_t SharedAlbumAddToView.$viewModel.getter()
{
  type metadata accessor for SharedAlbumAddToView(0);
  sub_1A44C24C0(0, &qword_1EB13ADC0, type metadata accessor for SharedAlbumActionViewModel, MEMORY[0x1E6981790]);
  sub_1A524B6C4();
  return v1;
}

void SharedAlbumAddToView.body.getter(uint64_t a1@<X8>)
{
  v2 = v1;
  v49 = a1;
  v3 = type metadata accessor for SharedAlbumAddToView(0);
  v4 = v3 - 8;
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v3);
  sub_1A44C2C1C();
  MEMORY[0x1EEE9AC00](v7);
  v9 = (&v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1A44C3490(0);
  v50 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v44 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A44C3578();
  v14 = *(v13 - 8);
  v47 = v13;
  v48 = v14;
  MEMORY[0x1EEE9AC00](v13);
  v46 = &v44 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  *v9 = sub_1A524BC74();
  v9[1] = v16;
  sub_1A44C3814();
  sub_1A44B9938(v2, (v9 + *(v17 + 44)));
  v45 = type metadata accessor for SharedAlbumAddToView;
  sub_1A44C800C(v2, &v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for SharedAlbumAddToView);
  v18 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v19 = swift_allocObject();
  v44 = type metadata accessor for SharedAlbumAddToView;
  sub_1A44C7FA4(&v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v19 + v18, type metadata accessor for SharedAlbumAddToView);
  sub_1A44C2BD4(&qword_1EB13C2D8, sub_1A44C2C1C);
  sub_1A524AA84();

  sub_1A44C3CF4(v9, sub_1A44C2C1C);
  v20 = sub_1A524BC74();
  v22 = v21;
  v23 = &v12[v50[9]];
  sub_1A44BB014(v2, v23);
  sub_1A3D9D48C();
  v25 = (v23 + *(v24 + 36));
  *v25 = v20;
  v25[1] = v22;
  v26 = (v2 + *(v4 + 32));
  v28 = *v26;
  v27 = v26[1];
  v51 = v28;
  v52 = v27;
  sub_1A44C24C0(0, &qword_1EB13ADC0, type metadata accessor for SharedAlbumActionViewModel, MEMORY[0x1E6981790]);
  v29 = sub_1A524B6A4();
  v30 = v55;
  v31 = (*((*MEMORY[0x1E69E7D40] & *v55) + 0x550))(v29);

  v51 = v31;
  sub_1A44C800C(v2, &v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v45);
  v32 = swift_allocObject();
  sub_1A44C7FA4(&v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v32 + v18, v44);
  sub_1A4034670(0);
  v34 = v33;
  v35 = sub_1A44C3660();
  v36 = sub_1A44C3770(&qword_1EB13C2F0, sub_1A4034670, sub_1A44C37E0);
  v37 = v46;
  v38 = v50;
  sub_1A524B154();

  sub_1A44C3CF4(v12, sub_1A44C3490);
  v51 = v38;
  v52 = v34;
  v53 = v35;
  v54 = v36;
  swift_getOpaqueTypeConformance2();
  v39 = v49;
  v40 = v47;
  sub_1A524AEF4();
  (*(v48 + 8))(v37, v40);
  v41 = sub_1A478C2E4();
  LOBYTE(v30) = sub_1A524A064();
  sub_1A44C3D54();
  v43 = v39 + *(v42 + 36);
  *v43 = v41;
  *(v43 + 8) = v30;
}

uint64_t sub_1A44B9938@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v88 = a2;
  sub_1A41278A0();
  v87 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v85 = &v65 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for SharedAlbumAddToView(0);
  v79 = *(v5 - 8);
  v90 = *(v79 + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v89 = &v65 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1A5247B54();
  MEMORY[0x1EEE9AC00](v7 - 8);
  v72 = &v65 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3D6DF58();
  v84 = v9;
  v86 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v73 = &v65 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1A5249284();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v65 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A44C3104(0);
  v16 = v15;
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v65 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A44C3064();
  v74 = v19;
  v75 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v66 = &v65 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A44C2F2C();
  v78 = v21;
  v80 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v70 = &v65 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A44C2D80(0);
  v82 = v23 - 8;
  MEMORY[0x1EEE9AC00](v23 - 8);
  v83 = &v65 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v71 = &v65 - v26;
  v81 = sub_1A524B354();
  v77 = sub_1A5248874();
  v76 = sub_1A524A064();
  v91 = a1;
  sub_1A524A044();
  sub_1A44C31D4(0);
  sub_1A44C2BD4(&qword_1EB13C2A8, sub_1A44C31D4);
  sub_1A5247D14();
  v27 = sub_1A524A054();
  sub_1A5247BC4();
  v28 = &v18[*(v16 + 36)];
  *v28 = v27;
  *(v28 + 1) = v29;
  *(v28 + 2) = v30;
  *(v28 + 3) = v31;
  *(v28 + 4) = v32;
  v28[40] = 0;
  v92 = sub_1A3C38BD4();
  v93 = v33;
  (*(v12 + 104))(v14, *MEMORY[0x1E697C438], v11);
  v34 = sub_1A44C33E0();
  v35 = sub_1A3D5F9DC();
  sub_1A524ACF4();
  (*(v12 + 8))(v14, v11);

  sub_1A44C5414(v18, sub_1A44C3104);
  v36 = v72;
  sub_1A5247B34();
  v69 = type metadata accessor for SharedAlbumAddToView;
  v65 = a1;
  v37 = v89;
  sub_1A44C800C(a1, v89, type metadata accessor for SharedAlbumAddToView);
  v79 = *(v79 + 80);
  v38 = (v79 + 16) & ~v79;
  v67 = v38;
  v39 = swift_allocObject();
  v68 = type metadata accessor for SharedAlbumAddToView;
  sub_1A44C7FA4(v37, v39 + v38, type metadata accessor for SharedAlbumAddToView);
  v40 = v73;
  MEMORY[0x1A5906A80](v36, sub_1A44C5E70, v39);
  v41 = v85;
  sub_1A44BA7D8(v85);
  v92 = v16;
  v93 = MEMORY[0x1E69E6158];
  v94 = v34;
  v95 = v35;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v43 = sub_1A44C2BD4(&qword_1EB121B60, sub_1A3D6DF58);
  v44 = sub_1A4127958();
  v45 = v70;
  v46 = v40;
  v47 = v41;
  v48 = v74;
  v49 = v84;
  v50 = v87;
  v51 = v66;
  sub_1A524ACC4();
  sub_1A44C5414(v47, sub_1A41278A0);
  (*(v86 + 8))(v46, v49);
  (*(v75 + 8))(v51, v48);
  v92 = v48;
  v93 = v49;
  v94 = v50;
  v95 = OpaqueTypeConformance2;
  v96 = v43;
  v97 = v44;
  v52 = swift_getOpaqueTypeConformance2();
  v53 = v71;
  v54 = v78;
  sub_1A425D400(0, v78, v52);
  (*(v80 + 8))(v45, v54);
  v55 = v89;
  sub_1A44C800C(v65, v89, v69);
  v56 = v67;
  v57 = swift_allocObject();
  sub_1A44C7FA4(v55, v57 + v56, v68);
  v58 = v83;
  v59 = (v53 + *(v82 + 44));
  *v59 = sub_1A44C5F7C;
  v59[1] = v57;
  v59[2] = 0;
  v59[3] = 0;
  sub_1A3D02B00(v53, v58);
  v60 = v88;
  v61 = v77;
  *v88 = v81;
  v60[1] = v61;
  *(v60 + 16) = v76;
  v62 = v60;
  sub_1A44C2CE4();
  sub_1A3D02B00(v58, v62 + *(v63 + 48));

  sub_1A44C3CF4(v53, sub_1A44C2D80);
  sub_1A44C3CF4(v58, sub_1A44C2D80);
}

uint64_t sub_1A44BA250@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v68 = a2;
  sub_1A44C3380();
  v66 = v3 - 8;
  MEMORY[0x1EEE9AC00](v3 - 8);
  v67 = &v60 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v63 = &v60 - v6;
  sub_1A44C3298(0);
  v8 = v7 - 8;
  MEMORY[0x1EEE9AC00](v7);
  v65 = &v60 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = (&v60 - v11);
  v13 = type metadata accessor for SharedAlbumPreviewsSection();
  MEMORY[0x1EEE9AC00](v13 - 8);
  v64 = &v60 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = (&v60 - v16);
  v69 = &v60 - v16;
  v18 = (a1 + *(type metadata accessor for SharedAlbumAddToView(0) + 24));
  v20 = v18[1];
  v71 = *v18;
  v19 = v71;
  v72 = v20;
  v62 = v20;
  sub_1A44C24C0(0, &qword_1EB13ADC0, type metadata accessor for SharedAlbumActionViewModel, MEMORY[0x1E6981790]);
  sub_1A524B6A4();
  sub_1A45AB24C(v70, v17);
  v71 = v19;
  v72 = v20;
  sub_1A524B6A4();
  v21 = v70;
  *v12 = swift_getKeyPath();
  sub_1A44C24C0(0, &unk_1EB128A40, sub_1A3DC7D88, MEMORY[0x1E697DCB8]);
  swift_storeEnumTagMultiPayload();
  v22 = _s12PhotosUICore14CommentSectionVMa_0(0);
  v23 = (v12 + v22[5]);
  v70 = v21;
  type metadata accessor for SharedAlbumActionViewModel();
  sub_1A524B694();
  v24 = v72;
  *v23 = v71;
  v23[1] = v24;
  v25 = v12 + v22[6];
  *v25 = sub_1A5247C34() & 1;
  *(v25 + 1) = v26;
  v25[16] = v27 & 1;
  v28 = v22[7];
  *(v12 + v28) = [objc_opt_self() maxCharactersPerComment];
  v29 = sub_1A524B2E4();
  LOBYTE(v23) = sub_1A524A064();
  sub_1A44C32CC();
  v31 = *(v30 + 36);
  v61 = v12;
  v32 = v12 + v31;
  *v32 = v29;
  v32[8] = v23;
  v33 = v12 + *(v8 + 44);
  v34 = sub_1A5248A14();
  v35 = *(v34 + 20);
  v36 = *MEMORY[0x1E697F468];
  v37 = sub_1A52494A4();
  v38 = *(*(v37 - 8) + 104);
  v38(&v33[v35], v36, v37);
  __asm { FMOV            V0.2D, #10.0 }

  v60 = _Q0;
  *v33 = _Q0;
  sub_1A3E42C88();
  v45 = v44;
  *&v33[*(v44 + 36)] = 256;
  v71 = v19;
  v72 = v62;
  sub_1A524B6A4();
  sub_1A524B694();
  v46 = v71;
  v47 = v72;
  v48 = v63;
  v49 = &v63[*(v66 + 44)];
  v38(&v49[*(v34 + 20)], v36, v37);
  *v49 = v60;
  *&v49[*(v45 + 36)] = 256;
  *v48 = v46;
  v48[1] = v47;
  v50 = v64;
  sub_1A44C800C(v69, v64, type metadata accessor for SharedAlbumPreviewsSection);
  v51 = v61;
  v52 = v65;
  sub_1A44C800C(v61, v65, sub_1A44C3298);
  v53 = v67;
  sub_1A44C800C(v48, v67, sub_1A44C3380);
  v54 = v68;
  sub_1A44C800C(v50, v68, type metadata accessor for SharedAlbumPreviewsSection);
  sub_1A44C3208();
  v56 = v55;
  v57 = v54 + *(v55 + 48);
  *v57 = 0x4034000000000000;
  *(v57 + 8) = 0;
  sub_1A44C800C(v52, v54 + *(v55 + 64), sub_1A44C3298);
  v58 = v54 + *(v56 + 80);
  *v58 = 0x4034000000000000;
  *(v58 + 8) = 0;
  sub_1A44C800C(v53, v54 + *(v56 + 96), sub_1A44C3380);
  sub_1A44C5414(v48, sub_1A44C3380);
  sub_1A44C5414(v51, sub_1A44C3298);
  sub_1A44C5414(v69, type metadata accessor for SharedAlbumPreviewsSection);
  sub_1A44C5414(v53, sub_1A44C3380);
  sub_1A44C5414(v52, sub_1A44C3298);
  return sub_1A44C5414(v50, type metadata accessor for SharedAlbumPreviewsSection);
}

void sub_1A44BA7D8(uint64_t a1@<X8>)
{
  v2 = v1;
  v37 = a1;
  v3 = type metadata accessor for SharedAlbumAddToView(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  sub_1A44C5480(0, &qword_1EB127480, MEMORY[0x1E6981148], MEMORY[0x1E6981138], MEMORY[0x1E697D670]);
  v36 = v6;
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v36 - v8;
  sub_1A44C800C(v1, &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for SharedAlbumAddToView);
  v10 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v11 = swift_allocObject();
  sub_1A44C7FA4(&v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v11 + v10, type metadata accessor for SharedAlbumAddToView);
  sub_1A524B704();
  v12 = (v1 + *(v3 + 24));
  v14 = *v12;
  v13 = v12[1];
  v40 = *v12;
  v41 = v13;
  sub_1A44C24C0(0, &qword_1EB13ADC0, type metadata accessor for SharedAlbumActionViewModel, MEMORY[0x1E6981790]);
  v15 = sub_1A524B6A4();
  v16 = v39;
  v17 = MEMORY[0x1E69E7D40];
  v18 = (*((*MEMORY[0x1E69E7D40] & *v39) + 0x648))(v15);

  if (v18 < 1 || (v40 = v14, v41 = v13, v19 = sub_1A524B6A4(), v20 = v39, v21 = (*((*v17 & *v39) + 0x4C0))(v19), v20, (v21 & 1) != 0))
  {
    v22 = 1;
  }

  else
  {
    v23 = (v2 + *(v3 + 24));
    v24 = *v23;
    v25 = v23[1];
    v40 = *v23;
    v41 = v25;
    v26 = sub_1A524B6A4();
    v27 = v39;
    v28 = (*((*v17 & *v39) + 0x580))(v26);

    if ((v28 & 1) != 0 || [*(v2 + *(v3 + 28)) analysisPolicy] != 2)
    {
      v22 = 0;
    }

    else
    {
      v40 = v24;
      v41 = v25;
      v29 = sub_1A524B6A4();
      v30 = v39;
      (*((*v17 & *v39) + 0x4F0))(&v40, v29);

      LOBYTE(v39) = v40;
      v38 = 1;
      sub_1A3D5E3A8();
      v22 = sub_1A524C594() ^ 1;
    }
  }

  KeyPath = swift_getKeyPath();
  v32 = swift_allocObject();
  *(v32 + 16) = v22 & 1;
  v33 = v37;
  (*(v7 + 32))(v37, v9, v36);
  sub_1A41278A0();
  v35 = (v33 + *(v34 + 36));
  *v35 = KeyPath;
  v35[1] = sub_1A4312ED8;
  v35[2] = v32;
}

void sub_1A44BACA4(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for SharedAlbumAddToView(0);
  v20 = *(v4 - 8);
  v5 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = (v1 + *(v6 + 32));
  v8 = *v7;
  v9 = v7[1];
  aBlock = *v7;
  v22 = v9;
  sub_1A44C24C0(0, &qword_1EB13ADC0, type metadata accessor for SharedAlbumActionViewModel, MEMORY[0x1E6981790]);
  v10 = sub_1A524B6A4();
  v11 = MEMORY[0x1E69E7D40];
  v12 = (*((*MEMORY[0x1E69E7D40] & *v27) + 0x520))(v10);

  if ((v12 & 1) == 0)
  {
    aBlock = v8;
    v22 = v9;
    v13 = sub_1A524B6A4();
    v14 = (*((*v11 & *v27) + 0x580))(v13);

    if ((v14 & 1) == 0)
    {
      aBlock = v8;
      v22 = v9;
      sub_1A524B6A4();
      (*((*v11 & *v27) + 0x528))(1);

      v15 = sub_1A44BB224();
      if (v15)
      {
        v16 = [v15 presentingViewController];
        swift_unknownObjectRelease();
        if (v16)
        {
          if ([a1 canPresentIntervention])
          {
            sub_1A44C800C(v2, &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for SharedAlbumAddToView);
            v17 = (*(v20 + 80) + 16) & ~*(v20 + 80);
            v18 = swift_allocObject();
            sub_1A44C7FA4(&v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v18 + v17, type metadata accessor for SharedAlbumAddToView);
            v25 = sub_1A44C5CB0;
            v26 = v18;
            aBlock = MEMORY[0x1E69E9820];
            v22 = 1107296256;
            v23 = sub_1A3E01E70;
            v24 = &block_descriptor_91_3;
            v19 = _Block_copy(&aBlock);

            [a1 presentFromViewController:v16 completionHandler:v19];
            _Block_release(v19);
          }
        }
      }
    }
  }
}

uint64_t sub_1A44BB014@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for SharedAlbumActionProgressView(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = (&v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = (a1 + *(type metadata accessor for SharedAlbumAddToView(0) + 24));
  v10 = *v8;
  v9 = v8[1];
  v18 = v10;
  v19 = v9;
  sub_1A44C24C0(0, &qword_1EB13ADC0, type metadata accessor for SharedAlbumActionViewModel, MEMORY[0x1E6981790]);
  v11 = sub_1A524B6A4();
  v12 = v17;
  v13 = (*((*MEMORY[0x1E69E7D40] & *v17) + 0x490))(v11);

  if (v13)
  {
    *v7 = swift_getKeyPath();
    sub_1A44C24C0(0, &qword_1EB128A70, MEMORY[0x1E697DBD0], MEMORY[0x1E697DCB8]);
    swift_storeEnumTagMultiPayload();
    *(v7 + *(v4 + 20)) = 0;
    sub_1A44C7FA4(v7, a2, type metadata accessor for SharedAlbumActionProgressView);
    v14 = 0;
  }

  else
  {
    v14 = 1;
  }

  return (*(v5 + 56))(a2, v14, 1, v4);
}

uint64_t sub_1A44BB224()
{
  sub_1A3D63A58(0);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A44BB714(&qword_1EB128A80, sub_1A3D63A58, sub_1A3D63A58, v3);
  sub_1A44C2458(0, &qword_1EB128E00, &qword_1EB126B10, 0x1E69DD258, off_1E7721050);
  v5 = v4;
  v6 = *(*(v4 - 8) + 48);
  if (v6(v3, 1, v4) != 1)
  {
    sub_1A5245C94();
  }

  sub_1A44C5414(v3, sub_1A3D63A58);
  v7 = *(v0 + *(type metadata accessor for SharedAlbumAddToView(0) + 20));
  if (v7)
  {
    v8 = OBJC_IVAR____TtC12PhotosUICore29HostingViewControllerProvider_viewControllerReference;
    swift_beginAccess();
    if (v6((v7 + v8), 1, v5))
    {
      swift_endAccess();
      PXPresentationEnvironmentForSender();
    }

    sub_1A5245C94();
  }

  type metadata accessor for HostingViewControllerProvider();
  sub_1A44C2BD4(&qword_1EB131170, type metadata accessor for HostingViewControllerProvider);
  result = sub_1A5248BA4();
  __break(1u);
  return result;
}

uint64_t sub_1A44BB510(uint64_t a1)
{
  v2 = type metadata accessor for SharedAlbumAddToView(0);
  v3 = v2 - 8;
  v4 = *(v2 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = sub_1A44BB224();
  v7 = (a1 + *(v3 + 32));
  v9 = *v7;
  v8 = v7[1];
  v16[2] = v9;
  v16[3] = v8;
  sub_1A44C24C0(0, &qword_1EB13ADC0, type metadata accessor for SharedAlbumActionViewModel, MEMORY[0x1E6981790]);
  result = sub_1A524B6A4();
  if (v6)
  {
    v11 = v16[1];
    sub_1A44C800C(a1, v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for SharedAlbumAddToView);
    v12 = (*(v4 + 80) + 16) & ~*(v4 + 80);
    v13 = swift_allocObject();
    sub_1A44C7FA4(v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v13 + v12, type metadata accessor for SharedAlbumAddToView);
    v14 = *((*MEMORY[0x1E69E7D40] & *v11) + 0x660);
    v15 = swift_unknownObjectRetain();
    v14(v15, sub_1A44C6168, v13);

    return swift_unknownObjectRelease_n();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1A44BB714@<X0>(unint64_t *a1@<X0>, uint64_t (*a2)(uint64_t)@<X1>, uint64_t (*a3)(void)@<X2>, uint64_t a4@<X8>)
{
  v8 = v4;
  v10 = sub_1A5249234();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A44C24C0(0, a1, a2, MEMORY[0x1E697DCB8]);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v19 - v15;
  sub_1A44C7A08(v8, &v19 - v15, a1, a2);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_1A44C7FA4(v16, a4, a3);
  }

  sub_1A524D254();
  v18 = sub_1A524A014();
  sub_1A5246DF4();

  sub_1A5249224();
  swift_getAtKeyPath();

  return (*(v11 + 8))(v13, v10);
}

uint64_t sub_1A44BB900@<X0>(uint64_t a1@<X8>)
{
  v74 = a1;
  v2 = sub_1A5249A94();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v65 = &v62[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1A3DD0DCC();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v72 = &v62[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v62[-v9];
  sub_1A3DC7D88(0);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v71 = &v62[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v13);
  v70 = &v62[-v14];
  MEMORY[0x1EEE9AC00](v15);
  v76 = &v62[-v16];
  MEMORY[0x1EEE9AC00](v17);
  v75 = &v62[-v18];
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v62[-v20];
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v62[-v23];
  v73 = v1;
  sub_1A44BB714(&unk_1EB128A40, sub_1A3DC7D88, sub_1A3DC7D88, &v62[-v23]);
  v25 = v3[13];
  v68 = *MEMORY[0x1E697FF38];
  v67 = v25;
  v25(v21);
  v66 = v3[7];
  v66(v21, 0, 1, v2);
  v69 = v6;
  v26 = *(v6 + 48);
  sub_1A3F188F8(v24, v10);
  sub_1A3F188F8(v21, &v10[v26]);
  v77 = v3;
  v27 = v3[6];
  if (v27(v10, 1, v2) == 1)
  {
    sub_1A44C5414(v21, sub_1A3DC7D88);
    sub_1A44C5414(v24, sub_1A3DC7D88);
    if (v27(&v10[v26], 1, v2) == 1)
    {
      sub_1A44C5414(v10, sub_1A3DC7D88);
      v28 = 2;
LABEL_7:
      v75 = v28;
      v29 = v73;
      v30 = v76;
      goto LABEL_11;
    }

LABEL_6:
    sub_1A44C5414(v10, sub_1A3DD0DCC);
    v28 = 5;
    goto LABEL_7;
  }

  sub_1A3F188F8(v10, v75);
  v64 = v27;
  if (v27(&v10[v26], 1, v2) == 1)
  {
    sub_1A44C5414(v21, sub_1A3DC7D88);
    sub_1A44C5414(v24, sub_1A3DC7D88);
    (v77[1])(v75, v2);
    v27 = v64;
    goto LABEL_6;
  }

  v31 = v65;
  (v77[4])(v65, &v10[v26], v2);
  sub_1A44C2BD4(&qword_1EB127B70, MEMORY[0x1E697FF50]);
  v63 = sub_1A524C594();
  v32 = v77[1];
  v32(v31, v2);
  sub_1A44C5414(v21, sub_1A3DC7D88);
  sub_1A44C5414(v24, sub_1A3DC7D88);
  v32(v75, v2);
  sub_1A44C5414(v10, sub_1A3DC7D88);
  v33 = 5;
  if (v63)
  {
    v33 = 2;
  }

  v75 = v33;
  v29 = v73;
  v30 = v76;
  v27 = v64;
LABEL_11:
  sub_1A44BB714(&unk_1EB128A40, sub_1A3DC7D88, sub_1A3DC7D88, v30);
  v34 = v70;
  v67(v70, v68, v2);
  v66(v34, 0, 1, v2);
  v35 = *(v69 + 48);
  v36 = v72;
  sub_1A3F188F8(v30, v72);
  sub_1A3F188F8(v34, &v36[v35]);
  if (v27(v36, 1, v2) != 1)
  {
    sub_1A3F188F8(v36, v71);
    if (v27(&v36[v35], 1, v2) != 1)
    {
      v38 = v71;
      v39 = v77;
      v40 = v65;
      (v77[4])(v65, &v36[v35], v2);
      sub_1A44C2BD4(&qword_1EB127B70, MEMORY[0x1E697FF50]);
      sub_1A524C594();
      v41 = v39[1];
      v41(v40, v2);
      sub_1A44C5414(v34, sub_1A3DC7D88);
      sub_1A44C5414(v76, sub_1A3DC7D88);
      v41(v38, v2);
      v37 = sub_1A44C5414(v36, sub_1A3DC7D88);
      goto LABEL_18;
    }

    sub_1A44C5414(v34, sub_1A3DC7D88);
    sub_1A44C5414(v30, sub_1A3DC7D88);
    (v77[1])(v71, v2);
    goto LABEL_16;
  }

  sub_1A44C5414(v34, sub_1A3DC7D88);
  sub_1A44C5414(v30, sub_1A3DC7D88);
  if (v27(&v36[v35], 1, v2) != 1)
  {
LABEL_16:
    v37 = sub_1A44C5414(v36, sub_1A3DD0DCC);
    goto LABEL_18;
  }

  v37 = sub_1A44C5414(v36, sub_1A3DC7D88);
LABEL_18:
  MEMORY[0x1EEE9AC00](v37);
  v42 = v75;
  *&v62[-32] = v29;
  *&v62[-24] = v42;
  *&v62[-16] = v43;
  sub_1A4128724();
  sub_1A4128898();
  v45 = v44;
  sub_1A41289E4();
  v47 = v46;
  sub_1A4128AE4();
  v49 = v48;
  sub_1A4128BB4();
  v51 = v50;
  sub_1A4128C38();
  v53 = v52;
  v54 = sub_1A44C54D4(&qword_1EB132E00, sub_1A4128C38, sub_1A437B870);
  v78 = v53;
  v79 = v54;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v78 = v51;
  v79 = MEMORY[0x1E69E6158];
  v80 = OpaqueTypeConformance2;
  v81 = MEMORY[0x1E69E6180];
  v56 = swift_getOpaqueTypeConformance2();
  v78 = v49;
  v79 = v56;
  v57 = swift_getOpaqueTypeConformance2();
  v58 = MEMORY[0x1E69E6370];
  v78 = v47;
  v79 = MEMORY[0x1E69E6370];
  v59 = MEMORY[0x1E69E6388];
  v80 = v57;
  v81 = MEMORY[0x1E69E6388];
  v60 = swift_getOpaqueTypeConformance2();
  v78 = v45;
  v79 = v58;
  v80 = v60;
  v81 = v59;
  swift_getOpaqueTypeConformance2();
  return sub_1A524BA54();
}

uint64_t sub_1A44BC290@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(uint64_t a1)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v82 = a2;
  v83 = a3;
  v80 = a4;
  v5 = _s12PhotosUICore14CommentSectionVMa_0(0);
  v81 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v88 = v6;
  v86 = v66 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A4128C38();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v10 = v66 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A4128BB4();
  v70 = v11;
  v68 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v67 = v66 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A4128AE4();
  v74 = v13;
  v72 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v69 = v66 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A41289E4();
  v76 = v15;
  v75 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v73 = v66 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A4128898();
  v78 = *(v17 - 8);
  v79 = v17;
  MEMORY[0x1EEE9AC00](v17);
  v77 = v66 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v96 = sub_1A3C38BD4();
  v97 = v19;
  v71 = v5;
  v20 = *(v5 + 20);
  v87 = a1;
  v21 = (a1 + v20);
  v23 = *v21;
  v22 = v21[1];
  v84 = v23;
  v85 = v22;
  v93 = v23;
  v94 = v22;
  sub_1A44C24C0(0, &qword_1EB13ADC0, type metadata accessor for SharedAlbumActionViewModel, MEMORY[0x1E6981790]);
  v25 = v24;
  sub_1A524B6C4();
  v26 = v89;
  v27 = v90;
  v28 = v91;
  swift_getKeyPath();
  v93 = v26;
  v94 = v27;
  v95 = v28;
  sub_1A44C24C0(0, &qword_1EB13E370, type metadata accessor for SharedAlbumActionViewModel, MEMORY[0x1E6981948]);
  sub_1A524B914();

  sub_1A3D5F9DC();
  v29 = v82;
  sub_1A524BE04();
  result = sub_1A524A064();
  v31 = &v10[*(v8 + 36)];
  *v31 = result;
  *(v31 + 8) = 0u;
  *(v31 + 24) = 0u;
  v31[40] = 1;
  if (v83 < v29)
  {
    __break(1u);
  }

  else
  {
    v32 = sub_1A44C54D4(&qword_1EB132E00, sub_1A4128C38, sub_1A437B870);
    v33 = v67;
    sub_1A524B1D4();
    sub_1A44C5414(v10, sub_1A4128C38);
    v89 = v84;
    v90 = v85;
    v66[1] = v25;
    v34 = sub_1A524B6A4();
    v35 = v93;
    v36 = (*((*MEMORY[0x1E69E7D40] & *v93) + 0x310))(v34);
    v38 = v37;

    v89 = v36;
    v90 = v38;
    v66[0] = _s12PhotosUICore14CommentSectionVMa_0;
    v39 = v86;
    v40 = v87;
    sub_1A44C800C(v87, v86, _s12PhotosUICore14CommentSectionVMa_0);
    v83 = *(v81 + 80);
    v41 = (v83 + 16) & ~v83;
    v81 = v41;
    v42 = swift_allocObject();
    v82 = _s12PhotosUICore14CommentSectionVMa_0;
    sub_1A44C7FA4(v39, v42 + v41, _s12PhotosUICore14CommentSectionVMa_0);
    v93 = v8;
    v94 = v32;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v44 = v69;
    v45 = v70;
    sub_1A524B144();

    (*(v68 + 8))(v33, v45);
    v46 = (v40 + *(v71 + 24));
    LODWORD(v71) = *v46;
    v47 = *(v46 + 1);
    LOBYTE(v32) = v46[16];
    LOBYTE(v89) = v71;
    v90 = v47;
    LOBYTE(v91) = v32;
    sub_1A44C5480(0, &qword_1EB1249A0, MEMORY[0x1E69E6370], MEMORY[0x1E69E6380], MEMORY[0x1E697BDF0]);
    sub_1A5247C24();
    v89 = v45;
    v90 = MEMORY[0x1E69E6158];
    v91 = OpaqueTypeConformance2;
    v92 = MEMORY[0x1E69E6180];
    v48 = swift_getOpaqueTypeConformance2();
    v49 = v73;
    v50 = v74;
    sub_1A524B074();

    (*(v72 + 8))(v44, v50);
    LOBYTE(v89) = v71;
    v90 = v47;
    LOBYTE(v91) = v32;
    sub_1A5247C04();
    v51 = v86;
    v52 = v66[0];
    sub_1A44C800C(v87, v86, v66[0]);
    v53 = v81;
    v54 = swift_allocObject();
    sub_1A44C7FA4(v51, v54 + v53, v82);
    v89 = v50;
    v90 = v48;
    v55 = swift_getOpaqueTypeConformance2();
    v56 = MEMORY[0x1E69E6388];
    v57 = v77;
    v58 = v76;
    v59 = MEMORY[0x1E69E6370];
    sub_1A524B154();

    (*(v75 + 8))(v49, v58);
    v89 = v84;
    v90 = v85;
    v60 = sub_1A524B6A4();
    v61 = v93;
    v62 = (*((*MEMORY[0x1E69E7D40] & *v93) + 0x340))(v60);

    LOBYTE(v93) = v62 & 1;
    sub_1A44C800C(v87, v51, v52);
    v63 = v81;
    v64 = swift_allocObject();
    sub_1A44C7FA4(v51, v64 + v63, v82);
    v89 = v58;
    v90 = v59;
    v91 = v55;
    v92 = v56;
    swift_getOpaqueTypeConformance2();
    v65 = v79;
    sub_1A524B154();

    return (*(v78 + 8))(v57, v65);
  }

  return result;
}

uint64_t sub_1A44BCCDC(uint64_t a1, uint64_t a2)
{
  v3 = sub_1A524BEE4();
  v19 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1A524BF64();
  v6 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = _s12PhotosUICore14CommentSectionVMa_0(0);
  v10 = v9 - 8;
  v11 = *(v9 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v9);
  result = sub_1A524C7A4();
  if (*(a2 + *(v10 + 36)) < result)
  {
    sub_1A3C52C70(0, &qword_1EB12B180);
    v14 = sub_1A524D474();
    sub_1A44C800C(a2, &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), _s12PhotosUICore14CommentSectionVMa_0);
    v15 = (*(v11 + 80) + 16) & ~*(v11 + 80);
    v16 = swift_allocObject();
    sub_1A44C7FA4(&v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v16 + v15, _s12PhotosUICore14CommentSectionVMa_0);
    aBlock[4] = sub_1A44C5A78;
    aBlock[5] = v16;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1A3C2E0D0;
    aBlock[3] = &block_descriptor_201;
    v17 = _Block_copy(aBlock);

    sub_1A524BF14();
    aBlock[0] = MEMORY[0x1E69E7CC0];
    sub_1A44C2BD4(&qword_1EB12B1E0, MEMORY[0x1E69E7F60]);
    sub_1A3C38394();
    sub_1A44C2BD4(&qword_1EB12B1B0, sub_1A3C38394);
    sub_1A524E224();
    MEMORY[0x1A5908800](0, v8, v5, v17);
    _Block_release(v17);

    (*(v19 + 8))(v5, v3);
    return (*(v6 + 8))(v8, v18);
  }

  return result;
}

uint64_t sub_1A44BD0A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v27 = a3;
  sub_1A44C518C();
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v27 - v11;
  SharedAlbumCell = type metadata accessor for SharedAlbumsSection.CreateSharedAlbumCell(0);
  MEMORY[0x1EEE9AC00](SharedAlbumCell - 8);
  v15 = &v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v27 - v17;
  v29 = 0x4040000000000000;
  sub_1A3F185D4();
  sub_1A52480C4();
  v29 = a1;
  v30 = a2;
  sub_1A44C24C0(0, &qword_1EB13ADC0, type metadata accessor for SharedAlbumActionViewModel, MEMORY[0x1E6981790]);
  v19 = sub_1A524B6A4();
  v20 = v28;
  v21 = (*((*MEMORY[0x1E69E7D40] & *v28) + 0x1D8))(v19);

  v29 = v21;
  swift_getKeyPath();
  sub_1A44C2458(0, &qword_1EB140620, &qword_1EB126AC0, 0x1E6978650, MEMORY[0x1E69E62F8]);
  type metadata accessor for SharedAlbumsSection.SharedAlbumCell(0);
  sub_1A44C5270();
  sub_1A44C53CC(qword_1EB1C4420, type metadata accessor for SharedAlbumsSection.SharedAlbumCell);
  sub_1A524B9B4();
  sub_1A44C800C(v18, v15, type metadata accessor for SharedAlbumsSection.CreateSharedAlbumCell);
  v22 = *(v7 + 16);
  v22(v9, v12, v6);
  v23 = v27;
  sub_1A44C800C(v15, v27, type metadata accessor for SharedAlbumsSection.CreateSharedAlbumCell);
  sub_1A44C5138(0);
  v22((v23 + *(v24 + 48)), v9, v6);
  v25 = *(v7 + 8);
  v25(v12, v6);
  sub_1A44C5414(v18, type metadata accessor for SharedAlbumsSection.CreateSharedAlbumCell);
  v25(v9, v6);
  return sub_1A44C5414(v15, type metadata accessor for SharedAlbumsSection.CreateSharedAlbumCell);
}

void sub_1A44BD458(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 uuid];
  v4 = sub_1A524C674();
  v6 = v5;

  *a2 = v4;
  a2[1] = v6;
}

uint64_t sub_1A44BD4B0@<X0>(void **a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  *a2 = *a1;
  sub_1A44C2458(0, &qword_1EB126650, &qword_1EB126660, 0x1E6978630, MEMORY[0x1E69E6720]);
  v4 = v3;
  sub_1A524B694();
  *(a2 + 8) = v6;
  type metadata accessor for SharedAlbumsSection.SharedAlbumCell(0);
  sub_1A3F185D4();
  return sub_1A52480C4();
}

uint64_t sub_1A44BD570()
{
  sub_1A3C38BD4();
  sub_1A3D5F9DC();
  return sub_1A524A464();
}

uint64_t sub_1A44BD5C8()
{
  v0 = sub_1A5246F24();
  MEMORY[0x1EEE9AC00](v0);
  sub_1A44C24C0(0, &qword_1EB13ADC0, type metadata accessor for SharedAlbumActionViewModel, MEMORY[0x1E6981790]);
  v1 = sub_1A524B6A4();
  v2 = (*((*MEMORY[0x1E69E7D40] & *v10) + 0x370))(v1);
  v4 = v3;

  if (v2 == 0xD00000000000001FLL && 0x80000001A53D9CA0 == v4)
  {
  }

  v6 = sub_1A524EAB4();

  if ((v6 & 1) == 0)
  {
    v8 = [objc_opt_self() standardUserDefaults];
    v9 = sub_1A524B6A4();
    (*((*MEMORY[0x1E69E7D40] & *v10) + 0x370))(v9);

    sub_1A524C634();

    sub_1A3D444C4();
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  return result;
}

uint64_t sub_1A44BDA0C@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v43 = a2;
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  v5 = *(a1 + 40);
  v40 = *(a1 + 32);
  v41 = v3;
  v6 = v4;
  v53 = v5;
  v54 = v40;
  v7 = v5;
  v38 = v5;
  sub_1A524B824();
  sub_1A5249274();
  WitnessTable = swift_getWitnessTable();
  v9 = MEMORY[0x1E697C418];
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v51 = WitnessTable;
  v52 = v9;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v12 = swift_getOpaqueTypeMetadata2();
  v49 = OpaqueTypeMetadata2;
  v50 = OpaqueTypeConformance2;
  v13 = swift_getOpaqueTypeConformance2();
  v14 = *(v7 + 8);
  v36 = v6;
  swift_getOpaqueTypeMetadata2();
  v49 = v12;
  v50 = v6;
  v51 = v13;
  v52 = v14;
  swift_getOpaqueTypeConformance2();
  v15 = sub_1A524A2A4();
  v39 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v34 - v16;
  v35 = swift_getWitnessTable();
  v49 = v15;
  v50 = v35;
  v37 = swift_getOpaqueTypeMetadata2();
  v18 = *(v37 - 8);
  MEMORY[0x1EEE9AC00](v37);
  v20 = &v34 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v34 - v22;
  v24 = v42;
  v44 = v41;
  v45 = v36;
  v46 = v40;
  v47 = v38;
  v48 = v42;
  v25 = sub_1A524A294();
  v26 = (*(v24 + *(a1 + 60)))(v25);
  v28 = v27;
  LOBYTE(v9) = v29;
  sub_1A524ABA4();
  sub_1A3E04DF4(v26, v28, v9 & 1);

  (*(v39 + 8))(v17, v15);
  v30 = *(v18 + 16);
  v31 = v37;
  v30(v23, v20, v37);
  v32 = *(v18 + 8);
  v32(v20, v31);
  v30(v43, v23, v31);
  return (v32)(v23, v31);
}

uint64_t sub_1A44BDE48@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char *a6@<X8>)
{
  v76 = a1;
  v89 = a6;
  v92 = a2;
  v93 = a3;
  v79 = a2;
  v94 = a4;
  v95 = a5;
  v90 = a4;
  v10 = type metadata accessor for SharedAlbumsSection.PickerView();
  v86 = *(v10 - 8);
  v87 = *(v86 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v85 = &v61 - v11;
  v88 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v84 = &v61 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1A5249274();
  v83 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v80 = &v61 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1A524B974();
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = &v61 - v17;
  v92 = MEMORY[0x1E6981148];
  v93 = a3;
  v94 = a2;
  v95 = MEMORY[0x1E6981138];
  v96 = a5;
  v97 = a4;
  v19 = a5;
  v20 = sub_1A524B824();
  v82 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v75 = &v61 - v21;
  WitnessTable = swift_getWitnessTable();
  v92 = v20;
  v93 = v14;
  v23 = MEMORY[0x1E697C418];
  v94 = WitnessTable;
  v95 = MEMORY[0x1E697C418];
  v24 = WitnessTable;
  v69 = WitnessTable;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v78 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2);
  v68 = &v61 - v26;
  v92 = v20;
  v93 = v14;
  v94 = v24;
  v95 = v23;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v64 = OpaqueTypeMetadata2;
  v92 = OpaqueTypeMetadata2;
  v93 = OpaqueTypeConformance2;
  v28 = OpaqueTypeConformance2;
  v65 = OpaqueTypeConformance2;
  v29 = swift_getOpaqueTypeMetadata2();
  v71 = v29;
  v81 = *(v29 - 8);
  MEMORY[0x1EEE9AC00](v29);
  v66 = &v61 - v30;
  v92 = OpaqueTypeMetadata2;
  v93 = v28;
  v73 = swift_getOpaqueTypeConformance2();
  v72 = *(v19 + 8);
  v63 = v19;
  v92 = v29;
  v93 = a3;
  v62 = a3;
  v94 = v73;
  v95 = v72;
  v77 = swift_getOpaqueTypeMetadata2();
  v74 = *(v77 - 8);
  MEMORY[0x1EEE9AC00](v77);
  v67 = &v61 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v32);
  v70 = &v61 - v33;
  v34 = v10;
  v35 = sub_1A524B974();
  v36 = v76;
  sub_1A524B924();
  v37 = (v36 + *(v34 + 56));
  v38 = *v37;
  v39 = v37[1];
  v91 = *(v36 + *(v34 + 60));
  v40 = v75;
  v41 = v79;
  sub_1A44BE6DC(v18, v38, v39, sub_1A44C7958, v79, v75, MEMORY[0x1E6981138]);
  v42 = v80;
  sub_1A5249264();
  v43 = v68;
  sub_1A524A9A4();
  (*(v83 + 8))(v42, v14);
  (*(v82 + 8))(v40, v20);
  v44 = v66;
  v45 = v64;
  sub_1A524AA74();
  (*(v78 + 8))(v43, v45);
  v46 = v84;
  MEMORY[0x1A5906C60](v35);
  v48 = v85;
  v47 = v86;
  (*(v86 + 16))(v85, v36, v34);
  v49 = (*(v47 + 80) + 48) & ~*(v47 + 80);
  v50 = swift_allocObject();
  v51 = v62;
  *(v50 + 2) = v41;
  *(v50 + 3) = v51;
  v52 = v63;
  *(v50 + 4) = v90;
  *(v50 + 5) = v52;
  (*(v47 + 32))(&v50[v49], v48, v34);
  v53 = v67;
  v54 = v71;
  sub_1A524B154();

  (*(v88 + 8))(v46, v51);
  (*(v81 + 8))(v44, v54);
  v55 = v74;
  v56 = *(v74 + 16);
  v57 = v70;
  v58 = v77;
  v56(v70, v53, v77);
  v59 = *(v55 + 8);
  v59(v53, v58);
  v56(v89, v57, v58);
  return (v59)(v57, v58);
}

uint64_t sub_1A44BE6DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X7>, uint64_t a6@<X8>, uint64_t a7)
{
  v14[4] = a3;
  v14[5] = a5;
  v14[0] = a4;
  v14[1] = a6;
  v14[2] = a2;
  v14[3] = a7;
  MEMORY[0x1EEE9AC00](a1);
  v8 = sub_1A524B974();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = (*(v9 + 16))(v14 - v11, a1, v8, v10);
  (v14[0])(v12);
  sub_1A524B7F4();
  return (*(v9 + 8))(a1, v8);
}

uint64_t sub_1A44BE86C(uint64_t a1)
{
  v16 = sub_1A5249234();
  v2 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x1E697BF90];
  sub_1A44C24C0(0, &unk_1EB128A60, MEMORY[0x1E697BF90], MEMORY[0x1E697DCB8]);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v15 - v7;
  v9 = sub_1A5248284();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A44C7A08(a1, v8, &unk_1EB128A60, v5);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v10 + 32))(v12, v8, v9);
  }

  else
  {
    sub_1A524D254();
    v13 = sub_1A524A014();
    sub_1A5246DF4();

    sub_1A5249224();
    swift_getAtKeyPath();

    (*(v2 + 8))(v4, v16);
  }

  sub_1A5248274();
  return (*(v10 + 8))(v12, v9);
}

void sub_1A44BEB10(uint64_t a1@<X8>)
{
  sub_1A44C7A88(0);
  v3 = v2 - 8;
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  *v5 = sub_1A5249314();
  *(v5 + 1) = 0;
  v5[16] = 1;
  sub_1A44C7EA8();
  sub_1A44BEC84(&v5[*(v6 + 44)]);
  v7 = sub_1A524A064();
  v8 = &v5[*(v3 + 44)];
  *v8 = v7;
  *(v8 + 8) = 0u;
  *(v8 + 24) = 0u;
  v8[40] = 1;
  v9 = sub_1A5249BE4();
  v10 = objc_opt_self();
  v11 = &selRef_quaternaryLabelColor;
  if ((v9 & 1) == 0)
  {
    v11 = &selRef_systemBackgroundColor;
  }

  v12 = [v10 *v11];
  v13 = sub_1A524B284();
  v14 = sub_1A524BC74();
  v16 = v15;
  sub_1A3D0335C(v5, a1);
  sub_1A44C2AF4(0, &qword_1EB13C518, sub_1A44C7A88, sub_1A44C7F10);
  v18 = a1 + *(v17 + 36);
  *v18 = v13;
  *(v18 + 8) = 256;
  *(v18 + 16) = v14;
  *(v18 + 24) = v16;
}

uint64_t sub_1A44BEC84@<X0>(uint64_t a1@<X8>)
{
  v61 = a1;
  sub_1A3EE1D04();
  v60 = v1;
  MEMORY[0x1EEE9AC00](v1);
  v67 = &v55 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1A5242234();
  v65 = *(v3 - 8);
  v66 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v55 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = sub_1A5242264();
  v6 = *(v64 - 8);
  MEMORY[0x1EEE9AC00](v64);
  v8 = (&v55 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1A44C7D4C(0);
  v63 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v62 = &v55 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A44C7C78();
  v59 = v11;
  v58 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v57 = &v55 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v56 = &v55 - v14;
  v15 = sub_1A5249BC4();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v55 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A44C7C3C(0);
  v20 = v19 - 8;
  MEMORY[0x1EEE9AC00](v19);
  v55 = &v55 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v55 - v23;
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v55 - v26;
  sub_1A5249BD4();
  sub_1A524BC74();
  sub_1A5248AD4();
  (*(v16 + 32))(v24, v18, v15);
  v28 = *(v20 + 44);
  v30 = v62;
  v29 = v63;
  v31 = &v24[v28];
  v32 = v73;
  *(v31 + 4) = v72;
  *(v31 + 5) = v32;
  *(v31 + 6) = v74;
  v33 = v69;
  *v31 = v68;
  *(v31 + 1) = v33;
  v34 = v71;
  *(v31 + 2) = v70;
  *(v31 + 3) = v34;
  v35 = v24;
  v36 = v27;
  sub_1A44C7FA4(v35, v27, sub_1A44C7C3C);
  *v8 = 0x2E6E6F7276656863;
  v8[1] = 0xEF64726177726F66;
  v37 = v64;
  (*(v6 + 104))(v8, *MEMORY[0x1E69C1D38], v64);
  sub_1A5242174();
  sub_1A5242B84();
  (*(v65 + 8))(v5, v66);
  (*(v6 + 8))(v8, v37);
  v38 = v67;
  v39 = sub_1A524B4A4();
  KeyPath = swift_getKeyPath();
  v41 = (v30 + *(v29 + 36));
  *v41 = KeyPath;
  v41[1] = v39;
  v42 = *MEMORY[0x1E697E6E8];
  v43 = sub_1A52486A4();
  (*(*(v43 - 8) + 104))(v38, v42, v43);
  sub_1A44C2BD4(&unk_1EB1288C0, MEMORY[0x1E697E730]);
  result = sub_1A524C594();
  if (result)
  {
    sub_1A44C7DE0();
    sub_1A44C2BD4(&unk_1EB1263B0, sub_1A3EE1D04);
    v45 = v56;
    sub_1A524AB84();
    sub_1A44C5414(v38, sub_1A3EE1D04);
    sub_1A44C3CF4(v30, sub_1A44C7D4C);
    v46 = v27;
    v47 = v55;
    sub_1A44C800C(v46, v55, sub_1A44C7C3C);
    v48 = v58;
    v49 = *(v58 + 16);
    v50 = v57;
    v51 = v59;
    v49(v57, v45, v59);
    v52 = v61;
    sub_1A44C800C(v47, v61, sub_1A44C7C3C);
    sub_1A44C7B8C(0);
    v49((v52 + *(v53 + 48)), v50, v51);
    v54 = *(v48 + 8);
    v54(v45, v51);
    sub_1A44C5414(v36, sub_1A44C7C3C);
    v54(v50, v51);
    return sub_1A44C5414(v47, sub_1A44C7C3C);
  }

  else
  {
    __break(1u);
  }

  return result;
}