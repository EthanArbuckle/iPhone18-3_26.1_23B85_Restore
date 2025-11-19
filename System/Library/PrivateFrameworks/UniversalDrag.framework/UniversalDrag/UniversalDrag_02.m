uint64_t sub_2706A984C(uint64_t *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081D2E8, &qword_2706EA400);
  OUTLINED_FUNCTION_4(v3);
  v5 = v4;
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v8);
  v10 = v14 - v9;
  v11 = a1[4];
  v12 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2706A9D14();
  sub_2706E668C();
  if (!v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081D2D0, &qword_2706EA3F8);
    sub_2706A9DBC(&unk_28081D2F0);
    sub_2706E605C();
    v12 = sub_2706A9A2C(v14[1]);

    (*(v5 + 8))(v10, v3);
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v12;
}

uint64_t sub_2706A9A2C(uint64_t a1)
{
  v2 = MEMORY[0x277D84F98];
  v28 = MEMORY[0x277D84F98];
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
  while (v6)
  {
LABEL_10:
    v11 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    v12 = v11 | (v9 << 6);
    v13 = *(*(a1 + 56) + 8 * v12);
    if (v13)
    {
      v27 = *(*(a1 + 48) + 8 * v12);
      v14 = *(v2 + 16);
      if (*(v2 + 24) <= v14)
      {
        v16 = v13;
        sub_2706A9E90(v14 + 1, 1);
        v2 = v28;
      }

      else
      {
        v15 = v13;
      }

      v17 = *(v2 + 40);
      result = sub_2706E65DC();
      v18 = v2 + 64;
      v19 = -1 << *(v2 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v2 + 64 + 8 * (v20 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v19) >> 6;
        while (++v21 != v24 || (v23 & 1) == 0)
        {
          v25 = v21 == v24;
          if (v21 == v24)
          {
            v21 = 0;
          }

          v23 |= v25;
          v26 = *(v18 + 8 * v21);
          if (v26 != -1)
          {
            v22 = __clz(__rbit64(~v26)) + (v21 << 6);
            goto LABEL_23;
          }
        }

        goto LABEL_26;
      }

      v22 = __clz(__rbit64((-1 << v20) & ~*(v2 + 64 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
      *(v18 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
      *(*(v2 + 48) + 8 * v22) = v27;
      *(*(v2 + 56) + 8 * v22) = v13;
      ++*(v2 + 16);
    }
  }

  while (1)
  {
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v10 >= v7)
    {

      return v2;
    }

    v6 = *(v3 + 8 * v10);
    ++v9;
    if (v6)
    {
      v9 = v10;
      goto LABEL_10;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_2706A9C28@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_2706A984C(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t __swift_mutable_project_boxed_opaque_existential_1(uint64_t a1, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return result;
}

unint64_t sub_2706A9CB0(uint64_t a1)
{
  result = OUTLINED_FUNCTION_19_4(a1);
  if (!result)
  {
    v4 = v3;
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28081D2A0, &qword_2706EA3E0);
    v4();
    result = OUTLINED_FUNCTION_21_2();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_2706A9D14()
{
  result = qword_28081D2C0;
  if (!qword_28081D2C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28081D2C0);
  }

  return result;
}

unint64_t sub_2706A9D68()
{
  result = qword_28081D2E0;
  if (!qword_28081D2E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28081D2E0);
  }

  return result;
}

unint64_t sub_2706A9DBC(uint64_t a1)
{
  result = OUTLINED_FUNCTION_19_4(a1);
  if (!result)
  {
    v4 = v3;
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28081D2D0, &qword_2706EA3F8);
    v4();
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_2706A9E3C()
{
  result = qword_28081D2F8;
  if (!qword_28081D2F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28081D2F8);
  }

  return result;
}

uint64_t sub_2706A9E90(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081D300, &qword_2706EA408);
  result = sub_2706E5FBC();
  v8 = result;
  if (!*(v5 + 16))
  {

LABEL_34:
    *v3 = v8;
    return result;
  }

  v33 = v3;
  v9 = 0;
  v10 = (v5 + 64);
  v11 = 1 << *(v5 + 32);
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  else
  {
    v12 = -1;
  }

  v13 = v12 & *(v5 + 64);
  v14 = (v11 + 63) >> 6;
  v15 = result + 64;
  if (!v13)
  {
LABEL_9:
    v17 = v9;
    while (1)
    {
      v9 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v9 >= v14)
      {
        break;
      }

      v18 = v10[v9];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v13 = (v18 - 1) & v18;
        goto LABEL_14;
      }
    }

    if (a2)
    {
      v32 = 1 << *(v5 + 32);
      if (v32 >= 64)
      {
        sub_2706AA0F4(0, (v32 + 63) >> 6, v5 + 64);
      }

      else
      {
        *v10 = -1 << v32;
      }

      *(v5 + 16) = 0;
    }

    v3 = v33;
    goto LABEL_34;
  }

  while (1)
  {
    v16 = __clz(__rbit64(v13));
    v13 &= v13 - 1;
LABEL_14:
    v19 = v16 | (v9 << 6);
    v20 = *(*(v5 + 48) + 8 * v19);
    v21 = *(*(v5 + 56) + 8 * v19);
    if ((a2 & 1) == 0)
    {
      v22 = v21;
    }

    v23 = *(v8 + 40);
    result = sub_2706E65DC();
    v24 = -1 << *(v8 + 32);
    v25 = result & ~v24;
    v26 = v25 >> 6;
    if (((-1 << v25) & ~*(v15 + 8 * (v25 >> 6))) == 0)
    {
      break;
    }

    v27 = __clz(__rbit64((-1 << v25) & ~*(v15 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_25:
    *(v15 + ((v27 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v27;
    *(*(v8 + 48) + 8 * v27) = v20;
    *(*(v8 + 56) + 8 * v27) = v21;
    ++*(v8 + 16);
    if (!v13)
    {
      goto LABEL_9;
    }
  }

  v28 = 0;
  v29 = (63 - v24) >> 6;
  while (++v26 != v29 || (v28 & 1) == 0)
  {
    v30 = v26 == v29;
    if (v26 == v29)
    {
      v26 = 0;
    }

    v28 |= v30;
    v31 = *(v15 + 8 * v26);
    if (v31 != -1)
    {
      v27 = __clz(__rbit64(~v31)) + (v26 << 6);
      goto LABEL_25;
    }
  }

LABEL_36:
  __break(1u);
  return result;
}

uint64_t sub_2706AA0F4(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else if (a2)
  {
    v3 = (a2 + 1) & 0xFFFFFFFFFFFFFFFELL;
    v4 = vdupq_n_s64(a2 - 1);
    v5 = xmmword_2706EA1C0;
    v6 = (a3 + 8);
    v7 = vdupq_n_s64(2uLL);
    do
    {
      v8 = vmovn_s64(vcgeq_u64(v4, v5));
      if (v8.i8[0])
      {
        *(v6 - 1) = result;
      }

      if (v8.i8[4])
      {
        *v6 = result;
      }

      v5 = vaddq_s64(v5, v7);
      v6 += 2;
      v3 -= 2;
    }

    while (v3);
  }

  return result;
}

unint64_t sub_2706AA158()
{
  result = qword_28081D310;
  if (!qword_28081D310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28081D310);
  }

  return result;
}

unint64_t sub_2706AA1AC()
{
  result = qword_28081D338;
  if (!qword_28081D338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28081D338);
  }

  return result;
}

unint64_t sub_2706AA200(uint64_t a1)
{
  result = OUTLINED_FUNCTION_19_4(a1);
  if (!result)
  {
    v4 = v3;
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28081D350, &qword_2706EA428);
    v4();
    result = OUTLINED_FUNCTION_21_2();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_2706AA264()
{
  result = qword_28081D360;
  if (!qword_28081D360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28081D360);
  }

  return result;
}

unint64_t sub_2706AA2B8(uint64_t a1)
{
  result = OUTLINED_FUNCTION_19_4(a1);
  if (!result)
  {
    v3(255);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_2706AA2FC()
{
  result = qword_28081D388;
  if (!qword_28081D388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28081D388);
  }

  return result;
}

_BYTE *sub_2706AA350(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x2706AA41CLL);
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

_BYTE *storeEnumTagSinglePayload for DragComponent.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x2706AA51CLL);
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

uint64_t getEnumTagSinglePayload for PasteboardDataTransferID.CodingKeys(unsigned int *a1, int a2)
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

_BYTE *sub_2706AA5A4(_BYTE *result, int a2, int a3)
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
        return result;
      case 2:
        *result = a2;
        return result;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        return result;
      default:
        return result;
    }
  }

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
      JUMPOUT(0x2706AA640);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_2706AA680(uint64_t *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 8))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2706AA6D4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_2706AA73C(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 72))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 56);
      if (v3 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2706AA790(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 72) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 72) = 0;
    }

    if (a2)
    {
      *(result + 56) = a2;
    }
  }

  return result;
}

unint64_t sub_2706AA804()
{
  result = qword_28081D390;
  if (!qword_28081D390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28081D390);
  }

  return result;
}

unint64_t sub_2706AA85C()
{
  result = qword_28081D398;
  if (!qword_28081D398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28081D398);
  }

  return result;
}

unint64_t sub_2706AA8B4()
{
  result = qword_28081D3A0;
  if (!qword_28081D3A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28081D3A0);
  }

  return result;
}

unint64_t sub_2706AA90C()
{
  result = qword_28081D3A8;
  if (!qword_28081D3A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28081D3A8);
  }

  return result;
}

unint64_t sub_2706AA964()
{
  result = qword_28081D3B0;
  if (!qword_28081D3B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28081D3B0);
  }

  return result;
}

unint64_t sub_2706AA9BC()
{
  result = qword_28081D3B8;
  if (!qword_28081D3B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28081D3B8);
  }

  return result;
}

unint64_t sub_2706AAA14()
{
  result = qword_28081D3C0;
  if (!qword_28081D3C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28081D3C0);
  }

  return result;
}

unint64_t sub_2706AAA6C()
{
  result = qword_28081D3C8;
  if (!qword_28081D3C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28081D3C8);
  }

  return result;
}

unint64_t sub_2706AAAC4()
{
  result = qword_28081D3D0;
  if (!qword_28081D3D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28081D3D0);
  }

  return result;
}

unint64_t sub_2706AAB18()
{
  result = qword_28081D3E0;
  if (!qword_28081D3E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28081D3E0);
  }

  return result;
}

unint64_t sub_2706AAB6C()
{
  result = qword_28081D3E8;
  if (!qword_28081D3E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28081D3E8);
  }

  return result;
}

unint64_t sub_2706AABC0()
{
  result = qword_28081D3F8;
  if (!qword_28081D3F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28081D3F8);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for DragPresentationItemUpdate.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x2706AACE0);
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

unint64_t sub_2706AAD1C()
{
  result = qword_28081D400;
  if (!qword_28081D400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28081D400);
  }

  return result;
}

unint64_t sub_2706AAD74()
{
  result = qword_28081D408;
  if (!qword_28081D408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28081D408);
  }

  return result;
}

unint64_t sub_2706AADCC()
{
  result = qword_28081D410;
  if (!qword_28081D410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28081D410);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_13_5()
{

  return sub_2706E66AC();
}

uint64_t OUTLINED_FUNCTION_21_2()
{

  return swift_getWitnessTable();
}

uint64_t sub_2706AAF94()
{
  OUTLINED_FUNCTION_11_4();
  v4 = (v1 + OBJC_IVAR____TtC13UniversalDrag22PasteboardDataProvider_data);
  *v4 = v5;
  v4[1] = v6;
  sub_270692D3C(v5, v6);
  sub_2706A3BA4(0, 0xF000000000000000);
  OUTLINED_FUNCTION_10_4();
  sub_2706AE63C(v0, v1 + v7, v8);
  sub_2706AB02C();
  sub_270688E88(v3, v2);
  sub_2706AE590();
  return v1;
}

uint64_t sub_2706AB02C()
{
  swift_weakInit();
  swift_weakAssign();

  return v0;
}

void sub_2706AB070()
{
  OUTLINED_FUNCTION_21_0();
  v2 = v0;
  v4 = v3;
  v6 = v5;
  v7 = sub_2706E576C();
  v8 = OUTLINED_FUNCTION_4(v7);
  v10 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v8);
  v13 = &v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for PasteboardDataTransferID(0);
  v15 = OUTLINED_FUNCTION_16_3(v14);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_6_5();
  v18 = *(v2 + OBJC_IVAR____TtC13UniversalDrag22PasteboardDataProvider_data + 8);
  if (v18 >> 60 == 15)
  {
    sub_2706DD768();
LABEL_5:
    OUTLINED_FUNCTION_16_0();
    return;
  }

  v19 = *(v2 + OBJC_IVAR____TtC13UniversalDrag22PasteboardDataProvider_data);
  v20 = OUTLINED_FUNCTION_19_5();
  sub_270692D3C(v20, v21);
  v22 = OUTLINED_FUNCTION_19_5();
  if ((MEMORY[0x2743A5B30](v22) & 0x8000000000000000) == 0)
  {
    OUTLINED_FUNCTION_0_4();
    v37 = v23;
    v38 = v24;
    sub_2706AE63C(v2 + v25, v1, v26);
    v35 = "NSError16@?<v@?>24";
    (*(v10 + 16))(&v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v6, v7);
    v27 = *(v10 + 80);
    v36 = v6;
    v28 = (v27 + 48) & ~v27;
    v29 = swift_allocObject();
    *(v29 + 2) = v4;
    *(v29 + 3) = v2;
    *(v29 + 4) = v19;
    *(v29 + 5) = v18;
    (*(v10 + 32))(&v29[v28], v13, v7);
    type metadata accessor for Completion();
    swift_allocObject();
    v30 = OUTLINED_FUNCTION_19_5();
    sub_2706A6E0C(v30, v31);

    v32 = sub_2706DD8C4(0xD00000000000005ELL, v35 | 0x8000000000000000, 55, sub_2706AE8E0, v29);
    sub_2706AB990(0, v37, 0, v36, v1, v32);

    v33 = OUTLINED_FUNCTION_19_5();
    sub_2706A3BA4(v33, v34);
    sub_2706AE590();
    goto LABEL_5;
  }

  __break(1u);
}

void sub_2706AB2C8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v27 = a4;
  v11 = sub_2706E576C();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for PasteboardDataTransferID(0);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v18 = &v24 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v19 = a1;
    sub_2706DD768();
  }

  else
  {
    sub_2706AE63C(a3 + OBJC_IVAR____TtC13UniversalDrag22PasteboardDataProvider_id, v18, type metadata accessor for PasteboardDataTransferID);
    v25 = "NSError16@?<v@?>24";
    (*(v12 + 16))(&v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), a6, v11);
    v20 = *(v12 + 80);
    v26 = a5;
    v21 = (v20 + 32) & ~v20;
    v22 = swift_allocObject();
    *(v22 + 16) = a2;
    *(v22 + 24) = a3;
    (*(v12 + 32))(v22 + v21, v14, v11);
    type metadata accessor for Completion();
    swift_allocObject();

    v23 = sub_2706DD8C4(0xD00000000000005ELL, v25 | 0x8000000000000000, 64, sub_2706AE9FC, v22);
    sub_2706ABAE0(v27, v26, a6, v18, v23);

    sub_2706AE590();
  }
}

void sub_2706AB558(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for PasteboardDataTransferID(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v13 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v12 = a1;
    sub_2706DD768();
  }

  else
  {
    sub_2706AE63C(a3 + OBJC_IVAR____TtC13UniversalDrag22PasteboardDataProvider_id, v11, type metadata accessor for PasteboardDataTransferID);
    sub_2706ABC18(v11, a4, a2);
    sub_2706AE590();
  }
}

uint64_t sub_2706AB690()
{
  OUTLINED_FUNCTION_3_4();
  v1 = *(v0 + OBJC_IVAR____TtC13UniversalDrag22PasteboardDataProvider_data);
  v2 = *(v0 + OBJC_IVAR____TtC13UniversalDrag22PasteboardDataProvider_data + 8);

  return sub_2706A3BA4(v1, v2);
}

uint64_t sub_2706AB6D0()
{
  swift_weakDestroy();
  OUTLINED_FUNCTION_3_4();
  sub_2706A3BA4(*(v0 + OBJC_IVAR____TtC13UniversalDrag22PasteboardDataProvider_data), *(v0 + OBJC_IVAR____TtC13UniversalDrag22PasteboardDataProvider_data + 8));
  return v0;
}

uint64_t sub_2706AB710()
{
  sub_2706AB6D0();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t sub_2706AB790()
{
  result = sub_2706E576C();
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

void sub_2706AB828(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_21_0();
  a19 = v20;
  a20 = v21;
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v28 = type metadata accessor for PasteboardDataTransferID(0);
  v29 = OUTLINED_FUNCTION_5_4(v28);
  v31 = v30;
  v33 = *(v32 + 64);
  MEMORY[0x28223BE20](v29);
  v34 = &a9 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  OUTLINED_FUNCTION_0_4();
  v35 = OUTLINED_FUNCTION_22_2();
  sub_2706AE63C(v35, v36, v37);
  v38 = (*(v31 + 80) + 16) & ~*(v31 + 80);
  v39 = (v33 + v38 + 7) & 0xFFFFFFFFFFFFFFF8;
  v40 = swift_allocObject();
  sub_2706A66AC(v34, v40 + v38);
  v41 = (v40 + v39);
  *v41 = v27;
  v41[1] = v25;
  *(v40 + ((v39 + 23) & 0xFFFFFFFFFFFFFFF8)) = v23;
  type metadata accessor for Completion();
  swift_allocObject();

  sub_2706DD8C4(0xD00000000000005ELL, 0x80000002706F05E0, 205, sub_2706AE788, v40);
  OUTLINED_FUNCTION_16_0();
}

uint64_t sub_2706ABECC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + OBJC_IVAR____TtC13UniversalDrag26PasteboardFileDataProvider_archiveSource) = 0;
  v6 = OBJC_IVAR____TtC13UniversalDrag26PasteboardFileDataProvider_completions;
  type metadata accessor for Completions();
  v7 = swift_allocObject();
  *(v7 + 16) = MEMORY[0x277D84F90];
  *(v3 + v6) = v7;
  v8 = OBJC_IVAR____TtC13UniversalDrag26PasteboardFileDataProvider_url;
  v9 = sub_2706E565C();
  v10 = *(v9 - 8);
  (*(v10 + 16))(v3 + v8, a2, v9);
  OUTLINED_FUNCTION_10_4();
  sub_2706AE63C(a3, v3 + v11, v12);
  sub_2706AB02C();
  sub_2706AE590();
  (*(v10 + 8))(a2, v9);
  return v3;
}

void sub_2706ABFEC()
{
  OUTLINED_FUNCTION_21_0();
  v1 = v0;
  v3 = v2;
  v4 = sub_2706E576C();
  v5 = OUTLINED_FUNCTION_4(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5);
  v10 = *(v0 + OBJC_IVAR____TtC13UniversalDrag26PasteboardFileDataProvider_completions);
  swift_beginAccess();

  MEMORY[0x2743A5F60](v11);
  sub_2706E2658(*((*(v10 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10));
  sub_2706E5B4C();
  swift_endAccess();

  if (!*(v0 + OBJC_IVAR____TtC13UniversalDrag26PasteboardFileDataProvider_archiveSource))
  {
    v12 = [objc_allocWithZone(MEMORY[0x277CCA9E8]) init];
    v13 = sub_2706E55DC();
    (*(v7 + 16))(v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v3, v4);
    v14 = (*(v7 + 80) + 24) & ~*(v7 + 80);
    v15 = swift_allocObject();
    *(v15 + 16) = v1;
    (*(v7 + 32))(v15 + v14, v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v4);
    v17[4] = sub_2706ADDD0;
    v17[5] = v15;
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 1107296256;
    v17[2] = sub_2706AD280;
    v17[3] = &block_descriptor_1;
    v16 = _Block_copy(v17);

    [v12 __coordinateReadingItemAtURL_options_purposeID_byAccessor_];

    _Block_release(v16);
  }

  OUTLINED_FUNCTION_16_0();
}

uint64_t sub_2706AC254(void (*a1)(uint64_t, uint64_t, uint64_t), void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v71 = a6;
  v75 = a1;
  v77 = sub_2706E576C();
  v74 = *(v77 - 8);
  v10 = *(v74 + 64);
  MEMORY[0x28223BE20](v77);
  v73 = &v68 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for PasteboardDataTransferID(0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v72 = &v68 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081D450, &qword_2706EAA20);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v78 = (&v68 - v16);
  v79 = sub_2706E565C();
  v76 = *(v79 - 8);
  v17 = *(v76 + 64);
  v18 = MEMORY[0x28223BE20](v79);
  v70 = &v68 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v21 = &v68 - v20;
  v22 = swift_allocObject();
  *(v22 + 16) = a3;
  *(v22 + 24) = a4;
  type metadata accessor for Completion();
  swift_allocObject();
  sub_2706A5AA4(a3);
  v23 = sub_2706DD8C4(0xD00000000000005ELL, 0x80000002706F05E0, 115, sub_2706ADF38, v22);
  v24 = *(a5 + OBJC_IVAR____TtC13UniversalDrag26PasteboardFileDataProvider_completions);
  swift_beginAccess();

  MEMORY[0x2743A5F60](v25);
  sub_2706E2658(*((*(v24 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10));
  sub_2706E5B4C();
  swift_endAccess();

  swift_allocObject();

  v80 = sub_2706DD8C4(0xD00000000000005ELL, 0x80000002706F05E0, 118, sub_2706ADF68, a5);
  if (a2)
  {
    v26 = a2;
    if (qword_28081C738 != -1)
    {
      swift_once();
    }

    v27 = sub_2706E58DC();
    v28 = __swift_project_value_buffer(v27, qword_2808292F0);
    MEMORY[0x28223BE20](v28);
    *(&v68 - 2) = a2;
    sub_270694664(sub_2706ACA80, 0, sub_2706A5A60, (&v68 - 4), v29, v30, v31, v32, v68, v69, v70, v71, v72, v73, v74, v75, v76, v77, v78, v79, v80, v81);
    v33 = a2;
    sub_2706DD768();

    v34 = a2;
LABEL_11:
  }

  v35 = v72;
  v36 = v73;
  v37 = v74;
  v69 = v10;
  v38 = v76;
  v39 = v77;
  v40 = v78;
  sub_2706ADF70(v75, v78);
  if (__swift_getEnumTagSinglePayload(v40, 1, v79) == 1)
  {
    sub_2706ADE58(v78);
    if (qword_28081C738 != -1)
    {
      swift_once();
    }

    v41 = sub_2706E58DC();
    __swift_project_value_buffer(v41, qword_2808292F0);

    v42 = sub_2706E58BC();
    v43 = sub_2706E5BFC();

    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      v81 = v45;
      *v44 = 136446210;
      sub_2706E572C();
      v46 = sub_2706B8734(8);
      v47 = MEMORY[0x2743A5EC0](v46);
      v49 = v48;

      v50 = sub_2706C83E8(v47, v49, &v81);

      *(v44 + 4) = v50;
      _os_log_impl(&dword_270680000, v42, v43, "file coordination provided, no url: id=%{public}s", v44, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v45);
      MEMORY[0x2743A75B0](v45, -1, -1);
      MEMORY[0x2743A75B0](v44, -1, -1);
    }

    sub_270694B50();
    v51 = swift_allocError();
    *v52 = 0xC000000000000020;
    sub_2706DD768();
    v34 = v51;
    goto LABEL_11;
  }

  v54 = *(v38 + 32);
  v55 = v21;
  v68 = v21;
  v56 = v79;
  v54(v21, v78, v79);
  v57 = a5;
  sub_2706AE63C(a5 + OBJC_IVAR____TtC13UniversalDrag26PasteboardFileDataProvider_id, v35, type metadata accessor for PasteboardDataTransferID);
  v78 = v23;
  v75 = *(v37 + 32);
  v75(v36, v35, v39);
  (*(v38 + 16))(v70, v55, v56);
  v58 = type metadata accessor for ArchiveTransferSource(0);
  v59 = *(v58 + 48);
  v60 = *(v58 + 52);
  swift_allocObject();
  sub_2706D2258();
  v62 = v61;
  v63 = *(a5 + OBJC_IVAR____TtC13UniversalDrag26PasteboardFileDataProvider_archiveSource);
  *(v57 + OBJC_IVAR____TtC13UniversalDrag26PasteboardFileDataProvider_archiveSource) = v61;

  (*(v37 + 16))(v36, v71, v39);
  v64 = (*(v37 + 80) + 24) & ~*(v37 + 80);
  v65 = (v69 + v64 + 7) & 0xFFFFFFFFFFFFFFF8;
  v66 = v80;
  v67 = swift_allocObject();
  *(v67 + 16) = v57;
  v75(v67 + v64, v36, v77);
  *(v67 + v65) = v66;
  *(v67 + ((v65 + 15) & 0xFFFFFFFFFFFFFFF8)) = v62;

  sub_2706D2578();

  return (*(v76 + 8))(v68, v79);
}

uint64_t sub_2706ACA30(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + OBJC_IVAR____TtC13UniversalDrag26PasteboardFileDataProvider_completions);

  sub_2706DAAE8();
}

uint64_t sub_2706ACA9C(void *a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = sub_2706E576C();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v16 = OBJC_IVAR____TtC13UniversalDrag26PasteboardFileDataProvider_id;
    v17 = swift_allocObject();
    swift_getErrorValue();
    *(v17 + 16) = sub_2706E653C();
    *(v17 + 24) = v18;
    v19 = swift_allocObject();
    *(v19 + 16) = a5;
    *(v19 + 24) = a1;
    type metadata accessor for Completion();
    swift_allocObject();

    sub_2706AE1C0(a1, 1);
    v20 = sub_2706DD8C4(0xD00000000000005ELL, 0x80000002706F05E0, 181, sub_2706AE198, v19);
    sub_2706ABD58(a4, a3 + v16, v17 | 0x6000000000000000, v20);
  }

  else
  {
    v25 = "NSError16@?<v@?>24";
    v26 = OBJC_IVAR____TtC13UniversalDrag26PasteboardFileDataProvider_id;
    (*(v13 + 16))(&v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), a4, v12);
    v21 = (*(v13 + 80) + 40) & ~*(v13 + 80);
    v22 = swift_allocObject();
    *(v22 + 2) = a5;
    *(v22 + 3) = a6;
    *(v22 + 4) = a3;
    (*(v13 + 32))(&v22[v21], v15, v12);
    type metadata accessor for Completion();
    swift_allocObject();

    v23 = sub_2706DD8C4(0xD00000000000005ELL, v25 | 0x8000000000000000, 142, sub_2706AE280, v22);
    sub_2706AB990(1, a1, 0, a4, a3 + v26, v23);
  }
}

void sub_2706ACD70(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v28 = a3;
  v9 = sub_2706E576C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v13 = a1;
    sub_2706DD768();
  }

  else
  {
    v26 = *(v10 + 16);
    v26(&v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), a5, v9);
    v27 = a2;
    v14 = *(v10 + 80);
    v25 = a5;
    v15 = (v14 + 24) & ~v14;
    v16 = v15 + v11;
    v17 = swift_allocObject();
    *(v17 + 16) = a4;
    v24 = *(v10 + 32);
    v24(v17 + v15, v12, v9);
    v18 = v28;
    v19 = *(v28 + 40);
    *(v28 + 32) = sub_2706AE394;
    *(v18 + 40) = v17;
    v20 = a4;

    v26(v12, v25, v9);
    v21 = (v16 + 7) & 0xFFFFFFFFFFFFFFF8;
    v22 = swift_allocObject();
    *(v22 + 16) = v20;
    v24(v22 + v15, v12, v9);
    *(v22 + v21) = v27;
    type metadata accessor for Completion();
    swift_allocObject();

    sub_2706DD8C4(0xD00000000000005ELL, 0x80000002706F05E0, 156, sub_2706AE4C4, v22);
    sub_2706D3484();
  }
}

uint64_t sub_2706AD00C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = OBJC_IVAR____TtC13UniversalDrag26PasteboardFileDataProvider_id;
  type metadata accessor for Completion();
  swift_allocObject();

  v13 = sub_2706DD8C4(0xD00000000000005ELL, 0x80000002706F05E0, 152, a3, a4);
  sub_2706ABAE0(a1, a2, a6, a5 + v12, v13);
}

void sub_2706AD0E8(void *a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v7 = *a4;
  if (a1)
  {
    v9 = OBJC_IVAR____TtC13UniversalDrag26PasteboardFileDataProvider_id;
    v10 = swift_allocObject();
    *(v10 + 16) = a4;
    *(v10 + 24) = a1;
    swift_allocObject();
    v11 = a1;
    v12 = a1;

    v13 = sub_2706DD8C4(0xD00000000000005ELL, 0x80000002706F05E0, 162, sub_2706AE588, v10);
    sub_2706ABD58(a3, a2 + v9, 0xC000000000000040, v13);
  }

  else
  {
    sub_2706ABC18(a2 + OBJC_IVAR____TtC13UniversalDrag26PasteboardFileDataProvider_id, a3, a4);
  }
}

uint64_t sub_2706AD280(uint64_t a1, uint64_t a2, void *a3, const void *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081D450, &qword_2706EAA20);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v20 - v10;
  v13 = *(a1 + 32);
  v12 = *(a1 + 40);
  if (a2)
  {
    sub_2706E562C();
    v14 = sub_2706E565C();
    v15 = 0;
  }

  else
  {
    v14 = sub_2706E565C();
    v15 = 1;
  }

  __swift_storeEnumTagSinglePayload(v11, v15, 1, v14);
  v16 = _Block_copy(a4);
  if (v16)
  {
    v17 = swift_allocObject();
    *(v17 + 16) = v16;
    v16 = sub_2706ADEF8;
  }

  else
  {
    v17 = 0;
  }

  v18 = a3;
  v13(v11, a3, v16, v17);
  sub_27068F6BC(v16);

  return sub_2706ADE58(v11);
}

void sub_2706AD3E8(void *a1, uint64_t a2)
{
  if (*(v2 + OBJC_IVAR____TtC13UniversalDrag26PasteboardFileDataProvider_archiveSource))
  {
    v5 = *(v2 + OBJC_IVAR____TtC13UniversalDrag26PasteboardFileDataProvider_archiveSource);

    sub_2706D4274(a1, a2);
  }

  else
  {
    sub_2706DD768();
  }
}

uint64_t sub_2706AD46C()
{
  OUTLINED_FUNCTION_3_4();
  v1 = OBJC_IVAR____TtC13UniversalDrag26PasteboardFileDataProvider_url;
  v2 = sub_2706E565C();
  OUTLINED_FUNCTION_6_0(v2);
  (*(v3 + 8))(v0 + v1);
  v4 = *(v0 + OBJC_IVAR____TtC13UniversalDrag26PasteboardFileDataProvider_archiveSource);

  v5 = *(v0 + OBJC_IVAR____TtC13UniversalDrag26PasteboardFileDataProvider_completions);
}

uint64_t sub_2706AD4F8()
{
  swift_weakDestroy();
  OUTLINED_FUNCTION_3_4();
  v1 = OBJC_IVAR____TtC13UniversalDrag26PasteboardFileDataProvider_url;
  v2 = sub_2706E565C();
  OUTLINED_FUNCTION_6_0(v2);
  (*(v3 + 8))(v0 + v1);
  v4 = *(v0 + OBJC_IVAR____TtC13UniversalDrag26PasteboardFileDataProvider_archiveSource);

  v5 = *(v0 + OBJC_IVAR____TtC13UniversalDrag26PasteboardFileDataProvider_completions);

  return v0;
}

uint64_t sub_2706AD584()
{
  sub_2706AD4F8();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t sub_2706AD604()
{
  result = sub_2706E576C();
  if (v1 <= 0x3F)
  {
    v3 = *(result - 8) + 64;
    result = sub_2706E565C();
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

void sub_2706AD718(void *a1, void *a2, void *a3, void *a4, void *a5)
{
  v10 = type metadata accessor for PasteboardDataTransferID(0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &var58[-1] - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    if (qword_28081C738 != -1)
    {
      swift_once();
    }

    v14 = sub_2706E58DC();
    v15 = __swift_project_value_buffer(v14, qword_2808292F0);
    v16 = v15;
    MEMORY[0x28223BE20](v15);
    *(&v33 - 4) = a2;
    *(&v33 - 3) = a3;
    *(&v33 - 2) = a4;
    v17 = a1;
    sub_270694BF4(sub_2706AE820, (&v33 - 6), v16, a1, v18, v19, v20, v21, v33, var58[0], var58[1], var58[2], var58[3], var58[4], var58[5], var58[6], var58[7], var58[8], var58[9], var58[10], var58[11], var58[12]);
  }

  else
  {
    if (qword_28081C738 != -1)
    {
      swift_once();
    }

    v22 = sub_2706E58DC();
    __swift_project_value_buffer(v22, qword_2808292F0);
    sub_2706AE63C(a2, v13, type metadata accessor for PasteboardDataTransferID);

    v23 = sub_2706E58BC();
    v24 = sub_2706E5BEC();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v33 = a5;
      var58[0] = v26;
      v27 = v26;
      *v25 = 136315394;
      sub_2706E572C();
      v28 = sub_2706B8734(8);
      v29 = MEMORY[0x2743A5EC0](v28);
      v31 = v30;

      sub_2706AE590();
      v32 = sub_2706C83E8(v29, v31, var58);

      *(v25 + 4) = v32;
      *(v25 + 12) = 2082;
      *(v25 + 14) = sub_2706C83E8(a3, a4, var58);
      _os_log_impl(&dword_270680000, v23, v24, "%s %{public}s: Succeeded", v25, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x2743A75B0](v27, -1, -1);
      MEMORY[0x2743A75B0](v25, -1, -1);
    }

    else
    {

      sub_2706AE590();
    }
  }

  sub_2706DD768();
}

uint64_t sub_2706ADA50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_2706E572C();
  v5 = sub_2706B8734(8);
  v6 = MEMORY[0x2743A5EC0](v5);

  MEMORY[0x2743A5EF0](32, 0xE100000000000000);
  MEMORY[0x2743A5EF0](a2, a3);
  MEMORY[0x2743A5EF0](0x64656C696146203ALL, 0xE800000000000000);
  return v6;
}

uint64_t sub_2706ADB08(uint64_t a1, uint64_t a2)
{
  v9[3] = type metadata accessor for PasteboardMessage();
  v9[4] = sub_2706AE5E4();
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v9);
  sub_2706AE63C(a1, boxed_opaque_existential_1, type metadata accessor for PasteboardMessage);
  v5 = sub_2706DA8BC(v9);
  v7 = v6;
  __swift_destroy_boxed_opaque_existential_1(v9);
  sub_270692D3C(v5, v7);
  sub_2706ADC60(v5, v7, a2);
  sub_270688E88(v5, v7);
  return sub_270688E88(v5, v7);
}

uint64_t sub_2706ADC04()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8D8](v0, 24, 7);
}

void sub_2706ADC60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (swift_weakLoadStrong())
  {
    v10[0] = a1;
    v10[1] = a2 | 0x2000000000000000;
    v10[2] = 0;
    v10[3] = 0;

    sub_2706C73B8(v10, sub_270690B0C, a3);
  }

  else
  {
    if (qword_28081C730 != -1)
    {
      swift_once();
    }

    v6 = sub_2706E58DC();
    __swift_project_value_buffer(v6, qword_2808292D8);
    v7 = sub_2706E58BC();
    v8 = sub_2706E5BFC();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_270680000, v7, v8, "DataProvider: no DragController to send pasteboardEvent)", v9, 2u);
      MEMORY[0x2743A75B0](v9, -1, -1);
    }

    sub_2706DD768();
  }
}

uint64_t sub_2706ADDD0()
{
  OUTLINED_FUNCTION_11_4();
  v0 = sub_2706E576C();
  OUTLINED_FUNCTION_16_3(v0);
  v2 = *(v1 + 80);
  v3 = OUTLINED_FUNCTION_13_6();

  return sub_2706AC254(v3, v4, v5, v6, v7, v8);
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_2706ADE58(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081D450, &qword_2706EAA20);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2706ADEC0()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2706ADF00()
{
  if (*(v0 + 16))
  {
    v1 = *(v0 + 24);
  }

  v2 = OUTLINED_FUNCTION_17_2();

  return MEMORY[0x2821FE8E8](v2, v3, v4);
}

uint64_t sub_2706ADF38()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    v2 = *(v0 + 24);
    return v1();
  }

  return result;
}

uint64_t sub_2706ADF70(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081D450, &qword_2706EAA20);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2706ADFE0()
{
  v1 = sub_2706E576C();
  OUTLINED_FUNCTION_2_2(v1);
  v3 = *(v2 + 80);
  v5 = (*(v4 + 64) + ((v3 + 24) & ~v3) + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v0 + 16);

  v8 = OUTLINED_FUNCTION_7_3();
  v9(v8);
  v10 = *(v0 + v5);

  v11 = *(v0 + v6);

  return MEMORY[0x2821FE8E8](v0, v6 + 8, v3 | 7);
}

uint64_t sub_2706AE0B8(void *a1, char a2)
{
  v5 = sub_2706E576C();
  OUTLINED_FUNCTION_5_4(v5);
  v7 = v6;
  v9 = v8;
  v10 = (*(v7 + 80) + 24) & ~*(v7 + 80);
  v11 = *(v9 + 64);
  OUTLINED_FUNCTION_22_1();
  v13 = *(v2 + 16);
  v15 = *(v2 + v14);
  v16 = *(v2 + ((v14 + 15) & 0xFFFFFFFFFFFFFFF8));

  return sub_2706ACA9C(a1, a2 & 1, v13, v2 + v12, v15, v16);
}

uint64_t sub_2706AE164()
{
  v1 = *(v0 + 24);

  v2 = OUTLINED_FUNCTION_17_2();

  return MEMORY[0x2821FE8E8](v2, v3, v4);
}

void sub_2706AE198()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 16);
  sub_2706DD768();
}

id sub_2706AE1C0(id result, char a2)
{
  if (a2)
  {
    return result;
  }

  return result;
}

uint64_t sub_2706AE1CC()
{
  v1 = sub_2706E576C();
  OUTLINED_FUNCTION_2_2(v1);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  v5 = *(v4 + 64);
  v6 = v0[2];

  v7 = v0[3];

  v8 = v0[4];

  v9 = OUTLINED_FUNCTION_7_3();
  v10(v9);
  v11 = OUTLINED_FUNCTION_12_5();

  return MEMORY[0x2821FE8E8](v11, v12, v13);
}

void sub_2706AE280()
{
  OUTLINED_FUNCTION_20_1();
  v2 = sub_2706E576C();
  OUTLINED_FUNCTION_16_3(v2);
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1 + ((*(v3 + 80) + 40) & ~*(v3 + 80));

  sub_2706ACD70(v0, v4, v5, v6, v7);
}

uint64_t objectdestroyTm()
{
  v1 = sub_2706E576C();
  OUTLINED_FUNCTION_2_2(v1);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v5 = *(v4 + 64);
  v6 = *(v0 + 16);

  v7 = OUTLINED_FUNCTION_7_3();
  v8(v7);
  v9 = OUTLINED_FUNCTION_12_5();

  return MEMORY[0x2821FE8E8](v9, v10, v11);
}

uint64_t sub_2706AE394()
{
  OUTLINED_FUNCTION_11_4();
  v0 = sub_2706E576C();
  OUTLINED_FUNCTION_16_3(v0);
  v2 = *(v1 + 80);
  v3 = OUTLINED_FUNCTION_13_6();

  return sub_2706AD00C(v3, v4, v5, v6, v7, v8);
}

uint64_t sub_2706AE404()
{
  v1 = sub_2706E576C();
  OUTLINED_FUNCTION_2_2(v1);
  v3 = *(v2 + 80);
  v5 = (*(v4 + 64) + ((v3 + 24) & ~v3) + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 16);

  v7 = OUTLINED_FUNCTION_7_3();
  v8(v7);
  v9 = *(v0 + v5);

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v3 | 7);
}

void sub_2706AE4C4()
{
  OUTLINED_FUNCTION_20_1();
  v2 = sub_2706E576C();
  OUTLINED_FUNCTION_5_4(v2);
  v4 = v3;
  v6 = v5;
  v7 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v8 = *(v6 + 64);
  OUTLINED_FUNCTION_22_1();
  v10 = *(v1 + 16);
  v12 = *(v1 + v11);

  sub_2706AD0E8(v0, v10, v1 + v9, v12);
}

uint64_t objectdestroy_61Tm()
{
  v1 = *(v0 + 16);

  v2 = OUTLINED_FUNCTION_17_2();

  return MEMORY[0x2821FE8E8](v2, v3, v4);
}

void sub_2706AE588()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  sub_2706AD254();
}

uint64_t sub_2706AE590()
{
  v1 = OUTLINED_FUNCTION_20_1();
  v3 = v2(v1);
  OUTLINED_FUNCTION_6_0(v3);
  (*(v4 + 8))(v0);
  return v0;
}

unint64_t sub_2706AE5E4()
{
  result = qword_28081CA80;
  if (!qword_28081CA80)
  {
    type metadata accessor for PasteboardMessage();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28081CA80);
  }

  return result;
}

uint64_t sub_2706AE63C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  OUTLINED_FUNCTION_6_0(v5);
  (*(v6 + 16))(a2, a1);
  return a2;
}

uint64_t sub_2706AE69C()
{
  v1 = type metadata accessor for PasteboardDataTransferID(0);
  OUTLINED_FUNCTION_5_4(v1);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v6 = (*(v5 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 23) & 0xFFFFFFFFFFFFFFF8;
  v8 = sub_2706E576C();
  OUTLINED_FUNCTION_6_0(v8);
  (*(v9 + 8))(v0 + v4);
  v10 = *(v0 + v6 + 8);

  v11 = *(v0 + v7);

  return MEMORY[0x2821FE8E8](v0, v7 + 8, v3 | 7);
}

void sub_2706AE788()
{
  v2 = OUTLINED_FUNCTION_20_1();
  v3 = type metadata accessor for PasteboardDataTransferID(v2);
  OUTLINED_FUNCTION_5_4(v3);
  v5 = v4;
  v7 = v6;
  v8 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v9 = *(v7 + 64);
  OUTLINED_FUNCTION_22_1();
  v12 = (v11 + 23) & 0xFFFFFFFFFFFFFFF8;
  v13 = v1 + v11;
  v14 = *(v1 + v12);
  v15 = *v13;
  v16 = *(v13 + 8);

  sub_2706AD718(v0, (v1 + v10), v15, v16, v14);
}

uint64_t sub_2706AE82C()
{
  v1 = sub_2706E576C();
  OUTLINED_FUNCTION_2_2(v1);
  v3 = (*(v2 + 80) + 48) & ~*(v2 + 80);
  v5 = *(v4 + 64);
  v6 = v0[2];

  v7 = v0[3];

  sub_270688E88(v0[4], v0[5]);
  v8 = OUTLINED_FUNCTION_7_3();
  v9(v8);
  v10 = OUTLINED_FUNCTION_12_5();

  return MEMORY[0x2821FE8E8](v10, v11, v12);
}

void sub_2706AE8E0()
{
  OUTLINED_FUNCTION_20_1();
  v2 = sub_2706E576C();
  OUTLINED_FUNCTION_16_3(v2);
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1 + ((*(v3 + 80) + 48) & ~*(v3 + 80));

  sub_2706AB2C8(v0, v4, v5, v6, v7, v8);
}

uint64_t sub_2706AE950()
{
  v1 = sub_2706E576C();
  OUTLINED_FUNCTION_2_2(v1);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v5 = *(v4 + 64);
  v6 = *(v0 + 16);

  v7 = *(v0 + 24);

  v8 = OUTLINED_FUNCTION_7_3();
  v9(v8);
  v10 = OUTLINED_FUNCTION_12_5();

  return MEMORY[0x2821FE8E8](v10, v11, v12);
}

void sub_2706AE9FC()
{
  OUTLINED_FUNCTION_20_1();
  v2 = sub_2706E576C();
  OUTLINED_FUNCTION_16_3(v2);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));

  sub_2706AB558(v0, v4, v5, v6);
}

uint64_t OUTLINED_FUNCTION_3_4()
{

  return sub_2706AE590();
}

uint64_t sub_2706AEBAC(int a1, void *a2)
{
  v74 = a2;
  LODWORD(v75) = a1;
  v3 = type metadata accessor for PasteboardDataTransferID(0);
  v68 = *(v3 - 8);
  v4 = *(v68 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v67 = &v57 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081D498, &qword_2706EAD30);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v6 - 8);
  v73 = &v57 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v11 = &v57 - v10;
  v12 = sub_2706E576C();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v71 = &v57 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = v2;
  v16 = sub_270691780();
  result = sub_2706C2200(v16);
  if (result)
  {
    v18 = result;
    if (result < 1)
    {
LABEL_41:
      __break(1u);
      return result;
    }

    v19 = 0;
    do
    {
      if ((v16 & 0xC000000000000001) != 0)
      {
        MEMORY[0x2743A62C0](v19, v16);
      }

      else
      {
        v20 = *(v16 + 8 * v19 + 32);
      }

      v21 = v74;
      v22 = v74;
      if (!v74)
      {
        sub_2706B2CD4();
        v23 = sub_2706E483C(-6723, 0, 0, "/Library/Caches/com.apple.xbs/Sources/UniversalDrag/UniversalDrag/PasteboardController.swift", 92, 2, 456);
        v21 = v74;
        v22 = v23;
      }

      ++v19;
      v24 = v21;
      sub_2706CB498();
    }

    while (v18 != v19);
  }

  result = sub_270691DAC();
  v25 = result;
  v62 = *(result + 16);
  if (v62)
  {
    v26 = 0;
    v64 = result + ((*(v13 + 80) + 32) & ~*(v13 + 80));
    v63 = v13 + 16;
    v70 = "start completed: ";
    v61 = (v13 + 8);
    v27 = v71;
    v60 = v12;
    v59 = v13;
    v58 = result;
    while (1)
    {
      if (v26 >= *(v25 + 16))
      {
        __break(1u);
        goto LABEL_41;
      }

      (*(v13 + 16))(v27, v64 + *(v13 + 72) * v26, v12);
      sub_270691AD0();
      if (v28)
      {
        break;
      }

      result = (*v61)(v27, v12);
LABEL_34:
      if (++v26 == v62)
      {
      }
    }

    v29 = v28;
    v66 = v26;
    swift_beginAccess();
    v65 = v29;
    v30 = *(v29 + 16);
    v33 = *(v30 + 64);
    v32 = v30 + 64;
    v31 = v33;
    v34 = 1 << *(*(v29 + 16) + 32);
    if (v34 < 64)
    {
      v35 = ~(-1 << v34);
    }

    else
    {
      v35 = -1;
    }

    v36 = v35 & v31;
    v37 = (v34 + 63) >> 6;
    v69 = *(v29 + 16);

    v38 = 0;
    while (v36)
    {
      v39 = v38;
LABEL_25:
      v42 = __clz(__rbit64(v36));
      v36 &= v36 - 1;
      v43 = v42 | (v39 << 6);
      v44 = v69;
      v45 = v67;
      sub_270690CD8(*(v69 + 48) + *(v68 + 72) * v43, v67);
      v46 = *(v44 + 56);
      v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081D4A0, &qword_2706EAD38);
      v48 = *(v47 + 48);
      v75 = *(v46 + 16 * v43);
      v41 = v73;
      sub_2706A66AC(v45, v73);
      *(v41 + v48) = v75;
      __swift_storeEnumTagSinglePayload(v41, 0, 1, v47);
      swift_unknownObjectRetain();
      v40 = v74;
LABEL_26:
      sub_2706B2D18(v41, v11);
      v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081D4A0, &qword_2706EAD38);
      if (__swift_getEnumTagSinglePayload(v11, 1, v49) == 1)
      {
        v27 = v71;
        v12 = v60;
        (*v61)(v71, v60);

        v13 = v59;
        v25 = v58;
        v26 = v66;
        goto LABEL_34;
      }

      v50 = &v11[*(v49 + 48)];
      v51 = *v50;
      v52 = v50[1];
      v53 = 0xC000000000000040;
      if (v40)
      {
        v77 = v40;
        v54 = v40;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081D4A8, &qword_2706EAD40);
        if (swift_dynamicCast())
        {
          v53 = v76;
        }
      }

      type metadata accessor for Completion();
      swift_allocObject();
      v55 = sub_2706DD84C();
      sub_2706AF208(v71, v51, v52, v53, v55);

      swift_unknownObjectRelease();
      sub_270688D9C(v53);
      sub_270687394(v11);
    }

    v41 = v73;
    v40 = v74;
    while (1)
    {
      v39 = v38 + 1;
      if (__OFADD__(v38, 1))
      {
        break;
      }

      if (v39 >= v37)
      {
        v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081D4A0, &qword_2706EAD38);
        __swift_storeEnumTagSinglePayload(v41, 1, 1, v56);
        v36 = 0;
        goto LABEL_26;
      }

      v36 = *(v32 + 8 * v39);
      ++v38;
      if (v36)
      {
        v38 = v39;
        goto LABEL_25;
      }
    }

    __break(1u);
  }
}

void sub_2706AF208(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v8 = type metadata accessor for PasteboardDataTransferID(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  ObjectType = swift_getObjectType();
  (*(a3 + 8))(ObjectType, a3);
  sub_270691E80();
  swift_unknownObjectRelease();
  sub_270687394(v11);
  sub_270694B50();
  v13 = swift_allocError();
  *v14 = a4;
  v15 = *(a3 + 24);
  sub_270694BA4(a4);
  v15(v13, a5, ObjectType, a3);
}

uint64_t sub_2706AF348()
{
  v0 = sub_2706E58DC();
  __swift_allocate_value_buffer(v0, qword_280829340);
  v1 = __swift_project_value_buffer(v0, qword_280829340);
  if (qword_28081C730 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_2808292D8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_2706AF410()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081D470, &qword_2706EAD08);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1);
  v4 = &v11 - v3;
  v12 = 0;
  v13 = 0xE000000000000000;
  sub_2706E5E3C();
  MEMORY[0x2743A5EF0](0xD000000000000031, 0x80000002706F07B0);
  v11 = *(v0 + 24);
  swift_unknownObjectRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081D478, &qword_2706EAD10);
  v5 = OUTLINED_FUNCTION_56_0();
  MEMORY[0x2743A5EF0](v5);

  MEMORY[0x2743A5EF0](0x746E65746E6F6320, 0xEA00000000003D73);
  *&v11 = *(v0 + 40);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081D480, &qword_2706EAD18);
  v6 = OUTLINED_FUNCTION_56_0();
  MEMORY[0x2743A5EF0](v6);

  MEMORY[0x2743A5EF0](0x507972746E65202CLL, 0xED00003D746E696FLL);
  v11 = *(v0 + 48);
  type metadata accessor for CGPoint(0);
  v7 = OUTLINED_FUNCTION_56_0();
  MEMORY[0x2743A5EF0](v7);

  MEMORY[0x2743A5EF0](0x3D6469202CLL, 0xE500000000000000);
  sub_2706B28F8(v0 + OBJC_IVAR____TtCC13UniversalDrag24DragSurrogateCoordinator7Context_id, v4);
  v8 = sub_2706E5A4C();
  MEMORY[0x2743A5EF0](v8);

  MEMORY[0x2743A5EF0](0x6E6573657270202CLL, 0xEF3D6E6F69746174);
  *&v11 = *(v0 + OBJC_IVAR____TtCC13UniversalDrag24DragSurrogateCoordinator7Context_presentation);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081D488, &qword_2706EAD20);
  v9 = OUTLINED_FUNCTION_56_0();
  MEMORY[0x2743A5EF0](v9);

  MEMORY[0x2743A5EF0](41, 0xE100000000000000);
  return v12;
}

int64x2_t *sub_2706AF658()
{
  type metadata accessor for Completions();
  v1 = swift_allocObject();
  *(v1 + 16) = MEMORY[0x277D84F90];
  v0[1].i64[0] = v1;
  v0[1].i64[1] = 0;
  v0[2].i64[0] = 0;
  v0[2].i64[1] = 0;
  v2 = OBJC_IVAR____TtCC13UniversalDrag24DragSurrogateCoordinator7Context_id;
  v3 = sub_2706E576C();
  __swift_storeEnumTagSinglePayload(v0->i64 + v2, 1, 1, v3);
  *(v0->i64 + OBJC_IVAR____TtCC13UniversalDrag24DragSurrogateCoordinator7Context_presentation) = 0;
  v0[3] = vdupq_n_s64(0x7FF8000000000000uLL);
  return v0;
}

void *sub_2706AF6DC()
{
  v1 = v0[2];

  v2 = v0[3];
  swift_unknownObjectRelease();
  v3 = v0[5];

  sub_2706B2B70(v0 + OBJC_IVAR____TtCC13UniversalDrag24DragSurrogateCoordinator7Context_id, &qword_28081D470, &qword_2706EAD08);
  v4 = *(v0 + OBJC_IVAR____TtCC13UniversalDrag24DragSurrogateCoordinator7Context_presentation);

  return v0;
}

uint64_t sub_2706AF73C()
{
  sub_2706AF6DC();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

void sub_2706AF7B8(void *a1, char a2)
{
  v3 = v2;
  if (qword_28081C730 != -1)
  {
    swift_once();
  }

  v6 = sub_2706E58DC();
  __swift_project_value_buffer(v6, qword_2808292D8);
  sub_2706B2A58(a1, a2);

  v7 = sub_2706E58BC();
  v8 = sub_2706E5BEC();
  sub_2706B2AC4(a1, a2);

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 136446466;
    v22 = &type metadata for DragSurrogateCoordinator.State;
    v23 = v10;
    v20 = a1;
    v21 = a2;
    sub_2706B2A58(a1, a2);
    v11 = sub_2706CB238(&v20);
    v13 = sub_2706C83E8(v11, v12, &v23);

    *(v9 + 4) = v13;
    *(v9 + 12) = 2082;
    v14 = *(v3 + 40);
    v22 = &type metadata for DragSurrogateCoordinator.State;
    v20 = v14;
    v21 = *(v3 + 48);
    sub_2706B2A58(v14, v21);
    v15 = sub_2706CB238(&v20);
    v17 = sub_2706C83E8(v15, v16, &v23);

    *(v9 + 14) = v17;
    _os_log_impl(&dword_270680000, v7, v8, "DragSurrogateCoordinator: %{public}s → %{public}s", v9, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x2743A75B0](v10, -1, -1);
    MEMORY[0x2743A75B0](v9, -1, -1);
  }

  if (*(v3 + 48) == 6)
  {
    v18 = *(v3 + 56) + 1;
    do
    {
      v19 = v18;
      v18 = 1;
    }

    while (!v19);
    *(v3 + 56) = v19;
  }
}

void sub_2706AF9C8(void *a1, char a2)
{
  v5 = *(v2 + 40);
  *(v2 + 40) = a1;
  v6 = *(v2 + 48);
  *(v2 + 48) = a2;
  sub_2706B2A58(a1, a2);
  sub_2706AF7B8(v5, v6);
  sub_2706B2AC4(v5, v6);

  sub_2706B2AC4(a1, a2);
}

void sub_2706AFA40(void *a1, unint64_t a2, double a3, double a4, double a5)
{
  v7[0] = a1;
  v7[1] = a2;
  *&v7[2] = a3;
  *&v7[3] = a4;
  *&v7[4] = a5;

  sub_2706AFBAC(v7);

  sub_2706911CC(a1, a2);
}

void sub_2706AFAD4(uint64_t a1)
{
  v1 = *(a1 + 8) | 0x2000000000000000;
  v4[0] = *a1;
  v4[1] = v1;
  OUTLINED_FUNCTION_42_0();

  sub_2706AFBAC(v4);
  OUTLINED_FUNCTION_23_2();

  sub_2706911CC(v2, v3);
}

void sub_2706AFB40(uint64_t a1)
{
  v1 = *(a1 + 8) | 0x4000000000000000;
  v4[0] = *a1;
  v4[1] = v1;
  OUTLINED_FUNCTION_42_0();

  sub_2706AFBAC(v4);
  OUTLINED_FUNCTION_23_2();

  sub_2706911CC(v2, v3);
}

void sub_2706AFBAC(unint64_t *a1)
{
  v2 = v1;
  v4 = *a1;
  v3 = a1[1];
  v6 = a1[2];
  v5 = a1[3];
  v7 = a1[4];
  if (qword_28081C730 != -1)
  {
    OUTLINED_FUNCTION_2_0();
  }

  v684 = sub_2706E58DC();
  __swift_project_value_buffer(v684, qword_2808292D8);
  OUTLINED_FUNCTION_26_2();

  v8 = OUTLINED_FUNCTION_43_0();
  sub_2706B29B8(v8, v9);
  v10 = sub_2706E58BC();
  v11 = sub_2706E5BEC();

  v12 = OUTLINED_FUNCTION_43_0();
  sub_2706911CC(v12, v13);
  oslog = v5;
  if (os_log_type_enabled(v10, v11))
  {
    v14 = v7;
    v15 = v6;
    v16 = v4;
    v17 = swift_slowAlloc();
    v674 = swift_slowAlloc();
    v697 = v674;
    *v17 = 136315394;
    v18 = *(v2 + 40);
    v695 = &type metadata for DragSurrogateCoordinator.State;
    *&v693 = v18;
    BYTE8(v693) = *(v2 + 48);
    sub_2706B2A58(v18, SBYTE8(v693));
    v19 = sub_2706CB238(&v693);
    v21 = sub_2706C83E8(v19, v20, &v697);

    *(v17 + 4) = v21;
    *(v17 + 12) = 2080;
    v695 = &type metadata for DragSurrogateCoordinator.Event;
    v22 = swift_allocObject();
    *&v693 = v22;
    v22[2] = v16;
    v22[3] = v3;
    v22[4] = v15;
    v22[5] = v5;
    v22[6] = v14;
    v23 = v3;
    sub_2706B29B8(v16, v3);
    v24 = sub_2706CB238(&v693);
    v32 = OUTLINED_FUNCTION_55_0(v24, v25, v26, v27, v28, v29, v30, v31, v662, v669, v674, v2, v684, oslog);
    v4 = v16;
    v6 = v15;
    v7 = v14;

    *(v17 + 14) = v32;
    v2 = v679;
    _os_log_impl(&dword_270680000, v10, v11, "DragSurrogateCoordinator: %s - %s", v17, 0x16u);
    v3 = v673;
    swift_arrayDestroy();
    OUTLINED_FUNCTION_12_0();
    OUTLINED_FUNCTION_12_0();
  }

  else
  {
    v23 = v3;
  }

  v40 = *(v2 + 40);
  v41 = *(v2 + 48);
  v42 = v23 >> 61;
  switch(*(v2 + 48))
  {
    case 1:
      if (v42 == 1)
      {
        goto LABEL_64;
      }

      if (v42 != 6)
      {
        goto LABEL_380;
      }

      OUTLINED_FUNCTION_46_0();
      OUTLINED_FUNCTION_25_2();
      if (v44 && !(v211 | v4 | v7))
      {
        v213 = OUTLINED_FUNCTION_37_1();
        sub_2706B2A58(v213, v214);
        v215 = off_28081C740;

        if (v215 != -1)
        {
          OUTLINED_FUNCTION_0_5();
          v216 = swift_once();
        }

        OUTLINED_FUNCTION_6_6(v216, qword_280829340, v217, v218, v219, v220, v221, v222, v662, v669, v673, v679, v684);
        v223 = sub_2706E58BC();
        v224 = sub_2706E5C1C();
        if (OUTLINED_FUNCTION_16_6(v224))
        {
          v225 = OUTLINED_FUNCTION_15_0();
          OUTLINED_FUNCTION_18_2(v225);
          OUTLINED_FUNCTION_9_5(&dword_270680000, v226, v227, "DragSurrogateCoordinator: start local drag session");
          OUTLINED_FUNCTION_14_4();
        }

        v228 = OUTLINED_FUNCTION_37_1();
        sub_2706B2A58(v228, v229);
        v230 = OUTLINED_FUNCTION_24_1();
        sub_2706AF9C8(v230, v231);
        if (v40[3])
        {
          v232 = v40[3];
          swift_unknownObjectRetain();
          OUTLINED_FUNCTION_17_3();
          OUTLINED_FUNCTION_15_5();
          v238 = sub_2706B2308(v233, v234, v235, v236, v237);
          sub_27068BE24(v238);
          swift_unknownObjectRelease();
LABEL_191:

          v360 = OUTLINED_FUNCTION_37_1();
          sub_2706B2AC4(v360, v361);
          OUTLINED_FUNCTION_37_1();
          goto LABEL_313;
        }

        goto LABEL_368;
      }

      v338 = v23 == v212 && v4 == 4;
      if (v338 && !(v211 | v7))
      {
        v339 = OUTLINED_FUNCTION_37_1();
        sub_2706B2A58(v339, v340);
        v341 = off_28081C740;

        if (v341 != -1)
        {
          OUTLINED_FUNCTION_0_5();
          v342 = swift_once();
        }

        OUTLINED_FUNCTION_6_6(v342, qword_280829340, v343, v344, v345, v346, v347, v348, v662, v669, v673, v679, v684);
        v349 = sub_2706E58BC();
        v350 = sub_2706E5C1C();
        if (OUTLINED_FUNCTION_16_6(v350))
        {
          v351 = OUTLINED_FUNCTION_15_0();
          OUTLINED_FUNCTION_18_2(v351);
          OUTLINED_FUNCTION_9_5(&dword_270680000, v352, v353, "DragSurrogateCoordinator: cancelling while prepared, but before began");
          OUTLINED_FUNCTION_14_4();
        }

        if (v40[3])
        {
          type metadata accessor for Completion();
          OUTLINED_FUNCTION_21_3();
          swift_allocObject();
          swift_unknownObjectRetain();
          OUTLINED_FUNCTION_17_3();
          sub_2706DD84C();
          sub_27068C52C();

          swift_unknownObjectRelease();
          OUTLINED_FUNCTION_31_3();
          if (swift_unknownObjectWeakLoadStrong())
          {
            v354 = OUTLINED_FUNCTION_26_2();
            sub_2706C7C70(v354, 1);
            swift_unknownObjectRelease();
          }

          OUTLINED_FUNCTION_17_3();
          OUTLINED_FUNCTION_15_5();
          sub_2706B2308(v355, v356, v357, v358, v359);
          sub_2706DD768();
          goto LABEL_191;
        }

        goto LABEL_369;
      }

LABEL_380:

      v697 = sub_2706C8368(57);
      v698 = v646;
      OUTLINED_FUNCTION_7_4();
      OUTLINED_FUNCTION_5_6();
      OUTLINED_FUNCTION_10_5();
      OUTLINED_FUNCTION_13_7();
      OUTLINED_FUNCTION_8_6();
      OUTLINED_FUNCTION_10_5();
      OUTLINED_FUNCTION_34_2();
      i = 305;
      goto LABEL_382;
    case 2:
      switch(v42)
      {
        case 1:
          v73 = off_28081C740;
          v74 = *(v2 + 40);

          if (v73 != -1)
          {
            OUTLINED_FUNCTION_0_5();
            v75 = swift_once();
          }

          v82 = OUTLINED_FUNCTION_53_0(v75, qword_280829340, v76, v77, v78, v79, v80, v81, v662, v669, v673, v679, v684);
          v83 = sub_2706E5C1C();
          if (OUTLINED_FUNCTION_52_0(v83))
          {
            *OUTLINED_FUNCTION_15_0() = 0;
            OUTLINED_FUNCTION_36_1(&dword_270680000, v84, v85, "DragSurrogateCoordinator: set previews (while starting)");
            OUTLINED_FUNCTION_12_0();
          }

          if (*(v40 + OBJC_IVAR____TtCC13UniversalDrag24DragSurrogateCoordinator7Context_presentation))
          {
            OUTLINED_FUNCTION_29_2();

            sub_270695100(&v693);
          }

          if (!v40[3])
          {
            goto LABEL_371;
          }

          OUTLINED_FUNCTION_29_2();
          swift_unknownObjectRetain();
          sub_27068BECC();
          swift_unknownObjectRelease();
          if (v23 == 5)
          {
            goto LABEL_313;
          }

          v86 = v40;
          v87 = v73;
          v88 = sub_2706E58BC();
          v89 = sub_2706E5C1C();
          if (os_log_type_enabled(v88, v89))
          {
            OUTLINED_FUNCTION_29_1();
            v90 = OUTLINED_FUNCTION_38_1();
            v697 = v90;
            *v87 = 136315138;
            v91 = OUTLINED_FUNCTION_50_0(&type metadata for DragBadgeStyle, v663, v669, v673, v679, v684, oslog, v693, *(&v693 + 1), v694, v695);
            v99 = OUTLINED_FUNCTION_55_0(v91, v92, v93, v94, v95, v96, v97, v98, v664, v670, v675, v680, v685, oslogb);

            *(v87 + 4) = v99;
            OUTLINED_FUNCTION_22_3(&dword_270680000, v100, v89, "DragSurrogateCoordinator: set badge style (while starting)%s");
            __swift_destroy_boxed_opaque_existential_1(v90);
            OUTLINED_FUNCTION_14_4();
            OUTLINED_FUNCTION_20_2();
          }

          if (!swift_unknownObjectWeakLoadStrong())
          {
            goto LABEL_313;
          }

          OUTLINED_FUNCTION_41_0();
          sub_2706C7BF4(v2);
          swift_unknownObjectRelease();
          v101 = v86;
          v102 = 2;
          goto LABEL_115;
        case 2:
          if (*(v40 + OBJC_IVAR____TtCC13UniversalDrag24DragSurrogateCoordinator7Context_presentation))
          {
            OUTLINED_FUNCTION_29_2();
            v424 = OUTLINED_FUNCTION_2_3();
            sub_2706B29B8(v424, v425);
            v426 = OUTLINED_FUNCTION_24_1();
            sub_2706B2A58(v426, v427);

            sub_270695100(&v693);
          }

          else
          {
            v575 = OUTLINED_FUNCTION_2_3();
            sub_2706B29B8(v575, v576);
            v577 = OUTLINED_FUNCTION_24_1();
            sub_2706B2A58(v577, v578);
          }

          if (!swift_unknownObjectWeakLoadStrong())
          {
            goto LABEL_312;
          }

          OUTLINED_FUNCTION_54_0();
          OUTLINED_FUNCTION_49_0();
          v694 = 0;
          v695 = 0;
          OUTLINED_FUNCTION_21_3();
          swift_allocObject();
          OUTLINED_FUNCTION_4_6();
          v579 = sub_2706DD84C();
          OUTLINED_FUNCTION_11_5(v579, v580, v581, v582, v583, v584, v585);

          swift_unknownObjectRelease();
          v586 = OUTLINED_FUNCTION_24_1();
          goto LABEL_319;
        case 3:
          v428 = off_28081C740;

          if (v428 != -1)
          {
            OUTLINED_FUNCTION_0_5();
            v429 = swift_once();
          }

          OUTLINED_FUNCTION_6_6(v429, qword_280829340, v430, v431, v432, v433, v434, v435, v662, v669, v673, v2, v684);
          OUTLINED_FUNCTION_27_2(v4);
          v436 = v4;
          v437 = sub_2706E58BC();
          v438 = sub_2706E5C1C();
          if (OUTLINED_FUNCTION_32_2(v438))
          {
            OUTLINED_FUNCTION_29_1();
            v439 = OUTLINED_FUNCTION_39_0();
            *v10 = 138543362;
            v440 = v4;
            v441 = _swift_stdlib_bridgeErrorToNSError();
            *(v10 + 4) = v441;
            *v439 = v441;
            v442 = OUTLINED_FUNCTION_1_7();
            sub_2706911CC(v442, v443);
            v444 = OUTLINED_FUNCTION_1_7();
            sub_2706911CC(v444, v445);
            OUTLINED_FUNCTION_19_6(&dword_270680000, v446, v447, "DragSurrogateCoordinator: failed to create drag session, aka starting failed: %{public}@");
            sub_2706B2B70(v439, &qword_28081D490, &qword_2706EAD28);
            OUTLINED_FUNCTION_14_4();
            OUTLINED_FUNCTION_20_2();
          }

          else
          {

            v543 = OUTLINED_FUNCTION_1_7();
            sub_2706911CC(v543, v544);
            v545 = OUTLINED_FUNCTION_1_7();
            sub_2706911CC(v545, v546);
          }

          *&v693 = v4;
          *(&v693 + 1) = 0xA000000000000000;
          v695 = 0;
          v696 = 0;
          v694 = 0;
          v547 = v4;
          sub_2706AFBAC(&v693);
          v548 = OUTLINED_FUNCTION_24_1();
          sub_2706B2AC4(v548, v549);
          OUTLINED_FUNCTION_23_2();
          sub_2706911CC(v550, v551);
          goto LABEL_325;
        case 5:
          v402 = OUTLINED_FUNCTION_24_1();
          sub_2706B2A58(v402, v403);
          v404 = off_28081C740;

          if (v404 != -1)
          {
            OUTLINED_FUNCTION_0_5();
            v405 = swift_once();
          }

          OUTLINED_FUNCTION_6_6(v405, qword_280829340, v406, v407, v408, v409, v410, v411, v662, v669, v673, v2, v684);
          OUTLINED_FUNCTION_27_2(v4);
          v412 = v4;
          v413 = sub_2706E58BC();
          v414 = sub_2706E5C1C();
          if (OUTLINED_FUNCTION_32_2(v414))
          {
            OUTLINED_FUNCTION_29_1();
            v415 = OUTLINED_FUNCTION_39_0();
            *v10 = 138543362;
            v416 = v4;
            v417 = _swift_stdlib_bridgeErrorToNSError();
            *(v10 + 4) = v417;
            *v415 = v417;
            v418 = OUTLINED_FUNCTION_1_7();
            sub_2706911CC(v418, v419);
            v420 = OUTLINED_FUNCTION_1_7();
            sub_2706911CC(v420, v421);
            OUTLINED_FUNCTION_19_6(&dword_270680000, v422, v423, "DragSurrogateCoordinator: failing local before start completed drag: %{public}@");
            sub_2706B2B70(v415, &qword_28081D490, &qword_2706EAD28);
            OUTLINED_FUNCTION_14_4();
            OUTLINED_FUNCTION_20_2();
          }

          else
          {

            v532 = OUTLINED_FUNCTION_1_7();
            sub_2706911CC(v532, v533);
            v534 = OUTLINED_FUNCTION_1_7();
            sub_2706911CC(v534, v535);
          }

          v536 = v4;
          sub_2706AF9C8(v4, 5);
          if (!v40[3])
          {
            goto LABEL_372;
          }

          v537 = v40[3];
          swift_unknownObjectRetain();
          OUTLINED_FUNCTION_17_3();
          OUTLINED_FUNCTION_23_2();
          goto LABEL_305;
        case 6:
          OUTLINED_FUNCTION_46_0();
          if (v7 || ((OUTLINED_FUNCTION_25_2(), v44) ? (v449 = v4 == 1) : (v449 = 0), !v449 || v448))
          {
            if (!v7)
            {
              OUTLINED_FUNCTION_25_2();
              v553 = v44 && v4 == 3;
              if (v553 && !v552)
              {
                goto LABEL_383;
              }
            }

            if (v7)
            {
              goto LABEL_376;
            }

            OUTLINED_FUNCTION_25_2();
            v555 = v44 && v4 == 4;
            if (!v555 || v554)
            {
              goto LABEL_376;
            }

            v556 = OUTLINED_FUNCTION_24_1();
            sub_2706B2A58(v556, v557);
            v558 = off_28081C740;

            if (v558 != -1)
            {
              OUTLINED_FUNCTION_0_5();
              v559 = swift_once();
            }

            OUTLINED_FUNCTION_6_6(v559, qword_280829340, v560, v561, v562, v563, v564, v565, v662, v669, v673, v679, v684);
            v566 = sub_2706E58BC();
            v567 = sub_2706E5C1C();
            if (OUTLINED_FUNCTION_16_6(v567))
            {
              v568 = OUTLINED_FUNCTION_15_0();
              OUTLINED_FUNCTION_18_2(v568);
              OUTLINED_FUNCTION_9_5(&dword_270680000, v569, v570, "DragSurrogateCoordinator: cancelling local before start complete");
              OUTLINED_FUNCTION_14_4();
            }

            OUTLINED_FUNCTION_31_3();
            if (v40[3])
            {
              v571 = v40[3];
              swift_unknownObjectRetain();
              OUTLINED_FUNCTION_17_3();
              OUTLINED_FUNCTION_15_5();
LABEL_305:
              sub_2706B2308(v538, v539, v540, v541, v542);
              sub_27068C52C();
              swift_unknownObjectRelease();

              v572 = OUTLINED_FUNCTION_24_1();
              sub_2706B2AC4(v572, v573);
              goto LABEL_313;
            }

            goto LABEL_374;
          }

          v450 = off_28081C740;

          if (v450 != -1)
          {
            OUTLINED_FUNCTION_0_5();
            v451 = swift_once();
          }

          OUTLINED_FUNCTION_6_6(v451, qword_280829340, v452, v453, v454, v455, v456, v457, v662, v669, v673, v679, v684);
          v458 = sub_2706E58BC();
          v459 = sub_2706E5C1C();
          if (OUTLINED_FUNCTION_16_6(v459))
          {
            v460 = OUTLINED_FUNCTION_15_0();
            OUTLINED_FUNCTION_18_2(v460);
            OUTLINED_FUNCTION_9_5(&dword_270680000, v461, v462, "DragSurrogateCoordinator: local drag session started");
            OUTLINED_FUNCTION_14_4();
          }

          v463 = OUTLINED_FUNCTION_24_1();
          sub_2706B2A58(v463, v464);
          v465 = OUTLINED_FUNCTION_33_2();
          sub_2706AF9C8(v465, v466);
          if (!swift_unknownObjectWeakLoadStrong())
          {
            goto LABEL_313;
          }

          v693 = xmmword_2706EAA80;
          OUTLINED_FUNCTION_49_0();
          v694 = 0;
          v695 = 0;
          OUTLINED_FUNCTION_21_3();
          swift_allocObject();
          OUTLINED_FUNCTION_4_6();
          v467 = sub_2706DD84C();
          OUTLINED_FUNCTION_11_5(v467, v468, v469, v470, v471, v472, v473);
          swift_unknownObjectRelease();
          v71 = OUTLINED_FUNCTION_24_1();
          break;
        default:
          goto LABEL_376;
      }

      goto LABEL_239;
    case 3:
      switch(v42)
      {
        case 1:
          v474 = off_28081C740;
          v475 = *(v2 + 40);

          if (v474 != -1)
          {
            OUTLINED_FUNCTION_0_5();
            v476 = swift_once();
          }

          v483 = OUTLINED_FUNCTION_53_0(v476, qword_280829340, v477, v478, v479, v480, v481, v482, v662, v669, v673, v679, v684);
          v484 = sub_2706E5C1C();
          if (OUTLINED_FUNCTION_52_0(v484))
          {
            *OUTLINED_FUNCTION_15_0() = 0;
            OUTLINED_FUNCTION_36_1(&dword_270680000, v485, v486, "DragSurrogateCoordinator: update previews while active");
            OUTLINED_FUNCTION_12_0();
          }

          if (*(v40 + OBJC_IVAR____TtCC13UniversalDrag24DragSurrogateCoordinator7Context_presentation))
          {
            OUTLINED_FUNCTION_29_2();

            sub_270695100(&v693);
          }

          if (!v40[3])
          {
            goto LABEL_373;
          }

          OUTLINED_FUNCTION_29_2();
          swift_unknownObjectRetain();
          sub_27068BECC();
          swift_unknownObjectRelease();
          if (v23 == 5)
          {
            goto LABEL_313;
          }

          v487 = v40;
          v488 = v474;
          v489 = sub_2706E58BC();
          v490 = sub_2706E5C1C();
          if (os_log_type_enabled(v489, v490))
          {
            OUTLINED_FUNCTION_29_1();
            v491 = OUTLINED_FUNCTION_38_1();
            v697 = v491;
            *v488 = 136315138;
            v492 = OUTLINED_FUNCTION_50_0(&type metadata for DragBadgeStyle, v667, v669, v673, v679, v684, oslog, v693, *(&v693 + 1), v694, v695);
            v500 = OUTLINED_FUNCTION_55_0(v492, v493, v494, v495, v496, v497, v498, v499, v668, v672, v678, v683, v687, oslogd);

            *(v488 + 4) = v500;
            OUTLINED_FUNCTION_22_3(&dword_270680000, v501, v490, "DragSurrogateCoordinator: set badge style (while active)%s");
            __swift_destroy_boxed_opaque_existential_1(v491);
            OUTLINED_FUNCTION_14_4();
            OUTLINED_FUNCTION_20_2();
          }

          if (!swift_unknownObjectWeakLoadStrong())
          {
            goto LABEL_313;
          }

          OUTLINED_FUNCTION_41_0();
          sub_2706C7BF4(v2);
          swift_unknownObjectRelease();
          v101 = v487;
          v102 = 3;
          goto LABEL_115;
        case 2:
          if (*(v40 + OBJC_IVAR____TtCC13UniversalDrag24DragSurrogateCoordinator7Context_presentation))
          {
            OUTLINED_FUNCTION_29_2();
            v502 = OUTLINED_FUNCTION_2_3();
            sub_2706B29B8(v502, v503);
            v504 = OUTLINED_FUNCTION_33_2();
            sub_2706B2A58(v504, v505);

            sub_270695100(&v693);
          }

          else
          {
            v593 = OUTLINED_FUNCTION_2_3();
            sub_2706B29B8(v593, v594);
            v595 = OUTLINED_FUNCTION_33_2();
            sub_2706B2A58(v595, v596);
          }

          if (!swift_unknownObjectWeakLoadStrong())
          {
            goto LABEL_312;
          }

          OUTLINED_FUNCTION_54_0();
          OUTLINED_FUNCTION_49_0();
          v694 = 0;
          v695 = 0;
          OUTLINED_FUNCTION_21_3();
          swift_allocObject();
          OUTLINED_FUNCTION_4_6();
          v597 = sub_2706DD84C();
          OUTLINED_FUNCTION_11_5(v597, v598, v599, v600, v601, v602, v603);

          swift_unknownObjectRelease();
          v586 = OUTLINED_FUNCTION_33_2();
LABEL_319:
          sub_2706B2AC4(v586, v587);
          sub_2706B2C20(v693, *(&v693 + 1));
          goto LABEL_325;
        case 3:
        case 4:
        case 5:
          v103 = OUTLINED_FUNCTION_3_5();
          sub_2706B29B8(v103, v104);
          v105 = OUTLINED_FUNCTION_33_2();
          v107 = sub_2706B2A58(v105, v106);
          if (off_28081C740 != -1)
          {
            OUTLINED_FUNCTION_0_5();
            v107 = swift_once();
          }

          OUTLINED_FUNCTION_6_6(v107, qword_280829340, v108, v109, v110, v111, v112, v113, v662, v669, v673, v2, v684);
          v114 = OUTLINED_FUNCTION_1_7();
          sub_2706B29B8(v114, v115);
          v116 = OUTLINED_FUNCTION_1_7();
          sub_2706B29B8(v116, v117);
          v118 = sub_2706E58BC();
          v119 = sub_2706E5C1C();
          if (OUTLINED_FUNCTION_32_2(v119))
          {
            OUTLINED_FUNCTION_29_1();
            v120 = OUTLINED_FUNCTION_39_0();
            *v10 = 138543362;
            v121 = OUTLINED_FUNCTION_1_7();
            sub_2706B29B8(v121, v122);
            v123 = _swift_stdlib_bridgeErrorToNSError();
            *(v10 + 4) = v123;
            *v120 = v123;
            v124 = OUTLINED_FUNCTION_1_7();
            sub_2706911CC(v124, v125);
            v126 = OUTLINED_FUNCTION_1_7();
            sub_2706911CC(v126, v127);
            OUTLINED_FUNCTION_19_6(&dword_270680000, v128, v129, "DragSurrogateCoordinator: failing active local drag: %{public}@");
            sub_2706B2B70(v120, &qword_28081D490, &qword_2706EAD28);
            OUTLINED_FUNCTION_14_4();
            OUTLINED_FUNCTION_20_2();
          }

          else
          {

            v328 = OUTLINED_FUNCTION_1_7();
            sub_2706911CC(v328, v329);
            v330 = OUTLINED_FUNCTION_1_7();
            sub_2706911CC(v330, v331);
          }

          v332 = OUTLINED_FUNCTION_1_7();
          sub_2706B29B8(v332, v333);
          sub_2706AF9C8(v4, 5);
          if (!v40[3])
          {
            goto LABEL_366;
          }

          v334 = swift_allocObject();
          *(v334 + 16) = v679;
          *(v334 + 24) = v4;

          swift_unknownObjectRetain();
          v335 = OUTLINED_FUNCTION_17_3();
          sub_2706B2308(v335, v336, 405, v337, v334);

          sub_27068C52C();
          swift_unknownObjectRelease();

          goto LABEL_313;
        case 6:
          OUTLINED_FUNCTION_46_0();
          if (!v7 && ((OUTLINED_FUNCTION_25_2(), v44) ? (v507 = v4 == 1) : (v507 = 0), v507 && !v506) || !v7 && ((OUTLINED_FUNCTION_25_2(), v44) ? (v509 = v4 == 2) : (v509 = 0), v509 && !v508))
          {
            v510 = off_28081C740;

            if (v510 != -1)
            {
              OUTLINED_FUNCTION_0_5();
              v511 = swift_once();
            }

            OUTLINED_FUNCTION_6_6(v511, qword_280829340, v512, v513, v514, v515, v516, v517, v662, v669, v673, v679, v684);
            v518 = sub_2706E58BC();
            v519 = sub_2706E5C1C();
            if (OUTLINED_FUNCTION_16_6(v519))
            {
              v520 = OUTLINED_FUNCTION_15_0();
              OUTLINED_FUNCTION_18_2(v520);
              OUTLINED_FUNCTION_9_5(&dword_270680000, v521, v522, "DragSurrogateCoordinator: active local drag succeeded");
              OUTLINED_FUNCTION_14_4();
            }

            sub_2706DDC70(0);
            sub_2706AF9C8(v40, 4);
            if (swift_unknownObjectWeakLoadStrong())
            {
              v523 = OUTLINED_FUNCTION_26_2();
              sub_2706C7C70(v523, 0);
              swift_unknownObjectRelease();
            }

            if (*(v2 + 49) == 1)
            {
              OUTLINED_FUNCTION_17_3();
              OUTLINED_FUNCTION_15_5();
              v529 = sub_2706B2308(v524, v525, v526, v527, v528);
            }

            else
            {
              type metadata accessor for Completion();
              OUTLINED_FUNCTION_21_3();
              swift_allocObject();
              OUTLINED_FUNCTION_17_3();
              v529 = sub_2706DD84C();
            }

            v604 = v529;
            if (swift_unknownObjectWeakLoadStrong())
            {
              v693 = xmmword_2706EAA50;
              v694 = 0;
              v695 = 0;
              sub_2706C78E8(v2, &v693, v604);
              swift_unknownObjectRelease();
LABEL_324:

              goto LABEL_325;
            }

            sub_2706DD768();
            goto LABEL_338;
          }

          if (!v7)
          {
            OUTLINED_FUNCTION_25_2();
            v618 = v44 && v4 == 3;
            if (v618 && !v617)
            {
              *(v2 + 49) = 1;
              goto LABEL_325;
            }
          }

          if (!v7)
          {
            OUTLINED_FUNCTION_25_2();
            v620 = v44 && v4 == 4;
            if (v620 && !v619)
            {
              v621 = OUTLINED_FUNCTION_33_2();
              sub_2706B2A58(v621, v622);
              v623 = off_28081C740;

              if (v623 != -1)
              {
                OUTLINED_FUNCTION_0_5();
                v624 = swift_once();
              }

              OUTLINED_FUNCTION_6_6(v624, qword_280829340, v625, v626, v627, v628, v629, v630, v662, v669, v673, v679, v684);
              v631 = sub_2706E58BC();
              v632 = sub_2706E5C1C();
              if (OUTLINED_FUNCTION_16_6(v632))
              {
                v633 = OUTLINED_FUNCTION_15_0();
                OUTLINED_FUNCTION_18_2(v633);
                OUTLINED_FUNCTION_9_5(&dword_270680000, v634, v635, "DragSurrogateCoordinator: cancelling active local drag");
                OUTLINED_FUNCTION_14_4();
              }

              OUTLINED_FUNCTION_31_3();
              if (v40[3])
              {

                swift_unknownObjectRetain();
                v636 = OUTLINED_FUNCTION_17_3();
                sub_2706B2308(v636, v637, 395, v638, v2);

                sub_27068C52C();
                swift_unknownObjectRelease();

                v639 = OUTLINED_FUNCTION_33_2();
                sub_2706B2AC4(v639, v640);
                goto LABEL_313;
              }

              goto LABEL_375;
            }
          }

LABEL_379:

          v697 = sub_2706C8368(57);
          v698 = v645;
          OUTLINED_FUNCTION_7_4();
          OUTLINED_FUNCTION_5_6();
          OUTLINED_FUNCTION_10_5();
          OUTLINED_FUNCTION_13_7();
          OUTLINED_FUNCTION_8_6();
          OUTLINED_FUNCTION_10_5();
          OUTLINED_FUNCTION_34_2();
          i = 411;
          break;
        default:
          goto LABEL_379;
      }

      goto LABEL_382;
    case 4:
      switch(v42)
      {
        case 1:
          v362 = off_28081C740;
          v363 = *(v2 + 40);

          if (v362 != -1)
          {
            OUTLINED_FUNCTION_0_5();
            v364 = swift_once();
          }

          OUTLINED_FUNCTION_6_6(v364, qword_280829340, v365, v366, v367, v368, v369, v370, v662, v669, v673, v679, v684);
          v323 = sub_2706E58BC();
          v371 = sub_2706E5C1C();
          if (OUTLINED_FUNCTION_16_6(v371))
          {
            v372 = OUTLINED_FUNCTION_15_0();
            OUTLINED_FUNCTION_18_2(v372);
            OUTLINED_FUNCTION_9_5(&dword_270680000, v373, v374, "DragSurrogateCoordinator: ignoring presentation update received while succeeding");
            OUTLINED_FUNCTION_14_4();
          }

LABEL_172:

          goto LABEL_313;
        case 4:
          goto LABEL_333;
        case 6:
          v160 = oslog | v6;
          if (!v7 && (v23 == 0xC000000000000000 ? (v161 = v4 == 1) : (v161 = 0), v161 && !v160) || !v7 && (v23 == 0xC000000000000000 ? (v162 = v4 == 3) : (v162 = 0), v162 && !v160))
          {
            *(v2 + 49) = 1;
            sub_2706AF9C8(0, 6);
            if (swift_unknownObjectWeakLoadStrong())
            {
              v693 = xmmword_2706EAA50;
              OUTLINED_FUNCTION_49_0();
              v694 = 0;
              v695 = 0;
              OUTLINED_FUNCTION_21_3();
              swift_allocObject();
              OUTLINED_FUNCTION_4_6();
              v163 = sub_2706DD84C();
              OUTLINED_FUNCTION_11_5(v163, v164, v165, v166, v167, v168, v169);

              swift_unknownObjectRelease();
            }

            if (!swift_unknownObjectWeakLoadStrong())
            {
              goto LABEL_325;
            }

            v170 = OUTLINED_FUNCTION_26_2();
            sub_2706C7CF4(v170, 0);
            goto LABEL_161;
          }

          if (!v7)
          {
            v605 = v23 == 0xC000000000000000 && v4 == 4;
            if (v605 && !v160)
            {
LABEL_333:
              if (off_28081C740 != -1)
              {
                OUTLINED_FUNCTION_0_5();
                v33 = swift_once();
              }

              OUTLINED_FUNCTION_6_6(v33, qword_280829340, v34, v35, v36, v37, v38, v39, v662, v669, v673, v679, v684);
              v606 = sub_2706E58BC();
              v607 = sub_2706E5C1C();
              if (OUTLINED_FUNCTION_16_6(v607))
              {
                v608 = OUTLINED_FUNCTION_15_0();
                OUTLINED_FUNCTION_18_2(v608);
                OUTLINED_FUNCTION_9_5(&dword_270680000, v609, v610, "DragSurrogateCoordinator: cancelling while waiting on data for successful drag");
                OUTLINED_FUNCTION_14_4();
              }

              OUTLINED_FUNCTION_31_3();
              OUTLINED_FUNCTION_17_3();
              OUTLINED_FUNCTION_23_2();
              sub_2706B2308(v611, v612, v613, v614, v615);
              sub_2706DD768();
LABEL_338:
              OUTLINED_FUNCTION_12_6();

              return;
            }
          }

          break;
      }

      goto LABEL_101;
    case 5:
      v172 = v42 == 6 && v4 == 1 && v23 == 0xC000000000000000;
      if (!v172 || oslog | v6 | v7)
      {
        goto LABEL_101;
      }

      v284 = v40;
      goto LABEL_152;
    case 6:
      goto LABEL_101;
    case 7:
      if (!v40)
      {
        if (!v42)
        {
          if (off_28081C740 != -1)
          {
            OUTLINED_FUNCTION_0_5();
            v33 = swift_once();
          }

          OUTLINED_FUNCTION_6_6(v33, qword_280829340, v34, v35, v36, v37, v38, v39, v662, v669, v673, v679, v684);
          v262 = sub_2706E58BC();
          v263 = sub_2706E5C1C();
          if (OUTLINED_FUNCTION_16_6(v263))
          {
            v264 = OUTLINED_FUNCTION_15_0();
            OUTLINED_FUNCTION_18_2(v264);
            OUTLINED_FUNCTION_9_5(&dword_270680000, v265, v266, "DragSurrogateCoordinator: prepare local drag");
            OUTLINED_FUNCTION_14_4();
          }

          v267 = type metadata accessor for DragSurrogateCoordinator.Context();
          v268 = *(v267 + 48);
          v269 = *(v267 + 52);
          v270 = swift_allocObject();
          sub_2706AF658();
          v271 = *(v270 + OBJC_IVAR____TtCC13UniversalDrag24DragSurrogateCoordinator7Context_presentation);
          *(v270 + OBJC_IVAR____TtCC13UniversalDrag24DragSurrogateCoordinator7Context_presentation) = v4;

          v272 = v270[5];
          v270[5] = v23;

          v273 = objc_allocWithZone(type metadata accessor for DragSurrogate_iOS(0));
          OUTLINED_FUNCTION_26_2();

          v275 = sub_27068AF78(v274);
          v276 = v270[3];
          v270[3] = v275;
          v270[4] = &off_28806B6E0;
          swift_unknownObjectRelease();
          v270[6] = oslog;
          v270[7] = v7;

          sub_2706AF9C8(v277, 0);
          *(v2 + 49) = 0;
          if (swift_unknownObjectWeakLoadStrong())
          {
            OUTLINED_FUNCTION_26_2();
            sub_2706C7B0C();
            swift_unknownObjectRelease();
          }

          if (v270[3])
          {
            v278 = v270[3];
            swift_unknownObjectRetain();
            OUTLINED_FUNCTION_17_3();
            OUTLINED_FUNCTION_15_5();
            sub_2706B2308(v279, v280, v281, v282, v283);
            sub_27068B0D4();

            swift_unknownObjectRelease();

LABEL_313:
            OUTLINED_FUNCTION_12_6();

            sub_2706B2AC4(v590, v591);
            return;
          }

LABEL_367:
          __break(1u);
LABEL_368:
          __break(1u);
LABEL_369:
          __break(1u);
LABEL_370:
          __break(1u);
LABEL_371:
          __break(1u);
LABEL_372:
          __break(1u);
LABEL_373:
          __break(1u);
LABEL_374:
          __break(1u);
LABEL_375:
          __break(1u);
LABEL_376:

          v697 = sub_2706C8368(57);
          v698 = v641;
          OUTLINED_FUNCTION_7_4();
          OUTLINED_FUNCTION_5_6();
          OUTLINED_FUNCTION_10_5();
          OUTLINED_FUNCTION_13_7();
          OUTLINED_FUNCTION_8_6();
          OUTLINED_FUNCTION_10_5();
          OUTLINED_FUNCTION_34_2();
          i = 350;
          goto LABEL_382;
        }

        v697 = sub_2706C8368(57);
        v698 = v647;
        OUTLINED_FUNCTION_7_4();
        OUTLINED_FUNCTION_5_6();
        OUTLINED_FUNCTION_10_5();
        OUTLINED_FUNCTION_13_7();
        OUTLINED_FUNCTION_8_6();
        OUTLINED_FUNCTION_10_5();
        OUTLINED_FUNCTION_34_2();
        for (i = 254; ; i = 347)
        {
LABEL_382:
          v662 = i;
          sub_2706E5F8C();
          __break(1u);
LABEL_383:
          v648 = off_28081C740;

          if (v648 != -1)
          {
            OUTLINED_FUNCTION_0_5();
            v649 = swift_once();
          }

          OUTLINED_FUNCTION_6_6(v649, qword_280829340, v650, v651, v652, v653, v654, v655, v662, v669, v673, v679, v684);
          v656 = sub_2706E58BC();
          v657 = sub_2706E5C0C();
          if (OUTLINED_FUNCTION_16_6(v657))
          {
            v658 = OUTLINED_FUNCTION_15_0();
            OUTLINED_FUNCTION_18_2(v658);
            OUTLINED_FUNCTION_9_5(&dword_270680000, v659, v660, "DragSurrogateCoordinator: dataSessionFinished before start completed (this is fatal)");
            OUTLINED_FUNCTION_14_4();
          }

          v697 = sub_2706E630C();
          v698 = v661;
          MEMORY[0x2743A5EF0](0xD000000000000051, 0x80000002706F08D0);
          OUTLINED_FUNCTION_5_6();
          OUTLINED_FUNCTION_10_5();
          OUTLINED_FUNCTION_13_7();
          v693 = xmmword_2706EAA70;
          v695 = 0;
          v696 = 0;
          v694 = 0;
          OUTLINED_FUNCTION_10_5();
          OUTLINED_FUNCTION_34_2();
        }
      }

      if (v42 == 1)
      {
        if (off_28081C740 != -1)
        {
          OUTLINED_FUNCTION_0_5();
          v33 = swift_once();
        }

        OUTLINED_FUNCTION_6_6(v33, qword_280829340, v34, v35, v36, v37, v38, v39, v662, v669, v673, v679, v684);
        osloga = sub_2706E58BC();
        v530 = sub_2706E5C1C();
        if (os_log_type_enabled(osloga, v530))
        {
          v531 = OUTLINED_FUNCTION_15_0();
          *v531 = 0;
          _os_log_impl(&dword_270680000, osloga, v530, "DragSurrogateCoordinator: ignoring presentation update received while cancelling", v531, 2u);
          OUTLINED_FUNCTION_20_2();

          goto LABEL_313;
        }

        OUTLINED_FUNCTION_12_6();

        goto LABEL_166;
      }

      if (v42 == 4)
      {
        goto LABEL_325;
      }

      v131 = v42 == 6 && v4 == 1 && v23 == 0xC000000000000000;
      if (v131 && !(oslog | v6 | v7))
      {
        if (off_28081C740 != -1)
        {
          OUTLINED_FUNCTION_0_5();
          v33 = swift_once();
        }

        OUTLINED_FUNCTION_6_6(v33, qword_280829340, v34, v35, v36, v37, v38, v39, v662, v669, v673, v679, v684);
        v132 = sub_2706E58BC();
        v133 = sub_2706E5C1C();
        if (OUTLINED_FUNCTION_16_6(v133))
        {
          v134 = OUTLINED_FUNCTION_15_0();
          OUTLINED_FUNCTION_18_2(v134);
          OUTLINED_FUNCTION_9_5(&dword_270680000, v135, v136, "DragSurrogateCoordinator: local drag cancelled. All done.");
          OUTLINED_FUNCTION_14_4();
        }

        sub_2706AF9C8(1, 6);
        if (swift_unknownObjectWeakLoadStrong())
        {
          v693 = xmmword_2706EAA40;
          OUTLINED_FUNCTION_49_0();
          v694 = 0;
          v695 = 0;
          OUTLINED_FUNCTION_21_3();
          swift_allocObject();
          OUTLINED_FUNCTION_4_6();
          v137 = sub_2706DD84C();
          OUTLINED_FUNCTION_11_5(v137, v138, v139, v140, v141, v142, v143);

          swift_unknownObjectRelease();
        }

        if (swift_unknownObjectWeakLoadStrong())
        {
          v144 = OUTLINED_FUNCTION_26_2();
          sub_2706C7CF4(v144, 1);
          swift_unknownObjectRelease();
        }

        v145 = *(v2 + 32);
        sub_2706AEBAC(0, 0);
        goto LABEL_313;
      }

LABEL_101:
      if (v42 == 1)
      {
        if (v41 == 6)
        {
          v197 = OUTLINED_FUNCTION_44_0();
          v199 = sub_2706B2A58(v197, v198);
          if (off_28081C740 != -1)
          {
            OUTLINED_FUNCTION_0_5();
            v199 = swift_once();
          }

          OUTLINED_FUNCTION_6_6(v199, qword_280829340, v200, v201, v202, v203, v204, v205, v662, v669, v673, v679, v684);
          v206 = sub_2706E58BC();
          v207 = sub_2706E5C1C();
          if (OUTLINED_FUNCTION_16_6(v207))
          {
            v208 = OUTLINED_FUNCTION_15_0();
            OUTLINED_FUNCTION_18_2(v208);
            OUTLINED_FUNCTION_9_5(&dword_270680000, v209, v210, "DragSurrogateCoordinator: ignoring presentation update received while completed");
            OUTLINED_FUNCTION_14_4();
          }

          OUTLINED_FUNCTION_44_0();
          goto LABEL_313;
        }

        if (v41 != 5)
        {
          goto LABEL_377;
        }

        v316 = sub_2706B2A58(*(v2 + 40), 5);
        if (off_28081C740 != -1)
        {
          OUTLINED_FUNCTION_0_5();
          v316 = swift_once();
        }

        OUTLINED_FUNCTION_6_6(v316, qword_280829340, v317, v318, v319, v320, v321, v322, v662, v669, v673, v679, v684);
        v323 = sub_2706E58BC();
        v324 = sub_2706E5C1C();
        if (OUTLINED_FUNCTION_16_6(v324))
        {
          v325 = OUTLINED_FUNCTION_15_0();
          OUTLINED_FUNCTION_18_2(v325);
          OUTLINED_FUNCTION_9_5(&dword_270680000, v326, v327, "DragSurrogateCoordinator: ignoring presentation update received while failing");
          OUTLINED_FUNCTION_14_4();
        }

        goto LABEL_172;
      }

      if (v42 == 5)
      {
        v40 = v4;
LABEL_152:
        v285 = OUTLINED_FUNCTION_2_3();
        v287 = sub_2706B29B8(v285, v286);
        if (off_28081C740 != -1)
        {
          OUTLINED_FUNCTION_0_5();
          v287 = swift_once();
        }

        OUTLINED_FUNCTION_6_6(v287, qword_280829340, v288, v289, v290, v291, v292, v293, v662, v669, v673, v679, v684);
        v294 = v40;
        v295 = v40;
        v296 = sub_2706E58BC();
        v297 = sub_2706E5BFC();
        if (os_log_type_enabled(v296, v297))
        {
          OUTLINED_FUNCTION_29_1();
          v298 = OUTLINED_FUNCTION_39_0();
          *v10 = 138543362;
          v299 = v40;
          v300 = _swift_stdlib_bridgeErrorToNSError();
          *(v10 + 4) = v300;
          *v298 = v300;

          OUTLINED_FUNCTION_22_3(&dword_270680000, v301, v297, "DragSurrogateCoordinator: local drag failed: %{public}@");
          sub_2706B2B70(v298, &qword_28081D490, &qword_2706EAD28);
          OUTLINED_FUNCTION_12_0();
          OUTLINED_FUNCTION_20_2();
        }

        else
        {
        }

        v302 = v40;
        v303 = OUTLINED_FUNCTION_44_0();
        sub_2706AF9C8(v303, v304);
        if (swift_unknownObjectWeakLoadStrong())
        {
          v693 = xmmword_2706EAA60;
          OUTLINED_FUNCTION_49_0();
          v694 = 0;
          v695 = 0;
          OUTLINED_FUNCTION_21_3();
          swift_allocObject();
          OUTLINED_FUNCTION_4_6();
          v305 = sub_2706DD84C();
          OUTLINED_FUNCTION_11_5(v305, v306, v307, v308, v309, v310, v311);

          swift_unknownObjectRelease();
        }

        if (swift_unknownObjectWeakLoadStrong())
        {
          v312 = OUTLINED_FUNCTION_26_2();
          sub_2706C7CF4(v312, v40);

LABEL_161:
          OUTLINED_FUNCTION_12_6();

          swift_unknownObjectRelease();
          return;
        }

        OUTLINED_FUNCTION_12_6();

LABEL_166:

        return;
      }

      if (v42 == 6 && v4 == 4 && v23 == 0xC000000000000000)
      {
        OUTLINED_FUNCTION_46_0();
        if (!(v254 | v7))
        {
          if (v41 != 6)
          {
            goto LABEL_377;
          }

LABEL_325:
          OUTLINED_FUNCTION_12_6();
          return;
        }
      }

      if (v41 != 6)
      {
LABEL_377:
        sub_2706B2A58(v40, v41);
        v697 = sub_2706E630C();
        v698 = v643;
        OUTLINED_FUNCTION_7_4();
        OUTLINED_FUNCTION_5_6();
        OUTLINED_FUNCTION_10_5();
        OUTLINED_FUNCTION_13_7();
        OUTLINED_FUNCTION_8_6();
        OUTLINED_FUNCTION_10_5();
        OUTLINED_FUNCTION_34_2();
        i = 478;
        goto LABEL_382;
      }

      v175 = OUTLINED_FUNCTION_44_0();
      v177 = sub_2706B2A58(v175, v176);
      if (off_28081C740 != -1)
      {
        OUTLINED_FUNCTION_0_5();
        v177 = swift_once();
      }

      OUTLINED_FUNCTION_6_6(v177, qword_280829340, v178, v179, v180, v181, v182, v183, v662, v669, v673, v679, v684);
      OUTLINED_FUNCTION_3_5();
      OUTLINED_FUNCTION_47_0();
      sub_2706B29B8(v184, v185);
      OUTLINED_FUNCTION_3_5();
      OUTLINED_FUNCTION_47_0();
      sub_2706B29B8(v186, v187);
      v188 = sub_2706E58BC();
      v189 = sub_2706E5C1C();
      if (OUTLINED_FUNCTION_32_2(v189))
      {
        OUTLINED_FUNCTION_29_1();
        v681 = OUTLINED_FUNCTION_38_1();
        v697 = v681;
        *v10 = 136446210;
        v695 = &type metadata for DragSurrogateCoordinator.Event;
        v190 = swift_allocObject();
        *&v693 = v190;
        v190[2] = v4;
        v190[3] = v23;
        v190[4] = v6;
        v190[5] = oslog;
        v190[6] = v7;
        OUTLINED_FUNCTION_3_5();
        OUTLINED_FUNCTION_47_0();
        sub_2706B29B8(v191, v192);
        v193 = sub_2706CB238(&v693);
        sub_2706C83E8(v193, v194, &v697);
        OUTLINED_FUNCTION_48_0();

        *(v10 + 4) = v4;
        OUTLINED_FUNCTION_51_0();
        OUTLINED_FUNCTION_51_0();
        OUTLINED_FUNCTION_19_6(&dword_270680000, v195, v196, "DragSurrogateCoordinator: ignoring %{public}s while completed");
        __swift_destroy_boxed_opaque_existential_1(v681);
        OUTLINED_FUNCTION_14_4();
        OUTLINED_FUNCTION_20_2();

        v101 = v40;
        v102 = 6;
LABEL_115:
        sub_2706B2AC4(v101, v102);
        goto LABEL_325;
      }

      v255 = OUTLINED_FUNCTION_44_0();
      sub_2706B2AC4(v255, v256);
      OUTLINED_FUNCTION_3_5();
      OUTLINED_FUNCTION_47_0();
      sub_2706911CC(v257, v258);
      OUTLINED_FUNCTION_3_5();
      OUTLINED_FUNCTION_47_0();
      OUTLINED_FUNCTION_12_6();

      sub_2706911CC(v259, v260);
      return;
    default:
      if (v42 == 1)
      {
LABEL_64:
        v146 = OUTLINED_FUNCTION_2_3();
        sub_2706B29B8(v146, v147);
        v148 = sub_2706B2A58(v40, v41);
        if (off_28081C740 != -1)
        {
          OUTLINED_FUNCTION_0_5();
          v148 = swift_once();
        }

        v155 = OUTLINED_FUNCTION_53_0(v148, qword_280829340, v149, v150, v151, v152, v153, v154, v662, v669, v673, v679, v684);
        v156 = sub_2706E5C1C();
        v679 = v2;
        if (OUTLINED_FUNCTION_52_0(v156))
        {
          OUTLINED_FUNCTION_15_0();
          OUTLINED_FUNCTION_48_0();
          *v157 = 0;
          OUTLINED_FUNCTION_36_1(&dword_270680000, v158, v159, "DragSurrogateCoordinator: set previews");
          v4 = v6;
          v23 = v40;
          OUTLINED_FUNCTION_12_0();
        }

        if (*(v40 + OBJC_IVAR____TtCC13UniversalDrag24DragSurrogateCoordinator7Context_presentation))
        {
          OUTLINED_FUNCTION_29_2();

          sub_270695100(&v693);
        }

        if (v40[3])
        {
          OUTLINED_FUNCTION_29_2();
          swift_unknownObjectRetain();
          sub_27068BECC();
          swift_unknownObjectRelease();
          if (v23 == 5)
          {
LABEL_312:
            v588 = OUTLINED_FUNCTION_2_3();
            sub_2706911CC(v588, v589);
            goto LABEL_313;
          }

          v239 = v3;
          v240 = sub_2706E58BC();
          v241 = sub_2706E5C1C();
          if (OUTLINED_FUNCTION_32_2(v241))
          {
            OUTLINED_FUNCTION_29_1();
            v242 = OUTLINED_FUNCTION_38_1();
            v697 = v242;
            *v239 = 136315138;
            v243 = OUTLINED_FUNCTION_50_0(&type metadata for DragBadgeStyle, v665, v669, v242, v2, v684, oslog, v693, *(&v693 + 1), v694, v695);
            v251 = OUTLINED_FUNCTION_55_0(v243, v244, v245, v246, v247, v248, v249, v250, v666, v671, v676, v682, v40, oslogc);

            *(v239 + 4) = v251;
            sub_2706911CC(v4, v23);
            sub_2706B2AC4(v686, v41);
            OUTLINED_FUNCTION_19_6(&dword_270680000, v252, v253, "DragSurrogateCoordinator: set badge style (while preparing) %s");
            __swift_destroy_boxed_opaque_existential_1(v677);
            OUTLINED_FUNCTION_14_4();
            OUTLINED_FUNCTION_20_2();
          }

          else
          {

            v400 = OUTLINED_FUNCTION_2_3();
            sub_2706911CC(v400, v401);
            sub_2706B2AC4(v40, v41);
          }

          if (swift_unknownObjectWeakLoadStrong())
          {
            OUTLINED_FUNCTION_41_0();
            sub_2706C7BF4(v679);
            swift_unknownObjectRelease();
          }

          goto LABEL_325;
        }

        __break(1u);
LABEL_366:
        __break(1u);
        goto LABEL_367;
      }

      if (v42 != 6)
      {
        goto LABEL_378;
      }

      OUTLINED_FUNCTION_46_0();
      if (v7 || ((OUTLINED_FUNCTION_25_2(), v44) ? (v44 = v4 == 1) : (v44 = 0), !v44 || v43))
      {
        if (v7 || ((OUTLINED_FUNCTION_25_2(), v44) ? (v376 = v4 == 4) : (v376 = 0), !v376 || v375))
        {
LABEL_378:

          v697 = sub_2706C8368(57);
          v698 = v644;
          OUTLINED_FUNCTION_7_4();
          OUTLINED_FUNCTION_5_6();
          OUTLINED_FUNCTION_10_5();
          OUTLINED_FUNCTION_13_7();
          OUTLINED_FUNCTION_8_6();
          OUTLINED_FUNCTION_10_5();
          OUTLINED_FUNCTION_34_2();
          i = 283;
          goto LABEL_382;
        }

        v377 = OUTLINED_FUNCTION_45_0();
        sub_2706B2A58(v377, v378);
        v379 = off_28081C740;

        if (v379 != -1)
        {
          OUTLINED_FUNCTION_0_5();
          v380 = swift_once();
        }

        OUTLINED_FUNCTION_6_6(v380, qword_280829340, v381, v382, v383, v384, v385, v386, v662, v669, v673, v679, v684);
        v387 = sub_2706E58BC();
        v388 = sub_2706E5C1C();
        if (OUTLINED_FUNCTION_16_6(v388))
        {
          v389 = OUTLINED_FUNCTION_15_0();
          OUTLINED_FUNCTION_18_2(v389);
          OUTLINED_FUNCTION_9_5(&dword_270680000, v390, v391, "DragSurrogateCoordinator: cancelling while still preparing");
          OUTLINED_FUNCTION_14_4();
        }

        if (!v40[3])
        {
          goto LABEL_370;
        }

        type metadata accessor for Completion();
        OUTLINED_FUNCTION_21_3();
        swift_allocObject();
        swift_unknownObjectRetain();
        OUTLINED_FUNCTION_17_3();
        sub_2706DD84C();
        sub_27068C52C();

        swift_unknownObjectRelease();
        OUTLINED_FUNCTION_31_3();
        if (swift_unknownObjectWeakLoadStrong())
        {
          v392 = OUTLINED_FUNCTION_26_2();
          sub_2706C7C70(v392, 1);
          swift_unknownObjectRelease();
        }

        OUTLINED_FUNCTION_17_3();
        OUTLINED_FUNCTION_15_5();
        sub_2706B2308(v393, v394, v395, v396, v397);
        sub_2706DD768();

        v398 = OUTLINED_FUNCTION_45_0();
        sub_2706B2AC4(v398, v399);
      }

      else
      {
        v45 = off_28081C740;

        if (v45 != -1)
        {
          OUTLINED_FUNCTION_0_5();
          v46 = swift_once();
        }

        OUTLINED_FUNCTION_6_6(v46, qword_280829340, v47, v48, v49, v50, v51, v52, v662, v669, v673, v679, v684);
        v53 = sub_2706E58BC();
        v54 = sub_2706E5C1C();
        if (OUTLINED_FUNCTION_16_6(v54))
        {
          v55 = OUTLINED_FUNCTION_15_0();
          OUTLINED_FUNCTION_18_2(v55);
          OUTLINED_FUNCTION_9_5(&dword_270680000, v56, v57, "DragSurrogateCoordinator: prepared for local drag");
          OUTLINED_FUNCTION_14_4();
        }

        v58 = OUTLINED_FUNCTION_45_0();
        sub_2706B2A58(v58, v59);
        v60 = OUTLINED_FUNCTION_37_1();
        sub_2706AF9C8(v60, v61);
        if (swift_unknownObjectWeakLoadStrong())
        {
          v62 = v40[6];
          v63 = v40[7];
          sub_2706C7B80();
          swift_unknownObjectRelease();
        }

        if (swift_unknownObjectWeakLoadStrong())
        {
          v693 = xmmword_2706EAA50;
          OUTLINED_FUNCTION_49_0();
          v694 = 0;
          v695 = 0;
          OUTLINED_FUNCTION_21_3();
          swift_allocObject();
          OUTLINED_FUNCTION_4_6();
          v64 = sub_2706DD84C();
          OUTLINED_FUNCTION_11_5(v64, v65, v66, v67, v68, v69, v70);
          swift_unknownObjectRelease();
          v71 = OUTLINED_FUNCTION_45_0();
LABEL_239:
          sub_2706B2AC4(v71, v72);
          goto LABEL_324;
        }
      }

      OUTLINED_FUNCTION_45_0();
      goto LABEL_313;
  }
}

uint64_t sub_2706B2158(uint64_t a1)
{
  if (swift_unknownObjectWeakLoadStrong())
  {
    sub_2706C7C70(a1, 1);
    swift_unknownObjectRelease();
  }

  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v4 = xmmword_2706EAA40;
    type metadata accessor for Completion();
    v5 = 0;
    v6 = 0;
    swift_allocObject();
    v3 = sub_2706DD84C();
    sub_2706C78E8(a1, &v4, v3);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_2706B222C(uint64_t a1, uint64_t a2)
{
  if (swift_unknownObjectWeakLoadStrong())
  {
    sub_2706C7C70(a1, a2);
    swift_unknownObjectRelease();
  }

  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v6 = xmmword_2706EAA60;
    type metadata accessor for Completion();
    v7 = 0;
    v8 = 0;
    swift_allocObject();
    v5 = sub_2706DD84C();
    sub_2706C78E8(a1, &v6, v5);

    return swift_unknownObjectRelease();
  }

  return result;
}

void *sub_2706B2308(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = *(v5 + 56);
  OUTLINED_FUNCTION_21_3();
  v12 = swift_allocObject();
  v12[2] = v11;
  v12[3] = v5;
  v12[4] = a4;
  v12[5] = a5;
  type metadata accessor for Completion();
  OUTLINED_FUNCTION_21_3();
  swift_allocObject();

  sub_2706A5AA4(a4);

  return sub_2706DD8C4(a1, a2, a3, sub_2706B29AC, v12);
}

void sub_2706B23CC(id a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  if (*(a3 + 56) == a2)
  {
    v14 = v4;
    v15 = v5;
    if (a4)
    {

      a4(v8);
      sub_27068F6BC(a4);
    }

    if (a1)
    {
      *&v10 = a1;
      *(&v10 + 1) = 0xA000000000000000;
      v12 = 0;
      v13 = 0;
      v11 = 0;
      v9 = a1;
      sub_2706AFBAC(&v10);
      sub_2706911CC(a1, 0xA000000000000000);
    }

    else
    {
      v10 = xmmword_2706EAA90;
      v12 = 0;
      v13 = 0;
      v11 = 0;
      sub_2706AFBAC(&v10);
    }
  }
}

uint64_t sub_2706B249C()
{
  sub_2706A59B4(v0 + 16);
  v1 = *(v0 + 32);

  sub_2706B2AC4(*(v0 + 40), *(v0 + 48));
  return v0;
}

uint64_t sub_2706B24D0()
{
  sub_2706B249C();

  return MEMORY[0x2821FE8D8](v0, 64, 7);
}

uint64_t type metadata accessor for DragSurrogateCoordinator.Context()
{
  result = qword_28081D458;
  if (!qword_28081D458)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2706B257C()
{
  sub_2706B2638();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_2706B2638()
{
  if (!qword_28081D468)
  {
    sub_2706E576C();
    v0 = sub_2706E5D3C();
    if (!v1)
    {
      atomic_store(v0, &qword_28081D468);
    }
  }
}

uint64_t get_enum_tag_for_layout_string_13UniversalDrag0B18SurrogateEndResultO(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t get_enum_tag_for_layout_string_13UniversalDrag0B20SurrogateCoordinatorC5State33_DDC46C3D7E166109DBFCFBCF68CE4670LLO(uint64_t a1)
{
  if ((*(a1 + 8) & 7) == 7)
  {
    return (*a1 + 7);
  }

  else
  {
    return *(a1 + 8) & 7;
  }
}

uint64_t sub_2706B26C4(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xF9 && *(a1 + 9))
    {
      v2 = *a1 + 248;
    }

    else
    {
      v3 = *(a1 + 8);
      if (v3 <= 7)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2706B2704(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF8)
  {
    *(result + 8) = 0;
    *result = a2 - 249;
    if (a3 >= 0xF9)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xF9)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t sub_2706B2748(uint64_t result, unsigned int a2)
{
  if (a2 >= 7)
  {
    *result = a2 - 7;
    LOBYTE(a2) = 7;
  }

  *(result + 8) = a2;
  return result;
}

void sub_2706B2770(uint64_t a1, void *a2)
{
  if (qword_28081C730 != -1)
  {
    OUTLINED_FUNCTION_2_0();
  }

  v3 = sub_2706E58DC();
  __swift_project_value_buffer(v3, qword_2808292D8);
  v4 = a2;
  v5 = sub_2706E58BC();
  v6 = sub_2706E5BEC();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = OUTLINED_FUNCTION_29_1();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    if (a2)
    {
      v9 = a2;
      v10 = _swift_stdlib_bridgeErrorToNSError();
      v11 = v10;
    }

    else
    {
      v10 = 0;
      v11 = 0;
    }

    *(v7 + 4) = v10;
    *v8 = v11;
    _os_log_impl(&dword_270680000, v5, v6, "DragSurrogate: dataSessionDidFinish: %@", v7, 0xCu);
    sub_2706B2B70(v8, &qword_28081D490, &qword_2706EAD28);
    OUTLINED_FUNCTION_12_0();
    OUTLINED_FUNCTION_12_0();
  }

  v12 = 3;
  if (a2)
  {
    v12 = a2;
  }

  v13 = 0x8000000000000000;
  if (!a2)
  {
    v13 = 0xC000000000000000;
  }

  v15[0] = v12;
  v15[1] = v13;
  v14 = OUTLINED_FUNCTION_42_0();
  sub_2706AFBAC(v15);
}

uint64_t sub_2706B28F8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081D470, &qword_2706EAD08);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2706B2968()
{
  v1 = v0[3];

  if (v0[4])
  {
    v2 = v0[5];
  }

  OUTLINED_FUNCTION_21_3();

  return MEMORY[0x2821FE8E8](v3, v4, v5);
}

id sub_2706B29B8(id result, unint64_t a2)
{
  switch(a2 >> 61)
  {
    case 0uLL:

      break;
    case 1uLL:
    case 2uLL:

      break;
    case 3uLL:
    case 4uLL:
    case 5uLL:

      result = result;
      break;
    default:
      return result;
  }

  return result;
}

id sub_2706B2A58(id result, char a2)
{
  switch(a2)
  {
    case 0:
    case 1:
    case 2:
    case 3:
    case 4:

      break;
    case 5:
      result = result;
      break;
    case 6:
      result = sub_2706B2AB4(result);
      break;
    default:
      return result;
  }

  return result;
}

id sub_2706B2AB4(id result)
{
  if (result >= 2)
  {
    return result;
  }

  return result;
}

void sub_2706B2AC4(void *a1, char a2)
{
  switch(a2)
  {
    case 0:
    case 1:
    case 2:
    case 3:
    case 4:

      break;
    case 5:

      break;
    case 6:
      sub_2706B2B20(a1);
      break;
    default:
      return;
  }
}

void sub_2706B2B20(id a1)
{
  if (a1 >= 2)
  {
  }
}

uint64_t sub_2706B2B30()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  v3 = *(v0 + 48);
  sub_2706911CC(*(v0 + 16), *(v0 + 24));

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_2706B2B70(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_2706B2BD0()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2706B2C20(uint64_t result, unint64_t a2)
{
  switch((a2 >> 60) & 3)
  {
    case 1uLL:

      break;
    case 2uLL:
      v2 = a2 & 0xCFFFFFFFFFFFFFFFLL;

      result = sub_270688E88(result, v2);
      break;
    case 3uLL:
      return result;
    default:

      break;
  }

  return result;
}

unint64_t sub_2706B2CD4()
{
  result = qword_28081D250;
  if (!qword_28081D250)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_28081D250);
  }

  return result;
}

uint64_t sub_2706B2D18(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081D498, &qword_2706EAD30);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t get_enum_tag_for_layout_string_13UniversalDrag0B20SurrogateCoordinatorC5EventO(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >> 62 == 3)
  {
    return (*a1 + 6);
  }

  else
  {
    return v1 >> 61;
  }
}

__n128 __swift_memcpy40_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_2706B2DBC(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xA && *(a1 + 40))
    {
      v2 = *a1 + 9;
    }

    else
    {
      v2 = (((*(a1 + 8) >> 60) >> 1) & 0xFFFFFFF7 | (8 * ((*(a1 + 8) & 0x1000000000000000) != 0))) ^ 0xF;
      if (v2 >= 9)
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

uint64_t sub_2706B2E08(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 9)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 - 10;
    if (a3 >= 0xA)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 >= 0xA)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = (((-a2 >> 3) & 1) - 2 * a2) << 60;
      *(result + 24) = 0;
      *(result + 32) = 0;
      *(result + 16) = 0;
    }
  }

  return result;
}

void *sub_2706B2E78(void *result, uint64_t a2)
{
  if (a2 < 6)
  {
    result[1] = result[1] & 0xFFFFFFFFFFFFFFFLL | (a2 << 61);
  }

  else
  {
    *result = (a2 - 6);
    result[1] = 0xC000000000000000;
    result[3] = 0;
    result[4] = 0;
    result[2] = 0;
  }

  return result;
}

uint64_t sub_2706B2EB8(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 8))
  {
    return (*a1 + 2147483646);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 1;
  if (v4 >= 3)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2706B2F0C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *result = 0;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

void *sub_2706B2F68(void *result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = a2 - 1;
  }

  *result = v2;
  return result;
}

void OUTLINED_FUNCTION_7_4()
{

  JUMPOUT(0x2743A5EF0);
}

void OUTLINED_FUNCTION_9_5(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

uint64_t OUTLINED_FUNCTION_10_5()
{

  return sub_2706E5F2C();
}

uint64_t OUTLINED_FUNCTION_11_5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);

  return sub_2706C78E8(v7, va, a1);
}

void OUTLINED_FUNCTION_13_7()
{

  JUMPOUT(0x2743A5EF0);
}

void OUTLINED_FUNCTION_14_4()
{

  JUMPOUT(0x2743A75B0);
}

BOOL OUTLINED_FUNCTION_16_6(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

void OUTLINED_FUNCTION_19_6(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v6, a4, v5, 0xCu);
}

void OUTLINED_FUNCTION_20_2()
{

  JUMPOUT(0x2743A75B0);
}

void OUTLINED_FUNCTION_22_3(void *a1, uint64_t a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, v4, a3, a4, v5, 0xCu);
}

id OUTLINED_FUNCTION_27_2(void *a1)
{

  return sub_2706B29B8(a1, v1);
}

void OUTLINED_FUNCTION_31_3()
{

  sub_2706AF9C8(1, 7);
}

BOOL OUTLINED_FUNCTION_32_2(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

void OUTLINED_FUNCTION_36_1(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

uint64_t OUTLINED_FUNCTION_38_1()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_39_0()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_49_0()
{

  return type metadata accessor for Completion();
}

uint64_t OUTLINED_FUNCTION_50_0@<X0>(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  a11 = a1;
  LOBYTE(a8) = v11;

  return sub_2706CB238(&a8);
}

void OUTLINED_FUNCTION_51_0()
{

  sub_2706911CC(v1, v0);
}

BOOL OUTLINED_FUNCTION_52_0(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t OUTLINED_FUNCTION_53_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  __swift_project_value_buffer(a13, a2);

  return sub_2706E58BC();
}

uint64_t OUTLINED_FUNCTION_55_0(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);

  return sub_2706C83E8(a1, a2, va);
}

uint64_t OUTLINED_FUNCTION_56_0()
{

  return sub_2706E5A4C();
}

uint64_t sub_2706B3488(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 48))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_2706B34C8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2706B3524()
{
  v1 = sub_270690D44(0, &qword_28081D4C8, 0x277CBEAC0);
  sub_2706B462C((v0 + 2), v9);
  if (swift_dynamicCast())
  {
    return v8;
  }

  v3 = sub_2706E5E8C();
  swift_allocError();
  v5 = v4;
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081C988, &qword_2706E7F10) + 48);
  *v5 = v1;
  v7 = *v0;

  sub_2706E5E6C();
  (*(*(v3 - 8) + 104))(v5, *MEMORY[0x277D84160], v3);
  return swift_willThrow();
}

uint64_t sub_2706B3650()
{
  result = sub_2706B3524();
  if (!v1)
  {
    v3 = *v0;
    type metadata accessor for PropertyListTypeDecoder.KeyedDecoder();

    swift_getWitnessTable();
    return sub_2706E607C();
  }

  return result;
}

uint64_t sub_2706B36F8@<X0>(void *a1@<X8>)
{
  v3 = sub_270690D44(0, &qword_28081D4B8, 0x277CBEA60);
  sub_2706B462C((v1 + 2), v12);
  if (swift_dynamicCast())
  {
    v4 = v12[5];
    v5 = *v1;
    a1[3] = &type metadata for PropertyListTypeDecoder.UnkeyedDecoder;
    a1[4] = sub_2706B4688();
    *a1 = v5;
    a1[1] = 0;
    a1[2] = v4;
  }

  else
  {
    v7 = sub_2706E5E8C();
    swift_allocError();
    v9 = v8;
    v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081C988, &qword_2706E7F10) + 48);
    *v9 = v3;
    v11 = *v1;

    sub_2706E5E6C();
    (*(*(v7 - 8) + 104))(v9, *MEMORY[0x277D84160], v7);
    return swift_willThrow();
  }
}

uint64_t sub_2706B3858@<X0>(uint64_t *a1@<X8>)
{
  a1[3] = &type metadata for PropertyListTypeDecoder.RootDecoder;
  a1[4] = sub_2706B4558();
  v3 = swift_allocObject();
  *a1 = v3;
  return sub_2706B45F4(v1, v3 + 16);
}

uint64_t sub_2706B38B8()
{
  v1 = sub_270690D44(0, qword_28081D4E0, 0x277CBEB68);
  sub_2706B462C((v0 + 2), v11);
  v2 = swift_dynamicCast();
  if (v2)
  {
  }

  else
  {
    v3 = sub_2706E5E8C();
    v4 = swift_allocError();
    v6 = v5;
    v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081C988, &qword_2706E7F10) + 48);
    *v6 = v1;
    v8 = *v0;

    sub_2706E5E6C();
    (*(*(v3 - 8) + 104))(v6, *MEMORY[0x277D84160], v3);
    swift_willThrow();
  }

  return v2;
}

uint64_t sub_2706B3A00()
{
  sub_2706B462C((v0 + 2), v10);
  v1 = MEMORY[0x277D839B0];
  if (swift_dynamicCast())
  {
    v2 = v9;
  }

  else
  {
    v3 = sub_2706E5E8C();
    swift_allocError();
    v5 = v4;
    v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081C988, &qword_2706E7F10) + 48);
    *v5 = v1;
    v7 = *v0;

    sub_2706E5E6C();
    (*(*(v3 - 8) + 104))(v5, *MEMORY[0x277D84160], v3);
    swift_willThrow();
  }

  return v2 & 1;
}

uint64_t sub_2706B3B1C()
{
  sub_2706B462C((v0 + 2), v9);
  v1 = MEMORY[0x277D837D0];
  if (swift_dynamicCast())
  {
    return v8;
  }

  v3 = sub_2706E5E8C();
  swift_allocError();
  v5 = v4;
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081C988, &qword_2706E7F10) + 48);
  *v5 = v1;
  v7 = *v0;

  sub_2706E5E6C();
  (*(*(v3 - 8) + 104))(v5, *MEMORY[0x277D84160], v3);
  return swift_willThrow();
}

uint64_t sub_2706B3C34()
{
  sub_2706B462C((v0 + 2), v8);
  v1 = MEMORY[0x277D839F8];
  result = swift_dynamicCast();
  if ((result & 1) == 0)
  {
    v3 = sub_2706E5E8C();
    swift_allocError();
    v5 = v4;
    v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081C988, &qword_2706E7F10) + 48);
    *v5 = v1;
    v7 = *v0;

    sub_2706E5E6C();
    (*(*(v3 - 8) + 104))(v5, *MEMORY[0x277D84160], v3);
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_2706B3D4C()
{
  sub_2706B462C((v0 + 2), v8);
  v1 = MEMORY[0x277D83A90];
  result = swift_dynamicCast();
  if ((result & 1) == 0)
  {
    v3 = sub_2706E5E8C();
    swift_allocError();
    v5 = v4;
    v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081C988, &qword_2706E7F10) + 48);
    *v5 = v1;
    v7 = *v0;

    sub_2706E5E6C();
    (*(*(v3 - 8) + 104))(v5, *MEMORY[0x277D84160], v3);
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_2706B3E64(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_7_5(a1, a2);
  if (OUTLINED_FUNCTION_6_7())
  {
    return v10;
  }

  v3 = sub_2706E5E8C();
  OUTLINED_FUNCTION_11_6();
  OUTLINED_FUNCTION_20_3();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081C988, &qword_2706E7F10);
  OUTLINED_FUNCTION_12_7(v4);
  OUTLINED_FUNCTION_8_7();
  v5 = *MEMORY[0x277D84160];
  OUTLINED_FUNCTION_16(v3);
  v7 = *(v6 + 104);
  v8 = OUTLINED_FUNCTION_17_4();
  v9(v8);
  return swift_willThrow();
}

uint64_t sub_2706B3F28(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_7_5(a1, a2);
  if (OUTLINED_FUNCTION_6_7())
  {
    return v10;
  }

  v3 = sub_2706E5E8C();
  OUTLINED_FUNCTION_11_6();
  OUTLINED_FUNCTION_20_3();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081C988, &qword_2706E7F10);
  OUTLINED_FUNCTION_12_7(v4);
  OUTLINED_FUNCTION_8_7();
  v5 = *MEMORY[0x277D84160];
  OUTLINED_FUNCTION_16(v3);
  v7 = *(v6 + 104);
  v8 = OUTLINED_FUNCTION_17_4();
  v9(v8);
  return swift_willThrow();
}

uint64_t sub_2706B3FEC(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_7_5(a1, a2);
  if (OUTLINED_FUNCTION_6_7())
  {
    return v10;
  }

  v3 = sub_2706E5E8C();
  OUTLINED_FUNCTION_11_6();
  OUTLINED_FUNCTION_20_3();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081C988, &qword_2706E7F10);
  OUTLINED_FUNCTION_12_7(v4);
  OUTLINED_FUNCTION_8_7();
  v5 = *MEMORY[0x277D84160];
  OUTLINED_FUNCTION_16(v3);
  v7 = *(v6 + 104);
  v8 = OUTLINED_FUNCTION_17_4();
  v9(v8);
  return swift_willThrow();
}

uint64_t sub_2706B40B0(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_7_5(a1, a2);
  if (OUTLINED_FUNCTION_6_7())
  {
    return v10;
  }

  v3 = sub_2706E5E8C();
  OUTLINED_FUNCTION_11_6();
  OUTLINED_FUNCTION_20_3();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081C988, &qword_2706E7F10);
  OUTLINED_FUNCTION_12_7(v4);
  OUTLINED_FUNCTION_8_7();
  v5 = *MEMORY[0x277D84160];
  OUTLINED_FUNCTION_16(v3);
  v7 = *(v6 + 104);
  v8 = OUTLINED_FUNCTION_17_4();
  v9(v8);
  return swift_willThrow();
}

uint64_t sub_2706B4174(uint64_t a1)
{
  sub_2706B462C((v1 + 2), v10);
  if (a1 == MEMORY[0x277CC9318] && (sub_2706B462C(v10, &v8), sub_270690D44(0, &qword_28081D4D8, 0x277CBEA90), (swift_dynamicCast() & 1) != 0))
  {

    sub_270690AAC(v10, &v8);
    return swift_dynamicCast();
  }

  else
  {
    v4 = *v1;
    sub_2706B462C(v10, &v9);
    sub_2706E5F3C();

    v5 = sub_2706E59AC();
    *&v8 = v4;
    *(&v8 + 1) = v5;
    sub_2706B46F4();
    v7 = swift_allocObject();
    sub_2706B45F4(&v8, v7 + 16);
    sub_2706E5B7C();
    sub_2706B4748(&v8);
    return __swift_destroy_boxed_opaque_existential_1(v10);
  }
}

unint64_t sub_2706B4558()
{
  result = qword_28081D4B0;
  if (!qword_28081D4B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28081D4B0);
  }

  return result;
}

uint64_t sub_2706B45AC()
{
  v1 = v0[2];

  v2 = v0[3];

  __swift_destroy_boxed_opaque_existential_1(v0 + 4);

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_2706B462C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

unint64_t sub_2706B4688()
{
  result = qword_28081D4C0;
  if (!qword_28081D4C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28081D4C0);
  }

  return result;
}

unint64_t sub_2706B46F4()
{
  result = qword_28081D4D0;
  if (!qword_28081D4D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28081D4D0);
  }

  return result;
}

uint64_t sub_2706B4778()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_2706B47C0(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 16))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_2706B4800(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_2706B4850(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 24))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_2706B4890(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t sub_2706B48E8(int a1, id a2)
{
  v2 = [a2 allKeys];
  sub_2706E5B1C();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081D588, &qword_2706EB390);
  sub_2706B8380();
  v3 = sub_2706E5AEC();

  return v3;
}

uint64_t sub_2706B49C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  sub_2706B462C(a1, v6);
  if (swift_dynamicCast())
  {
    sub_2706E66DC();
  }

  else if (swift_dynamicCast())
  {
    sub_2706E66EC();
  }

  else
  {
    __swift_storeEnumTagSinglePayload(a3, 1, 1, a2);
  }

  return __swift_destroy_boxed_opaque_existential_1(v6);
}

uint64_t sub_2706B4A9C()
{

  return sub_2706E5E6C();
}

uint64_t sub_2706B4B04@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v31 = a2;
  v34 = a3;
  v30 = a8;
  v13 = sub_2706E5D3C();
  v29 = *(v13 - 8);
  v14 = *(v29 + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v29 - v15;
  *&v32[0] = sub_2706E66CC();
  *(&v32[0] + 1) = v17;
  v18 = [a4 __swift_objectForKeyedSubscript_];
  swift_unknownObjectRelease();
  if (v18)
  {
    sub_2706E5D6C();
    swift_unknownObjectRelease();
    sub_270690AAC(v32, v33);
    sub_2706B462C(v33, v32);
    if (swift_dynamicCast())
    {
      __swift_destroy_boxed_opaque_existential_1(v33);
      __swift_storeEnumTagSinglePayload(v16, 0, 1, a6);
      return (*(*(a6 - 8) + 32))(v30, v16, a6);
    }

    else
    {
      __swift_storeEnumTagSinglePayload(v16, 1, 1, a6);
      (*(v29 + 8))(v16, v13);
      v25 = sub_2706E5E8C();
      swift_allocError();
      v27 = v26;
      v28 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081C988, &qword_2706E7F10) + 48);
      *v27 = v31;
      sub_2706B4A9C();

      (*(*(v25 - 8) + 104))(v27, *MEMORY[0x277D84160], v25);
      swift_willThrow();
      return __swift_destroy_boxed_opaque_existential_1(v33);
    }
  }

  else
  {
    v20 = sub_2706E5E8C();
    swift_allocError();
    v22 = v21;
    v23 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081D578, &qword_2706EB380) + 48);
    v22[3] = a5;
    v22[4] = a7;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v22);
    (*(*(a5 - 8) + 16))(boxed_opaque_existential_1, a1, a5);
    sub_2706B4A9C();

    (*(*(v20 - 8) + 104))(v22, *MEMORY[0x277D84158], v20);
    return swift_willThrow();
  }
}

BOOL sub_2706B4EB4(uint64_t a1, uint64_t a2, void *a3)
{
  *&v7[0] = sub_2706E66CC();
  *(&v7[0] + 1) = v4;
  v5 = [a3 __swift_objectForKeyedSubscript_];
  swift_unknownObjectRelease();
  if (v5)
  {
    sub_2706E5D6C();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v7, 0, sizeof(v7));
  }

  sub_2706B82E8(v7);
  return v5 != 0;
}

BOOL sub_2706B4F64(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v11 = sub_2706E5E8C();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v21 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_270690D44(0, qword_28081D4E0, 0x277CBEB68);
  sub_2706B4B04(a1, v16, a2, a3, a4, v16, a5, &v22);
  if (!v5)
  {
    goto LABEL_7;
  }

  v22 = v5;
  v17 = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081D4A8, &qword_2706EAD40);
  if (!swift_dynamicCast())
  {
    goto LABEL_7;
  }

  if ((*(v12 + 88))(v15, v11) != *MEMORY[0x277D84160])
  {
    (*(v12 + 8))(v15, v11);
LABEL_7:

    return v5 == 0;
  }

  (*(v12 + 96))(v15, v11);
  v18 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081C988, &qword_2706E7F10) + 48);
  v19 = sub_2706E5E7C();
  (*(*(v19 - 8) + 8))(&v15[v18], v19);

  return v5 == 0;
}

uint64_t sub_2706B51A0(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  sub_2706B4B04(a1, MEMORY[0x277D839B0], a2, a3, a4, MEMORY[0x277D839B0], a5, &v8);
  if (!v5)
  {
    v6 = v8;
  }

  return v6 & 1;
}

uint64_t sub_2706B51F0(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  result = sub_2706B4B04(a1, MEMORY[0x277D837D0], a2, a3, a4, MEMORY[0x277D837D0], a5, &v7);
  if (!v5)
  {
    return v7;
  }

  return result;
}

double sub_2706B523C(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  sub_2706B4B04(a1, MEMORY[0x277D839F8], a2, a3, a4, MEMORY[0x277D839F8], a5, &v7);
  if (!v5)
  {
    return v7;
  }

  return result;
}

float sub_2706B5288(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  sub_2706B4B04(a1, MEMORY[0x277D83A90], a2, a3, a4, MEMORY[0x277D83A90], a5, &v7);
  if (!v5)
  {
    return v7;
  }

  return result;
}

uint64_t sub_2706B52D4()
{
  OUTLINED_FUNCTION_2_4();
  result = sub_2706B4B04(v1, v5, v2, v3, v4, v5, v6, &v8);
  if (!v0)
  {
    return v8;
  }

  return result;
}

uint64_t sub_2706B530C()
{
  OUTLINED_FUNCTION_2_4();
  result = sub_2706B4B04(v1, v5, v2, v3, v4, v5, v6, &v8);
  if (!v0)
  {
    return v8;
  }

  return result;
}

uint64_t sub_2706B5344()
{
  OUTLINED_FUNCTION_2_4();
  result = sub_2706B4B04(v1, v5, v2, v3, v4, v5, v6, &v8);
  if (!v0)
  {
    return v8;
  }

  return result;
}

uint64_t sub_2706B537C()
{
  OUTLINED_FUNCTION_2_4();
  result = sub_2706B4B04(v1, v5, v2, v3, v4, v5, v6, &v8);
  if (!v0)
  {
    return v8;
  }

  return result;
}

uint64_t sub_2706B53B4(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  result = sub_2706B4B04(a2, MEMORY[0x277D84F70] + 8, a3, a4, a5, MEMORY[0x277D84F70] + 8, a7, v22);
  if (!v7)
  {
    v23 = 0;
    if (a1 == MEMORY[0x277CC9318] && (sub_2706B462C(v22, &v20), sub_270690D44(0, &qword_28081D4D8, 0x277CBEA90), (swift_dynamicCast() & 1) != 0))
    {

      sub_270690AAC(v22, &v20);
      return swift_dynamicCast();
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081D568, &unk_2706EB370);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_2706E8FC0;
      *(inited + 56) = a5;
      *(inited + 64) = a7;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((inited + 32));
      (*(*(a5 - 8) + 16))(boxed_opaque_existential_1, a2, a5);
      *&v20 = a3;

      sub_2706DD674(inited);
      v16 = v20;
      sub_2706B462C(v22, &v21);
      sub_2706E5F3C();
      v17 = sub_2706E59AC();
      *&v20 = v16;
      *(&v20 + 1) = v17;
      sub_2706B46F4();
      v19 = swift_allocObject();
      sub_2706B45F4(&v20, v19 + 16);
      sub_2706E5B7C();
      sub_2706B4748(&v20);
      return __swift_destroy_boxed_opaque_existential_1(v22);
    }
  }

  return result;
}

void sub_2706B55F0(uint64_t a1@<X1>, uint64_t a2@<X2>, void *a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X6>, uint64_t a6@<X8>)
{
  v13 = sub_270690D44(0, &qword_28081D4C8, 0x277CBEAC0);
  sub_2706B4B04(a1, v13, a2, a3, a4, v13, a5, v19);
  if (!v6)
  {
    v19[12] = a6;
    v14 = v19[0];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081D568, &unk_2706EB370);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_2706E8FC0;
    *(inited + 56) = a4;
    *(inited + 64) = a5;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((inited + 32));
    (*(*(a4 - 8) + 16))(boxed_opaque_existential_1, a1, a4);
    v19[0] = a2;
    v17 = v14;

    sub_2706DD674(inited);
    v19[1] = v17;
    type metadata accessor for PropertyListTypeDecoder.KeyedDecoder();

    v18 = v17;
    swift_getWitnessTable();
    sub_2706E607C();
  }
}

void sub_2706B57A4(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  v13 = sub_270690D44(0, &qword_28081D4B8, 0x277CBEA60);
  sub_2706B4B04(a1, v13, a2, a3, a4, v13, a5, &v19);
  if (!v6)
  {
    v14 = v19;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081D568, &unk_2706EB370);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_2706E8FC0;
    *(inited + 56) = a4;
    *(inited + 64) = a5;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((inited + 32));
    (*(*(a4 - 8) + 16))(boxed_opaque_existential_1, a1, a4);
    v19 = a2;
    v17 = v14;

    sub_2706DD674(inited);
    v18 = v19;
    a6[3] = &type metadata for PropertyListTypeDecoder.UnkeyedDecoder;
    a6[4] = sub_2706B4688();

    *a6 = v18;
    a6[1] = 0;
    a6[2] = v17;
  }
}

uint64_t sub_2706B59C0(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  return sub_2706B48E8(*v1, *(v1 + 8));
}

BOOL sub_2706B59D0(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *(a2 + 24);
  return sub_2706B4EB4(a1, *v2, *(v2 + 8));
}

uint64_t sub_2706B5A9C(uint64_t a1, uint64_t a2)
{
  v4 = *v2;
  v3 = v2[1];
  v5 = *(a2 + 16);
  v6 = *(a2 + 24);
  return sub_2706B537C();
}

uint64_t sub_2706B5AC8(uint64_t a1, uint64_t a2)
{
  v4 = *v2;
  v3 = v2[1];
  v5 = *(a2 + 16);
  v6 = *(a2 + 24);
  return sub_2706B52D4();
}

uint64_t sub_2706B5AF4(uint64_t a1, uint64_t a2)
{
  v4 = *v2;
  v3 = v2[1];
  v5 = *(a2 + 16);
  v6 = *(a2 + 24);
  return sub_2706B530C();
}

uint64_t sub_2706B5B20(uint64_t a1, uint64_t a2)
{
  v4 = *v2;
  v3 = v2[1];
  v5 = *(a2 + 16);
  v6 = *(a2 + 24);
  return sub_2706B5344();
}

uint64_t sub_2706B5B4C(uint64_t a1, uint64_t a2)
{
  v4 = *v2;
  v3 = v2[1];
  v5 = *(a2 + 16);
  v6 = *(a2 + 24);
  return sub_2706B537C();
}

uint64_t sub_2706B5B90(uint64_t a1, uint64_t a2)
{
  v4 = *v2;
  v3 = v2[1];
  v5 = *(a2 + 16);
  v6 = *(a2 + 24);
  return sub_2706B537C();
}

uint64_t sub_2706B5BBC(uint64_t a1, uint64_t a2)
{
  v4 = *v2;
  v3 = v2[1];
  v5 = *(a2 + 16);
  v6 = *(a2 + 24);
  return sub_2706B52D4();
}

uint64_t sub_2706B5BE8(uint64_t a1, uint64_t a2)
{
  v4 = *v2;
  v3 = v2[1];
  v5 = *(a2 + 16);
  v6 = *(a2 + 24);
  return sub_2706B530C();
}

uint64_t sub_2706B5C14(uint64_t a1, uint64_t a2)
{
  v4 = *v2;
  v3 = v2[1];
  v5 = *(a2 + 16);
  v6 = *(a2 + 24);
  return sub_2706B5344();
}

uint64_t sub_2706B5C40(uint64_t a1, uint64_t a2)
{
  v4 = *v2;
  v3 = v2[1];
  v5 = *(a2 + 16);
  v6 = *(a2 + 24);
  return sub_2706B537C();
}

uint64_t sub_2706B5CE0()
{
  result = sub_2706E63AC();
  if (v0)
  {
    return v2;
  }

  return result;
}

uint64_t sub_2706B5D30()
{
  result = sub_2706E63BC();
  if (v0)
  {
    return v2;
  }

  return result;
}

uint64_t sub_2706B5DD8()
{
  result = sub_2706E63EC();
  if (v0)
  {
    return v2;
  }

  return result;
}

uint64_t sub_2706B5E28()
{
  result = sub_2706E63CC();
  if (v0)
  {
    return v2;
  }

  return result;
}

uint64_t sub_2706B5F50()
{
  result = sub_2706E63FC();
  if (v0)
  {
    return v2;
  }

  return result;
}

uint64_t sub_2706B5FA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  result = a4();
  if (v4)
  {
    return v6;
  }

  return result;
}

void sub_2706B6048(uint64_t a1)
{
  v3 = *v1;
  v2 = v1[1];
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  sub_2706B58F8();
}

void sub_2706B606C(uint64_t a1, uint64_t a2)
{
  v4 = *v2;
  v3 = v2[1];
  v5 = *(a2 + 16);
  v6 = *(a2 + 24);
  sub_2706B595C();
}

uint64_t sub_2706B6148()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

void sub_2706B6178(uint64_t a1@<X8>)
{
  sub_2706B60F0();
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
}

uint64_t sub_2706B61A8()
{
  result = *(v0 + 16);
  v2 = *(v0 + 24);
  return result;
}

uint64_t sub_2706B61B4@<X0>(uint64_t a1@<X8>)
{
  result = sub_2706B60FC();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  return result;
}

uint64_t sub_2706B61E4(uint64_t a1)
{
  v2 = sub_2706B825C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2706B6220(uint64_t a1)
{
  v2 = sub_2706B825C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2706B625C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081D568, &unk_2706EB370);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2706E8FC0;
  v6 = sub_2706E611C();
  v8 = v7;
  *(inited + 56) = &type metadata for PropertyListTypeDecoder.UnkeyedDecoder.__AKey;
  *(inited + 64) = sub_2706B825C();
  v9 = swift_allocObject();
  *(inited + 32) = v9;
  *(v9 + 16) = v6;
  *(v9 + 24) = v8;
  *(v9 + 32) = a4;
  *(v9 + 40) = 0;

  sub_2706DD674(inited);

  return sub_2706E5E6C();
}

uint64_t sub_2706B6370()
{
  v2 = v0[1];
  v1 = v0[2];
  if (v2 >= [v1 count])
  {
    v6 = sub_2706E5E8C();
    swift_allocError();
    v8 = v7;
    v9 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081C988, &qword_2706E7F10) + 48);
    *v8 = MEMORY[0x277D839B0];
    sub_2706B625C(0, 0xE000000000000000, *v0, v2);
    (*(*(v6 - 8) + 104))(v8, *MEMORY[0x277D84170], v6);
    swift_willThrow();
  }

  else
  {
    v3 = [v1 objectAtIndexedSubscript_];
    sub_2706E5D6C();
    swift_unknownObjectRelease();
    sub_2706B462C(v17, v16);
    v4 = MEMORY[0x277D839B0];
    if (swift_dynamicCast())
    {
      __swift_destroy_boxed_opaque_existential_1(v17);
      v5 = v15;
      v0[1] = v2 + 1;
    }

    else
    {
      v10 = sub_2706E5E8C();
      swift_allocError();
      v12 = v11;
      v13 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081C988, &qword_2706E7F10) + 48);
      *v12 = v4;
      sub_2706B625C(0, 0xE000000000000000, *v0, v2);
      (*(*(v10 - 8) + 104))(v12, *MEMORY[0x277D84160], v10);
      swift_willThrow();
      __swift_destroy_boxed_opaque_existential_1(v17);
    }
  }

  return v5 & 1;
}

uint64_t sub_2706B65A8()
{
  v2 = v0[1];
  v1 = v0[2];
  if (v2 >= [v1 count])
  {
    v6 = sub_2706E5E8C();
    swift_allocError();
    v8 = v7;
    v9 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081C988, &qword_2706E7F10) + 48);
    *v8 = MEMORY[0x277D837D0];
    sub_2706B625C(0, 0xE000000000000000, *v0, v2);
    (*(*(v6 - 8) + 104))(v8, *MEMORY[0x277D84170], v6);
    return swift_willThrow();
  }

  else
  {
    v3 = [v1 objectAtIndexedSubscript_];
    sub_2706E5D6C();
    swift_unknownObjectRelease();
    sub_2706B462C(v16, v15);
    v4 = MEMORY[0x277D837D0];
    if (swift_dynamicCast())
    {
      __swift_destroy_boxed_opaque_existential_1(v16);
      result = v14;
      v0[1] = v2 + 1;
    }

    else
    {
      v10 = sub_2706E5E8C();
      swift_allocError();
      v12 = v11;
      v13 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081C988, &qword_2706E7F10) + 48);
      *v12 = v4;
      sub_2706B625C(0, 0xE000000000000000, *v0, v2);
      (*(*(v10 - 8) + 104))(v12, *MEMORY[0x277D84160], v10);
      swift_willThrow();
      return __swift_destroy_boxed_opaque_existential_1(v16);
    }
  }

  return result;
}

uint64_t sub_2706B67DC()
{
  v2 = v0[1];
  v1 = v0[2];
  if (v2 >= [v1 count])
  {
    v6 = sub_2706E5E8C();
    swift_allocError();
    v8 = v7;
    v9 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081C988, &qword_2706E7F10) + 48);
    *v8 = MEMORY[0x277D839F8];
    sub_2706B625C(0, 0xE000000000000000, *v0, v2);
    (*(*(v6 - 8) + 104))(v8, *MEMORY[0x277D84170], v6);
    return swift_willThrow();
  }

  else
  {
    v3 = [v1 objectAtIndexedSubscript_];
    sub_2706E5D6C();
    swift_unknownObjectRelease();
    sub_2706B462C(v15, v14);
    v4 = MEMORY[0x277D839F8];
    if (swift_dynamicCast())
    {
      result = __swift_destroy_boxed_opaque_existential_1(v15);
      v0[1] = v2 + 1;
    }

    else
    {
      v10 = sub_2706E5E8C();
      swift_allocError();
      v12 = v11;
      v13 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081C988, &qword_2706E7F10) + 48);
      *v12 = v4;
      sub_2706B625C(0, 0xE000000000000000, *v0, v2);
      (*(*(v10 - 8) + 104))(v12, *MEMORY[0x277D84160], v10);
      swift_willThrow();
      return __swift_destroy_boxed_opaque_existential_1(v15);
    }
  }

  return result;
}

uint64_t sub_2706B6A10()
{
  v2 = v0[1];
  v1 = v0[2];
  if (v2 >= [v1 count])
  {
    v6 = sub_2706E5E8C();
    swift_allocError();
    v8 = v7;
    v9 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081C988, &qword_2706E7F10) + 48);
    *v8 = MEMORY[0x277D83A90];
    sub_2706B625C(0, 0xE000000000000000, *v0, v2);
    (*(*(v6 - 8) + 104))(v8, *MEMORY[0x277D84170], v6);
    return swift_willThrow();
  }

  else
  {
    v3 = [v1 objectAtIndexedSubscript_];
    sub_2706E5D6C();
    swift_unknownObjectRelease();
    sub_2706B462C(v15, v14);
    v4 = MEMORY[0x277D83A90];
    if (swift_dynamicCast())
    {
      result = __swift_destroy_boxed_opaque_existential_1(v15);
      v0[1] = v2 + 1;
    }

    else
    {
      v10 = sub_2706E5E8C();
      swift_allocError();
      v12 = v11;
      v13 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081C988, &qword_2706E7F10) + 48);
      *v12 = v4;
      sub_2706B625C(0, 0xE000000000000000, *v0, v2);
      (*(*(v10 - 8) + 104))(v12, *MEMORY[0x277D84160], v10);
      swift_willThrow();
      return __swift_destroy_boxed_opaque_existential_1(v15);
    }
  }

  return result;
}

void sub_2706B6C44()
{
  OUTLINED_FUNCTION_10_6();
  v2 = [v0 count];
  if (v1 >= v2)
  {
    sub_2706E5E8C();
    OUTLINED_FUNCTION_11_6();
    OUTLINED_FUNCTION_9_6();
    v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081C988, &qword_2706E7F10);
    v7 = OUTLINED_FUNCTION_0_6(v6);
    OUTLINED_FUNCTION_13_8(v7, v8, v9);
    v10 = *MEMORY[0x277D84170];
    OUTLINED_FUNCTION_1_8();
    v12 = *(v11 + 104);
    v13 = OUTLINED_FUNCTION_5_7();
    v14(v13);
    swift_willThrow();
  }

  else
  {
    v3 = OUTLINED_FUNCTION_21_4(v2, sel_objectAtIndexedSubscript_);
    OUTLINED_FUNCTION_16_7();
    v4 = swift_unknownObjectRelease();
    OUTLINED_FUNCTION_15_6(v4, v5);
    if (OUTLINED_FUNCTION_3_6())
    {
      __swift_destroy_boxed_opaque_existential_1(v24);
      OUTLINED_FUNCTION_18_3();
    }

    else
    {
      sub_2706E5E8C();
      OUTLINED_FUNCTION_11_6();
      OUTLINED_FUNCTION_9_6();
      v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081C988, &qword_2706E7F10);
      v16 = OUTLINED_FUNCTION_0_6(v15);
      OUTLINED_FUNCTION_13_8(v16, v17, v18);
      v19 = *MEMORY[0x277D84160];
      OUTLINED_FUNCTION_1_8();
      v21 = *(v20 + 104);
      v22 = OUTLINED_FUNCTION_5_7();
      v23(v22);
      swift_willThrow();
      __swift_destroy_boxed_opaque_existential_1(v24);
    }
  }
}

void sub_2706B6DD0()
{
  OUTLINED_FUNCTION_10_6();
  v2 = [v0 count];
  if (v1 >= v2)
  {
    sub_2706E5E8C();
    OUTLINED_FUNCTION_11_6();
    OUTLINED_FUNCTION_9_6();
    v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081C988, &qword_2706E7F10);
    v7 = OUTLINED_FUNCTION_0_6(v6);
    OUTLINED_FUNCTION_13_8(v7, v8, v9);
    v10 = *MEMORY[0x277D84170];
    OUTLINED_FUNCTION_1_8();
    v12 = *(v11 + 104);
    v13 = OUTLINED_FUNCTION_5_7();
    v14(v13);
    swift_willThrow();
  }

  else
  {
    v3 = OUTLINED_FUNCTION_21_4(v2, sel_objectAtIndexedSubscript_);
    OUTLINED_FUNCTION_16_7();
    v4 = swift_unknownObjectRelease();
    OUTLINED_FUNCTION_15_6(v4, v5);
    if (OUTLINED_FUNCTION_3_6())
    {
      __swift_destroy_boxed_opaque_existential_1(v24);
      OUTLINED_FUNCTION_18_3();
    }

    else
    {
      sub_2706E5E8C();
      OUTLINED_FUNCTION_11_6();
      OUTLINED_FUNCTION_9_6();
      v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081C988, &qword_2706E7F10);
      v16 = OUTLINED_FUNCTION_0_6(v15);
      OUTLINED_FUNCTION_13_8(v16, v17, v18);
      v19 = *MEMORY[0x277D84160];
      OUTLINED_FUNCTION_1_8();
      v21 = *(v20 + 104);
      v22 = OUTLINED_FUNCTION_5_7();
      v23(v22);
      swift_willThrow();
      __swift_destroy_boxed_opaque_existential_1(v24);
    }
  }
}

void sub_2706B6F5C()
{
  OUTLINED_FUNCTION_10_6();
  v2 = [v0 count];
  if (v1 >= v2)
  {
    sub_2706E5E8C();
    OUTLINED_FUNCTION_11_6();
    OUTLINED_FUNCTION_9_6();
    v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081C988, &qword_2706E7F10);
    v7 = OUTLINED_FUNCTION_0_6(v6);
    OUTLINED_FUNCTION_13_8(v7, v8, v9);
    v10 = *MEMORY[0x277D84170];
    OUTLINED_FUNCTION_1_8();
    v12 = *(v11 + 104);
    v13 = OUTLINED_FUNCTION_5_7();
    v14(v13);
    swift_willThrow();
  }

  else
  {
    v3 = OUTLINED_FUNCTION_21_4(v2, sel_objectAtIndexedSubscript_);
    OUTLINED_FUNCTION_16_7();
    v4 = swift_unknownObjectRelease();
    OUTLINED_FUNCTION_15_6(v4, v5);
    if (OUTLINED_FUNCTION_3_6())
    {
      __swift_destroy_boxed_opaque_existential_1(v24);
      OUTLINED_FUNCTION_18_3();
    }

    else
    {
      sub_2706E5E8C();
      OUTLINED_FUNCTION_11_6();
      OUTLINED_FUNCTION_9_6();
      v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081C988, &qword_2706E7F10);
      v16 = OUTLINED_FUNCTION_0_6(v15);
      OUTLINED_FUNCTION_13_8(v16, v17, v18);
      v19 = *MEMORY[0x277D84160];
      OUTLINED_FUNCTION_1_8();
      v21 = *(v20 + 104);
      v22 = OUTLINED_FUNCTION_5_7();
      v23(v22);
      swift_willThrow();
      __swift_destroy_boxed_opaque_existential_1(v24);
    }
  }
}

void sub_2706B70E8()
{
  OUTLINED_FUNCTION_10_6();
  v2 = [v0 count];
  if (v1 >= v2)
  {
    sub_2706E5E8C();
    OUTLINED_FUNCTION_11_6();
    OUTLINED_FUNCTION_9_6();
    v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081C988, &qword_2706E7F10);
    v7 = OUTLINED_FUNCTION_0_6(v6);
    OUTLINED_FUNCTION_13_8(v7, v8, v9);
    v10 = *MEMORY[0x277D84170];
    OUTLINED_FUNCTION_1_8();
    v12 = *(v11 + 104);
    v13 = OUTLINED_FUNCTION_5_7();
    v14(v13);
    swift_willThrow();
  }

  else
  {
    v3 = OUTLINED_FUNCTION_21_4(v2, sel_objectAtIndexedSubscript_);
    OUTLINED_FUNCTION_16_7();
    v4 = swift_unknownObjectRelease();
    OUTLINED_FUNCTION_15_6(v4, v5);
    if (OUTLINED_FUNCTION_3_6())
    {
      __swift_destroy_boxed_opaque_existential_1(v24);
      OUTLINED_FUNCTION_18_3();
    }

    else
    {
      sub_2706E5E8C();
      OUTLINED_FUNCTION_11_6();
      OUTLINED_FUNCTION_9_6();
      v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081C988, &qword_2706E7F10);
      v16 = OUTLINED_FUNCTION_0_6(v15);
      OUTLINED_FUNCTION_13_8(v16, v17, v18);
      v19 = *MEMORY[0x277D84160];
      OUTLINED_FUNCTION_1_8();
      v21 = *(v20 + 104);
      v22 = OUTLINED_FUNCTION_5_7();
      v23(v22);
      swift_willThrow();
      __swift_destroy_boxed_opaque_existential_1(v24);
    }
  }
}

uint64_t sub_2706B7274()
{
  v1 = v0[1];
  v2 = v0[2];
  if (v1 >= [v2 count])
  {
    v5 = sub_2706E5E8C();
    swift_allocError();
    v7 = v6;
    v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081C988, &qword_2706E7F10) + 48);
    *v7 = MEMORY[0x277D84F70] + 8;
    sub_2706B625C(0, 0xE000000000000000, *v0, v1);
    (*(*(v5 - 8) + 104))(v7, *MEMORY[0x277D84170], v5);
    return swift_willThrow();
  }

  else
  {
    v3 = [v2 objectAtIndexedSubscript_];
    sub_2706E5D6C();
    result = swift_unknownObjectRelease();
    v0[1] = v1 + 1;
  }

  return result;
}

uint64_t sub_2706B73B4(unint64_t *a1, uint64_t *a2)
{
  sub_270690D44(0, a1, a2);
  v3 = *(v2 + 8);
  v4 = *(v2 + 16);
  if (v3 >= [v4 count])
  {
    sub_2706E5E8C();
    OUTLINED_FUNCTION_11_6();
    OUTLINED_FUNCTION_9_6();
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081C988, &qword_2706E7F10);
    v10 = OUTLINED_FUNCTION_0_6(v9);
    sub_2706B625C(v10, v11, v12, v3);
    v13 = *MEMORY[0x277D84170];
    OUTLINED_FUNCTION_1_8();
    v15 = *(v14 + 104);
    v16 = OUTLINED_FUNCTION_5_7();
    v17(v16);
    return swift_willThrow();
  }

  else
  {
    v5 = [v4 objectAtIndexedSubscript_];
    OUTLINED_FUNCTION_16_7();
    v6 = swift_unknownObjectRelease();
    OUTLINED_FUNCTION_15_6(v6, v7);
    if (OUTLINED_FUNCTION_3_6())
    {
      __swift_destroy_boxed_opaque_existential_1(v28);
      result = v27;
      *(v2 + 8) = v3 + 1;
    }

    else
    {
      sub_2706E5E8C();
      OUTLINED_FUNCTION_11_6();
      OUTLINED_FUNCTION_9_6();
      v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081C988, &qword_2706E7F10);
      v19 = OUTLINED_FUNCTION_0_6(v18);
      sub_2706B625C(v19, v20, v21, v3);
      v22 = *MEMORY[0x277D84160];
      OUTLINED_FUNCTION_1_8();
      v24 = *(v23 + 104);
      v25 = OUTLINED_FUNCTION_5_7();
      v26(v25);
      swift_willThrow();
      return __swift_destroy_boxed_opaque_existential_1(v28);
    }
  }

  return result;
}

BOOL sub_2706B7574()
{
  v1 = sub_2706E5E8C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_2706B73B4(qword_28081D4E0, 0x277CBEB68);
  if (!v0)
  {

    return v0 == 0;
  }

  v12 = v0;
  v7 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081D4A8, &qword_2706EAD40);
  if (!swift_dynamicCast())
  {
LABEL_7:

    return v0 == 0;
  }

  if ((*(v2 + 88))(v5, v1) != *MEMORY[0x277D84160])
  {
    (*(v2 + 8))(v5, v1);
    goto LABEL_7;
  }

  (*(v2 + 96))(v5, v1);
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081C988, &qword_2706E7F10) + 48);
  v9 = sub_2706E5E7C();
  (*(*(v9 - 8) + 8))(&v5[v8], v9);

  return v0 == 0;
}

uint64_t sub_2706B7904(uint64_t a1)
{
  result = sub_2706B7274();
  if (!v2)
  {
    if (a1 == MEMORY[0x277CC9318] && (sub_2706B462C(v18, &v16), sub_270690D44(0, &qword_28081D4D8, 0x277CBEA90), (swift_dynamicCast() & 1) != 0))
    {

      sub_270690AAC(v18, &v16);
      return swift_dynamicCast();
    }

    else
    {
      v5 = *v1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081D568, &unk_2706EB370);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_2706E8FC0;
      *&v16 = v1[1];
      v7 = v16;

      v8 = sub_2706E611C();
      v10 = v9;
      *(inited + 56) = &type metadata for PropertyListTypeDecoder.UnkeyedDecoder.__AKey;
      *(inited + 64) = sub_2706B825C();
      v11 = swift_allocObject();
      *(inited + 32) = v11;
      *(v11 + 16) = v8;
      *(v11 + 24) = v10;
      *(v11 + 32) = v7;
      *(v11 + 40) = 0;
      *&v16 = v5;
      sub_2706DD674(inited);
      v12 = v16;
      sub_2706B462C(v18, &v17);
      sub_2706E5F3C();
      v13 = sub_2706E59AC();
      *&v16 = v12;
      *(&v16 + 1) = v13;
      sub_2706B46F4();
      v15 = swift_allocObject();
      sub_2706B45F4(&v16, v15 + 16);
      sub_2706E5B7C();
      sub_2706B4748(&v16);
      return __swift_destroy_boxed_opaque_existential_1(v18);
    }
  }

  return result;
}

uint64_t sub_2706B7B4C()
{
  result = sub_2706B73B4(&qword_28081D4C8, 0x277CBEAC0);
  if (!v1)
  {
    v3 = *v0;
    type metadata accessor for PropertyListTypeDecoder.KeyedDecoder();

    swift_getWitnessTable();
    return sub_2706E607C();
  }

  return result;
}

uint64_t sub_2706B7C04@<X0>(void *a1@<X8>)
{
  result = sub_2706B73B4(&qword_28081D4B8, 0x277CBEA60);
  if (!v2)
  {
    v5 = result;
    v6 = *v1;
    a1[3] = &type metadata for PropertyListTypeDecoder.UnkeyedDecoder;
    a1[4] = sub_2706B4688();
    *a1 = v6;
    a1[1] = 0;
    a1[2] = v5;
  }

  return result;
}

uint64_t sub_2706B7EFC()
{
  result = sub_2706E614C();
  if (v0)
  {
    return v2;
  }

  return result;
}

uint64_t sub_2706B7F4C()
{
  result = sub_2706E615C();
  if (v0)
  {
    return v2;
  }

  return result;
}

uint64_t sub_2706B7FF4()
{
  result = sub_2706E618C();
  if (v0)
  {
    return v2;
  }

  return result;
}

uint64_t sub_2706B8044()
{
  result = sub_2706E616C();
  if (v0)
  {
    return v2;
  }

  return result;
}

uint64_t sub_2706B816C()
{
  result = sub_2706E619C();
  if (v0)
  {
    return v2;
  }

  return result;
}

uint64_t sub_2706B81BC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  result = a3();
  if (v3)
  {
    return v5;
  }

  return result;
}

unint64_t sub_2706B825C()
{
  result = qword_28081D570;
  if (!qword_28081D570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28081D570);
  }

  return result;
}

uint64_t sub_2706B82B0()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 41, 7);
}

uint64_t sub_2706B82E8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081D580, &qword_2706EB388);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2706B8350@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2[3];
  v4 = v2[4];
  v5 = v2[5];
  return sub_2706B49C8(a1, v2[2], a2);
}

unint64_t sub_2706B8380()
{
  result = qword_28081D590;
  if (!qword_28081D590)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28081D588, &qword_2706EB390);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28081D590);
  }

  return result;
}

__n128 __swift_memcpy25_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t sub_2706B8428(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 25))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
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

uint64_t sub_2706B8468(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 25) = 1;
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

    *(result + 25) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_2706B84C0()
{
  result = qword_28081D598;
  if (!qword_28081D598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28081D598);
  }

  return result;
}

unint64_t sub_2706B8518()
{
  result = qword_28081D5A0;
  if (!qword_28081D5A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28081D5A0);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_0_6(uint64_t a1)
{
  v4 = *(a1 + 48);
  *v3 = v2;
  v5 = *v1;
  return 0;
}

uint64_t OUTLINED_FUNCTION_3_6()
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_6_7()
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_7_5(uint64_t a1, uint64_t a2, ...)
{
  va_start(va, a2);

  return sub_2706B462C(v2 + 16, va);
}

uint64_t OUTLINED_FUNCTION_8_7()
{

  return sub_2706E5E6C();
}

uint64_t OUTLINED_FUNCTION_11_6()
{

  return swift_allocError();
}

uint64_t OUTLINED_FUNCTION_12_7(uint64_t a1)
{
  v5 = *(a1 + 48);
  *v3 = v2;
  v6 = *v1;
}

uint64_t OUTLINED_FUNCTION_13_8(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_2706B625C(a1, a2, a3, v3);
}

uint64_t OUTLINED_FUNCTION_15_6(uint64_t a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);

  return sub_2706B462C(va1, va);
}

uint64_t OUTLINED_FUNCTION_16_7()
{

  return sub_2706E5D6C();
}

id OUTLINED_FUNCTION_21_4(uint64_t a1, const char *a2)
{

  return [v2 a2];
}

uint64_t sub_2706B8734(uint64_t result)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    sub_2706E5A7C();
    v1 = sub_2706E5ADC();

    return v1;
  }

  return result;
}

uint64_t sub_2706B87F8(unint64_t a1)
{
  if (a1 >> 62)
  {
    return sub_2706E5F9C();
  }

  else
  {
    return *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }
}

void sub_2706B881C()
{
  OUTLINED_FUNCTION_62();
  v1 = *(v0 + OBJC_IVAR____TtC13UniversalDrag18PasteboardContents_items);
  if (v1 >> 62)
  {
    goto LABEL_24;
  }

  v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v2)
  {
    while (1)
    {
      v3 = 0;
      v4 = v1 & 0xC000000000000001;
LABEL_4:
      sub_2706BF7FC(v3, v4 == 0, v1);
      if (v4)
      {
        v5 = MEMORY[0x2743A62C0](v3, v1);
      }

      else
      {
        v6 = *(v1 + 32 + 8 * v3);
      }

      if (!__OFADD__(v3++, 1))
      {
        break;
      }

LABEL_23:
      __break(1u);
LABEL_24:
      v2 = sub_2706E5F9C();
      if (!v2)
      {
        goto LABEL_20;
      }
    }

    v8 = *(v5 + 24);
    v9 = sub_2706B87F8(v8);

    for (i = 0; v9 != i; ++i)
    {
      if ((v8 & 0xC000000000000001) != 0)
      {
        MEMORY[0x2743A62C0](i, v8);
      }

      else
      {
        if (i >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_22;
        }

        v11 = *(v8 + 8 * i + 32);
      }

      if (__OFADD__(i, 1))
      {
        __break(1u);
LABEL_22:
        __break(1u);
        goto LABEL_23;
      }

      if (sub_2706E573C())
      {

        goto LABEL_20;
      }
    }

    v4 = v1 & 0xC000000000000001;
    if (v3 != v2)
    {
      goto LABEL_4;
    }
  }

LABEL_20:
  OUTLINED_FUNCTION_63();
}

uint64_t sub_2706B89B0(uint64_t a1)
{
  v3 = sub_2706E576C();
  v4 = OUTLINED_FUNCTION_4(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_3_0();
  v11 = v10 - v9;
  sub_2706E575C();
  v12 = *(v1 + 48);
  v13 = *(v1 + 52);
  v14 = swift_allocObject();
  (*(v6 + 32))(v14 + OBJC_IVAR____TtC13UniversalDrag18PasteboardContents_source, v11, v3);
  *(v14 + OBJC_IVAR____TtC13UniversalDrag18PasteboardContents_items) = a1;
  return v14;
}

uint64_t sub_2706B8A98(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081D890, &unk_2706EBB20);
  OUTLINED_FUNCTION_16_3(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v7);
  v9 = v23 - v8;
  v10 = sub_2706BD7C0();
  if ((v10 ^ sub_2706BD7C0()))
  {
    if (sub_2706BD7C0())
    {
      v11 = sub_2706BD7C0() ^ 1;
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v12 = *(a1 + OBJC_IVAR____TtC13UniversalDrag24PasteboardRepresentation_order);
    v13 = *(a2 + OBJC_IVAR____TtC13UniversalDrag24PasteboardRepresentation_order);
    if (v12 == v13)
    {
      v14 = sub_2706BDC18();
      if (v14 == sub_2706BDC18())
      {
        v15 = *(a1 + OBJC_IVAR____TtC13UniversalDrag24PasteboardRepresentation_typeIdentifier);
        v16 = *(a1 + OBJC_IVAR____TtC13UniversalDrag24PasteboardRepresentation_typeIdentifier + 8);
        v23[2] = v15;
        v23[3] = v16;
        v17 = (a2 + OBJC_IVAR____TtC13UniversalDrag24PasteboardRepresentation_typeIdentifier);
        v18 = *(a2 + OBJC_IVAR____TtC13UniversalDrag24PasteboardRepresentation_typeIdentifier + 8);
        v23[0] = *v17;
        v23[1] = v18;
        v19 = sub_2706E578C();
        __swift_storeEnumTagSinglePayload(v9, 1, 1, v19);
        sub_2706C0774();

        v20 = sub_2706E5D5C();
        sub_2706A64F4(v9, &qword_28081D890, &unk_2706EBB20);

        v11 = v20 == -1;
      }

      else
      {
        v21 = sub_2706BDC18();
        v11 = sub_2706BDC18() < v21;
      }
    }

    else
    {
      v11 = v12 < v13;
    }
  }

  return v11 & 1;
}

uint64_t sub_2706B8C74(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656372756F73 && a2 == 0xE600000000000000;
  if (v4 || (OUTLINED_FUNCTION_8_3() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x736D657469 && a2 == 0xE500000000000000)
  {

    return 1;
  }

  else
  {
    v7 = OUTLINED_FUNCTION_8_3();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_2706B8D1C(char a1)
{
  if (a1)
  {
    return 0x736D657469;
  }

  else
  {
    return 0x656372756F73;
  }
}

uint64_t sub_2706B8D54@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2706B8C74(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2706B8D7C(uint64_t a1)
{
  v2 = sub_2706BF6C4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2706B8DB8(uint64_t a1)
{
  v2 = sub_2706BF6C4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2706B8DF4()
{
  v1 = OBJC_IVAR____TtC13UniversalDrag18PasteboardContents_source;
  v2 = sub_2706E576C();
  OUTLINED_FUNCTION_6_0(v2);
  (*(v3 + 8))(v0 + v1);
  v4 = *(v0 + OBJC_IVAR____TtC13UniversalDrag18PasteboardContents_items);

  v5 = *(*v0 + 48);
  v6 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v5, v6);
}

uint64_t sub_2706B8EC0()
{
  result = sub_2706E576C();
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

uint64_t sub_2706B8F5C()
{
  OUTLINED_FUNCTION_40_0();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081D5D0, &qword_2706EB978);
  OUTLINED_FUNCTION_4(v3);
  v5 = v4;
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_14_6();
  v9 = v0[4];
  OUTLINED_FUNCTION_47_1(v0, v0[3]);
  sub_2706BF6C4();
  OUTLINED_FUNCTION_13_5();
  sub_2706E576C();
  OUTLINED_FUNCTION_0_7();
  sub_2706BF718(v10);
  OUTLINED_FUNCTION_16_8();
  if (!v1)
  {
    v15 = *(v2 + OBJC_IVAR____TtC13UniversalDrag18PasteboardContents_items);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081D5E0, &qword_2706EB980);
    sub_2706C06E0(&unk_28081D5E8);
    OUTLINED_FUNCTION_16_8();
  }

  v11 = *(v5 + 8);
  v12 = OUTLINED_FUNCTION_26_3();
  return v13(v12);
}

void sub_2706B9144()
{
  OUTLINED_FUNCTION_60();
  v3 = v2;
  OUTLINED_FUNCTION_48_1();
  v21 = sub_2706E576C();
  v4 = OUTLINED_FUNCTION_4(v21);
  v19 = v5;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_3_0();
  v20 = v9 - v8;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081D878, &qword_2706EBB18);
  OUTLINED_FUNCTION_4(v22);
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v12);
  v13 = v3[4];
  OUTLINED_FUNCTION_47_1(v3, v3[3]);
  sub_2706BF6C4();
  sub_2706E668C();
  if (v1)
  {
    v15 = *(*v0 + 48);
    v16 = *(*v0 + 52);
    swift_deallocPartialClassInstance();
  }

  else
  {
    OUTLINED_FUNCTION_0_7();
    sub_2706BF718(v14);
    sub_2706E605C();
    (*(v19 + 32))(v0 + OBJC_IVAR____TtC13UniversalDrag18PasteboardContents_source, v20, v21);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081D5E0, &qword_2706EB980);
    sub_2706C06E0(&unk_28081D880);
    sub_2706E605C();
    v17 = OUTLINED_FUNCTION_21_5();
    v18(v17);
    *(v0 + OBJC_IVAR____TtC13UniversalDrag18PasteboardContents_items) = v23;
  }

  __swift_destroy_boxed_opaque_existential_1(v3);
  OUTLINED_FUNCTION_55();
}

uint64_t sub_2706B9484@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_2706B9118(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

void sub_2706B94D4()
{
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_48_1();
  v12 = sub_2706E671C();
  MEMORY[0x2743A5EF0](0x2053444920, 0xE500000000000000);
  sub_2706E572C();
  v2 = sub_2706B8734(8);
  MEMORY[0x2743A5EC0](v2);
  v4 = v3;

  OUTLINED_FUNCTION_56_1();

  MEMORY[0x2743A5EF0](10272, 0xE200000000000000);
  v5 = *(v0 + OBJC_IVAR____TtC13UniversalDrag18PasteboardContents_items);
  v6 = sub_2706B87F8(v5);
  if (!v6)
  {
LABEL_11:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081D5F8, &qword_2706EB988);
    v11 = sub_2706BF840();
    OUTLINED_FUNCTION_52_1(v11);

    OUTLINED_FUNCTION_56_1();

    MEMORY[0x2743A5EF0](41, 0xE100000000000000);

    OUTLINED_FUNCTION_63();
    return;
  }

  OUTLINED_FUNCTION_42_1(v6);
  if ((v4 & 0x8000000000000000) == 0)
  {
    OUTLINED_FUNCTION_60_0();
    do
    {
      if (v1)
      {
        MEMORY[0x2743A62C0](v12, v5);
      }

      else
      {
        v7 = *(v5 + 8 * v12 + 32);
      }

      sub_2706BF4D8();

      OUTLINED_FUNCTION_61();
      if (v9)
      {
        OUTLINED_FUNCTION_54_1(v8);
      }

      OUTLINED_FUNCTION_46_1();
    }

    while (!v10);
    goto LABEL_11;
  }

  __break(1u);
}

unint64_t sub_2706B96E0(unint64_t a1)
{
  switch(a1 >> 61)
  {
    case 1uLL:
      OUTLINED_FUNCTION_65();
      result = v6 + 26;
      break;
    case 2uLL:
      OUTLINED_FUNCTION_65();
      result = v4 | 0xE;
      break;
    case 3uLL:
      v5 = 9;
LABEL_6:
      result = v5 | 0xD000000000000010;
      break;
    case 4uLL:
      OUTLINED_FUNCTION_65();
      result = v3 | 3;
      break;
    case 5uLL:
      v7 = *((a1 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      sub_270694BA4(v7);
      sub_2706E5E3C();

      v8 = sub_2706B96E0(v7);
      MEMORY[0x2743A5EF0](v8);

      sub_270688D9C(v7);
      result = 0xD000000000000010;
      break;
    case 6uLL:
      switch(__ROR8__(a1 + 0x4000000000000000, 3))
      {
        case 1:
          v5 = 33;
          goto LABEL_6;
        case 2:
          v5 = 40;
          goto LABEL_6;
        case 3:
          v5 = 45;
          goto LABEL_6;
        case 4:
          v5 = 43;
          goto LABEL_6;
        case 5:
          v5 = 11;
          goto LABEL_6;
        case 6:
          OUTLINED_FUNCTION_65();
          result = v11 + 30;
          break;
        case 7:
          OUTLINED_FUNCTION_65();
          result = v10 + 22;
          break;
        case 8:
          OUTLINED_FUNCTION_65();
          result = v12 | 8;
          break;
        default:
          OUTLINED_FUNCTION_65();
          result = v9 + 28;
          break;
      }

      break;
    default:
      OUTLINED_FUNCTION_65();
      result = v1 + 27;
      break;
  }

  return result;
}

uint64_t sub_2706B998C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6265747361506F6ELL && a2 == 0xEC0000006472616FLL;
  if (v4 || (sub_2706E631C() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6553617461446F6ELL && a2 == 0xED00006E6F697373;
    if (v6 || (sub_2706E631C() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000010 && 0x80000002706F0D90 == a2;
      if (v7 || (sub_2706E631C() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x66736E6172546F6ELL && a2 == 0xEA00000000007265;
        if (v8 || (sub_2706E631C() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x7669656365526F6ELL && a2 == 0xEA00000000007265;
          if (v9 || (sub_2706E631C() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x6E6F43676E6F7277 && a2 == 0xEC00000074786574;
            if (v10 || (sub_2706E631C() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0xD000000000000010 && 0x80000002706F0DB0 == a2;
              if (v11 || (sub_2706E631C() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0x6C6961466E65706FLL && a2 == 0xEA00000000006465;
                if (v12 || (sub_2706E631C() & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v13 = a1 == 0x52556F4E6E65706FLL && a2 == 0xE90000000000004CLL;
                  if (v13 || (sub_2706E631C() & 1) != 0)
                  {

                    return 8;
                  }

                  else
                  {
                    v14 = a1 == 1684104562 && a2 == 0xE400000000000000;
                    if (v14 || (sub_2706E631C() & 1) != 0)
                    {

                      return 9;
                    }

                    else
                    {
                      v15 = a1 == 0x6961466574697277 && a2 == 0xEB0000000064656CLL;
                      if (v15 || (sub_2706E631C() & 1) != 0)
                      {

                        return 10;
                      }

                      else
                      {
                        v16 = a1 == 0x656C6C65636E6163 && a2 == 0xE900000000000064;
                        if (v16 || (sub_2706E631C() & 1) != 0)
                        {

                          return 11;
                        }

                        else
                        {
                          v17 = a1 == 0x726566736E617274 && a2 == 0xEF74756F656D6954;
                          if (v17 || (sub_2706E631C() & 1) != 0)
                          {

                            return 12;
                          }

                          else
                          {
                            v18 = a1 == 0x72656469766F7270 && a2 == 0xED0000726F727245;
                            if (v18 || (sub_2706E631C() & 1) != 0)
                            {

                              return 13;
                            }

                            else if (a1 == 0x636972656E6567 && a2 == 0xE700000000000000)
                            {

                              return 14;
                            }

                            else
                            {
                              v20 = sub_2706E631C();

                              if (v20)
                              {
                                return 14;
                              }

                              else
                              {
                                return 15;
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
      }
    }
  }
}

uint64_t sub_2706B9E40(char a1)
{
  result = 0x6265747361506F6ELL;
  switch(a1)
  {
    case 1:
      result = 0x6553617461446F6ELL;
      break;
    case 2:
      result = 0xD000000000000010;
      break;
    case 3:
      result = 0x66736E6172546F6ELL;
      break;
    case 4:
      result = 0x7669656365526F6ELL;
      break;
    case 5:
      result = 0x6E6F43676E6F7277;
      break;
    case 6:
      result = 0xD000000000000010;
      break;
    case 7:
      result = 0x6C6961466E65706FLL;
      break;
    case 8:
      result = 0x52556F4E6E65706FLL;
      break;
    case 9:
      result = 1684104562;
      break;
    case 10:
      result = 0x6961466574697277;
      break;
    case 11:
      result = 0x656C6C65636E6163;
      break;
    case 12:
      v3 = 0x66736E617274;
      goto LABEL_14;
    case 13:
      v3 = 0x6469766F7270;
LABEL_14:
      result = v3 & 0xFFFFFFFFFFFFLL | 0x7265000000000000;
      break;
    case 14:
      result = 0x636972656E6567;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_2706BA04C(uint64_t a1, uint64_t a2)
{
  if (a1 == 12383 && a2 == 0xE200000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_2706E631C();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

void sub_2706BA0BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, unint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_60();
  a19 = v22;
  a20 = v23;
  v205 = v20;
  v201 = v24;
  v26 = v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081D7C0, &qword_2706EBA80);
  OUTLINED_FUNCTION_2(v27, &v199);
  v183[11] = v28;
  v30 = *(v29 + 64);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_26(v32);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081D7C8, &qword_2706EBA88);
  v34 = OUTLINED_FUNCTION_4(v33);
  v197 = v35;
  v198 = v34;
  v37 = *(v36 + 64);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_13();
  v196 = v39;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081D7D0, &qword_2706EBA90);
  OUTLINED_FUNCTION_2(v40, &a13);
  v183[23] = v41;
  v43 = *(v42 + 64);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v44);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_26(v45);
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081D7D8, &qword_2706EBA98);
  OUTLINED_FUNCTION_2(v46, &v196);
  v183[8] = v47;
  v49 = *(v48 + 64);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v50);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_26(v51);
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081D7E0, &qword_2706EBAA0);
  OUTLINED_FUNCTION_2(v52, &v193);
  v183[5] = v53;
  v55 = *(v54 + 64);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v56);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_26(v57);
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081D7E8, &qword_2706EBAA8);
  v59 = OUTLINED_FUNCTION_4(v58);
  v194 = v60;
  v195 = v59;
  v62 = *(v61 + 64);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v63);
  OUTLINED_FUNCTION_13();
  v193 = v64;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081D7F0, &qword_2706EBAB0);
  OUTLINED_FUNCTION_2(v65, &a10);
  v183[20] = v66;
  v68 = *(v67 + 64);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v69);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_26(v70);
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081D7F8, &qword_2706EBAB8);
  v72 = OUTLINED_FUNCTION_4(v71);
  v191 = v73;
  v192 = v72;
  v75 = *(v74 + 64);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v76);
  OUTLINED_FUNCTION_13();
  v190 = v77;
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081D800, &qword_2706EBAC0);
  OUTLINED_FUNCTION_2(v78, &v205);
  v183[17] = v79;
  v81 = *(v80 + 64);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v82);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_26(v83);
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081D808, &qword_2706EBAC8);
  OUTLINED_FUNCTION_2(v84, &v202);
  v183[14] = v85;
  v87 = *(v86 + 64);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v88);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_26(v89);
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081D810, &qword_2706EBAD0);
  OUTLINED_FUNCTION_2(v90, &v190);
  v183[2] = v91;
  v93 = *(v92 + 64);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v94);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_26(v95);
  v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081D818, &qword_2706EBAD8);
  v97 = OUTLINED_FUNCTION_4(v96);
  v188 = v98;
  v189 = v97;
  v100 = *(v99 + 64);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v101);
  OUTLINED_FUNCTION_13();
  v187 = v102;
  v184 = type metadata accessor for PasteboardDataTransferID(0);
  v103 = OUTLINED_FUNCTION_6_0(v184);
  v105 = *(v104 + 64);
  MEMORY[0x28223BE20](v103);
  OUTLINED_FUNCTION_3_0();
  v186 = v107 - v106;
  v185 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081D820, &qword_2706EBAE0);
  OUTLINED_FUNCTION_4(v185);
  v183[28] = v108;
  v110 = *(v109 + 64);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v111);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_26(v112);
  v113 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081D828, &qword_2706EBAE8);
  OUTLINED_FUNCTION_2(v113, &a15);
  v183[25] = v114;
  v116 = *(v115 + 64);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v117);
  v119 = v183 - v118;
  v120 = sub_2706E576C();
  v121 = OUTLINED_FUNCTION_4(v120);
  v199 = v122;
  v200 = v121;
  v124 = *(v123 + 64);
  v125 = MEMORY[0x28223BE20](v121);
  v127 = v183 - ((v126 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v125);
  v129 = v183 - v128;
  v130 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081D830, &qword_2706EBAF0);
  OUTLINED_FUNCTION_4(v130);
  v183[0] = v131;
  v133 = *(v132 + 64);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v134);
  OUTLINED_FUNCTION_23_3();
  v135 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081D838, &qword_2706EBAF8);
  v203 = OUTLINED_FUNCTION_4(v135);
  v204 = v136;
  v138 = *(v137 + 64);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v139);
  v141 = v183 - v140;
  v142 = v26[4];
  OUTLINED_FUNCTION_47_1(v26, v26[3]);
  sub_2706C0010();
  v202 = v141;
  sub_2706E66AC();
  switch(v201 >> 61)
  {
    case 1uLL:
      v165 = swift_projectBox();
      v167 = v199;
      v166 = v200;
      (*(v199 + 16))(v127, v165, v200);
      LOBYTE(a10) = 2;
      sub_2706C04BC();
      v168 = v183[27];
      OUTLINED_FUNCTION_36_2();
      sub_2706E608C();
      OUTLINED_FUNCTION_0_7();
      sub_2706BF718(v169);
      v170 = v185;
      sub_2706E60DC();
      OUTLINED_FUNCTION_11(&a17);
      v171(v168, v170);
      (*(v167 + 8))(v127, v166);
      OUTLINED_FUNCTION_15_7();
      v158 = OUTLINED_FUNCTION_51();
      goto LABEL_9;
    case 2uLL:
      v153 = swift_projectBox();
      v154 = v186;
      sub_270690CD8(v153, v186);
      LOBYTE(a10) = 3;
      sub_2706C0468();
      v155 = v187;
      OUTLINED_FUNCTION_51_1();
      OUTLINED_FUNCTION_17_5();
      sub_2706BF718(v156);
      v157 = v189;
      sub_2706E60DC();
      (*(v188 + 8))(v155, v157);
      sub_270687394(v154);
      goto LABEL_5;
    case 3uLL:
      v161 = *((v201 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      v162 = *((v201 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
      LOBYTE(a10) = 7;
      sub_2706C0318();

      v163 = v190;
      OUTLINED_FUNCTION_41_1();
      v164 = v192;
      sub_2706E60BC();

      (*(v191 + 8))(v163, v164);
      goto LABEL_7;
    case 4uLL:
      v150 = *((v201 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      v149 = *((v201 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
      LOBYTE(a10) = 9;
      sub_2706C0240();

      v151 = v193;
      OUTLINED_FUNCTION_41_1();
      OUTLINED_FUNCTION_26_3();
      v152 = v195;
      sub_2706E60BC();

      (*(v194 + 8))(v151, v152);
LABEL_7:
      OUTLINED_FUNCTION_15_7();
      v158 = v119;
      v159 = v21;
      goto LABEL_9;
    case 5uLL:
      v172 = *((v201 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      LOBYTE(a10) = 13;
      sub_270694BA4(v172);
      sub_2706C00B8();
      v173 = v196;
      OUTLINED_FUNCTION_36_2();
      sub_2706E608C();
      a10 = v172;
      sub_270688E34();
      v174 = v198;
      sub_2706E60DC();
      (*(v197 + 8))(v173, v174);
      OUTLINED_FUNCTION_15_7();
      v175 = OUTLINED_FUNCTION_51();
      v176(v175);
      sub_270688D9C(v172);
      goto LABEL_10;
    case 6uLL:
      v177 = v202;
      switch(__ROR8__(v201 + 0x4000000000000000, 3))
      {
        case 1:
          LOBYTE(a10) = 4;
          sub_2706C0414();
          OUTLINED_FUNCTION_5_8(&v188);
          v178 = OUTLINED_FUNCTION_7_6(&v189);
          v181 = &v190;
          goto LABEL_22;
        case 2:
          LOBYTE(a10) = 5;
          sub_2706C03C0();
          OUTLINED_FUNCTION_5_8(&v200);
          v178 = OUTLINED_FUNCTION_7_6(&v201);
          v181 = &v202;
          goto LABEL_22;
        case 3:
          LOBYTE(a10) = 6;
          sub_2706C036C();
          OUTLINED_FUNCTION_5_8(&v203);
          v178 = OUTLINED_FUNCTION_7_6(&v204);
          v181 = &v205;
          goto LABEL_22;
        case 4:
          LOBYTE(a10) = 8;
          sub_2706C02C4();
          OUTLINED_FUNCTION_5_8(&v206);
          v178 = OUTLINED_FUNCTION_7_6(&a9);
          v181 = &a10;
          goto LABEL_22;
        case 5:
          LOBYTE(a10) = 10;
          sub_2706C01EC();
          OUTLINED_FUNCTION_5_8(&v191);
          v178 = OUTLINED_FUNCTION_7_6(&v192);
          v181 = &v193;
          goto LABEL_22;
        case 6:
          LOBYTE(a10) = 11;
          sub_2706C0198();
          OUTLINED_FUNCTION_5_8(&v194);
          v178 = OUTLINED_FUNCTION_7_6(&v195);
          v181 = &v196;
          goto LABEL_22;
        case 7:
          LOBYTE(a10) = 12;
          sub_2706C0144();
          OUTLINED_FUNCTION_5_8(&a11);
          v178 = OUTLINED_FUNCTION_7_6(&a12);
          v181 = &a13;
          goto LABEL_22;
        case 8:
          LOBYTE(a10) = 14;
          sub_2706C0064();
          OUTLINED_FUNCTION_5_8(&v197);
          v178 = OUTLINED_FUNCTION_7_6(&v198);
          v181 = &v199;
LABEL_22:
          v179 = *(v181 - 32);
          break;
        default:
          LOBYTE(a10) = 0;
          sub_2706C0564();
          v127 = v203;
          sub_2706E608C();
          v178 = OUTLINED_FUNCTION_8_8(&v187);
          break;
      }

      v180(v178, v179);
      OUTLINED_FUNCTION_15_7();
      v182(v177, v127);
      goto LABEL_10;
    default:
      v143 = swift_projectBox();
      v145 = v199;
      v144 = v200;
      (*(v199 + 16))(v129, v143, v200);
      LOBYTE(a10) = 1;
      sub_2706C0510();
      OUTLINED_FUNCTION_51_1();
      OUTLINED_FUNCTION_0_7();
      sub_2706BF718(v146);
      v147 = v183[26];
      sub_2706E60DC();
      OUTLINED_FUNCTION_11(&a14);
      v148(v119, v147);
      (*(v145 + 8))(v129, v144);
LABEL_5:
      OUTLINED_FUNCTION_15_7();
      v158 = OUTLINED_FUNCTION_26_3();
LABEL_9:
      v160(v158, v159);
LABEL_10:
      OUTLINED_FUNCTION_55();
      return;
  }
}

void sub_2706BAFCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, char a11, char a12, char a13, char a14, char a15, char a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27)
{
  OUTLINED_FUNCTION_60();
  a26 = v30;
  a27 = v31;
  v264 = v27;
  v33 = v32;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081D6C0, &qword_2706EBA00);
  v35 = OUTLINED_FUNCTION_4(v34);
  v245 = v36;
  v246 = v35;
  v38 = *(v37 + 64);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v39);
  OUTLINED_FUNCTION_13();
  v257 = v40;
  v247 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081D6C8, &qword_2706EBA08);
  OUTLINED_FUNCTION_4(v247);
  v259 = v41;
  v43 = *(v42 + 64);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v44);
  OUTLINED_FUNCTION_13();
  v258 = v45;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081D6D0, &qword_2706EBA10);
  OUTLINED_FUNCTION_2(v46, &a25);
  v243 = v47;
  v49 = *(v48 + 64);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v50);
  OUTLINED_FUNCTION_13();
  v256 = v51;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081D6D8, &qword_2706EBA18);
  OUTLINED_FUNCTION_2(v52, &a23);
  v241 = v53;
  v55 = *(v54 + 64);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v56);
  OUTLINED_FUNCTION_13();
  v255 = v57;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081D6E0, &qword_2706EBA20);
  OUTLINED_FUNCTION_2(v58, &a20);
  v237 = v59;
  v61 = *(v60 + 64);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v62);
  OUTLINED_FUNCTION_13();
  v254 = v63;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081D6E8, &qword_2706EBA28);
  OUTLINED_FUNCTION_2(v64, &a19);
  v240 = v65;
  v67 = *(v66 + 64);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v68);
  OUTLINED_FUNCTION_13();
  v253 = v69;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081D6F0, &qword_2706EBA30);
  OUTLINED_FUNCTION_2(v70, &a9);
  v234 = v71;
  v73 = *(v72 + 64);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v74);
  OUTLINED_FUNCTION_13();
  v252 = v75;
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081D6F8, &qword_2706EBA38);
  OUTLINED_FUNCTION_2(v76, v265);
  v236 = v77;
  v79 = *(v78 + 64);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v80);
  OUTLINED_FUNCTION_13();
  v262 = v81;
  v261 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081D700, &qword_2706EBA40);
  OUTLINED_FUNCTION_4(v261);
  v232 = v82;
  v84 = *(v83 + 64);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v85);
  OUTLINED_FUNCTION_13();
  v251 = v86;
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081D708, &qword_2706EBA48);
  OUTLINED_FUNCTION_2(v87, &v260);
  v230 = v88;
  v90 = *(v89 + 64);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v91);
  OUTLINED_FUNCTION_13();
  v260 = v92;
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081D710, &qword_2706EBA50);
  OUTLINED_FUNCTION_2(v93, &v258);
  v226 = v94;
  v96 = *(v95 + 64);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v97);
  OUTLINED_FUNCTION_13();
  v248 = v98;
  v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081D718, &qword_2706EBA58);
  OUTLINED_FUNCTION_2(v99, &v262);
  v231 = v100;
  v102 = *(v101 + 64);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v103);
  OUTLINED_FUNCTION_13();
  v250 = v104;
  v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081D720, &qword_2706EBA60);
  OUTLINED_FUNCTION_2(v105, &v259);
  v227 = v106;
  v108 = *(v107 + 64);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v109);
  OUTLINED_FUNCTION_13();
  v249 = v110;
  v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081D728, &qword_2706EBA68);
  OUTLINED_FUNCTION_2(v111, &v255);
  v225 = v112;
  v114 = *(v113 + 64);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v115);
  OUTLINED_FUNCTION_23_3();
  v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081D730, &qword_2706EBA70);
  OUTLINED_FUNCTION_4(v116);
  v224 = v117;
  v119 = *(v118 + 64);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v120);
  OUTLINED_FUNCTION_14_6();
  v121 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081D738, &qword_2706EBA78);
  OUTLINED_FUNCTION_4(v121);
  v123 = v122;
  v125 = *(v124 + 64);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v126);
  v128 = &v218 - v127;
  v129 = v33[3];
  v130 = v33[4];
  v263 = v33;
  OUTLINED_FUNCTION_47_1(v33, v129);
  sub_2706C0010();
  v131 = v264;
  sub_2706E668C();
  if (!v131)
  {
    v222 = v28;
    v221 = v116;
    v223 = v29;
    v133 = v260;
    v132 = v261;
    v264 = v123;
    v134 = sub_2706E606C();
    sub_270698614(v134, 0);
    if (v136 == v137 >> 1)
    {
      goto LABEL_7;
    }

    v220 = 0;
    if (v136 >= (v137 >> 1))
    {
      __break(1u);
      JUMPOUT(0x2706BC244);
    }

    v219 = *(v135 + v136);
    sub_270698610(v136 + 1);
    v139 = v138;
    v141 = v140;
    swift_unknownObjectRelease();
    if (v139 != v141 >> 1)
    {
LABEL_7:
      v147 = sub_2706E5E8C();
      swift_allocError();
      v149 = v148;
      v150 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081C988, &qword_2706E7F10) + 48);
      *v149 = &type metadata for PasteboardAcquisitionError;
      sub_2706E600C();
      OUTLINED_FUNCTION_59();
      (*(*(v147 - 8) + 104))(v149, *MEMORY[0x277D84160], v147);
      swift_willThrow();
      swift_unknownObjectRelease();
      v151 = OUTLINED_FUNCTION_4_7();
      v152(v151);
    }

    else
    {
      v142 = v259;
      switch(v219)
      {
        case 1:
          v265[2] = 1;
          sub_2706C0510();
          OUTLINED_FUNCTION_6_8();
          sub_2706E576C();
          swift_allocBox();
          OUTLINED_FUNCTION_0_7();
          sub_2706BF718(v175);
          OUTLINED_FUNCTION_38_2();
          OUTLINED_FUNCTION_22_4();
          swift_unknownObjectRelease();
          v161 = OUTLINED_FUNCTION_8_8(&v254);
          goto LABEL_23;
        case 2:
          v265[3] = 2;
          sub_2706C04BC();
          OUTLINED_FUNCTION_6_8();
          sub_2706E576C();
          swift_allocBox();
          OUTLINED_FUNCTION_0_7();
          sub_2706BF718(v171);
          OUTLINED_FUNCTION_38_2();
          OUTLINED_FUNCTION_22_4();
          swift_unknownObjectRelease();
          v198 = OUTLINED_FUNCTION_8_8(&v257);
          v199(v198);
          v200 = OUTLINED_FUNCTION_4_7();
          v201(v200);
          break;
        case 3:
          v265[4] = 3;
          sub_2706C0468();
          OUTLINED_FUNCTION_6_8();
          type metadata accessor for PasteboardDataTransferID(0);
          swift_allocBox();
          OUTLINED_FUNCTION_17_5();
          sub_2706BF718(v172);
          OUTLINED_FUNCTION_38_2();
          OUTLINED_FUNCTION_22_4();
          swift_unknownObjectRelease();
          v202 = OUTLINED_FUNCTION_8_8(&v263);
          v203(v202);
          v204 = OUTLINED_FUNCTION_4_7();
          v205(v204);
          break;
        case 4:
          v265[5] = 4;
          sub_2706C0414();
          OUTLINED_FUNCTION_6_8();
          swift_unknownObjectRelease();
          v161 = OUTLINED_FUNCTION_7_6(&v256);
          v163 = v228;
LABEL_23:
          v162(v161, v163);
          v213 = OUTLINED_FUNCTION_4_7();
          v214(v213);
          break;
        case 5:
          v265[6] = 5;
          sub_2706C03C0();
          OUTLINED_FUNCTION_6_8();
          swift_unknownObjectRelease();
          OUTLINED_FUNCTION_11(&v261);
          v176(v133, v229);
          v177 = OUTLINED_FUNCTION_4_7();
          v178(v177);
          OUTLINED_FUNCTION_28_2();
          break;
        case 6:
          v265[7] = 6;
          sub_2706C036C();
          OUTLINED_FUNCTION_6_8();
          swift_unknownObjectRelease();
          v180 = OUTLINED_FUNCTION_7_6(&v264);
          v181(v180, v132);
          v182 = OUTLINED_FUNCTION_4_7();
          v183(v182);
          OUTLINED_FUNCTION_28_2();
          break;
        case 7:
          a10 = 7;
          sub_2706C0318();
          OUTLINED_FUNCTION_6_8();
          v173 = swift_allocObject();
          v174 = v233;
          OUTLINED_FUNCTION_19_8();
          v206 = sub_2706E603C();
          v208 = v207;
          swift_unknownObjectRelease();
          v209 = OUTLINED_FUNCTION_9_7(&a10);
          v210(v209, v174);
          v211 = OUTLINED_FUNCTION_4_7();
          v212(v211);
          *(v173 + 16) = v206;
          *(v173 + 24) = v208;
          break;
        case 8:
          a11 = 8;
          sub_2706C02C4();
          OUTLINED_FUNCTION_6_8();
          swift_unknownObjectRelease();
          v188 = OUTLINED_FUNCTION_9_7(&v266);
          v189(v188, v235);
          v190 = OUTLINED_FUNCTION_4_7();
          v191(v190);
          OUTLINED_FUNCTION_28_2();
          break;
        case 9:
          a12 = 9;
          sub_2706C0240();
          v168 = v253;
          OUTLINED_FUNCTION_6_8();
          v169 = swift_allocObject();
          v170 = v238;
          v192 = sub_2706E603C();
          v194 = v193;
          swift_unknownObjectRelease();
          OUTLINED_FUNCTION_11(&a21);
          v195(v168, v170);
          v196 = OUTLINED_FUNCTION_4_7();
          v197(v196);
          *(v169 + 16) = v192;
          *(v169 + 24) = v194;
          break;
        case 10:
          a13 = 10;
          sub_2706C01EC();
          OUTLINED_FUNCTION_6_8();
          swift_unknownObjectRelease();
          v184 = OUTLINED_FUNCTION_9_7(&a18);
          v185(v184, v239);
          v186 = OUTLINED_FUNCTION_4_7();
          v187(v186);
          OUTLINED_FUNCTION_28_2();
          break;
        case 11:
          a14 = 11;
          sub_2706C0198();
          OUTLINED_FUNCTION_6_8();
          swift_unknownObjectRelease();
          v157 = OUTLINED_FUNCTION_9_7(&a22);
          v158(v157, v242);
          v159 = OUTLINED_FUNCTION_4_7();
          v160(v159);
          OUTLINED_FUNCTION_28_2();
          break;
        case 12:
          a15 = 12;
          sub_2706C0144();
          OUTLINED_FUNCTION_6_8();
          swift_unknownObjectRelease();
          v164 = OUTLINED_FUNCTION_9_7(&a24);
          v165(v164, v244);
          v166 = OUTLINED_FUNCTION_4_7();
          v167(v166);
          OUTLINED_FUNCTION_28_2();
          break;
        case 13:
          a16 = 13;
          sub_2706C00B8();
          OUTLINED_FUNCTION_6_8();
          swift_allocObject();
          sub_270687340();
          OUTLINED_FUNCTION_36_2();
          sub_2706E605C();
          v179 = v264;
          swift_unknownObjectRelease();
          v215 = *(v142 + 8);
          v216 = OUTLINED_FUNCTION_51();
          v217(v216);
          (*(v179 + 8))(v128, v121);
          break;
        case 14:
          a17 = 14;
          sub_2706C0064();
          OUTLINED_FUNCTION_6_8();
          swift_unknownObjectRelease();
          v153 = OUTLINED_FUNCTION_18_4();
          v154(v153);
          v155 = OUTLINED_FUNCTION_4_7();
          v156(v155);
          OUTLINED_FUNCTION_28_2();
          break;
        default:
          v265[1] = 0;
          sub_2706C0564();
          OUTLINED_FUNCTION_6_8();
          swift_unknownObjectRelease();
          v143 = OUTLINED_FUNCTION_9_7(&v253);
          v144(v143, v221);
          v145 = OUTLINED_FUNCTION_4_7();
          v146(v145);
          break;
      }
    }
  }

  __swift_destroy_boxed_opaque_existential_1(v263);
  OUTLINED_FUNCTION_55();
}

uint64_t sub_2706BC280(uint64_t a1)
{
  v2 = sub_2706C0198();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2706BC2BC(uint64_t a1)
{
  v2 = sub_2706C0198();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2706BC300@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2706B998C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2706BC328@<X0>(_BYTE *a1@<X8>)
{
  result = sub_2706B9E38();
  *a1 = result;
  return result;
}

uint64_t sub_2706BC350(uint64_t a1)
{
  v2 = sub_2706C0010();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2706BC38C(uint64_t a1)
{
  v2 = sub_2706C0010();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2706BC3C8(uint64_t a1)
{
  v2 = sub_2706C036C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2706BC404(uint64_t a1)
{
  v2 = sub_2706C036C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2706BC440(uint64_t a1)
{
  v2 = sub_2706C0064();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2706BC47C(uint64_t a1)
{
  v2 = sub_2706C0064();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2706BC4B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2706BA04C(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_2706BC4E4(uint64_t a1)
{
  v2 = sub_2706C0510();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2706BC520(uint64_t a1)
{
  v2 = sub_2706C0510();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2706BC55C(uint64_t a1)
{
  v2 = sub_2706C0564();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2706BC598(uint64_t a1)
{
  v2 = sub_2706C0564();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2706BC5D4(uint64_t a1)
{
  v2 = sub_2706C0414();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2706BC610(uint64_t a1)
{
  v2 = sub_2706C0414();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2706BC64C(uint64_t a1)
{
  v2 = sub_2706C04BC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2706BC688(uint64_t a1)
{
  v2 = sub_2706C04BC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2706BC6C4(uint64_t a1)
{
  v2 = sub_2706C0468();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2706BC700(uint64_t a1)
{
  v2 = sub_2706C0468();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2706BC73C(uint64_t a1)
{
  v2 = sub_2706C0318();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2706BC778(uint64_t a1)
{
  v2 = sub_2706C0318();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2706BC7B4(uint64_t a1)
{
  v2 = sub_2706C02C4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2706BC7F0(uint64_t a1)
{
  v2 = sub_2706C02C4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2706BC82C(uint64_t a1)
{
  v2 = sub_2706C00B8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2706BC868(uint64_t a1)
{
  v2 = sub_2706C00B8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2706BC8A4(uint64_t a1)
{
  v2 = sub_2706C0240();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2706BC8E0(uint64_t a1)
{
  v2 = sub_2706C0240();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2706BC91C(uint64_t a1)
{
  v2 = sub_2706C0144();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2706BC958(uint64_t a1)
{
  v2 = sub_2706C0144();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2706BC994(uint64_t a1)
{
  v2 = sub_2706C01EC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2706BC9D0(uint64_t a1)
{
  v2 = sub_2706C01EC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2706BCA0C(uint64_t a1)
{
  v2 = sub_2706C03C0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2706BCA48(uint64_t a1)
{
  v2 = sub_2706C03C0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2706BCAE4()
{
  v0 = sub_2706E5FEC();

  if (v0 >= 5)
  {
    return 5;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_2706BCB30(char a1)
{
  result = 25705;
  switch(a1)
  {
    case 1:
      result = 1701667182;
      break;
    case 2:
      result = 0x726564726FLL;
      break;
    case 3:
      result = 0x6E65644965707974;
      break;
    case 4:
      result = 0x7079547265707573;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_2706BCBEC(char a1)
{
  sub_2706E65EC();
  sub_2706BCB30(a1);
  sub_2706E5A6C();

  return sub_2706E660C();
}

uint64_t sub_2706BCC58()
{
  sub_2706E5A6C();
}

uint64_t sub_2706BCD3C(uint64_t a1, char a2)
{
  sub_2706E65EC();
  sub_2706BCB30(a2);
  sub_2706E5A6C();

  return sub_2706E660C();
}

uint64_t sub_2706BCD9C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_2706BCAE4();
  *a2 = result;
  return result;
}

uint64_t sub_2706BCDCC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2706BCB30(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_2706BCE00@<X0>(_BYTE *a1@<X8>)
{
  result = sub_2706BCAE4();
  *a1 = result;
  return result;
}

uint64_t sub_2706BCE28(uint64_t a1)
{
  v2 = sub_2706BFCC8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2706BCE64(uint64_t a1)
{
  v2 = sub_2706BFCC8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2706BCEA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = sub_2706E576C();
  v14 = OUTLINED_FUNCTION_4(v13);
  v16 = v15;
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_3_0();
  v21 = v20 - v19;
  v22 = v7 + OBJC_IVAR____TtC13UniversalDrag24PasteboardRepresentation_context;
  *v22 = 0u;
  *(v22 + 16) = 0u;
  *(v22 + 32) = 0;
  sub_2706E575C();
  (*(v16 + 32))(v7 + OBJC_IVAR____TtC13UniversalDrag24PasteboardRepresentation_id, v21, v13);
  swift_beginAccess();
  sub_2706C0670(a7, v22);
  swift_endAccess();
  v23 = (v7 + OBJC_IVAR____TtC13UniversalDrag24PasteboardRepresentation_name);
  *v23 = a5;
  v23[1] = a6;
  *(v7 + OBJC_IVAR____TtC13UniversalDrag24PasteboardRepresentation_order) = a1;
  *(v7 + OBJC_IVAR____TtC13UniversalDrag24PasteboardRepresentation_superTypes) = a4;
  v24 = (v7 + OBJC_IVAR____TtC13UniversalDrag24PasteboardRepresentation_typeIdentifier);
  *v24 = a2;
  v24[1] = a3;
  return v7;
}

uint64_t sub_2706BD038(uint64_t a1, void (*a2)(uint64_t))
{
  v5 = *(v2 + 48);
  v6 = *(v2 + 52);
  v7 = swift_allocObject();
  a2(a1);
  return v7;
}

void sub_2706BD090()
{
  OUTLINED_FUNCTION_60();
  v2 = v0;
  v4 = v3;
  OUTLINED_FUNCTION_48_1();
  v5 = sub_2706E576C();
  v6 = OUTLINED_FUNCTION_4(v5);
  v28 = v7;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_3_0();
  v29 = v11 - v10;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081D860, &qword_2706EBB08);
  OUTLINED_FUNCTION_4(v30);
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_16_4();
  v15 = v0 + OBJC_IVAR____TtC13UniversalDrag24PasteboardRepresentation_context;
  *v15 = 0u;
  *(v15 + 16) = 0u;
  *(v15 + 32) = 0;
  v16 = v4[4];
  OUTLINED_FUNCTION_47_1(v4, v4[3]);
  sub_2706BFCC8();
  sub_2706E668C();
  if (v1)
  {
    sub_2706A64F4(v0 + OBJC_IVAR____TtC13UniversalDrag24PasteboardRepresentation_context, &qword_28081D278, &qword_2706EBB10);
    v19 = *(*v0 + 48);
    v20 = *(*v0 + 52);
    swift_deallocPartialClassInstance();
    v21 = v4;
  }

  else
  {
    LOBYTE(v31[0]) = 0;
    OUTLINED_FUNCTION_0_7();
    sub_2706BF718(v17);
    sub_2706E605C();
    (*(v28 + 32))(v0 + OBJC_IVAR____TtC13UniversalDrag24PasteboardRepresentation_id, v29, v5);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081D620, &qword_2706EB9A0);
    sub_2706C060C(&unk_28081D868);
    OUTLINED_FUNCTION_27_3();
    sub_2706E605C();
    *(v0 + OBJC_IVAR____TtC13UniversalDrag24PasteboardRepresentation_name) = v31[0];
    *(v0 + OBJC_IVAR____TtC13UniversalDrag24PasteboardRepresentation_order) = sub_2706E604C();
    LOBYTE(v31[0]) = 3;
    v18 = sub_2706E603C();
    v22 = (v0 + OBJC_IVAR____TtC13UniversalDrag24PasteboardRepresentation_typeIdentifier);
    *v22 = v18;
    v22[1] = v23;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081D5F8, &qword_2706EB988);
    sub_2706BFD1C(&unk_28081D870);
    OUTLINED_FUNCTION_27_3();
    sub_2706E601C();
    if (*&v31[0])
    {
      v24 = *&v31[0];
    }

    else
    {
      v24 = MEMORY[0x277D84F90];
    }

    v25 = OUTLINED_FUNCTION_43_1();
    v26(v25);
    *(v2 + OBJC_IVAR____TtC13UniversalDrag24PasteboardRepresentation_superTypes) = v24;
    v32 = 0;
    memset(v31, 0, sizeof(v31));
    v27 = OBJC_IVAR____TtC13UniversalDrag24PasteboardRepresentation_context;
    swift_beginAccess();
    sub_2706C0670(v31, v2 + v27);
    swift_endAccess();
    v21 = v4;
  }

  __swift_destroy_boxed_opaque_existential_1(v21);
  OUTLINED_FUNCTION_55();
}

uint64_t sub_2706BD54C()
{
  OUTLINED_FUNCTION_40_0();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081D610, &qword_2706EB998);
  OUTLINED_FUNCTION_4(v3);
  v5 = v4;
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_14_6();
  v9 = v0[4];
  OUTLINED_FUNCTION_47_1(v0, v0[3]);
  sub_2706BFCC8();
  OUTLINED_FUNCTION_13_5();
  sub_2706E576C();
  OUTLINED_FUNCTION_0_7();
  sub_2706BF718(v10);
  OUTLINED_FUNCTION_16_8();
  if (!v1)
  {
    v18 = *(v2 + OBJC_IVAR____TtC13UniversalDrag24PasteboardRepresentation_name);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081D620, &qword_2706EB9A0);
    sub_2706C060C(&unk_28081D628);
    OUTLINED_FUNCTION_16_8();
    v11 = *(v2 + OBJC_IVAR____TtC13UniversalDrag24PasteboardRepresentation_order);
    OUTLINED_FUNCTION_19_8();
    sub_2706E60CC();
    v19 = *(v2 + OBJC_IVAR____TtC13UniversalDrag24PasteboardRepresentation_superTypes);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081D5F8, &qword_2706EB988);
    sub_2706BFD1C(&unk_28081D630);
    OUTLINED_FUNCTION_16_8();
    v12 = *(v2 + OBJC_IVAR____TtC13UniversalDrag24PasteboardRepresentation_typeIdentifier);
    v13 = *(v2 + OBJC_IVAR____TtC13UniversalDrag24PasteboardRepresentation_typeIdentifier + 8);
    OUTLINED_FUNCTION_19_8();
    sub_2706E60BC();
  }

  v14 = *(v5 + 8);
  v15 = OUTLINED_FUNCTION_26_3();
  return v16(v15);
}

uint64_t sub_2706BD7C0()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081D208, &qword_2706EA040);
  OUTLINED_FUNCTION_16_3(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_23_3();
  v6 = sub_2706E589C();
  v7 = OUTLINED_FUNCTION_4(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v7);
  v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v25 - v15;
  v17 = v0 + OBJC_IVAR____TtC13UniversalDrag24PasteboardRepresentation_typeIdentifier;
  v18 = *(v0 + OBJC_IVAR____TtC13UniversalDrag24PasteboardRepresentation_typeIdentifier);
  v19 = *(v17 + 8);

  sub_2706E58AC();
  OUTLINED_FUNCTION_66(v1);
  if (v20)
  {
    sub_2706A64F4(v1, &qword_28081D208, &qword_2706EA040);
    v21 = 0;
  }

  else
  {
    (*(v9 + 32))(v16, v1, v6);
    sub_2706E583C();
    v21 = sub_2706E585C();
    v22 = *(v9 + 8);
    v22(v14, v6);
    v23 = OUTLINED_FUNCTION_26_3();
    (v22)(v23);
  }

  return v21 & 1;
}

uint64_t sub_2706BD978()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081D208, &qword_2706EA040);
  OUTLINED_FUNCTION_16_3(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_14_6();
  v6 = sub_2706E589C();
  v7 = OUTLINED_FUNCTION_4(v6);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_3_0();
  v12 = v11 - v10;
  v13 = v0 + OBJC_IVAR____TtC13UniversalDrag24PasteboardRepresentation_typeIdentifier;
  v14 = *(v0 + OBJC_IVAR____TtC13UniversalDrag24PasteboardRepresentation_typeIdentifier);
  v15 = *(v13 + 8);

  sub_2706E58AC();
  OUTLINED_FUNCTION_66(v1);
  if (v16)
  {
    sub_2706A64F4(v1, &qword_28081D208, &qword_2706EA040);
    v19 = 1;
  }

  else
  {
    v17 = OUTLINED_FUNCTION_45_1();
    v18(v17);
    v19 = v12;
    sub_2706E588C();
    v20 = OUTLINED_FUNCTION_57_0();
    v21(v20);
  }

  return v19 & 1;
}

uint64_t sub_2706BDAC8()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081D208, &qword_2706EA040);
  OUTLINED_FUNCTION_16_3(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_14_6();
  v6 = sub_2706E589C();
  v7 = OUTLINED_FUNCTION_4(v6);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_3_0();
  v12 = v11 - v10;
  v13 = v0 + OBJC_IVAR____TtC13UniversalDrag24PasteboardRepresentation_typeIdentifier;
  v14 = *(v0 + OBJC_IVAR____TtC13UniversalDrag24PasteboardRepresentation_typeIdentifier);
  v15 = *(v13 + 8);

  sub_2706E58AC();
  OUTLINED_FUNCTION_66(v1);
  if (v16)
  {
    sub_2706A64F4(v1, &qword_28081D208, &qword_2706EA040);
    v19 = 0;
  }

  else
  {
    v17 = OUTLINED_FUNCTION_45_1();
    v18(v17);
    v19 = v12;
    sub_2706E587C();
    v20 = OUTLINED_FUNCTION_57_0();
    v21(v20);
  }

  return v19 & 1;
}

uint64_t sub_2706BDC18()
{
  v0 = sub_2706BDAC8();
  v1 = sub_2706BD978();
  v2 = 1;
  if (v0)
  {
    v2 = 2;
  }

  if (v1)
  {
    return v0 & 1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_2706BDC60()
{
  v1 = OBJC_IVAR____TtC13UniversalDrag24PasteboardRepresentation_id;
  v2 = sub_2706E576C();
  OUTLINED_FUNCTION_6_0(v2);
  (*(v3 + 8))(v0 + v1);
  v4 = *(v0 + OBJC_IVAR____TtC13UniversalDrag24PasteboardRepresentation_name + 8);

  v5 = *(v0 + OBJC_IVAR____TtC13UniversalDrag24PasteboardRepresentation_typeIdentifier + 8);

  v6 = *(v0 + OBJC_IVAR____TtC13UniversalDrag24PasteboardRepresentation_superTypes);

  sub_2706A64F4(v0 + OBJC_IVAR____TtC13UniversalDrag24PasteboardRepresentation_context, &qword_28081D278, &qword_2706EBB10);
  return v0;
}

uint64_t sub_2706BDD10()
{
  sub_2706BDC60();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t sub_2706BDD90()
{
  result = sub_2706E576C();
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

uint64_t sub_2706BDE58@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_2706BD00C(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_2706BDEA8@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC13UniversalDrag24PasteboardRepresentation_id;
  v5 = sub_2706E576C();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

uint64_t sub_2706BDF24()
{
  v1 = *v0;
  sub_2706E5E3C();
  v2 = sub_2706E671C();

  MEMORY[0x2743A5EF0](541346080, 0xE400000000000000);
  sub_2706E576C();
  OUTLINED_FUNCTION_0_7();
  sub_2706BF718(v3);
  v4 = sub_2706E611C();
  MEMORY[0x2743A5EF0](v4);

  MEMORY[0x2743A5EF0](0x27205455202CLL, 0xE600000000000000);
  MEMORY[0x2743A5EF0](*(v0 + OBJC_IVAR____TtC13UniversalDrag24PasteboardRepresentation_typeIdentifier), *(v0 + OBJC_IVAR____TtC13UniversalDrag24PasteboardRepresentation_typeIdentifier + 8));
  MEMORY[0x2743A5EF0](39, 0xE100000000000000);
  return v2;
}

uint64_t sub_2706BE06C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E65736572706572 && a2 == 0xEF736E6F69746174;
  if (v4 || (OUTLINED_FUNCTION_8_3() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000011 && 0x80000002706F0AB0 == a2)
  {

    return 1;
  }

  else
  {
    v7 = OUTLINED_FUNCTION_8_3();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_2706BE12C(char a1)
{
  if (a1)
  {
    return 0xD000000000000011;
  }

  else
  {
    return 0x6E65736572706572;
  }
}

uint64_t sub_2706BE1A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2706BE06C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2706BE1D4(uint64_t a1)
{
  v2 = sub_2706BFD80();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2706BE210(uint64_t a1)
{
  v2 = sub_2706BFD80();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2706BE24C(char a1)
{
  if (!a1)
  {
    return 0x6E776F6E6B6E75;
  }

  if (a1 == 1)
  {
    return 0x656E696C6E69;
  }

  return 0x656D686361747461;
}

uint64_t sub_2706BE2A8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E776F6E6B6E75 && a2 == 0xE700000000000000;
  if (v4 || (sub_2706E631C() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x656E696C6E69 && a2 == 0xE600000000000000;
    if (v6 || (sub_2706E631C() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x656D686361747461 && a2 == 0xEA0000000000746ELL)
    {

      return 2;
    }

    else
    {
      v8 = sub_2706E631C();

      if (v8)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

void sub_2706BE3BC()
{
  OUTLINED_FUNCTION_60();
  v44 = v1;
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081D6A0, &qword_2706EB9E0);
  v5 = OUTLINED_FUNCTION_4(v4);
  v42 = v6;
  v43 = v5;
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_13();
  v41 = v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081D6A8, &qword_2706EB9E8);
  v12 = OUTLINED_FUNCTION_4(v11);
  v39 = v13;
  v40 = v12;
  v15 = *(v14 + 64);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v16);
  v18 = &v37 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081D6B0, &qword_2706EB9F0);
  OUTLINED_FUNCTION_4(v19);
  v38 = v20;
  v22 = *(v21 + 64);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v23);
  v25 = &v37 - v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081D6B8, &qword_2706EB9F8);
  OUTLINED_FUNCTION_4(v26);
  v28 = v27;
  v30 = *(v29 + 64);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_16_4();
  v32 = v3[4];
  OUTLINED_FUNCTION_47_1(v3, v3[3]);
  sub_2706BFEC0();
  sub_2706E66AC();
  v33 = (v28 + 8);
  if (v44)
  {
    if (v44 == 1)
    {
      sub_2706BFF68();
      OUTLINED_FUNCTION_53_1();
      (*(v39 + 8))(v18, v40);
    }

    else
    {
      sub_2706BFF14();
      OUTLINED_FUNCTION_53_1();
      v34 = OUTLINED_FUNCTION_18_4();
      v36(v34, v35);
    }
  }

  else
  {
    sub_2706BFFBC();
    OUTLINED_FUNCTION_53_1();
    (*(v38 + 8))(v25, v19);
  }

  (*v33)(v0, v26);
  OUTLINED_FUNCTION_55();
}

void sub_2706BE6B4()
{
  OUTLINED_FUNCTION_60();
  v73 = v0;
  v4 = v3;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081D660, &qword_2706EB9B8);
  OUTLINED_FUNCTION_4(v72);
  v70 = v5;
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_13();
  v68 = v9;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081D668, &qword_2706EB9C0);
  OUTLINED_FUNCTION_4(v69);
  v67 = v10;
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v13);
  v15 = v64 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081D670, &qword_2706EB9C8);
  OUTLINED_FUNCTION_4(v16);
  v66 = v17;
  v19 = *(v18 + 64);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_16_4();
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081D678, &unk_2706EB9D0);
  OUTLINED_FUNCTION_4(v21);
  v71 = v22;
  v24 = *(v23 + 64);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_23_3();
  v26 = v4[4];
  OUTLINED_FUNCTION_47_1(v4, v4[3]);
  sub_2706BFEC0();
  v27 = v73;
  sub_2706E668C();
  if (v27)
  {
    goto LABEL_12;
  }

  v64[0] = v16;
  v64[1] = v2;
  v64[2] = v15;
  v65 = 0;
  v28 = v72;
  v73 = v4;
  v29 = v1;
  v30 = sub_2706E606C();
  sub_270698614(v30, 0);
  v34 = v21;
  if (v32 == v33 >> 1)
  {
    goto LABEL_10;
  }

  if (v32 < (v33 >> 1))
  {
    v35 = v21;
    v36 = *(v31 + v32);
    v37 = sub_270698610(v32 + 1);
    v39 = v38;
    v41 = v40;
    swift_unknownObjectRelease();
    v42 = v69;
    v43 = v70;
    if (v39 == v41 >> 1)
    {
      if (v36)
      {
        v66 = v37;
        v44 = v65;
        if (v36 == 1)
        {
          sub_2706BFF68();
          OUTLINED_FUNCTION_34_3();
          sub_2706E5FFC();
          if (!v44)
          {
            swift_unknownObjectRelease();
            v45 = OUTLINED_FUNCTION_18_4();
            v46(v45, v42);
            v47 = OUTLINED_FUNCTION_35_1();
            v48(v47);
LABEL_21:
            __swift_destroy_boxed_opaque_existential_1(v73);
            goto LABEL_13;
          }
        }

        else
        {
          LODWORD(v69) = v36;
          sub_2706BFF14();
          v56 = v68;
          OUTLINED_FUNCTION_34_3();
          sub_2706E5FFC();
          if (!v44)
          {
            swift_unknownObjectRelease();
            (*(v43 + 8))(v56, v28);
            v62 = OUTLINED_FUNCTION_35_1();
            v63(v62);
            goto LABEL_21;
          }
        }

        v57 = OUTLINED_FUNCTION_35_1();
        v58(v57);
      }

      else
      {
        sub_2706BFFBC();
        OUTLINED_FUNCTION_34_3();
        v54 = v65;
        sub_2706E5FFC();
        if (!v54)
        {
          swift_unknownObjectRelease();
          v59 = OUTLINED_FUNCTION_18_4();
          v60(v59, v64[0]);
          OUTLINED_FUNCTION_15_7();
          v61(v29, v35);
          goto LABEL_21;
        }

        OUTLINED_FUNCTION_15_7();
        v55(v29, v35);
      }

      swift_unknownObjectRelease();
      goto LABEL_11;
    }

    v34 = v35;
LABEL_10:
    v49 = sub_2706E5E8C();
    swift_allocError();
    v51 = v50;
    v52 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081C988, &qword_2706E7F10) + 48);
    *v51 = &type metadata for PasteboardItem.PresentationStyle;
    sub_2706E600C();
    OUTLINED_FUNCTION_59();
    (*(*(v49 - 8) + 104))(v51, *MEMORY[0x277D84160], v49);
    swift_willThrow();
    swift_unknownObjectRelease();
    OUTLINED_FUNCTION_15_7();
    v53(v29, v34);
LABEL_11:
    v4 = v73;
LABEL_12:
    __swift_destroy_boxed_opaque_existential_1(v4);
LABEL_13:
    OUTLINED_FUNCTION_55();
    return;
  }

  __break(1u);
}