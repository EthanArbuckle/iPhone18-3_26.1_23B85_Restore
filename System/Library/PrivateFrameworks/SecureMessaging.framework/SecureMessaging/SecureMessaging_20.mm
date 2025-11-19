uint64_t specialized _NativeSet.insertNew(_:at:isUnique:)(uint64_t a1, unint64_t a2, char a3)
{
  v33 = a1;
  v6 = type metadata accessor for MLS.Identity.Credential();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  v30 = v3;
  v31 = v7;
  if (v12 > v11 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    specialized _NativeSet.resize(capacity:)(v11 + 1);
  }

  else
  {
    if (v12 > v11)
    {
      specialized _NativeSet.copy()(MEMORY[0x277D6AC88], &_ss11_SetStorageCy8SwiftMLS0D0O8IdentityO10CredentialOGMd, &_ss11_SetStorageCy8SwiftMLS0D0O8IdentityO10CredentialOGMR);
      goto LABEL_12;
    }

    specialized _NativeSet.copyAndResize(capacity:)(v11 + 1);
  }

  v13 = *v3;
  v14 = *(*v3 + 40);
  _s8SwiftMLS0B0O8IdentityO07SigningC0VAGSHAAWlTm_0(&lazy protocol witness table cache variable for type MLS.Identity.Credential and conformance MLS.Identity.Credential, MEMORY[0x277D6AC88]);
  v15 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v16 = v13 + 56;
  v32 = v13;
  v17 = -1 << *(v13 + 32);
  a2 = v15 & ~v17;
  if ((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v18 = ~v17;
    v21 = *(v7 + 16);
    v20 = v7 + 16;
    v19 = v21;
    v22 = *(v20 + 56);
    do
    {
      v19(v10, *(v32 + 48) + v22 * a2, v6);
      _s8SwiftMLS0B0O8IdentityO07SigningC0VAGSHAAWlTm_0(&lazy protocol witness table cache variable for type MLS.Identity.Credential and conformance MLS.Identity.Credential, MEMORY[0x277D6AC88]);
      v23 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*(v20 - 8))(v10, v6);
      if (v23)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v18;
    }

    while (((*(v16 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v24 = v31;
  v25 = *v30;
  *(v25 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v24 + 32))(*(v25 + 48) + *(v24 + 72) * a2, v33, v6);
  v27 = *(v25 + 16);
  v28 = __OFADD__(v27, 1);
  v29 = v27 + 1;
  if (!v28)
  {
    *(v25 + 16) = v29;
    return result;
  }

  __break(1u);
LABEL_15:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

{
  v33 = a1;
  v6 = type metadata accessor for MLS.Identity.SigningIdentity();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  v30 = v3;
  v31 = v7;
  if (v12 > v11 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    specialized _NativeSet.resize(capacity:)(v11 + 1);
  }

  else
  {
    if (v12 > v11)
    {
      specialized _NativeSet.copy()(MEMORY[0x277D6AC60], &_ss11_SetStorageCy8SwiftMLS0D0O8IdentityO07SigningE0VGMd, &_ss11_SetStorageCy8SwiftMLS0D0O8IdentityO07SigningE0VGMR);
      goto LABEL_12;
    }

    specialized _NativeSet.copyAndResize(capacity:)(v11 + 1);
  }

  v13 = *v3;
  v14 = *(*v3 + 40);
  _s8SwiftMLS0B0O8IdentityO07SigningC0VAGSHAAWlTm_0(&lazy protocol witness table cache variable for type MLS.Identity.SigningIdentity and conformance MLS.Identity.SigningIdentity, MEMORY[0x277D6AC60]);
  v15 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v16 = v13 + 56;
  v32 = v13;
  v17 = -1 << *(v13 + 32);
  a2 = v15 & ~v17;
  if ((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v18 = ~v17;
    v21 = *(v7 + 16);
    v20 = v7 + 16;
    v19 = v21;
    v22 = *(v20 + 56);
    do
    {
      v19(v10, *(v32 + 48) + v22 * a2, v6);
      _s8SwiftMLS0B0O8IdentityO07SigningC0VAGSHAAWlTm_0(&lazy protocol witness table cache variable for type MLS.Identity.SigningIdentity and conformance MLS.Identity.SigningIdentity, MEMORY[0x277D6AC60]);
      v23 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*(v20 - 8))(v10, v6);
      if (v23)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v18;
    }

    while (((*(v16 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v24 = v31;
  v25 = *v30;
  *(v25 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v24 + 32))(*(v25 + 48) + *(v24 + 72) * a2, v33, v6);
  v27 = *(v25 + 16);
  v28 = __OFADD__(v27, 1);
  v29 = v27 + 1;
  if (!v28)
  {
    *(v25 + 16) = v29;
    return result;
  }

  __break(1u);
LABEL_15:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

Swift::Int specialized _NativeSet.insertNew(_:at:isUnique:)(Swift::Int result, Swift::Int a2, unint64_t a3, char a4)
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
    specialized _NativeSet.resize(capacity:)(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = specialized _NativeSet.copy()();
      goto LABEL_16;
    }

    specialized _NativeSet.copyAndResize(capacity:)(v8 + 1);
  }

  v10 = *v4;
  v11 = *(*v4 + 40);
  Hasher.init(_seed:)();
  String.hash(into:)();
  result = Hasher._finalize()();
  v12 = -1 << *(v10 + 32);
  a3 = result & ~v12;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v13 = ~v12;
    do
    {
      v14 = (*(v10 + 48) + 16 * a3);
      if (*v14 == v7 && v14[1] == a2)
      {
        goto LABEL_19;
      }

      result = _stringCompareWithSmolCheck(_:_:expecting:)();
      if (result)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v13;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v16 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v17 = (*(v16 + 48) + 16 * a3);
  *v17 = v7;
  v17[1] = a2;
  v18 = *(v16 + 16);
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (!v19)
  {
    *(v16 + 16) = v20;
    return result;
  }

  __break(1u);
LABEL_19:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

{
  v5 = v4;
  v8 = result;
  v9 = *(*v4 + 16);
  v10 = *(*v4 + 24);
  if (v10 > v9 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    specialized _NativeSet.resize(capacity:)(v9 + 1);
  }

  else
  {
    if (v10 > v9)
    {
      result = specialized _NativeSet.copy()();
      goto LABEL_16;
    }

    specialized _NativeSet.copyAndResize(capacity:)(v9 + 1);
  }

  v11 = *v4;
  v12 = *(*v4 + 40);
  Hasher.init(_seed:)();
  String.hash(into:)();
  String.hash(into:)();
  MEMORY[0x266754DE0](0);
  result = Hasher._finalize()();
  v13 = v11 + 56;
  v14 = -1 << *(v11 + 32);
  a3 = result & ~v14;
  if ((*(v11 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v15 = ~v14;
    v16 = *(v11 + 48);
    do
    {
      v17 = (v16 + 16 * a3);
      if (*v17 == v8 && v17[1] == a2)
      {
        goto LABEL_19;
      }

      result = _stringCompareWithSmolCheck(_:_:expecting:)();
      if (result)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v15;
    }

    while (((*(v13 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v19 = *v5;
  *(*v5 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v20 = (*(v19 + 48) + 16 * a3);
  *v20 = v8;
  v20[1] = a2;
  v21 = *(v19 + 16);
  v22 = __OFADD__(v21, 1);
  v23 = v21 + 1;
  if (!v22)
  {
    *(v19 + 16) = v23;
    return result;
  }

  __break(1u);
LABEL_19:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

void *specialized _NativeSet.copy()()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy15SecureMessaging3MLSO9AllMemberOGMd, &_ss11_SetStorageCy15SecureMessaging3MLSO9AllMemberOGMR);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
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
        v17 = 32 * (v14 | (v8 << 6));
        v18 = *(v2 + 48) + v17;
        v19 = *(v18 + 8);
        v20 = *(v18 + 16);
        v21 = *(v4 + 48) + v17;
        v22 = *(v18 + 24);
        *v21 = *v18;
        *(v21 + 8) = v19;
        *(v21 + 16) = v20;
        *(v21 + 24) = v22;
        result = outlined copy of MLS.AllMember();
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

{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCySSGMd, &_ss11_SetStorageCySSGMR);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
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

{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy15SecureMessaging3MLSO22UniqueClientIdentifierVGMd, &_ss11_SetStorageCy15SecureMessaging3MLSO22UniqueClientIdentifierVGMR);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
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

void *specialized _NativeSet.copy()(uint64_t (*a1)(void), uint64_t *a2, uint64_t *a3)
{
  v6 = v3;
  v7 = a1(0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v27 - v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v12 = *v3;
  v13 = static _SetStorage.copy(original:)();
  v14 = v13;
  if (*(v12 + 16))
  {
    v28 = v6;
    result = (v13 + 56);
    v16 = ((1 << *(v14 + 32)) + 63) >> 6;
    if (v14 != v12 || result >= v12 + 56 + 8 * v16)
    {
      result = memmove(result, (v12 + 56), 8 * v16);
    }

    v18 = 0;
    *(v14 + 16) = *(v12 + 16);
    v19 = 1 << *(v12 + 32);
    v20 = -1;
    if (v19 < 64)
    {
      v20 = ~(-1 << v19);
    }

    v21 = v20 & *(v12 + 56);
    v22 = (v19 + 63) >> 6;
    v29 = v8 + 32;
    for (i = v8 + 16; v21; result = (*(v8 + 32))(*(v14 + 48) + v26, v11, v7))
    {
      v23 = __clz(__rbit64(v21));
      v21 &= v21 - 1;
LABEL_17:
      v26 = *(v8 + 72) * (v23 | (v18 << 6));
      (*(v8 + 16))(v11, *(v12 + 48) + v26, v7);
    }

    v24 = v18;
    while (1)
    {
      v18 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        break;
      }

      if (v18 >= v22)
      {

        v6 = v28;
        goto LABEL_21;
      }

      v25 = *(v12 + 56 + 8 * v18);
      ++v24;
      if (v25)
      {
        v23 = __clz(__rbit64(v25));
        v21 = (v25 - 1) & v25;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v6 = v14;
  }

  return result;
}

uint64_t specialized _NativeSet.copyAndResize(capacity:)(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy15SecureMessaging3MLSO9AllMemberOGMd, &_ss11_SetStorageCy15SecureMessaging3MLSO9AllMemberOGMR);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (!*(v3 + 16))
  {

LABEL_34:
    *v2 = v6;
    return result;
  }

  v32 = v2;
  v33 = v3;
  v7 = 0;
  v8 = v3 + 56;
  v9 = 1 << *(v3 + 32);
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  else
  {
    v10 = -1;
  }

  v11 = v10 & *(v3 + 56);
  v12 = (v9 + 63) >> 6;
  v13 = result + 56;
  while (v11)
  {
    v16 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
LABEL_17:
    v19 = *(v3 + 48) + 32 * (v16 | (v7 << 6));
    v20 = *v19;
    v21 = *(v19 + 8);
    v34 = *(v19 + 16);
    v22 = *(v19 + 24);
    v23 = *(v6 + 40);
    Hasher.init(_seed:)();
    if (v22 < 0)
    {
      MEMORY[0x266754DE0](1);

      String.hash(into:)();
      MEMORY[0x266754DE0](0);
      if (v22)
      {
        Hasher._combine(_:)(0);
        goto LABEL_23;
      }

      Hasher._combine(_:)(1u);
      v24 = v34;
    }

    else
    {
      MEMORY[0x266754DE0](0);

      String.hash(into:)();
      v24 = 0;
    }

    MEMORY[0x266754DE0](v24);
LABEL_23:
    result = Hasher._finalize()();
    v25 = -1 << *(v6 + 32);
    v26 = result & ~v25;
    v27 = v26 >> 6;
    if (((-1 << v26) & ~*(v13 + 8 * (v26 >> 6))) == 0)
    {
      v28 = 0;
      v29 = (63 - v25) >> 6;
      while (++v27 != v29 || (v28 & 1) == 0)
      {
        v30 = v27 == v29;
        if (v27 == v29)
        {
          v27 = 0;
        }

        v28 |= v30;
        v31 = *(v13 + 8 * v27);
        if (v31 != -1)
        {
          v14 = __clz(__rbit64(~v31)) + (v27 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_36;
    }

    v14 = __clz(__rbit64((-1 << v26) & ~*(v13 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
    v15 = *(v6 + 48) + 32 * v14;
    *v15 = v20;
    *(v15 + 8) = v21;
    v3 = v33;
    *(v15 + 16) = v34;
    *(v15 + 24) = v22;
    ++*(v6 + 16);
  }

  v17 = v7;
  while (1)
  {
    v7 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v7 >= v12)
    {

      v2 = v32;
      goto LABEL_34;
    }

    v18 = *(v8 + 8 * v7);
    ++v17;
    if (v18)
    {
      v16 = __clz(__rbit64(v18));
      v11 = (v18 - 1) & v18;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
  return result;
}

{
  v2 = v1;
  v37 = type metadata accessor for MLS.Identity.Credential();
  v4 = *(v37 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v37);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v9 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy8SwiftMLS0D0O8IdentityO10CredentialOGMd, &_ss11_SetStorageCy8SwiftMLS0D0O8IdentityO10CredentialOGMR);
  v10 = static _SetStorage.resize(original:capacity:move:)();
  result = v8;
  if (*(v8 + 16))
  {
    v32 = v2;
    v12 = 0;
    v13 = v8 + 56;
    v14 = 1 << *(v8 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v8 + 56);
    v17 = (v14 + 63) >> 6;
    v35 = v4 + 16;
    v36 = v4;
    v18 = v10 + 56;
    v33 = (v4 + 32);
    v34 = result;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_17:
      v23 = *(v36 + 72);
      (*(v36 + 16))(v7, *(result + 48) + v23 * (v20 | (v12 << 6)), v37);
      v24 = *(v10 + 40);
      _s8SwiftMLS0B0O8IdentityO07SigningC0VAGSHAAWlTm_0(&lazy protocol witness table cache variable for type MLS.Identity.Credential and conformance MLS.Identity.Credential, MEMORY[0x277D6AC88]);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v25 = -1 << *(v10 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v18 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v18 + 8 * v27);
          if (v31 != -1)
          {
            v19 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v19 = __clz(__rbit64((-1 << v26) & ~*(v18 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      (*v33)(*(v10 + 48) + v19 * v23, v7, v37);
      ++*(v10 + 16);
      result = v34;
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v12 >= v17)
      {

        v2 = v32;
        goto LABEL_28;
      }

      v22 = *(v13 + 8 * v12);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v10;
  }

  return result;
}

{
  v2 = v1;
  v37 = type metadata accessor for MLS.Identity.SigningIdentity();
  v4 = *(v37 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v37);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v9 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy8SwiftMLS0D0O8IdentityO07SigningE0VGMd, &_ss11_SetStorageCy8SwiftMLS0D0O8IdentityO07SigningE0VGMR);
  v10 = static _SetStorage.resize(original:capacity:move:)();
  result = v8;
  if (*(v8 + 16))
  {
    v32 = v2;
    v12 = 0;
    v13 = v8 + 56;
    v14 = 1 << *(v8 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v8 + 56);
    v17 = (v14 + 63) >> 6;
    v35 = v4 + 16;
    v36 = v4;
    v18 = v10 + 56;
    v33 = (v4 + 32);
    v34 = result;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_17:
      v23 = *(v36 + 72);
      (*(v36 + 16))(v7, *(result + 48) + v23 * (v20 | (v12 << 6)), v37);
      v24 = *(v10 + 40);
      _s8SwiftMLS0B0O8IdentityO07SigningC0VAGSHAAWlTm_0(&lazy protocol witness table cache variable for type MLS.Identity.SigningIdentity and conformance MLS.Identity.SigningIdentity, MEMORY[0x277D6AC60]);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v25 = -1 << *(v10 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v18 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v18 + 8 * v27);
          if (v31 != -1)
          {
            v19 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v19 = __clz(__rbit64((-1 << v26) & ~*(v18 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      (*v33)(*(v10 + 48) + v19 * v23, v7, v37);
      ++*(v10 + 16);
      result = v34;
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v12 >= v17)
      {

        v2 = v32;
        goto LABEL_28;
      }

      v22 = *(v13 + 8 * v12);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v10;
  }

  return result;
}

{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCySSGMd, &_ss11_SetStorageCySSGMR);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (*(v3 + 16))
  {
    v29 = v2;
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_17:
      v18 = (*(v3 + 48) + 16 * (v15 | (v7 << 6)));
      v19 = *v18;
      v20 = v18[1];
      v21 = *(v6 + 40);
      Hasher.init(_seed:)();

      String.hash(into:)();
      result = Hasher._finalize()();
      v22 = -1 << *(v6 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v12 + 8 * (v23 >> 6))) == 0)
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
          v28 = *(v12 + 8 * v24);
          if (v28 != -1)
          {
            v13 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v13 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v6 + 48) + 16 * v13);
      *v14 = v19;
      v14[1] = v20;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v7 >= v11)
      {

        v2 = v29;
        goto LABEL_28;
      }

      v17 = *(v3 + 56 + 8 * v7);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v6;
  }

  return result;
}

{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy15SecureMessaging3MLSO22UniqueClientIdentifierVGMd, &_ss11_SetStorageCy15SecureMessaging3MLSO22UniqueClientIdentifierVGMR);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (*(v3 + 16))
  {
    v29 = v2;
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_17:
      v18 = (*(v3 + 48) + 16 * (v15 | (v7 << 6)));
      v19 = *v18;
      v20 = v18[1];
      v21 = *(v6 + 40);
      Hasher.init(_seed:)();

      String.hash(into:)();
      String.hash(into:)();
      MEMORY[0x266754DE0](0);
      result = Hasher._finalize()();
      v22 = -1 << *(v6 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v12 + 8 * (v23 >> 6))) == 0)
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
          v28 = *(v12 + 8 * v24);
          if (v28 != -1)
          {
            v13 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v13 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v6 + 48) + 16 * v13);
      *v14 = v19;
      v14[1] = v20;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v7 >= v11)
      {

        v2 = v29;
        goto LABEL_28;
      }

      v17 = *(v3 + 56 + 8 * v7);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v6;
  }

  return result;
}

uint64_t specialized Set._Variant.remove(_:)(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = *(*v2 + 40);
  Hasher.init(_seed:)();
  String.hash(into:)();
  v7 = Hasher._finalize()();
  v8 = -1 << *(v5 + 32);
  v9 = v7 & ~v8;
  if (((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
  {
    return 0;
  }

  v10 = ~v8;
  while (1)
  {
    v11 = (*(v5 + 48) + 16 * v9);
    v12 = *v11 == a1 && v11[1] == a2;
    if (v12 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      break;
    }

    v9 = (v9 + 1) & v10;
    if (((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
    {
      return 0;
    }
  }

  v14 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v16 = *v2;
  v20 = *v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    specialized _NativeSet.copy()();
    v16 = v20;
  }

  v17 = (*(v16 + 48) + 16 * v9);
  v13 = *v17;
  v18 = v17[1];
  specialized _NativeSet._delete(at:)(v9);
  *v2 = v20;
  return v13;
}

unint64_t specialized _NativeSet._delete(at:)(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;
    v8 = *v1;

    v9 = _HashTable.previousHole(before:)();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v10 = (v9 + 1) & v7;
      do
      {
        v11 = *(v3 + 40);
        v12 = (*(v3 + 48) + 16 * v6);
        v13 = *v12;
        v14 = v12[1];
        Hasher.init(_seed:)();

        String.hash(into:)();
        v15 = Hasher._finalize()();

        v16 = v15 & v7;
        if (v2 >= v10)
        {
          if (v16 < v10)
          {
            goto LABEL_5;
          }
        }

        else if (v16 >= v10)
        {
          goto LABEL_11;
        }

        if (v2 >= v16)
        {
LABEL_11:
          v17 = *(v3 + 48);
          v18 = (v17 + 16 * v2);
          v19 = (v17 + 16 * v6);
          if (v2 != v6 || v18 >= v19 + 1)
          {
            *v18 = *v19;
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

  v20 = *(v3 + 16);
  v21 = __OFSUB__(v20, 1);
  v22 = v20 - 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v22;
    ++*(v3 + 36);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type MLS.EncryptedRCSMemberCredentialError.CodingKeys and conformance MLS.EncryptedRCSMemberCredentialError.CodingKeys()
{
  result = lazy protocol witness table cache variable for type MLS.EncryptedRCSMemberCredentialError.CodingKeys and conformance MLS.EncryptedRCSMemberCredentialError.CodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.EncryptedRCSMemberCredentialError.CodingKeys and conformance MLS.EncryptedRCSMemberCredentialError.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.EncryptedRCSMemberCredentialError.CodingKeys and conformance MLS.EncryptedRCSMemberCredentialError.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.EncryptedRCSMemberCredentialError.CodingKeys and conformance MLS.EncryptedRCSMemberCredentialError.CodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.EncryptedRCSMemberCredentialError.CodingKeys and conformance MLS.EncryptedRCSMemberCredentialError.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.EncryptedRCSMemberCredentialError.CodingKeys and conformance MLS.EncryptedRCSMemberCredentialError.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.EncryptedRCSMemberCredentialError.CodingKeys and conformance MLS.EncryptedRCSMemberCredentialError.CodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.EncryptedRCSMemberCredentialError.CodingKeys and conformance MLS.EncryptedRCSMemberCredentialError.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.EncryptedRCSMemberCredentialError.CodingKeys and conformance MLS.EncryptedRCSMemberCredentialError.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.EncryptedRCSMemberCredentialError.CodingKeys and conformance MLS.EncryptedRCSMemberCredentialError.CodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.EncryptedRCSMemberCredentialError.CodingKeys and conformance MLS.EncryptedRCSMemberCredentialError.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.EncryptedRCSMemberCredentialError.CodingKeys and conformance MLS.EncryptedRCSMemberCredentialError.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type MLS.EncryptedRCSMemberCredentialError.ErrorType and conformance MLS.EncryptedRCSMemberCredentialError.ErrorType()
{
  result = lazy protocol witness table cache variable for type MLS.EncryptedRCSMemberCredentialError.ErrorType and conformance MLS.EncryptedRCSMemberCredentialError.ErrorType;
  if (!lazy protocol witness table cache variable for type MLS.EncryptedRCSMemberCredentialError.ErrorType and conformance MLS.EncryptedRCSMemberCredentialError.ErrorType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.EncryptedRCSMemberCredentialError.ErrorType and conformance MLS.EncryptedRCSMemberCredentialError.ErrorType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.EncryptedRCSMemberCredentialError.ErrorType and conformance MLS.EncryptedRCSMemberCredentialError.ErrorType;
  if (!lazy protocol witness table cache variable for type MLS.EncryptedRCSMemberCredentialError.ErrorType and conformance MLS.EncryptedRCSMemberCredentialError.ErrorType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.EncryptedRCSMemberCredentialError.ErrorType and conformance MLS.EncryptedRCSMemberCredentialError.ErrorType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.EncryptedRCSMemberCredentialError.ErrorType and conformance MLS.EncryptedRCSMemberCredentialError.ErrorType;
  if (!lazy protocol witness table cache variable for type MLS.EncryptedRCSMemberCredentialError.ErrorType and conformance MLS.EncryptedRCSMemberCredentialError.ErrorType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.EncryptedRCSMemberCredentialError.ErrorType and conformance MLS.EncryptedRCSMemberCredentialError.ErrorType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.EncryptedRCSMemberCredentialError.ErrorType and conformance MLS.EncryptedRCSMemberCredentialError.ErrorType;
  if (!lazy protocol witness table cache variable for type MLS.EncryptedRCSMemberCredentialError.ErrorType and conformance MLS.EncryptedRCSMemberCredentialError.ErrorType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.EncryptedRCSMemberCredentialError.ErrorType and conformance MLS.EncryptedRCSMemberCredentialError.ErrorType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.EncryptedRCSMemberCredentialError.ErrorType and conformance MLS.EncryptedRCSMemberCredentialError.ErrorType;
  if (!lazy protocol witness table cache variable for type MLS.EncryptedRCSMemberCredentialError.ErrorType and conformance MLS.EncryptedRCSMemberCredentialError.ErrorType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.EncryptedRCSMemberCredentialError.ErrorType and conformance MLS.EncryptedRCSMemberCredentialError.ErrorType);
  }

  return result;
}

uint64_t specialized MLS.EncryptedRCSMemberCredentialError.init(from:)(uint64_t *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15SecureMessaging3MLSO33EncryptedRCSMemberCredentialErrorV10CodingKeys33_46B7670155C48EB6C84CF9E06BC36E7BLLOGMd, &_ss22KeyedDecodingContainerVy15SecureMessaging3MLSO33EncryptedRCSMemberCredentialErrorV10CodingKeys33_46B7670155C48EB6C84CF9E06BC36E7BLLOGMR);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v10[-v6];
  v8 = a1[3];
  __swift_project_boxed_opaque_existential_1(a1, v8);
  lazy protocol witness table accessor for type MLS.EncryptedRCSMemberCredentialError.CodingKeys and conformance MLS.EncryptedRCSMemberCredentialError.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v1)
  {
    v10[14] = 0;
    lazy protocol witness table accessor for type MLS.EncryptedRCSMemberCredentialError.ErrorType and conformance MLS.EncryptedRCSMemberCredentialError.ErrorType();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v8 = v10[15];
    v10[13] = 1;
    KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    (*(v4 + 8))(v7, v3);
  }

  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v8;
}

unint64_t lazy protocol witness table accessor for type MLS.EncryptedRCSMemberCredentialError and conformance MLS.EncryptedRCSMemberCredentialError()
{
  result = lazy protocol witness table cache variable for type MLS.EncryptedRCSMemberCredentialError and conformance MLS.EncryptedRCSMemberCredentialError;
  if (!lazy protocol witness table cache variable for type MLS.EncryptedRCSMemberCredentialError and conformance MLS.EncryptedRCSMemberCredentialError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.EncryptedRCSMemberCredentialError and conformance MLS.EncryptedRCSMemberCredentialError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.EncryptedRCSMemberCredentialError and conformance MLS.EncryptedRCSMemberCredentialError;
  if (!lazy protocol witness table cache variable for type MLS.EncryptedRCSMemberCredentialError and conformance MLS.EncryptedRCSMemberCredentialError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.EncryptedRCSMemberCredentialError and conformance MLS.EncryptedRCSMemberCredentialError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.EncryptedRCSMemberCredentialError and conformance MLS.EncryptedRCSMemberCredentialError;
  if (!lazy protocol witness table cache variable for type MLS.EncryptedRCSMemberCredentialError and conformance MLS.EncryptedRCSMemberCredentialError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.EncryptedRCSMemberCredentialError and conformance MLS.EncryptedRCSMemberCredentialError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.EncryptedRCSMemberCredentialError and conformance MLS.EncryptedRCSMemberCredentialError;
  if (!lazy protocol witness table cache variable for type MLS.EncryptedRCSMemberCredentialError and conformance MLS.EncryptedRCSMemberCredentialError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.EncryptedRCSMemberCredentialError and conformance MLS.EncryptedRCSMemberCredentialError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.EncryptedRCSMemberCredentialError and conformance MLS.EncryptedRCSMemberCredentialError;
  if (!lazy protocol witness table cache variable for type MLS.EncryptedRCSMemberCredentialError and conformance MLS.EncryptedRCSMemberCredentialError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.EncryptedRCSMemberCredentialError and conformance MLS.EncryptedRCSMemberCredentialError);
  }

  return result;
}

unint64_t instantiation function for generic protocol witness table for MLS.EncryptedRCSMemberCredentialError(void *a1)
{
  a1[1] = lazy protocol witness table accessor for type MLS.EncryptedRCSMemberCredentialError and conformance MLS.EncryptedRCSMemberCredentialError();
  a1[2] = lazy protocol witness table accessor for type MLS.EncryptedRCSMemberCredentialError and conformance MLS.EncryptedRCSMemberCredentialError();
  a1[3] = lazy protocol witness table accessor for type MLS.EncryptedRCSMemberCredentialError and conformance MLS.EncryptedRCSMemberCredentialError();
  result = lazy protocol witness table accessor for type MLS.EncryptedRCSMemberCredentialError and conformance MLS.EncryptedRCSMemberCredentialError();
  a1[4] = result;
  return result;
}

uint64_t _s8SwiftMLS0B0O8IdentityO07SigningC0VAGSHAAWlTm_0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t MLS.KeyUpdateOperation.__allocating_init(group:causedByOutgoingMessage:context:policy:featureFlagsStore:persister:clientIdentifier:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, __int128 *a5, uint64_t *a6, uint64_t a7, uint64_t a8, uint64_t *a9)
{
  v18 = *(v9 + 48);
  v19 = *(v9 + 52);
  v20 = swift_allocObject();
  MLS.KeyUpdateOperation.init(group:causedByOutgoingMessage:context:policy:featureFlagsStore:persister:clientIdentifier:)(a1, a2, a3, a4, a5, a6, a7, a8, a9);
  return v20;
}

uint64_t MLS.KeyUpdateOperation.group.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t MLS.KeyUpdateOperation.persister.getter()
{
  v1 = (v0 + *(*v0 + 168));
  v2 = *v1;
  v3 = v1[1];
  return swift_unknownObjectRetain();
}

uint64_t MLS.KeyUpdateOperation.clientIdentifier.getter@<X0>(void *a1@<X8>)
{
  v2 = (v1 + *(*v1 + 176));
  v3 = v2[1];
  *a1 = *v2;
  a1[1] = v3;
}

uint64_t MLS.KeyUpdateOperation.logger.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(*v1 + 184);
  v4 = type metadata accessor for Logger();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t *MLS.KeyUpdateOperation.init(group:causedByOutgoingMessage:context:policy:featureFlagsStore:persister:clientIdentifier:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, __int128 *a5, uint64_t *a6, uint64_t a7, uint64_t a8, uint64_t *a9)
{
  v15 = *v9;
  v16 = *a6;
  v18 = *a9;
  v17 = a9[1];
  v19 = v9 + *(*v9 + 184);
  Logger.init(subsystem:category:)();
  v9[2] = a1;
  v9[3] = a2;
  *(v9 + 32) = a3;
  (*(*(*(v15 + 88) - 8) + 32))(v9 + *(*v9 + 144), a4);
  outlined init with take of MLS.KeyUpdatePolicy(a5, v9 + *(*v9 + 152));
  *(v9 + *(*v9 + 160)) = v16;
  v20 = (v9 + *(*v9 + 168));
  *v20 = a7;
  v20[1] = a8;
  v21 = (v9 + *(*v9 + 176));
  *v21 = v18;
  v21[1] = v17;
  return v9;
}

uint64_t MLS.KeyUpdateOperation.isDisabled.getter()
{
  v1 = v0;
  v2 = *v0;
  v3 = *(v0 + *(*v0 + 160));
  if (!*(v3 + 16) || (v4 = specialized __RawDictionaryStorage.find<A>(_:)(0), (v5 & 1) == 0))
  {
    v17[3] = &type metadata for SMAFeatureFlagsKey;
    v17[4] = lazy protocol witness table accessor for type SMAFeatureFlagsKey and conformance SMAFeatureFlagsKey();
    LOBYTE(v17[0]) = 0;

    v16 = isFeatureEnabled(_:)();
    __swift_destroy_boxed_opaque_existential_1Tm(v17);

    if ((v16 & 1) == 0)
    {
      goto LABEL_4;
    }

    return 0;
  }

  if (*(*(v3 + 56) + v4))
  {
    return 0;
  }

LABEL_4:
  v6 = *(*v1 + 184);

  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v17[0] = v10;
    *v9 = 136315138;
    v11 = *(*v1 + 144);
    v12 = (*(*(v2 + 112) + 16))(*(v2 + 88));
    v14 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v12, v13, v17);

    *(v9 + 4) = v14;
    _os_log_impl(&dword_264F1F000, v7, v8, "KeyUpdateOperation key roll check disabled { identifier: %s }", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v10);
    MEMORY[0x266755550](v10, -1, -1);
    MEMORY[0x266755550](v9, -1, -1);
  }

  return 1;
}

uint64_t MLS.KeyUpdateOperation.membersRequiringKeyPackages(swiftMLSGroup:)()
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 8);
  v2 = MEMORY[0x277D84F90];

  return v1(v2);
}

uint64_t MLS.KeyUpdateOperation.perform(on:metricCollector:keyPackageResult:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4[101] = v3;
  v4[100] = a2;
  v4[99] = a1;
  v6 = *v3;
  v4[102] = *v3;
  v7 = type metadata accessor for UUID();
  v4[103] = v7;
  v8 = *(v7 - 8);
  v4[104] = v8;
  v9 = *(v8 + 64) + 15;
  v4[105] = swift_task_alloc();
  v10 = type metadata accessor for MetricCollector.Event();
  v4[106] = v10;
  v11 = *(*(v10 - 8) + 64) + 15;
  v4[107] = swift_task_alloc();
  v4[108] = swift_task_alloc();
  v12 = *(v6 + 104);
  v4[109] = v12;
  v13 = *(v12 + 8);
  v4[110] = v13;
  v4[111] = *(v13 + 8);
  v14 = *(v6 + 80);
  v4[112] = v14;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4[113] = AssociatedTypeWitness;
  v16 = *(*(AssociatedTypeWitness - 8) + 64) + 15;
  v4[114] = swift_task_alloc();
  v17 = *(v14 - 8);
  v4[115] = v17;
  v18 = *(v17 + 64) + 15;
  v4[116] = swift_task_alloc();
  v4[117] = swift_task_alloc();
  v4[118] = swift_task_alloc();
  v4[119] = swift_task_alloc();
  v4[120] = swift_task_alloc();
  v4[121] = swift_task_alloc();
  v4[122] = swift_task_alloc();
  v4[123] = swift_task_alloc();
  v4[124] = swift_task_alloc();
  v4[125] = swift_task_alloc();
  v4[126] = swift_task_alloc();
  v4[127] = swift_task_alloc();
  v4[128] = *a3;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v19 = static MLSActor.shared;
  v4[129] = static MLSActor.shared;

  return MEMORY[0x2822009F8](MLS.KeyUpdateOperation.perform(on:metricCollector:keyPackageResult:), v19, 0);
}

uint64_t MLS.KeyUpdateOperation.perform(on:metricCollector:keyPackageResult:)()
{
  v1 = v0[114];
  v2 = v0[113];
  v3 = v0[112];
  v20 = v0[111];
  v21 = v0[127];
  v19 = v0[110];
  v4 = v0[102];
  v5 = v0[101];
  v0[96] = v0[128];
  v0[130] = *(*v5 + 144);
  v6 = *(v4 + 112);
  v0[131] = v6;
  v7 = *(v6 + 16);
  v8 = *(v4 + 88);
  v0[132] = v8;

  v9 = v7(v8, v6);
  v11 = v10;
  v0[133] = v9;
  v0[134] = v10;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  (*(AssociatedConformanceWitness + 16))(v2, AssociatedConformanceWitness);
  VersatileError.init(type:)(v1, v3, v20);
  v13 = swift_allocObject();
  v0[135] = v13;
  v13[2] = v5;
  v13[3] = v9;
  v13[4] = v11;

  v14 = swift_task_alloc();
  v0[136] = v14;
  type metadata accessor for MLS.KeyUpdateTracker();
  *v14 = v0;
  v14[1] = MLS.KeyUpdateOperation.perform(on:metricCollector:keyPackageResult:);
  v15 = v0[127];
  v16 = v0[112];
  v17 = v0[101];
  v23 = v0[111];
  v24 = v0[126];

  return _s15SecureMessaging12asyncRethrow_2as3logq_q_yYaYbKXK_xySSYbcSgtYaxYKAA14VersatileErrorRzr0_lF((v0 + 97), &async function pointer to partial apply for implicit closure #1 in MLS.KeyUpdateOperation.perform(on:metricCollector:keyPackageResult:), v17, v15, partial apply for closure #1 in MLS.KeyUpdateOperation.perform(on:metricCollector:keyPackageResult:), v13, v16);
}

{
  v2 = *v1;
  v3 = *(*v1 + 1088);
  v21 = *v1;

  if (v0)
  {
    v4 = v2[135];
    v5 = v2[134];
    v6 = v2[129];
    v7 = v2[127];
    v8 = v2[115];
    v9 = v2[112];
    v10 = *(v8 + 8);
    v2[165] = v10;
    v2[166] = (v8 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v10(v7, v9);

    v11 = v2[96];

    v12 = MLS.KeyUpdateOperation.perform(on:metricCollector:keyPackageResult:);
    v13 = v6;
  }

  else
  {
    v14 = v2[135];
    v15 = v2[129];
    v16 = v2[127];
    v17 = v2[115];
    v18 = v2[112];
    v19 = *(v17 + 8);
    v2[137] = v19;
    v2[138] = (v17 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v19(v16, v18);

    v12 = MLS.KeyUpdateOperation.perform(on:metricCollector:keyPackageResult:);
    v13 = v15;
  }

  return MEMORY[0x2822009F8](v12, v13, 0);
}

{
  v1 = v0[134];
  v17 = v0[125];
  v18 = v0[133];
  v2 = v0[114];
  v3 = v0[113];
  v4 = v0[112];
  v5 = v0[111];
  v6 = v0[109];
  v7 = v0[101];
  v8 = v0[97];
  v0[139] = v8;
  v9 = swift_task_alloc();
  v0[140] = v9;
  *(v9 + 16) = v8;
  *(v9 + 24) = v7;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v0[141] = AssociatedConformanceWitness;
  v11 = *(AssociatedConformanceWitness + 96);
  v0[142] = v11;
  v0[143] = (AssociatedConformanceWitness + 96) & 0xFFFFFFFFFFFFLL | 0xCA1B000000000000;
  v11(v3, AssociatedConformanceWitness);
  VersatileError.init(type:)(v2, v4, v5);
  v12 = swift_allocObject();
  v0[144] = v12;
  v12[2] = v7;
  v12[3] = v18;
  v12[4] = v1;

  v13 = swift_task_alloc();
  v0[145] = v13;
  *v13 = v0;
  v13[1] = MLS.KeyUpdateOperation.perform(on:metricCollector:keyPackageResult:);
  v14 = v0[125];
  v15 = v0[112];
  v20 = v0[111];
  v21 = v0[124];

  return _s15SecureMessaging12asyncRethrow_2as3logq_q_yYaYbKXK_xySSYbcSgtYaxYKAA14VersatileErrorRzr0_lF(v0 + 193, &async function pointer to partial apply for implicit closure #2 in MLS.KeyUpdateOperation.perform(on:metricCollector:keyPackageResult:), v9, v14, partial apply for closure #2 in MLS.KeyUpdateOperation.perform(on:metricCollector:keyPackageResult:), v12, v15);
}

{
  v2 = *v1;
  v3 = *(*v1 + 1160);
  v14 = *v1;

  if (v0)
  {
    v4 = *(v2 + 1152);
    v5 = *(v2 + 1104);
    v6 = *(v2 + 1072);
    v7 = *(v2 + 1032);
    (*(v2 + 1096))(*(v2 + 1000), *(v2 + 896));

    v8 = *(v2 + 768);

    v9 = MLS.KeyUpdateOperation.perform(on:metricCollector:keyPackageResult:);
  }

  else
  {
    v10 = *(v2 + 1152);
    v11 = *(v2 + 1120);
    v12 = *(v2 + 1104);
    v7 = *(v2 + 1032);
    (*(v2 + 1096))(*(v2 + 1000), *(v2 + 896));

    v9 = MLS.KeyUpdateOperation.perform(on:metricCollector:keyPackageResult:);
  }

  return MEMORY[0x2822009F8](v9, v7, 0);
}

{
  v48 = v0;
  if (*(v0 + 193) == 1)
  {
    v1 = *(v0 + 864);
    v2 = *(v0 + 856);
    v3 = *(v0 + 848);
    v4 = *(v0 + 800);
    Date.init()();
    v5 = *(v3 + 20);
    v6 = type metadata accessor for Date();
    (*(*(v6 - 8) + 56))(v1 + v5, 1, 1, v6);
    outlined init with take of MetricCollector.Event(v1, v2);
    v7 = *(v0 + 768);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v47 = v7;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v2, 0x534C4D7466697753, 0xEE0074696D6D6F43, isUniquelyReferenced_nonNull_native);
    *(v0 + 1168) = v7;

    *(v0 + 768) = v7;
    v9 = v4[3];
    v10 = v4[4];
    __swift_project_boxed_opaque_existential_1(v4, v9);
    v11 = *(v10 + 208);
    v45 = (v11 + *v11);
    v12 = v11[1];
    v13 = swift_task_alloc();
    *(v0 + 1176) = v13;
    *v13 = v0;
    v13[1] = MLS.KeyUpdateOperation.perform(on:metricCollector:keyPackageResult:);

    return v45(v0 + 664, v9, v10);
  }

  else
  {
    v15 = *(v0 + 1072);
    v16 = *(**(v0 + 808) + 184);

    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.default.getter();

    v19 = os_log_type_enabled(v17, v18);
    v20 = *(v0 + 1112);
    v21 = *(v0 + 1072);
    if (v19)
    {
      v22 = *(v0 + 1064);
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v47 = v24;
      *v23 = 136315138;
      v25 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v22, v21, &v47);

      *(v23 + 4) = v25;
      _os_log_impl(&dword_264F1F000, v17, v18, "KeyUpdateOperation determined it should not roll { identifier: %s }", v23, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v24);
      MEMORY[0x266755550](v24, -1, -1);
      MEMORY[0x266755550](v23, -1, -1);
    }

    else
    {
      v26 = *(v0 + 1112);
    }

    v27 = *(v0 + 800);
    v28 = *(v0 + 792);
    *(v28 + 64) = 0u;
    *(v28 + 80) = 0u;
    *(v28 + 32) = 0u;
    *(v28 + 48) = 0u;
    *v28 = 0u;
    *(v28 + 16) = 0u;
    *(v28 + 96) = 3;
    outlined init with copy of ServerBag.MLS(v27, v28 + 104);
    *(v28 + 408) = 1;
    *(v28 + 416) = *(v0 + 768);
    *(v28 + 424) = 0;
    *(v28 + 432) = 0;
    v29 = *(v0 + 1016);
    v30 = *(v0 + 1008);
    v31 = *(v0 + 1000);
    v32 = *(v0 + 992);
    v33 = *(v0 + 984);
    v34 = *(v0 + 976);
    v35 = *(v0 + 968);
    v36 = *(v0 + 960);
    v37 = *(v0 + 952);
    v38 = *(v0 + 944);
    v40 = *(v0 + 936);
    v41 = *(v0 + 928);
    v42 = *(v0 + 912);
    v43 = *(v0 + 864);
    v44 = *(v0 + 856);
    v46 = *(v0 + 840);

    v39 = *(v0 + 8);

    return v39();
  }
}

{
  v2 = *v1;
  v3 = *(*v1 + 1176);
  v10 = *v1;
  *(*v1 + 1184) = v0;

  if (v0)
  {
    v4 = v2[146];
    v5 = v2[134];
    v6 = v2[129];

    v7 = MLS.KeyUpdateOperation.perform(on:metricCollector:keyPackageResult:);
    v8 = v6;
  }

  else
  {
    v8 = v2[129];
    v7 = MLS.KeyUpdateOperation.perform(on:metricCollector:keyPackageResult:);
  }

  return MEMORY[0x2822009F8](v7, v8, 0);
}

{
  v108 = v0;
  v1 = *(v0 + 1072);
  v2 = *(v0 + 808);
  v3._countAndFlagsBits = 0x534C4D7466697753;
  v3._object = 0xEE0074696D6D6F43;
  MetricCollector.end(label:)(v3);
  v4 = *(*v2 + 184);
  outlined init with copy of ServerBag.MLS(v0 + 664, v0 + 704);

  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = *(v0 + 1072);
    v8 = *(v0 + 1064);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *&v104 = v10;
    *v9 = 136315394;
    *(v9 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v8, v7, &v104);
    *(v9 + 12) = 2080;
    v11 = *(v0 + 728);
    __swift_project_boxed_opaque_existential_1((v0 + 704), v11);
    v12 = *(v11 - 8);
    v13 = *(v12 + 64) + 15;
    swift_task_alloc();
    (*(v12 + 16))();
    v14 = String.init<A>(describing:)();
    v16 = v15;

    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 704));
    v17 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v14, v16, &v104);

    *(v9 + 14) = v17;
    _os_log_impl(&dword_264F1F000, v5, v6, "KeyUpdateOperation generated commit for key roll { identifier: %s, commitOutput: %s }", v9, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x266755550](v10, -1, -1);
    MEMORY[0x266755550](v9, -1, -1);
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 704));
  }

  v18 = *(v0 + 1184);
  v19 = *(v0 + 1056);
  v20 = *(v0 + 1048);
  v21 = *(v0 + 896);
  v22 = *(v0 + 872);
  v23 = *(v0 + 816);
  v24 = *(v0 + 808);
  v25 = *(v0 + 688);
  v26 = *(v0 + 696);
  __swift_project_boxed_opaque_existential_1((v0 + 664), v25);
  MLS.SwiftMLSCommitOutputProtocol.outgoingCommit.getter(v25, v26, &v104);
  v27 = *(&v104 + 1);
  v96 = v104;
  *(v0 + 1192) = *(&v104 + 1);
  v102 = v105;
  *(v0 + 1200) = v105;
  *(v0 + 784) = v24;
  v28 = *(v23 + 96);
  v29 = *(v23 + 120);
  *(v0 + 616) = v21;
  *(v0 + 624) = v19;
  *(v0 + 632) = v28;
  *(v0 + 640) = v22;
  *(v0 + 648) = v20;
  *(v0 + 656) = v29;
  updated = type metadata accessor for MLS.KeyUpdateOperation();
  WitnessTable = swift_getWitnessTable();
  MLS.GroupOperation.context(commitOutput:)((v0 + 664), updated, WitnessTable, &v104);
  v32 = v104;
  *(v0 + 1216) = v104;
  v33 = v105;
  *(v0 + 1232) = v105;
  v34 = v106;
  v35 = v107;
  *(v0 + 1248) = v106;
  *(v0 + 1256) = v35;
  if (v18)
  {
    v36 = *(v0 + 1112);
    v37 = *(v0 + 1072);
    v38 = *(v0 + 768);

    outlined consume of Data._Representation(v102, *(&v102 + 1));

    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 664));
    v39 = *(v0 + 1016);
    v40 = *(v0 + 1008);
    v41 = *(v0 + 1000);
    v42 = *(v0 + 992);
    v43 = *(v0 + 984);
    v44 = *(v0 + 976);
    v45 = *(v0 + 968);
    v46 = *(v0 + 960);
    v47 = *(v0 + 952);
    v48 = *(v0 + 944);
    v90 = *(v0 + 936);
    v92 = *(v0 + 928);
    v94 = *(v0 + 912);
    v97 = *(v0 + 864);
    v99 = *(v0 + 856);
    v100 = *(v0 + 840);

    v49 = *(v0 + 8);

    return v49();
  }

  else
  {
    v85 = v34;
    v51 = *(v0 + 1072);
    v52 = *(v0 + 1064);
    v87 = *(v0 + 1048);
    v91 = *(v0 + 1040);
    v93 = *(v0 + 1056);
    v53 = *(v0 + 840);
    v54 = *(v0 + 832);
    v84 = *(v0 + 824);
    v89 = *(v0 + 808);
    v95 = v32;

    UUID.init()();
    v88 = UUID.uuidString.getter();
    v56 = v55;
    v86 = v55;
    (*(v54 + 8))(v53, v84);
    v57 = *(v0 + 768);
    *(v0 + 200) = v52;
    *(v0 + 208) = v51;
    *(v0 + 216) = v88;
    *(v0 + 224) = v56;
    *(v0 + 232) = xmmword_2651B5F50;
    *(v0 + 248) = v57;
    *(v0 + 256) = v96;
    *(v0 + 264) = v27;
    *(v0 + 272) = v102;
    *(v0 + 288) = v95;
    *(v0 + 304) = v33;
    *(v0 + 320) = v85;
    *(v0 + 328) = v35;
    v58 = *(v0 + 216);
    *(v0 + 16) = *(v0 + 200);
    *(v0 + 32) = v58;
    v59 = *(v0 + 312);
    *(v0 + 112) = *(v0 + 296);
    *(v0 + 128) = v59;
    *(v0 + 144) = *(v0 + 328);
    v60 = *(v0 + 248);
    *(v0 + 48) = *(v0 + 232);
    *(v0 + 64) = v60;
    v61 = *(v0 + 280);
    *(v0 + 80) = *(v0 + 264);
    *(v0 + 96) = v61;
    _s15SecureMessaging3MLSO17OutgoingEventTypeOy_AC9AllMemberO10Foundation4DataVGWOi3_(v0 + 16);
    v98 = *(v87 + 8);

    outlined copy of Data._Representation(v102, *(&v102 + 1));
    outlined copy of Data._Representation(v95, *(&v95 + 1));
    outlined copy of Data?(v33, *(&v33 + 1));
    outlined copy of Data._Representation(v85, v35);
    outlined init with copy of MLS.OutgoingKeyUpdate<Data>(v0 + 200, v0 + 336);

    v62 = v98(v93, v87);
    *(v0 + 472) = v88;
    *(v0 + 480) = v86;
    *(v0 + 488) = 0;
    *(v0 + 496) = 0;
    *(v0 + 504) = 4;
    *(v0 + 512) = v52;
    *(v0 + 520) = v51;
    *(v0 + 528) = v62;
    *(v0 + 536) = v63;

    v64 = Logger.logObject.getter();
    v65 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v64, v65))
    {
      v66 = *(v0 + 1072);
      v67 = *(v0 + 1064);
      v68 = swift_slowAlloc();
      v69 = swift_slowAlloc();
      *&v104 = v69;
      *v68 = 136315138;
      *(v68 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v67, v66, &v104);
      _os_log_impl(&dword_264F1F000, v64, v65, "KeyUpdateOperation returning operation result { identifier: %s }", v68, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v69);
      MEMORY[0x266755550](v69, -1, -1);
      MEMORY[0x266755550](v68, -1, -1);
    }

    v70 = *(v0 + 1128);
    v101 = *(v0 + 1064);
    v103 = *(v0 + 1072);
    v71 = *(v0 + 984);
    v72 = *(v0 + 912);
    v73 = *(v0 + 904);
    v74 = *(v0 + 896);
    v75 = *(v0 + 888);
    v76 = *(v0 + 808);
    v77 = *(v0 + 800);
    v78 = swift_task_alloc();
    *(v0 + 1264) = v78;
    *(v78 + 16) = v77;
    (*(v70 + 56))(v73, v70);
    VersatileError.init(type:)(v72, v74, v75);
    v79 = swift_allocObject();
    *(v0 + 1272) = v79;
    v79[2] = v76;
    v79[3] = v101;
    v79[4] = v103;

    v80 = swift_task_alloc();
    *(v0 + 1280) = v80;
    *v80 = v0;
    v80[1] = MLS.KeyUpdateOperation.perform(on:metricCollector:keyPackageResult:);
    v81 = *(v0 + 984);
    v82 = *(v0 + 976);
    v83 = *(v0 + 896);
    v110 = *(v0 + 888);
    v111 = v82;

    return _s15SecureMessaging12asyncRethrow_2as3logq_q_yYaYbKXK_xySSYbcSgtYaxYKAA14VersatileErrorRzr0_lF(v0 + 744, &async function pointer to partial apply for implicit closure #7 in MLS.KeyUpdateOperation.perform(on:metricCollector:keyPackageResult:), v78, v81, partial apply for closure #3 in MLS.KeyUpdateOperation.perform(on:metricCollector:keyPackageResult:), v79, v83);
  }
}

{
  v2 = *v1;
  v3 = *(*v1 + 1280);
  v14 = *v1;

  if (v0)
  {
    v4 = *(v2 + 1272);
    v5 = *(v2 + 1104);
    v6 = *(v2 + 1072);
    v7 = *(v2 + 1032);
    (*(v2 + 1096))(*(v2 + 984), *(v2 + 896));

    v8 = *(v2 + 768);

    v9 = MLS.KeyUpdateOperation.perform(on:metricCollector:keyPackageResult:);
  }

  else
  {
    v10 = *(v2 + 1272);
    v11 = *(v2 + 1264);
    v12 = *(v2 + 1104);
    v7 = *(v2 + 1032);
    (*(v2 + 1096))(*(v2 + 984), *(v2 + 896));

    v9 = MLS.KeyUpdateOperation.perform(on:metricCollector:keyPackageResult:);
  }

  return MEMORY[0x2822009F8](v9, v7, 0);
}

{
  v1 = *(v0 + 1144);
  v2 = *(v0 + 1136);
  v3 = *(v0 + 1128);
  v4 = *(v0 + 1072);
  v5 = *(v0 + 1064);
  v6 = *(v0 + 968);
  v7 = *(v0 + 912);
  v8 = *(v0 + 904);
  v9 = *(v0 + 896);
  v10 = *(v0 + 888);
  v11 = *(v0 + 808);
  *(v0 + 1288) = *(v0 + 744);
  *(v0 + 196) = *(v0 + 752);
  *(v0 + 1296) = *(v0 + 760);
  v2();
  VersatileError.init(type:)(v7, v9, v10);
  v12 = swift_allocObject();
  *(v0 + 1304) = v12;
  v12[2] = v11;
  v12[3] = v5;
  v12[4] = v4;

  v13 = swift_task_alloc();
  *(v0 + 1312) = v13;
  *v13 = v0;
  v13[1] = MLS.KeyUpdateOperation.perform(on:metricCollector:keyPackageResult:);
  v14 = *(v0 + 1112);
  v15 = *(v0 + 968);
  v16 = *(v0 + 896);
  v19 = *(v0 + 888);
  v20 = *(v0 + 960);

  return _s15SecureMessaging12asyncRethrow_2as3logq_q_yYaYbKXK_xySSYbcSgtYaxYKAA14VersatileErrorRzr0_lF(v13, &async function pointer to partial apply for implicit closure #8 in MLS.KeyUpdateOperation.perform(on:metricCollector:keyPackageResult:), v14, v15, partial apply for closure #4 in MLS.KeyUpdateOperation.perform(on:metricCollector:keyPackageResult:), v12, v16);
}

{
  v2 = *v1;
  v3 = *(*v1 + 1312);
  v12 = *v1;

  if (v0)
  {
    v4 = *(v2 + 1304);
    v5 = *(v2 + 1104);
    v6 = *(v2 + 1032);
    (*(v2 + 1096))(*(v2 + 968), *(v2 + 896));

    v7 = *(v2 + 768);

    v8 = MLS.KeyUpdateOperation.perform(on:metricCollector:keyPackageResult:);
  }

  else
  {
    v9 = *(v2 + 1304);
    v10 = *(v2 + 1104);
    v6 = *(v2 + 1032);
    (*(v2 + 1096))(*(v2 + 968), *(v2 + 896));

    v8 = MLS.KeyUpdateOperation.perform(on:metricCollector:keyPackageResult:);
  }

  return MEMORY[0x2822009F8](v8, v6, 0);
}

{
  v43 = *(v0 + 196);
  v1 = *(v0 + 1256);
  v2 = *(v0 + 1248);
  v3 = *(v0 + 1240);
  v4 = *(v0 + 1232);
  v5 = *(v0 + 1224);
  v6 = *(v0 + 1216);
  v39 = *(v0 + 1208);
  v41 = *(v0 + 1288);
  v37 = *(v0 + 1200);
  v7 = *(v0 + 1192);
  v8 = *(v0 + 1112);
  v45 = *(v0 + 1296);
  v47 = *(v0 + 800);
  v9 = *(v0 + 792);

  outlined destroy of MLS.OutgoingKeyUpdate<Data>(v0 + 200);
  outlined consume of Data._Representation(v2, v1);
  outlined consume of Data?(v4, v3);
  outlined consume of Data._Representation(v6, v5);

  outlined consume of Data._Representation(v37, v39);
  v10 = *(v0 + 16);
  v11 = *(v0 + 32);
  v12 = *(v0 + 64);
  *(v9 + 32) = *(v0 + 48);
  *(v9 + 48) = v12;
  *v9 = v10;
  *(v9 + 16) = v11;
  v13 = *(v0 + 80);
  v14 = *(v0 + 96);
  v15 = *(v0 + 128);
  *(v9 + 96) = *(v0 + 112);
  *(v9 + 112) = v15;
  *(v9 + 64) = v13;
  *(v9 + 80) = v14;
  v16 = *(v0 + 144);
  v17 = *(v0 + 160);
  v18 = *(v0 + 176);
  *(v9 + 176) = *(v0 + 192);
  *(v9 + 144) = v17;
  *(v9 + 160) = v18;
  *(v9 + 128) = v16;
  *(v9 + 184) = *(v0 + 472);
  v19 = *(v0 + 488);
  v20 = *(v0 + 504);
  v21 = *(v0 + 520);
  *(v9 + 248) = *(v0 + 536);
  *(v9 + 232) = v21;
  *(v9 + 216) = v20;
  *(v9 + 200) = v19;
  *(v9 + 256) = 0;
  *(v9 + 264) = v41;
  *(v9 + 272) = v43;
  *(v9 + 280) = v45;
  *(v9 + 288) = *(v0 + 472);
  v22 = *(v0 + 488);
  v23 = *(v0 + 504);
  v24 = *(v0 + 520);
  *(v9 + 352) = *(v0 + 536);
  *(v9 + 320) = v23;
  *(v9 + 336) = v24;
  *(v9 + 304) = v22;
  *(v9 + 360) = 0;
  outlined init with copy of ServerBag.MLS(v47, v9 + 368);
  *(v9 + 408) = 0;
  *(v9 + 416) = *(v0 + 768);
  *(v9 + 424) = 0;
  *(v9 + 432) = 0;
  outlined init with copy of MLS.OutgoingEventState(v0 + 472, v0 + 544);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 664));
  v25 = *(v0 + 1016);
  v26 = *(v0 + 1008);
  v27 = *(v0 + 1000);
  v28 = *(v0 + 992);
  v29 = *(v0 + 984);
  v30 = *(v0 + 976);
  v31 = *(v0 + 968);
  v32 = *(v0 + 960);
  v33 = *(v0 + 952);
  v34 = *(v0 + 944);
  v38 = *(v0 + 936);
  v40 = *(v0 + 928);
  v42 = *(v0 + 912);
  v44 = *(v0 + 864);
  v46 = *(v0 + 856);
  v48 = *(v0 + 840);

  v35 = *(v0 + 8);

  return v35();
}

{
  v1 = *(v0 + 888);
  v2 = *(*(v0 + 920) + 32);
  v2(*(v0 + 952), *(v0 + 1008), *(v0 + 896));
  v3 = *(*(v1 + 8) + 8);
  if (_getErrorEmbeddedNSError<A>(_:)())
  {
    v4 = *(v0 + 1328);
    (*(v0 + 1320))(*(v0 + 952), *(v0 + 896));
  }

  else
  {
    v5 = *(v0 + 952);
    v6 = *(v0 + 896);
    swift_allocError();
    v2(v7, v5, v6);
  }

  v8 = *(v0 + 1016);
  v9 = *(v0 + 1008);
  v10 = *(v0 + 1000);
  v11 = *(v0 + 992);
  v12 = *(v0 + 984);
  v13 = *(v0 + 976);
  v14 = *(v0 + 968);
  v15 = *(v0 + 960);
  v16 = *(v0 + 952);
  v17 = *(v0 + 944);
  v20 = *(v0 + 936);
  v21 = *(v0 + 928);
  v22 = *(v0 + 912);
  v23 = *(v0 + 864);
  v24 = *(v0 + 856);
  v25 = *(v0 + 840);

  v18 = *(v0 + 8);

  return v18();
}

{
  v1 = *(v0 + 888);
  v2 = *(*(v0 + 920) + 32);
  v2(*(v0 + 944), *(v0 + 992), *(v0 + 896));
  v3 = *(*(v1 + 8) + 8);
  if (_getErrorEmbeddedNSError<A>(_:)())
  {
    v4 = *(v0 + 1104);
    (*(v0 + 1096))(*(v0 + 944), *(v0 + 896));
  }

  else
  {
    v5 = *(v0 + 944);
    v6 = *(v0 + 896);
    swift_allocError();
    v2(v7, v5, v6);
  }

  v8 = *(v0 + 1120);
  v9 = *(v0 + 1112);

  v10 = *(v0 + 1016);
  v11 = *(v0 + 1008);
  v12 = *(v0 + 1000);
  v13 = *(v0 + 992);
  v14 = *(v0 + 984);
  v15 = *(v0 + 976);
  v16 = *(v0 + 968);
  v17 = *(v0 + 960);
  v18 = *(v0 + 952);
  v19 = *(v0 + 944);
  v22 = *(v0 + 936);
  v23 = *(v0 + 928);
  v24 = *(v0 + 912);
  v25 = *(v0 + 864);
  v26 = *(v0 + 856);
  v27 = *(v0 + 840);

  v20 = *(v0 + 8);

  return v20();
}

{
  v1 = v0[139];

  v20 = v0[148];
  v2 = v0[127];
  v3 = v0[126];
  v4 = v0[125];
  v5 = v0[124];
  v6 = v0[123];
  v7 = v0[122];
  v8 = v0[121];
  v9 = v0[120];
  v10 = v0[119];
  v11 = v0[118];
  v14 = v0[117];
  v15 = v0[116];
  v16 = v0[114];
  v17 = v0[108];
  v18 = v0[107];
  v19 = v0[105];

  v12 = v0[1];

  return v12();
}

{
  v1 = *(v0 + 888);
  v2 = *(*(v0 + 920) + 32);
  v2(*(v0 + 936), *(v0 + 976), *(v0 + 896));
  v3 = *(*(v1 + 8) + 8);
  if (_getErrorEmbeddedNSError<A>(_:)())
  {
    v4 = *(v0 + 1104);
    (*(v0 + 1096))(*(v0 + 936), *(v0 + 896));
  }

  else
  {
    v5 = *(v0 + 936);
    v6 = *(v0 + 896);
    swift_allocError();
    v2(v7, v5, v6);
  }

  v35 = *(v0 + 1264);
  v8 = *(v0 + 1256);
  v9 = *(v0 + 1248);
  v10 = *(v0 + 1240);
  v11 = *(v0 + 1232);
  v12 = *(v0 + 1224);
  v13 = *(v0 + 1216);
  v14 = *(v0 + 1208);
  v15 = *(v0 + 1200);
  v16 = *(v0 + 1192);
  v17 = *(v0 + 1112);

  outlined consume of Data._Representation(v15, v14);
  outlined consume of Data._Representation(v13, v12);
  outlined consume of Data?(v11, v10);
  outlined consume of Data._Representation(v9, v8);
  outlined destroy of MLS.OutgoingKeyUpdate<Data>(v0 + 200);
  outlined destroy of MLS.OutgoingEventState(v0 + 472);
  outlined destroy of MLS.OutgoingKeyUpdate<Data>(v0 + 200);

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 664));
  v18 = *(v0 + 1016);
  v19 = *(v0 + 1008);
  v20 = *(v0 + 1000);
  v21 = *(v0 + 992);
  v22 = *(v0 + 984);
  v23 = *(v0 + 976);
  v24 = *(v0 + 968);
  v25 = *(v0 + 960);
  v26 = *(v0 + 952);
  v27 = *(v0 + 944);
  v30 = *(v0 + 936);
  v31 = *(v0 + 928);
  v32 = *(v0 + 912);
  v33 = *(v0 + 864);
  v34 = *(v0 + 856);
  v36 = *(v0 + 840);

  v28 = *(v0 + 8);

  return v28();
}

{
  v1 = *(v0 + 888);
  v2 = *(*(v0 + 920) + 32);
  v2(*(v0 + 928), *(v0 + 960), *(v0 + 896));
  v3 = *(*(v1 + 8) + 8);
  if (_getErrorEmbeddedNSError<A>(_:)())
  {
    v4 = *(v0 + 1104);
    (*(v0 + 1096))(*(v0 + 928), *(v0 + 896));
  }

  else
  {
    v5 = *(v0 + 928);
    v6 = *(v0 + 896);
    swift_allocError();
    v2(v7, v5, v6);
  }

  v8 = *(v0 + 1256);
  v9 = *(v0 + 1248);
  v10 = *(v0 + 1240);
  v11 = *(v0 + 1232);
  v12 = *(v0 + 1224);
  v13 = *(v0 + 1216);
  v14 = *(v0 + 1208);
  v15 = *(v0 + 1200);
  v16 = *(v0 + 1192);
  v17 = *(v0 + 1112);

  outlined consume of Data._Representation(v15, v14);
  outlined consume of Data._Representation(v13, v12);
  outlined consume of Data?(v11, v10);
  outlined consume of Data._Representation(v9, v8);
  outlined destroy of MLS.OutgoingKeyUpdate<Data>(v0 + 200);
  outlined destroy of MLS.OutgoingEventState(v0 + 472);
  outlined destroy of MLS.OutgoingKeyUpdate<Data>(v0 + 200);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 664));
  v18 = *(v0 + 1016);
  v19 = *(v0 + 1008);
  v20 = *(v0 + 1000);
  v21 = *(v0 + 992);
  v22 = *(v0 + 984);
  v23 = *(v0 + 976);
  v24 = *(v0 + 968);
  v25 = *(v0 + 960);
  v26 = *(v0 + 952);
  v27 = *(v0 + 944);
  v30 = *(v0 + 936);
  v31 = *(v0 + 928);
  v32 = *(v0 + 912);
  v33 = *(v0 + 864);
  v34 = *(v0 + 856);
  v35 = *(v0 + 840);

  v28 = *(v0 + 8);

  return v28();
}

uint64_t implicit closure #1 in MLS.KeyUpdateOperation.perform(on:metricCollector:keyPackageResult:)(uint64_t a1, uint64_t a2)
{
  v2[12] = a1;
  v2[13] = a2;
  v3 = type metadata accessor for Date();
  v2[14] = v3;
  v4 = *(v3 - 8);
  v2[15] = v4;
  v5 = *(v4 + 64) + 15;
  v2[16] = swift_task_alloc();

  return MEMORY[0x2822009F8](implicit closure #1 in MLS.KeyUpdateOperation.perform(on:metricCollector:keyPackageResult:), 0, 0);
}

uint64_t implicit closure #1 in MLS.KeyUpdateOperation.perform(on:metricCollector:keyPackageResult:)()
{
  v1 = v0[13];
  v0[17] = v1[2];
  v0[18] = v1[3];
  v2 = *v1;
  v3 = (v1 + *(*v1 + 176));
  v0[19] = *v3;
  v0[20] = v3[1];
  v4 = (v1 + *(v2 + 168));
  v0[21] = *v4;
  v0[22] = v4[1];
  outlined init with copy of ServerBag.MLS(v1 + *(v2 + 152), (v0 + 2));
  v0[23] = type metadata accessor for MLS.KeyUpdateTracker();
  v0[24] = swift_allocObject();
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v5 = static MLSActor.shared;
  v0[25] = static MLSActor.shared;

  return MEMORY[0x2822009F8](implicit closure #1 in MLS.KeyUpdateOperation.perform(on:metricCollector:keyPackageResult:), v5, 0);
}

{
  v1 = v0[24];
  v2 = v0[21];
  v16 = v0[22];
  v4 = v0[19];
  v3 = v0[20];
  v5 = v0[18];
  v1[6] = v0[17];
  v1[7] = v5;
  v1[4] = v4;
  v1[5] = v3;
  v1[2] = v2;
  v1[3] = v16;
  outlined init with copy of ServerBag.MLS((v0 + 2), (v1 + 11));
  ObjectType = swift_getObjectType();
  v0[10] = v4;
  v0[11] = v3;
  v7 = *(v16 + 144);

  swift_unknownObjectRetain();
  v15 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  v0[26] = v9;
  *v9 = v0;
  v9[1] = implicit closure #1 in MLS.KeyUpdateOperation.perform(on:metricCollector:keyPackageResult:);
  v11 = v0[21];
  v10 = v0[22];
  v12 = v0[17];
  v13 = v0[18];

  return (v15)(v0 + 7, v12, v13, v0 + 10, ObjectType, v10);
}

{
  v2 = *v1;
  v3 = *(*v1 + 208);
  v7 = *v1;
  *(*v1 + 216) = v0;

  v4 = *(v2 + 200);
  if (v0)
  {
    v5 = implicit closure #1 in MLS.KeyUpdateOperation.perform(on:metricCollector:keyPackageResult:);
  }

  else
  {
    v5 = implicit closure #1 in MLS.KeyUpdateOperation.perform(on:metricCollector:keyPackageResult:);
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

{
  LODWORD(v1) = *(v0 + 72);
  if (v1 == 2)
  {
    v2 = *(v0 + 120);
    v1 = *(v0 + 128);
    v3 = *(v0 + 112);
    Date.init()();
    Date.timeIntervalSince1970.getter();
    v5 = v4;
    (*(v2 + 8))(v1, v3);
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
    v6 = 0;
    LOBYTE(v1) = 1;
  }

  else
  {
    v5 = *(v0 + 64);
    v6 = *(v0 + 56);
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  }

  v7 = *(v0 + 192);
  *(v7 + 64) = v6;
  *(v7 + 72) = v5;
  *(v7 + 80) = v1 & 1;

  return MEMORY[0x2822009F8](implicit closure #1 in MLS.KeyUpdateOperation.perform(on:metricCollector:keyPackageResult:), 0, 0);
}

{
  v1 = v0[23];
  v2 = v0[24];
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
  v3 = v2[2];
  swift_unknownObjectRelease();
  v4 = v2[5];

  v5 = v2[7];

  __swift_destroy_boxed_opaque_existential_1Tm(v2 + 11);
  swift_deallocPartialClassInstance();

  return MEMORY[0x2822009F8](implicit closure #1 in MLS.KeyUpdateOperation.perform(on:metricCollector:keyPackageResult:), 0, 0);
}

{
  v1 = v0[16];

  v2 = v0[1];
  v3 = v0[27];

  return v2();
}

{
  v1 = *(v0 + 128);
  **(v0 + 96) = *(v0 + 192);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t implicit closure #2 in MLS.KeyUpdateOperation.perform(on:metricCollector:keyPackageResult:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return MEMORY[0x2822009F8](implicit closure #2 in MLS.KeyUpdateOperation.perform(on:metricCollector:keyPackageResult:), 0, 0);
}

uint64_t implicit closure #2 in MLS.KeyUpdateOperation.perform(on:metricCollector:keyPackageResult:)()
{
  v1 = *(*(v0 + 32) + 32);
  v2 = *(**(v0 + 24) + 152);
  v7 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v0 + 40) = v4;
  *v4 = v0;
  v4[1] = implicit closure #2 in MLS.KeyUpdateOperation.perform(on:metricCollector:keyPackageResult:);
  v5 = *(v0 + 24);

  return v7(v1);
}

{
  **(v0 + 16) = *(v0 + 48);
  return (*(v0 + 8))();
}

uint64_t implicit closure #2 in MLS.KeyUpdateOperation.perform(on:metricCollector:keyPackageResult:)(char a1)
{
  v4 = *v2;
  v5 = *(*v2 + 40);
  v6 = *v2;

  if (v1)
  {
    v7 = *(v6 + 8);

    return v7();
  }

  else
  {
    *(v4 + 48) = a1 & 1;

    return MEMORY[0x2822009F8](implicit closure #2 in MLS.KeyUpdateOperation.perform(on:metricCollector:keyPackageResult:), 0, 0);
  }
}

uint64_t implicit closure #8 in MLS.KeyUpdateOperation.perform(on:metricCollector:keyPackageResult:)(uint64_t a1, uint64_t a2)
{
  v3 = *(*a2 + 160);
  v7 = (v3 + *v3);
  v4 = v3[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v7();
}

void closure #1 in MLS.KeyUpdateOperation.perform(on:metricCollector:keyPackageResult:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, const char *a6)
{
  v11 = *(*a3 + 184);

  oslog = Logger.logObject.getter();
  v12 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(oslog, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v16 = v14;
    *v13 = 136315394;
    *(v13 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a4, a5, &v16);
    *(v13 + 12) = 2080;
    *(v13 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a1, a2, &v16);
    _os_log_impl(&dword_264F1F000, oslog, v12, a6, v13, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x266755550](v14, -1, -1);
    MEMORY[0x266755550](v13, -1, -1);
  }
}

char *MLS.KeyUpdateOperation.deinit()
{
  v1 = *v0;
  v2 = *(v0 + 3);

  (*(*(*(v1 + 88) - 8) + 8))(&v0[*(*v0 + 144)]);
  __swift_destroy_boxed_opaque_existential_1Tm(&v0[*(*v0 + 152)]);
  v3 = *&v0[*(*v0 + 160)];

  v4 = *&v0[*(*v0 + 168)];
  swift_unknownObjectRelease();
  v5 = *&v0[*(*v0 + 176) + 8];

  v6 = *(*v0 + 184);
  v7 = type metadata accessor for Logger();
  (*(*(v7 - 8) + 8))(&v0[v6], v7);
  return v0;
}

uint64_t MLS.KeyUpdateOperation.__deallocating_deinit()
{
  MLS.KeyUpdateOperation.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t protocol witness for MLS.RequiresGroupGroupOperation.membersRequiringKeyPackages(swiftMLSGroup:) in conformance MLS.KeyUpdateOperation<A, B, C>(uint64_t a1)
{
  v4 = *(**v1 + 248);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = specialized KDSRegistration.XPCCoordinator.__allocating_init(clientIdentifier:provider:simUniqueID:simLabelID:supportedState:testPhoneNumberURI:);

  return v8(a1);
}

uint64_t protocol witness for MLS.RequiresGroupGroupOperation.perform(on:metricCollector:keyPackageResult:) in conformance MLS.KeyUpdateOperation<A, B, C>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *(**v4 + 256);
  v14 = (v10 + *v10);
  v11 = v10[1];
  v12 = swift_task_alloc();
  *(v5 + 16) = v12;
  *v12 = v5;
  v12[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v14(a1, a2, a3, a4);
}

uint64_t protocol witness for MLS.GroupOperation.logger.getter in conformance MLS.KeyUpdateOperation<A, B, C>@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = *(*v3 + 184);
  v5 = type metadata accessor for Logger();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

uint64_t partial apply for implicit closure #1 in MLS.KeyUpdateOperation.perform(on:metricCollector:keyPackageResult:)(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return implicit closure #1 in MLS.KeyUpdateOperation.perform(on:metricCollector:keyPackageResult:)(a1, v1);
}

uint64_t partial apply for implicit closure #2 in MLS.KeyUpdateOperation.perform(on:metricCollector:keyPackageResult:)(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return implicit closure #2 in MLS.KeyUpdateOperation.perform(on:metricCollector:keyPackageResult:)(a1, v5, v4);
}

uint64_t outlined init with copy of MLS.OutgoingKeyUpdate<Data>(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SecureMessaging3MLSO17OutgoingKeyUpdateVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO17OutgoingKeyUpdateVy_10Foundation4DataVGMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t partial apply for implicit closure #7 in MLS.KeyUpdateOperation.perform(on:metricCollector:keyPackageResult:)(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return implicit closure #5 in MLS.UpdateOtherExpiredKeyPackagesOperation.perform(on:metricCollector:keyPackageResult:)(a1, v4);
}

uint64_t outlined destroy of MLS.OutgoingKeyUpdate<Data>(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SecureMessaging3MLSO17OutgoingKeyUpdateVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO17OutgoingKeyUpdateVy_10Foundation4DataVGMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t partial apply for implicit closure #8 in MLS.KeyUpdateOperation.perform(on:metricCollector:keyPackageResult:)(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return implicit closure #8 in MLS.KeyUpdateOperation.perform(on:metricCollector:keyPackageResult:)(a1, v1);
}

uint64_t instantiation function for generic protocol witness table for MLS.KeyUpdateOperation<A, B, C>(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t type metadata completion function for MLS.KeyUpdateOperation(uint64_t a1)
{
  v1 = *(a1 + 88);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    v5 = *(result - 8) + 64;
    result = type metadata accessor for Logger();
    if (v4 <= 0x3F)
    {
      v6 = *(result - 8) + 64;
      return swift_initClassMetadata2();
    }
  }

  return result;
}

uint64_t dispatch thunk of MLS.KeyUpdateOperation.membersRequiringKeyPackages(swiftMLSGroup:)(uint64_t a1)
{
  v4 = *(*v1 + 248);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = dispatch thunk of KDSRegistration.XPCCoordinator.__allocating_init(clientIdentifier:provider:simUniqueID:simLabelID:supportedState:testPhoneNumberURI:);

  return v8(a1);
}

uint64_t dispatch thunk of MLS.KeyUpdateOperation.perform(on:metricCollector:keyPackageResult:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *(*v4 + 256);
  v14 = (v10 + *v10);
  v11 = v10[1];
  v12 = swift_task_alloc();
  *(v5 + 16) = v12;
  *v12 = v5;
  v12[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v14(a1, a2, a3, a4);
}

uint64_t thunk for @escaping @callee_guaranteed @Sendable (@guaranteed Data?, @guaranteed Data?) -> ()(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);
  if (a2)
  {

    v7 = v4;
    v4 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v9 = v8;

    if (a3)
    {
LABEL_3:
      v10 = a3;
      a3 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v12 = v11;

      goto LABEL_6;
    }
  }

  else
  {

    v9 = 0xF000000000000000;
    if (a3)
    {
      goto LABEL_3;
    }
  }

  v12 = 0xF000000000000000;
LABEL_6:
  v6(v4, v9, a3, v12);
  outlined consume of Data?(a3, v12);
  outlined consume of Data?(v4, v9);
}

void thunk for @escaping @callee_unowned @convention(block) @Sendable (@unowned NSData?, @unowned NSData?) -> ()(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  if (a2 >> 60 == 15)
  {
    isa = 0;
  }

  else
  {
    isa = Data._bridgeToObjectiveC()().super.isa;
  }

  if (a4 >> 60 == 15)
  {
    v8 = 0;
  }

  else
  {
    v8 = Data._bridgeToObjectiveC()().super.isa;
  }

  v9 = v8;
  (*(a5 + 16))(a5, isa);
}

uint64_t MLS.XPCClientCoordinator.__allocating_init(clientIdentifier:selfMember:clientEventDeliverer:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  v8 = *(v5 + 48);
  v9 = *(v5 + 52);
  swift_allocObject();
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = specialized KDSRegistration.XPCCoordinator.__allocating_init(clientIdentifier:provider:simUniqueID:simLabelID:supportedState:testPhoneNumberURI:);

  return MLS.XPCClientCoordinator.init(clientIdentifier:selfMember:clientEventDeliverer:)(v10, a2, a3);
}

void MLS.UniqueClientIdentifier.init(clientIdentifier:clientURI:)(void *a1@<X1>, void *a2@<X8>)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
}

uint64_t MLS.UniqueClientIdentifier.clientURI.getter@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

uint64_t MLS.UniqueClientIdentifier.description.getter()
{
  v1 = *v0;
  v2 = v0[1];
  strcpy(v4, "EncryptedRCS.");
  MEMORY[0x2667545A0](v1, v2);
  return v4[0];
}

uint64_t static MLS.UniqueClientIdentifier.== infix(_:_:)(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)();
  }
}

unint64_t protocol witness for CodingKey.stringValue.getter in conformance MLS.UniqueClientIdentifier.CodingKeys()
{
  if (*v0)
  {
    result = 0x5255746E65696C63;
  }

  else
  {
    result = 0xD000000000000010;
  }

  *v0;
  return result;
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance MLS.UniqueClientIdentifier.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (a1 == 0xD000000000000010 && 0x80000002651E81D0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0x5255746E65696C63 && a2 == 0xE900000000000049)
  {

    v7 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *a3 = v7;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance MLS.UniqueClientIdentifier.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MLS.UniqueClientIdentifier.CodingKeys and conformance MLS.UniqueClientIdentifier.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance MLS.UniqueClientIdentifier.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MLS.UniqueClientIdentifier.CodingKeys and conformance MLS.UniqueClientIdentifier.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MLS.UniqueClientIdentifier.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15SecureMessaging3MLSO22UniqueClientIdentifierV10CodingKeys33_81D0A976D58F423DE3B3485741045346LLOGMd, &_ss22KeyedEncodingContainerVy15SecureMessaging3MLSO22UniqueClientIdentifierV10CodingKeys33_81D0A976D58F423DE3B3485741045346LLOGMR);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v12 - v7;
  v9 = v1[1];
  v13 = *v1;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type MLS.UniqueClientIdentifier.CodingKeys and conformance MLS.UniqueClientIdentifier.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v14) = 0;
  lazy protocol witness table accessor for type MLS.ClientIdentifier and conformance MLS.ClientIdentifier();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v14 = v13;
    v15 = v9;
    v16 = 1;
    lazy protocol witness table accessor for type URI and conformance URI();

    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v5 + 8))(v8, v4);
}

uint64_t MLS.UniqueClientIdentifier.hash(into:)()
{
  v2 = *v0;
  v1 = v0[1];
  String.hash(into:)();
  String.hash(into:)();
  return MEMORY[0x266754DE0](0);
}

Swift::Int MLS.UniqueClientIdentifier.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  Hasher.init(_seed:)();
  String.hash(into:)();
  String.hash(into:)();
  MEMORY[0x266754DE0](0);
  return Hasher._finalize()();
}

uint64_t MLS.UniqueClientIdentifier.init(from:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15SecureMessaging3MLSO22UniqueClientIdentifierV10CodingKeys33_81D0A976D58F423DE3B3485741045346LLOGMd, &_ss22KeyedDecodingContainerVy15SecureMessaging3MLSO22UniqueClientIdentifierV10CodingKeys33_81D0A976D58F423DE3B3485741045346LLOGMR);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v13 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type MLS.UniqueClientIdentifier.CodingKeys and conformance MLS.UniqueClientIdentifier.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v2)
  {
    LOBYTE(v13[0]) = 0;
    lazy protocol witness table accessor for type MLS.ClientIdentifier and conformance MLS.ClientIdentifier();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v14 = 1;
    lazy protocol witness table accessor for type URI and conformance URI();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v6 + 8))(v9, v5);
    v11 = v13[1];
    *a2 = v13[0];
    a2[1] = v11;
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance MLS.UniqueClientIdentifier()
{
  v1 = *v0;
  v2 = v0[1];
  Hasher.init(_seed:)();
  String.hash(into:)();
  String.hash(into:)();
  MEMORY[0x266754DE0](0);
  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance MLS.UniqueClientIdentifier()
{
  v2 = *v0;
  v1 = v0[1];
  String.hash(into:)();
  String.hash(into:)();
  return MEMORY[0x266754DE0](0);
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance MLS.UniqueClientIdentifier()
{
  v1 = *v0;
  v2 = v0[1];
  Hasher.init(_seed:)();
  String.hash(into:)();
  String.hash(into:)();
  MEMORY[0x266754DE0](0);
  return Hasher._finalize()();
}

uint64_t MLS.XPCClientCoordinator.logger.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = direct field offset for MLS.XPCClientCoordinator.logger;
  v4 = type metadata accessor for Logger();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t MLS.XPCClientCoordinator.uniqueClientIdentifier.getter@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + direct field offset for MLS.XPCClientCoordinator.uniqueClientIdentifier + 8);
  *a1 = *(v1 + direct field offset for MLS.XPCClientCoordinator.uniqueClientIdentifier);
  a1[1] = v2;
}

uint64_t MLS.XPCClientCoordinator.selfMember.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1 + direct field offset for MLS.XPCClientCoordinator.selfMember;
  v3 = *(v1 + direct field offset for MLS.XPCClientCoordinator.selfMember + 8);
  v4 = *(v1 + direct field offset for MLS.XPCClientCoordinator.selfMember + 16);
  *a1 = *(v1 + direct field offset for MLS.XPCClientCoordinator.selfMember);
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = *(v2 + 24);
  return outlined copy of MLS.AllMember();
}

uint64_t MLS.XPCClientCoordinator.keyPackage.getter(uint64_t a1)
{
  v2[4] = a1;
  v2[5] = v1;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v3 = static MLSActor.shared;
  v2[6] = static MLSActor.shared;

  return MEMORY[0x2822009F8](MLS.XPCClientCoordinator.keyPackage.getter, v3, 0);
}

void MLS.XPCClientCoordinator.keyPackage.getter()
{
  v1 = v0[5];

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  v4 = os_log_type_enabled(v2, v3);
  v5 = v0[5];
  if (v4)
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 136315138;
    v8 = *(v5 + direct field offset for MLS.XPCClientCoordinator.uniqueClientIdentifier);
    v9 = *(v5 + direct field offset for MLS.XPCClientCoordinator.uniqueClientIdentifier + 8);
    v20 = v7;
    strcpy(v21, "EncryptedRCS.");
    HIWORD(v21[1]) = -4864;

    MEMORY[0x2667545A0](v8, v9);

    v10 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v21[0], v21[1], &v20);

    *(v6 + 4) = v10;
    _os_log_impl(&dword_264F1F000, v2, v3, "XPCClientCoordinator keyPackage { client: %s }", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v7);
    MEMORY[0x266755550](v7, -1, -1);
    MEMORY[0x266755550](v6, -1, -1);
  }

  else
  {
  }

  v11 = *(*(v0[5] + direct field offset for MLS.XPCClientCoordinator.xpcClient) + OBJC_IVAR____TtCO15SecureMessaging8XPCUtils9XPCClient_deliveryInterface);
  v0[7] = v11;
  v12 = *(*v11 + 360);

  v19 = v12 + *v12;
  v13 = v12[1];
  v14 = swift_task_alloc();
  v0[8] = v14;
  v15 = lazy protocol witness table accessor for type MLS.KeyPackageInfo and conformance MLS.KeyPackageInfo();
  v16 = lazy protocol witness table accessor for type MLS.KeyPackageInfo and conformance MLS.KeyPackageInfo();
  v17 = lazy protocol witness table accessor for type MLS.SelfKeyPackageError and conformance MLS.SelfKeyPackageError();
  *v14 = v0;
  v14[1] = MLS.XPCClientCoordinator.keyPackage.getter;
  v18 = v0[5];
  v29 = v16;
  v30 = v17;
  v28 = v15;
  v27 = MEMORY[0x277CC9318];
  v26 = &type metadata for MLS.SelfKeyPackageError;
  v24 = 0;
  v25 = &type metadata for MLS.KeyPackageInfo;
  v23 = closure #3 in MLS.XPCClientCoordinator.keyPackage.getter;

  __asm { BRAA            X8, X16 }
}

uint64_t MLS.XPCClientCoordinator.keyPackage.getter()
{
  v2 = *v1;
  v3 = *(*v1 + 64);
  v9 = *v1;
  *(*v1 + 72) = v0;

  if (v0)
  {
    v4 = *(v2 + 48);
    v5 = MLS.XPCClientCoordinator.keyPackage.getter;
  }

  else
  {
    v7 = *(v2 + 48);
    v6 = *(v2 + 56);

    v5 = MLS.XPCClientCoordinator.keyPackage.getter;
    v4 = v7;
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

{
  **(v0 + 32) = *(v0 + 16);
  return (*(v0 + 8))();
}

{
  v1 = v0[7];

  v2 = v0[1];
  v3 = v0[9];

  return v2();
}

uint64_t closure #1 in MLS.XPCClientCoordinator.keyPackage.getter@<X0>(uint64_t a1@<X1>, uint64_t *a2@<X8>)
{
  v9 = *(a1 + direct field offset for MLS.XPCClientCoordinator.uniqueClientIdentifier);
  v10 = *(a1 + direct field offset for MLS.XPCClientCoordinator.uniqueClientIdentifier + 8);
  lazy protocol witness table accessor for type MLS.UniqueClientIdentifier and conformance MLS.UniqueClientIdentifier();

  v4 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  if (v2)
  {
  }

  v7 = v4;
  v8 = v5;

  *a2 = v7;
  a2[1] = v8;
  return result;
}

uint64_t MLS.XPCRequest.init(continuation:type:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy10Foundation4DataVs5Error_pGMd, &_sScCy10Foundation4DataVs5Error_pGMR);
  (*(*(v6 - 8) + 32))(a3, a1, v6);
  result = type metadata accessor for MLS.XPCRequest();
  *(a3 + *(result + 20)) = a2;
  return result;
}

void closure #3 in MLS.XPCClientCoordinator.keyPackage.getter(void **a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v6 = *a1;
  v7 = *a2;
  v8 = a2[1];
  isa = Data._bridgeToObjectiveC()().super.isa;
  v11[4] = a3;
  v11[5] = a4;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 1107296256;
  v11[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed Data?, @guaranteed Data?) -> ();
  v11[3] = &block_descriptor_297;
  v10 = _Block_copy(v11);

  [v6 selfKeyPackageWithUniqueClientIdentifier:isa completion:v10];
  _Block_release(v10);
}

uint64_t MLS.XPCClientCoordinator.init(clientIdentifier:selfMember:clientEventDeliverer:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  *(v4 + 48) = a3;
  *(v4 + 56) = v5;
  *(v4 + 64) = *v5;
  v7 = type metadata accessor for Logger();
  *(v4 + 72) = v7;
  v8 = *(v7 - 8);
  *(v4 + 80) = v8;
  v9 = *(v8 + 64) + 15;
  *(v4 + 88) = swift_task_alloc();
  *(v4 + 96) = *a2;
  *(v4 + 112) = *(a2 + 16);
  *(v4 + 224) = *(a2 + 24);
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v10 = static MLSActor.shared;
  *(v4 + 120) = static MLSActor.shared;

  return MEMORY[0x2822009F8](MLS.XPCClientCoordinator.init(clientIdentifier:selfMember:clientEventDeliverer:), v10, 0);
}

uint64_t MLS.XPCClientCoordinator.init(clientIdentifier:selfMember:clientEventDeliverer:)()
{
  v31 = v0;
  v1 = *(v0 + 224);
  v2 = *(v0 + 88);
  Logger.init(subsystem:category:)();
  if (v1 <= 0xFD)
  {
    v21 = *(v0 + 104);
    v22 = *(v0 + 112);
    v23 = *(v0 + 96);
    v24 = *(v0 + 56);
    v25 = *(v0 + 224);
    *(v24 + 16) = *(v0 + 48);
    v26 = v24 + direct field offset for MLS.XPCClientCoordinator.selfMember;
    *v26 = v23;
    *(v26 + 8) = v21;
    *(v26 + 16) = v22;
    *(v26 + 24) = v25;
    v27 = direct field offset for MLS.XPCClientCoordinator.uniqueClientIdentifier;
    *(v0 + 128) = direct field offset for MLS.XPCClientCoordinator.uniqueClientIdentifier;
    v28 = (v24 + v27);
    *v28 = v23;
    v28[1] = v21;

    outlined copy of MLS.AllMember();
    v29 = swift_task_alloc();
    *(v0 + 136) = v29;
    *v29 = v0;
    v29[1] = MLS.XPCClientCoordinator.init(clientIdentifier:selfMember:clientEventDeliverer:);

    return specialized static XPCUtils.XPCClient.weakSharedInstance.getter();
  }

  else
  {
    v3 = *(v0 + 88);
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v30 = v7;
      *v6 = 136315138;
      *(v6 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0x6574707972636E45, 0xEC00000053435264, &v30);
      _os_log_impl(&dword_264F1F000, v4, v5, "XPCClientCoordinator created without selfMember { client: %s }", v6, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v7);
      MEMORY[0x266755550](v7, -1, -1);
      MEMORY[0x266755550](v6, -1, -1);
    }

    v9 = *(v0 + 80);
    v8 = *(v0 + 88);
    v11 = *(v0 + 64);
    v10 = *(v0 + 72);
    v13 = *(v0 + 48);
    v12 = *(v0 + 56);
    lazy protocol witness table accessor for type MLS.ClientCreationError and conformance MLS.ClientCreationError();
    swift_allocError();
    *v14 = 1;
    *(v14 + 8) = 0;
    *(v14 + 16) = 0;
    swift_willThrow();

    (*(v9 + 8))(v8, v10);
    v15 = *(v11 + 96);
    *(v0 + 16) = *(v11 + 80);
    *(v0 + 32) = v15;
    type metadata accessor for MLS.XPCClientCoordinator();
    v16 = *(*v12 + 48);
    v17 = *(*v12 + 52);
    swift_deallocPartialClassInstance();
    v18 = *(v0 + 88);

    v19 = *(v0 + 8);

    return v19();
  }
}

{
  v1 = v0[18];
  v3 = v0[10];
  v2 = v0[11];
  v5 = v0[8];
  v4 = v0[9];
  v6 = v0[7];
  *(v6 + direct field offset for MLS.XPCClientCoordinator.xpcClient) = v1;
  type metadata accessor for XPCUtils.XPCNotifyListener();
  v7 = swift_allocObject();
  *(v7 + 16) = 0;
  v8 = direct field offset for MLS.XPCClientCoordinator.notifyListener;
  v0[19] = direct field offset for MLS.XPCClientCoordinator.notifyListener;
  *(v6 + v8) = v7;
  (*(v3 + 16))(v6 + direct field offset for MLS.XPCClientCoordinator.logger, v2, v4);
  v9 = *(v1 + OBJC_IVAR____TtCO15SecureMessaging8XPCUtils9XPCClient_deliveryInterface);
  v0[20] = v9;
  v10 = swift_allocObject();
  v0[21] = v10;
  swift_weakInit();
  v11 = swift_allocObject();
  v0[22] = v11;
  v12 = v5[10];
  v0[23] = v12;
  v11[2] = v12;
  v13 = v5[11];
  v0[24] = v13;
  v11[3] = v13;
  v14 = v5[12];
  v0[25] = v14;
  v11[4] = v14;
  v15 = v5[13];
  v0[26] = v15;
  v11[5] = v15;
  v11[6] = v10;
  v16 = *(*v9 + 352);

  v20 = (v16 + *v16);
  v17 = v16[1];
  v18 = swift_task_alloc();
  v0[27] = v18;
  *v18 = v0;
  v18[1] = MLS.XPCClientCoordinator.init(clientIdentifier:selfMember:clientEventDeliverer:);

  return (v20)(&async function pointer to partial apply for closure #1 in MLS.XPCClientCoordinator.init(clientIdentifier:selfMember:clientEventDeliverer:), v11);
}

{
  v1 = *(*v0 + 216);
  v2 = *(*v0 + 176);
  v3 = *(*v0 + 168);
  v4 = *(*v0 + 160);
  v5 = *(*v0 + 120);
  v7 = *v0;

  return MEMORY[0x2822009F8](MLS.XPCClientCoordinator.init(clientIdentifier:selfMember:clientEventDeliverer:), v5, 0);
}

{
  v35 = v0;
  v1 = *(v0 + 88);
  v2 = *(v0 + 56);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = (*(v0 + 56) + *(v0 + 128));
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 136315138;
    v8 = *v5;
    v9 = v5[1];
    v33 = v7;
    strcpy(v34, "EncryptedRCS.");
    HIWORD(v34[1]) = -4864;

    MEMORY[0x2667545A0](v8, v9);

    v10 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v34[0], v34[1], &v33);

    *(v6 + 4) = v10;
    _os_log_impl(&dword_264F1F000, v3, v4, "XPCClientCoordinator setting up notifyListener { client: %s }", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v7);
    MEMORY[0x266755550](v7, -1, -1);
    MEMORY[0x266755550](v6, -1, -1);
  }

  else
  {
    v11 = *(v0 + 56);
  }

  v12 = *(v0 + 152);
  v13 = *(v0 + 56);
  v14 = (v13 + *(v0 + 128));
  v34[0] = 0xD000000000000036;
  v34[1] = 0x80000002651EA160;
  v15 = *v14;
  v16 = v14[1];

  v17 = *(v0 + 200);
  v31 = v17;
  v32 = *(v0 + 184);
  MEMORY[0x2667545A0](v15, v16);

  v18 = v34[0];
  v19 = v34[1];
  v20 = *(v13 + v12);
  v21 = swift_allocObject();
  swift_weakInit();

  v22 = swift_allocObject();
  *(v22 + 16) = v32;
  *(v22 + 32) = v31;
  *(v22 + 48) = v21;
  *(v22 + 56) = v18;
  *(v22 + 64) = v19;
  v23 = *(*v20 + 120);

  v23(v18, v19, partial apply for closure #2 in MLS.XPCClientCoordinator.init(clientIdentifier:selfMember:clientEventDeliverer:), v22);
  v25 = *(v0 + 80);
  v24 = *(v0 + 88);
  v26 = *(v0 + 72);
  v27 = *(v0 + 48);

  (*(v25 + 8))(v24, v26);

  v28 = *(v0 + 8);
  v29 = *(v0 + 56);

  return v28(v29);
}

uint64_t MLS.XPCClientCoordinator.init(clientIdentifier:selfMember:clientEventDeliverer:)(uint64_t a1)
{
  v2 = *(*v1 + 136);
  v3 = *(*v1 + 120);
  v5 = *v1;
  *(*v1 + 144) = a1;

  return MEMORY[0x2822009F8](MLS.XPCClientCoordinator.init(clientIdentifier:selfMember:clientEventDeliverer:), v3, 0);
}

uint64_t closure #1 in MLS.XPCClientCoordinator.init(clientIdentifier:selfMember:clientEventDeliverer:)()
{
  v1 = v0[5];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[6] = Strong;
  if (Strong)
  {
    v3 = *(*Strong + 184);
    v8 = (v3 + *v3);
    v4 = v3[1];
    v5 = swift_task_alloc();
    v0[7] = v5;
    *v5 = v0;
    v5[1] = closure #1 in KDSRegistration.XPCCoordinator.init(clientIdentifier:provider:simUniqueID:simLabelID:supportedState:testPhoneNumberURI:);

    return v8();
  }

  else
  {
    v7 = v0[1];

    return v7();
  }
}

uint64_t closure #2 in MLS.XPCClientCoordinator.init(clientIdentifier:selfMember:clientEventDeliverer:)(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v20 - v7;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v10 = result;

    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v20 = v14;
      *v13 = 136315138;
      *(v13 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a2, a3, &v20);
      _os_log_impl(&dword_264F1F000, v11, v12, "Received XPC Notification { notificationName: %s }", v13, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v14);
      MEMORY[0x266755550](v14, -1, -1);
      MEMORY[0x266755550](v13, -1, -1);
    }

    v15 = type metadata accessor for TaskPriority();
    (*(*(v15 - 8) + 56))(v8, 1, 1, v15);
    v16 = one-time initialization token for shared;

    if (v16 != -1)
    {
      swift_once();
    }

    v17 = static MLSActor.shared;
    v18 = _s15SecureMessaging8XPCActorCACScAAAWlTm_3(&lazy protocol witness table cache variable for type MLSActor and conformance MLSActor, type metadata accessor for MLSActor);
    v19 = swift_allocObject();
    v19[2] = v17;
    v19[3] = v18;
    v19[4] = v10;

    _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v8, &async function pointer to partial apply for closure #1 in closure #2 in MLS.XPCClientCoordinator.init(clientIdentifier:selfMember:clientEventDeliverer:), v19);
  }

  return result;
}

uint64_t closure #1 in closure #2 in MLS.XPCClientCoordinator.init(clientIdentifier:selfMember:clientEventDeliverer:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v5 = static MLSActor.shared;

  return MEMORY[0x2822009F8](closure #1 in closure #2 in MLS.XPCClientCoordinator.init(clientIdentifier:selfMember:clientEventDeliverer:), v5, 0);
}

void closure #1 in closure #2 in MLS.XPCClientCoordinator.init(clientIdentifier:selfMember:clientEventDeliverer:)()
{
  v1 = v0[2];
  v6[0] = 0;
  v6[1] = 0xE000000000000000;
  _StringGuts.grow(_:)(18);
  MEMORY[0x2667545A0](0xD000000000000010, 0x80000002651EA1C0);
  v2 = *(v1 + direct field offset for MLS.XPCClientCoordinator.uniqueClientIdentifier);
  v3 = *(v1 + direct field offset for MLS.XPCClientCoordinator.uniqueClientIdentifier + 8);
  strcpy(v6, "EncryptedRCS.");
  HIWORD(v6[1]) = -4864;
  MEMORY[0x2667545A0](v2, v3);
  MEMORY[0x2667545A0](v6[0], v6[1]);

  v0[3] = 0xE000000000000000;
  swift_retain_n();
  v4 = swift_task_alloc();
  v0[4] = v4;
  *v4 = v0;
  v4[1] = closure #1 in closure #2 in MLS.XPCClientCoordinator.init(clientIdentifier:selfMember:clientEventDeliverer:);
  v5 = v0[2];
  v8 = v1;

  JUMPOUT(0x264FC1CA0);
}

uint64_t closure #1 in closure #2 in MLS.XPCClientCoordinator.init(clientIdentifier:selfMember:clientEventDeliverer:)()
{
  v1 = *(*v0 + 32);
  v2 = *(*v0 + 24);
  v3 = *(*v0 + 16);
  v6 = *v0;

  v4 = *(v6 + 8);

  return v4();
}

uint64_t closure #2 in closure #1 in closure #2 in MLS.XPCClientCoordinator.init(clientIdentifier:selfMember:clientEventDeliverer:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v3 = *(*a2 + 184);
  v7 = (v3 + *v3);
  v4 = v3[1];
  v5 = swift_task_alloc();
  *(v2 + 24) = v5;
  *v5 = v2;
  v5[1] = closure #2 in closure #1 in closure #2 in MLS.XPCClientCoordinator.init(clientIdentifier:selfMember:clientEventDeliverer:);

  return v7();
}

uint64_t closure #2 in closure #1 in closure #2 in MLS.XPCClientCoordinator.init(clientIdentifier:selfMember:clientEventDeliverer:)()
{
  v2 = *(*v1 + 24);
  v3 = *v1;

  if (v0)
  {
    v4 = *(v3 + 8);

    return v4();
  }

  else
  {

    return MEMORY[0x2822009F8](closure #2 in closure #1 in closure #2 in MLS.XPCClientCoordinator.init(clientIdentifier:selfMember:clientEventDeliverer:), 0, 0);
  }
}

{
  **(v0 + 16) = 0;
  return (*(v0 + 8))();
}

uint64_t closure #3 in closure #1 in closure #2 in MLS.XPCClientCoordinator.init(clientIdentifier:selfMember:clientEventDeliverer:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return MEMORY[0x2822009F8](closure #3 in closure #1 in closure #2 in MLS.XPCClientCoordinator.init(clientIdentifier:selfMember:clientEventDeliverer:), 0, 0);
}

uint64_t closure #3 in closure #1 in closure #2 in MLS.XPCClientCoordinator.init(clientIdentifier:selfMember:clientEventDeliverer:)()
{
  v19 = v0;
  v1 = v0[5];
  v2 = v0[6];
  v3 = v0[3];

  v4 = v1;
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v8 = v0[4];
    v7 = v0[5];
    v10 = v0[2];
    v9 = v0[3];
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v18 = v13;
    *v11 = 136315650;
    *(v11 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v10, v9, &v18);
    *(v11 + 12) = 2048;
    *(v11 + 14) = v8;
    *(v11 + 22) = 2112;
    v14 = v7;
    v15 = _swift_stdlib_bridgeErrorToNSError();
    *(v11 + 24) = v15;
    *v12 = v15;
    _os_log_impl(&dword_264F1F000, v5, v6, "XPCClientCoordinator hit error reconnecting after notify { client: %s, attempt: %lu, error: %@", v11, 0x20u);
    outlined destroy of NSObject?(v12, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x266755550](v12, -1, -1);
    __swift_destroy_boxed_opaque_existential_1Tm(v13);
    MEMORY[0x266755550](v13, -1, -1);
    MEMORY[0x266755550](v11, -1, -1);
  }

  v16 = v0[1];

  return v16();
}

uint64_t closure #4 in closure #1 in closure #2 in MLS.XPCClientCoordinator.init(clientIdentifier:selfMember:clientEventDeliverer:)()
{
  v15 = v0;
  v1 = *(v0 + 16);

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.fault.getter();
  v4 = os_log_type_enabled(v2, v3);
  v5 = *(v0 + 16);
  if (v4)
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 136315138;
    v8 = *(v5 + direct field offset for MLS.XPCClientCoordinator.uniqueClientIdentifier);
    v9 = *(v5 + direct field offset for MLS.XPCClientCoordinator.uniqueClientIdentifier + 8);
    v13 = v7;
    strcpy(v14, "EncryptedRCS.");
    HIWORD(v14[1]) = -4864;

    MEMORY[0x2667545A0](v8, v9);

    v10 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v14[0], v14[1], &v13);

    *(v6 + 4) = v10;
    _os_log_impl(&dword_264F1F000, v2, v3, "XPCClientCoordinator unable to reconnect after multiple attempts { client: %s }", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v7);
    MEMORY[0x266755550](v7, -1, -1);
    MEMORY[0x266755550](v6, -1, -1);
  }

  else
  {
  }

  v11 = *(v0 + 8);

  return v11();
}

uint64_t MLS.XPCClientCoordinator.setupXPCConnection()()
{
  *(v1 + 16) = v0;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v2 = static MLSActor.shared;
  *(v1 + 24) = static MLSActor.shared;

  return MEMORY[0x2822009F8](MLS.XPCClientCoordinator.setupXPCConnection(), v2, 0);
}

{
  v2 = *v1;
  v3 = *(*v1 + 48);
  v9 = *v1;
  *(*v1 + 56) = v0;

  if (v0)
  {
    v4 = *(v2 + 24);
    v5 = MLS.XPCClientCoordinator.setupXPCConnection();
  }

  else
  {
    v6 = *(v2 + 40);
    v7 = *(v2 + 24);

    v5 = MLS.XPCClientCoordinator.setupXPCConnection();
    v4 = v7;
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

{
  v16 = v0;
  v1 = v0[4];
  v2 = v0[2];

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[2];
  if (v5)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 136315138;
    v9 = *(v6 + direct field offset for MLS.XPCClientCoordinator.uniqueClientIdentifier);
    v10 = *(v6 + direct field offset for MLS.XPCClientCoordinator.uniqueClientIdentifier + 8);
    v14 = v8;
    strcpy(v15, "EncryptedRCS.");
    HIWORD(v15[1]) = -4864;

    MEMORY[0x2667545A0](v9, v10);

    v11 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v15[0], v15[1], &v14);

    *(v7 + 4) = v11;
    _os_log_impl(&dword_264F1F000, v3, v4, "XPCClientCoordinator XPC setup { client: %s }", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v8);
    MEMORY[0x266755550](v8, -1, -1);
    MEMORY[0x266755550](v7, -1, -1);
  }

  else
  {
  }

  v12 = v0[1];

  return v12();
}

{
  v25 = v0;
  v1 = v0[7];
  v3 = v0[4];
  v2 = v0[5];
  v4 = v0[2];

  v5 = v1;
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v22 = v0[7];
    v8 = v0[2];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v9 = 136315394;
    v13 = *(v8 + direct field offset for MLS.XPCClientCoordinator.uniqueClientIdentifier);
    v12 = *(v8 + direct field offset for MLS.XPCClientCoordinator.uniqueClientIdentifier + 8);
    v23 = v11;
    strcpy(v24, "EncryptedRCS.");
    HIWORD(v24[1]) = -4864;

    MEMORY[0x2667545A0](v13, v12);

    v14 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v24[0], v24[1], &v23);

    *(v9 + 4) = v14;
    *(v9 + 12) = 2112;
    v15 = v22;
    v16 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 14) = v16;
    *v10 = v16;
    _os_log_impl(&dword_264F1F000, v6, v7, "XPCClientCoordinator setupXPCConnection failed { client: %s, error: %@ }", v9, 0x16u);
    outlined destroy of NSObject?(v10, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x266755550](v10, -1, -1);
    __swift_destroy_boxed_opaque_existential_1Tm(v11);
    MEMORY[0x266755550](v11, -1, -1);
    MEMORY[0x266755550](v9, -1, -1);
  }

  else
  {
    v17 = v0[2];
  }

  v18 = v0[7];
  swift_willThrow();
  v19 = v0[1];
  v20 = v0[7];

  return v19();
}

void MLS.XPCClientCoordinator.setupXPCConnection()()
{
  v1 = v0[2];
  v0[4] = direct field offset for MLS.XPCClientCoordinator.logger;

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  v4 = os_log_type_enabled(v2, v3);
  v5 = v0[2];
  if (v4)
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 136315138;
    v8 = *(v5 + direct field offset for MLS.XPCClientCoordinator.uniqueClientIdentifier);
    v9 = *(v5 + direct field offset for MLS.XPCClientCoordinator.uniqueClientIdentifier + 8);
    v19 = v7;
    strcpy(v20, "EncryptedRCS.");
    HIWORD(v20[1]) = -4864;

    MEMORY[0x2667545A0](v8, v9);

    v10 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v20[0], v20[1], &v19);

    *(v6 + 4) = v10;
    _os_log_impl(&dword_264F1F000, v2, v3, "XPCClientCoordinator setting up XPC { client: %s }", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v7);
    MEMORY[0x266755550](v7, -1, -1);
    MEMORY[0x266755550](v6, -1, -1);
  }

  else
  {
  }

  v11 = *(*(v0[2] + direct field offset for MLS.XPCClientCoordinator.xpcClient) + OBJC_IVAR____TtCO15SecureMessaging8XPCUtils9XPCClient_deliveryInterface);
  v0[5] = v11;
  v12 = *(*v11 + 360);

  v18 = v12 + *v12;
  v13 = v12[1];
  v14 = swift_task_alloc();
  v0[6] = v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DataV_ACtMd, &_s10Foundation4DataV_ACtMR);
  v16 = lazy protocol witness table accessor for type MLS.ClientCreationError and conformance MLS.ClientCreationError();
  *v14 = v0;
  v14[1] = MLS.XPCClientCoordinator.setupXPCConnection();
  v17 = v0[2];
  v28 = MEMORY[0x277D839B8];
  v29 = v16;
  v26 = v15;
  v27 = MEMORY[0x277D839D0];
  v25 = &type metadata for MLS.ClientCreationError;
  v23 = v17;
  v24 = MEMORY[0x277D839B0];
  v22 = partial apply for closure #3 in MLS.XPCClientCoordinator.setupXPCConnection();

  __asm { BRAA            X8, X16 }
}

uint64_t closure #1 in MLS.XPCClientCoordinator.setupXPCConnection()@<X0>(uint64_t a1@<X1>, uint64_t *a2@<X8>)
{
  v12 = *(a1 + direct field offset for MLS.XPCClientCoordinator.selfMember);
  v14 = *(a1 + direct field offset for MLS.XPCClientCoordinator.selfMember + 8);
  v16 = *(a1 + direct field offset for MLS.XPCClientCoordinator.selfMember + 16);
  v17 = *(a1 + direct field offset for MLS.XPCClientCoordinator.selfMember + 24);
  outlined copy of MLS.AllMember();
  lazy protocol witness table accessor for type MLS.AllMember and conformance MLS.AllMember();
  v5 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  v7 = v6;
  result = outlined consume of MLS.AllMember();
  if (!v2)
  {
    v13 = *(a1 + direct field offset for MLS.XPCClientCoordinator.uniqueClientIdentifier);
    v15 = *(a1 + direct field offset for MLS.XPCClientCoordinator.uniqueClientIdentifier + 8);
    lazy protocol witness table accessor for type MLS.UniqueClientIdentifier and conformance MLS.UniqueClientIdentifier();

    v9 = dispatch thunk of JSONEncoder.encode<A>(_:)();
    v11 = v10;

    *a2 = v9;
    a2[1] = v11;
    a2[2] = v5;
    a2[3] = v7;
  }

  return result;
}

uint64_t closure #3 in MLS.XPCClientCoordinator.setupXPCConnection()(void **a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = *a1;
  v8 = *a2;
  v9 = a2[1];
  v10 = a2[2];
  v11 = a2[3];
  outlined copy of Data._Representation(*a2, v9);
  outlined copy of Data._Representation(v10, v11);
  isa = Data._bridgeToObjectiveC()().super.isa;
  v13 = Data._bridgeToObjectiveC()().super.isa;
  aBlock[4] = a3;
  aBlock[5] = a4;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed Data?, @guaranteed Data?) -> ();
  aBlock[3] = &block_descriptor_282;
  v14 = _Block_copy(aBlock);

  [v7 setupXPCConnectionWithClient:a5 uniqueClientIdentifier:isa selfMember:v13 completion:v14];
  _Block_release(v14);

  outlined consume of Data._Representation(v10, v11);
  return outlined consume of Data._Representation(v8, v9);
}

uint64_t MLS.XPCClientCoordinator.createGroup(identifier:otherMembers:context:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v6 + 744) = v5;
  *(v6 + 736) = a4;
  *(v6 + 728) = a3;
  *(v6 + 720) = a2;
  *(v6 + 712) = a1;
  v8 = type metadata accessor for MetricCollector.Event();
  *(v6 + 752) = v8;
  v9 = *(*(v8 - 8) + 64) + 15;
  *(v6 + 760) = swift_task_alloc();
  *(v6 + 768) = swift_task_alloc();
  v10 = *(a5 + 48);
  *(v6 + 176) = *(a5 + 32);
  *(v6 + 192) = v10;
  *(v6 + 208) = *(a5 + 64);
  v11 = *(a5 + 16);
  *(v6 + 144) = *a5;
  *(v6 + 160) = v11;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v12 = static MLSActor.shared;
  *(v6 + 776) = static MLSActor.shared;

  return MEMORY[0x2822009F8](MLS.XPCClientCoordinator.createGroup(identifier:otherMembers:context:), v12, 0);
}

void MLS.XPCClientCoordinator.createGroup(identifier:otherMembers:context:)()
{
  v1 = *(v0 + 744);
  *(v0 + 784) = direct field offset for MLS.XPCClientCoordinator.logger;
  outlined init with copy of MLS.OutgoingEventState?(v0 + 144, v0 + 288, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMR);

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  outlined destroy of NSObject?(v0 + 144, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMR);
  v4 = os_log_type_enabled(v2, v3);
  v5 = *(v0 + 744);
  if (v4)
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v42 = v7;
    *v6 = 136315394;
    v8 = *(v0 + 144);
    v9 = *(v0 + 152);

    v10 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v8, v9, &v42);

    *(v6 + 4) = v10;
    *(v6 + 12) = 2080;
    v11 = *(v5 + direct field offset for MLS.XPCClientCoordinator.uniqueClientIdentifier);
    v12 = *(v5 + direct field offset for MLS.XPCClientCoordinator.uniqueClientIdentifier + 8);
    strcpy(v43, "EncryptedRCS.");
    HIWORD(v43[1]) = -4864;

    MEMORY[0x2667545A0](v11, v12);

    v13 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v43[0], v43[1], &v42);

    *(v6 + 14) = v13;
    _os_log_impl(&dword_264F1F000, v2, v3, "XPCClientCoordinator createGroup { identifier: %s, client: %s }", v6, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x266755550](v7, -1, -1);
    MEMORY[0x266755550](v6, -1, -1);
  }

  else
  {
  }

  v14 = *(v0 + 768);
  v15 = *(v0 + 760);
  v16 = *(v0 + 752);
  v17 = *(v0 + 744);
  v18 = *(v0 + 736);
  v39 = *(v0 + 720);
  v41 = *(v0 + 728);
  v19 = *(v0 + 160);
  *(v0 + 648) = *(v0 + 144);
  *(v0 + 664) = v19;
  v20 = *(v0 + 176);
  v21 = *(v0 + 200);
  *(v0 + 680) = *(v0 + 184);
  *(v0 + 696) = v21;
  outlined init with copy of MLS.OutgoingEventState?(v0 + 144, v0 + 360, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMR);
  Date.init()();
  v22 = *(v16 + 20);
  v23 = type metadata accessor for Date();
  (*(*(v23 - 8) + 56))(v14 + v22, 1, 1, v23);
  outlined init with take of MetricCollector.Event(v14, v15);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v43[0] = v20;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v15, 0x5864726177726F46, 0xEA00000000004350, isUniquelyReferenced_nonNull_native);
  v25 = v43[0];
  *(v0 + 792) = v43[0];

  v26 = *(v0 + 664);
  *(v0 + 216) = *(v0 + 648);
  *(v0 + 232) = v26;
  *(v0 + 248) = v25;
  v27 = *(v0 + 696);
  *(v0 + 256) = *(v0 + 680);
  *(v0 + 272) = v27;
  v28 = *(*(v17 + direct field offset for MLS.XPCClientCoordinator.xpcClient) + OBJC_IVAR____TtCO15SecureMessaging8XPCUtils9XPCClient_deliveryInterface);
  *(v0 + 800) = v28;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SecureMessaging3MLSO29GroupCreationProcessedContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO29GroupCreationProcessedContextVy_10Foundation4DataVGMR);
  v30 = swift_task_alloc();
  *(v0 + 808) = v30;
  v30[2] = v18;
  v30[3] = v0 + 216;
  v30[4] = v17;
  v31 = swift_task_alloc();
  *(v0 + 816) = v31;
  *(v31 + 16) = v39;
  *(v31 + 24) = v41;
  v32 = *(*v28 + 360);

  v40 = v32 + *v32;
  v33 = v32[1];
  v34 = swift_task_alloc();
  *(v0 + 824) = v34;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DataV_A2CtMd, &_s10Foundation4DataV_A2CtMR);
  v36 = lazy protocol witness table accessor for type MLS.KeyPackageRetrievalResult<MLS.AllMember> and conformance MLS.KeyPackageRetrievalResult<A>(&lazy protocol witness table cache variable for type MLS.GroupCreationProcessedContext<Data> and conformance MLS.GroupCreationProcessedContext<A>, &_s15SecureMessaging3MLSO29GroupCreationProcessedContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO29GroupCreationProcessedContextVy_10Foundation4DataVGMR);
  v37 = lazy protocol witness table accessor for type MLS.KeyPackageRetrievalResult<MLS.AllMember> and conformance MLS.KeyPackageRetrievalResult<A>(&lazy protocol witness table cache variable for type MLS.GroupCreationProcessedContext<Data> and conformance MLS.GroupCreationProcessedContext<A>, &_s15SecureMessaging3MLSO29GroupCreationProcessedContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO29GroupCreationProcessedContextVy_10Foundation4DataVGMR);
  v38 = lazy protocol witness table accessor for type MLS.GroupCreationError and conformance MLS.GroupCreationError();
  *v34 = v0;
  v34[1] = MLS.XPCClientCoordinator.createGroup(identifier:otherMembers:context:);
  v51 = v37;
  v52 = v38;
  v49 = v35;
  v50 = v36;
  v47 = v29;
  v48 = &type metadata for MLS.GroupCreationError;
  v45 = partial apply for closure #3 in MLS.XPCClientCoordinator.createGroup(identifier:otherMembers:context:);
  v46 = v31;

  __asm { BRAA            X8, X16 }
}

uint64_t MLS.XPCClientCoordinator.createGroup(identifier:otherMembers:context:)()
{
  v2 = *v1;
  v3 = *(*v1 + 824);
  v4 = *v1;
  *(*v1 + 832) = v0;

  v5 = *(v2 + 800);
  v6 = *(v2 + 776);

  if (v0)
  {
    v7 = MLS.XPCClientCoordinator.createGroup(identifier:otherMembers:context:);
  }

  else
  {
    v7 = MLS.XPCClientCoordinator.createGroup(identifier:otherMembers:context:);
  }

  return MEMORY[0x2822009F8](v7, v6, 0);
}

{
  v1 = *(v0 + 816);
  v2 = *(v0 + 808);
  v3 = *(v0 + 792);
  v4 = *(v0 + 768);
  v5 = *(v0 + 760);
  v6 = *(v0 + 712);
  v7 = *(v0 + 664);
  *(v0 + 576) = *(v0 + 648);
  *(v0 + 592) = v7;
  *(v0 + 608) = v3;
  v8 = *(v0 + 696);
  *(v0 + 616) = *(v0 + 680);
  *(v0 + 632) = v8;
  outlined destroy of NSObject?(v0 + 576, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMR);
  v9 = *(v0 + 64);
  v11 = *(v0 + 16);
  v10 = *(v0 + 32);
  v6[2] = *(v0 + 48);
  v6[3] = v9;
  *v6 = v11;
  v6[1] = v10;
  v12 = *(v0 + 128);
  v14 = *(v0 + 80);
  v13 = *(v0 + 96);
  v6[6] = *(v0 + 112);
  v6[7] = v12;
  v6[4] = v14;
  v6[5] = v13;

  v15 = *(v0 + 8);

  return v15();
}

{
  v34 = v0;
  v1 = *(v0 + 832);
  v2 = *(v0 + 792);
  v3 = *(v0 + 784);
  v4 = *(v0 + 744);
  v5 = *(v0 + 664);
  *(v0 + 432) = *(v0 + 648);
  *(v0 + 448) = v5;
  *(v0 + 464) = v2;
  v6 = *(v0 + 696);
  *(v0 + 472) = *(v0 + 680);
  *(v0 + 488) = v6;
  outlined destroy of NSObject?(v0 + 432, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMR);

  outlined init with copy of MLS.OutgoingEventState?(v0 + 144, v0 + 504, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMR);

  v7 = v1;
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.error.getter();
  outlined destroy of NSObject?(v0 + 144, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMR);

  if (os_log_type_enabled(v8, v9))
  {
    v10 = *(v0 + 832);
    v11 = *(v0 + 744);
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v32 = v14;
    *v12 = 136315650;
    v15 = *(v0 + 144);
    v16 = *(v0 + 152);

    v17 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v15, v16, &v32);

    *(v12 + 4) = v17;
    *(v12 + 12) = 2112;
    v18 = v10;
    v19 = _swift_stdlib_bridgeErrorToNSError();
    *(v12 + 14) = v19;
    *v13 = v19;
    *(v12 + 22) = 2080;
    v20 = *(v11 + direct field offset for MLS.XPCClientCoordinator.uniqueClientIdentifier);
    v21 = *(v11 + direct field offset for MLS.XPCClientCoordinator.uniqueClientIdentifier + 8);

    strcpy(v33, "EncryptedRCS.");
    HIWORD(v33[1]) = -4864;
    MEMORY[0x2667545A0](v20, v21);

    v22 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v33[0], v33[1], &v32);

    *(v12 + 24) = v22;
    _os_log_impl(&dword_264F1F000, v8, v9, "XPCClientCoordinator createGroup failed { identifier: %s, error: %@, client: %s }", v12, 0x20u);
    outlined destroy of NSObject?(v13, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x266755550](v13, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x266755550](v14, -1, -1);
    MEMORY[0x266755550](v12, -1, -1);
  }

  else
  {
    v23 = *(v0 + 744);
  }

  v24 = *(v0 + 832);
  v25 = *(v0 + 816);
  v26 = *(v0 + 808);
  v27 = *(v0 + 768);
  v28 = *(v0 + 760);
  swift_willThrow();

  v29 = *(v0 + 8);
  v30 = *(v0 + 832);

  return v29();
}

uint64_t closure #1 in MLS.XPCClientCoordinator.createGroup(identifier:otherMembers:context:)@<X0>(__int128 *a1@<X2>, uint64_t a2@<X3>, uint64_t *a3@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay15SecureMessaging3MLSO9AllMemberOGMd, &_sSay15SecureMessaging3MLSO9AllMemberOGMR);
  lazy protocol witness table accessor for type [MLS.AllMember] and conformance <A> [A]();
  result = dispatch thunk of JSONEncoder.encode<A>(_:)();
  if (!v3)
  {
    v9 = result;
    v10 = v8;
    v20 = a1[2];
    v21 = a1[3];
    v22 = *(a1 + 8);
    v17 = *a1;
    v19 = a1[1];
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMR);
    lazy protocol witness table accessor for type MLS.KeyPackageRetrievalResult<MLS.AllMember> and conformance MLS.KeyPackageRetrievalResult<A>(&lazy protocol witness table cache variable for type MLS.GroupCreationContext<Data> and conformance MLS.GroupCreationContext<A>, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMR);
    v11 = dispatch thunk of JSONEncoder.encode<A>(_:)();
    v13 = v12;
    v18 = *(a2 + direct field offset for MLS.XPCClientCoordinator.uniqueClientIdentifier);
    lazy protocol witness table accessor for type MLS.UniqueClientIdentifier and conformance MLS.UniqueClientIdentifier();

    v14 = dispatch thunk of JSONEncoder.encode<A>(_:)();
    v16 = v15;

    *a3 = v14;
    a3[1] = v16;
    a3[2] = v9;
    a3[3] = v10;
    a3[4] = v11;
    a3[5] = v13;
  }

  return result;
}

uint64_t closure #3 in MLS.XPCClientCoordinator.createGroup(identifier:otherMembers:context:)(id *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = a2[2];
  v10 = a2[3];
  v11 = a2[4];
  v12 = a2[5];
  v23 = *a2;
  v21 = *a1;
  v22 = a2[1];
  outlined copy of Data._Representation(*a2, v22);
  v20 = v9;
  outlined copy of Data._Representation(v9, v10);
  outlined copy of Data._Representation(v11, v12);
  isa = Data._bridgeToObjectiveC()().super.isa;
  v14 = MEMORY[0x266754510](a5, a6);
  v15 = Data._bridgeToObjectiveC()().super.isa;
  v16 = Data._bridgeToObjectiveC()().super.isa;
  aBlock[4] = a3;
  aBlock[5] = a4;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed Data?, @guaranteed Data?) -> ();
  aBlock[3] = &block_descriptor_279;
  v17 = _Block_copy(aBlock);

  [v21 createGroupWithUniqueClientIdentifier:isa identifier:v14 otherMembers:v15 groupCreationContext:v16 completion:v17];
  _Block_release(v17);

  outlined consume of Data._Representation(v11, v12);
  outlined consume of Data._Representation(v20, v10);
  return outlined consume of Data._Representation(v23, v22);
}

uint64_t MLS.XPCClientCoordinator.joinGroup(identifier:otherMembers:welcome:context:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, _OWORD *a5, uint64_t a6)
{
  *(v7 + 808) = v6;
  *(v7 + 800) = a4;
  *(v7 + 792) = a3;
  *(v7 + 784) = a2;
  *(v7 + 776) = a1;
  v10 = type metadata accessor for MetricCollector.Event();
  *(v7 + 816) = v10;
  v11 = *(*(v10 - 8) + 64) + 15;
  *(v7 + 824) = swift_task_alloc();
  *(v7 + 832) = swift_task_alloc();
  v12 = a5[1];
  *(v7 + 648) = *a5;
  *(v7 + 664) = v12;
  *(v7 + 680) = a5[2];
  *(v7 + 690) = *(a5 + 42);
  v13 = *(a6 + 48);
  *(v7 + 176) = *(a6 + 32);
  *(v7 + 192) = v13;
  *(v7 + 208) = *(a6 + 64);
  v14 = *(a6 + 16);
  *(v7 + 144) = *a6;
  *(v7 + 160) = v14;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v15 = static MLSActor.shared;
  *(v7 + 840) = static MLSActor.shared;

  return MEMORY[0x2822009F8](MLS.XPCClientCoordinator.joinGroup(identifier:otherMembers:welcome:context:), v15, 0);
}

void MLS.XPCClientCoordinator.joinGroup(identifier:otherMembers:welcome:context:)()
{
  v1 = *(v0 + 808);
  *(v0 + 848) = direct field offset for MLS.XPCClientCoordinator.logger;
  outlined init with copy of MLS.OutgoingEventState?(v0 + 144, v0 + 288, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMR);

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  outlined destroy of NSObject?(v0 + 144, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMR);
  v4 = os_log_type_enabled(v2, v3);
  v5 = *(v0 + 808);
  if (v4)
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v42 = v7;
    *v6 = 136315394;
    v8 = *(v0 + 144);
    v9 = *(v0 + 152);

    v10 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v8, v9, &v42);

    *(v6 + 4) = v10;
    *(v6 + 12) = 2080;
    v11 = *(v5 + direct field offset for MLS.XPCClientCoordinator.uniqueClientIdentifier);
    v12 = *(v5 + direct field offset for MLS.XPCClientCoordinator.uniqueClientIdentifier + 8);
    strcpy(v43, "EncryptedRCS.");
    HIWORD(v43[1]) = -4864;

    MEMORY[0x2667545A0](v11, v12);

    v13 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v43[0], v43[1], &v42);

    *(v6 + 14) = v13;
    _os_log_impl(&dword_264F1F000, v2, v3, "XPCClientCoordinator joinGroup { identifier: %s, client: %s }", v6, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x266755550](v7, -1, -1);
    MEMORY[0x266755550](v6, -1, -1);
  }

  else
  {
  }

  v14 = *(v0 + 832);
  v15 = *(v0 + 824);
  v16 = *(v0 + 816);
  v17 = *(v0 + 808);
  v18 = *(v0 + 800);
  v41 = *(v0 + 792);
  v39 = *(v0 + 784);
  v19 = *(v0 + 160);
  *(v0 + 712) = *(v0 + 144);
  *(v0 + 728) = v19;
  v20 = *(v0 + 176);
  v21 = *(v0 + 200);
  *(v0 + 744) = *(v0 + 184);
  *(v0 + 760) = v21;
  outlined init with copy of MLS.OutgoingEventState?(v0 + 144, v0 + 360, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMR);
  Date.init()();
  v22 = *(v16 + 20);
  v23 = type metadata accessor for Date();
  (*(*(v23 - 8) + 56))(v14 + v22, 1, 1, v23);
  outlined init with take of MetricCollector.Event(v14, v15);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v43[0] = v20;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v15, 0x5864726177726F46, 0xEA00000000004350, isUniquelyReferenced_nonNull_native);
  v25 = v43[0];
  *(v0 + 856) = v43[0];

  v26 = *(v0 + 728);
  *(v0 + 216) = *(v0 + 712);
  *(v0 + 232) = v26;
  *(v0 + 248) = v25;
  v27 = *(v0 + 760);
  *(v0 + 256) = *(v0 + 744);
  *(v0 + 272) = v27;
  v28 = *(*(v17 + direct field offset for MLS.XPCClientCoordinator.xpcClient) + OBJC_IVAR____TtCO15SecureMessaging8XPCUtils9XPCClient_deliveryInterface);
  *(v0 + 864) = v28;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SecureMessaging3MLSO29GroupCreationProcessedContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO29GroupCreationProcessedContextVy_10Foundation4DataVGMR);
  v30 = swift_task_alloc();
  *(v0 + 872) = v30;
  v30[2] = v18;
  v30[3] = v0 + 648;
  v30[4] = v0 + 216;
  v30[5] = v17;
  v31 = swift_task_alloc();
  *(v0 + 880) = v31;
  *(v31 + 16) = v39;
  *(v31 + 24) = v41;
  v32 = *(*v28 + 360);

  v40 = v32 + *v32;
  v33 = v32[1];
  v34 = swift_task_alloc();
  *(v0 + 888) = v34;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DataV_A3CtMd, &_s10Foundation4DataV_A3CtMR);
  v36 = lazy protocol witness table accessor for type MLS.KeyPackageRetrievalResult<MLS.AllMember> and conformance MLS.KeyPackageRetrievalResult<A>(&lazy protocol witness table cache variable for type MLS.GroupCreationProcessedContext<Data> and conformance MLS.GroupCreationProcessedContext<A>, &_s15SecureMessaging3MLSO29GroupCreationProcessedContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO29GroupCreationProcessedContextVy_10Foundation4DataVGMR);
  v37 = lazy protocol witness table accessor for type MLS.KeyPackageRetrievalResult<MLS.AllMember> and conformance MLS.KeyPackageRetrievalResult<A>(&lazy protocol witness table cache variable for type MLS.GroupCreationProcessedContext<Data> and conformance MLS.GroupCreationProcessedContext<A>, &_s15SecureMessaging3MLSO29GroupCreationProcessedContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO29GroupCreationProcessedContextVy_10Foundation4DataVGMR);
  v38 = lazy protocol witness table accessor for type MLS.GroupCreationError and conformance MLS.GroupCreationError();
  *v34 = v0;
  v34[1] = MLS.XPCClientCoordinator.joinGroup(identifier:otherMembers:welcome:context:);
  v51 = v37;
  v52 = v38;
  v49 = v35;
  v50 = v36;
  v47 = v29;
  v48 = &type metadata for MLS.GroupCreationError;
  v45 = partial apply for closure #3 in MLS.XPCClientCoordinator.joinGroup(identifier:otherMembers:welcome:context:);
  v46 = v31;

  __asm { BRAA            X8, X16 }
}

uint64_t MLS.XPCClientCoordinator.joinGroup(identifier:otherMembers:welcome:context:)()
{
  v2 = *v1;
  v3 = *(*v1 + 888);
  v4 = *v1;
  *(*v1 + 896) = v0;

  v5 = *(v2 + 864);
  v6 = *(v2 + 840);

  if (v0)
  {
    v7 = MLS.XPCClientCoordinator.joinGroup(identifier:otherMembers:welcome:context:);
  }

  else
  {
    v7 = MLS.XPCClientCoordinator.joinGroup(identifier:otherMembers:welcome:context:);
  }

  return MEMORY[0x2822009F8](v7, v6, 0);
}

{
  v1 = *(v0 + 880);
  v2 = *(v0 + 872);
  v3 = *(v0 + 856);
  v4 = *(v0 + 832);
  v5 = *(v0 + 824);
  v6 = *(v0 + 776);
  v7 = *(v0 + 728);
  *(v0 + 576) = *(v0 + 712);
  *(v0 + 592) = v7;
  *(v0 + 608) = v3;
  v8 = *(v0 + 760);
  *(v0 + 616) = *(v0 + 744);
  *(v0 + 632) = v8;
  outlined destroy of NSObject?(v0 + 576, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMR);
  v9 = *(v0 + 64);
  v11 = *(v0 + 16);
  v10 = *(v0 + 32);
  v6[2] = *(v0 + 48);
  v6[3] = v9;
  *v6 = v11;
  v6[1] = v10;
  v12 = *(v0 + 128);
  v14 = *(v0 + 80);
  v13 = *(v0 + 96);
  v6[6] = *(v0 + 112);
  v6[7] = v12;
  v6[4] = v14;
  v6[5] = v13;

  v15 = *(v0 + 8);

  return v15();
}

{
  v34 = v0;
  v1 = *(v0 + 896);
  v2 = *(v0 + 856);
  v3 = *(v0 + 848);
  v4 = *(v0 + 808);
  v5 = *(v0 + 728);
  *(v0 + 432) = *(v0 + 712);
  *(v0 + 448) = v5;
  *(v0 + 464) = v2;
  v6 = *(v0 + 760);
  *(v0 + 472) = *(v0 + 744);
  *(v0 + 488) = v6;
  outlined destroy of NSObject?(v0 + 432, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMR);

  outlined init with copy of MLS.OutgoingEventState?(v0 + 144, v0 + 504, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMR);

  v7 = v1;
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.error.getter();
  outlined destroy of NSObject?(v0 + 144, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMR);

  if (os_log_type_enabled(v8, v9))
  {
    v10 = *(v0 + 896);
    v11 = *(v0 + 808);
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v32 = v14;
    *v12 = 136315650;
    v15 = *(v0 + 144);
    v16 = *(v0 + 152);

    v17 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v15, v16, &v32);

    *(v12 + 4) = v17;
    *(v12 + 12) = 2112;
    v18 = v10;
    v19 = _swift_stdlib_bridgeErrorToNSError();
    *(v12 + 14) = v19;
    *v13 = v19;
    *(v12 + 22) = 2080;
    v20 = *(v11 + direct field offset for MLS.XPCClientCoordinator.uniqueClientIdentifier);
    v21 = *(v11 + direct field offset for MLS.XPCClientCoordinator.uniqueClientIdentifier + 8);

    strcpy(v33, "EncryptedRCS.");
    HIWORD(v33[1]) = -4864;
    MEMORY[0x2667545A0](v20, v21);

    v22 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v33[0], v33[1], &v32);

    *(v12 + 24) = v22;
    _os_log_impl(&dword_264F1F000, v8, v9, "XPCClientCoordinator joinGroup failed { identifier: %s, error: %@, client: %s }", v12, 0x20u);
    outlined destroy of NSObject?(v13, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x266755550](v13, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x266755550](v14, -1, -1);
    MEMORY[0x266755550](v12, -1, -1);
  }

  else
  {
    v23 = *(v0 + 808);
  }

  v24 = *(v0 + 896);
  v25 = *(v0 + 880);
  v26 = *(v0 + 872);
  v27 = *(v0 + 832);
  v28 = *(v0 + 824);
  swift_willThrow();

  v29 = *(v0 + 8);
  v30 = *(v0 + 896);

  return v29();
}

uint64_t closure #1 in MLS.XPCClientCoordinator.joinGroup(identifier:otherMembers:welcome:context:)@<X0>(__int128 *a1@<X2>, __int128 *a2@<X3>, uint64_t a3@<X4>, uint64_t *a4@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay15SecureMessaging3MLSO9AllMemberOGMd, &_sSay15SecureMessaging3MLSO9AllMemberOGMR);
  lazy protocol witness table accessor for type [MLS.AllMember] and conformance <A> [A]();
  result = dispatch thunk of JSONEncoder.encode<A>(_:)();
  if (!v4)
  {
    v11 = result;
    v28 = v10;
    v21 = *a1;
    v24 = a1[1];
    *v26 = a1[2];
    *&v26[10] = *(a1 + 42);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SecureMessaging3MLSO15IncomingMessageVy_AC9AllMemberOGMd, &_s15SecureMessaging3MLSO15IncomingMessageVy_AC9AllMemberOGMR);
    lazy protocol witness table accessor for type MLS.KeyPackageRetrievalResult<MLS.AllMember> and conformance MLS.KeyPackageRetrievalResult<A>(&lazy protocol witness table cache variable for type MLS.IncomingMessage<MLS.AllMember> and conformance MLS.IncomingMessage<A>, &_s15SecureMessaging3MLSO15IncomingMessageVy_AC9AllMemberOGMd, &_s15SecureMessaging3MLSO15IncomingMessageVy_AC9AllMemberOGMR);
    v12 = dispatch thunk of JSONEncoder.encode<A>(_:)();
    v20 = v13;
    *v26 = a2[2];
    *&v26[16] = a2[3];
    v27 = *(a2 + 8);
    v22 = *a2;
    v25 = a2[1];
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMR);
    lazy protocol witness table accessor for type MLS.KeyPackageRetrievalResult<MLS.AllMember> and conformance MLS.KeyPackageRetrievalResult<A>(&lazy protocol witness table cache variable for type MLS.GroupCreationContext<Data> and conformance MLS.GroupCreationContext<A>, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMR);
    v14 = dispatch thunk of JSONEncoder.encode<A>(_:)();
    v19 = v15;
    v23 = *(a3 + direct field offset for MLS.XPCClientCoordinator.uniqueClientIdentifier);
    lazy protocol witness table accessor for type MLS.UniqueClientIdentifier and conformance MLS.UniqueClientIdentifier();

    v16 = dispatch thunk of JSONEncoder.encode<A>(_:)();
    v18 = v17;

    *a4 = v16;
    a4[1] = v18;
    a4[2] = v11;
    a4[3] = v28;
    a4[4] = v12;
    a4[5] = v20;
    a4[6] = v14;
    a4[7] = v19;
  }

  return result;
}

uint64_t closure #3 in MLS.XPCClientCoordinator.joinGroup(identifier:otherMembers:welcome:context:)(id *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v27 = *a1;
  v8 = a2[2];
  v7 = a2[3];
  v10 = a2[4];
  v9 = a2[5];
  v12 = a2[6];
  v11 = a2[7];
  v29 = a2[1];
  v30 = *a2;
  outlined copy of Data._Representation(*a2, v29);
  v28 = v7;
  outlined copy of Data._Representation(v8, v7);
  v26 = v9;
  outlined copy of Data._Representation(v10, v9);
  v13 = v12;
  v14 = v12;
  v15 = v11;
  outlined copy of Data._Representation(v14, v11);
  isa = Data._bridgeToObjectiveC()().super.isa;
  v16 = MEMORY[0x266754510](a5, a6);
  v17 = Data._bridgeToObjectiveC()().super.isa;
  v18 = Data._bridgeToObjectiveC()().super.isa;
  v19 = Data._bridgeToObjectiveC()().super.isa;
  aBlock[4] = a3;
  aBlock[5] = a4;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed Data?, @guaranteed Data?) -> ();
  aBlock[3] = &block_descriptor_276;
  v20 = _Block_copy(aBlock);

  [v27 joinGroupWithUniqueClientIdentifier:isa identifier:v16 otherMembers:v17 welcome:v18 groupCreationContext:v19 completion:v20];
  _Block_release(v20);

  outlined consume of Data._Representation(v13, v15);
  outlined consume of Data._Representation(v10, v26);
  outlined consume of Data._Representation(v8, v28);
  return outlined consume of Data._Representation(v30, v29);
}

uint64_t MLS.XPCClientCoordinator.delete(group:context:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v5 + 48) = a3;
  *(v5 + 56) = v4;
  *(v5 + 32) = a1;
  *(v5 + 40) = a2;
  v6 = *(a4 + 8);
  *(v5 + 64) = *a4;
  *(v5 + 72) = v6;
  *(v5 + 80) = *(a4 + 16);
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v7 = static MLSActor.shared;
  *(v5 + 96) = static MLSActor.shared;

  return MEMORY[0x2822009F8](MLS.XPCClientCoordinator.delete(group:context:), v7, 0);
}

void MLS.XPCClientCoordinator.delete(group:context:)()
{
  v2 = v0[10];
  v1 = v0[11];
  v3 = v0[9];
  v4 = v0[7];
  v0[13] = direct field offset for MLS.XPCClientCoordinator.logger;

  outlined copy of Data?(v2, v1);

  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();

  outlined consume of Data?(v2, v1);
  if (os_log_type_enabled(v5, v6))
  {
    v8 = v0[8];
    v7 = v0[9];
    v9 = v0[7];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v35 = v11;
    *v10 = 136315394;

    v12 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v8, v7, &v35);

    *(v10 + 4) = v12;
    *(v10 + 12) = 2080;
    v13 = *(v9 + direct field offset for MLS.XPCClientCoordinator.uniqueClientIdentifier);
    v14 = *(v9 + direct field offset for MLS.XPCClientCoordinator.uniqueClientIdentifier + 8);
    strcpy(v36, "EncryptedRCS.");
    HIWORD(v36[1]) = -4864;

    MEMORY[0x2667545A0](v13, v14);

    v15 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v36[0], v36[1], &v35);

    *(v10 + 14) = v15;
    _os_log_impl(&dword_264F1F000, v5, v6, "XPCClientCoordinator delete { identifier: %s, client: %s }", v10, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x266755550](v11, -1, -1);
    MEMORY[0x266755550](v10, -1, -1);
  }

  else
  {
    v16 = v0[7];
  }

  v18 = v0[10];
  v17 = v0[11];
  v34 = *(v0 + 4);
  v20 = v0[6];
  v19 = v0[7];
  v21 = v0[5];
  v22 = *(*(v19 + direct field offset for MLS.XPCClientCoordinator.xpcClient) + OBJC_IVAR____TtCO15SecureMessaging8XPCUtils9XPCClient_deliveryInterface);
  v0[14] = v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SecureMessaging3MLSO29GroupDeletionProcessedContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO29GroupDeletionProcessedContextVy_10Foundation4DataVGMR);
  v24 = swift_task_alloc();
  v0[15] = v24;
  *(v24 + 16) = v34;
  *(v24 + 32) = v18;
  *(v24 + 40) = v17;
  *(v24 + 48) = v19;
  v25 = swift_task_alloc();
  v0[16] = v25;
  *(v25 + 16) = v21;
  *(v25 + 24) = v20;
  v26 = *(*v22 + 360);

  v33 = v26 + *v26;
  v27 = v26[1];
  v28 = swift_task_alloc();
  v0[17] = v28;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DataV_ACtMd, &_s10Foundation4DataV_ACtMR);
  v30 = lazy protocol witness table accessor for type MLS.KeyPackageRetrievalResult<MLS.AllMember> and conformance MLS.KeyPackageRetrievalResult<A>(&lazy protocol witness table cache variable for type MLS.GroupDeletionProcessedContext<Data> and conformance MLS.GroupDeletionProcessedContext<A>, &_s15SecureMessaging3MLSO29GroupDeletionProcessedContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO29GroupDeletionProcessedContextVy_10Foundation4DataVGMR);
  v31 = lazy protocol witness table accessor for type MLS.KeyPackageRetrievalResult<MLS.AllMember> and conformance MLS.KeyPackageRetrievalResult<A>(&lazy protocol witness table cache variable for type MLS.GroupDeletionProcessedContext<Data> and conformance MLS.GroupDeletionProcessedContext<A>, &_s15SecureMessaging3MLSO29GroupDeletionProcessedContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO29GroupDeletionProcessedContextVy_10Foundation4DataVGMR);
  v32 = lazy protocol witness table accessor for type MLS.GroupDeletionError and conformance MLS.GroupDeletionError();
  *v28 = v0;
  v28[1] = MLS.XPCClientCoordinator.delete(group:context:);
  v44 = v31;
  v45 = v32;
  v42 = v29;
  v43 = v30;
  v40 = v23;
  v41 = &type metadata for MLS.GroupDeletionError;
  v38 = partial apply for closure #3 in MLS.XPCClientCoordinator.delete(group:context:);
  v39 = v25;

  __asm { BRAA            X8, X16 }
}

uint64_t MLS.XPCClientCoordinator.delete(group:context:)()
{
  v2 = *v1;
  v3 = *(*v1 + 136);
  v11 = *v1;
  *(*v1 + 144) = v0;

  if (v0)
  {
    v4 = v2[12];
    v5 = MLS.XPCClientCoordinator.delete(group:context:);
  }

  else
  {
    v7 = v2[15];
    v6 = v2[16];
    v8 = v2[14];
    v9 = v2[12];

    v5 = MLS.XPCClientCoordinator.delete(group:context:);
    v4 = v9;
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

{
  v33 = v0;
  v1 = v0[18];
  v2 = v0[15];
  v3 = v0[16];
  v5 = v0[13];
  v4 = v0[14];
  v7 = v0[10];
  v6 = v0[11];
  v8 = v0[9];
  v9 = v0[7];

  outlined copy of Data?(v7, v6);

  v10 = v1;
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.error.getter();

  outlined consume of Data?(v7, v6);

  if (os_log_type_enabled(v11, v12))
  {
    v13 = v0[18];
    v15 = v0[8];
    v14 = v0[9];
    v16 = v0[7];
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v31 = v19;
    *v17 = 136315650;

    v20 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v15, v14, &v31);

    *(v17 + 4) = v20;
    *(v17 + 12) = 2112;
    v21 = v13;
    v22 = _swift_stdlib_bridgeErrorToNSError();
    *(v17 + 14) = v22;
    *v18 = v22;
    *(v17 + 22) = 2080;
    v23 = *(v16 + direct field offset for MLS.XPCClientCoordinator.uniqueClientIdentifier);
    v24 = *(v16 + direct field offset for MLS.XPCClientCoordinator.uniqueClientIdentifier + 8);

    strcpy(v32, "EncryptedRCS.");
    HIWORD(v32[1]) = -4864;
    MEMORY[0x2667545A0](v23, v24);

    v25 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v32[0], v32[1], &v31);

    *(v17 + 24) = v25;
    _os_log_impl(&dword_264F1F000, v11, v12, "XPCClientCoordinator delete failed { identifier: %s, error: %@, client: %s }", v17, 0x20u);
    outlined destroy of NSObject?(v18, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x266755550](v18, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x266755550](v19, -1, -1);
    MEMORY[0x266755550](v17, -1, -1);
  }

  else
  {
    v26 = v0[7];
  }

  v27 = v0[18];
  swift_willThrow();
  v28 = v0[1];
  v29 = v0[18];

  return v28();
}

uint64_t closure #1 in MLS.XPCClientCoordinator.delete(group:context:)@<X0>(uint64_t a1@<X5>, uint64_t *a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SecureMessaging3MLSO20GroupDeletionContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO20GroupDeletionContextVy_10Foundation4DataVGMR);
  lazy protocol witness table accessor for type MLS.KeyPackageRetrievalResult<MLS.AllMember> and conformance MLS.KeyPackageRetrievalResult<A>(&lazy protocol witness table cache variable for type MLS.GroupDeletionContext<Data> and conformance MLS.GroupDeletionContext<A>, &_s15SecureMessaging3MLSO20GroupDeletionContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO20GroupDeletionContextVy_10Foundation4DataVGMR);
  result = dispatch thunk of JSONEncoder.encode<A>(_:)();
  if (!v2)
  {
    v7 = result;
    v8 = v6;
    v12 = *(a1 + direct field offset for MLS.XPCClientCoordinator.uniqueClientIdentifier);
    v13 = *(a1 + direct field offset for MLS.XPCClientCoordinator.uniqueClientIdentifier + 8);
    lazy protocol witness table accessor for type MLS.UniqueClientIdentifier and conformance MLS.UniqueClientIdentifier();

    v9 = dispatch thunk of JSONEncoder.encode<A>(_:)();
    v11 = v10;

    *a2 = v9;
    a2[1] = v11;
    a2[2] = v7;
    a2[3] = v8;
  }

  return result;
}

uint64_t MLS.XPCClientCoordinator.group(identifier:context:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5[17] = a3;
  v5[18] = v4;
  v5[15] = a1;
  v5[16] = a2;
  v6 = a4[1];
  v5[19] = *a4;
  v5[20] = v6;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v7 = static MLSActor.shared;
  v5[21] = static MLSActor.shared;

  return MEMORY[0x2822009F8](MLS.XPCClientCoordinator.group(identifier:context:), v7, 0);
}

void MLS.XPCClientCoordinator.group(identifier:context:)()
{
  v1 = v0[20];
  v2 = v0[18];
  v0[22] = direct field offset for MLS.XPCClientCoordinator.logger;

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v6 = v0[19];
    v5 = v0[20];
    v7 = v0[18];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v30 = v9;
    *v8 = 136315394;
    *(v8 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v6, v5, &v30);
    *(v8 + 12) = 2080;
    v10 = *(v7 + direct field offset for MLS.XPCClientCoordinator.uniqueClientIdentifier);
    v11 = *(v7 + direct field offset for MLS.XPCClientCoordinator.uniqueClientIdentifier + 8);
    strcpy(v31, "EncryptedRCS.");
    HIWORD(v31[1]) = -4864;

    MEMORY[0x2667545A0](v10, v11);

    v12 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v31[0], v31[1], &v30);

    *(v8 + 14) = v12;
    _os_log_impl(&dword_264F1F000, v3, v4, "XPCClientCoordinator group { identifier: %s, client: %s }", v8, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x266755550](v9, -1, -1);
    MEMORY[0x266755550](v8, -1, -1);
  }

  else
  {
    v13 = v0[18];
  }

  v15 = v0[19];
  v14 = v0[20];
  v17 = v0[17];
  v16 = v0[18];
  v18 = v0[16];
  v19 = *(*(v16 + direct field offset for MLS.XPCClientCoordinator.xpcClient) + OBJC_IVAR____TtCO15SecureMessaging8XPCUtils9XPCClient_deliveryInterface);
  v0[23] = v19;
  v20 = swift_task_alloc();
  v0[24] = v20;
  v20[2] = v15;
  v20[3] = v14;
  v20[4] = v16;
  v21 = swift_task_alloc();
  v0[25] = v21;
  *(v21 + 16) = v18;
  *(v21 + 24) = v17;
  v22 = *(*v19 + 360);

  v29 = v22 + *v22;
  v23 = v22[1];
  v24 = swift_task_alloc();
  v0[26] = v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DataV_ACtMd, &_s10Foundation4DataV_ACtMR);
  v26 = lazy protocol witness table accessor for type MLS.Group and conformance MLS.Group();
  v27 = lazy protocol witness table accessor for type MLS.Group and conformance MLS.Group();
  Error = lazy protocol witness table accessor for type MLS.GroupFetchError and conformance MLS.GroupFetchError();
  *v24 = v0;
  v24[1] = MLS.XPCClientCoordinator.group(identifier:context:);
  v39 = v27;
  v40 = Error;
  v37 = v25;
  v38 = v26;
  v36 = &type metadata for MLS.GroupFetchError;
  v34 = v21;
  v35 = &type metadata for MLS.Group;
  v33 = partial apply for closure #3 in MLS.XPCClientCoordinator.group(identifier:context:);

  __asm { BRAA            X8, X16 }
}

uint64_t MLS.XPCClientCoordinator.group(identifier:context:)()
{
  v2 = *v1;
  v3 = *(*v1 + 208);
  v9 = *v1;
  *(*v1 + 216) = v0;

  if (v0)
  {
    v4 = *(v2 + 168);
    v5 = MLS.XPCClientCoordinator.group(identifier:context:);
  }

  else
  {
    v6 = *(v2 + 184);
    v7 = *(v2 + 168);

    v5 = MLS.XPCClientCoordinator.group(identifier:context:);
    v4 = v7;
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

{
  v2 = *(v0 + 192);
  v1 = *(v0 + 200);
  v4 = *(v0 + 80);
  v3 = *(v0 + 96);
  v5 = *(v0 + 120);
  v6 = *(v0 + 64);
  *(v5 + 96) = *(v0 + 112);
  *(v5 + 64) = v4;
  *(v5 + 80) = v3;
  *(v5 + 48) = v6;
  v7 = *(v0 + 16);
  v8 = *(v0 + 48);
  *(v5 + 16) = *(v0 + 32);
  *(v5 + 32) = v8;
  *v5 = v7;

  v9 = *(v0 + 8);

  return v9();
}

{
  v30 = v0;
  v1 = v0[27];
  v2 = v0[24];
  v3 = v0[25];
  v5 = v0[22];
  v4 = v0[23];
  v6 = v0[20];
  v7 = v0[18];

  swift_retain_n();

  v8 = v1;
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = v0[27];
    v13 = v0[19];
    v12 = v0[20];
    v14 = v0[18];
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v28 = v17;
    *v15 = 136315650;
    *(v15 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13, v12, &v28);
    *(v15 + 12) = 2112;
    v18 = v11;
    v19 = _swift_stdlib_bridgeErrorToNSError();
    *(v15 + 14) = v19;
    *v16 = v19;
    *(v15 + 22) = 2080;
    v20 = *(v14 + direct field offset for MLS.XPCClientCoordinator.uniqueClientIdentifier);
    v21 = *(v14 + direct field offset for MLS.XPCClientCoordinator.uniqueClientIdentifier + 8);

    strcpy(v29, "EncryptedRCS.");
    HIWORD(v29[1]) = -4864;
    MEMORY[0x2667545A0](v20, v21);

    v22 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v29[0], v29[1], &v28);

    *(v15 + 24) = v22;
    _os_log_impl(&dword_264F1F000, v9, v10, "XPCClientCoordinator group failed { identifier: %s, error: %@, client: %s }", v15, 0x20u);
    outlined destroy of NSObject?(v16, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x266755550](v16, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x266755550](v17, -1, -1);
    MEMORY[0x266755550](v15, -1, -1);
  }

  else
  {
    v23 = v0[18];
  }

  v24 = v0[27];
  swift_willThrow();
  v25 = v0[1];
  v26 = v0[27];

  return v25();
}

uint64_t closure #1 in MLS.XPCClientCoordinator.group(identifier:context:)@<X0>(uint64_t a1@<X3>, uint64_t *a2@<X8>)
{
  lazy protocol witness table accessor for type MLS.GroupFetchContext and conformance MLS.GroupFetchContext();
  result = dispatch thunk of JSONEncoder.encode<A>(_:)();
  if (!v2)
  {
    v7 = result;
    v8 = v6;
    v12 = *(a1 + direct field offset for MLS.XPCClientCoordinator.uniqueClientIdentifier);
    v13 = *(a1 + direct field offset for MLS.XPCClientCoordinator.uniqueClientIdentifier + 8);
    lazy protocol witness table accessor for type MLS.UniqueClientIdentifier and conformance MLS.UniqueClientIdentifier();

    v9 = dispatch thunk of JSONEncoder.encode<A>(_:)();
    v11 = v10;

    *a2 = v9;
    a2[1] = v11;
    a2[2] = v7;
    a2[3] = v8;
  }

  return result;
}

uint64_t MLS.XPCClientCoordinator.update(groupDetails:forGroup:)(_OWORD *a1, uint64_t a2, uint64_t a3)
{
  *(v4 + 24) = a3;
  *(v4 + 32) = v3;
  *(v4 + 16) = a2;
  *(v4 + 40) = *a1;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v5 = static MLSActor.shared;
  *(v4 + 56) = static MLSActor.shared;

  return MEMORY[0x2822009F8](MLS.XPCClientCoordinator.update(groupDetails:forGroup:), v5, 0);
}

void MLS.XPCClientCoordinator.update(groupDetails:forGroup:)()
{
  v2 = v0[3];
  v1 = v0[4];
  v0[8] = direct field offset for MLS.XPCClientCoordinator.logger;

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v6 = v0[2];
    v5 = v0[3];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v23 = v8;
    *v7 = 136315138;
    *(v7 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v6, v5, &v23);
    _os_log_impl(&dword_264F1F000, v3, v4, "XPCClientCoordinator updateGroupDetails { group: %s }", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v8);
    MEMORY[0x266755550](v8, -1, -1);
    MEMORY[0x266755550](v7, -1, -1);
  }

  v10 = v0[5];
  v9 = v0[6];
  v12 = v0[3];
  v11 = v0[4];
  v13 = v0[2];
  v14 = *(*(v11 + direct field offset for MLS.XPCClientCoordinator.xpcClient) + OBJC_IVAR____TtCO15SecureMessaging8XPCUtils9XPCClient_deliveryInterface);
  v0[9] = v14;
  v15 = swift_task_alloc();
  v0[10] = v15;
  v15[2] = v11;
  v15[3] = v10;
  v15[4] = v9;
  v16 = swift_task_alloc();
  v0[11] = v16;
  *(v16 + 16) = v13;
  *(v16 + 24) = v12;
  v17 = *(*v14 + 360);

  v22 = v17 + *v17;
  v18 = v17[1];
  v19 = swift_task_alloc();
  v0[12] = v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DataV_ACtMd, &_s10Foundation4DataV_ACtMR);
  updated = lazy protocol witness table accessor for type MLS.GroupUpdateError and conformance MLS.GroupUpdateError();
  *v19 = v0;
  v19[1] = MLS.XPCClientCoordinator.update(groupDetails:forGroup:);
  v31 = MEMORY[0x277D839B8];
  v32 = updated;
  v29 = v20;
  v30 = MEMORY[0x277D839D0];
  v28 = &type metadata for MLS.GroupUpdateError;
  v26 = v16;
  v27 = MEMORY[0x277D839B0];
  v25 = partial apply for closure #3 in MLS.XPCClientCoordinator.update(groupDetails:forGroup:);

  __asm { BRAA            X8, X16 }
}

uint64_t MLS.XPCClientCoordinator.update(groupDetails:forGroup:)()
{
  v2 = *v1;
  v3 = *(*v1 + 96);
  v11 = *v1;
  *(*v1 + 104) = v0;

  if (v0)
  {
    v4 = v2[7];
    v5 = MLS.XPCClientCoordinator.update(groupDetails:forGroup:);
  }

  else
  {
    v7 = v2[10];
    v6 = v2[11];
    v8 = v2[9];
    v9 = v2[7];

    v5 = MLS.EventQueue.reenqueueAtFront(identifier:eventState:andBlockOnVersion:sendBlock:);
    v4 = v9;
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

{
  v30 = v0;
  v1 = v0[13];
  v2 = v0[10];
  v3 = v0[11];
  v5 = v0[8];
  v4 = v0[9];
  v7 = v0[3];
  v6 = v0[4];

  swift_retain_n();

  v8 = v1;
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = v0[13];
    v13 = v0[3];
    v12 = v0[4];
    v14 = v0[2];
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v28 = v17;
    *v15 = 136315650;
    *(v15 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v14, v13, &v28);
    *(v15 + 12) = 2112;
    v18 = v11;
    v19 = _swift_stdlib_bridgeErrorToNSError();
    *(v15 + 14) = v19;
    *v16 = v19;
    *(v15 + 22) = 2080;
    v20 = *(v12 + direct field offset for MLS.XPCClientCoordinator.uniqueClientIdentifier);
    v21 = *(v12 + direct field offset for MLS.XPCClientCoordinator.uniqueClientIdentifier + 8);

    strcpy(v29, "EncryptedRCS.");
    HIWORD(v29[1]) = -4864;
    MEMORY[0x2667545A0](v20, v21);

    v22 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v29[0], v29[1], &v28);

    *(v15 + 24) = v22;
    _os_log_impl(&dword_264F1F000, v9, v10, "XPCClientCoordinator updateGroupDetails failed { group: %s, error: %@, client: %s }", v15, 0x20u);
    outlined destroy of NSObject?(v16, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x266755550](v16, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x266755550](v17, -1, -1);
    MEMORY[0x266755550](v15, -1, -1);
  }

  else
  {
    v23 = v0[4];
  }

  v24 = v0[13];
  swift_willThrow();
  v25 = v0[1];
  v26 = v0[13];

  return v25();
}

uint64_t closure #1 in MLS.XPCClientCoordinator.update(groupDetails:forGroup:)@<X0>(uint64_t a1@<X1>, uint64_t *a2@<X8>)
{
  v4 = *(a1 + direct field offset for MLS.XPCClientCoordinator.uniqueClientIdentifier + 8);
  v10 = *(a1 + direct field offset for MLS.XPCClientCoordinator.uniqueClientIdentifier);
  lazy protocol witness table accessor for type MLS.UniqueClientIdentifier and conformance MLS.UniqueClientIdentifier();

  v5 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  v7 = v6;

  if (!v2)
  {
    lazy protocol witness table accessor for type MLS.GroupDetails and conformance MLS.GroupDetails();
    result = dispatch thunk of JSONEncoder.encode<A>(_:)();
    *a2 = v5;
    a2[1] = v7;
    a2[2] = result;
    a2[3] = v9;
  }

  return result;
}

uint64_t closure #3 in MLS.XPCClientCoordinator.update(groupDetails:forGroup:)(id *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v19 = *a1;
  v10 = *a2;
  v11 = a2[1];
  v12 = a2[2];
  v13 = a2[3];
  outlined copy of Data._Representation(*a2, v11);
  outlined copy of Data._Representation(v12, v13);
  isa = Data._bridgeToObjectiveC()().super.isa;
  v15 = Data._bridgeToObjectiveC()().super.isa;
  v16 = MEMORY[0x266754510](a5, a6);
  aBlock[4] = a3;
  aBlock[5] = a4;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed Data?, @guaranteed Data?) -> ();
  aBlock[3] = &block_descriptor_267;
  v17 = _Block_copy(aBlock);

  [v19 updateWithUniqueClientIdentifier:isa groupDetails:v15 forGroup:v16 completion:v17];
  _Block_release(v17);

  outlined consume of Data._Representation(v12, v13);
  return outlined consume of Data._Representation(v10, v11);
}

uint64_t MLS.XPCClientCoordinator.otherMembers(group:context:)(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  *(v4 + 24) = a1;
  *(v4 + 32) = a2;
  v5 = *a3;
  v6 = a3[1];
  *(v4 + 40) = v3;
  *(v4 + 48) = v5;
  *(v4 + 56) = v6;
  *(v4 + 120) = *(a3 + 16);
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v7 = static MLSActor.shared;
  *(v4 + 64) = static MLSActor.shared;

  return MEMORY[0x2822009F8](MLS.XPCClientCoordinator.otherMembers(group:context:), v7, 0);
}

void MLS.XPCClientCoordinator.otherMembers(group:context:)()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 40);
  *(v0 + 72) = direct field offset for MLS.XPCClientCoordinator.logger;

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v6 = *(v0 + 48);
    v5 = *(v0 + 56);
    v7 = *(v0 + 40);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v32 = v9;
    *v8 = 136315394;
    *(v8 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v6, v5, &v32);
    *(v8 + 12) = 2080;
    v10 = *(v7 + direct field offset for MLS.XPCClientCoordinator.uniqueClientIdentifier);
    v11 = *(v7 + direct field offset for MLS.XPCClientCoordinator.uniqueClientIdentifier + 8);
    strcpy(v33, "EncryptedRCS.");
    HIWORD(v33[1]) = -4864;

    MEMORY[0x2667545A0](v10, v11);

    v12 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v33[0], v33[1], &v32);

    *(v8 + 14) = v12;
    _os_log_impl(&dword_264F1F000, v3, v4, "XPCClientCoordinator otherMembers { identifier: %s, client: %s }", v8, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x266755550](v9, -1, -1);
    MEMORY[0x266755550](v8, -1, -1);
  }

  else
  {
    v13 = *(v0 + 40);
  }

  v14 = *(v0 + 120);
  v16 = *(v0 + 48);
  v15 = *(v0 + 56);
  v18 = *(v0 + 32);
  v17 = *(v0 + 40);
  v19 = *(v0 + 24);
  v20 = *(*(v17 + direct field offset for MLS.XPCClientCoordinator.xpcClient) + OBJC_IVAR____TtCO15SecureMessaging8XPCUtils9XPCClient_deliveryInterface);
  *(v0 + 80) = v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sShy15SecureMessaging3MLSO9AllMemberOGMd, &_sShy15SecureMessaging3MLSO9AllMemberOGMR);
  v22 = swift_task_alloc();
  *(v0 + 88) = v22;
  *(v22 + 16) = v16;
  *(v22 + 24) = v15;
  *(v22 + 32) = v14;
  *(v22 + 40) = v17;
  v23 = swift_task_alloc();
  *(v0 + 96) = v23;
  *(v23 + 16) = v19;
  *(v23 + 24) = v18;
  v24 = *(*v20 + 360);

  v31 = v24 + *v24;
  v25 = v24[1];
  v26 = swift_task_alloc();
  *(v0 + 104) = v26;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DataV_ACtMd, &_s10Foundation4DataV_ACtMR);
  v28 = lazy protocol witness table accessor for type Set<MLS.AllMember> and conformance <> Set<A>();
  v29 = lazy protocol witness table accessor for type Set<MLS.AllMember> and conformance <> Set<A>();
  v30 = lazy protocol witness table accessor for type MLS.GroupMembersError and conformance MLS.GroupMembersError();
  *v26 = v0;
  v26[1] = MLS.XPCClientCoordinator.otherMembers(group:context:);
  v41 = v29;
  v42 = v30;
  v39 = v27;
  v40 = v28;
  v37 = v21;
  v38 = &type metadata for MLS.GroupMembersError;
  v35 = partial apply for closure #3 in MLS.XPCClientCoordinator.otherMembers(group:context:);
  v36 = v23;

  __asm { BRAA            X8, X16 }
}

uint64_t MLS.XPCClientCoordinator.otherMembers(group:context:)()
{
  v2 = *v1;
  v3 = *(*v1 + 104);
  v11 = *v1;
  *(*v1 + 112) = v0;

  if (v0)
  {
    v4 = v2[8];
    v5 = MLS.XPCClientCoordinator.otherMembers(group:context:);
  }

  else
  {
    v7 = v2[11];
    v6 = v2[12];
    v8 = v2[10];
    v9 = v2[8];

    v5 = MLS.XPCClientCoordinator.otherMembers(group:context:);
    v4 = v9;
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

{
  return (*(v0 + 8))(*(v0 + 16));
}

{
  v30 = v0;
  v1 = v0[14];
  v2 = v0[11];
  v3 = v0[12];
  v5 = v0[9];
  v4 = v0[10];
  v6 = v0[7];
  v7 = v0[5];

  swift_retain_n();

  v8 = v1;
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = v0[14];
    v13 = v0[6];
    v12 = v0[7];
    v14 = v0[5];
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v28 = v17;
    *v15 = 136315650;
    *(v15 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13, v12, &v28);
    *(v15 + 12) = 2112;
    v18 = v11;
    v19 = _swift_stdlib_bridgeErrorToNSError();
    *(v15 + 14) = v19;
    *v16 = v19;
    *(v15 + 22) = 2080;
    v20 = *(v14 + direct field offset for MLS.XPCClientCoordinator.uniqueClientIdentifier);
    v21 = *(v14 + direct field offset for MLS.XPCClientCoordinator.uniqueClientIdentifier + 8);

    strcpy(v29, "EncryptedRCS.");
    HIWORD(v29[1]) = -4864;
    MEMORY[0x2667545A0](v20, v21);

    v22 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v29[0], v29[1], &v28);

    *(v15 + 24) = v22;
    _os_log_impl(&dword_264F1F000, v9, v10, "XPCClientCoordinator otherMembers failed { identifier: %s, error: %@, client: %s }", v15, 0x20u);
    outlined destroy of NSObject?(v16, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x266755550](v16, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x266755550](v17, -1, -1);
    MEMORY[0x266755550](v15, -1, -1);
  }

  else
  {
    v23 = v0[5];
  }

  v24 = v0[14];
  swift_willThrow();
  v25 = v0[1];
  v26 = v0[14];

  return v25();
}

uint64_t closure #1 in MLS.XPCClientCoordinator.otherMembers(group:context:)@<X0>(uint64_t a1@<X4>, uint64_t *a2@<X8>)
{
  lazy protocol witness table accessor for type MLS.GroupMembersContext and conformance MLS.GroupMembersContext();
  result = dispatch thunk of JSONEncoder.encode<A>(_:)();
  if (!v2)
  {
    v7 = result;
    v8 = v6;
    v12 = *(a1 + direct field offset for MLS.XPCClientCoordinator.uniqueClientIdentifier);
    v13 = *(a1 + direct field offset for MLS.XPCClientCoordinator.uniqueClientIdentifier + 8);
    lazy protocol witness table accessor for type MLS.UniqueClientIdentifier and conformance MLS.UniqueClientIdentifier();

    v9 = dispatch thunk of JSONEncoder.encode<A>(_:)();
    v11 = v10;

    *a2 = v9;
    a2[1] = v11;
    a2[2] = v7;
    a2[3] = v8;
  }

  return result;
}

uint64_t MLS.XPCClientCoordinator.add(members:toGroup:context:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  *(v6 + 112) = a4;
  *(v6 + 120) = v5;
  *(v6 + 96) = a2;
  *(v6 + 104) = a3;
  *(v6 + 88) = a1;
  v8 = type metadata accessor for MetricCollector.Event();
  *(v6 + 128) = v8;
  v9 = *(*(v8 - 8) + 64) + 15;
  *(v6 + 136) = swift_task_alloc();
  v10 = swift_task_alloc();
  v11 = *a5;
  v12 = a5[1];
  *(v6 + 144) = v10;
  *(v6 + 152) = v11;
  *(v6 + 160) = v12;
  *(v6 + 168) = *(a5 + 1);
  *(v6 + 184) = a5[4];
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v13 = static MLSActor.shared;
  *(v6 + 192) = static MLSActor.shared;

  return MEMORY[0x2822009F8](MLS.XPCClientCoordinator.add(members:toGroup:context:), v13, 0);
}

void MLS.XPCClientCoordinator.add(members:toGroup:context:)()
{
  v2 = v0[22];
  v1 = v0[23];
  v4 = v0[20];
  v3 = v0[21];
  v5 = v0[15];
  v0[25] = direct field offset for MLS.XPCClientCoordinator.logger;

  outlined copy of Data?(v3, v2);

  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();

  outlined consume of Data?(v3, v2);

  if (os_log_type_enabled(v6, v7))
  {
    v9 = v0[19];
    v8 = v0[20];
    v10 = v0[15];
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v46 = v12;
    *v11 = 136315394;

    v13 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9, v8, &v46);

    *(v11 + 4) = v13;
    *(v11 + 12) = 2080;
    v14 = *(v10 + direct field offset for MLS.XPCClientCoordinator.uniqueClientIdentifier);
    v15 = *(v10 + direct field offset for MLS.XPCClientCoordinator.uniqueClientIdentifier + 8);
    strcpy(v47, "EncryptedRCS.");
    HIWORD(v47[1]) = -4864;

    MEMORY[0x2667545A0](v14, v15);

    v16 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v47[0], v47[1], &v46);

    *(v11 + 14) = v16;
    _os_log_impl(&dword_264F1F000, v6, v7, "XPCClientCoordinator add { identifier: %s, client: %s }", v11, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x266755550](v12, -1, -1);
    MEMORY[0x266755550](v11, -1, -1);
  }

  else
  {
    v17 = v0[15];
  }

  v18 = v0[22];
  v19 = v0[23];
  v21 = v0[20];
  v20 = v0[21];
  v22 = v0[18];
  v23 = v0[19];
  v25 = v0[16];
  v24 = v0[17];
  v26 = v0[15];
  v43 = v0[13];
  v45 = v0[14];
  v42 = v0[12];

  outlined copy of Data?(v20, v18);

  Date.init()();
  v27 = *(v25 + 20);
  v28 = type metadata accessor for Date();
  (*(*(v28 - 8) + 56))(v22 + v27, 1, 1, v28);
  outlined init with take of MetricCollector.Event(v22, v24);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v47[0] = v19;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v24, 0x5864726177726F46, 0xEA00000000004350, isUniquelyReferenced_nonNull_native);
  v30 = v47[0];
  v0[26] = v47[0];

  v0[2] = v23;
  v0[3] = v21;
  v0[4] = v20;
  v0[5] = v18;
  v0[6] = v30;
  v31 = *(*(v26 + direct field offset for MLS.XPCClientCoordinator.xpcClient) + OBJC_IVAR____TtCO15SecureMessaging8XPCUtils9XPCClient_deliveryInterface);
  v0[27] = v31;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SecureMessaging3MLSO30GroupOperationProcessedContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO30GroupOperationProcessedContextVy_10Foundation4DataVGMR);
  v33 = swift_task_alloc();
  v0[28] = v33;
  v33[2] = v42;
  v33[3] = v0 + 2;
  v33[4] = v26;
  v34 = swift_task_alloc();
  v0[29] = v34;
  *(v34 + 16) = v43;
  *(v34 + 24) = v45;
  v35 = *(*v31 + 360);

  v44 = v35 + *v35;
  v36 = v35[1];
  v37 = swift_task_alloc();
  v0[30] = v37;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DataV_A2CtMd, &_s10Foundation4DataV_A2CtMR);
  v39 = lazy protocol witness table accessor for type MLS.KeyPackageRetrievalResult<MLS.AllMember> and conformance MLS.KeyPackageRetrievalResult<A>(&lazy protocol witness table cache variable for type MLS.GroupOperationProcessedContext<Data> and conformance MLS.GroupOperationProcessedContext<A>, &_s15SecureMessaging3MLSO30GroupOperationProcessedContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO30GroupOperationProcessedContextVy_10Foundation4DataVGMR);
  v40 = lazy protocol witness table accessor for type MLS.KeyPackageRetrievalResult<MLS.AllMember> and conformance MLS.KeyPackageRetrievalResult<A>(&lazy protocol witness table cache variable for type MLS.GroupOperationProcessedContext<Data> and conformance MLS.GroupOperationProcessedContext<A>, &_s15SecureMessaging3MLSO30GroupOperationProcessedContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO30GroupOperationProcessedContextVy_10Foundation4DataVGMR);
  v41 = lazy protocol witness table accessor for type MLS.GroupOperationError and conformance MLS.GroupOperationError();
  *v37 = v0;
  v37[1] = MLS.XPCClientCoordinator.add(members:toGroup:context:);
  v55 = v40;
  v56 = v41;
  v53 = v38;
  v54 = v39;
  v51 = v32;
  v52 = &type metadata for MLS.GroupOperationError;
  v49 = partial apply for closure #3 in MLS.XPCClientCoordinator.add(members:toGroup:context:);
  v50 = v34;

  __asm { BRAA            X8, X16 }
}

uint64_t MLS.XPCClientCoordinator.add(members:toGroup:context:)()
{
  v2 = *v1;
  v3 = *(*v1 + 240);
  v4 = *v1;
  *(*v1 + 248) = v0;

  v5 = v2[29];
  v6 = v2[28];
  v7 = v2[27];
  v8 = v2[24];

  if (v0)
  {
    v9 = MLS.XPCClientCoordinator.add(members:toGroup:context:);
  }

  else
  {
    v9 = MLS.XPCClientCoordinator.add(members:toGroup:context:);
  }

  return MEMORY[0x2822009F8](v9, v8, 0);
}

{
  v1 = *(v0 + 208);
  v3 = *(v0 + 168);
  v2 = *(v0 + 176);
  v4 = *(v0 + 160);
  v6 = *(v0 + 136);
  v5 = *(v0 + 144);
  v7 = *(v0 + 88);

  outlined consume of Data?(v3, v2);

  v8 = *(v0 + 72);
  v9 = *(v0 + 80);
  *v7 = *(v0 + 56);
  *(v7 + 16) = v8;
  *(v7 + 24) = v9;

  v10 = *(v0 + 8);

  return v10();
}

{
  v34 = v0;
  v1 = v0[31];
  v3 = v0[25];
  v2 = v0[26];
  v5 = v0[22];
  v4 = v0[23];
  v7 = v0[20];
  v6 = v0[21];
  v8 = v0[15];

  outlined consume of Data?(v6, v5);

  outlined copy of Data?(v6, v5);

  v9 = v1;
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.error.getter();

  outlined consume of Data?(v6, v5);

  if (os_log_type_enabled(v10, v11))
  {
    v12 = v0[31];
    v14 = v0[19];
    v13 = v0[20];
    v15 = v0[15];
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v32 = v18;
    *v16 = 136315650;

    v19 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v14, v13, &v32);

    *(v16 + 4) = v19;
    *(v16 + 12) = 2112;
    v20 = v12;
    v21 = _swift_stdlib_bridgeErrorToNSError();
    *(v16 + 14) = v21;
    *v17 = v21;
    *(v16 + 22) = 2080;
    v22 = *(v15 + direct field offset for MLS.XPCClientCoordinator.uniqueClientIdentifier);
    v23 = *(v15 + direct field offset for MLS.XPCClientCoordinator.uniqueClientIdentifier + 8);

    strcpy(v33, "EncryptedRCS.");
    HIWORD(v33[1]) = -4864;
    MEMORY[0x2667545A0](v22, v23);

    v24 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v33[0], v33[1], &v32);

    *(v16 + 24) = v24;
    _os_log_impl(&dword_264F1F000, v10, v11, "XPCClientCoordinator add failed { identifier: %s, error: %@, client: %s }", v16, 0x20u);
    outlined destroy of NSObject?(v17, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x266755550](v17, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x266755550](v18, -1, -1);
    MEMORY[0x266755550](v16, -1, -1);
  }

  else
  {
    v25 = v0[15];
  }

  v26 = v0[31];
  v27 = v0[17];
  v28 = v0[18];
  swift_willThrow();

  v29 = v0[1];
  v30 = v0[31];

  return v29();
}

uint64_t MLS.XPCClientCoordinator.kick(members:fromGroup:context:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  *(v6 + 112) = a4;
  *(v6 + 120) = v5;
  *(v6 + 96) = a2;
  *(v6 + 104) = a3;
  *(v6 + 88) = a1;
  v8 = type metadata accessor for MetricCollector.Event();
  *(v6 + 128) = v8;
  v9 = *(*(v8 - 8) + 64) + 15;
  *(v6 + 136) = swift_task_alloc();
  v10 = swift_task_alloc();
  v11 = *a5;
  v12 = a5[1];
  *(v6 + 144) = v10;
  *(v6 + 152) = v11;
  *(v6 + 160) = v12;
  *(v6 + 168) = *(a5 + 1);
  *(v6 + 184) = a5[4];
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v13 = static MLSActor.shared;
  *(v6 + 192) = static MLSActor.shared;

  return MEMORY[0x2822009F8](MLS.XPCClientCoordinator.kick(members:fromGroup:context:), v13, 0);
}

void MLS.XPCClientCoordinator.kick(members:fromGroup:context:)()
{
  v2 = v0[22];
  v1 = v0[23];
  v4 = v0[20];
  v3 = v0[21];
  v5 = v0[15];
  v0[25] = direct field offset for MLS.XPCClientCoordinator.logger;

  outlined copy of Data?(v3, v2);

  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();

  outlined consume of Data?(v3, v2);

  if (os_log_type_enabled(v6, v7))
  {
    v9 = v0[19];
    v8 = v0[20];
    v10 = v0[15];
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v46 = v12;
    *v11 = 136315394;

    v13 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9, v8, &v46);

    *(v11 + 4) = v13;
    *(v11 + 12) = 2080;
    v14 = *(v10 + direct field offset for MLS.XPCClientCoordinator.uniqueClientIdentifier);
    v15 = *(v10 + direct field offset for MLS.XPCClientCoordinator.uniqueClientIdentifier + 8);
    strcpy(v47, "EncryptedRCS.");
    HIWORD(v47[1]) = -4864;

    MEMORY[0x2667545A0](v14, v15);

    v16 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v47[0], v47[1], &v46);

    *(v11 + 14) = v16;
    _os_log_impl(&dword_264F1F000, v6, v7, "XPCClientCoordinator kick { identifier: %s, client: %s }", v11, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x266755550](v12, -1, -1);
    MEMORY[0x266755550](v11, -1, -1);
  }

  else
  {
    v17 = v0[15];
  }

  v18 = v0[22];
  v19 = v0[23];
  v21 = v0[20];
  v20 = v0[21];
  v22 = v0[18];
  v23 = v0[19];
  v25 = v0[16];
  v24 = v0[17];
  v26 = v0[15];
  v43 = v0[13];
  v45 = v0[14];
  v42 = v0[12];

  outlined copy of Data?(v20, v18);

  Date.init()();
  v27 = *(v25 + 20);
  v28 = type metadata accessor for Date();
  (*(*(v28 - 8) + 56))(v22 + v27, 1, 1, v28);
  outlined init with take of MetricCollector.Event(v22, v24);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v47[0] = v19;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v24, 0x5864726177726F46, 0xEA00000000004350, isUniquelyReferenced_nonNull_native);
  v30 = v47[0];
  v0[26] = v47[0];

  v0[2] = v23;
  v0[3] = v21;
  v0[4] = v20;
  v0[5] = v18;
  v0[6] = v30;
  v31 = *(*(v26 + direct field offset for MLS.XPCClientCoordinator.xpcClient) + OBJC_IVAR____TtCO15SecureMessaging8XPCUtils9XPCClient_deliveryInterface);
  v0[27] = v31;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SecureMessaging3MLSO30GroupOperationProcessedContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO30GroupOperationProcessedContextVy_10Foundation4DataVGMR);
  v33 = swift_task_alloc();
  v0[28] = v33;
  v33[2] = v42;
  v33[3] = v0 + 2;
  v33[4] = v26;
  v34 = swift_task_alloc();
  v0[29] = v34;
  *(v34 + 16) = v43;
  *(v34 + 24) = v45;
  v35 = *(*v31 + 360);

  v44 = v35 + *v35;
  v36 = v35[1];
  v37 = swift_task_alloc();
  v0[30] = v37;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DataV_A2CtMd, &_s10Foundation4DataV_A2CtMR);
  v39 = lazy protocol witness table accessor for type MLS.KeyPackageRetrievalResult<MLS.AllMember> and conformance MLS.KeyPackageRetrievalResult<A>(&lazy protocol witness table cache variable for type MLS.GroupOperationProcessedContext<Data> and conformance MLS.GroupOperationProcessedContext<A>, &_s15SecureMessaging3MLSO30GroupOperationProcessedContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO30GroupOperationProcessedContextVy_10Foundation4DataVGMR);
  v40 = lazy protocol witness table accessor for type MLS.KeyPackageRetrievalResult<MLS.AllMember> and conformance MLS.KeyPackageRetrievalResult<A>(&lazy protocol witness table cache variable for type MLS.GroupOperationProcessedContext<Data> and conformance MLS.GroupOperationProcessedContext<A>, &_s15SecureMessaging3MLSO30GroupOperationProcessedContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO30GroupOperationProcessedContextVy_10Foundation4DataVGMR);
  v41 = lazy protocol witness table accessor for type MLS.GroupOperationError and conformance MLS.GroupOperationError();
  *v37 = v0;
  v37[1] = MLS.XPCClientCoordinator.kick(members:fromGroup:context:);
  v55 = v40;
  v56 = v41;
  v53 = v38;
  v54 = v39;
  v51 = v32;
  v52 = &type metadata for MLS.GroupOperationError;
  v49 = partial apply for closure #3 in MLS.XPCClientCoordinator.kick(members:fromGroup:context:);
  v50 = v34;

  __asm { BRAA            X8, X16 }
}

uint64_t MLS.XPCClientCoordinator.kick(members:fromGroup:context:)()
{
  v2 = *v1;
  v3 = *(*v1 + 240);
  v4 = *v1;
  *(*v1 + 248) = v0;

  v5 = v2[29];
  v6 = v2[28];
  v7 = v2[27];
  v8 = v2[24];

  if (v0)
  {
    v9 = MLS.XPCClientCoordinator.kick(members:fromGroup:context:);
  }

  else
  {
    v9 = MLS.XPCClientCoordinator.kick(members:fromGroup:context:);
  }

  return MEMORY[0x2822009F8](v9, v8, 0);
}

{
  v34 = v0;
  v1 = v0[31];
  v3 = v0[25];
  v2 = v0[26];
  v5 = v0[22];
  v4 = v0[23];
  v7 = v0[20];
  v6 = v0[21];
  v8 = v0[15];

  outlined consume of Data?(v6, v5);

  outlined copy of Data?(v6, v5);

  v9 = v1;
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.error.getter();

  outlined consume of Data?(v6, v5);

  if (os_log_type_enabled(v10, v11))
  {
    v12 = v0[31];
    v14 = v0[19];
    v13 = v0[20];
    v15 = v0[15];
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v32 = v18;
    *v16 = 136315650;

    v19 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v14, v13, &v32);

    *(v16 + 4) = v19;
    *(v16 + 12) = 2112;
    v20 = v12;
    v21 = _swift_stdlib_bridgeErrorToNSError();
    *(v16 + 14) = v21;
    *v17 = v21;
    *(v16 + 22) = 2080;
    v22 = *(v15 + direct field offset for MLS.XPCClientCoordinator.uniqueClientIdentifier);
    v23 = *(v15 + direct field offset for MLS.XPCClientCoordinator.uniqueClientIdentifier + 8);

    strcpy(v33, "EncryptedRCS.");
    HIWORD(v33[1]) = -4864;
    MEMORY[0x2667545A0](v22, v23);

    v24 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v33[0], v33[1], &v32);

    *(v16 + 24) = v24;
    _os_log_impl(&dword_264F1F000, v10, v11, "XPCClientCoordinator kick failed { identifier: %s, error: %@, client: %s }", v16, 0x20u);
    outlined destroy of NSObject?(v17, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x266755550](v17, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x266755550](v18, -1, -1);
    MEMORY[0x266755550](v16, -1, -1);
  }

  else
  {
    v25 = v0[15];
  }

  v26 = v0[31];
  v27 = v0[17];
  v28 = v0[18];
  swift_willThrow();

  v29 = v0[1];
  v30 = v0[31];

  return v29();
}

uint64_t closure #1 in MLS.XPCClientCoordinator.add(members:toGroup:context:)@<X0>(__int128 *a1@<X2>, uint64_t a2@<X3>, uint64_t *a3@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay15SecureMessaging3MLSO9AllMemberOGMd, &_sSay15SecureMessaging3MLSO9AllMemberOGMR);
  lazy protocol witness table accessor for type [MLS.AllMember] and conformance <A> [A]();
  result = dispatch thunk of JSONEncoder.encode<A>(_:)();
  if (!v3)
  {
    v9 = result;
    v10 = v8;
    v17 = *a1;
    v19 = a1[1];
    v20 = *(a1 + 4);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SecureMessaging3MLSO21GroupOperationContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO21GroupOperationContextVy_10Foundation4DataVGMR);
    lazy protocol witness table accessor for type MLS.KeyPackageRetrievalResult<MLS.AllMember> and conformance MLS.KeyPackageRetrievalResult<A>(&lazy protocol witness table cache variable for type MLS.GroupOperationContext<Data> and conformance MLS.GroupOperationContext<A>, &_s15SecureMessaging3MLSO21GroupOperationContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO21GroupOperationContextVy_10Foundation4DataVGMR);
    v11 = dispatch thunk of JSONEncoder.encode<A>(_:)();
    v13 = v12;
    v18 = *(a2 + direct field offset for MLS.XPCClientCoordinator.uniqueClientIdentifier);
    lazy protocol witness table accessor for type MLS.UniqueClientIdentifier and conformance MLS.UniqueClientIdentifier();

    v14 = dispatch thunk of JSONEncoder.encode<A>(_:)();
    v16 = v15;

    *a3 = v14;
    a3[1] = v16;
    a3[2] = v9;
    a3[3] = v10;
    a3[4] = v11;
    a3[5] = v13;
  }

  return result;
}

uint64_t MLS.XPCClientCoordinator.leave(group:context:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  *(v5 + 104) = a3;
  *(v5 + 112) = v4;
  *(v5 + 88) = a1;
  *(v5 + 96) = a2;
  v7 = type metadata accessor for MetricCollector.Event();
  *(v5 + 120) = v7;
  v8 = *(*(v7 - 8) + 64) + 15;
  *(v5 + 128) = swift_task_alloc();
  v9 = swift_task_alloc();
  v10 = *a4;
  v11 = a4[1];
  *(v5 + 136) = v9;
  *(v5 + 144) = v10;
  *(v5 + 152) = v11;
  *(v5 + 160) = *(a4 + 1);
  *(v5 + 176) = a4[4];
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v12 = static MLSActor.shared;
  *(v5 + 184) = static MLSActor.shared;

  return MEMORY[0x2822009F8](MLS.XPCClientCoordinator.leave(group:context:), v12, 0);
}

void MLS.XPCClientCoordinator.leave(group:context:)()
{
  v2 = v0[21];
  v1 = v0[22];
  v4 = v0[19];
  v3 = v0[20];
  v5 = v0[14];
  v0[24] = direct field offset for MLS.XPCClientCoordinator.logger;

  outlined copy of Data?(v3, v2);

  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();

  outlined consume of Data?(v3, v2);

  if (os_log_type_enabled(v6, v7))
  {
    v9 = v0[18];
    v8 = v0[19];
    v10 = v0[14];
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v45 = v12;
    *v11 = 136315394;

    v13 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9, v8, &v45);

    *(v11 + 4) = v13;
    *(v11 + 12) = 2080;
    v14 = *(v10 + direct field offset for MLS.XPCClientCoordinator.uniqueClientIdentifier);
    v15 = *(v10 + direct field offset for MLS.XPCClientCoordinator.uniqueClientIdentifier + 8);
    strcpy(v46, "EncryptedRCS.");
    HIWORD(v46[1]) = -4864;

    MEMORY[0x2667545A0](v14, v15);

    v16 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v46[0], v46[1], &v45);

    *(v11 + 14) = v16;
    _os_log_impl(&dword_264F1F000, v6, v7, "XPCClientCoordinator leave { identifier: %s, client: %s }", v11, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x266755550](v12, -1, -1);
    MEMORY[0x266755550](v11, -1, -1);
  }

  else
  {
    v17 = v0[14];
  }

  v18 = v0[21];
  v19 = v0[22];
  v21 = v0[19];
  v20 = v0[20];
  v22 = v0[17];
  v23 = v0[18];
  v25 = v0[15];
  v24 = v0[16];
  v26 = v0[14];
  v42 = v0[12];
  v44 = v0[13];

  outlined copy of Data?(v20, v18);

  Date.init()();
  v27 = *(v25 + 20);
  v28 = type metadata accessor for Date();
  (*(*(v28 - 8) + 56))(v22 + v27, 1, 1, v28);
  outlined init with take of MetricCollector.Event(v22, v24);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v46[0] = v19;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v24, 0x5864726177726F46, 0xEA00000000004350, isUniquelyReferenced_nonNull_native);
  v30 = v46[0];
  v0[25] = v46[0];

  v0[2] = v23;
  v0[3] = v21;
  v0[4] = v20;
  v0[5] = v18;
  v0[6] = v30;
  v31 = *(*(v26 + direct field offset for MLS.XPCClientCoordinator.xpcClient) + OBJC_IVAR____TtCO15SecureMessaging8XPCUtils9XPCClient_deliveryInterface);
  v0[26] = v31;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SecureMessaging3MLSO30GroupOperationProcessedContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO30GroupOperationProcessedContextVy_10Foundation4DataVGMR);
  v33 = swift_task_alloc();
  v0[27] = v33;
  *(v33 + 16) = v0 + 2;
  *(v33 + 24) = v26;
  v34 = swift_task_alloc();
  v0[28] = v34;
  *(v34 + 16) = v42;
  *(v34 + 24) = v44;
  v35 = *(*v31 + 360);

  v43 = v35 + *v35;
  v36 = v35[1];
  v37 = swift_task_alloc();
  v0[29] = v37;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DataV_ACtMd, &_s10Foundation4DataV_ACtMR);
  v39 = lazy protocol witness table accessor for type MLS.KeyPackageRetrievalResult<MLS.AllMember> and conformance MLS.KeyPackageRetrievalResult<A>(&lazy protocol witness table cache variable for type MLS.GroupOperationProcessedContext<Data> and conformance MLS.GroupOperationProcessedContext<A>, &_s15SecureMessaging3MLSO30GroupOperationProcessedContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO30GroupOperationProcessedContextVy_10Foundation4DataVGMR);
  v40 = lazy protocol witness table accessor for type MLS.KeyPackageRetrievalResult<MLS.AllMember> and conformance MLS.KeyPackageRetrievalResult<A>(&lazy protocol witness table cache variable for type MLS.GroupOperationProcessedContext<Data> and conformance MLS.GroupOperationProcessedContext<A>, &_s15SecureMessaging3MLSO30GroupOperationProcessedContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO30GroupOperationProcessedContextVy_10Foundation4DataVGMR);
  v41 = lazy protocol witness table accessor for type MLS.GroupOperationError and conformance MLS.GroupOperationError();
  *v37 = v0;
  v37[1] = MLS.XPCClientCoordinator.leave(group:context:);
  v54 = v40;
  v55 = v41;
  v52 = v38;
  v53 = v39;
  v50 = v32;
  v51 = &type metadata for MLS.GroupOperationError;
  v48 = partial apply for closure #3 in MLS.XPCClientCoordinator.leave(group:context:);
  v49 = v34;

  __asm { BRAA            X8, X16 }
}

uint64_t MLS.XPCClientCoordinator.leave(group:context:)()
{
  v2 = *v1;
  v3 = *(*v1 + 232);
  v4 = *v1;
  *(*v1 + 240) = v0;

  v5 = v2[28];
  v6 = v2[27];
  v7 = v2[26];
  v8 = v2[23];

  if (v0)
  {
    v9 = MLS.XPCClientCoordinator.leave(group:context:);
  }

  else
  {
    v9 = MLS.XPCClientCoordinator.leave(group:context:);
  }

  return MEMORY[0x2822009F8](v9, v8, 0);
}

{
  v1 = *(v0 + 200);
  v3 = *(v0 + 160);
  v2 = *(v0 + 168);
  v4 = *(v0 + 152);
  v6 = *(v0 + 128);
  v5 = *(v0 + 136);
  v7 = *(v0 + 88);

  outlined consume of Data?(v3, v2);

  v8 = *(v0 + 72);
  v9 = *(v0 + 80);
  *v7 = *(v0 + 56);
  *(v7 + 16) = v8;
  *(v7 + 24) = v9;

  v10 = *(v0 + 8);

  return v10();
}

{
  v34 = v0;
  v1 = v0[30];
  v3 = v0[24];
  v2 = v0[25];
  v5 = v0[21];
  v4 = v0[22];
  v7 = v0[19];
  v6 = v0[20];
  v8 = v0[14];

  outlined consume of Data?(v6, v5);

  outlined copy of Data?(v6, v5);

  v9 = v1;
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.error.getter();

  outlined consume of Data?(v6, v5);

  if (os_log_type_enabled(v10, v11))
  {
    v12 = v0[30];
    v14 = v0[18];
    v13 = v0[19];
    v15 = v0[14];
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v32 = v18;
    *v16 = 136315650;

    v19 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v14, v13, &v32);

    *(v16 + 4) = v19;
    *(v16 + 12) = 2112;
    v20 = v12;
    v21 = _swift_stdlib_bridgeErrorToNSError();
    *(v16 + 14) = v21;
    *v17 = v21;
    *(v16 + 22) = 2080;
    v22 = *(v15 + direct field offset for MLS.XPCClientCoordinator.uniqueClientIdentifier);
    v23 = *(v15 + direct field offset for MLS.XPCClientCoordinator.uniqueClientIdentifier + 8);

    strcpy(v33, "EncryptedRCS.");
    HIWORD(v33[1]) = -4864;
    MEMORY[0x2667545A0](v22, v23);

    v24 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v33[0], v33[1], &v32);

    *(v16 + 24) = v24;
    _os_log_impl(&dword_264F1F000, v10, v11, "XPCClientCoordinator leave failed { identifier: %s, error: %@, client: %s }", v16, 0x20u);
    outlined destroy of NSObject?(v17, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x266755550](v17, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x266755550](v18, -1, -1);
    MEMORY[0x266755550](v16, -1, -1);
  }

  else
  {
    v25 = v0[14];
  }

  v26 = v0[30];
  v27 = v0[16];
  v28 = v0[17];
  swift_willThrow();

  v29 = v0[1];
  v30 = v0[30];

  return v29();
}

uint64_t MLS.XPCClientCoordinator.downgrade(group:context:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  *(v5 + 104) = a3;
  *(v5 + 112) = v4;
  *(v5 + 88) = a1;
  *(v5 + 96) = a2;
  v7 = type metadata accessor for MetricCollector.Event();
  *(v5 + 120) = v7;
  v8 = *(*(v7 - 8) + 64) + 15;
  *(v5 + 128) = swift_task_alloc();
  v9 = swift_task_alloc();
  v10 = *a4;
  v11 = a4[1];
  *(v5 + 136) = v9;
  *(v5 + 144) = v10;
  *(v5 + 152) = v11;
  *(v5 + 160) = *(a4 + 1);
  *(v5 + 176) = a4[4];
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v12 = static MLSActor.shared;
  *(v5 + 184) = static MLSActor.shared;

  return MEMORY[0x2822009F8](MLS.XPCClientCoordinator.downgrade(group:context:), v12, 0);
}

void MLS.XPCClientCoordinator.downgrade(group:context:)()
{
  v2 = v0[21];
  v1 = v0[22];
  v4 = v0[19];
  v3 = v0[20];
  v5 = v0[14];
  v0[24] = direct field offset for MLS.XPCClientCoordinator.logger;

  outlined copy of Data?(v3, v2);

  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();

  outlined consume of Data?(v3, v2);

  if (os_log_type_enabled(v6, v7))
  {
    v9 = v0[18];
    v8 = v0[19];
    v10 = v0[14];
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v45 = v12;
    *v11 = 136315394;

    v13 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9, v8, &v45);

    *(v11 + 4) = v13;
    *(v11 + 12) = 2080;
    v14 = *(v10 + direct field offset for MLS.XPCClientCoordinator.uniqueClientIdentifier);
    v15 = *(v10 + direct field offset for MLS.XPCClientCoordinator.uniqueClientIdentifier + 8);
    strcpy(v46, "EncryptedRCS.");
    HIWORD(v46[1]) = -4864;

    MEMORY[0x2667545A0](v14, v15);

    v16 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v46[0], v46[1], &v45);

    *(v11 + 14) = v16;
    _os_log_impl(&dword_264F1F000, v6, v7, "XPCClientCoordinator downgrade { identifier: %s, client: %s }", v11, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x266755550](v12, -1, -1);
    MEMORY[0x266755550](v11, -1, -1);
  }

  else
  {
    v17 = v0[14];
  }

  v18 = v0[21];
  v19 = v0[22];
  v21 = v0[19];
  v20 = v0[20];
  v22 = v0[17];
  v23 = v0[18];
  v25 = v0[15];
  v24 = v0[16];
  v26 = v0[14];
  v42 = v0[12];
  v44 = v0[13];

  outlined copy of Data?(v20, v18);

  Date.init()();
  v27 = *(v25 + 20);
  v28 = type metadata accessor for Date();
  (*(*(v28 - 8) + 56))(v22 + v27, 1, 1, v28);
  outlined init with take of MetricCollector.Event(v22, v24);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v46[0] = v19;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v24, 0x5864726177726F46, 0xEA00000000004350, isUniquelyReferenced_nonNull_native);
  v30 = v46[0];
  v0[25] = v46[0];

  v0[2] = v23;
  v0[3] = v21;
  v0[4] = v20;
  v0[5] = v18;
  v0[6] = v30;
  v31 = *(*(v26 + direct field offset for MLS.XPCClientCoordinator.xpcClient) + OBJC_IVAR____TtCO15SecureMessaging8XPCUtils9XPCClient_deliveryInterface);
  v0[26] = v31;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SecureMessaging3MLSO25DowngradeProcessedContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO25DowngradeProcessedContextVy_10Foundation4DataVGMR);
  v33 = swift_task_alloc();
  v0[27] = v33;
  *(v33 + 16) = v0 + 2;
  *(v33 + 24) = v26;
  v34 = swift_task_alloc();
  v0[28] = v34;
  *(v34 + 16) = v42;
  *(v34 + 24) = v44;
  v35 = *(*v31 + 360);

  v43 = v35 + *v35;
  v36 = v35[1];
  v37 = swift_task_alloc();
  v0[29] = v37;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DataV_ACtMd, &_s10Foundation4DataV_ACtMR);
  v39 = lazy protocol witness table accessor for type MLS.KeyPackageRetrievalResult<MLS.AllMember> and conformance MLS.KeyPackageRetrievalResult<A>(&lazy protocol witness table cache variable for type MLS.DowngradeProcessedContext<Data> and conformance MLS.DowngradeProcessedContext<A>, &_s15SecureMessaging3MLSO25DowngradeProcessedContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO25DowngradeProcessedContextVy_10Foundation4DataVGMR);
  v40 = lazy protocol witness table accessor for type MLS.KeyPackageRetrievalResult<MLS.AllMember> and conformance MLS.KeyPackageRetrievalResult<A>(&lazy protocol witness table cache variable for type MLS.DowngradeProcessedContext<Data> and conformance MLS.DowngradeProcessedContext<A>, &_s15SecureMessaging3MLSO25DowngradeProcessedContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO25DowngradeProcessedContextVy_10Foundation4DataVGMR);
  v41 = lazy protocol witness table accessor for type MLS.DowngradeError and conformance MLS.DowngradeError();
  *v37 = v0;
  v37[1] = MLS.XPCClientCoordinator.downgrade(group:context:);
  v54 = v40;
  v55 = v41;
  v52 = v38;
  v53 = v39;
  v50 = v32;
  v51 = &type metadata for MLS.DowngradeError;
  v48 = partial apply for closure #3 in MLS.XPCClientCoordinator.downgrade(group:context:);
  v49 = v34;

  __asm { BRAA            X8, X16 }
}

uint64_t MLS.XPCClientCoordinator.downgrade(group:context:)()
{
  v2 = *v1;
  v3 = *(*v1 + 232);
  v4 = *v1;
  *(*v1 + 240) = v0;

  v5 = v2[28];
  v6 = v2[27];
  v7 = v2[26];
  v8 = v2[23];

  if (v0)
  {
    v9 = MLS.XPCClientCoordinator.downgrade(group:context:);
  }

  else
  {
    v9 = MLS.XPCClientCoordinator.downgrade(group:context:);
  }

  return MEMORY[0x2822009F8](v9, v8, 0);
}

{
  v34 = v0;
  v1 = v0[30];
  v3 = v0[24];
  v2 = v0[25];
  v5 = v0[21];
  v4 = v0[22];
  v7 = v0[19];
  v6 = v0[20];
  v8 = v0[14];

  outlined consume of Data?(v6, v5);

  outlined copy of Data?(v6, v5);

  v9 = v1;
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.error.getter();

  outlined consume of Data?(v6, v5);

  if (os_log_type_enabled(v10, v11))
  {
    v12 = v0[30];
    v14 = v0[18];
    v13 = v0[19];
    v15 = v0[14];
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v32 = v18;
    *v16 = 136315650;

    v19 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v14, v13, &v32);

    *(v16 + 4) = v19;
    *(v16 + 12) = 2112;
    v20 = v12;
    v21 = _swift_stdlib_bridgeErrorToNSError();
    *(v16 + 14) = v21;
    *v17 = v21;
    *(v16 + 22) = 2080;
    v22 = *(v15 + direct field offset for MLS.XPCClientCoordinator.uniqueClientIdentifier);
    v23 = *(v15 + direct field offset for MLS.XPCClientCoordinator.uniqueClientIdentifier + 8);

    strcpy(v33, "EncryptedRCS.");
    HIWORD(v33[1]) = -4864;
    MEMORY[0x2667545A0](v22, v23);

    v24 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v33[0], v33[1], &v32);

    *(v16 + 24) = v24;
    _os_log_impl(&dword_264F1F000, v10, v11, "XPCClientCoordinator downgrade failed { identifier: %s, error: %@, client: %s }", v16, 0x20u);
    outlined destroy of NSObject?(v17, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x266755550](v17, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x266755550](v18, -1, -1);
    MEMORY[0x266755550](v16, -1, -1);
  }

  else
  {
    v25 = v0[14];
  }

  v26 = v0[30];
  v27 = v0[16];
  v28 = v0[17];
  swift_willThrow();

  v29 = v0[1];
  v30 = v0[30];

  return v29();
}

uint64_t closure #1 in MLS.XPCClientCoordinator.leave(group:context:)@<X0>(__int128 *a1@<X1>, uint64_t a2@<X2>, uint64_t *a3@<X3>, uint64_t *a4@<X4>, unint64_t *a5@<X5>, uint64_t *a6@<X8>)
{
  v19 = *a1;
  v22 = a1[1];
  v23 = *(a1 + 4);
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  lazy protocol witness table accessor for type MLS.KeyPackageRetrievalResult<MLS.AllMember> and conformance MLS.KeyPackageRetrievalResult<A>(a5, a3, a4);
  result = dispatch thunk of JSONEncoder.encode<A>(_:)();
  if (!v6)
  {
    v14 = result;
    v15 = v13;
    v20 = *(a2 + direct field offset for MLS.XPCClientCoordinator.uniqueClientIdentifier);
    v21 = *(a2 + direct field offset for MLS.XPCClientCoordinator.uniqueClientIdentifier + 8);
    lazy protocol witness table accessor for type MLS.UniqueClientIdentifier and conformance MLS.UniqueClientIdentifier();

    v16 = dispatch thunk of JSONEncoder.encode<A>(_:)();
    v18 = v17;

    *a6 = v16;
    a6[1] = v18;
    a6[2] = v14;
    a6[3] = v15;
  }

  return result;
}

uint64_t closure #3 in MLS.XPCClientCoordinator.delete(group:context:)(void **a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, SEL *a8)
{
  v22 = *a1;
  v13 = *a2;
  v14 = a2[1];
  v15 = a2[2];
  v16 = a2[3];
  outlined copy of Data._Representation(*a2, v14);
  outlined copy of Data._Representation(v15, v16);
  isa = Data._bridgeToObjectiveC()().super.isa;
  v18 = MEMORY[0x266754510](a5, a6);
  v19 = Data._bridgeToObjectiveC()().super.isa;
  aBlock[4] = a3;
  aBlock[5] = a4;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed Data?, @guaranteed Data?) -> ();
  aBlock[3] = a7;
  v20 = _Block_copy(aBlock);

  [v22 *a8];
  _Block_release(v20);

  outlined consume of Data._Representation(v15, v16);
  return outlined consume of Data._Representation(v13, v14);
}

uint64_t MLS.XPCClientCoordinator.applicationEncrypt(data:withGroup:context:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v7 + 1296) = v6;
  *(v7 + 1288) = a5;
  *(v7 + 1280) = a4;
  *(v7 + 1272) = a3;
  *(v7 + 1264) = a2;
  *(v7 + 1256) = a1;
  v9 = type metadata accessor for MetricCollector.Event();
  *(v7 + 1304) = v9;
  v10 = *(*(v9 - 8) + 64) + 15;
  *(v7 + 1312) = swift_task_alloc();
  *(v7 + 1320) = swift_task_alloc();
  v11 = *(a6 + 112);
  *(v7 + 112) = *(a6 + 96);
  *(v7 + 128) = v11;
  *(v7 + 144) = *(a6 + 128);
  *(v7 + 160) = *(a6 + 144);
  v12 = *(a6 + 48);
  *(v7 + 48) = *(a6 + 32);
  *(v7 + 64) = v12;
  v13 = *(a6 + 80);
  *(v7 + 80) = *(a6 + 64);
  *(v7 + 96) = v13;
  v14 = *(a6 + 16);
  *(v7 + 16) = *a6;
  *(v7 + 32) = v14;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v15 = static MLSActor.shared;
  *(v7 + 1328) = static MLSActor.shared;

  return MEMORY[0x2822009F8](MLS.XPCClientCoordinator.applicationEncrypt(data:withGroup:context:), v15, 0);
}

void MLS.XPCClientCoordinator.applicationEncrypt(data:withGroup:context:)()
{
  v1 = *(v0 + 1296);
  *(v0 + 1336) = direct field offset for MLS.XPCClientCoordinator.logger;
  outlined init with copy of MLS.OutgoingEventState?(v0 + 16, v0 + 320, &_s15SecureMessaging3MLSO17EncryptionContextVy_AC9AllMemberO10Foundation4DataVGMd, &_s15SecureMessaging3MLSO17EncryptionContextVy_AC9AllMemberO10Foundation4DataVGMR);

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  outlined destroy of NSObject?(v0 + 16, &_s15SecureMessaging3MLSO17EncryptionContextVy_AC9AllMemberO10Foundation4DataVGMd, &_s15SecureMessaging3MLSO17EncryptionContextVy_AC9AllMemberO10Foundation4DataVGMR);
  v4 = os_log_type_enabled(v2, v3);
  v5 = *(v0 + 1296);
  if (v4)
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v46 = v7;
    *v6 = 136315394;
    v8 = *(v0 + 16);
    v9 = *(v0 + 24);

    v10 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v8, v9, &v46);

    *(v6 + 4) = v10;
    *(v6 + 12) = 2080;
    v11 = *(v5 + direct field offset for MLS.XPCClientCoordinator.uniqueClientIdentifier);
    v12 = *(v5 + direct field offset for MLS.XPCClientCoordinator.uniqueClientIdentifier + 8);
    strcpy(v47, "EncryptedRCS.");
    HIWORD(v47[1]) = -4864;

    MEMORY[0x2667545A0](v11, v12);

    v13 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v47[0], v47[1], &v46);

    *(v6 + 14) = v13;
    _os_log_impl(&dword_264F1F000, v2, v3, "XPCClientCoordinator applicationEncrypt { identifier: %s, client: %s }", v6, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x266755550](v7, -1, -1);
    MEMORY[0x266755550](v6, -1, -1);
  }

  else
  {
  }

  v14 = *(v0 + 1320);
  v15 = *(v0 + 1312);
  v16 = *(v0 + 1304);
  v17 = *(v0 + 1296);
  v18 = *(v0 + 1288);
  v19 = *(v0 + 1280);
  v45 = *(v0 + 1264);
  v20 = *(v0 + 128);
  *(v0 + 1176) = *(v0 + 112);
  *(v0 + 1192) = v20;
  *(v0 + 1208) = *(v0 + 144);
  v21 = *(v0 + 64);
  *(v0 + 1112) = *(v0 + 48);
  *(v0 + 1128) = v21;
  v22 = *(v0 + 96);
  *(v0 + 1144) = *(v0 + 80);
  *(v0 + 1160) = v22;
  v23 = *(v0 + 32);
  *(v0 + 1080) = *(v0 + 16);
  *(v0 + 1096) = v23;
  v24 = *(v0 + 160);
  outlined init with copy of MLS.OutgoingEventState?(v0 + 16, v0 + 472, &_s15SecureMessaging3MLSO17EncryptionContextVy_AC9AllMemberO10Foundation4DataVGMd, &_s15SecureMessaging3MLSO17EncryptionContextVy_AC9AllMemberO10Foundation4DataVGMR);
  Date.init()();
  v25 = *(v16 + 20);
  v26 = type metadata accessor for Date();
  (*(*(v26 - 8) + 56))(v14 + v25, 1, 1, v26);
  outlined init with take of MetricCollector.Event(v14, v15);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v47[0] = v24;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v15, 0x5864726177726F46, 0xEA00000000004350, isUniquelyReferenced_nonNull_native);
  v28 = v47[0];
  *(v0 + 1344) = v47[0];

  v29 = *(v0 + 1144);
  *(v0 + 248) = *(v0 + 1160);
  v30 = *(v0 + 1192);
  *(v0 + 264) = *(v0 + 1176);
  *(v0 + 280) = v30;
  *(v0 + 296) = *(v0 + 1208);
  v31 = *(v0 + 1080);
  *(v0 + 184) = *(v0 + 1096);
  v32 = *(v0 + 1128);
  *(v0 + 200) = *(v0 + 1112);
  *(v0 + 216) = v32;
  *(v0 + 232) = v29;
  *(v0 + 168) = v31;
  *(v0 + 312) = v28;
  v33 = *(*(v17 + direct field offset for MLS.XPCClientCoordinator.xpcClient) + OBJC_IVAR____TtCO15SecureMessaging8XPCUtils9XPCClient_deliveryInterface);
  *(v0 + 1352) = v33;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SecureMessaging3MLSO26EncryptionProcessedContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO26EncryptionProcessedContextVy_10Foundation4DataVGMR);
  v35 = swift_task_alloc();
  *(v0 + 1360) = v35;
  *(v35 + 16) = v0 + 168;
  *(v35 + 24) = v17;
  v36 = swift_task_alloc();
  *(v0 + 1368) = v36;
  *(v36 + 16) = v45;
  *(v36 + 32) = v19;
  *(v36 + 40) = v18;
  v37 = *(*v33 + 360);

  v44 = v37 + *v37;
  v38 = v37[1];
  v39 = swift_task_alloc();
  *(v0 + 1376) = v39;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DataV_ACtMd, &_s10Foundation4DataV_ACtMR);
  v41 = lazy protocol witness table accessor for type MLS.KeyPackageRetrievalResult<MLS.AllMember> and conformance MLS.KeyPackageRetrievalResult<A>(&lazy protocol witness table cache variable for type MLS.EncryptionProcessedContext<Data> and conformance MLS.EncryptionProcessedContext<A>, &_s15SecureMessaging3MLSO26EncryptionProcessedContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO26EncryptionProcessedContextVy_10Foundation4DataVGMR);
  v42 = lazy protocol witness table accessor for type MLS.KeyPackageRetrievalResult<MLS.AllMember> and conformance MLS.KeyPackageRetrievalResult<A>(&lazy protocol witness table cache variable for type MLS.EncryptionProcessedContext<Data> and conformance MLS.EncryptionProcessedContext<A>, &_s15SecureMessaging3MLSO26EncryptionProcessedContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO26EncryptionProcessedContextVy_10Foundation4DataVGMR);
  v43 = lazy protocol witness table accessor for type MLS.EncryptionError and conformance MLS.EncryptionError();
  *v39 = v0;
  v39[1] = MLS.XPCClientCoordinator.applicationEncrypt(data:withGroup:context:);
  v55 = v42;
  v56 = v43;
  v53 = v40;
  v54 = v41;
  v51 = v34;
  v52 = &type metadata for MLS.EncryptionError;
  v49 = partial apply for closure #3 in MLS.XPCClientCoordinator.applicationEncrypt(data:withGroup:context:);
  v50 = v36;

  __asm { BRAA            X8, X16 }
}

uint64_t MLS.XPCClientCoordinator.applicationEncrypt(data:withGroup:context:)()
{
  v2 = *v1;
  v3 = *(*v1 + 1376);
  v4 = *v1;
  *(*v1 + 1384) = v0;

  v5 = *(v2 + 1352);
  v6 = *(v2 + 1328);

  if (v0)
  {
    v7 = MLS.XPCClientCoordinator.applicationEncrypt(data:withGroup:context:);
  }

  else
  {
    v7 = MLS.XPCClientCoordinator.applicationEncrypt(data:withGroup:context:);
  }

  return MEMORY[0x2822009F8](v7, v6, 0);
}

{
  v1 = *(v0 + 1368);
  v2 = *(v0 + 1360);
  v3 = *(v0 + 1344);
  v4 = *(v0 + 1320);
  v5 = *(v0 + 1312);
  v6 = *(v0 + 1256);
  v7 = *(v0 + 1176);
  *(v0 + 1040) = *(v0 + 1192);
  *(v0 + 1056) = *(v0 + 1208);
  v8 = *(v0 + 1128);
  *(v0 + 960) = *(v0 + 1112);
  *(v0 + 976) = v8;
  v9 = *(v0 + 1144);
  *(v0 + 1008) = *(v0 + 1160);
  *(v0 + 1024) = v7;
  *(v0 + 992) = v9;
  v10 = *(v0 + 1096);
  *(v0 + 928) = *(v0 + 1080);
  *(v0 + 944) = v10;
  *(v0 + 1072) = v3;
  outlined destroy of NSObject?(v0 + 928, &_s15SecureMessaging3MLSO17EncryptionContextVy_AC9AllMemberO10Foundation4DataVGMd, &_s15SecureMessaging3MLSO17EncryptionContextVy_AC9AllMemberO10Foundation4DataVGMR);
  v11 = *(v0 + 1240);
  v12 = *(v0 + 1248);
  *v6 = *(v0 + 1224);
  *(v6 + 16) = v11;
  *(v6 + 24) = v12;

  v13 = *(v0 + 8);

  return v13();
}

{
  v36 = v0;
  v1 = *(v0 + 1384);
  v2 = *(v0 + 1344);
  v3 = *(v0 + 1336);
  v4 = *(v0 + 1296);
  v5 = *(v0 + 1192);
  *(v0 + 720) = *(v0 + 1176);
  *(v0 + 736) = v5;
  *(v0 + 752) = *(v0 + 1208);
  v6 = *(v0 + 1128);
  *(v0 + 656) = *(v0 + 1112);
  *(v0 + 672) = v6;
  v7 = *(v0 + 1160);
  *(v0 + 688) = *(v0 + 1144);
  *(v0 + 704) = v7;
  v8 = *(v0 + 1096);
  *(v0 + 624) = *(v0 + 1080);
  *(v0 + 640) = v8;
  *(v0 + 768) = v2;
  outlined destroy of NSObject?(v0 + 624, &_s15SecureMessaging3MLSO17EncryptionContextVy_AC9AllMemberO10Foundation4DataVGMd, &_s15SecureMessaging3MLSO17EncryptionContextVy_AC9AllMemberO10Foundation4DataVGMR);

  outlined init with copy of MLS.OutgoingEventState?(v0 + 16, v0 + 776, &_s15SecureMessaging3MLSO17EncryptionContextVy_AC9AllMemberO10Foundation4DataVGMd, &_s15SecureMessaging3MLSO17EncryptionContextVy_AC9AllMemberO10Foundation4DataVGMR);

  v9 = v1;
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.error.getter();
  outlined destroy of NSObject?(v0 + 16, &_s15SecureMessaging3MLSO17EncryptionContextVy_AC9AllMemberO10Foundation4DataVGMd, &_s15SecureMessaging3MLSO17EncryptionContextVy_AC9AllMemberO10Foundation4DataVGMR);

  if (os_log_type_enabled(v10, v11))
  {
    v12 = *(v0 + 1384);
    v13 = *(v0 + 1296);
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v34 = v16;
    *v14 = 136315650;
    v17 = *(v0 + 16);
    v18 = *(v0 + 24);

    v19 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v17, v18, &v34);

    *(v14 + 4) = v19;
    *(v14 + 12) = 2112;
    v20 = v12;
    v21 = _swift_stdlib_bridgeErrorToNSError();
    *(v14 + 14) = v21;
    *v15 = v21;
    *(v14 + 22) = 2080;
    v22 = *(v13 + direct field offset for MLS.XPCClientCoordinator.uniqueClientIdentifier);
    v23 = *(v13 + direct field offset for MLS.XPCClientCoordinator.uniqueClientIdentifier + 8);

    strcpy(v35, "EncryptedRCS.");
    HIWORD(v35[1]) = -4864;
    MEMORY[0x2667545A0](v22, v23);

    v24 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v35[0], v35[1], &v34);

    *(v14 + 24) = v24;
    _os_log_impl(&dword_264F1F000, v10, v11, "XPCClientCoordinator applicationEncrypt failed { identifier: %s, error: %@, client: %s }", v14, 0x20u);
    outlined destroy of NSObject?(v15, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x266755550](v15, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x266755550](v16, -1, -1);
    MEMORY[0x266755550](v14, -1, -1);
  }

  else
  {
    v25 = *(v0 + 1296);
  }

  v26 = *(v0 + 1384);
  v27 = *(v0 + 1368);
  v28 = *(v0 + 1360);
  v29 = *(v0 + 1320);
  v30 = *(v0 + 1312);
  swift_willThrow();

  v31 = *(v0 + 8);
  v32 = *(v0 + 1384);

  return v31();
}

uint64_t closure #1 in MLS.XPCClientCoordinator.applicationEncrypt(data:withGroup:context:)@<X0>(__int128 *a1@<X1>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  v21 = a1[6];
  v22 = a1[7];
  v23 = a1[8];
  v24 = *(a1 + 18);
  v17 = a1[2];
  v18 = a1[3];
  v19 = a1[4];
  v20 = a1[5];
  v13 = *a1;
  v16 = a1[1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SecureMessaging3MLSO17EncryptionContextVy_AC9AllMemberO10Foundation4DataVGMd, &_s15SecureMessaging3MLSO17EncryptionContextVy_AC9AllMemberO10Foundation4DataVGMR);
  lazy protocol witness table accessor for type MLS.KeyPackageRetrievalResult<MLS.AllMember> and conformance MLS.KeyPackageRetrievalResult<A>(&lazy protocol witness table cache variable for type MLS.EncryptionContext<MLS.AllMember, Data> and conformance MLS.EncryptionContext<A, B>, &_s15SecureMessaging3MLSO17EncryptionContextVy_AC9AllMemberO10Foundation4DataVGMd, &_s15SecureMessaging3MLSO17EncryptionContextVy_AC9AllMemberO10Foundation4DataVGMR);
  result = dispatch thunk of JSONEncoder.encode<A>(_:)();
  if (!v3)
  {
    v8 = result;
    v9 = v7;
    v14 = *(a2 + direct field offset for MLS.XPCClientCoordinator.uniqueClientIdentifier);
    v15 = *(a2 + direct field offset for MLS.XPCClientCoordinator.uniqueClientIdentifier + 8);
    lazy protocol witness table accessor for type MLS.UniqueClientIdentifier and conformance MLS.UniqueClientIdentifier();

    v10 = dispatch thunk of JSONEncoder.encode<A>(_:)();
    v12 = v11;

    *a3 = v10;
    a3[1] = v12;
    a3[2] = v8;
    a3[3] = v9;
  }

  return result;
}

uint64_t MLS.XPCClientCoordinator.applicationSign(input:withGroup:context:)(uint64_t a1, _OWORD *a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  *(v6 + 168) = a4;
  *(v6 + 176) = v5;
  *(v6 + 152) = a1;
  *(v6 + 160) = a3;
  v9 = type metadata accessor for MetricCollector.Event();
  *(v6 + 184) = v9;
  v10 = *(*(v9 - 8) + 64) + 15;
  *(v6 + 192) = swift_task_alloc();
  v11 = swift_task_alloc();
  v12 = a2[1];
  *(v6 + 16) = *a2;
  *(v6 + 32) = v12;
  *(v6 + 48) = a2[2];
  *(v6 + 60) = *(a2 + 44);
  v13 = *a5;
  v14 = a5[1];
  *(v6 + 200) = v11;
  *(v6 + 208) = v13;
  *(v6 + 216) = v14;
  *(v6 + 224) = *(a5 + 1);
  *(v6 + 240) = a5[4];
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v15 = static MLSActor.shared;
  *(v6 + 248) = static MLSActor.shared;

  return MEMORY[0x2822009F8](MLS.XPCClientCoordinator.applicationSign(input:withGroup:context:), v15, 0);
}

void MLS.XPCClientCoordinator.applicationSign(input:withGroup:context:)()
{
  v2 = v0[29];
  v1 = v0[30];
  v4 = v0[27];
  v3 = v0[28];
  v5 = v0[22];
  v0[32] = direct field offset for MLS.XPCClientCoordinator.logger;

  outlined copy of Data?(v3, v2);

  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();

  outlined consume of Data?(v3, v2);

  if (os_log_type_enabled(v6, v7))
  {
    v9 = v0[26];
    v8 = v0[27];
    v10 = v0[22];
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v45 = v12;
    *v11 = 136315394;

    v13 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9, v8, &v45);

    *(v11 + 4) = v13;
    *(v11 + 12) = 2080;
    v14 = *(v10 + direct field offset for MLS.XPCClientCoordinator.uniqueClientIdentifier);
    v15 = *(v10 + direct field offset for MLS.XPCClientCoordinator.uniqueClientIdentifier + 8);
    strcpy(v46, "EncryptedRCS.");
    HIWORD(v46[1]) = -4864;

    MEMORY[0x2667545A0](v14, v15);

    v16 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v46[0], v46[1], &v45);

    *(v11 + 14) = v16;
    _os_log_impl(&dword_264F1F000, v6, v7, "XPCClientCoordinator applicationSign { identifier: %s, client: %s }", v11, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x266755550](v12, -1, -1);
    MEMORY[0x266755550](v11, -1, -1);
  }

  else
  {
    v17 = v0[22];
  }

  v18 = v0[29];
  v19 = v0[30];
  v21 = v0[27];
  v20 = v0[28];
  v22 = v0[25];
  v23 = v0[26];
  v25 = v0[23];
  v24 = v0[24];
  v26 = v0[22];
  v44 = v0[21];
  v42 = v0[20];

  outlined copy of Data?(v20, v18);

  Date.init()();
  v27 = *(v25 + 20);
  v28 = type metadata accessor for Date();
  (*(*(v28 - 8) + 56))(v22 + v27, 1, 1, v28);
  outlined init with take of MetricCollector.Event(v22, v24);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v46[0] = v19;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v24, 0x5864726177726F46, 0xEA00000000004350, isUniquelyReferenced_nonNull_native);
  v30 = v46[0];
  v0[33] = v46[0];

  v0[10] = v23;
  v0[11] = v21;
  v0[12] = v20;
  v0[13] = v18;
  v0[14] = v30;
  v31 = *(*(v26 + direct field offset for MLS.XPCClientCoordinator.xpcClient) + OBJC_IVAR____TtCO15SecureMessaging8XPCUtils9XPCClient_deliveryInterface);
  v0[34] = v31;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SecureMessaging3MLSO23SigningProcessedContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO23SigningProcessedContextVy_10Foundation4DataVGMR);
  v33 = swift_task_alloc();
  v0[35] = v33;
  v33[2] = v0 + 2;
  v33[3] = v0 + 10;
  v33[4] = v26;
  v34 = swift_task_alloc();
  v0[36] = v34;
  *(v34 + 16) = v42;
  *(v34 + 24) = v44;
  v35 = *(*v31 + 360);

  v43 = v35 + *v35;
  v36 = v35[1];
  v37 = swift_task_alloc();
  v0[37] = v37;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DataV_A2CtMd, &_s10Foundation4DataV_A2CtMR);
  v39 = lazy protocol witness table accessor for type MLS.KeyPackageRetrievalResult<MLS.AllMember> and conformance MLS.KeyPackageRetrievalResult<A>(&lazy protocol witness table cache variable for type MLS.SigningProcessedContext<Data> and conformance MLS.SigningProcessedContext<A>, &_s15SecureMessaging3MLSO23SigningProcessedContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO23SigningProcessedContextVy_10Foundation4DataVGMR);
  v40 = lazy protocol witness table accessor for type MLS.KeyPackageRetrievalResult<MLS.AllMember> and conformance MLS.KeyPackageRetrievalResult<A>(&lazy protocol witness table cache variable for type MLS.SigningProcessedContext<Data> and conformance MLS.SigningProcessedContext<A>, &_s15SecureMessaging3MLSO23SigningProcessedContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO23SigningProcessedContextVy_10Foundation4DataVGMR);
  v41 = lazy protocol witness table accessor for type MLS.SigningError and conformance MLS.SigningError();
  *v37 = v0;
  v37[1] = MLS.XPCClientCoordinator.applicationSign(input:withGroup:context:);
  v54 = v40;
  v55 = v41;
  v52 = v38;
  v53 = v39;
  v50 = v32;
  v51 = &type metadata for MLS.SigningError;
  v48 = partial apply for closure #3 in MLS.XPCClientCoordinator.applicationSign(input:withGroup:context:);
  v49 = v34;

  __asm { BRAA            X8, X16 }
}

uint64_t MLS.XPCClientCoordinator.applicationSign(input:withGroup:context:)()
{
  v2 = *v1;
  v3 = *(*v1 + 296);
  v4 = *v1;
  *(*v1 + 304) = v0;

  v5 = v2[36];
  v6 = v2[35];
  v7 = v2[34];
  v8 = v2[31];

  if (v0)
  {
    v9 = MLS.XPCClientCoordinator.applicationSign(input:withGroup:context:);
  }

  else
  {
    v9 = MLS.XPCClientCoordinator.applicationSign(input:withGroup:context:);
  }

  return MEMORY[0x2822009F8](v9, v8, 0);
}

{
  v1 = *(v0 + 264);
  v3 = *(v0 + 224);
  v2 = *(v0 + 232);
  v4 = *(v0 + 216);
  v6 = *(v0 + 192);
  v5 = *(v0 + 200);
  v7 = *(v0 + 152);

  outlined consume of Data?(v3, v2);

  v8 = *(v0 + 136);
  v9 = *(v0 + 144);
  *v7 = *(v0 + 120);
  *(v7 + 16) = v8;
  *(v7 + 24) = v9;

  v10 = *(v0 + 8);

  return v10();
}

{
  v34 = v0;
  v1 = v0[38];
  v3 = v0[32];
  v2 = v0[33];
  v5 = v0[29];
  v4 = v0[30];
  v7 = v0[27];
  v6 = v0[28];
  v8 = v0[22];

  outlined consume of Data?(v6, v5);

  outlined copy of Data?(v6, v5);

  v9 = v1;
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.error.getter();

  outlined consume of Data?(v6, v5);

  if (os_log_type_enabled(v10, v11))
  {
    v12 = v0[38];
    v14 = v0[26];
    v13 = v0[27];
    v15 = v0[22];
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v32 = v18;
    *v16 = 136315650;

    v19 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v14, v13, &v32);

    *(v16 + 4) = v19;
    *(v16 + 12) = 2112;
    v20 = v12;
    v21 = _swift_stdlib_bridgeErrorToNSError();
    *(v16 + 14) = v21;
    *v17 = v21;
    *(v16 + 22) = 2080;
    v22 = *(v15 + direct field offset for MLS.XPCClientCoordinator.uniqueClientIdentifier);
    v23 = *(v15 + direct field offset for MLS.XPCClientCoordinator.uniqueClientIdentifier + 8);

    strcpy(v33, "EncryptedRCS.");
    HIWORD(v33[1]) = -4864;
    MEMORY[0x2667545A0](v22, v23);

    v24 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v33[0], v33[1], &v32);

    *(v16 + 24) = v24;
    _os_log_impl(&dword_264F1F000, v10, v11, "XPCClientCoordinator applicationSign failed { identifier: %s, error: %@, client: %s }", v16, 0x20u);
    outlined destroy of NSObject?(v17, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x266755550](v17, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x266755550](v18, -1, -1);
    MEMORY[0x266755550](v16, -1, -1);
  }

  else
  {
    v25 = v0[22];
  }

  v26 = v0[38];
  v27 = v0[24];
  v28 = v0[25];
  swift_willThrow();

  v29 = v0[1];
  v30 = v0[38];

  return v29();
}

uint64_t closure #1 in MLS.XPCClientCoordinator.applicationSign(input:withGroup:context:)@<X0>(__int128 *a1@<X1>, __int128 *a2@<X2>, uint64_t a3@<X3>, uint64_t *a4@<X8>)
{
  v18 = *a1;
  v21 = a1[1];
  *v23 = a1[2];
  *&v23[12] = *(a1 + 44);
  lazy protocol witness table accessor for type MLS.SigningInput and conformance MLS.SigningInput();
  result = dispatch thunk of JSONEncoder.encode<A>(_:)();
  if (!v4)
  {
    v10 = result;
    v11 = v9;
    v19 = *a2;
    v22 = a2[1];
    v24 = *(a2 + 4);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SecureMessaging3MLSO14SigningContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO14SigningContextVy_10Foundation4DataVGMR);
    lazy protocol witness table accessor for type MLS.KeyPackageRetrievalResult<MLS.AllMember> and conformance MLS.KeyPackageRetrievalResult<A>(&lazy protocol witness table cache variable for type MLS.SigningContext<Data> and conformance MLS.SigningContext<A>, &_s15SecureMessaging3MLSO14SigningContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO14SigningContextVy_10Foundation4DataVGMR);
    v12 = dispatch thunk of JSONEncoder.encode<A>(_:)();
    v14 = v13;
    v20 = *(a3 + direct field offset for MLS.XPCClientCoordinator.uniqueClientIdentifier);
    lazy protocol witness table accessor for type MLS.UniqueClientIdentifier and conformance MLS.UniqueClientIdentifier();

    v15 = dispatch thunk of JSONEncoder.encode<A>(_:)();
    v17 = v16;

    *a4 = v15;
    a4[1] = v17;
    a4[2] = v10;
    a4[3] = v11;
    a4[4] = v12;
    a4[5] = v14;
  }

  return result;
}

uint64_t MLS.XPCClientCoordinator.applicationEncrypt(groupName:withGroup:context:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6)
{
  *(v7 + 120) = a5;
  *(v7 + 128) = v6;
  *(v7 + 104) = a3;
  *(v7 + 112) = a4;
  *(v7 + 88) = a1;
  *(v7 + 96) = a2;
  v9 = type metadata accessor for MetricCollector.Event();
  *(v7 + 136) = v9;
  v10 = *(*(v9 - 8) + 64) + 15;
  *(v7 + 144) = swift_task_alloc();
  v11 = swift_task_alloc();
  v12 = *a6;
  v13 = a6[1];
  *(v7 + 152) = v11;
  *(v7 + 160) = v12;
  *(v7 + 168) = v13;
  *(v7 + 176) = *(a6 + 1);
  *(v7 + 192) = a6[4];
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v14 = static MLSActor.shared;
  *(v7 + 200) = static MLSActor.shared;

  return MEMORY[0x2822009F8](MLS.XPCClientCoordinator.applicationEncrypt(groupName:withGroup:context:), v14, 0);
}

void MLS.XPCClientCoordinator.applicationEncrypt(groupName:withGroup:context:)()
{
  v2 = *(v0 + 184);
  v1 = *(v0 + 192);
  v4 = *(v0 + 168);
  v3 = *(v0 + 176);
  v5 = *(v0 + 128);
  *(v0 + 208) = direct field offset for MLS.XPCClientCoordinator.logger;

  outlined copy of Data?(v3, v2);

  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();

  outlined consume of Data?(v3, v2);

  if (os_log_type_enabled(v6, v7))
  {
    v9 = *(v0 + 160);
    v8 = *(v0 + 168);
    v10 = *(v0 + 128);
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v46 = v12;
    *v11 = 136315394;

    v13 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9, v8, &v46);

    *(v11 + 4) = v13;
    *(v11 + 12) = 2080;
    v14 = *(v10 + direct field offset for MLS.XPCClientCoordinator.uniqueClientIdentifier);
    v15 = *(v10 + direct field offset for MLS.XPCClientCoordinator.uniqueClientIdentifier + 8);
    strcpy(v47, "EncryptedRCS.");
    HIWORD(v47[1]) = -4864;

    MEMORY[0x2667545A0](v14, v15);

    v16 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v47[0], v47[1], &v46);

    *(v11 + 14) = v16;
    _os_log_impl(&dword_264F1F000, v6, v7, "XPCClientCoordinator applicationEncrypt groupName { identifier: %s, client: %s }", v11, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x266755550](v12, -1, -1);
    MEMORY[0x266755550](v11, -1, -1);
  }

  else
  {
    v17 = *(v0 + 128);
  }

  v18 = *(v0 + 184);
  v19 = *(v0 + 192);
  v21 = *(v0 + 168);
  v20 = *(v0 + 176);
  v22 = *(v0 + 152);
  v23 = *(v0 + 160);
  v25 = *(v0 + 136);
  v24 = *(v0 + 144);
  v26 = *(v0 + 128);
  v43 = *(v0 + 112);
  v45 = *(v0 + 120);
  v42 = *(v0 + 96);

  outlined copy of Data?(v20, v18);

  Date.init()();
  v27 = *(v25 + 20);
  v28 = type metadata accessor for Date();
  (*(*(v28 - 8) + 56))(v22 + v27, 1, 1, v28);
  outlined init with take of MetricCollector.Event(v22, v24);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v47[0] = v19;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v24, 0x5864726177726F46, 0xEA00000000004350, isUniquelyReferenced_nonNull_native);
  v30 = v47[0];
  *(v0 + 216) = v47[0];

  *(v0 + 16) = v23;
  *(v0 + 24) = v21;
  *(v0 + 32) = v20;
  *(v0 + 40) = v18;
  *(v0 + 48) = v30;
  v31 = *(*(v26 + direct field offset for MLS.XPCClientCoordinator.xpcClient) + OBJC_IVAR____TtCO15SecureMessaging8XPCUtils9XPCClient_deliveryInterface);
  *(v0 + 224) = v31;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SecureMessaging3MLSO35GroupNameEncryptionProcessedContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO35GroupNameEncryptionProcessedContextVy_10Foundation4DataVGMR);
  v33 = swift_task_alloc();
  *(v0 + 232) = v33;
  *(v33 + 16) = v0 + 16;
  *(v33 + 24) = v26;
  v34 = swift_task_alloc();
  *(v0 + 240) = v34;
  *(v34 + 16) = v42;
  *(v34 + 32) = v43;
  *(v34 + 40) = v45;
  v35 = *(*v31 + 360);

  v44 = v35 + *v35;
  v36 = v35[1];
  v37 = swift_task_alloc();
  *(v0 + 248) = v37;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DataV_ACtMd, &_s10Foundation4DataV_ACtMR);
  v39 = lazy protocol witness table accessor for type MLS.KeyPackageRetrievalResult<MLS.AllMember> and conformance MLS.KeyPackageRetrievalResult<A>(&lazy protocol witness table cache variable for type MLS.GroupNameEncryptionProcessedContext<Data> and conformance MLS.GroupNameEncryptionProcessedContext<A>, &_s15SecureMessaging3MLSO35GroupNameEncryptionProcessedContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO35GroupNameEncryptionProcessedContextVy_10Foundation4DataVGMR);
  v40 = lazy protocol witness table accessor for type MLS.KeyPackageRetrievalResult<MLS.AllMember> and conformance MLS.KeyPackageRetrievalResult<A>(&lazy protocol witness table cache variable for type MLS.GroupNameEncryptionProcessedContext<Data> and conformance MLS.GroupNameEncryptionProcessedContext<A>, &_s15SecureMessaging3MLSO35GroupNameEncryptionProcessedContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO35GroupNameEncryptionProcessedContextVy_10Foundation4DataVGMR);
  v41 = lazy protocol witness table accessor for type MLS.EncryptionError and conformance MLS.EncryptionError();
  *v37 = v0;
  v37[1] = MLS.XPCClientCoordinator.applicationEncrypt(groupName:withGroup:context:);
  v55 = v40;
  v56 = v41;
  v53 = v38;
  v54 = v39;
  v51 = v32;
  v52 = &type metadata for MLS.EncryptionError;
  v49 = partial apply for closure #3 in MLS.XPCClientCoordinator.applicationEncrypt(groupName:withGroup:context:);
  v50 = v34;

  __asm { BRAA            X8, X16 }
}

uint64_t MLS.XPCClientCoordinator.applicationEncrypt(groupName:withGroup:context:)()
{
  v2 = *v1;
  v3 = *(*v1 + 248);
  v4 = *v1;
  *(*v1 + 256) = v0;

  v5 = v2[30];
  v6 = v2[29];
  v7 = v2[28];
  v8 = v2[25];

  if (v0)
  {
    v9 = MLS.XPCClientCoordinator.applicationEncrypt(groupName:withGroup:context:);
  }

  else
  {
    v9 = MLS.XPCClientCoordinator.applicationEncrypt(groupName:withGroup:context:);
  }

  return MEMORY[0x2822009F8](v9, v8, 0);
}

{
  v1 = *(v0 + 216);
  v3 = *(v0 + 176);
  v2 = *(v0 + 184);
  v4 = *(v0 + 168);
  v6 = *(v0 + 144);
  v5 = *(v0 + 152);
  v7 = *(v0 + 88);

  outlined consume of Data?(v3, v2);

  v8 = *(v0 + 72);
  v9 = *(v0 + 80);
  *v7 = *(v0 + 56);
  *(v7 + 16) = v8;
  *(v7 + 24) = v9;

  v10 = *(v0 + 8);

  return v10();
}

{
  v34 = v0;
  v1 = v0[32];
  v3 = v0[26];
  v2 = v0[27];
  v5 = v0[23];
  v4 = v0[24];
  v7 = v0[21];
  v6 = v0[22];
  v8 = v0[16];

  outlined consume of Data?(v6, v5);

  outlined copy of Data?(v6, v5);

  v9 = v1;
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.error.getter();

  outlined consume of Data?(v6, v5);

  if (os_log_type_enabled(v10, v11))
  {
    v12 = v0[32];
    v14 = v0[20];
    v13 = v0[21];
    v15 = v0[16];
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v32 = v18;
    *v16 = 136315650;

    v19 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v14, v13, &v32);

    *(v16 + 4) = v19;
    *(v16 + 12) = 2112;
    v20 = v12;
    v21 = _swift_stdlib_bridgeErrorToNSError();
    *(v16 + 14) = v21;
    *v17 = v21;
    *(v16 + 22) = 2080;
    v22 = *(v15 + direct field offset for MLS.XPCClientCoordinator.uniqueClientIdentifier);
    v23 = *(v15 + direct field offset for MLS.XPCClientCoordinator.uniqueClientIdentifier + 8);

    strcpy(v33, "EncryptedRCS.");
    HIWORD(v33[1]) = -4864;
    MEMORY[0x2667545A0](v22, v23);

    v24 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v33[0], v33[1], &v32);

    *(v16 + 24) = v24;
    _os_log_impl(&dword_264F1F000, v10, v11, "XPCClientCoordinator applicationEncrypt groupName failed { identifier: %s, error: %@, client: %s }", v16, 0x20u);
    outlined destroy of NSObject?(v17, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x266755550](v17, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x266755550](v18, -1, -1);
    MEMORY[0x266755550](v16, -1, -1);
  }

  else
  {
    v25 = v0[16];
  }

  v26 = v0[32];
  v27 = v0[18];
  v28 = v0[19];
  swift_willThrow();

  v29 = v0[1];
  v30 = v0[32];

  return v29();
}

uint64_t MLS.XPCClientCoordinator.processIncoming(groupName:forGroup:context:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6)
{
  *(v7 + 216) = a5;
  *(v7 + 224) = v6;
  *(v7 + 200) = a3;
  *(v7 + 208) = a4;
  *(v7 + 184) = a1;
  *(v7 + 192) = a2;
  v9 = type metadata accessor for MetricCollector.Event();
  *(v7 + 232) = v9;
  v10 = *(*(v9 - 8) + 64) + 15;
  *(v7 + 240) = swift_task_alloc();
  v11 = swift_task_alloc();
  v12 = *a6;
  v13 = a6[1];
  *(v7 + 248) = v11;
  *(v7 + 256) = v12;
  *(v7 + 264) = v13;
  *(v7 + 272) = *(a6 + 1);
  *(v7 + 288) = a6[4];
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v14 = static MLSActor.shared;
  *(v7 + 296) = static MLSActor.shared;

  return MEMORY[0x2822009F8](MLS.XPCClientCoordinator.processIncoming(groupName:forGroup:context:), v14, 0);
}

void MLS.XPCClientCoordinator.processIncoming(groupName:forGroup:context:)()
{
  v2 = *(v0 + 280);
  v1 = *(v0 + 288);
  v4 = *(v0 + 264);
  v3 = *(v0 + 272);
  v5 = *(v0 + 224);
  *(v0 + 304) = direct field offset for MLS.XPCClientCoordinator.logger;

  outlined copy of Data?(v3, v2);

  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();

  outlined consume of Data?(v3, v2);

  if (os_log_type_enabled(v6, v7))
  {
    v9 = *(v0 + 256);
    v8 = *(v0 + 264);
    v10 = *(v0 + 224);
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v46 = v12;
    *v11 = 136315394;

    v13 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9, v8, &v46);

    *(v11 + 4) = v13;
    *(v11 + 12) = 2080;
    v14 = *(v10 + direct field offset for MLS.XPCClientCoordinator.uniqueClientIdentifier);
    v15 = *(v10 + direct field offset for MLS.XPCClientCoordinator.uniqueClientIdentifier + 8);
    strcpy(v47, "EncryptedRCS.");
    HIWORD(v47[1]) = -4864;

    MEMORY[0x2667545A0](v14, v15);

    v16 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v47[0], v47[1], &v46);

    *(v11 + 14) = v16;
    _os_log_impl(&dword_264F1F000, v6, v7, "XPCClientCoordinator processIncoming groupName { identifier: %s, client: %s }", v11, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x266755550](v12, -1, -1);
    MEMORY[0x266755550](v11, -1, -1);
  }

  else
  {
    v17 = *(v0 + 224);
  }

  v18 = *(v0 + 280);
  v19 = *(v0 + 288);
  v21 = *(v0 + 264);
  v20 = *(v0 + 272);
  v22 = *(v0 + 248);
  v23 = *(v0 + 256);
  v25 = *(v0 + 232);
  v24 = *(v0 + 240);
  v26 = *(v0 + 224);
  v43 = *(v0 + 208);
  v45 = *(v0 + 216);
  v42 = *(v0 + 192);

  outlined copy of Data?(v20, v18);

  Date.init()();
  v27 = *(v25 + 20);
  v28 = type metadata accessor for Date();
  (*(*(v28 - 8) + 56))(v22 + v27, 1, 1, v28);
  outlined init with take of MetricCollector.Event(v22, v24);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v47[0] = v19;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v24, 0x5864726177726F46, 0xEA00000000004350, isUniquelyReferenced_nonNull_native);
  v30 = v47[0];
  *(v0 + 312) = v47[0];

  *(v0 + 144) = v23;
  *(v0 + 152) = v21;
  *(v0 + 160) = v20;
  *(v0 + 168) = v18;
  *(v0 + 176) = v30;
  v31 = *(*(v26 + direct field offset for MLS.XPCClientCoordinator.xpcClient) + OBJC_IVAR____TtCO15SecureMessaging8XPCUtils9XPCClient_deliveryInterface);
  *(v0 + 320) = v31;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SecureMessaging3MLSO33IncomingGroupNameProcessedContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO33IncomingGroupNameProcessedContextVy_10Foundation4DataVGMR);
  v33 = swift_task_alloc();
  *(v0 + 328) = v33;
  *(v33 + 16) = v0 + 144;
  *(v33 + 24) = v26;
  v34 = swift_task_alloc();
  *(v0 + 336) = v34;
  *(v34 + 16) = v42;
  *(v34 + 32) = v43;
  *(v34 + 40) = v45;
  v35 = *(*v31 + 360);

  v44 = v35 + *v35;
  v36 = v35[1];
  v37 = swift_task_alloc();
  *(v0 + 344) = v37;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DataV_ACtMd, &_s10Foundation4DataV_ACtMR);
  v39 = lazy protocol witness table accessor for type MLS.KeyPackageRetrievalResult<MLS.AllMember> and conformance MLS.KeyPackageRetrievalResult<A>(&lazy protocol witness table cache variable for type MLS.IncomingGroupNameProcessedContext<Data> and conformance MLS.IncomingGroupNameProcessedContext<A>, &_s15SecureMessaging3MLSO33IncomingGroupNameProcessedContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO33IncomingGroupNameProcessedContextVy_10Foundation4DataVGMR);
  v40 = lazy protocol witness table accessor for type MLS.KeyPackageRetrievalResult<MLS.AllMember> and conformance MLS.KeyPackageRetrievalResult<A>(&lazy protocol witness table cache variable for type MLS.IncomingGroupNameProcessedContext<Data> and conformance MLS.IncomingGroupNameProcessedContext<A>, &_s15SecureMessaging3MLSO33IncomingGroupNameProcessedContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO33IncomingGroupNameProcessedContextVy_10Foundation4DataVGMR);
  v41 = lazy protocol witness table accessor for type MLS.IncomingMessageError and conformance MLS.IncomingMessageError();
  *v37 = v0;
  v37[1] = MLS.XPCClientCoordinator.processIncoming(groupName:forGroup:context:);
  v55 = v40;
  v56 = v41;
  v53 = v38;
  v54 = v39;
  v51 = v32;
  v52 = &type metadata for MLS.IncomingMessageError;
  v49 = partial apply for closure #3 in MLS.XPCClientCoordinator.processIncoming(groupName:forGroup:context:);
  v50 = v34;

  __asm { BRAA            X8, X16 }
}

uint64_t MLS.XPCClientCoordinator.processIncoming(groupName:forGroup:context:)()
{
  v2 = *v1;
  v3 = *(*v1 + 344);
  v13 = *v1;
  *(*v1 + 352) = v0;

  if (v0)
  {
    v5 = v2[41];
    v4 = v2[42];
    v6 = v2[40];
    v7 = v2[37];

    v8 = MLS.XPCClientCoordinator.processIncoming(groupName:forGroup:context:);
    v9 = v7;
  }

  else
  {
    v10 = v2[40];
    v11 = v2[37];

    v8 = MLS.XPCClientCoordinator.processIncoming(groupName:forGroup:context:);
    v9 = v11;
  }

  return MEMORY[0x2822009F8](v8, v9, 0);
}

{
  v1 = *(v0 + 328);
  v2 = *(v0 + 336);
  v3 = *(v0 + 312);
  v5 = *(v0 + 272);
  v4 = *(v0 + 280);
  v6 = *(v0 + 264);
  v8 = *(v0 + 240);
  v7 = *(v0 + 248);
  v9 = *(v0 + 184);

  outlined consume of Data?(v5, v4);

  v10 = *(v0 + 16);
  v11 = *(v0 + 32);
  v12 = *(v0 + 64);
  v9[2] = *(v0 + 48);
  v9[3] = v12;
  *v9 = v10;
  v9[1] = v11;
  v13 = *(v0 + 80);
  v14 = *(v0 + 96);
  v15 = *(v0 + 128);
  v9[6] = *(v0 + 112);
  v9[7] = v15;
  v9[4] = v13;
  v9[5] = v14;

  v16 = *(v0 + 8);

  return v16();
}

{
  v34 = v0;
  v1 = v0[44];
  v3 = v0[38];
  v2 = v0[39];
  v5 = v0[35];
  v4 = v0[36];
  v7 = v0[33];
  v6 = v0[34];
  v8 = v0[28];

  outlined consume of Data?(v6, v5);

  outlined copy of Data?(v6, v5);

  v9 = v1;
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.error.getter();

  outlined consume of Data?(v6, v5);

  if (os_log_type_enabled(v10, v11))
  {
    v12 = v0[44];
    v14 = v0[32];
    v13 = v0[33];
    v15 = v0[28];
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v32 = v18;
    *v16 = 136315650;

    v19 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v14, v13, &v32);

    *(v16 + 4) = v19;
    *(v16 + 12) = 2112;
    v20 = v12;
    v21 = _swift_stdlib_bridgeErrorToNSError();
    *(v16 + 14) = v21;
    *v17 = v21;
    *(v16 + 22) = 2080;
    v22 = *(v15 + direct field offset for MLS.XPCClientCoordinator.uniqueClientIdentifier);
    v23 = *(v15 + direct field offset for MLS.XPCClientCoordinator.uniqueClientIdentifier + 8);

    strcpy(v33, "EncryptedRCS.");
    HIWORD(v33[1]) = -4864;
    MEMORY[0x2667545A0](v22, v23);

    v24 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v33[0], v33[1], &v32);

    *(v16 + 24) = v24;
    _os_log_impl(&dword_264F1F000, v10, v11, "XPCClientCoordinator processIncoming groupName failed { identifier: %s, error: %@, client: %s }", v16, 0x20u);
    outlined destroy of NSObject?(v17, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x266755550](v17, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x266755550](v18, -1, -1);
    MEMORY[0x266755550](v16, -1, -1);
  }

  else
  {
    v25 = v0[28];
  }

  v26 = v0[44];
  v27 = v0[30];
  v28 = v0[31];
  swift_willThrow();

  v29 = v0[1];
  v30 = v0[44];

  return v29();
}

uint64_t closure #3 in MLS.XPCClientCoordinator.applicationEncrypt(data:withGroup:context:)(void **a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t (*a9)(uint64_t, uint64_t), uint64_t a10, SEL *a11)
{
  v26 = *a1;
  v16 = a2[1];
  v17 = a2[2];
  v18 = a2[3];
  v27 = *a2;
  outlined copy of Data._Representation(*a2, v16);
  outlined copy of Data._Representation(v17, v18);
  isa = Data._bridgeToObjectiveC()().super.isa;
  v20 = a9(a5, a6);
  v21 = MEMORY[0x266754510](a7, a8);
  v22 = Data._bridgeToObjectiveC()().super.isa;
  aBlock[4] = a3;
  aBlock[5] = a4;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed Data?, @guaranteed Data?) -> ();
  aBlock[3] = a10;
  v23 = _Block_copy(aBlock);

  [v26 *a11];
  _Block_release(v23);

  outlined consume of Data._Representation(v17, v18);
  return outlined consume of Data._Representation(v27, v16);
}

uint64_t MLS.XPCClientCoordinator.processIncoming(message:forGroup:context:)(uint64_t a1, _OWORD *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v6 + 1568) = v5;
  *(v6 + 1560) = a4;
  *(v6 + 1552) = a3;
  *(v6 + 1544) = a1;
  v9 = type metadata accessor for MetricCollector.Event();
  *(v6 + 1576) = v9;
  v10 = *(*(v9 - 8) + 64) + 15;
  *(v6 + 1584) = swift_task_alloc();
  *(v6 + 1592) = swift_task_alloc();
  v11 = a2[1];
  *(v6 + 1480) = *a2;
  *(v6 + 1496) = v11;
  *(v6 + 1512) = a2[2];
  *(v6 + 1522) = *(a2 + 42);
  v12 = *(a5 + 144);
  *(v6 + 144) = *(a5 + 128);
  *(v6 + 160) = v12;
  *(v6 + 176) = *(a5 + 160);
  v13 = *(a5 + 80);
  *(v6 + 80) = *(a5 + 64);
  *(v6 + 96) = v13;
  v14 = *(a5 + 112);
  *(v6 + 112) = *(a5 + 96);
  *(v6 + 128) = v14;
  v15 = *(a5 + 16);
  *(v6 + 16) = *a5;
  *(v6 + 32) = v15;
  v16 = *(a5 + 48);
  *(v6 + 48) = *(a5 + 32);
  *(v6 + 64) = v16;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v17 = static MLSActor.shared;
  *(v6 + 1600) = static MLSActor.shared;

  return MEMORY[0x2822009F8](MLS.XPCClientCoordinator.processIncoming(message:forGroup:context:), v17, 0);
}

void MLS.XPCClientCoordinator.processIncoming(message:forGroup:context:)()
{
  v1 = *(v0 + 1568);
  *(v0 + 1608) = direct field offset for MLS.XPCClientCoordinator.logger;
  outlined init with copy of MLS.OutgoingEventState?(v0 + 16, v0 + 352, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  outlined destroy of NSObject?(v0 + 16, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
  v4 = os_log_type_enabled(v2, v3);
  v5 = *(v0 + 1568);
  if (v4)
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v48 = v7;
    *v6 = 136315394;
    v8 = *(v0 + 16);
    v9 = *(v0 + 24);

    v10 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v8, v9, &v48);

    *(v6 + 4) = v10;
    *(v6 + 12) = 2080;
    v11 = *(v5 + direct field offset for MLS.XPCClientCoordinator.uniqueClientIdentifier);
    v12 = *(v5 + direct field offset for MLS.XPCClientCoordinator.uniqueClientIdentifier + 8);
    strcpy(v49, "EncryptedRCS.");
    HIWORD(v49[1]) = -4864;

    MEMORY[0x2667545A0](v11, v12);

    v13 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v49[0], v49[1], &v48);

    *(v6 + 14) = v13;
    _os_log_impl(&dword_264F1F000, v2, v3, "XPCClientCoordinator processIncoming { identifier: %s, client: %s }", v6, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x266755550](v7, -1, -1);
    MEMORY[0x266755550](v6, -1, -1);
  }

  else
  {
  }

  v14 = *(v0 + 1592);
  v15 = *(v0 + 1584);
  v16 = *(v0 + 1576);
  v17 = *(v0 + 1568);
  v47 = *(v0 + 1560);
  v18 = *(v0 + 1552);
  v19 = *(v0 + 128);
  *(v0 + 1288) = *(v0 + 112);
  *(v0 + 1304) = v19;
  v20 = *(v0 + 160);
  *(v0 + 1320) = *(v0 + 144);
  *(v0 + 1336) = v20;
  v21 = *(v0 + 64);
  *(v0 + 1224) = *(v0 + 48);
  *(v0 + 1240) = v21;
  v22 = *(v0 + 96);
  *(v0 + 1256) = *(v0 + 80);
  *(v0 + 1272) = v22;
  v23 = *(v0 + 32);
  *(v0 + 1192) = *(v0 + 16);
  *(v0 + 1208) = v23;
  v24 = *(v0 + 176);
  outlined init with copy of MLS.OutgoingEventState?(v0 + 16, v0 + 520, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
  Date.init()();
  v25 = *(v16 + 20);
  v26 = type metadata accessor for Date();
  (*(*(v26 - 8) + 56))(v14 + v25, 1, 1, v26);
  outlined init with take of MetricCollector.Event(v14, v15);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v49[0] = v24;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v15, 0x5864726177726F46, 0xEA00000000004350, isUniquelyReferenced_nonNull_native);
  v28 = v49[0];
  *(v0 + 1616) = v49[0];

  v29 = *(v0 + 1288);
  v30 = *(v0 + 1320);
  v31 = *(v0 + 1336);
  *(v0 + 296) = *(v0 + 1304);
  *(v0 + 312) = v30;
  *(v0 + 328) = v31;
  v32 = *(v0 + 1240);
  *(v0 + 216) = *(v0 + 1224);
  *(v0 + 232) = v32;
  v33 = *(v0 + 1272);
  *(v0 + 248) = *(v0 + 1256);
  *(v0 + 264) = v33;
  *(v0 + 280) = v29;
  v34 = *(v0 + 1208);
  *(v0 + 184) = *(v0 + 1192);
  *(v0 + 200) = v34;
  *(v0 + 344) = v28;
  v35 = *(*(v17 + direct field offset for MLS.XPCClientCoordinator.xpcClient) + OBJC_IVAR____TtCO15SecureMessaging8XPCUtils9XPCClient_deliveryInterface);
  *(v0 + 1624) = v35;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SecureMessaging3MLSO31IncomingMessageProcessedContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO31IncomingMessageProcessedContextVy_10Foundation4DataVGMR);
  v37 = swift_task_alloc();
  *(v0 + 1632) = v37;
  v37[2] = v0 + 1480;
  v37[3] = v0 + 184;
  v37[4] = v17;
  v38 = swift_task_alloc();
  *(v0 + 1640) = v38;
  *(v38 + 16) = v18;
  *(v38 + 24) = v47;
  v39 = *(*v35 + 360);

  v46 = v39 + *v39;
  v40 = v39[1];
  v41 = swift_task_alloc();
  *(v0 + 1648) = v41;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DataV_A2CtMd, &_s10Foundation4DataV_A2CtMR);
  v43 = lazy protocol witness table accessor for type MLS.KeyPackageRetrievalResult<MLS.AllMember> and conformance MLS.KeyPackageRetrievalResult<A>(&lazy protocol witness table cache variable for type MLS.IncomingMessageProcessedContext<Data> and conformance MLS.IncomingMessageProcessedContext<A>, &_s15SecureMessaging3MLSO31IncomingMessageProcessedContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO31IncomingMessageProcessedContextVy_10Foundation4DataVGMR);
  v44 = lazy protocol witness table accessor for type MLS.KeyPackageRetrievalResult<MLS.AllMember> and conformance MLS.KeyPackageRetrievalResult<A>(&lazy protocol witness table cache variable for type MLS.IncomingMessageProcessedContext<Data> and conformance MLS.IncomingMessageProcessedContext<A>, &_s15SecureMessaging3MLSO31IncomingMessageProcessedContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO31IncomingMessageProcessedContextVy_10Foundation4DataVGMR);
  v45 = lazy protocol witness table accessor for type MLS.IncomingMessageError and conformance MLS.IncomingMessageError();
  *v41 = v0;
  v41[1] = MLS.XPCClientCoordinator.processIncoming(message:forGroup:context:);
  v57 = v44;
  v58 = v45;
  v55 = v42;
  v56 = v43;
  v53 = v36;
  v54 = &type metadata for MLS.IncomingMessageError;
  v51 = partial apply for closure #3 in MLS.XPCClientCoordinator.processIncoming(message:forGroup:context:);
  v52 = v38;

  __asm { BRAA            X8, X16 }
}

uint64_t MLS.XPCClientCoordinator.processIncoming(message:forGroup:context:)()
{
  v2 = *v1;
  v3 = *(*v1 + 1648);
  v4 = *v1;
  *(*v1 + 1656) = v0;

  v5 = *(v2 + 1624);
  v6 = *(v2 + 1600);

  if (v0)
  {
    v7 = MLS.XPCClientCoordinator.processIncoming(message:forGroup:context:);
  }

  else
  {
    v7 = MLS.XPCClientCoordinator.processIncoming(message:forGroup:context:);
  }

  return MEMORY[0x2822009F8](v7, v6, 0);
}

{
  v1 = *(v0 + 1304);
  *(v0 + 1120) = *(v0 + 1288);
  *(v0 + 1136) = v1;
  v2 = *(v0 + 1336);
  *(v0 + 1152) = *(v0 + 1320);
  *(v0 + 1168) = v2;
  v3 = *(v0 + 1240);
  *(v0 + 1056) = *(v0 + 1224);
  *(v0 + 1072) = v3;
  v4 = *(v0 + 1272);
  *(v0 + 1088) = *(v0 + 1256);
  *(v0 + 1104) = v4;
  v5 = *(v0 + 1208);
  *(v0 + 1024) = *(v0 + 1192);
  v6 = *(v0 + 1640);
  v7 = *(v0 + 1632);
  v8 = *(v0 + 1616);
  v9 = *(v0 + 1592);
  v10 = *(v0 + 1584);
  v11 = *(v0 + 1544);
  *(v0 + 1040) = v5;
  *(v0 + 1184) = v8;
  outlined destroy of NSObject?(v0 + 1024, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
  v12 = *(v0 + 1400);
  v14 = *(v0 + 1352);
  v13 = *(v0 + 1368);
  v11[2] = *(v0 + 1384);
  v11[3] = v12;
  *v11 = v14;
  v11[1] = v13;
  v15 = *(v0 + 1464);
  v17 = *(v0 + 1416);
  v16 = *(v0 + 1432);
  v11[6] = *(v0 + 1448);
  v11[7] = v15;
  v11[4] = v17;
  v11[5] = v16;

  v18 = *(v0 + 8);

  return v18();
}

{
  v37 = v0;
  v1 = *(v0 + 1656);
  v2 = *(v0 + 1616);
  v3 = *(v0 + 1608);
  v4 = *(v0 + 1568);
  v5 = *(v0 + 1304);
  *(v0 + 784) = *(v0 + 1288);
  *(v0 + 800) = v5;
  v6 = *(v0 + 1336);
  *(v0 + 816) = *(v0 + 1320);
  *(v0 + 832) = v6;
  v7 = *(v0 + 1240);
  *(v0 + 720) = *(v0 + 1224);
  *(v0 + 736) = v7;
  v8 = *(v0 + 1272);
  *(v0 + 752) = *(v0 + 1256);
  *(v0 + 768) = v8;
  v9 = *(v0 + 1208);
  *(v0 + 688) = *(v0 + 1192);
  *(v0 + 704) = v9;
  *(v0 + 848) = v2;
  outlined destroy of NSObject?(v0 + 688, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);

  outlined init with copy of MLS.OutgoingEventState?(v0 + 16, v0 + 856, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);

  v10 = v1;
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.error.getter();
  outlined destroy of NSObject?(v0 + 16, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);

  if (os_log_type_enabled(v11, v12))
  {
    v13 = *(v0 + 1656);
    v14 = *(v0 + 1568);
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v35 = v17;
    *v15 = 136315650;
    v18 = *(v0 + 16);
    v19 = *(v0 + 24);

    v20 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v18, v19, &v35);

    *(v15 + 4) = v20;
    *(v15 + 12) = 2112;
    v21 = v13;
    v22 = _swift_stdlib_bridgeErrorToNSError();
    *(v15 + 14) = v22;
    *v16 = v22;
    *(v15 + 22) = 2080;
    v23 = *(v14 + direct field offset for MLS.XPCClientCoordinator.uniqueClientIdentifier);
    v24 = *(v14 + direct field offset for MLS.XPCClientCoordinator.uniqueClientIdentifier + 8);

    strcpy(v36, "EncryptedRCS.");
    HIWORD(v36[1]) = -4864;
    MEMORY[0x2667545A0](v23, v24);

    v25 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v36[0], v36[1], &v35);

    *(v15 + 24) = v25;
    _os_log_impl(&dword_264F1F000, v11, v12, "XPCClientCoordinator processIncoming failed { identifier: %s, error: %@, client: %s }", v15, 0x20u);
    outlined destroy of NSObject?(v16, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x266755550](v16, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x266755550](v17, -1, -1);
    MEMORY[0x266755550](v15, -1, -1);
  }

  else
  {
    v26 = *(v0 + 1568);
  }

  v27 = *(v0 + 1656);
  v28 = *(v0 + 1640);
  v29 = *(v0 + 1632);
  v30 = *(v0 + 1592);
  v31 = *(v0 + 1584);
  swift_willThrow();

  v32 = *(v0 + 8);
  v33 = *(v0 + 1656);

  return v32();
}

uint64_t MLS.XPCClientCoordinator.processIncoming(message:context:)(uint64_t a1, _OWORD *a2, uint64_t a3)
{
  *(v4 + 1552) = v3;
  *(v4 + 1544) = a1;
  v7 = type metadata accessor for MetricCollector.Event();
  *(v4 + 1560) = v7;
  v8 = *(*(v7 - 8) + 64) + 15;
  *(v4 + 1568) = swift_task_alloc();
  *(v4 + 1576) = swift_task_alloc();
  v9 = a2[1];
  *(v4 + 1480) = *a2;
  *(v4 + 1496) = v9;
  *(v4 + 1512) = a2[2];
  *(v4 + 1522) = *(a2 + 42);
  v10 = *(a3 + 144);
  *(v4 + 144) = *(a3 + 128);
  *(v4 + 160) = v10;
  *(v4 + 176) = *(a3 + 160);
  v11 = *(a3 + 80);
  *(v4 + 80) = *(a3 + 64);
  *(v4 + 96) = v11;
  v12 = *(a3 + 112);
  *(v4 + 112) = *(a3 + 96);
  *(v4 + 128) = v12;
  v13 = *(a3 + 16);
  *(v4 + 16) = *a3;
  *(v4 + 32) = v13;
  v14 = *(a3 + 48);
  *(v4 + 48) = *(a3 + 32);
  *(v4 + 64) = v14;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v15 = static MLSActor.shared;
  *(v4 + 1584) = static MLSActor.shared;

  return MEMORY[0x2822009F8](MLS.XPCClientCoordinator.processIncoming(message:context:), v15, 0);
}

void MLS.XPCClientCoordinator.processIncoming(message:context:)()
{
  v1 = *(v0 + 1552);
  *(v0 + 1592) = direct field offset for MLS.XPCClientCoordinator.logger;
  outlined init with copy of MLS.OutgoingEventState?(v0 + 16, v0 + 352, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  outlined destroy of NSObject?(v0 + 16, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
  v4 = os_log_type_enabled(v2, v3);
  v5 = *(v0 + 1552);
  if (v4)
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v45 = v7;
    *v6 = 136315394;
    v8 = *(v0 + 16);
    v9 = *(v0 + 24);

    v10 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v8, v9, &v45);

    *(v6 + 4) = v10;
    *(v6 + 12) = 2080;
    v11 = *(v5 + direct field offset for MLS.XPCClientCoordinator.uniqueClientIdentifier);
    v12 = *(v5 + direct field offset for MLS.XPCClientCoordinator.uniqueClientIdentifier + 8);
    strcpy(v46, "EncryptedRCS.");
    HIWORD(v46[1]) = -4864;

    MEMORY[0x2667545A0](v11, v12);

    v13 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v46[0], v46[1], &v45);

    *(v6 + 14) = v13;
    _os_log_impl(&dword_264F1F000, v2, v3, "XPCClientCoordinator processIncoming { identifier: %s, client: %s }", v6, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x266755550](v7, -1, -1);
    MEMORY[0x266755550](v6, -1, -1);
  }

  else
  {
  }

  v14 = *(v0 + 1576);
  v15 = *(v0 + 1568);
  v16 = *(v0 + 1560);
  v17 = *(v0 + 1552);
  v18 = *(v0 + 128);
  *(v0 + 1288) = *(v0 + 112);
  *(v0 + 1304) = v18;
  v19 = *(v0 + 160);
  *(v0 + 1320) = *(v0 + 144);
  *(v0 + 1336) = v19;
  v20 = *(v0 + 64);
  *(v0 + 1224) = *(v0 + 48);
  *(v0 + 1240) = v20;
  v21 = *(v0 + 96);
  *(v0 + 1256) = *(v0 + 80);
  *(v0 + 1272) = v21;
  v22 = *(v0 + 32);
  *(v0 + 1192) = *(v0 + 16);
  *(v0 + 1208) = v22;
  v23 = *(v0 + 176);
  outlined init with copy of MLS.OutgoingEventState?(v0 + 16, v0 + 520, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
  Date.init()();
  v24 = *(v16 + 20);
  v25 = type metadata accessor for Date();
  (*(*(v25 - 8) + 56))(v14 + v24, 1, 1, v25);
  outlined init with take of MetricCollector.Event(v14, v15);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v46[0] = v23;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v15, 0x5864726177726F46, 0xEA00000000004350, isUniquelyReferenced_nonNull_native);
  v27 = v46[0];
  *(v0 + 1600) = v46[0];

  v28 = *(v0 + 1288);
  v29 = *(v0 + 1320);
  v30 = *(v0 + 1336);
  *(v0 + 296) = *(v0 + 1304);
  *(v0 + 312) = v29;
  *(v0 + 328) = v30;
  v31 = *(v0 + 1240);
  *(v0 + 216) = *(v0 + 1224);
  *(v0 + 232) = v31;
  v32 = *(v0 + 1272);
  *(v0 + 248) = *(v0 + 1256);
  *(v0 + 264) = v32;
  *(v0 + 280) = v28;
  v33 = *(v0 + 1208);
  *(v0 + 184) = *(v0 + 1192);
  *(v0 + 200) = v33;
  *(v0 + 344) = v27;
  v34 = *(*(v17 + direct field offset for MLS.XPCClientCoordinator.xpcClient) + OBJC_IVAR____TtCO15SecureMessaging8XPCUtils9XPCClient_deliveryInterface);
  *(v0 + 1608) = v34;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SecureMessaging3MLSO31IncomingMessageProcessedContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO31IncomingMessageProcessedContextVy_10Foundation4DataVGMR);
  v36 = swift_task_alloc();
  *(v0 + 1616) = v36;
  v36[2] = v0 + 1480;
  v36[3] = v0 + 184;
  v36[4] = v17;
  v37 = *(*v34 + 360);

  v44 = v37 + *v37;
  v38 = v37[1];
  v39 = swift_task_alloc();
  *(v0 + 1624) = v39;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DataV_A2CtMd, &_s10Foundation4DataV_A2CtMR);
  v41 = lazy protocol witness table accessor for type MLS.KeyPackageRetrievalResult<MLS.AllMember> and conformance MLS.KeyPackageRetrievalResult<A>(&lazy protocol witness table cache variable for type MLS.IncomingMessageProcessedContext<Data> and conformance MLS.IncomingMessageProcessedContext<A>, &_s15SecureMessaging3MLSO31IncomingMessageProcessedContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO31IncomingMessageProcessedContextVy_10Foundation4DataVGMR);
  v42 = lazy protocol witness table accessor for type MLS.KeyPackageRetrievalResult<MLS.AllMember> and conformance MLS.KeyPackageRetrievalResult<A>(&lazy protocol witness table cache variable for type MLS.IncomingMessageProcessedContext<Data> and conformance MLS.IncomingMessageProcessedContext<A>, &_s15SecureMessaging3MLSO31IncomingMessageProcessedContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO31IncomingMessageProcessedContextVy_10Foundation4DataVGMR);
  v43 = lazy protocol witness table accessor for type MLS.IncomingMessageError and conformance MLS.IncomingMessageError();
  *v39 = v0;
  v39[1] = MLS.XPCClientCoordinator.processIncoming(message:context:);
  v54 = v42;
  v55 = v43;
  v52 = v40;
  v53 = v41;
  v50 = v35;
  v51 = &type metadata for MLS.IncomingMessageError;
  v48 = closure #3 in MLS.XPCClientCoordinator.processIncoming(message:context:);
  v49 = 0;

  __asm { BRAA            X8, X16 }
}

uint64_t MLS.XPCClientCoordinator.processIncoming(message:context:)()
{
  v2 = *v1;
  v3 = *(*v1 + 1624);
  v4 = *v1;
  *(*v1 + 1632) = v0;

  v5 = *(v2 + 1608);
  v6 = *(v2 + 1584);

  if (v0)
  {
    v7 = MLS.XPCClientCoordinator.processIncoming(message:context:);
  }

  else
  {
    v7 = MLS.XPCClientCoordinator.processIncoming(message:context:);
  }

  return MEMORY[0x2822009F8](v7, v6, 0);
}

{
  v1 = *(v0 + 1304);
  *(v0 + 1120) = *(v0 + 1288);
  *(v0 + 1136) = v1;
  v2 = *(v0 + 1336);
  *(v0 + 1152) = *(v0 + 1320);
  *(v0 + 1168) = v2;
  v3 = *(v0 + 1240);
  *(v0 + 1056) = *(v0 + 1224);
  *(v0 + 1072) = v3;
  v4 = *(v0 + 1272);
  *(v0 + 1088) = *(v0 + 1256);
  *(v0 + 1104) = v4;
  v5 = *(v0 + 1208);
  *(v0 + 1024) = *(v0 + 1192);
  v6 = *(v0 + 1616);
  v7 = *(v0 + 1600);
  v8 = *(v0 + 1576);
  v9 = *(v0 + 1568);
  v10 = *(v0 + 1544);
  *(v0 + 1040) = v5;
  *(v0 + 1184) = v7;
  outlined destroy of NSObject?(v0 + 1024, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
  v11 = *(v0 + 1400);
  v13 = *(v0 + 1352);
  v12 = *(v0 + 1368);
  v10[2] = *(v0 + 1384);
  v10[3] = v11;
  *v10 = v13;
  v10[1] = v12;
  v14 = *(v0 + 1464);
  v16 = *(v0 + 1416);
  v15 = *(v0 + 1432);
  v10[6] = *(v0 + 1448);
  v10[7] = v14;
  v10[4] = v16;
  v10[5] = v15;

  v17 = *(v0 + 8);

  return v17();
}

{
  v36 = v0;
  v1 = *(v0 + 1632);
  v2 = *(v0 + 1600);
  v3 = *(v0 + 1592);
  v4 = *(v0 + 1552);
  v5 = *(v0 + 1304);
  *(v0 + 784) = *(v0 + 1288);
  *(v0 + 800) = v5;
  v6 = *(v0 + 1336);
  *(v0 + 816) = *(v0 + 1320);
  *(v0 + 832) = v6;
  v7 = *(v0 + 1240);
  *(v0 + 720) = *(v0 + 1224);
  *(v0 + 736) = v7;
  v8 = *(v0 + 1272);
  *(v0 + 752) = *(v0 + 1256);
  *(v0 + 768) = v8;
  v9 = *(v0 + 1208);
  *(v0 + 688) = *(v0 + 1192);
  *(v0 + 704) = v9;
  *(v0 + 848) = v2;
  outlined destroy of NSObject?(v0 + 688, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);

  outlined init with copy of MLS.OutgoingEventState?(v0 + 16, v0 + 856, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);

  v10 = v1;
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.error.getter();
  outlined destroy of NSObject?(v0 + 16, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);

  if (os_log_type_enabled(v11, v12))
  {
    v13 = *(v0 + 1632);
    v14 = *(v0 + 1552);
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v34 = v17;
    *v15 = 136315650;
    v18 = *(v0 + 16);
    v19 = *(v0 + 24);

    v20 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v18, v19, &v34);

    *(v15 + 4) = v20;
    *(v15 + 12) = 2112;
    v21 = v13;
    v22 = _swift_stdlib_bridgeErrorToNSError();
    *(v15 + 14) = v22;
    *v16 = v22;
    *(v15 + 22) = 2080;
    v23 = *(v14 + direct field offset for MLS.XPCClientCoordinator.uniqueClientIdentifier);
    v24 = *(v14 + direct field offset for MLS.XPCClientCoordinator.uniqueClientIdentifier + 8);

    strcpy(v35, "EncryptedRCS.");
    HIWORD(v35[1]) = -4864;
    MEMORY[0x2667545A0](v23, v24);

    v25 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v35[0], v35[1], &v34);

    *(v15 + 24) = v25;
    _os_log_impl(&dword_264F1F000, v11, v12, "XPCClientCoordinator processIncoming failed { identifier: %s, error: %@, client: %s }", v15, 0x20u);
    outlined destroy of NSObject?(v16, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x266755550](v16, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x266755550](v17, -1, -1);
    MEMORY[0x266755550](v15, -1, -1);
  }

  else
  {
    v26 = *(v0 + 1552);
  }

  v27 = *(v0 + 1632);
  v28 = *(v0 + 1616);
  v29 = *(v0 + 1576);
  v30 = *(v0 + 1568);
  swift_willThrow();

  v31 = *(v0 + 8);
  v32 = *(v0 + 1632);

  return v31();
}

uint64_t closure #1 in MLS.XPCClientCoordinator.processIncoming(message:forGroup:context:)@<X0>(__int128 *a1@<X1>, __int128 *a2@<X2>, uint64_t a3@<X3>, uint64_t *a4@<X8>)
{
  v18 = *a1;
  v21 = a1[1];
  *v23 = a1[2];
  *&v23[10] = *(a1 + 42);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SecureMessaging3MLSO15IncomingMessageVy_AC9AllMemberOGMd, &_s15SecureMessaging3MLSO15IncomingMessageVy_AC9AllMemberOGMR);
  lazy protocol witness table accessor for type MLS.KeyPackageRetrievalResult<MLS.AllMember> and conformance MLS.KeyPackageRetrievalResult<A>(&lazy protocol witness table cache variable for type MLS.IncomingMessage<MLS.AllMember> and conformance MLS.IncomingMessage<A>, &_s15SecureMessaging3MLSO15IncomingMessageVy_AC9AllMemberOGMd, &_s15SecureMessaging3MLSO15IncomingMessageVy_AC9AllMemberOGMR);
  result = dispatch thunk of JSONEncoder.encode<A>(_:)();
  if (!v4)
  {
    v10 = result;
    v11 = v9;
    v30 = a2[8];
    v31 = a2[9];
    v32 = *(a2 + 20);
    v26 = a2[4];
    v27 = a2[5];
    v28 = a2[6];
    v29 = a2[7];
    v19 = *a2;
    v22 = a2[1];
    v24 = a2[2];
    v25 = a2[3];
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
    lazy protocol witness table accessor for type MLS.KeyPackageRetrievalResult<MLS.AllMember> and conformance MLS.KeyPackageRetrievalResult<A>(&lazy protocol witness table cache variable for type MLS.IncomingMessageContext<Data> and conformance MLS.IncomingMessageContext<A>, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
    v12 = dispatch thunk of JSONEncoder.encode<A>(_:)();
    v14 = v13;
    v20 = *(a3 + direct field offset for MLS.XPCClientCoordinator.uniqueClientIdentifier);
    lazy protocol witness table accessor for type MLS.UniqueClientIdentifier and conformance MLS.UniqueClientIdentifier();

    v15 = dispatch thunk of JSONEncoder.encode<A>(_:)();
    v17 = v16;

    *a4 = v15;
    a4[1] = v17;
    a4[2] = v10;
    a4[3] = v11;
    a4[4] = v12;
    a4[5] = v14;
  }

  return result;
}

uint64_t closure #3 in MLS.XPCClientCoordinator.processIncoming(message:context:)(id *a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v15 = *a1;
  v5 = a2[2];
  v6 = a2[3];
  v7 = a2[4];
  v8 = a2[5];
  v16 = a2[1];
  v17 = *a2;
  outlined copy of Data._Representation(*a2, v16);
  outlined copy of Data._Representation(v5, v6);
  outlined copy of Data._Representation(v7, v8);
  isa = Data._bridgeToObjectiveC()().super.isa;
  v10 = Data._bridgeToObjectiveC()().super.isa;
  v11 = Data._bridgeToObjectiveC()().super.isa;
  aBlock[4] = a3;
  aBlock[5] = a4;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed Data?, @guaranteed Data?) -> ();
  aBlock[3] = &block_descriptor_234;
  v12 = _Block_copy(aBlock);

  [v15 processIncomingWithUniqueClientIdentifier:isa message:v10 incomingMessageContext:v11 completion:v12];
  _Block_release(v12);

  outlined consume of Data._Representation(v7, v8);
  outlined consume of Data._Representation(v5, v6);
  return outlined consume of Data._Representation(v17, v16);
}

uint64_t MLS.XPCClientCoordinator.processIncoming(failureToDecrypt:withGroup:context:)(uint64_t a1, _OWORD *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v6 + 1568) = v5;
  *(v6 + 1560) = a4;
  *(v6 + 1552) = a3;
  *(v6 + 1544) = a1;
  v9 = type metadata accessor for MetricCollector.Event();
  *(v6 + 1576) = v9;
  v10 = *(*(v9 - 8) + 64) + 15;
  *(v6 + 1584) = swift_task_alloc();
  *(v6 + 1592) = swift_task_alloc();
  v11 = a2[1];
  *(v6 + 1432) = *a2;
  *(v6 + 1448) = v11;
  *(v6 + 1464) = a2[2];
  *(v6 + 1473) = *(a2 + 41);
  v12 = *(a5 + 144);
  *(v6 + 144) = *(a5 + 128);
  *(v6 + 160) = v12;
  *(v6 + 176) = *(a5 + 160);
  v13 = *(a5 + 80);
  *(v6 + 80) = *(a5 + 64);
  *(v6 + 96) = v13;
  v14 = *(a5 + 112);
  *(v6 + 112) = *(a5 + 96);
  *(v6 + 128) = v14;
  v15 = *(a5 + 16);
  *(v6 + 16) = *a5;
  *(v6 + 32) = v15;
  v16 = *(a5 + 48);
  *(v6 + 48) = *(a5 + 32);
  *(v6 + 64) = v16;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v17 = static MLSActor.shared;
  *(v6 + 1600) = static MLSActor.shared;

  return MEMORY[0x2822009F8](MLS.XPCClientCoordinator.processIncoming(failureToDecrypt:withGroup:context:), v17, 0);
}

void MLS.XPCClientCoordinator.processIncoming(failureToDecrypt:withGroup:context:)()
{
  v1 = *(v0 + 1568);
  *(v0 + 1608) = direct field offset for MLS.XPCClientCoordinator.logger;
  outlined init with copy of MLS.OutgoingEventState?(v0 + 16, v0 + 352, &_s15SecureMessaging3MLSO31IncomingFailureToDecryptContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO31IncomingFailureToDecryptContextVy_10Foundation4DataVGMR);

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  outlined destroy of NSObject?(v0 + 16, &_s15SecureMessaging3MLSO31IncomingFailureToDecryptContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO31IncomingFailureToDecryptContextVy_10Foundation4DataVGMR);
  v4 = os_log_type_enabled(v2, v3);
  v5 = *(v0 + 1568);
  if (v4)
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v48 = v7;
    *v6 = 136315394;
    v8 = *(v0 + 16);
    v9 = *(v0 + 24);

    v10 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v8, v9, &v48);

    *(v6 + 4) = v10;
    *(v6 + 12) = 2080;
    v11 = *(v5 + direct field offset for MLS.XPCClientCoordinator.uniqueClientIdentifier);
    v12 = *(v5 + direct field offset for MLS.XPCClientCoordinator.uniqueClientIdentifier + 8);
    strcpy(v49, "EncryptedRCS.");
    HIWORD(v49[1]) = -4864;

    MEMORY[0x2667545A0](v11, v12);

    v13 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v49[0], v49[1], &v48);

    *(v6 + 14) = v13;
    _os_log_impl(&dword_264F1F000, v2, v3, "XPCClientCoordinator processIncomingFTD { identifier: %s, client: %s }", v6, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x266755550](v7, -1, -1);
    MEMORY[0x266755550](v6, -1, -1);
  }

  else
  {
  }

  v14 = *(v0 + 1592);
  v15 = *(v0 + 1584);
  v16 = *(v0 + 1576);
  v17 = *(v0 + 1568);
  v45 = *(v0 + 1552);
  v47 = *(v0 + 1560);
  v18 = *(v0 + 96);
  *(v0 + 1384) = *(v0 + 80);
  *(v0 + 1400) = v18;
  *(v0 + 1416) = *(v0 + 112);
  v19 = *(v0 + 32);
  *(v0 + 1320) = *(v0 + 16);
  *(v0 + 1336) = v19;
  v20 = *(v0 + 64);
  *(v0 + 1352) = *(v0 + 48);
  *(v0 + 1368) = v20;
  v21 = *(v0 + 128);
  v22 = *(v0 + 168);
  v23 = *(v0 + 136);
  *(v0 + 1512) = *(v0 + 152);
  *(v0 + 1528) = v22;
  *(v0 + 1496) = v23;
  outlined init with copy of MLS.OutgoingEventState?(v0 + 16, v0 + 520, &_s15SecureMessaging3MLSO31IncomingFailureToDecryptContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO31IncomingFailureToDecryptContextVy_10Foundation4DataVGMR);
  Date.init()();
  v24 = *(v16 + 20);
  v25 = type metadata accessor for Date();
  (*(*(v25 - 8) + 56))(v14 + v24, 1, 1, v25);
  outlined init with take of MetricCollector.Event(v14, v15);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v49[0] = v21;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v15, 0x5864726177726F46, 0xEA00000000004350, isUniquelyReferenced_nonNull_native);
  v27 = v49[0];
  *(v0 + 1616) = v49[0];

  v28 = *(v0 + 1352);
  *(v0 + 232) = *(v0 + 1368);
  v29 = *(v0 + 1400);
  *(v0 + 248) = *(v0 + 1384);
  v30 = *(v0 + 1416);
  *(v0 + 264) = v29;
  *(v0 + 280) = v30;
  v31 = *(v0 + 1336);
  *(v0 + 184) = *(v0 + 1320);
  *(v0 + 200) = v31;
  *(v0 + 216) = v28;
  *(v0 + 296) = v27;
  v32 = *(v0 + 1496);
  v33 = *(v0 + 1528);
  *(v0 + 320) = *(v0 + 1512);
  *(v0 + 336) = v33;
  *(v0 + 304) = v32;
  v34 = *(*(v17 + direct field offset for MLS.XPCClientCoordinator.xpcClient) + OBJC_IVAR____TtCO15SecureMessaging8XPCUtils9XPCClient_deliveryInterface);
  *(v0 + 1624) = v34;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SecureMessaging3MLSO40IncomingFailureToDecryptProcessedContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO40IncomingFailureToDecryptProcessedContextVy_10Foundation4DataVGMR);
  v36 = swift_task_alloc();
  *(v0 + 1632) = v36;
  v36[2] = v0 + 1432;
  v36[3] = v0 + 184;
  v36[4] = v17;
  v37 = swift_task_alloc();
  *(v0 + 1640) = v37;
  *(v37 + 16) = v45;
  *(v37 + 24) = v47;
  v38 = *(*v34 + 360);

  v46 = v38 + *v38;
  v39 = v38[1];
  v40 = swift_task_alloc();
  *(v0 + 1648) = v40;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DataV_A2CtMd, &_s10Foundation4DataV_A2CtMR);
  v42 = lazy protocol witness table accessor for type MLS.KeyPackageRetrievalResult<MLS.AllMember> and conformance MLS.KeyPackageRetrievalResult<A>(&lazy protocol witness table cache variable for type MLS.IncomingFailureToDecryptProcessedContext<Data> and conformance MLS.IncomingFailureToDecryptProcessedContext<A>, &_s15SecureMessaging3MLSO40IncomingFailureToDecryptProcessedContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO40IncomingFailureToDecryptProcessedContextVy_10Foundation4DataVGMR);
  v43 = lazy protocol witness table accessor for type MLS.KeyPackageRetrievalResult<MLS.AllMember> and conformance MLS.KeyPackageRetrievalResult<A>(&lazy protocol witness table cache variable for type MLS.IncomingFailureToDecryptProcessedContext<Data> and conformance MLS.IncomingFailureToDecryptProcessedContext<A>, &_s15SecureMessaging3MLSO40IncomingFailureToDecryptProcessedContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO40IncomingFailureToDecryptProcessedContextVy_10Foundation4DataVGMR);
  v44 = lazy protocol witness table accessor for type MLS.IncomingMessageError and conformance MLS.IncomingMessageError();
  *v40 = v0;
  v40[1] = MLS.XPCClientCoordinator.processIncoming(failureToDecrypt:withGroup:context:);
  v57 = v43;
  v58 = v44;
  v55 = v41;
  v56 = v42;
  v53 = v35;
  v54 = &type metadata for MLS.IncomingMessageError;
  v51 = partial apply for closure #3 in MLS.XPCClientCoordinator.processIncoming(failureToDecrypt:withGroup:context:);
  v52 = v37;

  __asm { BRAA            X8, X16 }
}

uint64_t MLS.XPCClientCoordinator.processIncoming(failureToDecrypt:withGroup:context:)()
{
  v2 = *v1;
  v3 = *(*v1 + 1648);
  v4 = *v1;
  *(*v1 + 1656) = v0;

  v5 = *(v2 + 1624);
  v6 = *(v2 + 1600);

  if (v0)
  {
    v7 = MLS.XPCClientCoordinator.processIncoming(failureToDecrypt:withGroup:context:);
  }

  else
  {
    v7 = MLS.XPCClientCoordinator.processIncoming(failureToDecrypt:withGroup:context:);
  }

  return MEMORY[0x2822009F8](v7, v6, 0);
}

{
  v1 = *(v0 + 1352);
  *(v0 + 1072) = *(v0 + 1368);
  v2 = *(v0 + 1400);
  *(v0 + 1088) = *(v0 + 1384);
  *(v0 + 1104) = v2;
  *(v0 + 1120) = *(v0 + 1416);
  v3 = *(v0 + 1336);
  *(v0 + 1024) = *(v0 + 1320);
  v4 = *(v0 + 1640);
  v5 = *(v0 + 1632);
  v6 = *(v0 + 1616);
  v7 = *(v0 + 1592);
  v8 = *(v0 + 1584);
  v9 = *(v0 + 1544);
  *(v0 + 1040) = v3;
  *(v0 + 1056) = v1;
  *(v0 + 1136) = v6;
  v10 = *(v0 + 1528);
  *(v0 + 1160) = *(v0 + 1512);
  *(v0 + 1176) = v10;
  *(v0 + 1144) = *(v0 + 1496);
  outlined destroy of NSObject?(v0 + 1024, &_s15SecureMessaging3MLSO31IncomingFailureToDecryptContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO31IncomingFailureToDecryptContextVy_10Foundation4DataVGMR);
  v11 = *(v0 + 1240);
  v13 = *(v0 + 1192);
  v12 = *(v0 + 1208);
  v9[2] = *(v0 + 1224);
  v9[3] = v11;
  *v9 = v13;
  v9[1] = v12;
  v14 = *(v0 + 1304);
  v16 = *(v0 + 1256);
  v15 = *(v0 + 1272);
  v9[6] = *(v0 + 1288);
  v9[7] = v14;
  v9[4] = v16;
  v9[5] = v15;

  v17 = *(v0 + 8);

  return v17();
}

{
  v36 = v0;
  v1 = *(v0 + 1656);
  v2 = *(v0 + 1616);
  v3 = *(v0 + 1608);
  v4 = *(v0 + 1568);
  v5 = *(v0 + 1400);
  *(v0 + 752) = *(v0 + 1384);
  *(v0 + 768) = v5;
  *(v0 + 784) = *(v0 + 1416);
  v6 = *(v0 + 1336);
  *(v0 + 688) = *(v0 + 1320);
  *(v0 + 704) = v6;
  v7 = *(v0 + 1368);
  *(v0 + 720) = *(v0 + 1352);
  *(v0 + 736) = v7;
  *(v0 + 800) = v2;
  v8 = *(v0 + 1528);
  *(v0 + 824) = *(v0 + 1512);
  *(v0 + 840) = v8;
  *(v0 + 808) = *(v0 + 1496);
  outlined destroy of NSObject?(v0 + 688, &_s15SecureMessaging3MLSO31IncomingFailureToDecryptContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO31IncomingFailureToDecryptContextVy_10Foundation4DataVGMR);

  outlined init with copy of MLS.OutgoingEventState?(v0 + 16, v0 + 856, &_s15SecureMessaging3MLSO31IncomingFailureToDecryptContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO31IncomingFailureToDecryptContextVy_10Foundation4DataVGMR);

  v9 = v1;
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.error.getter();
  outlined destroy of NSObject?(v0 + 16, &_s15SecureMessaging3MLSO31IncomingFailureToDecryptContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO31IncomingFailureToDecryptContextVy_10Foundation4DataVGMR);

  if (os_log_type_enabled(v10, v11))
  {
    v12 = *(v0 + 1656);
    v13 = *(v0 + 1568);
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v34 = v16;
    *v14 = 136315650;
    v17 = *(v0 + 16);
    v18 = *(v0 + 24);

    v19 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v17, v18, &v34);

    *(v14 + 4) = v19;
    *(v14 + 12) = 2112;
    v20 = v12;
    v21 = _swift_stdlib_bridgeErrorToNSError();
    *(v14 + 14) = v21;
    *v15 = v21;
    *(v14 + 22) = 2080;
    v22 = *(v13 + direct field offset for MLS.XPCClientCoordinator.uniqueClientIdentifier);
    v23 = *(v13 + direct field offset for MLS.XPCClientCoordinator.uniqueClientIdentifier + 8);

    strcpy(v35, "EncryptedRCS.");
    HIWORD(v35[1]) = -4864;
    MEMORY[0x2667545A0](v22, v23);

    v24 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v35[0], v35[1], &v34);

    *(v14 + 24) = v24;
    _os_log_impl(&dword_264F1F000, v10, v11, "XPCClientCoordinator processIncomingFTD failed { identifier: %s, error: %@, client: %s }", v14, 0x20u);
    outlined destroy of NSObject?(v15, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x266755550](v15, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x266755550](v16, -1, -1);
    MEMORY[0x266755550](v14, -1, -1);
  }

  else
  {
    v25 = *(v0 + 1568);
  }

  v26 = *(v0 + 1656);
  v27 = *(v0 + 1640);
  v28 = *(v0 + 1632);
  v29 = *(v0 + 1592);
  v30 = *(v0 + 1584);
  swift_willThrow();

  v31 = *(v0 + 8);
  v32 = *(v0 + 1656);

  return v31();
}

uint64_t closure #1 in MLS.XPCClientCoordinator.processIncoming(failureToDecrypt:withGroup:context:)@<X0>(__int128 *a1@<X1>, __int128 *a2@<X2>, uint64_t a3@<X3>, uint64_t *a4@<X8>)
{
  v18 = *a1;
  v21 = a1[1];
  *v23 = a1[2];
  *&v23[9] = *(a1 + 41);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SecureMessaging3MLSO24IncomingFailureToDecryptVy_AC9AllMemberOGMd, &_s15SecureMessaging3MLSO24IncomingFailureToDecryptVy_AC9AllMemberOGMR);
  lazy protocol witness table accessor for type MLS.KeyPackageRetrievalResult<MLS.AllMember> and conformance MLS.KeyPackageRetrievalResult<A>(&lazy protocol witness table cache variable for type MLS.IncomingFailureToDecrypt<MLS.AllMember> and conformance MLS.IncomingFailureToDecrypt<A>, &_s15SecureMessaging3MLSO24IncomingFailureToDecryptVy_AC9AllMemberOGMd, &_s15SecureMessaging3MLSO24IncomingFailureToDecryptVy_AC9AllMemberOGMR);
  result = dispatch thunk of JSONEncoder.encode<A>(_:)();
  if (!v4)
  {
    v10 = result;
    v11 = v9;
    v30 = a2[8];
    v31 = a2[9];
    v32 = *(a2 + 20);
    v26 = a2[4];
    v27 = a2[5];
    v28 = a2[6];
    v29 = a2[7];
    v19 = *a2;
    v22 = a2[1];
    v24 = a2[2];
    v25 = a2[3];
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SecureMessaging3MLSO31IncomingFailureToDecryptContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO31IncomingFailureToDecryptContextVy_10Foundation4DataVGMR);
    lazy protocol witness table accessor for type MLS.KeyPackageRetrievalResult<MLS.AllMember> and conformance MLS.KeyPackageRetrievalResult<A>(&lazy protocol witness table cache variable for type MLS.IncomingFailureToDecryptContext<Data> and conformance MLS.IncomingFailureToDecryptContext<A>, &_s15SecureMessaging3MLSO31IncomingFailureToDecryptContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO31IncomingFailureToDecryptContextVy_10Foundation4DataVGMR);
    v12 = dispatch thunk of JSONEncoder.encode<A>(_:)();
    v14 = v13;
    v20 = *(a3 + direct field offset for MLS.XPCClientCoordinator.uniqueClientIdentifier);
    lazy protocol witness table accessor for type MLS.UniqueClientIdentifier and conformance MLS.UniqueClientIdentifier();

    v15 = dispatch thunk of JSONEncoder.encode<A>(_:)();
    v17 = v16;

    *a4 = v15;
    a4[1] = v17;
    a4[2] = v10;
    a4[3] = v11;
    a4[4] = v12;
    a4[5] = v14;
  }

  return result;
}

uint64_t MLS.XPCClientCoordinator.processIncoming(errorMessage:withGroup:context:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  *(v6 + 96) = a4;
  *(v6 + 104) = v5;
  *(v6 + 80) = a1;
  *(v6 + 88) = a3;
  v9 = type metadata accessor for MetricCollector.Event();
  *(v6 + 112) = v9;
  v10 = *(*(v9 - 8) + 64) + 15;
  *(v6 + 120) = swift_task_alloc();
  v11 = swift_task_alloc();
  v12 = *(a2 + 16);
  *(v6 + 16) = *a2;
  *(v6 + 32) = v12;
  *(v6 + 48) = *(a2 + 32);
  v13 = *a5;
  *(v6 + 128) = v11;
  *(v6 + 136) = v13;
  *(v6 + 144) = *(a5 + 1);
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v14 = static MLSActor.shared;
  *(v6 + 160) = static MLSActor.shared;

  return MEMORY[0x2822009F8](MLS.XPCClientCoordinator.processIncoming(errorMessage:withGroup:context:), v14, 0);
}

void MLS.XPCClientCoordinator.processIncoming(errorMessage:withGroup:context:)()
{
  v2 = v0[18];
  v1 = v0[19];
  v3 = v0[13];
  v0[21] = direct field offset for MLS.XPCClientCoordinator.logger;

  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v7 = v0[17];
    v6 = v0[18];
    v8 = v0[13];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v40 = v10;
    *v9 = 136315394;
    *(v9 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v7, v6, &v40);
    *(v9 + 12) = 2080;
    v11 = *(v8 + direct field offset for MLS.XPCClientCoordinator.uniqueClientIdentifier);
    v12 = *(v8 + direct field offset for MLS.XPCClientCoordinator.uniqueClientIdentifier + 8);
    strcpy(v41, "EncryptedRCS.");
    HIWORD(v41[1]) = -4864;

    MEMORY[0x2667545A0](v11, v12);

    v13 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v41[0], v41[1], &v40);

    *(v9 + 14) = v13;
    _os_log_impl(&dword_264F1F000, v4, v5, "XPCClientCoordinator processIncoming errorMessage { identifier: %s, client: %s }", v9, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x266755550](v10, -1, -1);
    MEMORY[0x266755550](v9, -1, -1);
  }

  else
  {
    v14 = v0[13];
  }

  v16 = v0[18];
  v15 = v0[19];
  v17 = v0[16];
  v18 = v0[17];
  v20 = v0[14];
  v19 = v0[15];
  v21 = v0[13];
  v39 = v0[12];
  v37 = v0[11];

  Date.init()();
  v22 = *(v20 + 20);
  v23 = type metadata accessor for Date();
  (*(*(v23 - 8) + 56))(v17 + v22, 1, 1, v23);
  outlined init with take of MetricCollector.Event(v17, v19);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v41[0] = v15;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v19, 0x5864726177726F46, 0xEA00000000004350, isUniquelyReferenced_nonNull_native);
  v25 = v41[0];
  v0[22] = v41[0];

  v26 = *(*(v21 + direct field offset for MLS.XPCClientCoordinator.xpcClient) + OBJC_IVAR____TtCO15SecureMessaging8XPCUtils9XPCClient_deliveryInterface);
  v0[23] = v26;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SecureMessaging3MLSO36IncomingErrorMessageProcessedContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO36IncomingErrorMessageProcessedContextVy_10Foundation4DataVGMR);
  v28 = swift_task_alloc();
  v0[24] = v28;
  v28[2] = v0 + 2;
  v28[3] = v18;
  v28[4] = v16;
  v28[5] = v25;
  v28[6] = v21;
  v29 = swift_task_alloc();
  v0[25] = v29;
  *(v29 + 16) = v37;
  *(v29 + 24) = v39;
  v30 = *(*v26 + 360);

  v38 = v30 + *v30;
  v31 = v30[1];
  v32 = swift_task_alloc();
  v0[26] = v32;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DataV_A2CtMd, &_s10Foundation4DataV_A2CtMR);
  v34 = lazy protocol witness table accessor for type MLS.KeyPackageRetrievalResult<MLS.AllMember> and conformance MLS.KeyPackageRetrievalResult<A>(&lazy protocol witness table cache variable for type MLS.IncomingErrorMessageProcessedContext<Data> and conformance MLS.IncomingErrorMessageProcessedContext<A>, &_s15SecureMessaging3MLSO36IncomingErrorMessageProcessedContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO36IncomingErrorMessageProcessedContextVy_10Foundation4DataVGMR);
  v35 = lazy protocol witness table accessor for type MLS.KeyPackageRetrievalResult<MLS.AllMember> and conformance MLS.KeyPackageRetrievalResult<A>(&lazy protocol witness table cache variable for type MLS.IncomingErrorMessageProcessedContext<Data> and conformance MLS.IncomingErrorMessageProcessedContext<A>, &_s15SecureMessaging3MLSO36IncomingErrorMessageProcessedContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO36IncomingErrorMessageProcessedContextVy_10Foundation4DataVGMR);
  v36 = lazy protocol witness table accessor for type MLS.IncomingMessageError and conformance MLS.IncomingMessageError();
  *v32 = v0;
  v32[1] = MLS.XPCClientCoordinator.processIncoming(errorMessage:withGroup:context:);
  v49 = v35;
  v50 = v36;
  v47 = v33;
  v48 = v34;
  v45 = v27;
  v46 = &type metadata for MLS.IncomingMessageError;
  v43 = partial apply for closure #3 in MLS.XPCClientCoordinator.processIncoming(errorMessage:withGroup:context:);
  v44 = v29;

  __asm { BRAA            X8, X16 }
}

uint64_t MLS.XPCClientCoordinator.processIncoming(errorMessage:withGroup:context:)()
{
  v2 = *v1;
  v3 = *(*v1 + 208);
  v13 = *v1;
  *(*v1 + 216) = v0;

  if (v0)
  {
    v4 = v2[20];
    v5 = MLS.XPCClientCoordinator.processIncoming(errorMessage:withGroup:context:);
  }

  else
  {
    v7 = v2[24];
    v6 = v2[25];
    v9 = v2[22];
    v8 = v2[23];
    v10 = v2[20];
    v11 = v2[18];

    v5 = MLS.XPCClientCoordinator.processIncoming(errorMessage:withGroup:context:);
    v4 = v10;
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

{
  v2 = *(v0 + 120);
  v1 = *(v0 + 128);
  v4 = *(v0 + 72);
  v3 = *(v0 + 80);
  *v3 = *(v0 + 56);
  *(v3 + 16) = v4;

  v5 = *(v0 + 8);

  return v5();
}

{
  v34 = v0;
  v1 = v0[27];
  v2 = v0[24];
  v3 = v0[25];
  v5 = v0[22];
  v4 = v0[23];
  v6 = v0[21];
  v8 = v0[18];
  v7 = v0[19];
  v9 = v0[13];

  swift_retain_n();

  v10 = v1;
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = v0[27];
    v15 = v0[17];
    v14 = v0[18];
    v16 = v0[13];
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v32 = v19;
    *v17 = 136315650;
    *(v17 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v15, v14, &v32);
    *(v17 + 12) = 2112;
    v20 = v13;
    v21 = _swift_stdlib_bridgeErrorToNSError();
    *(v17 + 14) = v21;
    *v18 = v21;
    *(v17 + 22) = 2080;
    v22 = *(v16 + direct field offset for MLS.XPCClientCoordinator.uniqueClientIdentifier);
    v23 = *(v16 + direct field offset for MLS.XPCClientCoordinator.uniqueClientIdentifier + 8);

    strcpy(v33, "EncryptedRCS.");
    HIWORD(v33[1]) = -4864;
    MEMORY[0x2667545A0](v22, v23);

    v24 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v33[0], v33[1], &v32);

    *(v17 + 24) = v24;
    _os_log_impl(&dword_264F1F000, v11, v12, "XPCClientCoordinator processIncomingFTD failed { identifier: %s, error: %@, client: %s }", v17, 0x20u);
    outlined destroy of NSObject?(v18, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x266755550](v18, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x266755550](v19, -1, -1);
    MEMORY[0x266755550](v17, -1, -1);
  }

  else
  {
    v25 = v0[13];
  }

  v26 = v0[27];
  v27 = v0[15];
  v28 = v0[16];
  swift_willThrow();

  v29 = v0[1];
  v30 = v0[27];

  return v29();
}

uint64_t closure #1 in MLS.XPCClientCoordinator.processIncoming(errorMessage:withGroup:context:)@<X0>(__int128 *a1@<X1>, uint64_t a2@<X5>, uint64_t *a3@<X8>)
{
  v18 = *a1;
  v21 = a1[1];
  v22 = *(a1 + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SecureMessaging3MLSO20IncomingErrorMessageVy_AC9AllMemberOGMd, &_s15SecureMessaging3MLSO20IncomingErrorMessageVy_AC9AllMemberOGMR);
  lazy protocol witness table accessor for type MLS.KeyPackageRetrievalResult<MLS.AllMember> and conformance MLS.KeyPackageRetrievalResult<A>(&lazy protocol witness table cache variable for type MLS.IncomingErrorMessage<MLS.AllMember> and conformance MLS.IncomingErrorMessage<A>, &_s15SecureMessaging3MLSO20IncomingErrorMessageVy_AC9AllMemberOGMd, &_s15SecureMessaging3MLSO20IncomingErrorMessageVy_AC9AllMemberOGMR);
  result = dispatch thunk of JSONEncoder.encode<A>(_:)();
  if (!v3)
  {
    v8 = a2;
    v17 = a3;
    v9 = result;
    v10 = v7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SecureMessaging3MLSO27IncomingErrorMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO27IncomingErrorMessageContextVy_10Foundation4DataVGMR);
    lazy protocol witness table accessor for type MLS.KeyPackageRetrievalResult<MLS.AllMember> and conformance MLS.KeyPackageRetrievalResult<A>(&lazy protocol witness table cache variable for type MLS.IncomingErrorMessageContext<Data> and conformance MLS.IncomingErrorMessageContext<A>, &_s15SecureMessaging3MLSO27IncomingErrorMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO27IncomingErrorMessageContextVy_10Foundation4DataVGMR);
    v11 = dispatch thunk of JSONEncoder.encode<A>(_:)();
    v13 = v12;
    v19 = *(v8 + direct field offset for MLS.XPCClientCoordinator.uniqueClientIdentifier);
    v20 = *(v8 + direct field offset for MLS.XPCClientCoordinator.uniqueClientIdentifier + 8);
    lazy protocol witness table accessor for type MLS.UniqueClientIdentifier and conformance MLS.UniqueClientIdentifier();

    v14 = dispatch thunk of JSONEncoder.encode<A>(_:)();
    v16 = v15;

    *v17 = v14;
    v17[1] = v16;
    v17[2] = v9;
    v17[3] = v10;
    v17[4] = v11;
    v17[5] = v13;
  }

  return result;
}

uint64_t closure #2 in MLS.XPCClientCoordinator.keyPackage.getter@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t *a3@<X8>)
{
  v6 = type metadata accessor for MLS.XPCRequest();
  a3[3] = v6;
  a3[4] = &protocol witness table for MLS.XPCRequest;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a3);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy10Foundation4DataVs5Error_pGMd, &_sScCy10Foundation4DataVs5Error_pGMR);
  result = (*(*(v8 - 8) + 16))(boxed_opaque_existential_1, a1, v8);
  *(boxed_opaque_existential_1 + *(v6 + 20)) = a2;
  return result;
}

uint64_t closure #3 in MLS.XPCClientCoordinator.add(members:toGroup:context:)(id *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, SEL *a8)
{
  v23 = *a1;
  v11 = a2[2];
  v12 = a2[3];
  v13 = a2[4];
  v14 = a2[5];
  v27 = *a2;
  v26 = a2[1];
  outlined copy of Data._Representation(*a2, v26);
  v24 = v11;
  outlined copy of Data._Representation(v11, v12);
  outlined copy of Data._Representation(v13, v14);
  isa = Data._bridgeToObjectiveC()().super.isa;
  v16 = Data._bridgeToObjectiveC()().super.isa;
  v17 = MEMORY[0x266754510](a5, a6);
  v18 = Data._bridgeToObjectiveC()().super.isa;
  aBlock[4] = a3;
  aBlock[5] = a4;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed Data?, @guaranteed Data?) -> ();
  aBlock[3] = a7;
  v19 = _Block_copy(aBlock);

  [v23 *a8];
  _Block_release(v19);

  outlined consume of Data._Representation(v13, v14);
  outlined consume of Data._Representation(v24, v12);
  return outlined consume of Data._Representation(v27, v26);
}

uint64_t MLS.XPCClientCoordinator.send(event:forGroup:completion:)(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v46 = a3;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v16 = &v42 - v15;
  swift_retain_n();
  outlined copy of Data._Representation(a1, a2);
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.default.getter();
  outlined consume of Data._Representation(a1, a2);
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v44 = v16;
    v20 = v19;
    v21 = swift_slowAlloc();
    v45 = a6;
    v42 = v21;
    v48 = v21;
    *v20 = 136315394;
    v22 = Data.description.getter();
    v24 = a5;
    v25 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v22, v23, &v48);

    *(v20 + 4) = v25;
    *(v20 + 12) = 2080;
    v43 = a4;
    v27 = *(v6 + direct field offset for MLS.XPCClientCoordinator.uniqueClientIdentifier);
    v26 = *(v6 + direct field offset for MLS.XPCClientCoordinator.uniqueClientIdentifier + 8);

    strcpy(v47, "EncryptedRCS.");
    HIWORD(v47[1]) = -4864;
    v28 = v27;
    a5 = v24;
    MEMORY[0x2667545A0](v28, v26);

    v29 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v47[0], v47[1], &v48);

    *(v20 + 14) = v29;
    a4 = v43;
    _os_log_impl(&dword_264F1F000, v17, v18, "XPCClientCoordinator sendEvent { eventBlob: %s, client: %s }", v20, 0x16u);
    v30 = v42;
    swift_arrayDestroy();
    a6 = v45;
    MEMORY[0x266755550](v30, -1, -1);
    v31 = v20;
    v16 = v44;
    MEMORY[0x266755550](v31, -1, -1);
  }

  else
  {
  }

  v32 = swift_allocObject();
  v32[2] = a1;
  v32[3] = a2;
  v33 = v46;
  v32[4] = v46;
  v32[5] = a4;
  v34 = swift_allocObject();
  *(v34 + 16) = &async function pointer to partial apply for closure #2 in MLS.XPCClientCoordinator.send(event:forGroup:completion:);
  *(v34 + 24) = v7;
  v35 = type metadata accessor for TaskPriority();
  (*(*(v35 - 8) + 56))(v16, 1, 1, v35);

  outlined copy of Data._Representation(a1, a2);
  outlined copy of Data._Representation(v33, a4);
  v36 = one-time initialization token for shared;

  v37 = v16;
  if (v36 != -1)
  {
    swift_once();
  }

  v38 = static XPCActor.shared;
  v39 = _s15SecureMessaging8XPCActorCACScAAAWlTm_3(&lazy protocol witness table cache variable for type XPCActor and conformance XPCActor, type metadata accessor for XPCActor);
  v40 = swift_allocObject();
  v40[2] = v38;
  v40[3] = v39;
  v40[4] = partial apply for closure #1 in MLS.XPCClientCoordinator.send(event:forGroup:completion:);
  v40[5] = v32;
  v40[6] = &async function pointer to partial apply for thunk for @escaping @callee_guaranteed @Sendable @async (@in_guaranteed MLS.OutgoingEventType<MLS.AllMember, Data>, @in_guaranteed MLS.Group) -> (@out MLS.SendResult, @error @owned Error);
  v40[7] = v34;
  v40[8] = a5;
  v40[9] = a6;

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v37, &async function pointer to partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:), v40);
}