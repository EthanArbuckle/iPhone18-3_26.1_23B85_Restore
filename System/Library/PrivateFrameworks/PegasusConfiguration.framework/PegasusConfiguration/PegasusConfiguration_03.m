uint64_t sub_1D8CCC880(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAACE58, &unk_1D8CDCD88);
  result = sub_1D8CD7FD4();
  v6 = result;
  if (!*(v3 + 16))
  {
LABEL_29:

    *v2 = v6;
    return result;
  }

  v7 = 0;
  v8 = (v3 + 56);
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
  v28 = v2;
  v13 = result + 56;
  if (!v11)
  {
LABEL_9:
    v15 = v7;
    while (1)
    {
      v7 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_31;
      }

      if (v7 >= v12)
      {
        break;
      }

      v16 = v8[v7];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v11 = (v16 - 1) & v16;
        goto LABEL_14;
      }
    }

    v27 = 1 << *(v3 + 32);
    if (v27 >= 64)
    {
      sub_1D8CCC0B8(0, (v27 + 63) >> 6, v3 + 56);
    }

    else
    {
      *v8 = -1 << v27;
    }

    v2 = v28;
    *(v3 + 16) = 0;
    goto LABEL_29;
  }

  while (1)
  {
    v14 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
LABEL_14:
    v17 = *(*(v3 + 48) + (v14 | (v7 << 6)));
    v18 = *(v6 + 40);
    sub_1D8CD8254();
    sub_1D8CD7BD4();

    result = sub_1D8CD8284();
    v19 = -1 << *(v6 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v13 + 8 * (v20 >> 6))) == 0)
    {
      break;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v13 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
    *(v13 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    *(*(v6 + 48) + v22) = v17;
    ++*(v6 + 16);
    if (!v11)
    {
      goto LABEL_9;
    }
  }

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
    v26 = *(v13 + 8 * v21);
    if (v26 != -1)
    {
      v22 = __clz(__rbit64(~v26)) + (v21 << 6);
      goto LABEL_23;
    }
  }

LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_1D8CCCD4C(uint64_t result, unint64_t a2, char a3)
{
  v5 = result;
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_52;
  }

  if (a3)
  {
    sub_1D8CCC880(v6 + 1);
  }

  else
  {
    if (v7 > v6)
    {
      result = sub_1D8CCD234();
      goto LABEL_52;
    }

    sub_1D8CCD374(v6 + 1);
  }

  v8 = *v3;
  result = sub_1D8C9D498(*(*v3 + 40), v5);
  v9 = -1 << *(v8 + 32);
  a2 = result & ~v9;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v10 = ~v9;
    do
    {
      v11 = 0xE700000000000000;
      v12 = 0x6E6F6973736573;
      switch(*(*(v8 + 48) + a2))
      {
        case 1:
          v12 = 0xD000000000000010;
          v11 = 0x80000001D8CDD5C0;
          break;
        case 2:
          v12 = 0xD000000000000013;
          v11 = 0x80000001D8CDD5E0;
          break;
        case 3:
          v12 = 0x6C7070612E6D6F63;
          v13 = 0x697269732E65;
          goto LABEL_25;
        case 4:
          v12 = 0xD000000000000010;
          v11 = 0x80000001D8CDD610;
          break;
        case 5:
          v12 = 0xD000000000000012;
          v11 = 0x80000001D8CDD630;
          break;
        case 6:
          v12 = 0x6C7070612E6D6F63;
          v13 = 0x7377656E2E65;
          goto LABEL_25;
        case 7:
          v12 = 0xD000000000000011;
          v11 = 0x80000001D8CDD660;
          break;
        case 8:
          v12 = 0xD000000000000015;
          v11 = 0x80000001D8CDD680;
          break;
        case 9:
          v12 = 0xD000000000000019;
          v11 = 0x80000001D8CDD6A0;
          break;
        case 0xA:
          v12 = 0xD000000000000019;
          v11 = 0x80000001D8CDD6C0;
          break;
        case 0xB:
          v12 = 0x6C7070612E6D6F63;
          v13 = 0x6C69616D2E65;
LABEL_25:
          v11 = v13 & 0xFFFFFFFFFFFFLL | 0xEE00000000000000;
          break;
        case 0xC:
          v12 = 0xD000000000000018;
          v11 = 0x80000001D8CDD6F0;
          break;
        case 0xD:
          v12 = 0xD000000000000014;
          v11 = 0x80000001D8CDD710;
          break;
        case 0xE:
          v12 = 0xD000000000000012;
          v11 = 0x80000001D8CDD730;
          break;
        case 0xF:
          v12 = 0xD000000000000015;
          v11 = 0x80000001D8CDD750;
          break;
        case 0x10:
          v12 = 0xD000000000000010;
          v11 = 0x80000001D8CDD770;
          break;
        default:
          break;
      }

      v14 = 0xE700000000000000;
      v15 = 0x6E6F6973736573;
      switch(v5)
      {
        case 1:
          v15 = 0xD000000000000010;
          v14 = 0x80000001D8CDD5C0;
          break;
        case 2:
          v15 = 0xD000000000000013;
          v14 = 0x80000001D8CDD5E0;
          break;
        case 3:
          v15 = 0x6C7070612E6D6F63;
          v16 = 0x697269732E65;
          goto LABEL_43;
        case 4:
          v15 = 0xD000000000000010;
          v14 = 0x80000001D8CDD610;
          break;
        case 5:
          v15 = 0xD000000000000012;
          v14 = 0x80000001D8CDD630;
          break;
        case 6:
          v15 = 0x6C7070612E6D6F63;
          v16 = 0x7377656E2E65;
          goto LABEL_43;
        case 7:
          v15 = 0xD000000000000011;
          v14 = 0x80000001D8CDD660;
          break;
        case 8:
          v15 = 0xD000000000000015;
          v14 = 0x80000001D8CDD680;
          break;
        case 9:
          v15 = 0xD000000000000019;
          v14 = 0x80000001D8CDD6A0;
          break;
        case 10:
          v15 = 0xD000000000000019;
          v14 = 0x80000001D8CDD6C0;
          break;
        case 11:
          v15 = 0x6C7070612E6D6F63;
          v16 = 0x6C69616D2E65;
LABEL_43:
          v14 = v16 & 0xFFFFFFFFFFFFLL | 0xEE00000000000000;
          break;
        case 12:
          v15 = 0xD000000000000018;
          v14 = 0x80000001D8CDD6F0;
          break;
        case 13:
          v15 = 0xD000000000000014;
          v14 = 0x80000001D8CDD710;
          break;
        case 14:
          v15 = 0xD000000000000012;
          v14 = 0x80000001D8CDD730;
          break;
        case 15:
          v15 = 0xD000000000000015;
          v14 = 0x80000001D8CDD750;
          break;
        case 16:
          v15 = 0xD000000000000010;
          v14 = 0x80000001D8CDD770;
          break;
        default:
          break;
      }

      if (v12 == v15 && v11 == v14)
      {
        goto LABEL_55;
      }

      v18 = sub_1D8CD8154();

      if (v18)
      {
        goto LABEL_56;
      }

      a2 = (a2 + 1) & v10;
    }

    while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_52:
  v19 = *v23;
  *(v19 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v19 + 48) + a2) = v5;
  v20 = *(v19 + 16);
  v21 = __OFADD__(v20, 1);
  v22 = v20 + 1;
  if (!v21)
  {
    *(v19 + 16) = v22;
    return result;
  }

  __break(1u);
LABEL_55:

LABEL_56:
  result = sub_1D8CD81C4();
  __break(1u);
  return result;
}

void *sub_1D8CCD234()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAACE58, &unk_1D8CDCD88);
  v2 = *v0;
  v3 = sub_1D8CD7FC4();
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
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + v14) = *(*(v2 + 48) + v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
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

uint64_t sub_1D8CCD374(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAACE58, &unk_1D8CDCD88);
  result = sub_1D8CD7FD4();
  v6 = result;
  if (*(v3 + 16))
  {
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
    v26 = v2;
    v12 = result + 56;
    if (v10)
    {
      while (1)
      {
        v13 = __clz(__rbit64(v10));
        v10 &= v10 - 1;
LABEL_14:
        v16 = *(*(v3 + 48) + (v13 | (v7 << 6)));
        v17 = *(v6 + 40);
        sub_1D8CD8254();
        sub_1D8CD7BD4();

        result = sub_1D8CD8284();
        v18 = -1 << *(v6 + 32);
        v19 = result & ~v18;
        v20 = v19 >> 6;
        if (((-1 << v19) & ~*(v12 + 8 * (v19 >> 6))) == 0)
        {
          break;
        }

        v21 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
        *(v12 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
        *(*(v6 + 48) + v21) = v16;
        ++*(v6 + 16);
        if (!v10)
        {
          goto LABEL_9;
        }
      }

      v22 = 0;
      v23 = (63 - v18) >> 6;
      while (++v20 != v23 || (v22 & 1) == 0)
      {
        v24 = v20 == v23;
        if (v20 == v23)
        {
          v20 = 0;
        }

        v22 |= v24;
        v25 = *(v12 + 8 * v20);
        if (v25 != -1)
        {
          v21 = __clz(__rbit64(~v25)) + (v20 << 6);
          goto LABEL_23;
        }
      }
    }

    else
    {
LABEL_9:
      v14 = v7;
      while (1)
      {
        v7 = v14 + 1;
        if (__OFADD__(v14, 1))
        {
          break;
        }

        if (v7 >= v11)
        {

          v2 = v26;
          goto LABEL_27;
        }

        v15 = *(v3 + 56 + 8 * v7);
        ++v14;
        if (v15)
        {
          v13 = __clz(__rbit64(v15));
          v10 = (v15 - 1) & v15;
          goto LABEL_14;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_27:
    *v2 = v6;
  }

  return result;
}

void static PegasusConfigContainerURLProvider.containerURL<A>(using:)(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAAC668, &qword_1D8CD8FA0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = OUTLINED_FUNCTION_4_8();
  OUTLINED_FUNCTION_2_18();
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_37();
  v15 = v14 - v13;
  OUTLINED_FUNCTION_2_18();
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_37();
  (*(v21 + 16))(v20 - v19, a1, a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAACA98, &qword_1D8CDA918);
  if (swift_dynamicCast())
  {
    sub_1D8C9B778(v26, &v28);
    v22 = v29;
    v23 = v30;
    __swift_project_boxed_opaque_existential_1(&v28, v29);
    (*(v23 + 8))(v22, v23);
    __swift_destroy_boxed_opaque_existential_0Tm(&v28);
  }

  else
  {
    v27 = 0;
    memset(v26, 0, sizeof(v26));
    sub_1D8CCDC14(v26);
    if (qword_1ED9C4C18 != -1)
    {
      OUTLINED_FUNCTION_0_20();
    }

    v24 = qword_1ED9C4C20;
    os_unfair_lock_lock((qword_1ED9C4C20 + 32));
    sub_1D8C95404((v24 + 16), &v28);
    os_unfair_lock_unlock((v24 + 32));
    if (!v2)
    {
      (*(v9 + 104))(v15, *MEMORY[0x1E6968F58], v7);
      v25 = sub_1D8CD7554();
      OUTLINED_FUNCTION_1_19(v25);
    }
  }
}

void static PegasusConfigContainerURLProvider.containerURL()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAAC668, &qword_1D8CD8FA0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = OUTLINED_FUNCTION_4_8();
  OUTLINED_FUNCTION_2_18();
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_37();
  v11 = v10 - v9;
  if (qword_1ED9C4C18 != -1)
  {
    OUTLINED_FUNCTION_0_20();
  }

  v12 = qword_1ED9C4C20;
  os_unfair_lock_lock((qword_1ED9C4C20 + 32));
  sub_1D8C95404((v12 + 16), &v14);
  os_unfair_lock_unlock((v12 + 32));
  if (!v0)
  {
    (*(v5 + 104))(v11, *MEMORY[0x1E6968F58], v3);
    v13 = sub_1D8CD7554();
    OUTLINED_FUNCTION_1_19(v13);
  }
}

uint64_t sub_1D8CCDC14(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAACAA0, &qword_1D8CDCEA0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

_BYTE *storeEnumTagSinglePayload for PegasusConfigContainerURLProvider(_BYTE *result, int a2, int a3)
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

uint64_t DataWarehouseConfig.dataWarehouseUrl.getter()
{
  OUTLINED_FUNCTION_5_5();
  v2 = sub_1D8CD7554();
  v3 = *(*(v2 - 8) + 16);

  return v3(v0, v1, v2);
}

uint64_t DataWarehouseConfig.databaseAlias.getter()
{
  v1 = (v0 + *(type metadata accessor for DataWarehouseConfig() + 20));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t type metadata accessor for DataWarehouseConfig()
{
  result = qword_1ECAACE68;
  if (!qword_1ECAACE68)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t DataWarehouseConfig.streamDescriptor.getter()
{
  OUTLINED_FUNCTION_5_5();
  result = type metadata accessor for DataWarehouseConfig();
  *v0 = *(v1 + *(result + 24));
  return result;
}

uint64_t DataWarehouseConfig.databaseUrl.getter()
{
  OUTLINED_FUNCTION_5_5();
  v0 = sub_1D8CD7484();
  v1 = OUTLINED_FUNCTION_3(v0);
  v3 = v2;
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_37();
  v8 = v7 - v6;
  (*(v3 + 104))(v7 - v6, *MEMORY[0x1E6968F68], v0);
  sub_1D8C94EC8();
  sub_1D8CD7544();
  return (*(v3 + 8))(v8, v0);
}

uint64_t URL.aggregationSchemaUrl.getter()
{
  OUTLINED_FUNCTION_5_5();
  v0 = sub_1D8CD7484();
  v1 = OUTLINED_FUNCTION_3(v0);
  v3 = v2;
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_37();
  v8 = v7 - v6;
  v9 = sub_1D8CD7554();
  v10 = OUTLINED_FUNCTION_3(v9);
  v12 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_37();
  v17 = v16 - v15;
  (*(v3 + 104))(v8, *MEMORY[0x1E6968F70], v0);
  sub_1D8C94EC8();
  sub_1D8CD7544();
  (*(v3 + 8))(v8, v0);
  sub_1D8CD74C4();
  return (*(v12 + 8))(v17, v9);
}

uint64_t DataWarehouseConfig.init(dataWarehouseUrl:streamDescriptor:fileManager:)@<X0>(uint64_t a1@<X0>, unsigned __int8 *a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAAC668, &qword_1D8CD8FA0);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x1EEE9AC00](v8 - 8);
  v12 = &v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v37 - v13;
  v15 = sub_1D8CD7554();
  v16 = OUTLINED_FUNCTION_3(v15);
  v18 = v17;
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_37();
  v23 = v22 - v21;
  v24 = *a2;
  v37 = type metadata accessor for DataWarehouseConfig();
  v38 = a4;
  v25 = (a4 + *(v37 + 20));
  *v25 = 0x73756F6865726177;
  v25[1] = 0xE900000000000065;
  v40 = a1;
  sub_1D8CCE544(a1, v12);
  OUTLINED_FUNCTION_2(v12);
  if (v26)
  {
    v42 = v24;
    v27 = v39;
    NSFileManager.dataWarehouseUrl(for:)(&v42, v14);
    if (v27)
    {
      sub_1D8CC7244(v40);

      result = OUTLINED_FUNCTION_2(v12);
      if (v26)
      {
        return result;
      }

      v29 = v12;
      return sub_1D8CC7244(v29);
    }

    OUTLINED_FUNCTION_2(v12);
    if (!v26)
    {
      sub_1D8CC7244(v12);
    }
  }

  else
  {
    (*(v18 + 32))(v14, v12, v15);
    __swift_storeEnumTagSinglePayload(v14, 0, 1, v15);
  }

  OUTLINED_FUNCTION_2(v14);
  if (v26)
  {
    sub_1D8CC7244(v14);
    sub_1D8CCEA74();
    swift_allocError();
    *v30 = 0;
    v30[1] = 0;
    swift_willThrow();

    v29 = v40;
    return sub_1D8CC7244(v29);
  }

  v41 = v24;
  v39 = a3;
  v31 = *(v18 + 32);
  (v31)(v23, v14, v15);
  v32 = sub_1D8CD7474();
  if (v32)
  {
    sub_1D8CC7244(v40);

    *(v38 + *(v37 + 24)) = v41;
    return v31();
  }

  else
  {
    v33 = sub_1D8CD7494();
    v35 = v34;
    sub_1D8CCEA74();
    swift_allocError();
    *v36 = v33;
    v36[1] = v35;
    swift_willThrow();

    sub_1D8CC7244(v40);
    return (*(v18 + 8))(v23, v15);
  }
}

uint64_t sub_1D8CCE544(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAAC668, &qword_1D8CD8FA0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t NSFileManager.dataWarehouseUrl(for:)@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X8>)
{
  v57 = a2;
  v4 = sub_1D8CD7484();
  v5 = OUTLINED_FUNCTION_3(v4);
  v56 = v6;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_37();
  v11 = v10 - v9;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAAC668, &qword_1D8CD8FA0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = v51 - v14;
  v16 = sub_1D8CD7554();
  v17 = OUTLINED_FUNCTION_3(v16);
  v19 = v18;
  v21 = *(v20 + 64);
  v22 = MEMORY[0x1EEE9AC00](v17);
  v24 = v51 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v26 = v51 - v25;
  v27 = *a1;
  v28 = v59;
  sub_1D8C950EC(v2);
  if (v28)
  {

    __swift_storeEnumTagSinglePayload(v15, 1, 1, v16);
    sub_1D8CC7244(v15);
    sub_1D8CC082C();
    swift_allocError();
    *v29 = 0;
    v29[1] = 0;
    return swift_willThrow();
  }

  else
  {
    v51[1] = 0;
    v52 = v24;
    v53 = v27;
    v55 = v11;
    v59 = v4;
    __swift_storeEnumTagSinglePayload(v15, 0, 1, v16);
    (*(v19 + 32))(v26, v15, v16);
    v31 = v19;
    if (qword_1ED9C4150 != -1)
    {
      swift_once();
    }

    v32 = sub_1D8CD7A04();
    __swift_project_value_buffer(v32, qword_1ED9C5668);
    v33 = *(v19 + 16);
    v34 = v52;
    v54 = v26;
    v33(v52, v26, v16);
    v35 = sub_1D8CD79E4();
    v36 = sub_1D8CD7E04();
    v37 = v16;
    if (os_log_type_enabled(v35, v36))
    {
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      v58[0] = v39;
      *v38 = 136315138;
      sub_1D8C9D2C0();
      v40 = sub_1D8CD8124();
      v41 = v34;
      v43 = v42;
      v44 = *(v31 + 8);
      v44(v41, v37);
      v45 = sub_1D8C9D088(v40, v43, v58);

      *(v38 + 4) = v45;
      _os_log_impl(&dword_1D8C92000, v35, v36, "Container URL: %s", v38, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v39);
      MEMORY[0x1DA727900](v39, -1, -1);
      MEMORY[0x1DA727900](v38, -1, -1);
    }

    else
    {

      v44 = *(v31 + 8);
      v44(v34, v16);
    }

    v46 = v59;
    v48 = v55;
    v47 = v56;
    if (v53 == 2)
    {
      v58[0] = 0x6572615773706C41;
      v58[1] = 0xEF32566573756F68;
      (*(v56 + 104))(v55, *MEMORY[0x1E6968F70], v59);
      sub_1D8C94EC8();
      v49 = v54;
      sub_1D8CD7544();
      (*(v47 + 8))(v48, v46);
      v44(v49, v37);
      v50 = 0;
    }

    else
    {
      v44(v54, v37);
      v50 = 1;
    }

    return __swift_storeEnumTagSinglePayload(v57, v50, 1, v37);
  }
}

unint64_t sub_1D8CCEA74()
{
  result = qword_1ECAACE60;
  if (!qword_1ECAACE60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAACE60);
  }

  return result;
}

unint64_t FeedbackStreamDescriptor.metricsMessageName.getter()
{
  if (*v0 != 2)
  {
    return 0;
  }

  v2 = FeedbackStreamDescriptor.rawValue.getter();

  MEMORY[0x1DA726A90](46, 0xE100000000000000);

  MEMORY[0x1DA726A90](0xD000000000000016, 0x80000001D8CDF990);

  return v2;
}

uint64_t FeedbackStreamDescriptor.metricsTableName.getter()
{
  if (*v0 != 2)
  {
    return 0;
  }

  v14 = 2;
  v1 = FeedbackStreamDescriptor.rawValue.getter();
  v12 = 46;
  v13 = 0xE100000000000000;
  MEMORY[0x1EEE9AC00](v1);
  v11[2] = &v12;
  v4 = sub_1D8CCEE98(0x7FFFFFFFFFFFFFFFLL, 1, sub_1D8CBC894, v11, v2, v3);
  sub_1D8CCECB0(v4);
  v6 = v5;

  if (!v6)
  {
    return 0;
  }

  v7 = sub_1D8CCED14();
  v9 = v8;

  v12 = v7;
  v13 = v9;

  MEMORY[0x1DA726A90](7169651, 0xE300000000000000);

  return v12;
}

uint64_t sub_1D8CCECB0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  v2 = (a1 + 32 * v1);
  v3 = *v2;
  v4 = v2[1];
  v5 = v2[2];
  v6 = v2[3];

  return v3;
}

uint64_t sub_1D8CCED14()
{
  v0 = sub_1D8CD7BE4();
  v1 = sub_1D8CD7EF4();
  v2 = __OFADD__(v0, v1);
  result = v0 + v1;
  if (v2)
  {
    __break(1u);
  }

  else
  {
    MEMORY[0x1DA726A30](result);
    sub_1D8CCF35C();
    sub_1D8CD7C14();
    sub_1D8CD7C14();
    return 0;
  }

  return result;
}

uint64_t FeedbackStreamDescriptor.metricsViewName.getter()
{
  if (*v0 != 2)
  {
    return 0;
  }

  v2 = FeedbackStreamDescriptor.metricsTableName.getter();

  MEMORY[0x1DA726A90](95, 0xE100000000000000);

  MEMORY[0x1DA726A90](2003134838, 0xE400000000000000);

  return v2;
}

uint64_t sub_1D8CCEE98(uint64_t a1, char a2, uint64_t (*a3)(void *), uint64_t a4, uint64_t a5, unint64_t a6)
{
  v45 = a3;
  if (a1 < 0)
  {
    __break(1u);
    goto LABEL_41;
  }

  v10 = a5;
  v13 = HIBYTE(a6) & 0xF;
  if (!a1 || ((a6 & 0x2000000000000000) != 0 ? (v14 = HIBYTE(a6) & 0xF) : (v14 = a5 & 0xFFFFFFFFFFFFLL), !v14))
  {
    if ((a6 & 0x2000000000000000) == 0)
    {
      v13 = a5 & 0xFFFFFFFFFFFFLL;
    }

    if (!v13 && (a2 & 1) != 0)
    {

      return MEMORY[0x1E69E7CC0];
    }

    sub_1D8CD7C74();
    OUTLINED_FUNCTION_4_9();
    sub_1D8CC353C();
    v15 = v30;
    v8 = *(v30 + 16);
    v31 = *(v30 + 24);
LABEL_37:
    v9 = v8 + 1;
    if (v8 < v31 >> 1)
    {
LABEL_38:
      *(v15 + 16) = v9;
      v32 = (v15 + 32 * v8);
      v32[4] = v6;
      v32[5] = v10;
      v32[6] = v11;
      v32[7] = v12;
      return v15;
    }

LABEL_41:
    sub_1D8CC353C();
    v15 = v33;
    goto LABEL_38;
  }

  v6 = a4;
  v15 = 4 * v14;
  v43 = MEMORY[0x1E69E7CC0];
  v16 = 15;
  while (1)
  {
    v41 = v16;
    while (1)
    {
      v12 = v16 >> 14;
      if (v16 >> 14 == v15)
      {
        v16 = v41;
        goto LABEL_30;
      }

      OUTLINED_FUNCTION_3_12();
      v17 = sub_1D8CD7C64();
      v11 = v18;
      v44[0] = v17;
      v44[1] = v18;
      v19 = v45(v44);
      if (v7)
      {

        return v15;
      }

      v20 = v19;

      if (v20)
      {
        break;
      }

      OUTLINED_FUNCTION_3_12();
      v16 = sub_1D8CD7BF4();
    }

    v22 = (v41 >> 14 == v12) & a2;
    if (v22)
    {
      goto LABEL_20;
    }

    if (v12 < v41 >> 14)
    {
      break;
    }

    v42 = sub_1D8CD7C74();
    v37 = v24;
    v38 = v23;
    v36 = v25;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v27 = *(v43 + 16);
      sub_1D8CC353C();
      v43 = v28;
    }

    v12 = *(v43 + 16);
    v11 = v12 + 1;
    if (v12 >= *(v43 + 24) >> 1)
    {
      sub_1D8CC353C();
      v43 = v29;
    }

    *(v43 + 16) = v11;
    v26 = (v43 + 32 * v12);
    v26[4] = v42;
    v26[5] = v38;
    v26[6] = v37;
    v26[7] = v36;
LABEL_20:
    OUTLINED_FUNCTION_3_12();
    v16 = sub_1D8CD7BF4();
    if ((v22 & 1) == 0 && *(v43 + 16) == a1)
    {
LABEL_30:
      if (v16 >> 14 == v15 && (a2 & 1) != 0)
      {

        return v43;
      }

      if (v15 < v16 >> 14)
      {
        __break(1u);
      }

      else
      {
        sub_1D8CD7C74();
        OUTLINED_FUNCTION_4_9();
        v15 = v43;
        if (swift_isUniquelyReferenced_nonNull_native())
        {
LABEL_36:
          v8 = *(v15 + 16);
          v31 = *(v15 + 24);
          goto LABEL_37;
        }
      }

      v34 = *(v15 + 16);
      sub_1D8CC353C();
      v15 = v35;
      goto LABEL_36;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D8CCF22C()
{
  result = sub_1D8CD7554();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for DataWarehouseConfig.Context(_BYTE *result, int a2, int a3)
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

unint64_t sub_1D8CCF35C()
{
  result = qword_1ECAAC4A8;
  if (!qword_1ECAAC4A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAAC4A8);
  }

  return result;
}

double sub_1D8CCF3B0()
{
  v1 = sub_1D8CD7AD4();
  v2 = [v0 valueForKey_];

  if (v2)
  {
    sub_1D8CD7F84();
    swift_unknownObjectRelease();
  }

  else
  {
    v5 = 0u;
    v6 = 0u;
  }

  v7[0] = v5;
  v7[1] = v6;
  if (*(&v6 + 1))
  {
    if (swift_dynamicCast())
    {
      return v4;
    }
  }

  else
  {
    sub_1D8C953A4(v7, &qword_1ECAAC680, &qword_1D8CD8FB0);
  }

  return 0.0;
}

size_t sub_1D8CCF4A4()
{
  v2 = v0;
  v3 = sub_1D8CD7564();
  v4 = OUTLINED_FUNCTION_3(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_37();
  v11 = v10 - v9;
  v12 = sub_1D8CD7DF4();
  if (v1)
  {
    return v3;
  }

  v13 = v12;
  result = [v0 seekToEndOfFile];
  if ((result & 0x8000000000000000) == 0)
  {
    v15 = result;
    v16 = mmap(0, result, 1, 1, [v0 fileDescriptor], 0);
    if (v16)
    {
      v17 = v16;
      (*(v6 + 104))(v11, *MEMORY[0x1E6969020], v3);
      v3 = MEMORY[0x1DA7263E0](v17, v15, v11);
    }

    else
    {
      v18 = *MEMORY[0x1E696A798];
      v19 = sub_1D8CD7B04();
      v3 = v20;
      v21 = MEMORY[0x1DA726880]();
      v22 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
      sub_1D8CB7074(v19, v3, v21, 0);
      swift_willThrow();
    }

    sub_1D8CD22D8(v2, v13);
    return v3;
  }

  __break(1u);
  return result;
}

id ConfigFactoryInternal.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id ConfigFactoryInternal.load(url:userAgent:userDefaults:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = sub_1D8CD7554();
  v9 = OUTLINED_FUNCTION_3(v8);
  v11 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_37();
  v16 = v15 - v14;
  type metadata accessor for ConfigInternal();
  (*(v11 + 16))(v16, a1, v8);
  v17 = a4;

  return sub_1D8CCF7B4(v16, a2, a3, a4);
}

id sub_1D8CCF7B4(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = v4;
  v24 = a3;
  v25 = a4;
  v8 = sub_1D8CD7554();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x1EEE9AC00](v8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v22 - v12;
  sub_1D8C97460(0, &qword_1ED9C4130, 0x1E696AC00);
  (*(v9 + 16))(v13, a1, v8);
  v14 = sub_1D8CAB278(v13);
  v22 = a2;
  v23 = v8;
  v15 = a1;
  v17 = sub_1D8CCF4A4();
  v19 = v18;

  v20 = objc_allocWithZone(v5);
  v21 = sub_1D8CD0A18(v17, v19, v22, v24, v25);
  (*(v9 + 8))(v15, v23);
  return v21;
}

id ConfigFactoryInternal.load(data:userAgent:userDefaults:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v10 = objc_allocWithZone(type metadata accessor for ConfigInternal());

  sub_1D8CADCA0(a1, a2);
  v11 = a5;
  return sub_1D8CD0A18(a1, a2, a3, a4, a5);
}

id ConfigFactoryInternal.init()()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_init);
}

uint64_t sub_1D8CCFF08()
{
  v1 = *(v0 + OBJC_IVAR____TtC20PegasusConfiguration14ConfigInternal_userAgent);
  v2 = *(v0 + OBJC_IVAR____TtC20PegasusConfiguration14ConfigInternal_userAgent + 8);

  return v1;
}

id sub_1D8CCFF5C(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3();
  if (v3)
  {
    v4 = sub_1D8CD7AD4();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

uint64_t sub_1D8CCFFB8()
{
  v1 = *(v0 + OBJC_IVAR____TtC20PegasusConfiguration14ConfigInternal_clientName);
  v2 = *(v0 + OBJC_IVAR____TtC20PegasusConfiguration14ConfigInternal_clientName + 8);

  return v1;
}

uint64_t sub_1D8CD0094()
{
  sub_1D8C97460(0, &unk_1ED9C54D0, 0x1E696AEC0);
  sub_1D8CD0158(0xD000000000000015, 0x80000001D8CDFB00, v2);
  if (v3)
  {
    if (swift_dynamicCast())
    {
      return v1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    sub_1D8C953A4(v2, &qword_1ECAAC680, &qword_1D8CD8FB0);
    return 0;
  }
}

void sub_1D8CD0158(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_1D8CD0EE8(a1, a2, &v6);
  if (!v7)
  {
    sub_1D8C953A4(&v6, &qword_1ECAAC680, &qword_1D8CD8FB0);
    goto LABEL_6;
  }

  v4 = sub_1D8C97460(0, &qword_1ED9C54E0, 0x1E69E58C0);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_6:
    *a3 = 0u;
    *(a3 + 16) = 0u;
    return;
  }

  if ([v5 isKindOfClass_])
  {
    *(a3 + 24) = v4;
    *a3 = v5;
  }

  else
  {
    *a3 = 0u;
    *(a3 + 16) = 0u;
  }
}

BOOL sub_1D8CD0274()
{
  v0 = sub_1D8CD7674();
  v1 = OUTLINED_FUNCTION_3(v0);
  v3 = v2;
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_37();
  v8 = v7 - v6;
  sub_1D8CD7664();
  sub_1D8CD7624();
  v10 = v9;
  (*(v3 + 8))(v8, v0);
  return sub_1D8CCF3B0() < v10;
}

id sub_1D8CD035C(void *a1, uint64_t a2, void (*a3)(void))
{
  v4 = a1;
  a3();
  v6 = v5;

  if (v6)
  {
    v7 = sub_1D8CD7AD4();
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

uint64_t sub_1D8CD03DC()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAAC668, &qword_1D8CD8FA0);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v3 = &v7 - v2;
  sub_1D8CD04E8(&v7 - v2);
  v4 = sub_1D8CD7554();
  if (__swift_getEnumTagSinglePayload(v3, 1, v4) == 1)
  {
    sub_1D8C953A4(v3, &qword_1ECAAC668, &qword_1D8CD8FA0);
    return 0;
  }

  else
  {
    v5 = sub_1D8CD7494();
    (*(*(v4 - 8) + 8))(v3, v4);
  }

  return v5;
}

uint64_t sub_1D8CD04E8@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAAC668, &qword_1D8CD8FA0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v8 - v4;
  sub_1D8CD0628(&v8 - v4);
  v6 = sub_1D8CD7554();
  if (__swift_getEnumTagSinglePayload(v5, 1, v6) == 1)
  {
    sub_1D8C953A4(v5, &qword_1ECAAC668, &qword_1D8CD8FA0);
    return sub_1D8CD0628(a1);
  }

  else
  {
    (*(*(v6 - 8) + 32))(a1, v5, v6);
    return __swift_storeEnumTagSinglePayload(a1, 0, 1, v6);
  }
}

uint64_t sub_1D8CD0628@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAAC668, &qword_1D8CD8FA0);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x1EEE9AC00](v2 - 8);
  v6 = v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v8 = v20 - v7;
  sub_1D8C97460(0, &unk_1ED9C54D0, 0x1E696AEC0);
  v9 = OUTLINED_FUNCTION_6_7();
  sub_1D8CD0158(v9, v10, v11);
  if (!v22)
  {
    sub_1D8C953A4(v21, &qword_1ECAAC680, &qword_1D8CD8FB0);
    goto LABEL_8;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_8:
    v23 = 0;
    v24 = 0;
    goto LABEL_9;
  }

  if (v24)
  {

    if (sub_1D8CD7BE4() < 1)
    {
    }

    else
    {
      sub_1D8CD7514();

      v12 = sub_1D8CD7554();
      if (__swift_getEnumTagSinglePayload(v8, 1, v12) != 1)
      {
        v19 = v8;
        goto LABEL_23;
      }

      sub_1D8C953A4(v8, &qword_1ECAAC668, &qword_1D8CD8FA0);
    }
  }

LABEL_9:
  v13 = OUTLINED_FUNCTION_6_7();
  sub_1D8CD0158(v13, v14, v15);
  if (!v22)
  {
    sub_1D8C953A4(v21, &qword_1ECAAC680, &qword_1D8CD8FB0);
    goto LABEL_15;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_15:
    v23 = 0;
    v24 = 0;
LABEL_16:

    goto LABEL_17;
  }

  v23 = v20[0];
  v24 = v20[1];

  if (sub_1D8CD7BE4() < 1)
  {
    goto LABEL_16;
  }

  sub_1D8CD7514();

  v16 = sub_1D8CD7554();
  if (__swift_getEnumTagSinglePayload(v6, 1, v16) != 1)
  {
    v19 = v6;
LABEL_23:
    sub_1D8CD28C8(v19, a1);
  }

  sub_1D8C953A4(v6, &qword_1ECAAC668, &qword_1D8CD8FA0);
LABEL_17:
  v17 = sub_1D8CD7554();
  __swift_storeEnumTagSinglePayload(a1, 1, 1, v17);
}

id sub_1D8CD0904(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v6 = *(v2 + OBJC_IVAR____TtC20PegasusConfiguration14ConfigInternal_data);
  v7 = *(v2 + OBJC_IVAR____TtC20PegasusConfiguration14ConfigInternal_data + 8);
  v8 = *(v2 + OBJC_IVAR____TtC20PegasusConfiguration14ConfigInternal_userDefaults);
  v9 = objc_allocWithZone(ObjectType);
  sub_1D8CADCA0(v6, v7);
  v10 = v8;

  return sub_1D8CD0A18(v6, v7, a1, a2, v8);
}

id sub_1D8CD0A18(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, id a5)
{
  v6 = v5;
  ObjectType = swift_getObjectType();
  v13 = OBJC_IVAR____TtC20PegasusConfiguration14ConfigInternal_userDefaults;
  *&v6[OBJC_IVAR____TtC20PegasusConfiguration14ConfigInternal_userDefaults] = 0;
  v14 = &v6[OBJC_IVAR____TtC20PegasusConfiguration14ConfigInternal_data];
  *v14 = a1;
  v14[1] = a2;
  v15 = &v6[OBJC_IVAR____TtC20PegasusConfiguration14ConfigInternal_userAgent];
  *v15 = a3;
  *(v15 + 1) = a4;
  if (a4)
  {
    sub_1D8CADCA0(a1, a2);

    Client.init(_:)(a4, v24);
    v16 = v24[2];
    v17 = &v6[OBJC_IVAR____TtC20PegasusConfiguration14ConfigInternal_clientName];
    *v17 = v24[1];
    *(v17 + 1) = v16;
    if (a5)
    {
LABEL_3:
      v18 = *&v6[v13];
      *&v6[v13] = a5;
      a5 = a5;

      goto LABEL_8;
    }
  }

  else
  {
    *&v6[OBJC_IVAR____TtC20PegasusConfiguration14ConfigInternal_clientName] = xmmword_1D8CDCFE0;
    sub_1D8CADCA0(a1, a2);
    if (a5)
    {
      goto LABEL_3;
    }
  }

  v19 = objc_allocWithZone(MEMORY[0x1E695E000]);
  v20 = sub_1D8CD23BC(0xD000000000000011, 0x80000001D8CDD660);
  if (!v20)
  {
    v20 = [objc_opt_self() standardUserDefaults];
  }

  v21 = *&v6[v13];
  *&v6[v13] = v20;

LABEL_8:
  v25.receiver = v6;
  v25.super_class = ObjectType;
  v22 = objc_msgSendSuper2(&v25, sel_init);

  sub_1D8CADC38(a1, a2);
  return v22;
}

void sub_1D8CD0BD8(void *a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC20PegasusConfiguration14ConfigInternal_data);
  v4 = *(v1 + OBJC_IVAR____TtC20PegasusConfiguration14ConfigInternal_data + 8);
  v5 = sub_1D8CD7584();
  v6 = sub_1D8CD7AD4();
  [a1 encodeObject:v5 forKey:v6];

  if (*(v1 + OBJC_IVAR____TtC20PegasusConfiguration14ConfigInternal_userAgent + 8))
  {
    v7 = *(v1 + OBJC_IVAR____TtC20PegasusConfiguration14ConfigInternal_userAgent);
    v8 = sub_1D8CD7AD4();
  }

  else
  {
    v8 = 0;
  }

  v9 = sub_1D8CD7AD4();
  [a1 encodeObject:v8 forKey:v9];
  swift_unknownObjectRelease();
}

id sub_1D8CD0D4C(void *a1)
{
  ObjectType = swift_getObjectType();
  sub_1D8C97460(0, &qword_1ECAACF08, 0x1E695DEF0);
  v3 = sub_1D8CD7E94();
  sub_1D8C97460(0, &unk_1ED9C54D0, 0x1E696AEC0);
  v4 = sub_1D8CD7E94();
  v5 = v4;
  if (!v3)
  {

    a1 = v5;
LABEL_6:

    v16 = swift_getObjectType();
    OUTLINED_FUNCTION_8_6(v16);
    return 0;
  }

  if (!v4)
  {

    goto LABEL_6;
  }

  v6 = v3;
  v7 = sub_1D8CD7594();
  v9 = v8;

  v10 = sub_1D8CD7B04();
  v12 = v11;
  v13 = objc_allocWithZone(ObjectType);
  v14 = sub_1D8CD0A18(v7, v9, v10, v12, 0);

  v15 = swift_getObjectType();
  OUTLINED_FUNCTION_8_6(v15);
  return v14;
}

void sub_1D8CD0EE8(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v4 = v3;
  v39 = *MEMORY[0x1E69E9840];
  if (sub_1D8CD7BE4() < 1)
  {
LABEL_21:
    *a3 = 0u;
    a3[1] = 0u;
    goto LABEL_22;
  }

  *&v32 = 778527074;
  *(&v32 + 1) = 0xE400000000000000;
  MEMORY[0x1DA726A90](a1, a2);
  v8 = *(v3 + OBJC_IVAR____TtC20PegasusConfiguration14ConfigInternal_userDefaults);
  if (!v8)
  {

    v37 = 0u;
    v38 = 0u;
    goto LABEL_13;
  }

  v9 = v32;
  v10 = v8;
  v11 = sub_1D8CD7AD4();
  v12 = [v10 objectForKey_];

  if (v12)
  {
    sub_1D8CD7F84();
    swift_unknownObjectRelease();
  }

  else
  {
    v35 = 0u;
    v36 = 0u;
  }

  v37 = v35;
  v38 = v36;
  if (!*(&v36 + 1))
  {

LABEL_13:
    sub_1D8C953A4(&v37, &qword_1ECAAC680, &qword_1D8CD8FB0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAACEB0, &qword_1D8CDA970);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1D8CD8F50;
    *(inited + 32) = a1;
    *(inited + 40) = a2;
    *(inited + 48) = 0x656469727265766FLL;
    *(inited + 56) = 0xE900000000000073;

    sub_1D8CD2738(inited);
    v33 = 0;
    v34 = 0;
    v23 = *(v4 + OBJC_IVAR____TtC20PegasusConfiguration14ConfigInternal_data);
    v24 = *(v4 + OBJC_IVAR____TtC20PegasusConfiguration14ConfigInternal_data + 8);
    v25 = sub_1D8CD7584();
    v26 = sub_1D8CD7DC4();

    _CFPropertyListCreateFiltered();

    if (qword_1ED9C4150 != -1)
    {
      OUTLINED_FUNCTION_32();
    }

    v27 = sub_1D8CD7A04();
    __swift_project_value_buffer(v27, qword_1ED9C5668);
    v28 = sub_1D8CD79E4();
    v29 = sub_1D8CD7E04();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      *v30 = 0;
      _os_log_impl(&dword_1D8C92000, v28, v29, "Could not parse mapped plist", v30, 2u);
      OUTLINED_FUNCTION_3_0();
    }

    goto LABEL_21;
  }

  sub_1D8CAD7DC(&v37, &v32);
  if (qword_1ED9C4150 != -1)
  {
    OUTLINED_FUNCTION_32();
  }

  v13 = sub_1D8CD7A04();
  __swift_project_value_buffer(v13, qword_1ED9C5668);
  sub_1D8C9D24C(&v32, &v37);

  v14 = sub_1D8CD79E4();
  v15 = sub_1D8CD7E14();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    *v16 = 136315394;
    sub_1D8C9D24C(&v37, &v35);
    v17 = sub_1D8CD7B64();
    v19 = v18;
    __swift_destroy_boxed_opaque_existential_0Tm(&v37);
    v20 = sub_1D8C9D088(v17, v19, &v34);

    *(v16 + 4) = v20;
    *(v16 + 12) = 2080;
    v21 = sub_1D8C9D088(v9, 0xE400000000000000, &v34);

    *(v16 + 14) = v21;
    _os_log_impl(&dword_1D8C92000, v14, v15, "Found value: %s for key: %s from userDefaults", v16, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_3_0();
    OUTLINED_FUNCTION_3_0();
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_0Tm(&v37);
  }

  sub_1D8CAD7DC(&v32, a3);
LABEL_22:
  v31 = *MEMORY[0x1E69E9840];
}

uint64_t sub_1D8CD1AE4(uint64_t a1, uint64_t a2)
{
  sub_1D8C97460(0, &qword_1ED9C5510, 0x1E696AD98);
  sub_1D8CD0158(a1, a2, v6);
  if (v7)
  {
    if (swift_dynamicCast())
    {
      return v5;
    }
  }

  else
  {
    sub_1D8C953A4(v6, &qword_1ECAAC680, &qword_1D8CD8FB0);
  }

  return 0;
}

id sub_1D8CD1F2C()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_1D8CD1FDC()
{
  v24 = *MEMORY[0x1E69E9840];
  v1 = objc_opt_self();
  v2 = *(v0 + OBJC_IVAR____TtC20PegasusConfiguration14ConfigInternal_data);
  v3 = *(v0 + OBJC_IVAR____TtC20PegasusConfiguration14ConfigInternal_data + 8);
  v4 = sub_1D8CD7584();
  v21 = 0;
  v5 = [v1 propertyListWithData:v4 options:0 format:0 error:&v21];

  v6 = v21;
  if (!v5)
  {
    v8 = v6;
    v9 = sub_1D8CD7454();

    swift_willThrow();
    if (qword_1ED9C4150 != -1)
    {
      OUTLINED_FUNCTION_32();
    }

    v10 = sub_1D8CD7A04();
    __swift_project_value_buffer(v10, qword_1ED9C5668);
    v11 = sub_1D8CD79E4();
    v12 = sub_1D8CD7E24();
    if (os_log_type_enabled(v11, v12))
    {
      *swift_slowAlloc() = 0;
      OUTLINED_FUNCTION_85(&dword_1D8C92000, v13, v14, "Config property list cannot be deserialized.");
      OUTLINED_FUNCTION_3_0();
    }

    goto LABEL_14;
  }

  sub_1D8CD7F84();
  swift_unknownObjectRelease();
  sub_1D8CAD7DC(v22, v23);
  sub_1D8C9D24C(v23, v22);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAACEA0, &qword_1D8CD9610);
  if (!swift_dynamicCast())
  {
    if (qword_1ED9C4150 != -1)
    {
      OUTLINED_FUNCTION_32();
    }

    v15 = sub_1D8CD7A04();
    __swift_project_value_buffer(v15, qword_1ED9C5668);
    v16 = sub_1D8CD79E4();
    v17 = sub_1D8CD7E24();
    if (os_log_type_enabled(v16, v17))
    {
      *swift_slowAlloc() = 0;
      OUTLINED_FUNCTION_85(&dword_1D8C92000, v18, v19, "Config property list is not Dictionary");
      OUTLINED_FUNCTION_3_0();
    }

    __swift_destroy_boxed_opaque_existential_0Tm(v23);
LABEL_14:
    result = 0;
    goto LABEL_15;
  }

  __swift_destroy_boxed_opaque_existential_0Tm(v23);
  result = v21;
LABEL_15:
  v20 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1D8CD22D8(void *a1, uint64_t a2)
{
  v6[1] = *MEMORY[0x1E69E9840];
  v6[0] = 0;
  if ([a1 seekToOffset:a2 error:v6])
  {
    v2 = *MEMORY[0x1E69E9840];

    MEMORY[0x1EEE66C98]();
  }

  else
  {
    v3 = v6[0];
    v4 = sub_1D8CD7454();

    swift_willThrow();
    v5 = *MEMORY[0x1E69E9840];
  }
}

id sub_1D8CD23BC(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = sub_1D8CD7AD4();
  }

  else
  {
    v3 = 0;
  }

  v4 = [v2 initWithSuiteName_];

  return v4;
}

uint64_t sub_1D8CD2420(uint64_t a1)
{
  v2 = sub_1D8CD77B4();
  v3 = OUTLINED_FUNCTION_3(v2);
  v39 = v4;
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](v3);
  v9 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v43 = &v34 - v10;
  if (!*(a1 + 16))
  {
    v12 = MEMORY[0x1E69E7CD0];
    goto LABEL_15;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAACF18, &unk_1D8CDD098);
  result = sub_1D8CD7FE4();
  v12 = result;
  v38 = *(a1 + 16);
  if (!v38)
  {
LABEL_15:

    return v12;
  }

  v13 = 0;
  v42 = result + 56;
  v14 = *(v39 + 80);
  v36 = a1;
  v37 = a1 + ((v14 + 32) & ~v14);
  v41 = v39 + 16;
  v15 = (v39 + 8);
  v35 = (v39 + 32);
  while (v13 < *(a1 + 16))
  {
    v16 = *(v39 + 72);
    v40 = v13 + 1;
    v17 = *(v39 + 16);
    v17(v43, v37 + v16 * v13, v2);
    v18 = *(v12 + 40);
    OUTLINED_FUNCTION_2_19();
    sub_1D8CD2938(&qword_1ED9C4040, v19);
    v20 = sub_1D8CD7A94();
    v21 = ~(-1 << *(v12 + 32));
    while (1)
    {
      v22 = v20 & v21;
      v23 = (v20 & v21) >> 6;
      v24 = *(v42 + 8 * v23);
      v25 = 1 << (v20 & v21);
      if ((v25 & v24) == 0)
      {
        break;
      }

      v26 = v12;
      v17(v9, *(v12 + 48) + v22 * v16, v2);
      OUTLINED_FUNCTION_2_19();
      sub_1D8CD2938(&qword_1ECAAC5E8, v27);
      v28 = sub_1D8CD7AC4();
      v29 = *v15;
      (*v15)(v9, v2);
      if (v28)
      {
        result = (v29)(v43, v2);
        v12 = v26;
        goto LABEL_12;
      }

      v20 = v22 + 1;
      v12 = v26;
    }

    v30 = v43;
    *(v42 + 8 * v23) = v25 | v24;
    result = (*v35)(*(v12 + 48) + v22 * v16, v30, v2);
    v31 = *(v12 + 16);
    v32 = __OFADD__(v31, 1);
    v33 = v31 + 1;
    if (v32)
    {
      goto LABEL_17;
    }

    *(v12 + 16) = v33;
LABEL_12:
    v13 = v40;
    a1 = v36;
    if (v40 == v38)
    {
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_17:
  __break(1u);
  return result;
}

uint64_t sub_1D8CD2738(uint64_t a1)
{
  if (!*(a1 + 16))
  {
    v3 = MEMORY[0x1E69E7CD0];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAACEF8, &unk_1D8CDD080);
  result = sub_1D8CD7FE4();
  v3 = result;
  v4 = *(a1 + 16);
  if (!v4)
  {
LABEL_19:

    return v3;
  }

  v5 = 0;
  v6 = result + 56;
  while (v5 < *(a1 + 16))
  {
    v7 = (a1 + 32 + 16 * v5);
    v9 = *v7;
    v8 = v7[1];
    ++v5;
    v10 = *(v3 + 40);
    sub_1D8CD8254();

    sub_1D8CD7BD4();
    result = sub_1D8CD8284();
    v11 = ~(-1 << *(v3 + 32));
    while (1)
    {
      v12 = result & v11;
      v13 = (result & v11) >> 6;
      v14 = *(v6 + 8 * v13);
      v15 = 1 << (result & v11);
      if ((v15 & v14) == 0)
      {
        break;
      }

      v16 = (*(v3 + 48) + 16 * v12);
      v17 = *v16 == v9 && v16[1] == v8;
      if (v17 || (sub_1D8CD8154() & 1) != 0)
      {

        goto LABEL_16;
      }

      result = v12 + 1;
    }

    *(v6 + 8 * v13) = v15 | v14;
    v18 = (*(v3 + 48) + 16 * v12);
    *v18 = v9;
    v18[1] = v8;
    v19 = *(v3 + 16);
    v20 = __OFADD__(v19, 1);
    v21 = v19 + 1;
    if (v20)
    {
      goto LABEL_21;
    }

    *(v3 + 16) = v21;
LABEL_16:
    if (v5 == v4)
    {
      goto LABEL_19;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

uint64_t sub_1D8CD28C8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAAC668, &qword_1D8CD8FA0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D8CD2938(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t LegacyDataWarehouseConfig.dataWarehouseUrl.getter()
{
  OUTLINED_FUNCTION_5_5();
  v2 = sub_1D8CD7554();
  v3 = *(*(v2 - 8) + 16);

  return v3(v0, v1, v2);
}

uint64_t LegacyDataWarehouseConfig.streamDescriptor.getter()
{
  OUTLINED_FUNCTION_5_5();
  result = type metadata accessor for LegacyDataWarehouseConfig();
  *v0 = *(v1 + *(result + 20));
  return result;
}

uint64_t type metadata accessor for LegacyDataWarehouseConfig()
{
  result = qword_1ECAAC4C0;
  if (!qword_1ECAAC4C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t LegacyDataWarehouseConfig.databaseUrl.getter()
{
  OUTLINED_FUNCTION_5_5();
  v0 = sub_1D8CD7484();
  v1 = OUTLINED_FUNCTION_3(v0);
  v3 = v2;
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_37();
  v8 = v7 - v6;
  OUTLINED_FUNCTION_5_7("data_warehouse.db");
  v9 = *MEMORY[0x1E6968F68];
  v10 = OUTLINED_FUNCTION_6_8();
  v11(v10);
  sub_1D8C94EC8();
  sub_1D8CD7544();
  return (*(v3 + 8))(v8, v0);
}

uint64_t LegacyDataWarehouseConfig.schemaFolderUrl.getter()
{
  OUTLINED_FUNCTION_5_5();
  v0 = sub_1D8CD7484();
  v1 = OUTLINED_FUNCTION_3(v0);
  v3 = v2;
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_37();
  v8 = v7 - v6;
  OUTLINED_FUNCTION_2_20();
  v9 = *MEMORY[0x1E6968F58];
  v10 = OUTLINED_FUNCTION_6_8();
  v11(v10);
  sub_1D8C94EC8();
  sub_1D8CD7544();
  return (*(v3 + 8))(v8, v0);
}

uint64_t URL.legacyAggregationSchemaUrl(forMessageName:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v32 = a1;
  v33 = a2;
  v34 = a3;
  v3 = sub_1D8CD7484();
  v29 = v3;
  v4 = *(v3 - 8);
  v5 = v4[8];
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_37();
  v8 = v7 - v6;
  v9 = sub_1D8CD7554();
  v10 = OUTLINED_FUNCTION_3(v9);
  v30 = v11;
  v31 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_7();
  v16 = v14 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v29 - v18;
  OUTLINED_FUNCTION_2_20();
  v35 = v20;
  v36 = v21;
  v22 = *MEMORY[0x1E6968F70];
  v23 = v4[13];
  v23(v8, v22, v3);
  sub_1D8C94EC8();
  sub_1D8CD7544();
  v24 = v4[1];
  v25 = v29;
  v24(v8, v29);
  v35 = v32;
  v36 = v33;
  v23(v8, v22, v25);
  sub_1D8CD7544();
  v24(v8, v25);
  v26 = v31;
  v27 = *(v30 + 8);
  v27(v16, v31);
  sub_1D8CD74C4();
  return (v27)(v19, v26);
}

uint64_t LegacyDataWarehouseConfig.metricsSchemaUrl.getter@<X0>(uint64_t a1@<X8>)
{
  if (*(v1 + *(type metadata accessor for LegacyDataWarehouseConfig() + 20)) == 2)
  {
    v7 = FeedbackStreamDescriptor.rawValue.getter();
    v8 = v3;

    MEMORY[0x1DA726A90](46, 0xE100000000000000);

    MEMORY[0x1DA726A90](0xD000000000000016, 0x80000001D8CDF990);

    v4 = v7;
    v5 = v8;
  }

  else
  {
    v4 = 0;
    v5 = 0xE000000000000000;
  }

  URL.legacyAggregationSchemaUrl(forMessageName:)(v4, v5, a1);
}

uint64_t LegacyDataWarehouseConfig.attachSQLStatementString.getter()
{
  v0 = sub_1D8CD7554();
  v1 = OUTLINED_FUNCTION_3(v0);
  v3 = v2;
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_37();
  v8 = v7 - v6;
  sub_1D8CD8014();

  OUTLINED_FUNCTION_5_7("ATTACH DATABASE '");
  LegacyDataWarehouseConfig.databaseUrl.getter();
  sub_1D8C9D2C0();
  v9 = sub_1D8CD8124();
  MEMORY[0x1DA726A90](v9);

  (*(v3 + 8))(v8, v0);
  MEMORY[0x1DA726A90](0x2053412027, 0xE500000000000000);
  v10 = OUTLINED_FUNCTION_8_7();
  MEMORY[0x1DA726A90](v10);
  return 0;
}

uint64_t LegacyDataWarehouseConfig.init(dataWarehouseUrl:streamDescriptor:fileManager:)@<X0>(uint64_t a1@<X0>, unsigned __int8 *a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v38 = a4;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAAC668, &qword_1D8CD8FA0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  OUTLINED_FUNCTION_7();
  v12 = v10 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v36 - v14;
  v16 = sub_1D8CD7554();
  v17 = OUTLINED_FUNCTION_3(v16);
  v19 = v18;
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_37();
  v24 = v23 - v22;
  v25 = *a2;
  v39 = a1;
  sub_1D8CCE544(a1, v12);
  OUTLINED_FUNCTION_2(v12);
  if (v26)
  {
    v40 = v25;
    NSFileManager.legacyDataWarehouseUrl(for:)(&v40, v15);
    if (v4)
    {
      sub_1D8CC7244(v39);

      result = OUTLINED_FUNCTION_2(v12);
      if (v26)
      {
        return result;
      }

      v28 = v12;
      return sub_1D8CC7244(v28);
    }

    OUTLINED_FUNCTION_2(v12);
    if (!v26)
    {
      sub_1D8CC7244(v12);
    }
  }

  else
  {
    (*(v19 + 32))(v15, v12, v16);
    __swift_storeEnumTagSinglePayload(v15, 0, 1, v16);
  }

  OUTLINED_FUNCTION_2(v15);
  if (v26)
  {
    sub_1D8CC7244(v15);
    sub_1D8CCEA74();
    swift_allocError();
    *v29 = 0;
    v29[1] = 0;
    swift_willThrow();

    v28 = v39;
    return sub_1D8CC7244(v28);
  }

  v37 = a3;
  v30 = *(v19 + 32);
  (v30)(v24, v15, v16);
  v31 = sub_1D8CD7474();
  if (v31)
  {
    sub_1D8CC7244(v39);

    *(v38 + *(type metadata accessor for LegacyDataWarehouseConfig() + 20)) = v25;
    return v30();
  }

  else
  {
    v32 = sub_1D8CD7494();
    v34 = v33;
    sub_1D8CCEA74();
    swift_allocError();
    *v35 = v32;
    v35[1] = v34;
    swift_willThrow();

    sub_1D8CC7244(v39);
    return (*(v19 + 8))(v24, v16);
  }
}

uint64_t NSFileManager.legacyDataWarehouseUrl(for:)@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X8>)
{
  v58 = a2;
  v4 = sub_1D8CD7484();
  v5 = OUTLINED_FUNCTION_3(v4);
  v57 = v6;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_37();
  v11 = v10 - v9;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAAC668, &qword_1D8CD8FA0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = v52 - v14;
  v16 = sub_1D8CD7554();
  v17 = OUTLINED_FUNCTION_3(v16);
  v19 = v18;
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_7();
  v24 = v22 - v23;
  MEMORY[0x1EEE9AC00](v25);
  v27 = v52 - v26;
  v28 = *a1;
  v29 = v60;
  sub_1D8C950EC(v2);
  if (v29)
  {

    __swift_storeEnumTagSinglePayload(v15, 1, 1, v16);
    sub_1D8CC7244(v15);
    sub_1D8CC082C();
    swift_allocError();
    *v30 = 0;
    v30[1] = 0;
    return swift_willThrow();
  }

  else
  {
    v52[1] = 0;
    v53 = v24;
    v54 = v28;
    v56 = v11;
    v60 = v4;
    __swift_storeEnumTagSinglePayload(v15, 0, 1, v16);
    (*(v19 + 32))(v27, v15, v16);
    v32 = v19;
    if (qword_1ED9C4150 != -1)
    {
      swift_once();
    }

    v33 = sub_1D8CD7A04();
    __swift_project_value_buffer(v33, qword_1ED9C5668);
    v34 = *(v19 + 16);
    v35 = v53;
    v55 = v27;
    v34(v53, v27, v16);
    v36 = sub_1D8CD79E4();
    v37 = sub_1D8CD7E04();
    v38 = v16;
    if (os_log_type_enabled(v36, v37))
    {
      v39 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      v59[0] = v40;
      *v39 = 136315138;
      sub_1D8C9D2C0();
      v41 = sub_1D8CD8124();
      v42 = v35;
      v44 = v43;
      v45 = *(v32 + 8);
      v45(v42, v38);
      v46 = sub_1D8C9D088(v41, v44, v59);

      *(v39 + 4) = v46;
      _os_log_impl(&dword_1D8C92000, v36, v37, "Container URL: %s", v39, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v40);
      MEMORY[0x1DA727900](v40, -1, -1);
      MEMORY[0x1DA727900](v39, -1, -1);
    }

    else
    {

      v45 = *(v32 + 8);
      v45(v35, v16);
    }

    v47 = v60;
    v49 = v56;
    v48 = v57;
    if (v54 == 2)
    {
      strcpy(v59, "AlpsWarehouse");
      HIWORD(v59[1]) = -4864;
      (*(v57 + 104))(v56, *MEMORY[0x1E6968F70], v60);
      sub_1D8C94EC8();
      v50 = v55;
      sub_1D8CD7544();
      (*(v48 + 8))(v49, v47);
      v45(v50, v38);
      v51 = 0;
    }

    else
    {
      v45(v55, v38);
      v51 = 1;
    }

    return __swift_storeEnumTagSinglePayload(v58, v51, 1, v38);
  }
}

uint64_t sub_1D8CD3964()
{
  result = sub_1D8CD7554();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1D8CD39D8(uint64_t a1)
{
  v1 = *(a1 + 80);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    v4 = *(result - 8) + 64;
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t *sub_1D8CD3A78()
{
  v1 = *v0;
  MEMORY[0x1DA727900](*(v0 + *(*v0 + 96)), -1, -1);
  (*(*(*(v1 + 80) - 8) + 8))(v0 + *(*v0 + 88));
  return v0;
}

uint64_t sub_1D8CD3B14()
{
  sub_1D8CD3A78();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

void sub_1D8CD3B84(uint64_t a1)
{
  v1 = *(a1 + 80);
  v2 = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    v8 = *(v2 - 8) + 64;
    sub_1D8CD5058();
    if (v5 <= 0x3F)
    {
      v9 = *(v4 - 8) + 64;
      v6 = sub_1D8CD7674();
      if (v7 <= 0x3F)
      {
        v10 = *(v6 - 8) + 64;
        swift_initClassMetadata2();
      }
    }
  }
}

uint64_t sub_1D8CD3CC4()
{
  OUTLINED_FUNCTION_0_21();
  v1 = *(v0 + 80);
  OUTLINED_FUNCTION_1_20();
  return (*(*(v2 + 88) + 24))();
}

uint64_t sub_1D8CD3D18()
{
  OUTLINED_FUNCTION_0_21();
  v1 = *(v0 + 80);
  OUTLINED_FUNCTION_1_20();
  return (*(*(v2 + 88) + 32))();
}

uint64_t sub_1D8CD3D6C()
{
  OUTLINED_FUNCTION_0_21();
  v1 = *(v0 + 112);
  v3 = *(*(v2 + 88) + 40);
  OUTLINED_FUNCTION_1_20();
  return v5(*(v4 + 80));
}

uint64_t sub_1D8CD3DD4()
{
  OUTLINED_FUNCTION_0_21();
  v2 = *(v1 + 80);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v6 = v13 - v5;
  OUTLINED_FUNCTION_1_20();
  (*(v8 + 16))(v6, v0 + *(v7 + 112), v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAACF38, &qword_1D8CDD248);
  if (swift_dynamicCast())
  {
    sub_1D8C9B778(v13, v15);
    v9 = v16;
    v10 = v17;
    __swift_project_boxed_opaque_existential_1(v15, v16);
    v11 = (*(v10 + 8))(v9, v10);
    __swift_destroy_boxed_opaque_existential_0Tm(v15);
  }

  else
  {
    v14 = 0;
    memset(v13, 0, sizeof(v13));
    sub_1D8C9B71C(v13, &unk_1ECAACF40, &unk_1D8CDD250);
    v11 = 0;
  }

  return v11 & 1;
}

uint64_t sub_1D8CD3F4C()
{
  v1 = sub_1D8CD7674();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  OUTLINED_FUNCTION_4();
  (*(v2 + 16))(v5, v0 + *(v6 + 144), v1);
  sub_1D8CD7604();
  return (*(v2 + 8))(v5, v1);
}

uint64_t sub_1D8CD40AC()
{
  v1 = v0;
  v2 = *v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAAC7D8, &qword_1D8CD95B0);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x1EEE9AC00](v3 - 8);
  v7 = &v50[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = MEMORY[0x1EEE9AC00](v5);
  v10 = &v50[-v9];
  v11 = *(v2 + 80);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x1EEE9AC00](v8);
  v16 = &v50[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v50[-v17];
  v19 = *(v1 + 40);
  v60 = *(v1 + 24);
  v61 = v19;
  v62 = *(v1 + 56);
  v63 = *(v1 + 72);
  v20 = *(&v19 + 1);
  v54 = *(v2 + 88);
  v21 = type metadata accessor for ActivitySpan.ActivityData();
  v22 = *(v21 - 8);
  v23 = *(v22 + 16);
  v53 = v21;
  v23(v55, &v60);
  sub_1D8CD5200(v20);
  if ((BYTE1(v61) & 1) == 0)
  {
    v24 = v62;
    if (v62)
    {
      v52 = *(&v60 + 1);
      v25 = v60;
      v51 = v61;
      OUTLINED_FUNCTION_77();
      (*(v12 + 16))(v18, v1 + *(v26 + 112), v11);
      OUTLINED_FUNCTION_77();
      v28 = *(v27 + 136);
      swift_beginAccess();
      sub_1D8CD57DC(v1 + v28, v10);
      v29 = sub_1D8CD7964();
      result = __swift_getEnumTagSinglePayload(v10, 1, v29);
      if (result != 1)
      {
        v31 = v10;
        OUTLINED_FUNCTION_77();
        v33 = *(v1 + *(v32 + 128));

        sub_1D8CD4F28(v31, v33, v25, v52, v51, v24, v11, v54);

        (*(v12 + 8))(v18, v11);
        OUTLINED_FUNCTION_25(v29);
        (*(v34 + 8))(v31, v29);
        goto LABEL_7;
      }

LABEL_14:
      __break(1u);
      return result;
    }
  }

  OUTLINED_FUNCTION_77();
  (*(v12 + 16))(v16, v1 + *(v35 + 112), v11);
  OUTLINED_FUNCTION_77();
  v37 = *(v36 + 136);
  swift_beginAccess();
  sub_1D8CD57DC(v1 + v37, v7);
  v38 = sub_1D8CD7964();
  result = __swift_getEnumTagSinglePayload(v7, 1, v38);
  if (result == 1)
  {
    __break(1u);
    goto LABEL_14;
  }

  OUTLINED_FUNCTION_77();
  sub_1D8CD4E98(v7, *(v1 + *(v39 + 128)), v11, v54);
  (*(v12 + 8))(v16, v11);
  OUTLINED_FUNCTION_25(v38);
  (*(v40 + 8))(v7, v38);
LABEL_7:
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v42 = Strong;
    v43 = type metadata accessor for ActivitySpan();
    sub_1D8CC3E38(v1, v42, v43, &off_1F5454760);
    v58 = 0uLL;
    v59 = 0;
    *&v57[6] = 0;
    *&v57[14] = 0;

    v44 = *(v22 + 8);
    v45 = v53;
    v44(&v60, v53);
    v46 = *(v1 + 40);
    v55[0] = *(v1 + 24);
    v47 = *(v1 + 56);
    v55[1] = v46;
    v55[2] = v47;
    v56 = *(v1 + 72);
    *(v1 + 24) = v58;
    *(v1 + 40) = v59;
    *(v1 + 41) = 1;
    *(v1 + 42) = *v57;
    v48 = MEMORY[0x1E69E7CC0];
    *(v1 + 56) = *&v57[14];
    *(v1 + 64) = v48;
    *(v1 + 72) = 0;
    v44(v55, v45);
    OUTLINED_FUNCTION_77();
    *(v1 + *(v49 + 120)) = 1;
    return swift_weakAssign();
  }

  else
  {
    if (sub_1D8CD3DD4())
    {
      sub_1D8CD7E34();
      sub_1D8CD7904();
    }

    return (*(v22 + 8))(&v60, v53);
  }
}

uint64_t sub_1D8CD464C(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  OUTLINED_FUNCTION_4();
  v10 = *(*(v4 + *(v9 + 152)) + 16);

  os_unfair_lock_lock(v10);
  sub_1D8CD53D8(v4, a1, a2, a3, a4);
  os_unfair_lock_unlock(v10);
}

void *sub_1D8CD46EC()
{
  OUTLINED_FUNCTION_0_21();
  v2 = v1;
  if ((*(v0 + *(v3 + 120)) & 1) == 0)
  {
    (*(v1 + 400))();
  }

  swift_weakDestroy();
  v4 = v0[6];
  v5 = v0[7];
  v6 = v0[8];
  v7 = v0[9];

  swift_unknownObjectRelease();
  OUTLINED_FUNCTION_4();
  (*(*(*(v2 + 80) - 8) + 8))(v0 + *(v8 + 112));
  OUTLINED_FUNCTION_4();

  OUTLINED_FUNCTION_4();
  sub_1D8C9B71C(v0 + *(v10 + 136), &qword_1ECAAC7D8, &qword_1D8CD95B0);
  OUTLINED_FUNCTION_4();
  v12 = *(v11 + 144);
  v13 = sub_1D8CD7674();
  OUTLINED_FUNCTION_25(v13);
  (*(v14 + 8))(v0 + v12);
  OUTLINED_FUNCTION_4();
  v16 = *(v0 + *(v15 + 152));

  return v0;
}

uint64_t sub_1D8CD48C8(void (*a1)(void))
{
  OUTLINED_FUNCTION_4();
  v4 = *(*(v1 + *(v3 + 152)) + 16);

  os_unfair_lock_lock(v4);
  sub_1D8CD51AC(v1, a1);
  os_unfair_lock_unlock(v4);
}

uint64_t sub_1D8CD4950()
{
  v1 = v0;
  OUTLINED_FUNCTION_0_21();
  v3 = *(v0 + *(v2 + 152));
  v5 = *(v4 + 80);
  v6 = *(v4 + 88);
  v7 = type metadata accessor for ActivitySpan.ActivityData();

  v36 = v7;
  sub_1D8CB0204(sub_1D8CD5550);

  v42 = v38;
  v43 = v39;
  v44 = v40;
  v45 = v41;
  v8 = *(v1 + *(*v1 + 128));
  sub_1D8CD7E24();
  sub_1D8CD7904();
  sub_1D8CD7E24();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAAC9A0, &qword_1D8CD9990);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1D8CDB570;
  sub_1D8CD3D6C();
  v10 = sub_1D8CD8024();
  v12 = v11;
  v13 = MEMORY[0x1E69E6158];
  *(v9 + 56) = MEMORY[0x1E69E6158];
  v14 = sub_1D8C96E60();
  *(v9 + 64) = v14;
  *(v9 + 32) = v10;
  *(v9 + 40) = v12;
  v15 = sub_1D8CD3D18();
  *(v9 + 96) = v13;
  *(v9 + 104) = v14;
  *(v9 + 72) = v15;
  *(v9 + 80) = v16;
  v17 = sub_1D8CD3CC4();
  *(v9 + 136) = v13;
  *(v9 + 144) = v14;
  v37 = v14;
  *(v9 + 112) = v17;
  *(v9 + 120) = v18;
  sub_1D8CD7904();

  if ((BYTE1(v43) & 1) == 0)
  {
    sub_1D8CD7E24();
    v19 = OUTLINED_FUNCTION_5_8();
    *(v19 + 16) = xmmword_1D8CD8F40;
    v20 = sub_1D8CD8024();
    *(v19 + 56) = MEMORY[0x1E69E6158];
    *(v19 + 64) = v14;
    *(v19 + 32) = v20;
    *(v19 + 40) = v21;
    OUTLINED_FUNCTION_4_10();
    sub_1D8CD7904();

    v22 = v44;
    if (v44)
    {

      sub_1D8CD7E24();
      v23 = OUTLINED_FUNCTION_5_8();
      *(v23 + 16) = xmmword_1D8CD8F40;
      *(v23 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAACD90, &qword_1D8CDBBE8);
      *(v23 + 64) = sub_1D8CC4EE0(&qword_1ECAACF30, &qword_1ECAACD90, &qword_1D8CDBBE8);
      *(v23 + 32) = v22;
      OUTLINED_FUNCTION_4_10();
      sub_1D8CD7904();
    }
  }

  v24 = *(&v43 + 1);
  if (*(&v43 + 1))
  {

    sub_1D8CD7E24();
    v25 = OUTLINED_FUNCTION_5_8();
    *(v25 + 16) = xmmword_1D8CD8F40;
    *(v25 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAACD88, &qword_1D8CDBBE0);
    *(v25 + 64) = sub_1D8CC4EE0(&unk_1ECAACF20, &qword_1ECAACD88, &qword_1D8CDBBE0);
    *(v25 + 32) = v24;
    OUTLINED_FUNCTION_4_10();
    sub_1D8CD7904();
  }

  v26 = *(&v44 + 1);
  result = sub_1D8CD57B8(*(&v44 + 1));
  v28 = v36;
  if (result)
  {
    v29 = result;
    if (result < 1)
    {
      __break(1u);
      return result;
    }

    v30 = 0;
    do
    {
      if ((v26 & 0xC000000000000001) != 0)
      {
        MEMORY[0x1DA726EA0](v30, v26);
      }

      else
      {
        v31 = *(v26 + 8 * v30 + 32);
        swift_unknownObjectRetain();
      }

      ++v30;
      sub_1D8CD7E24();
      v32 = OUTLINED_FUNCTION_5_8();
      *(v32 + 16) = xmmword_1D8CD8F40;
      swift_unknownObjectRetain();
      v33 = sub_1D8CD7B64();
      *(v32 + 56) = MEMORY[0x1E69E6158];
      *(v32 + 64) = v37;
      *(v32 + 32) = v33;
      *(v32 + 40) = v34;
      sub_1D8CD7904();
      swift_unknownObjectRelease();
    }

    while (v29 != v30);

    v28 = v36;
  }

  sub_1D8CD7E24();
  OUTLINED_FUNCTION_4_10();
  sub_1D8CD7904();
  if (sub_1D8CD3DD4())
  {
    sub_1D8CD7E34();
    OUTLINED_FUNCTION_4_10();
    sub_1D8CD7904();
  }

  OUTLINED_FUNCTION_25(v28);
  return (*(v35 + 8))(&v42, v28);
}

uint64_t sub_1D8CD4E98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1D8CD7E54();
  (*(a4 + 40))(a3, a4);

  return sub_1D8CD7924();
}

void sub_1D8CD4F28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v16 = sub_1D8CD7E54();
  v17 = (*(a8 + 40))(a7, a8);
  LOBYTE(v20) = a5;
  sub_1D8C980C0(v16, a2, v17, v18, v19, a1, a3, a4, v20, a6);
}

uint64_t sub_1D8CD4FE8()
{
  sub_1D8CD46EC();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

void sub_1D8CD5058()
{
  if (!qword_1ED9C3C30[0])
  {
    sub_1D8CD7964();
    v0 = sub_1D8CD7ED4();
    if (!v1)
    {
      atomic_store(v0, qword_1ED9C3C30);
    }
  }
}

uint64_t sub_1D8CD50B0()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 __swift_memcpy56_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_1D8CD5108(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 56))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 40);
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

uint64_t sub_1D8CD5148(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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
      *(result + 40) = (a2 - 1);
      return result;
    }

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1D8CD51AC(uint64_t result, void (*a2)(void))
{
  if ((*(result + *(*result + 120)) & 1) == 0)
  {
    a2();
    return sub_1D8CD40AC();
  }

  return result;
}

void sub_1D8CD5200(uint64_t a1)
{
  if (sub_1D8CD5558(a1))
  {
    OUTLINED_FUNCTION_4();
    v3 = *(v1 + *(v2 + 128));
    sub_1D8CD7E14();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAAC9A0, &qword_1D8CD9990);
    v4 = swift_allocObject();
    *(v4 + 16) = xmmword_1D8CD8F50;
    v5 = sub_1D8CD3D18();
    v7 = v6;
    v8 = MEMORY[0x1E69E6158];
    *(v4 + 56) = MEMORY[0x1E69E6158];
    v9 = sub_1D8C96E60();
    *(v4 + 64) = v9;
    *(v4 + 32) = v5;
    *(v4 + 40) = v7;
    sub_1D8CC26E8();
    OUTLINED_FUNCTION_7_5();
    v10 = sub_1D8CD7A74();
    *(v4 + 96) = v8;
    *(v4 + 104) = v9;
    *(v4 + 72) = v10;
    *(v4 + 80) = v11;
    OUTLINED_FUNCTION_4_10();
    sub_1D8CD7904();

    sub_1D8CD3CC4();
    v12 = sub_1D8CD3D18();
    v14 = v13;

    MEMORY[0x1DA726A90](46, 0xE100000000000000);
    MEMORY[0x1DA726A90](v12, v14);

    v15 = sub_1D8CD7AD4();

    OUTLINED_FUNCTION_7_5();
    v16 = sub_1D8CD7A54();
    AnalyticsSendEvent();
  }
}

uint64_t sub_1D8CD53D8(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  *(a1 + 24) = a2;
  *(a1 + 32) = a3;
  *(a1 + 40) = a4;
  *(a1 + 41) = 0;
  v5 = *(a1 + 56);
  *(a1 + 56) = a5;
}

uint64_t sub_1D8CD5424@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  v3 = *(a1 + 5);
  v11[0] = *(a1 + 3);
  v11[1] = v3;
  v12 = *(a1 + 7);
  v4 = v12;
  v13 = a1[9];
  v5 = v13;
  *a2 = v11[0];
  *(a2 + 16) = v3;
  *(a2 + 32) = v4;
  *(a2 + 48) = v5;
  v6 = *(v2 + 80);
  v7 = *(v2 + 88);
  v8 = type metadata accessor for ActivitySpan.ActivityData();
  return (*(*(v8 - 8) + 16))(v10, v11, v8);
}

uint64_t sub_1D8CD5558(uint64_t a1)
{
  v2 = v1;
  OUTLINED_FUNCTION_0_21();
  v5 = v4;
  v7 = *(v6 + 80);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v30 - v11;
  (*(v8 + 16))(&v30 - v11, v2 + *(v13 + 112), v7);
  DynamicType = swift_getDynamicType();
  (*(v8 + 8))(v12, v7);
  v16 = dynamic_cast_existential_1_conditional(DynamicType);
  result = 0;
  if (v16)
  {
    if (a1)
    {
      v18 = v15;
      v19 = *(v15 + 16);

      v20 = v19(v16, v18);
      v22 = v21;
      v23 = *(*(v5 + 88) + 16);
      sub_1D8CD7C94();
      v24 = sub_1D8CD7F24();
      swift_isUniquelyReferenced_nonNull_native();
      v30 = a1;
      sub_1D8CB4574(v24, v20, v22);

      v25 = v30;
      v26 = (*(v18 + 8))(v16, v18);
      v28 = v27;
      sub_1D8CD3F4C();
      v29 = sub_1D8CD7DB4();
      swift_isUniquelyReferenced_nonNull_native();
      v31 = v25;
      sub_1D8CB4574(v29, v26, v28);

      return v31;
    }
  }

  return result;
}

uint64_t sub_1D8CD57B8(uint64_t a1)
{
  if (!(a1 >> 62))
  {
    return *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (a1 >= 0)
  {
    a1 &= 0xFFFFFFFFFFFFFF8uLL;
  }

  return MEMORY[0x1EEE6AA70](a1);
}

uint64_t sub_1D8CD57DC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAAC7D8, &qword_1D8CD95B0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t dynamic_cast_existential_1_conditional(uint64_t a1)
{
  if (swift_conformsToProtocol2())
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void *sub_1D8CD5890(id a1, uint64_t a2)
{
  v3 = v2;
  v5 = a1;
  v3[2] = 0x6E6F6973726576;
  v3[3] = 0xE700000000000000;
  v3[4] = 1685217635;
  v3[5] = 0xE400000000000000;
  v3[6] = 49;
  v3[7] = 0xE100000000000000;
  v3[8] = 0x6C616E7265746E69;
  v3[9] = 0xE800000000000000;
  v3[10] = 1684366707;
  v3[11] = 0xE400000000000000;
  v3[12] = 0x636F6C5F69726973;
  v3[13] = 0xEB00000000656C61;
  v3[14] = 0x6C62616E655F7368;
  v3[15] = 0xEA00000000006465;
  v3[16] = 0x676E6C74616CLL;
  v3[17] = 0xE600000000000000;
  v3[18] = 0x6372736F6567;
  v3[19] = 0xE600000000000000;
  v3[20] = 0x6F6E72657375;
  v3[21] = 0xE600000000000000;
  v3[22] = 7627109;
  v3[23] = 0xE300000000000000;
  v3[24] = 0x656C61636F6CLL;
  v3[25] = 0xE600000000000000;
  v3[26] = 7107429;
  v3[27] = 0xE300000000000000;
  v3[28] = 25443;
  v3[29] = 0xE200000000000000;
  v3[30] = 0x746E656761;
  v3[31] = 0xE500000000000000;
  v3[32] = 0x5255676142524150;
  v3[33] = 0xE90000000000004CLL;
  v3[34] = 0xD00000000000001FLL;
  v3[35] = 0x80000001D8CDFEF0;
  v3[36] = 0xD00000000000001ELL;
  v3[37] = 0x80000001D8CDFF10;
  v3[38] = 0xD000000000000011;
  v3[39] = 0x80000001D8CDFF30;
  v3[40] = 0x6567412D72657355;
  v3[41] = 0xEA0000000000746ELL;
  if (!a1)
  {
    a1 = [objc_opt_self() standardUserDefaults];
  }

  v3[42] = a1;
  sub_1D8CD71AC(a2, &v10);
  if (v11)
  {
    sub_1D8C953A4(a2, &qword_1ECAACA80, &qword_1D8CD9EA8);
    sub_1D8C9B778(&v10, &v12);
  }

  else
  {
    v6 = type metadata accessor for ParsecKeys();
    swift_allocObject();
    v7 = v5;
    v8 = ParsecKeys.init()();
    v13 = v6;
    v14 = &protocol witness table for ParsecKeys;

    *&v12 = v8;
    sub_1D8C953A4(a2, &qword_1ECAACA80, &qword_1D8CD9EA8);
    if (v11)
    {
      sub_1D8C953A4(&v10, &qword_1ECAACA80, &qword_1D8CD9EA8);
    }
  }

  sub_1D8C9B778(&v12, (v3 + 43));
  return v3;
}

uint64_t sub_1D8CD5B60@<X0>(uint64_t a1@<X2>, uint64_t a2@<X3>, char a3@<W4>, uint64_t a4@<X8>)
{
  if (a3)
  {
    return sub_1D8CD5B84(a1, a2, a4);
  }

  else
  {
    return sub_1D8CD5DBC(a1, a2, a4);
  }
}

uint64_t sub_1D8CD5B84@<X0>(uint64_t a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  OUTLINED_FUNCTION_16_3(a1, a2, a3);
  v6 = v5;
  v7 = sub_1D8CD7554();
  v8 = OUTLINED_FUNCTION_3(v7);
  v36[9] = v9;
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_5_3();
  MEMORY[0x1EEE9AC00](v12);
  v14 = v35 - v13;
  OUTLINED_FUNCTION_17_2();
  v15 = v6[3];
  __swift_project_boxed_opaque_existential_1(v6, v15);
  v16 = OUTLINED_FUNCTION_10_3();
  v17(v16);
  sub_1D8CD6680(v18, v14);

  if (!v3)
  {
    v20 = v35[3];
    type metadata accessor for ParsecURLRequestBuilder();
    OUTLINED_FUNCTION_15_3();
    v21(v4, v14, v7);
    v25 = sub_1D8CB87AC(v4);
    if (v20)
    {
      v26 = v35[1];
    }

    else
    {
      v26 = 0;
    }

    if (!v20)
    {
      v20 = 0xE000000000000000;
    }

    sub_1D8CD5FE0(v25, v26, v20);

    sub_1D8CD6050();
    sub_1D8CD60E0();
    v27 = OUTLINED_FUNCTION_14_2();
    sub_1D8CD613C(v27, v28);
    v29 = OUTLINED_FUNCTION_14_2();
    sub_1D8CD61CC(v29, v30);
    v31 = OUTLINED_FUNCTION_14_2();
    sub_1D8CD625C(v31, v32);
    v33 = OUTLINED_FUNCTION_14_2();
    sub_1D8CD6510(v33, v34);
    sub_1D8CD65A0();
    sub_1D8CD6610(v25, v36);
    sub_1D8CB8D98(v35[2]);
    sub_1D8CD7244();

    v22 = *(v15 + 8);
    v23 = OUTLINED_FUNCTION_6_9();
    return v24(v23);
  }

  return result;
}

uint64_t sub_1D8CD5DBC@<X0>(uint64_t a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  OUTLINED_FUNCTION_16_3(a1, a2, a3);
  v5 = v4;
  v6 = sub_1D8CD7554();
  v7 = OUTLINED_FUNCTION_3(v6);
  v27[9] = v8;
  v10 = *(v9 + 64);
  v11 = MEMORY[0x1EEE9AC00](v7);
  v13 = v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v15 = v26 - v14;
  OUTLINED_FUNCTION_17_2();
  v16 = v5[3];
  __swift_project_boxed_opaque_existential_1(v5, v16);
  v17 = OUTLINED_FUNCTION_10_3();
  v18(v17);
  sub_1D8CD6680(v19, v15);

  if (!v3)
  {
    v21 = v26[3];
    type metadata accessor for ParsecURLRequestBuilder();
    OUTLINED_FUNCTION_15_3();
    v22 = OUTLINED_FUNCTION_6_9();
    v23(v22);
    v24 = sub_1D8CB87AC(v13);
    if (v21)
    {
      v25 = v26[1];
    }

    else
    {
      v25 = 0;
    }

    if (!v21)
    {
      v21 = 0xE000000000000000;
    }

    sub_1D8CD5FE0(v24, v25, v21);

    sub_1D8CD60E0();
    sub_1D8CD613C(v24, v5);
    sub_1D8CD61CC(v24, v5);
    sub_1D8CD6510(v24, v5);
    sub_1D8CD6648(v24, v27);
    sub_1D8CB8D98(v26[2]);
    (*(v16 + 8))(v15, v6);
  }

  return result;
}

uint64_t sub_1D8CD5FE0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 || a3 != 0xE000000000000000)
  {
    result = sub_1D8CD8154();
    if ((result & 1) == 0)
    {
      return sub_1D8CB9654(*(v3 + 16), *(v3 + 24));
    }
  }

  return result;
}

uint64_t sub_1D8CD6050()
{
  v1 = v0[22];
  v2 = v0[23];
  v3 = v0[47];
  __swift_project_boxed_opaque_existential_1(v0 + 43, v0[46]);
  v4 = *(v3 + 8);
  v5 = OUTLINED_FUNCTION_6_9();
  v6(v5);
  sub_1D8CB9654(v1, v2);
}

uint64_t sub_1D8CD60E0()
{
  v1 = *(v0 + 336);
  v2 = sub_1D8CD6A50();
  if (*(v2 + 16))
  {
    sub_1D8CB870C(v2);
  }
}

uint64_t sub_1D8CD613C(uint64_t a1, void *a2)
{
  OUTLINED_FUNCTION_4_11(a1, a2);
  v4 = *(v3 + 16);
  v5 = OUTLINED_FUNCTION_9_4();
  result = v6(v5);
  if (v8)
  {
    OUTLINED_FUNCTION_8_8();
    v10 = v10 && v9 == 0xE000000000000000;
    if (!v10 && (OUTLINED_FUNCTION_1_21() & 1) == 0)
    {
      OUTLINED_FUNCTION_11_4(*(v2 + 192), *(v2 + 200));
    }
  }

  return result;
}

uint64_t sub_1D8CD61CC(uint64_t a1, void *a2)
{
  OUTLINED_FUNCTION_4_11(a1, a2);
  v4 = *(v3 + 24);
  v5 = OUTLINED_FUNCTION_9_4();
  result = v6(v5);
  if (v8)
  {
    OUTLINED_FUNCTION_8_8();
    v10 = v10 && v9 == 0xE000000000000000;
    if (!v10 && (OUTLINED_FUNCTION_1_21() & 1) == 0)
    {
      OUTLINED_FUNCTION_11_4(*(v2 + 208), *(v2 + 216));
    }
  }

  return result;
}

void sub_1D8CD625C(uint64_t a1, void *a2)
{
  v3 = v2;
  v29[1] = *MEMORY[0x1E69E9840];
  v5 = sub_1D8CD7B54();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  v8 = *(v7 + 32);
  v9 = OUTLINED_FUNCTION_6_9();
  v11 = v10(v9);
  if (!v11)
  {
LABEL_15:
    v28 = *MEMORY[0x1E69E9840];
    return;
  }

  if (*(v11 + 16))
  {
    v12 = objc_opt_self();
    v13 = sub_1D8CD7CD4();

    v29[0] = 0;
    v14 = [v12 dataWithJSONObject:v13 options:0 error:v29];

    v15 = v29[0];
    if (v14)
    {
      v16 = sub_1D8CD7594();
      v18 = v17;

      sub_1D8CD7B44();
      v19 = sub_1D8CD7B24();
      if (v20)
      {
        sub_1D8CB9880(*(v3 + 304), *(v3 + 312), v19, v20);
      }

      sub_1D8CADC38(v16, v18);
    }

    else
    {
      v22 = v15;
      v23 = sub_1D8CD7454();

      swift_willThrow();
      if (qword_1ED9C4AC8 != -1)
      {
        OUTLINED_FUNCTION_3_13();
      }

      v24 = sub_1D8CD7A04();
      __swift_project_value_buffer(v24, qword_1ED9C5680);
      v25 = sub_1D8CD79E4();
      v26 = sub_1D8CD7E24();
      if (os_log_type_enabled(v25, v26))
      {
        v27 = swift_slowAlloc();
        *v27 = 0;
        _os_log_impl(&dword_1D8C92000, v25, v26, "Error encoding preferred languages", v27, 2u);
        OUTLINED_FUNCTION_3_0();
      }
    }

    goto LABEL_15;
  }

  v21 = *MEMORY[0x1E69E9840];
}

uint64_t sub_1D8CD6510(uint64_t a1, void *a2)
{
  OUTLINED_FUNCTION_4_11(a1, a2);
  v4 = *(v3 + 8);
  v5 = OUTLINED_FUNCTION_9_4();
  result = v6(v5);
  if (v8)
  {
    OUTLINED_FUNCTION_8_8();
    v10 = v10 && v9 == 0xE000000000000000;
    if (!v10 && (OUTLINED_FUNCTION_1_21() & 1) == 0)
    {
      OUTLINED_FUNCTION_11_4(*(v2 + 224), *(v2 + 232));
    }
  }

  return result;
}

uint64_t sub_1D8CD65A0()
{
  if (qword_1ECAAC4B8 != -1)
  {
    result = swift_once();
  }

  if (byte_1ED9C5648 == 1)
  {
    v1 = v0[6];
    v2 = v0[7];
    return sub_1D8CB9654(v0[8], v0[9]);
  }

  return result;
}

uint64_t sub_1D8CD6610(uint64_t a1, void *a2)
{
  if (*a2)
  {
    return sub_1D8CB9880(*(v2 + 320), *(v2 + 328), a2[4], a2[5]);
  }

  return result;
}

uint64_t sub_1D8CD6648(uint64_t a1, void *a2)
{
  if (*a2)
  {
    v3 = a2[4];
    v4 = a2[5];
    return sub_1D8CB9654(*(v2 + 240), *(v2 + 248));
  }

  return result;
}

uint64_t sub_1D8CD6680@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v27 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAAC668, &qword_1D8CD8FA0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  OUTLINED_FUNCTION_5_3();
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v26 - v8;
  v10 = v2[42];
  v11 = v2[32];
  v12 = v2[33];
  v13 = sub_1D8CD7AD4();
  v14 = [v10 stringForKey_];

  if (v14)
  {
    sub_1D8CD7B04();

    sub_1D8CD7514();

    v15 = sub_1D8CD7554();
    if (__swift_getEnumTagSinglePayload(v9, 1, v15) != 1)
    {
      return (*(*(v15 - 8) + 32))(v27, v9, v15);
    }

    sub_1D8C953A4(v9, &qword_1ECAAC668, &qword_1D8CD8FA0);
  }

  if (!a1)
  {
    goto LABEL_10;
  }

  if (sub_1D8CD7B84() == 20035 && v16 == 0xE200000000000000)
  {
  }

  else
  {
    v18 = sub_1D8CD8154();

    if ((v18 & 1) == 0)
    {
LABEL_10:
      v19 = 35;
      v20 = 34;
      goto LABEL_14;
    }
  }

  v19 = 37;
  v20 = 36;
LABEL_14:
  v22 = v2[v20];
  v23 = v2[v19];

  sub_1D8CD7514();

  v24 = sub_1D8CD7554();
  if (__swift_getEnumTagSinglePayload(v3, 1, v24) != 1)
  {
    return (*(*(v24 - 8) + 32))(v27, v3, v24);
  }

  sub_1D8C953A4(v3, &qword_1ECAAC668, &qword_1D8CD8FA0);
  sub_1D8CB9B58();
  swift_allocError();
  *v25 = 1;
  return swift_willThrow();
}

uint64_t sub_1D8CD6930()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  v3 = *(v0 + 56);

  v4 = *(v0 + 72);

  v5 = *(v0 + 88);

  v6 = *(v0 + 104);

  v7 = *(v0 + 120);

  v8 = *(v0 + 136);

  v9 = *(v0 + 152);

  v10 = *(v0 + 168);

  v11 = *(v0 + 184);

  v12 = *(v0 + 200);

  v13 = *(v0 + 216);

  v14 = *(v0 + 232);

  v15 = *(v0 + 248);

  v16 = *(v0 + 264);

  v17 = *(v0 + 280);

  v18 = *(v0 + 296);

  v19 = *(v0 + 312);

  v20 = *(v0 + 328);

  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 344));
  return v0;
}

uint64_t sub_1D8CD69F8()
{
  sub_1D8CD6930();

  return MEMORY[0x1EEE6BDC0](v0, 384, 7);
}

uint64_t sub_1D8CD6A50()
{
  v1 = sub_1D8CD7324();
  v85 = OUTLINED_FUNCTION_3(v1);
  v86 = v2;
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v85);
  v90 = v84 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1D8CD7AD4();
  v7 = [v0 stringForKey_];

  if (v7)
  {
    v8 = sub_1D8CD7B04();
    v10 = v9;

    if (qword_1ED9C4AC8 != -1)
    {
      goto LABEL_55;
    }

    while (1)
    {
      v11 = sub_1D8CD7A04();
      v12 = __swift_project_value_buffer(v11, qword_1ED9C5680);

      v91 = v12;
      v13 = sub_1D8CD79E4();
      v14 = sub_1D8CD7E44();

      if (os_log_type_enabled(v13, v14))
      {
        v15 = swift_slowAlloc();
        v16 = swift_slowAlloc();
        v98[0] = v16;
        *v15 = 136315138;
        *(v15 + 4) = sub_1D8C9D088(v8, v10, v98);
        _os_log_impl(&dword_1D8C92000, v13, v14, "processing debug parameters %s", v15, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v16);
        OUTLINED_FUNCTION_3_0();
        OUTLINED_FUNCTION_3_0();
      }

      v98[0] = 38;
      v98[1] = 0xE100000000000000;
      MEMORY[0x1EEE9AC00](v17);
      v84[-2] = v98;
      v18 = v8;
      v8 = 0;
      v19 = sub_1D8CCEE98(0x7FFFFFFFFFFFFFFFLL, 1, sub_1D8CBC894, &v84[-4], v18, v10);
      v21 = v19;
      v95 = *(v19 + 16);
      if (!v95)
      {
        break;
      }

      v22 = v19 + 32;
      v84[1] = v86 + 32;
      *&v20 = 136315138;
      v87 = v20;
      v23 = 0;
      v92 = MEMORY[0x1E69E7CC0];
      v88 = v19 + 32;
      v89 = v19;
      while (v23 < *(v21 + 16))
      {
        v24 = (v22 + 32 * v23);
        v25 = *v24;
        v8 = v24[1] >> 14;
        v26 = MEMORY[0x1E69E7CC0];
        if (v8 == *v24 >> 14)
        {
          goto LABEL_43;
        }

        v94 = v23;
        v27 = v24[3];
        v97 = v24[2];
        v10 = v27;

        v28 = v25;
        v29 = MEMORY[0x1E69E7CC0];
LABEL_10:
        v96 = v29;
        v30 = v28;
        while (1)
        {
          v31 = v30 >> 14;
          v32 = v28 >> 14;
          if (v30 >> 14 == v8)
          {
            break;
          }

          v33 = v8;
          OUTLINED_FUNCTION_0_22();
          if (sub_1D8CD7F04() == 61 && v34 == 0xE100000000000000)
          {

LABEL_19:
            if (v32 == v31)
            {
              v29 = v96;
            }

            else
            {
              if (v31 < v32)
              {
                goto LABEL_52;
              }

              v36 = sub_1D8CD7F14();
              v93 = v37;
              v39 = v38;
              v41 = v40;
              v42 = v96;
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v48 = v42[2];
                OUTLINED_FUNCTION_7_6();
                sub_1D8CC353C();
                v42 = v49;
              }

              v44 = v42[2];
              v43 = v42[3];
              v45 = v42;
              if (v44 >= v43 >> 1)
              {
                OUTLINED_FUNCTION_13_2(v43);
                sub_1D8CC353C();
                v45 = v50;
              }

              v45[2] = v44 + 1;
              v46 = &v45[4 * v44];
              v29 = v45;
              v47 = v93;
              v46[4] = v36;
              v46[5] = v47;
              v46[6] = v39;
              v46[7] = v41;
            }

            OUTLINED_FUNCTION_0_22();
            v28 = sub_1D8CD7EE4();
            v8 = v33;
            goto LABEL_10;
          }

          v8 = sub_1D8CD8154();

          if (v8)
          {
            goto LABEL_19;
          }

          OUTLINED_FUNCTION_0_22();
          v30 = sub_1D8CD7EE4();
          v8 = v33;
        }

        if (v32 == v8)
        {

          v26 = v96;
          v51 = v96[2];
          v23 = v94;
          v22 = v88;
        }

        else
        {
          v26 = v96;
          if (v8 < v32)
          {
            goto LABEL_53;
          }

          v52 = sub_1D8CD7F14();
          v54 = v53;
          v56 = v55;
          v58 = v57;

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v77 = v26[2];
            OUTLINED_FUNCTION_7_6();
            sub_1D8CC353C();
            v26 = v78;
          }

          v23 = v94;
          v22 = v88;
          v8 = v26[2];
          v59 = v26[3];
          v51 = v8 + 1;
          if (v8 >= v59 >> 1)
          {
            OUTLINED_FUNCTION_13_2(v59);
            sub_1D8CC353C();
            v26 = v79;
          }

          v26[2] = v51;
          v60 = &v26[4 * v8];
          v60[4] = v52;
          v60[5] = v54;
          v60[6] = v56;
          v60[7] = v58;
        }

        v21 = v89;
        if (v51 != 2)
        {
LABEL_43:

          v10 = sub_1D8CD79E4();
          v71 = sub_1D8CD7E24();

          if (os_log_type_enabled(v10, v71))
          {
            v8 = swift_slowAlloc();
            v72 = swift_slowAlloc();
            v98[0] = v72;
            *v8 = v87;
            MEMORY[0x1DA726B60](v26, MEMORY[0x1E69E67B0]);

            v73 = OUTLINED_FUNCTION_6_9();
            v76 = sub_1D8C9D088(v73, v74, v75);

            *(v8 + 4) = v76;
            _os_log_impl(&dword_1D8C92000, v10, v71, "invalid query components: %s", v8, 0xCu);
            __swift_destroy_boxed_opaque_existential_0Tm(v72);
            OUTLINED_FUNCTION_3_0();
            OUTLINED_FUNCTION_3_0();
          }

          else
          {
          }
        }

        else
        {
          v61 = v26[4];
          v62 = v26[5];
          v8 = v26[6];
          v63 = v26[7];

          MEMORY[0x1DA726A10](v61, v62, v8, v63);
          v10 = v64;

          if (v26[2] < 2uLL)
          {
            goto LABEL_54;
          }

          v65 = v26[8];
          v66 = v26[9];
          v67 = v26[10];
          v68 = v26[11];

          v8 = MEMORY[0x1DA726A10](v65, v66, v67, v68);

          sub_1D8CD72F4();

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v80 = *(v92 + 16);
            OUTLINED_FUNCTION_7_6();
            sub_1D8CC3478();
            v92 = v81;
          }

          v69 = *(v92 + 16);
          v10 = (v69 + 1);
          if (v69 >= *(v92 + 24) >> 1)
          {
            sub_1D8CC3478();
            v92 = v82;
          }

          v70 = v92;
          *(v92 + 16) = v10;
          (*(v86 + 32))(v70 + ((*(v86 + 80) + 32) & ~*(v86 + 80)) + *(v86 + 72) * v69, v90, v85);
        }

        if (++v23 == v95)
        {

          return v92;
        }
      }

      __break(1u);
LABEL_52:
      __break(1u);
LABEL_53:
      __break(1u);
LABEL_54:
      __break(1u);
LABEL_55:
      OUTLINED_FUNCTION_3_13();
    }
  }

  return MEMORY[0x1E69E7CC0];
}

uint64_t sub_1D8CD71AC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAACA80, &qword_1D8CD9EA8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

__n128 OUTLINED_FUNCTION_17_2()
{
  v2 = *(v0 + 16);
  *(v1 - 144) = *v0;
  *(v1 - 128) = v2;
  result = *(v0 + 32);
  v4 = *(v0 + 48);
  *(v1 - 112) = result;
  *(v1 - 96) = v4;
  return result;
}