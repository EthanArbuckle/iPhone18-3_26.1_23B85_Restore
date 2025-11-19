uint64_t sub_21BA29F48()
{
  v0 = sub_21BA8875C();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_21BA29F94()
{
  result = qword_27CD9EF30;
  if (!qword_27CD9EF30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CD9EF00);
    sub_21BA2A020();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD9EF30);
  }

  return result;
}

unint64_t sub_21BA2A020()
{
  result = qword_27CD9EF38;
  if (!qword_27CD9EF38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CD9EEF8);
    sub_21BA2A0AC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD9EF38);
  }

  return result;
}

unint64_t sub_21BA2A0AC()
{
  result = qword_27CD9EF40;
  if (!qword_27CD9EF40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CD9EF28);
    sub_21BA2A164();
    sub_21B9B35B8(&qword_27CD9EF50, &qword_27CD9EF58);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD9EF40);
  }

  return result;
}

unint64_t sub_21BA2A164()
{
  result = qword_27CD9EF48;
  if (!qword_27CD9EF48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CD9EF20);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CD9EEF0);
    sub_21B9B35B8(&qword_27CD9EF18, &qword_27CD9EEF0);
    swift_getOpaqueTypeConformance2();
    sub_21B9B35B8(&qword_27CD9E3E0, &qword_27CD9E3E8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD9EF48);
  }

  return result;
}

unint64_t sub_21BA2A28C()
{
  result = qword_27CD9EF68;
  if (!qword_27CD9EF68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD9EF68);
  }

  return result;
}

uint64_t sub_21BA2A2E0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BannerRowElement();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_21BA2A348()
{
  result = qword_27CD9EF78;
  if (!qword_27CD9EF78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD9EF78);
  }

  return result;
}

unint64_t sub_21BA2A3A0()
{
  result = qword_27CD9EF80;
  if (!qword_27CD9EF80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD9EF80);
  }

  return result;
}

unint64_t sub_21BA2A3F8()
{
  result = qword_27CD9EF88;
  if (!qword_27CD9EF88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD9EF88);
  }

  return result;
}

void sub_21BA2A490()
{
  if (!qword_27CD9EF90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CD9EF98);
    v0 = sub_21BA86A5C();
    if (!v1)
    {
      atomic_store(v0, &qword_27CD9EF90);
    }
  }
}

uint64_t sub_21BA2A504(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void __swiftcall RUIDecodingUserInfo.init()(RUIDecodingUserInfo *__return_ptr retstr)
{
  v1 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  [v1 init];
}

id RUIDecodingUserInfo.init()()
{
  *(v0 + OBJC_IVAR___RUIDecodingUserInfo_values) = MEMORY[0x277D84F98];
  v2.super_class = RUIDecodingUserInfo;
  return objc_msgSendSuper2(&v2, sel_init);
}

uint64_t RUIDecodingUserInfo.subscript.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = sub_21BA883CC();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = v22 - v12;
  v14 = OBJC_IVAR___RUIDecodingUserInfo_values;
  swift_beginAccess();
  v15 = *(v4 + v14);
  if (*(v15 + 16) && (v16 = sub_21BA2B3D4(a1), (v17 & 1) != 0))
  {
    sub_21B9AFDF0(*(v15 + 56) + 32 * v16, v22);
  }

  else
  {
    memset(v22, 0, sizeof(v22));
  }

  swift_endAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9E7C0);
  v18 = swift_dynamicCast();
  v19 = *(AssociatedTypeWitness - 8);
  v20 = *(v19 + 56);
  if (v18)
  {
    v20(v13, 0, 1, AssociatedTypeWitness);
    return (*(v19 + 32))(a4, v13, AssociatedTypeWitness);
  }

  else
  {
    v20(v13, 1, 1, AssociatedTypeWitness);
    (*(a3 + 16))(a2, a3);
    result = (*(v19 + 48))(v13, 1, AssociatedTypeWitness);
    if (result != 1)
    {
      return (*(v11 + 8))(v13, v10);
    }
  }

  return result;
}

uint64_t RUIDecodingUserInfo.subscript.setter(uint64_t a1, uint64_t a2)
{
  sub_21BA2BB7C(a1, a2);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4 = *(*(AssociatedTypeWitness - 8) + 8);

  return v4(a1, AssociatedTypeWitness);
}

_OWORD *sub_21BA2A92C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (*(a1 + 24))
  {
    sub_21B9AFF70(a1, v14);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v2;
    result = sub_21BA2B86C(v14, a2, isUniquelyReferenced_nonNull_native);
    *v2 = v12;
  }

  else
  {
    sub_21B9BE5E4(a1);
    v7 = sub_21BA2B3D4(a2);
    if (v8)
    {
      v9 = v7;
      v10 = swift_isUniquelyReferenced_nonNull_native();
      v11 = *v2;
      v13 = *v3;
      if (!v10)
      {
        sub_21BA2BA00();
        v11 = v13;
      }

      sub_21B9AFF70((*(v11 + 56) + 32 * v9), v14);
      sub_21BA2B6FC(v9, v11);
      *v3 = v11;
    }

    else
    {
      memset(v14, 0, sizeof(v14));
    }

    return sub_21B9BE5E4(v14);
  }

  return result;
}

void (*RUIDecodingUserInfo.subscript.modify(void *a1, uint64_t a2, uint64_t a3, uint64_t a4))(uint64_t **a1, char a2)
{
  v9 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v10 = malloc(0x40uLL);
  }

  v11 = v10;
  *a1 = v10;
  v10[2] = a4;
  v10[3] = v4;
  *v10 = a2;
  v10[1] = a3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11[4] = AssociatedTypeWitness;
  v13 = *(AssociatedTypeWitness - 8);
  v11[5] = v13;
  v14 = *(v13 + 64);
  if (v9)
  {
    v11[6] = swift_coroFrameAlloc();
    v15 = swift_coroFrameAlloc();
  }

  else
  {
    v11[6] = malloc(*(v13 + 64));
    v15 = malloc(v14);
  }

  v11[7] = v15;
  RUIDecodingUserInfo.subscript.getter(a2, a3, a4, v15);
  return sub_21BA2AB50;
}

void sub_21BA2AB50(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[6];
  v4 = (*a1)[7];
  v5 = (*a1)[4];
  v6 = (*a1)[5];
  v7 = **a1;
  if (a2)
  {
    (*(v6 + 16))((*a1)[6], v4, v5);
    sub_21BA2BB7C(v3, v7);
    v8 = *(v6 + 8);
    v8(v3, v5);
    v8(v4, v5);
  }

  else
  {
    sub_21BA2BB7C((*a1)[7], v7);
    (*(v6 + 8))(v4, v5);
  }

  free(v4);
  free(v3);

  free(v2);
}

id sub_21BA2AC58()
{
  result = [objc_allocWithZone(RUIDecodingUserInfo) init];
  qword_27CDAB1F8 = result;
  return result;
}

id sub_21BA2AC8C@<X0>(void *a1@<X8>)
{
  if (qword_27CDAB1F0 != -1)
  {
    v4 = a1;
    swift_once();
    a1 = v4;
  }

  v2 = qword_27CDAB1F8;
  *a1 = qword_27CDAB1F8;

  return v2;
}

uint64_t sub_21BA2ACFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_21BA2BEC4();

  return MEMORY[0x282130D38](a1, a2, a3, a4, v8);
}

uint64_t EnvironmentValues.ruiDecodingUserInfo.getter()
{
  sub_21BA2BC44();
  sub_21BA86EAC();
  return v1;
}

void (*EnvironmentValues.ruiDecodingUserInfo.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 16) = v1;
  *(a1 + 24) = sub_21BA2BC44();
  sub_21BA86EAC();
  return sub_21BA2AE38;
}

void sub_21BA2AE38(uint64_t a1, char a2)
{
  v2 = *a1;
  *(a1 + 8) = *a1;
  if (a2)
  {
    v4 = v2;
    sub_21BA86EBC();
    v5 = *a1;
  }

  else
  {
    sub_21BA86EBC();
  }
}

uint64_t sub_21BA2AECC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v6 = *v2;
  v5 = v2[1];
  KeyPath = swift_getKeyPath();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9F000);
  (*(*(v8 - 8) + 16))(a2, a1, v8);
  v9 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9F008) + 36));
  *v9 = KeyPath;
  v9[1] = v6;
  v9[2] = v5;
}

uint64_t View.ruiDecodingUserInfo<A>(_:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v22 = a7;
  v21 = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v13 = *(AssociatedTypeWitness - 8);
  v14 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v16 = &v20 - v15;
  (*(v13 + 16))(&v20 - v15, a2, AssociatedTypeWitness, v14);
  v17 = (*(v13 + 80) + 56) & ~*(v13 + 80);
  v18 = swift_allocObject();
  *(v18 + 2) = a3;
  *(v18 + 3) = a4;
  *(v18 + 4) = a5;
  *(v18 + 5) = a6;
  *(v18 + 6) = v21;
  (*(v13 + 32))(&v18[v17], v16, AssociatedTypeWitness);
  v23[0] = sub_21BA2BC98;
  v23[1] = v18;
  MEMORY[0x21CEFCB90](v23, a3, &type metadata for TransformDecodingUserInfoModifier, a5);
}

uint64_t View.ruiDecodingUserInfo<A>(_:_:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(*a1 + *MEMORY[0x277D84568] + 8);
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](a1);
  v11 = v15 - v10;
  (*(v8 + 16))(v15 - v10, v9);
  v12 = (*(v8 + 80) + 48) & ~*(v8 + 80);
  v13 = swift_allocObject();
  *(v13 + 2) = a3;
  *(v13 + 3) = v7;
  *(v13 + 4) = a4;
  *(v13 + 5) = a1;
  (*(v8 + 32))(&v13[v12], v11, v7);
  v15[0] = sub_21BA2BD30;
  v15[1] = v13;

  MEMORY[0x21CEFCB90](v15, a3, &type metadata for TransformDecodingUserInfoModifier, a4);
}

void sub_21BA2B2C4(uint64_t a1)
{
  v1 = MEMORY[0x28223BE20](a1);
  v3 = *v2;
  (*(v4 + 16))(v8 - v5, v6, v1);
  v8[1] = v3;
  v7 = v3;
  swift_setAtReferenceWritableKeyPath();
}

unint64_t sub_21BA2B3D4(uint64_t a1)
{
  v2 = sub_21BA88B9C();

  return sub_21BA2B418(a1, v2);
}

unint64_t sub_21BA2B418(uint64_t a1, uint64_t a2)
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

uint64_t sub_21BA2B484(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9F010);
  result = sub_21BA8871C();
  v7 = result;
  if (*(v5 + 16))
  {
    v30 = v3;
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
      v20 = *(*(v5 + 48) + 8 * v19);
      v21 = (*(v5 + 56) + 32 * v19);
      if (a2)
      {
        sub_21B9AFF70(v21, v31);
      }

      else
      {
        sub_21B9AFDF0(v21, v31);
      }

      result = sub_21BA88B9C();
      v22 = -1 << *(v7 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v14 + 8 * v24);
          if (v28 != -1)
          {
            v15 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      result = sub_21B9AFF70(v31, (*(v7 + 56) + 32 * v15));
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_36;
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

    if (a2)
    {
      v29 = 1 << *(v5 + 32);
      if (v29 >= 64)
      {
        bzero((v5 + 64), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v29;
      }

      *(v5 + 16) = 0;
    }

    v3 = v30;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

uint64_t sub_21BA2B6FC(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_21BA884AC() + 1) & ~v5;
    do
    {
      v10 = *(a2 + 48);
      v11 = (v10 + 8 * v6);
      result = sub_21BA88B9C();
      v12 = result & v7;
      if (v3 >= v8)
      {
        if (v12 >= v8 && v3 >= v12)
        {
LABEL_15:
          v15 = (v10 + 8 * v3);
          if (v3 != v6 || v15 >= v11 + 1)
          {
            *v15 = *v11;
          }

          v16 = *(a2 + 56);
          v17 = (v16 + 32 * v3);
          v18 = (v16 + 32 * v6);
          if (v3 != v6 || v17 >= v18 + 2)
          {
            v9 = v18[1];
            *v17 = *v18;
            v17[1] = v9;
            v3 = v6;
          }
        }
      }

      else if (v12 >= v8 || v3 >= v12)
      {
        goto LABEL_15;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v19 = *(a2 + 16);
  v20 = __OFSUB__(v19, 1);
  v21 = v19 - 1;
  if (v20)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v21;
    ++*(a2 + 36);
  }

  return result;
}

_OWORD *sub_21BA2B86C(_OWORD *a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = sub_21BA2B3D4(a2);
  v11 = v8[2];
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = v8[3];
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 >= v14 && (a3 & 1) == 0)
    {
      v17 = v9;
      sub_21BA2BA00();
      v9 = v17;
      goto LABEL_8;
    }

    sub_21BA2B484(v14, a3 & 1);
    v9 = sub_21BA2B3D4(a2);
    if ((v15 & 1) != (v18 & 1))
    {
LABEL_16:
      result = sub_21BA88B0C();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v19 = *v4;
  if (v15)
  {
    v20 = (v19[7] + 32 * v9);
    __swift_destroy_boxed_opaque_existential_1(v20);

    return sub_21B9AFF70(a1, v20);
  }

  else
  {

    return sub_21BA2B998(v9, a2, a1, v19);
  }
}

_OWORD *sub_21BA2B998(unint64_t a1, uint64_t a2, _OWORD *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + 8 * a1) = a2;
  result = sub_21B9AFF70(a3, (a4[7] + 32 * a1));
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

void *sub_21BA2BA00()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9F010);
  v2 = *v0;
  v3 = sub_21BA8870C();
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
        v18 = *(*(v2 + 48) + 8 * v17);
        sub_21B9AFDF0(*(v2 + 56) + 32 * v17, v19);
        *(*(v4 + 48) + 8 * v17) = v18;
        result = sub_21B9AFF70(v19, (*(v4 + 56) + 32 * v17));
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

uint64_t sub_21BA2BB7C(uint64_t a1, uint64_t a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7[3] = AssociatedTypeWitness;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v7);
  (*(*(AssociatedTypeWitness - 8) + 16))(boxed_opaque_existential_1, a1, AssociatedTypeWitness);
  swift_beginAccess();
  sub_21BA2A92C(v7, a2);
  return swift_endAccess();
}

unint64_t sub_21BA2BC44()
{
  result = qword_27CDAB200;
  if (!qword_27CDAB200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDAB200);
  }

  return result;
}

unint64_t type metadata accessor for RUIDecodingUserInfo()
{
  result = qword_27CDAB208;
  if (!qword_27CDAB208)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27CDAB208);
  }

  return result;
}

unint64_t sub_21BA2BDCC()
{
  result = qword_27CDAB210[0];
  if (!qword_27CDAB210[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27CDAB210);
  }

  return result;
}

uint64_t get_witness_table_7SwiftUI4ViewRz06RemoteB019DecodingUserInfoKeyRd__r__lAA15ModifiedContentVyxAC09TransformefG8Modifier33_366F36DC745A92ADCD36EF860015B3E9LLVGAaBHPxAaBHD1__AiA0cL0HPyHCHCTm()
{
  sub_21BA86C5C();
  sub_21BA2BDCC();
  return swift_getWitnessTable();
}

unint64_t sub_21BA2BEC4()
{
  result = qword_27CD9EFF8;
  if (!qword_27CD9EFF8)
  {
    type metadata accessor for RUIDecodingUserInfo();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD9EFF8);
  }

  return result;
}

unint64_t sub_21BA2BF18()
{
  result = qword_27CD9F018;
  if (!qword_27CD9F018)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CD9F008);
    sub_21B9B35B8(&qword_27CD9F020, &qword_27CD9F000);
    sub_21B9B35B8(&qword_27CD9F028, &qword_27CD9F030);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD9F018);
  }

  return result;
}

uint64_t sub_21BA2C034()
{
  sub_21BA88BAC();
  MEMORY[0x21CEFDF10](1);
  return sub_21BA88BCC();
}

uint64_t sub_21BA2C0A0()
{
  sub_21BA88BAC();
  MEMORY[0x21CEFDF10](1);
  return sub_21BA88BCC();
}

uint64_t sub_21BA2C1B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_21BA366F8();

  return MEMORY[0x282130D38](a1, a2, a3, a4, v8);
}

uint64_t EnvironmentValues.ruiURLLoadingMode.getter()
{
  sub_21BA2C25C();

  return sub_21BA86EAC();
}

unint64_t sub_21BA2C25C()
{
  result = qword_27CDAB330;
  if (!qword_27CDAB330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDAB330);
  }

  return result;
}

uint64_t EnvironmentValues.ruiURLLoadingMode.setter()
{
  sub_21BA2C25C();

  return sub_21BA86EBC();
}

uint64_t (*EnvironmentValues.ruiURLLoadingMode.modify(void *a1))()
{
  *a1 = v1;
  a1[1] = sub_21BA2C25C();
  sub_21BA86EAC();
  return sub_21BA2C340;
}

uint64_t sub_21BA2C370()
{
  swift_getKeyPath();
  (*(*v0 + 152))();

  swift_beginAccess();
}

uint64_t sub_21BA2C3EC@<X0>(void **a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  (*(*v3 + 152))();

  swift_beginAccess();
  *a2 = v3[2];
}

uint64_t sub_21BA2C4A8(uint64_t a1)
{
  swift_beginAccess();

  v4 = sub_21BA35A3C(v3, a1);

  if (v4)
  {
    v1[2] = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v7 = MEMORY[0x28223BE20](KeyPath);
    v8 = v1;
    v9 = a1;
    (*(*v1 + 160))(v7);
  }
}

uint64_t sub_21BA2C5BC(uint64_t a1, uint64_t a2)
{
  v5 = swift_allocObject();
  v5[2] = 0;
  v5[3] = 0;
  v5[4] = v2;
  v5[5] = a1;
  v5[6] = a2;
  v6 = swift_allocObject();
  v6[2] = 0;
  v6[3] = 0;
  v6[4] = v2;
  v6[5] = a1;
  v6[6] = a2;
  swift_retain_n();
  swift_bridgeObjectRetain_n();
  sub_21BA87A7C();
  return v8;
}

uint64_t sub_21BA2C6A0@<X0>(_BYTE *a1@<X8>)
{
  v3 = v1[4];
  v4 = v1[5];
  v5 = v1[6];
  swift_getKeyPath();
  (*(*v3 + 152))();

  swift_beginAccess();
  v6 = v3[2];

  LOBYTE(v3) = sub_21BA2C764(v4, v5, v6);

  *a1 = v3 & 1;
  return result;
}

uint64_t sub_21BA2C764(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  sub_21BA88BAC();
  sub_21BA87D8C();
  v6 = sub_21BA88BCC();
  v7 = -1 << *(a3 + 32);
  v8 = v6 & ~v7;
  if (((*(a3 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
  {
    return 0;
  }

  v9 = ~v7;
  while (1)
  {
    v10 = (*(a3 + 48) + 16 * v8);
    v11 = *v10 == a1 && v10[1] == a2;
    if (v11 || (sub_21BA8899C() & 1) != 0)
    {
      break;
    }

    v8 = (v8 + 1) & v9;
    if (((*(a3 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t objectdestroyTm_5()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_21BA2C8A4(_BYTE *a1)
{
  v2 = v1[4];
  v3 = v1[5];
  v4 = v1[6];
  if (*a1 == 1)
  {
    KeyPath = swift_getKeyPath();
    v6 = *(*v2 + 152);

    v6(KeyPath);

    v9 = v2;
    swift_getKeyPath();
    sub_21BA37400(&qword_27CD9D770, type metadata accessor for ActivityIndicatorManager);
    sub_21BA8660C();

    swift_beginAccess();
    sub_21BA34E78(&v8, v3, v4);
  }

  else
  {
    swift_getKeyPath();
    (*(*v2 + 152))();

    v9 = v2;
    swift_getKeyPath();
    sub_21BA37400(&qword_27CD9D770, type metadata accessor for ActivityIndicatorManager);
    sub_21BA8660C();

    swift_beginAccess();
    sub_21BA34FC8(v3, v4);
  }

  swift_endAccess();

  v9 = v2;
  swift_getKeyPath();
  sub_21BA865FC();
}

uint64_t ActivityIndicatorManager.deinit()
{

  v1 = OBJC_IVAR____TtC8RemoteUI24ActivityIndicatorManager___observationRegistrar;
  v2 = sub_21BA8662C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t ActivityIndicatorManager.__deallocating_deinit()
{

  v1 = OBJC_IVAR____TtC8RemoteUI24ActivityIndicatorManager___observationRegistrar;
  v2 = sub_21BA8662C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v3, v4);
}

uint64_t sub_21BA2CD34()
{
  v0 = swift_allocObject();
  *(v0 + 16) = MEMORY[0x277D84FA0];
  sub_21BA8661C();
  return v0;
}

uint64_t URLLoadingParameters.name.getter()
{
  v1 = *(v0 + *(type metadata accessor for URLLoadingParameters(0) + 20));

  return v1;
}

uint64_t URLLoadingParameters.httpMethod.getter()
{
  v1 = *(v0 + *(type metadata accessor for URLLoadingParameters(0) + 24));

  return v1;
}

uint64_t URLLoadingParameters.httpMethod.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for URLLoadingParameters(0) + 24));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t URLLoadingParameters.action.getter()
{
  v1 = *(v0 + *(type metadata accessor for URLLoadingParameters(0) + 32));

  return v1;
}

uint64_t URLLoadingParameters.activationFunctionName.getter()
{
  v1 = *(v0 + *(type metadata accessor for URLLoadingParameters(0) + 36));

  return v1;
}

uint64_t URLLoadingParameters.urlLoadingMode.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for URLLoadingParameters(0);
  *a1 = *(v1 + *(result + 40));
  return result;
}

uint64_t URLLoadingParameters.urlLoadingMode.setter(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for URLLoadingParameters(0);
  *(v1 + *(result + 40)) = v2;
  return result;
}

uint64_t URLLoadingParameters.rawAttributes.getter()
{
  type metadata accessor for URLLoadingParameters(0);
}

uint64_t URLLoadingParameters.rawAttributes.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for URLLoadingParameters(0) + 44);

  *(v1 + v3) = a1;
  return result;
}

uint64_t URLLoadingParameters.validationFunctionName.getter()
{
  v1 = *(v0 + *(type metadata accessor for URLLoadingParameters(0) + 48));

  return v1;
}

uint64_t URLLoadingParameters.id.getter()
{
  v1 = *(v0 + *(type metadata accessor for URLLoadingParameters(0) + 52));

  return v1;
}

uint64_t URLLoadingParameters.activityIndicatorAnchorId.getter()
{
  v1 = *(v0 + *(type metadata accessor for URLLoadingParameters(0) + 56));

  return v1;
}

uint64_t URLLoadingParameters.confirmation.getter@<X0>(_OWORD *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for URLLoadingParameters(0) + 64));
  v4 = v3[1];
  v9[0] = *v3;
  v9[1] = v4;
  v6 = v3[3];
  v10 = v3[2];
  v5 = v10;
  v11 = v6;
  *a1 = v9[0];
  a1[1] = v4;
  a1[2] = v5;
  a1[3] = v6;
  return sub_21B9AFF80(v9, &v8, &qword_27CD9D178);
}

unint64_t sub_21BA2D244(char a1)
{
  result = 7107189;
  switch(a1)
  {
    case 1:
      result = 0x6E6F69746361;
      break;
    case 2:
      result = 1701667182;
      break;
    case 3:
      result = 0x657079546975;
      break;
    case 4:
      result = 0xD000000000000012;
      break;
    case 5:
      result = 0x6874654D70747468;
      break;
    case 6:
      result = 0x61536E496E65706FLL;
      break;
    case 7:
      result = 0xD000000000000012;
      break;
    case 8:
      result = 0x486C61646F4D7369;
      break;
    case 9:
      result = 0xD000000000000018;
      break;
    case 10:
      result = 25705;
      break;
    case 11:
      result = 0xD000000000000019;
      break;
    case 12:
      result = 0x6B6E696C70656564;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_21BA2D3AC(char *a1, char *a2)
{
  v2 = *a2;
  v3 = sub_21BA2D244(*a1);
  v5 = v4;
  if (v3 == sub_21BA2D244(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_21BA8899C();
  }

  return v8 & 1;
}

uint64_t sub_21BA2D434()
{
  v1 = *v0;
  sub_21BA88BAC();
  sub_21BA2D244(v1);
  sub_21BA87D8C();

  return sub_21BA88BCC();
}

uint64_t sub_21BA2D498()
{
  sub_21BA2D244(*v0);
  sub_21BA87D8C();
}

uint64_t sub_21BA2D4EC()
{
  v1 = *v0;
  sub_21BA88BAC();
  sub_21BA2D244(v1);
  sub_21BA87D8C();

  return sub_21BA88BCC();
}

uint64_t sub_21BA2D54C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_21BA35BF4();
  *a1 = result;
  return result;
}

unint64_t sub_21BA2D57C@<X0>(unint64_t *a1@<X8>)
{
  result = sub_21BA2D244(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_21BA2D5C4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_21BA35BF4();
  *a1 = result;
  return result;
}

uint64_t sub_21BA2D5F8(uint64_t a1)
{
  v2 = sub_21BA35F30();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21BA2D634(uint64_t a1)
{
  v2 = sub_21BA35F30();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21BA2D670(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t sub_21BA2D6C4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t URLLoadingParameters.Keys.url.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_21BA883CC();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t URLLoadingParameters.Keys.action.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 36);
  v5 = sub_21BA883CC();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t URLLoadingParameters.Keys.name.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 40);
  v5 = sub_21BA883CC();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t URLLoadingParameters.Keys.uiType.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 44);
  v5 = sub_21BA883CC();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t URLLoadingParameters.Keys.activationFunction.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 48);
  v5 = sub_21BA883CC();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t URLLoadingParameters.Keys.httpMethod.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 52);
  v5 = sub_21BA883CC();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t URLLoadingParameters.Keys.openInSafari.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 56);
  v5 = sub_21BA883CC();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t URLLoadingParameters.Keys.validationFunction.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 60);
  v5 = sub_21BA883CC();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t URLLoadingParameters.Keys.id.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 64);
  v5 = sub_21BA883CC();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t URLLoadingParameters.Keys.activityIndicatorAnchorId.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 68);
  v5 = sub_21BA883CC();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t URLLoadingParameters.Keys.deeplinkUrl.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 72);
  v5 = sub_21BA883CC();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t URLLoadingParameters.Keys.isModalHTMLView.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 76);
  v5 = sub_21BA883CC();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t URLLoadingParameters.Keys.init(url:action:name:uiType:activationFunction:httpMethod:openInSafari:validationFunction:id:activityIndicatorAnchorId:deeplinkUrl:isModalHTMLView:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v20 = sub_21BA883CC();
  v26 = *(*(v20 - 8) + 32);
  (v26)((v20 - 8), a9, a1, v20);
  v21 = type metadata accessor for URLLoadingParameters.Keys();
  v26(a9 + v21[9], a2, v20);
  v26(a9 + v21[10], a3, v20);
  v26(a9 + v21[11], a4, v20);
  v26(a9 + v21[12], a5, v20);
  v26(a9 + v21[13], a6, v20);
  v26(a9 + v21[14], a7, v20);
  v26(a9 + v21[15], a8, v20);
  v26(a9 + v21[16], a10, v20);
  v26(a9 + v21[17], a11, v20);
  v26(a9 + v21[18], a12, v20);
  v22 = a9 + v21[19];

  return (v26)(v22, a13, v20);
}

uint64_t sub_21BA2DF14@<X0>(void *a1@<X0>, unint64_t a2@<X1>, unsigned int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v128 = a5;
  v123 = a4;
  v122 = a3;
  v126 = a2;
  v121 = a6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9DBA0);
  MEMORY[0x28223BE20](v7 - 8);
  v124 = &v116 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9F038);
  v125 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = &v116 - v10;
  v12 = type metadata accessor for URLLoadingParameters(0);
  v13 = MEMORY[0x28223BE20](v12);
  v15 = &v116 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(v13 + 40);
  v15[v16] = 1;
  v17 = a1[3];
  v134 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v17);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9F040);
  sub_21BA35ECC();
  v18 = v127;
  sub_21BA88C0C();
  if (v18)
  {

    return __swift_destroy_boxed_opaque_existential_1(v134);
  }

  else
  {
    v19 = v124;
    v117 = v16;
    v127 = v11;
    v120 = v9;
    v118 = v12;
    v119 = v15;
    v20 = WORD1(v126);
    if (v126 == 13)
    {
      v21 = 0xE300000000000000;
      v22 = 7107189;
    }

    else
    {
      v22 = sub_21BA2D244(v126);
      v21 = v23;
    }

    *&v130 = v22;
    *(&v130 + 1) = v21;
    *&v131 = 0;
    BYTE8(v131) = 1;
    sub_21BA887BC();
    v26 = v25;

    if (v26)
    {

      v27 = v19;
      sub_21BA8648C();
      swift_bridgeObjectRelease_n();
    }

    else
    {
      v28 = sub_21BA864AC();
      v27 = v19;
      (*(*(v28 - 8) + 56))(v19, 1, 1, v28);
    }

    v29 = v117;
    sub_21B9AFD2C(v27, v119);
    if (HIBYTE(v20) == 13)
    {
      v30 = 0xE600000000000000;
      v31 = 0x657079546975;
    }

    else
    {
      v31 = sub_21BA2D244(SHIBYTE(v20));
      v30 = v32;
    }

    *&v130 = v31;
    *(&v130 + 1) = v30;
    *&v131 = 0;
    BYTE8(v131) = 1;
    sub_21BA35F84();
    sub_21BA887EC();

    v119[v29] = v129[0];
    if (v20 == 13)
    {
      v33 = 0xE400000000000000;
      v34 = 1701667182;
    }

    else
    {
      v34 = sub_21BA2D244(v20);
      v33 = v35;
    }

    *&v130 = v34;
    *(&v130 + 1) = v33;
    *&v131 = 0;
    BYTE8(v131) = 1;
    v36 = sub_21BA887BC();
    v37 = v134;
    v38 = v36;
    v40 = v39;
    v41 = BYTE1(v126);
    v42 = BYTE1(v126);

    v43 = &v119[v118[5]];
    *v43 = v38;
    v43[1] = v40;
    if (v42 == 13)
    {
      v44 = 0xE600000000000000;
      v45 = 0x6E6F69746361;
    }

    else
    {
      v45 = sub_21BA2D244(v41);
      v44 = v46;
    }

    *&v130 = v45;
    *(&v130 + 1) = v44;
    *&v131 = 0;
    BYTE8(v131) = 1;
    v47 = sub_21BA887BC();
    v49 = v48;
    v50 = BYTE4(v126);
    v51 = BYTE4(v126);

    v52 = &v119[v118[8]];
    *v52 = v47;
    v52[1] = v49;
    if (v51 == 13)
    {
      v53 = 0xD000000000000012;
      v54 = 0x800000021BAA57A0;
    }

    else
    {
      v53 = sub_21BA2D244(v50);
      v54 = v55;
    }

    *&v130 = v53;
    *(&v130 + 1) = v54;
    *&v131 = 0;
    BYTE8(v131) = 1;
    v56 = sub_21BA887BC();
    v58 = v57;
    v59 = BYTE5(v126);
    v60 = BYTE5(v126);

    v61 = &v119[v118[9]];
    *v61 = v56;
    v61[1] = v58;
    if (v60 == 13)
    {
      v62 = 0xEA0000000000646FLL;
      v63 = 0x6874654D70747468;
    }

    else
    {
      v63 = sub_21BA2D244(v59);
      v62 = v64;
    }

    *&v130 = v63;
    *(&v130 + 1) = v62;
    *&v131 = 0;
    BYTE8(v131) = 1;
    v65 = sub_21BA887BC();
    v66 = v118;
    v68 = v67;
    v69 = v65;

    if (v68)
    {
    }

    else
    {
      v68 = v128;
      v69 = v123;
    }

    v70 = v119;
    v71 = &v119[v66[6]];
    *v71 = v69;
    v71[1] = v68;
    __swift_project_boxed_opaque_existential_1(v37, v37[3]);
    v72 = Decoder.decodeRUIAttributeDictionary()();
    v73 = BYTE6(v126);
    v74 = BYTE6(v126);
    *(v70 + v66[11]) = v72;
    if (v74 == 13)
    {
      v75 = 0xEC00000069726166;
      v76 = 0x61536E496E65706FLL;
    }

    else
    {
      v76 = sub_21BA2D244(v73);
      v75 = v77;
    }

    *&v130 = v76;
    *(&v130 + 1) = v75;
    *&v131 = 0;
    BYTE8(v131) = 1;
    v78 = sub_21BA887CC();
    v79 = HIBYTE(v126);

    *(v70 + v118[7]) = v78 & 1;
    if (v79 == 13)
    {
      v80 = 0xD000000000000012;
      v81 = 0x800000021BAA57D0;
    }

    else
    {
      v80 = sub_21BA2D244(v79);
      v81 = v82;
    }

    *&v130 = v80;
    *(&v130 + 1) = v81;
    *&v131 = 0;
    BYTE8(v131) = 1;
    v83 = sub_21BA887BC();
    v85 = v84;

    v86 = (v70 + v118[12]);
    *v86 = v83;
    v86[1] = v85;
    __swift_project_boxed_opaque_existential_1(v37, v37[3]);
    v87 = Decoder.decodeRUIID()();
    if (v88)
    {
      (*(v125 + 8))(v127, v120);
      v110 = v119;
      __swift_destroy_boxed_opaque_existential_1(v134);
      sub_21B9ABAAC(v110, &qword_27CD9DBA0);
    }

    else
    {
      v89 = v122;
      *&v119[v118[13]] = v87;
      if (v89 == 13)
      {
        v90 = 0x800000021BAA5810;
        v91 = 0xD000000000000019;
      }

      else
      {
        v91 = sub_21BA2D244(v122);
        v90 = v92;
      }

      *&v130 = v91;
      *(&v130 + 1) = v90;
      *&v131 = 0;
      BYTE8(v131) = 1;
      v93 = sub_21BA887BC();
      v95 = v94;
      v96 = BYTE2(v122);

      v97 = &v119[v118[14]];
      *v97 = v93;
      v97[1] = v95;
      if (v96 == 13)
      {
        v98 = 0xEB000000006C7255;
        v99 = 0x6B6E696C70656564;
      }

      else
      {
        v99 = sub_21BA2D244(SBYTE2(v122));
        v98 = v100;
      }

      *&v130 = v99;
      *(&v130 + 1) = v98;
      *&v131 = 0;
      BYTE8(v131) = 1;
      v101 = sub_21BA887CC();
      v102 = HIBYTE(v122);

      v119[v118[15]] = v101 & 1;
      sub_21B9B3220(v134, v129);
      ConfirmationInfo.init(from:)(v129, &v130);
      v103 = v131;
      v104 = v132;
      v105 = v133;
      v106 = &v119[v118[16]];
      *v106 = v130;
      *(v106 + 1) = v103;
      *(v106 + 2) = v104;
      *(v106 + 3) = v105;
      if (v102 == 13)
      {
        v107 = 0xEF776569564C4D54;
        v108 = 0x486C61646F4D7369;
      }

      else
      {
        v108 = sub_21BA2D244(v102);
        v107 = v109;
      }

      *&v130 = v108;
      *(&v130 + 1) = v107;
      *&v131 = 0;
      BYTE8(v131) = 1;
      v111 = sub_21BA887CC();

      if (v111 == 2)
      {
        if (v102 == 13)
        {
          v112 = 0x800000021BAA57F0;
          v113 = 0xD000000000000018;
        }

        else
        {
          v113 = sub_21BA2D244(v102);
          v112 = v114;
        }

        *&v130 = v113;
        *(&v130 + 1) = v112;
        *&v131 = 0;
        BYTE8(v131) = 1;
        v111 = sub_21BA887CC();
      }

      (*(v125 + 8))(v127, v120);
      v115 = v119;
      v119[v118[17]] = v111 & 1;
      sub_21BA27148(v115, v121);
      __swift_destroy_boxed_opaque_existential_1(v134);
      return sub_21BA35FD8(v115);
    }
  }
}

uint64_t URLLoadingParameters.init<A>(from:keys:defaultHTTPMethod:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v140 = a4;
  v142 = a5;
  v143 = a6;
  v136 = a3;
  v149 = a2;
  v135 = a7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9DBA0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v129 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9F038);
  v137 = *(v11 - 8);
  v138 = v11;
  MEMORY[0x28223BE20](v11);
  v13 = &v129 - v12;
  v14 = type metadata accessor for URLLoadingParameters(0);
  MEMORY[0x28223BE20](v14);
  v16 = &v129 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(v17 + 40);
  v16[v18] = 1;
  v19 = a1[3];
  v141 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v19);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9F040);
  sub_21BA35ECC();
  v20 = v139;
  sub_21BA88C0C();
  if (v20)
  {
    v21 = type metadata accessor for URLLoadingParameters.Keys();
    (*(*(v21 - 8) + 8))(v149, v21);

    return __swift_destroy_boxed_opaque_existential_1(v141);
  }

  else
  {
    v132 = v10;
    v131 = v18;
    v133 = v14;
    v134 = v16;
    LOBYTE(v145) = 0;
    v22 = sub_21BA35F30();
    v23 = v142;
    *&v145 = sub_21BA35C40(v149, &v145, &type metadata for URLLoadingParameters.DefaultCodingKeys, v142, v22, v143);
    *(&v145 + 1) = v24;
    *&v146 = v25;
    BYTE8(v146) = v26 & 1;
    v27 = v138;
    sub_21BA887BC();
    v139 = 0;
    v30 = v29;
    v129 = v13;
    v130 = v22;

    if (v30)
    {

      v31 = v132;
      sub_21BA8648C();
      swift_bridgeObjectRelease_n();
    }

    else
    {
      v32 = sub_21BA864AC();
      v31 = v132;
      (*(*(v32 - 8) + 56))(v132, 1, 1, v32);
    }

    v33 = v130;
    sub_21B9AFD2C(v31, v134);
    v34 = v23;
    v35 = v143;
    v36 = type metadata accessor for URLLoadingParameters.Keys();
    v37 = *(v36 + 44);
    LOBYTE(v145) = 3;
    v38 = v149;
    *&v145 = sub_21BA35C40(v149 + v37, &v145, &type metadata for URLLoadingParameters.DefaultCodingKeys, v34, v33, v35);
    *(&v145 + 1) = v39;
    *&v146 = v40;
    BYTE8(v146) = v41 & 1;
    sub_21BA35F84();
    v42 = v129;
    v43 = v139;
    sub_21BA887EC();
    if (v43)
    {

      (*(*(v36 - 8) + 8))(v38, v36);

      (*(v137 + 8))(v42, v27);
      v50 = v134;
      __swift_destroy_boxed_opaque_existential_1(v141);
      return sub_21B9ABAAC(v50, &qword_27CD9DBA0);
    }

    else
    {

      v134[v131] = v144[0];
      v44 = *(v36 + 40);
      LOBYTE(v145) = 2;
      v45 = v142;
      *&v145 = sub_21BA35C40(v38 + v44, &v145, &type metadata for URLLoadingParameters.DefaultCodingKeys, v142, v130, v35);
      *(&v145 + 1) = v46;
      *&v146 = v47;
      BYTE8(v146) = v48 & 1;
      v49 = v36;
      v51 = sub_21BA887BC();
      v53 = v52;

      v54 = &v134[v133[5]];
      *v54 = v51;
      v54[1] = v53;
      v55 = v49;
      v56 = *(v49 + 36);
      LOBYTE(v145) = 1;
      *&v145 = sub_21BA35C40(v38 + v56, &v145, &type metadata for URLLoadingParameters.DefaultCodingKeys, v45, v130, v35);
      *(&v145 + 1) = v57;
      *&v146 = v58;
      BYTE8(v146) = v59 & 1;
      v60 = sub_21BA887BC();
      v62 = v61;

      v63 = &v134[v133[8]];
      *v63 = v60;
      v63[1] = v62;
      v64 = v55[12];
      LOBYTE(v145) = 4;
      v65 = v142;
      *&v145 = sub_21BA35C40(v38 + v64, &v145, &type metadata for URLLoadingParameters.DefaultCodingKeys, v142, v130, v35);
      *(&v145 + 1) = v66;
      *&v146 = v67;
      BYTE8(v146) = v68 & 1;
      v69 = sub_21BA887BC();
      v71 = v70;

      v72 = &v134[v133[9]];
      *v72 = v69;
      v72[1] = v71;
      v73 = v55[13];
      LOBYTE(v145) = 5;
      *&v145 = sub_21BA35C40(v38 + v73, &v145, &type metadata for URLLoadingParameters.DefaultCodingKeys, v65, v130, v35);
      *(&v145 + 1) = v74;
      *&v146 = v75;
      BYTE8(v146) = v76 & 1;
      v77 = sub_21BA887BC();
      v79 = v78;
      v139 = v55;
      v80 = v77;

      if (v79)
      {

        v81 = v133;
        v82 = v142;
        v83 = v134;
      }

      else
      {
        v81 = v133;
        v82 = v142;
        v83 = v134;
        v79 = v140;
        v80 = v136;
      }

      v84 = (v83 + v81[6]);
      *v84 = v80;
      v84[1] = v79;
      __swift_project_boxed_opaque_existential_1(v141, v141[3]);
      *(v83 + v81[11]) = Decoder.decodeRUIAttributeDictionary()();
      v85 = v139;
      v86 = v139[14];
      LOBYTE(v145) = 6;
      v87 = v130;
      v88 = v143;
      *&v145 = sub_21BA35C40(v149 + v86, &v145, &type metadata for URLLoadingParameters.DefaultCodingKeys, v82, v130, v143);
      *(&v145 + 1) = v89;
      *&v146 = v90;
      BYTE8(v146) = v91 & 1;
      v92 = sub_21BA887CC();

      v134[v81[7]] = v92 & 1;
      v93 = v85[15];
      LOBYTE(v145) = 7;
      *&v145 = sub_21BA35C40(v149 + v93, &v145, &type metadata for URLLoadingParameters.DefaultCodingKeys, v142, v87, v88);
      *(&v145 + 1) = v94;
      *&v146 = v95;
      BYTE8(v146) = v96 & 1;
      v97 = sub_21BA887BC();
      v99 = v98;

      v100 = &v134[v133[12]];
      *v100 = v97;
      v100[1] = v99;
      __swift_project_boxed_opaque_existential_1(v141, v141[3]);
      v101 = Decoder.decodeRUIID()();
      if (v102)
      {
        (*(*(v139 - 1) + 8))(v149);
        (*(v137 + 8))(v129, v138);
        v123 = v134;
        __swift_destroy_boxed_opaque_existential_1(v141);
        sub_21B9ABAAC(v123, &qword_27CD9DBA0);
      }

      else
      {
        *&v134[v133[13]] = v101;
        v103 = v139[16];
        LOBYTE(v145) = 11;
        *&v145 = sub_21BA35C40(v149 + v103, &v145, &type metadata for URLLoadingParameters.DefaultCodingKeys, v142, v130, v143);
        *(&v145 + 1) = v104;
        *&v146 = v105;
        BYTE8(v146) = v106 & 1;
        v107 = sub_21BA887BC();
        v109 = v108;

        v110 = &v134[v133[14]];
        *v110 = v107;
        v110[1] = v109;
        v111 = v139[18];
        LOBYTE(v145) = 12;
        *&v145 = sub_21BA35C40(v149 + v111, &v145, &type metadata for URLLoadingParameters.DefaultCodingKeys, v142, v130, v143);
        *(&v145 + 1) = v112;
        *&v146 = v113;
        BYTE8(v146) = v114 & 1;
        LOBYTE(v107) = sub_21BA887CC();

        v134[v133[15]] = v107 & 1;
        sub_21B9B3220(v141, v144);
        ConfirmationInfo.init(from:)(v144, &v145);
        v115 = v146;
        v116 = v147;
        v117 = v148;
        v118 = &v134[v133[16]];
        *v118 = v145;
        *(v118 + 1) = v115;
        *(v118 + 2) = v116;
        *(v118 + 3) = v117;
        v119 = v139[19];
        LOBYTE(v145) = 8;
        *&v145 = sub_21BA35C40(v149 + v119, &v145, &type metadata for URLLoadingParameters.DefaultCodingKeys, v142, v130, v143);
        *(&v145 + 1) = v120;
        *&v146 = v121;
        BYTE8(v146) = v122 & 1;
        v124 = sub_21BA887CC();

        if (v124 == 2)
        {
          LOBYTE(v145) = 9;
          *&v145 = sub_21BA35C40(v149 + v119, &v145, &type metadata for URLLoadingParameters.DefaultCodingKeys, v142, v130, v143);
          *(&v145 + 1) = v125;
          *&v146 = v126;
          BYTE8(v146) = v127 & 1;
          v124 = sub_21BA887CC();
          (*(*(v139 - 1) + 8))(v149);
        }

        else
        {
          (*(*(v139 - 1) + 8))(v149);
        }

        (*(v137 + 8))(v129, v138);
        v128 = v134;
        v134[v133[17]] = v124 & 1;
        sub_21BA27148(v128, v135);
        __swift_destroy_boxed_opaque_existential_1(v141);
        return sub_21BA35FD8(v128);
      }
    }
  }
}

uint64_t URLLoadingParameters.init(from:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_21B9B3220(a1, v5);
  sub_21BA2DF14(v5, 0xD0D0D0D0D0D0D0DuLL, 0xD0D0D0Du, 5522759, 0xE300000000000000, a2);
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t URLLoadingParameters.init(from:defaultHTTPMethod:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  sub_21B9B3220(a1, v9);
  sub_21BA2DF14(v9, 0xD0D0D0D0D0D0D0DuLL, 0xD0D0D0Du, a2, a3, a4);
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_21BA30364(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_21B9AC1F4;

  return URLLoadingCapable.handle(url:)(a1, a2, a3);
}

uint64_t URLLoadingCapable.handle(url:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[20] = a3;
  v4[21] = v3;
  v4[18] = a1;
  v4[19] = a2;
  v4[22] = type metadata accessor for URLLoadingParameters(0);
  v4[23] = swift_task_alloc();
  sub_21BA87FEC();
  v4[24] = sub_21BA87FDC();
  v6 = sub_21BA87F9C();
  v4[25] = v6;
  v4[26] = v5;

  return MEMORY[0x2822009F8](sub_21BA304DC, v6, v5);
}

uint64_t sub_21BA304DC()
{
  v1 = (*(v0[20] + 24))(v0[19]);
  v0[27] = v1;
  if (v1)
  {
    v2 = v0[22];
    v3 = v0[23];
    v4 = v0[20];
    v5 = v0[19];
    v14 = v1;
    sub_21BA863FC();
    v13 = sub_21BA87C8C();
    v0[28] = v13;

    v6 = *(v4 + 40);
    v6(v5, v4);

    sub_21BA35FD8(v3);
    v12 = sub_21BA87C8C();
    v0[29] = v12;

    v6(v5, v4);
    v7 = *(v3 + *(v2 + 44));

    sub_21BA35FD8(v3);
    sub_21BA345F4(v7);

    v8 = sub_21BA87BBC();
    v0[30] = v8;

    v0[2] = v0;
    v0[7] = v0 + 32;
    v0[3] = sub_21BA3079C;
    v9 = swift_continuation_init();
    v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9F060);
    v0[10] = MEMORY[0x277D85DD0];
    v0[11] = 1107296256;
    v0[12] = sub_21BA37464;
    v0[13] = &block_descriptor_5;
    v0[14] = v9;
    [v14 openLink:v13 HTTPMethod:v12 attributes:v8 completion:?];

    return MEMORY[0x282200938](v0 + 2);
  }

  else
  {

    v10 = v0[1];

    return v10();
  }
}

uint64_t sub_21BA3079C()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 248) = v2;
  v3 = *(v1 + 208);
  v4 = *(v1 + 200);
  if (v2)
  {
    v5 = sub_21BA30958;
  }

  else
  {
    v5 = sub_21BA308CC;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_21BA308CC()
{
  v1 = v0[29];
  v2 = v0[30];
  v4 = v0[27];
  v3 = v0[28];

  v5 = v0[1];

  return v5();
}

uint64_t sub_21BA30958()
{
  v1 = v0[30];
  v3 = v0[28];
  v2 = v0[29];
  v4 = v0[27];

  swift_willThrow();

  v5 = v0[1];

  return v5();
}

void URLLoadingCapable.destination(for:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v6 = (*(a3 + 24))(a2, a3);
  if (v6)
  {
    v7 = v6;
    sub_21B9AE8D0(a1, a4);
  }

  else
  {
    sub_21BA886DC();
    __break(1u);
  }
}

RemoteUI::LegacyRemoteView_optional __swiftcall LegacyRemoteView.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_21BA8875C();

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t LegacyRemoteView.rawValue.getter()
{
  if (*v0)
  {
    return 0xD000000000000011;
  }

  else
  {
    return 0x6574656C706D6F63;
  }
}

uint64_t sub_21BA30B74(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0xD000000000000011;
  }

  else
  {
    v3 = 0x6574656C706D6F63;
  }

  if (v2)
  {
    v4 = 0xEB000000006C7275;
  }

  else
  {
    v4 = 0x800000021BAA5850;
  }

  if (*a2)
  {
    v5 = 0xD000000000000011;
  }

  else
  {
    v5 = 0x6574656C706D6F63;
  }

  if (*a2)
  {
    v6 = 0x800000021BAA5850;
  }

  else
  {
    v6 = 0xEB000000006C7275;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_21BA8899C();
  }

  return v8 & 1;
}

uint64_t sub_21BA30C28()
{
  sub_21BA88BAC();
  sub_21BA87D8C();

  return sub_21BA88BCC();
}

uint64_t sub_21BA30CB8()
{
  sub_21BA87D8C();
}

uint64_t sub_21BA30D34()
{
  sub_21BA88BAC();
  sub_21BA87D8C();

  return sub_21BA88BCC();
}

uint64_t sub_21BA30DC0@<X0>(char *a1@<X8>)
{
  v2 = sub_21BA8875C();

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

void sub_21BA30E20(unint64_t *a1@<X8>)
{
  v2 = 0x800000021BAA5850;
  v3 = 0x6574656C706D6F63;
  if (*v1)
  {
    v3 = 0xD000000000000011;
  }

  else
  {
    v2 = 0xEB000000006C7275;
  }

  *a1 = v3;
  a1[1] = v2;
}

uint64_t sub_21BA30E6C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for URLLoadingParameters(0);
  v5 = MEMORY[0x28223BE20](v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v15 - v8;
  v10 = *(a2 + 40);
  v10(a1, a2);
  v11 = &v9[*(v4 + 56)];
  v12 = *v11;
  v13 = *(v11 + 1);

  sub_21BA35FD8(v9);
  if (!v13)
  {
    v10(a1, a2);
    v12 = *&v7[*(v4 + 52)];

    sub_21BA35FD8(v7);
  }

  return v12;
}

uint64_t sub_21BA30F9C(uint64_t a1, uint64_t a2)
{
  v4 = (*(a2 + 80))();
  v5 = sub_21BA30E6C(a1, a2);
  v6 = (*(*v4 + 144))(v5);

  return v6;
}

uint64_t URLLoadingCapable.isLoading.getter(uint64_t a1, uint64_t a2)
{
  v8 = sub_21BA30F9C(a1, a2);
  v9 = v2;
  v10 = v3 & 1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9CE78);
  MEMORY[0x21CEFCD90](&v7, v4);
  v5 = v7;

  return v5;
}

uint64_t URLLoadingCapable.activate()(uint64_t a1, uint64_t a2)
{
  v3[5] = a2;
  v3[6] = v2;
  v3[4] = a1;
  sub_21BA87FEC();
  v3[7] = sub_21BA87FDC();
  v5 = sub_21BA87F9C();
  v3[8] = v5;
  v3[9] = v4;

  return MEMORY[0x2822009F8](sub_21BA31160, v5, v4);
}

uint64_t sub_21BA31160()
{
  v1 = v0[5];
  v2 = v0[4];
  v0[3] = 0;
  v0[2] = 0;
  v3 = sub_21BA30F9C(v2, v1);
  v5 = v4;
  v7 = v6;
  v0[10] = v3;
  v0[11] = v4;
  v8 = swift_task_alloc();
  v0[12] = v8;
  sub_21BA36060();
  *v8 = v0;
  v8[1] = sub_21BA3124C;
  v9 = v0[5];
  v10 = v0[4];

  return sub_21BA31370((v0 + 2), v3, v5, v7 & 1, v10, &type metadata for NoElement, v9);
}

uint64_t sub_21BA3124C()
{
  v2 = *v1;
  *(*v1 + 104) = v0;

  if (v0)
  {
    v3 = *(v2 + 64);
    v4 = *(v2 + 72);
    v5 = sub_21BA37450;
  }

  else
  {

    v3 = *(v2 + 64);
    v4 = *(v2 + 72);
    v5 = sub_21BA37468;
  }

  return MEMORY[0x2822009F8](v5, v3, v4);
}

uint64_t sub_21BA31370(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(v8 + 312) = a7;
  *(v8 + 320) = v7;
  *(v8 + 296) = a5;
  *(v8 + 304) = a6;
  *(v8 + 244) = a4;
  *(v8 + 280) = a2;
  *(v8 + 288) = a3;
  *(v8 + 272) = a1;
  *(v8 + 328) = type metadata accessor for URLLoadingParameters(0);
  *(v8 + 336) = swift_task_alloc();
  v9 = sub_21BA883CC();
  *(v8 + 344) = v9;
  *(v8 + 352) = *(v9 - 8);
  *(v8 + 360) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9D6B8);
  *(v8 + 368) = swift_task_alloc();
  *(v8 + 376) = sub_21BA87FEC();
  *(v8 + 384) = sub_21BA87FDC();
  v11 = sub_21BA87F9C();
  *(v8 + 392) = v11;
  *(v8 + 400) = v10;

  return MEMORY[0x2822009F8](sub_21BA314E8, v11, v10);
}

uint64_t sub_21BA314E8()
{
  v1 = *(v0 + 368);
  v3 = *(v0 + 352);
  v2 = *(v0 + 360);
  v37 = *(v0 + 344);
  v4 = *(v0 + 304);
  v5 = *(v0 + 244);
  v7 = *(v0 + 280);
  v6 = *(v0 + 288);
  v8 = *(v0 + 272);
  v9 = sub_21BA8801C();
  (*(*(v9 - 8) + 56))(v1, 1, 1, v9);

  v10 = sub_21BA87FDC();
  v11 = swift_allocObject();
  v12 = MEMORY[0x277D85700];
  *(v11 + 16) = v10;
  *(v11 + 24) = v12;
  *(v11 + 32) = v7;
  *(v11 + 40) = v6;
  *(v11 + 48) = v5;
  *(v0 + 408) = sub_21B9F2BA4(0, 0, v1, &unk_21BA9B488, v11);
  (*(v3 + 16))(v2, v8, v37);
  if ((*(*(v4 - 8) + 48))(v2, 1, v4) == 1)
  {
    (*(*(v0 + 352) + 8))(*(v0 + 360), *(v0 + 344));
LABEL_6:
    *(v0 + 216) = 0;
    *(v0 + 200) = 0u;
    *(v0 + 184) = 0u;
    goto LABEL_7;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9F0A0);
  if (!swift_dynamicCast())
  {
    goto LABEL_6;
  }

  if (*(v0 + 208))
  {
    v13 = *(v0 + 336);
    v14 = *(v0 + 312);
    v15 = *(v0 + 296);
    sub_21B9B5E1C((v0 + 184), v0 + 144);
    v16 = *(v0 + 168);
    v17 = *(v0 + 176);
    __swift_project_boxed_opaque_existential_1((v0 + 144), v16);
    (*(v14 + 40))(v15, v14);
    v18 = (*(v14 + 32))(v15, v14);
    v19 = (*(v17 + 8))(v13, v18, v16, v17);

    sub_21BA35FD8(v13);
    __swift_destroy_boxed_opaque_existential_1(v0 + 144);
    goto LABEL_8;
  }

LABEL_7:
  v21 = *(v0 + 328);
  v20 = *(v0 + 336);
  v22 = *(v0 + 312);
  v23 = *(v0 + 296);
  sub_21B9ABAAC(v0 + 184, &qword_27CD9F098);
  (*(v22 + 40))(v23, v22);
  v24 = *(v20 + *(v21 + 44));

  sub_21BA35FD8(v20);
  sub_21B9E9024(v24);

  v25 = (*(v22 + 32))(v23, v22);
  v26 = objc_allocWithZone(RUIElement);
  v27 = sub_21BA87BBC();

  v19 = [v26 initWithAttributes:v27 parent:v25];

  if (!v19)
  {
    __break(1u);
    return MEMORY[0x282200938](v28);
  }

LABEL_8:
  *(v0 + 416) = v19;
  v29 = (*(*(v0 + 312) + 24))(*(v0 + 296));
  *(v0 + 424) = v29;
  if (v29)
  {
    v30 = v29;
    *(v0 + 16) = v0;
    *(v0 + 56) = v0 + 241;
    *(v0 + 24) = sub_21BA31A98;
    v31 = swift_continuation_init();
    *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9F060);
    *(v0 + 80) = MEMORY[0x277D85DD0];
    *(v0 + 88) = 1107296256;
    *(v0 + 96) = sub_21BA37464;
    *(v0 + 104) = &block_descriptor_92;
    *(v0 + 112) = v31;
    [v30 activateElement:v19 completion:v0 + 80];
    v28 = v0 + 16;

    return MEMORY[0x282200938](v28);
  }

  v32 = *(v0 + 244);
  v34 = *(v0 + 280);
  v33 = *(v0 + 288);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9DEB0);
  sub_21BA8807C();
  *(v0 + 224) = v34;
  *(v0 + 232) = v33;
  *(v0 + 240) = v32;
  *(v0 + 242) = 0;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9CE78);
  sub_21BA87A4C();

  v35 = *(v0 + 8);

  return v35();
}

uint64_t sub_21BA31A98()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 432) = v2;
  v3 = *(v1 + 400);
  v4 = *(v1 + 392);
  if (v2)
  {
    v5 = sub_21BA31D18;
  }

  else
  {
    v5 = sub_21BA31BC8;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_21BA31BC8()
{
  v2 = *(v0 + 416);
  v1 = *(v0 + 424);

  v3 = *(v0 + 244);
  v5 = *(v0 + 280);
  v4 = *(v0 + 288);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9DEB0);
  sub_21BA8807C();
  *(v0 + 224) = v5;
  *(v0 + 232) = v4;
  *(v0 + 240) = v3;
  *(v0 + 242) = 0;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9CE78);
  sub_21BA87A4C();

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_21BA31D18()
{
  v1 = *(v0 + 424);
  v2 = *(v0 + 416);
  v3 = *(v0 + 244);
  v5 = *(v0 + 280);
  v4 = *(v0 + 288);

  swift_willThrow();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9DEB0);
  sub_21BA8807C();
  *(v0 + 248) = v5;
  *(v0 + 256) = v4;
  *(v0 + 264) = v3;
  *(v0 + 243) = 0;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9CE78);
  sub_21BA87A4C();

  v6 = *(v0 + 8);

  return v6();
}

Swift::Void __swiftcall URLLoadingCapable.activate()()
{
  v3 = v1;
  v4 = v0;
  v5 = *(v0 - 8);
  v6 = *(v5 + 64);
  (MEMORY[0x28223BE20])();
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9D6B8);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v16 - v9;
  sub_21BA87FFC();
  v11 = sub_21BA8801C();
  (*(*(v11 - 8) + 56))(v10, 0, 1, v11);
  (*(v5 + 16))(v7, v2, v4);
  sub_21BA87FEC();
  v12 = sub_21BA87FDC();
  v13 = (*(v5 + 80) + 48) & ~*(v5 + 80);
  v14 = swift_allocObject();
  v15 = MEMORY[0x277D85700];
  *(v14 + 2) = v12;
  *(v14 + 3) = v15;
  *(v14 + 4) = v4;
  *(v14 + 5) = v3;
  (*(v5 + 32))(&v14[v13], v7, v4);
  sub_21B9F2BA4(0, 0, v10, &unk_21BA9AC68, v14);
}

uint64_t sub_21BA32064(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[5] = a5;
  v6[6] = a6;
  v6[4] = a4;
  sub_21BA87FEC();
  v6[7] = sub_21BA87FDC();
  v8 = sub_21BA87F9C();
  v6[8] = v8;
  v6[9] = v7;

  return MEMORY[0x2822009F8](sub_21BA32100, v8, v7);
}

uint64_t sub_21BA32100()
{
  v1 = v0[5];
  v2 = v0[6];
  v0[3] = 0;
  v0[2] = 0;
  v3 = sub_21BA30F9C(v1, v2);
  v5 = v4;
  v7 = v6;
  v0[10] = v3;
  v0[11] = v4;
  v8 = swift_task_alloc();
  v0[12] = v8;
  sub_21BA36060();
  *v8 = v0;
  v8[1] = sub_21BA321EC;
  v9 = v0[5];
  v10 = v0[6];

  return sub_21BA31370((v0 + 2), v3, v5, v7 & 1, v9, &type metadata for NoElement, v10);
}

uint64_t sub_21BA321EC()
{
  v2 = *v1;
  *(*v1 + 104) = v0;

  if (v0)
  {
    v3 = *(v2 + 64);
    v4 = *(v2 + 72);
    v5 = sub_21BA32374;
  }

  else
  {

    v3 = *(v2 + 64);
    v4 = *(v2 + 72);
    v5 = sub_21BA32310;
  }

  return MEMORY[0x2822009F8](v5, v3, v4);
}

uint64_t sub_21BA32310()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_21BA32374()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t URLLoadingCapable.activate(progressBinding:)(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  v24 = a5;
  v25 = a3;
  v9 = *(a4 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](a1);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9D6B8);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v24 - v13;
  sub_21BA87FFC();
  v15 = sub_21BA8801C();
  (*(*(v15 - 8) + 56))(v14, 0, 1, v15);
  (*(v9 + 16))(v11, v5, a4);
  sub_21BA87FEC();

  v16 = sub_21BA87FDC();
  v17 = (*(v9 + 80) + 48) & ~*(v9 + 80);
  v18 = (v10 + v17 + 7) & 0xFFFFFFFFFFFFFFF8;
  v19 = swift_allocObject();
  v20 = MEMORY[0x277D85700];
  *(v19 + 2) = v16;
  *(v19 + 3) = v20;
  v21 = v24;
  *(v19 + 4) = a4;
  *(v19 + 5) = v21;
  (*(v9 + 32))(&v19[v17], v11, a4);
  v22 = &v19[v18];
  *v22 = a1;
  *(v22 + 1) = a2;
  v22[16] = v25;
  sub_21B9F2BA4(0, 0, v14, &unk_21BA9AC78, v19);
}

uint64_t sub_21BA32624(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, uint64_t a8)
{
  v8[4] = sub_21BA87FEC();
  v8[5] = sub_21BA87FDC();
  v8[3] = 0;
  v8[2] = 0;
  v13 = swift_task_alloc();
  v8[6] = v13;
  sub_21BA36060();
  *v13 = v8;
  v13[1] = sub_21BA32734;

  return sub_21BA31370((v8 + 2), a5, a6, a7, a8, &type metadata for NoElement, v16);
}

uint64_t sub_21BA32734()
{
  *(*v1 + 56) = v0;

  v3 = sub_21BA87F9C();
  if (v0)
  {
    v4 = sub_21BA328DC;
  }

  else
  {
    v4 = sub_21BA32878;
  }

  return MEMORY[0x2822009F8](v4, v3, v2);
}

uint64_t sub_21BA32878()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_21BA328DC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t URLLoadingCapable.activate(progressBinding:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  v5[3] = 0;
  v5[2] = 0;
  v11 = swift_task_alloc();
  v5[4] = v11;
  sub_21BA36060();
  *v11 = v5;
  v11[1] = sub_21BA32A2C;

  return sub_21BA31370((v5 + 2), a1, a2, a3, a4, &type metadata for NoElement, a5);
}

uint64_t sub_21BA32A2C()
{
  v2 = *v1;
  *(v2 + 40) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_21BA32B60, 0, 0);
  }

  else
  {
    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t URLLoadingCapable.activate<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v31 = a4;
  v32 = a5;
  v9 = *(a3 - 8);
  v30[1] = *(v9 + 64);
  MEMORY[0x28223BE20](a1);
  v11 = v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30[0] = v11;
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v15);
  v16 = v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9D6B8);
  MEMORY[0x28223BE20](v17 - 8);
  v19 = v30 - v18;
  sub_21BA87FFC();
  v20 = sub_21BA8801C();
  (*(*(v20 - 8) + 56))(v19, 0, 1, v20);
  (*(v13 + 16))(v16, v5, a2);
  v21 = a1;
  v22 = a3;
  (*(v9 + 16))(v11, v21, a3);
  sub_21BA87FEC();
  v23 = sub_21BA87FDC();
  v24 = (*(v13 + 80) + 64) & ~*(v13 + 80);
  v25 = (v14 + *(v9 + 80) + v24) & ~*(v9 + 80);
  v26 = swift_allocObject();
  v27 = MEMORY[0x277D85700];
  *(v26 + 2) = v23;
  *(v26 + 3) = v27;
  *(v26 + 4) = a2;
  *(v26 + 5) = v22;
  v28 = v32;
  *(v26 + 6) = v31;
  *(v26 + 7) = v28;
  (*(v13 + 32))(&v26[v24], v16, a2);
  (*(v9 + 32))(&v26[v25], v30[0], v22);
  sub_21B9F2BA4(0, 0, v19, &unk_21BA9AC90, v26);
}

{
  v6[6] = a5;
  v6[7] = v5;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  v7 = sub_21BA883CC();
  v6[8] = v7;
  v6[9] = *(v7 - 8);
  v6[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21BA33438, 0, 0);
}

uint64_t sub_21BA32E50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[6] = a8;
  v8[7] = v14;
  v8[4] = a6;
  v8[5] = a7;
  v8[2] = a4;
  v8[3] = a5;
  v9 = sub_21BA883CC();
  v8[8] = v9;
  v8[9] = *(v9 - 8);
  v8[10] = swift_task_alloc();
  sub_21BA87FEC();
  v8[11] = sub_21BA87FDC();
  v11 = sub_21BA87F9C();
  v8[12] = v11;
  v8[13] = v10;

  return MEMORY[0x2822009F8](sub_21BA32F58, v11, v10);
}

uint64_t sub_21BA32F58()
{
  v1 = v0[10];
  v3 = v0[5];
  v2 = v0[6];
  v4 = v0[4];
  v5 = *(v3 - 8);
  (*(v5 + 16))(v1, v0[3], v3);
  (*(v5 + 56))(v1, 0, 1, v3);
  v6 = sub_21BA30F9C(v4, v2);
  v8 = v7;
  v10 = v9;
  v0[14] = v6;
  v0[15] = v7;
  v11 = swift_task_alloc();
  v0[16] = v11;
  *v11 = v0;
  v11[1] = sub_21BA330BC;
  v12 = v0[10];
  v13 = v0[5];
  v14 = v0[6];
  v15 = v0[4];

  return sub_21BA31370(v12, v6, v8, v10 & 1, v15, v13, v14);
}

uint64_t sub_21BA330BC()
{
  v2 = *v1;
  v3 = *(*v1 + 80);
  v4 = *(*v1 + 72);
  v5 = *(*v1 + 64);
  *(*v1 + 136) = v0;

  (*(v4 + 8))(v3, v5);

  v6 = *(v2 + 104);
  v7 = *(v2 + 96);
  if (v0)
  {
    v8 = sub_21BA33300;
  }

  else
  {
    v8 = sub_21BA33294;
  }

  return MEMORY[0x2822009F8](v8, v7, v6);
}

uint64_t sub_21BA33294()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_21BA33300()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_21BA33438()
{
  v1 = v0[10];
  v3 = v0[4];
  v2 = v0[5];
  v4 = v0[3];
  v5 = *(v3 - 8);
  (*(v5 + 16))(v1, v0[2], v3);
  (*(v5 + 56))(v1, 0, 1, v3);
  v6 = sub_21BA30F9C(v4, v2);
  v8 = v7;
  v10 = v9;
  v0[11] = v6;
  v0[12] = v7;
  v11 = swift_task_alloc();
  v0[13] = v11;
  *v11 = v0;
  v11[1] = sub_21BA3359C;
  v12 = v0[10];
  v13 = v0[4];
  v14 = v0[5];
  v15 = v0[3];

  return sub_21BA31370(v12, v6, v8, v10 & 1, v15, v13, v14);
}

uint64_t sub_21BA3359C()
{
  v2 = *(*v1 + 80);
  v3 = *(*v1 + 72);
  v4 = *(*v1 + 64);
  v5 = *v1;
  *(*v1 + 112) = v0;

  (*(v3 + 8))(v2, v4);

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_21BA33790, 0, 0);
  }

  else
  {

    v6 = *(v5 + 8);

    return v6();
  }
}

uint64_t sub_21BA33790()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t URLLoadingCapable.activate<A>(_:progressBinding:)(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v34 = a6;
  v37 = a7;
  v38 = a8;
  v39 = a4;
  v31 = a3;
  v32 = a2;
  v36 = a1;
  v9 = *(a6 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](a1);
  v33 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = v11;
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v14);
  v15 = &v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9D6B8);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = &v30 - v17;
  sub_21BA87FFC();
  v19 = sub_21BA8801C();
  (*(*(v19 - 8) + 56))(v18, 0, 1, v19);
  (*(v12 + 16))(v15, v35, a5);
  v20 = v34;
  (*(v9 + 16))(&v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v36, v34);
  sub_21BA87FEC();

  v21 = sub_21BA87FDC();
  v22 = (*(v12 + 80) + 64) & ~*(v12 + 80);
  v23 = (v13 + *(v9 + 80) + v22) & ~*(v9 + 80);
  v24 = swift_allocObject();
  v25 = MEMORY[0x277D85700];
  *(v24 + 2) = v21;
  *(v24 + 3) = v25;
  *(v24 + 4) = v30;
  *(v24 + 5) = v20;
  v26 = v38;
  *(v24 + 6) = v37;
  *(v24 + 7) = v26;
  (*(v12 + 32))(&v24[v22], v15);
  (*(v9 + 32))(&v24[v23], v33, v20);
  v27 = &v24[(v10 + v23 + 7) & 0xFFFFFFFFFFFFFFF8];
  v28 = v31;
  *v27 = v32;
  *(v27 + 1) = v28;
  v27[16] = v39;
  sub_21B9F2BA4(0, 0, v18, &unk_21BA9ACA8, v24);
}

uint64_t sub_21BA33B08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  *(v8 + 64) = v16;
  *(v8 + 72) = v17;
  *(v8 + 48) = v14;
  *(v8 + 56) = v15;
  *(v8 + 144) = a8;
  *(v8 + 32) = a6;
  *(v8 + 40) = a7;
  *(v8 + 16) = a4;
  *(v8 + 24) = a5;
  v9 = sub_21BA883CC();
  *(v8 + 80) = v9;
  *(v8 + 88) = *(v9 - 8);
  *(v8 + 96) = swift_task_alloc();
  sub_21BA87FEC();
  *(v8 + 104) = sub_21BA87FDC();
  v11 = sub_21BA87F9C();
  *(v8 + 112) = v11;
  *(v8 + 120) = v10;

  return MEMORY[0x2822009F8](sub_21BA33C18, v11, v10);
}

uint64_t sub_21BA33C18()
{
  v1 = *(v0 + 96);
  v2 = *(v0 + 56);
  v3 = *(v2 - 8);
  (*(v3 + 16))(v1, *(v0 + 24), v2);
  (*(v3 + 56))(v1, 0, 1, v2);
  v4 = swift_task_alloc();
  *(v0 + 128) = v4;
  *v4 = v0;
  v4[1] = sub_21BA33D50;
  v5 = *(v0 + 96);
  v6 = *(v0 + 56);
  v7 = *(v0 + 64);
  v8 = *(v0 + 40);
  v9 = *(v0 + 48);
  v10 = *(v0 + 144);
  v11 = *(v0 + 32);

  return sub_21BA31370(v5, v11, v8, v10, v9, v6, v7);
}

uint64_t sub_21BA33D50()
{
  v2 = *v1;
  v3 = *(*v1 + 96);
  v4 = *(*v1 + 88);
  v5 = *(*v1 + 80);
  *(*v1 + 136) = v0;

  (*(v4 + 8))(v3, v5);
  v6 = *(v2 + 120);
  v7 = *(v2 + 112);
  if (v0)
  {
    v8 = sub_21BA33F54;
  }

  else
  {
    v8 = sub_21BA33EE8;
  }

  return MEMORY[0x2822009F8](v8, v7, v6);
}

uint64_t sub_21BA33EE8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_21BA33F54()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_21BA33FC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  *(v6 + 34) = a6;
  *(v6 + 40) = a4;
  *(v6 + 48) = a5;
  v7 = sub_21BA8867C();
  *(v6 + 56) = v7;
  *(v6 + 64) = *(v7 - 8);
  *(v6 + 72) = swift_task_alloc();
  *(v6 + 80) = sub_21BA87FEC();
  *(v6 + 88) = sub_21BA87FDC();
  v9 = sub_21BA87F9C();
  *(v6 + 96) = v9;
  *(v6 + 104) = v8;

  return MEMORY[0x2822009F8](sub_21BA340BC, v9, v8);
}

uint64_t sub_21BA340BC()
{
  sub_21BA88B3C();
  v1 = swift_task_alloc();
  *(v0 + 112) = v1;
  *v1 = v0;
  v1[1] = sub_21BA34188;

  return sub_21BA349C0(300000000000000000, 0, 0, 0, 1);
}

uint64_t sub_21BA34188()
{
  v2 = *v1;
  v3 = *(*v1 + 72);
  v4 = *(*v1 + 64);
  v5 = *(*v1 + 56);
  *(*v1 + 120) = v0;

  (*(v4 + 8))(v3, v5);
  v6 = *(v2 + 104);
  v7 = *(v2 + 96);
  if (v0)
  {
    v8 = sub_21BA343DC;
  }

  else
  {
    v8 = sub_21BA34320;
  }

  return MEMORY[0x2822009F8](v8, v7, v6);
}

uint64_t sub_21BA34320()
{
  v1 = *(v0 + 120);
  sub_21BA8808C();
  if (v1)
  {

    v2 = *(v0 + 8);

    return v2();
  }

  else
  {

    return MEMORY[0x2822009F8](sub_21BA34448, 0, 0);
  }
}

uint64_t sub_21BA343DC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_21BA34448()
{
  *(v0 + 128) = sub_21BA87FDC();
  v2 = sub_21BA87F9C();

  return MEMORY[0x2822009F8](sub_21BA344D4, v2, v1);
}

uint64_t sub_21BA344D4()
{
  v1 = *(v0 + 34);
  v3 = *(v0 + 40);
  v2 = *(v0 + 48);

  *(v0 + 16) = v3;
  *(v0 + 24) = v2;
  *(v0 + 32) = v1;
  *(v0 + 33) = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9CE78);
  sub_21BA87A4C();
  v4 = *(v0 + 96);
  v5 = *(v0 + 104);

  return MEMORY[0x2822009F8](sub_21BA34584, v4, v5);
}

uint64_t sub_21BA34584()
{

  v1 = *(v0 + 8);

  return v1();
}

unint64_t sub_21BA345F4(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9E260);
    v2 = sub_21BA8872C();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v12 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v8;
    if (v5)
    {
      while (1)
      {
        v13 = __clz(__rbit64(v5));
        v5 &= v5 - 1;
        v14 = (*(a1 + 48) + ((v12 << 10) | (16 * v13)));
        v16 = *v14;
        v15 = v14[1];

        swift_dynamicCast();
        sub_21B9AFF70(&v22, v24);
        sub_21B9AFF70(v24, v25);
        sub_21B9AFF70(v25, &v23);
        result = sub_21B940DCC(v16, v15);
        if (v17)
        {
          v9 = (v2[6] + 16 * result);
          *v9 = v16;
          v9[1] = v15;
          v10 = result;

          v11 = (v2[7] + 32 * v10);
          __swift_destroy_boxed_opaque_existential_1(v11);
          result = sub_21B9AFF70(&v23, v11);
          v8 = v12;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_20;
          }

          *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
          v18 = (v2[6] + 16 * result);
          *v18 = v16;
          v18[1] = v15;
          result = sub_21B9AFF70(&v23, (v2[7] + 32 * result));
          v19 = v2[2];
          v20 = __OFADD__(v19, 1);
          v21 = v19 + 1;
          if (v20)
          {
            goto LABEL_21;
          }

          v2[2] = v21;
          v8 = v12;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v12 = v8;
      }
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

uint64_t sub_21BA3484C(uint64_t a1, char a2, void *a3)
{
  v5 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9DEB0);
    v6 = swift_allocError();
    *v7 = a3;
    v8 = a3;

    return MEMORY[0x282200958](v5, v6);
  }

  else
  {
    **(*(v5 + 64) + 40) = a2;

    return MEMORY[0x282200950](v5);
  }
}

id sub_21BA34958()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for NoElement.ScriptInterface();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_21BA3498C()
{
  v0 = objc_allocWithZone(type metadata accessor for NoElement.ScriptInterface());

  return [v0 init];
}

uint64_t sub_21BA349C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v6 + 56) = v5;
  v12 = sub_21BA8866C();
  *(v6 + 64) = v12;
  *(v6 + 72) = *(v12 - 8);
  *(v6 + 80) = swift_task_alloc();
  *(v6 + 88) = swift_task_alloc();
  *(v6 + 40) = a1;
  *(v6 + 48) = a2;
  *(v6 + 16) = a3;
  *(v6 + 24) = a4;
  *(v6 + 32) = a5 & 1;

  return MEMORY[0x2822009F8](sub_21BA34AC0, 0, 0);
}

uint64_t sub_21BA34AC0()
{
  v1 = v0[10];
  v2 = v0[8];
  v3 = v0[9];
  v4 = sub_21BA8867C();
  v5 = sub_21BA37400(&qword_27CD9F0A8, MEMORY[0x277D85928]);
  sub_21BA88B1C();
  sub_21BA37400(&qword_27CD9F0B0, MEMORY[0x277D858F8]);
  sub_21BA8868C();
  v6 = *(v3 + 8);
  v0[12] = v6;
  v0[13] = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v6(v1, v2);
  v7 = swift_task_alloc();
  v0[14] = v7;
  *v7 = v0;
  v7[1] = sub_21BA34C50;
  v8 = v0[11];

  return MEMORY[0x2822008C8](v8, v0 + 2, v4, v5);
}

uint64_t sub_21BA34C50()
{
  v2 = *(*v1 + 96);
  v3 = *(*v1 + 88);
  v4 = *(*v1 + 64);
  v5 = *v1;
  *(v5 + 120) = v0;

  v2(v3, v4);
  if (v0)
  {

    return MEMORY[0x2822009F8](sub_21BA34E0C, 0, 0);
  }

  else
  {

    v6 = *(v5 + 8);

    return v6();
  }
}

uint64_t sub_21BA34E0C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_21BA34E78(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  sub_21BA88BAC();
  sub_21BA87D8C();
  v8 = sub_21BA88BCC();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if ((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = (*(v7 + 48) + 16 * v10);
      v13 = *v12 == a2 && v12[1] == a3;
      if (v13 || (sub_21BA8899C() & 1) != 0)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      if (((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v16 = (*(v7 + 48) + 16 * v10);
    v17 = v16[1];
    *a1 = *v16;
    a1[1] = v17;

    return 0;
  }

  else
  {
LABEL_9:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v3;

    sub_21BA358BC(a2, a3, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v18;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_21BA34FC8(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  sub_21BA88BAC();
  sub_21BA87D8C();
  v6 = sub_21BA88BCC();
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
  {
    return 0;
  }

  v9 = ~v7;
  while (1)
  {
    v10 = (*(v5 + 48) + 16 * v8);
    v11 = *v10 == a1 && v10[1] == a2;
    if (v11 || (sub_21BA8899C() & 1) != 0)
    {
      break;
    }

    v8 = (v8 + 1) & v9;
    if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
    {
      return 0;
    }
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v14 = *v2;
  v16 = *v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_21BA35104();
    v14 = v16;
  }

  v12 = *(*(v14 + 48) + 16 * v8);
  sub_21BA356F8(v8);
  *v2 = v16;
  return v12;
}

void *sub_21BA35104()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9F8B0);
  v2 = *v0;
  v3 = sub_21BA8854C();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
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
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + v17);
        *v20 = *v18;
        v20[1] = v19;
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

      v16 = *(v2 + 56 + 8 * v8);
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

uint64_t sub_21BA35260()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9F8B0);
  result = sub_21BA8855C();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = 1 << *(v2 + 32);
    if (v6 < 64)
    {
      v7 = ~(-1 << v6);
    }

    else
    {
      v7 = -1;
    }

    v8 = v7 & *(v2 + 56);
    v9 = (v6 + 63) >> 6;
    v10 = result + 56;
    while (v8)
    {
      v13 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
LABEL_15:
      v16 = (*(v2 + 48) + 16 * (v13 | (v5 << 6)));
      v17 = *v16;
      v18 = v16[1];
      sub_21BA88BAC();

      sub_21BA87D8C();
      result = sub_21BA88BCC();
      v19 = -1 << *(v4 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v10 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v10 + 8 * v21);
          if (v25 != -1)
          {
            v11 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v11 = __clz(__rbit64((-1 << v20) & ~*(v10 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v10 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
      v12 = (*(v4 + 48) + 16 * v11);
      *v12 = v17;
      v12[1] = v18;
      ++*(v4 + 16);
    }

    v14 = v5;
    while (1)
    {
      v5 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v5 >= v9)
      {

        v1 = v0;
        goto LABEL_26;
      }

      v15 = *(v2 + 56 + 8 * v5);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v8 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v1 = v4;
  }

  return result;
}

uint64_t sub_21BA35498()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9F8B0);
  result = sub_21BA8855C();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = (v2 + 56);
    v7 = 1 << *(v2 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v2 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v14 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v17 = (*(v2 + 48) + 16 * (v14 | (v5 << 6)));
      v18 = *v17;
      v19 = v17[1];
      sub_21BA88BAC();
      sub_21BA87D8C();
      result = sub_21BA88BCC();
      v20 = -1 << *(v4 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v11 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v11 + 8 * v22);
          if (v26 != -1)
          {
            v12 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v12 = __clz(__rbit64((-1 << v21) & ~*(v11 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v13 = (*(v4 + 48) + 16 * v12);
      *v13 = v18;
      v13[1] = v19;
      ++*(v4 + 16);
    }

    v15 = v5;
    while (1)
    {
      v5 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v5 >= v10)
      {
        break;
      }

      v16 = v6[v5];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v9 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    v27 = 1 << *(v2 + 32);
    if (v27 >= 64)
    {
      bzero((v2 + 56), ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v6 = -1 << v27;
    }

    v1 = v0;
    *(v2 + 16) = 0;
  }

  *v1 = v4;
  return result;
}

unint64_t sub_21BA356F8(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = sub_21BA884AC();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        sub_21BA88BAC();

        sub_21BA87D8C();
        v10 = sub_21BA88BCC();

        v11 = v10 & v7;
        if (v2 >= v9)
        {
          if (v11 < v9)
          {
            goto LABEL_5;
          }
        }

        else if (v11 >= v9)
        {
          goto LABEL_11;
        }

        if (v2 >= v11)
        {
LABEL_11:
          v12 = *(v3 + 48);
          v13 = (v12 + 16 * v2);
          v14 = (v12 + 16 * v6);
          if (v2 != v6 || v13 >= v14 + 1)
          {
            *v13 = *v14;
            v2 = v6;
          }
        }

LABEL_5:
        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v15 = *(v3 + 16);
  v16 = __OFSUB__(v15, 1);
  v17 = v15 - 1;
  if (v16)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v17;
    ++*(v3 + 36);
  }

  return result;
}

uint64_t sub_21BA358BC(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    sub_21BA35498();
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_21BA35104();
      goto LABEL_16;
    }

    sub_21BA35260();
  }

  v10 = *v4;
  sub_21BA88BAC();
  sub_21BA87D8C();
  result = sub_21BA88BCC();
  v11 = -1 << *(v10 + 32);
  a3 = result & ~v11;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v12 = ~v11;
    do
    {
      v13 = (*(v10 + 48) + 16 * a3);
      if (*v13 == v7 && v13[1] == a2)
      {
        goto LABEL_19;
      }

      result = sub_21BA8899C();
      if (result)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v12;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v15 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v16 = (*(v15 + 48) + 16 * a3);
  *v16 = v7;
  v16[1] = a2;
  v17 = *(v15 + 16);
  v18 = __OFADD__(v17, 1);
  v19 = v17 + 1;
  if (!v18)
  {
    *(v15 + 16) = v19;
    return result;
  }

  __break(1u);
LABEL_19:
  result = sub_21BA88AFC();
  __break(1u);
  return result;
}

uint64_t sub_21BA35A3C(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v3 = 0;
  v4 = result + 56;
  v5 = 1 << *(result + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(result + 56);
  v8 = (v5 + 63) >> 6;
  v9 = a2 + 56;
  v22 = result;
  while (v7)
  {
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_15:
    v13 = (*(result + 48) + 16 * (v10 | (v3 << 6)));
    v15 = *v13;
    v14 = v13[1];
    sub_21BA88BAC();

    sub_21BA87D8C();
    v16 = sub_21BA88BCC();
    v17 = -1 << *(a2 + 32);
    v18 = v16 & ~v17;
    if (((*(v9 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) == 0)
    {
LABEL_23:

      return 0;
    }

    v19 = ~v17;
    while (1)
    {
      v20 = (*(a2 + 48) + 16 * v18);
      v21 = *v20 == v15 && v20[1] == v14;
      if (v21 || (sub_21BA8899C() & 1) != 0)
      {
        break;
      }

      v18 = (v18 + 1) & v19;
      if (((*(v9 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) == 0)
      {
        goto LABEL_23;
      }
    }

    result = v22;
  }

  v11 = v3;
  while (1)
  {
    v3 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v3 >= v8)
    {
      return 1;
    }

    v12 = *(v4 + 8 * v3);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v7 = (v12 - 1) & v12;
      goto LABEL_15;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_21BA35BF4()
{
  v0 = sub_21BA8875C();

  if (v0 >= 0xD)
  {
    return 13;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_21BA35C40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v30 = a6;
  v31 = a2;
  v32 = a3;
  v33 = a5;
  v8 = sub_21BA883CC();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v12);
  v15 = &v26 - v14;
  v16 = *(v9 + 16);
  v29 = a1;
  v16(&v26 - v14, a1, v8, v13);
  v17 = *(a4 - 8);
  v18 = *(v17 + 48);
  if (v18(v15, 1, a4) == 1)
  {
    (*(v9 + 8))(v15, v8);
    v19 = sub_21BA88C5C();
    v27 = v20;
    v28 = v19;
  }

  else
  {
    v21 = sub_21BA88C5C();
    v27 = v22;
    v28 = v21;
    (*(v17 + 8))(v15, a4);
  }

  (v16)(v11, v29, v8);
  if (v18(v11, 1, a4) == 1)
  {
    (*(v9 + 8))(v11, v8);
LABEL_7:
    sub_21BA88C7C();
    return v28;
  }

  sub_21BA88C7C();
  v24 = v23;
  (*(v17 + 8))(v11, a4);
  if (v24)
  {
    goto LABEL_7;
  }

  return v28;
}

unint64_t sub_21BA35ECC()
{
  result = qword_27CD9F048;
  if (!qword_27CD9F048)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CD9F040);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD9F048);
  }

  return result;
}

unint64_t sub_21BA35F30()
{
  result = qword_27CD9F050;
  if (!qword_27CD9F050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD9F050);
  }

  return result;
}

unint64_t sub_21BA35F84()
{
  result = qword_27CD9F058;
  if (!qword_27CD9F058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD9F058);
  }

  return result;
}

uint64_t sub_21BA35FD8(uint64_t a1)
{
  v2 = type metadata accessor for URLLoadingParameters(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_21BA36060()
{
  result = qword_27CDAB340[0];
  if (!qword_27CDAB340[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27CDAB340);
  }

  return result;
}

uint64_t sub_21BA360B4()
{
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = (*(*(v2 - 8) + 80) + 48) & ~*(*(v2 - 8) + 80);
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_21B9AC2E8;

  return sub_21BA32064(v5, v6, v7, v0 + v4, v2, v3);
}

uint64_t sub_21BA36188()
{
  v2 = *(v0 + 32);
  v3 = (*(*(v2 - 8) + 80) + 48) & ~*(*(v2 - 8) + 80);
  v4 = v0 + ((*(*(v2 - 8) + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8);
  v5 = *v4;
  v6 = *(v4 + 8);
  v7 = *(v4 + 16);
  v8 = swift_task_alloc();
  *(v1 + 16) = v8;
  *v8 = v1;
  v8[1] = sub_21B9AC2E8;

  return sub_21BA32624(v8, v9, v10, v0 + v3, v5, v6, v7, v2);
}

uint64_t sub_21BA362B0()
{
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[6];
  v5 = (*(*(v2 - 8) + 80) + 64) & ~*(*(v2 - 8) + 80);
  v6 = (v5 + *(*(v2 - 8) + 64) + *(*(v3 - 8) + 80)) & ~*(*(v3 - 8) + 80);
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_21B9AC2E8;

  return sub_21BA32E50(v7, v8, v9, v0 + v5, v0 + v6, v2, v3, v4);
}

uint64_t sub_21BA363F8()
{
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = (*(*(v2 - 8) + 80) + 64) & ~*(*(v2 - 8) + 80);
  v5 = (v4 + *(*(v2 - 8) + 64) + *(*(v3 - 8) + 80)) & ~*(*(v3 - 8) + 80);
  v6 = v0 + ((*(*(v3 - 8) + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8);
  v7 = *v6;
  v8 = *(v6 + 8);
  v9 = *(v6 + 16);
  v10 = swift_task_alloc();
  *(v1 + 16) = v10;
  *v10 = v1;
  v10[1] = sub_21B9AC2E8;

  return sub_21BA33B08(v10, v11, v12, v0 + v4, v0 + v5, v7, v8, v9);
}

uint64_t sub_21BA3658C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9F8B0);
    v3 = sub_21BA8857C();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (2)
    {
      v7 = (v6 + 16 * v4);
      v9 = *v7;
      v8 = v7[1];
      sub_21BA88BAC();

      sub_21BA87D8C();
      result = sub_21BA88BCC();
      v11 = ~(-1 << *(v3 + 32));
      for (i = result & v11; ; i = (i + 1) & v11)
      {
        v13 = *(v5 + 8 * (i >> 6));
        if (((1 << i) & v13) == 0)
        {
          break;
        }

        v14 = (*(v3 + 48) + 16 * i);
        if (*v14 != v9 || v14[1] != v8)
        {
          result = sub_21BA8899C();
          if ((result & 1) == 0)
          {
            continue;
          }
        }

        goto LABEL_4;
      }

      *(v5 + 8 * (i >> 6)) = (1 << i) | v13;
      v16 = (*(v3 + 48) + 16 * i);
      *v16 = v9;
      v16[1] = v8;
      v17 = *(v3 + 16);
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (!v18)
      {
        *(v3 + 16) = v19;
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

unint64_t sub_21BA366F8()
{
  result = qword_27CD9F068;
  if (!qword_27CD9F068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD9F068);
  }

  return result;
}

unint64_t sub_21BA36750()
{
  result = qword_27CD9F070;
  if (!qword_27CD9F070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD9F070);
  }

  return result;
}

unint64_t sub_21BA367A8()
{
  result = qword_27CD9F078;
  if (!qword_27CD9F078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD9F078);
  }

  return result;
}

unint64_t sub_21BA36800()
{
  result = qword_27CD9F080;
  if (!qword_27CD9F080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD9F080);
  }

  return result;
}

unint64_t sub_21BA36890()
{
  result = qword_27CD9F088;
  if (!qword_27CD9F088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD9F088);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for URLLoadingParameters.DefaultCodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF4)
  {
    goto LABEL_17;
  }

  if (a2 + 12 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 12) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 12;
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

      return (*a1 | (v4 << 8)) - 12;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 12;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xD;
  v8 = v6 - 13;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for URLLoadingParameters.DefaultCodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 12 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 12) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF4)
  {
    v4 = 0;
  }

  if (a2 > 0xF3)
  {
    v5 = ((a2 - 244) >> 8) + 1;
    *result = a2 + 12;
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
    *result = a2 + 12;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_21BA36B0C()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_21BA36B68()
{
  result = sub_21BA883CC();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_21BA36BF4(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = v5 - 1;
  if (!v5)
  {
    v6 = 0;
  }

  v7 = *(*(*(a3 + 16) - 8) + 64);
  if (!v5)
  {
    ++v7;
  }

  if (!a2)
  {
    return 0;
  }

  v8 = a2 - v6;
  if (a2 > v6)
  {
    v9 = *(v4 + 80);
    v10 = ((v7 + v9 + ((v7 + v9 + ((v7 + v9 + ((v7 + v9 + ((v7 + v9 + ((v7 + v9 + ((v7 + v9 + ((v7 + v9 + ((v7 + v9 + ((v7 + v9 + ((v7 + v9) & ~v9)) & ~v9)) & ~v9)) & ~v9)) & ~v9)) & ~v9)) & ~v9)) & ~v9)) & ~v9)) & ~v9)) & ~v9) + v7;
    v11 = 8 * v10;
    if (v10 > 3)
    {
      goto LABEL_8;
    }

    v13 = ((v8 + ~(-1 << v11)) >> v11) + 1;
    if (HIWORD(v13))
    {
      v12 = *(a1 + v10);
      if (v12)
      {
        goto LABEL_15;
      }
    }

    else
    {
      if (v13 <= 0xFF)
      {
        if (v13 < 2)
        {
          goto LABEL_26;
        }

LABEL_8:
        v12 = *(a1 + v10);
        if (!*(a1 + v10))
        {
          goto LABEL_26;
        }

LABEL_15:
        v14 = (v12 - 1) << v11;
        if (v10 > 3)
        {
          v14 = 0;
        }

        if (v10)
        {
          if (v10 > 3)
          {
            LODWORD(v10) = 4;
          }

          if (v10 > 2)
          {
            if (v10 == 3)
            {
              LODWORD(v10) = *a1 | (*(a1 + 2) << 16);
            }

            else
            {
              LODWORD(v10) = *a1;
            }
          }

          else if (v10 == 1)
          {
            LODWORD(v10) = *a1;
          }

          else
          {
            LODWORD(v10) = *a1;
          }
        }

        return v6 + (v10 | v14) + 1;
      }

      v12 = *(a1 + v10);
      if (*(a1 + v10))
      {
        goto LABEL_15;
      }
    }
  }

LABEL_26:
  if (v5 < 2)
  {
    return 0;
  }

  v16 = (*(v4 + 48))(a1, v5);
  if (v16 >= 2)
  {
    return v16 - 1;
  }

  else
  {
    return 0;
  }
}

char *sub_21BA36DCC(char *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = 0;
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  v8 = *(v6 + 64);
  v9 = v7 - 1;
  if (!v7)
  {
    v9 = 0;
    ++v8;
  }

  v10 = *(v6 + 80);
  v11 = ((v8 + v10 + ((v8 + v10 + ((v8 + v10 + ((v8 + v10 + ((v8 + v10 + ((v8 + v10 + ((v8 + v10 + ((v8 + v10 + ((v8 + v10 + ((v8 + v10 + ((v8 + v10) & ~v10)) & ~v10)) & ~v10)) & ~v10)) & ~v10)) & ~v10)) & ~v10)) & ~v10)) & ~v10)) & ~v10)) & ~v10) + v8;
  v12 = a3 >= v9;
  v13 = a3 - v9;
  if (v13 == 0 || !v12)
  {
LABEL_15:
    if (v9 < a2)
    {
      goto LABEL_16;
    }

    goto LABEL_25;
  }

  if (v11 > 3)
  {
    v5 = 1;
    if (v9 < a2)
    {
      goto LABEL_16;
    }

    goto LABEL_25;
  }

  v14 = ((v13 + ~(-1 << (8 * v11))) >> (8 * v11)) + 1;
  if (!HIWORD(v14))
  {
    if (v14 < 0x100)
    {
      v15 = 1;
    }

    else
    {
      v15 = 2;
    }

    if (v14 >= 2)
    {
      v5 = v15;
    }

    else
    {
      v5 = 0;
    }

    goto LABEL_15;
  }

  v5 = 4;
  if (v9 < a2)
  {
LABEL_16:
    v16 = ~v9 + a2;
    if (v11 < 4)
    {
      v18 = (v16 >> (8 * v11)) + 1;
      if (v11)
      {
        v19 = v16 & ~(-1 << (8 * v11));
        v20 = result;
        bzero(result, v11);
        result = v20;
        if (v11 != 3)
        {
          if (v11 == 2)
          {
            *v20 = v19;
            if (v5 > 1)
            {
LABEL_43:
              if (v5 == 2)
              {
                *&result[v11] = v18;
              }

              else
              {
                *&result[v11] = v18;
              }

              return result;
            }
          }

          else
          {
            *v20 = v16;
            if (v5 > 1)
            {
              goto LABEL_43;
            }
          }

          goto LABEL_40;
        }

        *v20 = v19;
        v20[2] = BYTE2(v19);
      }

      if (v5 > 1)
      {
        goto LABEL_43;
      }
    }

    else
    {
      v17 = result;
      bzero(result, v11);
      result = v17;
      *v17 = v16;
      v18 = 1;
      if (v5 > 1)
      {
        goto LABEL_43;
      }
    }

LABEL_40:
    if (v5)
    {
      result[v11] = v18;
    }

    return result;
  }

LABEL_25:
  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *&result[v11] = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_32;
    }

    *&result[v11] = 0;
  }

  else if (v5)
  {
    result[v11] = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_32;
  }

  if (!a2)
  {
    return result;
  }

LABEL_32:
  if (v7 >= 2)
  {
    v21 = *(v6 + 56);

    return v21();
  }

  return result;
}

uint64_t dispatch thunk of URLLoadingCapable.handle(url:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 88) + **(a3 + 88));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_21B9AC1F4;

  return v9(a1, a2, a3);
}

unint64_t sub_21BA37288(uint64_t a1)
{
  result = sub_21BA372B0();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_21BA372B0()
{
  result = qword_27CDABF50[0];
  if (!qword_27CDABF50[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27CDABF50);
  }

  return result;
}

unint64_t sub_21BA37304()
{
  result = qword_27CD9F090;
  if (!qword_27CD9F090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD9F090);
  }

  return result;
}

uint64_t sub_21BA37358()
{
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = *(v0 + 48);
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_21B9AC2E8;

  return sub_21BA33FC0(v5, v6, v7, v2, v3, v4);
}

uint64_t sub_21BA37400(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_21BA3746C(uint64_t a1, void *a2)
{
  v3 = v2;
  v24 = a2;
  v5 = sub_21BA86BAC();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = v23 - v10;
  v12 = *(**sub_21BA6E8B4() + 152);

  v14 = v12(v13);
  v16 = v15;

  if (v14 && (v17 = (*(v16 + 8))([v2 traitCollection], v14, v16)) != 0)
  {
    v18 = v17;
    v19 = (*(v16 + 16))(v14, v16);
    v23[1] = v23;
    MEMORY[0x28223BE20](v19);
    v23[-6] = v2;
    v23[-5] = a1;
    v23[-4] = v24;
    v23[-3] = v18;
    v23[-2] = v16;
    sub_21BA86B9C();
    (*(v6 + 16))(v8, v11, v5);
    (*(v16 + 24))(v8, v14, v16);
    swift_unknownObjectRelease();
    (*(v6 + 8))(v11, v5);
  }

  else
  {
    v20 = [v2 viewControllers];
    sub_21B9BDFC0(0, &qword_27CD9F0B8);
    v21 = sub_21BA87F0C();

    v25 = v21;
    sub_21BA37760(a1, v24, &v25, v3);
    v22 = sub_21BA87EFC();

    [v3 setViewControllers:v22 animated:0];
  }
}

id sub_21BA37760(uint64_t a1, id a2, uint64_t a3, uint64_t i)
{
  v5 = a1;
  v6 = MEMORY[0x277D84F90];
  v22 = MEMORY[0x277D84F90];
  if (!a2)
  {
    v13 = MEMORY[0x277D84F90];
    goto LABEL_14;
  }

  result = [a2 defaultPages];
  if (!result)
  {
    goto LABEL_33;
  }

  v8 = result;
  sub_21B9BDFC0(0, &qword_27CD9F0E0);
  v9 = sub_21BA87F0C();

  if (v9 >> 62)
  {
    result = sub_21BA884DC();
    if (result)
    {
      goto LABEL_5;
    }
  }

  else
  {
    result = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
LABEL_5:
      if ((v9 & 0xC000000000000001) != 0)
      {
        goto LABEL_31;
      }

      if (*((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v10 = *(v9 + 32);
        goto LABEL_8;
      }

      __break(1u);
LABEL_33:
      __break(1u);
      return result;
    }
  }

  v13 = MEMORY[0x277D84F90];
LABEL_14:
  v14 = v20;
  MEMORY[0x28223BE20](a1);
  v19[2] = i;
  v19[3] = v5;
  if (v13 >> 62)
  {
    goto LABEL_27;
  }

  for (i = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_21BA884DC())
  {
    v21 = v6;
    v9 = &v21;
    sub_21BA8863C();
    if (i < 0)
    {
      __break(1u);
LABEL_31:
      v10 = MEMORY[0x21CEFD920](0, v9);
LABEL_8:
      v11 = v10;

      v12 = v11;
      MEMORY[0x21CEFD240]();
      if (*((v22 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v22 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_21BA87F3C();
      }

      sub_21BA87F6C();

      v13 = v22;
      goto LABEL_14;
    }

    v20[1] = v14;
    v5 = 0;
    v14 = (v13 & 0xFFFFFFFFFFFFFF8);
    while (1)
    {
      if ((v13 & 0xC000000000000001) != 0)
      {
        v15 = MEMORY[0x21CEFD920](v5, v13);
        goto LABEL_19;
      }

      if ((v5 & 0x8000000000000000) != 0)
      {
        break;
      }

      if (v5 >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_26;
      }

      v15 = *(v13 + 8 * v5 + 32);
LABEL_19:
      v6 = v15;
      ++v5;
      sub_21BA8861C();
      sub_21BA8864C();
      sub_21BA8865C();
      sub_21BA8862C();
      if (i == v5)
      {

        v16 = v21;
        goto LABEL_29;
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    ;
  }

  v16 = MEMORY[0x277D84F90];
LABEL_29:
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9F0C0);
  v18 = sub_21BA380E4();
  sub_21B9B60D0(sub_21BA38E40, v19, v16, v17, v18);
}

uint64_t sub_21BA37A50(void (*a1)(__int128 *__return_ptr, id, unint64_t, uint64_t))
{
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[4];
  v6 = v1[5];
  v7 = v1[6];
  swift_unknownObjectRetain();
  sub_21BA3898C(v4, v5, a1, v3, v6, v7);

  return swift_unknownObjectRelease();
}

void sub_21BA37AC4(void *a1, uint64_t a2, void *a3, void *a4)
{
  v7 = a3;
  v8 = a4;
  v9 = a1;
  sub_21BA3746C(a3, a4);
}

void sub_21BA37B4C(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v31 = a1;
  v32 = a2;
  v6 = sub_21BA86BAC();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v30 - v11;
  v13 = *(**sub_21BA6E8B4() + 152);

  v15 = v13(v14);
  v17 = v16;

  if (v15 && (v18 = (*(v17 + 8))([v3 traitCollection], v15, v17)) != 0)
  {
    v19 = v18;
    v20 = (*(v17 + 16))(v15, v17);
    MEMORY[0x28223BE20](v20);
    v22 = v31;
    v21 = v32;
    *(&v30 - 6) = v3;
    *(&v30 - 5) = v22;
    *(&v30 - 4) = v21;
    *(&v30 - 3) = v19;
    *(&v30 - 2) = v17;
    sub_21BA86B9C();
    (*(v7 + 16))(v9, v12, v6);
    (*(v17 + 24))(v9, v15, v17);
    swift_unknownObjectRelease();
    (*(v7 + 8))(v12, v6);
  }

  else
  {
    v23 = [v3 viewControllers];
    sub_21B9BDFC0(0, &qword_27CD9F0B8);
    v24 = sub_21BA87F0C();

    v33 = v24;
    MEMORY[0x28223BE20](v25);
    *(&v30 - 2) = v31;
    v26 = a3;
    v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9F0C0);
    v28 = sub_21BA380E4();
    sub_21B9B60D0(sub_21BA38078, (&v30 - 4), v32, v27, v28);
    v29 = sub_21BA87EFC();

    [v4 setViewControllers:v29 animated:v26 & 1];
  }
}

id sub_21BA37EA0(uint64_t a1)
{
  sub_21B9B3220(a1, v16);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9E410);
  sub_21B9BDFC0(0, &qword_27CD9F0B8);
  if (!swift_dynamicCast())
  {
    v6 = *(**sub_21BA6E8B4() + 152);

    v8 = v6(v7);
    v10 = v9;

    if (v8 && (*(v10 + 8))([v1 traitCollection], v8, v10))
    {
      v11 = (*(v10 + 64))(a1, v3, v8, v10);
      if (v11)
      {
        v12 = v11;
        v13 = sub_21BA87EFC();
        v5 = [v12 containsDescendantFromArray_];

        swift_unknownObjectRelease();
        return v5;
      }

      swift_unknownObjectRelease();
    }

    return 0;
  }

  v4 = sub_21BA87EFC();
  v5 = [v15 containsDescendantFromArray_];

  return v5;
}

id sub_21BA38078(void **a1)
{
  v1 = *a1;
  sub_21B9BDFC0(0, &qword_27CD9F0B8);
  v2 = sub_21BA87EFC();
  v3 = [v1 containsDescendantFromArray_];

  return v3;
}

unint64_t sub_21BA380E4()
{
  result = qword_27CD9F0C8;
  if (!qword_27CD9F0C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CD9F0C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD9F0C8);
  }

  return result;
}

void *sub_21BA38148()
{
  v1 = *(v0 + 32);
  v22 = *(v0 + 48);
  v24 = *(v0 + 16);
  if (v1 >> 62)
  {
    goto LABEL_18;
  }

  v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v3 = MEMORY[0x277D84F90];
  if (v2)
  {
    v4 = v1;
    v26 = MEMORY[0x277D84F90];
    swift_unknownObjectRetain();
    result = sub_21BA387CC(0, v2 & ~(v2 >> 63), 0);
    if ((v2 & 0x8000000000000000) == 0)
    {
      v3 = v26;
      v21 = v4 & 0xC000000000000001;
      ObjectType = swift_getObjectType();
      v7 = v4;
      v8 = 0;
      v9 = *(v22 + 56);
      v19 = v4 & 0xFFFFFFFFFFFFFF8;
      v20 = ObjectType;
      v10 = v4;
      while (1)
      {
        if (v21)
        {
          v11 = MEMORY[0x21CEFD920](v8, v7);
        }

        else
        {
          if ((v8 & 0x8000000000000000) != 0)
          {
            __break(1u);
LABEL_17:
            __break(1u);
LABEL_18:
            v17 = v1;
            v18 = sub_21BA884DC();
            v1 = v17;
            v2 = v18;
            goto LABEL_3;
          }

          if (v8 >= *(v19 + 16))
          {
            goto LABEL_17;
          }

          v11 = *(v7 + 8 * v8 + 32);
        }

        v12 = v11;
        v9(v25, v11, v20, v22);

        v26 = v3;
        v14 = *(v3 + 16);
        v13 = *(v3 + 24);
        if (v14 >= v13 >> 1)
        {
          sub_21BA387CC((v13 > 1), v14 + 1, 1);
          v3 = v26;
        }

        ++v8;
        *(v3 + 16) = v14 + 1;
        sub_21B9B5E1C(v25, v3 + 40 * v14 + 32);
        v7 = v10;
        if (v2 == v8)
        {
          swift_unknownObjectRelease();
          goto LABEL_15;
        }
      }
    }

    __break(1u);
  }

  else
  {
LABEL_15:
    v15 = sub_21BA86B8C();
    v16 = sub_21BA387EC();
    sub_21B9B60D0(sub_21BA387A0, v23, v3, v15, v16);
  }

  return result;
}

uint64_t sub_21BA3835C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  sub_21B9BDFC0(0, &qword_27CD9F0B8);
  v7 = sub_21BA87F0C();
  v8 = sub_21BA87F0C();
  v9 = a1;
  sub_21BA37B4C(v7, v8, a5);
}

void sub_21BA3840C()
{
  v1 = *(**sub_21BA6E8B4() + 152);

  v3 = v1(v2);
  v5 = v4;

  if (v3 && (*(v5 + 8))([v0 traitCollection], v3, v5))
  {
    (*(v5 + 40))(v3, v5);

    swift_unknownObjectRelease();
  }

  else
  {
    v6 = [v0 popViewControllerAnimated_];
  }
}

void sub_21BA38528(void *a1)
{
  v1 = a1;
  sub_21BA3840C();
}

id sub_21BA38570(uint64_t a1)
{
  v3 = *(**sub_21BA6E8B4() + 152);

  v5 = v3(v4);
  v7 = v6;

  if (v5 && (*(v7 + 8))([v1 traitCollection], v5, v7))
  {
    (*(v7 + 48))(a1, v5, v7);

    return swift_unknownObjectRelease();
  }

  else
  {

    return [v1 pushViewController:a1 animated:1];
  }
}

void sub_21BA38738(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  sub_21BA38570(v4);
}

void *sub_21BA387CC(void *a1, int64_t a2, char a3)
{
  result = sub_21BA38844(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

unint64_t sub_21BA387EC()
{
  result = qword_27CD9F0D0;
  if (!qword_27CD9F0D0)
  {
    sub_21BA86B8C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD9F0D0);
  }

  return result;
}

void *sub_21BA38844(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9F0D8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[5 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9E410);
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_21BA3898C(uint64_t a1, id a2, void (*a3)(__int128 *__return_ptr, id, unint64_t, uint64_t), unint64_t a4, uint64_t a5, uint64_t a6)
{
  v36 = a6;
  v37 = a5;
  v9 = MEMORY[0x277D84F90];
  v40 = MEMORY[0x277D84F90];
  if (!a2)
  {
    v16 = MEMORY[0x277D84F90];
    goto LABEL_14;
  }

  v10 = [a2 defaultPages];
  if (!v10)
  {
    goto LABEL_35;
  }

  v11 = v10;
  sub_21B9BDFC0(0, &qword_27CD9F0E0);
  v12 = sub_21BA87F0C();

  if (v12 >> 62)
  {
    if (sub_21BA884DC())
    {
      goto LABEL_5;
    }
  }

  else if (*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_5:
    if ((v12 & 0xC000000000000001) != 0)
    {
      goto LABEL_33;
    }

    if (*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v13 = *(v12 + 32);
      goto LABEL_8;
    }

    __break(1u);
LABEL_35:
    result = swift_unknownObjectRelease();
    __break(1u);
    return result;
  }

  v16 = MEMORY[0x277D84F90];
LABEL_14:
  v17 = v33;
  MEMORY[0x28223BE20](v16);
  v19 = v32;
  v32[2] = a4;
  v32[3] = a1;
  if (ObjectType >> 62)
  {
    goto LABEL_29;
  }

  for (i = *((ObjectType & 0xFFFFFFFFFFFFFF8) + 0x10); i; ObjectType = v28)
  {
    v21 = ObjectType;
    v39 = v9;
    v12 = &v39;
    sub_21BA387CC(0, i & ~(i >> 63), 0);
    if (i < 0)
    {
      __break(1u);
LABEL_33:
      v13 = MEMORY[0x21CEFD920](0, v12);
LABEL_8:
      v14 = v13;

      v15 = v14;
      MEMORY[0x21CEFD240]();
      if (*((v40 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v40 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_21BA87F3C();
      }

      sub_21BA87F6C();

      v16 = v40;
      goto LABEL_14;
    }

    v33[0] = v19;
    v33[1] = v17;
    v33[2] = a3;
    a1 = v39;
    v35 = v21 & 0xC000000000000001;
    ObjectType = swift_getObjectType();
    v22 = v21;
    v9 = ObjectType;
    v23 = 0;
    v17 = (v36 + 56);
    a3 = *(v36 + 56);
    v34 = v21 & 0xFFFFFFFFFFFFFF8;
    a4 = v21;
    v19 = i;
    while (1)
    {
      if (v35)
      {
        v24 = MEMORY[0x21CEFD920](v23, v22);
        goto LABEL_23;
      }

      if ((v23 & 0x8000000000000000) != 0)
      {
        break;
      }

      if (v23 >= *(v34 + 16))
      {
        goto LABEL_28;
      }

      v24 = *(v22 + 8 * v23 + 32);
LABEL_23:
      v25 = v24;
      a3(v38, v24, v9, v36);

      v39 = a1;
      v27 = *(a1 + 16);
      v26 = *(a1 + 24);
      if (v27 >= v26 >> 1)
      {
        sub_21BA387CC((v26 > 1), v27 + 1, 1);
        a1 = v39;
      }

      ++v23;
      *(a1 + 16) = v27 + 1;
      ObjectType = sub_21B9B5E1C(v38, a1 + 40 * v27 + 32);
      v22 = a4;
      if (v19 == v23)
      {

        v19 = v33[0];
        goto LABEL_31;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    v28 = ObjectType;
    i = sub_21BA884DC();
  }

  a1 = MEMORY[0x277D84F90];
LABEL_31:
  v29 = sub_21BA86B8C();
  v30 = sub_21BA387EC();
  sub_21B9B60D0(sub_21BA38D08, v19, a1, v29, v30);
}

uint64_t sub_21BA38D08(uint64_t a1)
{
  v3 = *(v1 + 24);
  if (!v3 || (v4 = [v3 allPages]) == 0)
  {
    if (MEMORY[0x277D84F90] >> 62)
    {
      goto LABEL_4;
    }

LABEL_6:

    sub_21BA889FC();
    sub_21B9BDFC0(0, &qword_27CD9F0B8);
    goto LABEL_7;
  }

  v5 = v4;
  sub_21B9BDFC0(0, &qword_27CD9F0E0);
  v6 = sub_21BA87F0C();

  if (!(v6 >> 62))
  {
    goto LABEL_6;
  }

LABEL_4:
  sub_21B9BDFC0(0, &qword_27CD9F0B8);

  sub_21BA886EC();

LABEL_7:

  v7 = sub_21BA37EA0(a1);

  return v7 & 1;
}

id sub_21BA38E4C(void *a1, id a2)
{
  if (!a2 || (v3 = [a2 allPages]) == 0)
  {
    if (MEMORY[0x277D84F90] >> 62)
    {
      goto LABEL_4;
    }

LABEL_6:

    sub_21BA889FC();
    sub_21B9BDFC0(0, &qword_27CD9F0B8);
    goto LABEL_7;
  }

  v4 = v3;
  sub_21B9BDFC0(0, &qword_27CD9F0E0);
  v5 = sub_21BA87F0C();

  if (!(v5 >> 62))
  {
    goto LABEL_6;
  }

LABEL_4:
  sub_21B9BDFC0(0, &qword_27CD9F0B8);

  sub_21BA886EC();

LABEL_7:

  sub_21B9BDFC0(0, &qword_27CD9F0B8);
  v6 = sub_21BA87EFC();

  v7 = [a1 containsDescendantFromArray_];

  return v7;
}

uint64_t HTTPDataSource.request(for:)(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = sub_21BA864AC();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21BA39074, 0, 0);
}

uint64_t sub_21BA39074()
{
  (*(v0[5] + 16))(v0[6], v0[3], v0[4]);
  sub_21BA8607C();

  v1 = v0[1];

  return v1();
}

uint64_t HTTPDataSource.data(for:)(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_21B9DE818;

  return sub_21BA39424(a1);
}

uint64_t sub_21BA391E8(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = sub_21BA864AC();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21BA39074, 0, 0);
}

uint64_t sub_21BA392A8(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_21B9DFD80;

  return sub_21BA39424(a1);
}

uint64_t sub_21BA39350(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = sub_21B9DFD80;

  return RemoteUIDataSource.data(for:)(a1, v7, a3);
}

uint64_t sub_21BA39424(uint64_t a1)
{
  v1[2] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9DBA0);
  v1[3] = swift_task_alloc();
  v2 = sub_21BA864AC();
  v1[4] = v2;
  v1[5] = *(v2 - 8);
  v1[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21BA3951C, 0, 0);
}

uint64_t sub_21BA3951C()
{
  v1 = v0[4];
  v2 = v0[5];
  v3 = v0[3];
  sub_21BA8608C();
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_21B9CD454(v0[3]);
LABEL_6:
    v0[7] = [objc_opt_self() sharedSession];
    v5 = swift_task_alloc();
    v0[8] = v5;
    *v5 = v0;
    v5[1] = sub_21BA39760;
    v6 = v0[2];

    return MEMORY[0x28211ECF8](v6, 0);
  }

  (*(v0[5] + 32))(v0[6], v0[3], v0[4]);
  if ((sub_21BA863CC() & 1) == 0)
  {
    (*(v0[5] + 8))(v0[6], v0[4]);
    goto LABEL_6;
  }

  v4 = sub_21BA864BC();
  v8 = v7;
  (*(v0[5] + 8))(v0[6], v0[4]);

  v9 = v0[1];

  return v9(v4, v8);
}

uint64_t sub_21BA39760(uint64_t a1, uint64_t a2, void *a3)
{
  v8 = *v4;
  v8[9] = v3;

  if (v3)
  {

    return MEMORY[0x2822009F8](sub_21BA398E4, 0, 0);
  }

  else
  {
    v9 = v8[7];

    v10 = v8[1];

    return v10(a1, a2);
  }
}

uint64_t sub_21BA398E4()
{

  v1 = *(v0 + 8);

  return v1();
}

Swift::Void __swiftcall RUITableViewSection.reportInternalRenderEvent()()
{
  v11.super_class = RUITableViewSection;
  objc_msgSendSuper2(&v11, sel_reportInternalRenderEvent);
  v1 = [v0 header];
  [v1 reportInternalRenderEvent];

  v2 = [v0 rows];
  if (v2)
  {
    v3 = v2;
    sub_21B9BFE8C();
    v4 = sub_21BA87F0C();

    if (v4 >> 62)
    {
      goto LABEL_14;
    }

    for (i = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_21BA884DC())
    {
      v6 = 0;
      while (1)
      {
        if ((v4 & 0xC000000000000001) != 0)
        {
          v7 = MEMORY[0x21CEFD920](v6, v4);
        }

        else
        {
          if (v6 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_13;
          }

          v7 = *(v4 + 8 * v6 + 32);
        }

        v8 = v7;
        v9 = v6 + 1;
        if (__OFADD__(v6, 1))
        {
          break;
        }

        [v7 reportInternalRenderEvent];

        ++v6;
        if (v9 == i)
        {
          goto LABEL_15;
        }
      }

      __break(1u);
LABEL_13:
      __break(1u);
LABEL_14:
      ;
    }

LABEL_15:
  }

  v10 = [v0 footer];
  [v10 reportInternalRenderEvent];
}

uint64_t sub_21BA39B80()
{
  sub_21BA86ECC();
  swift_getTupleTypeMetadata2();
  sub_21BA87B6C();
  swift_getWitnessTable();
  return sub_21BA879DC();
}

uint64_t sub_21BA39C40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a2 - 8);
  MEMORY[0x28223BE20](a1);
  v7 = v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v8);
  v11 = v15 - v10;
  v12 = *(v5 + 16);
  v12(v15 - v10, v9);
  (v12)(v7, v11, a2);
  v17 = 0;
  v18 = 1;
  v19[0] = v7;
  v19[1] = &v17;
  v16[0] = a2;
  v16[1] = MEMORY[0x277CE1178];
  v15[0] = a3;
  v15[1] = MEMORY[0x277CE1168];
  sub_21BA39DC8(v19, 2uLL, v16);
  v13 = *(v5 + 8);
  v13(v11, a2);
  return (v13)(v7, a2);
}

uint64_t sub_21BA39DC8(uint64_t TupleTypeMetadata, unint64_t a2, uint64_t a3)
{
  v5 = TupleTypeMetadata;
  if (a2 == 1)
  {
    v6 = *(a3 & 0xFFFFFFFFFFFFFFFELL);
  }

  else
  {
    MEMORY[0x28223BE20](TupleTypeMetadata);
    v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
    if (a2)
    {
      v9 = 0;
      v10 = a3 & 0xFFFFFFFFFFFFFFFELL;
      if (a2 < 4)
      {
        goto LABEL_9;
      }

      if (&v8[-v10] < 0x20)
      {
        goto LABEL_9;
      }

      v9 = a2 & 0xFFFFFFFFFFFFFFFCLL;
      v11 = (v10 + 16);
      v12 = v8 + 16;
      v13 = a2 & 0xFFFFFFFFFFFFFFFCLL;
      do
      {
        v14 = *v11;
        *(v12 - 1) = *(v11 - 1);
        *v12 = v14;
        v11 += 2;
        v12 += 2;
        v13 -= 4;
      }

      while (v13);
      if (v9 != a2)
      {
LABEL_9:
        v15 = a2 - v9;
        v16 = 8 * v9;
        v17 = &v8[8 * v9];
        v18 = (v10 + v16);
        do
        {
          v19 = *v18++;
          *v17 = v19;
          v17 += 8;
          --v15;
        }

        while (v15);
      }
    }

    TupleTypeMetadata = swift_getTupleTypeMetadata();
    v6 = TupleTypeMetadata;
  }

  MEMORY[0x28223BE20](TupleTypeMetadata);
  v21 = &v30 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v22 = (a3 & 0xFFFFFFFFFFFFFFFELL);
    v23 = (v6 + 32);
    v24 = a2;
    do
    {
      if (a2 == 1)
      {
        v25 = 0;
      }

      else
      {
        v25 = *v23;
      }

      v27 = *v22++;
      v26 = v27;
      v28 = *v5++;
      (*(*(v26 - 8) + 16))(&v21[v25], v28);
      v23 += 4;
      --v24;
    }

    while (v24);
  }

  return sub_21BA87B7C();
}

uint64_t sub_21BA39F98@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v59 = a3;
  v60 = a4;
  v5 = a1;
  v52 = *(a2 - 8);
  MEMORY[0x28223BE20](a1);
  v7 = &v50 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v50 - v9;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CD9F0E8);
  v11 = sub_21BA86C5C();
  v12 = sub_21BA8716C();
  v54 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v53 = &v50 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9F0F0);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v50 - v15;
  v17 = *(v11 - 8);
  MEMORY[0x28223BE20](v18);
  v20 = &v50 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v23 = &v50 - v22;
  v56 = v12;
  v24 = sub_21BA8716C();
  v58 = *(v24 - 8);
  v25 = MEMORY[0x28223BE20](v24);
  v57 = &v50 - v26;
  if (v5)
  {
    if (v5 != 1)
    {
      v42 = v52;
      v43 = *(v52 + 16);
      v43(v10, v55, a2, v25);
      (v43)(v7, v10, a2);
      v44 = sub_21BA3A74C();
      v33 = v59;
      v77 = v59;
      v78 = v44;
      WitnessTable = swift_getWitnessTable();
      v76 = WitnessTable;
      v45 = v56;
      swift_getWitnessTable();
      v41 = v57;
      sub_21B9C660C(v7, v45, a2);
      v46 = *(v42 + 8);
      v46(v7, a2);
      v46(v10, a2);
      goto LABEL_7;
    }

    sub_21BA8701C();
    v27 = sub_21BA8702C();
    (*(*(v27 - 8) + 56))(v16, 0, 1, v27);
    v52 = v24;
    v28 = v59;
    sub_21BA8777C();
    sub_21BA3A7B0(v16);
    v29 = sub_21BA3A74C();
    v63 = v28;
    v64 = v29;
    v30 = swift_getWitnessTable();
    v31 = *(v17 + 16);
    v51 = v23;
    v31(v23, v20, v11);
    v32 = *(v17 + 8);
    v32(v20, v11);
    v31(v20, v23, v11);
    v33 = v28;
    v24 = v52;
    v34 = v53;
    sub_21B9C6514(v20, v11);
    v61 = v30;
    v62 = v30;
  }

  else
  {
    sub_21BA8700C();
    v35 = sub_21BA8702C();
    (*(*(v35 - 8) + 56))(v16, 0, 1, v35);
    v52 = v24;
    v36 = v59;
    sub_21BA8777C();
    sub_21BA3A7B0(v16);
    v37 = sub_21BA3A74C();
    v67 = v36;
    v68 = v37;
    v38 = swift_getWitnessTable();
    v39 = *(v17 + 16);
    v51 = v23;
    v39(v23, v20, v11);
    v32 = *(v17 + 8);
    v32(v20, v11);
    v39(v20, v23, v11);
    v33 = v36;
    v24 = v52;
    v34 = v53;
    sub_21B9C660C(v20, v11, v11);
    v65 = v38;
    v66 = v38;
  }

  v40 = v56;
  swift_getWitnessTable();
  v41 = v57;
  sub_21B9C6514(v34, v40);
  (*(v54 + 8))(v34, v40);
  v32(v20, v11);
  v32(v51, v11);
LABEL_7:
  v47 = sub_21BA3A74C();
  v73 = v33;
  v74 = v47;
  v71 = swift_getWitnessTable();
  v72 = v71;
  v69 = swift_getWitnessTable();
  v70 = v33;
  swift_getWitnessTable();
  v48 = v58;
  (*(v58 + 16))(v60, v41, v24);
  return (*(v48 + 8))(v41, v24);
}

unint64_t sub_21BA3A74C()
{
  result = qword_27CD9F0F8;
  if (!qword_27CD9F0F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CD9F0E8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD9F0F8);
  }

  return result;
}

uint64_t sub_21BA3A7B0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9F0F0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_21BA3A818@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_21BA878EC();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    (*(v7 + 104))(v10, *MEMORY[0x277CE0FE8], v6, v8);
    v11 = sub_21BA8792C();
    (*(v7 + 8))(v10, v6);
    v14 = v11;
    v15 = 0;
  }

  else
  {
    v14 = a2;
    v15 = 1;
  }

  result = sub_21BA8715C();
  v13 = v17;
  *a3 = v16;
  *(a3 + 8) = v13;
  return result;
}

unint64_t sub_21BA3A988()
{
  result = qword_27CD9F100;
  if (!qword_27CD9F100)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CD9F108);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD9F100);
  }

  return result;
}

void *sub_21BA3AA6C()
{
  v1 = OBJC_IVAR____TtC8RemoteUI8HelpLink_ruiObjectModel;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_21BA3AAB8(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC8RemoteUI8HelpLink_ruiObjectModel;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

char *sub_21BA3AB70(void *a1)
{
  v3 = v1;
  v5 = sub_21BA8655C();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v3[OBJC_IVAR____TtC8RemoteUI8HelpLink_ruiObjectModel] = 0;
  *&v3[OBJC_IVAR____TtC8RemoteUI8HelpLink____lazy_storage___button] = 0;
  sub_21BA8654C();
  v9 = sub_21BA8652C();
  v11 = v10;
  (*(v6 + 8))(v8, v5);
  v12 = &v3[OBJC_IVAR____TtC8RemoteUI8HelpLink_id];
  *v12 = v9;
  v12[1] = v11;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21BA88BEC();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);

    type metadata accessor for HelpLink();
    swift_deallocPartialClassInstance();
  }

  else
  {
    __swift_project_boxed_opaque_existential_1(v23, v23[3]);
    v13 = sub_21BA889BC();
    v15 = &v3[OBJC_IVAR____TtC8RemoteUI8HelpLink_title];
    *v15 = v13;
    v15[1] = v16;
    v17 = type metadata accessor for HelpLink();
    v22.receiver = v3;
    v22.super_class = v17;
    v18 = objc_msgSendSuper2(&v22, sel_init);
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    v3 = v18;
    v19 = Decoder.decodeRUIAttributeDictionary()();
    sub_21B9E9024(v19);

    v20 = sub_21BA87BBC();

    [v3 setAttributes_];

    __swift_destroy_boxed_opaque_existential_1(v23);
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  return v3;
}

id sub_21BA3AE38()
{
  v1 = OBJC_IVAR____TtC8RemoteUI8HelpLink____lazy_storage___button;
  v2 = *(v0 + OBJC_IVAR____TtC8RemoteUI8HelpLink____lazy_storage___button);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC8RemoteUI8HelpLink____lazy_storage___button);
  }

  else
  {
    v4 = [objc_opt_self() accessoryButton];
    v5 = sub_21BA87C8C();
    [v4 setTitle:v5 forState:0];

    [v4 addTarget:v0 action:sel_tapped forControlEvents:64];
    v6 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v7 = v2;
  return v3;
}

void (*sub_21BA3AF20(id *a1))(uint64_t *a1)
{
  a1[1] = v1;
  *a1 = sub_21BA3AE38();
  return sub_21BA3AF68;
}

void sub_21BA3AF68(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v3 = *(v1 + OBJC_IVAR____TtC8RemoteUI8HelpLink____lazy_storage___button);
  *(v1 + OBJC_IVAR____TtC8RemoteUI8HelpLink____lazy_storage___button) = v2;
}

void sub_21BA3AF80()
{
  v1 = (*((*MEMORY[0x277D85000] & *v0) + 0x70))();
  if (v1)
  {
    v2 = v1;
    v4[4] = nullsub_1;
    v4[5] = 0;
    v4[0] = MEMORY[0x277D85DD0];
    v4[1] = 1107296256;
    v4[2] = sub_21B9CE7B4;
    v4[3] = &block_descriptor_6;
    v3 = _Block_copy(v4);
    [v2 activateElement:v0 completion:v3];
    _Block_release(v3);
  }
}

uint64_t block_copy_helper_6(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

id sub_21BA3B214()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for HelpLink();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_21BA3B2BC@<X0>(void *a1@<X8>)
{
  v2 = (*v1 + OBJC_IVAR____TtC8RemoteUI8HelpLink_id);
  v3 = v2[1];
  *a1 = *v2;
  a1[1] = v3;
}

uint64_t sub_21BA3B2D8@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 136))();
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t type metadata accessor for HelpLinkElement()
{
  result = qword_27CDA0900;
  if (!qword_27CDA0900)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_21BA3B360@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = type metadata accessor for HelpLinkElement();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9F158);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v20[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v11);
  v13 = &v20[-v12];
  sub_21BA3B874(a1, &v20[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)], type metadata accessor for HelpLinkElement);
  v14 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v15 = swift_allocObject();
  sub_21BA3BC48(&v20[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)], v15 + v14, type metadata accessor for HelpLinkElement);
  v21 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9F160);
  sub_21B9B35B8(&qword_27CD9F168, &qword_27CD9F160);
  sub_21BA879BC();
  v16 = *(v8 + 16);
  v16(v10, v13, v7);
  v16(a2, v10, v7);
  v17 = &a2[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9F170) + 48)];
  *v17 = 0;
  v17[8] = 1;
  v18 = *(v8 + 8);
  v18(v13, v7);
  return (v18)(v10, v7);
}

uint64_t sub_21BA3B630@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for URLLoader(0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v14[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = type metadata accessor for HelpLinkElement();
  MEMORY[0x28223BE20](v7);
  v9 = &v14[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v10 = Decoder.decodeRUIID()();
  if (v11)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  *v9 = v10;
  v15[6] = v10._object;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21BA88BEC();
  __swift_project_boxed_opaque_existential_1(v15, v15[3]);
  v9[1]._countAndFlagsBits = sub_21BA889BC();
  v9[1]._object = v13;
  sub_21B9B3220(a1, v14);
  URLLoader.init(from:)(v14, v6);
  sub_21BA3BC48(v6, v9 + *(v7 + 24), type metadata accessor for URLLoader);
  __swift_destroy_boxed_opaque_existential_1(v15);
  sub_21BA3B874(v9, a2, type metadata accessor for HelpLinkElement);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_21BA3B8DC(v9);
}

uint64_t sub_21BA3B874(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_21BA3B8DC(uint64_t a1)
{
  v2 = type metadata accessor for HelpLinkElement();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_21BA3B938(void *a1)
{
  a1[1] = sub_21BA3B9C4(&qword_27CD9BB90);
  a1[2] = sub_21BA3B9C4(&qword_27CD9BB88);
  result = sub_21BA3B9C4(&qword_27CD9BB98);
  a1[3] = result;
  return result;
}

uint64_t sub_21BA3B9C4(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for HelpLinkElement();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_21BA3BA24@<X0>(uint64_t a1@<X8>)
{
  *a1 = sub_21BA86ECC();
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9F130);
  sub_21BA3B360(v1, (a1 + *(v3 + 44)));
  v4 = sub_21BA8748C();
  sub_21BA869EC();
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9F138);
  v14 = a1 + *(result + 36);
  *v14 = v4;
  *(v14 + 8) = v6;
  *(v14 + 16) = v8;
  *(v14 + 24) = v10;
  *(v14 + 32) = v12;
  *(v14 + 40) = 0;
  return result;
}

uint64_t sub_21BA3BB14()
{
  result = type metadata accessor for URLLoader(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_21BA3BB90()
{
  result = qword_27CD9F140;
  if (!qword_27CD9F140)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CD9F138);
    sub_21B9B35B8(&qword_27CD9F148, &qword_27CD9F150);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD9F140);
  }

  return result;
}

uint64_t sub_21BA3BC48(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_21BA3BCB0()
{
  type metadata accessor for HelpLinkElement();
  type metadata accessor for URLLoader(0);
  URLLoadingCapable.activate()();
}

uint64_t sub_21BA3BD24()
{

  v0 = sub_21BA86F3C();

  return MEMORY[0x282130018](v0);
}

id sub_21BA3BDA0(uint64_t a1)
{
  v2 = [v1 prepareImageForDescriptor_];
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  result = [v2 CGImage];
  if (result)
  {
    v5 = result;
    v6 = [objc_allocWithZone(MEMORY[0x277D755B8]) initWithCGImage_];

    return v6;
  }

  __break(1u);
  return result;
}

uint64_t sub_21BA3BE3C()
{
  v0 = sub_21BA8655C();
  __swift_allocate_value_buffer(v0, qword_27CDAC178);
  __swift_project_value_buffer(v0, qword_27CDAC178);
  return sub_21BA8654C();
}

uint64_t sub_21BA3BE88@<X0>(uint64_t a1@<X8>)
{
  if (qword_27CDAC170 != -1)
  {
    swift_once();
  }

  v2 = sub_21BA8655C();
  v3 = __swift_project_value_buffer(v2, qword_27CDAC178);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_21BA3BF30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_21BA3F3C4(&qword_27CD9E7E0, MEMORY[0x277CC95F0]);

  return MEMORY[0x282130D38](a1, a2, a3, a4, v8);
}

uint64_t sub_21BA3BFC4()
{
  sub_21BA3C00C();

  return sub_21BA86EAC();
}

unint64_t sub_21BA3C00C()
{
  result = qword_27CDAC190[0];
  if (!qword_27CDAC190[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27CDAC190);
  }

  return result;
}

uint64_t sub_21BA3C080(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9DBA0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_21BA3C0F0@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v72 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9E4C0);
  MEMORY[0x28223BE20](v3 - 8);
  v74 = &v54 - v4;
  v66 = sub_21BA8655C();
  v73 = *(v66 - 8);
  MEMORY[0x28223BE20](v66);
  v69 = &v54 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for BuddyMLRenderer.Content(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v54 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9F188);
  MEMORY[0x28223BE20](v65);
  v11 = &v54 - v10;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9F190);
  MEMORY[0x28223BE20](v68);
  v70 = &v54 - v12;
  sub_21BA3C738(v2, v9);
  v13 = *(v7 + 80);
  v14 = (v13 + 16) & ~v13;
  v75 = v8;
  v15 = swift_allocObject();
  sub_21BA3C79C(v9, v15 + v14);
  v16 = v6;
  sub_21BA6D18C();
  v63 = v18;
  v64 = v17;
  v20 = v19;
  KeyPath = swift_getKeyPath();
  v21 = (v2 + *(v6 + 32));
  v22 = *v21;
  v23 = *v21;
  v24 = v21[1];
  if (!*v21)
  {
    sub_21BA3C738(v2, &v54 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
    v25 = swift_allocObject();
    v71 = v2;
    sub_21BA3C79C(v9, v25 + v14);
    v2 = v71;
    v23 = nullsub_1(sub_21BA3CCAC);
  }

  v60 = v24;
  v61 = v23;
  v59 = swift_getKeyPath();
  sub_21BA3C738(v2, v9);
  v58 = swift_allocObject();
  sub_21BA3C79C(v9, v58 + v14);
  v56 = v20 & 1;
  v76 = v20 & 1;
  v26 = *v2;
  sub_21BA3C738(v2, v9);
  v67 = v13;
  v27 = swift_allocObject();
  sub_21BA3C79C(v9, v27 + v14);
  v28 = swift_getKeyPath();
  v71 = v16;
  sub_21B946DA8(v22);
  v57 = v26;
  v29 = v26;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9F178);
  v31 = v74;
  MEMORY[0x21CEFCD90](v30);
  v32 = *(v73 + 48);
  v33 = v31;
  v34 = v66;
  if (v32(v33, 1, v66) == 1)
  {
    v55 = v28;
    v35 = v69;
    sub_21BA8654C();
    v36 = v32(v74, 1, v34);
    v37 = v34;
    v38 = v73;
    v28 = v55;
    if (v36 != 1)
    {
      sub_21B9ABAAC(v74, &qword_27CD9E4C0);
    }
  }

  else
  {
    v38 = v73;
    v35 = v69;
    (*(v73 + 32))(v69, v74, v34);
    v37 = v34;
  }

  v39 = &v11[*(v65 + 36)];
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9F198);
  (*(v38 + 32))(v39 + *(v40 + 28), v35, v37);
  *v39 = v28;
  v41 = v63;
  *v11 = v64;
  *(v11 + 1) = v41;
  v11[16] = v56;
  *(v11 + 17) = v77[0];
  *(v11 + 5) = *(v77 + 3);
  v42 = v61;
  *(v11 + 3) = KeyPath;
  *(v11 + 4) = v42;
  v43 = v59;
  *(v11 + 5) = v60;
  *(v11 + 6) = v43;
  v44 = v57;
  v45 = v58;
  *(v11 + 7) = sub_21BA3D438;
  *(v11 + 8) = v45;
  *(v11 + 9) = v44;
  *(v11 + 10) = sub_21BA3D6C0;
  *(v11 + 11) = v27;
  sub_21BA3C738(v2, v9);
  v46 = swift_allocObject();
  sub_21BA3C79C(v9, v46 + v14);
  v47 = v70;
  sub_21B9AB6D4(v11, v70, &qword_27CD9F188);
  v48 = (v47 + *(v68 + 36));
  *v48 = sub_21BA3DAC8;
  v48[1] = v46;
  v48[2] = 0;
  v48[3] = 0;
  v49 = swift_getKeyPath();
  v50 = sub_21BA07558();
  v51 = v72;
  sub_21B9AB6D4(v47, v72, &qword_27CD9F190);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9F1A0);
  v53 = (v51 + *(result + 36));
  *v53 = v49;
  v53[1] = v50;
  return result;
}

uint64_t sub_21BA3C738(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BuddyMLRenderer.Content(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21BA3C79C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BuddyMLRenderer.Content(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_21BA3C800()
{
  type metadata accessor for BuddyMLRenderer.Content(0);
}

uint64_t sub_21BA3C86C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_21BA6C66C();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_21BA3C898(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  sub_21B946DA8(*a1);
  return sub_21BA6C6E0(v1, v2);
}

uint64_t sub_21BA3C8DC(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9DBA0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v13 - v7;
  v9 = sub_21BA864AC();
  v10 = *(v9 - 8);
  (*(v10 + 16))(v8, a2, v9);
  (*(v10 + 56))(v8, 0, 1, v9);
  v11 = type metadata accessor for BuddyMLRenderer.Content(0);
  sub_21BA3CD2C(a1, v8, *(a3 + *(v11 + 44)), *(a3 + *(v11 + 48)));
  return sub_21B9ABAAC(v8, &qword_27CD9DBA0);
}

uint64_t objectdestroyTm_6()
{
  v1 = type metadata accessor for BuddyMLRenderer.Content(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v16 = *(*(v1 - 1) + 64);
  v17 = v0;
  v4 = v0 + v3;

  v5 = v0 + v3 + v1[5];

  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9F178) + 32);
  v7 = sub_21BA8655C();
  v8 = *(v7 - 8);
  if (!(*(v8 + 48))(v5 + v6, 1, v7))
  {
    (*(v8 + 8))(v5 + v6, v7);
  }

  v9 = v4 + v1[6];

  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9F180) + 32);
  v11 = sub_21BA864AC();
  v12 = *(v11 - 8);
  v13 = *(v12 + 48);
  if (!v13(v9 + v10, 1, v11))
  {
    (*(v12 + 8))(v9 + v10, v11);
  }

  if (*(v4 + v1[8]))
  {
  }

  swift_unknownObjectRelease();
  v14 = v1[10];
  if (!v13(v4 + v14, 1, v11))
  {
    (*(v12 + 8))(v4 + v14, v11);
  }

  return MEMORY[0x2821FE8E8](v17, v3 + v16, v2 | 7);
}

uint64_t sub_21BA3CCAC(void *a1, uint64_t a2)
{
  v5 = *(type metadata accessor for BuddyMLRenderer.Content(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_21BA3C8DC(a1, a2, v6);
}

uint64_t sub_21BA3CD2C(void *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v50 = a3;
  v47 = a2;
  v48 = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9E4C0);
  MEMORY[0x28223BE20](v6 - 8);
  v52 = &v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v46 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9DBA0);
  MEMORY[0x28223BE20](v11 - 8);
  v51 = &v46 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v46 - v14;
  v16 = sub_21BA886AC();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = &v46 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = type metadata accessor for RUI.XMLUIDecoder();
  v20 = RUI.XMLUIDecoder.__allocating_init()();
  v21 = type metadata accessor for BuddyMLRenderer.Content(0);
  v22 = *(v21 + 36);
  v54 = v4;
  v23 = (v4 + v22);
  v24 = *v23;
  if (*v23)
  {
    v25 = v21;
    v53 = v10;
    v26 = v23[1];
    swift_unknownObjectRetain();
    v27 = sub_21B9C1334();
    (*(v17 + 16))(v19, v27, v16);
    type metadata accessor for ResourceLoader();
    v28 = v47;
    sub_21B9AFF80(v47, v15, &qword_27CD9DBA0);
    swift_unknownObjectRetain();
    v29 = sub_21B9AAE44(v15, v24, v26);
    v56[3] = &type metadata for DecodingContext;
    v30 = v50;

    sub_21B9C10B4(v29, v30, a4, v56);
    swift_beginAccess();
    v50 = v20;
    sub_21BA011F8(v56, v19);
    swift_endAccess();
    v31 = objc_allocWithZone(RUIXMLElement);
    v32 = sub_21BA87C8C();
    v33 = [v31 initWithName_];

    v34 = objc_allocWithZone(RUIXMLElement);
    v35 = sub_21BA87C8C();
    v36 = [v34 initWithName_];

    [v33 appendChild_];
    if (v48)
    {
      v37 = v48;
      sub_21B9C4790(v56);
      v38 = sub_21BA5DFB8(v56);
      [v36 appendChild_];
    }

    sub_21B9AFF80(v28, v15, &qword_27CD9DBA0);
    sub_21B9AFF80(v15, v51, &qword_27CD9DBA0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9F180);
    v39 = v54;
    sub_21BA87A4C();
    sub_21B9ABAAC(v15, &qword_27CD9DBA0);
    v40 = *(v39 + *(v25 + 28) + 8);
    v56[0] = v33;
    v55[0] = v50;
    v41 = *(*v40 + 136);
    v42 = sub_21BA3F3C4(&qword_27CD9E7B8, type metadata accessor for RUI.XMLUIDecoder);
    v41(v56, v55, v49, v42);
    v43 = v53;
    sub_21BA8654C();
    v44 = sub_21BA8655C();
    (*(*(v44 - 8) + 56))(v43, 0, 1, v44);
    sub_21B9AFF80(v43, v52, &qword_27CD9E4C0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9F178);
    sub_21BA87A4C();
    swift_unknownObjectRelease();

    return sub_21B9ABAAC(v43, &qword_27CD9E4C0);
  }

  else
  {
    result = sub_21BA886DC();
    __break(1u);
  }

  return result;
}

uint64_t sub_21BA3D2D0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9DBA0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v9 - v3;
  type metadata accessor for BuddyMLRenderer.Content(0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9F180);
  MEMORY[0x21CEFCD90](v5);
  v6 = sub_21BA864AC();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(v4, 1, v6) == 1)
  {
    return sub_21B9ABAAC(v4, &qword_27CD9DBA0);
  }

  sub_21B9ABAAC(a1, &qword_27CD9DBA0);
  (*(v7 + 32))(a1, v4, v6);
  return (*(v7 + 56))(a1, 0, 1, v6);
}

uint64_t sub_21BA3D438(uint64_t a1)
{
  type metadata accessor for BuddyMLRenderer.Content(0);

  return sub_21BA3D2D0(a1);
}

uint64_t sub_21BA3D4A8(void **a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9DBA0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v17 - v8;
  v10 = *a1;
  v11 = type metadata accessor for BuddyMLRenderer.Content(0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9F180);
  MEMORY[0x21CEFCD90](v12);
  v13 = sub_21BA864AC();
  v14 = *(v13 - 8);
  v15 = *(v14 + 48);
  if (v15(v6, 1, v13) == 1)
  {
    sub_21B9AFF80(a2 + v11[10], v9, &qword_27CD9DBA0);
    if (v15(v6, 1, v13) != 1)
    {
      sub_21B9ABAAC(v6, &qword_27CD9DBA0);
    }
  }

  else
  {
    (*(v14 + 32))(v9, v6, v13);
    (*(v14 + 56))(v9, 0, 1, v13);
  }

  sub_21BA3CD2C(v10, v9, *(a2 + v11[11]), *(a2 + v11[12]));
  return sub_21B9ABAAC(v9, &qword_27CD9DBA0);
}

uint64_t sub_21BA3D6C0(void **a1)
{
  v3 = *(type metadata accessor for BuddyMLRenderer.Content(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_21BA3D4A8(a1, v4);
}

uint64_t sub_21BA3D770(uint64_t a1)
{
  v2 = sub_21BA8655C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v6);
  v9 = &v12 - v8;
  v10 = *(v3 + 16);
  v10(&v12 - v8, a1, v2, v7);
  (v10)(v5, v9, v2);
  sub_21BA3C00C();
  sub_21BA86EBC();
  return (*(v3 + 8))(v9, v2);
}

uint64_t sub_21BA3D8B4(void **a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9DBA0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v15 - v6;
  v8 = *a1;
  v9 = type metadata accessor for BuddyMLRenderer.Content(0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9F180);
  MEMORY[0x21CEFCD90](v10);
  v11 = sub_21BA864AC();
  v12 = *(v11 - 8);
  v13 = *(v12 + 48);
  if (v13(v4, 1, v11) == 1)
  {
    sub_21B9AFF80(a1 + v9[10], v7, &qword_27CD9DBA0);
    if (v13(v4, 1, v11) != 1)
    {
      sub_21B9ABAAC(v4, &qword_27CD9DBA0);
    }
  }

  else
  {
    (*(v12 + 32))(v7, v4, v11);
    (*(v12 + 56))(v7, 0, 1, v11);
  }

  sub_21BA3CD2C(v8, v7, *(a1 + v9[11]), *(a1 + v9[12]));
  return sub_21B9ABAAC(v7, &qword_27CD9DBA0);
}

uint64_t sub_21BA3DAC8()
{
  v1 = *(type metadata accessor for BuddyMLRenderer.Content(0) - 8);
  v2 = (v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80)));

  return sub_21BA3D8B4(v2);
}

uint64_t sub_21BA3DB4C()
{
  v1 = sub_21BA86E9C();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = v0 + *(type metadata accessor for BuddyMLRenderer(0) + 32);
  v6 = *v5;
  v7 = *(v5 + 8);
  if (*(v5 + 16) == 1)
  {
    sub_21B946DA8(*v5);
  }

  else
  {

    sub_21BA8820C();
    v8 = sub_21BA8740C();
    sub_21BA8670C();

    sub_21BA86E8C();
    swift_getAtKeyPath();
    sub_21BA3DCC0(v6, v7, 0);
    (*(v2 + 8))(v4, v1);
    return v10;
  }

  return v6;
}

uint64_t sub_21BA3DCC0(uint64_t result, uint64_t a2, char a3)
{
  if (a3)
  {
    return sub_21B946D98(result);
  }

  else
  {
  }
}

uint64_t sub_21BA3DCF4()
{
  v1 = sub_21BA86E9C();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = v0 + *(type metadata accessor for BuddyMLRenderer(0) + 36);
  v6 = *v5;
  v7 = *(v5 + 8);
  if (*(v5 + 16) == 1)
  {
    swift_unknownObjectRetain();
  }

  else
  {

    sub_21BA8820C();
    v8 = sub_21BA8740C();
    sub_21BA8670C();

    sub_21BA86E8C();
    swift_getAtKeyPath();
    sub_21B9B01C4(v6, v7, 0);
    (*(v2 + 8))(v4, v1);
    return v10;
  }

  return v6;
}

uint64_t sub_21BA3DE8C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_21BA86E9C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9DD90);
  MEMORY[0x28223BE20](v7);
  v9 = &v13 - v8;
  v10 = type metadata accessor for BuddyMLRenderer(0);
  sub_21B9AFF80(v1 + *(v10 + 40), v9, &qword_27CD9DD90);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_21B9AB6D4(v9, a1, &qword_27CD9DBA0);
  }

  sub_21BA8820C();
  v12 = sub_21BA8740C();
  sub_21BA8670C();

  sub_21BA86E8C();
  swift_getAtKeyPath();

  return (*(v4 + 8))(v6, v3);
}

void sub_21BA3E078(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v21 = a5;
  v22 = a3;
  v23 = a1;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9DBA0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v21 - v10;
  v12 = sub_21BA886AC();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v21 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for RUI.XMLUIDecoder();
  RUI.XMLUIDecoder.__allocating_init()();
  v16 = sub_21B9C1334();
  (*(v13 + 16))(v15, v16, v12);
  type metadata accessor for ResourceLoader();
  sub_21B9AFF80(a2, v11, &qword_27CD9DBA0);
  swift_unknownObjectRetain();
  v17 = sub_21B9AAE44(v11, a4, v21);
  v24[3] = &type metadata for DecodingContext;
  v18 = v22;

  sub_21B9C10B4(v17, v18, a6, v24);
  swift_beginAccess();
  sub_21BA011F8(v24, v15);
  swift_endAccess();
  sub_21B9C4790(v25);
  v19 = sub_21BA5DFB8(v25);
  sub_21B9B339C();
  v20 = v25[5];
  RUI.XMLUIDecoder.decode<A>(_:from:)(&type metadata for RUIViewContent, v19);
  if (v20)
  {
  }

  else
  {
    sub_21B9B33F0(v24);
  }
}

uint64_t sub_21BA3E2E0@<X0>(char *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9DBA0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v36 - v4;
  v41 = &v36 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9F180);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v36 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9F178);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v36 - v10;
  v12 = *v1;
  v13 = type metadata accessor for BuddyMLRenderer(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9F1A8);
  v36 = v11;
  sub_21BA8799C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9F1B0);
  sub_21BA8799C();
  v38 = *(v1 + v13[7] + 8);

  v14 = sub_21BA3DB4C();
  v42 = v15;
  v43 = v14;
  v16 = sub_21BA3DCF4();
  v39 = v17;
  v40 = v16;
  sub_21BA3DE8C(v5);
  v18 = *(v1 + v13[11]);
  v19 = *(v1 + v13[12]);
  v20 = type metadata accessor for BuddyMLRenderer.Content(0);
  v21 = v20[10];
  v37 = v21;
  v22 = sub_21BA864AC();
  (*(*(v22 - 8) + 56))(&a1[v21], 1, 1, v22);
  *a1 = v12;
  sub_21B9AFF80(v11, &a1[v20[5]], &qword_27CD9F178);
  v23 = v8;
  sub_21B9AFF80(v8, &a1[v20[6]], &qword_27CD9F180);
  v24 = &a1[v20[7]];
  type metadata accessor for SwiftUIContentView.ContentLoader();
  sub_21BA3F3C4(&qword_27CD9E498, type metadata accessor for SwiftUIContentView.ContentLoader);
  v25 = v18;
  v26 = v19;

  v27 = v12;
  v28 = sub_21BA86BBC();
  v30 = v29;
  sub_21B9ABAAC(v23, &qword_27CD9F180);
  sub_21B9ABAAC(v36, &qword_27CD9F178);
  *v24 = v28;
  v24[1] = v30;
  v31 = &a1[v20[8]];
  v32 = v42;
  *v31 = v43;
  v31[1] = v32;
  v33 = &a1[v20[9]];
  v34 = v39;
  *v33 = v40;
  v33[1] = v34;
  result = sub_21BA3C080(v41, &a1[v37]);
  *&a1[v20[11]] = v25;
  *&a1[v20[12]] = v26;
  return result;
}

uint64_t sub_21BA3E63C@<X0>(uint64_t *a1@<X8>)
{
  *a1 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9DD90);

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_21BA3E69C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, int a7@<W6>, uint64_t a8@<X7>, void *a9@<X8>, uint64_t a10, unsigned __int8 a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v41 = a7;
  v39 = a5;
  v40 = a6;
  v35 = a3;
  v36 = a4;
  v45 = a14;
  v43 = a8;
  v44 = a13;
  v42 = a12;
  v38 = a11;
  v37 = a10;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9DBA0);
  MEMORY[0x28223BE20](v17);
  v19 = &v34 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9E4C0);
  MEMORY[0x28223BE20](v20);
  v22 = &v34 - v21;
  *a9 = a1;
  v23 = type metadata accessor for BuddyMLRenderer(0);
  sub_21B9AFF80(a2, v22, &qword_27CD9E4C0);
  sub_21BA8796C();
  sub_21B9ABAAC(a2, &qword_27CD9E4C0);
  v24 = v35;
  sub_21B9AFF80(v35, v19, &qword_27CD9DBA0);
  sub_21BA8796C();
  sub_21B9ABAAC(v24, &qword_27CD9DBA0);
  v25 = (a9 + v23[7]);
  type metadata accessor for SwiftUIContentView.ContentLoader();
  sub_21BA3F3C4(&qword_27CD9E498, type metadata accessor for SwiftUIContentView.ContentLoader);
  *v25 = sub_21BA86BBC();
  v25[1] = v26;
  v27 = a9 + v23[8];
  v28 = v40;
  *v27 = v39;
  *(v27 + 1) = v28;
  v27[16] = v41 & 1;
  v29 = a9 + v23[9];
  v30 = v42;
  v31 = v37;
  *v29 = v43;
  *(v29 + 1) = v31;
  v29[16] = v38 & 1;
  result = sub_21B9AB6D4(v30, a9 + v23[10], &qword_27CD9CEA8);
  v33 = v45;
  *(a9 + v23[11]) = v44;
  *(a9 + v23[12]) = v33;
  return result;
}

void sub_21BA3E98C()
{
  sub_21BA3EBC4(319, &qword_27CD9E740, type metadata accessor for RUIXMLElement);
  if (v0 <= 0x3F)
  {
    sub_21BA3EE64(319, &qword_27CD9F1B8, &qword_27CD9E4C0, &unk_21BA97B90, MEMORY[0x277CE1200]);
    if (v1 <= 0x3F)
    {
      sub_21BA3EE64(319, &qword_27CD9F1C0, &qword_27CD9DBA0, &unk_21BA92240, MEMORY[0x277CE1200]);
      if (v2 <= 0x3F)
      {
        sub_21BA04D04();
        if (v3 <= 0x3F)
        {
          sub_21BA3EB74();
          if (v4 <= 0x3F)
          {
            sub_21BA3EE64(319, &qword_27CD9EEC8, &qword_27CD9EED0, &unk_21BA9B8B0, MEMORY[0x277D83D88]);
            if (v5 <= 0x3F)
            {
              sub_21BA3EBC4(319, &qword_27CD9BCA8, MEMORY[0x277CC9260]);
              if (v6 <= 0x3F)
              {
                type metadata accessor for RUIDecodingUserInfo();
                if (v7 <= 0x3F)
                {
                  type metadata accessor for XMLUIData();
                  if (v8 <= 0x3F)
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

void sub_21BA3EB74()
{
  if (!qword_27CD9F1C8)
  {
    v0 = sub_21BA883CC();
    if (!v1)
    {
      atomic_store(v0, &qword_27CD9F1C8);
    }
  }
}

void sub_21BA3EBC4(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_21BA883CC();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_21BA3EC40()
{
  sub_21BA3EBC4(319, &qword_27CD9E740, type metadata accessor for RUIXMLElement);
  if (v0 <= 0x3F)
  {
    sub_21BA3EE64(319, &qword_27CD9F1D0, &qword_27CD9E4C0, &unk_21BA97B90, MEMORY[0x277CE10B0]);
    if (v1 <= 0x3F)
    {
      sub_21BA3EE64(319, &qword_27CD9F1D8, &qword_27CD9DBA0, &unk_21BA92240, MEMORY[0x277CE10B0]);
      if (v2 <= 0x3F)
      {
        sub_21BA04D04();
        if (v3 <= 0x3F)
        {
          sub_21BA3EE64(319, &qword_27CD9F1E0, &qword_27CD9F1E8, &unk_21BA9B8D8, MEMORY[0x277CDF470]);
          if (v4 <= 0x3F)
          {
            sub_21BA3EE64(319, &unk_27CD9BC90, &qword_27CD9CF70, &unk_21BA959E0, MEMORY[0x277CDF470]);
            if (v5 <= 0x3F)
            {
              sub_21BA3EE64(319, &qword_27CD9BC60, &qword_27CD9DBA0, &unk_21BA92240, MEMORY[0x277CDF470]);
              if (v6 <= 0x3F)
              {
                type metadata accessor for RUIDecodingUserInfo();
                if (v7 <= 0x3F)
                {
                  type metadata accessor for XMLUIData();
                  if (v8 <= 0x3F)
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

void sub_21BA3EE64(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

unint64_t sub_21BA3EEC8()
{
  result = qword_27CD9F1F0;
  if (!qword_27CD9F1F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CD9F1A0);
    sub_21BA3EF80();
    sub_21B9B35B8(&qword_27CD9E5E8, &unk_27CD9E5F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD9F1F0);
  }

  return result;
}

unint64_t sub_21BA3EF80()
{
  result = qword_27CD9F1F8;
  if (!qword_27CD9F1F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CD9F190);
    sub_21BA3F00C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD9F1F8);
  }

  return result;
}

unint64_t sub_21BA3F00C()
{
  result = qword_27CD9F200;
  if (!qword_27CD9F200)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CD9F188);
    sub_21BA3F0C4();
    sub_21B9B35B8(&qword_27CD9F280, &qword_27CD9F198);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD9F200);
  }

  return result;
}

unint64_t sub_21BA3F0C4()
{
  result = qword_27CD9F208;
  if (!qword_27CD9F208)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CD9F210);
    sub_21BA3F17C();
    sub_21B9B35B8(&qword_27CD9F270, &qword_27CD9F278);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD9F208);
  }

  return result;
}

unint64_t sub_21BA3F17C()
{
  result = qword_27CD9F218;
  if (!qword_27CD9F218)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CD9F220);
    sub_21BA3F200();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD9F218);
  }

  return result;
}

unint64_t sub_21BA3F200()
{
  result = qword_27CD9F228;
  if (!qword_27CD9F228)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CD9F230);
    sub_21BA3F2B8();
    sub_21B9B35B8(&qword_27CD9F260, &qword_27CD9F268);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD9F228);
  }

  return result;
}

unint64_t sub_21BA3F2B8()
{
  result = qword_27CD9F238;
  if (!qword_27CD9F238)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CD9F240);
    sub_21BA3F370();
    sub_21B9B35B8(&qword_27CD9F250, &qword_27CD9F258);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD9F238);
  }

  return result;
}

unint64_t sub_21BA3F370()
{
  result = qword_27CD9F248;
  if (!qword_27CD9F248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD9F248);
  }

  return result;
}

uint64_t sub_21BA3F3C4(unint64_t *a1, void (*a2)(uint64_t))
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

double sub_21BA3F428@<D0>(uint64_t a1@<X8>)
{
  v2 = sub_21BA531C8();
  sub_21BA5323C(v2, v5);

  result = *v5;
  v4 = v5[1];
  *a1 = v5[0];
  *(a1 + 16) = v4;
  *(a1 + 32) = v6;
  return result;
}

id sub_21BA3F47C()
{
  v0 = [objc_allocWithZone(MEMORY[0x277CE44F0]) init];
  v1 = [objc_allocWithZone(MEMORY[0x277CE44E8]) initWithTransport_];

  return v1;
}

uint64_t sub_21BA3F4DC(__int128 *a1, void *a2)
{
  v4 = sub_21BA8666C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = (&v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = swift_allocObject();
  if (a1[2])
  {
    sub_21BA866AC();
    swift_allocObject();
    v9 = sub_21BA8669C();
    *v7 = sub_21BA3F684;
    v7[1] = 0;
    (*(v5 + 104))(v7, *MEMORY[0x277CE4678], v4);
    sub_21BA8667C();
    *(v8 + 16) = v9;
    v10 = a1[1];
    *(v8 + 24) = *a1;
    *(v8 + 40) = v10;
    *(v8 + 56) = *(a1 + 32);
    *(v8 + 64) = a2;
  }

  else
  {

    v13 = *a1;
    sub_21B9BADFC(&v13);
    v12 = a1[1];
    sub_21B9ABAAC(&v12, &qword_27CD9D548);
    swift_deallocPartialClassInstance();
    return 0;
  }

  return v8;
}

uint64_t sub_21BA3F684(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9F2A0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v10[-v4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v6 = sub_21BA88C5C();
  v8 = v7;
  v13 = v6;
  v14 = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9F2A8);
  sub_21BA8664C();
  v11 = v6;
  v12 = v8;
  sub_21BA401C0();
  sub_21BA40214();
  sub_21BA40268();
  sub_21BA881AC();
  (*(v3 + 8))(v5, v2);

  return v15;
}

uint64_t sub_21BA3F840(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v5 = v4;
  v32 = a4;
  v33 = a1;
  v34 = a2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9DBA0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v27 - v11;
  v13 = v5[6];
  v31 = v5[5];
  v14 = v5[4];
  v29 = v5[3];
  v27 = a3;
  sub_21B9AACF0(a3, &v27 - v11);
  v15 = sub_21BA864AC();
  v16 = *(v15 - 8);
  v17 = *(v16 + 48);
  v18 = v17(v12, 1, v15);
  v30 = v13;

  v28 = v14;

  if (v18 == 1)
  {
    sub_21B9ABAAC(v12, &qword_27CD9DBA0);
    v19 = 0;
    v20 = 0;
  }

  else
  {
    v19 = sub_21BA8644C();
    v20 = v21;
    (*(v16 + 8))(v12, v15);
  }

  sub_21B9AACF0(v27, v9);
  if (v17(v9, 1, v15) == 1)
  {
    sub_21B9ABAAC(v9, &qword_27CD9DBA0);
    v22 = 0;
    v23 = 0;
  }

  else
  {
    v22 = sub_21BA8645C();
    v23 = v24;
    (*(v16 + 8))(v9, v15);
  }

  v25 = v34;

  sub_21BA6C0A8(v33, v25, v31, v30, v29, v28, v19, v20, v35, v22, v23, v32 & 1);
  sub_21BA3FAC0(v35);
  return sub_21BA3FFB4(v35);
}

void sub_21BA3FAC0(__int128 *a1)
{
  v2 = v1;
  v4 = sub_21BA8673C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  MEMORY[0x28223BE20](v6);
  v8 = &v30 - v7;
  v9 = a1[3];
  v37 = a1[2];
  v38 = v9;
  v39 = a1[4];
  v40 = *(a1 + 80);
  v10 = a1[1];
  v35 = *a1;
  v36 = v10;
  v11 = sub_21BA40064();
  v12 = (*(v11 + 16))(&_s9EventDataO16DidRenderElementVN, v11);
  v14 = v13;
  sub_21BA400B8();
  v15 = sub_21BA8668C();
  v16 = sub_21B9E0404();
  (*(v5 + 16))(v8, v16, v4);

  v17 = sub_21BA8671C();
  v18 = sub_21BA8821C();

  v33 = v17;
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v34[0] = v32;
    *v19 = 136315394;
    *(v19 + 4) = sub_21B9B2A60(v12, v14, v34);
    *(v19 + 12) = 2080;
    v20 = sub_21BA87BDC();
    v31 = v4;
    v22 = sub_21B9B2A60(v20, v21, v34);

    *(v19 + 14) = v22;
    v23 = v33;
    _os_log_impl(&dword_21B93D000, v33, v18, "reporting internal analytics event: %s, dictionary: %s", v19, 0x16u);
    v24 = v32;
    swift_arrayDestroy();
    MEMORY[0x21CEFF180](v24, -1, -1);
    MEMORY[0x21CEFF180](v19, -1, -1);

    (*(v5 + 8))(v8, v31);
  }

  else
  {

    (*(v5 + 8))(v8, v4);
  }

  v25 = *(v2 + 64);
  sub_21B9AD6BC(v15);

  v26 = objc_allocWithZone(MEMORY[0x277CE44D8]);
  v27 = sub_21BA87C8C();

  v28 = sub_21BA87BBC();

  v29 = [v26 initWithEventName:v27 eventCategory:0 initData:v28];

  [v25 sendEvent_];
}

uint64_t sub_21BA40008()
{

  return MEMORY[0x2821FE8D8](v0, 72, 7);
}

unint64_t sub_21BA40064()
{
  result = qword_27CD9F290;
  if (!qword_27CD9F290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD9F290);
  }

  return result;
}

unint64_t sub_21BA400B8()
{
  result = qword_27CD9F298;
  if (!qword_27CD9F298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD9F298);
  }

  return result;
}

uint64_t sub_21BA4010C@<X0>(void *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9F2C8);
  sub_21BA8665C();
  sub_21BA87E4C();
  v2 = sub_21BA883DC();
  v4 = v3;

  MEMORY[0x21CEFD130](v2, v4);

  *a1 = 95;
  a1[1] = 0xE100000000000000;
  return result;
}

unint64_t sub_21BA401C0()
{
  result = qword_27CD9F2B0;
  if (!qword_27CD9F2B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD9F2B0);
  }

  return result;
}

unint64_t sub_21BA40214()
{
  result = qword_27CD9F2B8;
  if (!qword_27CD9F2B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD9F2B8);
  }

  return result;
}

unint64_t sub_21BA40268()
{
  result = qword_27CD9F2C0;
  if (!qword_27CD9F2C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CD9F2A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD9F2C0);
  }

  return result;
}

void sub_21BA402CC()
{
  v1 = v0;
  v2 = [v0 context];
  if (!v2)
  {
    __break(1u);
    goto LABEL_24;
  }

  v3 = v2;
  v4 = sub_21BA87C8C();
  v5 = [v3 objectForKeyedSubscript_];

  LODWORD(v3) = [v1 isInstanceOf_];
  if (v3)
  {
    v6 = sub_21BA87C8C();
    v7 = [v1 objectForKeyedSubscript_];

    if (v7)
    {
      v8 = [v7 toString];

      if (v8)
      {
        v9 = sub_21BA87CBC();
        v11 = v10;

        MEMORY[0x21CEFD130](8250, 0xE200000000000000);
        MEMORY[0x21CEFD130](v9, v11);
      }

      v12 = sub_21BA87C8C();
      v13 = [v1 objectForKeyedSubscript_];

      if (v13)
      {
        v14 = [v13 toString];

        if (v14)
        {
          v15 = sub_21BA87CBC();
          v17 = v16;

          MEMORY[0x21CEFD130](v15, v17);
        }

        v18 = sub_21BA87C8C();
        v19 = [v1 objectForKeyedSubscript_];

        if (v19)
        {
          if (([v19 isUndefined] & 1) != 0 || (v20 = objc_msgSend(v19, sel_toString)) == 0)
          {
          }

          else
          {
            v21 = v20;
            v22 = sub_21BA87CBC();
            v24 = v23;

            MEMORY[0x21CEFD130](v22, v24);

            MEMORY[0x21CEFD130](0x203A656E696C202ELL, 0xE800000000000000);
          }
        }

        v27 = sub_21BA87C8C();
        v28 = [v1 objectForKeyedSubscript_];

        if (v28)
        {
          if (([v28 isUndefined] & 1) != 0 || (v29 = objc_msgSend(v28, sel_toString)) == 0)
          {
          }

          else
          {
            v30 = v29;
            v31 = sub_21BA87CBC();
            v33 = v32;

            MEMORY[0x21CEFD130](v31, v33);

            MEMORY[0x21CEFD130](10, 0xE100000000000000);
          }
        }

        return;
      }

LABEL_25:
      __break(1u);
      return;
    }

LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v25 = [v1 toString];
  if (v25)
  {
    v26 = v25;
    sub_21BA87CBC();
  }
}

uint64_t sub_21BA406D0()
{
  v1 = [*(v0 + 24) context];
  if (!v1)
  {
    __break(1u);
    return MEMORY[0x2822008A0](v1, v2, v3, v4, v5, v6, v7, v8);
  }

  v9 = v1;
  v10 = *(v0 + 24);
  v11 = sub_21BA87C8C();
  v12 = [v9 objectForKeyedSubscript_];

  LODWORD(v9) = [v10 isInstanceOf_];
  if (v9)
  {
    v13 = *(v0 + 24);
    v14 = swift_task_alloc();
    *(v0 + 32) = v14;
    *(v14 + 16) = v13;
    v15 = swift_task_alloc();
    *(v0 + 40) = v15;
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9F2D0);
    *v15 = v0;
    v15[1] = sub_21BA408C4;
    v6 = sub_21BA410C0;
    v4 = 0x6F72507469617761;
    v5 = 0xEE0029286573696DLL;
    v1 = (v0 + 16);
    v2 = 0;
    v3 = 0;
    v7 = v14;

    return MEMORY[0x2822008A0](v1, v2, v3, v4, v5, v6, v7, v8);
  }

  v16 = *(v0 + 24);
  v19 = *(v0 + 8);
  v17 = v16;

  return v19(v16);
}

uint64_t sub_21BA408C4()
{
  *(*v1 + 48) = v0;

  if (v0)
  {
    v2 = sub_21BA409FC;
  }

  else
  {

    v2 = sub_21BA409E0;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_21BA409FC()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_21BA40A60(uint64_t a1, void *a2)
{
  v45 = a2;
  *&v43 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9F2D8);
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v41 - v6;
  v8 = *(v4 + 16);
  v8(&v41 - v6, a1, v3, v5);
  v9 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v10 = swift_allocObject();
  v11 = *(v4 + 32);
  v11(v10 + v9, v7, v3);
  v50 = sub_21BA41144;
  v51 = v10;
  aBlock = MEMORY[0x277D85DD0];
  v47 = 1107296256;
  v48 = sub_21BA410C8;
  v49 = &block_descriptor_7;
  v44 = _Block_copy(&aBlock);

  (v8)(v7, v43, v3);
  v12 = swift_allocObject();
  v11(v12 + v9, v7, v3);
  v50 = sub_21BA41298;
  v51 = v12;
  aBlock = MEMORY[0x277D85DD0];
  v47 = 1107296256;
  v48 = sub_21BA410C8;
  v49 = &block_descriptor_8;
  v13 = _Block_copy(&aBlock);

  v14 = sub_21BA87C8C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9D248);
  v15 = swift_allocObject();
  v43 = xmmword_21BA92F40;
  *(v15 + 16) = xmmword_21BA92F40;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9F2E0);
  v49 = v16;
  aBlock = v44;
  _Block_copy(v44);
  v17 = RUIAttributeDarkImageTextColor;
  v18 = [v45 context];
  if (v16)
  {
    v19 = __swift_project_boxed_opaque_existential_1(&aBlock, v16);
    v20 = *(v16 - 8);
    v21 = MEMORY[0x28223BE20](v19);
    v23 = &v41 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v20 + 16))(v23, v21);
    v24 = sub_21BA8898C();
    v25 = v23;
    v17 = RUIAttributeDarkImageTextColor;
    (*(v20 + 8))(v25, v16);
    __swift_destroy_boxed_opaque_existential_1(&aBlock);
  }

  else
  {
    v24 = 0;
  }

  v42 = objc_opt_self();
  v26 = [v42 valueWithObject:v24 inContext:v18];
  swift_unknownObjectRelease();

  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9F2D0);
  *(v15 + 56) = v27;
  *(v15 + 32) = v26;
  v28 = sub_21BA87EFC();

  v29 = v45;

  v30 = sub_21BA87C8C();
  v31 = swift_allocObject();
  *(v31 + 16) = v43;
  v49 = v16;
  aBlock = v13;
  _Block_copy(v13);
  v32 = [v29 v17[490]];
  if (v16)
  {
    v33 = __swift_project_boxed_opaque_existential_1(&aBlock, v16);
    v34 = *(v16 - 8);
    v35 = MEMORY[0x28223BE20](v33);
    v37 = &v41 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v34 + 16))(v37, v35);
    v38 = sub_21BA8898C();
    (*(v34 + 8))(v37, v16);
    __swift_destroy_boxed_opaque_existential_1(&aBlock);
  }

  else
  {
    v38 = 0;
  }

  v39 = [v42 valueWithObject:v38 inContext:v32];
  swift_unknownObjectRelease();

  *(v31 + 56) = v27;
  *(v31 + 32) = v39;
  v40 = sub_21BA87EFC();

  _Block_release(v13);
  _Block_release(v44);
}

void sub_21BA410C8(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3(a2);
}

uint64_t sub_21BA41144(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9F2D8);
  v2 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9F2D8);
  return sub_21BA87FBC();
}

uint64_t block_copy_helper_7(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t objectdestroyTm_7()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9F2D8);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_21BA41298(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9F2D8);
  if (a1)
  {
    sub_21BA402CC();
    v3 = v2;
    v5 = v4;
  }

  else
  {
    v5 = 0xEC000000726F7272;
    v3 = 0x456E776F6E6B6E55;
  }

  sub_21BA41388();
  swift_allocError();
  *v6 = v3;
  v6[1] = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9F2D8);
  return sub_21BA87FAC();
}

unint64_t sub_21BA41388()
{
  result = qword_27CD9F2E8;
  if (!qword_27CD9F2E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD9F2E8);
  }

  return result;
}

uint64_t sub_21BA413E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  v6 = sub_21BA860AC();
  v5[7] = v6;
  v5[8] = *(v6 - 8);
  v5[9] = swift_task_alloc();
  v7 = sub_21BA864AC();
  v5[10] = v7;
  v5[11] = *(v7 - 8);
  v5[12] = swift_task_alloc();
  v8 = sub_21BA8673C();
  v5[13] = v8;
  v5[14] = *(v8 - 8);
  v5[15] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21BA41564, 0, 0);
}

uint64_t sub_21BA41564()
{
  v40 = v0;
  v2 = v0[14];
  v1 = v0[15];
  v4 = v0[12];
  v3 = v0[13];
  v5 = v0[10];
  v6 = v0[11];
  v7 = v0[2];
  v8 = sub_21B9E0270();
  (*(v2 + 16))(v1, v8, v3);
  (*(v6 + 16))(v4, v7, v5);
  v9 = sub_21BA8671C();
  v10 = sub_21BA8821C();
  v11 = os_log_type_enabled(v9, v10);
  v13 = v0[14];
  v12 = v0[15];
  v14 = v0[12];
  v15 = v0[13];
  v17 = v0[10];
  v16 = v0[11];
  if (v11)
  {
    v37 = v0[13];
    v18 = swift_slowAlloc();
    v34 = v10;
    v19 = swift_slowAlloc();
    v39 = v19;
    *v18 = 136315138;
    v20 = sub_21BA863FC();
    v35 = v12;
    v22 = v21;
    (*(v16 + 8))(v14, v17);
    v23 = sub_21B9B2A60(v20, v22, &v39);

    *(v18 + 4) = v23;
    _os_log_impl(&dword_21B93D000, v9, v34, "RUI is loading url: %s", v18, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v19);
    MEMORY[0x21CEFF180](v19, -1, -1);
    MEMORY[0x21CEFF180](v18, -1, -1);

    (*(v13 + 8))(v35, v37);
  }

  else
  {

    (*(v16 + 8))(v14, v17);
    (*(v13 + 8))(v12, v15);
  }

  if (sub_21BA863CC())
  {
    v30 = sub_21BA864BC();
    v32 = v31;

    v33 = v0[1];

    return v33(v30, v32);
  }

  else
  {
    v38 = v0[4];
    ObjectType = swift_getObjectType();
    v0[16] = ObjectType;
    v36 = (*(v38 + 8) + **(v38 + 8));
    v25 = swift_task_alloc();
    v0[17] = v25;
    *v25 = v0;
    v25[1] = sub_21BA41934;
    v26 = v0[9];
    v27 = v0[4];
    v28 = v0[2];

    return v36(v26, v28, ObjectType, v27);
  }
}

uint64_t sub_21BA41934()
{
  *(*v1 + 144) = v0;

  if (v0)
  {
    v2 = sub_21BA41D64;
  }

  else
  {
    v2 = sub_21BA41A48;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_21BA41A48()
{
  v7 = v0[4];

  sub_21BA8605C();
  URLRequest.addRemoteUIHeaders()();
  v6 = (*(v7 + 16) + **(v7 + 16));
  v1 = swift_task_alloc();
  v0[19] = v1;
  *v1 = v0;
  v1[1] = sub_21BA41B88;
  v2 = v0[16];
  v3 = v0[9];
  v4 = v0[4];

  return v6(v3, v2, v4);
}

uint64_t sub_21BA41B88(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  *(*v3 + 160) = v2;

  if (v2)
  {
    v7 = sub_21BA41DE8;
  }

  else
  {
    *(v6 + 168) = a2;
    *(v6 + 176) = a1;
    v7 = sub_21BA41CBC;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_21BA41CBC()
{
  (*(v0[8] + 8))(v0[9], v0[7]);
  v1 = v0[21];
  v2 = v0[22];

  v3 = v0[1];

  return v3(v2, v1);
}

uint64_t sub_21BA41D64()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_21BA41DE8()
{
  (*(v0[8] + 8))(v0[9], v0[7]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_21BA41E94@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_21BA8875C();

  *a1 = v2 != 0;
  return result;
}

uint64_t sub_21BA41EE8@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_21BA8875C();

  *a1 = v2 != 0;
  return result;
}

uint64_t sub_21BA41F40(uint64_t a1)
{
  v2 = sub_21BA41FB8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21BA41F7C(uint64_t a1)
{
  v2 = sub_21BA41FB8();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_21BA41FB8()
{
  result = qword_27CD9F2F8;
  if (!qword_27CD9F2F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD9F2F8);
  }

  return result;
}

unint64_t sub_21BA42010()
{
  result = qword_27CD9F300;
  if (!qword_27CD9F300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD9F300);
  }

  return result;
}

unint64_t sub_21BA42068()
{
  result = qword_27CD9F308;
  if (!qword_27CD9F308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD9F308);
  }

  return result;
}

unint64_t sub_21BA420C0()
{
  result = qword_27CD9F310;
  if (!qword_27CD9F310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD9F310);
  }

  return result;
}

unint64_t sub_21BA42114(void *a1)
{
  a1[1] = sub_21BA4214C();
  a1[2] = sub_21BA421A0();
  result = sub_21BA421F4();
  a1[3] = result;
  return result;
}

unint64_t sub_21BA4214C()
{
  result = qword_27CD9F318;
  if (!qword_27CD9F318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD9F318);
  }

  return result;
}

unint64_t sub_21BA421A0()
{
  result = qword_27CD9F320;
  if (!qword_27CD9F320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD9F320);
  }

  return result;
}

unint64_t sub_21BA421F4()
{
  result = qword_27CD9F328;
  if (!qword_27CD9F328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD9F328);
  }

  return result;
}

uint64_t sub_21BA42264@<X0>(void *a1@<X0>, Swift::String *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9F2F0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v12 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21BA41FB8();
  sub_21BA88C0C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v9 = Decoder.decodeRUIID()();
  if (v10)
  {
    (*(v6 + 8))(v8, v5);
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  (*(v6 + 8))(v8, v5);
  result = __swift_destroy_boxed_opaque_existential_1(a1);
  *a2 = v9;
  return result;
}

void *sub_21BA42418()
{
  v1 = *(v0 + OBJC_IVAR____TtC8RemoteUI15RUIEmptyElement__view);
  v2 = v1;
  return v1;
}

id sub_21BA4245C(uint64_t a1, void *a2)
{
  v5 = OBJC_IVAR____TtC8RemoteUI15RUIEmptyElement__view;
  *&v2[v5] = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
  if (a1)
  {
    v6 = sub_21BA87BBC();
  }

  else
  {
    v6 = 0;
  }

  v9.receiver = v2;
  v9.super_class = type metadata accessor for RUIEmptyElement();
  v7 = objc_msgSendSuper2(&v9, sel_initWithAttributes_parent_, v6, a2);

  if (v7)
  {
  }

  return v7;
}

id sub_21BA42630()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for RUIEmptyElement();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_21BA42674(void *a1, void *a2)
{
  swift_allocObject();
  sub_21BA42B34(a1, a2);
  v5 = v4;

  return v5;
}

uint64_t sub_21BA426D0()
{

  return MEMORY[0x2821FE8D8](v0, 40, 7);
}

uint64_t sub_21BA42718@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  KeyPath = swift_getKeyPath();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v5 = Decoder.decodeRUIID()();
  if (v6)
  {

    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_21BA88BEC();
    v7 = v11;
    __swift_project_boxed_opaque_existential_1(v10, v11);
    v8 = SingleValueDecodingContainer.ruiXMLElement.getter(v7);
    __swift_destroy_boxed_opaque_existential_1(v10);
    result = __swift_destroy_boxed_opaque_existential_1(a1);
    *a2 = v5;
    *(a2 + 16) = v8;
    *(a2 + 24) = KeyPath;
    *(a2 + 32) = 0;
  }

  return result;
}

void sub_21BA42878(void *a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = *(v1 + 32);
  v6 = v3;
  v7 = sub_21BA429E8(v4, v5);
  if (v7)
  {
    v8 = v7;
    type metadata accessor for LegacyRUIContent.Coordinator();
    swift_allocObject();
    sub_21BA42B34(v6, v8);
    v10 = v9;

    *a1 = v10;
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_21BA428F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21BA43084();

  return MEMORY[0x28212EF78](a1, a2, a3, v6);
}

uint64_t sub_21BA4295C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21BA43084();

  return MEMORY[0x28212EF30](a1, a2, a3, v6);
}

void sub_21BA429C0()
{
  sub_21BA43084();
  sub_21BA8735C();
  __break(1u);
}

void *sub_21BA429E8(void *a1, char a2)
{
  v4 = sub_21BA86E9C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v8 = a1;
  }

  else
  {

    sub_21BA8820C();
    v9 = sub_21BA8740C();
    sub_21BA8670C();

    sub_21BA86E8C();
    swift_getAtKeyPath();
    sub_21B94B4EC(a1, 0);
    (*(v5 + 8))(v7, v4);
    return v11[1];
  }

  return a1;
}

void sub_21BA42B34(void *a1, void *a2)
{
  v2[2] = a1;
  v5 = objc_allocWithZone(RUITopLevelElementProvider);
  v6 = a1;
  v7 = [v5 initWithParentElement_];
  v8 = [a2 pageElement];
  if (!v8)
  {
    __break(1u);
    goto LABEL_8;
  }

  v9 = v8;
  v10 = [v8 page];

  if (!v10)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  [v10 addElementProvider_];

  v11 = [a2 pageElement];
  if (!v11)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v12 = v11;
  v13 = [v11 page];

  if (!v13)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v14 = [v13 objectModel];

  if (v14)
  {
    v15 = objc_allocWithZone(RUITopLevelElementParser);
    v16 = v7;
    v17 = [v15 initWithXMLElement:v6 elementProvider:v16 objectModel:v14 delegate:0];

    v2[3] = v17;
    v2[4] = v16;
    return;
  }

LABEL_11:
  __break(1u);
}

void sub_21BA42CDC(uint64_t a1, void *a2, char a3)
{
  v5 = sub_21BA86E9C();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9F358);
  sub_21BA873FC();
  v9 = v19[3];

  [v9 parse];

  sub_21BA873FC();
  v10 = v19[3];

  v11 = [v10 elementProvider];

  if ([v11 hasTableView])
  {
    v12 = [v11 makeTableViewOM];
LABEL_5:
    v13 = v12;
LABEL_10:
    [objc_allocWithZone(RUIElementViewController) initWithElement_];

    return;
  }

  if ([v11 hasPasscodeView])
  {
    v12 = [v11 makePasscodeViewOM];
    goto LABEL_5;
  }

  sub_21B9AF864(MEMORY[0x277D84F90]);
  if (a3)
  {
    v14 = a2;
  }

  else
  {

    sub_21BA8820C();
    v15 = sub_21BA8740C();
    sub_21BA8670C();

    sub_21BA86E8C();
    swift_getAtKeyPath();
    sub_21B94B4EC(a2, 0);
    (*(v6 + 8))(v8, v5);
    v14 = v19;
  }

  v16 = objc_allocWithZone(type metadata accessor for RUIEmptyElement());
  v17 = sub_21BA87BBC();

  v13 = [v16 initWithAttributes:v17 parent:v14];

  if (v13)
  {
    goto LABEL_10;
  }

  __break(1u);
}

__n128 __swift_memcpy33_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_21BA42FE8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 33))
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

uint64_t sub_21BA43030(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 33) = 1;
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

    *(result + 33) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_21BA43084()
{
  result = qword_27CD9F350;
  if (!qword_27CD9F350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD9F350);
  }

  return result;
}

uint64_t sub_21BA430D8(_BYTE *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = "MacOSDefaultUITypeStandard";
  }

  else
  {
    v4 = "InternalWatermark";
  }

  if (v3)
  {
    v5 = 17;
  }

  else
  {
    v5 = 26;
  }

  if (v2)
  {
    v6 = "MacOSDefaultUITypeStandard";
  }

  else
  {
    v6 = "InternalWatermark";
  }

  if (v2)
  {
    v7 = 26;
  }

  else
  {
    v7 = 17;
  }

  v8 = sub_21BA43430(v4, v5, 2);
  v10 = v9;
  if (v8 == sub_21BA43430(v6, v7, 2) && v10 == v11)
  {
    v13 = 1;
  }

  else
  {
    v13 = sub_21BA8899C();
  }

  return v13 & 1;
}

uint64_t sub_21BA4319C()
{
  v1 = *v0;
  sub_21BA88BAC();
  if (v1)
  {
    v2 = "MacOSDefaultUITypeStandard";
  }

  else
  {
    v2 = "InternalWatermark";
  }

  if (v1)
  {
    v3 = 26;
  }

  else
  {
    v3 = 17;
  }

  sub_21BA43430(v2, v3, 2);
  sub_21BA87D8C();

  return sub_21BA88BCC();
}

uint64_t sub_21BA43224()
{
  if (*v0)
  {
    v1 = "MacOSDefaultUITypeStandard";
  }

  else
  {
    v1 = "InternalWatermark";
  }

  if (*v0)
  {
    v2 = 26;
  }

  else
  {
    v2 = 17;
  }

  sub_21BA43430(v1, v2, 2);
  sub_21BA87D8C();
}

uint64_t sub_21BA432A0()
{
  v1 = *v0;
  sub_21BA88BAC();
  if (v1)
  {
    v2 = "MacOSDefaultUITypeStandard";
  }

  else
  {
    v2 = "InternalWatermark";
  }

  if (v1)
  {
    v3 = 26;
  }

  else
  {
    v3 = 17;
  }

  sub_21BA43430(v2, v3, 2);
  sub_21BA87D8C();

  return sub_21BA88BCC();
}

uint64_t sub_21BA43324@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_21BA43728(*a1, *(a1 + 8), *(a1 + 16));
  *a2 = result;
  return result;
}

void sub_21BA43358(uint64_t a1@<X8>)
{
  v2 = "InternalWatermark";
  if (*v1)
  {
    v2 = "MacOSDefaultUITypeStandard";
  }

  v3 = 17;
  if (*v1)
  {
    v3 = 26;
  }

  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 16) = 2;
}

const char *sub_21BA433A4()
{
  if (*v0)
  {
    return "MacOSDefaultUITypeStandard";
  }

  else
  {
    return "InternalWatermark";
  }
}

uint64_t sub_21BA433D4(char a1)
{
  v5 = &type metadata for RUIFeatureFlags;
  v6 = sub_21BA43870();
  v4[0] = a1 & 1;
  v2 = sub_21BA8663C();
  __swift_destroy_boxed_opaque_existential_1(v4);
  return v2 & 1;
}

unint64_t sub_21BA43430(unint64_t result, uint64_t a2, char a3)
{
  if ((a3 & 1) == 0)
  {
    if (result)
    {
      return sub_21BA87D7C();
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
      return sub_21BA87D7C();
    }

LABEL_9:
    __break(1u);
    return sub_21BA87D7C();
  }

  __break(1u);
  return result;
}

uint64_t sub_21BA43528()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  sub_21BA88BAC();
  sub_21BA43430(v1, v2, v3);
  sub_21BA87D8C();

  return sub_21BA88BCC();
}

uint64_t sub_21BA435A0()
{
  sub_21BA43430(*v0, *(v0 + 8), *(v0 + 16));
  sub_21BA87D8C();
}

uint64_t sub_21BA435F8()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  sub_21BA88BAC();
  sub_21BA43430(v1, v2, v3);
  sub_21BA87D8C();

  return sub_21BA88BCC();
}

uint64_t sub_21BA4366C(uint64_t a1, uint64_t a2)
{
  v2 = *a2;
  v3 = *(a2 + 8);
  v4 = *(a2 + 16);
  v5 = sub_21BA43430(*a1, *(a1 + 8), *(a1 + 16));
  v7 = v6;
  if (v5 == sub_21BA43430(v2, v3, v4) && v7 == v8)
  {
    v10 = 1;
  }

  else
  {
    v10 = sub_21BA8899C();
  }

  return v10 & 1;
}

__n128 sub_21BA43714@<Q0>(__n128 *a1@<X0>, __n128 *a2@<X8>)
{
  v2 = a1[1].n128_u8[0];
  result = *a1;
  *a2 = *a1;
  a2[1].n128_u8[0] = v2;
  return result;
}

uint64_t sub_21BA43728(unint64_t a1, uint64_t a2, char a3)
{
  v6 = sub_21BA87D7C();
  v8 = v7;
  if (v6 == sub_21BA43430(a1, a2, a3) && v8 == v9)
  {

    return 0;
  }

  else
  {
    v11 = sub_21BA8899C();

    result = 0;
    if ((v11 & 1) == 0)
    {
      v13 = sub_21BA87D7C();
      v15 = v14;
      if (v13 == sub_21BA43430(a1, a2, a3) && v15 == v16)
      {

        return 1;
      }

      else
      {
        v17 = sub_21BA8899C();

        if (v17)
        {
          return 1;
        }

        else
        {
          return 2;
        }
      }
    }
  }

  return result;
}

unint64_t sub_21BA43870()
{
  result = qword_27CD9F360;
  if (!qword_27CD9F360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD9F360);
  }

  return result;
}

unint64_t sub_21BA438C8()
{
  result = qword_27CD9F368;
  if (!qword_27CD9F368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD9F368);
  }

  return result;
}

unint64_t sub_21BA43920()
{
  result = qword_27CD9F370;
  if (!qword_27CD9F370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD9F370);
  }

  return result;
}

unint64_t sub_21BA43978()
{
  result = qword_27CD9F378;
  if (!qword_27CD9F378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD9F378);
  }

  return result;
}

unint64_t sub_21BA439DC()
{
  result = qword_27CD9F380;
  if (!qword_27CD9F380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD9F380);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for HashableStaticString(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for HashableStaticString(uint64_t result, int a2, int a3)
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

id sub_21BA43AB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (a3)
  {
    v6 = sub_21BA87C8C();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithStyle:a1 reuseIdentifier:v6];

  return v7;
}