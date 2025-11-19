uint64_t AudioUsoIntent.__deallocating_deinit()
{
  AudioUsoIntent.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_2661FEA68()
{
  v1 = *v0;
  swift_beginAccess();
  v2 = *(v1 + 576);
  v3 = *(v1 + 584);

  return v2;
}

uint64_t sub_2661FECFC@<X0>(_BYTE *a1@<X8>)
{
  v3 = *v1;
  result = swift_beginAccess();
  *a1 = *(v3 + 185);
  return result;
}

uint64_t sub_2661FED90@<X0>(_BYTE *a1@<X8>)
{
  v3 = *v1;
  result = swift_beginAccess();
  *a1 = *(v3 + 187);
  return result;
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_2661FEE10(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

uint64_t sub_2661FEE5C(_BYTE *a1, uint64_t a2)
{
  v3 = v2;
  v5 = *v2;
  v6 = *(*v2 + 40);
  sub_266213170();
  CommonAudio.Attribute.rawValue.getter();
  sub_266212FC0();

  v7 = sub_266213190();
  v8 = -1 << *(v5 + 32);
  v9 = v7 & ~v8;
  if (((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
  {
LABEL_51:
    v18 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v22 = *v3;
    sub_2661FF9E8(a2, v9, isUniquelyReferenced_nonNull_native);
    *v3 = v22;
    result = 1;
    goto LABEL_54;
  }

  v10 = ~v8;
  while (2)
  {
    v11 = 0xEA00000000007473;
    v12 = 0x697472416D6F7266;
    switch(*(*(v5 + 48) + v9))
    {
      case 1:
        v11 = 0xE800000000000000;
        v12 = 0x676E6F536D6F7266;
        break;
      case 2:
        v12 = 0x75626C416D6F7266;
        v11 = 0xE90000000000006DLL;
        break;
      case 3:
        v11 = 0xE800000000000000;
        v12 = 0x7478654E79616C70;
        break;
      case 4:
        v11 = 0xE700000000000000;
        v12 = 0x776F4E79616C70;
        break;
      case 5:
        v11 = 0xE800000000000000;
        v12 = 0x7473614C79616C70;
        break;
      case 6:
        v11 = 0xE800000000000000;
        v12 = 0x7974696E69666661;
        break;
      case 7:
        v12 = 0x6E656D6D6F636572;
        v11 = 0xEB00000000646564;
        break;
      case 8:
        v11 = 0xE900000000000079;
        v12 = 0x7265766F63736964;
        break;
      case 9:
        v12 = 0xD000000000000018;
        v11 = 0x8000000266214B40;
        break;
      case 0xA:
        v11 = 0xE400000000000000;
        v12 = 1954047342;
        break;
      case 0xB:
        v11 = 0xE500000000000000;
        v12 = 0x64656D616ELL;
        break;
      case 0xC:
        v11 = 0xE800000000000000;
        v12 = 0x73756F6976657270;
        break;
      case 0xD:
        v12 = 0x44657361656C6572;
        v11 = 0xEB00000000657461;
        break;
      case 0xE:
        v11 = 0xE800000000000000;
        v12 = 0x6E6F697461727564;
        break;
      default:
        break;
    }

    v13 = 0x697472416D6F7266;
    v14 = 0xEA00000000007473;
    switch(a2)
    {
      case 1:
        v14 = 0xE800000000000000;
        if (v12 == 0x676E6F536D6F7266)
        {
          goto LABEL_45;
        }

        goto LABEL_46;
      case 2:
        v14 = 0xE90000000000006DLL;
        if (v12 != 0x75626C416D6F7266)
        {
          goto LABEL_46;
        }

        goto LABEL_45;
      case 3:
        v14 = 0xE800000000000000;
        if (v12 != 0x7478654E79616C70)
        {
          goto LABEL_46;
        }

        goto LABEL_45;
      case 4:
        v14 = 0xE700000000000000;
        if (v12 != 0x776F4E79616C70)
        {
          goto LABEL_46;
        }

        goto LABEL_45;
      case 5:
        v14 = 0xE800000000000000;
        if (v12 != 0x7473614C79616C70)
        {
          goto LABEL_46;
        }

        goto LABEL_45;
      case 6:
        v14 = 0xE800000000000000;
        if (v12 != 0x7974696E69666661)
        {
          goto LABEL_46;
        }

        goto LABEL_45;
      case 7:
        v15 = 0x6E656D6D6F636572;
        v16 = 6579556;
        goto LABEL_39;
      case 8:
        v14 = 0xE900000000000079;
        if (v12 != 0x7265766F63736964)
        {
          goto LABEL_46;
        }

        goto LABEL_45;
      case 9:
        v14 = 0x8000000266214B40;
        if (v12 != 0xD000000000000018)
        {
          goto LABEL_46;
        }

        goto LABEL_45;
      case 10:
        v14 = 0xE400000000000000;
        v13 = 1954047342;
        goto LABEL_44;
      case 11:
        v14 = 0xE500000000000000;
        if (v12 != 0x64656D616ELL)
        {
          goto LABEL_46;
        }

        goto LABEL_45;
      case 12:
        v14 = 0xE800000000000000;
        if (v12 != 0x73756F6976657270)
        {
          goto LABEL_46;
        }

        goto LABEL_45;
      case 13:
        v15 = 0x44657361656C6572;
        v16 = 6648929;
LABEL_39:
        v14 = v16 & 0xFFFFFFFFFFFFLL | 0xEB00000000000000;
        if (v12 != v15)
        {
          goto LABEL_46;
        }

        goto LABEL_45;
      case 14:
        v14 = 0xE800000000000000;
        if (v12 != 0x6E6F697461727564)
        {
          goto LABEL_46;
        }

        goto LABEL_45;
      default:
LABEL_44:
        if (v12 != v13)
        {
          goto LABEL_46;
        }

LABEL_45:
        if (v11 != v14)
        {
LABEL_46:
          v17 = sub_266213140();

          if (v17)
          {
            goto LABEL_53;
          }

          v9 = (v9 + 1) & v10;
          if (((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
          {
            goto LABEL_51;
          }

          continue;
        }

LABEL_53:
        result = 0;
        LOBYTE(a2) = *(*(v5 + 48) + v9);
LABEL_54:
        *a1 = a2;
        return result;
    }
  }
}

uint64_t sub_2661FF358(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800679F8, &qword_2662139C8);
  result = sub_266213070();
  v6 = result;
  if (*(v3 + 16))
  {
    v28 = v2;
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
    v13 = result + 56;
    while (v11)
    {
      v18 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_18:
      v21 = *(*(v3 + 48) + (v18 | (v7 << 6)));
      v22 = *(v6 + 40);
      sub_266213170();
      sub_266212FC0();

      result = sub_266213190();
      v14 = -1 << *(v6 + 32);
      v15 = result & ~v14;
      v16 = v15 >> 6;
      if (((-1 << v15) & ~*(v13 + 8 * (v15 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v14) >> 6;
        while (++v16 != v24 || (v23 & 1) == 0)
        {
          v25 = v16 == v24;
          if (v16 == v24)
          {
            v16 = 0;
          }

          v23 |= v25;
          v26 = *(v13 + 8 * v16);
          if (v26 != -1)
          {
            v17 = __clz(__rbit64(~v26)) + (v16 << 6);
            goto LABEL_10;
          }
        }

LABEL_33:
        __break(1u);
        return result;
      }

      v17 = __clz(__rbit64((-1 << v15) & ~*(v13 + 8 * (v15 >> 6)))) | v15 & 0x7FFFFFFFFFFFFFC0;
LABEL_10:
      *(v13 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      *(*(v6 + 48) + v17) = v21;
      ++*(v6 + 16);
    }

    v19 = v7;
    while (1)
    {
      v7 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_33;
      }

      if (v7 >= v12)
      {
        break;
      }

      v20 = v8[v7];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v11 = (v20 - 1) & v20;
        goto LABEL_18;
      }
    }

    v27 = 1 << *(v3 + 32);
    if (v27 >= 64)
    {
      bzero((v3 + 56), ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v27;
    }

    v2 = v28;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_2661FF754(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800679D0, "\n+");
  result = sub_266213070();
  v6 = result;
  if (*(v3 + 16))
  {
    v28 = v2;
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
    v13 = result + 56;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v18 = *(*(v3 + 48) + (v15 | (v7 << 6)));
      v19 = *(v6 + 40);
      sub_266213170();
      sub_266212FC0();

      result = sub_266213190();
      v20 = -1 << *(v6 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v13 + 8 * (v21 >> 6))) == 0)
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
          v26 = *(v13 + 8 * v22);
          if (v26 != -1)
          {
            v14 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v21) & ~*(v13 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v6 + 48) + v14) = v18;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v17 = v8[v7];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    v27 = 1 << *(v3 + 32);
    if (v27 >= 64)
    {
      bzero((v3 + 56), ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v27;
    }

    v2 = v28;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_2661FF9E8(uint64_t result, unint64_t a2, char a3)
{
  v4 = v3;
  v6 = result;
  v7 = *(*v3 + 16);
  v8 = *(*v3 + 24);
  if (v8 <= v7 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_2661FF358(v7 + 1);
    }

    else
    {
      if (v8 > v7)
      {
        result = sub_266200148();
        goto LABEL_58;
      }

      sub_2662003C8(v7 + 1);
    }

    v9 = *v3;
    v10 = *(*v3 + 40);
    sub_266213170();
    CommonAudio.Attribute.rawValue.getter();
    sub_266212FC0();

    result = sub_266213190();
    v11 = -1 << *(v9 + 32);
    a2 = result & ~v11;
    if ((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
    {
      v12 = ~v11;
      while (2)
      {
        v13 = 0xEA00000000007473;
        v14 = 0x697472416D6F7266;
        switch(*(*(v9 + 48) + a2))
        {
          case 1:
            v13 = 0xE800000000000000;
            v14 = 0x676E6F536D6F7266;
            break;
          case 2:
            v14 = 0x75626C416D6F7266;
            v13 = 0xE90000000000006DLL;
            break;
          case 3:
            v13 = 0xE800000000000000;
            v14 = 0x7478654E79616C70;
            break;
          case 4:
            v13 = 0xE700000000000000;
            v14 = 0x776F4E79616C70;
            break;
          case 5:
            v13 = 0xE800000000000000;
            v14 = 0x7473614C79616C70;
            break;
          case 6:
            v13 = 0xE800000000000000;
            v14 = 0x7974696E69666661;
            break;
          case 7:
            v14 = 0x6E656D6D6F636572;
            v13 = 0xEB00000000646564;
            break;
          case 8:
            v13 = 0xE900000000000079;
            v14 = 0x7265766F63736964;
            break;
          case 9:
            v14 = 0xD000000000000018;
            v13 = 0x8000000266214B40;
            break;
          case 0xA:
            v13 = 0xE400000000000000;
            v14 = 1954047342;
            break;
          case 0xB:
            v13 = 0xE500000000000000;
            v14 = 0x64656D616ELL;
            break;
          case 0xC:
            v13 = 0xE800000000000000;
            v14 = 0x73756F6976657270;
            break;
          case 0xD:
            v14 = 0x44657361656C6572;
            v13 = 0xEB00000000657461;
            break;
          case 0xE:
            v13 = 0xE800000000000000;
            v14 = 0x6E6F697461727564;
            break;
          default:
            break;
        }

        v15 = 0x697472416D6F7266;
        v16 = 0xEA00000000007473;
        switch(v6)
        {
          case 1:
            v16 = 0xE800000000000000;
            if (v14 == 0x676E6F536D6F7266)
            {
              goto LABEL_52;
            }

            goto LABEL_53;
          case 2:
            v16 = 0xE90000000000006DLL;
            if (v14 != 0x75626C416D6F7266)
            {
              goto LABEL_53;
            }

            goto LABEL_52;
          case 3:
            v16 = 0xE800000000000000;
            if (v14 != 0x7478654E79616C70)
            {
              goto LABEL_53;
            }

            goto LABEL_52;
          case 4:
            v16 = 0xE700000000000000;
            if (v14 != 0x776F4E79616C70)
            {
              goto LABEL_53;
            }

            goto LABEL_52;
          case 5:
            v16 = 0xE800000000000000;
            if (v14 != 0x7473614C79616C70)
            {
              goto LABEL_53;
            }

            goto LABEL_52;
          case 6:
            v16 = 0xE800000000000000;
            if (v14 != 0x7974696E69666661)
            {
              goto LABEL_53;
            }

            goto LABEL_52;
          case 7:
            v17 = 0x6E656D6D6F636572;
            v18 = 6579556;
            goto LABEL_46;
          case 8:
            v16 = 0xE900000000000079;
            if (v14 != 0x7265766F63736964)
            {
              goto LABEL_53;
            }

            goto LABEL_52;
          case 9:
            v16 = 0x8000000266214B40;
            if (v14 != 0xD000000000000018)
            {
              goto LABEL_53;
            }

            goto LABEL_52;
          case 10:
            v16 = 0xE400000000000000;
            v15 = 1954047342;
            goto LABEL_51;
          case 11:
            v16 = 0xE500000000000000;
            if (v14 != 0x64656D616ELL)
            {
              goto LABEL_53;
            }

            goto LABEL_52;
          case 12:
            v16 = 0xE800000000000000;
            if (v14 != 0x73756F6976657270)
            {
              goto LABEL_53;
            }

            goto LABEL_52;
          case 13:
            v17 = 0x44657361656C6572;
            v18 = 6648929;
LABEL_46:
            v16 = v18 & 0xFFFFFFFFFFFFLL | 0xEB00000000000000;
            if (v14 != v17)
            {
              goto LABEL_53;
            }

            goto LABEL_52;
          case 14:
            v16 = 0xE800000000000000;
            if (v14 != 0x6E6F697461727564)
            {
              goto LABEL_53;
            }

            goto LABEL_52;
          default:
LABEL_51:
            if (v14 != v15)
            {
              goto LABEL_53;
            }

LABEL_52:
            if (v13 == v16)
            {
              goto LABEL_61;
            }

LABEL_53:
            v19 = sub_266213140();

            if (v19)
            {
              goto LABEL_62;
            }

            a2 = (a2 + 1) & v12;
            if (((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
            {
              break;
            }

            continue;
        }

        break;
      }
    }
  }

LABEL_58:
  v20 = *v4;
  *(*v4 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v20 + 48) + a2) = v6;
  v21 = *(v20 + 16);
  v22 = __OFADD__(v21, 1);
  v23 = v21 + 1;
  if (v22)
  {
    __break(1u);
LABEL_61:

LABEL_62:
    result = sub_266213160();
    __break(1u);
  }

  else
  {
    *(v20 + 16) = v23;
  }

  return result;
}

uint64_t sub_2661FFF30(uint64_t result, unint64_t a2, char a3)
{
  v5 = result;
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  v23 = result;
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_25;
  }

  if (a3)
  {
    sub_2661FF754(v6 + 1);
  }

  else
  {
    if (v7 > v6)
    {
      result = sub_266200288();
      goto LABEL_25;
    }

    sub_266200794(v6 + 1);
  }

  v8 = 0x664F65726F6DLL;
  v9 = *v3;
  v10 = *(*v3 + 40);
  sub_266213170();
  if (v5)
  {
    v8 = 0x6E65726566666964;
    v11 = 0xED00006E61685474;
  }

  else
  {
    v11 = 0xE600000000000000;
  }

  sub_266212FC0();

  result = sub_266213190();
  v12 = -1 << *(v9 + 32);
  a2 = result & ~v12;
  if ((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v13 = ~v12;
    do
    {
      v14 = *(*(v9 + 48) + a2) ? 0x6E65726566666964 : 0x664F65726F6DLL;
      v15 = *(*(v9 + 48) + a2) ? 0xED00006E61685474 : 0xE600000000000000;
      if (v14 == v8 && v15 == v11)
      {
        goto LABEL_28;
      }

      v17 = sub_266213140();

      if (v17)
      {
        goto LABEL_29;
      }

      a2 = (a2 + 1) & v13;
    }

    while (((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_25:
  v18 = *v22;
  *(*v22 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v18 + 48) + a2) = v23 & 1;
  v19 = *(v18 + 16);
  v20 = __OFADD__(v19, 1);
  v21 = v19 + 1;
  if (!v20)
  {
    *(v18 + 16) = v21;
    return result;
  }

  __break(1u);
LABEL_28:

LABEL_29:
  result = sub_266213160();
  __break(1u);
  return result;
}

void *sub_266200148()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800679F8, &qword_2662139C8);
  v2 = *v0;
  v3 = sub_266213060();
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

void *sub_266200288()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800679D0, "\n+");
  v2 = *v0;
  v3 = sub_266213060();
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

uint64_t sub_2662003C8(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800679F8, &qword_2662139C8);
  result = sub_266213070();
  v6 = result;
  if (*(v3 + 16))
  {
    v26 = v2;
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
      v17 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_19:
      v20 = *(*(v3 + 48) + (v17 | (v7 << 6)));
      v21 = *(v6 + 40);
      sub_266213170();
      sub_266212FC0();

      result = sub_266213190();
      v13 = -1 << *(v6 + 32);
      v14 = result & ~v13;
      v15 = v14 >> 6;
      if (((-1 << v14) & ~*(v12 + 8 * (v14 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v13) >> 6;
        while (++v15 != v23 || (v22 & 1) == 0)
        {
          v24 = v15 == v23;
          if (v15 == v23)
          {
            v15 = 0;
          }

          v22 |= v24;
          v25 = *(v12 + 8 * v15);
          if (v25 != -1)
          {
            v16 = __clz(__rbit64(~v25)) + (v15 << 6);
            goto LABEL_11;
          }
        }

        goto LABEL_31;
      }

      v16 = __clz(__rbit64((-1 << v14) & ~*(v12 + 8 * (v14 >> 6)))) | v14 & 0x7FFFFFFFFFFFFFC0;
LABEL_11:
      *(v12 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v6 + 48) + v16) = v20;
      ++*(v6 + 16);
    }

    v18 = v7;
    while (1)
    {
      v7 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v7 >= v11)
      {

        v2 = v26;
        goto LABEL_29;
      }

      v19 = *(v3 + 56 + 8 * v7);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v10 = (v19 - 1) & v19;
        goto LABEL_19;
      }
    }

    __break(1u);
LABEL_31:
    __break(1u);
  }

  else
  {

LABEL_29:
    *v2 = v6;
  }

  return result;
}

uint64_t sub_266200794(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800679D0, "\n+");
  result = sub_266213070();
  v6 = result;
  if (*(v3 + 16))
  {
    v26 = v2;
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
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_17:
      v17 = *(*(v3 + 48) + (v14 | (v7 << 6)));
      v18 = *(v6 + 40);
      sub_266213170();
      sub_266212FC0();

      result = sub_266213190();
      v19 = -1 << *(v6 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
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
          v25 = *(v12 + 8 * v21);
          if (v25 != -1)
          {
            v13 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v13 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v6 + 48) + v13) = v17;
      ++*(v6 + 16);
    }

    v15 = v7;
    while (1)
    {
      v7 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v7 >= v11)
      {

        v2 = v26;
        goto LABEL_28;
      }

      v16 = *(v3 + 56 + 8 * v7);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
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

uint64_t sub_2662009F8(uint64_t a1)
{
  v2 = sub_266212B20();
  v3 = *(v2 - 8);
  v107 = v2;
  v108 = v3;
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = v90 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v109 = v90 - v8;
  v105 = sub_266212D60();
  v9 = *(v105 - 1);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v105);
  v91 = v90 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800679E8, &qword_2662139C0);
  v12 = *(*(v103 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v103);
  v99 = v90 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v16 = v90 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800679B0, &qword_266213550);
  v18 = *(*(v17 - 8) + 64);
  v19 = MEMORY[0x28223BE20](v17 - 8);
  v98 = v90 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v19);
  v96 = v90 - v22;
  v23 = MEMORY[0x28223BE20](v21);
  v97 = v90 - v24;
  v25 = MEMORY[0x28223BE20](v23);
  v27 = v90 - v26;
  v28 = MEMORY[0x28223BE20](v25);
  v30 = v90 - v29;
  MEMORY[0x28223BE20](v28);
  v32 = v90 - v31;
  v104 = a1;
  v33 = sub_266212C30();
  if (v34)
  {
    v35 = v33;
    v36 = v34;

    v37 = HIBYTE(v36) & 0xF;
    if ((v36 & 0x2000000000000000) == 0)
    {
      v37 = v35 & 0xFFFFFFFFFFFFLL;
    }

    v100 = v37 != 0;
  }

  else
  {
    v100 = 0;
  }

  v38 = sub_266212C00();
  v106 = v7;
  v101 = v27;
  if (v38)
  {
    sub_266212D50();
  }

  else
  {
    (*(v9 + 56))(v32, 1, 1, v105);
  }

  v39 = *MEMORY[0x277D5EE18];
  v40 = v105;
  v93 = *(v9 + 104);
  v94 = v9 + 104;
  v93(v30, v39, v105);
  v92 = *(v9 + 56);
  v92(v30, 0, 1, v40);
  v41 = *(v103 + 48);
  sub_2662045F8(v32, v16, &qword_2800679B0, &qword_266213550);
  sub_2662045F8(v30, &v16[v41], &qword_2800679B0, &qword_266213550);
  v102 = v9;
  v42 = *(v9 + 48);
  v43 = v42(v16, 1, v40);
  v95 = v42;
  if (v43 == 1)
  {
    sub_2661EFBB8(v30, &qword_2800679B0, &qword_266213550);
    sub_2661EFBB8(v32, &qword_2800679B0, &qword_266213550);
    if (v42(&v16[v41], 1, v105) == 1)
    {
      v44 = v16;
LABEL_23:
      sub_2661EFBB8(v44, &qword_2800679B0, &qword_266213550);
LABEL_24:
      LODWORD(v103) = 1;
      goto LABEL_29;
    }

    goto LABEL_14;
  }

  v45 = v101;
  sub_2662045F8(v16, v101, &qword_2800679B0, &qword_266213550);
  if (v42(&v16[v41], 1, v105) == 1)
  {
    sub_2661EFBB8(v30, &qword_2800679B0, &qword_266213550);
    sub_2661EFBB8(v32, &qword_2800679B0, &qword_266213550);
    (*(v102 + 8))(v45, v105);
LABEL_14:
    sub_2661EFBB8(v16, &qword_2800679E8, &qword_2662139C0);
    goto LABEL_15;
  }

  v50 = v102;
  v51 = *(v102 + 32);
  v90[1] = v9 + 56;
  v52 = v91;
  v53 = v105;
  v51(v91, &v16[v41], v105);
  sub_2662045A0();
  v54 = sub_266212F90();
  v55 = v53;
  v56 = *(v50 + 8);
  v56(v52, v55);
  sub_2661EFBB8(v30, &qword_2800679B0, &qword_266213550);
  sub_2661EFBB8(v32, &qword_2800679B0, &qword_266213550);
  v56(v101, v55);
  sub_2661EFBB8(v16, &qword_2800679B0, &qword_266213550);
  if (v54)
  {
    goto LABEL_24;
  }

LABEL_15:
  if (sub_266212C00())
  {
    v46 = v97;
    sub_266212D50();

    v47 = v99;
    v48 = v96;
    v49 = v92;
  }

  else
  {
    v46 = v97;
    v49 = v92;
    v92(v97, 1, 1, v105);
    v47 = v99;
    v48 = v96;
  }

  v57 = v105;
  v93(v48, *MEMORY[0x277D5ED50], v105);
  v49(v48, 0, 1, v57);
  v58 = *(v103 + 48);
  sub_2662045F8(v46, v47, &qword_2800679B0, &qword_266213550);
  sub_2662045F8(v48, v47 + v58, &qword_2800679B0, &qword_266213550);
  v59 = v95;
  if (v95(v47, 1, v57) == 1)
  {
    sub_2661EFBB8(v48, &qword_2800679B0, &qword_266213550);
    sub_2661EFBB8(v46, &qword_2800679B0, &qword_266213550);
    if (v59(v47 + v58, 1, v105) == 1)
    {
      v44 = v47;
      goto LABEL_23;
    }

    goto LABEL_27;
  }

  sub_2662045F8(v47, v98, &qword_2800679B0, &qword_266213550);
  if (v59(v47 + v58, 1, v105) == 1)
  {
    sub_2661EFBB8(v48, &qword_2800679B0, &qword_266213550);
    sub_2661EFBB8(v46, &qword_2800679B0, &qword_266213550);
    (*(v102 + 8))(v98, v105);
LABEL_27:
    sub_2661EFBB8(v47, &qword_2800679E8, &qword_2662139C0);
    LODWORD(v103) = 0;
    goto LABEL_29;
  }

  v60 = v102;
  v61 = v98;
  v62 = v91;
  v63 = v105;
  (*(v102 + 32))(v91, v47 + v58, v105);
  sub_2662045A0();
  LODWORD(v103) = sub_266212F90();
  v64 = *(v60 + 8);
  v64(v62, v63);
  sub_2661EFBB8(v48, &qword_2800679B0, &qword_266213550);
  sub_2661EFBB8(v46, &qword_2800679B0, &qword_266213550);
  v64(v61, v63);
  sub_2661EFBB8(v47, &qword_2800679B0, &qword_266213550);
LABEL_29:
  result = sub_266212AC0();
  v66 = result;
  v67 = *(result + 16);
  if (v67)
  {
    v68 = 0;
    v69 = v107;
    v70 = result + ((*(v108 + 80) + 32) & ~*(v108 + 80));
    v105 = "media_controls";
    v71 = (v108 + 8);
    while (1)
    {
      if (v68 >= *(v66 + 16))
      {
        __break(1u);
        goto LABEL_61;
      }

      (*(v108 + 16))(v109, v70 + *(v108 + 72) * v68, v69);
      v72 = sub_266212B10();
      if (!v73)
      {
        break;
      }

      if (v72 == 0x7473696C79616C70 && v73 == 0xED0000656C746954)
      {
      }

      else
      {
        v74 = sub_266213140();

        if ((v74 & 1) == 0)
        {
          break;
        }
      }

      sub_266212AD0();
      v75 = sub_266212FB0();
      v77 = v76;

      if (v75 == sub_266212FB0() && v77 == v78)
      {

        (*v71)(v109, v107);
LABEL_45:
        LODWORD(v109) = 0;
        goto LABEL_46;
      }

      v79 = sub_266213140();

      v69 = v107;
      result = (*v71)(v109, v107);
      if (v79)
      {
        goto LABEL_45;
      }

LABEL_32:
      if (v67 == ++v68)
      {
        goto LABEL_43;
      }
    }

    v69 = v107;
    result = (*v71)(v109, v107);
    goto LABEL_32;
  }

LABEL_43:
  LODWORD(v109) = 1;
LABEL_46:

  result = sub_266212AC0();
  v80 = result;
  v81 = *(result + 16);
  v82 = v107;
  if (v81)
  {
    v83 = 0;
    v84 = result + ((*(v108 + 80) + 32) & ~*(v108 + 80));
    v85 = (v108 + 8);
    while (v83 < *(v80 + 16))
    {
      v86 = v106;
      (*(v108 + 16))(v106, v84 + *(v108 + 72) * v83, v82);
      v87 = sub_266212B10();
      if (v88)
      {
        if (v87 == 0xD000000000000010 && v88 == 0x80000002662149D0)
        {

          (*v85)(v106, v107);
LABEL_58:

          return 0;
        }

        v89 = sub_266213140();

        v82 = v107;
        result = (*v85)(v106, v107);
        if (v89)
        {
          goto LABEL_58;
        }
      }

      else
      {
        result = (*v85)(v86, v82);
      }

      if (v81 == ++v83)
      {
        goto LABEL_56;
      }
    }

LABEL_61:
    __break(1u);
  }

  else
  {
LABEL_56:

    return v100 & v103 & v109;
  }

  return result;
}

uint64_t sub_266201608(uint64_t a1)
{
  v2 = sub_266212B20();
  v3 = *(v2 - 8);
  v112 = v2;
  v113 = v3;
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v93[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v5);
  v9 = &v93[-v8];
  v110 = sub_266212D60();
  v10 = *(v110 - 1);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v110);
  v96 = &v93[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800679E8, &qword_2662139C0);
  v13 = *(*(v108 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v108);
  v103 = &v93[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v14);
  v17 = &v93[-v16];
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800679B0, &qword_266213550);
  v19 = *(*(v18 - 8) + 64);
  v20 = MEMORY[0x28223BE20](v18 - 8);
  v102 = &v93[-((v21 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v22 = MEMORY[0x28223BE20](v20);
  v105 = &v93[-v23];
  v24 = MEMORY[0x28223BE20](v22);
  v101 = &v93[-v25];
  v26 = MEMORY[0x28223BE20](v24);
  v28 = &v93[-v27];
  v29 = MEMORY[0x28223BE20](v26);
  v31 = &v93[-v30];
  MEMORY[0x28223BE20](v29);
  v33 = &v93[-v32];
  v109 = a1;
  v34 = sub_266212C30();
  if (v35)
  {
    v36 = v34;
    v37 = v35;

    v38 = HIBYTE(v37) & 0xF;
    if ((v37 & 0x2000000000000000) == 0)
    {
      v38 = v36 & 0xFFFFFFFFFFFFLL;
    }

    v39 = v38 == 0;
  }

  else
  {
    v39 = 1;
  }

  v107 = v39;
  v40 = sub_266212C00();
  v111 = v7;
  v104 = v28;
  if (v40)
  {
    sub_266212D50();
  }

  else
  {
    (*(v10 + 56))(v33, 1, 1, v110);
  }

  v41 = *MEMORY[0x277D5EE18];
  v42 = v110;
  v98 = *(v10 + 104);
  v99 = v10 + 104;
  v98(v31, v41, v110);
  v97 = *(v10 + 56);
  v97(v31, 0, 1, v42);
  v43 = *(v108 + 48);
  sub_2662045F8(v33, v17, &qword_2800679B0, &qword_266213550);
  sub_2662045F8(v31, &v17[v43], &qword_2800679B0, &qword_266213550);
  v106 = v10;
  v44 = *(v10 + 48);
  v45 = v44(v17, 1, v42);
  v100 = v44;
  if (v45 == 1)
  {
    sub_2661EFBB8(v31, &qword_2800679B0, &qword_266213550);
    sub_2661EFBB8(v33, &qword_2800679B0, &qword_266213550);
    if (v44(&v17[v43], 1, v110) == 1)
    {
      v46 = v17;
LABEL_23:
      sub_2661EFBB8(v46, &qword_2800679B0, &qword_266213550);
LABEL_24:
      LODWORD(v108) = 0;
      goto LABEL_30;
    }

    goto LABEL_14;
  }

  v47 = v104;
  sub_2662045F8(v17, v104, &qword_2800679B0, &qword_266213550);
  if (v44(&v17[v43], 1, v110) == 1)
  {
    sub_2661EFBB8(v31, &qword_2800679B0, &qword_266213550);
    sub_2661EFBB8(v33, &qword_2800679B0, &qword_266213550);
    (*(v106 + 8))(v47, v110);
LABEL_14:
    sub_2661EFBB8(v17, &qword_2800679E8, &qword_2662139C0);
    goto LABEL_15;
  }

  v52 = v106;
  v53 = *(v106 + 32);
  v95 = v10 + 56;
  v54 = v96;
  v55 = v110;
  v53(v96, &v17[v43], v110);
  sub_2662045A0();
  v94 = sub_266212F90();
  v56 = v55;
  v57 = *(v52 + 8);
  v57(v54, v56);
  sub_2661EFBB8(v31, &qword_2800679B0, &qword_266213550);
  sub_2661EFBB8(v33, &qword_2800679B0, &qword_266213550);
  v57(v104, v56);
  sub_2661EFBB8(v17, &qword_2800679B0, &qword_266213550);
  if (v94)
  {
    goto LABEL_24;
  }

LABEL_15:
  if (sub_266212C00())
  {
    v48 = v101;
    sub_266212D50();

    v49 = v103;
    v50 = v105;
    v51 = v97;
  }

  else
  {
    v48 = v101;
    v51 = v97;
    v97(v101, 1, 1, v110);
    v49 = v103;
    v50 = v105;
  }

  v58 = v110;
  v98(v50, *MEMORY[0x277D5ED50], v110);
  v51(v50, 0, 1, v58);
  v59 = *(v108 + 48);
  sub_2662045F8(v48, v49, &qword_2800679B0, &qword_266213550);
  sub_2662045F8(v50, v49 + v59, &qword_2800679B0, &qword_266213550);
  v60 = v100;
  if (v100(v49, 1, v58) == 1)
  {
    sub_2661EFBB8(v50, &qword_2800679B0, &qword_266213550);
    sub_2661EFBB8(v48, &qword_2800679B0, &qword_266213550);
    if (v60(v49 + v59, 1, v110) == 1)
    {
      v46 = v49;
      goto LABEL_23;
    }
  }

  else
  {
    sub_2662045F8(v49, v102, &qword_2800679B0, &qword_266213550);
    if (v60(v49 + v59, 1, v110) != 1)
    {
      v62 = v106;
      v63 = v102;
      v64 = v96;
      v65 = v110;
      (*(v106 + 32))(v96, v49 + v59, v110);
      sub_2662045A0();
      v66 = sub_266212F90();
      v67 = *(v62 + 8);
      v67(v64, v65);
      sub_2661EFBB8(v105, &qword_2800679B0, &qword_266213550);
      sub_2661EFBB8(v48, &qword_2800679B0, &qword_266213550);
      v67(v63, v65);
      sub_2661EFBB8(v49, &qword_2800679B0, &qword_266213550);
      v61 = v66 ^ 1;
      goto LABEL_29;
    }

    sub_2661EFBB8(v50, &qword_2800679B0, &qword_266213550);
    sub_2661EFBB8(v48, &qword_2800679B0, &qword_266213550);
    (*(v106 + 8))(v102, v110);
  }

  sub_2661EFBB8(v49, &qword_2800679E8, &qword_2662139C0);
  v61 = 1;
LABEL_29:
  LODWORD(v108) = v61;
LABEL_30:
  result = sub_266212AC0();
  v69 = result;
  v70 = *(result + 16);
  if (v70)
  {
    v71 = 0;
    v72 = v112;
    v73 = result + ((*(v113 + 80) + 32) & ~*(v113 + 80));
    v110 = "media_controls";
    v74 = (v113 + 8);
    while (1)
    {
      if (v71 >= *(v69 + 16))
      {
        __break(1u);
        goto LABEL_64;
      }

      (*(v113 + 16))(v9, v73 + *(v113 + 72) * v71, v72);
      v75 = sub_266212B10();
      if (!v76)
      {
        break;
      }

      if (v75 == 0x7473696C79616C70 && v76 == 0xED0000656C746954)
      {
      }

      else
      {
        v77 = sub_266213140();

        if ((v77 & 1) == 0)
        {
          break;
        }
      }

      sub_266212AD0();
      v78 = sub_266212FB0();
      v80 = v79;

      if (v78 == sub_266212FB0() && v80 == v81)
      {

        (*v74)(v9, v112);
LABEL_46:
        LODWORD(v110) = 0;
        goto LABEL_47;
      }

      v82 = sub_266213140();

      v72 = v112;
      result = (*v74)(v9, v112);
      if (v82)
      {
        goto LABEL_46;
      }

LABEL_33:
      if (v70 == ++v71)
      {
        goto LABEL_44;
      }
    }

    v72 = v112;
    result = (*v74)(v9, v112);
    goto LABEL_33;
  }

LABEL_44:
  LODWORD(v110) = 1;
LABEL_47:

  result = sub_266212AC0();
  v83 = result;
  v84 = *(result + 16);
  v85 = v112;
  if (v84)
  {
    v86 = 0;
    v87 = result + ((*(v113 + 80) + 32) & ~*(v113 + 80));
    v88 = (v113 + 8);
    while (v86 < *(v83 + 16))
    {
      v89 = v111;
      (*(v113 + 16))(v111, v87 + *(v113 + 72) * v86, v85);
      v90 = sub_266212B10();
      if (v91)
      {
        if (v90 == 0xD000000000000010 && v91 == 0x80000002662149D0)
        {

          (*v88)(v111, v112);
LABEL_60:

          return 0;
        }

        v92 = sub_266213140();

        v85 = v112;
        result = (*v88)(v111, v112);
        if (v92)
        {
          goto LABEL_60;
        }
      }

      else
      {
        result = (*v88)(v89, v85);
      }

      if (v84 == ++v86)
      {
        goto LABEL_57;
      }
    }

LABEL_64:
    __break(1u);
  }

  else
  {
LABEL_57:

    return ((v107 | v108 | v110) & 1) == 0;
  }

  return result;
}

uint64_t sub_266202240(uint64_t a1)
{
  v2 = sub_266212D60();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v52 = &v52 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800679E8, &qword_2662139C0);
  v6 = *(*(v58 - 8) + 64);
  MEMORY[0x28223BE20](v58);
  v8 = &v52 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800679B0, &qword_266213550);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v9 - 8);
  v57 = &v52 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v61 = &v52 - v14;
  MEMORY[0x28223BE20](v13);
  v60 = &v52 - v15;
  v16 = sub_266212B20();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  v20 = &v52 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_266212C30();
  if (v22)
  {
    v23 = v21;
    v24 = v22;

    v25 = HIBYTE(v24) & 0xF;
    if ((v24 & 0x2000000000000000) == 0)
    {
      v25 = v23 & 0xFFFFFFFFFFFFLL;
    }

    v26 = v25 == 0;
  }

  else
  {
    v26 = 1;
  }

  v59 = a1;
  result = sub_266212AC0();
  v28 = result;
  v65 = *(result + 16);
  if (!v65)
  {

LABEL_22:
    v41 = v60;
    v40 = v61;
    if (!v26)
    {
      LODWORD(result) = 1;
      goto LABEL_26;
    }

    return 0;
  }

  v53 = v26;
  v54 = v3;
  v55 = v8;
  v56 = v2;
  v29 = 0;
  v30 = result + ((*(v17 + 80) + 32) & ~*(v17 + 80));
  v63 = result;
  v64 = v17 + 16;
  v62 = "media_controls";
  v31 = (v17 + 8);
  while (1)
  {
    if (v29 >= *(v28 + 16))
    {
      __break(1u);
      return result;
    }

    (*(v17 + 16))(v20, v30 + *(v17 + 72) * v29, v16);
    v32 = sub_266212B10();
    if (!v33)
    {
LABEL_8:
      result = (*v31)(v20, v16);
      goto LABEL_9;
    }

    if (v32 == 0x5474736163646F70 && v33 == 0xEC000000656C7469)
    {
    }

    else
    {
      v34 = sub_266213140();

      if ((v34 & 1) == 0)
      {
        goto LABEL_8;
      }
    }

    sub_266212AD0();
    v35 = sub_266212FB0();
    v37 = v36;

    if (v35 == sub_266212FB0() && v37 == v38)
    {
      break;
    }

    v39 = sub_266213140();

    result = (*v31)(v20, v16);
    v28 = v63;
    if (v39)
    {
      goto LABEL_25;
    }

LABEL_9:
    if (v65 == ++v29)
    {

      v8 = v55;
      v2 = v56;
      v3 = v54;
      LOBYTE(v26) = v53;
      goto LABEL_22;
    }
  }

  (*v31)(v20, v16);
LABEL_25:

  result = 0;
  v8 = v55;
  v2 = v56;
  v3 = v54;
  v41 = v60;
  v40 = v61;
  if (v53)
  {
    return result;
  }

LABEL_26:
  LODWORD(v65) = result;
  if (sub_266212C00())
  {
    sub_266212D50();
  }

  else
  {
    (*(v3 + 56))(v41, 1, 1, v2);
  }

  (*(v3 + 104))(v40, *MEMORY[0x277D5EE08], v2);
  (*(v3 + 56))(v40, 0, 1, v2);
  v42 = *(v58 + 48);
  sub_2662045F8(v41, v8, &qword_2800679B0, &qword_266213550);
  sub_2662045F8(v40, &v8[v42], &qword_2800679B0, &qword_266213550);
  v43 = v3;
  v44 = *(v3 + 48);
  if (v44(v8, 1, v2) == 1)
  {
    sub_2661EFBB8(v40, &qword_2800679B0, &qword_266213550);
    sub_2661EFBB8(v41, &qword_2800679B0, &qword_266213550);
    if (v44(&v8[v42], 1, v2) == 1)
    {
      sub_2661EFBB8(v8, &qword_2800679B0, &qword_266213550);
      return v65;
    }

LABEL_34:
    sub_2661EFBB8(v8, &qword_2800679E8, &qword_2662139C0);
    return 0;
  }

  v45 = v57;
  sub_2662045F8(v8, v57, &qword_2800679B0, &qword_266213550);
  if (v44(&v8[v42], 1, v2) == 1)
  {
    sub_2661EFBB8(v61, &qword_2800679B0, &qword_266213550);
    sub_2661EFBB8(v41, &qword_2800679B0, &qword_266213550);
    (*(v43 + 8))(v45, v2);
    goto LABEL_34;
  }

  v46 = v43;
  v47 = &v8[v42];
  v48 = v52;
  (*(v43 + 32))(v52, v47, v2);
  sub_2662045A0();
  v49 = v45;
  v50 = sub_266212F90();
  v51 = *(v46 + 8);
  v51(v48, v2);
  sub_2661EFBB8(v61, &qword_2800679B0, &qword_266213550);
  sub_2661EFBB8(v41, &qword_2800679B0, &qword_266213550);
  v51(v49, v2);
  sub_2661EFBB8(v8, &qword_2800679B0, &qword_266213550);
  if (v50)
  {
    return v65;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2662029B4(uint64_t a1)
{
  v2 = sub_266212D60();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v54 = &v54 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800679E8, &qword_2662139C0);
  v6 = *(*(v60 - 8) + 64);
  MEMORY[0x28223BE20](v60);
  v8 = &v54 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800679B0, &qword_266213550);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v9 - 8);
  v59 = &v54 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v54 - v14;
  MEMORY[0x28223BE20](v13);
  v17 = &v54 - v16;
  v18 = sub_266212B20();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  v22 = &v54 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = a1;
  v23 = sub_266212C30();
  v61 = v15;
  v62 = v17;
  if (v24)
  {
    v25 = v23;
    v26 = v24;

    v27 = HIBYTE(v26) & 0xF;
    if ((v26 & 0x2000000000000000) == 0)
    {
      v27 = v25 & 0xFFFFFFFFFFFFLL;
    }

    v28 = v27 == 0;
  }

  else
  {
    v28 = 1;
  }

  result = sub_266212AC0();
  v30 = result;
  v67 = *(result + 16);
  if (!v67)
  {

    v42 = v62;
    if (!v28)
    {
LABEL_23:
      v43 = 0;
      goto LABEL_27;
    }

    return 0;
  }

  v55 = v28;
  v56 = v3;
  v57 = v8;
  v58 = v2;
  v31 = 0;
  v32 = result + ((*(v19 + 80) + 32) & ~*(v19 + 80));
  v65 = result;
  v66 = v19 + 16;
  v64 = "media_controls";
  v33 = (v19 + 8);
  while (1)
  {
    if (v31 >= *(v30 + 16))
    {
      __break(1u);
      return result;
    }

    (*(v19 + 16))(v22, v32 + *(v19 + 72) * v31, v18);
    v34 = sub_266212B10();
    if (!v35)
    {
LABEL_8:
      result = (*v33)(v22, v18);
      goto LABEL_9;
    }

    if (v34 == 0x5474736163646F70 && v35 == 0xEC000000656C7469)
    {
    }

    else
    {
      v36 = sub_266213140();

      if ((v36 & 1) == 0)
      {
        goto LABEL_8;
      }
    }

    sub_266212AD0();
    v37 = sub_266212FB0();
    v39 = v38;

    if (v37 == sub_266212FB0() && v39 == v40)
    {
      break;
    }

    v41 = sub_266213140();

    result = (*v33)(v22, v18);
    v30 = v65;
    if (v41)
    {
      goto LABEL_25;
    }

LABEL_9:
    if (v67 == ++v31)
    {

      v8 = v57;
      v2 = v58;
      v3 = v56;
      v42 = v62;
      if (v55)
      {
        return 0;
      }

      goto LABEL_23;
    }
  }

  (*v33)(v22, v18);
LABEL_25:

  v8 = v57;
  v2 = v58;
  v3 = v56;
  v42 = v62;
  if (v55)
  {
    return 0;
  }

  v43 = 1;
LABEL_27:
  v44 = sub_266212C00();
  LODWORD(v67) = v43;
  if (v44)
  {
    sub_266212D50();
  }

  else
  {
    (*(v3 + 56))(v42, 1, 1, v2);
  }

  v45 = v61;
  (*(v3 + 104))(v61, *MEMORY[0x277D5EE08], v2);
  (*(v3 + 56))(v45, 0, 1, v2);
  v46 = *(v60 + 48);
  sub_2662045F8(v42, v8, &qword_2800679B0, &qword_266213550);
  sub_2662045F8(v45, &v8[v46], &qword_2800679B0, &qword_266213550);
  v47 = *(v3 + 48);
  if (v47(v8, 1, v2) == 1)
  {
    sub_2661EFBB8(v45, &qword_2800679B0, &qword_266213550);
    sub_2661EFBB8(v42, &qword_2800679B0, &qword_266213550);
    if (v47(&v8[v46], 1, v2) == 1)
    {
      sub_2661EFBB8(v8, &qword_2800679B0, &qword_266213550);
      return v67;
    }

LABEL_35:
    sub_2661EFBB8(v8, &qword_2800679E8, &qword_2662139C0);
    return 0;
  }

  v48 = v59;
  sub_2662045F8(v8, v59, &qword_2800679B0, &qword_266213550);
  if (v47(&v8[v46], 1, v2) == 1)
  {
    sub_2661EFBB8(v61, &qword_2800679B0, &qword_266213550);
    sub_2661EFBB8(v42, &qword_2800679B0, &qword_266213550);
    (*(v3 + 8))(v48, v2);
    goto LABEL_35;
  }

  v49 = &v8[v46];
  v50 = v54;
  (*(v3 + 32))(v54, v49, v2);
  sub_2662045A0();
  v51 = v48;
  v52 = sub_266212F90();
  v53 = *(v3 + 8);
  v53(v50, v2);
  sub_2661EFBB8(v61, &qword_2800679B0, &qword_266213550);
  sub_2661EFBB8(v42, &qword_2800679B0, &qword_266213550);
  v53(v51, v2);
  sub_2661EFBB8(v8, &qword_2800679B0, &qword_266213550);
  result = v67;
  if ((v52 & 1) == 0)
  {
    return 0;
  }

  return result;
}

uint64_t sub_26620312C(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

uint64_t sub_266203140(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

uint64_t sub_266203154(uint64_t a1, int a2)
{
  v48 = a2;
  v3 = sub_266212B20();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v3);
  v47 = &v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v9 = &v44 - v8;
  v10 = sub_266212D60();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v49 = &v44 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800679E8, &qword_2662139C0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14);
  v17 = &v44 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800679B0, &qword_266213550);
  v19 = *(*(v18 - 8) + 64);
  v20 = MEMORY[0x28223BE20](v18 - 8);
  v52 = &v44 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v20);
  v24 = &v44 - v23;
  MEMORY[0x28223BE20](v22);
  v26 = &v44 - v25;
  v50 = a1;
  result = sub_2661F16A0();
  if (result)
  {
    v51 = result;
    v28 = sub_266212C00();
    v45 = v4;
    v46 = v3;
    v44 = v9;
    if (v28)
    {
      sub_266212D50();
    }

    else
    {
      (*(v11 + 56))(v26, 1, 1, v10);
    }

    (*(v11 + 104))(v24, *MEMORY[0x277D5ED80], v10);
    (*(v11 + 56))(v24, 0, 1, v10);
    v29 = *(v14 + 48);
    sub_2662045F8(v26, v17, &qword_2800679B0, &qword_266213550);
    sub_2662045F8(v24, &v17[v29], &qword_2800679B0, &qword_266213550);
    v30 = *(v11 + 48);
    if (v30(v17, 1, v10) == 1)
    {
      sub_2661EFBB8(v24, &qword_2800679B0, &qword_266213550);
      sub_2661EFBB8(v26, &qword_2800679B0, &qword_266213550);
      if (v30(&v17[v29], 1, v10) == 1)
      {
        sub_2661EFBB8(v17, &qword_2800679B0, &qword_266213550);
        goto LABEL_12;
      }
    }

    else
    {
      v31 = v52;
      sub_2662045F8(v17, v52, &qword_2800679B0, &qword_266213550);
      if (v30(&v17[v29], 1, v10) != 1)
      {
        v32 = v49;
        (*(v11 + 32))(v49, &v17[v29], v10);
        sub_2662045A0();
        v33 = v31;
        v34 = sub_266212F90();
        v35 = *(v11 + 8);
        v35(v32, v10);
        sub_2661EFBB8(v24, &qword_2800679B0, &qword_266213550);
        sub_2661EFBB8(v26, &qword_2800679B0, &qword_266213550);
        v35(v33, v10);
        sub_2661EFBB8(v17, &qword_2800679B0, &qword_266213550);
        if (v34)
        {
LABEL_12:
          if (sub_2661F1E24())
          {
            v53 = v48;
            v36 = sub_266212FB0();
            v38 = UsoEntity_common_MediaItem.identifiers(forNamespace:appBundleId:)(&v53, v36, v37);

            if (*(v38 + 16))
            {
              v40 = v45;
              v39 = v46;
              v41 = v47;
              (*(v45 + 16))(v47, v38 + ((*(v40 + 80) + 32) & ~*(v40 + 80)), v46);

              v42 = v44;
              (*(v40 + 32))(v44, v41, v39);
              v43 = sub_266212B00();

              (*(v40 + 8))(v42, v39);
              return v43;
            }
          }
        }

LABEL_16:

        return 0;
      }

      sub_2661EFBB8(v24, &qword_2800679B0, &qword_266213550);
      sub_2661EFBB8(v26, &qword_2800679B0, &qword_266213550);
      (*(v11 + 8))(v31, v10);
    }

    sub_2661EFBB8(v17, &qword_2800679E8, &qword_2662139C0);
    goto LABEL_16;
  }

  return result;
}

char *sub_26620378C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = sub_2661F1EF8();
  v4 = sub_26620A330(v3, MEMORY[0x277D84F90], a2, 0);

  if (v4 >> 62)
  {
LABEL_20:
    v5 = sub_266213110();
  }

  else
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v6 = 0;
  v7 = MEMORY[0x277D84F90];
  while (v5 != v6)
  {
    if ((v4 & 0xC000000000000001) != 0)
    {
      MEMORY[0x26677E9B0](v6, v4);
      v9 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        goto LABEL_18;
      }
    }

    else
    {
      if (v6 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_19;
      }

      v8 = *(v4 + 8 * v6 + 32);

      v9 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
LABEL_18:
        __break(1u);
LABEL_19:
        __break(1u);
        goto LABEL_20;
      }
    }

    v10 = sub_266212C30();
    v12 = v11;

    ++v6;
    if (v12)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v7 = sub_266209808(0, *(v7 + 2) + 1, 1, v7);
      }

      v14 = *(v7 + 2);
      v13 = *(v7 + 3);
      if (v14 >= v13 >> 1)
      {
        v7 = sub_266209808((v13 > 1), v14 + 1, 1, v7);
      }

      *(v7 + 2) = v14 + 1;
      v15 = &v7[16 * v14];
      *(v15 + 4) = v10;
      *(v15 + 5) = v12;
      v6 = v9;
    }
  }

  return v7;
}

uint64_t sub_26620392C(uint64_t result)
{
  if (result != 1)
  {
  }

  return result;
}

unint64_t sub_266203940()
{
  result = qword_2800679B8;
  if (!qword_2800679B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800679B8);
  }

  return result;
}

unint64_t sub_266203998()
{
  result = qword_2800679C0;
  if (!qword_2800679C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800679C0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AudioUsoIntent.UsoNamespace(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xE5)
  {
    goto LABEL_17;
  }

  if (a2 + 27 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 27) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 27;
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

      return (*a1 | (v4 << 8)) - 27;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 27;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x1C;
  v8 = v6 - 28;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for AudioUsoIntent.UsoNamespace(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 27 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 27) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xE5)
  {
    v4 = 0;
  }

  if (a2 > 0xE4)
  {
    v5 = ((a2 - 229) >> 8) + 1;
    *result = a2 + 27;
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
    *result = a2 + 27;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AudioUsoIntent.IterationOptions(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for AudioUsoIntent.IterationOptions(_WORD *result, int a2, int a3)
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

uint64_t sub_2662044C4(uint64_t result)
{
  if (result != 1)
  {
  }

  return result;
}

_BYTE *sub_2662044D4@<X0>(_BYTE *result@<X0>, BOOL *a2@<X8>)
{
  v3 = *result;
  v4 = v3 > 0x20;
  v5 = (1 << v3) & 0x100003E01;
  if (v4 || v5 == 0)
  {
    v8 = *(v2 + 16);
    result = _swift_stdlib_strtod_clocale();
    if (result)
    {
      v9 = *result == 0;
    }

    else
    {
      v9 = 0;
    }

    *a2 = v9;
  }

  else
  {
    *a2 = 0;
  }

  return result;
}

uint64_t __swift_destroy_boxed_opaque_existential_0(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

unint64_t sub_2662045A0()
{
  result = qword_2800679F0;
  if (!qword_2800679F0)
  {
    sub_266212D60();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800679F0);
  }

  return result;
}

uint64_t sub_2662045F8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_266204670()
{
  sub_2662046D4();
  result = sub_266213050();
  qword_280069480 = result;
  return result;
}

unint64_t sub_2662046D4()
{
  result = qword_280067A10;
  if (!qword_280067A10)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280067A10);
  }

  return result;
}

Swift::Bool __swiftcall UsoEntity_common_MediaItem.hasNonEmptyName()()
{
  v0 = sub_266212C30();
  if (!v1)
  {
    return 0;
  }

  v2 = v0;
  v3 = v1;

  v4 = HIBYTE(v3) & 0xF;
  if ((v3 & 0x2000000000000000) == 0)
  {
    v4 = v2 & 0xFFFFFFFFFFFFLL;
  }

  return v4 != 0;
}

unint64_t Array<A>.findAll(options:with:)(uint64_t a1, uint64_t (*a2)(void), uint64_t a3, unint64_t a4)
{

  v8 = sub_26620A330(a4, a1, a2, a3);

  return v8;
}

Swift::Bool __swiftcall UsoEntity_common_MediaItem.isResolvedReference()()
{
  v1 = sub_266212B20();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = MEMORY[0x28223BE20](v1);
  v29 = v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v7 = v28 - v6;
  v8 = sub_266212AC0();
  v9 = v8;
  if (*(v8 + 16))
  {
    v10 = *(v8 + 16);
    v28[1] = v0;
    v11 = 0;
    v32 = v8 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
    v30 = 0x8000000266214D80;
    v31 = 0x80000002662149A0;
    v12 = (v2 + 8);
    while (1)
    {
      if (v11 >= *(v9 + 16))
      {
        __break(1u);
        goto LABEL_35;
      }

      (*(v2 + 16))(v7, v32 + *(v2 + 72) * v11, v1);
      v13 = sub_266212B10();
      if (!v14)
      {
        break;
      }

      if (v13 == 0xD000000000000019 && v14 == v31)
      {
      }

      else
      {
        v15 = sub_266213140();

        if ((v15 & 1) == 0)
        {
          break;
        }
      }

      if (sub_266212AD0() == 0xD00000000000001CLL && v30 == v16)
      {

        (*v12)(v7, v1);
LABEL_18:

        LODWORD(v31) = 1;
        goto LABEL_19;
      }

      v17 = sub_266213140();

      LOBYTE(v8) = (*v12)(v7, v1);
      if (v17)
      {
        goto LABEL_18;
      }

LABEL_4:
      if (v10 == ++v11)
      {
        goto LABEL_15;
      }
    }

    LOBYTE(v8) = (*v12)(v7, v1);
    goto LABEL_4;
  }

LABEL_15:

  LODWORD(v31) = 0;
LABEL_19:
  v8 = sub_266212AC0();
  v18 = v8;
  v19 = *(v8 + 16);
  v20 = v29;
  if (v19)
  {
    v21 = 0;
    v22 = v8 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
    v32 = 0x8000000266214920;
    v23 = (v2 + 8);
    while (v21 < *(v18 + 16))
    {
      (*(v2 + 16))(v20, v22 + *(v2 + 72) * v21, v1);
      v24 = sub_266212B10();
      if (v25)
      {
        if (v24 == 0xD000000000000014 && v25 == v32)
        {

          (*v23)(v29, v1);
LABEL_31:

          if ((v31 & 1) == 0)
          {
            goto LABEL_33;
          }

          LOBYTE(v8) = 1;
          return v8;
        }

        v26 = sub_266213140();

        v20 = v29;
        LOBYTE(v8) = (*v23)(v29, v1);
        if (v26)
        {
          goto LABEL_31;
        }
      }

      else
      {
        LOBYTE(v8) = (*v23)(v20, v1);
      }

      if (v19 == ++v21)
      {
        goto LABEL_29;
      }
    }

LABEL_35:
    __break(1u);
  }

  else
  {
LABEL_29:

LABEL_33:
    LOBYTE(v8) = 0;
  }

  return v8;
}

uint64_t Array<A>.findFirst(options:with:)(uint64_t a1, uint64_t (*a2)(uint64_t), uint64_t a3, unint64_t a4)
{
  v8 = a4 & 0xFFFFFFFFFFFFFF8;
  if (a4 >> 62)
  {
LABEL_16:
    v9 = sub_266213110();
  }

  else
  {
    v9 = *((a4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  for (i = 0; v9 != i; ++i)
  {
    if ((a4 & 0xC000000000000001) != 0)
    {
      MEMORY[0x26677E9B0](i, a4);
      if (__OFADD__(i, 1))
      {
LABEL_12:
        __break(1u);
        return 0;
      }
    }

    else
    {
      if (i >= *(v8 + 16))
      {
        __break(1u);
        goto LABEL_16;
      }

      v11 = *(a4 + 8 * i + 32);

      if (__OFADD__(i, 1))
      {
        goto LABEL_12;
      }
    }

    v12 = UsoEntity_common_MediaItem.findFirst(options:with:)(a1, a2, a3);

    if (v12)
    {
      return v12;
    }
  }

  return 0;
}

Swift::Bool __swiftcall UsoEntity_common_MediaItem.isFromArtist()()
{
  v1 = sub_266212D60();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v44 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800679E8, &qword_2662139C0);
  v6 = *(*(v51 - 8) + 64);
  MEMORY[0x28223BE20](v51);
  v8 = &v44 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800679B0, &qword_266213550);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v9 - 8);
  v13 = &v44 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v11);
  v53 = &v44 - v15;
  MEMORY[0x28223BE20](v14);
  v52 = &v44 - v16;
  v17 = sub_266212B20();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  v21 = &v44 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = v0;
  v22 = sub_266212AC0();
  v23 = v22;
  v55 = *(v22 + 16);
  if (v55)
  {
    v45 = v5;
    v46 = v13;
    v47 = v2;
    v48 = v8;
    v49 = v1;
    v24 = 0;
    v25 = v22 + ((*(v18 + 80) + 32) & ~*(v18 + 80));
    v54 = 0x8000000266214900;
    v26 = (v18 + 8);
    while (1)
    {
      if (v24 >= *(v23 + 16))
      {
        __break(1u);
        return v22;
      }

      (*(v18 + 16))(v21, v25 + *(v18 + 72) * v24, v17);
      v27 = sub_266212B10();
      if (!v28)
      {
        break;
      }

      if (v27 == 0xD000000000000015 && v28 == v54)
      {
      }

      else
      {
        v29 = sub_266213140();

        if ((v29 & 1) == 0)
        {
          break;
        }
      }

      if (sub_266212B00() == 0x697472416D6F7266 && v30 == 0xEA00000000007473)
      {

        (*v26)(v21, v17);
LABEL_19:

        if (sub_266212C00())
        {
          v33 = v52;
          sub_266212D50();

          v35 = v48;
          v34 = v49;
          v36 = v47;
        }

        else
        {
          v36 = v47;
          v33 = v52;
          v34 = v49;
          (*(v47 + 56))(v52, 1, 1, v49);
          v35 = v48;
        }

        v37 = v53;
        (*(v36 + 104))(v53, *MEMORY[0x277D5EDC0], v34);
        (*(v36 + 56))(v37, 0, 1, v34);
        v38 = *(v51 + 48);
        sub_2662045F8(v33, v35, &qword_2800679B0, &qword_266213550);
        sub_2662045F8(v37, v35 + v38, &qword_2800679B0, &qword_266213550);
        v39 = *(v36 + 48);
        if (v39(v35, 1, v34) == 1)
        {
          sub_2661EFBB8(v37, &qword_2800679B0, &qword_266213550);
          sub_2661EFBB8(v33, &qword_2800679B0, &qword_266213550);
          if (v39(v35 + v38, 1, v34) == 1)
          {
            sub_2661EFBB8(v35, &qword_2800679B0, &qword_266213550);
            v32 = 1;
            goto LABEL_17;
          }

          goto LABEL_27;
        }

        v40 = v46;
        sub_2662045F8(v35, v46, &qword_2800679B0, &qword_266213550);
        if (v39(v35 + v38, 1, v34) == 1)
        {
          sub_2661EFBB8(v53, &qword_2800679B0, &qword_266213550);
          sub_2661EFBB8(v33, &qword_2800679B0, &qword_266213550);
          (*(v36 + 8))(v40, v34);
LABEL_27:
          sub_2661EFBB8(v35, &qword_2800679E8, &qword_2662139C0);
          goto LABEL_16;
        }

        v41 = v45;
        (*(v36 + 32))(v45, v35 + v38, v34);
        sub_26620A684(&qword_2800679F0, MEMORY[0x277D5EE30]);
        v32 = sub_266212F90();
        v42 = *(v36 + 8);
        v42(v41, v34);
        sub_2661EFBB8(v53, &qword_2800679B0, &qword_266213550);
        sub_2661EFBB8(v33, &qword_2800679B0, &qword_266213550);
        v42(v40, v34);
        sub_2661EFBB8(v35, &qword_2800679B0, &qword_266213550);
        goto LABEL_17;
      }

      v31 = sub_266213140();

      LOBYTE(v22) = (*v26)(v21, v17);
      if (v31)
      {
        goto LABEL_19;
      }

LABEL_4:
      if (v55 == ++v24)
      {
        goto LABEL_15;
      }
    }

    LOBYTE(v22) = (*v26)(v21, v17);
    goto LABEL_4;
  }

LABEL_15:

LABEL_16:
  v32 = 0;
LABEL_17:
  LOBYTE(v22) = v32 & 1;
  return v22;
}

Swift::Bool __swiftcall UsoEntity_common_MediaItem.isFromSong()()
{
  v1 = sub_266212D60();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v44 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800679E8, &qword_2662139C0);
  v6 = *(*(v51 - 8) + 64);
  MEMORY[0x28223BE20](v51);
  v8 = &v44 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800679B0, &qword_266213550);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v9 - 8);
  v13 = &v44 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v11);
  v53 = &v44 - v15;
  MEMORY[0x28223BE20](v14);
  v52 = &v44 - v16;
  v17 = sub_266212B20();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  v21 = &v44 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = v0;
  v22 = sub_266212AC0();
  v23 = v22;
  v55 = *(v22 + 16);
  if (v55)
  {
    v45 = v5;
    v46 = v13;
    v47 = v2;
    v48 = v8;
    v49 = v1;
    v24 = 0;
    v25 = v22 + ((*(v18 + 80) + 32) & ~*(v18 + 80));
    v54 = 0x8000000266214900;
    v26 = (v18 + 8);
    while (1)
    {
      if (v24 >= *(v23 + 16))
      {
        __break(1u);
        return v22;
      }

      (*(v18 + 16))(v21, v25 + *(v18 + 72) * v24, v17);
      v27 = sub_266212B10();
      if (!v28)
      {
        break;
      }

      if (v27 == 0xD000000000000015 && v28 == v54)
      {
      }

      else
      {
        v29 = sub_266213140();

        if ((v29 & 1) == 0)
        {
          break;
        }
      }

      if (sub_266212B00() == 0x676E6F536D6F7266 && v30 == 0xE800000000000000)
      {

        (*v26)(v21, v17);
LABEL_19:

        if (sub_266212C00())
        {
          v33 = v52;
          sub_266212D50();

          v35 = v48;
          v34 = v49;
          v36 = v47;
        }

        else
        {
          v36 = v47;
          v33 = v52;
          v34 = v49;
          (*(v47 + 56))(v52, 1, 1, v49);
          v35 = v48;
        }

        v37 = v53;
        (*(v36 + 104))(v53, *MEMORY[0x277D5ED90], v34);
        (*(v36 + 56))(v37, 0, 1, v34);
        v38 = *(v51 + 48);
        sub_2662045F8(v33, v35, &qword_2800679B0, &qword_266213550);
        sub_2662045F8(v37, v35 + v38, &qword_2800679B0, &qword_266213550);
        v39 = *(v36 + 48);
        if (v39(v35, 1, v34) == 1)
        {
          sub_2661EFBB8(v37, &qword_2800679B0, &qword_266213550);
          sub_2661EFBB8(v33, &qword_2800679B0, &qword_266213550);
          if (v39(v35 + v38, 1, v34) == 1)
          {
            sub_2661EFBB8(v35, &qword_2800679B0, &qword_266213550);
            v32 = 1;
            goto LABEL_17;
          }

          goto LABEL_27;
        }

        v40 = v46;
        sub_2662045F8(v35, v46, &qword_2800679B0, &qword_266213550);
        if (v39(v35 + v38, 1, v34) == 1)
        {
          sub_2661EFBB8(v53, &qword_2800679B0, &qword_266213550);
          sub_2661EFBB8(v33, &qword_2800679B0, &qword_266213550);
          (*(v36 + 8))(v40, v34);
LABEL_27:
          sub_2661EFBB8(v35, &qword_2800679E8, &qword_2662139C0);
          goto LABEL_16;
        }

        v41 = v45;
        (*(v36 + 32))(v45, v35 + v38, v34);
        sub_26620A684(&qword_2800679F0, MEMORY[0x277D5EE30]);
        v32 = sub_266212F90();
        v42 = *(v36 + 8);
        v42(v41, v34);
        sub_2661EFBB8(v53, &qword_2800679B0, &qword_266213550);
        sub_2661EFBB8(v33, &qword_2800679B0, &qword_266213550);
        v42(v40, v34);
        sub_2661EFBB8(v35, &qword_2800679B0, &qword_266213550);
        goto LABEL_17;
      }

      v31 = sub_266213140();

      LOBYTE(v22) = (*v26)(v21, v17);
      if (v31)
      {
        goto LABEL_19;
      }

LABEL_4:
      if (v55 == ++v24)
      {
        goto LABEL_15;
      }
    }

    LOBYTE(v22) = (*v26)(v21, v17);
    goto LABEL_4;
  }

LABEL_15:

LABEL_16:
  v32 = 0;
LABEL_17:
  LOBYTE(v22) = v32 & 1;
  return v22;
}

Swift::Bool __swiftcall UsoEntity_common_MediaItem.isFromAlbum()()
{
  v1 = sub_266212D60();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v44 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800679E8, &qword_2662139C0);
  v6 = *(*(v51 - 8) + 64);
  MEMORY[0x28223BE20](v51);
  v8 = &v44 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800679B0, &qword_266213550);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v9 - 8);
  v13 = &v44 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v11);
  v53 = &v44 - v15;
  MEMORY[0x28223BE20](v14);
  v52 = &v44 - v16;
  v17 = sub_266212B20();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  v21 = &v44 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = v0;
  v22 = sub_266212AC0();
  v23 = v22;
  v55 = *(v22 + 16);
  if (v55)
  {
    v45 = v5;
    v46 = v13;
    v47 = v2;
    v48 = v8;
    v49 = v1;
    v24 = 0;
    v25 = v22 + ((*(v18 + 80) + 32) & ~*(v18 + 80));
    v54 = 0x8000000266214900;
    v26 = (v18 + 8);
    while (1)
    {
      if (v24 >= *(v23 + 16))
      {
        __break(1u);
        return v22;
      }

      (*(v18 + 16))(v21, v25 + *(v18 + 72) * v24, v17);
      v27 = sub_266212B10();
      if (!v28)
      {
        break;
      }

      if (v27 == 0xD000000000000015 && v28 == v54)
      {
      }

      else
      {
        v29 = sub_266213140();

        if ((v29 & 1) == 0)
        {
          break;
        }
      }

      if (sub_266212B00() == 0x75626C416D6F7266 && v30 == 0xE90000000000006DLL)
      {

        (*v26)(v21, v17);
LABEL_19:

        if (sub_266212C00())
        {
          v33 = v52;
          sub_266212D50();

          v35 = v48;
          v34 = v49;
          v36 = v47;
        }

        else
        {
          v36 = v47;
          v33 = v52;
          v34 = v49;
          (*(v47 + 56))(v52, 1, 1, v49);
          v35 = v48;
        }

        v37 = v53;
        (*(v36 + 104))(v53, *MEMORY[0x277D5ED98], v34);
        (*(v36 + 56))(v37, 0, 1, v34);
        v38 = *(v51 + 48);
        sub_2662045F8(v33, v35, &qword_2800679B0, &qword_266213550);
        sub_2662045F8(v37, v35 + v38, &qword_2800679B0, &qword_266213550);
        v39 = *(v36 + 48);
        if (v39(v35, 1, v34) == 1)
        {
          sub_2661EFBB8(v37, &qword_2800679B0, &qword_266213550);
          sub_2661EFBB8(v33, &qword_2800679B0, &qword_266213550);
          if (v39(v35 + v38, 1, v34) == 1)
          {
            sub_2661EFBB8(v35, &qword_2800679B0, &qword_266213550);
            v32 = 1;
            goto LABEL_17;
          }

          goto LABEL_27;
        }

        v40 = v46;
        sub_2662045F8(v35, v46, &qword_2800679B0, &qword_266213550);
        if (v39(v35 + v38, 1, v34) == 1)
        {
          sub_2661EFBB8(v53, &qword_2800679B0, &qword_266213550);
          sub_2661EFBB8(v33, &qword_2800679B0, &qword_266213550);
          (*(v36 + 8))(v40, v34);
LABEL_27:
          sub_2661EFBB8(v35, &qword_2800679E8, &qword_2662139C0);
          goto LABEL_16;
        }

        v41 = v45;
        (*(v36 + 32))(v45, v35 + v38, v34);
        sub_26620A684(&qword_2800679F0, MEMORY[0x277D5EE30]);
        v32 = sub_266212F90();
        v42 = *(v36 + 8);
        v42(v41, v34);
        sub_2661EFBB8(v53, &qword_2800679B0, &qword_266213550);
        sub_2661EFBB8(v33, &qword_2800679B0, &qword_266213550);
        v42(v40, v34);
        sub_2661EFBB8(v35, &qword_2800679B0, &qword_266213550);
        goto LABEL_17;
      }

      v31 = sub_266213140();

      LOBYTE(v22) = (*v26)(v21, v17);
      if (v31)
      {
        goto LABEL_19;
      }

LABEL_4:
      if (v55 == ++v24)
      {
        goto LABEL_15;
      }
    }

    LOBYTE(v22) = (*v26)(v21, v17);
    goto LABEL_4;
  }

LABEL_15:

LABEL_16:
  v32 = 0;
LABEL_17:
  LOBYTE(v22) = v32 & 1;
  return v22;
}

Swift::Bool __swiftcall UsoEntity_common_MediaItem.isRecommended()()
{
  v0 = sub_266212DA0();
  v1 = *(v0 - 8);
  v2 = *(v1 + 8);
  MEMORY[0x28223BE20](v0);
  v33 = &v31 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280067A18, &qword_2662139E8);
  v4 = *(*(v44 - 8) + 64);
  MEMORY[0x28223BE20](v44);
  v6 = &v31 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800679D8, &qword_2662139B0);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v7 - 8);
  v11 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v31 - v13;
  MEMORY[0x28223BE20](v12);
  v47 = &v31 - v15;
  if (!sub_266212B80())
  {
    return 0;
  }

  v16 = sub_266212E50();

  if (!v16)
  {
    return 0;
  }

  v17 = v16 & 0xFFFFFFFFFFFFFF8;
  if (v16 >> 62)
  {
    goto LABEL_27;
  }

  v18 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v18)
  {
    while (1)
    {
      v35 = v11;
      v11 = 0;
      v43 = v16 & 0xC000000000000001;
      v19 = (v1 + 56);
      v41 = *MEMORY[0x277D5EE78];
      v39 = (v1 + 48);
      v40 = (v1 + 104);
      v32 = (v1 + 32);
      v34 = (v1 + 8);
      v1 = &qword_2662139B0;
      v42 = v16;
      v36 = v18;
      v37 = v17;
      v45 = v14;
      v38 = v19;
      while (v43)
      {
        MEMORY[0x26677E9B0](v11, v16);
        v22 = v11 + 1;
        if (__OFADD__(v11, 1))
        {
LABEL_22:
          __break(1u);
          return 0;
        }

LABEL_12:
        v46 = v22;
        sub_266212B30();
        if (v48)
        {
          sub_266212D90();
        }

        else
        {
          (*v19)(v47, 1, 1, v0);
        }

        (*v40)(v14, v41, v0);
        (*v19)(v14, 0, 1, v0);
        v23 = *(v44 + 48);
        sub_2662045F8(v47, v6, &qword_2800679D8, &qword_2662139B0);
        sub_2662045F8(v14, &v6[v23], &qword_2800679D8, &qword_2662139B0);
        v24 = *v39;
        if ((*v39)(v6, 1, v0) == 1)
        {

          sub_2661EFBB8(v14, &qword_2800679D8, &qword_2662139B0);
          sub_2661EFBB8(v47, &qword_2800679D8, &qword_2662139B0);
          v20 = v24(&v6[v23], 1, v0);
          v16 = v42;
          v19 = v38;
          if (v20 == 1)
          {
            sub_2661EFBB8(v6, &qword_2800679D8, &qword_2662139B0);
LABEL_25:
            v29 = 1;
            goto LABEL_29;
          }

          goto LABEL_7;
        }

        v25 = v35;
        sub_2662045F8(v6, v35, &qword_2800679D8, &qword_2662139B0);
        if (v24(&v6[v23], 1, v0) == 1)
        {

          sub_2661EFBB8(v45, &qword_2800679D8, &qword_2662139B0);
          sub_2661EFBB8(v47, &qword_2800679D8, &qword_2662139B0);
          (*v34)(v25, v0);
          v16 = v42;
          v19 = v38;
LABEL_7:
          sub_2661EFBB8(v6, &qword_280067A18, &qword_2662139E8);
          goto LABEL_8;
        }

        v26 = v33;
        (*v32)(v33, &v6[v23], v0);
        sub_26620A684(&qword_280067A20, MEMORY[0x277D5EEB8]);
        v27 = sub_266212F90();

        v28 = *v34;
        (*v34)(v26, v0);
        sub_2661EFBB8(v45, &qword_2800679D8, &qword_2662139B0);
        sub_2661EFBB8(v47, &qword_2800679D8, &qword_2662139B0);
        v28(v25, v0);
        sub_2661EFBB8(v6, &qword_2800679D8, &qword_2662139B0);
        v16 = v42;
        v19 = v38;
        if (v27)
        {
          goto LABEL_25;
        }

LABEL_8:
        ++v11;
        v17 = v37;
        v14 = v45;
        if (v46 == v36)
        {
          goto LABEL_28;
        }
      }

      if (v11 < *(v17 + 16))
      {
        break;
      }

      __break(1u);
LABEL_27:
      v18 = sub_266213110();
      if (!v18)
      {
        goto LABEL_28;
      }
    }

    v21 = *(v16 + 8 * v11 + 32);

    v22 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      goto LABEL_22;
    }

    goto LABEL_12;
  }

LABEL_28:
  v29 = 0;
LABEL_29:

  return v29;
}

uint64_t sub_26620672C(unsigned int *a1)
{
  v2 = sub_266212E40();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v27 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280067A28, &qword_2662139F0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v26 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280067A30, &qword_2662139F8);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v26 - v16;
  MEMORY[0x28223BE20](v15);
  v19 = &v26 - v18;
  if (sub_266212B80())
  {
    sub_266212E30();
  }

  else
  {
    (*(v3 + 56))(v19, 1, 1, v2);
  }

  (*(v3 + 104))(v17, *a1, v2);
  (*(v3 + 56))(v17, 0, 1, v2);
  v20 = *(v6 + 48);
  sub_2662045F8(v19, v9, &qword_280067A30, &qword_2662139F8);
  sub_2662045F8(v17, &v9[v20], &qword_280067A30, &qword_2662139F8);
  v21 = *(v3 + 48);
  if (v21(v9, 1, v2) != 1)
  {
    sub_2662045F8(v9, v14, &qword_280067A30, &qword_2662139F8);
    if (v21(&v9[v20], 1, v2) != 1)
    {
      v23 = v27;
      (*(v3 + 32))(v27, &v9[v20], v2);
      sub_26620A684(&qword_280067A38, MEMORY[0x277D5F058]);
      v22 = sub_266212F90();
      v24 = *(v3 + 8);
      v24(v23, v2);
      sub_2661EFBB8(v17, &qword_280067A30, &qword_2662139F8);
      sub_2661EFBB8(v19, &qword_280067A30, &qword_2662139F8);
      v24(v14, v2);
      sub_2661EFBB8(v9, &qword_280067A30, &qword_2662139F8);
      return v22 & 1;
    }

    sub_2661EFBB8(v17, &qword_280067A30, &qword_2662139F8);
    sub_2661EFBB8(v19, &qword_280067A30, &qword_2662139F8);
    (*(v3 + 8))(v14, v2);
    goto LABEL_9;
  }

  sub_2661EFBB8(v17, &qword_280067A30, &qword_2662139F8);
  sub_2661EFBB8(v19, &qword_280067A30, &qword_2662139F8);
  if (v21(&v9[v20], 1, v2) != 1)
  {
LABEL_9:
    sub_2661EFBB8(v9, &qword_280067A28, &qword_2662139F0);
    v22 = 0;
    return v22 & 1;
  }

  sub_2661EFBB8(v9, &qword_280067A30, &qword_2662139F8);
  v22 = 1;
  return v22 & 1;
}

Swift::Bool __swiftcall UsoEntity_common_MediaItem.isAddToUnspecifiedPlaylist()()
{
  v1 = sub_266212D60();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v44 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800679E8, &qword_2662139C0);
  v6 = *(*(v50 - 8) + 64);
  MEMORY[0x28223BE20](v50);
  v8 = &v44 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800679B0, &qword_266213550);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v9 - 8);
  v13 = &v44 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v11);
  v52 = &v44 - v15;
  MEMORY[0x28223BE20](v14);
  v51 = &v44 - v16;
  v17 = sub_266212B20();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  v21 = &v44 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = v0;
  v22 = sub_266212AC0();
  v23 = v22;
  v55 = *(v22 + 16);
  if (v55)
  {
    v44 = v5;
    v45 = v13;
    v46 = v2;
    v47 = v8;
    v48 = v1;
    v24 = 0;
    v25 = v22 + ((*(v18 + 80) + 32) & ~*(v18 + 80));
    v53 = 0x8000000266214B40;
    v54 = 0x8000000266214900;
    v26 = (v18 + 8);
    while (1)
    {
      if (v24 >= *(v23 + 16))
      {
        __break(1u);
        return v22;
      }

      (*(v18 + 16))(v21, v25 + *(v18 + 72) * v24, v17);
      v27 = sub_266212B10();
      if (!v28)
      {
        break;
      }

      if (v27 == 0xD000000000000015 && v28 == v54)
      {
      }

      else
      {
        v29 = sub_266213140();

        if ((v29 & 1) == 0)
        {
          break;
        }
      }

      if (sub_266212B00() == 0xD000000000000018 && v53 == v30)
      {

        (*v26)(v21, v17);
LABEL_19:

        if (sub_266212C00())
        {
          v33 = v51;
          sub_266212D50();

          v35 = v47;
          v34 = v48;
          v36 = v46;
        }

        else
        {
          v36 = v46;
          v33 = v51;
          v34 = v48;
          (*(v46 + 56))(v51, 1, 1, v48);
          v35 = v47;
        }

        v37 = v52;
        (*(v36 + 104))(v52, *MEMORY[0x277D5EE18], v34);
        (*(v36 + 56))(v37, 0, 1, v34);
        v38 = *(v50 + 48);
        sub_2662045F8(v33, v35, &qword_2800679B0, &qword_266213550);
        sub_2662045F8(v37, v35 + v38, &qword_2800679B0, &qword_266213550);
        v39 = *(v36 + 48);
        if (v39(v35, 1, v34) == 1)
        {
          sub_2661EFBB8(v37, &qword_2800679B0, &qword_266213550);
          sub_2661EFBB8(v33, &qword_2800679B0, &qword_266213550);
          if (v39(v35 + v38, 1, v34) == 1)
          {
            sub_2661EFBB8(v35, &qword_2800679B0, &qword_266213550);
            v32 = 1;
            goto LABEL_17;
          }

          goto LABEL_27;
        }

        v40 = v45;
        sub_2662045F8(v35, v45, &qword_2800679B0, &qword_266213550);
        if (v39(v35 + v38, 1, v34) == 1)
        {
          sub_2661EFBB8(v52, &qword_2800679B0, &qword_266213550);
          sub_2661EFBB8(v33, &qword_2800679B0, &qword_266213550);
          (*(v36 + 8))(v40, v34);
LABEL_27:
          sub_2661EFBB8(v35, &qword_2800679E8, &qword_2662139C0);
          goto LABEL_16;
        }

        v41 = v44;
        (*(v36 + 32))(v44, v35 + v38, v34);
        sub_26620A684(&qword_2800679F0, MEMORY[0x277D5EE30]);
        v32 = sub_266212F90();
        v42 = *(v36 + 8);
        v42(v41, v34);
        sub_2661EFBB8(v52, &qword_2800679B0, &qword_266213550);
        sub_2661EFBB8(v33, &qword_2800679B0, &qword_266213550);
        v42(v40, v34);
        sub_2661EFBB8(v35, &qword_2800679B0, &qword_266213550);
        goto LABEL_17;
      }

      v31 = sub_266213140();

      LOBYTE(v22) = (*v26)(v21, v17);
      if (v31)
      {
        goto LABEL_19;
      }

LABEL_4:
      if (v55 == ++v24)
      {
        goto LABEL_15;
      }
    }

    LOBYTE(v22) = (*v26)(v21, v17);
    goto LABEL_4;
  }

LABEL_15:

LABEL_16:
  v32 = 0;
LABEL_17:
  LOBYTE(v22) = v32 & 1;
  return v22;
}

Swift::Bool __swiftcall UsoEntity_common_MediaItem.hasListPosition()()
{
  v0 = sub_266212B50();
  if (v0)
  {
  }

  return v0 != 0;
}

SiriAudioIntentUtils::CommonAudio::Attribute_optional __swiftcall UsoEntity_common_MediaItem.getListPositionAttribute()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280067A00, &qword_2662139D0);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v2 - 8);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v17 - v7;
  v9 = sub_266212B50();
  if (!v9)
  {
    v13 = 15;
LABEL_12:
    *v1 = v13;
    return v9;
  }

  sub_266212CF0();

  v10 = sub_266212D00();
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(v8, 1, v10) == 1)
  {
    goto LABEL_3;
  }

  sub_2662045F8(v8, v6, &qword_280067A00, &qword_2662139D0);
  v14 = (*(v11 + 88))(v6, v10);
  if (v14 == *MEMORY[0x277D5EBE8] || v14 == *MEMORY[0x277D5EC68])
  {
    LOBYTE(v9) = sub_2661EFBB8(v8, &qword_280067A00, &qword_2662139D0);
    v13 = 12;
    goto LABEL_12;
  }

  if (v14 == *MEMORY[0x277D5EBF0])
  {
    v12 = 10;
    goto LABEL_4;
  }

  (*(v11 + 8))(v6, v10);
LABEL_3:
  v12 = 15;
LABEL_4:
  *v1 = v12;
  LOBYTE(v9) = sub_2661EFBB8(v8, &qword_280067A00, &qword_2662139D0);
  return v9;
}

uint64_t sub_2662074AC(uint64_t a1, uint64_t a2)
{
  if (!UsoEntity_common_MediaItem.isResolvedReference()())
  {
    if ((!UsoEntity_common_MediaItem.isResolvedReference()() || *(a1 + 16)) && (!UsoEntity_common_MediaItem.isResolvedReference()() || *(a1 + 16)))
    {
      v4 = sub_266212BF0();
      if (v4)
      {
        v5 = v4;
        v6 = v4 & 0xFFFFFFFFFFFFFF8;
        if (v4 >> 62)
        {
          goto LABEL_24;
        }

        for (i = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_266213110())
        {
          v8 = 0;
          while ((v5 & 0xC000000000000001) != 0)
          {
            MEMORY[0x26677E9B0](v8, v5);
            v9 = v8 + 1;
            if (__OFADD__(v8, 1))
            {
              goto LABEL_22;
            }

LABEL_19:
            sub_266212B30();
            if (v12)
            {
              a2 = (sub_2662074AC)(a1);

              if (a2)
              {

                return a2;
              }
            }

            else
            {
            }

            ++v8;
            if (v9 == i)
            {
              goto LABEL_25;
            }
          }

          if (v8 >= *(v6 + 16))
          {
            goto LABEL_23;
          }

          v10 = *(v5 + 8 * v8 + 32);

          v9 = v8 + 1;
          if (!__OFADD__(v8, 1))
          {
            goto LABEL_19;
          }

LABEL_22:
          __break(1u);
LABEL_23:
          __break(1u);
LABEL_24:
          ;
        }

LABEL_25:
      }
    }

    return 0;
  }

  return a2;
}

uint64_t sub_26620764C(uint64_t a1, uint64_t a2)
{
  if (sub_266212C40())
  {
  }

  else
  {
    if ((!UsoEntity_common_MediaItem.isResolvedReference()() || *(a1 + 16)) && (!UsoEntity_common_MediaItem.isResolvedReference()() || *(a1 + 16)))
    {
      v4 = sub_266212BF0();
      if (v4)
      {
        v5 = v4;
        v6 = v4 & 0xFFFFFFFFFFFFFF8;
        if (v4 >> 62)
        {
          goto LABEL_25;
        }

        v7 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v7)
        {
LABEL_26:

          return 0;
        }

LABEL_10:
        v8 = 0;
        while (1)
        {
          if ((v5 & 0xC000000000000001) != 0)
          {
            MEMORY[0x26677E9B0](v8, v5);
            v9 = v8 + 1;
            if (__OFADD__(v8, 1))
            {
              goto LABEL_23;
            }
          }

          else
          {
            if (v8 >= *(v6 + 16))
            {
              goto LABEL_24;
            }

            v10 = *(v5 + 8 * v8 + 32);

            v9 = v8 + 1;
            if (__OFADD__(v8, 1))
            {
LABEL_23:
              __break(1u);
LABEL_24:
              __break(1u);
LABEL_25:
              v7 = sub_266213110();
              if (!v7)
              {
                goto LABEL_26;
              }

              goto LABEL_10;
            }
          }

          sub_266212B30();
          if (v12)
          {
            a2 = (sub_26620764C)(a1);

            if (a2)
            {

              return a2;
            }
          }

          else
          {
          }

          ++v8;
          if (v9 == v7)
          {
            goto LABEL_26;
          }
        }
      }
    }

    return 0;
  }

  return a2;
}

uint64_t sub_266207824(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t))
{
  v5 = a2;
  if ((a3(a2) & 1) == 0)
  {
    if ((!UsoEntity_common_MediaItem.isResolvedReference()() || *(a1 + 16)) && (!UsoEntity_common_MediaItem.isResolvedReference()() || *(a1 + 16)))
    {
      v7 = sub_266212BF0();
      if (v7)
      {
        v8 = v7;
        v5 = v7 & 0xFFFFFFFFFFFFFF8;
        if (v7 >> 62)
        {
          goto LABEL_24;
        }

        for (i = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_266213110())
        {
          v14 = v5;
          v10 = 0;
          while ((v8 & 0xC000000000000001) != 0)
          {
            v11 = MEMORY[0x26677E9B0](v10, v8);
            v12 = v10 + 1;
            if (__OFADD__(v10, 1))
            {
              goto LABEL_22;
            }

LABEL_19:
            v5 = v11;
            sub_266212B30();
            if (v15)
            {
              v5 = a4(a1);

              if (v5)
              {

                return v5;
              }
            }

            else
            {
            }

            ++v10;
            if (v12 == i)
            {
              goto LABEL_25;
            }
          }

          if (v10 >= *(v14 + 16))
          {
            goto LABEL_23;
          }

          v11 = *(v8 + 8 * v10 + 32);

          v12 = v10 + 1;
          if (!__OFADD__(v10, 1))
          {
            goto LABEL_19;
          }

LABEL_22:
          __break(1u);
LABEL_23:
          __break(1u);
LABEL_24:
          ;
        }

LABEL_25:
      }
    }

    return 0;
  }

  return v5;
}

uint64_t sub_2662079B0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800679C8, "\n+");
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v18 - v6;
  if (!sub_266212B70())
  {
    v9 = sub_266212D80();
    (*(*(v9 - 8) + 56))(v7, 1, 1, v9);
LABEL_5:
    sub_2661EFBB8(v7, &qword_2800679C8, "\n+");
    if ((!UsoEntity_common_MediaItem.isResolvedReference()() || *(a1 + 16)) && (!UsoEntity_common_MediaItem.isResolvedReference()() || *(a1 + 16)))
    {
      v10 = sub_266212BF0();
      if (v10)
      {
        v11 = v10;
        v12 = v10 & 0xFFFFFFFFFFFFFF8;
        if (v10 >> 62)
        {
          goto LABEL_26;
        }

        for (i = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_266213110())
        {
          v14 = 0;
          while ((v11 & 0xC000000000000001) != 0)
          {
            MEMORY[0x26677E9B0](v14, v11);
            v15 = v14 + 1;
            if (__OFADD__(v14, 1))
            {
              goto LABEL_24;
            }

LABEL_21:
            sub_266212B30();
            if (v19)
            {
              a2 = sub_2662079B0(a1, v19);

              if (a2)
              {

                return a2;
              }
            }

            else
            {
            }

            ++v14;
            if (v15 == i)
            {
              goto LABEL_27;
            }
          }

          if (v14 >= *(v12 + 16))
          {
            goto LABEL_25;
          }

          v16 = *(v11 + 8 * v14 + 32);

          v15 = v14 + 1;
          if (!__OFADD__(v14, 1))
          {
            goto LABEL_21;
          }

LABEL_24:
          __break(1u);
LABEL_25:
          __break(1u);
LABEL_26:
          ;
        }

LABEL_27:
      }
    }

    return 0;
  }

  sub_266212D70();

  v8 = sub_266212D80();
  if ((*(*(v8 - 8) + 48))(v7, 1, v8) == 1)
  {
    goto LABEL_5;
  }

  sub_2661EFBB8(v7, &qword_2800679C8, "\n+");

  return a2;
}

uint64_t UsoEntity_common_MediaItem.findFirst(options:with:)(uint64_t a1, uint64_t (*a2)(uint64_t), uint64_t a3)
{
  v4 = v3;
  if ((a2(v3) & 1) == 0)
  {
    if ((!UsoEntity_common_MediaItem.isResolvedReference()() || *(a1 + 16)) && (!UsoEntity_common_MediaItem.isResolvedReference()() || *(a1 + 16)))
    {
      v7 = sub_266212BF0();
      if (v7)
      {
        v8 = v7;
        v9 = v7 & 0xFFFFFFFFFFFFFF8;
        if (v7 >> 62)
        {
          goto LABEL_24;
        }

        for (i = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_266213110())
        {
          v15 = v9;
          v11 = 0;
          while ((v8 & 0xC000000000000001) != 0)
          {
            MEMORY[0x26677E9B0](v11, v8);
            v12 = v11 + 1;
            if (__OFADD__(v11, 1))
            {
              goto LABEL_22;
            }

LABEL_19:
            sub_266212B30();
            v9 = v17;
            if (v17)
            {
              v4 = UsoEntity_common_MediaItem.findFirst(options:with:)(a1, a2, a3);

              if (v4)
              {

                return v4;
              }
            }

            else
            {
            }

            ++v11;
            if (v12 == i)
            {
              goto LABEL_25;
            }
          }

          if (v11 >= *(v15 + 16))
          {
            goto LABEL_23;
          }

          v13 = *(v8 + 8 * v11 + 32);

          v12 = v11 + 1;
          if (!__OFADD__(v11, 1))
          {
            goto LABEL_19;
          }

LABEL_22:
          __break(1u);
LABEL_23:
          __break(1u);
LABEL_24:
          ;
        }

LABEL_25:
      }
    }

    return 0;
  }

  return v4;
}

uint64_t UsoEntity_common_MediaItem.identifiers(forNamespace:appBundleId:)(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  v32 = a2;
  v40 = sub_266212B20();
  v5 = *(v40 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v40);
  v35 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v10 = &v31 - v9;
  v39 = *a1;
  result = sub_266212AC0();
  v38 = *(result + 16);
  if (v38)
  {
    v12 = 0;
    v36 = v5 + 16;
    v33 = (v5 + 8);
    v34 = (v5 + 32);
    v13 = MEMORY[0x277D84F90];
    v31 = a3;
    v37 = result;
    while (1)
    {
      if (v12 >= *(result + 16))
      {
        __break(1u);
        return result;
      }

      v14 = (*(v5 + 80) + 32) & ~*(v5 + 80);
      v15 = *(v5 + 72);
      (*(v5 + 16))(v10, result + v14 + v15 * v12, v40);
      v16 = sub_266212B10();
      v18 = v17;
      v41 = v39;
      v19 = AudioUsoIntent.UsoNamespace.rawValue.getter();
      if (!v18)
      {
        break;
      }

      if (v16 == v19 && v18 == v20)
      {
      }

      else
      {
        v21 = sub_266213140();

        v22 = 0;
        if ((v21 & 1) == 0)
        {
          goto LABEL_15;
        }
      }

      if (!sub_266212B00() && v23 == 0xE000000000000000)
      {
        break;
      }

      v25 = sub_266213140();

      v22 = v25 ^ 1;
      if (!a3)
      {
LABEL_21:
        if (v22)
        {
          goto LABEL_24;
        }

        goto LABEL_3;
      }

LABEL_16:
      if (v22)
      {
        if (sub_266212AD0() == v32 && v24 == a3)
        {

LABEL_24:
          v27 = *v34;
          (*v34)(v35, v10, v40);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v42 = v13;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_266209F5C(0, *(v13 + 16) + 1, 1);
            v13 = v42;
          }

          v30 = *(v13 + 16);
          v29 = *(v13 + 24);
          if (v30 >= v29 >> 1)
          {
            sub_266209F5C(v29 > 1, v30 + 1, 1);
            v13 = v42;
          }

          *(v13 + 16) = v30 + 1;
          v27((v13 + v14 + v30 * v15), v35, v40);
          a3 = v31;
          goto LABEL_4;
        }

        v26 = sub_266213140();

        if (v26)
        {
          goto LABEL_24;
        }
      }

LABEL_3:
      (*v33)(v10, v40);
LABEL_4:
      ++v12;
      result = v37;
      if (v38 == v12)
      {
        goto LABEL_30;
      }
    }

    v22 = 0;
LABEL_15:
    if (!a3)
    {
      goto LABEL_21;
    }

    goto LABEL_16;
  }

  v13 = MEMORY[0x277D84F90];
LABEL_30:

  return v13;
}

uint64_t Array<A>.identifiers(forNamespace:)(unsigned __int8 *a1, unint64_t a2)
{
  v4 = sub_266212B20();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  result = MEMORY[0x28223BE20](v4);
  v9 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = *a1;
  if (a2 >> 62)
  {
    goto LABEL_17;
  }

  v10 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  for (i = result; v10; i = v19)
  {
    v11 = 0;
    v57 = MEMORY[0x277D84F90];
    while ((a2 & 0xC000000000000001) != 0)
    {
      result = MEMORY[0x26677E9B0](v11, a2);
      v13 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        goto LABEL_15;
      }

LABEL_7:
      v14 = sub_266212AC0();

      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_266209A48(0, v57[2] + 1, 1, v57);
        v57 = result;
      }

      v16 = v57[2];
      v15 = v57[3];
      v17 = v16 + 1;
      if (v16 >= v15 >> 1)
      {
        v54 = v16 + 1;
        result = sub_266209A48((v15 > 1), v16 + 1, 1, v57);
        v17 = v54;
        v57 = result;
      }

      v18 = v57;
      v57[2] = v17;
      v18[v16 + 4] = v14;
      ++v11;
      if (v13 == v10)
      {
        goto LABEL_19;
      }
    }

    if (v11 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_16;
    }

    v12 = *(a2 + 8 * v11 + 32);

    v13 = v11 + 1;
    if (!__OFADD__(v11, 1))
    {
      goto LABEL_7;
    }

LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    v19 = result;
    v10 = sub_266213110();
    result = v19;
  }

  v57 = MEMORY[0x277D84F90];
  v17 = *(MEMORY[0x277D84F90] + 16);
LABEL_19:
  if (v17)
  {
    v20 = 0;
    v55 = v57 + 4;
    v59 = v5 + 16;
    v53 = 0x8000000266214AC0;
    v51 = 0x8000000266214A80;
    v52 = 0x8000000266214AA0;
    v50 = 0x8000000266214A60;
    v48 = 0x8000000266214A20;
    v49 = 0x8000000266214A40;
    v47 = 0x80000002662149F0;
    v45 = 0x80000002662149A0;
    v46 = 0x80000002662149D0;
    v44 = 0x8000000266214940;
    v42 = 0x8000000266214900;
    v43 = 0x8000000266214920;
    v41 = 0x80000002662148E0;
    v40 = 0x80000002662148C0;
    v39 = 0x8000000266214890;
    v21 = (v5 + 8);
    v22 = MEMORY[0x277D84F90];
    v54 = v17;
    while (1)
    {
      v38 = v22;
      v23 = i;
      while (1)
      {
        if (v20 >= v57[2])
        {
          goto LABEL_104;
        }

        v24 = v55[v20++];
        v25 = *(v24 + 16);
        if (v25)
        {
          break;
        }

LABEL_23:
        if (v20 == v17)
        {
          v22 = v38;
          goto LABEL_102;
        }
      }

      v56 = v20;
      v26 = v24 + ((*(v5 + 80) + 32) & ~*(v5 + 80));

      v27 = 0;
LABEL_29:
      if (v27 >= *(v24 + 16))
      {
        break;
      }

      (*(v5 + 16))(v9, v26 + *(v5 + 72) * v27++, v23);
      v29 = sub_266212B10();
      v31 = 0xEF6E756F4E726579;
      v32 = 0x616C50616964656DLL;
      switch(v60)
      {
        case 1:
          v32 = 0xD000000000000012;
          v31 = v39;
          if (v30)
          {
            goto LABEL_83;
          }

          goto LABEL_89;
        case 2:
          v32 = 0x6E6547636973756DLL;
          v31 = 0xEA00000000006572;
          if (!v30)
          {
            goto LABEL_89;
          }

          goto LABEL_83;
        case 3:
          v31 = 0xEF646F6F4D726579;
          if (!v30)
          {
            goto LABEL_89;
          }

          goto LABEL_83;
        case 4:
          v32 = 0xD000000000000013;
          v31 = v40;
          if (!v30)
          {
            goto LABEL_89;
          }

          goto LABEL_83;
        case 5:
          v32 = 0xD000000000000014;
          v31 = v41;
          if (!v30)
          {
            goto LABEL_89;
          }

          goto LABEL_83;
        case 6:
          v32 = 0xD000000000000015;
          v31 = v42;
          if (!v30)
          {
            goto LABEL_89;
          }

          goto LABEL_83;
        case 7:
          v32 = 0xD000000000000014;
          v31 = v43;
          if (!v30)
          {
            goto LABEL_89;
          }

          goto LABEL_83;
        case 8:
          v32 = 0xD000000000000015;
          v31 = v44;
          if (!v30)
          {
            goto LABEL_89;
          }

          goto LABEL_83;
        case 9:
          v31 = 0xED0000656C746954;
          v32 = 0x7473696C79616C70;
          if (!v30)
          {
            goto LABEL_89;
          }

          goto LABEL_83;
        case 10:
          v32 = 0x5474736163646F70;
          goto LABEL_79;
        case 11:
          v31 = 0xEE0064496369706FLL;
          v32 = 0x5474736163646F70;
          if (!v30)
          {
            goto LABEL_89;
          }

          goto LABEL_83;
        case 12:
          v31 = 0xEA00000000007265;
          v32 = 0x696669746E656469;
          if (!v30)
          {
            goto LABEL_89;
          }

          goto LABEL_83;
        case 13:
          v31 = 0xE400000000000000;
          v32 = 1701605234;
          if (!v30)
          {
            goto LABEL_89;
          }

          goto LABEL_83;
        case 14:
          v32 = 0x6C646E7542707061;
          v31 = 0xEB00000000644965;
          if (!v30)
          {
            goto LABEL_89;
          }

          goto LABEL_83;
        case 15:
          v32 = 0xD000000000000019;
          v31 = v45;
          if (!v30)
          {
            goto LABEL_89;
          }

          goto LABEL_83;
        case 16:
          v31 = 0xEB0000000064496DLL;
          v32 = 0x657449616964656DLL;
          if (!v30)
          {
            goto LABEL_89;
          }

          goto LABEL_83;
        case 17:
          v32 = 0xD000000000000010;
          v31 = v46;
          if (!v30)
          {
            goto LABEL_89;
          }

          goto LABEL_83;
        case 18:
          v32 = 0xD000000000000012;
          v31 = v47;
          if (!v30)
          {
            goto LABEL_89;
          }

          goto LABEL_83;
        case 19:
          v32 = 0x54776F6853707061;
LABEL_79:
          v31 = 0xEC000000656C7469;
          if (!v30)
          {
            goto LABEL_89;
          }

          goto LABEL_83;
        case 20:
          v31 = 0xEE006449656C7469;
          v32 = 0x54776F6853707061;
          if (!v30)
          {
            goto LABEL_89;
          }

          goto LABEL_83;
        case 21:
          v32 = 0xD000000000000011;
          v31 = v48;
          if (!v30)
          {
            goto LABEL_89;
          }

          goto LABEL_83;
        case 22:
          v32 = 0xD000000000000013;
          v31 = v49;
          if (!v30)
          {
            goto LABEL_89;
          }

          goto LABEL_83;
        case 23:
          v32 = 0xD000000000000012;
          v31 = v50;
          goto LABEL_82;
        case 24:
          v32 = 0xD000000000000014;
          v31 = v51;
          if (!v30)
          {
            goto LABEL_89;
          }

          goto LABEL_83;
        case 25:
          v32 = 0xD000000000000012;
          v31 = v52;
          if (!v30)
          {
            goto LABEL_89;
          }

          goto LABEL_83;
        case 26:
          v32 = 0xD000000000000014;
          v31 = v53;
          if (!v30)
          {
            goto LABEL_89;
          }

          goto LABEL_83;
        case 27:
          v31 = 0xE700000000000000;
          v32 = 0x64695F6D657469;
          if (!v30)
          {
            goto LABEL_89;
          }

          goto LABEL_83;
        default:
LABEL_82:
          if (!v30)
          {
            goto LABEL_89;
          }

LABEL_83:
          if (v29 == v32 && v30 == v31)
          {
          }

          else
          {
            v33 = sub_266213140();
            v23 = i;

            if ((v33 & 1) == 0)
            {
              goto LABEL_90;
            }
          }

          if (!sub_266212B00() && v34 == 0xE000000000000000)
          {
LABEL_89:

LABEL_90:
            result = (*v21)(v9, v23);
            if (v25 == v27)
            {
LABEL_22:

              v17 = v54;
              v20 = v56;
              goto LABEL_23;
            }

            goto LABEL_29;
          }

          v28 = sub_266213140();

          result = (*v21)(v9, v23);
          if (v28)
          {
            if (v25 == v27)
            {
              goto LABEL_22;
            }

            goto LABEL_29;
          }

          v22 = v38;
          result = swift_isUniquelyReferenced_nonNull_native();
          v61 = v22;
          if ((result & 1) == 0)
          {
            result = sub_266209F7C(0, *(v22 + 16) + 1, 1);
            v22 = v61;
          }

          v17 = v54;
          v36 = *(v22 + 16);
          v35 = *(v22 + 24);
          if (v36 >= v35 >> 1)
          {
            result = sub_266209F7C((v35 > 1), v36 + 1, 1);
            v17 = v54;
            v22 = v61;
          }

          *(v22 + 16) = v36 + 1;
          *(v22 + 8 * v36 + 32) = v24;
          v20 = v56;
          if (v56 == v17)
          {
            goto LABEL_102;
          }

          break;
      }
    }

    __break(1u);
LABEL_104:
    __break(1u);
  }

  else
  {
    v22 = MEMORY[0x277D84F90];
LABEL_102:

    return v22;
  }

  return result;
}

Swift::Bool __swiftcall UsoEntity_common_MediaItem.isMoreOf()()
{
  v0 = sub_266212CA0();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v25 = &v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280067A40, &qword_266213A00);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v24 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280067A48, &qword_266213A08);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8 - 8);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v24 - v14;
  MEMORY[0x28223BE20](v13);
  v17 = &v24 - v16;
  if (sub_266212B40())
  {
    sub_266212C90();
  }

  else
  {
    (*(v1 + 56))(v17, 1, 1, v0);
  }

  (*(v1 + 104))(v15, *MEMORY[0x277D5EA40], v0);
  (*(v1 + 56))(v15, 0, 1, v0);
  v18 = *(v4 + 48);
  sub_2662045F8(v17, v7, &qword_280067A48, &qword_266213A08);
  sub_2662045F8(v15, &v7[v18], &qword_280067A48, &qword_266213A08);
  v19 = *(v1 + 48);
  if (v19(v7, 1, v0) != 1)
  {
    sub_2662045F8(v7, v12, &qword_280067A48, &qword_266213A08);
    if (v19(&v7[v18], 1, v0) != 1)
    {
      v21 = v25;
      (*(v1 + 32))(v25, &v7[v18], v0);
      sub_26620A684(&qword_280067A50, MEMORY[0x277D5EA60]);
      v20 = sub_266212F90();
      v22 = *(v1 + 8);
      v22(v21, v0);
      sub_2661EFBB8(v15, &qword_280067A48, &qword_266213A08);
      sub_2661EFBB8(v17, &qword_280067A48, &qword_266213A08);
      v22(v12, v0);
      sub_2661EFBB8(v7, &qword_280067A48, &qword_266213A08);
      return v20 & 1;
    }

    sub_2661EFBB8(v15, &qword_280067A48, &qword_266213A08);
    sub_2661EFBB8(v17, &qword_280067A48, &qword_266213A08);
    (*(v1 + 8))(v12, v0);
    goto LABEL_9;
  }

  sub_2661EFBB8(v15, &qword_280067A48, &qword_266213A08);
  sub_2661EFBB8(v17, &qword_280067A48, &qword_266213A08);
  if (v19(&v7[v18], 1, v0) != 1)
  {
LABEL_9:
    sub_2661EFBB8(v7, &qword_280067A40, &qword_266213A00);
    v20 = 0;
    return v20 & 1;
  }

  sub_2661EFBB8(v7, &qword_280067A48, &qword_266213A08);
  v20 = 1;
  return v20 & 1;
}

Swift::Bool __swiftcall UsoEntity_common_MediaItem.isDifferentThan()()
{
  v0 = sub_266212CC0();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v26 = &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280067A58, &qword_266213A10);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v25 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280067A60, &qword_266213A18);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8 - 8);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v25 - v14;
  MEMORY[0x28223BE20](v13);
  v17 = &v25 - v16;
  if (sub_266212B80() && (v18 = sub_266212E20(), , v18))
  {
    sub_266212CB0();
  }

  else
  {
    (*(v1 + 56))(v17, 1, 1, v0);
  }

  (*(v1 + 104))(v15, *MEMORY[0x277D5EA80], v0);
  (*(v1 + 56))(v15, 0, 1, v0);
  v19 = *(v4 + 48);
  sub_2662045F8(v17, v7, &qword_280067A60, &qword_266213A18);
  sub_2662045F8(v15, &v7[v19], &qword_280067A60, &qword_266213A18);
  v20 = *(v1 + 48);
  if (v20(v7, 1, v0) != 1)
  {
    sub_2662045F8(v7, v12, &qword_280067A60, &qword_266213A18);
    if (v20(&v7[v19], 1, v0) != 1)
    {
      v22 = v26;
      (*(v1 + 32))(v26, &v7[v19], v0);
      sub_26620A684(&qword_280067A68, MEMORY[0x277D5EA88]);
      v21 = sub_266212F90();
      v23 = *(v1 + 8);
      v23(v22, v0);
      sub_2661EFBB8(v15, &qword_280067A60, &qword_266213A18);
      sub_2661EFBB8(v17, &qword_280067A60, &qword_266213A18);
      v23(v12, v0);
      sub_2661EFBB8(v7, &qword_280067A60, &qword_266213A18);
      return v21 & 1;
    }

    sub_2661EFBB8(v15, &qword_280067A60, &qword_266213A18);
    sub_2661EFBB8(v17, &qword_280067A60, &qword_266213A18);
    (*(v1 + 8))(v12, v0);
    goto LABEL_10;
  }

  sub_2661EFBB8(v15, &qword_280067A60, &qword_266213A18);
  sub_2661EFBB8(v17, &qword_280067A60, &qword_266213A18);
  if (v20(&v7[v19], 1, v0) != 1)
  {
LABEL_10:
    sub_2661EFBB8(v7, &qword_280067A58, &qword_266213A10);
    v21 = 0;
    return v21 & 1;
  }

  sub_2661EFBB8(v7, &qword_280067A60, &qword_266213A18);
  v21 = 1;
  return v21 & 1;
}

unint64_t UsoEntity_common_MediaItem.findAll(options:with:)(uint64_t a1, uint64_t (*a2)(void), uint64_t a3)
{
  v5 = a2;
  v6 = MEMORY[0x277D84F90];
  v41 = MEMORY[0x277D84F90];
  if (a2(v3))
  {

    MEMORY[0x26677E8F0](v7);
    if (*((v41 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v41 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v28 = *((v41 & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_266213000();
    }

    sub_266213010();
    v6 = v41;
  }

  if (!UsoEntity_common_MediaItem.isResolvedReference()() || *(a1 + 16))
  {
    v8 = sub_266212BF0();
    if (v8)
    {
      v9 = v8;
      v10 = v8 & 0xFFFFFFFFFFFFFF8;
      if (v8 >> 62)
      {
        goto LABEL_61;
      }

      for (i = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_266213110())
      {
        v12 = 0;
        v36 = v9;
        v37 = v9 & 0xC000000000000001;
        v31 = v9 + 32;
        v32 = v10;
        v35 = i;
        v29 = v5;
        v30 = a3;
        while (v37)
        {
          MEMORY[0x26677E9B0](v12, v9);
          v13 = __OFADD__(v12++, 1);
          if (v13)
          {
            goto LABEL_54;
          }

LABEL_19:
          sub_266212B30();
          if (!v40[0])
          {

            goto LABEL_12;
          }

          sub_266212B30();
          if (v40[0])
          {
            v15 = UsoEntity_common_MediaItem.findAll(options:with:)(a1, v5, a3);
          }

          else
          {
            v15 = MEMORY[0x277D84F90];
          }

          v16 = v15 >> 62;
          if (v15 >> 62)
          {
            v17 = sub_266213110();
          }

          else
          {
            v17 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          v10 = v6 >> 62;
          if (v6 >> 62)
          {
            v18 = sub_266213110();
          }

          else
          {
            v18 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          v39 = v17;
          v13 = __OFADD__(v18, v17);
          v9 = v18 + v17;
          if (v13)
          {
            goto LABEL_55;
          }

          if (swift_isUniquelyReferenced_nonNull_bridgeObject())
          {
            if (v10)
            {
              goto LABEL_35;
            }

            v10 = v6 & 0xFFFFFFFFFFFFFF8;
            if (v9 <= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              v38 = v6;
              goto LABEL_37;
            }
          }

          else
          {
            if (v10)
            {
LABEL_35:
              sub_266213110();
              goto LABEL_36;
            }

            v10 = v6 & 0xFFFFFFFFFFFFFF8;
          }

          v19 = *(v10 + 16);
LABEL_36:
          v38 = sub_2662130B0();
          v10 = v38 & 0xFFFFFFFFFFFFFF8;
LABEL_37:
          v6 = *(v10 + 16);
          v20 = *(v10 + 24);
          if (v16)
          {
            v9 = sub_266213110();
            if (v9)
            {
LABEL_39:
              if (((v20 >> 1) - v6) < v39)
              {
                goto LABEL_57;
              }

              v6 = v10 + 8 * v6 + 32;
              v34 = v10;
              if (v16)
              {
                if (v9 < 1)
                {
                  goto LABEL_60;
                }

                sub_26620A6CC();
                for (j = 0; j != v9; ++j)
                {
                  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280067A70, &qword_266213A20);
                  v22 = sub_26620A2A8(v40, j, v15);
                  v24 = *v23;

                  (v22)(v40, 0);
                  *(v6 + 8 * j) = v24;
                }

                v5 = v29;
                a3 = v30;
                v10 = v39;
              }

              else
              {
                sub_266212C50();
                v10 = v39;
                swift_arrayInitWithCopy();
              }

              v6 = v38;
              i = v35;
              v9 = v36;
              if (v10 > 0)
              {
                v25 = *(v34 + 16);
                v13 = __OFADD__(v25, v10);
                v26 = v25 + v10;
                if (v13)
                {
                  goto LABEL_59;
                }

                *(v34 + 16) = v26;
              }

              goto LABEL_12;
            }
          }

          else
          {
            v9 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
            if (v9)
            {
              goto LABEL_39;
            }
          }

          v6 = v38;
          i = v35;
          v9 = v36;
          if (v39 > 0)
          {
            goto LABEL_56;
          }

LABEL_12:
          if (v12 == i)
          {
            goto LABEL_62;
          }
        }

        if (v12 >= *(v32 + 16))
        {
          goto LABEL_58;
        }

        v14 = *(v31 + 8 * v12);

        v13 = __OFADD__(v12++, 1);
        if (!v13)
        {
          goto LABEL_19;
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
        __break(1u);
LABEL_60:
        __break(1u);
LABEL_61:
        ;
      }

LABEL_62:
    }
  }

  return v6;
}

Swift::Bool __swiftcall UsoEntity_common_MediaItem.hasMediaTypeOnly()()
{
  v0 = sub_266212C00();
  if (v0)
  {

    if (sub_266212C20() || sub_266212B70() || sub_266212B40())
    {
      goto LABEL_5;
    }

    if (sub_266212BF0())
    {

      goto LABEL_6;
    }

    if (sub_266212B60() || sub_266212B50())
    {
LABEL_5:

LABEL_6:
      LOBYTE(v0) = 0;
      return v0;
    }

    LOBYTE(v0) = 1;
  }

  return v0;
}

char *sub_266209808(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280067A98, &qword_266213A40);
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

void *sub_266209914(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280067AC0, &qword_266213A68);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[4 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 32 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280067AC8, qword_266213A70);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_266209A48(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280067AA0, &qword_266213A48);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280067AA8, &qword_266213A50);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_266209B7C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280067AB0, &qword_266213A58);
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

char *sub_266209C70(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280067A90, &qword_266213A38);
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

char *sub_266209D64(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280067A88, &qword_266213A30);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

char *sub_266209E68(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280067A80, &qword_266213A28);
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

size_t sub_266209F5C(size_t a1, int64_t a2, char a3)
{
  result = sub_266209F9C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_266209F7C(void *a1, int64_t a2, char a3)
{
  result = sub_26620A174(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_266209F9C(size_t result, int64_t a2, char a3, void *a4)
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
LABEL_30:
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

  if (!v9)
  {
    v13 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280067AB8, &qword_266213A60);
  v10 = *(sub_266212B20() - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(sub_266212B20() - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

void *sub_26620A174(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280067AA0, &qword_266213A48);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280067AA8, &qword_266213A50);
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t (*sub_26620A2A8(uint64_t (*result)(uint64_t *a1), unint64_t a2, uint64_t a3))(uint64_t *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v5 = MEMORY[0x26677E9B0](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);

LABEL_5:
    *v3 = v5;
    return sub_26620A328;
  }

  __break(1u);
  return result;
}

unint64_t sub_26620A330(unint64_t isUniquelyReferenced_nonNull_bridgeObject, uint64_t a2, uint64_t (*a3)(void), uint64_t a4)
{
  if (isUniquelyReferenced_nonNull_bridgeObject >> 62)
  {
    goto LABEL_48;
  }

  v4 = *((isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (v4)
  {
    v5 = 0;
    v33 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
    v34 = isUniquelyReferenced_nonNull_bridgeObject & 0xC000000000000001;
    v6 = MEMORY[0x277D84F90];
    v29 = isUniquelyReferenced_nonNull_bridgeObject;
    v32 = isUniquelyReferenced_nonNull_bridgeObject + 32;
    v30 = v4;
    while (1)
    {
      if (v34)
      {
        isUniquelyReferenced_nonNull_bridgeObject = MEMORY[0x26677E9B0](v5, v29);
        v8 = __OFADD__(v5++, 1);
        if (v8)
        {
          goto LABEL_42;
        }
      }

      else
      {
        if (v5 >= *(v33 + 16))
        {
          goto LABEL_43;
        }

        v7 = *(v32 + 8 * v5);

        v8 = __OFADD__(v5++, 1);
        if (v8)
        {
          goto LABEL_42;
        }
      }

      v9 = UsoEntity_common_MediaItem.findAll(options:with:)(a2, a3, a4);

      v10 = v9 >> 62;
      v11 = v9 >> 62 ? sub_266213110() : *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v12 = v6 >> 62;
      if (v6 >> 62)
      {
        break;
      }

      isUniquelyReferenced_nonNull_bridgeObject = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v13 = isUniquelyReferenced_nonNull_bridgeObject + v11;
      if (__OFADD__(isUniquelyReferenced_nonNull_bridgeObject, v11))
      {
        goto LABEL_41;
      }

LABEL_13:
      isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
      v39 = v11;
      if (isUniquelyReferenced_nonNull_bridgeObject)
      {
        if (v12)
        {
          goto LABEL_20;
        }

        v14 = v6 & 0xFFFFFFFFFFFFFF8;
        if (v13 <= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          goto LABEL_22;
        }
      }

      else
      {
        if (v12)
        {
LABEL_20:
          sub_266213110();
          goto LABEL_21;
        }

        v14 = v6 & 0xFFFFFFFFFFFFFF8;
      }

      v15 = *(v14 + 16);
LABEL_21:
      isUniquelyReferenced_nonNull_bridgeObject = sub_2662130B0();
      v6 = isUniquelyReferenced_nonNull_bridgeObject;
      v14 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
LABEL_22:
      v16 = *(v14 + 16);
      v17 = *(v14 + 24);
      if (v10)
      {
        v19 = v14;
        isUniquelyReferenced_nonNull_bridgeObject = sub_266213110();
        v14 = v19;
        v18 = isUniquelyReferenced_nonNull_bridgeObject;
        if (isUniquelyReferenced_nonNull_bridgeObject)
        {
LABEL_26:
          if (((v17 >> 1) - v16) < v39)
          {
            goto LABEL_45;
          }

          v20 = v14 + 8 * v16 + 32;
          v31 = v14;
          if (v10)
          {
            if (v18 < 1)
            {
              goto LABEL_47;
            }

            sub_26620A6CC();
            for (i = 0; i != v18; ++i)
            {
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280067A70, &qword_266213A20);
              v22 = sub_26620A2A8(v38, i, v9);
              v24 = *v23;

              (v22)(v38, 0);
              *(v20 + 8 * i) = v24;
            }
          }

          else
          {
            sub_266212C50();
            swift_arrayInitWithCopy();
          }

          v4 = v30;
          if (v39 >= 1)
          {
            v25 = *(v31 + 16);
            v8 = __OFADD__(v25, v39);
            v26 = v25 + v39;
            if (v8)
            {
              goto LABEL_46;
            }

            *(v31 + 16) = v26;
          }

          goto LABEL_5;
        }
      }

      else
      {
        v18 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v18)
        {
          goto LABEL_26;
        }
      }

      if (v39 > 0)
      {
        goto LABEL_44;
      }

LABEL_5:
      if (v5 == v4)
      {
        return v6;
      }
    }

    isUniquelyReferenced_nonNull_bridgeObject = sub_266213110();
    v13 = isUniquelyReferenced_nonNull_bridgeObject + v11;
    if (!__OFADD__(isUniquelyReferenced_nonNull_bridgeObject, v11))
    {
      goto LABEL_13;
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
    v27 = isUniquelyReferenced_nonNull_bridgeObject;
    v4 = sub_266213110();
    isUniquelyReferenced_nonNull_bridgeObject = v27;
  }

  return MEMORY[0x277D84F90];
}

uint64_t sub_26620A684(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_26620A6CC()
{
  result = qword_280067A78;
  if (!qword_280067A78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280067A70, &qword_266213A20);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280067A78);
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

Swift::Bool __swiftcall AudioIntent.hasResolvedReference()()
{
  v1 = (*(v0 + 272))();
  if (v1)
  {
  }

  return v1 != 0;
}

Swift::Bool __swiftcall AudioIntent.isReferringToCurrentlyPlayingForAdd()()
{
  v2 = v1;
  v3 = v0;
  (*(v1 + 296))(&v10);
  if (v10 == 19)
  {
    return 0;
  }

  v5 = CommonAudio.Verb.rawValue.getter();
  v7 = v6;
  if (v5 == CommonAudio.Verb.rawValue.getter() && v7 == v8)
  {
  }

  else
  {
    v9 = sub_266213140();

    result = 0;
    if ((v9 & 1) == 0)
    {
      return result;
    }
  }

  if ((*(v2 + 272))(v3, v2))
  {

    if (AudioIntent.isWithoutTitlesAndArtist()())
    {
      return 1;
    }
  }

  return AudioIntent.isWithoutTitlesAndArtistAndGenre()();
}

Swift::Bool __swiftcall AudioIntent.isWithoutTitlesAndArtist()()
{
  v2 = v1;
  v3 = v0;
  v4 = *((*(v1 + 136))() + 16);

  if (v4)
  {
    return 0;
  }

  v5 = *(v2[25](v3, v2) + 16);

  if (v5)
  {
    return 0;
  }

  v6 = *(v2[13](v3, v2) + 16);

  if (v6)
  {
    return 0;
  }

  v8 = *(v2[3](v3, v2) + 16);

  return v8 == 0;
}

Swift::Bool __swiftcall AudioIntent.isWithoutTitlesAndArtistAndGenre()()
{
  v2 = v1;
  v3 = v0;
  if (AudioIntent.isWithoutTitlesAndArtist()())
  {
    v4 = *((*(v2 + 152))(v3, v2) + 16);

    if (!v4)
    {
      (*(v2 + 168))(&v12, v3, v2);
      if (v12 == 29)
      {
        v5 = 1;
        return v5 & 1;
      }

      v7 = CommonAudio.MediaType.rawValue.getter();
      v9 = v8;
      if (v7 != CommonAudio.MediaType.rawValue.getter() || v9 != v10)
      {
        v11 = sub_266213140();

        v5 = v11 ^ 1;
        return v5 & 1;
      }
    }
  }

  v5 = 0;
  return v5 & 1;
}

Swift::Bool __swiftcall AudioIntent.isBeats1Only()()
{
  if (AudioIntent.hasBeats1ItemOrRadioStationNameOnly()())
  {
    return 1;
  }

  return AudioIntent.hasBeats1NounOnly()();
}

Swift::Bool __swiftcall AudioIntent.hasBeats1ItemOrRadioStationNameOnly()()
{
  v2 = v1;
  v3 = v0;
  v4 = (*(v1 + 136))();
  if (v4[2])
  {
    v6 = v4[4];
    v5 = v4[5];
  }

  else
  {
    v6 = 0;
    v5 = 0xE000000000000000;
  }

  v7 = (*(v2 + 248))(v3, v2);
  if (v7[2])
  {
    v9 = v7[4];
    v8 = v7[5];
  }

  else
  {
    v9 = 0;
    v8 = 0xE000000000000000;
  }

  v10 = v5 & 0x2000000000000000;
  v11 = HIBYTE(v5) & 0xF;
  v12 = v6 & 0xFFFFFFFFFFFFLL;
  if ((v5 & 0x2000000000000000) != 0)
  {
    v13 = HIBYTE(v5) & 0xF;
  }

  else
  {
    v13 = v6 & 0xFFFFFFFFFFFFLL;
  }

  if (v13)
  {
  }

  else
  {

    v10 = v8 & 0x2000000000000000;
    v11 = HIBYTE(v8) & 0xF;
    v12 = v9 & 0xFFFFFFFFFFFFLL;
  }

  if (v10)
  {
    v14 = v11;
  }

  else
  {
    v14 = v12;
  }

  if (v14)
  {
    v15 = sub_266212FB0();
    v17 = v16;

    if (v15 == sub_266212FB0() && v17 == v18)
    {
      v19 = 1;
    }

    else
    {
      v19 = sub_266213140();
    }
  }

  else
  {
    v19 = 0;
  }

  return v19 & 1;
}

Swift::Bool __swiftcall AudioIntent.hasBeats1NounOnly()()
{
  v2 = v1;
  v3 = v0;
  v4 = (*(v1 + 136))();
  if (v4[2])
  {
    v6 = v4[4];
    v5 = v4[5];

    v7 = v6 & 0xFFFFFFFFFFFFLL;
  }

  else
  {

    v7 = 0;
    v5 = 0xE000000000000000;
  }

  v8 = HIBYTE(v5) & 0xF;
  if ((v5 & 0x2000000000000000) == 0)
  {
    v8 = v7;
  }

  if (v8 || ((*(v2 + 208))(&v11, v3, v2), v11 == 2))
  {
    v9 = 0;
  }

  else
  {
    if (v11)
    {
      v9 = 1;
    }

    else
    {
      v9 = sub_266213140();
    }
  }

  return v9 & 1;
}

Swift::Bool __swiftcall AudioIntent.isReferencedPlayRequest()()
{
  v3 = v1;
  v4 = v0;
  v5 = *(v0 - 8);
  v6 = *(v5 + 64);
  v7 = (MEMORY[0x28223BE20])();
  v9 = &v20[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v10 + 296))(&v21 + 1, v7);
  if (BYTE1(v21) == 19)
  {
    goto LABEL_7;
  }

  v20[15] = BYTE1(v21);
  v20[14] = 0;
  v11 = CommonAudio.Verb.rawValue.getter();
  v13 = v12;
  if (v11 == CommonAudio.Verb.rawValue.getter() && v13 == v14)
  {
  }

  else
  {
    v15 = sub_266213140();

    if ((v15 & 1) == 0)
    {
LABEL_7:
      LOBYTE(v16) = 0;
      return v16;
    }
  }

  (*(v3 + 264))(&v21, v4, v3);
  if (v21 == 2)
  {
    goto LABEL_7;
  }

  (*(v5 + 16))(v9, v2, v4);
  type metadata accessor for AudioUsoIntent();
  v16 = swift_dynamicCast();
  if (v16)
  {
    v17 = sub_2661F1CAC();

    LOBYTE(v16) = v17;
    if (v17)
    {
      if (v17 >> 62)
      {
        v18 = sub_266213110();
      }

      else
      {
        v18 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      LOBYTE(v16) = v18 != 0;
    }
  }

  return v16;
}

Swift::Bool __swiftcall AudioIntent.isPlayRequest()()
{
  v2 = v1;
  v3 = v0;
  v4 = *(v1 + 296);
  v4((&v28 + 4));
  if (BYTE4(v28) == 19)
  {
    return 1;
  }

  (v4)((&v28 + 3), v3, v2);
  if (BYTE3(v28) != 19)
  {
    v8 = CommonAudio.Verb.rawValue.getter();
    v10 = v9;
    if (v8 == CommonAudio.Verb.rawValue.getter() && v10 == v11)
    {
      goto LABEL_21;
    }

    v12 = sub_266213140();

    if (v12)
    {
      return 1;
    }
  }

  (v4)((&v28 + 2), v3, v2);
  if (BYTE2(v28) != 19)
  {
    v13 = CommonAudio.Verb.rawValue.getter();
    v15 = v14;
    if (v13 == CommonAudio.Verb.rawValue.getter() && v15 == v16)
    {
      goto LABEL_21;
    }

    v17 = sub_266213140();

    if (v17)
    {
      return 1;
    }
  }

  (v4)((&v28 + 1), v3, v2);
  if (BYTE1(v28) == 19)
  {
    goto LABEL_5;
  }

  v18 = CommonAudio.Verb.rawValue.getter();
  v20 = v19;
  if (v18 == CommonAudio.Verb.rawValue.getter() && v20 == v21)
  {
LABEL_21:

    return 1;
  }

  v22 = sub_266213140();

  if (v22)
  {
    return 1;
  }

LABEL_5:
  (v4)(&v28, v3, v2);
  if (v28 == 19)
  {
LABEL_6:
    v5 = (*(v2 + 112))(v3, v2);
    v6 = sub_26620BCF8(3, v5);

    return v6 & 1;
  }

  v23 = CommonAudio.Verb.rawValue.getter();
  v25 = v24;
  if (v23 == CommonAudio.Verb.rawValue.getter() && v25 == v26)
  {
    goto LABEL_21;
  }

  v27 = sub_266213140();

  if ((v27 & 1) == 0)
  {
    goto LABEL_6;
  }

  return 1;
}

Swift::Bool __swiftcall AudioIntent.isAddToUpNext()()
{
  v2 = v1;
  v3 = v0;
  v4 = *(v1 + 296);
  v4((&v18 + 1));
  if (BYTE1(v18) != 19)
  {
    v6 = CommonAudio.Verb.rawValue.getter();
    v8 = v7;
    if (v6 == CommonAudio.Verb.rawValue.getter() && v8 == v9)
    {
LABEL_10:

      goto LABEL_11;
    }

    v10 = sub_266213140();

    if (v10)
    {
      goto LABEL_11;
    }
  }

  (v4)(&v18, v3, v2);
  if (v18 == 19)
  {
    return 0;
  }

  v11 = CommonAudio.Verb.rawValue.getter();
  v13 = v12;
  if (v11 == CommonAudio.Verb.rawValue.getter() && v13 == v14)
  {
    goto LABEL_10;
  }

  v17 = sub_266213140();

  if ((v17 & 1) == 0)
  {
    return 0;
  }

LABEL_11:
  v15 = (*(v2 + 112))(v3, v2);
  v16 = sub_26620BCF8(3, v15);

  return v16 & 1;
}

BOOL AudioIntent.hasAnyAttribute(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = (*(a3 + 112))(a2, a3);
  LOBYTE(a1) = sub_26620B5D4(a1, v4);

  return (a1 & 1) == 0;
}

uint64_t sub_26620B5D4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (!v2)
  {
    return 1;
  }

  v3 = *(a1 + 16);
  if (!v3)
  {
    return 1;
  }

  if (v2 >= v3)
  {
    v4 = a1;
  }

  else
  {
    v4 = a2;
  }

  if (v2 >= v3)
  {
    v5 = a2;
  }

  else
  {
    v5 = a1;
  }

  v6 = v4 + 56;
  v7 = 1 << *(v4 + 32);
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(v4 + 56);
  v10 = (v7 + 63) >> 6;
  v30 = v5 + 56;

  v12 = 0;
LABEL_13:
  if (v9)
  {
    v13 = v9;
    goto LABEL_19;
  }

  while (1)
  {
    v14 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v14 >= v10)
    {

      return 1;
    }

    v13 = *(v6 + 8 * v14);
    ++v12;
    if (v13)
    {
      v12 = v14;
LABEL_19:
      v9 = (v13 - 1) & v13;
      if (*(v5 + 16))
      {
        v15 = *(*(v4 + 48) + (__clz(__rbit64(v13)) | (v12 << 6)));
        v16 = *(v5 + 40);
        sub_266213170();
        v29 = v15;
        sub_266212FC0();

        result = sub_266213190();
        v17 = -1 << *(v5 + 32);
        v18 = result & ~v17;
        if ((*(v30 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18))
        {
          v27 = v9;
          v28 = v4;
          v19 = ~v17;
          while (2)
          {
            v20 = 0xEA00000000007473;
            v21 = 0x697472416D6F7266;
            switch(*(*(v5 + 48) + v18))
            {
              case 1:
                v20 = 0xE800000000000000;
                v21 = 0x676E6F536D6F7266;
                break;
              case 2:
                v21 = 0x75626C416D6F7266;
                v20 = 0xE90000000000006DLL;
                break;
              case 3:
                v20 = 0xE800000000000000;
                v21 = 0x7478654E79616C70;
                break;
              case 4:
                v20 = 0xE700000000000000;
                v21 = 0x776F4E79616C70;
                break;
              case 5:
                v20 = 0xE800000000000000;
                v21 = 0x7473614C79616C70;
                break;
              case 6:
                v20 = 0xE800000000000000;
                v21 = 0x7974696E69666661;
                break;
              case 7:
                v21 = 0x6E656D6D6F636572;
                v20 = 0xEB00000000646564;
                break;
              case 8:
                v20 = 0xE900000000000079;
                v21 = 0x7265766F63736964;
                break;
              case 9:
                v21 = 0xD000000000000018;
                v20 = 0x8000000266214B40;
                break;
              case 0xA:
                v20 = 0xE400000000000000;
                v21 = 1954047342;
                break;
              case 0xB:
                v20 = 0xE500000000000000;
                v21 = 0x64656D616ELL;
                break;
              case 0xC:
                v20 = 0xE800000000000000;
                v21 = 0x73756F6976657270;
                break;
              case 0xD:
                v21 = 0x44657361656C6572;
                v20 = 0xEB00000000657461;
                break;
              case 0xE:
                v20 = 0xE800000000000000;
                v21 = 0x6E6F697461727564;
                break;
              default:
                break;
            }

            v22 = 0x697472416D6F7266;
            v23 = 0xEA00000000007473;
            switch(v29)
            {
              case 1:
                v23 = 0xE800000000000000;
                if (v21 == 0x676E6F536D6F7266)
                {
                  goto LABEL_64;
                }

                goto LABEL_65;
              case 2:
                v23 = 0xE90000000000006DLL;
                if (v21 != 0x75626C416D6F7266)
                {
                  goto LABEL_65;
                }

                goto LABEL_64;
              case 3:
                v23 = 0xE800000000000000;
                if (v21 != 0x7478654E79616C70)
                {
                  goto LABEL_65;
                }

                goto LABEL_64;
              case 4:
                v23 = 0xE700000000000000;
                if (v21 != 0x776F4E79616C70)
                {
                  goto LABEL_65;
                }

                goto LABEL_64;
              case 5:
                v23 = 0xE800000000000000;
                if (v21 != 0x7473614C79616C70)
                {
                  goto LABEL_65;
                }

                goto LABEL_64;
              case 6:
                v23 = 0xE800000000000000;
                if (v21 != 0x7974696E69666661)
                {
                  goto LABEL_65;
                }

                goto LABEL_64;
              case 7:
                v24 = 0x6E656D6D6F636572;
                v25 = 6579556;
                goto LABEL_58;
              case 8:
                v23 = 0xE900000000000079;
                if (v21 != 0x7265766F63736964)
                {
                  goto LABEL_65;
                }

                goto LABEL_64;
              case 9:
                v23 = 0x8000000266214B40;
                if (v21 != 0xD000000000000018)
                {
                  goto LABEL_65;
                }

                goto LABEL_64;
              case 10:
                v23 = 0xE400000000000000;
                v22 = 1954047342;
                goto LABEL_63;
              case 11:
                v23 = 0xE500000000000000;
                if (v21 != 0x64656D616ELL)
                {
                  goto LABEL_65;
                }

                goto LABEL_64;
              case 12:
                v23 = 0xE800000000000000;
                if (v21 != 0x73756F6976657270)
                {
                  goto LABEL_65;
                }

                goto LABEL_64;
              case 13:
                v24 = 0x44657361656C6572;
                v25 = 6648929;
LABEL_58:
                v23 = v25 & 0xFFFFFFFFFFFFLL | 0xEB00000000000000;
                if (v21 != v24)
                {
                  goto LABEL_65;
                }

                goto LABEL_64;
              case 14:
                v23 = 0xE800000000000000;
                if (v21 != 0x6E6F697461727564)
                {
                  goto LABEL_65;
                }

                goto LABEL_64;
              default:
LABEL_63:
                if (v21 != v22)
                {
                  goto LABEL_65;
                }

LABEL_64:
                if (v20 == v23)
                {

                  return 0;
                }

LABEL_65:
                v26 = sub_266213140();

                if (v26)
                {

                  return 0;
                }

                v18 = (v18 + 1) & v19;
                if ((*(v30 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18))
                {
                  continue;
                }

                v9 = v27;
                v4 = v28;
                break;
            }

            break;
          }
        }
      }

      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_26620BCF8(char a1, uint64_t a2)
{
  if (*(a2 + 16))
  {
    v4 = *(a2 + 40);
    sub_266213170();
    CommonAudio.Attribute.rawValue.getter();
    sub_266212FC0();

    v5 = sub_266213190();
    v6 = -1 << *(a2 + 32);
    v7 = v5 & ~v6;
    if ((*(a2 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
    {
      v8 = ~v6;
      while (1)
      {
        v9 = 0xEA00000000007473;
        v10 = 0x697472416D6F7266;
        switch(*(*(a2 + 48) + v7))
        {
          case 1:
            v9 = 0xE800000000000000;
            v10 = 0x676E6F536D6F7266;
            break;
          case 2:
            v10 = 0x75626C416D6F7266;
            v9 = 0xE90000000000006DLL;
            break;
          case 3:
            v9 = 0xE800000000000000;
            v10 = 0x7478654E79616C70;
            break;
          case 4:
            v9 = 0xE700000000000000;
            v10 = 0x776F4E79616C70;
            break;
          case 5:
            v9 = 0xE800000000000000;
            v10 = 0x7473614C79616C70;
            break;
          case 6:
            v9 = 0xE800000000000000;
            v10 = 0x7974696E69666661;
            break;
          case 7:
            v10 = 0x6E656D6D6F636572;
            v9 = 0xEB00000000646564;
            break;
          case 8:
            v9 = 0xE900000000000079;
            v10 = 0x7265766F63736964;
            break;
          case 9:
            v10 = 0xD000000000000018;
            v9 = 0x8000000266214B40;
            break;
          case 0xA:
            v9 = 0xE400000000000000;
            v10 = 1954047342;
            break;
          case 0xB:
            v9 = 0xE500000000000000;
            v10 = 0x64656D616ELL;
            break;
          case 0xC:
            v9 = 0xE800000000000000;
            v10 = 0x73756F6976657270;
            break;
          case 0xD:
            v10 = 0x44657361656C6572;
            v9 = 0xEB00000000657461;
            break;
          case 0xE:
            v9 = 0xE800000000000000;
            v10 = 0x6E6F697461727564;
            break;
          default:
            break;
        }

        v11 = 0x697472416D6F7266;
        v12 = 0xEA00000000007473;
        switch(a1)
        {
          case 1:
            v12 = 0xE800000000000000;
            if (v10 == 0x676E6F536D6F7266)
            {
              goto LABEL_46;
            }

            goto LABEL_47;
          case 2:
            v12 = 0xE90000000000006DLL;
            if (v10 != 0x75626C416D6F7266)
            {
              goto LABEL_47;
            }

            goto LABEL_46;
          case 3:
            v12 = 0xE800000000000000;
            if (v10 != 0x7478654E79616C70)
            {
              goto LABEL_47;
            }

            goto LABEL_46;
          case 4:
            v12 = 0xE700000000000000;
            if (v10 != 0x776F4E79616C70)
            {
              goto LABEL_47;
            }

            goto LABEL_46;
          case 5:
            v12 = 0xE800000000000000;
            if (v10 != 0x7473614C79616C70)
            {
              goto LABEL_47;
            }

            goto LABEL_46;
          case 6:
            v12 = 0xE800000000000000;
            if (v10 != 0x7974696E69666661)
            {
              goto LABEL_47;
            }

            goto LABEL_46;
          case 7:
            v13 = 0x6E656D6D6F636572;
            v14 = 6579556;
            goto LABEL_40;
          case 8:
            v12 = 0xE900000000000079;
            if (v10 != 0x7265766F63736964)
            {
              goto LABEL_47;
            }

            goto LABEL_46;
          case 9:
            v12 = 0x8000000266214B40;
            if (v10 != 0xD000000000000018)
            {
              goto LABEL_47;
            }

            goto LABEL_46;
          case 10:
            v12 = 0xE400000000000000;
            v11 = 1954047342;
            goto LABEL_45;
          case 11:
            v12 = 0xE500000000000000;
            if (v10 != 0x64656D616ELL)
            {
              goto LABEL_47;
            }

            goto LABEL_46;
          case 12:
            v12 = 0xE800000000000000;
            if (v10 != 0x73756F6976657270)
            {
              goto LABEL_47;
            }

            goto LABEL_46;
          case 13:
            v13 = 0x44657361656C6572;
            v14 = 6648929;
LABEL_40:
            v12 = v14 & 0xFFFFFFFFFFFFLL | 0xEB00000000000000;
            if (v10 != v13)
            {
              goto LABEL_47;
            }

            goto LABEL_46;
          case 14:
            v12 = 0xE800000000000000;
            if (v10 != 0x6E6F697461727564)
            {
              goto LABEL_47;
            }

            goto LABEL_46;
          default:
LABEL_45:
            if (v10 != v11)
            {
              goto LABEL_47;
            }

LABEL_46:
            if (v9 == v12)
            {

              v15 = 1;
              return v15 & 1;
            }

LABEL_47:
            v15 = sub_266213140();

            if (v15)
            {
              return v15 & 1;
            }

            v7 = (v7 + 1) & v8;
            if (((*(a2 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
            {
              return v15 & 1;
            }

            break;
        }
      }
    }
  }

  v15 = 0;
  return v15 & 1;
}

Swift::Bool __swiftcall AudioIntent.isAirPlayMusicWithoutAppName()()
{
  v2 = v1;
  v3 = v0;
  v4 = *((*(v1 + 304))() + 16);

  if (!v4)
  {
    return 0;
  }

  v5 = *(v2 + 312);

  return v5(v3, v2);
}

char *UsoEntity_common_Setting.usoMediaSettingNames()()
{
  v0 = sub_266212B20();
  v44 = *(v0 - 8);
  v1 = *(v44 + 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v43 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_266212F60();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v43 - v10;
  v12 = sub_266212B90();
  if (v12)
  {
    v13 = v12;
    if (qword_280067948 != -1)
    {
      swift_once();
    }

    v14 = __swift_project_value_buffer(v4, qword_280069498);
    (*(v5 + 16))(v11, v14, v4);

    v15 = sub_266212F50();
    v16 = sub_266213040();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v45 = v5;
      v18 = v17;
      v19 = swift_slowAlloc();
      v43 = v4;
      v20 = v19;
      v46 = v19;
      *v18 = 136315138;
      v21 = MEMORY[0x26677E900](v13, v0);
      v23 = sub_26621094C(v21, v22, &v46);

      *(v18 + 4) = v23;
      _os_log_impl(&dword_2661EC000, v15, v16, "UsoMediaSettingNames: Found identifiers for name: %s", v18, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v20);
      MEMORY[0x26677ED20](v20, -1, -1);
      MEMORY[0x26677ED20](v18, -1, -1);

      (*(v45 + 8))(v11, v43);
      v24 = *(v13 + 16);
      if (v24)
      {
LABEL_6:
        v45 = 0x8000000266215790;
        v25 = *(v44 + 2);
        v26 = v44[80];
        v43 = v13;
        v27 = v13 + ((v26 + 32) & ~v26);
        v28 = *(v44 + 9);
        v29 = v44 + 8;
        v44 = MEMORY[0x277D84F90];
        v25(v3, v27, v0);
        while (1)
        {
          v30 = sub_266212B10();
          if (!v31)
          {
            break;
          }

          if (v30 == 0xD000000000000010 && v31 == v45)
          {
          }

          else
          {
            v32 = sub_266213140();

            if ((v32 & 1) == 0)
            {
              break;
            }
          }

          sub_266212B00();
          v33 = sub_266213130();

          (*v29)(v3, v0);
          if (!v33)
          {
            if (swift_isUniquelyReferenced_nonNull_native())
            {
              v34 = v44;
            }

            else
            {
              v34 = sub_266209E68(0, *(v44 + 2) + 1, 1, v44);
            }

            v36 = *(v34 + 2);
            v35 = *(v34 + 3);
            v37 = v36 + 1;
            if (v36 >= v35 >> 1)
            {
              v34 = sub_266209E68((v35 > 1), v36 + 1, 1, v34);
            }

            v44 = v34;
            *(v34 + 2) = v37;
          }

LABEL_8:
          v27 += v28;
          if (!--v24)
          {

            return v44;
          }

          v25(v3, v27, v0);
        }

        (*v29)(v3, v0);
        goto LABEL_8;
      }
    }

    else
    {

      (*(v5 + 8))(v11, v4);
      v24 = *(v13 + 16);
      if (v24)
      {
        goto LABEL_6;
      }
    }
  }

  else
  {
    if (qword_280067948 != -1)
    {
      swift_once();
    }

    v39 = __swift_project_value_buffer(v4, qword_280069498);
    (*(v5 + 16))(v9, v39, v4);
    v40 = sub_266212F50();
    v41 = sub_266213040();
    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      *v42 = 0;
      _os_log_impl(&dword_2661EC000, v40, v41, "UsoMediaSettingNames: Found no identifiers for name", v42, 2u);
      MEMORY[0x26677ED20](v42, -1, -1);
    }

    (*(v5 + 8))(v9, v4);
  }

  return MEMORY[0x277D84F90];
}

SiriAudioIntentUtils::CommonAudio::Verb_optional __swiftcall CommonAudio.Verb.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_266213150();

  v5 = 19;
  if (v3 < 0x13)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t static CommonAudio.MediaType.from(_:)@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v39 = a2;
  v3 = sub_266212F60();
  v38 = *(v3 - 8);
  v4 = *(v38 + 64);
  (MEMORY[0x28223BE20])();
  v6 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800679B0, &qword_266213550);
  v7 = *(*(v37 - 8) + 64);
  v8 = (MEMORY[0x28223BE20])();
  v36 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v35 - v11;
  MEMORY[0x28223BE20](v10);
  v14 = &v35 - v13;
  v15 = sub_266212D60();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v19 = &v35 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2662045F8(a1, v14, &qword_2800679B0, &qword_266213550);
  if ((*(v16 + 48))(v14, 1, v15) == 1)
  {
    sub_2662108E4(v14);
  }

  else
  {
    (*(v16 + 32))(v19, v14, v15);
    if (qword_280067940 != -1)
    {
      swift_once();
    }

    v20 = qword_280069490;
    if (*(qword_280069490 + 16))
    {
      v21 = sub_266210F04(v19);
      if (v22)
      {
        v23 = *(*(v20 + 56) + v21);
        result = (*(v16 + 8))(v19, v15);
        goto LABEL_15;
      }
    }

    (*(v16 + 8))(v19, v15);
  }

  v25 = v38;
  if (qword_280067948 != -1)
  {
    swift_once();
  }

  v26 = __swift_project_value_buffer(v3, qword_280069498);
  (*(v25 + 16))(v6, v26, v3);
  sub_2662045F8(a1, v12, &qword_2800679B0, &qword_266213550);
  v27 = sub_266212F50();
  v28 = sub_266213020();
  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v40 = v30;
    *v29 = 136315138;
    sub_2662045F8(v12, v36, &qword_2800679B0, &qword_266213550);
    v31 = sub_266212FA0();
    v33 = v32;
    sub_2662108E4(v12);
    v34 = sub_26621094C(v31, v33, &v40);

    *(v29 + 4) = v34;
    _os_log_impl(&dword_2661EC000, v27, v28, "AudioUsoIntent#MediaType#from received unregistered type: %s", v29, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v30);
    MEMORY[0x26677ED20](v30, -1, -1);
    MEMORY[0x26677ED20](v29, -1, -1);
  }

  else
  {

    sub_2662108E4(v12);
  }

  result = (*(v25 + 8))(v6, v3);
  v23 = 29;
LABEL_15:
  *v39 = v23;
  return result;
}

unint64_t static CommonAudio.Decade.from(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = sub_266212F60();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a2)
  {
    goto LABEL_7;
  }

  if (qword_280067938 != -1)
  {
    swift_once();
  }

  v11 = qword_280069488;
  if (*(qword_280069488 + 16) && (result = sub_266210F88(a1, a2), (v13 & 1) != 0))
  {
    v14 = *(*(v11 + 56) + result);
  }

  else
  {
LABEL_7:
    if (qword_280067948 != -1)
    {
      swift_once();
    }

    v15 = __swift_project_value_buffer(v6, qword_280069498);
    (*(v7 + 16))(v10, v15, v6);

    v16 = sub_266212F50();
    v17 = sub_266213020();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v23[2] = a2;
      v24 = v19;
      *v18 = 136315138;
      v23[1] = a1;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800679E0, &qword_2662139B8);
      v20 = sub_266212FA0();
      v22 = sub_26621094C(v20, v21, &v24);

      *(v18 + 4) = v22;
      _os_log_impl(&dword_2661EC000, v16, v17, "CommonAudio#Decade#from received unregistered decade: %s", v18, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v19);
      MEMORY[0x26677ED20](v19, -1, -1);
      MEMORY[0x26677ED20](v18, -1, -1);
    }

    result = (*(v7 + 8))(v10, v6);
    v14 = 11;
  }

  *a3 = v14;
  return result;
}

uint64_t sub_26620D298(char a1, char a2)
{
  if (*&a1920s_1[8 * a1] == *&a1920s_1[8 * a2])
  {
    v2 = 1;
  }

  else
  {
    v2 = sub_266213140();
  }

  swift_bridgeObjectRelease_n();
  return v2 & 1;
}

uint64_t sub_26620D300(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE700000000000000;
  if (a1 <= 3u)
  {
    v9 = 0xE400000000000000;
    v10 = 1953719650;
    if (a1 != 2)
    {
      v10 = 0x7473726F77;
      v9 = 0xE500000000000000;
    }

    v11 = 0x616C75706F706E75;
    if (a1)
    {
      v3 = 0xE900000000000072;
    }

    else
    {
      v11 = 0x72616C75706F70;
    }

    if (a1 <= 1u)
    {
      v7 = v11;
    }

    else
    {
      v7 = v10;
    }

    if (v2 <= 1)
    {
      v8 = v3;
    }

    else
    {
      v8 = v9;
    }
  }

  else
  {
    v4 = 0x74736574746F68;
    v5 = 0x6572636F6964656DLL;
    if (a1 != 7)
    {
      v5 = 0x7473657461657267;
    }

    if (a1 != 6)
    {
      v4 = v5;
      v3 = 0xE800000000000000;
    }

    v6 = 0x74736577656ELL;
    if (a1 != 4)
    {
      v6 = 0x747365646C6FLL;
    }

    if (a1 <= 5u)
    {
      v7 = v6;
    }

    else
    {
      v7 = v4;
    }

    if (v2 <= 5)
    {
      v8 = 0xE600000000000000;
    }

    else
    {
      v8 = v3;
    }
  }

  if (a2 <= 3u)
  {
    if (a2 > 1u)
    {
      if (a2 == 2)
      {
        v12 = 0xE400000000000000;
        if (v7 != 1953719650)
        {
          goto LABEL_52;
        }
      }

      else
      {
        v12 = 0xE500000000000000;
        if (v7 != 0x7473726F77)
        {
          goto LABEL_52;
        }
      }
    }

    else if (a2)
    {
      v12 = 0xE900000000000072;
      if (v7 != 0x616C75706F706E75)
      {
        goto LABEL_52;
      }
    }

    else
    {
      v12 = 0xE700000000000000;
      if (v7 != 0x72616C75706F70)
      {
        goto LABEL_52;
      }
    }
  }

  else if (a2 <= 5u)
  {
    v12 = 0xE600000000000000;
    if (a2 == 4)
    {
      v13 = 1702323566;
    }

    else
    {
      v13 = 1701080175;
    }

    if (v7 != (v13 & 0xFFFF0000FFFFFFFFLL | 0x747300000000))
    {
      goto LABEL_52;
    }
  }

  else if (a2 == 6)
  {
    v12 = 0xE700000000000000;
    if (v7 != 0x74736574746F68)
    {
      goto LABEL_52;
    }
  }

  else
  {
    v12 = 0xE800000000000000;
    if (a2 == 7)
    {
      if (v7 != 0x6572636F6964656DLL)
      {
        goto LABEL_52;
      }
    }

    else if (v7 != 0x7473657461657267)
    {
      goto LABEL_52;
    }
  }

  if (v8 != v12)
  {
LABEL_52:
    v14 = sub_266213140();
    goto LABEL_53;
  }

  v14 = 1;
LABEL_53:

  return v14 & 1;
}

uint64_t sub_26620D588(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 7562617;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = 0x6C65636E6163;
    }

    else
    {
      v4 = 0x6F666E4965726F6DLL;
    }

    if (v3 == 2)
    {
      v5 = 0xE600000000000000;
    }

    else
    {
      v5 = 0xE800000000000000;
    }
  }

  else
  {
    if (a1)
    {
      v4 = 28526;
    }

    else
    {
      v4 = 7562617;
    }

    if (v3)
    {
      v5 = 0xE200000000000000;
    }

    else
    {
      v5 = 0xE300000000000000;
    }
  }

  v6 = 0xE300000000000000;
  v7 = 0xE600000000000000;
  v8 = 0x6C65636E6163;
  if (a2 != 2)
  {
    v8 = 0x6F666E4965726F6DLL;
    v7 = 0xE800000000000000;
  }

  if (a2)
  {
    v2 = 28526;
    v6 = 0xE200000000000000;
  }

  if (a2 <= 1u)
  {
    v9 = v2;
  }

  else
  {
    v9 = v8;
  }

  if (a2 <= 1u)
  {
    v10 = v6;
  }

  else
  {
    v10 = v7;
  }

  if (v4 == v9 && v5 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_266213140();
  }

  return v11 & 1;
}

uint64_t sub_26620D6A4(uint64_t a1, char a2)
{
  v2 = *&a1920s_1[8 * a2];
  sub_266212FC0();
}

uint64_t sub_26620D6E4()
{
  sub_266212FC0();
}

unint64_t CommonAudio.Attribute.rawValue.getter()
{
  result = 0x697472416D6F7266;
  switch(*v0)
  {
    case 1:
      result = 0x676E6F536D6F7266;
      break;
    case 2:
      result = 0x75626C416D6F7266;
      break;
    case 3:
      result = 0x7478654E79616C70;
      break;
    case 4:
      result = 0x776F4E79616C70;
      break;
    case 5:
      result = 0x7473614C79616C70;
      break;
    case 6:
      result = 0x7974696E69666661;
      break;
    case 7:
      result = 0x6E656D6D6F636572;
      break;
    case 8:
      result = 0x7265766F63736964;
      break;
    case 9:
      result = 0xD000000000000018;
      break;
    case 0xA:
      result = 1954047342;
      break;
    case 0xB:
      result = 0x64656D616ELL;
      break;
    case 0xC:
      result = 0x73756F6976657270;
      break;
    case 0xD:
      result = 0x44657361656C6572;
      break;
    case 0xE:
      result = 0x6E6F697461727564;
      break;
    default:
      return result;
  }

  return result;
}

BOOL sub_26620D9C0(char a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = (a2 + 32);
  while (2)
  {
    v6 = v3;
    if (v3-- == 0)
    {
      return v6 != 0;
    }

    v8 = 0xE500000000000000;
    v9 = 0x65726E6567;
    switch(*v4)
    {
      case 1:
        v8 = 0xE600000000000000;
        v9 = 0x747369747261;
        break;
      case 2:
        v9 = 0x6F65646976;
        break;
      case 3:
        v8 = 0xE800000000000000;
        v9 = 0x7473696C79616C70;
        break;
      case 4:
        v8 = 0xE700000000000000;
        v9 = 0x6E6F6974617473;
        break;
      case 5:
        v9 = 0xD000000000000015;
        v8 = 0x8000000266214C90;
        break;
      case 6:
        v9 = 0x6F68536F69646172;
        v8 = 0xE900000000000077;
        break;
      case 7:
        v8 = 0xE400000000000000;
        v9 = 1735290739;
        break;
      case 8:
        v8 = 0xE700000000000000;
        v9 = 0x5573656E755469;
        break;
      case 9:
        v8 = 0xE700000000000000;
        v9 = 0x74736163646F70;
        break;
      case 0xA:
        v9 = 0x646956636973756DLL;
        v8 = 0xEA00000000006F65;
        break;
      case 0xB:
        v9 = 0x636973756DLL;
        break;
      case 0xC:
        v8 = 0xE400000000000000;
        v9 = 1937204590;
        break;
      case 0xD:
        v8 = 0xE600000000000000;
        v9 = 0x776F68537674;
        break;
      case 0xE:
        v9 = 0x6D75626C61;
        break;
      case 0xF:
        v8 = 0xE800000000000000;
        v9 = 0x656E6F74676E6972;
        break;
      case 0x10:
        v8 = 0xE200000000000000;
        v9 = 28780;
        break;
      case 0x11:
        v8 = 0xE400000000000000;
        v9 = 2003789939;
        break;
      case 0x12:
        v9 = 0x6174536F69646172;
        v8 = 0xEC0000006E6F6974;
        break;
      case 0x13:
        v8 = 0xE200000000000000;
        v9 = 28773;
        break;
      case 0x14:
        v8 = 0xE600000000000000;
        v9 = 0x656C676E6973;
        break;
      case 0x15:
        v8 = 0xE700000000000000;
        v9 = 0x65646F73697065;
        break;
      case 0x16:
        v9 = 0x5374736163646F70;
        v8 = 0xEE006E6F69746174;
        break;
      case 0x17:
        v8 = 0xE600000000000000;
        v9 = 0x73646E756F73;
        break;
      case 0x18:
        v9 = 0x74616C69706D6F63;
        v8 = 0xEB000000006E6F69;
        break;
      case 0x19:
        v9 = 0x6569766F6DLL;
        break;
      case 0x1A:
        v9 = 0x6F6F426F69647561;
        v8 = 0xE90000000000006BLL;
        break;
      case 0x1B:
        v9 = 0x616C50636973756DLL;
        v8 = 0xED00007473696C79;
        break;
      case 0x1C:
        v8 = 0xE700000000000000;
        v9 = 0x6E776F6E6B6E75;
        break;
      default:
        break;
    }

    v10 = 0xE500000000000000;
    v11 = 0x65726E6567;
    switch(a1)
    {
      case 1:
        v10 = 0xE600000000000000;
        if (v9 == 0x747369747261)
        {
          goto LABEL_89;
        }

        goto LABEL_2;
      case 2:
        if (v9 != 0x6F65646976)
        {
          goto LABEL_2;
        }

        goto LABEL_89;
      case 3:
        v10 = 0xE800000000000000;
        if (v9 != 0x7473696C79616C70)
        {
          goto LABEL_2;
        }

        goto LABEL_89;
      case 4:
        v10 = 0xE700000000000000;
        if (v9 != 0x6E6F6974617473)
        {
          goto LABEL_2;
        }

        goto LABEL_89;
      case 5:
        v10 = 0x8000000266214C90;
        if (v9 != 0xD000000000000015)
        {
          goto LABEL_2;
        }

        goto LABEL_89;
      case 6:
        v10 = 0xE900000000000077;
        if (v9 != 0x6F68536F69646172)
        {
          goto LABEL_2;
        }

        goto LABEL_89;
      case 7:
        v10 = 0xE400000000000000;
        if (v9 != 1735290739)
        {
          goto LABEL_2;
        }

        goto LABEL_89;
      case 8:
        v10 = 0xE700000000000000;
        if (v9 != 0x5573656E755469)
        {
          goto LABEL_2;
        }

        goto LABEL_89;
      case 9:
        v10 = 0xE700000000000000;
        if (v9 != 0x74736163646F70)
        {
          goto LABEL_2;
        }

        goto LABEL_89;
      case 10:
        v10 = 0xEA00000000006F65;
        if (v9 != 0x646956636973756DLL)
        {
          goto LABEL_2;
        }

        goto LABEL_89;
      case 11:
        if (v9 != 0x636973756DLL)
        {
          goto LABEL_2;
        }

        goto LABEL_89;
      case 12:
        v10 = 0xE400000000000000;
        if (v9 != 1937204590)
        {
          goto LABEL_2;
        }

        goto LABEL_89;
      case 13:
        v10 = 0xE600000000000000;
        if (v9 != 0x776F68537674)
        {
          goto LABEL_2;
        }

        goto LABEL_89;
      case 14:
        if (v9 != 0x6D75626C61)
        {
          goto LABEL_2;
        }

        goto LABEL_89;
      case 15:
        v10 = 0xE800000000000000;
        if (v9 != 0x656E6F74676E6972)
        {
          goto LABEL_2;
        }

        goto LABEL_89;
      case 16:
        v10 = 0xE200000000000000;
        if (v9 != 28780)
        {
          goto LABEL_2;
        }

        goto LABEL_89;
      case 17:
        v10 = 0xE400000000000000;
        if (v9 != 2003789939)
        {
          goto LABEL_2;
        }

        goto LABEL_89;
      case 18:
        v10 = 0xEC0000006E6F6974;
        if (v9 != 0x6174536F69646172)
        {
          goto LABEL_2;
        }

        goto LABEL_89;
      case 19:
        v10 = 0xE200000000000000;
        if (v9 != 28773)
        {
          goto LABEL_2;
        }

        goto LABEL_89;
      case 20:
        v10 = 0xE600000000000000;
        if (v9 != 0x656C676E6973)
        {
          goto LABEL_2;
        }

        goto LABEL_89;
      case 21:
        v10 = 0xE700000000000000;
        if (v9 != 0x65646F73697065)
        {
          goto LABEL_2;
        }

        goto LABEL_89;
      case 22:
        v10 = 0xEE006E6F69746174;
        if (v9 != 0x5374736163646F70)
        {
          goto LABEL_2;
        }

        goto LABEL_89;
      case 23:
        v10 = 0xE600000000000000;
        if (v9 != 0x73646E756F73)
        {
          goto LABEL_2;
        }

        goto LABEL_89;
      case 24:
        v10 = 0xEB000000006E6F69;
        if (v9 != 0x74616C69706D6F63)
        {
          goto LABEL_2;
        }

        goto LABEL_89;
      case 25:
        if (v9 != 0x6569766F6DLL)
        {
          goto LABEL_2;
        }

        goto LABEL_89;
      case 26:
        v10 = 0xE90000000000006BLL;
        if (v9 != 0x6F6F426F69647561)
        {
          goto LABEL_2;
        }

        goto LABEL_89;
      case 27:
        v10 = 0xED00007473696C79;
        if (v9 != 0x616C50636973756DLL)
        {
          goto LABEL_2;
        }

        goto LABEL_89;
      case 28:
        v10 = 0xE700000000000000;
        v11 = 0x6E776F6E6B6E75;
        goto LABEL_88;
      default:
LABEL_88:
        if (v9 != v11)
        {
          goto LABEL_2;
        }

LABEL_89:
        if (v8 != v10)
        {
LABEL_2:
          v5 = sub_266213140();

          ++v4;
          if (v5)
          {
            return v6 != 0;
          }

          continue;
        }

        return v6 != 0;
    }
  }
}

unint64_t CommonAudio.Verb.rawValue.getter()
{
  result = 2036427888;
  switch(*v0)
  {
    case 1:
      result = 0x6269726373627573;
      break;
    case 2:
      result = 0x776F6C6C6F66;
      break;
    case 3:
      result = 1701538156;
      break;
    case 4:
      result = 0x656C6666756873;
      break;
    case 5:
      result = 0x746165706572;
      break;
    case 6:
      result = 0x656D75736572;
      break;
    case 7:
      result = 0x657461647075;
      break;
    case 8:
      result = 0x736972616D6D7573;
      break;
    case 9:
      result = 0x7472617473;
      break;
    case 0xA:
      result = 0x656B696C6E75;
      break;
    case 0xB:
      result = 0x74736575716572;
      break;
    case 0xC:
      result = 1852141679;
      break;
    case 0xD:
      result = 0x6E696D7265746564;
      break;
    case 0xE:
      result = 0xD000000000000012;
      break;
    case 0xF:
      result = 6579297;
      break;
    case 0x10:
      result = 0x656C62616E65;
      break;
    case 0x11:
      result = 0x656C6261736964;
      break;
    case 0x12:
      result = 0x796669646F6DLL;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_26620E2D4@<X0>(unint64_t *a1@<X8>)
{
  result = CommonAudio.Verb.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t CommonAudio.UsoEntity.rawValue.getter()
{
  if (*v0)
  {
    result = 0xD000000000000010;
  }

  else
  {
    result = 0x6E456F4E5F6F7375;
  }

  *v0;
  return result;
}

uint64_t sub_26620E344(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0xD000000000000010;
  }

  else
  {
    v4 = 0x6E456F4E5F6F7375;
  }

  if (v3)
  {
    v5 = 0xEC00000079746974;
  }

  else
  {
    v5 = 0x8000000266214860;
  }

  if (*a2)
  {
    v6 = 0xD000000000000010;
  }

  else
  {
    v6 = 0x6E456F4E5F6F7375;
  }

  if (*a2)
  {
    v7 = 0x8000000266214860;
  }

  else
  {
    v7 = 0xEC00000079746974;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_266213140();
  }

  return v9 & 1;
}

uint64_t sub_26620E3F8()
{
  v1 = *v0;
  sub_266213170();
  sub_266212FC0();

  return sub_266213190();
}

uint64_t sub_26620E488()
{
  *v0;
  sub_266212FC0();
}

uint64_t sub_26620E504()
{
  v1 = *v0;
  sub_266213170();
  sub_266212FC0();

  return sub_266213190();
}

void sub_26620E59C(unint64_t *a1@<X8>)
{
  v2 = 0x8000000266214860;
  v3 = 0x6E456F4E5F6F7375;
  if (*v1)
  {
    v3 = 0xD000000000000010;
  }

  else
  {
    v2 = 0xEC00000079746974;
  }

  *a1 = v3;
  a1[1] = v2;
}

SiriAudioIntentUtils::CommonAudio::Attribute_optional __swiftcall CommonAudio.Attribute.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_266213130();

  v5 = 15;
  if (v3 < 0xF)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t sub_26620E6B0@<X0>(unint64_t *a1@<X8>)
{
  result = CommonAudio.Attribute.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t CommonAudio.Modifier.rawValue.getter()
{
  if (*v0)
  {
    result = 0x6E65726566666964;
  }

  else
  {
    result = 0x664F65726F6DLL;
  }

  *v0;
  return result;
}

uint64_t sub_26620E728(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0x6E65726566666964;
  }

  else
  {
    v4 = 0x664F65726F6DLL;
  }

  if (v3)
  {
    v5 = 0xE600000000000000;
  }

  else
  {
    v5 = 0xED00006E61685474;
  }

  if (*a2)
  {
    v6 = 0x6E65726566666964;
  }

  else
  {
    v6 = 0x664F65726F6DLL;
  }

  if (*a2)
  {
    v7 = 0xED00006E61685474;
  }

  else
  {
    v7 = 0xE600000000000000;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_266213140();
  }

  return v9 & 1;
}

uint64_t sub_26620E7D8()
{
  v1 = *v0;
  sub_266213170();
  sub_266212FC0();

  return sub_266213190();
}

uint64_t sub_26620E864()
{
  *v0;
  sub_266212FC0();
}

uint64_t sub_26620E8DC()
{
  v1 = *v0;
  sub_266213170();
  sub_266212FC0();

  return sub_266213190();
}

void sub_26620E970(uint64_t *a1@<X8>)
{
  v2 = 0x664F65726F6DLL;
  if (*v1)
  {
    v2 = 0x6E65726566666964;
  }

  v3 = 0xE600000000000000;
  if (*v1)
  {
    v3 = 0xED00006E61685474;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t CommonAudio.Noun.rawValue.getter()
{
  if (*v0)
  {
    result = 0x317374616562;
  }

  else
  {
    result = 0x7972617262696CLL;
  }

  *v0;
  return result;
}

uint64_t sub_26620E9FC(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0x317374616562;
  }

  else
  {
    v4 = 0x7972617262696CLL;
  }

  if (v3)
  {
    v5 = 0xE700000000000000;
  }

  else
  {
    v5 = 0xE600000000000000;
  }

  if (*a2)
  {
    v6 = 0x317374616562;
  }

  else
  {
    v6 = 0x7972617262696CLL;
  }

  if (*a2)
  {
    v7 = 0xE600000000000000;
  }

  else
  {
    v7 = 0xE700000000000000;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_266213140();
  }

  return v9 & 1;
}

uint64_t sub_26620EAA0()
{
  v1 = *v0;
  sub_266213170();
  sub_266212FC0();

  return sub_266213190();
}

uint64_t sub_26620EB20()
{
  *v0;
  sub_266212FC0();
}

uint64_t sub_26620EB8C()
{
  v1 = *v0;
  sub_266213170();
  sub_266212FC0();

  return sub_266213190();
}

void sub_26620EC14(uint64_t *a1@<X8>)
{
  v2 = 0x7972617262696CLL;
  if (*v1)
  {
    v2 = 0x317374616562;
  }

  v3 = 0xE700000000000000;
  if (*v1)
  {
    v3 = 0xE600000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t CommonAudio.RadioType.rawValue.getter()
{
  if (*v0)
  {
    return 28001;
  }

  else
  {
    return 28006;
  }
}

uint64_t sub_26620EC6C(_BYTE *a1, _BYTE *a2)
{
  if (*a1)
  {
    v2 = 28001;
  }

  else
  {
    v2 = 28006;
  }

  if (*a2)
  {
    v3 = 28001;
  }

  else
  {
    v3 = 28006;
  }

  if (v2 == v3)
  {
    v4 = 1;
  }

  else
  {
    v4 = sub_266213140();
  }

  swift_bridgeObjectRelease_n();
  return v4 & 1;
}

uint64_t sub_26620ECDC()
{
  v1 = *v0;
  sub_266213170();
  sub_266212FC0();

  return sub_266213190();
}

uint64_t sub_26620ED3C()
{
  *v0;
  sub_266212FC0();
}

uint64_t sub_26620ED80()
{
  v1 = *v0;
  sub_266213170();
  sub_266212FC0();

  return sub_266213190();
}

void sub_26620EDE8(uint64_t *a1@<X8>)
{
  v2 = 28006;
  if (*v1)
  {
    v2 = 28001;
  }

  *a1 = v2;
  a1[1] = 0xE200000000000000;
}

SiriAudioIntentUtils::CommonAudio::Confirmation_optional __swiftcall CommonAudio.Confirmation.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_266213130();

  v5 = 4;
  if (v3 < 4)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t CommonAudio.Confirmation.rawValue.getter()
{
  v1 = 7562617;
  v2 = 0x6C65636E6163;
  if (*v0 != 2)
  {
    v2 = 0x6F666E4965726F6DLL;
  }

  if (*v0)
  {
    v1 = 28526;
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

uint64_t sub_26620EED4()
{
  v1 = *v0;
  sub_266213170();
  sub_266212FC0();

  return sub_266213190();
}

uint64_t sub_26620EF80()
{
  *v0;
  *v0;
  *v0;
  sub_266212FC0();
}

uint64_t sub_26620F018()
{
  v1 = *v0;
  sub_266213170();
  sub_266212FC0();

  return sub_266213190();
}

void sub_26620F0CC(uint64_t *a1@<X8>)
{
  v2 = 0xE300000000000000;
  v3 = 7562617;
  v4 = 0xE600000000000000;
  v5 = 0x6C65636E6163;
  if (*v1 != 2)
  {
    v5 = 0x6F666E4965726F6DLL;
    v4 = 0xE800000000000000;
  }

  if (*v1)
  {
    v3 = 28526;
    v2 = 0xE200000000000000;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

uint64_t sub_26620F134()
{
  v0 = sub_2662121EC(&unk_2877D60D8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280067B30, "(");
  result = swift_arrayDestroy();
  qword_280069488 = v0;
  return result;
}

SiriAudioIntentUtils::CommonAudio::Decade_optional __swiftcall CommonAudio.Decade.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_266213130();

  v5 = 11;
  if (v3 < 0xB)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_26620F254@<X0>(uint64_t *a1@<X8>)
{
  result = CommonAudio.Decade.rawValue.getter();
  *a1 = result;
  a1[1] = 0xE600000000000000;
  return result;
}

SiriAudioIntentUtils::CommonAudio::Sort_optional __swiftcall CommonAudio.Sort.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_266213130();

  v5 = 9;
  if (v3 < 9)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t CommonAudio.Sort.rawValue.getter()
{
  v1 = *v0;
  if (v1 <= 3)
  {
    v6 = 0x72616C75706F70;
    v7 = 1953719650;
    if (v1 != 2)
    {
      v7 = 0x7473726F77;
    }

    if (*v0)
    {
      v6 = 0x616C75706F706E75;
    }

    if (*v0 <= 1u)
    {
      return v6;
    }

    else
    {
      return v7;
    }
  }

  else
  {
    v2 = 0x74736574746F68;
    v3 = 0x6572636F6964656DLL;
    if (v1 != 7)
    {
      v3 = 0x7473657461657267;
    }

    if (v1 != 6)
    {
      v2 = v3;
    }

    v4 = 0x74736577656ELL;
    if (v1 != 4)
    {
      v4 = 0x747365646C6FLL;
    }

    if (*v0 <= 5u)
    {
      return v4;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_26620F408(uint64_t a1, uint64_t a2, void (*a3)(_BYTE *, uint64_t))
{
  v5 = *v3;
  sub_266213170();
  a3(v7, v5);
  return sub_266213190();
}

uint64_t sub_26620F478(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *, uint64_t))
{
  v6 = *v4;
  sub_266213170();
  a4(v8, v6);
  return sub_266213190();
}

uint64_t sub_26620F4D0@<X0>(uint64_t *a1@<X8>)
{
  result = CommonAudio.Sort.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_26620F504@<X0>(char *a1@<X8>)
{
  v2 = sub_266213130();

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

uint64_t CommonAudio.Reference.rawValue.getter()
{
  if (*v0)
  {
    result = 0x696E696665646E69;
  }

  else
  {
    result = 0x6574696E69666564;
  }

  *v0;
  return result;
}

uint64_t sub_26620F5A4(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0x696E696665646E69;
  }

  else
  {
    v4 = 0x6574696E69666564;
  }

  if (v3)
  {
    v5 = 0xE800000000000000;
  }

  else
  {
    v5 = 0xEA00000000006574;
  }

  if (*a2)
  {
    v6 = 0x696E696665646E69;
  }

  else
  {
    v6 = 0x6574696E69666564;
  }

  if (*a2)
  {
    v7 = 0xEA00000000006574;
  }

  else
  {
    v7 = 0xE800000000000000;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_266213140();
  }

  return v9 & 1;
}

uint64_t sub_26620F650()
{
  v1 = *v0;
  sub_266213170();
  sub_266212FC0();

  return sub_266213190();
}

uint64_t sub_26620F6D8()
{
  *v0;
  sub_266212FC0();
}

uint64_t sub_26620F74C()
{
  v1 = *v0;
  sub_266213170();
  sub_266212FC0();

  return sub_266213190();
}

uint64_t sub_26620F7DC@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_266213130();

  if (v5 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (!v5)
  {
    v7 = 0;
  }

  *a2 = v7;
  return result;
}

void sub_26620F838(uint64_t *a1@<X8>)
{
  v2 = 0x6574696E69666564;
  if (*v1)
  {
    v2 = 0x696E696665646E69;
  }

  v3 = 0xE800000000000000;
  if (*v1)
  {
    v3 = 0xEA00000000006574;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_26620F87C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280067B48, &qword_266214498);
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280067B50, &qword_2662144A0);
  v1 = *(*(v0 - 8) + 72);
  v2 = (*(*(v0 - 8) + 80) + 32) & ~*(*(v0 - 8) + 80);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_266213AB0;
  v4 = v3 + v2;
  v5 = *(v0 + 48);
  v6 = *MEMORY[0x277D5EDA0];
  v7 = sub_266212D60();
  v8 = *(*(v7 - 8) + 104);
  v8(v4, v6, v7);
  *(v4 + v5) = 0;
  v9 = *(v0 + 48);
  v8(v4 + v1, *MEMORY[0x277D5EDC0], v7);
  *(v4 + v1 + v9) = 1;
  v10 = *(v0 + 48);
  v8(v4 + 2 * v1, *MEMORY[0x277D5EDB8], v7);
  *(v4 + 2 * v1 + v10) = 2;
  v11 = *(v0 + 48);
  v8(v4 + 3 * v1, *MEMORY[0x277D5EE18], v7);
  *(v4 + 3 * v1 + v11) = 3;
  v12 = *(v0 + 48);
  v8(v4 + 4 * v1, *MEMORY[0x277D5EE10], v7);
  *(v4 + 4 * v1 + v12) = 4;
  v13 = *(v0 + 48);
  v8(v4 + 5 * v1, *MEMORY[0x277D5ED68], v7);
  *(v4 + 5 * v1 + v13) = 5;
  v14 = *(v0 + 48);
  v8(v4 + 6 * v1, *MEMORY[0x277D5ED30], v7);
  *(v4 + 6 * v1 + v14) = 6;
  v15 = *(v0 + 48);
  v8(v4 + 7 * v1, *MEMORY[0x277D5ED90], v7);
  *(v4 + 7 * v1 + v15) = 7;
  v16 = *(v0 + 48);
  v8(v4 + 8 * v1, *MEMORY[0x277D5EDF8], v7);
  *(v4 + 8 * v1 + v16) = 8;
  v17 = *(v0 + 48);
  v8(v4 + 9 * v1, *MEMORY[0x277D5EE08], v7);
  *(v4 + 9 * v1 + v17) = 9;
  v18 = *(v0 + 48);
  v8(v4 + 10 * v1, *MEMORY[0x277D5ED38], v7);
  *(v4 + 10 * v1 + v18) = 10;
  v19 = *(v0 + 48);
  v8(v4 + 11 * v1, *MEMORY[0x277D5EDB0], v7);
  *(v4 + 11 * v1 + v19) = 11;
  v20 = *(v0 + 48);
  v8(v4 + 12 * v1, *MEMORY[0x277D5ED80], v7);
  *(v4 + 12 * v1 + v20) = 12;
  v21 = *(v0 + 48);
  v8(v4 + 13 * v1, *MEMORY[0x277D5EDD8], v7);
  *(v4 + 13 * v1 + v21) = 13;
  v22 = *(v0 + 48);
  v8(v4 + 14 * v1, *MEMORY[0x277D5ED98], v7);
  *(v4 + 14 * v1 + v22) = 14;
  v23 = *(v0 + 48);
  v8(v4 + 15 * v1, *MEMORY[0x277D5EE20], v7);
  *(v4 + 15 * v1 + v23) = 15;
  v24 = *(v0 + 48);
  v8(v4 + 16 * v1, *MEMORY[0x277D5ED78], v7);
  *(v4 + 16 * v1 + v24) = 16;
  v25 = *(v0 + 48);
  v8(v4 + 17 * v1, *MEMORY[0x277D5ED88], v7);
  *(v4 + 17 * v1 + v25) = 17;
  v26 = *(v0 + 48);
  v8(v4 + 18 * v1, *MEMORY[0x277D5ED48], v7);
  *(v4 + 18 * v1 + v26) = 18;
  v27 = *(v0 + 48);
  v8(v4 + 19 * v1, *MEMORY[0x277D5ED70], v7);
  *(v4 + 19 * v1 + v27) = 19;
  v28 = *(v0 + 48);
  v8(v4 + 20 * v1, *MEMORY[0x277D5EDC8], v7);
  *(v4 + 20 * v1 + v28) = 20;
  v29 = *(v0 + 48);
  v8(v4 + 21 * v1, *MEMORY[0x277D5EDF0], v7);
  *(v4 + 21 * v1 + v29) = 21;
  v30 = *(v0 + 48);
  v8(v4 + 22 * v1, *MEMORY[0x277D5ED58], v7);
  *(v4 + 22 * v1 + v30) = 22;
  v31 = *(v0 + 48);
  v8(v4 + 23 * v1, *MEMORY[0x277D5EDD0], v7);
  *(v4 + 23 * v1 + v31) = 23;
  v32 = *(v0 + 48);
  v8(v4 + 24 * v1, *MEMORY[0x277D5ED40], v7);
  *(v4 + 24 * v1 + v32) = 24;
  v33 = *(v0 + 48);
  v8(v4 + 25 * v1, *MEMORY[0x277D5EDA8], v7);
  *(v4 + 25 * v1 + v33) = 25;
  v34 = *(v0 + 48);
  v8(v4 + 26 * v1, *MEMORY[0x277D5ED28], v7);
  *(v4 + 26 * v1 + v34) = 26;
  v35 = *(v0 + 48);
  v8(v4 + 27 * v1, *MEMORY[0x277D5ED50], v7);
  *(v4 + 27 * v1 + v35) = 27;
  v36 = *(v0 + 48);
  v8(v4 + 28 * v1, *MEMORY[0x277D5EDE0], v7);
  *(v4 + 28 * v1 + v36) = 29;
  v37 = *(v0 + 48);
  v8(v4 + 29 * v1, *MEMORY[0x277D5EE00], v7);
  *(v4 + 29 * v1 + v37) = 29;
  v38 = *(v0 + 48);
  v8(v4 + 30 * v1, *MEMORY[0x277D5ED60], v7);
  *(v4 + 30 * v1 + v38) = 29;
  v39 = v4 + 31 * v1;
  v40 = *(v0 + 48);
  v8(v39, *MEMORY[0x277D5EE28], v7);
  *(v39 + v40) = 29;
  v41 = sub_266212004(v3);
  swift_setDeallocating();
  swift_arrayDestroy();
  result = swift_deallocClassInstance();
  qword_280069490 = v41;
  return result;
}